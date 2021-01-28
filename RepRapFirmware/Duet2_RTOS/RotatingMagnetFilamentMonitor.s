ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 1


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
  14              		.text
  15              		.global	__aeabi_f2d
  16              		.section	.text._ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	_ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv4-sp-d16
  24              		.type	_ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej, %function
  25              	_ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej:
  26              		@ args = 0, pretend = 0, frame = 0
  27              		@ frame_needed = 0, uses_anonymous_args = 0
  28 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  29 0004 2DED048B 		vpush.64	{d8, d9}
  30 0008 90F87C31 		ldrb	r3, [r0, #380]	@ zero_extendqisi2
  31 000c 0E46     		mov	r6, r1
  32 000e 86B0     		sub	sp, sp, #24
  33 0010 0446     		mov	r4, r0
  34 0012 B0F84611 		ldrh	r1, [r0, #326]
  35 0016 9046     		mov	r8, r2
  36 0018 4BB1     		cbz	r3, .L8
  37 001a 0B04     		lsls	r3, r1, #16
  38 001c 4ED4     		bmi	.L9
  39 001e B0F84C21 		ldrh	r2, [r0, #332]
  40 0022 3C4B     		ldr	r3, .L24
  41 0024 3C48     		ldr	r0, .L24+4
  42 0026 1142     		tst	r1, r2
  43 0028 08BF     		it	eq
  44 002a 1846     		moveq	r0, r3
  45 002c 00E0     		b	.L2
  46              	.L8:
  47 002e 3B48     		ldr	r0, .L24+8
  48              	.L2:
  49 0030 9FED3B7A 		vldr.32	s14, .L24+12
  50 0034 0290     		str	r0, [sp, #8]
  51 0036 C1F30901 		ubfx	r1, r1, #0, #10
  52 003a 07EE901A 		vmov	s15, r1	@ int
  53 003e F8EEE77A 		vcvt.f32.s32	s15, s15
  54 0042 384D     		ldr	r5, .L24+16
  55 0044 67EE877A 		vmul.f32	s15, s15, s14
  56 0048 6F68     		ldr	r7, [r5, #4]	@ unaligned
  57 004a 17EE900A 		vmov	r0, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 2


  58 004e FFF7FEFF 		bl	__aeabi_f2d
  59 0052 4346     		mov	r3, r8
  60 0054 CDE90001 		strd	r0, [sp]
  61 0058 334A     		ldr	r2, .L24+20
  62 005a 3846     		mov	r0, r7
  63 005c 3146     		mov	r1, r6
  64 005e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
  65 0062 94F87C31 		ldrb	r3, [r4, #380]	@ zero_extendqisi2
  66 0066 0BBB     		cbnz	r3, .L22
  67              	.L3:
  68 0068 94F87E31 		ldrb	r3, [r4, #382]	@ zero_extendqisi2
  69 006c 6D68     		ldr	r5, [r5, #4]
  70 006e 9BB1     		cbz	r3, .L4
  71 0070 94ED5E8A 		vldr.32	s16, [r4, #376]
  72 0074 F7EE007A 		vmov.f32	s15, #1.0e+0
  73 0078 B0EEC87A 		vabs.f32	s14, s16
  74 007c B4EEE77A 		vcmpe.f32	s14, s15
  75 0080 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  76 0084 08DD     		ble	.L4
  77 0086 D4ED5D8A 		vldr.32	s17, [r4, #372]
  78 008a F3EE047A 		vmov.f32	s15, #2.0e+1
  79 008e F4EEE78A 		vcmpe.f32	s17, s15
  80 0092 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  81 0096 13DC     		bgt	.L23
  82              	.L4:
  83 0098 244A     		ldr	r2, .L24+24
  84 009a 3146     		mov	r1, r6
  85 009c 2846     		mov	r0, r5
  86 009e 06B0     		add	sp, sp, #24
  87              		@ sp needed
  88 00a0 BDEC048B 		vldm	sp!, {d8-d9}
  89 00a4 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
  90 00a8 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
  91              	.L22:
  92 00ac D4F85031 		ldr	r3, [r4, #336]
  93 00b0 1F4A     		ldr	r2, .L24+28
  94 00b2 6868     		ldr	r0, [r5, #4]
  95 00b4 3146     		mov	r1, r6
  96 00b6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
  97 00ba D5E7     		b	.L3
  98              	.L9:
  99 00bc 1D48     		ldr	r0, .L24+32
 100 00be B7E7     		b	.L2
 101              	.L23:
 102 00c0 94ED5B0A 		vldr.32	s0, [r4, #364]
 103 00c4 9FED1C9A 		vldr.32	s18, .L24+36
 104 00c8 20EE090A 		vmul.f32	s0, s0, s18
 105 00cc FFF7FEFF 		bl	lrintf
 106 00d0 94ED5C0A 		vldr.32	s0, [r4, #368]
 107 00d4 20EE090A 		vmul.f32	s0, s0, s18
 108 00d8 8046     		mov	r8, r0
 109 00da FFF7FEFF 		bl	lrintf
 110 00de 0746     		mov	r7, r0
 111 00e0 D4F87401 		ldr	r0, [r4, #372]	@ float
 112 00e4 FFF7FEFF 		bl	__aeabi_f2d
 113 00e8 C8EE887A 		vdiv.f32	s15, s17, s16
 114 00ec CDE90401 		strd	r0, [sp, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 3


 115 00f0 CDE90287 		strd	r8, r7, [sp, #8]
 116 00f4 17EE900A 		vmov	r0, s15
 117 00f8 FFF7FEFF 		bl	__aeabi_f2d
 118 00fc 0F4A     		ldr	r2, .L24+40
 119 00fe CDE90001 		strd	r0, [sp]
 120 0102 3146     		mov	r1, r6
 121 0104 2846     		mov	r0, r5
 122 0106 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 123 010a 06B0     		add	sp, sp, #24
 124              		@ sp needed
 125 010c BDEC048B 		vldm	sp!, {d8-d9}
 126 0110 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 127              	.L25:
 128              		.align	2
 129              	.L24:
 130 0114 1C000000 		.word	.LC2
 131 0118 20000000 		.word	.LC3
 132 011c 08000000 		.word	.LC1
 133 0120 0000B43E 		.word	1051983872
 134 0124 00000000 		.word	reprap
 135 0128 2C000000 		.word	.LC4
 136 012c C0000000 		.word	.LC7
 137 0130 54000000 		.word	.LC5
 138 0134 00000000 		.word	.LC0
 139 0138 0000C842 		.word	1120403456
 140 013c 6C000000 		.word	.LC6
 141              		.size	_ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej, .-_ZN29RotatingMagnetFilamen
 142              		.section	.text._ZN29RotatingMagnetFilamentMonitorD2Ev,"axG",%progbits,_ZN29RotatingMagnetFilamentM
 143              		.align	1
 144              		.p2align 2,,3
 145              		.weak	_ZN29RotatingMagnetFilamentMonitorD2Ev
 146              		.syntax unified
 147              		.thumb
 148              		.thumb_func
 149              		.fpu fpv4-sp-d16
 150              		.type	_ZN29RotatingMagnetFilamentMonitorD2Ev, %function
 151              	_ZN29RotatingMagnetFilamentMonitorD2Ev:
 152              		@ args = 0, pretend = 0, frame = 0
 153              		@ frame_needed = 0, uses_anonymous_args = 0
 154 0000 10B5     		push	{r4, lr}
 155 0002 034B     		ldr	r3, .L28
 156 0004 0360     		str	r3, [r0]
 157 0006 0446     		mov	r4, r0
 158 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
 159 000c 2046     		mov	r0, r4
 160 000e 10BD     		pop	{r4, pc}
 161              	.L29:
 162              		.align	2
 163              	.L28:
 164 0010 08000000 		.word	_ZTV21Duet3DFilamentMonitor+8
 165              		.size	_ZN29RotatingMagnetFilamentMonitorD2Ev, .-_ZN29RotatingMagnetFilamentMonitorD2Ev
 166              		.weak	_ZN29RotatingMagnetFilamentMonitorD1Ev
 167              		.thumb_set _ZN29RotatingMagnetFilamentMonitorD1Ev,_ZN29RotatingMagnetFilamentMonitorD2Ev
 168              		.section	.text._ZN29RotatingMagnetFilamentMonitorD0Ev,"axG",%progbits,_ZN29RotatingMagnetFilamentM
 169              		.align	1
 170              		.p2align 2,,3
 171              		.weak	_ZN29RotatingMagnetFilamentMonitorD0Ev
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 4


 172              		.syntax unified
 173              		.thumb
 174              		.thumb_func
 175              		.fpu fpv4-sp-d16
 176              		.type	_ZN29RotatingMagnetFilamentMonitorD0Ev, %function
 177              	_ZN29RotatingMagnetFilamentMonitorD0Ev:
 178              		@ args = 0, pretend = 0, frame = 0
 179              		@ frame_needed = 0, uses_anonymous_args = 0
 180 0000 10B5     		push	{r4, lr}
 181 0002 064B     		ldr	r3, .L32
 182 0004 0360     		str	r3, [r0]
 183 0006 0446     		mov	r4, r0
 184 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
 185 000c 2046     		mov	r0, r4
 186 000e 4FF4C071 		mov	r1, #384
 187 0012 FFF7FEFF 		bl	_ZdlPvj
 188 0016 2046     		mov	r0, r4
 189 0018 10BD     		pop	{r4, pc}
 190              	.L33:
 191 001a 00BF     		.align	2
 192              	.L32:
 193 001c 08000000 		.word	_ZTV21Duet3DFilamentMonitor+8
 194              		.size	_ZN29RotatingMagnetFilamentMonitorD0Ev, .-_ZN29RotatingMagnetFilamentMonitorD0Ev
 195              		.section	.text._ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb,"ax",%pro
 196              		.align	1
 197              		.p2align 2,,3
 198              		.global	_ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 199              		.syntax unified
 200              		.thumb
 201              		.thumb_func
 202              		.fpu fpv4-sp-d16
 203              		.type	_ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, %function
 204              	_ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb:
 205              		@ args = 0, pretend = 0, frame = 24
 206              		@ frame_needed = 0, uses_anonymous_args = 0
 207 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 208 0004 2DED048B 		vpush.64	{d8, d9}
 209 0008 8FB0     		sub	sp, sp, #60
 210 000a 1E46     		mov	r6, r3
 211 000c 0093     		str	r3, [sp]
 212 000e 0323     		movs	r3, #3
 213 0010 0446     		mov	r4, r0
 214 0012 0F46     		mov	r7, r1
 215 0014 9046     		mov	r8, r2
 216 0016 FFF7FEFF 		bl	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb
 217 001a 0546     		mov	r5, r0
 218 001c 28B1     		cbz	r0, .L63
 219              	.L35:
 220 001e 2846     		mov	r0, r5
 221 0020 0FB0     		add	sp, sp, #60
 222              		@ sp needed
 223 0022 BDEC048B 		vldm	sp!, {d8-d9}
 224 0026 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 225              	.L63:
 226 002a 3346     		mov	r3, r6
 227 002c 04F59A72 		add	r2, r4, #308
 228 0030 4C21     		movs	r1, #76
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 5


 229 0032 3846     		mov	r0, r7
 230 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 231 0038 4521     		movs	r1, #69
 232 003a 3346     		mov	r3, r6
 233 003c 04F5A072 		add	r2, r4, #320
 234 0040 3846     		mov	r0, r7
 235 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 236 0046 5221     		movs	r1, #82
 237 0048 3846     		mov	r0, r7
 238 004a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 239 004e 0028     		cmp	r0, #0
 240 0050 40F0BF80 		bne	.L64
 241              	.L36:
 242 0054 5321     		movs	r1, #83
 243 0056 3846     		mov	r0, r7
 244 0058 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 245 005c 0028     		cmp	r0, #0
 246 005e 40F08380 		bne	.L65
 247 0062 96F80090 		ldrb	r9, [r6]	@ zero_extendqisi2
 248 0066 B9F1000F 		cmp	r9, #0
 249 006a 40F08E80 		bne	.L66
 250              	.L41:
 251 006e 824B     		ldr	r3, .L70
 252 0070 94F84411 		ldrb	r1, [r4, #324]	@ zero_extendqisi2
 253 0074 814A     		ldr	r2, .L70+4
 254 0076 D4F83401 		ldr	r0, [r4, #308]	@ float
 255 007a 9FED818A 		vldr.32	s16, .L70+8
 256 007e B4F84C71 		ldrh	r7, [r4, #332]
 257 0082 804E     		ldr	r6, .L70+12
 258 0084 804D     		ldr	r5, .L70+16
 259 0086 D4F810A0 		ldr	r10, [r4, #16]
 260 008a 0029     		cmp	r1, #0
 261 008c 08BF     		it	eq
 262 008e 1A46     		moveq	r2, r3
 263 0090 0992     		str	r2, [sp, #36]
 264 0092 FFF7FEFF 		bl	__aeabi_f2d
 265 0096 94ED4E0A 		vldr.32	s0, [r4, #312]
 266 009a 20EE080A 		vmul.f32	s0, s0, s16
 267 009e 002F     		cmp	r7, #0
 268 00a0 08BF     		it	eq
 269 00a2 3546     		moveq	r5, r6
 270 00a4 0F46     		mov	r7, r1
 271 00a6 0646     		mov	r6, r0
 272 00a8 FFF7FEFF 		bl	lrintf
 273 00ac 94ED4F0A 		vldr.32	s0, [r4, #316]
 274 00b0 20EE080A 		vmul.f32	s0, s0, s16
 275 00b4 8346     		mov	fp, r0
 276 00b6 FFF7FEFF 		bl	lrintf
 277 00ba 0890     		str	r0, [sp, #32]
 278 00bc D4F84001 		ldr	r0, [r4, #320]	@ float
 279 00c0 FFF7FEFF 		bl	__aeabi_f2d
 280 00c4 089B     		ldr	r3, [sp, #32]
 281 00c6 099A     		ldr	r2, [sp, #36]
 282 00c8 0092     		str	r2, [sp]
 283 00ca CDE90601 		strd	r0, [sp, #24]
 284 00ce 2A46     		mov	r2, r5
 285 00d0 CDE904B3 		strd	fp, r3, [sp, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 6


 286 00d4 CDE90267 		strd	r6, [sp, #8]
 287 00d8 5346     		mov	r3, r10
 288 00da 6C49     		ldr	r1, .L70+20
 289 00dc 4046     		mov	r0, r8
 290 00de FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 291 00e2 94F87C51 		ldrb	r5, [r4, #380]	@ zero_extendqisi2
 292 00e6 D5B3     		cbz	r5, .L67
 293 00e8 B4F84631 		ldrh	r3, [r4, #326]
 294 00ec 1A04     		lsls	r2, r3, #16
 295 00ee 00F19580 		bmi	.L68
 296 00f2 C3F30903 		ubfx	r3, r3, #0, #10
 297 00f6 07EE903A 		vmov	s15, r3	@ int
 298 00fa 9FED657A 		vldr.32	s14, .L70+24
 299 00fe F8EEE77A 		vcvt.f32.s32	s15, s15
 300 0102 67EE877A 		vmul.f32	s15, s15, s14
 301 0106 17EE900A 		vmov	r0, s15
 302 010a FFF7FEFF 		bl	__aeabi_f2d
 303 010e 0B46     		mov	r3, r1
 304 0110 0246     		mov	r2, r0
 305 0112 6049     		ldr	r1, .L70+28
 306 0114 4046     		mov	r0, r8
 307 0116 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 308 011a 94F87E31 		ldrb	r3, [r4, #382]	@ zero_extendqisi2
 309 011e 9BB1     		cbz	r3, .L46
 310 0120 D4ED5E8A 		vldr.32	s17, [r4, #376]
 311 0124 F7EE007A 		vmov.f32	s15, #1.0e+0
 312 0128 B0EEE87A 		vabs.f32	s14, s17
 313 012c B4EEE77A 		vcmpe.f32	s14, s15
 314 0130 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 315 0134 08DD     		ble	.L46
 316 0136 94ED5D9A 		vldr.32	s18, [r4, #372]
 317 013a F3EE047A 		vmov.f32	s15, #2.0e+1
 318 013e B4EEE79A 		vcmpe.f32	s18, s15
 319 0142 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 320 0146 6FDC     		bgt	.L69
 321              	.L46:
 322 0148 4046     		mov	r0, r8
 323 014a 5349     		ldr	r1, .L70+32
 324 014c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 325 0150 0025     		movs	r5, #0
 326 0152 2846     		mov	r0, r5
 327 0154 0FB0     		add	sp, sp, #60
 328              		@ sp needed
 329 0156 BDEC048B 		vldm	sp!, {d8-d9}
 330 015a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 331              	.L67:
 332 015e 4046     		mov	r0, r8
 333 0160 4E49     		ldr	r1, .L70+36
 334 0162 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 335 0166 5AE7     		b	.L35
 336              	.L65:
 337 0168 0123     		movs	r3, #1
 338 016a 3846     		mov	r0, r7
 339 016c 3370     		strb	r3, [r6]
 340 016e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 341 0172 0028     		cmp	r0, #0
 342 0174 D4BF     		ite	le
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 7


 343 0176 0020     		movle	r0, #0
 344 0178 0120     		movgt	r0, #1
 345 017a 84F84401 		strb	r0, [r4, #324]
 346 017e 96F80090 		ldrb	r9, [r6]	@ zero_extendqisi2
 347 0182 B9F1000F 		cmp	r9, #0
 348 0186 3FF472AF 		beq	.L41
 349              	.L66:
 350 018a 0026     		movs	r6, #0
 351 018c 2046     		mov	r0, r4
 352 018e A4F84661 		strh	r6, [r4, #326]	@ movhi
 353 0192 C4F85061 		str	r6, [r4, #336]
 354 0196 84F87C61 		strb	r6, [r4, #380]
 355 019a 84F87E61 		strb	r6, [r4, #382]
 356 019e C4F84861 		str	r6, [r4, #328]
 357 01a2 FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 358 01a6 0023     		movs	r3, #0
 359 01a8 0122     		movs	r2, #1
 360 01aa 2846     		mov	r0, r5
 361 01ac 84F87D61 		strb	r6, [r4, #381]
 362 01b0 84F86261 		strb	r6, [r4, #354]
 363 01b4 C4F85C31 		str	r3, [r4, #348]	@ float
 364 01b8 C4F86831 		str	r3, [r4, #360]	@ float
 365 01bc C4F85831 		str	r3, [r4, #344]	@ float
 366 01c0 C4F86431 		str	r3, [r4, #356]	@ float
 367 01c4 84F86121 		strb	r2, [r4, #353]
 368 01c8 0FB0     		add	sp, sp, #60
 369              		@ sp needed
 370 01ca BDEC048B 		vldm	sp!, {d8-d9}
 371 01ce BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 372              	.L64:
 373 01d2 0EAA     		add	r2, sp, #56
 374 01d4 0223     		movs	r3, #2
 375 01d6 42F80C3D 		str	r3, [r2, #-12]!
 376 01da 0123     		movs	r3, #1
 377 01dc 3370     		strb	r3, [r6]
 378 01de 0CA9     		add	r1, sp, #48
 379 01e0 2B46     		mov	r3, r5
 380 01e2 3846     		mov	r0, r7
 381 01e4 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 382 01e8 0B9B     		ldr	r3, [sp, #44]
 383 01ea 002B     		cmp	r3, #0
 384 01ec 3FF432AF 		beq	.L36
 385 01f0 DDED0C7A 		vldr.32	s15, [sp, #48]	@ int
 386 01f4 DFED2A6A 		vldr.32	s13, .L70+40
 387 01f8 B8EE677A 		vcvt.f32.u32	s14, s15
 388 01fc 012B     		cmp	r3, #1
 389 01fe 27EE267A 		vmul.f32	s14, s14, s13
 390 0202 84ED4E7A 		vstr.32	s14, [r4, #312]
 391 0206 7FF625AF 		bls	.L36
 392 020a DDED0D7A 		vldr.32	s15, [sp, #52]	@ int
 393 020e F8EE677A 		vcvt.f32.u32	s15, s15
 394 0212 67EEA67A 		vmul.f32	s15, s15, s13
 395 0216 C4ED4F7A 		vstr.32	s15, [r4, #316]
 396 021a 1BE7     		b	.L36
 397              	.L68:
 398 021c 4046     		mov	r0, r8
 399 021e 2149     		ldr	r1, .L70+44
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 8


 400 0220 4D46     		mov	r5, r9
 401 0222 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 402 0226 FAE6     		b	.L35
 403              	.L69:
 404 0228 94ED5B0A 		vldr.32	s0, [r4, #364]
 405 022c 20EE080A 		vmul.f32	s0, s0, s16
 406 0230 FFF7FEFF 		bl	lrintf
 407 0234 94ED5C0A 		vldr.32	s0, [r4, #368]
 408 0238 20EE080A 		vmul.f32	s0, s0, s16
 409 023c 8246     		mov	r10, r0
 410 023e FFF7FEFF 		bl	lrintf
 411 0242 C9EE287A 		vdiv.f32	s15, s18, s17
 412 0246 0546     		mov	r5, r0
 413 0248 17EE900A 		vmov	r0, s15
 414 024c FFF7FEFF 		bl	__aeabi_f2d
 415 0250 0646     		mov	r6, r0
 416 0252 D4F87401 		ldr	r0, [r4, #372]	@ float
 417 0256 0F46     		mov	r7, r1
 418 0258 FFF7FEFF 		bl	__aeabi_f2d
 419 025c 0195     		str	r5, [sp, #4]
 420 025e CDE90201 		strd	r0, [sp, #8]
 421 0262 CDF800A0 		str	r10, [sp]
 422 0266 3246     		mov	r2, r6
 423 0268 3B46     		mov	r3, r7
 424 026a 4046     		mov	r0, r8
 425 026c 0E49     		ldr	r1, .L70+48
 426 026e 4D46     		mov	r5, r9
 427 0270 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 428 0274 D3E6     		b	.L35
 429              	.L71:
 430 0276 00BF     		.align	2
 431              	.L70:
 432 0278 20000000 		.word	.LC11
 433 027c 18000000 		.word	.LC10
 434 0280 0000C842 		.word	1120403456
 435 0284 14000000 		.word	.LC9
 436 0288 00000000 		.word	.LC8
 437 028c 2C000000 		.word	.LC12
 438 0290 0000B43E 		.word	1051983872
 439 0294 C0000000 		.word	.LC13
 440 0298 D8000000 		.word	.LC14
 441 029c 08000000 		.word	.LC1
 442 02a0 0AD7233C 		.word	1008981770
 443 02a4 00000000 		.word	.LC0
 444 02a8 6C000000 		.word	.LC6
 445              		.size	_ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, .-_ZN29RotatingMa
 446              		.section	.text._ZN29RotatingMagnetFilamentMonitorC2Eji,"ax",%progbits
 447              		.align	1
 448              		.p2align 2,,3
 449              		.global	_ZN29RotatingMagnetFilamentMonitorC2Eji
 450              		.syntax unified
 451              		.thumb
 452              		.thumb_func
 453              		.fpu fpv4-sp-d16
 454              		.type	_ZN29RotatingMagnetFilamentMonitorC2Eji, %function
 455              	_ZN29RotatingMagnetFilamentMonitorC2Eji:
 456              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 9


 457              		@ frame_needed = 0, uses_anonymous_args = 0
 458 0000 70B5     		push	{r4, r5, r6, lr}
 459 0002 0446     		mov	r4, r0
 460 0004 1546     		mov	r5, r2
 461 0006 FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitorC2Eji
 462 000a 1D4B     		ldr	r3, .L76
 463 000c 2360     		str	r3, [r4]
 464 000e 042D     		cmp	r5, #4
 465 0010 1C4D     		ldr	r5, .L76+4
 466 0012 1D49     		ldr	r1, .L76+8
 467 0014 1D4A     		ldr	r2, .L76+12
 468 0016 C4F83451 		str	r5, [r4, #308]	@ float
 469 001a 08BF     		it	eq
 470 001c 4FF48043 		moveq	r3, #16384
 471 0020 4FF00005 		mov	r5, #0
 472 0024 18BF     		it	ne
 473 0026 0023     		movne	r3, #0
 474 0028 0126     		movs	r6, #1
 475 002a 1948     		ldr	r0, .L76+16
 476 002c C4F83801 		str	r0, [r4, #312]	@ float
 477 0030 A4F84C31 		strh	r3, [r4, #332]	@ movhi
 478 0034 2046     		mov	r0, r4
 479 0036 C4F83C11 		str	r1, [r4, #316]	@ float
 480 003a C4F84021 		str	r2, [r4, #320]	@ float
 481 003e 84F84451 		strb	r5, [r4, #324]
 482 0042 A4F84651 		strh	r5, [r4, #326]	@ movhi
 483 0046 C4F85051 		str	r5, [r4, #336]
 484 004a 84F87C51 		strb	r5, [r4, #380]
 485 004e 84F87E51 		strb	r5, [r4, #382]
 486 0052 C4F84851 		str	r5, [r4, #328]
 487 0056 84F84561 		strb	r6, [r4, #325]
 488 005a FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 489 005e 0023     		movs	r3, #0
 490 0060 84F87D51 		strb	r5, [r4, #381]
 491 0064 84F86251 		strb	r5, [r4, #354]
 492 0068 84F86161 		strb	r6, [r4, #353]
 493 006c C4F85C31 		str	r3, [r4, #348]	@ float
 494 0070 C4F86831 		str	r3, [r4, #360]	@ float
 495 0074 C4F85831 		str	r3, [r4, #344]	@ float
 496 0078 C4F86431 		str	r3, [r4, #356]	@ float
 497 007c 2046     		mov	r0, r4
 498 007e 70BD     		pop	{r4, r5, r6, pc}
 499              	.L77:
 500              		.align	2
 501              	.L76:
 502 0080 08000000 		.word	.LANCHOR0+8
 503 0084 6666E641 		.word	1105618534
 504 0088 CDCCCC3F 		.word	1070386381
 505 008c 00004040 		.word	1077936128
 506 0090 9A99193F 		.word	1058642330
 507              		.size	_ZN29RotatingMagnetFilamentMonitorC2Eji, .-_ZN29RotatingMagnetFilamentMonitorC2Eji
 508              		.global	_ZN29RotatingMagnetFilamentMonitorC1Eji
 509              		.thumb_set _ZN29RotatingMagnetFilamentMonitorC1Eji,_ZN29RotatingMagnetFilamentMonitorC2Eji
 510              		.section	.text._ZN29RotatingMagnetFilamentMonitor4InitEv,"ax",%progbits
 511              		.align	1
 512              		.p2align 2,,3
 513              		.global	_ZN29RotatingMagnetFilamentMonitor4InitEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 10


 514              		.syntax unified
 515              		.thumb
 516              		.thumb_func
 517              		.fpu fpv4-sp-d16
 518              		.type	_ZN29RotatingMagnetFilamentMonitor4InitEv, %function
 519              	_ZN29RotatingMagnetFilamentMonitor4InitEv:
 520              		@ args = 0, pretend = 0, frame = 0
 521              		@ frame_needed = 0, uses_anonymous_args = 0
 522 0000 38B5     		push	{r3, r4, r5, lr}
 523 0002 0025     		movs	r5, #0
 524 0004 0446     		mov	r4, r0
 525 0006 A0F84651 		strh	r5, [r0, #326]	@ movhi
 526 000a C0F85051 		str	r5, [r0, #336]
 527 000e 80F87C51 		strb	r5, [r0, #380]
 528 0012 80F87E51 		strb	r5, [r0, #382]
 529 0016 C0F84851 		str	r5, [r0, #328]
 530 001a FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 531 001e 0023     		movs	r3, #0
 532 0020 0122     		movs	r2, #1
 533 0022 84F87D51 		strb	r5, [r4, #381]
 534 0026 84F86251 		strb	r5, [r4, #354]
 535 002a 84F86121 		strb	r2, [r4, #353]
 536 002e C4F85C31 		str	r3, [r4, #348]	@ float
 537 0032 C4F86831 		str	r3, [r4, #360]	@ float
 538 0036 C4F85831 		str	r3, [r4, #344]	@ float
 539 003a C4F86431 		str	r3, [r4, #356]	@ float
 540 003e 38BD     		pop	{r3, r4, r5, pc}
 541              		.size	_ZN29RotatingMagnetFilamentMonitor4InitEv, .-_ZN29RotatingMagnetFilamentMonitor4InitEv
 542              		.section	.text._ZN29RotatingMagnetFilamentMonitor5ResetEv,"ax",%progbits
 543              		.align	1
 544              		.p2align 2,,3
 545              		.global	_ZN29RotatingMagnetFilamentMonitor5ResetEv
 546              		.syntax unified
 547              		.thumb
 548              		.thumb_func
 549              		.fpu fpv4-sp-d16
 550              		.type	_ZN29RotatingMagnetFilamentMonitor5ResetEv, %function
 551              	_ZN29RotatingMagnetFilamentMonitor5ResetEv:
 552              		@ args = 0, pretend = 0, frame = 0
 553              		@ frame_needed = 0, uses_anonymous_args = 0
 554              		@ link register save eliminated.
 555 0000 0023     		movs	r3, #0
 556 0002 0022     		movs	r2, #0
 557 0004 0121     		movs	r1, #1
 558 0006 80F86111 		strb	r1, [r0, #353]
 559 000a C0F85C31 		str	r3, [r0, #348]	@ float
 560 000e C0F86831 		str	r3, [r0, #360]	@ float
 561 0012 C0F85831 		str	r3, [r0, #344]	@ float
 562 0016 C0F86431 		str	r3, [r0, #356]	@ float
 563 001a 80F87D21 		strb	r2, [r0, #381]
 564 001e 80F86221 		strb	r2, [r0, #354]
 565 0022 7047     		bx	lr
 566              		.size	_ZN29RotatingMagnetFilamentMonitor5ResetEv, .-_ZN29RotatingMagnetFilamentMonitor5ResetEv
 567              		.section	.text._ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv,"ax",%progbits
 568              		.align	1
 569              		.p2align 2,,3
 570              		.global	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 11


 571              		.syntax unified
 572              		.thumb
 573              		.thumb_func
 574              		.fpu fpv4-sp-d16
 575              		.type	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv, %function
 576              	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv:
 577              		@ args = 0, pretend = 0, frame = 8
 578              		@ frame_needed = 0, uses_anonymous_args = 0
 579 0000 70B5     		push	{r4, r5, r6, lr}
 580 0002 2DED028B 		vpush.64	{d8}
 581 0006 0026     		movs	r6, #0
 582 0008 82B0     		sub	sp, sp, #8
 583 000a 9FED308A 		vldr.32	s16, .L97
 584 000e 0446     		mov	r4, r0
 585 0010 0125     		movs	r5, #1
 586 0012 17E0     		b	.L89
 587              	.L83:
 588 0014 D4F85031 		ldr	r3, [r4, #336]
 589 0018 94F86221 		ldrb	r2, [r4, #354]	@ zero_extendqisi2
 590 001c 0133     		adds	r3, r3, #1
 591 001e C4F85031 		str	r3, [r4, #336]
 592 0022 62B1     		cbz	r2, .L86
 593 0024 D4ED567A 		vldr.32	s15, [r4, #344]
 594 0028 94ED557A 		vldr.32	s14, [r4, #340]
 595 002c 94F86031 		ldrb	r3, [r4, #352]	@ zero_extendqisi2
 596 0030 77EE877A 		vadd.f32	s15, s15, s14
 597 0034 C4ED567A 		vstr.32	s15, [r4, #344]
 598 0038 0BB1     		cbz	r3, .L86
 599 003a 84F86151 		strb	r5, [r4, #353]
 600              	.L86:
 601 003e 0023     		movs	r3, #0
 602 0040 84F86231 		strb	r3, [r4, #354]
 603              	.L89:
 604 0044 0DF10601 		add	r1, sp, #6
 605 0048 2046     		mov	r0, r4
 606 004a FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt
 607 004e C8B3     		cbz	r0, .L81
 608 0050 0128     		cmp	r0, #1
 609 0052 DFD1     		bne	.L83
 610 0054 84F87C01 		strb	r0, [r4, #380]
 611 0058 FFF7FEFF 		bl	millis
 612 005c BDF80620 		ldrh	r2, [sp, #6]
 613 0060 B4F84631 		ldrh	r3, [r4, #326]
 614 0064 94ED577A 		vldr.32	s14, [r4, #348]
 615 0068 C4F84801 		str	r0, [r4, #328]
 616 006c D31A     		subs	r3, r2, r3
 617 006e C3F30903 		ubfx	r3, r3, #0, #10
 618 0072 B3F5007F 		cmp	r3, #512
 619 0076 88BF     		it	hi
 620 0078 A3F58063 		subhi	r3, r3, #1024
 621 007c 07EE903A 		vmov	s15, r3	@ int
 622 0080 F8EEE77A 		vcvt.f32.s32	s15, s15
 623 0084 94F86231 		ldrb	r3, [r4, #354]	@ zero_extendqisi2
 624 0088 A4F84621 		strh	r2, [r4, #326]	@ movhi
 625 008c A7EE887A 		vfma.f32	s14, s15, s16
 626 0090 F0EE477A 		vmov.f32	s15, s14
 627 0094 84ED577A 		vstr.32	s14, [r4, #348]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 12


 628 0098 002B     		cmp	r3, #0
 629 009a D0D0     		beq	.L86
 630 009c 94F86031 		ldrb	r3, [r4, #352]	@ zero_extendqisi2
 631 00a0 6BB9     		cbnz	r3, .L87
 632 00a2 D4ED596A 		vldr.32	s13, [r4, #356]
 633 00a6 94ED5A7A 		vldr.32	s14, [r4, #360]
 634 00aa 94ED556A 		vldr.32	s12, [r4, #340]
 635 00ae 77EE277A 		vadd.f32	s15, s14, s15
 636 00b2 76EE866A 		vadd.f32	s13, s13, s12
 637 00b6 C4ED5A7A 		vstr.32	s15, [r4, #360]
 638 00ba C4ED596A 		vstr.32	s13, [r4, #356]
 639              	.L87:
 640 00be C4F85C61 		str	r6, [r4, #348]	@ float
 641 00c2 BCE7     		b	.L86
 642              	.L81:
 643 00c4 02B0     		add	sp, sp, #8
 644              		@ sp needed
 645 00c6 BDEC028B 		vldm	sp!, {d8}
 646 00ca 70BD     		pop	{r4, r5, r6, pc}
 647              	.L98:
 648              		.align	2
 649              	.L97:
 650 00cc 0000803A 		.word	981467136
 651              		.size	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv, .-_ZN29RotatingMagnetFilamentMonit
 652              		.section	.text._ZN29RotatingMagnetFilamentMonitor5ClearEb,"ax",%progbits
 653              		.align	1
 654              		.p2align 2,,3
 655              		.global	_ZN29RotatingMagnetFilamentMonitor5ClearEb
 656              		.syntax unified
 657              		.thumb
 658              		.thumb_func
 659              		.fpu fpv4-sp-d16
 660              		.type	_ZN29RotatingMagnetFilamentMonitor5ClearEb, %function
 661              	_ZN29RotatingMagnetFilamentMonitor5ClearEb:
 662              		@ args = 0, pretend = 0, frame = 0
 663              		@ frame_needed = 0, uses_anonymous_args = 0
 664 0000 38B5     		push	{r3, r4, r5, lr}
 665 0002 0446     		mov	r4, r0
 666 0004 0D46     		mov	r5, r1
 667 0006 FFF7FEFF 		bl	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv
 668 000a 0023     		movs	r3, #0
 669 000c 0022     		movs	r2, #0
 670 000e 0121     		movs	r1, #1
 671 0010 84F86111 		strb	r1, [r4, #353]
 672 0014 C4F85C31 		str	r3, [r4, #348]	@ float
 673 0018 C4F86831 		str	r3, [r4, #360]	@ float
 674 001c C4F85831 		str	r3, [r4, #344]	@ float
 675 0020 C4F86431 		str	r3, [r4, #356]	@ float
 676 0024 84F87D21 		strb	r2, [r4, #381]
 677 0028 84F86221 		strb	r2, [r4, #354]
 678 002c 55B1     		cbz	r5, .L101
 679 002e B4F84631 		ldrh	r3, [r4, #326]
 680 0032 1A04     		lsls	r2, r3, #16
 681 0034 08D4     		bmi	.L102
 682 0036 B4F84C21 		ldrh	r2, [r4, #332]
 683 003a 1342     		tst	r3, r2
 684 003c 14BF     		ite	ne
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 13


 685 003e 0846     		movne	r0, r1
 686 0040 0020     		moveq	r0, #0
 687 0042 38BD     		pop	{r3, r4, r5, pc}
 688              	.L101:
 689 0044 2846     		mov	r0, r5
 690 0046 38BD     		pop	{r3, r4, r5, pc}
 691              	.L102:
 692 0048 0420     		movs	r0, #4
 693 004a 38BD     		pop	{r3, r4, r5, pc}
 694              		.size	_ZN29RotatingMagnetFilamentMonitor5ClearEb, .-_ZN29RotatingMagnetFilamentMonitor5ClearEb
 695              		.section	.text._ZNK29RotatingMagnetFilamentMonitor18GetCurrentPositionEv,"ax",%progbits
 696              		.align	1
 697              		.p2align 2,,3
 698              		.global	_ZNK29RotatingMagnetFilamentMonitor18GetCurrentPositionEv
 699              		.syntax unified
 700              		.thumb
 701              		.thumb_func
 702              		.fpu fpv4-sp-d16
 703              		.type	_ZNK29RotatingMagnetFilamentMonitor18GetCurrentPositionEv, %function
 704              	_ZNK29RotatingMagnetFilamentMonitor18GetCurrentPositionEv:
 705              		@ args = 0, pretend = 0, frame = 0
 706              		@ frame_needed = 0, uses_anonymous_args = 0
 707              		@ link register save eliminated.
 708 0000 B0F84631 		ldrh	r3, [r0, #326]
 709 0004 DFED057A 		vldr.32	s15, .L105
 710 0008 C3F30903 		ubfx	r3, r3, #0, #10
 711 000c 00EE103A 		vmov	s0, r3	@ int
 712 0010 B8EEC00A 		vcvt.f32.s32	s0, s0
 713 0014 20EE270A 		vmul.f32	s0, s0, s15
 714 0018 7047     		bx	lr
 715              	.L106:
 716 001a 00BF     		.align	2
 717              	.L105:
 718 001c 0000B43E 		.word	1051983872
 719              		.size	_ZNK29RotatingMagnetFilamentMonitor18GetCurrentPositionEv, .-_ZNK29RotatingMagnetFilamentMon
 720              		.section	.text._ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb,"ax",%progbits
 721              		.align	1
 722              		.p2align 2,,3
 723              		.global	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb
 724              		.syntax unified
 725              		.thumb
 726              		.thumb_func
 727              		.fpu fpv4-sp-d16
 728              		.type	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb, %function
 729              	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb:
 730              		@ args = 0, pretend = 0, frame = 0
 731              		@ frame_needed = 0, uses_anonymous_args = 0
 732 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 733 0004 2DED028B 		vpush.64	{d8}
 734 0008 494B     		ldr	r3, .L144
 735 000a D3F80831 		ldr	r3, [r3, #264]
 736 000e 9B04     		lsls	r3, r3, #18
 737 0010 84B0     		sub	sp, sp, #16
 738 0012 0446     		mov	r4, r0
 739 0014 B0EE408A 		vmov.f32	s16, s0
 740 0018 F0EE608A 		vmov.f32	s17, s1
 741 001c 18D5     		bpl	.L108
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 14


 742 001e 10EE100A 		vmov	r0, s0
 743 0022 8846     		mov	r8, r1
 744 0024 FFF7FEFF 		bl	__aeabi_f2d
 745 0028 0646     		mov	r6, r0
 746 002a 18EE900A 		vmov	r0, s17
 747 002e 0F46     		mov	r7, r1
 748 0030 404D     		ldr	r5, .L144+4
 749 0032 FFF7FEFF 		bl	__aeabi_f2d
 750 0036 404B     		ldr	r3, .L144+8
 751 0038 B8F1000F 		cmp	r8, #0
 752 003c 18BF     		it	ne
 753 003e 1D46     		movne	r5, r3
 754 0040 CDE90001 		strd	r0, [sp]
 755 0044 3246     		mov	r2, r6
 756 0046 3B46     		mov	r3, r7
 757 0048 0295     		str	r5, [sp, #8]
 758 004a 3C48     		ldr	r0, .L144+12
 759 004c FFF7FEFF 		bl	debugPrintf
 760              	.L108:
 761 0050 D4ED4D7A 		vldr.32	s15, [r4, #308]
 762 0054 94F87D01 		ldrb	r0, [r4, #381]	@ zero_extendqisi2
 763 0058 68EEA77A 		vmul.f32	s15, s17, s15
 764 005c 87EE887A 		vdiv.f32	s14, s15, s16
 765 0060 90B9     		cbnz	r0, .L110
 766 0062 0123     		movs	r3, #1
 767 0064 84F87D31 		strb	r3, [r4, #381]
 768              	.L111:
 769 0068 0123     		movs	r3, #1
 770 006a 84F87E31 		strb	r3, [r4, #382]
 771 006e 84ED5C7A 		vstr.32	s14, [r4, #368]
 772 0072 84ED5B7A 		vstr.32	s14, [r4, #364]
 773 0076 84ED5D8A 		vstr.32	s16, [r4, #372]
 774 007a C4ED5E8A 		vstr.32	s17, [r4, #376]
 775 007e 04B0     		add	sp, sp, #16
 776              		@ sp needed
 777 0080 BDEC028B 		vldm	sp!, {d8}
 778 0084 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 779              	.L110:
 780 0088 94F84401 		ldrb	r0, [r4, #324]	@ zero_extendqisi2
 781 008c 30BB     		cbnz	r0, .L143
 782              	.L112:
 783 008e 94F87E31 		ldrb	r3, [r4, #382]	@ zero_extendqisi2
 784 0092 002B     		cmp	r3, #0
 785 0094 E8D0     		beq	.L111
 786 0096 D4ED5B7A 		vldr.32	s15, [r4, #364]
 787 009a 94ED5D0A 		vldr.32	s0, [r4, #372]
 788 009e D4ED5E0A 		vldr.32	s1, [r4, #376]
 789 00a2 F4EEC77A 		vcmpe.f32	s15, s14
 790 00a6 D4ED5C7A 		vldr.32	s15, [r4, #368]
 791 00aa F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 792 00ae 30EE088A 		vadd.f32	s16, s0, s16
 793 00b2 F4EEC77A 		vcmpe.f32	s15, s14
 794 00b6 70EEA88A 		vadd.f32	s17, s1, s17
 795 00ba C8BF     		it	gt
 796 00bc 84ED5B7A 		vstrgt.32	s14, [r4, #364]
 797 00c0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 798 00c4 48BF     		it	mi
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 15


 799 00c6 84ED5C7A 		vstrmi.32	s14, [r4, #368]
 800 00ca 84ED5D8A 		vstr.32	s16, [r4, #372]
 801 00ce C4ED5E8A 		vstr.32	s17, [r4, #376]
 802 00d2 04B0     		add	sp, sp, #16
 803              		@ sp needed
 804 00d4 BDEC028B 		vldm	sp!, {d8}
 805 00d8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 806              	.L143:
 807 00dc B5EEC08A 		vcmpe.f32	s16, #0
 808 00e0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 809 00e4 14DB     		blt	.L139
 810 00e6 D4ED4E6A 		vldr.32	s13, [r4, #312]
 811 00ea 68EE266A 		vmul.f32	s13, s16, s13
 812 00ee F4EEE67A 		vcmpe.f32	s15, s13
 813 00f2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 814 00f6 19D4     		bmi	.L127
 815 00f8 D4ED4F6A 		vldr.32	s13, [r4, #316]
 816 00fc 68EE266A 		vmul.f32	s13, s16, s13
 817              	.L117:
 818 0100 F4EEE76A 		vcmpe.f32	s13, s15
 819 0104 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 820 0108 4CBF     		ite	mi
 821 010a 0320     		movmi	r0, #3
 822 010c 0020     		movpl	r0, #0
 823 010e BEE7     		b	.L112
 824              	.L139:
 825 0110 D4ED4F6A 		vldr.32	s13, [r4, #316]
 826 0114 68EE266A 		vmul.f32	s13, s16, s13
 827 0118 F4EEE67A 		vcmpe.f32	s15, s13
 828 011c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 829 0120 04D4     		bmi	.L127
 830 0122 D4ED4E6A 		vldr.32	s13, [r4, #312]
 831 0126 68EE266A 		vmul.f32	s13, s16, s13
 832 012a E9E7     		b	.L117
 833              	.L127:
 834 012c 0220     		movs	r0, #2
 835 012e AEE7     		b	.L112
 836              	.L145:
 837              		.align	2
 838              	.L144:
 839 0130 00000000 		.word	reprap
 840 0134 14000000 		.word	.LC9
 841 0138 00000000 		.word	.LC15
 842 013c 0C000000 		.word	.LC16
 843              		.size	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb, .-_ZN29RotatingMagnetFilamentMonitor1
 844              		.section	.text._ZN29RotatingMagnetFilamentMonitor5CheckEbbbf,"ax",%progbits
 845              		.align	1
 846              		.p2align 2,,3
 847              		.global	_ZN29RotatingMagnetFilamentMonitor5CheckEbbbf
 848              		.syntax unified
 849              		.thumb
 850              		.thumb_func
 851              		.fpu fpv4-sp-d16
 852              		.type	_ZN29RotatingMagnetFilamentMonitor5CheckEbbbf, %function
 853              	_ZN29RotatingMagnetFilamentMonitor5CheckEbbbf:
 854              		@ args = 0, pretend = 0, frame = 0
 855              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 16


 856 0000 38B5     		push	{r3, r4, r5, lr}
 857 0002 0446     		mov	r4, r0
 858 0004 0D46     		mov	r5, r1
 859 0006 7AB3     		cbz	r2, .L147
 860 0008 90F84521 		ldrb	r2, [r0, #325]	@ zero_extendqisi2
 861 000c 62BB     		cbnz	r2, .L147
 862 000e 0122     		movs	r2, #1
 863 0010 80F86121 		strb	r2, [r0, #353]
 864 0014 83BB     		cbnz	r3, .L170
 865              	.L150:
 866 0016 2046     		mov	r0, r4
 867 0018 FFF7FEFF 		bl	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv
 868 001c 15B3     		cbz	r5, .L156
 869 001e B4F84611 		ldrh	r1, [r4, #326]
 870 0022 0B04     		lsls	r3, r1, #16
 871 0024 3FD4     		bmi	.L158
 872 0026 B4F84C31 		ldrh	r3, [r4, #332]
 873 002a 1940     		ands	r1, r1, r3
 874 002c 48D1     		bne	.L159
 875 002e 94ED590A 		vldr.32	s0, [r4, #356]
 876 0032 D4ED507A 		vldr.32	s15, [r4, #320]
 877 0036 B4EEE70A 		vcmpe.f32	s0, s15
 878 003a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 879 003e 34DA     		bge	.L171
 880 0040 94ED567A 		vldr.32	s14, [r4, #344]
 881 0044 77EEA77A 		vadd.f32	s15, s15, s15
 882 0048 30EE070A 		vadd.f32	s0, s0, s14
 883 004c B4EEE70A 		vcmpe.f32	s0, s15
 884 0050 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 885 0054 06DB     		blt	.L156
 886 0056 FFF7FEFF 		bl	millis
 887 005a D4F84831 		ldr	r3, [r4, #328]
 888 005e C01A     		subs	r0, r0, r3
 889 0060 DC28     		cmp	r0, #220
 890 0062 2FD8     		bhi	.L172
 891              	.L156:
 892 0064 0020     		movs	r0, #0
 893 0066 38BD     		pop	{r3, r4, r5, pc}
 894              	.L147:
 895 0068 D4ED567A 		vldr.32	s15, [r4, #344]
 896 006c 37EE800A 		vadd.f32	s0, s15, s0
 897 0070 84ED560A 		vstr.32	s0, [r4, #344]
 898 0074 002B     		cmp	r3, #0
 899 0076 CED0     		beq	.L150
 900              	.L170:
 901 0078 2046     		mov	r0, r4
 902 007a FFF7FEFF 		bl	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv
 903 007e 0028     		cmp	r0, #0
 904 0080 C9D0     		beq	.L150
 905 0082 D4F85831 		ldr	r3, [r4, #344]	@ float
 906 0086 94F86111 		ldrb	r1, [r4, #353]	@ zero_extendqisi2
 907 008a C4F85431 		str	r3, [r4, #340]	@ float
 908 008e 0020     		movs	r0, #0
 909 0090 0122     		movs	r2, #1
 910 0092 0023     		movs	r3, #0
 911 0094 C4F85801 		str	r0, [r4, #344]	@ float
 912 0098 84F86011 		strb	r1, [r4, #352]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 17


 913 009c 84F86221 		strb	r2, [r4, #354]
 914 00a0 84F86131 		strb	r3, [r4, #353]
 915 00a4 B7E7     		b	.L150
 916              	.L158:
 917 00a6 0420     		movs	r0, #4
 918 00a8 38BD     		pop	{r3, r4, r5, pc}
 919              	.L171:
 920 00aa D4ED5A0A 		vldr.32	s1, [r4, #360]
 921 00ae 2046     		mov	r0, r4
 922 00b0 FFF7FEFF 		bl	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb
 923 00b4 0023     		movs	r3, #0
 924 00b6 C4F86831 		str	r3, [r4, #360]	@ float
 925 00ba C4F86431 		str	r3, [r4, #356]	@ float
 926 00be 38BD     		pop	{r3, r4, r5, pc}
 927              	.L159:
 928 00c0 0120     		movs	r0, #1
 929 00c2 38BD     		pop	{r3, r4, r5, pc}
 930              	.L172:
 931 00c4 2046     		mov	r0, r4
 932 00c6 FFF7FEFF 		bl	_ZNK21Duet3DFilamentMonitor11IsReceivingEv
 933 00ca 0028     		cmp	r0, #0
 934 00cc CAD1     		bne	.L156
 935 00ce D4ED5A0A 		vldr.32	s1, [r4, #360]
 936 00d2 94ED577A 		vldr.32	s14, [r4, #348]
 937 00d6 94ED590A 		vldr.32	s0, [r4, #356]
 938 00da D4ED567A 		vldr.32	s15, [r4, #344]
 939 00de 70EE870A 		vadd.f32	s1, s1, s14
 940 00e2 30EE270A 		vadd.f32	s0, s0, s15
 941 00e6 0121     		movs	r1, #1
 942 00e8 2046     		mov	r0, r4
 943 00ea FFF7FEFF 		bl	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb
 944 00ee 0023     		movs	r3, #0
 945 00f0 C4F85C31 		str	r3, [r4, #348]	@ float
 946 00f4 C4F86831 		str	r3, [r4, #360]	@ float
 947 00f8 C4F85831 		str	r3, [r4, #344]	@ float
 948 00fc C4F86431 		str	r3, [r4, #356]	@ float
 949 0100 38BD     		pop	{r3, r4, r5, pc}
 950              		.size	_ZN29RotatingMagnetFilamentMonitor5CheckEbbbf, .-_ZN29RotatingMagnetFilamentMonitor5CheckEbb
 951              		.global	_ZTV29RotatingMagnetFilamentMonitor
 952 0102 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 953              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 954              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 955              	_ZL28cpu_irq_prev_interrupt_state:
 956 0000 00       		.space	1
 957              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 958              		.align	2
 959              		.type	_ZL32cpu_irq_critical_section_counter, %object
 960              		.size	_ZL32cpu_irq_critical_section_counter, 4
 961              	_ZL32cpu_irq_critical_section_counter:
 962 0000 00000000 		.space	4
 963              		.section	.rodata._ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej.str1.4,"aMS",%prog
 964              		.align	2
 965              	.LC0:
 966 0000 6572726F 		.ascii	"error\000"
 966      7200
 967 0006 0000     		.space	2
 968              	.LC1:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 18


 969 0008 6E6F2064 		.ascii	"no data received\000"
 969      61746120 
 969      72656365 
 969      69766564 
 969      00
 970 0019 000000   		.space	3
 971              	.LC2:
 972 001c 6F6B00   		.ascii	"ok\000"
 973 001f 00       		.space	1
 974              	.LC3:
 975 0020 6E6F2066 		.ascii	"no filament\000"
 975      696C616D 
 975      656E7400 
 976              	.LC4:
 977 002c 45787472 		.ascii	"Extruder %u sensor: position %.2f, %s, \000"
 977      75646572 
 977      20257520 
 977      73656E73 
 977      6F723A20 
 978              	.LC5:
 979 0054 256C7520 		.ascii	"%lu framing errors, \000"
 979      6672616D 
 979      696E6720 
 979      6572726F 
 979      72732C20 
 980 0069 000000   		.space	3
 981              	.LC6:
 982 006c 6D656173 		.ascii	"measured sensitivity %.2fmm/rev, measured minimum %"
 982      75726564 
 982      2073656E 
 982      73697469 
 982      76697479 
 983 009f 6C642525 		.ascii	"ld%%, maximum %ld%% over %.1fmm\012\000"
 983      2C206D61 
 983      78696D75 
 983      6D20256C 
 983      64252520 
 984              	.LC7:
 985 00c0 6E6F2063 		.ascii	"no calibration data\012\000"
 985      616C6962 
 985      72617469 
 985      6F6E2064 
 985      6174610A 
 986              		.section	.rodata._ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb.str1.4,"aMS",%progbits,1
 987              		.align	2
 988              	.LC15:
 989 0000 206F7665 		.ascii	" overdue\000"
 989      72647565 
 989      00
 990 0009 000000   		.space	3
 991              	.LC16:
 992 000c 45787472 		.ascii	"Extr req %.3f meas %.3f%s\012\000"
 992      20726571 
 992      20252E33 
 992      66206D65 
 992      61732025 
 993              		.section	.rodata._ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb.str1.4,
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 19


 994              		.align	2
 995              	.LC8:
 996 0000 20776974 		.ascii	" with microswitch\000"
 996      68206D69 
 996      63726F73 
 996      77697463 
 996      6800
 997 0012 0000     		.space	2
 998              	.LC9:
 999 0014 00       		.ascii	"\000"
 1000 0015 000000   		.space	3
 1001              	.LC10:
 1002 0018 656E6162 		.ascii	"enabled\000"
 1002      6C656400 
 1003              	.LC11:
 1004 0020 64697361 		.ascii	"disabled\000"
 1004      626C6564 
 1004      00
 1005 0029 000000   		.space	3
 1006              	.LC12:
 1007 002c 44756574 		.ascii	"Duet3D rotating magnet filament monitor%s on endsto"
 1007      33442072 
 1007      6F746174 
 1007      696E6720 
 1007      6D61676E 
 1008 005f 7020696E 		.ascii	"p input %u, %s, sensitivity %.2fmm/rev, allowed mov"
 1008      70757420 
 1008      25752C20 
 1008      25732C20 
 1008      73656E73 
 1009 0092 656D656E 		.ascii	"ement %ld%% to %ld%%, check every %.1fmm, \000"
 1009      7420256C 
 1009      64252520 
 1009      746F2025 
 1009      6C642525 
 1010 00bd 000000   		.space	3
 1011              	.LC13:
 1012 00c0 63757272 		.ascii	"current position %.1f, \000"
 1012      656E7420 
 1012      706F7369 
 1012      74696F6E 
 1012      20252E31 
 1013              	.LC14:
 1014 00d8 6E6F2063 		.ascii	"no calibration data\000"
 1014      616C6962 
 1014      72617469 
 1014      6F6E2064 
 1014      61746100 
 1015              		.section	.rodata._ZTV29RotatingMagnetFilamentMonitor,"a",%progbits
 1016              		.align	2
 1017              		.set	.LANCHOR0,. + 0
 1018              		.type	_ZTV29RotatingMagnetFilamentMonitor, %object
 1019              		.size	_ZTV29RotatingMagnetFilamentMonitor, 40
 1020              	_ZTV29RotatingMagnetFilamentMonitor:
 1021 0000 00000000 		.word	0
 1022 0004 00000000 		.word	0
 1023 0008 00000000 		.word	_ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccm9TgQd.s 			page 20


 1024 000c 00000000 		.word	_ZN29RotatingMagnetFilamentMonitor5CheckEbbbf
 1025 0010 00000000 		.word	_ZN29RotatingMagnetFilamentMonitor5ClearEb
 1026 0014 00000000 		.word	_ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej
 1027 0018 00000000 		.word	_ZN21Duet3DFilamentMonitor9InterruptEv
 1028 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 1029 0020 00000000 		.word	_ZN29RotatingMagnetFilamentMonitorD1Ev
 1030 0024 00000000 		.word	_ZN29RotatingMagnetFilamentMonitorD0Ev
 1031              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
