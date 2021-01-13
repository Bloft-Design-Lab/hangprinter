ARM GAS  /tmp/ccQ5JqMd.s 			page 1


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
  11              		.file	"Tool.cpp"
  12              		.section	.text._ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef, %function
  21              	_ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef:
  22              		@ args = 24, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  25 0004 1E46     		mov	r6, r3
  26 0006 654B     		ldr	r3, .L56
  27 0008 062E     		cmp	r6, #6
  28 000a 1B69     		ldr	r3, [r3, #16]	@ unaligned
  29 000c 8146     		mov	r9, r0
  30 000e 099F     		ldr	r7, [sp, #36]
  31 0010 D3F80002 		ldr	r0, [r3, #512]
  32 0014 00F29C80 		bhi	.L52
  33 0018 042F     		cmp	r7, #4
  34 001a 00F29F80 		bhi	.L4
  35 001e 8846     		mov	r8, r1
  36 0020 1546     		mov	r5, r2
  37 0022 86B1     		cbz	r6, .L5
  38 0024 1368     		ldr	r3, [r2]
  39 0026 002B     		cmp	r3, #0
  40 0028 77DB     		blt	.L7
  41 002a 8342     		cmp	r3, r0
  42 002c 75DA     		bge	.L7
  43 002e 0432     		adds	r2, r2, #4
  44 0030 05EB8604 		add	r4, r5, r6, lsl #2
  45 0034 05E0     		b	.L11
  46              	.L48:
  47 0036 52F8041B 		ldr	r1, [r2], #4
  48 003a 0029     		cmp	r1, #0
  49 003c 6DDB     		blt	.L7
  50 003e 8142     		cmp	r1, r0
  51 0040 6BDA     		bge	.L7
  52              	.L11:
  53 0042 A242     		cmp	r2, r4
  54 0044 F7D1     		bne	.L48
  55              	.L5:
  56 0046 7FB1     		cbz	r7, .L9
  57 0048 089B     		ldr	r3, [sp, #32]
ARM GAS  /tmp/ccQ5JqMd.s 			page 2


  58 004a 1B68     		ldr	r3, [r3]
  59 004c 032B     		cmp	r3, #3
  60 004e 6CD8     		bhi	.L13
  61 0050 089B     		ldr	r3, [sp, #32]
  62 0052 089A     		ldr	r2, [sp, #32]
  63 0054 0433     		adds	r3, r3, #4
  64 0056 02EB8701 		add	r1, r2, r7, lsl #2
  65 005a 03E0     		b	.L15
  66              	.L16:
  67 005c 53F8042B 		ldr	r2, [r3], #4
  68 0060 032A     		cmp	r2, #3
  69 0062 62D8     		bhi	.L13
  70              	.L15:
  71 0064 8B42     		cmp	r3, r1
  72 0066 F9D1     		bne	.L16
  73              	.L9:
  74 0068 4D4B     		ldr	r3, .L56+4
  75 006a 1C68     		ldr	r4, [r3]
  76 006c 002C     		cmp	r4, #0
  77 006e 7BD0     		beq	.L17
  78 0070 2268     		ldr	r2, [r4]
  79 0072 1A60     		str	r2, [r3]
  80              	.L31:
  81 0074 012E     		cmp	r6, #1
  82 0076 7FD0     		beq	.L53
  83 0078 0023     		movs	r3, #0
  84 007a 6360     		str	r3, [r4, #4]
  85              	.L20:
  86 007c 4046     		mov	r0, r8
  87 007e FFF7FEFF 		bl	strlen
  88 0082 0028     		cmp	r0, #0
  89 0084 59D1     		bne	.L54
  90 0086 A060     		str	r0, [r4, #8]
  91              	.L22:
  92 0088 0022     		movs	r2, #0
  93 008a 0023     		movs	r3, #0
  94 008c 0A99     		ldr	r1, [sp, #40]
  95 008e C4F86490 		str	r9, [r4, #100]
  96 0092 A166     		str	r1, [r4, #104]
  97 0094 0B99     		ldr	r1, [sp, #44]
  98 0096 E665     		str	r6, [r4, #92]
  99 0098 E166     		str	r1, [r4, #108]
 100 009a 0C99     		ldr	r1, [sp, #48]
 101 009c 2766     		str	r7, [r4, #96]
 102 009e 6167     		str	r1, [r4, #116]
 103 00a0 2360     		str	r3, [r4]
 104 00a2 84F88230 		strb	r3, [r4, #130]
 105 00a6 84F88330 		strb	r3, [r4, #131]
 106 00aa 2367     		str	r3, [r4, #112]
 107 00ac 84F88430 		strb	r3, [r4, #132]
 108 00b0 E260     		str	r2, [r4, #12]	@ float
 109 00b2 2261     		str	r2, [r4, #16]	@ float
 110 00b4 6261     		str	r2, [r4, #20]	@ float
 111 00b6 A261     		str	r2, [r4, #24]	@ float
 112 00b8 E261     		str	r2, [r4, #28]	@ float
 113 00ba 2262     		str	r2, [r4, #32]	@ float
 114 00bc A6B1     		cbz	r6, .L27
ARM GAS  /tmp/ccQ5JqMd.s 			page 3


 115 00be 4FF07E58 		mov	r8, #1065353216
 116 00c2 05EB860C 		add	ip, r5, r6, lsl #2
 117 00c6 04F17800 		add	r0, r4, #120
 118 00ca 04F12401 		add	r1, r4, #36
 119              	.L28:
 120 00ce 55F8046B 		ldr	r6, [r5], #4
 121 00d2 00F8016B 		strb	r6, [r0], #1
 122 00d6 002B     		cmp	r3, #0
 123 00d8 5DD0     		beq	.L33
 124 00da 9646     		mov	lr, r2
 125              	.L26:
 126 00dc 6545     		cmp	r5, ip
 127 00de 41F804EB 		str	lr, [r1], #4	@ float
 128 00e2 03F10103 		add	r3, r3, #1
 129 00e6 F2D1     		bne	.L28
 130              	.L27:
 131 00e8 87B1     		cbz	r7, .L29
 132 00ea 089B     		ldr	r3, [sp, #32]
 133 00ec 2D48     		ldr	r0, .L56+8
 134 00ee 03EB8707 		add	r7, r3, r7, lsl #2
 135 00f2 04F17E01 		add	r1, r4, #126
 136 00f6 04F13C02 		add	r2, r4, #60
 137              	.L30:
 138 00fa 53F8045B 		ldr	r5, [r3], #4
 139 00fe 01F8015B 		strb	r5, [r1], #1
 140 0102 9F42     		cmp	r7, r3
 141 0104 42F8040B 		str	r0, [r2], #4	@ float
 142 0108 D060     		str	r0, [r2, #12]	@ float
 143 010a F6D1     		bne	.L30
 144              	.L29:
 145 010c 6068     		ldr	r0, [r4, #4]
 146 010e 48B1     		cbz	r0, .L1
 147 0110 FFF7FEFF 		bl	_ZN8Filament14LoadAssignmentEv
 148 0114 2046     		mov	r0, r4
 149 0116 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 150              	.L7:
 151 011a 2349     		ldr	r1, .L56+12
 152 011c 0D98     		ldr	r0, [sp, #52]
 153 011e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 154 0122 0024     		movs	r4, #0
 155              	.L1:
 156 0124 2046     		mov	r0, r4
 157 0126 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 158              	.L13:
 159 012a 0024     		movs	r4, #0
 160 012c 1F49     		ldr	r1, .L56+16
 161 012e 0D98     		ldr	r0, [sp, #52]
 162 0130 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 163 0134 2046     		mov	r0, r4
 164 0136 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 165              	.L54:
 166 013a 00F1010A 		add	r10, r0, #1
 167 013e 5046     		mov	r0, r10
 168 0140 FFF7FEFF 		bl	_Znaj
 169 0144 5246     		mov	r2, r10
 170 0146 A060     		str	r0, [r4, #8]
 171 0148 4146     		mov	r1, r8
ARM GAS  /tmp/ccQ5JqMd.s 			page 4


 172 014a FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 173 014e 9BE7     		b	.L22
 174              	.L52:
 175 0150 1749     		ldr	r1, .L56+20
 176 0152 0D98     		ldr	r0, [sp, #52]
 177 0154 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 178 0158 0024     		movs	r4, #0
 179 015a E3E7     		b	.L1
 180              	.L4:
 181 015c 1549     		ldr	r1, .L56+24
 182 015e 0D98     		ldr	r0, [sp, #52]
 183 0160 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 184 0164 0024     		movs	r4, #0
 185 0166 DDE7     		b	.L1
 186              	.L17:
 187 0168 8820     		movs	r0, #136
 188 016a FFF7FEFF 		bl	_Znwj
 189 016e 0460     		str	r4, [r0]
 190 0170 4460     		str	r4, [r0, #4]
 191 0172 8460     		str	r4, [r0, #8]
 192 0174 0446     		mov	r4, r0
 193 0176 7DE7     		b	.L31
 194              	.L53:
 195 0178 2868     		ldr	r0, [r5]
 196 017a FFF7FEFF 		bl	_ZN8Filament21GetFilamentByExtruderEi
 197 017e 08B1     		cbz	r0, .L55
 198              	.L19:
 199 0180 6060     		str	r0, [r4, #4]
 200 0182 7BE7     		b	.L20
 201              	.L55:
 202 0184 2820     		movs	r0, #40
 203 0186 FFF7FEFF 		bl	_Znwj
 204 018a 8246     		mov	r10, r0
 205 018c 2968     		ldr	r1, [r5]
 206 018e FFF7FEFF 		bl	_ZN8FilamentC1Ei
 207 0192 5046     		mov	r0, r10
 208 0194 F4E7     		b	.L19
 209              	.L33:
 210 0196 C646     		mov	lr, r8
 211 0198 A0E7     		b	.L26
 212              	.L57:
 213 019a 00BF     		.align	2
 214              	.L56:
 215 019c 00000000 		.word	reprap
 216 01a0 00000000 		.word	.LANCHOR0
 217 01a4 339388C3 		.word	-1014459597
 218 01a8 40000000 		.word	.LC2
 219 01ac 60000000 		.word	.LC3
 220 01b0 00000000 		.word	.LC0
 221 01b4 20000000 		.word	.LC1
 222              		.size	_ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef, .-_ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef
 223              		.section	.text._ZN4Tool6DeleteEPS_,"ax",%progbits
 224              		.align	1
 225              		.p2align 2,,3
 226              		.global	_ZN4Tool6DeleteEPS_
 227              		.syntax unified
 228              		.thumb
ARM GAS  /tmp/ccQ5JqMd.s 			page 5


 229              		.thumb_func
 230              		.fpu softvfp
 231              		.type	_ZN4Tool6DeleteEPS_, %function
 232              	_ZN4Tool6DeleteEPS_:
 233              		@ args = 0, pretend = 0, frame = 0
 234              		@ frame_needed = 0, uses_anonymous_args = 0
 235 0000 68B1     		cbz	r0, .L64
 236 0002 10B5     		push	{r4, lr}
 237 0004 0121     		movs	r1, #1
 238 0006 0446     		mov	r4, r0
 239 0008 8068     		ldr	r0, [r0, #8]
 240 000a FFF7FEFF 		bl	_ZdlPvj
 241 000e 0022     		movs	r2, #0
 242 0010 034B     		ldr	r3, .L67
 243 0012 A260     		str	r2, [r4, #8]
 244 0014 1968     		ldr	r1, [r3]
 245 0016 84E80600 		stm	r4, {r1, r2}
 246 001a 1C60     		str	r4, [r3]
 247 001c 10BD     		pop	{r4, pc}
 248              	.L64:
 249 001e 7047     		bx	lr
 250              	.L68:
 251              		.align	2
 252              	.L67:
 253 0020 00000000 		.word	.LANCHOR0
 254              		.size	_ZN4Tool6DeleteEPS_, .-_ZN4Tool6DeleteEPS_
 255              		.global	__aeabi_f2d
 256              		.section	.text._ZNK4Tool5PrintERK9StringRef,"ax",%progbits
 257              		.align	1
 258              		.p2align 2,,3
 259              		.global	_ZNK4Tool5PrintERK9StringRef
 260              		.syntax unified
 261              		.thumb
 262              		.thumb_func
 263              		.fpu softvfp
 264              		.type	_ZNK4Tool5PrintERK9StringRef, %function
 265              	_ZNK4Tool5PrintERK9StringRef:
 266              		@ args = 0, pretend = 0, frame = 0
 267              		@ frame_needed = 0, uses_anonymous_args = 0
 268 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 269 0004 0446     		mov	r4, r0
 270 0006 426E     		ldr	r2, [r0, #100]
 271 0008 85B0     		sub	sp, sp, #20
 272 000a 0846     		mov	r0, r1
 273 000c 0E46     		mov	r6, r1
 274 000e 5E49     		ldr	r1, .L111
 275 0010 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 276 0014 A268     		ldr	r2, [r4, #8]
 277 0016 1AB1     		cbz	r2, .L70
 278 0018 5C49     		ldr	r1, .L111+4
 279 001a 3046     		mov	r0, r6
 280 001c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 281              	.L70:
 282 0020 5B49     		ldr	r1, .L111+8
 283 0022 3046     		mov	r0, r6
 284 0024 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 285 0028 E36D     		ldr	r3, [r4, #92]
ARM GAS  /tmp/ccQ5JqMd.s 			page 6


 286 002a 8BB1     		cbz	r3, .L74
 287 002c 0025     		movs	r5, #0
 288 002e 2022     		movs	r2, #32
 289 0030 DFF88481 		ldr	r8, .L111+48
 290 0034 04F17807 		add	r7, r4, #120
 291              	.L75:
 292 0038 17F8013B 		ldrb	r3, [r7], #1	@ zero_extendqisi2
 293 003c 4146     		mov	r1, r8
 294 003e 3046     		mov	r0, r6
 295 0040 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 296 0044 E36D     		ldr	r3, [r4, #92]
 297 0046 0135     		adds	r5, r5, #1
 298 0048 AB42     		cmp	r3, r5
 299 004a 4FF02C02 		mov	r2, #44
 300 004e F3D8     		bhi	.L75
 301              	.L74:
 302 0050 5049     		ldr	r1, .L111+12
 303 0052 3046     		mov	r0, r6
 304 0054 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 305 0058 236E     		ldr	r3, [r4, #96]
 306 005a 0BB3     		cbz	r3, .L72
 307 005c 0025     		movs	r5, #0
 308 005e 4FF02008 		mov	r8, #32
 309 0062 DFF858A1 		ldr	r10, .L111+52
 310 0066 04F13C07 		add	r7, r4, #60
 311              	.L77:
 312 006a 57F804BB 		ldr	fp, [r7], #4	@ float
 313 006e 6319     		adds	r3, r4, r5
 314 0070 F868     		ldr	r0, [r7, #12]	@ float
 315 0072 93F97E90 		ldrsb	r9, [r3, #126]
 316 0076 FFF7FEFF 		bl	__aeabi_f2d
 317 007a CDE90201 		strd	r0, [sp, #8]
 318 007e 5846     		mov	r0, fp
 319 0080 FFF7FEFF 		bl	__aeabi_f2d
 320 0084 4B46     		mov	r3, r9
 321 0086 CDE90001 		strd	r0, [sp]
 322 008a 4246     		mov	r2, r8
 323 008c 5146     		mov	r1, r10
 324 008e 3046     		mov	r0, r6
 325 0090 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 326 0094 236E     		ldr	r3, [r4, #96]
 327 0096 0135     		adds	r5, r5, #1
 328 0098 AB42     		cmp	r3, r5
 329 009a 4FF02C08 		mov	r8, #44
 330 009e E4D8     		bhi	.L77
 331              	.L72:
 332 00a0 3D49     		ldr	r1, .L111+16
 333 00a2 3046     		mov	r0, r6
 334 00a4 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 335 00a8 0025     		movs	r5, #0
 336 00aa 2022     		movs	r2, #32
 337 00ac 0127     		movs	r7, #1
 338 00ae DFF81091 		ldr	r9, .L111+56
 339 00b2 DFF81081 		ldr	r8, .L111+60
 340 00b6 02E0     		b	.L76
 341              	.L78:
 342 00b8 0135     		adds	r5, r5, #1
ARM GAS  /tmp/ccQ5JqMd.s 			page 7


 343 00ba 062D     		cmp	r5, #6
 344 00bc 12D0     		beq	.L106
 345              	.L76:
 346 00be A36E     		ldr	r3, [r4, #104]
 347 00c0 07FA05F1 		lsl	r1, r7, r5
 348 00c4 1942     		tst	r1, r3
 349 00c6 F7D0     		beq	.L78
 350 00c8 D9F81030 		ldr	r3, [r9, #16]
 351 00cc 4146     		mov	r1, r8
 352 00ce 2B44     		add	r3, r3, r5
 353 00d0 93F87232 		ldrb	r3, [r3, #626]	@ zero_extendqisi2
 354 00d4 3046     		mov	r0, r6
 355 00d6 0135     		adds	r5, r5, #1
 356 00d8 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 357 00dc 062D     		cmp	r5, #6
 358 00de 4FF02C02 		mov	r2, #44
 359 00e2 ECD1     		bne	.L76
 360              	.L106:
 361 00e4 2D49     		ldr	r1, .L111+20
 362 00e6 3046     		mov	r0, r6
 363 00e8 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 364 00ec 0025     		movs	r5, #0
 365 00ee 2022     		movs	r2, #32
 366 00f0 0127     		movs	r7, #1
 367 00f2 DFF8CC90 		ldr	r9, .L111+56
 368 00f6 DFF8CC80 		ldr	r8, .L111+60
 369 00fa 02E0     		b	.L80
 370              	.L79:
 371 00fc 0135     		adds	r5, r5, #1
 372 00fe 062D     		cmp	r5, #6
 373 0100 12D0     		beq	.L107
 374              	.L80:
 375 0102 E36E     		ldr	r3, [r4, #108]
 376 0104 07FA05F1 		lsl	r1, r7, r5
 377 0108 1942     		tst	r1, r3
 378 010a F7D0     		beq	.L79
 379 010c D9F81030 		ldr	r3, [r9, #16]
 380 0110 4146     		mov	r1, r8
 381 0112 2B44     		add	r3, r3, r5
 382 0114 93F87232 		ldrb	r3, [r3, #626]	@ zero_extendqisi2
 383 0118 3046     		mov	r0, r6
 384 011a 0135     		adds	r5, r5, #1
 385 011c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 386 0120 062D     		cmp	r5, #6
 387 0122 4FF02C02 		mov	r2, #44
 388 0126 ECD1     		bne	.L80
 389              	.L107:
 390 0128 1D49     		ldr	r1, .L111+24
 391 012a 3046     		mov	r0, r6
 392 012c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 393 0130 636F     		ldr	r3, [r4, #116]
 394 0132 DA07     		lsls	r2, r3, #31
 395 0134 13D4     		bmi	.L108
 396 0136 9B07     		lsls	r3, r3, #30
 397 0138 4FF02002 		mov	r2, #32
 398 013c 19D4     		bmi	.L109
 399              	.L82:
ARM GAS  /tmp/ccQ5JqMd.s 			page 8


 400 013e 94F88230 		ldrb	r3, [r4, #130]	@ zero_extendqisi2
 401 0142 012B     		cmp	r3, #1
 402 0144 1ED0     		beq	.L85
 403              	.L110:
 404 0146 174A     		ldr	r2, .L111+28
 405 0148 1749     		ldr	r1, .L111+32
 406 014a 022B     		cmp	r3, #2
 407 014c 08BF     		it	eq
 408 014e 0A46     		moveq	r2, r1
 409              	.L83:
 410 0150 3046     		mov	r0, r6
 411 0152 1649     		ldr	r1, .L111+36
 412 0154 05B0     		add	sp, sp, #20
 413              		@ sp needed
 414 0156 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 415 015a FFF7FEBF 		b	_ZNK9StringRef4catfEPKcz
 416              	.L108:
 417 015e 0023     		movs	r3, #0
 418 0160 2022     		movs	r2, #32
 419 0162 1349     		ldr	r1, .L111+40
 420 0164 3046     		mov	r0, r6
 421 0166 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 422 016a 636F     		ldr	r3, [r4, #116]
 423 016c 2C22     		movs	r2, #44
 424 016e 9B07     		lsls	r3, r3, #30
 425 0170 E5D5     		bpl	.L82
 426              	.L109:
 427 0172 0123     		movs	r3, #1
 428 0174 0E49     		ldr	r1, .L111+40
 429 0176 3046     		mov	r0, r6
 430 0178 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 431 017c 94F88230 		ldrb	r3, [r4, #130]	@ zero_extendqisi2
 432 0180 012B     		cmp	r3, #1
 433 0182 E0D1     		bne	.L110
 434              	.L85:
 435 0184 0B4A     		ldr	r2, .L111+44
 436 0186 E3E7     		b	.L83
 437              	.L112:
 438              		.align	2
 439              	.L111:
 440 0188 18000000 		.word	.LC7
 441 018c 24000000 		.word	.LC8
 442 0190 30000000 		.word	.LC9
 443 0194 38000000 		.word	.LC10
 444 0198 64000000 		.word	.LC12
 445 019c 88000000 		.word	.LC15
 446 01a0 90000000 		.word	.LC16
 447 01a4 00000000 		.word	.LC4
 448 01a8 10000000 		.word	.LC6
 449 01ac A0000000 		.word	.LC18
 450 01b0 98000000 		.word	.LC17
 451 01b4 04000000 		.word	.LC5
 452 01b8 5C000000 		.word	.LC11
 453 01bc 6C000000 		.word	.LC13
 454 01c0 00000000 		.word	reprap
 455 01c4 80000000 		.word	.LC14
 456              		.size	_ZNK4Tool5PrintERK9StringRef, .-_ZNK4Tool5PrintERK9StringRef
ARM GAS  /tmp/ccQ5JqMd.s 			page 9


 457              		.global	__aeabi_fcmpgt
 458              		.section	.text._ZNK4Tool11MaxFeedrateEv,"ax",%progbits
 459              		.align	1
 460              		.p2align 2,,3
 461              		.global	_ZNK4Tool11MaxFeedrateEv
 462              		.syntax unified
 463              		.thumb
 464              		.thumb_func
 465              		.fpu softvfp
 466              		.type	_ZNK4Tool11MaxFeedrateEv, %function
 467              	_ZNK4Tool11MaxFeedrateEv:
 468              		@ args = 0, pretend = 0, frame = 0
 469              		@ frame_needed = 0, uses_anonymous_args = 0
 470 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 471 0004 C56D     		ldr	r5, [r0, #92]
 472 0006 144B     		ldr	r3, .L122
 473 0008 DDB1     		cbz	r5, .L121
 474 000a 0026     		movs	r6, #0
 475 000c 1A69     		ldr	r2, [r3, #16]
 476 000e 7835     		adds	r5, r5, #120
 477 0010 D3F80080 		ldr	r8, [r3]
 478 0014 D2F8F871 		ldr	r7, [r2, #504]
 479 0018 0544     		add	r5, r5, r0
 480 001a 00F17804 		add	r4, r0, #120
 481              	.L117:
 482 001e 14F8013B 		ldrb	r3, [r4], #1	@ zero_extendqisi2
 483 0022 3146     		mov	r1, r6
 484 0024 3B44     		add	r3, r3, r7
 485 0026 08EB8303 		add	r3, r8, r3, lsl #2
 486 002a D3F8D490 		ldr	r9, [r3, #212]	@ float
 487 002e 4846     		mov	r0, r9
 488 0030 FFF7FEFF 		bl	__aeabi_fcmpgt
 489 0034 00B1     		cbz	r0, .L116
 490 0036 4E46     		mov	r6, r9
 491              	.L116:
 492 0038 A542     		cmp	r5, r4
 493 003a F0D1     		bne	.L117
 494 003c 3046     		mov	r0, r6
 495 003e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 496              	.L121:
 497 0042 4FF07E56 		mov	r6, #1065353216
 498 0046 1868     		ldr	r0, [r3]
 499 0048 044A     		ldr	r2, .L122+4
 500 004a 40F2B511 		movw	r1, #437
 501 004e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 502 0052 3046     		mov	r0, r6
 503 0054 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 504              	.L123:
 505              		.align	2
 506              	.L122:
 507 0058 00000000 		.word	reprap
 508 005c 00000000 		.word	.LC19
 509              		.size	_ZNK4Tool11MaxFeedrateEv, .-_ZNK4Tool11MaxFeedrateEv
 510              		.section	.text._ZN4Tool20FlagTemperatureFaultEa,"ax",%progbits
 511              		.align	1
 512              		.p2align 2,,3
 513              		.global	_ZN4Tool20FlagTemperatureFaultEa
ARM GAS  /tmp/ccQ5JqMd.s 			page 10


 514              		.syntax unified
 515              		.thumb
 516              		.thumb_func
 517              		.fpu softvfp
 518              		.type	_ZN4Tool20FlagTemperatureFaultEa, %function
 519              	_ZN4Tool20FlagTemperatureFaultEa:
 520              		@ args = 0, pretend = 0, frame = 0
 521              		@ frame_needed = 0, uses_anonymous_args = 0
 522              		@ link register save eliminated.
 523 0000 30B4     		push	{r4, r5}
 524 0002 0125     		movs	r5, #1
 525              	.L130:
 526 0004 046E     		ldr	r4, [r0, #96]
 527 0006 74B1     		cbz	r4, .L125
 528 0008 90F97E30 		ldrsb	r3, [r0, #126]
 529 000c 8B42     		cmp	r3, r1
 530 000e 0FD0     		beq	.L126
 531 0010 7E34     		adds	r4, r4, #126
 532 0012 0444     		add	r4, r4, r0
 533 0014 00F17F03 		add	r3, r0, #127
 534 0018 03E0     		b	.L128
 535              	.L129:
 536 001a 13F9012B 		ldrsb	r2, [r3], #1
 537 001e 9142     		cmp	r1, r2
 538 0020 06D0     		beq	.L126
 539              	.L128:
 540 0022 A342     		cmp	r3, r4
 541 0024 F9D1     		bne	.L129
 542              	.L125:
 543 0026 0068     		ldr	r0, [r0]
 544 0028 0028     		cmp	r0, #0
 545 002a EBD1     		bne	.L130
 546              	.L138:
 547 002c 30BC     		pop	{r4, r5}
 548 002e 7047     		bx	lr
 549              	.L126:
 550 0030 80F88350 		strb	r5, [r0, #131]
 551 0034 0068     		ldr	r0, [r0]
 552 0036 0028     		cmp	r0, #0
 553 0038 E4D1     		bne	.L130
 554 003a F7E7     		b	.L138
 555              		.size	_ZN4Tool20FlagTemperatureFaultEa, .-_ZN4Tool20FlagTemperatureFaultEa
 556              		.section	.text._ZN4Tool21ClearTemperatureFaultEa,"ax",%progbits
 557              		.align	1
 558              		.p2align 2,,3
 559              		.global	_ZN4Tool21ClearTemperatureFaultEa
 560              		.syntax unified
 561              		.thumb
 562              		.thumb_func
 563              		.fpu softvfp
 564              		.type	_ZN4Tool21ClearTemperatureFaultEa, %function
 565              	_ZN4Tool21ClearTemperatureFaultEa:
 566              		@ args = 0, pretend = 0, frame = 0
 567              		@ frame_needed = 0, uses_anonymous_args = 0
 568              		@ link register save eliminated.
 569 0000 30B4     		push	{r4, r5}
 570 0002 0025     		movs	r5, #0
ARM GAS  /tmp/ccQ5JqMd.s 			page 11


 571              	.L145:
 572 0004 046E     		ldr	r4, [r0, #96]
 573 0006 74B1     		cbz	r4, .L140
 574 0008 90F97E30 		ldrsb	r3, [r0, #126]
 575 000c 8B42     		cmp	r3, r1
 576 000e 0FD0     		beq	.L141
 577 0010 7E34     		adds	r4, r4, #126
 578 0012 0444     		add	r4, r4, r0
 579 0014 00F17F03 		add	r3, r0, #127
 580 0018 03E0     		b	.L143
 581              	.L144:
 582 001a 13F9012B 		ldrsb	r2, [r3], #1
 583 001e 9142     		cmp	r1, r2
 584 0020 06D0     		beq	.L141
 585              	.L143:
 586 0022 A342     		cmp	r3, r4
 587 0024 F9D1     		bne	.L144
 588              	.L140:
 589 0026 0068     		ldr	r0, [r0]
 590 0028 0028     		cmp	r0, #0
 591 002a EBD1     		bne	.L145
 592              	.L153:
 593 002c 30BC     		pop	{r4, r5}
 594 002e 7047     		bx	lr
 595              	.L141:
 596 0030 80F88350 		strb	r5, [r0, #131]
 597 0034 0068     		ldr	r0, [r0]
 598 0036 0028     		cmp	r0, #0
 599 0038 E4D1     		bne	.L145
 600 003a F7E7     		b	.L153
 601              		.size	_ZN4Tool21ClearTemperatureFaultEa, .-_ZN4Tool21ClearTemperatureFaultEa
 602              		.section	.text._ZN4Tool19SetTemperatureFaultEa,"ax",%progbits
 603              		.align	1
 604              		.p2align 2,,3
 605              		.global	_ZN4Tool19SetTemperatureFaultEa
 606              		.syntax unified
 607              		.thumb
 608              		.thumb_func
 609              		.fpu softvfp
 610              		.type	_ZN4Tool19SetTemperatureFaultEa, %function
 611              	_ZN4Tool19SetTemperatureFaultEa:
 612              		@ args = 0, pretend = 0, frame = 0
 613              		@ frame_needed = 0, uses_anonymous_args = 0
 614              		@ link register save eliminated.
 615 0000 10B4     		push	{r4}
 616 0002 046E     		ldr	r4, [r0, #96]
 617 0004 74B1     		cbz	r4, .L154
 618 0006 90F97E30 		ldrsb	r3, [r0, #126]
 619 000a 8B42     		cmp	r3, r1
 620 000c 0CD0     		beq	.L156
 621 000e 7E34     		adds	r4, r4, #126
 622 0010 0444     		add	r4, r4, r0
 623 0012 00F17F03 		add	r3, r0, #127
 624 0016 03E0     		b	.L158
 625              	.L159:
 626 0018 13F9012B 		ldrsb	r2, [r3], #1
 627 001c 8A42     		cmp	r2, r1
ARM GAS  /tmp/ccQ5JqMd.s 			page 12


 628 001e 03D0     		beq	.L156
 629              	.L158:
 630 0020 A342     		cmp	r3, r4
 631 0022 F9D1     		bne	.L159
 632              	.L154:
 633 0024 10BC     		pop	{r4}
 634 0026 7047     		bx	lr
 635              	.L156:
 636 0028 0123     		movs	r3, #1
 637 002a 10BC     		pop	{r4}
 638 002c 80F88330 		strb	r3, [r0, #131]
 639 0030 7047     		bx	lr
 640              		.size	_ZN4Tool19SetTemperatureFaultEa, .-_ZN4Tool19SetTemperatureFaultEa
 641 0032 00BF     		.section	.text._ZN4Tool21ResetTemperatureFaultEa,"ax",%progbits
 642              		.align	1
 643              		.p2align 2,,3
 644              		.global	_ZN4Tool21ResetTemperatureFaultEa
 645              		.syntax unified
 646              		.thumb
 647              		.thumb_func
 648              		.fpu softvfp
 649              		.type	_ZN4Tool21ResetTemperatureFaultEa, %function
 650              	_ZN4Tool21ResetTemperatureFaultEa:
 651              		@ args = 0, pretend = 0, frame = 0
 652              		@ frame_needed = 0, uses_anonymous_args = 0
 653              		@ link register save eliminated.
 654 0000 10B4     		push	{r4}
 655 0002 046E     		ldr	r4, [r0, #96]
 656 0004 74B1     		cbz	r4, .L166
 657 0006 90F97E30 		ldrsb	r3, [r0, #126]
 658 000a 8B42     		cmp	r3, r1
 659 000c 0CD0     		beq	.L168
 660 000e 7E34     		adds	r4, r4, #126
 661 0010 0444     		add	r4, r4, r0
 662 0012 00F17F03 		add	r3, r0, #127
 663 0016 03E0     		b	.L170
 664              	.L171:
 665 0018 13F9012B 		ldrsb	r2, [r3], #1
 666 001c 8A42     		cmp	r2, r1
 667 001e 03D0     		beq	.L168
 668              	.L170:
 669 0020 A342     		cmp	r3, r4
 670 0022 F9D1     		bne	.L171
 671              	.L166:
 672 0024 10BC     		pop	{r4}
 673 0026 7047     		bx	lr
 674              	.L168:
 675 0028 0023     		movs	r3, #0
 676 002a 10BC     		pop	{r4}
 677 002c 80F88330 		strb	r3, [r0, #131]
 678 0030 7047     		bx	lr
 679              		.size	_ZN4Tool21ResetTemperatureFaultEa, .-_ZN4Tool21ResetTemperatureFaultEa
 680              		.global	__aeabi_fcmplt
 681              		.section	.text._ZNK4Tool27AllHeatersAtHighTemperatureEb,"ax",%progbits
 682              		.align	1
 683              		.p2align 2,,3
 684              		.global	_ZNK4Tool27AllHeatersAtHighTemperatureEb
ARM GAS  /tmp/ccQ5JqMd.s 			page 13


 685              		.syntax unified
 686              		.thumb
 687              		.thumb_func
 688              		.fpu softvfp
 689              		.type	_ZNK4Tool27AllHeatersAtHighTemperatureEb, %function
 690              	_ZNK4Tool27AllHeatersAtHighTemperatureEb:
 691              		@ args = 0, pretend = 0, frame = 8
 692              		@ frame_needed = 0, uses_anonymous_args = 0
 693 0000 036E     		ldr	r3, [r0, #96]
 694 0002 9BB3     		cbz	r3, .L193
 695 0004 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 696 0008 83B0     		sub	sp, sp, #12
 697 000a 0191     		str	r1, [sp, #4]
 698 000c 8046     		mov	r8, r0
 699 000e 0024     		movs	r4, #0
 700 0010 DFF85CA0 		ldr	r10, .L196
 701 0014 DFF85C90 		ldr	r9, .L196+4
 702 0018 DFF85CB0 		ldr	fp, .L196+8
 703 001c 00F17E06 		add	r6, r0, #126
 704 0020 0AE0     		b	.L184
 705              	.L195:
 706 0022 3846     		mov	r0, r7
 707 0024 5946     		mov	r1, fp
 708 0026 FFF7FEFF 		bl	__aeabi_fcmplt
 709 002a 08B1     		cbz	r0, .L181
 710 002c 019B     		ldr	r3, [sp, #4]
 711 002e CBB9     		cbnz	r3, .L186
 712              	.L181:
 713 0030 D8F86030 		ldr	r3, [r8, #96]
 714 0034 A342     		cmp	r3, r4
 715 0036 11D9     		bls	.L194
 716              	.L184:
 717 0038 16F9011B 		ldrsb	r1, [r6], #1
 718 003c DAF80C00 		ldr	r0, [r10, #12]
 719 0040 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 720 0044 4946     		mov	r1, r9
 721 0046 0746     		mov	r7, r0
 722 0048 FFF7FEFF 		bl	__aeabi_fcmplt
 723 004c 0134     		adds	r4, r4, #1
 724 004e 0546     		mov	r5, r0
 725 0050 0028     		cmp	r0, #0
 726 0052 E6D0     		beq	.L195
 727 0054 0020     		movs	r0, #0
 728 0056 03B0     		add	sp, sp, #12
 729              		@ sp needed
 730 0058 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 731              	.L194:
 732 005c 0120     		movs	r0, #1
 733 005e 03B0     		add	sp, sp, #12
 734              		@ sp needed
 735 0060 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 736              	.L186:
 737 0064 2846     		mov	r0, r5
 738 0066 03B0     		add	sp, sp, #12
 739              		@ sp needed
 740 0068 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 741              	.L193:
ARM GAS  /tmp/ccQ5JqMd.s 			page 14


 742 006c 0120     		movs	r0, #1
 743 006e 7047     		bx	lr
 744              	.L197:
 745              		.align	2
 746              	.L196:
 747 0070 00000000 		.word	reprap
 748 0074 0000B442 		.word	1119092736
 749 0078 00002043 		.word	1126170624
 750              		.size	_ZNK4Tool27AllHeatersAtHighTemperatureEb, .-_ZNK4Tool27AllHeatersAtHighTemperatureEb
 751              		.section	.text._ZN4Tool8ActivateEv,"ax",%progbits
 752              		.align	1
 753              		.p2align 2,,3
 754              		.global	_ZN4Tool8ActivateEv
 755              		.syntax unified
 756              		.thumb
 757              		.thumb_func
 758              		.fpu softvfp
 759              		.type	_ZN4Tool8ActivateEv, %function
 760              	_ZN4Tool8ActivateEv:
 761              		@ args = 0, pretend = 0, frame = 0
 762              		@ frame_needed = 0, uses_anonymous_args = 0
 763 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 764 0004 036E     		ldr	r3, [r0, #96]
 765 0006 8046     		mov	r8, r0
 766 0008 EBB1     		cbz	r3, .L200
 767 000a 0027     		movs	r7, #0
 768 000c 104E     		ldr	r6, .L204
 769 000e 00F17E04 		add	r4, r0, #126
 770 0012 00F13C05 		add	r5, r0, #60
 771              	.L201:
 772 0016 A146     		mov	r9, r4
 773 0018 55F8042B 		ldr	r2, [r5], #4	@ float
 774 001c 94F90010 		ldrsb	r1, [r4]
 775 0020 F068     		ldr	r0, [r6, #12]
 776 0022 FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 777 0026 EA68     		ldr	r2, [r5, #12]	@ float
 778 0028 14F9011B 		ldrsb	r1, [r4], #1
 779 002c F068     		ldr	r0, [r6, #12]
 780 002e FFF7FEFF 		bl	_ZN4Heat21SetStandbyTemperatureEaf
 781 0032 99F90010 		ldrsb	r1, [r9]
 782 0036 F068     		ldr	r0, [r6, #12]
 783 0038 FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 784 003c D8F86030 		ldr	r3, [r8, #96]
 785 0040 0137     		adds	r7, r7, #1
 786 0042 BB42     		cmp	r3, r7
 787 0044 E7D8     		bhi	.L201
 788              	.L200:
 789 0046 0123     		movs	r3, #1
 790 0048 88F88230 		strb	r3, [r8, #130]
 791 004c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 792              	.L205:
 793              		.align	2
 794              	.L204:
 795 0050 00000000 		.word	reprap
 796              		.size	_ZN4Tool8ActivateEv, .-_ZN4Tool8ActivateEv
 797              		.section	.text._ZN4Tool7StandbyEv,"ax",%progbits
 798              		.align	1
ARM GAS  /tmp/ccQ5JqMd.s 			page 15


 799              		.p2align 2,,3
 800              		.global	_ZN4Tool7StandbyEv
 801              		.syntax unified
 802              		.thumb
 803              		.thumb_func
 804              		.fpu softvfp
 805              		.type	_ZN4Tool7StandbyEv, %function
 806              	_ZN4Tool7StandbyEv:
 807              		@ args = 0, pretend = 0, frame = 0
 808              		@ frame_needed = 0, uses_anonymous_args = 0
 809 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 810 0004 036E     		ldr	r3, [r0, #96]
 811 0006 0646     		mov	r6, r0
 812 0008 D3B1     		cbz	r3, .L208
 813 000a 0025     		movs	r5, #0
 814 000c DFF83C80 		ldr	r8, .L212
 815 0010 00F17E04 		add	r4, r0, #126
 816 0014 00F14C07 		add	r7, r0, #76
 817              	.L209:
 818 0018 A146     		mov	r9, r4
 819 001a 57F8042B 		ldr	r2, [r7], #4	@ float
 820 001e 14F9011B 		ldrsb	r1, [r4], #1
 821 0022 D8F80C00 		ldr	r0, [r8, #12]
 822 0026 FFF7FEFF 		bl	_ZN4Heat21SetStandbyTemperatureEaf
 823 002a 3246     		mov	r2, r6
 824 002c 99F90010 		ldrsb	r1, [r9]
 825 0030 D8F80C00 		ldr	r0, [r8, #12]
 826 0034 FFF7FEFF 		bl	_ZN4Heat7StandbyEaPK4Tool
 827 0038 336E     		ldr	r3, [r6, #96]
 828 003a 0135     		adds	r5, r5, #1
 829 003c AB42     		cmp	r3, r5
 830 003e EBD8     		bhi	.L209
 831              	.L208:
 832 0040 0223     		movs	r3, #2
 833 0042 86F88230 		strb	r3, [r6, #130]
 834 0046 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 835              	.L213:
 836 004a 00BF     		.align	2
 837              	.L212:
 838 004c 00000000 		.word	reprap
 839              		.size	_ZN4Tool7StandbyEv, .-_ZN4Tool7StandbyEv
 840              		.section	.text._ZN4Tool12ToolCanDriveEb,"ax",%progbits
 841              		.align	1
 842              		.p2align 2,,3
 843              		.global	_ZN4Tool12ToolCanDriveEb
 844              		.syntax unified
 845              		.thumb
 846              		.thumb_func
 847              		.fpu softvfp
 848              		.type	_ZN4Tool12ToolCanDriveEb, %function
 849              	_ZN4Tool12ToolCanDriveEb:
 850              		@ args = 0, pretend = 0, frame = 0
 851              		@ frame_needed = 0, uses_anonymous_args = 0
 852 0000 90F88330 		ldrb	r3, [r0, #131]	@ zero_extendqisi2
 853 0004 10B5     		push	{r4, lr}
 854 0006 0446     		mov	r4, r0
 855 0008 23B1     		cbz	r3, .L223
ARM GAS  /tmp/ccQ5JqMd.s 			page 16


 856              	.L215:
 857 000a 0123     		movs	r3, #1
 858 000c 0020     		movs	r0, #0
 859 000e 84F88430 		strb	r3, [r4, #132]
 860 0012 10BD     		pop	{r4, pc}
 861              	.L223:
 862 0014 FFF7FEFF 		bl	_ZNK4Tool27AllHeatersAtHighTemperatureEb
 863 0018 0028     		cmp	r0, #0
 864 001a F6D0     		beq	.L215
 865 001c 10BD     		pop	{r4, pc}
 866              		.size	_ZN4Tool12ToolCanDriveEb, .-_ZN4Tool12ToolCanDriveEb
 867 001e 00BF     		.section	.text._ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_,"ax",%progbits
 868              		.align	1
 869              		.p2align 2,,3
 870              		.global	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_
 871              		.syntax unified
 872              		.thumb
 873              		.thumb_func
 874              		.fpu softvfp
 875              		.type	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_, %function
 876              	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_:
 877              		@ args = 0, pretend = 0, frame = 0
 878              		@ frame_needed = 0, uses_anonymous_args = 0
 879 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 880 0004 C66D     		ldr	r6, [r0, #92]
 881 0006 66B1     		cbz	r6, .L228
 882 0008 7836     		adds	r6, r6, #120
 883 000a 0644     		add	r6, r6, r0
 884 000c 00F17803 		add	r3, r0, #120
 885              	.L229:
 886 0010 13F8014B 		ldrb	r4, [r3], #1	@ zero_extendqisi2
 887 0014 0D88     		ldrh	r5, [r1]
 888 0016 671C     		adds	r7, r4, #1
 889 0018 AC42     		cmp	r4, r5
 890 001a A8BF     		it	ge
 891 001c 0F80     		strhge	r7, [r1]	@ movhi
 892 001e B342     		cmp	r3, r6
 893 0020 F6D1     		bne	.L229
 894              	.L228:
 895 0022 036E     		ldr	r3, [r0, #96]
 896 0024 E3B1     		cbz	r3, .L236
 897 0026 1746     		mov	r7, r2
 898 0028 0646     		mov	r6, r0
 899 002a 0025     		movs	r5, #0
 900 002c DFF83480 		ldr	r8, .L237
 901 0030 00F17E04 		add	r4, r0, #126
 902              	.L233:
 903 0034 94F90010 		ldrsb	r1, [r4]
 904 0038 D8F80C00 		ldr	r0, [r8, #12]
 905 003c FFF7FEFF 		bl	_ZNK4Heat20IsBedOrChamberHeaterEa
 906 0040 30B9     		cbnz	r0, .L230
 907 0042 94F90030 		ldrsb	r3, [r4]
 908 0046 3988     		ldrh	r1, [r7]
 909 0048 5A1C     		adds	r2, r3, #1
 910 004a 8B42     		cmp	r3, r1
 911 004c 00DB     		blt	.L230
 912 004e 3A80     		strh	r2, [r7]	@ movhi
ARM GAS  /tmp/ccQ5JqMd.s 			page 17


 913              	.L230:
 914 0050 336E     		ldr	r3, [r6, #96]
 915 0052 0135     		adds	r5, r5, #1
 916 0054 AB42     		cmp	r3, r5
 917 0056 04F10104 		add	r4, r4, #1
 918 005a EBD8     		bhi	.L233
 919 005c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 920              	.L236:
 921 0060 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 922              	.L238:
 923              		.align	2
 924              	.L237:
 925 0064 00000000 		.word	reprap
 926              		.size	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_, .-_ZNK4Tool28UpdateExtruderAndHeaterCountERtS
 927              		.section	.text._ZN4Tool25DisplayColdExtrudeWarningEv,"ax",%progbits
 928              		.align	1
 929              		.p2align 2,,3
 930              		.global	_ZN4Tool25DisplayColdExtrudeWarningEv
 931              		.syntax unified
 932              		.thumb
 933              		.thumb_func
 934              		.fpu softvfp
 935              		.type	_ZN4Tool25DisplayColdExtrudeWarningEv, %function
 936              	_ZN4Tool25DisplayColdExtrudeWarningEv:
 937              		@ args = 0, pretend = 0, frame = 0
 938              		@ frame_needed = 0, uses_anonymous_args = 0
 939              		@ link register save eliminated.
 940 0000 0346     		mov	r3, r0
 941 0002 0022     		movs	r2, #0
 942 0004 90F88400 		ldrb	r0, [r0, #132]	@ zero_extendqisi2
 943 0008 83F88420 		strb	r2, [r3, #132]
 944 000c 7047     		bx	lr
 945              		.size	_ZN4Tool25DisplayColdExtrudeWarningEv, .-_ZN4Tool25DisplayColdExtrudeWarningEv
 946 000e 00BF     		.section	.text._ZN4Tool9DefineMixEPKf,"ax",%progbits
 947              		.align	1
 948              		.p2align 2,,3
 949              		.global	_ZN4Tool9DefineMixEPKf
 950              		.syntax unified
 951              		.thumb
 952              		.thumb_func
 953              		.fpu softvfp
 954              		.type	_ZN4Tool9DefineMixEPKf, %function
 955              	_ZN4Tool9DefineMixEPKf:
 956              		@ args = 0, pretend = 0, frame = 0
 957              		@ frame_needed = 0, uses_anonymous_args = 0
 958              		@ link register save eliminated.
 959 0000 C26D     		ldr	r2, [r0, #92]
 960 0002 42B1     		cbz	r2, .L240
 961 0004 2430     		adds	r0, r0, #36
 962 0006 01EB8202 		add	r2, r1, r2, lsl #2
 963              	.L243:
 964 000a 51F8043B 		ldr	r3, [r1], #4	@ float
 965 000e 9142     		cmp	r1, r2
 966 0010 40F8043B 		str	r3, [r0], #4	@ float
 967 0014 F9D1     		bne	.L243
 968              	.L240:
 969 0016 7047     		bx	lr
ARM GAS  /tmp/ccQ5JqMd.s 			page 18


 970              		.size	_ZN4Tool9DefineMixEPKf, .-_ZN4Tool9DefineMixEPKf
 971              		.global	__aeabi_f2iz
 972              		.section	.text._ZNK4Tool13WriteSettingsEP9FileStore,"ax",%progbits
 973              		.align	1
 974              		.p2align 2,,3
 975              		.global	_ZNK4Tool13WriteSettingsEP9FileStore
 976              		.syntax unified
 977              		.thumb
 978              		.thumb_func
 979              		.fpu softvfp
 980              		.type	_ZNK4Tool13WriteSettingsEP9FileStore, %function
 981              	_ZNK4Tool13WriteSettingsEP9FileStore:
 982              		@ args = 0, pretend = 0, frame = 64
 983              		@ frame_needed = 0, uses_anonymous_args = 0
 984 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 985 0004 0446     		mov	r4, r0
 986 0006 3220     		movs	r0, #50
 987 0008 91B0     		sub	sp, sp, #68
 988 000a 236E     		ldr	r3, [r4, #96]
 989 000c 03AA     		add	r2, sp, #12
 990 000e 8846     		mov	r8, r1
 991 0010 0290     		str	r0, [sp, #8]
 992 0012 0192     		str	r2, [sp, #4]
 993 0014 93B9     		cbnz	r3, .L246
 994              	.L254:
 995 0016 94F88230 		ldrb	r3, [r4, #130]	@ zero_extendqisi2
 996 001a 1BB9     		cbnz	r3, .L247
 997 001c 0120     		movs	r0, #1
 998 001e 11B0     		add	sp, sp, #68
 999              		@ sp needed
 1000 0020 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1001              	.L247:
 1002 0024 626E     		ldr	r2, [r4, #100]
 1003 0026 2849     		ldr	r1, .L262
 1004 0028 01A8     		add	r0, sp, #4
 1005 002a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1006 002e 4046     		mov	r0, r8
 1007 0030 0199     		ldr	r1, [sp, #4]
 1008 0032 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1009 0036 11B0     		add	sp, sp, #68
 1010              		@ sp needed
 1011 0038 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1012              	.L246:
 1013 003c 01A8     		add	r0, sp, #4
 1014 003e 626E     		ldr	r2, [r4, #100]
 1015 0040 2249     		ldr	r1, .L262+4
 1016 0042 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1017 0046 236E     		ldr	r3, [r4, #96]
 1018 0048 ABB1     		cbz	r3, .L252
 1019 004a 0025     		movs	r5, #0
 1020 004c 5327     		movs	r7, #83
 1021 004e DFF88090 		ldr	r9, .L262+8
 1022 0052 04F13C06 		add	r6, r4, #60
 1023              	.L253:
 1024 0056 56F8040B 		ldr	r0, [r6], #4	@ float
 1025 005a FFF7FEFF 		bl	__aeabi_f2iz
 1026 005e 3A46     		mov	r2, r7
ARM GAS  /tmp/ccQ5JqMd.s 			page 19


 1027 0060 0346     		mov	r3, r0
 1028 0062 4946     		mov	r1, r9
 1029 0064 01A8     		add	r0, sp, #4
 1030 0066 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1031 006a 236E     		ldr	r3, [r4, #96]
 1032 006c 0135     		adds	r5, r5, #1
 1033 006e AB42     		cmp	r3, r5
 1034 0070 4FF03A07 		mov	r7, #58
 1035 0074 EFD8     		bhi	.L253
 1036              	.L252:
 1037 0076 2021     		movs	r1, #32
 1038 0078 01A8     		add	r0, sp, #4
 1039 007a FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1040 007e 236E     		ldr	r3, [r4, #96]
 1041 0080 ABB1     		cbz	r3, .L250
 1042 0082 0025     		movs	r5, #0
 1043 0084 5227     		movs	r7, #82
 1044 0086 DFF84890 		ldr	r9, .L262+8
 1045 008a 04F14C06 		add	r6, r4, #76
 1046              	.L255:
 1047 008e 56F8040B 		ldr	r0, [r6], #4	@ float
 1048 0092 FFF7FEFF 		bl	__aeabi_f2iz
 1049 0096 3A46     		mov	r2, r7
 1050 0098 0346     		mov	r3, r0
 1051 009a 4946     		mov	r1, r9
 1052 009c 01A8     		add	r0, sp, #4
 1053 009e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1054 00a2 236E     		ldr	r3, [r4, #96]
 1055 00a4 0135     		adds	r5, r5, #1
 1056 00a6 AB42     		cmp	r3, r5
 1057 00a8 4FF03A07 		mov	r7, #58
 1058 00ac EFD8     		bhi	.L255
 1059              	.L250:
 1060 00ae 0A21     		movs	r1, #10
 1061 00b0 01A8     		add	r0, sp, #4
 1062 00b2 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1063 00b6 0199     		ldr	r1, [sp, #4]
 1064 00b8 4046     		mov	r0, r8
 1065 00ba FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1066 00be 0028     		cmp	r0, #0
 1067 00c0 A9D1     		bne	.L254
 1068 00c2 11B0     		add	sp, sp, #68
 1069              		@ sp needed
 1070 00c4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1071              	.L263:
 1072              		.align	2
 1073              	.L262:
 1074 00c8 0C000000 		.word	.LC21
 1075 00cc 00000000 		.word	.LC20
 1076 00d0 5C000000 		.word	.LC11
 1077              		.size	_ZNK4Tool13WriteSettingsEP9FileStore, .-_ZNK4Tool13WriteSettingsEP9FileStore
 1078              		.section	.text._ZN4Tool9SetOffsetEjfb,"ax",%progbits
 1079              		.align	1
 1080              		.p2align 2,,3
 1081              		.global	_ZN4Tool9SetOffsetEjfb
 1082              		.syntax unified
 1083              		.thumb
ARM GAS  /tmp/ccQ5JqMd.s 			page 20


 1084              		.thumb_func
 1085              		.fpu softvfp
 1086              		.type	_ZN4Tool9SetOffsetEjfb, %function
 1087              	_ZN4Tool9SetOffsetEjfb:
 1088              		@ args = 0, pretend = 0, frame = 0
 1089              		@ frame_needed = 0, uses_anonymous_args = 0
 1090              		@ link register save eliminated.
 1091 0000 10B4     		push	{r4}
 1092 0002 00EB8104 		add	r4, r0, r1, lsl #2
 1093 0006 E260     		str	r2, [r4, #12]	@ float
 1094 0008 2BB1     		cbz	r3, .L264
 1095 000a 0122     		movs	r2, #1
 1096 000c 036F     		ldr	r3, [r0, #112]
 1097 000e 02FA01F1 		lsl	r1, r2, r1
 1098 0012 0B43     		orrs	r3, r3, r1
 1099 0014 0367     		str	r3, [r0, #112]
 1100              	.L264:
 1101 0016 10BC     		pop	{r4}
 1102 0018 7047     		bx	lr
 1103              		.size	_ZN4Tool9SetOffsetEjfb, .-_ZN4Tool9SetOffsetEjfb
 1104 001a 00BF     		.section	.text._ZNK4Tool30GetToolHeaterActiveTemperatureEj,"ax",%progbits
 1105              		.align	1
 1106              		.p2align 2,,3
 1107              		.global	_ZNK4Tool30GetToolHeaterActiveTemperatureEj
 1108              		.syntax unified
 1109              		.thumb
 1110              		.thumb_func
 1111              		.fpu softvfp
 1112              		.type	_ZNK4Tool30GetToolHeaterActiveTemperatureEj, %function
 1113              	_ZNK4Tool30GetToolHeaterActiveTemperatureEj:
 1114              		@ args = 0, pretend = 0, frame = 0
 1115              		@ frame_needed = 0, uses_anonymous_args = 0
 1116              		@ link register save eliminated.
 1117 0000 036E     		ldr	r3, [r0, #96]
 1118 0002 8B42     		cmp	r3, r1
 1119 0004 86BF     		itte	hi
 1120 0006 00EB8100 		addhi	r0, r0, r1, lsl #2
 1121 000a C06B     		ldrhi	r0, [r0, #60]	@ float
 1122 000c 0020     		movls	r0, #0
 1123 000e 7047     		bx	lr
 1124              		.size	_ZNK4Tool30GetToolHeaterActiveTemperatureEj, .-_ZNK4Tool30GetToolHeaterActiveTemperatureEj
 1125              		.section	.text._ZNK4Tool31GetToolHeaterStandbyTemperatureEj,"ax",%progbits
 1126              		.align	1
 1127              		.p2align 2,,3
 1128              		.global	_ZNK4Tool31GetToolHeaterStandbyTemperatureEj
 1129              		.syntax unified
 1130              		.thumb
 1131              		.thumb_func
 1132              		.fpu softvfp
 1133              		.type	_ZNK4Tool31GetToolHeaterStandbyTemperatureEj, %function
 1134              	_ZNK4Tool31GetToolHeaterStandbyTemperatureEj:
 1135              		@ args = 0, pretend = 0, frame = 0
 1136              		@ frame_needed = 0, uses_anonymous_args = 0
 1137              		@ link register save eliminated.
 1138 0000 036E     		ldr	r3, [r0, #96]
 1139 0002 8B42     		cmp	r3, r1
 1140 0004 86BF     		itte	hi
ARM GAS  /tmp/ccQ5JqMd.s 			page 21


 1141 0006 00EB8100 		addhi	r0, r0, r1, lsl #2
 1142 000a C06C     		ldrhi	r0, [r0, #76]	@ float
 1143 000c 0020     		movls	r0, #0
 1144 000e 7047     		bx	lr
 1145              		.size	_ZNK4Tool31GetToolHeaterStandbyTemperatureEj, .-_ZNK4Tool31GetToolHeaterStandbyTemperatureEj
 1146              		.section	.text._ZN4Tool30SetToolHeaterActiveTemperatureEjf,"ax",%progbits
 1147              		.align	1
 1148              		.p2align 2,,3
 1149              		.global	_ZN4Tool30SetToolHeaterActiveTemperatureEjf
 1150              		.syntax unified
 1151              		.thumb
 1152              		.thumb_func
 1153              		.fpu softvfp
 1154              		.type	_ZN4Tool30SetToolHeaterActiveTemperatureEjf, %function
 1155              	_ZN4Tool30SetToolHeaterActiveTemperatureEjf:
 1156              		@ args = 0, pretend = 0, frame = 0
 1157              		@ frame_needed = 0, uses_anonymous_args = 0
 1158 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1159 0004 036E     		ldr	r3, [r0, #96]
 1160 0006 8B42     		cmp	r3, r1
 1161 0008 11D9     		bls	.L276
 1162 000a 284F     		ldr	r7, .L297
 1163 000c 0D46     		mov	r5, r1
 1164 000e FE6A     		ldr	r6, [r7, #44]
 1165 0010 0446     		mov	r4, r0
 1166 0012 9046     		mov	r8, r2
 1167 0014 2649     		ldr	r1, .L297+4
 1168 0016 1046     		mov	r0, r2
 1169 0018 002E     		cmp	r6, #0
 1170 001a 36D0     		beq	.L279
 1171 001c FFF7FEFF 		bl	__aeabi_fcmplt
 1172 0020 38B1     		cbz	r0, .L294
 1173 0022 0022     		movs	r2, #0
 1174 0024 04EB8503 		add	r3, r4, r5, lsl #2
 1175 0028 B442     		cmp	r4, r6
 1176 002a DA63     		str	r2, [r3, #60]	@ float
 1177 002c 34D0     		beq	.L285
 1178              	.L276:
 1179 002e BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1180              	.L294:
 1181 0032 A61B     		subs	r6, r4, r6
 1182 0034 B6FA86F6 		clz	r6, r6
 1183 0038 7609     		lsrs	r6, r6, #5
 1184              	.L287:
 1185 003a 04EB0509 		add	r9, r4, r5
 1186 003e 99F97E10 		ldrsb	r1, [r9, #126]
 1187 0042 F868     		ldr	r0, [r7, #12]
 1188 0044 FFF7FEFF 		bl	_ZNK4Heat25GetLowestTemperatureLimitEa
 1189 0048 99F97E10 		ldrsb	r1, [r9, #126]
 1190 004c 8246     		mov	r10, r0
 1191 004e F868     		ldr	r0, [r7, #12]
 1192 0050 FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEa
 1193 0054 5146     		mov	r1, r10
 1194 0056 8346     		mov	fp, r0
 1195 0058 4046     		mov	r0, r8
 1196 005a FFF7FEFF 		bl	__aeabi_fcmpgt
 1197 005e 0028     		cmp	r0, #0
ARM GAS  /tmp/ccQ5JqMd.s 			page 22


 1198 0060 E5D0     		beq	.L276
 1199 0062 5946     		mov	r1, fp
 1200 0064 4046     		mov	r0, r8
 1201 0066 FFF7FEFF 		bl	__aeabi_fcmplt
 1202 006a 0028     		cmp	r0, #0
 1203 006c DFD0     		beq	.L276
 1204 006e 04EB8500 		add	r0, r4, r5, lsl #2
 1205 0072 C0F83C80 		str	r8, [r0, #60]	@ float
 1206 0076 002E     		cmp	r6, #0
 1207 0078 D9D0     		beq	.L276
 1208 007a 4246     		mov	r2, r8
 1209 007c 99F97E10 		ldrsb	r1, [r9, #126]
 1210 0080 F868     		ldr	r0, [r7, #12]
 1211 0082 BDE8F84F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1212 0086 FFF7FEBF 		b	_ZN4Heat20SetActiveTemperatureEaf
 1213              	.L279:
 1214 008a FFF7FEFF 		bl	__aeabi_fcmplt
 1215 008e 58B1     		cbz	r0, .L296
 1216 0090 0022     		movs	r2, #0
 1217 0092 04EB8503 		add	r3, r4, r5, lsl #2
 1218 0096 DA63     		str	r2, [r3, #60]	@ float
 1219              	.L285:
 1220 0098 6019     		adds	r0, r4, r5
 1221 009a 90F97E10 		ldrsb	r1, [r0, #126]
 1222 009e F868     		ldr	r0, [r7, #12]
 1223 00a0 BDE8F84F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1224 00a4 FFF7FEBF 		b	_ZN4Heat9SwitchOffEa
 1225              	.L296:
 1226 00a8 0126     		movs	r6, #1
 1227 00aa C6E7     		b	.L287
 1228              	.L298:
 1229              		.align	2
 1230              	.L297:
 1231 00ac 00000000 		.word	reprap
 1232 00b0 008088C3 		.word	-1014464512
 1233              		.size	_ZN4Tool30SetToolHeaterActiveTemperatureEjf, .-_ZN4Tool30SetToolHeaterActiveTemperatureEjf
 1234              		.section	.text._ZN4Tool31SetToolHeaterStandbyTemperatureEjf,"ax",%progbits
 1235              		.align	1
 1236              		.p2align 2,,3
 1237              		.global	_ZN4Tool31SetToolHeaterStandbyTemperatureEjf
 1238              		.syntax unified
 1239              		.thumb
 1240              		.thumb_func
 1241              		.fpu softvfp
 1242              		.type	_ZN4Tool31SetToolHeaterStandbyTemperatureEjf, %function
 1243              	_ZN4Tool31SetToolHeaterStandbyTemperatureEjf:
 1244              		@ args = 0, pretend = 0, frame = 0
 1245              		@ frame_needed = 0, uses_anonymous_args = 0
 1246 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1247 0004 036E     		ldr	r3, [r0, #96]
 1248 0006 8B42     		cmp	r3, r1
 1249 0008 20D9     		bls	.L299
 1250 000a 304E     		ldr	r6, .L326
 1251 000c 00EB0109 		add	r9, r0, r1
 1252 0010 F36A     		ldr	r3, [r6, #44]
 1253 0012 1746     		mov	r7, r2
 1254 0014 0D46     		mov	r5, r1
ARM GAS  /tmp/ccQ5JqMd.s 			page 23


 1255 0016 0446     		mov	r4, r0
 1256 0018 D6F80CB0 		ldr	fp, [r6, #12]
 1257 001c 99F97EA0 		ldrsb	r10, [r9, #126]
 1258 0020 B3B1     		cbz	r3, .L302
 1259 0022 9842     		cmp	r0, r3
 1260 0024 14D0     		beq	.L302
 1261 0026 0BEB8A03 		add	r3, fp, r10, lsl #2
 1262 002a D3F83480 		ldr	r8, [r3, #52]
 1263 002e B8F1000F 		cmp	r8, #0
 1264 0032 0DD0     		beq	.L302
 1265 0034 2649     		ldr	r1, .L326+4
 1266 0036 1046     		mov	r0, r2
 1267 0038 FFF7FEFF 		bl	__aeabi_fcmplt
 1268 003c 0028     		cmp	r0, #0
 1269 003e 3DD0     		beq	.L323
 1270 0040 0023     		movs	r3, #0
 1271 0042 04EB8501 		add	r1, r4, r5, lsl #2
 1272 0046 4445     		cmp	r4, r8
 1273 0048 CB64     		str	r3, [r1, #76]	@ float
 1274 004a 0AD0     		beq	.L308
 1275              	.L299:
 1276 004c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1277              	.L302:
 1278 0050 1F49     		ldr	r1, .L326+4
 1279 0052 3846     		mov	r0, r7
 1280 0054 FFF7FEFF 		bl	__aeabi_fcmplt
 1281 0058 48B1     		cbz	r0, .L325
 1282 005a 0023     		movs	r3, #0
 1283 005c 04EB8500 		add	r0, r4, r5, lsl #2
 1284 0060 C364     		str	r3, [r0, #76]	@ float
 1285              	.L308:
 1286 0062 5146     		mov	r1, r10
 1287 0064 5846     		mov	r0, fp
 1288 0066 BDE8F84F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1289 006a FFF7FEBF 		b	_ZN4Heat9SwitchOffEa
 1290              	.L325:
 1291 006e 4FF00108 		mov	r8, #1
 1292              	.L310:
 1293 0072 5146     		mov	r1, r10
 1294 0074 5846     		mov	r0, fp
 1295 0076 FFF7FEFF 		bl	_ZNK4Heat25GetLowestTemperatureLimitEa
 1296 007a 99F97E10 		ldrsb	r1, [r9, #126]
 1297 007e 8246     		mov	r10, r0
 1298 0080 F068     		ldr	r0, [r6, #12]
 1299 0082 FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEa
 1300 0086 5146     		mov	r1, r10
 1301 0088 8346     		mov	fp, r0
 1302 008a 3846     		mov	r0, r7
 1303 008c FFF7FEFF 		bl	__aeabi_fcmpgt
 1304 0090 0028     		cmp	r0, #0
 1305 0092 DBD0     		beq	.L299
 1306 0094 5946     		mov	r1, fp
 1307 0096 3846     		mov	r0, r7
 1308 0098 FFF7FEFF 		bl	__aeabi_fcmplt
 1309 009c 0028     		cmp	r0, #0
 1310 009e D5D0     		beq	.L299
 1311 00a0 04EB8500 		add	r0, r4, r5, lsl #2
ARM GAS  /tmp/ccQ5JqMd.s 			page 24


 1312 00a4 C764     		str	r7, [r0, #76]	@ float
 1313 00a6 B8F1000F 		cmp	r8, #0
 1314 00aa CFD0     		beq	.L299
 1315 00ac 3A46     		mov	r2, r7
 1316 00ae 99F97E10 		ldrsb	r1, [r9, #126]
 1317 00b2 F068     		ldr	r0, [r6, #12]
 1318 00b4 BDE8F84F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1319 00b8 FFF7FEBF 		b	_ZN4Heat21SetStandbyTemperatureEaf
 1320              	.L323:
 1321 00bc A4EB0808 		sub	r8, r4, r8
 1322 00c0 B8FA88F8 		clz	r8, r8
 1323 00c4 4FEA5818 		lsr	r8, r8, #5
 1324 00c8 D3E7     		b	.L310
 1325              	.L327:
 1326 00ca 00BF     		.align	2
 1327              	.L326:
 1328 00cc 00000000 		.word	reprap
 1329 00d0 008088C3 		.word	-1014464512
 1330              		.size	_ZN4Tool31SetToolHeaterStandbyTemperatureEjf, .-_ZN4Tool31SetToolHeaterStandbyTemperatureEjf
 1331              		.global	_ZN4Tool8freelistE
 1332              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1333              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1334              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1335              	_ZL28cpu_irq_prev_interrupt_state:
 1336 0000 00       		.space	1
 1337              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1338              		.align	2
 1339              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1340              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1341              	_ZL32cpu_irq_critical_section_counter:
 1342 0000 00000000 		.space	4
 1343              		.section	.bss._ZN4Tool8freelistE,"aw",%nobits
 1344              		.align	2
 1345              		.set	.LANCHOR0,. + 0
 1346              		.type	_ZN4Tool8freelistE, %object
 1347              		.size	_ZN4Tool8freelistE, 4
 1348              	_ZN4Tool8freelistE:
 1349 0000 00000000 		.space	4
 1350              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1351              		.align	2
 1352              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1353              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1354              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1355 0000 00000000 		.space	4
 1356              		.section	.rodata._ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef.str1.4,"aMS",%progbits,1
 1357              		.align	2
 1358              	.LC0:
 1359 0000 546F6F6C 		.ascii	"Tool creation: too many drives\000"
 1359      20637265 
 1359      6174696F 
 1359      6E3A2074 
 1359      6F6F206D 
 1360 001f 00       		.space	1
 1361              	.LC1:
 1362 0020 546F6F6C 		.ascii	"Tool creation: too many heaters\000"
 1362      20637265 
 1362      6174696F 
ARM GAS  /tmp/ccQ5JqMd.s 			page 25


 1362      6E3A2074 
 1362      6F6F206D 
 1363              	.LC2:
 1364 0040 546F6F6C 		.ascii	"Tool creation: bad drive number\000"
 1364      20637265 
 1364      6174696F 
 1364      6E3A2062 
 1364      61642064 
 1365              	.LC3:
 1366 0060 546F6F6C 		.ascii	"Tool creation: bad heater number\000"
 1366      20637265 
 1366      6174696F 
 1366      6E3A2062 
 1366      61642068 
 1367              		.section	.rodata._ZNK4Tool11MaxFeedrateEv.str1.4,"aMS",%progbits,1
 1368              		.align	2
 1369              	.LC19:
 1370 0000 41747465 		.ascii	"Attempt to get maximum feedrate for a tool with no "
 1370      6D707420 
 1370      746F2067 
 1370      6574206D 
 1370      6178696D 
 1371 0033 64726976 		.ascii	"drives.\012\000"
 1371      65732E0A 
 1371      00
 1372              		.section	.rodata._ZNK4Tool13WriteSettingsEP9FileStore.str1.4,"aMS",%progbits,1
 1373              		.align	2
 1374              	.LC20:
 1375 0000 47313020 		.ascii	"G10 P%d \000"
 1375      50256420 
 1375      00
 1376 0009 000000   		.space	3
 1377              	.LC21:
 1378 000c 54256420 		.ascii	"T%d P0\012\000"
 1378      50300A00 
 1379              		.section	.rodata._ZNK4Tool5PrintERK9StringRef.str1.4,"aMS",%progbits,1
 1380              		.align	2
 1381              	.LC4:
 1382 0000 6F666600 		.ascii	"off\000"
 1383              	.LC5:
 1384 0004 73656C65 		.ascii	"selected\000"
 1384      63746564 
 1384      00
 1385 000d 000000   		.space	3
 1386              	.LC6:
 1387 0010 7374616E 		.ascii	"standby\000"
 1387      64627900 
 1388              	.LC7:
 1389 0018 546F6F6C 		.ascii	"Tool %d - \000"
 1389      20256420 
 1389      2D2000
 1390 0023 00       		.space	1
 1391              	.LC8:
 1392 0024 6E616D65 		.ascii	"name: %s; \000"
 1392      3A202573 
 1392      3B2000
 1393 002f 00       		.space	1
ARM GAS  /tmp/ccQ5JqMd.s 			page 26


 1394              	.LC9:
 1395 0030 64726976 		.ascii	"drives:\000"
 1395      65733A00 
 1396              	.LC10:
 1397 0038 3B206865 		.ascii	"; heaters (active/standby temps):\000"
 1397      61746572 
 1397      73202861 
 1397      63746976 
 1397      652F7374 
 1398 005a 0000     		.space	2
 1399              	.LC11:
 1400 005c 25632564 		.ascii	"%c%d\000"
 1400      00
 1401 0061 000000   		.space	3
 1402              	.LC12:
 1403 0064 3B20786D 		.ascii	"; xmap:\000"
 1403      61703A00 
 1404              	.LC13:
 1405 006c 25632564 		.ascii	"%c%d (%.1f/%.1f)\000"
 1405      2028252E 
 1405      31662F25 
 1405      2E316629 
 1405      00
 1406 007d 000000   		.space	3
 1407              	.LC14:
 1408 0080 25632563 		.ascii	"%c%c\000"
 1408      00
 1409 0085 000000   		.space	3
 1410              	.LC15:
 1411 0088 3B20796D 		.ascii	"; ymap:\000"
 1411      61703A00 
 1412              	.LC16:
 1413 0090 3B206661 		.ascii	"; fans:\000"
 1413      6E733A00 
 1414              	.LC17:
 1415 0098 25632575 		.ascii	"%c%u\000"
 1415      00
 1416 009d 000000   		.space	3
 1417              	.LC18:
 1418 00a0 3B207374 		.ascii	"; status: %s\000"
 1418      61747573 
 1418      3A202573 
 1418      00
 1419              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
