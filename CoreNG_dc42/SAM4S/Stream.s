ARM GAS  /tmp/ccGoJmju.s 			page 1


   1              		.cpu cortex-m4
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 2
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"Stream.cpp"
  12              		.section	.text._ZNK6Stream8canWriteEv,"axG",%progbits,_ZNK6Stream8canWriteEv,comdat
  13              		.align	1
  14              		.p2align 2,,3
  15              		.weak	_ZNK6Stream8canWriteEv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZNK6Stream8canWriteEv, %function
  21              	_ZNK6Stream8canWriteEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0120     		movs	r0, #1
  26 0002 7047     		bx	lr
  27              		.size	_ZNK6Stream8canWriteEv, .-_ZNK6Stream8canWriteEv
  28              		.section	.text._ZN6Stream9timedReadEv,"ax",%progbits
  29              		.align	1
  30              		.p2align 2,,3
  31              		.global	_ZN6Stream9timedReadEv
  32              		.syntax unified
  33              		.thumb
  34              		.thumb_func
  35              		.fpu softvfp
  36              		.type	_ZN6Stream9timedReadEv, %function
  37              	_ZN6Stream9timedReadEv:
  38              		@ args = 0, pretend = 0, frame = 0
  39              		@ frame_needed = 0, uses_anonymous_args = 0
  40 0000 10B5     		push	{r4, lr}
  41 0002 0446     		mov	r4, r0
  42 0004 FFF7FEFF 		bl	millis
  43 0008 E060     		str	r0, [r4, #12]
  44 000a 06E0     		b	.L4
  45              	.L9:
  46 000c FFF7FEFF 		bl	millis
  47 0010 E368     		ldr	r3, [r4, #12]
  48 0012 A268     		ldr	r2, [r4, #8]
  49 0014 C01A     		subs	r0, r0, r3
  50 0016 9042     		cmp	r0, r2
  51 0018 06D2     		bcs	.L8
  52              	.L4:
  53 001a 2368     		ldr	r3, [r4]
  54 001c 2046     		mov	r0, r4
  55 001e 5B69     		ldr	r3, [r3, #20]
  56 0020 9847     		blx	r3
  57 0022 0028     		cmp	r0, #0
ARM GAS  /tmp/ccGoJmju.s 			page 2


  58 0024 F2DB     		blt	.L9
  59 0026 10BD     		pop	{r4, pc}
  60              	.L8:
  61 0028 4FF0FF30 		mov	r0, #-1
  62 002c 10BD     		pop	{r4, pc}
  63              		.size	_ZN6Stream9timedReadEv, .-_ZN6Stream9timedReadEv
  64 002e 00BF     		.section	.text._ZN6Stream9readBytesEPcj,"ax",%progbits
  65              		.align	1
  66              		.p2align 2,,3
  67              		.global	_ZN6Stream9readBytesEPcj
  68              		.syntax unified
  69              		.thumb
  70              		.thumb_func
  71              		.fpu softvfp
  72              		.type	_ZN6Stream9readBytesEPcj, %function
  73              	_ZN6Stream9readBytesEPcj:
  74              		@ args = 0, pretend = 0, frame = 0
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  77 0002 1646     		mov	r6, r2
  78 0004 7AB1     		cbz	r2, .L13
  79 0006 0746     		mov	r7, r0
  80 0008 0D46     		mov	r5, r1
  81 000a 0024     		movs	r4, #0
  82 000c 04E0     		b	.L12
  83              	.L16:
  84 000e 0134     		adds	r4, r4, #1
  85 0010 A642     		cmp	r6, r4
  86 0012 05F8010B 		strb	r0, [r5], #1
  87 0016 04D0     		beq	.L10
  88              	.L12:
  89 0018 3846     		mov	r0, r7
  90 001a FFF7FEFF 		bl	_ZN6Stream9timedReadEv
  91 001e 0028     		cmp	r0, #0
  92 0020 F5DA     		bge	.L16
  93              	.L10:
  94 0022 2046     		mov	r0, r4
  95 0024 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  96              	.L13:
  97 0026 1446     		mov	r4, r2
  98 0028 FBE7     		b	.L10
  99              		.size	_ZN6Stream9readBytesEPcj, .-_ZN6Stream9readBytesEPcj
 100 002a 00BF     		.section	.text._ZN6Stream9findUntilEPcjS0_j.part.0,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.syntax unified
 104              		.thumb
 105              		.thumb_func
 106              		.fpu softvfp
 107              		.type	_ZN6Stream9findUntilEPcjS0_j.part.0, %function
 108              	_ZN6Stream9findUntilEPcjS0_j.part.0:
 109              		@ args = 4, pretend = 0, frame = 0
 110              		@ frame_needed = 0, uses_anonymous_args = 0
 111 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 112 0004 089F     		ldr	r7, [sp, #32]
 113 0006 0025     		movs	r5, #0
 114 0008 8046     		mov	r8, r0
ARM GAS  /tmp/ccGoJmju.s 			page 3


 115 000a 0E46     		mov	r6, r1
 116 000c 9246     		mov	r10, r2
 117 000e 9946     		mov	r9, r3
 118 0010 2C46     		mov	r4, r5
 119              	.L18:
 120 0012 4046     		mov	r0, r8
 121 0014 FFF7FEFF 		bl	_ZN6Stream9timedReadEv
 122 0018 0028     		cmp	r0, #0
 123 001a 13DD     		ble	.L24
 124              	.L34:
 125 001c 335D     		ldrb	r3, [r6, r4]	@ zero_extendqisi2
 126 001e 9842     		cmp	r0, r3
 127 0020 13D0     		beq	.L31
 128 0022 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 129 0024 9842     		cmp	r0, r3
 130 0026 18BF     		it	ne
 131 0028 0024     		movne	r4, #0
 132 002a 18D0     		beq	.L32
 133              	.L22:
 134 002c 1FB1     		cbz	r7, .L28
 135 002e 19F80530 		ldrb	r3, [r9, r5]	@ zero_extendqisi2
 136 0032 9842     		cmp	r0, r3
 137 0034 0FD0     		beq	.L33
 138              	.L28:
 139 0036 4046     		mov	r0, r8
 140 0038 FFF7FEFF 		bl	_ZN6Stream9timedReadEv
 141 003c 0028     		cmp	r0, #0
 142 003e 4FF00005 		mov	r5, #0
 143 0042 EBDC     		bgt	.L34
 144              	.L24:
 145 0044 0020     		movs	r0, #0
 146 0046 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 147              	.L31:
 148 004a 0134     		adds	r4, r4, #1
 149              	.L21:
 150 004c A245     		cmp	r10, r4
 151 004e EDD8     		bhi	.L22
 152 0050 0120     		movs	r0, #1
 153 0052 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 154              	.L33:
 155 0056 0135     		adds	r5, r5, #1
 156 0058 AF42     		cmp	r7, r5
 157 005a DAD8     		bhi	.L18
 158 005c F2E7     		b	.L24
 159              	.L32:
 160 005e 0124     		movs	r4, #1
 161 0060 F4E7     		b	.L21
 162              		.size	_ZN6Stream9findUntilEPcjS0_j.part.0, .-_ZN6Stream9findUntilEPcjS0_j.part.0
 163 0062 00BF     		.section	.text._ZN6Stream9timedPeekEv,"ax",%progbits
 164              		.align	1
 165              		.p2align 2,,3
 166              		.global	_ZN6Stream9timedPeekEv
 167              		.syntax unified
 168              		.thumb
 169              		.thumb_func
 170              		.fpu softvfp
 171              		.type	_ZN6Stream9timedPeekEv, %function
ARM GAS  /tmp/ccGoJmju.s 			page 4


 172              	_ZN6Stream9timedPeekEv:
 173              		@ args = 0, pretend = 0, frame = 0
 174              		@ frame_needed = 0, uses_anonymous_args = 0
 175 0000 10B5     		push	{r4, lr}
 176 0002 0446     		mov	r4, r0
 177 0004 FFF7FEFF 		bl	millis
 178 0008 E060     		str	r0, [r4, #12]
 179 000a 06E0     		b	.L37
 180              	.L41:
 181 000c FFF7FEFF 		bl	millis
 182 0010 E368     		ldr	r3, [r4, #12]
 183 0012 A268     		ldr	r2, [r4, #8]
 184 0014 C01A     		subs	r0, r0, r3
 185 0016 9042     		cmp	r0, r2
 186 0018 06D2     		bcs	.L40
 187              	.L37:
 188 001a 2368     		ldr	r3, [r4]
 189 001c 2046     		mov	r0, r4
 190 001e 9B69     		ldr	r3, [r3, #24]
 191 0020 9847     		blx	r3
 192 0022 0028     		cmp	r0, #0
 193 0024 F2DB     		blt	.L41
 194 0026 10BD     		pop	{r4, pc}
 195              	.L40:
 196 0028 4FF0FF30 		mov	r0, #-1
 197 002c 10BD     		pop	{r4, pc}
 198              		.size	_ZN6Stream9timedPeekEv, .-_ZN6Stream9timedPeekEv
 199 002e 00BF     		.section	.text._ZN6Stream13peekNextDigitEv,"ax",%progbits
 200              		.align	1
 201              		.p2align 2,,3
 202              		.global	_ZN6Stream13peekNextDigitEv
 203              		.syntax unified
 204              		.thumb
 205              		.thumb_func
 206              		.fpu softvfp
 207              		.type	_ZN6Stream13peekNextDigitEv, %function
 208              	_ZN6Stream13peekNextDigitEv:
 209              		@ args = 0, pretend = 0, frame = 0
 210              		@ frame_needed = 0, uses_anonymous_args = 0
 211 0000 10B5     		push	{r4, lr}
 212 0002 0446     		mov	r4, r0
 213 0004 06E0     		b	.L44
 214              	.L49:
 215 0006 2D2B     		cmp	r3, #45
 216 0008 0CD0     		beq	.L42
 217 000a 092A     		cmp	r2, #9
 218 000c 0AD9     		bls	.L42
 219 000e 2368     		ldr	r3, [r4]
 220 0010 5B69     		ldr	r3, [r3, #20]
 221 0012 9847     		blx	r3
 222              	.L44:
 223 0014 2046     		mov	r0, r4
 224 0016 FFF7FEFF 		bl	_ZN6Stream9timedPeekEv
 225 001a 031E     		subs	r3, r0, #0
 226 001c A3F13002 		sub	r2, r3, #48
 227 0020 2046     		mov	r0, r4
 228 0022 F0DA     		bge	.L49
ARM GAS  /tmp/ccGoJmju.s 			page 5


 229              	.L42:
 230 0024 1846     		mov	r0, r3
 231 0026 10BD     		pop	{r4, pc}
 232              		.size	_ZN6Stream13peekNextDigitEv, .-_ZN6Stream13peekNextDigitEv
 233              		.section	.text._ZN6Stream10setTimeoutEm,"ax",%progbits
 234              		.align	1
 235              		.p2align 2,,3
 236              		.global	_ZN6Stream10setTimeoutEm
 237              		.syntax unified
 238              		.thumb
 239              		.thumb_func
 240              		.fpu softvfp
 241              		.type	_ZN6Stream10setTimeoutEm, %function
 242              	_ZN6Stream10setTimeoutEm:
 243              		@ args = 0, pretend = 0, frame = 0
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245              		@ link register save eliminated.
 246 0000 8160     		str	r1, [r0, #8]
 247 0002 7047     		bx	lr
 248              		.size	_ZN6Stream10setTimeoutEm, .-_ZN6Stream10setTimeoutEm
 249              		.section	.text._ZN6Stream4findEPcj,"ax",%progbits
 250              		.align	1
 251              		.p2align 2,,3
 252              		.global	_ZN6Stream4findEPcj
 253              		.syntax unified
 254              		.thumb
 255              		.thumb_func
 256              		.fpu softvfp
 257              		.type	_ZN6Stream4findEPcj, %function
 258              	_ZN6Stream4findEPcj:
 259              		@ args = 0, pretend = 0, frame = 0
 260              		@ frame_needed = 0, uses_anonymous_args = 0
 261 0000 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 262 0002 0BB9     		cbnz	r3, .L58
 263 0004 0120     		movs	r0, #1
 264 0006 7047     		bx	lr
 265              	.L58:
 266 0008 00B5     		push	{lr}
 267 000a 83B0     		sub	sp, sp, #12
 268 000c 0023     		movs	r3, #0
 269 000e 0093     		str	r3, [sp]
 270 0010 FFF7FEFF 		bl	_ZN6Stream9findUntilEPcjS0_j.part.0
 271 0014 03B0     		add	sp, sp, #12
 272              		@ sp needed
 273 0016 5DF804FB 		ldr	pc, [sp], #4
 274              		.size	_ZN6Stream4findEPcj, .-_ZN6Stream4findEPcj
 275              		.section	.text._ZN6Stream9findUntilEPcS0_,"ax",%progbits
 276              		.align	1
 277              		.p2align 2,,3
 278              		.global	_ZN6Stream9findUntilEPcS0_
 279              		.syntax unified
 280              		.thumb
 281              		.thumb_func
 282              		.fpu softvfp
 283              		.type	_ZN6Stream9findUntilEPcS0_, %function
 284              	_ZN6Stream9findUntilEPcS0_:
 285              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccGoJmju.s 			page 6


 286              		@ frame_needed = 0, uses_anonymous_args = 0
 287 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 288 0002 0646     		mov	r6, r0
 289 0004 83B0     		sub	sp, sp, #12
 290 0006 0846     		mov	r0, r1
 291 0008 0C46     		mov	r4, r1
 292 000a 1546     		mov	r5, r2
 293 000c FFF7FEFF 		bl	strlen
 294 0010 0746     		mov	r7, r0
 295 0012 2846     		mov	r0, r5
 296 0014 FFF7FEFF 		bl	strlen
 297 0018 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 298 001a 13B9     		cbnz	r3, .L63
 299 001c 0120     		movs	r0, #1
 300 001e 03B0     		add	sp, sp, #12
 301              		@ sp needed
 302 0020 F0BD     		pop	{r4, r5, r6, r7, pc}
 303              	.L63:
 304 0022 0090     		str	r0, [sp]
 305 0024 2B46     		mov	r3, r5
 306 0026 3A46     		mov	r2, r7
 307 0028 2146     		mov	r1, r4
 308 002a 3046     		mov	r0, r6
 309 002c FFF7FEFF 		bl	_ZN6Stream9findUntilEPcjS0_j.part.0
 310 0030 03B0     		add	sp, sp, #12
 311              		@ sp needed
 312 0032 F0BD     		pop	{r4, r5, r6, r7, pc}
 313              		.size	_ZN6Stream9findUntilEPcS0_, .-_ZN6Stream9findUntilEPcS0_
 314              		.section	.text._ZN6Stream4findEPc,"ax",%progbits
 315              		.align	1
 316              		.p2align 2,,3
 317              		.global	_ZN6Stream4findEPc
 318              		.syntax unified
 319              		.thumb
 320              		.thumb_func
 321              		.fpu softvfp
 322              		.type	_ZN6Stream4findEPc, %function
 323              	_ZN6Stream4findEPc:
 324              		@ args = 0, pretend = 0, frame = 0
 325              		@ frame_needed = 0, uses_anonymous_args = 0
 326              		@ link register save eliminated.
 327 0000 014A     		ldr	r2, .L65
 328 0002 FFF7FEBF 		b	_ZN6Stream9findUntilEPcS0_
 329              	.L66:
 330 0006 00BF     		.align	2
 331              	.L65:
 332 0008 00000000 		.word	.LC0
 333              		.size	_ZN6Stream4findEPc, .-_ZN6Stream4findEPc
 334              		.section	.text._ZN6Stream9findUntilEPcjS0_j,"ax",%progbits
 335              		.align	1
 336              		.p2align 2,,3
 337              		.global	_ZN6Stream9findUntilEPcjS0_j
 338              		.syntax unified
 339              		.thumb
 340              		.thumb_func
 341              		.fpu softvfp
 342              		.type	_ZN6Stream9findUntilEPcjS0_j, %function
ARM GAS  /tmp/ccGoJmju.s 			page 7


 343              	_ZN6Stream9findUntilEPcjS0_j:
 344              		@ args = 4, pretend = 0, frame = 0
 345              		@ frame_needed = 0, uses_anonymous_args = 0
 346              		@ link register save eliminated.
 347 0000 30B4     		push	{r4, r5}
 348 0002 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
 349 0004 14B1     		cbz	r4, .L68
 350 0006 30BC     		pop	{r4, r5}
 351 0008 FFF7FEBF 		b	_ZN6Stream9findUntilEPcjS0_j.part.0
 352              	.L68:
 353 000c 0120     		movs	r0, #1
 354 000e 30BC     		pop	{r4, r5}
 355 0010 7047     		bx	lr
 356              		.size	_ZN6Stream9findUntilEPcjS0_j, .-_ZN6Stream9findUntilEPcjS0_j
 357 0012 00BF     		.section	.text._ZN6Stream8parseIntEc,"ax",%progbits
 358              		.align	1
 359              		.p2align 2,,3
 360              		.global	_ZN6Stream8parseIntEc
 361              		.syntax unified
 362              		.thumb
 363              		.thumb_func
 364              		.fpu softvfp
 365              		.type	_ZN6Stream8parseIntEc, %function
 366              	_ZN6Stream8parseIntEc:
 367              		@ args = 0, pretend = 0, frame = 0
 368              		@ frame_needed = 0, uses_anonymous_args = 0
 369 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 370 0002 0D46     		mov	r5, r1
 371 0004 0446     		mov	r4, r0
 372 0006 FFF7FEFF 		bl	_ZN6Stream13peekNextDigitEv
 373 000a 0028     		cmp	r0, #0
 374 000c 4FF00006 		mov	r6, #0
 375 0010 1DDB     		blt	.L70
 376 0012 3746     		mov	r7, r6
 377              	.L72:
 378 0014 A842     		cmp	r0, r5
 379 0016 A0F13002 		sub	r2, r0, #48
 380 001a 09D0     		beq	.L73
 381 001c 2D28     		cmp	r0, #45
 382 001e 18D0     		beq	.L76
 383 0020 06EB8603 		add	r3, r6, r6, lsl #2
 384 0024 092A     		cmp	r2, #9
 385 0026 00EB4300 		add	r0, r0, r3, lsl #1
 386 002a 01D8     		bhi	.L73
 387 002c A0F13006 		sub	r6, r0, #48
 388              	.L73:
 389 0030 2368     		ldr	r3, [r4]
 390 0032 2046     		mov	r0, r4
 391 0034 5B69     		ldr	r3, [r3, #20]
 392 0036 9847     		blx	r3
 393 0038 2046     		mov	r0, r4
 394 003a FFF7FEFF 		bl	_ZN6Stream9timedPeekEv
 395 003e A0F13003 		sub	r3, r0, #48
 396 0042 092B     		cmp	r3, #9
 397 0044 E6D9     		bls	.L72
 398 0046 A842     		cmp	r0, r5
 399 0048 E4D0     		beq	.L72
ARM GAS  /tmp/ccGoJmju.s 			page 8


 400 004a 07B1     		cbz	r7, .L70
 401 004c 7642     		negs	r6, r6
 402              	.L70:
 403 004e 3046     		mov	r0, r6
 404 0050 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 405              	.L76:
 406 0052 0127     		movs	r7, #1
 407 0054 ECE7     		b	.L73
 408              		.size	_ZN6Stream8parseIntEc, .-_ZN6Stream8parseIntEc
 409              		.section	.text._ZN6Stream8parseIntEv,"ax",%progbits
 410              		.align	1
 411              		.p2align 2,,3
 412              		.global	_ZN6Stream8parseIntEv
 413              		.syntax unified
 414              		.thumb
 415              		.thumb_func
 416              		.fpu softvfp
 417              		.type	_ZN6Stream8parseIntEv, %function
 418              	_ZN6Stream8parseIntEv:
 419              		@ args = 0, pretend = 0, frame = 0
 420              		@ frame_needed = 0, uses_anonymous_args = 0
 421              		@ link register save eliminated.
 422 0000 0121     		movs	r1, #1
 423 0002 FFF7FEBF 		b	_ZN6Stream8parseIntEc
 424              		.size	_ZN6Stream8parseIntEv, .-_ZN6Stream8parseIntEv
 425              		.global	__aeabi_fmul
 426              		.global	__aeabi_i2f
 427 0006 00BF     		.section	.text._ZN6Stream10parseFloatEc,"ax",%progbits
 428              		.align	1
 429              		.p2align 2,,3
 430              		.global	_ZN6Stream10parseFloatEc
 431              		.syntax unified
 432              		.thumb
 433              		.thumb_func
 434              		.fpu softvfp
 435              		.type	_ZN6Stream10parseFloatEc, %function
 436              	_ZN6Stream10parseFloatEc:
 437              		@ args = 0, pretend = 0, frame = 0
 438              		@ frame_needed = 0, uses_anonymous_args = 0
 439 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 440 0004 0D46     		mov	r5, r1
 441 0006 0446     		mov	r4, r0
 442 0008 FFF7FEFF 		bl	_ZN6Stream13peekNextDigitEv
 443 000c 0028     		cmp	r0, #0
 444 000e 45DB     		blt	.L105
 445 0010 4FF0000A 		mov	r10, #0
 446 0014 DFF88C90 		ldr	r9, .L107
 447 0018 4FF07E58 		mov	r8, #1065353216
 448 001c 5646     		mov	r6, r10
 449 001e 5746     		mov	r7, r10
 450              	.L87:
 451 0020 A842     		cmp	r0, r5
 452 0022 14D0     		beq	.L85
 453 0024 2D28     		cmp	r0, #45
 454 0026 2AD0     		beq	.L95
 455 0028 2E28     		cmp	r0, #46
 456 002a 2ED0     		beq	.L96
ARM GAS  /tmp/ccGoJmju.s 			page 9


 457 002c A0F13003 		sub	r3, r0, #48
 458 0030 092B     		cmp	r3, #9
 459 0032 0CD8     		bhi	.L85
 460 0034 0AEB8A0A 		add	r10, r10, r10, lsl #2
 461 0038 00EB4A00 		add	r0, r0, r10, lsl #1
 462 003c A0F1300A 		sub	r10, r0, #48
 463 0040 2EB1     		cbz	r6, .L85
 464 0042 4046     		mov	r0, r8
 465 0044 4946     		mov	r1, r9
 466 0046 FFF7FEFF 		bl	__aeabi_fmul
 467 004a 0126     		movs	r6, #1
 468 004c 8046     		mov	r8, r0
 469              	.L85:
 470 004e 2368     		ldr	r3, [r4]
 471 0050 2046     		mov	r0, r4
 472 0052 5B69     		ldr	r3, [r3, #20]
 473 0054 9847     		blx	r3
 474 0056 2046     		mov	r0, r4
 475 0058 FFF7FEFF 		bl	_ZN6Stream9timedPeekEv
 476 005c A0F13003 		sub	r3, r0, #48
 477 0060 092B     		cmp	r3, #9
 478 0062 DDD9     		bls	.L87
 479 0064 2E28     		cmp	r0, #46
 480 0066 0CD0     		beq	.L91
 481 0068 8542     		cmp	r5, r0
 482 006a D9D0     		beq	.L87
 483 006c 0FB1     		cbz	r7, .L92
 484 006e CAF1000A 		rsb	r10, r10, #0
 485              	.L92:
 486 0072 5046     		mov	r0, r10
 487 0074 5EB9     		cbnz	r6, .L106
 488 0076 FFF7FEFF 		bl	__aeabi_i2f
 489 007a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 490              	.L95:
 491 007e 0127     		movs	r7, #1
 492 0080 E5E7     		b	.L85
 493              	.L91:
 494 0082 2E2D     		cmp	r5, #46
 495 0084 18BF     		it	ne
 496 0086 0126     		movne	r6, #1
 497 0088 E1E7     		b	.L85
 498              	.L96:
 499 008a 0126     		movs	r6, #1
 500 008c DFE7     		b	.L85
 501              	.L106:
 502 008e FFF7FEFF 		bl	__aeabi_i2f
 503 0092 4146     		mov	r1, r8
 504 0094 FFF7FEFF 		bl	__aeabi_fmul
 505 0098 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 506              	.L105:
 507 009c 0020     		movs	r0, #0
 508 009e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 509              	.L108:
 510 00a2 00BF     		.align	2
 511              	.L107:
 512 00a4 CDCCCC3D 		.word	1036831949
 513              		.size	_ZN6Stream10parseFloatEc, .-_ZN6Stream10parseFloatEc
ARM GAS  /tmp/ccGoJmju.s 			page 10


 514              		.section	.text._ZN6Stream10parseFloatEv,"ax",%progbits
 515              		.align	1
 516              		.p2align 2,,3
 517              		.global	_ZN6Stream10parseFloatEv
 518              		.syntax unified
 519              		.thumb
 520              		.thumb_func
 521              		.fpu softvfp
 522              		.type	_ZN6Stream10parseFloatEv, %function
 523              	_ZN6Stream10parseFloatEv:
 524              		@ args = 0, pretend = 0, frame = 0
 525              		@ frame_needed = 0, uses_anonymous_args = 0
 526              		@ link register save eliminated.
 527 0000 0121     		movs	r1, #1
 528 0002 FFF7FEBF 		b	_ZN6Stream10parseFloatEc
 529              		.size	_ZN6Stream10parseFloatEv, .-_ZN6Stream10parseFloatEv
 530 0006 00BF     		.section	.text._ZN6Stream14readBytesUntilEcPcj,"ax",%progbits
 531              		.align	1
 532              		.p2align 2,,3
 533              		.global	_ZN6Stream14readBytesUntilEcPcj
 534              		.syntax unified
 535              		.thumb
 536              		.thumb_func
 537              		.fpu softvfp
 538              		.type	_ZN6Stream14readBytesUntilEcPcj, %function
 539              	_ZN6Stream14readBytesUntilEcPcj:
 540              		@ args = 0, pretend = 0, frame = 0
 541              		@ frame_needed = 0, uses_anonymous_args = 0
 542 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 543 0004 1E46     		mov	r6, r3
 544 0006 9BB1     		cbz	r3, .L113
 545 0008 0746     		mov	r7, r0
 546 000a 8846     		mov	r8, r1
 547 000c 1546     		mov	r5, r2
 548 000e 0024     		movs	r4, #0
 549 0010 06E0     		b	.L112
 550              	.L116:
 551 0012 4045     		cmp	r0, r8
 552 0014 09D0     		beq	.L110
 553 0016 0134     		adds	r4, r4, #1
 554 0018 A642     		cmp	r6, r4
 555 001a 05F8010B 		strb	r0, [r5], #1
 556 001e 04D0     		beq	.L110
 557              	.L112:
 558 0020 3846     		mov	r0, r7
 559 0022 FFF7FEFF 		bl	_ZN6Stream9timedReadEv
 560 0026 0028     		cmp	r0, #0
 561 0028 F3DA     		bge	.L116
 562              	.L110:
 563 002a 2046     		mov	r0, r4
 564 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 565              	.L113:
 566 0030 1C46     		mov	r4, r3
 567 0032 2046     		mov	r0, r4
 568 0034 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 569              		.size	_ZN6Stream14readBytesUntilEcPcj, .-_ZN6Stream14readBytesUntilEcPcj
 570              		.global	_ZTV6Stream
ARM GAS  /tmp/ccGoJmju.s 			page 11


 571              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 572              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 573              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 574              	_ZL28cpu_irq_prev_interrupt_state:
 575 0000 00       		.space	1
 576              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 577              		.align	2
 578              		.type	_ZL32cpu_irq_critical_section_counter, %object
 579              		.size	_ZL32cpu_irq_critical_section_counter, 4
 580              	_ZL32cpu_irq_critical_section_counter:
 581 0000 00000000 		.space	4
 582              		.section	.rodata._ZN6Stream4findEPc.str1.4,"aMS",%progbits,1
 583              		.align	2
 584              	.LC0:
 585 0000 00       		.ascii	"\000"
 586              		.section	.rodata._ZTV6Stream,"a",%progbits
 587              		.align	2
 588              		.type	_ZTV6Stream, %object
 589              		.size	_ZTV6Stream, 48
 590              	_ZTV6Stream:
 591 0000 00000000 		.word	0
 592 0004 00000000 		.word	0
 593 0008 00000000 		.word	0
 594 000c 00000000 		.word	0
 595 0010 00000000 		.word	__cxa_pure_virtual
 596 0014 00000000 		.word	_ZN5Print5writeEPKhj
 597 0018 00000000 		.word	__cxa_pure_virtual
 598 001c 00000000 		.word	__cxa_pure_virtual
 599 0020 00000000 		.word	__cxa_pure_virtual
 600 0024 00000000 		.word	__cxa_pure_virtual
 601 0028 00000000 		.word	_ZNK6Stream8canWriteEv
 602 002c 00000000 		.word	_ZN6Stream9readBytesEPcj
 603              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
