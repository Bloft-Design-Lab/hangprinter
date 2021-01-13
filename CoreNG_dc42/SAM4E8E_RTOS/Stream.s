ARM GAS  /tmp/ccBm0Fu9.s 			page 1


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
  13              		.file	"Stream.cpp"
  14              		.section	.text._ZNK6Stream8canWriteEv,"axG",%progbits,_ZNK6Stream8canWriteEv,comdat
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZNK6Stream8canWriteEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK6Stream8canWriteEv, %function
  23              	_ZNK6Stream8canWriteEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0120     		movs	r0, #1
  28 0002 7047     		bx	lr
  29              		.size	_ZNK6Stream8canWriteEv, .-_ZNK6Stream8canWriteEv
  30              		.section	.text._ZN6Stream9timedReadEv,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.global	_ZN6Stream9timedReadEv
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_ZN6Stream9timedReadEv, %function
  39              	_ZN6Stream9timedReadEv:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42 0000 10B5     		push	{r4, lr}
  43 0002 0446     		mov	r4, r0
  44 0004 FFF7FEFF 		bl	millis
  45 0008 E060     		str	r0, [r4, #12]
  46 000a 06E0     		b	.L4
  47              	.L9:
  48 000c FFF7FEFF 		bl	millis
  49 0010 E368     		ldr	r3, [r4, #12]
  50 0012 A268     		ldr	r2, [r4, #8]
  51 0014 C01A     		subs	r0, r0, r3
  52 0016 9042     		cmp	r0, r2
  53 0018 06D2     		bcs	.L8
  54              	.L4:
  55 001a 2368     		ldr	r3, [r4]
  56 001c 2046     		mov	r0, r4
  57 001e 5B69     		ldr	r3, [r3, #20]
ARM GAS  /tmp/ccBm0Fu9.s 			page 2


  58 0020 9847     		blx	r3
  59 0022 0028     		cmp	r0, #0
  60 0024 F2DB     		blt	.L9
  61 0026 10BD     		pop	{r4, pc}
  62              	.L8:
  63 0028 4FF0FF30 		mov	r0, #-1
  64 002c 10BD     		pop	{r4, pc}
  65              		.size	_ZN6Stream9timedReadEv, .-_ZN6Stream9timedReadEv
  66 002e 00BF     		.section	.text._ZN6Stream9readBytesEPcj,"ax",%progbits
  67              		.align	1
  68              		.p2align 2,,3
  69              		.global	_ZN6Stream9readBytesEPcj
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu fpv4-sp-d16
  74              		.type	_ZN6Stream9readBytesEPcj, %function
  75              	_ZN6Stream9readBytesEPcj:
  76              		@ args = 0, pretend = 0, frame = 0
  77              		@ frame_needed = 0, uses_anonymous_args = 0
  78 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  79 0002 1646     		mov	r6, r2
  80 0004 7AB1     		cbz	r2, .L13
  81 0006 0746     		mov	r7, r0
  82 0008 0D46     		mov	r5, r1
  83 000a 0024     		movs	r4, #0
  84 000c 04E0     		b	.L12
  85              	.L16:
  86 000e 0134     		adds	r4, r4, #1
  87 0010 A642     		cmp	r6, r4
  88 0012 05F8010B 		strb	r0, [r5], #1
  89 0016 04D0     		beq	.L10
  90              	.L12:
  91 0018 3846     		mov	r0, r7
  92 001a FFF7FEFF 		bl	_ZN6Stream9timedReadEv
  93 001e 0028     		cmp	r0, #0
  94 0020 F5DA     		bge	.L16
  95              	.L10:
  96 0022 2046     		mov	r0, r4
  97 0024 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  98              	.L13:
  99 0026 1446     		mov	r4, r2
 100 0028 FBE7     		b	.L10
 101              		.size	_ZN6Stream9readBytesEPcj, .-_ZN6Stream9readBytesEPcj
 102 002a 00BF     		.section	.text._ZN6Stream9findUntilEPcjS0_j.part.0,"ax",%progbits
 103              		.align	1
 104              		.p2align 2,,3
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu fpv4-sp-d16
 109              		.type	_ZN6Stream9findUntilEPcjS0_j.part.0, %function
 110              	_ZN6Stream9findUntilEPcjS0_j.part.0:
 111              		@ args = 4, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 114 0004 089F     		ldr	r7, [sp, #32]
ARM GAS  /tmp/ccBm0Fu9.s 			page 3


 115 0006 0025     		movs	r5, #0
 116 0008 8046     		mov	r8, r0
 117 000a 0E46     		mov	r6, r1
 118 000c 9246     		mov	r10, r2
 119 000e 9946     		mov	r9, r3
 120 0010 2C46     		mov	r4, r5
 121              	.L18:
 122 0012 4046     		mov	r0, r8
 123 0014 FFF7FEFF 		bl	_ZN6Stream9timedReadEv
 124 0018 0028     		cmp	r0, #0
 125 001a 13DD     		ble	.L24
 126              	.L34:
 127 001c 335D     		ldrb	r3, [r6, r4]	@ zero_extendqisi2
 128 001e 9842     		cmp	r0, r3
 129 0020 13D0     		beq	.L31
 130 0022 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 131 0024 9842     		cmp	r0, r3
 132 0026 18BF     		it	ne
 133 0028 0024     		movne	r4, #0
 134 002a 18D0     		beq	.L32
 135              	.L22:
 136 002c 1FB1     		cbz	r7, .L28
 137 002e 19F80530 		ldrb	r3, [r9, r5]	@ zero_extendqisi2
 138 0032 9842     		cmp	r0, r3
 139 0034 0FD0     		beq	.L33
 140              	.L28:
 141 0036 4046     		mov	r0, r8
 142 0038 FFF7FEFF 		bl	_ZN6Stream9timedReadEv
 143 003c 0028     		cmp	r0, #0
 144 003e 4FF00005 		mov	r5, #0
 145 0042 EBDC     		bgt	.L34
 146              	.L24:
 147 0044 0020     		movs	r0, #0
 148 0046 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 149              	.L31:
 150 004a 0134     		adds	r4, r4, #1
 151              	.L21:
 152 004c A245     		cmp	r10, r4
 153 004e EDD8     		bhi	.L22
 154 0050 0120     		movs	r0, #1
 155 0052 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 156              	.L33:
 157 0056 0135     		adds	r5, r5, #1
 158 0058 AF42     		cmp	r7, r5
 159 005a DAD8     		bhi	.L18
 160 005c F2E7     		b	.L24
 161              	.L32:
 162 005e 0124     		movs	r4, #1
 163 0060 F4E7     		b	.L21
 164              		.size	_ZN6Stream9findUntilEPcjS0_j.part.0, .-_ZN6Stream9findUntilEPcjS0_j.part.0
 165 0062 00BF     		.section	.text._ZN6Stream9timedPeekEv,"ax",%progbits
 166              		.align	1
 167              		.p2align 2,,3
 168              		.global	_ZN6Stream9timedPeekEv
 169              		.syntax unified
 170              		.thumb
 171              		.thumb_func
ARM GAS  /tmp/ccBm0Fu9.s 			page 4


 172              		.fpu fpv4-sp-d16
 173              		.type	_ZN6Stream9timedPeekEv, %function
 174              	_ZN6Stream9timedPeekEv:
 175              		@ args = 0, pretend = 0, frame = 0
 176              		@ frame_needed = 0, uses_anonymous_args = 0
 177 0000 10B5     		push	{r4, lr}
 178 0002 0446     		mov	r4, r0
 179 0004 FFF7FEFF 		bl	millis
 180 0008 E060     		str	r0, [r4, #12]
 181 000a 06E0     		b	.L37
 182              	.L41:
 183 000c FFF7FEFF 		bl	millis
 184 0010 E368     		ldr	r3, [r4, #12]
 185 0012 A268     		ldr	r2, [r4, #8]
 186 0014 C01A     		subs	r0, r0, r3
 187 0016 9042     		cmp	r0, r2
 188 0018 06D2     		bcs	.L40
 189              	.L37:
 190 001a 2368     		ldr	r3, [r4]
 191 001c 2046     		mov	r0, r4
 192 001e 9B69     		ldr	r3, [r3, #24]
 193 0020 9847     		blx	r3
 194 0022 0028     		cmp	r0, #0
 195 0024 F2DB     		blt	.L41
 196 0026 10BD     		pop	{r4, pc}
 197              	.L40:
 198 0028 4FF0FF30 		mov	r0, #-1
 199 002c 10BD     		pop	{r4, pc}
 200              		.size	_ZN6Stream9timedPeekEv, .-_ZN6Stream9timedPeekEv
 201 002e 00BF     		.section	.text._ZN6Stream13peekNextDigitEv,"ax",%progbits
 202              		.align	1
 203              		.p2align 2,,3
 204              		.global	_ZN6Stream13peekNextDigitEv
 205              		.syntax unified
 206              		.thumb
 207              		.thumb_func
 208              		.fpu fpv4-sp-d16
 209              		.type	_ZN6Stream13peekNextDigitEv, %function
 210              	_ZN6Stream13peekNextDigitEv:
 211              		@ args = 0, pretend = 0, frame = 0
 212              		@ frame_needed = 0, uses_anonymous_args = 0
 213 0000 10B5     		push	{r4, lr}
 214 0002 0446     		mov	r4, r0
 215 0004 06E0     		b	.L44
 216              	.L49:
 217 0006 2D2B     		cmp	r3, #45
 218 0008 0CD0     		beq	.L42
 219 000a 092A     		cmp	r2, #9
 220 000c 0AD9     		bls	.L42
 221 000e 2368     		ldr	r3, [r4]
 222 0010 5B69     		ldr	r3, [r3, #20]
 223 0012 9847     		blx	r3
 224              	.L44:
 225 0014 2046     		mov	r0, r4
 226 0016 FFF7FEFF 		bl	_ZN6Stream9timedPeekEv
 227 001a 031E     		subs	r3, r0, #0
 228 001c A3F13002 		sub	r2, r3, #48
ARM GAS  /tmp/ccBm0Fu9.s 			page 5


 229 0020 2046     		mov	r0, r4
 230 0022 F0DA     		bge	.L49
 231              	.L42:
 232 0024 1846     		mov	r0, r3
 233 0026 10BD     		pop	{r4, pc}
 234              		.size	_ZN6Stream13peekNextDigitEv, .-_ZN6Stream13peekNextDigitEv
 235              		.section	.text._ZN6Stream10setTimeoutEm,"ax",%progbits
 236              		.align	1
 237              		.p2align 2,,3
 238              		.global	_ZN6Stream10setTimeoutEm
 239              		.syntax unified
 240              		.thumb
 241              		.thumb_func
 242              		.fpu fpv4-sp-d16
 243              		.type	_ZN6Stream10setTimeoutEm, %function
 244              	_ZN6Stream10setTimeoutEm:
 245              		@ args = 0, pretend = 0, frame = 0
 246              		@ frame_needed = 0, uses_anonymous_args = 0
 247              		@ link register save eliminated.
 248 0000 8160     		str	r1, [r0, #8]
 249 0002 7047     		bx	lr
 250              		.size	_ZN6Stream10setTimeoutEm, .-_ZN6Stream10setTimeoutEm
 251              		.section	.text._ZN6Stream4findEPcj,"ax",%progbits
 252              		.align	1
 253              		.p2align 2,,3
 254              		.global	_ZN6Stream4findEPcj
 255              		.syntax unified
 256              		.thumb
 257              		.thumb_func
 258              		.fpu fpv4-sp-d16
 259              		.type	_ZN6Stream4findEPcj, %function
 260              	_ZN6Stream4findEPcj:
 261              		@ args = 0, pretend = 0, frame = 0
 262              		@ frame_needed = 0, uses_anonymous_args = 0
 263 0000 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 264 0002 0BB9     		cbnz	r3, .L58
 265 0004 0120     		movs	r0, #1
 266 0006 7047     		bx	lr
 267              	.L58:
 268 0008 00B5     		push	{lr}
 269 000a 83B0     		sub	sp, sp, #12
 270 000c 0023     		movs	r3, #0
 271 000e 0093     		str	r3, [sp]
 272 0010 FFF7FEFF 		bl	_ZN6Stream9findUntilEPcjS0_j.part.0
 273 0014 03B0     		add	sp, sp, #12
 274              		@ sp needed
 275 0016 5DF804FB 		ldr	pc, [sp], #4
 276              		.size	_ZN6Stream4findEPcj, .-_ZN6Stream4findEPcj
 277              		.section	.text._ZN6Stream9findUntilEPcS0_,"ax",%progbits
 278              		.align	1
 279              		.p2align 2,,3
 280              		.global	_ZN6Stream9findUntilEPcS0_
 281              		.syntax unified
 282              		.thumb
 283              		.thumb_func
 284              		.fpu fpv4-sp-d16
 285              		.type	_ZN6Stream9findUntilEPcS0_, %function
ARM GAS  /tmp/ccBm0Fu9.s 			page 6


 286              	_ZN6Stream9findUntilEPcS0_:
 287              		@ args = 0, pretend = 0, frame = 0
 288              		@ frame_needed = 0, uses_anonymous_args = 0
 289 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 290 0002 0646     		mov	r6, r0
 291 0004 83B0     		sub	sp, sp, #12
 292 0006 0846     		mov	r0, r1
 293 0008 0C46     		mov	r4, r1
 294 000a 1546     		mov	r5, r2
 295 000c FFF7FEFF 		bl	strlen
 296 0010 0746     		mov	r7, r0
 297 0012 2846     		mov	r0, r5
 298 0014 FFF7FEFF 		bl	strlen
 299 0018 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 300 001a 13B9     		cbnz	r3, .L63
 301 001c 0120     		movs	r0, #1
 302 001e 03B0     		add	sp, sp, #12
 303              		@ sp needed
 304 0020 F0BD     		pop	{r4, r5, r6, r7, pc}
 305              	.L63:
 306 0022 0090     		str	r0, [sp]
 307 0024 2B46     		mov	r3, r5
 308 0026 3A46     		mov	r2, r7
 309 0028 2146     		mov	r1, r4
 310 002a 3046     		mov	r0, r6
 311 002c FFF7FEFF 		bl	_ZN6Stream9findUntilEPcjS0_j.part.0
 312 0030 03B0     		add	sp, sp, #12
 313              		@ sp needed
 314 0032 F0BD     		pop	{r4, r5, r6, r7, pc}
 315              		.size	_ZN6Stream9findUntilEPcS0_, .-_ZN6Stream9findUntilEPcS0_
 316              		.section	.text._ZN6Stream4findEPc,"ax",%progbits
 317              		.align	1
 318              		.p2align 2,,3
 319              		.global	_ZN6Stream4findEPc
 320              		.syntax unified
 321              		.thumb
 322              		.thumb_func
 323              		.fpu fpv4-sp-d16
 324              		.type	_ZN6Stream4findEPc, %function
 325              	_ZN6Stream4findEPc:
 326              		@ args = 0, pretend = 0, frame = 0
 327              		@ frame_needed = 0, uses_anonymous_args = 0
 328              		@ link register save eliminated.
 329 0000 014A     		ldr	r2, .L65
 330 0002 FFF7FEBF 		b	_ZN6Stream9findUntilEPcS0_
 331              	.L66:
 332 0006 00BF     		.align	2
 333              	.L65:
 334 0008 00000000 		.word	.LC0
 335              		.size	_ZN6Stream4findEPc, .-_ZN6Stream4findEPc
 336              		.section	.text._ZN6Stream9findUntilEPcjS0_j,"ax",%progbits
 337              		.align	1
 338              		.p2align 2,,3
 339              		.global	_ZN6Stream9findUntilEPcjS0_j
 340              		.syntax unified
 341              		.thumb
 342              		.thumb_func
ARM GAS  /tmp/ccBm0Fu9.s 			page 7


 343              		.fpu fpv4-sp-d16
 344              		.type	_ZN6Stream9findUntilEPcjS0_j, %function
 345              	_ZN6Stream9findUntilEPcjS0_j:
 346              		@ args = 4, pretend = 0, frame = 0
 347              		@ frame_needed = 0, uses_anonymous_args = 0
 348              		@ link register save eliminated.
 349 0000 30B4     		push	{r4, r5}
 350 0002 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
 351 0004 14B1     		cbz	r4, .L68
 352 0006 30BC     		pop	{r4, r5}
 353 0008 FFF7FEBF 		b	_ZN6Stream9findUntilEPcjS0_j.part.0
 354              	.L68:
 355 000c 0120     		movs	r0, #1
 356 000e 30BC     		pop	{r4, r5}
 357 0010 7047     		bx	lr
 358              		.size	_ZN6Stream9findUntilEPcjS0_j, .-_ZN6Stream9findUntilEPcjS0_j
 359 0012 00BF     		.section	.text._ZN6Stream8parseIntEc,"ax",%progbits
 360              		.align	1
 361              		.p2align 2,,3
 362              		.global	_ZN6Stream8parseIntEc
 363              		.syntax unified
 364              		.thumb
 365              		.thumb_func
 366              		.fpu fpv4-sp-d16
 367              		.type	_ZN6Stream8parseIntEc, %function
 368              	_ZN6Stream8parseIntEc:
 369              		@ args = 0, pretend = 0, frame = 0
 370              		@ frame_needed = 0, uses_anonymous_args = 0
 371 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 372 0002 0D46     		mov	r5, r1
 373 0004 0446     		mov	r4, r0
 374 0006 FFF7FEFF 		bl	_ZN6Stream13peekNextDigitEv
 375 000a 0028     		cmp	r0, #0
 376 000c 4FF00006 		mov	r6, #0
 377 0010 1DDB     		blt	.L70
 378 0012 3746     		mov	r7, r6
 379              	.L72:
 380 0014 A842     		cmp	r0, r5
 381 0016 A0F13002 		sub	r2, r0, #48
 382 001a 09D0     		beq	.L73
 383 001c 2D28     		cmp	r0, #45
 384 001e 18D0     		beq	.L76
 385 0020 06EB8603 		add	r3, r6, r6, lsl #2
 386 0024 092A     		cmp	r2, #9
 387 0026 00EB4300 		add	r0, r0, r3, lsl #1
 388 002a 01D8     		bhi	.L73
 389 002c A0F13006 		sub	r6, r0, #48
 390              	.L73:
 391 0030 2368     		ldr	r3, [r4]
 392 0032 2046     		mov	r0, r4
 393 0034 5B69     		ldr	r3, [r3, #20]
 394 0036 9847     		blx	r3
 395 0038 2046     		mov	r0, r4
 396 003a FFF7FEFF 		bl	_ZN6Stream9timedPeekEv
 397 003e A0F13003 		sub	r3, r0, #48
 398 0042 092B     		cmp	r3, #9
 399 0044 E6D9     		bls	.L72
ARM GAS  /tmp/ccBm0Fu9.s 			page 8


 400 0046 A842     		cmp	r0, r5
 401 0048 E4D0     		beq	.L72
 402 004a 07B1     		cbz	r7, .L70
 403 004c 7642     		negs	r6, r6
 404              	.L70:
 405 004e 3046     		mov	r0, r6
 406 0050 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 407              	.L76:
 408 0052 0127     		movs	r7, #1
 409 0054 ECE7     		b	.L73
 410              		.size	_ZN6Stream8parseIntEc, .-_ZN6Stream8parseIntEc
 411              		.section	.text._ZN6Stream8parseIntEv,"ax",%progbits
 412              		.align	1
 413              		.p2align 2,,3
 414              		.global	_ZN6Stream8parseIntEv
 415              		.syntax unified
 416              		.thumb
 417              		.thumb_func
 418              		.fpu fpv4-sp-d16
 419              		.type	_ZN6Stream8parseIntEv, %function
 420              	_ZN6Stream8parseIntEv:
 421              		@ args = 0, pretend = 0, frame = 0
 422              		@ frame_needed = 0, uses_anonymous_args = 0
 423              		@ link register save eliminated.
 424 0000 0121     		movs	r1, #1
 425 0002 FFF7FEBF 		b	_ZN6Stream8parseIntEc
 426              		.size	_ZN6Stream8parseIntEv, .-_ZN6Stream8parseIntEv
 427 0006 00BF     		.section	.text._ZN6Stream10parseFloatEc,"ax",%progbits
 428              		.align	1
 429              		.p2align 2,,3
 430              		.global	_ZN6Stream10parseFloatEc
 431              		.syntax unified
 432              		.thumb
 433              		.thumb_func
 434              		.fpu fpv4-sp-d16
 435              		.type	_ZN6Stream10parseFloatEc, %function
 436              	_ZN6Stream10parseFloatEc:
 437              		@ args = 0, pretend = 0, frame = 0
 438              		@ frame_needed = 0, uses_anonymous_args = 0
 439 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 440 0004 2DED028B 		vpush.64	{d8}
 441 0008 0D46     		mov	r5, r1
 442 000a 0446     		mov	r4, r0
 443 000c FFF7FEFF 		bl	_ZN6Stream13peekNextDigitEv
 444 0010 0028     		cmp	r0, #0
 445 0012 44DB     		blt	.L105
 446 0014 4FF00008 		mov	r8, #0
 447 0018 DFED248A 		vldr.32	s17, .L107
 448 001c 4646     		mov	r6, r8
 449 001e 4746     		mov	r7, r8
 450 0020 B7EE008A 		vmov.f32	s16, #1.0e+0
 451              	.L87:
 452 0024 A842     		cmp	r0, r5
 453 0026 11D0     		beq	.L85
 454 0028 2D28     		cmp	r0, #45
 455 002a 2AD0     		beq	.L95
 456 002c 2E28     		cmp	r0, #46
ARM GAS  /tmp/ccBm0Fu9.s 			page 9


 457 002e 2ED0     		beq	.L96
 458 0030 A0F13003 		sub	r3, r0, #48
 459 0034 092B     		cmp	r3, #9
 460 0036 09D8     		bhi	.L85
 461 0038 08EB8808 		add	r8, r8, r8, lsl #2
 462 003c 00EB4800 		add	r0, r0, r8, lsl #1
 463 0040 A0F13008 		sub	r8, r0, #48
 464 0044 16B1     		cbz	r6, .L85
 465 0046 28EE288A 		vmul.f32	s16, s16, s17
 466 004a 0126     		movs	r6, #1
 467              	.L85:
 468 004c 2368     		ldr	r3, [r4]
 469 004e 2046     		mov	r0, r4
 470 0050 5B69     		ldr	r3, [r3, #20]
 471 0052 9847     		blx	r3
 472 0054 2046     		mov	r0, r4
 473 0056 FFF7FEFF 		bl	_ZN6Stream9timedPeekEv
 474 005a A0F13003 		sub	r3, r0, #48
 475 005e 092B     		cmp	r3, #9
 476 0060 E0D9     		bls	.L87
 477 0062 2E28     		cmp	r0, #46
 478 0064 0FD0     		beq	.L91
 479 0066 8542     		cmp	r5, r0
 480 0068 DCD0     		beq	.L87
 481 006a 0FB1     		cbz	r7, .L92
 482 006c C8F10008 		rsb	r8, r8, #0
 483              	.L92:
 484 0070 07EE908A 		vmov	s15, r8	@ int
 485 0074 B8EEE70A 		vcvt.f32.s32	s0, s15
 486 0078 5EB9     		cbnz	r6, .L106
 487 007a BDEC028B 		vldm	sp!, {d8}
 488 007e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 489              	.L95:
 490 0082 0127     		movs	r7, #1
 491 0084 E2E7     		b	.L85
 492              	.L91:
 493 0086 2E2D     		cmp	r5, #46
 494 0088 18BF     		it	ne
 495 008a 0126     		movne	r6, #1
 496 008c DEE7     		b	.L85
 497              	.L96:
 498 008e 0126     		movs	r6, #1
 499 0090 DCE7     		b	.L85
 500              	.L106:
 501 0092 20EE080A 		vmul.f32	s0, s0, s16
 502 0096 BDEC028B 		vldm	sp!, {d8}
 503 009a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 504              	.L105:
 505 009e BDEC028B 		vldm	sp!, {d8}
 506 00a2 9FED030A 		vldr.32	s0, .L107+4
 507 00a6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 508              	.L108:
 509 00aa 00BF     		.align	2
 510              	.L107:
 511 00ac CDCCCC3D 		.word	1036831949
 512 00b0 00000000 		.word	0
 513              		.size	_ZN6Stream10parseFloatEc, .-_ZN6Stream10parseFloatEc
ARM GAS  /tmp/ccBm0Fu9.s 			page 10


 514              		.section	.text._ZN6Stream10parseFloatEv,"ax",%progbits
 515              		.align	1
 516              		.p2align 2,,3
 517              		.global	_ZN6Stream10parseFloatEv
 518              		.syntax unified
 519              		.thumb
 520              		.thumb_func
 521              		.fpu fpv4-sp-d16
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
 537              		.fpu fpv4-sp-d16
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
ARM GAS  /tmp/ccBm0Fu9.s 			page 11


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
