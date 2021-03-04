ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 1


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
  14              		.text
  15              		.section	.text._ZNK10Kinematics24IsContinuousRotationAxisEj,"axG",%progbits,_ZNK10Kinematics24IsCo
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZNK10Kinematics24IsContinuousRotationAxisEj
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZNK10Kinematics24IsContinuousRotationAxisEj, %function
  24              	_ZNK10Kinematics24IsContinuousRotationAxisEj:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0020     		movs	r0, #0
  29 0002 7047     		bx	lr
  30              		.size	_ZNK10Kinematics24IsContinuousRotationAxisEj, .-_ZNK10Kinematics24IsContinuousRotationAxisEj
  31              		.section	.text._ZN3DDA17ReduceHomingSpeedEv.part.11,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_ZN3DDA17ReduceHomingSpeedEv.part.11, %function
  39              	_ZN3DDA17ReduceHomingSpeedEv.part.11:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42 0000 1C4B     		ldr	r3, .L13
  43 0002 D0ED337A 		vldr.32	s15, [r0, #204]
  44 0006 D3F89020 		ldr	r2, [r3, #144]
  45 000a 9FED1B7A 		vldr.32	s14, .L13+4
  46 000e D0F8EC30 		ldr	r3, [r0, #236]
  47 0012 70B5     		push	{r4, r5, r6, lr}
  48 0014 0546     		mov	r5, r0
  49 0016 D0F8E040 		ldr	r4, [r0, #224]
  50 001a D5F8DC10 		ldr	r1, [r5, #220]
  51 001e 807A     		ldrb	r0, [r0, #10]	@ zero_extendqisi2
  52 0020 121B     		subs	r2, r2, r4
  53 0022 67EE877A 		vmul.f32	s15, s15, s14
  54 0026 03EB4303 		add	r3, r3, r3, lsl #1
  55 002a 40F08000 		orr	r0, r0, #128
  56 002e A3EB4203 		sub	r3, r3, r2, lsl #1
  57 0032 8A42     		cmp	r2, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 2


  58 0034 A872     		strb	r0, [r5, #10]
  59 0036 C5ED337A 		vstr.32	s15, [r5, #204]
  60 003a C5F8EC30 		str	r3, [r5, #236]
  61 003e 04D2     		bcs	.L4
  62 0040 8A1A     		subs	r2, r1, r2
  63 0042 01EB4202 		add	r2, r1, r2, lsl #1
  64 0046 C5F8DC20 		str	r2, [r5, #220]
  65              	.L4:
  66 004a 05F1F404 		add	r4, r5, #244
  67 004e 05F59276 		add	r6, r5, #292
  68 0052 01E0     		b	.L6
  69              	.L5:
  70 0054 B442     		cmp	r4, r6
  71 0056 0CD0     		beq	.L12
  72              	.L6:
  73 0058 54F8040F 		ldr	r0, [r4, #4]!
  74 005c 0028     		cmp	r0, #0
  75 005e F9D0     		beq	.L5
  76 0060 0379     		ldrb	r3, [r0, #4]	@ zero_extendqisi2
  77 0062 012B     		cmp	r3, #1
  78 0064 F6D1     		bne	.L5
  79 0066 0322     		movs	r2, #3
  80 0068 2946     		mov	r1, r5
  81 006a FFF7FEFF 		bl	_ZN13DriveMovement11ReduceSpeedERK3DDAm
  82 006e B442     		cmp	r4, r6
  83 0070 F2D1     		bne	.L6
  84              	.L12:
  85 0072 70BD     		pop	{r4, r5, r6, pc}
  86              	.L14:
  87              		.align	2
  88              	.L13:
  89 0074 00000940 		.word	1074331648
  90 0078 ABAAAA3E 		.word	1051372203
  91              		.size	_ZN3DDA17ReduceHomingSpeedEv.part.11, .-_ZN3DDA17ReduceHomingSpeedEv.part.11
  92              		.section	.text._ZN3DDA10PrintMovesEv,"ax",%progbits
  93              		.align	1
  94              		.p2align 2,,3
  95              		.global	_ZN3DDA10PrintMovesEv
  96              		.syntax unified
  97              		.thumb
  98              		.thumb_func
  99              		.fpu fpv4-sp-d16
 100              		.type	_ZN3DDA10PrintMovesEv, %function
 101              	_ZN3DDA10PrintMovesEv:
 102              		@ args = 0, pretend = 0, frame = 0
 103              		@ frame_needed = 0, uses_anonymous_args = 0
 104              		@ link register save eliminated.
 105 0000 7047     		bx	lr
 106              		.size	_ZN3DDA10PrintMovesEv, .-_ZN3DDA10PrintMovesEv
 107 0002 00BF     		.section	.text._ZN3DDAC2EPS_,"ax",%progbits
 108              		.align	1
 109              		.p2align 2,,3
 110              		.global	_ZN3DDAC2EPS_
 111              		.syntax unified
 112              		.thumb
 113              		.thumb_func
 114              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 3


 115              		.type	_ZN3DDAC2EPS_, %function
 116              	_ZN3DDAC2EPS_:
 117              		@ args = 0, pretend = 0, frame = 0
 118              		@ frame_needed = 0, uses_anonymous_args = 0
 119              		@ link register save eliminated.
 120 0000 0022     		movs	r2, #0
 121 0002 C0E90012 		strd	r1, r2, [r0]
 122 0006 0272     		strb	r2, [r0, #8]
 123 0008 00F1F803 		add	r3, r0, #248
 124 000c 00F59471 		add	r1, r0, #296
 125              	.L17:
 126 0010 43F8042B 		str	r2, [r3], #4
 127 0014 9942     		cmp	r1, r3
 128 0016 FBD1     		bne	.L17
 129 0018 7047     		bx	lr
 130              		.size	_ZN3DDAC2EPS_, .-_ZN3DDAC2EPS_
 131              		.global	_ZN3DDAC1EPS_
 132              		.thumb_set _ZN3DDAC1EPS_,_ZN3DDAC2EPS_
 133 001a 00BF     		.section	.text._ZN3DDA10ReleaseDMsEv,"ax",%progbits
 134              		.align	1
 135              		.p2align 2,,3
 136              		.global	_ZN3DDA10ReleaseDMsEv
 137              		.syntax unified
 138              		.thumb
 139              		.thumb_func
 140              		.fpu fpv4-sp-d16
 141              		.type	_ZN3DDA10ReleaseDMsEv, %function
 142              	_ZN3DDA10ReleaseDMsEv:
 143              		@ args = 0, pretend = 0, frame = 0
 144              		@ frame_needed = 0, uses_anonymous_args = 0
 145              		@ link register save eliminated.
 146 0000 F0B4     		push	{r4, r5, r6, r7}
 147 0002 0C4F     		ldr	r7, .L32
 148 0004 0C4C     		ldr	r4, .L32+4
 149 0006 3968     		ldr	r1, [r7]
 150 0008 0025     		movs	r5, #0
 151 000a 00F1F403 		add	r3, r0, #244
 152 000e 2E46     		mov	r6, r5
 153 0010 00F59270 		add	r0, r0, #292
 154              	.L21:
 155 0014 53F8042F 		ldr	r2, [r3, #4]!
 156 0018 2AB1     		cbz	r2, .L20
 157 001a 2568     		ldr	r5, [r4]
 158 001c 1560     		str	r5, [r2]
 159 001e 0131     		adds	r1, r1, #1
 160 0020 2260     		str	r2, [r4]
 161 0022 0125     		movs	r5, #1
 162 0024 1E60     		str	r6, [r3]
 163              	.L20:
 164 0026 8342     		cmp	r3, r0
 165 0028 F4D1     		bne	.L21
 166 002a 0DB9     		cbnz	r5, .L31
 167              	.L19:
 168 002c F0BC     		pop	{r4, r5, r6, r7}
 169 002e 7047     		bx	lr
 170              	.L31:
 171 0030 3960     		str	r1, [r7]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 4


 172 0032 FBE7     		b	.L19
 173              	.L33:
 174              		.align	2
 175              	.L32:
 176 0034 00000000 		.word	_ZN13DriveMovement7numFreeE
 177 0038 00000000 		.word	_ZN13DriveMovement8freeListE
 178              		.size	_ZN3DDA10ReleaseDMsEv, .-_ZN3DDA10ReleaseDMsEv
 179              		.section	.text._ZNK3DDA11GetTimeLeftEv,"ax",%progbits
 180              		.align	1
 181              		.p2align 2,,3
 182              		.global	_ZNK3DDA11GetTimeLeftEv
 183              		.syntax unified
 184              		.thumb
 185              		.thumb_func
 186              		.fpu fpv4-sp-d16
 187              		.type	_ZNK3DDA11GetTimeLeftEv, %function
 188              	_ZNK3DDA11GetTimeLeftEv:
 189              		@ args = 0, pretend = 0, frame = 0
 190              		@ frame_needed = 0, uses_anonymous_args = 0
 191              		@ link register save eliminated.
 192 0000 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 193 0002 042B     		cmp	r3, #4
 194 0004 0ED0     		beq	.L37
 195 0006 027A     		ldrb	r2, [r0, #8]	@ zero_extendqisi2
 196 0008 D0F8DC30 		ldr	r3, [r0, #220]
 197 000c 032A     		cmp	r2, #3
 198 000e 01D0     		beq	.L38
 199 0010 1846     		mov	r0, r3
 200 0012 7047     		bx	lr
 201              	.L38:
 202 0014 044A     		ldr	r2, .L39
 203 0016 D0F8E000 		ldr	r0, [r0, #224]
 204 001a D2F89020 		ldr	r2, [r2, #144]
 205 001e 1844     		add	r0, r0, r3
 206 0020 801A     		subs	r0, r0, r2
 207 0022 7047     		bx	lr
 208              	.L37:
 209 0024 0020     		movs	r0, #0
 210 0026 7047     		bx	lr
 211              	.L40:
 212              		.align	2
 213              	.L39:
 214 0028 00000940 		.word	1074331648
 215              		.size	_ZNK3DDA11GetTimeLeftEv, .-_ZNK3DDA11GetTimeLeftEv
 216              		.section	.text._ZN3DDA8RemoveDMEj,"ax",%progbits
 217              		.align	1
 218              		.p2align 2,,3
 219              		.global	_ZN3DDA8RemoveDMEj
 220              		.syntax unified
 221              		.thumb
 222              		.thumb_func
 223              		.fpu fpv4-sp-d16
 224              		.type	_ZN3DDA8RemoveDMEj, %function
 225              	_ZN3DDA8RemoveDMEj:
 226              		@ args = 0, pretend = 0, frame = 0
 227              		@ frame_needed = 0, uses_anonymous_args = 0
 228              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 5


 229 0000 D0F8F420 		ldr	r2, [r0, #244]
 230 0004 52B1     		cbz	r2, .L41
 231 0006 5379     		ldrb	r3, [r2, #5]	@ zero_extendqisi2
 232 0008 9942     		cmp	r1, r3
 233 000a 04D1     		bne	.L44
 234 000c 0BE0     		b	.L51
 235              	.L46:
 236 000e 5879     		ldrb	r0, [r3, #5]	@ zero_extendqisi2
 237 0010 8842     		cmp	r0, r1
 238 0012 04D0     		beq	.L52
 239 0014 1A46     		mov	r2, r3
 240              	.L44:
 241 0016 1368     		ldr	r3, [r2]
 242 0018 002B     		cmp	r3, #0
 243 001a F8D1     		bne	.L46
 244              	.L41:
 245 001c 7047     		bx	lr
 246              	.L52:
 247 001e 1046     		mov	r0, r2
 248              	.L45:
 249 0020 1B68     		ldr	r3, [r3]
 250 0022 0360     		str	r3, [r0]
 251 0024 7047     		bx	lr
 252              	.L51:
 253 0026 F430     		adds	r0, r0, #244
 254 0028 1346     		mov	r3, r2
 255 002a F9E7     		b	.L45
 256              		.size	_ZN3DDA8RemoveDMEj, .-_ZN3DDA8RemoveDMEj
 257              		.global	__aeabi_f2d
 258              		.section	.text._ZNK3DDA16DebugPrintVectorEPKcPKfj,"ax",%progbits
 259              		.align	1
 260              		.p2align 2,,3
 261              		.global	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 262              		.syntax unified
 263              		.thumb
 264              		.thumb_func
 265              		.fpu fpv4-sp-d16
 266              		.type	_ZNK3DDA16DebugPrintVectorEPKcPKfj, %function
 267              	_ZNK3DDA16DebugPrintVectorEPKcPKfj:
 268              		@ args = 0, pretend = 0, frame = 0
 269              		@ frame_needed = 0, uses_anonymous_args = 0
 270 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 271 0004 0E48     		ldr	r0, .L61
 272 0006 1F46     		mov	r7, r3
 273 0008 1546     		mov	r5, r2
 274 000a FFF7FEFF 		bl	debugPrintf
 275 000e 97B1     		cbz	r7, .L54
 276 0010 DFF83480 		ldr	r8, .L61+8
 277 0014 0024     		movs	r4, #0
 278 0016 5B26     		movs	r6, #91
 279              	.L55:
 280 0018 55F8040B 		ldr	r0, [r5], #4	@ float
 281 001c FFF7FEFF 		bl	__aeabi_f2d
 282 0020 0134     		adds	r4, r4, #1
 283 0022 0246     		mov	r2, r0
 284 0024 0B46     		mov	r3, r1
 285 0026 4046     		mov	r0, r8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 6


 286 0028 3146     		mov	r1, r6
 287 002a FFF7FEFF 		bl	debugPrintf
 288 002e A742     		cmp	r7, r4
 289 0030 4FF02006 		mov	r6, #32
 290 0034 F0D1     		bne	.L55
 291              	.L54:
 292 0036 0348     		ldr	r0, .L61+4
 293 0038 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 294 003c FFF7FEBF 		b	debugPrintf
 295              	.L62:
 296              		.align	2
 297              	.L61:
 298 0040 00000000 		.word	.LC0
 299 0044 0C000000 		.word	.LC2
 300 0048 04000000 		.word	.LC1
 301              		.size	_ZNK3DDA16DebugPrintVectorEPKcPKfj, .-_ZNK3DDA16DebugPrintVectorEPKcPKfj
 302              		.section	.text._ZNK3DDA10DebugPrintEv,"ax",%progbits
 303              		.align	1
 304              		.p2align 2,,3
 305              		.global	_ZNK3DDA10DebugPrintEv
 306              		.syntax unified
 307              		.thumb
 308              		.thumb_func
 309              		.fpu fpv4-sp-d16
 310              		.type	_ZNK3DDA10DebugPrintEv, %function
 311              	_ZNK3DDA10DebugPrintEv:
 312              		@ args = 0, pretend = 0, frame = 40
 313              		@ frame_needed = 0, uses_anonymous_args = 0
 314 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 315 0004 454B     		ldr	r3, .L77
 316 0006 0446     		mov	r4, r0
 317 0008 5B69     		ldr	r3, [r3, #20]	@ unaligned
 318 000a 4548     		ldr	r0, .L77+4
 319 000c D3F85C63 		ldr	r6, [r3, #860]
 320 0010 9CB0     		sub	sp, sp, #112
 321 0012 FFF7FEFF 		bl	debugPrintf
 322 0016 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 323 0018 DB07     		lsls	r3, r3, #31
 324 001a 76D5     		bpl	.L75
 325 001c 002E     		cmp	r6, #0
 326 001e 77D0     		beq	.L76
 327 0020 D4ED2C6A 		vldr.32	s13, [r4, #176]
 328 0024 04F15008 		add	r8, r4, #80
 329 0028 13AA     		add	r2, sp, #76
 330 002a 04F18007 		add	r7, r4, #128
 331 002e 04EB8605 		add	r5, r4, r6, lsl #2
 332 0032 F1EE666A 		vneg.f32	s13, s13
 333 0036 4346     		mov	r3, r8
 334 0038 1046     		mov	r0, r2
 335 003a 3946     		mov	r1, r7
 336 003c 5035     		adds	r5, r5, #80
 337              	.L66:
 338 003e F3EC017A 		vldmia.32	r3!, {s15}
 339 0042 B1EC017A 		vldmia.32	r1!, {s14}
 340 0046 E6EE877A 		vfma.f32	s15, s13, s14
 341 004a AB42     		cmp	r3, r5
 342 004c E0EC017A 		vstmia.32	r0!, {s15}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 7


 343 0050 F5D1     		bne	.L66
 344              	.L65:
 345 0052 3346     		mov	r3, r6
 346 0054 3349     		ldr	r1, .L77+8
 347 0056 2046     		mov	r0, r4
 348 0058 FFF7FEFF 		bl	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 349 005c 3346     		mov	r3, r6
 350 005e 4246     		mov	r2, r8
 351 0060 3149     		ldr	r1, .L77+12
 352 0062 2046     		mov	r0, r4
 353 0064 FFF7FEFF 		bl	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 354              	.L64:
 355 0068 D4F8B000 		ldr	r0, [r4, #176]	@ float
 356 006c FFF7FEFF 		bl	__aeabi_f2d
 357 0070 0246     		mov	r2, r0
 358 0072 0B46     		mov	r3, r1
 359 0074 2D48     		ldr	r0, .L77+16
 360 0076 FFF7FEFF 		bl	debugPrintf
 361 007a 3A46     		mov	r2, r7
 362 007c 0523     		movs	r3, #5
 363 007e 2046     		mov	r0, r4
 364 0080 2B49     		ldr	r1, .L77+20
 365 0082 FFF7FEFF 		bl	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 366 0086 D4F8B400 		ldr	r0, [r4, #180]	@ float
 367 008a FFF7FEFF 		bl	__aeabi_f2d
 368 008e 0F46     		mov	r7, r1
 369 0090 D4E93A13 		ldrd	r1, r3, [r4, #232]
 370 0094 D4F8E420 		ldr	r2, [r4, #228]
 371 0098 1193     		str	r3, [sp, #68]
 372 009a D4F8DC30 		ldr	r3, [r4, #220]
 373 009e 1091     		str	r1, [sp, #64]
 374 00a0 0646     		mov	r6, r0
 375 00a2 D4F8D400 		ldr	r0, [r4, #212]	@ float
 376 00a6 CDE90E32 		strd	r3, r2, [sp, #56]
 377 00aa FFF7FEFF 		bl	__aeabi_f2d
 378 00ae CDE90C01 		strd	r0, [sp, #48]
 379 00b2 D4F8D000 		ldr	r0, [r4, #208]	@ float
 380 00b6 FFF7FEFF 		bl	__aeabi_f2d
 381 00ba CDE90A01 		strd	r0, [sp, #40]
 382 00be D4F8C800 		ldr	r0, [r4, #200]	@ float
 383 00c2 FFF7FEFF 		bl	__aeabi_f2d
 384 00c6 CDE90801 		strd	r0, [sp, #32]
 385 00ca D4F8CC00 		ldr	r0, [r4, #204]	@ float
 386 00ce FFF7FEFF 		bl	__aeabi_f2d
 387 00d2 CDE90601 		strd	r0, [sp, #24]
 388 00d6 D4F8C400 		ldr	r0, [r4, #196]	@ float
 389 00da FFF7FEFF 		bl	__aeabi_f2d
 390 00de CDE90401 		strd	r0, [sp, #16]
 391 00e2 D4F8BC00 		ldr	r0, [r4, #188]	@ float
 392 00e6 FFF7FEFF 		bl	__aeabi_f2d
 393 00ea CDE90201 		strd	r0, [sp, #8]
 394 00ee D4F8B800 		ldr	r0, [r4, #184]	@ float
 395 00f2 FFF7FEFF 		bl	__aeabi_f2d
 396 00f6 3246     		mov	r2, r6
 397 00f8 CDE90001 		strd	r0, [sp]
 398 00fc 3B46     		mov	r3, r7
 399 00fe 0D48     		ldr	r0, .L77+24
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 8


 400 0100 FFF7FEFF 		bl	debugPrintf
 401 0104 1CB0     		add	sp, sp, #112
 402              		@ sp needed
 403 0106 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 404              	.L75:
 405 010a 04F18007 		add	r7, r4, #128
 406 010e ABE7     		b	.L64
 407              	.L76:
 408 0110 04F15008 		add	r8, r4, #80
 409 0114 13AA     		add	r2, sp, #76
 410 0116 04F18007 		add	r7, r4, #128
 411 011a 9AE7     		b	.L65
 412              	.L78:
 413              		.align	2
 414              	.L77:
 415 011c 00000000 		.word	reprap
 416 0120 00000000 		.word	.LC3
 417 0124 08000000 		.word	.LC4
 418 0128 10000000 		.word	.LC5
 419 012c 18000000 		.word	.LC6
 420 0130 20000000 		.word	.LC7
 421 0134 28000000 		.word	.LC8
 422              		.size	_ZNK3DDA10DebugPrintEv, .-_ZNK3DDA10DebugPrintEv
 423              		.section	.text._ZNK3DDA13DebugPrintAllEv,"ax",%progbits
 424              		.align	1
 425              		.p2align 2,,3
 426              		.global	_ZNK3DDA13DebugPrintAllEv
 427              		.syntax unified
 428              		.thumb
 429              		.thumb_func
 430              		.fpu fpv4-sp-d16
 431              		.type	_ZNK3DDA13DebugPrintAllEv, %function
 432              	_ZNK3DDA13DebugPrintAllEv:
 433              		@ args = 0, pretend = 0, frame = 0
 434              		@ frame_needed = 0, uses_anonymous_args = 0
 435 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 436 0004 DFF87480 		ldr	r8, .L103
 437 0008 0646     		mov	r6, r0
 438 000a FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
 439 000e D8F81430 		ldr	r3, [r8, #20]
 440 0012 D3F85C43 		ldr	r4, [r3, #860]
 441 0016 ACB1     		cbz	r4, .L80
 442 0018 06F1F407 		add	r7, r6, #244
 443 001c 0025     		movs	r5, #0
 444              	.L85:
 445 001e 57F8043F 		ldr	r3, [r7, #4]!
 446 0022 1846     		mov	r0, r3
 447 0024 4BB1     		cbz	r3, .L83
 448 0026 D8F81430 		ldr	r3, [r8, #20]
 449 002a B27A     		ldrb	r2, [r6, #10]	@ zero_extendqisi2
 450 002c 2B44     		add	r3, r3, r5
 451 002e C2F34002 		ubfx	r2, r2, #1, #1
 452 0032 93F81015 		ldrb	r1, [r3, #1296]	@ zero_extendqisi2
 453 0036 FFF7FEFF 		bl	_ZNK13DriveMovement10DebugPrintEcb
 454              	.L83:
 455 003a 0135     		adds	r5, r5, #1
 456 003c AC42     		cmp	r4, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 9


 457 003e EED1     		bne	.L85
 458 0040 0B2C     		cmp	r4, #11
 459 0042 18D8     		bhi	.L79
 460              	.L80:
 461 0044 04F13E05 		add	r5, r4, #62
 462 0048 06EB8505 		add	r5, r6, r5, lsl #2
 463 004c C4F13006 		rsb	r6, r4, #48
 464 0050 02E0     		b	.L87
 465              	.L86:
 466 0052 0134     		adds	r4, r4, #1
 467 0054 0C2C     		cmp	r4, #12
 468 0056 0ED0     		beq	.L79
 469              	.L87:
 470 0058 55F8040B 		ldr	r0, [r5], #4
 471 005c 0028     		cmp	r0, #0
 472 005e F8D0     		beq	.L86
 473 0060 0379     		ldrb	r3, [r0, #4]	@ zero_extendqisi2
 474 0062 002B     		cmp	r3, #0
 475 0064 F5D0     		beq	.L86
 476 0066 3119     		adds	r1, r6, r4
 477 0068 C9B2     		uxtb	r1, r1
 478 006a 0022     		movs	r2, #0
 479 006c 0134     		adds	r4, r4, #1
 480 006e FFF7FEFF 		bl	_ZNK13DriveMovement10DebugPrintEcb
 481 0072 0C2C     		cmp	r4, #12
 482 0074 F0D1     		bne	.L87
 483              	.L79:
 484 0076 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 485              	.L104:
 486 007a 00BF     		.align	2
 487              	.L103:
 488 007c 00000000 		.word	reprap
 489              		.size	_ZNK3DDA13DebugPrintAllEv, .-_ZNK3DDA13DebugPrintAllEv
 490              		.section	.text._ZN3DDA4InitEv,"ax",%progbits
 491              		.align	1
 492              		.p2align 2,,3
 493              		.global	_ZN3DDA4InitEv
 494              		.syntax unified
 495              		.thumb
 496              		.thumb_func
 497              		.fpu fpv4-sp-d16
 498              		.type	_ZN3DDA4InitEv, %function
 499              	_ZN3DDA4InitEv:
 500              		@ args = 0, pretend = 0, frame = 0
 501              		@ frame_needed = 0, uses_anonymous_args = 0
 502              		@ link register save eliminated.
 503 0000 10B4     		push	{r4}
 504 0002 00F12003 		add	r3, r0, #32
 505 0006 00F15001 		add	r1, r0, #80
 506 000a 0022     		movs	r2, #0
 507              	.L106:
 508 000c 43F8042B 		str	r2, [r3], #4
 509 0010 9942     		cmp	r1, r3
 510 0012 FBD1     		bne	.L106
 511 0014 837A     		ldrb	r3, [r0, #10]	@ zero_extendqisi2
 512 0016 0272     		strb	r2, [r0, #8]
 513 0018 0024     		movs	r4, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 10


 514 001a 62F30003 		bfi	r3, r2, #0, #1
 515 001e 4FF0FF31 		mov	r1, #-1
 516 0022 C0F8C040 		str	r4, [r0, #192]	@ float
 517 0026 8281     		strh	r2, [r0, #12]	@ movhi
 518 0028 8372     		strb	r3, [r0, #10]
 519 002a C161     		str	r1, [r0, #28]
 520 002c 5DF8044B 		ldr	r4, [sp], #4
 521 0030 7047     		bx	lr
 522              		.size	_ZN3DDA4InitEv, .-_ZN3DDA4InitEv
 523 0032 00BF     		.section	.text._ZNK3DDA15IsGoodToPrepareEv,"ax",%progbits
 524              		.align	1
 525              		.p2align 2,,3
 526              		.global	_ZNK3DDA15IsGoodToPrepareEv
 527              		.syntax unified
 528              		.thumb
 529              		.thumb_func
 530              		.fpu fpv4-sp-d16
 531              		.type	_ZNK3DDA15IsGoodToPrepareEv, %function
 532              	_ZNK3DDA15IsGoodToPrepareEv:
 533              		@ args = 0, pretend = 0, frame = 0
 534              		@ frame_needed = 0, uses_anonymous_args = 0
 535              		@ link register save eliminated.
 536 0000 90ED327A 		vldr.32	s14, [r0, #200]
 537 0004 D0ED337A 		vldr.32	s15, [r0, #204]
 538 0008 B4EEE77A 		vcmpe.f32	s14, s15
 539 000c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 540 0010 ACBF     		ite	ge
 541 0012 0120     		movge	r0, #1
 542 0014 0020     		movlt	r0, #0
 543 0016 7047     		bx	lr
 544              		.size	_ZNK3DDA15IsGoodToPrepareEv, .-_ZNK3DDA15IsGoodToPrepareEv
 545              		.section	.text.hot._ZN3DDA15RecalculateMoveEv,"ax",%progbits
 546              		.align	1
 547              		.p2align 2,,3
 548              		.global	_ZN3DDA15RecalculateMoveEv
 549              		.syntax unified
 550              		.thumb
 551              		.thumb_func
 552              		.fpu fpv4-sp-d16
 553              		.type	_ZN3DDA15RecalculateMoveEv, %function
 554              	_ZN3DDA15RecalculateMoveEv:
 555              		@ args = 0, pretend = 0, frame = 0
 556              		@ frame_needed = 0, uses_anonymous_args = 0
 557 0000 10B5     		push	{r4, lr}
 558 0002 90ED316A 		vldr.32	s12, [r0, #196]
 559 0006 D0ED326A 		vldr.32	s13, [r0, #200]
 560 000a D0ED2D4A 		vldr.32	s9, [r0, #180]
 561 000e 90ED2E5A 		vldr.32	s10, [r0, #184]
 562 0012 D0ED2C7A 		vldr.32	s15, [r0, #176]
 563 0016 26EE064A 		vmul.f32	s8, s12, s12
 564 001a 66EEA63A 		vmul.f32	s7, s13, s13
 565 001e 2DED028B 		vpush.64	{d8}
 566 0022 90ED2F8A 		vldr.32	s16, [r0, #188]
 567 0026 F0EE445A 		vmov.f32	s11, s8
 568 002a B0EE632A 		vmov.f32	s4, s7
 569 002e D8EE085A 		vfnms.f32	s11, s16, s16
 570 0032 0446     		mov	r4, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 11


 571 0034 98EE082A 		vfnms.f32	s4, s16, s16
 572 0038 74EEA42A 		vadd.f32	s5, s9, s9
 573 003c 35EE053A 		vadd.f32	s6, s10, s10
 574 0040 85EEA27A 		vdiv.f32	s14, s11, s5
 575 0044 C2EE035A 		vdiv.f32	s11, s4, s6
 576 0048 80ED347A 		vstr.32	s14, [r0, #208]
 577 004c 37EE252A 		vadd.f32	s4, s14, s11
 578 0050 C0ED355A 		vstr.32	s11, [r0, #212]
 579 0054 B4EEE72A 		vcmpe.f32	s4, s15
 580 0058 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 581 005c 6FD4     		bmi	.L117
 582 005e 22EEA37A 		vmul.f32	s14, s5, s7
 583 0062 22EE832A 		vmul.f32	s4, s5, s6
 584 0066 72EE835A 		vadd.f32	s11, s5, s6
 585 006a A7EE827A 		vfma.f32	s14, s15, s4
 586 006e A3EE047A 		vfma.f32	s14, s6, s8
 587 0072 87EE250A 		vdiv.f32	s0, s14, s11
 588 0076 B4EEC40A 		vcmpe.f32	s0, s8
 589 007a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 590 007e 36DC     		bgt	.L152
 591              	.L114:
 592 0080 B4EEE66A 		vcmpe.f32	s12, s13
 593 0084 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 594 0088 77EEA75A 		vadd.f32	s11, s15, s15
 595 008c 40F1A380 		bpl	.L146
 596 0090 33EEC44A 		vsub.f32	s8, s7, s8
 597 0094 DFED7F3A 		vldr.32	s7, .L153
 598 0098 9FED7F7A 		vldr.32	s14, .L153+4
 599 009c C4ED347A 		vstr.32	s15, [r4, #208]
 600 00a0 C4EE258A 		vdiv.f32	s17, s8, s11
 601 00a4 64EEA34A 		vmul.f32	s9, s9, s7
 602 00a8 C4ED336A 		vstr.32	s13, [r4, #204]
 603 00ac F4EEE84A 		vcmpe.f32	s9, s17
 604 00b0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 605 00b4 84ED357A 		vstr.32	s14, [r4, #212]
 606 00b8 40F1C380 		bpl	.L147
 607 00bc 774A     		ldr	r2, .L153+8
 608 00be D168     		ldr	r1, [r2, #12]
 609 00c0 0B6B     		ldr	r3, [r1, #48]
 610 00c2 0133     		adds	r3, r3, #1
 611 00c4 0B63     		str	r3, [r1, #48]
 612 00c6 D2F80831 		ldr	r3, [r2, #264]
 613 00ca D906     		lsls	r1, r3, #27
 614 00cc 00F1C480 		bmi	.L122
 615              	.L150:
 616 00d0 D4ED326A 		vldr.32	s13, [r4, #200]
 617 00d4 94ED338A 		vldr.32	s16, [r4, #204]
 618 00d8 94ED316A 		vldr.32	s12, [r4, #196]
 619 00dc 94ED2E5A 		vldr.32	s10, [r4, #184]
 620 00e0 D4ED2C7A 		vldr.32	s15, [r4, #176]
 621 00e4 94ED347A 		vldr.32	s14, [r4, #208]
 622 00e8 D4ED355A 		vldr.32	s11, [r4, #212]
 623 00ec AFE0     		b	.L120
 624              	.L152:
 625 00ee B4EEE30A 		vcmpe.f32	s0, s7
 626 00f2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 627 00f6 C3DD     		ble	.L114
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 12


 628 00f8 70EE445A 		vsub.f32	s11, s0, s8
 629 00fc 30EE634A 		vsub.f32	s8, s0, s7
 630 0100 85EEA27A 		vdiv.f32	s14, s11, s5
 631 0104 C4EE035A 		vdiv.f32	s11, s8, s6
 632 0108 B5EE400A 		vcmp.f32	s0, #0
 633 010c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 634 0110 80ED347A 		vstr.32	s14, [r0, #208]
 635 0114 C0ED355A 		vstr.32	s11, [r0, #212]
 636 0118 B1EEC08A 		vsqrt.f32	s16, s0
 637 011c 0FD5     		bpl	.L117
 638 011e FFF7FEFF 		bl	sqrtf
 639 0122 D4ED326A 		vldr.32	s13, [r4, #200]
 640 0126 94ED316A 		vldr.32	s12, [r4, #196]
 641 012a D4ED2D4A 		vldr.32	s9, [r4, #180]
 642 012e 94ED2E5A 		vldr.32	s10, [r4, #184]
 643 0132 D4ED2C7A 		vldr.32	s15, [r4, #176]
 644 0136 94ED347A 		vldr.32	s14, [r4, #208]
 645 013a D4ED355A 		vldr.32	s11, [r4, #212]
 646              	.L117:
 647 013e 84ED338A 		vstr.32	s16, [r4, #204]
 648              	.L113:
 649 0142 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 650 0144 5B07     		lsls	r3, r3, #29
 651 0146 29D5     		bpl	.L126
 652 0148 F5EE406A 		vcmp.f32	s13, #0
 653 014c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 654 0150 24D0     		beq	.L126
 655 0152 524B     		ldr	r3, .L153+8
 656 0154 5968     		ldr	r1, [r3, #4]
 657 0156 04F59270 		add	r0, r4, #292
 658 015a 04F1F403 		add	r3, r4, #244
 659 015e 01F50371 		add	r1, r1, #524
 660 0162 03E0     		b	.L129
 661              	.L127:
 662 0164 9842     		cmp	r0, r3
 663 0166 01F10401 		add	r1, r1, #4
 664 016a 17D0     		beq	.L126
 665              	.L129:
 666 016c 53F8042F 		ldr	r2, [r3, #4]!
 667 0170 002A     		cmp	r2, #0
 668 0172 F7D0     		beq	.L127
 669 0174 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 670 0176 012A     		cmp	r2, #1
 671 0178 F4D1     		bne	.L127
 672 017a 13ED1E4A 		vldr.32	s8, [r3, #-120]
 673 017e D1ED003A 		vldr.32	s7, [r1]
 674 0182 B0EEC44A 		vabs.f32	s8, s8
 675 0186 24EE264A 		vmul.f32	s8, s8, s13
 676 018a B4EEE34A 		vcmpe.f32	s8, s7
 677 018e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 678 0192 E7DD     		ble	.L127
 679 0194 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 680 0196 6FF38203 		bfc	r3, #2, #1
 681 019a A372     		strb	r3, [r4, #10]
 682              	.L126:
 683 019c 38EE466A 		vsub.f32	s12, s16, s12
 684 01a0 78EE666A 		vsub.f32	s13, s16, s13
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 13


 685 01a4 37EEC77A 		vsub.f32	s14, s15, s14
 686 01a8 C6EE247A 		vdiv.f32	s15, s12, s9
 687 01ac 37EE657A 		vsub.f32	s14, s14, s11
 688 01b0 86EE856A 		vdiv.f32	s12, s13, s10
 689 01b4 C7EE086A 		vdiv.f32	s13, s14, s16
 690 01b8 BDEC028B 		vldm	sp!, {d8}
 691 01bc 77EE867A 		vadd.f32	s15, s15, s12
 692 01c0 9FED377A 		vldr.32	s14, .L153+12
 693 01c4 77EEA67A 		vadd.f32	s15, s15, s13
 694 01c8 67EE877A 		vmul.f32	s15, s15, s14
 695 01cc FCEEE77A 		vcvt.u32.f32	s15, s15
 696 01d0 C4ED377A 		vstr.32	s15, [r4, #220]	@ int
 697 01d4 10BD     		pop	{r4, pc}
 698              	.L146:
 699 01d6 34EE634A 		vsub.f32	s8, s8, s7
 700 01da DFED2E3A 		vldr.32	s7, .L153
 701 01de 9FED2E7A 		vldr.32	s14, .L153+4
 702 01e2 C4ED357A 		vstr.32	s15, [r4, #212]
 703 01e6 C4EE258A 		vdiv.f32	s17, s8, s11
 704 01ea 25EE235A 		vmul.f32	s10, s10, s7
 705 01ee 84ED336A 		vstr.32	s12, [r4, #204]
 706 01f2 B4EEE85A 		vcmpe.f32	s10, s17
 707 01f6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 708 01fa 84ED347A 		vstr.32	s14, [r4, #208]
 709 01fe 17D5     		bpl	.L148
 710 0200 264A     		ldr	r2, .L153+8
 711 0202 D168     		ldr	r1, [r2, #12]
 712 0204 0B6B     		ldr	r3, [r1, #48]
 713 0206 0133     		adds	r3, r3, #1
 714 0208 0B63     		str	r3, [r1, #48]
 715 020a D2F80831 		ldr	r3, [r2, #264]
 716 020e DA06     		lsls	r2, r3, #27
 717 0210 31D4     		bmi	.L125
 718              	.L151:
 719 0212 D4ED326A 		vldr.32	s13, [r4, #200]
 720 0216 94ED338A 		vldr.32	s16, [r4, #204]
 721 021a 94ED316A 		vldr.32	s12, [r4, #196]
 722 021e D4ED2D4A 		vldr.32	s9, [r4, #180]
 723 0222 D4ED2C7A 		vldr.32	s15, [r4, #176]
 724 0226 94ED347A 		vldr.32	s14, [r4, #208]
 725 022a D4ED355A 		vldr.32	s11, [r4, #212]
 726 022e 03E0     		b	.L123
 727              	.L148:
 728 0230 F0EE675A 		vmov.f32	s11, s15
 729 0234 B0EE468A 		vmov.f32	s16, s12
 730              	.L123:
 731 0238 B0EE685A 		vmov.f32	s10, s17
 732 023c C4ED2E8A 		vstr.32	s17, [r4, #184]
 733 0240 7FE7     		b	.L113
 734              	.L147:
 735 0242 F0EE475A 		vmov.f32	s11, s14
 736 0246 B0EE668A 		vmov.f32	s16, s13
 737 024a B0EE677A 		vmov.f32	s14, s15
 738              	.L120:
 739 024e C4ED2D8A 		vstr.32	s17, [r4, #180]
 740 0252 F0EE684A 		vmov.f32	s9, s17
 741 0256 74E7     		b	.L113
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 14


 742              	.L122:
 743 0258 18EE900A 		vmov	r0, s17
 744 025c FFF7FEFF 		bl	__aeabi_f2d
 745 0260 0246     		mov	r2, r0
 746 0262 0B46     		mov	r3, r1
 747 0264 0F48     		ldr	r0, .L153+16
 748 0266 4FF46B71 		mov	r1, #940
 749 026a FFF7FEFF 		bl	debugPrintf
 750 026e 2046     		mov	r0, r4
 751 0270 FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
 752 0274 2CE7     		b	.L150
 753              	.L125:
 754 0276 18EE900A 		vmov	r0, s17
 755 027a FFF7FEFF 		bl	__aeabi_f2d
 756 027e 0246     		mov	r2, r0
 757 0280 0B46     		mov	r3, r1
 758 0282 0948     		ldr	r0, .L153+20
 759 0284 40F2BE31 		movw	r1, #958
 760 0288 FFF7FEFF 		bl	debugPrintf
 761 028c 2046     		mov	r0, r4
 762 028e FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
 763 0292 BEE7     		b	.L151
 764              	.L154:
 765              		.align	2
 766              	.L153:
 767 0294 5C8F823F 		.word	1065520988
 768 0298 00000000 		.word	0
 769 029c 00000000 		.word	reprap
 770 02a0 C0E16449 		.word	1231348160
 771 02a4 00000000 		.word	.LC9
 772 02a8 14000000 		.word	.LC10
 773              		.size	_ZN3DDA15RecalculateMoveEv, .-_ZN3DDA15RecalculateMoveEv
 774              		.section	.text.hot._ZN3DDA11MatchSpeedsEv,"ax",%progbits
 775              		.align	1
 776              		.p2align 2,,3
 777              		.global	_ZN3DDA11MatchSpeedsEv
 778              		.syntax unified
 779              		.thumb
 780              		.thumb_func
 781              		.fpu fpv4-sp-d16
 782              		.type	_ZN3DDA11MatchSpeedsEv, %function
 783              	_ZN3DDA11MatchSpeedsEv:
 784              		@ args = 0, pretend = 0, frame = 0
 785              		@ frame_needed = 0, uses_anonymous_args = 0
 786              		@ link register save eliminated.
 787 0000 30B4     		push	{r4, r5}
 788 0002 1D4B     		ldr	r3, .L174
 789 0004 0268     		ldr	r2, [r0]
 790 0006 5C68     		ldr	r4, [r3, #4]
 791 0008 F832     		adds	r2, r2, #248
 792 000a 04F50374 		add	r4, r4, #524
 793 000e 00F1F403 		add	r3, r0, #244
 794 0012 00F59275 		add	r5, r0, #292
 795 0016 0AE0     		b	.L160
 796              	.L156:
 797 0018 1168     		ldr	r1, [r2]
 798 001a 11B1     		cbz	r1, .L158
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 15


 799 001c 0979     		ldrb	r1, [r1, #4]	@ zero_extendqisi2
 800 001e 0129     		cmp	r1, #1
 801 0020 0CD0     		beq	.L157
 802              	.L158:
 803 0022 AB42     		cmp	r3, r5
 804 0024 04F10404 		add	r4, r4, #4
 805 0028 02F10402 		add	r2, r2, #4
 806 002c 21D0     		beq	.L173
 807              	.L160:
 808 002e 53F8041F 		ldr	r1, [r3, #4]!
 809 0032 0029     		cmp	r1, #0
 810 0034 F0D0     		beq	.L156
 811 0036 0979     		ldrb	r1, [r1, #4]	@ zero_extendqisi2
 812 0038 0129     		cmp	r1, #1
 813 003a EDD1     		bne	.L156
 814              	.L157:
 815 003c 12ED1E6A 		vldr.32	s12, [r2, #-120]
 816 0040 53ED1E7A 		vldr.32	s15, [r3, #-120]
 817 0044 90ED387A 		vldr.32	s14, [r0, #224]
 818 0048 D4ED006A 		vldr.32	s13, [r4]
 819 004c 77EEC67A 		vsub.f32	s15, s15, s12
 820 0050 0434     		adds	r4, r4, #4
 821 0052 F0EEE77A 		vabs.f32	s15, s15
 822 0056 27EE877A 		vmul.f32	s14, s15, s14
 823 005a 0432     		adds	r2, r2, #4
 824 005c B4EEE67A 		vcmpe.f32	s14, s13
 825 0060 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 826 0064 C4BF     		itt	gt
 827 0066 86EEA77A 		vdivgt.f32	s14, s13, s15
 828 006a 80ED387A 		vstrgt.32	s14, [r0, #224]
 829 006e AB42     		cmp	r3, r5
 830 0070 DDD1     		bne	.L160
 831              	.L173:
 832 0072 30BC     		pop	{r4, r5}
 833 0074 7047     		bx	lr
 834              	.L175:
 835 0076 00BF     		.align	2
 836              	.L174:
 837 0078 00000000 		.word	reprap
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
 852 0002 D0ED387A 		vldr.32	s15, [r0, #224]
 853 0006 8F4E     		ldr	r6, .L241
 854 0008 8F4F     		ldr	r7, .L241+4
 855 000a 2DED028B 		vpush.64	{d8}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 16


 856 000e 9FED8F8A 		vldr.32	s16, .L241+8
 857 0012 0446     		mov	r4, r0
 858 0014 0025     		movs	r5, #0
 859              	.L177:
 860 0016 94ED2F7A 		vldr.32	s14, [r4, #188]
 861 001a D4ED336A 		vldr.32	s13, [r4, #204]
 862 001e B4EEE77A 		vcmpe.f32	s14, s15
 863 0022 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 864 0026 B4EEE67A 		vcmpe.f32	s14, s13
 865 002a 48BF     		it	mi
 866 002c 84ED387A 		vstrmi.32	s14, [r4, #224]
 867 0030 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 868 0034 30D9     		bls	.L190
 869 0036 D4ED357A 		vldr.32	s15, [r4, #212]
 870 003a 94ED2C0A 		vldr.32	s0, [r4, #176]
 871 003e B4EE670A 		vcmp.f32	s0, s15
 872 0042 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 873 0046 00F08180 		beq	.L183
 874 004a B4EEE67A 		vcmpe.f32	s14, s13
 875 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 876 0052 06DD     		ble	.L184
 877 0054 60EE086A 		vmul.f32	s13, s0, s16
 878 0058 F4EEE76A 		vcmpe.f32	s13, s15
 879 005c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 880 0060 74D4     		bmi	.L183
 881              	.L184:
 882 0062 D4ED2D7A 		vldr.32	s15, [r4, #180]
 883 0066 94ED317A 		vldr.32	s14, [r4, #196]
 884 006a 77EEA77A 		vadd.f32	s15, s15, s15
 885 006e 27EE800A 		vmul.f32	s0, s15, s0
 886              	.L234:
 887 0072 A7EE070A 		vfma.f32	s0, s14, s14
 888 0076 B5EE400A 		vcmp.f32	s0, #0
 889 007a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 890 007e B1EEC08A 		vsqrt.f32	s16, s0
 891 0082 00F1D380 		bmi	.L235
 892              	.L193:
 893 0086 D4ED387A 		vldr.32	s15, [r4, #224]
 894 008a F4EEC87A 		vcmpe.f32	s15, s16
 895 008e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 896 0092 01DD     		ble	.L190
 897 0094 84ED388A 		vstr.32	s16, [r4, #224]
 898              	.L190:
 899 0098 2046     		mov	r0, r4
 900 009a FFF7FEFF 		bl	_ZN3DDA11MatchSpeedsEv
 901 009e D4ED387A 		vldr.32	s15, [r4, #224]
 902 00a2 94ED327A 		vldr.32	s14, [r4, #200]
 903 00a6 DFED6A8A 		vldr.32	s17, .L241+12
 904 00aa 664E     		ldr	r6, .L241
 905 00ac 694F     		ldr	r7, .L241+16
 906 00ae B4EEE77A 		vcmpe.f32	s14, s15
 907 00b2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 908 00b6 3FDD     		ble	.L229
 909              	.L238:
 910 00b8 27EE287A 		vmul.f32	s14, s14, s17
 911 00bc B4EEE77A 		vcmpe.f32	s14, s15
 912 00c0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 17


 913 00c4 08DD     		ble	.L207
 914 00c6 F268     		ldr	r2, [r6, #12]
 915 00c8 136B     		ldr	r3, [r2, #48]
 916 00ca 0133     		adds	r3, r3, #1
 917 00cc 1363     		str	r3, [r2, #48]
 918 00ce D6F80831 		ldr	r3, [r6, #264]
 919 00d2 DB06     		lsls	r3, r3, #27
 920 00d4 00F18E80 		bmi	.L236
 921              	.L207:
 922 00d8 2046     		mov	r0, r4
 923 00da FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 924 00de 95B3     		cbz	r5, .L176
 925              	.L239:
 926 00e0 2468     		ldr	r4, [r4]
 927 00e2 D4ED2D7A 		vldr.32	s15, [r4, #180]
 928 00e6 94ED2C0A 		vldr.32	s0, [r4, #176]
 929 00ea 6368     		ldr	r3, [r4, #4]
 930 00ec 77EEA77A 		vadd.f32	s15, s15, s15
 931 00f0 93ED327A 		vldr.32	s14, [r3, #200]
 932 00f4 27EE800A 		vmul.f32	s0, s15, s0
 933 00f8 84ED317A 		vstr.32	s14, [r4, #196]
 934 00fc A7EE070A 		vfma.f32	s0, s14, s14
 935 0100 B5EE400A 		vcmp.f32	s0, #0
 936 0104 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 937 0108 B1EEC08A 		vsqrt.f32	s16, s0
 938 010c 00F19180 		bmi	.L237
 939              	.L210:
 940 0110 D4ED387A 		vldr.32	s15, [r4, #224]
 941 0114 F4EEC87A 		vcmpe.f32	s15, s16
 942 0118 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 943 011c 03DD     		ble	.L201
 944 011e 84ED388A 		vstr.32	s16, [r4, #224]
 945 0122 F0EE487A 		vmov.f32	s15, s16
 946              	.L201:
 947 0126 94ED327A 		vldr.32	s14, [r4, #200]
 948 012a B4EEE77A 		vcmpe.f32	s14, s15
 949 012e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 950 0132 05F1FF35 		add	r5, r5, #-1
 951 0136 BFDC     		bgt	.L238
 952              	.L229:
 953 0138 C4ED327A 		vstr.32	s15, [r4, #200]
 954 013c 2046     		mov	r0, r4
 955 013e FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 956 0142 002D     		cmp	r5, #0
 957 0144 CCD1     		bne	.L239
 958              	.L176:
 959 0146 BDEC028B 		vldm	sp!, {d8}
 960 014a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 961              	.L183:
 962 014c 6368     		ldr	r3, [r4, #4]
 963 014e 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 964 0150 012A     		cmp	r2, #1
 965 0152 86D1     		bne	.L184
 966 0154 D3ED357A 		vldr.32	s15, [r3, #212]
 967 0158 F5EEC07A 		vcmpe.f32	s15, #0
 968 015c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 969 0160 7FF77FAF 		ble	.L184
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 18


 970 0164 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 971 0166 012A     		cmp	r2, #1
 972 0168 53D1     		bne	.L191
 973 016a 997A     		ldrb	r1, [r3, #10]	@ zero_extendqisi2
 974 016c A27A     		ldrb	r2, [r4, #10]	@ zero_extendqisi2
 975 016e 4A40     		eors	r2, r2, r1
 976 0170 5006     		lsls	r0, r2, #25
 977 0172 4ED4     		bmi	.L191
 978 0174 1007     		lsls	r0, r2, #28
 979 0176 08D5     		bpl	.L192
 980 0178 0907     		lsls	r1, r1, #28
 981 017a 4AD5     		bpl	.L191
 982 017c D3ED2F7A 		vldr.32	s15, [r3, #188]
 983 0180 B4EE677A 		vcmp.f32	s14, s15
 984 0184 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 985 0188 43D1     		bne	.L191
 986              	.L192:
 987 018a 2046     		mov	r0, r4
 988 018c FFF7FEFF 		bl	_ZN3DDA11MatchSpeedsEv
 989 0190 D4ED2E7A 		vldr.32	s15, [r4, #184]
 990 0194 94ED2C0A 		vldr.32	s0, [r4, #176]
 991 0198 94ED387A 		vldr.32	s14, [r4, #224]
 992 019c 77EEA77A 		vadd.f32	s15, s15, s15
 993 01a0 27EE800A 		vmul.f32	s0, s15, s0
 994 01a4 A7EE070A 		vfma.f32	s0, s14, s14
 995 01a8 B5EE400A 		vcmp.f32	s0, #0
 996 01ac F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 997 01b0 F1EEC08A 		vsqrt.f32	s17, s0
 998 01b4 43D4     		bmi	.L240
 999              	.L196:
 1000 01b6 F4EE688A 		vcmp.f32	s17, s17
 1001 01ba F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1002 01be D4ED2F7A 		vldr.32	s15, [r4, #188]
 1003 01c2 6468     		ldr	r4, [r4, #4]
 1004 01c4 38D6     		bvs	.L212
 1005 01c6 F4EE687A 		vcmp.f32	s15, s17
 1006 01ca F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1007 01ce C8BF     		it	gt
 1008 01d0 F0EE687A 		vmovgt.f32	s15, s17
 1009              	.L197:
 1010 01d4 C4ED387A 		vstr.32	s15, [r4, #224]
 1011 01d8 D6F80831 		ldr	r3, [r6, #264]
 1012 01dc 5A06     		lsls	r2, r3, #25
 1013 01de 05F10105 		add	r5, r5, #1
 1014 01e2 7FF518AF 		bpl	.L177
 1015 01e6 2946     		mov	r1, r5
 1016 01e8 3846     		mov	r0, r7
 1017 01ea FFF7FEFF 		bl	debugPrintf
 1018 01ee D4ED387A 		vldr.32	s15, [r4, #224]
 1019 01f2 10E7     		b	.L177
 1020              	.L236:
 1021 01f4 D4F8E000 		ldr	r0, [r4, #224]	@ float
 1022 01f8 FFF7FEFF 		bl	__aeabi_f2d
 1023 01fc 0246     		mov	r2, r0
 1024 01fe 0B46     		mov	r3, r1
 1025 0200 3846     		mov	r0, r7
 1026 0202 40F2F521 		movw	r1, #757
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 19


 1027 0206 FFF7FEFF 		bl	debugPrintf
 1028 020a 2046     		mov	r0, r4
 1029 020c FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
 1030 0210 62E7     		b	.L207
 1031              	.L191:
 1032 0212 D4ED2E7A 		vldr.32	s15, [r4, #184]
 1033 0216 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 1034 0218 94ED317A 		vldr.32	s14, [r4, #196]
 1035 021c 77EEA77A 		vadd.f32	s15, s15, s15
 1036 0220 43F02003 		orr	r3, r3, #32
 1037 0224 27EE800A 		vmul.f32	s0, s15, s0
 1038 0228 A372     		strb	r3, [r4, #10]
 1039 022a 22E7     		b	.L234
 1040              	.L235:
 1041 022c FFF7FEFF 		bl	sqrtf
 1042 0230 29E7     		b	.L193
 1043              	.L237:
 1044 0232 FFF7FEFF 		bl	sqrtf
 1045 0236 6BE7     		b	.L210
 1046              	.L212:
 1047 0238 F0EE687A 		vmov.f32	s15, s17
 1048 023c CAE7     		b	.L197
 1049              	.L240:
 1050 023e FFF7FEFF 		bl	sqrtf
 1051 0242 B8E7     		b	.L196
 1052              	.L242:
 1053              		.align	2
 1054              	.L241:
 1055 0244 00000000 		.word	reprap
 1056 0248 00000000 		.word	.LC11
 1057 024c 48E17A3F 		.word	1065017672
 1058 0250 A4707D3F 		.word	1065185444
 1059 0254 14000000 		.word	.LC12
 1060              		.size	_ZN3DDA11DoLookaheadEPS_, .-_ZN3DDA11DoLookaheadEPS_
 1061              		.section	.text._ZN3DDA16FetchEndPositionEPVlPVf,"ax",%progbits
 1062              		.align	1
 1063              		.p2align 2,,3
 1064              		.global	_ZN3DDA16FetchEndPositionEPVlPVf
 1065              		.syntax unified
 1066              		.thumb
 1067              		.thumb_func
 1068              		.fpu fpv4-sp-d16
 1069              		.type	_ZN3DDA16FetchEndPositionEPVlPVf, %function
 1070              	_ZN3DDA16FetchEndPositionEPVlPVf:
 1071              		@ args = 0, pretend = 0, frame = 0
 1072              		@ frame_needed = 0, uses_anonymous_args = 0
 1073              		@ link register save eliminated.
 1074 0000 F0B4     		push	{r4, r5, r6, r7}
 1075 0002 00F11C03 		add	r3, r0, #28
 1076 0006 0646     		mov	r6, r0
 1077 0008 00F14C05 		add	r5, r0, #76
 1078              	.L244:
 1079 000c 53F8044F 		ldr	r4, [r3, #4]!
 1080 0010 41F8044B 		str	r4, [r1], #4
 1081 0014 AB42     		cmp	r3, r5
 1082 0016 F9D1     		bne	.L244
 1083 0018 B07A     		ldrb	r0, [r6, #10]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 20


 1084 001a 164F     		ldr	r7, .L259
 1085 001c 10F00100 		ands	r0, r0, #1
 1086 0020 7B69     		ldr	r3, [r7, #20]
 1087 0022 0FD0     		beq	.L245
 1088 0024 D3F86053 		ldr	r5, [r3, #864]
 1089 0028 65B1     		cbz	r5, .L245
 1090 002a 06EB8505 		add	r5, r6, r5, lsl #2
 1091 002e 5035     		adds	r5, r5, #80
 1092 0030 06F15003 		add	r3, r6, #80
 1093 0034 1146     		mov	r1, r2
 1094              	.L246:
 1095 0036 53F8044B 		ldr	r4, [r3], #4	@ float
 1096 003a 41F8044B 		str	r4, [r1], #4	@ float
 1097 003e AB42     		cmp	r3, r5
 1098 0040 F9D1     		bne	.L246
 1099 0042 7B69     		ldr	r3, [r7, #20]
 1100              	.L245:
 1101 0044 D3F85C13 		ldr	r1, [r3, #860]
 1102 0048 0B29     		cmp	r1, #11
 1103 004a 10D8     		bhi	.L247
 1104 004c 8900     		lsls	r1, r1, #2
 1105 004e 01F15003 		add	r3, r1, #80
 1106 0052 0A44     		add	r2, r2, r1
 1107 0054 3344     		add	r3, r3, r6
 1108 0056 06F18001 		add	r1, r6, #128
 1109              	.L248:
 1110 005a B3EC017A 		vldmia.32	r3!, {s14}
 1111 005e D2ED007A 		vldr.32	s15, [r2]
 1112 0062 77EE877A 		vadd.f32	s15, s15, s14
 1113 0066 8B42     		cmp	r3, r1
 1114 0068 E2EC017A 		vstmia.32	r2!, {s15}
 1115 006c F5D1     		bne	.L248
 1116              	.L247:
 1117 006e F0BC     		pop	{r4, r5, r6, r7}
 1118 0070 7047     		bx	lr
 1119              	.L260:
 1120 0072 00BF     		.align	2
 1121              	.L259:
 1122 0074 00000000 		.word	reprap
 1123              		.size	_ZN3DDA16FetchEndPositionEPVlPVf, .-_ZN3DDA16FetchEndPositionEPVlPVf
 1124              		.section	.text._ZN3DDA12SetPositionsEPKfj,"ax",%progbits
 1125              		.align	1
 1126              		.p2align 2,,3
 1127              		.global	_ZN3DDA12SetPositionsEPKfj
 1128              		.syntax unified
 1129              		.thumb
 1130              		.thumb_func
 1131              		.fpu fpv4-sp-d16
 1132              		.type	_ZN3DDA12SetPositionsEPKfj, %function
 1133              	_ZN3DDA12SetPositionsEPKfj:
 1134              		@ args = 0, pretend = 0, frame = 0
 1135              		@ frame_needed = 0, uses_anonymous_args = 0
 1136 0000 70B5     		push	{r4, r5, r6, lr}
 1137 0002 0E4E     		ldr	r6, .L269
 1138 0004 0546     		mov	r5, r0
 1139 0006 1346     		mov	r3, r2
 1140 0008 F068     		ldr	r0, [r6, #12]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 21


 1141 000a 05F12002 		add	r2, r5, #32
 1142 000e 0C46     		mov	r4, r1
 1143 0010 FFF7FEFF 		bl	_ZNK4Move17EndPointToMachineEPKfPlj
 1144 0014 7369     		ldr	r3, [r6, #20]
 1145 0016 D3F86003 		ldr	r0, [r3, #864]
 1146 001a 50B1     		cbz	r0, .L262
 1147 001c 2146     		mov	r1, r4
 1148 001e 04EB8000 		add	r0, r4, r0, lsl #2
 1149 0022 05F15003 		add	r3, r5, #80
 1150              	.L263:
 1151 0026 51F8042B 		ldr	r2, [r1], #4	@ float
 1152 002a 43F8042B 		str	r2, [r3], #4	@ float
 1153 002e 8142     		cmp	r1, r0
 1154 0030 F9D1     		bne	.L263
 1155              	.L262:
 1156 0032 AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 1157 0034 43F00103 		orr	r3, r3, #1
 1158 0038 AB72     		strb	r3, [r5, #10]
 1159 003a 70BD     		pop	{r4, r5, r6, pc}
 1160              	.L270:
 1161              		.align	2
 1162              	.L269:
 1163 003c 00000000 		.word	reprap
 1164              		.size	_ZN3DDA12SetPositionsEPKfj, .-_ZN3DDA12SetPositionsEPKfj
 1165              		.section	.text._ZN3DDA16GetEndCoordinateEjb,"ax",%progbits
 1166              		.align	1
 1167              		.p2align 2,,3
 1168              		.global	_ZN3DDA16GetEndCoordinateEjb
 1169              		.syntax unified
 1170              		.thumb
 1171              		.thumb_func
 1172              		.fpu fpv4-sp-d16
 1173              		.type	_ZN3DDA16GetEndCoordinateEjb, %function
 1174              	_ZN3DDA16GetEndCoordinateEjb:
 1175              		@ args = 0, pretend = 0, frame = 0
 1176              		@ frame_needed = 0, uses_anonymous_args = 0
 1177 0000 30B5     		push	{r4, r5, lr}
 1178 0002 0D46     		mov	r5, r1
 1179 0004 83B0     		sub	sp, sp, #12
 1180 0006 7AB9     		cbnz	r2, .L275
 1181 0008 1649     		ldr	r1, .L277
 1182 000a 4B69     		ldr	r3, [r1, #20]
 1183 000c D3F86023 		ldr	r2, [r3, #864]
 1184 0010 9542     		cmp	r5, r2
 1185 0012 0446     		mov	r4, r0
 1186 0014 02D2     		bcs	.L273
 1187 0016 807A     		ldrb	r0, [r0, #10]	@ zero_extendqisi2
 1188 0018 C007     		lsls	r0, r0, #31
 1189 001a 0ED5     		bpl	.L276
 1190              	.L273:
 1191 001c 04EB8504 		add	r4, r4, r5, lsl #2
 1192 0020 94ED140A 		vldr.32	s0, [r4, #80]
 1193 0024 03B0     		add	sp, sp, #12
 1194              		@ sp needed
 1195 0026 30BD     		pop	{r4, r5, pc}
 1196              	.L275:
 1197 0028 01F10803 		add	r3, r1, #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 22


 1198 002c 50F82300 		ldr	r0, [r0, r3, lsl #2]
 1199 0030 03B0     		add	sp, sp, #12
 1200              		@ sp needed
 1201 0032 BDE83040 		pop	{r4, r5, lr}
 1202 0036 FFF7FEBF 		b	_ZN4Move23MotorEndpointToPositionElj
 1203              	.L276:
 1204 003a C868     		ldr	r0, [r1, #12]
 1205 003c D3F85C33 		ldr	r3, [r3, #860]
 1206 0040 04F15001 		add	r1, r4, #80
 1207 0044 0091     		str	r1, [sp]
 1208 0046 04F12001 		add	r1, r4, #32
 1209 004a FFF7FEFF 		bl	_ZNK4Move21MotorStepsToCartesianEPKljjPf
 1210 004e A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 1211 0050 43F00103 		orr	r3, r3, #1
 1212 0054 A372     		strb	r3, [r4, #10]
 1213 0056 04EB8504 		add	r4, r4, r5, lsl #2
 1214 005a 94ED140A 		vldr.32	s0, [r4, #80]
 1215 005e 03B0     		add	sp, sp, #12
 1216              		@ sp needed
 1217 0060 30BD     		pop	{r4, r5, pc}
 1218              	.L278:
 1219 0062 00BF     		.align	2
 1220              	.L277:
 1221 0064 00000000 		.word	reprap
 1222              		.size	_ZN3DDA16GetEndCoordinateEjb, .-_ZN3DDA16GetEndCoordinateEjb
 1223              		.section	.text.hot._ZN3DDA7PrepareEh,"ax",%progbits
 1224              		.align	1
 1225              		.p2align 2,,3
 1226              		.global	_ZN3DDA7PrepareEh
 1227              		.syntax unified
 1228              		.thumb
 1229              		.thumb_func
 1230              		.fpu fpv4-sp-d16
 1231              		.type	_ZN3DDA7PrepareEh, %function
 1232              	_ZN3DDA7PrepareEh:
 1233              		@ args = 0, pretend = 0, frame = 56
 1234              		@ frame_needed = 0, uses_anonymous_args = 0
 1235 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1236 0004 837A     		ldrb	r3, [r0, #10]	@ zero_extendqisi2
 1237 0006 90ED336A 		vldr.32	s12, [r0, #204]
 1238 000a 90ED2C5A 		vldr.32	s10, [r0, #176]
 1239 000e 2DED028B 		vpush.64	{d8}
 1240 0012 0646     		mov	r6, r0
 1241 0014 5806     		lsls	r0, r3, #25
 1242 0016 91B0     		sub	sp, sp, #68
 1243 0018 0C46     		mov	r4, r1
 1244 001a 0CD5     		bpl	.L422
 1245 001c D94F     		ldr	r7, .L436
 1246 001e FB68     		ldr	r3, [r7, #12]
 1247 0020 DA7D     		ldrb	r2, [r3, #23]	@ zero_extendqisi2
 1248 0022 07EE102A 		vmov	s14, r2	@ int
 1249 0026 B8EE477A 		vcvt.f32.u32	s14, s14
 1250 002a B5EE407A 		vcmp.f32	s14, #0
 1251 002e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1252 0032 40F0CB80 		bne	.L282
 1253              	.L422:
 1254 0036 D6ED357A 		vldr.32	s15, [r6, #212]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 23


 1255              	.L281:
 1256 003a 96ED2F7A 		vldr.32	s14, [r6, #188]
 1257 003e B4EEC67A 		vcmpe.f32	s14, s12
 1258 0042 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1259 0046 06DD     		ble	.L323
 1260 0048 CE4F     		ldr	r7, .L436
 1261 004a 7B69     		ldr	r3, [r7, #20]
 1262 004c 93F8B430 		ldrb	r3, [r3, #180]	@ zero_extendqisi2
 1263 0050 012B     		cmp	r3, #1
 1264 0052 00F00582 		beq	.L425
 1265              	.L323:
 1266 0056 75EE677A 		vsub.f32	s15, s10, s15
 1267 005a CDED077A 		vstr.32	s15, [sp, #28]
 1268 005e 002C     		cmp	r4, #0
 1269 0060 40F0AD80 		bne	.L326
 1270 0064 B37A     		ldrb	r3, [r6, #10]	@ zero_extendqisi2
 1271 0066 9A07     		lsls	r2, r3, #30
 1272 0068 00F1C881 		bmi	.L417
 1273 006c C54F     		ldr	r7, .L436
 1274              	.L327:
 1275 006e D6ED344A 		vldr.32	s9, [r6, #208]
 1276 0072 96ED315A 		vldr.32	s10, [r6, #196]
 1277 0076 D6ED2D3A 		vldr.32	s7, [r6, #180]
 1278 007a DFEDC35A 		vldr.32	s11, .L436+4
 1279 007e D6ED2E2A 		vldr.32	s5, [r6, #184]
 1280 0082 7A69     		ldr	r2, [r7, #20]
 1281 0084 D7F804B0 		ldr	fp, [r7, #4]
 1282 0088 DFF81093 		ldr	r9, .L436+24
 1283 008c 9FEDBF8A 		vldr.32	s16, .L436+8
 1284 0090 36EE454A 		vsub.f32	s8, s12, s10
 1285 0094 77EEE46A 		vsub.f32	s13, s15, s9
 1286 0098 84EE237A 		vdiv.f32	s14, s8, s7
 1287 009c B246     		mov	r10, r6
 1288 009e 0025     		movs	r5, #0
 1289 00a0 C6EE867A 		vdiv.f32	s15, s13, s12
 1290 00a4 84EE863A 		vdiv.f32	s6, s9, s12
 1291 00a8 66EE254A 		vmul.f32	s9, s12, s11
 1292 00ac 25EE255A 		vmul.f32	s10, s10, s11
 1293 00b0 C4EEA26A 		vdiv.f32	s13, s9, s5
 1294 00b4 C5EE234A 		vdiv.f32	s9, s10, s7
 1295 00b8 77EE877A 		vadd.f32	s15, s15, s14
 1296 00bc 84EE065A 		vdiv.f32	s10, s8, s12
 1297 00c0 67EEA57A 		vmul.f32	s15, s15, s11
 1298 00c4 37EE437A 		vsub.f32	s14, s14, s6
 1299 00c8 FCEEE77A 		vcvt.u32.f32	s15, s15
 1300 00cc 27EE257A 		vmul.f32	s14, s14, s11
 1301 00d0 17EE903A 		vmov	r3, s15	@ int
 1302 00d4 FCEEE67A 		vcvt.u32.f32	s15, s13
 1303 00d8 BDEEC77A 		vcvt.s32.f32	s14, s14
 1304 00dc 17EE901A 		vmov	r1, s15	@ int
 1305 00e0 FCEEE44A 		vcvt.u32.f32	s9, s9
 1306 00e4 0B44     		add	r3, r3, r1
 1307 00e6 C6F8E830 		str	r3, [r6, #232]
 1308 00ea 86ED3B7A 		vstr.32	s14, [r6, #236]	@ int
 1309 00ee C6ED394A 		vstr.32	s9, [r6, #228]	@ int
 1310 00f2 4AF8F45F 		str	r5, [r10, #244]!
 1311 00f6 D2F85C33 		ldr	r3, [r2, #860]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 24


 1312 00fa 0393     		str	r3, [sp, #12]
 1313 00fc 3B46     		mov	r3, r7
 1314 00fe D046     		mov	r8, r10
 1315 0100 3746     		mov	r7, r6
 1316 0102 8DED095A 		vstr.32	s10, [sp, #36]
 1317 0106 5646     		mov	r6, r10
 1318 0108 CDED087A 		vstr.32	s15, [sp, #32]	@ int
 1319 010c 9A46     		mov	r10, r3
 1320 010e 02E0     		b	.L348
 1321              	.L328:
 1322 0110 0135     		adds	r5, r5, #1
 1323 0112 0C2D     		cmp	r5, #12
 1324 0114 3CD0     		beq	.L426
 1325              	.L348:
 1326 0116 58F8044F 		ldr	r4, [r8, #4]!
 1327 011a 002C     		cmp	r4, #0
 1328 011c F8D0     		beq	.L328
 1329 011e 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 1330 0120 012B     		cmp	r3, #1
 1331 0122 F5D1     		bne	.L328
 1332 0124 0BEB8503 		add	r3, fp, r5, lsl #2
 1333 0128 D3F8A433 		ldr	r3, [r3, #932]
 1334 012c 002B     		cmp	r3, #0
 1335 012e 00F0F280 		beq	.L329
 1336 0132 FB7A     		ldrb	r3, [r7, #11]	@ zero_extendqisi2
 1337 0134 DAF80400 		ldr	r0, [r10, #4]
 1338 0138 DB07     		lsls	r3, r3, #31
 1339 013a 40F1EE80 		bpl	.L330
 1340 013e 0221     		movs	r1, #2
 1341 0140 FFF7FEFF 		bl	_ZN8Platform11EnableDriveEj
 1342 0144 07AA     		add	r2, sp, #28
 1343 0146 3946     		mov	r1, r7
 1344 0148 2046     		mov	r0, r4
 1345              	.L338:
 1346 014a FFF7FEFF 		bl	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams
 1347 014e DAF80831 		ldr	r3, [r10, #264]
 1348 0152 D4F808C0 		ldr	ip, [r4, #8]
 1349 0156 5906     		lsls	r1, r3, #25
 1350 0158 03D5     		bpl	.L332
 1351 015a 8D4B     		ldr	r3, .L436+12
 1352 015c 9C45     		cmp	ip, r3
 1353 015e 00F2AA81 		bhi	.L423
 1354              	.L332:
 1355 0162 0023     		movs	r3, #0
 1356 0164 E371     		strb	r3, [r4, #7]
 1357 0166 BA7A     		ldrb	r2, [r7, #10]	@ zero_extendqisi2
 1358 0168 C4F81890 		str	r9, [r4, #24]
 1359 016c 9207     		lsls	r2, r2, #30
 1360 016e E360     		str	r3, [r4, #12]
 1361 0170 6361     		str	r3, [r4, #20]
 1362 0172 02D5     		bpl	.L342
 1363 0174 022D     		cmp	r5, #2
 1364 0176 40F23281 		bls	.L353
 1365              	.L342:
 1366 017a 0123     		movs	r3, #1
 1367 017c E360     		str	r3, [r4, #12]
 1368 017e BCF1000F 		cmp	ip, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 25


 1369 0182 40F0E380 		bne	.L427
 1370              	.L343:
 1371 0186 0135     		adds	r5, r5, #1
 1372 0188 0023     		movs	r3, #0
 1373 018a 0C2D     		cmp	r5, #12
 1374 018c 2371     		strb	r3, [r4, #4]
 1375 018e C2D1     		bne	.L348
 1376              	.L426:
 1377 0190 3E46     		mov	r6, r7
 1378 0192 5746     		mov	r7, r10
 1379 0194 7268     		ldr	r2, [r6, #4]
 1380 0196 137A     		ldrb	r3, [r2, #8]	@ zero_extendqisi2
 1381 0198 023B     		subs	r3, r3, #2
 1382 019a 012B     		cmp	r3, #1
 1383 019c 40F29181 		bls	.L428
 1384 01a0 7C4B     		ldr	r3, .L436+16
 1385 01a2 D3F89030 		ldr	r3, [r3, #144]
 1386 01a6 03F51253 		add	r3, r3, #9344
 1387 01aa 1F33     		adds	r3, r3, #31
 1388              	.L350:
 1389 01ac C6F8E030 		str	r3, [r6, #224]
 1390 01b0 D7F80831 		ldr	r3, [r7, #264]
 1391 01b4 03F05003 		and	r3, r3, #80
 1392 01b8 502B     		cmp	r3, #80
 1393 01ba 00F06081 		beq	.L429
 1394              	.L326:
 1395 01be 0223     		movs	r3, #2
 1396 01c0 3372     		strb	r3, [r6, #8]
 1397 01c2 11B0     		add	sp, sp, #68
 1398              		@ sp needed
 1399 01c4 BDEC028B 		vldm	sp!, {d8}
 1400 01c8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1401              	.L282:
 1402 01cc D6ED315A 		vldr.32	s11, [r6, #196]
 1403 01d0 F4EEC65A 		vcmpe.f32	s11, s12
 1404 01d4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1405 01d8 7FF52DAF 		bpl	.L422
 1406 01dc D6ED324A 		vldr.32	s9, [r6, #200]
 1407 01e0 F4EEC64A 		vcmpe.f32	s9, s12
 1408 01e4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1409 01e8 7FF525AF 		bpl	.L422
 1410 01ec 96ED207A 		vldr.32	s14, [r6, #128]
 1411 01f0 F6EE006A 		vmov.f32	s13, #5.0e-1
 1412 01f4 B0EEC77A 		vabs.f32	s14, s14
 1413 01f8 B4EEE67A 		vcmpe.f32	s14, s13
 1414 01fc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1415 0200 09DC     		bgt	.L285
 1416 0202 96ED217A 		vldr.32	s14, [r6, #132]
 1417 0206 B0EEC77A 		vabs.f32	s14, s14
 1418 020a B4EEE67A 		vcmpe.f32	s14, s13
 1419 020e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1420 0212 7FF710AF 		ble	.L422
 1421              	.L285:
 1422 0216 36EE651A 		vsub.f32	s2, s12, s11
 1423 021a 96ED2D3A 		vldr.32	s6, [r6, #180]
 1424 021e 93ED084A 		vldr.32	s8, [r3, #32]
 1425 0222 81EE037A 		vdiv.f32	s14, s2, s6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 26


 1426 0226 B4EEC74A 		vcmpe.f32	s8, s14
 1427 022a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1428 022e 40F38A81 		ble	.L286
 1429 0232 7268     		ldr	r2, [r6, #4]
 1430 0234 117A     		ldrb	r1, [r2, #8]	@ zero_extendqisi2
 1431 0236 0229     		cmp	r1, #2
 1432 0238 00F06881 		beq	.L288
 1433 023c 117A     		ldrb	r1, [r2, #8]	@ zero_extendqisi2
 1434 023e 0329     		cmp	r1, #3
 1435 0240 00F06481 		beq	.L288
 1436              	.L289:
 1437 0244 36EE642A 		vsub.f32	s4, s12, s9
 1438 0248 96ED2E8A 		vldr.32	s16, [r6, #184]
 1439 024c C1EE043A 		vdiv.f32	s7, s2, s8
 1440 0250 C2EE086A 		vdiv.f32	s13, s4, s16
 1441 0254 65EEE57A 		vnmul.f32	s15, s11, s11
 1442 0258 73EEA32A 		vadd.f32	s5, s7, s7
 1443 025c E6EE067A 		vfma.f32	s15, s12, s12
 1444 0260 B4EEE64A 		vcmpe.f32	s8, s13
 1445 0264 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1446 0268 87EEA27A 		vdiv.f32	s14, s15, s5
 1447 026c 00F36582 		bgt	.L430
 1448 0270 D6ED357A 		vldr.32	s15, [r6, #212]
 1449 0274 F0EE481A 		vmov.f32	s3, s16
 1450              	.L352:
 1451 0278 77EE876A 		vadd.f32	s13, s15, s14
 1452 027c D3ED090A 		vldr.32	s1, [r3, #36]
 1453 0280 F4EEC56A 		vcmpe.f32	s13, s10
 1454 0284 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1455 0288 00F27E81 		bhi	.L407
 1456 028c F4EEE30A 		vcmpe.f32	s1, s7
 1457 0290 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1458 0294 3FF7CFAE 		bgt	.L422
 1459 0298 F4EEC80A 		vcmpe.f32	s1, s16
 1460 029c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1461 02a0 3FF7C9AE 		bgt	.L422
 1462 02a4 C6ED2D3A 		vstr.32	s7, [r6, #180]
 1463 02a8 86ED2E8A 		vstr.32	s16, [r6, #184]
 1464 02ac 86ED347A 		vstr.32	s14, [r6, #208]
 1465 02b0 C6ED357A 		vstr.32	s15, [r6, #212]
 1466              	.L304:
 1467 02b4 75EE476A 		vsub.f32	s13, s10, s14
 1468 02b8 C2EE084A 		vdiv.f32	s9, s4, s16
 1469 02bc 76EEE76A 		vsub.f32	s13, s13, s15
 1470 02c0 81EE237A 		vdiv.f32	s14, s2, s7
 1471 02c4 C6EE865A 		vdiv.f32	s11, s13, s12
 1472 02c8 37EE247A 		vadd.f32	s14, s14, s9
 1473 02cc DFED2E6A 		vldr.32	s13, .L436+4
 1474 02d0 37EE257A 		vadd.f32	s14, s14, s11
 1475 02d4 27EE267A 		vmul.f32	s14, s14, s13
 1476 02d8 BCEEC77A 		vcvt.u32.f32	s14, s14
 1477 02dc 86ED377A 		vstr.32	s14, [r6, #220]	@ int
 1478 02e0 D7F80831 		ldr	r3, [r7, #264]
 1479 02e4 D906     		lsls	r1, r3, #27
 1480 02e6 7FF5A8AE 		bpl	.L281
 1481 02ea 13EE900A 		vmov	r0, s7
 1482 02ee FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 27


 1483 02f2 8046     		mov	r8, r0
 1484 02f4 18EE100A 		vmov	r0, s16
 1485 02f8 8946     		mov	r9, r1
 1486 02fa FFF7FEFF 		bl	__aeabi_f2d
 1487 02fe 4246     		mov	r2, r8
 1488 0300 CDE90001 		strd	r0, [sp]
 1489 0304 4B46     		mov	r3, r9
 1490 0306 2448     		ldr	r0, .L436+20
 1491 0308 FFF7FEFF 		bl	debugPrintf
 1492 030c 96ED336A 		vldr.32	s12, [r6, #204]
 1493 0310 96ED2C5A 		vldr.32	s10, [r6, #176]
 1494 0314 8FE6     		b	.L422
 1495              	.L329:
 1496 0316 2371     		strb	r3, [r4, #4]
 1497 0318 FAE6     		b	.L328
 1498              	.L330:
 1499 031a 2946     		mov	r1, r5
 1500 031c FFF7FEFF 		bl	_ZN8Platform11EnableDriveEj
 1501 0320 039B     		ldr	r3, [sp, #12]
 1502 0322 AB42     		cmp	r3, r5
 1503 0324 BB7A     		ldrb	r3, [r7, #10]	@ zero_extendqisi2
 1504 0326 3BD8     		bhi	.L333
 1505 0328 13F01003 		ands	r3, r3, #16
 1506 032c 00F0AB80 		beq	.L355
 1507 0330 7A68     		ldr	r2, [r7, #4]
 1508 0332 917A     		ldrb	r1, [r2, #10]	@ zero_extendqisi2
 1509 0334 C906     		lsls	r1, r1, #27
 1510 0336 00F1C880 		bmi	.L431
 1511 033a B0EE480A 		vmov.f32	s0, s16
 1512              	.L335:
 1513 033e 97ED317A 		vldr.32	s14, [r7, #196]
 1514 0342 58ED1E7A 		vldr.32	s15, [r8, #-120]
 1515 0346 97EE270A 		vfnms.f32	s0, s14, s15
 1516 034a 9EE0     		b	.L334
 1517              	.L427:
 1518 034c 0022     		movs	r2, #0
 1519 034e 3946     		mov	r1, r7
 1520 0350 2046     		mov	r0, r4
 1521 0352 FFF7FEFF 		bl	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb
 1522 0356 0028     		cmp	r0, #0
 1523 0358 3FF415AF 		beq	.L343
 1524              	.L433:
 1525 035c D7F8F430 		ldr	r3, [r7, #244]
 1526 0360 3146     		mov	r1, r6
 1527 0362 5BB1     		cbz	r3, .L345
 1528 0364 6069     		ldr	r0, [r4, #20]
 1529 0366 5A69     		ldr	r2, [r3, #20]
 1530 0368 8242     		cmp	r2, r0
 1531 036a 03D3     		bcc	.L346
 1532 036c 06E0     		b	.L345
 1533              	.L347:
 1534 036e 5A69     		ldr	r2, [r3, #20]
 1535 0370 8242     		cmp	r2, r0
 1536 0372 03D2     		bcs	.L345
 1537              	.L346:
 1538 0374 1946     		mov	r1, r3
 1539 0376 1B68     		ldr	r3, [r3]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 28


 1540 0378 002B     		cmp	r3, #0
 1541 037a F8D1     		bne	.L347
 1542              	.L345:
 1543 037c 2360     		str	r3, [r4]
 1544 037e 0C60     		str	r4, [r1]
 1545 0380 C6E6     		b	.L328
 1546              	.L437:
 1547 0382 00BF     		.align	2
 1548              	.L436:
 1549 0384 00000000 		.word	reprap
 1550 0388 C0E16449 		.word	1231348160
 1551 038c 00000000 		.word	0
 1552 0390 40420F00 		.word	1000000
 1553 0394 00000940 		.word	1074331648
 1554 0398 00000000 		.word	.LC13
 1555 039c 3F420F00 		.word	999999
 1556              	.L333:
 1557 03a0 9B07     		lsls	r3, r3, #30
 1558 03a2 07AA     		add	r2, sp, #28
 1559 03a4 3946     		mov	r1, r7
 1560 03a6 2046     		mov	r0, r4
 1561 03a8 7FF5CFAE 		bpl	.L338
 1562 03ac 022D     		cmp	r5, #2
 1563 03ae 3FF6CCAE 		bhi	.L338
 1564 03b2 FFF7FEFF 		bl	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams
 1565 03b6 DAF80831 		ldr	r3, [r10, #264]
 1566 03ba D4F808C0 		ldr	ip, [r4, #8]
 1567 03be 5806     		lsls	r0, r3, #25
 1568 03c0 03D5     		bpl	.L340
 1569 03c2 E04B     		ldr	r3, .L438
 1570 03c4 9C45     		cmp	ip, r3
 1571 03c6 00F2B281 		bhi	.L432
 1572              	.L340:
 1573 03ca 0023     		movs	r3, #0
 1574 03cc E371     		strb	r3, [r4, #7]
 1575 03ce BA7A     		ldrb	r2, [r7, #10]	@ zero_extendqisi2
 1576 03d0 E360     		str	r3, [r4, #12]
 1577 03d2 6361     		str	r3, [r4, #20]
 1578 03d4 9307     		lsls	r3, r2, #30
 1579 03d6 C4F81890 		str	r9, [r4, #24]
 1580 03da 7FF5CEAE 		bpl	.L342
 1581              	.L353:
 1582 03de 0123     		movs	r3, #1
 1583 03e0 E360     		str	r3, [r4, #12]
 1584 03e2 BCF1000F 		cmp	ip, #0
 1585 03e6 3FF4CEAE 		beq	.L343
 1586 03ea 0022     		movs	r2, #0
 1587 03ec 3946     		mov	r1, r7
 1588 03ee 2046     		mov	r0, r4
 1589 03f0 FFF7FEFF 		bl	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb
 1590 03f4 0028     		cmp	r0, #0
 1591 03f6 3FF4C6AE 		beq	.L343
 1592 03fa AFE7     		b	.L433
 1593              	.L417:
 1594 03fc D6ED217A 		vldr.32	s15, [r6, #132]
 1595 0400 D6ED206A 		vldr.32	s13, [r6, #128]
 1596 0404 96ED227A 		vldr.32	s14, [r6, #136]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 29


 1597 0408 7068     		ldr	r0, [r6, #4]
 1598 040a CF4F     		ldr	r7, .L438+4
 1599 040c 67EEA77A 		vmul.f32	s15, s15, s15
 1600 0410 BEEEC67A 		vcvt.s32.f32	s14, s14, #20
 1601 0414 E6EEA67A 		vfma.f32	s15, s13, s13
 1602 0418 2246     		mov	r2, r4
 1603 041a 2146     		mov	r1, r4
 1604 041c 86ED3C7A 		vstr.32	s14, [r6, #240]	@ int
 1605 0420 CDED0E7A 		vstr.32	s15, [sp, #56]
 1606 0424 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 1607 0428 2246     		mov	r2, r4
 1608 042a 0121     		movs	r1, #1
 1609 042c 7068     		ldr	r0, [r6, #4]
 1610 042e 8DED0A0A 		vstr.32	s0, [sp, #40]
 1611 0432 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 1612 0436 FB68     		ldr	r3, [r7, #12]
 1613 0438 9DED0E7A 		vldr.32	s14, [sp, #56]
 1614 043c D3F8743A 		ldr	r3, [r3, #2676]
 1615 0440 96ED336A 		vldr.32	s12, [r6, #204]
 1616 0444 D3ED236A 		vldr.32	s13, [r3, #140]
 1617 0448 DDED077A 		vldr.32	s15, [sp, #28]
 1618 044c 0C93     		str	r3, [sp, #48]
 1619 044e 27EE267A 		vmul.f32	s14, s14, s13
 1620 0452 8DED0B0A 		vstr.32	s0, [sp, #44]
 1621 0456 CDED0D6A 		vstr.32	s13, [sp, #52]
 1622 045a 8DED0F7A 		vstr.32	s14, [sp, #60]
 1623 045e 06E6     		b	.L327
 1624              	.L425:
 1625 0460 B389     		ldrh	r3, [r6, #12]
 1626 0462 06EE903A 		vmov	s13, r3	@ int
 1627 0466 F8EEE66A 		vcvt.f32.s32	s13, s13
 1628 046a 66EE866A 		vmul.f32	s13, s13, s12
 1629 046e C6EE875A 		vdiv.f32	s11, s13, s14
 1630 0472 FCEEE55A 		vcvt.u32.f32	s11, s11
 1631 0476 15EE903A 		vmov	r3, s11	@ int
 1632 047a B381     		strh	r3, [r6, #12]	@ movhi
 1633 047c EBE5     		b	.L323
 1634              	.L429:
 1635 047e 3046     		mov	r0, r6
 1636 0480 FFF7FEFF 		bl	_ZNK3DDA13DebugPrintAllEv
 1637 0484 9BE6     		b	.L326
 1638              	.L355:
 1639 0486 B0EE480A 		vmov.f32	s0, s16
 1640              	.L334:
 1641 048a 0033     		adds	r3, r3, #0
 1642 048c 18BF     		it	ne
 1643 048e 0123     		movne	r3, #1
 1644 0490 07AA     		add	r2, sp, #28
 1645 0492 3946     		mov	r1, r7
 1646 0494 2046     		mov	r0, r4
 1647 0496 FFF7FEFF 		bl	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb
 1648 049a DAF80831 		ldr	r3, [r10, #264]
 1649 049e D4F808C0 		ldr	ip, [r4, #8]
 1650 04a2 5A06     		lsls	r2, r3, #25
 1651 04a4 7FF55DAE 		bpl	.L332
 1652 04a8 A64B     		ldr	r3, .L438
 1653 04aa 9C45     		cmp	ip, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 30


 1654 04ac 03D8     		bhi	.L423
 1655 04ae 2069     		ldr	r0, [r4, #16]
 1656 04b0 636C     		ldr	r3, [r4, #68]
 1657 04b2 9842     		cmp	r0, r3
 1658 04b4 12D2     		bcs	.L434
 1659              	.L423:
 1660 04b6 3846     		mov	r0, r7
 1661 04b8 FFF7FEFF 		bl	_ZNK3DDA13DebugPrintAllEv
 1662 04bc D4F808C0 		ldr	ip, [r4, #8]
 1663 04c0 4FE6     		b	.L332
 1664              	.L428:
 1665 04c2 D2E93723 		ldrd	r2, r3, [r2, #220]
 1666 04c6 1344     		add	r3, r3, r2
 1667 04c8 70E6     		b	.L350
 1668              	.L431:
 1669 04ca 02EB8501 		add	r1, r2, r5, lsl #2
 1670 04ce D1ED207A 		vldr.32	s15, [r1, #128]
 1671 04d2 92ED320A 		vldr.32	s0, [r2, #200]
 1672 04d6 20EE270A 		vmul.f32	s0, s0, s15
 1673 04da 30E7     		b	.L335
 1674              	.L434:
 1675 04dc 8445     		cmp	ip, r0
 1676 04de FFF440AE 		bcc	.L332
 1677 04e2 236B     		ldr	r3, [r4, #48]
 1678 04e4 A3FB0023 		umull	r2, r3, r3, r0
 1679 04e8 1146     		mov	r1, r2
 1680 04ea 1A46     		mov	r2, r3
 1681 04ec 636B     		ldr	r3, [r4, #52]
 1682 04ee 00FB0323 		mla	r3, r0, r3, r2
 1683 04f2 CDE90412 		strd	r1, [sp, #16]
 1684 04f6 0593     		str	r3, [sp, #20]
 1685 04f8 DDE90401 		ldrd	r0, [sp, #16]
 1686 04fc D4E90E23 		ldrd	r2, [r4, #56]
 1687 0500 9042     		cmp	r0, r2
 1688 0502 71EB0303 		sbcs	r3, r1, r3
 1689 0506 BFF62CAE 		bge	.L332
 1690 050a D4E7     		b	.L423
 1691              	.L288:
 1692 050c 92ED347A 		vldr.32	s14, [r2, #208]
 1693 0510 D2ED2C7A 		vldr.32	s15, [r2, #176]
 1694 0514 B4EE677A 		vcmp.f32	s14, s15
 1695 0518 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1696 051c 13D0     		beq	.L286
 1697 051e D2ED333A 		vldr.32	s7, [r2, #204]
 1698 0522 D2ED2F6A 		vldr.32	s13, [r2, #188]
 1699 0526 F4EEE63A 		vcmpe.f32	s7, s13
 1700 052a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1701 052e 7FF589AE 		bpl	.L289
 1702 0532 DFED866A 		vldr.32	s13, .L438+8
 1703 0536 67EEA67A 		vmul.f32	s15, s15, s13
 1704 053a B4EEE77A 		vcmpe.f32	s14, s15
 1705 053e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1706 0542 7FF77FAE 		ble	.L289
 1707              	.L286:
 1708 0546 36EE642A 		vsub.f32	s4, s12, s9
 1709 054a D6ED2E1A 		vldr.32	s3, [r6, #184]
 1710 054e 96ED347A 		vldr.32	s14, [r6, #208]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 31


 1711 0552 C2EE217A 		vdiv.f32	s15, s4, s3
 1712 0556 B4EEE74A 		vcmpe.f32	s8, s15
 1713 055a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1714 055e 7FF76AAD 		ble	.L422
 1715 0562 F0EE433A 		vmov.f32	s7, s6
 1716 0566 0020     		movs	r0, #0
 1717              	.L291:
 1718 0568 3268     		ldr	r2, [r6]
 1719 056a 117A     		ldrb	r1, [r2, #8]	@ zero_extendqisi2
 1720 056c 0129     		cmp	r1, #1
 1721 056e 00F09480 		beq	.L435
 1722              	.L295:
 1723 0572 82EE048A 		vdiv.f32	s16, s4, s8
 1724 0576 64EEE46A 		vnmul.f32	s13, s9, s9
 1725 057a 78EE082A 		vadd.f32	s5, s16, s16
 1726 057e E6EE066A 		vfma.f32	s13, s12, s12
 1727 0582 C6EEA27A 		vdiv.f32	s15, s13, s5
 1728 0586 77E6     		b	.L352
 1729              	.L407:
 1730 0588 C5EE046A 		vdiv.f32	s13, s10, s8
 1731 058c 75EEA47A 		vadd.f32	s15, s11, s9
 1732 0590 F6EE002A 		vmov.f32	s5, #5.0e-1
 1733 0594 E7EEE26A 		vfms.f32	s13, s15, s5
 1734 0598 75EE057A 		vadd.f32	s15, s10, s10
 1735 059c F4EEE65A 		vcmpe.f32	s11, s13
 1736 05a0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1737 05a4 53D5     		bpl	.L305
 1738 05a6 F4EEE64A 		vcmpe.f32	s9, s13
 1739 05aa F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1740 05ae 4ED5     		bpl	.L305
 1741 05b0 B0EE080A 		vmov.f32	s0, #3.0e+0
 1742 05b4 B0EE647A 		vmov.f32	s14, s9
 1743 05b8 A5EE807A 		vfma.f32	s14, s11, s0
 1744 05bc B1EE441A 		vneg.f32	s2, s8
 1745 05c0 B0EE678A 		vmov.f32	s16, s15
 1746 05c4 A1EE078A 		vfma.f32	s16, s2, s14
 1747 05c8 24EE047A 		vmul.f32	s14, s8, s8
 1748 05cc 37EE072A 		vadd.f32	s4, s14, s14
 1749 05d0 C8EE023A 		vdiv.f32	s7, s16, s4
 1750 05d4 F4EEE30A 		vcmpe.f32	s1, s7
 1751 05d8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1752 05dc 3FF72BAD 		bgt	.L422
 1753 05e0 B0EE658A 		vmov.f32	s16, s11
 1754 05e4 A4EE808A 		vfma.f32	s16, s9, s0
 1755 05e8 E1EE087A 		vfma.f32	s15, s2, s16
 1756 05ec 87EE828A 		vdiv.f32	s16, s15, s4
 1757 05f0 F4EEC80A 		vcmpe.f32	s1, s16
 1758 05f4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1759 05f8 3FF71DAD 		bgt	.L422
 1760 05fc B4EEE33A 		vcmpe.f32	s6, s7
 1761 0600 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1762 0604 3FF517AD 		bmi	.L422
 1763 0608 B4EEE18A 		vcmpe.f32	s16, s3
 1764 060c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1765 0610 3FF711AD 		bgt	.L422
 1766 0614 27EE236A 		vmul.f32	s12, s14, s7
 1767 0618 67EE087A 		vmul.f32	s15, s14, s16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 32


 1768 061c 26EE227A 		vmul.f32	s14, s12, s5
 1769 0620 67EEA27A 		vmul.f32	s15, s15, s5
 1770 0624 A5EE847A 		vfma.f32	s14, s11, s8
 1771 0628 E4EE847A 		vfma.f32	s15, s9, s8
 1772 062c C6ED336A 		vstr.32	s13, [r6, #204]
 1773 0630 C6ED2D3A 		vstr.32	s7, [r6, #180]
 1774 0634 86ED2E8A 		vstr.32	s16, [r6, #184]
 1775 0638 86ED347A 		vstr.32	s14, [r6, #208]
 1776 063c C6ED357A 		vstr.32	s15, [r6, #212]
 1777 0640 36EEE51A 		vsub.f32	s2, s13, s11
 1778 0644 36EEE42A 		vsub.f32	s4, s13, s9
 1779 0648 B0EE666A 		vmov.f32	s12, s13
 1780 064c 32E6     		b	.L304
 1781              	.L305:
 1782 064e F4EEE45A 		vcmpe.f32	s11, s9
 1783 0652 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1784 0656 45D5     		bpl	.L414
 1785 0658 25EEE57A 		vnmul.f32	s14, s11, s11
 1786 065c A4EEA47A 		vfma.f32	s14, s9, s9
 1787 0660 C7EE273A 		vdiv.f32	s7, s14, s15
 1788 0664 F4EEE30A 		vcmpe.f32	s1, s7
 1789 0668 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1790 066c 3FF7E3AC 		bgt	.L422
 1791 0670 DFED377A 		vldr.32	s15, .L438+12
 1792 0674 C6ED2D3A 		vstr.32	s7, [r6, #180]
 1793 0678 C6ED334A 		vstr.32	s9, [r6, #204]
 1794 067c 86ED345A 		vstr.32	s10, [r6, #208]
 1795 0680 34EEE51A 		vsub.f32	s2, s9, s11
 1796 0684 B0EE618A 		vmov.f32	s16, s3
 1797 0688 C6ED357A 		vstr.32	s15, [r6, #212]
 1798 068c 34EEE42A 		vsub.f32	s4, s9, s9
 1799 0690 B0EE646A 		vmov.f32	s12, s9
 1800 0694 B0EE457A 		vmov.f32	s14, s10
 1801 0698 0CE6     		b	.L304
 1802              	.L435:
 1803 069a D2ED356A 		vldr.32	s13, [r2, #212]
 1804 069e D2ED2C7A 		vldr.32	s15, [r2, #176]
 1805 06a2 F4EE676A 		vcmp.f32	s13, s15
 1806 06a6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1807 06aa 13D0     		beq	.L296
 1808 06ac D2ED330A 		vldr.32	s1, [r2, #204]
 1809 06b0 D2ED2F2A 		vldr.32	s5, [r2, #188]
 1810 06b4 F4EEE20A 		vcmpe.f32	s1, s5
 1811 06b8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1812 06bc 7FF559AF 		bpl	.L295
 1813 06c0 DFED222A 		vldr.32	s5, .L438+8
 1814 06c4 67EEA27A 		vmul.f32	s15, s15, s5
 1815 06c8 F4EEE76A 		vcmpe.f32	s13, s15
 1816 06cc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1817 06d0 7FF74FAF 		ble	.L295
 1818              	.L296:
 1819 06d4 D6ED357A 		vldr.32	s15, [r6, #212]
 1820 06d8 0028     		cmp	r0, #0
 1821 06da 3FF4AEAC 		beq	.L281
 1822 06de B0EE618A 		vmov.f32	s16, s3
 1823 06e2 C9E5     		b	.L352
 1824              	.L414:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 33


 1825 06e4 7FF7A7AC 		ble	.L422
 1826 06e8 24EEE47A 		vnmul.f32	s14, s9, s9
 1827 06ec A5EEA57A 		vfma.f32	s14, s11, s11
 1828 06f0 87EE278A 		vdiv.f32	s16, s14, s15
 1829 06f4 F4EEC80A 		vcmpe.f32	s1, s16
 1830 06f8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1831 06fc 3FF79BAC 		bgt	.L422
 1832 0700 DFED136A 		vldr.32	s13, .L438+12
 1833 0704 86ED2E8A 		vstr.32	s16, [r6, #184]
 1834 0708 35EEE42A 		vsub.f32	s4, s11, s9
 1835 070c F0EE433A 		vmov.f32	s7, s6
 1836 0710 B0EE667A 		vmov.f32	s14, s13
 1837 0714 35EEE51A 		vsub.f32	s2, s11, s11
 1838 0718 B0EE656A 		vmov.f32	s12, s11
 1839 071c F0EE457A 		vmov.f32	s15, s10
 1840 0720 C6ED335A 		vstr.32	s11, [r6, #204]
 1841 0724 86ED355A 		vstr.32	s10, [r6, #212]
 1842 0728 C6ED346A 		vstr.32	s13, [r6, #208]
 1843 072c C2E5     		b	.L304
 1844              	.L432:
 1845 072e 3846     		mov	r0, r7
 1846 0730 FFF7FEFF 		bl	_ZNK3DDA13DebugPrintAllEv
 1847 0734 D4F808C0 		ldr	ip, [r4, #8]
 1848 0738 47E6     		b	.L340
 1849              	.L430:
 1850 073a F0EE481A 		vmov.f32	s3, s16
 1851 073e 0120     		movs	r0, #1
 1852 0740 12E7     		b	.L291
 1853              	.L439:
 1854 0742 00BF     		.align	2
 1855              	.L438:
 1856 0744 40420F00 		.word	1000000
 1857 0748 00000000 		.word	reprap
 1858 074c 48E17A3F 		.word	1065017672
 1859 0750 00000000 		.word	0
 1860              		.size	_ZN3DDA7PrepareEh, .-_ZN3DDA7PrepareEh
 1861              		.section	.text._ZN3DDA21VectorBoxIntersectionEPKfS1_j,"ax",%progbits
 1862              		.align	1
 1863              		.p2align 2,,3
 1864              		.global	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 1865              		.syntax unified
 1866              		.thumb
 1867              		.thumb_func
 1868              		.fpu fpv4-sp-d16
 1869              		.type	_ZN3DDA21VectorBoxIntersectionEPKfS1_j, %function
 1870              	_ZN3DDA21VectorBoxIntersectionEPKfS1_j:
 1871              		@ args = 0, pretend = 0, frame = 16
 1872              		@ frame_needed = 0, uses_anonymous_args = 0
 1873 0000 8AB3     		cbz	r2, .L450
 1874 0002 10B5     		push	{r4, lr}
 1875 0004 9FED210A 		vldr.32	s0, .L461
 1876 0008 84B0     		sub	sp, sp, #16
 1877 000a 0B46     		mov	r3, r1
 1878 000c 01EB8204 		add	r4, r1, r2, lsl #2
 1879              	.L443:
 1880 0010 F3EC017A 		vldmia.32	r3!, {s15}
 1881 0014 A342     		cmp	r3, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 34


 1882 0016 A7EEA70A 		vfma.f32	s0, s15, s15
 1883 001a F9D1     		bne	.L443
 1884 001c B5EE400A 		vcmp.f32	s0, #0
 1885 0020 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1886 0024 B1EEC06A 		vsqrt.f32	s12, s0
 1887 0028 20D4     		bmi	.L460
 1888 002a 36EE066A 		vadd.f32	s12, s12, s12
 1889              	.L447:
 1890 002e B0EE460A 		vmov.f32	s0, s12
 1891 0032 0023     		movs	r3, #0
 1892              	.L446:
 1893 0034 F0EC017A 		vldmia.32	r0!, {s15}
 1894 0038 B1EC017A 		vldmia.32	r1!, {s14}
 1895 003c 67EE866A 		vmul.f32	s13, s15, s12
 1896 0040 0133     		adds	r3, r3, #1
 1897 0042 F4EEC76A 		vcmpe.f32	s13, s14
 1898 0046 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1899 004a 08DD     		ble	.L444
 1900 004c C7EE276A 		vdiv.f32	s13, s14, s15
 1901 0050 F4EE406A 		vcmp.f32	s13, s0
 1902 0054 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1903 0058 48BF     		it	mi
 1904 005a B0EE660A 		vmovmi.f32	s0, s13
 1905              	.L444:
 1906 005e 9A42     		cmp	r2, r3
 1907 0060 E8D8     		bhi	.L446
 1908 0062 04B0     		add	sp, sp, #16
 1909              		@ sp needed
 1910 0064 10BD     		pop	{r4, pc}
 1911              	.L450:
 1912 0066 9FED090A 		vldr.32	s0, .L461
 1913 006a 7047     		bx	lr
 1914              	.L460:
 1915 006c CDE90212 		strd	r1, r2, [sp, #8]
 1916 0070 0190     		str	r0, [sp, #4]
 1917 0072 8DED006A 		vstr.32	s12, [sp]	@ int
 1918 0076 FFF7FEFF 		bl	sqrtf
 1919 007a 9DED006A 		vldr.32	s12, [sp]	@ int
 1920 007e 0198     		ldr	r0, [sp, #4]
 1921 0080 36EE066A 		vadd.f32	s12, s12, s12
 1922 0084 DDE90212 		ldrd	r1, r2, [sp, #8]
 1923 0088 D1E7     		b	.L447
 1924              	.L462:
 1925 008a 00BF     		.align	2
 1926              	.L461:
 1927 008c 00000000 		.word	0
 1928              		.size	_ZN3DDA21VectorBoxIntersectionEPKfS1_j, .-_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 1929              		.section	.text._ZN3DDA9NormaliseEPfjj,"ax",%progbits
 1930              		.align	1
 1931              		.p2align 2,,3
 1932              		.global	_ZN3DDA9NormaliseEPfjj
 1933              		.syntax unified
 1934              		.thumb
 1935              		.thumb_func
 1936              		.fpu fpv4-sp-d16
 1937              		.type	_ZN3DDA9NormaliseEPfjj, %function
 1938              	_ZN3DDA9NormaliseEPfjj:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 35


 1939              		@ args = 0, pretend = 0, frame = 8
 1940              		@ frame_needed = 0, uses_anonymous_args = 0
 1941 0000 00B5     		push	{lr}
 1942 0002 2DED028B 		vpush.64	{d8}
 1943 0006 83B0     		sub	sp, sp, #12
 1944 0008 62B3     		cbz	r2, .L469
 1945 000a 9FED1E0A 		vldr.32	s0, .L477
 1946 000e 00EB8202 		add	r2, r0, r2, lsl #2
 1947 0012 0346     		mov	r3, r0
 1948              	.L465:
 1949 0014 F3EC017A 		vldmia.32	r3!, {s15}
 1950 0018 9A42     		cmp	r2, r3
 1951 001a A7EEA70A 		vfma.f32	s0, s15, s15
 1952 001e F9D1     		bne	.L465
 1953 0020 B5EE400A 		vcmp.f32	s0, #0
 1954 0024 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1955 0028 B1EEC08A 		vsqrt.f32	s16, s0
 1956 002c 23D4     		bmi	.L476
 1957              	.L466:
 1958 002e B5EEC08A 		vcmpe.f32	s16, #0
 1959 0032 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1960 0036 15D9     		bls	.L469
 1961 0038 F7EE007A 		vmov.f32	s15, #1.0e+0
 1962 003c 87EE887A 		vdiv.f32	s14, s15, s16
 1963 0040 49B1     		cbz	r1, .L463
 1964 0042 00EB8101 		add	r1, r0, r1, lsl #2
 1965              	.L467:
 1966 0046 D0ED007A 		vldr.32	s15, [r0]
 1967 004a 67EE277A 		vmul.f32	s15, s14, s15
 1968 004e E0EC017A 		vstmia.32	r0!, {s15}
 1969 0052 8142     		cmp	r1, r0
 1970 0054 F7D1     		bne	.L467
 1971              	.L463:
 1972 0056 B0EE480A 		vmov.f32	s0, s16
 1973 005a 03B0     		add	sp, sp, #12
 1974              		@ sp needed
 1975 005c BDEC028B 		vldm	sp!, {d8}
 1976 0060 5DF804FB 		ldr	pc, [sp], #4
 1977              	.L469:
 1978 0064 9FED078A 		vldr.32	s16, .L477
 1979 0068 B0EE480A 		vmov.f32	s0, s16
 1980 006c 03B0     		add	sp, sp, #12
 1981              		@ sp needed
 1982 006e BDEC028B 		vldm	sp!, {d8}
 1983 0072 5DF804FB 		ldr	pc, [sp], #4
 1984              	.L476:
 1985 0076 CDE90001 		strd	r0, r1, [sp]
 1986 007a FFF7FEFF 		bl	sqrtf
 1987 007e DDE90001 		ldrd	r0, r1, [sp]
 1988 0082 D4E7     		b	.L466
 1989              	.L478:
 1990              		.align	2
 1991              	.L477:
 1992 0084 00000000 		.word	0
 1993              		.size	_ZN3DDA9NormaliseEPfjj, .-_ZN3DDA9NormaliseEPfjj
 1994              		.section	.text._ZN3DDA4InitEPKf,"ax",%progbits
 1995              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 36


 1996              		.p2align 2,,3
 1997              		.global	_ZN3DDA4InitEPKf
 1998              		.syntax unified
 1999              		.thumb
 2000              		.thumb_func
 2001              		.fpu fpv4-sp-d16
 2002              		.type	_ZN3DDA4InitEPKf, %function
 2003              	_ZN3DDA4InitEPKf:
 2004              		@ args = 0, pretend = 0, frame = 144
 2005              		@ frame_needed = 0, uses_anonymous_args = 0
 2006 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2007 0004 DFF8BC81 		ldr	r8, .L507+8
 2008 0008 2DED028B 		vpush.64	{d8}
 2009 000c D8F804C0 		ldr	ip, [r8, #4]
 2010 0010 A5B0     		sub	sp, sp, #148
 2011 0012 0024     		movs	r4, #0
 2012 0014 0546     		mov	r5, r0
 2013 0016 DCED6D8A 		vldr.32	s17, [ip, #436]
 2014 001a 9CED618A 		vldr.32	s16, [ip, #388]
 2015 001e 0F46     		mov	r7, r1
 2016 0020 00F11C0A 		add	r10, r0, #28
 2017 0024 0CAE     		add	r6, sp, #48
 2018 0026 A146     		mov	r9, r4
 2019 0028 04E0     		b	.L482
 2020              	.L480:
 2021 002a 0134     		adds	r4, r4, #1
 2022 002c 0C2C     		cmp	r4, #12
 2023 002e 36D0     		beq	.L481
 2024              	.L505:
 2025 0030 D8F804C0 		ldr	ip, [r8, #4]
 2026              	.L482:
 2027 0034 6B68     		ldr	r3, [r5, #4]
 2028 0036 A6EC018A 		vstmia.32	r6!, {s16}
 2029 003a A200     		lsls	r2, r4, #2
 2030 003c 0DEB0201 		add	r1, sp, r2
 2031 0040 1344     		add	r3, r3, r2
 2032 0042 C1ED008A 		vstr.32	s17, [r1]
 2033 0046 1A6A     		ldr	r2, [r3, #32]
 2034 0048 4AF8042F 		str	r2, [r10, #4]!
 2035 004c 1B6D     		ldr	r3, [r3, #80]	@ float
 2036 004e CAF83030 		str	r3, [r10, #48]	@ float
 2037 0052 F7EC017A 		vldmia.32	r7!, {s15}
 2038 0056 CAED187A 		vstr.32	s15, [r10, #96]
 2039 005a 9CED790A 		vldr.32	s0, [ip, #484]
 2040 005e 27EE800A 		vmul.f32	s0, s15, s0
 2041 0062 FFF7FEFF 		bl	lrintf
 2042 0066 8346     		mov	fp, r0
 2043 0068 0028     		cmp	r0, #0
 2044 006a DED0     		beq	.L480
 2045 006c 04F10C00 		add	r0, r4, #12
 2046 0070 0121     		movs	r1, #1
 2047 0072 FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
 2048 0076 8BEAEB72 		eor	r2, fp, fp, asr #31
 2049 007a CAF8D800 		str	r0, [r10, #216]
 2050 007e 8379     		ldrb	r3, [r0, #6]	@ zero_extendqisi2
 2051 0080 A2EBEB72 		sub	r2, r2, fp, asr #31
 2052 0084 6FEA0B0B 		mvn	fp, fp
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 37


 2053 0088 4FEADB7B 		lsr	fp, fp, #31
 2054 008c 0134     		adds	r4, r4, #1
 2055 008e 6BF30413 		bfi	r3, fp, #4, #1
 2056 0092 0C2C     		cmp	r4, #12
 2057 0094 8260     		str	r2, [r0, #8]
 2058 0096 8371     		strb	r3, [r0, #6]
 2059 0098 4FF00109 		mov	r9, #1
 2060 009c C8D1     		bne	.L505
 2061              	.L481:
 2062 009e B9F1000F 		cmp	r9, #0
 2063 00a2 1BD1     		bne	.L483
 2064 00a4 454F     		ldr	r7, .L507
 2065 00a6 4648     		ldr	r0, .L507+4
 2066 00a8 3968     		ldr	r1, [r7]
 2067 00aa 05F1F403 		add	r3, r5, #244
 2068 00ae 4C46     		mov	r4, r9
 2069 00b0 05F59275 		add	r5, r5, #292
 2070 00b4 4E46     		mov	r6, r9
 2071              	.L485:
 2072 00b6 53F8042F 		ldr	r2, [r3, #4]!
 2073 00ba 2AB1     		cbz	r2, .L484
 2074 00bc 0468     		ldr	r4, [r0]
 2075 00be 1460     		str	r4, [r2]
 2076 00c0 0131     		adds	r1, r1, #1
 2077 00c2 0260     		str	r2, [r0]
 2078 00c4 0124     		movs	r4, #1
 2079 00c6 1E60     		str	r6, [r3]
 2080              	.L484:
 2081 00c8 AB42     		cmp	r3, r5
 2082 00ca F4D1     		bne	.L485
 2083 00cc 002C     		cmp	r4, #0
 2084 00ce 72D1     		bne	.L506
 2085              	.L487:
 2086 00d0 4846     		mov	r0, r9
 2087 00d2 25B0     		add	sp, sp, #148
 2088              		@ sp needed
 2089 00d4 BDEC028B 		vldm	sp!, {d8}
 2090 00d8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2091              	.L483:
 2092 00dc E97A     		ldrb	r1, [r5, #11]	@ zero_extendqisi2
 2093 00de 6A68     		ldr	r2, [r5, #4]
 2094 00e0 AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 2095 00e2 01F0F001 		and	r1, r1, #240
 2096 00e6 41F00901 		orr	r1, r1, #9
 2097 00ea E972     		strb	r1, [r5, #11]
 2098 00ec D2F8C010 		ldr	r1, [r2, #192]	@ float
 2099 00f0 5069     		ldr	r0, [r2, #20]
 2100 00f2 C5F8C010 		str	r1, [r5, #192]	@ float
 2101 00f6 D2E90641 		ldrd	r4, r1, [r2, #24]
 2102 00fa 03F0B503 		and	r3, r3, #181
 2103 00fe 43F00403 		orr	r3, r3, #4
 2104 0102 C5E90641 		strd	r4, r1, [r5, #24]
 2105 0106 03F0CF03 		and	r3, r3, #207
 2106 010a 6861     		str	r0, [r5, #20]
 2107 010c 6FF3C713 		bfc	r3, #7, #1
 2108 0110 0020     		movs	r0, #0
 2109 0112 AB72     		strb	r3, [r5, #10]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 38


 2110 0114 2861     		str	r0, [r5, #16]
 2111 0116 917A     		ldrb	r1, [r2, #10]	@ zero_extendqisi2
 2112 0118 DBB2     		uxtb	r3, r3
 2113 011a 61F30003 		bfi	r3, r1, #0, #1
 2114 011e AB72     		strb	r3, [r5, #10]
 2115 0120 D8F81430 		ldr	r3, [r8, #20]
 2116 0124 93F8B430 		ldrb	r3, [r3, #180]	@ zero_extendqisi2
 2117 0128 012B     		cmp	r3, #1
 2118 012a 14BF     		ite	ne
 2119 012c 9389     		ldrhne	r3, [r2, #12]
 2120 012e A881     		strheq	r0, [r5, #12]	@ movhi
 2121 0130 4FF00C02 		mov	r2, #12
 2122 0134 05F18004 		add	r4, r5, #128
 2123 0138 18BF     		it	ne
 2124 013a AB81     		strhne	r3, [r5, #12]	@ movhi
 2125 013c 2046     		mov	r0, r4
 2126 013e 1146     		mov	r1, r2
 2127 0140 FFF7FEFF 		bl	_ZN3DDA9NormaliseEPfjj
 2128 0144 05F1B00C 		add	ip, r5, #176
 2129 0148 8CED000A 		vstr.32	s0, [ip]
 2130 014c 18AF     		add	r7, sp, #96
 2131              	.L490:
 2132 014e 2068     		ldr	r0, [r4]	@ unaligned
 2133 0150 6168     		ldr	r1, [r4, #4]	@ unaligned
 2134 0152 A268     		ldr	r2, [r4, #8]	@ unaligned
 2135 0154 E368     		ldr	r3, [r4, #12]	@ unaligned
 2136 0156 3E46     		mov	r6, r7
 2137 0158 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2138 015a 1034     		adds	r4, r4, #16
 2139 015c 6445     		cmp	r4, ip
 2140 015e 3746     		mov	r7, r6
 2141 0160 F5D1     		bne	.L490
 2142 0162 18AB     		add	r3, sp, #96
 2143 0164 24AA     		add	r2, sp, #144
 2144              	.L491:
 2145 0166 D3ED007A 		vldr.32	s15, [r3]
 2146 016a F0EEE77A 		vabs.f32	s15, s15
 2147 016e E3EC017A 		vstmia.32	r3!, {s15}
 2148 0172 9342     		cmp	r3, r2
 2149 0174 F7D1     		bne	.L491
 2150 0176 6946     		mov	r1, sp
 2151 0178 18A8     		add	r0, sp, #96
 2152 017a 0C22     		movs	r2, #12
 2153 017c FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 2154 0180 0CA9     		add	r1, sp, #48
 2155 0182 18A8     		add	r0, sp, #96
 2156 0184 0C22     		movs	r2, #12
 2157 0186 85ED2E0A 		vstr.32	s0, [r5, #184]
 2158 018a 85ED2D0A 		vstr.32	s0, [r5, #180]
 2159 018e FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 2160 0192 0023     		movs	r3, #0
 2161 0194 C5F8C830 		str	r3, [r5, #200]	@ float
 2162 0198 C5F8C430 		str	r3, [r5, #196]	@ float
 2163 019c 2846     		mov	r0, r5
 2164 019e 85ED2F0A 		vstr.32	s0, [r5, #188]
 2165 01a2 FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 2166 01a6 0123     		movs	r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 39


 2167 01a8 4846     		mov	r0, r9
 2168 01aa 2B72     		strb	r3, [r5, #8]
 2169 01ac 25B0     		add	sp, sp, #148
 2170              		@ sp needed
 2171 01ae BDEC028B 		vldm	sp!, {d8}
 2172 01b2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2173              	.L506:
 2174 01b6 3960     		str	r1, [r7]
 2175 01b8 8AE7     		b	.L487
 2176              	.L508:
 2177 01ba 00BF     		.align	2
 2178              	.L507:
 2179 01bc 00000000 		.word	_ZN13DriveMovement7numFreeE
 2180 01c0 00000000 		.word	_ZN13DriveMovement8freeListE
 2181 01c4 00000000 		.word	reprap
 2182              		.size	_ZN3DDA4InitEPKf, .-_ZN3DDA4InitEPKf
 2183              		.section	.text._ZN3DDA12NormaliseXYZEv,"ax",%progbits
 2184              		.align	1
 2185              		.p2align 2,,3
 2186              		.global	_ZN3DDA12NormaliseXYZEv
 2187              		.syntax unified
 2188              		.thumb
 2189              		.thumb_func
 2190              		.fpu fpv4-sp-d16
 2191              		.type	_ZN3DDA12NormaliseXYZEv, %function
 2192              	_ZN3DDA12NormaliseXYZEv:
 2193              		@ args = 0, pretend = 0, frame = 8
 2194              		@ frame_needed = 0, uses_anonymous_args = 0
 2195 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2196 0002 2DED028B 		vpush.64	{d8}
 2197 0006 9FED347A 		vldr.32	s14, .L529
 2198 000a D0E905EC 		ldrd	lr, ip, [r0, #20]
 2199 000e 0023     		movs	r3, #0
 2200 0010 00F18004 		add	r4, r0, #128
 2201 0014 83B0     		sub	sp, sp, #12
 2202 0016 B0EE470A 		vmov.f32	s0, s14
 2203 001a 2146     		mov	r1, r4
 2204 001c 1E46     		mov	r6, r3
 2205 001e 1F46     		mov	r7, r3
 2206              	.L512:
 2207 0020 2EFA03F2 		lsr	r2, lr, r3
 2208 0024 12F0010F 		tst	r2, #1
 2209 0028 2CFA03F5 		lsr	r5, ip, r3
 2210 002c 03F10103 		add	r3, r3, #1
 2211 0030 04D0     		beq	.L510
 2212 0032 D1ED007A 		vldr.32	s15, [r1]
 2213 0036 A7EEA70A 		vfma.f32	s0, s15, s15
 2214 003a 0137     		adds	r7, r7, #1
 2215              	.L510:
 2216 003c EA07     		lsls	r2, r5, #31
 2217 003e 04D5     		bpl	.L511
 2218 0040 D1ED007A 		vldr.32	s15, [r1]
 2219 0044 A7EEA77A 		vfma.f32	s14, s15, s15
 2220 0048 0136     		adds	r6, r6, #1
 2221              	.L511:
 2222 004a 092B     		cmp	r3, #9
 2223 004c 01F10401 		add	r1, r1, #4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 40


 2224 0050 E6D1     		bne	.L512
 2225 0052 012F     		cmp	r7, #1
 2226 0054 05D9     		bls	.L513
 2227 0056 07EE907A 		vmov	s15, r7	@ int
 2228 005a F8EE677A 		vcvt.f32.u32	s15, s15
 2229 005e 80EE270A 		vdiv.f32	s0, s0, s15
 2230              	.L513:
 2231 0062 012E     		cmp	r6, #1
 2232 0064 05D9     		bls	.L514
 2233 0066 07EE906A 		vmov	s15, r6	@ int
 2234 006a F8EE677A 		vcvt.f32.u32	s15, s15
 2235 006e 87EE277A 		vdiv.f32	s14, s14, s15
 2236              	.L514:
 2237 0072 30EE070A 		vadd.f32	s0, s0, s14
 2238 0076 D0ED227A 		vldr.32	s15, [r0, #136]
 2239 007a A7EEA70A 		vfma.f32	s0, s15, s15
 2240 007e B5EE400A 		vcmp.f32	s0, #0
 2241 0082 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2242 0086 B1EEC08A 		vsqrt.f32	s16, s0
 2243 008a 20D4     		bmi	.L528
 2244              	.L515:
 2245 008c B5EEC08A 		vcmpe.f32	s16, #0
 2246 0090 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2247 0094 13D9     		bls	.L518
 2248 0096 F7EE007A 		vmov.f32	s15, #1.0e+0
 2249 009a 87EE887A 		vdiv.f32	s14, s15, s16
 2250 009e 2346     		mov	r3, r4
 2251 00a0 B030     		adds	r0, r0, #176
 2252              	.L517:
 2253 00a2 D3ED007A 		vldr.32	s15, [r3]
 2254 00a6 67EE277A 		vmul.f32	s15, s14, s15
 2255 00aa E3EC017A 		vstmia.32	r3!, {s15}
 2256 00ae 9842     		cmp	r0, r3
 2257 00b0 F7D1     		bne	.L517
 2258 00b2 B0EE480A 		vmov.f32	s0, s16
 2259 00b6 03B0     		add	sp, sp, #12
 2260              		@ sp needed
 2261 00b8 BDEC028B 		vldm	sp!, {d8}
 2262 00bc F0BD     		pop	{r4, r5, r6, r7, pc}
 2263              	.L518:
 2264 00be 9FED068A 		vldr.32	s16, .L529
 2265 00c2 B0EE480A 		vmov.f32	s0, s16
 2266 00c6 03B0     		add	sp, sp, #12
 2267              		@ sp needed
 2268 00c8 BDEC028B 		vldm	sp!, {d8}
 2269 00cc F0BD     		pop	{r4, r5, r6, r7, pc}
 2270              	.L528:
 2271 00ce 0190     		str	r0, [sp, #4]
 2272 00d0 FFF7FEFF 		bl	sqrtf
 2273 00d4 0198     		ldr	r0, [sp, #4]
 2274 00d6 D9E7     		b	.L515
 2275              	.L530:
 2276              		.align	2
 2277              	.L529:
 2278 00d8 00000000 		.word	0
 2279              		.size	_ZN3DDA12NormaliseXYZEv, .-_ZN3DDA12NormaliseXYZEv
 2280              		.section	.text.hot._ZN3DDA4InitERN6GCodes7RawMoveEb,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 41


 2281              		.align	1
 2282              		.p2align 2,,3
 2283              		.global	_ZN3DDA4InitERN6GCodes7RawMoveEb
 2284              		.syntax unified
 2285              		.thumb
 2286              		.thumb_func
 2287              		.fpu fpv4-sp-d16
 2288              		.type	_ZN3DDA4InitERN6GCodes7RawMoveEb, %function
 2289              	_ZN3DDA4InitERN6GCodes7RawMoveEb:
 2290              		@ args = 0, pretend = 0, frame = 144
 2291              		@ frame_needed = 0, uses_anonymous_args = 0
 2292 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2293 0004 DFF8C0B3 		ldr	fp, .L673+16
 2294 0008 4468     		ldr	r4, [r0, #4]
 2295 000a DBF81430 		ldr	r3, [fp, #20]
 2296 000e 2DED048B 		vpush.64	{d8, d9}
 2297 0012 8046     		mov	r8, r0
 2298 0014 D3F86053 		ldr	r5, [r3, #864]
 2299 0018 D3F85C03 		ldr	r0, [r3, #860]
 2300 001c A5B0     		sub	sp, sp, #148
 2301 001e 04F12006 		add	r6, r4, #32
 2302 0022 A842     		cmp	r0, r5
 2303 0024 0A90     		str	r0, [sp, #40]
 2304 0026 0695     		str	r5, [sp, #24]
 2305 0028 CDE90021 		strd	r2, r1, [sp]
 2306 002c 0596     		str	r6, [sp, #20]
 2307 002e 11D9     		bls	.L532
 2308 0030 05F18043 		add	r3, r5, #1073741824
 2309 0034 013B     		subs	r3, r3, #1
 2310 0036 9B00     		lsls	r3, r3, #2
 2311 0038 0146     		mov	r1, r0
 2312 003a 03F12402 		add	r2, r3, #36
 2313 003e 06EB8100 		add	r0, r6, r1, lsl #2
 2314 0042 4244     		add	r2, r2, r8
 2315 0044 3344     		add	r3, r3, r6
 2316 0046 0438     		subs	r0, r0, #4
 2317              	.L533:
 2318 0048 53F8041F 		ldr	r1, [r3, #4]!
 2319 004c 42F8041B 		str	r1, [r2], #4
 2320 0050 9842     		cmp	r0, r3
 2321 0052 F9D1     		bne	.L533
 2322              	.L532:
 2323 0054 DBF80C30 		ldr	r3, [fp, #12]
 2324 0058 0993     		str	r3, [sp, #36]
 2325 005a 009B     		ldr	r3, [sp]
 2326 005c 002B     		cmp	r3, #0
 2327 005e 40F0D382 		bne	.L657
 2328 0062 98F80A30 		ldrb	r3, [r8, #10]	@ zero_extendqisi2
 2329 0066 009A     		ldr	r2, [sp]
 2330 0068 62F34103 		bfi	r3, r2, #1, #1
 2331 006c 88F80A30 		strb	r3, [r8, #10]
 2332 0070 08F12006 		add	r6, r8, #32
 2333              	.L538:
 2334 0074 98F80A30 		ldrb	r3, [r8, #10]	@ zero_extendqisi2
 2335 0078 DBF80420 		ldr	r2, [fp, #4]
 2336 007c 019F     		ldr	r7, [sp, #4]
 2337 007e CDF81080 		str	r8, [sp, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 42


 2338 0082 6FF38613 		bfc	r3, #6, #1
 2339 0086 88F80A30 		strb	r3, [r8, #10]
 2340 008a 0024     		movs	r4, #0
 2341 008c 099B     		ldr	r3, [sp, #36]
 2342 008e DFEDCA8A 		vldr.32	s17, .L673
 2343 0092 D3F8743A 		ldr	r3, [r3, #2676]
 2344 0096 DDF82880 		ldr	r8, [sp, #40]
 2345 009a 0393     		str	r3, [sp, #12]
 2346 009c CDE90744 		strd	r4, r4, [sp, #28]
 2347 00a0 02F5D679 		add	r9, r2, #428
 2348 00a4 0294     		str	r4, [sp, #8]
 2349 00a6 0B97     		str	r7, [sp, #44]
 2350              	.L556:
 2351 00a8 0CAB     		add	r3, sp, #48
 2352 00aa 03EB840A 		add	r10, r3, r4, lsl #2
 2353 00ae 59F8042B 		ldr	r2, [r9], #4	@ float
 2354 00b2 CAF80020 		str	r2, [r10]	@ float
 2355 00b6 A045     		cmp	r8, r4
 2356 00b8 40F28881 		bls	.L539
 2357 00bc 009B     		ldr	r3, [sp]
 2358 00be 1BB9     		cbnz	r3, .L656
 2359 00c0 069B     		ldr	r3, [sp, #24]
 2360 00c2 A342     		cmp	r3, r4
 2361 00c4 00F28281 		bhi	.L539
 2362              	.L656:
 2363 00c8 3A68     		ldr	r2, [r7]	@ float
 2364 00ca 3568     		ldr	r5, [r6]
 2365 00cc 3263     		str	r2, [r6, #48]	@ float
 2366              	.L600:
 2367 00ce 039B     		ldr	r3, [sp, #12]
 2368 00d0 1A68     		ldr	r2, [r3]
 2369 00d2 059B     		ldr	r3, [sp, #20]
 2370 00d4 D26E     		ldr	r2, [r2, #108]
 2371 00d6 53F82410 		ldr	r1, [r3, r4, lsl #2]
 2372 00da B84B     		ldr	r3, .L673+4
 2373 00dc 9A42     		cmp	r2, r3
 2374 00de A5EB0105 		sub	r5, r5, r1
 2375 00e2 40F04982 		bne	.L658
 2376              	.L545:
 2377 00e6 009B     		ldr	r3, [sp]
 2378 00e8 002B     		cmp	r3, #0
 2379 00ea 40F0E781 		bne	.L659
 2380 00ee DBF80430 		ldr	r3, [fp, #4]
 2381 00f2 07EE905A 		vmov	s15, r5	@ int
 2382 00f6 03EB8403 		add	r3, r3, r4, lsl #2
 2383 00fa 93ED777A 		vldr.32	s14, [r3, #476]
 2384 00fe F8EEE76A 		vcvt.f32.s32	s13, s15
 2385 0102 C6EE877A 		vdiv.f32	s15, s13, s14
 2386 0106 C6ED187A 		vstr.32	s15, [r6, #96]
 2387              	.L551:
 2388 010a 002D     		cmp	r5, #0
 2389 010c 40F00B82 		bne	.L660
 2390              	.L552:
 2391 0110 0134     		adds	r4, r4, #1
 2392 0112 0C2C     		cmp	r4, #12
 2393 0114 06F10406 		add	r6, r6, #4
 2394 0118 07F10407 		add	r7, r7, #4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 43


 2395 011c C4D1     		bne	.L556
 2396 011e 029B     		ldr	r3, [sp, #8]
 2397 0120 DDF81080 		ldr	r8, [sp, #16]
 2398 0124 002B     		cmp	r3, #0
 2399 0126 00F04582 		beq	.L661
 2400 012a 98F80A30 		ldrb	r3, [r8, #10]	@ zero_extendqisi2
 2401 012e 9807     		lsls	r0, r3, #30
 2402 0130 0AD5     		bpl	.L560
 2403 0132 08F1F405 		add	r5, r8, #244
 2404 0136 0024     		movs	r4, #0
 2405              	.L562:
 2406 0138 55F8046F 		ldr	r6, [r5, #4]!
 2407 013c 002E     		cmp	r6, #0
 2408 013e 00F0F682 		beq	.L662
 2409              	.L561:
 2410 0142 0134     		adds	r4, r4, #1
 2411 0144 032C     		cmp	r4, #3
 2412 0146 F7D1     		bne	.L562
 2413              	.L560:
 2414 0148 019F     		ldr	r7, [sp, #4]
 2415 014a 98F80B40 		ldrb	r4, [r8, #11]	@ zero_extendqisi2
 2416 014e 97F87330 		ldrb	r3, [r7, #115]	@ zero_extendqisi2
 2417 0152 7A6E     		ldr	r2, [r7, #100]
 2418 0154 C8F81420 		str	r2, [r8, #20]
 2419 0158 1946     		mov	r1, r3
 2420 015a C3F34013 		ubfx	r3, r3, #5, #1
 2421 015e D7E91A02 		ldrd	r0, r2, [r7, #104]
 2422 0162 63F34104 		bfi	r4, r3, #1, #1
 2423 0166 98F80A30 		ldrb	r3, [r8, #10]	@ zero_extendqisi2
 2424 016a BE6D     		ldr	r6, [r7, #88]	@ float
 2425 016c 3D6E     		ldr	r5, [r7, #96]	@ float
 2426 016e C8F81800 		str	r0, [r8, #24]
 2427 0172 C1F38001 		ubfx	r1, r1, #2, #1
 2428 0176 61F38203 		bfi	r3, r1, #2, #1
 2429 017a F86D     		ldr	r0, [r7, #92]
 2430 017c 88F80B40 		strb	r4, [r8, #11]
 2431 0180 DBB2     		uxtb	r3, r3
 2432 0182 13F0400F 		tst	r3, #64
 2433 0186 E1B2     		uxtb	r1, r4
 2434 0188 C8F81C00 		str	r0, [r8, #28]
 2435 018c 0798     		ldr	r0, [sp, #28]
 2436 018e C8F81020 		str	r2, [r8, #16]
 2437 0192 08BF     		it	eq
 2438 0194 0020     		moveq	r0, #0
 2439 0196 01F0FB01 		and	r1, r1, #251
 2440 019a 6FF30001 		bfc	r1, #0, #1
 2441 019e 60F3C303 		bfi	r3, r0, #3, #1
 2442 01a2 97F87300 		ldrb	r0, [r7, #115]	@ zero_extendqisi2
 2443 01a6 88F80B10 		strb	r1, [r8, #11]
 2444 01aa 97F87310 		ldrb	r1, [r7, #115]	@ zero_extendqisi2
 2445 01ae C8F8C060 		str	r6, [r8, #192]	@ float
 2446 01b2 C0F34000 		ubfx	r0, r0, #1, #1
 2447 01b6 60F30413 		bfi	r3, r0, #4, #1
 2448 01ba 98F80B00 		ldrb	r0, [r8, #11]	@ zero_extendqisi2
 2449 01be C8F8D850 		str	r5, [r8, #216]	@ float
 2450 01c2 03F0DF03 		and	r3, r3, #223
 2451 01c6 C1F38011 		ubfx	r1, r1, #6, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 44


 2452 01ca 6FF3C713 		bfc	r3, #7, #1
 2453 01ce 61F3C300 		bfi	r0, r1, #3, #1
 2454 01d2 002A     		cmp	r2, #0
 2455 01d4 88F80A30 		strb	r3, [r8, #10]
 2456 01d8 88F80B00 		strb	r0, [r8, #11]
 2457 01dc 00F03082 		beq	.L564
 2458 01e0 DBB2     		uxtb	r3, r3
 2459 01e2 B7F87020 		ldrh	r2, [r7, #112]
 2460 01e6 A8F80C20 		strh	r2, [r8, #12]	@ movhi
 2461 01ea 6FF30003 		bfc	r3, #0, #1
 2462 01ee 88F80A30 		strb	r3, [r8, #10]
 2463 01f2 0ADA     		bge	.L565
 2464 01f4 DFED727A 		vldr.32	s15, .L673+8
 2465 01f8 9DED0E7A 		vldr.32	s14, [sp, #56]
 2466 01fc B4EEE77A 		vcmpe.f32	s14, s15
 2467 0200 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2468 0204 C8BF     		it	gt
 2469 0206 CDED0E7A 		vstrgt.32	s15, [sp, #56]
 2470              	.L565:
 2471 020a 98F80A30 		ldrb	r3, [r8, #10]	@ zero_extendqisi2
 2472 020e 5906     		lsls	r1, r3, #25
 2473 0210 08F18004 		add	r4, r8, #128
 2474 0214 00F12782 		bmi	.L663
 2475              	.L567:
 2476 0218 089B     		ldr	r3, [sp, #32]
 2477 021a 002B     		cmp	r3, #0
 2478 021c 40F04682 		bne	.L664
 2479 0220 DFED687A 		vldr.32	s15, .L673+12
 2480 0224 4246     		mov	r2, r8
 2481 0226 17EE903A 		vmov	r3, s15
 2482 022a B0EE677A 		vmov.f32	s14, s15
 2483 022e 42F8B03F 		str	r3, [r2, #176]!	@ float
 2484 0232 2346     		mov	r3, r4
 2485              	.L570:
 2486 0234 F3EC017A 		vldmia.32	r3!, {s15}
 2487 0238 F0EEE77A 		vabs.f32	s15, s15
 2488 023c 9342     		cmp	r3, r2
 2489 023e 37EE277A 		vadd.f32	s14, s14, s15
 2490 0242 F7D1     		bne	.L570
 2491 0244 B5EEC07A 		vcmpe.f32	s14, #0
 2492 0248 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2493 024c 88ED2C7A 		vstr.32	s14, [r8, #176]
 2494 0250 40F37882 		ble	.L665
 2495 0254 F7EE007A 		vmov.f32	s15, #1.0e+0
 2496 0258 C7EE876A 		vdiv.f32	s13, s15, s14
 2497 025c 2346     		mov	r3, r4
 2498 025e 04F13006 		add	r6, r4, #48
 2499              	.L573:
 2500 0262 D3ED007A 		vldr.32	s15, [r3]
 2501 0266 66EEA77A 		vmul.f32	s15, s13, s15
 2502 026a E3EC017A 		vstmia.32	r3!, {s15}
 2503 026e 9E42     		cmp	r6, r3
 2504 0270 F7D1     		bne	.L573
 2505              	.L568:
 2506 0272 18AF     		add	r7, sp, #96
 2507              	.L574:
 2508 0274 2068     		ldr	r0, [r4]	@ unaligned
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 45


 2509 0276 6168     		ldr	r1, [r4, #4]	@ unaligned
 2510 0278 A268     		ldr	r2, [r4, #8]	@ unaligned
 2511 027a E368     		ldr	r3, [r4, #12]	@ unaligned
 2512 027c 3D46     		mov	r5, r7
 2513 027e 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2514 0280 1034     		adds	r4, r4, #16
 2515 0282 B442     		cmp	r4, r6
 2516 0284 2F46     		mov	r7, r5
 2517 0286 F5D1     		bne	.L574
 2518 0288 18AB     		add	r3, sp, #96
 2519 028a 24AA     		add	r2, sp, #144
 2520              	.L575:
 2521 028c D3ED007A 		vldr.32	s15, [r3]
 2522 0290 F0EEE77A 		vabs.f32	s15, s15
 2523 0294 E3EC017A 		vstmia.32	r3!, {s15}
 2524 0298 9A42     		cmp	r2, r3
 2525 029a F7D1     		bne	.L575
 2526 029c 0C22     		movs	r2, #12
 2527 029e 0CA9     		add	r1, sp, #48
 2528 02a0 18A8     		add	r0, sp, #96
 2529 02a2 FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 2530 02a6 98F80A30 		ldrb	r3, [r8, #10]	@ zero_extendqisi2
 2531 02aa 88ED390A 		vstr.32	s0, [r8, #228]
 2532 02ae 5A06     		lsls	r2, r3, #25
 2533 02b0 88ED2D0A 		vstr.32	s0, [r8, #180]
 2534 02b4 17D5     		bpl	.L576
 2535 02b6 099A     		ldr	r2, [sp, #36]
 2536 02b8 92ED067A 		vldr.32	s14, [r2, #24]
 2537 02bc D2ED077A 		vldr.32	s15, [r2, #28]
 2538 02c0 13F0080F 		tst	r3, #8
 2539 02c4 B4EE400A 		vcmp.f32	s0, s0
 2540 02c8 18BF     		it	ne
 2541 02ca F0EE477A 		vmovne.f32	s15, s14
 2542 02ce F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2543 02d2 06D6     		bvs	.L578
 2544 02d4 B4EEE70A 		vcmpe.f32	s0, s15
 2545 02d8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2546 02dc 58BF     		it	pl
 2547 02de B0EE670A 		vmovpl.f32	s0, s15
 2548              	.L578:
 2549 02e2 88ED2D0A 		vstr.32	s0, [r8, #180]
 2550              	.L576:
 2551 02e6 019B     		ldr	r3, [sp, #4]
 2552 02e8 88ED2E0A 		vstr.32	s0, [r8, #184]
 2553 02ec 93ED158A 		vldr.32	s16, [r3, #84]
 2554 02f0 009B     		ldr	r3, [sp]
 2555 02f2 0BBB     		cbnz	r3, .L580
 2556 02f4 DDED186A 		vldr.32	s13, [sp, #96]
 2557 02f8 DDED197A 		vldr.32	s15, [sp, #100]
 2558 02fc 9DED1A7A 		vldr.32	s14, [sp, #104]
 2559 0300 F5EEC06A 		vcmpe.f32	s13, #0
 2560 0304 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2561 0308 D8BF     		it	le
 2562 030a DFED2E6A 		vldrle.32	s13, .L673+12
 2563 030e F4EEE76A 		vcmpe.f32	s13, s15
 2564 0312 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2565 0316 58BF     		it	pl
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 46


 2566 0318 F0EE667A 		vmovpl.f32	s15, s13
 2567 031c F4EEC77A 		vcmpe.f32	s15, s14
 2568 0320 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2569 0324 58BF     		it	pl
 2570 0326 B0EE677A 		vmovpl.f32	s14, s15
 2571 032a B5EE407A 		vcmp.f32	s14, #0
 2572 032e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2573 0332 18BF     		it	ne
 2574 0334 88EE078A 		vdivne.f32	s16, s16, s14
 2575              	.L580:
 2576 0338 DBF80410 		ldr	r1, [fp, #4]
 2577 033c 01F5BE71 		add	r1, r1, #380
 2578 0340 B4EE488A 		vcmp.f32	s16, s16
 2579 0344 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2580 0348 80F11282 		bvs	.L584
 2581 034c F6EE007A 		vmov.f32	s15, #5.0e-1
 2582 0350 B4EEE78A 		vcmpe.f32	s16, s15
 2583 0354 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2584 0358 40F3B281 		ble	.L666
 2585 035c 0C22     		movs	r2, #12
 2586 035e 18A8     		add	r0, sp, #96
 2587 0360 FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 2588              	.L599:
 2589 0364 B4EE480A 		vcmp.f32	s0, s16
 2590 0368 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2591 036c C8BF     		it	gt
 2592 036e B0EE480A 		vmovgt.f32	s0, s16
 2593              	.L587:
 2594 0372 009B     		ldr	r3, [sp]
 2595 0374 88ED2F0A 		vstr.32	s0, [r8, #188]
 2596 0378 2BB1     		cbz	r3, .L589
 2597 037a 0398     		ldr	r0, [sp, #12]
 2598 037c 0368     		ldr	r3, [r0]
 2599 037e 18AA     		add	r2, sp, #96
 2600 0380 1B6E     		ldr	r3, [r3, #96]
 2601 0382 4146     		mov	r1, r8
 2602 0384 9847     		blx	r3
 2603              	.L589:
 2604 0386 D8F80400 		ldr	r0, [r8, #4]
 2605 038a 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 2606 038c 0022     		movs	r2, #0
 2607 038e 012B     		cmp	r3, #1
 2608 0390 C8F8C820 		str	r2, [r8, #200]	@ float
 2609 0394 00F09B81 		beq	.L667
 2610              	.L590:
 2611 0398 0023     		movs	r3, #0
 2612 039a C8F8C430 		str	r3, [r8, #196]	@ float
 2613              	.L594:
 2614 039e 4046     		mov	r0, r8
 2615 03a0 FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 2616 03a4 0298     		ldr	r0, [sp, #8]
 2617 03a6 0123     		movs	r3, #1
 2618 03a8 88F80830 		strb	r3, [r8, #8]
 2619 03ac 25B0     		add	sp, sp, #148
 2620              		@ sp needed
 2621 03ae BDEC048B 		vldm	sp!, {d8-d9}
 2622 03b2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 47


 2623              	.L674:
 2624 03b6 00BF     		.align	2
 2625              	.L673:
 2626 03b8 0000B443 		.word	1135869952
 2627 03bc 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 2628 03c0 00007A43 		.word	1132068864
 2629 03c4 00000000 		.word	0
 2630 03c8 00000000 		.word	reprap
 2631              	.L539:
 2632 03cc 97ED000A 		vldr.32	s0, [r7]
 2633 03d0 2046     		mov	r0, r4
 2634 03d2 FFF7FEFF 		bl	_ZN4Move22MotorEndPointToMachineEjf
 2635 03d6 D7ED007A 		vldr.32	s15, [r7]
 2636 03da 3060     		str	r0, [r6]
 2637 03dc A045     		cmp	r8, r4
 2638 03de 0546     		mov	r5, r0
 2639 03e0 C6ED0C7A 		vstr.32	s15, [r6, #48]
 2640 03e4 3FF673AE 		bhi	.L600
 2641 03e8 DBF80420 		ldr	r2, [fp, #4]
 2642 03ec 07EE100A 		vmov	s14, r0	@ int
 2643 03f0 02EB8402 		add	r2, r2, r4, lsl #2
 2644 03f4 D2ED776A 		vldr.32	s13, [r2, #476]
 2645 03f8 B8EEC76A 		vcvt.f32.s32	s12, s14
 2646 03fc F5EEC07A 		vcmpe.f32	s15, #0
 2647 0400 86EE267A 		vdiv.f32	s14, s12, s13
 2648 0404 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2649 0408 86ED187A 		vstr.32	s14, [r6, #96]
 2650 040c 05DD     		ble	.L668
 2651 040e 0028     		cmp	r0, #0
 2652 0410 40F09E80 		bne	.L597
 2653 0414 0123     		movs	r3, #1
 2654 0416 0793     		str	r3, [sp, #28]
 2655 0418 7AE6     		b	.L552
 2656              	.L668:
 2657 041a 0028     		cmp	r0, #0
 2658 041c 3FF478AE 		beq	.L552
 2659 0420 0121     		movs	r1, #1
 2660 0422 2046     		mov	r0, r4
 2661 0424 FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
 2662 0428 85EAE571 		eor	r1, r5, r5, asr #31
 2663 042c C6F8D800 		str	r0, [r6, #216]
 2664 0430 8279     		ldrb	r2, [r0, #6]	@ zero_extendqisi2
 2665 0432 A1EBE571 		sub	r1, r1, r5, asr #31
 2666 0436 ED43     		mvns	r5, r5
 2667 0438 ED0F     		lsrs	r5, r5, #31
 2668 043a 65F30412 		bfi	r2, r5, #4, #1
 2669 043e 8160     		str	r1, [r0, #8]
 2670 0440 8271     		strb	r2, [r0, #6]
 2671              	.L596:
 2672 0442 97ED007A 		vldr.32	s14, [r7]
 2673 0446 D6ED187A 		vldr.32	s15, [r6, #96]
 2674 044a 049B     		ldr	r3, [sp, #16]
 2675 044c 77EE677A 		vsub.f32	s15, s14, s15
 2676 0450 C7ED007A 		vstr.32	s15, [r7]
 2677 0454 9A7A     		ldrb	r2, [r3, #10]	@ zero_extendqisi2
 2678 0456 5306     		lsls	r3, r2, #25
 2679 0458 2DD5     		bpl	.L652
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 48


 2680 045a 019B     		ldr	r3, [sp, #4]
 2681 045c 93F87320 		ldrb	r2, [r3, #115]	@ zero_extendqisi2
 2682 0460 9507     		lsls	r5, r2, #30
 2683 0462 28D5     		bpl	.L652
 2684 0464 A4EB0802 		sub	r2, r4, r8
 2685 0468 082A     		cmp	r2, #8
 2686 046a 24D8     		bhi	.L652
 2687 046c DBF80410 		ldr	r1, [fp, #4]
 2688 0470 01EB8202 		add	r2, r1, r2, lsl #2
 2689 0474 D2ED8F6A 		vldr.32	s13, [r2, #572]
 2690 0478 F5EEC06A 		vcmpe.f32	s13, #0
 2691 047c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2692 0480 19DD     		ble	.L652
 2693 0482 DAED007A 		vldr.32	s15, [r10]
 2694 0486 01EB8401 		add	r1, r1, r4, lsl #2
 2695 048a 91ED836A 		vldr.32	s12, [r1, #524]
 2696 048e F4EE677A 		vcmp.f32	s15, s15
 2697 0492 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2698 0496 86EE267A 		vdiv.f32	s14, s12, s13
 2699 049a 80F17081 		bvs	.L608
 2700 049e F4EE477A 		vcmp.f32	s15, s14
 2701 04a2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2702 04a6 48BF     		it	mi
 2703 04a8 B0EE677A 		vmovmi.f32	s14, s15
 2704              	.L554:
 2705 04ac 0123     		movs	r3, #1
 2706 04ae 8AED007A 		vstr.32	s14, [r10]
 2707 04b2 0293     		str	r3, [sp, #8]
 2708 04b4 2CE6     		b	.L552
 2709              	.L652:
 2710 04b6 0123     		movs	r3, #1
 2711 04b8 0293     		str	r3, [sp, #8]
 2712 04ba 29E6     		b	.L552
 2713              	.L659:
 2714 04bc 049B     		ldr	r3, [sp, #16]
 2715 04be 97ED008A 		vldr.32	s16, [r7]
 2716 04c2 5868     		ldr	r0, [r3, #4]
 2717 04c4 0022     		movs	r2, #0
 2718 04c6 2146     		mov	r1, r4
 2719 04c8 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 2720 04cc 38EE400A 		vsub.f32	s0, s16, s0
 2721 04d0 B5EE400A 		vcmp.f32	s0, #0
 2722 04d4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2723 04d8 86ED180A 		vstr.32	s0, [r6, #96]
 2724 04dc 09D0     		beq	.L549
 2725 04de 019B     		ldr	r3, [sp, #4]
 2726 04e0 9A6E     		ldr	r2, [r3, #104]
 2727 04e2 E240     		lsrs	r2, r2, r4
 2728 04e4 D107     		lsls	r1, r2, #31
 2729 04e6 7ED5     		bpl	.L669
 2730 04e8 049B     		ldr	r3, [sp, #16]
 2731 04ea 9A7A     		ldrb	r2, [r3, #10]	@ zero_extendqisi2
 2732 04ec 42F04002 		orr	r2, r2, #64
 2733 04f0 9A72     		strb	r2, [r3, #10]
 2734              	.L549:
 2735 04f2 002D     		cmp	r5, #0
 2736 04f4 3FF40CAE 		beq	.L552
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 49


 2737 04f8 0121     		movs	r1, #1
 2738 04fa 2046     		mov	r0, r4
 2739 04fc FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
 2740 0500 85EAE571 		eor	r1, r5, r5, asr #31
 2741 0504 C6F8D800 		str	r0, [r6, #216]
 2742 0508 8279     		ldrb	r2, [r0, #6]	@ zero_extendqisi2
 2743 050a A1EBE571 		sub	r1, r1, r5, asr #31
 2744 050e ED43     		mvns	r5, r5
 2745 0510 ED0F     		lsrs	r5, r5, #31
 2746 0512 65F30412 		bfi	r2, r5, #4, #1
 2747 0516 A045     		cmp	r8, r4
 2748 0518 8160     		str	r1, [r0, #8]
 2749 051a 8271     		strb	r2, [r0, #6]
 2750 051c 91D9     		bls	.L596
 2751 051e 009B     		ldr	r3, [sp]
 2752 0520 0293     		str	r3, [sp, #8]
 2753 0522 0893     		str	r3, [sp, #32]
 2754 0524 F4E5     		b	.L552
 2755              	.L660:
 2756 0526 0121     		movs	r1, #1
 2757 0528 2046     		mov	r0, r4
 2758 052a FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
 2759 052e 85EAE572 		eor	r2, r5, r5, asr #31
 2760 0532 C6F8D800 		str	r0, [r6, #216]
 2761 0536 8379     		ldrb	r3, [r0, #6]	@ zero_extendqisi2
 2762 0538 A2EBE572 		sub	r2, r2, r5, asr #31
 2763 053c ED43     		mvns	r5, r5
 2764 053e ED0F     		lsrs	r5, r5, #31
 2765 0540 0121     		movs	r1, #1
 2766 0542 65F30413 		bfi	r3, r5, #4, #1
 2767 0546 0291     		str	r1, [sp, #8]
 2768 0548 8260     		str	r2, [r0, #8]
 2769 054a 8371     		strb	r3, [r0, #6]
 2770 054c 0891     		str	r1, [sp, #32]
 2771 054e DFE5     		b	.L552
 2772              	.L597:
 2773 0550 0121     		movs	r1, #1
 2774 0552 2046     		mov	r0, r4
 2775 0554 FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
 2776 0558 85EAE571 		eor	r1, r5, r5, asr #31
 2777 055c C6F8D800 		str	r0, [r6, #216]
 2778 0560 8279     		ldrb	r2, [r0, #6]	@ zero_extendqisi2
 2779 0562 A1EBE571 		sub	r1, r1, r5, asr #31
 2780 0566 ED43     		mvns	r5, r5
 2781 0568 ED0F     		lsrs	r5, r5, #31
 2782 056a 65F30412 		bfi	r2, r5, #4, #1
 2783 056e 0123     		movs	r3, #1
 2784 0570 8160     		str	r1, [r0, #8]
 2785 0572 8271     		strb	r2, [r0, #6]
 2786 0574 0793     		str	r3, [sp, #28]
 2787 0576 64E7     		b	.L596
 2788              	.L658:
 2789 0578 2146     		mov	r1, r4
 2790 057a 0398     		ldr	r0, [sp, #12]
 2791 057c 9047     		blx	r2
 2792 057e 0028     		cmp	r0, #0
 2793 0580 3FF4B1AD 		beq	.L545
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 50


 2794 0584 019B     		ldr	r3, [sp, #4]
 2795 0586 93F87220 		ldrb	r2, [r3, #114]	@ zero_extendqisi2
 2796 058a 013A     		subs	r2, r2, #1
 2797 058c 012A     		cmp	r2, #1
 2798 058e 7FF6AAAD 		bls	.L545
 2799 0592 DBF80420 		ldr	r2, [fp, #4]
 2800 0596 02EB8402 		add	r2, r2, r4, lsl #2
 2801 059a 92ED770A 		vldr.32	s0, [r2, #476]
 2802 059e 20EE280A 		vmul.f32	s0, s0, s17
 2803 05a2 FFF7FEFF 		bl	lrintf
 2804 05a6 00EBD072 		add	r2, r0, r0, lsr #31
 2805 05aa 5210     		asrs	r2, r2, #1
 2806 05ac AA42     		cmp	r2, r5
 2807 05ae 25DA     		bge	.L544
 2808 05b0 2D1A     		subs	r5, r5, r0
 2809 05b2 98E5     		b	.L545
 2810              	.L661:
 2811 05b4 009B     		ldr	r3, [sp]
 2812 05b6 73B1     		cbz	r3, .L558
 2813 05b8 0A9A     		ldr	r2, [sp, #40]
 2814 05ba 62B1     		cbz	r2, .L558
 2815 05bc 0199     		ldr	r1, [sp, #4]
 2816 05be D8F80430 		ldr	r3, [r8, #4]
 2817 05c2 01EB820A 		add	r10, r1, r2, lsl #2
 2818 05c6 0B9A     		ldr	r2, [sp, #44]
 2819 05c8 5033     		adds	r3, r3, #80
 2820              	.L559:
 2821 05ca 52F8041B 		ldr	r1, [r2], #4	@ float
 2822 05ce 43F8041B 		str	r1, [r3], #4	@ float
 2823 05d2 9245     		cmp	r10, r2
 2824 05d4 F9D1     		bne	.L559
 2825              	.L558:
 2826 05d6 0023     		movs	r3, #0
 2827 05d8 0293     		str	r3, [sp, #8]
 2828 05da 0298     		ldr	r0, [sp, #8]
 2829 05dc 25B0     		add	sp, sp, #148
 2830              		@ sp needed
 2831 05de BDEC048B 		vldm	sp!, {d8-d9}
 2832 05e2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2833              	.L669:
 2834 05e6 5A6E     		ldr	r2, [r3, #100]
 2835 05e8 E240     		lsrs	r2, r2, r4
 2836 05ea D207     		lsls	r2, r2, #31
 2837 05ec 7FF58DAD 		bpl	.L551
 2838 05f0 049B     		ldr	r3, [sp, #16]
 2839 05f2 9A7A     		ldrb	r2, [r3, #10]	@ zero_extendqisi2
 2840 05f4 42F04002 		orr	r2, r2, #64
 2841 05f8 9A72     		strb	r2, [r3, #10]
 2842 05fa 7AE7     		b	.L549
 2843              	.L544:
 2844 05fc 5242     		negs	r2, r2
 2845 05fe AA42     		cmp	r2, r5
 2846 0600 7FF771AD 		ble	.L545
 2847 0604 0544     		add	r5, r5, r0
 2848 0606 6EE5     		b	.L545
 2849              	.L657:
 2850 0608 0199     		ldr	r1, [sp, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 51


 2851 060a 0998     		ldr	r0, [sp, #36]
 2852 060c 91F87330 		ldrb	r3, [r1, #115]	@ zero_extendqisi2
 2853 0610 08F12006 		add	r6, r8, #32
 2854 0614 C3F30013 		ubfx	r3, r3, #4, #1
 2855 0618 3246     		mov	r2, r6
 2856 061a FFF7FEFF 		bl	_ZNK4Move21CartesianToMotorStepsEPKfPlb
 2857 061e 0028     		cmp	r0, #0
 2858 0620 D9D0     		beq	.L558
 2859 0622 099B     		ldr	r3, [sp, #36]
 2860 0624 D3F8743A 		ldr	r3, [r3, #2676]
 2861 0628 DB7B     		ldrb	r3, [r3, #15]	@ zero_extendqisi2
 2862 062a 032B     		cmp	r3, #3
 2863 062c 00F08D80 		beq	.L670
 2864 0630 0020     		movs	r0, #0
 2865              	.L537:
 2866 0632 98F80A30 		ldrb	r3, [r8, #10]	@ zero_extendqisi2
 2867 0636 60F34103 		bfi	r3, r0, #1, #1
 2868 063a 88F80A30 		strb	r3, [r8, #10]
 2869 063e 19E5     		b	.L538
 2870              	.L564:
 2871 0640 019A     		ldr	r2, [sp, #4]
 2872 0642 98F80A30 		ldrb	r3, [r8, #10]	@ zero_extendqisi2
 2873 0646 B2F87020 		ldrh	r2, [r2, #112]
 2874 064a A8F80C20 		strh	r2, [r8, #12]	@ movhi
 2875 064e 009A     		ldr	r2, [sp]
 2876 0650 62F30003 		bfi	r3, r2, #0, #1
 2877 0654 88F80A30 		strb	r3, [r8, #10]
 2878 0658 98F80A30 		ldrb	r3, [r8, #10]	@ zero_extendqisi2
 2879 065c 5906     		lsls	r1, r3, #25
 2880 065e 08F18004 		add	r4, r8, #128
 2881 0662 7FF5D9AD 		bpl	.L567
 2882              	.L663:
 2883 0666 039D     		ldr	r5, [sp, #12]
 2884 0668 98ED209A 		vldr.32	s18, [r8, #128]
 2885 066c 2B68     		ldr	r3, [r5]
 2886 066e 0021     		movs	r1, #0
 2887 0670 1B6A     		ldr	r3, [r3, #32]
 2888 0672 2846     		mov	r0, r5
 2889 0674 9847     		blx	r3
 2890 0676 2B68     		ldr	r3, [r5]
 2891 0678 98ED218A 		vldr.32	s16, [r8, #132]
 2892 067c 1B6A     		ldr	r3, [r3, #32]
 2893 067e 0121     		movs	r1, #1
 2894 0680 2846     		mov	r0, r5
 2895 0682 F0EE408A 		vmov.f32	s17, s0
 2896 0686 9847     		blx	r3
 2897 0688 28EE000A 		vmul.f32	s0, s16, s0
 2898 068c D8ED227A 		vldr.32	s15, [r8, #136]
 2899 0690 A9EE280A 		vfma.f32	s0, s18, s17
 2900 0694 4046     		mov	r0, r8
 2901 0696 4646     		mov	r6, r8
 2902 0698 B036     		adds	r6, r6, #176
 2903 069a 37EE800A 		vadd.f32	s0, s15, s0
 2904 069e 88ED220A 		vstr.32	s0, [r8, #136]
 2905 06a2 FFF7FEFF 		bl	_ZN3DDA12NormaliseXYZEv
 2906 06a6 86ED000A 		vstr.32	s0, [r6]
 2907 06aa E2E5     		b	.L568
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 52


 2908              	.L664:
 2909 06ac 0A9A     		ldr	r2, [sp, #40]
 2910 06ae 0C21     		movs	r1, #12
 2911 06b0 2046     		mov	r0, r4
 2912 06b2 FFF7FEFF 		bl	_ZN3DDA9NormaliseEPfjj
 2913 06b6 4646     		mov	r6, r8
 2914 06b8 B036     		adds	r6, r6, #176
 2915 06ba 86ED000A 		vstr.32	s0, [r6]
 2916 06be D8E5     		b	.L568
 2917              	.L666:
 2918 06c0 0C22     		movs	r2, #12
 2919 06c2 18A8     		add	r0, sp, #96
 2920 06c4 B0EE678A 		vmov.f32	s16, s15
 2921 06c8 FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 2922 06cc 4AE6     		b	.L599
 2923              	.L667:
 2924 06ce 98F80A30 		ldrb	r3, [r8, #10]	@ zero_extendqisi2
 2925 06d2 827A     		ldrb	r2, [r0, #10]	@ zero_extendqisi2
 2926 06d4 5340     		eors	r3, r3, r2
 2927 06d6 13F0480F 		tst	r3, #72
 2928 06da 7FF45DAE 		bne	.L590
 2929 06de 98ED2E0A 		vldr.32	s0, [r8, #184]
 2930 06e2 D8ED2C7A 		vldr.32	s15, [r8, #176]
 2931 06e6 20EE270A 		vmul.f32	s0, s0, s15
 2932 06ea 30EE000A 		vadd.f32	s0, s0, s0
 2933 06ee B5EE400A 		vcmp.f32	s0, #0
 2934 06f2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2935 06f6 B1EEC08A 		vsqrt.f32	s16, s0
 2936 06fa 46D4     		bmi	.L671
 2937              	.L591:
 2938 06fc B4EE488A 		vcmp.f32	s16, s16
 2939 0700 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2940 0704 D8ED2F7A 		vldr.32	s15, [r8, #188]
 2941 0708 3CD6     		bvs	.L672
 2942 070a B4EE678A 		vcmp.f32	s16, s15
 2943 070e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2944 0712 48BF     		it	mi
 2945 0714 F0EE487A 		vmovmi.f32	s15, s16
 2946              	.L592:
 2947 0718 C0ED387A 		vstr.32	s15, [r0, #224]
 2948 071c FFF7FEFF 		bl	_ZN3DDA11DoLookaheadEPS_
 2949 0720 D8F80430 		ldr	r3, [r8, #4]
 2950 0724 D3F8C830 		ldr	r3, [r3, #200]	@ float
 2951 0728 C8F8C430 		str	r3, [r8, #196]	@ float
 2952 072c 37E6     		b	.L594
 2953              	.L662:
 2954 072e 0121     		movs	r1, #1
 2955 0730 2046     		mov	r0, r4
 2956 0732 FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
 2957 0736 2860     		str	r0, [r5]
 2958 0738 8379     		ldrb	r3, [r0, #6]	@ zero_extendqisi2
 2959 073a 8660     		str	r6, [r0, #8]
 2960 073c 43F01003 		orr	r3, r3, #16
 2961 0740 8371     		strb	r3, [r0, #6]
 2962 0742 FEE4     		b	.L561
 2963              	.L665:
 2964 0744 04F13006 		add	r6, r4, #48
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 53


 2965 0748 93E5     		b	.L568
 2966              	.L670:
 2967 074a D8F82020 		ldr	r2, [r8, #32]
 2968 074e 236A     		ldr	r3, [r4, #32]
 2969 0750 9A42     		cmp	r2, r3
 2970 0752 7FF46EAF 		bne	.L537
 2971 0756 D8F82420 		ldr	r2, [r8, #36]
 2972 075a 636A     		ldr	r3, [r4, #36]
 2973 075c 9A42     		cmp	r2, r3
 2974 075e 7FF468AF 		bne	.L537
 2975 0762 A36A     		ldr	r3, [r4, #40]
 2976 0764 D8F82800 		ldr	r0, [r8, #40]
 2977 0768 C01A     		subs	r0, r0, r3
 2978 076a 18BF     		it	ne
 2979 076c 0120     		movne	r0, #1
 2980 076e 60E7     		b	.L537
 2981              	.L584:
 2982 0770 0C22     		movs	r2, #12
 2983 0772 18A8     		add	r0, sp, #96
 2984 0774 FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 2985 0778 B0EE480A 		vmov.f32	s0, s16
 2986 077c F9E5     		b	.L587
 2987              	.L608:
 2988 077e B0EE677A 		vmov.f32	s14, s15
 2989 0782 93E6     		b	.L554
 2990              	.L672:
 2991 0784 F0EE487A 		vmov.f32	s15, s16
 2992 0788 C6E7     		b	.L592
 2993              	.L671:
 2994 078a FFF7FEFF 		bl	sqrtf
 2995 078e D8F80400 		ldr	r0, [r8, #4]
 2996 0792 B3E7     		b	.L591
 2997              		.size	_ZN3DDA4InitERN6GCodes7RawMoveEb, .-_ZN3DDA4InitERN6GCodes7RawMoveEb
 2998              		.section	.text._ZN3DDA19AdvanceBabySteppingEf,"ax",%progbits
 2999              		.align	1
 3000              		.p2align 2,,3
 3001              		.global	_ZN3DDA19AdvanceBabySteppingEf
 3002              		.syntax unified
 3003              		.thumb
 3004              		.thumb_func
 3005              		.fpu fpv4-sp-d16
 3006              		.type	_ZN3DDA19AdvanceBabySteppingEf, %function
 3007              	_ZN3DDA19AdvanceBabySteppingEf:
 3008              		@ args = 0, pretend = 0, frame = 0
 3009              		@ frame_needed = 0, uses_anonymous_args = 0
 3010 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3011 0002 0646     		mov	r6, r0
 3012 0004 2DED048B 		vpush.64	{d8, d9}
 3013 0008 0446     		mov	r4, r0
 3014 000a B0EE409A 		vmov.f32	s18, s0
 3015 000e 00E0     		b	.L676
 3016              	.L700:
 3017 0010 1C46     		mov	r4, r3
 3018              	.L676:
 3019 0012 6368     		ldr	r3, [r4, #4]
 3020 0014 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 3021 0016 012A     		cmp	r2, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 54


 3022 0018 FAD0     		beq	.L700
 3023 001a B442     		cmp	r4, r6
 3024 001c DFED7D8A 		vldr.32	s17, .L719
 3025 0020 00F09080 		beq	.L675
 3026 0024 7C4D     		ldr	r5, .L719+4
 3027 0026 DFED7D9A 		vldr.32	s19, .L719+8
 3028              	.L699:
 3029 002a A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 3030 002c B5EE409A 		vcmp.f32	s18, #0
 3031 0030 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3032 0034 03F00201 		and	r1, r3, #2
 3033 0038 50D0     		beq	.L703
 3034 003a 5F06     		lsls	r7, r3, #25
 3035 003c 4ED5     		bpl	.L703
 3036 003e 21B9     		cbnz	r1, .L682
 3037 0040 D4F80031 		ldr	r3, [r4, #256]
 3038 0044 002B     		cmp	r3, #0
 3039 0046 00F0D380 		beq	.L714
 3040              	.L682:
 3041 004a 6B68     		ldr	r3, [r5, #4]
 3042 004c 94ED336A 		vldr.32	s12, [r4, #204]
 3043 0050 93ED857A 		vldr.32	s14, [r3, #532]
 3044 0054 D4ED2C6A 		vldr.32	s13, [r4, #176]
 3045 0058 F6EE007A 		vmov.f32	s15, #5.0e-1
 3046 005c 27EE277A 		vmul.f32	s14, s14, s15
 3047 0060 C7EE067A 		vdiv.f32	s15, s14, s12
 3048 0064 F4EE697A 		vcmp.f32	s15, s19
 3049 0068 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3050 006c C8BF     		it	gt
 3051 006e F0EE697A 		vmovgt.f32	s15, s19
 3052 0072 66EEA77A 		vmul.f32	s15, s13, s15
 3053 0076 B4EE499A 		vcmp.f32	s18, s18
 3054 007a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3055 007e B1EE678A 		vneg.f32	s16, s15
 3056 0082 80F1C380 		bvs	.L715
 3057 0086 F4EEC97A 		vcmpe.f32	s15, s18
 3058 008a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3059 008e 40F3A680 		ble	.L716
 3060 0092 F0EE497A 		vmov.f32	s15, s18
 3061              	.L684:
 3062 0096 B4EE678A 		vcmp.f32	s16, s15
 3063 009a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3064 009e 48BF     		it	mi
 3065 00a0 B0EE678A 		vmovmi.f32	s16, s15
 3066              	.L683:
 3067 00a4 88EE267A 		vdiv.f32	s14, s16, s13
 3068 00a8 2046     		mov	r0, r4
 3069 00aa D4ED227A 		vldr.32	s15, [r4, #136]
 3070 00ae 77EE877A 		vadd.f32	s15, s15, s14
 3071 00b2 C4ED227A 		vstr.32	s15, [r4, #136]
 3072 00b6 FFF7FEFF 		bl	_ZN3DDA12NormaliseXYZEv
 3073 00ba D4ED2C7A 		vldr.32	s15, [r4, #176]
 3074 00be 27EE800A 		vmul.f32	s0, s15, s0
 3075 00c2 2046     		mov	r0, r4
 3076 00c4 84ED2C0A 		vstr.32	s0, [r4, #176]
 3077 00c8 FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 3078 00cc A17A     		ldrb	r1, [r4, #10]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 55


 3079 00ce 78EE888A 		vadd.f32	s17, s17, s16
 3080 00d2 39EE489A 		vsub.f32	s18, s18, s16
 3081 00d6 01F00201 		and	r1, r1, #2
 3082 00da 01E0     		b	.L678
 3083              	.L703:
 3084 00dc 9FED4D8A 		vldr.32	s16, .L719
 3085              	.L678:
 3086 00e0 D4ED167A 		vldr.32	s15, [r4, #88]
 3087 00e4 6B68     		ldr	r3, [r5, #4]
 3088 00e6 77EEA87A 		vadd.f32	s15, s15, s17
 3089 00ea C4ED167A 		vstr.32	s15, [r4, #88]
 3090 00ee 71BB     		cbnz	r1, .L717
 3091 00f0 D3ED797A 		vldr.32	s15, [r3, #484]
 3092 00f4 A26A     		ldr	r2, [r4, #40]
 3093 00f6 68EEA77A 		vmul.f32	s15, s17, s15
 3094 00fa B5EE408A 		vcmp.f32	s16, #0
 3095 00fe FDEEE77A 		vcvt.s32.f32	s15, s15
 3096 0102 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3097 0106 17EE901A 		vmov	r1, s15	@ int
 3098 010a 0A44     		add	r2, r2, r1
 3099 010c A262     		str	r2, [r4, #40]
 3100 010e 15D0     		beq	.L692
 3101 0110 D3ED797A 		vldr.32	s15, [r3, #484]
 3102 0114 D4F80021 		ldr	r2, [r4, #256]
 3103 0118 28EE278A 		vmul.f32	s16, s16, s15
 3104 011c 1179     		ldrb	r1, [r2, #4]	@ zero_extendqisi2
 3105 011e FDEEC87A 		vcvt.s32.f32	s15, s16
 3106 0122 0129     		cmp	r1, #1
 3107 0124 17EE903A 		vmov	r3, s15	@ int
 3108 0128 52D0     		beq	.L718
 3109 012a 0121     		movs	r1, #1
 3110 012c 1171     		strb	r1, [r2, #4]
 3111              	.L697:
 3112 012e 002B     		cmp	r3, #0
 3113 0130 9179     		ldrb	r1, [r2, #6]	@ zero_extendqisi2
 3114 0132 47DB     		blt	.L698
 3115 0134 9360     		str	r3, [r2, #8]
 3116 0136 41F01003 		orr	r3, r1, #16
 3117 013a 9371     		strb	r3, [r2, #6]
 3118              	.L692:
 3119 013c 2468     		ldr	r4, [r4]
 3120 013e A642     		cmp	r6, r4
 3121 0140 7FF473AF 		bne	.L699
 3122              	.L675:
 3123 0144 B0EE680A 		vmov.f32	s0, s17
 3124 0148 BDEC048B 		vldm	sp!, {d8-d9}
 3125 014c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3126              	.L717:
 3127 014e 04F12000 		add	r0, r4, #32
 3128 0152 0022     		movs	r2, #0
 3129              	.L693:
 3130 0154 03EB8203 		add	r3, r3, r2, lsl #2
 3131 0158 D3ED777A 		vldr.32	s15, [r3, #476]
 3132 015c 0168     		ldr	r1, [r0]
 3133 015e 68EEA77A 		vmul.f32	s15, s17, s15
 3134 0162 B5EE408A 		vcmp.f32	s16, #0
 3135 0166 FDEEE77A 		vcvt.s32.f32	s15, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 56


 3136 016a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3137 016e 17EE907A 		vmov	r7, s15	@ int
 3138 0172 3944     		add	r1, r1, r7
 3139 0174 40F8041B 		str	r1, [r0], #4
 3140 0178 19D0     		beq	.L687
 3141 017a D0F8D410 		ldr	r1, [r0, #212]
 3142 017e B1B1     		cbz	r1, .L687
 3143 0180 D3ED777A 		vldr.32	s15, [r3, #476]
 3144 0184 8F79     		ldrb	r7, [r1, #6]	@ zero_extendqisi2
 3145 0186 8B68     		ldr	r3, [r1, #8]
 3146 0188 68EE277A 		vmul.f32	s15, s16, s15
 3147 018c 17F0100F 		tst	r7, #16
 3148 0190 FDEEE77A 		vcvt.s32.f32	s15, s15
 3149 0194 17EE907A 		vmov	r7, s15	@ int
 3150 0198 1ABF     		itte	ne
 3151 019a FF18     		addne	r7, r7, r3
 3152 019c 3B46     		movne	r3, r7
 3153 019e FB1A     		subeq	r3, r7, r3
 3154 01a0 002B     		cmp	r3, #0
 3155 01a2 8F79     		ldrb	r7, [r1, #6]	@ zero_extendqisi2
 3156 01a4 08DB     		blt	.L690
 3157 01a6 8B60     		str	r3, [r1, #8]
 3158 01a8 47F01003 		orr	r3, r7, #16
 3159 01ac 8B71     		strb	r3, [r1, #6]
 3160              	.L687:
 3161 01ae 0132     		adds	r2, r2, #1
 3162 01b0 032A     		cmp	r2, #3
 3163 01b2 C3D0     		beq	.L692
 3164 01b4 6B68     		ldr	r3, [r5, #4]
 3165 01b6 CDE7     		b	.L693
 3166              	.L690:
 3167 01b8 5B42     		negs	r3, r3
 3168 01ba 6FF30417 		bfc	r7, #4, #1
 3169 01be 8B60     		str	r3, [r1, #8]
 3170 01c0 8F71     		strb	r7, [r1, #6]
 3171 01c2 F4E7     		b	.L687
 3172              	.L698:
 3173 01c4 5B42     		negs	r3, r3
 3174 01c6 6FF30411 		bfc	r1, #4, #1
 3175 01ca 9360     		str	r3, [r2, #8]
 3176 01cc 9171     		strb	r1, [r2, #6]
 3177 01ce B5E7     		b	.L692
 3178              	.L718:
 3179 01d0 9079     		ldrb	r0, [r2, #6]	@ zero_extendqisi2
 3180 01d2 9168     		ldr	r1, [r2, #8]
 3181 01d4 C006     		lsls	r0, r0, #27
 3182 01d6 4CBF     		ite	mi
 3183 01d8 5B18     		addmi	r3, r3, r1
 3184 01da 5B1A     		subpl	r3, r3, r1
 3185 01dc A7E7     		b	.L697
 3186              	.L716:
 3187 01de F4EE677A 		vcmp.f32	s15, s15
 3188 01e2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3189 01e6 FFF556AF 		bvc	.L684
 3190 01ea B0EE678A 		vmov.f32	s16, s15
 3191 01ee 59E7     		b	.L683
 3192              	.L714:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 57


 3193 01f0 0220     		movs	r0, #2
 3194 01f2 FFF7FEFF 		bl	_ZN13DriveMovement8AllocateEj7DMState
 3195 01f6 C4F80001 		str	r0, [r4, #256]
 3196 01fa 0028     		cmp	r0, #0
 3197 01fc 7FF425AF 		bne	.L682
 3198 0200 A17A     		ldrb	r1, [r4, #10]	@ zero_extendqisi2
 3199 0202 9FED048A 		vldr.32	s16, .L719
 3200 0206 01F00201 		and	r1, r1, #2
 3201 020a 69E7     		b	.L678
 3202              	.L715:
 3203 020c B0EE498A 		vmov.f32	s16, s18
 3204 0210 48E7     		b	.L683
 3205              	.L720:
 3206 0212 00BF     		.align	2
 3207              	.L719:
 3208 0214 00000000 		.word	0
 3209 0218 00000000 		.word	reprap
 3210 021c CDCCCC3D 		.word	1036831949
 3211              		.size	_ZN3DDA19AdvanceBabySteppingEf, .-_ZN3DDA19AdvanceBabySteppingEf
 3212              		.section	.text._ZN3DDA9MagnitudeEPKfj,"ax",%progbits
 3213              		.align	1
 3214              		.p2align 2,,3
 3215              		.global	_ZN3DDA9MagnitudeEPKfj
 3216              		.syntax unified
 3217              		.thumb
 3218              		.thumb_func
 3219              		.fpu fpv4-sp-d16
 3220              		.type	_ZN3DDA9MagnitudeEPKfj, %function
 3221              	_ZN3DDA9MagnitudeEPKfj:
 3222              		@ args = 0, pretend = 0, frame = 0
 3223              		@ frame_needed = 0, uses_anonymous_args = 0
 3224 0000 08B5     		push	{r3, lr}
 3225 0002 2DED028B 		vpush.64	{d8}
 3226 0006 A9B1     		cbz	r1, .L724
 3227 0008 9FED0F0A 		vldr.32	s0, .L728
 3228 000c 00EB8101 		add	r1, r0, r1, lsl #2
 3229              	.L723:
 3230 0010 F0EC017A 		vldmia.32	r0!, {s15}
 3231 0014 8842     		cmp	r0, r1
 3232 0016 A7EEA70A 		vfma.f32	s0, s15, s15
 3233 001a F9D1     		bne	.L723
 3234 001c B5EE400A 		vcmp.f32	s0, #0
 3235 0020 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3236 0024 B1EEC08A 		vsqrt.f32	s16, s0
 3237 0028 0BD4     		bmi	.L727
 3238              	.L721:
 3239 002a B0EE480A 		vmov.f32	s0, s16
 3240 002e BDEC028B 		vldm	sp!, {d8}
 3241 0032 08BD     		pop	{r3, pc}
 3242              	.L724:
 3243 0034 9FED048A 		vldr.32	s16, .L728
 3244 0038 B0EE480A 		vmov.f32	s0, s16
 3245 003c BDEC028B 		vldm	sp!, {d8}
 3246 0040 08BD     		pop	{r3, pc}
 3247              	.L727:
 3248 0042 FFF7FEFF 		bl	sqrtf
 3249 0046 F0E7     		b	.L721
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 58


 3250              	.L729:
 3251              		.align	2
 3252              	.L728:
 3253 0048 00000000 		.word	0
 3254              		.size	_ZN3DDA9MagnitudeEPKfj, .-_ZN3DDA9MagnitudeEPKfj
 3255              		.section	.text._ZN3DDA5ScaleEPffj,"ax",%progbits
 3256              		.align	1
 3257              		.p2align 2,,3
 3258              		.global	_ZN3DDA5ScaleEPffj
 3259              		.syntax unified
 3260              		.thumb
 3261              		.thumb_func
 3262              		.fpu fpv4-sp-d16
 3263              		.type	_ZN3DDA5ScaleEPffj, %function
 3264              	_ZN3DDA5ScaleEPffj:
 3265              		@ args = 0, pretend = 0, frame = 0
 3266              		@ frame_needed = 0, uses_anonymous_args = 0
 3267              		@ link register save eliminated.
 3268 0000 49B1     		cbz	r1, .L730
 3269 0002 00EB8101 		add	r1, r0, r1, lsl #2
 3270              	.L732:
 3271 0006 D0ED007A 		vldr.32	s15, [r0]
 3272 000a 67EE807A 		vmul.f32	s15, s15, s0
 3273 000e E0EC017A 		vstmia.32	r0!, {s15}
 3274 0012 8842     		cmp	r0, r1
 3275 0014 F7D1     		bne	.L732
 3276              	.L730:
 3277 0016 7047     		bx	lr
 3278              		.size	_ZN3DDA5ScaleEPffj, .-_ZN3DDA5ScaleEPffj
 3279              		.section	.text._ZN3DDA8AbsoluteEPfj,"ax",%progbits
 3280              		.align	1
 3281              		.p2align 2,,3
 3282              		.global	_ZN3DDA8AbsoluteEPfj
 3283              		.syntax unified
 3284              		.thumb
 3285              		.thumb_func
 3286              		.fpu fpv4-sp-d16
 3287              		.type	_ZN3DDA8AbsoluteEPfj, %function
 3288              	_ZN3DDA8AbsoluteEPfj:
 3289              		@ args = 0, pretend = 0, frame = 0
 3290              		@ frame_needed = 0, uses_anonymous_args = 0
 3291              		@ link register save eliminated.
 3292 0000 49B1     		cbz	r1, .L737
 3293 0002 00EB8101 		add	r1, r0, r1, lsl #2
 3294              	.L739:
 3295 0006 D0ED007A 		vldr.32	s15, [r0]
 3296 000a F0EEE77A 		vabs.f32	s15, s15
 3297 000e E0EC017A 		vstmia.32	r0!, {s15}
 3298 0012 8842     		cmp	r0, r1
 3299 0014 F7D1     		bne	.L739
 3300              	.L737:
 3301 0016 7047     		bx	lr
 3302              		.size	_ZN3DDA8AbsoluteEPfj, .-_ZN3DDA8AbsoluteEPfj
 3303              		.section	.text.hot._ZN3DDA5StartEm,"ax",%progbits
 3304              		.align	1
 3305              		.p2align 2,,3
 3306              		.global	_ZN3DDA5StartEm
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 59


 3307              		.syntax unified
 3308              		.thumb
 3309              		.thumb_func
 3310              		.fpu fpv4-sp-d16
 3311              		.type	_ZN3DDA5StartEm, %function
 3312              	_ZN3DDA5StartEm:
 3313              		@ args = 0, pretend = 0, frame = 16
 3314              		@ frame_needed = 0, uses_anonymous_args = 0
 3315 0000 D0F8E030 		ldr	r3, [r0, #224]
 3316 0004 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3317 0008 CB1A     		subs	r3, r1, r3
 3318 000a 192B     		cmp	r3, #25
 3319 000c DFF87CA1 		ldr	r10, .L784
 3320 0010 C8BF     		it	gt
 3321 0012 C0F8E010 		strgt	r1, [r0, #224]
 3322 0016 0323     		movs	r3, #3
 3323 0018 0372     		strb	r3, [r0, #8]
 3324 001a DAF81430 		ldr	r3, [r10, #20]
 3325 001e 93F8B430 		ldrb	r3, [r3, #180]	@ zero_extendqisi2
 3326 0022 012B     		cmp	r3, #1
 3327 0024 85B0     		sub	sp, sp, #20
 3328 0026 8046     		mov	r8, r0
 3329 0028 00F09780 		beq	.L777
 3330 002c D8F8F430 		ldr	r3, [r8, #244]
 3331 0030 002B     		cmp	r3, #0
 3332 0032 00F09C80 		beq	.L747
 3333              	.L783:
 3334 0036 DAF81430 		ldr	r3, [r10, #20]
 3335 003a CDF80880 		str	r8, [sp, #8]
 3336 003e 0024     		movs	r4, #0
 3337 0040 08F1F407 		add	r7, r8, #244
 3338 0044 0397     		str	r7, [sp, #12]
 3339 0046 D3F85C93 		ldr	r9, [r3, #860]
 3340 004a 0194     		str	r4, [sp, #4]
 3341 004c A346     		mov	fp, r4
 3342 004e 02E0     		b	.L750
 3343              	.L748:
 3344 0050 0134     		adds	r4, r4, #1
 3345 0052 0C2C     		cmp	r4, #12
 3346 0054 23D0     		beq	.L778
 3347              	.L750:
 3348 0056 57F8045F 		ldr	r5, [r7, #4]!
 3349 005a 002D     		cmp	r5, #0
 3350 005c F8D0     		beq	.L748
 3351 005e 2E79     		ldrb	r6, [r5, #4]	@ zero_extendqisi2
 3352 0060 012E     		cmp	r6, #1
 3353 0062 F5D1     		bne	.L748
 3354 0064 95F80580 		ldrb	r8, [r5, #5]	@ zero_extendqisi2
 3355 0068 AA79     		ldrb	r2, [r5, #6]	@ zero_extendqisi2
 3356 006a DAF80400 		ldr	r0, [r10, #4]
 3357 006e C2F30012 		ubfx	r2, r2, #4, #1
 3358 0072 4146     		mov	r1, r8
 3359 0074 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 3360 0078 A4EB0902 		sub	r2, r4, r9
 3361 007c C145     		cmp	r9, r8
 3362 007e 06FA02F6 		lsl	r6, r6, r2
 3363 0082 E5D8     		bhi	.L748
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 60


 3364 0084 AB79     		ldrb	r3, [r5, #6]	@ zero_extendqisi2
 3365 0086 DB06     		lsls	r3, r3, #27
 3366 0088 58BF     		it	pl
 3367 008a 019B     		ldrpl	r3, [sp, #4]
 3368 008c 04F10104 		add	r4, r4, #1
 3369 0090 56BF     		itet	pl
 3370 0092 3343     		orrpl	r3, r3, r6
 3371 0094 4BEA060B 		orrmi	fp, fp, r6
 3372 0098 0193     		strpl	r3, [sp, #4]
 3373 009a 0C2C     		cmp	r4, #12
 3374 009c DBD1     		bne	.L750
 3375              	.L778:
 3376 009e 5B46     		mov	r3, fp
 3377 00a0 DDF80880 		ldr	r8, [sp, #8]
 3378 00a4 13B9     		cbnz	r3, .L751
 3379 00a6 019A     		ldr	r2, [sp, #4]
 3380 00a8 002A     		cmp	r2, #0
 3381 00aa 38D0     		beq	.L752
 3382              	.L751:
 3383 00ac 1946     		mov	r1, r3
 3384 00ae 019A     		ldr	r2, [sp, #4]
 3385 00b0 3648     		ldr	r0, .L784
 3386 00b2 FFF7FEFF 		bl	_ZN6RepRap30GetProhibitedExtruderMovementsEjj
 3387 00b6 D8F8F430 		ldr	r3, [r8, #244]
 3388 00ba 039C     		ldr	r4, [sp, #12]
 3389 00bc 0027     		movs	r7, #0
 3390 00be 0126     		movs	r6, #1
 3391 00c0 7BB1     		cbz	r3, .L754
 3392              	.L779:
 3393 00c2 5A79     		ldrb	r2, [r3, #5]	@ zero_extendqisi2
 3394 00c4 1968     		ldr	r1, [r3]
 3395 00c6 9145     		cmp	r9, r2
 3396 00c8 26D8     		bhi	.L755
 3397 00ca A2EB0905 		sub	r5, r2, r9
 3398 00ce 0B2A     		cmp	r2, #11
 3399 00d0 06FA05F5 		lsl	r5, r6, r5
 3400 00d4 20D8     		bhi	.L755
 3401 00d6 0542     		tst	r5, r0
 3402 00d8 1DD0     		beq	.L763
 3403 00da 2160     		str	r1, [r4]
 3404 00dc 0B46     		mov	r3, r1
 3405              	.L782:
 3406 00de 002B     		cmp	r3, #0
 3407 00e0 EFD1     		bne	.L779
 3408              	.L754:
 3409 00e2 DAF80400 		ldr	r0, [r10, #4]
 3410 00e6 00F6B443 		addw	r3, r0, #3252
 3411 00ea 93ED000A 		vldr.32	s0, [r3]
 3412 00ee E7B1     		cbz	r7, .L757
 3413 00f0 B5EEC00A 		vcmpe.f32	s0, #0
 3414 00f4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3415 00f8 3CDC     		bgt	.L780
 3416              	.L759:
 3417 00fa D8F8F430 		ldr	r3, [r8, #244]
 3418 00fe D8F8E000 		ldr	r0, [r8, #224]
 3419 0102 1BBB     		cbnz	r3, .L781
 3420              	.L762:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 61


 3421 0104 D8F8DC30 		ldr	r3, [r8, #220]
 3422 0108 5D3B     		subs	r3, r3, #93
 3423 010a 1844     		add	r0, r0, r3
 3424 010c 05B0     		add	sp, sp, #20
 3425              		@ sp needed
 3426 010e BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3427 0112 FFF7FEBF 		b	_ZN9StepTimer21ScheduleStepInterruptEm
 3428              	.L763:
 3429 0116 0127     		movs	r7, #1
 3430              	.L755:
 3431 0118 1C46     		mov	r4, r3
 3432 011a 0B46     		mov	r3, r1
 3433 011c DFE7     		b	.L782
 3434              	.L752:
 3435 011e DAF80400 		ldr	r0, [r10, #4]
 3436 0122 00F6B443 		addw	r3, r0, #3252
 3437 0126 93ED000A 		vldr.32	s0, [r3]
 3438              	.L757:
 3439 012a B5EEC00A 		vcmpe.f32	s0, #0
 3440 012e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3441 0132 E2DD     		ble	.L759
 3442 0134 00F6B840 		addw	r0, r0, #3256
 3443 0138 9FED150A 		vldr.32	s0, .L784+4
 3444 013c FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 3445 0140 D8F8F430 		ldr	r3, [r8, #244]
 3446 0144 D8F8E000 		ldr	r0, [r8, #224]
 3447 0148 002B     		cmp	r3, #0
 3448 014a DBD0     		beq	.L762
 3449              	.L781:
 3450 014c 5B69     		ldr	r3, [r3, #20]
 3451 014e 1844     		add	r0, r0, r3
 3452 0150 05B0     		add	sp, sp, #20
 3453              		@ sp needed
 3454 0152 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3455 0156 FFF7FEBF 		b	_ZN9StepTimer21ScheduleStepInterruptEm
 3456              	.L777:
 3457 015a 8189     		ldrh	r1, [r0, #12]
 3458 015c DAF80400 		ldr	r0, [r10, #4]
 3459 0160 FFF7FEFF 		bl	_ZN8Platform11SetLaserPwmEt
 3460 0164 D8F8F430 		ldr	r3, [r8, #244]
 3461 0168 002B     		cmp	r3, #0
 3462 016a 7FF464AF 		bne	.L783
 3463              	.L747:
 3464 016e D8F8E000 		ldr	r0, [r8, #224]
 3465 0172 C7E7     		b	.L762
 3466              	.L780:
 3467 0174 00F6B840 		addw	r0, r0, #3256
 3468 0178 FFF7FEFF 		bl	_ZNK7PwmPort11WriteAnalogEf
 3469 017c D8F8F430 		ldr	r3, [r8, #244]
 3470 0180 D8F8E000 		ldr	r0, [r8, #224]
 3471 0184 002B     		cmp	r3, #0
 3472 0186 BDD0     		beq	.L762
 3473 0188 E0E7     		b	.L781
 3474              	.L785:
 3475 018a 00BF     		.align	2
 3476              	.L784:
 3477 018c 00000000 		.word	reprap
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 62


 3478 0190 00000000 		.word	0
 3479              		.size	_ZN3DDA5StartEm, .-_ZN3DDA5StartEm
 3480              		.section	.text._ZN3DDA9StopDriveEj,"ax",%progbits
 3481              		.align	1
 3482              		.p2align 2,,3
 3483              		.global	_ZN3DDA9StopDriveEj
 3484              		.syntax unified
 3485              		.thumb
 3486              		.thumb_func
 3487              		.fpu fpv4-sp-d16
 3488              		.type	_ZN3DDA9StopDriveEj, %function
 3489              	_ZN3DDA9StopDriveEj:
 3490              		@ args = 0, pretend = 0, frame = 0
 3491              		@ frame_needed = 0, uses_anonymous_args = 0
 3492              		@ link register save eliminated.
 3493 0000 00EB8102 		add	r2, r0, r1, lsl #2
 3494 0004 D2F8F830 		ldr	r3, [r2, #248]
 3495 0008 E3B1     		cbz	r3, .L818
 3496 000a 70B4     		push	{r4, r5, r6}
 3497 000c 1C79     		ldrb	r4, [r3, #4]	@ zero_extendqisi2
 3498 000e 012C     		cmp	r4, #1
 3499 0010 01D0     		beq	.L823
 3500              	.L786:
 3501 0012 70BC     		pop	{r4, r5, r6}
 3502 0014 7047     		bx	lr
 3503              	.L823:
 3504 0016 0025     		movs	r5, #0
 3505 0018 1E4C     		ldr	r4, .L826
 3506 001a 1D71     		strb	r5, [r3, #4]
 3507 001c 6469     		ldr	r4, [r4, #20]
 3508 001e D4F85C43 		ldr	r4, [r4, #860]
 3509 0022 A142     		cmp	r1, r4
 3510 0024 0FD3     		bcc	.L824
 3511              	.L790:
 3512 0026 D0F8F420 		ldr	r2, [r0, #244]
 3513 002a 52B3     		cbz	r2, .L795
 3514 002c 5379     		ldrb	r3, [r2, #5]	@ zero_extendqisi2
 3515 002e 9942     		cmp	r1, r3
 3516 0030 04D1     		bne	.L797
 3517 0032 1DE0     		b	.L825
 3518              	.L816:
 3519 0034 5C79     		ldrb	r4, [r3, #5]	@ zero_extendqisi2
 3520 0036 A142     		cmp	r1, r4
 3521 0038 1DD0     		beq	.L798
 3522 003a 1A46     		mov	r2, r3
 3523              	.L797:
 3524 003c 1368     		ldr	r3, [r2]
 3525 003e 002B     		cmp	r3, #0
 3526 0040 F8D1     		bne	.L816
 3527 0042 E6E7     		b	.L786
 3528              	.L818:
 3529 0044 7047     		bx	lr
 3530              	.L824:
 3531 0046 03F10804 		add	r4, r3, #8
 3532 004a 70CC     		ldm	r4, {r4, r5, r6}
 3533 004c A642     		cmp	r6, r4
 3534 004e 1ED8     		bhi	.L822
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 63


 3535 0050 AE42     		cmp	r6, r5
 3536 0052 19D8     		bhi	.L793
 3537              	.L821:
 3538 0054 641B     		subs	r4, r4, r5
 3539 0056 0134     		adds	r4, r4, #1
 3540              	.L792:
 3541 0058 9B79     		ldrb	r3, [r3, #6]	@ zero_extendqisi2
 3542 005a DB06     		lsls	r3, r3, #27
 3543 005c 136A     		ldr	r3, [r2, #32]
 3544 005e 58BF     		it	pl
 3545 0060 6442     		rsbpl	r4, r4, #0
 3546 0062 1C1B     		subs	r4, r3, r4
 3547 0064 1462     		str	r4, [r2, #32]
 3548 0066 837A     		ldrb	r3, [r0, #10]	@ zero_extendqisi2
 3549 0068 6FF30003 		bfc	r3, #0, #1
 3550 006c 8372     		strb	r3, [r0, #10]
 3551 006e DAE7     		b	.L790
 3552              	.L825:
 3553 0070 1346     		mov	r3, r2
 3554 0072 00F1F402 		add	r2, r0, #244
 3555              	.L798:
 3556 0076 1B68     		ldr	r3, [r3]
 3557 0078 1360     		str	r3, [r2]
 3558 007a D0F8F430 		ldr	r3, [r0, #244]
 3559 007e 002B     		cmp	r3, #0
 3560 0080 C7D1     		bne	.L786
 3561              	.L795:
 3562 0082 0423     		movs	r3, #4
 3563 0084 0372     		strb	r3, [r0, #8]
 3564 0086 C4E7     		b	.L786
 3565              	.L793:
 3566 0088 C4EB4604 		rsb	r4, r4, r6, lsl #1
 3567 008c 023C     		subs	r4, r4, #2
 3568              	.L822:
 3569 008e 002D     		cmp	r5, #0
 3570 0090 E2D0     		beq	.L792
 3571 0092 DFE7     		b	.L821
 3572              	.L827:
 3573              		.align	2
 3574              	.L826:
 3575 0094 00000000 		.word	reprap
 3576              		.size	_ZN3DDA9StopDriveEj, .-_ZN3DDA9StopDriveEj
 3577              		.section	.text._ZN3DDA13CheckEndstopsER8Platform,"ax",%progbits
 3578              		.align	1
 3579              		.p2align 2,,3
 3580              		.global	_ZN3DDA13CheckEndstopsER8Platform
 3581              		.syntax unified
 3582              		.thumb
 3583              		.thumb_func
 3584              		.fpu fpv4-sp-d16
 3585              		.type	_ZN3DDA13CheckEndstopsER8Platform, %function
 3586              	_ZN3DDA13CheckEndstopsER8Platform:
 3587              		@ args = 0, pretend = 0, frame = 8
 3588              		@ frame_needed = 0, uses_anonymous_args = 0
 3589 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3590 0004 0369     		ldr	r3, [r0, #16]
 3591 0006 002B     		cmp	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 64


 3592 0008 85B0     		sub	sp, sp, #20
 3593 000a 0546     		mov	r5, r0
 3594 000c 0E46     		mov	r6, r1
 3595 000e C0F28580 		blt	.L869
 3596              	.L829:
 3597 0012 DFF88481 		ldr	r8, .L879
 3598 0016 D8F81420 		ldr	r2, [r8, #20]
 3599 001a 0024     		movs	r4, #0
 3600 001c D2F85C73 		ldr	r7, [r2, #860]
 3601 0020 4FF0010A 		mov	r10, #1
 3602 0024 0BE0     		b	.L850
 3603              	.L872:
 3604 0026 BBF1030F 		cmp	fp, #3
 3605 002a 04D1     		bne	.L838
 3606 002c 2A69     		ldr	r2, [r5, #16]
 3607 002e 0AFA04F3 		lsl	r3, r10, r4
 3608 0032 9A42     		cmp	r2, r3
 3609 0034 6AD0     		beq	.L870
 3610              	.L838:
 3611 0036 0134     		adds	r4, r4, #1
 3612 0038 0C2C     		cmp	r4, #12
 3613 003a 1ED0     		beq	.L828
 3614              	.L874:
 3615 003c 2B69     		ldr	r3, [r5, #16]
 3616              	.L850:
 3617 003e 23FA04F2 		lsr	r2, r3, r4
 3618 0042 D207     		lsls	r2, r2, #31
 3619 0044 F7D5     		bpl	.L838
 3620 0046 DB00     		lsls	r3, r3, #3
 3621 0048 2146     		mov	r1, r4
 3622 004a 3046     		mov	r0, r6
 3623 004c 01D5     		bpl	.L839
 3624 004e A742     		cmp	r7, r4
 3625 0050 16D9     		bls	.L871
 3626              	.L839:
 3627 0052 FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 3628 0056 B0F1000B 		subs	fp, r0, #0
 3629 005a ECDD     		ble	.L838
 3630 005c BBF1020F 		cmp	fp, #2
 3631 0060 E1DC     		bgt	.L872
 3632 0062 2B69     		ldr	r3, [r5, #16]
 3633 0064 DA00     		lsls	r2, r3, #3
 3634 0066 14D5     		bpl	.L843
 3635              	.L875:
 3636 0068 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 3637 006a 032B     		cmp	r3, #3
 3638 006c 63D0     		beq	.L873
 3639              	.L844:
 3640 006e 0134     		adds	r4, r4, #1
 3641 0070 4FF00403 		mov	r3, #4
 3642 0074 0C2C     		cmp	r4, #12
 3643 0076 2B72     		strb	r3, [r5, #8]
 3644 0078 E0D1     		bne	.L874
 3645              	.L828:
 3646 007a 05B0     		add	sp, sp, #20
 3647              		@ sp needed
 3648 007c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 65


 3649              	.L871:
 3650 0080 FFF7FEFF 		bl	_ZNK8Platform17EndStopInputStateEj
 3651 0084 0028     		cmp	r0, #0
 3652 0086 D6D0     		beq	.L838
 3653 0088 2B69     		ldr	r3, [r5, #16]
 3654 008a DA00     		lsls	r2, r3, #3
 3655 008c 4FF0010B 		mov	fp, #1
 3656 0090 EAD4     		bmi	.L875
 3657              	.L843:
 3658 0092 0AFA04F2 		lsl	r2, r10, r4
 3659 0096 23EA0203 		bic	r3, r3, r2
 3660 009a 0392     		str	r2, [sp, #12]
 3661 009c D8F80C20 		ldr	r2, [r8, #12]
 3662 00a0 2B61     		str	r3, [r5, #16]
 3663 00a2 D2F8740A 		ldr	r0, [r2, #2676]
 3664 00a6 0290     		str	r0, [sp, #8]
 3665 00a8 0BB1     		cbz	r3, .L846
 3666 00aa A742     		cmp	r7, r4
 3667 00ac 23D8     		bhi	.L876
 3668              	.L846:
 3669 00ae 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 3670 00b0 032B     		cmp	r3, #3
 3671 00b2 4CD0     		beq	.L877
 3672              	.L848:
 3673 00b4 4FF00403 		mov	r3, #4
 3674 00b8 A742     		cmp	r7, r4
 3675 00ba 2B72     		strb	r3, [r5, #8]
 3676 00bc BBD9     		bls	.L838
 3677              	.L847:
 3678 00be 2B69     		ldr	r3, [r5, #16]
 3679 00c0 5B00     		lsls	r3, r3, #1
 3680 00c2 B8D5     		bpl	.L838
 3681 00c4 0298     		ldr	r0, [sp, #8]
 3682 00c6 D8F80430 		ldr	r3, [r8, #4]
 3683 00ca 0168     		ldr	r1, [r0]
 3684 00cc 0095     		str	r5, [sp]
 3685 00ce ABF10202 		sub	r2, fp, #2
 3686 00d2 B2FA82F2 		clz	r2, r2
 3687 00d6 5209     		lsrs	r2, r2, #5
 3688 00d8 D1F84CB0 		ldr	fp, [r1, #76]
 3689 00dc 03F5EE73 		add	r3, r3, #476
 3690 00e0 2146     		mov	r1, r4
 3691 00e2 D847     		blx	fp
 3692 00e4 D8F81420 		ldr	r2, [r8, #20]
 3693 00e8 0399     		ldr	r1, [sp, #12]
 3694 00ea D2F82C35 		ldr	r3, [r2, #1324]
 3695 00ee 0B43     		orrs	r3, r3, r1
 3696 00f0 C2F82C35 		str	r3, [r2, #1324]
 3697 00f4 9FE7     		b	.L838
 3698              	.L876:
 3699 00f6 0368     		ldr	r3, [r0]
 3700 00f8 2146     		mov	r1, r4
 3701 00fa 9B6C     		ldr	r3, [r3, #72]
 3702 00fc 9847     		blx	r3
 3703 00fe 0028     		cmp	r0, #0
 3704 0100 D5D1     		bne	.L846
 3705 0102 2146     		mov	r1, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 66


 3706 0104 2846     		mov	r0, r5
 3707 0106 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3708 010a D8E7     		b	.L847
 3709              	.L870:
 3710 010c 95F90A30 		ldrsb	r3, [r5, #10]
 3711 0110 002B     		cmp	r3, #0
 3712 0112 90DB     		blt	.L838
 3713 0114 2846     		mov	r0, r5
 3714 0116 FFF7FEFF 		bl	_ZN3DDA17ReduceHomingSpeedEv.part.11
 3715 011a 8CE7     		b	.L838
 3716              	.L869:
 3717 011c 0846     		mov	r0, r1
 3718 011e FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 3719 0122 0128     		cmp	r0, #1
 3720 0124 1FD0     		beq	.L831
 3721 0126 0328     		cmp	r0, #3
 3722 0128 03D1     		bne	.L868
 3723 012a 95F90A30 		ldrsb	r3, [r5, #10]
 3724 012e 002B     		cmp	r3, #0
 3725 0130 24DA     		bge	.L836
 3726              	.L868:
 3727 0132 2B69     		ldr	r3, [r5, #16]
 3728 0134 6DE7     		b	.L829
 3729              	.L873:
 3730 0136 4FF00009 		mov	r9, #0
 3731              	.L845:
 3732 013a 4946     		mov	r1, r9
 3733 013c 2846     		mov	r0, r5
 3734 013e 09F10109 		add	r9, r9, #1
 3735 0142 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3736 0146 B9F10C0F 		cmp	r9, #12
 3737 014a F6D1     		bne	.L845
 3738 014c 8FE7     		b	.L844
 3739              	.L877:
 3740 014e 4FF00009 		mov	r9, #0
 3741              	.L849:
 3742 0152 4946     		mov	r1, r9
 3743 0154 2846     		mov	r0, r5
 3744 0156 09F10109 		add	r9, r9, #1
 3745 015a FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3746 015e B9F10C0F 		cmp	r9, #12
 3747 0162 F6D1     		bne	.L849
 3748 0164 A6E7     		b	.L848
 3749              	.L831:
 3750 0166 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 3751 0168 032B     		cmp	r3, #3
 3752 016a 0BD0     		beq	.L878
 3753              	.L833:
 3754 016c 0422     		movs	r2, #4
 3755 016e 0A4B     		ldr	r3, .L879
 3756 0170 2A72     		strb	r2, [r5, #8]
 3757 0172 5B69     		ldr	r3, [r3, #20]
 3758 0174 0122     		movs	r2, #1
 3759 0176 83F80426 		strb	r2, [r3, #1540]
 3760 017a 7EE7     		b	.L828
 3761              	.L836:
 3762 017c 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 67


 3763 017e FFF7FEFF 		bl	_ZN3DDA17ReduceHomingSpeedEv.part.11
 3764 0182 D6E7     		b	.L868
 3765              	.L878:
 3766 0184 0024     		movs	r4, #0
 3767              	.L834:
 3768 0186 2146     		mov	r1, r4
 3769 0188 2846     		mov	r0, r5
 3770 018a 0134     		adds	r4, r4, #1
 3771 018c FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3772 0190 0C2C     		cmp	r4, #12
 3773 0192 F8D1     		bne	.L834
 3774 0194 EAE7     		b	.L833
 3775              	.L880:
 3776 0196 00BF     		.align	2
 3777              	.L879:
 3778 0198 00000000 		.word	reprap
 3779              		.size	_ZN3DDA13CheckEndstopsER8Platform, .-_ZN3DDA13CheckEndstopsER8Platform
 3780              		.section	.text.hot._ZN3DDA4StepEv,"ax",%progbits
 3781              		.align	1
 3782              		.p2align 2,,3
 3783              		.global	_ZN3DDA4StepEv
 3784              		.syntax unified
 3785              		.thumb
 3786              		.thumb_func
 3787              		.fpu fpv4-sp-d16
 3788              		.type	_ZN3DDA4StepEv, %function
 3789              	_ZN3DDA4StepEv:
 3790              		@ args = 0, pretend = 0, frame = 8
 3791              		@ frame_needed = 0, uses_anonymous_args = 0
 3792 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3793 0004 9A4B     		ldr	r3, .L964
 3794 0006 9B4E     		ldr	r6, .L964+4
 3795 0008 D3F80490 		ldr	r9, [r3, #4]
 3796 000c 9A4B     		ldr	r3, .L964+8
 3797 000e D3F80080 		ldr	r8, [r3]
 3798 0012 83B0     		sub	sp, sp, #12
 3799 0014 0746     		mov	r7, r0
 3800 0016 0025     		movs	r5, #0
 3801              	.L915:
 3802 0018 3B69     		ldr	r3, [r7, #16]
 3803 001a 002B     		cmp	r3, #0
 3804 001c 40F0D580 		bne	.L882
 3805              	.L886:
 3806 0020 D6F89030 		ldr	r3, [r6, #144]
 3807 0024 D7F8E010 		ldr	r1, [r7, #224]
 3808 0028 D7F8F440 		ldr	r4, [r7, #244]
 3809 002c 9A1D     		adds	r2, r3, #6
 3810 002e 002D     		cmp	r5, #0
 3811 0030 08BF     		it	eq
 3812 0032 9B46     		moveq	fp, r3
 3813 0034 521A     		subs	r2, r2, r1
 3814 0036 002C     		cmp	r4, #0
 3815 0038 00F0EE80 		beq	.L955
 3816 003c 6369     		ldr	r3, [r4, #20]
 3817 003e 9A42     		cmp	r2, r3
 3818 0040 2546     		mov	r5, r4
 3819 0042 4FF00000 		mov	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 68


 3820 0046 03D2     		bcs	.L889
 3821 0048 10E0     		b	.L888
 3822              	.L891:
 3823 004a 6B69     		ldr	r3, [r5, #20]
 3824 004c 9342     		cmp	r3, r2
 3825 004e 08D8     		bhi	.L890
 3826              	.L889:
 3827 0050 6B79     		ldrb	r3, [r5, #5]	@ zero_extendqisi2
 3828 0052 2D68     		ldr	r5, [r5]
 3829 0054 09EB8303 		add	r3, r9, r3, lsl #2
 3830 0058 D3F8A433 		ldr	r3, [r3, #932]
 3831 005c 1843     		orrs	r0, r0, r3
 3832 005e 002D     		cmp	r5, #0
 3833 0060 F3D1     		bne	.L891
 3834              	.L890:
 3835 0062 D9F81434 		ldr	r3, [r9, #1044]
 3836 0066 1842     		tst	r0, r3
 3837 0068 40F08280 		bne	.L956
 3838              	.L888:
 3839 006c 834B     		ldr	r3, .L964+12
 3840 006e AC42     		cmp	r4, r5
 3841 0070 9863     		str	r0, [r3, #56]
 3842 0072 C7F8F450 		str	r5, [r7, #244]
 3843 0076 00F0A480 		beq	.L897
 3844              	.L963:
 3845 007a 07F1F403 		add	r3, r7, #244
 3846 007e 0193     		str	r3, [sp, #4]
 3847 0080 4FF0000A 		mov	r10, #0
 3848 0084 0AE0     		b	.L898
 3849              	.L959:
 3850 0086 6279     		ldrb	r2, [r4, #5]	@ zero_extendqisi2
 3851 0088 022A     		cmp	r2, #2
 3852 008a 0ED8     		bhi	.L901
 3853 008c 9942     		cmp	r1, r3
 3854 008e E360     		str	r3, [r4, #12]
 3855 0090 5BD2     		bcs	.L957
 3856              	.L907:
 3857 0092 84F804A0 		strb	r10, [r4, #4]
 3858 0096 2468     		ldr	r4, [r4]
 3859              	.L906:
 3860 0098 A542     		cmp	r5, r4
 3861 009a 2CD0     		beq	.L958
 3862              	.L898:
 3863 009c BA7A     		ldrb	r2, [r7, #10]	@ zero_extendqisi2
 3864 009e E368     		ldr	r3, [r4, #12]
 3865 00a0 A168     		ldr	r1, [r4, #8]
 3866 00a2 9207     		lsls	r2, r2, #30
 3867 00a4 03F10103 		add	r3, r3, #1
 3868 00a8 EDD4     		bmi	.L959
 3869              	.L901:
 3870 00aa 9942     		cmp	r1, r3
 3871 00ac E360     		str	r3, [r4, #12]
 3872 00ae F0D3     		bcc	.L907
 3873 00b0 E379     		ldrb	r3, [r4, #7]	@ zero_extendqisi2
 3874 00b2 002B     		cmp	r3, #0
 3875 00b4 56D0     		beq	.L908
 3876              	.L953:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 69


 3877 00b6 D4E90521 		ldrd	r2, r1, [r4, #20]
 3878 00ba 0A44     		add	r2, r2, r1
 3879 00bc 013B     		subs	r3, r3, #1
 3880 00be 6261     		str	r2, [r4, #20]
 3881 00c0 2268     		ldr	r2, [r4]
 3882 00c2 E371     		strb	r3, [r4, #7]
 3883              	.L904:
 3884 00c4 D7F8F430 		ldr	r3, [r7, #244]
 3885 00c8 0199     		ldr	r1, [sp, #4]
 3886 00ca 7BB1     		cbz	r3, .L909
 3887 00cc D4F814C0 		ldr	ip, [r4, #20]
 3888 00d0 5869     		ldr	r0, [r3, #20]
 3889 00d2 8445     		cmp	ip, r0
 3890 00d4 0AD9     		bls	.L909
 3891 00d6 9646     		mov	lr, r2
 3892 00d8 6046     		mov	r0, ip
 3893 00da 02E0     		b	.L910
 3894              	.L911:
 3895 00dc 5A69     		ldr	r2, [r3, #20]
 3896 00de 8242     		cmp	r2, r0
 3897 00e0 03D2     		bcs	.L951
 3898              	.L910:
 3899 00e2 1946     		mov	r1, r3
 3900 00e4 1B68     		ldr	r3, [r3]
 3901 00e6 002B     		cmp	r3, #0
 3902 00e8 F8D1     		bne	.L911
 3903              	.L951:
 3904 00ea 7246     		mov	r2, lr
 3905              	.L909:
 3906 00ec 2360     		str	r3, [r4]
 3907 00ee 0C60     		str	r4, [r1]
 3908 00f0 1446     		mov	r4, r2
 3909 00f2 A542     		cmp	r5, r4
 3910 00f4 D2D1     		bne	.L898
 3911              	.L958:
 3912 00f6 D7F8F450 		ldr	r5, [r7, #244]
 3913 00fa 604A     		ldr	r2, .L964+12
 3914 00fc 0023     		movs	r3, #0
 3915 00fe 9363     		str	r3, [r2, #56]
 3916 0100 002D     		cmp	r5, #0
 3917 0102 00F08E80 		beq	.L899
 3918              	.L900:
 3919 0106 D6F89030 		ldr	r3, [r6, #144]
 3920 010a 6869     		ldr	r0, [r5, #20]
 3921 010c D7F8E010 		ldr	r1, [r7, #224]
 3922 0110 A3EB0B03 		sub	r3, r3, fp
 3923 0114 9BB2     		uxth	r3, r3
 3924 0116 3B2B     		cmp	r3, #59
 3925 0118 0844     		add	r0, r0, r1
 3926 011a 04D9     		bls	.L912
 3927 011c A0EB0B02 		sub	r2, r0, fp
 3928 0120 9C1D     		adds	r4, r3, #6
 3929 0122 A242     		cmp	r2, r4
 3930 0124 5AD3     		bcc	.L960
 3931              	.L912:
 3932 0126 FFF7FEFF 		bl	_ZN9StepTimer21ScheduleStepInterruptEm
 3933 012a 0546     		mov	r5, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 70


 3934 012c 0028     		cmp	r0, #0
 3935 012e 7FF473AF 		bne	.L915
 3936              	.L885:
 3937 0132 3B7A     		ldrb	r3, [r7, #8]	@ zero_extendqisi2
 3938 0134 032B     		cmp	r3, #3
 3939 0136 00F08480 		beq	.L961
 3940              	.L917:
 3941 013a 3B7A     		ldrb	r3, [r7, #8]	@ zero_extendqisi2
 3942 013c 042B     		cmp	r3, #4
 3943 013e 00F08880 		beq	.L962
 3944              	.L936:
 3945 0142 0020     		movs	r0, #0
 3946 0144 03B0     		add	sp, sp, #12
 3947              		@ sp needed
 3948 0146 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3949              	.L957:
 3950 014a E379     		ldrb	r3, [r4, #7]	@ zero_extendqisi2
 3951 014c 002B     		cmp	r3, #0
 3952 014e B2D1     		bne	.L953
 3953 0150 0122     		movs	r2, #1
 3954 0152 3946     		mov	r1, r7
 3955 0154 2046     		mov	r0, r4
 3956 0156 FFF7FEFF 		bl	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb
 3957              	.L905:
 3958 015a 2268     		ldr	r2, [r4]
 3959 015c 0028     		cmp	r0, #0
 3960 015e B1D1     		bne	.L904
 3961 0160 1446     		mov	r4, r2
 3962 0162 99E7     		b	.L906
 3963              	.L908:
 3964 0164 0122     		movs	r2, #1
 3965 0166 3946     		mov	r1, r7
 3966 0168 2046     		mov	r0, r4
 3967 016a FFF7FEFF 		bl	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb
 3968 016e F4E7     		b	.L905
 3969              	.L956:
 3970 0170 434B     		ldr	r3, .L964+16
 3971 0172 D9F80CC4 		ldr	ip, [r9, #1036]
 3972 0176 D3F800E0 		ldr	lr, [r3]
 3973 017a D9F80814 		ldr	r1, [r9, #1032]
 3974              	.L894:
 3975 017e D6F89030 		ldr	r3, [r6, #144]
 3976 0182 A3EB0802 		sub	r2, r3, r8
 3977 0186 8A42     		cmp	r2, r1
 3978 0188 F9D3     		bcc	.L894
 3979 018a A3EB0E03 		sub	r3, r3, lr
 3980 018e 6345     		cmp	r3, ip
 3981 0190 F5D3     		bcc	.L894
 3982 0192 3A4B     		ldr	r3, .L964+12
 3983 0194 9863     		str	r0, [r3, #56]
 3984 0196 D6F89010 		ldr	r1, [r6, #144]
 3985 019a D9F80424 		ldr	r2, [r9, #1028]
 3986              	.L896:
 3987 019e D6F89030 		ldr	r3, [r6, #144]
 3988 01a2 5B1A     		subs	r3, r3, r1
 3989 01a4 9342     		cmp	r3, r2
 3990 01a6 FAD3     		bcc	.L896
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 71


 3991 01a8 344A     		ldr	r2, .L964+12
 3992 01aa 0023     		movs	r3, #0
 3993 01ac 9363     		str	r3, [r2, #56]
 3994 01ae 324B     		ldr	r3, .L964+8
 3995 01b0 D6F89080 		ldr	r8, [r6, #144]
 3996 01b4 C3F80080 		str	r8, [r3]
 3997 01b8 AC42     		cmp	r4, r5
 3998 01ba C7F8F450 		str	r5, [r7, #244]
 3999 01be 7FF45CAF 		bne	.L963
 4000              	.L897:
 4001 01c2 2E4A     		ldr	r2, .L964+12
 4002 01c4 0023     		movs	r3, #0
 4003 01c6 9363     		str	r3, [r2, #56]
 4004 01c8 9DE7     		b	.L900
 4005              	.L882:
 4006 01ca 4946     		mov	r1, r9
 4007 01cc 3846     		mov	r0, r7
 4008 01ce FFF7FEFF 		bl	_ZN3DDA13CheckEndstopsER8Platform
 4009 01d2 3B7A     		ldrb	r3, [r7, #8]	@ zero_extendqisi2
 4010 01d4 042B     		cmp	r3, #4
 4011 01d6 7FF423AF 		bne	.L886
 4012 01da AAE7     		b	.L885
 4013              	.L960:
 4014 01dc 3A68     		ldr	r2, [r7]
 4015 01de 0BF10604 		add	r4, fp, #6
 4016 01e2 157A     		ldrb	r5, [r2, #8]	@ zero_extendqisi2
 4017 01e4 1C44     		add	r4, r4, r3
 4018 01e6 201A     		subs	r0, r4, r0
 4019 01e8 0144     		add	r1, r1, r0
 4020 01ea 022D     		cmp	r5, #2
 4021 01ec C7F8E010 		str	r1, [r7, #224]
 4022 01f0 08D1     		bne	.L913
 4023              	.L914:
 4024 01f2 D2F8E030 		ldr	r3, [r2, #224]
 4025 01f6 0344     		add	r3, r3, r0
 4026 01f8 C2F8E030 		str	r3, [r2, #224]
 4027 01fc 1268     		ldr	r2, [r2]
 4028 01fe 137A     		ldrb	r3, [r2, #8]	@ zero_extendqisi2
 4029 0200 022B     		cmp	r3, #2
 4030 0202 F6D0     		beq	.L914
 4031              	.L913:
 4032 0204 1F4A     		ldr	r2, .L964+20
 4033 0206 1368     		ldr	r3, [r2]
 4034 0208 0133     		adds	r3, r3, #1
 4035 020a 1360     		str	r3, [r2]
 4036 020c FB7A     		ldrb	r3, [r7, #11]	@ zero_extendqisi2
 4037 020e 43F00403 		orr	r3, r3, #4
 4038 0212 2046     		mov	r0, r4
 4039 0214 FB72     		strb	r3, [r7, #11]
 4040 0216 86E7     		b	.L912
 4041              	.L955:
 4042 0218 184B     		ldr	r3, .L964+12
 4043 021a 9C63     		str	r4, [r3, #56]
 4044 021c C7F8F440 		str	r4, [r7, #244]
 4045 0220 9C63     		str	r4, [r3, #56]
 4046              	.L899:
 4047 0222 3B7A     		ldrb	r3, [r7, #8]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 72


 4048 0224 032B     		cmp	r3, #3
 4049 0226 88D1     		bne	.L917
 4050              	.L920:
 4051 0228 D7E93723 		ldrd	r2, r3, [r7, #220]
 4052 022c 1344     		add	r3, r3, r2
 4053 022e A3F15D00 		sub	r0, r3, #93
 4054 0232 FFF7FEFF 		bl	_ZN9StepTimer21ScheduleStepInterruptEm
 4055 0236 0028     		cmp	r0, #0
 4056 0238 3FF47FAF 		beq	.L917
 4057 023c 0423     		movs	r3, #4
 4058 023e 3B72     		strb	r3, [r7, #8]
 4059 0240 7BE7     		b	.L917
 4060              	.L961:
 4061 0242 D7F8F430 		ldr	r3, [r7, #244]
 4062 0246 002B     		cmp	r3, #0
 4063 0248 EED0     		beq	.L920
 4064 024a 3B7A     		ldrb	r3, [r7, #8]	@ zero_extendqisi2
 4065 024c 042B     		cmp	r3, #4
 4066 024e 7FF478AF 		bne	.L936
 4067              	.L962:
 4068 0252 074B     		ldr	r3, .L964
 4069 0254 DD68     		ldr	r5, [r3, #12]
 4070 0256 D7E93734 		ldrd	r3, r4, [r7, #220]
 4071 025a 2846     		mov	r0, r5
 4072 025c 1C44     		add	r4, r4, r3
 4073 025e FFF7FEFF 		bl	_ZN4Move20CurrentMoveCompletedEv
 4074 0262 2146     		mov	r1, r4
 4075 0264 2846     		mov	r0, r5
 4076 0266 03B0     		add	sp, sp, #12
 4077              		@ sp needed
 4078 0268 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4079 026c FFF7FEBF 		b	_ZN4Move16TryStartNextMoveEm
 4080              	.L965:
 4081              		.align	2
 4082              	.L964:
 4083 0270 00000000 		.word	reprap
 4084 0274 00000940 		.word	1074331648
 4085 0278 00000000 		.word	.LANCHOR0
 4086 027c 00140E40 		.word	1074664448
 4087 0280 00000000 		.word	.LANCHOR1
 4088 0284 00000000 		.word	.LANCHOR2
 4089              		.size	_ZN3DDA4StepEv, .-_ZN3DDA4StepEv
 4090              		.section	.text._ZN3DDA11MoveAbortedEv,"ax",%progbits
 4091              		.align	1
 4092              		.p2align 2,,3
 4093              		.global	_ZN3DDA11MoveAbortedEv
 4094              		.syntax unified
 4095              		.thumb
 4096              		.thumb_func
 4097              		.fpu fpv4-sp-d16
 4098              		.type	_ZN3DDA11MoveAbortedEv, %function
 4099              	_ZN3DDA11MoveAbortedEv:
 4100              		@ args = 0, pretend = 0, frame = 0
 4101              		@ frame_needed = 0, uses_anonymous_args = 0
 4102 0000 38B5     		push	{r3, r4, r5, lr}
 4103 0002 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 4104 0004 032B     		cmp	r3, #3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 73


 4105 0006 0546     		mov	r5, r0
 4106 0008 02D0     		beq	.L971
 4107 000a 0423     		movs	r3, #4
 4108 000c 2B72     		strb	r3, [r5, #8]
 4109 000e 38BD     		pop	{r3, r4, r5, pc}
 4110              	.L971:
 4111 0010 0024     		movs	r4, #0
 4112              	.L968:
 4113 0012 2146     		mov	r1, r4
 4114 0014 2846     		mov	r0, r5
 4115 0016 0134     		adds	r4, r4, #1
 4116 0018 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 4117 001c 0C2C     		cmp	r4, #12
 4118 001e F8D1     		bne	.L968
 4119 0020 0423     		movs	r3, #4
 4120 0022 2B72     		strb	r3, [r5, #8]
 4121 0024 38BD     		pop	{r3, r4, r5, pc}
 4122              		.size	_ZN3DDA11MoveAbortedEv, .-_ZN3DDA11MoveAbortedEv
 4123 0026 00BF     		.section	.text._ZNK3DDA17GetProportionDoneEb,"ax",%progbits
 4124              		.align	1
 4125              		.p2align 2,,3
 4126              		.global	_ZNK3DDA17GetProportionDoneEb
 4127              		.syntax unified
 4128              		.thumb
 4129              		.thumb_func
 4130              		.fpu fpv4-sp-d16
 4131              		.type	_ZNK3DDA17GetProportionDoneEb, %function
 4132              	_ZNK3DDA17GetProportionDoneEb:
 4133              		@ args = 0, pretend = 0, frame = 0
 4134              		@ frame_needed = 0, uses_anonymous_args = 0
 4135 0000 C369     		ldr	r3, [r0, #28]
 4136 0002 5A1C     		adds	r2, r3, #1
 4137 0004 F0B5     		push	{r4, r5, r6, r7, lr}
 4138 0006 03D0     		beq	.L990
 4139 0008 4268     		ldr	r2, [r0, #4]
 4140 000a D469     		ldr	r4, [r2, #28]
 4141 000c A342     		cmp	r3, r4
 4142 000e 56D0     		beq	.L1012
 4143              	.L990:
 4144 0010 9FED3A0A 		vldr.32	s0, .L1015
 4145              	.L973:
 4146 0014 0029     		cmp	r1, #0
 4147 0016 51D0     		beq	.L972
 4148 0018 90ED367A 		vldr.32	s14, [r0, #216]
 4149 001c F7EE007A 		vmov.f32	s15, #1.0e+0
 4150 0020 77EEC77A 		vsub.f32	s15, s15, s14
 4151 0024 B4EEE70A 		vcmpe.f32	s0, s15
 4152 0028 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4153 002c 46D5     		bpl	.L972
 4154 002e 344B     		ldr	r3, .L1015+4
 4155 0030 5B69     		ldr	r3, [r3, #20]
 4156 0032 D3F85C23 		ldr	r2, [r3, #860]
 4157 0036 0B2A     		cmp	r2, #11
 4158 0038 40D8     		bhi	.L972
 4159 003a 3E32     		adds	r2, r2, #62
 4160 003c 0027     		movs	r7, #0
 4161 003e 00EB8202 		add	r2, r0, r2, lsl #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 74


 4162 0042 BC46     		mov	ip, r7
 4163 0044 00F59470 		add	r0, r0, #296
 4164              	.L987:
 4165 0048 52F8043B 		ldr	r3, [r2], #4
 4166 004c E3B1     		cbz	r3, .L976
 4167 004e D3E90346 		ldrd	r4, r6, [r3, #12]
 4168 0052 9968     		ldr	r1, [r3, #8]
 4169 0054 93F806E0 		ldrb	lr, [r3, #6]	@ zero_extendqisi2
 4170 0058 A642     		cmp	r6, r4
 4171 005a 0D46     		mov	r5, r1
 4172 005c 0EF01003 		and	r3, lr, #16
 4173 0060 34D8     		bhi	.L977
 4174 0062 8E42     		cmp	r6, r1
 4175 0064 32D8     		bhi	.L977
 4176 0066 A4EB460E 		sub	lr, r4, r6, lsl #1
 4177 006a 0EF1010E 		add	lr, lr, #1
 4178 006e 002B     		cmp	r3, #0
 4179 0070 42D1     		bne	.L1013
 4180              	.L980:
 4181 0072 CEF1000E 		rsb	lr, lr, #0
 4182 0076 8E42     		cmp	r6, r1
 4183 0078 F444     		add	ip, ip, lr
 4184 007a 2FD9     		bls	.L983
 4185              	.L1014:
 4186 007c 0CB1     		cbz	r4, .L984
 4187              	.L988:
 4188 007e 091B     		subs	r1, r1, r4
 4189 0080 4D1C     		adds	r5, r1, #1
 4190              	.L984:
 4191 0082 03B9     		cbnz	r3, .L986
 4192 0084 6D42     		negs	r5, r5
 4193              	.L986:
 4194 0086 2F44     		add	r7, r7, r5
 4195              	.L976:
 4196 0088 8242     		cmp	r2, r0
 4197 008a DDD1     		bne	.L987
 4198 008c 6744     		add	r7, r7, ip
 4199 008e 002F     		cmp	r7, #0
 4200 0090 14DD     		ble	.L972
 4201 0092 7B10     		asrs	r3, r7, #1
 4202 0094 77EEC06A 		vsub.f32	s13, s15, s0
 4203 0098 07EE103A 		vmov	s14, r3	@ int
 4204 009c 07EE90CA 		vmov	s15, ip	@ int
 4205 00a0 B8EEC76A 		vcvt.f32.s32	s12, s14
 4206 00a4 B8EEE77A 		vcvt.f32.s32	s14, s15
 4207 00a8 07EE907A 		vmov	s15, r7	@ int
 4208 00ac A6EE876A 		vfma.f32	s12, s13, s14
 4209 00b0 F8EEE77A 		vcvt.f32.s32	s15, s15
 4210 00b4 C6EE276A 		vdiv.f32	s13, s12, s15
 4211 00b8 30EE260A 		vadd.f32	s0, s0, s13
 4212              	.L972:
 4213 00bc F0BD     		pop	{r4, r5, r6, r7, pc}
 4214              	.L1012:
 4215 00be D2ED367A 		vldr.32	s15, [r2, #216]
 4216 00c2 B7EE000A 		vmov.f32	s0, #1.0e+0
 4217 00c6 30EE670A 		vsub.f32	s0, s0, s15
 4218 00ca A3E7     		b	.L973
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 75


 4219              	.L977:
 4220 00cc 84B1     		cbz	r4, .L991
 4221 00ce 04F1FF3E 		add	lr, r4, #-1
 4222 00d2 002B     		cmp	r3, #0
 4223 00d4 CDD0     		beq	.L980
 4224              	.L1011:
 4225 00d6 8E42     		cmp	r6, r1
 4226 00d8 F444     		add	ip, ip, lr
 4227 00da CFD8     		bhi	.L1014
 4228              	.L983:
 4229 00dc A642     		cmp	r6, r4
 4230 00de CED9     		bls	.L988
 4231 00e0 C1EB4601 		rsb	r1, r1, r6, lsl #1
 4232 00e4 8D1E     		subs	r5, r1, #2
 4233 00e6 002C     		cmp	r4, #0
 4234 00e8 CBD0     		beq	.L984
 4235 00ea 291B     		subs	r1, r5, r4
 4236 00ec 4D1C     		adds	r5, r1, #1
 4237 00ee C8E7     		b	.L984
 4238              	.L991:
 4239 00f0 A646     		mov	lr, r4
 4240 00f2 002B     		cmp	r3, #0
 4241 00f4 EFD1     		bne	.L1011
 4242 00f6 BCE7     		b	.L980
 4243              	.L1013:
 4244 00f8 F444     		add	ip, ip, lr
 4245 00fa C0E7     		b	.L988
 4246              	.L1016:
 4247              		.align	2
 4248              	.L1015:
 4249 00fc 00000000 		.word	0
 4250 0100 00000000 		.word	reprap
 4251              		.size	_ZNK3DDA17GetProportionDoneEb, .-_ZNK3DDA17GetProportionDoneEb
 4252              		.section	.text._ZN3DDA17ReduceHomingSpeedEv,"ax",%progbits
 4253              		.align	1
 4254              		.p2align 2,,3
 4255              		.global	_ZN3DDA17ReduceHomingSpeedEv
 4256              		.syntax unified
 4257              		.thumb
 4258              		.thumb_func
 4259              		.fpu fpv4-sp-d16
 4260              		.type	_ZN3DDA17ReduceHomingSpeedEv, %function
 4261              	_ZN3DDA17ReduceHomingSpeedEv:
 4262              		@ args = 0, pretend = 0, frame = 0
 4263              		@ frame_needed = 0, uses_anonymous_args = 0
 4264              		@ link register save eliminated.
 4265 0000 90F90A30 		ldrsb	r3, [r0, #10]
 4266 0004 002B     		cmp	r3, #0
 4267 0006 01DB     		blt	.L1017
 4268 0008 FFF7FEBF 		b	_ZN3DDA17ReduceHomingSpeedEv.part.11
 4269              	.L1017:
 4270 000c 7047     		bx	lr
 4271              		.size	_ZN3DDA17ReduceHomingSpeedEv, .-_ZN3DDA17ReduceHomingSpeedEv
 4272 000e 00BF     		.section	.text._ZNK3DDA12HasStepErrorEv,"ax",%progbits
 4273              		.align	1
 4274              		.p2align 2,,3
 4275              		.global	_ZNK3DDA12HasStepErrorEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 76


 4276              		.syntax unified
 4277              		.thumb
 4278              		.thumb_func
 4279              		.fpu fpv4-sp-d16
 4280              		.type	_ZNK3DDA12HasStepErrorEv, %function
 4281              	_ZNK3DDA12HasStepErrorEv:
 4282              		@ args = 0, pretend = 0, frame = 0
 4283              		@ frame_needed = 0, uses_anonymous_args = 0
 4284              		@ link register save eliminated.
 4285 0000 00F1F403 		add	r3, r0, #244
 4286 0004 00F59270 		add	r0, r0, #292
 4287              	.L1022:
 4288 0008 53F8042F 		ldr	r2, [r3, #4]!
 4289 000c 12B1     		cbz	r2, .L1020
 4290 000e 1279     		ldrb	r2, [r2, #4]	@ zero_extendqisi2
 4291 0010 022A     		cmp	r2, #2
 4292 0012 03D0     		beq	.L1023
 4293              	.L1020:
 4294 0014 8342     		cmp	r3, r0
 4295 0016 F7D1     		bne	.L1022
 4296 0018 0020     		movs	r0, #0
 4297 001a 7047     		bx	lr
 4298              	.L1023:
 4299 001c 0120     		movs	r0, #1
 4300 001e 7047     		bx	lr
 4301              		.size	_ZNK3DDA12HasStepErrorEv, .-_ZNK3DDA12HasStepErrorEv
 4302              		.section	.text._ZN3DDA4FreeEv,"ax",%progbits
 4303              		.align	1
 4304              		.p2align 2,,3
 4305              		.global	_ZN3DDA4FreeEv
 4306              		.syntax unified
 4307              		.thumb
 4308              		.thumb_func
 4309              		.fpu fpv4-sp-d16
 4310              		.type	_ZN3DDA4FreeEv, %function
 4311              	_ZN3DDA4FreeEv:
 4312              		@ args = 0, pretend = 0, frame = 0
 4313              		@ frame_needed = 0, uses_anonymous_args = 0
 4314              		@ link register save eliminated.
 4315 0000 DFF848C0 		ldr	ip, .L1041+4
 4316 0004 F0B4     		push	{r4, r5, r6, r7}
 4317 0006 DCF80010 		ldr	r1, [ip]
 4318 000a 0F4C     		ldr	r4, .L1041
 4319 000c 0646     		mov	r6, r0
 4320 000e 0020     		movs	r0, #0
 4321 0010 06F1F403 		add	r3, r6, #244
 4322 0014 06F59275 		add	r5, r6, #292
 4323 0018 0746     		mov	r7, r0
 4324              	.L1030:
 4325 001a 53F8042F 		ldr	r2, [r3, #4]!
 4326 001e 2AB1     		cbz	r2, .L1029
 4327 0020 2068     		ldr	r0, [r4]
 4328 0022 1060     		str	r0, [r2]
 4329 0024 0131     		adds	r1, r1, #1
 4330 0026 2260     		str	r2, [r4]
 4331 0028 0120     		movs	r0, #1
 4332 002a 1F60     		str	r7, [r3]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 77


 4333              	.L1029:
 4334 002c AB42     		cmp	r3, r5
 4335 002e F4D1     		bne	.L1030
 4336 0030 30B9     		cbnz	r0, .L1040
 4337              	.L1031:
 4338 0032 B07A     		ldrb	r0, [r6, #10]	@ zero_extendqisi2
 4339 0034 0023     		movs	r3, #0
 4340 0036 C0F34010 		ubfx	r0, r0, #5, #1
 4341 003a 3372     		strb	r3, [r6, #8]
 4342 003c F0BC     		pop	{r4, r5, r6, r7}
 4343 003e 7047     		bx	lr
 4344              	.L1040:
 4345 0040 CCF80010 		str	r1, [ip]
 4346 0044 F5E7     		b	.L1031
 4347              	.L1042:
 4348 0046 00BF     		.align	2
 4349              	.L1041:
 4350 0048 00000000 		.word	_ZN13DriveMovement8freeListE
 4351 004c 00000000 		.word	_ZN13DriveMovement7numFreeE
 4352              		.size	_ZN3DDA4FreeEv, .-_ZN3DDA4FreeEv
 4353              		.section	.text._ZNK3DDA13GetStepsTakenEj,"ax",%progbits
 4354              		.align	1
 4355              		.p2align 2,,3
 4356              		.global	_ZNK3DDA13GetStepsTakenEj
 4357              		.syntax unified
 4358              		.thumb
 4359              		.thumb_func
 4360              		.fpu fpv4-sp-d16
 4361              		.type	_ZNK3DDA13GetStepsTakenEj, %function
 4362              	_ZNK3DDA13GetStepsTakenEj:
 4363              		@ args = 0, pretend = 0, frame = 0
 4364              		@ frame_needed = 0, uses_anonymous_args = 0
 4365              		@ link register save eliminated.
 4366 0000 3E31     		adds	r1, r1, #62
 4367 0002 50F82130 		ldr	r3, [r0, r1, lsl #2]
 4368 0006 53B1     		cbz	r3, .L1048
 4369 0008 D3E90302 		ldrd	r0, r2, [r3, #12]
 4370 000c 9042     		cmp	r0, r2
 4371 000e 08D2     		bcs	.L1050
 4372              	.L1045:
 4373 0010 00B1     		cbz	r0, .L1047
 4374 0012 0138     		subs	r0, r0, #1
 4375              	.L1047:
 4376 0014 9B79     		ldrb	r3, [r3, #6]	@ zero_extendqisi2
 4377 0016 DB06     		lsls	r3, r3, #27
 4378 0018 02D4     		bmi	.L1043
 4379              	.L1051:
 4380 001a 4042     		negs	r0, r0
 4381 001c 7047     		bx	lr
 4382              	.L1048:
 4383 001e 1846     		mov	r0, r3
 4384              	.L1043:
 4385 0020 7047     		bx	lr
 4386              	.L1050:
 4387 0022 9968     		ldr	r1, [r3, #8]
 4388 0024 8A42     		cmp	r2, r1
 4389 0026 F3D8     		bhi	.L1045
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 78


 4390 0028 9B79     		ldrb	r3, [r3, #6]	@ zero_extendqisi2
 4391 002a A0EB4200 		sub	r0, r0, r2, lsl #1
 4392 002e DB06     		lsls	r3, r3, #27
 4393 0030 00F10100 		add	r0, r0, #1
 4394 0034 F4D4     		bmi	.L1043
 4395 0036 F0E7     		b	.L1051
 4396              		.size	_ZNK3DDA13GetStepsTakenEj, .-_ZNK3DDA13GetStepsTakenEj
 4397              		.section	.text._ZNK3DDA25IsNonPrintingExtruderMoveEj,"ax",%progbits
 4398              		.align	1
 4399              		.p2align 2,,3
 4400              		.global	_ZNK3DDA25IsNonPrintingExtruderMoveEj
 4401              		.syntax unified
 4402              		.thumb
 4403              		.thumb_func
 4404              		.fpu fpv4-sp-d16
 4405              		.type	_ZNK3DDA25IsNonPrintingExtruderMoveEj, %function
 4406              	_ZNK3DDA25IsNonPrintingExtruderMoveEj:
 4407              		@ args = 0, pretend = 0, frame = 0
 4408              		@ frame_needed = 0, uses_anonymous_args = 0
 4409              		@ link register save eliminated.
 4410 0000 837A     		ldrb	r3, [r0, #10]	@ zero_extendqisi2
 4411 0002 1B07     		lsls	r3, r3, #28
 4412 0004 06D4     		bmi	.L1054
 4413 0006 3E31     		adds	r1, r1, #62
 4414 0008 50F82100 		ldr	r0, [r0, r1, lsl #2]
 4415 000c 0030     		adds	r0, r0, #0
 4416 000e 18BF     		it	ne
 4417 0010 0120     		movne	r0, #1
 4418 0012 7047     		bx	lr
 4419              	.L1054:
 4420 0014 0020     		movs	r0, #0
 4421 0016 7047     		bx	lr
 4422              		.size	_ZNK3DDA25IsNonPrintingExtruderMoveEj, .-_ZNK3DDA25IsNonPrintingExtruderMoveEj
 4423              		.section	.text._ZN3DDA25LimitSpeedAndAccelerationEff,"ax",%progbits
 4424              		.align	1
 4425              		.p2align 2,,3
 4426              		.global	_ZN3DDA25LimitSpeedAndAccelerationEff
 4427              		.syntax unified
 4428              		.thumb
 4429              		.thumb_func
 4430              		.fpu fpv4-sp-d16
 4431              		.type	_ZN3DDA25LimitSpeedAndAccelerationEff, %function
 4432              	_ZN3DDA25LimitSpeedAndAccelerationEff:
 4433              		@ args = 0, pretend = 0, frame = 0
 4434              		@ frame_needed = 0, uses_anonymous_args = 0
 4435              		@ link register save eliminated.
 4436 0000 D0ED2F7A 		vldr.32	s15, [r0, #188]
 4437 0004 F4EEC07A 		vcmpe.f32	s15, s0
 4438 0008 D0ED2D7A 		vldr.32	s15, [r0, #180]
 4439 000c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4440 0010 F4EEE07A 		vcmpe.f32	s15, s1
 4441 0014 D0ED2E7A 		vldr.32	s15, [r0, #184]
 4442 0018 C8BF     		it	gt
 4443 001a 80ED2F0A 		vstrgt.32	s0, [r0, #188]
 4444 001e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4445 0022 F4EEE07A 		vcmpe.f32	s15, s1
 4446 0026 C8BF     		it	gt
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 79


 4447 0028 C0ED2D0A 		vstrgt.32	s1, [r0, #180]
 4448 002c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4449 0030 C8BF     		it	gt
 4450 0032 C0ED2E0A 		vstrgt.32	s1, [r0, #184]
 4451 0036 7047     		bx	lr
 4452              		.size	_ZN3DDA25LimitSpeedAndAccelerationEff, .-_ZN3DDA25LimitSpeedAndAccelerationEff
 4453              		.global	_ZN3DDA17lastDirChangeTimeE
 4454              		.global	_ZN3DDA15lastStepLowTimeE
 4455              		.global	_ZN3DDA10numHiccupsE
 4456              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 4457              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 4458              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 4459              	_ZL28cpu_irq_prev_interrupt_state:
 4460 0000 00       		.space	1
 4461              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 4462              		.align	2
 4463              		.type	_ZL32cpu_irq_critical_section_counter, %object
 4464              		.size	_ZL32cpu_irq_critical_section_counter, 4
 4465              	_ZL32cpu_irq_critical_section_counter:
 4466 0000 00000000 		.space	4
 4467              		.section	.bss._ZN3DDA10numHiccupsE,"aw",%nobits
 4468              		.align	2
 4469              		.set	.LANCHOR2,. + 0
 4470              		.type	_ZN3DDA10numHiccupsE, %object
 4471              		.size	_ZN3DDA10numHiccupsE, 4
 4472              	_ZN3DDA10numHiccupsE:
 4473 0000 00000000 		.space	4
 4474              		.section	.bss._ZN3DDA15lastStepLowTimeE,"aw",%nobits
 4475              		.align	2
 4476              		.set	.LANCHOR0,. + 0
 4477              		.type	_ZN3DDA15lastStepLowTimeE, %object
 4478              		.size	_ZN3DDA15lastStepLowTimeE, 4
 4479              	_ZN3DDA15lastStepLowTimeE:
 4480 0000 00000000 		.space	4
 4481              		.section	.bss._ZN3DDA17lastDirChangeTimeE,"aw",%nobits
 4482              		.align	2
 4483              		.set	.LANCHOR1,. + 0
 4484              		.type	_ZN3DDA17lastDirChangeTimeE, %object
 4485              		.size	_ZN3DDA17lastDirChangeTimeE, 4
 4486              	_ZN3DDA17lastDirChangeTimeE:
 4487 0000 00000000 		.space	4
 4488              		.section	.rodata._ZN3DDA11DoLookaheadEPS_.str1.4,"aMS",%progbits,1
 4489              		.align	2
 4490              	.LC11:
 4491 0000 52656375 		.ascii	"Recursion start %u\012\000"
 4491      7273696F 
 4491      6E207374 
 4491      61727420 
 4491      25750A00 
 4492              	.LC12:
 4493 0014 4444412E 		.ascii	"DDA.cpp(%d) tn=%f \000"
 4493      63707028 
 4493      25642920 
 4493      746E3D25 
 4493      662000
 4494              		.section	.rodata._ZN3DDA15RecalculateMoveEv.str1.4,"aMS",%progbits,1
 4495              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 80


 4496              	.LC9:
 4497 0000 4444412E 		.ascii	"DDA.cpp(%d) na=%f\000"
 4497      63707028 
 4497      25642920 
 4497      6E613D25 
 4497      6600
 4498 0012 0000     		.space	2
 4499              	.LC10:
 4500 0014 4444412E 		.ascii	"DDA.cpp(%d) nd=%f\000"
 4500      63707028 
 4500      25642920 
 4500      6E643D25 
 4500      6600
 4501              		.section	.rodata._ZN3DDA7PrepareEh.str1.4,"aMS",%progbits,1
 4502              		.align	2
 4503              	.LC13:
 4504 0000 4E657720 		.ascii	"New a=%.1f d=%.1f\012\000"
 4504      613D252E 
 4504      31662064 
 4504      3D252E31 
 4504      660A00
 4505              		.section	.rodata._ZNK3DDA10DebugPrintEv.str1.4,"aMS",%progbits,1
 4506              		.align	2
 4507              	.LC3:
 4508 0000 4444413A 		.ascii	"DDA:\000"
 4508      00
 4509 0005 000000   		.space	3
 4510              	.LC4:
 4511 0008 20737461 		.ascii	" start\000"
 4511      727400
 4512 000f 00       		.space	1
 4513              	.LC5:
 4514 0010 20656E64 		.ascii	" end\000"
 4514      00
 4515 0015 000000   		.space	3
 4516              	.LC6:
 4517 0018 20733D25 		.ascii	" s=%f\000"
 4517      6600
 4518 001e 0000     		.space	2
 4519              	.LC7:
 4520 0020 20766563 		.ascii	" vec\000"
 4520      00
 4521 0025 000000   		.space	3
 4522              	.LC8:
 4523 0028 0A613D25 		.ascii	"\012a=%f d=%f reqv=%f startv=%f topv=%f endv=%f sa="
 4523      6620643D 
 4523      25662072 
 4523      6571763D 
 4523      25662073 
 4524 0058 25662073 		.ascii	"%f sd=%f\012cks=%lu sstcda=%lu tstcddpdsc=%lu exac="
 4524      643D2566 
 4524      0A636B73 
 4524      3D256C75 
 4524      20737374 
 4525 0088 256C690A 		.ascii	"%li\012\000"
 4525      00
 4526              		.section	.rodata._ZNK3DDA16DebugPrintVectorEPKcPKfj.str1.4,"aMS",%progbits,1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cccwD9Kb.s 			page 81


 4527              		.align	2
 4528              	.LC0:
 4529 0000 25733D00 		.ascii	"%s=\000"
 4530              	.LC1:
 4531 0004 25632566 		.ascii	"%c%f\000"
 4531      00
 4532 0009 000000   		.space	3
 4533              	.LC2:
 4534 000c 5D00     		.ascii	"]\000"
 4535              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
