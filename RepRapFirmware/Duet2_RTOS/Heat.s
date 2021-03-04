ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 1


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
  14              		.text
  15              		.section	.text._ZNK4Heat22HeaterAtSetTemperatureEabf.part.22,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK4Heat22HeaterAtSetTemperatureEabf.part.22, %function
  23              	_ZNK4Heat22HeaterAtSetTemperatureEabf.part.22:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 00EB8101 		add	r1, r0, r1, lsl #2
  28 0004 4B6C     		ldr	r3, [r1, #68]
  29 0006 93F87C10 		ldrb	r1, [r3, #124]	@ zero_extendqisi2
  30 000a 0129     		cmp	r1, #1
  31 000c 1ED9     		bls	.L8
  32 000e 93F87E10 		ldrb	r1, [r3, #126]	@ zero_extendqisi2
  33 0012 D3ED066A 		vldr.32	s13, [r3, #24]
  34 0016 D9B9     		cbnz	r1, .L13
  35 0018 D3ED037A 		vldr.32	s15, [r3, #12]
  36              	.L4:
  37 001c 9FED0F7A 		vldr.32	s14, .L14
  38 0020 F4EEC77A 		vcmpe.f32	s15, s14
  39 0024 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  40 0028 10D4     		bmi	.L8
  41 002a 36EEE77A 		vsub.f32	s14, s13, s15
  42 002e B0EEC77A 		vabs.f32	s14, s14
  43 0032 B4EEC07A 		vcmpe.f32	s14, s0
  44 0036 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  45 003a 07D9     		bls	.L8
  46 003c F4EEE76A 		vcmpe.f32	s13, s15
  47 0040 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  48 0044 07DD     		ble	.L11
  49 0046 82F00100 		eor	r0, r2, #1
  50 004a 7047     		bx	lr
  51              	.L8:
  52 004c 0120     		movs	r0, #1
  53 004e 7047     		bx	lr
  54              	.L13:
  55 0050 D3ED027A 		vldr.32	s15, [r3, #8]
  56 0054 E2E7     		b	.L4
  57              	.L11:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 2


  58 0056 0020     		movs	r0, #0
  59 0058 7047     		bx	lr
  60              	.L15:
  61 005a 00BF     		.align	2
  62              	.L14:
  63 005c 00002042 		.word	1109393408
  64              		.size	_ZNK4Heat22HeaterAtSetTemperatureEabf.part.22, .-_ZNK4Heat22HeaterAtSetTemperatureEabf.part.
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
  78 0002 184A     		ldr	r2, .L22
  79 0004 184B     		ldr	r3, .L22+4
  80 0006 1568     		ldr	r5, [r2]
  81 0008 1A88     		ldrh	r2, [r3]
  82 000a C0F8D950 		str	r5, [r0, #217]	@ unaligned
  83 000e FF23     		movs	r3, #255
  84 0010 0024     		movs	r4, #0
  85 0012 0746     		mov	r7, r0
  86 0014 0160     		str	r1, [r0]
  87 0016 A0F8DD20 		strh	r2, [r0, #221]	@ unaligned
  88 001a 80F8D840 		strb	r4, [r0, #216]
  89 001e 80F8DF30 		strb	r3, [r0, #223]
  90 0022 80F8E030 		strb	r3, [r0, #224]
  91 0026 0546     		mov	r5, r0
  92              	.L17:
  93 0028 1020     		movs	r0, #16
  94 002a FFF7FEFF 		bl	_Znwj
  95 002e 2146     		mov	r1, r4
  96 0030 0134     		adds	r4, r4, #1
  97 0032 0646     		mov	r6, r0
  98 0034 FFF7FEFF 		bl	_ZN16HeaterProtectionC1Ej
  99 0038 102C     		cmp	r4, #16
 100 003a 45F8046F 		str	r6, [r5, #4]!
 101 003e F3D1     		bne	.L17
 102 0040 07F14405 		add	r5, r7, #68
 103 0044 0024     		movs	r4, #0
 104              	.L18:
 105 0046 8420     		movs	r0, #132
 106 0048 FFF7FEFF 		bl	_Znwj
 107 004c 62B2     		sxtb	r2, r4
 108 004e 3968     		ldr	r1, [r7]
 109 0050 0134     		adds	r4, r4, #1
 110 0052 0646     		mov	r6, r0
 111 0054 FFF7FEFF 		bl	_ZN3PIDC1ER8Platforma
 112 0058 082C     		cmp	r4, #8
 113 005a 45F8046B 		str	r6, [r5], #4
 114 005e F2D1     		bne	.L18
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 3


 115 0060 3846     		mov	r0, r7
 116 0062 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 117              	.L23:
 118              		.align	2
 119              	.L22:
 120 0064 00000000 		.word	.LANCHOR0
 121 0068 00000000 		.word	.LANCHOR1
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
 147 0026 00F1D908 		add	r8, r0, #217
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
 159 0042 96F9D930 		ldrsb	r3, [r6, #217]
 160 0046 4FFA85FC 		sxtb	ip, r5
 161 004a 6345     		cmp	r3, ip
 162 004c 06F1DD02 		add	r2, r6, #221
 163 0050 2DD0     		beq	.L26
 164 0052 4346     		mov	r3, r8
 165 0054 06F1DC0E 		add	lr, r6, #220
 166 0058 03E0     		b	.L27
 167              	.L40:
 168 005a 13F9011F 		ldrsb	r1, [r3, #1]!
 169 005e 6145     		cmp	r1, ip
 170 0060 25D0     		beq	.L26
 171              	.L27:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 4


 172 0062 9E45     		cmp	lr, r3
 173 0064 F9D1     		bne	.L40
 174 0066 96F9DD30 		ldrsb	r3, [r6, #221]
 175 006a 6345     		cmp	r3, ip
 176 006c 1FD0     		beq	.L26
 177 006e 06F1DE01 		add	r1, r6, #222
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 5


 229              		.type	_ZN4Heat4InitEv, %function
 230              	_ZN4Heat4InitEv:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 234 0004 2DED048B 		vpush.64	{d8, d9}
 235 0008 9FED688A 		vldr.32	s16, .L82
 236 000c DFED688A 		vldr.32	s17, .L82+4
 237 0010 85B0     		sub	sp, sp, #20
 238 0012 0546     		mov	r5, r0
 239 0014 00F1DD06 		add	r6, r0, #221
 240 0018 00F1D907 		add	r7, r0, #217
 241 001c 8046     		mov	r8, r0
 242 001e 00F1DC09 		add	r9, r0, #220
 243 0022 4FF0000A 		mov	r10, #0
 244              	.L54:
 245 0026 95F9D930 		ldrsb	r3, [r5, #217]
 246 002a 58F804BF 		ldr	fp, [r8, #4]!
 247 002e 4FFA8AF0 		sxtb	r0, r10
 248 0032 8342     		cmp	r3, r0
 249 0034 15D0     		beq	.L69
 250 0036 3B46     		mov	r3, r7
 251 0038 3446     		mov	r4, r6
 252 003a 03E0     		b	.L49
 253              	.L76:
 254 003c 13F9012F 		ldrsb	r2, [r3, #1]!
 255 0040 8242     		cmp	r2, r0
 256 0042 0ED0     		beq	.L69
 257              	.L49:
 258 0044 9945     		cmp	r9, r3
 259 0046 F9D1     		bne	.L76
 260 0048 95F9DD30 		ldrsb	r3, [r5, #221]
 261 004c 8342     		cmp	r3, r0
 262 004e 08D0     		beq	.L69
 263 0050 05F1DE02 		add	r2, r5, #222
 264              	.L63:
 265 0054 A242     		cmp	r2, r4
 266 0056 00F0A580 		beq	.L81
 267 005a 14F9013F 		ldrsb	r3, [r4, #1]!
 268 005e 8342     		cmp	r3, r0
 269 0060 F8D1     		bne	.L63
 270              	.L69:
 271 0062 B0EE480A 		vmov.f32	s0, s16
 272              	.L48:
 273 0066 5846     		mov	r0, fp
 274 0068 FFF7FEFF 		bl	_ZN16HeaterProtection4InitEf
 275 006c BAF1070F 		cmp	r10, #7
 276 0070 04D8     		bhi	.L53
 277 0072 5946     		mov	r1, fp
 278 0074 D8F84000 		ldr	r0, [r8, #64]
 279 0078 FFF7FEFF 		bl	_ZN3PID19SetHeaterProtectionEP16HeaterProtection
 280              	.L53:
 281 007c 0AF1010A 		add	r10, r10, #1
 282 0080 BAF1100F 		cmp	r10, #16
 283 0084 CFD1     		bne	.L54
 284 0086 4FF00009 		mov	r9, #0
 285 008a DFED4A8A 		vldr.32	s17, .L82+8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 6


 286 008e 9FED4A8A 		vldr.32	s16, .L82+12
 287 0092 DFED4A9A 		vldr.32	s19, .L82+16
 288 0096 9FED4A9A 		vldr.32	s18, .L82+20
 289 009a C846     		mov	r8, r9
 290 009c 05F14404 		add	r4, r5, #68
 291              	.L61:
 292 00a0 C4F84080 		str	r8, [r4, #64]
 293 00a4 95F9D930 		ldrsb	r3, [r5, #217]
 294 00a8 4FFA89F1 		sxtb	r1, r9
 295 00ac 8B42     		cmp	r3, r1
 296 00ae 6DD0     		beq	.L55
 297 00b0 3B46     		mov	r3, r7
 298 00b2 3046     		mov	r0, r6
 299 00b4 06F1FF3C 		add	ip, r6, #-1
 300 00b8 03E0     		b	.L56
 301              	.L77:
 302 00ba 13F9012F 		ldrsb	r2, [r3, #1]!
 303 00be 8A42     		cmp	r2, r1
 304 00c0 64D0     		beq	.L55
 305              	.L56:
 306 00c2 6345     		cmp	r3, ip
 307 00c4 F9D1     		bne	.L77
 308 00c6 95F9DD30 		ldrsb	r3, [r5, #221]
 309 00ca 8B42     		cmp	r3, r1
 310 00cc 5ED0     		beq	.L55
 311 00ce 05F1DE02 		add	r2, r5, #222
 312 00d2 03E0     		b	.L64
 313              	.L78:
 314 00d4 10F9013F 		ldrsb	r3, [r0, #1]!
 315 00d8 8B42     		cmp	r3, r1
 316 00da 57D0     		beq	.L55
 317              	.L64:
 318 00dc 9042     		cmp	r0, r2
 319 00de F9D1     		bne	.L78
 320 00e0 0022     		movs	r2, #0
 321 00e2 0121     		movs	r1, #1
 322 00e4 B1EE061A 		vmov.f32	s2, #5.5e+0
 323 00e8 F0EE690A 		vmov.f32	s1, s19
 324 00ec B0EE490A 		vmov.f32	s0, s18
 325 00f0 2068     		ldr	r0, [r4]
 326 00f2 FFF7FEFF 		bl	_ZN3PID4InitEfffbb
 327              	.L65:
 328 00f6 09F10109 		add	r9, r9, #1
 329 00fa B9F1080F 		cmp	r9, #8
 330 00fe C4F82080 		str	r8, [r4, #32]
 331 0102 04F10404 		add	r4, r4, #4
 332 0106 CBD1     		bne	.L61
 333 0108 05F1A403 		add	r3, r5, #164
 334 010c 05F1CC02 		add	r2, r5, #204
 335 0110 0024     		movs	r4, #0
 336              	.L62:
 337 0112 43F8044B 		str	r4, [r3], #4
 338 0116 9A42     		cmp	r2, r3
 339 0118 FBD1     		bne	.L62
 340 011a 4FF47A70 		mov	r0, #1000
 341 011e FFF7FEFF 		bl	_ZN17TemperatureSensor6CreateEj
 342 0122 2849     		ldr	r1, .L82+24
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 7


 343 0124 C5F8A400 		str	r0, [r5, #164]
 344 0128 FFF7FEFF 		bl	_ZN17TemperatureSensor13SetHeaterNameEPKc
 345 012c 40F2E930 		movw	r0, #1001
 346 0130 FFF7FEFF 		bl	_ZN17TemperatureSensor6CreateEj
 347 0134 C5F8A800 		str	r0, [r5, #168]
 348 0138 40F2EA30 		movw	r0, #1002
 349 013c FFF7FEFF 		bl	_ZN17TemperatureSensor6CreateEj
 350 0140 214E     		ldr	r6, .L82+28
 351 0142 C5F8AC00 		str	r0, [r5, #172]
 352 0146 FFF7FEFF 		bl	_ZN26DhtSensorHardwareInterface10InitStaticEv
 353 014a 85F8D840 		strb	r4, [r5, #216]
 354 014e 06F16000 		add	r0, r6, #96
 355 0152 06F10804 		add	r4, r6, #8
 356 0156 1D49     		ldr	r1, .L82+32
 357 0158 1D4A     		ldr	r2, .L82+36
 358 015a 0223     		movs	r3, #2
 359 015c CDE90104 		strd	r0, r4, [sp, #4]
 360 0160 C5F8D010 		str	r1, [r5, #208]	@ float
 361 0164 C5F8D420 		str	r2, [r5, #212]	@ float
 362 0168 1A49     		ldr	r1, .L82+40
 363 016a 0093     		str	r3, [sp]
 364 016c 4FF4C872 		mov	r2, #400
 365 0170 0023     		movs	r3, #0
 366 0172 1948     		ldr	r0, .L82+44
 367 0174 FFF7FEFF 		bl	xTaskCreateStatic
 368 0178 184B     		ldr	r3, .L82+48
 369 017a 3460     		str	r4, [r6]
 370 017c 1A68     		ldr	r2, [r3]
 371 017e 7260     		str	r2, [r6, #4]
 372 0180 1E60     		str	r6, [r3]
 373 0182 05B0     		add	sp, sp, #20
 374              		@ sp needed
 375 0184 BDEC048B 		vldm	sp!, {d8-d9}
 376 0188 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 377              	.L55:
 378 018c 0022     		movs	r2, #0
 379 018e 1146     		mov	r1, r2
 380 0190 B2EE041A 		vmov.f32	s2, #1.0e+1
 381 0194 F0EE680A 		vmov.f32	s1, s17
 382 0198 B0EE480A 		vmov.f32	s0, s16
 383 019c 2068     		ldr	r0, [r4]
 384 019e FFF7FEFF 		bl	_ZN3PID4InitEfffbb
 385 01a2 A8E7     		b	.L65
 386              	.L81:
 387 01a4 B0EE680A 		vmov.f32	s0, s17
 388 01a8 5DE7     		b	.L48
 389              	.L83:
 390 01aa 00BF     		.align	2
 391              	.L82:
 392 01ac 0000FA42 		.word	1123680256
 393 01b0 00009143 		.word	1133576192
 394 01b4 00002F44 		.word	1143930880
 395 01b8 0000B442 		.word	1119092736
 396 01bc 00000C43 		.word	1124859904
 397 01c0 0000AA43 		.word	1135214592
 398 01c4 00000000 		.word	.LC0
 399 01c8 00000000 		.word	.LANCHOR2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 8


 400 01cc 00002043 		.word	1126170624
 401 01d0 0000B442 		.word	1119092736
 402 01d4 04000000 		.word	.LC1
 403 01d8 00000000 		.word	HeaterTask
 404 01dc 00000000 		.word	_ZN8TaskBase8taskListE
 405              		.size	_ZN4Heat4InitEv, .-_ZN4Heat4InitEv
 406              		.section	.text._ZN4Heat4ExitEv,"ax",%progbits
 407              		.align	1
 408              		.p2align 2,,3
 409              		.global	_ZN4Heat4ExitEv
 410              		.syntax unified
 411              		.thumb
 412              		.thumb_func
 413              		.fpu fpv4-sp-d16
 414              		.type	_ZN4Heat4ExitEv, %function
 415              	_ZN4Heat4ExitEv:
 416              		@ args = 0, pretend = 0, frame = 0
 417              		@ frame_needed = 0, uses_anonymous_args = 0
 418 0000 38B5     		push	{r3, r4, r5, lr}
 419 0002 00F14404 		add	r4, r0, #68
 420 0006 00F16405 		add	r5, r0, #100
 421              	.L85:
 422 000a 54F8040B 		ldr	r0, [r4], #4
 423 000e FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 424 0012 A542     		cmp	r5, r4
 425 0014 F9D1     		bne	.L85
 426 0016 034B     		ldr	r3, .L88
 427 0018 1868     		ldr	r0, [r3]
 428 001a BDE83840 		pop	{r3, r4, r5, lr}
 429 001e FFF7FEBF 		b	vTaskSuspend
 430              	.L89:
 431 0022 00BF     		.align	2
 432              	.L88:
 433 0024 00000000 		.word	.LANCHOR2
 434              		.size	_ZN4Heat4ExitEv, .-_ZN4Heat4ExitEv
 435              		.section	.text._ZN4Heat4TaskEv,"ax",%progbits
 436              		.align	1
 437              		.p2align 2,,3
 438              		.global	_ZN4Heat4TaskEv
 439              		.syntax unified
 440              		.thumb
 441              		.thumb_func
 442              		.fpu fpv4-sp-d16
 443              		.type	_ZN4Heat4TaskEv, %function
 444              	_ZN4Heat4TaskEv:
 445              		@ args = 0, pretend = 0, frame = 0
 446              		@ frame_needed = 0, uses_anonymous_args = 0
 447 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 448 0004 0646     		mov	r6, r0
 449 0006 FFF7FEFF 		bl	xTaskGetTickCount
 450 000a 3746     		mov	r7, r6
 451 000c DFF854A0 		ldr	r10, .L99
 452 0010 47F8CC0F 		str	r0, [r7, #204]!
 453 0014 06F14409 		add	r9, r6, #68
 454 0018 06F16405 		add	r5, r6, #100
 455 001c 4FF0FF0B 		mov	fp, #255
 456 0020 4FF00008 		mov	r8, #0	@ movhi
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 9


 457              	.L93:
 458 0024 4C46     		mov	r4, r9
 459              	.L91:
 460 0026 54F8040B 		ldr	r0, [r4], #4
 461 002a FFF7FEFF 		bl	_ZN3PID4SpinEv
 462 002e AC42     		cmp	r4, r5
 463 0030 F9D1     		bne	.L91
 464 0032 96F9DF30 		ldrsb	r3, [r6, #223]
 465 0036 5A1C     		adds	r2, r3, #1
 466 0038 0AD0     		beq	.L92
 467 003a 06EB8302 		add	r2, r6, r3, lsl #2
 468 003e 526C     		ldr	r2, [r2, #68]
 469 0040 92F87C20 		ldrb	r2, [r2, #124]	@ zero_extendqisi2
 470 0044 052A     		cmp	r2, #5
 471 0046 9CBF     		itt	ls
 472 0048 86F8E030 		strbls	r3, [r6, #224]
 473 004c 86F8DFB0 		strbls	fp, [r6, #223]
 474              	.L92:
 475 0050 AAF8FA80 		strh	r8, [r10, #250]	@ unaligned
 476 0054 3368     		ldr	r3, [r6]
 477 0056 3846     		mov	r0, r7
 478 0058 D3F83818 		ldr	r1, [r3, #2104]
 479 005c FFF7FEFF 		bl	vTaskDelayUntil
 480 0060 E0E7     		b	.L93
 481              	.L100:
 482 0062 00BF     		.align	2
 483              	.L99:
 484 0064 00000000 		.word	reprap
 485              		.size	_ZN4Heat4TaskEv, .-_ZN4Heat4TaskEv
 486              		.section	.text.HeaterTask,"ax",%progbits
 487              		.align	1
 488              		.p2align 2,,3
 489              		.global	HeaterTask
 490              		.syntax unified
 491              		.thumb
 492              		.thumb_func
 493              		.fpu fpv4-sp-d16
 494              		.type	HeaterTask, %function
 495              	HeaterTask:
 496              		@ Volatile: function does not return.
 497              		@ args = 0, pretend = 0, frame = 0
 498              		@ frame_needed = 0, uses_anonymous_args = 0
 499 0000 08B5     		push	{r3, lr}
 500 0002 024B     		ldr	r3, .L103
 501 0004 1869     		ldr	r0, [r3, #16]
 502 0006 FFF7FEFF 		bl	_ZN4Heat4TaskEv
 503              	.L104:
 504 000a 00BF     		.align	2
 505              	.L103:
 506 000c 00000000 		.word	reprap
 507              		.size	HeaterTask, .-HeaterTask
 508              		.global	__aeabi_f2d
 509              		.section	.text._ZN4Heat11DiagnosticsE11MessageType,"ax",%progbits
 510              		.align	1
 511              		.p2align 2,,3
 512              		.global	_ZN4Heat11DiagnosticsE11MessageType
 513              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 10


 514              		.thumb
 515              		.thumb_func
 516              		.fpu fpv4-sp-d16
 517              		.type	_ZN4Heat11DiagnosticsE11MessageType, %function
 518              	_ZN4Heat11DiagnosticsE11MessageType:
 519              		@ args = 0, pretend = 0, frame = 0
 520              		@ frame_needed = 0, uses_anonymous_args = 0
 521 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 522 0004 0446     		mov	r4, r0
 523 0006 0546     		mov	r5, r0
 524 0008 82B0     		sub	sp, sp, #8
 525 000a 284A     		ldr	r2, .L118
 526 000c 54F8D90B 		ldr	r0, [r4], #217
 527 0010 DFF8A480 		ldr	r8, .L118+12
 528 0014 0F46     		mov	r7, r1
 529 0016 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 530 001a 05F1DD06 		add	r6, r5, #221
 531              	.L106:
 532 001e 14F9013B 		ldrsb	r3, [r4], #1
 533 0022 2868     		ldr	r0, [r5]
 534 0024 4246     		mov	r2, r8
 535 0026 3946     		mov	r1, r7
 536 0028 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 537 002c A642     		cmp	r6, r4
 538 002e F6D1     		bne	.L106
 539 0030 2E46     		mov	r6, r5
 540 0032 1F4A     		ldr	r2, .L118+4
 541 0034 56F8DF0B 		ldr	r0, [r6], #223
 542 0038 DFF87C80 		ldr	r8, .L118+12
 543 003c 3946     		mov	r1, r7
 544 003e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 545              	.L107:
 546 0042 14F9013B 		ldrsb	r3, [r4], #1
 547 0046 2868     		ldr	r0, [r5]
 548 0048 4246     		mov	r2, r8
 549 004a 3946     		mov	r1, r7
 550 004c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 551 0050 A642     		cmp	r6, r4
 552 0052 F6D1     		bne	.L107
 553 0054 2C46     		mov	r4, r5
 554 0056 174A     		ldr	r2, .L118+8
 555 0058 54F8440B 		ldr	r0, [r4], #68
 556 005c DFF85C90 		ldr	r9, .L118+16
 557 0060 3946     		mov	r1, r7
 558 0062 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 559 0066 05F16408 		add	r8, r5, #100
 560 006a 0026     		movs	r6, #0
 561 006c 03E0     		b	.L109
 562              	.L108:
 563 006e 4445     		cmp	r4, r8
 564 0070 06F10106 		add	r6, r6, #1
 565 0074 16D0     		beq	.L117
 566              	.L109:
 567 0076 54F8043B 		ldr	r3, [r4], #4
 568 007a 93F87E20 		ldrb	r2, [r3, #126]	@ zero_extendqisi2
 569 007e 002A     		cmp	r2, #0
 570 0080 F5D0     		beq	.L108
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 11


 571 0082 586E     		ldr	r0, [r3, #100]	@ float
 572 0084 D5F800A0 		ldr	r10, [r5]
 573 0088 FFF7FEFF 		bl	__aeabi_f2d
 574 008c 3346     		mov	r3, r6
 575 008e CDE90001 		strd	r0, [sp]
 576 0092 4A46     		mov	r2, r9
 577 0094 5046     		mov	r0, r10
 578 0096 3946     		mov	r1, r7
 579 0098 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 580 009c 4445     		cmp	r4, r8
 581 009e 06F10106 		add	r6, r6, #1
 582 00a2 E8D1     		bne	.L109
 583              	.L117:
 584 00a4 02B0     		add	sp, sp, #8
 585              		@ sp needed
 586 00a6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 587              	.L119:
 588 00aa 00BF     		.align	2
 589              	.L118:
 590 00ac 00000000 		.word	.LC2
 591 00b0 20000000 		.word	.LC4
 592 00b4 34000000 		.word	.LC5
 593 00b8 1C000000 		.word	.LC3
 594 00bc 38000000 		.word	.LC6
 595              		.size	_ZN4Heat11DiagnosticsE11MessageType, .-_ZN4Heat11DiagnosticsE11MessageType
 596              		.section	.text._ZNK4Heat27AllHeatersAtSetTemperaturesEbf,"ax",%progbits
 597              		.align	1
 598              		.p2align 2,,3
 599              		.global	_ZNK4Heat27AllHeatersAtSetTemperaturesEbf
 600              		.syntax unified
 601              		.thumb
 602              		.thumb_func
 603              		.fpu fpv4-sp-d16
 604              		.type	_ZNK4Heat27AllHeatersAtSetTemperaturesEbf, %function
 605              	_ZNK4Heat27AllHeatersAtSetTemperaturesEbf:
 606              		@ args = 0, pretend = 0, frame = 0
 607              		@ frame_needed = 0, uses_anonymous_args = 0
 608 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 609 0004 B0EE406A 		vmov.f32	s12, s0
 610 0008 0746     		mov	r7, r0
 611 000a 8846     		mov	r8, r1
 612 000c 00F1D909 		add	r9, r0, #217
 613 0010 00F1DC06 		add	r6, r0, #220
 614 0014 0025     		movs	r5, #0
 615 0016 02E0     		b	.L125
 616              	.L121:
 617 0018 0135     		adds	r5, r5, #1
 618 001a 082D     		cmp	r5, #8
 619 001c 1BD0     		beq	.L131
 620              	.L125:
 621 001e 6CB2     		sxtb	r4, r5
 622 0020 2146     		mov	r1, r4
 623 0022 B0EE460A 		vmov.f32	s0, s12
 624 0026 0122     		movs	r2, #1
 625 0028 3846     		mov	r0, r7
 626 002a FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEabf.part.22
 627 002e 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 12


 628 0030 F2D1     		bne	.L121
 629 0032 B8F1000F 		cmp	r8, #0
 630 0036 13D1     		bne	.L126
 631 0038 97F9D930 		ldrsb	r3, [r7, #217]
 632 003c A342     		cmp	r3, r4
 633 003e EBD0     		beq	.L121
 634 0040 4B46     		mov	r3, r9
 635 0042 03E0     		b	.L123
 636              	.L129:
 637 0044 13F9012F 		ldrsb	r2, [r3, #1]!
 638 0048 A242     		cmp	r2, r4
 639 004a E5D0     		beq	.L121
 640              	.L123:
 641 004c 9E42     		cmp	r6, r3
 642 004e F9D1     		bne	.L129
 643 0050 4046     		mov	r0, r8
 644 0052 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 645              	.L131:
 646 0056 4FF00108 		mov	r8, #1
 647 005a 4046     		mov	r0, r8
 648 005c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 649              	.L126:
 650 0060 8046     		mov	r8, r0
 651 0062 4046     		mov	r0, r8
 652 0064 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 653              		.size	_ZNK4Heat27AllHeatersAtSetTemperaturesEbf, .-_ZNK4Heat27AllHeatersAtSetTemperaturesEbf
 654              		.section	.text._ZNK4Heat22HeaterAtSetTemperatureEabf,"ax",%progbits
 655              		.align	1
 656              		.p2align 2,,3
 657              		.global	_ZNK4Heat22HeaterAtSetTemperatureEabf
 658              		.syntax unified
 659              		.thumb
 660              		.thumb_func
 661              		.fpu fpv4-sp-d16
 662              		.type	_ZNK4Heat22HeaterAtSetTemperatureEabf, %function
 663              	_ZNK4Heat22HeaterAtSetTemperatureEabf:
 664              		@ args = 0, pretend = 0, frame = 0
 665              		@ frame_needed = 0, uses_anonymous_args = 0
 666              		@ link register save eliminated.
 667 0000 CBB2     		uxtb	r3, r1
 668 0002 072B     		cmp	r3, #7
 669 0004 01D8     		bhi	.L133
 670 0006 FFF7FEBF 		b	_ZNK4Heat22HeaterAtSetTemperatureEabf.part.22
 671              	.L133:
 672 000a 0120     		movs	r0, #1
 673 000c 7047     		bx	lr
 674              		.size	_ZNK4Heat22HeaterAtSetTemperatureEabf, .-_ZNK4Heat22HeaterAtSetTemperatureEabf
 675 000e 00BF     		.section	.text._ZNK4Heat9GetStatusEa,"ax",%progbits
 676              		.align	1
 677              		.p2align 2,,3
 678              		.global	_ZNK4Heat9GetStatusEa
 679              		.syntax unified
 680              		.thumb
 681              		.thumb_func
 682              		.fpu fpv4-sp-d16
 683              		.type	_ZNK4Heat9GetStatusEa, %function
 684              	_ZNK4Heat9GetStatusEa:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 13


 685              		@ args = 0, pretend = 0, frame = 0
 686              		@ frame_needed = 0, uses_anonymous_args = 0
 687              		@ link register save eliminated.
 688 0000 CBB2     		uxtb	r3, r1
 689 0002 072B     		cmp	r3, #7
 690 0004 10D8     		bhi	.L138
 691 0006 00EB8100 		add	r0, r0, r1, lsl #2
 692 000a 426C     		ldr	r2, [r0, #68]
 693 000c 92F87C30 		ldrb	r3, [r2, #124]	@ zero_extendqisi2
 694 0010 63B1     		cbz	r3, .L137
 695 0012 012B     		cmp	r3, #1
 696 0014 08D0     		beq	.L138
 697 0016 052B     		cmp	r3, #5
 698 0018 0AD8     		bhi	.L139
 699 001a 92F87E30 		ldrb	r3, [r2, #126]	@ zero_extendqisi2
 700 001e 002B     		cmp	r3, #0
 701 0020 14BF     		ite	ne
 702 0022 0220     		movne	r0, #2
 703 0024 0120     		moveq	r0, #1
 704 0026 7047     		bx	lr
 705              	.L138:
 706 0028 0020     		movs	r0, #0
 707 002a 7047     		bx	lr
 708              	.L137:
 709 002c 0320     		movs	r0, #3
 710 002e 7047     		bx	lr
 711              	.L139:
 712 0030 0420     		movs	r0, #4
 713 0032 7047     		bx	lr
 714              		.size	_ZNK4Heat9GetStatusEa, .-_ZNK4Heat9GetStatusEa
 715              		.section	.text._ZN4Heat12SetBedHeaterEja,"ax",%progbits
 716              		.align	1
 717              		.p2align 2,,3
 718              		.global	_ZN4Heat12SetBedHeaterEja
 719              		.syntax unified
 720              		.thumb
 721              		.thumb_func
 722              		.fpu fpv4-sp-d16
 723              		.type	_ZN4Heat12SetBedHeaterEja, %function
 724              	_ZN4Heat12SetBedHeaterEja:
 725              		@ args = 0, pretend = 0, frame = 0
 726              		@ frame_needed = 0, uses_anonymous_args = 0
 727 0000 38B5     		push	{r3, r4, r5, lr}
 728 0002 4418     		adds	r4, r0, r1
 729 0004 1546     		mov	r5, r2
 730 0006 94F9D930 		ldrsb	r3, [r4, #217]
 731 000a 002B     		cmp	r3, #0
 732 000c 04DB     		blt	.L142
 733 000e 00EB8300 		add	r0, r0, r3, lsl #2
 734 0012 406C     		ldr	r0, [r0, #68]
 735 0014 FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 736              	.L142:
 737 0018 84F8D950 		strb	r5, [r4, #217]
 738 001c 38BD     		pop	{r3, r4, r5, pc}
 739              		.size	_ZN4Heat12SetBedHeaterEja, .-_ZN4Heat12SetBedHeaterEja
 740              		.section	.text._ZNK4Heat11IsBedHeaterEa,"ax",%progbits
 741              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 14


 742              		.p2align 2,,3
 743              		.global	_ZNK4Heat11IsBedHeaterEa
 744              		.syntax unified
 745              		.thumb
 746              		.thumb_func
 747              		.fpu fpv4-sp-d16
 748              		.type	_ZNK4Heat11IsBedHeaterEa, %function
 749              	_ZNK4Heat11IsBedHeaterEa:
 750              		@ args = 0, pretend = 0, frame = 0
 751              		@ frame_needed = 0, uses_anonymous_args = 0
 752              		@ link register save eliminated.
 753 0000 90F9D920 		ldrsb	r2, [r0, #217]
 754 0004 8A42     		cmp	r2, r1
 755 0006 00F1D903 		add	r3, r0, #217
 756 000a 09D0     		beq	.L149
 757 000c DC30     		adds	r0, r0, #220
 758 000e 03E0     		b	.L146
 759              	.L147:
 760 0010 13F9012F 		ldrsb	r2, [r3, #1]!
 761 0014 8A42     		cmp	r2, r1
 762 0016 03D0     		beq	.L149
 763              	.L146:
 764 0018 8342     		cmp	r3, r0
 765 001a F9D1     		bne	.L147
 766 001c 0020     		movs	r0, #0
 767 001e 7047     		bx	lr
 768              	.L149:
 769 0020 0120     		movs	r0, #1
 770 0022 7047     		bx	lr
 771              		.size	_ZNK4Heat11IsBedHeaterEa, .-_ZNK4Heat11IsBedHeaterEa
 772              		.section	.text._ZN4Heat16SetChamberHeaterEja,"ax",%progbits
 773              		.align	1
 774              		.p2align 2,,3
 775              		.global	_ZN4Heat16SetChamberHeaterEja
 776              		.syntax unified
 777              		.thumb
 778              		.thumb_func
 779              		.fpu fpv4-sp-d16
 780              		.type	_ZN4Heat16SetChamberHeaterEja, %function
 781              	_ZN4Heat16SetChamberHeaterEja:
 782              		@ args = 0, pretend = 0, frame = 0
 783              		@ frame_needed = 0, uses_anonymous_args = 0
 784 0000 70B5     		push	{r4, r5, r6, lr}
 785 0002 8318     		adds	r3, r0, r2
 786 0004 0446     		mov	r4, r0
 787 0006 93F9DD30 		ldrsb	r3, [r3, #221]
 788 000a 002B     		cmp	r3, #0
 789 000c 1546     		mov	r5, r2
 790 000e 0E46     		mov	r6, r1
 791 0010 04DB     		blt	.L151
 792 0012 00EB8303 		add	r3, r0, r3, lsl #2
 793 0016 586C     		ldr	r0, [r3, #68]
 794 0018 FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 795              	.L151:
 796 001c 3444     		add	r4, r4, r6
 797 001e 84F8DD50 		strb	r5, [r4, #221]
 798 0022 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 15


 799              		.size	_ZN4Heat16SetChamberHeaterEja, .-_ZN4Heat16SetChamberHeaterEja
 800              		.section	.text._ZNK4Heat15IsChamberHeaterEa,"ax",%progbits
 801              		.align	1
 802              		.p2align 2,,3
 803              		.global	_ZNK4Heat15IsChamberHeaterEa
 804              		.syntax unified
 805              		.thumb
 806              		.thumb_func
 807              		.fpu fpv4-sp-d16
 808              		.type	_ZNK4Heat15IsChamberHeaterEa, %function
 809              	_ZNK4Heat15IsChamberHeaterEa:
 810              		@ args = 0, pretend = 0, frame = 0
 811              		@ frame_needed = 0, uses_anonymous_args = 0
 812              		@ link register save eliminated.
 813 0000 90F9DD20 		ldrsb	r2, [r0, #221]
 814 0004 8A42     		cmp	r2, r1
 815 0006 00F1DD03 		add	r3, r0, #221
 816 000a 09D0     		beq	.L158
 817 000c DE30     		adds	r0, r0, #222
 818 000e 03E0     		b	.L155
 819              	.L156:
 820 0010 13F9012F 		ldrsb	r2, [r3, #1]!
 821 0014 8A42     		cmp	r2, r1
 822 0016 03D0     		beq	.L158
 823              	.L155:
 824 0018 8342     		cmp	r3, r0
 825 001a F9D1     		bne	.L156
 826 001c 0020     		movs	r0, #0
 827 001e 7047     		bx	lr
 828              	.L158:
 829 0020 0120     		movs	r0, #1
 830 0022 7047     		bx	lr
 831              		.size	_ZNK4Heat15IsChamberHeaterEa, .-_ZNK4Heat15IsChamberHeaterEa
 832              		.section	.text._ZN4Heat20SetActiveTemperatureEaf,"ax",%progbits
 833              		.align	1
 834              		.p2align 2,,3
 835              		.global	_ZN4Heat20SetActiveTemperatureEaf
 836              		.syntax unified
 837              		.thumb
 838              		.thumb_func
 839              		.fpu fpv4-sp-d16
 840              		.type	_ZN4Heat20SetActiveTemperatureEaf, %function
 841              	_ZN4Heat20SetActiveTemperatureEaf:
 842              		@ args = 0, pretend = 0, frame = 0
 843              		@ frame_needed = 0, uses_anonymous_args = 0
 844              		@ link register save eliminated.
 845 0000 CBB2     		uxtb	r3, r1
 846 0002 072B     		cmp	r3, #7
 847 0004 00D9     		bls	.L161
 848 0006 7047     		bx	lr
 849              	.L161:
 850 0008 00EB8101 		add	r1, r0, r1, lsl #2
 851 000c 486C     		ldr	r0, [r1, #68]
 852 000e FFF7FEBF 		b	_ZN3PID20SetActiveTemperatureEf
 853              		.size	_ZN4Heat20SetActiveTemperatureEaf, .-_ZN4Heat20SetActiveTemperatureEaf
 854 0012 00BF     		.section	.text._ZNK4Heat20GetActiveTemperatureEa,"ax",%progbits
 855              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 16


 856              		.p2align 2,,3
 857              		.global	_ZNK4Heat20GetActiveTemperatureEa
 858              		.syntax unified
 859              		.thumb
 860              		.thumb_func
 861              		.fpu fpv4-sp-d16
 862              		.type	_ZNK4Heat20GetActiveTemperatureEa, %function
 863              	_ZNK4Heat20GetActiveTemperatureEa:
 864              		@ args = 0, pretend = 0, frame = 0
 865              		@ frame_needed = 0, uses_anonymous_args = 0
 866              		@ link register save eliminated.
 867 0000 CBB2     		uxtb	r3, r1
 868 0002 072B     		cmp	r3, #7
 869 0004 9DBF     		ittte	ls
 870 0006 00EB8100 		addls	r0, r0, r1, lsl #2
 871 000a 436C     		ldrls	r3, [r0, #68]
 872 000c 93ED020A 		vldrls.32	s0, [r3, #8]
 873 0010 9FED010A 		vldrhi.32	s0, .L165
 874 0014 7047     		bx	lr
 875              	.L166:
 876 0016 00BF     		.align	2
 877              	.L165:
 878 0018 339388C3 		.word	-1014459597
 879              		.size	_ZNK4Heat20GetActiveTemperatureEa, .-_ZNK4Heat20GetActiveTemperatureEa
 880              		.section	.text._ZN4Heat21SetStandbyTemperatureEaf,"ax",%progbits
 881              		.align	1
 882              		.p2align 2,,3
 883              		.global	_ZN4Heat21SetStandbyTemperatureEaf
 884              		.syntax unified
 885              		.thumb
 886              		.thumb_func
 887              		.fpu fpv4-sp-d16
 888              		.type	_ZN4Heat21SetStandbyTemperatureEaf, %function
 889              	_ZN4Heat21SetStandbyTemperatureEaf:
 890              		@ args = 0, pretend = 0, frame = 0
 891              		@ frame_needed = 0, uses_anonymous_args = 0
 892              		@ link register save eliminated.
 893 0000 CBB2     		uxtb	r3, r1
 894 0002 072B     		cmp	r3, #7
 895 0004 00D9     		bls	.L169
 896 0006 7047     		bx	lr
 897              	.L169:
 898 0008 00EB8101 		add	r1, r0, r1, lsl #2
 899 000c 486C     		ldr	r0, [r1, #68]
 900 000e FFF7FEBF 		b	_ZN3PID21SetStandbyTemperatureEf
 901              		.size	_ZN4Heat21SetStandbyTemperatureEaf, .-_ZN4Heat21SetStandbyTemperatureEaf
 902 0012 00BF     		.section	.text._ZNK4Heat21GetStandbyTemperatureEa,"ax",%progbits
 903              		.align	1
 904              		.p2align 2,,3
 905              		.global	_ZNK4Heat21GetStandbyTemperatureEa
 906              		.syntax unified
 907              		.thumb
 908              		.thumb_func
 909              		.fpu fpv4-sp-d16
 910              		.type	_ZNK4Heat21GetStandbyTemperatureEa, %function
 911              	_ZNK4Heat21GetStandbyTemperatureEa:
 912              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 17


 913              		@ frame_needed = 0, uses_anonymous_args = 0
 914              		@ link register save eliminated.
 915 0000 CBB2     		uxtb	r3, r1
 916 0002 072B     		cmp	r3, #7
 917 0004 9DBF     		ittte	ls
 918 0006 00EB8100 		addls	r0, r0, r1, lsl #2
 919 000a 436C     		ldrls	r3, [r0, #68]
 920 000c 93ED030A 		vldrls.32	s0, [r3, #12]
 921 0010 9FED010A 		vldrhi.32	s0, .L173
 922 0014 7047     		bx	lr
 923              	.L174:
 924 0016 00BF     		.align	2
 925              	.L173:
 926 0018 339388C3 		.word	-1014459597
 927              		.size	_ZNK4Heat21GetStandbyTemperatureEa, .-_ZNK4Heat21GetStandbyTemperatureEa
 928              		.section	.text._ZNK4Heat26GetHighestTemperatureLimitEa,"ax",%progbits
 929              		.align	1
 930              		.p2align 2,,3
 931              		.global	_ZNK4Heat26GetHighestTemperatureLimitEa
 932              		.syntax unified
 933              		.thumb
 934              		.thumb_func
 935              		.fpu fpv4-sp-d16
 936              		.type	_ZNK4Heat26GetHighestTemperatureLimitEa, %function
 937              	_ZNK4Heat26GetHighestTemperatureLimitEa:
 938              		@ args = 0, pretend = 0, frame = 0
 939              		@ frame_needed = 0, uses_anonymous_args = 0
 940              		@ link register save eliminated.
 941 0000 CBB2     		uxtb	r3, r1
 942 0002 072B     		cmp	r3, #7
 943 0004 28D8     		bhi	.L179
 944 0006 9FED160A 		vldr.32	s0, .L189
 945 000a 10B4     		push	{r4}
 946 000c B0EE407A 		vmov.f32	s14, s0
 947 0010 00F14004 		add	r4, r0, #64
 948 0014 01E0     		b	.L178
 949              	.L177:
 950 0016 A042     		cmp	r0, r4
 951 0018 13D0     		beq	.L187
 952              	.L178:
 953 001a 50F8043F 		ldr	r3, [r0, #4]!
 954 001e 93F90920 		ldrsb	r2, [r3, #9]
 955 0022 8A42     		cmp	r2, r1
 956 0024 F7D1     		bne	.L177
 957 0026 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 958 0028 002A     		cmp	r2, #0
 959 002a F4D1     		bne	.L177
 960 002c B4EE470A 		vcmp.f32	s0, s14
 961 0030 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 962 0034 D3ED017A 		vldr.32	s15, [r3, #4]
 963 0038 06D1     		bne	.L188
 964 003a A042     		cmp	r0, r4
 965 003c B0EE670A 		vmov.f32	s0, s15
 966 0040 EBD1     		bne	.L178
 967              	.L187:
 968 0042 5DF8044B 		ldr	r4, [sp], #4
 969 0046 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 18


 970              	.L188:
 971 0048 F4EE407A 		vcmp.f32	s15, s0
 972 004c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 973 0050 C8BF     		it	gt
 974 0052 B0EE670A 		vmovgt.f32	s0, s15
 975 0056 DEE7     		b	.L177
 976              	.L179:
 977 0058 9FED010A 		vldr.32	s0, .L189
 978 005c 7047     		bx	lr
 979              	.L190:
 980 005e 00BF     		.align	2
 981              	.L189:
 982 0060 0000FA44 		.word	1157234688
 983              		.size	_ZNK4Heat26GetHighestTemperatureLimitEa, .-_ZNK4Heat26GetHighestTemperatureLimitEa
 984              		.section	.text._ZNK4Heat25GetLowestTemperatureLimitEa,"ax",%progbits
 985              		.align	1
 986              		.p2align 2,,3
 987              		.global	_ZNK4Heat25GetLowestTemperatureLimitEa
 988              		.syntax unified
 989              		.thumb
 990              		.thumb_func
 991              		.fpu fpv4-sp-d16
 992              		.type	_ZNK4Heat25GetLowestTemperatureLimitEa, %function
 993              	_ZNK4Heat25GetLowestTemperatureLimitEa:
 994              		@ args = 0, pretend = 0, frame = 0
 995              		@ frame_needed = 0, uses_anonymous_args = 0
 996              		@ link register save eliminated.
 997 0000 CBB2     		uxtb	r3, r1
 998 0002 072B     		cmp	r3, #7
 999 0004 20D8     		bhi	.L195
 1000 0006 9FED160A 		vldr.32	s0, .L205
 1001 000a 10B4     		push	{r4}
 1002 000c F0EE407A 		vmov.f32	s15, s0
 1003 0010 00F14004 		add	r4, r0, #64
 1004 0014 01E0     		b	.L194
 1005              	.L193:
 1006 0016 A042     		cmp	r0, r4
 1007 0018 13D0     		beq	.L203
 1008              	.L194:
 1009 001a 50F8043F 		ldr	r3, [r0, #4]!
 1010 001e 93F90920 		ldrsb	r2, [r3, #9]
 1011 0022 8A42     		cmp	r2, r1
 1012 0024 F7D1     		bne	.L193
 1013 0026 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 1014 0028 012A     		cmp	r2, #1
 1015 002a F4D1     		bne	.L193
 1016 002c B4EE670A 		vcmp.f32	s0, s15
 1017 0030 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1018 0034 93ED017A 		vldr.32	s14, [r3, #4]
 1019 0038 09D1     		bne	.L204
 1020 003a A042     		cmp	r0, r4
 1021 003c B0EE470A 		vmov.f32	s0, s14
 1022 0040 EBD1     		bne	.L194
 1023              	.L203:
 1024 0042 5DF8044B 		ldr	r4, [sp], #4
 1025 0046 7047     		bx	lr
 1026              	.L195:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 19


 1027 0048 9FED050A 		vldr.32	s0, .L205
 1028 004c 7047     		bx	lr
 1029              	.L204:
 1030 004e B4EE407A 		vcmp.f32	s14, s0
 1031 0052 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1032 0056 48BF     		it	mi
 1033 0058 B0EE470A 		vmovmi.f32	s0, s14
 1034 005c DBE7     		b	.L193
 1035              	.L206:
 1036 005e 00BF     		.align	2
 1037              	.L205:
 1038 0060 339388C3 		.word	-1014459597
 1039              		.size	_ZNK4Heat25GetLowestTemperatureLimitEa, .-_ZNK4Heat25GetLowestTemperatureLimitEa
 1040              		.section	.text._ZNK4Heat14GetTemperatureEa,"ax",%progbits
 1041              		.align	1
 1042              		.p2align 2,,3
 1043              		.global	_ZNK4Heat14GetTemperatureEa
 1044              		.syntax unified
 1045              		.thumb
 1046              		.thumb_func
 1047              		.fpu fpv4-sp-d16
 1048              		.type	_ZNK4Heat14GetTemperatureEa, %function
 1049              	_ZNK4Heat14GetTemperatureEa:
 1050              		@ args = 0, pretend = 0, frame = 0
 1051              		@ frame_needed = 0, uses_anonymous_args = 0
 1052              		@ link register save eliminated.
 1053 0000 CBB2     		uxtb	r3, r1
 1054 0002 072B     		cmp	r3, #7
 1055 0004 9DBF     		ittte	ls
 1056 0006 00EB8100 		addls	r0, r0, r1, lsl #2
 1057 000a 436C     		ldrls	r3, [r0, #68]
 1058 000c 93ED060A 		vldrls.32	s0, [r3, #24]
 1059 0010 9FED010A 		vldrhi.32	s0, .L210
 1060 0014 7047     		bx	lr
 1061              	.L211:
 1062 0016 00BF     		.align	2
 1063              	.L210:
 1064 0018 339388C3 		.word	-1014459597
 1065              		.size	_ZNK4Heat14GetTemperatureEa, .-_ZNK4Heat14GetTemperatureEa
 1066              		.section	.text._ZNK4Heat20GetTargetTemperatureEa,"ax",%progbits
 1067              		.align	1
 1068              		.p2align 2,,3
 1069              		.global	_ZNK4Heat20GetTargetTemperatureEa
 1070              		.syntax unified
 1071              		.thumb
 1072              		.thumb_func
 1073              		.fpu fpv4-sp-d16
 1074              		.type	_ZNK4Heat20GetTargetTemperatureEa, %function
 1075              	_ZNK4Heat20GetTargetTemperatureEa:
 1076              		@ args = 0, pretend = 0, frame = 0
 1077              		@ frame_needed = 0, uses_anonymous_args = 0
 1078              		@ link register save eliminated.
 1079 0000 CBB2     		uxtb	r3, r1
 1080 0002 072B     		cmp	r3, #7
 1081 0004 0DD8     		bhi	.L216
 1082 0006 00EB8100 		add	r0, r0, r1, lsl #2
 1083 000a 426C     		ldr	r2, [r0, #68]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 20


 1084 000c 92F87C30 		ldrb	r3, [r2, #124]	@ zero_extendqisi2
 1085 0010 023B     		subs	r3, r3, #2
 1086 0012 032B     		cmp	r3, #3
 1087 0014 05D8     		bhi	.L216
 1088 0016 92F87E30 		ldrb	r3, [r2, #126]	@ zero_extendqisi2
 1089 001a 2BB9     		cbnz	r3, .L217
 1090 001c 92ED030A 		vldr.32	s0, [r2, #12]
 1091 0020 7047     		bx	lr
 1092              	.L216:
 1093 0022 9FED030A 		vldr.32	s0, .L218
 1094 0026 7047     		bx	lr
 1095              	.L217:
 1096 0028 92ED020A 		vldr.32	s0, [r2, #8]
 1097 002c 7047     		bx	lr
 1098              	.L219:
 1099 002e 00BF     		.align	2
 1100              	.L218:
 1101 0030 00000000 		.word	0
 1102              		.size	_ZNK4Heat20GetTargetTemperatureEa, .-_ZNK4Heat20GetTargetTemperatureEa
 1103              		.section	.text._ZN4Heat8ActivateEa,"ax",%progbits
 1104              		.align	1
 1105              		.p2align 2,,3
 1106              		.global	_ZN4Heat8ActivateEa
 1107              		.syntax unified
 1108              		.thumb
 1109              		.thumb_func
 1110              		.fpu fpv4-sp-d16
 1111              		.type	_ZN4Heat8ActivateEa, %function
 1112              	_ZN4Heat8ActivateEa:
 1113              		@ args = 0, pretend = 0, frame = 0
 1114              		@ frame_needed = 0, uses_anonymous_args = 0
 1115              		@ link register save eliminated.
 1116 0000 CBB2     		uxtb	r3, r1
 1117 0002 072B     		cmp	r3, #7
 1118 0004 00D9     		bls	.L222
 1119 0006 7047     		bx	lr
 1120              	.L222:
 1121 0008 00EB8101 		add	r1, r0, r1, lsl #2
 1122 000c 486C     		ldr	r0, [r1, #68]
 1123 000e FFF7FEBF 		b	_ZN3PID8ActivateEv
 1124              		.size	_ZN4Heat8ActivateEa, .-_ZN4Heat8ActivateEa
 1125 0012 00BF     		.section	.text._ZN4Heat9SwitchOffEa,"ax",%progbits
 1126              		.align	1
 1127              		.p2align 2,,3
 1128              		.global	_ZN4Heat9SwitchOffEa
 1129              		.syntax unified
 1130              		.thumb
 1131              		.thumb_func
 1132              		.fpu fpv4-sp-d16
 1133              		.type	_ZN4Heat9SwitchOffEa, %function
 1134              	_ZN4Heat9SwitchOffEa:
 1135              		@ args = 0, pretend = 0, frame = 0
 1136              		@ frame_needed = 0, uses_anonymous_args = 0
 1137 0000 CBB2     		uxtb	r3, r1
 1138 0002 072B     		cmp	r3, #7
 1139 0004 00D9     		bls	.L229
 1140 0006 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 21


 1141              	.L229:
 1142 0008 10B5     		push	{r4, lr}
 1143 000a 00EB8104 		add	r4, r0, r1, lsl #2
 1144 000e 606C     		ldr	r0, [r4, #68]
 1145 0010 FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 1146 0014 0023     		movs	r3, #0
 1147 0016 6366     		str	r3, [r4, #100]
 1148 0018 10BD     		pop	{r4, pc}
 1149              		.size	_ZN4Heat9SwitchOffEa, .-_ZN4Heat9SwitchOffEa
 1150 001a 00BF     		.section	.text._ZN4Heat12SwitchOffAllEb,"ax",%progbits
 1151              		.align	1
 1152              		.p2align 2,,3
 1153              		.global	_ZN4Heat12SwitchOffAllEb
 1154              		.syntax unified
 1155              		.thumb
 1156              		.thumb_func
 1157              		.fpu fpv4-sp-d16
 1158              		.type	_ZN4Heat12SwitchOffAllEb, %function
 1159              	_ZN4Heat12SwitchOffAllEb:
 1160              		@ args = 0, pretend = 0, frame = 0
 1161              		@ frame_needed = 0, uses_anonymous_args = 0
 1162 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1163 0004 8246     		mov	r10, r0
 1164 0006 8946     		mov	r9, r1
 1165 0008 00F1D908 		add	r8, r0, #217
 1166 000c 00F1DD07 		add	r7, r0, #221
 1167 0010 00F1DC06 		add	r6, r0, #220
 1168 0014 0024     		movs	r4, #0
 1169              	.L237:
 1170 0016 B9F1000F 		cmp	r9, #0
 1171 001a 1ED1     		bne	.L231
 1172 001c 9AF9D930 		ldrsb	r3, [r10, #217]
 1173 0020 60B2     		sxtb	r0, r4
 1174 0022 8342     		cmp	r3, r0
 1175 0024 14D0     		beq	.L232
 1176 0026 4346     		mov	r3, r8
 1177 0028 3D46     		mov	r5, r7
 1178 002a 03E0     		b	.L233
 1179              	.L241:
 1180 002c 13F9012F 		ldrsb	r2, [r3, #1]!
 1181 0030 8242     		cmp	r2, r0
 1182 0032 0DD0     		beq	.L232
 1183              	.L233:
 1184 0034 9E42     		cmp	r6, r3
 1185 0036 F9D1     		bne	.L241
 1186 0038 9AF9DD30 		ldrsb	r3, [r10, #221]
 1187 003c 8342     		cmp	r3, r0
 1188 003e 07D0     		beq	.L232
 1189 0040 0AF1DE02 		add	r2, r10, #222
 1190              	.L238:
 1191 0044 9542     		cmp	r5, r2
 1192 0046 08D0     		beq	.L231
 1193 0048 15F9013F 		ldrsb	r3, [r5, #1]!
 1194 004c 8342     		cmp	r3, r0
 1195 004e F9D1     		bne	.L238
 1196              	.L232:
 1197 0050 0134     		adds	r4, r4, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 22


 1198 0052 082C     		cmp	r4, #8
 1199 0054 DFD1     		bne	.L237
 1200              	.L244:
 1201 0056 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1202              	.L231:
 1203 005a 0AEB8403 		add	r3, r10, r4, lsl #2
 1204 005e 0134     		adds	r4, r4, #1
 1205 0060 586C     		ldr	r0, [r3, #68]
 1206 0062 FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 1207 0066 082C     		cmp	r4, #8
 1208 0068 D5D1     		bne	.L237
 1209 006a F4E7     		b	.L244
 1210              		.size	_ZN4Heat12SwitchOffAllEb, .-_ZN4Heat12SwitchOffAllEb
 1211              		.section	.text._ZN4Heat7StandbyEaPK4Tool,"ax",%progbits
 1212              		.align	1
 1213              		.p2align 2,,3
 1214              		.global	_ZN4Heat7StandbyEaPK4Tool
 1215              		.syntax unified
 1216              		.thumb
 1217              		.thumb_func
 1218              		.fpu fpv4-sp-d16
 1219              		.type	_ZN4Heat7StandbyEaPK4Tool, %function
 1220              	_ZN4Heat7StandbyEaPK4Tool:
 1221              		@ args = 0, pretend = 0, frame = 0
 1222              		@ frame_needed = 0, uses_anonymous_args = 0
 1223 0000 38B5     		push	{r3, r4, r5, lr}
 1224 0002 CBB2     		uxtb	r3, r1
 1225 0004 072B     		cmp	r3, #7
 1226 0006 00D9     		bls	.L248
 1227 0008 38BD     		pop	{r3, r4, r5, pc}
 1228              	.L248:
 1229 000a 00EB8104 		add	r4, r0, r1, lsl #2
 1230 000e 1546     		mov	r5, r2
 1231 0010 606C     		ldr	r0, [r4, #68]
 1232 0012 FFF7FEFF 		bl	_ZN3PID7StandbyEv
 1233 0016 6566     		str	r5, [r4, #100]
 1234 0018 38BD     		pop	{r3, r4, r5, pc}
 1235              		.size	_ZN4Heat7StandbyEaPK4Tool, .-_ZN4Heat7StandbyEaPK4Tool
 1236              		.section	.text._ZN4Heat10ResetFaultEa,"ax",%progbits
 1237              		.align	1
 1238              		.p2align 2,,3
 1239              		.global	_ZN4Heat10ResetFaultEa
 1240              		.syntax unified
 1241              		.thumb
 1242              		.thumb_func
 1243              		.fpu fpv4-sp-d16
 1244              		.type	_ZN4Heat10ResetFaultEa, %function
 1245              	_ZN4Heat10ResetFaultEa:
 1246              		@ args = 0, pretend = 0, frame = 0
 1247              		@ frame_needed = 0, uses_anonymous_args = 0
 1248              		@ link register save eliminated.
 1249 0000 CBB2     		uxtb	r3, r1
 1250 0002 072B     		cmp	r3, #7
 1251 0004 00D9     		bls	.L251
 1252 0006 7047     		bx	lr
 1253              	.L251:
 1254 0008 00EB8101 		add	r1, r0, r1, lsl #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 23


 1255 000c 486C     		ldr	r0, [r1, #68]
 1256 000e FFF7FEBF 		b	_ZN3PID10ResetFaultEv
 1257              		.size	_ZN4Heat10ResetFaultEa, .-_ZN4Heat10ResetFaultEa
 1258 0012 00BF     		.section	.text._ZNK4Heat13GetAveragePWMEj,"ax",%progbits
 1259              		.align	1
 1260              		.p2align 2,,3
 1261              		.global	_ZNK4Heat13GetAveragePWMEj
 1262              		.syntax unified
 1263              		.thumb
 1264              		.thumb_func
 1265              		.fpu fpv4-sp-d16
 1266              		.type	_ZNK4Heat13GetAveragePWMEj, %function
 1267              	_ZNK4Heat13GetAveragePWMEj:
 1268              		@ args = 0, pretend = 0, frame = 0
 1269              		@ frame_needed = 0, uses_anonymous_args = 0
 1270              		@ link register save eliminated.
 1271 0000 00EB8101 		add	r1, r0, r1, lsl #2
 1272 0004 486C     		ldr	r0, [r1, #68]
 1273 0006 FFF7FEBF 		b	_ZNK3PID13GetAveragePWMEv
 1274              		.size	_ZNK4Heat13GetAveragePWMEj, .-_ZNK4Heat13GetAveragePWMEj
 1275 000a 00BF     		.section	.text._ZNK4Heat17GetLastSampleTimeEj,"ax",%progbits
 1276              		.align	1
 1277              		.p2align 2,,3
 1278              		.global	_ZNK4Heat17GetLastSampleTimeEj
 1279              		.syntax unified
 1280              		.thumb
 1281              		.thumb_func
 1282              		.fpu fpv4-sp-d16
 1283              		.type	_ZNK4Heat17GetLastSampleTimeEj, %function
 1284              	_ZNK4Heat17GetLastSampleTimeEj:
 1285              		@ args = 0, pretend = 0, frame = 0
 1286              		@ frame_needed = 0, uses_anonymous_args = 0
 1287              		@ link register save eliminated.
 1288 0000 00EB8101 		add	r1, r0, r1, lsl #2
 1289 0004 4B6C     		ldr	r3, [r1, #68]
 1290 0006 586F     		ldr	r0, [r3, #116]
 1291 0008 7047     		bx	lr
 1292              		.size	_ZNK4Heat17GetLastSampleTimeEj, .-_ZNK4Heat17GetLastSampleTimeEj
 1293 000a 00BF     		.section	.text._ZNK4Heat20IsBedOrChamberHeaterEa,"ax",%progbits
 1294              		.align	1
 1295              		.p2align 2,,3
 1296              		.global	_ZNK4Heat20IsBedOrChamberHeaterEa
 1297              		.syntax unified
 1298              		.thumb
 1299              		.thumb_func
 1300              		.fpu fpv4-sp-d16
 1301              		.type	_ZNK4Heat20IsBedOrChamberHeaterEa, %function
 1302              	_ZNK4Heat20IsBedOrChamberHeaterEa:
 1303              		@ args = 0, pretend = 0, frame = 0
 1304              		@ frame_needed = 0, uses_anonymous_args = 0
 1305              		@ link register save eliminated.
 1306 0000 30B4     		push	{r4, r5}
 1307 0002 90F9D940 		ldrsb	r4, [r0, #217]
 1308 0006 8C42     		cmp	r4, r1
 1309 0008 1BD0     		beq	.L264
 1310 000a 00F1D903 		add	r3, r0, #217
 1311 000e 00F1DD02 		add	r2, r0, #221
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 24


 1312 0012 00F1DC05 		add	r5, r0, #220
 1313 0016 03E0     		b	.L256
 1314              	.L266:
 1315 0018 13F9014F 		ldrsb	r4, [r3, #1]!
 1316 001c 8C42     		cmp	r4, r1
 1317 001e 10D0     		beq	.L264
 1318              	.L256:
 1319 0020 9D42     		cmp	r5, r3
 1320 0022 F9D1     		bne	.L266
 1321 0024 90F9DD30 		ldrsb	r3, [r0, #221]
 1322 0028 8B42     		cmp	r3, r1
 1323 002a 0AD0     		beq	.L264
 1324 002c DE30     		adds	r0, r0, #222
 1325 002e 03E0     		b	.L260
 1326              	.L259:
 1327 0030 12F9013F 		ldrsb	r3, [r2, #1]!
 1328 0034 8B42     		cmp	r3, r1
 1329 0036 04D0     		beq	.L264
 1330              	.L260:
 1331 0038 9042     		cmp	r0, r2
 1332 003a F9D1     		bne	.L259
 1333 003c 0020     		movs	r0, #0
 1334 003e 30BC     		pop	{r4, r5}
 1335 0040 7047     		bx	lr
 1336              	.L264:
 1337 0042 0120     		movs	r0, #1
 1338 0044 30BC     		pop	{r4, r5}
 1339 0046 7047     		bx	lr
 1340              		.size	_ZNK4Heat20IsBedOrChamberHeaterEa, .-_ZNK4Heat20IsBedOrChamberHeaterEa
 1341              		.section	.text._ZN4Heat13StartAutoTuneEjffRK9StringRef,"ax",%progbits
 1342              		.align	1
 1343              		.p2align 2,,3
 1344              		.global	_ZN4Heat13StartAutoTuneEjffRK9StringRef
 1345              		.syntax unified
 1346              		.thumb
 1347              		.thumb_func
 1348              		.fpu fpv4-sp-d16
 1349              		.type	_ZN4Heat13StartAutoTuneEjffRK9StringRef, %function
 1350              	_ZN4Heat13StartAutoTuneEjffRK9StringRef:
 1351              		@ args = 0, pretend = 0, frame = 0
 1352              		@ frame_needed = 0, uses_anonymous_args = 0
 1353              		@ link register save eliminated.
 1354 0000 10B4     		push	{r4}
 1355 0002 90F9DF30 		ldrsb	r3, [r0, #223]
 1356 0006 1446     		mov	r4, r2
 1357 0008 5A1C     		adds	r2, r3, #1
 1358 000a 06D0     		beq	.L272
 1359 000c 0A46     		mov	r2, r1
 1360 000e 2046     		mov	r0, r4
 1361 0010 0749     		ldr	r1, .L273
 1362 0012 5DF8044B 		ldr	r4, [sp], #4
 1363 0016 FFF7FEBF 		b	_ZNK9StringRef6printfEPKcz
 1364              	.L272:
 1365 001a 00EB8103 		add	r3, r0, r1, lsl #2
 1366 001e 80F8DF10 		strb	r1, [r0, #223]
 1367 0022 586C     		ldr	r0, [r3, #68]
 1368 0024 2146     		mov	r1, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 25


 1369 0026 5DF8044B 		ldr	r4, [sp], #4
 1370 002a FFF7FEBF 		b	_ZN3PID13StartAutoTuneEffRK9StringRef
 1371              	.L274:
 1372 002e 00BF     		.align	2
 1373              	.L273:
 1374 0030 00000000 		.word	.LC7
 1375              		.size	_ZN4Heat13StartAutoTuneEjffRK9StringRef, .-_ZN4Heat13StartAutoTuneEjffRK9StringRef
 1376              		.section	.text._ZNK4Heat8IsTuningEj,"ax",%progbits
 1377              		.align	1
 1378              		.p2align 2,,3
 1379              		.global	_ZNK4Heat8IsTuningEj
 1380              		.syntax unified
 1381              		.thumb
 1382              		.thumb_func
 1383              		.fpu fpv4-sp-d16
 1384              		.type	_ZNK4Heat8IsTuningEj, %function
 1385              	_ZNK4Heat8IsTuningEj:
 1386              		@ args = 0, pretend = 0, frame = 0
 1387              		@ frame_needed = 0, uses_anonymous_args = 0
 1388              		@ link register save eliminated.
 1389 0000 00EB8101 		add	r1, r0, r1, lsl #2
 1390 0004 4B6C     		ldr	r3, [r1, #68]
 1391 0006 93F87C00 		ldrb	r0, [r3, #124]	@ zero_extendqisi2
 1392 000a 0528     		cmp	r0, #5
 1393 000c 94BF     		ite	ls
 1394 000e 0020     		movls	r0, #0
 1395 0010 0120     		movhi	r0, #1
 1396 0012 7047     		bx	lr
 1397              		.size	_ZNK4Heat8IsTuningEj, .-_ZNK4Heat8IsTuningEj
 1398              		.section	.text._ZNK4Heat17GetAutoTuneStatusERK9StringRef,"ax",%progbits
 1399              		.align	1
 1400              		.p2align 2,,3
 1401              		.global	_ZNK4Heat17GetAutoTuneStatusERK9StringRef
 1402              		.syntax unified
 1403              		.thumb
 1404              		.thumb_func
 1405              		.fpu fpv4-sp-d16
 1406              		.type	_ZNK4Heat17GetAutoTuneStatusERK9StringRef, %function
 1407              	_ZNK4Heat17GetAutoTuneStatusERK9StringRef:
 1408              		@ args = 0, pretend = 0, frame = 0
 1409              		@ frame_needed = 0, uses_anonymous_args = 0
 1410              		@ link register save eliminated.
 1411 0000 90F9DF30 		ldrsb	r3, [r0, #223]
 1412 0004 5A1C     		adds	r2, r3, #1
 1413 0006 04D0     		beq	.L279
 1414              	.L277:
 1415 0008 00EB8303 		add	r3, r0, r3, lsl #2
 1416 000c 586C     		ldr	r0, [r3, #68]
 1417 000e FFF7FEBF 		b	_ZN3PID17GetAutoTuneStatusERK9StringRef
 1418              	.L279:
 1419 0012 90F9E030 		ldrsb	r3, [r0, #224]
 1420 0016 5A1C     		adds	r2, r3, #1
 1421 0018 F6D1     		bne	.L277
 1422 001a 0846     		mov	r0, r1
 1423 001c 0149     		ldr	r1, .L280
 1424 001e FFF7FEBF 		b	_ZNK9StringRef4copyEPKc
 1425              	.L281:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 26


 1426 0022 00BF     		.align	2
 1427              	.L280:
 1428 0024 00000000 		.word	.LC8
 1429              		.size	_ZNK4Heat17GetAutoTuneStatusERK9StringRef, .-_ZNK4Heat17GetAutoTuneStatusERK9StringRef
 1430              		.section	.text._ZNK4Heat26GetHighestTemperatureLimitEv,"ax",%progbits
 1431              		.align	1
 1432              		.p2align 2,,3
 1433              		.global	_ZNK4Heat26GetHighestTemperatureLimitEv
 1434              		.syntax unified
 1435              		.thumb
 1436              		.thumb_func
 1437              		.fpu fpv4-sp-d16
 1438              		.type	_ZNK4Heat26GetHighestTemperatureLimitEv, %function
 1439              	_ZNK4Heat26GetHighestTemperatureLimitEv:
 1440              		@ args = 0, pretend = 0, frame = 0
 1441              		@ frame_needed = 0, uses_anonymous_args = 0
 1442              		@ link register save eliminated.
 1443 0000 0430     		adds	r0, r0, #4
 1444 0002 9FED0C0A 		vldr.32	s0, .L290
 1445 0006 00F13C01 		add	r1, r0, #60
 1446 000a 00E0     		b	.L285
 1447              	.L289:
 1448 000c 0430     		adds	r0, r0, #4
 1449              	.L285:
 1450 000e 0368     		ldr	r3, [r0]
 1451 0010 93F90820 		ldrsb	r2, [r3, #8]
 1452 0014 002A     		cmp	r2, #0
 1453 0016 0ADB     		blt	.L283
 1454 0018 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 1455 001a 42B9     		cbnz	r2, .L283
 1456 001c D3ED017A 		vldr.32	s15, [r3, #4]
 1457 0020 F4EE407A 		vcmp.f32	s15, s0
 1458 0024 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1459 0028 C8BF     		it	gt
 1460 002a B0EE670A 		vmovgt.f32	s0, s15
 1461              	.L283:
 1462 002e 8842     		cmp	r0, r1
 1463 0030 ECD1     		bne	.L289
 1464 0032 7047     		bx	lr
 1465              	.L291:
 1466              		.align	2
 1467              	.L290:
 1468 0034 339388C3 		.word	-1014459597
 1469              		.size	_ZNK4Heat26GetHighestTemperatureLimitEv, .-_ZNK4Heat26GetHighestTemperatureLimitEv
 1470              		.section	.text._ZN4Heat20SetM301PidParametersEjRK17M301PidParameters,"ax",%progbits
 1471              		.align	1
 1472              		.p2align 2,,3
 1473              		.global	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters
 1474              		.syntax unified
 1475              		.thumb
 1476              		.thumb_func
 1477              		.fpu fpv4-sp-d16
 1478              		.type	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters, %function
 1479              	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters:
 1480              		@ args = 0, pretend = 0, frame = 0
 1481              		@ frame_needed = 0, uses_anonymous_args = 0
 1482              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 27


 1483 0000 00EB8100 		add	r0, r0, r1, lsl #2
 1484 0004 1146     		mov	r1, r2
 1485 0006 406C     		ldr	r0, [r0, #68]
 1486 0008 3030     		adds	r0, r0, #48
 1487 000a FFF7FEBF 		b	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters
 1488              		.size	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters, .-_ZN4Heat20SetM301PidParametersEjRK1
 1489 000e 00BF     		.section	.text._ZNK4Heat20WriteModelParametersEP9FileStore,"ax",%progbits
 1490              		.align	1
 1491              		.p2align 2,,3
 1492              		.global	_ZNK4Heat20WriteModelParametersEP9FileStore
 1493              		.syntax unified
 1494              		.thumb
 1495              		.thumb_func
 1496              		.fpu fpv4-sp-d16
 1497              		.type	_ZNK4Heat20WriteModelParametersEP9FileStore, %function
 1498              	_ZNK4Heat20WriteModelParametersEP9FileStore:
 1499              		@ args = 0, pretend = 0, frame = 0
 1500              		@ frame_needed = 0, uses_anonymous_args = 0
 1501 0000 70B5     		push	{r4, r5, r6, lr}
 1502 0002 0E46     		mov	r6, r1
 1503 0004 0546     		mov	r5, r0
 1504 0006 0D49     		ldr	r1, .L302
 1505 0008 3046     		mov	r0, r6
 1506 000a 4435     		adds	r5, r5, #68
 1507 000c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1508 0010 0024     		movs	r4, #0
 1509 0012 02E0     		b	.L295
 1510              	.L294:
 1511 0014 0134     		adds	r4, r4, #1
 1512 0016 082C     		cmp	r4, #8
 1513 0018 0ED0     		beq	.L301
 1514              	.L295:
 1515 001a 55F8043B 		ldr	r3, [r5], #4
 1516 001e 93F84620 		ldrb	r2, [r3, #70]	@ zero_extendqisi2
 1517 0022 002A     		cmp	r2, #0
 1518 0024 F6D0     		beq	.L294
 1519 0026 2246     		mov	r2, r4
 1520 0028 03F13000 		add	r0, r3, #48
 1521 002c 3146     		mov	r1, r6
 1522 002e 0134     		adds	r4, r4, #1
 1523 0030 FFF7FEFF 		bl	_ZNK5FopDt15WriteParametersEP9FileStorej
 1524 0034 082C     		cmp	r4, #8
 1525 0036 F0D1     		bne	.L295
 1526              	.L301:
 1527 0038 70BD     		pop	{r4, r5, r6, pc}
 1528              	.L303:
 1529 003a 00BF     		.align	2
 1530              	.L302:
 1531 003c 00000000 		.word	.LC9
 1532              		.size	_ZNK4Heat20WriteModelParametersEP9FileStore, .-_ZNK4Heat20WriteModelParametersEP9FileStore
 1533              		.section	.text._ZNK4Heat16GetHeaterChannelEj,"ax",%progbits
 1534              		.align	1
 1535              		.p2align 2,,3
 1536              		.global	_ZNK4Heat16GetHeaterChannelEj
 1537              		.syntax unified
 1538              		.thumb
 1539              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 28


 1540              		.fpu fpv4-sp-d16
 1541              		.type	_ZNK4Heat16GetHeaterChannelEj, %function
 1542              	_ZNK4Heat16GetHeaterChannelEj:
 1543              		@ args = 0, pretend = 0, frame = 0
 1544              		@ frame_needed = 0, uses_anonymous_args = 0
 1545              		@ link register save eliminated.
 1546 0000 0729     		cmp	r1, #7
 1547 0002 06D8     		bhi	.L305
 1548 0004 00EB8100 		add	r0, r0, r1, lsl #2
 1549 0008 D0F88430 		ldr	r3, [r0, #132]
 1550              	.L306:
 1551 000c 53B1     		cbz	r3, .L309
 1552 000e 5868     		ldr	r0, [r3, #4]
 1553 0010 7047     		bx	lr
 1554              	.L305:
 1555 0012 A1F16403 		sub	r3, r1, #100
 1556 0016 092B     		cmp	r3, #9
 1557 0018 04D8     		bhi	.L309
 1558 001a 00EB8100 		add	r0, r0, r1, lsl #2
 1559 001e 50F8EC3C 		ldr	r3, [r0, #-236]
 1560 0022 F3E7     		b	.L306
 1561              	.L309:
 1562 0024 4FF0FF30 		mov	r0, #-1
 1563 0028 7047     		bx	lr
 1564              		.size	_ZNK4Heat16GetHeaterChannelEj, .-_ZNK4Heat16GetHeaterChannelEj
 1565 002a 00BF     		.section	.text._ZN4Heat16SetHeaterChannelEji,"ax",%progbits
 1566              		.align	1
 1567              		.p2align 2,,3
 1568              		.global	_ZN4Heat16SetHeaterChannelEji
 1569              		.syntax unified
 1570              		.thumb
 1571              		.thumb_func
 1572              		.fpu fpv4-sp-d16
 1573              		.type	_ZN4Heat16SetHeaterChannelEji, %function
 1574              	_ZN4Heat16SetHeaterChannelEji:
 1575              		@ args = 0, pretend = 0, frame = 0
 1576              		@ frame_needed = 0, uses_anonymous_args = 0
 1577 0000 0729     		cmp	r1, #7
 1578 0002 38B5     		push	{r3, r4, r5, lr}
 1579 0004 0FD8     		bhi	.L311
 1580 0006 2131     		adds	r1, r1, #33
 1581 0008 00EB8104 		add	r4, r0, r1, lsl #2
 1582 000c 1046     		mov	r0, r2
 1583 000e FFF7FEFF 		bl	_ZN17TemperatureSensor6CreateEj
 1584 0012 0546     		mov	r5, r0
 1585 0014 A0B1     		cbz	r0, .L315
 1586              	.L324:
 1587 0016 2068     		ldr	r0, [r4]
 1588 0018 10B1     		cbz	r0, .L316
 1589 001a 0368     		ldr	r3, [r0]
 1590 001c 1B69     		ldr	r3, [r3, #16]
 1591 001e 9847     		blx	r3
 1592              	.L316:
 1593 0020 2560     		str	r5, [r4]
 1594 0022 0020     		movs	r0, #0
 1595 0024 38BD     		pop	{r3, r4, r5, pc}
 1596              	.L311:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 29


 1597 0026 A1F16403 		sub	r3, r1, #100
 1598 002a 092B     		cmp	r3, #9
 1599 002c 08D8     		bhi	.L315
 1600 002e 3B39     		subs	r1, r1, #59
 1601 0030 00EB8104 		add	r4, r0, r1, lsl #2
 1602 0034 1046     		mov	r0, r2
 1603 0036 FFF7FEFF 		bl	_ZN17TemperatureSensor6CreateEj
 1604 003a 0546     		mov	r5, r0
 1605 003c 0028     		cmp	r0, #0
 1606 003e EAD1     		bne	.L324
 1607              	.L315:
 1608 0040 0120     		movs	r0, #1
 1609 0042 38BD     		pop	{r3, r4, r5, pc}
 1610              		.size	_ZN4Heat16SetHeaterChannelEji, .-_ZN4Heat16SetHeaterChannelEji
 1611              		.section	.text._ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef,"ax",%progbits
 1612              		.align	1
 1613              		.p2align 2,,3
 1614              		.global	_ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef
 1615              		.syntax unified
 1616              		.thumb
 1617              		.thumb_func
 1618              		.fpu fpv4-sp-d16
 1619              		.type	_ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef, %function
 1620              	_ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef:
 1621              		@ args = 4, pretend = 0, frame = 0
 1622              		@ frame_needed = 0, uses_anonymous_args = 0
 1623 0000 70B5     		push	{r4, r5, r6, lr}
 1624 0002 072A     		cmp	r2, #7
 1625 0004 049D     		ldr	r5, [sp, #16]
 1626 0006 0BD8     		bhi	.L326
 1627 0008 00EB8204 		add	r4, r0, r2, lsl #2
 1628 000c D4F88400 		ldr	r0, [r4, #132]
 1629 0010 80B1     		cbz	r0, .L328
 1630              	.L333:
 1631 0012 0468     		ldr	r4, [r0]
 1632 0014 0495     		str	r5, [sp, #16]
 1633 0016 2468     		ldr	r4, [r4]
 1634 0018 A446     		mov	ip, r4
 1635 001a BDE87040 		pop	{r4, r5, r6, lr}
 1636 001e 6047     		bx	ip
 1637              	.L326:
 1638 0020 A2F16404 		sub	r4, r2, #100
 1639 0024 092C     		cmp	r4, #9
 1640 0026 05D8     		bhi	.L328
 1641 0028 00EB8204 		add	r4, r0, r2, lsl #2
 1642 002c 54F8EC0C 		ldr	r0, [r4, #-236]
 1643 0030 0028     		cmp	r0, #0
 1644 0032 EED1     		bne	.L333
 1645              	.L328:
 1646 0034 2846     		mov	r0, r5
 1647 0036 0249     		ldr	r1, .L334
 1648 0038 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1649 003c 0220     		movs	r0, #2
 1650 003e 70BD     		pop	{r4, r5, r6, pc}
 1651              	.L335:
 1652              		.align	2
 1653              	.L334:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 30


 1654 0040 00000000 		.word	.LC10
 1655              		.size	_ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef, .-_ZN4Heat21ConfigureHeaterSen
 1656              		.section	.text._ZN4Heat9GetSensorEj,"ax",%progbits
 1657              		.align	1
 1658              		.p2align 2,,3
 1659              		.global	_ZN4Heat9GetSensorEj
 1660              		.syntax unified
 1661              		.thumb
 1662              		.thumb_func
 1663              		.fpu fpv4-sp-d16
 1664              		.type	_ZN4Heat9GetSensorEj, %function
 1665              	_ZN4Heat9GetSensorEj:
 1666              		@ args = 0, pretend = 0, frame = 0
 1667              		@ frame_needed = 0, uses_anonymous_args = 0
 1668              		@ link register save eliminated.
 1669 0000 0729     		cmp	r1, #7
 1670 0002 08D9     		bls	.L340
 1671 0004 A1F16403 		sub	r3, r1, #100
 1672 0008 092B     		cmp	r3, #9
 1673 000a 9ABF     		itte	ls
 1674 000c 3B39     		subls	r1, r1, #59
 1675 000e 00EB8100 		addls	r0, r0, r1, lsl #2
 1676 0012 0020     		movhi	r0, #0
 1677 0014 7047     		bx	lr
 1678              	.L340:
 1679 0016 2131     		adds	r1, r1, #33
 1680 0018 00EB8100 		add	r0, r0, r1, lsl #2
 1681 001c 7047     		bx	lr
 1682              		.size	_ZN4Heat9GetSensorEj, .-_ZN4Heat9GetSensorEj
 1683 001e 00BF     		.section	.text._ZNK4Heat9GetSensorEj,"ax",%progbits
 1684              		.align	1
 1685              		.p2align 2,,3
 1686              		.global	_ZNK4Heat9GetSensorEj
 1687              		.syntax unified
 1688              		.thumb
 1689              		.thumb_func
 1690              		.fpu fpv4-sp-d16
 1691              		.type	_ZNK4Heat9GetSensorEj, %function
 1692              	_ZNK4Heat9GetSensorEj:
 1693              		@ args = 0, pretend = 0, frame = 0
 1694              		@ frame_needed = 0, uses_anonymous_args = 0
 1695              		@ link register save eliminated.
 1696 0000 FFF7FEBF 		b	_ZN4Heat9GetSensorEj
 1697              		.size	_ZNK4Heat9GetSensorEj, .-_ZNK4Heat9GetSensorEj
 1698              		.section	.text._ZNK4Heat13GetHeaterNameEj,"ax",%progbits
 1699              		.align	1
 1700              		.p2align 2,,3
 1701              		.global	_ZNK4Heat13GetHeaterNameEj
 1702              		.syntax unified
 1703              		.thumb
 1704              		.thumb_func
 1705              		.fpu fpv4-sp-d16
 1706              		.type	_ZNK4Heat13GetHeaterNameEj, %function
 1707              	_ZNK4Heat13GetHeaterNameEj:
 1708              		@ args = 0, pretend = 0, frame = 0
 1709              		@ frame_needed = 0, uses_anonymous_args = 0
 1710              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 31


 1711 0000 0729     		cmp	r1, #7
 1712 0002 06D8     		bhi	.L343
 1713 0004 00EB8100 		add	r0, r0, r1, lsl #2
 1714 0008 D0F88400 		ldr	r0, [r0, #132]
 1715              	.L344:
 1716 000c 30B1     		cbz	r0, .L342
 1717 000e C068     		ldr	r0, [r0, #12]
 1718 0010 7047     		bx	lr
 1719              	.L343:
 1720 0012 A1F16403 		sub	r3, r1, #100
 1721 0016 092B     		cmp	r3, #9
 1722 0018 01D9     		bls	.L348
 1723 001a 0020     		movs	r0, #0
 1724              	.L342:
 1725 001c 7047     		bx	lr
 1726              	.L348:
 1727 001e 00EB8100 		add	r0, r0, r1, lsl #2
 1728 0022 50F8EC0C 		ldr	r0, [r0, #-236]
 1729 0026 F1E7     		b	.L344
 1730              		.size	_ZNK4Heat13GetHeaterNameEj, .-_ZNK4Heat13GetHeaterNameEj
 1731              		.section	.text._ZNK4Heat22AccessHeaterProtectionEj,"ax",%progbits
 1732              		.align	1
 1733              		.p2align 2,,3
 1734              		.global	_ZNK4Heat22AccessHeaterProtectionEj
 1735              		.syntax unified
 1736              		.thumb
 1737              		.thumb_func
 1738              		.fpu fpv4-sp-d16
 1739              		.type	_ZNK4Heat22AccessHeaterProtectionEj, %function
 1740              	_ZNK4Heat22AccessHeaterProtectionEj:
 1741              		@ args = 0, pretend = 0, frame = 0
 1742              		@ frame_needed = 0, uses_anonymous_args = 0
 1743              		@ link register save eliminated.
 1744 0000 A1F16403 		sub	r3, r1, #100
 1745 0004 072B     		cmp	r3, #7
 1746 0006 98BF     		it	ls
 1747 0008 5C39     		subls	r1, r1, #92
 1748 000a 00EB8100 		add	r0, r0, r1, lsl #2
 1749 000e 4068     		ldr	r0, [r0, #4]
 1750 0010 7047     		bx	lr
 1751              		.size	_ZNK4Heat22AccessHeaterProtectionEj, .-_ZNK4Heat22AccessHeaterProtectionEj
 1752 0012 00BF     		.section	.text._ZN4Heat22UpdateHeaterProtectionEv,"ax",%progbits
 1753              		.align	1
 1754              		.p2align 2,,3
 1755              		.global	_ZN4Heat22UpdateHeaterProtectionEv
 1756              		.syntax unified
 1757              		.thumb
 1758              		.thumb_func
 1759              		.fpu fpv4-sp-d16
 1760              		.type	_ZN4Heat22UpdateHeaterProtectionEv, %function
 1761              	_ZN4Heat22UpdateHeaterProtectionEv:
 1762              		@ args = 0, pretend = 0, frame = 0
 1763              		@ frame_needed = 0, uses_anonymous_args = 0
 1764 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1765 0004 0746     		mov	r7, r0
 1766 0006 00F14408 		add	r8, r0, #68
 1767 000a 00F14005 		add	r5, r0, #64
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 32


 1768 000e 0024     		movs	r4, #0
 1769              	.L357:
 1770 0010 0026     		movs	r6, #0
 1771 0012 3146     		mov	r1, r6
 1772 0014 3B46     		mov	r3, r7
 1773 0016 01E0     		b	.L356
 1774              	.L353:
 1775 0018 AB42     		cmp	r3, r5
 1776 001a 0BD0     		beq	.L361
 1777              	.L356:
 1778 001c 53F8042F 		ldr	r2, [r3, #4]!
 1779 0020 92F90800 		ldrsb	r0, [r2, #8]
 1780 0024 A042     		cmp	r0, r4
 1781 0026 F7D1     		bne	.L353
 1782 0028 69B1     		cbz	r1, .L362
 1783 002a 7EB1     		cbz	r6, .L363
 1784 002c AB42     		cmp	r3, r5
 1785 002e 3260     		str	r2, [r6]
 1786 0030 1646     		mov	r6, r2
 1787 0032 F3D1     		bne	.L356
 1788              	.L361:
 1789 0034 0134     		adds	r4, r4, #1
 1790 0036 58F8040B 		ldr	r0, [r8], #4
 1791 003a FFF7FEFF 		bl	_ZN3PID19SetHeaterProtectionEP16HeaterProtection
 1792 003e 082C     		cmp	r4, #8
 1793 0040 E6D1     		bne	.L357
 1794 0042 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1795              	.L362:
 1796 0046 1160     		str	r1, [r2]
 1797 0048 1146     		mov	r1, r2
 1798 004a E5E7     		b	.L353
 1799              	.L363:
 1800 004c 0A60     		str	r2, [r1]
 1801 004e 1646     		mov	r6, r2
 1802 0050 E2E7     		b	.L353
 1803              		.size	_ZN4Heat22UpdateHeaterProtectionEv, .-_ZN4Heat22UpdateHeaterProtectionEv
 1804 0052 00BF     		.section	.text._ZN4Heat11CheckHeaterEj,"ax",%progbits
 1805              		.align	1
 1806              		.p2align 2,,3
 1807              		.global	_ZN4Heat11CheckHeaterEj
 1808              		.syntax unified
 1809              		.thumb
 1810              		.thumb_func
 1811              		.fpu fpv4-sp-d16
 1812              		.type	_ZN4Heat11CheckHeaterEj, %function
 1813              	_ZN4Heat11CheckHeaterEj:
 1814              		@ args = 0, pretend = 0, frame = 0
 1815              		@ frame_needed = 0, uses_anonymous_args = 0
 1816              		@ link register save eliminated.
 1817 0000 00EB8101 		add	r1, r0, r1, lsl #2
 1818 0004 4B6C     		ldr	r3, [r1, #68]
 1819 0006 93F87C00 		ldrb	r0, [r3, #124]	@ zero_extendqisi2
 1820 000a 00B9     		cbnz	r0, .L366
 1821 000c 7047     		bx	lr
 1822              	.L366:
 1823 000e 1846     		mov	r0, r3
 1824 0010 FFF7FEBF 		b	_ZNK3PID15CheckProtectionEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 33


 1825              		.size	_ZN4Heat11CheckHeaterEj, .-_ZN4Heat11CheckHeaterEj
 1826              		.section	.text._ZN4Heat14GetTemperatureEjR16TemperatureError,"ax",%progbits
 1827              		.align	1
 1828              		.p2align 2,,3
 1829              		.global	_ZN4Heat14GetTemperatureEjR16TemperatureError
 1830              		.syntax unified
 1831              		.thumb
 1832              		.thumb_func
 1833              		.fpu fpv4-sp-d16
 1834              		.type	_ZN4Heat14GetTemperatureEjR16TemperatureError, %function
 1835              	_ZN4Heat14GetTemperatureEjR16TemperatureError:
 1836              		@ args = 0, pretend = 0, frame = 8
 1837              		@ frame_needed = 0, uses_anonymous_args = 0
 1838 0000 0729     		cmp	r1, #7
 1839 0002 11D8     		bhi	.L368
 1840 0004 00EB8100 		add	r0, r0, r1, lsl #2
 1841 0008 D0F88400 		ldr	r0, [r0, #132]
 1842 000c B0B1     		cbz	r0, .L380
 1843              	.L376:
 1844 000e 10B5     		push	{r4, lr}
 1845 0010 0368     		ldr	r3, [r0]
 1846 0012 82B0     		sub	sp, sp, #8
 1847 0014 9B68     		ldr	r3, [r3, #8]
 1848 0016 01A9     		add	r1, sp, #4
 1849 0018 1446     		mov	r4, r2
 1850 001a 9847     		blx	r3
 1851 001c 2070     		strb	r0, [r4]
 1852 001e 90B9     		cbnz	r0, .L375
 1853 0020 9DED010A 		vldr.32	s0, [sp, #4]
 1854 0024 02B0     		add	sp, sp, #8
 1855              		@ sp needed
 1856 0026 10BD     		pop	{r4, pc}
 1857              	.L368:
 1858 0028 A1F16403 		sub	r3, r1, #100
 1859 002c 092B     		cmp	r3, #9
 1860 002e 0ED8     		bhi	.L370
 1861 0030 00EB8100 		add	r0, r0, r1, lsl #2
 1862 0034 50F8EC0C 		ldr	r0, [r0, #-236]
 1863 0038 0028     		cmp	r0, #0
 1864 003a E8D1     		bne	.L376
 1865              	.L380:
 1866 003c 0A23     		movs	r3, #10
 1867 003e 1370     		strb	r3, [r2]
 1868 0040 9FED050A 		vldr.32	s0, .L381
 1869 0044 7047     		bx	lr
 1870              	.L375:
 1871 0046 9FED040A 		vldr.32	s0, .L381
 1872 004a 02B0     		add	sp, sp, #8
 1873              		@ sp needed
 1874 004c 10BD     		pop	{r4, pc}
 1875              	.L370:
 1876 004e 0C23     		movs	r3, #12
 1877 0050 1370     		strb	r3, [r2]
 1878 0052 9FED010A 		vldr.32	s0, .L381
 1879 0056 7047     		bx	lr
 1880              	.L382:
 1881              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 34


 1882              	.L381:
 1883 0058 0000FA44 		.word	1157234688
 1884              		.size	_ZN4Heat14GetTemperatureEjR16TemperatureError, .-_ZN4Heat14GetTemperatureEjR16TemperatureErr
 1885              		.section	.text._ZN4Heat14SuspendHeatersEb,"ax",%progbits
 1886              		.align	1
 1887              		.p2align 2,,3
 1888              		.global	_ZN4Heat14SuspendHeatersEb
 1889              		.syntax unified
 1890              		.thumb
 1891              		.thumb_func
 1892              		.fpu fpv4-sp-d16
 1893              		.type	_ZN4Heat14SuspendHeatersEb, %function
 1894              	_ZN4Heat14SuspendHeatersEb:
 1895              		@ args = 0, pretend = 0, frame = 0
 1896              		@ frame_needed = 0, uses_anonymous_args = 0
 1897 0000 70B5     		push	{r4, r5, r6, lr}
 1898 0002 0E46     		mov	r6, r1
 1899 0004 00F14404 		add	r4, r0, #68
 1900 0008 00F16405 		add	r5, r0, #100
 1901              	.L384:
 1902 000c 54F8040B 		ldr	r0, [r4], #4
 1903 0010 3146     		mov	r1, r6
 1904 0012 FFF7FEFF 		bl	_ZN3PID7SuspendEb
 1905 0016 A542     		cmp	r5, r4
 1906 0018 F8D1     		bne	.L384
 1907 001a 70BD     		pop	{r4, r5, r6, pc}
 1908              		.size	_ZN4Heat14SuspendHeatersEb, .-_ZN4Heat14SuspendHeatersEb
 1909              		.section	.text._ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore,"ax",%progbits
 1910              		.align	1
 1911              		.p2align 2,,3
 1912              		.global	_ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore
 1913              		.syntax unified
 1914              		.thumb
 1915              		.thumb_func
 1916              		.fpu fpv4-sp-d16
 1917              		.type	_ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore, %function
 1918              	_ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore:
 1919              		@ args = 0, pretend = 0, frame = 112
 1920              		@ frame_needed = 0, uses_anonymous_args = 0
 1921 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1922 0004 9EB0     		sub	sp, sp, #120
 1923 0006 1EAB     		add	r3, sp, #120
 1924 0008 0024     		movs	r4, #0
 1925 000a 03F8684D 		strb	r4, [r3, #-104]!
 1926 000e 32A7     		adr	r7, .L415
 1927 0010 D7E90067 		ldrd	r6, [r7]
 1928 0014 6522     		movs	r2, #101
 1929 0016 DFF8C880 		ldr	r8, .L415+8
 1930 001a 0293     		str	r3, [sp, #8]
 1931 001c 0546     		mov	r5, r0
 1932 001e 8946     		mov	r9, r1
 1933 0020 00F1D90A 		add	r10, r0, #217
 1934 0024 0392     		str	r2, [sp, #12]
 1935              	.L390:
 1936 0026 1AF9013B 		ldrsb	r3, [r10], #1
 1937 002a 002B     		cmp	r3, #0
 1938 002c 05EB8302 		add	r2, r5, r3, lsl #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 35


 1939 0030 13DB     		blt	.L388
 1940 0032 526C     		ldr	r2, [r2, #68]
 1941 0034 92F87E10 		ldrb	r1, [r2, #126]	@ zero_extendqisi2
 1942 0038 79B1     		cbz	r1, .L388
 1943 003a 92F87C10 		ldrb	r1, [r2, #124]	@ zero_extendqisi2
 1944 003e 0129     		cmp	r1, #1
 1945 0040 DBB2     		uxtb	r3, r3
 1946 0042 0AD0     		beq	.L388
 1947 0044 072B     		cmp	r3, #7
 1948 0046 39D9     		bls	.L413
 1949 0048 3046     		mov	r0, r6
 1950 004a 3946     		mov	r1, r7
 1951              	.L389:
 1952 004c CDE90001 		strd	r0, [sp]
 1953 0050 2246     		mov	r2, r4
 1954 0052 4146     		mov	r1, r8
 1955 0054 02A8     		add	r0, sp, #8
 1956 0056 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1957              	.L388:
 1958 005a 0134     		adds	r4, r4, #1
 1959 005c 042C     		cmp	r4, #4
 1960 005e E2D1     		bne	.L390
 1961 0060 1DA7     		adr	r7, .L415
 1962 0062 D7E90067 		ldrd	r6, [r7]
 1963 0066 DFF87CA0 		ldr	r10, .L415+12
 1964 006a 05F1DD08 		add	r8, r5, #221
 1965 006e 0024     		movs	r4, #0
 1966              	.L393:
 1967 0070 18F9013B 		ldrsb	r3, [r8], #1
 1968 0074 002B     		cmp	r3, #0
 1969 0076 05EB8302 		add	r2, r5, r3, lsl #2
 1970 007a 14DB     		blt	.L391
 1971 007c 526C     		ldr	r2, [r2, #68]
 1972 007e 92F87E10 		ldrb	r1, [r2, #126]	@ zero_extendqisi2
 1973 0082 81B1     		cbz	r1, .L391
 1974 0084 92F87C10 		ldrb	r1, [r2, #124]	@ zero_extendqisi2
 1975 0088 0129     		cmp	r1, #1
 1976 008a DBB2     		uxtb	r3, r3
 1977 008c 0BD0     		beq	.L391
 1978 008e 072B     		cmp	r3, #7
 1979 0090 1FD8     		bhi	.L396
 1980 0092 9068     		ldr	r0, [r2, #8]	@ float
 1981 0094 FFF7FEFF 		bl	__aeabi_f2d
 1982              	.L392:
 1983 0098 CDE90001 		strd	r0, [sp]
 1984 009c 2246     		mov	r2, r4
 1985 009e 5146     		mov	r1, r10
 1986 00a0 02A8     		add	r0, sp, #8
 1987 00a2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1988              	.L391:
 1989 00a6 3CB1     		cbz	r4, .L397
 1990 00a8 02A8     		add	r0, sp, #8
 1991 00aa FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 1992 00ae 48B9     		cbnz	r0, .L414
 1993 00b0 2046     		mov	r0, r4
 1994 00b2 1EB0     		add	sp, sp, #120
 1995              		@ sp needed
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 36


 1996 00b4 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1997              	.L397:
 1998 00b8 0124     		movs	r4, #1
 1999 00ba D9E7     		b	.L393
 2000              	.L413:
 2001 00bc 9068     		ldr	r0, [r2, #8]	@ float
 2002 00be FFF7FEFF 		bl	__aeabi_f2d
 2003 00c2 C3E7     		b	.L389
 2004              	.L414:
 2005 00c4 4846     		mov	r0, r9
 2006 00c6 0299     		ldr	r1, [sp, #8]
 2007 00c8 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 2008 00cc 1EB0     		add	sp, sp, #120
 2009              		@ sp needed
 2010 00ce BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2011              	.L396:
 2012 00d2 3046     		mov	r0, r6
 2013 00d4 3946     		mov	r1, r7
 2014 00d6 DFE7     		b	.L392
 2015              	.L416:
 2016              		.align	3
 2017              	.L415:
 2018 00d8 00000060 		.word	1610612736
 2019 00dc 661271C0 		.word	-1066331546
 2020 00e0 00000000 		.word	.LC11
 2021 00e4 10000000 		.word	.LC12
 2022              		.size	_ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore, .-_ZNK4Heat30WriteBedAndChamberTempSe
 2023              		.section	.text.startup._GLOBAL__sub_I_HeaterTask,"ax",%progbits
 2024              		.align	1
 2025              		.p2align 2,,3
 2026              		.syntax unified
 2027              		.thumb
 2028              		.thumb_func
 2029              		.fpu fpv4-sp-d16
 2030              		.type	_GLOBAL__sub_I_HeaterTask, %function
 2031              	_GLOBAL__sub_I_HeaterTask:
 2032              		@ args = 0, pretend = 0, frame = 0
 2033              		@ frame_needed = 0, uses_anonymous_args = 0
 2034              		@ link register save eliminated.
 2035 0000 014B     		ldr	r3, .L418
 2036 0002 0022     		movs	r2, #0
 2037 0004 1A60     		str	r2, [r3]
 2038 0006 7047     		bx	lr
 2039              	.L419:
 2040              		.align	2
 2041              	.L418:
 2042 0008 00000000 		.word	.LANCHOR2
 2043              		.size	_GLOBAL__sub_I_HeaterTask, .-_GLOBAL__sub_I_HeaterTask
 2044              		.section	.init_array,"aw",%init_array
 2045              		.align	2
 2046 0000 00000000 		.word	_GLOBAL__sub_I_HeaterTask(target1)
 2047              		.section	.bss._ZL10heaterTask,"aw",%nobits
 2048              		.align	2
 2049              		.set	.LANCHOR2,. + 0
 2050              		.type	_ZL10heaterTask, %object
 2051              		.size	_ZL10heaterTask, 1696
 2052              	_ZL10heaterTask:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 37


 2053 0000 00000000 		.space	1696
 2053      00000000 
 2053      00000000 
 2053      00000000 
 2053      00000000 
 2054              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2055              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2056              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2057              	_ZL28cpu_irq_prev_interrupt_state:
 2058 0000 00       		.space	1
 2059              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2060              		.align	2
 2061              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2062              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2063              	_ZL32cpu_irq_critical_section_counter:
 2064 0000 00000000 		.space	4
 2065              		.section	.rodata._ZL17DefaultBedHeaters,"a",%progbits
 2066              		.align	2
 2067              		.set	.LANCHOR0,. + 0
 2068              		.type	_ZL17DefaultBedHeaters, %object
 2069              		.size	_ZL17DefaultBedHeaters, 4
 2070              	_ZL17DefaultBedHeaters:
 2071 0000 00       		.byte	0
 2072 0001 FF       		.byte	-1
 2073 0002 FF       		.byte	-1
 2074 0003 FF       		.byte	-1
 2075              		.section	.rodata._ZL21DefaultChamberHeaters,"a",%progbits
 2076              		.align	2
 2077              		.set	.LANCHOR1,. + 0
 2078              		.type	_ZL21DefaultChamberHeaters, %object
 2079              		.size	_ZL21DefaultChamberHeaters, 2
 2080              	_ZL21DefaultChamberHeaters:
 2081 0000 FF       		.byte	-1
 2082 0001 FF       		.byte	-1
 2083              		.section	.rodata._ZN4Heat11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 2084              		.align	2
 2085              	.LC2:
 2086 0000 3D3D3D20 		.ascii	"=== Heat ===\012Bed heaters =\000"
 2086      48656174 
 2086      203D3D3D 
 2086      0A426564 
 2086      20686561 
 2087 001b 00       		.space	1
 2088              	.LC3:
 2089 001c 20256400 		.ascii	" %d\000"
 2090              	.LC4:
 2091 0020 2C206368 		.ascii	", chamberHeaters =\000"
 2091      616D6265 
 2091      72486561 
 2091      74657273 
 2091      203D00
 2092 0033 00       		.space	1
 2093              	.LC5:
 2094 0034 0A00     		.ascii	"\012\000"
 2095 0036 0000     		.space	2
 2096              	.LC6:
 2097 0038 48656174 		.ascii	"Heater %d is on, I-accum = %.1f\012\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 38


 2097      65722025 
 2097      64206973 
 2097      206F6E2C 
 2097      20492D61 
 2098              		.section	.rodata._ZN4Heat13StartAutoTuneEjffRK9StringRef.str1.4,"aMS",%progbits,1
 2099              		.align	2
 2100              	.LC7:
 2101 0000 4572726F 		.ascii	"Error: cannot start auto tuning heater %u because h"
 2101      723A2063 
 2101      616E6E6F 
 2101      74207374 
 2101      61727420 
 2102 0033 65617465 		.ascii	"eater %d is being tuned\000"
 2102      72202564 
 2102      20697320 
 2102      6265696E 
 2102      67207475 
 2103              		.section	.rodata._ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef.str1.4,"aMS",%progbi
 2104              		.align	2
 2105              	.LC10:
 2106 0000 68656174 		.ascii	"heater %d is not configured\000"
 2106      65722025 
 2106      64206973 
 2106      206E6F74 
 2106      20636F6E 
 2107              		.section	.rodata._ZN4Heat4InitEv.str1.4,"aMS",%progbits,1
 2108              		.align	2
 2109              	.LC0:
 2110 0000 4D435500 		.ascii	"MCU\000"
 2111              	.LC1:
 2112 0004 48454154 		.ascii	"HEAT\000"
 2112      00
 2113              		.section	.rodata._ZNK4Heat17GetAutoTuneStatusERK9StringRef.str1.4,"aMS",%progbits,1
 2114              		.align	2
 2115              	.LC8:
 2116 0000 4E6F2068 		.ascii	"No heater has been tuned yet\000"
 2116      65617465 
 2116      72206861 
 2116      73206265 
 2116      656E2074 
 2117              		.section	.rodata._ZNK4Heat20WriteModelParametersEP9FileStore.str1.4,"aMS",%progbits,1
 2118              		.align	2
 2119              	.LC9:
 2120 0000 3B204865 		.ascii	"; Heater model parameters\012\000"
 2120      61746572 
 2120      206D6F64 
 2120      656C2070 
 2120      6172616D 
 2121              		.section	.rodata._ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore.str1.4,"aMS",%progbits,1
 2122              		.align	2
 2123              	.LC11:
 2124 0000 4D313430 		.ascii	"M140 P%u S%.1f\012\000"
 2124      20502575 
 2124      2053252E 
 2124      31660A00 
 2125              	.LC12:
 2126 0010 4D313431 		.ascii	"M141 P%u S%.1f\012\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxvkUkp.s 			page 39


 2126      20502575 
 2126      2053252E 
 2126      31660A00 
 2127              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
