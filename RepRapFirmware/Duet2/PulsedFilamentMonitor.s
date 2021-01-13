ARM GAS  /tmp/ccexnUjK.s 			page 1


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
  13              		.file	"PulsedFilamentMonitor.cpp"
  14              		.section	.text._ZN21PulsedFilamentMonitor9InterruptEv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN21PulsedFilamentMonitor9InterruptEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN21PulsedFilamentMonitor9InterruptEv, %function
  23              	_ZN21PulsedFilamentMonitor9InterruptEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 10B5     		push	{r4, lr}
  27 0002 90F85C20 		ldrb	r2, [r0, #92]	@ zero_extendqisi2
  28 0006 C36A     		ldr	r3, [r0, #44]
  29 0008 632A     		cmp	r2, #99
  30 000a 03F10103 		add	r3, r3, #1
  31 000e 98BF     		it	ls
  32 0010 0132     		addls	r2, r2, #1
  33 0012 C362     		str	r3, [r0, #44]
  34 0014 98BF     		it	ls
  35 0016 80F85C20 		strbls	r2, [r0, #92]
  36 001a 0446     		mov	r4, r0
  37 001c FFF7FEFF 		bl	millis
  38 0020 2063     		str	r0, [r4, #48]
  39 0022 0120     		movs	r0, #1
  40 0024 10BD     		pop	{r4, pc}
  41              		.size	_ZN21PulsedFilamentMonitor9InterruptEv, .-_ZN21PulsedFilamentMonitor9InterruptEv
  42 0026 00BF     		.section	.text._ZN21PulsedFilamentMonitorD2Ev,"axG",%progbits,_ZN21PulsedFilamentMonitorD5Ev,comda
  43              		.align	1
  44              		.p2align 2,,3
  45              		.weak	_ZN21PulsedFilamentMonitorD2Ev
  46              		.syntax unified
  47              		.thumb
  48              		.thumb_func
  49              		.fpu fpv4-sp-d16
  50              		.type	_ZN21PulsedFilamentMonitorD2Ev, %function
  51              	_ZN21PulsedFilamentMonitorD2Ev:
  52              		@ args = 0, pretend = 0, frame = 0
  53              		@ frame_needed = 0, uses_anonymous_args = 0
  54 0000 10B5     		push	{r4, lr}
  55 0002 034B     		ldr	r3, .L7
  56 0004 0360     		str	r3, [r0]
  57 0006 0446     		mov	r4, r0
ARM GAS  /tmp/ccexnUjK.s 			page 2


  58 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
  59 000c 2046     		mov	r0, r4
  60 000e 10BD     		pop	{r4, pc}
  61              	.L8:
  62              		.align	2
  63              	.L7:
  64 0010 08000000 		.word	.LANCHOR0+8
  65              		.size	_ZN21PulsedFilamentMonitorD2Ev, .-_ZN21PulsedFilamentMonitorD2Ev
  66              		.weak	_ZN21PulsedFilamentMonitorD1Ev
  67              		.thumb_set _ZN21PulsedFilamentMonitorD1Ev,_ZN21PulsedFilamentMonitorD2Ev
  68              		.section	.text._ZN21PulsedFilamentMonitorD0Ev,"axG",%progbits,_ZN21PulsedFilamentMonitorD5Ev,comda
  69              		.align	1
  70              		.p2align 2,,3
  71              		.weak	_ZN21PulsedFilamentMonitorD0Ev
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu fpv4-sp-d16
  76              		.type	_ZN21PulsedFilamentMonitorD0Ev, %function
  77              	_ZN21PulsedFilamentMonitorD0Ev:
  78              		@ args = 0, pretend = 0, frame = 0
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80 0000 10B5     		push	{r4, lr}
  81 0002 054B     		ldr	r3, .L11
  82 0004 0360     		str	r3, [r0]
  83 0006 0446     		mov	r4, r0
  84 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
  85 000c 2046     		mov	r0, r4
  86 000e 6021     		movs	r1, #96
  87 0010 FFF7FEFF 		bl	_ZdlPvj
  88 0014 2046     		mov	r0, r4
  89 0016 10BD     		pop	{r4, pc}
  90              	.L12:
  91              		.align	2
  92              	.L11:
  93 0018 08000000 		.word	.LANCHOR0+8
  94              		.size	_ZN21PulsedFilamentMonitorD0Ev, .-_ZN21PulsedFilamentMonitorD0Ev
  95              		.global	__aeabi_f2d
  96              		.section	.text._ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb,"ax",%progbits
  97              		.align	1
  98              		.p2align 2,,3
  99              		.global	_ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 100              		.syntax unified
 101              		.thumb
 102              		.thumb_func
 103              		.fpu fpv4-sp-d16
 104              		.type	_ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, %function
 105              	_ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb:
 106              		@ args = 0, pretend = 0, frame = 24
 107              		@ frame_needed = 0, uses_anonymous_args = 0
 108 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 109 0004 2DED048B 		vpush.64	{d8, d9}
 110 0008 8DB0     		sub	sp, sp, #52
 111 000a 1D46     		mov	r5, r3
 112 000c 0093     		str	r3, [sp]
 113 000e 0523     		movs	r3, #5
 114 0010 0446     		mov	r4, r0
ARM GAS  /tmp/ccexnUjK.s 			page 3


 115 0012 0F46     		mov	r7, r1
 116 0014 9046     		mov	r8, r2
 117 0016 FFF7FEFF 		bl	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb
 118 001a 0646     		mov	r6, r0
 119 001c 28B1     		cbz	r0, .L39
 120              	.L14:
 121 001e 3046     		mov	r0, r6
 122 0020 0DB0     		add	sp, sp, #52
 123              		@ sp needed
 124 0022 BDEC048B 		vldm	sp!, {d8-d9}
 125 0026 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 126              	.L39:
 127 002a 2B46     		mov	r3, r5
 128 002c 04F11802 		add	r2, r4, #24
 129 0030 4C21     		movs	r1, #76
 130 0032 3846     		mov	r0, r7
 131 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 132 0038 4521     		movs	r1, #69
 133 003a 3846     		mov	r0, r7
 134 003c 2B46     		mov	r3, r5
 135 003e 04F12402 		add	r2, r4, #36
 136 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 137 0046 5221     		movs	r1, #82
 138 0048 3846     		mov	r0, r7
 139 004a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 140 004e 0028     		cmp	r0, #0
 141 0050 40F09280 		bne	.L40
 142              	.L15:
 143 0054 5321     		movs	r1, #83
 144 0056 3846     		mov	r0, r7
 145 0058 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 146 005c 0028     		cmp	r0, #0
 147 005e 7FD1     		bne	.L41
 148              	.L19:
 149 0060 2D78     		ldrb	r5, [r5]	@ zero_extendqisi2
 150 0062 002D     		cmp	r5, #0
 151 0064 63D1     		bne	.L42
 152 0066 6D4B     		ldr	r3, .L45
 153 0068 6D4A     		ldr	r2, .L45+4
 154 006a 94F82890 		ldrb	r9, [r4, #40]	@ zero_extendqisi2
 155 006e A069     		ldr	r0, [r4, #24]	@ float
 156 0070 9FED6C8A 		vldr.32	s16, .L45+8
 157 0074 D4F810A0 		ldr	r10, [r4, #16]
 158 0078 B9F1000F 		cmp	r9, #0
 159 007c 14BF     		ite	ne
 160 007e 9946     		movne	r9, r3
 161 0080 9146     		moveq	r9, r2
 162 0082 FFF7FEFF 		bl	__aeabi_f2d
 163 0086 94ED070A 		vldr.32	s0, [r4, #28]
 164 008a 20EE080A 		vmul.f32	s0, s0, s16
 165 008e 0F46     		mov	r7, r1
 166 0090 0646     		mov	r6, r0
 167 0092 FFF7FEFF 		bl	lrintf
 168 0096 94ED080A 		vldr.32	s0, [r4, #32]
 169 009a 20EE080A 		vmul.f32	s0, s0, s16
 170 009e 8346     		mov	fp, r0
 171 00a0 FFF7FEFF 		bl	lrintf
ARM GAS  /tmp/ccexnUjK.s 			page 4


 172 00a4 0790     		str	r0, [sp, #28]
 173 00a6 606A     		ldr	r0, [r4, #36]	@ float
 174 00a8 FFF7FEFF 		bl	__aeabi_f2d
 175 00ac 079A     		ldr	r2, [sp, #28]
 176 00ae CDE90401 		strd	r0, [sp, #16]
 177 00b2 4B46     		mov	r3, r9
 178 00b4 CDE902B2 		strd	fp, r2, [sp, #8]
 179 00b8 CDE90067 		strd	r6, [sp]
 180 00bc 5246     		mov	r2, r10
 181 00be 5A49     		ldr	r1, .L45+12
 182 00c0 4046     		mov	r0, r8
 183 00c2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 184 00c6 94F85C30 		ldrb	r3, [r4, #92]	@ zero_extendqisi2
 185 00ca 012B     		cmp	r3, #1
 186 00cc 79D9     		bls	.L43
 187 00ce D4ED0B7A 		vldr.32	s15, [r4, #44]	@ int
 188 00d2 F8EE677A 		vcvt.f32.u32	s15, s15
 189 00d6 17EE900A 		vmov	r0, s15
 190 00da FFF7FEFF 		bl	__aeabi_f2d
 191 00de 0B46     		mov	r3, r1
 192 00e0 0246     		mov	r2, r0
 193 00e2 5249     		ldr	r1, .L45+16
 194 00e4 4046     		mov	r0, r8
 195 00e6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 196 00ea 94F85E30 		ldrb	r3, [r4, #94]	@ zero_extendqisi2
 197 00ee 9BB1     		cbz	r3, .L23
 198 00f0 D4ED168A 		vldr.32	s17, [r4, #88]
 199 00f4 F7EE007A 		vmov.f32	s15, #1.0e+0
 200 00f8 B0EEE87A 		vabs.f32	s14, s17
 201 00fc B4EEE77A 		vcmpe.f32	s14, s15
 202 0100 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 203 0104 08DD     		ble	.L23
 204 0106 94ED159A 		vldr.32	s18, [r4, #84]
 205 010a F3EE047A 		vmov.f32	s15, #2.0e+1
 206 010e B4EEE79A 		vcmpe.f32	s18, s15
 207 0112 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 208 0116 5ADC     		bgt	.L44
 209              	.L23:
 210 0118 4046     		mov	r0, r8
 211 011a 4549     		ldr	r1, .L45+20
 212 011c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 213 0120 0026     		movs	r6, #0
 214 0122 3046     		mov	r0, r6
 215 0124 0DB0     		add	sp, sp, #52
 216              		@ sp needed
 217 0126 BDEC048B 		vldm	sp!, {d8-d9}
 218 012a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 219              	.L42:
 220 012e 0023     		movs	r3, #0
 221 0130 0022     		movs	r2, #0
 222 0132 0121     		movs	r1, #1
 223 0134 3046     		mov	r0, r6
 224 0136 E263     		str	r2, [r4, #60]	@ float
 225 0138 A264     		str	r2, [r4, #72]	@ float
 226 013a A263     		str	r2, [r4, #56]	@ float
 227 013c 6264     		str	r2, [r4, #68]	@ float
 228 013e E362     		str	r3, [r4, #44]
ARM GAS  /tmp/ccexnUjK.s 			page 5


 229 0140 84F85E30 		strb	r3, [r4, #94]
 230 0144 84F85C30 		strb	r3, [r4, #92]
 231 0148 2363     		str	r3, [r4, #48]
 232 014a 84F85D30 		strb	r3, [r4, #93]
 233 014e 84F84230 		strb	r3, [r4, #66]
 234 0152 84F84110 		strb	r1, [r4, #65]
 235 0156 0DB0     		add	sp, sp, #52
 236              		@ sp needed
 237 0158 BDEC048B 		vldm	sp!, {d8-d9}
 238 015c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 239              	.L41:
 240 0160 0123     		movs	r3, #1
 241 0162 3846     		mov	r0, r7
 242 0164 2B70     		strb	r3, [r5]
 243 0166 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 244 016a 0028     		cmp	r0, #0
 245 016c D4BF     		ite	le
 246 016e 0020     		movle	r0, #0
 247 0170 0120     		movgt	r0, #1
 248 0172 84F82800 		strb	r0, [r4, #40]
 249 0176 73E7     		b	.L19
 250              	.L40:
 251 0178 0CAA     		add	r2, sp, #48
 252 017a 0223     		movs	r3, #2
 253 017c 42F80C3D 		str	r3, [r2, #-12]!
 254 0180 0123     		movs	r3, #1
 255 0182 2B70     		strb	r3, [r5]
 256 0184 0AA9     		add	r1, sp, #40
 257 0186 3346     		mov	r3, r6
 258 0188 3846     		mov	r0, r7
 259 018a FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 260 018e 099B     		ldr	r3, [sp, #36]
 261 0190 002B     		cmp	r3, #0
 262 0192 3FF45FAF 		beq	.L15
 263 0196 DDED0A7A 		vldr.32	s15, [sp, #40]	@ int
 264 019a DFED266A 		vldr.32	s13, .L45+24
 265 019e B8EE677A 		vcvt.f32.u32	s14, s15
 266 01a2 012B     		cmp	r3, #1
 267 01a4 27EE267A 		vmul.f32	s14, s14, s13
 268 01a8 84ED077A 		vstr.32	s14, [r4, #28]
 269 01ac 7FF652AF 		bls	.L15
 270 01b0 DDED0B7A 		vldr.32	s15, [sp, #44]	@ int
 271 01b4 F8EE677A 		vcvt.f32.u32	s15, s15
 272 01b8 67EEA67A 		vmul.f32	s15, s15, s13
 273 01bc C4ED087A 		vstr.32	s15, [r4, #32]
 274 01c0 48E7     		b	.L15
 275              	.L43:
 276 01c2 4046     		mov	r0, r8
 277 01c4 1C49     		ldr	r1, .L45+28
 278 01c6 2E46     		mov	r6, r5
 279 01c8 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 280 01cc 27E7     		b	.L14
 281              	.L44:
 282 01ce 94ED130A 		vldr.32	s0, [r4, #76]
 283 01d2 20EE080A 		vmul.f32	s0, s0, s16
 284 01d6 FFF7FEFF 		bl	lrintf
 285 01da 94ED140A 		vldr.32	s0, [r4, #80]
ARM GAS  /tmp/ccexnUjK.s 			page 6


 286 01de 20EE080A 		vmul.f32	s0, s0, s16
 287 01e2 8246     		mov	r10, r0
 288 01e4 FFF7FEFF 		bl	lrintf
 289 01e8 C9EE287A 		vdiv.f32	s15, s18, s17
 290 01ec 8146     		mov	r9, r0
 291 01ee 17EE900A 		vmov	r0, s15
 292 01f2 FFF7FEFF 		bl	__aeabi_f2d
 293 01f6 0646     		mov	r6, r0
 294 01f8 606D     		ldr	r0, [r4, #84]	@ float
 295 01fa 0F46     		mov	r7, r1
 296 01fc FFF7FEFF 		bl	__aeabi_f2d
 297 0200 3246     		mov	r2, r6
 298 0202 CDE90201 		strd	r0, [sp, #8]
 299 0206 CDF800A0 		str	r10, [sp]
 300 020a CDF80490 		str	r9, [sp, #4]
 301 020e 3B46     		mov	r3, r7
 302 0210 4046     		mov	r0, r8
 303 0212 0A49     		ldr	r1, .L45+32
 304 0214 2E46     		mov	r6, r5
 305 0216 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 306 021a 00E7     		b	.L14
 307              	.L46:
 308              		.align	2
 309              	.L45:
 310 021c 00000000 		.word	.LC0
 311 0220 08000000 		.word	.LC1
 312 0224 0000C842 		.word	1120403456
 313 0228 14000000 		.word	.LC2
 314 022c B0000000 		.word	.LC4
 315 0230 20010000 		.word	.LC6
 316 0234 0AD7233C 		.word	1008981770
 317 0238 9C000000 		.word	.LC3
 318 023c C8000000 		.word	.LC5
 319              		.size	_ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, .-_ZN21PulsedFilamentMoni
 320              		.section	.text._ZN21PulsedFilamentMonitorC2Eji,"ax",%progbits
 321              		.align	1
 322              		.p2align 2,,3
 323              		.global	_ZN21PulsedFilamentMonitorC2Eji
 324              		.syntax unified
 325              		.thumb
 326              		.thumb_func
 327              		.fpu fpv4-sp-d16
 328              		.type	_ZN21PulsedFilamentMonitorC2Eji, %function
 329              	_ZN21PulsedFilamentMonitorC2Eji:
 330              		@ args = 0, pretend = 0, frame = 0
 331              		@ frame_needed = 0, uses_anonymous_args = 0
 332              		@ link register save eliminated.
 333 0000 70B4     		push	{r4, r5, r6}
 334 0002 C260     		str	r2, [r0, #12]
 335 0004 FF22     		movs	r2, #255
 336 0006 0275     		strb	r2, [r0, #20]
 337 0008 114A     		ldr	r2, .L49
 338 000a 124C     		ldr	r4, .L49+4
 339 000c 0260     		str	r2, [r0]
 340 000e 4FF07E52 		mov	r2, #1065353216
 341 0012 114E     		ldr	r6, .L49+8
 342 0014 114D     		ldr	r5, .L49+12
ARM GAS  /tmp/ccexnUjK.s 			page 7


 343 0016 8160     		str	r1, [r0, #8]
 344 0018 8261     		str	r2, [r0, #24]	@ float
 345 001a 0021     		movs	r1, #0
 346 001c 0022     		movs	r2, #0
 347 001e C461     		str	r4, [r0, #28]	@ float
 348 0020 0124     		movs	r4, #1
 349 0022 0662     		str	r6, [r0, #32]	@ float
 350 0024 4562     		str	r5, [r0, #36]	@ float
 351 0026 80F84140 		strb	r4, [r0, #65]
 352 002a 80F82820 		strb	r2, [r0, #40]
 353 002e C262     		str	r2, [r0, #44]
 354 0030 80F85E20 		strb	r2, [r0, #94]
 355 0034 80F85C20 		strb	r2, [r0, #92]
 356 0038 0263     		str	r2, [r0, #48]
 357 003a 80F85D20 		strb	r2, [r0, #93]
 358 003e 80F84220 		strb	r2, [r0, #66]
 359 0042 C163     		str	r1, [r0, #60]	@ float
 360 0044 8164     		str	r1, [r0, #72]	@ float
 361 0046 8163     		str	r1, [r0, #56]	@ float
 362 0048 4164     		str	r1, [r0, #68]	@ float
 363 004a 70BC     		pop	{r4, r5, r6}
 364 004c 7047     		bx	lr
 365              	.L50:
 366 004e 00BF     		.align	2
 367              	.L49:
 368 0050 08000000 		.word	.LANCHOR0+8
 369 0054 9A99193F 		.word	1058642330
 370 0058 CDCCCC3F 		.word	1070386381
 371 005c 0000A040 		.word	1084227584
 372              		.size	_ZN21PulsedFilamentMonitorC2Eji, .-_ZN21PulsedFilamentMonitorC2Eji
 373              		.global	_ZN21PulsedFilamentMonitorC1Eji
 374              		.thumb_set _ZN21PulsedFilamentMonitorC1Eji,_ZN21PulsedFilamentMonitorC2Eji
 375              		.section	.text._ZN21PulsedFilamentMonitor4InitEv,"ax",%progbits
 376              		.align	1
 377              		.p2align 2,,3
 378              		.global	_ZN21PulsedFilamentMonitor4InitEv
 379              		.syntax unified
 380              		.thumb
 381              		.thumb_func
 382              		.fpu fpv4-sp-d16
 383              		.type	_ZN21PulsedFilamentMonitor4InitEv, %function
 384              	_ZN21PulsedFilamentMonitor4InitEv:
 385              		@ args = 0, pretend = 0, frame = 0
 386              		@ frame_needed = 0, uses_anonymous_args = 0
 387              		@ link register save eliminated.
 388 0000 0023     		movs	r3, #0
 389 0002 0022     		movs	r2, #0
 390 0004 0121     		movs	r1, #1
 391 0006 80F84110 		strb	r1, [r0, #65]
 392 000a C362     		str	r3, [r0, #44]
 393 000c 80F85E30 		strb	r3, [r0, #94]
 394 0010 80F85C30 		strb	r3, [r0, #92]
 395 0014 0363     		str	r3, [r0, #48]
 396 0016 80F85D30 		strb	r3, [r0, #93]
 397 001a 80F84230 		strb	r3, [r0, #66]
 398 001e C263     		str	r2, [r0, #60]	@ float
 399 0020 8264     		str	r2, [r0, #72]	@ float
ARM GAS  /tmp/ccexnUjK.s 			page 8


 400 0022 8263     		str	r2, [r0, #56]	@ float
 401 0024 4264     		str	r2, [r0, #68]	@ float
 402 0026 7047     		bx	lr
 403              		.size	_ZN21PulsedFilamentMonitor4InitEv, .-_ZN21PulsedFilamentMonitor4InitEv
 404              		.section	.text._ZN21PulsedFilamentMonitor5ResetEv,"ax",%progbits
 405              		.align	1
 406              		.p2align 2,,3
 407              		.global	_ZN21PulsedFilamentMonitor5ResetEv
 408              		.syntax unified
 409              		.thumb
 410              		.thumb_func
 411              		.fpu fpv4-sp-d16
 412              		.type	_ZN21PulsedFilamentMonitor5ResetEv, %function
 413              	_ZN21PulsedFilamentMonitor5ResetEv:
 414              		@ args = 0, pretend = 0, frame = 0
 415              		@ frame_needed = 0, uses_anonymous_args = 0
 416              		@ link register save eliminated.
 417 0000 0023     		movs	r3, #0
 418 0002 0022     		movs	r2, #0
 419 0004 0121     		movs	r1, #1
 420 0006 80F84110 		strb	r1, [r0, #65]
 421 000a C363     		str	r3, [r0, #60]	@ float
 422 000c 8364     		str	r3, [r0, #72]	@ float
 423 000e 8363     		str	r3, [r0, #56]	@ float
 424 0010 4364     		str	r3, [r0, #68]	@ float
 425 0012 80F85D20 		strb	r2, [r0, #93]
 426 0016 80F84220 		strb	r2, [r0, #66]
 427 001a 7047     		bx	lr
 428              		.size	_ZN21PulsedFilamentMonitor5ResetEv, .-_ZN21PulsedFilamentMonitor5ResetEv
 429              		.section	.text._ZN21PulsedFilamentMonitor4PollEv,"ax",%progbits
 430              		.align	1
 431              		.p2align 2,,3
 432              		.global	_ZN21PulsedFilamentMonitor4PollEv
 433              		.syntax unified
 434              		.thumb
 435              		.thumb_func
 436              		.fpu fpv4-sp-d16
 437              		.type	_ZN21PulsedFilamentMonitor4PollEv, %function
 438              	_ZN21PulsedFilamentMonitor4PollEv:
 439              		@ args = 0, pretend = 0, frame = 0
 440              		@ frame_needed = 0, uses_anonymous_args = 0
 441              		@ link register save eliminated.
 442              		.syntax unified
 443              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 444 0000 72B6     		cpsid i
 445              	@ 0 "" 2
 446              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 447 0002 BFF35F8F 		dmb
 448              	@ 0 "" 2
 449              		.thumb
 450              		.syntax unified
 451 0006 174B     		ldr	r3, .L60
 452 0008 D0ED0B7A 		vldr.32	s15, [r0, #44]	@ int
 453 000c 0022     		movs	r2, #0
 454 000e 0121     		movs	r1, #1
 455 0010 1A70     		strb	r2, [r3]
 456 0012 C262     		str	r2, [r0, #44]
ARM GAS  /tmp/ccexnUjK.s 			page 9


 457 0014 1970     		strb	r1, [r3]
 458              		.syntax unified
 459              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 460 0016 BFF35F8F 		dmb
 461              	@ 0 "" 2
 462              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 463 001a 62B6     		cpsie i
 464              	@ 0 "" 2
 465              		.thumb
 466              		.syntax unified
 467 001c 90ED0F7A 		vldr.32	s14, [r0, #60]
 468 0020 90F84230 		ldrb	r3, [r0, #66]	@ zero_extendqisi2
 469 0024 F8EE677A 		vcvt.f32.u32	s15, s15
 470 0028 77EE877A 		vadd.f32	s15, s15, s14
 471 002c C0ED0F7A 		vstr.32	s15, [r0, #60]
 472 0030 3BB1     		cbz	r3, .L53
 473 0032 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 474 0036 2BB1     		cbz	r3, .L59
 475              	.L55:
 476 0038 0022     		movs	r2, #0
 477 003a 0023     		movs	r3, #0
 478 003c C263     		str	r2, [r0, #60]	@ float
 479 003e 80F84230 		strb	r3, [r0, #66]
 480              	.L53:
 481 0042 7047     		bx	lr
 482              	.L59:
 483 0044 D0ED116A 		vldr.32	s13, [r0, #68]
 484 0048 90ED127A 		vldr.32	s14, [r0, #72]
 485 004c 90ED0D6A 		vldr.32	s12, [r0, #52]
 486 0050 77EE277A 		vadd.f32	s15, s14, s15
 487 0054 76EE866A 		vadd.f32	s13, s13, s12
 488 0058 C0ED127A 		vstr.32	s15, [r0, #72]
 489 005c C0ED116A 		vstr.32	s13, [r0, #68]
 490 0060 EAE7     		b	.L55
 491              	.L61:
 492 0062 00BF     		.align	2
 493              	.L60:
 494 0064 00000000 		.word	g_interrupt_enabled
 495              		.size	_ZN21PulsedFilamentMonitor4PollEv, .-_ZN21PulsedFilamentMonitor4PollEv
 496              		.section	.text._ZN21PulsedFilamentMonitor5ClearEb,"ax",%progbits
 497              		.align	1
 498              		.p2align 2,,3
 499              		.global	_ZN21PulsedFilamentMonitor5ClearEb
 500              		.syntax unified
 501              		.thumb
 502              		.thumb_func
 503              		.fpu fpv4-sp-d16
 504              		.type	_ZN21PulsedFilamentMonitor5ClearEb, %function
 505              	_ZN21PulsedFilamentMonitor5ClearEb:
 506              		@ args = 0, pretend = 0, frame = 0
 507              		@ frame_needed = 0, uses_anonymous_args = 0
 508 0000 10B5     		push	{r4, lr}
 509 0002 0446     		mov	r4, r0
 510 0004 FFF7FEFF 		bl	_ZN21PulsedFilamentMonitor4PollEv
 511 0008 0023     		movs	r3, #0
 512 000a 0020     		movs	r0, #0
 513 000c 0122     		movs	r2, #1
ARM GAS  /tmp/ccexnUjK.s 			page 10


 514 000e 84F84120 		strb	r2, [r4, #65]
 515 0012 E363     		str	r3, [r4, #60]	@ float
 516 0014 A364     		str	r3, [r4, #72]	@ float
 517 0016 A363     		str	r3, [r4, #56]	@ float
 518 0018 6364     		str	r3, [r4, #68]	@ float
 519 001a 84F85D00 		strb	r0, [r4, #93]
 520 001e 84F84200 		strb	r0, [r4, #66]
 521 0022 10BD     		pop	{r4, pc}
 522              		.size	_ZN21PulsedFilamentMonitor5ClearEb, .-_ZN21PulsedFilamentMonitor5ClearEb
 523              		.section	.text._ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej,"ax",%progbits
 524              		.align	1
 525              		.p2align 2,,3
 526              		.global	_ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej
 527              		.syntax unified
 528              		.thumb
 529              		.thumb_func
 530              		.fpu fpv4-sp-d16
 531              		.type	_ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej, %function
 532              	_ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej:
 533              		@ args = 0, pretend = 0, frame = 0
 534              		@ frame_needed = 0, uses_anonymous_args = 0
 535 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 536 0004 2DED028B 		vpush.64	{d8}
 537 0008 84B0     		sub	sp, sp, #16
 538 000a 0446     		mov	r4, r0
 539 000c 0E46     		mov	r6, r1
 540 000e 9046     		mov	r8, r2
 541 0010 FFF7FEFF 		bl	_ZN21PulsedFilamentMonitor4PollEv
 542 0014 D0ED0B7A 		vldr.32	s15, [r0, #44]	@ int
 543 0018 90F85C10 		ldrb	r1, [r0, #92]	@ zero_extendqisi2
 544 001c 3E4B     		ldr	r3, .L83
 545 001e 3F4A     		ldr	r2, .L83+4
 546 0020 3F4D     		ldr	r5, .L83+8
 547 0022 F8EE677A 		vcvt.f32.u32	s15, s15
 548 0026 0129     		cmp	r1, #1
 549 0028 98BF     		it	ls
 550 002a 1A46     		movls	r2, r3
 551 002c 17EE900A 		vmov	r0, s15
 552 0030 0292     		str	r2, [sp, #8]
 553 0032 FFF7FEFF 		bl	__aeabi_f2d
 554 0036 2F68     		ldr	r7, [r5]	@ unaligned
 555 0038 3A4A     		ldr	r2, .L83+12
 556 003a CDE90001 		strd	r0, [sp]
 557 003e 4346     		mov	r3, r8
 558 0040 3846     		mov	r0, r7
 559 0042 3146     		mov	r1, r6
 560 0044 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 561 0048 94F85E30 		ldrb	r3, [r4, #94]	@ zero_extendqisi2
 562 004c 002B     		cmp	r3, #0
 563 004e 48D0     		beq	.L66
 564 0050 94ED167A 		vldr.32	s14, [r4, #88]
 565 0054 F7EE007A 		vmov.f32	s15, #1.0e+0
 566 0058 F0EEC76A 		vabs.f32	s13, s14
 567 005c F4EEE76A 		vcmpe.f32	s13, s15
 568 0060 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 569 0064 3DDD     		ble	.L66
 570 0066 D4ED156A 		vldr.32	s13, [r4, #84]
ARM GAS  /tmp/ccexnUjK.s 			page 11


 571 006a B3EE046A 		vmov.f32	s12, #2.0e+1
 572 006e F4EEC66A 		vcmpe.f32	s13, s12
 573 0072 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 574 0076 34DD     		ble	.L66
 575 0078 C6EE878A 		vdiv.f32	s17, s13, s14
 576 007c 87EEA88A 		vdiv.f32	s16, s15, s17
 577 0080 B5EEC08A 		vcmpe.f32	s16, #0
 578 0084 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 579 0088 35DD     		ble	.L80
 580 008a 94ED140A 		vldr.32	s0, [r4, #80]
 581 008e DFED267A 		vldr.32	s15, .L83+16
 582 0092 30EE480A 		vsub.f32	s0, s0, s16
 583 0096 20EE270A 		vmul.f32	s0, s0, s15
 584 009a 80EE080A 		vdiv.f32	s0, s0, s16
 585 009e FFF7FEFF 		bl	lrintf
 586 00a2 0746     		mov	r7, r0
 587 00a4 94ED130A 		vldr.32	s0, [r4, #76]
 588              	.L71:
 589 00a8 DFED1F7A 		vldr.32	s15, .L83+16
 590 00ac 38EE400A 		vsub.f32	s0, s16, s0
 591 00b0 20EE270A 		vmul.f32	s0, s0, s15
 592 00b4 80EE080A 		vdiv.f32	s0, s0, s16
 593 00b8 FFF7FEFF 		bl	lrintf
 594 00bc CDE90270 		strd	r7, r0, [sp, #8]
 595 00c0 2C68     		ldr	r4, [r5]
 596 00c2 18EE900A 		vmov	r0, s17
 597 00c6 FFF7FEFF 		bl	__aeabi_f2d
 598 00ca 184A     		ldr	r2, .L83+20
 599 00cc CDE90001 		strd	r0, [sp]
 600 00d0 2046     		mov	r0, r4
 601 00d2 3146     		mov	r1, r6
 602 00d4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 603 00d8 04B0     		add	sp, sp, #16
 604              		@ sp needed
 605 00da BDEC028B 		vldm	sp!, {d8}
 606 00de BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 607              	.L66:
 608 00e2 2868     		ldr	r0, [r5]
 609 00e4 124A     		ldr	r2, .L83+24
 610 00e6 3146     		mov	r1, r6
 611 00e8 04B0     		add	sp, sp, #16
 612              		@ sp needed
 613 00ea BDEC028B 		vldm	sp!, {d8}
 614 00ee BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 615 00f2 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 616              	.L80:
 617 00f6 94ED130A 		vldr.32	s0, [r4, #76]
 618 00fa DFED0B7A 		vldr.32	s15, .L83+16
 619 00fe 30EE480A 		vsub.f32	s0, s0, s16
 620 0102 20EE270A 		vmul.f32	s0, s0, s15
 621 0106 80EE080A 		vdiv.f32	s0, s0, s16
 622 010a FFF7FEFF 		bl	lrintf
 623 010e 0746     		mov	r7, r0
 624 0110 94ED140A 		vldr.32	s0, [r4, #80]
 625 0114 C8E7     		b	.L71
 626              	.L84:
 627 0116 00BF     		.align	2
ARM GAS  /tmp/ccexnUjK.s 			page 12


 628              	.L83:
 629 0118 9C000000 		.word	.LC3
 630 011c 00000000 		.word	.LC7
 631 0120 00000000 		.word	reprap
 632 0124 04000000 		.word	.LC8
 633 0128 0000C842 		.word	1120403456
 634 012c 2C000000 		.word	.LC9
 635 0130 5C000000 		.word	.LC10
 636              		.size	_ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej, .-_ZN21PulsedFilamentMonitor11Diagno
 637              		.section	.text._ZNK21PulsedFilamentMonitor18GetCurrentPositionEv,"ax",%progbits
 638              		.align	1
 639              		.p2align 2,,3
 640              		.global	_ZNK21PulsedFilamentMonitor18GetCurrentPositionEv
 641              		.syntax unified
 642              		.thumb
 643              		.thumb_func
 644              		.fpu fpv4-sp-d16
 645              		.type	_ZNK21PulsedFilamentMonitor18GetCurrentPositionEv, %function
 646              	_ZNK21PulsedFilamentMonitor18GetCurrentPositionEv:
 647              		@ args = 0, pretend = 0, frame = 0
 648              		@ frame_needed = 0, uses_anonymous_args = 0
 649              		@ link register save eliminated.
 650 0000 90ED0B0A 		vldr.32	s0, [r0, #44]	@ int
 651 0004 B8EE400A 		vcvt.f32.u32	s0, s0
 652 0008 7047     		bx	lr
 653              		.size	_ZNK21PulsedFilamentMonitor18GetCurrentPositionEv, .-_ZNK21PulsedFilamentMonitor18GetCurrent
 654 000a 00BF     		.section	.text._ZN21PulsedFilamentMonitor13CheckFilamentEffb,"ax",%progbits
 655              		.align	1
 656              		.p2align 2,,3
 657              		.global	_ZN21PulsedFilamentMonitor13CheckFilamentEffb
 658              		.syntax unified
 659              		.thumb
 660              		.thumb_func
 661              		.fpu fpv4-sp-d16
 662              		.type	_ZN21PulsedFilamentMonitor13CheckFilamentEffb, %function
 663              	_ZN21PulsedFilamentMonitor13CheckFilamentEffb:
 664              		@ args = 0, pretend = 0, frame = 0
 665              		@ frame_needed = 0, uses_anonymous_args = 0
 666 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 667 0004 2DED028B 		vpush.64	{d8}
 668 0008 494B     		ldr	r3, .L123
 669 000a 9B6C     		ldr	r3, [r3, #72]
 670 000c 9B04     		lsls	r3, r3, #18
 671 000e 84B0     		sub	sp, sp, #16
 672 0010 0446     		mov	r4, r0
 673 0012 B0EE408A 		vmov.f32	s16, s0
 674 0016 F0EE608A 		vmov.f32	s17, s1
 675 001a 18D5     		bpl	.L87
 676 001c 10EE100A 		vmov	r0, s0
 677 0020 8846     		mov	r8, r1
 678 0022 FFF7FEFF 		bl	__aeabi_f2d
 679 0026 0646     		mov	r6, r0
 680 0028 18EE900A 		vmov	r0, s17
 681 002c 0F46     		mov	r7, r1
 682 002e 414D     		ldr	r5, .L123+4
 683 0030 FFF7FEFF 		bl	__aeabi_f2d
 684 0034 404B     		ldr	r3, .L123+8
ARM GAS  /tmp/ccexnUjK.s 			page 13


 685 0036 B8F1000F 		cmp	r8, #0
 686 003a 18BF     		it	ne
 687 003c 1D46     		movne	r5, r3
 688 003e CDE90001 		strd	r0, [sp]
 689 0042 3246     		mov	r2, r6
 690 0044 3B46     		mov	r3, r7
 691 0046 0295     		str	r5, [sp, #8]
 692 0048 3C48     		ldr	r0, .L123+12
 693 004a FFF7FEFF 		bl	debugPrintf
 694              	.L87:
 695 004e D4ED067A 		vldr.32	s15, [r4, #24]
 696 0052 94F85D00 		ldrb	r0, [r4, #93]	@ zero_extendqisi2
 697 0056 68EEA77A 		vmul.f32	s15, s17, s15
 698 005a 87EE887A 		vdiv.f32	s14, s15, s16
 699 005e 90B9     		cbnz	r0, .L89
 700 0060 0123     		movs	r3, #1
 701 0062 84F85D30 		strb	r3, [r4, #93]
 702              	.L90:
 703 0066 0123     		movs	r3, #1
 704 0068 84F85E30 		strb	r3, [r4, #94]
 705 006c 84ED147A 		vstr.32	s14, [r4, #80]
 706 0070 84ED137A 		vstr.32	s14, [r4, #76]
 707 0074 84ED158A 		vstr.32	s16, [r4, #84]
 708 0078 C4ED168A 		vstr.32	s17, [r4, #88]
 709 007c 04B0     		add	sp, sp, #16
 710              		@ sp needed
 711 007e BDEC028B 		vldm	sp!, {d8}
 712 0082 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 713              	.L89:
 714 0086 94F82800 		ldrb	r0, [r4, #40]	@ zero_extendqisi2
 715 008a 30BB     		cbnz	r0, .L122
 716              	.L91:
 717 008c 94F85E30 		ldrb	r3, [r4, #94]	@ zero_extendqisi2
 718 0090 002B     		cmp	r3, #0
 719 0092 E8D0     		beq	.L90
 720 0094 D4ED137A 		vldr.32	s15, [r4, #76]
 721 0098 94ED150A 		vldr.32	s0, [r4, #84]
 722 009c D4ED160A 		vldr.32	s1, [r4, #88]
 723 00a0 F4EEC77A 		vcmpe.f32	s15, s14
 724 00a4 D4ED147A 		vldr.32	s15, [r4, #80]
 725 00a8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 726 00ac 30EE088A 		vadd.f32	s16, s0, s16
 727 00b0 F4EEC77A 		vcmpe.f32	s15, s14
 728 00b4 70EEA88A 		vadd.f32	s17, s1, s17
 729 00b8 C8BF     		it	gt
 730 00ba 84ED137A 		vstrgt.32	s14, [r4, #76]
 731 00be F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 732 00c2 48BF     		it	mi
 733 00c4 84ED147A 		vstrmi.32	s14, [r4, #80]
 734 00c8 84ED158A 		vstr.32	s16, [r4, #84]
 735 00cc C4ED168A 		vstr.32	s17, [r4, #88]
 736 00d0 04B0     		add	sp, sp, #16
 737              		@ sp needed
 738 00d2 BDEC028B 		vldm	sp!, {d8}
 739 00d6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 740              	.L122:
 741 00da B5EEC08A 		vcmpe.f32	s16, #0
ARM GAS  /tmp/ccexnUjK.s 			page 14


 742 00de F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 743 00e2 14DB     		blt	.L118
 744 00e4 D4ED076A 		vldr.32	s13, [r4, #28]
 745 00e8 68EE266A 		vmul.f32	s13, s16, s13
 746 00ec F4EEE67A 		vcmpe.f32	s15, s13
 747 00f0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 748 00f4 19D4     		bmi	.L106
 749 00f6 D4ED086A 		vldr.32	s13, [r4, #32]
 750 00fa 68EE266A 		vmul.f32	s13, s16, s13
 751              	.L96:
 752 00fe F4EEE76A 		vcmpe.f32	s13, s15
 753 0102 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 754 0106 4CBF     		ite	mi
 755 0108 0320     		movmi	r0, #3
 756 010a 0020     		movpl	r0, #0
 757 010c BEE7     		b	.L91
 758              	.L118:
 759 010e D4ED086A 		vldr.32	s13, [r4, #32]
 760 0112 68EE266A 		vmul.f32	s13, s16, s13
 761 0116 F4EEE67A 		vcmpe.f32	s15, s13
 762 011a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 763 011e 04D4     		bmi	.L106
 764 0120 D4ED076A 		vldr.32	s13, [r4, #28]
 765 0124 68EE266A 		vmul.f32	s13, s16, s13
 766 0128 E9E7     		b	.L96
 767              	.L106:
 768 012a 0220     		movs	r0, #2
 769 012c AEE7     		b	.L91
 770              	.L124:
 771 012e 00BF     		.align	2
 772              	.L123:
 773 0130 00000000 		.word	reprap
 774 0134 0C000000 		.word	.LC12
 775 0138 00000000 		.word	.LC11
 776 013c 10000000 		.word	.LC13
 777              		.size	_ZN21PulsedFilamentMonitor13CheckFilamentEffb, .-_ZN21PulsedFilamentMonitor13CheckFilamentEf
 778              		.section	.text._ZN21PulsedFilamentMonitor5CheckEbbbf,"ax",%progbits
 779              		.align	1
 780              		.p2align 2,,3
 781              		.global	_ZN21PulsedFilamentMonitor5CheckEbbbf
 782              		.syntax unified
 783              		.thumb
 784              		.thumb_func
 785              		.fpu fpv4-sp-d16
 786              		.type	_ZN21PulsedFilamentMonitor5CheckEbbbf, %function
 787              	_ZN21PulsedFilamentMonitor5CheckEbbbf:
 788              		@ args = 0, pretend = 0, frame = 0
 789              		@ frame_needed = 0, uses_anonymous_args = 0
 790 0000 38B5     		push	{r3, r4, r5, lr}
 791 0002 0446     		mov	r4, r0
 792 0004 0D46     		mov	r5, r1
 793 0006 5AB3     		cbz	r2, .L126
 794 0008 0122     		movs	r2, #1
 795 000a 80F84120 		strb	r2, [r0, #65]
 796              	.L127:
 797 000e 6BB1     		cbz	r3, .L128
 798 0010 A36B     		ldr	r3, [r4, #56]	@ float
ARM GAS  /tmp/ccexnUjK.s 			page 15


 799 0012 94F84110 		ldrb	r1, [r4, #65]	@ zero_extendqisi2
 800 0016 6363     		str	r3, [r4, #52]	@ float
 801 0018 0020     		movs	r0, #0
 802 001a 0122     		movs	r2, #1
 803 001c 0023     		movs	r3, #0
 804 001e A063     		str	r0, [r4, #56]	@ float
 805 0020 84F84010 		strb	r1, [r4, #64]
 806 0024 84F84220 		strb	r2, [r4, #66]
 807 0028 84F84130 		strb	r3, [r4, #65]
 808              	.L128:
 809 002c 2046     		mov	r0, r4
 810 002e FFF7FEFF 		bl	_ZN21PulsedFilamentMonitor4PollEv
 811 0032 9DB1     		cbz	r5, .L133
 812 0034 94ED110A 		vldr.32	s0, [r4, #68]
 813 0038 D4ED097A 		vldr.32	s15, [r4, #36]
 814 003c B4EEE70A 		vcmpe.f32	s0, s15
 815 0040 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 816 0044 13DA     		bge	.L142
 817 0046 94ED0E7A 		vldr.32	s14, [r4, #56]
 818 004a 77EEA77A 		vadd.f32	s15, s15, s15
 819 004e 30EE070A 		vadd.f32	s0, s0, s14
 820 0052 B4EEE70A 		vcmpe.f32	s0, s15
 821 0056 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 822 005a 11DA     		bge	.L143
 823              	.L133:
 824 005c 0020     		movs	r0, #0
 825 005e 38BD     		pop	{r3, r4, r5, pc}
 826              	.L126:
 827 0060 D0ED0E7A 		vldr.32	s15, [r0, #56]
 828 0064 37EE800A 		vadd.f32	s0, s15, s0
 829 0068 80ED0E0A 		vstr.32	s0, [r0, #56]
 830 006c CFE7     		b	.L127
 831              	.L142:
 832 006e 0021     		movs	r1, #0
 833 0070 D4ED120A 		vldr.32	s1, [r4, #72]
 834 0074 FFF7FEFF 		bl	_ZN21PulsedFilamentMonitor13CheckFilamentEffb
 835 0078 0023     		movs	r3, #0
 836 007a A364     		str	r3, [r4, #72]	@ float
 837 007c 6364     		str	r3, [r4, #68]	@ float
 838 007e 38BD     		pop	{r3, r4, r5, pc}
 839              	.L143:
 840 0080 FFF7FEFF 		bl	millis
 841 0084 236B     		ldr	r3, [r4, #48]
 842 0086 C01A     		subs	r0, r0, r3
 843 0088 DC28     		cmp	r0, #220
 844 008a E7D9     		bls	.L133
 845 008c D4ED120A 		vldr.32	s1, [r4, #72]
 846 0090 94ED0F7A 		vldr.32	s14, [r4, #60]
 847 0094 94ED110A 		vldr.32	s0, [r4, #68]
 848 0098 D4ED0E7A 		vldr.32	s15, [r4, #56]
 849 009c 70EE870A 		vadd.f32	s1, s1, s14
 850 00a0 30EE270A 		vadd.f32	s0, s0, s15
 851 00a4 0121     		movs	r1, #1
 852 00a6 2046     		mov	r0, r4
 853 00a8 FFF7FEFF 		bl	_ZN21PulsedFilamentMonitor13CheckFilamentEffb
 854 00ac 0023     		movs	r3, #0
 855 00ae E363     		str	r3, [r4, #60]	@ float
ARM GAS  /tmp/ccexnUjK.s 			page 16


 856 00b0 A364     		str	r3, [r4, #72]	@ float
 857 00b2 A363     		str	r3, [r4, #56]	@ float
 858 00b4 6364     		str	r3, [r4, #68]	@ float
 859 00b6 38BD     		pop	{r3, r4, r5, pc}
 860              		.size	_ZN21PulsedFilamentMonitor5CheckEbbbf, .-_ZN21PulsedFilamentMonitor5CheckEbbbf
 861              		.global	_ZTV21PulsedFilamentMonitor
 862              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 863              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 864              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 865              	_ZL28cpu_irq_prev_interrupt_state:
 866 0000 00       		.space	1
 867              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 868              		.align	2
 869              		.type	_ZL32cpu_irq_critical_section_counter, %object
 870              		.size	_ZL32cpu_irq_critical_section_counter, 4
 871              	_ZL32cpu_irq_critical_section_counter:
 872 0000 00000000 		.space	4
 873              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 874              		.align	2
 875              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 876              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 877              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 878 0000 00000000 		.space	4
 879              		.section	.rodata._ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej.str1.4,"aMS",%progbits,1
 880              		.align	2
 881              	.LC7:
 882 0000 6F6B00   		.ascii	"ok\000"
 883 0003 00       		.space	1
 884              	.LC8:
 885 0004 45787472 		.ascii	"Extruder %u sensor: position %.2f, %s, \000"
 885      75646572 
 885      20257520 
 885      73656E73 
 885      6F723A20 
 886              	.LC9:
 887 002c 6D656173 		.ascii	"measured sensitivity %.3fmm/pulse +%d%% -%d%%\012\000"
 887      75726564 
 887      2073656E 
 887      73697469 
 887      76697479 
 888 005b 00       		.space	1
 889              	.LC10:
 890 005c 6E6F2063 		.ascii	"no calibration data\012\000"
 890      616C6962 
 890      72617469 
 890      6F6E2064 
 890      6174610A 
 891              		.section	.rodata._ZN21PulsedFilamentMonitor13CheckFilamentEffb.str1.4,"aMS",%progbits,1
 892              		.align	2
 893              	.LC11:
 894 0000 206F7665 		.ascii	" overdue\000"
 894      72647565 
 894      00
 895 0009 000000   		.space	3
 896              	.LC12:
 897 000c 00       		.ascii	"\000"
 898 000d 000000   		.space	3
ARM GAS  /tmp/ccexnUjK.s 			page 17


 899              	.LC13:
 900 0010 45787472 		.ascii	"Extr req %.3f meas %.3f%s\012\000"
 900      20726571 
 900      20252E33 
 900      66206D65 
 900      61732025 
 901              		.section	.rodata._ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb.str1.4,"aMS",%p
 902              		.align	2
 903              	.LC0:
 904 0000 656E6162 		.ascii	"enabled\000"
 904      6C656400 
 905              	.LC1:
 906 0008 64697361 		.ascii	"disabled\000"
 906      626C6564 
 906      00
 907 0011 000000   		.space	3
 908              	.LC2:
 909 0014 50756C73 		.ascii	"Pulse-type filament monitor on endstop input %u, %s"
 909      652D7479 
 909      70652066 
 909      696C616D 
 909      656E7420 
 910 0047 2C207365 		.ascii	", sensitivity %.2fmm/pulse, allowed movement %ld%% "
 910      6E736974 
 910      69766974 
 910      7920252E 
 910      32666D6D 
 911 007a 746F2025 		.ascii	"to %ld%%, check every %.1fmm, \000"
 911      6C642525 
 911      2C206368 
 911      65636B20 
 911      65766572 
 912 0099 000000   		.space	3
 913              	.LC3:
 914 009c 6E6F2064 		.ascii	"no data received\000"
 914      61746120 
 914      72656365 
 914      69766564 
 914      00
 915 00ad 000000   		.space	3
 916              	.LC4:
 917 00b0 63757272 		.ascii	"current position %.1f, \000"
 917      656E7420 
 917      706F7369 
 917      74696F6E 
 917      20252E31 
 918              	.LC5:
 919 00c8 6D656173 		.ascii	"measured sensitivity %.3fmm/pulse, measured minimum"
 919      75726564 
 919      2073656E 
 919      73697469 
 919      76697479 
 920 00fb 20256C64 		.ascii	" %ld%%, maximum %ld%% over %.1fmm\012\000"
 920      25252C20 
 920      6D617869 
 920      6D756D20 
 920      256C6425 
ARM GAS  /tmp/ccexnUjK.s 			page 18


 921 011e 0000     		.space	2
 922              	.LC6:
 923 0120 6E6F2063 		.ascii	"no calibration data\000"
 923      616C6962 
 923      72617469 
 923      6F6E2064 
 923      61746100 
 924              		.section	.rodata._ZTV21PulsedFilamentMonitor,"a",%progbits
 925              		.align	2
 926              		.set	.LANCHOR0,. + 0
 927              		.type	_ZTV21PulsedFilamentMonitor, %object
 928              		.size	_ZTV21PulsedFilamentMonitor, 40
 929              	_ZTV21PulsedFilamentMonitor:
 930 0000 00000000 		.word	0
 931 0004 00000000 		.word	0
 932 0008 00000000 		.word	_ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 933 000c 00000000 		.word	_ZN21PulsedFilamentMonitor5CheckEbbbf
 934 0010 00000000 		.word	_ZN21PulsedFilamentMonitor5ClearEb
 935 0014 00000000 		.word	_ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej
 936 0018 00000000 		.word	_ZN21PulsedFilamentMonitor9InterruptEv
 937 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 938 0020 00000000 		.word	_ZN21PulsedFilamentMonitorD1Ev
 939 0024 00000000 		.word	_ZN21PulsedFilamentMonitorD0Ev
 940              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
