ARM GAS  /tmp/ccoCf9Qz.s 			page 1


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
  11              		.file	"LaserFilamentMonitor.cpp"
  12              		.global	__aeabi_i2f
  13              		.global	__aeabi_fmul
  14              		.global	__aeabi_f2d
  15              		.global	__aeabi_fcmpgt
  16              		.global	__aeabi_fdiv
  17              		.section	.text._ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej,"ax",%progbits
  18              		.align	1
  19              		.p2align 2,,3
  20              		.global	_ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej
  21              		.syntax unified
  22              		.thumb
  23              		.thumb_func
  24              		.fpu softvfp
  25              		.type	_ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej, %function
  26              	_ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej:
  27              		@ args = 0, pretend = 0, frame = 0
  28              		@ frame_needed = 0, uses_anonymous_args = 0
  29 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
  30 0004 90F88131 		ldrb	r3, [r0, #385]	@ zero_extendqisi2
  31 0008 0446     		mov	r4, r0
  32 000a 85B0     		sub	sp, sp, #20
  33 000c 0E46     		mov	r6, r1
  34 000e 9046     		mov	r8, r2
  35 0010 B0F84201 		ldrh	r0, [r0, #322]
  36 0014 73BB     		cbnz	r3, .L2
  37 0016 3B49     		ldr	r1, .L23
  38              	.L3:
  39 0018 C0F30900 		ubfx	r0, r0, #0, #10
  40 001c B0F5007F 		cmp	r0, #512
  41 0020 394D     		ldr	r5, .L23+4
  42 0022 88BF     		it	hi
  43 0024 A0F58060 		subhi	r0, r0, #1024
  44 0028 2F68     		ldr	r7, [r5]	@ unaligned
  45 002a 0291     		str	r1, [sp, #8]
  46 002c FFF7FEFF 		bl	__aeabi_i2f
  47 0030 3649     		ldr	r1, .L23+8
  48 0032 FFF7FEFF 		bl	__aeabi_fmul
  49 0036 FFF7FEFF 		bl	__aeabi_f2d
  50 003a 4346     		mov	r3, r8
  51 003c CDE90001 		strd	r0, [sp]
  52 0040 334A     		ldr	r2, .L23+12
  53 0042 3846     		mov	r0, r7
  54 0044 3146     		mov	r1, r6
  55 0046 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
  56 004a 94F88131 		ldrb	r3, [r4, #385]	@ zero_extendqisi2
  57 004e EBB9     		cbnz	r3, .L21
ARM GAS  /tmp/ccoCf9Qz.s 			page 2


  58              	.L5:
  59 0050 94F88331 		ldrb	r3, [r4, #387]	@ zero_extendqisi2
  60 0054 012B     		cmp	r3, #1
  61 0056 05D0     		beq	.L6
  62 0058 2E49     		ldr	r1, .L23+16
  63 005a D4F87801 		ldr	r0, [r4, #376]	@ float
  64 005e FFF7FEFF 		bl	__aeabi_fcmpgt
  65 0062 F0B9     		cbnz	r0, .L22
  66              	.L6:
  67 0064 3146     		mov	r1, r6
  68 0066 2868     		ldr	r0, [r5]
  69 0068 2B4A     		ldr	r2, .L23+20
  70 006a 05B0     		add	sp, sp, #20
  71              		@ sp needed
  72 006c BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
  73 0070 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
  74              	.L2:
  75 0074 8304     		lsls	r3, r0, #18
  76 0076 07D4     		bmi	.L9
  77 0078 B4F84C21 		ldrh	r2, [r4, #332]
  78 007c 274B     		ldr	r3, .L23+24
  79 007e 1042     		tst	r0, r2
  80 0080 2749     		ldr	r1, .L23+28
  81 0082 08BF     		it	eq
  82 0084 1946     		moveq	r1, r3
  83 0086 C7E7     		b	.L3
  84              	.L9:
  85 0088 2649     		ldr	r1, .L23+32
  86 008a C5E7     		b	.L3
  87              	.L21:
  88 008c D4F85421 		ldr	r2, [r4, #340]
  89 0090 D4F85031 		ldr	r3, [r4, #336]
  90 0094 2868     		ldr	r0, [r5]
  91 0096 3146     		mov	r1, r6
  92 0098 0092     		str	r2, [sp]
  93 009a 234A     		ldr	r2, .L23+36
  94 009c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
  95 00a0 D6E7     		b	.L5
  96              	.L22:
  97 00a2 2249     		ldr	r1, .L23+40
  98 00a4 D4F87001 		ldr	r0, [r4, #368]	@ float
  99 00a8 FFF7FEFF 		bl	__aeabi_fmul
 100 00ac 2D68     		ldr	r5, [r5]
 101 00ae FFF7FEFF 		bl	lrintf
 102 00b2 1E49     		ldr	r1, .L23+40
 103 00b4 0746     		mov	r7, r0
 104 00b6 D4F87C01 		ldr	r0, [r4, #380]	@ float
 105 00ba FFF7FEFF 		bl	__aeabi_fmul
 106 00be D4F87811 		ldr	r1, [r4, #376]	@ float
 107 00c2 FFF7FEFF 		bl	__aeabi_fdiv
 108 00c6 FFF7FEFF 		bl	lrintf
 109 00ca 1849     		ldr	r1, .L23+40
 110 00cc 8146     		mov	r9, r0
 111 00ce D4F87401 		ldr	r0, [r4, #372]	@ float
 112 00d2 FFF7FEFF 		bl	__aeabi_fmul
 113 00d6 FFF7FEFF 		bl	lrintf
 114 00da 8046     		mov	r8, r0
ARM GAS  /tmp/ccoCf9Qz.s 			page 3


 115 00dc D4F87801 		ldr	r0, [r4, #376]	@ float
 116 00e0 FFF7FEFF 		bl	__aeabi_f2d
 117 00e4 CDF80090 		str	r9, [sp]
 118 00e8 CDE90201 		strd	r0, [sp, #8]
 119 00ec CDF80480 		str	r8, [sp, #4]
 120 00f0 3B46     		mov	r3, r7
 121 00f2 2846     		mov	r0, r5
 122 00f4 3146     		mov	r1, r6
 123 00f6 0E4A     		ldr	r2, .L23+44
 124 00f8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 125 00fc 05B0     		add	sp, sp, #20
 126              		@ sp needed
 127 00fe BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 128              	.L24:
 129 0102 00BF     		.align	2
 130              	.L23:
 131 0104 08000000 		.word	.LC1
 132 0108 00000000 		.word	reprap
 133 010c 0AD7A33C 		.word	1017370378
 134 0110 2C000000 		.word	.LC4
 135 0114 00002041 		.word	1092616192
 136 0118 C0000000 		.word	.LC7
 137 011c 1C000000 		.word	.LC2
 138 0120 20000000 		.word	.LC3
 139 0124 00000000 		.word	.LC0
 140 0128 54000000 		.word	.LC5
 141 012c 0000C842 		.word	1120403456
 142 0130 7C000000 		.word	.LC6
 143              		.size	_ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej, .-_ZN20LaserFilamentMonitor11Diagnost
 144              		.section	.text._ZN20LaserFilamentMonitorD2Ev,"axG",%progbits,_ZN20LaserFilamentMonitorD5Ev,comdat
 145              		.align	1
 146              		.p2align 2,,3
 147              		.weak	_ZN20LaserFilamentMonitorD2Ev
 148              		.syntax unified
 149              		.thumb
 150              		.thumb_func
 151              		.fpu softvfp
 152              		.type	_ZN20LaserFilamentMonitorD2Ev, %function
 153              	_ZN20LaserFilamentMonitorD2Ev:
 154              		@ args = 0, pretend = 0, frame = 0
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156 0000 10B5     		push	{r4, lr}
 157 0002 0446     		mov	r4, r0
 158 0004 024B     		ldr	r3, .L27
 159 0006 0360     		str	r3, [r0]
 160 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
 161 000c 2046     		mov	r0, r4
 162 000e 10BD     		pop	{r4, pc}
 163              	.L28:
 164              		.align	2
 165              	.L27:
 166 0010 08000000 		.word	_ZTV21Duet3DFilamentMonitor+8
 167              		.size	_ZN20LaserFilamentMonitorD2Ev, .-_ZN20LaserFilamentMonitorD2Ev
 168              		.weak	_ZN20LaserFilamentMonitorD1Ev
 169              		.thumb_set _ZN20LaserFilamentMonitorD1Ev,_ZN20LaserFilamentMonitorD2Ev
 170              		.section	.text._ZN20LaserFilamentMonitorD0Ev,"axG",%progbits,_ZN20LaserFilamentMonitorD5Ev,comdat
 171              		.align	1
ARM GAS  /tmp/ccoCf9Qz.s 			page 4


 172              		.p2align 2,,3
 173              		.weak	_ZN20LaserFilamentMonitorD0Ev
 174              		.syntax unified
 175              		.thumb
 176              		.thumb_func
 177              		.fpu softvfp
 178              		.type	_ZN20LaserFilamentMonitorD0Ev, %function
 179              	_ZN20LaserFilamentMonitorD0Ev:
 180              		@ args = 0, pretend = 0, frame = 0
 181              		@ frame_needed = 0, uses_anonymous_args = 0
 182 0000 10B5     		push	{r4, lr}
 183 0002 0446     		mov	r4, r0
 184 0004 054B     		ldr	r3, .L31
 185 0006 0360     		str	r3, [r0]
 186 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
 187 000c 2046     		mov	r0, r4
 188 000e 4FF4C271 		mov	r1, #388
 189 0012 FFF7FEFF 		bl	_ZdlPvj
 190 0016 2046     		mov	r0, r4
 191 0018 10BD     		pop	{r4, pc}
 192              	.L32:
 193 001a 00BF     		.align	2
 194              	.L31:
 195 001c 08000000 		.word	_ZTV21Duet3DFilamentMonitor+8
 196              		.size	_ZN20LaserFilamentMonitorD0Ev, .-_ZN20LaserFilamentMonitorD0Ev
 197              		.global	__aeabi_ui2f
 198              		.section	.text._ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb,"ax",%progbits
 199              		.align	1
 200              		.p2align 2,,3
 201              		.global	_ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 202              		.syntax unified
 203              		.thumb
 204              		.thumb_func
 205              		.fpu softvfp
 206              		.type	_ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, %function
 207              	_ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb:
 208              		@ args = 0, pretend = 0, frame = 16
 209              		@ frame_needed = 0, uses_anonymous_args = 0
 210 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 211 0004 1E46     		mov	r6, r3
 212 0006 8BB0     		sub	sp, sp, #44
 213 0008 0323     		movs	r3, #3
 214 000a 0096     		str	r6, [sp]
 215 000c 0446     		mov	r4, r0
 216 000e 0F46     		mov	r7, r1
 217 0010 9046     		mov	r8, r2
 218 0012 FFF7FEFF 		bl	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb
 219 0016 0546     		mov	r5, r0
 220 0018 18B1     		cbz	r0, .L61
 221              	.L34:
 222 001a 2846     		mov	r0, r5
 223 001c 0BB0     		add	sp, sp, #44
 224              		@ sp needed
 225 001e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 226              	.L61:
 227 0022 4521     		movs	r1, #69
 228 0024 3846     		mov	r0, r7
ARM GAS  /tmp/ccoCf9Qz.s 			page 5


 229 0026 3346     		mov	r3, r6
 230 0028 04F59E72 		add	r2, r4, #316
 231 002c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 232 0030 5221     		movs	r1, #82
 233 0032 3846     		mov	r0, r7
 234 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 235 0038 0028     		cmp	r0, #0
 236 003a 40F08780 		bne	.L62
 237              	.L35:
 238 003e 5321     		movs	r1, #83
 239 0040 3846     		mov	r0, r7
 240 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 241 0046 0028     		cmp	r0, #0
 242 0048 74D1     		bne	.L63
 243              	.L39:
 244 004a 3778     		ldrb	r7, [r6]	@ zero_extendqisi2
 245 004c 002F     		cmp	r7, #0
 246 004e 40F0A380 		bne	.L64
 247 0052 B4F84CC1 		ldrh	ip, [r4, #332]
 248 0056 784A     		ldr	r2, .L68
 249 0058 94F840E1 		ldrb	lr, [r4, #320]	@ zero_extendqisi2
 250 005c 774B     		ldr	r3, .L68+4
 251 005e 784D     		ldr	r5, .L68+8
 252 0060 784E     		ldr	r6, .L68+12
 253 0062 7949     		ldr	r1, .L68+16
 254 0064 D4F83401 		ldr	r0, [r4, #308]	@ float
 255 0068 BCF1000F 		cmp	ip, #0
 256 006c 08BF     		it	eq
 257 006e 1546     		moveq	r5, r2
 258 0070 BEF1000F 		cmp	lr, #0
 259 0074 08BF     		it	eq
 260 0076 1E46     		moveq	r6, r3
 261 0078 FFF7FEFF 		bl	__aeabi_fmul
 262 007c D4F81090 		ldr	r9, [r4, #16]
 263 0080 FFF7FEFF 		bl	lrintf
 264 0084 7049     		ldr	r1, .L68+16
 265 0086 8246     		mov	r10, r0
 266 0088 D4F83801 		ldr	r0, [r4, #312]	@ float
 267 008c FFF7FEFF 		bl	__aeabi_fmul
 268 0090 FFF7FEFF 		bl	lrintf
 269 0094 8346     		mov	fp, r0
 270 0096 D4F83C01 		ldr	r0, [r4, #316]	@ float
 271 009a FFF7FEFF 		bl	__aeabi_f2d
 272 009e 2A46     		mov	r2, r5
 273 00a0 CDE90401 		strd	r0, [sp, #16]
 274 00a4 0096     		str	r6, [sp]
 275 00a6 CDF808B0 		str	fp, [sp, #8]
 276 00aa CDF804A0 		str	r10, [sp, #4]
 277 00ae 4B46     		mov	r3, r9
 278 00b0 6649     		ldr	r1, .L68+20
 279 00b2 4046     		mov	r0, r8
 280 00b4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 281 00b8 94F88151 		ldrb	r5, [r4, #385]	@ zero_extendqisi2
 282 00bc 002D     		cmp	r5, #0
 283 00be 00F08A80 		beq	.L65
 284 00c2 B4F84201 		ldrh	r0, [r4, #322]
 285 00c6 8304     		lsls	r3, r0, #18
ARM GAS  /tmp/ccoCf9Qz.s 			page 6


 286 00c8 2ED4     		bmi	.L66
 287 00ca C0F30900 		ubfx	r0, r0, #0, #10
 288 00ce B0F5007F 		cmp	r0, #512
 289 00d2 88BF     		it	hi
 290 00d4 A0F58060 		subhi	r0, r0, #1024
 291 00d8 FFF7FEFF 		bl	__aeabi_i2f
 292 00dc 5C49     		ldr	r1, .L68+24
 293 00de FFF7FEFF 		bl	__aeabi_fmul
 294 00e2 FFF7FEFF 		bl	__aeabi_f2d
 295 00e6 B4F84451 		ldrh	r5, [r4, #324]
 296 00ea 0B46     		mov	r3, r1
 297 00ec C5F30521 		ubfx	r1, r5, #8, #6
 298 00f0 EDB2     		uxtb	r5, r5
 299 00f2 0246     		mov	r2, r0
 300 00f4 0191     		str	r1, [sp, #4]
 301 00f6 0095     		str	r5, [sp]
 302 00f8 5649     		ldr	r1, .L68+28
 303 00fa 4046     		mov	r0, r8
 304 00fc FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 305 0100 94F88331 		ldrb	r3, [r4, #387]	@ zero_extendqisi2
 306 0104 012B     		cmp	r3, #1
 307 0106 06D0     		beq	.L46
 308 0108 5349     		ldr	r1, .L68+32
 309 010a D4F87801 		ldr	r0, [r4, #376]	@ float
 310 010e FFF7FEFF 		bl	__aeabi_fcmpgt
 311 0112 0028     		cmp	r0, #0
 312 0114 64D1     		bne	.L67
 313              	.L46:
 314 0116 0025     		movs	r5, #0
 315 0118 4046     		mov	r0, r8
 316 011a 5049     		ldr	r1, .L68+36
 317 011c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 318 0120 2846     		mov	r0, r5
 319 0122 0BB0     		add	sp, sp, #44
 320              		@ sp needed
 321 0124 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 322              	.L66:
 323 0128 4046     		mov	r0, r8
 324 012a 4D49     		ldr	r1, .L68+40
 325 012c 3D46     		mov	r5, r7
 326 012e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 327 0132 72E7     		b	.L34
 328              	.L63:
 329 0134 0123     		movs	r3, #1
 330 0136 3846     		mov	r0, r7
 331 0138 3370     		strb	r3, [r6]
 332 013a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 333 013e 0028     		cmp	r0, #0
 334 0140 D4BF     		ite	le
 335 0142 0020     		movle	r0, #0
 336 0144 0120     		movgt	r0, #1
 337 0146 84F84001 		strb	r0, [r4, #320]
 338 014a 7EE7     		b	.L39
 339              	.L62:
 340 014c 0221     		movs	r1, #2
 341 014e 0123     		movs	r3, #1
 342 0150 0AAA     		add	r2, sp, #40
ARM GAS  /tmp/ccoCf9Qz.s 			page 7


 343 0152 42F80C1D 		str	r1, [r2, #-12]!
 344 0156 3370     		strb	r3, [r6]
 345 0158 08A9     		add	r1, sp, #32
 346 015a 2B46     		mov	r3, r5
 347 015c 3846     		mov	r0, r7
 348 015e FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 349 0162 DDF81C90 		ldr	r9, [sp, #28]
 350 0166 B9F1000F 		cmp	r9, #0
 351 016a 3FF468AF 		beq	.L35
 352 016e 0898     		ldr	r0, [sp, #32]
 353 0170 FFF7FEFF 		bl	__aeabi_ui2f
 354 0174 3B49     		ldr	r1, .L68+44
 355 0176 FFF7FEFF 		bl	__aeabi_fmul
 356 017a B9F1010F 		cmp	r9, #1
 357 017e C4F83401 		str	r0, [r4, #308]	@ float
 358 0182 7FF65CAF 		bls	.L35
 359 0186 0998     		ldr	r0, [sp, #36]
 360 0188 FFF7FEFF 		bl	__aeabi_ui2f
 361 018c 3549     		ldr	r1, .L68+44
 362 018e FFF7FEFF 		bl	__aeabi_fmul
 363 0192 C4F83801 		str	r0, [r4, #312]	@ float
 364 0196 52E7     		b	.L35
 365              	.L64:
 366 0198 0026     		movs	r6, #0
 367 019a 2046     		mov	r0, r4
 368 019c A4F84261 		strh	r6, [r4, #322]	@ movhi
 369 01a0 C4F85061 		str	r6, [r4, #336]
 370 01a4 C4F85461 		str	r6, [r4, #340]
 371 01a8 C4F84861 		str	r6, [r4, #328]
 372 01ac 84F88261 		strb	r6, [r4, #386]
 373 01b0 FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17InitReceiveBufferEv
 374 01b4 0023     		movs	r3, #0
 375 01b6 0122     		movs	r2, #1
 376 01b8 84F88361 		strb	r6, [r4, #387]
 377 01bc 84F86661 		strb	r6, [r4, #358]
 378 01c0 84F86521 		strb	r2, [r4, #357]
 379 01c4 C4F86031 		str	r3, [r4, #352]	@ float
 380 01c8 C4F86C31 		str	r3, [r4, #364]	@ float
 381 01cc C4F85C31 		str	r3, [r4, #348]	@ float
 382 01d0 C4F86831 		str	r3, [r4, #360]	@ float
 383 01d4 21E7     		b	.L34
 384              	.L65:
 385 01d6 4046     		mov	r0, r8
 386 01d8 2349     		ldr	r1, .L68+48
 387 01da FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 388 01de 1CE7     		b	.L34
 389              	.L67:
 390 01e0 1949     		ldr	r1, .L68+16
 391 01e2 D4F87001 		ldr	r0, [r4, #368]	@ float
 392 01e6 FFF7FEFF 		bl	__aeabi_fmul
 393 01ea FFF7FEFF 		bl	lrintf
 394 01ee 1649     		ldr	r1, .L68+16
 395 01f0 0546     		mov	r5, r0
 396 01f2 D4F87C01 		ldr	r0, [r4, #380]	@ float
 397 01f6 FFF7FEFF 		bl	__aeabi_fmul
 398 01fa D4F87811 		ldr	r1, [r4, #376]	@ float
 399 01fe FFF7FEFF 		bl	__aeabi_fdiv
ARM GAS  /tmp/ccoCf9Qz.s 			page 8


 400 0202 FFF7FEFF 		bl	lrintf
 401 0206 1049     		ldr	r1, .L68+16
 402 0208 0646     		mov	r6, r0
 403 020a D4F87401 		ldr	r0, [r4, #372]	@ float
 404 020e FFF7FEFF 		bl	__aeabi_fmul
 405 0212 FFF7FEFF 		bl	lrintf
 406 0216 0746     		mov	r7, r0
 407 0218 D4F87801 		ldr	r0, [r4, #376]	@ float
 408 021c FFF7FEFF 		bl	__aeabi_f2d
 409 0220 2A46     		mov	r2, r5
 410 0222 CDE90201 		strd	r0, [sp, #8]
 411 0226 0097     		str	r7, [sp]
 412 0228 3346     		mov	r3, r6
 413 022a 4046     		mov	r0, r8
 414 022c 0F49     		ldr	r1, .L68+52
 415 022e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 416 0232 0025     		movs	r5, #0
 417 0234 F1E6     		b	.L34
 418              	.L69:
 419 0236 00BF     		.align	2
 420              	.L68:
 421 0238 14000000 		.word	.LC9
 422 023c 20000000 		.word	.LC11
 423 0240 00000000 		.word	.LC8
 424 0244 18000000 		.word	.LC10
 425 0248 0000C842 		.word	1120403456
 426 024c 2C000000 		.word	.LC12
 427 0250 0AD7A33C 		.word	1017370378
 428 0254 9C000000 		.word	.LC13
 429 0258 00002041 		.word	1092616192
 430 025c 14010000 		.word	.LC15
 431 0260 00000000 		.word	.LC0
 432 0264 0AD7233C 		.word	1008981770
 433 0268 08000000 		.word	.LC1
 434 026c D0000000 		.word	.LC14
 435              		.size	_ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, .-_ZN20LaserFilamentMonito
 436              		.section	.text._ZN20LaserFilamentMonitorC2Eji,"ax",%progbits
 437              		.align	1
 438              		.p2align 2,,3
 439              		.global	_ZN20LaserFilamentMonitorC2Eji
 440              		.syntax unified
 441              		.thumb
 442              		.thumb_func
 443              		.fpu softvfp
 444              		.type	_ZN20LaserFilamentMonitorC2Eji, %function
 445              	_ZN20LaserFilamentMonitorC2Eji:
 446              		@ args = 0, pretend = 0, frame = 0
 447              		@ frame_needed = 0, uses_anonymous_args = 0
 448 0000 70B5     		push	{r4, r5, r6, lr}
 449 0002 1546     		mov	r5, r2
 450 0004 0446     		mov	r4, r0
 451 0006 FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitorC2Eji
 452 000a 062D     		cmp	r5, #6
 453 000c 08BF     		it	eq
 454 000e 4FF48053 		moveq	r3, #4096
 455 0012 4FF00005 		mov	r5, #0
 456 0016 18BF     		it	ne
ARM GAS  /tmp/ccoCf9Qz.s 			page 9


 457 0018 0023     		movne	r3, #0
 458 001a 1749     		ldr	r1, .L74
 459 001c 174A     		ldr	r2, .L74+4
 460 001e 184E     		ldr	r6, .L74+8
 461 0020 1848     		ldr	r0, .L74+12
 462 0022 C4F83C21 		str	r2, [r4, #316]	@ float
 463 0026 C4F83401 		str	r0, [r4, #308]	@ float
 464 002a A4F84C31 		strh	r3, [r4, #332]	@ movhi
 465 002e 2046     		mov	r0, r4
 466 0030 2660     		str	r6, [r4]
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
 485 0074 70BD     		pop	{r4, r5, r6, pc}
 486              	.L75:
 487 0076 00BF     		.align	2
 488              	.L74:
 489 0078 CDCCCC3F 		.word	1070386381
 490 007c 00004040 		.word	1077936128
 491 0080 08000000 		.word	.LANCHOR0+8
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
 503              		.fpu softvfp
 504              		.type	_ZN20LaserFilamentMonitor4InitEv, %function
 505              	_ZN20LaserFilamentMonitor4InitEv:
 506              		@ args = 0, pretend = 0, frame = 0
 507              		@ frame_needed = 0, uses_anonymous_args = 0
 508 0000 38B5     		push	{r3, r4, r5, lr}
 509 0002 0025     		movs	r5, #0
 510 0004 A0F84251 		strh	r5, [r0, #322]	@ movhi
 511 0008 C0F85051 		str	r5, [r0, #336]
 512 000c C0F85451 		str	r5, [r0, #340]
 513 0010 C0F84851 		str	r5, [r0, #328]
ARM GAS  /tmp/ccoCf9Qz.s 			page 10


 514 0014 80F88251 		strb	r5, [r0, #386]
 515 0018 0446     		mov	r4, r0
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
 535              		.fpu softvfp
 536              		.type	_ZN20LaserFilamentMonitor5ResetEv, %function
 537              	_ZN20LaserFilamentMonitor5ResetEv:
 538              		@ args = 0, pretend = 0, frame = 0
 539              		@ frame_needed = 0, uses_anonymous_args = 0
 540              		@ link register save eliminated.
 541 0000 0023     		movs	r3, #0
 542 0002 0022     		movs	r2, #0
 543 0004 0121     		movs	r1, #1
 544 0006 C0F86031 		str	r3, [r0, #352]	@ float
 545 000a 80F86511 		strb	r1, [r0, #357]
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
 560              		.fpu softvfp
 561              		.type	_ZNK20LaserFilamentMonitor18GetCurrentPositionEv, %function
 562              	_ZNK20LaserFilamentMonitor18GetCurrentPositionEv:
 563              		@ args = 0, pretend = 0, frame = 0
 564              		@ frame_needed = 0, uses_anonymous_args = 0
 565 0000 B0F84201 		ldrh	r0, [r0, #322]
 566 0004 08B5     		push	{r3, lr}
 567 0006 C0F30900 		ubfx	r0, r0, #0, #10
 568 000a B0F5007F 		cmp	r0, #512
 569 000e 88BF     		it	hi
 570 0010 A0F58060 		subhi	r0, r0, #1024
ARM GAS  /tmp/ccoCf9Qz.s 			page 11


 571 0014 FFF7FEFF 		bl	__aeabi_i2f
 572 0018 0149     		ldr	r1, .L82
 573 001a FFF7FEFF 		bl	__aeabi_fmul
 574 001e 08BD     		pop	{r3, pc}
 575              	.L83:
 576              		.align	2
 577              	.L82:
 578 0020 0AD7A33C 		.word	1017370378
 579              		.size	_ZNK20LaserFilamentMonitor18GetCurrentPositionEv, .-_ZNK20LaserFilamentMonitor18GetCurrentPo
 580              		.global	__aeabi_fadd
 581              		.section	.text._ZN20LaserFilamentMonitor18HandleIncomingDataEv,"ax",%progbits
 582              		.align	1
 583              		.p2align 2,,3
 584              		.global	_ZN20LaserFilamentMonitor18HandleIncomingDataEv
 585              		.syntax unified
 586              		.thumb
 587              		.thumb_func
 588              		.fpu softvfp
 589              		.type	_ZN20LaserFilamentMonitor18HandleIncomingDataEv, %function
 590              	_ZN20LaserFilamentMonitor18HandleIncomingDataEv:
 591              		@ args = 0, pretend = 0, frame = 8
 592              		@ frame_needed = 0, uses_anonymous_args = 0
 593 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 594 0004 0446     		mov	r4, r0
 595 0006 83B0     		sub	sp, sp, #12
 596 0008 0126     		movs	r6, #1
 597 000a 3E4D     		ldr	r5, .L105
 598 000c 0027     		movs	r7, #0
 599 000e 17E0     		b	.L96
 600              	.L86:
 601 0010 D4F85031 		ldr	r3, [r4, #336]
 602 0014 0133     		adds	r3, r3, #1
 603 0016 C4F85031 		str	r3, [r4, #336]
 604              	.L88:
 605 001a 94F86631 		ldrb	r3, [r4, #358]	@ zero_extendqisi2
 606 001e 63B1     		cbz	r3, .L93
 607 0020 D4F85C01 		ldr	r0, [r4, #348]	@ float
 608 0024 D4F85811 		ldr	r1, [r4, #344]	@ float
 609 0028 FFF7FEFF 		bl	__aeabi_fadd
 610 002c 94F86431 		ldrb	r3, [r4, #356]	@ zero_extendqisi2
 611 0030 C4F85C01 		str	r0, [r4, #348]	@ float
 612 0034 0BB1     		cbz	r3, .L93
 613 0036 84F86561 		strb	r6, [r4, #357]
 614              	.L93:
 615 003a 0023     		movs	r3, #0
 616 003c 84F86631 		strb	r3, [r4, #358]
 617              	.L96:
 618 0040 0DF10601 		add	r1, sp, #6
 619 0044 2046     		mov	r0, r4
 620 0046 FFF7FEFF 		bl	_ZN21Duet3DFilamentMonitor17PollReceiveBufferERt
 621 004a 0028     		cmp	r0, #0
 622 004c 57D0     		beq	.L84
 623 004e 0128     		cmp	r0, #1
 624 0050 DED1     		bne	.L86
 625 0052 BDF80620 		ldrh	r2, [sp, #6]
 626 0056 82EA1223 		eor	r3, r2, r2, lsr #8
 627 005a 5BB2     		sxtb	r3, r3
ARM GAS  /tmp/ccoCf9Qz.s 			page 12


 628 005c C3F30311 		ubfx	r1, r3, #4, #4
 629 0060 4B40     		eors	r3, r3, r1
 630 0062 C3F38501 		ubfx	r1, r3, #2, #6
 631 0066 4B40     		eors	r3, r3, r1
 632 0068 83EA5303 		eor	r3, r3, r3, lsr #1
 633 006c D907     		lsls	r1, r3, #31
 634 006e 05D5     		bpl	.L87
 635 0070 D4F85431 		ldr	r3, [r4, #340]
 636 0074 0133     		adds	r3, r3, #1
 637 0076 C4F85431 		str	r3, [r4, #340]
 638 007a CEE7     		b	.L88
 639              	.L87:
 640 007c 5304     		lsls	r3, r2, #17
 641 007e 04D5     		bpl	.L89
 642 0080 C2F30D02 		ubfx	r2, r2, #0, #14
 643 0084 A4F84421 		strh	r2, [r4, #324]	@ movhi
 644 0088 C7E7     		b	.L88
 645              	.L89:
 646 008a 84F88101 		strb	r0, [r4, #385]
 647 008e FFF7FEFF 		bl	millis
 648 0092 BDF80680 		ldrh	r8, [sp, #6]
 649 0096 B4F84231 		ldrh	r3, [r4, #322]
 650 009a C4F84801 		str	r0, [r4, #328]
 651 009e A8EB0300 		sub	r0, r8, r3
 652 00a2 C0F30900 		ubfx	r0, r0, #0, #10
 653 00a6 B0F5007F 		cmp	r0, #512
 654 00aa 01D9     		bls	.L90
 655 00ac A0F58060 		sub	r0, r0, #1024
 656              	.L90:
 657 00b0 FFF7FEFF 		bl	__aeabi_i2f
 658 00b4 2946     		mov	r1, r5
 659 00b6 FFF7FEFF 		bl	__aeabi_fmul
 660 00ba D4F86011 		ldr	r1, [r4, #352]	@ float
 661 00be FFF7FEFF 		bl	__aeabi_fadd
 662 00c2 94F86631 		ldrb	r3, [r4, #358]	@ zero_extendqisi2
 663 00c6 8146     		mov	r9, r0
 664 00c8 C4F86001 		str	r0, [r4, #352]	@ float
 665 00cc A4F84281 		strh	r8, [r4, #322]	@ movhi
 666 00d0 002B     		cmp	r3, #0
 667 00d2 B2D0     		beq	.L93
 668 00d4 94F86431 		ldrb	r3, [r4, #356]	@ zero_extendqisi2
 669 00d8 73B9     		cbnz	r3, .L94
 670 00da D4F85811 		ldr	r1, [r4, #344]	@ float
 671 00de D4F86801 		ldr	r0, [r4, #360]	@ float
 672 00e2 FFF7FEFF 		bl	__aeabi_fadd
 673 00e6 4946     		mov	r1, r9
 674 00e8 C4F86801 		str	r0, [r4, #360]	@ float
 675 00ec D4F86C01 		ldr	r0, [r4, #364]	@ float
 676 00f0 FFF7FEFF 		bl	__aeabi_fadd
 677 00f4 C4F86C01 		str	r0, [r4, #364]	@ float
 678              	.L94:
 679 00f8 C4F86071 		str	r7, [r4, #352]	@ float
 680 00fc 9DE7     		b	.L93
 681              	.L84:
 682 00fe 03B0     		add	sp, sp, #12
 683              		@ sp needed
 684 0100 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
ARM GAS  /tmp/ccoCf9Qz.s 			page 13


 685              	.L106:
 686              		.align	2
 687              	.L105:
 688 0104 0AD7A33C 		.word	1017370378
 689              		.size	_ZN20LaserFilamentMonitor18HandleIncomingDataEv, .-_ZN20LaserFilamentMonitor18HandleIncoming
 690              		.section	.text._ZN20LaserFilamentMonitor5ClearEb,"ax",%progbits
 691              		.align	1
 692              		.p2align 2,,3
 693              		.global	_ZN20LaserFilamentMonitor5ClearEb
 694              		.syntax unified
 695              		.thumb
 696              		.thumb_func
 697              		.fpu softvfp
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
 709 0010 C4F86031 		str	r3, [r4, #352]	@ float
 710 0014 84F86511 		strb	r1, [r4, #357]
 711 0018 C4F86C31 		str	r3, [r4, #364]	@ float
 712 001c C4F85C31 		str	r3, [r4, #348]	@ float
 713 0020 C4F86831 		str	r3, [r4, #360]	@ float
 714 0024 84F88321 		strb	r2, [r4, #387]
 715 0028 84F86621 		strb	r2, [r4, #358]
 716 002c 65B1     		cbz	r5, .L109
 717 002e B4F84231 		ldrh	r3, [r4, #322]
 718 0032 9A04     		lsls	r2, r3, #18
 719 0034 01D5     		bpl	.L112
 720 0036 0420     		movs	r0, #4
 721 0038 38BD     		pop	{r3, r4, r5, pc}
 722              	.L112:
 723 003a B4F84C21 		ldrh	r2, [r4, #332]
 724 003e 1342     		tst	r3, r2
 725 0040 14BF     		ite	ne
 726 0042 0846     		movne	r0, r1
 727 0044 0020     		moveq	r0, #0
 728 0046 38BD     		pop	{r3, r4, r5, pc}
 729              	.L109:
 730 0048 2846     		mov	r0, r5
 731 004a 38BD     		pop	{r3, r4, r5, pc}
 732              		.size	_ZN20LaserFilamentMonitor5ClearEb, .-_ZN20LaserFilamentMonitor5ClearEb
 733              		.global	__aeabi_fcmpge
 734              		.global	__aeabi_fcmplt
 735              		.section	.text._ZN20LaserFilamentMonitor13CheckFilamentEffb,"ax",%progbits
 736              		.align	1
 737              		.p2align 2,,3
 738              		.global	_ZN20LaserFilamentMonitor13CheckFilamentEffb
 739              		.syntax unified
 740              		.thumb
 741              		.thumb_func
ARM GAS  /tmp/ccoCf9Qz.s 			page 14


 742              		.fpu softvfp
 743              		.type	_ZN20LaserFilamentMonitor13CheckFilamentEffb, %function
 744              	_ZN20LaserFilamentMonitor13CheckFilamentEffb:
 745              		@ args = 0, pretend = 0, frame = 0
 746              		@ frame_needed = 0, uses_anonymous_args = 0
 747 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 748 0004 604D     		ldr	r5, .L158
 749 0006 0446     		mov	r4, r0
 750 0008 686C     		ldr	r0, [r5, #68]
 751 000a 1646     		mov	r6, r2
 752 000c 8204     		lsls	r2, r0, #18
 753 000e 85B0     		sub	sp, sp, #20
 754 0010 0F46     		mov	r7, r1
 755 0012 16D5     		bpl	.L114
 756 0014 0846     		mov	r0, r1
 757 0016 1D46     		mov	r5, r3
 758 0018 FFF7FEFF 		bl	__aeabi_f2d
 759 001c 8046     		mov	r8, r0
 760 001e 3046     		mov	r0, r6
 761 0020 8946     		mov	r9, r1
 762 0022 FFF7FEFF 		bl	__aeabi_f2d
 763 0026 594A     		ldr	r2, .L158+4
 764 0028 594B     		ldr	r3, .L158+8
 765 002a CDE90001 		strd	r0, [sp]
 766 002e 002D     		cmp	r5, #0
 767 0030 0CBF     		ite	eq
 768 0032 1546     		moveq	r5, r2
 769 0034 1D46     		movne	r5, r3
 770 0036 5748     		ldr	r0, .L158+12
 771 0038 4246     		mov	r2, r8
 772 003a 4B46     		mov	r3, r9
 773 003c 0295     		str	r5, [sp, #8]
 774 003e FFF7FEFF 		bl	debugPrintf
 775              	.L114:
 776 0042 94F88351 		ldrb	r5, [r4, #387]	@ zero_extendqisi2
 777 0046 012D     		cmp	r5, #1
 778 0048 46D0     		beq	.L117
 779 004a 3AD3     		bcc	.L118
 780 004c 022D     		cmp	r5, #2
 781 004e 03D0     		beq	.L119
 782              	.L153:
 783 0050 0020     		movs	r0, #0
 784              	.L116:
 785 0052 05B0     		add	sp, sp, #20
 786              		@ sp needed
 787 0054 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 788              	.L119:
 789 0058 D4F87801 		ldr	r0, [r4, #376]	@ float
 790 005c 3946     		mov	r1, r7
 791 005e FFF7FEFF 		bl	__aeabi_fadd
 792 0062 94F88231 		ldrb	r3, [r4, #386]	@ zero_extendqisi2
 793 0066 C4F87801 		str	r0, [r4, #376]	@ float
 794 006a 0BB1     		cbz	r3, .L126
 795 006c 06F10046 		add	r6, r6, #-2147483648
 796              	.L126:
 797 0070 3146     		mov	r1, r6
 798 0072 D4F87C01 		ldr	r0, [r4, #380]	@ float
ARM GAS  /tmp/ccoCf9Qz.s 			page 15


 799 0076 FFF7FEFF 		bl	__aeabi_fadd
 800 007a 3946     		mov	r1, r7
 801 007c C4F87C01 		str	r0, [r4, #380]	@ float
 802 0080 3046     		mov	r0, r6
 803 0082 FFF7FEFF 		bl	__aeabi_fdiv
 804 0086 D4F87411 		ldr	r1, [r4, #372]	@ float
 805 008a 0546     		mov	r5, r0
 806 008c FFF7FEFF 		bl	__aeabi_fcmpgt
 807 0090 0028     		cmp	r0, #0
 808 0092 68D1     		bne	.L156
 809 0094 D4F87011 		ldr	r1, [r4, #368]	@ float
 810 0098 2846     		mov	r0, r5
 811 009a FFF7FEFF 		bl	__aeabi_fcmplt
 812 009e 08B1     		cbz	r0, .L129
 813 00a0 C4F87051 		str	r5, [r4, #368]	@ float
 814              	.L129:
 815 00a4 94F84031 		ldrb	r3, [r4, #320]	@ zero_extendqisi2
 816 00a8 002B     		cmp	r3, #0
 817 00aa D1D0     		beq	.L153
 818 00ac D4F83411 		ldr	r1, [r4, #308]	@ float
 819 00b0 2846     		mov	r0, r5
 820 00b2 FFF7FEFF 		bl	__aeabi_fcmplt
 821 00b6 0028     		cmp	r0, #0
 822 00b8 5AD0     		beq	.L157
 823 00ba 0220     		movs	r0, #2
 824 00bc 05B0     		add	sp, sp, #20
 825              		@ sp needed
 826 00be BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 827              	.L118:
 828 00c2 0123     		movs	r3, #1
 829 00c4 0020     		movs	r0, #0
 830 00c6 C4F87871 		str	r7, [r4, #376]	@ float
 831 00ca C4F87C61 		str	r6, [r4, #380]	@ float
 832 00ce 84F88331 		strb	r3, [r4, #387]
 833 00d2 05B0     		add	sp, sp, #20
 834              		@ sp needed
 835 00d4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 836              	.L117:
 837 00d8 D4F87811 		ldr	r1, [r4, #376]	@ float
 838 00dc 3846     		mov	r0, r7
 839 00de FFF7FEFF 		bl	__aeabi_fadd
 840 00e2 D4F87C11 		ldr	r1, [r4, #380]	@ float
 841 00e6 0746     		mov	r7, r0
 842 00e8 C4F87801 		str	r0, [r4, #376]	@ float
 843 00ec 3046     		mov	r0, r6
 844 00ee FFF7FEFF 		bl	__aeabi_fadd
 845 00f2 2949     		ldr	r1, .L158+16
 846 00f4 0646     		mov	r6, r0
 847 00f6 C4F87C01 		str	r0, [r4, #380]	@ float
 848 00fa 3846     		mov	r0, r7
 849 00fc FFF7FEFF 		bl	__aeabi_fcmpge
 850 0100 0028     		cmp	r0, #0
 851 0102 A5D0     		beq	.L153
 852 0104 0021     		movs	r1, #0
 853 0106 3046     		mov	r0, r6
 854 0108 FFF7FEFF 		bl	__aeabi_fcmplt
 855 010c 00B9     		cbnz	r0, .L121
ARM GAS  /tmp/ccoCf9Qz.s 			page 16


 856 010e 0546     		mov	r5, r0
 857              	.L121:
 858 0110 84F88251 		strb	r5, [r4, #386]
 859 0114 0021     		movs	r1, #0
 860 0116 3046     		mov	r0, r6
 861 0118 FFF7FEFF 		bl	__aeabi_fcmplt
 862 011c 18B1     		cbz	r0, .L122
 863 011e 06F10046 		add	r6, r6, #-2147483648
 864 0122 C4F87C61 		str	r6, [r4, #380]	@ float
 865              	.L122:
 866 0126 3946     		mov	r1, r7
 867 0128 3046     		mov	r0, r6
 868 012a FFF7FEFF 		bl	__aeabi_fdiv
 869 012e 94F84031 		ldrb	r3, [r4, #320]	@ zero_extendqisi2
 870 0132 0546     		mov	r5, r0
 871 0134 C4F87401 		str	r0, [r4, #372]	@ float
 872 0138 C4F87001 		str	r0, [r4, #368]	@ float
 873 013c B3B1     		cbz	r3, .L135
 874 013e D4F83411 		ldr	r1, [r4, #308]	@ float
 875 0142 FFF7FEFF 		bl	__aeabi_fcmplt
 876 0146 E8B9     		cbnz	r0, .L136
 877 0148 2846     		mov	r0, r5
 878 014a D4F83811 		ldr	r1, [r4, #312]	@ float
 879 014e FFF7FEFF 		bl	__aeabi_fcmpgt
 880 0152 0028     		cmp	r0, #0
 881 0154 14BF     		ite	ne
 882 0156 0320     		movne	r0, #3
 883 0158 0020     		moveq	r0, #0
 884              	.L124:
 885 015a 0223     		movs	r3, #2
 886 015c 84F88331 		strb	r3, [r4, #387]
 887 0160 05B0     		add	sp, sp, #20
 888              		@ sp needed
 889 0162 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 890              	.L156:
 891 0166 C4F87451 		str	r5, [r4, #372]	@ float
 892 016a 9BE7     		b	.L129
 893              	.L135:
 894 016c 1846     		mov	r0, r3
 895 016e F4E7     		b	.L124
 896              	.L157:
 897 0170 D4F83811 		ldr	r1, [r4, #312]	@ float
 898 0174 2846     		mov	r0, r5
 899 0176 FFF7FEFF 		bl	__aeabi_fcmpgt
 900 017a 0028     		cmp	r0, #0
 901 017c 3FF468AF 		beq	.L153
 902 0180 0320     		movs	r0, #3
 903 0182 66E7     		b	.L116
 904              	.L136:
 905 0184 0220     		movs	r0, #2
 906 0186 E8E7     		b	.L124
 907              	.L159:
 908              		.align	2
 909              	.L158:
 910 0188 00000000 		.word	reprap
 911 018c 14000000 		.word	.LC9
 912 0190 00000000 		.word	.LC16
ARM GAS  /tmp/ccoCf9Qz.s 			page 17


 913 0194 0C000000 		.word	.LC17
 914 0198 00002041 		.word	1092616192
 915              		.size	_ZN20LaserFilamentMonitor13CheckFilamentEffb, .-_ZN20LaserFilamentMonitor13CheckFilamentEffb
 916              		.section	.text._ZN20LaserFilamentMonitor5CheckEbbbf,"ax",%progbits
 917              		.align	1
 918              		.p2align 2,,3
 919              		.global	_ZN20LaserFilamentMonitor5CheckEbbbf
 920              		.syntax unified
 921              		.thumb
 922              		.thumb_func
 923              		.fpu softvfp
 924              		.type	_ZN20LaserFilamentMonitor5CheckEbbbf, %function
 925              	_ZN20LaserFilamentMonitor5CheckEbbbf:
 926              		@ args = 4, pretend = 0, frame = 0
 927              		@ frame_needed = 0, uses_anonymous_args = 0
 928 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 929 0002 0446     		mov	r4, r0
 930 0004 0D46     		mov	r5, r1
 931 0006 1E46     		mov	r6, r3
 932 0008 6AB1     		cbz	r2, .L161
 933 000a 0123     		movs	r3, #1
 934 000c 80F86531 		strb	r3, [r0, #357]
 935 0010 96B9     		cbnz	r6, .L183
 936              	.L164:
 937 0012 2046     		mov	r0, r4
 938 0014 FFF7FEFF 		bl	_ZN20LaserFilamentMonitor18HandleIncomingDataEv
 939 0018 4DB3     		cbz	r5, .L171
 940              	.L167:
 941 001a B4F84231 		ldrh	r3, [r4, #322]
 942 001e 9A04     		lsls	r2, r3, #18
 943 0020 27D5     		bpl	.L184
 944 0022 0420     		movs	r0, #4
 945 0024 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 946              	.L161:
 947 0026 D0F85C01 		ldr	r0, [r0, #348]	@ float
 948 002a 0699     		ldr	r1, [sp, #24]	@ float
 949 002c FFF7FEFF 		bl	__aeabi_fadd
 950 0030 C4F85C01 		str	r0, [r4, #348]	@ float
 951 0034 002E     		cmp	r6, #0
 952 0036 ECD0     		beq	.L164
 953              	.L183:
 954 0038 2046     		mov	r0, r4
 955 003a FFF7FEFF 		bl	_ZNK21Duet3DFilamentMonitor20IsWaitingForStartBitEv
 956 003e 0028     		cmp	r0, #0
 957 0040 E7D0     		beq	.L164
 958 0042 0020     		movs	r0, #0
 959 0044 0126     		movs	r6, #1
 960 0046 0023     		movs	r3, #0
 961 0048 94F86511 		ldrb	r1, [r4, #357]	@ zero_extendqisi2
 962 004c D4F85C21 		ldr	r2, [r4, #348]	@ float
 963 0050 84F86501 		strb	r0, [r4, #357]
 964 0054 84F86661 		strb	r6, [r4, #358]
 965 0058 84F86411 		strb	r1, [r4, #356]
 966 005c C4F85821 		str	r2, [r4, #344]	@ float
 967 0060 C4F85C31 		str	r3, [r4, #348]	@ float
 968 0064 2046     		mov	r0, r4
 969 0066 FFF7FEFF 		bl	_ZN20LaserFilamentMonitor18HandleIncomingDataEv
ARM GAS  /tmp/ccoCf9Qz.s 			page 18


 970 006a 002D     		cmp	r5, #0
 971 006c D5D1     		bne	.L167
 972              	.L171:
 973 006e 0020     		movs	r0, #0
 974 0070 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 975              	.L184:
 976 0072 B4F84C51 		ldrh	r5, [r4, #332]
 977 0076 1D40     		ands	r5, r3, r5
 978 0078 42D1     		bne	.L175
 979 007a D4F86861 		ldr	r6, [r4, #360]	@ float
 980 007e D4F83C71 		ldr	r7, [r4, #316]	@ float
 981 0082 3046     		mov	r0, r6
 982 0084 3946     		mov	r1, r7
 983 0086 FFF7FEFF 		bl	__aeabi_fcmpge
 984 008a 0028     		cmp	r0, #0
 985 008c 3AD1     		bne	.L185
 986 008e D4F85C11 		ldr	r1, [r4, #348]	@ float
 987 0092 3046     		mov	r0, r6
 988 0094 FFF7FEFF 		bl	__aeabi_fadd
 989 0098 3946     		mov	r1, r7
 990 009a 0546     		mov	r5, r0
 991 009c 3846     		mov	r0, r7
 992 009e FFF7FEFF 		bl	__aeabi_fadd
 993 00a2 0146     		mov	r1, r0
 994 00a4 2846     		mov	r0, r5
 995 00a6 FFF7FEFF 		bl	__aeabi_fcmpge
 996 00aa 0028     		cmp	r0, #0
 997 00ac DFD0     		beq	.L171
 998 00ae FFF7FEFF 		bl	millis
 999 00b2 D4F84831 		ldr	r3, [r4, #328]
 1000 00b6 C01A     		subs	r0, r0, r3
 1001 00b8 DC28     		cmp	r0, #220
 1002 00ba D8D9     		bls	.L171
 1003 00bc 2046     		mov	r0, r4
 1004 00be FFF7FEFF 		bl	_ZNK21Duet3DFilamentMonitor11IsReceivingEv
 1005 00c2 0028     		cmp	r0, #0
 1006 00c4 D3D1     		bne	.L171
 1007 00c6 D4F86011 		ldr	r1, [r4, #352]	@ float
 1008 00ca D4F86C01 		ldr	r0, [r4, #364]	@ float
 1009 00ce FFF7FEFF 		bl	__aeabi_fadd
 1010 00d2 D4F85C11 		ldr	r1, [r4, #348]	@ float
 1011 00d6 0546     		mov	r5, r0
 1012 00d8 D4F86801 		ldr	r0, [r4, #360]	@ float
 1013 00dc FFF7FEFF 		bl	__aeabi_fadd
 1014 00e0 2A46     		mov	r2, r5
 1015 00e2 0146     		mov	r1, r0
 1016 00e4 0123     		movs	r3, #1
 1017 00e6 2046     		mov	r0, r4
 1018 00e8 FFF7FEFF 		bl	_ZN20LaserFilamentMonitor13CheckFilamentEffb
 1019 00ec 0023     		movs	r3, #0
 1020 00ee C4F86031 		str	r3, [r4, #352]	@ float
 1021 00f2 C4F86C31 		str	r3, [r4, #364]	@ float
 1022 00f6 C4F85C31 		str	r3, [r4, #348]	@ float
 1023 00fa C4F86831 		str	r3, [r4, #360]	@ float
 1024 00fe F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1025              	.L175:
 1026 0100 0120     		movs	r0, #1
ARM GAS  /tmp/ccoCf9Qz.s 			page 19


 1027 0102 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1028              	.L185:
 1029 0104 2B46     		mov	r3, r5
 1030 0106 3146     		mov	r1, r6
 1031 0108 D4F86C21 		ldr	r2, [r4, #364]	@ float
 1032 010c 2046     		mov	r0, r4
 1033 010e FFF7FEFF 		bl	_ZN20LaserFilamentMonitor13CheckFilamentEffb
 1034 0112 0023     		movs	r3, #0
 1035 0114 C4F86C31 		str	r3, [r4, #364]	@ float
 1036 0118 C4F86831 		str	r3, [r4, #360]	@ float
 1037 011c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1038              		.size	_ZN20LaserFilamentMonitor5CheckEbbbf, .-_ZN20LaserFilamentMonitor5CheckEbbbf
 1039              		.global	_ZTV20LaserFilamentMonitor
 1040 011e 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1041              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1042              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1043              	_ZL28cpu_irq_prev_interrupt_state:
 1044 0000 00       		.space	1
 1045              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1046              		.align	2
 1047              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1048              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1049              	_ZL32cpu_irq_critical_section_counter:
 1050 0000 00000000 		.space	4
 1051              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1052              		.align	2
 1053              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1054              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1055              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1056 0000 00000000 		.space	4
 1057              		.section	.rodata._ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej.str1.4,"aMS",%progbits,1
 1058              		.align	2
 1059              	.LC0:
 1060 0000 6572726F 		.ascii	"error\000"
 1060      7200
 1061 0006 0000     		.space	2
 1062              	.LC1:
 1063 0008 6E6F2064 		.ascii	"no data received\000"
 1063      61746120 
 1063      72656365 
 1063      69766564 
 1063      00
 1064 0019 000000   		.space	3
 1065              	.LC2:
 1066 001c 6F6B00   		.ascii	"ok\000"
 1067 001f 00       		.space	1
 1068              	.LC3:
 1069 0020 6E6F2066 		.ascii	"no filament\000"
 1069      696C616D 
 1069      656E7400 
 1070              	.LC4:
 1071 002c 45787472 		.ascii	"Extruder %u sensor: position %.2f, %s, \000"
 1071      75646572 
 1071      20257520 
 1071      73656E73 
 1071      6F723A20 
 1072              	.LC5:
ARM GAS  /tmp/ccoCf9Qz.s 			page 20


 1073 0054 6672616D 		.ascii	"framing errors %lu, parity errors %lu, \000"
 1073      696E6720 
 1073      6572726F 
 1073      72732025 
 1073      6C752C20 
 1074              	.LC6:
 1075 007c 6D656173 		.ascii	"measured minimum %ld%%, average %ld%%, maximum %ld%"
 1075      75726564 
 1075      206D696E 
 1075      696D756D 
 1075      20256C64 
 1076 00af 25206F76 		.ascii	"% over %.1fmm\012\000"
 1076      65722025 
 1076      2E31666D 
 1076      6D0A00
 1077 00be 0000     		.space	2
 1078              	.LC7:
 1079 00c0 6E6F2063 		.ascii	"no calibration data\012\000"
 1079      616C6962 
 1079      72617469 
 1079      6F6E2064 
 1079      6174610A 
 1080              		.section	.rodata._ZN20LaserFilamentMonitor13CheckFilamentEffb.str1.4,"aMS",%progbits,1
 1081              		.align	2
 1082              	.LC16:
 1083 0000 206F7665 		.ascii	" overdue\000"
 1083      72647565 
 1083      00
 1084 0009 000000   		.space	3
 1085              	.LC17:
 1086 000c 45787472 		.ascii	"Extr req %.3f meas %.3f%s\012\000"
 1086      20726571 
 1086      20252E33 
 1086      66206D65 
 1086      61732025 
 1087              		.section	.rodata._ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb.str1.4,"aMS",%pr
 1088              		.align	2
 1089              	.LC8:
 1090 0000 20776974 		.ascii	" with microswitch\000"
 1090      68206D69 
 1090      63726F73 
 1090      77697463 
 1090      6800
 1091 0012 0000     		.space	2
 1092              	.LC9:
 1093 0014 00       		.ascii	"\000"
 1094 0015 000000   		.space	3
 1095              	.LC10:
 1096 0018 656E6162 		.ascii	"enabled\000"
 1096      6C656400 
 1097              	.LC11:
 1098 0020 64697361 		.ascii	"disabled\000"
 1098      626C6564 
 1098      00
 1099 0029 000000   		.space	3
 1100              	.LC12:
 1101 002c 44756574 		.ascii	"Duet3D laser filament monitor%s on endstop input %u"
ARM GAS  /tmp/ccoCf9Qz.s 			page 21


 1101      3344206C 
 1101      61736572 
 1101      2066696C 
 1101      616D656E 
 1102 005f 2C202573 		.ascii	", %s, allowed movement %ld%% to %ld%%, check every "
 1102      2C20616C 
 1102      6C6F7765 
 1102      64206D6F 
 1102      76656D65 
 1103 0092 252E3166 		.ascii	"%.1fmm, \000"
 1103      6D6D2C20 
 1103      00
 1104 009b 00       		.space	1
 1105              	.LC13:
 1106 009c 63757272 		.ascii	"current position %.1f, brightness %u, shutter %u, \000"
 1106      656E7420 
 1106      706F7369 
 1106      74696F6E 
 1106      20252E31 
 1107 00cf 00       		.space	1
 1108              	.LC14:
 1109 00d0 6D656173 		.ascii	"measured minimum %ld%%, average %ld%%, maximum %ld%"
 1109      75726564 
 1109      206D696E 
 1109      696D756D 
 1109      20256C64 
 1110 0103 25206F76 		.ascii	"% over %.1fmm\000"
 1110      65722025 
 1110      2E31666D 
 1110      6D00
 1111 0111 000000   		.space	3
 1112              	.LC15:
 1113 0114 6E6F2063 		.ascii	"no calibration data\000"
 1113      616C6962 
 1113      72617469 
 1113      6F6E2064 
 1113      61746100 
 1114              		.section	.rodata._ZTV20LaserFilamentMonitor,"a",%progbits
 1115              		.align	2
 1116              		.set	.LANCHOR0,. + 0
 1117              		.type	_ZTV20LaserFilamentMonitor, %object
 1118              		.size	_ZTV20LaserFilamentMonitor, 40
 1119              	_ZTV20LaserFilamentMonitor:
 1120 0000 00000000 		.word	0
 1121 0004 00000000 		.word	0
 1122 0008 00000000 		.word	_ZN20LaserFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 1123 000c 00000000 		.word	_ZN20LaserFilamentMonitor5CheckEbbbf
 1124 0010 00000000 		.word	_ZN20LaserFilamentMonitor5ClearEb
 1125 0014 00000000 		.word	_ZN20LaserFilamentMonitor11DiagnosticsE11MessageTypej
 1126 0018 00000000 		.word	_ZN21Duet3DFilamentMonitor9InterruptEv
 1127 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 1128 0020 00000000 		.word	_ZN20LaserFilamentMonitorD1Ev
 1129 0024 00000000 		.word	_ZN20LaserFilamentMonitorD0Ev
 1130              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
