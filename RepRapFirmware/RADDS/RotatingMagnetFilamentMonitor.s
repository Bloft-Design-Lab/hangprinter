ARM GAS  /tmp/ccA5ntZZ.s 			page 1


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
  11              		.file	"RotatingMagnetFilamentMonitor.cpp"
  12              		.global	__aeabi_i2f
  13              		.global	__aeabi_fmul
  14              		.global	__aeabi_f2d
  15              		.global	__aeabi_fcmpgt
  16              		.global	__aeabi_fdiv
  17              		.section	.text._ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej,"ax",%progbits
  18              		.align	1
  19              		.p2align 2,,3
  20              		.global	_ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu softvfp
  25              		.type	_ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej, %function
  26              	_ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej:
  27              		@ args = 0, pretend = 0, frame = 0
  28              		@ frame_needed = 0, uses_anonymous_args = 0
  29 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  30 0004 90F87C31 		ldrb	r3, [r0, #380]	@ zero_extendqisi2
  31 0008 0446     		mov	r4, r0
  32 000a 86B0     		sub	sp, sp, #24
  33 000c 0E46     		mov	r6, r1
  34 000e 1746     		mov	r7, r2
  35 0010 B0F84601 		ldrh	r0, [r0, #326]
  36 0014 8BBB     		cbnz	r3, .L2
  37 0016 3849     		ldr	r1, .L24
  38              	.L3:
  39 0018 C0F30900 		ubfx	r0, r0, #0, #10
  40 001c 0291     		str	r1, [sp, #8]
  41 001e FFF7FEFF 		bl	__aeabi_i2f
  42 0022 3649     		ldr	r1, .L24+4
  43 0024 FFF7FEFF 		bl	__aeabi_fmul
  44 0028 FFF7FEFF 		bl	__aeabi_f2d
  45 002c CDE90001 		strd	r0, [sp]
  46 0030 334D     		ldr	r5, .L24+8
  47 0032 3B46     		mov	r3, r7
  48 0034 2868     		ldr	r0, [r5]	@ unaligned
  49 0036 334A     		ldr	r2, .L24+12
  50 0038 3146     		mov	r1, r6
  51 003a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
  52 003e 94F87C31 		ldrb	r3, [r4, #380]	@ zero_extendqisi2
  53 0042 23BB     		cbnz	r3, .L22
  54              	.L4:
  55 0044 94F87E31 		ldrb	r3, [r4, #382]	@ zero_extendqisi2
  56 0048 7BB1     		cbz	r3, .L5
  57 004a D4F87871 		ldr	r7, [r4, #376]	@ float
ARM GAS  /tmp/ccA5ntZZ.s 			page 2


  58 004e 4FF07E51 		mov	r1, #1065353216
  59 0052 27F00040 		bic	r0, r7, #-2147483648
  60 0056 FFF7FEFF 		bl	__aeabi_fcmpgt
  61 005a 30B1     		cbz	r0, .L5
  62 005c D4F87481 		ldr	r8, [r4, #372]	@ float
  63 0060 2949     		ldr	r1, .L24+16
  64 0062 4046     		mov	r0, r8
  65 0064 FFF7FEFF 		bl	__aeabi_fcmpgt
  66 0068 D8B9     		cbnz	r0, .L23
  67              	.L5:
  68 006a 3146     		mov	r1, r6
  69 006c 2868     		ldr	r0, [r5]
  70 006e 274A     		ldr	r2, .L24+20
  71 0070 06B0     		add	sp, sp, #24
  72              		@ sp needed
  73 0072 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
  74 0076 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
  75              	.L2:
  76 007a 0304     		lsls	r3, r0, #16
  77 007c 0FD4     		bmi	.L9
  78 007e B4F84C21 		ldrh	r2, [r4, #332]
  79 0082 234B     		ldr	r3, .L24+24
  80 0084 1042     		tst	r0, r2
  81 0086 2349     		ldr	r1, .L24+28
  82 0088 08BF     		it	eq
  83 008a 1946     		moveq	r1, r3
  84 008c C4E7     		b	.L3
  85              	.L22:
  86 008e D4F85031 		ldr	r3, [r4, #336]
  87 0092 214A     		ldr	r2, .L24+32
  88 0094 3146     		mov	r1, r6
  89 0096 2868     		ldr	r0, [r5]
  90 0098 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
  91 009c D2E7     		b	.L4
  92              	.L9:
  93 009e 1F49     		ldr	r1, .L24+36
  94 00a0 BAE7     		b	.L3
  95              	.L23:
  96 00a2 1F49     		ldr	r1, .L24+40
  97 00a4 D4F86C01 		ldr	r0, [r4, #364]	@ float
  98 00a8 FFF7FEFF 		bl	__aeabi_fmul
  99 00ac 2D68     		ldr	r5, [r5]
 100 00ae FFF7FEFF 		bl	lrintf
 101 00b2 1B49     		ldr	r1, .L24+40
 102 00b4 8246     		mov	r10, r0
 103 00b6 D4F87001 		ldr	r0, [r4, #368]	@ float
 104 00ba FFF7FEFF 		bl	__aeabi_fmul
 105 00be FFF7FEFF 		bl	lrintf
 106 00c2 8146     		mov	r9, r0
 107 00c4 D4F87401 		ldr	r0, [r4, #372]	@ float
 108 00c8 FFF7FEFF 		bl	__aeabi_f2d
 109 00cc CDE90401 		strd	r0, [sp, #16]
 110 00d0 3946     		mov	r1, r7
 111 00d2 4046     		mov	r0, r8
 112 00d4 CDF808A0 		str	r10, [sp, #8]
 113 00d8 CDF80C90 		str	r9, [sp, #12]
 114 00dc FFF7FEFF 		bl	__aeabi_fdiv
ARM GAS  /tmp/ccA5ntZZ.s 			page 3


 115 00e0 FFF7FEFF 		bl	__aeabi_f2d
 116 00e4 0F4A     		ldr	r2, .L24+44
 117 00e6 CDE90001 		strd	r0, [sp]
 118 00ea 2846     		mov	r0, r5
 119 00ec 3146     		mov	r1, r6
 120 00ee FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 121 00f2 06B0     		add	sp, sp, #24
 122              		@ sp needed
 123 00f4 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 124              	.L25:
 125              		.align	2
 126              	.L24:
 127 00f8 08000000 		.word	.LC1
 128 00fc 0000B43E 		.word	1051983872
 129 0100 00000000 		.word	reprap
 130 0104 2C000000 		.word	.LC4
 131 0108 0000A041 		.word	1101004800
 132 010c C0000000 		.word	.LC7
 133 0110 1C000000 		.word	.LC2
 134 0114 20000000 		.word	.LC3
 135 0118 54000000 		.word	.LC5
 136 011c 00000000 		.word	.LC0
 137 0120 0000C842 		.word	1120403456
 138 0124 6C000000 		.word	.LC6
 139              		.size	_ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej, .-_ZN29RotatingMagnetFilamen
 140              		.section	.text._ZN29RotatingMagnetFilamentMonitorD2Ev,"axG",%progbits,_ZN29RotatingMagnetFilamentM
 141              		.align	1
 142              		.p2align 2,,3
 143              		.weak	_ZN29RotatingMagnetFilamentMonitorD2Ev
 144              		.syntax unified
 145              		.thumb
 146              		.thumb_func
 147              		.fpu softvfp
 148              		.type	_ZN29RotatingMagnetFilamentMonitorD2Ev, %function
 149              	_ZN29RotatingMagnetFilamentMonitorD2Ev:
 150              		@ args = 0, pretend = 0, frame = 0
 151              		@ frame_needed = 0, uses_anonymous_args = 0
 152 0000 10B5     		push	{r4, lr}
 153 0002 0446     		mov	r4, r0
 154 0004 024B     		ldr	r3, .L28
 155 0006 0360     		str	r3, [r0]
 156 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
 157 000c 2046     		mov	r0, r4
 158 000e 10BD     		pop	{r4, pc}
 159              	.L29:
 160              		.align	2
 161              	.L28:
 162 0010 08000000 		.word	_ZTV21Duet3DFilamentMonitor+8
 163              		.size	_ZN29RotatingMagnetFilamentMonitorD2Ev, .-_ZN29RotatingMagnetFilamentMonitorD2Ev
 164              		.weak	_ZN29RotatingMagnetFilamentMonitorD1Ev
 165              		.thumb_set _ZN29RotatingMagnetFilamentMonitorD1Ev,_ZN29RotatingMagnetFilamentMonitorD2Ev
 166              		.section	.text._ZN29RotatingMagnetFilamentMonitorD0Ev,"axG",%progbits,_ZN29RotatingMagnetFilamentM
 167              		.align	1
 168              		.p2align 2,,3
 169              		.weak	_ZN29RotatingMagnetFilamentMonitorD0Ev
 170              		.syntax unified
 171              		.thumb
ARM GAS  /tmp/ccA5ntZZ.s 			page 4


 172              		.thumb_func
 173              		.fpu softvfp
 174              		.type	_ZN29RotatingMagnetFilamentMonitorD0Ev, %function
 175              	_ZN29RotatingMagnetFilamentMonitorD0Ev:
 176              		@ args = 0, pretend = 0, frame = 0
 177              		@ frame_needed = 0, uses_anonymous_args = 0
 178 0000 10B5     		push	{r4, lr}
 179 0002 0446     		mov	r4, r0
 180 0004 054B     		ldr	r3, .L32
 181 0006 0360     		str	r3, [r0]
 182 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
 183 000c 2046     		mov	r0, r4
 184 000e 4FF4C071 		mov	r1, #384
 185 0012 FFF7FEFF 		bl	_ZdlPvj
 186 0016 2046     		mov	r0, r4
 187 0018 10BD     		pop	{r4, pc}
 188              	.L33:
 189 001a 00BF     		.align	2
 190              	.L32:
 191 001c 08000000 		.word	_ZTV21Duet3DFilamentMonitor+8
 192              		.size	_ZN29RotatingMagnetFilamentMonitorD0Ev, .-_ZN29RotatingMagnetFilamentMonitorD0Ev
 193              		.global	__aeabi_ui2f
 194              		.section	.text._ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb,"ax",%pro
 195              		.align	1
 196              		.p2align 2,,3
 197              		.global	_ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 198              		.syntax unified
 199              		.thumb
 200              		.thumb_func
 201              		.fpu softvfp
 202              		.type	_ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, %function
 203              	_ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb:
 204              		@ args = 0, pretend = 0, frame = 24
 205              		@ frame_needed = 0, uses_anonymous_args = 0
 206 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 207 0004 1E46     		mov	r6, r3
 208 0006 8FB0     		sub	sp, sp, #60
 209 0008 0323     		movs	r3, #3
 210 000a 0096     		str	r6, [sp]
 211 000c 0446     		mov	r4, r0
 212 000e 0F46     		mov	r7, r1
 213 0010 9046     		mov	r8, r2
 214 0012 FFF7FEFF 		bl	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb
 215 0016 0546     		mov	r5, r0
 216 0018 18B1     		cbz	r0, .L63
 217              	.L35:
 218 001a 2846     		mov	r0, r5
 219 001c 0FB0     		add	sp, sp, #60
 220              		@ sp needed
 221 001e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 222              	.L63:
 223 0022 3346     		mov	r3, r6
 224 0024 04F59A72 		add	r2, r4, #308
 225 0028 4C21     		movs	r1, #76
 226 002a 3846     		mov	r0, r7
 227 002c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 228 0030 4521     		movs	r1, #69
ARM GAS  /tmp/ccA5ntZZ.s 			page 5


 229 0032 3846     		mov	r0, r7
 230 0034 3346     		mov	r3, r6
 231 0036 04F5A072 		add	r2, r4, #320
 232 003a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 233 003e 5221     		movs	r1, #82
 234 0040 3846     		mov	r0, r7
 235 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 236 0046 0028     		cmp	r0, #0
 237 0048 40F08980 		bne	.L64
 238              	.L36:
 239 004c 5321     		movs	r1, #83
 240 004e 3846     		mov	r0, r7
 241 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 242 0054 0028     		cmp	r0, #0
 243 0056 76D1     		bne	.L65
 244              	.L40:
 245 0058 96F80090 		ldrb	r9, [r6]	@ zero_extendqisi2
 246 005c B9F1000F 		cmp	r9, #0
 247 0060 40F0A380 		bne	.L66
 248 0064 7B4B     		ldr	r3, .L70
 249 0066 94F84411 		ldrb	r1, [r4, #324]	@ zero_extendqisi2
 250 006a 7B4A     		ldr	r2, .L70+4
 251 006c D4F83401 		ldr	r0, [r4, #308]	@ float
 252 0070 0029     		cmp	r1, #0
 253 0072 08BF     		it	eq
 254 0074 1A46     		moveq	r2, r3
 255 0076 0992     		str	r2, [sp, #36]
 256 0078 FFF7FEFF 		bl	__aeabi_f2d
 257 007c B4F84C71 		ldrh	r7, [r4, #332]
 258 0080 764E     		ldr	r6, .L70+8
 259 0082 774D     		ldr	r5, .L70+12
 260 0084 002F     		cmp	r7, #0
 261 0086 08BF     		it	eq
 262 0088 3546     		moveq	r5, r6
 263 008a 0646     		mov	r6, r0
 264 008c 0F46     		mov	r7, r1
 265 008e D4F83801 		ldr	r0, [r4, #312]	@ float
 266 0092 7449     		ldr	r1, .L70+16
 267 0094 FFF7FEFF 		bl	__aeabi_fmul
 268 0098 D4F810A0 		ldr	r10, [r4, #16]
 269 009c FFF7FEFF 		bl	lrintf
 270 00a0 7049     		ldr	r1, .L70+16
 271 00a2 8346     		mov	fp, r0
 272 00a4 D4F83C01 		ldr	r0, [r4, #316]	@ float
 273 00a8 FFF7FEFF 		bl	__aeabi_fmul
 274 00ac FFF7FEFF 		bl	lrintf
 275 00b0 0890     		str	r0, [sp, #32]
 276 00b2 D4F84001 		ldr	r0, [r4, #320]	@ float
 277 00b6 FFF7FEFF 		bl	__aeabi_f2d
 278 00ba 099A     		ldr	r2, [sp, #36]
 279 00bc 089B     		ldr	r3, [sp, #32]
 280 00be CDE90601 		strd	r0, [sp, #24]
 281 00c2 0092     		str	r2, [sp]
 282 00c4 0593     		str	r3, [sp, #20]
 283 00c6 2A46     		mov	r2, r5
 284 00c8 CDF810B0 		str	fp, [sp, #16]
 285 00cc CDE90267 		strd	r6, [sp, #8]
ARM GAS  /tmp/ccA5ntZZ.s 			page 6


 286 00d0 5346     		mov	r3, r10
 287 00d2 6549     		ldr	r1, .L70+20
 288 00d4 4046     		mov	r0, r8
 289 00d6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 290 00da 94F87C51 		ldrb	r5, [r4, #380]	@ zero_extendqisi2
 291 00de 002D     		cmp	r5, #0
 292 00e0 00F08280 		beq	.L67
 293 00e4 B4F84601 		ldrh	r0, [r4, #326]
 294 00e8 0304     		lsls	r3, r0, #16
 295 00ea 00F18280 		bmi	.L68
 296 00ee C0F30900 		ubfx	r0, r0, #0, #10
 297 00f2 FFF7FEFF 		bl	__aeabi_i2f
 298 00f6 5D49     		ldr	r1, .L70+24
 299 00f8 FFF7FEFF 		bl	__aeabi_fmul
 300 00fc FFF7FEFF 		bl	__aeabi_f2d
 301 0100 0B46     		mov	r3, r1
 302 0102 0246     		mov	r2, r0
 303 0104 5A49     		ldr	r1, .L70+28
 304 0106 4046     		mov	r0, r8
 305 0108 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 306 010c 94F87E31 		ldrb	r3, [r4, #382]	@ zero_extendqisi2
 307 0110 83B1     		cbz	r3, .L46
 308 0112 D4F87851 		ldr	r5, [r4, #376]	@ float
 309 0116 4FF07E51 		mov	r1, #1065353216
 310 011a 25F00040 		bic	r0, r5, #-2147483648
 311 011e FFF7FEFF 		bl	__aeabi_fcmpgt
 312 0122 38B1     		cbz	r0, .L46
 313 0124 D4F87461 		ldr	r6, [r4, #372]	@ float
 314 0128 5249     		ldr	r1, .L70+32
 315 012a 3046     		mov	r0, r6
 316 012c FFF7FEFF 		bl	__aeabi_fcmpgt
 317 0130 0028     		cmp	r0, #0
 318 0132 64D1     		bne	.L69
 319              	.L46:
 320 0134 0025     		movs	r5, #0
 321 0136 4046     		mov	r0, r8
 322 0138 4F49     		ldr	r1, .L70+36
 323 013a FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 324 013e 2846     		mov	r0, r5
 325 0140 0FB0     		add	sp, sp, #60
 326              		@ sp needed
 327 0142 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 328              	.L65:
 329 0146 0123     		movs	r3, #1
 330 0148 3846     		mov	r0, r7
 331 014a 3370     		strb	r3, [r6]
 332 014c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 333 0150 0028     		cmp	r0, #0
 334 0152 D4BF     		ite	le
 335 0154 0020     		movle	r0, #0
 336 0156 0120     		movgt	r0, #1
 337 0158 84F84401 		strb	r0, [r4, #324]
 338 015c 7CE7     		b	.L40
 339              	.L64:
 340 015e 0221     		movs	r1, #2
 341 0160 0123     		movs	r3, #1
 342 0162 0EAA     		add	r2, sp, #56
ARM GAS  /tmp/ccA5ntZZ.s 			page 7


 343 0164 42F80C1D 		str	r1, [r2, #-12]!
 344 0168 3370     		strb	r3, [r6]
 345 016a 0CA9     		add	r1, sp, #48
 346 016c 2B46     		mov	r3, r5
 347 016e 3846     		mov	r0, r7
 348 0170 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 349 0174 DDF82C90 		ldr	r9, [sp, #44]
 350 0178 B9F1000F 		cmp	r9, #0
 351 017c 3FF466AF 		beq	.L36
 352 0180 0C98     		ldr	r0, [sp, #48]
 353 0182 FFF7FEFF 		bl	__aeabi_ui2f
 354 0186 3D49     		ldr	r1, .L70+40
 355 0188 FFF7FEFF 		bl	__aeabi_fmul
 356 018c B9F1010F 		cmp	r9, #1
 357 0190 C4F83801 		str	r0, [r4, #312]	@ float
 358 0194 7FF65AAF 		bls	.L36
 359 0198 0D98     		ldr	r0, [sp, #52]
 360 019a FFF7FEFF 		bl	__aeabi_ui2f
 361 019e 3749     		ldr	r1, .L70+40
 362 01a0 FFF7FEFF 		bl	__aeabi_fmul
 363 01a4 C4F83C01 		str	r0, [r4, #316]	@ float
 364 01a8 50E7     		b	.L36
 365              	.L66:
 366 01aa 0026     		movs	r6, #0
 367 01ac 2046     		mov	r0, r4
 368 01ae A4F84661 		strh	r6, [r4, #326]	@ movhi
 369 01b2 C4F85061 		str	r6, [r4, #336]
 370 01b6 84F87C61 		strb	r6, [r4, #380]
 371 01ba 84F87E61 		strb	r6, [r4, #382]
 372 01be C4F84861 		str	r6, [r4, #328]
 373 01c2 FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 374 01c6 0023     		movs	r3, #0
 375 01c8 0122     		movs	r2, #1
 376 01ca 84F87D61 		strb	r6, [r4, #381]
 377 01ce 84F86261 		strb	r6, [r4, #354]
 378 01d2 84F86121 		strb	r2, [r4, #353]
 379 01d6 C4F85C31 		str	r3, [r4, #348]	@ float
 380 01da C4F86831 		str	r3, [r4, #360]	@ float
 381 01de C4F85831 		str	r3, [r4, #344]	@ float
 382 01e2 C4F86431 		str	r3, [r4, #356]	@ float
 383 01e6 18E7     		b	.L35
 384              	.L67:
 385 01e8 4046     		mov	r0, r8
 386 01ea 2549     		ldr	r1, .L70+44
 387 01ec FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 388 01f0 13E7     		b	.L35
 389              	.L68:
 390 01f2 4046     		mov	r0, r8
 391 01f4 2349     		ldr	r1, .L70+48
 392 01f6 4D46     		mov	r5, r9
 393 01f8 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 394 01fc 0DE7     		b	.L35
 395              	.L69:
 396 01fe 1949     		ldr	r1, .L70+16
 397 0200 D4F86C01 		ldr	r0, [r4, #364]	@ float
 398 0204 FFF7FEFF 		bl	__aeabi_fmul
 399 0208 FFF7FEFF 		bl	lrintf
ARM GAS  /tmp/ccA5ntZZ.s 			page 8


 400 020c 1549     		ldr	r1, .L70+16
 401 020e 8346     		mov	fp, r0
 402 0210 D4F87001 		ldr	r0, [r4, #368]	@ float
 403 0214 FFF7FEFF 		bl	__aeabi_fmul
 404 0218 FFF7FEFF 		bl	lrintf
 405 021c 2946     		mov	r1, r5
 406 021e 8246     		mov	r10, r0
 407 0220 3046     		mov	r0, r6
 408 0222 FFF7FEFF 		bl	__aeabi_fdiv
 409 0226 FFF7FEFF 		bl	__aeabi_f2d
 410 022a 0646     		mov	r6, r0
 411 022c D4F87401 		ldr	r0, [r4, #372]	@ float
 412 0230 0F46     		mov	r7, r1
 413 0232 FFF7FEFF 		bl	__aeabi_f2d
 414 0236 CDF800B0 		str	fp, [sp]
 415 023a CDE90201 		strd	r0, [sp, #8]
 416 023e CDF804A0 		str	r10, [sp, #4]
 417 0242 3246     		mov	r2, r6
 418 0244 3B46     		mov	r3, r7
 419 0246 4046     		mov	r0, r8
 420 0248 0F49     		ldr	r1, .L70+52
 421 024a 4D46     		mov	r5, r9
 422 024c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 423 0250 E3E6     		b	.L35
 424              	.L71:
 425 0252 00BF     		.align	2
 426              	.L70:
 427 0254 20000000 		.word	.LC11
 428 0258 18000000 		.word	.LC10
 429 025c 14000000 		.word	.LC9
 430 0260 00000000 		.word	.LC8
 431 0264 0000C842 		.word	1120403456
 432 0268 2C000000 		.word	.LC12
 433 026c 0000B43E 		.word	1051983872
 434 0270 C0000000 		.word	.LC13
 435 0274 0000A041 		.word	1101004800
 436 0278 D8000000 		.word	.LC14
 437 027c 0AD7233C 		.word	1008981770
 438 0280 08000000 		.word	.LC1
 439 0284 00000000 		.word	.LC0
 440 0288 6C000000 		.word	.LC6
 441              		.size	_ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, .-_ZN29RotatingMa
 442              		.section	.text._ZN29RotatingMagnetFilamentMonitorC2Eji,"ax",%progbits
 443              		.align	1
 444              		.p2align 2,,3
 445              		.global	_ZN29RotatingMagnetFilamentMonitorC2Eji
 446              		.syntax unified
 447              		.thumb
 448              		.thumb_func
 449              		.fpu softvfp
 450              		.type	_ZN29RotatingMagnetFilamentMonitorC2Eji, %function
 451              	_ZN29RotatingMagnetFilamentMonitorC2Eji:
 452              		@ args = 0, pretend = 0, frame = 0
 453              		@ frame_needed = 0, uses_anonymous_args = 0
 454 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 455 0002 1546     		mov	r5, r2
 456 0004 0446     		mov	r4, r0
ARM GAS  /tmp/ccA5ntZZ.s 			page 9


 457 0006 FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitorC2Eji
 458 000a 042D     		cmp	r5, #4
 459 000c 08BF     		it	eq
 460 000e 4FF48043 		moveq	r3, #16384
 461 0012 4FF00005 		mov	r5, #0
 462 0016 18BF     		it	ne
 463 0018 0023     		movne	r3, #0
 464 001a 0126     		movs	r6, #1
 465 001c 184A     		ldr	r2, .L76
 466 001e 1949     		ldr	r1, .L76+4
 467 0020 2260     		str	r2, [r4]
 468 0022 194F     		ldr	r7, .L76+8
 469 0024 194A     		ldr	r2, .L76+12
 470 0026 1A48     		ldr	r0, .L76+16
 471 0028 A4F84C31 		strh	r3, [r4, #332]	@ movhi
 472 002c C4F83801 		str	r0, [r4, #312]	@ float
 473 0030 C4F83471 		str	r7, [r4, #308]	@ float
 474 0034 2046     		mov	r0, r4
 475 0036 C4F83C11 		str	r1, [r4, #316]	@ float
 476 003a C4F84021 		str	r2, [r4, #320]	@ float
 477 003e 84F84451 		strb	r5, [r4, #324]
 478 0042 A4F84651 		strh	r5, [r4, #326]	@ movhi
 479 0046 C4F85051 		str	r5, [r4, #336]
 480 004a 84F87C51 		strb	r5, [r4, #380]
 481 004e 84F87E51 		strb	r5, [r4, #382]
 482 0052 C4F84851 		str	r5, [r4, #328]
 483 0056 84F84561 		strb	r6, [r4, #325]
 484 005a FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 485 005e 0023     		movs	r3, #0
 486 0060 84F87D51 		strb	r5, [r4, #381]
 487 0064 84F86251 		strb	r5, [r4, #354]
 488 0068 84F86161 		strb	r6, [r4, #353]
 489 006c C4F85C31 		str	r3, [r4, #348]	@ float
 490 0070 C4F86831 		str	r3, [r4, #360]	@ float
 491 0074 C4F85831 		str	r3, [r4, #344]	@ float
 492 0078 C4F86431 		str	r3, [r4, #356]	@ float
 493 007c 2046     		mov	r0, r4
 494 007e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 495              	.L77:
 496              		.align	2
 497              	.L76:
 498 0080 08000000 		.word	.LANCHOR0+8
 499 0084 CDCCCC3F 		.word	1070386381
 500 0088 6666E641 		.word	1105618534
 501 008c 00004040 		.word	1077936128
 502 0090 9A99193F 		.word	1058642330
 503              		.size	_ZN29RotatingMagnetFilamentMonitorC2Eji, .-_ZN29RotatingMagnetFilamentMonitorC2Eji
 504              		.global	_ZN29RotatingMagnetFilamentMonitorC1Eji
 505              		.thumb_set _ZN29RotatingMagnetFilamentMonitorC1Eji,_ZN29RotatingMagnetFilamentMonitorC2Eji
 506              		.section	.text._ZN29RotatingMagnetFilamentMonitor4InitEv,"ax",%progbits
 507              		.align	1
 508              		.p2align 2,,3
 509              		.global	_ZN29RotatingMagnetFilamentMonitor4InitEv
 510              		.syntax unified
 511              		.thumb
 512              		.thumb_func
 513              		.fpu softvfp
ARM GAS  /tmp/ccA5ntZZ.s 			page 10


 514              		.type	_ZN29RotatingMagnetFilamentMonitor4InitEv, %function
 515              	_ZN29RotatingMagnetFilamentMonitor4InitEv:
 516              		@ args = 0, pretend = 0, frame = 0
 517              		@ frame_needed = 0, uses_anonymous_args = 0
 518 0000 38B5     		push	{r3, r4, r5, lr}
 519 0002 0025     		movs	r5, #0
 520 0004 A0F84651 		strh	r5, [r0, #326]	@ movhi
 521 0008 C0F85051 		str	r5, [r0, #336]
 522 000c 80F87C51 		strb	r5, [r0, #380]
 523 0010 80F87E51 		strb	r5, [r0, #382]
 524 0014 C0F84851 		str	r5, [r0, #328]
 525 0018 0446     		mov	r4, r0
 526 001a FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 527 001e 0023     		movs	r3, #0
 528 0020 0122     		movs	r2, #1
 529 0022 84F87D51 		strb	r5, [r4, #381]
 530 0026 84F86251 		strb	r5, [r4, #354]
 531 002a 84F86121 		strb	r2, [r4, #353]
 532 002e C4F85C31 		str	r3, [r4, #348]	@ float
 533 0032 C4F86831 		str	r3, [r4, #360]	@ float
 534 0036 C4F85831 		str	r3, [r4, #344]	@ float
 535 003a C4F86431 		str	r3, [r4, #356]	@ float
 536 003e 38BD     		pop	{r3, r4, r5, pc}
 537              		.size	_ZN29RotatingMagnetFilamentMonitor4InitEv, .-_ZN29RotatingMagnetFilamentMonitor4InitEv
 538              		.section	.text._ZN29RotatingMagnetFilamentMonitor5ResetEv,"ax",%progbits
 539              		.align	1
 540              		.p2align 2,,3
 541              		.global	_ZN29RotatingMagnetFilamentMonitor5ResetEv
 542              		.syntax unified
 543              		.thumb
 544              		.thumb_func
 545              		.fpu softvfp
 546              		.type	_ZN29RotatingMagnetFilamentMonitor5ResetEv, %function
 547              	_ZN29RotatingMagnetFilamentMonitor5ResetEv:
 548              		@ args = 0, pretend = 0, frame = 0
 549              		@ frame_needed = 0, uses_anonymous_args = 0
 550              		@ link register save eliminated.
 551 0000 0023     		movs	r3, #0
 552 0002 0022     		movs	r2, #0
 553 0004 0121     		movs	r1, #1
 554 0006 C0F85C31 		str	r3, [r0, #348]	@ float
 555 000a 80F86111 		strb	r1, [r0, #353]
 556 000e C0F86831 		str	r3, [r0, #360]	@ float
 557 0012 C0F85831 		str	r3, [r0, #344]	@ float
 558 0016 C0F86431 		str	r3, [r0, #356]	@ float
 559 001a 80F87D21 		strb	r2, [r0, #381]
 560 001e 80F86221 		strb	r2, [r0, #354]
 561 0022 7047     		bx	lr
 562              		.size	_ZN29RotatingMagnetFilamentMonitor5ResetEv, .-_ZN29RotatingMagnetFilamentMonitor5ResetEv
 563              		.global	__aeabi_fadd
 564              		.section	.text._ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv,"ax",%progbits
 565              		.align	1
 566              		.p2align 2,,3
 567              		.global	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv
 568              		.syntax unified
 569              		.thumb
 570              		.thumb_func
ARM GAS  /tmp/ccA5ntZZ.s 			page 11


 571              		.fpu softvfp
 572              		.type	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv, %function
 573              	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv:
 574              		@ args = 0, pretend = 0, frame = 8
 575              		@ frame_needed = 0, uses_anonymous_args = 0
 576 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 577 0004 0446     		mov	r4, r0
 578 0006 83B0     		sub	sp, sp, #12
 579 0008 0125     		movs	r5, #1
 580 000a 4FF06A56 		mov	r6, #981467136
 581 000e 0027     		movs	r7, #0
 582 0010 17E0     		b	.L89
 583              	.L83:
 584 0012 D4F85031 		ldr	r3, [r4, #336]
 585 0016 94F86221 		ldrb	r2, [r4, #354]	@ zero_extendqisi2
 586 001a 0133     		adds	r3, r3, #1
 587 001c C4F85031 		str	r3, [r4, #336]
 588 0020 62B1     		cbz	r2, .L86
 589 0022 D4F85801 		ldr	r0, [r4, #344]	@ float
 590 0026 D4F85411 		ldr	r1, [r4, #340]	@ float
 591 002a FFF7FEFF 		bl	__aeabi_fadd
 592 002e 94F86031 		ldrb	r3, [r4, #352]	@ zero_extendqisi2
 593 0032 C4F85801 		str	r0, [r4, #344]	@ float
 594 0036 0BB1     		cbz	r3, .L86
 595 0038 84F86151 		strb	r5, [r4, #353]
 596              	.L86:
 597 003c 0023     		movs	r3, #0
 598 003e 84F86231 		strb	r3, [r4, #354]
 599              	.L89:
 600 0042 0DF10601 		add	r1, sp, #6
 601 0046 2046     		mov	r0, r4
 602 0048 FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt
 603 004c 0028     		cmp	r0, #0
 604 004e 3BD0     		beq	.L81
 605 0050 0128     		cmp	r0, #1
 606 0052 DED1     		bne	.L83
 607 0054 84F87C01 		strb	r0, [r4, #380]
 608 0058 FFF7FEFF 		bl	millis
 609 005c B4F84631 		ldrh	r3, [r4, #326]
 610 0060 BDF80680 		ldrh	r8, [sp, #6]
 611 0064 C4F84801 		str	r0, [r4, #328]
 612 0068 A8EB0300 		sub	r0, r8, r3
 613 006c C0F30900 		ubfx	r0, r0, #0, #10
 614 0070 B0F5007F 		cmp	r0, #512
 615 0074 88BF     		it	hi
 616 0076 A0F58060 		subhi	r0, r0, #1024
 617 007a FFF7FEFF 		bl	__aeabi_i2f
 618 007e 3146     		mov	r1, r6
 619 0080 FFF7FEFF 		bl	__aeabi_fmul
 620 0084 D4F85C11 		ldr	r1, [r4, #348]	@ float
 621 0088 FFF7FEFF 		bl	__aeabi_fadd
 622 008c 94F86231 		ldrb	r3, [r4, #354]	@ zero_extendqisi2
 623 0090 8146     		mov	r9, r0
 624 0092 C4F85C01 		str	r0, [r4, #348]	@ float
 625 0096 A4F84681 		strh	r8, [r4, #326]	@ movhi
 626 009a 002B     		cmp	r3, #0
 627 009c CED0     		beq	.L86
ARM GAS  /tmp/ccA5ntZZ.s 			page 12


 628 009e 94F86031 		ldrb	r3, [r4, #352]	@ zero_extendqisi2
 629 00a2 73B9     		cbnz	r3, .L87
 630 00a4 D4F85411 		ldr	r1, [r4, #340]	@ float
 631 00a8 D4F86401 		ldr	r0, [r4, #356]	@ float
 632 00ac FFF7FEFF 		bl	__aeabi_fadd
 633 00b0 4946     		mov	r1, r9
 634 00b2 C4F86401 		str	r0, [r4, #356]	@ float
 635 00b6 D4F86801 		ldr	r0, [r4, #360]	@ float
 636 00ba FFF7FEFF 		bl	__aeabi_fadd
 637 00be C4F86801 		str	r0, [r4, #360]	@ float
 638              	.L87:
 639 00c2 C4F85C71 		str	r7, [r4, #348]	@ float
 640 00c6 B9E7     		b	.L86
 641              	.L81:
 642 00c8 03B0     		add	sp, sp, #12
 643              		@ sp needed
 644 00ca BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 645              		.size	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv, .-_ZN29RotatingMagnetFilamentMonit
 646 00ce 00BF     		.section	.text._ZN29RotatingMagnetFilamentMonitor5ClearEb,"ax",%progbits
 647              		.align	1
 648              		.p2align 2,,3
 649              		.global	_ZN29RotatingMagnetFilamentMonitor5ClearEb
 650              		.syntax unified
 651              		.thumb
 652              		.thumb_func
 653              		.fpu softvfp
 654              		.type	_ZN29RotatingMagnetFilamentMonitor5ClearEb, %function
 655              	_ZN29RotatingMagnetFilamentMonitor5ClearEb:
 656              		@ args = 0, pretend = 0, frame = 0
 657              		@ frame_needed = 0, uses_anonymous_args = 0
 658 0000 38B5     		push	{r3, r4, r5, lr}
 659 0002 0446     		mov	r4, r0
 660 0004 0D46     		mov	r5, r1
 661 0006 FFF7FEFF 		bl	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv
 662 000a 0023     		movs	r3, #0
 663 000c 0022     		movs	r2, #0
 664 000e 0121     		movs	r1, #1
 665 0010 C4F85C31 		str	r3, [r4, #348]	@ float
 666 0014 84F86111 		strb	r1, [r4, #353]
 667 0018 C4F86831 		str	r3, [r4, #360]	@ float
 668 001c C4F85831 		str	r3, [r4, #344]	@ float
 669 0020 C4F86431 		str	r3, [r4, #356]	@ float
 670 0024 84F87D21 		strb	r2, [r4, #381]
 671 0028 84F86221 		strb	r2, [r4, #354]
 672 002c 65B1     		cbz	r5, .L100
 673 002e B4F84631 		ldrh	r3, [r4, #326]
 674 0032 1A04     		lsls	r2, r3, #16
 675 0034 06D4     		bmi	.L101
 676 0036 B4F84C21 		ldrh	r2, [r4, #332]
 677 003a 1342     		tst	r3, r2
 678 003c 14BF     		ite	ne
 679 003e 0846     		movne	r0, r1
 680 0040 0020     		moveq	r0, #0
 681 0042 38BD     		pop	{r3, r4, r5, pc}
 682              	.L101:
 683 0044 0420     		movs	r0, #4
 684 0046 38BD     		pop	{r3, r4, r5, pc}
ARM GAS  /tmp/ccA5ntZZ.s 			page 13


 685              	.L100:
 686 0048 2846     		mov	r0, r5
 687 004a 38BD     		pop	{r3, r4, r5, pc}
 688              		.size	_ZN29RotatingMagnetFilamentMonitor5ClearEb, .-_ZN29RotatingMagnetFilamentMonitor5ClearEb
 689              		.section	.text._ZNK29RotatingMagnetFilamentMonitor18GetCurrentPositionEv,"ax",%progbits
 690              		.align	1
 691              		.p2align 2,,3
 692              		.global	_ZNK29RotatingMagnetFilamentMonitor18GetCurrentPositionEv
 693              		.syntax unified
 694              		.thumb
 695              		.thumb_func
 696              		.fpu softvfp
 697              		.type	_ZNK29RotatingMagnetFilamentMonitor18GetCurrentPositionEv, %function
 698              	_ZNK29RotatingMagnetFilamentMonitor18GetCurrentPositionEv:
 699              		@ args = 0, pretend = 0, frame = 0
 700              		@ frame_needed = 0, uses_anonymous_args = 0
 701 0000 08B5     		push	{r3, lr}
 702 0002 B0F84601 		ldrh	r0, [r0, #326]
 703 0006 C0F30900 		ubfx	r0, r0, #0, #10
 704 000a FFF7FEFF 		bl	__aeabi_i2f
 705 000e 0249     		ldr	r1, .L105
 706 0010 FFF7FEFF 		bl	__aeabi_fmul
 707 0014 08BD     		pop	{r3, pc}
 708              	.L106:
 709 0016 00BF     		.align	2
 710              	.L105:
 711 0018 0000B43E 		.word	1051983872
 712              		.size	_ZNK29RotatingMagnetFilamentMonitor18GetCurrentPositionEv, .-_ZNK29RotatingMagnetFilamentMon
 713              		.global	__aeabi_fcmpge
 714              		.global	__aeabi_fcmplt
 715              		.section	.text._ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb,"ax",%progbits
 716              		.align	1
 717              		.p2align 2,,3
 718              		.global	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb
 719              		.syntax unified
 720              		.thumb
 721              		.thumb_func
 722              		.fpu softvfp
 723              		.type	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb, %function
 724              	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb:
 725              		@ args = 0, pretend = 0, frame = 0
 726              		@ frame_needed = 0, uses_anonymous_args = 0
 727 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 728 0004 4C4D     		ldr	r5, .L147
 729 0006 0446     		mov	r4, r0
 730 0008 686C     		ldr	r0, [r5, #68]
 731 000a 1746     		mov	r7, r2
 732 000c 8204     		lsls	r2, r0, #18
 733 000e 85B0     		sub	sp, sp, #20
 734 0010 0E46     		mov	r6, r1
 735 0012 16D5     		bpl	.L108
 736 0014 0846     		mov	r0, r1
 737 0016 1D46     		mov	r5, r3
 738 0018 FFF7FEFF 		bl	__aeabi_f2d
 739 001c 8046     		mov	r8, r0
 740 001e 3846     		mov	r0, r7
 741 0020 8946     		mov	r9, r1
ARM GAS  /tmp/ccA5ntZZ.s 			page 14


 742 0022 FFF7FEFF 		bl	__aeabi_f2d
 743 0026 454A     		ldr	r2, .L147+4
 744 0028 454B     		ldr	r3, .L147+8
 745 002a CDE90001 		strd	r0, [sp]
 746 002e 002D     		cmp	r5, #0
 747 0030 0CBF     		ite	eq
 748 0032 1546     		moveq	r5, r2
 749 0034 1D46     		movne	r5, r3
 750 0036 4348     		ldr	r0, .L147+12
 751 0038 4246     		mov	r2, r8
 752 003a 4B46     		mov	r3, r9
 753 003c 0295     		str	r5, [sp, #8]
 754 003e FFF7FEFF 		bl	debugPrintf
 755              	.L108:
 756 0042 D4F83411 		ldr	r1, [r4, #308]	@ float
 757 0046 3846     		mov	r0, r7
 758 0048 FFF7FEFF 		bl	__aeabi_fmul
 759 004c 94F87D51 		ldrb	r5, [r4, #381]	@ zero_extendqisi2
 760 0050 8046     		mov	r8, r0
 761 0052 ADB9     		cbnz	r5, .L110
 762 0054 0122     		movs	r2, #1
 763 0056 3146     		mov	r1, r6
 764 0058 84F87D21 		strb	r2, [r4, #381]
 765 005c FFF7FEFF 		bl	__aeabi_fdiv
 766 0060 8046     		mov	r8, r0
 767              	.L111:
 768 0062 0123     		movs	r3, #1
 769 0064 2846     		mov	r0, r5
 770 0066 C4F87081 		str	r8, [r4, #368]	@ float
 771 006a C4F86C81 		str	r8, [r4, #364]	@ float
 772 006e C4F87461 		str	r6, [r4, #372]	@ float
 773 0072 C4F87871 		str	r7, [r4, #376]	@ float
 774 0076 84F87E31 		strb	r3, [r4, #382]
 775 007a 05B0     		add	sp, sp, #20
 776              		@ sp needed
 777 007c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 778              	.L110:
 779 0080 94F84451 		ldrb	r5, [r4, #324]	@ zero_extendqisi2
 780 0084 4DBB     		cbnz	r5, .L145
 781              	.L112:
 782 0086 4046     		mov	r0, r8
 783 0088 3146     		mov	r1, r6
 784 008a FFF7FEFF 		bl	__aeabi_fdiv
 785 008e 94F87E31 		ldrb	r3, [r4, #382]	@ zero_extendqisi2
 786 0092 8046     		mov	r8, r0
 787 0094 002B     		cmp	r3, #0
 788 0096 E4D0     		beq	.L111
 789 0098 D4F86C11 		ldr	r1, [r4, #364]	@ float
 790 009c FFF7FEFF 		bl	__aeabi_fcmplt
 791 00a0 08B1     		cbz	r0, .L119
 792 00a2 C4F86C81 		str	r8, [r4, #364]	@ float
 793              	.L119:
 794 00a6 D4F87011 		ldr	r1, [r4, #368]	@ float
 795 00aa 4046     		mov	r0, r8
 796 00ac FFF7FEFF 		bl	__aeabi_fcmpgt
 797 00b0 08B1     		cbz	r0, .L121
 798 00b2 C4F87081 		str	r8, [r4, #368]	@ float
ARM GAS  /tmp/ccA5ntZZ.s 			page 15


 799              	.L121:
 800 00b6 3146     		mov	r1, r6
 801 00b8 D4F87401 		ldr	r0, [r4, #372]	@ float
 802 00bc FFF7FEFF 		bl	__aeabi_fadd
 803 00c0 3946     		mov	r1, r7
 804 00c2 C4F87401 		str	r0, [r4, #372]	@ float
 805 00c6 D4F87801 		ldr	r0, [r4, #376]	@ float
 806 00ca FFF7FEFF 		bl	__aeabi_fadd
 807 00ce C4F87801 		str	r0, [r4, #376]	@ float
 808 00d2 2846     		mov	r0, r5
 809 00d4 05B0     		add	sp, sp, #20
 810              		@ sp needed
 811 00d6 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 812              	.L145:
 813 00da 0021     		movs	r1, #0
 814 00dc 3046     		mov	r0, r6
 815 00de FFF7FEFF 		bl	__aeabi_fcmpge
 816 00e2 58B1     		cbz	r0, .L139
 817 00e4 D4F83811 		ldr	r1, [r4, #312]	@ float
 818 00e8 3046     		mov	r0, r6
 819 00ea FFF7FEFF 		bl	__aeabi_fmul
 820 00ee 0146     		mov	r1, r0
 821 00f0 4046     		mov	r0, r8
 822 00f2 FFF7FEFF 		bl	__aeabi_fcmplt
 823 00f6 90B1     		cbz	r0, .L146
 824              	.L127:
 825 00f8 0225     		movs	r5, #2
 826 00fa C4E7     		b	.L112
 827              	.L139:
 828 00fc D4F83C11 		ldr	r1, [r4, #316]	@ float
 829 0100 3046     		mov	r0, r6
 830 0102 FFF7FEFF 		bl	__aeabi_fmul
 831 0106 0146     		mov	r1, r0
 832 0108 4046     		mov	r0, r8
 833 010a FFF7FEFF 		bl	__aeabi_fcmplt
 834 010e 0028     		cmp	r0, #0
 835 0110 F2D1     		bne	.L127
 836 0112 D4F83811 		ldr	r1, [r4, #312]	@ float
 837 0116 3046     		mov	r0, r6
 838 0118 FFF7FEFF 		bl	__aeabi_fmul
 839 011c 04E0     		b	.L117
 840              	.L146:
 841 011e D4F83C11 		ldr	r1, [r4, #316]	@ float
 842 0122 3046     		mov	r0, r6
 843 0124 FFF7FEFF 		bl	__aeabi_fmul
 844              	.L117:
 845 0128 4146     		mov	r1, r8
 846 012a FFF7FEFF 		bl	__aeabi_fcmplt
 847 012e 0028     		cmp	r0, #0
 848 0130 14BF     		ite	ne
 849 0132 0325     		movne	r5, #3
 850 0134 0025     		moveq	r5, #0
 851 0136 A6E7     		b	.L112
 852              	.L148:
 853              		.align	2
 854              	.L147:
 855 0138 00000000 		.word	reprap
ARM GAS  /tmp/ccA5ntZZ.s 			page 16


 856 013c 14000000 		.word	.LC9
 857 0140 00000000 		.word	.LC15
 858 0144 0C000000 		.word	.LC16
 859              		.size	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb, .-_ZN29RotatingMagnetFilamentMonitor1
 860              		.section	.text._ZN29RotatingMagnetFilamentMonitor5CheckEbbbf,"ax",%progbits
 861              		.align	1
 862              		.p2align 2,,3
 863              		.global	_ZN29RotatingMagnetFilamentMonitor5CheckEbbbf
 864              		.syntax unified
 865              		.thumb
 866              		.thumb_func
 867              		.fpu softvfp
 868              		.type	_ZN29RotatingMagnetFilamentMonitor5CheckEbbbf, %function
 869              	_ZN29RotatingMagnetFilamentMonitor5CheckEbbbf:
 870              		@ args = 4, pretend = 0, frame = 0
 871              		@ frame_needed = 0, uses_anonymous_args = 0
 872 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 873 0002 0446     		mov	r4, r0
 874 0004 0D46     		mov	r5, r1
 875 0006 1E46     		mov	r6, r3
 876 0008 6AB3     		cbz	r2, .L150
 877 000a 90F84531 		ldrb	r3, [r0, #325]	@ zero_extendqisi2
 878 000e 53BB     		cbnz	r3, .L150
 879 0010 0123     		movs	r3, #1
 880 0012 80F86131 		strb	r3, [r0, #353]
 881 0016 7EBB     		cbnz	r6, .L175
 882              	.L153:
 883 0018 2046     		mov	r0, r4
 884 001a FFF7FEFF 		bl	_ZN29RotatingMagnetFilamentMonitor18HandleIncomingDataEv
 885 001e 05B3     		cbz	r5, .L160
 886 0020 B4F84631 		ldrh	r3, [r4, #326]
 887 0024 1A04     		lsls	r2, r3, #16
 888 0026 3ED4     		bmi	.L163
 889 0028 B4F84C51 		ldrh	r5, [r4, #332]
 890 002c 1D40     		ands	r5, r3, r5
 891 002e 3CD1     		bne	.L164
 892 0030 D4F86461 		ldr	r6, [r4, #356]	@ float
 893 0034 D4F84071 		ldr	r7, [r4, #320]	@ float
 894 0038 3046     		mov	r0, r6
 895 003a 3946     		mov	r1, r7
 896 003c FFF7FEFF 		bl	__aeabi_fcmpge
 897 0040 0028     		cmp	r0, #0
 898 0042 5DD1     		bne	.L176
 899 0044 D4F85811 		ldr	r1, [r4, #344]	@ float
 900 0048 3046     		mov	r0, r6
 901 004a FFF7FEFF 		bl	__aeabi_fadd
 902 004e 3946     		mov	r1, r7
 903 0050 0546     		mov	r5, r0
 904 0052 3846     		mov	r0, r7
 905 0054 FFF7FEFF 		bl	__aeabi_fadd
 906 0058 0146     		mov	r1, r0
 907 005a 2846     		mov	r0, r5
 908 005c FFF7FEFF 		bl	__aeabi_fcmpge
 909 0060 28BB     		cbnz	r0, .L177
 910              	.L160:
 911 0062 0020     		movs	r0, #0
 912 0064 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  /tmp/ccA5ntZZ.s 			page 17


 913              	.L150:
 914 0066 D4F85801 		ldr	r0, [r4, #344]	@ float
 915 006a 0699     		ldr	r1, [sp, #24]	@ float
 916 006c FFF7FEFF 		bl	__aeabi_fadd
 917 0070 C4F85801 		str	r0, [r4, #344]	@ float
 918 0074 002E     		cmp	r6, #0
 919 0076 CFD0     		beq	.L153
 920              	.L175:
 921 0078 2046     		mov	r0, r4
 922 007a FFF7FEFF 		bl	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv
 923 007e 0028     		cmp	r0, #0
 924 0080 CAD0     		beq	.L153
 925 0082 0126     		movs	r6, #1
 926 0084 0020     		movs	r0, #0
 927 0086 0023     		movs	r3, #0
 928 0088 94F86111 		ldrb	r1, [r4, #353]	@ zero_extendqisi2
 929 008c D4F85821 		ldr	r2, [r4, #344]	@ float
 930 0090 84F86261 		strb	r6, [r4, #354]
 931 0094 84F86101 		strb	r0, [r4, #353]
 932 0098 84F86011 		strb	r1, [r4, #352]
 933 009c C4F85421 		str	r2, [r4, #340]	@ float
 934 00a0 C4F85831 		str	r3, [r4, #344]	@ float
 935 00a4 B8E7     		b	.L153
 936              	.L163:
 937 00a6 0420     		movs	r0, #4
 938 00a8 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 939              	.L164:
 940 00aa 0120     		movs	r0, #1
 941 00ac F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 942              	.L177:
 943 00ae FFF7FEFF 		bl	millis
 944 00b2 D4F84831 		ldr	r3, [r4, #328]
 945 00b6 C01A     		subs	r0, r0, r3
 946 00b8 DC28     		cmp	r0, #220
 947 00ba D2D9     		bls	.L160
 948 00bc 2046     		mov	r0, r4
 949 00be FFF7FEFF 		bl	_ZNK21Duet3DFilamentMonitor11IsReceivingEv
 950 00c2 0028     		cmp	r0, #0
 951 00c4 CDD1     		bne	.L160
 952 00c6 D4F85C11 		ldr	r1, [r4, #348]	@ float
 953 00ca D4F86801 		ldr	r0, [r4, #360]	@ float
 954 00ce FFF7FEFF 		bl	__aeabi_fadd
 955 00d2 D4F85811 		ldr	r1, [r4, #344]	@ float
 956 00d6 0546     		mov	r5, r0
 957 00d8 D4F86401 		ldr	r0, [r4, #356]	@ float
 958 00dc FFF7FEFF 		bl	__aeabi_fadd
 959 00e0 2A46     		mov	r2, r5
 960 00e2 0146     		mov	r1, r0
 961 00e4 0123     		movs	r3, #1
 962 00e6 2046     		mov	r0, r4
 963 00e8 FFF7FEFF 		bl	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb
 964 00ec 0023     		movs	r3, #0
 965 00ee C4F85C31 		str	r3, [r4, #348]	@ float
 966 00f2 C4F86831 		str	r3, [r4, #360]	@ float
 967 00f6 C4F85831 		str	r3, [r4, #344]	@ float
 968 00fa C4F86431 		str	r3, [r4, #356]	@ float
 969 00fe F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  /tmp/ccA5ntZZ.s 			page 18


 970              	.L176:
 971 0100 2B46     		mov	r3, r5
 972 0102 3146     		mov	r1, r6
 973 0104 D4F86821 		ldr	r2, [r4, #360]	@ float
 974 0108 2046     		mov	r0, r4
 975 010a FFF7FEFF 		bl	_ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb
 976 010e 0023     		movs	r3, #0
 977 0110 C4F86831 		str	r3, [r4, #360]	@ float
 978 0114 C4F86431 		str	r3, [r4, #356]	@ float
 979 0118 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 980              		.size	_ZN29RotatingMagnetFilamentMonitor5CheckEbbbf, .-_ZN29RotatingMagnetFilamentMonitor5CheckEbb
 981              		.global	_ZTV29RotatingMagnetFilamentMonitor
 982 011a 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 983              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 984              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 985              	_ZL28cpu_irq_prev_interrupt_state:
 986 0000 00       		.space	1
 987              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 988              		.align	2
 989              		.type	_ZL32cpu_irq_critical_section_counter, %object
 990              		.size	_ZL32cpu_irq_critical_section_counter, 4
 991              	_ZL32cpu_irq_critical_section_counter:
 992 0000 00000000 		.space	4
 993              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 994              		.align	2
 995              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 996              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 997              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 998 0000 00000000 		.space	4
 999              		.section	.rodata._ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej.str1.4,"aMS",%prog
 1000              		.align	2
 1001              	.LC0:
 1002 0000 6572726F 		.ascii	"error\000"
 1002      7200
 1003 0006 0000     		.space	2
 1004              	.LC1:
 1005 0008 6E6F2064 		.ascii	"no data received\000"
 1005      61746120 
 1005      72656365 
 1005      69766564 
 1005      00
 1006 0019 000000   		.space	3
 1007              	.LC2:
 1008 001c 6F6B00   		.ascii	"ok\000"
 1009 001f 00       		.space	1
 1010              	.LC3:
 1011 0020 6E6F2066 		.ascii	"no filament\000"
 1011      696C616D 
 1011      656E7400 
 1012              	.LC4:
 1013 002c 45787472 		.ascii	"Extruder %u sensor: position %.2f, %s, \000"
 1013      75646572 
 1013      20257520 
 1013      73656E73 
 1013      6F723A20 
 1014              	.LC5:
 1015 0054 256C7520 		.ascii	"%lu framing errors, \000"
ARM GAS  /tmp/ccA5ntZZ.s 			page 19


 1015      6672616D 
 1015      696E6720 
 1015      6572726F 
 1015      72732C20 
 1016 0069 000000   		.space	3
 1017              	.LC6:
 1018 006c 6D656173 		.ascii	"measured sensitivity %.2fmm/rev, measured minimum %"
 1018      75726564 
 1018      2073656E 
 1018      73697469 
 1018      76697479 
 1019 009f 6C642525 		.ascii	"ld%%, maximum %ld%% over %.1fmm\012\000"
 1019      2C206D61 
 1019      78696D75 
 1019      6D20256C 
 1019      64252520 
 1020              	.LC7:
 1021 00c0 6E6F2063 		.ascii	"no calibration data\012\000"
 1021      616C6962 
 1021      72617469 
 1021      6F6E2064 
 1021      6174610A 
 1022              		.section	.rodata._ZN29RotatingMagnetFilamentMonitor13CheckFilamentEffb.str1.4,"aMS",%progbits,1
 1023              		.align	2
 1024              	.LC15:
 1025 0000 206F7665 		.ascii	" overdue\000"
 1025      72647565 
 1025      00
 1026 0009 000000   		.space	3
 1027              	.LC16:
 1028 000c 45787472 		.ascii	"Extr req %.3f meas %.3f%s\012\000"
 1028      20726571 
 1028      20252E33 
 1028      66206D65 
 1028      61732025 
 1029              		.section	.rodata._ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb.str1.4,
 1030              		.align	2
 1031              	.LC8:
 1032 0000 20776974 		.ascii	" with microswitch\000"
 1032      68206D69 
 1032      63726F73 
 1032      77697463 
 1032      6800
 1033 0012 0000     		.space	2
 1034              	.LC9:
 1035 0014 00       		.ascii	"\000"
 1036 0015 000000   		.space	3
 1037              	.LC10:
 1038 0018 656E6162 		.ascii	"enabled\000"
 1038      6C656400 
 1039              	.LC11:
 1040 0020 64697361 		.ascii	"disabled\000"
 1040      626C6564 
 1040      00
 1041 0029 000000   		.space	3
 1042              	.LC12:
 1043 002c 44756574 		.ascii	"Duet3D rotating magnet filament monitor%s on endsto"
ARM GAS  /tmp/ccA5ntZZ.s 			page 20


 1043      33442072 
 1043      6F746174 
 1043      696E6720 
 1043      6D61676E 
 1044 005f 7020696E 		.ascii	"p input %u, %s, sensitivity %.2fmm/rev, allowed mov"
 1044      70757420 
 1044      25752C20 
 1044      25732C20 
 1044      73656E73 
 1045 0092 656D656E 		.ascii	"ement %ld%% to %ld%%, check every %.1fmm, \000"
 1045      7420256C 
 1045      64252520 
 1045      746F2025 
 1045      6C642525 
 1046 00bd 000000   		.space	3
 1047              	.LC13:
 1048 00c0 63757272 		.ascii	"current position %.1f, \000"
 1048      656E7420 
 1048      706F7369 
 1048      74696F6E 
 1048      20252E31 
 1049              	.LC14:
 1050 00d8 6E6F2063 		.ascii	"no calibration data\000"
 1050      616C6962 
 1050      72617469 
 1050      6F6E2064 
 1050      61746100 
 1051              		.section	.rodata._ZTV29RotatingMagnetFilamentMonitor,"a",%progbits
 1052              		.align	2
 1053              		.set	.LANCHOR0,. + 0
 1054              		.type	_ZTV29RotatingMagnetFilamentMonitor, %object
 1055              		.size	_ZTV29RotatingMagnetFilamentMonitor, 40
 1056              	_ZTV29RotatingMagnetFilamentMonitor:
 1057 0000 00000000 		.word	0
 1058 0004 00000000 		.word	0
 1059 0008 00000000 		.word	_ZN29RotatingMagnetFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 1060 000c 00000000 		.word	_ZN29RotatingMagnetFilamentMonitor5CheckEbbbf
 1061 0010 00000000 		.word	_ZN29RotatingMagnetFilamentMonitor5ClearEb
 1062 0014 00000000 		.word	_ZN29RotatingMagnetFilamentMonitor11DiagnosticsE11MessageTypej
 1063 0018 00000000 		.word	_ZN21Duet3DFilamentMonitor9InterruptEv
 1064 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 1065 0020 00000000 		.word	_ZN29RotatingMagnetFilamentMonitorD1Ev
 1066 0024 00000000 		.word	_ZN29RotatingMagnetFilamentMonitorD0Ev
 1067              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
