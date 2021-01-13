ARM GAS  /tmp/cc4Zlvdf.s 			page 1


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
  45 0000 6D28     		cmp	r0, #109
  46 0002 31D8     		bhi	.L59
  47 0004 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  48 0008 0446     		mov	r4, r0
  49 000a 8FB0     		sub	sp, sp, #60
  50 000c 0846     		mov	r0, r1
  51 000e 1746     		mov	r7, r2
  52 0010 0D46     		mov	r5, r1
  53 0012 FFF7FEFF 		bl	__aeabi_fcmpun
  54 0016 20BB     		cbnz	r0, .L2
  55 0018 4FF07E51 		mov	r1, #1065353216
  56 001c 2846     		mov	r0, r5
  57 001e FFF7FEFF 		bl	__aeabi_fcmplt
ARM GAS  /tmp/cc4Zlvdf.s 			page 2


  58 0022 10BB     		cbnz	r0, .L63
  59 0024 4FF07E55 		mov	r5, #1065353216
  60              	.L35:
  61 0028 4FEAC409 		lsl	r9, r4, #3
  62 002c DFF88483 		ldr	r8, .L73+60
  63 0030 A9EB0406 		sub	r6, r9, r4
  64 0034 08EB8606 		add	r6, r8, r6, lsl #2
  65 0038 7369     		ldr	r3, [r6, #20]
  66 003a 9806     		lsls	r0, r3, #26
  67 003c 1DD4     		bmi	.L64
  68 003e 1A07     		lsls	r2, r3, #28
  69 0040 46D4     		bmi	.L65
  70 0042 DB06     		lsls	r3, r3, #27
  71 0044 00F1AB80 		bmi	.L66
  72              	.L13:
  73 0048 4FF07C51 		mov	r1, #1056964608
  74 004c 2846     		mov	r0, r5
  75 004e FFF7FEFF 		bl	__aeabi_fcmplt
  76 0052 0028     		cmp	r0, #0
  77 0054 14BF     		ite	ne
  78 0056 0321     		movne	r1, #3
  79 0058 0421     		moveq	r1, #4
  80 005a 2046     		mov	r0, r4
  81 005c 0022     		movs	r2, #0
  82 005e FFF7FEFF 		bl	pinModeDuet
  83              	.L2:
  84 0062 0FB0     		add	sp, sp, #60
  85              		@ sp needed
  86 0064 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
  87              	.L59:
  88 0068 7047     		bx	lr
  89              	.L63:
  90 006a 0021     		movs	r1, #0
  91 006c 2846     		mov	r0, r5
  92 006e FFF7FEFF 		bl	__aeabi_fcmpgt
  93 0072 0028     		cmp	r0, #0
  94 0074 D8D1     		bne	.L35
  95 0076 0025     		movs	r5, #0
  96 0078 D6E7     		b	.L35
  97              	.L64:
  98 007a 96F91840 		ldrsb	r4, [r6, #24]
  99 007e BE48     		ldr	r0, .L73
 100 0080 203C     		subs	r4, r4, #32
 101 0082 18BF     		it	ne
 102 0084 0124     		movne	r4, #1
 103 0086 FFF7FEFF 		bl	dacc_get_channel_status
 104 008a 0646     		mov	r6, r0
 105 008c 0028     		cmp	r0, #0
 106 008e 00F0EA80 		beq	.L67
 107              	.L8:
 108 0092 2146     		mov	r1, r4
 109 0094 B848     		ldr	r0, .L73
 110 0096 FFF7FEFF 		bl	dacc_set_channel_selection
 111 009a B748     		ldr	r0, .L73
 112 009c FFF7FEFF 		bl	dacc_get_channel_status
 113 00a0 0123     		movs	r3, #1
 114 00a2 A340     		lsls	r3, r3, r4
ARM GAS  /tmp/cc4Zlvdf.s 			page 3


 115 00a4 0342     		tst	r3, r0
 116 00a6 00F0D980 		beq	.L68
 117              	.L9:
 118 00aa B449     		ldr	r1, .L73+4
 119 00ac 2846     		mov	r0, r5
 120 00ae FFF7FEFF 		bl	__aeabi_fmul
 121 00b2 FFF7FEFF 		bl	lroundf
 122 00b6 0146     		mov	r1, r0
 123 00b8 AF48     		ldr	r0, .L73
 124 00ba FFF7FEFF 		bl	dacc_write_conversion_data
 125 00be AE4C     		ldr	r4, .L73
 126              	.L10:
 127 00c0 2046     		mov	r0, r4
 128 00c2 FFF7FEFF 		bl	dacc_get_interrupt_status
 129 00c6 8107     		lsls	r1, r0, #30
 130 00c8 FAD5     		bpl	.L10
 131 00ca 0FB0     		add	sp, sp, #60
 132              		@ sp needed
 133 00cc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 134              	.L65:
 135 00d0 96F91960 		ldrsb	r6, [r6, #25]
 136 00d4 002F     		cmp	r7, #0
 137 00d6 00F03281 		beq	.L69
 138 00da DFF8D4B2 		ldr	fp, .L73+56
 139 00de 3BF81630 		ldrh	r3, [fp, r6, lsl #1]
 140 00e2 BB42     		cmp	r3, r7
 141 00e4 00F06881 		beq	.L14
 142 00e8 A54B     		ldr	r3, .L73+8
 143 00ea 93F800A0 		ldrb	r10, [r3]	@ zero_extendqisi2
 144 00ee BAF1000F 		cmp	r10, #0
 145 00f2 00F0E580 		beq	.L54
 146 00f6 04AB     		add	r3, sp, #16
 147 00f8 0293     		str	r3, [sp, #8]
 148              	.L15:
 149 00fa 46F2461A 		movw	r10, #24902
 150 00fe A14B     		ldr	r3, .L73+12
 151 0100 602F     		cmp	r7, #96
 152 0102 88BF     		it	hi
 153 0104 9A46     		movhi	r10, r3
 154 0106 BAFBF7FA 		udiv	r10, r10, r7
 155 010a 5046     		mov	r0, r10
 156 010c FFF7FEFF 		bl	__aeabi_ui2f
 157 0110 2946     		mov	r1, r5
 158 0112 FFF7FEFF 		bl	__aeabi_fmul
 159 0116 FFF7FEFF 		bl	lroundf
 160 011a 9B4B     		ldr	r3, .L73+16
 161 011c 0190     		str	r0, [sp, #4]
 162 011e 9B48     		ldr	r0, .L73+20
 163 0120 3146     		mov	r1, r6
 164 0122 2BF81670 		strh	r7, [fp, r6, lsl #1]	@ movhi
 165 0126 23F816A0 		strh	r10, [r3, r6, lsl #1]	@ movhi
 166 012a 00EB461B 		add	fp, r0, r6, lsl #5
 167 012e FFF7FEFF 		bl	pwm_channel_disable
 168 0132 0023     		movs	r3, #0
 169 0134 0394     		str	r4, [sp, #12]
 170 0136 3446     		mov	r4, r6
 171 0138 1E46     		mov	r6, r3
ARM GAS  /tmp/cc4Zlvdf.s 			page 4


 172              	.L17:
 173 013a DBF81452 		ldr	r5, [fp, #532]
 174 013e ADB2     		uxth	r5, r5
 175 0140 AA45     		cmp	r10, r5
 176 0142 00F2D580 		bhi	.L57
 177 0146 4FF6F672 		movw	r2, #65526
 178 014a 9542     		cmp	r5, r2
 179 014c 00F2D080 		bhi	.L57
 180 0150 0C21     		movs	r1, #12
 181 0152 8E4B     		ldr	r3, .L73+20
 182 0154 04F11002 		add	r2, r4, #16
 183 0158 5201     		lsls	r2, r2, #5
 184 015a 0235     		adds	r5, r5, #2
 185 015c CBF80C52 		str	r5, [fp, #524]
 186 0160 1846     		mov	r0, r3
 187 0162 9950     		str	r1, [r3, r2]
 188 0164 2146     		mov	r1, r4
 189 0166 FFF7FEFF 		bl	pwm_channel_enable
 190 016a 4FF47A71 		mov	r1, #1000
 191 016e 03E0     		b	.L23
 192              	.L70:
 193 0170 9D42     		cmp	r5, r3
 194 0172 06D3     		bcc	.L22
 195 0174 0139     		subs	r1, r1, #1
 196 0176 04D0     		beq	.L22
 197              	.L23:
 198 0178 DBF81432 		ldr	r3, [fp, #532]
 199 017c 9BB2     		uxth	r3, r3
 200 017e 9A45     		cmp	r10, r3
 201 0180 F6D9     		bls	.L70
 202              	.L22:
 203 0182 0136     		adds	r6, r6, #1
 204 0184 052E     		cmp	r6, #5
 205 0186 00F0B380 		beq	.L57
 206 018a 2146     		mov	r1, r4
 207 018c 7F48     		ldr	r0, .L73+20
 208 018e FFF7FEFF 		bl	pwm_channel_disable
 209 0192 7F4B     		ldr	r3, .L73+24
 210 0194 1A68     		ldr	r2, [r3]
 211 0196 B242     		cmp	r2, r6
 212 0198 38BF     		it	cc
 213 019a 1E60     		strcc	r6, [r3]
 214 019c CDE7     		b	.L17
 215              	.L66:
 216 019e 96F91A30 		ldrsb	r3, [r6, #26]
 217 01a2 7C4A     		ldr	r2, .L73+28
 218 01a4 5B08     		lsrs	r3, r3, #1
 219 01a6 002F     		cmp	r7, #0
 220 01a8 00F0CD80 		beq	.L71
 221 01ac 7A48     		ldr	r0, .L73+32
 222 01ae 32F813B0 		ldrh	fp, [r2, r3, lsl #1]
 223 01b2 7A49     		ldr	r1, .L73+36
 224 01b4 50F82300 		ldr	r0, [r0, r3, lsl #2]
 225 01b8 5F45     		cmp	r7, fp
 226 01ba 0190     		str	r0, [sp, #4]
 227 01bc 11F803A0 		ldrb	r10, [r1, r3]	@ zero_extendqisi2
 228 01c0 1DD0     		beq	.L27
ARM GAS  /tmp/cc4Zlvdf.s 			page 5


 229 01c2 7749     		ldr	r1, .L73+40
 230 01c4 22F81370 		strh	r7, [r2, r3, lsl #1]	@ movhi
 231 01c8 C85C     		ldrb	r0, [r1, r3]	@ zero_extendqisi2
 232 01ca 0293     		str	r3, [sp, #8]
 233 01cc FFF7FEFF 		bl	pmc_enable_periph_clk
 234 01d0 744A     		ldr	r2, .L73+44
 235 01d2 5146     		mov	r1, r10
 236 01d4 0198     		ldr	r0, [sp, #4]
 237 01d6 FFF7FEFF 		bl	tc_init
 238 01da 734A     		ldr	r2, .L73+48
 239 01dc 5146     		mov	r1, r10
 240 01de 0198     		ldr	r0, [sp, #4]
 241 01e0 B2FBF7F2 		udiv	r2, r2, r7
 242 01e4 FFF7FEFF 		bl	tc_write_rc
 243 01e8 4FF07C51 		mov	r1, #1056964608
 244 01ec 2846     		mov	r0, r5
 245 01ee FFF7FEFF 		bl	__aeabi_fcmpge
 246 01f2 20B1     		cbz	r0, .L27
 247 01f4 0422     		movs	r2, #4
 248 01f6 029B     		ldr	r3, [sp, #8]
 249 01f8 0198     		ldr	r0, [sp, #4]
 250 01fa 9B01     		lsls	r3, r3, #6
 251 01fc C250     		str	r2, [r0, r3]
 252              	.L27:
 253 01fe 5146     		mov	r1, r10
 254 0200 0198     		ldr	r0, [sp, #4]
 255 0202 FFF7FEFF 		bl	tc_read_rc
 256 0206 FFF7FEFF 		bl	__aeabi_ui2f
 257 020a 2946     		mov	r1, r5
 258 020c FFF7FEFF 		bl	__aeabi_fmul
 259 0210 FFF7FEFF 		bl	lroundf
 260 0214 A9EB0404 		sub	r4, r9, r4
 261 0218 08EB8408 		add	r8, r8, r4, lsl #2
 262 021c 98F81A30 		ldrb	r3, [r8, #26]	@ zero_extendqisi2
 263 0220 0028     		cmp	r0, #0
 264 0222 3BD0     		beq	.L72
 265 0224 019C     		ldr	r4, [sp, #4]
 266 0226 DB07     		lsls	r3, r3, #31
 267 0228 0246     		mov	r2, r0
 268 022a 5146     		mov	r1, r10
 269 022c 2046     		mov	r0, r4
 270 022e 00F18D80 		bmi	.L33
 271 0232 FFF7FEFF 		bl	tc_write_ra
 272 0236 04EB8A12 		add	r2, r4, r10, lsl #6
 273 023a 5368     		ldr	r3, [r2, #4]
 274 023c 23F47023 		bic	r3, r3, #983040
 275 0240 43F4C023 		orr	r3, r3, #393216
 276 0244 5360     		str	r3, [r2, #4]
 277              	.L32:
 278 0246 5F45     		cmp	r7, fp
 279 0248 3FF40BAF 		beq	.L2
 280 024c 3046     		mov	r0, r6
 281 024e FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 282 0252 5146     		mov	r1, r10
 283 0254 0198     		ldr	r0, [sp, #4]
 284 0256 FFF7FEFF 		bl	tc_start
 285 025a 02E7     		b	.L2
ARM GAS  /tmp/cc4Zlvdf.s 			page 6


 286              	.L68:
 287 025c 2146     		mov	r1, r4
 288 025e 4648     		ldr	r0, .L73
 289 0260 FFF7FEFF 		bl	dacc_enable_channel
 290 0264 21E7     		b	.L9
 291              	.L67:
 292 0266 2620     		movs	r0, #38
 293 0268 FFF7FEFF 		bl	pmc_enable_periph_clk
 294 026c 4248     		ldr	r0, .L73
 295 026e FFF7FEFF 		bl	dacc_reset
 296 0272 3146     		mov	r1, r6
 297 0274 4048     		ldr	r0, .L73
 298 0276 FFF7FEFF 		bl	dacc_set_transfer_mode
 299 027a 3246     		mov	r2, r6
 300 027c 3146     		mov	r1, r6
 301 027e 3E48     		ldr	r0, .L73
 302 0280 FFF7FEFF 		bl	dacc_set_power_save
 303 0284 3246     		mov	r2, r6
 304 0286 1023     		movs	r3, #16
 305 0288 0821     		movs	r1, #8
 306 028a 3B48     		ldr	r0, .L73
 307 028c FFF7FEFF 		bl	dacc_set_timing
 308 0290 4FF48571 		mov	r1, #266
 309 0294 3848     		ldr	r0, .L73
 310 0296 FFF7FEFF 		bl	dacc_set_analog_control
 311 029a FAE6     		b	.L8
 312              	.L72:
 313 029c 019C     		ldr	r4, [sp, #4]
 314 029e DD07     		lsls	r5, r3, #31
 315 02a0 4FF00102 		mov	r2, #1
 316 02a4 5146     		mov	r1, r10
 317 02a6 2046     		mov	r0, r4
 318 02a8 5BD4     		bmi	.L31
 319 02aa FFF7FEFF 		bl	tc_write_ra
 320 02ae 04EB8A12 		add	r2, r4, r10, lsl #6
 321 02b2 5368     		ldr	r3, [r2, #4]
 322 02b4 23F47023 		bic	r3, r3, #983040
 323 02b8 43F42023 		orr	r3, r3, #655360
 324 02bc 5360     		str	r3, [r2, #4]
 325 02be C2E7     		b	.L32
 326              	.L54:
 327 02c0 2420     		movs	r0, #36
 328 02c2 0193     		str	r3, [sp, #4]
 329 02c4 FFF7FEFF 		bl	pmc_enable_periph_clk
 330 02c8 46F24610 		movw	r0, #24902
 331 02cc 2D49     		ldr	r1, .L73+12
 332 02ce 04AB     		add	r3, sp, #16
 333 02d0 364A     		ldr	r2, .L73+52
 334 02d2 0490     		str	r0, [sp, #16]
 335 02d4 0591     		str	r1, [sp, #20]
 336 02d6 2D48     		ldr	r0, .L73+20
 337 02d8 1946     		mov	r1, r3
 338 02da 0293     		str	r3, [sp, #8]
 339 02dc 0692     		str	r2, [sp, #24]
 340 02de FFF7FEFF 		bl	pwm_init
 341 02e2 0122     		movs	r2, #1
 342 02e4 294B     		ldr	r3, .L73+20
ARM GAS  /tmp/cc4Zlvdf.s 			page 7


 343 02e6 C3F820A0 		str	r10, [r3, #32]
 344 02ea 019B     		ldr	r3, [sp, #4]
 345 02ec 1A70     		strb	r2, [r3]
 346 02ee 04E7     		b	.L15
 347              	.L57:
 348 02f0 029D     		ldr	r5, [sp, #8]
 349 02f2 2822     		movs	r2, #40
 350 02f4 0021     		movs	r1, #0
 351 02f6 2846     		mov	r0, r5
 352 02f8 2646     		mov	r6, r4
 353 02fa 039C     		ldr	r4, [sp, #12]
 354 02fc FFF7FEFF 		bl	memset
 355 0300 602F     		cmp	r7, #96
 356 0302 8CBF     		ite	hi
 357 0304 0C23     		movhi	r3, #12
 358 0306 0B23     		movls	r3, #11
 359 0308 019A     		ldr	r2, [sp, #4]
 360 030a 2946     		mov	r1, r5
 361 030c A9EB0404 		sub	r4, r9, r4
 362 0310 1E48     		ldr	r0, .L73+20
 363 0312 0792     		str	r2, [sp, #28]
 364 0314 0593     		str	r3, [sp, #20]
 365 0316 A400     		lsls	r4, r4, #2
 366 0318 0496     		str	r6, [sp, #16]
 367 031a CDF820A0 		str	r10, [sp, #32]
 368 031e FFF7FEFF 		bl	pwm_channel_init
 369 0322 3146     		mov	r1, r6
 370 0324 1948     		ldr	r0, .L73+20
 371 0326 FFF7FEFF 		bl	pwm_channel_enable
 372 032a 08EB0401 		add	r1, r8, r4
 373 032e 0B69     		ldr	r3, [r1, #16]
 374 0330 4A68     		ldr	r2, [r1, #4]
 375 0332 58F80400 		ldr	r0, [r8, r4]
 376 0336 C968     		ldr	r1, [r1, #12]
 377 0338 FFF7FEFF 		bl	pio_configure
 378 033c 91E6     		b	.L2
 379              	.L69:
 380 033e 1C4B     		ldr	r3, .L73+56
 381 0340 23F81670 		strh	r7, [r3, r6, lsl #1]	@ movhi
 382 0344 80E6     		b	.L13
 383              	.L71:
 384 0346 22F81370 		strh	r7, [r2, r3, lsl #1]	@ movhi
 385 034a 7DE6     		b	.L13
 386              	.L33:
 387 034c FFF7FEFF 		bl	tc_write_rb
 388 0350 04EB8A12 		add	r2, r4, r10, lsl #6
 389 0354 5368     		ldr	r3, [r2, #4]
 390 0356 23F07063 		bic	r3, r3, #251658240
 391 035a 43F0C063 		orr	r3, r3, #100663296
 392 035e 5360     		str	r3, [r2, #4]
 393 0360 71E7     		b	.L32
 394              	.L31:
 395 0362 FFF7FEFF 		bl	tc_write_rb
 396 0366 04EB8A12 		add	r2, r4, r10, lsl #6
 397 036a 5368     		ldr	r3, [r2, #4]
 398 036c 23F07063 		bic	r3, r3, #251658240
 399 0370 43F02063 		orr	r3, r3, #167772160
ARM GAS  /tmp/cc4Zlvdf.s 			page 8


 400 0374 5360     		str	r3, [r2, #4]
 401 0376 66E7     		b	.L32
 402              	.L74:
 403              		.align	2
 404              	.L73:
 405 0378 00800C40 		.word	1074561024
 406 037c 00F07F45 		.word	1166012416
 407 0380 00000000 		.word	.LANCHOR1
 408 0384 58466100 		.word	6375000
 409 0388 00000000 		.word	.LANCHOR2
 410 038c 00400940 		.word	1074348032
 411 0390 00000000 		.word	.LANCHOR3
 412 0394 00000000 		.word	.LANCHOR4
 413 0398 00000000 		.word	.LANCHOR5
 414 039c 00000000 		.word	.LANCHOR6
 415 03a0 00000000 		.word	.LANCHOR7
 416 03a4 01C44A4A 		.word	1246413825
 417 03a8 A037A000 		.word	10500000
 418 03ac 00BD0105 		.word	84000000
 419 03b0 00000000 		.word	.LANCHOR0
 420 03b4 00000000 		.word	g_APinDescription
 421              	.L14:
 422 03b8 094B     		ldr	r3, .L75
 423 03ba 0496     		str	r6, [sp, #16]
 424 03bc 33F81630 		ldrh	r3, [r3, r6, lsl #1]
 425 03c0 1846     		mov	r0, r3
 426 03c2 0893     		str	r3, [sp, #32]
 427 03c4 FFF7FEFF 		bl	__aeabi_ui2f
 428 03c8 2946     		mov	r1, r5
 429 03ca FFF7FEFF 		bl	__aeabi_fmul
 430 03ce FFF7FEFF 		bl	lroundf
 431 03d2 04A9     		add	r1, sp, #16
 432 03d4 0246     		mov	r2, r0
 433 03d6 0348     		ldr	r0, .L75+4
 434 03d8 FFF7FEFF 		bl	pwm_channel_update_duty
 435 03dc 41E6     		b	.L2
 436              	.L76:
 437 03de 00BF     		.align	2
 438              	.L75:
 439 03e0 00000000 		.word	.LANCHOR2
 440 03e4 00400940 		.word	1074348032
 441              		.size	_Z9AnalogOuthft, .-_Z9AnalogOuthft
 442              		.global	maxPwmLoopCount
 443              		.section	.bss._ZL10PWMEnabled,"aw",%nobits
 444              		.set	.LANCHOR1,. + 0
 445              		.type	_ZL10PWMEnabled, %object
 446              		.size	_ZL10PWMEnabled, 1
 447              	_ZL10PWMEnabled:
 448 0000 00       		.space	1
 449              		.section	.bss._ZL10TCChanFreq,"aw",%nobits
 450              		.align	2
 451              		.set	.LANCHOR4,. + 0
 452              		.type	_ZL10TCChanFreq, %object
 453              		.size	_ZL10TCChanFreq, 18
 454              	_ZL10TCChanFreq:
 455 0000 00000000 		.space	18
 455      00000000 
ARM GAS  /tmp/cc4Zlvdf.s 			page 9


 455      00000000 
 455      00000000 
 455      0000
 456              		.section	.bss._ZL11PWMChanFreq,"aw",%nobits
 457              		.align	2
 458              		.set	.LANCHOR0,. + 0
 459              		.type	_ZL11PWMChanFreq, %object
 460              		.size	_ZL11PWMChanFreq, 16
 461              	_ZL11PWMChanFreq:
 462 0000 00000000 		.space	16
 462      00000000 
 462      00000000 
 462      00000000 
 463              		.section	.bss._ZL13PWMChanPeriod,"aw",%nobits
 464              		.align	2
 465              		.set	.LANCHOR2,. + 0
 466              		.type	_ZL13PWMChanPeriod, %object
 467              		.size	_ZL13PWMChanPeriod, 16
 468              	_ZL13PWMChanPeriod:
 469 0000 00000000 		.space	16
 469      00000000 
 469      00000000 
 469      00000000 
 470              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 471              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 472              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 473              	_ZL28cpu_irq_prev_interrupt_state:
 474 0000 00       		.space	1
 475              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 476              		.align	2
 477              		.type	_ZL32cpu_irq_critical_section_counter, %object
 478              		.size	_ZL32cpu_irq_critical_section_counter, 4
 479              	_ZL32cpu_irq_critical_section_counter:
 480 0000 00000000 		.space	4
 481              		.section	.bss.maxPwmLoopCount,"aw",%nobits
 482              		.align	2
 483              		.set	.LANCHOR3,. + 0
 484              		.type	maxPwmLoopCount, %object
 485              		.size	maxPwmLoopCount, 4
 486              	maxPwmLoopCount:
 487 0000 00000000 		.space	4
 488              		.section	.rodata._ZL11channelToId,"a",%progbits
 489              		.align	2
 490              		.set	.LANCHOR7,. + 0
 491              		.type	_ZL11channelToId, %object
 492              		.size	_ZL11channelToId, 9
 493              	_ZL11channelToId:
 494 0000 1B       		.byte	27
 495 0001 1C       		.byte	28
 496 0002 1D       		.byte	29
 497 0003 1E       		.byte	30
 498 0004 1F       		.byte	31
 499 0005 20       		.byte	32
 500 0006 21       		.byte	33
 501 0007 22       		.byte	34
 502 0008 23       		.byte	35
 503              		.section	.rodata._ZL11channelToTC,"a",%progbits
ARM GAS  /tmp/cc4Zlvdf.s 			page 10


 504              		.align	2
 505              		.set	.LANCHOR5,. + 0
 506              		.type	_ZL11channelToTC, %object
 507              		.size	_ZL11channelToTC, 36
 508              	_ZL11channelToTC:
 509 0000 00000840 		.word	1074266112
 510 0004 00000840 		.word	1074266112
 511 0008 00000840 		.word	1074266112
 512 000c 00400840 		.word	1074282496
 513 0010 00400840 		.word	1074282496
 514 0014 00400840 		.word	1074282496
 515 0018 00800840 		.word	1074298880
 516 001c 00800840 		.word	1074298880
 517 0020 00800840 		.word	1074298880
 518              		.section	.rodata._ZL13channelToChNo,"a",%progbits
 519              		.align	2
 520              		.set	.LANCHOR6,. + 0
 521              		.type	_ZL13channelToChNo, %object
 522              		.size	_ZL13channelToChNo, 9
 523              	_ZL13channelToChNo:
 524 0000 00       		.byte	0
 525 0001 01       		.byte	1
 526 0002 02       		.byte	2
 527 0003 00       		.byte	0
 528 0004 01       		.byte	1
 529 0005 02       		.byte	2
 530 0006 00       		.byte	0
 531 0007 01       		.byte	1
 532 0008 02       		.byte	2
 533              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
