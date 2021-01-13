ARM GAS  /tmp/ccSplm3C.s 			page 1


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
  13              		.file	"AnalogOut.cpp"
  14              		.section	.text._Z13AnalogOutInitv,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_Z13AnalogOutInitv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_Z13AnalogOutInitv, %function
  23              	_Z13AnalogOutInitv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 7047     		bx	lr
  28              		.size	_Z13AnalogOutInitv, .-_Z13AnalogOutInitv
  29 0002 00BF     		.section	.text._Z9AnalogOuthft,"ax",%progbits
  30              		.align	1
  31              		.p2align 2,,3
  32              		.global	_Z9AnalogOuthft
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu fpv4-sp-d16
  37              		.type	_Z9AnalogOuthft, %function
  38              	_Z9AnalogOuthft:
  39              		@ args = 0, pretend = 0, frame = 80
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41 0000 6928     		cmp	r0, #105
  42 0002 3BD8     		bhi	.L59
  43 0004 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  44 0008 2DED028B 		vpush.64	{d8}
  45 000c B4EE400A 		vcmp.f32	s0, s0
  46 0010 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  47 0014 95B0     		sub	sp, sp, #84
  48 0016 B0EE408A 		vmov.f32	s16, s0
  49 001a 2AD6     		bvs	.L2
  50 001c F7EE007A 		vmov.f32	s15, #1.0e+0
  51 0020 B4EEE70A 		vcmpe.f32	s0, s15
  52 0024 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  53 0028 0446     		mov	r4, r0
  54 002a 8946     		mov	r9, r1
  55 002c 27D4     		bmi	.L63
  56 002e B0EE678A 		vmov.f32	s16, s15
  57              	.L35:
ARM GAS  /tmp/ccSplm3C.s 			page 2


  58 0032 4FEAC40B 		lsl	fp, r4, #3
  59 0036 DFF8A083 		ldr	r8, .L73+60
  60 003a ABEB0402 		sub	r2, fp, r4
  61 003e 08EB8202 		add	r2, r8, r2, lsl #2
  62 0042 C4EBC401 		rsb	r1, r4, r4, lsl #3
  63 0046 5069     		ldr	r0, [r2, #20]
  64 0048 8606     		lsls	r6, r0, #26
  65 004a 1546     		mov	r5, r2
  66 004c 21D4     		bmi	.L64
  67 004e 0707     		lsls	r7, r0, #28
  68 0050 4DD4     		bmi	.L65
  69 0052 C606     		lsls	r6, r0, #27
  70 0054 00F1BE80 		bmi	.L66
  71              	.L13:
  72 0058 F6EE007A 		vmov.f32	s15, #5.0e-1
  73 005c B4EEE78A 		vcmpe.f32	s16, s15
  74 0060 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  75 0064 2046     		mov	r0, r4
  76 0066 4CBF     		ite	mi
  77 0068 0321     		movmi	r1, #3
  78 006a 0421     		movpl	r1, #4
  79 006c 0022     		movs	r2, #0
  80 006e FFF7FEFF 		bl	pinModeDuet
  81              	.L2:
  82 0072 15B0     		add	sp, sp, #84
  83              		@ sp needed
  84 0074 BDEC028B 		vldm	sp!, {d8}
  85 0078 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
  86              	.L59:
  87 007c 7047     		bx	lr
  88              	.L63:
  89 007e B5EEC00A 		vcmpe.f32	s0, #0
  90 0082 DFEDC67A 		vldr.32	s15, .L73
  91 0086 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  92 008a D8BF     		it	le
  93 008c B0EE678A 		vmovle.f32	s16, s15
  94 0090 CFE7     		b	.L35
  95              	.L64:
  96 0092 92F91840 		ldrsb	r4, [r2, #24]
  97 0096 C24E     		ldr	r6, .L73+4
  98 0098 203C     		subs	r4, r4, #32
  99 009a 3046     		mov	r0, r6
 100 009c 18BF     		it	ne
 101 009e 0124     		movne	r4, #1
 102 00a0 FFF7FEFF 		bl	dacc_get_channel_status
 103 00a4 0546     		mov	r5, r0
 104 00a6 0028     		cmp	r0, #0
 105 00a8 00F0F680 		beq	.L67
 106              	.L8:
 107 00ac 2146     		mov	r1, r4
 108 00ae BC48     		ldr	r0, .L73+4
 109 00b0 FFF7FEFF 		bl	dacc_set_channel_selection
 110 00b4 BA48     		ldr	r0, .L73+4
 111 00b6 FFF7FEFF 		bl	dacc_get_channel_status
 112 00ba 0123     		movs	r3, #1
 113 00bc A340     		lsls	r3, r3, r4
 114 00be 0342     		tst	r3, r0
ARM GAS  /tmp/ccSplm3C.s 			page 3


 115 00c0 00F0E580 		beq	.L68
 116              	.L9:
 117 00c4 9FEDB70A 		vldr.32	s0, .L73+8
 118 00c8 B54C     		ldr	r4, .L73+4
 119 00ca 28EE000A 		vmul.f32	s0, s16, s0
 120 00ce FFF7FEFF 		bl	lrintf
 121 00d2 0146     		mov	r1, r0
 122 00d4 2046     		mov	r0, r4
 123 00d6 FFF7FEFF 		bl	dacc_write_conversion_data
 124              	.L10:
 125 00da 2046     		mov	r0, r4
 126 00dc FFF7FEFF 		bl	dacc_get_interrupt_status
 127 00e0 8307     		lsls	r3, r0, #30
 128 00e2 FAD5     		bpl	.L10
 129 00e4 15B0     		add	sp, sp, #84
 130              		@ sp needed
 131 00e6 BDEC028B 		vldm	sp!, {d8}
 132 00ea BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 133              	.L65:
 134 00ee 92F919A0 		ldrsb	r10, [r2, #25]
 135 00f2 B9F1000F 		cmp	r9, #0
 136 00f6 00F03481 		beq	.L69
 137 00fa AB4D     		ldr	r5, .L73+12
 138 00fc 35F81A20 		ldrh	r2, [r5, r10, lsl #1]
 139 0100 4A45     		cmp	r2, r9
 140 0102 00F06B81 		beq	.L14
 141 0106 A94E     		ldr	r6, .L73+16
 142 0108 3778     		ldrb	r7, [r6]	@ zero_extendqisi2
 143 010a 002F     		cmp	r7, #0
 144 010c 00F0E980 		beq	.L54
 145 0110 06AB     		add	r3, sp, #24
 146 0112 0393     		str	r3, [sp, #12]
 147              	.L15:
 148 0114 A64F     		ldr	r7, .L73+20
 149 0116 A74E     		ldr	r6, .L73+24
 150 0118 46F24612 		movw	r2, #24902
 151 011c B9F1600F 		cmp	r9, #96
 152 0120 98BF     		it	ls
 153 0122 1746     		movls	r7, r2
 154 0124 B7FBF9F7 		udiv	r7, r7, r9
 155 0128 07EE907A 		vmov	s15, r7	@ int
 156 012c B8EEE70A 		vcvt.f32.s32	s0, s15
 157 0130 0022     		movs	r2, #0
 158 0132 20EE080A 		vmul.f32	s0, s0, s16
 159 0136 0592     		str	r2, [sp, #20]
 160 0138 FFF7FEFF 		bl	lrintf
 161 013c 5146     		mov	r1, r10
 162 013e 0490     		str	r0, [sp, #16]
 163 0140 4FF08040 		mov	r0, #1073741824
 164 0144 26F81A70 		strh	r7, [r6, r10, lsl #1]	@ movhi
 165 0148 25F81A90 		strh	r9, [r5, r10, lsl #1]	@ movhi
 166 014c FFF7FEFF 		bl	pwm_channel_disable
 167 0150 4FEA4A13 		lsl	r3, r10, #5
 168 0154 03F18043 		add	r3, r3, #1073741824
 169 0158 03F50073 		add	r3, r3, #512
 170 015c 059A     		ldr	r2, [sp, #20]
 171 015e 0293     		str	r3, [sp, #8]
ARM GAS  /tmp/ccSplm3C.s 			page 4


 172 0160 4FEA4A13 		lsl	r3, r10, #5
 173 0164 0193     		str	r3, [sp, #4]
 174 0166 1646     		mov	r6, r2
 175 0168 0594     		str	r4, [sp, #20]
 176              	.L17:
 177 016a 019B     		ldr	r3, [sp, #4]
 178 016c 03F18044 		add	r4, r3, #1073741824
 179 0170 D4F81452 		ldr	r5, [r4, #532]
 180 0174 ADB2     		uxth	r5, r5
 181 0176 AF42     		cmp	r7, r5
 182 0178 00F2CA80 		bhi	.L57
 183 017c 4FF6F672 		movw	r2, #65526
 184 0180 9542     		cmp	r5, r2
 185 0182 00F2C580 		bhi	.L57
 186 0186 029B     		ldr	r3, [sp, #8]
 187 0188 0C22     		movs	r2, #12
 188 018a 0235     		adds	r5, r5, #2
 189 018c C4F80C52 		str	r5, [r4, #524]
 190 0190 5146     		mov	r1, r10
 191 0192 1A60     		str	r2, [r3]
 192 0194 4FF08040 		mov	r0, #1073741824
 193 0198 FFF7FEFF 		bl	pwm_channel_enable
 194 019c 2146     		mov	r1, r4
 195 019e 4FF47A72 		mov	r2, #1000
 196 01a2 03E0     		b	.L23
 197              	.L70:
 198 01a4 9D42     		cmp	r5, r3
 199 01a6 06D3     		bcc	.L22
 200 01a8 013A     		subs	r2, r2, #1
 201 01aa 04D0     		beq	.L22
 202              	.L23:
 203 01ac D1F81432 		ldr	r3, [r1, #532]
 204 01b0 9BB2     		uxth	r3, r3
 205 01b2 9F42     		cmp	r7, r3
 206 01b4 F6D9     		bls	.L70
 207              	.L22:
 208 01b6 0136     		adds	r6, r6, #1
 209 01b8 052E     		cmp	r6, #5
 210 01ba 00F0A980 		beq	.L57
 211 01be 5146     		mov	r1, r10
 212 01c0 4FF08040 		mov	r0, #1073741824
 213 01c4 FFF7FEFF 		bl	pwm_channel_disable
 214 01c8 7B4B     		ldr	r3, .L73+28
 215 01ca 1A68     		ldr	r2, [r3]
 216 01cc B242     		cmp	r2, r6
 217 01ce 38BF     		it	cc
 218 01d0 1E60     		strcc	r6, [r3]
 219 01d2 CAE7     		b	.L17
 220              	.L66:
 221 01d4 92F91A30 		ldrsb	r3, [r2, #26]
 222 01d8 784A     		ldr	r2, .L73+32
 223 01da 5B08     		lsrs	r3, r3, #1
 224 01dc B9F1000F 		cmp	r9, #0
 225 01e0 00F0C380 		beq	.L71
 226 01e4 32F813A0 		ldrh	r10, [r2, r3, lsl #1]
 227 01e8 7548     		ldr	r0, .L73+36
 228 01ea 7649     		ldr	r1, .L73+40
ARM GAS  /tmp/ccSplm3C.s 			page 5


 229 01ec 50F82360 		ldr	r6, [r0, r3, lsl #2]
 230 01f0 CF5C     		ldrb	r7, [r1, r3]	@ zero_extendqisi2
 231 01f2 D145     		cmp	r9, r10
 232 01f4 1DD0     		beq	.L27
 233 01f6 7449     		ldr	r1, .L73+44
 234 01f8 22F81390 		strh	r9, [r2, r3, lsl #1]	@ movhi
 235 01fc C85C     		ldrb	r0, [r1, r3]	@ zero_extendqisi2
 236 01fe 0193     		str	r3, [sp, #4]
 237 0200 FFF7FEFF 		bl	pmc_enable_periph_clk
 238 0204 714A     		ldr	r2, .L73+48
 239 0206 3946     		mov	r1, r7
 240 0208 3046     		mov	r0, r6
 241 020a FFF7FEFF 		bl	tc_init
 242 020e 704A     		ldr	r2, .L73+52
 243 0210 B2FBF9F2 		udiv	r2, r2, r9
 244 0214 3946     		mov	r1, r7
 245 0216 3046     		mov	r0, r6
 246 0218 FFF7FEFF 		bl	tc_write_rc
 247 021c F6EE007A 		vmov.f32	s15, #5.0e-1
 248 0220 B4EEE78A 		vcmpe.f32	s16, s15
 249 0224 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 250 0228 03DB     		blt	.L27
 251 022a 019B     		ldr	r3, [sp, #4]
 252 022c 9B01     		lsls	r3, r3, #6
 253 022e 0422     		movs	r2, #4
 254 0230 F250     		str	r2, [r6, r3]
 255              	.L27:
 256 0232 3946     		mov	r1, r7
 257 0234 3046     		mov	r0, r6
 258 0236 FFF7FEFF 		bl	tc_read_rc
 259 023a 07EE900A 		vmov	s15, r0	@ int
 260 023e B8EE670A 		vcvt.f32.u32	s0, s15
 261 0242 20EE080A 		vmul.f32	s0, s0, s16
 262 0246 FFF7FEFF 		bl	lrintf
 263 024a ABEB0403 		sub	r3, fp, r4
 264 024e 08EB8308 		add	r8, r8, r3, lsl #2
 265 0252 98F81A30 		ldrb	r3, [r8, #26]	@ zero_extendqisi2
 266 0256 98B3     		cbz	r0, .L72
 267 0258 DB07     		lsls	r3, r3, #31
 268 025a 0246     		mov	r2, r0
 269 025c 3946     		mov	r1, r7
 270 025e 3046     		mov	r0, r6
 271 0260 00F18680 		bmi	.L33
 272 0264 FFF7FEFF 		bl	tc_write_ra
 273 0268 06EB8712 		add	r2, r6, r7, lsl #6
 274 026c 5368     		ldr	r3, [r2, #4]
 275 026e 23F47023 		bic	r3, r3, #983040
 276 0272 43F4C023 		orr	r3, r3, #393216
 277 0276 5360     		str	r3, [r2, #4]
 278              	.L32:
 279 0278 D145     		cmp	r9, r10
 280 027a 3FF4FAAE 		beq	.L2
 281 027e 2846     		mov	r0, r5
 282 0280 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 283 0284 3946     		mov	r1, r7
 284 0286 3046     		mov	r0, r6
 285 0288 FFF7FEFF 		bl	tc_start
ARM GAS  /tmp/ccSplm3C.s 			page 6


 286 028c F1E6     		b	.L2
 287              	.L68:
 288 028e 2146     		mov	r1, r4
 289 0290 4348     		ldr	r0, .L73+4
 290 0292 FFF7FEFF 		bl	dacc_enable_channel
 291 0296 15E7     		b	.L9
 292              	.L67:
 293 0298 2020     		movs	r0, #32
 294 029a FFF7FEFF 		bl	pmc_enable_periph_clk
 295 029e 3046     		mov	r0, r6
 296 02a0 FFF7FEFF 		bl	dacc_reset
 297 02a4 2946     		mov	r1, r5
 298 02a6 3046     		mov	r0, r6
 299 02a8 FFF7FEFF 		bl	dacc_set_transfer_mode
 300 02ac 7368     		ldr	r3, [r6, #4]
 301 02ae 43F48003 		orr	r3, r3, #4194304
 302 02b2 7360     		str	r3, [r6, #4]
 303 02b4 3046     		mov	r0, r6
 304 02b6 4FF48571 		mov	r1, #266
 305 02ba FFF7FEFF 		bl	dacc_set_analog_control
 306 02be F5E6     		b	.L8
 307              	.L72:
 308 02c0 DC07     		lsls	r4, r3, #31
 309 02c2 4FF00102 		mov	r2, #1
 310 02c6 3946     		mov	r1, r7
 311 02c8 3046     		mov	r0, r6
 312 02ca 5CD4     		bmi	.L31
 313 02cc FFF7FEFF 		bl	tc_write_ra
 314 02d0 06EB8712 		add	r2, r6, r7, lsl #6
 315 02d4 5368     		ldr	r3, [r2, #4]
 316 02d6 23F47023 		bic	r3, r3, #983040
 317 02da 43F42023 		orr	r3, r3, #655360
 318 02de 5360     		str	r3, [r2, #4]
 319 02e0 CAE7     		b	.L32
 320              	.L54:
 321 02e2 06AB     		add	r3, sp, #24
 322 02e4 2420     		movs	r0, #36
 323 02e6 0393     		str	r3, [sp, #12]
 324 02e8 FFF7FEFF 		bl	pmc_enable_periph_clk
 325 02ec 46F24612 		movw	r2, #24902
 326 02f0 2F48     		ldr	r0, .L73+20
 327 02f2 0399     		ldr	r1, [sp, #12]
 328 02f4 0692     		str	r2, [sp, #24]
 329 02f6 0790     		str	r0, [sp, #28]
 330 02f8 364A     		ldr	r2, .L73+56
 331 02fa 0892     		str	r2, [sp, #32]
 332 02fc 4FF08040 		mov	r0, #1073741824
 333 0300 FFF7FEFF 		bl	pwm_init
 334 0304 4FF08041 		mov	r1, #1073741824
 335 0308 0122     		movs	r2, #1
 336 030a 0F62     		str	r7, [r1, #32]
 337 030c 3270     		strb	r2, [r6]
 338 030e 01E7     		b	.L15
 339              	.L57:
 340 0310 039D     		ldr	r5, [sp, #12]
 341 0312 059C     		ldr	r4, [sp, #20]
 342 0314 3822     		movs	r2, #56
ARM GAS  /tmp/ccSplm3C.s 			page 7


 343 0316 0021     		movs	r1, #0
 344 0318 2846     		mov	r0, r5
 345 031a FFF7FEFF 		bl	memset
 346 031e B9F1600F 		cmp	r9, #96
 347 0322 8CBF     		ite	hi
 348 0324 0C22     		movhi	r2, #12
 349 0326 0B22     		movls	r2, #11
 350 0328 049B     		ldr	r3, [sp, #16]
 351 032a 0993     		str	r3, [sp, #36]
 352 032c 2946     		mov	r1, r5
 353 032e 4FF08040 		mov	r0, #1073741824
 354 0332 0792     		str	r2, [sp, #28]
 355 0334 CDF818A0 		str	r10, [sp, #24]
 356 0338 0A97     		str	r7, [sp, #40]
 357 033a FFF7FEFF 		bl	pwm_channel_init
 358 033e 5146     		mov	r1, r10
 359 0340 4FF08040 		mov	r0, #1073741824
 360 0344 FFF7FEFF 		bl	pwm_channel_enable
 361 0348 ABEB0403 		sub	r3, fp, r4
 362 034c 9B00     		lsls	r3, r3, #2
 363 034e 08EB0301 		add	r1, r8, r3
 364 0352 58F80300 		ldr	r0, [r8, r3]
 365 0356 4A68     		ldr	r2, [r1, #4]
 366 0358 0B69     		ldr	r3, [r1, #16]
 367 035a C968     		ldr	r1, [r1, #12]
 368 035c FFF7FEFF 		bl	pio_configure
 369 0360 87E6     		b	.L2
 370              	.L69:
 371 0362 114B     		ldr	r3, .L73+12
 372 0364 23F81A90 		strh	r9, [r3, r10, lsl #1]	@ movhi
 373 0368 76E6     		b	.L13
 374              	.L71:
 375 036a 22F81390 		strh	r9, [r2, r3, lsl #1]	@ movhi
 376 036e 73E6     		b	.L13
 377              	.L33:
 378 0370 FFF7FEFF 		bl	tc_write_rb
 379 0374 06EB8712 		add	r2, r6, r7, lsl #6
 380 0378 5368     		ldr	r3, [r2, #4]
 381 037a 23F07063 		bic	r3, r3, #251658240
 382 037e 43F0C063 		orr	r3, r3, #100663296
 383 0382 5360     		str	r3, [r2, #4]
 384 0384 78E7     		b	.L32
 385              	.L31:
 386 0386 FFF7FEFF 		bl	tc_write_rb
 387 038a 06EB8712 		add	r2, r6, r7, lsl #6
 388 038e 5368     		ldr	r3, [r2, #4]
 389 0390 23F07063 		bic	r3, r3, #251658240
 390 0394 43F02063 		orr	r3, r3, #167772160
 391 0398 5360     		str	r3, [r2, #4]
 392 039a 6DE7     		b	.L32
 393              	.L74:
 394              		.align	2
 395              	.L73:
 396 039c 00000000 		.word	0
 397 03a0 00800B40 		.word	1074495488
 398 03a4 00F07F45 		.word	1166012416
 399 03a8 00000000 		.word	.LANCHOR0
ARM GAS  /tmp/ccSplm3C.s 			page 8


 400 03ac 00000000 		.word	.LANCHOR1
 401 03b0 58466100 		.word	6375000
 402 03b4 00000000 		.word	.LANCHOR2
 403 03b8 00000000 		.word	.LANCHOR3
 404 03bc 00000000 		.word	.LANCHOR4
 405 03c0 00000000 		.word	.LANCHOR5
 406 03c4 00000000 		.word	.LANCHOR6
 407 03c8 00000000 		.word	.LANCHOR7
 408 03cc 01C44A4A 		.word	1246413825
 409 03d0 C0E1E400 		.word	15000000
 410 03d4 000E2707 		.word	120000000
 411 03d8 00000000 		.word	g_APinDescription
 412              	.L14:
 413 03dc 0A4B     		ldr	r3, .L75
 414 03de CDF818A0 		str	r10, [sp, #24]
 415 03e2 33F81A30 		ldrh	r3, [r3, r10, lsl #1]
 416 03e6 0A93     		str	r3, [sp, #40]
 417 03e8 07EE903A 		vmov	s15, r3	@ int
 418 03ec B8EE670A 		vcvt.f32.u32	s0, s15
 419 03f0 20EE080A 		vmul.f32	s0, s0, s16
 420 03f4 FFF7FEFF 		bl	lrintf
 421 03f8 06A9     		add	r1, sp, #24
 422 03fa 0246     		mov	r2, r0
 423 03fc 4FF08040 		mov	r0, #1073741824
 424 0400 FFF7FEFF 		bl	pwm_channel_update_duty
 425 0404 35E6     		b	.L2
 426              	.L76:
 427 0406 00BF     		.align	2
 428              	.L75:
 429 0408 00000000 		.word	.LANCHOR2
 430              		.size	_Z9AnalogOuthft, .-_Z9AnalogOuthft
 431              		.global	maxPwmLoopCount
 432              		.section	.bss._ZL10PWMEnabled,"aw",%nobits
 433              		.set	.LANCHOR1,. + 0
 434              		.type	_ZL10PWMEnabled, %object
 435              		.size	_ZL10PWMEnabled, 1
 436              	_ZL10PWMEnabled:
 437 0000 00       		.space	1
 438              		.section	.bss._ZL10TCChanFreq,"aw",%nobits
 439              		.align	2
 440              		.set	.LANCHOR4,. + 0
 441              		.type	_ZL10TCChanFreq, %object
 442              		.size	_ZL10TCChanFreq, 18
 443              	_ZL10TCChanFreq:
 444 0000 00000000 		.space	18
 444      00000000 
 444      00000000 
 444      00000000 
 444      0000
 445              		.section	.bss._ZL11PWMChanFreq,"aw",%nobits
 446              		.align	2
 447              		.set	.LANCHOR0,. + 0
 448              		.type	_ZL11PWMChanFreq, %object
 449              		.size	_ZL11PWMChanFreq, 8
 450              	_ZL11PWMChanFreq:
 451 0000 00000000 		.space	8
 451      00000000 
ARM GAS  /tmp/ccSplm3C.s 			page 9


 452              		.section	.bss._ZL13PWMChanPeriod,"aw",%nobits
 453              		.align	2
 454              		.set	.LANCHOR2,. + 0
 455              		.type	_ZL13PWMChanPeriod, %object
 456              		.size	_ZL13PWMChanPeriod, 8
 457              	_ZL13PWMChanPeriod:
 458 0000 00000000 		.space	8
 458      00000000 
 459              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 460              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 461              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 462              	_ZL28cpu_irq_prev_interrupt_state:
 463 0000 00       		.space	1
 464              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 465              		.align	2
 466              		.type	_ZL32cpu_irq_critical_section_counter, %object
 467              		.size	_ZL32cpu_irq_critical_section_counter, 4
 468              	_ZL32cpu_irq_critical_section_counter:
 469 0000 00000000 		.space	4
 470              		.section	.bss.maxPwmLoopCount,"aw",%nobits
 471              		.align	2
 472              		.set	.LANCHOR3,. + 0
 473              		.type	maxPwmLoopCount, %object
 474              		.size	maxPwmLoopCount, 4
 475              	maxPwmLoopCount:
 476 0000 00000000 		.space	4
 477              		.section	.rodata._ZL11channelToId,"a",%progbits
 478              		.align	2
 479              		.set	.LANCHOR7,. + 0
 480              		.type	_ZL11channelToId, %object
 481              		.size	_ZL11channelToId, 9
 482              	_ZL11channelToId:
 483 0000 15       		.byte	21
 484 0001 16       		.byte	22
 485 0002 17       		.byte	23
 486 0003 18       		.byte	24
 487 0004 19       		.byte	25
 488 0005 1A       		.byte	26
 489 0006 1B       		.byte	27
 490 0007 1C       		.byte	28
 491 0008 1D       		.byte	29
 492              		.section	.rodata._ZL11channelToTC,"a",%progbits
 493              		.align	2
 494              		.set	.LANCHOR5,. + 0
 495              		.type	_ZL11channelToTC, %object
 496              		.size	_ZL11channelToTC, 36
 497              	_ZL11channelToTC:
 498 0000 00000940 		.word	1074331648
 499 0004 00000940 		.word	1074331648
 500 0008 00000940 		.word	1074331648
 501 000c 00400940 		.word	1074348032
 502 0010 00400940 		.word	1074348032
 503 0014 00400940 		.word	1074348032
 504 0018 00800940 		.word	1074364416
 505 001c 00800940 		.word	1074364416
 506 0020 00800940 		.word	1074364416
 507              		.section	.rodata._ZL13channelToChNo,"a",%progbits
ARM GAS  /tmp/ccSplm3C.s 			page 10


 508              		.align	2
 509              		.set	.LANCHOR6,. + 0
 510              		.type	_ZL13channelToChNo, %object
 511              		.size	_ZL13channelToChNo, 9
 512              	_ZL13channelToChNo:
 513 0000 00       		.byte	0
 514 0001 01       		.byte	1
 515 0002 02       		.byte	2
 516 0003 00       		.byte	0
 517 0004 01       		.byte	1
 518 0005 02       		.byte	2
 519 0006 00       		.byte	0
 520 0007 01       		.byte	1
 521 0008 02       		.byte	2
 522              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
