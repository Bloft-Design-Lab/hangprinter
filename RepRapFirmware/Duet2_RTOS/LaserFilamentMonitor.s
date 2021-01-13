ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 1


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
  13              		.file	"LaserFilamentMonitor.cpp"
  14              		.text
  15              		.global	__aeabi_f2d
  16              		.section	.text._ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	_ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv4-sp-d16
  24              		.type	_ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej, %function
  25              	_ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej:
  26              		@ args = 0, pretend = 0, frame = 0
  27              		@ frame_needed = 0, uses_anonymous_args = 0
  28 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
  29 0004 2DED028B 		vpush.64	{d8}
  30 0008 90F88131 		ldrb	r3, [r0, #385]	@ zero_extendqisi2
  31 000c 0E46     		mov	r6, r1
  32 000e 85B0     		sub	sp, sp, #20
  33 0010 0446     		mov	r4, r0
  34 0012 B0F84211 		ldrh	r1, [r0, #322]
  35 0016 9046     		mov	r8, r2
  36 0018 4BB1     		cbz	r3, .L8
  37 001a 8B04     		lsls	r3, r1, #18
  38 001c 41D4     		bmi	.L9
  39 001e B0F84C21 		ldrh	r2, [r0, #332]
  40 0022 3E4B     		ldr	r3, .L23
  41 0024 3E48     		ldr	r0, .L23+4
  42 0026 1142     		tst	r1, r2
  43 0028 08BF     		it	eq
  44 002a 1846     		moveq	r0, r3
  45 002c 00E0     		b	.L2
  46              	.L8:
  47 002e 3D48     		ldr	r0, .L23+8
  48              	.L2:
  49 0030 9FED3D7A 		vldr.32	s14, .L23+12
  50 0034 3D4D     		ldr	r5, .L23+16
  51 0036 C1F30901 		ubfx	r1, r1, #0, #10
  52 003a B1F5007F 		cmp	r1, #512
  53 003e 88BF     		it	hi
  54 0040 A1F58061 		subhi	r1, r1, #1024
  55 0044 07EE901A 		vmov	s15, r1	@ int
  56 0048 F8EEE77A 		vcvt.f32.s32	s15, s15
  57 004c 6F68     		ldr	r7, [r5, #4]	@ unaligned
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 2


  58 004e 0290     		str	r0, [sp, #8]
  59 0050 67EE877A 		vmul.f32	s15, s15, s14
  60 0054 17EE900A 		vmov	r0, s15
  61 0058 FFF7FEFF 		bl	__aeabi_f2d
  62 005c 4346     		mov	r3, r8
  63 005e CDE90001 		strd	r0, [sp]
  64 0062 334A     		ldr	r2, .L23+20
  65 0064 3846     		mov	r0, r7
  66 0066 3146     		mov	r1, r6
  67 0068 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
  68 006c 94F88131 		ldrb	r3, [r4, #385]	@ zero_extendqisi2
  69 0070 CBB9     		cbnz	r3, .L21
  70              	.L4:
  71 0072 94F88331 		ldrb	r3, [r4, #387]	@ zero_extendqisi2
  72 0076 6D68     		ldr	r5, [r5, #4]
  73 0078 012B     		cmp	r3, #1
  74 007a 08D0     		beq	.L5
  75 007c 94ED5E7A 		vldr.32	s14, [r4, #376]
  76 0080 F2EE047A 		vmov.f32	s15, #1.0e+1
  77 0084 B4EEE77A 		vcmpe.f32	s14, s15
  78 0088 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  79 008c 16DC     		bgt	.L22
  80              	.L5:
  81 008e 294A     		ldr	r2, .L23+24
  82 0090 3146     		mov	r1, r6
  83 0092 2846     		mov	r0, r5
  84 0094 05B0     		add	sp, sp, #20
  85              		@ sp needed
  86 0096 BDEC028B 		vldm	sp!, {d8}
  87 009a BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
  88 009e FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
  89              	.L9:
  90 00a2 2548     		ldr	r0, .L23+28
  91 00a4 C4E7     		b	.L2
  92              	.L21:
  93 00a6 D4F85421 		ldr	r2, [r4, #340]
  94 00aa D4F85031 		ldr	r3, [r4, #336]
  95 00ae 6868     		ldr	r0, [r5, #4]
  96 00b0 0092     		str	r2, [sp]
  97 00b2 3146     		mov	r1, r6
  98 00b4 214A     		ldr	r2, .L23+32
  99 00b6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 100 00ba DAE7     		b	.L4
 101              	.L22:
 102 00bc 9FED208A 		vldr.32	s16, .L23+36
 103 00c0 94ED5C0A 		vldr.32	s0, [r4, #368]
 104 00c4 20EE080A 		vmul.f32	s0, s0, s16
 105 00c8 FFF7FEFF 		bl	lrintf
 106 00cc D4ED5F7A 		vldr.32	s15, [r4, #380]
 107 00d0 94ED5E0A 		vldr.32	s0, [r4, #376]
 108 00d4 67EE887A 		vmul.f32	s15, s15, s16
 109 00d8 0746     		mov	r7, r0
 110 00da 87EE800A 		vdiv.f32	s0, s15, s0
 111 00de FFF7FEFF 		bl	lrintf
 112 00e2 8146     		mov	r9, r0
 113 00e4 94ED5D0A 		vldr.32	s0, [r4, #372]
 114 00e8 20EE080A 		vmul.f32	s0, s0, s16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 3


 115 00ec FFF7FEFF 		bl	lrintf
 116 00f0 8046     		mov	r8, r0
 117 00f2 D4F87801 		ldr	r0, [r4, #376]	@ float
 118 00f6 FFF7FEFF 		bl	__aeabi_f2d
 119 00fa CDF80090 		str	r9, [sp]
 120 00fe CDE90201 		strd	r0, [sp, #8]
 121 0102 CDF80480 		str	r8, [sp, #4]
 122 0106 3B46     		mov	r3, r7
 123 0108 3146     		mov	r1, r6
 124 010a 2846     		mov	r0, r5
 125 010c 0D4A     		ldr	r2, .L23+40
 126 010e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 127 0112 05B0     		add	sp, sp, #20
 128              		@ sp needed
 129 0114 BDEC028B 		vldm	sp!, {d8}
 130 0118 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 131              	.L24:
 132              		.align	2
 133              	.L23:
 134 011c 1C000000 		.word	.LC2
 135 0120 20000000 		.word	.LC3
 136 0124 08000000 		.word	.LC1
 137 0128 0AD7A33C 		.word	1017370378
 138 012c 00000000 		.word	reprap
 139 0130 2C000000 		.word	.LC4
 140 0134 C0000000 		.word	.LC7
 141 0138 00000000 		.word	.LC0
 142 013c 54000000 		.word	.LC5
 143 0140 0000C842 		.word	1120403456
 144 0144 7C000000 		.word	.LC6
 145              		.size	_ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej, .-_ZN20LaserFilamentMonitor11Diagnost
 146              		.section	.text._ZN20LaserFilamentMonitorD2Ev,"axG",%progbits,_ZN20LaserFilamentMonitorD5Ev,comdat
 147              		.align	1
 148              		.p2align 2,,3
 149              		.weak	_ZN20LaserFilamentMonitorD2Ev
 150              		.syntax unified
 151              		.thumb
 152              		.thumb_func
 153              		.fpu fpv4-sp-d16
 154              		.type	_ZN20LaserFilamentMonitorD2Ev, %function
 155              	_ZN20LaserFilamentMonitorD2Ev:
 156              		@ args = 0, pretend = 0, frame = 0
 157              		@ frame_needed = 0, uses_anonymous_args = 0
 158 0000 10B5     		push	{r4, lr}
 159 0002 034B     		ldr	r3, .L27
 160 0004 0360     		str	r3, [r0]
 161 0006 0446     		mov	r4, r0
 162 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
 163 000c 2046     		mov	r0, r4
 164 000e 10BD     		pop	{r4, pc}
 165              	.L28:
 166              		.align	2
 167              	.L27:
 168 0010 08000000 		.word	_ZTV21Duet3DFilamentMonitor+8
 169              		.size	_ZN20LaserFilamentMonitorD2Ev, .-_ZN20LaserFilamentMonitorD2Ev
 170              		.weak	_ZN20LaserFilamentMonitorD1Ev
 171              		.thumb_set _ZN20LaserFilamentMonitorD1Ev,_ZN20LaserFilamentMonitorD2Ev
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 4


 172              		.section	.text._ZN20LaserFilamentMonitorD0Ev,"axG",%progbits,_ZN20LaserFilamentMonitorD5Ev,comdat
 173              		.align	1
 174              		.p2align 2,,3
 175              		.weak	_ZN20LaserFilamentMonitorD0Ev
 176              		.syntax unified
 177              		.thumb
 178              		.thumb_func
 179              		.fpu fpv4-sp-d16
 180              		.type	_ZN20LaserFilamentMonitorD0Ev, %function
 181              	_ZN20LaserFilamentMonitorD0Ev:
 182              		@ args = 0, pretend = 0, frame = 0
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184 0000 10B5     		push	{r4, lr}
 185 0002 064B     		ldr	r3, .L31
 186 0004 0360     		str	r3, [r0]
 187 0006 0446     		mov	r4, r0
 188 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
 189 000c 2046     		mov	r0, r4
 190 000e 4FF4C271 		mov	r1, #388
 191 0012 FFF7FEFF 		bl	_ZdlPvj
 192 0016 2046     		mov	r0, r4
 193 0018 10BD     		pop	{r4, pc}
 194              	.L32:
 195 001a 00BF     		.align	2
 196              	.L31:
 197 001c 08000000 		.word	_ZTV21Duet3DFilamentMonitor+8
 198              		.size	_ZN20LaserFilamentMonitorD0Ev, .-_ZN20LaserFilamentMonitorD0Ev
 199              		.section	.text._ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb,"ax",%progbits
 200              		.align	1
 201              		.p2align 2,,3
 202              		.global	_ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 203              		.syntax unified
 204              		.thumb
 205              		.thumb_func
 206              		.fpu fpv4-sp-d16
 207              		.type	_ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, %function
 208              	_ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb:
 209              		@ args = 0, pretend = 0, frame = 16
 210              		@ frame_needed = 0, uses_anonymous_args = 0
 211 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 212 0004 2DED028B 		vpush.64	{d8}
 213 0008 8BB0     		sub	sp, sp, #44
 214 000a 1E46     		mov	r6, r3
 215 000c 0093     		str	r3, [sp]
 216 000e 0323     		movs	r3, #3
 217 0010 0446     		mov	r4, r0
 218 0012 0F46     		mov	r7, r1
 219 0014 9046     		mov	r8, r2
 220 0016 FFF7FEFF 		bl	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb
 221 001a 0546     		mov	r5, r0
 222 001c 28B1     		cbz	r0, .L61
 223              	.L34:
 224 001e 2846     		mov	r0, r5
 225 0020 0BB0     		add	sp, sp, #44
 226              		@ sp needed
 227 0022 BDEC028B 		vldm	sp!, {d8}
 228 0026 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 5


 229              	.L61:
 230 002a 4521     		movs	r1, #69
 231 002c 3346     		mov	r3, r6
 232 002e 04F59E72 		add	r2, r4, #316
 233 0032 3846     		mov	r0, r7
 234 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 235 0038 5221     		movs	r1, #82
 236 003a 3846     		mov	r0, r7
 237 003c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 238 0040 0028     		cmp	r0, #0
 239 0042 40F0AA80 		bne	.L62
 240              	.L35:
 241 0046 5321     		movs	r1, #83
 242 0048 3846     		mov	r0, r7
 243 004a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 244 004e 0028     		cmp	r0, #0
 245 0050 71D1     		bne	.L63
 246 0052 3778     		ldrb	r7, [r6]	@ zero_extendqisi2
 247 0054 002F     		cmp	r7, #0
 248 0056 7CD1     		bne	.L64
 249              	.L40:
 250 0058 94ED4D0A 		vldr.32	s0, [r4, #308]
 251 005c 9FED7A8A 		vldr.32	s16, .L68
 252 0060 7A4A     		ldr	r2, .L68+4
 253 0062 7B4B     		ldr	r3, .L68+8
 254 0064 94F84011 		ldrb	r1, [r4, #320]	@ zero_extendqisi2
 255 0068 B4F84C01 		ldrh	r0, [r4, #332]
 256 006c 794D     		ldr	r5, .L68+12
 257 006e 7A4E     		ldr	r6, .L68+16
 258 0070 D4F81090 		ldr	r9, [r4, #16]
 259 0074 20EE080A 		vmul.f32	s0, s0, s16
 260 0078 0028     		cmp	r0, #0
 261 007a 08BF     		it	eq
 262 007c 1546     		moveq	r5, r2
 263 007e 0029     		cmp	r1, #0
 264 0080 08BF     		it	eq
 265 0082 1E46     		moveq	r6, r3
 266 0084 FFF7FEFF 		bl	lrintf
 267 0088 94ED4E0A 		vldr.32	s0, [r4, #312]
 268 008c 20EE080A 		vmul.f32	s0, s0, s16
 269 0090 8246     		mov	r10, r0
 270 0092 FFF7FEFF 		bl	lrintf
 271 0096 8346     		mov	fp, r0
 272 0098 D4F83C01 		ldr	r0, [r4, #316]	@ float
 273 009c FFF7FEFF 		bl	__aeabi_f2d
 274 00a0 2A46     		mov	r2, r5
 275 00a2 CDE90401 		strd	r0, [sp, #16]
 276 00a6 0096     		str	r6, [sp]
 277 00a8 CDE901AB 		strd	r10, fp, [sp, #4]
 278 00ac 4B46     		mov	r3, r9
 279 00ae 6B49     		ldr	r1, .L68+20
 280 00b0 4046     		mov	r0, r8
 281 00b2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 282 00b6 94F88151 		ldrb	r5, [r4, #385]	@ zero_extendqisi2
 283 00ba BDB3     		cbz	r5, .L65
 284 00bc B4F84231 		ldrh	r3, [r4, #322]
 285 00c0 9A04     		lsls	r2, r3, #18
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 6


 286 00c2 00F18F80 		bmi	.L66
 287 00c6 C3F30903 		ubfx	r3, r3, #0, #10
 288 00ca B3F5007F 		cmp	r3, #512
 289 00ce 88BF     		it	hi
 290 00d0 A3F58063 		subhi	r3, r3, #1024
 291 00d4 07EE903A 		vmov	s15, r3	@ int
 292 00d8 9FED617A 		vldr.32	s14, .L68+24
 293 00dc B4F84451 		ldrh	r5, [r4, #324]
 294 00e0 F8EEE77A 		vcvt.f32.s32	s15, s15
 295 00e4 C5F30526 		ubfx	r6, r5, #8, #6
 296 00e8 67EE877A 		vmul.f32	s15, s15, s14
 297 00ec EDB2     		uxtb	r5, r5
 298 00ee 17EE900A 		vmov	r0, s15
 299 00f2 FFF7FEFF 		bl	__aeabi_f2d
 300 00f6 CDE90056 		strd	r5, r6, [sp]
 301 00fa 0B46     		mov	r3, r1
 302 00fc 0246     		mov	r2, r0
 303 00fe 5949     		ldr	r1, .L68+28
 304 0100 4046     		mov	r0, r8
 305 0102 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 306 0106 94F88331 		ldrb	r3, [r4, #387]	@ zero_extendqisi2
 307 010a 012B     		cmp	r3, #1
 308 010c 08D0     		beq	.L46
 309 010e 94ED5E7A 		vldr.32	s14, [r4, #376]
 310 0112 F2EE047A 		vmov.f32	s15, #1.0e+1
 311 0116 B4EEE77A 		vcmpe.f32	s14, s15
 312 011a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 313 011e 67DC     		bgt	.L67
 314              	.L46:
 315 0120 4046     		mov	r0, r8
 316 0122 5149     		ldr	r1, .L68+32
 317 0124 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 318 0128 0025     		movs	r5, #0
 319 012a 78E7     		b	.L34
 320              	.L65:
 321 012c 4046     		mov	r0, r8
 322 012e 4F49     		ldr	r1, .L68+36
 323 0130 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 324 0134 73E7     		b	.L34
 325              	.L63:
 326 0136 0123     		movs	r3, #1
 327 0138 3846     		mov	r0, r7
 328 013a 3370     		strb	r3, [r6]
 329 013c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 330 0140 0028     		cmp	r0, #0
 331 0142 D4BF     		ite	le
 332 0144 0020     		movle	r0, #0
 333 0146 0120     		movgt	r0, #1
 334 0148 84F84001 		strb	r0, [r4, #320]
 335 014c 3778     		ldrb	r7, [r6]	@ zero_extendqisi2
 336 014e 002F     		cmp	r7, #0
 337 0150 82D0     		beq	.L40
 338              	.L64:
 339 0152 0026     		movs	r6, #0
 340 0154 2046     		mov	r0, r4
 341 0156 A4F84261 		strh	r6, [r4, #322]	@ movhi
 342 015a C4F85061 		str	r6, [r4, #336]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 7


 343 015e C4F85461 		str	r6, [r4, #340]
 344 0162 C4F84861 		str	r6, [r4, #328]
 345 0166 84F88261 		strb	r6, [r4, #386]
 346 016a FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 347 016e 0023     		movs	r3, #0
 348 0170 0122     		movs	r2, #1
 349 0172 2846     		mov	r0, r5
 350 0174 84F88361 		strb	r6, [r4, #387]
 351 0178 84F86661 		strb	r6, [r4, #358]
 352 017c C4F86031 		str	r3, [r4, #352]	@ float
 353 0180 C4F86C31 		str	r3, [r4, #364]	@ float
 354 0184 C4F85C31 		str	r3, [r4, #348]	@ float
 355 0188 C4F86831 		str	r3, [r4, #360]	@ float
 356 018c 84F86521 		strb	r2, [r4, #357]
 357 0190 0BB0     		add	sp, sp, #44
 358              		@ sp needed
 359 0192 BDEC028B 		vldm	sp!, {d8}
 360 0196 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 361              	.L62:
 362 019a 0AAA     		add	r2, sp, #40
 363 019c 0223     		movs	r3, #2
 364 019e 42F80C3D 		str	r3, [r2, #-12]!
 365 01a2 0123     		movs	r3, #1
 366 01a4 3370     		strb	r3, [r6]
 367 01a6 08A9     		add	r1, sp, #32
 368 01a8 2B46     		mov	r3, r5
 369 01aa 3846     		mov	r0, r7
 370 01ac FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 371 01b0 079B     		ldr	r3, [sp, #28]
 372 01b2 002B     		cmp	r3, #0
 373 01b4 3FF447AF 		beq	.L35
 374 01b8 DDED087A 		vldr.32	s15, [sp, #32]	@ int
 375 01bc DFED2C6A 		vldr.32	s13, .L68+40
 376 01c0 B8EE677A 		vcvt.f32.u32	s14, s15
 377 01c4 012B     		cmp	r3, #1
 378 01c6 27EE267A 		vmul.f32	s14, s14, s13
 379 01ca 84ED4D7A 		vstr.32	s14, [r4, #308]
 380 01ce 7FF63AAF 		bls	.L35
 381 01d2 DDED097A 		vldr.32	s15, [sp, #36]	@ int
 382 01d6 F8EE677A 		vcvt.f32.u32	s15, s15
 383 01da 67EEA67A 		vmul.f32	s15, s15, s13
 384 01de C4ED4E7A 		vstr.32	s15, [r4, #312]
 385 01e2 30E7     		b	.L35
 386              	.L66:
 387 01e4 4046     		mov	r0, r8
 388 01e6 2349     		ldr	r1, .L68+44
 389 01e8 3D46     		mov	r5, r7
 390 01ea FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 391 01ee 16E7     		b	.L34
 392              	.L67:
 393 01f0 9FED158A 		vldr.32	s16, .L68
 394 01f4 94ED5C0A 		vldr.32	s0, [r4, #368]
 395 01f8 20EE080A 		vmul.f32	s0, s0, s16
 396 01fc FFF7FEFF 		bl	lrintf
 397 0200 D4ED5F7A 		vldr.32	s15, [r4, #380]
 398 0204 94ED5E0A 		vldr.32	s0, [r4, #376]
 399 0208 67EE887A 		vmul.f32	s15, s15, s16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 8


 400 020c 0646     		mov	r6, r0
 401 020e 87EE800A 		vdiv.f32	s0, s15, s0
 402 0212 FFF7FEFF 		bl	lrintf
 403 0216 0746     		mov	r7, r0
 404 0218 0025     		movs	r5, #0
 405 021a 94ED5D0A 		vldr.32	s0, [r4, #372]
 406 021e 20EE080A 		vmul.f32	s0, s0, s16
 407 0222 FFF7FEFF 		bl	lrintf
 408 0226 8146     		mov	r9, r0
 409 0228 D4F87801 		ldr	r0, [r4, #376]	@ float
 410 022c FFF7FEFF 		bl	__aeabi_f2d
 411 0230 CDF80090 		str	r9, [sp]
 412 0234 CDE90201 		strd	r0, [sp, #8]
 413 0238 3B46     		mov	r3, r7
 414 023a 3246     		mov	r2, r6
 415 023c 4046     		mov	r0, r8
 416 023e 0E49     		ldr	r1, .L68+48
 417 0240 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 418 0244 EBE6     		b	.L34
 419              	.L69:
 420 0246 00BF     		.align	2
 421              	.L68:
 422 0248 0000C842 		.word	1120403456
 423 024c 14000000 		.word	.LC9
 424 0250 20000000 		.word	.LC11
 425 0254 00000000 		.word	.LC8
 426 0258 18000000 		.word	.LC10
 427 025c 2C000000 		.word	.LC12
 428 0260 0AD7A33C 		.word	1017370378
 429 0264 9C000000 		.word	.LC13
 430 0268 14010000 		.word	.LC15
 431 026c 08000000 		.word	.LC1
 432 0270 0AD7233C 		.word	1008981770
 433 0274 00000000 		.word	.LC0
 434 0278 D0000000 		.word	.LC14
 435              		.size	_ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, .-_ZN20LaserFilamentMonito
 436              		.section	.text._ZN20LaserFilamentMonitorC2Eji,"ax",%progbits
 437              		.align	1
 438              		.p2align 2,,3
 439              		.global	_ZN20LaserFilamentMonitorC2Eji
 440              		.syntax unified
 441              		.thumb
 442              		.thumb_func
 443              		.fpu fpv4-sp-d16
 444              		.type	_ZN20LaserFilamentMonitorC2Eji, %function
 445              	_ZN20LaserFilamentMonitorC2Eji:
 446              		@ args = 0, pretend = 0, frame = 0
 447              		@ frame_needed = 0, uses_anonymous_args = 0
 448 0000 38B5     		push	{r3, r4, r5, lr}
 449 0002 0446     		mov	r4, r0
 450 0004 1546     		mov	r5, r2
 451 0006 FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitorC2Eji
 452 000a 1B4B     		ldr	r3, .L74
 453 000c 2360     		str	r3, [r4]
 454 000e 062D     		cmp	r5, #6
 455 0010 08BF     		it	eq
 456 0012 4FF48053 		moveq	r3, #4096
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 9


 457 0016 4FF00005 		mov	r5, #0
 458 001a 18BF     		it	ne
 459 001c 0023     		movne	r3, #0
 460 001e 1749     		ldr	r1, .L74+4
 461 0020 174A     		ldr	r2, .L74+8
 462 0022 1848     		ldr	r0, .L74+12
 463 0024 C4F83401 		str	r0, [r4, #308]	@ float
 464 0028 C4F83C21 		str	r2, [r4, #316]	@ float
 465 002c A4F84C31 		strh	r3, [r4, #332]	@ movhi
 466 0030 2046     		mov	r0, r4
 467 0032 C4F83811 		str	r1, [r4, #312]	@ float
 468 0036 84F84051 		strb	r5, [r4, #320]
 469 003a A4F84251 		strh	r5, [r4, #322]	@ movhi
 470 003e C4F85051 		str	r5, [r4, #336]
 471 0042 C4F85451 		str	r5, [r4, #340]
 472 0046 C4F84851 		str	r5, [r4, #328]
 473 004a 84F88251 		strb	r5, [r4, #386]
 474 004e FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 475 0052 0023     		movs	r3, #0
 476 0054 0122     		movs	r2, #1
 477 0056 84F88351 		strb	r5, [r4, #387]
 478 005a 84F86651 		strb	r5, [r4, #358]
 479 005e 84F86521 		strb	r2, [r4, #357]
 480 0062 C4F86031 		str	r3, [r4, #352]	@ float
 481 0066 C4F86C31 		str	r3, [r4, #364]	@ float
 482 006a C4F85C31 		str	r3, [r4, #348]	@ float
 483 006e C4F86831 		str	r3, [r4, #360]	@ float
 484 0072 2046     		mov	r0, r4
 485 0074 38BD     		pop	{r3, r4, r5, pc}
 486              	.L75:
 487 0076 00BF     		.align	2
 488              	.L74:
 489 0078 08000000 		.word	.LANCHOR0+8
 490 007c CDCCCC3F 		.word	1070386381
 491 0080 00004040 		.word	1077936128
 492 0084 9A99193F 		.word	1058642330
 493              		.size	_ZN20LaserFilamentMonitorC2Eji, .-_ZN20LaserFilamentMonitorC2Eji
 494              		.global	_ZN20LaserFilamentMonitorC1Eji
 495              		.thumb_set _ZN20LaserFilamentMonitorC1Eji,_ZN20LaserFilamentMonitorC2Eji
 496              		.section	.text._ZN20LaserFilamentMonitor4InitEv,"ax",%progbits
 497              		.align	1
 498              		.p2align 2,,3
 499              		.global	_ZN20LaserFilamentMonitor4InitEv
 500              		.syntax unified
 501              		.thumb
 502              		.thumb_func
 503              		.fpu fpv4-sp-d16
 504              		.type	_ZN20LaserFilamentMonitor4InitEv, %function
 505              	_ZN20LaserFilamentMonitor4InitEv:
 506              		@ args = 0, pretend = 0, frame = 0
 507              		@ frame_needed = 0, uses_anonymous_args = 0
 508 0000 38B5     		push	{r3, r4, r5, lr}
 509 0002 0025     		movs	r5, #0
 510 0004 0446     		mov	r4, r0
 511 0006 A0F84251 		strh	r5, [r0, #322]	@ movhi
 512 000a C0F85051 		str	r5, [r0, #336]
 513 000e C0F85451 		str	r5, [r0, #340]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 10


 514 0012 C0F84851 		str	r5, [r0, #328]
 515 0016 80F88251 		strb	r5, [r0, #386]
 516 001a FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 517 001e 0023     		movs	r3, #0
 518 0020 0122     		movs	r2, #1
 519 0022 84F88351 		strb	r5, [r4, #387]
 520 0026 84F86651 		strb	r5, [r4, #358]
 521 002a 84F86521 		strb	r2, [r4, #357]
 522 002e C4F86031 		str	r3, [r4, #352]	@ float
 523 0032 C4F86C31 		str	r3, [r4, #364]	@ float
 524 0036 C4F85C31 		str	r3, [r4, #348]	@ float
 525 003a C4F86831 		str	r3, [r4, #360]	@ float
 526 003e 38BD     		pop	{r3, r4, r5, pc}
 527              		.size	_ZN20LaserFilamentMonitor4InitEv, .-_ZN20LaserFilamentMonitor4InitEv
 528              		.section	.text._ZN20LaserFilamentMonitor5ResetEv,"ax",%progbits
 529              		.align	1
 530              		.p2align 2,,3
 531              		.global	_ZN20LaserFilamentMonitor5ResetEv
 532              		.syntax unified
 533              		.thumb
 534              		.thumb_func
 535              		.fpu fpv4-sp-d16
 536              		.type	_ZN20LaserFilamentMonitor5ResetEv, %function
 537              	_ZN20LaserFilamentMonitor5ResetEv:
 538              		@ args = 0, pretend = 0, frame = 0
 539              		@ frame_needed = 0, uses_anonymous_args = 0
 540              		@ link register save eliminated.
 541 0000 0023     		movs	r3, #0
 542 0002 0022     		movs	r2, #0
 543 0004 0121     		movs	r1, #1
 544 0006 80F86511 		strb	r1, [r0, #357]
 545 000a C0F86031 		str	r3, [r0, #352]	@ float
 546 000e C0F86C31 		str	r3, [r0, #364]	@ float
 547 0012 C0F85C31 		str	r3, [r0, #348]	@ float
 548 0016 C0F86831 		str	r3, [r0, #360]	@ float
 549 001a 80F88321 		strb	r2, [r0, #387]
 550 001e 80F86621 		strb	r2, [r0, #358]
 551 0022 7047     		bx	lr
 552              		.size	_ZN20LaserFilamentMonitor5ResetEv, .-_ZN20LaserFilamentMonitor5ResetEv
 553              		.section	.text._ZNK20LaserFilamentMonitor18GetCurrentPositionEv,"ax",%progbits
 554              		.align	1
 555              		.p2align 2,,3
 556              		.global	_ZNK20LaserFilamentMonitor18GetCurrentPositionEv
 557              		.syntax unified
 558              		.thumb
 559              		.thumb_func
 560              		.fpu fpv4-sp-d16
 561              		.type	_ZNK20LaserFilamentMonitor18GetCurrentPositionEv, %function
 562              	_ZNK20LaserFilamentMonitor18GetCurrentPositionEv:
 563              		@ args = 0, pretend = 0, frame = 0
 564              		@ frame_needed = 0, uses_anonymous_args = 0
 565              		@ link register save eliminated.
 566 0000 B0F84231 		ldrh	r3, [r0, #322]
 567 0004 9FED070A 		vldr.32	s0, .L81
 568 0008 C3F30903 		ubfx	r3, r3, #0, #10
 569 000c B3F5007F 		cmp	r3, #512
 570 0010 88BF     		it	hi
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 11


 571 0012 A3F58063 		subhi	r3, r3, #1024
 572 0016 07EE903A 		vmov	s15, r3	@ int
 573 001a F8EEE77A 		vcvt.f32.s32	s15, s15
 574 001e 27EE800A 		vmul.f32	s0, s15, s0
 575 0022 7047     		bx	lr
 576              	.L82:
 577              		.align	2
 578              	.L81:
 579 0024 0AD7A33C 		.word	1017370378
 580              		.size	_ZNK20LaserFilamentMonitor18GetCurrentPositionEv, .-_ZNK20LaserFilamentMonitor18GetCurrentPo
 581              		.section	.text._ZN20LaserFilamentMonitor18HandleIncomingDataEv,"ax",%progbits
 582              		.align	1
 583              		.p2align 2,,3
 584              		.global	_ZN20LaserFilamentMonitor18HandleIncomingDataEv
 585              		.syntax unified
 586              		.thumb
 587              		.thumb_func
 588              		.fpu fpv4-sp-d16
 589              		.type	_ZN20LaserFilamentMonitor18HandleIncomingDataEv, %function
 590              	_ZN20LaserFilamentMonitor18HandleIncomingDataEv:
 591              		@ args = 0, pretend = 0, frame = 8
 592              		@ frame_needed = 0, uses_anonymous_args = 0
 593 0000 70B5     		push	{r4, r5, r6, lr}
 594 0002 2DED028B 		vpush.64	{d8}
 595 0006 0026     		movs	r6, #0
 596 0008 82B0     		sub	sp, sp, #8
 597 000a 9FED3F8A 		vldr.32	s16, .L105
 598 000e 0446     		mov	r4, r0
 599 0010 0125     		movs	r5, #1
 600 0012 17E0     		b	.L95
 601              	.L85:
 602 0014 D4F85031 		ldr	r3, [r4, #336]
 603 0018 0133     		adds	r3, r3, #1
 604 001a C4F85031 		str	r3, [r4, #336]
 605              	.L87:
 606 001e 94F86631 		ldrb	r3, [r4, #358]	@ zero_extendqisi2
 607 0022 63B1     		cbz	r3, .L92
 608 0024 D4ED577A 		vldr.32	s15, [r4, #348]
 609 0028 94ED567A 		vldr.32	s14, [r4, #344]
 610 002c 94F86431 		ldrb	r3, [r4, #356]	@ zero_extendqisi2
 611 0030 77EE877A 		vadd.f32	s15, s15, s14
 612 0034 C4ED577A 		vstr.32	s15, [r4, #348]
 613 0038 0BB1     		cbz	r3, .L92
 614 003a 84F86551 		strb	r5, [r4, #357]
 615              	.L92:
 616 003e 0023     		movs	r3, #0
 617 0040 84F86631 		strb	r3, [r4, #358]
 618              	.L95:
 619 0044 0DF10601 		add	r1, sp, #6
 620 0048 2046     		mov	r0, r4
 621 004a FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt
 622 004e B0B1     		cbz	r0, .L83
 623 0050 0128     		cmp	r0, #1
 624 0052 DFD1     		bne	.L85
 625 0054 BDF80620 		ldrh	r2, [sp, #6]
 626 0058 82EA1223 		eor	r3, r2, r2, lsr #8
 627 005c 5BB2     		sxtb	r3, r3
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 12


 628 005e C3F30311 		ubfx	r1, r3, #4, #4
 629 0062 4B40     		eors	r3, r3, r1
 630 0064 C3F38501 		ubfx	r1, r3, #2, #6
 631 0068 4B40     		eors	r3, r3, r1
 632 006a 83EA5303 		eor	r3, r3, r3, lsr #1
 633 006e D907     		lsls	r1, r3, #31
 634 0070 09D5     		bpl	.L86
 635 0072 D4F85431 		ldr	r3, [r4, #340]
 636 0076 0133     		adds	r3, r3, #1
 637 0078 C4F85431 		str	r3, [r4, #340]
 638 007c CFE7     		b	.L87
 639              	.L83:
 640 007e 02B0     		add	sp, sp, #8
 641              		@ sp needed
 642 0080 BDEC028B 		vldm	sp!, {d8}
 643 0084 70BD     		pop	{r4, r5, r6, pc}
 644              	.L86:
 645 0086 5304     		lsls	r3, r2, #17
 646 0088 04D5     		bpl	.L88
 647 008a C2F30D02 		ubfx	r2, r2, #0, #14
 648 008e A4F84421 		strh	r2, [r4, #324]	@ movhi
 649 0092 C4E7     		b	.L87
 650              	.L88:
 651 0094 84F88101 		strb	r0, [r4, #385]
 652 0098 FFF7FEFF 		bl	millis
 653 009c BDF80620 		ldrh	r2, [sp, #6]
 654 00a0 B4F84231 		ldrh	r3, [r4, #322]
 655 00a4 C4F84801 		str	r0, [r4, #328]
 656 00a8 D31A     		subs	r3, r2, r3
 657 00aa C3F30903 		ubfx	r3, r3, #0, #10
 658 00ae B3F5007F 		cmp	r3, #512
 659 00b2 25D8     		bhi	.L104
 660              	.L89:
 661 00b4 07EE903A 		vmov	s15, r3	@ int
 662 00b8 94ED587A 		vldr.32	s14, [r4, #352]
 663 00bc 94F86631 		ldrb	r3, [r4, #358]	@ zero_extendqisi2
 664 00c0 A4F84221 		strh	r2, [r4, #322]	@ movhi
 665 00c4 F8EEE77A 		vcvt.f32.s32	s15, s15
 666 00c8 A7EE887A 		vfma.f32	s14, s15, s16
 667 00cc F0EE477A 		vmov.f32	s15, s14
 668 00d0 84ED587A 		vstr.32	s14, [r4, #352]
 669 00d4 002B     		cmp	r3, #0
 670 00d6 B2D0     		beq	.L92
 671 00d8 94F86431 		ldrb	r3, [r4, #356]	@ zero_extendqisi2
 672 00dc 6BB9     		cbnz	r3, .L93
 673 00de D4ED5A6A 		vldr.32	s13, [r4, #360]
 674 00e2 94ED5B7A 		vldr.32	s14, [r4, #364]
 675 00e6 94ED566A 		vldr.32	s12, [r4, #344]
 676 00ea 77EE277A 		vadd.f32	s15, s14, s15
 677 00ee 76EE866A 		vadd.f32	s13, s13, s12
 678 00f2 C4ED5B7A 		vstr.32	s15, [r4, #364]
 679 00f6 C4ED5A6A 		vstr.32	s13, [r4, #360]
 680              	.L93:
 681 00fa C4F86061 		str	r6, [r4, #352]	@ float
 682 00fe 9EE7     		b	.L92
 683              	.L104:
 684 0100 A3F58063 		sub	r3, r3, #1024
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 13


 685 0104 D6E7     		b	.L89
 686              	.L106:
 687 0106 00BF     		.align	2
 688              	.L105:
 689 0108 0AD7A33C 		.word	1017370378
 690              		.size	_ZN20LaserFilamentMonitor18HandleIncomingDataEv, .-_ZN20LaserFilamentMonitor18HandleIncoming
 691              		.section	.text._ZN20LaserFilamentMonitor5ClearEb,"ax",%progbits
 692              		.align	1
 693              		.p2align 2,,3
 694              		.global	_ZN20LaserFilamentMonitor5ClearEb
 695              		.syntax unified
 696              		.thumb
 697              		.thumb_func
 698              		.fpu fpv4-sp-d16
 699              		.type	_ZN20LaserFilamentMonitor5ClearEb, %function
 700              	_ZN20LaserFilamentMonitor5ClearEb:
 701              		@ args = 0, pretend = 0, frame = 0
 702              		@ frame_needed = 0, uses_anonymous_args = 0
 703 0000 38B5     		push	{r3, r4, r5, lr}
 704 0002 0446     		mov	r4, r0
 705 0004 0D46     		mov	r5, r1
 706 0006 FFF7FEFF 		bl	_ZN20LaserFilamentMonitor18HandleIncomingDataEv
 707 000a 0023     		movs	r3, #0
 708 000c 0022     		movs	r2, #0
 709 000e 0121     		movs	r1, #1
 710 0010 84F86511 		strb	r1, [r4, #357]
 711 0014 C4F86031 		str	r3, [r4, #352]	@ float
 712 0018 C4F86C31 		str	r3, [r4, #364]	@ float
 713 001c C4F85C31 		str	r3, [r4, #348]	@ float
 714 0020 C4F86831 		str	r3, [r4, #360]	@ float
 715 0024 84F88321 		strb	r2, [r4, #387]
 716 0028 84F86621 		strb	r2, [r4, #358]
 717 002c 55B1     		cbz	r5, .L109
 718 002e B4F84231 		ldrh	r3, [r4, #322]
 719 0032 9A04     		lsls	r2, r3, #18
 720 0034 08D4     		bmi	.L110
 721 0036 B4F84C21 		ldrh	r2, [r4, #332]
 722 003a 1342     		tst	r3, r2
 723 003c 14BF     		ite	ne
 724 003e 0846     		movne	r0, r1
 725 0040 0020     		moveq	r0, #0
 726 0042 38BD     		pop	{r3, r4, r5, pc}
 727              	.L109:
 728 0044 2846     		mov	r0, r5
 729 0046 38BD     		pop	{r3, r4, r5, pc}
 730              	.L110:
 731 0048 0420     		movs	r0, #4
 732 004a 38BD     		pop	{r3, r4, r5, pc}
 733              		.size	_ZN20LaserFilamentMonitor5ClearEb, .-_ZN20LaserFilamentMonitor5ClearEb
 734              		.section	.text._ZN20LaserFilamentMonitor13CheckFilamentEffb,"ax",%progbits
 735              		.align	1
 736              		.p2align 2,,3
 737              		.global	_ZN20LaserFilamentMonitor13CheckFilamentEffb
 738              		.syntax unified
 739              		.thumb
 740              		.thumb_func
 741              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 14


 742              		.type	_ZN20LaserFilamentMonitor13CheckFilamentEffb, %function
 743              	_ZN20LaserFilamentMonitor13CheckFilamentEffb:
 744              		@ args = 0, pretend = 0, frame = 0
 745              		@ frame_needed = 0, uses_anonymous_args = 0
 746 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 747 0004 2DED028B 		vpush.64	{d8}
 748 0008 5F4B     		ldr	r3, .L155
 749 000a D3F80831 		ldr	r3, [r3, #264]
 750 000e 9B04     		lsls	r3, r3, #18
 751 0010 84B0     		sub	sp, sp, #16
 752 0012 0446     		mov	r4, r0
 753 0014 F0EE408A 		vmov.f32	s17, s0
 754 0018 B0EE608A 		vmov.f32	s16, s1
 755 001c 18D5     		bpl	.L113
 756 001e 10EE100A 		vmov	r0, s0
 757 0022 8846     		mov	r8, r1
 758 0024 FFF7FEFF 		bl	__aeabi_f2d
 759 0028 0646     		mov	r6, r0
 760 002a 18EE100A 		vmov	r0, s16
 761 002e 0F46     		mov	r7, r1
 762 0030 564D     		ldr	r5, .L155+4
 763 0032 FFF7FEFF 		bl	__aeabi_f2d
 764 0036 564B     		ldr	r3, .L155+8
 765 0038 B8F1000F 		cmp	r8, #0
 766 003c 18BF     		it	ne
 767 003e 1D46     		movne	r5, r3
 768 0040 CDE90001 		strd	r0, [sp]
 769 0044 3246     		mov	r2, r6
 770 0046 3B46     		mov	r3, r7
 771 0048 0295     		str	r5, [sp, #8]
 772 004a 5248     		ldr	r0, .L155+12
 773 004c FFF7FEFF 		bl	debugPrintf
 774              	.L113:
 775 0050 94F88331 		ldrb	r3, [r4, #387]	@ zero_extendqisi2
 776 0054 012B     		cmp	r3, #1
 777 0056 4CD0     		beq	.L116
 778 0058 3ED3     		bcc	.L117
 779 005a 022B     		cmp	r3, #2
 780 005c 05D0     		beq	.L118
 781              	.L151:
 782 005e 0020     		movs	r0, #0
 783              	.L115:
 784 0060 04B0     		add	sp, sp, #16
 785              		@ sp needed
 786 0062 BDEC028B 		vldm	sp!, {d8}
 787 0066 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 788              	.L118:
 789 006a D4ED5E7A 		vldr.32	s15, [r4, #376]
 790 006e 94F88231 		ldrb	r3, [r4, #386]	@ zero_extendqisi2
 791 0072 77EEA87A 		vadd.f32	s15, s15, s17
 792 0076 C4ED5E7A 		vstr.32	s15, [r4, #376]
 793 007a 0BB1     		cbz	r3, .L124
 794 007c B1EE488A 		vneg.f32	s16, s16
 795              	.L124:
 796 0080 C8EE287A 		vdiv.f32	s15, s16, s17
 797 0084 D4ED5F0A 		vldr.32	s1, [r4, #380]
 798 0088 94ED5D7A 		vldr.32	s14, [r4, #372]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 15


 799 008c 30EE888A 		vadd.f32	s16, s1, s16
 800 0090 B4EEE77A 		vcmpe.f32	s14, s15
 801 0094 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 802 0098 84ED5F8A 		vstr.32	s16, [r4, #380]
 803 009c 6CD4     		bmi	.L154
 804 009e 94ED5C7A 		vldr.32	s14, [r4, #368]
 805 00a2 B4EEE77A 		vcmpe.f32	s14, s15
 806 00a6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 807 00aa C8BF     		it	gt
 808 00ac C4ED5C7A 		vstrgt.32	s15, [r4, #368]
 809              	.L127:
 810 00b0 94F84031 		ldrb	r3, [r4, #320]	@ zero_extendqisi2
 811 00b4 002B     		cmp	r3, #0
 812 00b6 D2D0     		beq	.L151
 813 00b8 94ED4D7A 		vldr.32	s14, [r4, #308]
 814 00bc B4EEE77A 		vcmpe.f32	s14, s15
 815 00c0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 816 00c4 5DDC     		bgt	.L136
 817 00c6 94ED4E7A 		vldr.32	s14, [r4, #312]
 818 00ca B4EEE77A 		vcmpe.f32	s14, s15
 819 00ce F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 820 00d2 C4D5     		bpl	.L151
 821 00d4 0320     		movs	r0, #3
 822 00d6 C3E7     		b	.L115
 823              	.L117:
 824 00d8 0123     		movs	r3, #1
 825 00da 0020     		movs	r0, #0
 826 00dc C4ED5E8A 		vstr.32	s17, [r4, #376]
 827 00e0 84ED5F8A 		vstr.32	s16, [r4, #380]
 828 00e4 84F88331 		strb	r3, [r4, #387]
 829 00e8 04B0     		add	sp, sp, #16
 830              		@ sp needed
 831 00ea BDEC028B 		vldm	sp!, {d8}
 832 00ee BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 833              	.L116:
 834 00f2 94ED5E0A 		vldr.32	s0, [r4, #376]
 835 00f6 D4ED5F0A 		vldr.32	s1, [r4, #380]
 836 00fa 78EE808A 		vadd.f32	s17, s17, s0
 837 00fe F2EE047A 		vmov.f32	s15, #1.0e+1
 838 0102 38EE208A 		vadd.f32	s16, s16, s1
 839 0106 F4EEE78A 		vcmpe.f32	s17, s15
 840 010a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 841 010e C4ED5E8A 		vstr.32	s17, [r4, #376]
 842 0112 84ED5F8A 		vstr.32	s16, [r4, #380]
 843 0116 A2DB     		blt	.L151
 844 0118 B5EEC08A 		vcmpe.f32	s16, #0
 845 011c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 846 0120 48BF     		it	mi
 847 0122 B1EE488A 		vnegmi.f32	s16, s16
 848 0126 C8EE287A 		vdiv.f32	s15, s16, s17
 849 012a 94F84001 		ldrb	r0, [r4, #320]	@ zero_extendqisi2
 850 012e 4CBF     		ite	mi
 851 0130 0123     		movmi	r3, #1
 852 0132 0023     		movpl	r3, #0
 853 0134 84F88231 		strb	r3, [r4, #386]
 854 0138 48BF     		it	mi
 855 013a 84ED5F8A 		vstrmi.32	s16, [r4, #380]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 16


 856 013e C4ED5D7A 		vstr.32	s15, [r4, #372]
 857 0142 C4ED5C7A 		vstr.32	s15, [r4, #368]
 858 0146 78B1     		cbz	r0, .L122
 859 0148 94ED4D7A 		vldr.32	s14, [r4, #308]
 860 014c F4EEC77A 		vcmpe.f32	s15, s14
 861 0150 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 862 0154 13D4     		bmi	.L134
 863 0156 94ED4E7A 		vldr.32	s14, [r4, #312]
 864 015a F4EEC77A 		vcmpe.f32	s15, s14
 865 015e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 866 0162 CCBF     		ite	gt
 867 0164 0320     		movgt	r0, #3
 868 0166 0020     		movle	r0, #0
 869              	.L122:
 870 0168 0223     		movs	r3, #2
 871 016a 84F88331 		strb	r3, [r4, #387]
 872 016e 04B0     		add	sp, sp, #16
 873              		@ sp needed
 874 0170 BDEC028B 		vldm	sp!, {d8}
 875 0174 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 876              	.L154:
 877 0178 C4ED5D7A 		vstr.32	s15, [r4, #372]
 878 017c 98E7     		b	.L127
 879              	.L134:
 880 017e 0220     		movs	r0, #2
 881 0180 F2E7     		b	.L122
 882              	.L136:
 883 0182 0220     		movs	r0, #2
 884 0184 6CE7     		b	.L115
 885              	.L156:
 886 0186 00BF     		.align	2
 887              	.L155:
 888 0188 00000000 		.word	reprap
 889 018c 14000000 		.word	.LC9
 890 0190 00000000 		.word	.LC16
 891 0194 0C000000 		.word	.LC17
 892              		.size	_ZN20LaserFilamentMonitor13CheckFilamentEffb, .-_ZN20LaserFilamentMonitor13CheckFilamentEffb
 893              		.section	.text._ZN20LaserFilamentMonitor5CheckEbbbf,"ax",%progbits
 894              		.align	1
 895              		.p2align 2,,3
 896              		.global	_ZN20LaserFilamentMonitor5CheckEbbbf
 897              		.syntax unified
 898              		.thumb
 899              		.thumb_func
 900              		.fpu fpv4-sp-d16
 901              		.type	_ZN20LaserFilamentMonitor5CheckEbbbf, %function
 902              	_ZN20LaserFilamentMonitor5CheckEbbbf:
 903              		@ args = 0, pretend = 0, frame = 0
 904              		@ frame_needed = 0, uses_anonymous_args = 0
 905 0000 38B5     		push	{r3, r4, r5, lr}
 906 0002 0446     		mov	r4, r0
 907 0004 0D46     		mov	r5, r1
 908 0006 62B3     		cbz	r2, .L158
 909 0008 0122     		movs	r2, #1
 910 000a 80F86521 		strb	r2, [r0, #357]
 911 000e 83BB     		cbnz	r3, .L178
 912              	.L161:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 17


 913 0010 2046     		mov	r0, r4
 914 0012 FFF7FEFF 		bl	_ZN20LaserFilamentMonitor18HandleIncomingDataEv
 915 0016 15B3     		cbz	r5, .L167
 916 0018 B4F84211 		ldrh	r1, [r4, #322]
 917 001c 8B04     		lsls	r3, r1, #18
 918 001e 3FD4     		bmi	.L169
 919 0020 B4F84C31 		ldrh	r3, [r4, #332]
 920 0024 1940     		ands	r1, r1, r3
 921 0026 48D1     		bne	.L170
 922 0028 94ED5A0A 		vldr.32	s0, [r4, #360]
 923 002c D4ED4F7A 		vldr.32	s15, [r4, #316]
 924 0030 B4EEE70A 		vcmpe.f32	s0, s15
 925 0034 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 926 0038 34DA     		bge	.L179
 927 003a 94ED577A 		vldr.32	s14, [r4, #348]
 928 003e 77EEA77A 		vadd.f32	s15, s15, s15
 929 0042 30EE070A 		vadd.f32	s0, s0, s14
 930 0046 B4EEE70A 		vcmpe.f32	s0, s15
 931 004a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 932 004e 06DB     		blt	.L167
 933 0050 FFF7FEFF 		bl	millis
 934 0054 D4F84831 		ldr	r3, [r4, #328]
 935 0058 C01A     		subs	r0, r0, r3
 936 005a DC28     		cmp	r0, #220
 937 005c 2FD8     		bhi	.L180
 938              	.L167:
 939 005e 0020     		movs	r0, #0
 940 0060 38BD     		pop	{r3, r4, r5, pc}
 941              	.L158:
 942 0062 D0ED577A 		vldr.32	s15, [r0, #348]
 943 0066 37EE800A 		vadd.f32	s0, s15, s0
 944 006a 80ED570A 		vstr.32	s0, [r0, #348]
 945 006e 002B     		cmp	r3, #0
 946 0070 CED0     		beq	.L161
 947              	.L178:
 948 0072 2046     		mov	r0, r4
 949 0074 FFF7FEFF 		bl	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv
 950 0078 0028     		cmp	r0, #0
 951 007a C9D0     		beq	.L161
 952 007c D4F85C31 		ldr	r3, [r4, #348]	@ float
 953 0080 94F86511 		ldrb	r1, [r4, #357]	@ zero_extendqisi2
 954 0084 C4F85831 		str	r3, [r4, #344]	@ float
 955 0088 0020     		movs	r0, #0
 956 008a 0122     		movs	r2, #1
 957 008c 0023     		movs	r3, #0
 958 008e C4F85C01 		str	r0, [r4, #348]	@ float
 959 0092 84F86411 		strb	r1, [r4, #356]
 960 0096 84F86621 		strb	r2, [r4, #358]
 961 009a 84F86531 		strb	r3, [r4, #357]
 962 009e B7E7     		b	.L161
 963              	.L169:
 964 00a0 0420     		movs	r0, #4
 965 00a2 38BD     		pop	{r3, r4, r5, pc}
 966              	.L179:
 967 00a4 D4ED5B0A 		vldr.32	s1, [r4, #364]
 968 00a8 2046     		mov	r0, r4
 969 00aa FFF7FEFF 		bl	_ZN20LaserFilamentMonitor13CheckFilamentEffb
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 18


 970 00ae 0023     		movs	r3, #0
 971 00b0 C4F86C31 		str	r3, [r4, #364]	@ float
 972 00b4 C4F86831 		str	r3, [r4, #360]	@ float
 973 00b8 38BD     		pop	{r3, r4, r5, pc}
 974              	.L170:
 975 00ba 0120     		movs	r0, #1
 976 00bc 38BD     		pop	{r3, r4, r5, pc}
 977              	.L180:
 978 00be 2046     		mov	r0, r4
 979 00c0 FFF7FEFF 		bl	_ZNK21Duet3DFilamentMonitor11IsReceivingEv
 980 00c4 0028     		cmp	r0, #0
 981 00c6 CAD1     		bne	.L167
 982 00c8 D4ED5B0A 		vldr.32	s1, [r4, #364]
 983 00cc 94ED587A 		vldr.32	s14, [r4, #352]
 984 00d0 94ED5A0A 		vldr.32	s0, [r4, #360]
 985 00d4 D4ED577A 		vldr.32	s15, [r4, #348]
 986 00d8 70EE870A 		vadd.f32	s1, s1, s14
 987 00dc 30EE270A 		vadd.f32	s0, s0, s15
 988 00e0 0121     		movs	r1, #1
 989 00e2 2046     		mov	r0, r4
 990 00e4 FFF7FEFF 		bl	_ZN20LaserFilamentMonitor13CheckFilamentEffb
 991 00e8 0023     		movs	r3, #0
 992 00ea C4F86031 		str	r3, [r4, #352]	@ float
 993 00ee C4F86C31 		str	r3, [r4, #364]	@ float
 994 00f2 C4F85C31 		str	r3, [r4, #348]	@ float
 995 00f6 C4F86831 		str	r3, [r4, #360]	@ float
 996 00fa 38BD     		pop	{r3, r4, r5, pc}
 997              		.size	_ZN20LaserFilamentMonitor5CheckEbbbf, .-_ZN20LaserFilamentMonitor5CheckEbbbf
 998              		.global	_ZTV20LaserFilamentMonitor
 999              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1000              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1001              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1002              	_ZL28cpu_irq_prev_interrupt_state:
 1003 0000 00       		.space	1
 1004              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1005              		.align	2
 1006              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1007              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1008              	_ZL32cpu_irq_critical_section_counter:
 1009 0000 00000000 		.space	4
 1010              		.section	.rodata._ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej.str1.4,"aMS",%progbits,1
 1011              		.align	2
 1012              	.LC0:
 1013 0000 6572726F 		.ascii	"error\000"
 1013      7200
 1014 0006 0000     		.space	2
 1015              	.LC1:
 1016 0008 6E6F2064 		.ascii	"no data received\000"
 1016      61746120 
 1016      72656365 
 1016      69766564 
 1016      00
 1017 0019 000000   		.space	3
 1018              	.LC2:
 1019 001c 6F6B00   		.ascii	"ok\000"
 1020 001f 00       		.space	1
 1021              	.LC3:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 19


 1022 0020 6E6F2066 		.ascii	"no filament\000"
 1022      696C616D 
 1022      656E7400 
 1023              	.LC4:
 1024 002c 45787472 		.ascii	"Extruder %u sensor: position %.2f, %s, \000"
 1024      75646572 
 1024      20257520 
 1024      73656E73 
 1024      6F723A20 
 1025              	.LC5:
 1026 0054 6672616D 		.ascii	"framing errors %lu, parity errors %lu, \000"
 1026      696E6720 
 1026      6572726F 
 1026      72732025 
 1026      6C752C20 
 1027              	.LC6:
 1028 007c 6D656173 		.ascii	"measured minimum %ld%%, average %ld%%, maximum %ld%"
 1028      75726564 
 1028      206D696E 
 1028      696D756D 
 1028      20256C64 
 1029 00af 25206F76 		.ascii	"% over %.1fmm\012\000"
 1029      65722025 
 1029      2E31666D 
 1029      6D0A00
 1030 00be 0000     		.space	2
 1031              	.LC7:
 1032 00c0 6E6F2063 		.ascii	"no calibration data\012\000"
 1032      616C6962 
 1032      72617469 
 1032      6F6E2064 
 1032      6174610A 
 1033              		.section	.rodata._ZN20LaserFilamentMonitor13CheckFilamentEffb.str1.4,"aMS",%progbits,1
 1034              		.align	2
 1035              	.LC16:
 1036 0000 206F7665 		.ascii	" overdue\000"
 1036      72647565 
 1036      00
 1037 0009 000000   		.space	3
 1038              	.LC17:
 1039 000c 45787472 		.ascii	"Extr req %.3f meas %.3f%s\012\000"
 1039      20726571 
 1039      20252E33 
 1039      66206D65 
 1039      61732025 
 1040              		.section	.rodata._ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb.str1.4,"aMS",%pr
 1041              		.align	2
 1042              	.LC8:
 1043 0000 20776974 		.ascii	" with microswitch\000"
 1043      68206D69 
 1043      63726F73 
 1043      77697463 
 1043      6800
 1044 0012 0000     		.space	2
 1045              	.LC9:
 1046 0014 00       		.ascii	"\000"
 1047 0015 000000   		.space	3
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 20


 1048              	.LC10:
 1049 0018 656E6162 		.ascii	"enabled\000"
 1049      6C656400 
 1050              	.LC11:
 1051 0020 64697361 		.ascii	"disabled\000"
 1051      626C6564 
 1051      00
 1052 0029 000000   		.space	3
 1053              	.LC12:
 1054 002c 44756574 		.ascii	"Duet3D laser filament monitor%s on endstop input %u"
 1054      3344206C 
 1054      61736572 
 1054      2066696C 
 1054      616D656E 
 1055 005f 2C202573 		.ascii	", %s, allowed movement %ld%% to %ld%%, check every "
 1055      2C20616C 
 1055      6C6F7765 
 1055      64206D6F 
 1055      76656D65 
 1056 0092 252E3166 		.ascii	"%.1fmm, \000"
 1056      6D6D2C20 
 1056      00
 1057 009b 00       		.space	1
 1058              	.LC13:
 1059 009c 63757272 		.ascii	"current position %.1f, brightness %u, shutter %u, \000"
 1059      656E7420 
 1059      706F7369 
 1059      74696F6E 
 1059      20252E31 
 1060 00cf 00       		.space	1
 1061              	.LC14:
 1062 00d0 6D656173 		.ascii	"measured minimum %ld%%, average %ld%%, maximum %ld%"
 1062      75726564 
 1062      206D696E 
 1062      696D756D 
 1062      20256C64 
 1063 0103 25206F76 		.ascii	"% over %.1fmm\000"
 1063      65722025 
 1063      2E31666D 
 1063      6D00
 1064 0111 000000   		.space	3
 1065              	.LC15:
 1066 0114 6E6F2063 		.ascii	"no calibration data\000"
 1066      616C6962 
 1066      72617469 
 1066      6F6E2064 
 1066      61746100 
 1067              		.section	.rodata._ZTV20LaserFilamentMonitor,"a",%progbits
 1068              		.align	2
 1069              		.set	.LANCHOR0,. + 0
 1070              		.type	_ZTV20LaserFilamentMonitor, %object
 1071              		.size	_ZTV20LaserFilamentMonitor, 40
 1072              	_ZTV20LaserFilamentMonitor:
 1073 0000 00000000 		.word	0
 1074 0004 00000000 		.word	0
 1075 0008 00000000 		.word	_ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 1076 000c 00000000 		.word	_ZN20LaserFilamentMonitor5CheckEbbbf
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccPl43o5.s 			page 21


 1077 0010 00000000 		.word	_ZN20LaserFilamentMonitor5ClearEb
 1078 0014 00000000 		.word	_ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej
 1079 0018 00000000 		.word	_ZN21Duet3DFilamentMonitor9InterruptEv
 1080 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 1081 0020 00000000 		.word	_ZN20LaserFilamentMonitorD1Ev
 1082 0024 00000000 		.word	_ZN20LaserFilamentMonitorD0Ev
 1083              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
