ARM GAS  /tmp/ccb1T8AW.s 			page 1


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
  13              		.file	"GCodeInput.cpp"
  14              		.section	.text._ZN16StreamGCodeInput5ResetEv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN16StreamGCodeInput5ResetEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN16StreamGCodeInput5ResetEv, %function
  23              	_ZN16StreamGCodeInput5ResetEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 10B5     		push	{r4, lr}
  27 0002 0446     		mov	r4, r0
  28 0004 03E0     		b	.L3
  29              	.L6:
  30 0006 6068     		ldr	r0, [r4, #4]
  31 0008 0368     		ldr	r3, [r0]
  32 000a 5B69     		ldr	r3, [r3, #20]
  33 000c 9847     		blx	r3
  34              	.L3:
  35 000e 6068     		ldr	r0, [r4, #4]
  36 0010 0368     		ldr	r3, [r0]
  37 0012 1B69     		ldr	r3, [r3, #16]
  38 0014 9847     		blx	r3
  39 0016 0028     		cmp	r0, #0
  40 0018 F5DC     		bgt	.L6
  41 001a 10BD     		pop	{r4, pc}
  42              		.size	_ZN16StreamGCodeInput5ResetEv, .-_ZN16StreamGCodeInput5ResetEv
  43              		.section	.text._ZN16StreamGCodeInput8ReadByteEv,"ax",%progbits
  44              		.align	1
  45              		.p2align 2,,3
  46              		.global	_ZN16StreamGCodeInput8ReadByteEv
  47              		.syntax unified
  48              		.thumb
  49              		.thumb_func
  50              		.fpu fpv4-sp-d16
  51              		.type	_ZN16StreamGCodeInput8ReadByteEv, %function
  52              	_ZN16StreamGCodeInput8ReadByteEv:
  53              		@ args = 0, pretend = 0, frame = 0
  54              		@ frame_needed = 0, uses_anonymous_args = 0
  55 0000 4068     		ldr	r0, [r0, #4]
  56 0002 08B5     		push	{r3, lr}
  57 0004 0368     		ldr	r3, [r0]
ARM GAS  /tmp/ccb1T8AW.s 			page 2


  58 0006 5B69     		ldr	r3, [r3, #20]
  59 0008 9847     		blx	r3
  60 000a C0B2     		uxtb	r0, r0
  61 000c 08BD     		pop	{r3, pc}
  62              		.size	_ZN16StreamGCodeInput8ReadByteEv, .-_ZN16StreamGCodeInput8ReadByteEv
  63 000e 00BF     		.section	.text._ZNK16StreamGCodeInput11BytesCachedEv,"ax",%progbits
  64              		.align	1
  65              		.p2align 2,,3
  66              		.global	_ZNK16StreamGCodeInput11BytesCachedEv
  67              		.syntax unified
  68              		.thumb
  69              		.thumb_func
  70              		.fpu fpv4-sp-d16
  71              		.type	_ZNK16StreamGCodeInput11BytesCachedEv, %function
  72              	_ZNK16StreamGCodeInput11BytesCachedEv:
  73              		@ args = 0, pretend = 0, frame = 0
  74              		@ frame_needed = 0, uses_anonymous_args = 0
  75              		@ link register save eliminated.
  76 0000 4068     		ldr	r0, [r0, #4]
  77 0002 0368     		ldr	r3, [r0]
  78 0004 1B69     		ldr	r3, [r3, #16]
  79 0006 1847     		bx	r3
  80              		.size	_ZNK16StreamGCodeInput11BytesCachedEv, .-_ZNK16StreamGCodeInput11BytesCachedEv
  81              		.section	.text._ZN17RegularGCodeInput5ResetEv,"ax",%progbits
  82              		.align	1
  83              		.p2align 2,,3
  84              		.global	_ZN17RegularGCodeInput5ResetEv
  85              		.syntax unified
  86              		.thumb
  87              		.thumb_func
  88              		.fpu fpv4-sp-d16
  89              		.type	_ZN17RegularGCodeInput5ResetEv, %function
  90              	_ZN17RegularGCodeInput5ResetEv:
  91              		@ args = 0, pretend = 0, frame = 0
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93              		@ link register save eliminated.
  94 0000 0023     		movs	r3, #0
  95 0002 4360     		str	r3, [r0, #4]
  96 0004 C0E90233 		strd	r3, r3, [r0, #8]
  97 0008 7047     		bx	lr
  98              		.size	_ZN17RegularGCodeInput5ResetEv, .-_ZN17RegularGCodeInput5ResetEv
  99 000a 00BF     		.section	.text._ZN17RegularGCodeInput8ReadByteEv,"ax",%progbits
 100              		.align	1
 101              		.p2align 2,,3
 102              		.global	_ZN17RegularGCodeInput8ReadByteEv
 103              		.syntax unified
 104              		.thumb
 105              		.thumb_func
 106              		.fpu fpv4-sp-d16
 107              		.type	_ZN17RegularGCodeInput8ReadByteEv, %function
 108              	_ZN17RegularGCodeInput8ReadByteEv:
 109              		@ args = 0, pretend = 0, frame = 0
 110              		@ frame_needed = 0, uses_anonymous_args = 0
 111              		@ link register save eliminated.
 112 0000 C368     		ldr	r3, [r0, #12]
 113 0002 591C     		adds	r1, r3, #1
 114 0004 0344     		add	r3, r3, r0
ARM GAS  /tmp/ccb1T8AW.s 			page 3


 115 0006 0246     		mov	r2, r0
 116 0008 C160     		str	r1, [r0, #12]
 117 000a B1F5807F 		cmp	r1, #256
 118 000e 187C     		ldrb	r0, [r3, #16]	@ zero_extendqisi2
 119 0010 04BF     		itt	eq
 120 0012 0023     		moveq	r3, #0
 121 0014 D360     		streq	r3, [r2, #12]
 122 0016 7047     		bx	lr
 123              		.size	_ZN17RegularGCodeInput8ReadByteEv, .-_ZN17RegularGCodeInput8ReadByteEv
 124              		.section	.text._ZNK17RegularGCodeInput11BytesCachedEv,"ax",%progbits
 125              		.align	1
 126              		.p2align 2,,3
 127              		.global	_ZNK17RegularGCodeInput11BytesCachedEv
 128              		.syntax unified
 129              		.thumb
 130              		.thumb_func
 131              		.fpu fpv4-sp-d16
 132              		.type	_ZNK17RegularGCodeInput11BytesCachedEv, %function
 133              	_ZNK17RegularGCodeInput11BytesCachedEv:
 134              		@ args = 0, pretend = 0, frame = 0
 135              		@ frame_needed = 0, uses_anonymous_args = 0
 136              		@ link register save eliminated.
 137 0000 D0E90230 		ldrd	r3, r0, [r0, #8]
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
 151              		.fpu fpv4-sp-d16
 152              		.type	_ZN14FileGCodeInput5ResetEv, %function
 153              	_ZN14FileGCodeInput5ResetEv:
 154              		@ args = 0, pretend = 0, frame = 0
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156              		@ link register save eliminated.
 157 0000 0023     		movs	r3, #0
 158 0002 C0F81031 		str	r3, [r0, #272]
 159 0006 4360     		str	r3, [r0, #4]
 160 0008 C0E90233 		strd	r3, r3, [r0, #8]
 161 000c 7047     		bx	lr
 162              		.size	_ZN14FileGCodeInput5ResetEv, .-_ZN14FileGCodeInput5ResetEv
 163 000e 00BF     		.section	.text._ZN10GCodeInput10FillBufferEP11GCodeBuffer,"ax",%progbits
 164              		.align	1
 165              		.p2align 2,,3
 166              		.global	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 167              		.syntax unified
 168              		.thumb
 169              		.thumb_func
 170              		.fpu fpv4-sp-d16
 171              		.type	_ZN10GCodeInput10FillBufferEP11GCodeBuffer, %function
ARM GAS  /tmp/ccb1T8AW.s 			page 4


 172              	_ZN10GCodeInput10FillBufferEP11GCodeBuffer:
 173              		@ args = 0, pretend = 0, frame = 0
 174              		@ frame_needed = 0, uses_anonymous_args = 0
 175 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 176 0004 0368     		ldr	r3, [r0]
 177 0006 9B68     		ldr	r3, [r3, #8]
 178 0008 0646     		mov	r6, r0
 179 000a 0D46     		mov	r5, r1
 180 000c 9847     		blx	r3
 181 000e A028     		cmp	r0, #160
 182 0010 30D8     		bhi	.L25
 183 0012 0746     		mov	r7, r0
 184 0014 48B3     		cbz	r0, .L20
 185              	.L19:
 186 0016 DFF86080 		ldr	r8, .L38
 187 001a 0024     		movs	r4, #0
 188 001c 07E0     		b	.L24
 189              	.L37:
 190 001e 2946     		mov	r1, r5
 191 0020 D8F81000 		ldr	r0, [r8, #16]	@ unaligned
 192 0024 FFF7FEFF 		bl	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc
 193              	.L22:
 194 0028 0134     		adds	r4, r4, #1
 195 002a A742     		cmp	r7, r4
 196 002c 1DD9     		bls	.L20
 197              	.L24:
 198 002e 3368     		ldr	r3, [r6]
 199 0030 3046     		mov	r0, r6
 200 0032 DB68     		ldr	r3, [r3, #12]
 201 0034 9847     		blx	r3
 202 0036 95F8F130 		ldrb	r3, [r5, #241]	@ zero_extendqisi2
 203 003a 0246     		mov	r2, r0
 204 003c 0146     		mov	r1, r0
 205 003e 2846     		mov	r0, r5
 206 0040 002B     		cmp	r3, #0
 207 0042 ECD1     		bne	.L37
 208 0044 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 209 0048 8146     		mov	r9, r0
 210 004a 0028     		cmp	r0, #0
 211 004c ECD0     		beq	.L22
 212 004e EB6A     		ldr	r3, [r5, #44]
 213 0050 6BB1     		cbz	r3, .L23
 214 0052 094B     		ldr	r3, .L38
 215 0054 2946     		mov	r1, r5
 216 0056 1869     		ldr	r0, [r3, #16]
 217 0058 FFF7FEFF 		bl	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer
 218 005c 2846     		mov	r0, r5
 219 005e 0121     		movs	r1, #1
 220 0060 FFF7FEFF 		bl	_ZN11GCodeBuffer11SetFinishedEb
 221 0064 4846     		mov	r0, r9
 222 0066 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 223              	.L20:
 224 006a 4FF00009 		mov	r9, #0
 225              	.L23:
 226 006e 4846     		mov	r0, r9
 227 0070 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 228              	.L25:
ARM GAS  /tmp/ccb1T8AW.s 			page 5


 229 0074 A127     		movs	r7, #161
 230 0076 CEE7     		b	.L19
 231              	.L39:
 232              		.align	2
 233              	.L38:
 234 0078 00000000 		.word	reprap
 235              		.size	_ZN10GCodeInput10FillBufferEP11GCodeBuffer, .-_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 236              		.section	.text._ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer,"ax",%progbits
 237              		.align	1
 238              		.p2align 2,,3
 239              		.global	_ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer
 240              		.syntax unified
 241              		.thumb
 242              		.thumb_func
 243              		.fpu fpv4-sp-d16
 244              		.type	_ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer, %function
 245              	_ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer:
 246              		@ args = 0, pretend = 0, frame = 8
 247              		@ frame_needed = 0, uses_anonymous_args = 0
 248 0000 70B5     		push	{r4, r5, r6, lr}
 249 0002 0546     		mov	r5, r0
 250 0004 82B0     		sub	sp, sp, #8
 251 0006 0E46     		mov	r6, r1
 252 0008 6846     		mov	r0, sp
 253 000a 05F58871 		add	r1, r5, #272
 254 000e 0A22     		movs	r2, #10
 255 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 256 0014 9DF80440 		ldrb	r4, [sp, #4]	@ zero_extendqisi2
 257 0018 24B1     		cbz	r4, .L41
 258 001a 3146     		mov	r1, r6
 259 001c 2846     		mov	r0, r5
 260 001e FFF7FEFF 		bl	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 261 0022 0446     		mov	r4, r0
 262              	.L41:
 263 0024 6846     		mov	r0, sp
 264 0026 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 265 002a 2046     		mov	r0, r4
 266 002c 02B0     		add	sp, sp, #8
 267              		@ sp needed
 268 002e 70BD     		pop	{r4, r5, r6, pc}
 269              		.size	_ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer, .-_ZN17NetworkGCodeInput10FillBufferEP11G
 270              		.section	.text._ZN17RegularGCodeInputC2Ev,"ax",%progbits
 271              		.align	1
 272              		.p2align 2,,3
 273              		.global	_ZN17RegularGCodeInputC2Ev
 274              		.syntax unified
 275              		.thumb
 276              		.thumb_func
 277              		.fpu fpv4-sp-d16
 278              		.type	_ZN17RegularGCodeInputC2Ev, %function
 279              	_ZN17RegularGCodeInputC2Ev:
 280              		@ args = 0, pretend = 0, frame = 0
 281              		@ frame_needed = 0, uses_anonymous_args = 0
 282              		@ link register save eliminated.
 283 0000 034A     		ldr	r2, .L47
 284 0002 0260     		str	r2, [r0]
 285 0004 0022     		movs	r2, #0
ARM GAS  /tmp/ccb1T8AW.s 			page 6


 286 0006 C0E90122 		strd	r2, r2, [r0, #4]
 287 000a C260     		str	r2, [r0, #12]
 288 000c 7047     		bx	lr
 289              	.L48:
 290 000e 00BF     		.align	2
 291              	.L47:
 292 0010 08000000 		.word	.LANCHOR0+8
 293              		.size	_ZN17RegularGCodeInputC2Ev, .-_ZN17RegularGCodeInputC2Ev
 294              		.global	_ZN17RegularGCodeInputC1Ev
 295              		.thumb_set _ZN17RegularGCodeInputC1Ev,_ZN17RegularGCodeInputC2Ev
 296              		.section	.text._ZNK17RegularGCodeInput15BufferSpaceLeftEv,"ax",%progbits
 297              		.align	1
 298              		.p2align 2,,3
 299              		.global	_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 300              		.syntax unified
 301              		.thumb
 302              		.thumb_func
 303              		.fpu fpv4-sp-d16
 304              		.type	_ZNK17RegularGCodeInput15BufferSpaceLeftEv, %function
 305              	_ZNK17RegularGCodeInput15BufferSpaceLeftEv:
 306              		@ args = 0, pretend = 0, frame = 0
 307              		@ frame_needed = 0, uses_anonymous_args = 0
 308              		@ link register save eliminated.
 309 0000 D0E90223 		ldrd	r2, r3, [r0, #8]
 310 0004 581E     		subs	r0, r3, #1
 311 0006 801A     		subs	r0, r0, r2
 312 0008 C0B2     		uxtb	r0, r0
 313 000a 7047     		bx	lr
 314              		.size	_ZNK17RegularGCodeInput15BufferSpaceLeftEv, .-_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 315              		.section	.text._ZN17NetworkGCodeInput3PutE11MessageTypec,"ax",%progbits
 316              		.align	1
 317              		.p2align 2,,3
 318              		.global	_ZN17NetworkGCodeInput3PutE11MessageTypec
 319              		.syntax unified
 320              		.thumb
 321              		.thumb_func
 322              		.fpu fpv4-sp-d16
 323              		.type	_ZN17NetworkGCodeInput3PutE11MessageTypec, %function
 324              	_ZN17NetworkGCodeInput3PutE11MessageTypec:
 325              		@ args = 0, pretend = 0, frame = 0
 326              		@ frame_needed = 0, uses_anonymous_args = 0
 327 0000 70B5     		push	{r4, r5, r6, lr}
 328 0002 D0E90253 		ldrd	r5, r3, [r0, #8]
 329 0006 013B     		subs	r3, r3, #1
 330 0008 5B1B     		subs	r3, r3, r5
 331 000a 13F0FF0F 		tst	r3, #255
 332 000e 19D0     		beq	.L50
 333 0010 4368     		ldr	r3, [r0, #4]
 334 0012 0446     		mov	r4, r0
 335 0014 072B     		cmp	r3, #7
 336 0016 1BD8     		bhi	.L53
 337 0018 DFE803F0 		tbb	[pc, r3]
 338              	.L55:
 339 001c 25       		.byte	(.L54-.L55)/2
 340 001d 2D       		.byte	(.L56-.L55)/2
 341 001e 15       		.byte	(.L57-.L55)/2
 342 001f 37       		.byte	(.L58-.L55)/2
ARM GAS  /tmp/ccb1T8AW.s 			page 7


 343 0020 3E       		.byte	(.L59-.L55)/2
 344 0021 44       		.byte	(.L60-.L55)/2
 345 0022 4A       		.byte	(.L61-.L55)/2
 346 0023 04       		.byte	(.L62-.L55)/2
 347              		.p2align 1
 348              	.L62:
 349 0024 1F2A     		cmp	r2, #31
 350 0026 01D9     		bls	.L72
 351 0028 3B2A     		cmp	r2, #59
 352 002a 45D1     		bne	.L70
 353              	.L72:
 354 002c 2C4B     		ldr	r3, .L84
 355 002e 2D4A     		ldr	r2, .L84+4
 356 0030 A3F8B013 		strh	r1, [r3, #944]	@ movhi
 357 0034 2368     		ldr	r3, [r4]
 358 0036 1B68     		ldr	r3, [r3]
 359 0038 9342     		cmp	r3, r2
 360 003a 4DD1     		bne	.L83
 361              	.L73:
 362 003c 0023     		movs	r3, #0
 363 003e C4E90233 		strd	r3, r3, [r4, #8]
 364 0042 6360     		str	r3, [r4, #4]
 365              	.L50:
 366 0044 70BD     		pop	{r4, r5, r6, pc}
 367              	.L57:
 368 0046 312A     		cmp	r2, #49
 369 0048 14BF     		ite	ne
 370 004a 0123     		movne	r3, #1
 371 004c 0323     		moveq	r3, #3
 372              	.L82:
 373 004e 6360     		str	r3, [r4, #4]
 374              	.L53:
 375 0050 6119     		adds	r1, r4, r5
 376 0052 0135     		adds	r5, r5, #1
 377 0054 B5F5807F 		cmp	r5, #256
 378 0058 08BF     		it	eq
 379 005a 0023     		moveq	r3, #0
 380 005c A560     		str	r5, [r4, #8]
 381 005e 0A74     		strb	r2, [r1, #16]
 382 0060 08BF     		it	eq
 383 0062 A360     		streq	r3, [r4, #8]
 384 0064 70BD     		pop	{r4, r5, r6, pc}
 385              	.L54:
 386 0066 202A     		cmp	r2, #32
 387 0068 ECD9     		bls	.L50
 388 006a 4D2A     		cmp	r2, #77
 389 006c 14BF     		ite	ne
 390 006e 0123     		movne	r3, #1
 391 0070 0223     		moveq	r3, #2
 392 0072 6360     		str	r3, [r4, #4]
 393 0074 ECE7     		b	.L53
 394              	.L56:
 395 0076 0D2A     		cmp	r2, #13
 396 0078 EAD8     		bhi	.L53
 397 007a 42F20143 		movw	r3, #9217
 398 007e D340     		lsrs	r3, r3, r2
 399 0080 DB43     		mvns	r3, r3
ARM GAS  /tmp/ccb1T8AW.s 			page 8


 400 0082 13F00103 		ands	r3, r3, #1
 401 0086 E2D0     		beq	.L82
 402 0088 E2E7     		b	.L53
 403              	.L58:
 404 008a 312A     		cmp	r2, #49
 405 008c 16D0     		beq	.L76
 406 008e 322A     		cmp	r2, #50
 407 0090 14BF     		ite	ne
 408 0092 0123     		movne	r3, #1
 409 0094 0523     		moveq	r3, #5
 410 0096 DAE7     		b	.L82
 411              	.L59:
 412 0098 322A     		cmp	r2, #50
 413 009a 14BF     		ite	ne
 414 009c 0123     		movne	r3, #1
 415 009e 0623     		moveq	r3, #6
 416 00a0 6360     		str	r3, [r4, #4]
 417 00a2 D5E7     		b	.L53
 418              	.L60:
 419 00a4 322A     		cmp	r2, #50
 420 00a6 14BF     		ite	ne
 421 00a8 0123     		movne	r3, #1
 422 00aa 0723     		moveq	r3, #7
 423 00ac 6360     		str	r3, [r4, #4]
 424 00ae CFE7     		b	.L53
 425              	.L61:
 426 00b0 202A     		cmp	r2, #32
 427 00b2 05D9     		bls	.L69
 428 00b4 3B2A     		cmp	r2, #59
 429 00b6 03D0     		beq	.L69
 430              	.L70:
 431 00b8 0123     		movs	r3, #1
 432 00ba C8E7     		b	.L82
 433              	.L76:
 434 00bc 0423     		movs	r3, #4
 435 00be C6E7     		b	.L82
 436              	.L69:
 437 00c0 074D     		ldr	r5, .L84
 438 00c2 2846     		mov	r0, r5
 439 00c4 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 440 00c8 2869     		ldr	r0, [r5, #16]
 441 00ca FFF7FEFF 		bl	_ZN6GCodes5ResetEv
 442 00ce 2368     		ldr	r3, [r4]
 443 00d0 044A     		ldr	r2, .L84+4
 444 00d2 1B68     		ldr	r3, [r3]
 445 00d4 9342     		cmp	r3, r2
 446 00d6 B1D0     		beq	.L73
 447              	.L83:
 448 00d8 2046     		mov	r0, r4
 449 00da BDE87040 		pop	{r4, r5, r6, lr}
 450 00de 1847     		bx	r3	@ indirect register sibling call
 451              	.L85:
 452              		.align	2
 453              	.L84:
 454 00e0 00000000 		.word	reprap
 455 00e4 00000000 		.word	_ZN17RegularGCodeInput5ResetEv
 456              		.size	_ZN17NetworkGCodeInput3PutE11MessageTypec, .-_ZN17NetworkGCodeInput3PutE11MessageTypec
ARM GAS  /tmp/ccb1T8AW.s 			page 9


 457              		.section	.text._ZN17NetworkGCodeInput3PutE11MessageTypePKc,"ax",%progbits
 458              		.align	1
 459              		.p2align 2,,3
 460              		.global	_ZN17NetworkGCodeInput3PutE11MessageTypePKc
 461              		.syntax unified
 462              		.thumb
 463              		.thumb_func
 464              		.fpu fpv4-sp-d16
 465              		.type	_ZN17NetworkGCodeInput3PutE11MessageTypePKc, %function
 466              	_ZN17NetworkGCodeInput3PutE11MessageTypePKc:
 467              		@ args = 0, pretend = 0, frame = 8
 468              		@ frame_needed = 0, uses_anonymous_args = 0
 469 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 470 0002 0546     		mov	r5, r0
 471 0004 83B0     		sub	sp, sp, #12
 472 0006 1046     		mov	r0, r2
 473 0008 1446     		mov	r4, r2
 474 000a 0E46     		mov	r6, r1
 475 000c FFF7FEFF 		bl	strlen
 476 0010 05F58871 		add	r1, r5, #272
 477 0014 0746     		mov	r7, r0
 478 0016 C822     		movs	r2, #200
 479 0018 6846     		mov	r0, sp
 480 001a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 481 001e 9DF80430 		ldrb	r3, [sp, #4]	@ zero_extendqisi2
 482 0022 8BB1     		cbz	r3, .L87
 483 0024 D5E90223 		ldrd	r2, r3, [r5, #8]
 484 0028 013B     		subs	r3, r3, #1
 485 002a 9B1A     		subs	r3, r3, r2
 486 002c DBB2     		uxtb	r3, r3
 487 002e 7A1C     		adds	r2, r7, #1
 488 0030 9A42     		cmp	r2, r3
 489 0032 09D8     		bhi	.L87
 490 0034 2744     		add	r7, r7, r4
 491 0036 013C     		subs	r4, r4, #1
 492              	.L88:
 493 0038 14F8012F 		ldrb	r2, [r4, #1]!	@ zero_extendqisi2
 494 003c 3146     		mov	r1, r6
 495 003e 2846     		mov	r0, r5
 496 0040 FFF7FEFF 		bl	_ZN17NetworkGCodeInput3PutE11MessageTypec
 497 0044 A742     		cmp	r7, r4
 498 0046 F7D1     		bne	.L88
 499              	.L87:
 500 0048 6846     		mov	r0, sp
 501 004a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 502 004e 03B0     		add	sp, sp, #12
 503              		@ sp needed
 504 0050 F0BD     		pop	{r4, r5, r6, r7, pc}
 505              		.size	_ZN17NetworkGCodeInput3PutE11MessageTypePKc, .-_ZN17NetworkGCodeInput3PutE11MessageTypePKc
 506 0052 00BF     		.section	.text._ZN17NetworkGCodeInputC2Ev,"ax",%progbits
 507              		.align	1
 508              		.p2align 2,,3
 509              		.global	_ZN17NetworkGCodeInputC2Ev
 510              		.syntax unified
 511              		.thumb
 512              		.thumb_func
 513              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccb1T8AW.s 			page 10


 514              		.type	_ZN17NetworkGCodeInputC2Ev, %function
 515              	_ZN17NetworkGCodeInputC2Ev:
 516              		@ args = 0, pretend = 0, frame = 0
 517              		@ frame_needed = 0, uses_anonymous_args = 0
 518 0000 10B5     		push	{r4, lr}
 519 0002 084B     		ldr	r3, .L96
 520 0004 0360     		str	r3, [r0]
 521 0006 0023     		movs	r3, #0
 522 0008 C0F81031 		str	r3, [r0, #272]
 523 000c 0446     		mov	r4, r0
 524 000e C0E90133 		strd	r3, r3, [r0, #4]
 525 0012 C360     		str	r3, [r0, #12]
 526 0014 0449     		ldr	r1, .L96+4
 527 0016 00F58870 		add	r0, r0, #272
 528 001a FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 529 001e 2046     		mov	r0, r4
 530 0020 10BD     		pop	{r4, pc}
 531              	.L97:
 532 0022 00BF     		.align	2
 533              	.L96:
 534 0024 08000000 		.word	.LANCHOR1+8
 535 0028 00000000 		.word	.LC0
 536              		.size	_ZN17NetworkGCodeInputC2Ev, .-_ZN17NetworkGCodeInputC2Ev
 537              		.global	_ZN17NetworkGCodeInputC1Ev
 538              		.thumb_set _ZN17NetworkGCodeInputC1Ev,_ZN17NetworkGCodeInputC2Ev
 539              		.section	.text._ZN14FileGCodeInput5ResetERK8FileData,"ax",%progbits
 540              		.align	1
 541              		.p2align 2,,3
 542              		.global	_ZN14FileGCodeInput5ResetERK8FileData
 543              		.syntax unified
 544              		.thumb
 545              		.thumb_func
 546              		.fpu fpv4-sp-d16
 547              		.type	_ZN14FileGCodeInput5ResetERK8FileData, %function
 548              	_ZN14FileGCodeInput5ResetERK8FileData:
 549              		@ args = 0, pretend = 0, frame = 0
 550              		@ frame_needed = 0, uses_anonymous_args = 0
 551              		@ link register save eliminated.
 552 0000 0968     		ldr	r1, [r1]
 553 0002 D0F81021 		ldr	r2, [r0, #272]
 554 0006 9142     		cmp	r1, r2
 555 0008 00D0     		beq	.L101
 556 000a 7047     		bx	lr
 557              	.L101:
 558 000c 0268     		ldr	r2, [r0]
 559 000e 0649     		ldr	r1, .L102
 560 0010 1268     		ldr	r2, [r2]
 561 0012 8A42     		cmp	r2, r1
 562 0014 06D1     		bne	.L100
 563 0016 0022     		movs	r2, #0
 564 0018 C0F81021 		str	r2, [r0, #272]
 565 001c 4260     		str	r2, [r0, #4]
 566 001e C0E90222 		strd	r2, r2, [r0, #8]
 567 0022 7047     		bx	lr
 568              	.L100:
 569 0024 1047     		bx	r2	@ indirect register sibling call
 570              	.L103:
ARM GAS  /tmp/ccb1T8AW.s 			page 11


 571 0026 00BF     		.align	2
 572              	.L102:
 573 0028 00000000 		.word	_ZN14FileGCodeInput5ResetEv
 574              		.size	_ZN14FileGCodeInput5ResetERK8FileData, .-_ZN14FileGCodeInput5ResetERK8FileData
 575              		.section	.text._ZN14FileGCodeInput12ReadFromFileER8FileData,"ax",%progbits
 576              		.align	1
 577              		.p2align 2,,3
 578              		.global	_ZN14FileGCodeInput12ReadFromFileER8FileData
 579              		.syntax unified
 580              		.thumb
 581              		.thumb_func
 582              		.fpu fpv4-sp-d16
 583              		.type	_ZN14FileGCodeInput12ReadFromFileER8FileData, %function
 584              	_ZN14FileGCodeInput12ReadFromFileER8FileData:
 585              		@ args = 0, pretend = 0, frame = 0
 586              		@ frame_needed = 0, uses_anonymous_args = 0
 587 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 588 0002 0368     		ldr	r3, [r0]
 589 0004 284A     		ldr	r2, .L124
 590 0006 9B68     		ldr	r3, [r3, #8]
 591 0008 9342     		cmp	r3, r2
 592 000a 0446     		mov	r4, r0
 593 000c 0F46     		mov	r7, r1
 594 000e 2CD1     		bne	.L105
 595 0010 FFF7FEFF 		bl	_ZNK17RegularGCodeInput11BytesCachedEv
 596 0014 0546     		mov	r5, r0
 597              	.L106:
 598 0016 D4F81061 		ldr	r6, [r4, #272]
 599 001a 3868     		ldr	r0, [r7]
 600 001c 3EB1     		cbz	r6, .L107
 601 001e 8642     		cmp	r6, r0
 602 0020 05D0     		beq	.L107
 603 0022 A5BB     		cbnz	r5, .L122
 604              	.L108:
 605 0024 0023     		movs	r3, #0
 606 0026 C4E90233 		strd	r3, r3, [r4, #8]
 607 002a 6360     		str	r3, [r4, #4]
 608 002c 3868     		ldr	r0, [r7]
 609              	.L107:
 610 002e C4F81001 		str	r0, [r4, #272]
 611 0032 7F2D     		cmp	r5, #127
 612 0034 1CD8     		bhi	.L113
 613 0036 D4E90262 		ldrd	r6, r2, [r4, #8]
 614 003a B242     		cmp	r2, r6
 615 003c 1AD0     		beq	.L110
 616 003e 013A     		subs	r2, r2, #1
 617 0040 921B     		subs	r2, r2, r6
 618 0042 D2B2     		uxtb	r2, r2
 619 0044 C6F58073 		rsb	r3, r6, #256
 620 0048 9A42     		cmp	r2, r3
 621 004a 04F11001 		add	r1, r4, #16
 622 004e 28BF     		it	cs
 623 0050 1A46     		movcs	r2, r3
 624 0052 3144     		add	r1, r1, r6
 625 0054 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 626 0058 0028     		cmp	r0, #0
 627 005a 16DB     		blt	.L114
ARM GAS  /tmp/ccb1T8AW.s 			page 12


 628              	.L123:
 629 005c 1FD0     		beq	.L112
 630 005e A368     		ldr	r3, [r4, #8]
 631 0060 1844     		add	r0, r0, r3
 632 0062 C0B2     		uxtb	r0, r0
 633 0064 A060     		str	r0, [r4, #8]
 634 0066 0020     		movs	r0, #0
 635 0068 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 636              	.L105:
 637 006a 9847     		blx	r3
 638 006c 0546     		mov	r5, r0
 639 006e D2E7     		b	.L106
 640              	.L113:
 641 0070 0020     		movs	r0, #0
 642 0072 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 643              	.L110:
 644 0074 0026     		movs	r6, #0
 645 0076 04F11001 		add	r1, r4, #16
 646 007a C4E90266 		strd	r6, r6, [r4, #8]
 647 007e FF22     		movs	r2, #255
 648 0080 3144     		add	r1, r1, r6
 649 0082 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 650 0086 0028     		cmp	r0, #0
 651 0088 E8DA     		bge	.L123
 652              	.L114:
 653 008a 0220     		movs	r0, #2
 654 008c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 655              	.L122:
 656 008e 3046     		mov	r0, r6
 657 0090 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 658 0094 411B     		subs	r1, r0, r5
 659 0096 3046     		mov	r0, r6
 660 0098 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 661 009c C2E7     		b	.L108
 662              	.L112:
 663 009e B5FA85F0 		clz	r0, r5
 664 00a2 4009     		lsrs	r0, r0, #5
 665 00a4 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 666              	.L125:
 667 00a6 00BF     		.align	2
 668              	.L124:
 669 00a8 00000000 		.word	_ZNK17RegularGCodeInput11BytesCachedEv
 670              		.size	_ZN14FileGCodeInput12ReadFromFileER8FileData, .-_ZN14FileGCodeInput12ReadFromFileER8FileData
 671              		.global	_ZTV10GCodeInput
 672              		.global	_ZTV16StreamGCodeInput
 673              		.global	_ZTV17RegularGCodeInput
 674              		.global	_ZTV14FileGCodeInput
 675              		.global	_ZTV17NetworkGCodeInput
 676              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 677              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 678              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 679              	_ZL28cpu_irq_prev_interrupt_state:
 680 0000 00       		.space	1
 681              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 682              		.align	2
 683              		.type	_ZL32cpu_irq_critical_section_counter, %object
 684              		.size	_ZL32cpu_irq_critical_section_counter, 4
ARM GAS  /tmp/ccb1T8AW.s 			page 13


 685              	_ZL32cpu_irq_critical_section_counter:
 686 0000 00000000 		.space	4
 687              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 688              		.align	2
 689              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 690              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 691              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 692 0000 00000000 		.space	4
 693              		.section	.rodata._ZN17NetworkGCodeInputC2Ev.str1.4,"aMS",%progbits,1
 694              		.align	2
 695              	.LC0:
 696 0000 4E657477 		.ascii	"NetworkGCodeInput\000"
 696      6F726B47 
 696      436F6465 
 696      496E7075 
 696      7400
 697              		.section	.rodata._ZTV10GCodeInput,"a",%progbits
 698              		.align	2
 699              		.type	_ZTV10GCodeInput, %object
 700              		.size	_ZTV10GCodeInput, 24
 701              	_ZTV10GCodeInput:
 702 0000 00000000 		.word	0
 703 0004 00000000 		.word	0
 704 0008 00000000 		.word	__cxa_pure_virtual
 705 000c 00000000 		.word	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 706 0010 00000000 		.word	__cxa_pure_virtual
 707 0014 00000000 		.word	__cxa_pure_virtual
 708              		.section	.rodata._ZTV14FileGCodeInput,"a",%progbits
 709              		.align	2
 710              		.type	_ZTV14FileGCodeInput, %object
 711              		.size	_ZTV14FileGCodeInput, 24
 712              	_ZTV14FileGCodeInput:
 713 0000 00000000 		.word	0
 714 0004 00000000 		.word	0
 715 0008 00000000 		.word	_ZN14FileGCodeInput5ResetEv
 716 000c 00000000 		.word	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 717 0010 00000000 		.word	_ZNK17RegularGCodeInput11BytesCachedEv
 718 0014 00000000 		.word	_ZN17RegularGCodeInput8ReadByteEv
 719              		.section	.rodata._ZTV16StreamGCodeInput,"a",%progbits
 720              		.align	2
 721              		.type	_ZTV16StreamGCodeInput, %object
 722              		.size	_ZTV16StreamGCodeInput, 24
 723              	_ZTV16StreamGCodeInput:
 724 0000 00000000 		.word	0
 725 0004 00000000 		.word	0
 726 0008 00000000 		.word	_ZN16StreamGCodeInput5ResetEv
 727 000c 00000000 		.word	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 728 0010 00000000 		.word	_ZNK16StreamGCodeInput11BytesCachedEv
 729 0014 00000000 		.word	_ZN16StreamGCodeInput8ReadByteEv
 730              		.section	.rodata._ZTV17NetworkGCodeInput,"a",%progbits
 731              		.align	2
 732              		.set	.LANCHOR1,. + 0
 733              		.type	_ZTV17NetworkGCodeInput, %object
 734              		.size	_ZTV17NetworkGCodeInput, 24
 735              	_ZTV17NetworkGCodeInput:
 736 0000 00000000 		.word	0
 737 0004 00000000 		.word	0
ARM GAS  /tmp/ccb1T8AW.s 			page 14


 738 0008 00000000 		.word	_ZN17RegularGCodeInput5ResetEv
 739 000c 00000000 		.word	_ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer
 740 0010 00000000 		.word	_ZNK17RegularGCodeInput11BytesCachedEv
 741 0014 00000000 		.word	_ZN17RegularGCodeInput8ReadByteEv
 742              		.section	.rodata._ZTV17RegularGCodeInput,"a",%progbits
 743              		.align	2
 744              		.set	.LANCHOR0,. + 0
 745              		.type	_ZTV17RegularGCodeInput, %object
 746              		.size	_ZTV17RegularGCodeInput, 24
 747              	_ZTV17RegularGCodeInput:
 748 0000 00000000 		.word	0
 749 0004 00000000 		.word	0
 750 0008 00000000 		.word	_ZN17RegularGCodeInput5ResetEv
 751 000c 00000000 		.word	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 752 0010 00000000 		.word	_ZNK17RegularGCodeInput11BytesCachedEv
 753 0014 00000000 		.word	_ZN17RegularGCodeInput8ReadByteEv
 754              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
