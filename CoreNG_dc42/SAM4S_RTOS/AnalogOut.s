ARM GAS  /tmp/ccUmn9sa.s 			page 1


   1              		.cpu cortex-m4
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 2
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"AnalogOut.cpp"
  12              		.section	.text._Z13AnalogOutInitv,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_Z13AnalogOutInitv
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_Z13AnalogOutInitv, %function
  21              	_Z13AnalogOutInitv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 7047     		bx	lr
  26              		.size	_Z13AnalogOutInitv, .-_Z13AnalogOutInitv
  27              		.global	__aeabi_fcmpun
  28              		.global	__aeabi_fmul
  29              		.global	__aeabi_ui2f
  30              		.global	__aeabi_fcmpge
  31              		.global	__aeabi_fcmplt
  32              		.global	__aeabi_fcmpgt
  33 0002 00BF     		.section	.text._Z9AnalogOuthft,"ax",%progbits
  34              		.align	1
  35              		.p2align 2,,3
  36              		.global	_Z9AnalogOuthft
  37              		.syntax unified
  38              		.thumb
  39              		.thumb_func
  40              		.fpu softvfp
  41              		.type	_Z9AnalogOuthft, %function
  42              	_Z9AnalogOuthft:
  43              		@ args = 0, pretend = 0, frame = 56
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45 0000 4328     		cmp	r0, #67
  46 0002 31D8     		bhi	.L60
  47 0004 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  48 0008 0446     		mov	r4, r0
  49 000a 8FB0     		sub	sp, sp, #60
  50 000c 0846     		mov	r0, r1
  51 000e 9046     		mov	r8, r2
  52 0010 0D46     		mov	r5, r1
  53 0012 FFF7FEFF 		bl	__aeabi_fcmpun
  54 0016 20BB     		cbnz	r0, .L2
  55 0018 4FF07E51 		mov	r1, #1065353216
  56 001c 2846     		mov	r0, r5
  57 001e FFF7FEFF 		bl	__aeabi_fcmplt
ARM GAS  /tmp/ccUmn9sa.s 			page 2


  58 0022 10BB     		cbnz	r0, .L64
  59 0024 4FF07E55 		mov	r5, #1065353216
  60              	.L36:
  61 0028 B14F     		ldr	r7, .L74
  62 002a 4FEAC409 		lsl	r9, r4, #3
  63 002e A9EB0403 		sub	r3, r9, r4
  64 0032 07EB8303 		add	r3, r7, r3, lsl #2
  65 0036 1E46     		mov	r6, r3
  66 0038 5A69     		ldr	r2, [r3, #20]
  67 003a 9106     		lsls	r1, r2, #26
  68 003c 1DD4     		bmi	.L65
  69 003e 1107     		lsls	r1, r2, #28
  70 0040 46D4     		bmi	.L66
  71 0042 D206     		lsls	r2, r2, #27
  72 0044 00F1AD80 		bmi	.L67
  73              	.L13:
  74 0048 4FF07C51 		mov	r1, #1056964608
  75 004c 2846     		mov	r0, r5
  76 004e FFF7FEFF 		bl	__aeabi_fcmplt
  77 0052 0028     		cmp	r0, #0
  78 0054 14BF     		ite	ne
  79 0056 0321     		movne	r1, #3
  80 0058 0421     		moveq	r1, #4
  81 005a 2046     		mov	r0, r4
  82 005c 0022     		movs	r2, #0
  83 005e FFF7FEFF 		bl	pinModeDuet
  84              	.L2:
  85 0062 0FB0     		add	sp, sp, #60
  86              		@ sp needed
  87 0064 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
  88              	.L60:
  89 0068 7047     		bx	lr
  90              	.L64:
  91 006a 0021     		movs	r1, #0
  92 006c 2846     		mov	r0, r5
  93 006e FFF7FEFF 		bl	__aeabi_fcmpgt
  94 0072 0028     		cmp	r0, #0
  95 0074 D8D1     		bne	.L36
  96 0076 0025     		movs	r5, #0
  97 0078 D6E7     		b	.L36
  98              	.L65:
  99 007a 93F91840 		ldrsb	r4, [r3, #24]
 100 007e 9D48     		ldr	r0, .L74+4
 101 0080 203C     		subs	r4, r4, #32
 102 0082 18BF     		it	ne
 103 0084 0124     		movne	r4, #1
 104 0086 FFF7FEFF 		bl	dacc_get_channel_status
 105 008a 0646     		mov	r6, r0
 106 008c 0028     		cmp	r0, #0
 107 008e 00F0F280 		beq	.L68
 108              	.L8:
 109 0092 2146     		mov	r1, r4
 110 0094 9748     		ldr	r0, .L74+4
 111 0096 FFF7FEFF 		bl	dacc_set_channel_selection
 112 009a 9648     		ldr	r0, .L74+4
 113 009c FFF7FEFF 		bl	dacc_get_channel_status
 114 00a0 0123     		movs	r3, #1
ARM GAS  /tmp/ccUmn9sa.s 			page 3


 115 00a2 A340     		lsls	r3, r3, r4
 116 00a4 0342     		tst	r3, r0
 117 00a6 00F0E180 		beq	.L69
 118              	.L9:
 119 00aa 9349     		ldr	r1, .L74+8
 120 00ac 914C     		ldr	r4, .L74+4
 121 00ae 2846     		mov	r0, r5
 122 00b0 FFF7FEFF 		bl	__aeabi_fmul
 123 00b4 FFF7FEFF 		bl	lroundf
 124 00b8 0146     		mov	r1, r0
 125 00ba 2046     		mov	r0, r4
 126 00bc FFF7FEFF 		bl	dacc_write_conversion_data
 127              	.L10:
 128 00c0 2046     		mov	r0, r4
 129 00c2 FFF7FEFF 		bl	dacc_get_interrupt_status
 130 00c6 8007     		lsls	r0, r0, #30
 131 00c8 FAD5     		bpl	.L10
 132 00ca 0FB0     		add	sp, sp, #60
 133              		@ sp needed
 134 00cc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 135              	.L66:
 136 00d0 93F91960 		ldrsb	r6, [r3, #25]
 137 00d4 B8F1000F 		cmp	r8, #0
 138 00d8 00F05081 		beq	.L70
 139 00dc DFF84CB2 		ldr	fp, .L74+60
 140 00e0 3BF81630 		ldrh	r3, [fp, r6, lsl #1]
 141 00e4 4345     		cmp	r3, r8
 142 00e6 00F06681 		beq	.L14
 143 00ea 844A     		ldr	r2, .L74+12
 144 00ec 92F800A0 		ldrb	r10, [r2]	@ zero_extendqisi2
 145 00f0 BAF1000F 		cmp	r10, #0
 146 00f4 00F0E180 		beq	.L55
 147 00f8 04AB     		add	r3, sp, #16
 148 00fa 0193     		str	r3, [sp, #4]
 149              	.L15:
 150 00fc 804B     		ldr	r3, .L74+16
 151 00fe 46F2461A 		movw	r10, #24902
 152 0102 B8F1600F 		cmp	r8, #96
 153 0106 88BF     		it	hi
 154 0108 9A46     		movhi	r10, r3
 155 010a BAFBF8FA 		udiv	r10, r10, r8
 156 010e 5046     		mov	r0, r10
 157 0110 FFF7FEFF 		bl	__aeabi_ui2f
 158 0114 2946     		mov	r1, r5
 159 0116 FFF7FEFF 		bl	__aeabi_fmul
 160 011a FFF7FEFF 		bl	lroundf
 161 011e 794B     		ldr	r3, .L74+20
 162 0120 0290     		str	r0, [sp, #8]
 163 0122 7948     		ldr	r0, .L74+24
 164 0124 2BF81680 		strh	r8, [fp, r6, lsl #1]	@ movhi
 165 0128 3146     		mov	r1, r6
 166 012a 23F816A0 		strh	r10, [r3, r6, lsl #1]	@ movhi
 167 012e 00EB461B 		add	fp, r0, r6, lsl #5
 168 0132 FFF7FEFF 		bl	pwm_channel_disable
 169 0136 0023     		movs	r3, #0
 170 0138 0394     		str	r4, [sp, #12]
 171 013a 3446     		mov	r4, r6
ARM GAS  /tmp/ccUmn9sa.s 			page 4


 172 013c 1E46     		mov	r6, r3
 173              	.L17:
 174 013e DBF81452 		ldr	r5, [fp, #532]
 175 0142 ADB2     		uxth	r5, r5
 176 0144 AA45     		cmp	r10, r5
 177 0146 00F2F380 		bhi	.L58
 178 014a 4FF6F672 		movw	r2, #65526
 179 014e 9542     		cmp	r5, r2
 180 0150 00F2EE80 		bhi	.L58
 181 0154 04F11002 		add	r2, r4, #16
 182 0158 6B4B     		ldr	r3, .L74+24
 183 015a 5201     		lsls	r2, r2, #5
 184 015c 0C21     		movs	r1, #12
 185 015e 0235     		adds	r5, r5, #2
 186 0160 CBF80C52 		str	r5, [fp, #524]
 187 0164 1846     		mov	r0, r3
 188 0166 9950     		str	r1, [r3, r2]
 189 0168 2146     		mov	r1, r4
 190 016a FFF7FEFF 		bl	pwm_channel_enable
 191 016e 4FF47A71 		mov	r1, #1000
 192 0172 03E0     		b	.L23
 193              	.L71:
 194 0174 9D42     		cmp	r5, r3
 195 0176 06D3     		bcc	.L22
 196 0178 0139     		subs	r1, r1, #1
 197 017a 04D0     		beq	.L22
 198              	.L23:
 199 017c DBF81432 		ldr	r3, [fp, #532]
 200 0180 9BB2     		uxth	r3, r3
 201 0182 9A45     		cmp	r10, r3
 202 0184 F6D9     		bls	.L71
 203              	.L22:
 204 0186 0136     		adds	r6, r6, #1
 205 0188 052E     		cmp	r6, #5
 206 018a 00F0D180 		beq	.L58
 207 018e 2146     		mov	r1, r4
 208 0190 5D48     		ldr	r0, .L74+24
 209 0192 FFF7FEFF 		bl	pwm_channel_disable
 210 0196 5D4B     		ldr	r3, .L74+28
 211 0198 1A68     		ldr	r2, [r3]
 212 019a B242     		cmp	r2, r6
 213 019c 38BF     		it	cc
 214 019e 1E60     		strcc	r6, [r3]
 215 01a0 CDE7     		b	.L17
 216              	.L67:
 217 01a2 93F91A30 		ldrsb	r3, [r3, #26]
 218 01a6 5A4A     		ldr	r2, .L74+32
 219 01a8 5B08     		lsrs	r3, r3, #1
 220 01aa B8F1000F 		cmp	r8, #0
 221 01ae 00F0E980 		beq	.L72
 222 01b2 5848     		ldr	r0, .L74+36
 223 01b4 32F813B0 		ldrh	fp, [r2, r3, lsl #1]
 224 01b8 5749     		ldr	r1, .L74+40
 225 01ba 50F82300 		ldr	r0, [r0, r3, lsl #2]
 226 01be 0190     		str	r0, [sp, #4]
 227 01c0 D845     		cmp	r8, fp
 228 01c2 11F803A0 		ldrb	r10, [r1, r3]	@ zero_extendqisi2
ARM GAS  /tmp/ccUmn9sa.s 			page 5


 229 01c6 24D0     		beq	.L27
 230 01c8 5449     		ldr	r1, .L74+44
 231 01ca 22F81380 		strh	r8, [r2, r3, lsl #1]	@ movhi
 232 01ce C85C     		ldrb	r0, [r1, r3]	@ zero_extendqisi2
 233 01d0 0293     		str	r3, [sp, #8]
 234 01d2 FFF7FEFF 		bl	pmc_enable_periph_clk
 235 01d6 524A     		ldr	r2, .L74+48
 236 01d8 0198     		ldr	r0, [sp, #4]
 237 01da 5146     		mov	r1, r10
 238 01dc FFF7FEFF 		bl	tc_init
 239 01e0 4FF6FE7E 		movw	lr, #65534
 240 01e4 4FF6FF70 		movw	r0, #65535
 241 01e8 5146     		mov	r1, r10
 242 01ea 4E4A     		ldr	r2, .L74+52
 243 01ec B2FBF8F2 		udiv	r2, r2, r8
 244 01f0 7245     		cmp	r2, lr
 245 01f2 88BF     		it	hi
 246 01f4 0246     		movhi	r2, r0
 247 01f6 0198     		ldr	r0, [sp, #4]
 248 01f8 FFF7FEFF 		bl	tc_write_rc
 249 01fc 4FF07C51 		mov	r1, #1056964608
 250 0200 2846     		mov	r0, r5
 251 0202 FFF7FEFF 		bl	__aeabi_fcmpge
 252 0206 20B1     		cbz	r0, .L27
 253 0208 029B     		ldr	r3, [sp, #8]
 254 020a 0198     		ldr	r0, [sp, #4]
 255 020c 9B01     		lsls	r3, r3, #6
 256 020e 0422     		movs	r2, #4
 257 0210 C250     		str	r2, [r0, r3]
 258              	.L27:
 259 0212 5146     		mov	r1, r10
 260 0214 0198     		ldr	r0, [sp, #4]
 261 0216 FFF7FEFF 		bl	tc_read_rc
 262 021a FFF7FEFF 		bl	__aeabi_ui2f
 263 021e 2946     		mov	r1, r5
 264 0220 FFF7FEFF 		bl	__aeabi_fmul
 265 0224 FFF7FEFF 		bl	lroundf
 266 0228 A9EB0404 		sub	r4, r9, r4
 267 022c 07EB8407 		add	r7, r7, r4, lsl #2
 268 0230 BB7E     		ldrb	r3, [r7, #26]	@ zero_extendqisi2
 269 0232 80B3     		cbz	r0, .L73
 270 0234 019C     		ldr	r4, [sp, #4]
 271 0236 DB07     		lsls	r3, r3, #31
 272 0238 0246     		mov	r2, r0
 273 023a 5146     		mov	r1, r10
 274 023c 2046     		mov	r0, r4
 275 023e 00F1A480 		bmi	.L34
 276 0242 FFF7FEFF 		bl	tc_write_ra
 277 0246 04EB8A12 		add	r2, r4, r10, lsl #6
 278 024a 5368     		ldr	r3, [r2, #4]
 279 024c 23F47023 		bic	r3, r3, #983040
 280 0250 43F4C023 		orr	r3, r3, #393216
 281 0254 5360     		str	r3, [r2, #4]
 282              	.L33:
 283 0256 D845     		cmp	r8, fp
 284 0258 3FF403AF 		beq	.L2
 285 025c 3046     		mov	r0, r6
ARM GAS  /tmp/ccUmn9sa.s 			page 6


 286 025e FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 287 0262 5146     		mov	r1, r10
 288 0264 0198     		ldr	r0, [sp, #4]
 289 0266 FFF7FEFF 		bl	tc_start
 290 026a FAE6     		b	.L2
 291              	.L69:
 292 026c 2146     		mov	r1, r4
 293 026e 2148     		ldr	r0, .L74+4
 294 0270 FFF7FEFF 		bl	dacc_enable_channel
 295 0274 19E7     		b	.L9
 296              	.L68:
 297 0276 1E20     		movs	r0, #30
 298 0278 FFF7FEFF 		bl	pmc_enable_periph_clk
 299 027c 1D48     		ldr	r0, .L74+4
 300 027e FFF7FEFF 		bl	dacc_reset
 301 0282 3146     		mov	r1, r6
 302 0284 1B48     		ldr	r0, .L74+4
 303 0286 FFF7FEFF 		bl	dacc_set_transfer_mode
 304 028a 4FF48571 		mov	r1, #266
 305 028e 1948     		ldr	r0, .L74+4
 306 0290 FFF7FEFF 		bl	dacc_set_analog_control
 307 0294 FDE6     		b	.L8
 308              	.L73:
 309 0296 019C     		ldr	r4, [sp, #4]
 310 0298 DD07     		lsls	r5, r3, #31
 311 029a 4FF00102 		mov	r2, #1
 312 029e 5146     		mov	r1, r10
 313 02a0 2046     		mov	r0, r4
 314 02a2 7DD4     		bmi	.L32
 315 02a4 FFF7FEFF 		bl	tc_write_ra
 316 02a8 04EB8A12 		add	r2, r4, r10, lsl #6
 317 02ac 5368     		ldr	r3, [r2, #4]
 318 02ae 23F47023 		bic	r3, r3, #983040
 319 02b2 43F42023 		orr	r3, r3, #655360
 320 02b6 5360     		str	r3, [r2, #4]
 321 02b8 CDE7     		b	.L33
 322              	.L55:
 323 02ba 04AB     		add	r3, sp, #16
 324 02bc 1F20     		movs	r0, #31
 325 02be 0292     		str	r2, [sp, #8]
 326 02c0 0193     		str	r3, [sp, #4]
 327 02c2 FFF7FEFF 		bl	pmc_enable_periph_clk
 328 02c6 46F24613 		movw	r3, #24902
 329 02ca DFF834E0 		ldr	lr, .L74+16
 330 02ce 0493     		str	r3, [sp, #16]
 331 02d0 0D48     		ldr	r0, .L74+24
 332 02d2 154B     		ldr	r3, .L74+56
 333 02d4 0199     		ldr	r1, [sp, #4]
 334 02d6 0693     		str	r3, [sp, #24]
 335 02d8 CDF814E0 		str	lr, [sp, #20]
 336 02dc FFF7FEFF 		bl	pwm_init
 337 02e0 094A     		ldr	r2, .L74+24
 338 02e2 C2F820A0 		str	r10, [r2, #32]
 339 02e6 029A     		ldr	r2, [sp, #8]
 340 02e8 0123     		movs	r3, #1
 341 02ea 1370     		strb	r3, [r2]
 342 02ec 06E7     		b	.L15
ARM GAS  /tmp/ccUmn9sa.s 			page 7


 343              	.L75:
 344 02ee 00BF     		.align	2
 345              	.L74:
 346 02f0 00000000 		.word	g_APinDescription
 347 02f4 00C00340 		.word	1073987584
 348 02f8 00F07F45 		.word	1166012416
 349 02fc 00000000 		.word	.LANCHOR1
 350 0300 58466100 		.word	6375000
 351 0304 00000000 		.word	.LANCHOR2
 352 0308 00000240 		.word	1073872896
 353 030c 00000000 		.word	.LANCHOR3
 354 0310 00000000 		.word	.LANCHOR4
 355 0314 00000000 		.word	.LANCHOR5
 356 0318 00000000 		.word	.LANCHOR6
 357 031c 00000000 		.word	.LANCHOR7
 358 0320 03C44A4A 		.word	1246413827
 359 0324 1C4E0E00 		.word	937500
 360 0328 000E2707 		.word	120000000
 361 032c 00000000 		.word	.LANCHOR0
 362              	.L58:
 363 0330 019D     		ldr	r5, [sp, #4]
 364 0332 2822     		movs	r2, #40
 365 0334 0021     		movs	r1, #0
 366 0336 2846     		mov	r0, r5
 367 0338 2646     		mov	r6, r4
 368 033a 039C     		ldr	r4, [sp, #12]
 369 033c FFF7FEFF 		bl	memset
 370 0340 B8F1600F 		cmp	r8, #96
 371 0344 8CBF     		ite	hi
 372 0346 0C23     		movhi	r3, #12
 373 0348 0B23     		movls	r3, #11
 374 034a 029A     		ldr	r2, [sp, #8]
 375 034c 2348     		ldr	r0, .L76
 376 034e 0792     		str	r2, [sp, #28]
 377 0350 2946     		mov	r1, r5
 378 0352 A9EB0404 		sub	r4, r9, r4
 379 0356 0593     		str	r3, [sp, #20]
 380 0358 A400     		lsls	r4, r4, #2
 381 035a 0496     		str	r6, [sp, #16]
 382 035c CDF820A0 		str	r10, [sp, #32]
 383 0360 FFF7FEFF 		bl	pwm_channel_init
 384 0364 3146     		mov	r1, r6
 385 0366 1D48     		ldr	r0, .L76
 386 0368 FFF7FEFF 		bl	pwm_channel_enable
 387 036c 3919     		adds	r1, r7, r4
 388 036e 3859     		ldr	r0, [r7, r4]
 389 0370 0B69     		ldr	r3, [r1, #16]
 390 0372 4A68     		ldr	r2, [r1, #4]
 391 0374 C968     		ldr	r1, [r1, #12]
 392 0376 FFF7FEFF 		bl	pio_configure
 393 037a 72E6     		b	.L2
 394              	.L70:
 395 037c 184B     		ldr	r3, .L76+4
 396 037e 23F81680 		strh	r8, [r3, r6, lsl #1]	@ movhi
 397 0382 61E6     		b	.L13
 398              	.L72:
 399 0384 22F81380 		strh	r8, [r2, r3, lsl #1]	@ movhi
ARM GAS  /tmp/ccUmn9sa.s 			page 8


 400 0388 5EE6     		b	.L13
 401              	.L34:
 402 038a FFF7FEFF 		bl	tc_write_rb
 403 038e 04EB8A12 		add	r2, r4, r10, lsl #6
 404 0392 5368     		ldr	r3, [r2, #4]
 405 0394 23F07063 		bic	r3, r3, #251658240
 406 0398 43F0C063 		orr	r3, r3, #100663296
 407 039c 5360     		str	r3, [r2, #4]
 408 039e 5AE7     		b	.L33
 409              	.L32:
 410 03a0 FFF7FEFF 		bl	tc_write_rb
 411 03a4 04EB8A12 		add	r2, r4, r10, lsl #6
 412 03a8 5368     		ldr	r3, [r2, #4]
 413 03aa 23F07063 		bic	r3, r3, #251658240
 414 03ae 43F02063 		orr	r3, r3, #167772160
 415 03b2 5360     		str	r3, [r2, #4]
 416 03b4 4FE7     		b	.L33
 417              	.L14:
 418 03b6 0B4B     		ldr	r3, .L76+8
 419 03b8 0496     		str	r6, [sp, #16]
 420 03ba 33F81600 		ldrh	r0, [r3, r6, lsl #1]
 421 03be 0890     		str	r0, [sp, #32]
 422 03c0 FFF7FEFF 		bl	__aeabi_ui2f
 423 03c4 2946     		mov	r1, r5
 424 03c6 FFF7FEFF 		bl	__aeabi_fmul
 425 03ca FFF7FEFF 		bl	lroundf
 426 03ce 04A9     		add	r1, sp, #16
 427 03d0 0246     		mov	r2, r0
 428 03d2 0248     		ldr	r0, .L76
 429 03d4 FFF7FEFF 		bl	pwm_channel_update_duty
 430 03d8 43E6     		b	.L2
 431              	.L77:
 432 03da 00BF     		.align	2
 433              	.L76:
 434 03dc 00000240 		.word	1073872896
 435 03e0 00000000 		.word	.LANCHOR0
 436 03e4 00000000 		.word	.LANCHOR2
 437              		.size	_Z9AnalogOuthft, .-_Z9AnalogOuthft
 438              		.global	maxPwmLoopCount
 439              		.section	.bss._ZL10PWMEnabled,"aw",%nobits
 440              		.set	.LANCHOR1,. + 0
 441              		.type	_ZL10PWMEnabled, %object
 442              		.size	_ZL10PWMEnabled, 1
 443              	_ZL10PWMEnabled:
 444 0000 00       		.space	1
 445              		.section	.bss._ZL10TCChanFreq,"aw",%nobits
 446              		.align	2
 447              		.set	.LANCHOR4,. + 0
 448              		.type	_ZL10TCChanFreq, %object
 449              		.size	_ZL10TCChanFreq, 12
 450              	_ZL10TCChanFreq:
 451 0000 00000000 		.space	12
 451      00000000 
 451      00000000 
 452              		.section	.bss._ZL11PWMChanFreq,"aw",%nobits
 453              		.align	2
 454              		.set	.LANCHOR0,. + 0
ARM GAS  /tmp/ccUmn9sa.s 			page 9


 455              		.type	_ZL11PWMChanFreq, %object
 456              		.size	_ZL11PWMChanFreq, 8
 457              	_ZL11PWMChanFreq:
 458 0000 00000000 		.space	8
 458      00000000 
 459              		.section	.bss._ZL13PWMChanPeriod,"aw",%nobits
 460              		.align	2
 461              		.set	.LANCHOR2,. + 0
 462              		.type	_ZL13PWMChanPeriod, %object
 463              		.size	_ZL13PWMChanPeriod, 8
 464              	_ZL13PWMChanPeriod:
 465 0000 00000000 		.space	8
 465      00000000 
 466              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 467              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 468              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 469              	_ZL28cpu_irq_prev_interrupt_state:
 470 0000 00       		.space	1
 471              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 472              		.align	2
 473              		.type	_ZL32cpu_irq_critical_section_counter, %object
 474              		.size	_ZL32cpu_irq_critical_section_counter, 4
 475              	_ZL32cpu_irq_critical_section_counter:
 476 0000 00000000 		.space	4
 477              		.section	.bss.maxPwmLoopCount,"aw",%nobits
 478              		.align	2
 479              		.set	.LANCHOR3,. + 0
 480              		.type	maxPwmLoopCount, %object
 481              		.size	maxPwmLoopCount, 4
 482              	maxPwmLoopCount:
 483 0000 00000000 		.space	4
 484              		.section	.rodata._ZL11channelToId,"a",%progbits
 485              		.align	2
 486              		.set	.LANCHOR7,. + 0
 487              		.type	_ZL11channelToId, %object
 488              		.size	_ZL11channelToId, 6
 489              	_ZL11channelToId:
 490 0000 17       		.byte	23
 491 0001 18       		.byte	24
 492 0002 19       		.byte	25
 493 0003 1A       		.byte	26
 494 0004 1B       		.byte	27
 495 0005 1C       		.byte	28
 496              		.section	.rodata._ZL11channelToTC,"a",%progbits
 497              		.align	2
 498              		.set	.LANCHOR5,. + 0
 499              		.type	_ZL11channelToTC, %object
 500              		.size	_ZL11channelToTC, 24
 501              	_ZL11channelToTC:
 502 0000 00000140 		.word	1073807360
 503 0004 00000140 		.word	1073807360
 504 0008 00000140 		.word	1073807360
 505 000c 00400140 		.word	1073823744
 506 0010 00400140 		.word	1073823744
 507 0014 00400140 		.word	1073823744
 508              		.section	.rodata._ZL13channelToChNo,"a",%progbits
 509              		.align	2
ARM GAS  /tmp/ccUmn9sa.s 			page 10


 510              		.set	.LANCHOR6,. + 0
 511              		.type	_ZL13channelToChNo, %object
 512              		.size	_ZL13channelToChNo, 6
 513              	_ZL13channelToChNo:
 514 0000 00       		.byte	0
 515 0001 01       		.byte	1
 516 0002 02       		.byte	2
 517 0003 00       		.byte	0
 518 0004 01       		.byte	1
 519 0005 02       		.byte	2
 520              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
