ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccamzDBl.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN16NetworkResponder8SendDataEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN16NetworkResponder8SendDataEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN16NetworkResponder8SendDataEv, %function
  24              	_ZN16NetworkResponder8SendDataEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  28 0004 0546     		mov	r5, r0
  29 0006 00F11C06 		add	r6, r0, #28
  30 000a 8069     		ldr	r0, [r0, #24]
  31 000c E8B1     		cbz	r0, .L46
  32              	.L3:
  33 000e D0F81041 		ldr	r4, [r0, #272]
  34 0012 D0F80C21 		ldr	r2, [r0, #268]
  35 0016 00F10C01 		add	r1, r0, #12
  36 001a 2144     		add	r1, r1, r4
  37 001c 141B     		subs	r4, r2, r4
  38 001e 2246     		mov	r2, r4
  39 0020 0ED0     		beq	.L43
  40 0022 2869     		ldr	r0, [r5, #16]
  41 0024 0368     		ldr	r3, [r0]
  42 0026 5B6A     		ldr	r3, [r3, #36]
  43 0028 9847     		blx	r3
  44 002a 0028     		cmp	r0, #0
  45 002c 56D0     		beq	.L47
  46 002e AA69     		ldr	r2, [r5, #24]
  47 0030 D2F81031 		ldr	r3, [r2, #272]
  48 0034 8442     		cmp	r4, r0
  49 0036 0344     		add	r3, r3, r0
  50 0038 C2F81031 		str	r3, [r2, #272]
  51 003c 4CD8     		bhi	.L1
  52 003e A869     		ldr	r0, [r5, #24]
  53              	.L43:
  54 0040 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
  55 0044 A861     		str	r0, [r5, #24]
  56 0046 0028     		cmp	r0, #0
  57 0048 E1D1     		bne	.L3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccamzDBl.s 			page 2


  58              	.L46:
  59 004a 3046     		mov	r0, r6
  60 004c FFF7FEFF 		bl	_ZNV11OutputStack3PopEv
  61 0050 A861     		str	r0, [r5, #24]
  62 0052 0028     		cmp	r0, #0
  63 0054 DBD1     		bne	.L3
  64 0056 D5E90C23 		ldrd	r2, r3, [r5, #48]
  65 005a 0AB1     		cbz	r2, .L14
  66 005c 002B     		cmp	r3, #0
  67 005e 5DD0     		beq	.L48
  68              	.L14:
  69 0060 0027     		movs	r7, #0
  70              	.L13:
  71 0062 63B3     		cbz	r3, .L15
  72 0064 D3E90141 		ldrd	r4, r1, [r3, #4]
  73 0068 8C42     		cmp	r4, r1
  74 006a 11D0     		beq	.L49
  75              	.L16:
  76 006c 2869     		ldr	r0, [r5, #16]
  77 006e 0668     		ldr	r6, [r0]
  78 0070 641A     		subs	r4, r4, r1
  79 0072 0C33     		adds	r3, r3, #12
  80 0074 1944     		add	r1, r1, r3
  81 0076 2246     		mov	r2, r4
  82 0078 736A     		ldr	r3, [r6, #36]
  83 007a 9847     		blx	r3
  84 007c 0028     		cmp	r0, #0
  85 007e 3ED0     		beq	.L50
  86 0080 6A6B     		ldr	r2, [r5, #52]
  87 0082 9368     		ldr	r3, [r2, #8]
  88 0084 A042     		cmp	r0, r4
  89 0086 0344     		add	r3, r3, r0
  90 0088 9360     		str	r3, [r2, #8]
  91 008a 25D3     		bcc	.L1
  92 008c 6B6B     		ldr	r3, [r5, #52]
  93 008e E8E7     		b	.L13
  94              	.L49:
  95 0090 2A6B     		ldr	r2, [r5, #48]
  96 0092 1846     		mov	r0, r3
  97 0094 1146     		mov	r1, r2
  98 0096 6AB1     		cbz	r2, .L17
  99 0098 FFF7FEFF 		bl	_ZN13NetworkBuffer12ReadFromFileEP9FileStore
 100 009c B0F5006F 		cmp	r0, #2048
 101 00a0 03D0     		beq	.L18
 102 00a2 286B     		ldr	r0, [r5, #48]
 103 00a4 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 104 00a8 2F63     		str	r7, [r5, #48]
 105              	.L18:
 106 00aa 6B6B     		ldr	r3, [r5, #52]
 107 00ac D3E90141 		ldrd	r4, r1, [r3, #4]
 108 00b0 8C42     		cmp	r4, r1
 109 00b2 DBD1     		bne	.L16
 110              	.L17:
 111 00b4 1846     		mov	r0, r3
 112 00b6 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 113 00ba 0023     		movs	r3, #0
 114 00bc 6B63     		str	r3, [r5, #52]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccamzDBl.s 			page 3


 115              	.L15:
 116 00be 2869     		ldr	r0, [r5, #16]
 117 00c0 0368     		ldr	r3, [r0]
 118 00c2 9B6A     		ldr	r3, [r3, #40]
 119 00c4 9847     		blx	r3
 120 00c6 EC68     		ldr	r4, [r5, #12]
 121 00c8 2CB9     		cbnz	r4, .L22
 122 00ca 2869     		ldr	r0, [r5, #16]
 123 00cc 0368     		ldr	r3, [r0]
 124 00ce 5B68     		ldr	r3, [r3, #4]
 125 00d0 9847     		blx	r3
 126 00d2 2C61     		str	r4, [r5, #16]
 127 00d4 EC68     		ldr	r4, [r5, #12]
 128              	.L22:
 129 00d6 AC60     		str	r4, [r5, #8]
 130              	.L1:
 131 00d8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 132              	.L47:
 133 00dc 2869     		ldr	r0, [r5, #16]
 134 00de 0368     		ldr	r3, [r0]
 135 00e0 1B6A     		ldr	r3, [r3, #32]
 136 00e2 9847     		blx	r3
 137 00e4 0028     		cmp	r0, #0
 138 00e6 F7D1     		bne	.L1
 139 00e8 104B     		ldr	r3, .L51
 140 00ea D3F80831 		ldr	r3, [r3, #264]	@ unaligned
 141 00ee 5A07     		lsls	r2, r3, #29
 142 00f0 10D4     		bmi	.L44
 143              	.L20:
 144 00f2 2B68     		ldr	r3, [r5]
 145 00f4 2846     		mov	r0, r5
 146 00f6 5B69     		ldr	r3, [r3, #20]
 147 00f8 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 148 00fc 1847     		bx	r3	@ indirect register sibling call
 149              	.L50:
 150 00fe 2869     		ldr	r0, [r5, #16]
 151 0100 0368     		ldr	r3, [r0]
 152 0102 1B6A     		ldr	r3, [r3, #32]
 153 0104 9847     		blx	r3
 154 0106 0028     		cmp	r0, #0
 155 0108 E6D1     		bne	.L1
 156 010a 084B     		ldr	r3, .L51
 157 010c D3F80831 		ldr	r3, [r3, #264]
 158 0110 5B07     		lsls	r3, r3, #29
 159 0112 EED5     		bpl	.L20
 160              	.L44:
 161 0114 0648     		ldr	r0, .L51+4
 162 0116 FFF7FEFF 		bl	debugPrintf
 163 011a EAE7     		b	.L20
 164              	.L48:
 165 011c FFF7FEFF 		bl	_ZN13NetworkBuffer8AllocateEv
 166 0120 0346     		mov	r3, r0
 167 0122 6863     		str	r0, [r5, #52]
 168 0124 0028     		cmp	r0, #0
 169 0126 9BD1     		bne	.L14
 170 0128 D6E7     		b	.L1
 171              	.L52:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccamzDBl.s 			page 4


 172 012a 00BF     		.align	2
 173              	.L51:
 174 012c 00000000 		.word	reprap
 175 0130 00000000 		.word	.LC0
 176              		.size	_ZN16NetworkResponder8SendDataEv, .-_ZN16NetworkResponder8SendDataEv
 177              		.section	.text._ZN16NetworkResponder14ConnectionLostEv,"ax",%progbits
 178              		.align	1
 179              		.p2align 2,,3
 180              		.global	_ZN16NetworkResponder14ConnectionLostEv
 181              		.syntax unified
 182              		.thumb
 183              		.thumb_func
 184              		.fpu fpv4-sp-d16
 185              		.type	_ZN16NetworkResponder14ConnectionLostEv, %function
 186              	_ZN16NetworkResponder14ConnectionLostEv:
 187              		@ args = 0, pretend = 0, frame = 0
 188              		@ frame_needed = 0, uses_anonymous_args = 0
 189 0000 38B5     		push	{r3, r4, r5, lr}
 190 0002 0546     		mov	r5, r0
 191 0004 0446     		mov	r4, r0
 192 0006 55F8183B 		ldr	r3, [r5], #24
 193 000a 9B69     		ldr	r3, [r3, #24]
 194 000c 9847     		blx	r3
 195 000e 2846     		mov	r0, r5
 196 0010 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 197 0014 04F11C00 		add	r0, r4, #28
 198 0018 FFF7FEFF 		bl	_ZNV11OutputStack10ReleaseAllEv
 199 001c 206B     		ldr	r0, [r4, #48]
 200 001e 18B1     		cbz	r0, .L54
 201 0020 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 202 0024 0023     		movs	r3, #0
 203 0026 2363     		str	r3, [r4, #48]
 204              	.L54:
 205 0028 606B     		ldr	r0, [r4, #52]
 206 002a 18B1     		cbz	r0, .L55
 207 002c FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 208 0030 0023     		movs	r3, #0
 209 0032 6363     		str	r3, [r4, #52]
 210              	.L55:
 211 0034 2069     		ldr	r0, [r4, #16]
 212 0036 20B1     		cbz	r0, .L56
 213 0038 0368     		ldr	r3, [r0]
 214 003a 9B68     		ldr	r3, [r3, #8]
 215 003c 9847     		blx	r3
 216 003e 0023     		movs	r3, #0
 217 0040 2361     		str	r3, [r4, #16]
 218              	.L56:
 219 0042 0023     		movs	r3, #0
 220 0044 A360     		str	r3, [r4, #8]
 221 0046 38BD     		pop	{r3, r4, r5, pc}
 222              		.size	_ZN16NetworkResponder14ConnectionLostEv, .-_ZN16NetworkResponder14ConnectionLostEv
 223              		.section	.text._ZN16NetworkResponder12CancelUploadEv,"ax",%progbits
 224              		.align	1
 225              		.p2align 2,,3
 226              		.global	_ZN16NetworkResponder12CancelUploadEv
 227              		.syntax unified
 228              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccamzDBl.s 			page 5


 229              		.thumb_func
 230              		.fpu fpv4-sp-d16
 231              		.type	_ZN16NetworkResponder12CancelUploadEv, %function
 232              	_ZN16NetworkResponder12CancelUploadEv:
 233              		@ args = 0, pretend = 0, frame = 0
 234              		@ frame_needed = 0, uses_anonymous_args = 0
 235 0000 836B     		ldr	r3, [r0, #56]
 236 0002 ABB1     		cbz	r3, .L75
 237 0004 10B5     		push	{r4, lr}
 238 0006 0446     		mov	r4, r0
 239 0008 1846     		mov	r0, r3
 240 000a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 241 000e 94F83C20 		ldrb	r2, [r4, #60]	@ zero_extendqisi2
 242 0012 0023     		movs	r3, #0
 243 0014 A363     		str	r3, [r4, #56]
 244 0016 02B9     		cbnz	r2, .L78
 245 0018 10BD     		pop	{r4, pc}
 246              	.L78:
 247 001a 064A     		ldr	r2, .L79
 248 001c 0649     		ldr	r1, .L79+4
 249 001e 5068     		ldr	r0, [r2, #4]
 250 0020 04F13C02 		add	r2, r4, #60
 251 0024 D0F8DC0B 		ldr	r0, [r0, #3036]
 252 0028 BDE81040 		pop	{r4, lr}
 253 002c FFF7FEBF 		b	_ZN11MassStorage6DeleteEPKcS1_b
 254              	.L75:
 255 0030 7047     		bx	lr
 256              	.L80:
 257 0032 00BF     		.align	2
 258              	.L79:
 259 0034 00000000 		.word	reprap
 260 0038 00000000 		.word	.LC1
 261              		.size	_ZN16NetworkResponder12CancelUploadEv, .-_ZN16NetworkResponder12CancelUploadEv
 262              		.section	.text._ZN16NetworkResponderC2EPS_,"ax",%progbits
 263              		.align	1
 264              		.p2align 2,,3
 265              		.global	_ZN16NetworkResponderC2EPS_
 266              		.syntax unified
 267              		.thumb
 268              		.thumb_func
 269              		.fpu fpv4-sp-d16
 270              		.type	_ZN16NetworkResponderC2EPS_, %function
 271              	_ZN16NetworkResponderC2EPS_:
 272              		@ args = 0, pretend = 0, frame = 0
 273              		@ frame_needed = 0, uses_anonymous_args = 0
 274              		@ link register save eliminated.
 275 0000 0022     		movs	r2, #0
 276 0002 10B4     		push	{r4}
 277 0004 064C     		ldr	r4, .L83
 278 0006 0460     		str	r4, [r0]
 279 0008 4160     		str	r1, [r0, #4]
 280 000a 8260     		str	r2, [r0, #8]
 281 000c 0261     		str	r2, [r0, #16]
 282 000e C0E90622 		strd	r2, r2, [r0, #24]
 283 0012 C0E90C22 		strd	r2, r2, [r0, #48]
 284 0016 8263     		str	r2, [r0, #56]
 285 0018 5DF8044B 		ldr	r4, [sp], #4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccamzDBl.s 			page 6


 286 001c 7047     		bx	lr
 287              	.L84:
 288 001e 00BF     		.align	2
 289              	.L83:
 290 0020 08000000 		.word	.LANCHOR0+8
 291              		.size	_ZN16NetworkResponderC2EPS_, .-_ZN16NetworkResponderC2EPS_
 292              		.global	_ZN16NetworkResponderC1EPS_
 293              		.thumb_set _ZN16NetworkResponderC1EPS_,_ZN16NetworkResponderC2EPS_
 294              		.section	.text._ZN16NetworkResponder6CommitENS_14ResponderStateEb,"ax",%progbits
 295              		.align	1
 296              		.p2align 2,,3
 297              		.global	_ZN16NetworkResponder6CommitENS_14ResponderStateEb
 298              		.syntax unified
 299              		.thumb
 300              		.thumb_func
 301              		.fpu fpv4-sp-d16
 302              		.type	_ZN16NetworkResponder6CommitENS_14ResponderStateEb, %function
 303              	_ZN16NetworkResponder6CommitENS_14ResponderStateEb:
 304              		@ args = 0, pretend = 0, frame = 0
 305              		@ frame_needed = 0, uses_anonymous_args = 0
 306              		@ link register save eliminated.
 307 0000 0223     		movs	r3, #2
 308 0002 C0E90231 		strd	r3, r1, [r0, #8]
 309 0006 72B1     		cbz	r2, .L85
 310 0008 074B     		ldr	r3, .L95
 311 000a D3F80831 		ldr	r3, [r3, #264]
 312 000e 5B07     		lsls	r3, r3, #29
 313 0010 09D5     		bpl	.L85
 314 0012 016B     		ldr	r1, [r0, #48]
 315 0014 054A     		ldr	r2, .L95+4
 316 0016 064B     		ldr	r3, .L95+8
 317 0018 0648     		ldr	r0, .L95+12
 318 001a 0029     		cmp	r1, #0
 319 001c 14BF     		ite	ne
 320 001e 1146     		movne	r1, r2
 321 0020 1946     		moveq	r1, r3
 322 0022 FFF7FEBF 		b	debugPrintf
 323              	.L85:
 324 0026 7047     		bx	lr
 325              	.L96:
 326              		.align	2
 327              	.L95:
 328 0028 00000000 		.word	reprap
 329 002c 00000000 		.word	.LC2
 330 0030 04000000 		.word	.LC3
 331 0034 08000000 		.word	.LC4
 332              		.size	_ZN16NetworkResponder6CommitENS_14ResponderStateEb, .-_ZN16NetworkResponder6CommitENS_14Resp
 333              		.section	.text._ZN16NetworkResponder11StartUploadEP9FileStorePKc,"ax",%progbits
 334              		.align	1
 335              		.p2align 2,,3
 336              		.global	_ZN16NetworkResponder11StartUploadEP9FileStorePKc
 337              		.syntax unified
 338              		.thumb
 339              		.thumb_func
 340              		.fpu fpv4-sp-d16
 341              		.type	_ZN16NetworkResponder11StartUploadEP9FileStorePKc, %function
 342              	_ZN16NetworkResponder11StartUploadEP9FileStorePKc:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccamzDBl.s 			page 7


 343              		@ args = 0, pretend = 0, frame = 0
 344              		@ frame_needed = 0, uses_anonymous_args = 0
 345 0000 70B5     		push	{r4, r5, r6, lr}
 346 0002 0446     		mov	r4, r0
 347 0004 806B     		ldr	r0, [r0, #56]
 348 0006 0E46     		mov	r6, r1
 349 0008 1546     		mov	r5, r2
 350 000a 08B1     		cbz	r0, .L98
 351 000c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 352              	.L98:
 353 0010 7822     		movs	r2, #120
 354 0012 A663     		str	r6, [r4, #56]
 355 0014 2946     		mov	r1, r5
 356 0016 04F13C00 		add	r0, r4, #60
 357 001a FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 358 001e 0322     		movs	r2, #3
 359 0020 0023     		movs	r3, #0
 360 0022 A260     		str	r2, [r4, #8]
 361 0024 84F8C830 		strb	r3, [r4, #200]
 362 0028 70BD     		pop	{r4, r5, r6, pc}
 363              		.size	_ZN16NetworkResponder11StartUploadEP9FileStorePKc, .-_ZN16NetworkResponder11StartUploadEP9Fi
 364 002a 00BF     		.section	.text._ZN16NetworkResponder12FinishUploadEmx,"ax",%progbits
 365              		.align	1
 366              		.p2align 2,,3
 367              		.global	_ZN16NetworkResponder12FinishUploadEmx
 368              		.syntax unified
 369              		.thumb
 370              		.thumb_func
 371              		.fpu fpv4-sp-d16
 372              		.type	_ZN16NetworkResponder12FinishUploadEmx, %function
 373              	_ZN16NetworkResponder12FinishUploadEmx:
 374              		@ args = 0, pretend = 0, frame = 0
 375              		@ frame_needed = 0, uses_anonymous_args = 0
 376 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 377 0004 0446     		mov	r4, r0
 378 0006 82B0     		sub	sp, sp, #8
 379 0008 806B     		ldr	r0, [r0, #56]
 380 000a 0D46     		mov	r5, r1
 381 000c 1646     		mov	r6, r2
 382 000e 1F46     		mov	r7, r3
 383 0010 FFF7FEFF 		bl	_ZN9FileStore5FlushEv
 384 0014 D8B1     		cbz	r0, .L124
 385              	.L104:
 386 0016 A06B     		ldr	r0, [r4, #56]
 387 0018 9DB9     		cbnz	r5, .L125
 388              	.L105:
 389 001a 18B1     		cbz	r0, .L107
 390 001c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 391 0020 0023     		movs	r3, #0
 392 0022 A363     		str	r3, [r4, #56]
 393              	.L107:
 394 0024 94F83C30 		ldrb	r3, [r4, #60]	@ zero_extendqisi2
 395 0028 2BB1     		cbz	r3, .L108
 396 002a 94F8C810 		ldrb	r1, [r4, #200]	@ zero_extendqisi2
 397 002e 61BB     		cbnz	r1, .L126
 398 0030 56EA0703 		orrs	r3, r6, r7
 399 0034 39D1     		bne	.L127
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccamzDBl.s 			page 8


 400              	.L108:
 401 0036 0023     		movs	r3, #0
 402 0038 84F83C30 		strb	r3, [r4, #60]
 403 003c 02B0     		add	sp, sp, #8
 404              		@ sp needed
 405 003e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 406              	.L125:
 407 0042 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 408 0046 8542     		cmp	r5, r0
 409 0048 0CD1     		bne	.L106
 410 004a A06B     		ldr	r0, [r4, #56]
 411 004c E5E7     		b	.L105
 412              	.L124:
 413 004e 1F4B     		ldr	r3, .L128
 414 0050 1F4A     		ldr	r2, .L128+4
 415 0052 5868     		ldr	r0, [r3, #4]
 416 0054 0123     		movs	r3, #1
 417 0056 84F8C830 		strb	r3, [r4, #200]
 418 005a 40F2B511 		movw	r1, #437
 419 005e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 420 0062 D8E7     		b	.L104
 421              	.L106:
 422 0064 0122     		movs	r2, #1
 423 0066 194B     		ldr	r3, .L128
 424 0068 84F8C820 		strb	r2, [r4, #200]
 425 006c A06B     		ldr	r0, [r4, #56]
 426 006e D3F80480 		ldr	r8, [r3, #4]
 427 0072 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 428 0076 0095     		str	r5, [sp]
 429 0078 0346     		mov	r3, r0
 430 007a 164A     		ldr	r2, .L128+8
 431 007c 4046     		mov	r0, r8
 432 007e 40F2B511 		movw	r1, #437
 433 0082 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 434 0086 A06B     		ldr	r0, [r4, #56]
 435 0088 C7E7     		b	.L105
 436              	.L126:
 437 008a 104B     		ldr	r3, .L128
 438 008c 1249     		ldr	r1, .L128+12
 439 008e 5A68     		ldr	r2, [r3, #4]
 440 0090 0023     		movs	r3, #0
 441 0092 D2F8DC0B 		ldr	r0, [r2, #3036]
 442 0096 04F13C02 		add	r2, r4, #60
 443 009a FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 444 009e 0023     		movs	r3, #0
 445 00a0 84F83C30 		strb	r3, [r4, #60]
 446 00a4 02B0     		add	sp, sp, #8
 447              		@ sp needed
 448 00a6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 449              	.L127:
 450 00aa 084B     		ldr	r3, .L128
 451 00ac 5B68     		ldr	r3, [r3, #4]
 452 00ae 04F13C02 		add	r2, r4, #60
 453 00b2 D3F8DC0B 		ldr	r0, [r3, #3036]
 454 00b6 CDE90067 		strd	r6, [sp]
 455 00ba FFF7FEFF 		bl	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_x
 456 00be 0023     		movs	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccamzDBl.s 			page 9


 457 00c0 84F83C30 		strb	r3, [r4, #60]
 458 00c4 02B0     		add	sp, sp, #8
 459              		@ sp needed
 460 00c6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 461              	.L129:
 462 00ca 00BF     		.align	2
 463              	.L128:
 464 00cc 00000000 		.word	reprap
 465 00d0 00000000 		.word	.LC5
 466 00d4 38000000 		.word	.LC6
 467 00d8 00000000 		.word	.LC1
 468              		.size	_ZN16NetworkResponder12FinishUploadEmx, .-_ZN16NetworkResponder12FinishUploadEmx
 469              		.section	.text._ZNK16NetworkResponder11GetRemoteIPEv,"ax",%progbits
 470              		.align	1
 471              		.p2align 2,,3
 472              		.global	_ZNK16NetworkResponder11GetRemoteIPEv
 473              		.syntax unified
 474              		.thumb
 475              		.thumb_func
 476              		.fpu fpv4-sp-d16
 477              		.type	_ZNK16NetworkResponder11GetRemoteIPEv, %function
 478              	_ZNK16NetworkResponder11GetRemoteIPEv:
 479              		@ args = 0, pretend = 0, frame = 0
 480              		@ frame_needed = 0, uses_anonymous_args = 0
 481              		@ link register save eliminated.
 482 0000 0069     		ldr	r0, [r0, #16]
 483 0002 00B1     		cbz	r0, .L132
 484 0004 0069     		ldr	r0, [r0, #16]
 485              	.L132:
 486 0006 7047     		bx	lr
 487              		.size	_ZNK16NetworkResponder11GetRemoteIPEv, .-_ZNK16NetworkResponder11GetRemoteIPEv
 488              		.section	.text._ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci,"ax",%progbits
 489              		.align	1
 490              		.p2align 2,,3
 491              		.global	_ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci
 492              		.syntax unified
 493              		.thumb
 494              		.thumb_func
 495              		.fpu fpv4-sp-d16
 496              		.type	_ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci, %function
 497              	_ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci:
 498              		@ args = 0, pretend = 0, frame = 0
 499              		@ frame_needed = 0, uses_anonymous_args = 0
 500              		@ link register save eliminated.
 501 0000 044B     		ldr	r3, .L136
 502 0002 D3F80831 		ldr	r3, [r3, #264]
 503 0006 5B07     		lsls	r3, r3, #29
 504 0008 00D4     		bmi	.L135
 505 000a 7047     		bx	lr
 506              	.L135:
 507 000c 0248     		ldr	r0, .L136+4
 508 000e FFF7FEBF 		b	debugPrintf
 509              	.L137:
 510 0012 00BF     		.align	2
 511              	.L136:
 512 0014 00000000 		.word	reprap
 513 0018 00000000 		.word	.LC7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccamzDBl.s 			page 10


 514              		.size	_ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci, .-_ZN16NetworkResponder28ReportOut
 515              		.section	.text.startup._GLOBAL__sub_I__ZN16NetworkResponderC2EPS_,"ax",%progbits
 516              		.align	1
 517              		.p2align 2,,3
 518              		.syntax unified
 519              		.thumb
 520              		.thumb_func
 521              		.fpu fpv4-sp-d16
 522              		.type	_GLOBAL__sub_I__ZN16NetworkResponderC2EPS_, %function
 523              	_GLOBAL__sub_I__ZN16NetworkResponderC2EPS_:
 524              		@ args = 0, pretend = 0, frame = 0
 525              		@ frame_needed = 0, uses_anonymous_args = 0
 526              		@ link register save eliminated.
 527 0000 0149     		ldr	r1, .L139
 528 0002 0248     		ldr	r0, .L139+4
 529 0004 FFF7FEBF 		b	_ZN9IPAddress5SetV4EPKh
 530              	.L140:
 531              		.align	2
 532              	.L139:
 533 0008 00000000 		.word	.LANCHOR1
 534 000c 00000000 		.word	.LANCHOR2
 535              		.size	_GLOBAL__sub_I__ZN16NetworkResponderC2EPS_, .-_GLOBAL__sub_I__ZN16NetworkResponderC2EPS_
 536              		.section	.init_array,"aw",%init_array
 537              		.align	2
 538 0000 00000000 		.word	_GLOBAL__sub_I__ZN16NetworkResponderC2EPS_(target1)
 539              		.global	_ZTV16NetworkResponder
 540              		.section	.bss._ZL14DefaultNetMask,"aw",%nobits
 541              		.align	2
 542              		.set	.LANCHOR2,. + 0
 543              		.type	_ZL14DefaultNetMask, %object
 544              		.size	_ZL14DefaultNetMask, 4
 545              	_ZL14DefaultNetMask:
 546 0000 00000000 		.space	4
 547              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 548              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 549              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 550              	_ZL28cpu_irq_prev_interrupt_state:
 551 0000 00       		.space	1
 552              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 553              		.align	2
 554              		.type	_ZL32cpu_irq_critical_section_counter, %object
 555              		.size	_ZL32cpu_irq_critical_section_counter, 4
 556              	_ZL32cpu_irq_critical_section_counter:
 557 0000 00000000 		.space	4
 558              		.section	.rodata.._146,"a",%progbits
 559              		.align	2
 560              		.set	.LANCHOR1,. + 0
 561              		.type	._146, %object
 562              		.size	._146, 4
 563              	._146:
 564 0000 FF       		.byte	-1
 565 0001 FF       		.byte	-1
 566 0002 FF       		.byte	-1
 567 0003 00       		.byte	0
 568              		.section	.rodata._ZN16NetworkResponder12CancelUploadEv.str1.4,"aMS",%progbits,1
 569              		.align	2
 570              	.LC1:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccamzDBl.s 			page 11


 571 0000 303A00   		.ascii	"0:\000"
 572              		.section	.rodata._ZN16NetworkResponder12FinishUploadEmx.str1.4,"aMS",%progbits,1
 573              		.align	2
 574              	.LC5:
 575 0000 436F756C 		.ascii	"Could not flush remaining data while finishing uplo"
 575      64206E6F 
 575      7420666C 
 575      75736820 
 575      72656D61 
 576 0033 6164210A 		.ascii	"ad!\012\000"
 576      00
 577              	.LC6:
 578 0038 55706C6F 		.ascii	"Uploaded file size is different (%lu vs. expected %"
 578      61646564 
 578      2066696C 
 578      65207369 
 578      7A652069 
 579 006b 6C752062 		.ascii	"lu bytes)!\012\000"
 579      79746573 
 579      29210A00 
 580              		.section	.rodata._ZN16NetworkResponder28ReportOutputBufferExhaustionEPKci.str1.4,"aMS",%progbits,1
 581              		.align	2
 582              	.LC7:
 583 0000 52616E20 		.ascii	"Ran out of output buffers at %s(%d)\012\000"
 583      6F757420 
 583      6F66206F 
 583      75747075 
 583      74206275 
 584              		.section	.rodata._ZN16NetworkResponder6CommitENS_14ResponderStateEb.str1.4,"aMS",%progbits,1
 585              		.align	2
 586              	.LC2:
 587 0000 79657300 		.ascii	"yes\000"
 588              	.LC3:
 589 0004 6E6F00   		.ascii	"no\000"
 590 0007 00       		.space	1
 591              	.LC4:
 592 0008 53656E64 		.ascii	"Sending reply, file = %s\012\000"
 592      696E6720 
 592      7265706C 
 592      792C2066 
 592      696C6520 
 593              		.section	.rodata._ZN16NetworkResponder8SendDataEv.str1.4,"aMS",%progbits,1
 594              		.align	2
 595              	.LC0:
 596 0000 43616E27 		.ascii	"Can't send anymore\012\000"
 596      74207365 
 596      6E642061 
 596      6E796D6F 
 596      72650A00 
 597              		.section	.rodata._ZTV16NetworkResponder,"a",%progbits
 598              		.align	2
 599              		.set	.LANCHOR0,. + 0
 600              		.type	_ZTV16NetworkResponder, %object
 601              		.size	_ZTV16NetworkResponder, 36
 602              	_ZTV16NetworkResponder:
 603 0000 00000000 		.word	0
 604 0004 00000000 		.word	0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccamzDBl.s 			page 12


 605 0008 00000000 		.word	__cxa_pure_virtual
 606 000c 00000000 		.word	__cxa_pure_virtual
 607 0010 00000000 		.word	__cxa_pure_virtual
 608 0014 00000000 		.word	__cxa_pure_virtual
 609 0018 00000000 		.word	_ZN16NetworkResponder8SendDataEv
 610 001c 00000000 		.word	_ZN16NetworkResponder14ConnectionLostEv
 611 0020 00000000 		.word	_ZN16NetworkResponder12CancelUploadEv
 612              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
