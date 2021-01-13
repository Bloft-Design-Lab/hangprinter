ARM GAS  /tmp/cc63lvpq.s 			page 1


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
  13              		.file	"TelnetResponder.cpp"
  14              		.section	.text._ZNK15TelnetResponder11DiagnosticsE11MessageType,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZNK15TelnetResponder11DiagnosticsE11MessageType
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK15TelnetResponder11DiagnosticsE11MessageType, %function
  23              	_ZNK15TelnetResponder11DiagnosticsE11MessageType:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 10B4     		push	{r4}
  28 0002 044C     		ldr	r4, .L4
  29 0004 8368     		ldr	r3, [r0, #8]
  30 0006 044A     		ldr	r2, .L4+4
  31 0008 2068     		ldr	r0, [r4]	@ unaligned
  32 000a 5DF8044B 		ldr	r4, [sp], #4
  33 000e FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
  34              	.L5:
  35 0012 00BF     		.align	2
  36              	.L4:
  37 0014 00000000 		.word	reprap
  38 0018 00000000 		.word	.LC0
  39              		.size	_ZNK15TelnetResponder11DiagnosticsE11MessageType, .-_ZNK15TelnetResponder11DiagnosticsE11Mes
  40              		.section	.text._ZN15TelnetResponder9TerminateEh,"ax",%progbits
  41              		.align	1
  42              		.p2align 2,,3
  43              		.global	_ZN15TelnetResponder9TerminateEh
  44              		.syntax unified
  45              		.thumb
  46              		.thumb_func
  47              		.fpu fpv4-sp-d16
  48              		.type	_ZN15TelnetResponder9TerminateEh, %function
  49              	_ZN15TelnetResponder9TerminateEh:
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52              		@ link register save eliminated.
  53 0000 8368     		ldr	r3, [r0, #8]
  54 0002 1BB1     		cbz	r3, .L6
  55 0004 0229     		cmp	r1, #2
  56 0006 02D0     		beq	.L8
  57 0008 FF29     		cmp	r1, #255
ARM GAS  /tmp/cc63lvpq.s 			page 2


  58 000a 00D0     		beq	.L8
  59              	.L6:
  60 000c 7047     		bx	lr
  61              	.L8:
  62 000e 0368     		ldr	r3, [r0]
  63 0010 5B69     		ldr	r3, [r3, #20]
  64 0012 1847     		bx	r3	@ indirect register sibling call
  65              		.size	_ZN15TelnetResponder9TerminateEh, .-_ZN15TelnetResponder9TerminateEh
  66              		.section	.text._ZN15TelnetResponder6AcceptEP6Socketh,"ax",%progbits
  67              		.align	1
  68              		.p2align 2,,3
  69              		.global	_ZN15TelnetResponder6AcceptEP6Socketh
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu fpv4-sp-d16
  74              		.type	_ZN15TelnetResponder6AcceptEP6Socketh, %function
  75              	_ZN15TelnetResponder6AcceptEP6Socketh:
  76              		@ args = 0, pretend = 0, frame = 0
  77              		@ frame_needed = 0, uses_anonymous_args = 0
  78 0000 8368     		ldr	r3, [r0, #8]
  79 0002 0BB9     		cbnz	r3, .L23
  80 0004 022A     		cmp	r2, #2
  81 0006 01D0     		beq	.L27
  82              	.L23:
  83 0008 0020     		movs	r0, #0
  84 000a 7047     		bx	lr
  85              	.L27:
  86 000c 70B5     		push	{r4, r5, r6, lr}
  87 000e 8369     		ldr	r3, [r0, #24]
  88 0010 0D46     		mov	r5, r1
  89 0012 0446     		mov	r4, r0
  90 0014 A3B1     		cbz	r3, .L19
  91              	.L21:
  92 0016 0A23     		movs	r3, #10
  93 0018 0026     		movs	r6, #0
  94 001a A360     		str	r3, [r4, #8]
  95 001c 2561     		str	r5, [r4, #16]
  96 001e C4F86C61 		str	r6, [r4, #364]
  97 0022 FFF7FEFF 		bl	millis
  98 0026 0A4B     		ldr	r3, .L28
  99 0028 84F8C960 		strb	r6, [r4, #201]
 100 002c 9B6C     		ldr	r3, [r3, #72]
 101 002e C4F87001 		str	r0, [r4, #368]
 102 0032 5B07     		lsls	r3, r3, #29
 103 0034 02D5     		bpl	.L26
 104 0036 0748     		ldr	r0, .L28+4
 105 0038 FFF7FEFF 		bl	debugPrintf
 106              	.L26:
 107 003c 0120     		movs	r0, #1
 108 003e 70BD     		pop	{r4, r5, r6, pc}
 109              	.L19:
 110 0040 1830     		adds	r0, r0, #24
 111 0042 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 112 0046 0028     		cmp	r0, #0
 113 0048 E5D1     		bne	.L21
 114 004a 0020     		movs	r0, #0
ARM GAS  /tmp/cc63lvpq.s 			page 3


 115 004c 70BD     		pop	{r4, r5, r6, pc}
 116              	.L29:
 117 004e 00BF     		.align	2
 118              	.L28:
 119 0050 00000000 		.word	reprap
 120 0054 00000000 		.word	.LC1
 121              		.size	_ZN15TelnetResponder6AcceptEP6Socketh, .-_ZN15TelnetResponder6AcceptEP6Socketh
 122              		.section	.text._ZN15TelnetResponderC2EP16NetworkResponder,"ax",%progbits
 123              		.align	1
 124              		.p2align 2,,3
 125              		.global	_ZN15TelnetResponderC2EP16NetworkResponder
 126              		.syntax unified
 127              		.thumb
 128              		.thumb_func
 129              		.fpu fpv4-sp-d16
 130              		.type	_ZN15TelnetResponderC2EP16NetworkResponder, %function
 131              	_ZN15TelnetResponderC2EP16NetworkResponder:
 132              		@ args = 0, pretend = 0, frame = 0
 133              		@ frame_needed = 0, uses_anonymous_args = 0
 134 0000 10B5     		push	{r4, lr}
 135 0002 0446     		mov	r4, r0
 136 0004 FFF7FEFF 		bl	_ZN16NetworkResponderC2EPS_
 137 0008 014B     		ldr	r3, .L32
 138 000a 2360     		str	r3, [r4]
 139 000c 2046     		mov	r0, r4
 140 000e 10BD     		pop	{r4, pc}
 141              	.L33:
 142              		.align	2
 143              	.L32:
 144 0010 08000000 		.word	.LANCHOR0+8
 145              		.size	_ZN15TelnetResponderC2EP16NetworkResponder, .-_ZN15TelnetResponderC2EP16NetworkResponder
 146              		.global	_ZN15TelnetResponderC1EP16NetworkResponder
 147              		.thumb_set _ZN15TelnetResponderC1EP16NetworkResponder,_ZN15TelnetResponderC2EP16NetworkResponder
 148              		.section	.text._ZN15TelnetResponder14SendGCodeReplyEv,"ax",%progbits
 149              		.align	1
 150              		.p2align 2,,3
 151              		.global	_ZN15TelnetResponder14SendGCodeReplyEv
 152              		.syntax unified
 153              		.thumb
 154              		.thumb_func
 155              		.fpu fpv4-sp-d16
 156              		.type	_ZN15TelnetResponder14SendGCodeReplyEv, %function
 157              	_ZN15TelnetResponder14SendGCodeReplyEv:
 158              		@ args = 0, pretend = 0, frame = 8
 159              		@ frame_needed = 0, uses_anonymous_args = 0
 160 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 161 0002 2D4E     		ldr	r6, .L50
 162 0004 2D49     		ldr	r1, .L50+4
 163 0006 85B0     		sub	sp, sp, #20
 164 0008 0546     		mov	r5, r0
 165 000a 4FF0FF32 		mov	r2, #-1
 166 000e 02A8     		add	r0, sp, #8
 167 0010 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 168 0014 3168     		ldr	r1, [r6]
 169 0016 0029     		cmp	r1, #0
 170 0018 36D0     		beq	.L42
 171 001a 294C     		ldr	r4, .L50+8
ARM GAS  /tmp/cc63lvpq.s 			page 4


 172 001c 294F     		ldr	r7, .L50+12
 173 001e 2368     		ldr	r3, [r4]
 174 0020 3A68     		ldr	r2, [r7]
 175 0022 0133     		adds	r3, r3, #1
 176 0024 9342     		cmp	r3, r2
 177 0026 05F11C05 		add	r5, r5, #28
 178 002a 2360     		str	r3, [r4]
 179 002c 19D3     		bcc	.L48
 180 002e 2648     		ldr	r0, .L50+16
 181 0030 846C     		ldr	r4, [r0, #72]
 182 0032 6407     		lsls	r4, r4, #29
 183 0034 2FD5     		bpl	.L45
 184 0036 D1F80C11 		ldr	r1, [r1, #268]
 185 003a 0068     		ldr	r0, [r0]
 186 003c CDE90021 		strd	r2, r1, [sp]
 187 0040 0121     		movs	r1, #1
 188 0042 224A     		ldr	r2, .L50+20
 189 0044 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 190 0048 2846     		mov	r0, r5
 191 004a 3168     		ldr	r1, [r6]
 192 004c FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 193              	.L39:
 194 0050 0023     		movs	r3, #0
 195 0052 02A8     		add	r0, sp, #8
 196 0054 3360     		str	r3, [r6]
 197 0056 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 198 005a 0124     		movs	r4, #1
 199 005c 2046     		mov	r0, r4
 200 005e 05B0     		add	sp, sp, #20
 201              		@ sp needed
 202 0060 F0BD     		pop	{r4, r5, r6, r7, pc}
 203              	.L48:
 204 0062 0846     		mov	r0, r1
 205 0064 0121     		movs	r1, #1
 206 0066 FFF7FEFF 		bl	_ZN12OutputBuffer18IncreaseReferencesEj
 207 006a 174A     		ldr	r2, .L50+16
 208 006c 936C     		ldr	r3, [r2, #72]
 209 006e 5B07     		lsls	r3, r3, #29
 210 0070 15D4     		bmi	.L49
 211              	.L47:
 212 0072 3168     		ldr	r1, [r6]
 213 0074 2846     		mov	r0, r5
 214 0076 FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 215 007a 02A8     		add	r0, sp, #8
 216 007c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 217 0080 0124     		movs	r4, #1
 218 0082 2046     		mov	r0, r4
 219 0084 05B0     		add	sp, sp, #20
 220              		@ sp needed
 221 0086 F0BD     		pop	{r4, r5, r6, r7, pc}
 222              	.L42:
 223 0088 02A8     		add	r0, sp, #8
 224 008a 0C46     		mov	r4, r1
 225 008c FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 226 0090 2046     		mov	r0, r4
 227 0092 05B0     		add	sp, sp, #20
 228              		@ sp needed
ARM GAS  /tmp/cc63lvpq.s 			page 5


 229 0094 F0BD     		pop	{r4, r5, r6, r7, pc}
 230              	.L45:
 231 0096 2846     		mov	r0, r5
 232 0098 FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 233 009c D8E7     		b	.L39
 234              	.L49:
 235 009e 3368     		ldr	r3, [r6]
 236 00a0 3F68     		ldr	r7, [r7]
 237 00a2 D3F80C11 		ldr	r1, [r3, #268]
 238 00a6 1068     		ldr	r0, [r2]
 239 00a8 2368     		ldr	r3, [r4]
 240 00aa 084A     		ldr	r2, .L50+20
 241 00ac CDE90071 		strd	r7, r1, [sp]
 242 00b0 0121     		movs	r1, #1
 243 00b2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 244 00b6 DCE7     		b	.L47
 245              	.L51:
 246              		.align	2
 247              	.L50:
 248 00b8 00000000 		.word	.LANCHOR2
 249 00bc 00000000 		.word	.LANCHOR1
 250 00c0 00000000 		.word	.LANCHOR3
 251 00c4 00000000 		.word	.LANCHOR4
 252 00c8 00000000 		.word	reprap
 253 00cc 00000000 		.word	.LC2
 254              		.size	_ZN15TelnetResponder14SendGCodeReplyEv, .-_ZN15TelnetResponder14SendGCodeReplyEv
 255              		.section	.text._ZN15TelnetResponder14CharFromClientEc,"ax",%progbits
 256              		.align	1
 257              		.p2align 2,,3
 258              		.global	_ZN15TelnetResponder14CharFromClientEc
 259              		.syntax unified
 260              		.thumb
 261              		.thumb_func
 262              		.fpu fpv4-sp-d16
 263              		.type	_ZN15TelnetResponder14CharFromClientEc, %function
 264              	_ZN15TelnetResponder14CharFromClientEc:
 265              		@ args = 0, pretend = 0, frame = 0
 266              		@ frame_needed = 0, uses_anonymous_args = 0
 267              		@ link register save eliminated.
 268 0000 0346     		mov	r3, r0
 269 0002 0D29     		cmp	r1, #13
 270 0004 08D8     		bhi	.L53
 271 0006 DFE801F0 		tbb	[pc, r1]
 272              	.L55:
 273 000a 11       		.byte	(.L52-.L55)/2
 274 000b 07       		.byte	(.L53-.L55)/2
 275 000c 07       		.byte	(.L53-.L55)/2
 276 000d 07       		.byte	(.L53-.L55)/2
 277 000e 07       		.byte	(.L53-.L55)/2
 278 000f 07       		.byte	(.L53-.L55)/2
 279 0010 07       		.byte	(.L53-.L55)/2
 280 0011 07       		.byte	(.L53-.L55)/2
 281 0012 1E       		.byte	(.L56-.L55)/2
 282 0013 07       		.byte	(.L53-.L55)/2
 283 0014 12       		.byte	(.L57-.L55)/2
 284 0015 07       		.byte	(.L53-.L55)/2
 285 0016 07       		.byte	(.L53-.L55)/2
ARM GAS  /tmp/cc63lvpq.s 			page 6


 286 0017 12       		.byte	(.L57-.L55)/2
 287              		.p2align 1
 288              	.L53:
 289 0018 D0F86C21 		ldr	r2, [r0, #364]
 290 001c 1044     		add	r0, r0, r2
 291 001e 0132     		adds	r2, r2, #1
 292 0020 A02A     		cmp	r2, #160
 293 0022 C3F86C21 		str	r2, [r3, #364]
 294 0026 80F8CA10 		strb	r1, [r0, #202]
 295 002a 14D8     		bhi	.L63
 296              	.L52:
 297 002c 7047     		bx	lr
 298              	.L57:
 299 002e D0F86C21 		ldr	r2, [r0, #364]
 300 0032 002A     		cmp	r2, #0
 301 0034 FAD0     		beq	.L52
 302 0036 0244     		add	r2, r2, r0
 303 0038 0121     		movs	r1, #1
 304 003a 0020     		movs	r0, #0
 305 003c 82F8CA00 		strb	r0, [r2, #202]
 306 0040 83F8C910 		strb	r1, [r3, #201]
 307 0044 7047     		bx	lr
 308              	.L56:
 309 0046 D0F86C21 		ldr	r2, [r0, #364]
 310 004a 002A     		cmp	r2, #0
 311 004c EED0     		beq	.L52
 312 004e 013A     		subs	r2, r2, #1
 313 0050 C0F86C21 		str	r2, [r0, #364]
 314 0054 7047     		bx	lr
 315              	.L63:
 316 0056 0449     		ldr	r1, .L64
 317 0058 044A     		ldr	r2, .L64+4
 318 005a 0868     		ldr	r0, [r1]
 319 005c 0021     		movs	r1, #0
 320 005e C3F86C11 		str	r1, [r3, #364]
 321 0062 0121     		movs	r1, #1
 322 0064 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 323              	.L65:
 324              		.align	2
 325              	.L64:
 326 0068 00000000 		.word	reprap
 327 006c 00000000 		.word	.LC3
 328              		.size	_ZN15TelnetResponder14CharFromClientEc, .-_ZN15TelnetResponder14CharFromClientEc
 329              		.section	.text._ZN15TelnetResponder11ProcessLineEv,"ax",%progbits
 330              		.align	1
 331              		.p2align 2,,3
 332              		.global	_ZN15TelnetResponder11ProcessLineEv
 333              		.syntax unified
 334              		.thumb
 335              		.thumb_func
 336              		.fpu fpv4-sp-d16
 337              		.type	_ZN15TelnetResponder11ProcessLineEv, %function
 338              	_ZN15TelnetResponder11ProcessLineEv:
 339              		@ args = 0, pretend = 0, frame = 0
 340              		@ frame_needed = 0, uses_anonymous_args = 0
 341 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 342 0002 00F1CA05 		add	r5, r0, #202
ARM GAS  /tmp/cc63lvpq.s 			page 7


 343 0006 0446     		mov	r4, r0
 344 0008 1F49     		ldr	r1, .L81
 345 000a 2846     		mov	r0, r5
 346 000c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 347 0010 A0B1     		cbz	r0, .L67
 348              	.L70:
 349 0012 A069     		ldr	r0, [r4, #24]
 350 0014 20B3     		cbz	r0, .L79
 351              	.L68:
 352 0016 1D4A     		ldr	r2, .L81+4
 353 0018 1D49     		ldr	r1, .L81+8
 354 001a 1368     		ldr	r3, [r2]
 355 001c 0025     		movs	r5, #0
 356 001e 013B     		subs	r3, r3, #1
 357 0020 84F8C950 		strb	r5, [r4, #201]
 358 0024 C4F86C51 		str	r5, [r4, #364]
 359 0028 1360     		str	r3, [r2]
 360 002a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 361 002e 2946     		mov	r1, r5
 362 0030 2046     		mov	r0, r4
 363 0032 0122     		movs	r2, #1
 364 0034 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 365 0038 FFF7FEBF 		b	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 366              	.L67:
 367 003c 1549     		ldr	r1, .L81+12
 368 003e 2846     		mov	r0, r5
 369 0040 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 370 0044 0646     		mov	r6, r0
 371 0046 0028     		cmp	r0, #0
 372 0048 E3D1     		bne	.L70
 373 004a 134F     		ldr	r7, .L81+16
 374 004c 3B69     		ldr	r3, [r7, #16]
 375 004e 9868     		ldr	r0, [r3, #8]
 376 0050 FFF7FEFF 		bl	_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 377 0054 D4F86C31 		ldr	r3, [r4, #364]
 378 0058 0133     		adds	r3, r3, #1
 379 005a 9842     		cmp	r0, r3
 380 005c 08D2     		bcs	.L80
 381              	.L66:
 382 005e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 383              	.L79:
 384 0060 04F11800 		add	r0, r4, #24
 385 0064 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 386 0068 0028     		cmp	r0, #0
 387 006a F8D0     		beq	.L66
 388 006c A069     		ldr	r0, [r4, #24]
 389 006e D2E7     		b	.L68
 390              	.L80:
 391 0070 3B69     		ldr	r3, [r7, #16]
 392 0072 2A46     		mov	r2, r5
 393 0074 9868     		ldr	r0, [r3, #8]
 394 0076 2021     		movs	r1, #32
 395 0078 FFF7FEFF 		bl	_ZN17NetworkGCodeInput3PutE11MessageTypePKc
 396 007c 84F8C960 		strb	r6, [r4, #201]
 397 0080 C4F86C61 		str	r6, [r4, #364]
 398 0084 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 399              	.L82:
ARM GAS  /tmp/cc63lvpq.s 			page 8


 400 0086 00BF     		.align	2
 401              	.L81:
 402 0088 00000000 		.word	.LC4
 403 008c 00000000 		.word	.LANCHOR4
 404 0090 10000000 		.word	.LC6
 405 0094 08000000 		.word	.LC5
 406 0098 00000000 		.word	reprap
 407              		.size	_ZN15TelnetResponder11ProcessLineEv, .-_ZN15TelnetResponder11ProcessLineEv
 408              		.section	.text._ZN15TelnetResponder4SpinEv,"ax",%progbits
 409              		.align	1
 410              		.p2align 2,,3
 411              		.global	_ZN15TelnetResponder4SpinEv
 412              		.syntax unified
 413              		.thumb
 414              		.thumb_func
 415              		.fpu fpv4-sp-d16
 416              		.type	_ZN15TelnetResponder4SpinEv, %function
 417              	_ZN15TelnetResponder4SpinEv:
 418              		@ args = 0, pretend = 0, frame = 16
 419              		@ frame_needed = 0, uses_anonymous_args = 0
 420 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 421 0002 8368     		ldr	r3, [r0, #8]
 422 0004 013B     		subs	r3, r3, #1
 423 0006 85B0     		sub	sp, sp, #20
 424 0008 0446     		mov	r4, r0
 425 000a 0A2B     		cmp	r3, #10
 426 000c 00F28E80 		bhi	.L115
 427 0010 DFE803F0 		tbb	[pc, r3]
 428              	.L86:
 429 0014 28       		.byte	(.L85-.L86)/2
 430 0015 1E       		.byte	(.L87-.L86)/2
 431 0016 8C       		.byte	(.L115-.L86)/2
 432 0017 8C       		.byte	(.L115-.L86)/2
 433 0018 8C       		.byte	(.L115-.L86)/2
 434 0019 8C       		.byte	(.L115-.L86)/2
 435 001a 8C       		.byte	(.L115-.L86)/2
 436 001b 8C       		.byte	(.L115-.L86)/2
 437 001c 8C       		.byte	(.L115-.L86)/2
 438 001d 06       		.byte	(.L88-.L86)/2
 439 001e 4C       		.byte	(.L89-.L86)/2
 440 001f 00       		.p2align 1
 441              	.L88:
 442 0020 FFF7FEFF 		bl	millis
 443 0024 D4F87031 		ldr	r3, [r4, #368]
 444 0028 C01A     		subs	r0, r0, r3
 445 002a B0F57A6F 		cmp	r0, #4000
 446 002e 80F08180 		bcs	.L90
 447 0032 0DF10F07 		add	r7, sp, #15
 448              	.L91:
 449 0036 2069     		ldr	r0, [r4, #16]
 450 0038 0368     		ldr	r3, [r0]
 451 003a 3946     		mov	r1, r7
 452 003c 1B69     		ldr	r3, [r3, #16]
 453 003e 9847     		blx	r3
 454 0040 0028     		cmp	r0, #0
 455 0042 F8D1     		bne	.L91
 456 0044 0125     		movs	r5, #1
ARM GAS  /tmp/cc63lvpq.s 			page 9


 457 0046 C4F87001 		str	r0, [r4, #368]
 458 004a 2846     		mov	r0, r5
 459 004c 05B0     		add	sp, sp, #20
 460              		@ sp needed
 461 004e F0BD     		pop	{r4, r5, r6, r7, pc}
 462              	.L87:
 463 0050 FFF7FEFF 		bl	_ZN15TelnetResponder14SendGCodeReplyEv
 464 0054 2368     		ldr	r3, [r4]
 465 0056 2046     		mov	r0, r4
 466 0058 1B69     		ldr	r3, [r3, #16]
 467 005a 9847     		blx	r3
 468 005c 0125     		movs	r5, #1
 469              	.L84:
 470 005e 2846     		mov	r0, r5
 471 0060 05B0     		add	sp, sp, #20
 472              		@ sp needed
 473 0062 F0BD     		pop	{r4, r5, r6, r7, pc}
 474              	.L85:
 475 0064 8369     		ldr	r3, [r0, #24]
 476 0066 33B1     		cbz	r3, .L108
 477 0068 D3F80C21 		ldr	r2, [r3, #268]
 478 006c D3F81031 		ldr	r3, [r3, #272]
 479 0070 9A42     		cmp	r2, r3
 480 0072 40F08C80 		bne	.L133
 481              	.L108:
 482 0076 94F8C950 		ldrb	r5, [r4, #201]	@ zero_extendqisi2
 483 007a 002D     		cmp	r5, #0
 484 007c 6DD0     		beq	.L134
 485              	.L106:
 486 007e 2069     		ldr	r0, [r4, #16]
 487 0080 0368     		ldr	r3, [r0]
 488 0082 DB69     		ldr	r3, [r3, #28]
 489 0084 9847     		blx	r3
 490 0086 0028     		cmp	r0, #0
 491 0088 61D0     		beq	.L112
 492 008a 94F8C930 		ldrb	r3, [r4, #201]	@ zero_extendqisi2
 493 008e 0025     		movs	r5, #0
 494              	.L110:
 495 0090 002B     		cmp	r3, #0
 496 0092 40F08280 		bne	.L111
 497 0096 2046     		mov	r0, r4
 498 0098 FFF7FEFF 		bl	_ZN15TelnetResponder14SendGCodeReplyEv
 499 009c 0028     		cmp	r0, #0
 500 009e DED0     		beq	.L84
 501 00a0 0122     		movs	r2, #1
 502 00a2 2046     		mov	r0, r4
 503 00a4 1146     		mov	r1, r2
 504 00a6 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 505 00aa D8E7     		b	.L84
 506              	.L89:
 507 00ac 90F8C950 		ldrb	r5, [r0, #201]	@ zero_extendqisi2
 508 00b0 ADB9     		cbnz	r5, .L98
 509 00b2 0DF10F07 		add	r7, sp, #15
 510 00b6 08E0     		b	.L93
 511              	.L135:
 512 00b8 9DF80F10 		ldrb	r1, [sp, #15]	@ zero_extendqisi2
 513 00bc 2046     		mov	r0, r4
ARM GAS  /tmp/cc63lvpq.s 			page 10


 514 00be FFF7FEFF 		bl	_ZN15TelnetResponder14CharFromClientEc
 515 00c2 94F8C930 		ldrb	r3, [r4, #201]	@ zero_extendqisi2
 516 00c6 3546     		mov	r5, r6
 517 00c8 ABB9     		cbnz	r3, .L97
 518              	.L93:
 519 00ca 2069     		ldr	r0, [r4, #16]
 520 00cc 0368     		ldr	r3, [r0]
 521 00ce 3946     		mov	r1, r7
 522 00d0 1B69     		ldr	r3, [r3, #16]
 523 00d2 9847     		blx	r3
 524 00d4 0646     		mov	r6, r0
 525 00d6 0028     		cmp	r0, #0
 526 00d8 EED1     		bne	.L135
 527 00da 002D     		cmp	r5, #0
 528 00dc 72D1     		bne	.L136
 529              	.L98:
 530 00de 2069     		ldr	r0, [r4, #16]
 531 00e0 0368     		ldr	r3, [r0]
 532 00e2 DB69     		ldr	r3, [r3, #28]
 533 00e4 9847     		blx	r3
 534 00e6 0028     		cmp	r0, #0
 535 00e8 31D0     		beq	.L112
 536 00ea 94F8C930 		ldrb	r3, [r4, #201]	@ zero_extendqisi2
 537 00ee 0025     		movs	r5, #0
 538              	.L99:
 539 00f0 002B     		cmp	r3, #0
 540 00f2 B4D0     		beq	.L84
 541 00f4 2B46     		mov	r3, r5
 542              	.L97:
 543 00f6 A269     		ldr	r2, [r4, #24]
 544 00f8 002A     		cmp	r2, #0
 545 00fa 66D0     		beq	.L101
 546              	.L104:
 547 00fc 0023     		movs	r3, #0
 548 00fe 84F8C930 		strb	r3, [r4, #201]
 549 0102 C4F86C31 		str	r3, [r4, #364]
 550 0106 04F1CA01 		add	r1, r4, #202
 551 010a 3548     		ldr	r0, .L137
 552 010c FFF7FEFF 		bl	_ZNK6RepRap13CheckPasswordEPKc
 553 0110 0546     		mov	r5, r0
 554 0112 0028     		cmp	r0, #0
 555 0114 46D1     		bne	.L102
 556 0116 3349     		ldr	r1, .L137+4
 557              	.L132:
 558 0118 A069     		ldr	r0, [r4, #24]
 559 011a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 560 011e 2046     		mov	r0, r4
 561 0120 0122     		movs	r2, #1
 562 0122 0B21     		movs	r1, #11
 563 0124 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 564 0128 0125     		movs	r5, #1
 565 012a 98E7     		b	.L84
 566              	.L115:
 567 012c 0025     		movs	r5, #0
 568 012e 2846     		mov	r0, r5
 569 0130 05B0     		add	sp, sp, #20
 570              		@ sp needed
ARM GAS  /tmp/cc63lvpq.s 			page 11


 571 0132 F0BD     		pop	{r4, r5, r6, r7, pc}
 572              	.L90:
 573 0134 2A48     		ldr	r0, .L137
 574 0136 FFF7FEFF 		bl	_ZNK6RepRap13NoPasswordSetEv
 575 013a 0546     		mov	r5, r0
 576 013c 0028     		cmp	r0, #0
 577 013e 3FD0     		beq	.L92
 578 0140 294A     		ldr	r2, .L137+8
 579 0142 1368     		ldr	r3, [r2]
 580 0144 0121     		movs	r1, #1
 581 0146 0B44     		add	r3, r3, r1
 582 0148 1360     		str	r3, [r2]
 583 014a A160     		str	r1, [r4, #8]
 584 014c 87E7     		b	.L84
 585              	.L112:
 586 014e 2368     		ldr	r3, [r4]
 587 0150 2046     		mov	r0, r4
 588 0152 5B69     		ldr	r3, [r3, #20]
 589 0154 9847     		blx	r3
 590 0156 0125     		movs	r5, #1
 591 0158 81E7     		b	.L84
 592              	.L134:
 593 015a 0DF10F07 		add	r7, sp, #15
 594 015e 08E0     		b	.L107
 595              	.L109:
 596 0160 9DF80F10 		ldrb	r1, [sp, #15]	@ zero_extendqisi2
 597 0164 2046     		mov	r0, r4
 598 0166 FFF7FEFF 		bl	_ZN15TelnetResponder14CharFromClientEc
 599 016a 94F8C930 		ldrb	r3, [r4, #201]	@ zero_extendqisi2
 600 016e 3546     		mov	r5, r6
 601 0170 9BB9     		cbnz	r3, .L111
 602              	.L107:
 603 0172 2069     		ldr	r0, [r4, #16]
 604 0174 0368     		ldr	r3, [r0]
 605 0176 3946     		mov	r1, r7
 606 0178 1B69     		ldr	r3, [r3, #16]
 607 017a 9847     		blx	r3
 608 017c 0646     		mov	r6, r0
 609 017e 0028     		cmp	r0, #0
 610 0180 EED1     		bne	.L109
 611 0182 002D     		cmp	r5, #0
 612 0184 3FF47BAF 		beq	.L106
 613 0188 94F8C930 		ldrb	r3, [r4, #201]	@ zero_extendqisi2
 614 018c 80E7     		b	.L110
 615              	.L133:
 616 018e 0122     		movs	r2, #1
 617 0190 1146     		mov	r1, r2
 618 0192 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 619 0196 0125     		movs	r5, #1
 620 0198 61E7     		b	.L84
 621              	.L111:
 622 019a 2046     		mov	r0, r4
 623 019c FFF7FEFF 		bl	_ZN15TelnetResponder11ProcessLineEv
 624 01a0 0125     		movs	r5, #1
 625 01a2 5CE7     		b	.L84
 626              	.L102:
 627 01a4 104A     		ldr	r2, .L137+8
ARM GAS  /tmp/cc63lvpq.s 			page 12


 628 01a6 1149     		ldr	r1, .L137+12
 629 01a8 1368     		ldr	r3, [r2]
 630 01aa A069     		ldr	r0, [r4, #24]
 631 01ac 0133     		adds	r3, r3, #1
 632 01ae 1360     		str	r3, [r2]
 633 01b0 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 634 01b4 0122     		movs	r2, #1
 635 01b6 2046     		mov	r0, r4
 636 01b8 1146     		mov	r1, r2
 637 01ba FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 638 01be 4EE7     		b	.L84
 639              	.L92:
 640 01c0 0B49     		ldr	r1, .L137+16
 641 01c2 A9E7     		b	.L132
 642              	.L136:
 643 01c4 94F8C930 		ldrb	r3, [r4, #201]	@ zero_extendqisi2
 644 01c8 92E7     		b	.L99
 645              	.L101:
 646 01ca 04F11800 		add	r0, r4, #24
 647 01ce 0193     		str	r3, [sp, #4]
 648 01d0 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 649 01d4 0028     		cmp	r0, #0
 650 01d6 91D1     		bne	.L104
 651 01d8 019B     		ldr	r3, [sp, #4]
 652 01da 1D46     		mov	r5, r3
 653 01dc 3FE7     		b	.L84
 654              	.L138:
 655 01de 00BF     		.align	2
 656              	.L137:
 657 01e0 00000000 		.word	reprap
 658 01e4 5C000000 		.word	.LC9
 659 01e8 00000000 		.word	.LANCHOR4
 660 01ec 44000000 		.word	.LC8
 661 01f0 00000000 		.word	.LC7
 662              		.size	_ZN15TelnetResponder4SpinEv, .-_ZN15TelnetResponder4SpinEv
 663              		.section	.text._ZN15TelnetResponder10InitStaticEv,"ax",%progbits
 664              		.align	1
 665              		.p2align 2,,3
 666              		.global	_ZN15TelnetResponder10InitStaticEv
 667              		.syntax unified
 668              		.thumb
 669              		.thumb_func
 670              		.fpu fpv4-sp-d16
 671              		.type	_ZN15TelnetResponder10InitStaticEv, %function
 672              	_ZN15TelnetResponder10InitStaticEv:
 673              		@ args = 0, pretend = 0, frame = 0
 674              		@ frame_needed = 0, uses_anonymous_args = 0
 675              		@ link register save eliminated.
 676 0000 0149     		ldr	r1, .L140
 677 0002 0248     		ldr	r0, .L140+4
 678 0004 FFF7FEBF 		b	_ZN5Mutex6CreateEPKc
 679              	.L141:
 680              		.align	2
 681              	.L140:
 682 0008 00000000 		.word	.LC10
 683 000c 00000000 		.word	.LANCHOR1
 684              		.size	_ZN15TelnetResponder10InitStaticEv, .-_ZN15TelnetResponder10InitStaticEv
ARM GAS  /tmp/cc63lvpq.s 			page 13


 685              		.section	.text._ZN15TelnetResponder16HandleGCodeReplyEPKc,"ax",%progbits
 686              		.align	1
 687              		.p2align 2,,3
 688              		.global	_ZN15TelnetResponder16HandleGCodeReplyEPKc
 689              		.syntax unified
 690              		.thumb
 691              		.thumb_func
 692              		.fpu fpv4-sp-d16
 693              		.type	_ZN15TelnetResponder16HandleGCodeReplyEPKc, %function
 694              	_ZN15TelnetResponder16HandleGCodeReplyEPKc:
 695              		@ args = 0, pretend = 0, frame = 8
 696              		@ frame_needed = 0, uses_anonymous_args = 0
 697 0000 10B1     		cbz	r0, .L167
 698 0002 1D4B     		ldr	r3, .L172
 699 0004 1B68     		ldr	r3, [r3]
 700 0006 03B9     		cbnz	r3, .L170
 701              	.L167:
 702 0008 7047     		bx	lr
 703              	.L170:
 704 000a 30B5     		push	{r4, r5, lr}
 705 000c 1B4D     		ldr	r5, .L172+4
 706 000e 1C49     		ldr	r1, .L172+8
 707 0010 83B0     		sub	sp, sp, #12
 708 0012 0446     		mov	r4, r0
 709 0014 4FF0FF32 		mov	r2, #-1
 710 0018 6846     		mov	r0, sp
 711 001a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 712 001e 2B68     		ldr	r3, [r5]
 713 0020 1BB3     		cbz	r3, .L144
 714              	.L147:
 715 0022 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 716 0024 3BB9     		cbnz	r3, .L146
 717 0026 18E0     		b	.L145
 718              	.L149:
 719 0028 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 720 002a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 721 002e 78B1     		cbz	r0, .L148
 722              	.L171:
 723 0030 14F8013F 		ldrb	r3, [r4, #1]!	@ zero_extendqisi2
 724 0034 8BB1     		cbz	r3, .L145
 725              	.L146:
 726 0036 0A2B     		cmp	r3, #10
 727 0038 2868     		ldr	r0, [r5]
 728 003a F5D1     		bne	.L149
 729 003c 0D21     		movs	r1, #13
 730 003e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 731 0042 28B1     		cbz	r0, .L148
 732 0044 2868     		ldr	r0, [r5]
 733 0046 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 734 0048 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 735 004c 0028     		cmp	r0, #0
 736 004e EFD1     		bne	.L171
 737              	.L148:
 738 0050 6846     		mov	r0, sp
 739 0052 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 740 0056 03B0     		add	sp, sp, #12
 741              		@ sp needed
ARM GAS  /tmp/cc63lvpq.s 			page 14


 742 0058 30BD     		pop	{r4, r5, pc}
 743              	.L145:
 744 005a 0A4B     		ldr	r3, .L172+12
 745 005c 0022     		movs	r2, #0
 746 005e 6846     		mov	r0, sp
 747 0060 1A60     		str	r2, [r3]
 748 0062 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 749 0066 03B0     		add	sp, sp, #12
 750              		@ sp needed
 751 0068 30BD     		pop	{r4, r5, pc}
 752              	.L144:
 753 006a 2846     		mov	r0, r5
 754 006c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 755 0070 0028     		cmp	r0, #0
 756 0072 D6D1     		bne	.L147
 757 0074 ECE7     		b	.L148
 758              	.L173:
 759 0076 00BF     		.align	2
 760              	.L172:
 761 0078 00000000 		.word	.LANCHOR4
 762 007c 00000000 		.word	.LANCHOR2
 763 0080 00000000 		.word	.LANCHOR1
 764 0084 00000000 		.word	.LANCHOR3
 765              		.size	_ZN15TelnetResponder16HandleGCodeReplyEPKc, .-_ZN15TelnetResponder16HandleGCodeReplyEPKc
 766              		.section	.text._ZN15TelnetResponder16HandleGCodeReplyEP12OutputBuffer,"ax",%progbits
 767              		.align	1
 768              		.p2align 2,,3
 769              		.global	_ZN15TelnetResponder16HandleGCodeReplyEP12OutputBuffer
 770              		.syntax unified
 771              		.thumb
 772              		.thumb_func
 773              		.fpu fpv4-sp-d16
 774              		.type	_ZN15TelnetResponder16HandleGCodeReplyEP12OutputBuffer, %function
 775              	_ZN15TelnetResponder16HandleGCodeReplyEP12OutputBuffer:
 776              		@ args = 0, pretend = 0, frame = 16
 777              		@ frame_needed = 0, uses_anonymous_args = 0
 778 0000 70B5     		push	{r4, r5, r6, lr}
 779 0002 84B0     		sub	sp, sp, #16
 780 0004 0190     		str	r0, [sp, #4]
 781 0006 10B1     		cbz	r0, .L175
 782 0008 2B4B     		ldr	r3, .L196
 783 000a 1B68     		ldr	r3, [r3]
 784 000c 23B9     		cbnz	r3, .L194
 785              	.L175:
 786 000e 01A8     		add	r0, sp, #4
 787 0010 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 788              	.L174:
 789 0014 04B0     		add	sp, sp, #16
 790              		@ sp needed
 791 0016 70BD     		pop	{r4, r5, r6, pc}
 792              	.L194:
 793 0018 284E     		ldr	r6, .L196+4
 794 001a 2949     		ldr	r1, .L196+8
 795 001c 02A8     		add	r0, sp, #8
 796 001e 4FF0FF32 		mov	r2, #-1
 797 0022 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 798 0026 3368     		ldr	r3, [r6]
ARM GAS  /tmp/cc63lvpq.s 			page 15


 799 0028 7BB3     		cbz	r3, .L195
 800              	.L176:
 801 002a 019B     		ldr	r3, [sp, #4]
 802              	.L181:
 803 002c D3F80C21 		ldr	r2, [r3, #268]
 804 0030 EAB1     		cbz	r2, .L178
 805 0032 03F10B05 		add	r5, r3, #11
 806 0036 0024     		movs	r4, #0
 807 0038 06E0     		b	.L180
 808              	.L179:
 809 003a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 810 003e 019B     		ldr	r3, [sp, #4]
 811 0040 D3F80C21 		ldr	r2, [r3, #268]
 812 0044 A242     		cmp	r2, r4
 813 0046 12D9     		bls	.L178
 814              	.L180:
 815 0048 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
 816 004c 3068     		ldr	r0, [r6]
 817 004e 0A29     		cmp	r1, #10
 818 0050 04F10104 		add	r4, r4, #1
 819 0054 F1D1     		bne	.L179
 820 0056 0D21     		movs	r1, #13
 821 0058 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 822 005c 3068     		ldr	r0, [r6]
 823 005e 2978     		ldrb	r1, [r5]	@ zero_extendqisi2
 824 0060 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 825 0064 019B     		ldr	r3, [sp, #4]
 826 0066 D3F80C21 		ldr	r2, [r3, #268]
 827 006a A242     		cmp	r2, r4
 828 006c ECD8     		bhi	.L180
 829              	.L178:
 830 006e 1846     		mov	r0, r3
 831 0070 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 832 0074 0346     		mov	r3, r0
 833 0076 0190     		str	r0, [sp, #4]
 834 0078 0028     		cmp	r0, #0
 835 007a D7D1     		bne	.L181
 836 007c 114A     		ldr	r2, .L196+12
 837 007e 02A8     		add	r0, sp, #8
 838 0080 1360     		str	r3, [r2]
 839 0082 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 840 0086 04B0     		add	sp, sp, #16
 841              		@ sp needed
 842 0088 70BD     		pop	{r4, r5, r6, pc}
 843              	.L195:
 844 008a 3046     		mov	r0, r6
 845 008c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 846 0090 0028     		cmp	r0, #0
 847 0092 CAD1     		bne	.L176
 848 0094 4FF48071 		mov	r1, #256
 849 0098 0198     		ldr	r0, [sp, #4]
 850 009a FFF7FEFF 		bl	_ZN12OutputBuffer8TruncateEPS_j
 851 009e 3046     		mov	r0, r6
 852 00a0 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 853 00a4 0028     		cmp	r0, #0
 854 00a6 C0D1     		bne	.L176
 855 00a8 01A8     		add	r0, sp, #4
ARM GAS  /tmp/cc63lvpq.s 			page 16


 856 00aa FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 857 00ae 02A8     		add	r0, sp, #8
 858 00b0 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 859 00b4 AEE7     		b	.L174
 860              	.L197:
 861 00b6 00BF     		.align	2
 862              	.L196:
 863 00b8 00000000 		.word	.LANCHOR4
 864 00bc 00000000 		.word	.LANCHOR2
 865 00c0 00000000 		.word	.LANCHOR1
 866 00c4 00000000 		.word	.LANCHOR3
 867              		.size	_ZN15TelnetResponder16HandleGCodeReplyEP12OutputBuffer, .-_ZN15TelnetResponder16HandleGCodeR
 868              		.section	.text.startup._GLOBAL__sub_I__ZN15TelnetResponderC2EP16NetworkResponder,"ax",%progbits
 869              		.align	1
 870              		.p2align 2,,3
 871              		.syntax unified
 872              		.thumb
 873              		.thumb_func
 874              		.fpu fpv4-sp-d16
 875              		.type	_GLOBAL__sub_I__ZN15TelnetResponderC2EP16NetworkResponder, %function
 876              	_GLOBAL__sub_I__ZN15TelnetResponderC2EP16NetworkResponder:
 877              		@ args = 0, pretend = 0, frame = 0
 878              		@ frame_needed = 0, uses_anonymous_args = 0
 879              		@ link register save eliminated.
 880 0000 014B     		ldr	r3, .L199
 881 0002 0022     		movs	r2, #0
 882 0004 1A60     		str	r2, [r3]
 883 0006 7047     		bx	lr
 884              	.L200:
 885              		.align	2
 886              	.L199:
 887 0008 00000000 		.word	.LANCHOR1
 888              		.size	_GLOBAL__sub_I__ZN15TelnetResponderC2EP16NetworkResponder, .-_GLOBAL__sub_I__ZN15TelnetRespo
 889              		.section	.init_array,"aw",%init_array
 890              		.align	2
 891 0000 00000000 		.word	_GLOBAL__sub_I__ZN15TelnetResponderC2EP16NetworkResponder(target1)
 892              		.section	.text._ZN15TelnetResponder14ConnectionLostEv,"ax",%progbits
 893              		.align	1
 894              		.p2align 2,,3
 895              		.global	_ZN15TelnetResponder14ConnectionLostEv
 896              		.syntax unified
 897              		.thumb
 898              		.thumb_func
 899              		.fpu fpv4-sp-d16
 900              		.type	_ZN15TelnetResponder14ConnectionLostEv, %function
 901              	_ZN15TelnetResponder14ConnectionLostEv:
 902              		@ args = 0, pretend = 0, frame = 8
 903              		@ frame_needed = 0, uses_anonymous_args = 0
 904 0000 30B5     		push	{r4, r5, lr}
 905 0002 8368     		ldr	r3, [r0, #8]
 906 0004 013B     		subs	r3, r3, #1
 907 0006 012B     		cmp	r3, #1
 908 0008 83B0     		sub	sp, sp, #12
 909 000a 0446     		mov	r4, r0
 910 000c 04D9     		bls	.L212
 911 000e 2046     		mov	r0, r4
 912 0010 FFF7FEFF 		bl	_ZN16NetworkResponder14ConnectionLostEv
ARM GAS  /tmp/cc63lvpq.s 			page 17


 913 0014 03B0     		add	sp, sp, #12
 914              		@ sp needed
 915 0016 30BD     		pop	{r4, r5, pc}
 916              	.L212:
 917 0018 4FF0FF32 		mov	r2, #-1
 918 001c 6846     		mov	r0, sp
 919 001e 0E49     		ldr	r1, .L213
 920 0020 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 921 0024 0D4A     		ldr	r2, .L213+4
 922 0026 1368     		ldr	r3, [r2]
 923 0028 0BB1     		cbz	r3, .L203
 924 002a 013B     		subs	r3, r3, #1
 925 002c 1360     		str	r3, [r2]
 926              	.L203:
 927 002e 0C48     		ldr	r0, .L213+8
 928 0030 0368     		ldr	r3, [r0]
 929 0032 43B1     		cbz	r3, .L204
 930 0034 0B4D     		ldr	r5, .L213+12
 931 0036 1368     		ldr	r3, [r2]
 932 0038 2A68     		ldr	r2, [r5]
 933 003a 9A42     		cmp	r2, r3
 934 003c 03D9     		bls	.L204
 935 003e FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 936 0042 0023     		movs	r3, #0
 937 0044 2B60     		str	r3, [r5]
 938              	.L204:
 939 0046 6846     		mov	r0, sp
 940 0048 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 941 004c 2046     		mov	r0, r4
 942 004e FFF7FEFF 		bl	_ZN16NetworkResponder14ConnectionLostEv
 943 0052 03B0     		add	sp, sp, #12
 944              		@ sp needed
 945 0054 30BD     		pop	{r4, r5, pc}
 946              	.L214:
 947 0056 00BF     		.align	2
 948              	.L213:
 949 0058 00000000 		.word	.LANCHOR1
 950 005c 00000000 		.word	.LANCHOR4
 951 0060 00000000 		.word	.LANCHOR2
 952 0064 00000000 		.word	.LANCHOR3
 953              		.size	_ZN15TelnetResponder14ConnectionLostEv, .-_ZN15TelnetResponder14ConnectionLostEv
 954              		.global	_ZTV15TelnetResponder
 955              		.global	_ZN15TelnetResponder15gcodeReplyMutexE
 956              		.global	_ZN15TelnetResponder10gcodeReplyE
 957              		.global	_ZN15TelnetResponder13clientsServedE
 958              		.global	_ZN15TelnetResponder11numSessionsE
 959              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 960              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 961              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 962              	_ZL28cpu_irq_prev_interrupt_state:
 963 0000 00       		.space	1
 964              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 965              		.align	2
 966              		.type	_ZL32cpu_irq_critical_section_counter, %object
 967              		.size	_ZL32cpu_irq_critical_section_counter, 4
 968              	_ZL32cpu_irq_critical_section_counter:
 969 0000 00000000 		.space	4
ARM GAS  /tmp/cc63lvpq.s 			page 18


 970              		.section	.bss._ZN15TelnetResponder10gcodeReplyE,"aw",%nobits
 971              		.align	2
 972              		.set	.LANCHOR2,. + 0
 973              		.type	_ZN15TelnetResponder10gcodeReplyE, %object
 974              		.size	_ZN15TelnetResponder10gcodeReplyE, 4
 975              	_ZN15TelnetResponder10gcodeReplyE:
 976 0000 00000000 		.space	4
 977              		.section	.bss._ZN15TelnetResponder11numSessionsE,"aw",%nobits
 978              		.align	2
 979              		.set	.LANCHOR4,. + 0
 980              		.type	_ZN15TelnetResponder11numSessionsE, %object
 981              		.size	_ZN15TelnetResponder11numSessionsE, 4
 982              	_ZN15TelnetResponder11numSessionsE:
 983 0000 00000000 		.space	4
 984              		.section	.bss._ZN15TelnetResponder13clientsServedE,"aw",%nobits
 985              		.align	2
 986              		.set	.LANCHOR3,. + 0
 987              		.type	_ZN15TelnetResponder13clientsServedE, %object
 988              		.size	_ZN15TelnetResponder13clientsServedE, 4
 989              	_ZN15TelnetResponder13clientsServedE:
 990 0000 00000000 		.space	4
 991              		.section	.bss._ZN15TelnetResponder15gcodeReplyMutexE,"aw",%nobits
 992              		.align	2
 993              		.set	.LANCHOR1,. + 0
 994              		.type	_ZN15TelnetResponder15gcodeReplyMutexE, %object
 995              		.size	_ZN15TelnetResponder15gcodeReplyMutexE, 4
 996              	_ZN15TelnetResponder15gcodeReplyMutexE:
 997 0000 00000000 		.space	4
 998              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 999              		.align	2
 1000              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1001              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1002              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1003 0000 00000000 		.space	4
 1004              		.section	.rodata._ZN15TelnetResponder10InitStaticEv.str1.4,"aMS",%progbits,1
 1005              		.align	2
 1006              	.LC10:
 1007 0000 54656C6E 		.ascii	"TelnetGCodeReply\000"
 1007      65744743 
 1007      6F646552 
 1007      65706C79 
 1007      00
 1008              		.section	.rodata._ZN15TelnetResponder11ProcessLineEv.str1.4,"aMS",%progbits,1
 1009              		.align	2
 1010              	.LC4:
 1011 0000 65786974 		.ascii	"exit\000"
 1011      00
 1012 0005 000000   		.space	3
 1013              	.LC5:
 1014 0008 71756974 		.ascii	"quit\000"
 1014      00
 1015 000d 000000   		.space	3
 1016              	.LC6:
 1017 0010 476F6F64 		.ascii	"Goodbye.\015\012\000"
 1017      6279652E 
 1017      0D0A00
 1018              		.section	.rodata._ZN15TelnetResponder14CharFromClientEc.str1.4,"aMS",%progbits,1
ARM GAS  /tmp/cc63lvpq.s 			page 19


 1019              		.align	2
 1020              	.LC3:
 1021 0000 57656273 		.ascii	"Webserver: Buffer overflow in Telnet server!\012\000"
 1021      65727665 
 1021      723A2042 
 1021      75666665 
 1021      72206F76 
 1022              		.section	.rodata._ZN15TelnetResponder14SendGCodeReplyEv.str1.4,"aMS",%progbits,1
 1023              		.align	2
 1024              	.LC2:
 1025 0000 53656E64 		.ascii	"Sending G-Code reply to Telnet client %d of %d (len"
 1025      696E6720 
 1025      472D436F 
 1025      64652072 
 1025      65706C79 
 1026 0033 67746820 		.ascii	"gth %u)\012\000"
 1026      2575290A 
 1026      00
 1027              		.section	.rodata._ZN15TelnetResponder4SpinEv.str1.4,"aMS",%progbits,1
 1028              		.align	2
 1029              	.LC7:
 1030 0000 52657052 		.ascii	"RepRapFirmware Telnet interface\015\012\015\012Plea"
 1030      61704669 
 1030      726D7761 
 1030      72652054 
 1030      656C6E65 
 1031 0027 73652065 		.ascii	"se enter your password:\015\012> \000"
 1031      6E746572 
 1031      20796F75 
 1031      72207061 
 1031      7373776F 
 1032 0043 00       		.space	1
 1033              	.LC8:
 1034 0044 4C6F6720 		.ascii	"Log in successful!\015\012\000"
 1034      696E2073 
 1034      75636365 
 1034      73736675 
 1034      6C210D0A 
 1035 0059 000000   		.space	3
 1036              	.LC9:
 1037 005c 496E7661 		.ascii	"Invalid password.\015\012> \000"
 1037      6C696420 
 1037      70617373 
 1037      776F7264 
 1037      2E0D0A3E 
 1038              		.section	.rodata._ZN15TelnetResponder6AcceptEP6Socketh.str1.4,"aMS",%progbits,1
 1039              		.align	2
 1040              	.LC1:
 1041 0000 54656C6E 		.ascii	"Telnet connection accepted\012\000"
 1041      65742063 
 1041      6F6E6E65 
 1041      6374696F 
 1041      6E206163 
 1042              		.section	.rodata._ZNK15TelnetResponder11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 1043              		.align	2
 1044              	.LC0:
 1045 0000 2054656C 		.ascii	" Telnet(%d)\000"
ARM GAS  /tmp/cc63lvpq.s 			page 20


 1045      6E657428 
 1045      25642900 
 1046              		.section	.rodata._ZTV15TelnetResponder,"a",%progbits
 1047              		.align	2
 1048              		.set	.LANCHOR0,. + 0
 1049              		.type	_ZTV15TelnetResponder, %object
 1050              		.size	_ZTV15TelnetResponder, 36
 1051              	_ZTV15TelnetResponder:
 1052 0000 00000000 		.word	0
 1053 0004 00000000 		.word	0
 1054 0008 00000000 		.word	_ZN15TelnetResponder4SpinEv
 1055 000c 00000000 		.word	_ZN15TelnetResponder6AcceptEP6Socketh
 1056 0010 00000000 		.word	_ZN15TelnetResponder9TerminateEh
 1057 0014 00000000 		.word	_ZNK15TelnetResponder11DiagnosticsE11MessageType
 1058 0018 00000000 		.word	_ZN16NetworkResponder8SendDataEv
 1059 001c 00000000 		.word	_ZN15TelnetResponder14ConnectionLostEv
 1060 0020 00000000 		.word	_ZN16NetworkResponder12CancelUploadEv
 1061              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
