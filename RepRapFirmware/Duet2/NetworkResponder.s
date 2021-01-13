ARM GAS  /tmp/cc1FuOqm.s 			page 1


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
  13              		.file	"NetworkResponder.cpp"
  14              		.section	.text._ZN16NetworkResponder8SendDataEv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN16NetworkResponder8SendDataEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN16NetworkResponder8SendDataEv, %function
  23              	_ZN16NetworkResponder8SendDataEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  27 0004 0546     		mov	r5, r0
  28 0006 00F11C06 		add	r6, r0, #28
  29 000a 8069     		ldr	r0, [r0, #24]
  30 000c E8B1     		cbz	r0, .L46
  31              	.L3:
  32 000e D0F81041 		ldr	r4, [r0, #272]
  33 0012 D0F80C21 		ldr	r2, [r0, #268]
  34 0016 00F10C01 		add	r1, r0, #12
  35 001a 2144     		add	r1, r1, r4
  36 001c 141B     		subs	r4, r2, r4
  37 001e 2246     		mov	r2, r4
  38 0020 0ED0     		beq	.L43
  39 0022 2869     		ldr	r0, [r5, #16]
  40 0024 0368     		ldr	r3, [r0]
  41 0026 5B6A     		ldr	r3, [r3, #36]
  42 0028 9847     		blx	r3
  43 002a 0028     		cmp	r0, #0
  44 002c 56D0     		beq	.L47
  45 002e AA69     		ldr	r2, [r5, #24]
  46 0030 D2F81031 		ldr	r3, [r2, #272]
  47 0034 8442     		cmp	r4, r0
  48 0036 0344     		add	r3, r3, r0
  49 0038 C2F81031 		str	r3, [r2, #272]
  50 003c 4CD8     		bhi	.L1
  51 003e A869     		ldr	r0, [r5, #24]
  52              	.L43:
  53 0040 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
  54 0044 A861     		str	r0, [r5, #24]
  55 0046 0028     		cmp	r0, #0
  56 0048 E1D1     		bne	.L3
  57              	.L46:
ARM GAS  /tmp/cc1FuOqm.s 			page 2


  58 004a 3046     		mov	r0, r6
  59 004c FFF7FEFF 		bl	_ZNV11OutputStack3PopEv
  60 0050 A861     		str	r0, [r5, #24]
  61 0052 0028     		cmp	r0, #0
  62 0054 DBD1     		bne	.L3
  63 0056 D5E90C23 		ldrd	r2, r3, [r5, #48]
  64 005a 0AB1     		cbz	r2, .L14
  65 005c 002B     		cmp	r3, #0
  66 005e 5BD0     		beq	.L48
  67              	.L14:
  68 0060 0027     		movs	r7, #0
  69              	.L13:
  70 0062 63B3     		cbz	r3, .L15
  71 0064 D3E90141 		ldrd	r4, r1, [r3, #4]
  72 0068 8C42     		cmp	r4, r1
  73 006a 11D0     		beq	.L49
  74              	.L16:
  75 006c 2869     		ldr	r0, [r5, #16]
  76 006e 0668     		ldr	r6, [r0]
  77 0070 641A     		subs	r4, r4, r1
  78 0072 0C33     		adds	r3, r3, #12
  79 0074 1944     		add	r1, r1, r3
  80 0076 2246     		mov	r2, r4
  81 0078 736A     		ldr	r3, [r6, #36]
  82 007a 9847     		blx	r3
  83 007c 0028     		cmp	r0, #0
  84 007e 3DD0     		beq	.L50
  85 0080 6A6B     		ldr	r2, [r5, #52]
  86 0082 9368     		ldr	r3, [r2, #8]
  87 0084 A042     		cmp	r0, r4
  88 0086 0344     		add	r3, r3, r0
  89 0088 9360     		str	r3, [r2, #8]
  90 008a 25D3     		bcc	.L1
  91 008c 6B6B     		ldr	r3, [r5, #52]
  92 008e E8E7     		b	.L13
  93              	.L49:
  94 0090 2A6B     		ldr	r2, [r5, #48]
  95 0092 1846     		mov	r0, r3
  96 0094 1146     		mov	r1, r2
  97 0096 6AB1     		cbz	r2, .L17
  98 0098 FFF7FEFF 		bl	_ZN13NetworkBuffer12ReadFromFileEP9FileStore
  99 009c B0F5006F 		cmp	r0, #2048
 100 00a0 03D0     		beq	.L18
 101 00a2 286B     		ldr	r0, [r5, #48]
 102 00a4 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 103 00a8 2F63     		str	r7, [r5, #48]
 104              	.L18:
 105 00aa 6B6B     		ldr	r3, [r5, #52]
 106 00ac D3E90141 		ldrd	r4, r1, [r3, #4]
 107 00b0 8C42     		cmp	r4, r1
 108 00b2 DBD1     		bne	.L16
 109              	.L17:
 110 00b4 1846     		mov	r0, r3
 111 00b6 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 112 00ba 0023     		movs	r3, #0
 113 00bc 6B63     		str	r3, [r5, #52]
 114              	.L15:
ARM GAS  /tmp/cc1FuOqm.s 			page 3


 115 00be 2869     		ldr	r0, [r5, #16]
 116 00c0 0368     		ldr	r3, [r0]
 117 00c2 9B6A     		ldr	r3, [r3, #40]
 118 00c4 9847     		blx	r3
 119 00c6 EC68     		ldr	r4, [r5, #12]
 120 00c8 2CB9     		cbnz	r4, .L22
 121 00ca 2869     		ldr	r0, [r5, #16]
 122 00cc 0368     		ldr	r3, [r0]
 123 00ce 5B68     		ldr	r3, [r3, #4]
 124 00d0 9847     		blx	r3
 125 00d2 2C61     		str	r4, [r5, #16]
 126 00d4 EC68     		ldr	r4, [r5, #12]
 127              	.L22:
 128 00d6 AC60     		str	r4, [r5, #8]
 129              	.L1:
 130 00d8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 131              	.L47:
 132 00dc 2869     		ldr	r0, [r5, #16]
 133 00de 0368     		ldr	r3, [r0]
 134 00e0 1B6A     		ldr	r3, [r3, #32]
 135 00e2 9847     		blx	r3
 136 00e4 0028     		cmp	r0, #0
 137 00e6 F7D1     		bne	.L1
 138 00e8 0F4B     		ldr	r3, .L51
 139 00ea 9B6C     		ldr	r3, [r3, #72]	@ unaligned
 140 00ec 5A07     		lsls	r2, r3, #29
 141 00ee 0FD4     		bmi	.L44
 142              	.L20:
 143 00f0 2B68     		ldr	r3, [r5]
 144 00f2 2846     		mov	r0, r5
 145 00f4 5B69     		ldr	r3, [r3, #20]
 146 00f6 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 147 00fa 1847     		bx	r3	@ indirect register sibling call
 148              	.L50:
 149 00fc 2869     		ldr	r0, [r5, #16]
 150 00fe 0368     		ldr	r3, [r0]
 151 0100 1B6A     		ldr	r3, [r3, #32]
 152 0102 9847     		blx	r3
 153 0104 0028     		cmp	r0, #0
 154 0106 E7D1     		bne	.L1
 155 0108 074B     		ldr	r3, .L51
 156 010a 9B6C     		ldr	r3, [r3, #72]
 157 010c 5B07     		lsls	r3, r3, #29
 158 010e EFD5     		bpl	.L20
 159              	.L44:
 160 0110 0648     		ldr	r0, .L51+4
 161 0112 FFF7FEFF 		bl	debugPrintf
 162 0116 EBE7     		b	.L20
 163              	.L48:
 164 0118 FFF7FEFF 		bl	_ZN13NetworkBuffer8AllocateEv
 165 011c 0346     		mov	r3, r0
 166 011e 6863     		str	r0, [r5, #52]
 167 0120 0028     		cmp	r0, #0
 168 0122 9DD1     		bne	.L14
 169 0124 D8E7     		b	.L1
 170              	.L52:
 171 0126 00BF     		.align	2
ARM GAS  /tmp/cc1FuOqm.s 			page 4


 172              	.L51:
 173 0128 00000000 		.word	reprap
 174 012c 00000000 		.word	.LC0
 175              		.size	_ZN16NetworkResponder8SendDataEv, .-_ZN16NetworkResponder8SendDataEv
 176              		.section	.text._ZN16NetworkResponder14ConnectionLostEv,"ax",%progbits
 177              		.align	1
 178              		.p2align 2,,3
 179              		.global	_ZN16NetworkResponder14ConnectionLostEv
 180              		.syntax unified
 181              		.thumb
 182              		.thumb_func
 183              		.fpu fpv4-sp-d16
 184              		.type	_ZN16NetworkResponder14ConnectionLostEv, %function
 185              	_ZN16NetworkResponder14ConnectionLostEv:
 186              		@ args = 0, pretend = 0, frame = 0
 187              		@ frame_needed = 0, uses_anonymous_args = 0
 188 0000 38B5     		push	{r3, r4, r5, lr}
 189 0002 0546     		mov	r5, r0
 190 0004 0446     		mov	r4, r0
 191 0006 55F8183B 		ldr	r3, [r5], #24
 192 000a 9B69     		ldr	r3, [r3, #24]
 193 000c 9847     		blx	r3
 194 000e 2846     		mov	r0, r5
 195 0010 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 196 0014 04F11C00 		add	r0, r4, #28
 197 0018 FFF7FEFF 		bl	_ZNV11OutputStack10ReleaseAllEv
 198 001c 206B     		ldr	r0, [r4, #48]
 199 001e 18B1     		cbz	r0, .L54
 200 0020 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 201 0024 0023     		movs	r3, #0
 202 0026 2363     		str	r3, [r4, #48]
 203              	.L54:
 204 0028 606B     		ldr	r0, [r4, #52]
 205 002a 18B1     		cbz	r0, .L55
 206 002c FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 207 0030 0023     		movs	r3, #0
 208 0032 6363     		str	r3, [r4, #52]
 209              	.L55:
 210 0034 2069     		ldr	r0, [r4, #16]
 211 0036 20B1     		cbz	r0, .L56
 212 0038 0368     		ldr	r3, [r0]
 213 003a 9B68     		ldr	r3, [r3, #8]
 214 003c 9847     		blx	r3
 215 003e 0023     		movs	r3, #0
 216 0040 2361     		str	r3, [r4, #16]
 217              	.L56:
 218 0042 0023     		movs	r3, #0
 219 0044 A360     		str	r3, [r4, #8]
 220 0046 38BD     		pop	{r3, r4, r5, pc}
 221              		.size	_ZN16NetworkResponder14ConnectionLostEv, .-_ZN16NetworkResponder14ConnectionLostEv
 222              		.section	.text._ZN16NetworkResponder12CancelUploadEv,"ax",%progbits
 223              		.align	1
 224              		.p2align 2,,3
 225              		.global	_ZN16NetworkResponder12CancelUploadEv
 226              		.syntax unified
 227              		.thumb
 228              		.thumb_func
ARM GAS  /tmp/cc1FuOqm.s 			page 5


 229              		.fpu fpv4-sp-d16
 230              		.type	_ZN16NetworkResponder12CancelUploadEv, %function
 231              	_ZN16NetworkResponder12CancelUploadEv:
 232              		@ args = 0, pretend = 0, frame = 0
 233              		@ frame_needed = 0, uses_anonymous_args = 0
 234 0000 836B     		ldr	r3, [r0, #56]
 235 0002 ABB1     		cbz	r3, .L75
 236 0004 10B5     		push	{r4, lr}
 237 0006 0446     		mov	r4, r0
 238 0008 1846     		mov	r0, r3
 239 000a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 240 000e 94F83C20 		ldrb	r2, [r4, #60]	@ zero_extendqisi2
 241 0012 0023     		movs	r3, #0
 242 0014 A363     		str	r3, [r4, #56]
 243 0016 02B9     		cbnz	r2, .L78
 244 0018 10BD     		pop	{r4, pc}
 245              	.L78:
 246 001a 064A     		ldr	r2, .L79
 247 001c 0649     		ldr	r1, .L79+4
 248 001e 1068     		ldr	r0, [r2]
 249 0020 04F13C02 		add	r2, r4, #60
 250 0024 D0F8B409 		ldr	r0, [r0, #2484]
 251 0028 BDE81040 		pop	{r4, lr}
 252 002c FFF7FEBF 		b	_ZN11MassStorage6DeleteEPKcS1_b
 253              	.L75:
 254 0030 7047     		bx	lr
 255              	.L80:
 256 0032 00BF     		.align	2
 257              	.L79:
 258 0034 00000000 		.word	reprap
 259 0038 00000000 		.word	.LC1
 260              		.size	_ZN16NetworkResponder12CancelUploadEv, .-_ZN16NetworkResponder12CancelUploadEv
 261              		.section	.text._ZN16NetworkResponderC2EPS_,"ax",%progbits
 262              		.align	1
 263              		.p2align 2,,3
 264              		.global	_ZN16NetworkResponderC2EPS_
 265              		.syntax unified
 266              		.thumb
 267              		.thumb_func
 268              		.fpu fpv4-sp-d16
 269              		.type	_ZN16NetworkResponderC2EPS_, %function
 270              	_ZN16NetworkResponderC2EPS_:
 271              		@ args = 0, pretend = 0, frame = 0
 272              		@ frame_needed = 0, uses_anonymous_args = 0
 273              		@ link register save eliminated.
 274 0000 0022     		movs	r2, #0
 275 0002 10B4     		push	{r4}
 276 0004 064C     		ldr	r4, .L83
 277 0006 0460     		str	r4, [r0]
 278 0008 4160     		str	r1, [r0, #4]
 279 000a 8260     		str	r2, [r0, #8]
 280 000c 0261     		str	r2, [r0, #16]
 281 000e C0E90622 		strd	r2, r2, [r0, #24]
 282 0012 C0E90C22 		strd	r2, r2, [r0, #48]
 283 0016 8263     		str	r2, [r0, #56]
 284 0018 5DF8044B 		ldr	r4, [sp], #4
 285 001c 7047     		bx	lr
ARM GAS  /tmp/cc1FuOqm.s 			page 6


 286              	.L84:
 287 001e 00BF     		.align	2
 288              	.L83:
 289 0020 08000000 		.word	.LANCHOR0+8
 290              		.size	_ZN16NetworkResponderC2EPS_, .-_ZN16NetworkResponderC2EPS_
 291              		.global	_ZN16NetworkResponderC1EPS_
 292              		.thumb_set _ZN16NetworkResponderC1EPS_,_ZN16NetworkResponderC2EPS_
 293              		.section	.text._ZN16NetworkResponder6CommitENS_14ResponderStateEb,"ax",%progbits
 294              		.align	1
 295              		.p2align 2,,3
 296              		.global	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 297              		.syntax unified
 298              		.thumb
 299              		.thumb_func
 300              		.fpu fpv4-sp-d16
 301              		.type	_ZN16NetworkResponder6CommitENS_14ResponderStateEb, %function
 302              	_ZN16NetworkResponder6CommitENS_14ResponderStateEb:
 303              		@ args = 0, pretend = 0, frame = 0
 304              		@ frame_needed = 0, uses_anonymous_args = 0
 305              		@ link register save eliminated.
 306 0000 0223     		movs	r3, #2
 307 0002 C0E90231 		strd	r3, r1, [r0, #8]
 308 0006 6AB1     		cbz	r2, .L85
 309 0008 074B     		ldr	r3, .L95
 310 000a 9B6C     		ldr	r3, [r3, #72]
 311 000c 5B07     		lsls	r3, r3, #29
 312 000e 09D5     		bpl	.L85
 313 0010 016B     		ldr	r1, [r0, #48]
 314 0012 064A     		ldr	r2, .L95+4
 315 0014 064B     		ldr	r3, .L95+8
 316 0016 0748     		ldr	r0, .L95+12
 317 0018 0029     		cmp	r1, #0
 318 001a 14BF     		ite	ne
 319 001c 1146     		movne	r1, r2
 320 001e 1946     		moveq	r1, r3
 321 0020 FFF7FEBF 		b	debugPrintf
 322              	.L85:
 323 0024 7047     		bx	lr
 324              	.L96:
 325 0026 00BF     		.align	2
 326              	.L95:
 327 0028 00000000 		.word	reprap
 328 002c 00000000 		.word	.LC2
 329 0030 04000000 		.word	.LC3
 330 0034 08000000 		.word	.LC4
 331              		.size	_ZN16NetworkResponder6CommitENS_14ResponderStateEb, .-_ZN16NetworkResponder6CommitENS_14Resp
 332              		.section	.text._ZN16NetworkResponder11StartUploadEP9FileStorePKc,"ax",%progbits
 333              		.align	1
 334              		.p2align 2,,3
 335              		.global	_ZN16NetworkResponder11StartUploadEP9FileStorePKc
 336              		.syntax unified
 337              		.thumb
 338              		.thumb_func
 339              		.fpu fpv4-sp-d16
 340              		.type	_ZN16NetworkResponder11StartUploadEP9FileStorePKc, %function
 341              	_ZN16NetworkResponder11StartUploadEP9FileStorePKc:
 342              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cc1FuOqm.s 			page 7


 343              		@ frame_needed = 0, uses_anonymous_args = 0
 344 0000 70B5     		push	{r4, r5, r6, lr}
 345 0002 0446     		mov	r4, r0
 346 0004 806B     		ldr	r0, [r0, #56]
 347 0006 0E46     		mov	r6, r1
 348 0008 1546     		mov	r5, r2
 349 000a 08B1     		cbz	r0, .L98
 350 000c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 351              	.L98:
 352 0010 7822     		movs	r2, #120
 353 0012 A663     		str	r6, [r4, #56]
 354 0014 2946     		mov	r1, r5
 355 0016 04F13C00 		add	r0, r4, #60
 356 001a FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 357 001e 0322     		movs	r2, #3
 358 0020 0023     		movs	r3, #0
 359 0022 A260     		str	r2, [r4, #8]
 360 0024 84F8C830 		strb	r3, [r4, #200]
 361 0028 70BD     		pop	{r4, r5, r6, pc}
 362              		.size	_ZN16NetworkResponder11StartUploadEP9FileStorePKc, .-_ZN16NetworkResponder11StartUploadEP9Fi
 363 002a 00BF     		.section	.text._ZN16NetworkResponder12FinishUploadEmx,"ax",%progbits
 364              		.align	1
 365              		.p2align 2,,3
 366              		.global	_ZN16NetworkResponder12FinishUploadEmx
 367              		.syntax unified
 368              		.thumb
 369              		.thumb_func
 370              		.fpu fpv4-sp-d16
 371              		.type	_ZN16NetworkResponder12FinishUploadEmx, %function
 372              	_ZN16NetworkResponder12FinishUploadEmx:
 373              		@ args = 0, pretend = 0, frame = 0
 374              		@ frame_needed = 0, uses_anonymous_args = 0
 375 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 376 0004 0446     		mov	r4, r0
 377 0006 82B0     		sub	sp, sp, #8
 378 0008 806B     		ldr	r0, [r0, #56]
 379 000a 0D46     		mov	r5, r1
 380 000c 1646     		mov	r6, r2
 381 000e 1F46     		mov	r7, r3
 382 0010 FFF7FEFF 		bl	_ZN9FileStore5FlushEv
 383 0014 D8B1     		cbz	r0, .L124
 384              	.L104:
 385 0016 A06B     		ldr	r0, [r4, #56]
 386 0018 9DB9     		cbnz	r5, .L125
 387              	.L105:
 388 001a 18B1     		cbz	r0, .L107
 389 001c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 390 0020 0023     		movs	r3, #0
 391 0022 A363     		str	r3, [r4, #56]
 392              	.L107:
 393 0024 94F83C30 		ldrb	r3, [r4, #60]	@ zero_extendqisi2
 394 0028 2BB1     		cbz	r3, .L108
 395 002a 94F8C810 		ldrb	r1, [r4, #200]	@ zero_extendqisi2
 396 002e 61BB     		cbnz	r1, .L126
 397 0030 56EA0703 		orrs	r3, r6, r7
 398 0034 39D1     		bne	.L127
 399              	.L108:
ARM GAS  /tmp/cc1FuOqm.s 			page 8


 400 0036 0023     		movs	r3, #0
 401 0038 84F83C30 		strb	r3, [r4, #60]
 402 003c 02B0     		add	sp, sp, #8
 403              		@ sp needed
 404 003e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 405              	.L125:
 406 0042 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 407 0046 8542     		cmp	r5, r0
 408 0048 0CD1     		bne	.L106
 409 004a A06B     		ldr	r0, [r4, #56]
 410 004c E5E7     		b	.L105
 411              	.L124:
 412 004e 1F4B     		ldr	r3, .L128
 413 0050 1F4A     		ldr	r2, .L128+4
 414 0052 1868     		ldr	r0, [r3]
 415 0054 0123     		movs	r3, #1
 416 0056 84F8C830 		strb	r3, [r4, #200]
 417 005a 40F2B511 		movw	r1, #437
 418 005e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 419 0062 D8E7     		b	.L104
 420              	.L106:
 421 0064 0122     		movs	r2, #1
 422 0066 194B     		ldr	r3, .L128
 423 0068 84F8C820 		strb	r2, [r4, #200]
 424 006c A06B     		ldr	r0, [r4, #56]
 425 006e D3F80080 		ldr	r8, [r3]
 426 0072 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 427 0076 0095     		str	r5, [sp]
 428 0078 0346     		mov	r3, r0
 429 007a 164A     		ldr	r2, .L128+8
 430 007c 4046     		mov	r0, r8
 431 007e 40F2B511 		movw	r1, #437
 432 0082 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 433 0086 A06B     		ldr	r0, [r4, #56]
 434 0088 C7E7     		b	.L105
 435              	.L126:
 436 008a 104B     		ldr	r3, .L128
 437 008c 1249     		ldr	r1, .L128+12
 438 008e 1A68     		ldr	r2, [r3]
 439 0090 0023     		movs	r3, #0
 440 0092 D2F8B409 		ldr	r0, [r2, #2484]
 441 0096 04F13C02 		add	r2, r4, #60
 442 009a FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 443 009e 0023     		movs	r3, #0
 444 00a0 84F83C30 		strb	r3, [r4, #60]
 445 00a4 02B0     		add	sp, sp, #8
 446              		@ sp needed
 447 00a6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 448              	.L127:
 449 00aa 084B     		ldr	r3, .L128
 450 00ac 1B68     		ldr	r3, [r3]
 451 00ae 04F13C02 		add	r2, r4, #60
 452 00b2 D3F8B409 		ldr	r0, [r3, #2484]
 453 00b6 CDE90067 		strd	r6, [sp]
 454 00ba FFF7FEFF 		bl	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_x
 455 00be 0023     		movs	r3, #0
 456 00c0 84F83C30 		strb	r3, [r4, #60]
ARM GAS  /tmp/cc1FuOqm.s 			page 9


 457 00c4 02B0     		add	sp, sp, #8
 458              		@ sp needed
 459 00c6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 460              	.L129:
 461 00ca 00BF     		.align	2
 462              	.L128:
 463 00cc 00000000 		.word	reprap
 464 00d0 00000000 		.word	.LC5
 465 00d4 38000000 		.word	.LC6
 466 00d8 00000000 		.word	.LC1
 467              		.size	_ZN16NetworkResponder12FinishUploadEmx, .-_ZN16NetworkResponder12FinishUploadEmx
 468              		.section	.text._ZNK16NetworkResponder11GetRemoteIPEv,"ax",%progbits
 469              		.align	1
 470              		.p2align 2,,3
 471              		.global	_ZNK16NetworkResponder11GetRemoteIPEv
 472              		.syntax unified
 473              		.thumb
 474              		.thumb_func
 475              		.fpu fpv4-sp-d16
 476              		.type	_ZNK16NetworkResponder11GetRemoteIPEv, %function
 477              	_ZNK16NetworkResponder11GetRemoteIPEv:
 478              		@ args = 0, pretend = 0, frame = 0
 479              		@ frame_needed = 0, uses_anonymous_args = 0
 480              		@ link register save eliminated.
 481 0000 0069     		ldr	r0, [r0, #16]
 482 0002 00B1     		cbz	r0, .L130
 483 0004 0069     		ldr	r0, [r0, #16]
 484              	.L130:
 485 0006 7047     		bx	lr
 486              		.size	_ZNK16NetworkResponder11GetRemoteIPEv, .-_ZNK16NetworkResponder11GetRemoteIPEv
 487              		.section	.text._ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci,"ax",%progbits
 488              		.align	1
 489              		.p2align 2,,3
 490              		.global	_ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci
 491              		.syntax unified
 492              		.thumb
 493              		.thumb_func
 494              		.fpu fpv4-sp-d16
 495              		.type	_ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci, %function
 496              	_ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci:
 497              		@ args = 0, pretend = 0, frame = 0
 498              		@ frame_needed = 0, uses_anonymous_args = 0
 499              		@ link register save eliminated.
 500 0000 034B     		ldr	r3, .L136
 501 0002 9B6C     		ldr	r3, [r3, #72]
 502 0004 5B07     		lsls	r3, r3, #29
 503 0006 00D4     		bmi	.L135
 504 0008 7047     		bx	lr
 505              	.L135:
 506 000a 0248     		ldr	r0, .L136+4
 507 000c FFF7FEBF 		b	debugPrintf
 508              	.L137:
 509              		.align	2
 510              	.L136:
 511 0010 00000000 		.word	reprap
 512 0014 00000000 		.word	.LC7
 513              		.size	_ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci, .-_ZN16NetworkResponder28ReportOut
ARM GAS  /tmp/cc1FuOqm.s 			page 10


 514              		.global	_ZTV16NetworkResponder
 515              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 516              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 517              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 518              	_ZL28cpu_irq_prev_interrupt_state:
 519 0000 00       		.space	1
 520              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 521              		.align	2
 522              		.type	_ZL32cpu_irq_critical_section_counter, %object
 523              		.size	_ZL32cpu_irq_critical_section_counter, 4
 524              	_ZL32cpu_irq_critical_section_counter:
 525 0000 00000000 		.space	4
 526              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 527              		.align	2
 528              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 529              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 530              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 531 0000 00000000 		.space	4
 532              		.section	.rodata._ZN16NetworkResponder12CancelUploadEv.str1.4,"aMS",%progbits,1
 533              		.align	2
 534              	.LC1:
 535 0000 303A00   		.ascii	"0:\000"
 536              		.section	.rodata._ZN16NetworkResponder12FinishUploadEmx.str1.4,"aMS",%progbits,1
 537              		.align	2
 538              	.LC5:
 539 0000 436F756C 		.ascii	"Could not flush remaining data while finishing uplo"
 539      64206E6F 
 539      7420666C 
 539      75736820 
 539      72656D61 
 540 0033 6164210A 		.ascii	"ad!\012\000"
 540      00
 541              	.LC6:
 542 0038 55706C6F 		.ascii	"Uploaded file size is different (%lu vs. expected %"
 542      61646564 
 542      2066696C 
 542      65207369 
 542      7A652069 
 543 006b 6C752062 		.ascii	"lu bytes)!\012\000"
 543      79746573 
 543      29210A00 
 544              		.section	.rodata._ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci.str1.4,"aMS",%progbits,1
 545              		.align	2
 546              	.LC7:
 547 0000 52616E20 		.ascii	"Ran out of output buffers at %s(%d)\012\000"
 547      6F757420 
 547      6F66206F 
 547      75747075 
 547      74206275 
 548              		.section	.rodata._ZN16NetworkResponder6CommitENS_14ResponderStateEb.str1.4,"aMS",%progbits,1
 549              		.align	2
 550              	.LC2:
 551 0000 79657300 		.ascii	"yes\000"
 552              	.LC3:
 553 0004 6E6F00   		.ascii	"no\000"
 554 0007 00       		.space	1
 555              	.LC4:
ARM GAS  /tmp/cc1FuOqm.s 			page 11


 556 0008 53656E64 		.ascii	"Sending reply, file = %s\012\000"
 556      696E6720 
 556      7265706C 
 556      792C2066 
 556      696C6520 
 557              		.section	.rodata._ZN16NetworkResponder8SendDataEv.str1.4,"aMS",%progbits,1
 558              		.align	2
 559              	.LC0:
 560 0000 43616E27 		.ascii	"Can't send anymore\012\000"
 560      74207365 
 560      6E642061 
 560      6E796D6F 
 560      72650A00 
 561              		.section	.rodata._ZTV16NetworkResponder,"a",%progbits
 562              		.align	2
 563              		.set	.LANCHOR0,. + 0
 564              		.type	_ZTV16NetworkResponder, %object
 565              		.size	_ZTV16NetworkResponder, 36
 566              	_ZTV16NetworkResponder:
 567 0000 00000000 		.word	0
 568 0004 00000000 		.word	0
 569 0008 00000000 		.word	__cxa_pure_virtual
 570 000c 00000000 		.word	__cxa_pure_virtual
 571 0010 00000000 		.word	__cxa_pure_virtual
 572 0014 00000000 		.word	__cxa_pure_virtual
 573 0018 00000000 		.word	_ZN16NetworkResponder8SendDataEv
 574 001c 00000000 		.word	_ZN16NetworkResponder14ConnectionLostEv
 575 0020 00000000 		.word	_ZN16NetworkResponder12CancelUploadEv
 576              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
