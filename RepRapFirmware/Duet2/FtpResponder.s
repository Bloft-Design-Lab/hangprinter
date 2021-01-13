ARM GAS  /tmp/cc9HRniu.s 			page 1


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
  13              		.file	"FtpResponder.cpp"
  14              		.section	.text._ZNK12FtpResponder11DiagnosticsE11MessageType,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZNK12FtpResponder11DiagnosticsE11MessageType
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK12FtpResponder11DiagnosticsE11MessageType, %function
  23              	_ZNK12FtpResponder11DiagnosticsE11MessageType:
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
  39              		.size	_ZNK12FtpResponder11DiagnosticsE11MessageType, .-_ZNK12FtpResponder11DiagnosticsE11MessageTy
  40              		.section	.text._ZN12FtpResponder8SendDataEv,"ax",%progbits
  41              		.align	1
  42              		.p2align 2,,3
  43              		.global	_ZN12FtpResponder8SendDataEv
  44              		.syntax unified
  45              		.thumb
  46              		.thumb_func
  47              		.fpu fpv4-sp-d16
  48              		.type	_ZN12FtpResponder8SendDataEv, %function
  49              	_ZN12FtpResponder8SendDataEv:
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52 0000 70B5     		push	{r4, r5, r6, lr}
  53 0002 8469     		ldr	r4, [r0, #24]
  54 0004 0546     		mov	r5, r0
  55 0006 00F11C06 		add	r6, r0, #28
  56 000a F4B1     		cbz	r4, .L23
  57              	.L8:
ARM GAS  /tmp/cc9HRniu.s 			page 2


  58 000c D4F81031 		ldr	r3, [r4, #272]
  59 0010 D4F80C21 		ldr	r2, [r4, #268]
  60 0014 04F10C01 		add	r1, r4, #12
  61 0018 2046     		mov	r0, r4
  62 001a D41A     		subs	r4, r2, r3
  63 001c 1944     		add	r1, r1, r3
  64 001e 2246     		mov	r2, r4
  65 0020 0DD0     		beq	.L22
  66 0022 2869     		ldr	r0, [r5, #16]
  67 0024 0368     		ldr	r3, [r0]
  68 0026 5B6A     		ldr	r3, [r3, #36]
  69 0028 9847     		blx	r3
  70 002a 18B3     		cbz	r0, .L24
  71 002c AA69     		ldr	r2, [r5, #24]
  72 002e D2F81031 		ldr	r3, [r2, #272]
  73 0032 8442     		cmp	r4, r0
  74 0034 0344     		add	r3, r3, r0
  75 0036 C2F81031 		str	r3, [r2, #272]
  76 003a 1AD8     		bhi	.L6
  77 003c A869     		ldr	r0, [r5, #24]
  78              	.L22:
  79 003e FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
  80 0042 0446     		mov	r4, r0
  81 0044 A861     		str	r0, [r5, #24]
  82 0046 002C     		cmp	r4, #0
  83 0048 E0D1     		bne	.L8
  84              	.L23:
  85 004a 3046     		mov	r0, r6
  86 004c FFF7FEFF 		bl	_ZNV11OutputStack3PopEv
  87 0050 0446     		mov	r4, r0
  88 0052 A861     		str	r0, [r5, #24]
  89 0054 0028     		cmp	r0, #0
  90 0056 D9D1     		bne	.L8
  91 0058 2869     		ldr	r0, [r5, #16]
  92 005a 0368     		ldr	r3, [r0]
  93 005c 9B6A     		ldr	r3, [r3, #40]
  94 005e 9847     		blx	r3
  95 0060 EB68     		ldr	r3, [r5, #12]
  96 0062 2BB9     		cbnz	r3, .L17
  97 0064 2869     		ldr	r0, [r5, #16]
  98 0066 0368     		ldr	r3, [r0]
  99 0068 5B68     		ldr	r3, [r3, #4]
 100 006a 9847     		blx	r3
 101 006c EB68     		ldr	r3, [r5, #12]
 102 006e 2C61     		str	r4, [r5, #16]
 103              	.L17:
 104 0070 AB60     		str	r3, [r5, #8]
 105              	.L6:
 106 0072 70BD     		pop	{r4, r5, r6, pc}
 107              	.L24:
 108 0074 2869     		ldr	r0, [r5, #16]
 109 0076 0368     		ldr	r3, [r0]
 110 0078 1B6A     		ldr	r3, [r3, #32]
 111 007a 9847     		blx	r3
 112 007c 0028     		cmp	r0, #0
 113 007e F8D1     		bne	.L6
 114 0080 064B     		ldr	r3, .L26
ARM GAS  /tmp/cc9HRniu.s 			page 3


 115 0082 9B6C     		ldr	r3, [r3, #72]
 116 0084 5B07     		lsls	r3, r3, #29
 117 0086 05D4     		bmi	.L25
 118              	.L15:
 119 0088 2B68     		ldr	r3, [r5]
 120 008a 2846     		mov	r0, r5
 121 008c 5B69     		ldr	r3, [r3, #20]
 122 008e BDE87040 		pop	{r4, r5, r6, lr}
 123 0092 1847     		bx	r3	@ indirect register sibling call
 124              	.L25:
 125 0094 0248     		ldr	r0, .L26+4
 126 0096 FFF7FEFF 		bl	debugPrintf
 127 009a F5E7     		b	.L15
 128              	.L27:
 129              		.align	2
 130              	.L26:
 131 009c 00000000 		.word	reprap
 132 00a0 00000000 		.word	.LC1
 133              		.size	_ZN12FtpResponder8SendDataEv, .-_ZN12FtpResponder8SendDataEv
 134              		.section	.text._ZN12FtpResponder9TerminateEh,"ax",%progbits
 135              		.align	1
 136              		.p2align 2,,3
 137              		.global	_ZN12FtpResponder9TerminateEh
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu fpv4-sp-d16
 142              		.type	_ZN12FtpResponder9TerminateEh, %function
 143              	_ZN12FtpResponder9TerminateEh:
 144              		@ args = 0, pretend = 0, frame = 0
 145              		@ frame_needed = 0, uses_anonymous_args = 0
 146              		@ link register save eliminated.
 147 0000 8368     		ldr	r3, [r0, #8]
 148 0002 1BB1     		cbz	r3, .L28
 149 0004 0129     		cmp	r1, #1
 150 0006 02D0     		beq	.L30
 151 0008 FF29     		cmp	r1, #255
 152 000a 00D0     		beq	.L30
 153              	.L28:
 154 000c 7047     		bx	lr
 155              	.L30:
 156 000e 0368     		ldr	r3, [r0]
 157 0010 5B69     		ldr	r3, [r3, #20]
 158 0012 1847     		bx	r3	@ indirect register sibling call
 159              		.size	_ZN12FtpResponder9TerminateEh, .-_ZN12FtpResponder9TerminateEh
 160              		.section	.text._ZN12FtpResponder6AcceptEP6Socketh,"ax",%progbits
 161              		.align	1
 162              		.p2align 2,,3
 163              		.global	_ZN12FtpResponder6AcceptEP6Socketh
 164              		.syntax unified
 165              		.thumb
 166              		.thumb_func
 167              		.fpu fpv4-sp-d16
 168              		.type	_ZN12FtpResponder6AcceptEP6Socketh, %function
 169              	_ZN12FtpResponder6AcceptEP6Socketh:
 170              		@ args = 0, pretend = 0, frame = 8
 171              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cc9HRniu.s 			page 4


 172 0000 10B5     		push	{r4, lr}
 173 0002 8368     		ldr	r3, [r0, #8]
 174 0004 82B0     		sub	sp, sp, #8
 175 0006 0446     		mov	r4, r0
 176 0008 23B9     		cbnz	r3, .L38
 177 000a 012A     		cmp	r2, #1
 178 000c 15D0     		beq	.L39
 179              	.L45:
 180 000e 0020     		movs	r0, #0
 181              	.L40:
 182 0010 02B0     		add	sp, sp, #8
 183              		@ sp needed
 184 0012 10BD     		pop	{r4, pc}
 185              	.L38:
 186 0014 062B     		cmp	r3, #6
 187 0016 FAD1     		bne	.L45
 188 0018 032A     		cmp	r2, #3
 189 001a F8D1     		bne	.L45
 190 001c 0A89     		ldrh	r2, [r1, #8]
 191 001e B0F8D030 		ldrh	r3, [r0, #208]
 192 0022 9A42     		cmp	r2, r3
 193 0024 F3D1     		bne	.L45
 194 0026 0722     		movs	r2, #7
 195 0028 174B     		ldr	r3, .L49
 196 002a 8260     		str	r2, [r0, #8]
 197 002c 9B6C     		ldr	r3, [r3, #72]
 198 002e C0F8CC10 		str	r1, [r0, #204]
 199 0032 5B07     		lsls	r3, r3, #29
 200 0034 22D4     		bmi	.L48
 201 0036 0120     		movs	r0, #1
 202 0038 EAE7     		b	.L40
 203              	.L39:
 204 003a 8369     		ldr	r3, [r0, #24]
 205 003c B3B1     		cbz	r3, .L41
 206              	.L44:
 207 003e 124B     		ldr	r3, .L49
 208 0040 2161     		str	r1, [r4, #16]
 209 0042 9B6C     		ldr	r3, [r3, #72]
 210 0044 0022     		movs	r2, #0
 211 0046 C4F86021 		str	r2, [r4, #352]
 212 004a 5A07     		lsls	r2, r3, #29
 213 004c 02D5     		bpl	.L43
 214 004e 0F48     		ldr	r0, .L49+4
 215 0050 FFF7FEFF 		bl	debugPrintf
 216              	.L43:
 217 0054 0E49     		ldr	r1, .L49+8
 218 0056 A069     		ldr	r0, [r4, #24]
 219 0058 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 220 005c 2046     		mov	r0, r4
 221 005e 0122     		movs	r2, #1
 222 0060 0B21     		movs	r1, #11
 223 0062 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 224 0066 0120     		movs	r0, #1
 225 0068 02B0     		add	sp, sp, #8
 226              		@ sp needed
 227 006a 10BD     		pop	{r4, pc}
 228              	.L41:
ARM GAS  /tmp/cc9HRniu.s 			page 5


 229 006c 1830     		adds	r0, r0, #24
 230 006e 0191     		str	r1, [sp, #4]
 231 0070 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 232 0074 0199     		ldr	r1, [sp, #4]
 233 0076 0028     		cmp	r0, #0
 234 0078 E1D1     		bne	.L44
 235 007a C8E7     		b	.L45
 236              	.L48:
 237 007c 0548     		ldr	r0, .L49+12
 238 007e FFF7FEFF 		bl	debugPrintf
 239 0082 0120     		movs	r0, #1
 240 0084 C4E7     		b	.L40
 241              	.L50:
 242 0086 00BF     		.align	2
 243              	.L49:
 244 0088 00000000 		.word	reprap
 245 008c 00000000 		.word	.LC2
 246 0090 1C000000 		.word	.LC3
 247 0094 3C000000 		.word	.LC4
 248              		.size	_ZN12FtpResponder6AcceptEP6Socketh, .-_ZN12FtpResponder6AcceptEP6Socketh
 249              		.section	.text._ZN12FtpResponderC2EP16NetworkResponder,"ax",%progbits
 250              		.align	1
 251              		.p2align 2,,3
 252              		.global	_ZN12FtpResponderC2EP16NetworkResponder
 253              		.syntax unified
 254              		.thumb
 255              		.thumb_func
 256              		.fpu fpv4-sp-d16
 257              		.type	_ZN12FtpResponderC2EP16NetworkResponder, %function
 258              	_ZN12FtpResponderC2EP16NetworkResponder:
 259              		@ args = 0, pretend = 0, frame = 0
 260              		@ frame_needed = 0, uses_anonymous_args = 0
 261 0000 10B5     		push	{r4, lr}
 262 0002 0446     		mov	r4, r0
 263 0004 FFF7FEFF 		bl	_ZN16NetworkResponderC2EPS_
 264 0008 064B     		ldr	r3, .L53
 265 000a 2360     		str	r3, [r4]
 266 000c 0023     		movs	r3, #0
 267 000e C4E93533 		strd	r3, r3, [r4, #212]
 268 0012 C4F8CC30 		str	r3, [r4, #204]
 269 0016 A4F8D030 		strh	r3, [r4, #208]	@ movhi
 270 001a 84F8DC31 		strb	r3, [r4, #476]
 271 001e 2046     		mov	r0, r4
 272 0020 10BD     		pop	{r4, pc}
 273              	.L54:
 274 0022 00BF     		.align	2
 275              	.L53:
 276 0024 08000000 		.word	.LANCHOR0+8
 277              		.size	_ZN12FtpResponderC2EP16NetworkResponder, .-_ZN12FtpResponderC2EP16NetworkResponder
 278              		.global	_ZN12FtpResponderC1EP16NetworkResponder
 279              		.thumb_set _ZN12FtpResponderC1EP16NetworkResponder,_ZN12FtpResponderC2EP16NetworkResponder
 280              		.section	.text._ZN12FtpResponder15SendPassiveDataEv,"ax",%progbits
 281              		.align	1
 282              		.p2align 2,,3
 283              		.global	_ZN12FtpResponder15SendPassiveDataEv
 284              		.syntax unified
 285              		.thumb
ARM GAS  /tmp/cc9HRniu.s 			page 6


 286              		.thumb_func
 287              		.fpu fpv4-sp-d16
 288              		.type	_ZN12FtpResponder15SendPassiveDataEv, %function
 289              	_ZN12FtpResponder15SendPassiveDataEv:
 290              		@ args = 0, pretend = 0, frame = 0
 291              		@ frame_needed = 0, uses_anonymous_args = 0
 292 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 293 0002 0546     		mov	r5, r0
 294 0004 D0F8D800 		ldr	r0, [r0, #216]
 295 0008 1DE0     		b	.L56
 296              	.L105:
 297 000a D0F81041 		ldr	r4, [r0, #272]
 298 000e D0F80C31 		ldr	r3, [r0, #268]
 299 0012 2144     		add	r1, r1, r4
 300 0014 1C1B     		subs	r4, r3, r4
 301 0016 2246     		mov	r2, r4
 302 0018 11D0     		beq	.L103
 303 001a D5F8CC00 		ldr	r0, [r5, #204]
 304 001e 0368     		ldr	r3, [r0]
 305 0020 5B6A     		ldr	r3, [r3, #36]
 306 0022 9847     		blx	r3
 307 0024 0028     		cmp	r0, #0
 308 0026 57D0     		beq	.L104
 309 0028 D5F8D820 		ldr	r2, [r5, #216]
 310 002c D2F81031 		ldr	r3, [r2, #272]
 311 0030 A042     		cmp	r0, r4
 312 0032 0344     		add	r3, r3, r0
 313 0034 C2F81031 		str	r3, [r2, #272]
 314 0038 4DD3     		bcc	.L55
 315 003a D5F8D800 		ldr	r0, [r5, #216]
 316              	.L103:
 317 003e FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 318 0042 C5F8D800 		str	r0, [r5, #216]
 319              	.L56:
 320 0046 00F10C01 		add	r1, r0, #12
 321 004a 0028     		cmp	r0, #0
 322 004c DDD1     		bne	.L105
 323 004e D5E90C23 		ldrd	r2, r3, [r5, #48]
 324 0052 0AB1     		cbz	r2, .L68
 325 0054 002B     		cmp	r3, #0
 326 0056 76D0     		beq	.L106
 327              	.L68:
 328 0058 0027     		movs	r7, #0
 329              	.L67:
 330 005a 6BB3     		cbz	r3, .L69
 331 005c D3E90141 		ldrd	r4, r1, [r3, #4]
 332 0060 8C42     		cmp	r4, r1
 333 0062 12D0     		beq	.L107
 334              	.L70:
 335 0064 D5F8CC00 		ldr	r0, [r5, #204]
 336 0068 0668     		ldr	r6, [r0]
 337 006a 641A     		subs	r4, r4, r1
 338 006c 0C33     		adds	r3, r3, #12
 339 006e 1944     		add	r1, r1, r3
 340 0070 2246     		mov	r2, r4
 341 0072 736A     		ldr	r3, [r6, #36]
 342 0074 9847     		blx	r3
ARM GAS  /tmp/cc9HRniu.s 			page 7


 343 0076 0028     		cmp	r0, #0
 344 0078 47D0     		beq	.L108
 345 007a 6A6B     		ldr	r2, [r5, #52]
 346 007c 9368     		ldr	r3, [r2, #8]
 347 007e A042     		cmp	r0, r4
 348 0080 0344     		add	r3, r3, r0
 349 0082 9360     		str	r3, [r2, #8]
 350 0084 27D3     		bcc	.L55
 351 0086 6B6B     		ldr	r3, [r5, #52]
 352 0088 E7E7     		b	.L67
 353              	.L107:
 354 008a 2A6B     		ldr	r2, [r5, #48]
 355 008c 1846     		mov	r0, r3
 356 008e 1146     		mov	r1, r2
 357 0090 6AB1     		cbz	r2, .L71
 358 0092 FFF7FEFF 		bl	_ZN13NetworkBuffer12ReadFromFileEP9FileStore
 359 0096 B0F5006F 		cmp	r0, #2048
 360 009a 03D0     		beq	.L72
 361 009c 286B     		ldr	r0, [r5, #48]
 362 009e FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 363 00a2 2F63     		str	r7, [r5, #48]
 364              	.L72:
 365 00a4 6B6B     		ldr	r3, [r5, #52]
 366 00a6 D3E90141 		ldrd	r4, r1, [r3, #4]
 367 00aa 8C42     		cmp	r4, r1
 368 00ac DAD1     		bne	.L70
 369              	.L71:
 370 00ae 1846     		mov	r0, r3
 371 00b0 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 372 00b4 0023     		movs	r3, #0
 373 00b6 6B63     		str	r3, [r5, #52]
 374              	.L69:
 375 00b8 D5F8CC00 		ldr	r0, [r5, #204]
 376 00bc 0368     		ldr	r3, [r0]
 377 00be 9B6A     		ldr	r3, [r3, #40]
 378 00c0 9847     		blx	r3
 379 00c2 D5F8CC00 		ldr	r0, [r5, #204]
 380 00c6 0368     		ldr	r3, [r0]
 381 00c8 5B68     		ldr	r3, [r3, #4]
 382 00ca 9847     		blx	r3
 383 00cc 0022     		movs	r2, #0
 384 00ce 0923     		movs	r3, #9
 385 00d0 C5F8CC20 		str	r2, [r5, #204]
 386 00d4 AB60     		str	r3, [r5, #8]
 387              	.L55:
 388 00d6 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 389              	.L104:
 390 00d8 D5F8CC00 		ldr	r0, [r5, #204]
 391 00dc 0368     		ldr	r3, [r0]
 392 00de 1B6A     		ldr	r3, [r3, #32]
 393 00e0 9847     		blx	r3
 394 00e2 0028     		cmp	r0, #0
 395 00e4 F7D1     		bne	.L55
 396 00e6 1F4B     		ldr	r3, .L111
 397 00e8 9B6C     		ldr	r3, [r3, #72]
 398 00ea 5A07     		lsls	r2, r3, #29
 399 00ec 32D4     		bmi	.L109
ARM GAS  /tmp/cc9HRniu.s 			page 8


 400              	.L63:
 401 00ee 286B     		ldr	r0, [r5, #48]
 402 00f0 0123     		movs	r3, #1
 403 00f2 0024     		movs	r4, #0
 404 00f4 85F8DC30 		strb	r3, [r5, #220]
 405 00f8 C5F8CC40 		str	r4, [r5, #204]
 406 00fc 10B1     		cbz	r0, .L64
 407 00fe FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 408 0102 2C63     		str	r4, [r5, #48]
 409              	.L64:
 410 0104 0923     		movs	r3, #9
 411 0106 AB60     		str	r3, [r5, #8]
 412 0108 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 413              	.L108:
 414 010a D5F8CC00 		ldr	r0, [r5, #204]
 415 010e 0368     		ldr	r3, [r0]
 416 0110 1B6A     		ldr	r3, [r3, #32]
 417 0112 9847     		blx	r3
 418 0114 0028     		cmp	r0, #0
 419 0116 DED1     		bne	.L55
 420 0118 124B     		ldr	r3, .L111
 421 011a 9B6C     		ldr	r3, [r3, #72]
 422 011c 5B07     		lsls	r3, r3, #29
 423 011e 1DD4     		bmi	.L110
 424              	.L74:
 425 0120 286B     		ldr	r0, [r5, #48]
 426 0122 0123     		movs	r3, #1
 427 0124 0024     		movs	r4, #0
 428 0126 85F8DC30 		strb	r3, [r5, #220]
 429 012a C5F8CC40 		str	r4, [r5, #204]
 430 012e 10B1     		cbz	r0, .L75
 431 0130 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 432 0134 2C63     		str	r4, [r5, #48]
 433              	.L75:
 434 0136 686B     		ldr	r0, [r5, #52]
 435 0138 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 436 013c 0022     		movs	r2, #0
 437 013e 0923     		movs	r3, #9
 438 0140 6A63     		str	r2, [r5, #52]
 439 0142 AB60     		str	r3, [r5, #8]
 440 0144 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 441              	.L106:
 442 0146 FFF7FEFF 		bl	_ZN13NetworkBuffer8AllocateEv
 443 014a 0346     		mov	r3, r0
 444 014c 6863     		str	r0, [r5, #52]
 445 014e 0028     		cmp	r0, #0
 446 0150 82D1     		bne	.L68
 447 0152 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 448              	.L109:
 449 0154 0448     		ldr	r0, .L111+4
 450 0156 FFF7FEFF 		bl	debugPrintf
 451 015a C8E7     		b	.L63
 452              	.L110:
 453 015c 0348     		ldr	r0, .L111+8
 454 015e FFF7FEFF 		bl	debugPrintf
 455 0162 DDE7     		b	.L74
 456              	.L112:
ARM GAS  /tmp/cc9HRniu.s 			page 9


 457              		.align	2
 458              	.L111:
 459 0164 00000000 		.word	reprap
 460 0168 00000000 		.word	.LC5
 461 016c 00000000 		.word	.LC1
 462              		.size	_ZN12FtpResponder15SendPassiveDataEv, .-_ZN12FtpResponder15SendPassiveDataEv
 463              		.section	.text._ZN12FtpResponder8DoUploadEv,"ax",%progbits
 464              		.align	1
 465              		.p2align 2,,3
 466              		.global	_ZN12FtpResponder8DoUploadEv
 467              		.syntax unified
 468              		.thumb
 469              		.thumb_func
 470              		.fpu fpv4-sp-d16
 471              		.type	_ZN12FtpResponder8DoUploadEv, %function
 472              	_ZN12FtpResponder8DoUploadEv:
 473              		@ args = 0, pretend = 0, frame = 8
 474              		@ frame_needed = 0, uses_anonymous_args = 0
 475 0000 30B5     		push	{r4, r5, lr}
 476 0002 0446     		mov	r4, r0
 477 0004 D0F8CC00 		ldr	r0, [r0, #204]
 478 0008 0368     		ldr	r3, [r0]
 479 000a 83B0     		sub	sp, sp, #12
 480 000c 01AA     		add	r2, sp, #4
 481 000e 5B69     		ldr	r3, [r3, #20]
 482 0010 6946     		mov	r1, sp
 483 0012 9847     		blx	r3
 484 0014 78B1     		cbz	r0, .L114
 485 0016 1E4D     		ldr	r5, .L128
 486 0018 0199     		ldr	r1, [sp, #4]
 487 001a AB6C     		ldr	r3, [r5, #72]
 488 001c 5B07     		lsls	r3, r3, #29
 489 001e 1ED4     		bmi	.L125
 490              	.L115:
 491 0020 D4F8CC00 		ldr	r0, [r4, #204]
 492 0024 0368     		ldr	r3, [r0]
 493 0026 9B69     		ldr	r3, [r3, #24]
 494 0028 9847     		blx	r3
 495 002a DDE90012 		ldrd	r1, r2, [sp]
 496 002e A06B     		ldr	r0, [r4, #56]
 497 0030 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 498 0034 D8B1     		cbz	r0, .L126
 499              	.L114:
 500 0036 D4F8CC00 		ldr	r0, [r4, #204]
 501 003a 0368     		ldr	r3, [r0]
 502 003c DB69     		ldr	r3, [r3, #28]
 503 003e 9847     		blx	r3
 504 0040 08B1     		cbz	r0, .L127
 505 0042 03B0     		add	sp, sp, #12
 506              		@ sp needed
 507 0044 30BD     		pop	{r4, r5, pc}
 508              	.L127:
 509 0046 0923     		movs	r3, #9
 510 0048 C4F8CC00 		str	r0, [r4, #204]
 511 004c 0146     		mov	r1, r0
 512 004e A360     		str	r3, [r4, #8]
 513 0050 2046     		mov	r0, r4
ARM GAS  /tmp/cc9HRniu.s 			page 10


 514 0052 0022     		movs	r2, #0
 515 0054 0023     		movs	r3, #0
 516 0056 FFF7FEFF 		bl	_ZN16NetworkResponder12FinishUploadEmx
 517 005a 03B0     		add	sp, sp, #12
 518              		@ sp needed
 519 005c 30BD     		pop	{r4, r5, pc}
 520              	.L125:
 521 005e 0B46     		mov	r3, r1
 522 0060 0C4A     		ldr	r2, .L128+4
 523 0062 2868     		ldr	r0, [r5]
 524 0064 0121     		movs	r1, #1
 525 0066 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 526 006a 0199     		ldr	r1, [sp, #4]
 527 006c D8E7     		b	.L115
 528              	.L126:
 529 006e 0123     		movs	r3, #1
 530 0070 2868     		ldr	r0, [r5]
 531 0072 84F8C830 		strb	r3, [r4, #200]
 532 0076 084A     		ldr	r2, .L128+8
 533 0078 40F2B511 		movw	r1, #437
 534 007c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 535 0080 2368     		ldr	r3, [r4]
 536 0082 2046     		mov	r0, r4
 537 0084 9B69     		ldr	r3, [r3, #24]
 538 0086 9847     		blx	r3
 539 0088 0923     		movs	r3, #9
 540 008a A360     		str	r3, [r4, #8]
 541 008c 03B0     		add	sp, sp, #12
 542              		@ sp needed
 543 008e 30BD     		pop	{r4, r5, pc}
 544              	.L129:
 545              		.align	2
 546              	.L128:
 547 0090 00000000 		.word	reprap
 548 0094 00000000 		.word	.LC6
 549 0098 24000000 		.word	.LC7
 550              		.size	_ZN12FtpResponder8DoUploadEv, .-_ZN12FtpResponder8DoUploadEv
 551              		.section	.text._ZN12FtpResponder14CharFromClientEc,"ax",%progbits
 552              		.align	1
 553              		.p2align 2,,3
 554              		.global	_ZN12FtpResponder14CharFromClientEc
 555              		.syntax unified
 556              		.thumb
 557              		.thumb_func
 558              		.fpu fpv4-sp-d16
 559              		.type	_ZN12FtpResponder14CharFromClientEc, %function
 560              	_ZN12FtpResponder14CharFromClientEc:
 561              		@ args = 0, pretend = 0, frame = 0
 562              		@ frame_needed = 0, uses_anonymous_args = 0
 563              		@ link register save eliminated.
 564 0000 0A29     		cmp	r1, #10
 565 0002 0346     		mov	r3, r0
 566 0004 0ED0     		beq	.L132
 567 0006 0D29     		cmp	r1, #13
 568 0008 0CD0     		beq	.L132
 569 000a 51B1     		cbz	r1, .L146
 570 000c D0F86021 		ldr	r2, [r0, #352]
ARM GAS  /tmp/cc9HRniu.s 			page 11


 571 0010 1044     		add	r0, r0, r2
 572 0012 0132     		adds	r2, r2, #1
 573 0014 7F2A     		cmp	r2, #127
 574 0016 C3F86021 		str	r2, [r3, #352]
 575 001a 80F8DE10 		strb	r1, [r0, #222]
 576 001e 0DD8     		bhi	.L147
 577              	.L130:
 578 0020 7047     		bx	lr
 579              	.L146:
 580 0022 7047     		bx	lr
 581              	.L132:
 582 0024 D3F86021 		ldr	r2, [r3, #352]
 583 0028 002A     		cmp	r2, #0
 584 002a F9D0     		beq	.L130
 585 002c 1A44     		add	r2, r2, r3
 586 002e 0020     		movs	r0, #0
 587 0030 0121     		movs	r1, #1
 588 0032 82F8DE00 		strb	r0, [r2, #222]
 589 0036 83F8DD10 		strb	r1, [r3, #221]
 590 003a 7047     		bx	lr
 591              	.L147:
 592 003c 0449     		ldr	r1, .L148
 593 003e 054A     		ldr	r2, .L148+4
 594 0040 0868     		ldr	r0, [r1]
 595 0042 0021     		movs	r1, #0
 596 0044 C3F86011 		str	r1, [r3, #352]
 597 0048 0121     		movs	r1, #1
 598 004a FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 599              	.L149:
 600 004e 00BF     		.align	2
 601              	.L148:
 602 0050 00000000 		.word	reprap
 603 0054 00000000 		.word	.LC8
 604              		.size	_ZN12FtpResponder14CharFromClientEc, .-_ZN12FtpResponder14CharFromClientEc
 605              		.section	.text._ZNK12FtpResponder12GetParameterEPKc,"ax",%progbits
 606              		.align	1
 607              		.p2align 2,,3
 608              		.global	_ZNK12FtpResponder12GetParameterEPKc
 609              		.syntax unified
 610              		.thumb
 611              		.thumb_func
 612              		.fpu fpv4-sp-d16
 613              		.type	_ZNK12FtpResponder12GetParameterEPKc, %function
 614              	_ZNK12FtpResponder12GetParameterEPKc:
 615              		@ args = 0, pretend = 0, frame = 0
 616              		@ frame_needed = 0, uses_anonymous_args = 0
 617 0000 10B5     		push	{r4, lr}
 618 0002 0446     		mov	r4, r0
 619 0004 0846     		mov	r0, r1
 620 0006 FFF7FEFF 		bl	strlen
 621 000a 7F28     		cmp	r0, #127
 622 000c 09D8     		bhi	.L154
 623 000e 2318     		adds	r3, r4, r0
 624 0010 DF33     		adds	r3, r3, #223
 625              	.L152:
 626 0012 1846     		mov	r0, r3
 627 0014 13F8012B 		ldrb	r2, [r3], #1	@ zero_extendqisi2
ARM GAS  /tmp/cc9HRniu.s 			page 12


 628 0018 092A     		cmp	r2, #9
 629 001a FAD0     		beq	.L152
 630 001c 202A     		cmp	r2, #32
 631 001e F8D0     		beq	.L152
 632 0020 10BD     		pop	{r4, pc}
 633              	.L154:
 634 0022 0148     		ldr	r0, .L162
 635 0024 10BD     		pop	{r4, pc}
 636              	.L163:
 637 0026 00BF     		.align	2
 638              	.L162:
 639 0028 00000000 		.word	.LC9
 640              		.size	_ZNK12FtpResponder12GetParameterEPKc, .-_ZNK12FtpResponder12GetParameterEPKc
 641              		.section	.text._ZN12FtpResponder15ChangeDirectoryEPKc,"ax",%progbits
 642              		.align	1
 643              		.p2align 2,,3
 644              		.global	_ZN12FtpResponder15ChangeDirectoryEPKc
 645              		.syntax unified
 646              		.thumb
 647              		.thumb_func
 648              		.fpu fpv4-sp-d16
 649              		.type	_ZN12FtpResponder15ChangeDirectoryEPKc, %function
 650              	_ZN12FtpResponder15ChangeDirectoryEPKc:
 651              		@ args = 0, pretend = 0, frame = 136
 652              		@ frame_needed = 0, uses_anonymous_args = 0
 653 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 654 0002 A3B0     		sub	sp, sp, #140
 655 0004 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 656 0006 0022     		movs	r2, #0
 657 0008 8DF80C20 		strb	r2, [sp, #12]
 658 000c 0446     		mov	r4, r0
 659 000e 8BB3     		cbz	r3, .L165
 660 0010 2F2B     		cmp	r3, #47
 661 0012 3AD0     		beq	.L200
 662 0014 0E46     		mov	r6, r1
 663 0016 3046     		mov	r0, r6
 664 0018 5149     		ldr	r1, .L203
 665 001a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 666 001e 04F5B275 		add	r5, r4, #356
 667 0022 0028     		cmp	r0, #0
 668 0024 33D0     		beq	.L168
 669 0026 01AF     		add	r7, sp, #4
 670 0028 2946     		mov	r1, r5
 671              	.L198:
 672 002a 03AD     		add	r5, sp, #12
 673 002c 7923     		movs	r3, #121
 674 002e 3846     		mov	r0, r7
 675 0030 CDE90153 		strd	r5, r3, [sp, #4]
 676 0034 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 677              	.L167:
 678 0038 7821     		movs	r1, #120
 679 003a 2846     		mov	r0, r5
 680 003c FFF7FEFF 		bl	_Z7StrnlenPKcj
 681 0040 28B1     		cbz	r0, .L180
 682 0042 22AB     		add	r3, sp, #136
 683 0044 1844     		add	r0, r0, r3
 684 0046 10F87D3C 		ldrb	r3, [r0, #-125]	@ zero_extendqisi2
ARM GAS  /tmp/cc9HRniu.s 			page 13


 685 004a 2F2B     		cmp	r3, #47
 686 004c 70D0     		beq	.L201
 687              	.L180:
 688 004e 454B     		ldr	r3, .L203+4
 689 0050 1B68     		ldr	r3, [r3]
 690 0052 3946     		mov	r1, r7
 691 0054 D3F8B409 		ldr	r0, [r3, #2484]
 692 0058 0195     		str	r5, [sp, #4]
 693 005a 7923     		movs	r3, #121
 694 005c 0293     		str	r3, [sp, #8]
 695 005e FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsERK9StringRef
 696 0062 38B1     		cbz	r0, .L165
 697 0064 2946     		mov	r1, r5
 698 0066 7822     		movs	r2, #120
 699 0068 04F5B270 		add	r0, r4, #356
 700 006c FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 701 0070 3D49     		ldr	r1, .L203+8
 702 0072 00E0     		b	.L199
 703              	.L165:
 704 0074 3D49     		ldr	r1, .L203+12
 705              	.L199:
 706 0076 A069     		ldr	r0, [r4, #24]
 707 0078 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 708 007c 0122     		movs	r2, #1
 709 007e A168     		ldr	r1, [r4, #8]
 710 0080 2046     		mov	r0, r4
 711 0082 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 712 0086 23B0     		add	sp, sp, #140
 713              		@ sp needed
 714 0088 F0BD     		pop	{r4, r5, r6, r7, pc}
 715              	.L200:
 716 008a 01AF     		add	r7, sp, #4
 717 008c CDE7     		b	.L198
 718              	.L168:
 719 008e 3849     		ldr	r1, .L203+16
 720 0090 3046     		mov	r0, r6
 721 0092 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 722 0096 48B3     		cbz	r0, .L169
 723 0098 3649     		ldr	r1, .L203+20
 724 009a 2846     		mov	r0, r5
 725 009c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 726 00a0 0028     		cmp	r0, #0
 727 00a2 E7D1     		bne	.L165
 728 00a4 01AF     		add	r7, sp, #4
 729 00a6 7923     		movs	r3, #121
 730 00a8 2946     		mov	r1, r5
 731 00aa 3846     		mov	r0, r7
 732 00ac 03AD     		add	r5, sp, #12
 733 00ae CDE90153 		strd	r5, r3, [sp, #4]
 734 00b2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 735 00b6 2846     		mov	r0, r5
 736 00b8 7821     		movs	r1, #120
 737 00ba FFF7FEFF 		bl	_Z7StrnlenPKcj
 738 00be 831E     		subs	r3, r0, #2
 739 00c0 BAD4     		bmi	.L167
 740 00c2 22AA     		add	r2, sp, #136
 741 00c4 1A44     		add	r2, r2, r3
ARM GAS  /tmp/cc9HRniu.s 			page 14


 742 00c6 12F87C1C 		ldrb	r1, [r2, #-124]	@ zero_extendqisi2
 743 00ca 2F29     		cmp	r1, #47
 744 00cc 0AD0     		beq	.L172
 745 00ce C21E     		subs	r2, r0, #3
 746 00d0 2A44     		add	r2, r2, r5
 747              	.L174:
 748 00d2 13F1FF33 		adds	r3, r3, #-1
 749 00d6 AFD3     		bcc	.L167
 750 00d8 12F80119 		ldrb	r1, [r2], #-1	@ zero_extendqisi2
 751 00dc 2F29     		cmp	r1, #47
 752 00de F8D1     		bne	.L174
 753 00e0 22AA     		add	r2, sp, #136
 754 00e2 1A44     		add	r2, r2, r3
 755              	.L172:
 756 00e4 0023     		movs	r3, #0
 757 00e6 02F87B3C 		strb	r3, [r2, #-123]
 758 00ea A5E7     		b	.L167
 759              	.L169:
 760 00ec 01AF     		add	r7, sp, #4
 761 00ee 2946     		mov	r1, r5
 762 00f0 7923     		movs	r3, #121
 763 00f2 03AD     		add	r5, sp, #12
 764 00f4 3846     		mov	r0, r7
 765 00f6 CDE90153 		strd	r5, r3, [sp, #4]
 766 00fa FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 767 00fe 2846     		mov	r0, r5
 768 0100 7821     		movs	r1, #120
 769 0102 FFF7FEFF 		bl	_Z7StrnlenPKcj
 770 0106 28B1     		cbz	r0, .L176
 771 0108 22AB     		add	r3, sp, #136
 772 010a 1844     		add	r0, r0, r3
 773 010c 10F87D3C 		ldrb	r3, [r0, #-125]	@ zero_extendqisi2
 774 0110 2F2B     		cmp	r3, #47
 775 0112 05D0     		beq	.L177
 776              	.L176:
 777 0114 7821     		movs	r1, #120
 778 0116 2846     		mov	r0, r5
 779 0118 FFF7FEFF 		bl	_Z7StrnlenPKcj
 780 011c 0128     		cmp	r0, #1
 781 011e 17D8     		bhi	.L202
 782              	.L177:
 783 0120 7923     		movs	r3, #121
 784 0122 3146     		mov	r1, r6
 785 0124 3846     		mov	r0, r7
 786 0126 CDE90153 		strd	r5, r3, [sp, #4]
 787 012a FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 788 012e 83E7     		b	.L167
 789              	.L201:
 790 0130 7821     		movs	r1, #120
 791 0132 2846     		mov	r0, r5
 792 0134 FFF7FEFF 		bl	_Z7StrnlenPKcj
 793 0138 0128     		cmp	r0, #1
 794 013a 88D9     		bls	.L180
 795 013c 7821     		movs	r1, #120
 796 013e 2846     		mov	r0, r5
 797 0140 FFF7FEFF 		bl	_Z7StrnlenPKcj
 798 0144 22AB     		add	r3, sp, #136
ARM GAS  /tmp/cc9HRniu.s 			page 15


 799 0146 1844     		add	r0, r0, r3
 800 0148 0023     		movs	r3, #0
 801 014a 00F87D3C 		strb	r3, [r0, #-125]
 802 014e 7EE7     		b	.L180
 803              	.L202:
 804 0150 7923     		movs	r3, #121
 805 0152 2F21     		movs	r1, #47
 806 0154 3846     		mov	r0, r7
 807 0156 CDE90153 		strd	r5, r3, [sp, #4]
 808 015a FFF7FEFF 		bl	_ZNK9StringRef3catEc
 809 015e DFE7     		b	.L177
 810              	.L204:
 811              		.align	2
 812              	.L203:
 813 0160 00000000 		.word	.LC10
 814 0164 00000000 		.word	reprap
 815 0168 30000000 		.word	.LC14
 816 016c 0C000000 		.word	.LC13
 817 0170 04000000 		.word	.LC11
 818 0174 08000000 		.word	.LC12
 819              		.size	_ZN12FtpResponder15ChangeDirectoryEPKc, .-_ZN12FtpResponder15ChangeDirectoryEPKc
 820              		.section	.text._ZN12FtpResponder13CloseDataPortEv,"ax",%progbits
 821              		.align	1
 822              		.p2align 2,,3
 823              		.global	_ZN12FtpResponder13CloseDataPortEv
 824              		.syntax unified
 825              		.thumb
 826              		.thumb_func
 827              		.fpu fpv4-sp-d16
 828              		.type	_ZN12FtpResponder13CloseDataPortEv, %function
 829              	_ZN12FtpResponder13CloseDataPortEv:
 830              		@ args = 0, pretend = 0, frame = 0
 831              		@ frame_needed = 0, uses_anonymous_args = 0
 832 0000 10B5     		push	{r4, lr}
 833 0002 124B     		ldr	r3, .L221
 834 0004 9B6C     		ldr	r3, [r3, #72]
 835 0006 5B07     		lsls	r3, r3, #29
 836 0008 0446     		mov	r4, r0
 837 000a 1BD4     		bmi	.L220
 838              	.L206:
 839 000c D4F8CC00 		ldr	r0, [r4, #204]
 840 0010 80B1     		cbz	r0, .L207
 841 0012 0368     		ldr	r3, [r0]
 842 0014 5B68     		ldr	r3, [r3, #4]
 843 0016 9847     		blx	r3
 844 0018 0023     		movs	r3, #0
 845 001a C4F8CC30 		str	r3, [r4, #204]
 846              	.L208:
 847 001e 04F1D800 		add	r0, r4, #216
 848 0022 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 849 0026 206B     		ldr	r0, [r4, #48]
 850 0028 18B1     		cbz	r0, .L205
 851 002a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 852 002e 0023     		movs	r3, #0
 853 0030 2363     		str	r3, [r4, #48]
 854              	.L205:
 855 0032 10BD     		pop	{r4, pc}
ARM GAS  /tmp/cc9HRniu.s 			page 16


 856              	.L207:
 857 0034 2369     		ldr	r3, [r4, #16]
 858 0036 002B     		cmp	r3, #0
 859 0038 F1D0     		beq	.L208
 860 003a 5868     		ldr	r0, [r3, #4]
 861 003c 0368     		ldr	r3, [r0]
 862 003e 1B6D     		ldr	r3, [r3, #80]
 863 0040 9847     		blx	r3
 864 0042 ECE7     		b	.L208
 865              	.L220:
 866 0044 0248     		ldr	r0, .L221+4
 867 0046 FFF7FEFF 		bl	debugPrintf
 868 004a DFE7     		b	.L206
 869              	.L222:
 870              		.align	2
 871              	.L221:
 872 004c 00000000 		.word	reprap
 873 0050 00000000 		.word	.LC15
 874              		.size	_ZN12FtpResponder13CloseDataPortEv, .-_ZN12FtpResponder13CloseDataPortEv
 875              		.section	.text._ZN12FtpResponder11ProcessLineEv,"ax",%progbits
 876              		.align	1
 877              		.p2align 2,,3
 878              		.global	_ZN12FtpResponder11ProcessLineEv
 879              		.syntax unified
 880              		.thumb
 881              		.thumb_func
 882              		.fpu fpv4-sp-d16
 883              		.type	_ZN12FtpResponder11ProcessLineEv, %function
 884              	_ZN12FtpResponder11ProcessLineEv:
 885              		@ args = 0, pretend = 0, frame = 144
 886              		@ frame_needed = 0, uses_anonymous_args = 0
 887 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 888 0004 A94D     		ldr	r5, .L314
 889 0006 8268     		ldr	r2, [r0, #8]
 890 0008 AB6C     		ldr	r3, [r5, #72]
 891 000a 5907     		lsls	r1, r3, #29
 892 000c A9B0     		sub	sp, sp, #164
 893 000e 0446     		mov	r4, r0
 894 0010 00F1FA80 		bmi	.L301
 895              	.L224:
 896 0014 0023     		movs	r3, #0
 897 0016 013A     		subs	r2, r2, #1
 898 0018 84F8DD30 		strb	r3, [r4, #221]
 899 001c C4F86031 		str	r3, [r4, #352]
 900 0020 0A2A     		cmp	r2, #10
 901 0022 22D8     		bhi	.L223
 902 0024 DFE802F0 		tbb	[pc, r2]
 903              	.L227:
 904 0028 B4       		.byte	(.L226-.L227)/2
 905 0029 21       		.byte	(.L223-.L227)/2
 906 002a 99       		.byte	(.L228-.L227)/2
 907 002b 21       		.byte	(.L223-.L227)/2
 908 002c 21       		.byte	(.L223-.L227)/2
 909 002d 21       		.byte	(.L223-.L227)/2
 910 002e 4C       		.byte	(.L229-.L227)/2
 911 002f 99       		.byte	(.L228-.L227)/2
 912 0030 21       		.byte	(.L223-.L227)/2
ARM GAS  /tmp/cc9HRniu.s 			page 17


 913 0031 21       		.byte	(.L223-.L227)/2
 914 0032 24       		.byte	(.L230-.L227)/2
 915 0033 00       		.p2align 1
 916              	.L276:
 917 0034 9E49     		ldr	r1, .L314+4
 918 0036 3046     		mov	r0, r6
 919 0038 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 920 003c 0546     		mov	r5, r0
 921 003e 0028     		cmp	r0, #0
 922 0040 40F09780 		bne	.L297
 923 0044 3046     		mov	r0, r6
 924 0046 9B49     		ldr	r1, .L314+8
 925 0048 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 926 004c 0028     		cmp	r0, #0
 927 004e 00F0C281 		beq	.L273
 928 0052 2046     		mov	r0, r4
 929 0054 FFF7FEFF 		bl	_ZN12FtpResponder13CloseDataPortEv
 930              	.L299:
 931 0058 9749     		ldr	r1, .L314+12
 932              	.L296:
 933 005a A069     		ldr	r0, [r4, #24]
 934 005c FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 935 0060 2946     		mov	r1, r5
 936 0062 2046     		mov	r0, r4
 937 0064 0122     		movs	r2, #1
 938 0066 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 939              	.L223:
 940 006a 29B0     		add	sp, sp, #164
 941              		@ sp needed
 942 006c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 943              	.L230:
 944 0070 04F1DE05 		add	r5, r4, #222
 945 0074 2846     		mov	r0, r5
 946 0076 9149     		ldr	r1, .L314+16
 947 0078 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 948 007c 0028     		cmp	r0, #0
 949 007e 40F0EE80 		bne	.L302
 950 0082 8F49     		ldr	r1, .L314+20
 951 0084 2846     		mov	r0, r5
 952 0086 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 953 008a 0646     		mov	r6, r0
 954 008c 0028     		cmp	r0, #0
 955 008e 00F0FC80 		beq	.L232
 956 0092 8B49     		ldr	r1, .L314+20
 957 0094 2046     		mov	r0, r4
 958 0096 FFF7FEFF 		bl	_ZNK12FtpResponder12GetParameterEPKc
 959 009a 0546     		mov	r5, r0
 960 009c 8348     		ldr	r0, .L314
 961 009e FFF7FEFF 		bl	_ZNK6RepRap13NoPasswordSetEv
 962 00a2 38B9     		cbnz	r0, .L234
 963 00a4 2946     		mov	r1, r5
 964 00a6 8148     		ldr	r0, .L314
 965 00a8 FFF7FEFF 		bl	_ZNK6RepRap13CheckPasswordEPKc
 966 00ac 0546     		mov	r5, r0
 967 00ae 0028     		cmp	r0, #0
 968 00b0 00F0A181 		beq	.L303
 969              	.L234:
ARM GAS  /tmp/cc9HRniu.s 			page 18


 970 00b4 834B     		ldr	r3, .L314+24
 971 00b6 8449     		ldr	r1, .L314+28
 972 00b8 1B88     		ldrh	r3, [r3]	@ unaligned
 973 00ba A4F86431 		strh	r3, [r4, #356]	@ unaligned
 974 00be 5CE0     		b	.L300
 975              	.L229:
 976 00c0 04F1DE06 		add	r6, r4, #222
 977 00c4 3046     		mov	r0, r6
 978 00c6 8149     		ldr	r1, .L314+32
 979 00c8 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 980 00cc 0028     		cmp	r0, #0
 981 00ce 00F0A280 		beq	.L266
 982 00d2 7F49     		ldr	r1, .L314+36
 983 00d4 A069     		ldr	r0, [r4, #24]
 984 00d6 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 985 00da 0122     		movs	r2, #1
 986 00dc 0821     		movs	r1, #8
 987 00de 2046     		mov	r0, r4
 988 00e0 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 989 00e4 2B68     		ldr	r3, [r5]
 990 00e6 D3F8B469 		ldr	r6, [r3, #2484]
 991 00ea 06AA     		add	r2, sp, #24
 992 00ec 3046     		mov	r0, r6
 993 00ee 04F5B271 		add	r1, r4, #356
 994 00f2 FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 995 00f6 0028     		cmp	r0, #0
 996 00f8 B7D0     		beq	.L223
 997 00fa DFF81492 		ldr	r9, .L314+100
 998 00fe 0DF11908 		add	r8, sp, #25
 999              	.L269:
 1000 0102 9DF81830 		ldrb	r3, [sp, #24]	@ zero_extendqisi2
 1001 0106 26A8     		add	r0, sp, #152
 1002 0108 002B     		cmp	r3, #0
 1003 010a 0CBF     		ite	eq
 1004 010c 4FF02D0B 		moveq	fp, #45
 1005 0110 4FF0640B 		movne	fp, #100
 1006 0114 FFF7FEFF 		bl	gmtime
 1007 0118 0546     		mov	r5, r0
 1008 011a 3046     		mov	r0, r6
 1009 011c 2969     		ldr	r1, [r5, #16]
 1010 011e D4F8D870 		ldr	r7, [r4, #216]
 1011 0122 DDF894A0 		ldr	r10, [sp, #148]
 1012 0126 0131     		adds	r1, r1, #1
 1013 0128 C9B2     		uxtb	r1, r1
 1014 012a FFF7FEFF 		bl	_ZN11MassStorage12GetMonthNameEh
 1015 012e CDF80C80 		str	r8, [sp, #12]
 1016 0132 6969     		ldr	r1, [r5, #20]
 1017 0134 01F26C71 		addw	r1, r1, #1900
 1018 0138 0291     		str	r1, [sp, #8]
 1019 013a EB68     		ldr	r3, [r5, #12]
 1020 013c 0193     		str	r3, [sp, #4]
 1021 013e 0090     		str	r0, [sp]
 1022 0140 4946     		mov	r1, r9
 1023 0142 5A46     		mov	r2, fp
 1024 0144 5346     		mov	r3, r10
 1025 0146 3846     		mov	r0, r7
 1026 0148 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
ARM GAS  /tmp/cc9HRniu.s 			page 19


 1027 014c 06A9     		add	r1, sp, #24
 1028 014e 3046     		mov	r0, r6
 1029 0150 FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 1030 0154 0028     		cmp	r0, #0
 1031 0156 D4D1     		bne	.L269
 1032 0158 87E7     		b	.L223
 1033              	.L228:
 1034 015a 5549     		ldr	r1, .L314+4
 1035 015c 04F1DE00 		add	r0, r4, #222
 1036 0160 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1037 0164 0028     		cmp	r0, #0
 1038 0166 00F08680 		beq	.L280
 1039 016a 2368     		ldr	r3, [r4]
 1040 016c 2046     		mov	r0, r4
 1041 016e 9B69     		ldr	r3, [r3, #24]
 1042 0170 9847     		blx	r3
 1043              	.L297:
 1044 0172 2046     		mov	r0, r4
 1045 0174 FFF7FEFF 		bl	_ZN12FtpResponder13CloseDataPortEv
 1046 0178 5649     		ldr	r1, .L314+40
 1047              	.L300:
 1048 017a A069     		ldr	r0, [r4, #24]
 1049 017c FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1050              	.L263:
 1051 0180 0122     		movs	r2, #1
 1052 0182 2046     		mov	r0, r4
 1053 0184 1146     		mov	r1, r2
 1054 0186 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 1055 018a 29B0     		add	sp, sp, #164
 1056              		@ sp needed
 1057 018c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1058              	.L226:
 1059 0190 04F1DE06 		add	r6, r4, #222
 1060 0194 3046     		mov	r0, r6
 1061 0196 5049     		ldr	r1, .L314+44
 1062 0198 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1063 019c 0028     		cmp	r0, #0
 1064 019e 5CD1     		bne	.L304
 1065 01a0 4E49     		ldr	r1, .L314+48
 1066 01a2 3046     		mov	r0, r6
 1067 01a4 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1068 01a8 0028     		cmp	r0, #0
 1069 01aa 40F01281 		bne	.L305
 1070 01ae 4C49     		ldr	r1, .L314+52
 1071 01b0 3046     		mov	r0, r6
 1072 01b2 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1073 01b6 0028     		cmp	r0, #0
 1074 01b8 40F0DC80 		bne	.L306
 1075 01bc 4949     		ldr	r1, .L314+56
 1076 01be 3046     		mov	r0, r6
 1077 01c0 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1078 01c4 0028     		cmp	r0, #0
 1079 01c6 40F00B81 		bne	.L307
 1080 01ca 4749     		ldr	r1, .L314+60
 1081 01cc 3046     		mov	r0, r6
 1082 01ce FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1083 01d2 0028     		cmp	r0, #0
ARM GAS  /tmp/cc9HRniu.s 			page 20


 1084 01d4 40F01181 		bne	.L308
 1085 01d8 4449     		ldr	r1, .L314+64
 1086 01da 3046     		mov	r0, r6
 1087 01dc FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1088 01e0 0746     		mov	r7, r0
 1089 01e2 0028     		cmp	r0, #0
 1090 01e4 00F00E81 		beq	.L241
 1091 01e8 4049     		ldr	r1, .L314+64
 1092 01ea 2046     		mov	r0, r4
 1093 01ec FFF7FEFF 		bl	_ZNK12FtpResponder12GetParameterEPKc
 1094 01f0 3F49     		ldr	r1, .L314+68
 1095 01f2 0546     		mov	r5, r0
 1096 01f4 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1097 01f8 0028     		cmp	r0, #0
 1098 01fa 00F05081 		beq	.L242
 1099 01fe 3D49     		ldr	r1, .L314+72
 1100 0200 A069     		ldr	r0, [r4, #24]
 1101 0202 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1102 0206 BBE7     		b	.L263
 1103              	.L301:
 1104 0208 00F1DE01 		add	r1, r0, #222
 1105 020c 3A48     		ldr	r0, .L314+76
 1106 020e FFF7FEFF 		bl	debugPrintf
 1107 0212 A268     		ldr	r2, [r4, #8]
 1108 0214 FEE6     		b	.L224
 1109              	.L266:
 1110 0216 3549     		ldr	r1, .L314+64
 1111 0218 3046     		mov	r0, r6
 1112 021a FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1113 021e 0028     		cmp	r0, #0
 1114 0220 78D0     		beq	.L270
 1115 0222 3249     		ldr	r1, .L314+64
 1116 0224 2046     		mov	r0, r4
 1117 0226 FFF7FEFF 		bl	_ZNK12FtpResponder12GetParameterEPKc
 1118 022a 3149     		ldr	r1, .L314+68
 1119 022c 0546     		mov	r5, r0
 1120 022e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1121 0232 0028     		cmp	r0, #0
 1122 0234 40F0AA80 		bne	.L309
 1123 0238 2846     		mov	r0, r5
 1124 023a 3049     		ldr	r1, .L314+80
 1125 023c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1126 0240 0028     		cmp	r0, #0
 1127 0242 00F0C880 		beq	.L273
 1128 0246 2E49     		ldr	r1, .L314+84
 1129 0248 A069     		ldr	r0, [r4, #24]
 1130 024a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1131              	.L272:
 1132 024e 2046     		mov	r0, r4
 1133 0250 0122     		movs	r2, #1
 1134 0252 0721     		movs	r1, #7
 1135 0254 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 1136 0258 07E7     		b	.L223
 1137              	.L304:
 1138 025a 2A49     		ldr	r1, .L314+88
 1139 025c 8DE7     		b	.L300
 1140              	.L302:
ARM GAS  /tmp/cc9HRniu.s 			page 21


 1141 025e 2A49     		ldr	r1, .L314+92
 1142              	.L294:
 1143 0260 A069     		ldr	r0, [r4, #24]
 1144 0262 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1145 0266 2046     		mov	r0, r4
 1146 0268 0122     		movs	r2, #1
 1147 026a 0B21     		movs	r1, #11
 1148 026c FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 1149 0270 29B0     		add	sp, sp, #164
 1150              		@ sp needed
 1151 0272 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1152              	.L280:
 1153 0276 2549     		ldr	r1, .L314+96
 1154 0278 A069     		ldr	r0, [r4, #24]
 1155 027a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1156 027e 0122     		movs	r2, #1
 1157 0280 A168     		ldr	r1, [r4, #8]
 1158 0282 2046     		mov	r0, r4
 1159 0284 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 1160 0288 EFE6     		b	.L223
 1161              	.L232:
 1162 028a 2846     		mov	r0, r5
 1163 028c 0949     		ldr	r1, .L314+8
 1164 028e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1165 0292 0028     		cmp	r0, #0
 1166 0294 6CD0     		beq	.L235
 1167 0296 0849     		ldr	r1, .L314+12
 1168 0298 A069     		ldr	r0, [r4, #24]
 1169 029a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1170 029e 3146     		mov	r1, r6
 1171 02a0 2046     		mov	r0, r4
 1172 02a2 0122     		movs	r2, #1
 1173 02a4 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 1174 02a8 DFE6     		b	.L223
 1175              	.L315:
 1176 02aa 00BF     		.align	2
 1177              	.L314:
 1178 02ac 00000000 		.word	reprap
 1179 02b0 6C040000 		.word	.LC68
 1180 02b4 84000000 		.word	.LC22
 1181 02b8 8C000000 		.word	.LC23
 1182 02bc 20000000 		.word	.LC17
 1183 02c0 4C000000 		.word	.LC19
 1184 02c4 08000000 		.word	.LC12
 1185 02c8 54000000 		.word	.LC20
 1186 02cc DC010000 		.word	.LC42
 1187 02d0 AC030000 		.word	.LC63
 1188 02d4 74040000 		.word	.LC69
 1189 02d8 BC000000 		.word	.LC25
 1190 02dc D8000000 		.word	.LC27
 1191 02e0 00010000 		.word	.LC29
 1192 02e4 10010000 		.word	.LC31
 1193 02e8 14010000 		.word	.LC32
 1194 02ec 1C010000 		.word	.LC33
 1195 02f0 24010000 		.word	.LC34
 1196 02f4 28010000 		.word	.LC35
 1197 02f8 00000000 		.word	.LC16
ARM GAS  /tmp/cc9HRniu.s 			page 22


 1198 02fc 48010000 		.word	.LC36
 1199 0300 4C010000 		.word	.LC37
 1200 0304 C4000000 		.word	.LC26
 1201 0308 28000000 		.word	.LC18
 1202 030c 6C010000 		.word	.LC38
 1203 0310 D4030000 		.word	.LC64
 1204              	.L270:
 1205 0314 A249     		ldr	r1, .L316
 1206 0316 3046     		mov	r0, r6
 1207 0318 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1208 031c 0746     		mov	r7, r0
 1209 031e 0028     		cmp	r0, #0
 1210 0320 39D1     		bne	.L310
 1211 0322 A049     		ldr	r1, .L316+4
 1212 0324 3046     		mov	r0, r6
 1213 0326 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1214 032a 0028     		cmp	r0, #0
 1215 032c 3FF482AE 		beq	.L276
 1216 0330 9C49     		ldr	r1, .L316+4
 1217 0332 2046     		mov	r0, r4
 1218 0334 FFF7FEFF 		bl	_ZNK12FtpResponder12GetParameterEPKc
 1219 0338 2A68     		ldr	r2, [r5]
 1220 033a 0646     		mov	r6, r0
 1221 033c 3B46     		mov	r3, r7
 1222 033e D2F8B409 		ldr	r0, [r2, #2484]
 1223 0342 04F5B271 		add	r1, r4, #356
 1224 0346 3246     		mov	r2, r6
 1225 0348 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 1226 034c 2063     		str	r0, [r4, #48]
 1227 034e 0028     		cmp	r0, #0
 1228 0350 4FD0     		beq	.L277
 1229 0352 A569     		ldr	r5, [r4, #24]
 1230 0354 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1231 0358 3246     		mov	r2, r6
 1232 035a 0346     		mov	r3, r0
 1233 035c 9249     		ldr	r1, .L316+8
 1234 035e 2846     		mov	r0, r5
 1235 0360 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1236 0364 2046     		mov	r0, r4
 1237 0366 0122     		movs	r2, #1
 1238 0368 0821     		movs	r1, #8
 1239 036a FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 1240 036e 7CE6     		b	.L223
 1241              	.L235:
 1242 0370 8E49     		ldr	r1, .L316+12
 1243 0372 75E7     		b	.L294
 1244              	.L306:
 1245 0374 04F5B272 		add	r2, r4, #356
 1246 0378 8D49     		ldr	r1, .L316+16
 1247 037a A069     		ldr	r0, [r4, #24]
 1248 037c FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1249 0380 0122     		movs	r2, #1
 1250 0382 2046     		mov	r0, r4
 1251 0384 1146     		mov	r1, r2
 1252 0386 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 1253 038a 6EE6     		b	.L223
 1254              	.L309:
ARM GAS  /tmp/cc9HRniu.s 			page 23


 1255 038c 8949     		ldr	r1, .L316+20
 1256 038e A069     		ldr	r0, [r4, #24]
 1257 0390 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1258 0394 5BE7     		b	.L272
 1259              	.L310:
 1260 0396 8249     		ldr	r1, .L316
 1261 0398 2046     		mov	r0, r4
 1262 039a FFF7FEFF 		bl	_ZNK12FtpResponder12GetParameterEPKc
 1263 039e 2B68     		ldr	r3, [r5]
 1264 03a0 0646     		mov	r6, r0
 1265 03a2 0246     		mov	r2, r0
 1266 03a4 04F5B271 		add	r1, r4, #356
 1267 03a8 D3F8B409 		ldr	r0, [r3, #2484]
 1268 03ac 0123     		movs	r3, #1
 1269 03ae FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 1270 03b2 F0B1     		cbz	r0, .L277
 1271 03b4 3246     		mov	r2, r6
 1272 03b6 0146     		mov	r1, r0
 1273 03b8 2046     		mov	r0, r4
 1274 03ba FFF7FEFF 		bl	_ZN16NetworkResponder11StartUploadEP9FileStorePKc
 1275 03be 7E49     		ldr	r1, .L316+24
 1276 03c0 A069     		ldr	r0, [r4, #24]
 1277 03c2 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1278 03c6 2046     		mov	r0, r4
 1279 03c8 0122     		movs	r2, #1
 1280 03ca 0321     		movs	r1, #3
 1281 03cc FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 1282 03d0 4BE6     		b	.L223
 1283              	.L305:
 1284 03d2 7A49     		ldr	r1, .L316+28
 1285 03d4 D1E6     		b	.L300
 1286              	.L273:
 1287 03d6 7A49     		ldr	r1, .L316+32
 1288 03d8 A069     		ldr	r0, [r4, #24]
 1289 03da FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1290 03de 36E7     		b	.L272
 1291              	.L307:
 1292 03e0 7849     		ldr	r1, .L316+36
 1293 03e2 2046     		mov	r0, r4
 1294 03e4 FFF7FEFF 		bl	_ZNK12FtpResponder12GetParameterEPKc
 1295 03e8 0146     		mov	r1, r0
 1296 03ea 2046     		mov	r0, r4
 1297 03ec FFF7FEFF 		bl	_ZN12FtpResponder15ChangeDirectoryEPKc
 1298 03f0 3BE6     		b	.L223
 1299              	.L277:
 1300 03f2 7549     		ldr	r1, .L316+40
 1301 03f4 C1E6     		b	.L300
 1302              	.L303:
 1303 03f6 7549     		ldr	r1, .L316+44
 1304 03f8 2FE6     		b	.L296
 1305              	.L308:
 1306 03fa 2046     		mov	r0, r4
 1307 03fc 7449     		ldr	r1, .L316+48
 1308 03fe FFF7FEFF 		bl	_ZN12FtpResponder15ChangeDirectoryEPKc
 1309 0402 32E6     		b	.L223
 1310              	.L241:
 1311 0404 7349     		ldr	r1, .L316+52
ARM GAS  /tmp/cc9HRniu.s 			page 24


 1312 0406 3046     		mov	r0, r6
 1313 0408 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1314 040c 0028     		cmp	r0, #0
 1315 040e 3AD0     		beq	.L245
 1316 0410 4FF6FF71 		movw	r1, #65535
 1317 0414 84F8DC70 		strb	r7, [r4, #220]
 1318 0418 84F8C870 		strb	r7, [r4, #200]
 1319 041c 4FF48060 		mov	r0, #1024
 1320 0420 FFF7FEFF 		bl	_Z6randomll
 1321 0424 A4F8D000 		strh	r0, [r4, #208]	@ movhi
 1322 0428 FFF7FEFF 		bl	millis
 1323 042c 2369     		ldr	r3, [r4, #16]
 1324 042e C4F8D400 		str	r0, [r4, #212]
 1325 0432 5868     		ldr	r0, [r3, #4]
 1326 0434 B4F8D010 		ldrh	r1, [r4, #208]
 1327 0438 0368     		ldr	r3, [r0]
 1328 043a DB6C     		ldr	r3, [r3, #76]
 1329 043c 9847     		blx	r3
 1330 043e AB6C     		ldr	r3, [r5, #72]
 1331 0440 5B07     		lsls	r3, r3, #29
 1332 0442 04D5     		bpl	.L246
 1333 0444 B4F8D010 		ldrh	r1, [r4, #208]
 1334 0448 6348     		ldr	r0, .L316+56
 1335 044a FFF7FEFF 		bl	debugPrintf
 1336              	.L246:
 1337 044e 2369     		ldr	r3, [r4, #16]
 1338 0450 5868     		ldr	r0, [r3, #4]
 1339 0452 0368     		ldr	r3, [r0]
 1340 0454 9B6B     		ldr	r3, [r3, #56]
 1341 0456 9847     		blx	r3
 1342 0458 B4F8D050 		ldrh	r5, [r4, #208]
 1343 045c 4378     		ldrb	r3, [r0, #1]	@ zero_extendqisi2
 1344 045e 0278     		ldrb	r2, [r0]	@ zero_extendqisi2
 1345 0460 EEB2     		uxtb	r6, r5
 1346 0462 2D0A     		lsrs	r5, r5, #8
 1347 0464 0146     		mov	r1, r0
 1348 0466 A069     		ldr	r0, [r4, #24]
 1349 0468 CDE90256 		strd	r5, r6, [sp, #8]
 1350 046c CD78     		ldrb	r5, [r1, #3]	@ zero_extendqisi2
 1351 046e 0195     		str	r5, [sp, #4]
 1352 0470 8978     		ldrb	r1, [r1, #2]	@ zero_extendqisi2
 1353 0472 0091     		str	r1, [sp]
 1354 0474 5949     		ldr	r1, .L316+60
 1355 0476 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1356 047a 2046     		mov	r0, r4
 1357 047c 0122     		movs	r2, #1
 1358 047e 0621     		movs	r1, #6
 1359 0480 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 1360 0484 F1E5     		b	.L223
 1361              	.L245:
 1362 0486 5649     		ldr	r1, .L316+64
 1363 0488 3046     		mov	r0, r6
 1364 048a FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1365 048e 20B9     		cbnz	r0, .L247
 1366 0490 4449     		ldr	r1, .L316+4
 1367 0492 3046     		mov	r0, r6
 1368 0494 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
ARM GAS  /tmp/cc9HRniu.s 			page 25


 1369 0498 E0B1     		cbz	r0, .L311
 1370              	.L247:
 1371 049a 5249     		ldr	r1, .L316+68
 1372 049c 6DE6     		b	.L300
 1373              	.L242:
 1374 049e 2846     		mov	r0, r5
 1375 04a0 5149     		ldr	r1, .L316+72
 1376 04a2 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1377 04a6 98B1     		cbz	r0, .L244
 1378 04a8 5049     		ldr	r1, .L316+76
 1379 04aa A069     		ldr	r0, [r4, #24]
 1380 04ac FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1381 04b0 66E6     		b	.L263
 1382              	.L261:
 1383 04b2 4F49     		ldr	r1, .L316+80
 1384 04b4 3046     		mov	r0, r6
 1385 04b6 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1386 04ba 0546     		mov	r5, r0
 1387 04bc 0028     		cmp	r0, #0
 1388 04be 40F0FD80 		bne	.L312
 1389 04c2 3046     		mov	r0, r6
 1390 04c4 4B49     		ldr	r1, .L316+84
 1391 04c6 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1392 04ca 0028     		cmp	r0, #0
 1393 04cc 7FF4C4AD 		bne	.L299
 1394              	.L244:
 1395 04d0 3B49     		ldr	r1, .L316+32
 1396 04d2 52E6     		b	.L300
 1397              	.L311:
 1398 04d4 3249     		ldr	r1, .L316
 1399 04d6 3046     		mov	r0, r6
 1400 04d8 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1401 04dc 0028     		cmp	r0, #0
 1402 04de DCD1     		bne	.L247
 1403 04e0 4549     		ldr	r1, .L316+88
 1404 04e2 3046     		mov	r0, r6
 1405 04e4 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1406 04e8 8046     		mov	r8, r0
 1407 04ea 90B1     		cbz	r0, .L313
 1408 04ec 4249     		ldr	r1, .L316+88
 1409 04ee 2046     		mov	r0, r4
 1410 04f0 FFF7FEFF 		bl	_ZNK12FtpResponder12GetParameterEPKc
 1411 04f4 2968     		ldr	r1, [r5]
 1412 04f6 0246     		mov	r2, r0
 1413 04f8 0023     		movs	r3, #0
 1414 04fa D1F8B409 		ldr	r0, [r1, #2484]
 1415 04fe 04F5B271 		add	r1, r4, #356
 1416 0502 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 1417 0506 E8B1     		cbz	r0, .L250
 1418 0508 3C49     		ldr	r1, .L316+92
 1419 050a A069     		ldr	r0, [r4, #24]
 1420 050c FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1421 0510 36E6     		b	.L263
 1422              	.L313:
 1423 0512 3B49     		ldr	r1, .L316+96
 1424 0514 3046     		mov	r0, r6
 1425 0516 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
ARM GAS  /tmp/cc9HRniu.s 			page 26


 1426 051a 0746     		mov	r7, r0
 1427 051c E0B1     		cbz	r0, .L252
 1428 051e 3849     		ldr	r1, .L316+96
 1429 0520 2046     		mov	r0, r4
 1430 0522 FFF7FEFF 		bl	_ZNK12FtpResponder12GetParameterEPKc
 1431 0526 2968     		ldr	r1, [r5]
 1432 0528 0246     		mov	r2, r0
 1433 052a 4346     		mov	r3, r8
 1434 052c D1F8B409 		ldr	r0, [r1, #2484]
 1435 0530 04F5B271 		add	r1, r4, #356
 1436 0534 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 1437 0538 48B1     		cbz	r0, .L253
 1438 053a 3249     		ldr	r1, .L316+100
 1439 053c A069     		ldr	r0, [r4, #24]
 1440 053e FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1441 0542 1DE6     		b	.L263
 1442              	.L250:
 1443 0544 3049     		ldr	r1, .L316+104
 1444 0546 A069     		ldr	r0, [r4, #24]
 1445 0548 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1446 054c 18E6     		b	.L263
 1447              	.L253:
 1448 054e 2F49     		ldr	r1, .L316+108
 1449 0550 A069     		ldr	r0, [r4, #24]
 1450 0552 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1451 0556 13E6     		b	.L263
 1452              	.L252:
 1453 0558 2D49     		ldr	r1, .L316+112
 1454 055a 3046     		mov	r0, r6
 1455 055c FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1456 0560 0028     		cmp	r0, #0
 1457 0562 59D0     		beq	.L255
 1458 0564 2A49     		ldr	r1, .L316+112
 1459 0566 2046     		mov	r0, r4
 1460 0568 FFF7FEFF 		bl	_ZNK12FtpResponder12GetParameterEPKc
 1461 056c 28AE     		add	r6, sp, #160
 1462 056e 7923     		movs	r3, #121
 1463 0570 06F8887D 		strb	r7, [r6, #-136]!
 1464 0574 0246     		mov	r2, r0
 1465 0576 04F5B271 		add	r1, r4, #356
 1466 057a 04A8     		add	r0, sp, #16
 1467 057c CDE90463 		strd	r6, r3, [sp, #16]
 1468 0580 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 1469 0584 2B68     		ldr	r3, [r5]
 1470 0586 3146     		mov	r1, r6
 1471 0588 D3F8B409 		ldr	r0, [r3, #2484]
 1472 058c FFF7FEFF 		bl	_ZN11MassStorage13MakeDirectoryEPKc
 1473 0590 0028     		cmp	r0, #0
 1474 0592 62D0     		beq	.L256
 1475 0594 3246     		mov	r2, r6
 1476 0596 1F49     		ldr	r1, .L316+116
 1477 0598 A069     		ldr	r0, [r4, #24]
 1478 059a FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1479 059e EFE5     		b	.L263
 1480              	.L317:
 1481              		.align	2
 1482              	.L316:
ARM GAS  /tmp/cc9HRniu.s 			page 27


 1483 05a0 EC010000 		.word	.LC44
 1484 05a4 E4010000 		.word	.LC43
 1485 05a8 38040000 		.word	.LC67
 1486 05ac 9C000000 		.word	.LC24
 1487 05b0 04010000 		.word	.LC30
 1488 05b4 28010000 		.word	.LC35
 1489 05b8 04040000 		.word	.LC65
 1490 05bc E0000000 		.word	.LC28
 1491 05c0 6C010000 		.word	.LC38
 1492 05c4 10010000 		.word	.LC31
 1493 05c8 1C040000 		.word	.LC66
 1494 05cc 6C000000 		.word	.LC21
 1495 05d0 04000000 		.word	.LC11
 1496 05d4 84010000 		.word	.LC39
 1497 05d8 8C010000 		.word	.LC40
 1498 05dc AC010000 		.word	.LC41
 1499 05e0 DC010000 		.word	.LC42
 1500 05e4 FC010000 		.word	.LC46
 1501 05e8 48010000 		.word	.LC36
 1502 05ec 4C010000 		.word	.LC37
 1503 05f0 90030000 		.word	.LC61
 1504 05f4 84000000 		.word	.LC22
 1505 05f8 F4010000 		.word	.LC45
 1506 05fc 14020000 		.word	.LC47
 1507 0600 58020000 		.word	.LC49
 1508 0604 5C020000 		.word	.LC50
 1509 0608 38020000 		.word	.LC48
 1510 060c 8C020000 		.word	.LC51
 1511 0610 B8020000 		.word	.LC52
 1512 0614 BC020000 		.word	.LC53
 1513              	.L255:
 1514 0618 2949     		ldr	r1, .L318
 1515 061a 3046     		mov	r0, r6
 1516 061c FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1517 0620 0746     		mov	r7, r0
 1518 0622 20B3     		cbz	r0, .L258
 1519 0624 2649     		ldr	r1, .L318
 1520 0626 2046     		mov	r0, r4
 1521 0628 FFF7FEFF 		bl	_ZNK12FtpResponder12GetParameterEPKc
 1522 062c 04F5EE76 		add	r6, r4, #476
 1523 0630 7923     		movs	r3, #121
 1524 0632 0246     		mov	r2, r0
 1525 0634 04F5B271 		add	r1, r4, #356
 1526 0638 06A8     		add	r0, sp, #24
 1527 063a CDE90663 		strd	r6, r3, [sp, #24]
 1528 063e FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 1529 0642 2B68     		ldr	r3, [r5]
 1530 0644 3146     		mov	r1, r6
 1531 0646 D3F8B409 		ldr	r0, [r3, #2484]
 1532 064a FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKc
 1533 064e 48B1     		cbz	r0, .L259
 1534 0650 1C49     		ldr	r1, .L318+4
 1535 0652 A069     		ldr	r0, [r4, #24]
 1536 0654 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1537 0658 92E5     		b	.L263
 1538              	.L256:
 1539 065a 1B49     		ldr	r1, .L318+8
ARM GAS  /tmp/cc9HRniu.s 			page 28


 1540 065c A069     		ldr	r0, [r4, #24]
 1541 065e FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1542 0662 8DE5     		b	.L263
 1543              	.L259:
 1544 0664 1949     		ldr	r1, .L318+12
 1545 0666 A069     		ldr	r0, [r4, #24]
 1546 0668 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1547 066c 88E5     		b	.L263
 1548              	.L258:
 1549 066e 1849     		ldr	r1, .L318+16
 1550 0670 3046     		mov	r0, r6
 1551 0672 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1552 0676 0028     		cmp	r0, #0
 1553 0678 3FF41BAF 		beq	.L261
 1554 067c 1449     		ldr	r1, .L318+16
 1555 067e 2046     		mov	r0, r4
 1556 0680 FFF7FEFF 		bl	_ZNK12FtpResponder12GetParameterEPKc
 1557 0684 28AE     		add	r6, sp, #160
 1558 0686 0246     		mov	r2, r0
 1559 0688 06F8887D 		strb	r7, [r6, #-136]!
 1560 068c 7923     		movs	r3, #121
 1561 068e 04F5B271 		add	r1, r4, #356
 1562 0692 04A8     		add	r0, sp, #16
 1563 0694 CDE90463 		strd	r6, r3, [sp, #16]
 1564 0698 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameERK9StringRefPKcS4_
 1565 069c 2B68     		ldr	r3, [r5]
 1566 069e 3246     		mov	r2, r6
 1567 06a0 D3F8B409 		ldr	r0, [r3, #2484]
 1568 06a4 04F5EE71 		add	r1, r4, #476
 1569 06a8 FFF7FEFF 		bl	_ZN11MassStorage6RenameEPKcS1_
 1570 06ac 20B1     		cbz	r0, .L262
 1571 06ae 0949     		ldr	r1, .L318+20
 1572 06b0 A069     		ldr	r0, [r4, #24]
 1573 06b2 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1574 06b6 63E5     		b	.L263
 1575              	.L262:
 1576 06b8 0749     		ldr	r1, .L318+24
 1577 06ba 5EE5     		b	.L300
 1578              	.L312:
 1579 06bc 0749     		ldr	r1, .L318+28
 1580 06be 5CE5     		b	.L300
 1581              	.L319:
 1582              		.align	2
 1583              	.L318:
 1584 06c0 FC020000 		.word	.LC55
 1585 06c4 04030000 		.word	.LC56
 1586 06c8 D0020000 		.word	.LC54
 1587 06cc 1C030000 		.word	.LC57
 1588 06d0 40030000 		.word	.LC58
 1589 06d4 48030000 		.word	.LC59
 1590 06d8 64030000 		.word	.LC60
 1591 06dc 98030000 		.word	.LC62
 1592              		.size	_ZN12FtpResponder11ProcessLineEv, .-_ZN12FtpResponder11ProcessLineEv
 1593              		.section	.text._ZN12FtpResponder8ReadDataEv,"ax",%progbits
 1594              		.align	1
 1595              		.p2align 2,,3
 1596              		.global	_ZN12FtpResponder8ReadDataEv
ARM GAS  /tmp/cc9HRniu.s 			page 29


 1597              		.syntax unified
 1598              		.thumb
 1599              		.thumb_func
 1600              		.fpu fpv4-sp-d16
 1601              		.type	_ZN12FtpResponder8ReadDataEv, %function
 1602              	_ZN12FtpResponder8ReadDataEv:
 1603              		@ args = 0, pretend = 0, frame = 8
 1604              		@ frame_needed = 0, uses_anonymous_args = 0
 1605 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1606 0002 90F8DD70 		ldrb	r7, [r0, #221]	@ zero_extendqisi2
 1607 0006 83B0     		sub	sp, sp, #12
 1608 0008 0446     		mov	r4, r0
 1609 000a 4FB1     		cbz	r7, .L321
 1610 000c 12E0     		b	.L326
 1611              	.L338:
 1612 000e 9DF80710 		ldrb	r1, [sp, #7]	@ zero_extendqisi2
 1613 0012 2046     		mov	r0, r4
 1614 0014 FFF7FEFF 		bl	_ZN12FtpResponder14CharFromClientEc
 1615 0018 94F8DD60 		ldrb	r6, [r4, #221]	@ zero_extendqisi2
 1616 001c 2F46     		mov	r7, r5
 1617 001e B6B9     		cbnz	r6, .L325
 1618              	.L321:
 1619 0020 2069     		ldr	r0, [r4, #16]
 1620 0022 0368     		ldr	r3, [r0]
 1621 0024 0DF10701 		add	r1, sp, #7
 1622 0028 1B69     		ldr	r3, [r3, #16]
 1623 002a 9847     		blx	r3
 1624 002c 0546     		mov	r5, r0
 1625 002e 0028     		cmp	r0, #0
 1626 0030 EDD1     		bne	.L338
 1627 0032 EFB9     		cbnz	r7, .L339
 1628              	.L326:
 1629 0034 2069     		ldr	r0, [r4, #16]
 1630 0036 0368     		ldr	r3, [r0]
 1631 0038 DB69     		ldr	r3, [r3, #28]
 1632 003a 9847     		blx	r3
 1633 003c 80B1     		cbz	r0, .L340
 1634 003e 94F8DD30 		ldrb	r3, [r4, #221]	@ zero_extendqisi2
 1635 0042 0027     		movs	r7, #0
 1636              	.L327:
 1637 0044 13B9     		cbnz	r3, .L341
 1638              	.L328:
 1639 0046 3846     		mov	r0, r7
 1640 0048 03B0     		add	sp, sp, #12
 1641              		@ sp needed
 1642 004a F0BD     		pop	{r4, r5, r6, r7, pc}
 1643              	.L341:
 1644 004c 3E46     		mov	r6, r7
 1645              	.L325:
 1646 004e A369     		ldr	r3, [r4, #24]
 1647 0050 8BB1     		cbz	r3, .L329
 1648              	.L330:
 1649 0052 2046     		mov	r0, r4
 1650 0054 FFF7FEFF 		bl	_ZN12FtpResponder11ProcessLineEv
 1651 0058 0127     		movs	r7, #1
 1652 005a 3846     		mov	r0, r7
 1653 005c 03B0     		add	sp, sp, #12
ARM GAS  /tmp/cc9HRniu.s 			page 30


 1654              		@ sp needed
 1655 005e F0BD     		pop	{r4, r5, r6, r7, pc}
 1656              	.L340:
 1657 0060 2368     		ldr	r3, [r4]
 1658 0062 2046     		mov	r0, r4
 1659 0064 5B69     		ldr	r3, [r3, #20]
 1660 0066 9847     		blx	r3
 1661 0068 0127     		movs	r7, #1
 1662 006a 3846     		mov	r0, r7
 1663 006c 03B0     		add	sp, sp, #12
 1664              		@ sp needed
 1665 006e F0BD     		pop	{r4, r5, r6, r7, pc}
 1666              	.L339:
 1667 0070 94F8DD30 		ldrb	r3, [r4, #221]	@ zero_extendqisi2
 1668 0074 E6E7     		b	.L327
 1669              	.L329:
 1670 0076 04F11800 		add	r0, r4, #24
 1671 007a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1672 007e 0028     		cmp	r0, #0
 1673 0080 E7D1     		bne	.L330
 1674 0082 3746     		mov	r7, r6
 1675 0084 DFE7     		b	.L328
 1676              		.size	_ZN12FtpResponder8ReadDataEv, .-_ZN12FtpResponder8ReadDataEv
 1677 0086 00BF     		.section	.text._ZN12FtpResponder4SpinEv,"ax",%progbits
 1678              		.align	1
 1679              		.p2align 2,,3
 1680              		.global	_ZN12FtpResponder4SpinEv
 1681              		.syntax unified
 1682              		.thumb
 1683              		.thumb_func
 1684              		.fpu fpv4-sp-d16
 1685              		.type	_ZN12FtpResponder4SpinEv, %function
 1686              	_ZN12FtpResponder4SpinEv:
 1687              		@ args = 0, pretend = 0, frame = 0
 1688              		@ frame_needed = 0, uses_anonymous_args = 0
 1689 0000 38B5     		push	{r3, r4, r5, lr}
 1690 0002 8368     		ldr	r3, [r0, #8]
 1691 0004 013B     		subs	r3, r3, #1
 1692 0006 0446     		mov	r4, r0
 1693 0008 0A2B     		cmp	r3, #10
 1694 000a 0ED8     		bhi	.L367
 1695 000c DFE803F0 		tbb	[pc, r3]
 1696              	.L345:
 1697 0010 10       		.byte	(.L356-.L345)/2
 1698 0011 2D       		.byte	(.L346-.L345)/2
 1699 0012 1D       		.byte	(.L347-.L345)/2
 1700 0013 0D       		.byte	(.L367-.L345)/2
 1701 0014 0D       		.byte	(.L367-.L345)/2
 1702 0015 33       		.byte	(.L348-.L345)/2
 1703 0016 06       		.byte	(.L349-.L345)/2
 1704 0017 15       		.byte	(.L350-.L345)/2
 1705 0018 4B       		.byte	(.L351-.L345)/2
 1706 0019 0D       		.byte	(.L367-.L345)/2
 1707 001a 10       		.byte	(.L356-.L345)/2
 1708 001b 00       		.p2align 1
 1709              	.L349:
 1710 001c D0F8D830 		ldr	r3, [r0, #216]
ARM GAS  /tmp/cc9HRniu.s 			page 31


 1711 0020 33B9     		cbnz	r3, .L356
 1712 0022 D830     		adds	r0, r0, #216
 1713 0024 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1714 0028 10B9     		cbnz	r0, .L356
 1715              	.L367:
 1716 002a 0025     		movs	r5, #0
 1717              	.L343:
 1718 002c 2846     		mov	r0, r5
 1719 002e 38BD     		pop	{r3, r4, r5, pc}
 1720              	.L356:
 1721 0030 2046     		mov	r0, r4
 1722 0032 BDE83840 		pop	{r3, r4, r5, lr}
 1723 0036 FFF7FEBF 		b	_ZN12FtpResponder8ReadDataEv
 1724              	.L350:
 1725 003a FFF7FEFF 		bl	_ZN12FtpResponder15SendPassiveDataEv
 1726 003e 94F8DC30 		ldrb	r3, [r4, #220]	@ zero_extendqisi2
 1727 0042 43B1     		cbz	r3, .L357
 1728              	.L377:
 1729 0044 0125     		movs	r5, #1
 1730 0046 2846     		mov	r0, r5
 1731 0048 38BD     		pop	{r3, r4, r5, pc}
 1732              	.L347:
 1733 004a FFF7FEFF 		bl	_ZN12FtpResponder8DoUploadEv
 1734 004e 94F8C830 		ldrb	r3, [r4, #200]	@ zero_extendqisi2
 1735 0052 002B     		cmp	r3, #0
 1736 0054 F6D1     		bne	.L377
 1737              	.L357:
 1738 0056 2069     		ldr	r0, [r4, #16]
 1739 0058 0368     		ldr	r3, [r0]
 1740 005a DB69     		ldr	r3, [r3, #28]
 1741 005c 9847     		blx	r3
 1742 005e 0028     		cmp	r0, #0
 1743 0060 F0D0     		beq	.L377
 1744 0062 2046     		mov	r0, r4
 1745 0064 FFF7FEFF 		bl	_ZN12FtpResponder8ReadDataEv
 1746 0068 ECE7     		b	.L377
 1747              	.L346:
 1748 006a 0368     		ldr	r3, [r0]
 1749 006c 0125     		movs	r5, #1
 1750 006e 1B69     		ldr	r3, [r3, #16]
 1751 0070 9847     		blx	r3
 1752 0072 2846     		mov	r0, r5
 1753 0074 38BD     		pop	{r3, r4, r5, pc}
 1754              	.L348:
 1755 0076 FFF7FEFF 		bl	millis
 1756 007a D4F8D430 		ldr	r3, [r4, #212]
 1757 007e 42F21072 		movw	r2, #10000
 1758 0082 C01A     		subs	r0, r0, r3
 1759 0084 9042     		cmp	r0, r2
 1760 0086 D0D9     		bls	.L367
 1761 0088 A069     		ldr	r0, [r4, #24]
 1762 008a 58B3     		cbz	r0, .L378
 1763              	.L353:
 1764 008c 1F49     		ldr	r1, .L380
 1765 008e FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1766 0092 0122     		movs	r2, #1
 1767 0094 1146     		mov	r1, r2
ARM GAS  /tmp/cc9HRniu.s 			page 32


 1768 0096 2046     		mov	r0, r4
 1769 0098 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 1770 009c 2046     		mov	r0, r4
 1771 009e FFF7FEFF 		bl	_ZN12FtpResponder13CloseDataPortEv
 1772 00a2 0125     		movs	r5, #1
 1773 00a4 C2E7     		b	.L343
 1774              	.L351:
 1775 00a6 8369     		ldr	r3, [r0, #24]
 1776 00a8 53B3     		cbz	r3, .L360
 1777              	.L363:
 1778 00aa 2069     		ldr	r0, [r4, #16]
 1779 00ac 0368     		ldr	r3, [r0]
 1780 00ae 1B6A     		ldr	r3, [r3, #32]
 1781 00b0 9847     		blx	r3
 1782 00b2 0546     		mov	r5, r0
 1783 00b4 F0B1     		cbz	r0, .L379
 1784 00b6 94F8C830 		ldrb	r3, [r4, #200]	@ zero_extendqisi2
 1785 00ba A069     		ldr	r0, [r4, #24]
 1786 00bc 33B9     		cbnz	r3, .L364
 1787 00be 94F8DC30 		ldrb	r3, [r4, #220]	@ zero_extendqisi2
 1788 00c2 1BB9     		cbnz	r3, .L364
 1789 00c4 1249     		ldr	r1, .L380+4
 1790 00c6 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1791 00ca 02E0     		b	.L366
 1792              	.L364:
 1793 00cc 1149     		ldr	r1, .L380+8
 1794 00ce FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1795              	.L366:
 1796 00d2 0122     		movs	r2, #1
 1797 00d4 2046     		mov	r0, r4
 1798 00d6 1146     		mov	r1, r2
 1799 00d8 FFF7FEFF 		bl	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 1800 00dc 2046     		mov	r0, r4
 1801 00de FFF7FEFF 		bl	_ZN12FtpResponder13CloseDataPortEv
 1802 00e2 A3E7     		b	.L343
 1803              	.L378:
 1804 00e4 04F11800 		add	r0, r4, #24
 1805 00e8 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1806 00ec 0028     		cmp	r0, #0
 1807 00ee 9CD0     		beq	.L367
 1808 00f0 A069     		ldr	r0, [r4, #24]
 1809 00f2 CBE7     		b	.L353
 1810              	.L379:
 1811 00f4 2368     		ldr	r3, [r4]
 1812 00f6 2046     		mov	r0, r4
 1813 00f8 5B69     		ldr	r3, [r3, #20]
 1814 00fa 9847     		blx	r3
 1815 00fc 0125     		movs	r5, #1
 1816 00fe 95E7     		b	.L343
 1817              	.L360:
 1818 0100 1830     		adds	r0, r0, #24
 1819 0102 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1820 0106 0028     		cmp	r0, #0
 1821 0108 CFD1     		bne	.L363
 1822 010a 8EE7     		b	.L367
 1823              	.L381:
 1824              		.align	2
ARM GAS  /tmp/cc9HRniu.s 			page 33


 1825              	.L380:
 1826 010c 00000000 		.word	.LC70
 1827 0110 40000000 		.word	.LC72
 1828 0114 28000000 		.word	.LC71
 1829              		.size	_ZN12FtpResponder4SpinEv, .-_ZN12FtpResponder4SpinEv
 1830              		.section	.text._ZN12FtpResponder14ConnectionLostEv,"ax",%progbits
 1831              		.align	1
 1832              		.p2align 2,,3
 1833              		.global	_ZN12FtpResponder14ConnectionLostEv
 1834              		.syntax unified
 1835              		.thumb
 1836              		.thumb_func
 1837              		.fpu fpv4-sp-d16
 1838              		.type	_ZN12FtpResponder14ConnectionLostEv, %function
 1839              	_ZN12FtpResponder14ConnectionLostEv:
 1840              		@ args = 0, pretend = 0, frame = 0
 1841              		@ frame_needed = 0, uses_anonymous_args = 0
 1842 0000 10B5     		push	{r4, lr}
 1843 0002 0446     		mov	r4, r0
 1844 0004 FFF7FEFF 		bl	_ZN12FtpResponder13CloseDataPortEv
 1845 0008 2046     		mov	r0, r4
 1846 000a BDE81040 		pop	{r4, lr}
 1847 000e FFF7FEBF 		b	_ZN16NetworkResponder14ConnectionLostEv
 1848              		.size	_ZN12FtpResponder14ConnectionLostEv, .-_ZN12FtpResponder14ConnectionLostEv
 1849              		.global	_ZTV12FtpResponder
 1850 0012 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1851              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1852              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1853              	_ZL28cpu_irq_prev_interrupt_state:
 1854 0000 00       		.space	1
 1855              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1856              		.align	2
 1857              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1858              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1859              	_ZL32cpu_irq_critical_section_counter:
 1860 0000 00000000 		.space	4
 1861              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1862              		.align	2
 1863              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1864              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1865              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1866 0000 00000000 		.space	4
 1867              		.section	.rodata._ZN12FtpResponder11ProcessLineEv.str1.4,"aMS",%progbits,1
 1868              		.align	2
 1869              	.LC16:
 1870 0000 46545020 		.ascii	"FTP request '%s' (state %d)\012\000"
 1870      72657175 
 1870      65737420 
 1870      27257327 
 1870      20287374 
 1871 001d 000000   		.space	3
 1872              	.LC17:
 1873 0020 55534552 		.ascii	"USER\000"
 1873      00
 1874 0025 000000   		.space	3
 1875              	.LC18:
 1876 0028 33333120 		.ascii	"331 Please specify the password.\015\012\000"
ARM GAS  /tmp/cc9HRniu.s 			page 34


 1876      506C6561 
 1876      73652073 
 1876      70656369 
 1876      66792074 
 1877 004b 00       		.space	1
 1878              	.LC19:
 1879 004c 50415353 		.ascii	"PASS\000"
 1879      00
 1880 0051 000000   		.space	3
 1881              	.LC20:
 1882 0054 32333020 		.ascii	"230 Login successful.\015\012\000"
 1882      4C6F6769 
 1882      6E207375 
 1882      63636573 
 1882      7366756C 
 1883              	.LC21:
 1884 006c 35333020 		.ascii	"530 Login incorrect.\015\012\000"
 1884      4C6F6769 
 1884      6E20696E 
 1884      636F7272 
 1884      6563742E 
 1885 0083 00       		.space	1
 1886              	.LC22:
 1887 0084 51554954 		.ascii	"QUIT\000"
 1887      00
 1888 0089 000000   		.space	3
 1889              	.LC23:
 1890 008c 32323120 		.ascii	"221 Goodbye.\015\012\000"
 1890      476F6F64 
 1890      6279652E 
 1890      0D0A00
 1891 009b 00       		.space	1
 1892              	.LC24:
 1893 009c 35303020 		.ascii	"500 Unknown login command.\015\012\000"
 1893      556E6B6E 
 1893      6F776E20 
 1893      6C6F6769 
 1893      6E20636F 
 1894 00b9 000000   		.space	3
 1895              	.LC25:
 1896 00bc 53595354 		.ascii	"SYST\000"
 1896      00
 1897 00c1 000000   		.space	3
 1898              	.LC26:
 1899 00c4 32313520 		.ascii	"215 UNIX Type: L8\015\012\000"
 1899      554E4958 
 1899      20547970 
 1899      653A204C 
 1899      380D0A00 
 1900              	.LC27:
 1901 00d8 46454154 		.ascii	"FEAT\000"
 1901      00
 1902 00dd 000000   		.space	3
 1903              	.LC28:
 1904 00e0 3231312D 		.ascii	"211-Features:\015\012PASV\015\012211 End\015\012\000"
 1904      46656174 
 1904      75726573 
ARM GAS  /tmp/cc9HRniu.s 			page 35


 1904      3A0D0A50 
 1904      4153560D 
 1905 00ff 00       		.space	1
 1906              	.LC29:
 1907 0100 50574400 		.ascii	"PWD\000"
 1908              	.LC30:
 1909 0104 32353720 		.ascii	"257 \"%s\"\015\012\000"
 1909      22257322 
 1909      0D0A00
 1910 010f 00       		.space	1
 1911              	.LC31:
 1912 0110 43574400 		.ascii	"CWD\000"
 1913              	.LC32:
 1914 0114 43445550 		.ascii	"CDUP\000"
 1914      00
 1915 0119 000000   		.space	3
 1916              	.LC33:
 1917 011c 54595045 		.ascii	"TYPE\000"
 1917      00
 1918 0121 000000   		.space	3
 1919              	.LC34:
 1920 0124 4900     		.ascii	"I\000"
 1921 0126 0000     		.space	2
 1922              	.LC35:
 1923 0128 32303020 		.ascii	"200 Switching to Binary mode.\015\012\000"
 1923      53776974 
 1923      6368696E 
 1923      6720746F 
 1923      2042696E 
 1924              	.LC36:
 1925 0148 4100     		.ascii	"A\000"
 1926 014a 0000     		.space	2
 1927              	.LC37:
 1928 014c 32303020 		.ascii	"200 Switching to ASCII mode.\015\012\000"
 1928      53776974 
 1928      6368696E 
 1928      6720746F 
 1928      20415343 
 1929 016b 00       		.space	1
 1930              	.LC38:
 1931 016c 35303020 		.ascii	"500 Unknown command.\015\012\000"
 1931      556E6B6E 
 1931      6F776E20 
 1931      636F6D6D 
 1931      616E642E 
 1932 0183 00       		.space	1
 1933              	.LC39:
 1934 0184 50415356 		.ascii	"PASV\000"
 1934      00
 1935 0189 000000   		.space	3
 1936              	.LC40:
 1937 018c 46545020 		.ascii	"FTP data port open at port %u\012\000"
 1937      64617461 
 1937      20706F72 
 1937      74206F70 
 1937      656E2061 
 1938 01ab 00       		.space	1
ARM GAS  /tmp/cc9HRniu.s 			page 36


 1939              	.LC41:
 1940 01ac 32323720 		.ascii	"227 Entering Passive Mode (%d,%d,%d,%d,%d,%d)\015\012"
 1940      456E7465 
 1940      72696E67 
 1940      20506173 
 1940      73697665 
 1941 01db 00       		.ascii	"\000"
 1942              	.LC42:
 1943 01dc 4C495354 		.ascii	"LIST\000"
 1943      00
 1944 01e1 000000   		.space	3
 1945              	.LC43:
 1946 01e4 52455452 		.ascii	"RETR\000"
 1946      00
 1947 01e9 000000   		.space	3
 1948              	.LC44:
 1949 01ec 53544F52 		.ascii	"STOR\000"
 1949      00
 1950 01f1 000000   		.space	3
 1951              	.LC45:
 1952 01f4 44454C45 		.ascii	"DELE\000"
 1952      00
 1953 01f9 000000   		.space	3
 1954              	.LC46:
 1955 01fc 34323520 		.ascii	"425 Use PASV first.\015\012\000"
 1955      55736520 
 1955      50415356 
 1955      20666972 
 1955      73742E0D 
 1956 0212 0000     		.space	2
 1957              	.LC47:
 1958 0214 32353020 		.ascii	"250 Delete operation successful.\015\012\000"
 1958      44656C65 
 1958      7465206F 
 1958      70657261 
 1958      74696F6E 
 1959 0237 00       		.space	1
 1960              	.LC48:
 1961 0238 35353020 		.ascii	"550 Delete operation failed.\015\012\000"
 1961      44656C65 
 1961      7465206F 
 1961      70657261 
 1961      74696F6E 
 1962 0257 00       		.space	1
 1963              	.LC49:
 1964 0258 524D4400 		.ascii	"RMD\000"
 1965              	.LC50:
 1966 025c 32353020 		.ascii	"250 Remove directory operation successful.\015\012\000"
 1966      52656D6F 
 1966      76652064 
 1966      69726563 
 1966      746F7279 
 1967 0289 000000   		.space	3
 1968              	.LC51:
 1969 028c 35353020 		.ascii	"550 Remove directory operation failed.\015\012\000"
 1969      52656D6F 
 1969      76652064 
ARM GAS  /tmp/cc9HRniu.s 			page 37


 1969      69726563 
 1969      746F7279 
 1970 02b5 000000   		.space	3
 1971              	.LC52:
 1972 02b8 4D4B4400 		.ascii	"MKD\000"
 1973              	.LC53:
 1974 02bc 32353720 		.ascii	"257 \"%s\" created\015\012\000"
 1974      22257322 
 1974      20637265 
 1974      61746564 
 1974      0D0A00
 1975 02cf 00       		.space	1
 1976              	.LC54:
 1977 02d0 35353020 		.ascii	"550 Create directory operation failed.\015\012\000"
 1977      43726561 
 1977      74652064 
 1977      69726563 
 1977      746F7279 
 1978 02f9 000000   		.space	3
 1979              	.LC55:
 1980 02fc 524E4652 		.ascii	"RNFR\000"
 1980      00
 1981 0301 000000   		.space	3
 1982              	.LC56:
 1983 0304 33353020 		.ascii	"350 Ready to RNTO.\015\012\000"
 1983      52656164 
 1983      7920746F 
 1983      20524E54 
 1983      4F2E0D0A 
 1984 0319 000000   		.space	3
 1985              	.LC57:
 1986 031c 35353020 		.ascii	"550 Invalid file or directory.\015\012\000"
 1986      496E7661 
 1986      6C696420 
 1986      66696C65 
 1986      206F7220 
 1987 033d 000000   		.space	3
 1988              	.LC58:
 1989 0340 524E544F 		.ascii	"RNTO\000"
 1989      00
 1990 0345 000000   		.space	3
 1991              	.LC59:
 1992 0348 32353020 		.ascii	"250 Rename successful.\015\012\000"
 1992      52656E61 
 1992      6D652073 
 1992      75636365 
 1992      73736675 
 1993 0361 000000   		.space	3
 1994              	.LC60:
 1995 0364 35303020 		.ascii	"500 Could not rename file or directory\015\012\000"
 1995      436F756C 
 1995      64206E6F 
 1995      74207265 
 1995      6E616D65 
 1996 038d 000000   		.space	3
 1997              	.LC61:
 1998 0390 4E4F4F50 		.ascii	"NOOP\000"
ARM GAS  /tmp/cc9HRniu.s 			page 38


 1998      00
 1999 0395 000000   		.space	3
 2000              	.LC62:
 2001 0398 32303020 		.ascii	"200 NOOP okay.\015\012\000"
 2001      4E4F4F50 
 2001      206F6B61 
 2001      792E0D0A 
 2001      00
 2002 03a9 000000   		.space	3
 2003              	.LC63:
 2004 03ac 31353020 		.ascii	"150 Here comes the directory listing.\015\012\000"
 2004      48657265 
 2004      20636F6D 
 2004      65732074 
 2004      68652064 
 2005              	.LC64:
 2006 03d4 25637277 		.ascii	"%crw-rw-rw- 1 ftp ftp %13lu %s %02d %04d %s\015\012"
 2006      2D72772D 
 2006      72772D20 
 2006      31206674 
 2006      70206674 
 2007 0401 00       		.ascii	"\000"
 2008 0402 0000     		.space	2
 2009              	.LC65:
 2010 0404 31353020 		.ascii	"150 OK to send data.\015\012\000"
 2010      4F4B2074 
 2010      6F207365 
 2010      6E642064 
 2010      6174612E 
 2011 041b 00       		.space	1
 2012              	.LC66:
 2013 041c 35353020 		.ascii	"550 Failed to open file.\015\012\000"
 2013      4661696C 
 2013      65642074 
 2013      6F206F70 
 2013      656E2066 
 2014 0437 00       		.space	1
 2015              	.LC67:
 2016 0438 31353020 		.ascii	"150 Opening data connection for %s (%lu bytes).\015"
 2016      4F70656E 
 2016      696E6720 
 2016      64617461 
 2016      20636F6E 
 2017 0468 0A00     		.ascii	"\012\000"
 2018 046a 0000     		.space	2
 2019              	.LC68:
 2020 046c 41424F52 		.ascii	"ABOR\000"
 2020      00
 2021 0471 000000   		.space	3
 2022              	.LC69:
 2023 0474 32323620 		.ascii	"226 ABOR successful.\015\012\000"
 2023      41424F52 
 2023      20737563 
 2023      63657373 
 2023      66756C2E 
 2024              		.section	.rodata._ZN12FtpResponder13CloseDataPortEv.str1.4,"aMS",%progbits,1
 2025              		.align	2
ARM GAS  /tmp/cc9HRniu.s 			page 39


 2026              	.LC15:
 2027 0000 46545020 		.ascii	"FTP data port is being closed\012\000"
 2027      64617461 
 2027      20706F72 
 2027      74206973 
 2027      20626569 
 2028              		.section	.rodata._ZN12FtpResponder14CharFromClientEc.str1.4,"aMS",%progbits,1
 2029              		.align	2
 2030              	.LC8:
 2031 0000 57656273 		.ascii	"Webserver: Buffer overflow in FTP server!\012\000"
 2031      65727665 
 2031      723A2042 
 2031      75666665 
 2031      72206F76 
 2032              		.section	.rodata._ZN12FtpResponder15ChangeDirectoryEPKc.str1.4,"aMS",%progbits,1
 2033              		.align	2
 2034              	.LC10:
 2035 0000 2E00     		.ascii	".\000"
 2036 0002 0000     		.space	2
 2037              	.LC11:
 2038 0004 2E2E00   		.ascii	"..\000"
 2039 0007 00       		.space	1
 2040              	.LC12:
 2041 0008 2F00     		.ascii	"/\000"
 2042 000a 0000     		.space	2
 2043              	.LC13:
 2044 000c 35353020 		.ascii	"550 Failed to change directory.\015\012\000"
 2044      4661696C 
 2044      65642074 
 2044      6F206368 
 2044      616E6765 
 2045 002e 0000     		.space	2
 2046              	.LC14:
 2047 0030 32353020 		.ascii	"250 Directory successfully changed.\015\012\000"
 2047      44697265 
 2047      63746F72 
 2047      79207375 
 2047      63636573 
 2048              		.section	.rodata._ZN12FtpResponder15SendPassiveDataEv.str1.4,"aMS",%progbits,1
 2049              		.align	2
 2050              	.LC5:
 2051 0000 43616E27 		.ascii	"Can't send anymore over the data port\012\000"
 2051      74207365 
 2051      6E642061 
 2051      6E796D6F 
 2051      7265206F 
 2052              		.section	.rodata._ZN12FtpResponder4SpinEv.str1.4,"aMS",%progbits,1
 2053              		.align	2
 2054              	.LC70:
 2055 0000 34323520 		.ascii	"425 Failed to establish connection.\015\012\000"
 2055      4661696C 
 2055      65642074 
 2055      6F206573 
 2055      7461626C 
 2056 0026 0000     		.space	2
 2057              	.LC71:
 2058 0028 35323620 		.ascii	"526 Transfer failed!\015\012\000"
ARM GAS  /tmp/cc9HRniu.s 			page 40


 2058      5472616E 
 2058      73666572 
 2058      20666169 
 2058      6C656421 
 2059 003f 00       		.space	1
 2060              	.LC72:
 2061 0040 32323620 		.ascii	"226 Transfer complete.\015\012\000"
 2061      5472616E 
 2061      73666572 
 2061      20636F6D 
 2061      706C6574 
 2062              		.section	.rodata._ZN12FtpResponder6AcceptEP6Socketh.str1.4,"aMS",%progbits,1
 2063              		.align	2
 2064              	.LC2:
 2065 0000 46545020 		.ascii	"FTP connection accepted\012\000"
 2065      636F6E6E 
 2065      65637469 
 2065      6F6E2061 
 2065      63636570 
 2066 0019 000000   		.space	3
 2067              	.LC3:
 2068 001c 32323020 		.ascii	"220 RepRapFirmware FTP server\015\012\000"
 2068      52657052 
 2068      61704669 
 2068      726D7761 
 2068      72652046 
 2069              	.LC4:
 2070 003c 46545020 		.ascii	"FTP data connection accepted\012\000"
 2070      64617461 
 2070      20636F6E 
 2070      6E656374 
 2070      696F6E20 
 2071              		.section	.rodata._ZN12FtpResponder8DoUploadEv.str1.4,"aMS",%progbits,1
 2072              		.align	2
 2073              	.LC6:
 2074 0000 57726974 		.ascii	"Writing %u bytes of upload data\012\000"
 2074      696E6720 
 2074      25752062 
 2074      79746573 
 2074      206F6620 
 2075 0021 000000   		.space	3
 2076              	.LC7:
 2077 0024 436F756C 		.ascii	"Could not write upload data!\012\000"
 2077      64206E6F 
 2077      74207772 
 2077      69746520 
 2077      75706C6F 
 2078              		.section	.rodata._ZN12FtpResponder8SendDataEv.str1.4,"aMS",%progbits,1
 2079              		.align	2
 2080              	.LC1:
 2081 0000 43616E27 		.ascii	"Can't send anymore\012\000"
 2081      74207365 
 2081      6E642061 
 2081      6E796D6F 
 2081      72650A00 
 2082              		.section	.rodata._ZNK12FtpResponder11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 2083              		.align	2
ARM GAS  /tmp/cc9HRniu.s 			page 41


 2084              	.LC0:
 2085 0000 20465450 		.ascii	" FTP(%d)\000"
 2085      28256429 
 2085      00
 2086              		.section	.rodata._ZNK12FtpResponder12GetParameterEPKc.str1.4,"aMS",%progbits,1
 2087              		.align	2
 2088              	.LC9:
 2089 0000 00       		.ascii	"\000"
 2090              		.section	.rodata._ZTV12FtpResponder,"a",%progbits
 2091              		.align	2
 2092              		.set	.LANCHOR0,. + 0
 2093              		.type	_ZTV12FtpResponder, %object
 2094              		.size	_ZTV12FtpResponder, 36
 2095              	_ZTV12FtpResponder:
 2096 0000 00000000 		.word	0
 2097 0004 00000000 		.word	0
 2098 0008 00000000 		.word	_ZN12FtpResponder4SpinEv
 2099 000c 00000000 		.word	_ZN12FtpResponder6AcceptEP6Socketh
 2100 0010 00000000 		.word	_ZN12FtpResponder9TerminateEh
 2101 0014 00000000 		.word	_ZNK12FtpResponder11DiagnosticsE11MessageType
 2102 0018 00000000 		.word	_ZN12FtpResponder8SendDataEv
 2103 001c 00000000 		.word	_ZN12FtpResponder14ConnectionLostEv
 2104 0020 00000000 		.word	_ZN16NetworkResponder12CancelUploadEv
 2105              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
