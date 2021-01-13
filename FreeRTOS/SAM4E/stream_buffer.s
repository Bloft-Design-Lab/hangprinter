ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 1


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
  13              		.file	"stream_buffer.c"
  14              		.text
  15              		.section	.text.prvInitialiseNewStreamBuffer,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	prvInitialiseNewStreamBuffer, %function
  23              	prvInitialiseNewStreamBuffer:
  24              		@ args = 4, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  27 0002 0D46     		mov	r5, r1
  28 0004 0446     		mov	r4, r0
  29 0006 5521     		movs	r1, #85
  30 0008 2846     		mov	r0, r5
  31 000a 1F46     		mov	r7, r3
  32 000c 1646     		mov	r6, r2
  33 000e FFF7FEFF 		bl	memset
  34 0012 8542     		cmp	r5, r0
  35 0014 04D0     		beq	.L2
  36 0016 0A49     		ldr	r1, .L9
  37 0018 40F28140 		movw	r0, #1153
  38 001c FFF7FEFF 		bl	vAssertCalled
  39              	.L2:
  40 0020 2422     		movs	r2, #36
  41 0022 0021     		movs	r1, #0
  42 0024 2046     		mov	r0, r4
  43 0026 FFF7FEFF 		bl	memset
  44 002a 069B     		ldr	r3, [sp, #24]
  45 002c A561     		str	r5, [r4, #24]
  46 002e C4E90267 		strd	r6, r7, [r4, #8]
  47 0032 1BB1     		cbz	r3, .L1
  48 0034 237F     		ldrb	r3, [r4, #28]	@ zero_extendqisi2
  49 0036 43F00103 		orr	r3, r3, #1
  50 003a 2377     		strb	r3, [r4, #28]
  51              	.L1:
  52 003c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  53              	.L10:
  54 003e 00BF     		.align	2
  55              	.L9:
  56 0040 00000000 		.word	.LC0
  57              		.size	prvInitialiseNewStreamBuffer, .-prvInitialiseNewStreamBuffer
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 2


  58              		.section	.text.prvWriteBytesToBuffer,"ax",%progbits
  59              		.align	1
  60              		.p2align 2,,3
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv4-sp-d16
  65              		.type	prvWriteBytesToBuffer, %function
  66              	prvWriteBytesToBuffer:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  70 0004 0546     		mov	r5, r0
  71 0006 8846     		mov	r8, r1
  72 0008 1646     		mov	r6, r2
  73 000a 22B3     		cbz	r2, .L22
  74 000c 4468     		ldr	r4, [r0, #4]
  75 000e 8368     		ldr	r3, [r0, #8]
  76 0010 1F1B     		subs	r7, r3, r4
  77 0012 9742     		cmp	r7, r2
  78 0014 28BF     		it	cs
  79 0016 1746     		movcs	r7, r2
  80 0018 E219     		adds	r2, r4, r7
  81 001a 9342     		cmp	r3, r2
  82 001c 25D3     		bcc	.L13
  83              	.L15:
  84 001e A869     		ldr	r0, [r5, #24]
  85 0020 3A46     		mov	r2, r7
  86 0022 2044     		add	r0, r0, r4
  87 0024 4146     		mov	r1, r8
  88 0026 FFF7FEFF 		bl	memcpy
  89 002a BE42     		cmp	r6, r7
  90 002c AB68     		ldr	r3, [r5, #8]
  91 002e 0AD9     		bls	.L14
  92 0030 A6EB0709 		sub	r9, r6, r7
  93 0034 9945     		cmp	r9, r3
  94 0036 1ED8     		bhi	.L23
  95              	.L16:
  96 0038 4A46     		mov	r2, r9
  97 003a 08EB0701 		add	r1, r8, r7
  98 003e A869     		ldr	r0, [r5, #24]
  99 0040 FFF7FEFF 		bl	memcpy
 100 0044 AB68     		ldr	r3, [r5, #8]
 101              	.L14:
 102 0046 3444     		add	r4, r4, r6
 103 0048 A342     		cmp	r3, r4
 104 004a 98BF     		it	ls
 105 004c E41A     		subls	r4, r4, r3
 106 004e 6C60     		str	r4, [r5, #4]
 107 0050 3046     		mov	r0, r6
 108 0052 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 109              	.L22:
 110 0056 0B49     		ldr	r1, .L24
 111 0058 40F2FD30 		movw	r0, #1021
 112 005c FFF7FEFF 		bl	vAssertCalled
 113 0060 6C68     		ldr	r4, [r5, #4]
 114 0062 AB68     		ldr	r3, [r5, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 3


 115 0064 9C42     		cmp	r4, r3
 116 0066 EED9     		bls	.L14
 117 0068 3746     		mov	r7, r6
 118              	.L13:
 119 006a 0649     		ldr	r1, .L24
 120 006c 40F20740 		movw	r0, #1031
 121 0070 FFF7FEFF 		bl	vAssertCalled
 122 0074 D3E7     		b	.L15
 123              	.L23:
 124 0076 0349     		ldr	r1, .L24
 125 0078 40F20F40 		movw	r0, #1039
 126 007c FFF7FEFF 		bl	vAssertCalled
 127 0080 DAE7     		b	.L16
 128              	.L25:
 129 0082 00BF     		.align	2
 130              	.L24:
 131 0084 00000000 		.word	.LC0
 132              		.size	prvWriteBytesToBuffer, .-prvWriteBytesToBuffer
 133              		.section	.text.prvReadBytesFromBuffer,"ax",%progbits
 134              		.align	1
 135              		.p2align 2,,3
 136              		.syntax unified
 137              		.thumb
 138              		.thumb_func
 139              		.fpu fpv4-sp-d16
 140              		.type	prvReadBytesFromBuffer, %function
 141              	prvReadBytesFromBuffer:
 142              		@ args = 0, pretend = 0, frame = 0
 143              		@ frame_needed = 0, uses_anonymous_args = 0
 144 0000 9A42     		cmp	r2, r3
 145 0002 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 146 0006 1546     		mov	r5, r2
 147 0008 28BF     		it	cs
 148 000a 1D46     		movcs	r5, r3
 149 000c DDB1     		cbz	r5, .L26
 150 000e 0668     		ldr	r6, [r0]
 151 0010 8368     		ldr	r3, [r0, #8]
 152 0012 9F1B     		subs	r7, r3, r6
 153 0014 AF42     		cmp	r7, r5
 154 0016 28BF     		it	cs
 155 0018 2F46     		movcs	r7, r5
 156 001a BA42     		cmp	r2, r7
 157 001c 8946     		mov	r9, r1
 158 001e 0446     		mov	r4, r0
 159 0020 9046     		mov	r8, r2
 160 0022 22D3     		bcc	.L37
 161 0024 F219     		adds	r2, r6, r7
 162 0026 9A42     		cmp	r2, r3
 163 0028 19D8     		bhi	.L38
 164              	.L29:
 165 002a A169     		ldr	r1, [r4, #24]
 166 002c 3A46     		mov	r2, r7
 167 002e 3144     		add	r1, r1, r6
 168 0030 4846     		mov	r0, r9
 169 0032 FFF7FEFF 		bl	memcpy
 170 0036 BD42     		cmp	r5, r7
 171 0038 08D8     		bhi	.L39
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 4


 172              	.L30:
 173 003a A368     		ldr	r3, [r4, #8]
 174 003c 2E44     		add	r6, r6, r5
 175 003e B342     		cmp	r3, r6
 176 0040 98BF     		it	ls
 177 0042 F61A     		subls	r6, r6, r3
 178 0044 2660     		str	r6, [r4]
 179              	.L26:
 180 0046 2846     		mov	r0, r5
 181 0048 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 182              	.L39:
 183 004c A845     		cmp	r8, r5
 184 004e 16D3     		bcc	.L40
 185              	.L31:
 186 0050 09EB0700 		add	r0, r9, r7
 187 0054 EA1B     		subs	r2, r5, r7
 188 0056 A169     		ldr	r1, [r4, #24]
 189 0058 FFF7FEFF 		bl	memcpy
 190 005c EDE7     		b	.L30
 191              	.L38:
 192 005e 0B49     		ldr	r1, .L41
 193 0060 40F23A40 		movw	r0, #1082
 194 0064 FFF7FEFF 		bl	vAssertCalled
 195 0068 DFE7     		b	.L29
 196              	.L37:
 197 006a 0849     		ldr	r1, .L41
 198 006c 40F23940 		movw	r0, #1081
 199 0070 FFF7FEFF 		bl	vAssertCalled
 200 0074 A368     		ldr	r3, [r4, #8]
 201 0076 F219     		adds	r2, r6, r7
 202 0078 9A42     		cmp	r2, r3
 203 007a D6D9     		bls	.L29
 204 007c EFE7     		b	.L38
 205              	.L40:
 206 007e 0349     		ldr	r1, .L41
 207 0080 40F24240 		movw	r0, #1090
 208 0084 FFF7FEFF 		bl	vAssertCalled
 209 0088 E2E7     		b	.L31
 210              	.L42:
 211 008a 00BF     		.align	2
 212              	.L41:
 213 008c 00000000 		.word	.LC0
 214              		.size	prvReadBytesFromBuffer, .-prvReadBytesFromBuffer
 215              		.section	.text.prvReadMessageFromBuffer,"ax",%progbits
 216              		.align	1
 217              		.p2align 2,,3
 218              		.syntax unified
 219              		.thumb
 220              		.thumb_func
 221              		.fpu fpv4-sp-d16
 222              		.type	prvReadMessageFromBuffer, %function
 223              	prvReadMessageFromBuffer:
 224              		@ args = 4, pretend = 0, frame = 8
 225              		@ frame_needed = 0, uses_anonymous_args = 0
 226 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 227 0004 83B0     		sub	sp, sp, #12
 228 0006 8846     		mov	r8, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 5


 229 0008 0A9E     		ldr	r6, [sp, #40]
 230 000a 1446     		mov	r4, r2
 231 000c 0746     		mov	r7, r0
 232 000e 1D46     		mov	r5, r3
 233 0010 4EB9     		cbnz	r6, .L48
 234 0012 0192     		str	r2, [sp, #4]
 235              	.L45:
 236 0014 2B46     		mov	r3, r5
 237 0016 2246     		mov	r2, r4
 238 0018 4146     		mov	r1, r8
 239 001a 3846     		mov	r0, r7
 240 001c FFF7FEFF 		bl	prvReadBytesFromBuffer
 241 0020 03B0     		add	sp, sp, #12
 242              		@ sp needed
 243 0022 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 244              	.L48:
 245 0026 3246     		mov	r2, r6
 246 0028 01A9     		add	r1, sp, #4
 247 002a D0F80090 		ldr	r9, [r0]
 248 002e FFF7FEFF 		bl	prvReadBytesFromBuffer
 249 0032 019B     		ldr	r3, [sp, #4]
 250 0034 A342     		cmp	r3, r4
 251 0036 A5EB0605 		sub	r5, r5, r6
 252 003a 04D9     		bls	.L46
 253 003c 0024     		movs	r4, #0
 254 003e C7F80090 		str	r9, [r7]
 255 0042 0194     		str	r4, [sp, #4]
 256 0044 E6E7     		b	.L45
 257              	.L46:
 258 0046 1C46     		mov	r4, r3
 259 0048 E4E7     		b	.L45
 260              		.size	prvReadMessageFromBuffer, .-prvReadMessageFromBuffer
 261 004a 00BF     		.section	.text.xStreamBufferGenericCreateStatic,"ax",%progbits
 262              		.align	1
 263              		.p2align 2,,3
 264              		.global	xStreamBufferGenericCreateStatic
 265              		.syntax unified
 266              		.thumb
 267              		.thumb_func
 268              		.fpu fpv4-sp-d16
 269              		.type	xStreamBufferGenericCreateStatic, %function
 270              	xStreamBufferGenericCreateStatic:
 271              		@ args = 4, pretend = 0, frame = 8
 272              		@ frame_needed = 0, uses_anonymous_args = 0
 273 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 274 0004 84B0     		sub	sp, sp, #16
 275 0006 0746     		mov	r7, r0
 276 0008 0D46     		mov	r5, r1
 277 000a 9046     		mov	r8, r2
 278 000c 0A9C     		ldr	r4, [sp, #40]
 279 000e 1E46     		mov	r6, r3
 280 0010 8BB3     		cbz	r3, .L65
 281 0012 002C     		cmp	r4, #0
 282 0014 36D0     		beq	.L66
 283              	.L51:
 284 0016 BD42     		cmp	r5, r7
 285 0018 27D8     		bhi	.L67
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 6


 286              	.L52:
 287 001a 002D     		cmp	r5, #0
 288 001c 08BF     		it	eq
 289 001e 0125     		moveq	r5, #1
 290 0020 042F     		cmp	r7, #4
 291 0022 1CD9     		bls	.L68
 292              	.L54:
 293 0024 2423     		movs	r3, #36
 294 0026 0393     		str	r3, [sp, #12]
 295 0028 039B     		ldr	r3, [sp, #12]
 296 002a 242B     		cmp	r3, #36
 297 002c 11D1     		bne	.L69
 298              	.L55:
 299 002e 7EB3     		cbz	r6, .L57
 300 0030 5CB1     		cbz	r4, .L56
 301 0032 2B46     		mov	r3, r5
 302 0034 CDF80080 		str	r8, [sp]
 303 0038 3A46     		mov	r2, r7
 304 003a 3146     		mov	r1, r6
 305 003c 2046     		mov	r0, r4
 306 003e FFF7FEFF 		bl	prvInitialiseNewStreamBuffer
 307 0042 237F     		ldrb	r3, [r4, #28]	@ zero_extendqisi2
 308 0044 43F00203 		orr	r3, r3, #2
 309 0048 2377     		strb	r3, [r4, #28]
 310              	.L56:
 311 004a 2046     		mov	r0, r4
 312 004c 04B0     		add	sp, sp, #16
 313              		@ sp needed
 314 004e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 315              	.L69:
 316 0052 1049     		ldr	r1, .L70
 317 0054 4FF49670 		mov	r0, #300
 318 0058 FFF7FEFF 		bl	vAssertCalled
 319 005c E7E7     		b	.L55
 320              	.L68:
 321 005e 0D49     		ldr	r1, .L70
 322 0060 4FF49270 		mov	r0, #292
 323 0064 FFF7FEFF 		bl	vAssertCalled
 324 0068 DCE7     		b	.L54
 325              	.L67:
 326 006a 0A49     		ldr	r1, .L70
 327 006c 40F21710 		movw	r0, #279
 328 0070 FFF7FEFF 		bl	vAssertCalled
 329 0074 D1E7     		b	.L52
 330              	.L65:
 331 0076 0749     		ldr	r1, .L70
 332 0078 40F21510 		movw	r0, #277
 333 007c FFF7FEFF 		bl	vAssertCalled
 334 0080 002C     		cmp	r4, #0
 335 0082 C8D1     		bne	.L51
 336              	.L66:
 337 0084 0349     		ldr	r1, .L70
 338 0086 4FF48B70 		mov	r0, #278
 339 008a FFF7FEFF 		bl	vAssertCalled
 340 008e C2E7     		b	.L51
 341              	.L57:
 342 0090 3446     		mov	r4, r6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 7


 343 0092 DAE7     		b	.L56
 344              	.L71:
 345              		.align	2
 346              	.L70:
 347 0094 00000000 		.word	.LC0
 348              		.size	xStreamBufferGenericCreateStatic, .-xStreamBufferGenericCreateStatic
 349              		.section	.text.vStreamBufferDelete,"ax",%progbits
 350              		.align	1
 351              		.p2align 2,,3
 352              		.global	vStreamBufferDelete
 353              		.syntax unified
 354              		.thumb
 355              		.thumb_func
 356              		.fpu fpv4-sp-d16
 357              		.type	vStreamBufferDelete, %function
 358              	vStreamBufferDelete:
 359              		@ args = 0, pretend = 0, frame = 0
 360              		@ frame_needed = 0, uses_anonymous_args = 0
 361 0000 10B5     		push	{r4, lr}
 362 0002 0446     		mov	r4, r0
 363 0004 28B1     		cbz	r0, .L79
 364 0006 037F     		ldrb	r3, [r0, #28]	@ zero_extendqisi2
 365 0008 9B07     		lsls	r3, r3, #30
 366 000a 11D4     		bmi	.L74
 367 000c 441C     		adds	r4, r0, #1
 368 000e 08D1     		bne	.L75
 369 0010 10BD     		pop	{r4, pc}
 370              	.L79:
 371 0012 0B49     		ldr	r1, .L80
 372 0014 4FF4A870 		mov	r0, #336
 373 0018 FFF7FEFF 		bl	vAssertCalled
 374 001c 237F     		ldrb	r3, [r4, #28]	@ zero_extendqisi2
 375 001e 9A07     		lsls	r2, r3, #30
 376 0020 06D4     		bmi	.L74
 377              	.L75:
 378 0022 0749     		ldr	r1, .L80
 379 0024 4FF4B070 		mov	r0, #352
 380 0028 BDE81040 		pop	{r4, lr}
 381 002c FFF7FEBF 		b	vAssertCalled
 382              	.L74:
 383 0030 2046     		mov	r0, r4
 384 0032 2422     		movs	r2, #36
 385 0034 0021     		movs	r1, #0
 386 0036 BDE81040 		pop	{r4, lr}
 387 003a FFF7FEBF 		b	memset
 388              	.L81:
 389 003e 00BF     		.align	2
 390              	.L80:
 391 0040 00000000 		.word	.LC0
 392              		.size	vStreamBufferDelete, .-vStreamBufferDelete
 393              		.section	.text.xStreamBufferReset,"ax",%progbits
 394              		.align	1
 395              		.p2align 2,,3
 396              		.global	xStreamBufferReset
 397              		.syntax unified
 398              		.thumb
 399              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 8


 400              		.fpu fpv4-sp-d16
 401              		.type	xStreamBufferReset, %function
 402              	xStreamBufferReset:
 403              		@ args = 0, pretend = 0, frame = 0
 404              		@ frame_needed = 0, uses_anonymous_args = 0
 405 0000 30B5     		push	{r4, r5, lr}
 406 0002 0446     		mov	r4, r0
 407 0004 83B0     		sub	sp, sp, #12
 408 0006 B0B1     		cbz	r0, .L88
 409              	.L83:
 410 0008 2069     		ldr	r0, [r4, #16]
 411 000a 10B1     		cbz	r0, .L89
 412 000c 0020     		movs	r0, #0
 413              	.L82:
 414 000e 03B0     		add	sp, sp, #12
 415              		@ sp needed
 416 0010 30BD     		pop	{r4, r5, pc}
 417              	.L89:
 418 0012 6369     		ldr	r3, [r4, #20]
 419 0014 002B     		cmp	r3, #0
 420 0016 FAD1     		bne	.L82
 421 0018 207F     		ldrb	r0, [r4, #28]	@ zero_extendqisi2
 422 001a 256A     		ldr	r5, [r4, #32]
 423 001c A169     		ldr	r1, [r4, #24]
 424 001e 00F00100 		and	r0, r0, #1
 425 0022 D4E90223 		ldrd	r2, r3, [r4, #8]
 426 0026 0090     		str	r0, [sp]
 427 0028 2046     		mov	r0, r4
 428 002a FFF7FEFF 		bl	prvInitialiseNewStreamBuffer
 429 002e 0120     		movs	r0, #1
 430 0030 2562     		str	r5, [r4, #32]
 431 0032 03B0     		add	sp, sp, #12
 432              		@ sp needed
 433 0034 30BD     		pop	{r4, r5, pc}
 434              	.L88:
 435 0036 0349     		ldr	r1, .L90
 436 0038 4FF4BB70 		mov	r0, #374
 437 003c FFF7FEFF 		bl	vAssertCalled
 438 0040 E2E7     		b	.L83
 439              	.L91:
 440 0042 00BF     		.align	2
 441              	.L90:
 442 0044 00000000 		.word	.LC0
 443              		.size	xStreamBufferReset, .-xStreamBufferReset
 444              		.section	.text.xStreamBufferSetTriggerLevel,"ax",%progbits
 445              		.align	1
 446              		.p2align 2,,3
 447              		.global	xStreamBufferSetTriggerLevel
 448              		.syntax unified
 449              		.thumb
 450              		.thumb_func
 451              		.fpu fpv4-sp-d16
 452              		.type	xStreamBufferSetTriggerLevel, %function
 453              	xStreamBufferSetTriggerLevel:
 454              		@ args = 0, pretend = 0, frame = 0
 455              		@ frame_needed = 0, uses_anonymous_args = 0
 456 0000 38B5     		push	{r3, r4, r5, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 9


 457 0002 0C46     		mov	r4, r1
 458 0004 0546     		mov	r5, r0
 459 0006 48B1     		cbz	r0, .L98
 460              	.L93:
 461 0008 002C     		cmp	r4, #0
 462 000a AB68     		ldr	r3, [r5, #8]
 463 000c 08BF     		it	eq
 464 000e 0124     		moveq	r4, #1
 465 0010 A342     		cmp	r3, r4
 466 0012 26BF     		itte	cs
 467 0014 EC60     		strcs	r4, [r5, #12]
 468 0016 0120     		movcs	r0, #1
 469 0018 0020     		movcc	r0, #0
 470 001a 38BD     		pop	{r3, r4, r5, pc}
 471              	.L98:
 472 001c 0249     		ldr	r1, .L99
 473 001e 4FF4D470 		mov	r0, #424
 474 0022 FFF7FEFF 		bl	vAssertCalled
 475 0026 EFE7     		b	.L93
 476              	.L100:
 477              		.align	2
 478              	.L99:
 479 0028 00000000 		.word	.LC0
 480              		.size	xStreamBufferSetTriggerLevel, .-xStreamBufferSetTriggerLevel
 481              		.section	.text.xStreamBufferSpacesAvailable,"ax",%progbits
 482              		.align	1
 483              		.p2align 2,,3
 484              		.global	xStreamBufferSpacesAvailable
 485              		.syntax unified
 486              		.thumb
 487              		.thumb_func
 488              		.fpu fpv4-sp-d16
 489              		.type	xStreamBufferSpacesAvailable, %function
 490              	xStreamBufferSpacesAvailable:
 491              		@ args = 0, pretend = 0, frame = 0
 492              		@ frame_needed = 0, uses_anonymous_args = 0
 493 0000 10B5     		push	{r4, lr}
 494 0002 0446     		mov	r4, r0
 495 0004 48B1     		cbz	r0, .L105
 496              	.L102:
 497 0006 A368     		ldr	r3, [r4, #8]
 498 0008 2068     		ldr	r0, [r4]
 499 000a 6268     		ldr	r2, [r4, #4]
 500 000c 1844     		add	r0, r0, r3
 501 000e 0138     		subs	r0, r0, #1
 502 0010 801A     		subs	r0, r0, r2
 503 0012 8342     		cmp	r3, r0
 504 0014 98BF     		it	ls
 505 0016 C01A     		subls	r0, r0, r3
 506 0018 10BD     		pop	{r4, pc}
 507              	.L105:
 508 001a 0349     		ldr	r1, .L106
 509 001c 40F2C510 		movw	r0, #453
 510 0020 FFF7FEFF 		bl	vAssertCalled
 511 0024 EFE7     		b	.L102
 512              	.L107:
 513 0026 00BF     		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 10


 514              	.L106:
 515 0028 00000000 		.word	.LC0
 516              		.size	xStreamBufferSpacesAvailable, .-xStreamBufferSpacesAvailable
 517              		.section	.text.xStreamBufferBytesAvailable,"ax",%progbits
 518              		.align	1
 519              		.p2align 2,,3
 520              		.global	xStreamBufferBytesAvailable
 521              		.syntax unified
 522              		.thumb
 523              		.thumb_func
 524              		.fpu fpv4-sp-d16
 525              		.type	xStreamBufferBytesAvailable, %function
 526              	xStreamBufferBytesAvailable:
 527              		@ args = 0, pretend = 0, frame = 0
 528              		@ frame_needed = 0, uses_anonymous_args = 0
 529 0000 10B5     		push	{r4, lr}
 530 0002 0446     		mov	r4, r0
 531 0004 40B1     		cbz	r0, .L112
 532              	.L109:
 533 0006 A368     		ldr	r3, [r4, #8]
 534 0008 6068     		ldr	r0, [r4, #4]
 535 000a 2268     		ldr	r2, [r4]
 536 000c 1844     		add	r0, r0, r3
 537 000e 801A     		subs	r0, r0, r2
 538 0010 8342     		cmp	r3, r0
 539 0012 98BF     		it	ls
 540 0014 C01A     		subls	r0, r0, r3
 541 0016 10BD     		pop	{r4, pc}
 542              	.L112:
 543 0018 0249     		ldr	r1, .L113
 544 001a 40F2DD10 		movw	r0, #477
 545 001e FFF7FEFF 		bl	vAssertCalled
 546 0022 F0E7     		b	.L109
 547              	.L114:
 548              		.align	2
 549              	.L113:
 550 0024 00000000 		.word	.LC0
 551              		.size	xStreamBufferBytesAvailable, .-xStreamBufferBytesAvailable
 552              		.section	.text.xStreamBufferSend,"ax",%progbits
 553              		.align	1
 554              		.p2align 2,,3
 555              		.global	xStreamBufferSend
 556              		.syntax unified
 557              		.thumb
 558              		.thumb_func
 559              		.fpu fpv4-sp-d16
 560              		.type	xStreamBufferSend, %function
 561              	xStreamBufferSend:
 562              		@ args = 0, pretend = 0, frame = 24
 563              		@ frame_needed = 0, uses_anonymous_args = 0
 564 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 565 0004 87B0     		sub	sp, sp, #28
 566 0006 0446     		mov	r4, r0
 567 0008 9246     		mov	r10, r2
 568 000a 0193     		str	r3, [sp, #4]
 569 000c 8B46     		mov	fp, r1
 570 000e 0029     		cmp	r1, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 11


 571 0010 00F08180 		beq	.L153
 572 0014 002C     		cmp	r4, #0
 573 0016 00F08680 		beq	.L154
 574              	.L117:
 575 001a 237F     		ldrb	r3, [r4, #28]	@ zero_extendqisi2
 576 001c DA07     		lsls	r2, r3, #31
 577 001e 019B     		ldr	r3, [sp, #4]
 578 0020 4CBF     		ite	mi
 579 0022 0AF10407 		addmi	r7, r10, #4
 580 0026 5746     		movpl	r7, r10
 581 0028 93B3     		cbz	r3, .L126
 582 002a 04A8     		add	r0, sp, #16
 583 002c FFF7FEFF 		bl	vTaskSetTimeOutState
 584 0030 DFF80091 		ldr	r9, .L157
 585 0034 4FF00008 		mov	r8, #0
 586 0038 1DE0     		b	.L124
 587              	.L155:
 588 003a FFF7FEFF 		bl	xTaskNotifyStateClear
 589 003e 6369     		ldr	r3, [r4, #20]
 590 0040 4946     		mov	r1, r9
 591 0042 4FF40470 		mov	r0, #528
 592 0046 0BB1     		cbz	r3, .L123
 593 0048 FFF7FEFF 		bl	vAssertCalled
 594              	.L123:
 595 004c FFF7FEFF 		bl	xTaskGetCurrentTaskHandle
 596 0050 06AD     		add	r5, sp, #24
 597 0052 6061     		str	r0, [r4, #20]
 598 0054 FFF7FEFF 		bl	vPortExitCritical
 599 0058 0022     		movs	r2, #0
 600 005a 55F8143D 		ldr	r3, [r5, #-20]!
 601 005e 4FF0FF31 		mov	r1, #-1
 602 0062 1046     		mov	r0, r2
 603 0064 FFF7FEFF 		bl	xTaskNotifyWait
 604 0068 2946     		mov	r1, r5
 605 006a C4F81480 		str	r8, [r4, #20]
 606 006e 04A8     		add	r0, sp, #16
 607 0070 FFF7FEFF 		bl	xTaskCheckForTimeOut
 608 0074 58B9     		cbnz	r0, .L125
 609              	.L124:
 610 0076 FFF7FEFF 		bl	vPortEnterCritical
 611 007a 2046     		mov	r0, r4
 612 007c FFF7FEFF 		bl	xStreamBufferSpacesAvailable
 613 0080 0646     		mov	r6, r0
 614 0082 B742     		cmp	r7, r6
 615 0084 4FF00000 		mov	r0, #0
 616 0088 D7D8     		bhi	.L155
 617 008a FFF7FEFF 		bl	vPortExitCritical
 618              	.L125:
 619 008e 5EB9     		cbnz	r6, .L156
 620              	.L126:
 621 0090 2046     		mov	r0, r4
 622 0092 FFF7FEFF 		bl	xStreamBufferSpacesAvailable
 623 0096 CDF80CA0 		str	r10, [sp, #12]
 624 009a 0646     		mov	r6, r0
 625 009c 30B9     		cbnz	r0, .L121
 626              	.L120:
 627 009e 0025     		movs	r5, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 12


 628              	.L115:
 629 00a0 2846     		mov	r0, r5
 630 00a2 07B0     		add	sp, sp, #28
 631              		@ sp needed
 632 00a4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 633              	.L156:
 634 00a8 CDF80CA0 		str	r10, [sp, #12]
 635              	.L121:
 636 00ac 237F     		ldrb	r3, [r4, #28]	@ zero_extendqisi2
 637 00ae DB07     		lsls	r3, r3, #31
 638 00b0 28D4     		bmi	.L129
 639 00b2 B245     		cmp	r10, r6
 640 00b4 5246     		mov	r2, r10
 641 00b6 28BF     		it	cs
 642 00b8 3246     		movcs	r2, r6
 643 00ba 0392     		str	r2, [sp, #12]
 644              	.L130:
 645 00bc 5946     		mov	r1, fp
 646 00be 2046     		mov	r0, r4
 647 00c0 FFF7FEFF 		bl	prvWriteBytesToBuffer
 648 00c4 0546     		mov	r5, r0
 649 00c6 0028     		cmp	r0, #0
 650 00c8 E9D0     		beq	.L120
 651 00ca A268     		ldr	r2, [r4, #8]
 652 00cc 6368     		ldr	r3, [r4, #4]
 653 00ce 2168     		ldr	r1, [r4]
 654 00d0 1344     		add	r3, r3, r2
 655 00d2 5B1A     		subs	r3, r3, r1
 656 00d4 9A42     		cmp	r2, r3
 657 00d6 98BF     		it	ls
 658 00d8 9B1A     		subls	r3, r3, r2
 659 00da E268     		ldr	r2, [r4, #12]
 660 00dc 9A42     		cmp	r2, r3
 661 00de DFD8     		bhi	.L115
 662 00e0 FFF7FEFF 		bl	vTaskSuspendAll
 663 00e4 2369     		ldr	r3, [r4, #16]
 664 00e6 3BB1     		cbz	r3, .L132
 665 00e8 0023     		movs	r3, #0
 666 00ea 1A46     		mov	r2, r3
 667 00ec 1946     		mov	r1, r3
 668 00ee 2069     		ldr	r0, [r4, #16]
 669 00f0 FFF7FEFF 		bl	xTaskGenericNotify
 670 00f4 0023     		movs	r3, #0
 671 00f6 2361     		str	r3, [r4, #16]
 672              	.L132:
 673 00f8 FFF7FEFF 		bl	xTaskResumeAll
 674 00fc 2846     		mov	r0, r5
 675 00fe 07B0     		add	sp, sp, #28
 676              		@ sp needed
 677 0100 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 678              	.L129:
 679 0104 B742     		cmp	r7, r6
 680 0106 CAD8     		bhi	.L120
 681 0108 0422     		movs	r2, #4
 682 010a 03A9     		add	r1, sp, #12
 683 010c 2046     		mov	r0, r4
 684 010e FFF7FEFF 		bl	prvWriteBytesToBuffer
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 13


 685 0112 039A     		ldr	r2, [sp, #12]
 686 0114 D2E7     		b	.L130
 687              	.L153:
 688 0116 0749     		ldr	r1, .L157
 689 0118 4FF4F770 		mov	r0, #494
 690 011c FFF7FEFF 		bl	vAssertCalled
 691 0120 002C     		cmp	r4, #0
 692 0122 7FF47AAF 		bne	.L117
 693              	.L154:
 694 0126 0349     		ldr	r1, .L157
 695 0128 40F2EF10 		movw	r0, #495
 696 012c FFF7FEFF 		bl	vAssertCalled
 697 0130 73E7     		b	.L117
 698              	.L158:
 699 0132 00BF     		.align	2
 700              	.L157:
 701 0134 00000000 		.word	.LC0
 702              		.size	xStreamBufferSend, .-xStreamBufferSend
 703              		.section	.text.xStreamBufferSendFromISR,"ax",%progbits
 704              		.align	1
 705              		.p2align 2,,3
 706              		.global	xStreamBufferSendFromISR
 707              		.syntax unified
 708              		.thumb
 709              		.thumb_func
 710              		.fpu fpv4-sp-d16
 711              		.type	xStreamBufferSendFromISR, %function
 712              	xStreamBufferSendFromISR:
 713              		@ args = 0, pretend = 0, frame = 8
 714              		@ frame_needed = 0, uses_anonymous_args = 0
 715 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 716 0004 0446     		mov	r4, r0
 717 0006 84B0     		sub	sp, sp, #16
 718 0008 1546     		mov	r5, r2
 719 000a 1E46     		mov	r6, r3
 720 000c 0F46     		mov	r7, r1
 721 000e 0029     		cmp	r1, #0
 722 0010 48D0     		beq	.L178
 723 0012 002C     		cmp	r4, #0
 724 0014 4DD0     		beq	.L179
 725              	.L161:
 726 0016 237F     		ldrb	r3, [r4, #28]	@ zero_extendqisi2
 727 0018 2046     		mov	r0, r4
 728 001a DA07     		lsls	r2, r3, #31
 729 001c 4CBF     		ite	mi
 730 001e 05F10408 		addmi	r8, r5, #4
 731 0022 A846     		movpl	r8, r5
 732 0024 FFF7FEFF 		bl	xStreamBufferSpacesAvailable
 733 0028 0395     		str	r5, [sp, #12]
 734 002a 0028     		cmp	r0, #0
 735 002c 35D0     		beq	.L167
 736 002e 237F     		ldrb	r3, [r4, #28]	@ zero_extendqisi2
 737 0030 DB07     		lsls	r3, r3, #31
 738 0032 30D4     		bmi	.L165
 739 0034 8542     		cmp	r5, r0
 740 0036 2A46     		mov	r2, r5
 741 0038 28BF     		it	cs
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 14


 742 003a 0246     		movcs	r2, r0
 743 003c 0392     		str	r2, [sp, #12]
 744              	.L166:
 745 003e 3946     		mov	r1, r7
 746 0040 2046     		mov	r0, r4
 747 0042 FFF7FEFF 		bl	prvWriteBytesToBuffer
 748 0046 0546     		mov	r5, r0
 749 0048 38B3     		cbz	r0, .L167
 750 004a A268     		ldr	r2, [r4, #8]
 751 004c 6368     		ldr	r3, [r4, #4]
 752 004e 2168     		ldr	r1, [r4]
 753 0050 1344     		add	r3, r3, r2
 754 0052 5B1A     		subs	r3, r3, r1
 755 0054 9A42     		cmp	r2, r3
 756 0056 98BF     		it	ls
 757 0058 9B1A     		subls	r3, r3, r2
 758 005a E268     		ldr	r2, [r4, #12]
 759 005c 9A42     		cmp	r2, r3
 760 005e 1DD8     		bhi	.L159
 761              		.syntax unified
 762              	@ 212 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 763 0060 EFF31187 			mrs r7, basepri											
 764 0064 4FF05003 		mov r3, #80												
 765 0068 83F31188 		msr basepri, r3											
 766 006c BFF36F8F 		isb														
 767 0070 BFF34F8F 		dsb														
 768              	
 769              	@ 0 "" 2
 770              		.thumb
 771              		.syntax unified
 772 0074 2369     		ldr	r3, [r4, #16]
 773 0076 43B1     		cbz	r3, .L169
 774 0078 0023     		movs	r3, #0
 775 007a 2069     		ldr	r0, [r4, #16]
 776 007c 0096     		str	r6, [sp]
 777 007e 1A46     		mov	r2, r3
 778 0080 1946     		mov	r1, r3
 779 0082 FFF7FEFF 		bl	xTaskGenericNotifyFromISR
 780 0086 0023     		movs	r3, #0
 781 0088 2361     		str	r3, [r4, #16]
 782              	.L169:
 783              		.syntax unified
 784              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 785 008a 87F31188 			msr basepri, r7	
 786              	@ 0 "" 2
 787              		.thumb
 788              		.syntax unified
 789 008e 2846     		mov	r0, r5
 790 0090 04B0     		add	sp, sp, #16
 791              		@ sp needed
 792 0092 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 793              	.L165:
 794 0096 8045     		cmp	r8, r0
 795 0098 11D9     		bls	.L180
 796              	.L167:
 797 009a 0025     		movs	r5, #0
 798              	.L159:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 15


 799 009c 2846     		mov	r0, r5
 800 009e 04B0     		add	sp, sp, #16
 801              		@ sp needed
 802 00a0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 803              	.L178:
 804 00a4 0949     		ldr	r1, .L181
 805 00a6 40F25220 		movw	r0, #594
 806 00aa FFF7FEFF 		bl	vAssertCalled
 807 00ae 002C     		cmp	r4, #0
 808 00b0 B1D1     		bne	.L161
 809              	.L179:
 810 00b2 0649     		ldr	r1, .L181
 811 00b4 40F25320 		movw	r0, #595
 812 00b8 FFF7FEFF 		bl	vAssertCalled
 813 00bc ABE7     		b	.L161
 814              	.L180:
 815 00be 0422     		movs	r2, #4
 816 00c0 03A9     		add	r1, sp, #12
 817 00c2 2046     		mov	r0, r4
 818 00c4 FFF7FEFF 		bl	prvWriteBytesToBuffer
 819 00c8 039A     		ldr	r2, [sp, #12]
 820 00ca B8E7     		b	.L166
 821              	.L182:
 822              		.align	2
 823              	.L181:
 824 00cc 00000000 		.word	.LC0
 825              		.size	xStreamBufferSendFromISR, .-xStreamBufferSendFromISR
 826              		.section	.text.xStreamBufferReceive,"ax",%progbits
 827              		.align	1
 828              		.p2align 2,,3
 829              		.global	xStreamBufferReceive
 830              		.syntax unified
 831              		.thumb
 832              		.thumb_func
 833              		.fpu fpv4-sp-d16
 834              		.type	xStreamBufferReceive, %function
 835              	xStreamBufferReceive:
 836              		@ args = 0, pretend = 0, frame = 0
 837              		@ frame_needed = 0, uses_anonymous_args = 0
 838 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 839 0004 0546     		mov	r5, r0
 840 0006 83B0     		sub	sp, sp, #12
 841 0008 9046     		mov	r8, r2
 842 000a 9946     		mov	r9, r3
 843 000c 0F46     		mov	r7, r1
 844 000e 0029     		cmp	r1, #0
 845 0010 43D0     		beq	.L210
 846 0012 002D     		cmp	r5, #0
 847 0014 48D0     		beq	.L211
 848              	.L185:
 849 0016 2B7F     		ldrb	r3, [r5, #28]	@ zero_extendqisi2
 850 0018 13F0010F 		tst	r3, #1
 851 001c 14BF     		ite	ne
 852 001e 0426     		movne	r6, #4
 853 0020 0026     		moveq	r6, #0
 854 0022 B9F1000F 		cmp	r9, #0
 855 0026 0ED1     		bne	.L212
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 16


 856 0028 AA68     		ldr	r2, [r5, #8]
 857 002a 6C68     		ldr	r4, [r5, #4]
 858              	.L209:
 859 002c 2B68     		ldr	r3, [r5]
 860 002e 1444     		add	r4, r4, r2
 861 0030 E41A     		subs	r4, r4, r3
 862 0032 A242     		cmp	r2, r4
 863 0034 98BF     		it	ls
 864 0036 A41A     		subls	r4, r4, r2
 865 0038 B442     		cmp	r4, r6
 866 003a 12D8     		bhi	.L192
 867              	.L194:
 868 003c 0024     		movs	r4, #0
 869 003e 2046     		mov	r0, r4
 870 0040 03B0     		add	sp, sp, #12
 871              		@ sp needed
 872 0042 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 873              	.L212:
 874 0046 FFF7FEFF 		bl	vPortEnterCritical
 875 004a AA68     		ldr	r2, [r5, #8]
 876 004c 6C68     		ldr	r4, [r5, #4]
 877 004e 2B68     		ldr	r3, [r5]
 878 0050 1444     		add	r4, r4, r2
 879 0052 E41A     		subs	r4, r4, r3
 880 0054 A242     		cmp	r2, r4
 881 0056 98BF     		it	ls
 882 0058 A41A     		subls	r4, r4, r2
 883 005a A642     		cmp	r6, r4
 884 005c 2AD2     		bcs	.L213
 885 005e FFF7FEFF 		bl	vPortExitCritical
 886              	.L192:
 887 0062 2346     		mov	r3, r4
 888 0064 0096     		str	r6, [sp]
 889 0066 4246     		mov	r2, r8
 890 0068 3946     		mov	r1, r7
 891 006a 2846     		mov	r0, r5
 892 006c FFF7FEFF 		bl	prvReadMessageFromBuffer
 893 0070 0446     		mov	r4, r0
 894 0072 0028     		cmp	r0, #0
 895 0074 E2D0     		beq	.L194
 896 0076 FFF7FEFF 		bl	vTaskSuspendAll
 897 007a 6B69     		ldr	r3, [r5, #20]
 898 007c 3BB1     		cbz	r3, .L195
 899 007e 0023     		movs	r3, #0
 900 0080 1A46     		mov	r2, r3
 901 0082 1946     		mov	r1, r3
 902 0084 6869     		ldr	r0, [r5, #20]
 903 0086 FFF7FEFF 		bl	xTaskGenericNotify
 904 008a 0023     		movs	r3, #0
 905 008c 6B61     		str	r3, [r5, #20]
 906              	.L195:
 907 008e FFF7FEFF 		bl	xTaskResumeAll
 908 0092 2046     		mov	r0, r4
 909 0094 03B0     		add	sp, sp, #12
 910              		@ sp needed
 911 0096 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 912              	.L210:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 17


 913 009a 1449     		ldr	r1, .L214
 914 009c 4FF42E70 		mov	r0, #696
 915 00a0 FFF7FEFF 		bl	vAssertCalled
 916 00a4 002D     		cmp	r5, #0
 917 00a6 B6D1     		bne	.L185
 918              	.L211:
 919 00a8 1049     		ldr	r1, .L214
 920 00aa 40F2B920 		movw	r0, #697
 921 00ae FFF7FEFF 		bl	vAssertCalled
 922 00b2 B0E7     		b	.L185
 923              	.L213:
 924 00b4 0020     		movs	r0, #0
 925 00b6 FFF7FEFF 		bl	xTaskNotifyStateClear
 926 00ba 2B69     		ldr	r3, [r5, #16]
 927 00bc 23B1     		cbz	r3, .L190
 928 00be 0B49     		ldr	r1, .L214
 929 00c0 4FF43770 		mov	r0, #732
 930 00c4 FFF7FEFF 		bl	vAssertCalled
 931              	.L190:
 932 00c8 FFF7FEFF 		bl	xTaskGetCurrentTaskHandle
 933 00cc 2861     		str	r0, [r5, #16]
 934 00ce FFF7FEFF 		bl	vPortExitCritical
 935 00d2 0022     		movs	r2, #0
 936 00d4 4B46     		mov	r3, r9
 937 00d6 1046     		mov	r0, r2
 938 00d8 4FF0FF31 		mov	r1, #-1
 939 00dc FFF7FEFF 		bl	xTaskNotifyWait
 940 00e0 0023     		movs	r3, #0
 941 00e2 2B61     		str	r3, [r5, #16]
 942 00e4 6C68     		ldr	r4, [r5, #4]
 943 00e6 AA68     		ldr	r2, [r5, #8]
 944 00e8 A0E7     		b	.L209
 945              	.L215:
 946 00ea 00BF     		.align	2
 947              	.L214:
 948 00ec 00000000 		.word	.LC0
 949              		.size	xStreamBufferReceive, .-xStreamBufferReceive
 950              		.section	.text.xStreamBufferReceiveFromISR,"ax",%progbits
 951              		.align	1
 952              		.p2align 2,,3
 953              		.global	xStreamBufferReceiveFromISR
 954              		.syntax unified
 955              		.thumb
 956              		.thumb_func
 957              		.fpu fpv4-sp-d16
 958              		.type	xStreamBufferReceiveFromISR, %function
 959              	xStreamBufferReceiveFromISR:
 960              		@ args = 0, pretend = 0, frame = 0
 961              		@ frame_needed = 0, uses_anonymous_args = 0
 962 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 963 0002 0446     		mov	r4, r0
 964 0004 83B0     		sub	sp, sp, #12
 965 0006 1746     		mov	r7, r2
 966 0008 1E46     		mov	r6, r3
 967 000a 0D46     		mov	r5, r1
 968 000c 0029     		cmp	r1, #0
 969 000e 38D0     		beq	.L233
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 18


 970 0010 002C     		cmp	r4, #0
 971 0012 3DD0     		beq	.L234
 972              	.L218:
 973 0014 A168     		ldr	r1, [r4, #8]
 974 0016 6368     		ldr	r3, [r4, #4]
 975 0018 227F     		ldrb	r2, [r4, #28]	@ zero_extendqisi2
 976 001a 2068     		ldr	r0, [r4]
 977 001c 0B44     		add	r3, r3, r1
 978 001e 1B1A     		subs	r3, r3, r0
 979 0020 12F0010F 		tst	r2, #1
 980 0024 14BF     		ite	ne
 981 0026 0420     		movne	r0, #4
 982 0028 0020     		moveq	r0, #0
 983 002a 9942     		cmp	r1, r3
 984 002c 98BF     		it	ls
 985 002e 5B1A     		subls	r3, r3, r1
 986 0030 9842     		cmp	r0, r3
 987 0032 03D3     		bcc	.L221
 988              	.L223:
 989 0034 0025     		movs	r5, #0
 990 0036 2846     		mov	r0, r5
 991 0038 03B0     		add	sp, sp, #12
 992              		@ sp needed
 993 003a F0BD     		pop	{r4, r5, r6, r7, pc}
 994              	.L221:
 995 003c 0090     		str	r0, [sp]
 996 003e 2946     		mov	r1, r5
 997 0040 3A46     		mov	r2, r7
 998 0042 2046     		mov	r0, r4
 999 0044 FFF7FEFF 		bl	prvReadMessageFromBuffer
 1000 0048 0546     		mov	r5, r0
 1001 004a 0028     		cmp	r0, #0
 1002 004c F2D0     		beq	.L223
 1003              		.syntax unified
 1004              	@ 212 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 1005 004e EFF31187 			mrs r7, basepri											
 1006 0052 4FF05003 		mov r3, #80												
 1007 0056 83F31188 		msr basepri, r3											
 1008 005a BFF36F8F 		isb														
 1009 005e BFF34F8F 		dsb														
 1010              	
 1011              	@ 0 "" 2
 1012              		.thumb
 1013              		.syntax unified
 1014 0062 6369     		ldr	r3, [r4, #20]
 1015 0064 43B1     		cbz	r3, .L224
 1016 0066 0023     		movs	r3, #0
 1017 0068 6069     		ldr	r0, [r4, #20]
 1018 006a 0096     		str	r6, [sp]
 1019 006c 1A46     		mov	r2, r3
 1020 006e 1946     		mov	r1, r3
 1021 0070 FFF7FEFF 		bl	xTaskGenericNotifyFromISR
 1022 0074 0023     		movs	r3, #0
 1023 0076 6361     		str	r3, [r4, #20]
 1024              	.L224:
 1025              		.syntax unified
 1026              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 19


 1027 0078 87F31188 			msr basepri, r7	
 1028              	@ 0 "" 2
 1029              		.thumb
 1030              		.syntax unified
 1031 007c 2846     		mov	r0, r5
 1032 007e 03B0     		add	sp, sp, #12
 1033              		@ sp needed
 1034 0080 F0BD     		pop	{r4, r5, r6, r7, pc}
 1035              	.L233:
 1036 0082 0649     		ldr	r1, .L235
 1037 0084 4FF44870 		mov	r0, #800
 1038 0088 FFF7FEFF 		bl	vAssertCalled
 1039 008c 002C     		cmp	r4, #0
 1040 008e C1D1     		bne	.L218
 1041              	.L234:
 1042 0090 0249     		ldr	r1, .L235
 1043 0092 40F22130 		movw	r0, #801
 1044 0096 FFF7FEFF 		bl	vAssertCalled
 1045 009a BBE7     		b	.L218
 1046              	.L236:
 1047              		.align	2
 1048              	.L235:
 1049 009c 00000000 		.word	.LC0
 1050              		.size	xStreamBufferReceiveFromISR, .-xStreamBufferReceiveFromISR
 1051              		.section	.text.xStreamBufferIsEmpty,"ax",%progbits
 1052              		.align	1
 1053              		.p2align 2,,3
 1054              		.global	xStreamBufferIsEmpty
 1055              		.syntax unified
 1056              		.thumb
 1057              		.thumb_func
 1058              		.fpu fpv4-sp-d16
 1059              		.type	xStreamBufferIsEmpty, %function
 1060              	xStreamBufferIsEmpty:
 1061              		@ args = 0, pretend = 0, frame = 0
 1062              		@ frame_needed = 0, uses_anonymous_args = 0
 1063 0000 10B5     		push	{r4, lr}
 1064 0002 0446     		mov	r4, r0
 1065 0004 30B1     		cbz	r0, .L240
 1066              	.L238:
 1067 0006 2368     		ldr	r3, [r4]
 1068 0008 6068     		ldr	r0, [r4, #4]
 1069 000a C01A     		subs	r0, r0, r3
 1070 000c B0FA80F0 		clz	r0, r0
 1071 0010 4009     		lsrs	r0, r0, #5
 1072 0012 10BD     		pop	{r4, pc}
 1073              	.L240:
 1074 0014 0249     		ldr	r1, .L241
 1075 0016 40F28930 		movw	r0, #905
 1076 001a FFF7FEFF 		bl	vAssertCalled
 1077 001e F2E7     		b	.L238
 1078              	.L242:
 1079              		.align	2
 1080              	.L241:
 1081 0020 00000000 		.word	.LC0
 1082              		.size	xStreamBufferIsEmpty, .-xStreamBufferIsEmpty
 1083              		.section	.text.xStreamBufferIsFull,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 20


 1084              		.align	1
 1085              		.p2align 2,,3
 1086              		.global	xStreamBufferIsFull
 1087              		.syntax unified
 1088              		.thumb
 1089              		.thumb_func
 1090              		.fpu fpv4-sp-d16
 1091              		.type	xStreamBufferIsFull, %function
 1092              	xStreamBufferIsFull:
 1093              		@ args = 0, pretend = 0, frame = 0
 1094              		@ frame_needed = 0, uses_anonymous_args = 0
 1095 0000 10B5     		push	{r4, lr}
 1096 0002 0446     		mov	r4, r0
 1097 0004 68B1     		cbz	r0, .L248
 1098              	.L244:
 1099 0006 237F     		ldrb	r3, [r4, #28]	@ zero_extendqisi2
 1100 0008 2046     		mov	r0, r4
 1101 000a 13F0010F 		tst	r3, #1
 1102 000e 14BF     		ite	ne
 1103 0010 0424     		movne	r4, #4
 1104 0012 0024     		moveq	r4, #0
 1105 0014 FFF7FEFF 		bl	xStreamBufferSpacesAvailable
 1106 0018 A042     		cmp	r0, r4
 1107 001a 8CBF     		ite	hi
 1108 001c 0020     		movhi	r0, #0
 1109 001e 0120     		movls	r0, #1
 1110 0020 10BD     		pop	{r4, pc}
 1111              	.L248:
 1112 0022 0349     		ldr	r1, .L249
 1113 0024 4FF46870 		mov	r0, #928
 1114 0028 FFF7FEFF 		bl	vAssertCalled
 1115 002c EBE7     		b	.L244
 1116              	.L250:
 1117 002e 00BF     		.align	2
 1118              	.L249:
 1119 0030 00000000 		.word	.LC0
 1120              		.size	xStreamBufferIsFull, .-xStreamBufferIsFull
 1121              		.section	.text.xStreamBufferSendCompletedFromISR,"ax",%progbits
 1122              		.align	1
 1123              		.p2align 2,,3
 1124              		.global	xStreamBufferSendCompletedFromISR
 1125              		.syntax unified
 1126              		.thumb
 1127              		.thumb_func
 1128              		.fpu fpv4-sp-d16
 1129              		.type	xStreamBufferSendCompletedFromISR, %function
 1130              	xStreamBufferSendCompletedFromISR:
 1131              		@ args = 0, pretend = 0, frame = 0
 1132              		@ frame_needed = 0, uses_anonymous_args = 0
 1133 0000 70B5     		push	{r4, r5, r6, lr}
 1134 0002 0E46     		mov	r6, r1
 1135 0004 82B0     		sub	sp, sp, #8
 1136 0006 0446     		mov	r4, r0
 1137 0008 C8B1     		cbz	r0, .L256
 1138              	.L252:
 1139              		.syntax unified
 1140              	@ 212 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 21


 1141 000a EFF31185 			mrs r5, basepri											
 1142 000e 4FF05003 		mov r3, #80												
 1143 0012 83F31188 		msr basepri, r3											
 1144 0016 BFF36F8F 		isb														
 1145 001a BFF34F8F 		dsb														
 1146              	
 1147              	@ 0 "" 2
 1148              		.thumb
 1149              		.syntax unified
 1150 001e 2069     		ldr	r0, [r4, #16]
 1151 0020 48B1     		cbz	r0, .L253
 1152 0022 0023     		movs	r3, #0
 1153 0024 2069     		ldr	r0, [r4, #16]
 1154 0026 0096     		str	r6, [sp]
 1155 0028 1A46     		mov	r2, r3
 1156 002a 1946     		mov	r1, r3
 1157 002c FFF7FEFF 		bl	xTaskGenericNotifyFromISR
 1158 0030 0023     		movs	r3, #0
 1159 0032 2361     		str	r3, [r4, #16]
 1160 0034 0120     		movs	r0, #1
 1161              	.L253:
 1162              		.syntax unified
 1163              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 1164 0036 85F31188 			msr basepri, r5	
 1165              	@ 0 "" 2
 1166              		.thumb
 1167              		.syntax unified
 1168 003a 02B0     		add	sp, sp, #8
 1169              		@ sp needed
 1170 003c 70BD     		pop	{r4, r5, r6, pc}
 1171              	.L256:
 1172 003e 0349     		ldr	r1, .L257
 1173 0040 40F2C330 		movw	r0, #963
 1174 0044 FFF7FEFF 		bl	vAssertCalled
 1175 0048 DFE7     		b	.L252
 1176              	.L258:
 1177 004a 00BF     		.align	2
 1178              	.L257:
 1179 004c 00000000 		.word	.LC0
 1180              		.size	xStreamBufferSendCompletedFromISR, .-xStreamBufferSendCompletedFromISR
 1181              		.section	.text.xStreamBufferReceiveCompletedFromISR,"ax",%progbits
 1182              		.align	1
 1183              		.p2align 2,,3
 1184              		.global	xStreamBufferReceiveCompletedFromISR
 1185              		.syntax unified
 1186              		.thumb
 1187              		.thumb_func
 1188              		.fpu fpv4-sp-d16
 1189              		.type	xStreamBufferReceiveCompletedFromISR, %function
 1190              	xStreamBufferReceiveCompletedFromISR:
 1191              		@ args = 0, pretend = 0, frame = 0
 1192              		@ frame_needed = 0, uses_anonymous_args = 0
 1193 0000 70B5     		push	{r4, r5, r6, lr}
 1194 0002 0E46     		mov	r6, r1
 1195 0004 82B0     		sub	sp, sp, #8
 1196 0006 0446     		mov	r4, r0
 1197 0008 C8B1     		cbz	r0, .L264
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 22


 1198              	.L260:
 1199              		.syntax unified
 1200              	@ 212 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 1201 000a EFF31185 			mrs r5, basepri											
 1202 000e 4FF05003 		mov r3, #80												
 1203 0012 83F31188 		msr basepri, r3											
 1204 0016 BFF36F8F 		isb														
 1205 001a BFF34F8F 		dsb														
 1206              	
 1207              	@ 0 "" 2
 1208              		.thumb
 1209              		.syntax unified
 1210 001e 6069     		ldr	r0, [r4, #20]
 1211 0020 48B1     		cbz	r0, .L261
 1212 0022 0023     		movs	r3, #0
 1213 0024 6069     		ldr	r0, [r4, #20]
 1214 0026 0096     		str	r6, [sp]
 1215 0028 1A46     		mov	r2, r3
 1216 002a 1946     		mov	r1, r3
 1217 002c FFF7FEFF 		bl	xTaskGenericNotifyFromISR
 1218 0030 0023     		movs	r3, #0
 1219 0032 6361     		str	r3, [r4, #20]
 1220 0034 0120     		movs	r0, #1
 1221              	.L261:
 1222              		.syntax unified
 1223              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 1224 0036 85F31188 			msr basepri, r5	
 1225              	@ 0 "" 2
 1226              		.thumb
 1227              		.syntax unified
 1228 003a 02B0     		add	sp, sp, #8
 1229              		@ sp needed
 1230 003c 70BD     		pop	{r4, r5, r6, pc}
 1231              	.L264:
 1232 003e 0349     		ldr	r1, .L265
 1233 0040 40F2E130 		movw	r0, #993
 1234 0044 FFF7FEFF 		bl	vAssertCalled
 1235 0048 DFE7     		b	.L260
 1236              	.L266:
 1237 004a 00BF     		.align	2
 1238              	.L265:
 1239 004c 00000000 		.word	.LC0
 1240              		.size	xStreamBufferReceiveCompletedFromISR, .-xStreamBufferReceiveCompletedFromISR
 1241              		.section	.text.uxStreamBufferGetStreamBufferNumber,"ax",%progbits
 1242              		.align	1
 1243              		.p2align 2,,3
 1244              		.global	uxStreamBufferGetStreamBufferNumber
 1245              		.syntax unified
 1246              		.thumb
 1247              		.thumb_func
 1248              		.fpu fpv4-sp-d16
 1249              		.type	uxStreamBufferGetStreamBufferNumber, %function
 1250              	uxStreamBufferGetStreamBufferNumber:
 1251              		@ args = 0, pretend = 0, frame = 0
 1252              		@ frame_needed = 0, uses_anonymous_args = 0
 1253              		@ link register save eliminated.
 1254 0000 006A     		ldr	r0, [r0, #32]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8DYR1d.s 			page 23


 1255 0002 7047     		bx	lr
 1256              		.size	uxStreamBufferGetStreamBufferNumber, .-uxStreamBufferGetStreamBufferNumber
 1257              		.section	.text.vStreamBufferSetStreamBufferNumber,"ax",%progbits
 1258              		.align	1
 1259              		.p2align 2,,3
 1260              		.global	vStreamBufferSetStreamBufferNumber
 1261              		.syntax unified
 1262              		.thumb
 1263              		.thumb_func
 1264              		.fpu fpv4-sp-d16
 1265              		.type	vStreamBufferSetStreamBufferNumber, %function
 1266              	vStreamBufferSetStreamBufferNumber:
 1267              		@ args = 0, pretend = 0, frame = 0
 1268              		@ frame_needed = 0, uses_anonymous_args = 0
 1269              		@ link register save eliminated.
 1270 0000 0162     		str	r1, [r0, #32]
 1271 0002 7047     		bx	lr
 1272              		.size	vStreamBufferSetStreamBufferNumber, .-vStreamBufferSetStreamBufferNumber
 1273              		.section	.text.ucStreamBufferGetStreamBufferType,"ax",%progbits
 1274              		.align	1
 1275              		.p2align 2,,3
 1276              		.global	ucStreamBufferGetStreamBufferType
 1277              		.syntax unified
 1278              		.thumb
 1279              		.thumb_func
 1280              		.fpu fpv4-sp-d16
 1281              		.type	ucStreamBufferGetStreamBufferType, %function
 1282              	ucStreamBufferGetStreamBufferType:
 1283              		@ args = 0, pretend = 0, frame = 0
 1284              		@ frame_needed = 0, uses_anonymous_args = 0
 1285              		@ link register save eliminated.
 1286 0000 007F     		ldrb	r0, [r0, #28]	@ zero_extendqisi2
 1287 0002 40F00100 		orr	r0, r0, #1
 1288 0006 7047     		bx	lr
 1289              		.size	ucStreamBufferGetStreamBufferType, .-ucStreamBufferGetStreamBufferType
 1290              		.section	.rodata.prvInitialiseNewStreamBuffer.str1.4,"aMS",%progbits,1
 1291              		.align	2
 1292              	.LC0:
 1293 0000 2E2E2F73 		.ascii	"../src/stream_buffer.c\000"
 1293      72632F73 
 1293      74726561 
 1293      6D5F6275 
 1293      66666572 
 1294              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
