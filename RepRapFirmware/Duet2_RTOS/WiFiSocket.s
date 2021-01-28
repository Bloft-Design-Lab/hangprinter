ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN10WiFiSocket19TerminateAndDisableEv,"axG",%progbits,_ZN10WiFiSocket19TerminateAn
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZN10WiFiSocket19TerminateAndDisableEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN10WiFiSocket19TerminateAndDisableEv, %function
  24              	_ZN10WiFiSocket19TerminateAndDisableEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0368     		ldr	r3, [r0]
  29 0002 9B68     		ldr	r3, [r3, #8]
  30 0004 1847     		bx	r3	@ indirect register sibling call
  31              		.size	_ZN10WiFiSocket19TerminateAndDisableEv, .-_ZN10WiFiSocket19TerminateAndDisableEv
  32 0006 00BF     		.section	.text._ZNK10WiFiSocket7CanSendEv,"ax",%progbits
  33              		.align	1
  34              		.p2align 2,,3
  35              		.global	_ZNK10WiFiSocket7CanSendEv
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu fpv4-sp-d16
  40              		.type	_ZNK10WiFiSocket7CanSendEv, %function
  41              	_ZNK10WiFiSocket7CanSendEv:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44              		@ link register save eliminated.
  45 0000 90F82300 		ldrb	r0, [r0, #35]	@ zero_extendqisi2
  46 0004 A0F10200 		sub	r0, #2
  47 0008 B0FA80F0 		clz	r0, r0
  48 000c 4009     		lsrs	r0, r0, #5
  49 000e 7047     		bx	lr
  50              		.size	_ZNK10WiFiSocket7CanSendEv, .-_ZNK10WiFiSocket7CanSendEv
  51              		.section	.text._ZN10WiFiSocket10ReadBufferERPKhRj,"ax",%progbits
  52              		.align	1
  53              		.p2align 2,,3
  54              		.global	_ZN10WiFiSocket10ReadBufferERPKhRj
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 2


  58              		.fpu fpv4-sp-d16
  59              		.type	_ZN10WiFiSocket10ReadBufferERPKhRj, %function
  60              	_ZN10WiFiSocket10ReadBufferERPKhRj:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63              		@ link register save eliminated.
  64 0000 8069     		ldr	r0, [r0, #24]
  65 0002 60B1     		cbz	r0, .L8
  66 0004 10B4     		push	{r4}
  67 0006 D0E90134 		ldrd	r3, r4, [r0, #4]
  68 000a 1B1B     		subs	r3, r3, r4
  69 000c 1360     		str	r3, [r2]
  70 000e 8368     		ldr	r3, [r0, #8]
  71 0010 5DF8044B 		ldr	r4, [sp], #4
  72 0014 0C30     		adds	r0, r0, #12
  73 0016 1844     		add	r0, r0, r3
  74 0018 0860     		str	r0, [r1]
  75 001a 0120     		movs	r0, #1
  76 001c 7047     		bx	lr
  77              	.L8:
  78 001e 7047     		bx	lr
  79              		.size	_ZN10WiFiSocket10ReadBufferERPKhRj, .-_ZN10WiFiSocket10ReadBufferERPKhRj
  80              		.section	.text._ZN10WiFiSocket8ReadCharERc,"ax",%progbits
  81              		.align	1
  82              		.p2align 2,,3
  83              		.global	_ZN10WiFiSocket8ReadCharERc
  84              		.syntax unified
  85              		.thumb
  86              		.thumb_func
  87              		.fpu fpv4-sp-d16
  88              		.type	_ZN10WiFiSocket8ReadCharERc, %function
  89              	_ZN10WiFiSocket8ReadCharERc:
  90              		@ args = 0, pretend = 0, frame = 0
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92 0000 38B5     		push	{r3, r4, r5, lr}
  93 0002 8469     		ldr	r4, [r0, #24]
  94 0004 5CB1     		cbz	r4, .L12
  95 0006 0546     		mov	r5, r0
  96 0008 2046     		mov	r0, r4
  97 000a FFF7FEFF 		bl	_ZN13NetworkBuffer8ReadCharERc
  98 000e 0446     		mov	r4, r0
  99 0010 A869     		ldr	r0, [r5, #24]
 100 0012 D0E90123 		ldrd	r2, r3, [r0, #4]
 101 0016 9A42     		cmp	r2, r3
 102 0018 04D0     		beq	.L15
 103 001a 2046     		mov	r0, r4
 104 001c 38BD     		pop	{r3, r4, r5, pc}
 105              	.L12:
 106 001e 0C70     		strb	r4, [r1]
 107 0020 2046     		mov	r0, r4
 108 0022 38BD     		pop	{r3, r4, r5, pc}
 109              	.L15:
 110 0024 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 111 0028 A861     		str	r0, [r5, #24]
 112 002a 2046     		mov	r0, r4
 113 002c 38BD     		pop	{r3, r4, r5, pc}
 114              		.size	_ZN10WiFiSocket8ReadCharERc, .-_ZN10WiFiSocket8ReadCharERc
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 3


 115 002e 00BF     		.section	.text._ZN10WiFiSocket5TakenEj,"ax",%progbits
 116              		.align	1
 117              		.p2align 2,,3
 118              		.global	_ZN10WiFiSocket5TakenEj
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu fpv4-sp-d16
 123              		.type	_ZN10WiFiSocket5TakenEj, %function
 124              	_ZN10WiFiSocket5TakenEj:
 125              		@ args = 0, pretend = 0, frame = 0
 126              		@ frame_needed = 0, uses_anonymous_args = 0
 127 0000 8369     		ldr	r3, [r0, #24]
 128 0002 3BB1     		cbz	r3, .L21
 129 0004 10B5     		push	{r4, lr}
 130 0006 D3E90124 		ldrd	r2, r4, [r3, #4]
 131 000a 2144     		add	r1, r1, r4
 132 000c 8A42     		cmp	r2, r1
 133 000e 9960     		str	r1, [r3, #8]
 134 0010 01D0     		beq	.L24
 135 0012 10BD     		pop	{r4, pc}
 136              	.L21:
 137 0014 7047     		bx	lr
 138              	.L24:
 139 0016 0446     		mov	r4, r0
 140 0018 1846     		mov	r0, r3
 141 001a FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 142 001e A061     		str	r0, [r4, #24]
 143 0020 10BD     		pop	{r4, pc}
 144              		.size	_ZN10WiFiSocket5TakenEj, .-_ZN10WiFiSocket5TakenEj
 145 0022 00BF     		.section	.text._ZN10WiFiSocket9TerminateEv,"ax",%progbits
 146              		.align	1
 147              		.p2align 2,,3
 148              		.global	_ZN10WiFiSocket9TerminateEv
 149              		.syntax unified
 150              		.thumb
 151              		.thumb_func
 152              		.fpu fpv4-sp-d16
 153              		.type	_ZN10WiFiSocket9TerminateEv, %function
 154              	_ZN10WiFiSocket9TerminateEv:
 155              		@ args = 0, pretend = 0, frame = 0
 156              		@ frame_needed = 0, uses_anonymous_args = 0
 157 0000 10B5     		push	{r4, lr}
 158 0002 90F82330 		ldrb	r3, [r0, #35]	@ zero_extendqisi2
 159 0006 84B0     		sub	sp, sp, #16
 160 0008 0446     		mov	r4, r0
 161 000a 53B9     		cbnz	r3, .L39
 162              	.L26:
 163 000c A069     		ldr	r0, [r4, #24]
 164 000e 20B1     		cbz	r0, .L28
 165              	.L29:
 166 0010 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 167 0014 A061     		str	r0, [r4, #24]
 168 0016 0028     		cmp	r0, #0
 169 0018 FAD1     		bne	.L29
 170              	.L28:
 171 001a 0023     		movs	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 4


 172 001c 2384     		strh	r3, [r4, #32]	@ movhi
 173 001e 04B0     		add	sp, sp, #16
 174              		@ sp needed
 175 0020 10BD     		pop	{r4, pc}
 176              	.L39:
 177 0022 0023     		movs	r3, #0
 178 0024 90F82220 		ldrb	r2, [r0, #34]	@ zero_extendqisi2
 179 0028 4068     		ldr	r0, [r0, #4]
 180 002a 0121     		movs	r1, #1
 181 002c CDE90233 		strd	r3, r3, [sp, #8]
 182 0030 CDE90033 		strd	r3, r3, [sp]
 183 0034 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 184 0038 0028     		cmp	r0, #0
 185 003a 14BF     		ite	ne
 186 003c 0523     		movne	r3, #5
 187 003e 0023     		moveq	r3, #0
 188 0040 84F82330 		strb	r3, [r4, #35]
 189 0044 E2E7     		b	.L26
 190              		.size	_ZN10WiFiSocket9TerminateEv, .-_ZN10WiFiSocket9TerminateEv
 191 0046 00BF     		.section	.text._ZNK10WiFiSocket7CanReadEv,"ax",%progbits
 192              		.align	1
 193              		.p2align 2,,3
 194              		.global	_ZNK10WiFiSocket7CanReadEv
 195              		.syntax unified
 196              		.thumb
 197              		.thumb_func
 198              		.fpu fpv4-sp-d16
 199              		.type	_ZNK10WiFiSocket7CanReadEv, %function
 200              	_ZNK10WiFiSocket7CanReadEv:
 201              		@ args = 0, pretend = 0, frame = 0
 202              		@ frame_needed = 0, uses_anonymous_args = 0
 203 0000 08B5     		push	{r3, lr}
 204 0002 90F82330 		ldrb	r3, [r0, #35]	@ zero_extendqisi2
 205 0006 022B     		cmp	r3, #2
 206 0008 0CD0     		beq	.L42
 207 000a 032B     		cmp	r3, #3
 208 000c 01D0     		beq	.L46
 209 000e 0020     		movs	r0, #0
 210              	.L41:
 211 0010 08BD     		pop	{r3, pc}
 212              	.L46:
 213 0012 8069     		ldr	r0, [r0, #24]
 214 0014 0028     		cmp	r0, #0
 215 0016 FBD0     		beq	.L41
 216 0018 FFF7FEFF 		bl	_ZNK13NetworkBuffer14TotalRemainingEv
 217 001c 0030     		adds	r0, r0, #0
 218 001e 18BF     		it	ne
 219 0020 0120     		movne	r0, #1
 220 0022 08BD     		pop	{r3, pc}
 221              	.L42:
 222 0024 0120     		movs	r0, #1
 223 0026 08BD     		pop	{r3, pc}
 224              		.size	_ZNK10WiFiSocket7CanReadEv, .-_ZNK10WiFiSocket7CanReadEv
 225              		.section	.text._ZN10WiFiSocket5CloseEv,"ax",%progbits
 226              		.align	1
 227              		.p2align 2,,3
 228              		.global	_ZN10WiFiSocket5CloseEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 5


 229              		.syntax unified
 230              		.thumb
 231              		.thumb_func
 232              		.fpu fpv4-sp-d16
 233              		.type	_ZN10WiFiSocket5CloseEv, %function
 234              	_ZN10WiFiSocket5CloseEv:
 235              		@ args = 0, pretend = 0, frame = 0
 236              		@ frame_needed = 0, uses_anonymous_args = 0
 237 0000 10B5     		push	{r4, lr}
 238 0002 90F82330 		ldrb	r3, [r0, #35]	@ zero_extendqisi2
 239 0006 023B     		subs	r3, r3, #2
 240 0008 012B     		cmp	r3, #1
 241 000a 84B0     		sub	sp, sp, #16
 242 000c 0446     		mov	r4, r0
 243 000e 0FD9     		bls	.L58
 244              	.L48:
 245 0010 134B     		ldr	r3, .L60
 246 0012 D3F80831 		ldr	r3, [r3, #264]	@ unaligned
 247 0016 9B07     		lsls	r3, r3, #30
 248 0018 06D4     		bmi	.L59
 249              	.L51:
 250 001a 2368     		ldr	r3, [r4]
 251 001c 9B68     		ldr	r3, [r3, #8]
 252 001e 2046     		mov	r0, r4
 253 0020 04B0     		add	sp, sp, #16
 254              		@ sp needed
 255 0022 BDE81040 		pop	{r4, lr}
 256 0026 1847     		bx	r3	@ indirect register sibling call
 257              	.L59:
 258 0028 0E48     		ldr	r0, .L60+4
 259 002a FFF7FEFF 		bl	debugPrintf
 260 002e F4E7     		b	.L51
 261              	.L58:
 262 0030 0023     		movs	r3, #0
 263 0032 90F82220 		ldrb	r2, [r0, #34]	@ zero_extendqisi2
 264 0036 4068     		ldr	r0, [r0, #4]
 265 0038 0221     		movs	r1, #2
 266 003a CDE90233 		strd	r3, r3, [sp, #8]
 267 003e CDE90033 		strd	r3, r3, [sp]
 268 0042 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 269 0046 0028     		cmp	r0, #0
 270 0048 E2D1     		bne	.L48
 271 004a 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 272 004e 022B     		cmp	r3, #2
 273 0050 0CBF     		ite	eq
 274 0052 0423     		moveq	r3, #4
 275 0054 0023     		movne	r3, #0
 276 0056 84F82330 		strb	r3, [r4, #35]
 277 005a 04B0     		add	sp, sp, #16
 278              		@ sp needed
 279 005c 10BD     		pop	{r4, pc}
 280              	.L61:
 281 005e 00BF     		.align	2
 282              	.L60:
 283 0060 00000000 		.word	reprap
 284 0064 00000000 		.word	.LC0
 285              		.size	_ZN10WiFiSocket5CloseEv, .-_ZN10WiFiSocket5CloseEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 6


 286              		.section	.text._ZN10WiFiSocket4SendEv,"ax",%progbits
 287              		.align	1
 288              		.p2align 2,,3
 289              		.global	_ZN10WiFiSocket4SendEv
 290              		.syntax unified
 291              		.thumb
 292              		.thumb_func
 293              		.fpu fpv4-sp-d16
 294              		.type	_ZN10WiFiSocket4SendEv, %function
 295              	_ZN10WiFiSocket4SendEv:
 296              		@ args = 0, pretend = 0, frame = 0
 297              		@ frame_needed = 0, uses_anonymous_args = 0
 298 0000 90F82330 		ldrb	r3, [r0, #35]	@ zero_extendqisi2
 299 0004 022B     		cmp	r3, #2
 300 0006 00D0     		beq	.L74
 301 0008 7047     		bx	lr
 302              	.L74:
 303 000a 10B5     		push	{r4, lr}
 304 000c 0021     		movs	r1, #0
 305 000e 84B0     		sub	sp, sp, #16
 306 0010 90F82220 		ldrb	r2, [r0, #34]	@ zero_extendqisi2
 307 0014 0446     		mov	r4, r0
 308 0016 4068     		ldr	r0, [r0, #4]
 309 0018 CDE90211 		strd	r1, r1, [sp, #8]
 310 001c CDE90011 		strd	r1, r1, [sp]
 311 0020 0521     		movs	r1, #5
 312 0022 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 313 0026 0028     		cmp	r0, #0
 314 0028 01DB     		blt	.L75
 315              	.L62:
 316 002a 04B0     		add	sp, sp, #16
 317              		@ sp needed
 318 002c 10BD     		pop	{r4, pc}
 319              	.L75:
 320 002e 064B     		ldr	r3, .L77
 321 0030 D3F80831 		ldr	r3, [r3, #264]
 322 0034 9B07     		lsls	r3, r3, #30
 323 0036 03D4     		bmi	.L76
 324              	.L66:
 325 0038 0523     		movs	r3, #5
 326 003a 84F82330 		strb	r3, [r4, #35]
 327 003e F4E7     		b	.L62
 328              	.L76:
 329 0040 0248     		ldr	r0, .L77+4
 330 0042 FFF7FEFF 		bl	debugPrintf
 331 0046 F7E7     		b	.L66
 332              	.L78:
 333              		.align	2
 334              	.L77:
 335 0048 00000000 		.word	reprap
 336 004c 00000000 		.word	.LC1
 337              		.size	_ZN10WiFiSocket4SendEv, .-_ZN10WiFiSocket4SendEv
 338              		.section	.text._ZN10WiFiSocket4SendEPKhj,"ax",%progbits
 339              		.align	1
 340              		.p2align 2,,3
 341              		.global	_ZN10WiFiSocket4SendEPKhj
 342              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 7


 343              		.thumb
 344              		.thumb_func
 345              		.fpu fpv4-sp-d16
 346              		.type	_ZN10WiFiSocket4SendEPKhj, %function
 347              	_ZN10WiFiSocket4SendEPKhj:
 348              		@ args = 0, pretend = 0, frame = 0
 349              		@ frame_needed = 0, uses_anonymous_args = 0
 350 0000 90F82330 		ldrb	r3, [r0, #35]	@ zero_extendqisi2
 351 0004 022B     		cmp	r3, #2
 352 0006 01D0     		beq	.L93
 353              	.L84:
 354 0008 0020     		movs	r0, #0
 355 000a 7047     		bx	lr
 356              	.L93:
 357 000c 038C     		ldrh	r3, [r0, #32]
 358 000e 002B     		cmp	r3, #0
 359 0010 FAD0     		beq	.L84
 360 0012 30B5     		push	{r4, r5, lr}
 361 0014 B3F5006F 		cmp	r3, #2048
 362 0018 1546     		mov	r5, r2
 363 001a 28BF     		it	cs
 364 001c 4FF40063 		movcs	r3, #2048
 365 0020 85B0     		sub	sp, sp, #20
 366 0022 9D42     		cmp	r5, r3
 367 0024 28BF     		it	cs
 368 0026 1D46     		movcs	r5, r3
 369 0028 0023     		movs	r3, #0
 370 002a 90F82220 		ldrb	r2, [r0, #34]	@ zero_extendqisi2
 371 002e 0446     		mov	r4, r0
 372 0030 4068     		ldr	r0, [r0, #4]
 373 0032 0091     		str	r1, [sp]
 374 0034 0195     		str	r5, [sp, #4]
 375 0036 CDE90233 		strd	r3, r3, [sp, #8]
 376 003a 0521     		movs	r1, #5
 377 003c FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 378 0040 0028     		cmp	r0, #0
 379 0042 01DB     		blt	.L82
 380 0044 A842     		cmp	r0, r5
 381 0046 0AD9     		bls	.L94
 382              	.L82:
 383 0048 094B     		ldr	r3, .L96
 384 004a D3F80831 		ldr	r3, [r3, #264]
 385 004e 9B07     		lsls	r3, r3, #30
 386 0050 09D4     		bmi	.L95
 387              	.L83:
 388 0052 0523     		movs	r3, #5
 389 0054 84F82330 		strb	r3, [r4, #35]
 390 0058 0020     		movs	r0, #0
 391              	.L79:
 392 005a 05B0     		add	sp, sp, #20
 393              		@ sp needed
 394 005c 30BD     		pop	{r4, r5, pc}
 395              	.L94:
 396 005e 238C     		ldrh	r3, [r4, #32]
 397 0060 1B1A     		subs	r3, r3, r0
 398 0062 2384     		strh	r3, [r4, #32]	@ movhi
 399 0064 F9E7     		b	.L79
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 8


 400              	.L95:
 401 0066 0348     		ldr	r0, .L96+4
 402 0068 FFF7FEFF 		bl	debugPrintf
 403 006c F1E7     		b	.L83
 404              	.L97:
 405 006e 00BF     		.align	2
 406              	.L96:
 407 0070 00000000 		.word	reprap
 408 0074 00000000 		.word	.LC1
 409              		.size	_ZN10WiFiSocket4SendEPKhj, .-_ZN10WiFiSocket4SendEPKhj
 410              		.section	.text._ZN10WiFiSocket11ReceiveDataEt.part.10,"ax",%progbits
 411              		.align	1
 412              		.p2align 2,,3
 413              		.syntax unified
 414              		.thumb
 415              		.thumb_func
 416              		.fpu fpv4-sp-d16
 417              		.type	_ZN10WiFiSocket11ReceiveDataEt.part.10, %function
 418              	_ZN10WiFiSocket11ReceiveDataEt.part.10:
 419              		@ args = 0, pretend = 0, frame = 0
 420              		@ frame_needed = 0, uses_anonymous_args = 0
 421 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 422 0002 0446     		mov	r4, r0
 423 0004 85B0     		sub	sp, sp, #20
 424 0006 8069     		ldr	r0, [r0, #24]
 425 0008 0F46     		mov	r7, r1
 426 000a FFF7FEFF 		bl	_ZN13NetworkBuffer8FindLastEPS_
 427 000e 0028     		cmp	r0, #0
 428 0010 37D0     		beq	.L125
 429 0012 4368     		ldr	r3, [r0, #4]
 430 0014 C3F50066 		rsb	r6, r3, #2048
 431 0018 B742     		cmp	r7, r6
 432 001a 0546     		mov	r5, r0
 433 001c 0CD9     		bls	.L100
 434 001e B3F5006F 		cmp	r3, #2048
 435 0022 04F11806 		add	r6, r4, #24
 436 0026 2ED0     		beq	.L99
 437 0028 3046     		mov	r0, r6
 438 002a FFF7FEFF 		bl	_ZN13NetworkBuffer5CountERPS_
 439 002e 0328     		cmp	r0, #3
 440 0030 29D9     		bls	.L99
 441 0032 6B68     		ldr	r3, [r5, #4]
 442 0034 C3F50066 		rsb	r6, r3, #2048
 443              	.L100:
 444 0038 B6F5006F 		cmp	r6, #2048
 445 003c 05F10C01 		add	r1, r5, #12
 446 0040 28BF     		it	cs
 447 0042 4FF40066 		movcs	r6, #2048
 448 0046 1944     		add	r1, r1, r3
 449 0048 0023     		movs	r3, #0
 450 004a 94F82220 		ldrb	r2, [r4, #34]	@ zero_extendqisi2
 451 004e 6068     		ldr	r0, [r4, #4]
 452 0050 CDE90216 		strd	r1, r6, [sp, #8]
 453 0054 CDE90033 		strd	r3, r3, [sp]
 454 0058 0421     		movs	r1, #4
 455 005a FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 456 005e 011E     		subs	r1, r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 9


 457 0060 38DD     		ble	.L98
 458 0062 8E42     		cmp	r6, r1
 459 0064 36D3     		bcc	.L98
 460 0066 6B68     		ldr	r3, [r5, #4]
 461 0068 1F4A     		ldr	r2, .L127
 462 006a 0B44     		add	r3, r3, r1
 463 006c 6B60     		str	r3, [r5, #4]
 464 006e D2F80831 		ldr	r3, [r2, #264]
 465 0072 9A07     		lsls	r2, r3, #30
 466 0074 2ED5     		bpl	.L98
 467              	.L124:
 468 0076 1D48     		ldr	r0, .L127+4
 469 0078 05B0     		add	sp, sp, #20
 470              		@ sp needed
 471 007a BDE8F040 		pop	{r4, r5, r6, r7, lr}
 472 007e FFF7FEBF 		b	debugPrintf
 473              	.L125:
 474 0082 04F11806 		add	r6, r4, #24
 475              	.L99:
 476 0086 3046     		mov	r0, r6
 477 0088 FFF7FEFF 		bl	_ZN13NetworkBuffer5CountERPS_
 478 008c 0328     		cmp	r0, #3
 479 008e 21D8     		bhi	.L98
 480 0090 FFF7FEFF 		bl	_ZN13NetworkBuffer8AllocateEv
 481 0094 0546     		mov	r5, r0
 482 0096 E8B1     		cbz	r0, .L98
 483 0098 94F82220 		ldrb	r2, [r4, #34]	@ zero_extendqisi2
 484 009c 6068     		ldr	r0, [r4, #4]
 485 009e 0023     		movs	r3, #0
 486 00a0 4FF40064 		mov	r4, #2048
 487 00a4 05F10C01 		add	r1, r5, #12
 488 00a8 CDE90214 		strd	r1, r4, [sp, #8]
 489 00ac CDE90033 		strd	r3, r3, [sp]
 490 00b0 0421     		movs	r1, #4
 491 00b2 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 492 00b6 431E     		subs	r3, r0, #1
 493 00b8 B3F5006F 		cmp	r3, #2048
 494 00bc 0446     		mov	r4, r0
 495 00be 0BD2     		bcs	.L105
 496 00c0 6860     		str	r0, [r5, #4]
 497 00c2 2946     		mov	r1, r5
 498 00c4 3046     		mov	r0, r6
 499 00c6 FFF7FEFF 		bl	_ZN13NetworkBuffer12AppendToListEPPS_S0_
 500 00ca 074B     		ldr	r3, .L127
 501 00cc D3F80831 		ldr	r3, [r3, #264]
 502 00d0 9B07     		lsls	r3, r3, #30
 503 00d2 07D4     		bmi	.L126
 504              	.L98:
 505 00d4 05B0     		add	sp, sp, #20
 506              		@ sp needed
 507 00d6 F0BD     		pop	{r4, r5, r6, r7, pc}
 508              	.L105:
 509 00d8 2846     		mov	r0, r5
 510 00da 05B0     		add	sp, sp, #20
 511              		@ sp needed
 512 00dc BDE8F040 		pop	{r4, r5, r6, r7, lr}
 513 00e0 FFF7FEBF 		b	_ZN13NetworkBuffer7ReleaseEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 10


 514              	.L126:
 515 00e4 2146     		mov	r1, r4
 516 00e6 C6E7     		b	.L124
 517              	.L128:
 518              		.align	2
 519              	.L127:
 520 00e8 00000000 		.word	reprap
 521 00ec 00000000 		.word	.LC2
 522              		.size	_ZN10WiFiSocket11ReceiveDataEt.part.10, .-_ZN10WiFiSocket11ReceiveDataEt.part.10
 523              		.section	.text._ZN10WiFiSocket4PollEb,"ax",%progbits
 524              		.align	1
 525              		.p2align 2,,3
 526              		.global	_ZN10WiFiSocket4PollEb
 527              		.syntax unified
 528              		.thumb
 529              		.thumb_func
 530              		.fpu fpv4-sp-d16
 531              		.type	_ZN10WiFiSocket4PollEb, %function
 532              	_ZN10WiFiSocket4PollEb:
 533              		@ args = 0, pretend = 0, frame = 24
 534              		@ frame_needed = 0, uses_anonymous_args = 0
 535 0000 70B5     		push	{r4, r5, r6, lr}
 536 0002 8AB0     		sub	sp, sp, #40
 537 0004 1423     		movs	r3, #20
 538 0006 90F82220 		ldrb	r2, [r0, #34]	@ zero_extendqisi2
 539 000a 0025     		movs	r5, #0
 540 000c 0446     		mov	r4, r0
 541 000e 4068     		ldr	r0, [r0, #4]
 542 0010 0393     		str	r3, [sp, #12]
 543 0012 04AB     		add	r3, sp, #16
 544 0014 CDE90153 		strd	r5, r3, [sp, #4]
 545 0018 0E46     		mov	r6, r1
 546 001a 0095     		str	r5, [sp]
 547 001c 2B46     		mov	r3, r5
 548 001e 0621     		movs	r1, #6
 549 0020 FFF7FEFF 		bl	_ZN13WiFiInterface11SendCommandE14NetworkCommandhhPKvjPvj
 550 0024 1428     		cmp	r0, #20
 551 0026 0BD0     		beq	.L130
 552 0028 714B     		ldr	r3, .L201
 553 002a D3F80831 		ldr	r3, [r3, #264]
 554 002e 9A07     		lsls	r2, r3, #30
 555 0030 01D4     		bmi	.L193
 556 0032 0AB0     		add	sp, sp, #40
 557              		@ sp needed
 558 0034 70BD     		pop	{r4, r5, r6, pc}
 559              	.L193:
 560 0036 6F48     		ldr	r0, .L201+4
 561 0038 FFF7FEFF 		bl	debugPrintf
 562 003c 0AB0     		add	sp, sp, #40
 563              		@ sp needed
 564 003e 70BD     		pop	{r4, r5, r6, pc}
 565              	.L130:
 566 0040 BDF82220 		ldrh	r2, [sp, #34]
 567 0044 BDF82010 		ldrh	r1, [sp, #32]
 568 0048 6068     		ldr	r0, [r4, #4]
 569 004a FFF7FEFF 		bl	_ZN13WiFiInterface18UpdateSocketStatusEtt
 570 004e 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 11


 571 0052 032B     		cmp	r3, #3
 572 0054 0DD0     		beq	.L133
 573 0056 042B     		cmp	r3, #4
 574 0058 26D0     		beq	.L134
 575 005a 022B     		cmp	r3, #2
 576 005c 35D0     		beq	.L194
 577 005e 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 578 0062 5A1E     		subs	r2, r3, #1
 579 0064 012A     		cmp	r2, #1
 580 0066 7DD9     		bls	.L195
 581 0068 042B     		cmp	r3, #4
 582 006a 08BF     		it	eq
 583 006c 84F82350 		strbeq	r5, [r4, #35]
 584 0070 26E0     		b	.L138
 585              	.L133:
 586 0072 BDF81C10 		ldrh	r1, [sp, #28]
 587 0076 0029     		cmp	r1, #0
 588 0078 40F08880 		bne	.L196
 589              	.L136:
 590 007c 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 591 0080 032B     		cmp	r3, #3
 592 0082 00F08780 		beq	.L197
 593 0086 002B     		cmp	r3, #0
 594 0088 00F08980 		beq	.L139
 595 008c 0322     		movs	r2, #3
 596 008e 584B     		ldr	r3, .L201
 597 0090 84F82320 		strb	r2, [r4, #35]
 598 0094 D3F80831 		ldr	r3, [r3, #264]
 599 0098 9B07     		lsls	r3, r3, #30
 600 009a 11D5     		bpl	.L138
 601 009c 94F82210 		ldrb	r1, [r4, #34]	@ zero_extendqisi2
 602 00a0 5548     		ldr	r0, .L201+8
 603 00a2 FFF7FEFF 		bl	debugPrintf
 604 00a6 0BE0     		b	.L138
 605              	.L134:
 606 00a8 514B     		ldr	r3, .L201
 607 00aa D3F80831 		ldr	r3, [r3, #264]
 608 00ae 9A07     		lsls	r2, r3, #30
 609 00b0 66D4     		bmi	.L198
 610              	.L155:
 611 00b2 2368     		ldr	r3, [r4]
 612 00b4 0522     		movs	r2, #5
 613 00b6 9B68     		ldr	r3, [r3, #8]
 614 00b8 84F82320 		strb	r2, [r4, #35]
 615 00bc 2046     		mov	r0, r4
 616 00be 9847     		blx	r3
 617              	.L138:
 618 00c0 0023     		movs	r3, #0
 619 00c2 84F82430 		strb	r3, [r4, #36]
 620 00c6 0AB0     		add	sp, sp, #40
 621              		@ sp needed
 622 00c8 70BD     		pop	{r4, r5, r6, pc}
 623              	.L194:
 624 00ca 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 625 00ce 002E     		cmp	r6, #0
 626 00d0 3BD0     		beq	.L141
 627 00d2 022B     		cmp	r3, #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 12


 628 00d4 3BD0     		beq	.L152
 629              	.L142:
 630 00d6 464D     		ldr	r5, .L201
 631 00d8 D5F80831 		ldr	r3, [r5, #264]
 632 00dc 9E07     		lsls	r6, r3, #30
 633 00de 61D4     		bmi	.L199
 634              	.L145:
 635 00e0 A069     		ldr	r0, [r4, #24]
 636 00e2 BDF81410 		ldrh	r1, [sp, #20]
 637 00e6 BDF81620 		ldrh	r2, [sp, #22]
 638 00ea 069B     		ldr	r3, [sp, #24]
 639 00ec 2181     		strh	r1, [r4, #8]	@ movhi
 640 00ee 6281     		strh	r2, [r4, #10]	@ movhi
 641 00f0 2361     		str	r3, [r4, #16]
 642 00f2 20B1     		cbz	r0, .L146
 643              	.L147:
 644 00f4 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 645 00f8 A061     		str	r0, [r4, #24]
 646 00fa 0028     		cmp	r0, #0
 647 00fc FAD1     		bne	.L147
 648              	.L146:
 649 00fe 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 650 0102 012B     		cmp	r3, #1
 651 0104 0AD0     		beq	.L148
 652 0106 2189     		ldrh	r1, [r4, #8]
 653 0108 6068     		ldr	r0, [r4, #4]
 654 010a FFF7FEFF 		bl	_ZNK13WiFiInterface22GetProtocolByLocalPortEt
 655 010e 2073     		strb	r0, [r4, #12]
 656 0110 FFF7FEFF 		bl	millis
 657 0114 0123     		movs	r3, #1
 658 0116 E061     		str	r0, [r4, #28]
 659 0118 84F82330 		strb	r3, [r4, #35]
 660              	.L148:
 661 011c 227B     		ldrb	r2, [r4, #12]	@ zero_extendqisi2
 662 011e A868     		ldr	r0, [r5, #8]
 663 0120 2146     		mov	r1, r4
 664 0122 FFF7FEFF 		bl	_ZN7Network13FindResponderEP6Socketh
 665 0126 0028     		cmp	r0, #0
 666 0128 43D0     		beq	.L149
 667 012a 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 668 012e 022B     		cmp	r3, #2
 669 0130 49D0     		beq	.L200
 670 0132 0323     		movs	r3, #3
 671 0134 84F82330 		strb	r3, [r4, #35]
 672 0138 D5F80831 		ldr	r3, [r5, #264]
 673 013c 9807     		lsls	r0, r3, #30
 674 013e BFD5     		bpl	.L138
 675              	.L151:
 676 0140 2E48     		ldr	r0, .L201+12
 677 0142 FFF7FEFF 		bl	debugPrintf
 678 0146 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 679              	.L141:
 680 014a 022B     		cmp	r3, #2
 681 014c B8D1     		bne	.L138
 682              	.L152:
 683 014e BDF81C10 		ldrh	r1, [sp, #28]
 684 0152 BDF81E30 		ldrh	r3, [sp, #30]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 13


 685 0156 2384     		strh	r3, [r4, #32]	@ movhi
 686 0158 0029     		cmp	r1, #0
 687 015a B1D0     		beq	.L138
 688 015c 2046     		mov	r0, r4
 689 015e FFF7FEFF 		bl	_ZN10WiFiSocket11ReceiveDataEt.part.10
 690 0162 ADE7     		b	.L138
 691              	.L195:
 692 0164 224B     		ldr	r3, .L201
 693 0166 D3F80831 		ldr	r3, [r3, #264]
 694 016a 9B07     		lsls	r3, r3, #30
 695 016c 04D5     		bpl	.L157
 696 016e 94F82210 		ldrb	r1, [r4, #34]	@ zero_extendqisi2
 697 0172 2348     		ldr	r0, .L201+16
 698 0174 FFF7FEFF 		bl	debugPrintf
 699              	.L157:
 700 0178 0523     		movs	r3, #5
 701 017a 84F82330 		strb	r3, [r4, #35]
 702 017e 9FE7     		b	.L138
 703              	.L198:
 704 0180 94F82210 		ldrb	r1, [r4, #34]	@ zero_extendqisi2
 705 0184 1F48     		ldr	r0, .L201+20
 706 0186 FFF7FEFF 		bl	debugPrintf
 707 018a 92E7     		b	.L155
 708              	.L196:
 709 018c 2046     		mov	r0, r4
 710 018e FFF7FEFF 		bl	_ZN10WiFiSocket11ReceiveDataEt.part.10
 711 0192 73E7     		b	.L136
 712              	.L197:
 713 0194 2368     		ldr	r3, [r4]
 714 0196 2046     		mov	r0, r4
 715 0198 5B68     		ldr	r3, [r3, #4]
 716 019a 9847     		blx	r3
 717 019c 90E7     		b	.L138
 718              	.L139:
 719 019e 002E     		cmp	r6, #0
 720 01a0 99D1     		bne	.L142
 721 01a2 8DE7     		b	.L138
 722              	.L199:
 723 01a4 2289     		ldrh	r2, [r4, #8]
 724 01a6 94F82210 		ldrb	r1, [r4, #34]	@ zero_extendqisi2
 725 01aa 1748     		ldr	r0, .L201+24
 726 01ac FFF7FEFF 		bl	debugPrintf
 727 01b0 96E7     		b	.L145
 728              	.L149:
 729 01b2 FFF7FEFF 		bl	millis
 730 01b6 E369     		ldr	r3, [r4, #28]
 731 01b8 C31A     		subs	r3, r0, r3
 732 01ba B3F5FA6F 		cmp	r3, #2000
 733 01be 09D2     		bcs	.L153
 734              	.L192:
 735 01c0 94F82330 		ldrb	r3, [r4, #35]	@ zero_extendqisi2
 736 01c4 C1E7     		b	.L141
 737              	.L200:
 738 01c6 84F82330 		strb	r3, [r4, #35]
 739 01ca D5F80831 		ldr	r3, [r5, #264]
 740 01ce 9D07     		lsls	r5, r3, #30
 741 01d0 BDD5     		bpl	.L152
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 14


 742 01d2 B5E7     		b	.L151
 743              	.L153:
 744 01d4 2368     		ldr	r3, [r4]
 745 01d6 2046     		mov	r0, r4
 746 01d8 9B68     		ldr	r3, [r3, #8]
 747 01da 9847     		blx	r3
 748 01dc D5F80831 		ldr	r3, [r5, #264]
 749 01e0 9907     		lsls	r1, r3, #30
 750 01e2 EDD5     		bpl	.L192
 751 01e4 94F82210 		ldrb	r1, [r4, #34]	@ zero_extendqisi2
 752 01e8 0848     		ldr	r0, .L201+28
 753 01ea FFF7FEFF 		bl	debugPrintf
 754 01ee E7E7     		b	.L192
 755              	.L202:
 756              		.align	2
 757              	.L201:
 758 01f0 00000000 		.word	reprap
 759 01f4 00000000 		.word	.LC3
 760 01f8 18000000 		.word	.LC4
 761 01fc 68000000 		.word	.LC6
 762 0200 B8000000 		.word	.LC9
 763 0204 A4000000 		.word	.LC8
 764 0208 3C000000 		.word	.LC5
 765 020c 7C000000 		.word	.LC7
 766              		.size	_ZN10WiFiSocket4PollEb, .-_ZN10WiFiSocket4PollEb
 767              		.section	.text._ZN10WiFiSocketC2EP16NetworkInterface,"ax",%progbits
 768              		.align	1
 769              		.p2align 2,,3
 770              		.global	_ZN10WiFiSocketC2EP16NetworkInterface
 771              		.syntax unified
 772              		.thumb
 773              		.thumb_func
 774              		.fpu fpv4-sp-d16
 775              		.type	_ZN10WiFiSocketC2EP16NetworkInterface, %function
 776              	_ZN10WiFiSocketC2EP16NetworkInterface:
 777              		@ args = 0, pretend = 0, frame = 0
 778              		@ frame_needed = 0, uses_anonymous_args = 0
 779              		@ link register save eliminated.
 780 0000 0022     		movs	r2, #0
 781 0002 10B4     		push	{r4}
 782 0004 064C     		ldr	r4, .L205
 783 0006 0460     		str	r4, [r0]
 784 0008 4160     		str	r1, [r0, #4]
 785 000a 8260     		str	r2, [r0, #8]
 786 000c 0261     		str	r2, [r0, #16]
 787 000e 0275     		strb	r2, [r0, #20]
 788 0010 8261     		str	r2, [r0, #24]
 789 0012 80F82320 		strb	r2, [r0, #35]
 790 0016 80F82420 		strb	r2, [r0, #36]
 791 001a 5DF8044B 		ldr	r4, [sp], #4
 792 001e 7047     		bx	lr
 793              	.L206:
 794              		.align	2
 795              	.L205:
 796 0020 08000000 		.word	.LANCHOR0+8
 797              		.size	_ZN10WiFiSocketC2EP16NetworkInterface, .-_ZN10WiFiSocketC2EP16NetworkInterface
 798              		.global	_ZN10WiFiSocketC1EP16NetworkInterface
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 15


 799              		.thumb_set _ZN10WiFiSocketC1EP16NetworkInterface,_ZN10WiFiSocketC2EP16NetworkInterface
 800              		.section	.text._ZN10WiFiSocket4InitEh,"ax",%progbits
 801              		.align	1
 802              		.p2align 2,,3
 803              		.global	_ZN10WiFiSocket4InitEh
 804              		.syntax unified
 805              		.thumb
 806              		.thumb_func
 807              		.fpu fpv4-sp-d16
 808              		.type	_ZN10WiFiSocket4InitEh, %function
 809              	_ZN10WiFiSocket4InitEh:
 810              		@ args = 0, pretend = 0, frame = 0
 811              		@ frame_needed = 0, uses_anonymous_args = 0
 812              		@ link register save eliminated.
 813 0000 0023     		movs	r3, #0
 814 0002 80F82210 		strb	r1, [r0, #34]
 815 0006 80F82330 		strb	r3, [r0, #35]
 816 000a 0384     		strh	r3, [r0, #32]	@ movhi
 817 000c 7047     		bx	lr
 818              		.size	_ZN10WiFiSocket4InitEh, .-_ZN10WiFiSocket4InitEh
 819 000e 00BF     		.section	.text._ZNK10WiFiSocket12GetInterfaceEv,"ax",%progbits
 820              		.align	1
 821              		.p2align 2,,3
 822              		.global	_ZNK10WiFiSocket12GetInterfaceEv
 823              		.syntax unified
 824              		.thumb
 825              		.thumb_func
 826              		.fpu fpv4-sp-d16
 827              		.type	_ZNK10WiFiSocket12GetInterfaceEv, %function
 828              	_ZNK10WiFiSocket12GetInterfaceEv:
 829              		@ args = 0, pretend = 0, frame = 0
 830              		@ frame_needed = 0, uses_anonymous_args = 0
 831              		@ link register save eliminated.
 832 0000 4068     		ldr	r0, [r0, #4]
 833 0002 7047     		bx	lr
 834              		.size	_ZNK10WiFiSocket12GetInterfaceEv, .-_ZNK10WiFiSocket12GetInterfaceEv
 835              		.section	.text._ZN10WiFiSocket11ReceiveDataEt,"ax",%progbits
 836              		.align	1
 837              		.p2align 2,,3
 838              		.global	_ZN10WiFiSocket11ReceiveDataEt
 839              		.syntax unified
 840              		.thumb
 841              		.thumb_func
 842              		.fpu fpv4-sp-d16
 843              		.type	_ZN10WiFiSocket11ReceiveDataEt, %function
 844              	_ZN10WiFiSocket11ReceiveDataEt:
 845              		@ args = 0, pretend = 0, frame = 0
 846              		@ frame_needed = 0, uses_anonymous_args = 0
 847              		@ link register save eliminated.
 848 0000 01B9     		cbnz	r1, .L211
 849 0002 7047     		bx	lr
 850              	.L211:
 851 0004 FFF7FEBF 		b	_ZN10WiFiSocket11ReceiveDataEt.part.10
 852              		.size	_ZN10WiFiSocket11ReceiveDataEt, .-_ZN10WiFiSocket11ReceiveDataEt
 853              		.section	.text._ZN10WiFiSocket19DiscardReceivedDataEv,"ax",%progbits
 854              		.align	1
 855              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 16


 856              		.global	_ZN10WiFiSocket19DiscardReceivedDataEv
 857              		.syntax unified
 858              		.thumb
 859              		.thumb_func
 860              		.fpu fpv4-sp-d16
 861              		.type	_ZN10WiFiSocket19DiscardReceivedDataEv, %function
 862              	_ZN10WiFiSocket19DiscardReceivedDataEv:
 863              		@ args = 0, pretend = 0, frame = 0
 864              		@ frame_needed = 0, uses_anonymous_args = 0
 865 0000 10B5     		push	{r4, lr}
 866 0002 0446     		mov	r4, r0
 867 0004 8069     		ldr	r0, [r0, #24]
 868 0006 20B1     		cbz	r0, .L212
 869              	.L214:
 870 0008 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 871 000c A061     		str	r0, [r4, #24]
 872 000e 0028     		cmp	r0, #0
 873 0010 FAD1     		bne	.L214
 874              	.L212:
 875 0012 10BD     		pop	{r4, pc}
 876              		.size	_ZN10WiFiSocket19DiscardReceivedDataEv, .-_ZN10WiFiSocket19DiscardReceivedDataEv
 877              		.section	.text._ZNK10WiFiSocket12NeedsPollingEv,"ax",%progbits
 878              		.align	1
 879              		.p2align 2,,3
 880              		.global	_ZNK10WiFiSocket12NeedsPollingEv
 881              		.syntax unified
 882              		.thumb
 883              		.thumb_func
 884              		.fpu fpv4-sp-d16
 885              		.type	_ZNK10WiFiSocket12NeedsPollingEv, %function
 886              	_ZNK10WiFiSocket12NeedsPollingEv:
 887              		@ args = 0, pretend = 0, frame = 0
 888              		@ frame_needed = 0, uses_anonymous_args = 0
 889              		@ link register save eliminated.
 890 0000 90F82330 		ldrb	r3, [r0, #35]	@ zero_extendqisi2
 891 0004 13B9     		cbnz	r3, .L222
 892 0006 90F82400 		ldrb	r0, [r0, #36]	@ zero_extendqisi2
 893 000a 7047     		bx	lr
 894              	.L222:
 895 000c 0120     		movs	r0, #1
 896 000e 7047     		bx	lr
 897              		.size	_ZNK10WiFiSocket12NeedsPollingEv, .-_ZNK10WiFiSocket12NeedsPollingEv
 898              		.section	.text.startup._GLOBAL__sub_I__ZN10WiFiSocketC2EP16NetworkInterface,"ax",%progbits
 899              		.align	1
 900              		.p2align 2,,3
 901              		.syntax unified
 902              		.thumb
 903              		.thumb_func
 904              		.fpu fpv4-sp-d16
 905              		.type	_GLOBAL__sub_I__ZN10WiFiSocketC2EP16NetworkInterface, %function
 906              	_GLOBAL__sub_I__ZN10WiFiSocketC2EP16NetworkInterface:
 907              		@ args = 0, pretend = 0, frame = 0
 908              		@ frame_needed = 0, uses_anonymous_args = 0
 909              		@ link register save eliminated.
 910 0000 0149     		ldr	r1, .L224
 911 0002 0248     		ldr	r0, .L224+4
 912 0004 FFF7FEBF 		b	_ZN9IPAddress5SetV4EPKh
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 17


 913              	.L225:
 914              		.align	2
 915              	.L224:
 916 0008 00000000 		.word	.LANCHOR1
 917 000c 00000000 		.word	.LANCHOR2
 918              		.size	_GLOBAL__sub_I__ZN10WiFiSocketC2EP16NetworkInterface, .-_GLOBAL__sub_I__ZN10WiFiSocketC2EP16
 919              		.section	.init_array,"aw",%init_array
 920              		.align	2
 921 0000 00000000 		.word	_GLOBAL__sub_I__ZN10WiFiSocketC2EP16NetworkInterface(target1)
 922              		.global	_ZTV10WiFiSocket
 923              		.section	.bss._ZL14DefaultNetMask,"aw",%nobits
 924              		.align	2
 925              		.set	.LANCHOR2,. + 0
 926              		.type	_ZL14DefaultNetMask, %object
 927              		.size	_ZL14DefaultNetMask, 4
 928              	_ZL14DefaultNetMask:
 929 0000 00000000 		.space	4
 930              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 931              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 932              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 933              	_ZL28cpu_irq_prev_interrupt_state:
 934 0000 00       		.space	1
 935              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 936              		.align	2
 937              		.type	_ZL32cpu_irq_critical_section_counter, %object
 938              		.size	_ZL32cpu_irq_critical_section_counter, 4
 939              	_ZL32cpu_irq_critical_section_counter:
 940 0000 00000000 		.space	4
 941              		.section	.rodata.._142,"a",%progbits
 942              		.align	2
 943              		.set	.LANCHOR1,. + 0
 944              		.type	._142, %object
 945              		.size	._142, 4
 946              	._142:
 947 0000 FF       		.byte	-1
 948 0001 FF       		.byte	-1
 949 0002 FF       		.byte	-1
 950 0003 00       		.byte	0
 951              		.section	.rodata._ZN10WiFiSocket11ReceiveDataEt.part.10.str1.4,"aMS",%progbits,1
 952              		.align	2
 953              	.LC2:
 954 0000 52656365 		.ascii	"Received %u bytes\012\000"
 954      69766564 
 954      20257520 
 954      62797465 
 954      730A00
 955              		.section	.rodata._ZN10WiFiSocket4PollEb.str1.4,"aMS",%progbits,1
 956              		.align	2
 957              	.LC3:
 958 0000 42616420 		.ascii	"Bad recv status size\012\000"
 958      72656376 
 958      20737461 
 958      74757320 
 958      73697A65 
 959 0016 0000     		.space	2
 960              	.LC4:
 961 0018 436C6965 		.ascii	"Client disconnected on socket %u\012\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 18


 961      6E742064 
 961      6973636F 
 961      6E6E6563 
 961      74656420 
 962 003a 0000     		.space	2
 963              	.LC5:
 964 003c 4E657720 		.ascii	"New conn on socket %u for local port %u\012\000"
 964      636F6E6E 
 964      206F6E20 
 964      736F636B 
 964      65742025 
 965 0065 000000   		.space	3
 966              	.LC6:
 967 0068 466F756E 		.ascii	"Found responder\012\000"
 967      64207265 
 967      73706F6E 
 967      6465720A 
 967      00
 968 0079 000000   		.space	3
 969              	.LC7:
 970 007c 4E6F2072 		.ascii	"No responder, new conn %u terminated\012\000"
 970      6573706F 
 970      6E646572 
 970      2C206E65 
 970      7720636F 
 971 00a2 0000     		.space	2
 972              	.LC8:
 973 00a4 536F636B 		.ascii	"Socket %u aborted\012\000"
 973      65742025 
 973      75206162 
 973      6F727465 
 973      640A00
 974 00b7 00       		.space	1
 975              	.LC9:
 976 00b8 556E6578 		.ascii	"Unexpected state change on socket %u\012\000"
 976      70656374 
 976      65642073 
 976      74617465 
 976      20636861 
 977              		.section	.rodata._ZN10WiFiSocket4SendEv.str1.4,"aMS",%progbits,1
 978              		.align	2
 979              	.LC1:
 980 0000 53656E64 		.ascii	"Send failed, terminating\012\000"
 980      20666169 
 980      6C65642C 
 980      20746572 
 980      6D696E61 
 981              		.section	.rodata._ZN10WiFiSocket5CloseEv.str1.4,"aMS",%progbits,1
 982              		.align	2
 983              	.LC0:
 984 0000 636C6F73 		.ascii	"close failed, in wrong state\012\000"
 984      65206661 
 984      696C6564 
 984      2C20696E 
 984      2077726F 
 985              		.section	.rodata._ZTV10WiFiSocket,"a",%progbits
 986              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3iZ4KK.s 			page 19


 987              		.set	.LANCHOR0,. + 0
 988              		.type	_ZTV10WiFiSocket, %object
 989              		.size	_ZTV10WiFiSocket, 52
 990              	_ZTV10WiFiSocket:
 991 0000 00000000 		.word	0
 992 0004 00000000 		.word	0
 993 0008 00000000 		.word	_ZN10WiFiSocket4PollEb
 994 000c 00000000 		.word	_ZN10WiFiSocket5CloseEv
 995 0010 00000000 		.word	_ZN10WiFiSocket9TerminateEv
 996 0014 00000000 		.word	_ZN10WiFiSocket19TerminateAndDisableEv
 997 0018 00000000 		.word	_ZN10WiFiSocket8ReadCharERc
 998 001c 00000000 		.word	_ZN10WiFiSocket10ReadBufferERPKhRj
 999 0020 00000000 		.word	_ZN10WiFiSocket5TakenEj
 1000 0024 00000000 		.word	_ZNK10WiFiSocket7CanReadEv
 1001 0028 00000000 		.word	_ZNK10WiFiSocket7CanSendEv
 1002 002c 00000000 		.word	_ZN10WiFiSocket4SendEPKhj
 1003 0030 00000000 		.word	_ZN10WiFiSocket4SendEv
 1004              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
