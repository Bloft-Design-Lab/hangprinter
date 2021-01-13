ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwKjEzx.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN16StreamGCodeInput5ResetEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN16StreamGCodeInput5ResetEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN16StreamGCodeInput5ResetEv, %function
  24              	_ZN16StreamGCodeInput5ResetEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 10B5     		push	{r4, lr}
  28 0002 0446     		mov	r4, r0
  29 0004 03E0     		b	.L3
  30              	.L6:
  31 0006 6068     		ldr	r0, [r4, #4]
  32 0008 0368     		ldr	r3, [r0]
  33 000a 5B69     		ldr	r3, [r3, #20]
  34 000c 9847     		blx	r3
  35              	.L3:
  36 000e 6068     		ldr	r0, [r4, #4]
  37 0010 0368     		ldr	r3, [r0]
  38 0012 1B69     		ldr	r3, [r3, #16]
  39 0014 9847     		blx	r3
  40 0016 0028     		cmp	r0, #0
  41 0018 F5DC     		bgt	.L6
  42 001a 10BD     		pop	{r4, pc}
  43              		.size	_ZN16StreamGCodeInput5ResetEv, .-_ZN16StreamGCodeInput5ResetEv
  44              		.section	.text._ZN16StreamGCodeInput8ReadByteEv,"ax",%progbits
  45              		.align	1
  46              		.p2align 2,,3
  47              		.global	_ZN16StreamGCodeInput8ReadByteEv
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu fpv4-sp-d16
  52              		.type	_ZN16StreamGCodeInput8ReadByteEv, %function
  53              	_ZN16StreamGCodeInput8ReadByteEv:
  54              		@ args = 0, pretend = 0, frame = 0
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56 0000 4068     		ldr	r0, [r0, #4]
  57 0002 08B5     		push	{r3, lr}
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwKjEzx.s 			page 2


  58 0004 0368     		ldr	r3, [r0]
  59 0006 5B69     		ldr	r3, [r3, #20]
  60 0008 9847     		blx	r3
  61 000a C0B2     		uxtb	r0, r0
  62 000c 08BD     		pop	{r3, pc}
  63              		.size	_ZN16StreamGCodeInput8ReadByteEv, .-_ZN16StreamGCodeInput8ReadByteEv
  64 000e 00BF     		.section	.text._ZNK16StreamGCodeInput11BytesCachedEv,"ax",%progbits
  65              		.align	1
  66              		.p2align 2,,3
  67              		.global	_ZNK16StreamGCodeInput11BytesCachedEv
  68              		.syntax unified
  69              		.thumb
  70              		.thumb_func
  71              		.fpu fpv4-sp-d16
  72              		.type	_ZNK16StreamGCodeInput11BytesCachedEv, %function
  73              	_ZNK16StreamGCodeInput11BytesCachedEv:
  74              		@ args = 0, pretend = 0, frame = 0
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76              		@ link register save eliminated.
  77 0000 4068     		ldr	r0, [r0, #4]
  78 0002 0368     		ldr	r3, [r0]
  79 0004 1B69     		ldr	r3, [r3, #16]
  80 0006 1847     		bx	r3
  81              		.size	_ZNK16StreamGCodeInput11BytesCachedEv, .-_ZNK16StreamGCodeInput11BytesCachedEv
  82              		.section	.text._ZN17RegularGCodeInput5ResetEv,"ax",%progbits
  83              		.align	1
  84              		.p2align 2,,3
  85              		.global	_ZN17RegularGCodeInput5ResetEv
  86              		.syntax unified
  87              		.thumb
  88              		.thumb_func
  89              		.fpu fpv4-sp-d16
  90              		.type	_ZN17RegularGCodeInput5ResetEv, %function
  91              	_ZN17RegularGCodeInput5ResetEv:
  92              		@ args = 0, pretend = 0, frame = 0
  93              		@ frame_needed = 0, uses_anonymous_args = 0
  94              		@ link register save eliminated.
  95 0000 0023     		movs	r3, #0
  96 0002 4360     		str	r3, [r0, #4]
  97 0004 C0E90233 		strd	r3, r3, [r0, #8]
  98 0008 7047     		bx	lr
  99              		.size	_ZN17RegularGCodeInput5ResetEv, .-_ZN17RegularGCodeInput5ResetEv
 100 000a 00BF     		.section	.text._ZN17RegularGCodeInput8ReadByteEv,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.global	_ZN17RegularGCodeInput8ReadByteEv
 104              		.syntax unified
 105              		.thumb
 106              		.thumb_func
 107              		.fpu fpv4-sp-d16
 108              		.type	_ZN17RegularGCodeInput8ReadByteEv, %function
 109              	_ZN17RegularGCodeInput8ReadByteEv:
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112              		@ link register save eliminated.
 113 0000 C368     		ldr	r3, [r0, #12]
 114 0002 591C     		adds	r1, r3, #1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwKjEzx.s 			page 3


 115 0004 0344     		add	r3, r3, r0
 116 0006 0246     		mov	r2, r0
 117 0008 C160     		str	r1, [r0, #12]
 118 000a B1F5807F 		cmp	r1, #256
 119 000e 187C     		ldrb	r0, [r3, #16]	@ zero_extendqisi2
 120 0010 04BF     		itt	eq
 121 0012 0023     		moveq	r3, #0
 122 0014 D360     		streq	r3, [r2, #12]
 123 0016 7047     		bx	lr
 124              		.size	_ZN17RegularGCodeInput8ReadByteEv, .-_ZN17RegularGCodeInput8ReadByteEv
 125              		.section	.text._ZNK17RegularGCodeInput11BytesCachedEv,"ax",%progbits
 126              		.align	1
 127              		.p2align 2,,3
 128              		.global	_ZNK17RegularGCodeInput11BytesCachedEv
 129              		.syntax unified
 130              		.thumb
 131              		.thumb_func
 132              		.fpu fpv4-sp-d16
 133              		.type	_ZNK17RegularGCodeInput11BytesCachedEv, %function
 134              	_ZNK17RegularGCodeInput11BytesCachedEv:
 135              		@ args = 0, pretend = 0, frame = 0
 136              		@ frame_needed = 0, uses_anonymous_args = 0
 137              		@ link register save eliminated.
 138 0000 D0E90230 		ldrd	r3, r0, [r0, #8]
 139 0004 8342     		cmp	r3, r0
 140 0006 38BF     		it	cc
 141 0008 03F58073 		addcc	r3, r3, #256
 142 000c 181A     		subs	r0, r3, r0
 143 000e 7047     		bx	lr
 144              		.size	_ZNK17RegularGCodeInput11BytesCachedEv, .-_ZNK17RegularGCodeInput11BytesCachedEv
 145              		.section	.text._ZN14FileGCodeInput5ResetEv,"ax",%progbits
 146              		.align	1
 147              		.p2align 2,,3
 148              		.global	_ZN14FileGCodeInput5ResetEv
 149              		.syntax unified
 150              		.thumb
 151              		.thumb_func
 152              		.fpu fpv4-sp-d16
 153              		.type	_ZN14FileGCodeInput5ResetEv, %function
 154              	_ZN14FileGCodeInput5ResetEv:
 155              		@ args = 0, pretend = 0, frame = 0
 156              		@ frame_needed = 0, uses_anonymous_args = 0
 157              		@ link register save eliminated.
 158 0000 0023     		movs	r3, #0
 159 0002 C0F81031 		str	r3, [r0, #272]
 160 0006 4360     		str	r3, [r0, #4]
 161 0008 C0E90233 		strd	r3, r3, [r0, #8]
 162 000c 7047     		bx	lr
 163              		.size	_ZN14FileGCodeInput5ResetEv, .-_ZN14FileGCodeInput5ResetEv
 164 000e 00BF     		.section	.text._ZN10GCodeInput10FillBufferEP11GCodeBuffer,"ax",%progbits
 165              		.align	1
 166              		.p2align 2,,3
 167              		.global	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 168              		.syntax unified
 169              		.thumb
 170              		.thumb_func
 171              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwKjEzx.s 			page 4


 172              		.type	_ZN10GCodeInput10FillBufferEP11GCodeBuffer, %function
 173              	_ZN10GCodeInput10FillBufferEP11GCodeBuffer:
 174              		@ args = 0, pretend = 0, frame = 0
 175              		@ frame_needed = 0, uses_anonymous_args = 0
 176 0000 0368     		ldr	r3, [r0]
 177 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 178 0006 9B68     		ldr	r3, [r3, #8]
 179 0008 0646     		mov	r6, r0
 180 000a 0C46     		mov	r4, r1
 181 000c 9847     		blx	r3
 182 000e A028     		cmp	r0, #160
 183 0010 21D8     		bhi	.L25
 184 0012 0746     		mov	r7, r0
 185 0014 D0B1     		cbz	r0, .L20
 186              	.L19:
 187 0016 0025     		movs	r5, #0
 188 0018 06E0     		b	.L24
 189              	.L21:
 190 001a FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 191 001e 8046     		mov	r8, r0
 192 0020 D8B9     		cbnz	r0, .L43
 193 0022 0135     		adds	r5, r5, #1
 194 0024 BD42     		cmp	r5, r7
 195 0026 11D2     		bcs	.L20
 196              	.L24:
 197 0028 3368     		ldr	r3, [r6]
 198 002a 3046     		mov	r0, r6
 199 002c DB68     		ldr	r3, [r3, #12]
 200 002e 9847     		blx	r3
 201 0030 E26A     		ldr	r2, [r4, #44]
 202 0032 0146     		mov	r1, r0
 203 0034 2046     		mov	r0, r4
 204 0036 002A     		cmp	r2, #0
 205 0038 EFD0     		beq	.L21
 206 003a 94F8F920 		ldrb	r2, [r4, #249]	@ zero_extendqisi2
 207 003e 002A     		cmp	r2, #0
 208 0040 EBD0     		beq	.L21
 209 0042 0135     		adds	r5, r5, #1
 210 0044 FFF7FEFF 		bl	_ZN11GCodeBuffer17WriteBinaryToFileEc
 211 0048 BD42     		cmp	r5, r7
 212 004a EDD3     		bcc	.L24
 213              	.L20:
 214 004c 4FF00008 		mov	r8, #0
 215              	.L23:
 216 0050 4046     		mov	r0, r8
 217 0052 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 218              	.L25:
 219 0056 A127     		movs	r7, #161
 220 0058 DDE7     		b	.L19
 221              	.L43:
 222 005a E36A     		ldr	r3, [r4, #44]
 223 005c 002B     		cmp	r3, #0
 224 005e F7D0     		beq	.L23
 225 0060 2046     		mov	r0, r4
 226 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer11WriteToFileEv
 227 0066 4046     		mov	r0, r8
 228 0068 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwKjEzx.s 			page 5


 229              		.size	_ZN10GCodeInput10FillBufferEP11GCodeBuffer, .-_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 230              		.section	.text._ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer,"ax",%progbits
 231              		.align	1
 232              		.p2align 2,,3
 233              		.global	_ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer
 234              		.syntax unified
 235              		.thumb
 236              		.thumb_func
 237              		.fpu fpv4-sp-d16
 238              		.type	_ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer, %function
 239              	_ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer:
 240              		@ args = 0, pretend = 0, frame = 8
 241              		@ frame_needed = 0, uses_anonymous_args = 0
 242 0000 70B5     		push	{r4, r5, r6, lr}
 243 0002 0546     		mov	r5, r0
 244 0004 82B0     		sub	sp, sp, #8
 245 0006 0E46     		mov	r6, r1
 246 0008 6846     		mov	r0, sp
 247 000a 05F58871 		add	r1, r5, #272
 248 000e 0A22     		movs	r2, #10
 249 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 250 0014 9DF80440 		ldrb	r4, [sp, #4]	@ zero_extendqisi2
 251 0018 24B1     		cbz	r4, .L45
 252 001a 3146     		mov	r1, r6
 253 001c 2846     		mov	r0, r5
 254 001e FFF7FEFF 		bl	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 255 0022 0446     		mov	r4, r0
 256              	.L45:
 257 0024 6846     		mov	r0, sp
 258 0026 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 259 002a 2046     		mov	r0, r4
 260 002c 02B0     		add	sp, sp, #8
 261              		@ sp needed
 262 002e 70BD     		pop	{r4, r5, r6, pc}
 263              		.size	_ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer, .-_ZN17NetworkGCodeInput10FillBufferEP11G
 264              		.section	.text._ZN17RegularGCodeInputC2Ev,"ax",%progbits
 265              		.align	1
 266              		.p2align 2,,3
 267              		.global	_ZN17RegularGCodeInputC2Ev
 268              		.syntax unified
 269              		.thumb
 270              		.thumb_func
 271              		.fpu fpv4-sp-d16
 272              		.type	_ZN17RegularGCodeInputC2Ev, %function
 273              	_ZN17RegularGCodeInputC2Ev:
 274              		@ args = 0, pretend = 0, frame = 0
 275              		@ frame_needed = 0, uses_anonymous_args = 0
 276              		@ link register save eliminated.
 277 0000 034A     		ldr	r2, .L51
 278 0002 0260     		str	r2, [r0]
 279 0004 0022     		movs	r2, #0
 280 0006 C0E90122 		strd	r2, r2, [r0, #4]
 281 000a C260     		str	r2, [r0, #12]
 282 000c 7047     		bx	lr
 283              	.L52:
 284 000e 00BF     		.align	2
 285              	.L51:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwKjEzx.s 			page 6


 286 0010 08000000 		.word	.LANCHOR0+8
 287              		.size	_ZN17RegularGCodeInputC2Ev, .-_ZN17RegularGCodeInputC2Ev
 288              		.global	_ZN17RegularGCodeInputC1Ev
 289              		.thumb_set _ZN17RegularGCodeInputC1Ev,_ZN17RegularGCodeInputC2Ev
 290              		.section	.text._ZNK17RegularGCodeInput15BufferSpaceLeftEv,"ax",%progbits
 291              		.align	1
 292              		.p2align 2,,3
 293              		.global	_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 294              		.syntax unified
 295              		.thumb
 296              		.thumb_func
 297              		.fpu fpv4-sp-d16
 298              		.type	_ZNK17RegularGCodeInput15BufferSpaceLeftEv, %function
 299              	_ZNK17RegularGCodeInput15BufferSpaceLeftEv:
 300              		@ args = 0, pretend = 0, frame = 0
 301              		@ frame_needed = 0, uses_anonymous_args = 0
 302              		@ link register save eliminated.
 303 0000 D0E90223 		ldrd	r2, r3, [r0, #8]
 304 0004 581E     		subs	r0, r3, #1
 305 0006 801A     		subs	r0, r0, r2
 306 0008 C0B2     		uxtb	r0, r0
 307 000a 7047     		bx	lr
 308              		.size	_ZNK17RegularGCodeInput15BufferSpaceLeftEv, .-_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 309              		.section	.text._ZN17NetworkGCodeInput3PutE11MessageTypec,"ax",%progbits
 310              		.align	1
 311              		.p2align 2,,3
 312              		.global	_ZN17NetworkGCodeInput3PutE11MessageTypec
 313              		.syntax unified
 314              		.thumb
 315              		.thumb_func
 316              		.fpu fpv4-sp-d16
 317              		.type	_ZN17NetworkGCodeInput3PutE11MessageTypec, %function
 318              	_ZN17NetworkGCodeInput3PutE11MessageTypec:
 319              		@ args = 0, pretend = 0, frame = 0
 320              		@ frame_needed = 0, uses_anonymous_args = 0
 321 0000 70B5     		push	{r4, r5, r6, lr}
 322 0002 D0E90253 		ldrd	r5, r3, [r0, #8]
 323 0006 013B     		subs	r3, r3, #1
 324 0008 5B1B     		subs	r3, r3, r5
 325 000a 13F0FF0F 		tst	r3, #255
 326 000e 19D0     		beq	.L54
 327 0010 4368     		ldr	r3, [r0, #4]
 328 0012 0446     		mov	r4, r0
 329 0014 072B     		cmp	r3, #7
 330 0016 1CD8     		bhi	.L57
 331 0018 DFE803F0 		tbb	[pc, r3]
 332              	.L59:
 333 001c 26       		.byte	(.L58-.L59)/2
 334 001d 2F       		.byte	(.L60-.L59)/2
 335 001e 39       		.byte	(.L61-.L59)/2
 336 001f 3F       		.byte	(.L62-.L59)/2
 337 0020 46       		.byte	(.L63-.L59)/2
 338 0021 4C       		.byte	(.L64-.L59)/2
 339 0022 15       		.byte	(.L65-.L59)/2
 340 0023 04       		.byte	(.L66-.L59)/2
 341              		.p2align 1
 342              	.L66:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwKjEzx.s 			page 7


 343 0024 1F2A     		cmp	r2, #31
 344 0026 01D9     		bls	.L76
 345 0028 3B2A     		cmp	r2, #59
 346 002a 10D1     		bne	.L74
 347              	.L76:
 348 002c 2E4B     		ldr	r3, .L89
 349 002e 2F4A     		ldr	r2, .L89+4
 350 0030 A3F87014 		strh	r1, [r3, #1136]	@ movhi
 351 0034 2368     		ldr	r3, [r4]
 352 0036 1B68     		ldr	r3, [r3]
 353 0038 9342     		cmp	r3, r2
 354 003a 4FD1     		bne	.L88
 355              	.L77:
 356 003c 0023     		movs	r3, #0
 357 003e C4E90233 		strd	r3, r3, [r4, #8]
 358 0042 6360     		str	r3, [r4, #4]
 359              	.L54:
 360 0044 70BD     		pop	{r4, r5, r6, pc}
 361              	.L65:
 362 0046 202A     		cmp	r2, #32
 363 0048 3CD9     		bls	.L73
 364 004a 3B2A     		cmp	r2, #59
 365 004c 3AD0     		beq	.L73
 366              	.L74:
 367 004e 0123     		movs	r3, #1
 368              	.L87:
 369 0050 6360     		str	r3, [r4, #4]
 370              	.L57:
 371 0052 6119     		adds	r1, r4, r5
 372 0054 0135     		adds	r5, r5, #1
 373 0056 B5F5807F 		cmp	r5, #256
 374 005a 08BF     		it	eq
 375 005c 0023     		moveq	r3, #0
 376 005e A560     		str	r5, [r4, #8]
 377 0060 0A74     		strb	r2, [r1, #16]
 378 0062 08BF     		it	eq
 379 0064 A360     		streq	r3, [r4, #8]
 380 0066 70BD     		pop	{r4, r5, r6, pc}
 381              	.L58:
 382 0068 202A     		cmp	r2, #32
 383 006a EBD9     		bls	.L54
 384 006c 4D2A     		cmp	r2, #77
 385 006e 39D0     		beq	.L78
 386 0070 6D2A     		cmp	r2, #109
 387 0072 14BF     		ite	ne
 388 0074 0123     		movne	r3, #1
 389 0076 0223     		moveq	r3, #2
 390 0078 EAE7     		b	.L87
 391              	.L60:
 392 007a 0D2A     		cmp	r2, #13
 393 007c E9D8     		bhi	.L57
 394 007e 42F20143 		movw	r3, #9217
 395 0082 D340     		lsrs	r3, r3, r2
 396 0084 DB43     		mvns	r3, r3
 397 0086 13F00103 		ands	r3, r3, #1
 398 008a E1D0     		beq	.L87
 399 008c E1E7     		b	.L57
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwKjEzx.s 			page 8


 400              	.L61:
 401 008e 312A     		cmp	r2, #49
 402 0090 14BF     		ite	ne
 403 0092 0123     		movne	r3, #1
 404 0094 0323     		moveq	r3, #3
 405 0096 6360     		str	r3, [r4, #4]
 406 0098 DBE7     		b	.L57
 407              	.L62:
 408 009a 312A     		cmp	r2, #49
 409 009c 10D0     		beq	.L81
 410 009e 322A     		cmp	r2, #50
 411 00a0 14BF     		ite	ne
 412 00a2 0123     		movne	r3, #1
 413 00a4 0523     		moveq	r3, #5
 414 00a6 D3E7     		b	.L87
 415              	.L63:
 416 00a8 322A     		cmp	r2, #50
 417 00aa 14BF     		ite	ne
 418 00ac 0123     		movne	r3, #1
 419 00ae 0623     		moveq	r3, #6
 420 00b0 6360     		str	r3, [r4, #4]
 421 00b2 CEE7     		b	.L57
 422              	.L64:
 423 00b4 322A     		cmp	r2, #50
 424 00b6 14BF     		ite	ne
 425 00b8 0123     		movne	r3, #1
 426 00ba 0723     		moveq	r3, #7
 427 00bc 6360     		str	r3, [r4, #4]
 428 00be C8E7     		b	.L57
 429              	.L81:
 430 00c0 0423     		movs	r3, #4
 431 00c2 C5E7     		b	.L87
 432              	.L73:
 433 00c4 084D     		ldr	r5, .L89
 434 00c6 2846     		mov	r0, r5
 435 00c8 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 436 00cc 6869     		ldr	r0, [r5, #20]
 437 00ce FFF7FEFF 		bl	_ZN6GCodes5ResetEv
 438 00d2 2368     		ldr	r3, [r4]
 439 00d4 054A     		ldr	r2, .L89+4
 440 00d6 1B68     		ldr	r3, [r3]
 441 00d8 9342     		cmp	r3, r2
 442 00da AFD0     		beq	.L77
 443              	.L88:
 444 00dc 2046     		mov	r0, r4
 445 00de BDE87040 		pop	{r4, r5, r6, lr}
 446 00e2 1847     		bx	r3	@ indirect register sibling call
 447              	.L78:
 448 00e4 0223     		movs	r3, #2
 449 00e6 B3E7     		b	.L87
 450              	.L90:
 451              		.align	2
 452              	.L89:
 453 00e8 00000000 		.word	reprap
 454 00ec 00000000 		.word	_ZN17RegularGCodeInput5ResetEv
 455              		.size	_ZN17NetworkGCodeInput3PutE11MessageTypec, .-_ZN17NetworkGCodeInput3PutE11MessageTypec
 456              		.section	.text._ZN17NetworkGCodeInput3PutE11MessageTypePKc,"ax",%progbits
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwKjEzx.s 			page 9


 457              		.align	1
 458              		.p2align 2,,3
 459              		.global	_ZN17NetworkGCodeInput3PutE11MessageTypePKc
 460              		.syntax unified
 461              		.thumb
 462              		.thumb_func
 463              		.fpu fpv4-sp-d16
 464              		.type	_ZN17NetworkGCodeInput3PutE11MessageTypePKc, %function
 465              	_ZN17NetworkGCodeInput3PutE11MessageTypePKc:
 466              		@ args = 0, pretend = 0, frame = 8
 467              		@ frame_needed = 0, uses_anonymous_args = 0
 468 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 469 0002 0546     		mov	r5, r0
 470 0004 83B0     		sub	sp, sp, #12
 471 0006 1046     		mov	r0, r2
 472 0008 1446     		mov	r4, r2
 473 000a 0E46     		mov	r6, r1
 474 000c FFF7FEFF 		bl	strlen
 475 0010 05F58871 		add	r1, r5, #272
 476 0014 0746     		mov	r7, r0
 477 0016 C822     		movs	r2, #200
 478 0018 6846     		mov	r0, sp
 479 001a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 480 001e 9DF80430 		ldrb	r3, [sp, #4]	@ zero_extendqisi2
 481 0022 8BB1     		cbz	r3, .L92
 482 0024 D5E90223 		ldrd	r2, r3, [r5, #8]
 483 0028 013B     		subs	r3, r3, #1
 484 002a 9B1A     		subs	r3, r3, r2
 485 002c DBB2     		uxtb	r3, r3
 486 002e 7A1C     		adds	r2, r7, #1
 487 0030 9A42     		cmp	r2, r3
 488 0032 09D8     		bhi	.L92
 489 0034 2744     		add	r7, r7, r4
 490 0036 013C     		subs	r4, r4, #1
 491              	.L93:
 492 0038 14F8012F 		ldrb	r2, [r4, #1]!	@ zero_extendqisi2
 493 003c 3146     		mov	r1, r6
 494 003e 2846     		mov	r0, r5
 495 0040 FFF7FEFF 		bl	_ZN17NetworkGCodeInput3PutE11MessageTypec
 496 0044 A742     		cmp	r7, r4
 497 0046 F7D1     		bne	.L93
 498              	.L92:
 499 0048 6846     		mov	r0, sp
 500 004a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 501 004e 03B0     		add	sp, sp, #12
 502              		@ sp needed
 503 0050 F0BD     		pop	{r4, r5, r6, r7, pc}
 504              		.size	_ZN17NetworkGCodeInput3PutE11MessageTypePKc, .-_ZN17NetworkGCodeInput3PutE11MessageTypePKc
 505 0052 00BF     		.section	.text._ZN17NetworkGCodeInputC2Ev,"ax",%progbits
 506              		.align	1
 507              		.p2align 2,,3
 508              		.global	_ZN17NetworkGCodeInputC2Ev
 509              		.syntax unified
 510              		.thumb
 511              		.thumb_func
 512              		.fpu fpv4-sp-d16
 513              		.type	_ZN17NetworkGCodeInputC2Ev, %function
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwKjEzx.s 			page 10


 514              	_ZN17NetworkGCodeInputC2Ev:
 515              		@ args = 0, pretend = 0, frame = 0
 516              		@ frame_needed = 0, uses_anonymous_args = 0
 517 0000 10B5     		push	{r4, lr}
 518 0002 084B     		ldr	r3, .L101
 519 0004 0360     		str	r3, [r0]
 520 0006 0023     		movs	r3, #0
 521 0008 C0F81031 		str	r3, [r0, #272]
 522 000c 0446     		mov	r4, r0
 523 000e C0E90133 		strd	r3, r3, [r0, #4]
 524 0012 C360     		str	r3, [r0, #12]
 525 0014 0449     		ldr	r1, .L101+4
 526 0016 00F58870 		add	r0, r0, #272
 527 001a FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 528 001e 2046     		mov	r0, r4
 529 0020 10BD     		pop	{r4, pc}
 530              	.L102:
 531 0022 00BF     		.align	2
 532              	.L101:
 533 0024 08000000 		.word	.LANCHOR1+8
 534 0028 00000000 		.word	.LC0
 535              		.size	_ZN17NetworkGCodeInputC2Ev, .-_ZN17NetworkGCodeInputC2Ev
 536              		.global	_ZN17NetworkGCodeInputC1Ev
 537              		.thumb_set _ZN17NetworkGCodeInputC1Ev,_ZN17NetworkGCodeInputC2Ev
 538              		.section	.text._ZN14FileGCodeInput5ResetERK8FileData,"ax",%progbits
 539              		.align	1
 540              		.p2align 2,,3
 541              		.global	_ZN14FileGCodeInput5ResetERK8FileData
 542              		.syntax unified
 543              		.thumb
 544              		.thumb_func
 545              		.fpu fpv4-sp-d16
 546              		.type	_ZN14FileGCodeInput5ResetERK8FileData, %function
 547              	_ZN14FileGCodeInput5ResetERK8FileData:
 548              		@ args = 0, pretend = 0, frame = 0
 549              		@ frame_needed = 0, uses_anonymous_args = 0
 550              		@ link register save eliminated.
 551 0000 0968     		ldr	r1, [r1]
 552 0002 D0F81021 		ldr	r2, [r0, #272]
 553 0006 9142     		cmp	r1, r2
 554 0008 00D0     		beq	.L106
 555 000a 7047     		bx	lr
 556              	.L106:
 557 000c 0268     		ldr	r2, [r0]
 558 000e 0649     		ldr	r1, .L107
 559 0010 1268     		ldr	r2, [r2]
 560 0012 8A42     		cmp	r2, r1
 561 0014 06D1     		bne	.L105
 562 0016 0022     		movs	r2, #0
 563 0018 C0F81021 		str	r2, [r0, #272]
 564 001c 4260     		str	r2, [r0, #4]
 565 001e C0E90222 		strd	r2, r2, [r0, #8]
 566 0022 7047     		bx	lr
 567              	.L105:
 568 0024 1047     		bx	r2	@ indirect register sibling call
 569              	.L108:
 570 0026 00BF     		.align	2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwKjEzx.s 			page 11


 571              	.L107:
 572 0028 00000000 		.word	_ZN14FileGCodeInput5ResetEv
 573              		.size	_ZN14FileGCodeInput5ResetERK8FileData, .-_ZN14FileGCodeInput5ResetERK8FileData
 574              		.section	.text._ZN14FileGCodeInput12ReadFromFileER8FileData,"ax",%progbits
 575              		.align	1
 576              		.p2align 2,,3
 577              		.global	_ZN14FileGCodeInput12ReadFromFileER8FileData
 578              		.syntax unified
 579              		.thumb
 580              		.thumb_func
 581              		.fpu fpv4-sp-d16
 582              		.type	_ZN14FileGCodeInput12ReadFromFileER8FileData, %function
 583              	_ZN14FileGCodeInput12ReadFromFileER8FileData:
 584              		@ args = 0, pretend = 0, frame = 0
 585              		@ frame_needed = 0, uses_anonymous_args = 0
 586 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 587 0002 0368     		ldr	r3, [r0]
 588 0004 284A     		ldr	r2, .L129
 589 0006 9B68     		ldr	r3, [r3, #8]
 590 0008 9342     		cmp	r3, r2
 591 000a 0446     		mov	r4, r0
 592 000c 0F46     		mov	r7, r1
 593 000e 2CD1     		bne	.L110
 594 0010 FFF7FEFF 		bl	_ZNK17RegularGCodeInput11BytesCachedEv
 595 0014 0546     		mov	r5, r0
 596              	.L111:
 597 0016 D4F81061 		ldr	r6, [r4, #272]
 598 001a 3868     		ldr	r0, [r7]
 599 001c 3EB1     		cbz	r6, .L112
 600 001e 8642     		cmp	r6, r0
 601 0020 05D0     		beq	.L112
 602 0022 A5BB     		cbnz	r5, .L127
 603              	.L113:
 604 0024 0023     		movs	r3, #0
 605 0026 C4E90233 		strd	r3, r3, [r4, #8]
 606 002a 6360     		str	r3, [r4, #4]
 607 002c 3868     		ldr	r0, [r7]
 608              	.L112:
 609 002e C4F81001 		str	r0, [r4, #272]
 610 0032 7F2D     		cmp	r5, #127
 611 0034 1CD8     		bhi	.L118
 612 0036 D4E90262 		ldrd	r6, r2, [r4, #8]
 613 003a B242     		cmp	r2, r6
 614 003c 1AD0     		beq	.L115
 615 003e 013A     		subs	r2, r2, #1
 616 0040 921B     		subs	r2, r2, r6
 617 0042 D2B2     		uxtb	r2, r2
 618 0044 C6F58073 		rsb	r3, r6, #256
 619 0048 9A42     		cmp	r2, r3
 620 004a 04F11001 		add	r1, r4, #16
 621 004e 28BF     		it	cs
 622 0050 1A46     		movcs	r2, r3
 623 0052 3144     		add	r1, r1, r6
 624 0054 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 625 0058 0028     		cmp	r0, #0
 626 005a 16DB     		blt	.L119
 627              	.L128:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwKjEzx.s 			page 12


 628 005c 1FD0     		beq	.L117
 629 005e A368     		ldr	r3, [r4, #8]
 630 0060 1844     		add	r0, r0, r3
 631 0062 C0B2     		uxtb	r0, r0
 632 0064 A060     		str	r0, [r4, #8]
 633 0066 0020     		movs	r0, #0
 634 0068 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 635              	.L110:
 636 006a 9847     		blx	r3
 637 006c 0546     		mov	r5, r0
 638 006e D2E7     		b	.L111
 639              	.L118:
 640 0070 0020     		movs	r0, #0
 641 0072 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 642              	.L115:
 643 0074 0026     		movs	r6, #0
 644 0076 04F11001 		add	r1, r4, #16
 645 007a C4E90266 		strd	r6, r6, [r4, #8]
 646 007e FF22     		movs	r2, #255
 647 0080 3144     		add	r1, r1, r6
 648 0082 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 649 0086 0028     		cmp	r0, #0
 650 0088 E8DA     		bge	.L128
 651              	.L119:
 652 008a 0220     		movs	r0, #2
 653 008c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 654              	.L127:
 655 008e 3046     		mov	r0, r6
 656 0090 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 657 0094 411B     		subs	r1, r0, r5
 658 0096 3046     		mov	r0, r6
 659 0098 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 660 009c C2E7     		b	.L113
 661              	.L117:
 662 009e B5FA85F0 		clz	r0, r5
 663 00a2 4009     		lsrs	r0, r0, #5
 664 00a4 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 665              	.L130:
 666 00a6 00BF     		.align	2
 667              	.L129:
 668 00a8 00000000 		.word	_ZNK17RegularGCodeInput11BytesCachedEv
 669              		.size	_ZN14FileGCodeInput12ReadFromFileER8FileData, .-_ZN14FileGCodeInput12ReadFromFileER8FileData
 670              		.global	_ZTV10GCodeInput
 671              		.global	_ZTV16StreamGCodeInput
 672              		.global	_ZTV17RegularGCodeInput
 673              		.global	_ZTV14FileGCodeInput
 674              		.global	_ZTV17NetworkGCodeInput
 675              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 676              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 677              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 678              	_ZL28cpu_irq_prev_interrupt_state:
 679 0000 00       		.space	1
 680              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 681              		.align	2
 682              		.type	_ZL32cpu_irq_critical_section_counter, %object
 683              		.size	_ZL32cpu_irq_critical_section_counter, 4
 684              	_ZL32cpu_irq_critical_section_counter:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwKjEzx.s 			page 13


 685 0000 00000000 		.space	4
 686              		.section	.rodata._ZN17NetworkGCodeInputC2Ev.str1.4,"aMS",%progbits,1
 687              		.align	2
 688              	.LC0:
 689 0000 4E657477 		.ascii	"NetworkGCodeInput\000"
 689      6F726B47 
 689      436F6465 
 689      496E7075 
 689      7400
 690              		.section	.rodata._ZTV10GCodeInput,"a",%progbits
 691              		.align	2
 692              		.type	_ZTV10GCodeInput, %object
 693              		.size	_ZTV10GCodeInput, 24
 694              	_ZTV10GCodeInput:
 695 0000 00000000 		.word	0
 696 0004 00000000 		.word	0
 697 0008 00000000 		.word	__cxa_pure_virtual
 698 000c 00000000 		.word	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 699 0010 00000000 		.word	__cxa_pure_virtual
 700 0014 00000000 		.word	__cxa_pure_virtual
 701              		.section	.rodata._ZTV14FileGCodeInput,"a",%progbits
 702              		.align	2
 703              		.type	_ZTV14FileGCodeInput, %object
 704              		.size	_ZTV14FileGCodeInput, 24
 705              	_ZTV14FileGCodeInput:
 706 0000 00000000 		.word	0
 707 0004 00000000 		.word	0
 708 0008 00000000 		.word	_ZN14FileGCodeInput5ResetEv
 709 000c 00000000 		.word	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 710 0010 00000000 		.word	_ZNK17RegularGCodeInput11BytesCachedEv
 711 0014 00000000 		.word	_ZN17RegularGCodeInput8ReadByteEv
 712              		.section	.rodata._ZTV16StreamGCodeInput,"a",%progbits
 713              		.align	2
 714              		.type	_ZTV16StreamGCodeInput, %object
 715              		.size	_ZTV16StreamGCodeInput, 24
 716              	_ZTV16StreamGCodeInput:
 717 0000 00000000 		.word	0
 718 0004 00000000 		.word	0
 719 0008 00000000 		.word	_ZN16StreamGCodeInput5ResetEv
 720 000c 00000000 		.word	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 721 0010 00000000 		.word	_ZNK16StreamGCodeInput11BytesCachedEv
 722 0014 00000000 		.word	_ZN16StreamGCodeInput8ReadByteEv
 723              		.section	.rodata._ZTV17NetworkGCodeInput,"a",%progbits
 724              		.align	2
 725              		.set	.LANCHOR1,. + 0
 726              		.type	_ZTV17NetworkGCodeInput, %object
 727              		.size	_ZTV17NetworkGCodeInput, 24
 728              	_ZTV17NetworkGCodeInput:
 729 0000 00000000 		.word	0
 730 0004 00000000 		.word	0
 731 0008 00000000 		.word	_ZN17RegularGCodeInput5ResetEv
 732 000c 00000000 		.word	_ZN17NetworkGCodeInput10FillBufferEP11GCodeBuffer
 733 0010 00000000 		.word	_ZNK17RegularGCodeInput11BytesCachedEv
 734 0014 00000000 		.word	_ZN17RegularGCodeInput8ReadByteEv
 735              		.section	.rodata._ZTV17RegularGCodeInput,"a",%progbits
 736              		.align	2
 737              		.set	.LANCHOR0,. + 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccwKjEzx.s 			page 14


 738              		.type	_ZTV17RegularGCodeInput, %object
 739              		.size	_ZTV17RegularGCodeInput, 24
 740              	_ZTV17RegularGCodeInput:
 741 0000 00000000 		.word	0
 742 0004 00000000 		.word	0
 743 0008 00000000 		.word	_ZN17RegularGCodeInput5ResetEv
 744 000c 00000000 		.word	_ZN10GCodeInput10FillBufferEP11GCodeBuffer
 745 0010 00000000 		.word	_ZNK17RegularGCodeInput11BytesCachedEv
 746 0014 00000000 		.word	_ZN17RegularGCodeInput8ReadByteEv
 747              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
