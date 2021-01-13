ARM GAS  /tmp/ccmAqXSy.s 			page 1


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
  11              		.file	"PulsedFilamentMonitor.cpp"
  12              		.section	.text._ZN21PulsedFilamentMonitor9InterruptEv,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN21PulsedFilamentMonitor9InterruptEv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN21PulsedFilamentMonitor9InterruptEv, %function
  21              	_ZN21PulsedFilamentMonitor9InterruptEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 10B5     		push	{r4, lr}
  25 0002 90F85C20 		ldrb	r2, [r0, #92]	@ zero_extendqisi2
  26 0006 C36A     		ldr	r3, [r0, #44]
  27 0008 632A     		cmp	r2, #99
  28 000a 03F10103 		add	r3, r3, #1
  29 000e D8BF     		it	le
  30 0010 0132     		addle	r2, r2, #1
  31 0012 C362     		str	r3, [r0, #44]
  32 0014 D8BF     		it	le
  33 0016 80F85C20 		strble	r2, [r0, #92]
  34 001a 0446     		mov	r4, r0
  35 001c FFF7FEFF 		bl	millis
  36 0020 2063     		str	r0, [r4, #48]
  37 0022 0120     		movs	r0, #1
  38 0024 10BD     		pop	{r4, pc}
  39              		.size	_ZN21PulsedFilamentMonitor9InterruptEv, .-_ZN21PulsedFilamentMonitor9InterruptEv
  40 0026 00BF     		.section	.text._ZN21PulsedFilamentMonitorD2Ev,"axG",%progbits,_ZN21PulsedFilamentMonitorD5Ev,comda
  41              		.align	1
  42              		.p2align 2,,3
  43              		.weak	_ZN21PulsedFilamentMonitorD2Ev
  44              		.syntax unified
  45              		.thumb
  46              		.thumb_func
  47              		.fpu softvfp
  48              		.type	_ZN21PulsedFilamentMonitorD2Ev, %function
  49              	_ZN21PulsedFilamentMonitorD2Ev:
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52 0000 10B5     		push	{r4, lr}
  53 0002 0446     		mov	r4, r0
  54 0004 024B     		ldr	r3, .L7
  55 0006 0360     		str	r3, [r0]
  56 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
  57 000c 2046     		mov	r0, r4
ARM GAS  /tmp/ccmAqXSy.s 			page 2


  58 000e 10BD     		pop	{r4, pc}
  59              	.L8:
  60              		.align	2
  61              	.L7:
  62 0010 08000000 		.word	.LANCHOR0+8
  63              		.size	_ZN21PulsedFilamentMonitorD2Ev, .-_ZN21PulsedFilamentMonitorD2Ev
  64              		.weak	_ZN21PulsedFilamentMonitorD1Ev
  65              		.thumb_set _ZN21PulsedFilamentMonitorD1Ev,_ZN21PulsedFilamentMonitorD2Ev
  66              		.section	.text._ZN21PulsedFilamentMonitorD0Ev,"axG",%progbits,_ZN21PulsedFilamentMonitorD5Ev,comda
  67              		.align	1
  68              		.p2align 2,,3
  69              		.weak	_ZN21PulsedFilamentMonitorD0Ev
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu softvfp
  74              		.type	_ZN21PulsedFilamentMonitorD0Ev, %function
  75              	_ZN21PulsedFilamentMonitorD0Ev:
  76              		@ args = 0, pretend = 0, frame = 0
  77              		@ frame_needed = 0, uses_anonymous_args = 0
  78 0000 10B5     		push	{r4, lr}
  79 0002 0446     		mov	r4, r0
  80 0004 044B     		ldr	r3, .L11
  81 0006 0360     		str	r3, [r0]
  82 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
  83 000c 2046     		mov	r0, r4
  84 000e 6021     		movs	r1, #96
  85 0010 FFF7FEFF 		bl	_ZdlPvj
  86 0014 2046     		mov	r0, r4
  87 0016 10BD     		pop	{r4, pc}
  88              	.L12:
  89              		.align	2
  90              	.L11:
  91 0018 08000000 		.word	.LANCHOR0+8
  92              		.size	_ZN21PulsedFilamentMonitorD0Ev, .-_ZN21PulsedFilamentMonitorD0Ev
  93              		.global	__aeabi_ui2f
  94              		.global	__aeabi_fmul
  95              		.global	__aeabi_f2d
  96              		.global	__aeabi_fcmpgt
  97              		.global	__aeabi_fdiv
  98              		.section	.text._ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb,"ax",%progbits
  99              		.align	1
 100              		.p2align 2,,3
 101              		.global	_ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu softvfp
 106              		.type	_ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, %function
 107              	_ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb:
 108              		@ args = 0, pretend = 0, frame = 24
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 111 0004 1D46     		mov	r5, r3
 112 0006 8DB0     		sub	sp, sp, #52
 113 0008 0523     		movs	r3, #5
 114 000a 0095     		str	r5, [sp]
ARM GAS  /tmp/ccmAqXSy.s 			page 3


 115 000c 0446     		mov	r4, r0
 116 000e 0F46     		mov	r7, r1
 117 0010 9046     		mov	r8, r2
 118 0012 FFF7FEFF 		bl	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb
 119 0016 0646     		mov	r6, r0
 120 0018 18B1     		cbz	r0, .L39
 121              	.L14:
 122 001a 3046     		mov	r0, r6
 123 001c 0DB0     		add	sp, sp, #52
 124              		@ sp needed
 125 001e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 126              	.L39:
 127 0022 2B46     		mov	r3, r5
 128 0024 04F11802 		add	r2, r4, #24
 129 0028 4C21     		movs	r1, #76
 130 002a 3846     		mov	r0, r7
 131 002c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 132 0030 4521     		movs	r1, #69
 133 0032 3846     		mov	r0, r7
 134 0034 2B46     		mov	r3, r5
 135 0036 04F12402 		add	r2, r4, #36
 136 003a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 137 003e 5221     		movs	r1, #82
 138 0040 3846     		mov	r0, r7
 139 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 140 0046 0028     		cmp	r0, #0
 141 0048 40F08580 		bne	.L40
 142              	.L15:
 143 004c 5321     		movs	r1, #83
 144 004e 3846     		mov	r0, r7
 145 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 146 0054 0028     		cmp	r0, #0
 147 0056 72D1     		bne	.L41
 148              	.L19:
 149 0058 95F80090 		ldrb	r9, [r5]	@ zero_extendqisi2
 150 005c B9F1000F 		cmp	r9, #0
 151 0060 56D1     		bne	.L42
 152 0062 94F82820 		ldrb	r2, [r4, #40]	@ zero_extendqisi2
 153 0066 644B     		ldr	r3, .L45
 154 0068 644D     		ldr	r5, .L45+4
 155 006a A069     		ldr	r0, [r4, #24]	@ float
 156 006c 002A     		cmp	r2, #0
 157 006e 08BF     		it	eq
 158 0070 1D46     		moveq	r5, r3
 159 0072 FFF7FEFF 		bl	__aeabi_f2d
 160 0076 0646     		mov	r6, r0
 161 0078 0F46     		mov	r7, r1
 162 007a E069     		ldr	r0, [r4, #28]	@ float
 163 007c 6049     		ldr	r1, .L45+8
 164 007e FFF7FEFF 		bl	__aeabi_fmul
 165 0082 D4F810A0 		ldr	r10, [r4, #16]
 166 0086 FFF7FEFF 		bl	lrintf
 167 008a 5D49     		ldr	r1, .L45+8
 168 008c 8346     		mov	fp, r0
 169 008e 206A     		ldr	r0, [r4, #32]	@ float
 170 0090 FFF7FEFF 		bl	__aeabi_fmul
 171 0094 FFF7FEFF 		bl	lrintf
ARM GAS  /tmp/ccmAqXSy.s 			page 4


 172 0098 0790     		str	r0, [sp, #28]
 173 009a 606A     		ldr	r0, [r4, #36]	@ float
 174 009c FFF7FEFF 		bl	__aeabi_f2d
 175 00a0 079A     		ldr	r2, [sp, #28]
 176 00a2 CDE90401 		strd	r0, [sp, #16]
 177 00a6 2B46     		mov	r3, r5
 178 00a8 0392     		str	r2, [sp, #12]
 179 00aa CDE90067 		strd	r6, [sp]
 180 00ae CDF808B0 		str	fp, [sp, #8]
 181 00b2 5246     		mov	r2, r10
 182 00b4 5349     		ldr	r1, .L45+12
 183 00b6 4046     		mov	r0, r8
 184 00b8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 185 00bc 94F85C30 		ldrb	r3, [r4, #92]	@ zero_extendqisi2
 186 00c0 012B     		cmp	r3, #1
 187 00c2 6CDD     		ble	.L43
 188 00c4 E06A     		ldr	r0, [r4, #44]
 189 00c6 FFF7FEFF 		bl	__aeabi_ui2f
 190 00ca FFF7FEFF 		bl	__aeabi_f2d
 191 00ce 0B46     		mov	r3, r1
 192 00d0 0246     		mov	r2, r0
 193 00d2 4D49     		ldr	r1, .L45+16
 194 00d4 4046     		mov	r0, r8
 195 00d6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 196 00da 94F85E30 		ldrb	r3, [r4, #94]	@ zero_extendqisi2
 197 00de 73B1     		cbz	r3, .L23
 198 00e0 A56D     		ldr	r5, [r4, #88]	@ float
 199 00e2 4FF07E51 		mov	r1, #1065353216
 200 00e6 25F00040 		bic	r0, r5, #-2147483648
 201 00ea FFF7FEFF 		bl	__aeabi_fcmpgt
 202 00ee 30B1     		cbz	r0, .L23
 203 00f0 666D     		ldr	r6, [r4, #84]	@ float
 204 00f2 4649     		ldr	r1, .L45+20
 205 00f4 3046     		mov	r0, r6
 206 00f6 FFF7FEFF 		bl	__aeabi_fcmpgt
 207 00fa 0028     		cmp	r0, #0
 208 00fc 55D1     		bne	.L44
 209              	.L23:
 210 00fe 0026     		movs	r6, #0
 211 0100 4046     		mov	r0, r8
 212 0102 4349     		ldr	r1, .L45+24
 213 0104 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 214 0108 3046     		mov	r0, r6
 215 010a 0DB0     		add	sp, sp, #52
 216              		@ sp needed
 217 010c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 218              	.L42:
 219 0110 0023     		movs	r3, #0
 220 0112 0022     		movs	r2, #0
 221 0114 0121     		movs	r1, #1
 222 0116 3046     		mov	r0, r6
 223 0118 E362     		str	r3, [r4, #44]
 224 011a 84F85E30 		strb	r3, [r4, #94]
 225 011e 84F85C30 		strb	r3, [r4, #92]
 226 0122 2363     		str	r3, [r4, #48]
 227 0124 84F85D30 		strb	r3, [r4, #93]
 228 0128 84F84230 		strb	r3, [r4, #66]
ARM GAS  /tmp/ccmAqXSy.s 			page 5


 229 012c 84F84110 		strb	r1, [r4, #65]
 230 0130 E263     		str	r2, [r4, #60]	@ float
 231 0132 A264     		str	r2, [r4, #72]	@ float
 232 0134 A263     		str	r2, [r4, #56]	@ float
 233 0136 6264     		str	r2, [r4, #68]	@ float
 234 0138 0DB0     		add	sp, sp, #52
 235              		@ sp needed
 236 013a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 237              	.L41:
 238 013e 0123     		movs	r3, #1
 239 0140 3846     		mov	r0, r7
 240 0142 2B70     		strb	r3, [r5]
 241 0144 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 242 0148 0028     		cmp	r0, #0
 243 014a D4BF     		ite	le
 244 014c 0020     		movle	r0, #0
 245 014e 0120     		movgt	r0, #1
 246 0150 84F82800 		strb	r0, [r4, #40]
 247 0154 80E7     		b	.L19
 248              	.L40:
 249 0156 0221     		movs	r1, #2
 250 0158 0123     		movs	r3, #1
 251 015a 0CAA     		add	r2, sp, #48
 252 015c 42F80C1D 		str	r1, [r2, #-12]!
 253 0160 2B70     		strb	r3, [r5]
 254 0162 0AA9     		add	r1, sp, #40
 255 0164 3346     		mov	r3, r6
 256 0166 3846     		mov	r0, r7
 257 0168 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 258 016c DDF82490 		ldr	r9, [sp, #36]
 259 0170 B9F1000F 		cmp	r9, #0
 260 0174 3FF46AAF 		beq	.L15
 261 0178 0A98     		ldr	r0, [sp, #40]
 262 017a FFF7FEFF 		bl	__aeabi_ui2f
 263 017e 2549     		ldr	r1, .L45+28
 264 0180 FFF7FEFF 		bl	__aeabi_fmul
 265 0184 B9F1010F 		cmp	r9, #1
 266 0188 E061     		str	r0, [r4, #28]	@ float
 267 018a 7FF65FAF 		bls	.L15
 268 018e 0B98     		ldr	r0, [sp, #44]
 269 0190 FFF7FEFF 		bl	__aeabi_ui2f
 270 0194 1F49     		ldr	r1, .L45+28
 271 0196 FFF7FEFF 		bl	__aeabi_fmul
 272 019a 2062     		str	r0, [r4, #32]	@ float
 273 019c 56E7     		b	.L15
 274              	.L43:
 275 019e 4046     		mov	r0, r8
 276 01a0 1D49     		ldr	r1, .L45+32
 277 01a2 4E46     		mov	r6, r9
 278 01a4 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 279 01a8 37E7     		b	.L14
 280              	.L44:
 281 01aa 1549     		ldr	r1, .L45+8
 282 01ac E06C     		ldr	r0, [r4, #76]	@ float
 283 01ae FFF7FEFF 		bl	__aeabi_fmul
 284 01b2 FFF7FEFF 		bl	lrintf
 285 01b6 1249     		ldr	r1, .L45+8
ARM GAS  /tmp/ccmAqXSy.s 			page 6


 286 01b8 8346     		mov	fp, r0
 287 01ba 206D     		ldr	r0, [r4, #80]	@ float
 288 01bc FFF7FEFF 		bl	__aeabi_fmul
 289 01c0 FFF7FEFF 		bl	lrintf
 290 01c4 2946     		mov	r1, r5
 291 01c6 8246     		mov	r10, r0
 292 01c8 3046     		mov	r0, r6
 293 01ca FFF7FEFF 		bl	__aeabi_fdiv
 294 01ce FFF7FEFF 		bl	__aeabi_f2d
 295 01d2 0646     		mov	r6, r0
 296 01d4 606D     		ldr	r0, [r4, #84]	@ float
 297 01d6 0F46     		mov	r7, r1
 298 01d8 FFF7FEFF 		bl	__aeabi_f2d
 299 01dc 3246     		mov	r2, r6
 300 01de CDE90201 		strd	r0, [sp, #8]
 301 01e2 CDF800B0 		str	fp, [sp]
 302 01e6 CDF804A0 		str	r10, [sp, #4]
 303 01ea 3B46     		mov	r3, r7
 304 01ec 4046     		mov	r0, r8
 305 01ee 0B49     		ldr	r1, .L45+36
 306 01f0 4E46     		mov	r6, r9
 307 01f2 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 308 01f6 10E7     		b	.L14
 309              	.L46:
 310              		.align	2
 311              	.L45:
 312 01f8 08000000 		.word	.LC1
 313 01fc 00000000 		.word	.LC0
 314 0200 0000C842 		.word	1120403456
 315 0204 14000000 		.word	.LC2
 316 0208 B0000000 		.word	.LC4
 317 020c 0000A041 		.word	1101004800
 318 0210 20010000 		.word	.LC6
 319 0214 0AD7233C 		.word	1008981770
 320 0218 9C000000 		.word	.LC3
 321 021c C8000000 		.word	.LC5
 322              		.size	_ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, .-_ZN21PulsedFilamentMoni
 323              		.section	.text._ZN21PulsedFilamentMonitorC2Eji,"ax",%progbits
 324              		.align	1
 325              		.p2align 2,,3
 326              		.global	_ZN21PulsedFilamentMonitorC2Eji
 327              		.syntax unified
 328              		.thumb
 329              		.thumb_func
 330              		.fpu softvfp
 331              		.type	_ZN21PulsedFilamentMonitorC2Eji, %function
 332              	_ZN21PulsedFilamentMonitorC2Eji:
 333              		@ args = 0, pretend = 0, frame = 0
 334              		@ frame_needed = 0, uses_anonymous_args = 0
 335 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 336 0002 FF26     		movs	r6, #255
 337 0004 0024     		movs	r4, #0
 338 0006 0125     		movs	r5, #1
 339 0008 4FF07E5E 		mov	lr, #1065353216
 340 000c C260     		str	r2, [r0, #12]
 341 000e 0022     		movs	r2, #0
 342 0010 DFF84CC0 		ldr	ip, .L49+12
ARM GAS  /tmp/ccmAqXSy.s 			page 7


 343 0014 8160     		str	r1, [r0, #8]
 344 0016 0F4F     		ldr	r7, .L49
 345 0018 0675     		strb	r6, [r0, #20]
 346 001a 0F49     		ldr	r1, .L49+4
 347 001c 0F4E     		ldr	r6, .L49+8
 348 001e C0F800C0 		str	ip, [r0]
 349 0022 C0F818E0 		str	lr, [r0, #24]	@ float
 350 0026 C761     		str	r7, [r0, #28]	@ float
 351 0028 0662     		str	r6, [r0, #32]	@ float
 352 002a 4162     		str	r1, [r0, #36]	@ float
 353 002c 80F84150 		strb	r5, [r0, #65]
 354 0030 80F82840 		strb	r4, [r0, #40]
 355 0034 C462     		str	r4, [r0, #44]
 356 0036 80F85E40 		strb	r4, [r0, #94]
 357 003a 80F85C40 		strb	r4, [r0, #92]
 358 003e 0463     		str	r4, [r0, #48]
 359 0040 80F85D40 		strb	r4, [r0, #93]
 360 0044 80F84240 		strb	r4, [r0, #66]
 361 0048 C263     		str	r2, [r0, #60]	@ float
 362 004a 8264     		str	r2, [r0, #72]	@ float
 363 004c 8263     		str	r2, [r0, #56]	@ float
 364 004e 4264     		str	r2, [r0, #68]	@ float
 365 0050 F0BD     		pop	{r4, r5, r6, r7, pc}
 366              	.L50:
 367 0052 00BF     		.align	2
 368              	.L49:
 369 0054 9A99193F 		.word	1058642330
 370 0058 0000A040 		.word	1084227584
 371 005c CDCCCC3F 		.word	1070386381
 372 0060 08000000 		.word	.LANCHOR0+8
 373              		.size	_ZN21PulsedFilamentMonitorC2Eji, .-_ZN21PulsedFilamentMonitorC2Eji
 374              		.global	_ZN21PulsedFilamentMonitorC1Eji
 375              		.thumb_set _ZN21PulsedFilamentMonitorC1Eji,_ZN21PulsedFilamentMonitorC2Eji
 376              		.section	.text._ZN21PulsedFilamentMonitor4InitEv,"ax",%progbits
 377              		.align	1
 378              		.p2align 2,,3
 379              		.global	_ZN21PulsedFilamentMonitor4InitEv
 380              		.syntax unified
 381              		.thumb
 382              		.thumb_func
 383              		.fpu softvfp
 384              		.type	_ZN21PulsedFilamentMonitor4InitEv, %function
 385              	_ZN21PulsedFilamentMonitor4InitEv:
 386              		@ args = 0, pretend = 0, frame = 0
 387              		@ frame_needed = 0, uses_anonymous_args = 0
 388              		@ link register save eliminated.
 389 0000 0023     		movs	r3, #0
 390 0002 0022     		movs	r2, #0
 391 0004 0121     		movs	r1, #1
 392 0006 C362     		str	r3, [r0, #44]
 393 0008 80F84110 		strb	r1, [r0, #65]
 394 000c 80F85E30 		strb	r3, [r0, #94]
 395 0010 80F85C30 		strb	r3, [r0, #92]
 396 0014 0363     		str	r3, [r0, #48]
 397 0016 80F85D30 		strb	r3, [r0, #93]
 398 001a 80F84230 		strb	r3, [r0, #66]
 399 001e C263     		str	r2, [r0, #60]	@ float
ARM GAS  /tmp/ccmAqXSy.s 			page 8


 400 0020 8264     		str	r2, [r0, #72]	@ float
 401 0022 8263     		str	r2, [r0, #56]	@ float
 402 0024 4264     		str	r2, [r0, #68]	@ float
 403 0026 7047     		bx	lr
 404              		.size	_ZN21PulsedFilamentMonitor4InitEv, .-_ZN21PulsedFilamentMonitor4InitEv
 405              		.section	.text._ZN21PulsedFilamentMonitor5ResetEv,"ax",%progbits
 406              		.align	1
 407              		.p2align 2,,3
 408              		.global	_ZN21PulsedFilamentMonitor5ResetEv
 409              		.syntax unified
 410              		.thumb
 411              		.thumb_func
 412              		.fpu softvfp
 413              		.type	_ZN21PulsedFilamentMonitor5ResetEv, %function
 414              	_ZN21PulsedFilamentMonitor5ResetEv:
 415              		@ args = 0, pretend = 0, frame = 0
 416              		@ frame_needed = 0, uses_anonymous_args = 0
 417              		@ link register save eliminated.
 418 0000 0023     		movs	r3, #0
 419 0002 0022     		movs	r2, #0
 420 0004 0121     		movs	r1, #1
 421 0006 C363     		str	r3, [r0, #60]	@ float
 422 0008 80F84110 		strb	r1, [r0, #65]
 423 000c 8364     		str	r3, [r0, #72]	@ float
 424 000e 8363     		str	r3, [r0, #56]	@ float
 425 0010 4364     		str	r3, [r0, #68]	@ float
 426 0012 80F85D20 		strb	r2, [r0, #93]
 427 0016 80F84220 		strb	r2, [r0, #66]
 428 001a 7047     		bx	lr
 429              		.size	_ZN21PulsedFilamentMonitor5ResetEv, .-_ZN21PulsedFilamentMonitor5ResetEv
 430              		.global	__aeabi_fadd
 431              		.section	.text._ZN21PulsedFilamentMonitor4PollEv,"ax",%progbits
 432              		.align	1
 433              		.p2align 2,,3
 434              		.global	_ZN21PulsedFilamentMonitor4PollEv
 435              		.syntax unified
 436              		.thumb
 437              		.thumb_func
 438              		.fpu softvfp
 439              		.type	_ZN21PulsedFilamentMonitor4PollEv, %function
 440              	_ZN21PulsedFilamentMonitor4PollEv:
 441              		@ args = 0, pretend = 0, frame = 0
 442              		@ frame_needed = 0, uses_anonymous_args = 0
 443 0000 38B5     		push	{r3, r4, r5, lr}
 444 0002 0446     		mov	r4, r0
 445              		.syntax unified
 446              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 447 0004 72B6     		cpsid i
 448              	@ 0 "" 2
 449              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 450 0006 BFF35F8F 		dmb
 451              	@ 0 "" 2
 452              		.thumb
 453              		.syntax unified
 454 000a 0022     		movs	r2, #0
 455 000c 0121     		movs	r1, #1
 456 000e 134B     		ldr	r3, .L61
ARM GAS  /tmp/ccmAqXSy.s 			page 9


 457 0010 C06A     		ldr	r0, [r0, #44]
 458 0012 1A70     		strb	r2, [r3]
 459 0014 E262     		str	r2, [r4, #44]
 460 0016 1970     		strb	r1, [r3]
 461              		.syntax unified
 462              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 463 0018 BFF35F8F 		dmb
 464              	@ 0 "" 2
 465              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 466 001c 62B6     		cpsie i
 467              	@ 0 "" 2
 468              		.thumb
 469              		.syntax unified
 470 001e FFF7FEFF 		bl	__aeabi_ui2f
 471 0022 E16B     		ldr	r1, [r4, #60]	@ float
 472 0024 FFF7FEFF 		bl	__aeabi_fadd
 473 0028 94F84230 		ldrb	r3, [r4, #66]	@ zero_extendqisi2
 474 002c E063     		str	r0, [r4, #60]	@ float
 475 002e 3BB1     		cbz	r3, .L53
 476 0030 94F84030 		ldrb	r3, [r4, #64]	@ zero_extendqisi2
 477 0034 2BB1     		cbz	r3, .L60
 478              	.L55:
 479 0036 0022     		movs	r2, #0
 480 0038 0023     		movs	r3, #0
 481 003a 84F84220 		strb	r2, [r4, #66]
 482 003e E363     		str	r3, [r4, #60]	@ float
 483              	.L53:
 484 0040 38BD     		pop	{r3, r4, r5, pc}
 485              	.L60:
 486 0042 0546     		mov	r5, r0
 487 0044 616B     		ldr	r1, [r4, #52]	@ float
 488 0046 606C     		ldr	r0, [r4, #68]	@ float
 489 0048 FFF7FEFF 		bl	__aeabi_fadd
 490 004c 2946     		mov	r1, r5
 491 004e 6064     		str	r0, [r4, #68]	@ float
 492 0050 A06C     		ldr	r0, [r4, #72]	@ float
 493 0052 FFF7FEFF 		bl	__aeabi_fadd
 494 0056 A064     		str	r0, [r4, #72]	@ float
 495 0058 EDE7     		b	.L55
 496              	.L62:
 497 005a 00BF     		.align	2
 498              	.L61:
 499 005c 00000000 		.word	g_interrupt_enabled
 500              		.size	_ZN21PulsedFilamentMonitor4PollEv, .-_ZN21PulsedFilamentMonitor4PollEv
 501              		.section	.text._ZN21PulsedFilamentMonitor5ClearEb,"ax",%progbits
 502              		.align	1
 503              		.p2align 2,,3
 504              		.global	_ZN21PulsedFilamentMonitor5ClearEb
 505              		.syntax unified
 506              		.thumb
 507              		.thumb_func
 508              		.fpu softvfp
 509              		.type	_ZN21PulsedFilamentMonitor5ClearEb, %function
 510              	_ZN21PulsedFilamentMonitor5ClearEb:
 511              		@ args = 0, pretend = 0, frame = 0
 512              		@ frame_needed = 0, uses_anonymous_args = 0
 513 0000 10B5     		push	{r4, lr}
ARM GAS  /tmp/ccmAqXSy.s 			page 10


 514 0002 0446     		mov	r4, r0
 515 0004 FFF7FEFF 		bl	_ZN21PulsedFilamentMonitor4PollEv
 516 0008 0023     		movs	r3, #0
 517 000a 0020     		movs	r0, #0
 518 000c 0122     		movs	r2, #1
 519 000e E363     		str	r3, [r4, #60]	@ float
 520 0010 84F84120 		strb	r2, [r4, #65]
 521 0014 A364     		str	r3, [r4, #72]	@ float
 522 0016 A363     		str	r3, [r4, #56]	@ float
 523 0018 6364     		str	r3, [r4, #68]	@ float
 524 001a 84F85D00 		strb	r0, [r4, #93]
 525 001e 84F84200 		strb	r0, [r4, #66]
 526 0022 10BD     		pop	{r4, pc}
 527              		.size	_ZN21PulsedFilamentMonitor5ClearEb, .-_ZN21PulsedFilamentMonitor5ClearEb
 528              		.global	__aeabi_fsub
 529              		.section	.text._ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej,"ax",%progbits
 530              		.align	1
 531              		.p2align 2,,3
 532              		.global	_ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej
 533              		.syntax unified
 534              		.thumb
 535              		.thumb_func
 536              		.fpu softvfp
 537              		.type	_ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej, %function
 538              	_ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej:
 539              		@ args = 0, pretend = 0, frame = 0
 540              		@ frame_needed = 0, uses_anonymous_args = 0
 541 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 542 0004 0446     		mov	r4, r0
 543 0006 85B0     		sub	sp, sp, #20
 544 0008 0E46     		mov	r6, r1
 545 000a 1746     		mov	r7, r2
 546 000c FFF7FEFF 		bl	_ZN21PulsedFilamentMonitor4PollEv
 547 0010 94F85C20 		ldrb	r2, [r4, #92]	@ zero_extendqisi2
 548 0014 3C4B     		ldr	r3, .L84
 549 0016 3D49     		ldr	r1, .L84+4
 550 0018 E06A     		ldr	r0, [r4, #44]
 551 001a 012A     		cmp	r2, #1
 552 001c D8BF     		it	le
 553 001e 1946     		movle	r1, r3
 554 0020 0291     		str	r1, [sp, #8]
 555 0022 FFF7FEFF 		bl	__aeabi_ui2f
 556 0026 FFF7FEFF 		bl	__aeabi_f2d
 557 002a 394D     		ldr	r5, .L84+8
 558 002c CDE90001 		strd	r0, [sp]
 559 0030 3B46     		mov	r3, r7
 560 0032 2868     		ldr	r0, [r5]	@ unaligned
 561 0034 3146     		mov	r1, r6
 562 0036 374A     		ldr	r2, .L84+12
 563 0038 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 564 003c 94F85E30 		ldrb	r3, [r4, #94]	@ zero_extendqisi2
 565 0040 002B     		cmp	r3, #0
 566 0042 4AD0     		beq	.L67
 567 0044 A76D     		ldr	r7, [r4, #88]	@ float
 568 0046 4FF07E51 		mov	r1, #1065353216
 569 004a 27F00040 		bic	r0, r7, #-2147483648
 570 004e FFF7FEFF 		bl	__aeabi_fcmpgt
ARM GAS  /tmp/ccmAqXSy.s 			page 11


 571 0052 0028     		cmp	r0, #0
 572 0054 41D0     		beq	.L67
 573 0056 D4F85480 		ldr	r8, [r4, #84]	@ float
 574 005a 2F49     		ldr	r1, .L84+16
 575 005c 4046     		mov	r0, r8
 576 005e FFF7FEFF 		bl	__aeabi_fcmpgt
 577 0062 0028     		cmp	r0, #0
 578 0064 39D0     		beq	.L67
 579 0066 3946     		mov	r1, r7
 580 0068 4046     		mov	r0, r8
 581 006a FFF7FEFF 		bl	__aeabi_fdiv
 582 006e 0146     		mov	r1, r0
 583 0070 8046     		mov	r8, r0
 584 0072 4FF07E50 		mov	r0, #1065353216
 585 0076 FFF7FEFF 		bl	__aeabi_fdiv
 586 007a 0021     		movs	r1, #0
 587 007c 0746     		mov	r7, r0
 588 007e FFF7FEFF 		bl	__aeabi_fcmpgt
 589 0082 3946     		mov	r1, r7
 590 0084 0028     		cmp	r0, #0
 591 0086 30D0     		beq	.L81
 592 0088 206D     		ldr	r0, [r4, #80]	@ float
 593 008a FFF7FEFF 		bl	__aeabi_fsub
 594 008e 2349     		ldr	r1, .L84+20
 595 0090 FFF7FEFF 		bl	__aeabi_fmul
 596 0094 3946     		mov	r1, r7
 597 0096 FFF7FEFF 		bl	__aeabi_fdiv
 598 009a FFF7FEFF 		bl	lrintf
 599 009e 8146     		mov	r9, r0
 600 00a0 E16C     		ldr	r1, [r4, #76]	@ float
 601              	.L72:
 602 00a2 3846     		mov	r0, r7
 603 00a4 FFF7FEFF 		bl	__aeabi_fsub
 604 00a8 1C49     		ldr	r1, .L84+20
 605 00aa FFF7FEFF 		bl	__aeabi_fmul
 606 00ae 3946     		mov	r1, r7
 607 00b0 FFF7FEFF 		bl	__aeabi_fdiv
 608 00b4 FFF7FEFF 		bl	lrintf
 609 00b8 0390     		str	r0, [sp, #12]
 610 00ba 4046     		mov	r0, r8
 611 00bc CDF80890 		str	r9, [sp, #8]
 612 00c0 FFF7FEFF 		bl	__aeabi_f2d
 613 00c4 2B68     		ldr	r3, [r5]
 614 00c6 CDE90001 		strd	r0, [sp]
 615 00ca 154A     		ldr	r2, .L84+24
 616 00cc 1846     		mov	r0, r3
 617 00ce 3146     		mov	r1, r6
 618 00d0 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 619 00d4 05B0     		add	sp, sp, #20
 620              		@ sp needed
 621 00d6 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 622              	.L67:
 623 00da 3146     		mov	r1, r6
 624 00dc 2868     		ldr	r0, [r5]
 625 00de 114A     		ldr	r2, .L84+28
 626 00e0 05B0     		add	sp, sp, #20
 627              		@ sp needed
ARM GAS  /tmp/ccmAqXSy.s 			page 12


 628 00e2 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 629 00e6 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 630              	.L81:
 631 00ea E06C     		ldr	r0, [r4, #76]	@ float
 632 00ec FFF7FEFF 		bl	__aeabi_fsub
 633 00f0 0A49     		ldr	r1, .L84+20
 634 00f2 FFF7FEFF 		bl	__aeabi_fmul
 635 00f6 3946     		mov	r1, r7
 636 00f8 FFF7FEFF 		bl	__aeabi_fdiv
 637 00fc FFF7FEFF 		bl	lrintf
 638 0100 216D     		ldr	r1, [r4, #80]	@ float
 639 0102 8146     		mov	r9, r0
 640 0104 CDE7     		b	.L72
 641              	.L85:
 642 0106 00BF     		.align	2
 643              	.L84:
 644 0108 9C000000 		.word	.LC3
 645 010c 00000000 		.word	.LC7
 646 0110 00000000 		.word	reprap
 647 0114 04000000 		.word	.LC8
 648 0118 0000A041 		.word	1101004800
 649 011c 0000C842 		.word	1120403456
 650 0120 2C000000 		.word	.LC9
 651 0124 5C000000 		.word	.LC10
 652              		.size	_ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej, .-_ZN21PulsedFilamentMonitor11Diagno
 653              		.section	.text._ZNK21PulsedFilamentMonitor18GetCurrentPositionEv,"ax",%progbits
 654              		.align	1
 655              		.p2align 2,,3
 656              		.global	_ZNK21PulsedFilamentMonitor18GetCurrentPositionEv
 657              		.syntax unified
 658              		.thumb
 659              		.thumb_func
 660              		.fpu softvfp
 661              		.type	_ZNK21PulsedFilamentMonitor18GetCurrentPositionEv, %function
 662              	_ZNK21PulsedFilamentMonitor18GetCurrentPositionEv:
 663              		@ args = 0, pretend = 0, frame = 0
 664              		@ frame_needed = 0, uses_anonymous_args = 0
 665 0000 08B5     		push	{r3, lr}
 666 0002 C06A     		ldr	r0, [r0, #44]
 667 0004 FFF7FEFF 		bl	__aeabi_ui2f
 668 0008 08BD     		pop	{r3, pc}
 669              		.size	_ZNK21PulsedFilamentMonitor18GetCurrentPositionEv, .-_ZNK21PulsedFilamentMonitor18GetCurrent
 670              		.global	__aeabi_fcmpge
 671              		.global	__aeabi_fcmplt
 672 000a 00BF     		.section	.text._ZN21PulsedFilamentMonitor13CheckFilamentEffb,"ax",%progbits
 673              		.align	1
 674              		.p2align 2,,3
 675              		.global	_ZN21PulsedFilamentMonitor13CheckFilamentEffb
 676              		.syntax unified
 677              		.thumb
 678              		.thumb_func
 679              		.fpu softvfp
 680              		.type	_ZN21PulsedFilamentMonitor13CheckFilamentEffb, %function
 681              	_ZN21PulsedFilamentMonitor13CheckFilamentEffb:
 682              		@ args = 0, pretend = 0, frame = 0
 683              		@ frame_needed = 0, uses_anonymous_args = 0
 684 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
ARM GAS  /tmp/ccmAqXSy.s 			page 13


 685 0004 464D     		ldr	r5, .L128
 686 0006 0446     		mov	r4, r0
 687 0008 686C     		ldr	r0, [r5, #68]
 688 000a 1746     		mov	r7, r2
 689 000c 8204     		lsls	r2, r0, #18
 690 000e 85B0     		sub	sp, sp, #20
 691 0010 0E46     		mov	r6, r1
 692 0012 16D5     		bpl	.L89
 693 0014 0846     		mov	r0, r1
 694 0016 1D46     		mov	r5, r3
 695 0018 FFF7FEFF 		bl	__aeabi_f2d
 696 001c 8046     		mov	r8, r0
 697 001e 3846     		mov	r0, r7
 698 0020 8946     		mov	r9, r1
 699 0022 FFF7FEFF 		bl	__aeabi_f2d
 700 0026 3F4A     		ldr	r2, .L128+4
 701 0028 3F4B     		ldr	r3, .L128+8
 702 002a CDE90001 		strd	r0, [sp]
 703 002e 002D     		cmp	r5, #0
 704 0030 0CBF     		ite	eq
 705 0032 1546     		moveq	r5, r2
 706 0034 1D46     		movne	r5, r3
 707 0036 3D48     		ldr	r0, .L128+12
 708 0038 4246     		mov	r2, r8
 709 003a 4B46     		mov	r3, r9
 710 003c 0295     		str	r5, [sp, #8]
 711 003e FFF7FEFF 		bl	debugPrintf
 712              	.L89:
 713 0042 A169     		ldr	r1, [r4, #24]	@ float
 714 0044 3846     		mov	r0, r7
 715 0046 FFF7FEFF 		bl	__aeabi_fmul
 716 004a 94F85D50 		ldrb	r5, [r4, #93]	@ zero_extendqisi2
 717 004e 8046     		mov	r8, r0
 718 0050 9DB9     		cbnz	r5, .L91
 719 0052 0122     		movs	r2, #1
 720 0054 3146     		mov	r1, r6
 721 0056 84F85D20 		strb	r2, [r4, #93]
 722 005a FFF7FEFF 		bl	__aeabi_fdiv
 723 005e 8046     		mov	r8, r0
 724              	.L92:
 725 0060 0123     		movs	r3, #1
 726 0062 2846     		mov	r0, r5
 727 0064 C4F85080 		str	r8, [r4, #80]	@ float
 728 0068 C4F84C80 		str	r8, [r4, #76]	@ float
 729 006c 6665     		str	r6, [r4, #84]	@ float
 730 006e A765     		str	r7, [r4, #88]	@ float
 731 0070 84F85E30 		strb	r3, [r4, #94]
 732 0074 05B0     		add	sp, sp, #20
 733              		@ sp needed
 734 0076 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 735              	.L91:
 736 007a 94F82850 		ldrb	r5, [r4, #40]	@ zero_extendqisi2
 737 007e 1DBB     		cbnz	r5, .L126
 738              	.L93:
 739 0080 4046     		mov	r0, r8
 740 0082 3146     		mov	r1, r6
 741 0084 FFF7FEFF 		bl	__aeabi_fdiv
ARM GAS  /tmp/ccmAqXSy.s 			page 14


 742 0088 94F85E30 		ldrb	r3, [r4, #94]	@ zero_extendqisi2
 743 008c 8046     		mov	r8, r0
 744 008e 002B     		cmp	r3, #0
 745 0090 E6D0     		beq	.L92
 746 0092 E16C     		ldr	r1, [r4, #76]	@ float
 747 0094 FFF7FEFF 		bl	__aeabi_fcmplt
 748 0098 08B1     		cbz	r0, .L100
 749 009a C4F84C80 		str	r8, [r4, #76]	@ float
 750              	.L100:
 751 009e 216D     		ldr	r1, [r4, #80]	@ float
 752 00a0 4046     		mov	r0, r8
 753 00a2 FFF7FEFF 		bl	__aeabi_fcmpgt
 754 00a6 08B1     		cbz	r0, .L102
 755 00a8 C4F85080 		str	r8, [r4, #80]	@ float
 756              	.L102:
 757 00ac 3146     		mov	r1, r6
 758 00ae 606D     		ldr	r0, [r4, #84]	@ float
 759 00b0 FFF7FEFF 		bl	__aeabi_fadd
 760 00b4 3946     		mov	r1, r7
 761 00b6 6065     		str	r0, [r4, #84]	@ float
 762 00b8 A06D     		ldr	r0, [r4, #88]	@ float
 763 00ba FFF7FEFF 		bl	__aeabi_fadd
 764 00be A065     		str	r0, [r4, #88]	@ float
 765 00c0 2846     		mov	r0, r5
 766 00c2 05B0     		add	sp, sp, #20
 767              		@ sp needed
 768 00c4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 769              	.L126:
 770 00c8 0021     		movs	r1, #0
 771 00ca 3046     		mov	r0, r6
 772 00cc FFF7FEFF 		bl	__aeabi_fcmpge
 773 00d0 50B1     		cbz	r0, .L120
 774 00d2 E169     		ldr	r1, [r4, #28]	@ float
 775 00d4 3046     		mov	r0, r6
 776 00d6 FFF7FEFF 		bl	__aeabi_fmul
 777 00da 0146     		mov	r1, r0
 778 00dc 4046     		mov	r0, r8
 779 00de FFF7FEFF 		bl	__aeabi_fcmplt
 780 00e2 80B1     		cbz	r0, .L127
 781              	.L108:
 782 00e4 0225     		movs	r5, #2
 783 00e6 CBE7     		b	.L93
 784              	.L120:
 785 00e8 216A     		ldr	r1, [r4, #32]	@ float
 786 00ea 3046     		mov	r0, r6
 787 00ec FFF7FEFF 		bl	__aeabi_fmul
 788 00f0 0146     		mov	r1, r0
 789 00f2 4046     		mov	r0, r8
 790 00f4 FFF7FEFF 		bl	__aeabi_fcmplt
 791 00f8 0028     		cmp	r0, #0
 792 00fa F3D1     		bne	.L108
 793 00fc E169     		ldr	r1, [r4, #28]	@ float
 794 00fe 3046     		mov	r0, r6
 795 0100 FFF7FEFF 		bl	__aeabi_fmul
 796 0104 03E0     		b	.L98
 797              	.L127:
 798 0106 216A     		ldr	r1, [r4, #32]	@ float
ARM GAS  /tmp/ccmAqXSy.s 			page 15


 799 0108 3046     		mov	r0, r6
 800 010a FFF7FEFF 		bl	__aeabi_fmul
 801              	.L98:
 802 010e 4146     		mov	r1, r8
 803 0110 FFF7FEFF 		bl	__aeabi_fcmplt
 804 0114 0028     		cmp	r0, #0
 805 0116 14BF     		ite	ne
 806 0118 0325     		movne	r5, #3
 807 011a 0025     		moveq	r5, #0
 808 011c B0E7     		b	.L93
 809              	.L129:
 810 011e 00BF     		.align	2
 811              	.L128:
 812 0120 00000000 		.word	reprap
 813 0124 0C000000 		.word	.LC12
 814 0128 00000000 		.word	.LC11
 815 012c 10000000 		.word	.LC13
 816              		.size	_ZN21PulsedFilamentMonitor13CheckFilamentEffb, .-_ZN21PulsedFilamentMonitor13CheckFilamentEf
 817              		.section	.text._ZN21PulsedFilamentMonitor5CheckEbbbf,"ax",%progbits
 818              		.align	1
 819              		.p2align 2,,3
 820              		.global	_ZN21PulsedFilamentMonitor5CheckEbbbf
 821              		.syntax unified
 822              		.thumb
 823              		.thumb_func
 824              		.fpu softvfp
 825              		.type	_ZN21PulsedFilamentMonitor5CheckEbbbf, %function
 826              	_ZN21PulsedFilamentMonitor5CheckEbbbf:
 827              		@ args = 4, pretend = 0, frame = 0
 828              		@ frame_needed = 0, uses_anonymous_args = 0
 829 0000 70B5     		push	{r4, r5, r6, lr}
 830 0002 0446     		mov	r4, r0
 831 0004 0D46     		mov	r5, r1
 832 0006 1E46     		mov	r6, r3
 833 0008 6AB3     		cbz	r2, .L131
 834 000a 0123     		movs	r3, #1
 835 000c 80F84130 		strb	r3, [r0, #65]
 836              	.L132:
 837 0010 6EB1     		cbz	r6, .L133
 838 0012 0126     		movs	r6, #1
 839 0014 0020     		movs	r0, #0
 840 0016 0023     		movs	r3, #0
 841 0018 94F84110 		ldrb	r1, [r4, #65]	@ zero_extendqisi2
 842 001c A26B     		ldr	r2, [r4, #56]	@ float
 843 001e 84F84260 		strb	r6, [r4, #66]
 844 0022 84F84100 		strb	r0, [r4, #65]
 845 0026 84F84010 		strb	r1, [r4, #64]
 846 002a 6263     		str	r2, [r4, #52]	@ float
 847 002c A363     		str	r3, [r4, #56]	@ float
 848              	.L133:
 849 002e 2046     		mov	r0, r4
 850 0030 FFF7FEFF 		bl	_ZN21PulsedFilamentMonitor4PollEv
 851 0034 ADB1     		cbz	r5, .L138
 852 0036 656C     		ldr	r5, [r4, #68]	@ float
 853 0038 666A     		ldr	r6, [r4, #36]	@ float
 854 003a 2846     		mov	r0, r5
 855 003c 3146     		mov	r1, r6
ARM GAS  /tmp/ccmAqXSy.s 			page 16


 856 003e FFF7FEFF 		bl	__aeabi_fcmpge
 857 0042 0028     		cmp	r0, #0
 858 0044 30D1     		bne	.L149
 859 0046 2846     		mov	r0, r5
 860 0048 A16B     		ldr	r1, [r4, #56]	@ float
 861 004a FFF7FEFF 		bl	__aeabi_fadd
 862 004e 3146     		mov	r1, r6
 863 0050 0546     		mov	r5, r0
 864 0052 3046     		mov	r0, r6
 865 0054 FFF7FEFF 		bl	__aeabi_fadd
 866 0058 0146     		mov	r1, r0
 867 005a 2846     		mov	r0, r5
 868 005c FFF7FEFF 		bl	__aeabi_fcmpge
 869 0060 38B9     		cbnz	r0, .L150
 870              	.L138:
 871 0062 0020     		movs	r0, #0
 872 0064 70BD     		pop	{r4, r5, r6, pc}
 873              	.L131:
 874 0066 806B     		ldr	r0, [r0, #56]	@ float
 875 0068 0499     		ldr	r1, [sp, #16]	@ float
 876 006a FFF7FEFF 		bl	__aeabi_fadd
 877 006e A063     		str	r0, [r4, #56]	@ float
 878 0070 CEE7     		b	.L132
 879              	.L150:
 880 0072 FFF7FEFF 		bl	millis
 881 0076 236B     		ldr	r3, [r4, #48]
 882 0078 C01A     		subs	r0, r0, r3
 883 007a DC28     		cmp	r0, #220
 884 007c F1D9     		bls	.L138
 885 007e E16B     		ldr	r1, [r4, #60]	@ float
 886 0080 A06C     		ldr	r0, [r4, #72]	@ float
 887 0082 FFF7FEFF 		bl	__aeabi_fadd
 888 0086 A16B     		ldr	r1, [r4, #56]	@ float
 889 0088 0546     		mov	r5, r0
 890 008a 606C     		ldr	r0, [r4, #68]	@ float
 891 008c FFF7FEFF 		bl	__aeabi_fadd
 892 0090 2A46     		mov	r2, r5
 893 0092 0146     		mov	r1, r0
 894 0094 0123     		movs	r3, #1
 895 0096 2046     		mov	r0, r4
 896 0098 FFF7FEFF 		bl	_ZN21PulsedFilamentMonitor13CheckFilamentEffb
 897 009c 0023     		movs	r3, #0
 898 009e E363     		str	r3, [r4, #60]	@ float
 899 00a0 A364     		str	r3, [r4, #72]	@ float
 900 00a2 A363     		str	r3, [r4, #56]	@ float
 901 00a4 6364     		str	r3, [r4, #68]	@ float
 902 00a6 70BD     		pop	{r4, r5, r6, pc}
 903              	.L149:
 904 00a8 2946     		mov	r1, r5
 905 00aa 0023     		movs	r3, #0
 906 00ac A26C     		ldr	r2, [r4, #72]	@ float
 907 00ae 2046     		mov	r0, r4
 908 00b0 FFF7FEFF 		bl	_ZN21PulsedFilamentMonitor13CheckFilamentEffb
 909 00b4 0023     		movs	r3, #0
 910 00b6 A364     		str	r3, [r4, #72]	@ float
 911 00b8 6364     		str	r3, [r4, #68]	@ float
 912 00ba 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  /tmp/ccmAqXSy.s 			page 17


 913              		.size	_ZN21PulsedFilamentMonitor5CheckEbbbf, .-_ZN21PulsedFilamentMonitor5CheckEbbbf
 914              		.global	_ZTV21PulsedFilamentMonitor
 915              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 916              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 917              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 918              	_ZL28cpu_irq_prev_interrupt_state:
 919 0000 00       		.space	1
 920              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 921              		.align	2
 922              		.type	_ZL32cpu_irq_critical_section_counter, %object
 923              		.size	_ZL32cpu_irq_critical_section_counter, 4
 924              	_ZL32cpu_irq_critical_section_counter:
 925 0000 00000000 		.space	4
 926              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 927              		.align	2
 928              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 929              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 930              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 931 0000 00000000 		.space	4
 932              		.section	.rodata._ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej.str1.4,"aMS",%progbits,1
 933              		.align	2
 934              	.LC7:
 935 0000 6F6B00   		.ascii	"ok\000"
 936 0003 00       		.space	1
 937              	.LC8:
 938 0004 45787472 		.ascii	"Extruder %u sensor: position %.2f, %s, \000"
 938      75646572 
 938      20257520 
 938      73656E73 
 938      6F723A20 
 939              	.LC9:
 940 002c 6D656173 		.ascii	"measured sensitivity %.3fmm/pulse +%d%% -%d%%\012\000"
 940      75726564 
 940      2073656E 
 940      73697469 
 940      76697479 
 941 005b 00       		.space	1
 942              	.LC10:
 943 005c 6E6F2063 		.ascii	"no calibration data\012\000"
 943      616C6962 
 943      72617469 
 943      6F6E2064 
 943      6174610A 
 944              		.section	.rodata._ZN21PulsedFilamentMonitor13CheckFilamentEffb.str1.4,"aMS",%progbits,1
 945              		.align	2
 946              	.LC11:
 947 0000 206F7665 		.ascii	" overdue\000"
 947      72647565 
 947      00
 948 0009 000000   		.space	3
 949              	.LC12:
 950 000c 00       		.ascii	"\000"
 951 000d 000000   		.space	3
 952              	.LC13:
 953 0010 45787472 		.ascii	"Extr req %.3f meas %.3f%s\012\000"
 953      20726571 
 953      20252E33 
ARM GAS  /tmp/ccmAqXSy.s 			page 18


 953      66206D65 
 953      61732025 
 954              		.section	.rodata._ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb.str1.4,"aMS",%p
 955              		.align	2
 956              	.LC0:
 957 0000 656E6162 		.ascii	"enabled\000"
 957      6C656400 
 958              	.LC1:
 959 0008 64697361 		.ascii	"disabled\000"
 959      626C6564 
 959      00
 960 0011 000000   		.space	3
 961              	.LC2:
 962 0014 50756C73 		.ascii	"Pulse-type filament monitor on endstop input %u, %s"
 962      652D7479 
 962      70652066 
 962      696C616D 
 962      656E7420 
 963 0047 2C207365 		.ascii	", sensitivity %.2fmm/pulse, allowed movement %ld%% "
 963      6E736974 
 963      69766974 
 963      7920252E 
 963      32666D6D 
 964 007a 746F2025 		.ascii	"to %ld%%, check every %.1fmm, \000"
 964      6C642525 
 964      2C206368 
 964      65636B20 
 964      65766572 
 965 0099 000000   		.space	3
 966              	.LC3:
 967 009c 6E6F2064 		.ascii	"no data received\000"
 967      61746120 
 967      72656365 
 967      69766564 
 967      00
 968 00ad 000000   		.space	3
 969              	.LC4:
 970 00b0 63757272 		.ascii	"current position %.1f, \000"
 970      656E7420 
 970      706F7369 
 970      74696F6E 
 970      20252E31 
 971              	.LC5:
 972 00c8 6D656173 		.ascii	"measured sensitivity %.3fmm/pulse, measured minimum"
 972      75726564 
 972      2073656E 
 972      73697469 
 972      76697479 
 973 00fb 20256C64 		.ascii	" %ld%%, maximum %ld%% over %.1fmm\012\000"
 973      25252C20 
 973      6D617869 
 973      6D756D20 
 973      256C6425 
 974 011e 0000     		.space	2
 975              	.LC6:
 976 0120 6E6F2063 		.ascii	"no calibration data\000"
 976      616C6962 
ARM GAS  /tmp/ccmAqXSy.s 			page 19


 976      72617469 
 976      6F6E2064 
 976      61746100 
 977              		.section	.rodata._ZTV21PulsedFilamentMonitor,"a",%progbits
 978              		.align	2
 979              		.set	.LANCHOR0,. + 0
 980              		.type	_ZTV21PulsedFilamentMonitor, %object
 981              		.size	_ZTV21PulsedFilamentMonitor, 40
 982              	_ZTV21PulsedFilamentMonitor:
 983 0000 00000000 		.word	0
 984 0004 00000000 		.word	0
 985 0008 00000000 		.word	_ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 986 000c 00000000 		.word	_ZN21PulsedFilamentMonitor5CheckEbbbf
 987 0010 00000000 		.word	_ZN21PulsedFilamentMonitor5ClearEb
 988 0014 00000000 		.word	_ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej
 989 0018 00000000 		.word	_ZN21PulsedFilamentMonitor9InterruptEv
 990 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 991 0020 00000000 		.word	_ZN21PulsedFilamentMonitorD1Ev
 992 0024 00000000 		.word	_ZN21PulsedFilamentMonitorD0Ev
 993              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
