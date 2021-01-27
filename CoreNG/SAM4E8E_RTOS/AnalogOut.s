ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuajcBm.s 			page 1


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
  14              		.text
  15              		.section	.text._Z13AnalogOutInitv,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_Z13AnalogOutInitv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_Z13AnalogOutInitv, %function
  24              	_Z13AnalogOutInitv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 7047     		bx	lr
  29              		.size	_Z13AnalogOutInitv, .-_Z13AnalogOutInitv
  30 0002 00BF     		.section	.text._Z9AnalogOuthft,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.global	_Z9AnalogOuthft
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_Z9AnalogOuthft, %function
  39              	_Z9AnalogOuthft:
  40              		@ args = 0, pretend = 0, frame = 80
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42 0000 6928     		cmp	r0, #105
  43 0002 3AD8     		bhi	.L58
  44 0004 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  45 0008 2DED028B 		vpush.64	{d8}
  46 000c B4EE400A 		vcmp.f32	s0, s0
  47 0010 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  48 0014 95B0     		sub	sp, sp, #84
  49 0016 B0EE408A 		vmov.f32	s16, s0
  50 001a 29D6     		bvs	.L3
  51 001c F7EE007A 		vmov.f32	s15, #1.0e+0
  52 0020 B4EEE70A 		vcmpe.f32	s0, s15
  53 0024 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  54 0028 0446     		mov	r4, r0
  55 002a 8946     		mov	r9, r1
  56 002c 00F1B380 		bmi	.L61
  57 0030 B0EE678A 		vmov.f32	s16, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuajcBm.s 			page 2


  58              	.L7:
  59 0034 4FEAC40B 		lsl	fp, r4, #3
  60 0038 DFF8A883 		ldr	r8, .L70+60
  61 003c ABEB0402 		sub	r2, fp, r4
  62 0040 08EB8202 		add	r2, r8, r2, lsl #2
  63 0044 1546     		mov	r5, r2
  64 0046 5169     		ldr	r1, [r2, #20]
  65 0048 8806     		lsls	r0, r1, #26
  66 004a 76D4     		bmi	.L62
  67 004c 0F07     		lsls	r7, r1, #28
  68 004e 00F1AB80 		bmi	.L63
  69 0052 CE06     		lsls	r6, r1, #27
  70 0054 12D4     		bmi	.L64
  71              	.L15:
  72 0056 F6EE007A 		vmov.f32	s15, #5.0e-1
  73 005a B4EEE78A 		vcmpe.f32	s16, s15
  74 005e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
  75 0062 2046     		mov	r0, r4
  76 0064 4CBF     		ite	mi
  77 0066 0321     		movmi	r1, #3
  78 0068 0421     		movpl	r1, #4
  79 006a 0022     		movs	r2, #0
  80 006c FFF7FEFF 		bl	pinModeDuet
  81              	.L3:
  82 0070 15B0     		add	sp, sp, #84
  83              		@ sp needed
  84 0072 BDEC028B 		vldm	sp!, {d8}
  85 0076 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
  86              	.L58:
  87 007a 7047     		bx	lr
  88              	.L64:
  89 007c 92F91A30 		ldrsb	r3, [r2, #26]
  90 0080 C94A     		ldr	r2, .L70
  91 0082 5B08     		lsrs	r3, r3, #1
  92 0084 B9F1000F 		cmp	r9, #0
  93 0088 00F01B81 		beq	.L65
  94 008c 32F813A0 		ldrh	r10, [r2, r3, lsl #1]
  95 0090 C648     		ldr	r0, .L70+4
  96 0092 C749     		ldr	r1, .L70+8
  97 0094 50F82360 		ldr	r6, [r0, r3, lsl #2]
  98 0098 CF5C     		ldrb	r7, [r1, r3]	@ zero_extendqisi2
  99 009a D145     		cmp	r9, r10
 100 009c 1DD0     		beq	.L29
 101 009e C549     		ldr	r1, .L70+12
 102 00a0 22F81390 		strh	r9, [r2, r3, lsl #1]	@ movhi
 103 00a4 C85C     		ldrb	r0, [r1, r3]	@ zero_extendqisi2
 104 00a6 0193     		str	r3, [sp, #4]
 105 00a8 FFF7FEFF 		bl	pmc_enable_periph_clk
 106 00ac C24A     		ldr	r2, .L70+16
 107 00ae 3946     		mov	r1, r7
 108 00b0 3046     		mov	r0, r6
 109 00b2 FFF7FEFF 		bl	tc_init
 110 00b6 C14A     		ldr	r2, .L70+20
 111 00b8 B2FBF9F2 		udiv	r2, r2, r9
 112 00bc 3946     		mov	r1, r7
 113 00be 3046     		mov	r0, r6
 114 00c0 FFF7FEFF 		bl	tc_write_rc
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuajcBm.s 			page 3


 115 00c4 F6EE007A 		vmov.f32	s15, #5.0e-1
 116 00c8 B4EEE78A 		vcmpe.f32	s16, s15
 117 00cc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 118 00d0 03DB     		blt	.L29
 119 00d2 019B     		ldr	r3, [sp, #4]
 120 00d4 9B01     		lsls	r3, r3, #6
 121 00d6 0422     		movs	r2, #4
 122 00d8 F250     		str	r2, [r6, r3]
 123              	.L29:
 124 00da 3946     		mov	r1, r7
 125 00dc 3046     		mov	r0, r6
 126 00de FFF7FEFF 		bl	tc_read_rc
 127 00e2 07EE900A 		vmov	s15, r0	@ int
 128 00e6 B8EE670A 		vcvt.f32.u32	s0, s15
 129 00ea 20EE080A 		vmul.f32	s0, s0, s16
 130 00ee FFF7FEFF 		bl	lrintf
 131 00f2 ABEB0403 		sub	r3, fp, r4
 132 00f6 08EB8308 		add	r8, r8, r3, lsl #2
 133 00fa 98F81A30 		ldrb	r3, [r8, #26]	@ zero_extendqisi2
 134 00fe 0028     		cmp	r0, #0
 135 0100 40F01F81 		bne	.L32
 136 0104 DC07     		lsls	r4, r3, #31
 137 0106 4FF00102 		mov	r2, #1
 138 010a 3946     		mov	r1, r7
 139 010c 3046     		mov	r0, r6
 140 010e 00F13F81 		bmi	.L33
 141 0112 FFF7FEFF 		bl	tc_write_ra
 142 0116 06EB8712 		add	r2, r6, r7, lsl #6
 143 011a 5368     		ldr	r3, [r2, #4]
 144 011c 23F47023 		bic	r3, r3, #983040
 145 0120 43F42023 		orr	r3, r3, #655360
 146 0124 5360     		str	r3, [r2, #4]
 147              	.L34:
 148 0126 D145     		cmp	r9, r10
 149 0128 A2D0     		beq	.L3
 150 012a 2846     		mov	r0, r5
 151 012c FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 152 0130 3946     		mov	r1, r7
 153 0132 3046     		mov	r0, r6
 154 0134 FFF7FEFF 		bl	tc_start
 155 0138 9AE7     		b	.L3
 156              	.L62:
 157 013a 92F91840 		ldrsb	r4, [r2, #24]
 158 013e A04E     		ldr	r6, .L70+24
 159 0140 203C     		subs	r4, r4, #32
 160 0142 3046     		mov	r0, r6
 161 0144 18BF     		it	ne
 162 0146 0124     		movne	r4, #1
 163 0148 FFF7FEFF 		bl	dacc_get_channel_status
 164 014c 0546     		mov	r5, r0
 165 014e 0028     		cmp	r0, #0
 166 0150 00F09F80 		beq	.L66
 167              	.L10:
 168 0154 2146     		mov	r1, r4
 169 0156 9A48     		ldr	r0, .L70+24
 170 0158 FFF7FEFF 		bl	dacc_set_channel_selection
 171 015c 9848     		ldr	r0, .L70+24
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuajcBm.s 			page 4


 172 015e FFF7FEFF 		bl	dacc_get_channel_status
 173 0162 0123     		movs	r3, #1
 174 0164 A340     		lsls	r3, r3, r4
 175 0166 0342     		tst	r3, r0
 176 0168 00F08E80 		beq	.L67
 177              	.L11:
 178 016c 9FED950A 		vldr.32	s0, .L70+28
 179 0170 934C     		ldr	r4, .L70+24
 180 0172 28EE000A 		vmul.f32	s0, s16, s0
 181 0176 FFF7FEFF 		bl	lrintf
 182 017a 0146     		mov	r1, r0
 183 017c 2046     		mov	r0, r4
 184 017e FFF7FEFF 		bl	dacc_write_conversion_data
 185              	.L12:
 186 0182 2046     		mov	r0, r4
 187 0184 FFF7FEFF 		bl	dacc_get_interrupt_status
 188 0188 8307     		lsls	r3, r0, #30
 189 018a FAD5     		bpl	.L12
 190 018c 15B0     		add	sp, sp, #84
 191              		@ sp needed
 192 018e BDEC028B 		vldm	sp!, {d8}
 193 0192 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 194              	.L61:
 195 0196 B5EEC00A 		vcmpe.f32	s0, #0
 196 019a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 197 019e 3FF749AF 		bgt	.L7
 198 01a2 9FED898A 		vldr.32	s16, .L70+32
 199 01a6 45E7     		b	.L7
 200              	.L63:
 201 01a8 92F919A0 		ldrsb	r10, [r2, #25]
 202 01ac B9F1000F 		cmp	r9, #0
 203 01b0 00F08380 		beq	.L68
 204 01b4 854D     		ldr	r5, .L70+36
 205 01b6 35F81A20 		ldrh	r2, [r5, r10, lsl #1]
 206 01ba 4A45     		cmp	r2, r9
 207 01bc 00F08480 		beq	.L16
 208 01c0 834E     		ldr	r6, .L70+40
 209 01c2 3778     		ldrb	r7, [r6]	@ zero_extendqisi2
 210 01c4 002F     		cmp	r7, #0
 211 01c6 00F0CC80 		beq	.L54
 212 01ca 06AB     		add	r3, sp, #24
 213 01cc 0393     		str	r3, [sp, #12]
 214              	.L17:
 215 01ce 814F     		ldr	r7, .L70+44
 216 01d0 814E     		ldr	r6, .L70+48
 217 01d2 46F24612 		movw	r2, #24902
 218 01d6 B9F1600F 		cmp	r9, #96
 219 01da 98BF     		it	ls
 220 01dc 1746     		movls	r7, r2
 221 01de B7FBF9F7 		udiv	r7, r7, r9
 222 01e2 07EE907A 		vmov	s15, r7	@ int
 223 01e6 B8EEE70A 		vcvt.f32.s32	s0, s15
 224 01ea 0022     		movs	r2, #0
 225 01ec 20EE080A 		vmul.f32	s0, s0, s16
 226 01f0 0592     		str	r2, [sp, #20]
 227 01f2 FFF7FEFF 		bl	lrintf
 228 01f6 5146     		mov	r1, r10
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuajcBm.s 			page 5


 229 01f8 0490     		str	r0, [sp, #16]
 230 01fa 4FF08040 		mov	r0, #1073741824
 231 01fe 26F81A70 		strh	r7, [r6, r10, lsl #1]	@ movhi
 232 0202 25F81A90 		strh	r9, [r5, r10, lsl #1]	@ movhi
 233 0206 FFF7FEFF 		bl	pwm_channel_disable
 234 020a 4FEA4A13 		lsl	r3, r10, #5
 235 020e 03F18043 		add	r3, r3, #1073741824
 236 0212 03F50073 		add	r3, r3, #512
 237 0216 059A     		ldr	r2, [sp, #20]
 238 0218 0293     		str	r3, [sp, #8]
 239 021a 4FEA4A13 		lsl	r3, r10, #5
 240 021e 0193     		str	r3, [sp, #4]
 241 0220 1646     		mov	r6, r2
 242 0222 0594     		str	r4, [sp, #20]
 243              	.L19:
 244 0224 019B     		ldr	r3, [sp, #4]
 245 0226 03F18044 		add	r4, r3, #1073741824
 246 022a D4F81452 		ldr	r5, [r4, #532]
 247 022e ADB2     		uxth	r5, r5
 248 0230 AF42     		cmp	r7, r5
 249 0232 5ED8     		bhi	.L56
 250 0234 4FF6F672 		movw	r2, #65526
 251 0238 9542     		cmp	r5, r2
 252 023a 5AD8     		bhi	.L56
 253 023c 029B     		ldr	r3, [sp, #8]
 254 023e 0C22     		movs	r2, #12
 255 0240 0235     		adds	r5, r5, #2
 256 0242 C4F80C52 		str	r5, [r4, #524]
 257 0246 5146     		mov	r1, r10
 258 0248 1A60     		str	r2, [r3]
 259 024a 4FF08040 		mov	r0, #1073741824
 260 024e FFF7FEFF 		bl	pwm_channel_enable
 261 0252 2146     		mov	r1, r4
 262 0254 4FF47A72 		mov	r2, #1000
 263 0258 03E0     		b	.L25
 264              	.L69:
 265 025a 9D42     		cmp	r5, r3
 266 025c 06D3     		bcc	.L24
 267 025e 013A     		subs	r2, r2, #1
 268 0260 04D0     		beq	.L24
 269              	.L25:
 270 0262 D1F81432 		ldr	r3, [r1, #532]
 271 0266 9BB2     		uxth	r3, r3
 272 0268 9F42     		cmp	r7, r3
 273 026a F6D9     		bls	.L69
 274              	.L24:
 275 026c 0136     		adds	r6, r6, #1
 276 026e 052E     		cmp	r6, #5
 277 0270 3FD0     		beq	.L56
 278 0272 5146     		mov	r1, r10
 279 0274 4FF08040 		mov	r0, #1073741824
 280 0278 FFF7FEFF 		bl	pwm_channel_disable
 281 027c 574B     		ldr	r3, .L70+52
 282 027e 1A68     		ldr	r2, [r3]
 283 0280 B242     		cmp	r2, r6
 284 0282 38BF     		it	cc
 285 0284 1E60     		strcc	r6, [r3]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuajcBm.s 			page 6


 286 0286 CDE7     		b	.L19
 287              	.L67:
 288 0288 2146     		mov	r1, r4
 289 028a 4D48     		ldr	r0, .L70+24
 290 028c FFF7FEFF 		bl	dacc_enable_channel
 291 0290 6CE7     		b	.L11
 292              	.L66:
 293 0292 2020     		movs	r0, #32
 294 0294 FFF7FEFF 		bl	pmc_enable_periph_clk
 295 0298 3046     		mov	r0, r6
 296 029a FFF7FEFF 		bl	dacc_reset
 297 029e 2946     		mov	r1, r5
 298 02a0 3046     		mov	r0, r6
 299 02a2 FFF7FEFF 		bl	dacc_set_transfer_mode
 300 02a6 7368     		ldr	r3, [r6, #4]
 301 02a8 43F48003 		orr	r3, r3, #4194304
 302 02ac 7360     		str	r3, [r6, #4]
 303 02ae 3046     		mov	r0, r6
 304 02b0 4FF48571 		mov	r1, #266
 305 02b4 FFF7FEFF 		bl	dacc_set_analog_control
 306 02b8 4CE7     		b	.L10
 307              	.L68:
 308 02ba 444B     		ldr	r3, .L70+36
 309 02bc 23F81A90 		strh	r9, [r3, r10, lsl #1]	@ movhi
 310 02c0 C9E6     		b	.L15
 311              	.L65:
 312 02c2 22F81390 		strh	r9, [r2, r3, lsl #1]	@ movhi
 313 02c6 C6E6     		b	.L15
 314              	.L16:
 315 02c8 434B     		ldr	r3, .L70+48
 316 02ca CDF818A0 		str	r10, [sp, #24]
 317 02ce 33F81A30 		ldrh	r3, [r3, r10, lsl #1]
 318 02d2 0A93     		str	r3, [sp, #40]
 319 02d4 07EE903A 		vmov	s15, r3	@ int
 320 02d8 B8EE670A 		vcvt.f32.u32	s0, s15
 321 02dc 20EE080A 		vmul.f32	s0, s0, s16
 322 02e0 FFF7FEFF 		bl	lrintf
 323 02e4 06A9     		add	r1, sp, #24
 324 02e6 0246     		mov	r2, r0
 325 02e8 4FF08040 		mov	r0, #1073741824
 326 02ec FFF7FEFF 		bl	pwm_channel_update_duty
 327 02f0 BEE6     		b	.L3
 328              	.L56:
 329 02f2 3022     		movs	r2, #48
 330 02f4 0021     		movs	r1, #0
 331 02f6 08A8     		add	r0, sp, #32
 332 02f8 059C     		ldr	r4, [sp, #20]
 333 02fa FFF7FEFF 		bl	memset
 334 02fe B9F1600F 		cmp	r9, #96
 335 0302 049B     		ldr	r3, [sp, #16]
 336 0304 0399     		ldr	r1, [sp, #12]
 337 0306 CDF818A0 		str	r10, [sp, #24]
 338 030a 8CBF     		ite	hi
 339 030c 0C22     		movhi	r2, #12
 340 030e 0B22     		movls	r2, #11
 341 0310 4FF08040 		mov	r0, #1073741824
 342 0314 CDE90937 		strd	r3, r7, [sp, #36]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuajcBm.s 			page 7


 343 0318 0792     		str	r2, [sp, #28]
 344 031a FFF7FEFF 		bl	pwm_channel_init
 345 031e 5146     		mov	r1, r10
 346 0320 4FF08040 		mov	r0, #1073741824
 347 0324 FFF7FEFF 		bl	pwm_channel_enable
 348 0328 ABEB0403 		sub	r3, fp, r4
 349 032c 9B00     		lsls	r3, r3, #2
 350 032e 08EB0301 		add	r1, r8, r3
 351 0332 58F80300 		ldr	r0, [r8, r3]
 352 0336 4A68     		ldr	r2, [r1, #4]
 353 0338 0B69     		ldr	r3, [r1, #16]
 354 033a C968     		ldr	r1, [r1, #12]
 355 033c FFF7FEFF 		bl	pio_configure
 356 0340 96E6     		b	.L3
 357              	.L32:
 358 0342 DB07     		lsls	r3, r3, #31
 359 0344 0246     		mov	r2, r0
 360 0346 3946     		mov	r1, r7
 361 0348 3046     		mov	r0, r6
 362 034a 4DD4     		bmi	.L35
 363 034c FFF7FEFF 		bl	tc_write_ra
 364 0350 06EB8712 		add	r2, r6, r7, lsl #6
 365 0354 5368     		ldr	r3, [r2, #4]
 366 0356 23F47023 		bic	r3, r3, #983040
 367 035a 43F4C023 		orr	r3, r3, #393216
 368 035e 5360     		str	r3, [r2, #4]
 369 0360 E1E6     		b	.L34
 370              	.L54:
 371 0362 06AB     		add	r3, sp, #24
 372 0364 2420     		movs	r0, #36
 373 0366 0393     		str	r3, [sp, #12]
 374 0368 FFF7FEFF 		bl	pmc_enable_periph_clk
 375 036c 46F24612 		movw	r2, #24902
 376 0370 1848     		ldr	r0, .L70+44
 377 0372 0399     		ldr	r1, [sp, #12]
 378 0374 0692     		str	r2, [sp, #24]
 379 0376 0790     		str	r0, [sp, #28]
 380 0378 194A     		ldr	r2, .L70+56
 381 037a 0892     		str	r2, [sp, #32]
 382 037c 4FF08040 		mov	r0, #1073741824
 383 0380 FFF7FEFF 		bl	pwm_init
 384 0384 4FF08041 		mov	r1, #1073741824
 385 0388 0122     		movs	r2, #1
 386 038a 0F62     		str	r7, [r1, #32]
 387 038c 3270     		strb	r2, [r6]
 388 038e 1EE7     		b	.L17
 389              	.L33:
 390 0390 FFF7FEFF 		bl	tc_write_rb
 391 0394 06EB8712 		add	r2, r6, r7, lsl #6
 392 0398 5368     		ldr	r3, [r2, #4]
 393 039a 23F07063 		bic	r3, r3, #251658240
 394 039e 43F02063 		orr	r3, r3, #167772160
 395 03a2 5360     		str	r3, [r2, #4]
 396 03a4 BFE6     		b	.L34
 397              	.L71:
 398 03a6 00BF     		.align	2
 399              	.L70:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuajcBm.s 			page 8


 400 03a8 00000000 		.word	.LANCHOR4
 401 03ac 00000000 		.word	.LANCHOR5
 402 03b0 00000000 		.word	.LANCHOR6
 403 03b4 00000000 		.word	.LANCHOR7
 404 03b8 01C44A4A 		.word	1246413825
 405 03bc C0E1E400 		.word	15000000
 406 03c0 00800B40 		.word	1074495488
 407 03c4 00F07F45 		.word	1166012416
 408 03c8 00000000 		.word	0
 409 03cc 00000000 		.word	.LANCHOR0
 410 03d0 00000000 		.word	.LANCHOR1
 411 03d4 58466100 		.word	6375000
 412 03d8 00000000 		.word	.LANCHOR2
 413 03dc 00000000 		.word	.LANCHOR3
 414 03e0 000E2707 		.word	120000000
 415 03e4 00000000 		.word	g_APinDescription
 416              	.L35:
 417 03e8 FFF7FEFF 		bl	tc_write_rb
 418 03ec 06EB8712 		add	r2, r6, r7, lsl #6
 419 03f0 5368     		ldr	r3, [r2, #4]
 420 03f2 23F07063 		bic	r3, r3, #251658240
 421 03f6 43F0C063 		orr	r3, r3, #100663296
 422 03fa 5360     		str	r3, [r2, #4]
 423 03fc 93E6     		b	.L34
 424              		.size	_Z9AnalogOuthft, .-_Z9AnalogOuthft
 425              		.global	maxPwmLoopCount
 426 03fe 00BF     		.section	.bss._ZL10PWMEnabled,"aw",%nobits
 427              		.set	.LANCHOR1,. + 0
 428              		.type	_ZL10PWMEnabled, %object
 429              		.size	_ZL10PWMEnabled, 1
 430              	_ZL10PWMEnabled:
 431 0000 00       		.space	1
 432              		.section	.bss._ZL10TCChanFreq,"aw",%nobits
 433              		.align	2
 434              		.set	.LANCHOR4,. + 0
 435              		.type	_ZL10TCChanFreq, %object
 436              		.size	_ZL10TCChanFreq, 18
 437              	_ZL10TCChanFreq:
 438 0000 00000000 		.space	18
 438      00000000 
 438      00000000 
 438      00000000 
 438      0000
 439              		.section	.bss._ZL11PWMChanFreq,"aw",%nobits
 440              		.align	2
 441              		.set	.LANCHOR0,. + 0
 442              		.type	_ZL11PWMChanFreq, %object
 443              		.size	_ZL11PWMChanFreq, 8
 444              	_ZL11PWMChanFreq:
 445 0000 00000000 		.space	8
 445      00000000 
 446              		.section	.bss._ZL13PWMChanPeriod,"aw",%nobits
 447              		.align	2
 448              		.set	.LANCHOR2,. + 0
 449              		.type	_ZL13PWMChanPeriod, %object
 450              		.size	_ZL13PWMChanPeriod, 8
 451              	_ZL13PWMChanPeriod:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuajcBm.s 			page 9


 452 0000 00000000 		.space	8
 452      00000000 
 453              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 454              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 455              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 456              	_ZL28cpu_irq_prev_interrupt_state:
 457 0000 00       		.space	1
 458              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 459              		.align	2
 460              		.type	_ZL32cpu_irq_critical_section_counter, %object
 461              		.size	_ZL32cpu_irq_critical_section_counter, 4
 462              	_ZL32cpu_irq_critical_section_counter:
 463 0000 00000000 		.space	4
 464              		.section	.bss.maxPwmLoopCount,"aw",%nobits
 465              		.align	2
 466              		.set	.LANCHOR3,. + 0
 467              		.type	maxPwmLoopCount, %object
 468              		.size	maxPwmLoopCount, 4
 469              	maxPwmLoopCount:
 470 0000 00000000 		.space	4
 471              		.section	.rodata._ZL11channelToId,"a",%progbits
 472              		.align	2
 473              		.set	.LANCHOR7,. + 0
 474              		.type	_ZL11channelToId, %object
 475              		.size	_ZL11channelToId, 9
 476              	_ZL11channelToId:
 477 0000 15       		.byte	21
 478 0001 16       		.byte	22
 479 0002 17       		.byte	23
 480 0003 18       		.byte	24
 481 0004 19       		.byte	25
 482 0005 1A       		.byte	26
 483 0006 1B       		.byte	27
 484 0007 1C       		.byte	28
 485 0008 1D       		.byte	29
 486              		.section	.rodata._ZL11channelToTC,"a",%progbits
 487              		.align	2
 488              		.set	.LANCHOR5,. + 0
 489              		.type	_ZL11channelToTC, %object
 490              		.size	_ZL11channelToTC, 36
 491              	_ZL11channelToTC:
 492 0000 00000940 		.word	1074331648
 493 0004 00000940 		.word	1074331648
 494 0008 00000940 		.word	1074331648
 495 000c 00400940 		.word	1074348032
 496 0010 00400940 		.word	1074348032
 497 0014 00400940 		.word	1074348032
 498 0018 00800940 		.word	1074364416
 499 001c 00800940 		.word	1074364416
 500 0020 00800940 		.word	1074364416
 501              		.section	.rodata._ZL13channelToChNo,"a",%progbits
 502              		.align	2
 503              		.set	.LANCHOR6,. + 0
 504              		.type	_ZL13channelToChNo, %object
 505              		.size	_ZL13channelToChNo, 9
 506              	_ZL13channelToChNo:
 507 0000 00       		.byte	0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuajcBm.s 			page 10


 508 0001 01       		.byte	1
 509 0002 02       		.byte	2
 510 0003 00       		.byte	0
 511 0004 01       		.byte	1
 512 0005 02       		.byte	2
 513 0006 00       		.byte	0
 514 0007 01       		.byte	1
 515 0008 02       		.byte	2
 516              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
