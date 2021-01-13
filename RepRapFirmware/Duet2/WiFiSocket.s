ARM GAS  /tmp/cckOLcPY.s 			page 1


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
  13              		.file	"WiFiSocket.cpp"
  14              		.section	.text._ZN10WiFiSocket19TerminateAndDisableEv,"axG",%progbits,_ZN10WiFiSocket19TerminateAn
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZN10WiFiSocket19TerminateAndDisableEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN10WiFiSocket19TerminateAndDisableEv, %function
  23              	_ZN10WiFiSocket19TerminateAndDisableEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0368     		ldr	r3, [r0]
  28 0002 9B68     		ldr	r3, [r3, #8]
  29 0004 1847     		bx	r3	@ indirect register sibling call
  30              		.size	_ZN10WiFiSocket19TerminateAndDisableEv, .-_ZN10WiFiSocket19TerminateAndDisableEv
  31 0006 00BF     		.section	.text._ZNK10WiFiSocket7CanSendEv,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.global	_ZNK10WiFiSocket7CanSendEv
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	_ZNK10WiFiSocket7CanSendEv, %function
  40              	_ZNK10WiFiSocket7CanSendEv:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43              		@ link register save eliminated.
  44 0000 90F82300 		ldrb	r0, [r0, #35]	@ zero_extendqisi2
  45 0004 A0F10200 		sub	r0, #2
  46 0008 B0FA80F0 		clz	r0, r0
  47 000c 4009     		lsrs	r0, r0, #5
  48 000e 7047     		bx	lr
  49              		.size	_ZNK10WiFiSocket7CanSendEv, .-_ZNK10WiFiSocket7CanSendEv
  50              		.section	.text._ZN10WiFiSocket10ReadBufferERPKhRj,"ax",%progbits
  51              		.align	1
  52              		.p2align 2,,3
  53              		.global	_ZN10WiFiSocket10ReadBufferERPKhRj
  54              		.syntax unified
  55              		.thumb
  56              		.thumb_func
  57              		.fpu fpv4-sp-d16
ARM GAS  /tmp/cckOLcPY.s 			page 2


  58              		.type	_ZN10WiFiSocket10ReadBufferERPKhRj, %function
  59              	_ZN10WiFiSocket10ReadBufferERPKhRj:
  60              		@ args = 0, pretend = 0, frame = 0
  61              		@ frame_needed = 0, uses_anonymous_args = 0
  62              		@ link register save eliminated.
  63 0000 8069     		ldr	r0, [r0, #24]
  64 0002 60B1     		cbz	r0, .L8
  65 0004 10B4     		push	{r4}
  66 0006 D0E90134 		ldrd	r3, r4, [r0, #4]
  67 000a 1B1B     		subs	r3, r3, r4
  68 000c 1360     		str	r3, [r2]
  69 000e 8368     		ldr	r3, [r0, #8]
  70 0010 5DF8044B 		ldr	r4, [sp], #4
  71 0014 0C30     		adds	r0, r0, #12
  72 0016 1844     		add	r0, r0, r3
  73 0018 0860     		str	r0, [r1]
  74 001a 0120     		movs	r0, #1
  75 001c 7047     		bx	lr
  76              	.L8:
  77 001e 7047     		bx	lr
  78              		.size	_ZN10WiFiSocket10ReadBufferERPKhRj, .-_ZN10WiFiSocket10ReadBufferERPKhRj
  79              		.section	.text._ZN10WiFiSocket8ReadCharERc,"ax",%progbits
  80              		.align	1
  81              		.p2align 2,,3
  82              		.global	_ZN10WiFiSocket8ReadCharERc
  83              		.syntax unified
  84              		.thumb
  85              		.thumb_func
  86              		.fpu fpv4-sp-d16
  87              		.type	_ZN10WiFiSocket8ReadCharERc, %function
  88              	_ZN10WiFiSocket8ReadCharERc:
  89              		@ args = 0, pretend = 0, frame = 0
  90              		@ frame_needed = 0, uses_anonymous_args = 0
  91 0000 38B5     		push	{r3, r4, r5, lr}
  92 0002 8469     		ldr	r4, [r0, #24]
  93 0004 5CB1     		cbz	r4, .L12
  94 0006 0546     		mov	r5, r0
  95 0008 2046     		mov	r0, r4
  96 000a FFF7FEFF 		bl	_ZN13NetworkBuffer8ReadCharERc
  97 000e 0446     		mov	r4, r0
  98 0010 A869     		ldr	r0, [r5, #24]
  99 0012 D0E90123 		ldrd	r2, r3, [r0, #4]
 100 0016 9A42     		cmp	r2, r3
 101 0018 04D0     		beq	.L15
 102 001a 2046     		mov	r0, r4
 103 001c 38BD     		pop	{r3, r4, r5, pc}
 104              	.L12:
 105 001e 0C70     		strb	r4, [r1]
 106 0020 2046     		mov	r0, r4
 107 0022 38BD     		pop	{r3, r4, r5, pc}
 108              	.L15:
 109 0024 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 110 0028 A861     		str	r0, [r5, #24]
 111 002a 2046     		mov	r0, r4
 112 002c 38BD     		pop	{r3, r4, r5, pc}
 113              		.size	_ZN10WiFiSocket8ReadCharERc, .-_ZN10WiFiSocket8ReadCharERc
 114 002e 00BF     		.section	.text._ZN10WiFiSocket5TakenEj,"ax",%progbits
ARM GAS  /tmp/cckOLcPY.s 			page 3


 115              		.align	1
 116              		.p2align 2,,3
 117              		.global	_ZN10WiFiSocket5TakenEj
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu fpv4-sp-d16
 122              		.type	_ZN10WiFiSocket5TakenEj, %function
 123              	_ZN10WiFiSocket5TakenEj:
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126 0000 8369     		ldr	r3, [r0, #24]
 127 0002 3BB1     		cbz	r3, .L21
 128 0004 10B5     		push	{r4, lr}
 129 0006 D3E90124 		ldrd	r2, r4, [r3, #4]
 130 000a 2144     		add	r1, r1, r4
 131 000c 8A42     		cmp	r2, r1
 132 000e 9960     		str	r1, [r3, #8]
 133 0010 01D0     		beq	.L24
 134 0012 10BD     		pop	{r4, pc}
 135              	.L21:
 136 0014 7047     		bx	lr
 137              	.L24:
 138 0016 0446     		mov	r4, r0
 139 0018 1846     		mov	r0, r3
 140 001a FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 141 001e A061     		str	r0, [r4, #24]
 142 0020 10BD     		pop	{r4, pc}
 143              		.size	_ZN10WiFiSocket5TakenEj, .-_ZN10WiFiSocket5TakenEj
 144 0022 00BF     		.section	.text._ZN10WiFiSocket9TerminateEv,"ax",%progbits
 145              		.align	1
 146              		.p2align 2,,3
 147              		.global	_ZN10WiFiSocket9TerminateEv
 148              		.syntax unified
 149              		.thumb
 150              		.thumb_func
 151              		.fpu fpv4-sp-d16
 152              		.type	_ZN10WiFiSocket9TerminateEv, %function
 153              	_ZN10WiFiSocket9TerminateEv:
 154              		@ args = 0, pretend = 0, frame = 0
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156 0000 10B5     		push	{r4, lr}
 157 0002 90F82330 		ldrb	r3, [r0, #35]	@ zero_extendqisi2
 158 0006 84B0     		sub	sp, sp, #16
 159 0008 0446     		mov	r4, r0
 160 000a 53B9     		cbnz	r3, .L39
 161              	.L26:
 162 000c A069     		ldr	r0, [r4, #24]
 163 000e 20B1     		cbz	r0, .L28
 164              	.L29:
 165 0010 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 166 0014 A061     		str	r0, [r4, #24]
 167 0016 0028     		cmp	r0, #0
 168 0018 FAD1     		bne	.L29
 169              	.L28:
 170 001a 0023     		movs	r3, #0
 171 001c 2384     		strh	r3, [r4, #32]	@ movhi
ARM GAS  /tmp/cckOLcPY.s 			page 4


 172 001e 04B0     		add	sp, sp, #16
 173              		@ sp needed
 174 0020 10BD     		pop	{r4, pc}
 175              	.L39:
 176 0022 0023     		movs	r3, #0
 177 0024 90F82220 		ldrb	r2, [r0, #34]	@ zero_extendqisi2
 178 0028 4068     		ldr	r0, [r0, #4]
 179 002a 0121     		movs	r1, #1
 180 002c CDE90233 		strd	r3, r3, [sp, #8]
 181 0030 CDE90033 		strd	r3, r3, [sp]
 182 0034 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 183 0038 0028     		cmp	r0, #0
 184 003a 14BF     		ite	ne
 185 003c 0523     		movne	r3, #5
 186 003e 0023     		moveq	r3, #0
 187 0040 84F82330 		strb	r3, [r4, #35]
 188 0044 E2E7     		b	.L26
 189              		.size	_ZN10WiFiSocket9TerminateEv, .-_ZN10WiFiSocket9TerminateEv
 190 0046 00BF     		.section	.text._ZNK10WiFiSocket7CanReadEv,"ax",%progbits
 191              		.align	1
 192              		.p2align 2,,3
 193              		.global	_ZNK10WiFiSocket7CanReadEv
 194              		.syntax unified
 195              		.thumb
 196              		.thumb_func
 197              		.fpu fpv4-sp-d16
 198              		.type	_ZNK10WiFiSocket7CanReadEv, %function
 199              	_ZNK10WiFiSocket7CanReadEv:
 200              		@ args = 0, pretend = 0, frame = 0
 201              		@ frame_needed = 0, uses_anonymous_args = 0
 202 0000 08B5     		push	{r3, lr}
 203 0002 90F82330 		ldrb	r3, [r0, #35]	@ zero_extendqisi2
 204 0006 022B     		cmp	r3, #2
 205 0008 0CD0     		beq	.L42
 206 000a 032B     		cmp	r3, #3
 207 000c 01D0     		beq	.L46
 208 000e 0020     		movs	r0, #0
 209              	.L41:
 210 0010 08BD     		pop	{r3, pc}
 211              	.L46:
 212 0012 8069     		ldr	r0, [r0, #24]
 213 0014 0028     		cmp	r0, #0
 214 0016 FBD0     		beq	.L41
 215 0018 FFF7FEFF 		bl	_ZNK13NetworkBuffer14TotalRemainingEv
 216 001c 0030     		adds	r0, r0, #0
 217 001e 18BF     		it	ne
 218 0020 0120     		movne	r0, #1
 219 0022 08BD     		pop	{r3, pc}
 220              	.L42:
 221 0024 0120     		movs	r0, #1
 222 0026 08BD     		pop	{r3, pc}
 223              		.size	_ZNK10WiFiSocket7CanReadEv, .-_ZNK10WiFiSocket7CanReadEv
 224              		.section	.text._ZN10WiFiSocket5CloseEv,"ax",%progbits
 225              		.align	1
 226              		.p2align 2,,3
 227              		.global	_ZN10WiFiSocket5CloseEv
 228              		.syntax unified
ARM GAS  /tmp/cckOLcPY.s 			page 5


 229              		.thumb
 230              		.thumb_func
 231              		.fpu fpv4-sp-d16
 232              		.type	_ZN10WiFiSocket5CloseEv, %function
 233              	_ZN10WiFiSocket5CloseEv:
 234              		@ args = 0, pretend = 0, frame = 0
 235              		@ frame_needed = 0, uses_anonymous_args = 0
 236 0000 10B5     		push	{r4, lr}
 237 0002 90F82330 		ldrb	r3, [r0, #35]	@ zero_extendqisi2
 238 0006 023B     		subs	r3, r3, #2
 239 0008 012B     		cmp	r3, #1
 240 000a 84B0     		sub	sp, sp, #16
 241 000c 0446     		mov	r4, r0
 242 000e 0ED9     		bls	.L58
 243              	.L48:
 244 0010 124B     		ldr	r3, .L60
 245 0012 9B6C     		ldr	r3, [r3, #72]	@ unaligned
 246 0014 9B07     		lsls	r3, r3, #30
 247 0016 06D4     		bmi	.L59
 248              	.L51:
 249 0018 2368     		ldr	r3, [r4]
 250 001a 9B68     		ldr	r3, [r3, #8]
 251 001c 2046     		mov	r0, r4
 252 001e 04B0     		add	sp, sp, #16
 253              		@ sp needed
 254 0020 BDE81040 		pop	{r4, lr}
 255 0024 1847     		bx	r3	@ indirect register sibling call
 256              	.L59:
 257 0026 0E48     		ldr	r0, .L60+4
 258 0028 FFF7FEFF 		bl	debugPrintf
 259 002c F4E7     		b	.L51
 260              	.L58:
 261 002e 0023     		movs	r3, #0
 262 0030 90F82220 		ldrb	r2, [r0, #34]	@ zero_extendqisi2
 263 0034 4068     		ldr	r0, [r0, #4]
 264 0036 0221     		movs	r1, #2
 265 0038 CDE90233 		strd	r3, r3, [sp, #8]
 266 003c CDE90033 		strd	r3, r3, [sp]
 267 0040 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 268 0044 0028     		cmp	r0, #0
 269 0046 E3D1     		bne	.L48
 270 0048 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 271 004c 022B     		cmp	r3, #2
 272 004e 0CBF     		ite	eq
 273 0050 0423     		moveq	r3, #4
 274 0052 0023     		movne	r3, #0
 275 0054 84F82330 		strb	r3, [r4, #35]
 276 0058 04B0     		add	sp, sp, #16
 277              		@ sp needed
 278 005a 10BD     		pop	{r4, pc}
 279              	.L61:
 280              		.align	2
 281              	.L60:
 282 005c 00000000 		.word	reprap
 283 0060 00000000 		.word	.LC0
 284              		.size	_ZN10WiFiSocket5CloseEv, .-_ZN10WiFiSocket5CloseEv
 285              		.section	.text._ZN10WiFiSocket4SendEv,"ax",%progbits
ARM GAS  /tmp/cckOLcPY.s 			page 6


 286              		.align	1
 287              		.p2align 2,,3
 288              		.global	_ZN10WiFiSocket4SendEv
 289              		.syntax unified
 290              		.thumb
 291              		.thumb_func
 292              		.fpu fpv4-sp-d16
 293              		.type	_ZN10WiFiSocket4SendEv, %function
 294              	_ZN10WiFiSocket4SendEv:
 295              		@ args = 0, pretend = 0, frame = 0
 296              		@ frame_needed = 0, uses_anonymous_args = 0
 297 0000 90F82330 		ldrb	r3, [r0, #35]	@ zero_extendqisi2
 298 0004 022B     		cmp	r3, #2
 299 0006 00D0     		beq	.L74
 300 0008 7047     		bx	lr
 301              	.L74:
 302 000a 10B5     		push	{r4, lr}
 303 000c 0021     		movs	r1, #0
 304 000e 84B0     		sub	sp, sp, #16
 305 0010 90F82220 		ldrb	r2, [r0, #34]	@ zero_extendqisi2
 306 0014 0446     		mov	r4, r0
 307 0016 4068     		ldr	r0, [r0, #4]
 308 0018 CDE90211 		strd	r1, r1, [sp, #8]
 309 001c CDE90011 		strd	r1, r1, [sp]
 310 0020 0521     		movs	r1, #5
 311 0022 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 312 0026 0028     		cmp	r0, #0
 313 0028 01DB     		blt	.L75
 314              	.L62:
 315 002a 04B0     		add	sp, sp, #16
 316              		@ sp needed
 317 002c 10BD     		pop	{r4, pc}
 318              	.L75:
 319 002e 064B     		ldr	r3, .L77
 320 0030 9B6C     		ldr	r3, [r3, #72]
 321 0032 9B07     		lsls	r3, r3, #30
 322 0034 03D4     		bmi	.L76
 323              	.L66:
 324 0036 0523     		movs	r3, #5
 325 0038 84F82330 		strb	r3, [r4, #35]
 326 003c F5E7     		b	.L62
 327              	.L76:
 328 003e 0348     		ldr	r0, .L77+4
 329 0040 FFF7FEFF 		bl	debugPrintf
 330 0044 F7E7     		b	.L66
 331              	.L78:
 332 0046 00BF     		.align	2
 333              	.L77:
 334 0048 00000000 		.word	reprap
 335 004c 00000000 		.word	.LC1
 336              		.size	_ZN10WiFiSocket4SendEv, .-_ZN10WiFiSocket4SendEv
 337              		.section	.text._ZN10WiFiSocket11ReceiveDataEt.part.10,"ax",%progbits
 338              		.align	1
 339              		.p2align 2,,3
 340              		.syntax unified
 341              		.thumb
 342              		.thumb_func
ARM GAS  /tmp/cckOLcPY.s 			page 7


 343              		.fpu fpv4-sp-d16
 344              		.type	_ZN10WiFiSocket11ReceiveDataEt.part.10, %function
 345              	_ZN10WiFiSocket11ReceiveDataEt.part.10:
 346              		@ args = 0, pretend = 0, frame = 0
 347              		@ frame_needed = 0, uses_anonymous_args = 0
 348 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 349 0002 0446     		mov	r4, r0
 350 0004 85B0     		sub	sp, sp, #20
 351 0006 8069     		ldr	r0, [r0, #24]
 352 0008 0F46     		mov	r7, r1
 353 000a FFF7FEFF 		bl	_ZN13NetworkBuffer8FindLastEPS_
 354 000e 0028     		cmp	r0, #0
 355 0010 36D0     		beq	.L106
 356 0012 4368     		ldr	r3, [r0, #4]
 357 0014 C3F50066 		rsb	r6, r3, #2048
 358 0018 B742     		cmp	r7, r6
 359 001a 0546     		mov	r5, r0
 360 001c 0CD9     		bls	.L81
 361 001e B3F5006F 		cmp	r3, #2048
 362 0022 04F11806 		add	r6, r4, #24
 363 0026 2DD0     		beq	.L80
 364 0028 3046     		mov	r0, r6
 365 002a FFF7FEFF 		bl	_ZN13NetworkBuffer5CountERPS_
 366 002e 0328     		cmp	r0, #3
 367 0030 28D9     		bls	.L80
 368 0032 6B68     		ldr	r3, [r5, #4]
 369 0034 C3F50066 		rsb	r6, r3, #2048
 370              	.L81:
 371 0038 B6F5006F 		cmp	r6, #2048
 372 003c 05F10C01 		add	r1, r5, #12
 373 0040 28BF     		it	cs
 374 0042 4FF40066 		movcs	r6, #2048
 375 0046 1944     		add	r1, r1, r3
 376 0048 0023     		movs	r3, #0
 377 004a 94F82220 		ldrb	r2, [r4, #34]	@ zero_extendqisi2
 378 004e 6068     		ldr	r0, [r4, #4]
 379 0050 CDE90216 		strd	r1, r6, [sp, #8]
 380 0054 CDE90033 		strd	r3, r3, [sp]
 381 0058 0421     		movs	r1, #4
 382 005a FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 383 005e 011E     		subs	r1, r0, #0
 384 0060 36DD     		ble	.L79
 385 0062 8E42     		cmp	r6, r1
 386 0064 34D3     		bcc	.L79
 387 0066 6B68     		ldr	r3, [r5, #4]
 388 0068 1E4A     		ldr	r2, .L108
 389 006a 0B44     		add	r3, r3, r1
 390 006c 6B60     		str	r3, [r5, #4]
 391 006e 936C     		ldr	r3, [r2, #72]
 392 0070 9A07     		lsls	r2, r3, #30
 393 0072 2DD5     		bpl	.L79
 394              	.L105:
 395 0074 1C48     		ldr	r0, .L108+4
 396 0076 05B0     		add	sp, sp, #20
 397              		@ sp needed
 398 0078 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 399 007c FFF7FEBF 		b	debugPrintf
ARM GAS  /tmp/cckOLcPY.s 			page 8


 400              	.L106:
 401 0080 04F11806 		add	r6, r4, #24
 402              	.L80:
 403 0084 3046     		mov	r0, r6
 404 0086 FFF7FEFF 		bl	_ZN13NetworkBuffer5CountERPS_
 405 008a 0328     		cmp	r0, #3
 406 008c 20D8     		bhi	.L79
 407 008e FFF7FEFF 		bl	_ZN13NetworkBuffer8AllocateEv
 408 0092 0546     		mov	r5, r0
 409 0094 E0B1     		cbz	r0, .L79
 410 0096 94F82220 		ldrb	r2, [r4, #34]	@ zero_extendqisi2
 411 009a 6068     		ldr	r0, [r4, #4]
 412 009c 0023     		movs	r3, #0
 413 009e 4FF40064 		mov	r4, #2048
 414 00a2 05F10C01 		add	r1, r5, #12
 415 00a6 CDE90214 		strd	r1, r4, [sp, #8]
 416 00aa CDE90033 		strd	r3, r3, [sp]
 417 00ae 0421     		movs	r1, #4
 418 00b0 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 419 00b4 431E     		subs	r3, r0, #1
 420 00b6 B3F5006F 		cmp	r3, #2048
 421 00ba 0446     		mov	r4, r0
 422 00bc 0AD2     		bcs	.L86
 423 00be 6860     		str	r0, [r5, #4]
 424 00c0 2946     		mov	r1, r5
 425 00c2 3046     		mov	r0, r6
 426 00c4 FFF7FEFF 		bl	_ZN13NetworkBuffer12AppendToListEPPS_S0_
 427 00c8 064B     		ldr	r3, .L108
 428 00ca 9B6C     		ldr	r3, [r3, #72]
 429 00cc 9B07     		lsls	r3, r3, #30
 430 00ce 07D4     		bmi	.L107
 431              	.L79:
 432 00d0 05B0     		add	sp, sp, #20
 433              		@ sp needed
 434 00d2 F0BD     		pop	{r4, r5, r6, r7, pc}
 435              	.L86:
 436 00d4 2846     		mov	r0, r5
 437 00d6 05B0     		add	sp, sp, #20
 438              		@ sp needed
 439 00d8 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 440 00dc FFF7FEBF 		b	_ZN13NetworkBuffer7ReleaseEv
 441              	.L107:
 442 00e0 2146     		mov	r1, r4
 443 00e2 C7E7     		b	.L105
 444              	.L109:
 445              		.align	2
 446              	.L108:
 447 00e4 00000000 		.word	reprap
 448 00e8 00000000 		.word	.LC2
 449              		.size	_ZN10WiFiSocket11ReceiveDataEt.part.10, .-_ZN10WiFiSocket11ReceiveDataEt.part.10
 450              		.section	.text._ZN10WiFiSocket4PollEb,"ax",%progbits
 451              		.align	1
 452              		.p2align 2,,3
 453              		.global	_ZN10WiFiSocket4PollEb
 454              		.syntax unified
 455              		.thumb
 456              		.thumb_func
ARM GAS  /tmp/cckOLcPY.s 			page 9


 457              		.fpu fpv4-sp-d16
 458              		.type	_ZN10WiFiSocket4PollEb, %function
 459              	_ZN10WiFiSocket4PollEb:
 460              		@ args = 0, pretend = 0, frame = 24
 461              		@ frame_needed = 0, uses_anonymous_args = 0
 462 0000 70B5     		push	{r4, r5, r6, lr}
 463 0002 8AB0     		sub	sp, sp, #40
 464 0004 1423     		movs	r3, #20
 465 0006 90F82220 		ldrb	r2, [r0, #34]	@ zero_extendqisi2
 466 000a 0025     		movs	r5, #0
 467 000c 0446     		mov	r4, r0
 468 000e 4068     		ldr	r0, [r0, #4]
 469 0010 0393     		str	r3, [sp, #12]
 470 0012 04AB     		add	r3, sp, #16
 471 0014 CDE90153 		strd	r5, r3, [sp, #4]
 472 0018 0E46     		mov	r6, r1
 473 001a 0095     		str	r5, [sp]
 474 001c 2B46     		mov	r3, r5
 475 001e 0621     		movs	r1, #6
 476 0020 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 477 0024 1428     		cmp	r0, #20
 478 0026 0AD0     		beq	.L111
 479 0028 6D4B     		ldr	r3, .L182
 480 002a 9B6C     		ldr	r3, [r3, #72]
 481 002c 9A07     		lsls	r2, r3, #30
 482 002e 01D4     		bmi	.L174
 483 0030 0AB0     		add	sp, sp, #40
 484              		@ sp needed
 485 0032 70BD     		pop	{r4, r5, r6, pc}
 486              	.L174:
 487 0034 6B48     		ldr	r0, .L182+4
 488 0036 FFF7FEFF 		bl	debugPrintf
 489 003a 0AB0     		add	sp, sp, #40
 490              		@ sp needed
 491 003c 70BD     		pop	{r4, r5, r6, pc}
 492              	.L111:
 493 003e BDF82220 		ldrh	r2, [sp, #34]
 494 0042 BDF82010 		ldrh	r1, [sp, #32]
 495 0046 6068     		ldr	r0, [r4, #4]
 496 0048 FFF7FEFF 		bl	_ZN13WiFiInterface18UpdateSocketStatusEtt
 497 004c 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 498 0050 032B     		cmp	r3, #3
 499 0052 0DD0     		beq	.L114
 500 0054 042B     		cmp	r3, #4
 501 0056 25D0     		beq	.L115
 502 0058 022B     		cmp	r3, #2
 503 005a 33D0     		beq	.L175
 504 005c 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 505 0060 5A1E     		subs	r2, r3, #1
 506 0062 012A     		cmp	r2, #1
 507 0064 79D9     		bls	.L176
 508 0066 042B     		cmp	r3, #4
 509 0068 08BF     		it	eq
 510 006a 84F82350 		strbeq	r5, [r4, #35]
 511 006e 24E0     		b	.L119
 512              	.L114:
 513 0070 BDF81C10 		ldrh	r1, [sp, #28]
ARM GAS  /tmp/cckOLcPY.s 			page 10


 514 0074 0029     		cmp	r1, #0
 515 0076 40F08380 		bne	.L177
 516              	.L117:
 517 007a 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 518 007e 032B     		cmp	r3, #3
 519 0080 00F08280 		beq	.L178
 520 0084 002B     		cmp	r3, #0
 521 0086 00F08480 		beq	.L120
 522 008a 0322     		movs	r2, #3
 523 008c 544B     		ldr	r3, .L182
 524 008e 84F82320 		strb	r2, [r4, #35]
 525 0092 9B6C     		ldr	r3, [r3, #72]
 526 0094 9B07     		lsls	r3, r3, #30
 527 0096 10D5     		bpl	.L119
 528 0098 94F82210 		ldrb	r1, [r4, #34]	@ zero_extendqisi2
 529 009c 5248     		ldr	r0, .L182+8
 530 009e FFF7FEFF 		bl	debugPrintf
 531 00a2 0AE0     		b	.L119
 532              	.L115:
 533 00a4 4E4B     		ldr	r3, .L182
 534 00a6 9B6C     		ldr	r3, [r3, #72]
 535 00a8 9A07     		lsls	r2, r3, #30
 536 00aa 63D4     		bmi	.L179
 537              	.L136:
 538 00ac 2368     		ldr	r3, [r4]
 539 00ae 0522     		movs	r2, #5
 540 00b0 9B68     		ldr	r3, [r3, #8]
 541 00b2 84F82320 		strb	r2, [r4, #35]
 542 00b6 2046     		mov	r0, r4
 543 00b8 9847     		blx	r3
 544              	.L119:
 545 00ba 0023     		movs	r3, #0
 546 00bc 84F82430 		strb	r3, [r4, #36]
 547 00c0 0AB0     		add	sp, sp, #40
 548              		@ sp needed
 549 00c2 70BD     		pop	{r4, r5, r6, pc}
 550              	.L175:
 551 00c4 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 552 00c8 002E     		cmp	r6, #0
 553 00ca 39D0     		beq	.L122
 554 00cc 022B     		cmp	r3, #2
 555 00ce 39D0     		beq	.L133
 556              	.L123:
 557 00d0 434D     		ldr	r5, .L182
 558 00d2 AB6C     		ldr	r3, [r5, #72]
 559 00d4 9E07     		lsls	r6, r3, #30
 560 00d6 5FD4     		bmi	.L180
 561              	.L126:
 562 00d8 A069     		ldr	r0, [r4, #24]
 563 00da BDF81410 		ldrh	r1, [sp, #20]
 564 00de BDF81620 		ldrh	r2, [sp, #22]
 565 00e2 069B     		ldr	r3, [sp, #24]
 566 00e4 2181     		strh	r1, [r4, #8]	@ movhi
 567 00e6 6281     		strh	r2, [r4, #10]	@ movhi
 568 00e8 2361     		str	r3, [r4, #16]
 569 00ea 20B1     		cbz	r0, .L127
 570              	.L128:
ARM GAS  /tmp/cckOLcPY.s 			page 11


 571 00ec FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 572 00f0 A061     		str	r0, [r4, #24]
 573 00f2 0028     		cmp	r0, #0
 574 00f4 FAD1     		bne	.L128
 575              	.L127:
 576 00f6 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 577 00fa 012B     		cmp	r3, #1
 578 00fc 0AD0     		beq	.L129
 579 00fe 2189     		ldrh	r1, [r4, #8]
 580 0100 6068     		ldr	r0, [r4, #4]
 581 0102 FFF7FEFF 		bl	_ZNK13WiFiInterface22GetProtocolByLocalPortEt
 582 0106 2073     		strb	r0, [r4, #12]
 583 0108 FFF7FEFF 		bl	millis
 584 010c 0123     		movs	r3, #1
 585 010e E061     		str	r0, [r4, #28]
 586 0110 84F82330 		strb	r3, [r4, #35]
 587              	.L129:
 588 0114 227B     		ldrb	r2, [r4, #12]	@ zero_extendqisi2
 589 0116 6868     		ldr	r0, [r5, #4]
 590 0118 2146     		mov	r1, r4
 591 011a FFF7FEFF 		bl	_ZN7Network13FindResponderEP6Socketh
 592 011e 0028     		cmp	r0, #0
 593 0120 41D0     		beq	.L130
 594 0122 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 595 0126 022B     		cmp	r3, #2
 596 0128 47D0     		beq	.L181
 597 012a 0323     		movs	r3, #3
 598 012c 84F82330 		strb	r3, [r4, #35]
 599 0130 AB6C     		ldr	r3, [r5, #72]
 600 0132 9807     		lsls	r0, r3, #30
 601 0134 C1D5     		bpl	.L119
 602              	.L132:
 603 0136 2D48     		ldr	r0, .L182+12
 604 0138 FFF7FEFF 		bl	debugPrintf
 605 013c 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 606              	.L122:
 607 0140 022B     		cmp	r3, #2
 608 0142 BAD1     		bne	.L119
 609              	.L133:
 610 0144 BDF81C10 		ldrh	r1, [sp, #28]
 611 0148 BDF81E30 		ldrh	r3, [sp, #30]
 612 014c 2384     		strh	r3, [r4, #32]	@ movhi
 613 014e 0029     		cmp	r1, #0
 614 0150 B3D0     		beq	.L119
 615 0152 2046     		mov	r0, r4
 616 0154 FFF7FEFF 		bl	_ZN10WiFiSocket11ReceiveDataEt.part.10
 617 0158 AFE7     		b	.L119
 618              	.L176:
 619 015a 214B     		ldr	r3, .L182
 620 015c 9B6C     		ldr	r3, [r3, #72]
 621 015e 9B07     		lsls	r3, r3, #30
 622 0160 04D5     		bpl	.L138
 623 0162 94F82210 		ldrb	r1, [r4, #34]	@ zero_extendqisi2
 624 0166 2248     		ldr	r0, .L182+16
 625 0168 FFF7FEFF 		bl	debugPrintf
 626              	.L138:
 627 016c 0523     		movs	r3, #5
ARM GAS  /tmp/cckOLcPY.s 			page 12


 628 016e 84F82330 		strb	r3, [r4, #35]
 629 0172 A2E7     		b	.L119
 630              	.L179:
 631 0174 94F82210 		ldrb	r1, [r4, #34]	@ zero_extendqisi2
 632 0178 1E48     		ldr	r0, .L182+20
 633 017a FFF7FEFF 		bl	debugPrintf
 634 017e 95E7     		b	.L136
 635              	.L177:
 636 0180 2046     		mov	r0, r4
 637 0182 FFF7FEFF 		bl	_ZN10WiFiSocket11ReceiveDataEt.part.10
 638 0186 78E7     		b	.L117
 639              	.L178:
 640 0188 2368     		ldr	r3, [r4]
 641 018a 2046     		mov	r0, r4
 642 018c 5B68     		ldr	r3, [r3, #4]
 643 018e 9847     		blx	r3
 644 0190 93E7     		b	.L119
 645              	.L120:
 646 0192 002E     		cmp	r6, #0
 647 0194 9CD1     		bne	.L123
 648 0196 90E7     		b	.L119
 649              	.L180:
 650 0198 2289     		ldrh	r2, [r4, #8]
 651 019a 94F82210 		ldrb	r1, [r4, #34]	@ zero_extendqisi2
 652 019e 1648     		ldr	r0, .L182+24
 653 01a0 FFF7FEFF 		bl	debugPrintf
 654 01a4 98E7     		b	.L126
 655              	.L130:
 656 01a6 FFF7FEFF 		bl	millis
 657 01aa E369     		ldr	r3, [r4, #28]
 658 01ac C31A     		subs	r3, r0, r3
 659 01ae B3F5FA6F 		cmp	r3, #2000
 660 01b2 08D2     		bcs	.L134
 661              	.L173:
 662 01b4 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 663 01b8 C2E7     		b	.L122
 664              	.L181:
 665 01ba 84F82330 		strb	r3, [r4, #35]
 666 01be AB6C     		ldr	r3, [r5, #72]
 667 01c0 9D07     		lsls	r5, r3, #30
 668 01c2 BFD5     		bpl	.L133
 669 01c4 B7E7     		b	.L132
 670              	.L134:
 671 01c6 2368     		ldr	r3, [r4]
 672 01c8 2046     		mov	r0, r4
 673 01ca 9B68     		ldr	r3, [r3, #8]
 674 01cc 9847     		blx	r3
 675 01ce AB6C     		ldr	r3, [r5, #72]
 676 01d0 9907     		lsls	r1, r3, #30
 677 01d2 EFD5     		bpl	.L173
 678 01d4 94F82210 		ldrb	r1, [r4, #34]	@ zero_extendqisi2
 679 01d8 0848     		ldr	r0, .L182+28
 680 01da FFF7FEFF 		bl	debugPrintf
 681 01de E9E7     		b	.L173
 682              	.L183:
 683              		.align	2
 684              	.L182:
ARM GAS  /tmp/cckOLcPY.s 			page 13


 685 01e0 00000000 		.word	reprap
 686 01e4 00000000 		.word	.LC3
 687 01e8 18000000 		.word	.LC4
 688 01ec 68000000 		.word	.LC6
 689 01f0 B8000000 		.word	.LC9
 690 01f4 A4000000 		.word	.LC8
 691 01f8 3C000000 		.word	.LC5
 692 01fc 7C000000 		.word	.LC7
 693              		.size	_ZN10WiFiSocket4PollEb, .-_ZN10WiFiSocket4PollEb
 694              		.section	.text._ZN10WiFiSocket4SendEPKhj,"ax",%progbits
 695              		.align	1
 696              		.p2align 2,,3
 697              		.global	_ZN10WiFiSocket4SendEPKhj
 698              		.syntax unified
 699              		.thumb
 700              		.thumb_func
 701              		.fpu fpv4-sp-d16
 702              		.type	_ZN10WiFiSocket4SendEPKhj, %function
 703              	_ZN10WiFiSocket4SendEPKhj:
 704              		@ args = 0, pretend = 0, frame = 0
 705              		@ frame_needed = 0, uses_anonymous_args = 0
 706 0000 90F82330 		ldrb	r3, [r0, #35]	@ zero_extendqisi2
 707 0004 022B     		cmp	r3, #2
 708 0006 01D0     		beq	.L198
 709              	.L189:
 710 0008 0020     		movs	r0, #0
 711 000a 7047     		bx	lr
 712              	.L198:
 713 000c 038C     		ldrh	r3, [r0, #32]
 714 000e 002B     		cmp	r3, #0
 715 0010 FAD0     		beq	.L189
 716 0012 30B5     		push	{r4, r5, lr}
 717 0014 B3F5006F 		cmp	r3, #2048
 718 0018 1546     		mov	r5, r2
 719 001a 28BF     		it	cs
 720 001c 4FF40063 		movcs	r3, #2048
 721 0020 85B0     		sub	sp, sp, #20
 722 0022 9D42     		cmp	r5, r3
 723 0024 28BF     		it	cs
 724 0026 1D46     		movcs	r5, r3
 725 0028 0023     		movs	r3, #0
 726 002a 90F82220 		ldrb	r2, [r0, #34]	@ zero_extendqisi2
 727 002e 0446     		mov	r4, r0
 728 0030 4068     		ldr	r0, [r0, #4]
 729 0032 0091     		str	r1, [sp]
 730 0034 0195     		str	r5, [sp, #4]
 731 0036 CDE90233 		strd	r3, r3, [sp, #8]
 732 003a 0521     		movs	r1, #5
 733 003c FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 734 0040 0028     		cmp	r0, #0
 735 0042 01DB     		blt	.L187
 736 0044 A842     		cmp	r0, r5
 737 0046 09D9     		bls	.L199
 738              	.L187:
 739 0048 084B     		ldr	r3, .L201
 740 004a 9B6C     		ldr	r3, [r3, #72]
 741 004c 9B07     		lsls	r3, r3, #30
ARM GAS  /tmp/cckOLcPY.s 			page 14


 742 004e 09D4     		bmi	.L200
 743              	.L188:
 744 0050 0523     		movs	r3, #5
 745 0052 84F82330 		strb	r3, [r4, #35]
 746 0056 0020     		movs	r0, #0
 747              	.L184:
 748 0058 05B0     		add	sp, sp, #20
 749              		@ sp needed
 750 005a 30BD     		pop	{r4, r5, pc}
 751              	.L199:
 752 005c 238C     		ldrh	r3, [r4, #32]
 753 005e 1B1A     		subs	r3, r3, r0
 754 0060 2384     		strh	r3, [r4, #32]	@ movhi
 755 0062 F9E7     		b	.L184
 756              	.L200:
 757 0064 0248     		ldr	r0, .L201+4
 758 0066 FFF7FEFF 		bl	debugPrintf
 759 006a F1E7     		b	.L188
 760              	.L202:
 761              		.align	2
 762              	.L201:
 763 006c 00000000 		.word	reprap
 764 0070 00000000 		.word	.LC1
 765              		.size	_ZN10WiFiSocket4SendEPKhj, .-_ZN10WiFiSocket4SendEPKhj
 766              		.section	.text._ZN10WiFiSocketC2EP16NetworkInterface,"ax",%progbits
 767              		.align	1
 768              		.p2align 2,,3
 769              		.global	_ZN10WiFiSocketC2EP16NetworkInterface
 770              		.syntax unified
 771              		.thumb
 772              		.thumb_func
 773              		.fpu fpv4-sp-d16
 774              		.type	_ZN10WiFiSocketC2EP16NetworkInterface, %function
 775              	_ZN10WiFiSocketC2EP16NetworkInterface:
 776              		@ args = 0, pretend = 0, frame = 0
 777              		@ frame_needed = 0, uses_anonymous_args = 0
 778              		@ link register save eliminated.
 779 0000 0022     		movs	r2, #0
 780 0002 10B4     		push	{r4}
 781 0004 064C     		ldr	r4, .L205
 782 0006 0460     		str	r4, [r0]
 783 0008 4160     		str	r1, [r0, #4]
 784 000a 8260     		str	r2, [r0, #8]
 785 000c 0261     		str	r2, [r0, #16]
 786 000e 0275     		strb	r2, [r0, #20]
 787 0010 8261     		str	r2, [r0, #24]
 788 0012 80F82320 		strb	r2, [r0, #35]
 789 0016 80F82420 		strb	r2, [r0, #36]
 790 001a 5DF8044B 		ldr	r4, [sp], #4
 791 001e 7047     		bx	lr
 792              	.L206:
 793              		.align	2
 794              	.L205:
 795 0020 08000000 		.word	.LANCHOR0+8
 796              		.size	_ZN10WiFiSocketC2EP16NetworkInterface, .-_ZN10WiFiSocketC2EP16NetworkInterface
 797              		.global	_ZN10WiFiSocketC1EP16NetworkInterface
 798              		.thumb_set _ZN10WiFiSocketC1EP16NetworkInterface,_ZN10WiFiSocketC2EP16NetworkInterface
ARM GAS  /tmp/cckOLcPY.s 			page 15


 799              		.section	.text._ZN10WiFiSocket4InitEh,"ax",%progbits
 800              		.align	1
 801              		.p2align 2,,3
 802              		.global	_ZN10WiFiSocket4InitEh
 803              		.syntax unified
 804              		.thumb
 805              		.thumb_func
 806              		.fpu fpv4-sp-d16
 807              		.type	_ZN10WiFiSocket4InitEh, %function
 808              	_ZN10WiFiSocket4InitEh:
 809              		@ args = 0, pretend = 0, frame = 0
 810              		@ frame_needed = 0, uses_anonymous_args = 0
 811              		@ link register save eliminated.
 812 0000 0023     		movs	r3, #0
 813 0002 80F82210 		strb	r1, [r0, #34]
 814 0006 80F82330 		strb	r3, [r0, #35]
 815 000a 0384     		strh	r3, [r0, #32]	@ movhi
 816 000c 7047     		bx	lr
 817              		.size	_ZN10WiFiSocket4InitEh, .-_ZN10WiFiSocket4InitEh
 818 000e 00BF     		.section	.text._ZNK10WiFiSocket12GetInterfaceEv,"ax",%progbits
 819              		.align	1
 820              		.p2align 2,,3
 821              		.global	_ZNK10WiFiSocket12GetInterfaceEv
 822              		.syntax unified
 823              		.thumb
 824              		.thumb_func
 825              		.fpu fpv4-sp-d16
 826              		.type	_ZNK10WiFiSocket12GetInterfaceEv, %function
 827              	_ZNK10WiFiSocket12GetInterfaceEv:
 828              		@ args = 0, pretend = 0, frame = 0
 829              		@ frame_needed = 0, uses_anonymous_args = 0
 830              		@ link register save eliminated.
 831 0000 4068     		ldr	r0, [r0, #4]
 832 0002 7047     		bx	lr
 833              		.size	_ZNK10WiFiSocket12GetInterfaceEv, .-_ZNK10WiFiSocket12GetInterfaceEv
 834              		.section	.text._ZN10WiFiSocket11ReceiveDataEt,"ax",%progbits
 835              		.align	1
 836              		.p2align 2,,3
 837              		.global	_ZN10WiFiSocket11ReceiveDataEt
 838              		.syntax unified
 839              		.thumb
 840              		.thumb_func
 841              		.fpu fpv4-sp-d16
 842              		.type	_ZN10WiFiSocket11ReceiveDataEt, %function
 843              	_ZN10WiFiSocket11ReceiveDataEt:
 844              		@ args = 0, pretend = 0, frame = 0
 845              		@ frame_needed = 0, uses_anonymous_args = 0
 846              		@ link register save eliminated.
 847 0000 01B9     		cbnz	r1, .L211
 848 0002 7047     		bx	lr
 849              	.L211:
 850 0004 FFF7FEBF 		b	_ZN10WiFiSocket11ReceiveDataEt.part.10
 851              		.size	_ZN10WiFiSocket11ReceiveDataEt, .-_ZN10WiFiSocket11ReceiveDataEt
 852              		.section	.text._ZN10WiFiSocket19DiscardReceivedDataEv,"ax",%progbits
 853              		.align	1
 854              		.p2align 2,,3
 855              		.global	_ZN10WiFiSocket19DiscardReceivedDataEv
ARM GAS  /tmp/cckOLcPY.s 			page 16


 856              		.syntax unified
 857              		.thumb
 858              		.thumb_func
 859              		.fpu fpv4-sp-d16
 860              		.type	_ZN10WiFiSocket19DiscardReceivedDataEv, %function
 861              	_ZN10WiFiSocket19DiscardReceivedDataEv:
 862              		@ args = 0, pretend = 0, frame = 0
 863              		@ frame_needed = 0, uses_anonymous_args = 0
 864 0000 10B5     		push	{r4, lr}
 865 0002 0446     		mov	r4, r0
 866 0004 8069     		ldr	r0, [r0, #24]
 867 0006 20B1     		cbz	r0, .L212
 868              	.L214:
 869 0008 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 870 000c A061     		str	r0, [r4, #24]
 871 000e 0028     		cmp	r0, #0
 872 0010 FAD1     		bne	.L214
 873              	.L212:
 874 0012 10BD     		pop	{r4, pc}
 875              		.size	_ZN10WiFiSocket19DiscardReceivedDataEv, .-_ZN10WiFiSocket19DiscardReceivedDataEv
 876              		.section	.text._ZNK10WiFiSocket12NeedsPollingEv,"ax",%progbits
 877              		.align	1
 878              		.p2align 2,,3
 879              		.global	_ZNK10WiFiSocket12NeedsPollingEv
 880              		.syntax unified
 881              		.thumb
 882              		.thumb_func
 883              		.fpu fpv4-sp-d16
 884              		.type	_ZNK10WiFiSocket12NeedsPollingEv, %function
 885              	_ZNK10WiFiSocket12NeedsPollingEv:
 886              		@ args = 0, pretend = 0, frame = 0
 887              		@ frame_needed = 0, uses_anonymous_args = 0
 888              		@ link register save eliminated.
 889 0000 90F82330 		ldrb	r3, [r0, #35]	@ zero_extendqisi2
 890 0004 13B9     		cbnz	r3, .L222
 891 0006 90F82400 		ldrb	r0, [r0, #36]	@ zero_extendqisi2
 892 000a 7047     		bx	lr
 893              	.L222:
 894 000c 0120     		movs	r0, #1
 895 000e 7047     		bx	lr
 896              		.size	_ZNK10WiFiSocket12NeedsPollingEv, .-_ZNK10WiFiSocket12NeedsPollingEv
 897              		.global	_ZTV10WiFiSocket
 898              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 899              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 900              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 901              	_ZL28cpu_irq_prev_interrupt_state:
 902 0000 00       		.space	1
 903              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 904              		.align	2
 905              		.type	_ZL32cpu_irq_critical_section_counter, %object
 906              		.size	_ZL32cpu_irq_critical_section_counter, 4
 907              	_ZL32cpu_irq_critical_section_counter:
 908 0000 00000000 		.space	4
 909              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 910              		.align	2
 911              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 912              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
ARM GAS  /tmp/cckOLcPY.s 			page 17


 913              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 914 0000 00000000 		.space	4
 915              		.section	.rodata._ZN10WiFiSocket11ReceiveDataEt.part.10.str1.4,"aMS",%progbits,1
 916              		.align	2
 917              	.LC2:
 918 0000 52656365 		.ascii	"Received %u bytes\012\000"
 918      69766564 
 918      20257520 
 918      62797465 
 918      730A00
 919              		.section	.rodata._ZN10WiFiSocket4PollEb.str1.4,"aMS",%progbits,1
 920              		.align	2
 921              	.LC3:
 922 0000 42616420 		.ascii	"Bad recv status size\012\000"
 922      72656376 
 922      20737461 
 922      74757320 
 922      73697A65 
 923 0016 0000     		.space	2
 924              	.LC4:
 925 0018 436C6965 		.ascii	"Client disconnected on socket %u\012\000"
 925      6E742064 
 925      6973636F 
 925      6E6E6563 
 925      74656420 
 926 003a 0000     		.space	2
 927              	.LC5:
 928 003c 4E657720 		.ascii	"New conn on socket %u for local port %u\012\000"
 928      636F6E6E 
 928      206F6E20 
 928      736F636B 
 928      65742025 
 929 0065 000000   		.space	3
 930              	.LC6:
 931 0068 466F756E 		.ascii	"Found responder\012\000"
 931      64207265 
 931      73706F6E 
 931      6465720A 
 931      00
 932 0079 000000   		.space	3
 933              	.LC7:
 934 007c 4E6F2072 		.ascii	"No responder, new conn %u terminated\012\000"
 934      6573706F 
 934      6E646572 
 934      2C206E65 
 934      7720636F 
 935 00a2 0000     		.space	2
 936              	.LC8:
 937 00a4 536F636B 		.ascii	"Socket %u aborted\012\000"
 937      65742025 
 937      75206162 
 937      6F727465 
 937      640A00
 938 00b7 00       		.space	1
 939              	.LC9:
 940 00b8 556E6578 		.ascii	"Unexpected state change on socket %u\012\000"
 940      70656374 
ARM GAS  /tmp/cckOLcPY.s 			page 18


 940      65642073 
 940      74617465 
 940      20636861 
 941              		.section	.rodata._ZN10WiFiSocket4SendEv.str1.4,"aMS",%progbits,1
 942              		.align	2
 943              	.LC1:
 944 0000 53656E64 		.ascii	"Send failed, terminating\012\000"
 944      20666169 
 944      6C65642C 
 944      20746572 
 944      6D696E61 
 945              		.section	.rodata._ZN10WiFiSocket5CloseEv.str1.4,"aMS",%progbits,1
 946              		.align	2
 947              	.LC0:
 948 0000 636C6F73 		.ascii	"close failed, in wrong state\012\000"
 948      65206661 
 948      696C6564 
 948      2C20696E 
 948      2077726F 
 949              		.section	.rodata._ZTV10WiFiSocket,"a",%progbits
 950              		.align	2
 951              		.set	.LANCHOR0,. + 0
 952              		.type	_ZTV10WiFiSocket, %object
 953              		.size	_ZTV10WiFiSocket, 52
 954              	_ZTV10WiFiSocket:
 955 0000 00000000 		.word	0
 956 0004 00000000 		.word	0
 957 0008 00000000 		.word	_ZN10WiFiSocket4PollEb
 958 000c 00000000 		.word	_ZN10WiFiSocket5CloseEv
 959 0010 00000000 		.word	_ZN10WiFiSocket9TerminateEv
 960 0014 00000000 		.word	_ZN10WiFiSocket19TerminateAndDisableEv
 961 0018 00000000 		.word	_ZN10WiFiSocket8ReadCharERc
 962 001c 00000000 		.word	_ZN10WiFiSocket10ReadBufferERPKhRj
 963 0020 00000000 		.word	_ZN10WiFiSocket5TakenEj
 964 0024 00000000 		.word	_ZNK10WiFiSocket7CanReadEv
 965 0028 00000000 		.word	_ZNK10WiFiSocket7CanSendEv
 966 002c 00000000 		.word	_ZN10WiFiSocket4SendEPKhj
 967 0030 00000000 		.word	_ZN10WiFiSocket4SendEv
 968              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
