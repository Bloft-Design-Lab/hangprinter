ARM GAS  /tmp/ccotPdLg.s 			page 1


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
  11              		.file	"FileInfoParser.cpp"
  12              		.global	__aeabi_fcmpeq
  13              		.global	__aeabi_fcmplt
  14              		.global	__aeabi_fmul
  15              		.global	__aeabi_fcmple
  16              		.section	.text._ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu softvfp
  23              		.type	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6, %function
  24              	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6:
  25              		@ args = 0, pretend = 0, frame = 16
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  28 0004 4FF00009 		mov	r9, #0
  29 0008 161F     		subs	r6, r2, #4
  30 000a 85B0     		sub	sp, sp, #20
  31 000c C0F88090 		str	r9, [r0, #128]	@ float
  32 0010 6BD0     		beq	.L19
  33 0012 0027     		movs	r7, #0
  34 0014 8046     		mov	r8, r0
  35 0016 0D46     		mov	r5, r1
  36 0018 3B46     		mov	r3, r7
  37 001a 3846     		mov	r0, r7
  38 001c 3C46     		mov	r4, r7
  39 001e 4F4A     		ldr	r2, .L41
  40 0020 DFF83CB1 		ldr	fp, .L41+4
  41 0024 06E0     		b	.L18
  42              	.L35:
  43 0026 B1F10A00 		subs	r0, r1, #10
  44 002a 18BF     		it	ne
  45 002c 0120     		movne	r0, #1
  46 002e 0134     		adds	r4, r4, #1
  47              	.L4:
  48 0030 A642     		cmp	r6, r4
  49 0032 09D9     		bls	.L30
  50              	.L18:
  51 0034 295D     		ldrb	r1, [r5, r4]	@ zero_extendqisi2
  52 0036 3B29     		cmp	r1, #59
  53 0038 0AD0     		beq	.L34
  54 003a 0028     		cmp	r0, #0
  55 003c F3D1     		bne	.L35
  56 003e 4729     		cmp	r1, #71
  57 0040 09D0     		beq	.L6
ARM GAS  /tmp/ccotPdLg.s 			page 2


  58 0042 0134     		adds	r4, r4, #1
  59 0044 A642     		cmp	r6, r4
  60 0046 F5D8     		bhi	.L18
  61              	.L30:
  62 0048 3846     		mov	r0, r7
  63 004a 05B0     		add	sp, sp, #20
  64              		@ sp needed
  65 004c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
  66              	.L34:
  67 0050 0134     		adds	r4, r4, #1
  68 0052 0120     		movs	r0, #1
  69 0054 ECE7     		b	.L4
  70              	.L6:
  71 0056 3BB1     		cbz	r3, .L7
  72 0058 611C     		adds	r1, r4, #1
  73 005a 15F801E0 		ldrb	lr, [r5, r1]	@ zero_extendqisi2
  74 005e BEF1390F 		cmp	lr, #57
  75 0062 19D0     		beq	.L36
  76              	.L21:
  77 0064 0C46     		mov	r4, r1
  78 0066 E3E7     		b	.L4
  79              	.L7:
  80 0068 04F1010E 		add	lr, r4, #1
  81 006c 15F80E10 		ldrb	r1, [r5, lr]	@ zero_extendqisi2
  82 0070 3929     		cmp	r1, #57
  83 0072 05D0     		beq	.L37
  84 0074 3039     		subs	r1, r1, #48
  85 0076 0129     		cmp	r1, #1
  86 0078 1BD9     		bls	.L38
  87              	.L24:
  88 007a 7446     		mov	r4, lr
  89 007c 1846     		mov	r0, r3
  90 007e D7E7     		b	.L4
  91              	.L37:
  92 0080 2C44     		add	r4, r4, r5
  93 0082 A178     		ldrb	r1, [r4, #2]	@ zero_extendqisi2
  94 0084 3129     		cmp	r1, #49
  95 0086 F8D1     		bne	.L24
  96 0088 E178     		ldrb	r1, [r4, #3]	@ zero_extendqisi2
  97 008a 1846     		mov	r0, r3
  98 008c 2029     		cmp	r1, #32
  99 008e 7446     		mov	r4, lr
 100 0090 CCBF     		ite	gt
 101 0092 0023     		movgt	r3, #0
 102 0094 0123     		movle	r3, #1
 103 0096 CBE7     		b	.L4
 104              	.L36:
 105 0098 2C44     		add	r4, r4, r5
 106 009a 94F802E0 		ldrb	lr, [r4, #2]	@ zero_extendqisi2
 107 009e BEF1300F 		cmp	lr, #48
 108 00a2 DFD1     		bne	.L21
 109 00a4 E378     		ldrb	r3, [r4, #3]	@ zero_extendqisi2
 110 00a6 0C46     		mov	r4, r1
 111 00a8 202B     		cmp	r3, #32
 112 00aa D4BF     		ite	le
 113 00ac 0023     		movle	r3, #0
 114 00ae 0123     		movgt	r3, #1
ARM GAS  /tmp/ccotPdLg.s 			page 3


 115 00b0 BEE7     		b	.L4
 116              	.L38:
 117 00b2 2919     		adds	r1, r5, r4
 118 00b4 8978     		ldrb	r1, [r1, #2]	@ zero_extendqisi2
 119 00b6 2029     		cmp	r1, #32
 120 00b8 DFD1     		bne	.L24
 121 00ba E01C     		adds	r0, r4, #3
 122 00bc B042     		cmp	r0, r6
 123 00be 47D2     		bcs	.L39
 124 00c0 295C     		ldrb	r1, [r5, r0]	@ zero_extendqisi2
 125 00c2 05EB000E 		add	lr, r5, r0
 126 00c6 5A29     		cmp	r1, #90
 127 00c8 11D0     		beq	.L25
 128 00ca 3B29     		cmp	r1, #59
 129 00cc 07D1     		bne	.L16
 130 00ce 42E0     		b	.L40
 131              	.L17:
 132 00d0 1EF8011F 		ldrb	r1, [lr, #1]!	@ zero_extendqisi2
 133 00d4 5A29     		cmp	r1, #90
 134 00d6 0BD0     		beq	.L10
 135 00d8 3B29     		cmp	r1, #59
 136 00da 03D0     		beq	.L32
 137 00dc 2046     		mov	r0, r4
 138              	.L16:
 139 00de 441C     		adds	r4, r0, #1
 140 00e0 B442     		cmp	r4, r6
 141 00e2 F5D3     		bcc	.L17
 142              	.L32:
 143 00e4 841C     		adds	r4, r0, #2
 144 00e6 0020     		movs	r0, #0
 145 00e8 A2E7     		b	.L4
 146              	.L19:
 147 00ea 3746     		mov	r7, r6
 148 00ec ACE7     		b	.L30
 149              	.L25:
 150 00ee 0446     		mov	r4, r0
 151              	.L10:
 152 00f0 0134     		adds	r4, r4, #1
 153 00f2 0021     		movs	r1, #0
 154 00f4 2819     		adds	r0, r5, r4
 155 00f6 0292     		str	r2, [sp, #8]
 156 00f8 0393     		str	r3, [sp, #12]
 157 00fa FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 158 00fe D8F88030 		ldr	r3, [r8, #128]	@ float
 159 0102 8246     		mov	r10, r0
 160 0104 4946     		mov	r1, r9
 161 0106 1846     		mov	r0, r3
 162 0108 0193     		str	r3, [sp, #4]	@ float
 163 010a FFF7FEFF 		bl	__aeabi_fcmpeq
 164 010e 029A     		ldr	r2, [sp, #8]
 165 0110 039B     		ldr	r3, [sp, #12]
 166 0112 38B9     		cbnz	r0, .L13
 167 0114 0199     		ldr	r1, [sp, #4]	@ float
 168 0116 5046     		mov	r0, r10
 169 0118 FFF7FEFF 		bl	__aeabi_fcmplt
 170 011c 029A     		ldr	r2, [sp, #8]
 171 011e 039B     		ldr	r3, [sp, #12]
ARM GAS  /tmp/ccotPdLg.s 			page 4


 172 0120 0028     		cmp	r0, #0
 173 0122 85D0     		beq	.L4
 174              	.L13:
 175 0124 1068     		ldr	r0, [r2]	@ unaligned
 176 0126 5946     		mov	r1, fp
 177 0128 D0F88005 		ldr	r0, [r0, #1408]	@ float
 178 012c 0293     		str	r3, [sp, #8]
 179 012e 0192     		str	r2, [sp, #4]
 180 0130 FFF7FEFF 		bl	__aeabi_fmul
 181 0134 0146     		mov	r1, r0
 182 0136 5046     		mov	r0, r10
 183 0138 FFF7FEFF 		bl	__aeabi_fcmple
 184 013c 019A     		ldr	r2, [sp, #4]
 185 013e 029B     		ldr	r3, [sp, #8]
 186 0140 0028     		cmp	r0, #0
 187 0142 3FF475AF 		beq	.L4
 188 0146 C8F880A0 		str	r10, [r8, #128]	@ float
 189 014a 0020     		movs	r0, #0
 190 014c 0127     		movs	r7, #1
 191 014e 6FE7     		b	.L4
 192              	.L39:
 193 0150 0434     		adds	r4, r4, #4
 194 0152 1846     		mov	r0, r3
 195 0154 6CE7     		b	.L4
 196              	.L40:
 197 0156 0434     		adds	r4, r4, #4
 198 0158 0020     		movs	r0, #0
 199 015a 69E7     		b	.L4
 200              	.L42:
 201              		.align	2
 202              	.L41:
 203 015c 00000000 		.word	reprap
 204 0160 00004040 		.word	1077936128
 205              		.size	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6, .-_ZN14FileInfoParser20FindFirstLayer
 206              		.section	.text._ZN14FileInfoParser15FindLayerHeightEPKcj.part.7,"ax",%progbits
 207              		.align	1
 208              		.p2align 2,,3
 209              		.syntax unified
 210              		.thumb
 211              		.thumb_func
 212              		.fpu softvfp
 213              		.type	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7, %function
 214              	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7:
 215              		@ args = 0, pretend = 0, frame = 8
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 218 0004 8246     		mov	r10, r0
 219 0006 1D4F     		ldr	r7, .L62
 220 0008 1D4E     		ldr	r6, .L62+4
 221 000a 1E4D     		ldr	r5, .L62+8
 222 000c 83B0     		sub	sp, sp, #12
 223 000e 01F10108 		add	r8, r1, #1
 224 0012 07F11009 		add	r9, r7, #16
 225              	.L52:
 226 0016 4446     		mov	r4, r8
 227              	.L44:
 228 0018 2046     		mov	r0, r4
ARM GAS  /tmp/ccotPdLg.s 			page 5


 229 001a 3146     		mov	r1, r6
 230 001c FFF7FEFF 		bl	strstr
 231 0020 0446     		mov	r4, r0
 232 0022 18B3     		cbz	r0, .L45
 233 0024 3046     		mov	r0, r6
 234 0026 FFF7FEFF 		bl	strlen
 235 002a 14F8013C 		ldrb	r3, [r4, #-1]	@ zero_extendqisi2
 236 002e 0444     		add	r4, r4, r0
 237 0030 202B     		cmp	r3, #32
 238 0032 03D0     		beq	.L46
 239 0034 3B2B     		cmp	r3, #59
 240 0036 01D0     		beq	.L46
 241 0038 092B     		cmp	r3, #9
 242 003a EDD1     		bne	.L44
 243              	.L46:
 244 003c A346     		mov	fp, r4
 245              	.L48:
 246 003e 9BF80010 		ldrb	r1, [fp]	@ zero_extendqisi2
 247 0042 2846     		mov	r0, r5
 248 0044 5C46     		mov	r4, fp
 249 0046 0BF1010B 		add	fp, fp, #1
 250 004a FFF7FEFF 		bl	strchr
 251 004e 0028     		cmp	r0, #0
 252 0050 F5D1     		bne	.L48
 253 0052 01A9     		add	r1, sp, #4
 254 0054 2046     		mov	r0, r4
 255 0056 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 256 005a 019B     		ldr	r3, [sp, #4]
 257 005c 9C42     		cmp	r4, r3
 258 005e DBD0     		beq	.L44
 259 0060 CAF87C00 		str	r0, [r10, #124]	@ float
 260 0064 0120     		movs	r0, #1
 261 0066 03B0     		add	sp, sp, #12
 262              		@ sp needed
 263 0068 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 264              	.L45:
 265 006c 4F45     		cmp	r7, r9
 266 006e 02D0     		beq	.L53
 267 0070 57F8046B 		ldr	r6, [r7], #4
 268 0074 CFE7     		b	.L52
 269              	.L53:
 270 0076 03B0     		add	sp, sp, #12
 271              		@ sp needed
 272 0078 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 273              	.L63:
 274              		.align	2
 275              	.L62:
 276 007c 04000000 		.word	.LANCHOR0+4
 277 0080 00000000 		.word	.LC0
 278 0084 10000000 		.word	.LC1
 279              		.size	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7, .-_ZN14FileInfoParser15FindLayerHeightEPKc
 280              		.section	.text._ZN13GCodeFileInfo4InitEv,"ax",%progbits
 281              		.align	1
 282              		.p2align 2,,3
 283              		.global	_ZN13GCodeFileInfo4InitEv
 284              		.syntax unified
 285              		.thumb
ARM GAS  /tmp/ccotPdLg.s 			page 6


 286              		.thumb_func
 287              		.fpu softvfp
 288              		.type	_ZN13GCodeFileInfo4InitEv, %function
 289              	_ZN13GCodeFileInfo4InitEv:
 290              		@ args = 0, pretend = 0, frame = 0
 291              		@ frame_needed = 0, uses_anonymous_args = 0
 292              		@ link register save eliminated.
 293 0000 0023     		movs	r3, #0
 294 0002 0022     		movs	r2, #0
 295 0004 0121     		movs	r1, #1
 296 0006 80F83820 		strb	r2, [r0, #56]
 297 000a 80F83910 		strb	r1, [r0, #57]
 298 000e 0263     		str	r2, [r0, #48]
 299 0010 C262     		str	r2, [r0, #44]
 300 0012 4263     		str	r2, [r0, #52]
 301 0014 80F83A20 		strb	r2, [r0, #58]
 302 0018 C360     		str	r3, [r0, #12]	@ float
 303 001a 0361     		str	r3, [r0, #16]	@ float
 304 001c 8360     		str	r3, [r0, #8]	@ float
 305 001e 4361     		str	r3, [r0, #20]	@ float
 306 0020 8361     		str	r3, [r0, #24]	@ float
 307 0022 C361     		str	r3, [r0, #28]	@ float
 308 0024 0362     		str	r3, [r0, #32]	@ float
 309 0026 4362     		str	r3, [r0, #36]	@ float
 310 0028 8362     		str	r3, [r0, #40]	@ float
 311 002a 7047     		bx	lr
 312              		.size	_ZN13GCodeFileInfo4InitEv, .-_ZN13GCodeFileInfo4InitEv
 313              		.section	.text._ZN14FileInfoParserC2Ev,"ax",%progbits
 314              		.align	1
 315              		.p2align 2,,3
 316              		.global	_ZN14FileInfoParserC2Ev
 317              		.syntax unified
 318              		.thumb
 319              		.thumb_func
 320              		.fpu softvfp
 321              		.type	_ZN14FileInfoParserC2Ev, %function
 322              	_ZN14FileInfoParserC2Ev:
 323              		@ args = 0, pretend = 0, frame = 0
 324              		@ frame_needed = 0, uses_anonymous_args = 0
 325 0000 0023     		movs	r3, #0
 326 0002 0022     		movs	r2, #0
 327 0004 0121     		movs	r1, #1
 328 0006 10B5     		push	{r4, lr}
 329 0008 0446     		mov	r4, r0
 330 000a 80F8AD10 		strb	r1, [r0, #173]
 331 000e 0360     		str	r3, [r0]
 332 0010 0371     		strb	r3, [r0, #4]
 333 0012 4371     		strb	r3, [r0, #5]
 334 0014 C366     		str	r3, [r0, #108]
 335 0016 80F8AE30 		strb	r3, [r0, #174]
 336 001a C0F8E830 		str	r3, [r0, #232]
 337 001e C0F8EC30 		str	r3, [r0, #236]
 338 0022 C0F8F030 		str	r3, [r0, #240]
 339 0026 C0F8F430 		str	r3, [r0, #244]
 340 002a 80F8AC30 		strb	r3, [r0, #172]
 341 002e C0F8A430 		str	r3, [r0, #164]
 342 0032 C0F8A030 		str	r3, [r0, #160]
ARM GAS  /tmp/ccotPdLg.s 			page 7


 343 0036 C0F8A830 		str	r3, [r0, #168]
 344 003a C0F88020 		str	r2, [r0, #128]	@ float
 345 003e C0F88420 		str	r2, [r0, #132]	@ float
 346 0042 C267     		str	r2, [r0, #124]	@ float
 347 0044 C0F88820 		str	r2, [r0, #136]	@ float
 348 0048 C0F88C20 		str	r2, [r0, #140]	@ float
 349 004c C0F89020 		str	r2, [r0, #144]	@ float
 350 0050 C0F89420 		str	r2, [r0, #148]	@ float
 351 0054 C0F89820 		str	r2, [r0, #152]	@ float
 352 0058 C0F89C20 		str	r2, [r0, #156]	@ float
 353 005c 0249     		ldr	r1, .L67
 354 005e FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 355 0062 2046     		mov	r0, r4
 356 0064 10BD     		pop	{r4, pc}
 357              	.L68:
 358 0066 00BF     		.align	2
 359              	.L67:
 360 0068 00000000 		.word	.LC2
 361              		.size	_ZN14FileInfoParserC2Ev, .-_ZN14FileInfoParserC2Ev
 362              		.global	_ZN14FileInfoParserC1Ev
 363              		.thumb_set _ZN14FileInfoParserC1Ev,_ZN14FileInfoParserC2Ev
 364              		.section	.text._ZN14FileInfoParser20FindFirstLayerHeightEPKcj,"ax",%progbits
 365              		.align	1
 366              		.p2align 2,,3
 367              		.global	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj
 368              		.syntax unified
 369              		.thumb
 370              		.thumb_func
 371              		.fpu softvfp
 372              		.type	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj, %function
 373              	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj:
 374              		@ args = 0, pretend = 0, frame = 0
 375              		@ frame_needed = 0, uses_anonymous_args = 0
 376              		@ link register save eliminated.
 377 0000 032A     		cmp	r2, #3
 378 0002 01D9     		bls	.L70
 379 0004 FFF7FEBF 		b	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6
 380              	.L70:
 381 0008 0020     		movs	r0, #0
 382 000a 7047     		bx	lr
 383              		.size	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj, .-_ZN14FileInfoParser20FindFirstLayerHeightE
 384              		.section	.text._ZN14FileInfoParser10FindHeightEPKcj,"ax",%progbits
 385              		.align	1
 386              		.p2align 2,,3
 387              		.global	_ZN14FileInfoParser10FindHeightEPKcj
 388              		.syntax unified
 389              		.thumb
 390              		.thumb_func
 391              		.fpu softvfp
 392              		.type	_ZN14FileInfoParser10FindHeightEPKcj, %function
 393              	_ZN14FileInfoParser10FindHeightEPKcj:
 394              		@ args = 0, pretend = 0, frame = 8
 395              		@ frame_needed = 0, uses_anonymous_args = 0
 396 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 397 0004 4FF00009 		mov	r9, #0
 398 0008 8046     		mov	r8, r0
 399 000a 8A46     		mov	r10, r1
ARM GAS  /tmp/ccotPdLg.s 			page 8


 400 000c 1446     		mov	r4, r2
 401 000e 4F46     		mov	r7, r9
 402 0010 6F4E     		ldr	r6, .L155
 403 0012 83B0     		sub	sp, sp, #12
 404              	.L72:
 405 0014 052C     		cmp	r4, #5
 406 0016 0AD9     		bls	.L75
 407              	.L73:
 408 0018 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 409 001c 0D2B     		cmp	r3, #13
 410 001e 06D0     		beq	.L75
 411 0020 0A2B     		cmp	r3, #10
 412 0022 04D0     		beq	.L75
 413 0024 013C     		subs	r4, r4, #1
 414 0026 052C     		cmp	r4, #5
 415 0028 0AF1010A 		add	r10, r10, #1
 416 002c F4D8     		bhi	.L73
 417              	.L75:
 418 002e 694A     		ldr	r2, .L155+4
 419              	.L95:
 420 0030 5146     		mov	r1, r10
 421              	.L74:
 422 0032 601E     		subs	r0, r4, #1
 423 0034 0428     		cmp	r0, #4
 424 0036 0D46     		mov	r5, r1
 425 0038 32D9     		bls	.L105
 426 003a 11F801EF 		ldrb	lr, [r1, #1]!	@ zero_extendqisi2
 427 003e AEF10903 		sub	r3, lr, #9
 428 0042 DBB2     		uxtb	r3, r3
 429 0044 172B     		cmp	r3, #23
 430 0046 26FA03FC 		lsr	ip, r6, r3
 431 004a 0FD9     		bls	.L149
 432 004c BEF1470F 		cmp	lr, #71
 433 0050 05F1020A 		add	r10, r5, #2
 434 0054 A4F10200 		sub	r0, r4, #2
 435 0058 40F0B880 		bne	.L150
 436 005c AB78     		ldrb	r3, [r5, #2]	@ zero_extendqisi2
 437 005e B9F1000F 		cmp	r9, #0
 438 0062 33D0     		beq	.L80
 439 0064 392B     		cmp	r3, #57
 440 0066 21D0     		beq	.L151
 441              	.L104:
 442 0068 0446     		mov	r4, r0
 443 006a D3E7     		b	.L72
 444              	.L149:
 445 006c 1CF0010F 		tst	ip, #1
 446 0070 1AD1     		bne	.L152
 447 0072 023C     		subs	r4, r4, #2
 448 0074 05F1020A 		add	r10, r5, #2
 449              	.L98:
 450 0078 BEF13B0F 		cmp	lr, #59
 451 007c CAD1     		bne	.L72
 452 007e 1F2C     		cmp	r4, #31
 453 0080 C8D9     		bls	.L72
 454 0082 5549     		ldr	r1, .L155+8
 455 0084 5046     		mov	r0, r10
 456 0086 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
ARM GAS  /tmp/ccotPdLg.s 			page 9


 457 008a 8346     		mov	fp, r0
 458 008c 0028     		cmp	r0, #0
 459 008e C1D0     		beq	.L72
 460 0090 05F11600 		add	r0, r5, #22
 461 0094 0021     		movs	r1, #0
 462 0096 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 463 009a 5F46     		mov	r7, fp
 464 009c C8F88400 		str	r0, [r8, #132]	@ float
 465              	.L105:
 466 00a0 3846     		mov	r0, r7
 467 00a2 03B0     		add	sp, sp, #12
 468              		@ sp needed
 469 00a4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 470              	.L152:
 471 00a8 0446     		mov	r4, r0
 472 00aa C2E7     		b	.L74
 473              	.L151:
 474 00ac EB78     		ldrb	r3, [r5, #3]	@ zero_extendqisi2
 475 00ae 302B     		cmp	r3, #48
 476 00b0 DAD1     		bne	.L104
 477 00b2 95F80490 		ldrb	r9, [r5, #4]	@ zero_extendqisi2
 478 00b6 0446     		mov	r4, r0
 479 00b8 A9F13009 		sub	r9, r9, #48
 480 00bc B9F1090F 		cmp	r9, #9
 481 00c0 8CBF     		ite	hi
 482 00c2 4FF00009 		movhi	r9, #0
 483 00c6 4FF00109 		movls	r9, #1
 484 00ca A3E7     		b	.L72
 485              	.L80:
 486 00cc A3F13001 		sub	r1, r3, #48
 487 00d0 0129     		cmp	r1, #1
 488 00d2 11D9     		bls	.L153
 489 00d4 392B     		cmp	r3, #57
 490 00d6 C7D1     		bne	.L104
 491 00d8 EB78     		ldrb	r3, [r5, #3]	@ zero_extendqisi2
 492 00da 312B     		cmp	r3, #49
 493 00dc C4D1     		bne	.L104
 494 00de 95F80490 		ldrb	r9, [r5, #4]	@ zero_extendqisi2
 495 00e2 0446     		mov	r4, r0
 496 00e4 A9F13009 		sub	r9, r9, #48
 497 00e8 B9F1090F 		cmp	r9, #9
 498 00ec 94BF     		ite	ls
 499 00ee 4FF00009 		movls	r9, #0
 500 00f2 4FF00109 		movhi	r9, #1
 501 00f6 8DE7     		b	.L72
 502              	.L153:
 503 00f8 EB78     		ldrb	r3, [r5, #3]	@ zero_extendqisi2
 504 00fa 033C     		subs	r4, r4, #3
 505 00fc A3F13001 		sub	r1, r3, #48
 506 0100 0929     		cmp	r1, #9
 507 0102 05F1030A 		add	r10, r5, #3
 508 0106 85D9     		bls	.L72
 509 0108 032C     		cmp	r4, #3
 510 010a 91D0     		beq	.L95
 511 010c 5A2B     		cmp	r3, #90
 512 010e 1CD0     		beq	.L84
 513 0110 3B2B     		cmp	r3, #59
ARM GAS  /tmp/ccotPdLg.s 			page 10


 514 0112 3FF47FAF 		beq	.L72
 515 0116 0A2B     		cmp	r3, #10
 516 0118 3FF47CAF 		beq	.L72
 517 011c 0D2B     		cmp	r3, #13
 518 011e 3FF479AF 		beq	.L72
 519 0122 0435     		adds	r5, r5, #4
 520 0124 0CE0     		b	.L93
 521              	.L94:
 522 0126 15F8013B 		ldrb	r3, [r5], #1	@ zero_extendqisi2
 523 012a 5A2B     		cmp	r3, #90
 524 012c 0DD0     		beq	.L84
 525 012e 3B2B     		cmp	r3, #59
 526 0130 3FF470AF 		beq	.L72
 527 0134 0A2B     		cmp	r3, #10
 528 0136 3FF46DAF 		beq	.L72
 529 013a 0D2B     		cmp	r3, #13
 530 013c 3FF46AAF 		beq	.L72
 531              	.L93:
 532 0140 013C     		subs	r4, r4, #1
 533 0142 032C     		cmp	r4, #3
 534 0144 AA46     		mov	r10, r5
 535 0146 EED1     		bne	.L94
 536 0148 72E7     		b	.L95
 537              	.L84:
 538 014a 0AF1010B 		add	fp, r10, #1
 539 014e 5D46     		mov	r5, fp
 540 0150 09E0     		b	.L87
 541              	.L154:
 542 0152 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 543 0156 0A2B     		cmp	r3, #10
 544 0158 1CD0     		beq	.L88
 545 015a 0D2B     		cmp	r3, #13
 546 015c 1AD0     		beq	.L88
 547 015e 3B2B     		cmp	r3, #59
 548 0160 18D0     		beq	.L88
 549 0162 0BF1010B 		add	fp, fp, #1
 550              	.L87:
 551 0166 013C     		subs	r4, r4, #1
 552 0168 022C     		cmp	r4, #2
 553 016a DA46     		mov	r10, fp
 554 016c F1D1     		bne	.L154
 555 016e 5846     		mov	r0, fp
 556 0170 1146     		mov	r1, r2
 557 0172 0192     		str	r2, [sp, #4]
 558 0174 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 559 0178 8346     		mov	fp, r0
 560 017a 0028     		cmp	r0, #0
 561 017c 7FF457AF 		bne	.L75
 562 0180 2846     		mov	r0, r5
 563 0182 5946     		mov	r1, fp
 564 0184 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 565 0188 D946     		mov	r9, fp
 566 018a C8F88400 		str	r0, [r8, #132]	@ float
 567 018e 0127     		movs	r7, #1
 568 0190 019A     		ldr	r2, [sp, #4]
 569 0192 4DE7     		b	.L95
 570              	.L88:
ARM GAS  /tmp/ccotPdLg.s 			page 11


 571 0194 0F49     		ldr	r1, .L155+4
 572 0196 5846     		mov	r0, fp
 573 0198 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 574 019c 0190     		str	r0, [sp, #4]
 575 019e 0028     		cmp	r0, #0
 576 01a0 7FF438AF 		bne	.L72
 577 01a4 022C     		cmp	r4, #2
 578 01a6 07D9     		bls	.L92
 579 01a8 5846     		mov	r0, fp
 580 01aa 0C49     		ldr	r1, .L155+12
 581 01ac FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 582 01b0 019B     		ldr	r3, [sp, #4]
 583 01b2 08B1     		cbz	r0, .L92
 584 01b4 9946     		mov	r9, r3
 585 01b6 2DE7     		b	.L72
 586              	.L92:
 587 01b8 2846     		mov	r0, r5
 588 01ba 0021     		movs	r1, #0
 589 01bc FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 590 01c0 4FF00009 		mov	r9, #0
 591 01c4 C8F88400 		str	r0, [r8, #132]	@ float
 592 01c8 0127     		movs	r7, #1
 593 01ca 23E7     		b	.L72
 594              	.L150:
 595 01cc 0446     		mov	r4, r0
 596 01ce 53E7     		b	.L98
 597              	.L156:
 598              		.align	2
 599              	.L155:
 600 01d0 13008000 		.word	8388627
 601 01d4 00000000 		.word	.LC3
 602 01d8 00000000 		.word	.LANCHOR1
 603 01dc 04000000 		.word	.LC4
 604              		.size	_ZN14FileInfoParser10FindHeightEPKcj, .-_ZN14FileInfoParser10FindHeightEPKcj
 605              		.section	.text._ZN14FileInfoParser15FindLayerHeightEPKcj,"ax",%progbits
 606              		.align	1
 607              		.p2align 2,,3
 608              		.global	_ZN14FileInfoParser15FindLayerHeightEPKcj
 609              		.syntax unified
 610              		.thumb
 611              		.thumb_func
 612              		.fpu softvfp
 613              		.type	_ZN14FileInfoParser15FindLayerHeightEPKcj, %function
 614              	_ZN14FileInfoParser15FindLayerHeightEPKcj:
 615              		@ args = 0, pretend = 0, frame = 0
 616              		@ frame_needed = 0, uses_anonymous_args = 0
 617              		@ link register save eliminated.
 618 0000 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 619 0002 0BB1     		cbz	r3, .L158
 620 0004 FFF7FEBF 		b	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7
 621              	.L158:
 622 0008 1846     		mov	r0, r3
 623 000a 7047     		bx	lr
 624              		.size	_ZN14FileInfoParser15FindLayerHeightEPKcj, .-_ZN14FileInfoParser15FindLayerHeightEPKcj
 625              		.section	.text._ZN14FileInfoParser14FindSlicerInfoEPKcj,"ax",%progbits
 626              		.align	1
 627              		.p2align 2,,3
ARM GAS  /tmp/ccotPdLg.s 			page 12


 628              		.global	_ZN14FileInfoParser14FindSlicerInfoEPKcj
 629              		.syntax unified
 630              		.thumb
 631              		.thumb_func
 632              		.fpu softvfp
 633              		.type	_ZN14FileInfoParser14FindSlicerInfoEPKcj, %function
 634              	_ZN14FileInfoParser14FindSlicerInfoEPKcj:
 635              		@ args = 0, pretend = 0, frame = 8
 636              		@ frame_needed = 0, uses_anonymous_args = 0
 637 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 638 0004 8946     		mov	r9, r1
 639 0006 204F     		ldr	r7, .L176
 640 0008 83B0     		sub	sp, sp, #12
 641 000a 0646     		mov	r6, r0
 642 000c 3946     		mov	r1, r7
 643 000e 4846     		mov	r0, r9
 644 0010 FFF7FEFF 		bl	strstr
 645 0014 0025     		movs	r5, #0
 646 0016 DFF87C80 		ldr	r8, .L176+12
 647 001a 0446     		mov	r4, r0
 648 001c 58B9     		cbnz	r0, .L160
 649              	.L175:
 650 001e 0135     		adds	r5, r5, #1
 651 0020 052D     		cmp	r5, #5
 652 0022 28D0     		beq	.L170
 653 0024 58F8047B 		ldr	r7, [r8], #4
 654 0028 4846     		mov	r0, r9
 655 002a 3946     		mov	r1, r7
 656 002c FFF7FEFF 		bl	strstr
 657 0030 0446     		mov	r4, r0
 658 0032 0028     		cmp	r0, #0
 659 0034 F3D0     		beq	.L175
 660              	.L160:
 661 0036 022D     		cmp	r5, #2
 662 0038 23D0     		beq	.L165
 663 003a 032D     		cmp	r5, #3
 664 003c 1ED0     		beq	.L166
 665 003e 3846     		mov	r0, r7
 666 0040 FFF7FEFF 		bl	strlen
 667 0044 1149     		ldr	r1, .L176+4
 668 0046 0444     		add	r4, r4, r0
 669              	.L164:
 670 0048 3325     		movs	r5, #51
 671 004a AE36     		adds	r6, r6, #174
 672 004c 6846     		mov	r0, sp
 673 004e 0096     		str	r6, [sp]
 674 0050 0195     		str	r5, [sp, #4]
 675 0052 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 676 0056 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 677 0058 1F29     		cmp	r1, #31
 678 005a 08DD     		ble	.L168
 679              	.L169:
 680 005c 6846     		mov	r0, sp
 681 005e 0096     		str	r6, [sp]
 682 0060 0195     		str	r5, [sp, #4]
 683 0062 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 684 0066 14F8011F 		ldrb	r1, [r4, #1]!	@ zero_extendqisi2
ARM GAS  /tmp/ccotPdLg.s 			page 13


 685 006a 1F29     		cmp	r1, #31
 686 006c F6DC     		bgt	.L169
 687              	.L168:
 688 006e 0120     		movs	r0, #1
 689 0070 03B0     		add	sp, sp, #12
 690              		@ sp needed
 691 0072 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 692              	.L170:
 693 0076 03B0     		add	sp, sp, #12
 694              		@ sp needed
 695 0078 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 696              	.L166:
 697 007c 0449     		ldr	r1, .L176+8
 698 007e 0C34     		adds	r4, r4, #12
 699 0080 E2E7     		b	.L164
 700              	.L165:
 701 0082 0234     		adds	r4, r4, #2
 702 0084 0149     		ldr	r1, .L176+4
 703 0086 DFE7     		b	.L164
 704              	.L177:
 705              		.align	2
 706              	.L176:
 707 0088 00000000 		.word	.LC5
 708 008c 10000000 		.word	.LC6
 709 0090 14000000 		.word	.LC7
 710 0094 04000000 		.word	.LANCHOR2+4
 711              		.size	_ZN14FileInfoParser14FindSlicerInfoEPKcj, .-_ZN14FileInfoParser14FindSlicerInfoEPKcj
 712              		.global	__aeabi_fdiv
 713              		.section	.text._ZN14FileInfoParser16FindFilamentUsedEPKcj,"ax",%progbits
 714              		.align	1
 715              		.p2align 2,,3
 716              		.global	_ZN14FileInfoParser16FindFilamentUsedEPKcj
 717              		.syntax unified
 718              		.thumb
 719              		.thumb_func
 720              		.fpu softvfp
 721              		.type	_ZN14FileInfoParser16FindFilamentUsedEPKcj, %function
 722              	_ZN14FileInfoParser16FindFilamentUsedEPKcj:
 723              		@ args = 0, pretend = 0, frame = 16
 724              		@ frame_needed = 0, uses_anonymous_args = 0
 725 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 726 0004 914B     		ldr	r3, .L248
 727 0006 85B0     		sub	sp, sp, #20
 728 0008 1B69     		ldr	r3, [r3, #16]
 729 000a 8246     		mov	r10, r0
 730 000c D3F80082 		ldr	r8, [r3, #512]
 731 0010 0191     		str	r1, [sp, #4]
 732 0012 B8F1000F 		cmp	r8, #0
 733 0016 41D0     		beq	.L215
 734 0018 DDF804B0 		ldr	fp, [sp, #4]
 735 001c 0026     		movs	r6, #0
 736 001e 5C46     		mov	r4, fp
 737 0020 8B4F     		ldr	r7, .L248+4
 738 0022 DFF83C92 		ldr	r9, .L248+20
 739              	.L187:
 740 0026 2046     		mov	r0, r4
 741 0028 8A49     		ldr	r1, .L248+8
ARM GAS  /tmp/ccotPdLg.s 			page 14


 742 002a FFF7FEFF 		bl	strstr
 743 002e 0028     		cmp	r0, #0
 744 0030 6FD0     		beq	.L240
 745 0032 00F10C05 		add	r5, r0, #12
 746              	.L185:
 747 0036 95F800B0 		ldrb	fp, [r5]	@ zero_extendqisi2
 748 003a 3846     		mov	r0, r7
 749 003c 5946     		mov	r1, fp
 750 003e 2C46     		mov	r4, r5
 751 0040 0135     		adds	r5, r5, #1
 752 0042 FFF7FEFF 		bl	strchr
 753 0046 0028     		cmp	r0, #0
 754 0048 F5D1     		bne	.L185
 755 004a ABF1300B 		sub	fp, fp, #48
 756 004e BBF1090F 		cmp	fp, #9
 757 0052 1DD8     		bhi	.L194
 758 0054 06F1220B 		add	fp, r6, #34
 759 0058 7F4D     		ldr	r5, .L248+12
 760 005a 0AEB8B0B 		add	fp, r10, fp, lsl #2
 761              	.L193:
 762 005e 2046     		mov	r0, r4
 763 0060 03A9     		add	r1, sp, #12
 764 0062 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 765 0066 039C     		ldr	r4, [sp, #12]
 766 0068 CBF80000 		str	r0, [fp]	@ float
 767 006c 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 768 006e 6D29     		cmp	r1, #109
 769 0070 40D0     		beq	.L241
 770              	.L189:
 771 0072 0136     		adds	r6, r6, #1
 772 0074 01E0     		b	.L192
 773              	.L242:
 774 0076 14F8011F 		ldrb	r1, [r4, #1]!	@ zero_extendqisi2
 775              	.L192:
 776 007a 2846     		mov	r0, r5
 777 007c FFF7FEFF 		bl	strchr
 778 0080 0028     		cmp	r0, #0
 779 0082 F8D1     		bne	.L242
 780 0084 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 781 0086 0BF1040B 		add	fp, fp, #4
 782 008a 303B     		subs	r3, r3, #48
 783 008c 092B     		cmp	r3, #9
 784 008e E6D9     		bls	.L193
 785              	.L194:
 786 0090 B045     		cmp	r8, r6
 787 0092 C8D8     		bhi	.L187
 788 0094 56BB     		cbnz	r6, .L178
 789 0096 B8F1000F 		cmp	r8, #0
 790 009a 54D1     		bne	.L216
 791              	.L215:
 792 009c 0198     		ldr	r0, [sp, #4]
 793 009e 6F49     		ldr	r1, .L248+16
 794 00a0 FFF7FEFF 		bl	strstr
 795 00a4 0028     		cmp	r0, #0
 796 00a6 00F09E80 		beq	.L243
 797              	.L206:
 798 00aa 0021     		movs	r1, #0
ARM GAS  /tmp/ccotPdLg.s 			page 15


 799 00ac 1A30     		adds	r0, r0, #26
 800 00ae FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 801 00b2 664B     		ldr	r3, .L248
 802 00b4 0446     		mov	r4, r0
 803 00b6 1B68     		ldr	r3, [r3]
 804 00b8 4FF07C51 		mov	r1, #1056964608
 805 00bc D3F87C05 		ldr	r0, [r3, #1404]	@ float
 806 00c0 FFF7FEFF 		bl	__aeabi_fmul
 807 00c4 6649     		ldr	r1, .L248+20
 808 00c6 0546     		mov	r5, r0
 809 00c8 2046     		mov	r0, r4
 810 00ca FFF7FEFF 		bl	__aeabi_fmul
 811 00ce 2946     		mov	r1, r5
 812 00d0 0446     		mov	r4, r0
 813 00d2 2846     		mov	r0, r5
 814 00d4 FFF7FEFF 		bl	__aeabi_fmul
 815 00d8 6249     		ldr	r1, .L248+24
 816 00da FFF7FEFF 		bl	__aeabi_fmul
 817 00de 0146     		mov	r1, r0
 818 00e0 2046     		mov	r0, r4
 819 00e2 FFF7FEFF 		bl	__aeabi_fdiv
 820 00e6 0126     		movs	r6, #1
 821 00e8 CAF88800 		str	r0, [r10, #136]	@ float
 822              	.L178:
 823 00ec 3046     		mov	r0, r6
 824 00ee 05B0     		add	sp, sp, #20
 825              		@ sp needed
 826 00f0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 827              	.L241:
 828 00f4 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 829 00f6 6D2B     		cmp	r3, #109
 830 00f8 08D0     		beq	.L244
 831 00fa 4946     		mov	r1, r9
 832 00fc FFF7FEFF 		bl	__aeabi_fmul
 833 0100 631C     		adds	r3, r4, #1
 834 0102 CBF80000 		str	r0, [fp]	@ float
 835 0106 6178     		ldrb	r1, [r4, #1]	@ zero_extendqisi2
 836 0108 1C46     		mov	r4, r3
 837 010a B2E7     		b	.L189
 838              	.L244:
 839 010c A178     		ldrb	r1, [r4, #2]	@ zero_extendqisi2
 840 010e 0234     		adds	r4, r4, #2
 841 0110 AFE7     		b	.L189
 842              	.L240:
 843 0112 4645     		cmp	r6, r8
 844 0114 15D2     		bcs	.L182
 845 0116 019F     		ldr	r7, [sp, #4]
 846 0118 534D     		ldr	r5, .L248+28
 847 011a 544C     		ldr	r4, .L248+32
 848              	.L198:
 849 011c 3846     		mov	r0, r7
 850 011e 2946     		mov	r1, r5
 851 0120 FFF7FEFF 		bl	strstr
 852 0124 68B1     		cbz	r0, .L182
 853 0126 00F10A07 		add	r7, r0, #10
 854 012a 3846     		mov	r0, r7
 855 012c 0A22     		movs	r2, #10
ARM GAS  /tmp/ccotPdLg.s 			page 16


 856 012e 03A9     		add	r1, sp, #12
 857 0130 FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 858 0134 039B     		ldr	r3, [sp, #12]
 859 0136 9F42     		cmp	r7, r3
 860 0138 01D0     		beq	.L196
 861 013a 4045     		cmp	r0, r8
 862 013c 62D3     		bcc	.L197
 863              	.L196:
 864 013e 4645     		cmp	r6, r8
 865 0140 ECD3     		bcc	.L198
 866              	.L182:
 867 0142 002E     		cmp	r6, #0
 868 0144 D2D1     		bne	.L178
 869              	.L216:
 870 0146 0026     		movs	r6, #0
 871 0148 DDF80490 		ldr	r9, [sp, #4]
 872 014c 484D     		ldr	r5, .L248+36
 873 014e 404C     		ldr	r4, .L248+4
 874              	.L199:
 875 0150 4846     		mov	r0, r9
 876 0152 2946     		mov	r1, r5
 877 0154 FFF7FEFF 		bl	strstr
 878 0158 80B1     		cbz	r0, .L200
 879 015a 00F10E03 		add	r3, r0, #14
 880              	.L202:
 881 015e 1F78     		ldrb	r7, [r3]	@ zero_extendqisi2
 882 0160 2046     		mov	r0, r4
 883 0162 3946     		mov	r1, r7
 884 0164 9946     		mov	r9, r3
 885 0166 FFF7FEFF 		bl	strchr
 886 016a 09F10103 		add	r3, r9, #1
 887 016e 0028     		cmp	r0, #0
 888 0170 F5D1     		bne	.L202
 889 0172 303F     		subs	r7, r7, #48
 890 0174 092F     		cmp	r7, #9
 891 0176 3BD9     		bls	.L245
 892              	.L203:
 893 0178 4645     		cmp	r6, r8
 894 017a E9D3     		bcc	.L199
 895              	.L200:
 896 017c 002E     		cmp	r6, #0
 897 017e B5D1     		bne	.L178
 898 0180 019C     		ldr	r4, [sp, #4]
 899 0182 3C4F     		ldr	r7, .L248+40
 900 0184 324D     		ldr	r5, .L248+4
 901              	.L207:
 902 0186 2046     		mov	r0, r4
 903 0188 3946     		mov	r1, r7
 904 018a FFF7FEFF 		bl	strstr
 905 018e 08B3     		cbz	r0, .L208
 906 0190 90F80990 		ldrb	r9, [r0, #9]	@ zero_extendqisi2
 907 0194 00F10904 		add	r4, r0, #9
 908 0198 A9F13003 		sub	r3, r9, #48
 909 019c 092B     		cmp	r3, #9
 910 019e 0CD8     		bhi	.L210
 911              	.L211:
 912 01a0 14F8019F 		ldrb	r9, [r4, #1]!	@ zero_extendqisi2
ARM GAS  /tmp/ccotPdLg.s 			page 17


 913 01a4 A9F13003 		sub	r3, r9, #48
 914 01a8 092B     		cmp	r3, #9
 915 01aa F9D9     		bls	.L211
 916 01ac 4946     		mov	r1, r9
 917 01ae 2846     		mov	r0, r5
 918 01b0 FFF7FEFF 		bl	strchr
 919 01b4 38B1     		cbz	r0, .L213
 920              	.L246:
 921 01b6 14F8019F 		ldrb	r9, [r4, #1]!	@ zero_extendqisi2
 922              	.L210:
 923 01ba 4946     		mov	r1, r9
 924 01bc 2846     		mov	r0, r5
 925 01be FFF7FEFF 		bl	strchr
 926 01c2 0028     		cmp	r0, #0
 927 01c4 F7D1     		bne	.L246
 928              	.L213:
 929 01c6 A9F13009 		sub	r9, r9, #48
 930 01ca B9F1090F 		cmp	r9, #9
 931 01ce 32D9     		bls	.L247
 932              	.L214:
 933 01d0 B045     		cmp	r8, r6
 934 01d2 D8D8     		bhi	.L207
 935              	.L208:
 936 01d4 002E     		cmp	r6, #0
 937 01d6 89D1     		bne	.L178
 938 01d8 0198     		ldr	r0, [sp, #4]
 939 01da 2049     		ldr	r1, .L248+16
 940 01dc FFF7FEFF 		bl	strstr
 941 01e0 0028     		cmp	r0, #0
 942 01e2 7FF462AF 		bne	.L206
 943              	.L243:
 944 01e6 0646     		mov	r6, r0
 945 01e8 3046     		mov	r0, r6
 946 01ea 05B0     		add	sp, sp, #20
 947              		@ sp needed
 948 01ec BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 949              	.L245:
 950 01f0 0146     		mov	r1, r0
 951 01f2 4846     		mov	r0, r9
 952 01f4 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 953 01f8 0AEB8603 		add	r3, r10, r6, lsl #2
 954 01fc C3F88800 		str	r0, [r3, #136]	@ float
 955 0200 0136     		adds	r6, r6, #1
 956 0202 B9E7     		b	.L203
 957              	.L197:
 958 0204 93F80090 		ldrb	r9, [r3]	@ zero_extendqisi2
 959 0208 2046     		mov	r0, r4
 960 020a 4946     		mov	r1, r9
 961 020c 1F46     		mov	r7, r3
 962 020e FFF7FEFF 		bl	strchr
 963 0212 7B1C     		adds	r3, r7, #1
 964 0214 0028     		cmp	r0, #0
 965 0216 F5D1     		bne	.L197
 966 0218 A9F13009 		sub	r9, r9, #48
 967 021c B9F1090F 		cmp	r9, #9
 968 0220 8DD8     		bhi	.L196
 969 0222 0146     		mov	r1, r0
ARM GAS  /tmp/ccotPdLg.s 			page 18


 970 0224 3846     		mov	r0, r7
 971 0226 FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 972 022a 0AEB8603 		add	r3, r10, r6, lsl #2
 973 022e C3F88800 		str	r0, [r3, #136]	@ float
 974 0232 0136     		adds	r6, r6, #1
 975 0234 83E7     		b	.L196
 976              	.L247:
 977 0236 0146     		mov	r1, r0
 978 0238 2046     		mov	r0, r4
 979 023a FFF7FEFF 		bl	_Z10SafeStrtofPKcPS0_
 980 023e 0AEB8603 		add	r3, r10, r6, lsl #2
 981 0242 C3F88800 		str	r0, [r3, #136]	@ float
 982 0246 0136     		adds	r6, r6, #1
 983 0248 C2E7     		b	.L214
 984              	.L249:
 985 024a 00BF     		.align	2
 986              	.L248:
 987 024c 00000000 		.word	reprap
 988 0250 10000000 		.word	.LC9
 989 0254 00000000 		.word	.LC8
 990 0258 18000000 		.word	.LC10
 991 025c 40000000 		.word	.LC14
 992 0260 00007A44 		.word	1148846080
 993 0264 DB0F4940 		.word	1078530011
 994 0268 1C000000 		.word	.LC11
 995 026c 28000000 		.word	.LC12
 996 0270 30000000 		.word	.LC13
 997 0274 5C000000 		.word	.LC15
 998              		.size	_ZN14FileInfoParser16FindFilamentUsedEPKcj, .-_ZN14FileInfoParser16FindFilamentUsedEPKcj
 999              		.global	__aeabi_d2f
 1000              		.global	__aeabi_fadd
 1001              		.section	.text._ZN14FileInfoParser13FindPrintTimeEPKcj,"ax",%progbits
 1002              		.align	1
 1003              		.p2align 2,,3
 1004              		.global	_ZN14FileInfoParser13FindPrintTimeEPKcj
 1005              		.syntax unified
 1006              		.thumb
 1007              		.thumb_func
 1008              		.fpu softvfp
 1009              		.type	_ZN14FileInfoParser13FindPrintTimeEPKcj, %function
 1010              	_ZN14FileInfoParser13FindPrintTimeEPKcj:
 1011              		@ args = 0, pretend = 0, frame = 8
 1012              		@ frame_needed = 0, uses_anonymous_args = 0
 1013 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1014 0004 8846     		mov	r8, r1
 1015 0006 4B4E     		ldr	r6, .L279
 1016 0008 83B0     		sub	sp, sp, #12
 1017 000a 0746     		mov	r7, r0
 1018 000c 3146     		mov	r1, r6
 1019 000e 4046     		mov	r0, r8
 1020 0010 FFF7FEFF 		bl	strstr
 1021 0014 484D     		ldr	r5, .L279+4
 1022 0016 0446     		mov	r4, r0
 1023 0018 05F10809 		add	r9, r5, #8
 1024 001c 0190     		str	r0, [sp, #4]
 1025 001e 58B9     		cbnz	r0, .L276
 1026              	.L251:
ARM GAS  /tmp/ccotPdLg.s 			page 19


 1027 0020 A945     		cmp	r9, r5
 1028 0022 44D0     		beq	.L265
 1029 0024 55F8046B 		ldr	r6, [r5], #4
 1030 0028 4046     		mov	r0, r8
 1031 002a 3146     		mov	r1, r6
 1032 002c FFF7FEFF 		bl	strstr
 1033 0030 0446     		mov	r4, r0
 1034 0032 0190     		str	r0, [sp, #4]
 1035 0034 0028     		cmp	r0, #0
 1036 0036 F3D0     		beq	.L251
 1037              	.L276:
 1038 0038 3046     		mov	r0, r6
 1039 003a FFF7FEFF 		bl	strlen
 1040 003e 2044     		add	r0, r0, r4
 1041 0040 0446     		mov	r4, r0
 1042 0042 3E4E     		ldr	r6, .L279+8
 1043 0044 0190     		str	r0, [sp, #4]
 1044 0046 00E0     		b	.L253
 1045              	.L277:
 1046 0048 0194     		str	r4, [sp, #4]
 1047              	.L253:
 1048 004a 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 1049 004c 3046     		mov	r0, r6
 1050 004e 2546     		mov	r5, r4
 1051 0050 0134     		adds	r4, r4, #1
 1052 0052 FFF7FEFF 		bl	strchr
 1053 0056 0028     		cmp	r0, #0
 1054 0058 F6D1     		bne	.L277
 1055 005a 01A9     		add	r1, sp, #4
 1056 005c 2846     		mov	r0, r5
 1057 005e FFF7FEFF 		bl	_Z10SafeStrtodPKcPS0_
 1058 0062 FFF7FEFF 		bl	__aeabi_d2f
 1059 0066 0446     		mov	r4, r0
 1060 0068 0198     		ldr	r0, [sp, #4]
 1061 006a A842     		cmp	r0, r5
 1062 006c 02D1     		bne	.L275
 1063 006e 56E0     		b	.L278
 1064              	.L256:
 1065 0070 0130     		adds	r0, r0, #1
 1066 0072 0190     		str	r0, [sp, #4]
 1067              	.L275:
 1068 0074 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 1069 0076 202B     		cmp	r3, #32
 1070 0078 FAD0     		beq	.L256
 1071 007a 682B     		cmp	r3, #104
 1072 007c 36D0     		beq	.L257
 1073 007e 0025     		movs	r5, #0
 1074 0080 0198     		ldr	r0, [sp, #4]
 1075 0082 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 1076              	.L258:
 1077 0084 6D2B     		cmp	r3, #109
 1078 0086 16D0     		beq	.L262
 1079 0088 2D49     		ldr	r1, .L279+12
 1080 008a 2846     		mov	r0, r5
 1081 008c FFF7FEFF 		bl	__aeabi_fmul
 1082 0090 0021     		movs	r1, #0
 1083 0092 FFF7FEFF 		bl	__aeabi_fadd
ARM GAS  /tmp/ccotPdLg.s 			page 20


 1084 0096 2A49     		ldr	r1, .L279+12
 1085 0098 FFF7FEFF 		bl	__aeabi_fmul
 1086 009c 0146     		mov	r1, r0
 1087              	.L254:
 1088 009e 2046     		mov	r0, r4
 1089 00a0 FFF7FEFF 		bl	__aeabi_fadd
 1090 00a4 FFF7FEFF 		bl	lrintf
 1091 00a8 0124     		movs	r4, #1
 1092 00aa C7F8A000 		str	r0, [r7, #160]
 1093              	.L265:
 1094 00ae 2046     		mov	r0, r4
 1095 00b0 03B0     		add	sp, sp, #12
 1096              		@ sp needed
 1097 00b2 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1098              	.L262:
 1099 00b6 2349     		ldr	r1, .L279+16
 1100 00b8 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1101 00bc 0028     		cmp	r0, #0
 1102 00be 30D0     		beq	.L263
 1103 00c0 0198     		ldr	r0, [sp, #4]
 1104 00c2 0730     		adds	r0, r0, #7
 1105 00c4 0190     		str	r0, [sp, #4]
 1106              	.L264:
 1107 00c6 01A9     		add	r1, sp, #4
 1108 00c8 FFF7FEFF 		bl	_Z10SafeStrtodPKcPS0_
 1109 00cc FFF7FEFF 		bl	__aeabi_d2f
 1110 00d0 1B49     		ldr	r1, .L279+12
 1111 00d2 0646     		mov	r6, r0
 1112 00d4 2846     		mov	r0, r5
 1113 00d6 FFF7FEFF 		bl	__aeabi_fmul
 1114 00da 2146     		mov	r1, r4
 1115 00dc FFF7FEFF 		bl	__aeabi_fadd
 1116 00e0 1749     		ldr	r1, .L279+12
 1117 00e2 FFF7FEFF 		bl	__aeabi_fmul
 1118 00e6 3446     		mov	r4, r6
 1119 00e8 0146     		mov	r1, r0
 1120 00ea D8E7     		b	.L254
 1121              	.L257:
 1122 00ec 1649     		ldr	r1, .L279+20
 1123 00ee FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1124 00f2 D0B1     		cbz	r0, .L259
 1125 00f4 0198     		ldr	r0, [sp, #4]
 1126 00f6 0530     		adds	r0, r0, #5
 1127 00f8 0190     		str	r0, [sp, #4]
 1128              	.L260:
 1129 00fa 01A9     		add	r1, sp, #4
 1130 00fc FFF7FEFF 		bl	_Z10SafeStrtodPKcPS0_
 1131 0100 FFF7FEFF 		bl	__aeabi_d2f
 1132 0104 0246     		mov	r2, r0
 1133 0106 0198     		ldr	r0, [sp, #4]
 1134 0108 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 1135 010a 202B     		cmp	r3, #32
 1136 010c 04D1     		bne	.L268
 1137              	.L261:
 1138 010e 0130     		adds	r0, r0, #1
 1139 0110 0190     		str	r0, [sp, #4]
 1140 0112 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
ARM GAS  /tmp/ccotPdLg.s 			page 21


 1141 0114 202B     		cmp	r3, #32
 1142 0116 FAD0     		beq	.L261
 1143              	.L268:
 1144 0118 2546     		mov	r5, r4
 1145 011a 1446     		mov	r4, r2
 1146 011c B2E7     		b	.L258
 1147              	.L278:
 1148 011e 0021     		movs	r1, #0
 1149 0120 BDE7     		b	.L254
 1150              	.L263:
 1151 0122 0198     		ldr	r0, [sp, #4]
 1152 0124 0130     		adds	r0, r0, #1
 1153 0126 0190     		str	r0, [sp, #4]
 1154 0128 CDE7     		b	.L264
 1155              	.L259:
 1156 012a 0198     		ldr	r0, [sp, #4]
 1157 012c 0130     		adds	r0, r0, #1
 1158 012e 0190     		str	r0, [sp, #4]
 1159 0130 E3E7     		b	.L260
 1160              	.L280:
 1161 0132 00BF     		.align	2
 1162              	.L279:
 1163 0134 00000000 		.word	.LC16
 1164 0138 04000000 		.word	.LANCHOR3+4
 1165 013c 1C000000 		.word	.LC17
 1166 0140 00007042 		.word	1114636288
 1167 0144 2C000000 		.word	.LC19
 1168 0148 24000000 		.word	.LC18
 1169              		.size	_ZN14FileInfoParser13FindPrintTimeEPKcj, .-_ZN14FileInfoParser13FindPrintTimeEPKcj
 1170              		.section	.text._ZN14FileInfoParser17FindSimulatedTimeEPKcj,"ax",%progbits
 1171              		.align	1
 1172              		.p2align 2,,3
 1173              		.global	_ZN14FileInfoParser17FindSimulatedTimeEPKcj
 1174              		.syntax unified
 1175              		.thumb
 1176              		.thumb_func
 1177              		.fpu softvfp
 1178              		.type	_ZN14FileInfoParser17FindSimulatedTimeEPKcj, %function
 1179              	_ZN14FileInfoParser17FindSimulatedTimeEPKcj:
 1180              		@ args = 0, pretend = 0, frame = 8
 1181              		@ frame_needed = 0, uses_anonymous_args = 0
 1182 0000 0B46     		mov	r3, r1
 1183 0002 F0B5     		push	{r4, r5, r6, r7, lr}
 1184 0004 1249     		ldr	r1, .L289
 1185 0006 83B0     		sub	sp, sp, #12
 1186 0008 0746     		mov	r7, r0
 1187 000a 1846     		mov	r0, r3
 1188 000c FFF7FEFF 		bl	strstr
 1189 0010 D8B1     		cbz	r0, .L286
 1190 0012 1730     		adds	r0, r0, #23
 1191 0014 0446     		mov	r4, r0
 1192 0016 0F4E     		ldr	r6, .L289+4
 1193 0018 0190     		str	r0, [sp, #4]
 1194 001a 00E0     		b	.L285
 1195              	.L288:
 1196 001c 0194     		str	r4, [sp, #4]
 1197              	.L285:
ARM GAS  /tmp/ccotPdLg.s 			page 22


 1198 001e 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 1199 0020 3046     		mov	r0, r6
 1200 0022 2546     		mov	r5, r4
 1201 0024 0134     		adds	r4, r4, #1
 1202 0026 FFF7FEFF 		bl	strchr
 1203 002a 0028     		cmp	r0, #0
 1204 002c F6D1     		bne	.L288
 1205 002e 0A22     		movs	r2, #10
 1206 0030 01A9     		add	r1, sp, #4
 1207 0032 2846     		mov	r0, r5
 1208 0034 FFF7FEFF 		bl	_Z11SafeStrtoulPKcPS0_i
 1209 0038 019B     		ldr	r3, [sp, #4]
 1210 003a 0246     		mov	r2, r0
 1211 003c AB42     		cmp	r3, r5
 1212 003e 04D0     		beq	.L286
 1213 0040 0120     		movs	r0, #1
 1214 0042 C7F8A420 		str	r2, [r7, #164]
 1215 0046 03B0     		add	sp, sp, #12
 1216              		@ sp needed
 1217 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 1218              	.L286:
 1219 004a 0020     		movs	r0, #0
 1220 004c 03B0     		add	sp, sp, #12
 1221              		@ sp needed
 1222 004e F0BD     		pop	{r4, r5, r6, r7, pc}
 1223              	.L290:
 1224              		.align	2
 1225              	.L289:
 1226 0050 00000000 		.word	.LC20
 1227 0054 1C000000 		.word	.LC17
 1228              		.size	_ZN14FileInfoParser17FindSimulatedTimeEPKcj, .-_ZN14FileInfoParser17FindSimulatedTimeEPKcj
 1229              		.global	__aeabi_ui2f
 1230              		.global	__aeabi_f2d
 1231              		.section	.text._ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob,"ax",%progbits
 1232              		.align	1
 1233              		.p2align 2,,3
 1234              		.global	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob
 1235              		.syntax unified
 1236              		.thumb
 1237              		.thumb_func
 1238              		.fpu softvfp
 1239              		.type	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob, %function
 1240              	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob:
 1241              		@ args = 4, pretend = 0, frame = 32
 1242              		@ frame_needed = 0, uses_anonymous_args = 0
 1243 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1244 0004 8FB0     		sub	sp, sp, #60
 1245 0006 0893     		str	r3, [sp, #32]
 1246 0008 9DF86030 		ldrb	r3, [sp, #96]	@ zero_extendqisi2
 1247 000c 0692     		str	r2, [sp, #24]
 1248 000e 0446     		mov	r4, r0
 1249 0010 0D46     		mov	r5, r1
 1250 0012 C822     		movs	r2, #200
 1251 0014 0146     		mov	r1, r0
 1252 0016 0AA8     		add	r0, sp, #40
 1253 0018 0793     		str	r3, [sp, #28]
 1254 001a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
ARM GAS  /tmp/ccotPdLg.s 			page 23


 1255 001e 9DF82C70 		ldrb	r7, [sp, #44]	@ zero_extendqisi2
 1256 0022 9FB1     		cbz	r7, .L340
 1257 0024 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 1258 0026 002B     		cmp	r3, #0
 1259 0028 77D1     		bne	.L412
 1260              	.L294:
 1261 002a DFF89886 		ldr	r8, .L438
 1262 002e 069A     		ldr	r2, [sp, #24]
 1263 0030 D8F80030 		ldr	r3, [r8]
 1264 0034 2946     		mov	r1, r5
 1265 0036 D3F86805 		ldr	r0, [r3, #1384]
 1266 003a FFF7FEFF 		bl	_ZN11MassStorage15DirectoryExistsEPKcS1_
 1267 003e 0646     		mov	r6, r0
 1268 0040 60B1     		cbz	r0, .L413
 1269              	.L298:
 1270 0042 0023     		movs	r3, #0
 1271 0044 089A     		ldr	r2, [sp, #32]
 1272 0046 82F83830 		strb	r3, [r2, #56]
 1273 004a 00E0     		b	.L293
 1274              	.L340:
 1275 004c 0027     		movs	r7, #0
 1276              	.L293:
 1277 004e 0AA8     		add	r0, sp, #40
 1278 0050 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 1279 0054 3846     		mov	r0, r7
 1280 0056 0FB0     		add	sp, sp, #60
 1281              		@ sp needed
 1282 0058 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1283              	.L413:
 1284 005c D8F80020 		ldr	r2, [r8]
 1285 0060 DDF818A0 		ldr	r10, [sp, #24]
 1286 0064 D2F86805 		ldr	r0, [r2, #1384]
 1287 0068 3346     		mov	r3, r6
 1288 006a 5246     		mov	r2, r10
 1289 006c 2946     		mov	r1, r5
 1290 006e FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 1291 0072 E066     		str	r0, [r4, #108]
 1292 0074 0028     		cmp	r0, #0
 1293 0076 E4D0     		beq	.L298
 1294 0078 6522     		movs	r2, #101
 1295 007a 631D     		adds	r3, r4, #5
 1296 007c 5146     		mov	r1, r10
 1297 007e 0CA8     		add	r0, sp, #48
 1298 0080 0D92     		str	r2, [sp, #52]
 1299 0082 4FF00109 		mov	r9, #1
 1300 0086 0C93     		str	r3, [sp, #48]
 1301 0088 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1302 008c 0023     		movs	r3, #0
 1303 008e C4F8F460 		str	r6, [r4, #244]
 1304 0092 C4F88030 		str	r3, [r4, #128]	@ float
 1305 0096 C4F88430 		str	r3, [r4, #132]	@ float
 1306 009a E367     		str	r3, [r4, #124]	@ float
 1307 009c C4F88830 		str	r3, [r4, #136]	@ float
 1308 00a0 C4F88C30 		str	r3, [r4, #140]	@ float
 1309 00a4 C4F89030 		str	r3, [r4, #144]	@ float
 1310 00a8 C4F89430 		str	r3, [r4, #148]	@ float
 1311 00ac C4F89830 		str	r3, [r4, #152]	@ float
ARM GAS  /tmp/ccotPdLg.s 			page 24


 1312 00b0 C4F89C30 		str	r3, [r4, #156]	@ float
 1313 00b4 84F8AC60 		strb	r6, [r4, #172]
 1314 00b8 C4F8A460 		str	r6, [r4, #164]
 1315 00bc C4F8A060 		str	r6, [r4, #160]
 1316 00c0 C4F8A860 		str	r6, [r4, #168]
 1317 00c4 84F8AE60 		strb	r6, [r4, #174]
 1318 00c8 84F8AD90 		strb	r9, [r4, #173]
 1319 00cc E06E     		ldr	r0, [r4, #108]
 1320 00ce FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1321 00d2 D8F80030 		ldr	r3, [r8]
 1322 00d6 6067     		str	r0, [r4, #116]
 1323 00d8 2946     		mov	r1, r5
 1324 00da D3F86805 		ldr	r0, [r3, #1384]
 1325 00de 5246     		mov	r2, r10
 1326 00e0 FFF7FEFF 		bl	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_
 1327 00e4 D8F84430 		ldr	r3, [r8, #68]
 1328 00e8 A067     		str	r0, [r4, #120]
 1329 00ea 9805     		lsls	r0, r3, #22
 1330 00ec 84F8AC90 		strb	r9, [r4, #172]
 1331 00f0 00F15782 		bmi	.L414
 1332              	.L299:
 1333 00f4 E06E     		ldr	r0, [r4, #108]
 1334 00f6 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1335 00fa 0028     		cmp	r0, #0
 1336 00fc 40F05D82 		bne	.L415
 1337              	.L300:
 1338 0100 E06E     		ldr	r0, [r4, #108]
 1339 0102 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1340 0106 0023     		movs	r3, #0
 1341 0108 0898     		ldr	r0, [sp, #32]
 1342 010a 84F8AD30 		strb	r3, [r4, #173]
 1343 010e 04F17401 		add	r1, r4, #116
 1344 0112 6D22     		movs	r2, #109
 1345 0114 FFF7FEFF 		bl	memcpy
 1346 0118 99E7     		b	.L293
 1347              	.L412:
 1348 011a 611D     		adds	r1, r4, #5
 1349 011c 0698     		ldr	r0, [sp, #24]
 1350 011e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1351 0122 0646     		mov	r6, r0
 1352 0124 0028     		cmp	r0, #0
 1353 0126 00F05C81 		beq	.L416
 1354 012a 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 1355 012c 002B     		cmp	r3, #0
 1356 012e 3FF47CAF 		beq	.L294
 1357              	.L297:
 1358 0132 FFF7FEFF 		bl	millis
 1359 0136 DFF88CA5 		ldr	r10, .L438
 1360 013a 0990     		str	r0, [sp, #36]
 1361 013c 04F1F808 		add	r8, r4, #248
 1362              	.L339:
 1363 0140 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 1364 0142 022B     		cmp	r3, #2
 1365 0144 12D0     		beq	.L303
 1366 0146 032B     		cmp	r3, #3
 1367 0148 00F0DE80 		beq	.L304
 1368 014c 012B     		cmp	r3, #1
ARM GAS  /tmp/ccotPdLg.s 			page 25


 1369 014e 57D0     		beq	.L417
 1370 0150 0025     		movs	r5, #0
 1371 0152 E06E     		ldr	r0, [r4, #108]
 1372 0154 84F8AD50 		strb	r5, [r4, #173]
 1373 0158 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1374 015c 0898     		ldr	r0, [sp, #32]
 1375 015e 6D22     		movs	r2, #109
 1376 0160 04F17401 		add	r1, r4, #116
 1377 0164 FFF7FEFF 		bl	memcpy
 1378 0168 2571     		strb	r5, [r4, #4]
 1379 016a 70E7     		b	.L293
 1380              	.L303:
 1381 016c E06E     		ldr	r0, [r4, #108]
 1382 016e FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1383 0172 0546     		mov	r5, r0
 1384 0174 E06E     		ldr	r0, [r4, #108]
 1385 0176 FFF7FEFF 		bl	_ZNK9FileStore11ClusterSizeEv
 1386 017a D4F870B0 		ldr	fp, [r4, #112]
 1387 017e B5FBF0F2 		udiv	r2, r5, r0
 1388 0182 BBFBF0F3 		udiv	r3, fp, r0
 1389 0186 9A42     		cmp	r2, r3
 1390 0188 88BF     		it	hi
 1391 018a 0025     		movhi	r5, #0
 1392 018c 05EB4025 		add	r5, r5, r0, lsl #9
 1393 0190 AB45     		cmp	fp, r5
 1394 0192 D946     		mov	r9, fp
 1395 0194 28BF     		it	cs
 1396 0196 A946     		movcs	r9, r5
 1397 0198 FFF7FEFF 		bl	millis
 1398 019c 4946     		mov	r1, r9
 1399 019e 0646     		mov	r6, r0
 1400 01a0 E06E     		ldr	r0, [r4, #108]
 1401 01a2 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 1402 01a6 0028     		cmp	r0, #0
 1403 01a8 00F03382 		beq	.L418
 1404 01ac FFF7FEFF 		bl	millis
 1405 01b0 D4F8F030 		ldr	r3, [r4, #240]
 1406 01b4 AB45     		cmp	fp, r5
 1407 01b6 A3EB0603 		sub	r3, r3, r6
 1408 01ba 0344     		add	r3, r3, r0
 1409 01bc C4F8F030 		str	r3, [r4, #240]
 1410 01c0 01D8     		bhi	.L319
 1411 01c2 0323     		movs	r3, #3
 1412 01c4 2371     		strb	r3, [r4, #4]
 1413              	.L319:
 1414 01c6 FFF7FEFF 		bl	millis
 1415 01ca DAF81C30 		ldr	r3, [r10, #28]
 1416 01ce C4F8E400 		str	r0, [r4, #228]
 1417 01d2 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 1418 01d4 1BB9     		cbnz	r3, .L338
 1419 01d6 099B     		ldr	r3, [sp, #36]
 1420 01d8 C01A     		subs	r0, r0, r3
 1421 01da C728     		cmp	r0, #199
 1422 01dc B0D9     		bls	.L339
 1423              	.L338:
 1424 01de 079B     		ldr	r3, [sp, #28]
 1425 01e0 002B     		cmp	r3, #0
ARM GAS  /tmp/ccotPdLg.s 			page 26


 1426 01e2 3FF433AF 		beq	.L340
 1427 01e6 6D22     		movs	r2, #109
 1428 01e8 04F17401 		add	r1, r4, #116
 1429 01ec 0898     		ldr	r0, [sp, #32]
 1430 01ee FFF7FEFF 		bl	memcpy
 1431 01f2 E06E     		ldr	r0, [r4, #108]
 1432 01f4 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1433 01f8 0023     		movs	r3, #0
 1434 01fa 079F     		ldr	r7, [sp, #28]
 1435 01fc 2371     		strb	r3, [r4, #4]
 1436 01fe 26E7     		b	.L293
 1437              	.L417:
 1438 0200 E06E     		ldr	r0, [r4, #108]
 1439 0202 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1440 0206 0546     		mov	r5, r0
 1441 0208 E06E     		ldr	r0, [r4, #108]
 1442 020a FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1443 020e 2D1A     		subs	r5, r5, r0
 1444 0210 B5F5806F 		cmp	r5, #1024
 1445 0214 24BF     		itt	cs
 1446 0216 4FF4806B 		movcs	fp, #1024
 1447 021a 5D46     		movcs	r5, fp
 1448 021c D4F8F430 		ldr	r3, [r4, #244]
 1449 0220 38BF     		it	cc
 1450 0222 AB46     		movcc	fp, r5
 1451 0224 05EB0309 		add	r9, r5, r3
 1452 0228 FFF7FEFF 		bl	millis
 1453 022c D4F8F410 		ldr	r1, [r4, #244]
 1454 0230 0646     		mov	r6, r0
 1455 0232 2A46     		mov	r2, r5
 1456 0234 4144     		add	r1, r1, r8
 1457 0236 E06E     		ldr	r0, [r4, #108]
 1458 0238 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1459 023c 8345     		cmp	fp, r0
 1460 023e 40F00882 		bne	.L419
 1461 0242 0023     		movs	r3, #0
 1462 0244 08F80930 		strb	r3, [r8, r9]
 1463 0248 FFF7FEFF 		bl	millis
 1464 024c D4F8EC30 		ldr	r3, [r4, #236]
 1465 0250 D4F8A820 		ldr	r2, [r4, #168]
 1466 0254 9E1B     		subs	r6, r3, r6
 1467 0256 0644     		add	r6, r6, r0
 1468 0258 8346     		mov	fp, r0
 1469 025a C4F8EC60 		str	r6, [r4, #236]
 1470 025e 002A     		cmp	r2, #0
 1471 0260 00F01A81 		beq	.L420
 1472 0264 3E46     		mov	r6, r7
 1473              	.L308:
 1474 0266 0021     		movs	r1, #0
 1475 0268 D4F88000 		ldr	r0, [r4, #128]	@ float
 1476 026c FFF7FEFF 		bl	__aeabi_fcmpeq
 1477 0270 20B1     		cbz	r0, .L309
 1478 0272 B9F1030F 		cmp	r9, #3
 1479 0276 00F26981 		bhi	.L421
 1480 027a 0026     		movs	r6, #0
 1481              	.L309:
 1482 027c 0021     		movs	r1, #0
ARM GAS  /tmp/ccotPdLg.s 			page 27


 1483 027e E06F     		ldr	r0, [r4, #124]	@ float
 1484 0280 FFF7FEFF 		bl	__aeabi_fcmpeq
 1485 0284 28B1     		cbz	r0, .L312
 1486 0286 94F8F830 		ldrb	r3, [r4, #248]	@ zero_extendqisi2
 1487 028a 002B     		cmp	r3, #0
 1488 028c 40F05781 		bne	.L422
 1489 0290 1E46     		mov	r6, r3
 1490              	.L312:
 1491 0292 94F8AE30 		ldrb	r3, [r4, #174]	@ zero_extendqisi2
 1492 0296 002B     		cmp	r3, #0
 1493 0298 00F0F680 		beq	.L423
 1494              	.L315:
 1495 029c D4F8A030 		ldr	r3, [r4, #160]
 1496 02a0 002B     		cmp	r3, #0
 1497 02a2 00F0DC80 		beq	.L424
 1498              	.L316:
 1499 02a6 FFF7FEFF 		bl	millis
 1500 02aa D4F8E830 		ldr	r3, [r4, #232]
 1501 02ae A3EB0B03 		sub	r3, r3, fp
 1502 02b2 0344     		add	r3, r3, r0
 1503 02b4 C4F8E830 		str	r3, [r4, #232]
 1504 02b8 E06E     		ldr	r0, [r4, #108]
 1505 02ba FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1506 02be 8146     		mov	r9, r0
 1507 02c0 26B9     		cbnz	r6, .L317
 1508 02c2 44F61F63 		movw	r3, #19999
 1509 02c6 9842     		cmp	r0, r3
 1510 02c8 40F22481 		bls	.L425
 1511              	.L317:
 1512 02cc DAF84430 		ldr	r3, [r10, #68]
 1513 02d0 9905     		lsls	r1, r3, #22
 1514 02d2 00F14381 		bmi	.L426
 1515              	.L344:
 1516 02d6 E06E     		ldr	r0, [r4, #108]
 1517 02d8 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1518 02dc 0546     		mov	r5, r0
 1519 02de E06E     		ldr	r0, [r4, #108]
 1520 02e0 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1521 02e4 0023     		movs	r3, #0
 1522 02e6 0222     		movs	r2, #2
 1523 02e8 013D     		subs	r5, r5, #1
 1524 02ea 0138     		subs	r0, r0, #1
 1525 02ec C5F30905 		ubfx	r5, r5, #0, #10
 1526 02f0 451B     		subs	r5, r0, r5
 1527 02f2 2567     		str	r5, [r4, #112]
 1528 02f4 C4F8E830 		str	r3, [r4, #232]
 1529 02f8 C4F8EC30 		str	r3, [r4, #236]
 1530 02fc C4F8F030 		str	r3, [r4, #240]
 1531 0300 C4F8F430 		str	r3, [r4, #244]
 1532 0304 2271     		strb	r2, [r4, #4]
 1533 0306 5EE7     		b	.L319
 1534              	.L304:
 1535 0308 E06E     		ldr	r0, [r4, #108]
 1536 030a FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1537 030e 236F     		ldr	r3, [r4, #112]
 1538 0310 D4F8F420 		ldr	r2, [r4, #244]
 1539 0314 A0EB030B 		sub	fp, r0, r3
ARM GAS  /tmp/ccotPdLg.s 			page 28


 1540 0318 BBF5806F 		cmp	fp, #1024
 1541 031c 2ABF     		itet	cs
 1542 031e 4FF48066 		movcs	r6, #1024
 1543 0322 5E46     		movcc	r6, fp
 1544 0324 B346     		movcs	fp, r6
 1545 0326 002A     		cmp	r2, #0
 1546 0328 69D1     		bne	.L427
 1547 032a 5D46     		mov	r5, fp
 1548              	.L323:
 1549 032c FFF7FEFF 		bl	millis
 1550 0330 5A46     		mov	r2, fp
 1551 0332 8146     		mov	r9, r0
 1552 0334 4146     		mov	r1, r8
 1553 0336 E06E     		ldr	r0, [r4, #108]
 1554 0338 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1555 033c B042     		cmp	r0, r6
 1556 033e 40F07C81 		bne	.L428
 1557 0342 0023     		movs	r3, #0
 1558 0344 08F80530 		strb	r3, [r8, r5]
 1559 0348 FFF7FEFF 		bl	millis
 1560 034c D4F8EC30 		ldr	r3, [r4, #236]
 1561 0350 D4F8A820 		ldr	r2, [r4, #168]
 1562 0354 A3EB0903 		sub	r3, r3, r9
 1563 0358 0344     		add	r3, r3, r0
 1564 035a 0646     		mov	r6, r0
 1565 035c C4F8EC30 		str	r3, [r4, #236]
 1566 0360 002A     		cmp	r2, #0
 1567 0362 00F08480 		beq	.L429
 1568 0366 B946     		mov	r9, r7
 1569              	.L325:
 1570 0368 0021     		movs	r1, #0
 1571 036a E06F     		ldr	r0, [r4, #124]	@ float
 1572 036c FFF7FEFF 		bl	__aeabi_fcmpeq
 1573 0370 30B1     		cbz	r0, .L326
 1574 0372 94F8F830 		ldrb	r3, [r4, #248]	@ zero_extendqisi2
 1575 0376 002B     		cmp	r3, #0
 1576 0378 40F0C480 		bne	.L430
 1577              	.L328:
 1578 037c 4FF00009 		mov	r9, #0
 1579              	.L326:
 1580 0380 0021     		movs	r1, #0
 1581 0382 D4F88400 		ldr	r0, [r4, #132]	@ float
 1582 0386 FFF7FEFF 		bl	__aeabi_fcmpeq
 1583 038a 0028     		cmp	r0, #0
 1584 038c 5DD1     		bne	.L431
 1585              	.L329:
 1586 038e D4F8A030 		ldr	r3, [r4, #160]
 1587 0392 002B     		cmp	r3, #0
 1588 0394 3CD0     		beq	.L432
 1589              	.L331:
 1590 0396 D4F8A430 		ldr	r3, [r4, #164]
 1591 039a 002B     		cmp	r3, #0
 1592 039c 00F0A080 		beq	.L433
 1593              	.L334:
 1594 03a0 FFF7FEFF 		bl	millis
 1595 03a4 D4F8E830 		ldr	r3, [r4, #232]
 1596 03a8 9E1B     		subs	r6, r3, r6
ARM GAS  /tmp/ccotPdLg.s 			page 29


 1597 03aa 0644     		add	r6, r6, r0
 1598 03ac C4F8E860 		str	r6, [r4, #232]
 1599 03b0 B9F1000F 		cmp	r9, #0
 1600 03b4 02D1     		bne	.L335
 1601              	.L333:
 1602 03b6 236F     		ldr	r3, [r4, #112]
 1603 03b8 002B     		cmp	r3, #0
 1604 03ba 78D1     		bne	.L434
 1605              	.L335:
 1606 03bc C14B     		ldr	r3, .L438
 1607 03be 5A6C     		ldr	r2, [r3, #68]
 1608 03c0 9205     		lsls	r2, r2, #22
 1609 03c2 00F14B81 		bmi	.L435
 1610              	.L348:
 1611 03c6 0025     		movs	r5, #0
 1612 03c8 E06E     		ldr	r0, [r4, #108]
 1613 03ca 2571     		strb	r5, [r4, #4]
 1614 03cc FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1615 03d0 84F8AD50 		strb	r5, [r4, #173]
 1616 03d4 04F17401 		add	r1, r4, #116
 1617 03d8 0898     		ldr	r0, [sp, #32]
 1618 03da 6D22     		movs	r2, #109
 1619 03dc FFF7FEFF 		bl	memcpy
 1620 03e0 35E6     		b	.L293
 1621              	.L416:
 1622 03e2 FFF7FEFF 		bl	millis
 1623 03e6 D4F8E430 		ldr	r3, [r4, #228]
 1624 03ea C01A     		subs	r0, r0, r3
 1625 03ec B0F57A6F 		cmp	r0, #4000
 1626 03f0 FFF42CAE 		bcc	.L340
 1627 03f4 E06E     		ldr	r0, [r4, #108]
 1628 03f6 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1629 03fa 2671     		strb	r6, [r4, #4]
 1630 03fc 15E6     		b	.L294
 1631              	.L427:
 1632 03fe 4146     		mov	r1, r8
 1633 0400 08EB0B00 		add	r0, r8, fp
 1634 0404 FFF7FEFF 		bl	memcpy
 1635 0408 D4F8F450 		ldr	r5, [r4, #244]
 1636 040c 5D44     		add	r5, r5, fp
 1637 040e 8DE7     		b	.L323
 1638              	.L432:
 1639 0410 2A46     		mov	r2, r5
 1640 0412 4146     		mov	r1, r8
 1641 0414 2046     		mov	r0, r4
 1642 0416 FFF7FEFF 		bl	_ZN14FileInfoParser13FindPrintTimeEPKcj
 1643 041a 0028     		cmp	r0, #0
 1644 041c BBD1     		bne	.L331
 1645 041e E06E     		ldr	r0, [r4, #108]
 1646 0420 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1647 0424 236F     		ldr	r3, [r4, #112]
 1648 0426 C01A     		subs	r0, r0, r3
 1649 0428 B0F5805F 		cmp	r0, #4096
 1650 042c B3D8     		bhi	.L331
 1651 042e D4F8A430 		ldr	r3, [r4, #164]
 1652 0432 002B     		cmp	r3, #0
 1653 0434 00F0C980 		beq	.L436
ARM GAS  /tmp/ccotPdLg.s 			page 30


 1654              	.L401:
 1655 0438 FFF7FEFF 		bl	millis
 1656 043c D4F8E830 		ldr	r3, [r4, #232]
 1657 0440 9E1B     		subs	r6, r3, r6
 1658 0442 0644     		add	r6, r6, r0
 1659 0444 C4F8E860 		str	r6, [r4, #232]
 1660 0448 B5E7     		b	.L333
 1661              	.L431:
 1662 044a 2A46     		mov	r2, r5
 1663 044c 4146     		mov	r1, r8
 1664 044e 2046     		mov	r0, r4
 1665 0450 FFF7FEFF 		bl	_ZN14FileInfoParser10FindHeightEPKcj
 1666 0454 0028     		cmp	r0, #0
 1667 0456 08BF     		it	eq
 1668 0458 4FF00009 		moveq	r9, #0
 1669 045c 97E7     		b	.L329
 1670              	.L424:
 1671 045e 4A46     		mov	r2, r9
 1672 0460 4146     		mov	r1, r8
 1673 0462 2046     		mov	r0, r4
 1674 0464 FFF7FEFF 		bl	_ZN14FileInfoParser13FindPrintTimeEPKcj
 1675 0468 0640     		ands	r6, r6, r0
 1676 046a F6B2     		uxtb	r6, r6
 1677 046c 1BE7     		b	.L316
 1678              	.L429:
 1679 046e 2A46     		mov	r2, r5
 1680 0470 4146     		mov	r1, r8
 1681 0472 2046     		mov	r0, r4
 1682 0474 FFF7FEFF 		bl	_ZN14FileInfoParser16FindFilamentUsedEPKcj
 1683 0478 10F10009 		adds	r9, r0, #0
 1684 047c C4F8A800 		str	r0, [r4, #168]
 1685 0480 18BF     		it	ne
 1686 0482 4FF00109 		movne	r9, #1
 1687 0486 6FE7     		b	.L325
 1688              	.L423:
 1689 0488 4A46     		mov	r2, r9
 1690 048a 4146     		mov	r1, r8
 1691 048c 2046     		mov	r0, r4
 1692 048e FFF7FEFF 		bl	_ZN14FileInfoParser14FindSlicerInfoEPKcj
 1693 0492 0640     		ands	r6, r6, r0
 1694 0494 F6B2     		uxtb	r6, r6
 1695 0496 01E7     		b	.L315
 1696              	.L420:
 1697 0498 4A46     		mov	r2, r9
 1698 049a 4146     		mov	r1, r8
 1699 049c 2046     		mov	r0, r4
 1700 049e FFF7FEFF 		bl	_ZN14FileInfoParser16FindFilamentUsedEPKcj
 1701 04a2 061C     		adds	r6, r0, #0
 1702 04a4 C4F8A800 		str	r0, [r4, #168]
 1703 04a8 18BF     		it	ne
 1704 04aa 0126     		movne	r6, #1
 1705 04ac DBE6     		b	.L308
 1706              	.L434:
 1707 04ae E06E     		ldr	r0, [r4, #108]
 1708 04b0 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1709 04b4 236F     		ldr	r3, [r4, #112]
 1710 04b6 844A     		ldr	r2, .L438+4
ARM GAS  /tmp/ccotPdLg.s 			page 31


 1711 04b8 C01A     		subs	r0, r0, r3
 1712 04ba 9042     		cmp	r0, r2
 1713 04bc 3FF67EAF 		bhi	.L335
 1714 04c0 642D     		cmp	r5, #100
 1715 04c2 28BF     		it	cs
 1716 04c4 6425     		movcs	r5, #100
 1717 04c6 B3F5806F 		cmp	r3, #1024
 1718 04ca C4F8F450 		str	r5, [r4, #244]
 1719 04ce 05D9     		bls	.L362
 1720 04d0 A3F58063 		sub	r3, r3, #1024
 1721              	.L337:
 1722 04d4 0222     		movs	r2, #2
 1723 04d6 2367     		str	r3, [r4, #112]
 1724 04d8 2271     		strb	r2, [r4, #4]
 1725 04da 74E6     		b	.L319
 1726              	.L362:
 1727 04dc 0023     		movs	r3, #0
 1728 04de F9E7     		b	.L337
 1729              	.L433:
 1730 04e0 2A46     		mov	r2, r5
 1731 04e2 4146     		mov	r1, r8
 1732 04e4 2046     		mov	r0, r4
 1733 04e6 FFF7FEFF 		bl	_ZN14FileInfoParser17FindSimulatedTimeEPKcj
 1734 04ea 0028     		cmp	r0, #0
 1735 04ec 7FF458AF 		bne	.L334
 1736              	.L352:
 1737 04f0 E06E     		ldr	r0, [r4, #108]
 1738 04f2 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1739 04f6 236F     		ldr	r3, [r4, #112]
 1740 04f8 C01A     		subs	r0, r0, r3
 1741 04fa B0F5805F 		cmp	r0, #4096
 1742 04fe 3FF64FAF 		bhi	.L334
 1743 0502 99E7     		b	.L401
 1744              	.L430:
 1745 0504 4146     		mov	r1, r8
 1746 0506 2046     		mov	r0, r4
 1747 0508 FFF7FEFF 		bl	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7
 1748 050c 0028     		cmp	r0, #0
 1749 050e 7FF437AF 		bne	.L326
 1750 0512 33E7     		b	.L328
 1751              	.L425:
 1752 0514 E06E     		ldr	r0, [r4, #108]
 1753 0516 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1754 051a 8145     		cmp	r9, r0
 1755 051c 3FF4D6AE 		beq	.L317
 1756 0520 632D     		cmp	r5, #99
 1757 0522 0AD9     		bls	.L363
 1758 0524 6422     		movs	r2, #100
 1759 0526 A5F16406 		sub	r6, r5, #100
 1760              	.L342:
 1761 052a C4F8F420 		str	r2, [r4, #244]
 1762 052e 08EB0601 		add	r1, r8, r6
 1763 0532 4046     		mov	r0, r8
 1764 0534 FFF7FEFF 		bl	memcpy
 1765 0538 45E6     		b	.L319
 1766              	.L363:
 1767 053a 2A46     		mov	r2, r5
ARM GAS  /tmp/ccotPdLg.s 			page 32


 1768 053c F5E7     		b	.L342
 1769              	.L422:
 1770 053e 4146     		mov	r1, r8
 1771 0540 2046     		mov	r0, r4
 1772 0542 FFF7FEFF 		bl	_ZN14FileInfoParser15FindLayerHeightEPKcj.part.7
 1773 0546 0640     		ands	r6, r6, r0
 1774 0548 F6B2     		uxtb	r6, r6
 1775 054a A2E6     		b	.L312
 1776              	.L421:
 1777 054c 4A46     		mov	r2, r9
 1778 054e 4146     		mov	r1, r8
 1779 0550 2046     		mov	r0, r4
 1780 0552 FFF7FEFF 		bl	_ZN14FileInfoParser20FindFirstLayerHeightEPKcj.part.6
 1781 0556 0640     		ands	r6, r6, r0
 1782 0558 F6B2     		uxtb	r6, r6
 1783 055a 8FE6     		b	.L309
 1784              	.L426:
 1785 055c E06E     		ldr	r0, [r4, #108]
 1786 055e DAF80050 		ldr	r5, [r10]
 1787 0562 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1788 0566 0646     		mov	r6, r0
 1789 0568 D4F8E800 		ldr	r0, [r4, #232]
 1790 056c FFF7FEFF 		bl	__aeabi_ui2f
 1791 0570 5649     		ldr	r1, .L438+8
 1792 0572 FFF7FEFF 		bl	__aeabi_fdiv
 1793 0576 FFF7FEFF 		bl	__aeabi_f2d
 1794 057a CDE90201 		strd	r0, [sp, #8]
 1795 057e D4F8EC00 		ldr	r0, [r4, #236]
 1796 0582 FFF7FEFF 		bl	__aeabi_ui2f
 1797 0586 5149     		ldr	r1, .L438+8
 1798 0588 FFF7FEFF 		bl	__aeabi_fdiv
 1799 058c FFF7FEFF 		bl	__aeabi_f2d
 1800 0590 3346     		mov	r3, r6
 1801 0592 CDE90001 		strd	r0, [sp]
 1802 0596 4E4A     		ldr	r2, .L438+12
 1803 0598 2846     		mov	r0, r5
 1804 059a 0121     		movs	r1, #1
 1805 059c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1806 05a0 99E6     		b	.L344
 1807              	.L414:
 1808 05a2 C4F8E860 		str	r6, [r4, #232]
 1809 05a6 C4F8EC60 		str	r6, [r4, #236]
 1810 05aa 4946     		mov	r1, r9
 1811 05ac D8F80000 		ldr	r0, [r8]
 1812 05b0 069B     		ldr	r3, [sp, #24]
 1813 05b2 484A     		ldr	r2, .L438+16
 1814 05b4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1815 05b8 9CE5     		b	.L299
 1816              	.L415:
 1817 05ba 4749     		ldr	r1, .L438+20
 1818 05bc 0698     		ldr	r0, [sp, #24]
 1819 05be FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1820 05c2 98B1     		cbz	r0, .L437
 1821              	.L301:
 1822 05c4 0123     		movs	r3, #1
 1823 05c6 2371     		strb	r3, [r4, #4]
 1824 05c8 B3E5     		b	.L297
ARM GAS  /tmp/ccotPdLg.s 			page 33


 1825              	.L436:
 1826 05ca 2A46     		mov	r2, r5
 1827 05cc 4146     		mov	r1, r8
 1828 05ce 2046     		mov	r0, r4
 1829 05d0 FFF7FEFF 		bl	_ZN14FileInfoParser17FindSimulatedTimeEPKcj
 1830 05d4 8146     		mov	r9, r0
 1831 05d6 0028     		cmp	r0, #0
 1832 05d8 8AD0     		beq	.L352
 1833 05da FFF7FEFF 		bl	millis
 1834 05de D4F8E830 		ldr	r3, [r4, #232]
 1835 05e2 9B1B     		subs	r3, r3, r6
 1836 05e4 0344     		add	r3, r3, r0
 1837 05e6 C4F8E830 		str	r3, [r4, #232]
 1838 05ea E4E6     		b	.L333
 1839              	.L437:
 1840 05ec 3B49     		ldr	r1, .L438+24
 1841 05ee 0698     		ldr	r0, [sp, #24]
 1842 05f0 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1843 05f4 0028     		cmp	r0, #0
 1844 05f6 E5D1     		bne	.L301
 1845 05f8 3949     		ldr	r1, .L438+28
 1846 05fa 0698     		ldr	r0, [sp, #24]
 1847 05fc FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1848 0600 0028     		cmp	r0, #0
 1849 0602 DFD1     		bne	.L301
 1850 0604 3749     		ldr	r1, .L438+32
 1851 0606 0698     		ldr	r0, [sp, #24]
 1852 0608 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1853 060c 0028     		cmp	r0, #0
 1854 060e D9D1     		bne	.L301
 1855 0610 76E5     		b	.L300
 1856              	.L418:
 1857 0612 8146     		mov	r9, r0
 1858 0614 2B4B     		ldr	r3, .L438
 1859 0616 344A     		ldr	r2, .L438+36
 1860 0618 1868     		ldr	r0, [r3]
 1861 061a 40F2B511 		movw	r1, #437
 1862 061e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1863 0622 E06E     		ldr	r0, [r4, #108]
 1864 0624 84F80490 		strb	r9, [r4, #4]
 1865              	.L403:
 1866 0628 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1867 062c 04F17401 		add	r1, r4, #116
 1868 0630 0898     		ldr	r0, [sp, #32]
 1869 0632 6D22     		movs	r2, #109
 1870 0634 FFF7FEFF 		bl	memcpy
 1871 0638 09E5     		b	.L293
 1872              	.L428:
 1873 063a 224A     		ldr	r2, .L438
 1874 063c 069B     		ldr	r3, [sp, #24]
 1875 063e 1068     		ldr	r0, [r2]
 1876 0640 2A4A     		ldr	r2, .L438+40
 1877              	.L402:
 1878 0642 40F2B511 		movw	r1, #437
 1879 0646 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1880 064a 0023     		movs	r3, #0
 1881 064c E06E     		ldr	r0, [r4, #108]
ARM GAS  /tmp/ccotPdLg.s 			page 34


 1882 064e 2371     		strb	r3, [r4, #4]
 1883 0650 EAE7     		b	.L403
 1884              	.L419:
 1885 0652 1C4A     		ldr	r2, .L438
 1886 0654 069B     		ldr	r3, [sp, #24]
 1887 0656 1068     		ldr	r0, [r2]
 1888 0658 254A     		ldr	r2, .L438+44
 1889 065a F2E7     		b	.L402
 1890              	.L435:
 1891 065c E06E     		ldr	r0, [r4, #108]
 1892 065e 1E68     		ldr	r6, [r3]
 1893 0660 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1894 0664 0546     		mov	r5, r0
 1895 0666 E06E     		ldr	r0, [r4, #108]
 1896 0668 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1897 066c 05F58065 		add	r5, r5, #1024
 1898 0670 2D1A     		subs	r5, r5, r0
 1899 0672 D4F8F000 		ldr	r0, [r4, #240]
 1900 0676 FFF7FEFF 		bl	__aeabi_ui2f
 1901 067a 1449     		ldr	r1, .L438+8
 1902 067c FFF7FEFF 		bl	__aeabi_fdiv
 1903 0680 FFF7FEFF 		bl	__aeabi_f2d
 1904 0684 CDE90401 		strd	r0, [sp, #16]
 1905 0688 D4F8E800 		ldr	r0, [r4, #232]
 1906 068c FFF7FEFF 		bl	__aeabi_ui2f
 1907 0690 0E49     		ldr	r1, .L438+8
 1908 0692 FFF7FEFF 		bl	__aeabi_fdiv
 1909 0696 FFF7FEFF 		bl	__aeabi_f2d
 1910 069a CDE90201 		strd	r0, [sp, #8]
 1911 069e D4F8EC00 		ldr	r0, [r4, #236]
 1912 06a2 FFF7FEFF 		bl	__aeabi_ui2f
 1913 06a6 0949     		ldr	r1, .L438+8
 1914 06a8 FFF7FEFF 		bl	__aeabi_fdiv
 1915 06ac FFF7FEFF 		bl	__aeabi_f2d
 1916 06b0 2B46     		mov	r3, r5
 1917 06b2 CDE90001 		strd	r0, [sp]
 1918 06b6 0F4A     		ldr	r2, .L438+48
 1919 06b8 3046     		mov	r0, r6
 1920 06ba 0121     		movs	r1, #1
 1921 06bc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1922 06c0 81E6     		b	.L348
 1923              	.L439:
 1924 06c2 00BF     		.align	2
 1925              	.L438:
 1926 06c4 00000000 		.word	reprap
 1927 06c8 7F1A0600 		.word	399999
 1928 06cc 00007A44 		.word	1148846080
 1929 06d0 5C000000 		.word	.LC27
 1930 06d4 00000000 		.word	.LC21
 1931 06d8 18000000 		.word	.LC22
 1932 06dc 20000000 		.word	.LC23
 1933 06e0 24000000 		.word	.LC24
 1934 06e4 2C000000 		.word	.LC25
 1935 06e8 A8000000 		.word	.LC28
 1936 06ec CC000000 		.word	.LC29
 1937 06f0 30000000 		.word	.LC26
 1938 06f4 FC000000 		.word	.LC30
ARM GAS  /tmp/ccotPdLg.s 			page 35


 1939              		.size	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob, .-_ZN14FileInfoParser11GetFileInfo
 1940              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1941              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1942              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1943              	_ZL28cpu_irq_prev_interrupt_state:
 1944 0000 00       		.space	1
 1945              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1946              		.align	2
 1947              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1948              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1949              	_ZL32cpu_irq_critical_section_counter:
 1950 0000 00000000 		.space	4
 1951              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1952              		.align	2
 1953              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1954              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1955              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1956 0000 00000000 		.space	4
 1957              		.section	.rodata._ZN14FileInfoParser10FindHeightEPKcj.str1.4,"aMS",%progbits,1
 1958              		.align	2
 1959              	.LC3:
 1960 0000 3B4500   		.ascii	";E\000"
 1961 0003 00       		.space	1
 1962              	.LC4:
 1963 0004 3B204500 		.ascii	"; E\000"
 1964              		.section	.rodata._ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob.str1.4,"aMS",%progbits,1
 1965              		.align	2
 1966              	.LC21:
 1967 0000 2D2D2050 		.ascii	"-- Parsing file %s --\012\000"
 1967      61727369 
 1967      6E672066 
 1967      696C6520 
 1967      2573202D 
 1968 0017 00       		.space	1
 1969              	.LC22:
 1970 0018 2E67636F 		.ascii	".gcode\000"
 1970      646500
 1971 001f 00       		.space	1
 1972              	.LC23:
 1973 0020 2E6700   		.ascii	".g\000"
 1974 0023 00       		.space	1
 1975              	.LC24:
 1976 0024 2E67636F 		.ascii	".gco\000"
 1976      00
 1977 0029 000000   		.space	3
 1978              	.LC25:
 1979 002c 2E676300 		.ascii	".gc\000"
 1980              	.LC26:
 1981 0030 4661696C 		.ascii	"Failed to read header of G-Code file \"%s\"\012\000"
 1981      65642074 
 1981      6F207265 
 1981      61642068 
 1981      65616465 
 1982 005b 00       		.space	1
 1983              	.LC27:
 1984 005c 48656164 		.ascii	"Header complete, processed %lu bytes, read time %.3"
 1984      65722063 
ARM GAS  /tmp/ccotPdLg.s 			page 36


 1984      6F6D706C 
 1984      6574652C 
 1984      2070726F 
 1985 008f 66732C20 		.ascii	"fs, parse time %.3fs\012\000"
 1985      70617273 
 1985      65207469 
 1985      6D652025 
 1985      2E336673 
 1986 00a5 000000   		.space	3
 1987              	.LC28:
 1988 00a8 436F756C 		.ascii	"Could not seek from end of file!\012\000"
 1988      64206E6F 
 1988      74207365 
 1988      656B2066 
 1988      726F6D20 
 1989 00ca 0000     		.space	2
 1990              	.LC29:
 1991 00cc 4661696C 		.ascii	"Failed to read footer from G-Code file \"%s\"\012\000"
 1991      65642074 
 1991      6F207265 
 1991      61642066 
 1991      6F6F7465 
 1992 00f9 000000   		.space	3
 1993              	.LC30:
 1994 00fc 466F6F74 		.ascii	"Footer complete, processed %lu bytes, read time %.3"
 1994      65722063 
 1994      6F6D706C 
 1994      6574652C 
 1994      2070726F 
 1995 012f 66732C20 		.ascii	"fs, parse time %.3fs, seek time %.3fs\012\000"
 1995      70617273 
 1995      65207469 
 1995      6D652025 
 1995      2E336673 
 1996              		.section	.rodata._ZN14FileInfoParser13FindPrintTimeEPKcj.str1.4,"aMS",%progbits,1
 1997              		.align	2
 1998              	.LC16:
 1999 0000 20657374 		.ascii	" estimated printing time\000"
 1999      696D6174 
 1999      65642070 
 1999      72696E74 
 1999      696E6720 
 2000 0019 000000   		.space	3
 2001              	.LC17:
 2002 001c 20093D3A 		.ascii	" \011=:\000"
 2002      00
 2003 0021 000000   		.space	3
 2004              	.LC18:
 2005 0024 686F7572 		.ascii	"hours\000"
 2005      7300
 2006 002a 0000     		.space	2
 2007              	.LC19:
 2008 002c 6D696E75 		.ascii	"minutes\000"
 2008      74657300 
 2009              		.section	.rodata._ZN14FileInfoParser14FindSlicerInfoEPKcj.str1.4,"aMS",%progbits,1
 2010              		.align	2
 2011              	.LC5:
ARM GAS  /tmp/ccotPdLg.s 			page 37


 2012 0000 67656E65 		.ascii	"generated by \000"
 2012      72617465 
 2012      64206279 
 2012      2000
 2013 000e 0000     		.space	2
 2014              	.LC6:
 2015 0010 00       		.ascii	"\000"
 2016 0011 000000   		.space	3
 2017              	.LC7:
 2018 0014 43757261 		.ascii	"Cura at \000"
 2018      20617420 
 2018      00
 2019              		.section	.rodata._ZN14FileInfoParser15FindLayerHeightEPKcj.part.7.str1.4,"aMS",%progbits,1
 2020              		.align	2
 2021              	.LC0:
 2022 0000 6C617965 		.ascii	"layer_height\000"
 2022      725F6865 
 2022      69676874 
 2022      00
 2023 000d 000000   		.space	3
 2024              	.LC1:
 2025 0010 20093D3A 		.ascii	" \011=:,\000"
 2025      2C00
 2026              		.section	.rodata._ZN14FileInfoParser16FindFilamentUsedEPKcj.str1.4,"aMS",%progbits,1
 2027              		.align	2
 2028              	.LC8:
 2029 0000 696C616D 		.ascii	"ilament used\000"
 2029      656E7420 
 2029      75736564 
 2029      00
 2030 000d 000000   		.space	3
 2031              	.LC9:
 2032 0010 203A3D09 		.ascii	" :=\011\000"
 2032      00
 2033 0015 000000   		.space	3
 2034              	.LC10:
 2035 0018 2C200900 		.ascii	", \011\000"
 2036              	.LC11:
 2037 001c 3B4D6174 		.ascii	";Material#\000"
 2037      65726961 
 2037      6C2300
 2038 0027 00       		.space	1
 2039              	.LC12:
 2040 0028 20557365 		.ascii	" Used:\011\000"
 2040      643A0900 
 2041              	.LC13:
 2042 0030 696C616D 		.ascii	"ilament length\000"
 2042      656E7420 
 2042      6C656E67 
 2042      746800
 2043 003f 00       		.space	1
 2044              	.LC14:
 2045 0040 3B204573 		.ascii	"; Estimated Build Volume: \000"
 2045      74696D61 
 2045      74656420 
 2045      4275696C 
 2045      6420566F 
ARM GAS  /tmp/ccotPdLg.s 			page 38


 2046 005b 00       		.space	1
 2047              	.LC15:
 2048 005c 3B202020 		.ascii	";    Ext \000"
 2048      20457874 
 2048      2000
 2049              		.section	.rodata._ZN14FileInfoParser17FindSimulatedTimeEPKcj.str1.4,"aMS",%progbits,1
 2050              		.align	2
 2051              	.LC20:
 2052 0000 0A3B2053 		.ascii	"\012; Simulated print time\000"
 2052      696D756C 
 2052      61746564 
 2052      20707269 
 2052      6E742074 
 2053              		.section	.rodata._ZN14FileInfoParserC2Ev.str1.4,"aMS",%progbits,1
 2054              		.align	2
 2055              	.LC2:
 2056 0000 46696C65 		.ascii	"FileInfoParser\000"
 2056      496E666F 
 2056      50617273 
 2056      657200
 2057              		.section	.rodata._ZZN14FileInfoParser10FindHeightEPKcjE21kisslicerHeightString,"a",%progbits
 2058              		.align	2
 2059              		.set	.LANCHOR1,. + 0
 2060              		.type	_ZZN14FileInfoParser10FindHeightEPKcjE21kisslicerHeightString, %object
 2061              		.size	_ZZN14FileInfoParser10FindHeightEPKcjE21kisslicerHeightString, 21
 2062              	_ZZN14FileInfoParser10FindHeightEPKcjE21kisslicerHeightString:
 2063 0000 20454E44 		.ascii	" END_LAYER_OBJECT z=\000"
 2063      5F4C4159 
 2063      45525F4F 
 2063      424A4543 
 2063      54207A3D 
 2064              		.section	.rodata._ZZN14FileInfoParser13FindPrintTimeEPKcjE16PrintTimeStrings,"a",%progbits
 2065              		.align	2
 2066              		.set	.LANCHOR3,. + 0
 2067              		.type	_ZZN14FileInfoParser13FindPrintTimeEPKcjE16PrintTimeStrings, %object
 2068              		.size	_ZZN14FileInfoParser13FindPrintTimeEPKcjE16PrintTimeStrings, 12
 2069              	_ZZN14FileInfoParser13FindPrintTimeEPKcjE16PrintTimeStrings:
 2070 0000 00000000 		.word	.LC16
 2071 0004 00000000 		.word	.LC31
 2072 0008 08000000 		.word	.LC32
 2073              		.section	.rodata._ZZN14FileInfoParser14FindSlicerInfoEPKcjE18GeneratedByStrings,"a",%progbits
 2074              		.align	2
 2075              		.set	.LANCHOR2,. + 0
 2076              		.type	_ZZN14FileInfoParser14FindSlicerInfoEPKcjE18GeneratedByStrings, %object
 2077              		.size	_ZZN14FileInfoParser14FindSlicerInfoEPKcjE18GeneratedByStrings, 20
 2078              	_ZZN14FileInfoParser14FindSlicerInfoEPKcjE18GeneratedByStrings:
 2079 0000 00000000 		.word	.LC5
 2080 0004 14000000 		.word	.LC33
 2081 0008 20000000 		.word	.LC34
 2082 000c 2C000000 		.word	.LC35
 2083 0010 3C000000 		.word	.LC36
 2084              		.section	.rodata._ZZN14FileInfoParser15FindLayerHeightEPKcjE18layerHeightStrings,"a",%progbits
 2085              		.align	2
 2086              		.set	.LANCHOR0,. + 0
 2087              		.type	_ZZN14FileInfoParser15FindLayerHeightEPKcjE18layerHeightStrings, %object
 2088              		.size	_ZZN14FileInfoParser15FindLayerHeightEPKcjE18layerHeightStrings, 20
 2089              	_ZZN14FileInfoParser15FindLayerHeightEPKcjE18layerHeightStrings:
ARM GAS  /tmp/ccotPdLg.s 			page 39


 2090 0000 00000000 		.word	.LC0
 2091 0004 50000000 		.word	.LC37
 2092 0008 60000000 		.word	.LC38
 2093 000c 6C000000 		.word	.LC39
 2094 0010 80000000 		.word	.LC40
 2095              		.section	.rodata.str1.4,"aMS",%progbits,1
 2096              		.align	2
 2097              	.LC31:
 2098 0000 3B54494D 		.ascii	";TIME\000"
 2098      4500
 2099 0006 0000     		.space	2
 2100              	.LC32:
 2101 0008 20427569 		.ascii	" Build time\000"
 2101      6C642074 
 2101      696D6500 
 2102              	.LC33:
 2103 0014 3B536C69 		.ascii	";Sliced by \000"
 2103      63656420 
 2103      62792000 
 2104              	.LC34:
 2105 0020 3B204B49 		.ascii	"; KISSlicer\000"
 2105      53536C69 
 2105      63657200 
 2106              	.LC35:
 2107 002c 3B536C69 		.ascii	";Sliced at: \000"
 2107      63656420 
 2107      61743A20 
 2107      00
 2108 0039 000000   		.space	3
 2109              	.LC36:
 2110 003c 3B47656E 		.ascii	";Generated with \000"
 2110      65726174 
 2110      65642077 
 2110      69746820 
 2110      00
 2111 004d 000000   		.space	3
 2112              	.LC37:
 2113 0050 4C617965 		.ascii	"Layer height\000"
 2113      72206865 
 2113      69676874 
 2113      00
 2114 005d 000000   		.space	3
 2115              	.LC38:
 2116 0060 6C617965 		.ascii	"layerHeight\000"
 2116      72486569 
 2116      67687400 
 2117              	.LC39:
 2118 006c 6C617965 		.ascii	"layer_thickness_mm\000"
 2118      725F7468 
 2118      69636B6E 
 2118      6573735F 
 2118      6D6D00
 2119 007f 00       		.space	1
 2120              	.LC40:
 2121 0080 6C617965 		.ascii	"layerThickness\000"
 2121      72546869 
 2121      636B6E65 
ARM GAS  /tmp/ccotPdLg.s 			page 40


 2121      737300
 2122              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
