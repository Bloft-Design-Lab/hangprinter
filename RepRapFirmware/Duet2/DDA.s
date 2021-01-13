ARM GAS  /tmp/cc9m8tIQ.s 			page 1


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
  13              		.file	"DDA.cpp"
  14              		.section	.text._ZNK10Kinematics24IsContinuousRotationAxisEj,"axG",%progbits,_ZNK10Kinematics24IsCo
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZNK10Kinematics24IsContinuousRotationAxisEj
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK10Kinematics24IsContinuousRotationAxisEj, %function
  23              	_ZNK10Kinematics24IsContinuousRotationAxisEj:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0020     		movs	r0, #0
  28 0002 7047     		bx	lr
  29              		.size	_ZNK10Kinematics24IsContinuousRotationAxisEj, .-_ZNK10Kinematics24IsContinuousRotationAxisEj
  30              		.section	.text._ZN3DDA17ReduceHomingSpeedEv.part.10,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu fpv4-sp-d16
  37              		.type	_ZN3DDA17ReduceHomingSpeedEv.part.10, %function
  38              	_ZN3DDA17ReduceHomingSpeedEv.part.10:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41 0000 1C4B     		ldr	r3, .L13
  42 0002 D0ED327A 		vldr.32	s15, [r0, #200]
  43 0006 D3F89020 		ldr	r2, [r3, #144]
  44 000a 9FED1B7A 		vldr.32	s14, .L13+4
  45 000e D0F8E830 		ldr	r3, [r0, #232]
  46 0012 70B5     		push	{r4, r5, r6, lr}
  47 0014 0546     		mov	r5, r0
  48 0016 D0F8DC40 		ldr	r4, [r0, #220]
  49 001a D5F8D810 		ldr	r1, [r5, #216]
  50 001e 807A     		ldrb	r0, [r0, #10]	@ zero_extendqisi2
  51 0020 121B     		subs	r2, r2, r4
  52 0022 67EE877A 		vmul.f32	s15, s15, s14
  53 0026 03EB4303 		add	r3, r3, r3, lsl #1
  54 002a 40F08000 		orr	r0, r0, #128
  55 002e A3EB4203 		sub	r3, r3, r2, lsl #1
  56 0032 8A42     		cmp	r2, r1
  57 0034 A872     		strb	r0, [r5, #10]
ARM GAS  /tmp/cc9m8tIQ.s 			page 2


  58 0036 C5ED327A 		vstr.32	s15, [r5, #200]
  59 003a C5F8E830 		str	r3, [r5, #232]
  60 003e 04D2     		bcs	.L4
  61 0040 8A1A     		subs	r2, r1, r2
  62 0042 01EB4202 		add	r2, r1, r2, lsl #1
  63 0046 C5F8D820 		str	r2, [r5, #216]
  64              	.L4:
  65 004a 05F1F404 		add	r4, r5, #244
  66 004e 05F59276 		add	r6, r5, #292
  67 0052 01E0     		b	.L6
  68              	.L5:
  69 0054 B442     		cmp	r4, r6
  70 0056 0CD0     		beq	.L12
  71              	.L6:
  72 0058 54F8040F 		ldr	r0, [r4, #4]!
  73 005c 0028     		cmp	r0, #0
  74 005e F9D0     		beq	.L5
  75 0060 0379     		ldrb	r3, [r0, #4]	@ zero_extendqisi2
  76 0062 012B     		cmp	r3, #1
  77 0064 F6D1     		bne	.L5
  78 0066 0322     		movs	r2, #3
  79 0068 2946     		mov	r1, r5
  80 006a FFF7FEFF 		bl	_ZN13DriveMovement11ReduceSpeedERK3DDAm
  81 006e B442     		cmp	r4, r6
  82 0070 F2D1     		bne	.L6
  83              	.L12:
  84 0072 70BD     		pop	{r4, r5, r6, pc}
  85              	.L14:
  86              		.align	2
  87              	.L13:
  88 0074 00000940 		.word	1074331648
  89 0078 ABAAAA3E 		.word	1051372203
  90              		.size	_ZN3DDA17ReduceHomingSpeedEv.part.10, .-_ZN3DDA17ReduceHomingSpeedEv.part.10
  91              		.section	.text._ZN3DDA10PrintMovesEv,"ax",%progbits
  92              		.align	1
  93              		.p2align 2,,3
  94              		.global	_ZN3DDA10PrintMovesEv
  95              		.syntax unified
  96              		.thumb
  97              		.thumb_func
  98              		.fpu fpv4-sp-d16
  99              		.type	_ZN3DDA10PrintMovesEv, %function
 100              	_ZN3DDA10PrintMovesEv:
 101              		@ args = 0, pretend = 0, frame = 0
 102              		@ frame_needed = 0, uses_anonymous_args = 0
 103              		@ link register save eliminated.
 104 0000 7047     		bx	lr
 105              		.size	_ZN3DDA10PrintMovesEv, .-_ZN3DDA10PrintMovesEv
 106 0002 00BF     		.section	.text._ZN3DDAC2EPS_,"ax",%progbits
 107              		.align	1
 108              		.p2align 2,,3
 109              		.global	_ZN3DDAC2EPS_
 110              		.syntax unified
 111              		.thumb
 112              		.thumb_func
 113              		.fpu fpv4-sp-d16
 114              		.type	_ZN3DDAC2EPS_, %function
ARM GAS  /tmp/cc9m8tIQ.s 			page 3


 115              	_ZN3DDAC2EPS_:
 116              		@ args = 0, pretend = 0, frame = 0
 117              		@ frame_needed = 0, uses_anonymous_args = 0
 118              		@ link register save eliminated.
 119 0000 0022     		movs	r2, #0
 120 0002 C0E90012 		strd	r1, r2, [r0]
 121 0006 0272     		strb	r2, [r0, #8]
 122 0008 00F1F803 		add	r3, r0, #248
 123 000c 00F59471 		add	r1, r0, #296
 124              	.L17:
 125 0010 43F8042B 		str	r2, [r3], #4
 126 0014 9942     		cmp	r1, r3
 127 0016 FBD1     		bne	.L17
 128 0018 7047     		bx	lr
 129              		.size	_ZN3DDAC2EPS_, .-_ZN3DDAC2EPS_
 130              		.global	_ZN3DDAC1EPS_
 131              		.thumb_set _ZN3DDAC1EPS_,_ZN3DDAC2EPS_
 132 001a 00BF     		.section	.text._ZN3DDA10ReleaseDMsEv,"ax",%progbits
 133              		.align	1
 134              		.p2align 2,,3
 135              		.global	_ZN3DDA10ReleaseDMsEv
 136              		.syntax unified
 137              		.thumb
 138              		.thumb_func
 139              		.fpu fpv4-sp-d16
 140              		.type	_ZN3DDA10ReleaseDMsEv, %function
 141              	_ZN3DDA10ReleaseDMsEv:
 142              		@ args = 0, pretend = 0, frame = 0
 143              		@ frame_needed = 0, uses_anonymous_args = 0
 144              		@ link register save eliminated.
 145 0000 F0B4     		push	{r4, r5, r6, r7}
 146 0002 0C4F     		ldr	r7, .L32
 147 0004 0C4C     		ldr	r4, .L32+4
 148 0006 3968     		ldr	r1, [r7]
 149 0008 0025     		movs	r5, #0
 150 000a 00F1F403 		add	r3, r0, #244
 151 000e 2E46     		mov	r6, r5
 152 0010 00F59270 		add	r0, r0, #292
 153              	.L21:
 154 0014 53F8042F 		ldr	r2, [r3, #4]!
 155 0018 2AB1     		cbz	r2, .L20
 156 001a 2568     		ldr	r5, [r4]
 157 001c 1560     		str	r5, [r2]
 158 001e 0131     		adds	r1, r1, #1
 159 0020 2260     		str	r2, [r4]
 160 0022 0125     		movs	r5, #1
 161 0024 1E60     		str	r6, [r3]
 162              	.L20:
 163 0026 8342     		cmp	r3, r0
 164 0028 F4D1     		bne	.L21
 165 002a 0DB9     		cbnz	r5, .L31
 166              	.L19:
 167 002c F0BC     		pop	{r4, r5, r6, r7}
 168 002e 7047     		bx	lr
 169              	.L31:
 170 0030 3960     		str	r1, [r7]
 171 0032 FBE7     		b	.L19
ARM GAS  /tmp/cc9m8tIQ.s 			page 4


 172              	.L33:
 173              		.align	2
 174              	.L32:
 175 0034 00000000 		.word	_ZN13DriveMovement7numFreeE
 176 0038 00000000 		.word	_ZN13DriveMovement8freeListE
 177              		.size	_ZN3DDA10ReleaseDMsEv, .-_ZN3DDA10ReleaseDMsEv
 178              		.section	.text._ZNK3DDA11GetTimeLeftEv,"ax",%progbits
 179              		.align	1
 180              		.p2align 2,,3
 181              		.global	_ZNK3DDA11GetTimeLeftEv
 182              		.syntax unified
 183              		.thumb
 184              		.thumb_func
 185              		.fpu fpv4-sp-d16
 186              		.type	_ZNK3DDA11GetTimeLeftEv, %function
 187              	_ZNK3DDA11GetTimeLeftEv:
 188              		@ args = 0, pretend = 0, frame = 0
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 190              		@ link register save eliminated.
 191 0000 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 192 0002 042B     		cmp	r3, #4
 193 0004 0ED0     		beq	.L37
 194 0006 027A     		ldrb	r2, [r0, #8]	@ zero_extendqisi2
 195 0008 D0F8D830 		ldr	r3, [r0, #216]
 196 000c 032A     		cmp	r2, #3
 197 000e 01D0     		beq	.L38
 198 0010 1846     		mov	r0, r3
 199 0012 7047     		bx	lr
 200              	.L38:
 201 0014 044A     		ldr	r2, .L39
 202 0016 D0F8DC00 		ldr	r0, [r0, #220]
 203 001a D2F89020 		ldr	r2, [r2, #144]
 204 001e 1844     		add	r0, r0, r3
 205 0020 801A     		subs	r0, r0, r2
 206 0022 7047     		bx	lr
 207              	.L37:
 208 0024 0020     		movs	r0, #0
 209 0026 7047     		bx	lr
 210              	.L40:
 211              		.align	2
 212              	.L39:
 213 0028 00000940 		.word	1074331648
 214              		.size	_ZNK3DDA11GetTimeLeftEv, .-_ZNK3DDA11GetTimeLeftEv
 215              		.section	.text._ZN3DDA8RemoveDMEj,"ax",%progbits
 216              		.align	1
 217              		.p2align 2,,3
 218              		.global	_ZN3DDA8RemoveDMEj
 219              		.syntax unified
 220              		.thumb
 221              		.thumb_func
 222              		.fpu fpv4-sp-d16
 223              		.type	_ZN3DDA8RemoveDMEj, %function
 224              	_ZN3DDA8RemoveDMEj:
 225              		@ args = 0, pretend = 0, frame = 0
 226              		@ frame_needed = 0, uses_anonymous_args = 0
 227              		@ link register save eliminated.
 228 0000 D0F8F420 		ldr	r2, [r0, #244]
ARM GAS  /tmp/cc9m8tIQ.s 			page 5


 229 0004 52B1     		cbz	r2, .L41
 230 0006 5379     		ldrb	r3, [r2, #5]	@ zero_extendqisi2
 231 0008 9942     		cmp	r1, r3
 232 000a 04D1     		bne	.L44
 233 000c 0BE0     		b	.L51
 234              	.L46:
 235 000e 5879     		ldrb	r0, [r3, #5]	@ zero_extendqisi2
 236 0010 8842     		cmp	r0, r1
 237 0012 04D0     		beq	.L52
 238 0014 1A46     		mov	r2, r3
 239              	.L44:
 240 0016 1368     		ldr	r3, [r2]
 241 0018 002B     		cmp	r3, #0
 242 001a F8D1     		bne	.L46
 243              	.L41:
 244 001c 7047     		bx	lr
 245              	.L52:
 246 001e 1046     		mov	r0, r2
 247              	.L45:
 248 0020 1B68     		ldr	r3, [r3]
 249 0022 0360     		str	r3, [r0]
 250 0024 7047     		bx	lr
 251              	.L51:
 252 0026 F430     		adds	r0, r0, #244
 253 0028 1346     		mov	r3, r2
 254 002a F9E7     		b	.L45
 255              		.size	_ZN3DDA8RemoveDMEj, .-_ZN3DDA8RemoveDMEj
 256              		.global	__aeabi_f2d
 257              		.section	.text._ZNK3DDA16DebugPrintVectorEPKcPKfj,"ax",%progbits
 258              		.align	1
 259              		.p2align 2,,3
 260              		.global	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 261              		.syntax unified
 262              		.thumb
 263              		.thumb_func
 264              		.fpu fpv4-sp-d16
 265              		.type	_ZNK3DDA16DebugPrintVectorEPKcPKfj, %function
 266              	_ZNK3DDA16DebugPrintVectorEPKcPKfj:
 267              		@ args = 0, pretend = 0, frame = 0
 268              		@ frame_needed = 0, uses_anonymous_args = 0
 269 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 270 0004 0E48     		ldr	r0, .L61
 271 0006 1F46     		mov	r7, r3
 272 0008 1546     		mov	r5, r2
 273 000a FFF7FEFF 		bl	debugPrintf
 274 000e 97B1     		cbz	r7, .L54
 275 0010 DFF83480 		ldr	r8, .L61+8
 276 0014 0024     		movs	r4, #0
 277 0016 5B26     		movs	r6, #91
 278              	.L55:
 279 0018 55F8040B 		ldr	r0, [r5], #4	@ float
 280 001c FFF7FEFF 		bl	__aeabi_f2d
 281 0020 0134     		adds	r4, r4, #1
 282 0022 0246     		mov	r2, r0
 283 0024 0B46     		mov	r3, r1
 284 0026 4046     		mov	r0, r8
 285 0028 3146     		mov	r1, r6
ARM GAS  /tmp/cc9m8tIQ.s 			page 6


 286 002a FFF7FEFF 		bl	debugPrintf
 287 002e A742     		cmp	r7, r4
 288 0030 4FF02006 		mov	r6, #32
 289 0034 F0D1     		bne	.L55
 290              	.L54:
 291 0036 0348     		ldr	r0, .L61+4
 292 0038 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 293 003c FFF7FEBF 		b	debugPrintf
 294              	.L62:
 295              		.align	2
 296              	.L61:
 297 0040 00000000 		.word	.LC0
 298 0044 0C000000 		.word	.LC2
 299 0048 04000000 		.word	.LC1
 300              		.size	_ZNK3DDA16DebugPrintVectorEPKcPKfj, .-_ZNK3DDA16DebugPrintVectorEPKcPKfj
 301              		.section	.text._ZNK3DDA10DebugPrintEv,"ax",%progbits
 302              		.align	1
 303              		.p2align 2,,3
 304              		.global	_ZNK3DDA10DebugPrintEv
 305              		.syntax unified
 306              		.thumb
 307              		.thumb_func
 308              		.fpu fpv4-sp-d16
 309              		.type	_ZNK3DDA10DebugPrintEv, %function
 310              	_ZNK3DDA10DebugPrintEv:
 311              		@ args = 0, pretend = 0, frame = 40
 312              		@ frame_needed = 0, uses_anonymous_args = 0
 313 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 314 0004 424B     		ldr	r3, .L77
 315 0006 0446     		mov	r4, r0
 316 0008 1B69     		ldr	r3, [r3, #16]	@ unaligned
 317 000a 4248     		ldr	r0, .L77+4
 318 000c D3F89862 		ldr	r6, [r3, #664]
 319 0010 9AB0     		sub	sp, sp, #104
 320 0012 FFF7FEFF 		bl	debugPrintf
 321 0016 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 322 0018 DB07     		lsls	r3, r3, #31
 323 001a 70D5     		bpl	.L75
 324 001c 002E     		cmp	r6, #0
 325 001e 71D0     		beq	.L76
 326 0020 D4ED2B6A 		vldr.32	s13, [r4, #172]
 327 0024 04F14C08 		add	r8, r4, #76
 328 0028 11AA     		add	r2, sp, #68
 329 002a 04F17C07 		add	r7, r4, #124
 330 002e 04EB8605 		add	r5, r4, r6, lsl #2
 331 0032 F1EE666A 		vneg.f32	s13, s13
 332 0036 4346     		mov	r3, r8
 333 0038 1046     		mov	r0, r2
 334 003a 3946     		mov	r1, r7
 335 003c 4C35     		adds	r5, r5, #76
 336              	.L66:
 337 003e F3EC017A 		vldmia.32	r3!, {s15}
 338 0042 B1EC017A 		vldmia.32	r1!, {s14}
 339 0046 E6EE877A 		vfma.f32	s15, s13, s14
 340 004a AB42     		cmp	r3, r5
 341 004c E0EC017A 		vstmia.32	r0!, {s15}
 342 0050 F5D1     		bne	.L66
ARM GAS  /tmp/cc9m8tIQ.s 			page 7


 343              	.L65:
 344 0052 3346     		mov	r3, r6
 345 0054 3049     		ldr	r1, .L77+8
 346 0056 2046     		mov	r0, r4
 347 0058 FFF7FEFF 		bl	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 348 005c 3346     		mov	r3, r6
 349 005e 4246     		mov	r2, r8
 350 0060 2E49     		ldr	r1, .L77+12
 351 0062 2046     		mov	r0, r4
 352 0064 FFF7FEFF 		bl	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 353              	.L64:
 354 0068 D4F8AC00 		ldr	r0, [r4, #172]	@ float
 355 006c FFF7FEFF 		bl	__aeabi_f2d
 356 0070 0246     		mov	r2, r0
 357 0072 0B46     		mov	r3, r1
 358 0074 2A48     		ldr	r0, .L77+16
 359 0076 FFF7FEFF 		bl	debugPrintf
 360 007a 3A46     		mov	r2, r7
 361 007c 0523     		movs	r3, #5
 362 007e 2046     		mov	r0, r4
 363 0080 2849     		ldr	r1, .L77+20
 364 0082 FFF7FEFF 		bl	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 365 0086 D4F8B000 		ldr	r0, [r4, #176]	@ float
 366 008a FFF7FEFF 		bl	__aeabi_f2d
 367 008e 0F46     		mov	r7, r1
 368 0090 D4E93913 		ldrd	r1, r3, [r4, #228]
 369 0094 D4F8E020 		ldr	r2, [r4, #224]
 370 0098 0F93     		str	r3, [sp, #60]
 371 009a D4F8D830 		ldr	r3, [r4, #216]
 372 009e 0E91     		str	r1, [sp, #56]
 373 00a0 0646     		mov	r6, r0
 374 00a2 D4F8D000 		ldr	r0, [r4, #208]	@ float
 375 00a6 CDE90C32 		strd	r3, r2, [sp, #48]
 376 00aa FFF7FEFF 		bl	__aeabi_f2d
 377 00ae CDE90A01 		strd	r0, [sp, #40]
 378 00b2 D4F8CC00 		ldr	r0, [r4, #204]	@ float
 379 00b6 FFF7FEFF 		bl	__aeabi_f2d
 380 00ba CDE90801 		strd	r0, [sp, #32]
 381 00be D4F8C400 		ldr	r0, [r4, #196]	@ float
 382 00c2 FFF7FEFF 		bl	__aeabi_f2d
 383 00c6 CDE90601 		strd	r0, [sp, #24]
 384 00ca D4F8C800 		ldr	r0, [r4, #200]	@ float
 385 00ce FFF7FEFF 		bl	__aeabi_f2d
 386 00d2 CDE90401 		strd	r0, [sp, #16]
 387 00d6 D4F8C000 		ldr	r0, [r4, #192]	@ float
 388 00da FFF7FEFF 		bl	__aeabi_f2d
 389 00de CDE90201 		strd	r0, [sp, #8]
 390 00e2 D4F8B400 		ldr	r0, [r4, #180]	@ float
 391 00e6 FFF7FEFF 		bl	__aeabi_f2d
 392 00ea 3246     		mov	r2, r6
 393 00ec CDE90001 		strd	r0, [sp]
 394 00f0 3B46     		mov	r3, r7
 395 00f2 0D48     		ldr	r0, .L77+24
 396 00f4 FFF7FEFF 		bl	debugPrintf
 397 00f8 1AB0     		add	sp, sp, #104
 398              		@ sp needed
 399 00fa BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  /tmp/cc9m8tIQ.s 			page 8


 400              	.L75:
 401 00fe 04F17C07 		add	r7, r4, #124
 402 0102 B1E7     		b	.L64
 403              	.L76:
 404 0104 04F14C08 		add	r8, r4, #76
 405 0108 11AA     		add	r2, sp, #68
 406 010a 04F17C07 		add	r7, r4, #124
 407 010e A0E7     		b	.L65
 408              	.L78:
 409              		.align	2
 410              	.L77:
 411 0110 00000000 		.word	reprap
 412 0114 00000000 		.word	.LC3
 413 0118 08000000 		.word	.LC4
 414 011c 10000000 		.word	.LC5
 415 0120 18000000 		.word	.LC6
 416 0124 20000000 		.word	.LC7
 417 0128 28000000 		.word	.LC8
 418              		.size	_ZNK3DDA10DebugPrintEv, .-_ZNK3DDA10DebugPrintEv
 419              		.section	.text._ZNK3DDA13DebugPrintAllEv,"ax",%progbits
 420              		.align	1
 421              		.p2align 2,,3
 422              		.global	_ZNK3DDA13DebugPrintAllEv
 423              		.syntax unified
 424              		.thumb
 425              		.thumb_func
 426              		.fpu fpv4-sp-d16
 427              		.type	_ZNK3DDA13DebugPrintAllEv, %function
 428              	_ZNK3DDA13DebugPrintAllEv:
 429              		@ args = 0, pretend = 0, frame = 0
 430              		@ frame_needed = 0, uses_anonymous_args = 0
 431 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 432 0004 DFF87480 		ldr	r8, .L103
 433 0008 0646     		mov	r6, r0
 434 000a FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
 435 000e D8F81030 		ldr	r3, [r8, #16]
 436 0012 D3F89842 		ldr	r4, [r3, #664]
 437 0016 ACB1     		cbz	r4, .L80
 438 0018 06F1F407 		add	r7, r6, #244
 439 001c 0025     		movs	r5, #0
 440              	.L85:
 441 001e 57F8043F 		ldr	r3, [r7, #4]!
 442 0022 1846     		mov	r0, r3
 443 0024 4BB1     		cbz	r3, .L83
 444 0026 D8F81030 		ldr	r3, [r8, #16]
 445 002a B27A     		ldrb	r2, [r6, #10]	@ zero_extendqisi2
 446 002c 2B44     		add	r3, r3, r5
 447 002e C2F34002 		ubfx	r2, r2, #1, #1
 448 0032 93F85A14 		ldrb	r1, [r3, #1114]	@ zero_extendqisi2
 449 0036 FFF7FEFF 		bl	_ZNK13DriveMovement10DebugPrintEcb
 450              	.L83:
 451 003a 0135     		adds	r5, r5, #1
 452 003c AC42     		cmp	r4, r5
 453 003e EED1     		bne	.L85
 454 0040 0B2C     		cmp	r4, #11
 455 0042 18D8     		bhi	.L79
 456              	.L80:
ARM GAS  /tmp/cc9m8tIQ.s 			page 9


 457 0044 04F13E05 		add	r5, r4, #62
 458 0048 06EB8505 		add	r5, r6, r5, lsl #2
 459 004c C4F13006 		rsb	r6, r4, #48
 460 0050 02E0     		b	.L87
 461              	.L86:
 462 0052 0134     		adds	r4, r4, #1
 463 0054 0C2C     		cmp	r4, #12
 464 0056 0ED0     		beq	.L79
 465              	.L87:
 466 0058 55F8040B 		ldr	r0, [r5], #4
 467 005c 0028     		cmp	r0, #0
 468 005e F8D0     		beq	.L86
 469 0060 0379     		ldrb	r3, [r0, #4]	@ zero_extendqisi2
 470 0062 002B     		cmp	r3, #0
 471 0064 F5D0     		beq	.L86
 472 0066 3119     		adds	r1, r6, r4
 473 0068 C9B2     		uxtb	r1, r1
 474 006a 0022     		movs	r2, #0
 475 006c 0134     		adds	r4, r4, #1
 476 006e FFF7FEFF 		bl	_ZNK13DriveMovement10DebugPrintEcb
 477 0072 0C2C     		cmp	r4, #12
 478 0074 F0D1     		bne	.L87
 479              	.L79:
 480 0076 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 481              	.L104:
 482 007a 00BF     		.align	2
 483              	.L103:
 484 007c 00000000 		.word	reprap
 485              		.size	_ZNK3DDA13DebugPrintAllEv, .-_ZNK3DDA13DebugPrintAllEv
 486              		.section	.text._ZN3DDA4InitEv,"ax",%progbits
 487              		.align	1
 488              		.p2align 2,,3
 489              		.global	_ZN3DDA4InitEv
 490              		.syntax unified
 491              		.thumb
 492              		.thumb_func
 493              		.fpu fpv4-sp-d16
 494              		.type	_ZN3DDA4InitEv, %function
 495              	_ZN3DDA4InitEv:
 496              		@ args = 0, pretend = 0, frame = 0
 497              		@ frame_needed = 0, uses_anonymous_args = 0
 498              		@ link register save eliminated.
 499 0000 10B4     		push	{r4}
 500 0002 00F11C03 		add	r3, r0, #28
 501 0006 00F14C01 		add	r1, r0, #76
 502 000a 0022     		movs	r2, #0
 503              	.L106:
 504 000c 43F8042B 		str	r2, [r3], #4
 505 0010 9942     		cmp	r1, r3
 506 0012 FBD1     		bne	.L106
 507 0014 837A     		ldrb	r3, [r0, #10]	@ zero_extendqisi2
 508 0016 0272     		strb	r2, [r0, #8]
 509 0018 0024     		movs	r4, #0
 510 001a 62F30003 		bfi	r3, r2, #0, #1
 511 001e 4FF0FF31 		mov	r1, #-1
 512 0022 C0F8B840 		str	r4, [r0, #184]	@ float
 513 0026 A0F8F020 		strh	r2, [r0, #240]	@ movhi
ARM GAS  /tmp/cc9m8tIQ.s 			page 10


 514 002a 8372     		strb	r3, [r0, #10]
 515 002c 8161     		str	r1, [r0, #24]
 516 002e 5DF8044B 		ldr	r4, [sp], #4
 517 0032 7047     		bx	lr
 518              		.size	_ZN3DDA4InitEv, .-_ZN3DDA4InitEv
 519              		.section	.text._ZNK3DDA15IsGoodToPrepareEv,"ax",%progbits
 520              		.align	1
 521              		.p2align 2,,3
 522              		.global	_ZNK3DDA15IsGoodToPrepareEv
 523              		.syntax unified
 524              		.thumb
 525              		.thumb_func
 526              		.fpu fpv4-sp-d16
 527              		.type	_ZNK3DDA15IsGoodToPrepareEv, %function
 528              	_ZNK3DDA15IsGoodToPrepareEv:
 529              		@ args = 0, pretend = 0, frame = 0
 530              		@ frame_needed = 0, uses_anonymous_args = 0
 531              		@ link register save eliminated.
 532 0000 90ED317A 		vldr.32	s14, [r0, #196]
 533 0004 D0ED327A 		vldr.32	s15, [r0, #200]
 534 0008 B4EEE77A 		vcmpe.f32	s14, s15
 535 000c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 536 0010 ACBF     		ite	ge
 537 0012 0120     		movge	r0, #1
 538 0014 0020     		movlt	r0, #0
 539 0016 7047     		bx	lr
 540              		.size	_ZNK3DDA15IsGoodToPrepareEv, .-_ZNK3DDA15IsGoodToPrepareEv
 541              		.section	.text.hot._ZN3DDA15RecalculateMoveEv,"ax",%progbits
 542              		.align	1
 543              		.p2align 2,,3
 544              		.global	_ZN3DDA15RecalculateMoveEv
 545              		.syntax unified
 546              		.thumb
 547              		.thumb_func
 548              		.fpu fpv4-sp-d16
 549              		.type	_ZN3DDA15RecalculateMoveEv, %function
 550              	_ZN3DDA15RecalculateMoveEv:
 551              		@ args = 0, pretend = 0, frame = 0
 552              		@ frame_needed = 0, uses_anonymous_args = 0
 553 0000 10B5     		push	{r4, lr}
 554 0002 D0ED307A 		vldr.32	s15, [r0, #192]
 555 0006 90ED316A 		vldr.32	s12, [r0, #196]
 556 000a D0ED2C5A 		vldr.32	s11, [r0, #176]
 557 000e 90ED2B7A 		vldr.32	s14, [r0, #172]
 558 0012 67EEA76A 		vmul.f32	s13, s15, s15
 559 0016 26EE065A 		vmul.f32	s10, s12, s12
 560 001a 2DED028B 		vpush.64	{d8}
 561 001e 90ED2D8A 		vldr.32	s16, [r0, #180]
 562 0022 B0EE664A 		vmov.f32	s8, s13
 563 0026 F0EE454A 		vmov.f32	s9, s10
 564 002a 98EE084A 		vfnms.f32	s8, s16, s16
 565 002e 0446     		mov	r4, r0
 566 0030 D8EE084A 		vfnms.f32	s9, s16, s16
 567 0034 25EE870A 		vmul.f32	s0, s11, s14
 568 0038 34EE242A 		vadd.f32	s4, s8, s9
 569 003c 70EE002A 		vadd.f32	s5, s0, s0
 570 0040 B4EEE22A 		vcmpe.f32	s4, s5
ARM GAS  /tmp/cc9m8tIQ.s 			page 11


 571 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 572 0048 66DB     		blt	.L142
 573 004a 36EE854A 		vadd.f32	s8, s13, s10
 574 004e F6EE004A 		vmov.f32	s9, #5.0e-1
 575 0052 A4EE240A 		vfma.f32	s0, s8, s9
 576 0056 F0EE673A 		vmov.f32	s7, s15
 577 005a B4EEE60A 		vcmpe.f32	s0, s13
 578 005e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 579 0062 B0EE463A 		vmov.f32	s6, s12
 580 0066 00F39380 		bgt	.L147
 581              	.L113:
 582 006a F4EEC33A 		vcmpe.f32	s7, s6
 583 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 584 0072 77EE077A 		vadd.f32	s15, s14, s14
 585 0076 40F1AA80 		bpl	.L143
 586 007a 75EE666A 		vsub.f32	s13, s10, s13
 587 007e 0023     		movs	r3, #0
 588 0080 86EEA78A 		vdiv.f32	s16, s13, s15
 589 0084 C4F8D030 		str	r3, [r4, #208]	@ float
 590 0088 84ED337A 		vstr.32	s14, [r4, #204]
 591 008c 84ED323A 		vstr.32	s6, [r4, #200]
 592              	.L120:
 593 0090 DFED657A 		vldr.32	s15, .L150
 594 0094 65EEA75A 		vmul.f32	s11, s11, s15
 595 0098 F4EEC85A 		vcmpe.f32	s11, s16
 596 009c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 597 00a0 0ED5     		bpl	.L122
 598 00a2 624A     		ldr	r2, .L150+4
 599 00a4 9168     		ldr	r1, [r2, #8]
 600 00a6 CB69     		ldr	r3, [r1, #28]
 601 00a8 0133     		adds	r3, r3, #1
 602 00aa CB61     		str	r3, [r1, #28]
 603 00ac 936C     		ldr	r3, [r2, #72]
 604 00ae DA06     		lsls	r2, r3, #27
 605 00b0 00F19980 		bmi	.L144
 606              	.L146:
 607 00b4 D4ED303A 		vldr.32	s7, [r4, #192]
 608 00b8 94ED313A 		vldr.32	s6, [r4, #196]
 609 00bc 94ED2B7A 		vldr.32	s14, [r4, #172]
 610              	.L122:
 611 00c0 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 612 00c2 D4ED336A 		vldr.32	s13, [r4, #204]
 613 00c6 84ED2C8A 		vstr.32	s16, [r4, #176]
 614 00ca 5B07     		lsls	r3, r3, #29
 615 00cc F0EE485A 		vmov.f32	s11, s16
 616 00d0 B0EE436A 		vmov.f32	s12, s6
 617 00d4 F0EE637A 		vmov.f32	s15, s7
 618 00d8 37EE667A 		vsub.f32	s14, s14, s13
 619 00dc 94ED328A 		vldr.32	s16, [r4, #200]
 620 00e0 94ED345A 		vldr.32	s10, [r4, #208]
 621 00e4 29D4     		bmi	.L148
 622              	.L124:
 623 00e6 F0EE006A 		vmov.f32	s13, #2.0e+0
 624 00ea D8EE267A 		vfnms.f32	s15, s16, s13
 625 00ee 37EE457A 		vsub.f32	s14, s14, s10
 626 00f2 77EEC67A 		vsub.f32	s15, s15, s12
 627 00f6 87EE086A 		vdiv.f32	s12, s14, s16
ARM GAS  /tmp/cc9m8tIQ.s 			page 12


 628 00fa BDEC028B 		vldm	sp!, {d8}
 629 00fe 87EEA57A 		vdiv.f32	s14, s15, s11
 630 0102 DFED4B6A 		vldr.32	s13, .L150+8
 631 0106 77EE067A 		vadd.f32	s15, s14, s12
 632 010a 67EEA67A 		vmul.f32	s15, s15, s13
 633 010e FCEEE77A 		vcvt.u32.f32	s15, s15
 634 0112 C4ED367A 		vstr.32	s15, [r4, #216]	@ int
 635 0116 10BD     		pop	{r4, pc}
 636              	.L142:
 637 0118 75EEA56A 		vadd.f32	s13, s11, s11
 638 011c 80ED328A 		vstr.32	s16, [r0, #200]
 639 0120 C4EE263A 		vdiv.f32	s7, s8, s13
 640 0124 84EEA65A 		vdiv.f32	s10, s9, s13
 641 0128 37EE637A 		vsub.f32	s14, s14, s7
 642 012c C0ED333A 		vstr.32	s7, [r0, #204]
 643 0130 80ED345A 		vstr.32	s10, [r0, #208]
 644              	.L117:
 645 0134 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 646 0136 5B07     		lsls	r3, r3, #29
 647 0138 D5D5     		bpl	.L124
 648              	.L148:
 649 013a B5EE406A 		vcmp.f32	s12, #0
 650 013e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 651 0142 D0D0     		beq	.L124
 652 0144 394B     		ldr	r3, .L150+4
 653 0146 1968     		ldr	r1, [r3]
 654 0148 04F59270 		add	r0, r4, #292
 655 014c 04F1F403 		add	r3, r4, #244
 656 0150 01F5EC71 		add	r1, r1, #472
 657 0154 03E0     		b	.L127
 658              	.L125:
 659 0156 9842     		cmp	r0, r3
 660 0158 01F10401 		add	r1, r1, #4
 661 015c C3D0     		beq	.L124
 662              	.L127:
 663 015e 53F8042F 		ldr	r2, [r3, #4]!
 664 0162 002A     		cmp	r2, #0
 665 0164 F7D0     		beq	.L125
 666 0166 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 667 0168 012A     		cmp	r2, #1
 668 016a F4D1     		bne	.L125
 669 016c 53ED1F6A 		vldr.32	s13, [r3, #-124]
 670 0170 D1ED004A 		vldr.32	s9, [r1]
 671 0174 F0EEE66A 		vabs.f32	s13, s13
 672 0178 66EE866A 		vmul.f32	s13, s13, s12
 673 017c F4EEE46A 		vcmpe.f32	s13, s9
 674 0180 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 675 0184 E7DD     		ble	.L125
 676 0186 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 677 0188 6FF38203 		bfc	r3, #2, #1
 678 018c A372     		strb	r3, [r4, #10]
 679 018e AAE7     		b	.L124
 680              	.L147:
 681 0190 B4EEC50A 		vcmpe.f32	s0, s10
 682 0194 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 683 0198 7FF767AF 		ble	.L113
 684 019c 35EEA55A 		vadd.f32	s10, s11, s11
ARM GAS  /tmp/cc9m8tIQ.s 			page 13


 685 01a0 70EE666A 		vsub.f32	s13, s0, s13
 686 01a4 B5EE400A 		vcmp.f32	s0, #0
 687 01a8 C6EE854A 		vdiv.f32	s9, s13, s10
 688 01ac F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 689 01b0 37EE647A 		vsub.f32	s14, s14, s9
 690 01b4 B1EEC08A 		vsqrt.f32	s16, s0
 691 01b8 C0ED334A 		vstr.32	s9, [r0, #204]
 692 01bc 80ED347A 		vstr.32	s14, [r0, #208]
 693 01c0 58BF     		it	pl
 694 01c2 B0EE475A 		vmovpl.f32	s10, s14
 695 01c6 1DD4     		bmi	.L149
 696              	.L116:
 697 01c8 84ED328A 		vstr.32	s16, [r4, #200]
 698 01cc B2E7     		b	.L117
 699              	.L143:
 700 01ce 76EEC56A 		vsub.f32	s13, s13, s10
 701 01d2 0023     		movs	r3, #0
 702 01d4 84ED347A 		vstr.32	s14, [r4, #208]
 703 01d8 86EEA78A 		vdiv.f32	s16, s13, s15
 704 01dc C4F8CC30 		str	r3, [r4, #204]	@ float
 705 01e0 C4ED323A 		vstr.32	s7, [r4, #200]
 706 01e4 54E7     		b	.L120
 707              	.L144:
 708 01e6 18EE100A 		vmov	r0, s16
 709 01ea FFF7FEFF 		bl	__aeabi_f2d
 710 01ee 0246     		mov	r2, r0
 711 01f0 0B46     		mov	r3, r1
 712 01f2 1048     		ldr	r0, .L150+12
 713 01f4 4FF45C71 		mov	r1, #880
 714 01f8 FFF7FEFF 		bl	debugPrintf
 715 01fc 2046     		mov	r0, r4
 716 01fe FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
 717 0202 57E7     		b	.L146
 718              	.L149:
 719 0204 FFF7FEFF 		bl	sqrtf
 720 0208 D4ED2B6A 		vldr.32	s13, [r4, #172]
 721 020c 94ED337A 		vldr.32	s14, [r4, #204]
 722 0210 94ED316A 		vldr.32	s12, [r4, #196]
 723 0214 D4ED307A 		vldr.32	s15, [r4, #192]
 724 0218 D4ED2C5A 		vldr.32	s11, [r4, #176]
 725 021c 94ED345A 		vldr.32	s10, [r4, #208]
 726 0220 36EEC77A 		vsub.f32	s14, s13, s14
 727 0224 D0E7     		b	.L116
 728              	.L151:
 729 0226 00BF     		.align	2
 730              	.L150:
 731 0228 5C8F823F 		.word	1065520988
 732 022c 00000000 		.word	reprap
 733 0230 C0E16449 		.word	1231348160
 734 0234 00000000 		.word	.LC9
 735              		.size	_ZN3DDA15RecalculateMoveEv, .-_ZN3DDA15RecalculateMoveEv
 736              		.section	.text.hot._ZN3DDA11MatchSpeedsEv,"ax",%progbits
 737              		.align	1
 738              		.p2align 2,,3
 739              		.global	_ZN3DDA11MatchSpeedsEv
 740              		.syntax unified
 741              		.thumb
ARM GAS  /tmp/cc9m8tIQ.s 			page 14


 742              		.thumb_func
 743              		.fpu fpv4-sp-d16
 744              		.type	_ZN3DDA11MatchSpeedsEv, %function
 745              	_ZN3DDA11MatchSpeedsEv:
 746              		@ args = 0, pretend = 0, frame = 0
 747              		@ frame_needed = 0, uses_anonymous_args = 0
 748 0000 D0ED315A 		vldr.32	s11, [r0, #196]
 749 0004 D0ED357A 		vldr.32	s15, [r0, #212]
 750 0008 F4EEE57A 		vcmpe.f32	s15, s11
 751 000c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 752 0010 70B5     		push	{r4, r5, r6, lr}
 753 0012 0446     		mov	r4, r0
 754 0014 08D5     		bpl	.L181
 755 0016 314A     		ldr	r2, .L185
 756 0018 9168     		ldr	r1, [r2, #8]
 757 001a CB69     		ldr	r3, [r1, #28]
 758 001c 0133     		adds	r3, r3, #1
 759 001e CB61     		str	r3, [r1, #28]
 760 0020 936C     		ldr	r3, [r2, #72]
 761 0022 DA06     		lsls	r2, r3, #27
 762 0024 49D4     		bmi	.L184
 763              	.L152:
 764 0026 70BD     		pop	{r4, r5, r6, pc}
 765              	.L181:
 766 0028 2C4E     		ldr	r6, .L185
 767 002a 0268     		ldr	r2, [r0]
 768 002c 3068     		ldr	r0, [r6]
 769 002e F832     		adds	r2, r2, #248
 770 0030 00F5EC70 		add	r0, r0, #472
 771 0034 04F1F403 		add	r3, r4, #244
 772 0038 04F59275 		add	r5, r4, #292
 773 003c 0AE0     		b	.L161
 774              	.L156:
 775 003e 1168     		ldr	r1, [r2]
 776 0040 11B1     		cbz	r1, .L158
 777 0042 0979     		ldrb	r1, [r1, #4]	@ zero_extendqisi2
 778 0044 0129     		cmp	r1, #1
 779 0046 0CD0     		beq	.L157
 780              	.L158:
 781 0048 AB42     		cmp	r3, r5
 782 004a 00F10400 		add	r0, r0, #4
 783 004e 02F10402 		add	r2, r2, #4
 784 0052 E8D0     		beq	.L152
 785              	.L161:
 786 0054 53F8041F 		ldr	r1, [r3, #4]!
 787 0058 0029     		cmp	r1, #0
 788 005a F0D0     		beq	.L156
 789 005c 0979     		ldrb	r1, [r1, #4]	@ zero_extendqisi2
 790 005e 0129     		cmp	r1, #1
 791 0060 EDD1     		bne	.L156
 792              	.L157:
 793 0062 53ED1F7A 		vldr.32	s15, [r3, #-124]
 794 0066 12ED1F6A 		vldr.32	s12, [r2, #-124]
 795 006a 94ED357A 		vldr.32	s14, [r4, #212]
 796 006e D0ED006A 		vldr.32	s13, [r0]
 797 0072 77EEC67A 		vsub.f32	s15, s15, s12
 798 0076 F0EEE77A 		vabs.f32	s15, s15
ARM GAS  /tmp/cc9m8tIQ.s 			page 15


 799 007a 27EE877A 		vmul.f32	s14, s15, s14
 800 007e B4EEE67A 		vcmpe.f32	s14, s13
 801 0082 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 802 0086 DFDD     		ble	.L158
 803 0088 86EEA77A 		vdiv.f32	s14, s13, s15
 804 008c F4EEC75A 		vcmpe.f32	s11, s14
 805 0090 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 806 0094 84ED357A 		vstr.32	s14, [r4, #212]
 807 0098 D6DD     		ble	.L158
 808 009a B268     		ldr	r2, [r6, #8]
 809 009c D369     		ldr	r3, [r2, #28]
 810 009e 0133     		adds	r3, r3, #1
 811 00a0 D361     		str	r3, [r2, #28]
 812 00a2 B36C     		ldr	r3, [r6, #72]
 813 00a4 DB06     		lsls	r3, r3, #27
 814 00a6 BED5     		bpl	.L152
 815 00a8 D4F8D400 		ldr	r0, [r4, #212]	@ float
 816 00ac FFF7FEFF 		bl	__aeabi_f2d
 817 00b0 0B46     		mov	r3, r1
 818 00b2 0246     		mov	r2, r0
 819 00b4 40F2B331 		movw	r1, #947
 820 00b8 07E0     		b	.L183
 821              	.L184:
 822 00ba D0F8D400 		ldr	r0, [r0, #212]	@ float
 823 00be FFF7FEFF 		bl	__aeabi_f2d
 824 00c2 0B46     		mov	r3, r1
 825 00c4 0246     		mov	r2, r0
 826 00c6 4FF46771 		mov	r1, #924
 827              	.L183:
 828 00ca 0548     		ldr	r0, .L185+4
 829 00cc FFF7FEFF 		bl	debugPrintf
 830 00d0 2046     		mov	r0, r4
 831 00d2 BDE87040 		pop	{r4, r5, r6, lr}
 832 00d6 FFF7FEBF 		b	_ZNK3DDA10DebugPrintEv
 833              	.L186:
 834 00da 00BF     		.align	2
 835              	.L185:
 836 00dc 00000000 		.word	reprap
 837 00e0 00000000 		.word	.LC10
 838              		.size	_ZN3DDA11MatchSpeedsEv, .-_ZN3DDA11MatchSpeedsEv
 839              		.section	.text.hot._ZN3DDA11DoLookaheadEPS_,"ax",%progbits
 840              		.align	1
 841              		.p2align 2,,3
 842              		.global	_ZN3DDA11DoLookaheadEPS_
 843              		.syntax unified
 844              		.thumb
 845              		.thumb_func
 846              		.fpu fpv4-sp-d16
 847              		.type	_ZN3DDA11DoLookaheadEPS_, %function
 848              	_ZN3DDA11DoLookaheadEPS_:
 849              		@ args = 0, pretend = 0, frame = 0
 850              		@ frame_needed = 0, uses_anonymous_args = 0
 851 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 852 0002 90ED357A 		vldr.32	s14, [r0, #212]
 853 0006 754F     		ldr	r7, .L233
 854 0008 754E     		ldr	r6, .L233+4
 855 000a 2DED028B 		vpush.64	{d8}
ARM GAS  /tmp/cc9m8tIQ.s 			page 16


 856 000e 9FED758A 		vldr.32	s16, .L233+8
 857 0012 0446     		mov	r4, r0
 858 0014 0025     		movs	r5, #0
 859              	.L188:
 860 0016 D4ED2D7A 		vldr.32	s15, [r4, #180]
 861 001a D4ED326A 		vldr.32	s13, [r4, #200]
 862 001e F4EEC77A 		vcmpe.f32	s15, s14
 863 0022 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 864 0026 F4EEE67A 		vcmpe.f32	s15, s13
 865 002a 48BF     		it	mi
 866 002c C4ED357A 		vstrmi.32	s15, [r4, #212]
 867 0030 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 868 0034 32D9     		bls	.L201
 869 0036 94ED347A 		vldr.32	s14, [r4, #208]
 870 003a 94ED2B0A 		vldr.32	s0, [r4, #172]
 871 003e B4EE470A 		vcmp.f32	s0, s14
 872 0042 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 873 0046 61D0     		beq	.L194
 874 0048 F4EEE67A 		vcmpe.f32	s15, s13
 875 004c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 876 0050 0ADD     		ble	.L195
 877 0052 60EE087A 		vmul.f32	s15, s0, s16
 878 0056 F4EEC77A 		vcmpe.f32	s15, s14
 879 005a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 880 005e 03D5     		bpl	.L195
 881 0060 6368     		ldr	r3, [r4, #4]
 882 0062 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 883 0064 012A     		cmp	r2, #1
 884 0066 73D0     		beq	.L229
 885              	.L195:
 886 0068 D4ED2C7A 		vldr.32	s15, [r4, #176]
 887 006c 94ED307A 		vldr.32	s14, [r4, #192]
 888 0070 77EEA77A 		vadd.f32	s15, s15, s15
 889 0074 27EE800A 		vmul.f32	s0, s15, s0
 890 0078 A7EE070A 		vfma.f32	s0, s14, s14
 891 007c B5EE400A 		vcmp.f32	s0, #0
 892 0080 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 893 0084 B1EEC08A 		vsqrt.f32	s16, s0
 894 0088 5FD4     		bmi	.L228
 895              	.L204:
 896 008a D4ED357A 		vldr.32	s15, [r4, #212]
 897 008e F4EEC87A 		vcmpe.f32	s15, s16
 898 0092 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 899 0096 01DD     		ble	.L201
 900 0098 84ED358A 		vstr.32	s16, [r4, #212]
 901              	.L201:
 902 009c 2046     		mov	r0, r4
 903 009e FFF7FEFF 		bl	_ZN3DDA11MatchSpeedsEv
 904 00a2 D4ED357A 		vldr.32	s15, [r4, #212]
 905 00a6 2046     		mov	r0, r4
 906 00a8 C4ED317A 		vstr.32	s15, [r4, #196]
 907 00ac FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 908 00b0 4DB3     		cbz	r5, .L187
 909              	.L231:
 910 00b2 2468     		ldr	r4, [r4]
 911 00b4 D4ED2C7A 		vldr.32	s15, [r4, #176]
 912 00b8 94ED2B0A 		vldr.32	s0, [r4, #172]
ARM GAS  /tmp/cc9m8tIQ.s 			page 17


 913 00bc 6368     		ldr	r3, [r4, #4]
 914 00be 77EEA77A 		vadd.f32	s15, s15, s15
 915 00c2 93ED317A 		vldr.32	s14, [r3, #196]
 916 00c6 27EE800A 		vmul.f32	s0, s15, s0
 917 00ca 84ED307A 		vstr.32	s14, [r4, #192]
 918 00ce A7EE070A 		vfma.f32	s0, s14, s14
 919 00d2 B5EE400A 		vcmp.f32	s0, #0
 920 00d6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 921 00da B1EEC08A 		vsqrt.f32	s16, s0
 922 00de 76D4     		bmi	.L230
 923              	.L216:
 924 00e0 D4ED357A 		vldr.32	s15, [r4, #212]
 925 00e4 F4EEC87A 		vcmpe.f32	s15, s16
 926 00e8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 927 00ec 03DD     		ble	.L212
 928 00ee 84ED358A 		vstr.32	s16, [r4, #212]
 929 00f2 F0EE487A 		vmov.f32	s15, s16
 930              	.L212:
 931 00f6 013D     		subs	r5, r5, #1
 932 00f8 C4ED317A 		vstr.32	s15, [r4, #196]
 933 00fc 2046     		mov	r0, r4
 934 00fe FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 935 0102 002D     		cmp	r5, #0
 936 0104 D5D1     		bne	.L231
 937              	.L187:
 938 0106 BDEC028B 		vldm	sp!, {d8}
 939 010a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 940              	.L194:
 941 010c 6368     		ldr	r3, [r4, #4]
 942              	.L198:
 943 010e 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 944 0110 012A     		cmp	r2, #1
 945 0112 05D1     		bne	.L202
 946 0114 9B7A     		ldrb	r3, [r3, #10]	@ zero_extendqisi2
 947 0116 A27A     		ldrb	r2, [r4, #10]	@ zero_extendqisi2
 948 0118 5340     		eors	r3, r3, r2
 949 011a 13F0480F 		tst	r3, #72
 950 011e 1FD0     		beq	.L203
 951              	.L202:
 952 0120 94ED2C7A 		vldr.32	s14, [r4, #176]
 953 0124 D4ED307A 		vldr.32	s15, [r4, #192]
 954 0128 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 955 012a 37EE077A 		vadd.f32	s14, s14, s14
 956 012e 43F02003 		orr	r3, r3, #32
 957 0132 27EE000A 		vmul.f32	s0, s14, s0
 958 0136 A372     		strb	r3, [r4, #10]
 959 0138 A7EEA70A 		vfma.f32	s0, s15, s15
 960 013c B5EE400A 		vcmp.f32	s0, #0
 961 0140 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 962 0144 B1EEC08A 		vsqrt.f32	s16, s0
 963 0148 9FD5     		bpl	.L204
 964              	.L228:
 965 014a FFF7FEFF 		bl	sqrtf
 966 014e 9CE7     		b	.L204
 967              	.L229:
 968 0150 D3ED347A 		vldr.32	s15, [r3, #208]
 969 0154 F5EEC07A 		vcmpe.f32	s15, #0
ARM GAS  /tmp/cc9m8tIQ.s 			page 18


 970 0158 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 971 015c D7DC     		bgt	.L198
 972 015e 83E7     		b	.L195
 973              	.L203:
 974 0160 2046     		mov	r0, r4
 975 0162 FFF7FEFF 		bl	_ZN3DDA11MatchSpeedsEv
 976 0166 D4ED2C7A 		vldr.32	s15, [r4, #176]
 977 016a 94ED2B0A 		vldr.32	s0, [r4, #172]
 978 016e 94ED357A 		vldr.32	s14, [r4, #212]
 979 0172 77EEA77A 		vadd.f32	s15, s15, s15
 980 0176 27EE800A 		vmul.f32	s0, s15, s0
 981 017a A7EE070A 		vfma.f32	s0, s14, s14
 982 017e B5EE400A 		vcmp.f32	s0, #0
 983 0182 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 984 0186 F1EEC08A 		vsqrt.f32	s17, s0
 985 018a 23D4     		bmi	.L232
 986              	.L207:
 987 018c F4EE688A 		vcmp.f32	s17, s17
 988 0190 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 989 0194 94ED2D7A 		vldr.32	s14, [r4, #180]
 990 0198 6468     		ldr	r4, [r4, #4]
 991 019a 15D6     		bvs	.L218
 992 019c B4EE687A 		vcmp.f32	s14, s17
 993 01a0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 994 01a4 C8BF     		it	gt
 995 01a6 B0EE687A 		vmovgt.f32	s14, s17
 996              	.L208:
 997 01aa BB6C     		ldr	r3, [r7, #72]
 998 01ac 84ED357A 		vstr.32	s14, [r4, #212]
 999 01b0 5B06     		lsls	r3, r3, #25
 1000 01b2 05F10105 		add	r5, r5, #1
 1001 01b6 7FF52EAF 		bpl	.L188
 1002 01ba 2946     		mov	r1, r5
 1003 01bc 3046     		mov	r0, r6
 1004 01be FFF7FEFF 		bl	debugPrintf
 1005 01c2 94ED357A 		vldr.32	s14, [r4, #212]
 1006 01c6 26E7     		b	.L188
 1007              	.L218:
 1008 01c8 B0EE687A 		vmov.f32	s14, s17
 1009 01cc EDE7     		b	.L208
 1010              	.L230:
 1011 01ce FFF7FEFF 		bl	sqrtf
 1012 01d2 85E7     		b	.L216
 1013              	.L232:
 1014 01d4 FFF7FEFF 		bl	sqrtf
 1015 01d8 D8E7     		b	.L207
 1016              	.L234:
 1017 01da 00BF     		.align	2
 1018              	.L233:
 1019 01dc 00000000 		.word	reprap
 1020 01e0 00000000 		.word	.LC11
 1021 01e4 48E17A3F 		.word	1065017672
 1022              		.size	_ZN3DDA11DoLookaheadEPS_, .-_ZN3DDA11DoLookaheadEPS_
 1023              		.section	.text._ZN3DDA16FetchEndPositionEPVlPVf,"ax",%progbits
 1024              		.align	1
 1025              		.p2align 2,,3
 1026              		.global	_ZN3DDA16FetchEndPositionEPVlPVf
ARM GAS  /tmp/cc9m8tIQ.s 			page 19


 1027              		.syntax unified
 1028              		.thumb
 1029              		.thumb_func
 1030              		.fpu fpv4-sp-d16
 1031              		.type	_ZN3DDA16FetchEndPositionEPVlPVf, %function
 1032              	_ZN3DDA16FetchEndPositionEPVlPVf:
 1033              		@ args = 0, pretend = 0, frame = 0
 1034              		@ frame_needed = 0, uses_anonymous_args = 0
 1035              		@ link register save eliminated.
 1036 0000 F0B4     		push	{r4, r5, r6, r7}
 1037 0002 00F11803 		add	r3, r0, #24
 1038 0006 0646     		mov	r6, r0
 1039 0008 00F14805 		add	r5, r0, #72
 1040              	.L236:
 1041 000c 53F8044F 		ldr	r4, [r3, #4]!
 1042 0010 41F8044B 		str	r4, [r1], #4
 1043 0014 AB42     		cmp	r3, r5
 1044 0016 F9D1     		bne	.L236
 1045 0018 B07A     		ldrb	r0, [r6, #10]	@ zero_extendqisi2
 1046 001a 164F     		ldr	r7, .L251
 1047 001c 10F00100 		ands	r0, r0, #1
 1048 0020 3B69     		ldr	r3, [r7, #16]
 1049 0022 0FD0     		beq	.L237
 1050 0024 D3F89C52 		ldr	r5, [r3, #668]
 1051 0028 65B1     		cbz	r5, .L237
 1052 002a 06EB8505 		add	r5, r6, r5, lsl #2
 1053 002e 4C35     		adds	r5, r5, #76
 1054 0030 06F14C03 		add	r3, r6, #76
 1055 0034 1146     		mov	r1, r2
 1056              	.L238:
 1057 0036 53F8044B 		ldr	r4, [r3], #4	@ float
 1058 003a 41F8044B 		str	r4, [r1], #4	@ float
 1059 003e AB42     		cmp	r3, r5
 1060 0040 F9D1     		bne	.L238
 1061 0042 3B69     		ldr	r3, [r7, #16]
 1062              	.L237:
 1063 0044 D3F89812 		ldr	r1, [r3, #664]
 1064 0048 0B29     		cmp	r1, #11
 1065 004a 10D8     		bhi	.L239
 1066 004c 8900     		lsls	r1, r1, #2
 1067 004e 01F14C03 		add	r3, r1, #76
 1068 0052 0A44     		add	r2, r2, r1
 1069 0054 3344     		add	r3, r3, r6
 1070 0056 06F17C01 		add	r1, r6, #124
 1071              	.L240:
 1072 005a B3EC017A 		vldmia.32	r3!, {s14}
 1073 005e D2ED007A 		vldr.32	s15, [r2]
 1074 0062 77EE877A 		vadd.f32	s15, s15, s14
 1075 0066 8B42     		cmp	r3, r1
 1076 0068 E2EC017A 		vstmia.32	r2!, {s15}
 1077 006c F5D1     		bne	.L240
 1078              	.L239:
 1079 006e F0BC     		pop	{r4, r5, r6, r7}
 1080 0070 7047     		bx	lr
 1081              	.L252:
 1082 0072 00BF     		.align	2
 1083              	.L251:
ARM GAS  /tmp/cc9m8tIQ.s 			page 20


 1084 0074 00000000 		.word	reprap
 1085              		.size	_ZN3DDA16FetchEndPositionEPVlPVf, .-_ZN3DDA16FetchEndPositionEPVlPVf
 1086              		.section	.text._ZN3DDA12SetPositionsEPKfj,"ax",%progbits
 1087              		.align	1
 1088              		.p2align 2,,3
 1089              		.global	_ZN3DDA12SetPositionsEPKfj
 1090              		.syntax unified
 1091              		.thumb
 1092              		.thumb_func
 1093              		.fpu fpv4-sp-d16
 1094              		.type	_ZN3DDA12SetPositionsEPKfj, %function
 1095              	_ZN3DDA12SetPositionsEPKfj:
 1096              		@ args = 0, pretend = 0, frame = 0
 1097              		@ frame_needed = 0, uses_anonymous_args = 0
 1098 0000 70B5     		push	{r4, r5, r6, lr}
 1099 0002 0E4E     		ldr	r6, .L261
 1100 0004 0546     		mov	r5, r0
 1101 0006 1346     		mov	r3, r2
 1102 0008 B068     		ldr	r0, [r6, #8]
 1103 000a 05F11C02 		add	r2, r5, #28
 1104 000e 0C46     		mov	r4, r1
 1105 0010 FFF7FEFF 		bl	_ZNK4Move17EndPointToMachineEPKfPlj
 1106 0014 3369     		ldr	r3, [r6, #16]
 1107 0016 D3F89C02 		ldr	r0, [r3, #668]
 1108 001a 50B1     		cbz	r0, .L254
 1109 001c 2146     		mov	r1, r4
 1110 001e 04EB8000 		add	r0, r4, r0, lsl #2
 1111 0022 05F14C03 		add	r3, r5, #76
 1112              	.L255:
 1113 0026 51F8042B 		ldr	r2, [r1], #4	@ float
 1114 002a 43F8042B 		str	r2, [r3], #4	@ float
 1115 002e 8142     		cmp	r1, r0
 1116 0030 F9D1     		bne	.L255
 1117              	.L254:
 1118 0032 AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 1119 0034 43F00103 		orr	r3, r3, #1
 1120 0038 AB72     		strb	r3, [r5, #10]
 1121 003a 70BD     		pop	{r4, r5, r6, pc}
 1122              	.L262:
 1123              		.align	2
 1124              	.L261:
 1125 003c 00000000 		.word	reprap
 1126              		.size	_ZN3DDA12SetPositionsEPKfj, .-_ZN3DDA12SetPositionsEPKfj
 1127              		.section	.text._ZN3DDA16GetEndCoordinateEjb,"ax",%progbits
 1128              		.align	1
 1129              		.p2align 2,,3
 1130              		.global	_ZN3DDA16GetEndCoordinateEjb
 1131              		.syntax unified
 1132              		.thumb
 1133              		.thumb_func
 1134              		.fpu fpv4-sp-d16
 1135              		.type	_ZN3DDA16GetEndCoordinateEjb, %function
 1136              	_ZN3DDA16GetEndCoordinateEjb:
 1137              		@ args = 0, pretend = 0, frame = 0
 1138              		@ frame_needed = 0, uses_anonymous_args = 0
 1139 0000 30B5     		push	{r4, r5, lr}
 1140 0002 0D46     		mov	r5, r1
ARM GAS  /tmp/cc9m8tIQ.s 			page 21


 1141 0004 83B0     		sub	sp, sp, #12
 1142 0006 7AB9     		cbnz	r2, .L267
 1143 0008 1549     		ldr	r1, .L269
 1144 000a 0B69     		ldr	r3, [r1, #16]
 1145 000c D3F89C22 		ldr	r2, [r3, #668]
 1146 0010 9542     		cmp	r5, r2
 1147 0012 0446     		mov	r4, r0
 1148 0014 02D2     		bcs	.L265
 1149 0016 807A     		ldrb	r0, [r0, #10]	@ zero_extendqisi2
 1150 0018 C007     		lsls	r0, r0, #31
 1151 001a 0DD5     		bpl	.L268
 1152              	.L265:
 1153 001c 04EB8504 		add	r4, r4, r5, lsl #2
 1154 0020 94ED130A 		vldr.32	s0, [r4, #76]
 1155 0024 03B0     		add	sp, sp, #12
 1156              		@ sp needed
 1157 0026 30BD     		pop	{r4, r5, pc}
 1158              	.L267:
 1159 0028 00EB8104 		add	r4, r0, r1, lsl #2
 1160 002c E069     		ldr	r0, [r4, #28]
 1161 002e 03B0     		add	sp, sp, #12
 1162              		@ sp needed
 1163 0030 BDE83040 		pop	{r4, r5, lr}
 1164 0034 FFF7FEBF 		b	_ZN4Move23MotorEndpointToPositionElj
 1165              	.L268:
 1166 0038 8868     		ldr	r0, [r1, #8]
 1167 003a D3F89832 		ldr	r3, [r3, #664]
 1168 003e 04F14C01 		add	r1, r4, #76
 1169 0042 0091     		str	r1, [sp]
 1170 0044 04F11C01 		add	r1, r4, #28
 1171 0048 FFF7FEFF 		bl	_ZNK4Move21MotorStepsToCartesianEPKljjPf
 1172 004c A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 1173 004e 43F00103 		orr	r3, r3, #1
 1174 0052 A372     		strb	r3, [r4, #10]
 1175 0054 04EB8504 		add	r4, r4, r5, lsl #2
 1176 0058 94ED130A 		vldr.32	s0, [r4, #76]
 1177 005c 03B0     		add	sp, sp, #12
 1178              		@ sp needed
 1179 005e 30BD     		pop	{r4, r5, pc}
 1180              	.L270:
 1181              		.align	2
 1182              	.L269:
 1183 0060 00000000 		.word	reprap
 1184              		.size	_ZN3DDA16GetEndCoordinateEjb, .-_ZN3DDA16GetEndCoordinateEjb
 1185              		.section	.text.hot._ZN3DDA7PrepareEh,"ax",%progbits
 1186              		.align	1
 1187              		.p2align 2,,3
 1188              		.global	_ZN3DDA7PrepareEh
 1189              		.syntax unified
 1190              		.thumb
 1191              		.thumb_func
 1192              		.fpu fpv4-sp-d16
 1193              		.type	_ZN3DDA7PrepareEh, %function
 1194              	_ZN3DDA7PrepareEh:
 1195              		@ args = 0, pretend = 0, frame = 40
 1196              		@ frame_needed = 0, uses_anonymous_args = 0
 1197 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
ARM GAS  /tmp/cc9m8tIQ.s 			page 22


 1198 0004 D0ED2B7A 		vldr.32	s15, [r0, #172]
 1199 0008 90ED347A 		vldr.32	s14, [r0, #208]
 1200 000c 2DED028B 		vpush.64	{d8}
 1201 0010 77EEC77A 		vsub.f32	s15, s15, s14
 1202 0014 8BB0     		sub	sp, sp, #44
 1203 0016 0646     		mov	r6, r0
 1204 0018 CDED017A 		vstr.32	s15, [sp, #4]
 1205 001c 0029     		cmp	r1, #0
 1206 001e 40F0A480 		bne	.L273
 1207 0022 837A     		ldrb	r3, [r0, #10]	@ zero_extendqisi2
 1208 0024 9A07     		lsls	r2, r3, #30
 1209 0026 00F12481 		bmi	.L324
 1210 002a B44F     		ldr	r7, .L340
 1211              	.L274:
 1212 002c 96ED326A 		vldr.32	s12, [r6, #200]
 1213 0030 D6ED305A 		vldr.32	s11, [r6, #192]
 1214 0034 D6ED334A 		vldr.32	s9, [r6, #204]
 1215 0038 96ED2C4A 		vldr.32	s8, [r6, #176]
 1216 003c 9FEDB05A 		vldr.32	s10, .L340+4
 1217 0040 3A69     		ldr	r2, [r7, #16]
 1218 0042 9FEDB08A 		vldr.32	s16, .L340+8
 1219 0046 76EE653A 		vsub.f32	s7, s12, s11
 1220 004a 77EEE47A 		vsub.f32	s15, s15, s9
 1221 004e C3EE846A 		vdiv.f32	s13, s7, s8
 1222 0052 B246     		mov	r10, r6
 1223 0054 0025     		movs	r5, #0
 1224 0056 87EE867A 		vdiv.f32	s14, s15, s12
 1225 005a 84EE863A 		vdiv.f32	s6, s9, s12
 1226 005e 66EE054A 		vmul.f32	s9, s12, s10
 1227 0062 65EE857A 		vmul.f32	s15, s11, s10
 1228 0066 C4EE845A 		vdiv.f32	s11, s9, s8
 1229 006a C7EE844A 		vdiv.f32	s9, s15, s8
 1230 006e 77EE267A 		vadd.f32	s15, s14, s13
 1231 0072 83EE864A 		vdiv.f32	s8, s7, s12
 1232 0076 67EE857A 		vmul.f32	s15, s15, s10
 1233 007a 76EEC36A 		vsub.f32	s13, s13, s6
 1234 007e FCEEE77A 		vcvt.u32.f32	s15, s15
 1235 0082 66EE856A 		vmul.f32	s13, s13, s10
 1236 0086 17EE903A 		vmov	r3, s15	@ int
 1237 008a FCEEE57A 		vcvt.u32.f32	s15, s11
 1238 008e FDEEE66A 		vcvt.s32.f32	s13, s13
 1239 0092 17EE901A 		vmov	r1, s15	@ int
 1240 0096 FCEEE44A 		vcvt.u32.f32	s9, s9
 1241 009a 0B44     		add	r3, r3, r1
 1242 009c C6F8E430 		str	r3, [r6, #228]
 1243 00a0 C6ED3A6A 		vstr.32	s13, [r6, #232]	@ int
 1244 00a4 C6ED384A 		vstr.32	s9, [r6, #224]	@ int
 1245 00a8 4AF8F45F 		str	r5, [r10, #244]!
 1246 00ac D2F89892 		ldr	r9, [r2, #664]
 1247 00b0 8DED034A 		vstr.32	s8, [sp, #12]
 1248 00b4 D046     		mov	r8, r10
 1249 00b6 CDED027A 		vstr.32	s15, [sp, #8]	@ int
 1250 00ba CA46     		mov	r10, r9
 1251 00bc B946     		mov	r9, r7
 1252 00be 3746     		mov	r7, r6
 1253 00c0 4646     		mov	r6, r8
 1254 00c2 02E0     		b	.L295
ARM GAS  /tmp/cc9m8tIQ.s 			page 23


 1255              	.L275:
 1256 00c4 0135     		adds	r5, r5, #1
 1257 00c6 0C2D     		cmp	r5, #12
 1258 00c8 47D0     		beq	.L332
 1259              	.L295:
 1260 00ca 58F8044F 		ldr	r4, [r8, #4]!
 1261 00ce 002C     		cmp	r4, #0
 1262 00d0 F8D0     		beq	.L275
 1263 00d2 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 1264 00d4 012B     		cmp	r3, #1
 1265 00d6 F5D1     		bne	.L275
 1266 00d8 FB7A     		ldrb	r3, [r7, #11]	@ zero_extendqisi2
 1267 00da D9F80000 		ldr	r0, [r9]
 1268 00de DB07     		lsls	r3, r3, #31
 1269 00e0 4AD5     		bpl	.L276
 1270 00e2 0221     		movs	r1, #2
 1271 00e4 FFF7FEFF 		bl	_ZN8Platform11EnableDriveEj
 1272 00e8 3946     		mov	r1, r7
 1273 00ea 2046     		mov	r0, r4
 1274 00ec 01AA     		add	r2, sp, #4
 1275 00ee FFF7FEFF 		bl	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams
 1276 00f2 D9F84830 		ldr	r3, [r9, #72]
 1277 00f6 A168     		ldr	r1, [r4, #8]
 1278 00f8 5806     		lsls	r0, r3, #25
 1279 00fa 03D5     		bpl	.L278
 1280 00fc 824B     		ldr	r3, .L340+12
 1281 00fe 9942     		cmp	r1, r3
 1282 0100 00F2F380 		bhi	.L333
 1283              	.L278:
 1284 0104 0023     		movs	r3, #0
 1285 0106 E371     		strb	r3, [r4, #7]
 1286 0108 BA7A     		ldrb	r2, [r7, #10]	@ zero_extendqisi2
 1287 010a 8048     		ldr	r0, .L340+16
 1288 010c A061     		str	r0, [r4, #24]
 1289 010e 9207     		lsls	r2, r2, #30
 1290 0110 E360     		str	r3, [r4, #12]
 1291 0112 6361     		str	r3, [r4, #20]
 1292 0114 69D5     		bpl	.L289
 1293 0116 AA45     		cmp	r10, r5
 1294 0118 67D9     		bls	.L289
 1295 011a 0123     		movs	r3, #1
 1296 011c E360     		str	r3, [r4, #12]
 1297 011e 0029     		cmp	r1, #0
 1298 0120 66D0     		beq	.L290
 1299              	.L338:
 1300 0122 0022     		movs	r2, #0
 1301 0124 3946     		mov	r1, r7
 1302 0126 2046     		mov	r0, r4
 1303 0128 FFF7FEFF 		bl	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb
 1304 012c 0028     		cmp	r0, #0
 1305 012e 5FD0     		beq	.L290
 1306              	.L339:
 1307 0130 D7F8F430 		ldr	r3, [r7, #244]
 1308 0134 3146     		mov	r1, r6
 1309 0136 5BB1     		cbz	r3, .L292
 1310 0138 6069     		ldr	r0, [r4, #20]
 1311 013a 5A69     		ldr	r2, [r3, #20]
ARM GAS  /tmp/cc9m8tIQ.s 			page 24


 1312 013c 9042     		cmp	r0, r2
 1313 013e 03D8     		bhi	.L293
 1314 0140 06E0     		b	.L292
 1315              	.L294:
 1316 0142 5A69     		ldr	r2, [r3, #20]
 1317 0144 9042     		cmp	r0, r2
 1318 0146 03D9     		bls	.L292
 1319              	.L293:
 1320 0148 1946     		mov	r1, r3
 1321 014a 1B68     		ldr	r3, [r3]
 1322 014c 002B     		cmp	r3, #0
 1323 014e F8D1     		bne	.L294
 1324              	.L292:
 1325 0150 0135     		adds	r5, r5, #1
 1326 0152 0C2D     		cmp	r5, #12
 1327 0154 2360     		str	r3, [r4]
 1328 0156 0C60     		str	r4, [r1]
 1329 0158 B7D1     		bne	.L295
 1330              	.L332:
 1331 015a D9F84830 		ldr	r3, [r9, #72]
 1332 015e 03F05003 		and	r3, r3, #80
 1333 0162 502B     		cmp	r3, #80
 1334 0164 3E46     		mov	r6, r7
 1335 0166 00F0B480 		beq	.L334
 1336              	.L273:
 1337 016a 0223     		movs	r3, #2
 1338 016c 3372     		strb	r3, [r6, #8]
 1339 016e 0BB0     		add	sp, sp, #44
 1340              		@ sp needed
 1341 0170 BDEC028B 		vldm	sp!, {d8}
 1342 0174 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1343              	.L276:
 1344 0178 2946     		mov	r1, r5
 1345 017a FFF7FEFF 		bl	_ZN8Platform11EnableDriveEj
 1346 017e AA45     		cmp	r10, r5
 1347 0180 BB7A     		ldrb	r3, [r7, #10]	@ zero_extendqisi2
 1348 0182 38D8     		bhi	.L279
 1349 0184 13F01003 		ands	r3, r3, #16
 1350 0188 60D1     		bne	.L335
 1351 018a B0EE480A 		vmov.f32	s0, s16
 1352              	.L280:
 1353 018e 0033     		adds	r3, r3, #0
 1354 0190 18BF     		it	ne
 1355 0192 0123     		movne	r3, #1
 1356 0194 01AA     		add	r2, sp, #4
 1357 0196 3946     		mov	r1, r7
 1358 0198 2046     		mov	r0, r4
 1359 019a FFF7FEFF 		bl	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb
 1360 019e D9F84830 		ldr	r3, [r9, #72]
 1361 01a2 A168     		ldr	r1, [r4, #8]
 1362 01a4 5A06     		lsls	r2, r3, #25
 1363 01a6 1BD5     		bpl	.L283
 1364 01a8 574B     		ldr	r3, .L340+12
 1365 01aa 9942     		cmp	r1, r3
 1366 01ac 14D8     		bhi	.L284
 1367 01ae 2069     		ldr	r0, [r4, #16]
 1368 01b0 E36B     		ldr	r3, [r4, #60]
ARM GAS  /tmp/cc9m8tIQ.s 			page 25


 1369 01b2 9842     		cmp	r0, r3
 1370 01b4 10D3     		bcc	.L284
 1371 01b6 8142     		cmp	r1, r0
 1372 01b8 12D3     		bcc	.L283
 1373 01ba A36A     		ldr	r3, [r4, #40]
 1374 01bc A3FB0023 		umull	r2, r3, r3, r0
 1375 01c0 9C46     		mov	ip, r3
 1376 01c2 E36A     		ldr	r3, [r4, #44]
 1377 01c4 00FB03C3 		mla	r3, r0, r3, ip
 1378 01c8 9346     		mov	fp, r2
 1379 01ca 9C46     		mov	ip, r3
 1380 01cc D4E90C23 		ldrd	r2, [r4, #48]
 1381 01d0 9345     		cmp	fp, r2
 1382 01d2 7CEB0303 		sbcs	r3, ip, r3
 1383 01d6 03DA     		bge	.L283
 1384              	.L284:
 1385 01d8 3846     		mov	r0, r7
 1386 01da FFF7FEFF 		bl	_ZNK3DDA13DebugPrintAllEv
 1387 01de A168     		ldr	r1, [r4, #8]
 1388              	.L283:
 1389 01e0 4A4A     		ldr	r2, .L340+16
 1390 01e2 0023     		movs	r3, #0
 1391 01e4 C4E90532 		strd	r3, r2, [r4, #20]
 1392 01e8 E371     		strb	r3, [r4, #7]
 1393              	.L289:
 1394 01ea 0123     		movs	r3, #1
 1395 01ec E360     		str	r3, [r4, #12]
 1396 01ee 29BB     		cbnz	r1, .L336
 1397              	.L290:
 1398 01f0 0023     		movs	r3, #0
 1399 01f2 2371     		strb	r3, [r4, #4]
 1400 01f4 66E7     		b	.L275
 1401              	.L279:
 1402 01f6 9B07     		lsls	r3, r3, #30
 1403 01f8 01AA     		add	r2, sp, #4
 1404 01fa 3946     		mov	r1, r7
 1405 01fc 2046     		mov	r0, r4
 1406 01fe 01D5     		bpl	.L285
 1407 0200 022D     		cmp	r5, #2
 1408 0202 6AD9     		bls	.L337
 1409              	.L285:
 1410 0204 FFF7FEFF 		bl	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams
 1411 0208 D9F84830 		ldr	r3, [r9, #72]
 1412 020c A168     		ldr	r1, [r4, #8]
 1413 020e 5806     		lsls	r0, r3, #25
 1414 0210 06D5     		bpl	.L287
 1415              	.L288:
 1416 0212 3D4B     		ldr	r3, .L340+12
 1417 0214 9942     		cmp	r1, r3
 1418 0216 03D9     		bls	.L287
 1419 0218 3846     		mov	r0, r7
 1420 021a FFF7FEFF 		bl	_ZNK3DDA13DebugPrintAllEv
 1421 021e A168     		ldr	r1, [r4, #8]
 1422              	.L287:
 1423 0220 3A48     		ldr	r0, .L340+16
 1424 0222 0023     		movs	r3, #0
 1425 0224 E371     		strb	r3, [r4, #7]
ARM GAS  /tmp/cc9m8tIQ.s 			page 26


 1426 0226 BA7A     		ldrb	r2, [r7, #10]	@ zero_extendqisi2
 1427 0228 E360     		str	r3, [r4, #12]
 1428 022a 6361     		str	r3, [r4, #20]
 1429 022c 9307     		lsls	r3, r2, #30
 1430 022e A061     		str	r0, [r4, #24]
 1431 0230 DBD5     		bpl	.L289
 1432 0232 0123     		movs	r3, #1
 1433 0234 E360     		str	r3, [r4, #12]
 1434 0236 0029     		cmp	r1, #0
 1435 0238 DAD0     		beq	.L290
 1436 023a 72E7     		b	.L338
 1437              	.L336:
 1438 023c 0022     		movs	r2, #0
 1439 023e 3946     		mov	r1, r7
 1440 0240 2046     		mov	r0, r4
 1441 0242 FFF7FEFF 		bl	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb
 1442 0246 0028     		cmp	r0, #0
 1443 0248 D2D0     		beq	.L290
 1444 024a 71E7     		b	.L339
 1445              	.L335:
 1446 024c 7A68     		ldr	r2, [r7, #4]
 1447 024e 917A     		ldrb	r1, [r2, #10]	@ zero_extendqisi2
 1448 0250 C906     		lsls	r1, r1, #27
 1449 0252 4FD5     		bpl	.L299
 1450 0254 02EB8501 		add	r1, r2, r5, lsl #2
 1451 0258 D1ED1F7A 		vldr.32	s15, [r1, #124]
 1452 025c 92ED310A 		vldr.32	s0, [r2, #196]
 1453 0260 20EE270A 		vmul.f32	s0, s0, s15
 1454              	.L281:
 1455 0264 97ED307A 		vldr.32	s14, [r7, #192]
 1456 0268 58ED1F7A 		vldr.32	s15, [r8, #-124]
 1457 026c 97EE270A 		vfnms.f32	s0, s14, s15
 1458 0270 8DE7     		b	.L280
 1459              	.L324:
 1460 0272 D0ED207A 		vldr.32	s15, [r0, #128]
 1461 0276 D0ED1F6A 		vldr.32	s13, [r0, #124]
 1462 027a 90ED217A 		vldr.32	s14, [r0, #132]
 1463 027e 4068     		ldr	r0, [r0, #4]
 1464 0280 1E4F     		ldr	r7, .L340
 1465 0282 67EEA77A 		vmul.f32	s15, s15, s15
 1466 0286 BEEEC67A 		vcvt.s32.f32	s14, s14, #20
 1467 028a E6EEA67A 		vfma.f32	s15, s13, s13
 1468 028e 0A46     		mov	r2, r1
 1469 0290 0C46     		mov	r4, r1
 1470 0292 86ED2F7A 		vstr.32	s14, [r6, #188]	@ int
 1471 0296 CDED087A 		vstr.32	s15, [sp, #32]
 1472 029a FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 1473 029e 2246     		mov	r2, r4
 1474 02a0 0121     		movs	r1, #1
 1475 02a2 7068     		ldr	r0, [r6, #4]
 1476 02a4 8DED040A 		vstr.32	s0, [sp, #16]
 1477 02a8 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 1478 02ac BB68     		ldr	r3, [r7, #8]
 1479 02ae 9DED087A 		vldr.32	s14, [sp, #32]
 1480 02b2 D3F8583A 		ldr	r3, [r3, #2648]
 1481 02b6 DDED017A 		vldr.32	s15, [sp, #4]
 1482 02ba D3ED276A 		vldr.32	s13, [r3, #156]
ARM GAS  /tmp/cc9m8tIQ.s 			page 27


 1483 02be 0693     		str	r3, [sp, #24]
 1484 02c0 27EE267A 		vmul.f32	s14, s14, s13
 1485 02c4 8DED050A 		vstr.32	s0, [sp, #20]
 1486 02c8 CDED076A 		vstr.32	s13, [sp, #28]
 1487 02cc 8DED097A 		vstr.32	s14, [sp, #36]
 1488 02d0 ACE6     		b	.L274
 1489              	.L334:
 1490 02d2 3046     		mov	r0, r6
 1491 02d4 FFF7FEFF 		bl	_ZNK3DDA13DebugPrintAllEv
 1492 02d8 47E7     		b	.L273
 1493              	.L337:
 1494 02da FFF7FEFF 		bl	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams
 1495 02de D9F84830 		ldr	r3, [r9, #72]
 1496 02e2 A168     		ldr	r1, [r4, #8]
 1497 02e4 5B06     		lsls	r3, r3, #25
 1498 02e6 94D4     		bmi	.L288
 1499 02e8 9AE7     		b	.L287
 1500              	.L333:
 1501 02ea 3846     		mov	r0, r7
 1502 02ec FFF7FEFF 		bl	_ZNK3DDA13DebugPrintAllEv
 1503 02f0 A168     		ldr	r1, [r4, #8]
 1504 02f2 07E7     		b	.L278
 1505              	.L299:
 1506 02f4 B0EE480A 		vmov.f32	s0, s16
 1507 02f8 B4E7     		b	.L281
 1508              	.L341:
 1509 02fa 00BF     		.align	2
 1510              	.L340:
 1511 02fc 00000000 		.word	reprap
 1512 0300 C0E16449 		.word	1231348160
 1513 0304 00000000 		.word	0
 1514 0308 40420F00 		.word	1000000
 1515 030c 3F420F00 		.word	999999
 1516              		.size	_ZN3DDA7PrepareEh, .-_ZN3DDA7PrepareEh
 1517              		.section	.text._ZN3DDA21VectorBoxIntersectionEPKfS1_j,"ax",%progbits
 1518              		.align	1
 1519              		.p2align 2,,3
 1520              		.global	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 1521              		.syntax unified
 1522              		.thumb
 1523              		.thumb_func
 1524              		.fpu fpv4-sp-d16
 1525              		.type	_ZN3DDA21VectorBoxIntersectionEPKfS1_j, %function
 1526              	_ZN3DDA21VectorBoxIntersectionEPKfS1_j:
 1527              		@ args = 0, pretend = 0, frame = 16
 1528              		@ frame_needed = 0, uses_anonymous_args = 0
 1529 0000 8AB3     		cbz	r2, .L352
 1530 0002 10B5     		push	{r4, lr}
 1531 0004 9FED210A 		vldr.32	s0, .L363
 1532 0008 84B0     		sub	sp, sp, #16
 1533 000a 0B46     		mov	r3, r1
 1534 000c 01EB8204 		add	r4, r1, r2, lsl #2
 1535              	.L345:
 1536 0010 F3EC017A 		vldmia.32	r3!, {s15}
 1537 0014 A342     		cmp	r3, r4
 1538 0016 A7EEA70A 		vfma.f32	s0, s15, s15
 1539 001a F9D1     		bne	.L345
ARM GAS  /tmp/cc9m8tIQ.s 			page 28


 1540 001c B5EE400A 		vcmp.f32	s0, #0
 1541 0020 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1542 0024 B1EEC06A 		vsqrt.f32	s12, s0
 1543 0028 20D4     		bmi	.L362
 1544 002a 36EE066A 		vadd.f32	s12, s12, s12
 1545              	.L349:
 1546 002e B0EE460A 		vmov.f32	s0, s12
 1547 0032 0023     		movs	r3, #0
 1548              	.L348:
 1549 0034 F0EC017A 		vldmia.32	r0!, {s15}
 1550 0038 B1EC017A 		vldmia.32	r1!, {s14}
 1551 003c 67EE866A 		vmul.f32	s13, s15, s12
 1552 0040 0133     		adds	r3, r3, #1
 1553 0042 F4EEC76A 		vcmpe.f32	s13, s14
 1554 0046 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1555 004a 08DD     		ble	.L346
 1556 004c C7EE276A 		vdiv.f32	s13, s14, s15
 1557 0050 F4EE406A 		vcmp.f32	s13, s0
 1558 0054 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1559 0058 48BF     		it	mi
 1560 005a B0EE660A 		vmovmi.f32	s0, s13
 1561              	.L346:
 1562 005e 9A42     		cmp	r2, r3
 1563 0060 E8D8     		bhi	.L348
 1564 0062 04B0     		add	sp, sp, #16
 1565              		@ sp needed
 1566 0064 10BD     		pop	{r4, pc}
 1567              	.L352:
 1568 0066 9FED090A 		vldr.32	s0, .L363
 1569 006a 7047     		bx	lr
 1570              	.L362:
 1571 006c CDE90212 		strd	r1, r2, [sp, #8]
 1572 0070 0190     		str	r0, [sp, #4]
 1573 0072 8DED006A 		vstr.32	s12, [sp]	@ int
 1574 0076 FFF7FEFF 		bl	sqrtf
 1575 007a 9DED006A 		vldr.32	s12, [sp]	@ int
 1576 007e 0198     		ldr	r0, [sp, #4]
 1577 0080 36EE066A 		vadd.f32	s12, s12, s12
 1578 0084 DDE90212 		ldrd	r1, r2, [sp, #8]
 1579 0088 D1E7     		b	.L349
 1580              	.L364:
 1581 008a 00BF     		.align	2
 1582              	.L363:
 1583 008c 00000000 		.word	0
 1584              		.size	_ZN3DDA21VectorBoxIntersectionEPKfS1_j, .-_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 1585              		.section	.text._ZN3DDA9NormaliseEPfjj,"ax",%progbits
 1586              		.align	1
 1587              		.p2align 2,,3
 1588              		.global	_ZN3DDA9NormaliseEPfjj
 1589              		.syntax unified
 1590              		.thumb
 1591              		.thumb_func
 1592              		.fpu fpv4-sp-d16
 1593              		.type	_ZN3DDA9NormaliseEPfjj, %function
 1594              	_ZN3DDA9NormaliseEPfjj:
 1595              		@ args = 0, pretend = 0, frame = 8
 1596              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cc9m8tIQ.s 			page 29


 1597 0000 00B5     		push	{lr}
 1598 0002 2DED028B 		vpush.64	{d8}
 1599 0006 83B0     		sub	sp, sp, #12
 1600 0008 62B3     		cbz	r2, .L371
 1601 000a 9FED1E0A 		vldr.32	s0, .L379
 1602 000e 00EB8202 		add	r2, r0, r2, lsl #2
 1603 0012 0346     		mov	r3, r0
 1604              	.L367:
 1605 0014 F3EC017A 		vldmia.32	r3!, {s15}
 1606 0018 9A42     		cmp	r2, r3
 1607 001a A7EEA70A 		vfma.f32	s0, s15, s15
 1608 001e F9D1     		bne	.L367
 1609 0020 B5EE400A 		vcmp.f32	s0, #0
 1610 0024 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1611 0028 B1EEC08A 		vsqrt.f32	s16, s0
 1612 002c 23D4     		bmi	.L378
 1613              	.L368:
 1614 002e B5EEC08A 		vcmpe.f32	s16, #0
 1615 0032 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1616 0036 15D9     		bls	.L371
 1617 0038 F7EE007A 		vmov.f32	s15, #1.0e+0
 1618 003c 87EE887A 		vdiv.f32	s14, s15, s16
 1619 0040 49B1     		cbz	r1, .L365
 1620 0042 00EB8101 		add	r1, r0, r1, lsl #2
 1621              	.L369:
 1622 0046 D0ED007A 		vldr.32	s15, [r0]
 1623 004a 67EE277A 		vmul.f32	s15, s14, s15
 1624 004e E0EC017A 		vstmia.32	r0!, {s15}
 1625 0052 8142     		cmp	r1, r0
 1626 0054 F7D1     		bne	.L369
 1627              	.L365:
 1628 0056 B0EE480A 		vmov.f32	s0, s16
 1629 005a 03B0     		add	sp, sp, #12
 1630              		@ sp needed
 1631 005c BDEC028B 		vldm	sp!, {d8}
 1632 0060 5DF804FB 		ldr	pc, [sp], #4
 1633              	.L371:
 1634 0064 9FED078A 		vldr.32	s16, .L379
 1635 0068 B0EE480A 		vmov.f32	s0, s16
 1636 006c 03B0     		add	sp, sp, #12
 1637              		@ sp needed
 1638 006e BDEC028B 		vldm	sp!, {d8}
 1639 0072 5DF804FB 		ldr	pc, [sp], #4
 1640              	.L378:
 1641 0076 CDE90001 		strd	r0, r1, [sp]
 1642 007a FFF7FEFF 		bl	sqrtf
 1643 007e DDE90001 		ldrd	r0, r1, [sp]
 1644 0082 D4E7     		b	.L368
 1645              	.L380:
 1646              		.align	2
 1647              	.L379:
 1648 0084 00000000 		.word	0
 1649              		.size	_ZN3DDA9NormaliseEPfjj, .-_ZN3DDA9NormaliseEPfjj
 1650              		.section	.text._ZN3DDA4InitEPKf,"ax",%progbits
 1651              		.align	1
 1652              		.p2align 2,,3
 1653              		.global	_ZN3DDA4InitEPKf
ARM GAS  /tmp/cc9m8tIQ.s 			page 30


 1654              		.syntax unified
 1655              		.thumb
 1656              		.thumb_func
 1657              		.fpu fpv4-sp-d16
 1658              		.type	_ZN3DDA4InitEPKf, %function
 1659              	_ZN3DDA4InitEPKf:
 1660              		@ args = 0, pretend = 0, frame = 144
 1661              		@ frame_needed = 0, uses_anonymous_args = 0
 1662 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1663 0004 DFF8B081 		ldr	r8, .L407+8
 1664 0008 2DED028B 		vpush.64	{d8}
 1665 000c D8F800C0 		ldr	ip, [r8]
 1666 0010 A5B0     		sub	sp, sp, #148
 1667 0012 0024     		movs	r4, #0
 1668 0014 0546     		mov	r5, r0
 1669 0016 DCED5E8A 		vldr.32	s17, [ip, #376]
 1670 001a 9CED528A 		vldr.32	s16, [ip, #328]
 1671 001e 0F46     		mov	r7, r1
 1672 0020 00F1180A 		add	r10, r0, #24
 1673 0024 0CAE     		add	r6, sp, #48
 1674 0026 A146     		mov	r9, r4
 1675 0028 04E0     		b	.L384
 1676              	.L382:
 1677 002a 0134     		adds	r4, r4, #1
 1678 002c 0C2C     		cmp	r4, #12
 1679 002e 36D0     		beq	.L383
 1680              	.L405:
 1681 0030 D8F800C0 		ldr	ip, [r8]
 1682              	.L384:
 1683 0034 6B68     		ldr	r3, [r5, #4]
 1684 0036 A6EC018A 		vstmia.32	r6!, {s16}
 1685 003a A200     		lsls	r2, r4, #2
 1686 003c 0DEB0201 		add	r1, sp, r2
 1687 0040 1344     		add	r3, r3, r2
 1688 0042 C1ED008A 		vstr.32	s17, [r1]
 1689 0046 DA69     		ldr	r2, [r3, #28]
 1690 0048 4AF8042F 		str	r2, [r10, #4]!
 1691 004c DB6C     		ldr	r3, [r3, #76]	@ float
 1692 004e CAF83030 		str	r3, [r10, #48]	@ float
 1693 0052 F7EC017A 		vldmia.32	r7!, {s15}
 1694 0056 CAED187A 		vstr.32	s15, [r10, #96]
 1695 005a 9CED6C0A 		vldr.32	s0, [ip, #432]
 1696 005e 27EE800A 		vmul.f32	s0, s15, s0
 1697 0062 FFF7FEFF 		bl	lrintf
 1698 0066 8346     		mov	fp, r0
 1699 0068 0028     		cmp	r0, #0
 1700 006a DED0     		beq	.L382
 1701 006c 04F10C00 		add	r0, r4, #12
 1702 0070 0121     		movs	r1, #1
 1703 0072 FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
 1704 0076 8BEAEB72 		eor	r2, fp, fp, asr #31
 1705 007a CAF8DC00 		str	r0, [r10, #220]
 1706 007e 8379     		ldrb	r3, [r0, #6]	@ zero_extendqisi2
 1707 0080 A2EBEB72 		sub	r2, r2, fp, asr #31
 1708 0084 6FEA0B0B 		mvn	fp, fp
 1709 0088 4FEADB7B 		lsr	fp, fp, #31
 1710 008c 0134     		adds	r4, r4, #1
ARM GAS  /tmp/cc9m8tIQ.s 			page 31


 1711 008e 6BF30413 		bfi	r3, fp, #4, #1
 1712 0092 0C2C     		cmp	r4, #12
 1713 0094 8260     		str	r2, [r0, #8]
 1714 0096 8371     		strb	r3, [r0, #6]
 1715 0098 4FF00109 		mov	r9, #1
 1716 009c C8D1     		bne	.L405
 1717              	.L383:
 1718 009e B9F1000F 		cmp	r9, #0
 1719 00a2 1BD1     		bne	.L385
 1720 00a4 424F     		ldr	r7, .L407
 1721 00a6 4348     		ldr	r0, .L407+4
 1722 00a8 3968     		ldr	r1, [r7]
 1723 00aa 05F1F403 		add	r3, r5, #244
 1724 00ae 4C46     		mov	r4, r9
 1725 00b0 05F59275 		add	r5, r5, #292
 1726 00b4 4E46     		mov	r6, r9
 1727              	.L387:
 1728 00b6 53F8042F 		ldr	r2, [r3, #4]!
 1729 00ba 2AB1     		cbz	r2, .L386
 1730 00bc 0468     		ldr	r4, [r0]
 1731 00be 1460     		str	r4, [r2]
 1732 00c0 0131     		adds	r1, r1, #1
 1733 00c2 0260     		str	r2, [r0]
 1734 00c4 0124     		movs	r4, #1
 1735 00c6 1E60     		str	r6, [r3]
 1736              	.L386:
 1737 00c8 AB42     		cmp	r3, r5
 1738 00ca F4D1     		bne	.L387
 1739 00cc 002C     		cmp	r4, #0
 1740 00ce 6CD1     		bne	.L406
 1741              	.L389:
 1742 00d0 4846     		mov	r0, r9
 1743 00d2 25B0     		add	sp, sp, #148
 1744              		@ sp needed
 1745 00d4 BDEC028B 		vldm	sp!, {d8}
 1746 00d8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1747              	.L385:
 1748 00dc E87A     		ldrb	r0, [r5, #11]	@ zero_extendqisi2
 1749 00de 6A68     		ldr	r2, [r5, #4]
 1750 00e0 AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 1751 00e2 0021     		movs	r1, #0
 1752 00e4 40F00100 		orr	r0, r0, #1
 1753 00e8 61F34100 		bfi	r0, r1, #1, #1
 1754 00ec E872     		strb	r0, [r5, #11]
 1755 00ee D2F8B860 		ldr	r6, [r2, #184]	@ float
 1756 00f2 1069     		ldr	r0, [r2, #16]
 1757 00f4 C5F8B860 		str	r6, [r5, #184]	@ float
 1758 00f8 03F0B503 		and	r3, r3, #181
 1759 00fc 5669     		ldr	r6, [r2, #20]
 1760 00fe 2861     		str	r0, [r5, #16]
 1761 0100 9069     		ldr	r0, [r2, #24]
 1762 0102 E960     		str	r1, [r5, #12]
 1763 0104 43F00403 		orr	r3, r3, #4
 1764 0108 C5E90560 		strd	r6, r0, [r5, #20]
 1765 010c 03F0EF03 		and	r3, r3, #239
 1766 0110 61F34513 		bfi	r3, r1, #5, #1
 1767 0114 AB72     		strb	r3, [r5, #10]
ARM GAS  /tmp/cc9m8tIQ.s 			page 32


 1768 0116 907A     		ldrb	r0, [r2, #10]	@ zero_extendqisi2
 1769 0118 DBB2     		uxtb	r3, r3
 1770 011a 60F30003 		bfi	r3, r0, #0, #1
 1771 011e 61F3C713 		bfi	r3, r1, #7, #1
 1772 0122 AB72     		strb	r3, [r5, #10]
 1773 0124 B2F8F030 		ldrh	r3, [r2, #240]
 1774 0128 A5F8F030 		strh	r3, [r5, #240]	@ movhi
 1775 012c 05F17C06 		add	r6, r5, #124
 1776 0130 2246     		mov	r2, r4
 1777 0132 2146     		mov	r1, r4
 1778 0134 3046     		mov	r0, r6
 1779 0136 FFF7FEFF 		bl	_ZN3DDA9NormaliseEPfjj
 1780 013a 05F1AC0C 		add	ip, r5, #172
 1781 013e 8CED000A 		vstr.32	s0, [ip]
 1782 0142 3446     		mov	r4, r6
 1783 0144 18AF     		add	r7, sp, #96
 1784              	.L390:
 1785 0146 2068     		ldr	r0, [r4]	@ unaligned
 1786 0148 6168     		ldr	r1, [r4, #4]	@ unaligned
 1787 014a A268     		ldr	r2, [r4, #8]	@ unaligned
 1788 014c E368     		ldr	r3, [r4, #12]	@ unaligned
 1789 014e 3E46     		mov	r6, r7
 1790 0150 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 1791 0152 1034     		adds	r4, r4, #16
 1792 0154 6445     		cmp	r4, ip
 1793 0156 3746     		mov	r7, r6
 1794 0158 F5D1     		bne	.L390
 1795 015a 18AB     		add	r3, sp, #96
 1796 015c 24AA     		add	r2, sp, #144
 1797              	.L391:
 1798 015e D3ED007A 		vldr.32	s15, [r3]
 1799 0162 F0EEE77A 		vabs.f32	s15, s15
 1800 0166 E3EC017A 		vstmia.32	r3!, {s15}
 1801 016a 9342     		cmp	r3, r2
 1802 016c F7D1     		bne	.L391
 1803 016e 6946     		mov	r1, sp
 1804 0170 18A8     		add	r0, sp, #96
 1805 0172 0C22     		movs	r2, #12
 1806 0174 FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 1807 0178 0CA9     		add	r1, sp, #48
 1808 017a 18A8     		add	r0, sp, #96
 1809 017c 0C22     		movs	r2, #12
 1810 017e 85ED2C0A 		vstr.32	s0, [r5, #176]
 1811 0182 FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 1812 0186 0023     		movs	r3, #0
 1813 0188 C5F8C430 		str	r3, [r5, #196]	@ float
 1814 018c C5F8C030 		str	r3, [r5, #192]	@ float
 1815 0190 2846     		mov	r0, r5
 1816 0192 85ED2D0A 		vstr.32	s0, [r5, #180]
 1817 0196 FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 1818 019a 0123     		movs	r3, #1
 1819 019c 4846     		mov	r0, r9
 1820 019e 2B72     		strb	r3, [r5, #8]
 1821 01a0 25B0     		add	sp, sp, #148
 1822              		@ sp needed
 1823 01a2 BDEC028B 		vldm	sp!, {d8}
 1824 01a6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
ARM GAS  /tmp/cc9m8tIQ.s 			page 33


 1825              	.L406:
 1826 01aa 3960     		str	r1, [r7]
 1827 01ac 90E7     		b	.L389
 1828              	.L408:
 1829 01ae 00BF     		.align	2
 1830              	.L407:
 1831 01b0 00000000 		.word	_ZN13DriveMovement7numFreeE
 1832 01b4 00000000 		.word	_ZN13DriveMovement8freeListE
 1833 01b8 00000000 		.word	reprap
 1834              		.size	_ZN3DDA4InitEPKf, .-_ZN3DDA4InitEPKf
 1835              		.section	.text._ZN3DDA12NormaliseXYZEv,"ax",%progbits
 1836              		.align	1
 1837              		.p2align 2,,3
 1838              		.global	_ZN3DDA12NormaliseXYZEv
 1839              		.syntax unified
 1840              		.thumb
 1841              		.thumb_func
 1842              		.fpu fpv4-sp-d16
 1843              		.type	_ZN3DDA12NormaliseXYZEv, %function
 1844              	_ZN3DDA12NormaliseXYZEv:
 1845              		@ args = 0, pretend = 0, frame = 8
 1846              		@ frame_needed = 0, uses_anonymous_args = 0
 1847 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1848 0002 2DED028B 		vpush.64	{d8}
 1849 0006 9FED347A 		vldr.32	s14, .L429
 1850 000a D0E904EC 		ldrd	lr, ip, [r0, #16]
 1851 000e 0023     		movs	r3, #0
 1852 0010 00F17C04 		add	r4, r0, #124
 1853 0014 83B0     		sub	sp, sp, #12
 1854 0016 B0EE470A 		vmov.f32	s0, s14
 1855 001a 2146     		mov	r1, r4
 1856 001c 1E46     		mov	r6, r3
 1857 001e 1F46     		mov	r7, r3
 1858              	.L412:
 1859 0020 2EFA03F2 		lsr	r2, lr, r3
 1860 0024 12F0010F 		tst	r2, #1
 1861 0028 2CFA03F5 		lsr	r5, ip, r3
 1862 002c 03F10103 		add	r3, r3, #1
 1863 0030 04D0     		beq	.L410
 1864 0032 D1ED007A 		vldr.32	s15, [r1]
 1865 0036 A7EEA70A 		vfma.f32	s0, s15, s15
 1866 003a 0137     		adds	r7, r7, #1
 1867              	.L410:
 1868 003c EA07     		lsls	r2, r5, #31
 1869 003e 04D5     		bpl	.L411
 1870 0040 D1ED007A 		vldr.32	s15, [r1]
 1871 0044 A7EEA77A 		vfma.f32	s14, s15, s15
 1872 0048 0136     		adds	r6, r6, #1
 1873              	.L411:
 1874 004a 092B     		cmp	r3, #9
 1875 004c 01F10401 		add	r1, r1, #4
 1876 0050 E6D1     		bne	.L412
 1877 0052 012F     		cmp	r7, #1
 1878 0054 05D9     		bls	.L413
 1879 0056 07EE907A 		vmov	s15, r7	@ int
 1880 005a F8EE677A 		vcvt.f32.u32	s15, s15
 1881 005e 80EE270A 		vdiv.f32	s0, s0, s15
ARM GAS  /tmp/cc9m8tIQ.s 			page 34


 1882              	.L413:
 1883 0062 012E     		cmp	r6, #1
 1884 0064 05D9     		bls	.L414
 1885 0066 07EE906A 		vmov	s15, r6	@ int
 1886 006a F8EE677A 		vcvt.f32.u32	s15, s15
 1887 006e 87EE277A 		vdiv.f32	s14, s14, s15
 1888              	.L414:
 1889 0072 30EE070A 		vadd.f32	s0, s0, s14
 1890 0076 D0ED217A 		vldr.32	s15, [r0, #132]
 1891 007a A7EEA70A 		vfma.f32	s0, s15, s15
 1892 007e B5EE400A 		vcmp.f32	s0, #0
 1893 0082 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1894 0086 B1EEC08A 		vsqrt.f32	s16, s0
 1895 008a 20D4     		bmi	.L428
 1896              	.L415:
 1897 008c B5EEC08A 		vcmpe.f32	s16, #0
 1898 0090 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1899 0094 13D9     		bls	.L418
 1900 0096 F7EE007A 		vmov.f32	s15, #1.0e+0
 1901 009a 87EE887A 		vdiv.f32	s14, s15, s16
 1902 009e 2346     		mov	r3, r4
 1903 00a0 AC30     		adds	r0, r0, #172
 1904              	.L417:
 1905 00a2 D3ED007A 		vldr.32	s15, [r3]
 1906 00a6 67EE277A 		vmul.f32	s15, s14, s15
 1907 00aa E3EC017A 		vstmia.32	r3!, {s15}
 1908 00ae 9842     		cmp	r0, r3
 1909 00b0 F7D1     		bne	.L417
 1910 00b2 B0EE480A 		vmov.f32	s0, s16
 1911 00b6 03B0     		add	sp, sp, #12
 1912              		@ sp needed
 1913 00b8 BDEC028B 		vldm	sp!, {d8}
 1914 00bc F0BD     		pop	{r4, r5, r6, r7, pc}
 1915              	.L418:
 1916 00be 9FED068A 		vldr.32	s16, .L429
 1917 00c2 B0EE480A 		vmov.f32	s0, s16
 1918 00c6 03B0     		add	sp, sp, #12
 1919              		@ sp needed
 1920 00c8 BDEC028B 		vldm	sp!, {d8}
 1921 00cc F0BD     		pop	{r4, r5, r6, r7, pc}
 1922              	.L428:
 1923 00ce 0190     		str	r0, [sp, #4]
 1924 00d0 FFF7FEFF 		bl	sqrtf
 1925 00d4 0198     		ldr	r0, [sp, #4]
 1926 00d6 D9E7     		b	.L415
 1927              	.L430:
 1928              		.align	2
 1929              	.L429:
 1930 00d8 00000000 		.word	0
 1931              		.size	_ZN3DDA12NormaliseXYZEv, .-_ZN3DDA12NormaliseXYZEv
 1932              		.section	.text.hot._ZN3DDA4InitERN6GCodes7RawMoveEb,"ax",%progbits
 1933              		.align	1
 1934              		.p2align 2,,3
 1935              		.global	_ZN3DDA4InitERN6GCodes7RawMoveEb
 1936              		.syntax unified
 1937              		.thumb
 1938              		.thumb_func
ARM GAS  /tmp/cc9m8tIQ.s 			page 35


 1939              		.fpu fpv4-sp-d16
 1940              		.type	_ZN3DDA4InitERN6GCodes7RawMoveEb, %function
 1941              	_ZN3DDA4InitERN6GCodes7RawMoveEb:
 1942              		@ args = 0, pretend = 0, frame = 136
 1943              		@ frame_needed = 0, uses_anonymous_args = 0
 1944 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1945 0004 2DED048B 		vpush.64	{d8, d9}
 1946 0008 4568     		ldr	r5, [r0, #4]
 1947 000a DFF86CB3 		ldr	fp, .L568+12
 1948 000e A3B0     		sub	sp, sp, #140
 1949 0010 05F11C03 		add	r3, r5, #28
 1950 0014 0746     		mov	r7, r0
 1951 0016 DBF80840 		ldr	r4, [fp, #8]
 1952 001a 0693     		str	r3, [sp, #24]
 1953 001c 0291     		str	r1, [sp, #8]
 1954 001e 0092     		str	r2, [sp]
 1955 0020 002A     		cmp	r2, #0
 1956 0022 40F08C82 		bne	.L553
 1957 0026 837A     		ldrb	r3, [r0, #10]	@ zero_extendqisi2
 1958 0028 009A     		ldr	r2, [sp]
 1959 002a 62F34103 		bfi	r3, r2, #1, #1
 1960 002e 8372     		strb	r3, [r0, #10]
 1961 0030 00F11C06 		add	r6, r0, #28
 1962              	.L436:
 1963 0034 BB7A     		ldrb	r3, [r7, #10]	@ zero_extendqisi2
 1964 0036 DBF80020 		ldr	r2, [fp]
 1965 003a DFEDCC8A 		vldr.32	s17, .L568
 1966 003e 0597     		str	r7, [sp, #20]
 1967 0040 6FF38613 		bfc	r3, #6, #1
 1968 0044 BB72     		strb	r3, [r7, #10]
 1969 0046 DBF81030 		ldr	r3, [fp, #16]
 1970 004a D4F8581A 		ldr	r1, [r4, #2648]
 1971 004e D3F89832 		ldr	r3, [r3, #664]
 1972 0052 0491     		str	r1, [sp, #16]
 1973 0054 02F5B878 		add	r8, r2, #368
 1974 0058 029A     		ldr	r2, [sp, #8]
 1975 005a 0893     		str	r3, [sp, #32]
 1976 005c 0024     		movs	r4, #0
 1977 005e 0DF1280A 		add	r10, sp, #40
 1978 0062 0394     		str	r4, [sp, #12]
 1979 0064 0194     		str	r4, [sp, #4]
 1980 0066 0794     		str	r4, [sp, #28]
 1981 0068 0992     		str	r2, [sp, #36]
 1982 006a 9146     		mov	r9, r2
 1983 006c 1F46     		mov	r7, r3
 1984              	.L452:
 1985 006e 58F8042B 		ldr	r2, [r8], #4	@ float
 1986 0072 4AF8042B 		str	r2, [r10], #4	@ float
 1987 0076 A742     		cmp	r7, r4
 1988 0078 40F28E81 		bls	.L437
 1989 007c 009B     		ldr	r3, [sp]
 1990 007e 002B     		cmp	r3, #0
 1991 0080 00F08A81 		beq	.L437
 1992 0084 049B     		ldr	r3, [sp, #16]
 1993 0086 3568     		ldr	r5, [r6]
 1994 0088 1A68     		ldr	r2, [r3]
 1995 008a 069B     		ldr	r3, [sp, #24]
ARM GAS  /tmp/cc9m8tIQ.s 			page 36


 1996 008c D26E     		ldr	r2, [r2, #108]
 1997 008e 53F82410 		ldr	r1, [r3, r4, lsl #2]
 1998 0092 B74B     		ldr	r3, .L568+4
 1999 0094 D9F80000 		ldr	r0, [r9]	@ float
 2000 0098 3063     		str	r0, [r6, #48]	@ float
 2001 009a 9A42     		cmp	r2, r3
 2002 009c A5EB0105 		sub	r5, r5, r1
 2003 00a0 00F0AD81 		beq	.L438
 2004              	.L439:
 2005 00a4 2146     		mov	r1, r4
 2006 00a6 0498     		ldr	r0, [sp, #16]
 2007 00a8 9047     		blx	r2
 2008 00aa B0B1     		cbz	r0, .L441
 2009 00ac 029B     		ldr	r3, [sp, #8]
 2010 00ae 93F87220 		ldrb	r2, [r3, #114]	@ zero_extendqisi2
 2011 00b2 013A     		subs	r2, r2, #1
 2012 00b4 012A     		cmp	r2, #1
 2013 00b6 10D9     		bls	.L441
 2014 00b8 DBF80020 		ldr	r2, [fp]
 2015 00bc 02EB8402 		add	r2, r2, r4, lsl #2
 2016 00c0 92ED6A0A 		vldr.32	s0, [r2, #424]
 2017 00c4 20EE280A 		vmul.f32	s0, s0, s17
 2018 00c8 FFF7FEFF 		bl	lrintf
 2019 00cc 00EBD072 		add	r2, r0, r0, lsr #31
 2020 00d0 5210     		asrs	r2, r2, #1
 2021 00d2 AA42     		cmp	r2, r5
 2022 00d4 80F22D82 		bge	.L442
 2023 00d8 2D1A     		subs	r5, r5, r0
 2024              	.L441:
 2025 00da 009B     		ldr	r3, [sp]
 2026 00dc 002B     		cmp	r3, #0
 2027 00de 40F08E81 		bne	.L438
 2028 00e2 DBF80020 		ldr	r2, [fp]
 2029 00e6 07EE905A 		vmov	s15, r5	@ int
 2030 00ea 02EB8402 		add	r2, r2, r4, lsl #2
 2031 00ee 92ED6A7A 		vldr.32	s14, [r2, #424]
 2032 00f2 F8EEE76A 		vcvt.f32.s32	s13, s15
 2033 00f6 C6EE877A 		vdiv.f32	s15, s13, s14
 2034 00fa C6ED187A 		vstr.32	s15, [r6, #96]
 2035              	.L446:
 2036 00fe 002D     		cmp	r5, #0
 2037 0100 00F06F81 		beq	.L448
 2038 0104 0121     		movs	r1, #1
 2039 0106 2046     		mov	r0, r4
 2040 0108 FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
 2041 010c 85EAE571 		eor	r1, r5, r5, asr #31
 2042 0110 C6F8DC00 		str	r0, [r6, #220]
 2043 0114 8279     		ldrb	r2, [r0, #6]	@ zero_extendqisi2
 2044 0116 A1EBE571 		sub	r1, r1, r5, asr #31
 2045 011a ED43     		mvns	r5, r5
 2046 011c ED0F     		lsrs	r5, r5, #31
 2047 011e 65F30412 		bfi	r2, r5, #4, #1
 2048 0122 A742     		cmp	r7, r4
 2049 0124 8160     		str	r1, [r0, #8]
 2050 0126 8271     		strb	r2, [r0, #6]
 2051 0128 40F29781 		bls	.L494
 2052 012c 0134     		adds	r4, r4, #1
ARM GAS  /tmp/cc9m8tIQ.s 			page 37


 2053 012e 0123     		movs	r3, #1
 2054 0130 0C2C     		cmp	r4, #12
 2055 0132 0393     		str	r3, [sp, #12]
 2056 0134 0793     		str	r3, [sp, #28]
 2057 0136 06F10406 		add	r6, r6, #4
 2058 013a 09F10409 		add	r9, r9, #4
 2059 013e 96D1     		bne	.L452
 2060 0140 039B     		ldr	r3, [sp, #12]
 2061 0142 059F     		ldr	r7, [sp, #20]
 2062 0144 002B     		cmp	r3, #0
 2063 0146 00F0D181 		beq	.L554
 2064              	.L453:
 2065 014a BB7A     		ldrb	r3, [r7, #10]	@ zero_extendqisi2
 2066 014c 9807     		lsls	r0, r3, #30
 2067 014e 0AD5     		bpl	.L456
 2068 0150 07F1F405 		add	r5, r7, #244
 2069 0154 0024     		movs	r4, #0
 2070              	.L458:
 2071 0156 55F8046F 		ldr	r6, [r5, #4]!
 2072 015a 002E     		cmp	r6, #0
 2073 015c 00F07882 		beq	.L555
 2074              	.L457:
 2075 0160 0134     		adds	r4, r4, #1
 2076 0162 032C     		cmp	r4, #3
 2077 0164 F7D1     		bne	.L458
 2078              	.L456:
 2079 0166 029D     		ldr	r5, [sp, #8]
 2080 0168 BB7A     		ldrb	r3, [r7, #10]	@ zero_extendqisi2
 2081 016a 95F87300 		ldrb	r0, [r5, #115]	@ zero_extendqisi2
 2082 016e FA7A     		ldrb	r2, [r7, #11]	@ zero_extendqisi2
 2083 0170 0146     		mov	r1, r0
 2084 0172 C0F38000 		ubfx	r0, r0, #2, #1
 2085 0176 60F38203 		bfi	r3, r0, #2, #1
 2086 017a C1F34011 		ubfx	r1, r1, #5, #1
 2087 017e 61F34102 		bfi	r2, r1, #1, #1
 2088 0182 DBB2     		uxtb	r3, r3
 2089 0184 696E     		ldr	r1, [r5, #100]
 2090 0186 A86E     		ldr	r0, [r5, #104]
 2091 0188 3961     		str	r1, [r7, #16]
 2092 018a 13F0400F 		tst	r3, #64
 2093 018e 0199     		ldr	r1, [sp, #4]
 2094 0190 08BF     		it	eq
 2095 0192 0021     		moveq	r1, #0
 2096 0194 61F3C303 		bfi	r3, r1, #3, #1
 2097 0198 E96E     		ldr	r1, [r5, #108]
 2098 019a FA72     		strb	r2, [r7, #11]
 2099 019c 95F87320 		ldrb	r2, [r5, #115]	@ zero_extendqisi2
 2100 01a0 7861     		str	r0, [r7, #20]
 2101 01a2 C2F34002 		ubfx	r2, r2, #1, #1
 2102 01a6 62F30413 		bfi	r3, r2, #4, #1
 2103 01aa F87A     		ldrb	r0, [r7, #11]	@ zero_extendqisi2
 2104 01ac EA6D     		ldr	r2, [r5, #92]
 2105 01ae AC6D     		ldr	r4, [r5, #88]	@ float
 2106 01b0 BA61     		str	r2, [r7, #24]
 2107 01b2 03F0DF03 		and	r3, r3, #223
 2108 01b6 6FF3C713 		bfc	r3, #7, #1
 2109 01ba 6FF30000 		bfc	r0, #0, #1
ARM GAS  /tmp/cc9m8tIQ.s 			page 38


 2110 01be 2A6E     		ldr	r2, [r5, #96]	@ float
 2111 01c0 BB72     		strb	r3, [r7, #10]
 2112 01c2 F872     		strb	r0, [r7, #11]
 2113 01c4 B5F87030 		ldrh	r3, [r5, #112]
 2114 01c8 F960     		str	r1, [r7, #12]
 2115 01ca 0029     		cmp	r1, #0
 2116 01cc C7F8B840 		str	r4, [r7, #184]	@ float
 2117 01d0 C7F8EC20 		str	r2, [r7, #236]	@ float
 2118 01d4 A7F8F030 		strh	r3, [r7, #240]	@ movhi
 2119 01d8 C0F2FD81 		blt	.L556
 2120 01dc 40F03682 		bne	.L505
 2121 01e0 009A     		ldr	r2, [sp]
 2122              	.L461:
 2123 01e2 BB7A     		ldrb	r3, [r7, #10]	@ zero_extendqisi2
 2124 01e4 62F30003 		bfi	r3, r2, #0, #1
 2125 01e8 5906     		lsls	r1, r3, #25
 2126 01ea BB72     		strb	r3, [r7, #10]
 2127 01ec 07F17C04 		add	r4, r7, #124
 2128 01f0 00F1CE81 		bmi	.L557
 2129 01f4 079B     		ldr	r3, [sp, #28]
 2130 01f6 002B     		cmp	r3, #0
 2131 01f8 40F0B981 		bne	.L558
 2132 01fc DFED5D7A 		vldr.32	s15, .L568+8
 2133 0200 3A46     		mov	r2, r7
 2134 0202 17EE903A 		vmov	r3, s15
 2135 0206 B0EE677A 		vmov.f32	s14, s15
 2136 020a 42F8AC3F 		str	r3, [r2, #172]!	@ float
 2137 020e 2346     		mov	r3, r4
 2138              	.L466:
 2139 0210 F3EC017A 		vldmia.32	r3!, {s15}
 2140 0214 F0EEE77A 		vabs.f32	s15, s15
 2141 0218 9A42     		cmp	r2, r3
 2142 021a 37EE277A 		vadd.f32	s14, s14, s15
 2143 021e F7D1     		bne	.L466
 2144 0220 B5EEC07A 		vcmpe.f32	s14, #0
 2145 0224 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2146 0228 87ED2B7A 		vstr.32	s14, [r7, #172]
 2147 022c 40F31B82 		ble	.L559
 2148 0230 F7EE007A 		vmov.f32	s15, #1.0e+0
 2149 0234 C7EE876A 		vdiv.f32	s13, s15, s14
 2150 0238 2346     		mov	r3, r4
 2151 023a 04F13005 		add	r5, r4, #48
 2152              	.L469:
 2153 023e D3ED007A 		vldr.32	s15, [r3]
 2154 0242 66EEA77A 		vmul.f32	s15, s13, s15
 2155 0246 E3EC017A 		vstmia.32	r3!, {s15}
 2156 024a 9D42     		cmp	r5, r3
 2157 024c F7D1     		bne	.L469
 2158              	.L464:
 2159 024e 0DF1580C 		add	ip, sp, #88
 2160              	.L470:
 2161 0252 2068     		ldr	r0, [r4]	@ unaligned
 2162 0254 6168     		ldr	r1, [r4, #4]	@ unaligned
 2163 0256 A268     		ldr	r2, [r4, #8]	@ unaligned
 2164 0258 E368     		ldr	r3, [r4, #12]	@ unaligned
 2165 025a 6646     		mov	r6, ip
 2166 025c 0FC6     		stmia	r6!, {r0, r1, r2, r3}
ARM GAS  /tmp/cc9m8tIQ.s 			page 39


 2167 025e 1034     		adds	r4, r4, #16
 2168 0260 AC42     		cmp	r4, r5
 2169 0262 B446     		mov	ip, r6
 2170 0264 F5D1     		bne	.L470
 2171 0266 16AB     		add	r3, sp, #88
 2172 0268 22AA     		add	r2, sp, #136
 2173              	.L471:
 2174 026a D3ED007A 		vldr.32	s15, [r3]
 2175 026e F0EEE77A 		vabs.f32	s15, s15
 2176 0272 E3EC017A 		vstmia.32	r3!, {s15}
 2177 0276 9342     		cmp	r3, r2
 2178 0278 F7D1     		bne	.L471
 2179 027a 0AA9     		add	r1, sp, #40
 2180 027c 0C22     		movs	r2, #12
 2181 027e 16A8     		add	r0, sp, #88
 2182 0280 FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 2183 0284 BB7A     		ldrb	r3, [r7, #10]	@ zero_extendqisi2
 2184 0286 87ED2C0A 		vstr.32	s0, [r7, #176]
 2185 028a 5A06     		lsls	r2, r3, #25
 2186 028c DBF80010 		ldr	r1, [fp]
 2187 0290 17D5     		bpl	.L473
 2188 0292 91ED687A 		vldr.32	s14, [r1, #416]
 2189 0296 D1ED697A 		vldr.32	s15, [r1, #420]
 2190 029a 13F0080F 		tst	r3, #8
 2191 029e B4EE400A 		vcmp.f32	s0, s0
 2192 02a2 18BF     		it	ne
 2193 02a4 F0EE477A 		vmovne.f32	s15, s14
 2194 02a8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2195 02ac 80F1F881 		bvs	.L506
 2196 02b0 B4EE670A 		vcmp.f32	s0, s15
 2197 02b4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2198 02b8 48BF     		it	mi
 2199 02ba F0EE407A 		vmovmi.f32	s15, s0
 2200              	.L475:
 2201 02be C7ED2C7A 		vstr.32	s15, [r7, #176]
 2202              	.L473:
 2203 02c2 029B     		ldr	r3, [sp, #8]
 2204 02c4 93ED158A 		vldr.32	s16, [r3, #84]
 2205 02c8 009B     		ldr	r3, [sp]
 2206 02ca 0BBB     		cbnz	r3, .L477
 2207 02cc DDED166A 		vldr.32	s13, [sp, #88]
 2208 02d0 DDED177A 		vldr.32	s15, [sp, #92]
 2209 02d4 9DED187A 		vldr.32	s14, [sp, #96]
 2210 02d8 F5EEC06A 		vcmpe.f32	s13, #0
 2211 02dc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2212 02e0 D8BF     		it	le
 2213 02e2 DFED246A 		vldrle.32	s13, .L568+8
 2214 02e6 F4EEE76A 		vcmpe.f32	s13, s15
 2215 02ea F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2216 02ee 58BF     		it	pl
 2217 02f0 F0EE667A 		vmovpl.f32	s15, s13
 2218 02f4 F4EEC77A 		vcmpe.f32	s15, s14
 2219 02f8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2220 02fc 58BF     		it	pl
 2221 02fe B0EE677A 		vmovpl.f32	s14, s15
 2222 0302 B5EE407A 		vcmp.f32	s14, #0
 2223 0306 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  /tmp/cc9m8tIQ.s 			page 40


 2224 030a 18BF     		it	ne
 2225 030c 88EE078A 		vdivne.f32	s16, s16, s14
 2226              	.L477:
 2227 0310 01F5A071 		add	r1, r1, #320
 2228 0314 B4EE488A 		vcmp.f32	s16, s16
 2229 0318 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2230 031c 80F1B681 		bvs	.L481
 2231 0320 F6EE007A 		vmov.f32	s15, #5.0e-1
 2232 0324 B4EEE78A 		vcmpe.f32	s16, s15
 2233 0328 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2234 032c 40F32981 		ble	.L560
 2235 0330 0C22     		movs	r2, #12
 2236 0332 16A8     		add	r0, sp, #88
 2237 0334 FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 2238              	.L493:
 2239 0338 B4EE480A 		vcmp.f32	s0, s16
 2240 033c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2241 0340 C8BF     		it	gt
 2242 0342 B0EE480A 		vmovgt.f32	s0, s16
 2243              	.L484:
 2244 0346 009B     		ldr	r3, [sp]
 2245 0348 87ED2D0A 		vstr.32	s0, [r7, #180]
 2246 034c 2BB1     		cbz	r3, .L486
 2247 034e 0498     		ldr	r0, [sp, #16]
 2248 0350 0368     		ldr	r3, [r0]
 2249 0352 16AA     		add	r2, sp, #88
 2250 0354 1B6E     		ldr	r3, [r3, #96]
 2251 0356 3946     		mov	r1, r7
 2252 0358 9847     		blx	r3
 2253              	.L486:
 2254 035a 7868     		ldr	r0, [r7, #4]
 2255 035c 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 2256 035e 0022     		movs	r2, #0
 2257 0360 012B     		cmp	r3, #1
 2258 0362 C7F8C420 		str	r2, [r7, #196]	@ float
 2259 0366 00F04381 		beq	.L561
 2260 036a 07E0     		b	.L569
 2261              	.L570:
 2262              		.align	2
 2263              	.L568:
 2264 036c 0000B443 		.word	1135869952
 2265 0370 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 2266 0374 00000000 		.word	0
 2267 0378 00000000 		.word	reprap
 2268              	.L569:
 2269              	.L487:
 2270 037c 0023     		movs	r3, #0
 2271 037e C7F8C030 		str	r3, [r7, #192]	@ float
 2272              	.L491:
 2273 0382 3846     		mov	r0, r7
 2274 0384 FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 2275 0388 0398     		ldr	r0, [sp, #12]
 2276 038a 0123     		movs	r3, #1
 2277 038c 3B72     		strb	r3, [r7, #8]
 2278 038e 23B0     		add	sp, sp, #140
 2279              		@ sp needed
 2280 0390 BDEC048B 		vldm	sp!, {d8-d9}
ARM GAS  /tmp/cc9m8tIQ.s 			page 41


 2281 0394 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2282              	.L437:
 2283 0398 99ED000A 		vldr.32	s0, [r9]
 2284 039c 2046     		mov	r0, r4
 2285 039e FFF7FEFF 		bl	_ZN4Move22MotorEndPointToMachineEjf
 2286 03a2 D9ED007A 		vldr.32	s15, [r9]
 2287 03a6 3060     		str	r0, [r6]
 2288 03a8 A742     		cmp	r7, r4
 2289 03aa 0546     		mov	r5, r0
 2290 03ac C6ED0C7A 		vstr.32	s15, [r6, #48]
 2291 03b0 00F28F80 		bhi	.L562
 2292 03b4 DBF80020 		ldr	r2, [fp]
 2293 03b8 019B     		ldr	r3, [sp, #4]
 2294 03ba F5EE407A 		vcmp.f32	s15, #0
 2295 03be 07EE900A 		vmov	s15, r0	@ int
 2296 03c2 02EB8402 		add	r2, r2, r4, lsl #2
 2297 03c6 D2ED6A6A 		vldr.32	s13, [r2, #424]
 2298 03ca F8EEE77A 		vcvt.f32.s32	s15, s15
 2299 03ce F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2300 03d2 87EEA67A 		vdiv.f32	s14, s15, s13
 2301 03d6 C8BF     		it	gt
 2302 03d8 0123     		movgt	r3, #1
 2303 03da 0193     		str	r3, [sp, #4]
 2304 03dc 86ED187A 		vstr.32	s14, [r6, #96]
 2305 03e0 50BB     		cbnz	r0, .L563
 2306              	.L448:
 2307 03e2 0134     		adds	r4, r4, #1
 2308 03e4 0C2C     		cmp	r4, #12
 2309 03e6 06F10406 		add	r6, r6, #4
 2310 03ea 09F10409 		add	r9, r9, #4
 2311 03ee 7FF43EAE 		bne	.L452
 2312 03f2 039B     		ldr	r3, [sp, #12]
 2313 03f4 059F     		ldr	r7, [sp, #20]
 2314 03f6 002B     		cmp	r3, #0
 2315 03f8 7FF4A7AE 		bne	.L453
 2316 03fc 76E0     		b	.L554
 2317              	.L438:
 2318 03fe 059B     		ldr	r3, [sp, #20]
 2319 0400 99ED008A 		vldr.32	s16, [r9]
 2320 0404 5868     		ldr	r0, [r3, #4]
 2321 0406 0022     		movs	r2, #0
 2322 0408 2146     		mov	r1, r4
 2323 040a FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 2324 040e 38EE400A 		vsub.f32	s0, s16, s0
 2325 0412 B5EE400A 		vcmp.f32	s0, #0
 2326 0416 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2327 041a 86ED180A 		vstr.32	s0, [r6, #96]
 2328 041e 3FF46EAE 		beq	.L446
 2329 0422 029B     		ldr	r3, [sp, #8]
 2330 0424 9A6E     		ldr	r2, [r3, #104]
 2331 0426 E240     		lsrs	r2, r2, r4
 2332 0428 D107     		lsls	r1, r2, #31
 2333 042a 77D5     		bpl	.L564
 2334 042c 059B     		ldr	r3, [sp, #20]
 2335 042e 9A7A     		ldrb	r2, [r3, #10]	@ zero_extendqisi2
 2336 0430 42F04002 		orr	r2, r2, #64
 2337 0434 9A72     		strb	r2, [r3, #10]
ARM GAS  /tmp/cc9m8tIQ.s 			page 42


 2338 0436 62E6     		b	.L446
 2339              	.L563:
 2340 0438 0121     		movs	r1, #1
 2341 043a 2046     		mov	r0, r4
 2342 043c FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
 2343 0440 85EAE571 		eor	r1, r5, r5, asr #31
 2344 0444 C6F8DC00 		str	r0, [r6, #220]
 2345 0448 8279     		ldrb	r2, [r0, #6]	@ zero_extendqisi2
 2346 044a A1EBE571 		sub	r1, r1, r5, asr #31
 2347 044e ED43     		mvns	r5, r5
 2348 0450 ED0F     		lsrs	r5, r5, #31
 2349 0452 65F30412 		bfi	r2, r5, #4, #1
 2350 0456 8160     		str	r1, [r0, #8]
 2351 0458 8271     		strb	r2, [r0, #6]
 2352              	.L494:
 2353 045a 99ED007A 		vldr.32	s14, [r9]
 2354 045e D6ED187A 		vldr.32	s15, [r6, #96]
 2355 0462 059B     		ldr	r3, [sp, #20]
 2356 0464 77EE677A 		vsub.f32	s15, s14, s15
 2357 0468 C9ED007A 		vstr.32	s15, [r9]
 2358 046c 9A7A     		ldrb	r2, [r3, #10]	@ zero_extendqisi2
 2359 046e 5306     		lsls	r3, r2, #25
 2360 0470 2CD5     		bpl	.L548
 2361 0472 029B     		ldr	r3, [sp, #8]
 2362 0474 93F87320 		ldrb	r2, [r3, #115]	@ zero_extendqisi2
 2363 0478 9507     		lsls	r5, r2, #30
 2364 047a 27D5     		bpl	.L548
 2365 047c E21B     		subs	r2, r4, r7
 2366 047e 082A     		cmp	r2, #8
 2367 0480 24D8     		bhi	.L548
 2368 0482 DBF80010 		ldr	r1, [fp]
 2369 0486 01EB8202 		add	r2, r1, r2, lsl #2
 2370 048a D2ED826A 		vldr.32	s13, [r2, #520]
 2371 048e F5EEC06A 		vcmpe.f32	s13, #0
 2372 0492 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2373 0496 19DD     		ble	.L548
 2374 0498 5AED017A 		vldr.32	s15, [r10, #-4]
 2375 049c 01EB8401 		add	r1, r1, r4, lsl #2
 2376 04a0 91ED766A 		vldr.32	s12, [r1, #472]
 2377 04a4 F4EE677A 		vcmp.f32	s15, s15
 2378 04a8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2379 04ac 86EE267A 		vdiv.f32	s14, s12, s13
 2380 04b0 80F1F380 		bvs	.L503
 2381 04b4 F4EE477A 		vcmp.f32	s15, s14
 2382 04b8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2383 04bc 48BF     		it	mi
 2384 04be B0EE677A 		vmovmi.f32	s14, s15
 2385              	.L450:
 2386 04c2 0123     		movs	r3, #1
 2387 04c4 0AED017A 		vstr.32	s14, [r10, #-4]
 2388 04c8 0393     		str	r3, [sp, #12]
 2389 04ca 8AE7     		b	.L448
 2390              	.L548:
 2391 04cc 0123     		movs	r3, #1
 2392 04ce 0393     		str	r3, [sp, #12]
 2393 04d0 87E7     		b	.L448
 2394              	.L562:
ARM GAS  /tmp/cc9m8tIQ.s 			page 43


 2395 04d2 049B     		ldr	r3, [sp, #16]
 2396 04d4 1A68     		ldr	r2, [r3]
 2397 04d6 069B     		ldr	r3, [sp, #24]
 2398 04d8 D26E     		ldr	r2, [r2, #108]
 2399 04da 53F82410 		ldr	r1, [r3, r4, lsl #2]
 2400 04de 754B     		ldr	r3, .L571
 2401 04e0 9A42     		cmp	r2, r3
 2402 04e2 A0EB0105 		sub	r5, r0, r1
 2403 04e6 3FF4F8AD 		beq	.L441
 2404 04ea DBE5     		b	.L439
 2405              	.L554:
 2406 04ec 009B     		ldr	r3, [sp]
 2407 04ee 6BB1     		cbz	r3, .L454
 2408 04f0 089A     		ldr	r2, [sp, #32]
 2409 04f2 5AB1     		cbz	r2, .L454
 2410 04f4 0299     		ldr	r1, [sp, #8]
 2411 04f6 7B68     		ldr	r3, [r7, #4]
 2412 04f8 01EB8209 		add	r9, r1, r2, lsl #2
 2413 04fc 099A     		ldr	r2, [sp, #36]
 2414 04fe 4C33     		adds	r3, r3, #76
 2415              	.L455:
 2416 0500 52F8041B 		ldr	r1, [r2], #4	@ float
 2417 0504 43F8041B 		str	r1, [r3], #4	@ float
 2418 0508 4A45     		cmp	r2, r9
 2419 050a F9D1     		bne	.L455
 2420              	.L454:
 2421 050c 0023     		movs	r3, #0
 2422 050e 0393     		str	r3, [sp, #12]
 2423 0510 0398     		ldr	r0, [sp, #12]
 2424 0512 23B0     		add	sp, sp, #140
 2425              		@ sp needed
 2426 0514 BDEC048B 		vldm	sp!, {d8-d9}
 2427 0518 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2428              	.L564:
 2429 051c 5A6E     		ldr	r2, [r3, #100]
 2430 051e E240     		lsrs	r2, r2, r4
 2431 0520 D207     		lsls	r2, r2, #31
 2432 0522 7FF5ECAD 		bpl	.L446
 2433 0526 059B     		ldr	r3, [sp, #20]
 2434 0528 9A7A     		ldrb	r2, [r3, #10]	@ zero_extendqisi2
 2435 052a 42F04002 		orr	r2, r2, #64
 2436 052e 9A72     		strb	r2, [r3, #10]
 2437 0530 E5E5     		b	.L446
 2438              	.L442:
 2439 0532 5242     		negs	r2, r2
 2440 0534 AA42     		cmp	r2, r5
 2441 0536 7FF7D0AD 		ble	.L441
 2442 053a 0544     		add	r5, r5, r0
 2443 053c CDE5     		b	.L441
 2444              	.L553:
 2445 053e 91F87330 		ldrb	r3, [r1, #115]	@ zero_extendqisi2
 2446 0542 00F11C06 		add	r6, r0, #28
 2447 0546 C3F30013 		ubfx	r3, r3, #4, #1
 2448 054a 3246     		mov	r2, r6
 2449 054c 2046     		mov	r0, r4
 2450 054e FFF7FEFF 		bl	_ZNK4Move21CartesianToMotorStepsEPKfPlb
 2451 0552 0028     		cmp	r0, #0
ARM GAS  /tmp/cc9m8tIQ.s 			page 44


 2452 0554 DAD0     		beq	.L454
 2453 0556 D4F8583A 		ldr	r3, [r4, #2648]
 2454 055a 9B7B     		ldrb	r3, [r3, #14]	@ zero_extendqisi2
 2455 055c 032B     		cmp	r3, #3
 2456 055e 00F08580 		beq	.L565
 2457 0562 0020     		movs	r0, #0
 2458              	.L435:
 2459 0564 BB7A     		ldrb	r3, [r7, #10]	@ zero_extendqisi2
 2460 0566 60F34103 		bfi	r3, r0, #1, #1
 2461 056a BB72     		strb	r3, [r7, #10]
 2462 056c 62E5     		b	.L436
 2463              	.L558:
 2464 056e 089A     		ldr	r2, [sp, #32]
 2465 0570 0C21     		movs	r1, #12
 2466 0572 2046     		mov	r0, r4
 2467 0574 FFF7FEFF 		bl	_ZN3DDA9NormaliseEPfjj
 2468 0578 3D46     		mov	r5, r7
 2469 057a AC35     		adds	r5, r5, #172
 2470 057c 85ED000A 		vstr.32	s0, [r5]
 2471 0580 65E6     		b	.L464
 2472              	.L560:
 2473 0582 0C22     		movs	r2, #12
 2474 0584 16A8     		add	r0, sp, #88
 2475 0586 B0EE678A 		vmov.f32	s16, s15
 2476 058a FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 2477 058e D3E6     		b	.L493
 2478              	.L557:
 2479 0590 049D     		ldr	r5, [sp, #16]
 2480 0592 97ED1F9A 		vldr.32	s18, [r7, #124]
 2481 0596 2B68     		ldr	r3, [r5]
 2482 0598 2846     		mov	r0, r5
 2483 059a 1B6A     		ldr	r3, [r3, #32]
 2484 059c 0021     		movs	r1, #0
 2485 059e 9847     		blx	r3
 2486 05a0 2B68     		ldr	r3, [r5]
 2487 05a2 97ED208A 		vldr.32	s16, [r7, #128]
 2488 05a6 1B6A     		ldr	r3, [r3, #32]
 2489 05a8 2846     		mov	r0, r5
 2490 05aa 0121     		movs	r1, #1
 2491 05ac F0EE408A 		vmov.f32	s17, s0
 2492 05b0 9847     		blx	r3
 2493 05b2 28EE000A 		vmul.f32	s0, s16, s0
 2494 05b6 D7ED217A 		vldr.32	s15, [r7, #132]
 2495 05ba A9EE280A 		vfma.f32	s0, s18, s17
 2496 05be 3846     		mov	r0, r7
 2497 05c0 3D46     		mov	r5, r7
 2498 05c2 AC35     		adds	r5, r5, #172
 2499 05c4 37EE800A 		vadd.f32	s0, s15, s0
 2500 05c8 87ED210A 		vstr.32	s0, [r7, #132]
 2501 05cc FFF7FEFF 		bl	_ZN3DDA12NormaliseXYZEv
 2502 05d0 85ED000A 		vstr.32	s0, [r5]
 2503 05d4 3BE6     		b	.L464
 2504              	.L556:
 2505 05d6 DFED387A 		vldr.32	s15, .L571+4
 2506 05da 9DED0C7A 		vldr.32	s14, [sp, #48]
 2507 05de B4EEE77A 		vcmpe.f32	s14, s15
 2508 05e2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  /tmp/cc9m8tIQ.s 			page 45


 2509 05e6 31DD     		ble	.L505
 2510 05e8 CDED0C7A 		vstr.32	s15, [sp, #48]
 2511 05ec 0022     		movs	r2, #0
 2512 05ee F8E5     		b	.L461
 2513              	.L561:
 2514 05f0 BB7A     		ldrb	r3, [r7, #10]	@ zero_extendqisi2
 2515 05f2 827A     		ldrb	r2, [r0, #10]	@ zero_extendqisi2
 2516 05f4 5340     		eors	r3, r3, r2
 2517 05f6 13F0480F 		tst	r3, #72
 2518 05fa 7FF4BFAE 		bne	.L487
 2519 05fe 97ED2C0A 		vldr.32	s0, [r7, #176]
 2520 0602 D7ED2B7A 		vldr.32	s15, [r7, #172]
 2521 0606 20EE270A 		vmul.f32	s0, s0, s15
 2522 060a 30EE000A 		vadd.f32	s0, s0, s0
 2523 060e B5EE400A 		vcmp.f32	s0, #0
 2524 0612 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2525 0616 B1EEC08A 		vsqrt.f32	s16, s0
 2526 061a 47D4     		bmi	.L566
 2527              	.L488:
 2528 061c B4EE488A 		vcmp.f32	s16, s16
 2529 0620 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2530 0624 D7ED2D7A 		vldr.32	s15, [r7, #180]
 2531 0628 3DD6     		bvs	.L567
 2532 062a B4EE678A 		vcmp.f32	s16, s15
 2533 062e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2534 0632 48BF     		it	mi
 2535 0634 F0EE487A 		vmovmi.f32	s15, s16
 2536              	.L489:
 2537 0638 C0ED357A 		vstr.32	s15, [r0, #212]
 2538 063c FFF7FEFF 		bl	_ZN3DDA11DoLookaheadEPS_
 2539 0640 7B68     		ldr	r3, [r7, #4]
 2540 0642 D3F8C430 		ldr	r3, [r3, #196]	@ float
 2541 0646 C7F8C030 		str	r3, [r7, #192]	@ float
 2542 064a 9AE6     		b	.L491
 2543              	.L505:
 2544 064c 0022     		movs	r2, #0
 2545 064e C8E5     		b	.L461
 2546              	.L555:
 2547 0650 0121     		movs	r1, #1
 2548 0652 2046     		mov	r0, r4
 2549 0654 FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
 2550 0658 2860     		str	r0, [r5]
 2551 065a 8379     		ldrb	r3, [r0, #6]	@ zero_extendqisi2
 2552 065c 8660     		str	r6, [r0, #8]
 2553 065e 43F01003 		orr	r3, r3, #16
 2554 0662 8371     		strb	r3, [r0, #6]
 2555 0664 7CE5     		b	.L457
 2556              	.L559:
 2557 0666 04F13005 		add	r5, r4, #48
 2558 066a F0E5     		b	.L464
 2559              	.L565:
 2560 066c FA69     		ldr	r2, [r7, #28]
 2561 066e EB69     		ldr	r3, [r5, #28]
 2562 0670 9A42     		cmp	r2, r3
 2563 0672 7FF477AF 		bne	.L435
 2564 0676 3A6A     		ldr	r2, [r7, #32]
 2565 0678 2B6A     		ldr	r3, [r5, #32]
ARM GAS  /tmp/cc9m8tIQ.s 			page 46


 2566 067a 9A42     		cmp	r2, r3
 2567 067c 7FF472AF 		bne	.L435
 2568 0680 6B6A     		ldr	r3, [r5, #36]
 2569 0682 786A     		ldr	r0, [r7, #36]
 2570 0684 C01A     		subs	r0, r0, r3
 2571 0686 18BF     		it	ne
 2572 0688 0120     		movne	r0, #1
 2573 068a 6BE7     		b	.L435
 2574              	.L481:
 2575 068c 0C22     		movs	r2, #12
 2576 068e 16A8     		add	r0, sp, #88
 2577 0690 FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 2578 0694 B0EE480A 		vmov.f32	s0, s16
 2579 0698 55E6     		b	.L484
 2580              	.L503:
 2581 069a B0EE677A 		vmov.f32	s14, s15
 2582 069e 10E7     		b	.L450
 2583              	.L506:
 2584 06a0 F0EE407A 		vmov.f32	s15, s0
 2585 06a4 0BE6     		b	.L475
 2586              	.L567:
 2587 06a6 F0EE487A 		vmov.f32	s15, s16
 2588 06aa C5E7     		b	.L489
 2589              	.L566:
 2590 06ac FFF7FEFF 		bl	sqrtf
 2591 06b0 7868     		ldr	r0, [r7, #4]
 2592 06b2 B3E7     		b	.L488
 2593              	.L572:
 2594              		.align	2
 2595              	.L571:
 2596 06b4 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 2597 06b8 00007A43 		.word	1132068864
 2598              		.size	_ZN3DDA4InitERN6GCodes7RawMoveEb, .-_ZN3DDA4InitERN6GCodes7RawMoveEb
 2599              		.section	.text._ZN3DDA19AdvanceBabySteppingEf,"ax",%progbits
 2600              		.align	1
 2601              		.p2align 2,,3
 2602              		.global	_ZN3DDA19AdvanceBabySteppingEf
 2603              		.syntax unified
 2604              		.thumb
 2605              		.thumb_func
 2606              		.fpu fpv4-sp-d16
 2607              		.type	_ZN3DDA19AdvanceBabySteppingEf, %function
 2608              	_ZN3DDA19AdvanceBabySteppingEf:
 2609              		@ args = 0, pretend = 0, frame = 0
 2610              		@ frame_needed = 0, uses_anonymous_args = 0
 2611 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2612 0004 0546     		mov	r5, r0
 2613 0006 2DED048B 		vpush.64	{d8, d9}
 2614 000a 0446     		mov	r4, r0
 2615 000c B0EE409A 		vmov.f32	s18, s0
 2616 0010 00E0     		b	.L574
 2617              	.L597:
 2618 0012 1C46     		mov	r4, r3
 2619              	.L574:
 2620 0014 6368     		ldr	r3, [r4, #4]
 2621 0016 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 2622 0018 012A     		cmp	r2, #1
ARM GAS  /tmp/cc9m8tIQ.s 			page 47


 2623 001a FAD0     		beq	.L597
 2624 001c AC42     		cmp	r4, r5
 2625 001e DFED808A 		vldr.32	s17, .L617
 2626 0022 00F09380 		beq	.L573
 2627 0026 DFF80082 		ldr	r8, .L617+8
 2628 002a DFED7E9A 		vldr.32	s19, .L617+4
 2629              	.L596:
 2630 002e A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 2631 0030 B5EE409A 		vcmp.f32	s18, #0
 2632 0034 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2633 0038 03F00201 		and	r1, r3, #2
 2634 003c 51D0     		beq	.L600
 2635 003e 5E06     		lsls	r6, r3, #25
 2636 0040 4FD5     		bpl	.L600
 2637 0042 21B9     		cbnz	r1, .L580
 2638 0044 D4F80031 		ldr	r3, [r4, #256]
 2639 0048 002B     		cmp	r3, #0
 2640 004a 00F0D880 		beq	.L612
 2641              	.L580:
 2642 004e D8F80030 		ldr	r3, [r8]
 2643 0052 94ED326A 		vldr.32	s12, [r4, #200]
 2644 0056 93ED787A 		vldr.32	s14, [r3, #480]
 2645 005a D4ED2B6A 		vldr.32	s13, [r4, #172]
 2646 005e F6EE007A 		vmov.f32	s15, #5.0e-1
 2647 0062 27EE277A 		vmul.f32	s14, s14, s15
 2648 0066 C7EE067A 		vdiv.f32	s15, s14, s12
 2649 006a F4EE697A 		vcmp.f32	s15, s19
 2650 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2651 0072 C8BF     		it	gt
 2652 0074 F0EE697A 		vmovgt.f32	s15, s19
 2653 0078 66EEA77A 		vmul.f32	s15, s13, s15
 2654 007c B4EE499A 		vcmp.f32	s18, s18
 2655 0080 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2656 0084 B1EE678A 		vneg.f32	s16, s15
 2657 0088 80F1C780 		bvs	.L613
 2658 008c F4EEC97A 		vcmpe.f32	s15, s18
 2659 0090 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2660 0094 40F3AA80 		ble	.L614
 2661 0098 F0EE497A 		vmov.f32	s15, s18
 2662              	.L582:
 2663 009c B4EE678A 		vcmp.f32	s16, s15
 2664 00a0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2665 00a4 48BF     		it	mi
 2666 00a6 B0EE678A 		vmovmi.f32	s16, s15
 2667              	.L581:
 2668 00aa 88EE267A 		vdiv.f32	s14, s16, s13
 2669 00ae 2046     		mov	r0, r4
 2670 00b0 D4ED217A 		vldr.32	s15, [r4, #132]
 2671 00b4 77EE877A 		vadd.f32	s15, s15, s14
 2672 00b8 C4ED217A 		vstr.32	s15, [r4, #132]
 2673 00bc FFF7FEFF 		bl	_ZN3DDA12NormaliseXYZEv
 2674 00c0 D4ED2B7A 		vldr.32	s15, [r4, #172]
 2675 00c4 27EE800A 		vmul.f32	s0, s15, s0
 2676 00c8 2046     		mov	r0, r4
 2677 00ca 84ED2B0A 		vstr.32	s0, [r4, #172]
 2678 00ce FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 2679 00d2 A17A     		ldrb	r1, [r4, #10]	@ zero_extendqisi2
ARM GAS  /tmp/cc9m8tIQ.s 			page 48


 2680 00d4 78EE888A 		vadd.f32	s17, s17, s16
 2681 00d8 39EE489A 		vsub.f32	s18, s18, s16
 2682 00dc 01F00201 		and	r1, r1, #2
 2683 00e0 01E0     		b	.L576
 2684              	.L600:
 2685 00e2 9FED4F8A 		vldr.32	s16, .L617
 2686              	.L576:
 2687 00e6 D4ED157A 		vldr.32	s15, [r4, #84]
 2688 00ea D8F80030 		ldr	r3, [r8]
 2689 00ee 77EEA87A 		vadd.f32	s15, s15, s17
 2690 00f2 C4ED157A 		vstr.32	s15, [r4, #84]
 2691 00f6 79BB     		cbnz	r1, .L615
 2692 00f8 D3ED6C7A 		vldr.32	s15, [r3, #432]
 2693 00fc 626A     		ldr	r2, [r4, #36]
 2694 00fe 68EEA77A 		vmul.f32	s15, s17, s15
 2695 0102 B5EE408A 		vcmp.f32	s16, #0
 2696 0106 FDEEE77A 		vcvt.s32.f32	s15, s15
 2697 010a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2698 010e 17EE901A 		vmov	r1, s15	@ int
 2699 0112 0A44     		add	r2, r2, r1
 2700 0114 6262     		str	r2, [r4, #36]
 2701 0116 15D0     		beq	.L590
 2702 0118 D3ED6C7A 		vldr.32	s15, [r3, #432]
 2703 011c D4F80021 		ldr	r2, [r4, #256]
 2704 0120 28EE278A 		vmul.f32	s16, s16, s15
 2705 0124 1179     		ldrb	r1, [r2, #4]	@ zero_extendqisi2
 2706 0126 FDEEC87A 		vcvt.s32.f32	s15, s16
 2707 012a 0129     		cmp	r1, #1
 2708 012c 17EE903A 		vmov	r3, s15	@ int
 2709 0130 55D0     		beq	.L616
 2710 0132 0121     		movs	r1, #1
 2711 0134 1171     		strb	r1, [r2, #4]
 2712              	.L594:
 2713 0136 002B     		cmp	r3, #0
 2714 0138 9179     		ldrb	r1, [r2, #6]	@ zero_extendqisi2
 2715 013a 4ADB     		blt	.L595
 2716 013c 9360     		str	r3, [r2, #8]
 2717 013e 41F01003 		orr	r3, r1, #16
 2718 0142 9371     		strb	r3, [r2, #6]
 2719              	.L590:
 2720 0144 2468     		ldr	r4, [r4]
 2721 0146 A542     		cmp	r5, r4
 2722 0148 7FF471AF 		bne	.L596
 2723              	.L573:
 2724 014c B0EE680A 		vmov.f32	s0, s17
 2725 0150 BDEC048B 		vldm	sp!, {d8-d9}
 2726 0154 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2727              	.L615:
 2728 0158 03F5D470 		add	r0, r3, #424
 2729 015c 03F5DA72 		add	r2, r3, #436
 2730 0160 04F11C01 		add	r1, r4, #28
 2731              	.L589:
 2732 0164 F0EC017A 		vldmia.32	r0!, {s15}
 2733 0168 0B68     		ldr	r3, [r1]
 2734 016a 68EEA77A 		vmul.f32	s15, s17, s15
 2735 016e B5EE408A 		vcmp.f32	s16, #0
 2736 0172 FDEEE77A 		vcvt.s32.f32	s15, s15
ARM GAS  /tmp/cc9m8tIQ.s 			page 49


 2737 0176 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2738 017a 17EE906A 		vmov	r6, s15	@ int
 2739 017e 1E44     		add	r6, r6, r3
 2740 0180 41F8046B 		str	r6, [r1], #4
 2741 0184 1BD0     		beq	.L585
 2742 0186 D1F8D870 		ldr	r7, [r1, #216]
 2743 018a C7B1     		cbz	r7, .L585
 2744 018c 50ED017A 		vldr.32	s15, [r0, #-4]
 2745 0190 97F806C0 		ldrb	ip, [r7, #6]	@ zero_extendqisi2
 2746 0194 BB68     		ldr	r3, [r7, #8]
 2747 0196 68EE277A 		vmul.f32	s15, s16, s15
 2748 019a 1CF0100F 		tst	ip, #16
 2749 019e FDEEE77A 		vcvt.s32.f32	s15, s15
 2750 01a2 97F806C0 		ldrb	ip, [r7, #6]	@ zero_extendqisi2
 2751 01a6 17EE906A 		vmov	r6, s15	@ int
 2752 01aa 1ABF     		itte	ne
 2753 01ac F618     		addne	r6, r6, r3
 2754 01ae 3346     		movne	r3, r6
 2755 01b0 F31A     		subeq	r3, r6, r3
 2756 01b2 002B     		cmp	r3, #0
 2757 01b4 06DB     		blt	.L588
 2758 01b6 BB60     		str	r3, [r7, #8]
 2759 01b8 4CF01003 		orr	r3, ip, #16
 2760 01bc BB71     		strb	r3, [r7, #6]
 2761              	.L585:
 2762 01be 8242     		cmp	r2, r0
 2763 01c0 D0D1     		bne	.L589
 2764 01c2 BFE7     		b	.L590
 2765              	.L588:
 2766 01c4 5B42     		negs	r3, r3
 2767 01c6 6FF3041C 		bfc	ip, #4, #1
 2768 01ca BB60     		str	r3, [r7, #8]
 2769 01cc 87F806C0 		strb	ip, [r7, #6]
 2770 01d0 F5E7     		b	.L585
 2771              	.L595:
 2772 01d2 5B42     		negs	r3, r3
 2773 01d4 6FF30411 		bfc	r1, #4, #1
 2774 01d8 9360     		str	r3, [r2, #8]
 2775 01da 9171     		strb	r1, [r2, #6]
 2776 01dc B2E7     		b	.L590
 2777              	.L616:
 2778 01de 9079     		ldrb	r0, [r2, #6]	@ zero_extendqisi2
 2779 01e0 9168     		ldr	r1, [r2, #8]
 2780 01e2 C006     		lsls	r0, r0, #27
 2781 01e4 4CBF     		ite	mi
 2782 01e6 5B18     		addmi	r3, r3, r1
 2783 01e8 5B1A     		subpl	r3, r3, r1
 2784 01ea A4E7     		b	.L594
 2785              	.L614:
 2786 01ec F4EE677A 		vcmp.f32	s15, s15
 2787 01f0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2788 01f4 FFF552AF 		bvc	.L582
 2789 01f8 B0EE678A 		vmov.f32	s16, s15
 2790 01fc 55E7     		b	.L581
 2791              	.L612:
 2792 01fe 0220     		movs	r0, #2
 2793 0200 FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
ARM GAS  /tmp/cc9m8tIQ.s 			page 50


 2794 0204 C4F80001 		str	r0, [r4, #256]
 2795 0208 0028     		cmp	r0, #0
 2796 020a 7FF420AF 		bne	.L580
 2797 020e A17A     		ldrb	r1, [r4, #10]	@ zero_extendqisi2
 2798 0210 9FED038A 		vldr.32	s16, .L617
 2799 0214 01F00201 		and	r1, r1, #2
 2800 0218 65E7     		b	.L576
 2801              	.L613:
 2802 021a B0EE498A 		vmov.f32	s16, s18
 2803 021e 44E7     		b	.L581
 2804              	.L618:
 2805              		.align	2
 2806              	.L617:
 2807 0220 00000000 		.word	0
 2808 0224 CDCCCC3D 		.word	1036831949
 2809 0228 00000000 		.word	reprap
 2810              		.size	_ZN3DDA19AdvanceBabySteppingEf, .-_ZN3DDA19AdvanceBabySteppingEf
 2811              		.section	.text._ZN3DDA9MagnitudeEPKfj,"ax",%progbits
 2812              		.align	1
 2813              		.p2align 2,,3
 2814              		.global	_ZN3DDA9MagnitudeEPKfj
 2815              		.syntax unified
 2816              		.thumb
 2817              		.thumb_func
 2818              		.fpu fpv4-sp-d16
 2819              		.type	_ZN3DDA9MagnitudeEPKfj, %function
 2820              	_ZN3DDA9MagnitudeEPKfj:
 2821              		@ args = 0, pretend = 0, frame = 0
 2822              		@ frame_needed = 0, uses_anonymous_args = 0
 2823 0000 08B5     		push	{r3, lr}
 2824 0002 2DED028B 		vpush.64	{d8}
 2825 0006 A9B1     		cbz	r1, .L622
 2826 0008 9FED0F0A 		vldr.32	s0, .L626
 2827 000c 00EB8101 		add	r1, r0, r1, lsl #2
 2828              	.L621:
 2829 0010 F0EC017A 		vldmia.32	r0!, {s15}
 2830 0014 8842     		cmp	r0, r1
 2831 0016 A7EEA70A 		vfma.f32	s0, s15, s15
 2832 001a F9D1     		bne	.L621
 2833 001c B5EE400A 		vcmp.f32	s0, #0
 2834 0020 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2835 0024 B1EEC08A 		vsqrt.f32	s16, s0
 2836 0028 0BD4     		bmi	.L625
 2837              	.L619:
 2838 002a B0EE480A 		vmov.f32	s0, s16
 2839 002e BDEC028B 		vldm	sp!, {d8}
 2840 0032 08BD     		pop	{r3, pc}
 2841              	.L622:
 2842 0034 9FED048A 		vldr.32	s16, .L626
 2843 0038 B0EE480A 		vmov.f32	s0, s16
 2844 003c BDEC028B 		vldm	sp!, {d8}
 2845 0040 08BD     		pop	{r3, pc}
 2846              	.L625:
 2847 0042 FFF7FEFF 		bl	sqrtf
 2848 0046 F0E7     		b	.L619
 2849              	.L627:
 2850              		.align	2
ARM GAS  /tmp/cc9m8tIQ.s 			page 51


 2851              	.L626:
 2852 0048 00000000 		.word	0
 2853              		.size	_ZN3DDA9MagnitudeEPKfj, .-_ZN3DDA9MagnitudeEPKfj
 2854              		.section	.text._ZN3DDA5ScaleEPffj,"ax",%progbits
 2855              		.align	1
 2856              		.p2align 2,,3
 2857              		.global	_ZN3DDA5ScaleEPffj
 2858              		.syntax unified
 2859              		.thumb
 2860              		.thumb_func
 2861              		.fpu fpv4-sp-d16
 2862              		.type	_ZN3DDA5ScaleEPffj, %function
 2863              	_ZN3DDA5ScaleEPffj:
 2864              		@ args = 0, pretend = 0, frame = 0
 2865              		@ frame_needed = 0, uses_anonymous_args = 0
 2866              		@ link register save eliminated.
 2867 0000 49B1     		cbz	r1, .L628
 2868 0002 00EB8101 		add	r1, r0, r1, lsl #2
 2869              	.L630:
 2870 0006 D0ED007A 		vldr.32	s15, [r0]
 2871 000a 67EE807A 		vmul.f32	s15, s15, s0
 2872 000e E0EC017A 		vstmia.32	r0!, {s15}
 2873 0012 8842     		cmp	r0, r1
 2874 0014 F7D1     		bne	.L630
 2875              	.L628:
 2876 0016 7047     		bx	lr
 2877              		.size	_ZN3DDA5ScaleEPffj, .-_ZN3DDA5ScaleEPffj
 2878              		.section	.text._ZN3DDA8AbsoluteEPfj,"ax",%progbits
 2879              		.align	1
 2880              		.p2align 2,,3
 2881              		.global	_ZN3DDA8AbsoluteEPfj
 2882              		.syntax unified
 2883              		.thumb
 2884              		.thumb_func
 2885              		.fpu fpv4-sp-d16
 2886              		.type	_ZN3DDA8AbsoluteEPfj, %function
 2887              	_ZN3DDA8AbsoluteEPfj:
 2888              		@ args = 0, pretend = 0, frame = 0
 2889              		@ frame_needed = 0, uses_anonymous_args = 0
 2890              		@ link register save eliminated.
 2891 0000 49B1     		cbz	r1, .L635
 2892 0002 00EB8101 		add	r1, r0, r1, lsl #2
 2893              	.L637:
 2894 0006 D0ED007A 		vldr.32	s15, [r0]
 2895 000a F0EEE77A 		vabs.f32	s15, s15
 2896 000e E0EC017A 		vstmia.32	r0!, {s15}
 2897 0012 8842     		cmp	r0, r1
 2898 0014 F7D1     		bne	.L637
 2899              	.L635:
 2900 0016 7047     		bx	lr
 2901              		.size	_ZN3DDA8AbsoluteEPfj, .-_ZN3DDA8AbsoluteEPfj
 2902              		.section	.text.hot._ZN3DDA5StartEm,"ax",%progbits
 2903              		.align	1
 2904              		.p2align 2,,3
 2905              		.global	_ZN3DDA5StartEm
 2906              		.syntax unified
 2907              		.thumb
ARM GAS  /tmp/cc9m8tIQ.s 			page 52


 2908              		.thumb_func
 2909              		.fpu fpv4-sp-d16
 2910              		.type	_ZN3DDA5StartEm, %function
 2911              	_ZN3DDA5StartEm:
 2912              		@ args = 0, pretend = 0, frame = 16
 2913              		@ frame_needed = 0, uses_anonymous_args = 0
 2914 0000 D0F8F430 		ldr	r3, [r0, #244]
 2915 0004 C0F8DC10 		str	r1, [r0, #220]
 2916 0008 0322     		movs	r2, #3
 2917 000a 0272     		strb	r2, [r0, #8]
 2918 000c 002B     		cmp	r3, #0
 2919 000e 00F09480 		beq	.L673
 2920 0012 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2921 0016 DFF82CB1 		ldr	fp, .L680+4
 2922 001a 85B0     		sub	sp, sp, #20
 2923 001c DBF81030 		ldr	r3, [fp, #16]
 2924 0020 0290     		str	r0, [sp, #8]
 2925 0022 0024     		movs	r4, #0
 2926 0024 00F1F407 		add	r7, r0, #244
 2927 0028 0397     		str	r7, [sp, #12]
 2928 002a D3F89892 		ldr	r9, [r3, #664]
 2929 002e 0194     		str	r4, [sp, #4]
 2930 0030 A246     		mov	r10, r4
 2931 0032 02E0     		b	.L647
 2932              	.L645:
 2933 0034 0134     		adds	r4, r4, #1
 2934 0036 0C2C     		cmp	r4, #12
 2935 0038 23D0     		beq	.L676
 2936              	.L647:
 2937 003a 57F8045F 		ldr	r5, [r7, #4]!
 2938 003e 002D     		cmp	r5, #0
 2939 0040 F8D0     		beq	.L645
 2940 0042 2E79     		ldrb	r6, [r5, #4]	@ zero_extendqisi2
 2941 0044 012E     		cmp	r6, #1
 2942 0046 F5D1     		bne	.L645
 2943 0048 95F80580 		ldrb	r8, [r5, #5]	@ zero_extendqisi2
 2944 004c AA79     		ldrb	r2, [r5, #6]	@ zero_extendqisi2
 2945 004e DBF80000 		ldr	r0, [fp]
 2946 0052 C2F30012 		ubfx	r2, r2, #4, #1
 2947 0056 4146     		mov	r1, r8
 2948 0058 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 2949 005c A4EB0902 		sub	r2, r4, r9
 2950 0060 C845     		cmp	r8, r9
 2951 0062 06FA02F6 		lsl	r6, r6, r2
 2952 0066 E5D3     		bcc	.L645
 2953 0068 AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 2954 006a DB06     		lsls	r3, r3, #27
 2955 006c 58BF     		it	pl
 2956 006e 019B     		ldrpl	r3, [sp, #4]
 2957 0070 04F10104 		add	r4, r4, #1
 2958 0074 56BF     		itet	pl
 2959 0076 3343     		orrpl	r3, r3, r6
 2960 0078 4AEA060A 		orrmi	r10, r10, r6
 2961 007c 0193     		strpl	r3, [sp, #4]
 2962 007e 0C2C     		cmp	r4, #12
 2963 0080 DBD1     		bne	.L647
 2964              	.L676:
ARM GAS  /tmp/cc9m8tIQ.s 			page 53


 2965 0082 5346     		mov	r3, r10
 2966 0084 DDF80880 		ldr	r8, [sp, #8]
 2967 0088 FBB9     		cbnz	r3, .L648
 2968 008a 019A     		ldr	r2, [sp, #4]
 2969 008c EAB9     		cbnz	r2, .L648
 2970 008e DBF80000 		ldr	r0, [fp]
 2971 0092 00F68423 		addw	r3, r0, #2692
 2972 0096 93ED000A 		vldr.32	s0, [r3]
 2973              	.L654:
 2974 009a B5EEC00A 		vcmpe.f32	s0, #0
 2975 009e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2976 00a2 05DD     		ble	.L656
 2977 00a4 00F68820 		addw	r0, r0, #2696
 2978 00a8 9FED250A 		vldr.32	s0, .L680
 2979 00ac FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 2980              	.L656:
 2981 00b0 D8F8F430 		ldr	r3, [r8, #244]
 2982 00b4 002B     		cmp	r3, #0
 2983 00b6 38D0     		beq	.L644
 2984              	.L678:
 2985 00b8 5869     		ldr	r0, [r3, #20]
 2986 00ba D8F8DC30 		ldr	r3, [r8, #220]
 2987 00be 1844     		add	r0, r0, r3
 2988 00c0 05B0     		add	sp, sp, #20
 2989              		@ sp needed
 2990 00c2 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2991 00c6 FFF7FEBF 		b	_ZN8Platform21ScheduleStepInterruptEm
 2992              	.L648:
 2993 00ca 1946     		mov	r1, r3
 2994 00cc 019A     		ldr	r2, [sp, #4]
 2995 00ce 1D48     		ldr	r0, .L680+4
 2996 00d0 FFF7FEFF 		bl	_ZN6RepRap30GetProhibitedExtruderMovementsEjj
 2997 00d4 D8F8F430 		ldr	r3, [r8, #244]
 2998 00d8 039C     		ldr	r4, [sp, #12]
 2999 00da 0027     		movs	r7, #0
 3000 00dc 0126     		movs	r6, #1
 3001 00de 7BB1     		cbz	r3, .L651
 3002              	.L677:
 3003 00e0 5A79     		ldrb	r2, [r3, #5]	@ zero_extendqisi2
 3004 00e2 1968     		ldr	r1, [r3]
 3005 00e4 4A45     		cmp	r2, r9
 3006 00e6 25D3     		bcc	.L652
 3007 00e8 A2EB0905 		sub	r5, r2, r9
 3008 00ec 0B2A     		cmp	r2, #11
 3009 00ee 06FA05F5 		lsl	r5, r6, r5
 3010 00f2 1FD8     		bhi	.L652
 3011 00f4 0542     		tst	r5, r0
 3012 00f6 1CD0     		beq	.L660
 3013 00f8 2160     		str	r1, [r4]
 3014 00fa 0B46     		mov	r3, r1
 3015              	.L679:
 3016 00fc 002B     		cmp	r3, #0
 3017 00fe EFD1     		bne	.L677
 3018              	.L651:
 3019 0100 DBF80000 		ldr	r0, [fp]
 3020 0104 00F68423 		addw	r3, r0, #2692
 3021 0108 93ED000A 		vldr.32	s0, [r3]
ARM GAS  /tmp/cc9m8tIQ.s 			page 54


 3022 010c 002F     		cmp	r7, #0
 3023 010e C4D0     		beq	.L654
 3024 0110 B5EEC00A 		vcmpe.f32	s0, #0
 3025 0114 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3026 0118 CADD     		ble	.L656
 3027 011a 00F68820 		addw	r0, r0, #2696
 3028 011e FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 3029 0122 D8F8F430 		ldr	r3, [r8, #244]
 3030 0126 002B     		cmp	r3, #0
 3031 0128 C6D1     		bne	.L678
 3032              	.L644:
 3033 012a 0120     		movs	r0, #1
 3034 012c 05B0     		add	sp, sp, #20
 3035              		@ sp needed
 3036 012e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3037              	.L660:
 3038 0132 0127     		movs	r7, #1
 3039              	.L652:
 3040 0134 1C46     		mov	r4, r3
 3041 0136 0B46     		mov	r3, r1
 3042 0138 E0E7     		b	.L679
 3043              	.L673:
 3044 013a 0120     		movs	r0, #1
 3045 013c 7047     		bx	lr
 3046              	.L681:
 3047 013e 00BF     		.align	2
 3048              	.L680:
 3049 0140 00000000 		.word	0
 3050 0144 00000000 		.word	reprap
 3051              		.size	_ZN3DDA5StartEm, .-_ZN3DDA5StartEm
 3052              		.section	.text._ZN3DDA9StopDriveEj,"ax",%progbits
 3053              		.align	1
 3054              		.p2align 2,,3
 3055              		.global	_ZN3DDA9StopDriveEj
 3056              		.syntax unified
 3057              		.thumb
 3058              		.thumb_func
 3059              		.fpu fpv4-sp-d16
 3060              		.type	_ZN3DDA9StopDriveEj, %function
 3061              	_ZN3DDA9StopDriveEj:
 3062              		@ args = 0, pretend = 0, frame = 0
 3063              		@ frame_needed = 0, uses_anonymous_args = 0
 3064              		@ link register save eliminated.
 3065 0000 00EB8102 		add	r2, r0, r1, lsl #2
 3066 0004 D2F8F830 		ldr	r3, [r2, #248]
 3067 0008 E3B1     		cbz	r3, .L714
 3068 000a 70B4     		push	{r4, r5, r6}
 3069 000c 1C79     		ldrb	r4, [r3, #4]	@ zero_extendqisi2
 3070 000e 012C     		cmp	r4, #1
 3071 0010 01D0     		beq	.L719
 3072              	.L682:
 3073 0012 70BC     		pop	{r4, r5, r6}
 3074 0014 7047     		bx	lr
 3075              	.L719:
 3076 0016 0025     		movs	r5, #0
 3077 0018 1E4C     		ldr	r4, .L722
 3078 001a 1D71     		strb	r5, [r3, #4]
ARM GAS  /tmp/cc9m8tIQ.s 			page 55


 3079 001c 2469     		ldr	r4, [r4, #16]
 3080 001e D4F89842 		ldr	r4, [r4, #664]
 3081 0022 A142     		cmp	r1, r4
 3082 0024 0FD3     		bcc	.L720
 3083              	.L686:
 3084 0026 D0F8F420 		ldr	r2, [r0, #244]
 3085 002a 52B3     		cbz	r2, .L691
 3086 002c 5379     		ldrb	r3, [r2, #5]	@ zero_extendqisi2
 3087 002e 9942     		cmp	r1, r3
 3088 0030 04D1     		bne	.L693
 3089 0032 1DE0     		b	.L721
 3090              	.L712:
 3091 0034 5C79     		ldrb	r4, [r3, #5]	@ zero_extendqisi2
 3092 0036 A142     		cmp	r1, r4
 3093 0038 1DD0     		beq	.L694
 3094 003a 1A46     		mov	r2, r3
 3095              	.L693:
 3096 003c 1368     		ldr	r3, [r2]
 3097 003e 002B     		cmp	r3, #0
 3098 0040 F8D1     		bne	.L712
 3099 0042 E6E7     		b	.L682
 3100              	.L714:
 3101 0044 7047     		bx	lr
 3102              	.L720:
 3103 0046 03F10804 		add	r4, r3, #8
 3104 004a 70CC     		ldm	r4, {r4, r5, r6}
 3105 004c A642     		cmp	r6, r4
 3106 004e 1ED8     		bhi	.L718
 3107 0050 AE42     		cmp	r6, r5
 3108 0052 19D8     		bhi	.L689
 3109              	.L717:
 3110 0054 641B     		subs	r4, r4, r5
 3111 0056 0134     		adds	r4, r4, #1
 3112              	.L688:
 3113 0058 9B79     		ldrb	r3, [r3, #6]	@ zero_extendqisi2
 3114 005a DB06     		lsls	r3, r3, #27
 3115 005c D369     		ldr	r3, [r2, #28]
 3116 005e 58BF     		it	pl
 3117 0060 6442     		rsbpl	r4, r4, #0
 3118 0062 1C1B     		subs	r4, r3, r4
 3119 0064 D461     		str	r4, [r2, #28]
 3120 0066 837A     		ldrb	r3, [r0, #10]	@ zero_extendqisi2
 3121 0068 6FF30003 		bfc	r3, #0, #1
 3122 006c 8372     		strb	r3, [r0, #10]
 3123 006e DAE7     		b	.L686
 3124              	.L721:
 3125 0070 1346     		mov	r3, r2
 3126 0072 00F1F402 		add	r2, r0, #244
 3127              	.L694:
 3128 0076 1B68     		ldr	r3, [r3]
 3129 0078 1360     		str	r3, [r2]
 3130 007a D0F8F430 		ldr	r3, [r0, #244]
 3131 007e 002B     		cmp	r3, #0
 3132 0080 C7D1     		bne	.L682
 3133              	.L691:
 3134 0082 0423     		movs	r3, #4
 3135 0084 0372     		strb	r3, [r0, #8]
ARM GAS  /tmp/cc9m8tIQ.s 			page 56


 3136 0086 C4E7     		b	.L682
 3137              	.L689:
 3138 0088 C4EB4604 		rsb	r4, r4, r6, lsl #1
 3139 008c 023C     		subs	r4, r4, #2
 3140              	.L718:
 3141 008e 002D     		cmp	r5, #0
 3142 0090 E2D0     		beq	.L688
 3143 0092 DFE7     		b	.L717
 3144              	.L723:
 3145              		.align	2
 3146              	.L722:
 3147 0094 00000000 		.word	reprap
 3148              		.size	_ZN3DDA9StopDriveEj, .-_ZN3DDA9StopDriveEj
 3149              		.section	.text._ZN3DDA13CheckEndstopsER8Platform,"ax",%progbits
 3150              		.align	1
 3151              		.p2align 2,,3
 3152              		.global	_ZN3DDA13CheckEndstopsER8Platform
 3153              		.syntax unified
 3154              		.thumb
 3155              		.thumb_func
 3156              		.fpu fpv4-sp-d16
 3157              		.type	_ZN3DDA13CheckEndstopsER8Platform, %function
 3158              	_ZN3DDA13CheckEndstopsER8Platform:
 3159              		@ args = 0, pretend = 0, frame = 8
 3160              		@ frame_needed = 0, uses_anonymous_args = 0
 3161 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3162 0004 C368     		ldr	r3, [r0, #12]
 3163 0006 002B     		cmp	r3, #0
 3164 0008 85B0     		sub	sp, sp, #20
 3165 000a 0546     		mov	r5, r0
 3166 000c 0E46     		mov	r6, r1
 3167 000e C0F28580 		blt	.L765
 3168              	.L725:
 3169 0012 DFF88481 		ldr	r8, .L775
 3170 0016 D8F81020 		ldr	r2, [r8, #16]
 3171 001a 0024     		movs	r4, #0
 3172 001c D2F89872 		ldr	r7, [r2, #664]
 3173 0020 4FF0010A 		mov	r10, #1
 3174 0024 0BE0     		b	.L746
 3175              	.L768:
 3176 0026 BBF1030F 		cmp	fp, #3
 3177 002a 04D1     		bne	.L734
 3178 002c EA68     		ldr	r2, [r5, #12]
 3179 002e 0AFA04F3 		lsl	r3, r10, r4
 3180 0032 9A42     		cmp	r2, r3
 3181 0034 6AD0     		beq	.L766
 3182              	.L734:
 3183 0036 0134     		adds	r4, r4, #1
 3184 0038 0C2C     		cmp	r4, #12
 3185 003a 1ED0     		beq	.L724
 3186              	.L770:
 3187 003c EB68     		ldr	r3, [r5, #12]
 3188              	.L746:
 3189 003e 23FA04F2 		lsr	r2, r3, r4
 3190 0042 D207     		lsls	r2, r2, #31
 3191 0044 F7D5     		bpl	.L734
 3192 0046 DB00     		lsls	r3, r3, #3
ARM GAS  /tmp/cc9m8tIQ.s 			page 57


 3193 0048 2146     		mov	r1, r4
 3194 004a 3046     		mov	r0, r6
 3195 004c 01D5     		bpl	.L735
 3196 004e A742     		cmp	r7, r4
 3197 0050 16D9     		bls	.L767
 3198              	.L735:
 3199 0052 FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 3200 0056 B0F1000B 		subs	fp, r0, #0
 3201 005a ECDD     		ble	.L734
 3202 005c BBF1020F 		cmp	fp, #2
 3203 0060 E1DC     		bgt	.L768
 3204 0062 EB68     		ldr	r3, [r5, #12]
 3205 0064 DA00     		lsls	r2, r3, #3
 3206 0066 14D5     		bpl	.L739
 3207              	.L771:
 3208 0068 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 3209 006a 032B     		cmp	r3, #3
 3210 006c 63D0     		beq	.L769
 3211              	.L740:
 3212 006e 0134     		adds	r4, r4, #1
 3213 0070 4FF00403 		mov	r3, #4
 3214 0074 0C2C     		cmp	r4, #12
 3215 0076 2B72     		strb	r3, [r5, #8]
 3216 0078 E0D1     		bne	.L770
 3217              	.L724:
 3218 007a 05B0     		add	sp, sp, #20
 3219              		@ sp needed
 3220 007c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3221              	.L767:
 3222 0080 FFF7FEFF 		bl	_ZNK8Platform17EndStopInputStateEj
 3223 0084 0028     		cmp	r0, #0
 3224 0086 D6D0     		beq	.L734
 3225 0088 EB68     		ldr	r3, [r5, #12]
 3226 008a DA00     		lsls	r2, r3, #3
 3227 008c 4FF0010B 		mov	fp, #1
 3228 0090 EAD4     		bmi	.L771
 3229              	.L739:
 3230 0092 0AFA04F2 		lsl	r2, r10, r4
 3231 0096 23EA0203 		bic	r3, r3, r2
 3232 009a 0392     		str	r2, [sp, #12]
 3233 009c D8F80820 		ldr	r2, [r8, #8]
 3234 00a0 EB60     		str	r3, [r5, #12]
 3235 00a2 D2F8580A 		ldr	r0, [r2, #2648]
 3236 00a6 0290     		str	r0, [sp, #8]
 3237 00a8 0BB1     		cbz	r3, .L742
 3238 00aa A742     		cmp	r7, r4
 3239 00ac 23D8     		bhi	.L772
 3240              	.L742:
 3241 00ae 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 3242 00b0 032B     		cmp	r3, #3
 3243 00b2 4CD0     		beq	.L773
 3244              	.L744:
 3245 00b4 4FF00403 		mov	r3, #4
 3246 00b8 A742     		cmp	r7, r4
 3247 00ba 2B72     		strb	r3, [r5, #8]
 3248 00bc BBD9     		bls	.L734
 3249              	.L743:
ARM GAS  /tmp/cc9m8tIQ.s 			page 58


 3250 00be EB68     		ldr	r3, [r5, #12]
 3251 00c0 5B00     		lsls	r3, r3, #1
 3252 00c2 B8D5     		bpl	.L734
 3253 00c4 0298     		ldr	r0, [sp, #8]
 3254 00c6 D8F80030 		ldr	r3, [r8]
 3255 00ca 0168     		ldr	r1, [r0]
 3256 00cc 0095     		str	r5, [sp]
 3257 00ce ABF10202 		sub	r2, fp, #2
 3258 00d2 B2FA82F2 		clz	r2, r2
 3259 00d6 5209     		lsrs	r2, r2, #5
 3260 00d8 D1F84CB0 		ldr	fp, [r1, #76]
 3261 00dc 03F5D473 		add	r3, r3, #424
 3262 00e0 2146     		mov	r1, r4
 3263 00e2 D847     		blx	fp
 3264 00e4 D8F81020 		ldr	r2, [r8, #16]
 3265 00e8 0399     		ldr	r1, [sp, #12]
 3266 00ea D2F87434 		ldr	r3, [r2, #1140]
 3267 00ee 0B43     		orrs	r3, r3, r1
 3268 00f0 C2F87434 		str	r3, [r2, #1140]
 3269 00f4 9FE7     		b	.L734
 3270              	.L772:
 3271 00f6 0368     		ldr	r3, [r0]
 3272 00f8 2146     		mov	r1, r4
 3273 00fa 9B6C     		ldr	r3, [r3, #72]
 3274 00fc 9847     		blx	r3
 3275 00fe 0028     		cmp	r0, #0
 3276 0100 D5D1     		bne	.L742
 3277 0102 2146     		mov	r1, r4
 3278 0104 2846     		mov	r0, r5
 3279 0106 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3280 010a D8E7     		b	.L743
 3281              	.L766:
 3282 010c 95F90A30 		ldrsb	r3, [r5, #10]
 3283 0110 002B     		cmp	r3, #0
 3284 0112 90DB     		blt	.L734
 3285 0114 2846     		mov	r0, r5
 3286 0116 FFF7FEFF 		bl	_ZN3DDA17ReduceHomingSpeedEv.part.10
 3287 011a 8CE7     		b	.L734
 3288              	.L765:
 3289 011c 0846     		mov	r0, r1
 3290 011e FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 3291 0122 0128     		cmp	r0, #1
 3292 0124 1FD0     		beq	.L727
 3293 0126 0328     		cmp	r0, #3
 3294 0128 03D1     		bne	.L764
 3295 012a 95F90A30 		ldrsb	r3, [r5, #10]
 3296 012e 002B     		cmp	r3, #0
 3297 0130 24DA     		bge	.L732
 3298              	.L764:
 3299 0132 EB68     		ldr	r3, [r5, #12]
 3300 0134 6DE7     		b	.L725
 3301              	.L769:
 3302 0136 4FF00009 		mov	r9, #0
 3303              	.L741:
 3304 013a 4946     		mov	r1, r9
 3305 013c 2846     		mov	r0, r5
 3306 013e 09F10109 		add	r9, r9, #1
ARM GAS  /tmp/cc9m8tIQ.s 			page 59


 3307 0142 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3308 0146 B9F10C0F 		cmp	r9, #12
 3309 014a F6D1     		bne	.L741
 3310 014c 8FE7     		b	.L740
 3311              	.L773:
 3312 014e 4FF00009 		mov	r9, #0
 3313              	.L745:
 3314 0152 4946     		mov	r1, r9
 3315 0154 2846     		mov	r0, r5
 3316 0156 09F10109 		add	r9, r9, #1
 3317 015a FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3318 015e B9F10C0F 		cmp	r9, #12
 3319 0162 F6D1     		bne	.L745
 3320 0164 A6E7     		b	.L744
 3321              	.L727:
 3322 0166 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 3323 0168 032B     		cmp	r3, #3
 3324 016a 0BD0     		beq	.L774
 3325              	.L729:
 3326 016c 0422     		movs	r2, #4
 3327 016e 0A4B     		ldr	r3, .L775
 3328 0170 2A72     		strb	r2, [r5, #8]
 3329 0172 1B69     		ldr	r3, [r3, #16]
 3330 0174 0122     		movs	r2, #1
 3331 0176 83F84425 		strb	r2, [r3, #1348]
 3332 017a 7EE7     		b	.L724
 3333              	.L732:
 3334 017c 2846     		mov	r0, r5
 3335 017e FFF7FEFF 		bl	_ZN3DDA17ReduceHomingSpeedEv.part.10
 3336 0182 D6E7     		b	.L764
 3337              	.L774:
 3338 0184 0024     		movs	r4, #0
 3339              	.L730:
 3340 0186 2146     		mov	r1, r4
 3341 0188 2846     		mov	r0, r5
 3342 018a 0134     		adds	r4, r4, #1
 3343 018c FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3344 0190 0C2C     		cmp	r4, #12
 3345 0192 F8D1     		bne	.L730
 3346 0194 EAE7     		b	.L729
 3347              	.L776:
 3348 0196 00BF     		.align	2
 3349              	.L775:
 3350 0198 00000000 		.word	reprap
 3351              		.size	_ZN3DDA13CheckEndstopsER8Platform, .-_ZN3DDA13CheckEndstopsER8Platform
 3352              		.section	.text.hot._ZN3DDA4StepEv,"ax",%progbits
 3353              		.align	1
 3354              		.p2align 2,,3
 3355              		.global	_ZN3DDA4StepEv
 3356              		.syntax unified
 3357              		.thumb
 3358              		.thumb_func
 3359              		.fpu fpv4-sp-d16
 3360              		.type	_ZN3DDA4StepEv, %function
 3361              	_ZN3DDA4StepEv:
 3362              		@ args = 0, pretend = 0, frame = 8
 3363              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cc9m8tIQ.s 			page 60


 3364 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3365 0004 894B     		ldr	r3, .L846
 3366 0006 8A4E     		ldr	r6, .L846+4
 3367 0008 D3F80090 		ldr	r9, [r3]
 3368 000c 894B     		ldr	r3, .L846+8
 3369 000e D3F80080 		ldr	r8, [r3]
 3370 0012 83B0     		sub	sp, sp, #12
 3371 0014 4746     		mov	r7, r8
 3372 0016 0025     		movs	r5, #0
 3373 0018 8046     		mov	r8, r0
 3374              	.L810:
 3375 001a D8F80C30 		ldr	r3, [r8, #12]
 3376 001e 002B     		cmp	r3, #0
 3377 0020 40F0DE80 		bne	.L778
 3378              	.L782:
 3379 0024 D6F89030 		ldr	r3, [r6, #144]
 3380 0028 D8F8DC10 		ldr	r1, [r8, #220]
 3381 002c D8F8F440 		ldr	r4, [r8, #244]
 3382 0030 9A1D     		adds	r2, r3, #6
 3383 0032 002D     		cmp	r5, #0
 3384 0034 08BF     		it	eq
 3385 0036 9B46     		moveq	fp, r3
 3386 0038 521A     		subs	r2, r2, r1
 3387 003a 002C     		cmp	r4, #0
 3388 003c 00F0DA80 		beq	.L838
 3389 0040 6369     		ldr	r3, [r4, #20]
 3390 0042 9A42     		cmp	r2, r3
 3391 0044 2546     		mov	r5, r4
 3392 0046 4FF00000 		mov	r0, #0
 3393 004a 03D2     		bcs	.L785
 3394 004c 10E0     		b	.L784
 3395              	.L787:
 3396 004e 6B69     		ldr	r3, [r5, #20]
 3397 0050 9342     		cmp	r3, r2
 3398 0052 08D8     		bhi	.L786
 3399              	.L785:
 3400 0054 6B79     		ldrb	r3, [r5, #5]	@ zero_extendqisi2
 3401 0056 2D68     		ldr	r5, [r5]
 3402 0058 09EB8303 		add	r3, r9, r3, lsl #2
 3403 005c D3F84C33 		ldr	r3, [r3, #844]
 3404 0060 1843     		orrs	r0, r0, r3
 3405 0062 002D     		cmp	r5, #0
 3406 0064 F3D1     		bne	.L787
 3407              	.L786:
 3408 0066 D9F8BC33 		ldr	r3, [r9, #956]
 3409 006a 1842     		tst	r0, r3
 3410 006c 40F08D80 		bne	.L839
 3411              	.L784:
 3412 0070 714B     		ldr	r3, .L846+12
 3413 0072 AC42     		cmp	r4, r5
 3414 0074 9863     		str	r0, [r3, #56]
 3415 0076 C8F8F450 		str	r5, [r8, #244]
 3416 007a 00F0AD80 		beq	.L793
 3417              	.L845:
 3418 007e 08F1F403 		add	r3, r8, #244
 3419 0082 0193     		str	r3, [sp, #4]
 3420 0084 4FF0000A 		mov	r10, #0
ARM GAS  /tmp/cc9m8tIQ.s 			page 61


 3421 0088 0097     		str	r7, [sp]
 3422 008a 0AE0     		b	.L794
 3423              	.L842:
 3424 008c 6279     		ldrb	r2, [r4, #5]	@ zero_extendqisi2
 3425 008e 022A     		cmp	r2, #2
 3426 0090 0FD8     		bhi	.L797
 3427 0092 8B42     		cmp	r3, r1
 3428 0094 E360     		str	r3, [r4, #12]
 3429 0096 65D9     		bls	.L840
 3430              	.L803:
 3431 0098 84F804A0 		strb	r10, [r4, #4]
 3432 009c 2468     		ldr	r4, [r4]
 3433              	.L802:
 3434 009e AC42     		cmp	r4, r5
 3435 00a0 2DD0     		beq	.L841
 3436              	.L794:
 3437 00a2 98F80A20 		ldrb	r2, [r8, #10]	@ zero_extendqisi2
 3438 00a6 E368     		ldr	r3, [r4, #12]
 3439 00a8 A168     		ldr	r1, [r4, #8]
 3440 00aa 9207     		lsls	r2, r2, #30
 3441 00ac 03F10103 		add	r3, r3, #1
 3442 00b0 ECD4     		bmi	.L842
 3443              	.L797:
 3444 00b2 8B42     		cmp	r3, r1
 3445 00b4 E360     		str	r3, [r4, #12]
 3446 00b6 EFD8     		bhi	.L803
 3447 00b8 E379     		ldrb	r3, [r4, #7]	@ zero_extendqisi2
 3448 00ba 002B     		cmp	r3, #0
 3449 00bc 5FD0     		beq	.L804
 3450              	.L836:
 3451 00be D4E90521 		ldrd	r2, r1, [r4, #20]
 3452 00c2 0A44     		add	r2, r2, r1
 3453 00c4 013B     		subs	r3, r3, #1
 3454 00c6 6261     		str	r2, [r4, #20]
 3455 00c8 2268     		ldr	r2, [r4]
 3456 00ca E371     		strb	r3, [r4, #7]
 3457              	.L800:
 3458 00cc D8F8F430 		ldr	r3, [r8, #244]
 3459 00d0 0199     		ldr	r1, [sp, #4]
 3460 00d2 7BB1     		cbz	r3, .L805
 3461 00d4 6069     		ldr	r0, [r4, #20]
 3462 00d6 5F69     		ldr	r7, [r3, #20]
 3463 00d8 8742     		cmp	r7, r0
 3464 00da 0BD2     		bcs	.L805
 3465 00dc 9446     		mov	ip, r2
 3466 00de 009F     		ldr	r7, [sp]
 3467 00e0 02E0     		b	.L806
 3468              	.L807:
 3469 00e2 5A69     		ldr	r2, [r3, #20]
 3470 00e4 8242     		cmp	r2, r0
 3471 00e6 03D2     		bcs	.L834
 3472              	.L806:
 3473 00e8 1946     		mov	r1, r3
 3474 00ea 1B68     		ldr	r3, [r3]
 3475 00ec 002B     		cmp	r3, #0
 3476 00ee F8D1     		bne	.L807
 3477              	.L834:
ARM GAS  /tmp/cc9m8tIQ.s 			page 62


 3478 00f0 6246     		mov	r2, ip
 3479 00f2 0097     		str	r7, [sp]
 3480              	.L805:
 3481 00f4 2360     		str	r3, [r4]
 3482 00f6 0C60     		str	r4, [r1]
 3483 00f8 1446     		mov	r4, r2
 3484 00fa AC42     		cmp	r4, r5
 3485 00fc D1D1     		bne	.L794
 3486              	.L841:
 3487 00fe D8F8F450 		ldr	r5, [r8, #244]
 3488 0102 4D4A     		ldr	r2, .L846+12
 3489 0104 009F     		ldr	r7, [sp]
 3490 0106 0023     		movs	r3, #0
 3491 0108 9363     		str	r3, [r2, #56]
 3492 010a 002D     		cmp	r5, #0
 3493 010c 00F08C80 		beq	.L843
 3494              	.L796:
 3495 0110 D6F89030 		ldr	r3, [r6, #144]
 3496 0114 6869     		ldr	r0, [r5, #20]
 3497 0116 D8F8DC10 		ldr	r1, [r8, #220]
 3498 011a A3EB0B03 		sub	r3, r3, fp
 3499 011e 9BB2     		uxth	r3, r3
 3500 0120 3B2B     		cmp	r3, #59
 3501 0122 0844     		add	r0, r0, r1
 3502 0124 10D9     		bls	.L809
 3503 0126 A0EB0B02 		sub	r2, r0, fp
 3504 012a 9C1D     		adds	r4, r3, #6
 3505 012c A242     		cmp	r2, r4
 3506 012e 0BD2     		bcs	.L809
 3507 0130 424C     		ldr	r4, .L846+16
 3508 0132 0BF10602 		add	r2, fp, #6
 3509 0136 1A44     		add	r2, r2, r3
 3510 0138 2368     		ldr	r3, [r4]
 3511 013a 101A     		subs	r0, r2, r0
 3512 013c 0144     		add	r1, r1, r0
 3513 013e 0133     		adds	r3, r3, #1
 3514 0140 C8F8DC10 		str	r1, [r8, #220]
 3515 0144 1046     		mov	r0, r2
 3516 0146 2360     		str	r3, [r4]
 3517              	.L809:
 3518 0148 FFF7FEFF 		bl	_ZN8Platform21ScheduleStepInterruptEm
 3519 014c 0546     		mov	r5, r0
 3520 014e 0028     		cmp	r0, #0
 3521 0150 7FF463AF 		bne	.L810
 3522              	.L837:
 3523 0154 4746     		mov	r7, r8
 3524 0156 3B7A     		ldrb	r3, [r7, #8]	@ zero_extendqisi2
 3525 0158 042B     		cmp	r3, #4
 3526 015a 56D0     		beq	.L844
 3527              	.L822:
 3528 015c 0020     		movs	r0, #0
 3529 015e 03B0     		add	sp, sp, #12
 3530              		@ sp needed
 3531 0160 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3532              	.L840:
 3533 0164 E379     		ldrb	r3, [r4, #7]	@ zero_extendqisi2
 3534 0166 002B     		cmp	r3, #0
ARM GAS  /tmp/cc9m8tIQ.s 			page 63


 3535 0168 A9D1     		bne	.L836
 3536 016a 0122     		movs	r2, #1
 3537 016c 4146     		mov	r1, r8
 3538 016e 2046     		mov	r0, r4
 3539 0170 FFF7FEFF 		bl	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb
 3540              	.L801:
 3541 0174 2268     		ldr	r2, [r4]
 3542 0176 0028     		cmp	r0, #0
 3543 0178 A8D1     		bne	.L800
 3544 017a 1446     		mov	r4, r2
 3545 017c 8FE7     		b	.L802
 3546              	.L804:
 3547 017e 0122     		movs	r2, #1
 3548 0180 4146     		mov	r1, r8
 3549 0182 2046     		mov	r0, r4
 3550 0184 FFF7FEFF 		bl	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb
 3551 0188 F4E7     		b	.L801
 3552              	.L839:
 3553 018a 2D4B     		ldr	r3, .L846+20
 3554 018c D9F8B4C3 		ldr	ip, [r9, #948]
 3555 0190 D3F800E0 		ldr	lr, [r3]
 3556 0194 D9F8B013 		ldr	r1, [r9, #944]
 3557              	.L790:
 3558 0198 D6F89030 		ldr	r3, [r6, #144]
 3559 019c DA1B     		subs	r2, r3, r7
 3560 019e 8A42     		cmp	r2, r1
 3561 01a0 FAD3     		bcc	.L790
 3562 01a2 A3EB0E03 		sub	r3, r3, lr
 3563 01a6 6345     		cmp	r3, ip
 3564 01a8 F6D3     		bcc	.L790
 3565 01aa 234B     		ldr	r3, .L846+12
 3566 01ac 9863     		str	r0, [r3, #56]
 3567 01ae D6F89010 		ldr	r1, [r6, #144]
 3568 01b2 D9F8AC23 		ldr	r2, [r9, #940]
 3569              	.L792:
 3570 01b6 D6F89030 		ldr	r3, [r6, #144]
 3571 01ba 5B1A     		subs	r3, r3, r1
 3572 01bc 9342     		cmp	r3, r2
 3573 01be FAD3     		bcc	.L792
 3574 01c0 1D4A     		ldr	r2, .L846+12
 3575 01c2 0023     		movs	r3, #0
 3576 01c4 9363     		str	r3, [r2, #56]
 3577 01c6 1B4B     		ldr	r3, .L846+8
 3578 01c8 D6F89070 		ldr	r7, [r6, #144]
 3579 01cc 1F60     		str	r7, [r3]
 3580 01ce AC42     		cmp	r4, r5
 3581 01d0 C8F8F450 		str	r5, [r8, #244]
 3582 01d4 7FF453AF 		bne	.L845
 3583              	.L793:
 3584 01d8 174A     		ldr	r2, .L846+12
 3585 01da 0023     		movs	r3, #0
 3586 01dc 9363     		str	r3, [r2, #56]
 3587 01de 97E7     		b	.L796
 3588              	.L778:
 3589 01e0 4946     		mov	r1, r9
 3590 01e2 4046     		mov	r0, r8
 3591 01e4 FFF7FEFF 		bl	_ZN3DDA13CheckEndstopsER8Platform
ARM GAS  /tmp/cc9m8tIQ.s 			page 64


 3592 01e8 98F80830 		ldrb	r3, [r8, #8]	@ zero_extendqisi2
 3593 01ec 042B     		cmp	r3, #4
 3594 01ee 7FF419AF 		bne	.L782
 3595 01f2 AFE7     		b	.L837
 3596              	.L838:
 3597 01f4 104B     		ldr	r3, .L846+12
 3598 01f6 4746     		mov	r7, r8
 3599 01f8 9C63     		str	r4, [r3, #56]
 3600 01fa C8F8F440 		str	r4, [r8, #244]
 3601 01fe 9C63     		str	r4, [r3, #56]
 3602              	.L795:
 3603 0200 0423     		movs	r3, #4
 3604 0202 3B72     		strb	r3, [r7, #8]
 3605 0204 3B7A     		ldrb	r3, [r7, #8]	@ zero_extendqisi2
 3606 0206 042B     		cmp	r3, #4
 3607 0208 A8D1     		bne	.L822
 3608              	.L844:
 3609 020a 084B     		ldr	r3, .L846
 3610 020c 9D68     		ldr	r5, [r3, #8]
 3611 020e D7E93634 		ldrd	r3, r4, [r7, #216]
 3612 0212 2846     		mov	r0, r5
 3613 0214 1C44     		add	r4, r4, r3
 3614 0216 FFF7FEFF 		bl	_ZN4Move20CurrentMoveCompletedEv
 3615 021a 2146     		mov	r1, r4
 3616 021c 2846     		mov	r0, r5
 3617 021e 03B0     		add	sp, sp, #12
 3618              		@ sp needed
 3619 0220 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3620 0224 FFF7FEBF 		b	_ZN4Move16TryStartNextMoveEm
 3621              	.L843:
 3622 0228 4746     		mov	r7, r8
 3623 022a E9E7     		b	.L795
 3624              	.L847:
 3625              		.align	2
 3626              	.L846:
 3627 022c 00000000 		.word	reprap
 3628 0230 00000940 		.word	1074331648
 3629 0234 00000000 		.word	.LANCHOR0
 3630 0238 00140E40 		.word	1074664448
 3631 023c 00000000 		.word	.LANCHOR2
 3632 0240 00000000 		.word	.LANCHOR1
 3633              		.size	_ZN3DDA4StepEv, .-_ZN3DDA4StepEv
 3634              		.section	.text._ZN3DDA11MoveAbortedEv,"ax",%progbits
 3635              		.align	1
 3636              		.p2align 2,,3
 3637              		.global	_ZN3DDA11MoveAbortedEv
 3638              		.syntax unified
 3639              		.thumb
 3640              		.thumb_func
 3641              		.fpu fpv4-sp-d16
 3642              		.type	_ZN3DDA11MoveAbortedEv, %function
 3643              	_ZN3DDA11MoveAbortedEv:
 3644              		@ args = 0, pretend = 0, frame = 0
 3645              		@ frame_needed = 0, uses_anonymous_args = 0
 3646 0000 38B5     		push	{r3, r4, r5, lr}
 3647 0002 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 3648 0004 032B     		cmp	r3, #3
ARM GAS  /tmp/cc9m8tIQ.s 			page 65


 3649 0006 0546     		mov	r5, r0
 3650 0008 02D0     		beq	.L853
 3651 000a 0423     		movs	r3, #4
 3652 000c 2B72     		strb	r3, [r5, #8]
 3653 000e 38BD     		pop	{r3, r4, r5, pc}
 3654              	.L853:
 3655 0010 0024     		movs	r4, #0
 3656              	.L850:
 3657 0012 2146     		mov	r1, r4
 3658 0014 2846     		mov	r0, r5
 3659 0016 0134     		adds	r4, r4, #1
 3660 0018 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3661 001c 0C2C     		cmp	r4, #12
 3662 001e F8D1     		bne	.L850
 3663 0020 0423     		movs	r3, #4
 3664 0022 2B72     		strb	r3, [r5, #8]
 3665 0024 38BD     		pop	{r3, r4, r5, pc}
 3666              		.size	_ZN3DDA11MoveAbortedEv, .-_ZN3DDA11MoveAbortedEv
 3667 0026 00BF     		.section	.text._ZNK3DDA17GetProportionDoneEb,"ax",%progbits
 3668              		.align	1
 3669              		.p2align 2,,3
 3670              		.global	_ZNK3DDA17GetProportionDoneEb
 3671              		.syntax unified
 3672              		.thumb
 3673              		.thumb_func
 3674              		.fpu fpv4-sp-d16
 3675              		.type	_ZNK3DDA17GetProportionDoneEb, %function
 3676              	_ZNK3DDA17GetProportionDoneEb:
 3677              		@ args = 0, pretend = 0, frame = 0
 3678              		@ frame_needed = 0, uses_anonymous_args = 0
 3679 0000 8369     		ldr	r3, [r0, #24]
 3680 0002 5A1C     		adds	r2, r3, #1
 3681 0004 F0B5     		push	{r4, r5, r6, r7, lr}
 3682 0006 03D0     		beq	.L872
 3683 0008 4268     		ldr	r2, [r0, #4]
 3684 000a 9469     		ldr	r4, [r2, #24]
 3685 000c A342     		cmp	r3, r4
 3686 000e 56D0     		beq	.L894
 3687              	.L872:
 3688 0010 9FED3A0A 		vldr.32	s0, .L897
 3689              	.L855:
 3690 0014 0029     		cmp	r1, #0
 3691 0016 51D0     		beq	.L854
 3692 0018 90ED3B7A 		vldr.32	s14, [r0, #236]
 3693 001c F7EE007A 		vmov.f32	s15, #1.0e+0
 3694 0020 77EEC77A 		vsub.f32	s15, s15, s14
 3695 0024 B4EEE70A 		vcmpe.f32	s0, s15
 3696 0028 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3697 002c 46D5     		bpl	.L854
 3698 002e 344B     		ldr	r3, .L897+4
 3699 0030 1B69     		ldr	r3, [r3, #16]
 3700 0032 D3F89822 		ldr	r2, [r3, #664]
 3701 0036 0B2A     		cmp	r2, #11
 3702 0038 40D8     		bhi	.L854
 3703 003a 3E32     		adds	r2, r2, #62
 3704 003c 0027     		movs	r7, #0
 3705 003e 00EB8202 		add	r2, r0, r2, lsl #2
ARM GAS  /tmp/cc9m8tIQ.s 			page 66


 3706 0042 BC46     		mov	ip, r7
 3707 0044 00F59470 		add	r0, r0, #296
 3708              	.L869:
 3709 0048 52F8043B 		ldr	r3, [r2], #4
 3710 004c E3B1     		cbz	r3, .L858
 3711 004e D3E90346 		ldrd	r4, r6, [r3, #12]
 3712 0052 9968     		ldr	r1, [r3, #8]
 3713 0054 93F806E0 		ldrb	lr, [r3, #6]	@ zero_extendqisi2
 3714 0058 A642     		cmp	r6, r4
 3715 005a 0D46     		mov	r5, r1
 3716 005c 0EF01003 		and	r3, lr, #16
 3717 0060 34D8     		bhi	.L859
 3718 0062 8E42     		cmp	r6, r1
 3719 0064 32D8     		bhi	.L859
 3720 0066 A4EB460E 		sub	lr, r4, r6, lsl #1
 3721 006a 0EF1010E 		add	lr, lr, #1
 3722 006e 002B     		cmp	r3, #0
 3723 0070 42D1     		bne	.L895
 3724              	.L862:
 3725 0072 CEF1000E 		rsb	lr, lr, #0
 3726 0076 8E42     		cmp	r6, r1
 3727 0078 F444     		add	ip, ip, lr
 3728 007a 2FD9     		bls	.L865
 3729              	.L896:
 3730 007c 0CB1     		cbz	r4, .L866
 3731              	.L870:
 3732 007e 091B     		subs	r1, r1, r4
 3733 0080 4D1C     		adds	r5, r1, #1
 3734              	.L866:
 3735 0082 03B9     		cbnz	r3, .L868
 3736 0084 6D42     		negs	r5, r5
 3737              	.L868:
 3738 0086 2F44     		add	r7, r7, r5
 3739              	.L858:
 3740 0088 8242     		cmp	r2, r0
 3741 008a DDD1     		bne	.L869
 3742 008c 6744     		add	r7, r7, ip
 3743 008e 002F     		cmp	r7, #0
 3744 0090 14DD     		ble	.L854
 3745 0092 7B10     		asrs	r3, r7, #1
 3746 0094 77EEC06A 		vsub.f32	s13, s15, s0
 3747 0098 07EE103A 		vmov	s14, r3	@ int
 3748 009c 07EE90CA 		vmov	s15, ip	@ int
 3749 00a0 B8EEC76A 		vcvt.f32.s32	s12, s14
 3750 00a4 B8EEE77A 		vcvt.f32.s32	s14, s15
 3751 00a8 07EE907A 		vmov	s15, r7	@ int
 3752 00ac A6EE876A 		vfma.f32	s12, s13, s14
 3753 00b0 F8EEE77A 		vcvt.f32.s32	s15, s15
 3754 00b4 C6EE276A 		vdiv.f32	s13, s12, s15
 3755 00b8 30EE260A 		vadd.f32	s0, s0, s13
 3756              	.L854:
 3757 00bc F0BD     		pop	{r4, r5, r6, r7, pc}
 3758              	.L894:
 3759 00be D2ED3B7A 		vldr.32	s15, [r2, #236]
 3760 00c2 B7EE000A 		vmov.f32	s0, #1.0e+0
 3761 00c6 30EE670A 		vsub.f32	s0, s0, s15
 3762 00ca A3E7     		b	.L855
ARM GAS  /tmp/cc9m8tIQ.s 			page 67


 3763              	.L859:
 3764 00cc 84B1     		cbz	r4, .L873
 3765 00ce 04F1FF3E 		add	lr, r4, #-1
 3766 00d2 002B     		cmp	r3, #0
 3767 00d4 CDD0     		beq	.L862
 3768              	.L893:
 3769 00d6 8E42     		cmp	r6, r1
 3770 00d8 F444     		add	ip, ip, lr
 3771 00da CFD8     		bhi	.L896
 3772              	.L865:
 3773 00dc A642     		cmp	r6, r4
 3774 00de CED9     		bls	.L870
 3775 00e0 C1EB4601 		rsb	r1, r1, r6, lsl #1
 3776 00e4 8D1E     		subs	r5, r1, #2
 3777 00e6 002C     		cmp	r4, #0
 3778 00e8 CBD0     		beq	.L866
 3779 00ea 291B     		subs	r1, r5, r4
 3780 00ec 4D1C     		adds	r5, r1, #1
 3781 00ee C8E7     		b	.L866
 3782              	.L873:
 3783 00f0 A646     		mov	lr, r4
 3784 00f2 002B     		cmp	r3, #0
 3785 00f4 EFD1     		bne	.L893
 3786 00f6 BCE7     		b	.L862
 3787              	.L895:
 3788 00f8 F444     		add	ip, ip, lr
 3789 00fa C0E7     		b	.L870
 3790              	.L898:
 3791              		.align	2
 3792              	.L897:
 3793 00fc 00000000 		.word	0
 3794 0100 00000000 		.word	reprap
 3795              		.size	_ZNK3DDA17GetProportionDoneEb, .-_ZNK3DDA17GetProportionDoneEb
 3796              		.section	.text._ZN3DDA17ReduceHomingSpeedEv,"ax",%progbits
 3797              		.align	1
 3798              		.p2align 2,,3
 3799              		.global	_ZN3DDA17ReduceHomingSpeedEv
 3800              		.syntax unified
 3801              		.thumb
 3802              		.thumb_func
 3803              		.fpu fpv4-sp-d16
 3804              		.type	_ZN3DDA17ReduceHomingSpeedEv, %function
 3805              	_ZN3DDA17ReduceHomingSpeedEv:
 3806              		@ args = 0, pretend = 0, frame = 0
 3807              		@ frame_needed = 0, uses_anonymous_args = 0
 3808              		@ link register save eliminated.
 3809 0000 90F90A30 		ldrsb	r3, [r0, #10]
 3810 0004 002B     		cmp	r3, #0
 3811 0006 01DB     		blt	.L899
 3812 0008 FFF7FEBF 		b	_ZN3DDA17ReduceHomingSpeedEv.part.10
 3813              	.L899:
 3814 000c 7047     		bx	lr
 3815              		.size	_ZN3DDA17ReduceHomingSpeedEv, .-_ZN3DDA17ReduceHomingSpeedEv
 3816 000e 00BF     		.section	.text._ZNK3DDA12HasStepErrorEv,"ax",%progbits
 3817              		.align	1
 3818              		.p2align 2,,3
 3819              		.global	_ZNK3DDA12HasStepErrorEv
ARM GAS  /tmp/cc9m8tIQ.s 			page 68


 3820              		.syntax unified
 3821              		.thumb
 3822              		.thumb_func
 3823              		.fpu fpv4-sp-d16
 3824              		.type	_ZNK3DDA12HasStepErrorEv, %function
 3825              	_ZNK3DDA12HasStepErrorEv:
 3826              		@ args = 0, pretend = 0, frame = 0
 3827              		@ frame_needed = 0, uses_anonymous_args = 0
 3828              		@ link register save eliminated.
 3829 0000 00F1F403 		add	r3, r0, #244
 3830 0004 00F59270 		add	r0, r0, #292
 3831              	.L904:
 3832 0008 53F8042F 		ldr	r2, [r3, #4]!
 3833 000c 12B1     		cbz	r2, .L902
 3834 000e 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 3835 0010 022A     		cmp	r2, #2
 3836 0012 03D0     		beq	.L905
 3837              	.L902:
 3838 0014 8342     		cmp	r3, r0
 3839 0016 F7D1     		bne	.L904
 3840 0018 0020     		movs	r0, #0
 3841 001a 7047     		bx	lr
 3842              	.L905:
 3843 001c 0120     		movs	r0, #1
 3844 001e 7047     		bx	lr
 3845              		.size	_ZNK3DDA12HasStepErrorEv, .-_ZNK3DDA12HasStepErrorEv
 3846              		.section	.text._ZN3DDA4FreeEv,"ax",%progbits
 3847              		.align	1
 3848              		.p2align 2,,3
 3849              		.global	_ZN3DDA4FreeEv
 3850              		.syntax unified
 3851              		.thumb
 3852              		.thumb_func
 3853              		.fpu fpv4-sp-d16
 3854              		.type	_ZN3DDA4FreeEv, %function
 3855              	_ZN3DDA4FreeEv:
 3856              		@ args = 0, pretend = 0, frame = 0
 3857              		@ frame_needed = 0, uses_anonymous_args = 0
 3858              		@ link register save eliminated.
 3859 0000 DFF848C0 		ldr	ip, .L923+4
 3860 0004 F0B4     		push	{r4, r5, r6, r7}
 3861 0006 DCF80010 		ldr	r1, [ip]
 3862 000a 0F4C     		ldr	r4, .L923
 3863 000c 0646     		mov	r6, r0
 3864 000e 0020     		movs	r0, #0
 3865 0010 06F1F403 		add	r3, r6, #244
 3866 0014 06F59275 		add	r5, r6, #292
 3867 0018 0746     		mov	r7, r0
 3868              	.L912:
 3869 001a 53F8042F 		ldr	r2, [r3, #4]!
 3870 001e 2AB1     		cbz	r2, .L911
 3871 0020 2068     		ldr	r0, [r4]
 3872 0022 1060     		str	r0, [r2]
 3873 0024 0131     		adds	r1, r1, #1
 3874 0026 2260     		str	r2, [r4]
 3875 0028 0120     		movs	r0, #1
 3876 002a 1F60     		str	r7, [r3]
ARM GAS  /tmp/cc9m8tIQ.s 			page 69


 3877              	.L911:
 3878 002c AB42     		cmp	r3, r5
 3879 002e F4D1     		bne	.L912
 3880 0030 30B9     		cbnz	r0, .L922
 3881              	.L913:
 3882 0032 B07A     		ldrb	r0, [r6, #10]	@ zero_extendqisi2
 3883 0034 0023     		movs	r3, #0
 3884 0036 C0F34010 		ubfx	r0, r0, #5, #1
 3885 003a 3372     		strb	r3, [r6, #8]
 3886 003c F0BC     		pop	{r4, r5, r6, r7}
 3887 003e 7047     		bx	lr
 3888              	.L922:
 3889 0040 CCF80010 		str	r1, [ip]
 3890 0044 F5E7     		b	.L913
 3891              	.L924:
 3892 0046 00BF     		.align	2
 3893              	.L923:
 3894 0048 00000000 		.word	_ZN13DriveMovement8freeListE
 3895 004c 00000000 		.word	_ZN13DriveMovement7numFreeE
 3896              		.size	_ZN3DDA4FreeEv, .-_ZN3DDA4FreeEv
 3897              		.section	.text._ZNK3DDA13GetStepsTakenEj,"ax",%progbits
 3898              		.align	1
 3899              		.p2align 2,,3
 3900              		.global	_ZNK3DDA13GetStepsTakenEj
 3901              		.syntax unified
 3902              		.thumb
 3903              		.thumb_func
 3904              		.fpu fpv4-sp-d16
 3905              		.type	_ZNK3DDA13GetStepsTakenEj, %function
 3906              	_ZNK3DDA13GetStepsTakenEj:
 3907              		@ args = 0, pretend = 0, frame = 0
 3908              		@ frame_needed = 0, uses_anonymous_args = 0
 3909              		@ link register save eliminated.
 3910 0000 3E31     		adds	r1, r1, #62
 3911 0002 50F82130 		ldr	r3, [r0, r1, lsl #2]
 3912 0006 53B1     		cbz	r3, .L930
 3913 0008 D3E90302 		ldrd	r0, r2, [r3, #12]
 3914 000c 9042     		cmp	r0, r2
 3915 000e 08D2     		bcs	.L932
 3916              	.L927:
 3917 0010 00B1     		cbz	r0, .L929
 3918 0012 0138     		subs	r0, r0, #1
 3919              	.L929:
 3920 0014 9B79     		ldrb	r3, [r3, #6]	@ zero_extendqisi2
 3921 0016 DB06     		lsls	r3, r3, #27
 3922 0018 02D4     		bmi	.L925
 3923              	.L933:
 3924 001a 4042     		negs	r0, r0
 3925 001c 7047     		bx	lr
 3926              	.L930:
 3927 001e 1846     		mov	r0, r3
 3928              	.L925:
 3929 0020 7047     		bx	lr
 3930              	.L932:
 3931 0022 9968     		ldr	r1, [r3, #8]
 3932 0024 8A42     		cmp	r2, r1
 3933 0026 F3D8     		bhi	.L927
ARM GAS  /tmp/cc9m8tIQ.s 			page 70


 3934 0028 9B79     		ldrb	r3, [r3, #6]	@ zero_extendqisi2
 3935 002a A0EB4200 		sub	r0, r0, r2, lsl #1
 3936 002e DB06     		lsls	r3, r3, #27
 3937 0030 00F10100 		add	r0, r0, #1
 3938 0034 F4D4     		bmi	.L925
 3939 0036 F0E7     		b	.L933
 3940              		.size	_ZNK3DDA13GetStepsTakenEj, .-_ZNK3DDA13GetStepsTakenEj
 3941              		.section	.text._ZNK3DDA25IsNonPrintingExtruderMoveEj,"ax",%progbits
 3942              		.align	1
 3943              		.p2align 2,,3
 3944              		.global	_ZNK3DDA25IsNonPrintingExtruderMoveEj
 3945              		.syntax unified
 3946              		.thumb
 3947              		.thumb_func
 3948              		.fpu fpv4-sp-d16
 3949              		.type	_ZNK3DDA25IsNonPrintingExtruderMoveEj, %function
 3950              	_ZNK3DDA25IsNonPrintingExtruderMoveEj:
 3951              		@ args = 0, pretend = 0, frame = 0
 3952              		@ frame_needed = 0, uses_anonymous_args = 0
 3953              		@ link register save eliminated.
 3954 0000 837A     		ldrb	r3, [r0, #10]	@ zero_extendqisi2
 3955 0002 1B07     		lsls	r3, r3, #28
 3956 0004 06D4     		bmi	.L936
 3957 0006 3E31     		adds	r1, r1, #62
 3958 0008 50F82100 		ldr	r0, [r0, r1, lsl #2]
 3959 000c 0030     		adds	r0, r0, #0
 3960 000e 18BF     		it	ne
 3961 0010 0120     		movne	r0, #1
 3962 0012 7047     		bx	lr
 3963              	.L936:
 3964 0014 0020     		movs	r0, #0
 3965 0016 7047     		bx	lr
 3966              		.size	_ZNK3DDA25IsNonPrintingExtruderMoveEj, .-_ZNK3DDA25IsNonPrintingExtruderMoveEj
 3967              		.section	.text._ZN3DDA25LimitSpeedAndAccelerationEff,"ax",%progbits
 3968              		.align	1
 3969              		.p2align 2,,3
 3970              		.global	_ZN3DDA25LimitSpeedAndAccelerationEff
 3971              		.syntax unified
 3972              		.thumb
 3973              		.thumb_func
 3974              		.fpu fpv4-sp-d16
 3975              		.type	_ZN3DDA25LimitSpeedAndAccelerationEff, %function
 3976              	_ZN3DDA25LimitSpeedAndAccelerationEff:
 3977              		@ args = 0, pretend = 0, frame = 0
 3978              		@ frame_needed = 0, uses_anonymous_args = 0
 3979              		@ link register save eliminated.
 3980 0000 D0ED2D7A 		vldr.32	s15, [r0, #180]
 3981 0004 F4EEC07A 		vcmpe.f32	s15, s0
 3982 0008 D0ED2C7A 		vldr.32	s15, [r0, #176]
 3983 000c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3984 0010 F4EEE07A 		vcmpe.f32	s15, s1
 3985 0014 C8BF     		it	gt
 3986 0016 80ED2D0A 		vstrgt.32	s0, [r0, #180]
 3987 001a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3988 001e C8BF     		it	gt
 3989 0020 C0ED2C0A 		vstrgt.32	s1, [r0, #176]
 3990 0024 7047     		bx	lr
ARM GAS  /tmp/cc9m8tIQ.s 			page 71


 3991              		.size	_ZN3DDA25LimitSpeedAndAccelerationEff, .-_ZN3DDA25LimitSpeedAndAccelerationEff
 3992              		.global	_ZN3DDA17lastDirChangeTimeE
 3993              		.global	_ZN3DDA15lastStepLowTimeE
 3994              		.global	_ZN3DDA10numHiccupsE
 3995 0026 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 3996              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 3997              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 3998              	_ZL28cpu_irq_prev_interrupt_state:
 3999 0000 00       		.space	1
 4000              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 4001              		.align	2
 4002              		.type	_ZL32cpu_irq_critical_section_counter, %object
 4003              		.size	_ZL32cpu_irq_critical_section_counter, 4
 4004              	_ZL32cpu_irq_critical_section_counter:
 4005 0000 00000000 		.space	4
 4006              		.section	.bss._ZN3DDA10numHiccupsE,"aw",%nobits
 4007              		.align	2
 4008              		.set	.LANCHOR2,. + 0
 4009              		.type	_ZN3DDA10numHiccupsE, %object
 4010              		.size	_ZN3DDA10numHiccupsE, 4
 4011              	_ZN3DDA10numHiccupsE:
 4012 0000 00000000 		.space	4
 4013              		.section	.bss._ZN3DDA15lastStepLowTimeE,"aw",%nobits
 4014              		.align	2
 4015              		.set	.LANCHOR0,. + 0
 4016              		.type	_ZN3DDA15lastStepLowTimeE, %object
 4017              		.size	_ZN3DDA15lastStepLowTimeE, 4
 4018              	_ZN3DDA15lastStepLowTimeE:
 4019 0000 00000000 		.space	4
 4020              		.section	.bss._ZN3DDA17lastDirChangeTimeE,"aw",%nobits
 4021              		.align	2
 4022              		.set	.LANCHOR1,. + 0
 4023              		.type	_ZN3DDA17lastDirChangeTimeE, %object
 4024              		.size	_ZN3DDA17lastDirChangeTimeE, 4
 4025              	_ZN3DDA17lastDirChangeTimeE:
 4026 0000 00000000 		.space	4
 4027              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 4028              		.align	2
 4029              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 4030              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 4031              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 4032 0000 00000000 		.space	4
 4033              		.section	.rodata._ZN3DDA11DoLookaheadEPS_.str1.4,"aMS",%progbits,1
 4034              		.align	2
 4035              	.LC11:
 4036 0000 52656375 		.ascii	"Recursion start %u\012\000"
 4036      7273696F 
 4036      6E207374 
 4036      61727420 
 4036      25750A00 
 4037              		.section	.rodata._ZN3DDA11MatchSpeedsEv.str1.4,"aMS",%progbits,1
 4038              		.align	2
 4039              	.LC10:
 4040 0000 4444412E 		.ascii	"DDA.cpp(%d) tn=%.3f \000"
 4040      63707028 
 4040      25642920 
 4040      746E3D25 
ARM GAS  /tmp/cc9m8tIQ.s 			page 72


 4040      2E336620 
 4041              		.section	.rodata._ZN3DDA15RecalculateMoveEv.str1.4,"aMS",%progbits,1
 4042              		.align	2
 4043              	.LC9:
 4044 0000 4444412E 		.ascii	"DDA.cpp(%d) na=%.3f\000"
 4044      63707028 
 4044      25642920 
 4044      6E613D25 
 4044      2E336600 
 4045              		.section	.rodata._ZNK3DDA10DebugPrintEv.str1.4,"aMS",%progbits,1
 4046              		.align	2
 4047              	.LC3:
 4048 0000 4444413A 		.ascii	"DDA:\000"
 4048      00
 4049 0005 000000   		.space	3
 4050              	.LC4:
 4051 0008 20737461 		.ascii	" start\000"
 4051      727400
 4052 000f 00       		.space	1
 4053              	.LC5:
 4054 0010 20656E64 		.ascii	" end\000"
 4054      00
 4055 0015 000000   		.space	3
 4056              	.LC6:
 4057 0018 20643D25 		.ascii	" d=%f\000"
 4057      6600
 4058 001e 0000     		.space	2
 4059              	.LC7:
 4060 0020 20766563 		.ascii	" vec\000"
 4060      00
 4061 0025 000000   		.space	3
 4062              	.LC8:
 4063 0028 0A613D25 		.ascii	"\012a=%f reqv=%f startv=%f topv=%f endv=%f daccel=%"
 4063      66207265 
 4063      71763D25 
 4063      66207374 
 4063      61727476 
 4064 0058 66206464 		.ascii	"f ddecel=%f\012cks=%lu sstcda=%lu tstcdapdsc=%lu ex"
 4064      6563656C 
 4064      3D25660A 
 4064      636B733D 
 4064      256C7520 
 4065 0088 61633D25 		.ascii	"ac=%li\012\000"
 4065      6C690A00 
 4066              		.section	.rodata._ZNK3DDA16DebugPrintVectorEPKcPKfj.str1.4,"aMS",%progbits,1
 4067              		.align	2
 4068              	.LC0:
 4069 0000 25733D00 		.ascii	"%s=\000"
 4070              	.LC1:
 4071 0004 25632566 		.ascii	"%c%f\000"
 4071      00
 4072 0009 000000   		.space	3
 4073              	.LC2:
 4074 000c 5D00     		.ascii	"]\000"
 4075              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
