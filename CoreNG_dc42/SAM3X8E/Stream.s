ARM GAS  /tmp/ccTVQTqo.s 			page 1


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
ARM GAS  /tmp/ccTVQTqo.s 			page 2


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
 112 0004 0025     		movs	r5, #0
 113 0006 8046     		mov	r8, r0
 114 0008 0E46     		mov	r6, r1
ARM GAS  /tmp/ccTVQTqo.s 			page 3


 115 000a 9246     		mov	r10, r2
 116 000c 9946     		mov	r9, r3
 117 000e 2C46     		mov	r4, r5
 118 0010 089F     		ldr	r7, [sp, #32]
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
ARM GAS  /tmp/ccTVQTqo.s 			page 4


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
 213 0004 07E0     		b	.L44
 214              	.L49:
 215 0006 2D28     		cmp	r0, #45
 216 0008 0CD0     		beq	.L42
 217 000a 092B     		cmp	r3, #9
 218 000c 0AD9     		bls	.L42
 219 000e 2368     		ldr	r3, [r4]
 220 0010 2046     		mov	r0, r4
 221 0012 5B69     		ldr	r3, [r3, #20]
 222 0014 9847     		blx	r3
 223              	.L44:
 224 0016 2046     		mov	r0, r4
 225 0018 FFF7FEFF 		bl	_ZN6Stream9timedPeekEv
 226 001c 0028     		cmp	r0, #0
 227 001e A0F13003 		sub	r3, r0, #48
 228 0022 F0DA     		bge	.L49
ARM GAS  /tmp/ccTVQTqo.s 			page 5


 229              	.L42:
 230 0024 10BD     		pop	{r4, pc}
 231              		.size	_ZN6Stream13peekNextDigitEv, .-_ZN6Stream13peekNextDigitEv
 232 0026 00BF     		.section	.text._ZN6Stream10setTimeoutEm,"ax",%progbits
 233              		.align	1
 234              		.p2align 2,,3
 235              		.global	_ZN6Stream10setTimeoutEm
 236              		.syntax unified
 237              		.thumb
 238              		.thumb_func
 239              		.fpu softvfp
 240              		.type	_ZN6Stream10setTimeoutEm, %function
 241              	_ZN6Stream10setTimeoutEm:
 242              		@ args = 0, pretend = 0, frame = 0
 243              		@ frame_needed = 0, uses_anonymous_args = 0
 244              		@ link register save eliminated.
 245 0000 8160     		str	r1, [r0, #8]
 246 0002 7047     		bx	lr
 247              		.size	_ZN6Stream10setTimeoutEm, .-_ZN6Stream10setTimeoutEm
 248              		.section	.text._ZN6Stream4findEPcj,"ax",%progbits
 249              		.align	1
 250              		.p2align 2,,3
 251              		.global	_ZN6Stream4findEPcj
 252              		.syntax unified
 253              		.thumb
 254              		.thumb_func
 255              		.fpu softvfp
 256              		.type	_ZN6Stream4findEPcj, %function
 257              	_ZN6Stream4findEPcj:
 258              		@ args = 0, pretend = 0, frame = 0
 259              		@ frame_needed = 0, uses_anonymous_args = 0
 260 0000 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 261 0002 0BB9     		cbnz	r3, .L58
 262 0004 0120     		movs	r0, #1
 263 0006 7047     		bx	lr
 264              	.L58:
 265 0008 0023     		movs	r3, #0
 266 000a 00B5     		push	{lr}
 267 000c 83B0     		sub	sp, sp, #12
 268 000e 0093     		str	r3, [sp]
 269 0010 FFF7FEFF 		bl	_ZN6Stream9findUntilEPcjS0_j.part.0
 270 0014 03B0     		add	sp, sp, #12
 271              		@ sp needed
 272 0016 5DF804FB 		ldr	pc, [sp], #4
 273              		.size	_ZN6Stream4findEPcj, .-_ZN6Stream4findEPcj
 274              		.section	.text._ZN6Stream9findUntilEPcS0_,"ax",%progbits
 275              		.align	1
 276              		.p2align 2,,3
 277              		.global	_ZN6Stream9findUntilEPcS0_
 278              		.syntax unified
 279              		.thumb
 280              		.thumb_func
 281              		.fpu softvfp
 282              		.type	_ZN6Stream9findUntilEPcS0_, %function
 283              	_ZN6Stream9findUntilEPcS0_:
 284              		@ args = 0, pretend = 0, frame = 0
 285              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccTVQTqo.s 			page 6


 286 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 287 0002 0646     		mov	r6, r0
 288 0004 83B0     		sub	sp, sp, #12
 289 0006 0846     		mov	r0, r1
 290 0008 0C46     		mov	r4, r1
 291 000a 1546     		mov	r5, r2
 292 000c FFF7FEFF 		bl	strlen
 293 0010 0746     		mov	r7, r0
 294 0012 2846     		mov	r0, r5
 295 0014 FFF7FEFF 		bl	strlen
 296 0018 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 297 001a 13B9     		cbnz	r3, .L63
 298 001c 0120     		movs	r0, #1
 299 001e 03B0     		add	sp, sp, #12
 300              		@ sp needed
 301 0020 F0BD     		pop	{r4, r5, r6, r7, pc}
 302              	.L63:
 303 0022 0090     		str	r0, [sp]
 304 0024 2B46     		mov	r3, r5
 305 0026 3A46     		mov	r2, r7
 306 0028 2146     		mov	r1, r4
 307 002a 3046     		mov	r0, r6
 308 002c FFF7FEFF 		bl	_ZN6Stream9findUntilEPcjS0_j.part.0
 309 0030 03B0     		add	sp, sp, #12
 310              		@ sp needed
 311 0032 F0BD     		pop	{r4, r5, r6, r7, pc}
 312              		.size	_ZN6Stream9findUntilEPcS0_, .-_ZN6Stream9findUntilEPcS0_
 313              		.section	.text._ZN6Stream4findEPc,"ax",%progbits
 314              		.align	1
 315              		.p2align 2,,3
 316              		.global	_ZN6Stream4findEPc
 317              		.syntax unified
 318              		.thumb
 319              		.thumb_func
 320              		.fpu softvfp
 321              		.type	_ZN6Stream4findEPc, %function
 322              	_ZN6Stream4findEPc:
 323              		@ args = 0, pretend = 0, frame = 0
 324              		@ frame_needed = 0, uses_anonymous_args = 0
 325              		@ link register save eliminated.
 326 0000 014A     		ldr	r2, .L65
 327 0002 FFF7FEBF 		b	_ZN6Stream9findUntilEPcS0_
 328              	.L66:
 329 0006 00BF     		.align	2
 330              	.L65:
 331 0008 00000000 		.word	.LC0
 332              		.size	_ZN6Stream4findEPc, .-_ZN6Stream4findEPc
 333              		.section	.text._ZN6Stream9findUntilEPcjS0_j,"ax",%progbits
 334              		.align	1
 335              		.p2align 2,,3
 336              		.global	_ZN6Stream9findUntilEPcjS0_j
 337              		.syntax unified
 338              		.thumb
 339              		.thumb_func
 340              		.fpu softvfp
 341              		.type	_ZN6Stream9findUntilEPcjS0_j, %function
 342              	_ZN6Stream9findUntilEPcjS0_j:
ARM GAS  /tmp/ccTVQTqo.s 			page 7


 343              		@ args = 4, pretend = 0, frame = 0
 344              		@ frame_needed = 0, uses_anonymous_args = 0
 345              		@ link register save eliminated.
 346 0000 30B4     		push	{r4, r5}
 347 0002 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
 348 0004 14B1     		cbz	r4, .L68
 349 0006 30BC     		pop	{r4, r5}
 350 0008 FFF7FEBF 		b	_ZN6Stream9findUntilEPcjS0_j.part.0
 351              	.L68:
 352 000c 0120     		movs	r0, #1
 353 000e 30BC     		pop	{r4, r5}
 354 0010 7047     		bx	lr
 355              		.size	_ZN6Stream9findUntilEPcjS0_j, .-_ZN6Stream9findUntilEPcjS0_j
 356 0012 00BF     		.section	.text._ZN6Stream8parseIntEc,"ax",%progbits
 357              		.align	1
 358              		.p2align 2,,3
 359              		.global	_ZN6Stream8parseIntEc
 360              		.syntax unified
 361              		.thumb
 362              		.thumb_func
 363              		.fpu softvfp
 364              		.type	_ZN6Stream8parseIntEc, %function
 365              	_ZN6Stream8parseIntEc:
 366              		@ args = 0, pretend = 0, frame = 0
 367              		@ frame_needed = 0, uses_anonymous_args = 0
 368 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 369 0002 0D46     		mov	r5, r1
 370 0004 0446     		mov	r4, r0
 371 0006 FFF7FEFF 		bl	_ZN6Stream13peekNextDigitEv
 372 000a 0028     		cmp	r0, #0
 373 000c 4FF00006 		mov	r6, #0
 374 0010 1DDB     		blt	.L70
 375 0012 3746     		mov	r7, r6
 376              	.L72:
 377 0014 A842     		cmp	r0, r5
 378 0016 A0F13002 		sub	r2, r0, #48
 379 001a 09D0     		beq	.L73
 380 001c 2D28     		cmp	r0, #45
 381 001e 18D0     		beq	.L76
 382 0020 06EB8603 		add	r3, r6, r6, lsl #2
 383 0024 092A     		cmp	r2, #9
 384 0026 00EB4300 		add	r0, r0, r3, lsl #1
 385 002a 01D8     		bhi	.L73
 386 002c A0F13006 		sub	r6, r0, #48
 387              	.L73:
 388 0030 2368     		ldr	r3, [r4]
 389 0032 2046     		mov	r0, r4
 390 0034 5B69     		ldr	r3, [r3, #20]
 391 0036 9847     		blx	r3
 392 0038 2046     		mov	r0, r4
 393 003a FFF7FEFF 		bl	_ZN6Stream9timedPeekEv
 394 003e A0F13003 		sub	r3, r0, #48
 395 0042 092B     		cmp	r3, #9
 396 0044 E6D9     		bls	.L72
 397 0046 A842     		cmp	r0, r5
 398 0048 E4D0     		beq	.L72
 399 004a 07B1     		cbz	r7, .L70
ARM GAS  /tmp/ccTVQTqo.s 			page 8


 400 004c 7642     		negs	r6, r6
 401              	.L70:
 402 004e 3046     		mov	r0, r6
 403 0050 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 404              	.L76:
 405 0052 0127     		movs	r7, #1
 406 0054 ECE7     		b	.L73
 407              		.size	_ZN6Stream8parseIntEc, .-_ZN6Stream8parseIntEc
 408              		.section	.text._ZN6Stream8parseIntEv,"ax",%progbits
 409              		.align	1
 410              		.p2align 2,,3
 411              		.global	_ZN6Stream8parseIntEv
 412              		.syntax unified
 413              		.thumb
 414              		.thumb_func
 415              		.fpu softvfp
 416              		.type	_ZN6Stream8parseIntEv, %function
 417              	_ZN6Stream8parseIntEv:
 418              		@ args = 0, pretend = 0, frame = 0
 419              		@ frame_needed = 0, uses_anonymous_args = 0
 420              		@ link register save eliminated.
 421 0000 0121     		movs	r1, #1
 422 0002 FFF7FEBF 		b	_ZN6Stream8parseIntEc
 423              		.size	_ZN6Stream8parseIntEv, .-_ZN6Stream8parseIntEv
 424              		.global	__aeabi_fmul
 425              		.global	__aeabi_i2f
 426 0006 00BF     		.section	.text._ZN6Stream10parseFloatEc,"ax",%progbits
 427              		.align	1
 428              		.p2align 2,,3
 429              		.global	_ZN6Stream10parseFloatEc
 430              		.syntax unified
 431              		.thumb
 432              		.thumb_func
 433              		.fpu softvfp
 434              		.type	_ZN6Stream10parseFloatEc, %function
 435              	_ZN6Stream10parseFloatEc:
 436              		@ args = 0, pretend = 0, frame = 0
 437              		@ frame_needed = 0, uses_anonymous_args = 0
 438 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 439 0004 0D46     		mov	r5, r1
 440 0006 0446     		mov	r4, r0
 441 0008 FFF7FEFF 		bl	_ZN6Stream13peekNextDigitEv
 442 000c 0028     		cmp	r0, #0
 443 000e 45DB     		blt	.L105
 444 0010 4FF0000A 		mov	r10, #0
 445 0014 4FF07E58 		mov	r8, #1065353216
 446 0018 5646     		mov	r6, r10
 447 001a 5746     		mov	r7, r10
 448 001c DFF88490 		ldr	r9, .L107
 449              	.L87:
 450 0020 A842     		cmp	r0, r5
 451 0022 14D0     		beq	.L85
 452 0024 2D28     		cmp	r0, #45
 453 0026 2AD0     		beq	.L95
 454 0028 2E28     		cmp	r0, #46
 455 002a 2ED0     		beq	.L96
 456 002c A0F13003 		sub	r3, r0, #48
ARM GAS  /tmp/ccTVQTqo.s 			page 9


 457 0030 092B     		cmp	r3, #9
 458 0032 0CD8     		bhi	.L85
 459 0034 0AEB8A0A 		add	r10, r10, r10, lsl #2
 460 0038 00EB4A00 		add	r0, r0, r10, lsl #1
 461 003c A0F1300A 		sub	r10, r0, #48
 462 0040 2EB1     		cbz	r6, .L85
 463 0042 4046     		mov	r0, r8
 464 0044 4946     		mov	r1, r9
 465 0046 FFF7FEFF 		bl	__aeabi_fmul
 466 004a 0126     		movs	r6, #1
 467 004c 8046     		mov	r8, r0
 468              	.L85:
 469 004e 2368     		ldr	r3, [r4]
 470 0050 2046     		mov	r0, r4
 471 0052 5B69     		ldr	r3, [r3, #20]
 472 0054 9847     		blx	r3
 473 0056 2046     		mov	r0, r4
 474 0058 FFF7FEFF 		bl	_ZN6Stream9timedPeekEv
 475 005c A0F13003 		sub	r3, r0, #48
 476 0060 092B     		cmp	r3, #9
 477 0062 DDD9     		bls	.L87
 478 0064 2E28     		cmp	r0, #46
 479 0066 0CD0     		beq	.L91
 480 0068 8542     		cmp	r5, r0
 481 006a D9D0     		beq	.L87
 482 006c 0FB1     		cbz	r7, .L92
 483 006e CAF1000A 		rsb	r10, r10, #0
 484              	.L92:
 485 0072 5046     		mov	r0, r10
 486 0074 5EB9     		cbnz	r6, .L106
 487 0076 FFF7FEFF 		bl	__aeabi_i2f
 488 007a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 489              	.L95:
 490 007e 0127     		movs	r7, #1
 491 0080 E5E7     		b	.L85
 492              	.L91:
 493 0082 2E2D     		cmp	r5, #46
 494 0084 18BF     		it	ne
 495 0086 0126     		movne	r6, #1
 496 0088 E1E7     		b	.L85
 497              	.L96:
 498 008a 0126     		movs	r6, #1
 499 008c DFE7     		b	.L85
 500              	.L106:
 501 008e FFF7FEFF 		bl	__aeabi_i2f
 502 0092 4146     		mov	r1, r8
 503 0094 FFF7FEFF 		bl	__aeabi_fmul
 504 0098 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 505              	.L105:
 506 009c 0020     		movs	r0, #0
 507 009e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 508              	.L108:
 509 00a2 00BF     		.align	2
 510              	.L107:
 511 00a4 CDCCCC3D 		.word	1036831949
 512              		.size	_ZN6Stream10parseFloatEc, .-_ZN6Stream10parseFloatEc
 513              		.section	.text._ZN6Stream10parseFloatEv,"ax",%progbits
ARM GAS  /tmp/ccTVQTqo.s 			page 10


 514              		.align	1
 515              		.p2align 2,,3
 516              		.global	_ZN6Stream10parseFloatEv
 517              		.syntax unified
 518              		.thumb
 519              		.thumb_func
 520              		.fpu softvfp
 521              		.type	_ZN6Stream10parseFloatEv, %function
 522              	_ZN6Stream10parseFloatEv:
 523              		@ args = 0, pretend = 0, frame = 0
 524              		@ frame_needed = 0, uses_anonymous_args = 0
 525              		@ link register save eliminated.
 526 0000 0121     		movs	r1, #1
 527 0002 FFF7FEBF 		b	_ZN6Stream10parseFloatEc
 528              		.size	_ZN6Stream10parseFloatEv, .-_ZN6Stream10parseFloatEv
 529 0006 00BF     		.section	.text._ZN6Stream14readBytesUntilEcPcj,"ax",%progbits
 530              		.align	1
 531              		.p2align 2,,3
 532              		.global	_ZN6Stream14readBytesUntilEcPcj
 533              		.syntax unified
 534              		.thumb
 535              		.thumb_func
 536              		.fpu softvfp
 537              		.type	_ZN6Stream14readBytesUntilEcPcj, %function
 538              	_ZN6Stream14readBytesUntilEcPcj:
 539              		@ args = 0, pretend = 0, frame = 0
 540              		@ frame_needed = 0, uses_anonymous_args = 0
 541 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 542 0004 1E46     		mov	r6, r3
 543 0006 9BB1     		cbz	r3, .L113
 544 0008 0746     		mov	r7, r0
 545 000a 8846     		mov	r8, r1
 546 000c 1546     		mov	r5, r2
 547 000e 0024     		movs	r4, #0
 548 0010 06E0     		b	.L112
 549              	.L116:
 550 0012 4045     		cmp	r0, r8
 551 0014 09D0     		beq	.L110
 552 0016 0134     		adds	r4, r4, #1
 553 0018 A642     		cmp	r6, r4
 554 001a 05F8010B 		strb	r0, [r5], #1
 555 001e 04D0     		beq	.L110
 556              	.L112:
 557 0020 3846     		mov	r0, r7
 558 0022 FFF7FEFF 		bl	_ZN6Stream9timedReadEv
 559 0026 0028     		cmp	r0, #0
 560 0028 F3DA     		bge	.L116
 561              	.L110:
 562 002a 2046     		mov	r0, r4
 563 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 564              	.L113:
 565 0030 1C46     		mov	r4, r3
 566 0032 2046     		mov	r0, r4
 567 0034 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 568              		.size	_ZN6Stream14readBytesUntilEcPcj, .-_ZN6Stream14readBytesUntilEcPcj
 569              		.global	_ZTV6Stream
 570              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
ARM GAS  /tmp/ccTVQTqo.s 			page 11


 571              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 572              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 573              	_ZL28cpu_irq_prev_interrupt_state:
 574 0000 00       		.space	1
 575              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 576              		.align	2
 577              		.type	_ZL32cpu_irq_critical_section_counter, %object
 578              		.size	_ZL32cpu_irq_critical_section_counter, 4
 579              	_ZL32cpu_irq_critical_section_counter:
 580 0000 00000000 		.space	4
 581              		.section	.rodata._ZN6Stream4findEPc.str1.4,"aMS",%progbits,1
 582              		.align	2
 583              	.LC0:
 584 0000 00       		.ascii	"\000"
 585              		.section	.rodata._ZTV6Stream,"a",%progbits
 586              		.align	2
 587              		.type	_ZTV6Stream, %object
 588              		.size	_ZTV6Stream, 48
 589              	_ZTV6Stream:
 590 0000 00000000 		.word	0
 591 0004 00000000 		.word	0
 592 0008 00000000 		.word	0
 593 000c 00000000 		.word	0
 594 0010 00000000 		.word	__cxa_pure_virtual
 595 0014 00000000 		.word	_ZN5Print5writeEPKhj
 596 0018 00000000 		.word	__cxa_pure_virtual
 597 001c 00000000 		.word	__cxa_pure_virtual
 598 0020 00000000 		.word	__cxa_pure_virtual
 599 0024 00000000 		.word	__cxa_pure_virtual
 600 0028 00000000 		.word	_ZNK6Stream8canWriteEv
 601 002c 00000000 		.word	_ZN6Stream9readBytesEPcj
 602              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
