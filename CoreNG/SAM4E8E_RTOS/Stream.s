ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoD7pgT.s 			page 1


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
  14              		.text
  15              		.section	.text._ZNK6Stream8canWriteEv,"axG",%progbits,_ZNK6Stream8canWriteEv,comdat
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZNK6Stream8canWriteEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZNK6Stream8canWriteEv, %function
  24              	_ZNK6Stream8canWriteEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0120     		movs	r0, #1
  29 0002 7047     		bx	lr
  30              		.size	_ZNK6Stream8canWriteEv, .-_ZNK6Stream8canWriteEv
  31              		.section	.text._ZN6Stream9timedReadEv,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.global	_ZN6Stream9timedReadEv
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	_ZN6Stream9timedReadEv, %function
  40              	_ZN6Stream9timedReadEv:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43 0000 10B5     		push	{r4, lr}
  44 0002 0446     		mov	r4, r0
  45 0004 FFF7FEFF 		bl	millis
  46 0008 E060     		str	r0, [r4, #12]
  47 000a 06E0     		b	.L5
  48              	.L9:
  49 000c FFF7FEFF 		bl	millis
  50 0010 D4E90223 		ldrd	r2, r3, [r4, #8]
  51 0014 C01A     		subs	r0, r0, r3
  52 0016 9042     		cmp	r0, r2
  53 0018 06D2     		bcs	.L8
  54              	.L5:
  55 001a 2368     		ldr	r3, [r4]
  56 001c 2046     		mov	r0, r4
  57 001e 5B69     		ldr	r3, [r3, #20]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoD7pgT.s 			page 2


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoD7pgT.s 			page 3


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
 125 001a 13DD     		ble	.L23
 126              	.L30:
 127 001c 335D     		ldrb	r3, [r6, r4]	@ zero_extendqisi2
 128 001e 9842     		cmp	r0, r3
 129 0020 13D0     		beq	.L20
 130 0022 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 131 0024 9842     		cmp	r0, r3
 132 0026 4FF00004 		mov	r4, #0
 133 002a 0ED0     		beq	.L20
 134              	.L21:
 135 002c 1FB1     		cbz	r7, .L27
 136 002e 19F80530 		ldrb	r3, [r9, r5]	@ zero_extendqisi2
 137 0032 9842     		cmp	r0, r3
 138 0034 0FD0     		beq	.L29
 139              	.L27:
 140 0036 4046     		mov	r0, r8
 141 0038 FFF7FEFF 		bl	_ZN6Stream9timedReadEv
 142 003c 0028     		cmp	r0, #0
 143 003e 4FF00005 		mov	r5, #0
 144 0042 EBDC     		bgt	.L30
 145              	.L23:
 146 0044 0020     		movs	r0, #0
 147 0046 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 148              	.L20:
 149 004a 0134     		adds	r4, r4, #1
 150 004c 5445     		cmp	r4, r10
 151 004e EDD3     		bcc	.L21
 152 0050 0120     		movs	r0, #1
 153 0052 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 154              	.L29:
 155 0056 0135     		adds	r5, r5, #1
 156 0058 AF42     		cmp	r7, r5
 157 005a DAD8     		bhi	.L18
 158 005c F2E7     		b	.L23
 159              		.size	_ZN6Stream9findUntilEPcjS0_j.part.0, .-_ZN6Stream9findUntilEPcjS0_j.part.0
 160 005e 00BF     		.section	.text._ZN6Stream9timedPeekEv,"ax",%progbits
 161              		.align	1
 162              		.p2align 2,,3
 163              		.global	_ZN6Stream9timedPeekEv
 164              		.syntax unified
 165              		.thumb
 166              		.thumb_func
 167              		.fpu fpv4-sp-d16
 168              		.type	_ZN6Stream9timedPeekEv, %function
 169              	_ZN6Stream9timedPeekEv:
 170              		@ args = 0, pretend = 0, frame = 0
 171              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoD7pgT.s 			page 4


 172 0000 10B5     		push	{r4, lr}
 173 0002 0446     		mov	r4, r0
 174 0004 FFF7FEFF 		bl	millis
 175 0008 E060     		str	r0, [r4, #12]
 176 000a 06E0     		b	.L33
 177              	.L37:
 178 000c FFF7FEFF 		bl	millis
 179 0010 D4E90223 		ldrd	r2, r3, [r4, #8]
 180 0014 C01A     		subs	r0, r0, r3
 181 0016 9042     		cmp	r0, r2
 182 0018 06D2     		bcs	.L36
 183              	.L33:
 184 001a 2368     		ldr	r3, [r4]
 185 001c 2046     		mov	r0, r4
 186 001e 9B69     		ldr	r3, [r3, #24]
 187 0020 9847     		blx	r3
 188 0022 0028     		cmp	r0, #0
 189 0024 F2DB     		blt	.L37
 190 0026 10BD     		pop	{r4, pc}
 191              	.L36:
 192 0028 4FF0FF30 		mov	r0, #-1
 193 002c 10BD     		pop	{r4, pc}
 194              		.size	_ZN6Stream9timedPeekEv, .-_ZN6Stream9timedPeekEv
 195 002e 00BF     		.section	.text._ZN6Stream13peekNextDigitEv,"ax",%progbits
 196              		.align	1
 197              		.p2align 2,,3
 198              		.global	_ZN6Stream13peekNextDigitEv
 199              		.syntax unified
 200              		.thumb
 201              		.thumb_func
 202              		.fpu fpv4-sp-d16
 203              		.type	_ZN6Stream13peekNextDigitEv, %function
 204              	_ZN6Stream13peekNextDigitEv:
 205              		@ args = 0, pretend = 0, frame = 0
 206              		@ frame_needed = 0, uses_anonymous_args = 0
 207 0000 10B5     		push	{r4, lr}
 208 0002 0446     		mov	r4, r0
 209 0004 06E0     		b	.L40
 210              	.L45:
 211 0006 2D2B     		cmp	r3, #45
 212 0008 0CD0     		beq	.L38
 213 000a 092A     		cmp	r2, #9
 214 000c 0AD9     		bls	.L38
 215 000e 2368     		ldr	r3, [r4]
 216 0010 5B69     		ldr	r3, [r3, #20]
 217 0012 9847     		blx	r3
 218              	.L40:
 219 0014 2046     		mov	r0, r4
 220 0016 FFF7FEFF 		bl	_ZN6Stream9timedPeekEv
 221 001a 031E     		subs	r3, r0, #0
 222 001c A3F13002 		sub	r2, r3, #48
 223 0020 2046     		mov	r0, r4
 224 0022 F0DA     		bge	.L45
 225              	.L38:
 226 0024 1846     		mov	r0, r3
 227 0026 10BD     		pop	{r4, pc}
 228              		.size	_ZN6Stream13peekNextDigitEv, .-_ZN6Stream13peekNextDigitEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoD7pgT.s 			page 5


 229              		.section	.text._ZN6Stream10setTimeoutEm,"ax",%progbits
 230              		.align	1
 231              		.p2align 2,,3
 232              		.global	_ZN6Stream10setTimeoutEm
 233              		.syntax unified
 234              		.thumb
 235              		.thumb_func
 236              		.fpu fpv4-sp-d16
 237              		.type	_ZN6Stream10setTimeoutEm, %function
 238              	_ZN6Stream10setTimeoutEm:
 239              		@ args = 0, pretend = 0, frame = 0
 240              		@ frame_needed = 0, uses_anonymous_args = 0
 241              		@ link register save eliminated.
 242 0000 8160     		str	r1, [r0, #8]
 243 0002 7047     		bx	lr
 244              		.size	_ZN6Stream10setTimeoutEm, .-_ZN6Stream10setTimeoutEm
 245              		.section	.text._ZN6Stream4findEPcj,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	_ZN6Stream4findEPcj
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu fpv4-sp-d16
 253              		.type	_ZN6Stream4findEPcj, %function
 254              	_ZN6Stream4findEPcj:
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257 0000 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 258 0002 0BB9     		cbnz	r3, .L54
 259 0004 0120     		movs	r0, #1
 260 0006 7047     		bx	lr
 261              	.L54:
 262 0008 00B5     		push	{lr}
 263 000a 83B0     		sub	sp, sp, #12
 264 000c 0023     		movs	r3, #0
 265 000e 0093     		str	r3, [sp]
 266 0010 FFF7FEFF 		bl	_ZN6Stream9findUntilEPcjS0_j.part.0
 267 0014 03B0     		add	sp, sp, #12
 268              		@ sp needed
 269 0016 5DF804FB 		ldr	pc, [sp], #4
 270              		.size	_ZN6Stream4findEPcj, .-_ZN6Stream4findEPcj
 271 001a 00BF     		.section	.text._ZN6Stream9findUntilEPcS0_,"ax",%progbits
 272              		.align	1
 273              		.p2align 2,,3
 274              		.global	_ZN6Stream9findUntilEPcS0_
 275              		.syntax unified
 276              		.thumb
 277              		.thumb_func
 278              		.fpu fpv4-sp-d16
 279              		.type	_ZN6Stream9findUntilEPcS0_, %function
 280              	_ZN6Stream9findUntilEPcS0_:
 281              		@ args = 0, pretend = 0, frame = 0
 282              		@ frame_needed = 0, uses_anonymous_args = 0
 283 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 284 0002 0646     		mov	r6, r0
 285 0004 83B0     		sub	sp, sp, #12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoD7pgT.s 			page 6


 286 0006 0846     		mov	r0, r1
 287 0008 0C46     		mov	r4, r1
 288 000a 1546     		mov	r5, r2
 289 000c FFF7FEFF 		bl	strlen
 290 0010 0746     		mov	r7, r0
 291 0012 2846     		mov	r0, r5
 292 0014 FFF7FEFF 		bl	strlen
 293 0018 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 294 001a 13B9     		cbnz	r3, .L59
 295 001c 0120     		movs	r0, #1
 296 001e 03B0     		add	sp, sp, #12
 297              		@ sp needed
 298 0020 F0BD     		pop	{r4, r5, r6, r7, pc}
 299              	.L59:
 300 0022 0090     		str	r0, [sp]
 301 0024 2B46     		mov	r3, r5
 302 0026 3A46     		mov	r2, r7
 303 0028 2146     		mov	r1, r4
 304 002a 3046     		mov	r0, r6
 305 002c FFF7FEFF 		bl	_ZN6Stream9findUntilEPcjS0_j.part.0
 306 0030 03B0     		add	sp, sp, #12
 307              		@ sp needed
 308 0032 F0BD     		pop	{r4, r5, r6, r7, pc}
 309              		.size	_ZN6Stream9findUntilEPcS0_, .-_ZN6Stream9findUntilEPcS0_
 310              		.section	.text._ZN6Stream4findEPc,"ax",%progbits
 311              		.align	1
 312              		.p2align 2,,3
 313              		.global	_ZN6Stream4findEPc
 314              		.syntax unified
 315              		.thumb
 316              		.thumb_func
 317              		.fpu fpv4-sp-d16
 318              		.type	_ZN6Stream4findEPc, %function
 319              	_ZN6Stream4findEPc:
 320              		@ args = 0, pretend = 0, frame = 0
 321              		@ frame_needed = 0, uses_anonymous_args = 0
 322              		@ link register save eliminated.
 323 0000 014A     		ldr	r2, .L61
 324 0002 FFF7FEBF 		b	_ZN6Stream9findUntilEPcS0_
 325              	.L62:
 326 0006 00BF     		.align	2
 327              	.L61:
 328 0008 00000000 		.word	.LC0
 329              		.size	_ZN6Stream4findEPc, .-_ZN6Stream4findEPc
 330              		.section	.text._ZN6Stream9findUntilEPcjS0_j,"ax",%progbits
 331              		.align	1
 332              		.p2align 2,,3
 333              		.global	_ZN6Stream9findUntilEPcjS0_j
 334              		.syntax unified
 335              		.thumb
 336              		.thumb_func
 337              		.fpu fpv4-sp-d16
 338              		.type	_ZN6Stream9findUntilEPcjS0_j, %function
 339              	_ZN6Stream9findUntilEPcjS0_j:
 340              		@ args = 4, pretend = 0, frame = 0
 341              		@ frame_needed = 0, uses_anonymous_args = 0
 342              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoD7pgT.s 			page 7


 343 0000 10B4     		push	{r4}
 344 0002 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
 345 0004 1CB1     		cbz	r4, .L64
 346 0006 5DF8044B 		ldr	r4, [sp], #4
 347 000a FFF7FEBF 		b	_ZN6Stream9findUntilEPcjS0_j.part.0
 348              	.L64:
 349 000e 0120     		movs	r0, #1
 350 0010 5DF8044B 		ldr	r4, [sp], #4
 351 0014 7047     		bx	lr
 352              		.size	_ZN6Stream9findUntilEPcjS0_j, .-_ZN6Stream9findUntilEPcjS0_j
 353 0016 00BF     		.section	.text._ZN6Stream8parseIntEc,"ax",%progbits
 354              		.align	1
 355              		.p2align 2,,3
 356              		.global	_ZN6Stream8parseIntEc
 357              		.syntax unified
 358              		.thumb
 359              		.thumb_func
 360              		.fpu fpv4-sp-d16
 361              		.type	_ZN6Stream8parseIntEc, %function
 362              	_ZN6Stream8parseIntEc:
 363              		@ args = 0, pretend = 0, frame = 0
 364              		@ frame_needed = 0, uses_anonymous_args = 0
 365 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 366 0002 0D46     		mov	r5, r1
 367 0004 0446     		mov	r4, r0
 368 0006 FFF7FEFF 		bl	_ZN6Stream13peekNextDigitEv
 369 000a 0028     		cmp	r0, #0
 370 000c 4FF00006 		mov	r6, #0
 371 0010 26DB     		blt	.L66
 372 0012 3746     		mov	r7, r6
 373              	.L68:
 374 0014 A842     		cmp	r0, r5
 375 0016 A0F13002 		sub	r2, r0, #48
 376 001a 09D0     		beq	.L69
 377 001c 2D28     		cmp	r0, #45
 378 001e 1BD0     		beq	.L72
 379              	.L79:
 380 0020 06EB8603 		add	r3, r6, r6, lsl #2
 381 0024 092A     		cmp	r2, #9
 382 0026 00EB4300 		add	r0, r0, r3, lsl #1
 383 002a 01D8     		bhi	.L69
 384 002c A0F13006 		sub	r6, r0, #48
 385              	.L69:
 386 0030 2368     		ldr	r3, [r4]
 387 0032 2046     		mov	r0, r4
 388 0034 5B69     		ldr	r3, [r3, #20]
 389 0036 9847     		blx	r3
 390 0038 2046     		mov	r0, r4
 391 003a FFF7FEFF 		bl	_ZN6Stream9timedPeekEv
 392 003e A0F13003 		sub	r3, r0, #48
 393 0042 092B     		cmp	r3, #9
 394 0044 E6D9     		bls	.L68
 395 0046 A842     		cmp	r0, r5
 396 0048 08D1     		bne	.L78
 397 004a 2846     		mov	r0, r5
 398 004c A842     		cmp	r0, r5
 399 004e A0F13002 		sub	r2, r0, #48
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoD7pgT.s 			page 8


 400 0052 EDD0     		beq	.L69
 401 0054 2D28     		cmp	r0, #45
 402 0056 E3D1     		bne	.L79
 403              	.L72:
 404 0058 0127     		movs	r7, #1
 405 005a E9E7     		b	.L69
 406              	.L78:
 407 005c 07B1     		cbz	r7, .L66
 408 005e 7642     		negs	r6, r6
 409              	.L66:
 410 0060 3046     		mov	r0, r6
 411 0062 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 412              		.size	_ZN6Stream8parseIntEc, .-_ZN6Stream8parseIntEc
 413              		.section	.text._ZN6Stream8parseIntEv,"ax",%progbits
 414              		.align	1
 415              		.p2align 2,,3
 416              		.global	_ZN6Stream8parseIntEv
 417              		.syntax unified
 418              		.thumb
 419              		.thumb_func
 420              		.fpu fpv4-sp-d16
 421              		.type	_ZN6Stream8parseIntEv, %function
 422              	_ZN6Stream8parseIntEv:
 423              		@ args = 0, pretend = 0, frame = 0
 424              		@ frame_needed = 0, uses_anonymous_args = 0
 425              		@ link register save eliminated.
 426 0000 0121     		movs	r1, #1
 427 0002 FFF7FEBF 		b	_ZN6Stream8parseIntEc
 428              		.size	_ZN6Stream8parseIntEv, .-_ZN6Stream8parseIntEv
 429 0006 00BF     		.section	.text._ZN6Stream10parseFloatEc,"ax",%progbits
 430              		.align	1
 431              		.p2align 2,,3
 432              		.global	_ZN6Stream10parseFloatEc
 433              		.syntax unified
 434              		.thumb
 435              		.thumb_func
 436              		.fpu fpv4-sp-d16
 437              		.type	_ZN6Stream10parseFloatEc, %function
 438              	_ZN6Stream10parseFloatEc:
 439              		@ args = 0, pretend = 0, frame = 0
 440              		@ frame_needed = 0, uses_anonymous_args = 0
 441 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 442 0004 2DED028B 		vpush.64	{d8}
 443 0008 0D46     		mov	r5, r1
 444 000a 0446     		mov	r4, r0
 445 000c FFF7FEFF 		bl	_ZN6Stream13peekNextDigitEv
 446 0010 0028     		cmp	r0, #0
 447 0012 42DB     		blt	.L90
 448 0014 4FF00008 		mov	r8, #0
 449 0018 DFED238A 		vldr.32	s17, .L107
 450 001c 4646     		mov	r6, r8
 451 001e 4746     		mov	r7, r8
 452 0020 B7EE008A 		vmov.f32	s16, #1.0e+0
 453              	.L83:
 454 0024 A842     		cmp	r0, r5
 455 0026 11D0     		beq	.L84
 456 0028 2D28     		cmp	r0, #45
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoD7pgT.s 			page 9


 457 002a 2AD0     		beq	.L92
 458 002c 2E28     		cmp	r0, #46
 459 002e 2CD0     		beq	.L93
 460 0030 A0F13003 		sub	r3, r0, #48
 461 0034 092B     		cmp	r3, #9
 462 0036 09D8     		bhi	.L84
 463 0038 08EB8808 		add	r8, r8, r8, lsl #2
 464 003c 00EB4800 		add	r0, r0, r8, lsl #1
 465 0040 A0F13008 		sub	r8, r0, #48
 466 0044 16B1     		cbz	r6, .L84
 467 0046 28EE288A 		vmul.f32	s16, s16, s17
 468 004a 0126     		movs	r6, #1
 469              	.L84:
 470 004c 2368     		ldr	r3, [r4]
 471 004e 2046     		mov	r0, r4
 472 0050 5B69     		ldr	r3, [r3, #20]
 473 0052 9847     		blx	r3
 474 0054 2046     		mov	r0, r4
 475 0056 FFF7FEFF 		bl	_ZN6Stream9timedPeekEv
 476 005a A0F13003 		sub	r3, r0, #48
 477 005e 092B     		cmp	r3, #9
 478 0060 E0D9     		bls	.L83
 479 0062 2E28     		cmp	r0, #46
 480 0064 0FD0     		beq	.L88
 481 0066 A842     		cmp	r0, r5
 482 0068 DCD0     		beq	.L83
 483 006a 0FB1     		cbz	r7, .L89
 484 006c C8F10008 		rsb	r8, r8, #0
 485              	.L89:
 486 0070 07EE908A 		vmov	s15, r8	@ int
 487 0074 B8EEE70A 		vcvt.f32.s32	s0, s15
 488 0078 4EB9     		cbnz	r6, .L106
 489 007a BDEC028B 		vldm	sp!, {d8}
 490 007e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 491              	.L92:
 492 0082 0127     		movs	r7, #1
 493 0084 E2E7     		b	.L84
 494              	.L88:
 495 0086 2E2D     		cmp	r5, #46
 496 0088 E0D0     		beq	.L84
 497              	.L93:
 498 008a 0126     		movs	r6, #1
 499 008c DEE7     		b	.L84
 500              	.L106:
 501 008e 20EE080A 		vmul.f32	s0, s0, s16
 502 0092 BDEC028B 		vldm	sp!, {d8}
 503 0096 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 504              	.L90:
 505 009a BDEC028B 		vldm	sp!, {d8}
 506 009e 9FED030A 		vldr.32	s0, .L107+4
 507 00a2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 508              	.L108:
 509 00a6 00BF     		.align	2
 510              	.L107:
 511 00a8 CDCCCC3D 		.word	1036831949
 512 00ac 00000000 		.word	0
 513              		.size	_ZN6Stream10parseFloatEc, .-_ZN6Stream10parseFloatEc
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoD7pgT.s 			page 10


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
 551 0012 8045     		cmp	r8, r0
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccoD7pgT.s 			page 11


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
 603              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
