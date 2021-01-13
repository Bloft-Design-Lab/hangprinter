ARM GAS  /tmp/cc7dtM4H.s 			page 1


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
  11              		.file	"DDA.cpp"
  12              		.section	.text._ZNK10Kinematics24IsContinuousRotationAxisEj,"axG",%progbits,_ZNK10Kinematics24IsCo
  13              		.align	1
  14              		.p2align 2,,3
  15              		.weak	_ZNK10Kinematics24IsContinuousRotationAxisEj
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZNK10Kinematics24IsContinuousRotationAxisEj, %function
  21              	_ZNK10Kinematics24IsContinuousRotationAxisEj:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0020     		movs	r0, #0
  26 0002 7047     		bx	lr
  27              		.size	_ZNK10Kinematics24IsContinuousRotationAxisEj, .-_ZNK10Kinematics24IsContinuousRotationAxisEj
  28              		.section	.text._ZN3DDA10PrintMovesEv,"ax",%progbits
  29              		.align	1
  30              		.p2align 2,,3
  31              		.global	_ZN3DDA10PrintMovesEv
  32              		.syntax unified
  33              		.thumb
  34              		.thumb_func
  35              		.fpu softvfp
  36              		.type	_ZN3DDA10PrintMovesEv, %function
  37              	_ZN3DDA10PrintMovesEv:
  38              		@ args = 0, pretend = 0, frame = 0
  39              		@ frame_needed = 0, uses_anonymous_args = 0
  40              		@ link register save eliminated.
  41 0000 7047     		bx	lr
  42              		.size	_ZN3DDA10PrintMovesEv, .-_ZN3DDA10PrintMovesEv
  43 0002 00BF     		.section	.text._ZN3DDAC2EPS_,"ax",%progbits
  44              		.align	1
  45              		.p2align 2,,3
  46              		.global	_ZN3DDAC2EPS_
  47              		.syntax unified
  48              		.thumb
  49              		.thumb_func
  50              		.fpu softvfp
  51              		.type	_ZN3DDAC2EPS_, %function
  52              	_ZN3DDAC2EPS_:
  53              		@ args = 0, pretend = 0, frame = 0
  54              		@ frame_needed = 0, uses_anonymous_args = 0
  55              		@ link register save eliminated.
  56 0000 0023     		movs	r3, #0
  57 0002 10B4     		push	{r4}
ARM GAS  /tmp/cc7dtM4H.s 			page 2


  58 0004 80E80A00 		stm	r0, {r1, r3}
  59 0008 1C46     		mov	r4, r3
  60 000a 0372     		strb	r3, [r0, #8]
  61 000c 00F1F402 		add	r2, r0, #244
  62 0010 00F1D003 		add	r3, r0, #208
  63              	.L4:
  64 0014 43F8044B 		str	r4, [r3], #4
  65 0018 9A42     		cmp	r2, r3
  66 001a FBD1     		bne	.L4
  67 001c 10BC     		pop	{r4}
  68 001e 7047     		bx	lr
  69              		.size	_ZN3DDAC2EPS_, .-_ZN3DDAC2EPS_
  70              		.global	_ZN3DDAC1EPS_
  71              		.thumb_set _ZN3DDAC1EPS_,_ZN3DDAC2EPS_
  72              		.section	.text._ZN3DDA10ReleaseDMsEv,"ax",%progbits
  73              		.align	1
  74              		.p2align 2,,3
  75              		.global	_ZN3DDA10ReleaseDMsEv
  76              		.syntax unified
  77              		.thumb
  78              		.thumb_func
  79              		.fpu softvfp
  80              		.type	_ZN3DDA10ReleaseDMsEv, %function
  81              	_ZN3DDA10ReleaseDMsEv:
  82              		@ args = 0, pretend = 0, frame = 0
  83              		@ frame_needed = 0, uses_anonymous_args = 0
  84 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  85 0002 0025     		movs	r5, #0
  86 0004 2F46     		mov	r7, r5
  87 0006 DFF834E0 		ldr	lr, .L21+4
  88 000a 0B49     		ldr	r1, .L21
  89 000c DEF80020 		ldr	r2, [lr]
  90 0010 00F1F406 		add	r6, r0, #244
  91 0014 D030     		adds	r0, r0, #208
  92              	.L10:
  93 0016 0368     		ldr	r3, [r0]
  94 0018 2BB1     		cbz	r3, .L9
  95 001a 0125     		movs	r5, #1
  96 001c 0C68     		ldr	r4, [r1]
  97 001e 2A44     		add	r2, r2, r5
  98 0020 1C60     		str	r4, [r3]
  99 0022 0B60     		str	r3, [r1]
 100 0024 0760     		str	r7, [r0]
 101              	.L9:
 102 0026 0430     		adds	r0, r0, #4
 103 0028 8642     		cmp	r6, r0
 104 002a F4D1     		bne	.L10
 105 002c 05B9     		cbnz	r5, .L20
 106              	.L8:
 107 002e F0BD     		pop	{r4, r5, r6, r7, pc}
 108              	.L20:
 109 0030 CEF80020 		str	r2, [lr]
 110 0034 FBE7     		b	.L8
 111              	.L22:
 112 0036 00BF     		.align	2
 113              	.L21:
 114 0038 00000000 		.word	_ZN13DriveMovement8freeListE
ARM GAS  /tmp/cc7dtM4H.s 			page 3


 115 003c 00000000 		.word	_ZN13DriveMovement7numFreeE
 116              		.size	_ZN3DDA10ReleaseDMsEv, .-_ZN3DDA10ReleaseDMsEv
 117              		.section	.text._ZNK3DDA11GetTimeLeftEv,"ax",%progbits
 118              		.align	1
 119              		.p2align 2,,3
 120              		.global	_ZNK3DDA11GetTimeLeftEv
 121              		.syntax unified
 122              		.thumb
 123              		.thumb_func
 124              		.fpu softvfp
 125              		.type	_ZNK3DDA11GetTimeLeftEv, %function
 126              	_ZNK3DDA11GetTimeLeftEv:
 127              		@ args = 0, pretend = 0, frame = 0
 128              		@ frame_needed = 0, uses_anonymous_args = 0
 129              		@ link register save eliminated.
 130 0000 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 131 0002 042B     		cmp	r3, #4
 132 0004 05D0     		beq	.L26
 133 0006 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 134 0008 032B     		cmp	r3, #3
 135 000a 04D0     		beq	.L27
 136 000c D0F8B400 		ldr	r0, [r0, #180]
 137 0010 7047     		bx	lr
 138              	.L26:
 139 0012 0020     		movs	r0, #0
 140 0014 7047     		bx	lr
 141              	.L27:
 142 0016 044A     		ldr	r2, .L28
 143 0018 D0F8B830 		ldr	r3, [r0, #184]
 144 001c D0F8B400 		ldr	r0, [r0, #180]
 145 0020 1269     		ldr	r2, [r2, #16]
 146 0022 1844     		add	r0, r0, r3
 147 0024 801A     		subs	r0, r0, r2
 148 0026 7047     		bx	lr
 149              	.L29:
 150              		.align	2
 151              	.L28:
 152 0028 00400840 		.word	1074282496
 153              		.size	_ZNK3DDA11GetTimeLeftEv, .-_ZNK3DDA11GetTimeLeftEv
 154              		.section	.text._ZN3DDA8RemoveDMEj,"ax",%progbits
 155              		.align	1
 156              		.p2align 2,,3
 157              		.global	_ZN3DDA8RemoveDMEj
 158              		.syntax unified
 159              		.thumb
 160              		.thumb_func
 161              		.fpu softvfp
 162              		.type	_ZN3DDA8RemoveDMEj, %function
 163              	_ZN3DDA8RemoveDMEj:
 164              		@ args = 0, pretend = 0, frame = 0
 165              		@ frame_needed = 0, uses_anonymous_args = 0
 166              		@ link register save eliminated.
 167 0000 D0F8CC20 		ldr	r2, [r0, #204]
 168 0004 52B1     		cbz	r2, .L30
 169 0006 5379     		ldrb	r3, [r2, #5]	@ zero_extendqisi2
 170 0008 9942     		cmp	r1, r3
 171 000a 04D1     		bne	.L34
ARM GAS  /tmp/cc7dtM4H.s 			page 4


 172 000c 0BE0     		b	.L40
 173              	.L35:
 174 000e 5879     		ldrb	r0, [r3, #5]	@ zero_extendqisi2
 175 0010 8842     		cmp	r0, r1
 176 0012 04D0     		beq	.L41
 177 0014 1A46     		mov	r2, r3
 178              	.L34:
 179 0016 1368     		ldr	r3, [r2]
 180 0018 002B     		cmp	r3, #0
 181 001a F8D1     		bne	.L35
 182              	.L30:
 183 001c 7047     		bx	lr
 184              	.L41:
 185 001e 1046     		mov	r0, r2
 186              	.L33:
 187 0020 1B68     		ldr	r3, [r3]
 188 0022 0360     		str	r3, [r0]
 189 0024 7047     		bx	lr
 190              	.L40:
 191 0026 CC30     		adds	r0, r0, #204
 192 0028 1346     		mov	r3, r2
 193 002a F9E7     		b	.L33
 194              		.size	_ZN3DDA8RemoveDMEj, .-_ZN3DDA8RemoveDMEj
 195              		.global	__aeabi_f2d
 196              		.section	.text._ZNK3DDA16DebugPrintVectorEPKcPKfj,"ax",%progbits
 197              		.align	1
 198              		.p2align 2,,3
 199              		.global	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 200              		.syntax unified
 201              		.thumb
 202              		.thumb_func
 203              		.fpu softvfp
 204              		.type	_ZNK3DDA16DebugPrintVectorEPKcPKfj, %function
 205              	_ZNK3DDA16DebugPrintVectorEPKcPKfj:
 206              		@ args = 0, pretend = 0, frame = 0
 207              		@ frame_needed = 0, uses_anonymous_args = 0
 208 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 209 0004 1F46     		mov	r7, r3
 210 0006 0F48     		ldr	r0, .L47
 211 0008 1546     		mov	r5, r2
 212 000a FFF7FEFF 		bl	debugPrintf
 213 000e 9FB1     		cbz	r7, .L44
 214 0010 0024     		movs	r4, #0
 215 0012 5B26     		movs	r6, #91
 216 0014 DFF83480 		ldr	r8, .L47+8
 217 0018 043D     		subs	r5, r5, #4
 218              	.L45:
 219 001a 55F8040F 		ldr	r0, [r5, #4]!	@ float
 220 001e FFF7FEFF 		bl	__aeabi_f2d
 221 0022 0134     		adds	r4, r4, #1
 222 0024 0246     		mov	r2, r0
 223 0026 0B46     		mov	r3, r1
 224 0028 4046     		mov	r0, r8
 225 002a 3146     		mov	r1, r6
 226 002c FFF7FEFF 		bl	debugPrintf
 227 0030 A742     		cmp	r7, r4
 228 0032 4FF02006 		mov	r6, #32
ARM GAS  /tmp/cc7dtM4H.s 			page 5


 229 0036 F0D1     		bne	.L45
 230              	.L44:
 231 0038 0348     		ldr	r0, .L47+4
 232 003a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 233 003e FFF7FEBF 		b	debugPrintf
 234              	.L48:
 235 0042 00BF     		.align	2
 236              	.L47:
 237 0044 00000000 		.word	.LC0
 238 0048 04000000 		.word	.LC1
 239 004c 08000000 		.word	.LC2
 240              		.size	_ZNK3DDA16DebugPrintVectorEPKcPKfj, .-_ZNK3DDA16DebugPrintVectorEPKcPKfj
 241              		.global	__aeabi_fmul
 242              		.global	__aeabi_fsub
 243              		.section	.text._ZNK3DDA10DebugPrintEv,"ax",%progbits
 244              		.align	1
 245              		.p2align 2,,3
 246              		.global	_ZNK3DDA10DebugPrintEv
 247              		.syntax unified
 248              		.thumb
 249              		.thumb_func
 250              		.fpu softvfp
 251              		.type	_ZNK3DDA10DebugPrintEv, %function
 252              	_ZNK3DDA10DebugPrintEv:
 253              		@ args = 0, pretend = 0, frame = 40
 254              		@ frame_needed = 0, uses_anonymous_args = 0
 255 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 256 0004 0446     		mov	r4, r0
 257 0006 4A4B     		ldr	r3, .L60
 258 0008 9BB0     		sub	sp, sp, #108
 259 000a 1B69     		ldr	r3, [r3, #16]	@ unaligned
 260 000c 4948     		ldr	r0, .L60+4
 261 000e D3F8F891 		ldr	r9, [r3, #504]
 262 0012 FFF7FEFF 		bl	debugPrintf
 263 0016 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 264 0018 DB07     		lsls	r3, r3, #31
 265 001a 7BD5     		bpl	.L58
 266 001c B9F1000F 		cmp	r9, #0
 267 0020 7CD0     		beq	.L59
 268 0022 04F14003 		add	r3, r4, #64
 269 0026 14AA     		add	r2, sp, #80
 270 0028 04F16401 		add	r1, r4, #100
 271 002c 1D46     		mov	r5, r3
 272 002e 9346     		mov	fp, r2
 273 0030 0E46     		mov	r6, r1
 274 0032 09F11007 		add	r7, r9, #16
 275 0036 D4F88880 		ldr	r8, [r4, #136]	@ float
 276 003a 1393     		str	r3, [sp, #76]
 277 003c 1292     		str	r2, [sp, #72]
 278 003e 1191     		str	r1, [sp, #68]
 279 0040 04EB8707 		add	r7, r4, r7, lsl #2
 280              	.L53:
 281 0044 4146     		mov	r1, r8
 282 0046 56F8040B 		ldr	r0, [r6], #4	@ float
 283 004a FFF7FEFF 		bl	__aeabi_fmul
 284 004e 55F804AB 		ldr	r10, [r5], #4	@ float
 285 0052 0146     		mov	r1, r0
ARM GAS  /tmp/cc7dtM4H.s 			page 6


 286 0054 5046     		mov	r0, r10
 287 0056 FFF7FEFF 		bl	__aeabi_fsub
 288 005a BD42     		cmp	r5, r7
 289 005c 4BF8040B 		str	r0, [fp], #4	@ float
 290 0060 F0D1     		bne	.L53
 291              	.L52:
 292 0062 129A     		ldr	r2, [sp, #72]
 293 0064 4B46     		mov	r3, r9
 294 0066 3449     		ldr	r1, .L60+8
 295 0068 2046     		mov	r0, r4
 296 006a FFF7FEFF 		bl	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 297 006e 4B46     		mov	r3, r9
 298 0070 139A     		ldr	r2, [sp, #76]
 299 0072 3249     		ldr	r1, .L60+12
 300 0074 2046     		mov	r0, r4
 301 0076 FFF7FEFF 		bl	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 302              	.L50:
 303 007a D4F88800 		ldr	r0, [r4, #136]	@ float
 304 007e FFF7FEFF 		bl	__aeabi_f2d
 305 0082 0246     		mov	r2, r0
 306 0084 0B46     		mov	r3, r1
 307 0086 2E48     		ldr	r0, .L60+16
 308 0088 FFF7FEFF 		bl	debugPrintf
 309 008c 119A     		ldr	r2, [sp, #68]
 310 008e 0523     		movs	r3, #5
 311 0090 2046     		mov	r0, r4
 312 0092 2C49     		ldr	r1, .L60+20
 313 0094 FFF7FEFF 		bl	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 314 0098 D4F88C00 		ldr	r0, [r4, #140]	@ float
 315 009c FFF7FEFF 		bl	__aeabi_f2d
 316 00a0 D4F8BC20 		ldr	r2, [r4, #188]
 317 00a4 D4F8B430 		ldr	r3, [r4, #180]
 318 00a8 D4F8C450 		ldr	r5, [r4, #196]
 319 00ac 0F46     		mov	r7, r1
 320 00ae D4F8C010 		ldr	r1, [r4, #192]
 321 00b2 0646     		mov	r6, r0
 322 00b4 D4F8AC00 		ldr	r0, [r4, #172]	@ float
 323 00b8 0D92     		str	r2, [sp, #52]
 324 00ba 0C93     		str	r3, [sp, #48]
 325 00bc 0F95     		str	r5, [sp, #60]
 326 00be 0E91     		str	r1, [sp, #56]
 327 00c0 FFF7FEFF 		bl	__aeabi_f2d
 328 00c4 CDE90A01 		strd	r0, [sp, #40]
 329 00c8 D4F8A800 		ldr	r0, [r4, #168]	@ float
 330 00cc FFF7FEFF 		bl	__aeabi_f2d
 331 00d0 CDE90801 		strd	r0, [sp, #32]
 332 00d4 D4F8A000 		ldr	r0, [r4, #160]	@ float
 333 00d8 FFF7FEFF 		bl	__aeabi_f2d
 334 00dc CDE90601 		strd	r0, [sp, #24]
 335 00e0 D4F8A400 		ldr	r0, [r4, #164]	@ float
 336 00e4 FFF7FEFF 		bl	__aeabi_f2d
 337 00e8 CDE90401 		strd	r0, [sp, #16]
 338 00ec D4F89C00 		ldr	r0, [r4, #156]	@ float
 339 00f0 FFF7FEFF 		bl	__aeabi_f2d
 340 00f4 CDE90201 		strd	r0, [sp, #8]
 341 00f8 D4F89000 		ldr	r0, [r4, #144]	@ float
 342 00fc FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/cc7dtM4H.s 			page 7


 343 0100 3246     		mov	r2, r6
 344 0102 CDE90001 		strd	r0, [sp]
 345 0106 3B46     		mov	r3, r7
 346 0108 0F48     		ldr	r0, .L60+24
 347 010a FFF7FEFF 		bl	debugPrintf
 348 010e 1BB0     		add	sp, sp, #108
 349              		@ sp needed
 350 0110 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 351              	.L58:
 352 0114 04F16403 		add	r3, r4, #100
 353 0118 1193     		str	r3, [sp, #68]
 354 011a AEE7     		b	.L50
 355              	.L59:
 356 011c 14AB     		add	r3, sp, #80
 357 011e 1293     		str	r3, [sp, #72]
 358 0120 04F14003 		add	r3, r4, #64
 359 0124 1393     		str	r3, [sp, #76]
 360 0126 04F16403 		add	r3, r4, #100
 361 012a 1193     		str	r3, [sp, #68]
 362 012c 99E7     		b	.L52
 363              	.L61:
 364 012e 00BF     		.align	2
 365              	.L60:
 366 0130 00000000 		.word	reprap
 367 0134 00000000 		.word	.LC3
 368 0138 08000000 		.word	.LC4
 369 013c 10000000 		.word	.LC5
 370 0140 18000000 		.word	.LC6
 371 0144 20000000 		.word	.LC7
 372 0148 28000000 		.word	.LC8
 373              		.size	_ZNK3DDA10DebugPrintEv, .-_ZNK3DDA10DebugPrintEv
 374              		.section	.text._ZNK3DDA13DebugPrintAllEv,"ax",%progbits
 375              		.align	1
 376              		.p2align 2,,3
 377              		.global	_ZNK3DDA13DebugPrintAllEv
 378              		.syntax unified
 379              		.thumb
 380              		.thumb_func
 381              		.fpu softvfp
 382              		.type	_ZNK3DDA13DebugPrintAllEv, %function
 383              	_ZNK3DDA13DebugPrintAllEv:
 384              		@ args = 0, pretend = 0, frame = 0
 385              		@ frame_needed = 0, uses_anonymous_args = 0
 386 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 387 0004 DFF87880 		ldr	r8, .L91
 388 0008 0646     		mov	r6, r0
 389 000a FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
 390 000e D8F81030 		ldr	r3, [r8, #16]
 391 0012 D3F8F871 		ldr	r7, [r3, #504]
 392 0016 7FB3     		cbz	r7, .L88
 393 0018 0024     		movs	r4, #0
 394 001a 06F1CC05 		add	r5, r6, #204
 395              	.L67:
 396 001e 55F8040F 		ldr	r0, [r5, #4]!
 397 0022 48B1     		cbz	r0, .L65
 398 0024 D8F81030 		ldr	r3, [r8, #16]
 399 0028 B27A     		ldrb	r2, [r6, #10]	@ zero_extendqisi2
ARM GAS  /tmp/cc7dtM4H.s 			page 8


 400 002a 2344     		add	r3, r3, r4
 401 002c 93F87212 		ldrb	r1, [r3, #626]	@ zero_extendqisi2
 402 0030 C2F34002 		ubfx	r2, r2, #1, #1
 403 0034 FFF7FEFF 		bl	_ZNK13DriveMovement10DebugPrintEcb
 404              	.L65:
 405 0038 0134     		adds	r4, r4, #1
 406 003a A742     		cmp	r7, r4
 407 003c EFD1     		bne	.L67
 408 003e 082F     		cmp	r7, #8
 409 0040 1CD8     		bhi	.L89
 410              	.L63:
 411 0042 04F13405 		add	r5, r4, #52
 412 0046 C7F13007 		rsb	r7, r7, #48
 413 004a 06EB8505 		add	r5, r6, r5, lsl #2
 414 004e 02E0     		b	.L70
 415              	.L68:
 416 0050 0134     		adds	r4, r4, #1
 417 0052 092C     		cmp	r4, #9
 418 0054 0ED0     		beq	.L90
 419              	.L70:
 420 0056 55F8040B 		ldr	r0, [r5], #4
 421 005a 0028     		cmp	r0, #0
 422 005c F8D0     		beq	.L68
 423 005e 0379     		ldrb	r3, [r0, #4]	@ zero_extendqisi2
 424 0060 002B     		cmp	r3, #0
 425 0062 F5D0     		beq	.L68
 426 0064 3919     		adds	r1, r7, r4
 427 0066 C9B2     		uxtb	r1, r1
 428 0068 0022     		movs	r2, #0
 429 006a 0134     		adds	r4, r4, #1
 430 006c FFF7FEFF 		bl	_ZNK13DriveMovement10DebugPrintEcb
 431 0070 092C     		cmp	r4, #9
 432 0072 F0D1     		bne	.L70
 433              	.L90:
 434 0074 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 435              	.L88:
 436 0078 3C46     		mov	r4, r7
 437 007a E2E7     		b	.L63
 438              	.L89:
 439 007c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 440              	.L92:
 441              		.align	2
 442              	.L91:
 443 0080 00000000 		.word	reprap
 444              		.size	_ZNK3DDA13DebugPrintAllEv, .-_ZNK3DDA13DebugPrintAllEv
 445              		.section	.text._ZN3DDA4InitEv,"ax",%progbits
 446              		.align	1
 447              		.p2align 2,,3
 448              		.global	_ZN3DDA4InitEv
 449              		.syntax unified
 450              		.thumb
 451              		.thumb_func
 452              		.fpu softvfp
 453              		.type	_ZN3DDA4InitEv, %function
 454              	_ZN3DDA4InitEv:
 455              		@ args = 0, pretend = 0, frame = 0
 456              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cc7dtM4H.s 			page 9


 457              		@ link register save eliminated.
 458 0000 0022     		movs	r2, #0
 459 0002 10B4     		push	{r4}
 460 0004 00F14001 		add	r1, r0, #64
 461 0008 00F11C03 		add	r3, r0, #28
 462              	.L94:
 463 000c 43F8042B 		str	r2, [r3], #4
 464 0010 9942     		cmp	r1, r3
 465 0012 FBD1     		bne	.L94
 466 0014 4FF0FF34 		mov	r4, #-1
 467 0018 0021     		movs	r1, #0
 468 001a 837A     		ldrb	r3, [r0, #10]	@ zero_extendqisi2
 469 001c 8461     		str	r4, [r0, #24]
 470 001e 62F30003 		bfi	r3, r2, #0, #1
 471 0022 0272     		strb	r2, [r0, #8]
 472 0024 8372     		strb	r3, [r0, #10]
 473 0026 C0F89410 		str	r1, [r0, #148]	@ float
 474 002a 10BC     		pop	{r4}
 475 002c 7047     		bx	lr
 476              		.size	_ZN3DDA4InitEv, .-_ZN3DDA4InitEv
 477              		.global	__aeabi_fcmpge
 478 002e 00BF     		.section	.text._ZNK3DDA15IsGoodToPrepareEv,"ax",%progbits
 479              		.align	1
 480              		.p2align 2,,3
 481              		.global	_ZNK3DDA15IsGoodToPrepareEv
 482              		.syntax unified
 483              		.thumb
 484              		.thumb_func
 485              		.fpu softvfp
 486              		.type	_ZNK3DDA15IsGoodToPrepareEv, %function
 487              	_ZNK3DDA15IsGoodToPrepareEv:
 488              		@ args = 0, pretend = 0, frame = 0
 489              		@ frame_needed = 0, uses_anonymous_args = 0
 490 0000 08B5     		push	{r3, lr}
 491 0002 D0F8A410 		ldr	r1, [r0, #164]	@ float
 492 0006 D0F8A000 		ldr	r0, [r0, #160]	@ float
 493 000a FFF7FEFF 		bl	__aeabi_fcmpge
 494 000e 18B9     		cbnz	r0, .L99
 495 0010 0346     		mov	r3, r0
 496 0012 03F00100 		and	r0, r3, #1
 497 0016 08BD     		pop	{r3, pc}
 498              	.L99:
 499 0018 4FF00103 		mov	r3, #1
 500 001c 03F00100 		and	r0, r3, #1
 501 0020 08BD     		pop	{r3, pc}
 502              		.size	_ZNK3DDA15IsGoodToPrepareEv, .-_ZNK3DDA15IsGoodToPrepareEv
 503              		.global	__aeabi_fadd
 504              		.global	__aeabi_fcmpgt
 505              		.global	__aeabi_fdiv
 506              		.global	__aeabi_fcmpeq
 507              		.global	__aeabi_f2uiz
 508              		.global	__aeabi_fcmplt
 509 0022 00BF     		.section	.text.hot._ZN3DDA15RecalculateMoveEv,"ax",%progbits
 510              		.align	1
 511              		.p2align 2,,3
 512              		.global	_ZN3DDA15RecalculateMoveEv
 513              		.syntax unified
ARM GAS  /tmp/cc7dtM4H.s 			page 10


 514              		.thumb
 515              		.thumb_func
 516              		.fpu softvfp
 517              		.type	_ZN3DDA15RecalculateMoveEv, %function
 518              	_ZN3DDA15RecalculateMoveEv:
 519              		@ args = 0, pretend = 0, frame = 24
 520              		@ frame_needed = 0, uses_anonymous_args = 0
 521 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 522 0004 D0F89060 		ldr	r6, [r0, #144]	@ float
 523 0008 0446     		mov	r4, r0
 524 000a 87B0     		sub	sp, sp, #28
 525 000c 3146     		mov	r1, r6
 526 000e 3046     		mov	r0, r6
 527 0010 FFF7FEFF 		bl	__aeabi_fmul
 528 0014 D4F89C80 		ldr	r8, [r4, #156]	@ float
 529 0018 0546     		mov	r5, r0
 530 001a 4146     		mov	r1, r8
 531 001c 4046     		mov	r0, r8
 532 001e FFF7FEFF 		bl	__aeabi_fmul
 533 0022 0146     		mov	r1, r0
 534 0024 8346     		mov	fp, r0
 535 0026 2846     		mov	r0, r5
 536 0028 FFF7FEFF 		bl	__aeabi_fsub
 537 002c D4F8A070 		ldr	r7, [r4, #160]	@ float
 538 0030 0190     		str	r0, [sp, #4]	@ float
 539 0032 3946     		mov	r1, r7
 540 0034 3846     		mov	r0, r7
 541 0036 CDF80880 		str	r8, [sp, #8]	@ float
 542 003a FFF7FEFF 		bl	__aeabi_fmul
 543 003e 0146     		mov	r1, r0
 544 0040 0490     		str	r0, [sp, #16]	@ float
 545 0042 2846     		mov	r0, r5
 546 0044 FFF7FEFF 		bl	__aeabi_fsub
 547 0048 D4F88830 		ldr	r3, [r4, #136]	@ float
 548 004c D4F88C90 		ldr	r9, [r4, #140]	@ float
 549 0050 1946     		mov	r1, r3
 550 0052 8246     		mov	r10, r0
 551 0054 0590     		str	r0, [sp, #20]	@ float
 552 0056 4846     		mov	r0, r9
 553 0058 0093     		str	r3, [sp]	@ float
 554 005a FFF7FEFF 		bl	__aeabi_fmul
 555 005e 5146     		mov	r1, r10
 556 0060 0546     		mov	r5, r0
 557 0062 0198     		ldr	r0, [sp, #4]	@ float
 558 0064 FFF7FEFF 		bl	__aeabi_fadd
 559 0068 2946     		mov	r1, r5
 560 006a 8246     		mov	r10, r0
 561 006c 2846     		mov	r0, r5
 562 006e FFF7FEFF 		bl	__aeabi_fadd
 563 0072 0146     		mov	r1, r0
 564 0074 5046     		mov	r0, r10
 565 0076 0397     		str	r7, [sp, #12]	@ float
 566 0078 DDF800A0 		ldr	r10, [sp]	@ float
 567 007c FFF7FEFF 		bl	__aeabi_fcmpge
 568 0080 0028     		cmp	r0, #0
 569 0082 6AD0     		beq	.L131
 570 0084 049E     		ldr	r6, [sp, #16]	@ float
ARM GAS  /tmp/cc7dtM4H.s 			page 11


 571 0086 5846     		mov	r0, fp
 572 0088 3146     		mov	r1, r6
 573 008a FFF7FEFF 		bl	__aeabi_fadd
 574 008e 4FF07C51 		mov	r1, #1056964608
 575 0092 FFF7FEFF 		bl	__aeabi_fmul
 576 0096 2946     		mov	r1, r5
 577 0098 FFF7FEFF 		bl	__aeabi_fadd
 578 009c 5946     		mov	r1, fp
 579 009e 0546     		mov	r5, r0
 580 00a0 FFF7FEFF 		bl	__aeabi_fcmpgt
 581 00a4 0028     		cmp	r0, #0
 582 00a6 00F0A380 		beq	.L104
 583 00aa 3146     		mov	r1, r6
 584 00ac 2846     		mov	r0, r5
 585 00ae FFF7FEFF 		bl	__aeabi_fcmpgt
 586 00b2 0028     		cmp	r0, #0
 587 00b4 00F09C80 		beq	.L104
 588 00b8 5946     		mov	r1, fp
 589 00ba 2846     		mov	r0, r5
 590 00bc FFF7FEFF 		bl	__aeabi_fsub
 591 00c0 4946     		mov	r1, r9
 592 00c2 0646     		mov	r6, r0
 593 00c4 4846     		mov	r0, r9
 594 00c6 FFF7FEFF 		bl	__aeabi_fadd
 595 00ca 0146     		mov	r1, r0
 596 00cc 3046     		mov	r0, r6
 597 00ce FFF7FEFF 		bl	__aeabi_fdiv
 598 00d2 0146     		mov	r1, r0
 599 00d4 0098     		ldr	r0, [sp]	@ float
 600 00d6 C4F8A810 		str	r1, [r4, #168]	@ float
 601 00da FFF7FEFF 		bl	__aeabi_fsub
 602 00de C4F8AC00 		str	r0, [r4, #172]	@ float
 603 00e2 2846     		mov	r0, r5
 604 00e4 FFF7FEFF 		bl	sqrtf
 605 00e8 D4F88830 		ldr	r3, [r4, #136]	@ float
 606 00ec 0646     		mov	r6, r0
 607 00ee 0093     		str	r3, [sp]	@ float
 608 00f0 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 609 00f2 D4F8A070 		ldr	r7, [r4, #160]	@ float
 610 00f6 5B07     		lsls	r3, r3, #29
 611 00f8 C4F8A400 		str	r0, [r4, #164]	@ float
 612 00fc D4F89C80 		ldr	r8, [r4, #156]	@ float
 613 0100 D4F88C90 		ldr	r9, [r4, #140]	@ float
 614 0104 D4F8A8A0 		ldr	r10, [r4, #168]	@ float
 615 0108 D4F8ACB0 		ldr	fp, [r4, #172]	@ float
 616 010c 3DD4     		bmi	.L137
 617              	.L112:
 618 010e 3146     		mov	r1, r6
 619 0110 3046     		mov	r0, r6
 620 0112 FFF7FEFF 		bl	__aeabi_fadd
 621 0116 4146     		mov	r1, r8
 622 0118 FFF7FEFF 		bl	__aeabi_fsub
 623 011c 3946     		mov	r1, r7
 624 011e FFF7FEFF 		bl	__aeabi_fsub
 625 0122 4946     		mov	r1, r9
 626 0124 FFF7FEFF 		bl	__aeabi_fdiv
 627 0128 5146     		mov	r1, r10
ARM GAS  /tmp/cc7dtM4H.s 			page 12


 628 012a 0546     		mov	r5, r0
 629 012c 0098     		ldr	r0, [sp]	@ float
 630 012e FFF7FEFF 		bl	__aeabi_fsub
 631 0132 5946     		mov	r1, fp
 632 0134 FFF7FEFF 		bl	__aeabi_fsub
 633 0138 3146     		mov	r1, r6
 634 013a FFF7FEFF 		bl	__aeabi_fdiv
 635 013e 0146     		mov	r1, r0
 636 0140 2846     		mov	r0, r5
 637 0142 FFF7FEFF 		bl	__aeabi_fadd
 638 0146 5B49     		ldr	r1, .L140
 639 0148 FFF7FEFF 		bl	__aeabi_fmul
 640 014c FFF7FEFF 		bl	__aeabi_f2uiz
 641 0150 C4F8B400 		str	r0, [r4, #180]
 642 0154 07B0     		add	sp, sp, #28
 643              		@ sp needed
 644 0156 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 645              	.L131:
 646 015a 4946     		mov	r1, r9
 647 015c C4F8A460 		str	r6, [r4, #164]	@ float
 648 0160 4846     		mov	r0, r9
 649 0162 FFF7FEFF 		bl	__aeabi_fadd
 650 0166 0146     		mov	r1, r0
 651 0168 0546     		mov	r5, r0
 652 016a 0198     		ldr	r0, [sp, #4]	@ float
 653 016c FFF7FEFF 		bl	__aeabi_fdiv
 654 0170 2946     		mov	r1, r5
 655 0172 C4F8A800 		str	r0, [r4, #168]	@ float
 656 0176 8246     		mov	r10, r0
 657 0178 0598     		ldr	r0, [sp, #20]	@ float
 658 017a FFF7FEFF 		bl	__aeabi_fdiv
 659 017e 8346     		mov	fp, r0
 660 0180 C4F8AC00 		str	r0, [r4, #172]	@ float
 661              	.L111:
 662 0184 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 663 0186 5B07     		lsls	r3, r3, #29
 664 0188 C1D5     		bpl	.L112
 665              	.L137:
 666 018a 0021     		movs	r1, #0
 667 018c 3846     		mov	r0, r7
 668 018e FFF7FEFF 		bl	__aeabi_fcmpeq
 669 0192 0028     		cmp	r0, #0
 670 0194 BBD1     		bne	.L112
 671 0196 484B     		ldr	r3, .L140+4
 672 0198 04F1F002 		add	r2, r4, #240
 673 019c 1B68     		ldr	r3, [r3]
 674 019e 04F1CC05 		add	r5, r4, #204
 675 01a2 03F5A473 		add	r3, r3, #328
 676 01a6 0196     		str	r6, [sp, #4]	@ float
 677 01a8 0294     		str	r4, [sp, #8]
 678 01aa 3E46     		mov	r6, r7
 679 01ac 1C46     		mov	r4, r3
 680 01ae 1746     		mov	r7, r2
 681 01b0 03E0     		b	.L118
 682              	.L114:
 683 01b2 AF42     		cmp	r7, r5
 684 01b4 04F10404 		add	r4, r4, #4
ARM GAS  /tmp/cc7dtM4H.s 			page 13


 685 01b8 56D0     		beq	.L138
 686              	.L118:
 687 01ba 55F8041F 		ldr	r1, [r5, #4]!
 688 01be 0029     		cmp	r1, #0
 689 01c0 F7D0     		beq	.L114
 690 01c2 0979     		ldrb	r1, [r1, #4]	@ zero_extendqisi2
 691 01c4 0129     		cmp	r1, #1
 692 01c6 F4D1     		bne	.L114
 693 01c8 55F86C0C 		ldr	r0, [r5, #-108]
 694 01cc 3146     		mov	r1, r6
 695 01ce 20F00040 		bic	r0, r0, #-2147483648
 696 01d2 FFF7FEFF 		bl	__aeabi_fmul
 697 01d6 2168     		ldr	r1, [r4]	@ float
 698 01d8 FFF7FEFF 		bl	__aeabi_fcmpgt
 699 01dc 0028     		cmp	r0, #0
 700 01de E8D0     		beq	.L114
 701 01e0 029C     		ldr	r4, [sp, #8]
 702 01e2 3746     		mov	r7, r6
 703 01e4 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 704 01e6 019E     		ldr	r6, [sp, #4]	@ float
 705 01e8 6FF38203 		bfc	r3, #2, #1
 706 01ec A372     		strb	r3, [r4, #10]
 707 01ee 8EE7     		b	.L112
 708              	.L104:
 709 01f0 0399     		ldr	r1, [sp, #12]	@ float
 710 01f2 0298     		ldr	r0, [sp, #8]	@ float
 711 01f4 FFF7FEFF 		bl	__aeabi_fcmplt
 712 01f8 0028     		cmp	r0, #0
 713 01fa 39D1     		bne	.L116
 714 01fc 0023     		movs	r3, #0
 715 01fe 5846     		mov	r0, fp
 716 0200 029A     		ldr	r2, [sp, #8]	@ float
 717 0202 0499     		ldr	r1, [sp, #16]	@ float
 718 0204 C4F8ACA0 		str	r10, [r4, #172]	@ float
 719 0208 C4F8A420 		str	r2, [r4, #164]	@ float
 720 020c C4F8A830 		str	r3, [r4, #168]	@ float
 721              	.L135:
 722 0210 FFF7FEFF 		bl	__aeabi_fsub
 723 0214 5146     		mov	r1, r10
 724 0216 0546     		mov	r5, r0
 725 0218 5046     		mov	r0, r10
 726 021a FFF7FEFF 		bl	__aeabi_fadd
 727 021e 0146     		mov	r1, r0
 728 0220 2846     		mov	r0, r5
 729 0222 FFF7FEFF 		bl	__aeabi_fdiv
 730 0226 2549     		ldr	r1, .L140+8
 731 0228 0546     		mov	r5, r0
 732 022a 4846     		mov	r0, r9
 733 022c FFF7FEFF 		bl	__aeabi_fmul
 734 0230 0146     		mov	r1, r0
 735 0232 2846     		mov	r0, r5
 736 0234 FFF7FEFF 		bl	__aeabi_fcmpgt
 737 0238 38B1     		cbz	r0, .L109
 738 023a 1F4B     		ldr	r3, .L140+4
 739 023c 9A68     		ldr	r2, [r3, #8]
 740 023e 596C     		ldr	r1, [r3, #68]
 741 0240 D369     		ldr	r3, [r2, #28]
ARM GAS  /tmp/cc7dtM4H.s 			page 14


 742 0242 0133     		adds	r3, r3, #1
 743 0244 D361     		str	r3, [r2, #28]
 744 0246 CA06     		lsls	r2, r1, #27
 745 0248 1DD4     		bmi	.L139
 746              	.L109:
 747 024a CDF800A0 		str	r10, [sp]	@ float
 748 024e C4F88C50 		str	r5, [r4, #140]	@ float
 749 0252 039F     		ldr	r7, [sp, #12]	@ float
 750 0254 DDF80880 		ldr	r8, [sp, #8]	@ float
 751 0258 A946     		mov	r9, r5
 752 025a D4F8A460 		ldr	r6, [r4, #164]	@ float
 753 025e D4F8A8A0 		ldr	r10, [r4, #168]	@ float
 754 0262 D4F8ACB0 		ldr	fp, [r4, #172]	@ float
 755 0266 8DE7     		b	.L111
 756              	.L138:
 757 0268 3746     		mov	r7, r6
 758 026a 029C     		ldr	r4, [sp, #8]
 759 026c 019E     		ldr	r6, [sp, #4]	@ float
 760 026e 4EE7     		b	.L112
 761              	.L116:
 762 0270 0023     		movs	r3, #0
 763 0272 039A     		ldr	r2, [sp, #12]	@ float
 764 0274 C4F8A8A0 		str	r10, [r4, #168]	@ float
 765 0278 C4F8A420 		str	r2, [r4, #164]	@ float
 766 027c 5946     		mov	r1, fp
 767 027e 0498     		ldr	r0, [sp, #16]	@ float
 768 0280 C4F8AC30 		str	r3, [r4, #172]	@ float
 769 0284 C4E7     		b	.L135
 770              	.L139:
 771 0286 2846     		mov	r0, r5
 772 0288 FFF7FEFF 		bl	__aeabi_f2d
 773 028c 0B46     		mov	r3, r1
 774 028e 0246     		mov	r2, r0
 775 0290 4FF45C71 		mov	r1, #880
 776 0294 0A48     		ldr	r0, .L140+12
 777 0296 FFF7FEFF 		bl	debugPrintf
 778 029a 2046     		mov	r0, r4
 779 029c FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
 780 02a0 D4F89C30 		ldr	r3, [r4, #156]	@ float
 781 02a4 D4F888A0 		ldr	r10, [r4, #136]	@ float
 782 02a8 0293     		str	r3, [sp, #8]	@ float
 783 02aa D4F8A030 		ldr	r3, [r4, #160]	@ float
 784 02ae 0393     		str	r3, [sp, #12]	@ float
 785 02b0 CBE7     		b	.L109
 786              	.L141:
 787 02b2 00BF     		.align	2
 788              	.L140:
 789 02b4 A0372049 		.word	1226848160
 790 02b8 00000000 		.word	reprap
 791 02bc 5C8F823F 		.word	1065520988
 792 02c0 00000000 		.word	.LC9
 793              		.size	_ZN3DDA15RecalculateMoveEv, .-_ZN3DDA15RecalculateMoveEv
 794              		.section	.text.hot._ZN3DDA11MatchSpeedsEv,"ax",%progbits
 795              		.align	1
 796              		.p2align 2,,3
 797              		.global	_ZN3DDA11MatchSpeedsEv
 798              		.syntax unified
ARM GAS  /tmp/cc7dtM4H.s 			page 15


 799              		.thumb
 800              		.thumb_func
 801              		.fpu softvfp
 802              		.type	_ZN3DDA11MatchSpeedsEv, %function
 803              	_ZN3DDA11MatchSpeedsEv:
 804              		@ args = 0, pretend = 0, frame = 8
 805              		@ frame_needed = 0, uses_anonymous_args = 0
 806 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 807 0004 D0F8A030 		ldr	r3, [r0, #160]	@ float
 808 0008 D0F8B040 		ldr	r4, [r0, #176]	@ float
 809 000c 83B0     		sub	sp, sp, #12
 810 000e 0746     		mov	r7, r0
 811 0010 1946     		mov	r1, r3
 812 0012 2046     		mov	r0, r4
 813 0014 0193     		str	r3, [sp, #4]	@ float
 814 0016 FFF7FEFF 		bl	__aeabi_fcmplt
 815 001a 50B1     		cbz	r0, .L166
 816 001c 364B     		ldr	r3, .L170
 817 001e 9A68     		ldr	r2, [r3, #8]
 818 0020 596C     		ldr	r1, [r3, #68]
 819 0022 D369     		ldr	r3, [r2, #28]
 820 0024 0133     		adds	r3, r3, #1
 821 0026 D361     		str	r3, [r2, #28]
 822 0028 CA06     		lsls	r2, r1, #27
 823 002a 54D4     		bmi	.L169
 824              	.L142:
 825 002c 03B0     		add	sp, sp, #12
 826              		@ sp needed
 827 002e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 828              	.L166:
 829 0032 314B     		ldr	r3, .L170
 830 0034 0024     		movs	r4, #0
 831 0036 1E68     		ldr	r6, [r3]
 832 0038 D7F800A0 		ldr	r10, [r7]
 833 003c 07F1CC05 		add	r5, r7, #204
 834 0040 06F5A476 		add	r6, r6, #328
 835 0044 07F1F008 		add	r8, r7, #240
 836 0048 09E0     		b	.L153
 837              	.L147:
 838 004a 5AF82130 		ldr	r3, [r10, r1, lsl #2]
 839 004e 13B1     		cbz	r3, .L149
 840 0050 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 841 0052 012B     		cmp	r3, #1
 842 0054 0FD0     		beq	.L148
 843              	.L149:
 844 0056 4545     		cmp	r5, r8
 845 0058 06F10406 		add	r6, r6, #4
 846 005c E6D0     		beq	.L142
 847              	.L153:
 848 005e 55F8043F 		ldr	r3, [r5, #4]!
 849 0062 0AEB8400 		add	r0, r10, r4, lsl #2
 850 0066 04F13401 		add	r1, r4, #52
 851 006a 0134     		adds	r4, r4, #1
 852 006c 002B     		cmp	r3, #0
 853 006e ECD0     		beq	.L147
 854 0070 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 855 0072 012B     		cmp	r3, #1
ARM GAS  /tmp/cc7dtM4H.s 			page 16


 856 0074 E9D1     		bne	.L147
 857              	.L148:
 858 0076 416E     		ldr	r1, [r0, #100]	@ float
 859 0078 55F86C0C 		ldr	r0, [r5, #-108]	@ float
 860 007c FFF7FEFF 		bl	__aeabi_fsub
 861 0080 D6F800B0 		ldr	fp, [r6]	@ float
 862 0084 20F00049 		bic	r9, r0, #-2147483648
 863 0088 D7F8B010 		ldr	r1, [r7, #176]	@ float
 864 008c 4846     		mov	r0, r9
 865 008e FFF7FEFF 		bl	__aeabi_fmul
 866 0092 5946     		mov	r1, fp
 867 0094 FFF7FEFF 		bl	__aeabi_fcmpgt
 868 0098 0028     		cmp	r0, #0
 869 009a DCD0     		beq	.L149
 870 009c 4946     		mov	r1, r9
 871 009e 5846     		mov	r0, fp
 872 00a0 FFF7FEFF 		bl	__aeabi_fdiv
 873 00a4 8346     		mov	fp, r0
 874 00a6 0198     		ldr	r0, [sp, #4]	@ float
 875 00a8 C7F8B0B0 		str	fp, [r7, #176]	@ float
 876 00ac 5946     		mov	r1, fp
 877 00ae FFF7FEFF 		bl	__aeabi_fcmpgt
 878 00b2 0028     		cmp	r0, #0
 879 00b4 CFD0     		beq	.L149
 880 00b6 104B     		ldr	r3, .L170
 881 00b8 9A68     		ldr	r2, [r3, #8]
 882 00ba 596C     		ldr	r1, [r3, #68]
 883 00bc D369     		ldr	r3, [r2, #28]
 884 00be 0133     		adds	r3, r3, #1
 885 00c0 D361     		str	r3, [r2, #28]
 886 00c2 CB06     		lsls	r3, r1, #27
 887 00c4 B2D5     		bpl	.L142
 888 00c6 5846     		mov	r0, fp
 889 00c8 FFF7FEFF 		bl	__aeabi_f2d
 890 00cc 0B46     		mov	r3, r1
 891 00ce 0246     		mov	r2, r0
 892 00d0 40F2B331 		movw	r1, #947
 893 00d4 06E0     		b	.L168
 894              	.L169:
 895 00d6 2046     		mov	r0, r4
 896 00d8 FFF7FEFF 		bl	__aeabi_f2d
 897 00dc 0B46     		mov	r3, r1
 898 00de 0246     		mov	r2, r0
 899 00e0 4FF46771 		mov	r1, #924
 900              	.L168:
 901 00e4 0548     		ldr	r0, .L170+4
 902 00e6 FFF7FEFF 		bl	debugPrintf
 903 00ea 3846     		mov	r0, r7
 904 00ec 03B0     		add	sp, sp, #12
 905              		@ sp needed
 906 00ee BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 907 00f2 FFF7FEBF 		b	_ZNK3DDA10DebugPrintEv
 908              	.L171:
 909 00f6 00BF     		.align	2
 910              	.L170:
 911 00f8 00000000 		.word	reprap
 912 00fc 00000000 		.word	.LC10
ARM GAS  /tmp/cc7dtM4H.s 			page 17


 913              		.size	_ZN3DDA11MatchSpeedsEv, .-_ZN3DDA11MatchSpeedsEv
 914              		.global	__aeabi_fcmple
 915              		.global	__aeabi_fcmpun
 916              		.section	.text.hot._ZN3DDA11DoLookaheadEPS_,"ax",%progbits
 917              		.align	1
 918              		.p2align 2,,3
 919              		.global	_ZN3DDA11DoLookaheadEPS_
 920              		.syntax unified
 921              		.thumb
 922              		.thumb_func
 923              		.fpu softvfp
 924              		.type	_ZN3DDA11DoLookaheadEPS_, %function
 925              	_ZN3DDA11DoLookaheadEPS_:
 926              		@ args = 0, pretend = 0, frame = 0
 927              		@ frame_needed = 0, uses_anonymous_args = 0
 928 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 929 0004 8346     		mov	fp, r0
 930 0006 0024     		movs	r4, #0
 931 0008 D0F8B060 		ldr	r6, [r0, #176]	@ float
 932 000c DFF8D8A1 		ldr	r10, .L216+4
 933 0010 DFF8D891 		ldr	r9, .L216+8
 934              	.L173:
 935 0014 DBF89050 		ldr	r5, [fp, #144]	@ float
 936 0018 3146     		mov	r1, r6
 937 001a 2846     		mov	r0, r5
 938 001c FFF7FEFF 		bl	__aeabi_fcmplt
 939 0020 08B1     		cbz	r0, .L174
 940 0022 CBF8B050 		str	r5, [fp, #176]	@ float
 941              	.L174:
 942 0026 DBF8A470 		ldr	r7, [fp, #164]	@ float
 943 002a 2846     		mov	r0, r5
 944 002c 3946     		mov	r1, r7
 945 002e FFF7FEFF 		bl	__aeabi_fcmple
 946 0032 0028     		cmp	r0, #0
 947 0034 39D1     		bne	.L209
 948 0036 DBF8AC80 		ldr	r8, [fp, #172]	@ float
 949 003a DBF88860 		ldr	r6, [fp, #136]	@ float
 950 003e 4146     		mov	r1, r8
 951 0040 3046     		mov	r0, r6
 952 0042 FFF7FEFF 		bl	__aeabi_fcmpeq
 953 0046 0028     		cmp	r0, #0
 954 0048 6BD1     		bne	.L179
 955 004a 3946     		mov	r1, r7
 956 004c 2846     		mov	r0, r5
 957 004e FFF7FEFF 		bl	__aeabi_fcmpgt
 958 0052 68B1     		cbz	r0, .L180
 959 0054 5146     		mov	r1, r10
 960 0056 3046     		mov	r0, r6
 961 0058 FFF7FEFF 		bl	__aeabi_fmul
 962 005c 4146     		mov	r1, r8
 963 005e FFF7FEFF 		bl	__aeabi_fcmplt
 964 0062 28B1     		cbz	r0, .L180
 965 0064 DBF80450 		ldr	r5, [fp, #4]
 966 0068 2A7A     		ldrb	r2, [r5, #8]	@ zero_extendqisi2
 967 006a 012A     		cmp	r2, #1
 968 006c 00F0B280 		beq	.L213
 969              	.L180:
ARM GAS  /tmp/cc7dtM4H.s 			page 18


 970 0070 DBF88C10 		ldr	r1, [fp, #140]	@ float
 971 0074 DBF89C70 		ldr	r7, [fp, #156]	@ float
 972 0078 0846     		mov	r0, r1
 973 007a FFF7FEFF 		bl	__aeabi_fadd
 974 007e 3146     		mov	r1, r6
 975 0080 FFF7FEFF 		bl	__aeabi_fmul
 976 0084 3946     		mov	r1, r7
 977 0086 0546     		mov	r5, r0
 978              	.L211:
 979 0088 0846     		mov	r0, r1
 980 008a FFF7FEFF 		bl	__aeabi_fmul
 981 008e 0146     		mov	r1, r0
 982 0090 2846     		mov	r0, r5
 983 0092 FFF7FEFF 		bl	__aeabi_fadd
 984 0096 FFF7FEFF 		bl	sqrtf
 985 009a DBF8B010 		ldr	r1, [fp, #176]	@ float
 986 009e 0546     		mov	r5, r0
 987 00a0 FFF7FEFF 		bl	__aeabi_fcmplt
 988 00a4 08B1     		cbz	r0, .L209
 989 00a6 CBF8B050 		str	r5, [fp, #176]	@ float
 990              	.L209:
 991 00aa 5846     		mov	r0, fp
 992 00ac FFF7FEFF 		bl	_ZN3DDA11MatchSpeedsEv
 993 00b0 DBF8B050 		ldr	r5, [fp, #176]	@ float
 994              	.L178:
 995 00b4 CBF8A050 		str	r5, [fp, #160]	@ float
 996 00b8 5846     		mov	r0, fp
 997 00ba FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 998 00be 74B3     		cbz	r4, .L214
 999              	.L207:
 1000 00c0 DBF800B0 		ldr	fp, [fp]
 1001 00c4 013C     		subs	r4, r4, #1
 1002 00c6 DBF80420 		ldr	r2, [fp, #4]
 1003 00ca DBF88C10 		ldr	r1, [fp, #140]	@ float
 1004 00ce D2F8A050 		ldr	r5, [r2, #160]	@ float
 1005 00d2 0846     		mov	r0, r1
 1006 00d4 CBF89C50 		str	r5, [fp, #156]	@ float
 1007 00d8 FFF7FEFF 		bl	__aeabi_fadd
 1008 00dc DBF88810 		ldr	r1, [fp, #136]	@ float
 1009 00e0 FFF7FEFF 		bl	__aeabi_fmul
 1010 00e4 2946     		mov	r1, r5
 1011 00e6 0646     		mov	r6, r0
 1012 00e8 2846     		mov	r0, r5
 1013 00ea FFF7FEFF 		bl	__aeabi_fmul
 1014 00ee 0146     		mov	r1, r0
 1015 00f0 3046     		mov	r0, r6
 1016 00f2 FFF7FEFF 		bl	__aeabi_fadd
 1017 00f6 FFF7FEFF 		bl	sqrtf
 1018 00fa DBF8B050 		ldr	r5, [fp, #176]	@ float
 1019 00fe 0646     		mov	r6, r0
 1020 0100 2946     		mov	r1, r5
 1021 0102 FFF7FEFF 		bl	__aeabi_fcmplt
 1022 0106 0028     		cmp	r0, #0
 1023 0108 D4D0     		beq	.L178
 1024 010a 3546     		mov	r5, r6
 1025 010c CBF8B060 		str	r6, [fp, #176]	@ float
 1026 0110 CBF8A050 		str	r5, [fp, #160]	@ float
ARM GAS  /tmp/cc7dtM4H.s 			page 19


 1027 0114 5846     		mov	r0, fp
 1028 0116 FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 1029 011a 002C     		cmp	r4, #0
 1030 011c D0D1     		bne	.L207
 1031              	.L214:
 1032 011e BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1033              	.L179:
 1034 0122 DBF80450 		ldr	r5, [fp, #4]
 1035              	.L183:
 1036 0126 2A7A     		ldrb	r2, [r5, #8]	@ zero_extendqisi2
 1037 0128 012A     		cmp	r2, #1
 1038 012a 12D0     		beq	.L193
 1039              	.L185:
 1040 012c 9BF80A20 		ldrb	r2, [fp, #10]	@ zero_extendqisi2
 1041 0130 DBF88C10 		ldr	r1, [fp, #140]	@ float
 1042 0134 42F02002 		orr	r2, r2, #32
 1043 0138 8BF80A20 		strb	r2, [fp, #10]
 1044 013c 0846     		mov	r0, r1
 1045 013e FFF7FEFF 		bl	__aeabi_fadd
 1046 0142 3146     		mov	r1, r6
 1047 0144 FFF7FEFF 		bl	__aeabi_fmul
 1048 0148 DBF89C60 		ldr	r6, [fp, #156]	@ float
 1049 014c 0546     		mov	r5, r0
 1050 014e 3146     		mov	r1, r6
 1051 0150 9AE7     		b	.L211
 1052              	.L193:
 1053 0152 AA7A     		ldrb	r2, [r5, #10]	@ zero_extendqisi2
 1054 0154 9BF80A10 		ldrb	r1, [fp, #10]	@ zero_extendqisi2
 1055 0158 4A40     		eors	r2, r2, r1
 1056 015a 12F0480F 		tst	r2, #72
 1057 015e E5D1     		bne	.L185
 1058 0160 5846     		mov	r0, fp
 1059 0162 FFF7FEFF 		bl	_ZN3DDA11MatchSpeedsEv
 1060 0166 DBF88C10 		ldr	r1, [fp, #140]	@ float
 1061 016a DBF8B060 		ldr	r6, [fp, #176]	@ float
 1062 016e 0846     		mov	r0, r1
 1063 0170 FFF7FEFF 		bl	__aeabi_fadd
 1064 0174 DBF88810 		ldr	r1, [fp, #136]	@ float
 1065 0178 FFF7FEFF 		bl	__aeabi_fmul
 1066 017c 3146     		mov	r1, r6
 1067 017e 0546     		mov	r5, r0
 1068 0180 3046     		mov	r0, r6
 1069 0182 FFF7FEFF 		bl	__aeabi_fmul
 1070 0186 0146     		mov	r1, r0
 1071 0188 2846     		mov	r0, r5
 1072 018a FFF7FEFF 		bl	__aeabi_fadd
 1073 018e FFF7FEFF 		bl	sqrtf
 1074 0192 0146     		mov	r1, r0
 1075 0194 0746     		mov	r7, r0
 1076 0196 DBF80450 		ldr	r5, [fp, #4]
 1077 019a DBF89060 		ldr	r6, [fp, #144]	@ float
 1078 019e FFF7FEFF 		bl	__aeabi_fcmpun
 1079 01a2 20B9     		cbnz	r0, .L200
 1080 01a4 3146     		mov	r1, r6
 1081 01a6 3846     		mov	r0, r7
 1082 01a8 FFF7FEFF 		bl	__aeabi_fcmplt
 1083 01ac 00B1     		cbz	r0, .L196
ARM GAS  /tmp/cc7dtM4H.s 			page 20


 1084              	.L200:
 1085 01ae 3E46     		mov	r6, r7
 1086              	.L196:
 1087 01b0 D9F84430 		ldr	r3, [r9, #68]
 1088 01b4 C5F8B060 		str	r6, [r5, #176]	@ float
 1089 01b8 5B06     		lsls	r3, r3, #25
 1090 01ba 04F10104 		add	r4, r4, #1
 1091 01be 01D4     		bmi	.L215
 1092 01c0 AB46     		mov	fp, r5
 1093 01c2 27E7     		b	.L173
 1094              	.L215:
 1095 01c4 2146     		mov	r1, r4
 1096 01c6 0748     		ldr	r0, .L216
 1097 01c8 FFF7FEFF 		bl	debugPrintf
 1098 01cc AB46     		mov	fp, r5
 1099 01ce D5F8B060 		ldr	r6, [r5, #176]	@ float
 1100 01d2 1FE7     		b	.L173
 1101              	.L213:
 1102 01d4 0021     		movs	r1, #0
 1103 01d6 D5F8AC00 		ldr	r0, [r5, #172]	@ float
 1104 01da FFF7FEFF 		bl	__aeabi_fcmpgt
 1105 01de 0028     		cmp	r0, #0
 1106 01e0 A1D1     		bne	.L183
 1107 01e2 45E7     		b	.L180
 1108              	.L217:
 1109              		.align	2
 1110              	.L216:
 1111 01e4 00000000 		.word	.LC11
 1112 01e8 48E17A3F 		.word	1065017672
 1113 01ec 00000000 		.word	reprap
 1114              		.size	_ZN3DDA11DoLookaheadEPS_, .-_ZN3DDA11DoLookaheadEPS_
 1115              		.section	.text._ZN3DDA16FetchEndPositionEPVlPVf,"ax",%progbits
 1116              		.align	1
 1117              		.p2align 2,,3
 1118              		.global	_ZN3DDA16FetchEndPositionEPVlPVf
 1119              		.syntax unified
 1120              		.thumb
 1121              		.thumb_func
 1122              		.fpu softvfp
 1123              		.type	_ZN3DDA16FetchEndPositionEPVlPVf, %function
 1124              	_ZN3DDA16FetchEndPositionEPVlPVf:
 1125              		@ args = 0, pretend = 0, frame = 0
 1126              		@ frame_needed = 0, uses_anonymous_args = 0
 1127 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1128 0002 00F11803 		add	r3, r0, #24
 1129 0006 00F13C05 		add	r5, r0, #60
 1130              	.L219:
 1131 000a 53F8044F 		ldr	r4, [r3, #4]!
 1132 000e AB42     		cmp	r3, r5
 1133 0010 41F8044B 		str	r4, [r1], #4
 1134 0014 F9D1     		bne	.L219
 1135 0016 867A     		ldrb	r6, [r0, #10]	@ zero_extendqisi2
 1136 0018 16F00106 		ands	r6, r6, #1
 1137 001c 17D1     		bne	.L220
 1138 001e 144B     		ldr	r3, .L233
 1139 0020 1F69     		ldr	r7, [r3, #16]
 1140              	.L221:
ARM GAS  /tmp/cc7dtM4H.s 			page 21


 1141 0022 D7F8F841 		ldr	r4, [r7, #504]
 1142 0026 082C     		cmp	r4, #8
 1143 0028 0FD8     		bhi	.L224
 1144 002a A400     		lsls	r4, r4, #2
 1145 002c 04F14005 		add	r5, r4, #64
 1146 0030 0544     		add	r5, r5, r0
 1147 0032 1444     		add	r4, r4, r2
 1148 0034 00F16407 		add	r7, r0, #100
 1149              	.L225:
 1150 0038 55F8041B 		ldr	r1, [r5], #4	@ float
 1151 003c 2068     		ldr	r0, [r4]	@ float
 1152 003e FFF7FEFF 		bl	__aeabi_fadd
 1153 0042 BD42     		cmp	r5, r7
 1154 0044 44F8040B 		str	r0, [r4], #4	@ float
 1155 0048 F6D1     		bne	.L225
 1156              	.L224:
 1157 004a F0B2     		uxtb	r0, r6
 1158 004c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1159              	.L220:
 1160 004e 0849     		ldr	r1, .L233
 1161 0050 0F69     		ldr	r7, [r1, #16]
 1162 0052 D7F8FC51 		ldr	r5, [r7, #508]
 1163 0056 002D     		cmp	r5, #0
 1164 0058 E3D0     		beq	.L221
 1165 005a 1146     		mov	r1, r2
 1166 005c 0F35     		adds	r5, r5, #15
 1167 005e 00EB8505 		add	r5, r0, r5, lsl #2
 1168              	.L222:
 1169 0062 53F8044F 		ldr	r4, [r3, #4]!	@ float
 1170 0066 AB42     		cmp	r3, r5
 1171 0068 41F8044B 		str	r4, [r1], #4	@ float
 1172 006c F9D1     		bne	.L222
 1173 006e D8E7     		b	.L221
 1174              	.L234:
 1175              		.align	2
 1176              	.L233:
 1177 0070 00000000 		.word	reprap
 1178              		.size	_ZN3DDA16FetchEndPositionEPVlPVf, .-_ZN3DDA16FetchEndPositionEPVlPVf
 1179              		.section	.text._ZN3DDA12SetPositionsEPKfj,"ax",%progbits
 1180              		.align	1
 1181              		.p2align 2,,3
 1182              		.global	_ZN3DDA12SetPositionsEPKfj
 1183              		.syntax unified
 1184              		.thumb
 1185              		.thumb_func
 1186              		.fpu softvfp
 1187              		.type	_ZN3DDA12SetPositionsEPKfj, %function
 1188              	_ZN3DDA12SetPositionsEPKfj:
 1189              		@ args = 0, pretend = 0, frame = 0
 1190              		@ frame_needed = 0, uses_anonymous_args = 0
 1191 0000 70B5     		push	{r4, r5, r6, lr}
 1192 0002 0546     		mov	r5, r0
 1193 0004 0F4E     		ldr	r6, .L242
 1194 0006 1346     		mov	r3, r2
 1195 0008 B068     		ldr	r0, [r6, #8]
 1196 000a 05F11C02 		add	r2, r5, #28
 1197 000e 0C46     		mov	r4, r1
ARM GAS  /tmp/cc7dtM4H.s 			page 22


 1198 0010 FFF7FEFF 		bl	_ZNK4Move17EndPointToMachineEPKfPlj
 1199 0014 3369     		ldr	r3, [r6, #16]
 1200 0016 D3F8FC01 		ldr	r0, [r3, #508]
 1201 001a 68B1     		cbz	r0, .L237
 1202 001c 00F18040 		add	r0, r0, #1073741824
 1203 0020 0138     		subs	r0, r0, #1
 1204 0022 04EB8000 		add	r0, r4, r0, lsl #2
 1205 0026 211F     		subs	r1, r4, #4
 1206 0028 05F13C03 		add	r3, r5, #60
 1207              	.L238:
 1208 002c 51F8042F 		ldr	r2, [r1, #4]!	@ float
 1209 0030 8142     		cmp	r1, r0
 1210 0032 43F8042F 		str	r2, [r3, #4]!	@ float
 1211 0036 F9D1     		bne	.L238
 1212              	.L237:
 1213 0038 AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 1214 003a 43F00103 		orr	r3, r3, #1
 1215 003e AB72     		strb	r3, [r5, #10]
 1216 0040 70BD     		pop	{r4, r5, r6, pc}
 1217              	.L243:
 1218 0042 00BF     		.align	2
 1219              	.L242:
 1220 0044 00000000 		.word	reprap
 1221              		.size	_ZN3DDA12SetPositionsEPKfj, .-_ZN3DDA12SetPositionsEPKfj
 1222              		.section	.text._ZN3DDA16GetEndCoordinateEjb,"ax",%progbits
 1223              		.align	1
 1224              		.p2align 2,,3
 1225              		.global	_ZN3DDA16GetEndCoordinateEjb
 1226              		.syntax unified
 1227              		.thumb
 1228              		.thumb_func
 1229              		.fpu softvfp
 1230              		.type	_ZN3DDA16GetEndCoordinateEjb, %function
 1231              	_ZN3DDA16GetEndCoordinateEjb:
 1232              		@ args = 0, pretend = 0, frame = 0
 1233              		@ frame_needed = 0, uses_anonymous_args = 0
 1234 0000 30B5     		push	{r4, r5, lr}
 1235 0002 0C46     		mov	r4, r1
 1236 0004 83B0     		sub	sp, sp, #12
 1237 0006 72B9     		cbnz	r2, .L248
 1238 0008 1449     		ldr	r1, .L250
 1239 000a 0546     		mov	r5, r0
 1240 000c 0B69     		ldr	r3, [r1, #16]
 1241 000e D3F8FC21 		ldr	r2, [r3, #508]
 1242 0012 9442     		cmp	r4, r2
 1243 0014 02D2     		bcs	.L246
 1244 0016 807A     		ldrb	r0, [r0, #10]	@ zero_extendqisi2
 1245 0018 C007     		lsls	r0, r0, #31
 1246 001a 0CD5     		bpl	.L249
 1247              	.L246:
 1248 001c 1034     		adds	r4, r4, #16
 1249 001e 55F82400 		ldr	r0, [r5, r4, lsl #2]	@ float
 1250 0022 03B0     		add	sp, sp, #12
 1251              		@ sp needed
 1252 0024 30BD     		pop	{r4, r5, pc}
 1253              	.L248:
 1254 0026 00EB8100 		add	r0, r0, r1, lsl #2
ARM GAS  /tmp/cc7dtM4H.s 			page 23


 1255 002a C069     		ldr	r0, [r0, #28]
 1256 002c 03B0     		add	sp, sp, #12
 1257              		@ sp needed
 1258 002e BDE83040 		pop	{r4, r5, lr}
 1259 0032 FFF7FEBF 		b	_ZN4Move23MotorEndpointToPositionElj
 1260              	.L249:
 1261 0036 8868     		ldr	r0, [r1, #8]
 1262 0038 05F14001 		add	r1, r5, #64
 1263 003c D3F8F831 		ldr	r3, [r3, #504]
 1264 0040 0091     		str	r1, [sp]
 1265 0042 05F11C01 		add	r1, r5, #28
 1266 0046 FFF7FEFF 		bl	_ZNK4Move21MotorStepsToCartesianEPKljjPf
 1267 004a AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 1268 004c 1034     		adds	r4, r4, #16
 1269 004e 43F00103 		orr	r3, r3, #1
 1270 0052 AB72     		strb	r3, [r5, #10]
 1271 0054 55F82400 		ldr	r0, [r5, r4, lsl #2]	@ float
 1272 0058 03B0     		add	sp, sp, #12
 1273              		@ sp needed
 1274 005a 30BD     		pop	{r4, r5, pc}
 1275              	.L251:
 1276              		.align	2
 1277              	.L250:
 1278 005c 00000000 		.word	reprap
 1279              		.size	_ZN3DDA16GetEndCoordinateEjb, .-_ZN3DDA16GetEndCoordinateEjb
 1280              		.global	__aeabi_f2iz
 1281              		.section	.text.hot._ZN3DDA7PrepareEh,"ax",%progbits
 1282              		.align	1
 1283              		.p2align 2,,3
 1284              		.global	_ZN3DDA7PrepareEh
 1285              		.syntax unified
 1286              		.thumb
 1287              		.thumb_func
 1288              		.fpu softvfp
 1289              		.type	_ZN3DDA7PrepareEh, %function
 1290              	_ZN3DDA7PrepareEh:
 1291              		@ args = 0, pretend = 0, frame = 56
 1292              		@ frame_needed = 0, uses_anonymous_args = 0
 1293 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1294 0004 0546     		mov	r5, r0
 1295 0006 91B0     		sub	sp, sp, #68
 1296 0008 0C46     		mov	r4, r1
 1297 000a D0F88800 		ldr	r0, [r0, #136]	@ float
 1298 000e D5F8AC10 		ldr	r1, [r5, #172]	@ float
 1299 0012 FFF7FEFF 		bl	__aeabi_fsub
 1300 0016 0790     		str	r0, [sp, #28]	@ float
 1301 0018 002C     		cmp	r4, #0
 1302 001a 40F0AF80 		bne	.L254
 1303 001e AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 1304 0020 9A07     		lsls	r2, r3, #30
 1305 0022 00F13281 		bmi	.L310
 1306 0026 0746     		mov	r7, r0
 1307 0028 DFF81893 		ldr	r9, .L321+12
 1308              	.L255:
 1309 002c D5F8A440 		ldr	r4, [r5, #164]	@ float
 1310 0030 D5F89C30 		ldr	r3, [r5, #156]	@ float
 1311 0034 2046     		mov	r0, r4
ARM GAS  /tmp/cc7dtM4H.s 			page 24


 1312 0036 1946     		mov	r1, r3
 1313 0038 0493     		str	r3, [sp, #16]
 1314 003a FFF7FEFF 		bl	__aeabi_fsub
 1315 003e D5F88C60 		ldr	r6, [r5, #140]	@ float
 1316 0042 8246     		mov	r10, r0
 1317 0044 3146     		mov	r1, r6
 1318 0046 FFF7FEFF 		bl	__aeabi_fdiv
 1319 004a 049B     		ldr	r3, [sp, #16]
 1320 004c 8046     		mov	r8, r0
 1321 004e BA49     		ldr	r1, .L321
 1322 0050 1846     		mov	r0, r3
 1323 0052 FFF7FEFF 		bl	__aeabi_fmul
 1324 0056 3146     		mov	r1, r6
 1325 0058 FFF7FEFF 		bl	__aeabi_fdiv
 1326 005c FFF7FEFF 		bl	__aeabi_f2uiz
 1327 0060 B549     		ldr	r1, .L321
 1328 0062 C5F8BC00 		str	r0, [r5, #188]
 1329 0066 2046     		mov	r0, r4
 1330 0068 FFF7FEFF 		bl	__aeabi_fmul
 1331 006c 3146     		mov	r1, r6
 1332 006e FFF7FEFF 		bl	__aeabi_fdiv
 1333 0072 FFF7FEFF 		bl	__aeabi_f2uiz
 1334 0076 0646     		mov	r6, r0
 1335 0078 D5F8A830 		ldr	r3, [r5, #168]	@ float
 1336 007c 3846     		mov	r0, r7
 1337 007e 1946     		mov	r1, r3
 1338 0080 0493     		str	r3, [sp, #16]
 1339 0082 0896     		str	r6, [sp, #32]
 1340 0084 FFF7FEFF 		bl	__aeabi_fsub
 1341 0088 2146     		mov	r1, r4
 1342 008a FFF7FEFF 		bl	__aeabi_fdiv
 1343 008e 4146     		mov	r1, r8
 1344 0090 FFF7FEFF 		bl	__aeabi_fadd
 1345 0094 A849     		ldr	r1, .L321
 1346 0096 FFF7FEFF 		bl	__aeabi_fmul
 1347 009a FFF7FEFF 		bl	__aeabi_f2uiz
 1348 009e 049B     		ldr	r3, [sp, #16]
 1349 00a0 3044     		add	r0, r0, r6
 1350 00a2 C5F8C000 		str	r0, [r5, #192]
 1351 00a6 2146     		mov	r1, r4
 1352 00a8 1846     		mov	r0, r3
 1353 00aa FFF7FEFF 		bl	__aeabi_fdiv
 1354 00ae 0146     		mov	r1, r0
 1355 00b0 4046     		mov	r0, r8
 1356 00b2 FFF7FEFF 		bl	__aeabi_fsub
 1357 00b6 A049     		ldr	r1, .L321
 1358 00b8 FFF7FEFF 		bl	__aeabi_fmul
 1359 00bc FFF7FEFF 		bl	__aeabi_f2iz
 1360 00c0 2146     		mov	r1, r4
 1361 00c2 C5F8C400 		str	r0, [r5, #196]
 1362 00c6 5046     		mov	r0, r10
 1363 00c8 FFF7FEFF 		bl	__aeabi_fdiv
 1364 00cc AB46     		mov	fp, r5
 1365 00ce 0023     		movs	r3, #0
 1366 00d0 4BF8CC3F 		str	r3, [fp, #204]!
 1367 00d4 5E46     		mov	r6, fp
 1368 00d6 9846     		mov	r8, r3
ARM GAS  /tmp/cc7dtM4H.s 			page 25


 1369 00d8 D9F81030 		ldr	r3, [r9, #16]
 1370 00dc 05F1F00A 		add	r10, r5, #240
 1371 00e0 D3F8F831 		ldr	r3, [r3, #504]
 1372 00e4 CB46     		mov	fp, r9
 1373 00e6 954F     		ldr	r7, .L321+4
 1374 00e8 A946     		mov	r9, r5
 1375 00ea 0493     		str	r3, [sp, #16]
 1376 00ec 0990     		str	r0, [sp, #36]	@ float
 1377 00ee 3546     		mov	r5, r6
 1378 00f0 03E0     		b	.L280
 1379              	.L256:
 1380 00f2 B245     		cmp	r10, r6
 1381 00f4 08F10108 		add	r8, r8, #1
 1382 00f8 36D0     		beq	.L315
 1383              	.L280:
 1384 00fa 56F8044F 		ldr	r4, [r6, #4]!
 1385 00fe 002C     		cmp	r4, #0
 1386 0100 F7D0     		beq	.L256
 1387 0102 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 1388 0104 012B     		cmp	r3, #1
 1389 0106 F4D1     		bne	.L256
 1390 0108 99F80B30 		ldrb	r3, [r9, #11]	@ zero_extendqisi2
 1391 010c DB07     		lsls	r3, r3, #31
 1392 010e 7DD5     		bpl	.L257
 1393 0110 0221     		movs	r1, #2
 1394 0112 DBF80000 		ldr	r0, [fp]
 1395 0116 FFF7FEFF 		bl	_ZN8Platform11EnableDriveEj
 1396 011a 2046     		mov	r0, r4
 1397 011c 07AA     		add	r2, sp, #28
 1398 011e 4946     		mov	r1, r9
 1399 0120 FFF7FEFF 		bl	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams
 1400 0124 DBF84430 		ldr	r3, [fp, #68]
 1401 0128 D4F808E0 		ldr	lr, [r4, #8]
 1402 012c 5806     		lsls	r0, r3, #25
 1403 012e 03D5     		bpl	.L260
 1404 0130 834B     		ldr	r3, .L321+8
 1405 0132 9E45     		cmp	lr, r3
 1406 0134 00F2DE80 		bhi	.L259
 1407              	.L260:
 1408 0138 0023     		movs	r3, #0
 1409 013a E371     		strb	r3, [r4, #7]
 1410 013c 99F80A20 		ldrb	r2, [r9, #10]	@ zero_extendqisi2
 1411 0140 A761     		str	r7, [r4, #24]
 1412 0142 9207     		lsls	r2, r2, #30
 1413 0144 E360     		str	r3, [r4, #12]
 1414 0146 6361     		str	r3, [r4, #20]
 1415 0148 02D5     		bpl	.L273
 1416 014a 049B     		ldr	r3, [sp, #16]
 1417 014c 4345     		cmp	r3, r8
 1418 014e 3ED8     		bhi	.L283
 1419              	.L273:
 1420 0150 0123     		movs	r3, #1
 1421 0152 E360     		str	r3, [r4, #12]
 1422 0154 BEF1000F 		cmp	lr, #0
 1423 0158 40F08E80 		bne	.L316
 1424              	.L274:
 1425 015c 0023     		movs	r3, #0
ARM GAS  /tmp/cc7dtM4H.s 			page 26


 1426 015e B245     		cmp	r10, r6
 1427 0160 2371     		strb	r3, [r4, #4]
 1428 0162 08F10108 		add	r8, r8, #1
 1429 0166 C8D1     		bne	.L280
 1430              	.L315:
 1431 0168 DBF84430 		ldr	r3, [fp, #68]
 1432 016c 4D46     		mov	r5, r9
 1433 016e 03F05003 		and	r3, r3, #80
 1434 0172 502B     		cmp	r3, #80
 1435 0174 02D1     		bne	.L254
 1436 0176 2846     		mov	r0, r5
 1437 0178 FFF7FEFF 		bl	_ZNK3DDA13DebugPrintAllEv
 1438              	.L254:
 1439 017c 0223     		movs	r3, #2
 1440 017e 2B72     		strb	r3, [r5, #8]
 1441 0180 11B0     		add	sp, sp, #68
 1442              		@ sp needed
 1443 0182 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1444              	.L261:
 1445 0186 99F80A30 		ldrb	r3, [r9, #10]	@ zero_extendqisi2
 1446 018a 07AA     		add	r2, sp, #28
 1447 018c 9B07     		lsls	r3, r3, #30
 1448 018e 4946     		mov	r1, r9
 1449 0190 2046     		mov	r0, r4
 1450 0192 03D5     		bpl	.L267
 1451 0194 B8F1020F 		cmp	r8, #2
 1452 0198 40F2D680 		bls	.L317
 1453              	.L267:
 1454 019c FFF7FEFF 		bl	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams
 1455 01a0 DBF84430 		ldr	r3, [fp, #68]
 1456 01a4 D4F808E0 		ldr	lr, [r4, #8]
 1457 01a8 5906     		lsls	r1, r3, #25
 1458 01aa 07D5     		bpl	.L270
 1459              	.L271:
 1460 01ac 644B     		ldr	r3, .L321+8
 1461 01ae 9E45     		cmp	lr, r3
 1462 01b0 04D9     		bls	.L270
 1463 01b2 4846     		mov	r0, r9
 1464 01b4 FFF7FEFF 		bl	_ZNK3DDA13DebugPrintAllEv
 1465 01b8 D4F808E0 		ldr	lr, [r4, #8]
 1466              	.L270:
 1467 01bc 0023     		movs	r3, #0
 1468 01be E371     		strb	r3, [r4, #7]
 1469 01c0 99F80A20 		ldrb	r2, [r9, #10]	@ zero_extendqisi2
 1470 01c4 E360     		str	r3, [r4, #12]
 1471 01c6 6361     		str	r3, [r4, #20]
 1472 01c8 9307     		lsls	r3, r2, #30
 1473 01ca A761     		str	r7, [r4, #24]
 1474 01cc C0D5     		bpl	.L273
 1475              	.L283:
 1476 01ce 0123     		movs	r3, #1
 1477 01d0 E360     		str	r3, [r4, #12]
 1478 01d2 BEF1000F 		cmp	lr, #0
 1479 01d6 C1D0     		beq	.L274
 1480 01d8 0022     		movs	r2, #0
 1481 01da 4946     		mov	r1, r9
 1482 01dc 2046     		mov	r0, r4
ARM GAS  /tmp/cc7dtM4H.s 			page 27


 1483 01de FFF7FEFF 		bl	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb
 1484 01e2 0028     		cmp	r0, #0
 1485 01e4 BAD0     		beq	.L274
 1486              	.L320:
 1487 01e6 D9F8CC30 		ldr	r3, [r9, #204]
 1488 01ea 2946     		mov	r1, r5
 1489 01ec 5BB1     		cbz	r3, .L276
 1490 01ee 6069     		ldr	r0, [r4, #20]
 1491 01f0 5A69     		ldr	r2, [r3, #20]
 1492 01f2 9042     		cmp	r0, r2
 1493 01f4 03D8     		bhi	.L278
 1494 01f6 06E0     		b	.L276
 1495              	.L279:
 1496 01f8 5A69     		ldr	r2, [r3, #20]
 1497 01fa 8242     		cmp	r2, r0
 1498 01fc 03D2     		bcs	.L276
 1499              	.L278:
 1500 01fe 1946     		mov	r1, r3
 1501 0200 1B68     		ldr	r3, [r3]
 1502 0202 002B     		cmp	r3, #0
 1503 0204 F8D1     		bne	.L279
 1504              	.L276:
 1505 0206 2360     		str	r3, [r4]
 1506 0208 0C60     		str	r4, [r1]
 1507 020a 72E7     		b	.L256
 1508              	.L257:
 1509 020c 4146     		mov	r1, r8
 1510 020e DBF80000 		ldr	r0, [fp]
 1511 0212 FFF7FEFF 		bl	_ZN8Platform11EnableDriveEj
 1512 0216 049B     		ldr	r3, [sp, #16]
 1513 0218 4345     		cmp	r3, r8
 1514 021a B4D8     		bhi	.L261
 1515 021c 99F80A20 		ldrb	r2, [r9, #10]	@ zero_extendqisi2
 1516 0220 12F01003 		ands	r3, r2, #16
 1517 0224 0293     		str	r3, [sp, #8]
 1518 0226 6BD1     		bne	.L318
 1519 0228 0023     		movs	r3, #0
 1520              	.L262:
 1521 022a 029A     		ldr	r2, [sp, #8]
 1522 022c 4946     		mov	r1, r9
 1523 022e 0032     		adds	r2, r2, #0
 1524 0230 18BF     		it	ne
 1525 0232 0122     		movne	r2, #1
 1526 0234 2046     		mov	r0, r4
 1527 0236 0092     		str	r2, [sp]
 1528 0238 07AA     		add	r2, sp, #28
 1529 023a FFF7FEFF 		bl	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb
 1530 023e DBF84430 		ldr	r3, [fp, #68]
 1531 0242 D4F808E0 		ldr	lr, [r4, #8]
 1532 0246 5A06     		lsls	r2, r3, #25
 1533 0248 0CD5     		bpl	.L266
 1534 024a 3D4B     		ldr	r3, .L321+8
 1535 024c 9E45     		cmp	lr, r3
 1536 024e 04D8     		bhi	.L265
 1537 0250 2069     		ldr	r0, [r4, #16]
 1538 0252 E36B     		ldr	r3, [r4, #60]
 1539 0254 9842     		cmp	r0, r3
ARM GAS  /tmp/cc7dtM4H.s 			page 28


 1540 0256 80F08180 		bcs	.L319
 1541              	.L265:
 1542 025a 4846     		mov	r0, r9
 1543 025c FFF7FEFF 		bl	_ZNK3DDA13DebugPrintAllEv
 1544 0260 D4F808E0 		ldr	lr, [r4, #8]
 1545              	.L266:
 1546 0264 0023     		movs	r3, #0
 1547 0266 6361     		str	r3, [r4, #20]
 1548 0268 E371     		strb	r3, [r4, #7]
 1549 026a 0123     		movs	r3, #1
 1550 026c A761     		str	r7, [r4, #24]
 1551 026e E360     		str	r3, [r4, #12]
 1552 0270 BEF1000F 		cmp	lr, #0
 1553 0274 3FF472AF 		beq	.L274
 1554              	.L316:
 1555 0278 0022     		movs	r2, #0
 1556 027a 4946     		mov	r1, r9
 1557 027c 2046     		mov	r0, r4
 1558 027e FFF7FEFF 		bl	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb
 1559 0282 0028     		cmp	r0, #0
 1560 0284 3FF46AAF 		beq	.L274
 1561 0288 ADE7     		b	.L320
 1562              	.L310:
 1563 028a 4FF09341 		mov	r1, #1233125376
 1564 028e E86E     		ldr	r0, [r5, #108]	@ float
 1565 0290 FFF7FEFF 		bl	__aeabi_fmul
 1566 0294 FFF7FEFF 		bl	__aeabi_f2iz
 1567 0298 696E     		ldr	r1, [r5, #100]	@ float
 1568 029a C5F89800 		str	r0, [r5, #152]
 1569 029e 0846     		mov	r0, r1
 1570 02a0 FFF7FEFF 		bl	__aeabi_fmul
 1571 02a4 AF6E     		ldr	r7, [r5, #104]	@ float
 1572 02a6 0646     		mov	r6, r0
 1573 02a8 3946     		mov	r1, r7
 1574 02aa 3846     		mov	r0, r7
 1575 02ac FFF7FEFF 		bl	__aeabi_fmul
 1576 02b0 0146     		mov	r1, r0
 1577 02b2 3046     		mov	r0, r6
 1578 02b4 FFF7FEFF 		bl	__aeabi_fadd
 1579 02b8 2246     		mov	r2, r4
 1580 02ba 0E90     		str	r0, [sp, #56]	@ float
 1581 02bc 2146     		mov	r1, r4
 1582 02be 6868     		ldr	r0, [r5, #4]
 1583 02c0 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 1584 02c4 2246     		mov	r2, r4
 1585 02c6 0A90     		str	r0, [sp, #40]	@ float
 1586 02c8 0121     		movs	r1, #1
 1587 02ca 6868     		ldr	r0, [r5, #4]
 1588 02cc FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 1589 02d0 DFF87090 		ldr	r9, .L321+12
 1590 02d4 0B90     		str	r0, [sp, #44]	@ float
 1591 02d6 D9F80830 		ldr	r3, [r9, #8]
 1592 02da 0E98     		ldr	r0, [sp, #56]	@ float
 1593 02dc D3F8FC24 		ldr	r2, [r3, #1276]
 1594 02e0 D2F89C30 		ldr	r3, [r2, #156]	@ float
 1595 02e4 0C92     		str	r2, [sp, #48]
 1596 02e6 1946     		mov	r1, r3
ARM GAS  /tmp/cc7dtM4H.s 			page 29


 1597 02e8 0D93     		str	r3, [sp, #52]	@ float
 1598 02ea FFF7FEFF 		bl	__aeabi_fmul
 1599 02ee 079F     		ldr	r7, [sp, #28]	@ float
 1600 02f0 0F90     		str	r0, [sp, #60]	@ float
 1601 02f2 9BE6     		b	.L255
 1602              	.L259:
 1603 02f4 4846     		mov	r0, r9
 1604 02f6 FFF7FEFF 		bl	_ZNK3DDA13DebugPrintAllEv
 1605 02fa D4F808E0 		ldr	lr, [r4, #8]
 1606 02fe 1BE7     		b	.L260
 1607              	.L318:
 1608 0300 D9F80430 		ldr	r3, [r9, #4]
 1609 0304 9A7A     		ldrb	r2, [r3, #10]	@ zero_extendqisi2
 1610 0306 D106     		lsls	r1, r2, #27
 1611 0308 14D5     		bpl	.L285
 1612 030a 03EB8802 		add	r2, r3, r8, lsl #2
 1613 030e D3F8A000 		ldr	r0, [r3, #160]	@ float
 1614 0312 516E     		ldr	r1, [r2, #100]	@ float
 1615 0314 FFF7FEFF 		bl	__aeabi_fmul
 1616 0318 0346     		mov	r3, r0
 1617              	.L263:
 1618 031a 56F86C1C 		ldr	r1, [r6, #-108]	@ float
 1619 031e D9F89C00 		ldr	r0, [r9, #156]	@ float
 1620 0322 0593     		str	r3, [sp, #20]
 1621 0324 FFF7FEFF 		bl	__aeabi_fmul
 1622 0328 059B     		ldr	r3, [sp, #20]
 1623 032a 1946     		mov	r1, r3
 1624 032c FFF7FEFF 		bl	__aeabi_fsub
 1625 0330 0346     		mov	r3, r0
 1626 0332 7AE7     		b	.L262
 1627              	.L285:
 1628 0334 0023     		movs	r3, #0
 1629 0336 F0E7     		b	.L263
 1630              	.L322:
 1631              		.align	2
 1632              	.L321:
 1633 0338 A0372049 		.word	1226848160
 1634 033c 3F420F00 		.word	999999
 1635 0340 40420F00 		.word	1000000
 1636 0344 00000000 		.word	reprap
 1637              	.L317:
 1638 0348 FFF7FEFF 		bl	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams
 1639 034c DBF84430 		ldr	r3, [fp, #68]
 1640 0350 D4F808E0 		ldr	lr, [r4, #8]
 1641 0354 5806     		lsls	r0, r3, #25
 1642 0356 7FF531AF 		bpl	.L270
 1643 035a 27E7     		b	.L271
 1644              	.L319:
 1645 035c 8645     		cmp	lr, r0
 1646 035e 81D3     		bcc	.L266
 1647 0360 A36A     		ldr	r3, [r4, #40]
 1648 0362 A3FB0023 		umull	r2, r3, r3, r0
 1649 0366 1146     		mov	r1, r2
 1650 0368 1A46     		mov	r2, r3
 1651 036a E36A     		ldr	r3, [r4, #44]
 1652 036c CDE90212 		strd	r1, [sp, #8]
 1653 0370 00FB0323 		mla	r3, r0, r3, r2
ARM GAS  /tmp/cc7dtM4H.s 			page 30


 1654 0374 0393     		str	r3, [sp, #12]
 1655 0376 DDE90201 		ldrd	r0, [sp, #8]
 1656 037a D4E90C23 		ldrd	r2, [r4, #48]
 1657 037e 9042     		cmp	r0, r2
 1658 0380 71EB0303 		sbcs	r3, r1, r3
 1659 0384 FFF669AF 		blt	.L265
 1660 0388 6CE7     		b	.L266
 1661              		.size	_ZN3DDA7PrepareEh, .-_ZN3DDA7PrepareEh
 1662 038a 00BF     		.section	.text._ZN3DDA21VectorBoxIntersectionEPKfS1_j,"ax",%progbits
 1663              		.align	1
 1664              		.p2align 2,,3
 1665              		.global	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 1666              		.syntax unified
 1667              		.thumb
 1668              		.thumb_func
 1669              		.fpu softvfp
 1670              		.type	_ZN3DDA21VectorBoxIntersectionEPKfS1_j, %function
 1671              	_ZN3DDA21VectorBoxIntersectionEPKfS1_j:
 1672              		@ args = 0, pretend = 0, frame = 0
 1673              		@ frame_needed = 0, uses_anonymous_args = 0
 1674 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1675 0004 002A     		cmp	r2, #0
 1676 0006 37D0     		beq	.L331
 1677 0008 0F46     		mov	r7, r1
 1678 000a 0446     		mov	r4, r0
 1679 000c 0D46     		mov	r5, r1
 1680 000e 0026     		movs	r6, #0
 1681 0010 4FEA8209 		lsl	r9, r2, #2
 1682 0014 01EB0908 		add	r8, r1, r9
 1683              	.L326:
 1684 0018 55F8041B 		ldr	r1, [r5], #4	@ float
 1685 001c 0846     		mov	r0, r1
 1686 001e FFF7FEFF 		bl	__aeabi_fmul
 1687 0022 0146     		mov	r1, r0
 1688 0024 3046     		mov	r0, r6
 1689 0026 FFF7FEFF 		bl	__aeabi_fadd
 1690 002a 4545     		cmp	r5, r8
 1691 002c 0646     		mov	r6, r0
 1692 002e F3D1     		bne	.L326
 1693 0030 FFF7FEFF 		bl	sqrtf
 1694 0034 0146     		mov	r1, r0
 1695 0036 FFF7FEFF 		bl	__aeabi_fadd
 1696 003a 8046     		mov	r8, r0
 1697 003c 8246     		mov	r10, r0
 1698 003e A144     		add	r9, r9, r4
 1699 0040 043F     		subs	r7, r7, #4
 1700              	.L330:
 1701 0042 54F8046B 		ldr	r6, [r4], #4	@ float
 1702 0046 57F8045F 		ldr	r5, [r7, #4]!	@ float
 1703 004a 4146     		mov	r1, r8
 1704 004c 3046     		mov	r0, r6
 1705 004e FFF7FEFF 		bl	__aeabi_fmul
 1706 0052 2946     		mov	r1, r5
 1707 0054 FFF7FEFF 		bl	__aeabi_fcmpgt
 1708 0058 48B1     		cbz	r0, .L327
 1709 005a 3146     		mov	r1, r6
 1710 005c 2846     		mov	r0, r5
ARM GAS  /tmp/cc7dtM4H.s 			page 31


 1711 005e FFF7FEFF 		bl	__aeabi_fdiv
 1712 0062 5146     		mov	r1, r10
 1713 0064 0546     		mov	r5, r0
 1714 0066 FFF7FEFF 		bl	__aeabi_fcmplt
 1715 006a 00B1     		cbz	r0, .L327
 1716 006c AA46     		mov	r10, r5
 1717              	.L327:
 1718 006e 4C45     		cmp	r4, r9
 1719 0070 E7D1     		bne	.L330
 1720              	.L323:
 1721 0072 5046     		mov	r0, r10
 1722 0074 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1723              	.L331:
 1724 0078 4FF0000A 		mov	r10, #0
 1725 007c F9E7     		b	.L323
 1726              		.size	_ZN3DDA21VectorBoxIntersectionEPKfS1_j, .-_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 1727 007e 00BF     		.section	.text._ZN3DDA9NormaliseEPfjj,"ax",%progbits
 1728              		.align	1
 1729              		.p2align 2,,3
 1730              		.global	_ZN3DDA9NormaliseEPfjj
 1731              		.syntax unified
 1732              		.thumb
 1733              		.thumb_func
 1734              		.fpu softvfp
 1735              		.type	_ZN3DDA9NormaliseEPfjj, %function
 1736              	_ZN3DDA9NormaliseEPfjj:
 1737              		@ args = 0, pretend = 0, frame = 0
 1738              		@ frame_needed = 0, uses_anonymous_args = 0
 1739 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1740 0004 7AB3     		cbz	r2, .L342
 1741 0006 8946     		mov	r9, r1
 1742 0008 8046     		mov	r8, r0
 1743 000a 0446     		mov	r4, r0
 1744 000c 0546     		mov	r5, r0
 1745 000e 0026     		movs	r6, #0
 1746 0010 00EB8207 		add	r7, r0, r2, lsl #2
 1747              	.L339:
 1748 0014 55F8041B 		ldr	r1, [r5], #4	@ float
 1749 0018 0846     		mov	r0, r1
 1750 001a FFF7FEFF 		bl	__aeabi_fmul
 1751 001e 0146     		mov	r1, r0
 1752 0020 3046     		mov	r0, r6
 1753 0022 FFF7FEFF 		bl	__aeabi_fadd
 1754 0026 BD42     		cmp	r5, r7
 1755 0028 0646     		mov	r6, r0
 1756 002a F3D1     		bne	.L339
 1757 002c FFF7FEFF 		bl	sqrtf
 1758 0030 0021     		movs	r1, #0
 1759 0032 0746     		mov	r7, r0
 1760 0034 FFF7FEFF 		bl	__aeabi_fcmple
 1761 0038 A8B9     		cbnz	r0, .L342
 1762 003a 3946     		mov	r1, r7
 1763 003c 4FF07E50 		mov	r0, #1065353216
 1764 0040 FFF7FEFF 		bl	__aeabi_fdiv
 1765 0044 0646     		mov	r6, r0
 1766 0046 B9F1000F 		cmp	r9, #0
 1767 004a 09D0     		beq	.L337
ARM GAS  /tmp/cc7dtM4H.s 			page 32


 1768 004c 08EB8908 		add	r8, r8, r9, lsl #2
 1769              	.L340:
 1770 0050 2068     		ldr	r0, [r4]	@ float
 1771 0052 3146     		mov	r1, r6
 1772 0054 FFF7FEFF 		bl	__aeabi_fmul
 1773 0058 44F8040B 		str	r0, [r4], #4	@ float
 1774 005c A045     		cmp	r8, r4
 1775 005e F7D1     		bne	.L340
 1776              	.L337:
 1777 0060 3846     		mov	r0, r7
 1778 0062 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1779              	.L342:
 1780 0066 0027     		movs	r7, #0
 1781 0068 3846     		mov	r0, r7
 1782 006a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1783              		.size	_ZN3DDA9NormaliseEPfjj, .-_ZN3DDA9NormaliseEPfjj
 1784 006e 00BF     		.section	.text._ZN3DDA4InitEPKf,"ax",%progbits
 1785              		.align	1
 1786              		.p2align 2,,3
 1787              		.global	_ZN3DDA4InitEPKf
 1788              		.syntax unified
 1789              		.thumb
 1790              		.thumb_func
 1791              		.fpu softvfp
 1792              		.type	_ZN3DDA4InitEPKf, %function
 1793              	_ZN3DDA4InitEPKf:
 1794              		@ args = 0, pretend = 0, frame = 120
 1795              		@ frame_needed = 0, uses_anonymous_args = 0
 1796 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1797 0004 0024     		movs	r4, #0
 1798 0006 684B     		ldr	r3, .L375
 1799 0008 0E1F     		subs	r6, r1, #4
 1800 000a 1968     		ldr	r1, [r3]
 1801 000c 9FB0     		sub	sp, sp, #124
 1802 000e 0546     		mov	r5, r0
 1803 0010 0194     		str	r4, [sp, #4]
 1804 0012 00F1180B 		add	fp, r0, #24
 1805 0016 D1F800A1 		ldr	r10, [r1, #256]	@ float
 1806 001a D1F8DC90 		ldr	r9, [r1, #220]	@ float
 1807 001e 0DF10C08 		add	r8, sp, #12
 1808 0022 0CAF     		add	r7, sp, #48
 1809 0024 04E0     		b	.L352
 1810              	.L350:
 1811 0026 0134     		adds	r4, r4, #1
 1812 0028 092C     		cmp	r4, #9
 1813 002a 35D0     		beq	.L351
 1814              	.L373:
 1815 002c 5E4B     		ldr	r3, .L375
 1816 002e 1968     		ldr	r1, [r3]
 1817              	.L352:
 1818 0030 6A68     		ldr	r2, [r5, #4]
 1819 0032 48F824A0 		str	r10, [r8, r4, lsl #2]	@ float
 1820 0036 02EB8402 		add	r2, r2, r4, lsl #2
 1821 003a D069     		ldr	r0, [r2, #28]
 1822 003c 47F82490 		str	r9, [r7, r4, lsl #2]	@ float
 1823 0040 4BF8040F 		str	r0, [fp, #4]!
 1824 0044 126C     		ldr	r2, [r2, #64]	@ float
ARM GAS  /tmp/cc7dtM4H.s 			page 33


 1825 0046 CBF82420 		str	r2, [fp, #36]	@ float
 1826 004a 56F8040F 		ldr	r0, [r6, #4]!	@ float
 1827 004e CBF84800 		str	r0, [fp, #72]	@ float
 1828 0052 D1F82C11 		ldr	r1, [r1, #300]	@ float
 1829 0056 FFF7FEFF 		bl	__aeabi_fmul
 1830 005a FFF7FEFF 		bl	lrintf
 1831 005e 0028     		cmp	r0, #0
 1832 0060 E1D0     		beq	.L350
 1833 0062 0190     		str	r0, [sp, #4]
 1834 0064 0121     		movs	r1, #1
 1835 0066 04F10900 		add	r0, r4, #9
 1836 006a FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
 1837 006e 019B     		ldr	r3, [sp, #4]
 1838 0070 CBF8B400 		str	r0, [fp, #180]
 1839 0074 6FEA030E 		mvn	lr, r3
 1840 0078 83EAE372 		eor	r2, r3, r3, asr #31
 1841 007c A2EBE372 		sub	r2, r2, r3, asr #31
 1842 0080 0123     		movs	r3, #1
 1843 0082 8179     		ldrb	r1, [r0, #6]	@ zero_extendqisi2
 1844 0084 4FEADE7E 		lsr	lr, lr, #31
 1845 0088 0134     		adds	r4, r4, #1
 1846 008a 6EF30411 		bfi	r1, lr, #4, #1
 1847 008e 092C     		cmp	r4, #9
 1848 0090 0193     		str	r3, [sp, #4]
 1849 0092 8260     		str	r2, [r0, #8]
 1850 0094 8171     		strb	r1, [r0, #6]
 1851 0096 C9D1     		bne	.L373
 1852              	.L351:
 1853 0098 019B     		ldr	r3, [sp, #4]
 1854 009a D3B9     		cbnz	r3, .L353
 1855 009c 1E46     		mov	r6, r3
 1856 009e 1F46     		mov	r7, r3
 1857 00a0 DFF80CE1 		ldr	lr, .L375+8
 1858 00a4 4149     		ldr	r1, .L375+4
 1859 00a6 DEF80020 		ldr	r2, [lr]
 1860 00aa 05F1F404 		add	r4, r5, #244
 1861 00ae D035     		adds	r5, r5, #208
 1862              	.L355:
 1863 00b0 2B68     		ldr	r3, [r5]
 1864 00b2 2BB1     		cbz	r3, .L354
 1865 00b4 0126     		movs	r6, #1
 1866 00b6 0868     		ldr	r0, [r1]
 1867 00b8 3244     		add	r2, r2, r6
 1868 00ba 1860     		str	r0, [r3]
 1869 00bc 0B60     		str	r3, [r1]
 1870 00be 2F60     		str	r7, [r5]
 1871              	.L354:
 1872 00c0 0435     		adds	r5, r5, #4
 1873 00c2 AC42     		cmp	r4, r5
 1874 00c4 F4D1     		bne	.L355
 1875 00c6 002E     		cmp	r6, #0
 1876 00c8 6AD1     		bne	.L374
 1877              	.L357:
 1878 00ca 0198     		ldr	r0, [sp, #4]
 1879 00cc 1FB0     		add	sp, sp, #124
 1880              		@ sp needed
 1881 00ce BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
ARM GAS  /tmp/cc7dtM4H.s 			page 34


 1882              	.L353:
 1883 00d2 0020     		movs	r0, #0
 1884 00d4 AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 1885 00d6 EA7A     		ldrb	r2, [r5, #11]	@ zero_extendqisi2
 1886 00d8 03F0B503 		and	r3, r3, #181
 1887 00dc 43F00403 		orr	r3, r3, #4
 1888 00e0 60F30413 		bfi	r3, r0, #4, #1
 1889 00e4 AB72     		strb	r3, [r5, #10]
 1890 00e6 D9B2     		uxtb	r1, r3
 1891 00e8 42F00103 		orr	r3, r2, #1
 1892 00ec 6E68     		ldr	r6, [r5, #4]
 1893 00ee 60F34103 		bfi	r3, r0, #1, #1
 1894 00f2 EB72     		strb	r3, [r5, #11]
 1895 00f4 D6F89430 		ldr	r3, [r6, #148]	@ float
 1896 00f8 60F34511 		bfi	r1, r0, #5, #1
 1897 00fc A972     		strb	r1, [r5, #10]
 1898 00fe 3169     		ldr	r1, [r6, #16]
 1899 0100 7269     		ldr	r2, [r6, #20]
 1900 0102 C5F89430 		str	r3, [r5, #148]	@ float
 1901 0106 B369     		ldr	r3, [r6, #24]
 1902 0108 E860     		str	r0, [r5, #12]
 1903 010a 2961     		str	r1, [r5, #16]
 1904 010c AB61     		str	r3, [r5, #24]
 1905 010e 6A61     		str	r2, [r5, #20]
 1906 0110 B27A     		ldrb	r2, [r6, #10]	@ zero_extendqisi2
 1907 0112 AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 1908 0114 05F16406 		add	r6, r5, #100
 1909 0118 62F30003 		bfi	r3, r2, #0, #1
 1910 011c 60F3C713 		bfi	r3, r0, #7, #1
 1911 0120 2246     		mov	r2, r4
 1912 0122 2146     		mov	r1, r4
 1913 0124 AB72     		strb	r3, [r5, #10]
 1914 0126 3046     		mov	r0, r6
 1915 0128 FFF7FEFF 		bl	_ZN3DDA9NormaliseEPfjj
 1916 012c 3446     		mov	r4, r6
 1917 012e 0DF1540E 		add	lr, sp, #84
 1918 0132 C5F88800 		str	r0, [r5, #136]	@ float
 1919 0136 05F1840C 		add	ip, r5, #132
 1920              	.L358:
 1921 013a 7646     		mov	r6, lr
 1922 013c 2068     		ldr	r0, [r4]	@ unaligned
 1923 013e 6168     		ldr	r1, [r4, #4]	@ unaligned
 1924 0140 A268     		ldr	r2, [r4, #8]	@ unaligned
 1925 0142 E368     		ldr	r3, [r4, #12]	@ unaligned
 1926 0144 1034     		adds	r4, r4, #16
 1927 0146 6445     		cmp	r4, ip
 1928 0148 0EF1100E 		add	lr, lr, #16
 1929 014c 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 1930 014e F4D1     		bne	.L358
 1931 0150 2068     		ldr	r0, [r4]	@ unaligned
 1932 0152 14AB     		add	r3, sp, #80
 1933 0154 CEF80000 		str	r0, [lr]
 1934 0158 1DA9     		add	r1, sp, #116
 1935              	.L359:
 1936 015a 5A68     		ldr	r2, [r3, #4]
 1937 015c 22F00042 		bic	r2, r2, #-2147483648
 1938 0160 43F8042F 		str	r2, [r3, #4]!	@ float
ARM GAS  /tmp/cc7dtM4H.s 			page 35


 1939 0164 8B42     		cmp	r3, r1
 1940 0166 F8D1     		bne	.L359
 1941 0168 4146     		mov	r1, r8
 1942 016a 0922     		movs	r2, #9
 1943 016c 15A8     		add	r0, sp, #84
 1944 016e FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 1945 0172 3946     		mov	r1, r7
 1946 0174 C5F88C00 		str	r0, [r5, #140]	@ float
 1947 0178 0922     		movs	r2, #9
 1948 017a 15A8     		add	r0, sp, #84
 1949 017c FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 1950 0180 0023     		movs	r3, #0
 1951 0182 C5F89000 		str	r0, [r5, #144]	@ float
 1952 0186 C5F8A030 		str	r3, [r5, #160]	@ float
 1953 018a C5F89C30 		str	r3, [r5, #156]	@ float
 1954 018e 2846     		mov	r0, r5
 1955 0190 FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 1956 0194 0123     		movs	r3, #1
 1957 0196 0198     		ldr	r0, [sp, #4]
 1958 0198 2B72     		strb	r3, [r5, #8]
 1959 019a 1FB0     		add	sp, sp, #124
 1960              		@ sp needed
 1961 019c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1962              	.L374:
 1963 01a0 CEF80020 		str	r2, [lr]
 1964 01a4 91E7     		b	.L357
 1965              	.L376:
 1966 01a6 00BF     		.align	2
 1967              	.L375:
 1968 01a8 00000000 		.word	reprap
 1969 01ac 00000000 		.word	_ZN13DriveMovement8freeListE
 1970 01b0 00000000 		.word	_ZN13DriveMovement7numFreeE
 1971              		.size	_ZN3DDA4InitEPKf, .-_ZN3DDA4InitEPKf
 1972              		.global	__aeabi_ui2f
 1973              		.section	.text._ZN3DDA12NormaliseXYZEv,"ax",%progbits
 1974              		.align	1
 1975              		.p2align 2,,3
 1976              		.global	_ZN3DDA12NormaliseXYZEv
 1977              		.syntax unified
 1978              		.thumb
 1979              		.thumb_func
 1980              		.fpu softvfp
 1981              		.type	_ZN3DDA12NormaliseXYZEv, %function
 1982              	_ZN3DDA12NormaliseXYZEv:
 1983              		@ args = 0, pretend = 0, frame = 8
 1984              		@ frame_needed = 0, uses_anonymous_args = 0
 1985 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1986 0004 0024     		movs	r4, #0
 1987 0006 0026     		movs	r6, #0
 1988 0008 A046     		mov	r8, r4
 1989 000a A146     		mov	r9, r4
 1990 000c 3746     		mov	r7, r6
 1991 000e 83B0     		sub	sp, sp, #12
 1992 0010 D0F810B0 		ldr	fp, [r0, #16]
 1993 0014 D0F814A0 		ldr	r10, [r0, #20]
 1994 0018 0190     		str	r0, [sp, #4]
 1995 001a 00F16405 		add	r5, r0, #100
ARM GAS  /tmp/cc7dtM4H.s 			page 36


 1996              	.L380:
 1997 001e 2BFA04F3 		lsr	r3, fp, r4
 1998 0022 DB07     		lsls	r3, r3, #31
 1999 0024 0AD5     		bpl	.L378
 2000 0026 2968     		ldr	r1, [r5]	@ float
 2001 0028 09F10109 		add	r9, r9, #1
 2002 002c 0846     		mov	r0, r1
 2003 002e FFF7FEFF 		bl	__aeabi_fmul
 2004 0032 0146     		mov	r1, r0
 2005 0034 3846     		mov	r0, r7
 2006 0036 FFF7FEFF 		bl	__aeabi_fadd
 2007 003a 0746     		mov	r7, r0
 2008              	.L378:
 2009 003c 2AFA04F3 		lsr	r3, r10, r4
 2010 0040 13F0010F 		tst	r3, #1
 2011 0044 04F10104 		add	r4, r4, #1
 2012 0048 0AD0     		beq	.L379
 2013 004a 2968     		ldr	r1, [r5]	@ float
 2014 004c 08F10108 		add	r8, r8, #1
 2015 0050 0846     		mov	r0, r1
 2016 0052 FFF7FEFF 		bl	__aeabi_fmul
 2017 0056 0146     		mov	r1, r0
 2018 0058 3046     		mov	r0, r6
 2019 005a FFF7FEFF 		bl	__aeabi_fadd
 2020 005e 0646     		mov	r6, r0
 2021              	.L379:
 2022 0060 062C     		cmp	r4, #6
 2023 0062 05F10405 		add	r5, r5, #4
 2024 0066 DAD1     		bne	.L380
 2025 0068 B9F1010F 		cmp	r9, #1
 2026 006c 07D9     		bls	.L381
 2027 006e 4846     		mov	r0, r9
 2028 0070 FFF7FEFF 		bl	__aeabi_ui2f
 2029 0074 0146     		mov	r1, r0
 2030 0076 3846     		mov	r0, r7
 2031 0078 FFF7FEFF 		bl	__aeabi_fdiv
 2032 007c 0746     		mov	r7, r0
 2033              	.L381:
 2034 007e B8F1010F 		cmp	r8, #1
 2035 0082 07D9     		bls	.L382
 2036 0084 4046     		mov	r0, r8
 2037 0086 FFF7FEFF 		bl	__aeabi_ui2f
 2038 008a 0146     		mov	r1, r0
 2039 008c 3046     		mov	r0, r6
 2040 008e FFF7FEFF 		bl	__aeabi_fdiv
 2041 0092 0646     		mov	r6, r0
 2042              	.L382:
 2043 0094 3146     		mov	r1, r6
 2044 0096 3846     		mov	r0, r7
 2045 0098 FFF7FEFF 		bl	__aeabi_fadd
 2046 009c 019D     		ldr	r5, [sp, #4]
 2047 009e 0446     		mov	r4, r0
 2048 00a0 EE6E     		ldr	r6, [r5, #108]	@ float
 2049 00a2 3146     		mov	r1, r6
 2050 00a4 3046     		mov	r0, r6
 2051 00a6 FFF7FEFF 		bl	__aeabi_fmul
 2052 00aa 0146     		mov	r1, r0
ARM GAS  /tmp/cc7dtM4H.s 			page 37


 2053 00ac 2046     		mov	r0, r4
 2054 00ae FFF7FEFF 		bl	__aeabi_fadd
 2055 00b2 FFF7FEFF 		bl	sqrtf
 2056 00b6 0021     		movs	r1, #0
 2057 00b8 0746     		mov	r7, r0
 2058 00ba FFF7FEFF 		bl	__aeabi_fcmple
 2059 00be A0B9     		cbnz	r0, .L385
 2060 00c0 3946     		mov	r1, r7
 2061 00c2 4FF07E50 		mov	r0, #1065353216
 2062 00c6 FFF7FEFF 		bl	__aeabi_fdiv
 2063 00ca 0646     		mov	r6, r0
 2064 00cc 05F16004 		add	r4, r5, #96
 2065 00d0 8435     		adds	r5, r5, #132
 2066              	.L384:
 2067 00d2 6168     		ldr	r1, [r4, #4]	@ float
 2068 00d4 3046     		mov	r0, r6
 2069 00d6 FFF7FEFF 		bl	__aeabi_fmul
 2070 00da 44F8040F 		str	r0, [r4, #4]!	@ float
 2071 00de AC42     		cmp	r4, r5
 2072 00e0 F7D1     		bne	.L384
 2073 00e2 3846     		mov	r0, r7
 2074 00e4 03B0     		add	sp, sp, #12
 2075              		@ sp needed
 2076 00e6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2077              	.L385:
 2078 00ea 0020     		movs	r0, #0
 2079 00ec 03B0     		add	sp, sp, #12
 2080              		@ sp needed
 2081 00ee BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2082              		.size	_ZN3DDA12NormaliseXYZEv, .-_ZN3DDA12NormaliseXYZEv
 2083              		.global	__aeabi_i2f
 2084 00f2 00BF     		.section	.text.hot._ZN3DDA4InitERN6GCodes7RawMoveEb,"ax",%progbits
 2085              		.align	1
 2086              		.p2align 2,,3
 2087              		.global	_ZN3DDA4InitERN6GCodes7RawMoveEb
 2088              		.syntax unified
 2089              		.thumb
 2090              		.thumb_func
 2091              		.fpu softvfp
 2092              		.type	_ZN3DDA4InitERN6GCodes7RawMoveEb, %function
 2093              	_ZN3DDA4InitERN6GCodes7RawMoveEb:
 2094              		@ args = 0, pretend = 0, frame = 112
 2095              		@ frame_needed = 0, uses_anonymous_args = 0
 2096 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2097 0004 4568     		ldr	r5, [r0, #4]
 2098 0006 DFF8AC92 		ldr	r9, .L547+8
 2099 000a 9DB0     		sub	sp, sp, #116
 2100 000c 05F11C03 		add	r3, r5, #28
 2101 0010 0646     		mov	r6, r0
 2102 0012 D9F80870 		ldr	r7, [r9, #8]
 2103 0016 0593     		str	r3, [sp, #20]
 2104 0018 0791     		str	r1, [sp, #28]
 2105 001a 0292     		str	r2, [sp, #8]
 2106 001c 002A     		cmp	r2, #0
 2107 001e 40F07382 		bne	.L536
 2108 0022 837A     		ldrb	r3, [r0, #10]	@ zero_extendqisi2
 2109 0024 029A     		ldr	r2, [sp, #8]
ARM GAS  /tmp/cc7dtM4H.s 			page 38


 2110 0026 00F11C04 		add	r4, r0, #28
 2111 002a 62F34103 		bfi	r3, r2, #1, #1
 2112 002e 8372     		strb	r3, [r0, #10]
 2113 0030 D7F8FC34 		ldr	r3, [r7, #1276]
 2114 0034 0493     		str	r3, [sp, #16]
 2115              	.L400:
 2116 0036 0027     		movs	r7, #0
 2117 0038 B27A     		ldrb	r2, [r6, #10]	@ zero_extendqisi2
 2118 003a D9F80030 		ldr	r3, [r9]
 2119 003e 6FF38612 		bfc	r2, #6, #1
 2120 0042 F433     		adds	r3, r3, #244
 2121 0044 B272     		strb	r2, [r6, #10]
 2122 0046 0896     		str	r6, [sp, #32]
 2123 0048 BA46     		mov	r10, r7
 2124 004a 1E46     		mov	r6, r3
 2125 004c D9F81020 		ldr	r2, [r9, #16]
 2126 0050 079D     		ldr	r5, [sp, #28]
 2127 0052 D2F8F821 		ldr	r2, [r2, #504]
 2128 0056 0697     		str	r7, [sp, #24]
 2129 0058 0197     		str	r7, [sp, #4]
 2130 005a 0997     		str	r7, [sp, #36]
 2131 005c 0392     		str	r2, [sp, #12]
 2132 005e C2F10008 		rsb	r8, r2, #0
 2133              	.L414:
 2134 0062 56F8042F 		ldr	r2, [r6, #4]!	@ float
 2135 0066 0AAB     		add	r3, sp, #40
 2136 0068 43F82A20 		str	r2, [r3, r10, lsl #2]	@ float
 2137 006c 039B     		ldr	r3, [sp, #12]
 2138 006e 5345     		cmp	r3, r10
 2139 0070 62D9     		bls	.L401
 2140 0072 029B     		ldr	r3, [sp, #8]
 2141 0074 002B     		cmp	r3, #0
 2142 0076 40F0CA80 		bne	.L402
 2143 007a 2968     		ldr	r1, [r5]	@ float
 2144 007c 5046     		mov	r0, r10
 2145 007e FFF7FEFF 		bl	_ZN4Move22MotorEndPointToMachineEjf
 2146 0082 049B     		ldr	r3, [sp, #16]
 2147 0084 2968     		ldr	r1, [r5]	@ float
 2148 0086 1A68     		ldr	r2, [r3]
 2149 0088 059B     		ldr	r3, [sp, #20]
 2150 008a 2060     		str	r0, [r4]
 2151 008c 53F82A70 		ldr	r7, [r3, r10, lsl #2]
 2152 0090 126E     		ldr	r2, [r2, #96]
 2153 0092 864B     		ldr	r3, .L547
 2154 0094 C71B     		subs	r7, r0, r7
 2155 0096 9A42     		cmp	r2, r3
 2156 0098 6162     		str	r1, [r4, #36]	@ float
 2157 009a 40F0C680 		bne	.L463
 2158              	.L406:
 2159 009e 3846     		mov	r0, r7
 2160 00a0 FFF7FEFF 		bl	__aeabi_i2f
 2161 00a4 D9F80020 		ldr	r2, [r9]
 2162 00a8 02EB8A02 		add	r2, r2, r10, lsl #2
 2163 00ac D2F82411 		ldr	r1, [r2, #292]	@ float
 2164 00b0 FFF7FEFF 		bl	__aeabi_fdiv
 2165 00b4 A064     		str	r0, [r4, #72]	@ float
 2166              	.L407:
ARM GAS  /tmp/cc7dtM4H.s 			page 39


 2167 00b6 B7B1     		cbz	r7, .L410
 2168 00b8 0121     		movs	r1, #1
 2169 00ba 5046     		mov	r0, r10
 2170 00bc FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
 2171 00c0 F943     		mvns	r1, r7
 2172 00c2 C4F8B400 		str	r0, [r4, #180]
 2173 00c6 8279     		ldrb	r2, [r0, #6]	@ zero_extendqisi2
 2174 00c8 039B     		ldr	r3, [sp, #12]
 2175 00ca 002F     		cmp	r7, #0
 2176 00cc 4FEAD171 		lsr	r1, r1, #31
 2177 00d0 B8BF     		it	lt
 2178 00d2 7F42     		rsblt	r7, r7, #0
 2179 00d4 61F30412 		bfi	r2, r1, #4, #1
 2180 00d8 5345     		cmp	r3, r10
 2181 00da 8760     		str	r7, [r0, #8]
 2182 00dc 8271     		strb	r2, [r0, #6]
 2183 00de 5BD9     		bls	.L468
 2184 00e0 0123     		movs	r3, #1
 2185 00e2 0693     		str	r3, [sp, #24]
 2186 00e4 0993     		str	r3, [sp, #36]
 2187              	.L410:
 2188 00e6 0AF1010A 		add	r10, r10, #1
 2189 00ea BAF1090F 		cmp	r10, #9
 2190 00ee 04F10404 		add	r4, r4, #4
 2191 00f2 08F10108 		add	r8, r8, #1
 2192 00f6 05F10405 		add	r5, r5, #4
 2193 00fa B2D1     		bne	.L414
 2194 00fc 069B     		ldr	r3, [sp, #24]
 2195 00fe 089E     		ldr	r6, [sp, #32]
 2196 0100 002B     		cmp	r3, #0
 2197 0102 40F0D980 		bne	.L415
 2198 0106 029B     		ldr	r3, [sp, #8]
 2199 0108 83B1     		cbz	r3, .L416
 2200 010a 039B     		ldr	r3, [sp, #12]
 2201 010c 73B1     		cbz	r3, .L416
 2202 010e 03F18040 		add	r0, r3, #1073741824
 2203 0112 0799     		ldr	r1, [sp, #28]
 2204 0114 7268     		ldr	r2, [r6, #4]
 2205 0116 0138     		subs	r0, r0, #1
 2206 0118 01EB8000 		add	r0, r1, r0, lsl #2
 2207 011c 3C32     		adds	r2, r2, #60
 2208 011e 0B1F     		subs	r3, r1, #4
 2209              	.L417:
 2210 0120 53F8041F 		ldr	r1, [r3, #4]!	@ float
 2211 0124 9842     		cmp	r0, r3
 2212 0126 42F8041F 		str	r1, [r2, #4]!	@ float
 2213 012a F9D1     		bne	.L417
 2214              	.L416:
 2215 012c 0023     		movs	r3, #0
 2216 012e 0693     		str	r3, [sp, #24]
 2217 0130 0698     		ldr	r0, [sp, #24]
 2218 0132 1DB0     		add	sp, sp, #116
 2219              		@ sp needed
 2220 0134 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2221              	.L401:
 2222 0138 2968     		ldr	r1, [r5]	@ float
 2223 013a 5046     		mov	r0, r10
ARM GAS  /tmp/cc7dtM4H.s 			page 40


 2224 013c FFF7FEFF 		bl	_ZN4Move22MotorEndPointToMachineEjf
 2225 0140 D5F800B0 		ldr	fp, [r5]	@ float
 2226 0144 2060     		str	r0, [r4]
 2227 0146 C4F824B0 		str	fp, [r4, #36]	@ float
 2228 014a 0746     		mov	r7, r0
 2229 014c FFF7FEFF 		bl	__aeabi_i2f
 2230 0150 D9F80020 		ldr	r2, [r9]
 2231 0154 02EB8A02 		add	r2, r2, r10, lsl #2
 2232 0158 D2F82411 		ldr	r1, [r2, #292]	@ float
 2233 015c FFF7FEFF 		bl	__aeabi_fdiv
 2234 0160 0021     		movs	r1, #0
 2235 0162 A064     		str	r0, [r4, #72]	@ float
 2236 0164 5846     		mov	r0, fp
 2237 0166 FFF7FEFF 		bl	__aeabi_fcmpgt
 2238 016a 0028     		cmp	r0, #0
 2239 016c 019B     		ldr	r3, [sp, #4]
 2240 016e 18BF     		it	ne
 2241 0170 0123     		movne	r3, #1
 2242 0172 0193     		str	r3, [sp, #4]
 2243 0174 002F     		cmp	r7, #0
 2244 0176 B6D0     		beq	.L410
 2245 0178 0121     		movs	r1, #1
 2246 017a 5046     		mov	r0, r10
 2247 017c FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
 2248 0180 F943     		mvns	r1, r7
 2249 0182 C4F8B400 		str	r0, [r4, #180]
 2250 0186 8279     		ldrb	r2, [r0, #6]	@ zero_extendqisi2
 2251 0188 C90F     		lsrs	r1, r1, #31
 2252 018a 002F     		cmp	r7, #0
 2253 018c B8BF     		it	lt
 2254 018e 7F42     		rsblt	r7, r7, #0
 2255 0190 61F30412 		bfi	r2, r1, #4, #1
 2256 0194 8760     		str	r7, [r0, #8]
 2257 0196 8271     		strb	r2, [r0, #6]
 2258              	.L468:
 2259 0198 A16C     		ldr	r1, [r4, #72]	@ float
 2260 019a 2868     		ldr	r0, [r5]	@ float
 2261 019c FFF7FEFF 		bl	__aeabi_fsub
 2262 01a0 089B     		ldr	r3, [sp, #32]
 2263 01a2 2860     		str	r0, [r5]	@ float
 2264 01a4 9A7A     		ldrb	r2, [r3, #10]	@ zero_extendqisi2
 2265 01a6 5306     		lsls	r3, r2, #25
 2266 01a8 2ED5     		bpl	.L518
 2267 01aa 079B     		ldr	r3, [sp, #28]
 2268 01ac 93F85920 		ldrb	r2, [r3, #89]	@ zero_extendqisi2
 2269 01b0 9707     		lsls	r7, r2, #30
 2270 01b2 29D5     		bpl	.L518
 2271 01b4 B8F1050F 		cmp	r8, #5
 2272 01b8 26D8     		bhi	.L518
 2273 01ba D9F80070 		ldr	r7, [r9]
 2274 01be 0021     		movs	r1, #0
 2275 01c0 07EB8802 		add	r2, r7, r8, lsl #2
 2276 01c4 D2F86CB1 		ldr	fp, [r2, #364]	@ float
 2277 01c8 5846     		mov	r0, fp
 2278 01ca FFF7FEFF 		bl	__aeabi_fcmpgt
 2279 01ce D8B1     		cbz	r0, .L518
 2280 01d0 0AF15202 		add	r2, r10, #82
ARM GAS  /tmp/cc7dtM4H.s 			page 41


 2281 01d4 5946     		mov	r1, fp
 2282 01d6 57F82200 		ldr	r0, [r7, r2, lsl #2]	@ float
 2283 01da 0AAB     		add	r3, sp, #40
 2284 01dc 53F82AB0 		ldr	fp, [r3, r10, lsl #2]	@ float
 2285 01e0 FFF7FEFF 		bl	__aeabi_fdiv
 2286 01e4 5946     		mov	r1, fp
 2287 01e6 0746     		mov	r7, r0
 2288 01e8 5846     		mov	r0, fp
 2289 01ea FFF7FEFF 		bl	__aeabi_fcmpun
 2290 01ee 20B9     		cbnz	r0, .L527
 2291 01f0 3946     		mov	r1, r7
 2292 01f2 5846     		mov	r0, fp
 2293 01f4 FFF7FEFF 		bl	__aeabi_fcmplt
 2294 01f8 00B1     		cbz	r0, .L453
 2295              	.L527:
 2296 01fa 5F46     		mov	r7, fp
 2297              	.L453:
 2298 01fc 0AAB     		add	r3, sp, #40
 2299 01fe 43F82A70 		str	r7, [r3, r10, lsl #2]	@ float
 2300 0202 0123     		movs	r3, #1
 2301 0204 0693     		str	r3, [sp, #24]
 2302 0206 6EE7     		b	.L410
 2303              	.L518:
 2304 0208 0123     		movs	r3, #1
 2305 020a 0693     		str	r3, [sp, #24]
 2306 020c 6BE7     		b	.L410
 2307              	.L402:
 2308 020e 049B     		ldr	r3, [sp, #16]
 2309 0210 2968     		ldr	r1, [r5]	@ float
 2310 0212 1A68     		ldr	r2, [r3]
 2311 0214 059B     		ldr	r3, [sp, #20]
 2312 0216 126E     		ldr	r2, [r2, #96]
 2313 0218 53F82A00 		ldr	r0, [r3, r10, lsl #2]
 2314 021c 234B     		ldr	r3, .L547
 2315 021e 2768     		ldr	r7, [r4]
 2316 0220 9A42     		cmp	r2, r3
 2317 0222 6162     		str	r1, [r4, #36]	@ float
 2318 0224 A7EB0007 		sub	r7, r7, r0
 2319 0228 1FD0     		beq	.L462
 2320              	.L463:
 2321 022a 5146     		mov	r1, r10
 2322 022c 0498     		ldr	r0, [sp, #16]
 2323 022e 9047     		blx	r2
 2324 0230 B8B1     		cbz	r0, .L404
 2325 0232 079B     		ldr	r3, [sp, #28]
 2326 0234 93F85820 		ldrb	r2, [r3, #88]	@ zero_extendqisi2
 2327 0238 013A     		subs	r2, r2, #1
 2328 023a 012A     		cmp	r2, #1
 2329 023c 11D9     		bls	.L404
 2330 023e D9F80020 		ldr	r2, [r9]
 2331 0242 1B49     		ldr	r1, .L547+4
 2332 0244 02EB8A02 		add	r2, r2, r10, lsl #2
 2333 0248 D2F82401 		ldr	r0, [r2, #292]	@ float
 2334 024c FFF7FEFF 		bl	__aeabi_fmul
 2335 0250 FFF7FEFF 		bl	lrintf
 2336 0254 00EBD072 		add	r2, r0, r0, lsr #31
 2337 0258 5210     		asrs	r2, r2, #1
ARM GAS  /tmp/cc7dtM4H.s 			page 42


 2338 025a BA42     		cmp	r2, r7
 2339 025c 80F23F81 		bge	.L537
 2340 0260 3F1A     		subs	r7, r7, r0
 2341              	.L404:
 2342 0262 029B     		ldr	r3, [sp, #8]
 2343 0264 002B     		cmp	r3, #0
 2344 0266 3FF41AAF 		beq	.L406
 2345              	.L462:
 2346 026a 089B     		ldr	r3, [sp, #32]
 2347 026c 0022     		movs	r2, #0
 2348 026e 5146     		mov	r1, r10
 2349 0270 5868     		ldr	r0, [r3, #4]
 2350 0272 D5F800B0 		ldr	fp, [r5]	@ float
 2351 0276 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 2352 027a 0146     		mov	r1, r0
 2353 027c 5846     		mov	r0, fp
 2354 027e FFF7FEFF 		bl	__aeabi_fsub
 2355 0282 0021     		movs	r1, #0
 2356 0284 A064     		str	r0, [r4, #72]	@ float
 2357 0286 FFF7FEFF 		bl	__aeabi_fcmpeq
 2358 028a 0028     		cmp	r0, #0
 2359 028c 7FF413AF 		bne	.L407
 2360 0290 0799     		ldr	r1, [sp, #28]
 2361 0292 0A6D     		ldr	r2, [r1, #80]
 2362 0294 0B46     		mov	r3, r1
 2363 0296 22FA0AF2 		lsr	r2, r2, r10
 2364 029a D107     		lsls	r1, r2, #31
 2365 029c 40F12881 		bpl	.L538
 2366 02a0 0899     		ldr	r1, [sp, #32]
 2367 02a2 8A7A     		ldrb	r2, [r1, #10]	@ zero_extendqisi2
 2368 02a4 42F04002 		orr	r2, r2, #64
 2369 02a8 8A72     		strb	r2, [r1, #10]
 2370 02aa 04E7     		b	.L407
 2371              	.L548:
 2372              		.align	2
 2373              	.L547:
 2374 02ac 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 2375 02b0 0000B443 		.word	1135869952
 2376 02b4 00000000 		.word	reprap
 2377              	.L415:
 2378 02b8 B37A     		ldrb	r3, [r6, #10]	@ zero_extendqisi2
 2379 02ba 9807     		lsls	r0, r3, #30
 2380 02bc 0BD5     		bpl	.L421
 2381 02be 0025     		movs	r5, #0
 2382 02c0 06F1D004 		add	r4, r6, #208
 2383              	.L422:
 2384 02c4 2768     		ldr	r7, [r4]
 2385 02c6 002F     		cmp	r7, #0
 2386 02c8 00F0B881 		beq	.L539
 2387              	.L420:
 2388 02cc 0135     		adds	r5, r5, #1
 2389 02ce 032D     		cmp	r5, #3
 2390 02d0 04F10404 		add	r4, r4, #4
 2391 02d4 F6D1     		bne	.L422
 2392              	.L421:
 2393 02d6 079D     		ldr	r5, [sp, #28]
 2394 02d8 B47A     		ldrb	r4, [r6, #10]	@ zero_extendqisi2
ARM GAS  /tmp/cc7dtM4H.s 			page 43


 2395 02da 95F85930 		ldrb	r3, [r5, #89]	@ zero_extendqisi2
 2396 02de EA6C     		ldr	r2, [r5, #76]
 2397 02e0 C3F38003 		ubfx	r3, r3, #2, #1
 2398 02e4 63F38204 		bfi	r4, r3, #2, #1
 2399 02e8 E3B2     		uxtb	r3, r4
 2400 02ea 13F0400F 		tst	r3, #64
 2401 02ee 296D     		ldr	r1, [r5, #80]
 2402 02f0 686D     		ldr	r0, [r5, #84]
 2403 02f2 3261     		str	r2, [r6, #16]
 2404 02f4 019A     		ldr	r2, [sp, #4]
 2405 02f6 08BF     		it	eq
 2406 02f8 0022     		moveq	r2, #0
 2407 02fa 1746     		mov	r7, r2
 2408 02fc B472     		strb	r4, [r6, #10]
 2409 02fe 95F85920 		ldrb	r2, [r5, #89]	@ zero_extendqisi2
 2410 0302 F47A     		ldrb	r4, [r6, #11]	@ zero_extendqisi2
 2411 0304 C2F34012 		ubfx	r2, r2, #5, #1
 2412 0308 62F34104 		bfi	r4, r2, #1, #1
 2413 030c F472     		strb	r4, [r6, #11]
 2414 030e 67F3C303 		bfi	r3, r7, #3, #1
 2415 0312 6A6C     		ldr	r2, [r5, #68]
 2416 0314 B372     		strb	r3, [r6, #10]
 2417 0316 95F85930 		ldrb	r3, [r5, #89]	@ zero_extendqisi2
 2418 031a B47A     		ldrb	r4, [r6, #10]	@ zero_extendqisi2
 2419 031c C3F34003 		ubfx	r3, r3, #1, #1
 2420 0320 63F30414 		bfi	r4, r3, #4, #1
 2421 0324 B472     		strb	r4, [r6, #10]
 2422 0326 E3B2     		uxtb	r3, r4
 2423 0328 F47A     		ldrb	r4, [r6, #11]	@ zero_extendqisi2
 2424 032a 03F0DF03 		and	r3, r3, #223
 2425 032e 7161     		str	r1, [r6, #20]
 2426 0330 296C     		ldr	r1, [r5, #64]	@ float
 2427 0332 B261     		str	r2, [r6, #24]
 2428 0334 AA6C     		ldr	r2, [r5, #72]	@ float
 2429 0336 6FF3C713 		bfc	r3, #7, #1
 2430 033a 6FF30004 		bfc	r4, #0, #1
 2431 033e 0028     		cmp	r0, #0
 2432 0340 F060     		str	r0, [r6, #12]
 2433 0342 C6F89410 		str	r1, [r6, #148]	@ float
 2434 0346 B372     		strb	r3, [r6, #10]
 2435 0348 C6F8C820 		str	r2, [r6, #200]	@ float
 2436 034c F472     		strb	r4, [r6, #11]
 2437 034e C0F24A81 		blt	.L540
 2438 0352 14BF     		ite	ne
 2439 0354 0020     		movne	r0, #0
 2440 0356 0298     		ldreq	r0, [sp, #8]
 2441              	.L424:
 2442 0358 B37A     		ldrb	r3, [r6, #10]	@ zero_extendqisi2
 2443 035a 60F30003 		bfi	r3, r0, #0, #1
 2444 035e 5906     		lsls	r1, r3, #25
 2445 0360 B372     		strb	r3, [r6, #10]
 2446 0362 00F1EA80 		bmi	.L541
 2447 0366 099B     		ldr	r3, [sp, #36]
 2448 0368 002B     		cmp	r3, #0
 2449 036a 40F04781 		bne	.L542
 2450 036e 0023     		movs	r3, #0
 2451 0370 06F16004 		add	r4, r6, #96
ARM GAS  /tmp/cc7dtM4H.s 			page 44


 2452 0374 9846     		mov	r8, r3
 2453 0376 2746     		mov	r7, r4
 2454 0378 C6F88830 		str	r3, [r6, #136]	@ float
 2455 037c 06F18405 		add	r5, r6, #132
 2456              	.L429:
 2457 0380 57F8041F 		ldr	r1, [r7, #4]!
 2458 0384 4046     		mov	r0, r8
 2459 0386 21F00041 		bic	r1, r1, #-2147483648
 2460 038a FFF7FEFF 		bl	__aeabi_fadd
 2461 038e BD42     		cmp	r5, r7
 2462 0390 8046     		mov	r8, r0
 2463 0392 F5D1     		bne	.L429
 2464 0394 C6F88800 		str	r0, [r6, #136]	@ float
 2465 0398 0021     		movs	r1, #0
 2466 039a FFF7FEFF 		bl	__aeabi_fcmpgt
 2467 039e 68B1     		cbz	r0, .L431
 2468 03a0 4146     		mov	r1, r8
 2469 03a2 4FF07E50 		mov	r0, #1065353216
 2470 03a6 FFF7FEFF 		bl	__aeabi_fdiv
 2471 03aa 0746     		mov	r7, r0
 2472              	.L432:
 2473 03ac 6168     		ldr	r1, [r4, #4]	@ float
 2474 03ae 3846     		mov	r0, r7
 2475 03b0 FFF7FEFF 		bl	__aeabi_fmul
 2476 03b4 44F8040F 		str	r0, [r4, #4]!	@ float
 2477 03b8 A542     		cmp	r5, r4
 2478 03ba F7D1     		bne	.L432
 2479              	.L431:
 2480 03bc 06F16404 		add	r4, r6, #100
 2481              	.L427:
 2482 03c0 13AF     		add	r7, sp, #76
 2483 03c2 04F1200E 		add	lr, r4, #32
 2484              	.L433:
 2485 03c6 3D46     		mov	r5, r7
 2486 03c8 2068     		ldr	r0, [r4]	@ unaligned
 2487 03ca 6168     		ldr	r1, [r4, #4]	@ unaligned
 2488 03cc A268     		ldr	r2, [r4, #8]	@ unaligned
 2489 03ce E368     		ldr	r3, [r4, #12]	@ unaligned
 2490 03d0 1034     		adds	r4, r4, #16
 2491 03d2 7445     		cmp	r4, lr
 2492 03d4 07F11007 		add	r7, r7, #16
 2493 03d8 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2494 03da F4D1     		bne	.L433
 2495 03dc 2068     		ldr	r0, [r4]	@ unaligned
 2496 03de 12AB     		add	r3, sp, #72
 2497 03e0 3860     		str	r0, [r7]
 2498 03e2 1BA9     		add	r1, sp, #108
 2499              	.L434:
 2500 03e4 5A68     		ldr	r2, [r3, #4]
 2501 03e6 22F00042 		bic	r2, r2, #-2147483648
 2502 03ea 43F8042F 		str	r2, [r3, #4]!	@ float
 2503 03ee 9942     		cmp	r1, r3
 2504 03f0 F8D1     		bne	.L434
 2505 03f2 0922     		movs	r2, #9
 2506 03f4 0AA9     		add	r1, sp, #40
 2507 03f6 13A8     		add	r0, sp, #76
 2508 03f8 FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
ARM GAS  /tmp/cc7dtM4H.s 			page 45


 2509 03fc B37A     		ldrb	r3, [r6, #10]	@ zero_extendqisi2
 2510 03fe 0446     		mov	r4, r0
 2511 0400 5A06     		lsls	r2, r3, #25
 2512 0402 C6F88C00 		str	r0, [r6, #140]	@ float
 2513 0406 D9F80050 		ldr	r5, [r9]
 2514 040a 11D5     		bpl	.L436
 2515 040c 1B07     		lsls	r3, r3, #28
 2516 040e 0146     		mov	r1, r0
 2517 0410 4CBF     		ite	mi
 2518 0412 D5F81C71 		ldrmi	r7, [r5, #284]	@ float
 2519 0416 D5F82071 		ldrpl	r7, [r5, #288]	@ float
 2520 041a FFF7FEFF 		bl	__aeabi_fcmpun
 2521 041e 20B9     		cbnz	r0, .L528
 2522 0420 2146     		mov	r1, r4
 2523 0422 3846     		mov	r0, r7
 2524 0424 FFF7FEFF 		bl	__aeabi_fcmpgt
 2525 0428 00B1     		cbz	r0, .L455
 2526              	.L528:
 2527 042a 2746     		mov	r7, r4
 2528              	.L455:
 2529 042c C6F88C70 		str	r7, [r6, #140]	@ float
 2530              	.L436:
 2531 0430 079B     		ldr	r3, [sp, #28]
 2532 0432 DC6B     		ldr	r4, [r3, #60]	@ float
 2533 0434 029B     		ldr	r3, [sp, #8]
 2534 0436 FBB9     		cbnz	r3, .L441
 2535 0438 139F     		ldr	r7, [sp, #76]	@ float
 2536 043a 0021     		movs	r1, #0
 2537 043c 3846     		mov	r0, r7
 2538 043e FFF7FEFF 		bl	__aeabi_fcmpgt
 2539 0442 00B9     		cbnz	r0, .L442
 2540 0444 0027     		movs	r7, #0
 2541              	.L442:
 2542 0446 DDF85080 		ldr	r8, [sp, #80]	@ float
 2543 044a 3846     		mov	r0, r7
 2544 044c 4146     		mov	r1, r8
 2545 044e FFF7FEFF 		bl	__aeabi_fcmplt
 2546 0452 00B9     		cbnz	r0, .L443
 2547 0454 B846     		mov	r8, r7
 2548              	.L443:
 2549 0456 159F     		ldr	r7, [sp, #84]	@ float
 2550 0458 4146     		mov	r1, r8
 2551 045a 3846     		mov	r0, r7
 2552 045c FFF7FEFF 		bl	__aeabi_fcmpgt
 2553 0460 00B9     		cbnz	r0, .L444
 2554 0462 4746     		mov	r7, r8
 2555              	.L444:
 2556 0464 0021     		movs	r1, #0
 2557 0466 3846     		mov	r0, r7
 2558 0468 FFF7FEFF 		bl	__aeabi_fcmpeq
 2559 046c 20B9     		cbnz	r0, .L441
 2560 046e 2046     		mov	r0, r4
 2561 0470 3946     		mov	r1, r7
 2562 0472 FFF7FEFF 		bl	__aeabi_fdiv
 2563 0476 0446     		mov	r4, r0
 2564              	.L441:
 2565 0478 2146     		mov	r1, r4
ARM GAS  /tmp/cc7dtM4H.s 			page 46


 2566 047a 2046     		mov	r0, r4
 2567 047c FFF7FEFF 		bl	__aeabi_fcmpun
 2568 0480 0028     		cmp	r0, #0
 2569 0482 40F0D380 		bne	.L543
 2570 0486 4FF07C51 		mov	r1, #1056964608
 2571 048a 2046     		mov	r0, r4
 2572 048c FFF7FEFF 		bl	__aeabi_fcmpgt
 2573 0490 08B9     		cbnz	r0, .L458
 2574 0492 4FF07C54 		mov	r4, #1056964608
 2575              	.L458:
 2576 0496 05F1D401 		add	r1, r5, #212
 2577 049a 0922     		movs	r2, #9
 2578 049c 13A8     		add	r0, sp, #76
 2579 049e FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 2580 04a2 2146     		mov	r1, r4
 2581 04a4 0546     		mov	r5, r0
 2582 04a6 FFF7FEFF 		bl	__aeabi_fcmpgt
 2583 04aa 00B1     		cbz	r0, .L464
 2584 04ac 2546     		mov	r5, r4
 2585              	.L464:
 2586 04ae 029B     		ldr	r3, [sp, #8]
 2587 04b0 C6F89050 		str	r5, [r6, #144]	@ float
 2588 04b4 002B     		cmp	r3, #0
 2589 04b6 66D1     		bne	.L544
 2590              	.L448:
 2591 04b8 0022     		movs	r2, #0
 2592 04ba 7468     		ldr	r4, [r6, #4]
 2593 04bc 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 2594 04be C6F8A020 		str	r2, [r6, #160]	@ float
 2595 04c2 012B     		cmp	r3, #1
 2596 04c4 66D0     		beq	.L545
 2597              	.L449:
 2598 04c6 0023     		movs	r3, #0
 2599 04c8 C6F89C30 		str	r3, [r6, #156]	@ float
 2600              	.L459:
 2601 04cc 3046     		mov	r0, r6
 2602 04ce FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 2603 04d2 0123     		movs	r3, #1
 2604 04d4 0698     		ldr	r0, [sp, #24]
 2605 04d6 3372     		strb	r3, [r6, #8]
 2606 04d8 1DB0     		add	sp, sp, #116
 2607              		@ sp needed
 2608 04da BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2609              	.L537:
 2610 04de 5242     		negs	r2, r2
 2611 04e0 029B     		ldr	r3, [sp, #8]
 2612 04e2 BA42     		cmp	r2, r7
 2613 04e4 C8BF     		it	gt
 2614 04e6 3F18     		addgt	r7, r7, r0
 2615 04e8 002B     		cmp	r3, #0
 2616 04ea 3FF4D8AD 		beq	.L406
 2617 04ee BCE6     		b	.L462
 2618              	.L538:
 2619 04f0 DA6C     		ldr	r2, [r3, #76]
 2620 04f2 22FA0AF2 		lsr	r2, r2, r10
 2621 04f6 D207     		lsls	r2, r2, #31
 2622 04f8 7FF5DDAD 		bpl	.L407
ARM GAS  /tmp/cc7dtM4H.s 			page 47


 2623 04fc 0899     		ldr	r1, [sp, #32]
 2624 04fe 8A7A     		ldrb	r2, [r1, #10]	@ zero_extendqisi2
 2625 0500 42F04002 		orr	r2, r2, #64
 2626 0504 8A72     		strb	r2, [r1, #10]
 2627 0506 D6E5     		b	.L407
 2628              	.L536:
 2629 0508 91F85930 		ldrb	r3, [r1, #89]	@ zero_extendqisi2
 2630 050c 00F11C04 		add	r4, r0, #28
 2631 0510 C3F30013 		ubfx	r3, r3, #4, #1
 2632 0514 2246     		mov	r2, r4
 2633 0516 3846     		mov	r0, r7
 2634 0518 FFF7FEFF 		bl	_ZNK4Move21CartesianToMotorStepsEPKfPlb
 2635 051c 0028     		cmp	r0, #0
 2636 051e 3FF405AE 		beq	.L416
 2637 0522 D7F8FC34 		ldr	r3, [r7, #1276]
 2638 0526 0493     		str	r3, [sp, #16]
 2639 0528 9B7B     		ldrb	r3, [r3, #14]	@ zero_extendqisi2
 2640 052a 032B     		cmp	r3, #3
 2641 052c 70D0     		beq	.L546
 2642 052e 0020     		movs	r0, #0
 2643              	.L399:
 2644 0530 B37A     		ldrb	r3, [r6, #10]	@ zero_extendqisi2
 2645 0532 60F34103 		bfi	r3, r0, #1, #1
 2646 0536 B372     		strb	r3, [r6, #10]
 2647 0538 7DE5     		b	.L400
 2648              	.L541:
 2649 053a 049D     		ldr	r5, [sp, #16]
 2650 053c 0021     		movs	r1, #0
 2651 053e 2B68     		ldr	r3, [r5]
 2652 0540 2846     		mov	r0, r5
 2653 0542 1B6A     		ldr	r3, [r3, #32]
 2654 0544 746E     		ldr	r4, [r6, #100]	@ float
 2655 0546 9847     		blx	r3
 2656 0548 0146     		mov	r1, r0
 2657 054a 2046     		mov	r0, r4
 2658 054c FFF7FEFF 		bl	__aeabi_fmul
 2659 0550 2B68     		ldr	r3, [r5]
 2660 0552 0446     		mov	r4, r0
 2661 0554 1B6A     		ldr	r3, [r3, #32]
 2662 0556 2846     		mov	r0, r5
 2663 0558 0121     		movs	r1, #1
 2664 055a B56E     		ldr	r5, [r6, #104]	@ float
 2665 055c 9847     		blx	r3
 2666 055e 0146     		mov	r1, r0
 2667 0560 2846     		mov	r0, r5
 2668 0562 FFF7FEFF 		bl	__aeabi_fmul
 2669 0566 2146     		mov	r1, r4
 2670 0568 FFF7FEFF 		bl	__aeabi_fadd
 2671 056c 0146     		mov	r1, r0
 2672 056e F06E     		ldr	r0, [r6, #108]	@ float
 2673 0570 FFF7FEFF 		bl	__aeabi_fadd
 2674 0574 F066     		str	r0, [r6, #108]	@ float
 2675 0576 3046     		mov	r0, r6
 2676 0578 FFF7FEFF 		bl	_ZN3DDA12NormaliseXYZEv
 2677 057c 06F16404 		add	r4, r6, #100
 2678 0580 C6F88800 		str	r0, [r6, #136]	@ float
 2679 0584 1CE7     		b	.L427
ARM GAS  /tmp/cc7dtM4H.s 			page 48


 2680              	.L544:
 2681 0586 0498     		ldr	r0, [sp, #16]
 2682 0588 13AA     		add	r2, sp, #76
 2683 058a 0368     		ldr	r3, [r0]
 2684 058c 3146     		mov	r1, r6
 2685 058e DB6D     		ldr	r3, [r3, #92]
 2686 0590 9847     		blx	r3
 2687 0592 91E7     		b	.L448
 2688              	.L545:
 2689 0594 B37A     		ldrb	r3, [r6, #10]	@ zero_extendqisi2
 2690 0596 A27A     		ldrb	r2, [r4, #10]	@ zero_extendqisi2
 2691 0598 5340     		eors	r3, r3, r2
 2692 059a 13F0480F 		tst	r3, #72
 2693 059e 92D1     		bne	.L449
 2694 05a0 D6F88810 		ldr	r1, [r6, #136]	@ float
 2695 05a4 D6F88C00 		ldr	r0, [r6, #140]	@ float
 2696 05a8 FFF7FEFF 		bl	__aeabi_fmul
 2697 05ac 0146     		mov	r1, r0
 2698 05ae FFF7FEFF 		bl	__aeabi_fadd
 2699 05b2 FFF7FEFF 		bl	sqrtf
 2700 05b6 0146     		mov	r1, r0
 2701 05b8 0746     		mov	r7, r0
 2702 05ba D6F89050 		ldr	r5, [r6, #144]	@ float
 2703 05be FFF7FEFF 		bl	__aeabi_fcmpun
 2704 05c2 20B9     		cbnz	r0, .L478
 2705 05c4 2946     		mov	r1, r5
 2706 05c6 3846     		mov	r0, r7
 2707 05c8 FFF7FEFF 		bl	__aeabi_fcmplt
 2708 05cc 00B1     		cbz	r0, .L460
 2709              	.L478:
 2710 05ce 3D46     		mov	r5, r7
 2711              	.L460:
 2712 05d0 C4F8B050 		str	r5, [r4, #176]	@ float
 2713 05d4 7068     		ldr	r0, [r6, #4]
 2714 05d6 FFF7FEFF 		bl	_ZN3DDA11DoLookaheadEPS_
 2715 05da 7368     		ldr	r3, [r6, #4]
 2716 05dc D3F8A030 		ldr	r3, [r3, #160]	@ float
 2717 05e0 C6F89C30 		str	r3, [r6, #156]	@ float
 2718 05e4 72E7     		b	.L459
 2719              	.L540:
 2720 05e6 1B4C     		ldr	r4, .L549
 2721 05e8 0C98     		ldr	r0, [sp, #48]	@ float
 2722 05ea 2146     		mov	r1, r4
 2723 05ec FFF7FEFF 		bl	__aeabi_fcmpgt
 2724 05f0 0028     		cmp	r0, #0
 2725 05f2 3FF4B1AE 		beq	.L424
 2726 05f6 0C94     		str	r4, [sp, #48]	@ float
 2727 05f8 0020     		movs	r0, #0
 2728 05fa ADE6     		b	.L424
 2729              	.L542:
 2730 05fc 06F16404 		add	r4, r6, #100
 2731 0600 039A     		ldr	r2, [sp, #12]
 2732 0602 2046     		mov	r0, r4
 2733 0604 0921     		movs	r1, #9
 2734 0606 FFF7FEFF 		bl	_ZN3DDA9NormaliseEPfjj
 2735 060a C6F88800 		str	r0, [r6, #136]	@ float
 2736 060e D7E6     		b	.L427
ARM GAS  /tmp/cc7dtM4H.s 			page 49


 2737              	.L546:
 2738 0610 F269     		ldr	r2, [r6, #28]
 2739 0612 EB69     		ldr	r3, [r5, #28]
 2740 0614 9A42     		cmp	r2, r3
 2741 0616 8BD1     		bne	.L399
 2742 0618 326A     		ldr	r2, [r6, #32]
 2743 061a 2B6A     		ldr	r3, [r5, #32]
 2744 061c 9A42     		cmp	r2, r3
 2745 061e 87D1     		bne	.L399
 2746 0620 6B6A     		ldr	r3, [r5, #36]
 2747 0622 706A     		ldr	r0, [r6, #36]
 2748 0624 C01A     		subs	r0, r0, r3
 2749 0626 18BF     		it	ne
 2750 0628 0120     		movne	r0, #1
 2751 062a 81E7     		b	.L399
 2752              	.L543:
 2753 062c 05F1D401 		add	r1, r5, #212
 2754 0630 0922     		movs	r2, #9
 2755 0632 13A8     		add	r0, sp, #76
 2756 0634 2546     		mov	r5, r4
 2757 0636 FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 2758 063a 38E7     		b	.L464
 2759              	.L539:
 2760 063c 0121     		movs	r1, #1
 2761 063e 2846     		mov	r0, r5
 2762 0640 FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
 2763 0644 2060     		str	r0, [r4]
 2764 0646 8379     		ldrb	r3, [r0, #6]	@ zero_extendqisi2
 2765 0648 8760     		str	r7, [r0, #8]
 2766 064a 43F01003 		orr	r3, r3, #16
 2767 064e 8371     		strb	r3, [r0, #6]
 2768 0650 3CE6     		b	.L420
 2769              	.L550:
 2770 0652 00BF     		.align	2
 2771              	.L549:
 2772 0654 00007A43 		.word	1132068864
 2773              		.size	_ZN3DDA4InitERN6GCodes7RawMoveEb, .-_ZN3DDA4InitERN6GCodes7RawMoveEb
 2774              		.section	.text._ZN3DDA19AdvanceBabySteppingEf,"ax",%progbits
 2775              		.align	1
 2776              		.p2align 2,,3
 2777              		.global	_ZN3DDA19AdvanceBabySteppingEf
 2778              		.syntax unified
 2779              		.thumb
 2780              		.thumb_func
 2781              		.fpu softvfp
 2782              		.type	_ZN3DDA19AdvanceBabySteppingEf, %function
 2783              	_ZN3DDA19AdvanceBabySteppingEf:
 2784              		@ args = 0, pretend = 0, frame = 16
 2785              		@ frame_needed = 0, uses_anonymous_args = 0
 2786 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2787 0004 85B0     		sub	sp, sp, #20
 2788 0006 0390     		str	r0, [sp, #12]
 2789 0008 0291     		str	r1, [sp, #8]	@ float
 2790 000a 0446     		mov	r4, r0
 2791 000c 00E0     		b	.L552
 2792              	.L583:
 2793 000e 1C46     		mov	r4, r3
ARM GAS  /tmp/cc7dtM4H.s 			page 50


 2794              	.L552:
 2795 0010 6368     		ldr	r3, [r4, #4]
 2796 0012 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 2797 0014 012A     		cmp	r2, #1
 2798 0016 FAD0     		beq	.L583
 2799 0018 039B     		ldr	r3, [sp, #12]
 2800 001a 4FF00008 		mov	r8, #0
 2801 001e 9C42     		cmp	r4, r3
 2802 0020 00F0A880 		beq	.L551
 2803 0024 4746     		mov	r7, r8
 2804 0026 DFF814A2 		ldr	r10, .L610+4
 2805              	.L579:
 2806 002a 3946     		mov	r1, r7
 2807 002c 0298     		ldr	r0, [sp, #8]	@ float
 2808 002e FFF7FEFF 		bl	__aeabi_fcmpeq
 2809 0032 A57A     		ldrb	r5, [r4, #10]	@ zero_extendqisi2
 2810 0034 0028     		cmp	r0, #0
 2811 0036 40F0A180 		bne	.L585
 2812 003a 6806     		lsls	r0, r5, #25
 2813 003c 40F19E80 		bpl	.L585
 2814 0040 A907     		lsls	r1, r5, #30
 2815 0042 04D4     		bmi	.L559
 2816 0044 D4F8D810 		ldr	r1, [r4, #216]
 2817 0048 0029     		cmp	r1, #0
 2818 004a 00F0CA80 		beq	.L606
 2819              	.L559:
 2820 004e DAF80030 		ldr	r3, [r10]
 2821 0052 4FF07C51 		mov	r1, #1056964608
 2822 0056 D3F85001 		ldr	r0, [r3, #336]	@ float
 2823 005a FFF7FEFF 		bl	__aeabi_fmul
 2824 005e D4F8A410 		ldr	r1, [r4, #164]	@ float
 2825 0062 FFF7FEFF 		bl	__aeabi_fdiv
 2826 0066 7449     		ldr	r1, .L610
 2827 0068 0546     		mov	r5, r0
 2828 006a FFF7FEFF 		bl	__aeabi_fcmpgt
 2829 006e 00B1     		cbz	r0, .L558
 2830 0070 714D     		ldr	r5, .L610
 2831              	.L558:
 2832 0072 D4F88890 		ldr	r9, [r4, #136]	@ float
 2833 0076 2946     		mov	r1, r5
 2834 0078 4846     		mov	r0, r9
 2835 007a FFF7FEFF 		bl	__aeabi_fmul
 2836 007e 0546     		mov	r5, r0
 2837 0080 0298     		ldr	r0, [sp, #8]	@ float
 2838 0082 05F10046 		add	r6, r5, #-2147483648
 2839 0086 0146     		mov	r1, r0
 2840 0088 FFF7FEFF 		bl	__aeabi_fcmpun
 2841 008c 0028     		cmp	r0, #0
 2842 008e 40F0D080 		bne	.L607
 2843 0092 DDF808B0 		ldr	fp, [sp, #8]	@ float
 2844 0096 2846     		mov	r0, r5
 2845 0098 5946     		mov	r1, fp
 2846 009a FFF7FEFF 		bl	__aeabi_fcmpgt
 2847 009e 0028     		cmp	r0, #0
 2848 00a0 00F0BF80 		beq	.L601
 2849 00a4 5D46     		mov	r5, fp
 2850              	.L563:
ARM GAS  /tmp/cc7dtM4H.s 			page 51


 2851 00a6 2946     		mov	r1, r5
 2852 00a8 3046     		mov	r0, r6
 2853 00aa FFF7FEFF 		bl	__aeabi_fcmplt
 2854 00ae 00B1     		cbz	r0, .L561
 2855              	.L603:
 2856 00b0 2E46     		mov	r6, r5
 2857              	.L561:
 2858 00b2 4946     		mov	r1, r9
 2859 00b4 3046     		mov	r0, r6
 2860 00b6 FFF7FEFF 		bl	__aeabi_fdiv
 2861 00ba 0146     		mov	r1, r0
 2862 00bc E06E     		ldr	r0, [r4, #108]	@ float
 2863 00be FFF7FEFF 		bl	__aeabi_fadd
 2864 00c2 E066     		str	r0, [r4, #108]	@ float
 2865 00c4 2046     		mov	r0, r4
 2866 00c6 FFF7FEFF 		bl	_ZN3DDA12NormaliseXYZEv
 2867 00ca 0146     		mov	r1, r0
 2868 00cc D4F88800 		ldr	r0, [r4, #136]	@ float
 2869 00d0 FFF7FEFF 		bl	__aeabi_fmul
 2870 00d4 C4F88800 		str	r0, [r4, #136]	@ float
 2871 00d8 2046     		mov	r0, r4
 2872 00da FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 2873 00de 3146     		mov	r1, r6
 2874 00e0 4046     		mov	r0, r8
 2875 00e2 FFF7FEFF 		bl	__aeabi_fadd
 2876 00e6 3146     		mov	r1, r6
 2877 00e8 8046     		mov	r8, r0
 2878 00ea 0298     		ldr	r0, [sp, #8]	@ float
 2879 00ec FFF7FEFF 		bl	__aeabi_fsub
 2880 00f0 A57A     		ldrb	r5, [r4, #10]	@ zero_extendqisi2
 2881 00f2 0290     		str	r0, [sp, #8]	@ float
 2882              	.L555:
 2883 00f4 A06C     		ldr	r0, [r4, #72]	@ float
 2884 00f6 4146     		mov	r1, r8
 2885 00f8 FFF7FEFF 		bl	__aeabi_fadd
 2886 00fc AA07     		lsls	r2, r5, #30
 2887 00fe A064     		str	r0, [r4, #72]	@ float
 2888 0100 DAF80030 		ldr	r3, [r10]
 2889 0104 3CD5     		bpl	.L565
 2890 0106 03F5927B 		add	fp, r3, #292
 2891 010a 03F59873 		add	r3, r3, #304
 2892 010e 04F11C05 		add	r5, r4, #28
 2893 0112 0193     		str	r3, [sp, #4]
 2894              	.L571:
 2895 0114 5BF8049B 		ldr	r9, [fp], #4	@ float
 2896 0118 4046     		mov	r0, r8
 2897 011a 4946     		mov	r1, r9
 2898 011c FFF7FEFF 		bl	__aeabi_fmul
 2899 0120 FFF7FEFF 		bl	__aeabi_f2iz
 2900 0124 2B68     		ldr	r3, [r5]
 2901 0126 3946     		mov	r1, r7
 2902 0128 1844     		add	r0, r0, r3
 2903 012a 45F8040B 		str	r0, [r5], #4
 2904 012e 3046     		mov	r0, r6
 2905 0130 FFF7FEFF 		bl	__aeabi_fcmpeq
 2906 0134 B0B9     		cbnz	r0, .L566
 2907 0136 4946     		mov	r1, r9
ARM GAS  /tmp/cc7dtM4H.s 			page 52


 2908 0138 3046     		mov	r0, r6
 2909 013a FFF7FEFF 		bl	__aeabi_fmul
 2910 013e FFF7FEFF 		bl	__aeabi_f2iz
 2911 0142 D5F8B030 		ldr	r3, [r5, #176]
 2912 0146 6BB1     		cbz	r3, .L566
 2913 0148 9A79     		ldrb	r2, [r3, #6]	@ zero_extendqisi2
 2914 014a 12F0100F 		tst	r2, #16
 2915 014e 9A68     		ldr	r2, [r3, #8]
 2916 0150 14BF     		ite	ne
 2917 0152 8018     		addne	r0, r0, r2
 2918 0154 801A     		subeq	r0, r0, r2
 2919 0156 0028     		cmp	r0, #0
 2920 0158 9A79     		ldrb	r2, [r3, #6]	@ zero_extendqisi2
 2921 015a 3CDB     		blt	.L570
 2922 015c 42F01002 		orr	r2, r2, #16
 2923 0160 9860     		str	r0, [r3, #8]
 2924 0162 9A71     		strb	r2, [r3, #6]
 2925              	.L566:
 2926 0164 019B     		ldr	r3, [sp, #4]
 2927 0166 5B45     		cmp	r3, fp
 2928 0168 D4D1     		bne	.L571
 2929              	.L572:
 2930 016a 2468     		ldr	r4, [r4]
 2931 016c 039B     		ldr	r3, [sp, #12]
 2932 016e A342     		cmp	r3, r4
 2933 0170 7FF45BAF 		bne	.L579
 2934              	.L551:
 2935 0174 4046     		mov	r0, r8
 2936 0176 05B0     		add	sp, sp, #20
 2937              		@ sp needed
 2938 0178 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2939              	.L585:
 2940 017c 3E46     		mov	r6, r7
 2941 017e B9E7     		b	.L555
 2942              	.L565:
 2943 0180 D3F82C51 		ldr	r5, [r3, #300]	@ float
 2944 0184 4046     		mov	r0, r8
 2945 0186 2946     		mov	r1, r5
 2946 0188 FFF7FEFF 		bl	__aeabi_fmul
 2947 018c FFF7FEFF 		bl	__aeabi_f2iz
 2948 0190 636A     		ldr	r3, [r4, #36]
 2949 0192 3946     		mov	r1, r7
 2950 0194 1844     		add	r0, r0, r3
 2951 0196 6062     		str	r0, [r4, #36]
 2952 0198 3046     		mov	r0, r6
 2953 019a FFF7FEFF 		bl	__aeabi_fcmpeq
 2954 019e 0028     		cmp	r0, #0
 2955 01a0 E3D1     		bne	.L572
 2956 01a2 2946     		mov	r1, r5
 2957 01a4 3046     		mov	r0, r6
 2958 01a6 FFF7FEFF 		bl	__aeabi_fmul
 2959 01aa FFF7FEFF 		bl	__aeabi_f2iz
 2960 01ae D4F8D830 		ldr	r3, [r4, #216]
 2961 01b2 1A79     		ldrb	r2, [r3, #4]	@ zero_extendqisi2
 2962 01b4 012A     		cmp	r2, #1
 2963 01b6 1FD0     		beq	.L608
 2964 01b8 0122     		movs	r2, #1
ARM GAS  /tmp/cc7dtM4H.s 			page 53


 2965 01ba 0028     		cmp	r0, #0
 2966 01bc 1A71     		strb	r2, [r3, #4]
 2967 01be 9A79     		ldrb	r2, [r3, #6]	@ zero_extendqisi2
 2968 01c0 24DB     		blt	.L578
 2969              	.L609:
 2970 01c2 42F01002 		orr	r2, r2, #16
 2971 01c6 9860     		str	r0, [r3, #8]
 2972 01c8 9A71     		strb	r2, [r3, #6]
 2973 01ca 2468     		ldr	r4, [r4]
 2974 01cc 039B     		ldr	r3, [sp, #12]
 2975 01ce A342     		cmp	r3, r4
 2976 01d0 7FF42BAF 		bne	.L579
 2977 01d4 CEE7     		b	.L551
 2978              	.L570:
 2979 01d6 4042     		negs	r0, r0
 2980 01d8 6FF30412 		bfc	r2, #4, #1
 2981 01dc 9860     		str	r0, [r3, #8]
 2982 01de 9A71     		strb	r2, [r3, #6]
 2983 01e0 C0E7     		b	.L566
 2984              	.L606:
 2985 01e2 0220     		movs	r0, #2
 2986 01e4 FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
 2987 01e8 C4F8D800 		str	r0, [r4, #216]
 2988 01ec 0028     		cmp	r0, #0
 2989 01ee 7FF42EAF 		bne	.L559
 2990 01f2 A57A     		ldrb	r5, [r4, #10]	@ zero_extendqisi2
 2991 01f4 3E46     		mov	r6, r7
 2992 01f6 7DE7     		b	.L555
 2993              	.L608:
 2994 01f8 9A79     		ldrb	r2, [r3, #6]	@ zero_extendqisi2
 2995 01fa 12F0100F 		tst	r2, #16
 2996 01fe 9A68     		ldr	r2, [r3, #8]
 2997 0200 14BF     		ite	ne
 2998 0202 8018     		addne	r0, r0, r2
 2999 0204 801A     		subeq	r0, r0, r2
 3000 0206 0028     		cmp	r0, #0
 3001 0208 9A79     		ldrb	r2, [r3, #6]	@ zero_extendqisi2
 3002 020a DADA     		bge	.L609
 3003              	.L578:
 3004 020c 4042     		negs	r0, r0
 3005 020e 6FF30412 		bfc	r2, #4, #1
 3006 0212 9860     		str	r0, [r3, #8]
 3007 0214 9A71     		strb	r2, [r3, #6]
 3008 0216 2468     		ldr	r4, [r4]
 3009 0218 039B     		ldr	r3, [sp, #12]
 3010 021a A342     		cmp	r3, r4
 3011 021c 7FF405AF 		bne	.L579
 3012 0220 A8E7     		b	.L551
 3013              	.L601:
 3014 0222 2946     		mov	r1, r5
 3015 0224 2846     		mov	r0, r5
 3016 0226 FFF7FEFF 		bl	__aeabi_fcmpun
 3017 022a 0028     		cmp	r0, #0
 3018 022c 3FF43BAF 		beq	.L563
 3019 0230 3EE7     		b	.L603
 3020              	.L607:
 3021 0232 029E     		ldr	r6, [sp, #8]	@ float
ARM GAS  /tmp/cc7dtM4H.s 			page 54


 3022 0234 3DE7     		b	.L561
 3023              	.L611:
 3024 0236 00BF     		.align	2
 3025              	.L610:
 3026 0238 CDCCCC3D 		.word	1036831949
 3027 023c 00000000 		.word	reprap
 3028              		.size	_ZN3DDA19AdvanceBabySteppingEf, .-_ZN3DDA19AdvanceBabySteppingEf
 3029              		.section	.text._ZN3DDA9MagnitudeEPKfj,"ax",%progbits
 3030              		.align	1
 3031              		.p2align 2,,3
 3032              		.global	_ZN3DDA9MagnitudeEPKfj
 3033              		.syntax unified
 3034              		.thumb
 3035              		.thumb_func
 3036              		.fpu softvfp
 3037              		.type	_ZN3DDA9MagnitudeEPKfj, %function
 3038              	_ZN3DDA9MagnitudeEPKfj:
 3039              		@ args = 0, pretend = 0, frame = 0
 3040              		@ frame_needed = 0, uses_anonymous_args = 0
 3041 0000 70B5     		push	{r4, r5, r6, lr}
 3042 0002 A1B1     		cbz	r1, .L615
 3043 0004 0446     		mov	r4, r0
 3044 0006 0025     		movs	r5, #0
 3045 0008 00EB8106 		add	r6, r0, r1, lsl #2
 3046              	.L614:
 3047 000c 54F8041B 		ldr	r1, [r4], #4	@ float
 3048 0010 0846     		mov	r0, r1
 3049 0012 FFF7FEFF 		bl	__aeabi_fmul
 3050 0016 0146     		mov	r1, r0
 3051 0018 2846     		mov	r0, r5
 3052 001a FFF7FEFF 		bl	__aeabi_fadd
 3053 001e B442     		cmp	r4, r6
 3054 0020 0546     		mov	r5, r0
 3055 0022 F3D1     		bne	.L614
 3056              	.L613:
 3057 0024 2846     		mov	r0, r5
 3058 0026 BDE87040 		pop	{r4, r5, r6, lr}
 3059 002a FFF7FEBF 		b	sqrtf
 3060              	.L615:
 3061 002e 0025     		movs	r5, #0
 3062 0030 F8E7     		b	.L613
 3063              		.size	_ZN3DDA9MagnitudeEPKfj, .-_ZN3DDA9MagnitudeEPKfj
 3064 0032 00BF     		.section	.text._ZN3DDA5ScaleEPffj,"ax",%progbits
 3065              		.align	1
 3066              		.p2align 2,,3
 3067              		.global	_ZN3DDA5ScaleEPffj
 3068              		.syntax unified
 3069              		.thumb
 3070              		.thumb_func
 3071              		.fpu softvfp
 3072              		.type	_ZN3DDA5ScaleEPffj, %function
 3073              	_ZN3DDA5ScaleEPffj:
 3074              		@ args = 0, pretend = 0, frame = 0
 3075              		@ frame_needed = 0, uses_anonymous_args = 0
 3076 0000 6AB1     		cbz	r2, .L623
 3077 0002 70B5     		push	{r4, r5, r6, lr}
 3078 0004 0E46     		mov	r6, r1
ARM GAS  /tmp/cc7dtM4H.s 			page 55


 3079 0006 0446     		mov	r4, r0
 3080 0008 00EB8205 		add	r5, r0, r2, lsl #2
 3081              	.L621:
 3082 000c 2068     		ldr	r0, [r4]	@ float
 3083 000e 3146     		mov	r1, r6
 3084 0010 FFF7FEFF 		bl	__aeabi_fmul
 3085 0014 44F8040B 		str	r0, [r4], #4	@ float
 3086 0018 AC42     		cmp	r4, r5
 3087 001a F7D1     		bne	.L621
 3088 001c 70BD     		pop	{r4, r5, r6, pc}
 3089              	.L623:
 3090 001e 7047     		bx	lr
 3091              		.size	_ZN3DDA5ScaleEPffj, .-_ZN3DDA5ScaleEPffj
 3092              		.section	.text._ZN3DDA8AbsoluteEPfj,"ax",%progbits
 3093              		.align	1
 3094              		.p2align 2,,3
 3095              		.global	_ZN3DDA8AbsoluteEPfj
 3096              		.syntax unified
 3097              		.thumb
 3098              		.thumb_func
 3099              		.fpu softvfp
 3100              		.type	_ZN3DDA8AbsoluteEPfj, %function
 3101              	_ZN3DDA8AbsoluteEPfj:
 3102              		@ args = 0, pretend = 0, frame = 0
 3103              		@ frame_needed = 0, uses_anonymous_args = 0
 3104              		@ link register save eliminated.
 3105 0000 41B1     		cbz	r1, .L626
 3106 0002 00EB8101 		add	r1, r0, r1, lsl #2
 3107              	.L629:
 3108 0006 0368     		ldr	r3, [r0]
 3109 0008 23F00043 		bic	r3, r3, #-2147483648
 3110 000c 40F8043B 		str	r3, [r0], #4	@ float
 3111 0010 8842     		cmp	r0, r1
 3112 0012 F8D1     		bne	.L629
 3113              	.L626:
 3114 0014 7047     		bx	lr
 3115              		.size	_ZN3DDA8AbsoluteEPfj, .-_ZN3DDA8AbsoluteEPfj
 3116 0016 00BF     		.section	.text.hot._ZN3DDA5StartEm,"ax",%progbits
 3117              		.align	1
 3118              		.p2align 2,,3
 3119              		.global	_ZN3DDA5StartEm
 3120              		.syntax unified
 3121              		.thumb
 3122              		.thumb_func
 3123              		.fpu softvfp
 3124              		.type	_ZN3DDA5StartEm, %function
 3125              	_ZN3DDA5StartEm:
 3126              		@ args = 0, pretend = 0, frame = 16
 3127              		@ frame_needed = 0, uses_anonymous_args = 0
 3128 0000 0322     		movs	r2, #3
 3129 0002 D0F8CC30 		ldr	r3, [r0, #204]
 3130 0006 C0F8B810 		str	r1, [r0, #184]
 3131 000a 0272     		strb	r2, [r0, #8]
 3132 000c 002B     		cmp	r3, #0
 3133 000e 00F09880 		beq	.L666
 3134 0012 0023     		movs	r3, #0
 3135 0014 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
ARM GAS  /tmp/cc7dtM4H.s 			page 56


 3136 0018 DFF82CB1 		ldr	fp, .L672
 3137 001c 85B0     		sub	sp, sp, #20
 3138 001e 0193     		str	r3, [sp, #4]
 3139 0020 0093     		str	r3, [sp]
 3140 0022 DBF81030 		ldr	r3, [fp, #16]
 3141 0026 00F1CC02 		add	r2, r0, #204
 3142 002a D3F8F881 		ldr	r8, [r3, #504]
 3143 002e 0392     		str	r2, [sp, #12]
 3144 0030 1646     		mov	r6, r2
 3145 0032 C8F10004 		rsb	r4, r8, #0
 3146 0036 C8F10909 		rsb	r9, r8, #9
 3147 003a 0290     		str	r0, [sp, #8]
 3148 003c 02E0     		b	.L636
 3149              	.L634:
 3150 003e 0134     		adds	r4, r4, #1
 3151 0040 4C45     		cmp	r4, r9
 3152 0042 1DD0     		beq	.L669
 3153              	.L636:
 3154 0044 56F8045F 		ldr	r5, [r6, #4]!
 3155 0048 002D     		cmp	r5, #0
 3156 004a F8D0     		beq	.L634
 3157 004c 2F79     		ldrb	r7, [r5, #4]	@ zero_extendqisi2
 3158 004e 012F     		cmp	r7, #1
 3159 0050 F5D1     		bne	.L634
 3160 0052 95F805A0 		ldrb	r10, [r5, #5]	@ zero_extendqisi2
 3161 0056 AA79     		ldrb	r2, [r5, #6]	@ zero_extendqisi2
 3162 0058 5146     		mov	r1, r10
 3163 005a C2F30012 		ubfx	r2, r2, #4, #1
 3164 005e DBF80000 		ldr	r0, [fp]
 3165 0062 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 3166 0066 C245     		cmp	r10, r8
 3167 0068 E9D3     		bcc	.L634
 3168 006a AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 3169 006c 07FA04F2 		lsl	r2, r7, r4
 3170 0070 DB06     		lsls	r3, r3, #27
 3171 0072 61D5     		bpl	.L635
 3172 0074 009B     		ldr	r3, [sp]
 3173 0076 0134     		adds	r4, r4, #1
 3174 0078 1343     		orrs	r3, r3, r2
 3175 007a 4C45     		cmp	r4, r9
 3176 007c 0093     		str	r3, [sp]
 3177 007e E1D1     		bne	.L636
 3178              	.L669:
 3179 0080 009B     		ldr	r3, [sp]
 3180 0082 DDF808A0 		ldr	r10, [sp, #8]
 3181 0086 BBB9     		cbnz	r3, .L637
 3182 0088 019B     		ldr	r3, [sp, #4]
 3183 008a ABB9     		cbnz	r3, .L637
 3184 008c DBF80040 		ldr	r4, [fp]
 3185              	.L645:
 3186 0090 0021     		movs	r1, #0
 3187 0092 D4F81006 		ldr	r0, [r4, #1552]	@ float
 3188 0096 FFF7FEFF 		bl	__aeabi_fcmpgt
 3189 009a 0028     		cmp	r0, #0
 3190 009c 3AD0     		beq	.L647
 3191 009e 04F21460 		addw	r0, r4, #1556
 3192 00a2 0021     		movs	r1, #0
ARM GAS  /tmp/cc7dtM4H.s 			page 57


 3193 00a4 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 3194 00a8 DAF8CC30 		ldr	r3, [r10, #204]
 3195 00ac 002B     		cmp	r3, #0
 3196 00ae 35D1     		bne	.L670
 3197              	.L660:
 3198 00b0 0120     		movs	r0, #1
 3199 00b2 05B0     		add	sp, sp, #20
 3200              		@ sp needed
 3201 00b4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3202              	.L637:
 3203 00b8 9DE80600 		ldm	sp, {r1, r2}
 3204 00bc 2248     		ldr	r0, .L672
 3205 00be FFF7FEFF 		bl	_ZN6RepRap30GetProhibitedExtruderMovementsEjj
 3206 00c2 0126     		movs	r6, #1
 3207 00c4 0021     		movs	r1, #0
 3208 00c6 039D     		ldr	r5, [sp, #12]
 3209 00c8 DAF8CC30 		ldr	r3, [r10, #204]
 3210              	.L639:
 3211 00cc 93B1     		cbz	r3, .L640
 3212              	.L671:
 3213 00ce 5A79     		ldrb	r2, [r3, #5]	@ zero_extendqisi2
 3214 00d0 4245     		cmp	r2, r8
 3215 00d2 2CD3     		bcc	.L652
 3216 00d4 A2EB0804 		sub	r4, r2, r8
 3217 00d8 082A     		cmp	r2, #8
 3218 00da 06FA04F4 		lsl	r4, r6, r4
 3219 00de 26D8     		bhi	.L652
 3220 00e0 0442     		tst	r4, r0
 3221 00e2 26D1     		bne	.L651
 3222 00e4 0122     		movs	r2, #1
 3223              	.L641:
 3224 00e6 1D46     		mov	r5, r3
 3225 00e8 1B68     		ldr	r3, [r3]
 3226 00ea 0029     		cmp	r1, #0
 3227 00ec 08BF     		it	eq
 3228 00ee 1146     		moveq	r1, r2
 3229 00f0 002B     		cmp	r3, #0
 3230 00f2 ECD1     		bne	.L671
 3231              	.L640:
 3232 00f4 DBF80040 		ldr	r4, [fp]
 3233 00f8 0029     		cmp	r1, #0
 3234 00fa C9D0     		beq	.L645
 3235 00fc D4F81056 		ldr	r5, [r4, #1552]	@ float
 3236 0100 0021     		movs	r1, #0
 3237 0102 2846     		mov	r0, r5
 3238 0104 FFF7FEFF 		bl	__aeabi_fcmpgt
 3239 0108 20B1     		cbz	r0, .L647
 3240 010a 2946     		mov	r1, r5
 3241 010c 04F21460 		addw	r0, r4, #1556
 3242 0110 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 3243              	.L647:
 3244 0114 DAF8CC30 		ldr	r3, [r10, #204]
 3245 0118 002B     		cmp	r3, #0
 3246 011a C9D0     		beq	.L660
 3247              	.L670:
 3248 011c 5869     		ldr	r0, [r3, #20]
 3249 011e DAF8B830 		ldr	r3, [r10, #184]
ARM GAS  /tmp/cc7dtM4H.s 			page 58


 3250 0122 1844     		add	r0, r0, r3
 3251 0124 05B0     		add	sp, sp, #20
 3252              		@ sp needed
 3253 0126 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3254 012a FFF7FEBF 		b	_ZN8Platform21ScheduleStepInterruptEm
 3255              	.L652:
 3256 012e 0022     		movs	r2, #0
 3257 0130 D9E7     		b	.L641
 3258              	.L651:
 3259 0132 1B68     		ldr	r3, [r3]
 3260 0134 2B60     		str	r3, [r5]
 3261 0136 C9E7     		b	.L639
 3262              	.L635:
 3263 0138 019B     		ldr	r3, [sp, #4]
 3264 013a A740     		lsls	r7, r7, r4
 3265 013c 3B43     		orrs	r3, r3, r7
 3266 013e 0193     		str	r3, [sp, #4]
 3267 0140 7DE7     		b	.L634
 3268              	.L666:
 3269 0142 0120     		movs	r0, #1
 3270 0144 7047     		bx	lr
 3271              	.L673:
 3272 0146 00BF     		.align	2
 3273              	.L672:
 3274 0148 00000000 		.word	reprap
 3275              		.size	_ZN3DDA5StartEm, .-_ZN3DDA5StartEm
 3276              		.section	.text._ZN3DDA9StopDriveEj,"ax",%progbits
 3277              		.align	1
 3278              		.p2align 2,,3
 3279              		.global	_ZN3DDA9StopDriveEj
 3280              		.syntax unified
 3281              		.thumb
 3282              		.thumb_func
 3283              		.fpu softvfp
 3284              		.type	_ZN3DDA9StopDriveEj, %function
 3285              	_ZN3DDA9StopDriveEj:
 3286              		@ args = 0, pretend = 0, frame = 0
 3287              		@ frame_needed = 0, uses_anonymous_args = 0
 3288              		@ link register save eliminated.
 3289 0000 00EB8102 		add	r2, r0, r1, lsl #2
 3290 0004 D2F8D030 		ldr	r3, [r2, #208]
 3291 0008 23B1     		cbz	r3, .L706
 3292 000a 70B4     		push	{r4, r5, r6}
 3293 000c 1C79     		ldrb	r4, [r3, #4]	@ zero_extendqisi2
 3294 000e 012C     		cmp	r4, #1
 3295 0010 01D0     		beq	.L709
 3296              	.L674:
 3297 0012 70BC     		pop	{r4, r5, r6}
 3298              	.L706:
 3299 0014 7047     		bx	lr
 3300              	.L709:
 3301 0016 0025     		movs	r5, #0
 3302 0018 214C     		ldr	r4, .L714
 3303 001a 1D71     		strb	r5, [r3, #4]
 3304 001c 2469     		ldr	r4, [r4, #16]
 3305 001e D4F8F841 		ldr	r4, [r4, #504]
 3306 0022 A142     		cmp	r1, r4
ARM GAS  /tmp/cc7dtM4H.s 			page 59


 3307 0024 16D3     		bcc	.L710
 3308              	.L678:
 3309 0026 D0F8CC20 		ldr	r2, [r0, #204]
 3310 002a 82B1     		cbz	r2, .L684
 3311 002c 5379     		ldrb	r3, [r2, #5]	@ zero_extendqisi2
 3312 002e 9942     		cmp	r1, r3
 3313 0030 01D1     		bne	.L687
 3314 0032 30E0     		b	.L711
 3315              	.L691:
 3316 0034 1A46     		mov	r2, r3
 3317              	.L687:
 3318 0036 1368     		ldr	r3, [r2]
 3319 0038 002B     		cmp	r3, #0
 3320 003a EAD0     		beq	.L674
 3321 003c 5C79     		ldrb	r4, [r3, #5]	@ zero_extendqisi2
 3322 003e A142     		cmp	r1, r4
 3323 0040 F8D1     		bne	.L691
 3324              	.L688:
 3325 0042 1B68     		ldr	r3, [r3]
 3326 0044 1360     		str	r3, [r2]
 3327 0046 D0F8CC30 		ldr	r3, [r0, #204]
 3328 004a 002B     		cmp	r3, #0
 3329 004c E1D1     		bne	.L674
 3330              	.L684:
 3331 004e 0423     		movs	r3, #4
 3332 0050 0372     		strb	r3, [r0, #8]
 3333 0052 DEE7     		b	.L674
 3334              	.L710:
 3335 0054 1D69     		ldr	r5, [r3, #16]
 3336 0056 9C68     		ldr	r4, [r3, #8]
 3337 0058 A542     		cmp	r5, r4
 3338 005a 0DD9     		bls	.L679
 3339 005c DD68     		ldr	r5, [r3, #12]
 3340 005e BDB9     		cbnz	r5, .L712
 3341              	.L681:
 3342 0060 9B79     		ldrb	r3, [r3, #6]	@ zero_extendqisi2
 3343 0062 DB06     		lsls	r3, r3, #27
 3344 0064 D369     		ldr	r3, [r2, #28]
 3345 0066 58BF     		it	pl
 3346 0068 6442     		rsbpl	r4, r4, #0
 3347 006a 1C1B     		subs	r4, r3, r4
 3348 006c D461     		str	r4, [r2, #28]
 3349 006e 837A     		ldrb	r3, [r0, #10]	@ zero_extendqisi2
 3350 0070 6FF30003 		bfc	r3, #0, #1
 3351 0074 8372     		strb	r3, [r0, #10]
 3352 0076 D6E7     		b	.L678
 3353              	.L679:
 3354 0078 DE68     		ldr	r6, [r3, #12]
 3355 007a B542     		cmp	r5, r6
 3356 007c 02D8     		bhi	.L713
 3357              	.L707:
 3358 007e A41B     		subs	r4, r4, r6
 3359 0080 0134     		adds	r4, r4, #1
 3360 0082 EDE7     		b	.L681
 3361              	.L713:
 3362 0084 C4EB4504 		rsb	r4, r4, r5, lsl #1
 3363 0088 023C     		subs	r4, r4, #2
ARM GAS  /tmp/cc7dtM4H.s 			page 60


 3364 008a 002E     		cmp	r6, #0
 3365 008c E8D0     		beq	.L681
 3366 008e F6E7     		b	.L707
 3367              	.L712:
 3368 0090 641B     		subs	r4, r4, r5
 3369 0092 0134     		adds	r4, r4, #1
 3370 0094 E4E7     		b	.L681
 3371              	.L711:
 3372 0096 1346     		mov	r3, r2
 3373 0098 00F1CC02 		add	r2, r0, #204
 3374 009c D1E7     		b	.L688
 3375              	.L715:
 3376 009e 00BF     		.align	2
 3377              	.L714:
 3378 00a0 00000000 		.word	reprap
 3379              		.size	_ZN3DDA9StopDriveEj, .-_ZN3DDA9StopDriveEj
 3380              		.section	.text._ZN3DDA11MoveAbortedEv,"ax",%progbits
 3381              		.align	1
 3382              		.p2align 2,,3
 3383              		.global	_ZN3DDA11MoveAbortedEv
 3384              		.syntax unified
 3385              		.thumb
 3386              		.thumb_func
 3387              		.fpu softvfp
 3388              		.type	_ZN3DDA11MoveAbortedEv, %function
 3389              	_ZN3DDA11MoveAbortedEv:
 3390              		@ args = 0, pretend = 0, frame = 0
 3391              		@ frame_needed = 0, uses_anonymous_args = 0
 3392 0000 38B5     		push	{r3, r4, r5, lr}
 3393 0002 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 3394 0004 0546     		mov	r5, r0
 3395 0006 032B     		cmp	r3, #3
 3396 0008 02D0     		beq	.L717
 3397 000a 0423     		movs	r3, #4
 3398 000c 2B72     		strb	r3, [r5, #8]
 3399 000e 38BD     		pop	{r3, r4, r5, pc}
 3400              	.L717:
 3401 0010 0024     		movs	r4, #0
 3402              	.L719:
 3403 0012 2146     		mov	r1, r4
 3404 0014 2846     		mov	r0, r5
 3405 0016 0134     		adds	r4, r4, #1
 3406 0018 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3407 001c 092C     		cmp	r4, #9
 3408 001e F8D1     		bne	.L719
 3409 0020 0423     		movs	r3, #4
 3410 0022 2B72     		strb	r3, [r5, #8]
 3411 0024 38BD     		pop	{r3, r4, r5, pc}
 3412              		.size	_ZN3DDA11MoveAbortedEv, .-_ZN3DDA11MoveAbortedEv
 3413 0026 00BF     		.section	.text._ZNK3DDA17GetProportionDoneEb,"ax",%progbits
 3414              		.align	1
 3415              		.p2align 2,,3
 3416              		.global	_ZNK3DDA17GetProportionDoneEb
 3417              		.syntax unified
 3418              		.thumb
 3419              		.thumb_func
 3420              		.fpu softvfp
ARM GAS  /tmp/cc7dtM4H.s 			page 61


 3421              		.type	_ZNK3DDA17GetProportionDoneEb, %function
 3422              	_ZNK3DDA17GetProportionDoneEb:
 3423              		@ args = 0, pretend = 0, frame = 0
 3424              		@ frame_needed = 0, uses_anonymous_args = 0
 3425 0000 8369     		ldr	r3, [r0, #24]
 3426 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3427 0006 5A1C     		adds	r2, r3, #1
 3428 0008 0746     		mov	r7, r0
 3429 000a 0C46     		mov	r4, r1
 3430 000c 04D0     		beq	.L745
 3431 000e 4268     		ldr	r2, [r0, #4]
 3432 0010 9169     		ldr	r1, [r2, #24]
 3433 0012 8B42     		cmp	r3, r1
 3434 0014 00F08280 		beq	.L762
 3435              	.L745:
 3436 0018 0025     		movs	r5, #0
 3437              	.L726:
 3438 001a 002C     		cmp	r4, #0
 3439 001c 59D0     		beq	.L725
 3440 001e D7F8C810 		ldr	r1, [r7, #200]	@ float
 3441 0022 4FF07E50 		mov	r0, #1065353216
 3442 0026 FFF7FEFF 		bl	__aeabi_fsub
 3443 002a 0646     		mov	r6, r0
 3444 002c 0146     		mov	r1, r0
 3445 002e 2846     		mov	r0, r5
 3446 0030 FFF7FEFF 		bl	__aeabi_fcmplt
 3447 0034 0028     		cmp	r0, #0
 3448 0036 4CD0     		beq	.L725
 3449 0038 3C4B     		ldr	r3, .L763
 3450 003a 1B69     		ldr	r3, [r3, #16]
 3451 003c D3F8F811 		ldr	r1, [r3, #504]
 3452 0040 0829     		cmp	r1, #8
 3453 0042 46D8     		bhi	.L725
 3454 0044 0020     		movs	r0, #0
 3455 0046 0446     		mov	r4, r0
 3456 0048 3431     		adds	r1, r1, #52
 3457 004a 07EB8101 		add	r1, r7, r1, lsl #2
 3458 004e F437     		adds	r7, r7, #244
 3459              	.L742:
 3460 0050 51F8042B 		ldr	r2, [r1], #4
 3461 0054 BAB1     		cbz	r2, .L729
 3462 0056 D2F80CE0 		ldr	lr, [r2, #12]
 3463 005a 1369     		ldr	r3, [r2, #16]
 3464 005c D2F80880 		ldr	r8, [r2, #8]
 3465 0060 7345     		cmp	r3, lr
 3466 0062 39D8     		bhi	.L731
 3467 0064 4345     		cmp	r3, r8
 3468 0066 37D8     		bhi	.L731
 3469 0068 9279     		ldrb	r2, [r2, #6]	@ zero_extendqisi2
 3470 006a AEEB430C 		sub	ip, lr, r3, lsl #1
 3471 006e 12F01002 		ands	r2, r2, #16
 3472 0072 0CF1010C 		add	ip, ip, #1
 3473 0076 38D0     		beq	.L734
 3474 0078 6444     		add	r4, r4, ip
 3475              	.L743:
 3476 007a A8EB0E03 		sub	r3, r8, lr
 3477 007e 0133     		adds	r3, r3, #1
ARM GAS  /tmp/cc7dtM4H.s 			page 62


 3478              	.L739:
 3479 0080 02B9     		cbnz	r2, .L741
 3480 0082 5B42     		negs	r3, r3
 3481              	.L741:
 3482 0084 1844     		add	r0, r0, r3
 3483              	.L729:
 3484 0086 B942     		cmp	r1, r7
 3485 0088 E2D1     		bne	.L742
 3486 008a 2718     		adds	r7, r4, r0
 3487 008c 002F     		cmp	r7, #0
 3488 008e 20DD     		ble	.L725
 3489 0090 2946     		mov	r1, r5
 3490 0092 3046     		mov	r0, r6
 3491 0094 FFF7FEFF 		bl	__aeabi_fsub
 3492 0098 0646     		mov	r6, r0
 3493 009a 2046     		mov	r0, r4
 3494 009c FFF7FEFF 		bl	__aeabi_i2f
 3495 00a0 0146     		mov	r1, r0
 3496 00a2 3046     		mov	r0, r6
 3497 00a4 FFF7FEFF 		bl	__aeabi_fmul
 3498 00a8 0446     		mov	r4, r0
 3499 00aa 7810     		asrs	r0, r7, #1
 3500 00ac FFF7FEFF 		bl	__aeabi_i2f
 3501 00b0 0146     		mov	r1, r0
 3502 00b2 2046     		mov	r0, r4
 3503 00b4 FFF7FEFF 		bl	__aeabi_fadd
 3504 00b8 0446     		mov	r4, r0
 3505 00ba 3846     		mov	r0, r7
 3506 00bc FFF7FEFF 		bl	__aeabi_i2f
 3507 00c0 0146     		mov	r1, r0
 3508 00c2 2046     		mov	r0, r4
 3509 00c4 FFF7FEFF 		bl	__aeabi_fdiv
 3510 00c8 0146     		mov	r1, r0
 3511 00ca 2846     		mov	r0, r5
 3512 00cc FFF7FEFF 		bl	__aeabi_fadd
 3513 00d0 0546     		mov	r5, r0
 3514              	.L725:
 3515 00d2 2846     		mov	r0, r5
 3516 00d4 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3517              	.L731:
 3518 00d8 BEF1000F 		cmp	lr, #0
 3519 00dc 10D0     		beq	.L746
 3520 00de 0EF1FF3C 		add	ip, lr, #-1
 3521              	.L733:
 3522 00e2 9279     		ldrb	r2, [r2, #6]	@ zero_extendqisi2
 3523 00e4 12F01002 		ands	r2, r2, #16
 3524 00e8 02D1     		bne	.L736
 3525              	.L734:
 3526 00ea 0022     		movs	r2, #0
 3527 00ec CCF1000C 		rsb	ip, ip, #0
 3528              	.L736:
 3529 00f0 9845     		cmp	r8, r3
 3530 00f2 6444     		add	r4, r4, ip
 3531 00f4 06D2     		bcs	.L737
 3532 00f6 BEF1000F 		cmp	lr, #0
 3533 00fa BED1     		bne	.L743
 3534 00fc 4346     		mov	r3, r8
ARM GAS  /tmp/cc7dtM4H.s 			page 63


 3535 00fe BFE7     		b	.L739
 3536              	.L746:
 3537 0100 F446     		mov	ip, lr
 3538 0102 EEE7     		b	.L733
 3539              	.L737:
 3540 0104 7345     		cmp	r3, lr
 3541 0106 B8D9     		bls	.L743
 3542 0108 C8EB4303 		rsb	r3, r8, r3, lsl #1
 3543 010c 023B     		subs	r3, r3, #2
 3544 010e BEF1000F 		cmp	lr, #0
 3545 0112 B5D0     		beq	.L739
 3546 0114 A3EB0E03 		sub	r3, r3, lr
 3547 0118 0133     		adds	r3, r3, #1
 3548 011a B1E7     		b	.L739
 3549              	.L762:
 3550 011c D2F8C810 		ldr	r1, [r2, #200]	@ float
 3551 0120 4FF07E50 		mov	r0, #1065353216
 3552 0124 FFF7FEFF 		bl	__aeabi_fsub
 3553 0128 0546     		mov	r5, r0
 3554 012a 76E7     		b	.L726
 3555              	.L764:
 3556              		.align	2
 3557              	.L763:
 3558 012c 00000000 		.word	reprap
 3559              		.size	_ZNK3DDA17GetProportionDoneEb, .-_ZNK3DDA17GetProportionDoneEb
 3560              		.section	.text._ZN3DDA17ReduceHomingSpeedEv,"ax",%progbits
 3561              		.align	1
 3562              		.p2align 2,,3
 3563              		.global	_ZN3DDA17ReduceHomingSpeedEv
 3564              		.syntax unified
 3565              		.thumb
 3566              		.thumb_func
 3567              		.fpu softvfp
 3568              		.type	_ZN3DDA17ReduceHomingSpeedEv, %function
 3569              	_ZN3DDA17ReduceHomingSpeedEv:
 3570              		@ args = 0, pretend = 0, frame = 0
 3571              		@ frame_needed = 0, uses_anonymous_args = 0
 3572 0000 90F90A30 		ldrsb	r3, [r0, #10]
 3573 0004 002B     		cmp	r3, #0
 3574 0006 38DB     		blt	.L775
 3575 0008 70B5     		push	{r4, r5, r6, lr}
 3576 000a 0546     		mov	r5, r0
 3577 000c 837A     		ldrb	r3, [r0, #10]	@ zero_extendqisi2
 3578 000e 1B49     		ldr	r1, .L780
 3579 0010 43F08003 		orr	r3, r3, #128
 3580 0014 8372     		strb	r3, [r0, #10]
 3581 0016 D0F8A400 		ldr	r0, [r0, #164]	@ float
 3582 001a FFF7FEFF 		bl	__aeabi_fmul
 3583 001e 184B     		ldr	r3, .L780+4
 3584 0020 D5F8B810 		ldr	r1, [r5, #184]
 3585 0024 1A69     		ldr	r2, [r3, #16]
 3586 0026 D5F8C430 		ldr	r3, [r5, #196]
 3587 002a 521A     		subs	r2, r2, r1
 3588 002c D5F8B410 		ldr	r1, [r5, #180]
 3589 0030 03EB4303 		add	r3, r3, r3, lsl #1
 3590 0034 A3EB4203 		sub	r3, r3, r2, lsl #1
 3591 0038 8A42     		cmp	r2, r1
ARM GAS  /tmp/cc7dtM4H.s 			page 64


 3592 003a C5F8A400 		str	r0, [r5, #164]	@ float
 3593 003e C5F8C430 		str	r3, [r5, #196]
 3594 0042 14D3     		bcc	.L778
 3595              	.L767:
 3596 0044 05F1CC04 		add	r4, r5, #204
 3597 0048 05F1F006 		add	r6, r5, #240
 3598 004c 01E0     		b	.L770
 3599              	.L768:
 3600 004e B442     		cmp	r4, r6
 3601 0050 0CD0     		beq	.L779
 3602              	.L770:
 3603 0052 54F8040F 		ldr	r0, [r4, #4]!
 3604 0056 0028     		cmp	r0, #0
 3605 0058 F9D0     		beq	.L768
 3606 005a 0379     		ldrb	r3, [r0, #4]	@ zero_extendqisi2
 3607 005c 012B     		cmp	r3, #1
 3608 005e F6D1     		bne	.L768
 3609 0060 0322     		movs	r2, #3
 3610 0062 2946     		mov	r1, r5
 3611 0064 FFF7FEFF 		bl	_ZN13DriveMovement11ReduceSpeedERK3DDAm
 3612 0068 B442     		cmp	r4, r6
 3613 006a F2D1     		bne	.L770
 3614              	.L779:
 3615 006c 70BD     		pop	{r4, r5, r6, pc}
 3616              	.L778:
 3617 006e 8A1A     		subs	r2, r1, r2
 3618 0070 01EB4202 		add	r2, r1, r2, lsl #1
 3619 0074 C5F8B420 		str	r2, [r5, #180]
 3620 0078 E4E7     		b	.L767
 3621              	.L775:
 3622 007a 7047     		bx	lr
 3623              	.L781:
 3624              		.align	2
 3625              	.L780:
 3626 007c ABAAAA3E 		.word	1051372203
 3627 0080 00400840 		.word	1074282496
 3628              		.size	_ZN3DDA17ReduceHomingSpeedEv, .-_ZN3DDA17ReduceHomingSpeedEv
 3629              		.section	.text._ZN3DDA13CheckEndstopsER8Platform,"ax",%progbits
 3630              		.align	1
 3631              		.p2align 2,,3
 3632              		.global	_ZN3DDA13CheckEndstopsER8Platform
 3633              		.syntax unified
 3634              		.thumb
 3635              		.thumb_func
 3636              		.fpu softvfp
 3637              		.type	_ZN3DDA13CheckEndstopsER8Platform, %function
 3638              	_ZN3DDA13CheckEndstopsER8Platform:
 3639              		@ args = 0, pretend = 0, frame = 8
 3640              		@ frame_needed = 0, uses_anonymous_args = 0
 3641 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3642 0004 C368     		ldr	r3, [r0, #12]
 3643 0006 85B0     		sub	sp, sp, #20
 3644 0008 002B     		cmp	r3, #0
 3645 000a 0546     		mov	r5, r0
 3646 000c 0F46     		mov	r7, r1
 3647 000e C0F2B080 		blt	.L834
 3648              	.L783:
ARM GAS  /tmp/cc7dtM4H.s 			page 65


 3649 0012 DFF88881 		ldr	r8, .L842
 3650 0016 0024     		movs	r4, #0
 3651 0018 D8F81010 		ldr	r1, [r8, #16]
 3652 001c 4FF0010A 		mov	r10, #1
 3653 0020 03F08052 		and	r2, r3, #268435456
 3654 0024 D1F8F861 		ldr	r6, [r1, #504]
 3655 0028 0AE0     		b	.L805
 3656              	.L837:
 3657 002a BBF1030F 		cmp	fp, #3
 3658 002e 2CD1     		bne	.L831
 3659 0030 EB68     		ldr	r3, [r5, #12]
 3660 0032 0AFA04F2 		lsl	r2, r10, r4
 3661 0036 9342     		cmp	r3, r2
 3662 0038 24D0     		beq	.L835
 3663              	.L830:
 3664 003a 03F08052 		and	r2, r3, #268435456
 3665              	.L792:
 3666 003e 0134     		adds	r4, r4, #1
 3667              	.L805:
 3668 0040 002A     		cmp	r2, #0
 3669 0042 0CBF     		ite	eq
 3670 0044 3146     		moveq	r1, r6
 3671 0046 0921     		movne	r1, #9
 3672 0048 8C42     		cmp	r4, r1
 3673 004a 2AD2     		bcs	.L782
 3674 004c 23FA04F1 		lsr	r1, r3, r4
 3675 0050 C807     		lsls	r0, r1, #31
 3676 0052 F4D5     		bpl	.L792
 3677 0054 2146     		mov	r1, r4
 3678 0056 3846     		mov	r0, r7
 3679 0058 0AB1     		cbz	r2, .L793
 3680 005a B442     		cmp	r4, r6
 3681 005c 24D2     		bcs	.L836
 3682              	.L793:
 3683 005e FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 3684 0062 B0F1000B 		subs	fp, r0, #0
 3685 0066 10DD     		ble	.L831
 3686 0068 BBF1020F 		cmp	fp, #2
 3687 006c DDDC     		bgt	.L837
 3688 006e EB68     		ldr	r3, [r5, #12]
 3689 0070 13F08052 		ands	r2, r3, #268435456
 3690 0074 22D0     		beq	.L797
 3691              	.L839:
 3692 0076 297A     		ldrb	r1, [r5, #8]	@ zero_extendqisi2
 3693 0078 0329     		cmp	r1, #3
 3694 007a 5FD0     		beq	.L838
 3695              	.L798:
 3696 007c 4FF00401 		mov	r1, #4
 3697 0080 2972     		strb	r1, [r5, #8]
 3698 0082 DCE7     		b	.L792
 3699              	.L835:
 3700 0084 2846     		mov	r0, r5
 3701 0086 FFF7FEFF 		bl	_ZN3DDA17ReduceHomingSpeedEv
 3702              	.L831:
 3703 008a EB68     		ldr	r3, [r5, #12]
 3704 008c D5E7     		b	.L830
 3705              	.L785:
ARM GAS  /tmp/cc7dtM4H.s 			page 66


 3706 008e 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 3707 0090 032B     		cmp	r3, #3
 3708 0092 7AD0     		beq	.L787
 3709              	.L789:
 3710 0094 0421     		movs	r1, #4
 3711 0096 0122     		movs	r2, #1
 3712 0098 404B     		ldr	r3, .L842
 3713 009a 2972     		strb	r1, [r5, #8]
 3714 009c 1B69     		ldr	r3, [r3, #16]
 3715 009e 83F81C23 		strb	r2, [r3, #796]
 3716              	.L782:
 3717 00a2 05B0     		add	sp, sp, #20
 3718              		@ sp needed
 3719 00a4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3720              	.L836:
 3721 00a8 FFF7FEFF 		bl	_ZNK8Platform17EndStopInputStateEj
 3722 00ac 0028     		cmp	r0, #0
 3723 00ae ECD0     		beq	.L831
 3724 00b0 EB68     		ldr	r3, [r5, #12]
 3725 00b2 4FF0010B 		mov	fp, #1
 3726 00b6 13F08052 		ands	r2, r3, #268435456
 3727 00ba DCD1     		bne	.L839
 3728              	.L797:
 3729 00bc 0AFA04F2 		lsl	r2, r10, r4
 3730 00c0 1146     		mov	r1, r2
 3731 00c2 0392     		str	r2, [sp, #12]
 3732 00c4 D8F80820 		ldr	r2, [r8, #8]
 3733 00c8 23EA0103 		bic	r3, r3, r1
 3734 00cc D2F8FC24 		ldr	r2, [r2, #1276]
 3735 00d0 EB60     		str	r3, [r5, #12]
 3736 00d2 0292     		str	r2, [sp, #8]
 3737 00d4 33BB     		cbnz	r3, .L840
 3738              	.L800:
 3739 00d6 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 3740 00d8 032B     		cmp	r3, #3
 3741 00da 3ED0     		beq	.L841
 3742              	.L808:
 3743 00dc 4FF00403 		mov	r3, #4
 3744 00e0 2B72     		strb	r3, [r5, #8]
 3745              	.L806:
 3746 00e2 B442     		cmp	r4, r6
 3747 00e4 EB68     		ldr	r3, [r5, #12]
 3748 00e6 A8D2     		bcs	.L830
 3749 00e8 5800     		lsls	r0, r3, #1
 3750 00ea A6D5     		bpl	.L830
 3751 00ec ABF10202 		sub	r2, fp, #2
 3752 00f0 B2FA82F2 		clz	r2, r2
 3753 00f4 0298     		ldr	r0, [sp, #8]
 3754 00f6 D8F80030 		ldr	r3, [r8]
 3755 00fa 0168     		ldr	r1, [r0]
 3756 00fc 0095     		str	r5, [sp]
 3757 00fe 5209     		lsrs	r2, r2, #5
 3758 0100 D1F848B0 		ldr	fp, [r1, #72]
 3759 0104 03F59273 		add	r3, r3, #292
 3760 0108 2146     		mov	r1, r4
 3761 010a D847     		blx	fp
 3762 010c D8F81020 		ldr	r2, [r8, #16]
ARM GAS  /tmp/cc7dtM4H.s 			page 67


 3763 0110 0399     		ldr	r1, [sp, #12]
 3764 0112 D2F88032 		ldr	r3, [r2, #640]
 3765 0116 0B43     		orrs	r3, r3, r1
 3766 0118 C2F88032 		str	r3, [r2, #640]
 3767 011c EB68     		ldr	r3, [r5, #12]
 3768 011e 03F08052 		and	r2, r3, #268435456
 3769 0122 8CE7     		b	.L792
 3770              	.L840:
 3771 0124 1368     		ldr	r3, [r2]
 3772 0126 1046     		mov	r0, r2
 3773 0128 2146     		mov	r1, r4
 3774 012a 5B6C     		ldr	r3, [r3, #68]
 3775 012c 9847     		blx	r3
 3776 012e 0028     		cmp	r0, #0
 3777 0130 D1D1     		bne	.L800
 3778 0132 2146     		mov	r1, r4
 3779 0134 2846     		mov	r0, r5
 3780 0136 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3781 013a D2E7     		b	.L806
 3782              	.L838:
 3783 013c 4FF00009 		mov	r9, #0
 3784              	.L799:
 3785 0140 4946     		mov	r1, r9
 3786 0142 2846     		mov	r0, r5
 3787 0144 09F10109 		add	r9, r9, #1
 3788 0148 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3789 014c B9F1090F 		cmp	r9, #9
 3790 0150 F6D1     		bne	.L799
 3791 0152 EB68     		ldr	r3, [r5, #12]
 3792 0154 03F08052 		and	r2, r3, #268435456
 3793 0158 90E7     		b	.L798
 3794              	.L841:
 3795 015a 4FF00009 		mov	r9, #0
 3796              	.L802:
 3797 015e 4946     		mov	r1, r9
 3798 0160 2846     		mov	r0, r5
 3799 0162 09F10109 		add	r9, r9, #1
 3800 0166 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3801 016a B9F1090F 		cmp	r9, #9
 3802 016e F6D1     		bne	.L802
 3803 0170 B4E7     		b	.L808
 3804              	.L834:
 3805 0172 0846     		mov	r0, r1
 3806 0174 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 3807 0178 0128     		cmp	r0, #1
 3808 017a 88D0     		beq	.L785
 3809 017c 0328     		cmp	r0, #3
 3810 017e 02D1     		bne	.L829
 3811 0180 2846     		mov	r0, r5
 3812 0182 FFF7FEFF 		bl	_ZN3DDA17ReduceHomingSpeedEv
 3813              	.L829:
 3814 0186 EB68     		ldr	r3, [r5, #12]
 3815 0188 43E7     		b	.L783
 3816              	.L787:
 3817 018a 0024     		movs	r4, #0
 3818              	.L790:
 3819 018c 2146     		mov	r1, r4
ARM GAS  /tmp/cc7dtM4H.s 			page 68


 3820 018e 2846     		mov	r0, r5
 3821 0190 0134     		adds	r4, r4, #1
 3822 0192 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3823 0196 092C     		cmp	r4, #9
 3824 0198 F8D1     		bne	.L790
 3825 019a 7BE7     		b	.L789
 3826              	.L843:
 3827              		.align	2
 3828              	.L842:
 3829 019c 00000000 		.word	reprap
 3830              		.size	_ZN3DDA13CheckEndstopsER8Platform, .-_ZN3DDA13CheckEndstopsER8Platform
 3831              		.section	.text.hot._ZN3DDA4StepEv,"ax",%progbits
 3832              		.align	1
 3833              		.p2align 2,,3
 3834              		.global	_ZN3DDA4StepEv
 3835              		.syntax unified
 3836              		.thumb
 3837              		.thumb_func
 3838              		.fpu softvfp
 3839              		.type	_ZN3DDA4StepEv, %function
 3840              	_ZN3DDA4StepEv:
 3841              		@ args = 0, pretend = 0, frame = 8
 3842              		@ frame_needed = 0, uses_anonymous_args = 0
 3843 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3844 0004 0646     		mov	r6, r0
 3845 0006 0025     		movs	r5, #0
 3846 0008 914B     		ldr	r3, .L910
 3847 000a 83B0     		sub	sp, sp, #12
 3848 000c 1F68     		ldr	r7, [r3]
 3849 000e 914B     		ldr	r3, .L910+4
 3850 0010 D3F80090 		ldr	r9, [r3]
 3851              	.L877:
 3852 0014 F368     		ldr	r3, [r6, #12]
 3853 0016 002B     		cmp	r3, #0
 3854 0018 40F0F680 		bne	.L845
 3855              	.L848:
 3856 001c 8E4B     		ldr	r3, .L910+8
 3857 001e D6F8B820 		ldr	r2, [r6, #184]
 3858 0022 1B69     		ldr	r3, [r3, #16]
 3859 0024 D6F8CC40 		ldr	r4, [r6, #204]
 3860 0028 191D     		adds	r1, r3, #4
 3861 002a 002D     		cmp	r5, #0
 3862 002c 08BF     		it	eq
 3863 002e 9A46     		moveq	r10, r3
 3864 0030 891A     		subs	r1, r1, r2
 3865 0032 002C     		cmp	r4, #0
 3866 0034 00F0F180 		beq	.L903
 3867 0038 6369     		ldr	r3, [r4, #20]
 3868 003a 2546     		mov	r5, r4
 3869 003c 9942     		cmp	r1, r3
 3870 003e C0F0ED80 		bcc	.L850
 3871 0042 0022     		movs	r2, #0
 3872 0044 02E0     		b	.L853
 3873              	.L854:
 3874 0046 6B69     		ldr	r3, [r5, #20]
 3875 0048 9942     		cmp	r1, r3
 3876 004a 08D3     		bcc	.L852
ARM GAS  /tmp/cc7dtM4H.s 			page 69


 3877              	.L853:
 3878 004c 6B79     		ldrb	r3, [r5, #5]	@ zero_extendqisi2
 3879 004e 2D68     		ldr	r5, [r5]
 3880 0050 07EB8303 		add	r3, r7, r3, lsl #2
 3881 0054 D3F84C32 		ldr	r3, [r3, #588]
 3882 0058 1A43     		orrs	r2, r2, r3
 3883 005a 002D     		cmp	r5, #0
 3884 005c F3D1     		bne	.L854
 3885              	.L852:
 3886 005e D7F8A432 		ldr	r3, [r7, #676]
 3887 0062 1A42     		tst	r2, r3
 3888 0064 00F0C680 		beq	.L904
 3889 0068 7C4B     		ldr	r3, .L910+12
 3890 006a D7F898C2 		ldr	ip, [r7, #664]
 3891 006e D3F800E0 		ldr	lr, [r3]
 3892 0072 D7F89C82 		ldr	r8, [r7, #668]
 3893 0076 7848     		ldr	r0, .L910+8
 3894              	.L857:
 3895 0078 0369     		ldr	r3, [r0, #16]
 3896 007a A3EB0901 		sub	r1, r3, r9
 3897 007e 6145     		cmp	r1, ip
 3898 0080 A3EB0E03 		sub	r3, r3, lr
 3899 0084 F8D3     		bcc	.L857
 3900 0086 4345     		cmp	r3, r8
 3901 0088 F6D3     		bcc	.L857
 3902 008a 7549     		ldr	r1, .L910+16
 3903 008c DFF8DCE1 		ldr	lr, .L910+28
 3904 0090 8A63     		str	r2, [r1, #56]
 3905 0092 5308     		lsrs	r3, r2, #1
 3906 0094 CEF83820 		str	r2, [lr, #56]
 3907 0098 C1F83826 		str	r2, [r1, #1592]
 3908 009c 714A     		ldr	r2, .L910+20
 3909 009e 9363     		str	r3, [r2, #56]
 3910 00a0 0069     		ldr	r0, [r0, #16]
 3911 00a2 D7F89412 		ldr	r1, [r7, #660]
 3912 00a6 6C4A     		ldr	r2, .L910+8
 3913              	.L859:
 3914 00a8 1369     		ldr	r3, [r2, #16]
 3915 00aa 1B1A     		subs	r3, r3, r0
 3916 00ac 8B42     		cmp	r3, r1
 3917 00ae FBD3     		bcc	.L859
 3918 00b0 0023     		movs	r3, #0
 3919 00b2 6D48     		ldr	r0, .L910+24
 3920 00b4 6D49     		ldr	r1, .L910+28
 3921 00b6 8363     		str	r3, [r0, #56]
 3922 00b8 A0F50070 		sub	r0, r0, #512
 3923 00bc 8363     		str	r3, [r0, #56]
 3924 00be A1F50071 		sub	r1, r1, #512
 3925 00c2 C1F83832 		str	r3, [r1, #568]
 3926 00c6 8B63     		str	r3, [r1, #56]
 3927 00c8 D2F81090 		ldr	r9, [r2, #16]
 3928 00cc 614B     		ldr	r3, .L910+4
 3929 00ce C3F80090 		str	r9, [r3]
 3930              	.L856:
 3931 00d2 AC42     		cmp	r4, r5
 3932 00d4 C6F8CC50 		str	r5, [r6, #204]
 3933 00d8 42D0     		beq	.L860
ARM GAS  /tmp/cc7dtM4H.s 			page 70


 3934 00da 4FF00008 		mov	r8, #0
 3935 00de 06F1CC0B 		add	fp, r6, #204
 3936 00e2 0197     		str	r7, [sp, #4]
 3937 00e4 0DE0     		b	.L862
 3938              	.L907:
 3939 00e6 6379     		ldrb	r3, [r4, #5]	@ zero_extendqisi2
 3940 00e8 022B     		cmp	r3, #2
 3941 00ea 0DD8     		bhi	.L863
 3942 00ec E368     		ldr	r3, [r4, #12]
 3943 00ee A268     		ldr	r2, [r4, #8]
 3944 00f0 0133     		adds	r3, r3, #1
 3945 00f2 9342     		cmp	r3, r2
 3946 00f4 E360     		str	r3, [r4, #12]
 3947 00f6 6AD9     		bls	.L905
 3948              	.L869:
 3949 00f8 84F80480 		strb	r8, [r4, #4]
 3950 00fc 2468     		ldr	r4, [r4]
 3951              	.L868:
 3952 00fe A542     		cmp	r5, r4
 3953 0100 2BD0     		beq	.L906
 3954              	.L862:
 3955 0102 B37A     		ldrb	r3, [r6, #10]	@ zero_extendqisi2
 3956 0104 9B07     		lsls	r3, r3, #30
 3957 0106 EED4     		bmi	.L907
 3958              	.L863:
 3959 0108 E368     		ldr	r3, [r4, #12]
 3960 010a A268     		ldr	r2, [r4, #8]
 3961 010c 0133     		adds	r3, r3, #1
 3962 010e 9342     		cmp	r3, r2
 3963 0110 E360     		str	r3, [r4, #12]
 3964 0112 F1D8     		bhi	.L869
 3965 0114 E379     		ldrb	r3, [r4, #7]	@ zero_extendqisi2
 3966 0116 002B     		cmp	r3, #0
 3967 0118 66D0     		beq	.L870
 3968              	.L901:
 3969 011a 6269     		ldr	r2, [r4, #20]
 3970 011c A169     		ldr	r1, [r4, #24]
 3971 011e 013B     		subs	r3, r3, #1
 3972 0120 0A44     		add	r2, r2, r1
 3973 0122 6261     		str	r2, [r4, #20]
 3974 0124 2268     		ldr	r2, [r4]
 3975 0126 E371     		strb	r3, [r4, #7]
 3976              	.L866:
 3977 0128 D6F8CC30 		ldr	r3, [r6, #204]
 3978 012c 5946     		mov	r1, fp
 3979 012e 7BB1     		cbz	r3, .L871
 3980 0130 6069     		ldr	r0, [r4, #20]
 3981 0132 5F69     		ldr	r7, [r3, #20]
 3982 0134 B842     		cmp	r0, r7
 3983 0136 0BD9     		bls	.L871
 3984 0138 9646     		mov	lr, r2
 3985 013a 019F     		ldr	r7, [sp, #4]
 3986 013c 02E0     		b	.L873
 3987              	.L874:
 3988 013e 5A69     		ldr	r2, [r3, #20]
 3989 0140 8242     		cmp	r2, r0
 3990 0142 03D2     		bcs	.L899
ARM GAS  /tmp/cc7dtM4H.s 			page 71


 3991              	.L873:
 3992 0144 1946     		mov	r1, r3
 3993 0146 1B68     		ldr	r3, [r3]
 3994 0148 002B     		cmp	r3, #0
 3995 014a F8D1     		bne	.L874
 3996              	.L899:
 3997 014c 7246     		mov	r2, lr
 3998 014e 0197     		str	r7, [sp, #4]
 3999              	.L871:
 4000 0150 2360     		str	r3, [r4]
 4001 0152 0C60     		str	r4, [r1]
 4002 0154 1446     		mov	r4, r2
 4003 0156 A542     		cmp	r5, r4
 4004 0158 D3D1     		bne	.L862
 4005              	.L906:
 4006 015a 019F     		ldr	r7, [sp, #4]
 4007 015c D6F8CC50 		ldr	r5, [r6, #204]
 4008              	.L860:
 4009 0160 0023     		movs	r3, #0
 4010 0162 4149     		ldr	r1, .L910+24
 4011 0164 414A     		ldr	r2, .L910+28
 4012 0166 8B63     		str	r3, [r1, #56]
 4013 0168 A1F50071 		sub	r1, r1, #512
 4014 016c 8B63     		str	r3, [r1, #56]
 4015 016e A2F50072 		sub	r2, r2, #512
 4016 0172 C2F83832 		str	r3, [r2, #568]
 4017 0176 9363     		str	r3, [r2, #56]
 4018 0178 002D     		cmp	r5, #0
 4019 017a 52D0     		beq	.L908
 4020 017c 364B     		ldr	r3, .L910+8
 4021 017e 6869     		ldr	r0, [r5, #20]
 4022 0180 1B69     		ldr	r3, [r3, #16]
 4023 0182 D6F8B810 		ldr	r1, [r6, #184]
 4024 0186 A3EB0A03 		sub	r3, r3, r10
 4025 018a 9BB2     		uxth	r3, r3
 4026 018c 272B     		cmp	r3, #39
 4027 018e 0844     		add	r0, r0, r1
 4028 0190 10D9     		bls	.L876
 4029 0192 A0EB0A02 		sub	r2, r0, r10
 4030 0196 1C1D     		adds	r4, r3, #4
 4031 0198 A242     		cmp	r2, r4
 4032 019a 0BD2     		bcs	.L876
 4033 019c 0AF10402 		add	r2, r10, #4
 4034 01a0 334C     		ldr	r4, .L910+32
 4035 01a2 1344     		add	r3, r3, r2
 4036 01a4 1A1A     		subs	r2, r3, r0
 4037 01a6 1846     		mov	r0, r3
 4038 01a8 2368     		ldr	r3, [r4]
 4039 01aa 1144     		add	r1, r1, r2
 4040 01ac 0133     		adds	r3, r3, #1
 4041 01ae C6F8B810 		str	r1, [r6, #184]
 4042 01b2 2360     		str	r3, [r4]
 4043              	.L876:
 4044 01b4 FFF7FEFF 		bl	_ZN8Platform21ScheduleStepInterruptEm
 4045 01b8 0546     		mov	r5, r0
 4046 01ba 0028     		cmp	r0, #0
 4047 01bc 7FF42AAF 		bne	.L877
ARM GAS  /tmp/cc7dtM4H.s 			page 72


 4048              	.L849:
 4049 01c0 337A     		ldrb	r3, [r6, #8]	@ zero_extendqisi2
 4050 01c2 042B     		cmp	r3, #4
 4051 01c4 32D0     		beq	.L909
 4052              	.L888:
 4053 01c6 0020     		movs	r0, #0
 4054 01c8 03B0     		add	sp, sp, #12
 4055              		@ sp needed
 4056 01ca BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4057              	.L905:
 4058 01ce E379     		ldrb	r3, [r4, #7]	@ zero_extendqisi2
 4059 01d0 002B     		cmp	r3, #0
 4060 01d2 A2D1     		bne	.L901
 4061 01d4 0122     		movs	r2, #1
 4062 01d6 3146     		mov	r1, r6
 4063 01d8 2046     		mov	r0, r4
 4064 01da FFF7FEFF 		bl	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb
 4065              	.L867:
 4066 01de 2268     		ldr	r2, [r4]
 4067 01e0 0028     		cmp	r0, #0
 4068 01e2 A1D1     		bne	.L866
 4069 01e4 1446     		mov	r4, r2
 4070 01e6 8AE7     		b	.L868
 4071              	.L870:
 4072 01e8 0122     		movs	r2, #1
 4073 01ea 3146     		mov	r1, r6
 4074 01ec 2046     		mov	r0, r4
 4075 01ee FFF7FEFF 		bl	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb
 4076 01f2 F4E7     		b	.L867
 4077              	.L904:
 4078 01f4 5308     		lsrs	r3, r2, #1
 4079              	.L880:
 4080 01f6 1D49     		ldr	r1, .L910+28
 4081 01f8 1948     		ldr	r0, .L910+16
 4082 01fa 8263     		str	r2, [r0, #56]
 4083 01fc 8A63     		str	r2, [r1, #56]
 4084 01fe C1F83824 		str	r2, [r1, #1080]
 4085 0202 184A     		ldr	r2, .L910+20
 4086 0204 9363     		str	r3, [r2, #56]
 4087 0206 64E7     		b	.L856
 4088              	.L845:
 4089 0208 3946     		mov	r1, r7
 4090 020a 3046     		mov	r0, r6
 4091 020c FFF7FEFF 		bl	_ZN3DDA13CheckEndstopsER8Platform
 4092 0210 337A     		ldrb	r3, [r6, #8]	@ zero_extendqisi2
 4093 0212 042B     		cmp	r3, #4
 4094 0214 7FF402AF 		bne	.L848
 4095 0218 D2E7     		b	.L849
 4096              	.L903:
 4097 021a 2546     		mov	r5, r4
 4098              	.L850:
 4099 021c 0023     		movs	r3, #0
 4100 021e 1A46     		mov	r2, r3
 4101 0220 E9E7     		b	.L880
 4102              	.L908:
 4103 0222 0423     		movs	r3, #4
 4104 0224 3372     		strb	r3, [r6, #8]
ARM GAS  /tmp/cc7dtM4H.s 			page 73


 4105 0226 337A     		ldrb	r3, [r6, #8]	@ zero_extendqisi2
 4106 0228 042B     		cmp	r3, #4
 4107 022a CCD1     		bne	.L888
 4108              	.L909:
 4109 022c 084B     		ldr	r3, .L910
 4110 022e D6F8B840 		ldr	r4, [r6, #184]
 4111 0232 9D68     		ldr	r5, [r3, #8]
 4112 0234 D6F8B430 		ldr	r3, [r6, #180]
 4113 0238 2846     		mov	r0, r5
 4114 023a 1C44     		add	r4, r4, r3
 4115 023c FFF7FEFF 		bl	_ZN4Move20CurrentMoveCompletedEv
 4116 0240 2146     		mov	r1, r4
 4117 0242 2846     		mov	r0, r5
 4118 0244 03B0     		add	sp, sp, #12
 4119              		@ sp needed
 4120 0246 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4121 024a FFF7FEBF 		b	_ZN4Move16TryStartNextMoveEm
 4122              	.L911:
 4123 024e 00BF     		.align	2
 4124              	.L910:
 4125 0250 00000000 		.word	reprap
 4126 0254 00000000 		.word	.LANCHOR0
 4127 0258 00400840 		.word	1074282496
 4128 025c 00000000 		.word	.LANCHOR1
 4129 0260 000E0E40 		.word	1074662912
 4130 0264 00120E40 		.word	1074663936
 4131 0268 00140E40 		.word	1074664448
 4132 026c 00100E40 		.word	1074663424
 4133 0270 00000000 		.word	.LANCHOR2
 4134              		.size	_ZN3DDA4StepEv, .-_ZN3DDA4StepEv
 4135              		.section	.text._ZNK3DDA12HasStepErrorEv,"ax",%progbits
 4136              		.align	1
 4137              		.p2align 2,,3
 4138              		.global	_ZNK3DDA12HasStepErrorEv
 4139              		.syntax unified
 4140              		.thumb
 4141              		.thumb_func
 4142              		.fpu softvfp
 4143              		.type	_ZNK3DDA12HasStepErrorEv, %function
 4144              	_ZNK3DDA12HasStepErrorEv:
 4145              		@ args = 0, pretend = 0, frame = 0
 4146              		@ frame_needed = 0, uses_anonymous_args = 0
 4147              		@ link register save eliminated.
 4148 0000 00F1CC03 		add	r3, r0, #204
 4149 0004 F030     		adds	r0, r0, #240
 4150              	.L915:
 4151 0006 53F8042F 		ldr	r2, [r3, #4]!
 4152 000a 12B1     		cbz	r2, .L913
 4153 000c 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 4154 000e 022A     		cmp	r2, #2
 4155 0010 03D0     		beq	.L916
 4156              	.L913:
 4157 0012 8342     		cmp	r3, r0
 4158 0014 F7D1     		bne	.L915
 4159 0016 0020     		movs	r0, #0
 4160 0018 7047     		bx	lr
 4161              	.L916:
ARM GAS  /tmp/cc7dtM4H.s 			page 74


 4162 001a 0120     		movs	r0, #1
 4163 001c 7047     		bx	lr
 4164              		.size	_ZNK3DDA12HasStepErrorEv, .-_ZNK3DDA12HasStepErrorEv
 4165 001e 00BF     		.section	.text._ZN3DDA4FreeEv,"ax",%progbits
 4166              		.align	1
 4167              		.p2align 2,,3
 4168              		.global	_ZN3DDA4FreeEv
 4169              		.syntax unified
 4170              		.thumb
 4171              		.thumb_func
 4172              		.fpu softvfp
 4173              		.type	_ZN3DDA4FreeEv, %function
 4174              	_ZN3DDA4FreeEv:
 4175              		@ args = 0, pretend = 0, frame = 0
 4176              		@ frame_needed = 0, uses_anonymous_args = 0
 4177 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 4178 0002 0026     		movs	r6, #0
 4179 0004 8646     		mov	lr, r0
 4180 0006 3046     		mov	r0, r6
 4181 0008 DFF840C0 		ldr	ip, .L934+4
 4182 000c 0E4C     		ldr	r4, .L934
 4183 000e DCF80010 		ldr	r1, [ip]
 4184 0012 0EF1F407 		add	r7, lr, #244
 4185 0016 0EF1D003 		add	r3, lr, #208
 4186              	.L923:
 4187 001a 1A68     		ldr	r2, [r3]
 4188 001c 2AB1     		cbz	r2, .L922
 4189 001e 0126     		movs	r6, #1
 4190 0020 2568     		ldr	r5, [r4]
 4191 0022 3144     		add	r1, r1, r6
 4192 0024 1560     		str	r5, [r2]
 4193 0026 2260     		str	r2, [r4]
 4194 0028 1860     		str	r0, [r3]
 4195              	.L922:
 4196 002a 0433     		adds	r3, r3, #4
 4197 002c 9F42     		cmp	r7, r3
 4198 002e F4D1     		bne	.L923
 4199 0030 3EB9     		cbnz	r6, .L933
 4200              	.L924:
 4201 0032 0023     		movs	r3, #0
 4202 0034 9EF80A00 		ldrb	r0, [lr, #10]	@ zero_extendqisi2
 4203 0038 8EF80830 		strb	r3, [lr, #8]
 4204 003c C0F34010 		ubfx	r0, r0, #5, #1
 4205 0040 F0BD     		pop	{r4, r5, r6, r7, pc}
 4206              	.L933:
 4207 0042 CCF80010 		str	r1, [ip]
 4208 0046 F4E7     		b	.L924
 4209              	.L935:
 4210              		.align	2
 4211              	.L934:
 4212 0048 00000000 		.word	_ZN13DriveMovement8freeListE
 4213 004c 00000000 		.word	_ZN13DriveMovement7numFreeE
 4214              		.size	_ZN3DDA4FreeEv, .-_ZN3DDA4FreeEv
 4215              		.section	.text._ZNK3DDA13GetStepsTakenEj,"ax",%progbits
 4216              		.align	1
 4217              		.p2align 2,,3
 4218              		.global	_ZNK3DDA13GetStepsTakenEj
ARM GAS  /tmp/cc7dtM4H.s 			page 75


 4219              		.syntax unified
 4220              		.thumb
 4221              		.thumb_func
 4222              		.fpu softvfp
 4223              		.type	_ZNK3DDA13GetStepsTakenEj, %function
 4224              	_ZNK3DDA13GetStepsTakenEj:
 4225              		@ args = 0, pretend = 0, frame = 0
 4226              		@ frame_needed = 0, uses_anonymous_args = 0
 4227              		@ link register save eliminated.
 4228 0000 3431     		adds	r1, r1, #52
 4229 0002 50F82130 		ldr	r3, [r0, r1, lsl #2]
 4230 0006 ABB1     		cbz	r3, .L941
 4231 0008 D868     		ldr	r0, [r3, #12]
 4232 000a 1A69     		ldr	r2, [r3, #16]
 4233 000c 9042     		cmp	r0, r2
 4234 000e 0AD3     		bcc	.L938
 4235 0010 9968     		ldr	r1, [r3, #8]
 4236 0012 8A42     		cmp	r2, r1
 4237 0014 07D8     		bhi	.L938
 4238 0016 A0EB4200 		sub	r0, r0, r2, lsl #1
 4239 001a 0130     		adds	r0, r0, #1
 4240              	.L940:
 4241 001c 9B79     		ldrb	r3, [r3, #6]	@ zero_extendqisi2
 4242 001e DB06     		lsls	r3, r3, #27
 4243 0020 07D4     		bmi	.L936
 4244              	.L943:
 4245 0022 4042     		negs	r0, r0
 4246 0024 7047     		bx	lr
 4247              	.L938:
 4248 0026 0028     		cmp	r0, #0
 4249 0028 F8D0     		beq	.L940
 4250 002a 9B79     		ldrb	r3, [r3, #6]	@ zero_extendqisi2
 4251 002c 0138     		subs	r0, r0, #1
 4252 002e DB06     		lsls	r3, r3, #27
 4253 0030 F7D5     		bpl	.L943
 4254              	.L936:
 4255 0032 7047     		bx	lr
 4256              	.L941:
 4257 0034 1846     		mov	r0, r3
 4258 0036 7047     		bx	lr
 4259              		.size	_ZNK3DDA13GetStepsTakenEj, .-_ZNK3DDA13GetStepsTakenEj
 4260              		.section	.text._ZNK3DDA25IsNonPrintingExtruderMoveEj,"ax",%progbits
 4261              		.align	1
 4262              		.p2align 2,,3
 4263              		.global	_ZNK3DDA25IsNonPrintingExtruderMoveEj
 4264              		.syntax unified
 4265              		.thumb
 4266              		.thumb_func
 4267              		.fpu softvfp
 4268              		.type	_ZNK3DDA25IsNonPrintingExtruderMoveEj, %function
 4269              	_ZNK3DDA25IsNonPrintingExtruderMoveEj:
 4270              		@ args = 0, pretend = 0, frame = 0
 4271              		@ frame_needed = 0, uses_anonymous_args = 0
 4272              		@ link register save eliminated.
 4273 0000 837A     		ldrb	r3, [r0, #10]	@ zero_extendqisi2
 4274 0002 1B07     		lsls	r3, r3, #28
 4275 0004 06D4     		bmi	.L946
ARM GAS  /tmp/cc7dtM4H.s 			page 76


 4276 0006 3431     		adds	r1, r1, #52
 4277 0008 50F82100 		ldr	r0, [r0, r1, lsl #2]
 4278 000c 0030     		adds	r0, r0, #0
 4279 000e 18BF     		it	ne
 4280 0010 0120     		movne	r0, #1
 4281 0012 7047     		bx	lr
 4282              	.L946:
 4283 0014 0020     		movs	r0, #0
 4284 0016 7047     		bx	lr
 4285              		.size	_ZNK3DDA25IsNonPrintingExtruderMoveEj, .-_ZNK3DDA25IsNonPrintingExtruderMoveEj
 4286              		.section	.text._ZN3DDA25LimitSpeedAndAccelerationEff,"ax",%progbits
 4287              		.align	1
 4288              		.p2align 2,,3
 4289              		.global	_ZN3DDA25LimitSpeedAndAccelerationEff
 4290              		.syntax unified
 4291              		.thumb
 4292              		.thumb_func
 4293              		.fpu softvfp
 4294              		.type	_ZN3DDA25LimitSpeedAndAccelerationEff, %function
 4295              	_ZN3DDA25LimitSpeedAndAccelerationEff:
 4296              		@ args = 0, pretend = 0, frame = 0
 4297              		@ frame_needed = 0, uses_anonymous_args = 0
 4298 0000 70B5     		push	{r4, r5, r6, lr}
 4299 0002 0446     		mov	r4, r0
 4300 0004 D0F89000 		ldr	r0, [r0, #144]	@ float
 4301 0008 1546     		mov	r5, r2
 4302 000a 0E46     		mov	r6, r1
 4303 000c FFF7FEFF 		bl	__aeabi_fcmpgt
 4304 0010 08B1     		cbz	r0, .L948
 4305 0012 C4F89060 		str	r6, [r4, #144]	@ float
 4306              	.L948:
 4307 0016 2946     		mov	r1, r5
 4308 0018 D4F88C00 		ldr	r0, [r4, #140]	@ float
 4309 001c FFF7FEFF 		bl	__aeabi_fcmpgt
 4310 0020 08B1     		cbz	r0, .L947
 4311 0022 C4F88C50 		str	r5, [r4, #140]	@ float
 4312              	.L947:
 4313 0026 70BD     		pop	{r4, r5, r6, pc}
 4314              		.size	_ZN3DDA25LimitSpeedAndAccelerationEff, .-_ZN3DDA25LimitSpeedAndAccelerationEff
 4315              		.global	_ZN3DDA17lastDirChangeTimeE
 4316              		.global	_ZN3DDA15lastStepLowTimeE
 4317              		.global	_ZN3DDA10numHiccupsE
 4318              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 4319              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 4320              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 4321              	_ZL28cpu_irq_prev_interrupt_state:
 4322 0000 00       		.space	1
 4323              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 4324              		.align	2
 4325              		.type	_ZL32cpu_irq_critical_section_counter, %object
 4326              		.size	_ZL32cpu_irq_critical_section_counter, 4
 4327              	_ZL32cpu_irq_critical_section_counter:
 4328 0000 00000000 		.space	4
 4329              		.section	.bss._ZN3DDA10numHiccupsE,"aw",%nobits
 4330              		.align	2
 4331              		.set	.LANCHOR2,. + 0
 4332              		.type	_ZN3DDA10numHiccupsE, %object
ARM GAS  /tmp/cc7dtM4H.s 			page 77


 4333              		.size	_ZN3DDA10numHiccupsE, 4
 4334              	_ZN3DDA10numHiccupsE:
 4335 0000 00000000 		.space	4
 4336              		.section	.bss._ZN3DDA15lastStepLowTimeE,"aw",%nobits
 4337              		.align	2
 4338              		.set	.LANCHOR0,. + 0
 4339              		.type	_ZN3DDA15lastStepLowTimeE, %object
 4340              		.size	_ZN3DDA15lastStepLowTimeE, 4
 4341              	_ZN3DDA15lastStepLowTimeE:
 4342 0000 00000000 		.space	4
 4343              		.section	.bss._ZN3DDA17lastDirChangeTimeE,"aw",%nobits
 4344              		.align	2
 4345              		.set	.LANCHOR1,. + 0
 4346              		.type	_ZN3DDA17lastDirChangeTimeE, %object
 4347              		.size	_ZN3DDA17lastDirChangeTimeE, 4
 4348              	_ZN3DDA17lastDirChangeTimeE:
 4349 0000 00000000 		.space	4
 4350              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 4351              		.align	2
 4352              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 4353              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 4354              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 4355 0000 00000000 		.space	4
 4356              		.section	.rodata._ZN3DDA11DoLookaheadEPS_.str1.4,"aMS",%progbits,1
 4357              		.align	2
 4358              	.LC11:
 4359 0000 52656375 		.ascii	"Recursion start %u\012\000"
 4359      7273696F 
 4359      6E207374 
 4359      61727420 
 4359      25750A00 
 4360              		.section	.rodata._ZN3DDA11MatchSpeedsEv.str1.4,"aMS",%progbits,1
 4361              		.align	2
 4362              	.LC10:
 4363 0000 4444412E 		.ascii	"DDA.cpp(%d) tn=%.3f \000"
 4363      63707028 
 4363      25642920 
 4363      746E3D25 
 4363      2E336620 
 4364              		.section	.rodata._ZN3DDA15RecalculateMoveEv.str1.4,"aMS",%progbits,1
 4365              		.align	2
 4366              	.LC9:
 4367 0000 4444412E 		.ascii	"DDA.cpp(%d) na=%.3f\000"
 4367      63707028 
 4367      25642920 
 4367      6E613D25 
 4367      2E336600 
 4368              		.section	.rodata._ZNK3DDA10DebugPrintEv.str1.4,"aMS",%progbits,1
 4369              		.align	2
 4370              	.LC3:
 4371 0000 4444413A 		.ascii	"DDA:\000"
 4371      00
 4372 0005 000000   		.space	3
 4373              	.LC4:
 4374 0008 20737461 		.ascii	" start\000"
 4374      727400
 4375 000f 00       		.space	1
ARM GAS  /tmp/cc7dtM4H.s 			page 78


 4376              	.LC5:
 4377 0010 20656E64 		.ascii	" end\000"
 4377      00
 4378 0015 000000   		.space	3
 4379              	.LC6:
 4380 0018 20643D25 		.ascii	" d=%f\000"
 4380      6600
 4381 001e 0000     		.space	2
 4382              	.LC7:
 4383 0020 20766563 		.ascii	" vec\000"
 4383      00
 4384 0025 000000   		.space	3
 4385              	.LC8:
 4386 0028 0A613D25 		.ascii	"\012a=%f reqv=%f startv=%f topv=%f endv=%f daccel=%"
 4386      66207265 
 4386      71763D25 
 4386      66207374 
 4386      61727476 
 4387 0058 66206464 		.ascii	"f ddecel=%f\012cks=%lu sstcda=%lu tstcdapdsc=%lu ex"
 4387      6563656C 
 4387      3D25660A 
 4387      636B733D 
 4387      256C7520 
 4388 0088 61633D25 		.ascii	"ac=%li\012\000"
 4388      6C690A00 
 4389              		.section	.rodata._ZNK3DDA16DebugPrintVectorEPKcPKfj.str1.4,"aMS",%progbits,1
 4390              		.align	2
 4391              	.LC0:
 4392 0000 25733D00 		.ascii	"%s=\000"
 4393              	.LC1:
 4394 0004 5D00     		.ascii	"]\000"
 4395 0006 0000     		.space	2
 4396              	.LC2:
 4397 0008 25632566 		.ascii	"%c%f\000"
 4397      00
 4398              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
