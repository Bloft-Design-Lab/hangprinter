ARM GAS  /tmp/cc12Ue2k.s 			page 1


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
  14              		.global	__aeabi_f2d
  15              		.section	.text._ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej, %function
  24              	_ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
  28 0004 2DED028B 		vpush.64	{d8}
  29 0008 90F88131 		ldrb	r3, [r0, #385]	@ zero_extendqisi2
  30 000c 0E46     		mov	r6, r1
  31 000e 85B0     		sub	sp, sp, #20
  32 0010 0446     		mov	r4, r0
  33 0012 B0F84211 		ldrh	r1, [r0, #322]
  34 0016 9046     		mov	r8, r2
  35 0018 4BB1     		cbz	r3, .L8
  36 001a 8B04     		lsls	r3, r1, #18
  37 001c 41D4     		bmi	.L9
  38 001e B0F84C21 		ldrh	r2, [r0, #332]
  39 0022 3E4B     		ldr	r3, .L23
  40 0024 3E48     		ldr	r0, .L23+4
  41 0026 1142     		tst	r1, r2
  42 0028 08BF     		it	eq
  43 002a 1846     		moveq	r0, r3
  44 002c 00E0     		b	.L2
  45              	.L8:
  46 002e 3D48     		ldr	r0, .L23+8
  47              	.L2:
  48 0030 9FED3D7A 		vldr.32	s14, .L23+12
  49 0034 3D4D     		ldr	r5, .L23+16
  50 0036 C1F30901 		ubfx	r1, r1, #0, #10
  51 003a B1F5007F 		cmp	r1, #512
  52 003e 88BF     		it	hi
  53 0040 A1F58061 		subhi	r1, r1, #1024
  54 0044 07EE901A 		vmov	s15, r1	@ int
  55 0048 F8EEE77A 		vcvt.f32.s32	s15, s15
  56 004c 2F68     		ldr	r7, [r5]	@ unaligned
  57 004e 0290     		str	r0, [sp, #8]
ARM GAS  /tmp/cc12Ue2k.s 			page 2


  58 0050 67EE877A 		vmul.f32	s15, s15, s14
  59 0054 17EE900A 		vmov	r0, s15
  60 0058 FFF7FEFF 		bl	__aeabi_f2d
  61 005c 4346     		mov	r3, r8
  62 005e CDE90001 		strd	r0, [sp]
  63 0062 334A     		ldr	r2, .L23+20
  64 0064 3846     		mov	r0, r7
  65 0066 3146     		mov	r1, r6
  66 0068 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
  67 006c 94F88131 		ldrb	r3, [r4, #385]	@ zero_extendqisi2
  68 0070 CBB9     		cbnz	r3, .L21
  69              	.L4:
  70 0072 94F88331 		ldrb	r3, [r4, #387]	@ zero_extendqisi2
  71 0076 2D68     		ldr	r5, [r5]
  72 0078 012B     		cmp	r3, #1
  73 007a 08D0     		beq	.L5
  74 007c 94ED5E7A 		vldr.32	s14, [r4, #376]
  75 0080 F2EE047A 		vmov.f32	s15, #1.0e+1
  76 0084 B4EEE77A 		vcmpe.f32	s14, s15
  77 0088 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  78 008c 16DC     		bgt	.L22
  79              	.L5:
  80 008e 294A     		ldr	r2, .L23+24
  81 0090 3146     		mov	r1, r6
  82 0092 2846     		mov	r0, r5
  83 0094 05B0     		add	sp, sp, #20
  84              		@ sp needed
  85 0096 BDEC028B 		vldm	sp!, {d8}
  86 009a BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
  87 009e FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
  88              	.L9:
  89 00a2 2548     		ldr	r0, .L23+28
  90 00a4 C4E7     		b	.L2
  91              	.L21:
  92 00a6 D4F85421 		ldr	r2, [r4, #340]
  93 00aa D4F85031 		ldr	r3, [r4, #336]
  94 00ae 2868     		ldr	r0, [r5]
  95 00b0 0092     		str	r2, [sp]
  96 00b2 3146     		mov	r1, r6
  97 00b4 214A     		ldr	r2, .L23+32
  98 00b6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
  99 00ba DAE7     		b	.L4
 100              	.L22:
 101 00bc 9FED208A 		vldr.32	s16, .L23+36
 102 00c0 94ED5C0A 		vldr.32	s0, [r4, #368]
 103 00c4 20EE080A 		vmul.f32	s0, s0, s16
 104 00c8 FFF7FEFF 		bl	lrintf
 105 00cc D4ED5F7A 		vldr.32	s15, [r4, #380]
 106 00d0 94ED5E0A 		vldr.32	s0, [r4, #376]
 107 00d4 67EE887A 		vmul.f32	s15, s15, s16
 108 00d8 0746     		mov	r7, r0
 109 00da 87EE800A 		vdiv.f32	s0, s15, s0
 110 00de FFF7FEFF 		bl	lrintf
 111 00e2 8146     		mov	r9, r0
 112 00e4 94ED5D0A 		vldr.32	s0, [r4, #372]
 113 00e8 20EE080A 		vmul.f32	s0, s0, s16
 114 00ec FFF7FEFF 		bl	lrintf
ARM GAS  /tmp/cc12Ue2k.s 			page 3


 115 00f0 8046     		mov	r8, r0
 116 00f2 D4F87801 		ldr	r0, [r4, #376]	@ float
 117 00f6 FFF7FEFF 		bl	__aeabi_f2d
 118 00fa CDF80090 		str	r9, [sp]
 119 00fe CDE90201 		strd	r0, [sp, #8]
 120 0102 CDF80480 		str	r8, [sp, #4]
 121 0106 3B46     		mov	r3, r7
 122 0108 3146     		mov	r1, r6
 123 010a 2846     		mov	r0, r5
 124 010c 0D4A     		ldr	r2, .L23+40
 125 010e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 126 0112 05B0     		add	sp, sp, #20
 127              		@ sp needed
 128 0114 BDEC028B 		vldm	sp!, {d8}
 129 0118 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 130              	.L24:
 131              		.align	2
 132              	.L23:
 133 011c 1C000000 		.word	.LC2
 134 0120 20000000 		.word	.LC3
 135 0124 08000000 		.word	.LC1
 136 0128 0AD7A33C 		.word	1017370378
 137 012c 00000000 		.word	reprap
 138 0130 2C000000 		.word	.LC4
 139 0134 C0000000 		.word	.LC7
 140 0138 00000000 		.word	.LC0
 141 013c 54000000 		.word	.LC5
 142 0140 0000C842 		.word	1120403456
 143 0144 7C000000 		.word	.LC6
 144              		.size	_ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej, .-_ZN20LaserFilamentMonitor11Diagnost
 145              		.section	.text._ZN20LaserFilamentMonitorD2Ev,"axG",%progbits,_ZN20LaserFilamentMonitorD5Ev,comdat
 146              		.align	1
 147              		.p2align 2,,3
 148              		.weak	_ZN20LaserFilamentMonitorD2Ev
 149              		.syntax unified
 150              		.thumb
 151              		.thumb_func
 152              		.fpu fpv4-sp-d16
 153              		.type	_ZN20LaserFilamentMonitorD2Ev, %function
 154              	_ZN20LaserFilamentMonitorD2Ev:
 155              		@ args = 0, pretend = 0, frame = 0
 156              		@ frame_needed = 0, uses_anonymous_args = 0
 157 0000 10B5     		push	{r4, lr}
 158 0002 034B     		ldr	r3, .L27
 159 0004 0360     		str	r3, [r0]
 160 0006 0446     		mov	r4, r0
 161 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
 162 000c 2046     		mov	r0, r4
 163 000e 10BD     		pop	{r4, pc}
 164              	.L28:
 165              		.align	2
 166              	.L27:
 167 0010 08000000 		.word	_ZTV21Duet3DFilamentMonitor+8
 168              		.size	_ZN20LaserFilamentMonitorD2Ev, .-_ZN20LaserFilamentMonitorD2Ev
 169              		.weak	_ZN20LaserFilamentMonitorD1Ev
 170              		.thumb_set _ZN20LaserFilamentMonitorD1Ev,_ZN20LaserFilamentMonitorD2Ev
 171              		.section	.text._ZN20LaserFilamentMonitorD0Ev,"axG",%progbits,_ZN20LaserFilamentMonitorD5Ev,comdat
ARM GAS  /tmp/cc12Ue2k.s 			page 4


 172              		.align	1
 173              		.p2align 2,,3
 174              		.weak	_ZN20LaserFilamentMonitorD0Ev
 175              		.syntax unified
 176              		.thumb
 177              		.thumb_func
 178              		.fpu fpv4-sp-d16
 179              		.type	_ZN20LaserFilamentMonitorD0Ev, %function
 180              	_ZN20LaserFilamentMonitorD0Ev:
 181              		@ args = 0, pretend = 0, frame = 0
 182              		@ frame_needed = 0, uses_anonymous_args = 0
 183 0000 10B5     		push	{r4, lr}
 184 0002 064B     		ldr	r3, .L31
 185 0004 0360     		str	r3, [r0]
 186 0006 0446     		mov	r4, r0
 187 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
 188 000c 2046     		mov	r0, r4
 189 000e 4FF4C271 		mov	r1, #388
 190 0012 FFF7FEFF 		bl	_ZdlPvj
 191 0016 2046     		mov	r0, r4
 192 0018 10BD     		pop	{r4, pc}
 193              	.L32:
 194 001a 00BF     		.align	2
 195              	.L31:
 196 001c 08000000 		.word	_ZTV21Duet3DFilamentMonitor+8
 197              		.size	_ZN20LaserFilamentMonitorD0Ev, .-_ZN20LaserFilamentMonitorD0Ev
 198              		.section	.text._ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb,"ax",%progbits
 199              		.align	1
 200              		.p2align 2,,3
 201              		.global	_ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 202              		.syntax unified
 203              		.thumb
 204              		.thumb_func
 205              		.fpu fpv4-sp-d16
 206              		.type	_ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, %function
 207              	_ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb:
 208              		@ args = 0, pretend = 0, frame = 16
 209              		@ frame_needed = 0, uses_anonymous_args = 0
 210 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 211 0004 2DED028B 		vpush.64	{d8}
 212 0008 8BB0     		sub	sp, sp, #44
 213 000a 1E46     		mov	r6, r3
 214 000c 0093     		str	r3, [sp]
 215 000e 0323     		movs	r3, #3
 216 0010 0446     		mov	r4, r0
 217 0012 0F46     		mov	r7, r1
 218 0014 9046     		mov	r8, r2
 219 0016 FFF7FEFF 		bl	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb
 220 001a 0546     		mov	r5, r0
 221 001c 28B1     		cbz	r0, .L61
 222              	.L34:
 223 001e 2846     		mov	r0, r5
 224 0020 0BB0     		add	sp, sp, #44
 225              		@ sp needed
 226 0022 BDEC028B 		vldm	sp!, {d8}
 227 0026 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 228              	.L61:
ARM GAS  /tmp/cc12Ue2k.s 			page 5


 229 002a 4521     		movs	r1, #69
 230 002c 3846     		mov	r0, r7
 231 002e 3346     		mov	r3, r6
 232 0030 04F59E72 		add	r2, r4, #316
 233 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 234 0038 5221     		movs	r1, #82
 235 003a 3846     		mov	r0, r7
 236 003c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 237 0040 0028     		cmp	r0, #0
 238 0042 40F0AA80 		bne	.L62
 239              	.L35:
 240 0046 5321     		movs	r1, #83
 241 0048 3846     		mov	r0, r7
 242 004a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 243 004e 0028     		cmp	r0, #0
 244 0050 71D1     		bne	.L63
 245 0052 3778     		ldrb	r7, [r6]	@ zero_extendqisi2
 246 0054 002F     		cmp	r7, #0
 247 0056 7CD1     		bne	.L64
 248              	.L40:
 249 0058 94ED4D0A 		vldr.32	s0, [r4, #308]
 250 005c 9FED7A8A 		vldr.32	s16, .L68
 251 0060 7A4A     		ldr	r2, .L68+4
 252 0062 7B4B     		ldr	r3, .L68+8
 253 0064 94F84011 		ldrb	r1, [r4, #320]	@ zero_extendqisi2
 254 0068 B4F84C01 		ldrh	r0, [r4, #332]
 255 006c 794D     		ldr	r5, .L68+12
 256 006e 7A4E     		ldr	r6, .L68+16
 257 0070 D4F81090 		ldr	r9, [r4, #16]
 258 0074 20EE080A 		vmul.f32	s0, s0, s16
 259 0078 0028     		cmp	r0, #0
 260 007a 08BF     		it	eq
 261 007c 1546     		moveq	r5, r2
 262 007e 0029     		cmp	r1, #0
 263 0080 08BF     		it	eq
 264 0082 1E46     		moveq	r6, r3
 265 0084 FFF7FEFF 		bl	lrintf
 266 0088 94ED4E0A 		vldr.32	s0, [r4, #312]
 267 008c 20EE080A 		vmul.f32	s0, s0, s16
 268 0090 8246     		mov	r10, r0
 269 0092 FFF7FEFF 		bl	lrintf
 270 0096 8346     		mov	fp, r0
 271 0098 D4F83C01 		ldr	r0, [r4, #316]	@ float
 272 009c FFF7FEFF 		bl	__aeabi_f2d
 273 00a0 2A46     		mov	r2, r5
 274 00a2 CDE90401 		strd	r0, [sp, #16]
 275 00a6 0096     		str	r6, [sp]
 276 00a8 CDE901AB 		strd	r10, fp, [sp, #4]
 277 00ac 4B46     		mov	r3, r9
 278 00ae 6B49     		ldr	r1, .L68+20
 279 00b0 4046     		mov	r0, r8
 280 00b2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 281 00b6 94F88151 		ldrb	r5, [r4, #385]	@ zero_extendqisi2
 282 00ba BDB3     		cbz	r5, .L65
 283 00bc B4F84231 		ldrh	r3, [r4, #322]
 284 00c0 9A04     		lsls	r2, r3, #18
 285 00c2 00F18F80 		bmi	.L66
ARM GAS  /tmp/cc12Ue2k.s 			page 6


 286 00c6 C3F30903 		ubfx	r3, r3, #0, #10
 287 00ca B3F5007F 		cmp	r3, #512
 288 00ce 88BF     		it	hi
 289 00d0 A3F58063 		subhi	r3, r3, #1024
 290 00d4 07EE903A 		vmov	s15, r3	@ int
 291 00d8 9FED617A 		vldr.32	s14, .L68+24
 292 00dc B4F84451 		ldrh	r5, [r4, #324]
 293 00e0 F8EEE77A 		vcvt.f32.s32	s15, s15
 294 00e4 C5F30526 		ubfx	r6, r5, #8, #6
 295 00e8 67EE877A 		vmul.f32	s15, s15, s14
 296 00ec EDB2     		uxtb	r5, r5
 297 00ee 17EE900A 		vmov	r0, s15
 298 00f2 FFF7FEFF 		bl	__aeabi_f2d
 299 00f6 CDE90056 		strd	r5, r6, [sp]
 300 00fa 0B46     		mov	r3, r1
 301 00fc 0246     		mov	r2, r0
 302 00fe 5949     		ldr	r1, .L68+28
 303 0100 4046     		mov	r0, r8
 304 0102 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 305 0106 94F88331 		ldrb	r3, [r4, #387]	@ zero_extendqisi2
 306 010a 012B     		cmp	r3, #1
 307 010c 08D0     		beq	.L46
 308 010e 94ED5E7A 		vldr.32	s14, [r4, #376]
 309 0112 F2EE047A 		vmov.f32	s15, #1.0e+1
 310 0116 B4EEE77A 		vcmpe.f32	s14, s15
 311 011a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 312 011e 67DC     		bgt	.L67
 313              	.L46:
 314 0120 4046     		mov	r0, r8
 315 0122 5149     		ldr	r1, .L68+32
 316 0124 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 317 0128 0025     		movs	r5, #0
 318 012a 78E7     		b	.L34
 319              	.L65:
 320 012c 4046     		mov	r0, r8
 321 012e 4F49     		ldr	r1, .L68+36
 322 0130 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 323 0134 73E7     		b	.L34
 324              	.L63:
 325 0136 0123     		movs	r3, #1
 326 0138 3846     		mov	r0, r7
 327 013a 3370     		strb	r3, [r6]
 328 013c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 329 0140 0028     		cmp	r0, #0
 330 0142 D4BF     		ite	le
 331 0144 0020     		movle	r0, #0
 332 0146 0120     		movgt	r0, #1
 333 0148 84F84001 		strb	r0, [r4, #320]
 334 014c 3778     		ldrb	r7, [r6]	@ zero_extendqisi2
 335 014e 002F     		cmp	r7, #0
 336 0150 82D0     		beq	.L40
 337              	.L64:
 338 0152 0026     		movs	r6, #0
 339 0154 2046     		mov	r0, r4
 340 0156 A4F84261 		strh	r6, [r4, #322]	@ movhi
 341 015a C4F85061 		str	r6, [r4, #336]
 342 015e C4F85461 		str	r6, [r4, #340]
ARM GAS  /tmp/cc12Ue2k.s 			page 7


 343 0162 C4F84861 		str	r6, [r4, #328]
 344 0166 84F88261 		strb	r6, [r4, #386]
 345 016a FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 346 016e 0023     		movs	r3, #0
 347 0170 0122     		movs	r2, #1
 348 0172 2846     		mov	r0, r5
 349 0174 84F88361 		strb	r6, [r4, #387]
 350 0178 84F86661 		strb	r6, [r4, #358]
 351 017c C4F86031 		str	r3, [r4, #352]	@ float
 352 0180 C4F86C31 		str	r3, [r4, #364]	@ float
 353 0184 C4F85C31 		str	r3, [r4, #348]	@ float
 354 0188 C4F86831 		str	r3, [r4, #360]	@ float
 355 018c 84F86521 		strb	r2, [r4, #357]
 356 0190 0BB0     		add	sp, sp, #44
 357              		@ sp needed
 358 0192 BDEC028B 		vldm	sp!, {d8}
 359 0196 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 360              	.L62:
 361 019a 0AAA     		add	r2, sp, #40
 362 019c 0223     		movs	r3, #2
 363 019e 42F80C3D 		str	r3, [r2, #-12]!
 364 01a2 0123     		movs	r3, #1
 365 01a4 3370     		strb	r3, [r6]
 366 01a6 08A9     		add	r1, sp, #32
 367 01a8 2B46     		mov	r3, r5
 368 01aa 3846     		mov	r0, r7
 369 01ac FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 370 01b0 079B     		ldr	r3, [sp, #28]
 371 01b2 002B     		cmp	r3, #0
 372 01b4 3FF447AF 		beq	.L35
 373 01b8 DDED087A 		vldr.32	s15, [sp, #32]	@ int
 374 01bc DFED2C6A 		vldr.32	s13, .L68+40
 375 01c0 B8EE677A 		vcvt.f32.u32	s14, s15
 376 01c4 012B     		cmp	r3, #1
 377 01c6 27EE267A 		vmul.f32	s14, s14, s13
 378 01ca 84ED4D7A 		vstr.32	s14, [r4, #308]
 379 01ce 7FF63AAF 		bls	.L35
 380 01d2 DDED097A 		vldr.32	s15, [sp, #36]	@ int
 381 01d6 F8EE677A 		vcvt.f32.u32	s15, s15
 382 01da 67EEA67A 		vmul.f32	s15, s15, s13
 383 01de C4ED4E7A 		vstr.32	s15, [r4, #312]
 384 01e2 30E7     		b	.L35
 385              	.L66:
 386 01e4 4046     		mov	r0, r8
 387 01e6 2349     		ldr	r1, .L68+44
 388 01e8 3D46     		mov	r5, r7
 389 01ea FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 390 01ee 16E7     		b	.L34
 391              	.L67:
 392 01f0 9FED158A 		vldr.32	s16, .L68
 393 01f4 94ED5C0A 		vldr.32	s0, [r4, #368]
 394 01f8 20EE080A 		vmul.f32	s0, s0, s16
 395 01fc FFF7FEFF 		bl	lrintf
 396 0200 D4ED5F7A 		vldr.32	s15, [r4, #380]
 397 0204 94ED5E0A 		vldr.32	s0, [r4, #376]
 398 0208 67EE887A 		vmul.f32	s15, s15, s16
 399 020c 0646     		mov	r6, r0
ARM GAS  /tmp/cc12Ue2k.s 			page 8


 400 020e 87EE800A 		vdiv.f32	s0, s15, s0
 401 0212 FFF7FEFF 		bl	lrintf
 402 0216 0746     		mov	r7, r0
 403 0218 0025     		movs	r5, #0
 404 021a 94ED5D0A 		vldr.32	s0, [r4, #372]
 405 021e 20EE080A 		vmul.f32	s0, s0, s16
 406 0222 FFF7FEFF 		bl	lrintf
 407 0226 8146     		mov	r9, r0
 408 0228 D4F87801 		ldr	r0, [r4, #376]	@ float
 409 022c FFF7FEFF 		bl	__aeabi_f2d
 410 0230 CDF80090 		str	r9, [sp]
 411 0234 CDE90201 		strd	r0, [sp, #8]
 412 0238 3B46     		mov	r3, r7
 413 023a 3246     		mov	r2, r6
 414 023c 4046     		mov	r0, r8
 415 023e 0E49     		ldr	r1, .L68+48
 416 0240 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 417 0244 EBE6     		b	.L34
 418              	.L69:
 419 0246 00BF     		.align	2
 420              	.L68:
 421 0248 0000C842 		.word	1120403456
 422 024c 14000000 		.word	.LC9
 423 0250 20000000 		.word	.LC11
 424 0254 00000000 		.word	.LC8
 425 0258 18000000 		.word	.LC10
 426 025c 2C000000 		.word	.LC12
 427 0260 0AD7A33C 		.word	1017370378
 428 0264 9C000000 		.word	.LC13
 429 0268 14010000 		.word	.LC15
 430 026c 08000000 		.word	.LC1
 431 0270 0AD7233C 		.word	1008981770
 432 0274 00000000 		.word	.LC0
 433 0278 D0000000 		.word	.LC14
 434              		.size	_ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, .-_ZN20LaserFilamentMonito
 435              		.section	.text._ZN20LaserFilamentMonitorC2Eji,"ax",%progbits
 436              		.align	1
 437              		.p2align 2,,3
 438              		.global	_ZN20LaserFilamentMonitorC2Eji
 439              		.syntax unified
 440              		.thumb
 441              		.thumb_func
 442              		.fpu fpv4-sp-d16
 443              		.type	_ZN20LaserFilamentMonitorC2Eji, %function
 444              	_ZN20LaserFilamentMonitorC2Eji:
 445              		@ args = 0, pretend = 0, frame = 0
 446              		@ frame_needed = 0, uses_anonymous_args = 0
 447 0000 38B5     		push	{r3, r4, r5, lr}
 448 0002 0446     		mov	r4, r0
 449 0004 1546     		mov	r5, r2
 450 0006 FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitorC2Eji
 451 000a 1B4B     		ldr	r3, .L74
 452 000c 2360     		str	r3, [r4]
 453 000e 062D     		cmp	r5, #6
 454 0010 08BF     		it	eq
 455 0012 4FF48053 		moveq	r3, #4096
 456 0016 4FF00005 		mov	r5, #0
ARM GAS  /tmp/cc12Ue2k.s 			page 9


 457 001a 18BF     		it	ne
 458 001c 0023     		movne	r3, #0
 459 001e 1749     		ldr	r1, .L74+4
 460 0020 174A     		ldr	r2, .L74+8
 461 0022 1848     		ldr	r0, .L74+12
 462 0024 C4F83401 		str	r0, [r4, #308]	@ float
 463 0028 C4F83C21 		str	r2, [r4, #316]	@ float
 464 002c A4F84C31 		strh	r3, [r4, #332]	@ movhi
 465 0030 2046     		mov	r0, r4
 466 0032 C4F83811 		str	r1, [r4, #312]	@ float
 467 0036 84F84051 		strb	r5, [r4, #320]
 468 003a A4F84251 		strh	r5, [r4, #322]	@ movhi
 469 003e C4F85051 		str	r5, [r4, #336]
 470 0042 C4F85451 		str	r5, [r4, #340]
 471 0046 C4F84851 		str	r5, [r4, #328]
 472 004a 84F88251 		strb	r5, [r4, #386]
 473 004e FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 474 0052 0023     		movs	r3, #0
 475 0054 0122     		movs	r2, #1
 476 0056 84F88351 		strb	r5, [r4, #387]
 477 005a 84F86651 		strb	r5, [r4, #358]
 478 005e 84F86521 		strb	r2, [r4, #357]
 479 0062 C4F86031 		str	r3, [r4, #352]	@ float
 480 0066 C4F86C31 		str	r3, [r4, #364]	@ float
 481 006a C4F85C31 		str	r3, [r4, #348]	@ float
 482 006e C4F86831 		str	r3, [r4, #360]	@ float
 483 0072 2046     		mov	r0, r4
 484 0074 38BD     		pop	{r3, r4, r5, pc}
 485              	.L75:
 486 0076 00BF     		.align	2
 487              	.L74:
 488 0078 08000000 		.word	.LANCHOR0+8
 489 007c CDCCCC3F 		.word	1070386381
 490 0080 00004040 		.word	1077936128
 491 0084 9A99193F 		.word	1058642330
 492              		.size	_ZN20LaserFilamentMonitorC2Eji, .-_ZN20LaserFilamentMonitorC2Eji
 493              		.global	_ZN20LaserFilamentMonitorC1Eji
 494              		.thumb_set _ZN20LaserFilamentMonitorC1Eji,_ZN20LaserFilamentMonitorC2Eji
 495              		.section	.text._ZN20LaserFilamentMonitor4InitEv,"ax",%progbits
 496              		.align	1
 497              		.p2align 2,,3
 498              		.global	_ZN20LaserFilamentMonitor4InitEv
 499              		.syntax unified
 500              		.thumb
 501              		.thumb_func
 502              		.fpu fpv4-sp-d16
 503              		.type	_ZN20LaserFilamentMonitor4InitEv, %function
 504              	_ZN20LaserFilamentMonitor4InitEv:
 505              		@ args = 0, pretend = 0, frame = 0
 506              		@ frame_needed = 0, uses_anonymous_args = 0
 507 0000 38B5     		push	{r3, r4, r5, lr}
 508 0002 0025     		movs	r5, #0
 509 0004 0446     		mov	r4, r0
 510 0006 A0F84251 		strh	r5, [r0, #322]	@ movhi
 511 000a C0F85051 		str	r5, [r0, #336]
 512 000e C0F85451 		str	r5, [r0, #340]
 513 0012 C0F84851 		str	r5, [r0, #328]
ARM GAS  /tmp/cc12Ue2k.s 			page 10


 514 0016 80F88251 		strb	r5, [r0, #386]
 515 001a FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 516 001e 0023     		movs	r3, #0
 517 0020 0122     		movs	r2, #1
 518 0022 84F88351 		strb	r5, [r4, #387]
 519 0026 84F86651 		strb	r5, [r4, #358]
 520 002a 84F86521 		strb	r2, [r4, #357]
 521 002e C4F86031 		str	r3, [r4, #352]	@ float
 522 0032 C4F86C31 		str	r3, [r4, #364]	@ float
 523 0036 C4F85C31 		str	r3, [r4, #348]	@ float
 524 003a C4F86831 		str	r3, [r4, #360]	@ float
 525 003e 38BD     		pop	{r3, r4, r5, pc}
 526              		.size	_ZN20LaserFilamentMonitor4InitEv, .-_ZN20LaserFilamentMonitor4InitEv
 527              		.section	.text._ZN20LaserFilamentMonitor5ResetEv,"ax",%progbits
 528              		.align	1
 529              		.p2align 2,,3
 530              		.global	_ZN20LaserFilamentMonitor5ResetEv
 531              		.syntax unified
 532              		.thumb
 533              		.thumb_func
 534              		.fpu fpv4-sp-d16
 535              		.type	_ZN20LaserFilamentMonitor5ResetEv, %function
 536              	_ZN20LaserFilamentMonitor5ResetEv:
 537              		@ args = 0, pretend = 0, frame = 0
 538              		@ frame_needed = 0, uses_anonymous_args = 0
 539              		@ link register save eliminated.
 540 0000 0023     		movs	r3, #0
 541 0002 0022     		movs	r2, #0
 542 0004 0121     		movs	r1, #1
 543 0006 80F86511 		strb	r1, [r0, #357]
 544 000a C0F86031 		str	r3, [r0, #352]	@ float
 545 000e C0F86C31 		str	r3, [r0, #364]	@ float
 546 0012 C0F85C31 		str	r3, [r0, #348]	@ float
 547 0016 C0F86831 		str	r3, [r0, #360]	@ float
 548 001a 80F88321 		strb	r2, [r0, #387]
 549 001e 80F86621 		strb	r2, [r0, #358]
 550 0022 7047     		bx	lr
 551              		.size	_ZN20LaserFilamentMonitor5ResetEv, .-_ZN20LaserFilamentMonitor5ResetEv
 552              		.section	.text._ZNK20LaserFilamentMonitor18GetCurrentPositionEv,"ax",%progbits
 553              		.align	1
 554              		.p2align 2,,3
 555              		.global	_ZNK20LaserFilamentMonitor18GetCurrentPositionEv
 556              		.syntax unified
 557              		.thumb
 558              		.thumb_func
 559              		.fpu fpv4-sp-d16
 560              		.type	_ZNK20LaserFilamentMonitor18GetCurrentPositionEv, %function
 561              	_ZNK20LaserFilamentMonitor18GetCurrentPositionEv:
 562              		@ args = 0, pretend = 0, frame = 0
 563              		@ frame_needed = 0, uses_anonymous_args = 0
 564              		@ link register save eliminated.
 565 0000 B0F84231 		ldrh	r3, [r0, #322]
 566 0004 9FED070A 		vldr.32	s0, .L81
 567 0008 C3F30903 		ubfx	r3, r3, #0, #10
 568 000c B3F5007F 		cmp	r3, #512
 569 0010 88BF     		it	hi
 570 0012 A3F58063 		subhi	r3, r3, #1024
ARM GAS  /tmp/cc12Ue2k.s 			page 11


 571 0016 07EE903A 		vmov	s15, r3	@ int
 572 001a F8EEE77A 		vcvt.f32.s32	s15, s15
 573 001e 27EE800A 		vmul.f32	s0, s15, s0
 574 0022 7047     		bx	lr
 575              	.L82:
 576              		.align	2
 577              	.L81:
 578 0024 0AD7A33C 		.word	1017370378
 579              		.size	_ZNK20LaserFilamentMonitor18GetCurrentPositionEv, .-_ZNK20LaserFilamentMonitor18GetCurrentPo
 580              		.section	.text._ZN20LaserFilamentMonitor18HandleIncomingDataEv,"ax",%progbits
 581              		.align	1
 582              		.p2align 2,,3
 583              		.global	_ZN20LaserFilamentMonitor18HandleIncomingDataEv
 584              		.syntax unified
 585              		.thumb
 586              		.thumb_func
 587              		.fpu fpv4-sp-d16
 588              		.type	_ZN20LaserFilamentMonitor18HandleIncomingDataEv, %function
 589              	_ZN20LaserFilamentMonitor18HandleIncomingDataEv:
 590              		@ args = 0, pretend = 0, frame = 8
 591              		@ frame_needed = 0, uses_anonymous_args = 0
 592 0000 70B5     		push	{r4, r5, r6, lr}
 593 0002 2DED028B 		vpush.64	{d8}
 594 0006 0026     		movs	r6, #0
 595 0008 82B0     		sub	sp, sp, #8
 596 000a 9FED3F8A 		vldr.32	s16, .L105
 597 000e 0446     		mov	r4, r0
 598 0010 0125     		movs	r5, #1
 599 0012 17E0     		b	.L95
 600              	.L85:
 601 0014 D4F85031 		ldr	r3, [r4, #336]
 602 0018 0133     		adds	r3, r3, #1
 603 001a C4F85031 		str	r3, [r4, #336]
 604              	.L87:
 605 001e 94F86631 		ldrb	r3, [r4, #358]	@ zero_extendqisi2
 606 0022 63B1     		cbz	r3, .L92
 607 0024 D4ED577A 		vldr.32	s15, [r4, #348]
 608 0028 94ED567A 		vldr.32	s14, [r4, #344]
 609 002c 94F86431 		ldrb	r3, [r4, #356]	@ zero_extendqisi2
 610 0030 77EE877A 		vadd.f32	s15, s15, s14
 611 0034 C4ED577A 		vstr.32	s15, [r4, #348]
 612 0038 0BB1     		cbz	r3, .L92
 613 003a 84F86551 		strb	r5, [r4, #357]
 614              	.L92:
 615 003e 0023     		movs	r3, #0
 616 0040 84F86631 		strb	r3, [r4, #358]
 617              	.L95:
 618 0044 0DF10601 		add	r1, sp, #6
 619 0048 2046     		mov	r0, r4
 620 004a FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt
 621 004e B0B1     		cbz	r0, .L83
 622 0050 0128     		cmp	r0, #1
 623 0052 DFD1     		bne	.L85
 624 0054 BDF80620 		ldrh	r2, [sp, #6]
 625 0058 82EA1223 		eor	r3, r2, r2, lsr #8
 626 005c 5BB2     		sxtb	r3, r3
 627 005e C3F30311 		ubfx	r1, r3, #4, #4
ARM GAS  /tmp/cc12Ue2k.s 			page 12


 628 0062 4B40     		eors	r3, r3, r1
 629 0064 C3F38501 		ubfx	r1, r3, #2, #6
 630 0068 4B40     		eors	r3, r3, r1
 631 006a 83EA5303 		eor	r3, r3, r3, lsr #1
 632 006e D907     		lsls	r1, r3, #31
 633 0070 09D5     		bpl	.L86
 634 0072 D4F85431 		ldr	r3, [r4, #340]
 635 0076 0133     		adds	r3, r3, #1
 636 0078 C4F85431 		str	r3, [r4, #340]
 637 007c CFE7     		b	.L87
 638              	.L83:
 639 007e 02B0     		add	sp, sp, #8
 640              		@ sp needed
 641 0080 BDEC028B 		vldm	sp!, {d8}
 642 0084 70BD     		pop	{r4, r5, r6, pc}
 643              	.L86:
 644 0086 5304     		lsls	r3, r2, #17
 645 0088 04D5     		bpl	.L88
 646 008a C2F30D02 		ubfx	r2, r2, #0, #14
 647 008e A4F84421 		strh	r2, [r4, #324]	@ movhi
 648 0092 C4E7     		b	.L87
 649              	.L88:
 650 0094 84F88101 		strb	r0, [r4, #385]
 651 0098 FFF7FEFF 		bl	millis
 652 009c BDF80620 		ldrh	r2, [sp, #6]
 653 00a0 B4F84231 		ldrh	r3, [r4, #322]
 654 00a4 C4F84801 		str	r0, [r4, #328]
 655 00a8 D31A     		subs	r3, r2, r3
 656 00aa C3F30903 		ubfx	r3, r3, #0, #10
 657 00ae B3F5007F 		cmp	r3, #512
 658 00b2 25D8     		bhi	.L104
 659              	.L89:
 660 00b4 07EE903A 		vmov	s15, r3	@ int
 661 00b8 94ED587A 		vldr.32	s14, [r4, #352]
 662 00bc 94F86631 		ldrb	r3, [r4, #358]	@ zero_extendqisi2
 663 00c0 A4F84221 		strh	r2, [r4, #322]	@ movhi
 664 00c4 F8EEE77A 		vcvt.f32.s32	s15, s15
 665 00c8 A7EE887A 		vfma.f32	s14, s15, s16
 666 00cc F0EE477A 		vmov.f32	s15, s14
 667 00d0 84ED587A 		vstr.32	s14, [r4, #352]
 668 00d4 002B     		cmp	r3, #0
 669 00d6 B2D0     		beq	.L92
 670 00d8 94F86431 		ldrb	r3, [r4, #356]	@ zero_extendqisi2
 671 00dc 6BB9     		cbnz	r3, .L93
 672 00de D4ED5A6A 		vldr.32	s13, [r4, #360]
 673 00e2 94ED5B7A 		vldr.32	s14, [r4, #364]
 674 00e6 94ED566A 		vldr.32	s12, [r4, #344]
 675 00ea 77EE277A 		vadd.f32	s15, s14, s15
 676 00ee 76EE866A 		vadd.f32	s13, s13, s12
 677 00f2 C4ED5B7A 		vstr.32	s15, [r4, #364]
 678 00f6 C4ED5A6A 		vstr.32	s13, [r4, #360]
 679              	.L93:
 680 00fa C4F86061 		str	r6, [r4, #352]	@ float
 681 00fe 9EE7     		b	.L92
 682              	.L104:
 683 0100 A3F58063 		sub	r3, r3, #1024
 684 0104 D6E7     		b	.L89
ARM GAS  /tmp/cc12Ue2k.s 			page 13


 685              	.L106:
 686 0106 00BF     		.align	2
 687              	.L105:
 688 0108 0AD7A33C 		.word	1017370378
 689              		.size	_ZN20LaserFilamentMonitor18HandleIncomingDataEv, .-_ZN20LaserFilamentMonitor18HandleIncoming
 690              		.section	.text._ZN20LaserFilamentMonitor5ClearEb,"ax",%progbits
 691              		.align	1
 692              		.p2align 2,,3
 693              		.global	_ZN20LaserFilamentMonitor5ClearEb
 694              		.syntax unified
 695              		.thumb
 696              		.thumb_func
 697              		.fpu fpv4-sp-d16
 698              		.type	_ZN20LaserFilamentMonitor5ClearEb, %function
 699              	_ZN20LaserFilamentMonitor5ClearEb:
 700              		@ args = 0, pretend = 0, frame = 0
 701              		@ frame_needed = 0, uses_anonymous_args = 0
 702 0000 38B5     		push	{r3, r4, r5, lr}
 703 0002 0446     		mov	r4, r0
 704 0004 0D46     		mov	r5, r1
 705 0006 FFF7FEFF 		bl	_ZN20LaserFilamentMonitor18HandleIncomingDataEv
 706 000a 0023     		movs	r3, #0
 707 000c 0022     		movs	r2, #0
 708 000e 0121     		movs	r1, #1
 709 0010 84F86511 		strb	r1, [r4, #357]
 710 0014 C4F86031 		str	r3, [r4, #352]	@ float
 711 0018 C4F86C31 		str	r3, [r4, #364]	@ float
 712 001c C4F85C31 		str	r3, [r4, #348]	@ float
 713 0020 C4F86831 		str	r3, [r4, #360]	@ float
 714 0024 84F88321 		strb	r2, [r4, #387]
 715 0028 84F86621 		strb	r2, [r4, #358]
 716 002c 55B1     		cbz	r5, .L109
 717 002e B4F84231 		ldrh	r3, [r4, #322]
 718 0032 9A04     		lsls	r2, r3, #18
 719 0034 08D4     		bmi	.L110
 720 0036 B4F84C21 		ldrh	r2, [r4, #332]
 721 003a 1342     		tst	r3, r2
 722 003c 14BF     		ite	ne
 723 003e 0846     		movne	r0, r1
 724 0040 0020     		moveq	r0, #0
 725 0042 38BD     		pop	{r3, r4, r5, pc}
 726              	.L109:
 727 0044 2846     		mov	r0, r5
 728 0046 38BD     		pop	{r3, r4, r5, pc}
 729              	.L110:
 730 0048 0420     		movs	r0, #4
 731 004a 38BD     		pop	{r3, r4, r5, pc}
 732              		.size	_ZN20LaserFilamentMonitor5ClearEb, .-_ZN20LaserFilamentMonitor5ClearEb
 733              		.section	.text._ZN20LaserFilamentMonitor13CheckFilamentEffb,"ax",%progbits
 734              		.align	1
 735              		.p2align 2,,3
 736              		.global	_ZN20LaserFilamentMonitor13CheckFilamentEffb
 737              		.syntax unified
 738              		.thumb
 739              		.thumb_func
 740              		.fpu fpv4-sp-d16
 741              		.type	_ZN20LaserFilamentMonitor13CheckFilamentEffb, %function
ARM GAS  /tmp/cc12Ue2k.s 			page 14


 742              	_ZN20LaserFilamentMonitor13CheckFilamentEffb:
 743              		@ args = 0, pretend = 0, frame = 0
 744              		@ frame_needed = 0, uses_anonymous_args = 0
 745 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 746 0004 2DED028B 		vpush.64	{d8}
 747 0008 5E4B     		ldr	r3, .L155
 748 000a 9B6C     		ldr	r3, [r3, #72]
 749 000c 9B04     		lsls	r3, r3, #18
 750 000e 84B0     		sub	sp, sp, #16
 751 0010 0446     		mov	r4, r0
 752 0012 F0EE408A 		vmov.f32	s17, s0
 753 0016 B0EE608A 		vmov.f32	s16, s1
 754 001a 18D5     		bpl	.L113
 755 001c 10EE100A 		vmov	r0, s0
 756 0020 8846     		mov	r8, r1
 757 0022 FFF7FEFF 		bl	__aeabi_f2d
 758 0026 0646     		mov	r6, r0
 759 0028 18EE100A 		vmov	r0, s16
 760 002c 0F46     		mov	r7, r1
 761 002e 564D     		ldr	r5, .L155+4
 762 0030 FFF7FEFF 		bl	__aeabi_f2d
 763 0034 554B     		ldr	r3, .L155+8
 764 0036 B8F1000F 		cmp	r8, #0
 765 003a 18BF     		it	ne
 766 003c 1D46     		movne	r5, r3
 767 003e CDE90001 		strd	r0, [sp]
 768 0042 3246     		mov	r2, r6
 769 0044 3B46     		mov	r3, r7
 770 0046 0295     		str	r5, [sp, #8]
 771 0048 5148     		ldr	r0, .L155+12
 772 004a FFF7FEFF 		bl	debugPrintf
 773              	.L113:
 774 004e 94F88331 		ldrb	r3, [r4, #387]	@ zero_extendqisi2
 775 0052 012B     		cmp	r3, #1
 776 0054 4CD0     		beq	.L116
 777 0056 3ED3     		bcc	.L117
 778 0058 022B     		cmp	r3, #2
 779 005a 05D0     		beq	.L118
 780              	.L151:
 781 005c 0020     		movs	r0, #0
 782              	.L115:
 783 005e 04B0     		add	sp, sp, #16
 784              		@ sp needed
 785 0060 BDEC028B 		vldm	sp!, {d8}
 786 0064 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 787              	.L118:
 788 0068 D4ED5E7A 		vldr.32	s15, [r4, #376]
 789 006c 94F88231 		ldrb	r3, [r4, #386]	@ zero_extendqisi2
 790 0070 77EEA87A 		vadd.f32	s15, s15, s17
 791 0074 C4ED5E7A 		vstr.32	s15, [r4, #376]
 792 0078 0BB1     		cbz	r3, .L124
 793 007a B1EE488A 		vneg.f32	s16, s16
 794              	.L124:
 795 007e C8EE287A 		vdiv.f32	s15, s16, s17
 796 0082 D4ED5F0A 		vldr.32	s1, [r4, #380]
 797 0086 94ED5D7A 		vldr.32	s14, [r4, #372]
 798 008a 30EE888A 		vadd.f32	s16, s1, s16
ARM GAS  /tmp/cc12Ue2k.s 			page 15


 799 008e B4EEE77A 		vcmpe.f32	s14, s15
 800 0092 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 801 0096 84ED5F8A 		vstr.32	s16, [r4, #380]
 802 009a 6CD4     		bmi	.L154
 803 009c 94ED5C7A 		vldr.32	s14, [r4, #368]
 804 00a0 B4EEE77A 		vcmpe.f32	s14, s15
 805 00a4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 806 00a8 C8BF     		it	gt
 807 00aa C4ED5C7A 		vstrgt.32	s15, [r4, #368]
 808              	.L127:
 809 00ae 94F84031 		ldrb	r3, [r4, #320]	@ zero_extendqisi2
 810 00b2 002B     		cmp	r3, #0
 811 00b4 D2D0     		beq	.L151
 812 00b6 94ED4D7A 		vldr.32	s14, [r4, #308]
 813 00ba B4EEE77A 		vcmpe.f32	s14, s15
 814 00be F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 815 00c2 5DDC     		bgt	.L136
 816 00c4 94ED4E7A 		vldr.32	s14, [r4, #312]
 817 00c8 B4EEE77A 		vcmpe.f32	s14, s15
 818 00cc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 819 00d0 C4D5     		bpl	.L151
 820 00d2 0320     		movs	r0, #3
 821 00d4 C3E7     		b	.L115
 822              	.L117:
 823 00d6 0123     		movs	r3, #1
 824 00d8 0020     		movs	r0, #0
 825 00da C4ED5E8A 		vstr.32	s17, [r4, #376]
 826 00de 84ED5F8A 		vstr.32	s16, [r4, #380]
 827 00e2 84F88331 		strb	r3, [r4, #387]
 828 00e6 04B0     		add	sp, sp, #16
 829              		@ sp needed
 830 00e8 BDEC028B 		vldm	sp!, {d8}
 831 00ec BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 832              	.L116:
 833 00f0 94ED5E0A 		vldr.32	s0, [r4, #376]
 834 00f4 D4ED5F0A 		vldr.32	s1, [r4, #380]
 835 00f8 78EE808A 		vadd.f32	s17, s17, s0
 836 00fc F2EE047A 		vmov.f32	s15, #1.0e+1
 837 0100 38EE208A 		vadd.f32	s16, s16, s1
 838 0104 F4EEE78A 		vcmpe.f32	s17, s15
 839 0108 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 840 010c C4ED5E8A 		vstr.32	s17, [r4, #376]
 841 0110 84ED5F8A 		vstr.32	s16, [r4, #380]
 842 0114 A2DB     		blt	.L151
 843 0116 B5EEC08A 		vcmpe.f32	s16, #0
 844 011a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 845 011e 48BF     		it	mi
 846 0120 B1EE488A 		vnegmi.f32	s16, s16
 847 0124 C8EE287A 		vdiv.f32	s15, s16, s17
 848 0128 94F84001 		ldrb	r0, [r4, #320]	@ zero_extendqisi2
 849 012c 4CBF     		ite	mi
 850 012e 0123     		movmi	r3, #1
 851 0130 0023     		movpl	r3, #0
 852 0132 84F88231 		strb	r3, [r4, #386]
 853 0136 48BF     		it	mi
 854 0138 84ED5F8A 		vstrmi.32	s16, [r4, #380]
 855 013c C4ED5D7A 		vstr.32	s15, [r4, #372]
ARM GAS  /tmp/cc12Ue2k.s 			page 16


 856 0140 C4ED5C7A 		vstr.32	s15, [r4, #368]
 857 0144 78B1     		cbz	r0, .L122
 858 0146 94ED4D7A 		vldr.32	s14, [r4, #308]
 859 014a F4EEC77A 		vcmpe.f32	s15, s14
 860 014e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 861 0152 13D4     		bmi	.L134
 862 0154 94ED4E7A 		vldr.32	s14, [r4, #312]
 863 0158 F4EEC77A 		vcmpe.f32	s15, s14
 864 015c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 865 0160 CCBF     		ite	gt
 866 0162 0320     		movgt	r0, #3
 867 0164 0020     		movle	r0, #0
 868              	.L122:
 869 0166 0223     		movs	r3, #2
 870 0168 84F88331 		strb	r3, [r4, #387]
 871 016c 04B0     		add	sp, sp, #16
 872              		@ sp needed
 873 016e BDEC028B 		vldm	sp!, {d8}
 874 0172 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 875              	.L154:
 876 0176 C4ED5D7A 		vstr.32	s15, [r4, #372]
 877 017a 98E7     		b	.L127
 878              	.L134:
 879 017c 0220     		movs	r0, #2
 880 017e F2E7     		b	.L122
 881              	.L136:
 882 0180 0220     		movs	r0, #2
 883 0182 6CE7     		b	.L115
 884              	.L156:
 885              		.align	2
 886              	.L155:
 887 0184 00000000 		.word	reprap
 888 0188 14000000 		.word	.LC9
 889 018c 00000000 		.word	.LC16
 890 0190 0C000000 		.word	.LC17
 891              		.size	_ZN20LaserFilamentMonitor13CheckFilamentEffb, .-_ZN20LaserFilamentMonitor13CheckFilamentEffb
 892              		.section	.text._ZN20LaserFilamentMonitor5CheckEbbbf,"ax",%progbits
 893              		.align	1
 894              		.p2align 2,,3
 895              		.global	_ZN20LaserFilamentMonitor5CheckEbbbf
 896              		.syntax unified
 897              		.thumb
 898              		.thumb_func
 899              		.fpu fpv4-sp-d16
 900              		.type	_ZN20LaserFilamentMonitor5CheckEbbbf, %function
 901              	_ZN20LaserFilamentMonitor5CheckEbbbf:
 902              		@ args = 0, pretend = 0, frame = 0
 903              		@ frame_needed = 0, uses_anonymous_args = 0
 904 0000 38B5     		push	{r3, r4, r5, lr}
 905 0002 0446     		mov	r4, r0
 906 0004 0D46     		mov	r5, r1
 907 0006 62B3     		cbz	r2, .L158
 908 0008 0122     		movs	r2, #1
 909 000a 80F86521 		strb	r2, [r0, #357]
 910 000e 83BB     		cbnz	r3, .L178
 911              	.L161:
 912 0010 2046     		mov	r0, r4
ARM GAS  /tmp/cc12Ue2k.s 			page 17


 913 0012 FFF7FEFF 		bl	_ZN20LaserFilamentMonitor18HandleIncomingDataEv
 914 0016 15B3     		cbz	r5, .L167
 915 0018 B4F84211 		ldrh	r1, [r4, #322]
 916 001c 8B04     		lsls	r3, r1, #18
 917 001e 3FD4     		bmi	.L169
 918 0020 B4F84C31 		ldrh	r3, [r4, #332]
 919 0024 1940     		ands	r1, r1, r3
 920 0026 48D1     		bne	.L170
 921 0028 94ED5A0A 		vldr.32	s0, [r4, #360]
 922 002c D4ED4F7A 		vldr.32	s15, [r4, #316]
 923 0030 B4EEE70A 		vcmpe.f32	s0, s15
 924 0034 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 925 0038 34DA     		bge	.L179
 926 003a 94ED577A 		vldr.32	s14, [r4, #348]
 927 003e 77EEA77A 		vadd.f32	s15, s15, s15
 928 0042 30EE070A 		vadd.f32	s0, s0, s14
 929 0046 B4EEE70A 		vcmpe.f32	s0, s15
 930 004a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 931 004e 06DB     		blt	.L167
 932 0050 FFF7FEFF 		bl	millis
 933 0054 D4F84831 		ldr	r3, [r4, #328]
 934 0058 C01A     		subs	r0, r0, r3
 935 005a DC28     		cmp	r0, #220
 936 005c 2FD8     		bhi	.L180
 937              	.L167:
 938 005e 0020     		movs	r0, #0
 939 0060 38BD     		pop	{r3, r4, r5, pc}
 940              	.L158:
 941 0062 D0ED577A 		vldr.32	s15, [r0, #348]
 942 0066 37EE800A 		vadd.f32	s0, s15, s0
 943 006a 80ED570A 		vstr.32	s0, [r0, #348]
 944 006e 002B     		cmp	r3, #0
 945 0070 CED0     		beq	.L161
 946              	.L178:
 947 0072 2046     		mov	r0, r4
 948 0074 FFF7FEFF 		bl	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv
 949 0078 0028     		cmp	r0, #0
 950 007a C9D0     		beq	.L161
 951 007c D4F85C31 		ldr	r3, [r4, #348]	@ float
 952 0080 94F86511 		ldrb	r1, [r4, #357]	@ zero_extendqisi2
 953 0084 C4F85831 		str	r3, [r4, #344]	@ float
 954 0088 0020     		movs	r0, #0
 955 008a 0122     		movs	r2, #1
 956 008c 0023     		movs	r3, #0
 957 008e C4F85C01 		str	r0, [r4, #348]	@ float
 958 0092 84F86411 		strb	r1, [r4, #356]
 959 0096 84F86621 		strb	r2, [r4, #358]
 960 009a 84F86531 		strb	r3, [r4, #357]
 961 009e B7E7     		b	.L161
 962              	.L169:
 963 00a0 0420     		movs	r0, #4
 964 00a2 38BD     		pop	{r3, r4, r5, pc}
 965              	.L179:
 966 00a4 D4ED5B0A 		vldr.32	s1, [r4, #364]
 967 00a8 2046     		mov	r0, r4
 968 00aa FFF7FEFF 		bl	_ZN20LaserFilamentMonitor13CheckFilamentEffb
 969 00ae 0023     		movs	r3, #0
ARM GAS  /tmp/cc12Ue2k.s 			page 18


 970 00b0 C4F86C31 		str	r3, [r4, #364]	@ float
 971 00b4 C4F86831 		str	r3, [r4, #360]	@ float
 972 00b8 38BD     		pop	{r3, r4, r5, pc}
 973              	.L170:
 974 00ba 0120     		movs	r0, #1
 975 00bc 38BD     		pop	{r3, r4, r5, pc}
 976              	.L180:
 977 00be 2046     		mov	r0, r4
 978 00c0 FFF7FEFF 		bl	_ZNK21Duet3DFilamentMonitor11IsReceivingEv
 979 00c4 0028     		cmp	r0, #0
 980 00c6 CAD1     		bne	.L167
 981 00c8 D4ED5B0A 		vldr.32	s1, [r4, #364]
 982 00cc 94ED587A 		vldr.32	s14, [r4, #352]
 983 00d0 94ED5A0A 		vldr.32	s0, [r4, #360]
 984 00d4 D4ED577A 		vldr.32	s15, [r4, #348]
 985 00d8 70EE870A 		vadd.f32	s1, s1, s14
 986 00dc 30EE270A 		vadd.f32	s0, s0, s15
 987 00e0 0121     		movs	r1, #1
 988 00e2 2046     		mov	r0, r4
 989 00e4 FFF7FEFF 		bl	_ZN20LaserFilamentMonitor13CheckFilamentEffb
 990 00e8 0023     		movs	r3, #0
 991 00ea C4F86031 		str	r3, [r4, #352]	@ float
 992 00ee C4F86C31 		str	r3, [r4, #364]	@ float
 993 00f2 C4F85C31 		str	r3, [r4, #348]	@ float
 994 00f6 C4F86831 		str	r3, [r4, #360]	@ float
 995 00fa 38BD     		pop	{r3, r4, r5, pc}
 996              		.size	_ZN20LaserFilamentMonitor5CheckEbbbf, .-_ZN20LaserFilamentMonitor5CheckEbbbf
 997              		.global	_ZTV20LaserFilamentMonitor
 998              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 999              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1000              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1001              	_ZL28cpu_irq_prev_interrupt_state:
 1002 0000 00       		.space	1
 1003              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1004              		.align	2
 1005              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1006              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1007              	_ZL32cpu_irq_critical_section_counter:
 1008 0000 00000000 		.space	4
 1009              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1010              		.align	2
 1011              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1012              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1013              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1014 0000 00000000 		.space	4
 1015              		.section	.rodata._ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej.str1.4,"aMS",%progbits,1
 1016              		.align	2
 1017              	.LC0:
 1018 0000 6572726F 		.ascii	"error\000"
 1018      7200
 1019 0006 0000     		.space	2
 1020              	.LC1:
 1021 0008 6E6F2064 		.ascii	"no data received\000"
 1021      61746120 
 1021      72656365 
 1021      69766564 
 1021      00
ARM GAS  /tmp/cc12Ue2k.s 			page 19


 1022 0019 000000   		.space	3
 1023              	.LC2:
 1024 001c 6F6B00   		.ascii	"ok\000"
 1025 001f 00       		.space	1
 1026              	.LC3:
 1027 0020 6E6F2066 		.ascii	"no filament\000"
 1027      696C616D 
 1027      656E7400 
 1028              	.LC4:
 1029 002c 45787472 		.ascii	"Extruder %u sensor: position %.2f, %s, \000"
 1029      75646572 
 1029      20257520 
 1029      73656E73 
 1029      6F723A20 
 1030              	.LC5:
 1031 0054 6672616D 		.ascii	"framing errors %lu, parity errors %lu, \000"
 1031      696E6720 
 1031      6572726F 
 1031      72732025 
 1031      6C752C20 
 1032              	.LC6:
 1033 007c 6D656173 		.ascii	"measured minimum %ld%%, average %ld%%, maximum %ld%"
 1033      75726564 
 1033      206D696E 
 1033      696D756D 
 1033      20256C64 
 1034 00af 25206F76 		.ascii	"% over %.1fmm\012\000"
 1034      65722025 
 1034      2E31666D 
 1034      6D0A00
 1035 00be 0000     		.space	2
 1036              	.LC7:
 1037 00c0 6E6F2063 		.ascii	"no calibration data\012\000"
 1037      616C6962 
 1037      72617469 
 1037      6F6E2064 
 1037      6174610A 
 1038              		.section	.rodata._ZN20LaserFilamentMonitor13CheckFilamentEffb.str1.4,"aMS",%progbits,1
 1039              		.align	2
 1040              	.LC16:
 1041 0000 206F7665 		.ascii	" overdue\000"
 1041      72647565 
 1041      00
 1042 0009 000000   		.space	3
 1043              	.LC17:
 1044 000c 45787472 		.ascii	"Extr req %.3f meas %.3f%s\012\000"
 1044      20726571 
 1044      20252E33 
 1044      66206D65 
 1044      61732025 
 1045              		.section	.rodata._ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb.str1.4,"aMS",%pr
 1046              		.align	2
 1047              	.LC8:
 1048 0000 20776974 		.ascii	" with microswitch\000"
 1048      68206D69 
 1048      63726F73 
 1048      77697463 
ARM GAS  /tmp/cc12Ue2k.s 			page 20


 1048      6800
 1049 0012 0000     		.space	2
 1050              	.LC9:
 1051 0014 00       		.ascii	"\000"
 1052 0015 000000   		.space	3
 1053              	.LC10:
 1054 0018 656E6162 		.ascii	"enabled\000"
 1054      6C656400 
 1055              	.LC11:
 1056 0020 64697361 		.ascii	"disabled\000"
 1056      626C6564 
 1056      00
 1057 0029 000000   		.space	3
 1058              	.LC12:
 1059 002c 44756574 		.ascii	"Duet3D laser filament monitor%s on endstop input %u"
 1059      3344206C 
 1059      61736572 
 1059      2066696C 
 1059      616D656E 
 1060 005f 2C202573 		.ascii	", %s, allowed movement %ld%% to %ld%%, check every "
 1060      2C20616C 
 1060      6C6F7765 
 1060      64206D6F 
 1060      76656D65 
 1061 0092 252E3166 		.ascii	"%.1fmm, \000"
 1061      6D6D2C20 
 1061      00
 1062 009b 00       		.space	1
 1063              	.LC13:
 1064 009c 63757272 		.ascii	"current position %.1f, brightness %u, shutter %u, \000"
 1064      656E7420 
 1064      706F7369 
 1064      74696F6E 
 1064      20252E31 
 1065 00cf 00       		.space	1
 1066              	.LC14:
 1067 00d0 6D656173 		.ascii	"measured minimum %ld%%, average %ld%%, maximum %ld%"
 1067      75726564 
 1067      206D696E 
 1067      696D756D 
 1067      20256C64 
 1068 0103 25206F76 		.ascii	"% over %.1fmm\000"
 1068      65722025 
 1068      2E31666D 
 1068      6D00
 1069 0111 000000   		.space	3
 1070              	.LC15:
 1071 0114 6E6F2063 		.ascii	"no calibration data\000"
 1071      616C6962 
 1071      72617469 
 1071      6F6E2064 
 1071      61746100 
 1072              		.section	.rodata._ZTV20LaserFilamentMonitor,"a",%progbits
 1073              		.align	2
 1074              		.set	.LANCHOR0,. + 0
 1075              		.type	_ZTV20LaserFilamentMonitor, %object
 1076              		.size	_ZTV20LaserFilamentMonitor, 40
ARM GAS  /tmp/cc12Ue2k.s 			page 21


 1077              	_ZTV20LaserFilamentMonitor:
 1078 0000 00000000 		.word	0
 1079 0004 00000000 		.word	0
 1080 0008 00000000 		.word	_ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 1081 000c 00000000 		.word	_ZN20LaserFilamentMonitor5CheckEbbbf
 1082 0010 00000000 		.word	_ZN20LaserFilamentMonitor5ClearEb
 1083 0014 00000000 		.word	_ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej
 1084 0018 00000000 		.word	_ZN21Duet3DFilamentMonitor9InterruptEv
 1085 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 1086 0020 00000000 		.word	_ZN20LaserFilamentMonitorD1Ev
 1087 0024 00000000 		.word	_ZN20LaserFilamentMonitorD0Ev
 1088              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
