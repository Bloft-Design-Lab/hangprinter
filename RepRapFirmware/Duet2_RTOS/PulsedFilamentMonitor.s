ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN21PulsedFilamentMonitor9InterruptEv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN21PulsedFilamentMonitor9InterruptEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN21PulsedFilamentMonitor9InterruptEv, %function
  24              	_ZN21PulsedFilamentMonitor9InterruptEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 10B5     		push	{r4, lr}
  28 0002 90F85C20 		ldrb	r2, [r0, #92]	@ zero_extendqisi2
  29 0006 C36A     		ldr	r3, [r0, #44]
  30 0008 632A     		cmp	r2, #99
  31 000a 03F10103 		add	r3, r3, #1
  32 000e 98BF     		it	ls
  33 0010 0132     		addls	r2, r2, #1
  34 0012 C362     		str	r3, [r0, #44]
  35 0014 98BF     		it	ls
  36 0016 80F85C20 		strbls	r2, [r0, #92]
  37 001a 0446     		mov	r4, r0
  38 001c FFF7FEFF 		bl	millis
  39 0020 2063     		str	r0, [r4, #48]
  40 0022 0120     		movs	r0, #1
  41 0024 10BD     		pop	{r4, pc}
  42              		.size	_ZN21PulsedFilamentMonitor9InterruptEv, .-_ZN21PulsedFilamentMonitor9InterruptEv
  43 0026 00BF     		.section	.text._ZN21PulsedFilamentMonitorD2Ev,"axG",%progbits,_ZN21PulsedFilamentMonitorD5Ev,comda
  44              		.align	1
  45              		.p2align 2,,3
  46              		.weak	_ZN21PulsedFilamentMonitorD2Ev
  47              		.syntax unified
  48              		.thumb
  49              		.thumb_func
  50              		.fpu fpv4-sp-d16
  51              		.type	_ZN21PulsedFilamentMonitorD2Ev, %function
  52              	_ZN21PulsedFilamentMonitorD2Ev:
  53              		@ args = 0, pretend = 0, frame = 0
  54              		@ frame_needed = 0, uses_anonymous_args = 0
  55 0000 10B5     		push	{r4, lr}
  56 0002 034B     		ldr	r3, .L7
  57 0004 0360     		str	r3, [r0]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 2


  58 0006 0446     		mov	r4, r0
  59 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
  60 000c 2046     		mov	r0, r4
  61 000e 10BD     		pop	{r4, pc}
  62              	.L8:
  63              		.align	2
  64              	.L7:
  65 0010 08000000 		.word	.LANCHOR0+8
  66              		.size	_ZN21PulsedFilamentMonitorD2Ev, .-_ZN21PulsedFilamentMonitorD2Ev
  67              		.weak	_ZN21PulsedFilamentMonitorD1Ev
  68              		.thumb_set _ZN21PulsedFilamentMonitorD1Ev,_ZN21PulsedFilamentMonitorD2Ev
  69              		.section	.text._ZN21PulsedFilamentMonitorD0Ev,"axG",%progbits,_ZN21PulsedFilamentMonitorD5Ev,comda
  70              		.align	1
  71              		.p2align 2,,3
  72              		.weak	_ZN21PulsedFilamentMonitorD0Ev
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu fpv4-sp-d16
  77              		.type	_ZN21PulsedFilamentMonitorD0Ev, %function
  78              	_ZN21PulsedFilamentMonitorD0Ev:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81 0000 10B5     		push	{r4, lr}
  82 0002 054B     		ldr	r3, .L11
  83 0004 0360     		str	r3, [r0]
  84 0006 0446     		mov	r4, r0
  85 0008 FFF7FEFF 		bl	_ZN15FilamentMonitorD2Ev
  86 000c 2046     		mov	r0, r4
  87 000e 6021     		movs	r1, #96
  88 0010 FFF7FEFF 		bl	_ZdlPvj
  89 0014 2046     		mov	r0, r4
  90 0016 10BD     		pop	{r4, pc}
  91              	.L12:
  92              		.align	2
  93              	.L11:
  94 0018 08000000 		.word	.LANCHOR0+8
  95              		.size	_ZN21PulsedFilamentMonitorD0Ev, .-_ZN21PulsedFilamentMonitorD0Ev
  96              		.global	__aeabi_f2d
  97              		.section	.text._ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb,"ax",%progbits
  98              		.align	1
  99              		.p2align 2,,3
 100              		.global	_ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 101              		.syntax unified
 102              		.thumb
 103              		.thumb_func
 104              		.fpu fpv4-sp-d16
 105              		.type	_ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, %function
 106              	_ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb:
 107              		@ args = 0, pretend = 0, frame = 24
 108              		@ frame_needed = 0, uses_anonymous_args = 0
 109 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 110 0004 2DED048B 		vpush.64	{d8, d9}
 111 0008 8DB0     		sub	sp, sp, #52
 112 000a 1D46     		mov	r5, r3
 113 000c 0093     		str	r3, [sp]
 114 000e 0523     		movs	r3, #5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 3


 115 0010 0446     		mov	r4, r0
 116 0012 0F46     		mov	r7, r1
 117 0014 9046     		mov	r8, r2
 118 0016 FFF7FEFF 		bl	_ZN15FilamentMonitor12ConfigurePinER11GCodeBufferRK9StringRef13InterruptModeRb
 119 001a 0646     		mov	r6, r0
 120 001c 28B1     		cbz	r0, .L39
 121              	.L14:
 122 001e 3046     		mov	r0, r6
 123 0020 0DB0     		add	sp, sp, #52
 124              		@ sp needed
 125 0022 BDEC048B 		vldm	sp!, {d8-d9}
 126 0026 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 127              	.L39:
 128 002a 2B46     		mov	r3, r5
 129 002c 04F11802 		add	r2, r4, #24
 130 0030 4C21     		movs	r1, #76
 131 0032 3846     		mov	r0, r7
 132 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 133 0038 4521     		movs	r1, #69
 134 003a 2B46     		mov	r3, r5
 135 003c 04F12402 		add	r2, r4, #36
 136 0040 3846     		mov	r0, r7
 137 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 138 0046 5221     		movs	r1, #82
 139 0048 3846     		mov	r0, r7
 140 004a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 141 004e 0028     		cmp	r0, #0
 142 0050 40F09280 		bne	.L40
 143              	.L15:
 144 0054 5321     		movs	r1, #83
 145 0056 3846     		mov	r0, r7
 146 0058 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 147 005c 0028     		cmp	r0, #0
 148 005e 7FD1     		bne	.L41
 149              	.L19:
 150 0060 2D78     		ldrb	r5, [r5]	@ zero_extendqisi2
 151 0062 002D     		cmp	r5, #0
 152 0064 63D1     		bne	.L42
 153 0066 6D4B     		ldr	r3, .L45
 154 0068 6D4A     		ldr	r2, .L45+4
 155 006a 94F82890 		ldrb	r9, [r4, #40]	@ zero_extendqisi2
 156 006e A069     		ldr	r0, [r4, #24]	@ float
 157 0070 9FED6C8A 		vldr.32	s16, .L45+8
 158 0074 D4F810A0 		ldr	r10, [r4, #16]
 159 0078 B9F1000F 		cmp	r9, #0
 160 007c 14BF     		ite	ne
 161 007e 9946     		movne	r9, r3
 162 0080 9146     		moveq	r9, r2
 163 0082 FFF7FEFF 		bl	__aeabi_f2d
 164 0086 94ED070A 		vldr.32	s0, [r4, #28]
 165 008a 20EE080A 		vmul.f32	s0, s0, s16
 166 008e 0F46     		mov	r7, r1
 167 0090 0646     		mov	r6, r0
 168 0092 FFF7FEFF 		bl	lrintf
 169 0096 94ED080A 		vldr.32	s0, [r4, #32]
 170 009a 20EE080A 		vmul.f32	s0, s0, s16
 171 009e 8346     		mov	fp, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 4


 172 00a0 FFF7FEFF 		bl	lrintf
 173 00a4 0790     		str	r0, [sp, #28]
 174 00a6 606A     		ldr	r0, [r4, #36]	@ float
 175 00a8 FFF7FEFF 		bl	__aeabi_f2d
 176 00ac 079A     		ldr	r2, [sp, #28]
 177 00ae CDE90401 		strd	r0, [sp, #16]
 178 00b2 4B46     		mov	r3, r9
 179 00b4 CDE902B2 		strd	fp, r2, [sp, #8]
 180 00b8 CDE90067 		strd	r6, [sp]
 181 00bc 5246     		mov	r2, r10
 182 00be 5A49     		ldr	r1, .L45+12
 183 00c0 4046     		mov	r0, r8
 184 00c2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 185 00c6 94F85C30 		ldrb	r3, [r4, #92]	@ zero_extendqisi2
 186 00ca 012B     		cmp	r3, #1
 187 00cc 79D9     		bls	.L43
 188 00ce D4ED0B7A 		vldr.32	s15, [r4, #44]	@ int
 189 00d2 F8EE677A 		vcvt.f32.u32	s15, s15
 190 00d6 17EE900A 		vmov	r0, s15
 191 00da FFF7FEFF 		bl	__aeabi_f2d
 192 00de 0B46     		mov	r3, r1
 193 00e0 0246     		mov	r2, r0
 194 00e2 5249     		ldr	r1, .L45+16
 195 00e4 4046     		mov	r0, r8
 196 00e6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 197 00ea 94F85E30 		ldrb	r3, [r4, #94]	@ zero_extendqisi2
 198 00ee 9BB1     		cbz	r3, .L23
 199 00f0 D4ED168A 		vldr.32	s17, [r4, #88]
 200 00f4 F7EE007A 		vmov.f32	s15, #1.0e+0
 201 00f8 B0EEE87A 		vabs.f32	s14, s17
 202 00fc B4EEE77A 		vcmpe.f32	s14, s15
 203 0100 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 204 0104 08DD     		ble	.L23
 205 0106 94ED159A 		vldr.32	s18, [r4, #84]
 206 010a F3EE047A 		vmov.f32	s15, #2.0e+1
 207 010e B4EEE79A 		vcmpe.f32	s18, s15
 208 0112 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 209 0116 5ADC     		bgt	.L44
 210              	.L23:
 211 0118 4046     		mov	r0, r8
 212 011a 4549     		ldr	r1, .L45+20
 213 011c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 214 0120 0026     		movs	r6, #0
 215 0122 3046     		mov	r0, r6
 216 0124 0DB0     		add	sp, sp, #52
 217              		@ sp needed
 218 0126 BDEC048B 		vldm	sp!, {d8-d9}
 219 012a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 220              	.L42:
 221 012e 0023     		movs	r3, #0
 222 0130 0022     		movs	r2, #0
 223 0132 0121     		movs	r1, #1
 224 0134 3046     		mov	r0, r6
 225 0136 E263     		str	r2, [r4, #60]	@ float
 226 0138 A264     		str	r2, [r4, #72]	@ float
 227 013a A263     		str	r2, [r4, #56]	@ float
 228 013c 6264     		str	r2, [r4, #68]	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 5


 229 013e E362     		str	r3, [r4, #44]
 230 0140 84F85E30 		strb	r3, [r4, #94]
 231 0144 84F85C30 		strb	r3, [r4, #92]
 232 0148 2363     		str	r3, [r4, #48]
 233 014a 84F85D30 		strb	r3, [r4, #93]
 234 014e 84F84230 		strb	r3, [r4, #66]
 235 0152 84F84110 		strb	r1, [r4, #65]
 236 0156 0DB0     		add	sp, sp, #52
 237              		@ sp needed
 238 0158 BDEC048B 		vldm	sp!, {d8-d9}
 239 015c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 240              	.L41:
 241 0160 0123     		movs	r3, #1
 242 0162 3846     		mov	r0, r7
 243 0164 2B70     		strb	r3, [r5]
 244 0166 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 245 016a 0028     		cmp	r0, #0
 246 016c D4BF     		ite	le
 247 016e 0020     		movle	r0, #0
 248 0170 0120     		movgt	r0, #1
 249 0172 84F82800 		strb	r0, [r4, #40]
 250 0176 73E7     		b	.L19
 251              	.L40:
 252 0178 0CAA     		add	r2, sp, #48
 253 017a 0223     		movs	r3, #2
 254 017c 42F80C3D 		str	r3, [r2, #-12]!
 255 0180 0123     		movs	r3, #1
 256 0182 2B70     		strb	r3, [r5]
 257 0184 0AA9     		add	r1, sp, #40
 258 0186 3346     		mov	r3, r6
 259 0188 3846     		mov	r0, r7
 260 018a FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 261 018e 099B     		ldr	r3, [sp, #36]
 262 0190 002B     		cmp	r3, #0
 263 0192 3FF45FAF 		beq	.L15
 264 0196 DDED0A7A 		vldr.32	s15, [sp, #40]	@ int
 265 019a DFED266A 		vldr.32	s13, .L45+24
 266 019e B8EE677A 		vcvt.f32.u32	s14, s15
 267 01a2 012B     		cmp	r3, #1
 268 01a4 27EE267A 		vmul.f32	s14, s14, s13
 269 01a8 84ED077A 		vstr.32	s14, [r4, #28]
 270 01ac 7FF652AF 		bls	.L15
 271 01b0 DDED0B7A 		vldr.32	s15, [sp, #44]	@ int
 272 01b4 F8EE677A 		vcvt.f32.u32	s15, s15
 273 01b8 67EEA67A 		vmul.f32	s15, s15, s13
 274 01bc C4ED087A 		vstr.32	s15, [r4, #32]
 275 01c0 48E7     		b	.L15
 276              	.L43:
 277 01c2 4046     		mov	r0, r8
 278 01c4 1C49     		ldr	r1, .L45+28
 279 01c6 2E46     		mov	r6, r5
 280 01c8 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 281 01cc 27E7     		b	.L14
 282              	.L44:
 283 01ce 94ED130A 		vldr.32	s0, [r4, #76]
 284 01d2 20EE080A 		vmul.f32	s0, s0, s16
 285 01d6 FFF7FEFF 		bl	lrintf
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 6


 286 01da 94ED140A 		vldr.32	s0, [r4, #80]
 287 01de 20EE080A 		vmul.f32	s0, s0, s16
 288 01e2 8246     		mov	r10, r0
 289 01e4 FFF7FEFF 		bl	lrintf
 290 01e8 C9EE287A 		vdiv.f32	s15, s18, s17
 291 01ec 8146     		mov	r9, r0
 292 01ee 17EE900A 		vmov	r0, s15
 293 01f2 FFF7FEFF 		bl	__aeabi_f2d
 294 01f6 0646     		mov	r6, r0
 295 01f8 606D     		ldr	r0, [r4, #84]	@ float
 296 01fa 0F46     		mov	r7, r1
 297 01fc FFF7FEFF 		bl	__aeabi_f2d
 298 0200 3246     		mov	r2, r6
 299 0202 CDE90201 		strd	r0, [sp, #8]
 300 0206 CDF800A0 		str	r10, [sp]
 301 020a CDF80490 		str	r9, [sp, #4]
 302 020e 3B46     		mov	r3, r7
 303 0210 4046     		mov	r0, r8
 304 0212 0A49     		ldr	r1, .L45+32
 305 0214 2E46     		mov	r6, r5
 306 0216 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 307 021a 00E7     		b	.L14
 308              	.L46:
 309              		.align	2
 310              	.L45:
 311 021c 00000000 		.word	.LC0
 312 0220 08000000 		.word	.LC1
 313 0224 0000C842 		.word	1120403456
 314 0228 14000000 		.word	.LC2
 315 022c B0000000 		.word	.LC4
 316 0230 20010000 		.word	.LC6
 317 0234 0AD7233C 		.word	1008981770
 318 0238 9C000000 		.word	.LC3
 319 023c C8000000 		.word	.LC5
 320              		.size	_ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb, .-_ZN21PulsedFilamentMoni
 321              		.section	.text._ZN21PulsedFilamentMonitorC2Eji,"ax",%progbits
 322              		.align	1
 323              		.p2align 2,,3
 324              		.global	_ZN21PulsedFilamentMonitorC2Eji
 325              		.syntax unified
 326              		.thumb
 327              		.thumb_func
 328              		.fpu fpv4-sp-d16
 329              		.type	_ZN21PulsedFilamentMonitorC2Eji, %function
 330              	_ZN21PulsedFilamentMonitorC2Eji:
 331              		@ args = 0, pretend = 0, frame = 0
 332              		@ frame_needed = 0, uses_anonymous_args = 0
 333              		@ link register save eliminated.
 334 0000 70B4     		push	{r4, r5, r6}
 335 0002 C260     		str	r2, [r0, #12]
 336 0004 FF22     		movs	r2, #255
 337 0006 0275     		strb	r2, [r0, #20]
 338 0008 114A     		ldr	r2, .L49
 339 000a 124C     		ldr	r4, .L49+4
 340 000c 0260     		str	r2, [r0]
 341 000e 4FF07E52 		mov	r2, #1065353216
 342 0012 114E     		ldr	r6, .L49+8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 7


 343 0014 114D     		ldr	r5, .L49+12
 344 0016 8160     		str	r1, [r0, #8]
 345 0018 8261     		str	r2, [r0, #24]	@ float
 346 001a 0021     		movs	r1, #0
 347 001c 0022     		movs	r2, #0
 348 001e C461     		str	r4, [r0, #28]	@ float
 349 0020 0124     		movs	r4, #1
 350 0022 0662     		str	r6, [r0, #32]	@ float
 351 0024 4562     		str	r5, [r0, #36]	@ float
 352 0026 80F84140 		strb	r4, [r0, #65]
 353 002a 80F82820 		strb	r2, [r0, #40]
 354 002e C262     		str	r2, [r0, #44]
 355 0030 80F85E20 		strb	r2, [r0, #94]
 356 0034 80F85C20 		strb	r2, [r0, #92]
 357 0038 0263     		str	r2, [r0, #48]
 358 003a 80F85D20 		strb	r2, [r0, #93]
 359 003e 80F84220 		strb	r2, [r0, #66]
 360 0042 C163     		str	r1, [r0, #60]	@ float
 361 0044 8164     		str	r1, [r0, #72]	@ float
 362 0046 8163     		str	r1, [r0, #56]	@ float
 363 0048 4164     		str	r1, [r0, #68]	@ float
 364 004a 70BC     		pop	{r4, r5, r6}
 365 004c 7047     		bx	lr
 366              	.L50:
 367 004e 00BF     		.align	2
 368              	.L49:
 369 0050 08000000 		.word	.LANCHOR0+8
 370 0054 9A99193F 		.word	1058642330
 371 0058 CDCCCC3F 		.word	1070386381
 372 005c 0000A040 		.word	1084227584
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
 383              		.fpu fpv4-sp-d16
 384              		.type	_ZN21PulsedFilamentMonitor4InitEv, %function
 385              	_ZN21PulsedFilamentMonitor4InitEv:
 386              		@ args = 0, pretend = 0, frame = 0
 387              		@ frame_needed = 0, uses_anonymous_args = 0
 388              		@ link register save eliminated.
 389 0000 0023     		movs	r3, #0
 390 0002 0022     		movs	r2, #0
 391 0004 0121     		movs	r1, #1
 392 0006 80F84110 		strb	r1, [r0, #65]
 393 000a C362     		str	r3, [r0, #44]
 394 000c 80F85E30 		strb	r3, [r0, #94]
 395 0010 80F85C30 		strb	r3, [r0, #92]
 396 0014 0363     		str	r3, [r0, #48]
 397 0016 80F85D30 		strb	r3, [r0, #93]
 398 001a 80F84230 		strb	r3, [r0, #66]
 399 001e C263     		str	r2, [r0, #60]	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 8


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
 412              		.fpu fpv4-sp-d16
 413              		.type	_ZN21PulsedFilamentMonitor5ResetEv, %function
 414              	_ZN21PulsedFilamentMonitor5ResetEv:
 415              		@ args = 0, pretend = 0, frame = 0
 416              		@ frame_needed = 0, uses_anonymous_args = 0
 417              		@ link register save eliminated.
 418 0000 0023     		movs	r3, #0
 419 0002 0022     		movs	r2, #0
 420 0004 0121     		movs	r1, #1
 421 0006 80F84110 		strb	r1, [r0, #65]
 422 000a C363     		str	r3, [r0, #60]	@ float
 423 000c 8364     		str	r3, [r0, #72]	@ float
 424 000e 8363     		str	r3, [r0, #56]	@ float
 425 0010 4364     		str	r3, [r0, #68]	@ float
 426 0012 80F85D20 		strb	r2, [r0, #93]
 427 0016 80F84220 		strb	r2, [r0, #66]
 428 001a 7047     		bx	lr
 429              		.size	_ZN21PulsedFilamentMonitor5ResetEv, .-_ZN21PulsedFilamentMonitor5ResetEv
 430              		.section	.text._ZN21PulsedFilamentMonitor4PollEv,"ax",%progbits
 431              		.align	1
 432              		.p2align 2,,3
 433              		.global	_ZN21PulsedFilamentMonitor4PollEv
 434              		.syntax unified
 435              		.thumb
 436              		.thumb_func
 437              		.fpu fpv4-sp-d16
 438              		.type	_ZN21PulsedFilamentMonitor4PollEv, %function
 439              	_ZN21PulsedFilamentMonitor4PollEv:
 440              		@ args = 0, pretend = 0, frame = 0
 441              		@ frame_needed = 0, uses_anonymous_args = 0
 442              		@ link register save eliminated.
 443              		.syntax unified
 444              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 445 0000 72B6     		cpsid i
 446              	@ 0 "" 2
 447              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 448 0002 BFF35F8F 		dmb
 449              	@ 0 "" 2
 450              		.thumb
 451              		.syntax unified
 452 0006 174B     		ldr	r3, .L60
 453 0008 D0ED0B7A 		vldr.32	s15, [r0, #44]	@ int
 454 000c 0022     		movs	r2, #0
 455 000e 0121     		movs	r1, #1
 456 0010 1A70     		strb	r2, [r3]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 9


 457 0012 C262     		str	r2, [r0, #44]
 458 0014 1970     		strb	r1, [r3]
 459              		.syntax unified
 460              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 461 0016 BFF35F8F 		dmb
 462              	@ 0 "" 2
 463              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 464 001a 62B6     		cpsie i
 465              	@ 0 "" 2
 466              		.thumb
 467              		.syntax unified
 468 001c 90ED0F7A 		vldr.32	s14, [r0, #60]
 469 0020 90F84230 		ldrb	r3, [r0, #66]	@ zero_extendqisi2
 470 0024 F8EE677A 		vcvt.f32.u32	s15, s15
 471 0028 77EE877A 		vadd.f32	s15, s15, s14
 472 002c C0ED0F7A 		vstr.32	s15, [r0, #60]
 473 0030 3BB1     		cbz	r3, .L53
 474 0032 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 475 0036 2BB1     		cbz	r3, .L59
 476              	.L55:
 477 0038 0022     		movs	r2, #0
 478 003a 0023     		movs	r3, #0
 479 003c C263     		str	r2, [r0, #60]	@ float
 480 003e 80F84230 		strb	r3, [r0, #66]
 481              	.L53:
 482 0042 7047     		bx	lr
 483              	.L59:
 484 0044 D0ED116A 		vldr.32	s13, [r0, #68]
 485 0048 90ED127A 		vldr.32	s14, [r0, #72]
 486 004c 90ED0D6A 		vldr.32	s12, [r0, #52]
 487 0050 77EE277A 		vadd.f32	s15, s14, s15
 488 0054 76EE866A 		vadd.f32	s13, s13, s12
 489 0058 C0ED127A 		vstr.32	s15, [r0, #72]
 490 005c C0ED116A 		vstr.32	s13, [r0, #68]
 491 0060 EAE7     		b	.L55
 492              	.L61:
 493 0062 00BF     		.align	2
 494              	.L60:
 495 0064 00000000 		.word	g_interrupt_enabled
 496              		.size	_ZN21PulsedFilamentMonitor4PollEv, .-_ZN21PulsedFilamentMonitor4PollEv
 497              		.section	.text._ZN21PulsedFilamentMonitor5ClearEb,"ax",%progbits
 498              		.align	1
 499              		.p2align 2,,3
 500              		.global	_ZN21PulsedFilamentMonitor5ClearEb
 501              		.syntax unified
 502              		.thumb
 503              		.thumb_func
 504              		.fpu fpv4-sp-d16
 505              		.type	_ZN21PulsedFilamentMonitor5ClearEb, %function
 506              	_ZN21PulsedFilamentMonitor5ClearEb:
 507              		@ args = 0, pretend = 0, frame = 0
 508              		@ frame_needed = 0, uses_anonymous_args = 0
 509 0000 10B5     		push	{r4, lr}
 510 0002 0446     		mov	r4, r0
 511 0004 FFF7FEFF 		bl	_ZN21PulsedFilamentMonitor4PollEv
 512 0008 0023     		movs	r3, #0
 513 000a 0020     		movs	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 10


 514 000c 0122     		movs	r2, #1
 515 000e 84F84120 		strb	r2, [r4, #65]
 516 0012 E363     		str	r3, [r4, #60]	@ float
 517 0014 A364     		str	r3, [r4, #72]	@ float
 518 0016 A363     		str	r3, [r4, #56]	@ float
 519 0018 6364     		str	r3, [r4, #68]	@ float
 520 001a 84F85D00 		strb	r0, [r4, #93]
 521 001e 84F84200 		strb	r0, [r4, #66]
 522 0022 10BD     		pop	{r4, pc}
 523              		.size	_ZN21PulsedFilamentMonitor5ClearEb, .-_ZN21PulsedFilamentMonitor5ClearEb
 524              		.section	.text._ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej,"ax",%progbits
 525              		.align	1
 526              		.p2align 2,,3
 527              		.global	_ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej
 528              		.syntax unified
 529              		.thumb
 530              		.thumb_func
 531              		.fpu fpv4-sp-d16
 532              		.type	_ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej, %function
 533              	_ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej:
 534              		@ args = 0, pretend = 0, frame = 0
 535              		@ frame_needed = 0, uses_anonymous_args = 0
 536 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 537 0004 2DED028B 		vpush.64	{d8}
 538 0008 84B0     		sub	sp, sp, #16
 539 000a 0446     		mov	r4, r0
 540 000c 0E46     		mov	r6, r1
 541 000e 9046     		mov	r8, r2
 542 0010 FFF7FEFF 		bl	_ZN21PulsedFilamentMonitor4PollEv
 543 0014 D0ED0B7A 		vldr.32	s15, [r0, #44]	@ int
 544 0018 90F85C10 		ldrb	r1, [r0, #92]	@ zero_extendqisi2
 545 001c 3E4B     		ldr	r3, .L83
 546 001e 3F4A     		ldr	r2, .L83+4
 547 0020 3F4D     		ldr	r5, .L83+8
 548 0022 F8EE677A 		vcvt.f32.u32	s15, s15
 549 0026 0129     		cmp	r1, #1
 550 0028 98BF     		it	ls
 551 002a 1A46     		movls	r2, r3
 552 002c 17EE900A 		vmov	r0, s15
 553 0030 0292     		str	r2, [sp, #8]
 554 0032 FFF7FEFF 		bl	__aeabi_f2d
 555 0036 6F68     		ldr	r7, [r5, #4]	@ unaligned
 556 0038 3A4A     		ldr	r2, .L83+12
 557 003a CDE90001 		strd	r0, [sp]
 558 003e 4346     		mov	r3, r8
 559 0040 3846     		mov	r0, r7
 560 0042 3146     		mov	r1, r6
 561 0044 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 562 0048 94F85E30 		ldrb	r3, [r4, #94]	@ zero_extendqisi2
 563 004c 002B     		cmp	r3, #0
 564 004e 48D0     		beq	.L66
 565 0050 94ED167A 		vldr.32	s14, [r4, #88]
 566 0054 F7EE007A 		vmov.f32	s15, #1.0e+0
 567 0058 F0EEC76A 		vabs.f32	s13, s14
 568 005c F4EEE76A 		vcmpe.f32	s13, s15
 569 0060 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 570 0064 3DDD     		ble	.L66
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 11


 571 0066 D4ED156A 		vldr.32	s13, [r4, #84]
 572 006a B3EE046A 		vmov.f32	s12, #2.0e+1
 573 006e F4EEC66A 		vcmpe.f32	s13, s12
 574 0072 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 575 0076 34DD     		ble	.L66
 576 0078 C6EE878A 		vdiv.f32	s17, s13, s14
 577 007c 87EEA88A 		vdiv.f32	s16, s15, s17
 578 0080 B5EEC08A 		vcmpe.f32	s16, #0
 579 0084 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 580 0088 35DD     		ble	.L80
 581 008a 94ED140A 		vldr.32	s0, [r4, #80]
 582 008e DFED267A 		vldr.32	s15, .L83+16
 583 0092 30EE480A 		vsub.f32	s0, s0, s16
 584 0096 20EE270A 		vmul.f32	s0, s0, s15
 585 009a 80EE080A 		vdiv.f32	s0, s0, s16
 586 009e FFF7FEFF 		bl	lrintf
 587 00a2 0746     		mov	r7, r0
 588 00a4 94ED130A 		vldr.32	s0, [r4, #76]
 589              	.L71:
 590 00a8 DFED1F7A 		vldr.32	s15, .L83+16
 591 00ac 38EE400A 		vsub.f32	s0, s16, s0
 592 00b0 20EE270A 		vmul.f32	s0, s0, s15
 593 00b4 80EE080A 		vdiv.f32	s0, s0, s16
 594 00b8 FFF7FEFF 		bl	lrintf
 595 00bc CDE90270 		strd	r7, r0, [sp, #8]
 596 00c0 6C68     		ldr	r4, [r5, #4]
 597 00c2 18EE900A 		vmov	r0, s17
 598 00c6 FFF7FEFF 		bl	__aeabi_f2d
 599 00ca 184A     		ldr	r2, .L83+20
 600 00cc CDE90001 		strd	r0, [sp]
 601 00d0 2046     		mov	r0, r4
 602 00d2 3146     		mov	r1, r6
 603 00d4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 604 00d8 04B0     		add	sp, sp, #16
 605              		@ sp needed
 606 00da BDEC028B 		vldm	sp!, {d8}
 607 00de BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 608              	.L66:
 609 00e2 6868     		ldr	r0, [r5, #4]
 610 00e4 124A     		ldr	r2, .L83+24
 611 00e6 3146     		mov	r1, r6
 612 00e8 04B0     		add	sp, sp, #16
 613              		@ sp needed
 614 00ea BDEC028B 		vldm	sp!, {d8}
 615 00ee BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 616 00f2 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 617              	.L80:
 618 00f6 94ED130A 		vldr.32	s0, [r4, #76]
 619 00fa DFED0B7A 		vldr.32	s15, .L83+16
 620 00fe 30EE480A 		vsub.f32	s0, s0, s16
 621 0102 20EE270A 		vmul.f32	s0, s0, s15
 622 0106 80EE080A 		vdiv.f32	s0, s0, s16
 623 010a FFF7FEFF 		bl	lrintf
 624 010e 0746     		mov	r7, r0
 625 0110 94ED140A 		vldr.32	s0, [r4, #80]
 626 0114 C8E7     		b	.L71
 627              	.L84:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 12


 628 0116 00BF     		.align	2
 629              	.L83:
 630 0118 9C000000 		.word	.LC3
 631 011c 00000000 		.word	.LC7
 632 0120 00000000 		.word	reprap
 633 0124 04000000 		.word	.LC8
 634 0128 0000C842 		.word	1120403456
 635 012c 2C000000 		.word	.LC9
 636 0130 5C000000 		.word	.LC10
 637              		.size	_ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej, .-_ZN21PulsedFilamentMonitor11Diagno
 638              		.section	.text._ZNK21PulsedFilamentMonitor18GetCurrentPositionEv,"ax",%progbits
 639              		.align	1
 640              		.p2align 2,,3
 641              		.global	_ZNK21PulsedFilamentMonitor18GetCurrentPositionEv
 642              		.syntax unified
 643              		.thumb
 644              		.thumb_func
 645              		.fpu fpv4-sp-d16
 646              		.type	_ZNK21PulsedFilamentMonitor18GetCurrentPositionEv, %function
 647              	_ZNK21PulsedFilamentMonitor18GetCurrentPositionEv:
 648              		@ args = 0, pretend = 0, frame = 0
 649              		@ frame_needed = 0, uses_anonymous_args = 0
 650              		@ link register save eliminated.
 651 0000 90ED0B0A 		vldr.32	s0, [r0, #44]	@ int
 652 0004 B8EE400A 		vcvt.f32.u32	s0, s0
 653 0008 7047     		bx	lr
 654              		.size	_ZNK21PulsedFilamentMonitor18GetCurrentPositionEv, .-_ZNK21PulsedFilamentMonitor18GetCurrent
 655 000a 00BF     		.section	.text._ZN21PulsedFilamentMonitor13CheckFilamentEffb,"ax",%progbits
 656              		.align	1
 657              		.p2align 2,,3
 658              		.global	_ZN21PulsedFilamentMonitor13CheckFilamentEffb
 659              		.syntax unified
 660              		.thumb
 661              		.thumb_func
 662              		.fpu fpv4-sp-d16
 663              		.type	_ZN21PulsedFilamentMonitor13CheckFilamentEffb, %function
 664              	_ZN21PulsedFilamentMonitor13CheckFilamentEffb:
 665              		@ args = 0, pretend = 0, frame = 0
 666              		@ frame_needed = 0, uses_anonymous_args = 0
 667 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 668 0004 2DED028B 		vpush.64	{d8}
 669 0008 494B     		ldr	r3, .L123
 670 000a D3F80831 		ldr	r3, [r3, #264]
 671 000e 9B04     		lsls	r3, r3, #18
 672 0010 84B0     		sub	sp, sp, #16
 673 0012 0446     		mov	r4, r0
 674 0014 B0EE408A 		vmov.f32	s16, s0
 675 0018 F0EE608A 		vmov.f32	s17, s1
 676 001c 18D5     		bpl	.L87
 677 001e 10EE100A 		vmov	r0, s0
 678 0022 8846     		mov	r8, r1
 679 0024 FFF7FEFF 		bl	__aeabi_f2d
 680 0028 0646     		mov	r6, r0
 681 002a 18EE900A 		vmov	r0, s17
 682 002e 0F46     		mov	r7, r1
 683 0030 404D     		ldr	r5, .L123+4
 684 0032 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 13


 685 0036 404B     		ldr	r3, .L123+8
 686 0038 B8F1000F 		cmp	r8, #0
 687 003c 18BF     		it	ne
 688 003e 1D46     		movne	r5, r3
 689 0040 CDE90001 		strd	r0, [sp]
 690 0044 3246     		mov	r2, r6
 691 0046 3B46     		mov	r3, r7
 692 0048 0295     		str	r5, [sp, #8]
 693 004a 3C48     		ldr	r0, .L123+12
 694 004c FFF7FEFF 		bl	debugPrintf
 695              	.L87:
 696 0050 D4ED067A 		vldr.32	s15, [r4, #24]
 697 0054 94F85D00 		ldrb	r0, [r4, #93]	@ zero_extendqisi2
 698 0058 68EEA77A 		vmul.f32	s15, s17, s15
 699 005c 87EE887A 		vdiv.f32	s14, s15, s16
 700 0060 90B9     		cbnz	r0, .L89
 701 0062 0123     		movs	r3, #1
 702 0064 84F85D30 		strb	r3, [r4, #93]
 703              	.L90:
 704 0068 0123     		movs	r3, #1
 705 006a 84F85E30 		strb	r3, [r4, #94]
 706 006e 84ED147A 		vstr.32	s14, [r4, #80]
 707 0072 84ED137A 		vstr.32	s14, [r4, #76]
 708 0076 84ED158A 		vstr.32	s16, [r4, #84]
 709 007a C4ED168A 		vstr.32	s17, [r4, #88]
 710 007e 04B0     		add	sp, sp, #16
 711              		@ sp needed
 712 0080 BDEC028B 		vldm	sp!, {d8}
 713 0084 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 714              	.L89:
 715 0088 94F82800 		ldrb	r0, [r4, #40]	@ zero_extendqisi2
 716 008c 30BB     		cbnz	r0, .L122
 717              	.L91:
 718 008e 94F85E30 		ldrb	r3, [r4, #94]	@ zero_extendqisi2
 719 0092 002B     		cmp	r3, #0
 720 0094 E8D0     		beq	.L90
 721 0096 D4ED137A 		vldr.32	s15, [r4, #76]
 722 009a 94ED150A 		vldr.32	s0, [r4, #84]
 723 009e D4ED160A 		vldr.32	s1, [r4, #88]
 724 00a2 F4EEC77A 		vcmpe.f32	s15, s14
 725 00a6 D4ED147A 		vldr.32	s15, [r4, #80]
 726 00aa F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 727 00ae 30EE088A 		vadd.f32	s16, s0, s16
 728 00b2 F4EEC77A 		vcmpe.f32	s15, s14
 729 00b6 70EEA88A 		vadd.f32	s17, s1, s17
 730 00ba C8BF     		it	gt
 731 00bc 84ED137A 		vstrgt.32	s14, [r4, #76]
 732 00c0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 733 00c4 48BF     		it	mi
 734 00c6 84ED147A 		vstrmi.32	s14, [r4, #80]
 735 00ca 84ED158A 		vstr.32	s16, [r4, #84]
 736 00ce C4ED168A 		vstr.32	s17, [r4, #88]
 737 00d2 04B0     		add	sp, sp, #16
 738              		@ sp needed
 739 00d4 BDEC028B 		vldm	sp!, {d8}
 740 00d8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 741              	.L122:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 14


 742 00dc B5EEC08A 		vcmpe.f32	s16, #0
 743 00e0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 744 00e4 14DB     		blt	.L118
 745 00e6 D4ED076A 		vldr.32	s13, [r4, #28]
 746 00ea 68EE266A 		vmul.f32	s13, s16, s13
 747 00ee F4EEE67A 		vcmpe.f32	s15, s13
 748 00f2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 749 00f6 19D4     		bmi	.L106
 750 00f8 D4ED086A 		vldr.32	s13, [r4, #32]
 751 00fc 68EE266A 		vmul.f32	s13, s16, s13
 752              	.L96:
 753 0100 F4EEE76A 		vcmpe.f32	s13, s15
 754 0104 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 755 0108 4CBF     		ite	mi
 756 010a 0320     		movmi	r0, #3
 757 010c 0020     		movpl	r0, #0
 758 010e BEE7     		b	.L91
 759              	.L118:
 760 0110 D4ED086A 		vldr.32	s13, [r4, #32]
 761 0114 68EE266A 		vmul.f32	s13, s16, s13
 762 0118 F4EEE67A 		vcmpe.f32	s15, s13
 763 011c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 764 0120 04D4     		bmi	.L106
 765 0122 D4ED076A 		vldr.32	s13, [r4, #28]
 766 0126 68EE266A 		vmul.f32	s13, s16, s13
 767 012a E9E7     		b	.L96
 768              	.L106:
 769 012c 0220     		movs	r0, #2
 770 012e AEE7     		b	.L91
 771              	.L124:
 772              		.align	2
 773              	.L123:
 774 0130 00000000 		.word	reprap
 775 0134 0C000000 		.word	.LC12
 776 0138 00000000 		.word	.LC11
 777 013c 10000000 		.word	.LC13
 778              		.size	_ZN21PulsedFilamentMonitor13CheckFilamentEffb, .-_ZN21PulsedFilamentMonitor13CheckFilamentEf
 779              		.section	.text._ZN21PulsedFilamentMonitor5CheckEbbbf,"ax",%progbits
 780              		.align	1
 781              		.p2align 2,,3
 782              		.global	_ZN21PulsedFilamentMonitor5CheckEbbbf
 783              		.syntax unified
 784              		.thumb
 785              		.thumb_func
 786              		.fpu fpv4-sp-d16
 787              		.type	_ZN21PulsedFilamentMonitor5CheckEbbbf, %function
 788              	_ZN21PulsedFilamentMonitor5CheckEbbbf:
 789              		@ args = 0, pretend = 0, frame = 0
 790              		@ frame_needed = 0, uses_anonymous_args = 0
 791 0000 38B5     		push	{r3, r4, r5, lr}
 792 0002 0446     		mov	r4, r0
 793 0004 0D46     		mov	r5, r1
 794 0006 5AB3     		cbz	r2, .L126
 795 0008 0122     		movs	r2, #1
 796 000a 80F84120 		strb	r2, [r0, #65]
 797              	.L127:
 798 000e 6BB1     		cbz	r3, .L128
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 15


 799 0010 A36B     		ldr	r3, [r4, #56]	@ float
 800 0012 94F84110 		ldrb	r1, [r4, #65]	@ zero_extendqisi2
 801 0016 6363     		str	r3, [r4, #52]	@ float
 802 0018 0020     		movs	r0, #0
 803 001a 0122     		movs	r2, #1
 804 001c 0023     		movs	r3, #0
 805 001e A063     		str	r0, [r4, #56]	@ float
 806 0020 84F84010 		strb	r1, [r4, #64]
 807 0024 84F84220 		strb	r2, [r4, #66]
 808 0028 84F84130 		strb	r3, [r4, #65]
 809              	.L128:
 810 002c 2046     		mov	r0, r4
 811 002e FFF7FEFF 		bl	_ZN21PulsedFilamentMonitor4PollEv
 812 0032 9DB1     		cbz	r5, .L133
 813 0034 94ED110A 		vldr.32	s0, [r4, #68]
 814 0038 D4ED097A 		vldr.32	s15, [r4, #36]
 815 003c B4EEE70A 		vcmpe.f32	s0, s15
 816 0040 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 817 0044 13DA     		bge	.L142
 818 0046 94ED0E7A 		vldr.32	s14, [r4, #56]
 819 004a 77EEA77A 		vadd.f32	s15, s15, s15
 820 004e 30EE070A 		vadd.f32	s0, s0, s14
 821 0052 B4EEE70A 		vcmpe.f32	s0, s15
 822 0056 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 823 005a 11DA     		bge	.L143
 824              	.L133:
 825 005c 0020     		movs	r0, #0
 826 005e 38BD     		pop	{r3, r4, r5, pc}
 827              	.L126:
 828 0060 D0ED0E7A 		vldr.32	s15, [r0, #56]
 829 0064 37EE800A 		vadd.f32	s0, s15, s0
 830 0068 80ED0E0A 		vstr.32	s0, [r0, #56]
 831 006c CFE7     		b	.L127
 832              	.L142:
 833 006e 0021     		movs	r1, #0
 834 0070 D4ED120A 		vldr.32	s1, [r4, #72]
 835 0074 FFF7FEFF 		bl	_ZN21PulsedFilamentMonitor13CheckFilamentEffb
 836 0078 0023     		movs	r3, #0
 837 007a A364     		str	r3, [r4, #72]	@ float
 838 007c 6364     		str	r3, [r4, #68]	@ float
 839 007e 38BD     		pop	{r3, r4, r5, pc}
 840              	.L143:
 841 0080 FFF7FEFF 		bl	millis
 842 0084 236B     		ldr	r3, [r4, #48]
 843 0086 C01A     		subs	r0, r0, r3
 844 0088 DC28     		cmp	r0, #220
 845 008a E7D9     		bls	.L133
 846 008c D4ED120A 		vldr.32	s1, [r4, #72]
 847 0090 94ED0F7A 		vldr.32	s14, [r4, #60]
 848 0094 94ED110A 		vldr.32	s0, [r4, #68]
 849 0098 D4ED0E7A 		vldr.32	s15, [r4, #56]
 850 009c 70EE870A 		vadd.f32	s1, s1, s14
 851 00a0 30EE270A 		vadd.f32	s0, s0, s15
 852 00a4 0121     		movs	r1, #1
 853 00a6 2046     		mov	r0, r4
 854 00a8 FFF7FEFF 		bl	_ZN21PulsedFilamentMonitor13CheckFilamentEffb
 855 00ac 0023     		movs	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 16


 856 00ae E363     		str	r3, [r4, #60]	@ float
 857 00b0 A364     		str	r3, [r4, #72]	@ float
 858 00b2 A363     		str	r3, [r4, #56]	@ float
 859 00b4 6364     		str	r3, [r4, #68]	@ float
 860 00b6 38BD     		pop	{r3, r4, r5, pc}
 861              		.size	_ZN21PulsedFilamentMonitor5CheckEbbbf, .-_ZN21PulsedFilamentMonitor5CheckEbbbf
 862              		.global	_ZTV21PulsedFilamentMonitor
 863              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 864              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 865              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 866              	_ZL28cpu_irq_prev_interrupt_state:
 867 0000 00       		.space	1
 868              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 869              		.align	2
 870              		.type	_ZL32cpu_irq_critical_section_counter, %object
 871              		.size	_ZL32cpu_irq_critical_section_counter, 4
 872              	_ZL32cpu_irq_critical_section_counter:
 873 0000 00000000 		.space	4
 874              		.section	.rodata._ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej.str1.4,"aMS",%progbits,1
 875              		.align	2
 876              	.LC7:
 877 0000 6F6B00   		.ascii	"ok\000"
 878 0003 00       		.space	1
 879              	.LC8:
 880 0004 45787472 		.ascii	"Extruder %u sensor: position %.2f, %s, \000"
 880      75646572 
 880      20257520 
 880      73656E73 
 880      6F723A20 
 881              	.LC9:
 882 002c 6D656173 		.ascii	"measured sensitivity %.3fmm/pulse +%d%% -%d%%\012\000"
 882      75726564 
 882      2073656E 
 882      73697469 
 882      76697479 
 883 005b 00       		.space	1
 884              	.LC10:
 885 005c 6E6F2063 		.ascii	"no calibration data\012\000"
 885      616C6962 
 885      72617469 
 885      6F6E2064 
 885      6174610A 
 886              		.section	.rodata._ZN21PulsedFilamentMonitor13CheckFilamentEffb.str1.4,"aMS",%progbits,1
 887              		.align	2
 888              	.LC11:
 889 0000 206F7665 		.ascii	" overdue\000"
 889      72647565 
 889      00
 890 0009 000000   		.space	3
 891              	.LC12:
 892 000c 00       		.ascii	"\000"
 893 000d 000000   		.space	3
 894              	.LC13:
 895 0010 45787472 		.ascii	"Extr req %.3f meas %.3f%s\012\000"
 895      20726571 
 895      20252E33 
 895      66206D65 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 17


 895      61732025 
 896              		.section	.rodata._ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb.str1.4,"aMS",%p
 897              		.align	2
 898              	.LC0:
 899 0000 656E6162 		.ascii	"enabled\000"
 899      6C656400 
 900              	.LC1:
 901 0008 64697361 		.ascii	"disabled\000"
 901      626C6564 
 901      00
 902 0011 000000   		.space	3
 903              	.LC2:
 904 0014 50756C73 		.ascii	"Pulse-type filament monitor on endstop input %u, %s"
 904      652D7479 
 904      70652066 
 904      696C616D 
 904      656E7420 
 905 0047 2C207365 		.ascii	", sensitivity %.2fmm/pulse, allowed movement %ld%% "
 905      6E736974 
 905      69766974 
 905      7920252E 
 905      32666D6D 
 906 007a 746F2025 		.ascii	"to %ld%%, check every %.1fmm, \000"
 906      6C642525 
 906      2C206368 
 906      65636B20 
 906      65766572 
 907 0099 000000   		.space	3
 908              	.LC3:
 909 009c 6E6F2064 		.ascii	"no data received\000"
 909      61746120 
 909      72656365 
 909      69766564 
 909      00
 910 00ad 000000   		.space	3
 911              	.LC4:
 912 00b0 63757272 		.ascii	"current position %.1f, \000"
 912      656E7420 
 912      706F7369 
 912      74696F6E 
 912      20252E31 
 913              	.LC5:
 914 00c8 6D656173 		.ascii	"measured sensitivity %.3fmm/pulse, measured minimum"
 914      75726564 
 914      2073656E 
 914      73697469 
 914      76697479 
 915 00fb 20256C64 		.ascii	" %ld%%, maximum %ld%% over %.1fmm\012\000"
 915      25252C20 
 915      6D617869 
 915      6D756D20 
 915      256C6425 
 916 011e 0000     		.space	2
 917              	.LC6:
 918 0120 6E6F2063 		.ascii	"no calibration data\000"
 918      616C6962 
 918      72617469 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc3JINFK.s 			page 18


 918      6F6E2064 
 918      61746100 
 919              		.section	.rodata._ZTV21PulsedFilamentMonitor,"a",%progbits
 920              		.align	2
 921              		.set	.LANCHOR0,. + 0
 922              		.type	_ZTV21PulsedFilamentMonitor, %object
 923              		.size	_ZTV21PulsedFilamentMonitor, 40
 924              	_ZTV21PulsedFilamentMonitor:
 925 0000 00000000 		.word	0
 926 0004 00000000 		.word	0
 927 0008 00000000 		.word	_ZN21PulsedFilamentMonitor9ConfigureER11GCodeBufferRK9StringRefRb
 928 000c 00000000 		.word	_ZN21PulsedFilamentMonitor5CheckEbbbf
 929 0010 00000000 		.word	_ZN21PulsedFilamentMonitor5ClearEb
 930 0014 00000000 		.word	_ZN21PulsedFilamentMonitor11DiagnosticsE11MessageTypej
 931 0018 00000000 		.word	_ZN21PulsedFilamentMonitor9InterruptEv
 932 001c 00000000 		.word	_ZN15FilamentMonitor7DisableEv
 933 0020 00000000 		.word	_ZN21PulsedFilamentMonitorD1Ev
 934 0024 00000000 		.word	_ZN21PulsedFilamentMonitorD0Ev
 935              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
