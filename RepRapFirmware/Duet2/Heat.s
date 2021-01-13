ARM GAS  /tmp/ccg0SVmY.s 			page 1


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
  13              		.file	"Heat.cpp"
  14              		.section	.text._ZNK4Heat22HeaterAtSetTemperatureEab.part.19,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	_ZNK4Heat22HeaterAtSetTemperatureEab.part.19, %function
  22              	_ZNK4Heat22HeaterAtSetTemperatureEab.part.19:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 00EB8101 		add	r1, r0, r1, lsl #2
  27 0004 4B6C     		ldr	r3, [r1, #68]
  28 0006 93F87C10 		ldrb	r1, [r3, #124]	@ zero_extendqisi2
  29 000a 0129     		cmp	r1, #1
  30 000c 20D9     		bls	.L8
  31 000e 93F87E10 		ldrb	r1, [r3, #126]	@ zero_extendqisi2
  32 0012 D3ED066A 		vldr.32	s13, [r3, #24]
  33 0016 E9B9     		cbnz	r1, .L13
  34 0018 93ED037A 		vldr.32	s14, [r3, #12]
  35              	.L4:
  36 001c DFED107A 		vldr.32	s15, .L14
  37 0020 B4EEE77A 		vcmpe.f32	s14, s15
  38 0024 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  39 0028 12D4     		bmi	.L8
  40 002a 76EEC77A 		vsub.f32	s15, s13, s14
  41 002e B7EE006A 		vmov.f32	s12, #1.0e+0
  42 0032 F0EEE77A 		vabs.f32	s15, s15
  43 0036 F4EEC67A 		vcmpe.f32	s15, s12
  44 003a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  45 003e 07D9     		bls	.L8
  46 0040 F4EEC76A 		vcmpe.f32	s13, s14
  47 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  48 0048 07DD     		ble	.L11
  49 004a 82F00100 		eor	r0, r2, #1
  50 004e 7047     		bx	lr
  51              	.L8:
  52 0050 0120     		movs	r0, #1
  53 0052 7047     		bx	lr
  54              	.L13:
  55 0054 93ED027A 		vldr.32	s14, [r3, #8]
  56 0058 E0E7     		b	.L4
  57              	.L11:
ARM GAS  /tmp/ccg0SVmY.s 			page 2


  58 005a 0020     		movs	r0, #0
  59 005c 7047     		bx	lr
  60              	.L15:
  61 005e 00BF     		.align	2
  62              	.L14:
  63 0060 00002042 		.word	1109393408
  64              		.size	_ZNK4Heat22HeaterAtSetTemperatureEab.part.19, .-_ZNK4Heat22HeaterAtSetTemperatureEab.part.19
  65              		.section	.text._ZN4HeatC2ER8Platform,"ax",%progbits
  66              		.align	1
  67              		.p2align 2,,3
  68              		.global	_ZN4HeatC2ER8Platform
  69              		.syntax unified
  70              		.thumb
  71              		.thumb_func
  72              		.fpu fpv4-sp-d16
  73              		.type	_ZN4HeatC2ER8Platform, %function
  74              	_ZN4HeatC2ER8Platform:
  75              		@ args = 0, pretend = 0, frame = 0
  76              		@ frame_needed = 0, uses_anonymous_args = 0
  77 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  78 0002 194A     		ldr	r2, .L22
  79 0004 194B     		ldr	r3, .L22+4
  80 0006 1268     		ldr	r2, [r2]
  81 0008 1B88     		ldrh	r3, [r3]
  82 000a 0746     		mov	r7, r0
  83 000c 0024     		movs	r4, #0
  84 000e 4FF6FF70 		movw	r0, #65535
  85 0012 3960     		str	r1, [r7]
  86 0014 A7F8D800 		strh	r0, [r7, #216]	@ movhi
  87 0018 C7F8D220 		str	r2, [r7, #210]	@ unaligned
  88 001c A7F8D630 		strh	r3, [r7, #214]	@ unaligned
  89 0020 87F8D040 		strb	r4, [r7, #208]
  90 0024 87F8D140 		strb	r4, [r7, #209]
  91 0028 3D46     		mov	r5, r7
  92              	.L17:
  93 002a 1020     		movs	r0, #16
  94 002c FFF7FEFF 		bl	_Znwj
  95 0030 2146     		mov	r1, r4
  96 0032 0134     		adds	r4, r4, #1
  97 0034 0646     		mov	r6, r0
  98 0036 FFF7FEFF 		bl	_ZN16HeaterProtectionC1Ej
  99 003a 102C     		cmp	r4, #16
 100 003c 45F8046F 		str	r6, [r5, #4]!
 101 0040 F3D1     		bne	.L17
 102 0042 07F14405 		add	r5, r7, #68
 103 0046 0024     		movs	r4, #0
 104              	.L18:
 105 0048 8420     		movs	r0, #132
 106 004a FFF7FEFF 		bl	_Znwj
 107 004e 62B2     		sxtb	r2, r4
 108 0050 3968     		ldr	r1, [r7]
 109 0052 0134     		adds	r4, r4, #1
 110 0054 0646     		mov	r6, r0
 111 0056 FFF7FEFF 		bl	_ZN3PIDC1ER8Platforma
 112 005a 082C     		cmp	r4, #8
 113 005c 45F8046B 		str	r6, [r5], #4
 114 0060 F2D1     		bne	.L18
ARM GAS  /tmp/ccg0SVmY.s 			page 3


 115 0062 3846     		mov	r0, r7
 116 0064 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 117              	.L23:
 118 0066 00BF     		.align	2
 119              	.L22:
 120 0068 00000000 		.word	.LANCHOR0
 121 006c 00000000 		.word	.LANCHOR1
 122              		.size	_ZN4HeatC2ER8Platform, .-_ZN4HeatC2ER8Platform
 123              		.global	_ZN4HeatC1ER8Platform
 124              		.thumb_set _ZN4HeatC1ER8Platform,_ZN4HeatC2ER8Platform
 125              		.section	.text._ZN4Heat17ResetHeaterModelsEv,"ax",%progbits
 126              		.align	1
 127              		.p2align 2,,3
 128              		.global	_ZN4Heat17ResetHeaterModelsEv
 129              		.syntax unified
 130              		.thumb
 131              		.thumb_func
 132              		.fpu fpv4-sp-d16
 133              		.type	_ZN4Heat17ResetHeaterModelsEv, %function
 134              	_ZN4Heat17ResetHeaterModelsEv:
 135              		@ args = 0, pretend = 0, frame = 0
 136              		@ frame_needed = 0, uses_anonymous_args = 0
 137 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 138 0004 0646     		mov	r6, r0
 139 0006 2DED068B 		vpush.64	{d8, d9, d10}
 140 000a 00F14404 		add	r4, r0, #68
 141 000e 9FED308A 		vldr.32	s16, .L45
 142 0012 9FED309A 		vldr.32	s18, .L45+4
 143 0016 DFED308A 		vldr.32	s17, .L45+8
 144 001a 9FED30AA 		vldr.32	s20, .L45+12
 145 001e DFED309A 		vldr.32	s19, .L45+16
 146 0022 00F16407 		add	r7, r0, #100
 147 0026 00F1D208 		add	r8, r0, #210
 148 002a 0025     		movs	r5, #0
 149 002c 03E0     		b	.L32
 150              	.L25:
 151 002e BC42     		cmp	r4, r7
 152 0030 05F10105 		add	r5, r5, #1
 153 0034 37D0     		beq	.L44
 154              	.L32:
 155 0036 54F8040B 		ldr	r0, [r4], #4
 156 003a 90F84630 		ldrb	r3, [r0, #70]	@ zero_extendqisi2
 157 003e 002B     		cmp	r3, #0
 158 0040 F5D0     		beq	.L25
 159 0042 96F9D230 		ldrsb	r3, [r6, #210]
 160 0046 4FFA85FC 		sxtb	ip, r5
 161 004a 6345     		cmp	r3, ip
 162 004c 06F1D602 		add	r2, r6, #214
 163 0050 2DD0     		beq	.L26
 164 0052 4346     		mov	r3, r8
 165 0054 06F1D50E 		add	lr, r6, #213
 166 0058 03E0     		b	.L27
 167              	.L40:
 168 005a 13F9011F 		ldrsb	r1, [r3, #1]!
 169 005e 6145     		cmp	r1, ip
 170 0060 25D0     		beq	.L26
 171              	.L27:
ARM GAS  /tmp/ccg0SVmY.s 			page 4


 172 0062 9E45     		cmp	lr, r3
 173 0064 F9D1     		bne	.L40
 174 0066 96F9D630 		ldrsb	r3, [r6, #214]
 175 006a 6345     		cmp	r3, ip
 176 006c 1FD0     		beq	.L26
 177 006e 06F1D701 		add	r1, r6, #215
 178 0072 03E0     		b	.L33
 179              	.L41:
 180 0074 12F9013F 		ldrsb	r3, [r2, #1]!
 181 0078 6345     		cmp	r3, ip
 182 007a 18D0     		beq	.L26
 183              	.L33:
 184 007c 8A42     		cmp	r2, r1
 185 007e F9D1     		bne	.L41
 186 0080 0023     		movs	r3, #0
 187 0082 1A46     		mov	r2, r3
 188 0084 0121     		movs	r1, #1
 189 0086 B0EE482A 		vmov.f32	s4, s16
 190 008a F7EE001A 		vmov.f32	s3, #1.0e+0
 191 008e B1EE061A 		vmov.f32	s2, #5.5e+0
 192 0092 F0EE4A0A 		vmov.f32	s1, s20
 193 0096 B0EE690A 		vmov.f32	s0, s19
 194 009a FFF7FEFF 		bl	_ZN3PID8SetModelEfffffbbt
 195 009e BC42     		cmp	r4, r7
 196 00a0 05F10105 		add	r5, r5, #1
 197 00a4 C7D1     		bne	.L32
 198              	.L44:
 199 00a6 BDEC068B 		vldm	sp!, {d8-d10}
 200 00aa BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 201              	.L26:
 202 00ae 0023     		movs	r3, #0
 203 00b0 1A46     		mov	r2, r3
 204 00b2 1946     		mov	r1, r3
 205 00b4 B0EE482A 		vmov.f32	s4, s16
 206 00b8 F7EE001A 		vmov.f32	s3, #1.0e+0
 207 00bc B2EE041A 		vmov.f32	s2, #1.0e+1
 208 00c0 F0EE490A 		vmov.f32	s1, s18
 209 00c4 B0EE680A 		vmov.f32	s0, s17
 210 00c8 FFF7FEFF 		bl	_ZN3PID8SetModelEfffffbbt
 211 00cc AFE7     		b	.L25
 212              	.L46:
 213 00ce 00BF     		.align	2
 214              	.L45:
 215 00d0 00000000 		.word	0
 216 00d4 00002F44 		.word	1143930880
 217 00d8 0000B442 		.word	1119092736
 218 00dc 00000C43 		.word	1124859904
 219 00e0 0000AA43 		.word	1135214592
 220              		.size	_ZN4Heat17ResetHeaterModelsEv, .-_ZN4Heat17ResetHeaterModelsEv
 221              		.section	.text._ZN4Heat4InitEv,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	_ZN4Heat4InitEv
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccg0SVmY.s 			page 5


 229              		.type	_ZN4Heat4InitEv, %function
 230              	_ZN4Heat4InitEv:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 234 0004 2DED048B 		vpush.64	{d8, d9}
 235 0008 9FED5E8A 		vldr.32	s16, .L82
 236 000c DFED5E8A 		vldr.32	s17, .L82+4
 237 0010 0546     		mov	r5, r0
 238 0012 00F1D606 		add	r6, r0, #214
 239 0016 00F1D207 		add	r7, r0, #210
 240 001a 8046     		mov	r8, r0
 241 001c 00F1D509 		add	r9, r0, #213
 242 0020 4FF0000A 		mov	r10, #0
 243              	.L54:
 244 0024 95F9D230 		ldrsb	r3, [r5, #210]
 245 0028 58F804BF 		ldr	fp, [r8, #4]!
 246 002c 4FFA8AF0 		sxtb	r0, r10
 247 0030 8342     		cmp	r3, r0
 248 0032 15D0     		beq	.L69
 249 0034 3B46     		mov	r3, r7
 250 0036 3446     		mov	r4, r6
 251 0038 03E0     		b	.L49
 252              	.L76:
 253 003a 13F9012F 		ldrsb	r2, [r3, #1]!
 254 003e 8242     		cmp	r2, r0
 255 0040 0ED0     		beq	.L69
 256              	.L49:
 257 0042 9945     		cmp	r9, r3
 258 0044 F9D1     		bne	.L76
 259 0046 95F9D630 		ldrsb	r3, [r5, #214]
 260 004a 8342     		cmp	r3, r0
 261 004c 08D0     		beq	.L69
 262 004e 05F1D702 		add	r2, r5, #215
 263              	.L63:
 264 0052 A242     		cmp	r2, r4
 265 0054 00F09280 		beq	.L81
 266 0058 14F9013F 		ldrsb	r3, [r4, #1]!
 267 005c 8342     		cmp	r3, r0
 268 005e F8D1     		bne	.L63
 269              	.L69:
 270 0060 B0EE480A 		vmov.f32	s0, s16
 271              	.L48:
 272 0064 5846     		mov	r0, fp
 273 0066 FFF7FEFF 		bl	_ZN16HeaterProtection4InitEf
 274 006a BAF1070F 		cmp	r10, #7
 275 006e 04D8     		bhi	.L53
 276 0070 5946     		mov	r1, fp
 277 0072 D8F84000 		ldr	r0, [r8, #64]
 278 0076 FFF7FEFF 		bl	_ZN3PID19SetHeaterProtectionEP16HeaterProtection
 279              	.L53:
 280 007a 0AF1010A 		add	r10, r10, #1
 281 007e BAF1100F 		cmp	r10, #16
 282 0082 CFD1     		bne	.L54
 283 0084 4FF00009 		mov	r9, #0
 284 0088 DFED408A 		vldr.32	s17, .L82+8
 285 008c 9FED408A 		vldr.32	s16, .L82+12
ARM GAS  /tmp/ccg0SVmY.s 			page 6


 286 0090 DFED409A 		vldr.32	s19, .L82+16
 287 0094 9FED409A 		vldr.32	s18, .L82+20
 288 0098 C846     		mov	r8, r9
 289 009a 05F14404 		add	r4, r5, #68
 290              	.L61:
 291 009e C4F84080 		str	r8, [r4, #64]
 292 00a2 95F9D230 		ldrsb	r3, [r5, #210]
 293 00a6 4FFA89F1 		sxtb	r1, r9
 294 00aa 8B42     		cmp	r3, r1
 295 00ac 5AD0     		beq	.L55
 296 00ae 3B46     		mov	r3, r7
 297 00b0 3046     		mov	r0, r6
 298 00b2 06F1FF3C 		add	ip, r6, #-1
 299 00b6 03E0     		b	.L56
 300              	.L77:
 301 00b8 13F9012F 		ldrsb	r2, [r3, #1]!
 302 00bc 8A42     		cmp	r2, r1
 303 00be 51D0     		beq	.L55
 304              	.L56:
 305 00c0 6345     		cmp	r3, ip
 306 00c2 F9D1     		bne	.L77
 307 00c4 95F9D630 		ldrsb	r3, [r5, #214]
 308 00c8 8B42     		cmp	r3, r1
 309 00ca 4BD0     		beq	.L55
 310 00cc 05F1D702 		add	r2, r5, #215
 311 00d0 03E0     		b	.L64
 312              	.L78:
 313 00d2 10F9013F 		ldrsb	r3, [r0, #1]!
 314 00d6 8B42     		cmp	r3, r1
 315 00d8 44D0     		beq	.L55
 316              	.L64:
 317 00da 9042     		cmp	r0, r2
 318 00dc F9D1     		bne	.L78
 319 00de 0022     		movs	r2, #0
 320 00e0 0121     		movs	r1, #1
 321 00e2 B1EE061A 		vmov.f32	s2, #5.5e+0
 322 00e6 F0EE690A 		vmov.f32	s1, s19
 323 00ea B0EE490A 		vmov.f32	s0, s18
 324 00ee 2068     		ldr	r0, [r4]
 325 00f0 FFF7FEFF 		bl	_ZN3PID4InitEfffbb
 326              	.L65:
 327 00f4 09F10109 		add	r9, r9, #1
 328 00f8 B9F1080F 		cmp	r9, #8
 329 00fc C4F82080 		str	r8, [r4, #32]
 330 0100 04F10404 		add	r4, r4, #4
 331 0104 CBD1     		bne	.L61
 332 0106 05F1A403 		add	r3, r5, #164
 333 010a 05F1CC02 		add	r2, r5, #204
 334 010e 0024     		movs	r4, #0
 335              	.L62:
 336 0110 43F8044B 		str	r4, [r3], #4
 337 0114 9A42     		cmp	r2, r3
 338 0116 FBD1     		bne	.L62
 339 0118 4FF47A70 		mov	r0, #1000
 340 011c FFF7FEFF 		bl	_ZN17TemperatureSensor6CreateEj
 341 0120 1E49     		ldr	r1, .L82+24
 342 0122 C5F8A400 		str	r0, [r5, #164]
ARM GAS  /tmp/ccg0SVmY.s 			page 7


 343 0126 FFF7FEFF 		bl	_ZN17TemperatureSensor13SetHeaterNameEPKc
 344 012a 40F2E930 		movw	r0, #1001
 345 012e FFF7FEFF 		bl	_ZN17TemperatureSensor6CreateEj
 346 0132 C5F8A800 		str	r0, [r5, #168]
 347 0136 40F2EA30 		movw	r0, #1002
 348 013a FFF7FEFF 		bl	_ZN17TemperatureSensor6CreateEj
 349 013e 85F8D140 		strb	r4, [r5, #209]
 350 0142 C5F8AC00 		str	r0, [r5, #172]
 351 0146 FFF7FEFF 		bl	millis
 352 014a 2B68     		ldr	r3, [r5]
 353 014c D3F8D437 		ldr	r3, [r3, #2004]
 354 0150 0122     		movs	r2, #1
 355 0152 C31A     		subs	r3, r0, r3
 356 0154 C5F8CC30 		str	r3, [r5, #204]
 357 0158 85F8D020 		strb	r2, [r5, #208]
 358 015c BDEC048B 		vldm	sp!, {d8-d9}
 359 0160 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 360              	.L55:
 361 0164 0022     		movs	r2, #0
 362 0166 1146     		mov	r1, r2
 363 0168 B2EE041A 		vmov.f32	s2, #1.0e+1
 364 016c F0EE680A 		vmov.f32	s1, s17
 365 0170 B0EE480A 		vmov.f32	s0, s16
 366 0174 2068     		ldr	r0, [r4]
 367 0176 FFF7FEFF 		bl	_ZN3PID4InitEfffbb
 368 017a BBE7     		b	.L65
 369              	.L81:
 370 017c B0EE680A 		vmov.f32	s0, s17
 371 0180 70E7     		b	.L48
 372              	.L83:
 373 0182 00BF     		.align	2
 374              	.L82:
 375 0184 0000FA42 		.word	1123680256
 376 0188 00009143 		.word	1133576192
 377 018c 00002F44 		.word	1143930880
 378 0190 0000B442 		.word	1119092736
 379 0194 00000C43 		.word	1124859904
 380 0198 0000AA43 		.word	1135214592
 381 019c 00000000 		.word	.LC0
 382              		.size	_ZN4Heat4InitEv, .-_ZN4Heat4InitEv
 383              		.section	.text._ZN4Heat4ExitEv,"ax",%progbits
 384              		.align	1
 385              		.p2align 2,,3
 386              		.global	_ZN4Heat4ExitEv
 387              		.syntax unified
 388              		.thumb
 389              		.thumb_func
 390              		.fpu fpv4-sp-d16
 391              		.type	_ZN4Heat4ExitEv, %function
 392              	_ZN4Heat4ExitEv:
 393              		@ args = 0, pretend = 0, frame = 0
 394              		@ frame_needed = 0, uses_anonymous_args = 0
 395 0000 70B5     		push	{r4, r5, r6, lr}
 396 0002 0646     		mov	r6, r0
 397 0004 00F14404 		add	r4, r0, #68
 398 0008 00F16405 		add	r5, r0, #100
 399              	.L85:
ARM GAS  /tmp/ccg0SVmY.s 			page 8


 400 000c 54F8040B 		ldr	r0, [r4], #4
 401 0010 FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 402 0014 A542     		cmp	r5, r4
 403 0016 F9D1     		bne	.L85
 404 0018 0023     		movs	r3, #0
 405 001a 86F8D030 		strb	r3, [r6, #208]
 406 001e 70BD     		pop	{r4, r5, r6, pc}
 407              		.size	_ZN4Heat4ExitEv, .-_ZN4Heat4ExitEv
 408              		.section	.text._ZN4Heat4SpinEv,"ax",%progbits
 409              		.align	1
 410              		.p2align 2,,3
 411              		.global	_ZN4Heat4SpinEv
 412              		.syntax unified
 413              		.thumb
 414              		.thumb_func
 415              		.fpu fpv4-sp-d16
 416              		.type	_ZN4Heat4SpinEv, %function
 417              	_ZN4Heat4SpinEv:
 418              		@ args = 0, pretend = 0, frame = 0
 419              		@ frame_needed = 0, uses_anonymous_args = 0
 420 0000 90F8D030 		ldrb	r3, [r0, #208]	@ zero_extendqisi2
 421 0004 03B9     		cbnz	r3, .L101
 422 0006 7047     		bx	lr
 423              	.L101:
 424 0008 70B5     		push	{r4, r5, r6, lr}
 425 000a 0546     		mov	r5, r0
 426 000c FFF7FEFF 		bl	millis
 427 0010 2A68     		ldr	r2, [r5]
 428 0012 D5F8CC30 		ldr	r3, [r5, #204]
 429 0016 D2F8D427 		ldr	r2, [r2, #2004]
 430 001a C31A     		subs	r3, r0, r3
 431 001c 9342     		cmp	r3, r2
 432 001e 1BD3     		bcc	.L88
 433 0020 C5F8CC00 		str	r0, [r5, #204]
 434 0024 05F14404 		add	r4, r5, #68
 435 0028 05F16406 		add	r6, r5, #100
 436              	.L92:
 437 002c 54F8040B 		ldr	r0, [r4], #4
 438 0030 FFF7FEFF 		bl	_ZN3PID4SpinEv
 439 0034 B442     		cmp	r4, r6
 440 0036 F9D1     		bne	.L92
 441 0038 95F9D830 		ldrsb	r3, [r5, #216]
 442 003c 5A1C     		adds	r2, r3, #1
 443 003e 0BD0     		beq	.L88
 444 0040 05EB8302 		add	r2, r5, r3, lsl #2
 445 0044 526C     		ldr	r2, [r2, #68]
 446 0046 92F87C20 		ldrb	r2, [r2, #124]	@ zero_extendqisi2
 447 004a 052A     		cmp	r2, #5
 448 004c 04D8     		bhi	.L88
 449 004e FF22     		movs	r2, #255
 450 0050 85F8D930 		strb	r3, [r5, #217]
 451 0054 85F8D820 		strb	r2, [r5, #216]
 452              	.L88:
 453 0058 70BD     		pop	{r4, r5, r6, pc}
 454              		.size	_ZN4Heat4SpinEv, .-_ZN4Heat4SpinEv
 455              		.global	__aeabi_f2d
 456 005a 00BF     		.section	.text._ZN4Heat11DiagnosticsE11MessageType,"ax",%progbits
ARM GAS  /tmp/ccg0SVmY.s 			page 9


 457              		.align	1
 458              		.p2align 2,,3
 459              		.global	_ZN4Heat11DiagnosticsE11MessageType
 460              		.syntax unified
 461              		.thumb
 462              		.thumb_func
 463              		.fpu fpv4-sp-d16
 464              		.type	_ZN4Heat11DiagnosticsE11MessageType, %function
 465              	_ZN4Heat11DiagnosticsE11MessageType:
 466              		@ args = 0, pretend = 0, frame = 0
 467              		@ frame_needed = 0, uses_anonymous_args = 0
 468 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 469 0004 0446     		mov	r4, r0
 470 0006 0546     		mov	r5, r0
 471 0008 82B0     		sub	sp, sp, #8
 472 000a 284A     		ldr	r2, .L115
 473 000c 54F8D20B 		ldr	r0, [r4], #210
 474 0010 DFF8A480 		ldr	r8, .L115+12
 475 0014 0F46     		mov	r7, r1
 476 0016 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 477 001a 05F1D606 		add	r6, r5, #214
 478              	.L103:
 479 001e 14F9013B 		ldrsb	r3, [r4], #1
 480 0022 2868     		ldr	r0, [r5]
 481 0024 4246     		mov	r2, r8
 482 0026 3946     		mov	r1, r7
 483 0028 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 484 002c A642     		cmp	r6, r4
 485 002e F6D1     		bne	.L103
 486 0030 2E46     		mov	r6, r5
 487 0032 1F4A     		ldr	r2, .L115+4
 488 0034 56F8D80B 		ldr	r0, [r6], #216
 489 0038 DFF87C80 		ldr	r8, .L115+12
 490 003c 3946     		mov	r1, r7
 491 003e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 492              	.L104:
 493 0042 14F9013B 		ldrsb	r3, [r4], #1
 494 0046 2868     		ldr	r0, [r5]
 495 0048 4246     		mov	r2, r8
 496 004a 3946     		mov	r1, r7
 497 004c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 498 0050 A642     		cmp	r6, r4
 499 0052 F6D1     		bne	.L104
 500 0054 2C46     		mov	r4, r5
 501 0056 174A     		ldr	r2, .L115+8
 502 0058 54F8440B 		ldr	r0, [r4], #68
 503 005c DFF85C90 		ldr	r9, .L115+16
 504 0060 3946     		mov	r1, r7
 505 0062 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 506 0066 05F16408 		add	r8, r5, #100
 507 006a 0026     		movs	r6, #0
 508 006c 03E0     		b	.L106
 509              	.L105:
 510 006e 4445     		cmp	r4, r8
 511 0070 06F10106 		add	r6, r6, #1
 512 0074 16D0     		beq	.L114
 513              	.L106:
ARM GAS  /tmp/ccg0SVmY.s 			page 10


 514 0076 54F8043B 		ldr	r3, [r4], #4
 515 007a 93F87E20 		ldrb	r2, [r3, #126]	@ zero_extendqisi2
 516 007e 002A     		cmp	r2, #0
 517 0080 F5D0     		beq	.L105
 518 0082 586E     		ldr	r0, [r3, #100]	@ float
 519 0084 D5F800A0 		ldr	r10, [r5]
 520 0088 FFF7FEFF 		bl	__aeabi_f2d
 521 008c 3346     		mov	r3, r6
 522 008e CDE90001 		strd	r0, [sp]
 523 0092 4A46     		mov	r2, r9
 524 0094 5046     		mov	r0, r10
 525 0096 3946     		mov	r1, r7
 526 0098 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 527 009c 4445     		cmp	r4, r8
 528 009e 06F10106 		add	r6, r6, #1
 529 00a2 E8D1     		bne	.L106
 530              	.L114:
 531 00a4 02B0     		add	sp, sp, #8
 532              		@ sp needed
 533 00a6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 534              	.L116:
 535 00aa 00BF     		.align	2
 536              	.L115:
 537 00ac 00000000 		.word	.LC1
 538 00b0 20000000 		.word	.LC3
 539 00b4 34000000 		.word	.LC4
 540 00b8 1C000000 		.word	.LC2
 541 00bc 38000000 		.word	.LC5
 542              		.size	_ZN4Heat11DiagnosticsE11MessageType, .-_ZN4Heat11DiagnosticsE11MessageType
 543              		.section	.text._ZNK4Heat27AllHeatersAtSetTemperaturesEb,"ax",%progbits
 544              		.align	1
 545              		.p2align 2,,3
 546              		.global	_ZNK4Heat27AllHeatersAtSetTemperaturesEb
 547              		.syntax unified
 548              		.thumb
 549              		.thumb_func
 550              		.fpu fpv4-sp-d16
 551              		.type	_ZNK4Heat27AllHeatersAtSetTemperaturesEb, %function
 552              	_ZNK4Heat27AllHeatersAtSetTemperaturesEb:
 553              		@ args = 0, pretend = 0, frame = 0
 554              		@ frame_needed = 0, uses_anonymous_args = 0
 555 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 556 0004 0746     		mov	r7, r0
 557 0006 8846     		mov	r8, r1
 558 0008 00F1D209 		add	r9, r0, #210
 559 000c 00F1D506 		add	r6, r0, #213
 560 0010 0025     		movs	r5, #0
 561 0012 02E0     		b	.L122
 562              	.L118:
 563 0014 0135     		adds	r5, r5, #1
 564 0016 082D     		cmp	r5, #8
 565 0018 19D0     		beq	.L128
 566              	.L122:
 567 001a 6CB2     		sxtb	r4, r5
 568 001c 2146     		mov	r1, r4
 569 001e 0122     		movs	r2, #1
 570 0020 3846     		mov	r0, r7
ARM GAS  /tmp/ccg0SVmY.s 			page 11


 571 0022 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab.part.19
 572 0026 0028     		cmp	r0, #0
 573 0028 F4D1     		bne	.L118
 574 002a B8F1000F 		cmp	r8, #0
 575 002e 13D1     		bne	.L123
 576 0030 97F9D230 		ldrsb	r3, [r7, #210]
 577 0034 A342     		cmp	r3, r4
 578 0036 EDD0     		beq	.L118
 579 0038 4B46     		mov	r3, r9
 580 003a 03E0     		b	.L120
 581              	.L126:
 582 003c 13F9012F 		ldrsb	r2, [r3, #1]!
 583 0040 A242     		cmp	r2, r4
 584 0042 E7D0     		beq	.L118
 585              	.L120:
 586 0044 9E42     		cmp	r6, r3
 587 0046 F9D1     		bne	.L126
 588 0048 4046     		mov	r0, r8
 589 004a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 590              	.L128:
 591 004e 4FF00108 		mov	r8, #1
 592 0052 4046     		mov	r0, r8
 593 0054 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 594              	.L123:
 595 0058 8046     		mov	r8, r0
 596 005a 4046     		mov	r0, r8
 597 005c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 598              		.size	_ZNK4Heat27AllHeatersAtSetTemperaturesEb, .-_ZNK4Heat27AllHeatersAtSetTemperaturesEb
 599              		.section	.text._ZNK4Heat22HeaterAtSetTemperatureEab,"ax",%progbits
 600              		.align	1
 601              		.p2align 2,,3
 602              		.global	_ZNK4Heat22HeaterAtSetTemperatureEab
 603              		.syntax unified
 604              		.thumb
 605              		.thumb_func
 606              		.fpu fpv4-sp-d16
 607              		.type	_ZNK4Heat22HeaterAtSetTemperatureEab, %function
 608              	_ZNK4Heat22HeaterAtSetTemperatureEab:
 609              		@ args = 0, pretend = 0, frame = 0
 610              		@ frame_needed = 0, uses_anonymous_args = 0
 611              		@ link register save eliminated.
 612 0000 CBB2     		uxtb	r3, r1
 613 0002 072B     		cmp	r3, #7
 614 0004 01D8     		bhi	.L130
 615 0006 FFF7FEBF 		b	_ZNK4Heat22HeaterAtSetTemperatureEab.part.19
 616              	.L130:
 617 000a 0120     		movs	r0, #1
 618 000c 7047     		bx	lr
 619              		.size	_ZNK4Heat22HeaterAtSetTemperatureEab, .-_ZNK4Heat22HeaterAtSetTemperatureEab
 620 000e 00BF     		.section	.text._ZNK4Heat9GetStatusEa,"ax",%progbits
 621              		.align	1
 622              		.p2align 2,,3
 623              		.global	_ZNK4Heat9GetStatusEa
 624              		.syntax unified
 625              		.thumb
 626              		.thumb_func
 627              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccg0SVmY.s 			page 12


 628              		.type	_ZNK4Heat9GetStatusEa, %function
 629              	_ZNK4Heat9GetStatusEa:
 630              		@ args = 0, pretend = 0, frame = 0
 631              		@ frame_needed = 0, uses_anonymous_args = 0
 632              		@ link register save eliminated.
 633 0000 CBB2     		uxtb	r3, r1
 634 0002 072B     		cmp	r3, #7
 635 0004 10D8     		bhi	.L135
 636 0006 00EB8100 		add	r0, r0, r1, lsl #2
 637 000a 426C     		ldr	r2, [r0, #68]
 638 000c 92F87C30 		ldrb	r3, [r2, #124]	@ zero_extendqisi2
 639 0010 63B1     		cbz	r3, .L134
 640 0012 012B     		cmp	r3, #1
 641 0014 08D0     		beq	.L135
 642 0016 052B     		cmp	r3, #5
 643 0018 0AD8     		bhi	.L136
 644 001a 92F87E30 		ldrb	r3, [r2, #126]	@ zero_extendqisi2
 645 001e 002B     		cmp	r3, #0
 646 0020 14BF     		ite	ne
 647 0022 0220     		movne	r0, #2
 648 0024 0120     		moveq	r0, #1
 649 0026 7047     		bx	lr
 650              	.L135:
 651 0028 0020     		movs	r0, #0
 652 002a 7047     		bx	lr
 653              	.L134:
 654 002c 0320     		movs	r0, #3
 655 002e 7047     		bx	lr
 656              	.L136:
 657 0030 0420     		movs	r0, #4
 658 0032 7047     		bx	lr
 659              		.size	_ZNK4Heat9GetStatusEa, .-_ZNK4Heat9GetStatusEa
 660              		.section	.text._ZN4Heat12SetBedHeaterEja,"ax",%progbits
 661              		.align	1
 662              		.p2align 2,,3
 663              		.global	_ZN4Heat12SetBedHeaterEja
 664              		.syntax unified
 665              		.thumb
 666              		.thumb_func
 667              		.fpu fpv4-sp-d16
 668              		.type	_ZN4Heat12SetBedHeaterEja, %function
 669              	_ZN4Heat12SetBedHeaterEja:
 670              		@ args = 0, pretend = 0, frame = 0
 671              		@ frame_needed = 0, uses_anonymous_args = 0
 672 0000 38B5     		push	{r3, r4, r5, lr}
 673 0002 4418     		adds	r4, r0, r1
 674 0004 1546     		mov	r5, r2
 675 0006 94F9D230 		ldrsb	r3, [r4, #210]
 676 000a 002B     		cmp	r3, #0
 677 000c 04DB     		blt	.L139
 678 000e 00EB8300 		add	r0, r0, r3, lsl #2
 679 0012 406C     		ldr	r0, [r0, #68]
 680 0014 FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 681              	.L139:
 682 0018 84F8D250 		strb	r5, [r4, #210]
 683 001c 38BD     		pop	{r3, r4, r5, pc}
 684              		.size	_ZN4Heat12SetBedHeaterEja, .-_ZN4Heat12SetBedHeaterEja
ARM GAS  /tmp/ccg0SVmY.s 			page 13


 685 001e 00BF     		.section	.text._ZNK4Heat11IsBedHeaterEa,"ax",%progbits
 686              		.align	1
 687              		.p2align 2,,3
 688              		.global	_ZNK4Heat11IsBedHeaterEa
 689              		.syntax unified
 690              		.thumb
 691              		.thumb_func
 692              		.fpu fpv4-sp-d16
 693              		.type	_ZNK4Heat11IsBedHeaterEa, %function
 694              	_ZNK4Heat11IsBedHeaterEa:
 695              		@ args = 0, pretend = 0, frame = 0
 696              		@ frame_needed = 0, uses_anonymous_args = 0
 697              		@ link register save eliminated.
 698 0000 90F9D220 		ldrsb	r2, [r0, #210]
 699 0004 8A42     		cmp	r2, r1
 700 0006 00F1D203 		add	r3, r0, #210
 701 000a 09D0     		beq	.L146
 702 000c D530     		adds	r0, r0, #213
 703 000e 03E0     		b	.L143
 704              	.L144:
 705 0010 13F9012F 		ldrsb	r2, [r3, #1]!
 706 0014 8A42     		cmp	r2, r1
 707 0016 03D0     		beq	.L146
 708              	.L143:
 709 0018 8342     		cmp	r3, r0
 710 001a F9D1     		bne	.L144
 711 001c 0020     		movs	r0, #0
 712 001e 7047     		bx	lr
 713              	.L146:
 714 0020 0120     		movs	r0, #1
 715 0022 7047     		bx	lr
 716              		.size	_ZNK4Heat11IsBedHeaterEa, .-_ZNK4Heat11IsBedHeaterEa
 717              		.section	.text._ZN4Heat16SetChamberHeaterEja,"ax",%progbits
 718              		.align	1
 719              		.p2align 2,,3
 720              		.global	_ZN4Heat16SetChamberHeaterEja
 721              		.syntax unified
 722              		.thumb
 723              		.thumb_func
 724              		.fpu fpv4-sp-d16
 725              		.type	_ZN4Heat16SetChamberHeaterEja, %function
 726              	_ZN4Heat16SetChamberHeaterEja:
 727              		@ args = 0, pretend = 0, frame = 0
 728              		@ frame_needed = 0, uses_anonymous_args = 0
 729 0000 70B5     		push	{r4, r5, r6, lr}
 730 0002 8318     		adds	r3, r0, r2
 731 0004 0446     		mov	r4, r0
 732 0006 93F9D630 		ldrsb	r3, [r3, #214]
 733 000a 002B     		cmp	r3, #0
 734 000c 1546     		mov	r5, r2
 735 000e 0E46     		mov	r6, r1
 736 0010 04DB     		blt	.L148
 737 0012 00EB8303 		add	r3, r0, r3, lsl #2
 738 0016 586C     		ldr	r0, [r3, #68]
 739 0018 FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 740              	.L148:
 741 001c 3444     		add	r4, r4, r6
ARM GAS  /tmp/ccg0SVmY.s 			page 14


 742 001e 84F8D650 		strb	r5, [r4, #214]
 743 0022 70BD     		pop	{r4, r5, r6, pc}
 744              		.size	_ZN4Heat16SetChamberHeaterEja, .-_ZN4Heat16SetChamberHeaterEja
 745              		.section	.text._ZNK4Heat15IsChamberHeaterEa,"ax",%progbits
 746              		.align	1
 747              		.p2align 2,,3
 748              		.global	_ZNK4Heat15IsChamberHeaterEa
 749              		.syntax unified
 750              		.thumb
 751              		.thumb_func
 752              		.fpu fpv4-sp-d16
 753              		.type	_ZNK4Heat15IsChamberHeaterEa, %function
 754              	_ZNK4Heat15IsChamberHeaterEa:
 755              		@ args = 0, pretend = 0, frame = 0
 756              		@ frame_needed = 0, uses_anonymous_args = 0
 757              		@ link register save eliminated.
 758 0000 90F9D620 		ldrsb	r2, [r0, #214]
 759 0004 8A42     		cmp	r2, r1
 760 0006 00F1D603 		add	r3, r0, #214
 761 000a 09D0     		beq	.L155
 762 000c D730     		adds	r0, r0, #215
 763 000e 03E0     		b	.L152
 764              	.L153:
 765 0010 13F9012F 		ldrsb	r2, [r3, #1]!
 766 0014 8A42     		cmp	r2, r1
 767 0016 03D0     		beq	.L155
 768              	.L152:
 769 0018 8342     		cmp	r3, r0
 770 001a F9D1     		bne	.L153
 771 001c 0020     		movs	r0, #0
 772 001e 7047     		bx	lr
 773              	.L155:
 774 0020 0120     		movs	r0, #1
 775 0022 7047     		bx	lr
 776              		.size	_ZNK4Heat15IsChamberHeaterEa, .-_ZNK4Heat15IsChamberHeaterEa
 777              		.section	.text._ZN4Heat20SetActiveTemperatureEaf,"ax",%progbits
 778              		.align	1
 779              		.p2align 2,,3
 780              		.global	_ZN4Heat20SetActiveTemperatureEaf
 781              		.syntax unified
 782              		.thumb
 783              		.thumb_func
 784              		.fpu fpv4-sp-d16
 785              		.type	_ZN4Heat20SetActiveTemperatureEaf, %function
 786              	_ZN4Heat20SetActiveTemperatureEaf:
 787              		@ args = 0, pretend = 0, frame = 0
 788              		@ frame_needed = 0, uses_anonymous_args = 0
 789              		@ link register save eliminated.
 790 0000 CBB2     		uxtb	r3, r1
 791 0002 072B     		cmp	r3, #7
 792 0004 00D9     		bls	.L158
 793 0006 7047     		bx	lr
 794              	.L158:
 795 0008 00EB8101 		add	r1, r0, r1, lsl #2
 796 000c 486C     		ldr	r0, [r1, #68]
 797 000e FFF7FEBF 		b	_ZN3PID20SetActiveTemperatureEf
 798              		.size	_ZN4Heat20SetActiveTemperatureEaf, .-_ZN4Heat20SetActiveTemperatureEaf
ARM GAS  /tmp/ccg0SVmY.s 			page 15


 799 0012 00BF     		.section	.text._ZNK4Heat20GetActiveTemperatureEa,"ax",%progbits
 800              		.align	1
 801              		.p2align 2,,3
 802              		.global	_ZNK4Heat20GetActiveTemperatureEa
 803              		.syntax unified
 804              		.thumb
 805              		.thumb_func
 806              		.fpu fpv4-sp-d16
 807              		.type	_ZNK4Heat20GetActiveTemperatureEa, %function
 808              	_ZNK4Heat20GetActiveTemperatureEa:
 809              		@ args = 0, pretend = 0, frame = 0
 810              		@ frame_needed = 0, uses_anonymous_args = 0
 811              		@ link register save eliminated.
 812 0000 CBB2     		uxtb	r3, r1
 813 0002 072B     		cmp	r3, #7
 814 0004 9DBF     		ittte	ls
 815 0006 00EB8100 		addls	r0, r0, r1, lsl #2
 816 000a 436C     		ldrls	r3, [r0, #68]
 817 000c 93ED020A 		vldrls.32	s0, [r3, #8]
 818 0010 9FED010A 		vldrhi.32	s0, .L162
 819 0014 7047     		bx	lr
 820              	.L163:
 821 0016 00BF     		.align	2
 822              	.L162:
 823 0018 339388C3 		.word	3280507699
 824              		.size	_ZNK4Heat20GetActiveTemperatureEa, .-_ZNK4Heat20GetActiveTemperatureEa
 825              		.section	.text._ZN4Heat21SetStandbyTemperatureEaf,"ax",%progbits
 826              		.align	1
 827              		.p2align 2,,3
 828              		.global	_ZN4Heat21SetStandbyTemperatureEaf
 829              		.syntax unified
 830              		.thumb
 831              		.thumb_func
 832              		.fpu fpv4-sp-d16
 833              		.type	_ZN4Heat21SetStandbyTemperatureEaf, %function
 834              	_ZN4Heat21SetStandbyTemperatureEaf:
 835              		@ args = 0, pretend = 0, frame = 0
 836              		@ frame_needed = 0, uses_anonymous_args = 0
 837              		@ link register save eliminated.
 838 0000 CBB2     		uxtb	r3, r1
 839 0002 072B     		cmp	r3, #7
 840 0004 00D9     		bls	.L166
 841 0006 7047     		bx	lr
 842              	.L166:
 843 0008 00EB8101 		add	r1, r0, r1, lsl #2
 844 000c 486C     		ldr	r0, [r1, #68]
 845 000e FFF7FEBF 		b	_ZN3PID21SetStandbyTemperatureEf
 846              		.size	_ZN4Heat21SetStandbyTemperatureEaf, .-_ZN4Heat21SetStandbyTemperatureEaf
 847 0012 00BF     		.section	.text._ZNK4Heat21GetStandbyTemperatureEa,"ax",%progbits
 848              		.align	1
 849              		.p2align 2,,3
 850              		.global	_ZNK4Heat21GetStandbyTemperatureEa
 851              		.syntax unified
 852              		.thumb
 853              		.thumb_func
 854              		.fpu fpv4-sp-d16
 855              		.type	_ZNK4Heat21GetStandbyTemperatureEa, %function
ARM GAS  /tmp/ccg0SVmY.s 			page 16


 856              	_ZNK4Heat21GetStandbyTemperatureEa:
 857              		@ args = 0, pretend = 0, frame = 0
 858              		@ frame_needed = 0, uses_anonymous_args = 0
 859              		@ link register save eliminated.
 860 0000 CBB2     		uxtb	r3, r1
 861 0002 072B     		cmp	r3, #7
 862 0004 9DBF     		ittte	ls
 863 0006 00EB8100 		addls	r0, r0, r1, lsl #2
 864 000a 436C     		ldrls	r3, [r0, #68]
 865 000c 93ED030A 		vldrls.32	s0, [r3, #12]
 866 0010 9FED010A 		vldrhi.32	s0, .L170
 867 0014 7047     		bx	lr
 868              	.L171:
 869 0016 00BF     		.align	2
 870              	.L170:
 871 0018 339388C3 		.word	3280507699
 872              		.size	_ZNK4Heat21GetStandbyTemperatureEa, .-_ZNK4Heat21GetStandbyTemperatureEa
 873              		.section	.text._ZNK4Heat26GetHighestTemperatureLimitEa,"ax",%progbits
 874              		.align	1
 875              		.p2align 2,,3
 876              		.global	_ZNK4Heat26GetHighestTemperatureLimitEa
 877              		.syntax unified
 878              		.thumb
 879              		.thumb_func
 880              		.fpu fpv4-sp-d16
 881              		.type	_ZNK4Heat26GetHighestTemperatureLimitEa, %function
 882              	_ZNK4Heat26GetHighestTemperatureLimitEa:
 883              		@ args = 0, pretend = 0, frame = 0
 884              		@ frame_needed = 0, uses_anonymous_args = 0
 885              		@ link register save eliminated.
 886 0000 CBB2     		uxtb	r3, r1
 887 0002 072B     		cmp	r3, #7
 888 0004 28D8     		bhi	.L176
 889 0006 9FED160A 		vldr.32	s0, .L186
 890 000a 10B4     		push	{r4}
 891 000c B0EE407A 		vmov.f32	s14, s0
 892 0010 00F14004 		add	r4, r0, #64
 893 0014 01E0     		b	.L175
 894              	.L174:
 895 0016 A042     		cmp	r0, r4
 896 0018 13D0     		beq	.L184
 897              	.L175:
 898 001a 50F8043F 		ldr	r3, [r0, #4]!
 899 001e 93F90920 		ldrsb	r2, [r3, #9]
 900 0022 8A42     		cmp	r2, r1
 901 0024 F7D1     		bne	.L174
 902 0026 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 903 0028 002A     		cmp	r2, #0
 904 002a F4D1     		bne	.L174
 905 002c B4EE470A 		vcmp.f32	s0, s14
 906 0030 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 907 0034 D3ED017A 		vldr.32	s15, [r3, #4]
 908 0038 06D1     		bne	.L185
 909 003a A042     		cmp	r0, r4
 910 003c B0EE670A 		vmov.f32	s0, s15
 911 0040 EBD1     		bne	.L175
 912              	.L184:
ARM GAS  /tmp/ccg0SVmY.s 			page 17


 913 0042 5DF8044B 		ldr	r4, [sp], #4
 914 0046 7047     		bx	lr
 915              	.L185:
 916 0048 F4EE407A 		vcmp.f32	s15, s0
 917 004c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 918 0050 C8BF     		it	gt
 919 0052 B0EE670A 		vmovgt.f32	s0, s15
 920 0056 DEE7     		b	.L174
 921              	.L176:
 922 0058 9FED010A 		vldr.32	s0, .L186
 923 005c 7047     		bx	lr
 924              	.L187:
 925 005e 00BF     		.align	2
 926              	.L186:
 927 0060 0000FA44 		.word	1157234688
 928              		.size	_ZNK4Heat26GetHighestTemperatureLimitEa, .-_ZNK4Heat26GetHighestTemperatureLimitEa
 929              		.section	.text._ZNK4Heat25GetLowestTemperatureLimitEa,"ax",%progbits
 930              		.align	1
 931              		.p2align 2,,3
 932              		.global	_ZNK4Heat25GetLowestTemperatureLimitEa
 933              		.syntax unified
 934              		.thumb
 935              		.thumb_func
 936              		.fpu fpv4-sp-d16
 937              		.type	_ZNK4Heat25GetLowestTemperatureLimitEa, %function
 938              	_ZNK4Heat25GetLowestTemperatureLimitEa:
 939              		@ args = 0, pretend = 0, frame = 0
 940              		@ frame_needed = 0, uses_anonymous_args = 0
 941              		@ link register save eliminated.
 942 0000 CBB2     		uxtb	r3, r1
 943 0002 072B     		cmp	r3, #7
 944 0004 20D8     		bhi	.L192
 945 0006 9FED160A 		vldr.32	s0, .L202
 946 000a 10B4     		push	{r4}
 947 000c F0EE407A 		vmov.f32	s15, s0
 948 0010 00F14004 		add	r4, r0, #64
 949 0014 01E0     		b	.L191
 950              	.L190:
 951 0016 A042     		cmp	r0, r4
 952 0018 13D0     		beq	.L200
 953              	.L191:
 954 001a 50F8043F 		ldr	r3, [r0, #4]!
 955 001e 93F90920 		ldrsb	r2, [r3, #9]
 956 0022 8A42     		cmp	r2, r1
 957 0024 F7D1     		bne	.L190
 958 0026 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 959 0028 012A     		cmp	r2, #1
 960 002a F4D1     		bne	.L190
 961 002c B4EE670A 		vcmp.f32	s0, s15
 962 0030 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 963 0034 93ED017A 		vldr.32	s14, [r3, #4]
 964 0038 09D1     		bne	.L201
 965 003a A042     		cmp	r0, r4
 966 003c B0EE470A 		vmov.f32	s0, s14
 967 0040 EBD1     		bne	.L191
 968              	.L200:
 969 0042 5DF8044B 		ldr	r4, [sp], #4
ARM GAS  /tmp/ccg0SVmY.s 			page 18


 970 0046 7047     		bx	lr
 971              	.L192:
 972 0048 9FED050A 		vldr.32	s0, .L202
 973 004c 7047     		bx	lr
 974              	.L201:
 975 004e B4EE407A 		vcmp.f32	s14, s0
 976 0052 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 977 0056 48BF     		it	mi
 978 0058 B0EE470A 		vmovmi.f32	s0, s14
 979 005c DBE7     		b	.L190
 980              	.L203:
 981 005e 00BF     		.align	2
 982              	.L202:
 983 0060 339388C3 		.word	3280507699
 984              		.size	_ZNK4Heat25GetLowestTemperatureLimitEa, .-_ZNK4Heat25GetLowestTemperatureLimitEa
 985              		.section	.text._ZNK4Heat14GetTemperatureEa,"ax",%progbits
 986              		.align	1
 987              		.p2align 2,,3
 988              		.global	_ZNK4Heat14GetTemperatureEa
 989              		.syntax unified
 990              		.thumb
 991              		.thumb_func
 992              		.fpu fpv4-sp-d16
 993              		.type	_ZNK4Heat14GetTemperatureEa, %function
 994              	_ZNK4Heat14GetTemperatureEa:
 995              		@ args = 0, pretend = 0, frame = 0
 996              		@ frame_needed = 0, uses_anonymous_args = 0
 997              		@ link register save eliminated.
 998 0000 CBB2     		uxtb	r3, r1
 999 0002 072B     		cmp	r3, #7
 1000 0004 9DBF     		ittte	ls
 1001 0006 00EB8100 		addls	r0, r0, r1, lsl #2
 1002 000a 436C     		ldrls	r3, [r0, #68]
 1003 000c 93ED060A 		vldrls.32	s0, [r3, #24]
 1004 0010 9FED010A 		vldrhi.32	s0, .L207
 1005 0014 7047     		bx	lr
 1006              	.L208:
 1007 0016 00BF     		.align	2
 1008              	.L207:
 1009 0018 339388C3 		.word	3280507699
 1010              		.size	_ZNK4Heat14GetTemperatureEa, .-_ZNK4Heat14GetTemperatureEa
 1011              		.section	.text._ZNK4Heat20GetTargetTemperatureEa,"ax",%progbits
 1012              		.align	1
 1013              		.p2align 2,,3
 1014              		.global	_ZNK4Heat20GetTargetTemperatureEa
 1015              		.syntax unified
 1016              		.thumb
 1017              		.thumb_func
 1018              		.fpu fpv4-sp-d16
 1019              		.type	_ZNK4Heat20GetTargetTemperatureEa, %function
 1020              	_ZNK4Heat20GetTargetTemperatureEa:
 1021              		@ args = 0, pretend = 0, frame = 0
 1022              		@ frame_needed = 0, uses_anonymous_args = 0
 1023              		@ link register save eliminated.
 1024 0000 CBB2     		uxtb	r3, r1
 1025 0002 072B     		cmp	r3, #7
 1026 0004 0DD8     		bhi	.L213
ARM GAS  /tmp/ccg0SVmY.s 			page 19


 1027 0006 00EB8100 		add	r0, r0, r1, lsl #2
 1028 000a 426C     		ldr	r2, [r0, #68]
 1029 000c 92F87C30 		ldrb	r3, [r2, #124]	@ zero_extendqisi2
 1030 0010 023B     		subs	r3, r3, #2
 1031 0012 032B     		cmp	r3, #3
 1032 0014 05D8     		bhi	.L213
 1033 0016 92F87E30 		ldrb	r3, [r2, #126]	@ zero_extendqisi2
 1034 001a 2BB9     		cbnz	r3, .L214
 1035 001c 92ED030A 		vldr.32	s0, [r2, #12]
 1036 0020 7047     		bx	lr
 1037              	.L213:
 1038 0022 9FED030A 		vldr.32	s0, .L215
 1039 0026 7047     		bx	lr
 1040              	.L214:
 1041 0028 92ED020A 		vldr.32	s0, [r2, #8]
 1042 002c 7047     		bx	lr
 1043              	.L216:
 1044 002e 00BF     		.align	2
 1045              	.L215:
 1046 0030 00000000 		.word	0
 1047              		.size	_ZNK4Heat20GetTargetTemperatureEa, .-_ZNK4Heat20GetTargetTemperatureEa
 1048              		.section	.text._ZN4Heat8ActivateEa,"ax",%progbits
 1049              		.align	1
 1050              		.p2align 2,,3
 1051              		.global	_ZN4Heat8ActivateEa
 1052              		.syntax unified
 1053              		.thumb
 1054              		.thumb_func
 1055              		.fpu fpv4-sp-d16
 1056              		.type	_ZN4Heat8ActivateEa, %function
 1057              	_ZN4Heat8ActivateEa:
 1058              		@ args = 0, pretend = 0, frame = 0
 1059              		@ frame_needed = 0, uses_anonymous_args = 0
 1060              		@ link register save eliminated.
 1061 0000 CBB2     		uxtb	r3, r1
 1062 0002 072B     		cmp	r3, #7
 1063 0004 00D9     		bls	.L219
 1064 0006 7047     		bx	lr
 1065              	.L219:
 1066 0008 00EB8101 		add	r1, r0, r1, lsl #2
 1067 000c 486C     		ldr	r0, [r1, #68]
 1068 000e FFF7FEBF 		b	_ZN3PID8ActivateEv
 1069              		.size	_ZN4Heat8ActivateEa, .-_ZN4Heat8ActivateEa
 1070 0012 00BF     		.section	.text._ZN4Heat9SwitchOffEa,"ax",%progbits
 1071              		.align	1
 1072              		.p2align 2,,3
 1073              		.global	_ZN4Heat9SwitchOffEa
 1074              		.syntax unified
 1075              		.thumb
 1076              		.thumb_func
 1077              		.fpu fpv4-sp-d16
 1078              		.type	_ZN4Heat9SwitchOffEa, %function
 1079              	_ZN4Heat9SwitchOffEa:
 1080              		@ args = 0, pretend = 0, frame = 0
 1081              		@ frame_needed = 0, uses_anonymous_args = 0
 1082 0000 CBB2     		uxtb	r3, r1
 1083 0002 072B     		cmp	r3, #7
ARM GAS  /tmp/ccg0SVmY.s 			page 20


 1084 0004 00D9     		bls	.L226
 1085 0006 7047     		bx	lr
 1086              	.L226:
 1087 0008 10B5     		push	{r4, lr}
 1088 000a 00EB8104 		add	r4, r0, r1, lsl #2
 1089 000e 606C     		ldr	r0, [r4, #68]
 1090 0010 FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 1091 0014 0023     		movs	r3, #0
 1092 0016 6366     		str	r3, [r4, #100]
 1093 0018 10BD     		pop	{r4, pc}
 1094              		.size	_ZN4Heat9SwitchOffEa, .-_ZN4Heat9SwitchOffEa
 1095 001a 00BF     		.section	.text._ZN4Heat12SwitchOffAllEb,"ax",%progbits
 1096              		.align	1
 1097              		.p2align 2,,3
 1098              		.global	_ZN4Heat12SwitchOffAllEb
 1099              		.syntax unified
 1100              		.thumb
 1101              		.thumb_func
 1102              		.fpu fpv4-sp-d16
 1103              		.type	_ZN4Heat12SwitchOffAllEb, %function
 1104              	_ZN4Heat12SwitchOffAllEb:
 1105              		@ args = 0, pretend = 0, frame = 0
 1106              		@ frame_needed = 0, uses_anonymous_args = 0
 1107 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1108 0004 8246     		mov	r10, r0
 1109 0006 8946     		mov	r9, r1
 1110 0008 00F1D208 		add	r8, r0, #210
 1111 000c 00F1D607 		add	r7, r0, #214
 1112 0010 00F1D506 		add	r6, r0, #213
 1113 0014 0024     		movs	r4, #0
 1114              	.L234:
 1115 0016 B9F1000F 		cmp	r9, #0
 1116 001a 1ED1     		bne	.L228
 1117 001c 9AF9D230 		ldrsb	r3, [r10, #210]
 1118 0020 60B2     		sxtb	r0, r4
 1119 0022 8342     		cmp	r3, r0
 1120 0024 14D0     		beq	.L229
 1121 0026 4346     		mov	r3, r8
 1122 0028 3D46     		mov	r5, r7
 1123 002a 03E0     		b	.L230
 1124              	.L238:
 1125 002c 13F9012F 		ldrsb	r2, [r3, #1]!
 1126 0030 8242     		cmp	r2, r0
 1127 0032 0DD0     		beq	.L229
 1128              	.L230:
 1129 0034 9E42     		cmp	r6, r3
 1130 0036 F9D1     		bne	.L238
 1131 0038 9AF9D630 		ldrsb	r3, [r10, #214]
 1132 003c 8342     		cmp	r3, r0
 1133 003e 07D0     		beq	.L229
 1134 0040 0AF1D702 		add	r2, r10, #215
 1135              	.L235:
 1136 0044 9542     		cmp	r5, r2
 1137 0046 08D0     		beq	.L228
 1138 0048 15F9013F 		ldrsb	r3, [r5, #1]!
 1139 004c 8342     		cmp	r3, r0
 1140 004e F9D1     		bne	.L235
ARM GAS  /tmp/ccg0SVmY.s 			page 21


 1141              	.L229:
 1142 0050 0134     		adds	r4, r4, #1
 1143 0052 082C     		cmp	r4, #8
 1144 0054 DFD1     		bne	.L234
 1145              	.L241:
 1146 0056 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1147              	.L228:
 1148 005a 0AEB8403 		add	r3, r10, r4, lsl #2
 1149 005e 0134     		adds	r4, r4, #1
 1150 0060 586C     		ldr	r0, [r3, #68]
 1151 0062 FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 1152 0066 082C     		cmp	r4, #8
 1153 0068 D5D1     		bne	.L234
 1154 006a F4E7     		b	.L241
 1155              		.size	_ZN4Heat12SwitchOffAllEb, .-_ZN4Heat12SwitchOffAllEb
 1156              		.section	.text._ZN4Heat7StandbyEaPK4Tool,"ax",%progbits
 1157              		.align	1
 1158              		.p2align 2,,3
 1159              		.global	_ZN4Heat7StandbyEaPK4Tool
 1160              		.syntax unified
 1161              		.thumb
 1162              		.thumb_func
 1163              		.fpu fpv4-sp-d16
 1164              		.type	_ZN4Heat7StandbyEaPK4Tool, %function
 1165              	_ZN4Heat7StandbyEaPK4Tool:
 1166              		@ args = 0, pretend = 0, frame = 0
 1167              		@ frame_needed = 0, uses_anonymous_args = 0
 1168 0000 38B5     		push	{r3, r4, r5, lr}
 1169 0002 CBB2     		uxtb	r3, r1
 1170 0004 072B     		cmp	r3, #7
 1171 0006 00D9     		bls	.L245
 1172 0008 38BD     		pop	{r3, r4, r5, pc}
 1173              	.L245:
 1174 000a 00EB8104 		add	r4, r0, r1, lsl #2
 1175 000e 1546     		mov	r5, r2
 1176 0010 606C     		ldr	r0, [r4, #68]
 1177 0012 FFF7FEFF 		bl	_ZN3PID7StandbyEv
 1178 0016 6566     		str	r5, [r4, #100]
 1179 0018 38BD     		pop	{r3, r4, r5, pc}
 1180              		.size	_ZN4Heat7StandbyEaPK4Tool, .-_ZN4Heat7StandbyEaPK4Tool
 1181 001a 00BF     		.section	.text._ZN4Heat10ResetFaultEa,"ax",%progbits
 1182              		.align	1
 1183              		.p2align 2,,3
 1184              		.global	_ZN4Heat10ResetFaultEa
 1185              		.syntax unified
 1186              		.thumb
 1187              		.thumb_func
 1188              		.fpu fpv4-sp-d16
 1189              		.type	_ZN4Heat10ResetFaultEa, %function
 1190              	_ZN4Heat10ResetFaultEa:
 1191              		@ args = 0, pretend = 0, frame = 0
 1192              		@ frame_needed = 0, uses_anonymous_args = 0
 1193              		@ link register save eliminated.
 1194 0000 CBB2     		uxtb	r3, r1
 1195 0002 072B     		cmp	r3, #7
 1196 0004 00D9     		bls	.L248
 1197 0006 7047     		bx	lr
ARM GAS  /tmp/ccg0SVmY.s 			page 22


 1198              	.L248:
 1199 0008 00EB8101 		add	r1, r0, r1, lsl #2
 1200 000c 486C     		ldr	r0, [r1, #68]
 1201 000e FFF7FEBF 		b	_ZN3PID10ResetFaultEv
 1202              		.size	_ZN4Heat10ResetFaultEa, .-_ZN4Heat10ResetFaultEa
 1203 0012 00BF     		.section	.text._ZNK4Heat13GetAveragePWMEj,"ax",%progbits
 1204              		.align	1
 1205              		.p2align 2,,3
 1206              		.global	_ZNK4Heat13GetAveragePWMEj
 1207              		.syntax unified
 1208              		.thumb
 1209              		.thumb_func
 1210              		.fpu fpv4-sp-d16
 1211              		.type	_ZNK4Heat13GetAveragePWMEj, %function
 1212              	_ZNK4Heat13GetAveragePWMEj:
 1213              		@ args = 0, pretend = 0, frame = 0
 1214              		@ frame_needed = 0, uses_anonymous_args = 0
 1215              		@ link register save eliminated.
 1216 0000 00EB8101 		add	r1, r0, r1, lsl #2
 1217 0004 486C     		ldr	r0, [r1, #68]
 1218 0006 FFF7FEBF 		b	_ZNK3PID13GetAveragePWMEv
 1219              		.size	_ZNK4Heat13GetAveragePWMEj, .-_ZNK4Heat13GetAveragePWMEj
 1220 000a 00BF     		.section	.text._ZNK4Heat17GetLastSampleTimeEj,"ax",%progbits
 1221              		.align	1
 1222              		.p2align 2,,3
 1223              		.global	_ZNK4Heat17GetLastSampleTimeEj
 1224              		.syntax unified
 1225              		.thumb
 1226              		.thumb_func
 1227              		.fpu fpv4-sp-d16
 1228              		.type	_ZNK4Heat17GetLastSampleTimeEj, %function
 1229              	_ZNK4Heat17GetLastSampleTimeEj:
 1230              		@ args = 0, pretend = 0, frame = 0
 1231              		@ frame_needed = 0, uses_anonymous_args = 0
 1232              		@ link register save eliminated.
 1233 0000 00EB8101 		add	r1, r0, r1, lsl #2
 1234 0004 4B6C     		ldr	r3, [r1, #68]
 1235 0006 586F     		ldr	r0, [r3, #116]
 1236 0008 7047     		bx	lr
 1237              		.size	_ZNK4Heat17GetLastSampleTimeEj, .-_ZNK4Heat17GetLastSampleTimeEj
 1238 000a 00BF     		.section	.text._ZNK4Heat20IsBedOrChamberHeaterEa,"ax",%progbits
 1239              		.align	1
 1240              		.p2align 2,,3
 1241              		.global	_ZNK4Heat20IsBedOrChamberHeaterEa
 1242              		.syntax unified
 1243              		.thumb
 1244              		.thumb_func
 1245              		.fpu fpv4-sp-d16
 1246              		.type	_ZNK4Heat20IsBedOrChamberHeaterEa, %function
 1247              	_ZNK4Heat20IsBedOrChamberHeaterEa:
 1248              		@ args = 0, pretend = 0, frame = 0
 1249              		@ frame_needed = 0, uses_anonymous_args = 0
 1250              		@ link register save eliminated.
 1251 0000 30B4     		push	{r4, r5}
 1252 0002 90F9D240 		ldrsb	r4, [r0, #210]
 1253 0006 8C42     		cmp	r4, r1
 1254 0008 1BD0     		beq	.L261
ARM GAS  /tmp/ccg0SVmY.s 			page 23


 1255 000a 00F1D203 		add	r3, r0, #210
 1256 000e 00F1D602 		add	r2, r0, #214
 1257 0012 00F1D505 		add	r5, r0, #213
 1258 0016 03E0     		b	.L253
 1259              	.L263:
 1260 0018 13F9014F 		ldrsb	r4, [r3, #1]!
 1261 001c 8C42     		cmp	r4, r1
 1262 001e 10D0     		beq	.L261
 1263              	.L253:
 1264 0020 9D42     		cmp	r5, r3
 1265 0022 F9D1     		bne	.L263
 1266 0024 90F9D630 		ldrsb	r3, [r0, #214]
 1267 0028 8B42     		cmp	r3, r1
 1268 002a 0AD0     		beq	.L261
 1269 002c D730     		adds	r0, r0, #215
 1270 002e 03E0     		b	.L257
 1271              	.L256:
 1272 0030 12F9013F 		ldrsb	r3, [r2, #1]!
 1273 0034 8B42     		cmp	r3, r1
 1274 0036 04D0     		beq	.L261
 1275              	.L257:
 1276 0038 9042     		cmp	r0, r2
 1277 003a F9D1     		bne	.L256
 1278 003c 0020     		movs	r0, #0
 1279 003e 30BC     		pop	{r4, r5}
 1280 0040 7047     		bx	lr
 1281              	.L261:
 1282 0042 0120     		movs	r0, #1
 1283 0044 30BC     		pop	{r4, r5}
 1284 0046 7047     		bx	lr
 1285              		.size	_ZNK4Heat20IsBedOrChamberHeaterEa, .-_ZNK4Heat20IsBedOrChamberHeaterEa
 1286              		.section	.text._ZN4Heat13StartAutoTuneEjffRK9StringRef,"ax",%progbits
 1287              		.align	1
 1288              		.p2align 2,,3
 1289              		.global	_ZN4Heat13StartAutoTuneEjffRK9StringRef
 1290              		.syntax unified
 1291              		.thumb
 1292              		.thumb_func
 1293              		.fpu fpv4-sp-d16
 1294              		.type	_ZN4Heat13StartAutoTuneEjffRK9StringRef, %function
 1295              	_ZN4Heat13StartAutoTuneEjffRK9StringRef:
 1296              		@ args = 0, pretend = 0, frame = 0
 1297              		@ frame_needed = 0, uses_anonymous_args = 0
 1298              		@ link register save eliminated.
 1299 0000 10B4     		push	{r4}
 1300 0002 90F9D830 		ldrsb	r3, [r0, #216]
 1301 0006 1446     		mov	r4, r2
 1302 0008 5A1C     		adds	r2, r3, #1
 1303 000a 06D0     		beq	.L269
 1304 000c 0A46     		mov	r2, r1
 1305 000e 2046     		mov	r0, r4
 1306 0010 0749     		ldr	r1, .L270
 1307 0012 5DF8044B 		ldr	r4, [sp], #4
 1308 0016 FFF7FEBF 		b	_ZNK9StringRef6printfEPKcz
 1309              	.L269:
 1310 001a 00EB8103 		add	r3, r0, r1, lsl #2
 1311 001e 80F8D810 		strb	r1, [r0, #216]
ARM GAS  /tmp/ccg0SVmY.s 			page 24


 1312 0022 586C     		ldr	r0, [r3, #68]
 1313 0024 2146     		mov	r1, r4
 1314 0026 5DF8044B 		ldr	r4, [sp], #4
 1315 002a FFF7FEBF 		b	_ZN3PID13StartAutoTuneEffRK9StringRef
 1316              	.L271:
 1317 002e 00BF     		.align	2
 1318              	.L270:
 1319 0030 00000000 		.word	.LC6
 1320              		.size	_ZN4Heat13StartAutoTuneEjffRK9StringRef, .-_ZN4Heat13StartAutoTuneEjffRK9StringRef
 1321              		.section	.text._ZNK4Heat8IsTuningEj,"ax",%progbits
 1322              		.align	1
 1323              		.p2align 2,,3
 1324              		.global	_ZNK4Heat8IsTuningEj
 1325              		.syntax unified
 1326              		.thumb
 1327              		.thumb_func
 1328              		.fpu fpv4-sp-d16
 1329              		.type	_ZNK4Heat8IsTuningEj, %function
 1330              	_ZNK4Heat8IsTuningEj:
 1331              		@ args = 0, pretend = 0, frame = 0
 1332              		@ frame_needed = 0, uses_anonymous_args = 0
 1333              		@ link register save eliminated.
 1334 0000 00EB8101 		add	r1, r0, r1, lsl #2
 1335 0004 4B6C     		ldr	r3, [r1, #68]
 1336 0006 93F87C00 		ldrb	r0, [r3, #124]	@ zero_extendqisi2
 1337 000a 0528     		cmp	r0, #5
 1338 000c 94BF     		ite	ls
 1339 000e 0020     		movls	r0, #0
 1340 0010 0120     		movhi	r0, #1
 1341 0012 7047     		bx	lr
 1342              		.size	_ZNK4Heat8IsTuningEj, .-_ZNK4Heat8IsTuningEj
 1343              		.section	.text._ZNK4Heat17GetAutoTuneStatusERK9StringRef,"ax",%progbits
 1344              		.align	1
 1345              		.p2align 2,,3
 1346              		.global	_ZNK4Heat17GetAutoTuneStatusERK9StringRef
 1347              		.syntax unified
 1348              		.thumb
 1349              		.thumb_func
 1350              		.fpu fpv4-sp-d16
 1351              		.type	_ZNK4Heat17GetAutoTuneStatusERK9StringRef, %function
 1352              	_ZNK4Heat17GetAutoTuneStatusERK9StringRef:
 1353              		@ args = 0, pretend = 0, frame = 0
 1354              		@ frame_needed = 0, uses_anonymous_args = 0
 1355              		@ link register save eliminated.
 1356 0000 90F9D830 		ldrsb	r3, [r0, #216]
 1357 0004 5A1C     		adds	r2, r3, #1
 1358 0006 04D0     		beq	.L276
 1359              	.L274:
 1360 0008 00EB8303 		add	r3, r0, r3, lsl #2
 1361 000c 586C     		ldr	r0, [r3, #68]
 1362 000e FFF7FEBF 		b	_ZN3PID17GetAutoTuneStatusERK9StringRef
 1363              	.L276:
 1364 0012 90F9D930 		ldrsb	r3, [r0, #217]
 1365 0016 5A1C     		adds	r2, r3, #1
 1366 0018 F6D1     		bne	.L274
 1367 001a 0846     		mov	r0, r1
 1368 001c 0149     		ldr	r1, .L277
ARM GAS  /tmp/ccg0SVmY.s 			page 25


 1369 001e FFF7FEBF 		b	_ZNK9StringRef4copyEPKc
 1370              	.L278:
 1371 0022 00BF     		.align	2
 1372              	.L277:
 1373 0024 00000000 		.word	.LC7
 1374              		.size	_ZNK4Heat17GetAutoTuneStatusERK9StringRef, .-_ZNK4Heat17GetAutoTuneStatusERK9StringRef
 1375              		.section	.text._ZNK4Heat26GetHighestTemperatureLimitEv,"ax",%progbits
 1376              		.align	1
 1377              		.p2align 2,,3
 1378              		.global	_ZNK4Heat26GetHighestTemperatureLimitEv
 1379              		.syntax unified
 1380              		.thumb
 1381              		.thumb_func
 1382              		.fpu fpv4-sp-d16
 1383              		.type	_ZNK4Heat26GetHighestTemperatureLimitEv, %function
 1384              	_ZNK4Heat26GetHighestTemperatureLimitEv:
 1385              		@ args = 0, pretend = 0, frame = 0
 1386              		@ frame_needed = 0, uses_anonymous_args = 0
 1387              		@ link register save eliminated.
 1388 0000 0430     		adds	r0, r0, #4
 1389 0002 9FED0C0A 		vldr.32	s0, .L287
 1390 0006 00F13C01 		add	r1, r0, #60
 1391 000a 00E0     		b	.L282
 1392              	.L286:
 1393 000c 0430     		adds	r0, r0, #4
 1394              	.L282:
 1395 000e 0368     		ldr	r3, [r0]
 1396 0010 93F90820 		ldrsb	r2, [r3, #8]
 1397 0014 002A     		cmp	r2, #0
 1398 0016 0ADB     		blt	.L280
 1399 0018 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 1400 001a 42B9     		cbnz	r2, .L280
 1401 001c D3ED017A 		vldr.32	s15, [r3, #4]
 1402 0020 F4EE407A 		vcmp.f32	s15, s0
 1403 0024 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1404 0028 C8BF     		it	gt
 1405 002a B0EE670A 		vmovgt.f32	s0, s15
 1406              	.L280:
 1407 002e 8842     		cmp	r0, r1
 1408 0030 ECD1     		bne	.L286
 1409 0032 7047     		bx	lr
 1410              	.L288:
 1411              		.align	2
 1412              	.L287:
 1413 0034 339388C3 		.word	3280507699
 1414              		.size	_ZNK4Heat26GetHighestTemperatureLimitEv, .-_ZNK4Heat26GetHighestTemperatureLimitEv
 1415              		.section	.text._ZN4Heat20SetM301PidParametersEjRK17M301PidParameters,"ax",%progbits
 1416              		.align	1
 1417              		.p2align 2,,3
 1418              		.global	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters
 1419              		.syntax unified
 1420              		.thumb
 1421              		.thumb_func
 1422              		.fpu fpv4-sp-d16
 1423              		.type	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters, %function
 1424              	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters:
 1425              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccg0SVmY.s 			page 26


 1426              		@ frame_needed = 0, uses_anonymous_args = 0
 1427              		@ link register save eliminated.
 1428 0000 00EB8100 		add	r0, r0, r1, lsl #2
 1429 0004 1146     		mov	r1, r2
 1430 0006 406C     		ldr	r0, [r0, #68]
 1431 0008 3030     		adds	r0, r0, #48
 1432 000a FFF7FEBF 		b	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters
 1433              		.size	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters, .-_ZN4Heat20SetM301PidParametersEjRK1
 1434 000e 00BF     		.section	.text._ZNK4Heat20WriteModelParametersEP9FileStore,"ax",%progbits
 1435              		.align	1
 1436              		.p2align 2,,3
 1437              		.global	_ZNK4Heat20WriteModelParametersEP9FileStore
 1438              		.syntax unified
 1439              		.thumb
 1440              		.thumb_func
 1441              		.fpu fpv4-sp-d16
 1442              		.type	_ZNK4Heat20WriteModelParametersEP9FileStore, %function
 1443              	_ZNK4Heat20WriteModelParametersEP9FileStore:
 1444              		@ args = 0, pretend = 0, frame = 0
 1445              		@ frame_needed = 0, uses_anonymous_args = 0
 1446 0000 70B5     		push	{r4, r5, r6, lr}
 1447 0002 0E46     		mov	r6, r1
 1448 0004 0546     		mov	r5, r0
 1449 0006 0D49     		ldr	r1, .L299
 1450 0008 3046     		mov	r0, r6
 1451 000a 4435     		adds	r5, r5, #68
 1452 000c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1453 0010 0024     		movs	r4, #0
 1454 0012 02E0     		b	.L292
 1455              	.L291:
 1456 0014 0134     		adds	r4, r4, #1
 1457 0016 082C     		cmp	r4, #8
 1458 0018 0ED0     		beq	.L298
 1459              	.L292:
 1460 001a 55F8043B 		ldr	r3, [r5], #4
 1461 001e 93F84620 		ldrb	r2, [r3, #70]	@ zero_extendqisi2
 1462 0022 002A     		cmp	r2, #0
 1463 0024 F6D0     		beq	.L291
 1464 0026 2246     		mov	r2, r4
 1465 0028 03F13000 		add	r0, r3, #48
 1466 002c 3146     		mov	r1, r6
 1467 002e 0134     		adds	r4, r4, #1
 1468 0030 FFF7FEFF 		bl	_ZNK5FopDt15WriteParametersEP9FileStorej
 1469 0034 082C     		cmp	r4, #8
 1470 0036 F0D1     		bne	.L292
 1471              	.L298:
 1472 0038 70BD     		pop	{r4, r5, r6, pc}
 1473              	.L300:
 1474 003a 00BF     		.align	2
 1475              	.L299:
 1476 003c 00000000 		.word	.LC8
 1477              		.size	_ZNK4Heat20WriteModelParametersEP9FileStore, .-_ZNK4Heat20WriteModelParametersEP9FileStore
 1478              		.section	.text._ZNK4Heat16GetHeaterChannelEj,"ax",%progbits
 1479              		.align	1
 1480              		.p2align 2,,3
 1481              		.global	_ZNK4Heat16GetHeaterChannelEj
 1482              		.syntax unified
ARM GAS  /tmp/ccg0SVmY.s 			page 27


 1483              		.thumb
 1484              		.thumb_func
 1485              		.fpu fpv4-sp-d16
 1486              		.type	_ZNK4Heat16GetHeaterChannelEj, %function
 1487              	_ZNK4Heat16GetHeaterChannelEj:
 1488              		@ args = 0, pretend = 0, frame = 0
 1489              		@ frame_needed = 0, uses_anonymous_args = 0
 1490              		@ link register save eliminated.
 1491 0000 0729     		cmp	r1, #7
 1492 0002 06D8     		bhi	.L302
 1493 0004 00EB8100 		add	r0, r0, r1, lsl #2
 1494 0008 D0F88430 		ldr	r3, [r0, #132]
 1495              	.L303:
 1496 000c 53B1     		cbz	r3, .L306
 1497 000e 5868     		ldr	r0, [r3, #4]
 1498 0010 7047     		bx	lr
 1499              	.L302:
 1500 0012 A1F16403 		sub	r3, r1, #100
 1501 0016 092B     		cmp	r3, #9
 1502 0018 04D8     		bhi	.L306
 1503 001a 00EB8100 		add	r0, r0, r1, lsl #2
 1504 001e 50F8EC3C 		ldr	r3, [r0, #-236]
 1505 0022 F3E7     		b	.L303
 1506              	.L306:
 1507 0024 4FF0FF30 		mov	r0, #-1
 1508 0028 7047     		bx	lr
 1509              		.size	_ZNK4Heat16GetHeaterChannelEj, .-_ZNK4Heat16GetHeaterChannelEj
 1510 002a 00BF     		.section	.text._ZN4Heat16SetHeaterChannelEji,"ax",%progbits
 1511              		.align	1
 1512              		.p2align 2,,3
 1513              		.global	_ZN4Heat16SetHeaterChannelEji
 1514              		.syntax unified
 1515              		.thumb
 1516              		.thumb_func
 1517              		.fpu fpv4-sp-d16
 1518              		.type	_ZN4Heat16SetHeaterChannelEji, %function
 1519              	_ZN4Heat16SetHeaterChannelEji:
 1520              		@ args = 0, pretend = 0, frame = 0
 1521              		@ frame_needed = 0, uses_anonymous_args = 0
 1522 0000 0729     		cmp	r1, #7
 1523 0002 38B5     		push	{r3, r4, r5, lr}
 1524 0004 0FD8     		bhi	.L308
 1525 0006 2131     		adds	r1, r1, #33
 1526 0008 00EB8104 		add	r4, r0, r1, lsl #2
 1527 000c 1046     		mov	r0, r2
 1528 000e FFF7FEFF 		bl	_ZN17TemperatureSensor6CreateEj
 1529 0012 0546     		mov	r5, r0
 1530 0014 A0B1     		cbz	r0, .L312
 1531              	.L321:
 1532 0016 2068     		ldr	r0, [r4]
 1533 0018 10B1     		cbz	r0, .L313
 1534 001a 0368     		ldr	r3, [r0]
 1535 001c 1B69     		ldr	r3, [r3, #16]
 1536 001e 9847     		blx	r3
 1537              	.L313:
 1538 0020 2560     		str	r5, [r4]
 1539 0022 0020     		movs	r0, #0
ARM GAS  /tmp/ccg0SVmY.s 			page 28


 1540 0024 38BD     		pop	{r3, r4, r5, pc}
 1541              	.L308:
 1542 0026 A1F16403 		sub	r3, r1, #100
 1543 002a 092B     		cmp	r3, #9
 1544 002c 08D8     		bhi	.L312
 1545 002e 3B39     		subs	r1, r1, #59
 1546 0030 00EB8104 		add	r4, r0, r1, lsl #2
 1547 0034 1046     		mov	r0, r2
 1548 0036 FFF7FEFF 		bl	_ZN17TemperatureSensor6CreateEj
 1549 003a 0546     		mov	r5, r0
 1550 003c 0028     		cmp	r0, #0
 1551 003e EAD1     		bne	.L321
 1552              	.L312:
 1553 0040 0120     		movs	r0, #1
 1554 0042 38BD     		pop	{r3, r4, r5, pc}
 1555              		.size	_ZN4Heat16SetHeaterChannelEji, .-_ZN4Heat16SetHeaterChannelEji
 1556              		.section	.text._ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef,"ax",%progbits
 1557              		.align	1
 1558              		.p2align 2,,3
 1559              		.global	_ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef
 1560              		.syntax unified
 1561              		.thumb
 1562              		.thumb_func
 1563              		.fpu fpv4-sp-d16
 1564              		.type	_ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef, %function
 1565              	_ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef:
 1566              		@ args = 4, pretend = 0, frame = 0
 1567              		@ frame_needed = 0, uses_anonymous_args = 0
 1568 0000 70B5     		push	{r4, r5, r6, lr}
 1569 0002 072A     		cmp	r2, #7
 1570 0004 049D     		ldr	r5, [sp, #16]
 1571 0006 0BD8     		bhi	.L323
 1572 0008 00EB8204 		add	r4, r0, r2, lsl #2
 1573 000c D4F88400 		ldr	r0, [r4, #132]
 1574 0010 80B1     		cbz	r0, .L325
 1575              	.L330:
 1576 0012 0468     		ldr	r4, [r0]
 1577 0014 0495     		str	r5, [sp, #16]
 1578 0016 2468     		ldr	r4, [r4]
 1579 0018 A446     		mov	ip, r4
 1580 001a BDE87040 		pop	{r4, r5, r6, lr}
 1581 001e 6047     		bx	ip
 1582              	.L323:
 1583 0020 A2F16404 		sub	r4, r2, #100
 1584 0024 092C     		cmp	r4, #9
 1585 0026 05D8     		bhi	.L325
 1586 0028 00EB8204 		add	r4, r0, r2, lsl #2
 1587 002c 54F8EC0C 		ldr	r0, [r4, #-236]
 1588 0030 0028     		cmp	r0, #0
 1589 0032 EED1     		bne	.L330
 1590              	.L325:
 1591 0034 2846     		mov	r0, r5
 1592 0036 0249     		ldr	r1, .L331
 1593 0038 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1594 003c 0220     		movs	r0, #2
 1595 003e 70BD     		pop	{r4, r5, r6, pc}
 1596              	.L332:
ARM GAS  /tmp/ccg0SVmY.s 			page 29


 1597              		.align	2
 1598              	.L331:
 1599 0040 00000000 		.word	.LC9
 1600              		.size	_ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef, .-_ZN4Heat21ConfigureHeaterSen
 1601              		.section	.text._ZN4Heat9GetSensorEj,"ax",%progbits
 1602              		.align	1
 1603              		.p2align 2,,3
 1604              		.global	_ZN4Heat9GetSensorEj
 1605              		.syntax unified
 1606              		.thumb
 1607              		.thumb_func
 1608              		.fpu fpv4-sp-d16
 1609              		.type	_ZN4Heat9GetSensorEj, %function
 1610              	_ZN4Heat9GetSensorEj:
 1611              		@ args = 0, pretend = 0, frame = 0
 1612              		@ frame_needed = 0, uses_anonymous_args = 0
 1613              		@ link register save eliminated.
 1614 0000 0729     		cmp	r1, #7
 1615 0002 08D9     		bls	.L337
 1616 0004 A1F16403 		sub	r3, r1, #100
 1617 0008 092B     		cmp	r3, #9
 1618 000a 9ABF     		itte	ls
 1619 000c 3B39     		subls	r1, r1, #59
 1620 000e 00EB8100 		addls	r0, r0, r1, lsl #2
 1621 0012 0020     		movhi	r0, #0
 1622 0014 7047     		bx	lr
 1623              	.L337:
 1624 0016 2131     		adds	r1, r1, #33
 1625 0018 00EB8100 		add	r0, r0, r1, lsl #2
 1626 001c 7047     		bx	lr
 1627              		.size	_ZN4Heat9GetSensorEj, .-_ZN4Heat9GetSensorEj
 1628 001e 00BF     		.section	.text._ZNK4Heat9GetSensorEj,"ax",%progbits
 1629              		.align	1
 1630              		.p2align 2,,3
 1631              		.global	_ZNK4Heat9GetSensorEj
 1632              		.syntax unified
 1633              		.thumb
 1634              		.thumb_func
 1635              		.fpu fpv4-sp-d16
 1636              		.type	_ZNK4Heat9GetSensorEj, %function
 1637              	_ZNK4Heat9GetSensorEj:
 1638              		@ args = 0, pretend = 0, frame = 0
 1639              		@ frame_needed = 0, uses_anonymous_args = 0
 1640              		@ link register save eliminated.
 1641 0000 FFF7FEBF 		b	_ZN4Heat9GetSensorEj
 1642              		.size	_ZNK4Heat9GetSensorEj, .-_ZNK4Heat9GetSensorEj
 1643              		.section	.text._ZNK4Heat13GetHeaterNameEj,"ax",%progbits
 1644              		.align	1
 1645              		.p2align 2,,3
 1646              		.global	_ZNK4Heat13GetHeaterNameEj
 1647              		.syntax unified
 1648              		.thumb
 1649              		.thumb_func
 1650              		.fpu fpv4-sp-d16
 1651              		.type	_ZNK4Heat13GetHeaterNameEj, %function
 1652              	_ZNK4Heat13GetHeaterNameEj:
 1653              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccg0SVmY.s 			page 30


 1654              		@ frame_needed = 0, uses_anonymous_args = 0
 1655              		@ link register save eliminated.
 1656 0000 0729     		cmp	r1, #7
 1657 0002 06D8     		bhi	.L340
 1658 0004 00EB8100 		add	r0, r0, r1, lsl #2
 1659 0008 D0F88400 		ldr	r0, [r0, #132]
 1660              	.L341:
 1661 000c 30B1     		cbz	r0, .L339
 1662 000e C068     		ldr	r0, [r0, #12]
 1663 0010 7047     		bx	lr
 1664              	.L340:
 1665 0012 A1F16403 		sub	r3, r1, #100
 1666 0016 092B     		cmp	r3, #9
 1667 0018 01D9     		bls	.L345
 1668 001a 0020     		movs	r0, #0
 1669              	.L339:
 1670 001c 7047     		bx	lr
 1671              	.L345:
 1672 001e 00EB8100 		add	r0, r0, r1, lsl #2
 1673 0022 50F8EC0C 		ldr	r0, [r0, #-236]
 1674 0026 F1E7     		b	.L341
 1675              		.size	_ZNK4Heat13GetHeaterNameEj, .-_ZNK4Heat13GetHeaterNameEj
 1676              		.section	.text._ZNK4Heat22AccessHeaterProtectionEj,"ax",%progbits
 1677              		.align	1
 1678              		.p2align 2,,3
 1679              		.global	_ZNK4Heat22AccessHeaterProtectionEj
 1680              		.syntax unified
 1681              		.thumb
 1682              		.thumb_func
 1683              		.fpu fpv4-sp-d16
 1684              		.type	_ZNK4Heat22AccessHeaterProtectionEj, %function
 1685              	_ZNK4Heat22AccessHeaterProtectionEj:
 1686              		@ args = 0, pretend = 0, frame = 0
 1687              		@ frame_needed = 0, uses_anonymous_args = 0
 1688              		@ link register save eliminated.
 1689 0000 A1F16403 		sub	r3, r1, #100
 1690 0004 072B     		cmp	r3, #7
 1691 0006 98BF     		it	ls
 1692 0008 5C39     		subls	r1, r1, #92
 1693 000a 00EB8100 		add	r0, r0, r1, lsl #2
 1694 000e 4068     		ldr	r0, [r0, #4]
 1695 0010 7047     		bx	lr
 1696              		.size	_ZNK4Heat22AccessHeaterProtectionEj, .-_ZNK4Heat22AccessHeaterProtectionEj
 1697 0012 00BF     		.section	.text._ZN4Heat22UpdateHeaterProtectionEv,"ax",%progbits
 1698              		.align	1
 1699              		.p2align 2,,3
 1700              		.global	_ZN4Heat22UpdateHeaterProtectionEv
 1701              		.syntax unified
 1702              		.thumb
 1703              		.thumb_func
 1704              		.fpu fpv4-sp-d16
 1705              		.type	_ZN4Heat22UpdateHeaterProtectionEv, %function
 1706              	_ZN4Heat22UpdateHeaterProtectionEv:
 1707              		@ args = 0, pretend = 0, frame = 0
 1708              		@ frame_needed = 0, uses_anonymous_args = 0
 1709 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1710 0004 0746     		mov	r7, r0
ARM GAS  /tmp/ccg0SVmY.s 			page 31


 1711 0006 00F14408 		add	r8, r0, #68
 1712 000a 00F14005 		add	r5, r0, #64
 1713 000e 0024     		movs	r4, #0
 1714              	.L354:
 1715 0010 0026     		movs	r6, #0
 1716 0012 3146     		mov	r1, r6
 1717 0014 3B46     		mov	r3, r7
 1718 0016 01E0     		b	.L353
 1719              	.L350:
 1720 0018 AB42     		cmp	r3, r5
 1721 001a 0BD0     		beq	.L358
 1722              	.L353:
 1723 001c 53F8042F 		ldr	r2, [r3, #4]!
 1724 0020 92F90800 		ldrsb	r0, [r2, #8]
 1725 0024 A042     		cmp	r0, r4
 1726 0026 F7D1     		bne	.L350
 1727 0028 69B1     		cbz	r1, .L359
 1728 002a 7EB1     		cbz	r6, .L360
 1729 002c AB42     		cmp	r3, r5
 1730 002e 3260     		str	r2, [r6]
 1731 0030 1646     		mov	r6, r2
 1732 0032 F3D1     		bne	.L353
 1733              	.L358:
 1734 0034 0134     		adds	r4, r4, #1
 1735 0036 58F8040B 		ldr	r0, [r8], #4
 1736 003a FFF7FEFF 		bl	_ZN3PID19SetHeaterProtectionEP16HeaterProtection
 1737 003e 082C     		cmp	r4, #8
 1738 0040 E6D1     		bne	.L354
 1739 0042 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1740              	.L359:
 1741 0046 1160     		str	r1, [r2]
 1742 0048 1146     		mov	r1, r2
 1743 004a E5E7     		b	.L350
 1744              	.L360:
 1745 004c 0A60     		str	r2, [r1]
 1746 004e 1646     		mov	r6, r2
 1747 0050 E2E7     		b	.L350
 1748              		.size	_ZN4Heat22UpdateHeaterProtectionEv, .-_ZN4Heat22UpdateHeaterProtectionEv
 1749              		.section	.text._ZN4Heat11CheckHeaterEj,"ax",%progbits
 1750              		.align	1
 1751              		.p2align 2,,3
 1752              		.global	_ZN4Heat11CheckHeaterEj
 1753              		.syntax unified
 1754              		.thumb
 1755              		.thumb_func
 1756              		.fpu fpv4-sp-d16
 1757              		.type	_ZN4Heat11CheckHeaterEj, %function
 1758              	_ZN4Heat11CheckHeaterEj:
 1759              		@ args = 0, pretend = 0, frame = 0
 1760              		@ frame_needed = 0, uses_anonymous_args = 0
 1761              		@ link register save eliminated.
 1762 0000 00EB8101 		add	r1, r0, r1, lsl #2
 1763 0004 4B6C     		ldr	r3, [r1, #68]
 1764 0006 93F87C00 		ldrb	r0, [r3, #124]	@ zero_extendqisi2
 1765 000a 00B9     		cbnz	r0, .L363
 1766 000c 7047     		bx	lr
 1767              	.L363:
ARM GAS  /tmp/ccg0SVmY.s 			page 32


 1768 000e 1846     		mov	r0, r3
 1769 0010 FFF7FEBF 		b	_ZNK3PID15CheckProtectionEv
 1770              		.size	_ZN4Heat11CheckHeaterEj, .-_ZN4Heat11CheckHeaterEj
 1771              		.section	.text._ZN4Heat14GetTemperatureEjR16TemperatureError,"ax",%progbits
 1772              		.align	1
 1773              		.p2align 2,,3
 1774              		.global	_ZN4Heat14GetTemperatureEjR16TemperatureError
 1775              		.syntax unified
 1776              		.thumb
 1777              		.thumb_func
 1778              		.fpu fpv4-sp-d16
 1779              		.type	_ZN4Heat14GetTemperatureEjR16TemperatureError, %function
 1780              	_ZN4Heat14GetTemperatureEjR16TemperatureError:
 1781              		@ args = 0, pretend = 0, frame = 8
 1782              		@ frame_needed = 0, uses_anonymous_args = 0
 1783 0000 0729     		cmp	r1, #7
 1784 0002 11D8     		bhi	.L365
 1785 0004 00EB8100 		add	r0, r0, r1, lsl #2
 1786 0008 D0F88400 		ldr	r0, [r0, #132]
 1787 000c B0B1     		cbz	r0, .L377
 1788              	.L373:
 1789 000e 10B5     		push	{r4, lr}
 1790 0010 0368     		ldr	r3, [r0]
 1791 0012 82B0     		sub	sp, sp, #8
 1792 0014 9B68     		ldr	r3, [r3, #8]
 1793 0016 01A9     		add	r1, sp, #4
 1794 0018 1446     		mov	r4, r2
 1795 001a 9847     		blx	r3
 1796 001c 2070     		strb	r0, [r4]
 1797 001e 90B9     		cbnz	r0, .L372
 1798 0020 9DED010A 		vldr.32	s0, [sp, #4]
 1799 0024 02B0     		add	sp, sp, #8
 1800              		@ sp needed
 1801 0026 10BD     		pop	{r4, pc}
 1802              	.L365:
 1803 0028 A1F16403 		sub	r3, r1, #100
 1804 002c 092B     		cmp	r3, #9
 1805 002e 0ED8     		bhi	.L367
 1806 0030 00EB8100 		add	r0, r0, r1, lsl #2
 1807 0034 50F8EC0C 		ldr	r0, [r0, #-236]
 1808 0038 0028     		cmp	r0, #0
 1809 003a E8D1     		bne	.L373
 1810              	.L377:
 1811 003c 0A23     		movs	r3, #10
 1812 003e 1370     		strb	r3, [r2]
 1813 0040 9FED050A 		vldr.32	s0, .L378
 1814 0044 7047     		bx	lr
 1815              	.L372:
 1816 0046 9FED040A 		vldr.32	s0, .L378
 1817 004a 02B0     		add	sp, sp, #8
 1818              		@ sp needed
 1819 004c 10BD     		pop	{r4, pc}
 1820              	.L367:
 1821 004e 0C23     		movs	r3, #12
 1822 0050 1370     		strb	r3, [r2]
 1823 0052 9FED010A 		vldr.32	s0, .L378
 1824 0056 7047     		bx	lr
ARM GAS  /tmp/ccg0SVmY.s 			page 33


 1825              	.L379:
 1826              		.align	2
 1827              	.L378:
 1828 0058 0000FA44 		.word	1157234688
 1829              		.size	_ZN4Heat14GetTemperatureEjR16TemperatureError, .-_ZN4Heat14GetTemperatureEjR16TemperatureErr
 1830              		.section	.text._ZN4Heat14SuspendHeatersEb,"ax",%progbits
 1831              		.align	1
 1832              		.p2align 2,,3
 1833              		.global	_ZN4Heat14SuspendHeatersEb
 1834              		.syntax unified
 1835              		.thumb
 1836              		.thumb_func
 1837              		.fpu fpv4-sp-d16
 1838              		.type	_ZN4Heat14SuspendHeatersEb, %function
 1839              	_ZN4Heat14SuspendHeatersEb:
 1840              		@ args = 0, pretend = 0, frame = 0
 1841              		@ frame_needed = 0, uses_anonymous_args = 0
 1842 0000 70B5     		push	{r4, r5, r6, lr}
 1843 0002 0E46     		mov	r6, r1
 1844 0004 00F14404 		add	r4, r0, #68
 1845 0008 00F16405 		add	r5, r0, #100
 1846              	.L381:
 1847 000c 54F8040B 		ldr	r0, [r4], #4
 1848 0010 3146     		mov	r1, r6
 1849 0012 FFF7FEFF 		bl	_ZN3PID7SuspendEb
 1850 0016 A542     		cmp	r5, r4
 1851 0018 F8D1     		bne	.L381
 1852 001a 70BD     		pop	{r4, r5, r6, pc}
 1853              		.size	_ZN4Heat14SuspendHeatersEb, .-_ZN4Heat14SuspendHeatersEb
 1854              		.section	.text._ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore,"ax",%progbits
 1855              		.align	1
 1856              		.p2align 2,,3
 1857              		.global	_ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore
 1858              		.syntax unified
 1859              		.thumb
 1860              		.thumb_func
 1861              		.fpu fpv4-sp-d16
 1862              		.type	_ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore, %function
 1863              	_ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore:
 1864              		@ args = 0, pretend = 0, frame = 112
 1865              		@ frame_needed = 0, uses_anonymous_args = 0
 1866 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1867 0004 9EB0     		sub	sp, sp, #120
 1868 0006 1EAB     		add	r3, sp, #120
 1869 0008 0024     		movs	r4, #0
 1870 000a 03F8684D 		strb	r4, [r3, #-104]!
 1871 000e 32A7     		adr	r7, .L412
 1872 0010 D7E90067 		ldrd	r6, [r7]
 1873 0014 6522     		movs	r2, #101
 1874 0016 DFF8C880 		ldr	r8, .L412+8
 1875 001a 0293     		str	r3, [sp, #8]
 1876 001c 0546     		mov	r5, r0
 1877 001e 8946     		mov	r9, r1
 1878 0020 00F1D20A 		add	r10, r0, #210
 1879 0024 0392     		str	r2, [sp, #12]
 1880              	.L387:
 1881 0026 1AF9013B 		ldrsb	r3, [r10], #1
ARM GAS  /tmp/ccg0SVmY.s 			page 34


 1882 002a 002B     		cmp	r3, #0
 1883 002c 05EB8302 		add	r2, r5, r3, lsl #2
 1884 0030 13DB     		blt	.L385
 1885 0032 526C     		ldr	r2, [r2, #68]
 1886 0034 92F87E10 		ldrb	r1, [r2, #126]	@ zero_extendqisi2
 1887 0038 79B1     		cbz	r1, .L385
 1888 003a 92F87C10 		ldrb	r1, [r2, #124]	@ zero_extendqisi2
 1889 003e 0129     		cmp	r1, #1
 1890 0040 DBB2     		uxtb	r3, r3
 1891 0042 0AD0     		beq	.L385
 1892 0044 072B     		cmp	r3, #7
 1893 0046 39D9     		bls	.L410
 1894 0048 3046     		mov	r0, r6
 1895 004a 3946     		mov	r1, r7
 1896              	.L386:
 1897 004c CDE90001 		strd	r0, [sp]
 1898 0050 2246     		mov	r2, r4
 1899 0052 4146     		mov	r1, r8
 1900 0054 02A8     		add	r0, sp, #8
 1901 0056 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1902              	.L385:
 1903 005a 0134     		adds	r4, r4, #1
 1904 005c 042C     		cmp	r4, #4
 1905 005e E2D1     		bne	.L387
 1906 0060 1DA7     		adr	r7, .L412
 1907 0062 D7E90067 		ldrd	r6, [r7]
 1908 0066 DFF87CA0 		ldr	r10, .L412+12
 1909 006a 05F1D608 		add	r8, r5, #214
 1910 006e 0024     		movs	r4, #0
 1911              	.L390:
 1912 0070 18F9013B 		ldrsb	r3, [r8], #1
 1913 0074 002B     		cmp	r3, #0
 1914 0076 05EB8302 		add	r2, r5, r3, lsl #2
 1915 007a 14DB     		blt	.L388
 1916 007c 526C     		ldr	r2, [r2, #68]
 1917 007e 92F87E10 		ldrb	r1, [r2, #126]	@ zero_extendqisi2
 1918 0082 81B1     		cbz	r1, .L388
 1919 0084 92F87C10 		ldrb	r1, [r2, #124]	@ zero_extendqisi2
 1920 0088 0129     		cmp	r1, #1
 1921 008a DBB2     		uxtb	r3, r3
 1922 008c 0BD0     		beq	.L388
 1923 008e 072B     		cmp	r3, #7
 1924 0090 1FD8     		bhi	.L393
 1925 0092 9068     		ldr	r0, [r2, #8]	@ float
 1926 0094 FFF7FEFF 		bl	__aeabi_f2d
 1927              	.L389:
 1928 0098 CDE90001 		strd	r0, [sp]
 1929 009c 2246     		mov	r2, r4
 1930 009e 5146     		mov	r1, r10
 1931 00a0 02A8     		add	r0, sp, #8
 1932 00a2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1933              	.L388:
 1934 00a6 3CB1     		cbz	r4, .L394
 1935 00a8 02A8     		add	r0, sp, #8
 1936 00aa FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 1937 00ae 48B9     		cbnz	r0, .L411
 1938 00b0 2046     		mov	r0, r4
ARM GAS  /tmp/ccg0SVmY.s 			page 35


 1939 00b2 1EB0     		add	sp, sp, #120
 1940              		@ sp needed
 1941 00b4 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1942              	.L394:
 1943 00b8 0124     		movs	r4, #1
 1944 00ba D9E7     		b	.L390
 1945              	.L410:
 1946 00bc 9068     		ldr	r0, [r2, #8]	@ float
 1947 00be FFF7FEFF 		bl	__aeabi_f2d
 1948 00c2 C3E7     		b	.L386
 1949              	.L411:
 1950 00c4 4846     		mov	r0, r9
 1951 00c6 0299     		ldr	r1, [sp, #8]
 1952 00c8 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1953 00cc 1EB0     		add	sp, sp, #120
 1954              		@ sp needed
 1955 00ce BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1956              	.L393:
 1957 00d2 3046     		mov	r0, r6
 1958 00d4 3946     		mov	r1, r7
 1959 00d6 DFE7     		b	.L389
 1960              	.L413:
 1961              		.align	3
 1962              	.L412:
 1963 00d8 00000060 		.word	1610612736
 1964 00dc 661271C0 		.word	-1066331546
 1965 00e0 00000000 		.word	.LC10
 1966 00e4 10000000 		.word	.LC11
 1967              		.size	_ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore, .-_ZNK4Heat30WriteBedAndChamberTempSe
 1968              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1969              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1970              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1971              	_ZL28cpu_irq_prev_interrupt_state:
 1972 0000 00       		.space	1
 1973              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1974              		.align	2
 1975              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1976              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1977              	_ZL32cpu_irq_critical_section_counter:
 1978 0000 00000000 		.space	4
 1979              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1980              		.align	2
 1981              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1982              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1983              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1984 0000 00000000 		.space	4
 1985              		.section	.rodata._ZL17DefaultBedHeaters,"a",%progbits
 1986              		.align	2
 1987              		.set	.LANCHOR0,. + 0
 1988              		.type	_ZL17DefaultBedHeaters, %object
 1989              		.size	_ZL17DefaultBedHeaters, 4
 1990              	_ZL17DefaultBedHeaters:
 1991 0000 00       		.byte	0
 1992 0001 FF       		.byte	-1
 1993 0002 FF       		.byte	-1
 1994 0003 FF       		.byte	-1
 1995              		.section	.rodata._ZL21DefaultChamberHeaters,"a",%progbits
ARM GAS  /tmp/ccg0SVmY.s 			page 36


 1996              		.align	2
 1997              		.set	.LANCHOR1,. + 0
 1998              		.type	_ZL21DefaultChamberHeaters, %object
 1999              		.size	_ZL21DefaultChamberHeaters, 2
 2000              	_ZL21DefaultChamberHeaters:
 2001 0000 FF       		.byte	-1
 2002 0001 FF       		.byte	-1
 2003              		.section	.rodata._ZN4Heat11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 2004              		.align	2
 2005              	.LC1:
 2006 0000 3D3D3D20 		.ascii	"=== Heat ===\012Bed heaters =\000"
 2006      48656174 
 2006      203D3D3D 
 2006      0A426564 
 2006      20686561 
 2007 001b 00       		.space	1
 2008              	.LC2:
 2009 001c 20256400 		.ascii	" %d\000"
 2010              	.LC3:
 2011 0020 2C206368 		.ascii	", chamberHeaters =\000"
 2011      616D6265 
 2011      72486561 
 2011      74657273 
 2011      203D00
 2012 0033 00       		.space	1
 2013              	.LC4:
 2014 0034 0A00     		.ascii	"\012\000"
 2015 0036 0000     		.space	2
 2016              	.LC5:
 2017 0038 48656174 		.ascii	"Heater %d is on, I-accum = %.1f\012\000"
 2017      65722025 
 2017      64206973 
 2017      206F6E2C 
 2017      20492D61 
 2018              		.section	.rodata._ZN4Heat13StartAutoTuneEjffRK9StringRef.str1.4,"aMS",%progbits,1
 2019              		.align	2
 2020              	.LC6:
 2021 0000 4572726F 		.ascii	"Error: cannot start auto tuning heater %u because h"
 2021      723A2063 
 2021      616E6E6F 
 2021      74207374 
 2021      61727420 
 2022 0033 65617465 		.ascii	"eater %d is being tuned\000"
 2022      72202564 
 2022      20697320 
 2022      6265696E 
 2022      67207475 
 2023              		.section	.rodata._ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef.str1.4,"aMS",%progbi
 2024              		.align	2
 2025              	.LC9:
 2026 0000 68656174 		.ascii	"heater %d is not configured\000"
 2026      65722025 
 2026      64206973 
 2026      206E6F74 
 2026      20636F6E 
 2027              		.section	.rodata._ZN4Heat4InitEv.str1.4,"aMS",%progbits,1
 2028              		.align	2
ARM GAS  /tmp/ccg0SVmY.s 			page 37


 2029              	.LC0:
 2030 0000 4D435500 		.ascii	"MCU\000"
 2031              		.section	.rodata._ZNK4Heat17GetAutoTuneStatusERK9StringRef.str1.4,"aMS",%progbits,1
 2032              		.align	2
 2033              	.LC7:
 2034 0000 4E6F2068 		.ascii	"No heater has been tuned yet\000"
 2034      65617465 
 2034      72206861 
 2034      73206265 
 2034      656E2074 
 2035              		.section	.rodata._ZNK4Heat20WriteModelParametersEP9FileStore.str1.4,"aMS",%progbits,1
 2036              		.align	2
 2037              	.LC8:
 2038 0000 3B204865 		.ascii	"; Heater model parameters\012\000"
 2038      61746572 
 2038      206D6F64 
 2038      656C2070 
 2038      6172616D 
 2039              		.section	.rodata._ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore.str1.4,"aMS",%progbits,1
 2040              		.align	2
 2041              	.LC10:
 2042 0000 4D313430 		.ascii	"M140 P%u S%.1f\012\000"
 2042      20502575 
 2042      2053252E 
 2042      31660A00 
 2043              	.LC11:
 2044 0010 4D313431 		.ascii	"M141 P%u S%.1f\012\000"
 2044      20502575 
 2044      2053252E 
 2044      31660A00 
 2045              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
