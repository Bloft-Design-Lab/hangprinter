ARM GAS  /tmp/cc7JTZZR.s 			page 1


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
  13              		.file	"RotatingMagnetFilamentMonitor.cpp"
  14              		.global	__aeabi_f2d
  15              		.section	.text._ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej, %function
  24              	_ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  28 0004 2DED048B 		vpush.64	{d8, d9}
  29 0008 90F87C31 		ldrb	r3, [r0, #380]	@ zero_extendqisi2
  30 000c 0E46     		mov	r6, r1
  31 000e 86B0     		sub	sp, sp, #24
  32 0010 0446     		mov	r4, r0
  33 0012 B0F84611 		ldrh	r1, [r0, #326]
  34 0016 9046     		mov	r8, r2
  35 0018 4BB1     		cbz	r3, .L8
  36 001a 0B04     		lsls	r3, r1, #16
  37 001c 4ED4     		bmi	.L9
  38 001e B0F84C21 		ldrh	r2, [r0, #332]
  39 0022 3C4B     		ldr	r3, .L24
  40 0024 3C48     		ldr	r0, .L24+4
  41 0026 1142     		tst	r1, r2
  42 0028 08BF     		it	eq
  43 002a 1846     		moveq	r0, r3
  44 002c 00E0     		b	.L2
  45              	.L8:
  46 002e 3B48     		ldr	r0, .L24+8
  47              	.L2:
  48 0030 9FED3B7A 		vldr.32	s14, .L24+12
  49 0034 0290     		str	r0, [sp, #8]
  50 0036 C1F30901 		ubfx	r1, r1, #0, #10
  51 003a 07EE901A 		vmov	s15, r1	@ int
  52 003e F8EEE77A 		vcvt.f32.s32	s15, s15
  53 0042 384D     		ldr	r5, .L24+16
  54 0044 67EE877A 		vmul.f32	s15, s15, s14
  55 0048 2F68     		ldr	r7, [r5]	@ unaligned
  56 004a 17EE900A 		vmov	r0, s15
  57 004e FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/cc7JTZZR.s 			page 2


  58 0052 4346     		mov	r3, r8
  59 0054 CDE90001 		strd	r0, [sp]
  60 0058 334A     		ldr	r2, .L24+20
  61 005a 3846     		mov	r0, r7
  62 005c 3146     		mov	r1, r6
  63 005e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
  64 0062 94F87C31 		ldrb	r3, [r4, #380]	@ zero_extendqisi2
  65 0066 0BBB     		cbnz	r3, .L22
  66              	.L3:
  67 0068 94F87E31 		ldrb	r3, [r4, #382]	@ zero_extendqisi2
  68 006c 2D68     		ldr	r5, [r5]
  69 006e 9BB1     		cbz	r3, .L4
  70 0070 94ED5E8A 		vldr.32	s16, [r4, #376]
  71 0074 F7EE007A 		vmov.f32	s15, #1.0e+0
  72 0078 B0EEC87A 		vabs.f32	s14, s16
  73 007c B4EEE77A 		vcmpe.f32	s14, s15
  74 0080 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  75 0084 08DD     		ble	.L4
  76 0086 D4ED5D8A 		vldr.32	s17, [r4, #372]
  77 008a F3EE047A 		vmov.f32	s15, #2.0e+1
  78 008e F4EEE78A 		vcmpe.f32	s17, s15
  79 0092 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  80 0096 13DC     		bgt	.L23
  81              	.L4:
  82 0098 244A     		ldr	r2, .L24+24
  83 009a 3146     		mov	r1, r6
  84 009c 2846     		mov	r0, r5
  85 009e 06B0     		add	sp, sp, #24
  86              		@ sp needed
  87 00a0 BDEC048B 		vldm	sp!, {d8-d9}
  88 00a4 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
  89 00a8 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
  90              	.L22:
  91 00ac D4F85031 		ldr	r3, [r4, #336]
  92 00b0 1F4A     		ldr	r2, .L24+28
  93 00b2 2868     		ldr	r0, [r5]
  94 00b4 3146     		mov	r1, r6
  95 00b6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
  96 00ba D5E7     		b	.L3
  97              	.L9:
  98 00bc 1D48     		ldr	r0, .L24+32
  99 00be B7E7     		b	.L2
 100              	.L23:
 101 00c0 94ED5B0A 		vldr.32	s0, [r4, #364]
 102 00c4 9FED1C9A 		vldr.32	s18, .L24+36
 103 00c8 20EE090A 		vmul.f32	s0, s0, s18
 104 00cc FFF7FEFF 		bl	lrintf
 105 00d0 94ED5C0A 		vldr.32	s0, [r4, #368]
 106 00d4 20EE090A 		vmul.f32	s0, s0, s18
 107 00d8 8046     		mov	r8, r0
 108 00da FFF7FEFF 		bl	lrintf
 109 00de 0746     		mov	r7, r0
 110 00e0 D4F87401 		ldr	r0, [r4, #372]	@ float
 111 00e4 FFF7FEFF 		bl	__aeabi_f2d
 112 00e8 C8EE887A 		vdiv.f32	s15, s17, s16
 113 00ec CDE90401 		strd	r0, [sp, #16]
 114 00f0 CDE90287 		strd	r8, r7, [sp, #8]
ARM GAS  /tmp/cc7JTZZR.s 			page 3


 115 00f4 17EE900A 		vmov	r0, s15
 116 00f8 FFF7FEFF 		bl	__aeabi_f2d
 117 00fc 0F4A     		ldr	r2, .L24+40
 118 00fe CDE90001 		strd	r0, [sp]
 119 0102 3146     		mov	r1, r6
 120 0104 2846     		mov	r0, r5
 121 0106 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 122 010a 06B0     		add	sp, sp, #24
 123              		@ sp needed
 124 010c BDEC048B 		vldm	sp!, {d8-d9}
 125 0110 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 126              	.L25:
 127              		.align	2
 128              	.L24:
 129 0114 1C000000 		.word	.LC2
 130 0118 20000000 		.word	.LC3
 131 011c 08000000 		.word	.LC1
 132 0120 0000B43E 		.word	1051983872
 133 0124 00000000 		.word	reprap
 134 0128 2C000000 		.word	.LC4
 135 012c C0000000 		.word	.LC7
 136 0130 54000000 		.word	.LC5
 137 0134 00000000 		.word	.LC0
 138 0138 0000C842 		.word	1120403456
 139 013c 6C000000 		.word	.LC6
 140              		.size	_ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej, .-_ZN29RotatingMagnetFilamen
 141              		.section	.text._ZN29RotatingMagnetFilamentMonitorD2Ev,"axG",%progbits,_ZN29RotatingMagnetFilamentM
 142              		.align	1
 143              		.p2align 2,,3
 144              		.weak	_ZN29RotatingMagnetFilamentMonitorD2Ev
 145              		.syntax unified
 146              		.thumb
 147              		.thumb_func
 148              		.fpu fpv4-sp-d16
 149              		.type	_ZN29RotatingMagnetFilamentMonitorD2Ev, %function
 150              	_ZN29RotatingMagnetFilamentMonitorD2Ev:
 151              		@ args = 0, pretend = 0, frame = 0
 152              		@ frame_needed = 0, uses_anonymous_args = 0
 153 0000 10B5     		push	{r4, lr}
 154 0002 034B     		ldr	r3, .L28
 155 0004 0360     		str	r3, [r0]
 156 0006 0446     		mov	r4, r0
 157 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
 158 000c 2046     		mov	r0, r4
 159 000e 10BD     		pop	{r4, pc}
 160              	.L29:
 161              		.align	2
 162              	.L28:
 163 0010 08000000 		.word	_ZTV21Duet3DFilamentMonitor+8
 164              		.size	_ZN29RotatingMagnetFilamentMonitorD2Ev, .-_ZN29RotatingMagnetFilamentMonitorD2Ev
 165              		.weak	_ZN29RotatingMagnetFilamentMonitorD1Ev
 166              		.thumb_set _ZN29RotatingMagnetFilamentMonitorD1Ev,_ZN29RotatingMagnetFilamentMonitorD2Ev
 167              		.section	.text._ZN29RotatingMagnetFilamentMonitorD0Ev,"axG",%progbits,_ZN29RotatingMagnetFilamentM
 168              		.align	1
 169              		.p2align 2,,3
 170              		.weak	_ZN29RotatingMagnetFilamentMonitorD0Ev
 171              		.syntax unified
ARM GAS  /tmp/cc7JTZZR.s 			page 4


 172              		.thumb
 173              		.thumb_func
 174              		.fpu fpv4-sp-d16
 175              		.type	_ZN29RotatingMagnetFilamentMonitorD0Ev, %function
 176              	_ZN29RotatingMagnetFilamentMonitorD0Ev:
 177              		@ args = 0, pretend = 0, frame = 0
 178              		@ frame_needed = 0, uses_anonymous_args = 0
 179 0000 10B5     		push	{r4, lr}
 180 0002 064B     		ldr	r3, .L32
 181 0004 0360     		str	r3, [r0]
 182 0006 0446     		mov	r4, r0
 183 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
 184 000c 2046     		mov	r0, r4
 185 000e 4FF4C071 		mov	r1, #384
 186 0012 FFF7FEFF 		bl	_ZdlPvj
 187 0016 2046     		mov	r0, r4
 188 0018 10BD     		pop	{r4, pc}
 189              	.L33:
 190 001a 00BF     		.align	2
 191              	.L32:
 192 001c 08000000 		.word	_ZTV21Duet3DFilamentMonitor+8
 193              		.size	_ZN29RotatingMagnetFilamentMonitorD0Ev, .-_ZN29RotatingMagnetFilamentMonitorD0Ev
 194              		.section	.text._ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb,"ax",%pro
 195              		.align	1
 196              		.p2align 2,,3
 197              		.global	_ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 198              		.syntax unified
 199              		.thumb
 200              		.thumb_func
 201              		.fpu fpv4-sp-d16
 202              		.type	_ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, %function
 203              	_ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb:
 204              		@ args = 0, pretend = 0, frame = 24
 205              		@ frame_needed = 0, uses_anonymous_args = 0
 206 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 207 0004 2DED048B 		vpush.64	{d8, d9}
 208 0008 8FB0     		sub	sp, sp, #60
 209 000a 1E46     		mov	r6, r3
 210 000c 0093     		str	r3, [sp]
 211 000e 0323     		movs	r3, #3
 212 0010 0446     		mov	r4, r0
 213 0012 0F46     		mov	r7, r1
 214 0014 9046     		mov	r8, r2
 215 0016 FFF7FEFF 		bl	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb
 216 001a 0546     		mov	r5, r0
 217 001c 28B1     		cbz	r0, .L63
 218              	.L35:
 219 001e 2846     		mov	r0, r5
 220 0020 0FB0     		add	sp, sp, #60
 221              		@ sp needed
 222 0022 BDEC048B 		vldm	sp!, {d8-d9}
 223 0026 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 224              	.L63:
 225 002a 3346     		mov	r3, r6
 226 002c 04F59A72 		add	r2, r4, #308
 227 0030 4C21     		movs	r1, #76
 228 0032 3846     		mov	r0, r7
ARM GAS  /tmp/cc7JTZZR.s 			page 5


 229 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 230 0038 4521     		movs	r1, #69
 231 003a 3846     		mov	r0, r7
 232 003c 3346     		mov	r3, r6
 233 003e 04F5A072 		add	r2, r4, #320
 234 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 235 0046 5221     		movs	r1, #82
 236 0048 3846     		mov	r0, r7
 237 004a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 238 004e 0028     		cmp	r0, #0
 239 0050 40F0BF80 		bne	.L64
 240              	.L36:
 241 0054 5321     		movs	r1, #83
 242 0056 3846     		mov	r0, r7
 243 0058 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 244 005c 0028     		cmp	r0, #0
 245 005e 40F08380 		bne	.L65
 246 0062 96F80090 		ldrb	r9, [r6]	@ zero_extendqisi2
 247 0066 B9F1000F 		cmp	r9, #0
 248 006a 40F08E80 		bne	.L66
 249              	.L41:
 250 006e 824B     		ldr	r3, .L70
 251 0070 94F84411 		ldrb	r1, [r4, #324]	@ zero_extendqisi2
 252 0074 814A     		ldr	r2, .L70+4
 253 0076 D4F83401 		ldr	r0, [r4, #308]	@ float
 254 007a 9FED818A 		vldr.32	s16, .L70+8
 255 007e B4F84C71 		ldrh	r7, [r4, #332]
 256 0082 804E     		ldr	r6, .L70+12
 257 0084 804D     		ldr	r5, .L70+16
 258 0086 D4F810A0 		ldr	r10, [r4, #16]
 259 008a 0029     		cmp	r1, #0
 260 008c 08BF     		it	eq
 261 008e 1A46     		moveq	r2, r3
 262 0090 0992     		str	r2, [sp, #36]
 263 0092 FFF7FEFF 		bl	__aeabi_f2d
 264 0096 94ED4E0A 		vldr.32	s0, [r4, #312]
 265 009a 20EE080A 		vmul.f32	s0, s0, s16
 266 009e 002F     		cmp	r7, #0
 267 00a0 08BF     		it	eq
 268 00a2 3546     		moveq	r5, r6
 269 00a4 0F46     		mov	r7, r1
 270 00a6 0646     		mov	r6, r0
 271 00a8 FFF7FEFF 		bl	lrintf
 272 00ac 94ED4F0A 		vldr.32	s0, [r4, #316]
 273 00b0 20EE080A 		vmul.f32	s0, s0, s16
 274 00b4 8346     		mov	fp, r0
 275 00b6 FFF7FEFF 		bl	lrintf
 276 00ba 0890     		str	r0, [sp, #32]
 277 00bc D4F84001 		ldr	r0, [r4, #320]	@ float
 278 00c0 FFF7FEFF 		bl	__aeabi_f2d
 279 00c4 089B     		ldr	r3, [sp, #32]
 280 00c6 099A     		ldr	r2, [sp, #36]
 281 00c8 0092     		str	r2, [sp]
 282 00ca CDE90601 		strd	r0, [sp, #24]
 283 00ce 2A46     		mov	r2, r5
 284 00d0 CDE904B3 		strd	fp, r3, [sp, #16]
 285 00d4 CDE90267 		strd	r6, [sp, #8]
ARM GAS  /tmp/cc7JTZZR.s 			page 6


 286 00d8 5346     		mov	r3, r10
 287 00da 6C49     		ldr	r1, .L70+20
 288 00dc 4046     		mov	r0, r8
 289 00de FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 290 00e2 94F87C51 		ldrb	r5, [r4, #380]	@ zero_extendqisi2
 291 00e6 D5B3     		cbz	r5, .L67
 292 00e8 B4F84631 		ldrh	r3, [r4, #326]
 293 00ec 1A04     		lsls	r2, r3, #16
 294 00ee 00F19580 		bmi	.L68
 295 00f2 C3F30903 		ubfx	r3, r3, #0, #10
 296 00f6 07EE903A 		vmov	s15, r3	@ int
 297 00fa 9FED657A 		vldr.32	s14, .L70+24
 298 00fe F8EEE77A 		vcvt.f32.s32	s15, s15
 299 0102 67EE877A 		vmul.f32	s15, s15, s14
 300 0106 17EE900A 		vmov	r0, s15
 301 010a FFF7FEFF 		bl	__aeabi_f2d
 302 010e 0B46     		mov	r3, r1
 303 0110 0246     		mov	r2, r0
 304 0112 6049     		ldr	r1, .L70+28
 305 0114 4046     		mov	r0, r8
 306 0116 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 307 011a 94F87E31 		ldrb	r3, [r4, #382]	@ zero_extendqisi2
 308 011e 9BB1     		cbz	r3, .L46
 309 0120 D4ED5E8A 		vldr.32	s17, [r4, #376]
 310 0124 F7EE007A 		vmov.f32	s15, #1.0e+0
 311 0128 B0EEE87A 		vabs.f32	s14, s17
 312 012c B4EEE77A 		vcmpe.f32	s14, s15
 313 0130 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 314 0134 08DD     		ble	.L46
 315 0136 94ED5D9A 		vldr.32	s18, [r4, #372]
 316 013a F3EE047A 		vmov.f32	s15, #2.0e+1
 317 013e B4EEE79A 		vcmpe.f32	s18, s15
 318 0142 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 319 0146 6FDC     		bgt	.L69
 320              	.L46:
 321 0148 4046     		mov	r0, r8
 322 014a 5349     		ldr	r1, .L70+32
 323 014c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 324 0150 0025     		movs	r5, #0
 325 0152 2846     		mov	r0, r5
 326 0154 0FB0     		add	sp, sp, #60
 327              		@ sp needed
 328 0156 BDEC048B 		vldm	sp!, {d8-d9}
 329 015a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 330              	.L67:
 331 015e 4046     		mov	r0, r8
 332 0160 4E49     		ldr	r1, .L70+36
 333 0162 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 334 0166 5AE7     		b	.L35
 335              	.L65:
 336 0168 0123     		movs	r3, #1
 337 016a 3846     		mov	r0, r7
 338 016c 3370     		strb	r3, [r6]
 339 016e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 340 0172 0028     		cmp	r0, #0
 341 0174 D4BF     		ite	le
 342 0176 0020     		movle	r0, #0
ARM GAS  /tmp/cc7JTZZR.s 			page 7


 343 0178 0120     		movgt	r0, #1
 344 017a 84F84401 		strb	r0, [r4, #324]
 345 017e 96F80090 		ldrb	r9, [r6]	@ zero_extendqisi2
 346 0182 B9F1000F 		cmp	r9, #0
 347 0186 3FF472AF 		beq	.L41
 348              	.L66:
 349 018a 0026     		movs	r6, #0
 350 018c 2046     		mov	r0, r4
 351 018e A4F84661 		strh	r6, [r4, #326]	@ movhi
 352 0192 C4F85061 		str	r6, [r4, #336]
 353 0196 84F87C61 		strb	r6, [r4, #380]
 354 019a 84F87E61 		strb	r6, [r4, #382]
 355 019e C4F84861 		str	r6, [r4, #328]
 356 01a2 FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 357 01a6 0023     		movs	r3, #0
 358 01a8 0122     		movs	r2, #1
 359 01aa 2846     		mov	r0, r5
 360 01ac 84F87D61 		strb	r6, [r4, #381]
 361 01b0 84F86261 		strb	r6, [r4, #354]
 362 01b4 C4F85C31 		str	r3, [r4, #348]	@ float
 363 01b8 C4F86831 		str	r3, [r4, #360]	@ float
 364 01bc C4F85831 		str	r3, [r4, #344]	@ float
 365 01c0 C4F86431 		str	r3, [r4, #356]	@ float
 366 01c4 84F86121 		strb	r2, [r4, #353]
 367 01c8 0FB0     		add	sp, sp, #60
 368              		@ sp needed
 369 01ca BDEC048B 		vldm	sp!, {d8-d9}
 370 01ce BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 371              	.L64:
 372 01d2 0EAA     		add	r2, sp, #56
 373 01d4 0223     		movs	r3, #2
 374 01d6 42F80C3D 		str	r3, [r2, #-12]!
 375 01da 0123     		movs	r3, #1
 376 01dc 3370     		strb	r3, [r6]
 377 01de 0CA9     		add	r1, sp, #48
 378 01e0 2B46     		mov	r3, r5
 379 01e2 3846     		mov	r0, r7
 380 01e4 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 381 01e8 0B9B     		ldr	r3, [sp, #44]
 382 01ea 002B     		cmp	r3, #0
 383 01ec 3FF432AF 		beq	.L36
 384 01f0 DDED0C7A 		vldr.32	s15, [sp, #48]	@ int
 385 01f4 DFED2A6A 		vldr.32	s13, .L70+40
 386 01f8 B8EE677A 		vcvt.f32.u32	s14, s15
 387 01fc 012B     		cmp	r3, #1
 388 01fe 27EE267A 		vmul.f32	s14, s14, s13
 389 0202 84ED4E7A 		vstr.32	s14, [r4, #312]
 390 0206 7FF625AF 		bls	.L36
 391 020a DDED0D7A 		vldr.32	s15, [sp, #52]	@ int
 392 020e F8EE677A 		vcvt.f32.u32	s15, s15
 393 0212 67EEA67A 		vmul.f32	s15, s15, s13
 394 0216 C4ED4F7A 		vstr.32	s15, [r4, #316]
 395 021a 1BE7     		b	.L36
 396              	.L68:
 397 021c 4046     		mov	r0, r8
 398 021e 2149     		ldr	r1, .L70+44
 399 0220 4D46     		mov	r5, r9
ARM GAS  /tmp/cc7JTZZR.s 			page 8


 400 0222 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 401 0226 FAE6     		b	.L35
 402              	.L69:
 403 0228 94ED5B0A 		vldr.32	s0, [r4, #364]
 404 022c 20EE080A 		vmul.f32	s0, s0, s16
 405 0230 FFF7FEFF 		bl	lrintf
 406 0234 94ED5C0A 		vldr.32	s0, [r4, #368]
 407 0238 20EE080A 		vmul.f32	s0, s0, s16
 408 023c 8246     		mov	r10, r0
 409 023e FFF7FEFF 		bl	lrintf
 410 0242 C9EE287A 		vdiv.f32	s15, s18, s17
 411 0246 0546     		mov	r5, r0
 412 0248 17EE900A 		vmov	r0, s15
 413 024c FFF7FEFF 		bl	__aeabi_f2d
 414 0250 0646     		mov	r6, r0
 415 0252 D4F87401 		ldr	r0, [r4, #372]	@ float
 416 0256 0F46     		mov	r7, r1
 417 0258 FFF7FEFF 		bl	__aeabi_f2d
 418 025c 0195     		str	r5, [sp, #4]
 419 025e CDE90201 		strd	r0, [sp, #8]
 420 0262 CDF800A0 		str	r10, [sp]
 421 0266 3246     		mov	r2, r6
 422 0268 3B46     		mov	r3, r7
 423 026a 4046     		mov	r0, r8
 424 026c 0E49     		ldr	r1, .L70+48
 425 026e 4D46     		mov	r5, r9
 426 0270 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 427 0274 D3E6     		b	.L35
 428              	.L71:
 429 0276 00BF     		.align	2
 430              	.L70:
 431 0278 20000000 		.word	.LC11
 432 027c 18000000 		.word	.LC10
 433 0280 0000C842 		.word	1120403456
 434 0284 14000000 		.word	.LC9
 435 0288 00000000 		.word	.LC8
 436 028c 2C000000 		.word	.LC12
 437 0290 0000B43E 		.word	1051983872
 438 0294 C0000000 		.word	.LC13
 439 0298 D8000000 		.word	.LC14
 440 029c 08000000 		.word	.LC1
 441 02a0 0AD7233C 		.word	1008981770
 442 02a4 00000000 		.word	.LC0
 443 02a8 6C000000 		.word	.LC6
 444              		.size	_ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, .-_ZN29RotatingMa
 445              		.section	.text._ZN29RotatingMagnetFilamentMonitorC2Eji,"ax",%progbits
 446              		.align	1
 447              		.p2align 2,,3
 448              		.global	_ZN29RotatingMagnetFilamentMonitorC2Eji
 449              		.syntax unified
 450              		.thumb
 451              		.thumb_func
 452              		.fpu fpv4-sp-d16
 453              		.type	_ZN29RotatingMagnetFilamentMonitorC2Eji, %function
 454              	_ZN29RotatingMagnetFilamentMonitorC2Eji:
 455              		@ args = 0, pretend = 0, frame = 0
 456              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cc7JTZZR.s 			page 9


 457 0000 70B5     		push	{r4, r5, r6, lr}
 458 0002 0446     		mov	r4, r0
 459 0004 1546     		mov	r5, r2
 460 0006 FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitorC2Eji
 461 000a 1D4B     		ldr	r3, .L76
 462 000c 2360     		str	r3, [r4]
 463 000e 042D     		cmp	r5, #4
 464 0010 1C4D     		ldr	r5, .L76+4
 465 0012 1D49     		ldr	r1, .L76+8
 466 0014 1D4A     		ldr	r2, .L76+12
 467 0016 C4F83451 		str	r5, [r4, #308]	@ float
 468 001a 08BF     		it	eq
 469 001c 4FF48043 		moveq	r3, #16384
 470 0020 4FF00005 		mov	r5, #0
 471 0024 18BF     		it	ne
 472 0026 0023     		movne	r3, #0
 473 0028 0126     		movs	r6, #1
 474 002a 1948     		ldr	r0, .L76+16
 475 002c C4F83801 		str	r0, [r4, #312]	@ float
 476 0030 A4F84C31 		strh	r3, [r4, #332]	@ movhi
 477 0034 2046     		mov	r0, r4
 478 0036 C4F83C11 		str	r1, [r4, #316]	@ float
 479 003a C4F84021 		str	r2, [r4, #320]	@ float
 480 003e 84F84451 		strb	r5, [r4, #324]
 481 0042 A4F84651 		strh	r5, [r4, #326]	@ movhi
 482 0046 C4F85051 		str	r5, [r4, #336]
 483 004a 84F87C51 		strb	r5, [r4, #380]
 484 004e 84F87E51 		strb	r5, [r4, #382]
 485 0052 C4F84851 		str	r5, [r4, #328]
 486 0056 84F84561 		strb	r6, [r4, #325]
 487 005a FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 488 005e 0023     		movs	r3, #0
 489 0060 84F87D51 		strb	r5, [r4, #381]
 490 0064 84F86251 		strb	r5, [r4, #354]
 491 0068 84F86161 		strb	r6, [r4, #353]
 492 006c C4F85C31 		str	r3, [r4, #348]	@ float
 493 0070 C4F86831 		str	r3, [r4, #360]	@ float
 494 0074 C4F85831 		str	r3, [r4, #344]	@ float
 495 0078 C4F86431 		str	r3, [r4, #356]	@ float
 496 007c 2046     		mov	r0, r4
 497 007e 70BD     		pop	{r4, r5, r6, pc}
 498              	.L77:
 499              		.align	2
 500              	.L76:
 501 0080 08000000 		.word	.LANCHOR0+8
 502 0084 6666E641 		.word	1105618534
 503 0088 CDCCCC3F 		.word	1070386381
 504 008c 00004040 		.word	1077936128
 505 0090 9A99193F 		.word	1058642330
 506              		.size	_ZN29RotatingMagnetFilamentMonitorC2Eji, .-_ZN29RotatingMagnetFilamentMonitorC2Eji
 507              		.global	_ZN29RotatingMagnetFilamentMonitorC1Eji
 508              		.thumb_set _ZN29RotatingMagnetFilamentMonitorC1Eji,_ZN29RotatingMagnetFilamentMonitorC2Eji
 509              		.section	.text._ZN29RotatingMagnetFilamentMonitor4InitEv,"ax",%progbits
 510              		.align	1
 511              		.p2align 2,,3
 512              		.global	_ZN29RotatingMagnetFilamentMonitor4InitEv
 513              		.syntax unified
ARM GAS  /tmp/cc7JTZZR.s 			page 10


 514              		.thumb
 515              		.thumb_func
 516              		.fpu fpv4-sp-d16
 517              		.type	_ZN29RotatingMagnetFilamentMonitor4InitEv, %function
 518              	_ZN29RotatingMagnetFilamentMonitor4InitEv:
 519              		@ args = 0, pretend = 0, frame = 0
 520              		@ frame_needed = 0, uses_anonymous_args = 0
 521 0000 38B5     		push	{r3, r4, r5, lr}
 522 0002 0025     		movs	r5, #0
 523 0004 0446     		mov	r4, r0
 524 0006 A0F84651 		strh	r5, [r0, #326]	@ movhi
 525 000a C0F85051 		str	r5, [r0, #336]
 526 000e 80F87C51 		strb	r5, [r0, #380]
 527 0012 80F87E51 		strb	r5, [r0, #382]
 528 0016 C0F84851 		str	r5, [r0, #328]
 529 001a FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 530 001e 0023     		movs	r3, #0
 531 0020 0122     		movs	r2, #1
 532 0022 84F87D51 		strb	r5, [r4, #381]
 533 0026 84F86251 		strb	r5, [r4, #354]
 534 002a 84F86121 		strb	r2, [r4, #353]
 535 002e C4F85C31 		str	r3, [r4, #348]	@ float
 536 0032 C4F86831 		str	r3, [r4, #360]	@ float
 537 0036 C4F85831 		str	r3, [r4, #344]	@ float
 538 003a C4F86431 		str	r3, [r4, #356]	@ float
 539 003e 38BD     		pop	{r3, r4, r5, pc}
 540              		.size	_ZN29RotatingMagnetFilamentMonitor4InitEv, .-_ZN29RotatingMagnetFilamentMonitor4InitEv
 541              		.section	.text._ZN29RotatingMagnetFilamentMonitor5ResetEv,"ax",%progbits
 542              		.align	1
 543              		.p2align 2,,3
 544              		.global	_ZN29RotatingMagnetFilamentMonitor5ResetEv
 545              		.syntax unified
 546              		.thumb
 547              		.thumb_func
 548              		.fpu fpv4-sp-d16
 549              		.type	_ZN29RotatingMagnetFilamentMonitor5ResetEv, %function
 550              	_ZN29RotatingMagnetFilamentMonitor5ResetEv:
 551              		@ args = 0, pretend = 0, frame = 0
 552              		@ frame_needed = 0, uses_anonymous_args = 0
 553              		@ link register save eliminated.
 554 0000 0023     		movs	r3, #0
 555 0002 0022     		movs	r2, #0
 556 0004 0121     		movs	r1, #1
 557 0006 80F86111 		strb	r1, [r0, #353]
 558 000a C0F85C31 		str	r3, [r0, #348]	@ float
 559 000e C0F86831 		str	r3, [r0, #360]	@ float
 560 0012 C0F85831 		str	r3, [r0, #344]	@ float
 561 0016 C0F86431 		str	r3, [r0, #356]	@ float
 562 001a 80F87D21 		strb	r2, [r0, #381]
 563 001e 80F86221 		strb	r2, [r0, #354]
 564 0022 7047     		bx	lr
 565              		.size	_ZN29RotatingMagnetFilamentMonitor5ResetEv, .-_ZN29RotatingMagnetFilamentMonitor5ResetEv
 566              		.section	.text._ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv,"ax",%progbits
 567              		.align	1
 568              		.p2align 2,,3
 569              		.global	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv
 570              		.syntax unified
ARM GAS  /tmp/cc7JTZZR.s 			page 11


 571              		.thumb
 572              		.thumb_func
 573              		.fpu fpv4-sp-d16
 574              		.type	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv, %function
 575              	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv:
 576              		@ args = 0, pretend = 0, frame = 8
 577              		@ frame_needed = 0, uses_anonymous_args = 0
 578 0000 70B5     		push	{r4, r5, r6, lr}
 579 0002 2DED028B 		vpush.64	{d8}
 580 0006 0026     		movs	r6, #0
 581 0008 82B0     		sub	sp, sp, #8
 582 000a 9FED308A 		vldr.32	s16, .L97
 583 000e 0446     		mov	r4, r0
 584 0010 0125     		movs	r5, #1
 585 0012 17E0     		b	.L89
 586              	.L83:
 587 0014 D4F85031 		ldr	r3, [r4, #336]
 588 0018 94F86221 		ldrb	r2, [r4, #354]	@ zero_extendqisi2
 589 001c 0133     		adds	r3, r3, #1
 590 001e C4F85031 		str	r3, [r4, #336]
 591 0022 62B1     		cbz	r2, .L86
 592 0024 D4ED567A 		vldr.32	s15, [r4, #344]
 593 0028 94ED557A 		vldr.32	s14, [r4, #340]
 594 002c 94F86031 		ldrb	r3, [r4, #352]	@ zero_extendqisi2
 595 0030 77EE877A 		vadd.f32	s15, s15, s14
 596 0034 C4ED567A 		vstr.32	s15, [r4, #344]
 597 0038 0BB1     		cbz	r3, .L86
 598 003a 84F86151 		strb	r5, [r4, #353]
 599              	.L86:
 600 003e 0023     		movs	r3, #0
 601 0040 84F86231 		strb	r3, [r4, #354]
 602              	.L89:
 603 0044 0DF10601 		add	r1, sp, #6
 604 0048 2046     		mov	r0, r4
 605 004a FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt
 606 004e C8B3     		cbz	r0, .L81
 607 0050 0128     		cmp	r0, #1
 608 0052 DFD1     		bne	.L83
 609 0054 84F87C01 		strb	r0, [r4, #380]
 610 0058 FFF7FEFF 		bl	millis
 611 005c BDF80620 		ldrh	r2, [sp, #6]
 612 0060 B4F84631 		ldrh	r3, [r4, #326]
 613 0064 94ED577A 		vldr.32	s14, [r4, #348]
 614 0068 C4F84801 		str	r0, [r4, #328]
 615 006c D31A     		subs	r3, r2, r3
 616 006e C3F30903 		ubfx	r3, r3, #0, #10
 617 0072 B3F5007F 		cmp	r3, #512
 618 0076 88BF     		it	hi
 619 0078 A3F58063 		subhi	r3, r3, #1024
 620 007c 07EE903A 		vmov	s15, r3	@ int
 621 0080 F8EEE77A 		vcvt.f32.s32	s15, s15
 622 0084 94F86231 		ldrb	r3, [r4, #354]	@ zero_extendqisi2
 623 0088 A4F84621 		strh	r2, [r4, #326]	@ movhi
 624 008c A7EE887A 		vfma.f32	s14, s15, s16
 625 0090 F0EE477A 		vmov.f32	s15, s14
 626 0094 84ED577A 		vstr.32	s14, [r4, #348]
 627 0098 002B     		cmp	r3, #0
ARM GAS  /tmp/cc7JTZZR.s 			page 12


 628 009a D0D0     		beq	.L86
 629 009c 94F86031 		ldrb	r3, [r4, #352]	@ zero_extendqisi2
 630 00a0 6BB9     		cbnz	r3, .L87
 631 00a2 D4ED596A 		vldr.32	s13, [r4, #356]
 632 00a6 94ED5A7A 		vldr.32	s14, [r4, #360]
 633 00aa 94ED556A 		vldr.32	s12, [r4, #340]
 634 00ae 77EE277A 		vadd.f32	s15, s14, s15
 635 00b2 76EE866A 		vadd.f32	s13, s13, s12
 636 00b6 C4ED5A7A 		vstr.32	s15, [r4, #360]
 637 00ba C4ED596A 		vstr.32	s13, [r4, #356]
 638              	.L87:
 639 00be C4F85C61 		str	r6, [r4, #348]	@ float
 640 00c2 BCE7     		b	.L86
 641              	.L81:
 642 00c4 02B0     		add	sp, sp, #8
 643              		@ sp needed
 644 00c6 BDEC028B 		vldm	sp!, {d8}
 645 00ca 70BD     		pop	{r4, r5, r6, pc}
 646              	.L98:
 647              		.align	2
 648              	.L97:
 649 00cc 0000803A 		.word	981467136
 650              		.size	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv, .-_ZN29RotatingMagnetFilamentMonit
 651              		.section	.text._ZN29RotatingMagnetFilamentMonitor5ClearEb,"ax",%progbits
 652              		.align	1
 653              		.p2align 2,,3
 654              		.global	_ZN29RotatingMagnetFilamentMonitor5ClearEb
 655              		.syntax unified
 656              		.thumb
 657              		.thumb_func
 658              		.fpu fpv4-sp-d16
 659              		.type	_ZN29RotatingMagnetFilamentMonitor5ClearEb, %function
 660              	_ZN29RotatingMagnetFilamentMonitor5ClearEb:
 661              		@ args = 0, pretend = 0, frame = 0
 662              		@ frame_needed = 0, uses_anonymous_args = 0
 663 0000 38B5     		push	{r3, r4, r5, lr}
 664 0002 0446     		mov	r4, r0
 665 0004 0D46     		mov	r5, r1
 666 0006 FFF7FEFF 		bl	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv
 667 000a 0023     		movs	r3, #0
 668 000c 0022     		movs	r2, #0
 669 000e 0121     		movs	r1, #1
 670 0010 84F86111 		strb	r1, [r4, #353]
 671 0014 C4F85C31 		str	r3, [r4, #348]	@ float
 672 0018 C4F86831 		str	r3, [r4, #360]	@ float
 673 001c C4F85831 		str	r3, [r4, #344]	@ float
 674 0020 C4F86431 		str	r3, [r4, #356]	@ float
 675 0024 84F87D21 		strb	r2, [r4, #381]
 676 0028 84F86221 		strb	r2, [r4, #354]
 677 002c 55B1     		cbz	r5, .L101
 678 002e B4F84631 		ldrh	r3, [r4, #326]
 679 0032 1A04     		lsls	r2, r3, #16
 680 0034 08D4     		bmi	.L102
 681 0036 B4F84C21 		ldrh	r2, [r4, #332]
 682 003a 1342     		tst	r3, r2
 683 003c 14BF     		ite	ne
 684 003e 0846     		movne	r0, r1
ARM GAS  /tmp/cc7JTZZR.s 			page 13


 685 0040 0020     		moveq	r0, #0
 686 0042 38BD     		pop	{r3, r4, r5, pc}
 687              	.L101:
 688 0044 2846     		mov	r0, r5
 689 0046 38BD     		pop	{r3, r4, r5, pc}
 690              	.L102:
 691 0048 0420     		movs	r0, #4
 692 004a 38BD     		pop	{r3, r4, r5, pc}
 693              		.size	_ZN29RotatingMagnetFilamentMonitor5ClearEb, .-_ZN29RotatingMagnetFilamentMonitor5ClearEb
 694              		.section	.text._ZNK29RotatingMagnetFilamentMonitor18GetCurrentPositionEv,"ax",%progbits
 695              		.align	1
 696              		.p2align 2,,3
 697              		.global	_ZNK29RotatingMagnetFilamentMonitor18GetCurrentPositionEv
 698              		.syntax unified
 699              		.thumb
 700              		.thumb_func
 701              		.fpu fpv4-sp-d16
 702              		.type	_ZNK29RotatingMagnetFilamentMonitor18GetCurrentPositionEv, %function
 703              	_ZNK29RotatingMagnetFilamentMonitor18GetCurrentPositionEv:
 704              		@ args = 0, pretend = 0, frame = 0
 705              		@ frame_needed = 0, uses_anonymous_args = 0
 706              		@ link register save eliminated.
 707 0000 B0F84631 		ldrh	r3, [r0, #326]
 708 0004 DFED057A 		vldr.32	s15, .L105
 709 0008 C3F30903 		ubfx	r3, r3, #0, #10
 710 000c 00EE103A 		vmov	s0, r3	@ int
 711 0010 B8EEC00A 		vcvt.f32.s32	s0, s0
 712 0014 20EE270A 		vmul.f32	s0, s0, s15
 713 0018 7047     		bx	lr
 714              	.L106:
 715 001a 00BF     		.align	2
 716              	.L105:
 717 001c 0000B43E 		.word	1051983872
 718              		.size	_ZNK29RotatingMagnetFilamentMonitor18GetCurrentPositionEv, .-_ZNK29RotatingMagnetFilamentMon
 719              		.section	.text._ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb,"ax",%progbits
 720              		.align	1
 721              		.p2align 2,,3
 722              		.global	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb
 723              		.syntax unified
 724              		.thumb
 725              		.thumb_func
 726              		.fpu fpv4-sp-d16
 727              		.type	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb, %function
 728              	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb:
 729              		@ args = 0, pretend = 0, frame = 0
 730              		@ frame_needed = 0, uses_anonymous_args = 0
 731 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 732 0004 2DED028B 		vpush.64	{d8}
 733 0008 494B     		ldr	r3, .L144
 734 000a 9B6C     		ldr	r3, [r3, #72]
 735 000c 9B04     		lsls	r3, r3, #18
 736 000e 84B0     		sub	sp, sp, #16
 737 0010 0446     		mov	r4, r0
 738 0012 B0EE408A 		vmov.f32	s16, s0
 739 0016 F0EE608A 		vmov.f32	s17, s1
 740 001a 18D5     		bpl	.L108
 741 001c 10EE100A 		vmov	r0, s0
ARM GAS  /tmp/cc7JTZZR.s 			page 14


 742 0020 8846     		mov	r8, r1
 743 0022 FFF7FEFF 		bl	__aeabi_f2d
 744 0026 0646     		mov	r6, r0
 745 0028 18EE900A 		vmov	r0, s17
 746 002c 0F46     		mov	r7, r1
 747 002e 414D     		ldr	r5, .L144+4
 748 0030 FFF7FEFF 		bl	__aeabi_f2d
 749 0034 404B     		ldr	r3, .L144+8
 750 0036 B8F1000F 		cmp	r8, #0
 751 003a 18BF     		it	ne
 752 003c 1D46     		movne	r5, r3
 753 003e CDE90001 		strd	r0, [sp]
 754 0042 3246     		mov	r2, r6
 755 0044 3B46     		mov	r3, r7
 756 0046 0295     		str	r5, [sp, #8]
 757 0048 3C48     		ldr	r0, .L144+12
 758 004a FFF7FEFF 		bl	debugPrintf
 759              	.L108:
 760 004e D4ED4D7A 		vldr.32	s15, [r4, #308]
 761 0052 94F87D01 		ldrb	r0, [r4, #381]	@ zero_extendqisi2
 762 0056 68EEA77A 		vmul.f32	s15, s17, s15
 763 005a 87EE887A 		vdiv.f32	s14, s15, s16
 764 005e 90B9     		cbnz	r0, .L110
 765 0060 0123     		movs	r3, #1
 766 0062 84F87D31 		strb	r3, [r4, #381]
 767              	.L111:
 768 0066 0123     		movs	r3, #1
 769 0068 84F87E31 		strb	r3, [r4, #382]
 770 006c 84ED5C7A 		vstr.32	s14, [r4, #368]
 771 0070 84ED5B7A 		vstr.32	s14, [r4, #364]
 772 0074 84ED5D8A 		vstr.32	s16, [r4, #372]
 773 0078 C4ED5E8A 		vstr.32	s17, [r4, #376]
 774 007c 04B0     		add	sp, sp, #16
 775              		@ sp needed
 776 007e BDEC028B 		vldm	sp!, {d8}
 777 0082 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 778              	.L110:
 779 0086 94F84401 		ldrb	r0, [r4, #324]	@ zero_extendqisi2
 780 008a 30BB     		cbnz	r0, .L143
 781              	.L112:
 782 008c 94F87E31 		ldrb	r3, [r4, #382]	@ zero_extendqisi2
 783 0090 002B     		cmp	r3, #0
 784 0092 E8D0     		beq	.L111
 785 0094 D4ED5B7A 		vldr.32	s15, [r4, #364]
 786 0098 94ED5D0A 		vldr.32	s0, [r4, #372]
 787 009c D4ED5E0A 		vldr.32	s1, [r4, #376]
 788 00a0 F4EEC77A 		vcmpe.f32	s15, s14
 789 00a4 D4ED5C7A 		vldr.32	s15, [r4, #368]
 790 00a8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 791 00ac 30EE088A 		vadd.f32	s16, s0, s16
 792 00b0 F4EEC77A 		vcmpe.f32	s15, s14
 793 00b4 70EEA88A 		vadd.f32	s17, s1, s17
 794 00b8 C8BF     		it	gt
 795 00ba 84ED5B7A 		vstrgt.32	s14, [r4, #364]
 796 00be F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 797 00c2 48BF     		it	mi
 798 00c4 84ED5C7A 		vstrmi.32	s14, [r4, #368]
ARM GAS  /tmp/cc7JTZZR.s 			page 15


 799 00c8 84ED5D8A 		vstr.32	s16, [r4, #372]
 800 00cc C4ED5E8A 		vstr.32	s17, [r4, #376]
 801 00d0 04B0     		add	sp, sp, #16
 802              		@ sp needed
 803 00d2 BDEC028B 		vldm	sp!, {d8}
 804 00d6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 805              	.L143:
 806 00da B5EEC08A 		vcmpe.f32	s16, #0
 807 00de F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 808 00e2 14DB     		blt	.L139
 809 00e4 D4ED4E6A 		vldr.32	s13, [r4, #312]
 810 00e8 68EE266A 		vmul.f32	s13, s16, s13
 811 00ec F4EEE67A 		vcmpe.f32	s15, s13
 812 00f0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 813 00f4 19D4     		bmi	.L127
 814 00f6 D4ED4F6A 		vldr.32	s13, [r4, #316]
 815 00fa 68EE266A 		vmul.f32	s13, s16, s13
 816              	.L117:
 817 00fe F4EEE76A 		vcmpe.f32	s13, s15
 818 0102 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 819 0106 4CBF     		ite	mi
 820 0108 0320     		movmi	r0, #3
 821 010a 0020     		movpl	r0, #0
 822 010c BEE7     		b	.L112
 823              	.L139:
 824 010e D4ED4F6A 		vldr.32	s13, [r4, #316]
 825 0112 68EE266A 		vmul.f32	s13, s16, s13
 826 0116 F4EEE67A 		vcmpe.f32	s15, s13
 827 011a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 828 011e 04D4     		bmi	.L127
 829 0120 D4ED4E6A 		vldr.32	s13, [r4, #312]
 830 0124 68EE266A 		vmul.f32	s13, s16, s13
 831 0128 E9E7     		b	.L117
 832              	.L127:
 833 012a 0220     		movs	r0, #2
 834 012c AEE7     		b	.L112
 835              	.L145:
 836 012e 00BF     		.align	2
 837              	.L144:
 838 0130 00000000 		.word	reprap
 839 0134 14000000 		.word	.LC9
 840 0138 00000000 		.word	.LC15
 841 013c 0C000000 		.word	.LC16
 842              		.size	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb, .-_ZN29RotatingMagnetFilamentMonitor1
 843              		.section	.text._ZN29RotatingMagnetFilamentMonitor5CheckEbbbf,"ax",%progbits
 844              		.align	1
 845              		.p2align 2,,3
 846              		.global	_ZN29RotatingMagnetFilamentMonitor5CheckEbbbf
 847              		.syntax unified
 848              		.thumb
 849              		.thumb_func
 850              		.fpu fpv4-sp-d16
 851              		.type	_ZN29RotatingMagnetFilamentMonitor5CheckEbbbf, %function
 852              	_ZN29RotatingMagnetFilamentMonitor5CheckEbbbf:
 853              		@ args = 0, pretend = 0, frame = 0
 854              		@ frame_needed = 0, uses_anonymous_args = 0
 855 0000 38B5     		push	{r3, r4, r5, lr}
ARM GAS  /tmp/cc7JTZZR.s 			page 16


 856 0002 0446     		mov	r4, r0
 857 0004 0D46     		mov	r5, r1
 858 0006 7AB3     		cbz	r2, .L147
 859 0008 90F84521 		ldrb	r2, [r0, #325]	@ zero_extendqisi2
 860 000c 62BB     		cbnz	r2, .L147
 861 000e 0122     		movs	r2, #1
 862 0010 80F86121 		strb	r2, [r0, #353]
 863 0014 83BB     		cbnz	r3, .L170
 864              	.L150:
 865 0016 2046     		mov	r0, r4
 866 0018 FFF7FEFF 		bl	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv
 867 001c 15B3     		cbz	r5, .L156
 868 001e B4F84611 		ldrh	r1, [r4, #326]
 869 0022 0B04     		lsls	r3, r1, #16
 870 0024 3FD4     		bmi	.L158
 871 0026 B4F84C31 		ldrh	r3, [r4, #332]
 872 002a 1940     		ands	r1, r1, r3
 873 002c 48D1     		bne	.L159
 874 002e 94ED590A 		vldr.32	s0, [r4, #356]
 875 0032 D4ED507A 		vldr.32	s15, [r4, #320]
 876 0036 B4EEE70A 		vcmpe.f32	s0, s15
 877 003a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 878 003e 34DA     		bge	.L171
 879 0040 94ED567A 		vldr.32	s14, [r4, #344]
 880 0044 77EEA77A 		vadd.f32	s15, s15, s15
 881 0048 30EE070A 		vadd.f32	s0, s0, s14
 882 004c B4EEE70A 		vcmpe.f32	s0, s15
 883 0050 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 884 0054 06DB     		blt	.L156
 885 0056 FFF7FEFF 		bl	millis
 886 005a D4F84831 		ldr	r3, [r4, #328]
 887 005e C01A     		subs	r0, r0, r3
 888 0060 DC28     		cmp	r0, #220
 889 0062 2FD8     		bhi	.L172
 890              	.L156:
 891 0064 0020     		movs	r0, #0
 892 0066 38BD     		pop	{r3, r4, r5, pc}
 893              	.L147:
 894 0068 D4ED567A 		vldr.32	s15, [r4, #344]
 895 006c 37EE800A 		vadd.f32	s0, s15, s0
 896 0070 84ED560A 		vstr.32	s0, [r4, #344]
 897 0074 002B     		cmp	r3, #0
 898 0076 CED0     		beq	.L150
 899              	.L170:
 900 0078 2046     		mov	r0, r4
 901 007a FFF7FEFF 		bl	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv
 902 007e 0028     		cmp	r0, #0
 903 0080 C9D0     		beq	.L150
 904 0082 D4F85831 		ldr	r3, [r4, #344]	@ float
 905 0086 94F86111 		ldrb	r1, [r4, #353]	@ zero_extendqisi2
 906 008a C4F85431 		str	r3, [r4, #340]	@ float
 907 008e 0020     		movs	r0, #0
 908 0090 0122     		movs	r2, #1
 909 0092 0023     		movs	r3, #0
 910 0094 C4F85801 		str	r0, [r4, #344]	@ float
 911 0098 84F86011 		strb	r1, [r4, #352]
 912 009c 84F86221 		strb	r2, [r4, #354]
ARM GAS  /tmp/cc7JTZZR.s 			page 17


 913 00a0 84F86131 		strb	r3, [r4, #353]
 914 00a4 B7E7     		b	.L150
 915              	.L158:
 916 00a6 0420     		movs	r0, #4
 917 00a8 38BD     		pop	{r3, r4, r5, pc}
 918              	.L171:
 919 00aa D4ED5A0A 		vldr.32	s1, [r4, #360]
 920 00ae 2046     		mov	r0, r4
 921 00b0 FFF7FEFF 		bl	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb
 922 00b4 0023     		movs	r3, #0
 923 00b6 C4F86831 		str	r3, [r4, #360]	@ float
 924 00ba C4F86431 		str	r3, [r4, #356]	@ float
 925 00be 38BD     		pop	{r3, r4, r5, pc}
 926              	.L159:
 927 00c0 0120     		movs	r0, #1
 928 00c2 38BD     		pop	{r3, r4, r5, pc}
 929              	.L172:
 930 00c4 2046     		mov	r0, r4
 931 00c6 FFF7FEFF 		bl	_ZNK21Duet3DFilamentMonitor11IsReceivingEv
 932 00ca 0028     		cmp	r0, #0
 933 00cc CAD1     		bne	.L156
 934 00ce D4ED5A0A 		vldr.32	s1, [r4, #360]
 935 00d2 94ED577A 		vldr.32	s14, [r4, #348]
 936 00d6 94ED590A 		vldr.32	s0, [r4, #356]
 937 00da D4ED567A 		vldr.32	s15, [r4, #344]
 938 00de 70EE870A 		vadd.f32	s1, s1, s14
 939 00e2 30EE270A 		vadd.f32	s0, s0, s15
 940 00e6 0121     		movs	r1, #1
 941 00e8 2046     		mov	r0, r4
 942 00ea FFF7FEFF 		bl	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb
 943 00ee 0023     		movs	r3, #0
 944 00f0 C4F85C31 		str	r3, [r4, #348]	@ float
 945 00f4 C4F86831 		str	r3, [r4, #360]	@ float
 946 00f8 C4F85831 		str	r3, [r4, #344]	@ float
 947 00fc C4F86431 		str	r3, [r4, #356]	@ float
 948 0100 38BD     		pop	{r3, r4, r5, pc}
 949              		.size	_ZN29RotatingMagnetFilamentMonitor5CheckEbbbf, .-_ZN29RotatingMagnetFilamentMonitor5CheckEbb
 950              		.global	_ZTV29RotatingMagnetFilamentMonitor
 951 0102 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 952              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 953              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 954              	_ZL28cpu_irq_prev_interrupt_state:
 955 0000 00       		.space	1
 956              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 957              		.align	2
 958              		.type	_ZL32cpu_irq_critical_section_counter, %object
 959              		.size	_ZL32cpu_irq_critical_section_counter, 4
 960              	_ZL32cpu_irq_critical_section_counter:
 961 0000 00000000 		.space	4
 962              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 963              		.align	2
 964              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 965              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 966              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 967 0000 00000000 		.space	4
 968              		.section	.rodata._ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej.str1.4,"aMS",%prog
 969              		.align	2
ARM GAS  /tmp/cc7JTZZR.s 			page 18


 970              	.LC0:
 971 0000 6572726F 		.ascii	"error\000"
 971      7200
 972 0006 0000     		.space	2
 973              	.LC1:
 974 0008 6E6F2064 		.ascii	"no data received\000"
 974      61746120 
 974      72656365 
 974      69766564 
 974      00
 975 0019 000000   		.space	3
 976              	.LC2:
 977 001c 6F6B00   		.ascii	"ok\000"
 978 001f 00       		.space	1
 979              	.LC3:
 980 0020 6E6F2066 		.ascii	"no filament\000"
 980      696C616D 
 980      656E7400 
 981              	.LC4:
 982 002c 45787472 		.ascii	"Extruder %u sensor: position %.2f, %s, \000"
 982      75646572 
 982      20257520 
 982      73656E73 
 982      6F723A20 
 983              	.LC5:
 984 0054 256C7520 		.ascii	"%lu framing errors, \000"
 984      6672616D 
 984      696E6720 
 984      6572726F 
 984      72732C20 
 985 0069 000000   		.space	3
 986              	.LC6:
 987 006c 6D656173 		.ascii	"measured sensitivity %.2fmm/rev, measured minimum %"
 987      75726564 
 987      2073656E 
 987      73697469 
 987      76697479 
 988 009f 6C642525 		.ascii	"ld%%, maximum %ld%% over %.1fmm\012\000"
 988      2C206D61 
 988      78696D75 
 988      6D20256C 
 988      64252520 
 989              	.LC7:
 990 00c0 6E6F2063 		.ascii	"no calibration data\012\000"
 990      616C6962 
 990      72617469 
 990      6F6E2064 
 990      6174610A 
 991              		.section	.rodata._ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb.str1.4,"aMS",%progbits,1
 992              		.align	2
 993              	.LC15:
 994 0000 206F7665 		.ascii	" overdue\000"
 994      72647565 
 994      00
 995 0009 000000   		.space	3
 996              	.LC16:
 997 000c 45787472 		.ascii	"Extr req %.3f meas %.3f%s\012\000"
ARM GAS  /tmp/cc7JTZZR.s 			page 19


 997      20726571 
 997      20252E33 
 997      66206D65 
 997      61732025 
 998              		.section	.rodata._ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb.str1.4,
 999              		.align	2
 1000              	.LC8:
 1001 0000 20776974 		.ascii	" with microswitch\000"
 1001      68206D69 
 1001      63726F73 
 1001      77697463 
 1001      6800
 1002 0012 0000     		.space	2
 1003              	.LC9:
 1004 0014 00       		.ascii	"\000"
 1005 0015 000000   		.space	3
 1006              	.LC10:
 1007 0018 656E6162 		.ascii	"enabled\000"
 1007      6C656400 
 1008              	.LC11:
 1009 0020 64697361 		.ascii	"disabled\000"
 1009      626C6564 
 1009      00
 1010 0029 000000   		.space	3
 1011              	.LC12:
 1012 002c 44756574 		.ascii	"Duet3D rotating magnet filament monitor%s on endsto"
 1012      33442072 
 1012      6F746174 
 1012      696E6720 
 1012      6D61676E 
 1013 005f 7020696E 		.ascii	"p input %u, %s, sensitivity %.2fmm/rev, allowed mov"
 1013      70757420 
 1013      25752C20 
 1013      25732C20 
 1013      73656E73 
 1014 0092 656D656E 		.ascii	"ement %ld%% to %ld%%, check every %.1fmm, \000"
 1014      7420256C 
 1014      64252520 
 1014      746F2025 
 1014      6C642525 
 1015 00bd 000000   		.space	3
 1016              	.LC13:
 1017 00c0 63757272 		.ascii	"current position %.1f, \000"
 1017      656E7420 
 1017      706F7369 
 1017      74696F6E 
 1017      20252E31 
 1018              	.LC14:
 1019 00d8 6E6F2063 		.ascii	"no calibration data\000"
 1019      616C6962 
 1019      72617469 
 1019      6F6E2064 
 1019      61746100 
 1020              		.section	.rodata._ZTV29RotatingMagnetFilamentMonitor,"a",%progbits
 1021              		.align	2
 1022              		.set	.LANCHOR0,. + 0
 1023              		.type	_ZTV29RotatingMagnetFilamentMonitor, %object
ARM GAS  /tmp/cc7JTZZR.s 			page 20


 1024              		.size	_ZTV29RotatingMagnetFilamentMonitor, 40
 1025              	_ZTV29RotatingMagnetFilamentMonitor:
 1026 0000 00000000 		.word	0
 1027 0004 00000000 		.word	0
 1028 0008 00000000 		.word	_ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 1029 000c 00000000 		.word	_ZN29RotatingMagnetFilamentMonitor5CheckEbbbf
 1030 0010 00000000 		.word	_ZN29RotatingMagnetFilamentMonitor5ClearEb
 1031 0014 00000000 		.word	_ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej
 1032 0018 00000000 		.word	_ZN21Duet3DFilamentMonitor9InterruptEv
 1033 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 1034 0020 00000000 		.word	_ZN29RotatingMagnetFilamentMonitorD1Ev
 1035 0024 00000000 		.word	_ZN29RotatingMagnetFilamentMonitorD0Ev
 1036              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
