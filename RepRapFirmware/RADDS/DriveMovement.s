ARM GAS  /tmp/ccNZUkY9.s 			page 1


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
  11              		.file	"DriveMovement.cpp"
  12              		.section	.text._ZN13DriveMovement15InitialAllocateEj,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN13DriveMovement15InitialAllocateEj
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN13DriveMovement15InitialAllocateEj, %function
  21              	_ZN13DriveMovement15InitialAllocateEj:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 88B1     		cbz	r0, .L10
  25 0002 70B5     		push	{r4, r5, r6, lr}
  26 0004 0446     		mov	r4, r0
  27 0006 0A4E     		ldr	r6, .L11
  28 0008 0A4D     		ldr	r5, .L11+4
  29              	.L4:
  30 000a 5020     		movs	r0, #80
  31 000c FFF7FEFF 		bl	_Znwj
  32 0010 3368     		ldr	r3, [r6]
  33 0012 2A68     		ldr	r2, [r5]
  34 0014 0133     		adds	r3, r3, #1
  35 0016 013C     		subs	r4, r4, #1
  36 0018 0260     		str	r2, [r0]
  37 001a 2860     		str	r0, [r5]
  38 001c 3360     		str	r3, [r6]
  39 001e F4D1     		bne	.L4
  40 0020 054A     		ldr	r2, .L11+8
  41 0022 1360     		str	r3, [r2]
  42 0024 70BD     		pop	{r4, r5, r6, pc}
  43              	.L10:
  44 0026 024B     		ldr	r3, .L11
  45 0028 034A     		ldr	r2, .L11+8
  46 002a 1B68     		ldr	r3, [r3]
  47 002c 1360     		str	r3, [r2]
  48 002e 7047     		bx	lr
  49              	.L12:
  50              		.align	2
  51              	.L11:
  52 0030 00000000 		.word	.LANCHOR0
  53 0034 00000000 		.word	.LANCHOR1
  54 0038 00000000 		.word	.LANCHOR2
  55              		.size	_ZN13DriveMovement15InitialAllocateEj, .-_ZN13DriveMovement15InitialAllocateEj
  56              		.section	.text._ZN13DriveMovement8AllocateEj7DMState,"ax",%progbits
  57              		.align	1
ARM GAS  /tmp/ccNZUkY9.s 			page 2


  58              		.p2align 2,,3
  59              		.global	_ZN13DriveMovement8AllocateEj7DMState
  60              		.syntax unified
  61              		.thumb
  62              		.thumb_func
  63              		.fpu softvfp
  64              		.type	_ZN13DriveMovement8AllocateEj7DMState, %function
  65              	_ZN13DriveMovement8AllocateEj7DMState:
  66              		@ args = 0, pretend = 0, frame = 0
  67              		@ frame_needed = 0, uses_anonymous_args = 0
  68              		@ link register save eliminated.
  69 0000 F0B4     		push	{r4, r5, r6, r7}
  70 0002 0A4C     		ldr	r4, .L20
  71 0004 2368     		ldr	r3, [r4]
  72 0006 73B1     		cbz	r3, .L14
  73 0008 094D     		ldr	r5, .L20+4
  74 000a 0A4E     		ldr	r6, .L20+8
  75 000c 2A68     		ldr	r2, [r5]
  76 000e 1F68     		ldr	r7, [r3]
  77 0010 013A     		subs	r2, r2, #1
  78 0012 2A60     		str	r2, [r5]
  79 0014 3568     		ldr	r5, [r6]
  80 0016 2760     		str	r7, [r4]
  81 0018 AA42     		cmp	r2, r5
  82 001a B8BF     		it	lt
  83 001c 3260     		strlt	r2, [r6]
  84 001e 0022     		movs	r2, #0
  85 0020 5871     		strb	r0, [r3, #5]
  86 0022 1971     		strb	r1, [r3, #4]
  87 0024 1A60     		str	r2, [r3]
  88              	.L14:
  89 0026 1846     		mov	r0, r3
  90 0028 F0BC     		pop	{r4, r5, r6, r7}
  91 002a 7047     		bx	lr
  92              	.L21:
  93              		.align	2
  94              	.L20:
  95 002c 00000000 		.word	.LANCHOR1
  96 0030 00000000 		.word	.LANCHOR0
  97 0034 00000000 		.word	.LANCHOR2
  98              		.size	_ZN13DriveMovement8AllocateEj7DMState, .-_ZN13DriveMovement8AllocateEj7DMState
  99              		.section	.text._ZN13DriveMovementC2EPS_,"ax",%progbits
 100              		.align	1
 101              		.p2align 2,,3
 102              		.global	_ZN13DriveMovementC2EPS_
 103              		.syntax unified
 104              		.thumb
 105              		.thumb_func
 106              		.fpu softvfp
 107              		.type	_ZN13DriveMovementC2EPS_, %function
 108              	_ZN13DriveMovementC2EPS_:
 109              		@ args = 0, pretend = 0, frame = 0
 110              		@ frame_needed = 0, uses_anonymous_args = 0
 111              		@ link register save eliminated.
 112 0000 0160     		str	r1, [r0]
 113 0002 7047     		bx	lr
 114              		.size	_ZN13DriveMovementC2EPS_, .-_ZN13DriveMovementC2EPS_
ARM GAS  /tmp/ccNZUkY9.s 			page 3


 115              		.global	_ZN13DriveMovementC1EPS_
 116              		.thumb_set _ZN13DriveMovementC1EPS_,_ZN13DriveMovementC2EPS_
 117              		.global	__aeabi_ui2f
 118              		.global	__aeabi_fdiv
 119              		.global	__aeabi_f2d
 120              		.global	__aeabi_dmul
 121              		.global	__aeabi_ddiv
 122              		.global	__aeabi_d2ulz
 123              		.global	__aeabi_fmul
 124              		.global	__aeabi_f2uiz
 125              		.global	__aeabi_fcmplt
 126              		.global	__aeabi_f2ulz
 127              		.section	.text.hot._ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams,"ax",%progbits
 128              		.align	1
 129              		.p2align 2,,3
 130              		.global	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams
 131              		.syntax unified
 132              		.thumb
 133              		.thumb_func
 134              		.fpu softvfp
 135              		.type	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams, %function
 136              	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams:
 137              		@ args = 0, pretend = 0, frame = 0
 138              		@ frame_needed = 0, uses_anonymous_args = 0
 139 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 140 0004 0D46     		mov	r5, r1
 141 0006 8668     		ldr	r6, [r0, #8]
 142 0008 0446     		mov	r4, r0
 143 000a 3046     		mov	r0, r6
 144 000c 9346     		mov	fp, r2
 145 000e FFF7FEFF 		bl	__aeabi_ui2f
 146 0012 D5F88810 		ldr	r1, [r5, #136]	@ float
 147 0016 FFF7FEFF 		bl	__aeabi_fdiv
 148 001a 0746     		mov	r7, r0
 149 001c FFF7FEFF 		bl	__aeabi_f2d
 150 0020 D5F88CA0 		ldr	r10, [r5, #140]	@ float
 151 0024 8046     		mov	r8, r0
 152 0026 5046     		mov	r0, r10
 153 0028 8946     		mov	r9, r1
 154 002a FFF7FEFF 		bl	__aeabi_f2d
 155 002e 0246     		mov	r2, r0
 156 0030 0B46     		mov	r3, r1
 157 0032 4046     		mov	r0, r8
 158 0034 4946     		mov	r1, r9
 159 0036 FFF7FEFF 		bl	__aeabi_dmul
 160 003a 0246     		mov	r2, r0
 161 003c 0B46     		mov	r3, r1
 162 003e 2AA1     		adr	r1, .L31
 163 0040 D1E90001 		ldrd	r0, [r1]
 164 0044 FFF7FEFF 		bl	__aeabi_ddiv
 165 0048 FFF7FEFF 		bl	__aeabi_d2ulz
 166 004c C4E90A01 		strd	r0, [r4, #40]
 167 0050 3846     		mov	r0, r7
 168 0052 D5F8A810 		ldr	r1, [r5, #168]	@ float
 169 0056 FFF7FEFF 		bl	__aeabi_fmul
 170 005a FFF7FEFF 		bl	__aeabi_f2uiz
 171 005e 0023     		movs	r3, #0
ARM GAS  /tmp/ccNZUkY9.s 			page 4


 172 0060 0130     		adds	r0, r0, #1
 173 0062 A364     		str	r3, [r4, #72]
 174 0064 6364     		str	r3, [r4, #68]
 175 0066 A063     		str	r0, [r4, #56]
 176 0068 D5F8A410 		ldr	r1, [r5, #164]	@ float
 177 006c 3846     		mov	r0, r7
 178 006e FFF7FEFF 		bl	__aeabi_fmul
 179 0072 0146     		mov	r1, r0
 180 0074 1E48     		ldr	r0, .L31+8
 181 0076 FFF7FEFF 		bl	__aeabi_fdiv
 182 007a FFF7FEFF 		bl	__aeabi_f2uiz
 183 007e 2064     		str	r0, [r4, #64]
 184 0080 D5F8AC10 		ldr	r1, [r5, #172]	@ float
 185 0084 3846     		mov	r0, r7
 186 0086 FFF7FEFF 		bl	__aeabi_fmul
 187 008a 4FF07C51 		mov	r1, #1056964608
 188 008e FFF7FEFF 		bl	__aeabi_fcmplt
 189 0092 00BB     		cbnz	r0, .L30
 190 0094 DBF80050 		ldr	r5, [fp]	@ float
 191 0098 3846     		mov	r0, r7
 192 009a 2946     		mov	r1, r5
 193 009c FFF7FEFF 		bl	__aeabi_fmul
 194 00a0 FFF7FEFF 		bl	__aeabi_f2uiz
 195 00a4 0130     		adds	r0, r0, #1
 196 00a6 E063     		str	r0, [r4, #60]
 197 00a8 1249     		ldr	r1, .L31+12
 198 00aa 2846     		mov	r0, r5
 199 00ac FFF7FEFF 		bl	__aeabi_fmul
 200 00b0 5146     		mov	r1, r10
 201 00b2 FFF7FEFF 		bl	__aeabi_fdiv
 202 00b6 FFF7FEFF 		bl	__aeabi_f2ulz
 203 00ba DBF80430 		ldr	r3, [fp, #4]
 204 00be 0136     		adds	r6, r6, #1
 205 00c0 E3FB0301 		umlal	r0, r1, r3, r3
 206 00c4 C4E90801 		strd	r0, [r4, #32]
 207              	.L26:
 208 00c8 0022     		movs	r2, #0
 209 00ca 0023     		movs	r3, #0
 210 00cc C4E90C23 		strd	r2, [r4, #48]
 211 00d0 2661     		str	r6, [r4, #16]
 212 00d2 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 213              	.L30:
 214 00d6 0022     		movs	r2, #0
 215 00d8 0023     		movs	r3, #0
 216 00da 0136     		adds	r6, r6, #1
 217 00dc E663     		str	r6, [r4, #60]
 218 00de C4E90823 		strd	r2, [r4, #32]
 219 00e2 F1E7     		b	.L26
 220              	.L32:
 221 00e4 AFF30080 		.align	3
 222              	.L31:
 223 00e8 00008905 		.word	92864512
 224 00ec 65116942 		.word	1114181989
 225 00f0 A037204E 		.word	1310734240
 226 00f4 288B4853 		.word	1397263144
 227              		.size	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams, .-_ZN13DriveMovement20Prepare
 228              		.global	__aeabi_fsub
ARM GAS  /tmp/ccNZUkY9.s 			page 5


 229              		.global	__aeabi_fadd
 230              		.global	__aeabi_f2iz
 231              		.global	__aeabi_f2lz
 232              		.global	__aeabi_fcmple
 233              		.global	__aeabi_fcmpge
 234              		.global	__aeabi_fcmpgt
 235              		.section	.text.hot._ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams,"ax",%progbits
 236              		.align	1
 237              		.p2align 2,,3
 238              		.global	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams
 239              		.syntax unified
 240              		.thumb
 241              		.thumb_func
 242              		.fpu softvfp
 243              		.type	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams, %function
 244              	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams:
 245              		@ args = 0, pretend = 0, frame = 16
 246              		@ frame_needed = 0, uses_anonymous_args = 0
 247 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 248 0004 1746     		mov	r7, r2
 249 0006 AC4A     		ldr	r2, .L59+8
 250 0008 0446     		mov	r4, r0
 251 000a 7B69     		ldr	r3, [r7, #20]
 252 000c 4079     		ldrb	r0, [r0, #5]	@ zero_extendqisi2
 253 000e 1268     		ldr	r2, [r2]	@ unaligned
 254 0010 03EB8008 		add	r8, r3, r0, lsl #2
 255 0014 85B0     		sub	sp, sp, #20
 256 0016 02EB8003 		add	r3, r2, r0, lsl #2
 257 001a 0D46     		mov	r5, r1
 258 001c F868     		ldr	r0, [r7, #12]	@ float
 259 001e D8F85010 		ldr	r1, [r8, #80]	@ float
 260 0022 D3F82461 		ldr	r6, [r3, #292]	@ float
 261 0026 FFF7FEFF 		bl	__aeabi_fsub
 262 002a D8F85C10 		ldr	r1, [r8, #92]	@ float
 263 002e 8146     		mov	r9, r0
 264 0030 3869     		ldr	r0, [r7, #16]	@ float
 265 0032 FFF7FEFF 		bl	__aeabi_fsub
 266 0036 696E     		ldr	r1, [r5, #100]	@ float
 267 0038 8046     		mov	r8, r0
 268 003a 4846     		mov	r0, r9
 269 003c FFF7FEFF 		bl	__aeabi_fmul
 270 0040 A96E     		ldr	r1, [r5, #104]	@ float
 271 0042 8246     		mov	r10, r0
 272 0044 4046     		mov	r0, r8
 273 0046 FFF7FEFF 		bl	__aeabi_fmul
 274 004a 0146     		mov	r1, r0
 275 004c 5046     		mov	r0, r10
 276 004e FFF7FEFF 		bl	__aeabi_fadd
 277 0052 4946     		mov	r1, r9
 278 0054 8246     		mov	r10, r0
 279 0056 4846     		mov	r0, r9
 280 0058 FFF7FEFF 		bl	__aeabi_fmul
 281 005c 0146     		mov	r1, r0
 282 005e B869     		ldr	r0, [r7, #24]	@ float
 283 0060 FFF7FEFF 		bl	__aeabi_fsub
 284 0064 4146     		mov	r1, r8
 285 0066 8346     		mov	fp, r0
ARM GAS  /tmp/ccNZUkY9.s 			page 6


 286 0068 4046     		mov	r0, r8
 287 006a FFF7FEFF 		bl	__aeabi_fmul
 288 006e 0146     		mov	r1, r0
 289 0070 5846     		mov	r0, fp
 290 0072 FFF7FEFF 		bl	__aeabi_fsub
 291 0076 8346     		mov	fp, r0
 292 0078 FFF7FEFF 		bl	sqrtf
 293 007c 3146     		mov	r1, r6
 294 007e 0390     		str	r0, [sp, #12]	@ float
 295 0080 FFF7FEFF 		bl	__aeabi_fmul
 296 0084 4FF08841 		mov	r1, #1140850688
 297 0088 FFF7FEFF 		bl	__aeabi_fmul
 298 008c FFF7FEFF 		bl	__aeabi_f2iz
 299 0090 3146     		mov	r1, r6
 300 0092 A063     		str	r0, [r4, #56]
 301 0094 5046     		mov	r0, r10
 302 0096 FFF7FEFF 		bl	__aeabi_fmul
 303 009a 4FF08841 		mov	r1, #1140850688
 304 009e FFF7FEFF 		bl	__aeabi_fmul
 305 00a2 FFF7FEFF 		bl	__aeabi_f2iz
 306 00a6 4042     		negs	r0, r0
 307 00a8 E063     		str	r0, [r4, #60]
 308 00aa 4FF08841 		mov	r1, #1140850688
 309 00ae 3046     		mov	r0, r6
 310 00b0 FFF7FEFF 		bl	__aeabi_fmul
 311 00b4 0146     		mov	r1, r0
 312 00b6 FFF7FEFF 		bl	__aeabi_fmul
 313 00ba 5946     		mov	r1, fp
 314 00bc FFF7FEFF 		bl	__aeabi_fmul
 315 00c0 FFF7FEFF 		bl	__aeabi_f2lz
 316 00c4 C4E90C01 		strd	r0, [r4, #48]
 317 00c8 D5F88C00 		ldr	r0, [r5, #140]	@ float
 318 00cc FFF7FEFF 		bl	__aeabi_f2d
 319 00d0 CDE90001 		strd	r0, [sp]
 320 00d4 3046     		mov	r0, r6
 321 00d6 FFF7FEFF 		bl	__aeabi_f2d
 322 00da 0246     		mov	r2, r0
 323 00dc 0B46     		mov	r3, r1
 324 00de DDE90001 		ldrd	r0, [sp]
 325 00e2 FFF7FEFF 		bl	__aeabi_dmul
 326 00e6 0246     		mov	r2, r0
 327 00e8 0B46     		mov	r3, r1
 328 00ea 71A1     		adr	r1, .L59
 329 00ec D1E90001 		ldrd	r0, [r1]
 330 00f0 FFF7FEFF 		bl	__aeabi_ddiv
 331 00f4 FFF7FEFF 		bl	__aeabi_d2ulz
 332 00f8 C4E90A01 		strd	r0, [r4, #40]
 333 00fc F869     		ldr	r0, [r7, #28]	@ float
 334 00fe 0021     		movs	r1, #0
 335 0100 FFF7FEFF 		bl	__aeabi_fcmple
 336 0104 0028     		cmp	r0, #0
 337 0106 73D1     		bne	.L56
 338 0108 A96E     		ldr	r1, [r5, #104]	@ float
 339 010a 4846     		mov	r0, r9
 340 010c FFF7FEFF 		bl	__aeabi_fmul
 341 0110 696E     		ldr	r1, [r5, #100]	@ float
 342 0112 8146     		mov	r9, r0
ARM GAS  /tmp/ccNZUkY9.s 			page 7


 343 0114 4046     		mov	r0, r8
 344 0116 FFF7FEFF 		bl	__aeabi_fmul
 345 011a 0146     		mov	r1, r0
 346 011c 4846     		mov	r0, r9
 347 011e FFF7FEFF 		bl	__aeabi_fsub
 348 0122 0146     		mov	r1, r0
 349 0124 FFF7FEFF 		bl	__aeabi_fmul
 350 0128 0146     		mov	r1, r0
 351 012a 386A     		ldr	r0, [r7, #32]	@ float
 352 012c FFF7FEFF 		bl	__aeabi_fsub
 353 0130 D5F86C80 		ldr	r8, [r5, #108]	@ float
 354 0134 FFF7FEFF 		bl	sqrtf
 355 0138 0146     		mov	r1, r0
 356 013a 4046     		mov	r0, r8
 357 013c FFF7FEFF 		bl	__aeabi_fmul
 358 0140 D7F81C90 		ldr	r9, [r7, #28]	@ float
 359 0144 5146     		mov	r1, r10
 360 0146 FFF7FEFF 		bl	__aeabi_fsub
 361 014a 4946     		mov	r1, r9
 362 014c FFF7FEFF 		bl	__aeabi_fdiv
 363 0150 0021     		movs	r1, #0
 364 0152 8046     		mov	r8, r0
 365 0154 FFF7FEFF 		bl	__aeabi_fcmpgt
 366 0158 30B1     		cbz	r0, .L38
 367 015a D5F88810 		ldr	r1, [r5, #136]	@ float
 368 015e 4046     		mov	r0, r8
 369 0160 FFF7FEFF 		bl	__aeabi_fcmplt
 370 0164 0028     		cmp	r0, #0
 371 0166 5DD1     		bne	.L57
 372              	.L38:
 373 0168 A368     		ldr	r3, [r4, #8]
 374              	.L55:
 375 016a 0133     		adds	r3, r3, #1
 376 016c 2361     		str	r3, [r4, #16]
 377              	.L37:
 378 016e D5F8A810 		ldr	r1, [r5, #168]	@ float
 379 0172 3046     		mov	r0, r6
 380 0174 FFF7FEFF 		bl	__aeabi_fmul
 381 0178 4FF08841 		mov	r1, #1140850688
 382 017c FFF7FEFF 		bl	__aeabi_fmul
 383 0180 FFF7FEFF 		bl	__aeabi_f2uiz
 384 0184 2064     		str	r0, [r4, #64]
 385 0186 D5F8A410 		ldr	r1, [r5, #164]	@ float
 386 018a 3046     		mov	r0, r6
 387 018c FFF7FEFF 		bl	__aeabi_fmul
 388 0190 0146     		mov	r1, r0
 389 0192 4A48     		ldr	r0, .L59+12
 390 0194 FFF7FEFF 		bl	__aeabi_fdiv
 391 0198 FFF7FEFF 		bl	__aeabi_f2uiz
 392 019c A064     		str	r0, [r4, #72]
 393 019e D5F8AC10 		ldr	r1, [r5, #172]	@ float
 394 01a2 3046     		mov	r0, r6
 395 01a4 FFF7FEFF 		bl	__aeabi_fmul
 396 01a8 4FF07C51 		mov	r1, #1056964608
 397 01ac FFF7FEFF 		bl	__aeabi_fcmplt
 398 01b0 70BB     		cbnz	r0, .L58
 399 01b2 D7F80080 		ldr	r8, [r7]	@ float
ARM GAS  /tmp/ccNZUkY9.s 			page 8


 400 01b6 3046     		mov	r0, r6
 401 01b8 4146     		mov	r1, r8
 402 01ba FFF7FEFF 		bl	__aeabi_fmul
 403 01be 4FF08841 		mov	r1, #1140850688
 404 01c2 FFF7FEFF 		bl	__aeabi_fmul
 405 01c6 FFF7FEFF 		bl	__aeabi_f2uiz
 406 01ca 3D49     		ldr	r1, .L59+16
 407 01cc 6064     		str	r0, [r4, #68]
 408 01ce 4046     		mov	r0, r8
 409 01d0 FFF7FEFF 		bl	__aeabi_fmul
 410 01d4 D5F88C10 		ldr	r1, [r5, #140]	@ float
 411 01d8 FFF7FEFF 		bl	__aeabi_fdiv
 412 01dc FFF7FEFF 		bl	__aeabi_f2ulz
 413 01e0 7B68     		ldr	r3, [r7, #4]
 414 01e2 E3FB0301 		umlal	r0, r1, r3, r3
 415 01e6 C4E90801 		strd	r0, [r4, #32]
 416 01ea 05B0     		add	sp, sp, #20
 417              		@ sp needed
 418 01ec BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 419              	.L56:
 420 01f0 0021     		movs	r1, #0
 421 01f2 E86E     		ldr	r0, [r5, #108]	@ float
 422 01f4 FFF7FEFF 		bl	__aeabi_fcmpge
 423 01f8 4FF00101 		mov	r1, #1
 424 01fc 00B9     		cbnz	r0, .L36
 425 01fe 0146     		mov	r1, r0
 426              	.L36:
 427 0200 A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 428 0202 A368     		ldr	r3, [r4, #8]
 429 0204 61F30412 		bfi	r2, r1, #4, #1
 430 0208 0133     		adds	r3, r3, #1
 431 020a A271     		strb	r2, [r4, #6]
 432 020c 2361     		str	r3, [r4, #16]
 433 020e AEE7     		b	.L37
 434              	.L58:
 435 0210 4FF0FF31 		mov	r1, #-1
 436 0214 0022     		movs	r2, #0
 437 0216 0023     		movs	r3, #0
 438 0218 6164     		str	r1, [r4, #68]
 439 021a C4E90823 		strd	r2, [r4, #32]
 440 021e 05B0     		add	sp, sp, #20
 441              		@ sp needed
 442 0220 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 443              	.L57:
 444 0224 E96E     		ldr	r1, [r5, #108]	@ float
 445 0226 4046     		mov	r0, r8
 446 0228 FFF7FEFF 		bl	__aeabi_fmul
 447 022c 4146     		mov	r1, r8
 448 022e 0090     		str	r0, [sp]
 449 0230 4046     		mov	r0, r8
 450 0232 FFF7FEFF 		bl	__aeabi_fadd
 451 0236 5146     		mov	r1, r10
 452 0238 FFF7FEFF 		bl	__aeabi_fmul
 453 023c 0146     		mov	r1, r0
 454 023e 5846     		mov	r0, fp
 455 0240 FFF7FEFF 		bl	__aeabi_fsub
 456 0244 4146     		mov	r1, r8
ARM GAS  /tmp/ccNZUkY9.s 			page 9


 457 0246 8246     		mov	r10, r0
 458 0248 4046     		mov	r0, r8
 459 024a FFF7FEFF 		bl	__aeabi_fmul
 460 024e 4946     		mov	r1, r9
 461 0250 FFF7FEFF 		bl	__aeabi_fmul
 462 0254 0146     		mov	r1, r0
 463 0256 5046     		mov	r0, r10
 464 0258 FFF7FEFF 		bl	__aeabi_fsub
 465 025c FFF7FEFF 		bl	sqrtf
 466 0260 009B     		ldr	r3, [sp]
 467 0262 0146     		mov	r1, r0
 468 0264 1846     		mov	r0, r3
 469 0266 FFF7FEFF 		bl	__aeabi_fadd
 470 026a 0399     		ldr	r1, [sp, #12]	@ float
 471 026c FFF7FEFF 		bl	__aeabi_fsub
 472 0270 3146     		mov	r1, r6
 473 0272 FFF7FEFF 		bl	__aeabi_fmul
 474 0276 FFF7FEFF 		bl	__aeabi_f2iz
 475 027a 0028     		cmp	r0, #0
 476 027c 7FF774AF 		ble	.L38
 477 0280 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 478 0282 DA06     		lsls	r2, r3, #27
 479 0284 09D5     		bpl	.L43
 480 0286 A368     		ldr	r3, [r4, #8]
 481 0288 8342     		cmp	r3, r0
 482 028a BFF46EAF 		bcs	.L55
 483 028e C3EB4003 		rsb	r3, r3, r0, lsl #1
 484 0292 0130     		adds	r0, r0, #1
 485 0294 A360     		str	r3, [r4, #8]
 486 0296 2061     		str	r0, [r4, #16]
 487 0298 69E7     		b	.L37
 488              	.L43:
 489 029a A268     		ldr	r2, [r4, #8]
 490 029c 43F01003 		orr	r3, r3, #16
 491 02a0 02EB4002 		add	r2, r2, r0, lsl #1
 492 02a4 0130     		adds	r0, r0, #1
 493 02a6 A371     		strb	r3, [r4, #6]
 494 02a8 A260     		str	r2, [r4, #8]
 495 02aa 2061     		str	r0, [r4, #16]
 496 02ac 5FE7     		b	.L37
 497              	.L60:
 498 02ae 00BF     		.align	3
 499              	.L59:
 500 02b0 00008905 		.word	92864512
 501 02b4 65116942 		.word	1114181989
 502 02b8 00000000 		.word	reprap
 503 02bc A037204E 		.word	1310734240
 504 02c0 288B4853 		.word	1397263144
 505              		.size	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams, .-_ZN13DriveMovement16PrepareDelt
 506              		.global	__aeabi_fcmpun
 507              		.global	__aeabi_uldivmod
 508              		.section	.text.hot._ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb,"ax",%progbits
 509              		.align	1
 510              		.p2align 2,,3
 511              		.global	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb
 512              		.syntax unified
 513              		.thumb
ARM GAS  /tmp/ccNZUkY9.s 			page 10


 514              		.thumb_func
 515              		.fpu softvfp
 516              		.type	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb, %function
 517              	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb:
 518              		@ args = 4, pretend = 0, frame = 40
 519              		@ frame_needed = 0, uses_anonymous_args = 0
 520 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 521 0004 DFF81C83 		ldr	r8, .L98+20
 522 0008 4779     		ldrb	r7, [r0, #5]	@ zero_extendqisi2
 523 000a D8F800A0 		ldr	r10, [r8]
 524 000e 01EB8703 		add	r3, r1, r7, lsl #2
 525 0012 0D46     		mov	r5, r1
 526 0014 D3F86490 		ldr	r9, [r3, #100]	@ float
 527 0018 0AEB8703 		add	r3, r10, r7, lsl #2
 528 001c 8DB0     		sub	sp, sp, #52
 529 001e D3F82411 		ldr	r1, [r3, #292]	@ float
 530 0022 0446     		mov	r4, r0
 531 0024 29F00040 		bic	r0, r9, #-2147483648
 532 0028 0292     		str	r2, [sp, #8]
 533 002a FFF7FEFF 		bl	__aeabi_fmul
 534 002e D8F81020 		ldr	r2, [r8, #16]
 535 0032 AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 536 0034 D2F8F821 		ldr	r2, [r2, #504]
 537 0038 1B07     		lsls	r3, r3, #28
 538 003a 0646     		mov	r6, r0
 539 003c 9DF858B0 		ldrb	fp, [sp, #88]	@ zero_extendqisi2
 540 0040 A7EB0207 		sub	r7, r7, r2
 541 0044 00F1F580 		bmi	.L62
 542 0048 D5F888A0 		ldr	r10, [r5, #136]	@ float
 543              	.L63:
 544 004c BBF1000F 		cmp	fp, #0
 545 0050 3FD0     		beq	.L68
 546 0052 4846     		mov	r0, r9
 547 0054 0021     		movs	r1, #0
 548 0056 FFF7FEFF 		bl	__aeabi_fcmpgt
 549 005a 0028     		cmp	r0, #0
 550 005c 39D0     		beq	.L68
 551 005e 052F     		cmp	r7, #5
 552 0060 40F23081 		bls	.L94
 553 0064 0027     		movs	r7, #0
 554 0066 0020     		movs	r0, #0
 555 0068 0697     		str	r7, [sp, #24]	@ float
 556              	.L70:
 557 006a 029B     		ldr	r3, [sp, #8]
 558 006c 6064     		str	r0, [r4, #68]
 559 006e 9968     		ldr	r1, [r3, #8]	@ float
 560 0070 3846     		mov	r0, r7
 561 0072 FFF7FEFF 		bl	__aeabi_fmul
 562 0076 FFF7FEFF 		bl	__aeabi_f2uiz
 563 007a A064     		str	r0, [r4, #72]
 564 007c D5F89C70 		ldr	r7, [r5, #156]	@ float
 565 0080 D5F8A000 		ldr	r0, [r5, #160]	@ float
 566 0084 3946     		mov	r1, r7
 567 0086 FFF7FEFF 		bl	__aeabi_fsub
 568 008a DDF81880 		ldr	r8, [sp, #24]	@ float
 569 008e 4146     		mov	r1, r8
 570 0090 FFF7FEFF 		bl	__aeabi_fmul
ARM GAS  /tmp/ccNZUkY9.s 			page 11


 571 0094 5146     		mov	r1, r10
 572 0096 FFF7FEFF 		bl	__aeabi_fadd
 573 009a 3146     		mov	r1, r6
 574 009c FFF7FEFF 		bl	__aeabi_fmul
 575 00a0 FFF7FEFF 		bl	__aeabi_f2iz
 576 00a4 D5F8A4B0 		ldr	fp, [r5, #164]	@ float
 577 00a8 3946     		mov	r1, r7
 578 00aa 8246     		mov	r10, r0
 579 00ac 5846     		mov	r0, fp
 580 00ae FFF7FEFF 		bl	__aeabi_fsub
 581 00b2 4146     		mov	r1, r8
 582 00b4 FFF7FEFF 		bl	__aeabi_fmul
 583 00b8 D5F8A810 		ldr	r1, [r5, #168]	@ float
 584 00bc 8146     		mov	r9, r0
 585 00be FFF7FEFF 		bl	__aeabi_fadd
 586 00c2 3146     		mov	r1, r6
 587 00c4 FFF7FEFF 		bl	__aeabi_fmul
 588 00c8 FFF7FEFF 		bl	__aeabi_f2uiz
 589 00cc 0130     		adds	r0, r0, #1
 590 00ce A063     		str	r0, [r4, #56]
 591 00d0 18E0     		b	.L71
 592              	.L68:
 593 00d2 0023     		movs	r3, #0
 594 00d4 5146     		mov	r1, r10
 595 00d6 A364     		str	r3, [r4, #72]
 596 00d8 6364     		str	r3, [r4, #68]
 597 00da 3046     		mov	r0, r6
 598 00dc FFF7FEFF 		bl	__aeabi_fmul
 599 00e0 FFF7FEFF 		bl	__aeabi_f2iz
 600 00e4 D5F8A810 		ldr	r1, [r5, #168]	@ float
 601 00e8 8246     		mov	r10, r0
 602 00ea 3046     		mov	r0, r6
 603 00ec FFF7FEFF 		bl	__aeabi_fmul
 604 00f0 FFF7FEFF 		bl	__aeabi_f2uiz
 605 00f4 4FF00009 		mov	r9, #0
 606 00f8 0130     		adds	r0, r0, #1
 607 00fa A063     		str	r0, [r4, #56]
 608 00fc D5F8A4B0 		ldr	fp, [r5, #164]	@ float
 609 0100 CDF81890 		str	r9, [sp, #24]	@ float
 610              	.L71:
 611 0104 3046     		mov	r0, r6
 612 0106 FFF7FEFF 		bl	__aeabi_f2d
 613 010a D5F88C70 		ldr	r7, [r5, #140]	@ float
 614 010e CDE90401 		strd	r0, [sp, #16]
 615 0112 3846     		mov	r0, r7
 616 0114 FFF7FEFF 		bl	__aeabi_f2d
 617 0118 0246     		mov	r2, r0
 618 011a 0B46     		mov	r3, r1
 619 011c DDE90401 		ldrd	r0, [sp, #16]
 620 0120 FFF7FEFF 		bl	__aeabi_dmul
 621 0124 0246     		mov	r2, r0
 622 0126 0B46     		mov	r3, r1
 623 0128 79A1     		adr	r1, .L98
 624 012a D1E90001 		ldrd	r0, [r1]
 625 012e FFF7FEFF 		bl	__aeabi_ddiv
 626 0132 FFF7FEFF 		bl	__aeabi_d2ulz
 627 0136 0491     		str	r1, [sp, #16]
ARM GAS  /tmp/ccNZUkY9.s 			page 12


 628 0138 A062     		str	r0, [r4, #40]
 629 013a E162     		str	r1, [r4, #44]
 630 013c 8046     		mov	r8, r0
 631 013e 5946     		mov	r1, fp
 632 0140 3046     		mov	r0, r6
 633 0142 FFF7FEFF 		bl	__aeabi_fmul
 634 0146 0146     		mov	r1, r0
 635 0148 7348     		ldr	r0, .L98+8
 636 014a FFF7FEFF 		bl	__aeabi_fdiv
 637 014e FFF7FEFF 		bl	__aeabi_f2uiz
 638 0152 2064     		str	r0, [r4, #64]
 639 0154 D5F8AC10 		ldr	r1, [r5, #172]	@ float
 640 0158 3046     		mov	r0, r6
 641 015a FFF7FEFF 		bl	__aeabi_fmul
 642 015e 4FF07C51 		mov	r1, #1056964608
 643 0162 FFF7FEFF 		bl	__aeabi_fcmplt
 644 0166 78B1     		cbz	r0, .L91
 645 0168 0020     		movs	r0, #0
 646 016a 0021     		movs	r1, #0
 647 016c C4E90C01 		strd	r0, [r4, #48]
 648 0170 C4E90801 		strd	r0, [r4, #32]
 649 0174 0AF10103 		add	r3, r10, #1
 650 0178 2AEAEA72 		bic	r2, r10, r10, asr #31
 651 017c A260     		str	r2, [r4, #8]
 652 017e 2361     		str	r3, [r4, #16]
 653 0180 E363     		str	r3, [r4, #60]
 654              	.L61:
 655 0182 0DB0     		add	sp, sp, #52
 656              		@ sp needed
 657 0184 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 658              	.L91:
 659 0188 029B     		ldr	r3, [sp, #8]
 660 018a 4846     		mov	r0, r9
 661 018c 1968     		ldr	r1, [r3]	@ float
 662 018e FFF7FEFF 		bl	__aeabi_fadd
 663 0192 0146     		mov	r1, r0
 664 0194 0790     		str	r0, [sp, #28]
 665 0196 3046     		mov	r0, r6
 666 0198 FFF7FEFF 		bl	__aeabi_fmul
 667 019c FFF7FEFF 		bl	__aeabi_f2uiz
 668 01a0 029B     		ldr	r3, [sp, #8]
 669 01a2 421C     		adds	r2, r0, #1
 670 01a4 E263     		str	r2, [r4, #60]
 671 01a6 5E68     		ldr	r6, [r3, #4]
 672 01a8 079B     		ldr	r3, [sp, #28]
 673 01aa 626C     		ldr	r2, [r4, #68]
 674 01ac 5B49     		ldr	r1, .L98+12
 675 01ae 8146     		mov	r9, r0
 676 01b0 1846     		mov	r0, r3
 677 01b2 B61A     		subs	r6, r6, r2
 678 01b4 FFF7FEFF 		bl	__aeabi_fmul
 679 01b8 3946     		mov	r1, r7
 680 01ba FFF7FEFF 		bl	__aeabi_fdiv
 681 01be FFF7FEFF 		bl	__aeabi_f2ulz
 682 01c2 C6FB0601 		smlal	r0, r1, r6, r6
 683 01c6 0246     		mov	r2, r0
 684 01c8 0B46     		mov	r3, r1
ARM GAS  /tmp/ccNZUkY9.s 			page 13


 685 01ca 0698     		ldr	r0, [sp, #24]	@ float
 686 01cc 3946     		mov	r1, r7
 687 01ce C4E90823 		strd	r2, [r4, #32]
 688 01d2 CDE90223 		strd	r2, [sp, #8]
 689 01d6 FFF7FEFF 		bl	__aeabi_fmul
 690 01da 5946     		mov	r1, fp
 691 01dc 0646     		mov	r6, r0
 692 01de FFF7FEFF 		bl	__aeabi_fcmpgt
 693 01e2 B8B1     		cbz	r0, .L95
 694 01e4 D5F8A010 		ldr	r1, [r5, #160]	@ float
 695 01e8 3046     		mov	r0, r6
 696 01ea FFF7FEFF 		bl	__aeabi_fcmpgt
 697 01ee 08B1     		cbz	r0, .L78
 698              	.L97:
 699 01f0 CA45     		cmp	r10, r9
 700 01f2 76DB     		blt	.L96
 701              	.L78:
 702 01f4 CA45     		cmp	r10, r9
 703 01f6 5346     		mov	r3, r10
 704 01f8 A8BF     		it	ge
 705 01fa 4B46     		movge	r3, r9
 706 01fc 0020     		movs	r0, #0
 707 01fe 0021     		movs	r1, #0
 708 0200 5A1C     		adds	r2, r3, #1
 709 0202 23EAE373 		bic	r3, r3, r3, asr #31
 710 0206 2261     		str	r2, [r4, #16]
 711 0208 A360     		str	r3, [r4, #8]
 712 020a C4E90C01 		strd	r0, [r4, #48]
 713 020e 0DB0     		add	sp, sp, #52
 714              		@ sp needed
 715 0210 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 716              	.L95:
 717 0214 4246     		mov	r2, r8
 718 0216 DDE90201 		ldrd	r0, [sp, #8]
 719 021a 049B     		ldr	r3, [sp, #16]
 720 021c FFF7FEFF 		bl	__aeabi_uldivmod
 721 0220 D5F8A010 		ldr	r1, [r5, #160]	@ float
 722 0224 8146     		mov	r9, r0
 723 0226 3046     		mov	r0, r6
 724 0228 FFF7FEFF 		bl	__aeabi_fcmpgt
 725 022c 0028     		cmp	r0, #0
 726 022e E1D0     		beq	.L78
 727 0230 DEE7     		b	.L97
 728              	.L62:
 729 0232 0BAB     		add	r3, sp, #44
 730 0234 5046     		mov	r0, r10
 731 0236 0093     		str	r3, [sp]
 732 0238 09AA     		add	r2, sp, #36
 733 023a 0AAB     		add	r3, sp, #40
 734 023c 3946     		mov	r1, r7
 735 023e FFF7FEFF 		bl	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_
 736 0242 D5F888A0 		ldr	r10, [r5, #136]	@ float
 737 0246 0028     		cmp	r0, #0
 738 0248 3FF400AF 		beq	.L63
 739 024c 5146     		mov	r1, r10
 740 024e 4846     		mov	r0, r9
 741 0250 FFF7FEFF 		bl	__aeabi_fmul
ARM GAS  /tmp/ccNZUkY9.s 			page 14


 742 0254 3249     		ldr	r1, .L98+16
 743 0256 FFF7FEFF 		bl	__aeabi_fmul
 744 025a 0490     		str	r0, [sp, #16]
 745 025c D5F8B400 		ldr	r0, [r5, #180]
 746 0260 FFF7FEFF 		bl	__aeabi_ui2f
 747 0264 049B     		ldr	r3, [sp, #16]
 748 0266 0146     		mov	r1, r0
 749 0268 1846     		mov	r0, r3
 750 026a FFF7FEFF 		bl	__aeabi_fdiv
 751 026e 0146     		mov	r1, r0
 752 0270 0690     		str	r0, [sp, #24]
 753 0272 FFF7FEFF 		bl	__aeabi_fmul
 754 0276 0A99     		ldr	r1, [sp, #40]	@ float
 755 0278 FFF7FEFF 		bl	__aeabi_fmul
 756 027c 069B     		ldr	r3, [sp, #24]
 757 027e 0490     		str	r0, [sp, #16]
 758 0280 0999     		ldr	r1, [sp, #36]	@ float
 759 0282 1846     		mov	r0, r3
 760 0284 FFF7FEFF 		bl	__aeabi_fmul
 761 0288 049A     		ldr	r2, [sp, #16]
 762 028a 0146     		mov	r1, r0
 763 028c 1046     		mov	r0, r2
 764 028e FFF7FEFF 		bl	__aeabi_fadd
 765 0292 0B9B     		ldr	r3, [sp, #44]	@ float
 766 0294 0146     		mov	r1, r0
 767 0296 0690     		str	r0, [sp, #24]	@ float
 768 0298 0493     		str	r3, [sp, #16]	@ float
 769 029a FFF7FEFF 		bl	__aeabi_fcmpun
 770 029e 20B9     		cbnz	r0, .L93
 771 02a0 0499     		ldr	r1, [sp, #16]	@ float
 772 02a2 0698     		ldr	r0, [sp, #24]	@ float
 773 02a4 FFF7FEFF 		bl	__aeabi_fcmplt
 774 02a8 08B1     		cbz	r0, .L79
 775              	.L93:
 776 02aa 069B     		ldr	r3, [sp, #24]	@ float
 777 02ac 0493     		str	r3, [sp, #16]	@ float
 778              	.L79:
 779 02ae 4FF07E51 		mov	r1, #1065353216
 780 02b2 0498     		ldr	r0, [sp, #16]	@ float
 781 02b4 FFF7FEFF 		bl	__aeabi_fadd
 782 02b8 0146     		mov	r1, r0
 783 02ba 3046     		mov	r0, r6
 784 02bc FFF7FEFF 		bl	__aeabi_fmul
 785 02c0 0646     		mov	r6, r0
 786 02c2 C3E6     		b	.L63
 787              	.L94:
 788 02c4 D8F80030 		ldr	r3, [r8]
 789 02c8 1549     		ldr	r1, .L98+16
 790 02ca 03EB8707 		add	r7, r3, r7, lsl #2
 791 02ce D7F86C31 		ldr	r3, [r7, #364]	@ float
 792 02d2 1846     		mov	r0, r3
 793 02d4 0693     		str	r3, [sp, #24]	@ float
 794 02d6 FFF7FEFF 		bl	__aeabi_fmul
 795 02da 0746     		mov	r7, r0
 796 02dc FFF7FEFF 		bl	__aeabi_f2uiz
 797 02e0 C3E6     		b	.L70
 798              	.L96:
ARM GAS  /tmp/ccNZUkY9.s 			page 15


 799 02e2 4FEA4902 		lsl	r2, r9, #1
 800 02e6 A2FB0801 		umull	r0, r1, r2, r8
 801 02ea DDE90256 		ldrd	r5, [sp, #8]
 802 02ee 049B     		ldr	r3, [sp, #16]
 803 02f0 451B     		subs	r5, r0, r5
 804 02f2 02FB0311 		mla	r1, r2, r3, r1
 805 02f6 61EB0606 		sbc	r6, r1, r6
 806 02fa 2846     		mov	r0, r5
 807 02fc 3146     		mov	r1, r6
 808 02fe A2EB0A02 		sub	r2, r2, r10
 809 0302 09F10103 		add	r3, r9, #1
 810 0306 A260     		str	r2, [r4, #8]
 811 0308 2361     		str	r3, [r4, #16]
 812 030a C4E90C01 		strd	r0, [r4, #48]
 813 030e 38E7     		b	.L61
 814              	.L99:
 815              		.align	3
 816              	.L98:
 817 0310 00008905 		.word	92864512
 818 0314 65116942 		.word	1114181989
 819 0318 A037204E 		.word	1310734240
 820 031c 288B4853 		.word	1397263144
 821 0320 A0372049 		.word	1226848160
 822 0324 00000000 		.word	reprap
 823              		.size	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsfb, .-_ZN13DriveMovement15PrepareExt
 824              		.section	.text._ZNK13DriveMovement10DebugPrintEcb,"ax",%progbits
 825              		.align	1
 826              		.p2align 2,,3
 827              		.global	_ZNK13DriveMovement10DebugPrintEcb
 828              		.syntax unified
 829              		.thumb
 830              		.thumb_func
 831              		.fpu softvfp
 832              		.type	_ZNK13DriveMovement10DebugPrintEcb, %function
 833              	_ZNK13DriveMovement10DebugPrintEcb:
 834              		@ args = 0, pretend = 0, frame = 0
 835              		@ frame_needed = 0, uses_anonymous_args = 0
 836 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 837 0004 0579     		ldrb	r5, [r0, #4]	@ zero_extendqisi2
 838 0006 89B0     		sub	sp, sp, #36
 839 0008 002D     		cmp	r5, #0
 840 000a 4CD0     		beq	.L101
 841 000c 0446     		mov	r4, r0
 842 000e 1646     		mov	r6, r2
 843 0010 A269     		ldr	r2, [r4, #24]
 844 0012 8379     		ldrb	r3, [r0, #6]	@ zero_extendqisi2
 845 0014 0069     		ldr	r0, [r0, #16]
 846 0016 274F     		ldr	r7, .L110
 847 0018 0392     		str	r2, [sp, #12]
 848 001a DFF8ACE0 		ldr	lr, .L110+20
 849 001e 13F0100F 		tst	r3, #16
 850 0022 D4E90889 		ldrd	r8, [r4, #32]
 851 0026 0290     		str	r0, [sp, #8]
 852 0028 14BF     		ite	ne
 853 002a 4623     		movne	r3, #70
 854 002c 4223     		moveq	r3, #66
 855 002e 022D     		cmp	r5, #2
ARM GAS  /tmp/ccNZUkY9.s 			page 16


 856 0030 0CBF     		ite	eq
 857 0032 3A46     		moveq	r2, r7
 858 0034 7246     		movne	r2, lr
 859 0036 E568     		ldr	r5, [r4, #12]
 860 0038 CDE90489 		strd	r8, [sp, #16]
 861 003c A068     		ldr	r0, [r4, #8]
 862 003e 8DE82100 		stm	sp, {r0, r5}
 863 0042 1D48     		ldr	r0, .L110+4
 864 0044 FFF7FEFF 		bl	debugPrintf
 865 0048 BEB9     		cbnz	r6, .L109
 866 004a D4E90C67 		ldrd	r6, [r4, #48]
 867 004e E26B     		ldr	r2, [r4, #60]
 868 0050 A16B     		ldr	r1, [r4, #56]
 869 0052 606C     		ldr	r0, [r4, #68]
 870 0054 236C     		ldr	r3, [r4, #64]
 871 0056 A56C     		ldr	r5, [r4, #72]
 872 0058 CDE90467 		strd	r6, [sp, #16]
 873 005c 0690     		str	r0, [sp, #24]
 874 005e 0795     		str	r5, [sp, #28]
 875 0060 0293     		str	r3, [sp, #8]
 876 0062 04F12805 		add	r5, r4, #40
 877 0066 D5E90045 		ldrd	r4, [r5]
 878 006a 1448     		ldr	r0, .L110+8
 879 006c CDE90045 		strd	r4, [sp]
 880 0070 FFF7FEFF 		bl	debugPrintf
 881 0074 09B0     		add	sp, sp, #36
 882              		@ sp needed
 883 0076 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 884              	.L109:
 885 007a A36C     		ldr	r3, [r4, #72]
 886 007c D4E90A89 		ldrd	r8, [r4, #40]
 887 0080 D4E90C67 		ldrd	r6, [r4, #48]
 888 0084 E26B     		ldr	r2, [r4, #60]
 889 0086 A16B     		ldr	r1, [r4, #56]
 890 0088 0693     		str	r3, [sp, #24]
 891 008a 606C     		ldr	r0, [r4, #68]
 892 008c 236C     		ldr	r3, [r4, #64]
 893 008e 0590     		str	r0, [sp, #20]
 894 0090 0493     		str	r3, [sp, #16]
 895 0092 CDE90289 		strd	r8, [sp, #8]
 896 0096 CDE90067 		strd	r6, [sp]
 897 009a 0948     		ldr	r0, .L110+12
 898 009c FFF7FEFF 		bl	debugPrintf
 899 00a0 09B0     		add	sp, sp, #36
 900              		@ sp needed
 901 00a2 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 902              	.L101:
 903 00a6 0748     		ldr	r0, .L110+16
 904 00a8 09B0     		add	sp, sp, #36
 905              		@ sp needed
 906 00aa BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 907 00ae FFF7FEBF 		b	debugPrintf
 908              	.L111:
 909 00b2 00BF     		.align	2
 910              	.L110:
 911 00b4 00000000 		.word	.LC0
 912 00b8 0C000000 		.word	.LC2
ARM GAS  /tmp/ccNZUkY9.s 			page 17


 913 00bc D0000000 		.word	.LC4
 914 00c0 54000000 		.word	.LC3
 915 00c4 50010000 		.word	.LC5
 916 00c8 08000000 		.word	.LC1
 917              		.size	_ZNK13DriveMovement10DebugPrintEcb, .-_ZNK13DriveMovement10DebugPrintEcb
 918              		.section	.text.hot._ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb,"ax",%progbits
 919              		.align	1
 920              		.p2align 2,,3
 921              		.global	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb
 922              		.syntax unified
 923              		.thumb
 924              		.thumb_func
 925              		.fpu softvfp
 926              		.type	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb, %function
 927              	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb:
 928              		@ args = 0, pretend = 0, frame = 0
 929              		@ frame_needed = 0, uses_anonymous_args = 0
 930 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 931 0004 0446     		mov	r4, r0
 932 0006 8069     		ldr	r0, [r0, #24]
 933 0008 0E46     		mov	r6, r1
 934 000a 2628     		cmp	r0, #38
 935 000c 36D9     		bls	.L113
 936 000e 4FF0000E 		mov	lr, #0
 937 0012 7146     		mov	r1, lr
 938 0014 7546     		mov	r5, lr
 939 0016 E368     		ldr	r3, [r4, #12]
 940              	.L114:
 941 0018 A06B     		ldr	r0, [r4, #56]
 942 001a 0EEB0308 		add	r8, lr, r3
 943 001e 8045     		cmp	r8, r0
 944 0020 E171     		strb	r1, [r4, #7]
 945 0022 6CD3     		bcc	.L141
 946              	.L121:
 947 0024 E36B     		ldr	r3, [r4, #60]
 948 0026 9845     		cmp	r8, r3
 949 0028 3DD2     		bcs	.L123
 950 002a 236C     		ldr	r3, [r4, #64]
 951 002c D6F8C410 		ldr	r1, [r6, #196]
 952 0030 A8FB0389 		umull	r8, r9, r8, r3
 953 0034 4FEA9820 		lsr	r0, r8, #10
 954 0038 40EA8950 		orr	r0, r0, r9, lsl #22
 955 003c A36C     		ldr	r3, [r4, #72]
 956 003e 0844     		add	r0, r0, r1
 957 0040 C71A     		subs	r7, r0, r3
 958              	.L122:
 959 0042 6369     		ldr	r3, [r4, #20]
 960 0044 9F42     		cmp	r7, r3
 961 0046 6ED9     		bls	.L135
 962              	.L143:
 963 0048 FB1A     		subs	r3, r7, r3
 964 004a 23FA05F5 		lsr	r5, r3, r5
 965 004e 0EFB05FE 		mul	lr, lr, r5
 966              	.L128:
 967 0052 D6F8B420 		ldr	r2, [r6, #180]
 968 0056 A7EB0E01 		sub	r1, r7, lr
 969 005a 9742     		cmp	r7, r2
ARM GAS  /tmp/ccNZUkY9.s 			page 18


 970 005c 6161     		str	r1, [r4, #20]
 971 005e A561     		str	r5, [r4, #24]
 972 0060 65D9     		bls	.L136
 973 0062 E368     		ldr	r3, [r4, #12]
 974 0064 A068     		ldr	r0, [r4, #8]
 975 0066 0133     		adds	r3, r3, #1
 976 0068 8342     		cmp	r3, r0
 977 006a 63D2     		bcs	.L142
 978 006c 0222     		movs	r2, #2
 979 006e 4B4B     		ldr	r3, .L145
 980 0070 2271     		strb	r2, [r4, #4]
 981 0072 0B44     		add	r3, r3, r1
 982 0074 A361     		str	r3, [r4, #24]
 983 0076 0020     		movs	r0, #0
 984 0078 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 985              	.L113:
 986 007c E368     		ldr	r3, [r4, #12]
 987 007e 2169     		ldr	r1, [r4, #16]
 988 0080 A568     		ldr	r5, [r4, #8]
 989 0082 8B42     		cmp	r3, r1
 990 0084 02D8     		bhi	.L117
 991 0086 8D42     		cmp	r5, r1
 992 0088 28BF     		it	cs
 993 008a 0D46     		movcs	r5, r1
 994              	.L117:
 995 008c 0828     		cmp	r0, #8
 996 008e A5EB0305 		sub	r5, r5, r3
 997 0092 26D8     		bhi	.L118
 998 0094 082D     		cmp	r5, #8
 999 0096 67D8     		bhi	.L132
 1000              	.L119:
 1001 0098 042D     		cmp	r5, #4
 1002 009a 24D9     		bls	.L120
 1003 009c 4FF0030E 		mov	lr, #3
 1004 00a0 0225     		movs	r5, #2
 1005 00a2 7146     		mov	r1, lr
 1006 00a4 B8E7     		b	.L114
 1007              	.L123:
 1008 00a6 2369     		ldr	r3, [r4, #16]
 1009 00a8 9845     		cmp	r8, r3
 1010 00aa 47D2     		bcs	.L124
 1011 00ac D4E908AB 		ldrd	r10, [r4, #32]
 1012 00b0 A06A     		ldr	r0, [r4, #40]
 1013 00b2 E36A     		ldr	r3, [r4, #44]
 1014 00b4 A0FB0801 		umull	r0, r1, r0, r8
 1015 00b8 08FB0311 		mla	r1, r8, r3, r1
 1016 00bc 626C     		ldr	r2, [r4, #68]
 1017 00be D6F8C030 		ldr	r3, [r6, #192]
 1018 00c2 5945     		cmp	r1, fp
 1019 00c4 08BF     		it	eq
 1020 00c6 5045     		cmpeq	r0, r10
 1021 00c8 A3EB0207 		sub	r7, r3, r2
 1022 00cc B9D2     		bcs	.L122
 1023 00ce BAEB0000 		subs	r0, r10, r0
 1024 00d2 6BEB0101 		sbc	r1, fp, r1
 1025 00d6 FFF7FEFF 		bl	_Z7isqrt64y
 1026 00da 94F807E0 		ldrb	lr, [r4, #7]	@ zero_extendqisi2
ARM GAS  /tmp/ccNZUkY9.s 			page 19


 1027 00de 3F1A     		subs	r7, r7, r0
 1028 00e0 AFE7     		b	.L122
 1029              	.L118:
 1030 00e2 1228     		cmp	r0, #18
 1031 00e4 D8D9     		bls	.L119
 1032              	.L120:
 1033 00e6 022D     		cmp	r5, #2
 1034 00e8 94BF     		ite	ls
 1035 00ea 0025     		movls	r5, #0
 1036 00ec 0125     		movhi	r5, #1
 1037 00ee AE46     		mov	lr, r5
 1038 00f0 2946     		mov	r1, r5
 1039 00f2 A06B     		ldr	r0, [r4, #56]
 1040 00f4 0EEB0308 		add	r8, lr, r3
 1041 00f8 8045     		cmp	r8, r0
 1042 00fa E171     		strb	r1, [r4, #7]
 1043 00fc 92D2     		bcs	.L121
 1044              	.L141:
 1045 00fe A06A     		ldr	r0, [r4, #40]
 1046 0100 E36A     		ldr	r3, [r4, #44]
 1047 0102 A0FB0801 		umull	r0, r1, r0, r8
 1048 0106 08FB0311 		mla	r1, r8, r3, r1
 1049 010a D6F8BC70 		ldr	r7, [r6, #188]
 1050 010e 636C     		ldr	r3, [r4, #68]
 1051 0110 1F44     		add	r7, r7, r3
 1052 0112 E7FB0701 		umlal	r0, r1, r7, r7
 1053 0116 FFF7FEFF 		bl	_Z7isqrt64y
 1054 011a 6369     		ldr	r3, [r4, #20]
 1055 011c C71B     		subs	r7, r0, r7
 1056 011e 9F42     		cmp	r7, r3
 1057 0120 94F807E0 		ldrb	lr, [r4, #7]	@ zero_extendqisi2
 1058 0124 90D8     		bhi	.L143
 1059              	.L135:
 1060 0126 4FF0000E 		mov	lr, #0
 1061 012a 7546     		mov	r5, lr
 1062 012c 91E7     		b	.L128
 1063              	.L136:
 1064 012e 0120     		movs	r0, #1
 1065 0130 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1066              	.L142:
 1067 0134 6261     		str	r2, [r4, #20]
 1068 0136 0120     		movs	r0, #1
 1069 0138 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1070              	.L124:
 1071 013c 19D0     		beq	.L144
 1072              	.L126:
 1073 013e D4E90C23 		ldrd	r2, [r4, #48]
 1074 0142 A06A     		ldr	r0, [r4, #40]
 1075 0144 E76A     		ldr	r7, [r4, #44]
 1076 0146 A0FB0801 		umull	r0, r1, r0, r8
 1077 014a 08FB0711 		mla	r1, r8, r7, r1
 1078 014e 801A     		subs	r0, r0, r2
 1079 0150 D6F8C070 		ldr	r7, [r6, #192]
 1080 0154 61EB0301 		sbc	r1, r1, r3
 1081 0158 636C     		ldr	r3, [r4, #68]
 1082 015a FF1A     		subs	r7, r7, r3
 1083 015c FFF7FEFF 		bl	_Z7isqrt64y
ARM GAS  /tmp/ccNZUkY9.s 			page 20


 1084 0160 94F807E0 		ldrb	lr, [r4, #7]	@ zero_extendqisi2
 1085 0164 0744     		add	r7, r7, r0
 1086 0166 6CE7     		b	.L122
 1087              	.L132:
 1088 0168 4FF0070E 		mov	lr, #7
 1089 016c 0325     		movs	r5, #3
 1090 016e 7146     		mov	r1, lr
 1091 0170 52E7     		b	.L114
 1092              	.L144:
 1093 0172 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 1094 0174 1946     		mov	r1, r3
 1095 0176 83F01003 		eor	r3, r3, #16
 1096 017a C3F30013 		ubfx	r3, r3, #4, #1
 1097 017e 63F30411 		bfi	r1, r3, #4, #1
 1098 0182 A171     		strb	r1, [r4, #6]
 1099 0184 002A     		cmp	r2, #0
 1100 0186 DAD0     		beq	.L126
 1101 0188 054B     		ldr	r3, .L145+4
 1102 018a CAB2     		uxtb	r2, r1
 1103 018c C2F30012 		ubfx	r2, r2, #4, #1
 1104 0190 1868     		ldr	r0, [r3]
 1105 0192 6179     		ldrb	r1, [r4, #5]	@ zero_extendqisi2
 1106 0194 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 1107 0198 D1E7     		b	.L126
 1108              	.L146:
 1109 019a 00BF     		.align	2
 1110              	.L145:
 1111 019c 80969800 		.word	10000000
 1112 01a0 00000000 		.word	reprap
 1113              		.size	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb, .-_ZN13DriveMovement29CalcNextSte
 1114              		.section	.text.hot._ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb,"ax",%progbits
 1115              		.align	1
 1116              		.p2align 2,,3
 1117              		.global	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb
 1118              		.syntax unified
 1119              		.thumb
 1120              		.thumb_func
 1121              		.fpu softvfp
 1122              		.type	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb, %function
 1123              	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb:
 1124              		@ args = 0, pretend = 0, frame = 0
 1125              		@ frame_needed = 0, uses_anonymous_args = 0
 1126 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1127 0004 0446     		mov	r4, r0
 1128 0006 8069     		ldr	r0, [r0, #24]
 1129 0008 8846     		mov	r8, r1
 1130 000a 2628     		cmp	r0, #38
 1131 000c 73D9     		bls	.L148
 1132 000e 0027     		movs	r7, #0
 1133 0010 4FF40076 		mov	r6, #512
 1134 0014 3D46     		mov	r5, r7
 1135 0016 E368     		ldr	r3, [r4, #12]
 1136 0018 2169     		ldr	r1, [r4, #16]
 1137              	.L149:
 1138 001a 8B42     		cmp	r3, r1
 1139 001c E771     		strb	r7, [r4, #7]
 1140 001e 00F0AA80 		beq	.L185
ARM GAS  /tmp/ccNZUkY9.s 			page 21


 1141              	.L159:
 1142 0022 94F806E0 		ldrb	lr, [r4, #6]	@ zero_extendqisi2
 1143 0026 A06B     		ldr	r0, [r4, #56]
 1144 0028 1EF0100E 		ands	lr, lr, #16
 1145 002c 08BF     		it	eq
 1146 002e 7642     		rsbeq	r6, r6, #0
 1147 0030 3044     		add	r0, r0, r6
 1148 0032 A063     		str	r0, [r4, #56]
 1149 0034 D8F89820 		ldr	r2, [r8, #152]
 1150 0038 80FB0223 		smull	r2, r3, r0, r2
 1151 003c 002A     		cmp	r2, #0
 1152 003e 73F10001 		sbcs	r1, r3, #0
 1153 0042 C0F2BF80 		blt	.L186
 1154              	.L162:
 1155 0046 D4E90C67 		ldrd	r6, [r4, #48]
 1156 004a 80FB0001 		smull	r0, r1, r0, r0
 1157 004e 301A     		subs	r0, r6, r0
 1158 0050 67EB0101 		sbc	r1, r7, r1
 1159 0054 170D     		lsrs	r7, r2, #20
 1160 0056 E26B     		ldr	r2, [r4, #60]
 1161 0058 47EA0337 		orr	r7, r7, r3, lsl #12
 1162 005c 1744     		add	r7, r7, r2
 1163 005e C7FB0701 		smlal	r0, r1, r7, r7
 1164 0062 0128     		cmp	r0, #1
 1165 0064 71F10003 		sbcs	r3, r1, #0
 1166 0068 C0F29380 		blt	.L178
 1167 006c FFF7FEFF 		bl	_Z7isqrt64y
 1168 0070 94F806E0 		ldrb	lr, [r4, #6]	@ zero_extendqisi2
 1169 0074 0EF0100E 		and	lr, lr, #16
 1170              	.L163:
 1171 0078 BEF1000F 		cmp	lr, #0
 1172 007c 50D0     		beq	.L164
 1173 007e A7EB000E 		sub	lr, r7, r0
 1174 0082 BEF1000F 		cmp	lr, #0
 1175 0086 50DB     		blt	.L187
 1176              	.L166:
 1177 0088 236C     		ldr	r3, [r4, #64]
 1178 008a 7345     		cmp	r3, lr
 1179 008c 00F28680 		bhi	.L188
 1180 0090 636C     		ldr	r3, [r4, #68]
 1181 0092 9E45     		cmp	lr, r3
 1182 0094 54D3     		bcc	.L189
 1183 0096 A26A     		ldr	r2, [r4, #40]
 1184 0098 E16A     		ldr	r1, [r4, #44]
 1185 009a A2FB0E23 		umull	r2, r3, r2, lr
 1186 009e 0EFB0133 		mla	r3, lr, r1, r3
 1187 00a2 D4E90801 		ldrd	r0, [r4, #32]
 1188 00a6 560A     		lsrs	r6, r2, #9
 1189 00a8 5F0A     		lsrs	r7, r3, #9
 1190 00aa 46EAC356 		orr	r6, r6, r3, lsl #23
 1191 00ae 8F42     		cmp	r7, r1
 1192 00b0 08BF     		it	eq
 1193 00b2 8642     		cmpeq	r6, r0
 1194 00b4 C0F09B80 		bcc	.L190
 1195 00b8 D8F8C000 		ldr	r0, [r8, #192]
 1196              	.L169:
 1197 00bc 6369     		ldr	r3, [r4, #20]
ARM GAS  /tmp/ccNZUkY9.s 			page 22


 1198 00be D8F8B410 		ldr	r1, [r8, #180]
 1199 00c2 9842     		cmp	r0, r3
 1200 00c4 92BF     		itee	ls
 1201 00c6 0025     		movls	r5, #0
 1202 00c8 C31A     		subhi	r3, r0, r3
 1203 00ca 23FA05F5 		lsrhi	r5, r3, r5
 1204 00ce E379     		ldrb	r3, [r4, #7]	@ zero_extendqisi2
 1205 00d0 8842     		cmp	r0, r1
 1206 00d2 05FB1303 		mls	r3, r5, r3, r0
 1207 00d6 A561     		str	r5, [r4, #24]
 1208 00d8 6361     		str	r3, [r4, #20]
 1209 00da 5CD9     		bls	.L180
 1210 00dc E268     		ldr	r2, [r4, #12]
 1211 00de A068     		ldr	r0, [r4, #8]
 1212 00e0 0132     		adds	r2, r2, #1
 1213 00e2 8242     		cmp	r2, r0
 1214 00e4 78D2     		bcs	.L191
 1215 00e6 0221     		movs	r1, #2
 1216 00e8 454A     		ldr	r2, .L192
 1217 00ea 2171     		strb	r1, [r4, #4]
 1218 00ec 1A44     		add	r2, r2, r3
 1219 00ee A261     		str	r2, [r4, #24]
 1220 00f0 0020     		movs	r0, #0
 1221 00f2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1222              	.L148:
 1223 00f6 E368     		ldr	r3, [r4, #12]
 1224 00f8 2169     		ldr	r1, [r4, #16]
 1225 00fa A568     		ldr	r5, [r4, #8]
 1226 00fc 8B42     		cmp	r3, r1
 1227 00fe 02D2     		bcs	.L152
 1228 0100 8D42     		cmp	r5, r1
 1229 0102 28BF     		it	cs
 1230 0104 0D46     		movcs	r5, r1
 1231              	.L152:
 1232 0106 0328     		cmp	r0, #3
 1233 0108 A5EB0305 		sub	r5, r5, r3
 1234 010c 22D8     		bhi	.L153
 1235 010e 102D     		cmp	r5, #16
 1236 0110 5DD8     		bhi	.L175
 1237              	.L154:
 1238 0112 082D     		cmp	r5, #8
 1239 0114 64D9     		bls	.L156
 1240 0116 4FF48056 		mov	r6, #4096
 1241 011a 0727     		movs	r7, #7
 1242 011c 0325     		movs	r5, #3
 1243 011e 7CE7     		b	.L149
 1244              	.L164:
 1245 0120 00EB070E 		add	lr, r0, r7
 1246 0124 BEF1000F 		cmp	lr, #0
 1247 0128 AEDA     		bge	.L166
 1248              	.L187:
 1249 012a 0222     		movs	r2, #2
 1250 012c E368     		ldr	r3, [r4, #12]
 1251 012e 2271     		strb	r2, [r4, #4]
 1252 0130 03F57423 		add	r3, r3, #999424
 1253 0134 03F51073 		add	r3, r3, #576
 1254 0138 E360     		str	r3, [r4, #12]
ARM GAS  /tmp/ccNZUkY9.s 			page 23


 1255 013a 0020     		movs	r0, #0
 1256 013c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1257              	.L189:
 1258 0140 A26C     		ldr	r2, [r4, #72]
 1259 0142 D8F8C400 		ldr	r0, [r8, #196]
 1260 0146 AEFB0223 		umull	r2, r3, lr, r2
 1261 014a D20C     		lsrs	r2, r2, #19
 1262 014c 42EA4332 		orr	r2, r2, r3, lsl #13
 1263 0150 1044     		add	r0, r0, r2
 1264 0152 B3E7     		b	.L169
 1265              	.L153:
 1266 0154 0828     		cmp	r0, #8
 1267 0156 DCD9     		bls	.L154
 1268 0158 1228     		cmp	r0, #18
 1269 015a 41D9     		bls	.L156
 1270              	.L157:
 1271 015c 022D     		cmp	r5, #2
 1272 015e 94BF     		ite	ls
 1273 0160 0025     		movls	r5, #0
 1274 0162 0125     		movhi	r5, #1
 1275 0164 4FF40070 		mov	r0, #512
 1276 0168 2F46     		mov	r7, r5
 1277 016a 8B42     		cmp	r3, r1
 1278 016c 00FA05F6 		lsl	r6, r0, r5
 1279 0170 E771     		strb	r7, [r4, #7]
 1280 0172 7FF456AF 		bne	.L159
 1281              	.L185:
 1282 0176 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 1283 0178 6FF30413 		bfc	r3, #4, #1
 1284 017c A371     		strb	r3, [r4, #6]
 1285 017e 002A     		cmp	r2, #0
 1286 0180 3FF44FAF 		beq	.L159
 1287 0184 1F4B     		ldr	r3, .L192+4
 1288 0186 0022     		movs	r2, #0
 1289 0188 1868     		ldr	r0, [r3]
 1290 018a 6179     		ldrb	r1, [r4, #5]	@ zero_extendqisi2
 1291 018c FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 1292 0190 47E7     		b	.L159
 1293              	.L178:
 1294 0192 0020     		movs	r0, #0
 1295 0194 70E7     		b	.L163
 1296              	.L180:
 1297 0196 0120     		movs	r0, #1
 1298 0198 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1299              	.L188:
 1300 019c A66A     		ldr	r6, [r4, #40]
 1301 019e E36A     		ldr	r3, [r4, #44]
 1302 01a0 A6FB0E67 		umull	r6, r7, r6, lr
 1303 01a4 0EFB0377 		mla	r7, lr, r3, r7
 1304 01a8 700A     		lsrs	r0, r6, #9
 1305 01aa D8F8BC30 		ldr	r3, [r8, #188]
 1306 01ae 40EAC750 		orr	r0, r0, r7, lsl #23
 1307 01b2 790A     		lsrs	r1, r7, #9
 1308 01b4 E3FB0301 		umlal	r0, r1, r3, r3
 1309 01b8 FFF7FEFF 		bl	_Z7isqrt64y
 1310 01bc D8F8BC30 		ldr	r3, [r8, #188]
 1311 01c0 C01A     		subs	r0, r0, r3
ARM GAS  /tmp/ccNZUkY9.s 			page 24


 1312 01c2 7BE7     		b	.L169
 1313              	.L186:
 1314 01c4 0027     		movs	r7, #0
 1315 01c6 104E     		ldr	r6, .L192+8
 1316 01c8 9219     		adds	r2, r2, r6
 1317 01ca 7B41     		adcs	r3, r3, r7
 1318 01cc 3BE7     		b	.L162
 1319              	.L175:
 1320 01ce 4FF40056 		mov	r6, #8192
 1321 01d2 0F27     		movs	r7, #15
 1322 01d4 0425     		movs	r5, #4
 1323 01d6 20E7     		b	.L149
 1324              	.L191:
 1325 01d8 6161     		str	r1, [r4, #20]
 1326 01da 0120     		movs	r0, #1
 1327 01dc BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1328              	.L156:
 1329 01e0 042D     		cmp	r5, #4
 1330 01e2 BBD9     		bls	.L157
 1331 01e4 4FF40066 		mov	r6, #2048
 1332 01e8 0327     		movs	r7, #3
 1333 01ea 0225     		movs	r5, #2
 1334 01ec 15E7     		b	.L149
 1335              	.L190:
 1336 01ee 801B     		subs	r0, r0, r6
 1337 01f0 61EB0701 		sbc	r1, r1, r7
 1338 01f4 D8F8C060 		ldr	r6, [r8, #192]
 1339 01f8 FFF7FEFF 		bl	_Z7isqrt64y
 1340 01fc 301A     		subs	r0, r6, r0
 1341 01fe 5DE7     		b	.L169
 1342              	.L193:
 1343              		.align	2
 1344              	.L192:
 1345 0200 80969800 		.word	10000000
 1346 0204 00000000 		.word	reprap
 1347 0208 FFFF0F00 		.word	1048575
 1348              		.size	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb, .-_ZN13DriveMovement25CalcNextStepTim
 1349              		.section	.text._ZN13DriveMovement11ReduceSpeedERK3DDAm,"ax",%progbits
 1350              		.align	1
 1351              		.p2align 2,,3
 1352              		.global	_ZN13DriveMovement11ReduceSpeedERK3DDAm
 1353              		.syntax unified
 1354              		.thumb
 1355              		.thumb_func
 1356              		.fpu softvfp
 1357              		.type	_ZN13DriveMovement11ReduceSpeedERK3DDAm, %function
 1358              	_ZN13DriveMovement11ReduceSpeedERK3DDAm:
 1359              		@ args = 0, pretend = 0, frame = 0
 1360              		@ frame_needed = 0, uses_anonymous_args = 0
 1361              		@ link register save eliminated.
 1362 0000 8B7A     		ldrb	r3, [r1, #10]	@ zero_extendqisi2
 1363 0002 10B4     		push	{r4}
 1364 0004 13F00203 		ands	r3, r3, #2
 1365 0008 09D1     		bne	.L198
 1366 000a 046C     		ldr	r4, [r0, #64]
 1367 000c 8168     		ldr	r1, [r0, #8]
 1368 000e 02FB04F2 		mul	r2, r2, r4
ARM GAS  /tmp/ccNZUkY9.s 			page 25


 1369 0012 0131     		adds	r1, r1, #1
 1370 0014 8363     		str	r3, [r0, #56]
 1371 0016 0264     		str	r2, [r0, #64]
 1372 0018 C163     		str	r1, [r0, #60]
 1373 001a 10BC     		pop	{r4}
 1374 001c 7047     		bx	lr
 1375              	.L198:
 1376 001e 0024     		movs	r4, #0
 1377 0020 4FF0FF33 		mov	r3, #-1
 1378 0024 816C     		ldr	r1, [r0, #72]
 1379 0026 0464     		str	r4, [r0, #64]
 1380 0028 02FB01F2 		mul	r2, r2, r1
 1381 002c 4364     		str	r3, [r0, #68]
 1382 002e 8264     		str	r2, [r0, #72]
 1383 0030 10BC     		pop	{r4}
 1384 0032 7047     		bx	lr
 1385              		.size	_ZN13DriveMovement11ReduceSpeedERK3DDAm, .-_ZN13DriveMovement11ReduceSpeedERK3DDAm
 1386              		.global	_ZN13DriveMovement7minFreeE
 1387              		.global	_ZN13DriveMovement7numFreeE
 1388              		.global	_ZN13DriveMovement8freeListE
 1389              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1390              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1391              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1392              	_ZL28cpu_irq_prev_interrupt_state:
 1393 0000 00       		.space	1
 1394              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1395              		.align	2
 1396              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1397              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1398              	_ZL32cpu_irq_critical_section_counter:
 1399 0000 00000000 		.space	4
 1400              		.section	.bss._ZN13DriveMovement7minFreeE,"aw",%nobits
 1401              		.align	2
 1402              		.set	.LANCHOR2,. + 0
 1403              		.type	_ZN13DriveMovement7minFreeE, %object
 1404              		.size	_ZN13DriveMovement7minFreeE, 4
 1405              	_ZN13DriveMovement7minFreeE:
 1406 0000 00000000 		.space	4
 1407              		.section	.bss._ZN13DriveMovement7numFreeE,"aw",%nobits
 1408              		.align	2
 1409              		.set	.LANCHOR0,. + 0
 1410              		.type	_ZN13DriveMovement7numFreeE, %object
 1411              		.size	_ZN13DriveMovement7numFreeE, 4
 1412              	_ZN13DriveMovement7numFreeE:
 1413 0000 00000000 		.space	4
 1414              		.section	.bss._ZN13DriveMovement8freeListE,"aw",%nobits
 1415              		.align	2
 1416              		.set	.LANCHOR1,. + 0
 1417              		.type	_ZN13DriveMovement8freeListE, %object
 1418              		.size	_ZN13DriveMovement8freeListE, 4
 1419              	_ZN13DriveMovement8freeListE:
 1420 0000 00000000 		.space	4
 1421              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1422              		.align	2
 1423              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1424              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1425              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
ARM GAS  /tmp/ccNZUkY9.s 			page 26


 1426 0000 00000000 		.space	4
 1427              		.section	.rodata._ZNK13DriveMovement10DebugPrintEcb.str1.4,"aMS",%progbits,1
 1428              		.align	2
 1429              	.LC0:
 1430 0000 20455252 		.ascii	" ERR:\000"
 1430      3A00
 1431 0006 0000     		.space	2
 1432              	.LC1:
 1433 0008 3A00     		.ascii	":\000"
 1434 000a 0000     		.space	2
 1435              	.LC2:
 1436 000c 444D2563 		.ascii	"DM%c%s dir=%c steps=%lu next=%lu rev=%lu interval=%"
 1436      25732064 
 1436      69723D25 
 1436      63207374 
 1436      6570733D 
 1437 003f 6C752032 		.ascii	"lu 2dtstc2diva=%llu\012\000"
 1437      64747374 
 1437      63326469 
 1437      76613D25 
 1437      6C6C750A 
 1438              	.LC3:
 1439 0054 686D7A30 		.ascii	"hmz0sK=%li minusAaPlusBbTimesKs=%li dSquaredMinusAs"
 1439      734B3D25 
 1439      6C69206D 
 1439      696E7573 
 1439      4161506C 
 1440 0087 71756172 		.ascii	"quaredMinusBsquared=%lld\0122c2mmsda=%llu asdsk=%lu"
 1440      65644D69 
 1440      6E757342 
 1440      73717561 
 1440      7265643D 
 1441 00b7 20647364 		.ascii	" dsdsk=%lu mmstcdts=%lu\012\000"
 1441      736B3D25 
 1441      6C75206D 
 1441      6D737463 
 1441      6474733D 
 1442              	.LC4:
 1443 00d0 61636365 		.ascii	"accelStopStep=%lu decelStartStep=%lu 2CsqtMmPerStep"
 1443      6C53746F 
 1443      70537465 
 1443      703D256C 
 1443      75206465 
 1444 0103 44697641 		.ascii	"DivA=%llu\012mmPerStepTimesCdivtopSpeed=%lu fmsdmts"
 1444      3D256C6C 
 1444      750A6D6D 
 1444      50657253 
 1444      74657054 
 1445 0133 74646361 		.ascii	"tdca2=%lld cc=%lu acc=%lu\012\000"
 1445      323D256C 
 1445      6C642063 
 1445      633D256C 
 1445      75206163 
 1446 014e 0000     		.space	2
 1447              	.LC5:
 1448 0150 444D2563 		.ascii	"DM%c: not moving\012\000"
 1448      3A206E6F 
ARM GAS  /tmp/ccNZUkY9.s 			page 27


 1448      74206D6F 
 1448      76696E67 
 1448      0A00
 1449              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
