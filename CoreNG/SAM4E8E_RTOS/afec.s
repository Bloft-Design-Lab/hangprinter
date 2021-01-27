ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHQnnNN.s 			page 1


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
  13              		.file	"afec.c"
  14              		.text
  15              		.section	.text.afec_process_callback,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	afec_process_callback, %function
  23              	afec_process_callback:
  24              		@ args = 0, pretend = 0, frame = 8
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 70B5     		push	{r4, r5, r6, lr}
  27 0002 1A4A     		ldr	r2, .L34
  28 0004 016B     		ldr	r1, [r0, #48]
  29 0006 C36A     		ldr	r3, [r0, #44]
  30 0008 194E     		ldr	r6, .L34+4
  31 000a 801A     		subs	r0, r0, r2
  32 000c 82B0     		sub	sp, sp, #8
  33 000e B0FA80F0 		clz	r0, r0
  34 0012 0B40     		ands	r3, r3, r1
  35 0014 4009     		lsrs	r0, r0, #5
  36 0016 5C22     		movs	r2, #92
  37 0018 0193     		str	r3, [sp, #4]
  38 001a 02FB0066 		mla	r6, r2, r0, r6
  39 001e 0024     		movs	r4, #0
  40 0020 0125     		movs	r5, #1
  41 0022 0BE0     		b	.L5
  42              	.L33:
  43 0024 019B     		ldr	r3, [sp, #4]
  44 0026 05FA04F2 		lsl	r2, r5, r4
  45 002a 1A42     		tst	r2, r3
  46 002c 03D0     		beq	.L3
  47              	.L28:
  48 002e 56F82430 		ldr	r3, [r6, r4, lsl #2]
  49 0032 03B1     		cbz	r3, .L3
  50 0034 9847     		blx	r3
  51              	.L3:
  52 0036 0134     		adds	r4, r4, #1
  53 0038 172C     		cmp	r4, #23
  54 003a 0DD0     		beq	.L32
  55              	.L5:
  56 003c 0F2C     		cmp	r4, #15
  57 003e F1D9     		bls	.L33
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHQnnNN.s 			page 2


  58 0040 142C     		cmp	r4, #20
  59 0042 0BD8     		bhi	.L4
  60 0044 04F10803 		add	r3, r4, #8
  61 0048 019A     		ldr	r2, [sp, #4]
  62 004a 05FA03F3 		lsl	r3, r5, r3
  63 004e 1342     		tst	r3, r2
  64 0050 EDD1     		bne	.L28
  65 0052 0134     		adds	r4, r4, #1
  66 0054 172C     		cmp	r4, #23
  67 0056 F1D1     		bne	.L5
  68              	.L32:
  69 0058 02B0     		add	sp, sp, #8
  70              		@ sp needed
  71 005a 70BD     		pop	{r4, r5, r6, pc}
  72              	.L4:
  73 005c 04F10903 		add	r3, r4, #9
  74 0060 019A     		ldr	r2, [sp, #4]
  75 0062 05FA03F3 		lsl	r3, r5, r3
  76 0066 1342     		tst	r3, r2
  77 0068 E5D0     		beq	.L3
  78 006a E0E7     		b	.L28
  79              	.L35:
  80              		.align	2
  81              	.L34:
  82 006c 00400B40 		.word	1074479104
  83 0070 00000000 		.word	afec_callback_pointer
  84              		.size	afec_process_callback, .-afec_process_callback
  85              		.section	.text.afec_ch_set_config,"ax",%progbits
  86              		.align	1
  87              		.p2align 2,,3
  88              		.global	afec_ch_set_config
  89              		.syntax unified
  90              		.thumb
  91              		.thumb_func
  92              		.fpu fpv4-sp-d16
  93              		.type	afec_ch_set_config, %function
  94              	afec_ch_set_config:
  95              		@ args = 0, pretend = 0, frame = 0
  96              		@ frame_needed = 0, uses_anonymous_args = 0
  97              		@ link register save eliminated.
  98 0000 70B4     		push	{r4, r5, r6}
  99 0002 0123     		movs	r3, #1
 100 0004 056E     		ldr	r5, [r0, #96]
 101 0006 1678     		ldrb	r6, [r2]	@ zero_extendqisi2
 102 0008 8B40     		lsls	r3, r3, r1
 103 000a 25EA0304 		bic	r4, r5, r3
 104 000e 0EB1     		cbz	r6, .L37
 105 0010 43EA0504 		orr	r4, r3, r5
 106              	.L37:
 107 0014 0466     		str	r4, [r0, #96]
 108 0016 4B00     		lsls	r3, r1, #1
 109 0018 0324     		movs	r4, #3
 110 001a 5178     		ldrb	r1, [r2, #1]	@ zero_extendqisi2
 111 001c 426D     		ldr	r2, [r0, #84]
 112 001e 9C40     		lsls	r4, r4, r3
 113 0020 9940     		lsls	r1, r1, r3
 114 0022 22EA0403 		bic	r3, r2, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHQnnNN.s 			page 3


 115 0026 1943     		orrs	r1, r1, r3
 116 0028 4165     		str	r1, [r0, #84]
 117 002a 70BC     		pop	{r4, r5, r6}
 118 002c 7047     		bx	lr
 119              		.size	afec_ch_set_config, .-afec_ch_set_config
 120 002e 00BF     		.section	.text.afec_temp_sensor_set_config,"ax",%progbits
 121              		.align	1
 122              		.p2align 2,,3
 123              		.global	afec_temp_sensor_set_config
 124              		.syntax unified
 125              		.thumb
 126              		.thumb_func
 127              		.fpu fpv4-sp-d16
 128              		.type	afec_temp_sensor_set_config, %function
 129              	afec_temp_sensor_set_config:
 130              		@ args = 0, pretend = 0, frame = 0
 131              		@ frame_needed = 0, uses_anonymous_args = 0
 132              		@ link register save eliminated.
 133 0000 4B78     		ldrb	r3, [r1, #1]	@ zero_extendqisi2
 134 0002 D1F80220 		ldr	r2, [r1, #2]	@ unaligned
 135 0006 10B4     		push	{r4}
 136 0008 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
 137 000a 2343     		orrs	r3, r3, r4
 138 000c 0367     		str	r3, [r0, #112]
 139 000e 5DF8044B 		ldr	r4, [sp], #4
 140 0012 4267     		str	r2, [r0, #116]
 141 0014 7047     		bx	lr
 142              		.size	afec_temp_sensor_set_config, .-afec_temp_sensor_set_config
 143 0016 00BF     		.section	.text.afec_get_config_defaults,"ax",%progbits
 144              		.align	1
 145              		.p2align 2,,3
 146              		.global	afec_get_config_defaults
 147              		.syntax unified
 148              		.thumb
 149              		.thumb_func
 150              		.fpu fpv4-sp-d16
 151              		.type	afec_get_config_defaults, %function
 152              	afec_get_config_defaults:
 153              		@ args = 0, pretend = 0, frame = 0
 154              		@ frame_needed = 0, uses_anonymous_args = 0
 155              		@ link register save eliminated.
 156 0000 30B4     		push	{r4, r5}
 157 0002 0A4B     		ldr	r3, .L46
 158 0004 0A4D     		ldr	r5, .L46+4
 159 0006 4360     		str	r3, [r0, #4]
 160 0008 0022     		movs	r2, #0
 161 000a 0123     		movs	r3, #1
 162 000c 4FF48024 		mov	r4, #262144
 163 0010 4FF48171 		mov	r1, #258
 164 0014 C0E90254 		strd	r5, r4, [r0, #8]
 165 0018 8182     		strh	r1, [r0, #20]	@ movhi
 166 001a 0260     		str	r2, [r0]
 167 001c 0261     		str	r2, [r0, #16]
 168 001e C275     		strb	r2, [r0, #23]
 169 0020 8375     		strb	r3, [r0, #22]
 170 0022 0376     		strb	r3, [r0, #24]
 171 0024 4376     		strb	r3, [r0, #25]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHQnnNN.s 			page 4


 172 0026 8376     		strb	r3, [r0, #26]
 173 0028 30BC     		pop	{r4, r5}
 174 002a 7047     		bx	lr
 175              	.L47:
 176              		.align	2
 177              	.L46:
 178 002c 000E2707 		.word	120000000
 179 0030 808D5B00 		.word	6000000
 180              		.size	afec_get_config_defaults, .-afec_get_config_defaults
 181              		.section	.text.afec_ch_get_config_defaults,"ax",%progbits
 182              		.align	1
 183              		.p2align 2,,3
 184              		.global	afec_ch_get_config_defaults
 185              		.syntax unified
 186              		.thumb
 187              		.thumb_func
 188              		.fpu fpv4-sp-d16
 189              		.type	afec_ch_get_config_defaults, %function
 190              	afec_ch_get_config_defaults:
 191              		@ args = 0, pretend = 0, frame = 0
 192              		@ frame_needed = 0, uses_anonymous_args = 0
 193              		@ link register save eliminated.
 194 0000 0022     		movs	r2, #0
 195 0002 0123     		movs	r3, #1
 196 0004 0270     		strb	r2, [r0]
 197 0006 4370     		strb	r3, [r0, #1]
 198 0008 7047     		bx	lr
 199              		.size	afec_ch_get_config_defaults, .-afec_ch_get_config_defaults
 200 000a 00BF     		.section	.text.afec_temp_sensor_get_config_defaults,"ax",%progbits
 201              		.align	1
 202              		.p2align 2,,3
 203              		.global	afec_temp_sensor_get_config_defaults
 204              		.syntax unified
 205              		.thumb
 206              		.thumb_func
 207              		.fpu fpv4-sp-d16
 208              		.type	afec_temp_sensor_get_config_defaults, %function
 209              	afec_temp_sensor_get_config_defaults:
 210              		@ args = 0, pretend = 0, frame = 0
 211              		@ frame_needed = 0, uses_anonymous_args = 0
 212              		@ link register save eliminated.
 213 0000 10B4     		push	{r4}
 214 0002 2021     		movs	r1, #32
 215 0004 0024     		movs	r4, #0
 216 0006 FF22     		movs	r2, #255
 217 0008 40F6FF73 		movw	r3, #4095
 218 000c 0470     		strb	r4, [r0]
 219 000e 4170     		strb	r1, [r0, #1]
 220 0010 4280     		strh	r2, [r0, #2]	@ movhi
 221 0012 8380     		strh	r3, [r0, #4]	@ movhi
 222 0014 5DF8044B 		ldr	r4, [sp], #4
 223 0018 7047     		bx	lr
 224              		.size	afec_temp_sensor_get_config_defaults, .-afec_temp_sensor_get_config_defaults
 225 001a 00BF     		.section	.text.afec_init,"ax",%progbits
 226              		.align	1
 227              		.p2align 2,,3
 228              		.global	afec_init
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHQnnNN.s 			page 5


 229              		.syntax unified
 230              		.thumb
 231              		.thumb_func
 232              		.fpu fpv4-sp-d16
 233              		.type	afec_init, %function
 234              	afec_init:
 235              		@ args = 0, pretend = 0, frame = 0
 236              		@ frame_needed = 0, uses_anonymous_args = 0
 237              		@ link register save eliminated.
 238 0000 036B     		ldr	r3, [r0, #48]
 239 0002 DB01     		lsls	r3, r3, #7
 240 0004 48D4     		bmi	.L61
 241 0006 F0B4     		push	{r4, r5, r6, r7}
 242 0008 0123     		movs	r3, #1
 243 000a 0360     		str	r3, [r0]
 244 000c D1E90365 		ldrd	r6, r5, [r1, #12]
 245 0010 0B7D     		ldrb	r3, [r1, #20]	@ zero_extendqisi2
 246 0012 8A68     		ldr	r2, [r1, #8]
 247 0014 4C7D     		ldrb	r4, [r1, #21]	@ zero_extendqisi2
 248 0016 1B06     		lsls	r3, r3, #24
 249 0018 3543     		orrs	r5, r5, r6
 250 001a 5700     		lsls	r7, r2, #1
 251 001c CE7D     		ldrb	r6, [r1, #23]	@ zero_extendqisi2
 252 001e 4A68     		ldr	r2, [r1, #4]
 253 0020 B2FBF7F2 		udiv	r2, r2, r7
 254 0024 03F07063 		and	r3, r3, #251658240
 255 0028 2407     		lsls	r4, r4, #28
 256 002a 013A     		subs	r2, r2, #1
 257 002c 2B43     		orrs	r3, r3, r5
 258 002e 04F04054 		and	r4, r4, #805306368
 259 0032 8D7D     		ldrb	r5, [r1, #22]	@ zero_extendqisi2
 260 0034 1202     		lsls	r2, r2, #8
 261 0036 92B2     		uxth	r2, r2
 262 0038 002E     		cmp	r6, #0
 263 003a 43EA0403 		orr	r3, r3, r4
 264 003e 0C7E     		ldrb	r4, [r1, #24]	@ zero_extendqisi2
 265 0040 43EA0203 		orr	r3, r3, r2
 266 0044 0CBF     		ite	eq
 267 0046 0022     		moveq	r2, #0
 268 0048 4FF00042 		movne	r2, #-2147483648
 269 004c 002D     		cmp	r5, #0
 270 004e 43EA0203 		orr	r3, r3, r2
 271 0052 0D68     		ldr	r5, [r1]
 272 0054 0CBF     		ite	eq
 273 0056 0022     		moveq	r2, #0
 274 0058 4FF40002 		movne	r2, #8388608
 275 005c 002C     		cmp	r4, #0
 276 005e 4C7E     		ldrb	r4, [r1, #25]	@ zero_extendqisi2
 277 0060 43EA0203 		orr	r3, r3, r2
 278 0064 0CBF     		ite	eq
 279 0066 0022     		moveq	r2, #0
 280 0068 4FF08072 		movne	r2, #16777216
 281 006c 4360     		str	r3, [r0, #4]
 282 006e 2A43     		orrs	r2, r2, r5
 283 0070 7CB9     		cbnz	r4, .L74
 284              	.L56:
 285 0072 8260     		str	r2, [r0, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHQnnNN.s 			page 6


 286 0074 8B7E     		ldrb	r3, [r1, #26]	@ zero_extendqisi2
 287 0076 144A     		ldr	r2, .L77
 288 0078 1B02     		lsls	r3, r3, #8
 289 007a 03F44073 		and	r3, r3, #768
 290 007e 9042     		cmp	r0, r2
 291 0080 C0F89430 		str	r3, [r0, #148]
 292 0084 15D0     		beq	.L75
 293 0086 114B     		ldr	r3, .L77+4
 294 0088 9842     		cmp	r0, r3
 295 008a 07D0     		beq	.L76
 296 008c 0020     		movs	r0, #0
 297 008e F0BC     		pop	{r4, r5, r6, r7}
 298 0090 7047     		bx	lr
 299              	.L74:
 300 0092 42F00072 		orr	r2, r2, #33554432
 301 0096 ECE7     		b	.L56
 302              	.L61:
 303 0098 1920     		movs	r0, #25
 304 009a 7047     		bx	lr
 305              	.L76:
 306 009c 0C4B     		ldr	r3, .L77+8
 307 009e 0021     		movs	r1, #0
 308 00a0 03F15C02 		add	r2, r3, #92
 309              	.L60:
 310 00a4 43F8041F 		str	r1, [r3, #4]!
 311 00a8 9342     		cmp	r3, r2
 312 00aa FBD1     		bne	.L60
 313 00ac 0020     		movs	r0, #0
 314 00ae F0BC     		pop	{r4, r5, r6, r7}
 315 00b0 7047     		bx	lr
 316              	.L75:
 317 00b2 084B     		ldr	r3, .L77+12
 318 00b4 0021     		movs	r1, #0
 319 00b6 03F15C02 		add	r2, r3, #92
 320              	.L58:
 321 00ba 43F8041F 		str	r1, [r3, #4]!
 322 00be 9A42     		cmp	r2, r3
 323 00c0 FBD1     		bne	.L58
 324 00c2 0020     		movs	r0, #0
 325 00c4 F0BC     		pop	{r4, r5, r6, r7}
 326 00c6 7047     		bx	lr
 327              	.L78:
 328              		.align	2
 329              	.L77:
 330 00c8 00000B40 		.word	1074462720
 331 00cc 00400B40 		.word	1074479104
 332 00d0 58000000 		.word	afec_callback_pointer+88
 333 00d4 FCFFFFFF 		.word	afec_callback_pointer-4
 334              		.size	afec_init, .-afec_init
 335              		.section	.text.afec_set_comparison_mode,"ax",%progbits
 336              		.align	1
 337              		.p2align 2,,3
 338              		.global	afec_set_comparison_mode
 339              		.syntax unified
 340              		.thumb
 341              		.thumb_func
 342              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHQnnNN.s 			page 7


 343              		.type	afec_set_comparison_mode, %function
 344              	afec_set_comparison_mode:
 345              		@ args = 0, pretend = 0, frame = 0
 346              		@ frame_needed = 0, uses_anonymous_args = 0
 347              		@ link register save eliminated.
 348 0000 30B4     		push	{r4, r5}
 349 0002 8468     		ldr	r4, [r0, #8]
 350 0004 4FF6FF75 		movw	r5, #65535
 351 0008 24F44354 		bic	r4, r4, #12480
 352 000c 1B03     		lsls	r3, r3, #12
 353 000e AA42     		cmp	r2, r5
 354 0010 24F03B04 		bic	r4, r4, #59
 355 0014 03F44053 		and	r3, r3, #12288
 356 0018 18BF     		it	ne
 357 001a D200     		lslne	r2, r2, #3
 358 001c 43EA0403 		orr	r3, r3, r4
 359 0020 14BF     		ite	ne
 360 0022 D2B2     		uxtbne	r2, r2
 361 0024 4FF40072 		moveq	r2, #512
 362 0028 1943     		orrs	r1, r1, r3
 363 002a 1143     		orrs	r1, r1, r2
 364 002c 8160     		str	r1, [r0, #8]
 365 002e 30BC     		pop	{r4, r5}
 366 0030 7047     		bx	lr
 367              		.size	afec_set_comparison_mode, .-afec_set_comparison_mode
 368 0032 00BF     		.section	.text.afec_set_power_mode,"ax",%progbits
 369              		.align	1
 370              		.p2align 2,,3
 371              		.global	afec_set_power_mode
 372              		.syntax unified
 373              		.thumb
 374              		.thumb_func
 375              		.fpu fpv4-sp-d16
 376              		.type	afec_set_power_mode, %function
 377              	afec_set_power_mode:
 378              		@ args = 0, pretend = 0, frame = 0
 379              		@ frame_needed = 0, uses_anonymous_args = 0
 380              		@ link register save eliminated.
 381 0000 0129     		cmp	r1, #1
 382 0002 4368     		ldr	r3, [r0, #4]
 383 0004 0CD0     		beq	.L85
 384 0006 07D3     		bcc	.L86
 385 0008 0229     		cmp	r1, #2
 386 000a 03D1     		bne	.L84
 387 000c 23F04003 		bic	r3, r3, #64
 388 0010 43F02003 		orr	r3, r3, #32
 389              	.L84:
 390 0014 4360     		str	r3, [r0, #4]
 391 0016 7047     		bx	lr
 392              	.L86:
 393 0018 23F06003 		bic	r3, r3, #96
 394 001c 4360     		str	r3, [r0, #4]
 395 001e 7047     		bx	lr
 396              	.L85:
 397 0020 43F04003 		orr	r3, r3, #64
 398 0024 4360     		str	r3, [r0, #4]
 399 0026 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHQnnNN.s 			page 8


 400              		.size	afec_set_power_mode, .-afec_set_power_mode
 401              		.section	.text.afec_enable_interrupt,"ax",%progbits
 402              		.align	1
 403              		.p2align 2,,3
 404              		.global	afec_enable_interrupt
 405              		.syntax unified
 406              		.thumb
 407              		.thumb_func
 408              		.fpu fpv4-sp-d16
 409              		.type	afec_enable_interrupt, %function
 410              	afec_enable_interrupt:
 411              		@ args = 0, pretend = 0, frame = 0
 412              		@ frame_needed = 0, uses_anonymous_args = 0
 413              		@ link register save eliminated.
 414 0000 0C4B     		ldr	r3, .L98
 415 0002 9942     		cmp	r1, r3
 416 0004 05D0     		beq	.L94
 417 0006 0F29     		cmp	r1, #15
 418 0008 05D8     		bhi	.L91
 419 000a 0ED0     		beq	.L96
 420              	.L95:
 421 000c 0123     		movs	r3, #1
 422 000e 03FA01F1 		lsl	r1, r3, r1
 423              	.L94:
 424 0012 4162     		str	r1, [r0, #36]
 425 0014 7047     		bx	lr
 426              	.L91:
 427 0016 1429     		cmp	r1, #20
 428 0018 01D9     		bls	.L97
 429 001a 0931     		adds	r1, r1, #9
 430 001c F6E7     		b	.L95
 431              	.L97:
 432 001e 0831     		adds	r1, r1, #8
 433 0020 0123     		movs	r3, #1
 434 0022 03FA01F1 		lsl	r1, r3, r1
 435 0026 4162     		str	r1, [r0, #36]
 436 0028 7047     		bx	lr
 437              	.L96:
 438 002a 4FF40043 		mov	r3, #32768
 439 002e 4362     		str	r3, [r0, #36]
 440 0030 7047     		bx	lr
 441              	.L99:
 442 0032 00BF     		.align	2
 443              	.L98:
 444 0034 FFFF00DF 		.word	-553582593
 445              		.size	afec_enable_interrupt, .-afec_enable_interrupt
 446              		.section	.text.afec_set_callback,"ax",%progbits
 447              		.align	1
 448              		.p2align 2,,3
 449              		.global	afec_set_callback
 450              		.syntax unified
 451              		.thumb
 452              		.thumb_func
 453              		.fpu fpv4-sp-d16
 454              		.type	afec_set_callback, %function
 455              	afec_set_callback:
 456              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHQnnNN.s 			page 9


 457              		@ frame_needed = 0, uses_anonymous_args = 0
 458              		@ link register save eliminated.
 459 0000 F0B4     		push	{r4, r5, r6, r7}
 460 0002 114C     		ldr	r4, .L105
 461 0004 1B01     		lsls	r3, r3, #4
 462 0006 A042     		cmp	r0, r4
 463 0008 DBB2     		uxtb	r3, r3
 464 000a 0DD0     		beq	.L104
 465 000c 0F4D     		ldr	r5, .L105+4
 466 000e 104C     		ldr	r4, .L105+8
 467 0010 45F82120 		str	r2, [r5, r1, lsl #2]
 468 0014 4FF08042 		mov	r2, #1073741824
 469 0018 C4F88021 		str	r2, [r4, #384]
 470 001c 84F81E33 		strb	r3, [r4, #798]
 471 0020 2260     		str	r2, [r4]
 472 0022 F0BC     		pop	{r4, r5, r6, r7}
 473 0024 FFF7FEBF 		b	afec_enable_interrupt
 474              	.L104:
 475 0028 094C     		ldr	r4, .L105+8
 476 002a 084F     		ldr	r7, .L105+4
 477 002c 01F11705 		add	r5, r1, #23
 478 0030 4FF00046 		mov	r6, #-2147483648
 479 0034 47F82520 		str	r2, [r7, r5, lsl #2]
 480 0038 C4F88061 		str	r6, [r4, #384]
 481 003c 84F81F33 		strb	r3, [r4, #799]
 482 0040 2660     		str	r6, [r4]
 483 0042 F0BC     		pop	{r4, r5, r6, r7}
 484 0044 FFF7FEBF 		b	afec_enable_interrupt
 485              	.L106:
 486              		.align	2
 487              	.L105:
 488 0048 00400B40 		.word	1074479104
 489 004c 00000000 		.word	afec_callback_pointer
 490 0050 00E100E0 		.word	-536813312
 491              		.size	afec_set_callback, .-afec_set_callback
 492              		.section	.text.afec_disable_interrupt,"ax",%progbits
 493              		.align	1
 494              		.p2align 2,,3
 495              		.global	afec_disable_interrupt
 496              		.syntax unified
 497              		.thumb
 498              		.thumb_func
 499              		.fpu fpv4-sp-d16
 500              		.type	afec_disable_interrupt, %function
 501              	afec_disable_interrupt:
 502              		@ args = 0, pretend = 0, frame = 0
 503              		@ frame_needed = 0, uses_anonymous_args = 0
 504              		@ link register save eliminated.
 505 0000 0C4B     		ldr	r3, .L117
 506 0002 9942     		cmp	r1, r3
 507 0004 05D0     		beq	.L113
 508 0006 0F29     		cmp	r1, #15
 509 0008 05D8     		bhi	.L110
 510 000a 0ED0     		beq	.L115
 511              	.L114:
 512 000c 0123     		movs	r3, #1
 513 000e 03FA01F1 		lsl	r1, r3, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHQnnNN.s 			page 10


 514              	.L113:
 515 0012 8162     		str	r1, [r0, #40]
 516 0014 7047     		bx	lr
 517              	.L110:
 518 0016 1429     		cmp	r1, #20
 519 0018 01D9     		bls	.L116
 520 001a 0931     		adds	r1, r1, #9
 521 001c F6E7     		b	.L114
 522              	.L116:
 523 001e 0831     		adds	r1, r1, #8
 524 0020 0123     		movs	r3, #1
 525 0022 03FA01F1 		lsl	r1, r3, r1
 526 0026 8162     		str	r1, [r0, #40]
 527 0028 7047     		bx	lr
 528              	.L115:
 529 002a 4FF40043 		mov	r3, #32768
 530 002e 8362     		str	r3, [r0, #40]
 531 0030 7047     		bx	lr
 532              	.L118:
 533 0032 00BF     		.align	2
 534              	.L117:
 535 0034 FFFF00DF 		.word	-553582593
 536              		.size	afec_disable_interrupt, .-afec_disable_interrupt
 537              		.section	.text.AFEC0_Handler,"ax",%progbits
 538              		.align	1
 539              		.p2align 2,,3
 540              		.global	AFEC0_Handler
 541              		.syntax unified
 542              		.thumb
 543              		.thumb_func
 544              		.fpu fpv4-sp-d16
 545              		.type	AFEC0_Handler, %function
 546              	AFEC0_Handler:
 547              		@ args = 0, pretend = 0, frame = 0
 548              		@ frame_needed = 0, uses_anonymous_args = 0
 549              		@ link register save eliminated.
 550 0000 0148     		ldr	r0, .L120
 551 0002 FFF7FEBF 		b	afec_process_callback
 552              	.L121:
 553 0006 00BF     		.align	2
 554              	.L120:
 555 0008 00000B40 		.word	1074462720
 556              		.size	AFEC0_Handler, .-AFEC0_Handler
 557              		.section	.text.AFEC1_Handler,"ax",%progbits
 558              		.align	1
 559              		.p2align 2,,3
 560              		.global	AFEC1_Handler
 561              		.syntax unified
 562              		.thumb
 563              		.thumb_func
 564              		.fpu fpv4-sp-d16
 565              		.type	AFEC1_Handler, %function
 566              	AFEC1_Handler:
 567              		@ args = 0, pretend = 0, frame = 0
 568              		@ frame_needed = 0, uses_anonymous_args = 0
 569              		@ link register save eliminated.
 570 0000 0148     		ldr	r0, .L123
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHQnnNN.s 			page 11


 571 0002 FFF7FEBF 		b	afec_process_callback
 572              	.L124:
 573 0006 00BF     		.align	2
 574              	.L123:
 575 0008 00400B40 		.word	1074479104
 576              		.size	AFEC1_Handler, .-AFEC1_Handler
 577              		.section	.text.afec_enable,"ax",%progbits
 578              		.align	1
 579              		.p2align 2,,3
 580              		.global	afec_enable
 581              		.syntax unified
 582              		.thumb
 583              		.thumb_func
 584              		.fpu fpv4-sp-d16
 585              		.type	afec_enable, %function
 586              	afec_enable:
 587              		@ args = 0, pretend = 0, frame = 0
 588              		@ frame_needed = 0, uses_anonymous_args = 0
 589              		@ link register save eliminated.
 590 0000 034B     		ldr	r3, .L128
 591 0002 9842     		cmp	r0, r3
 592 0004 0CBF     		ite	eq
 593 0006 1F20     		moveq	r0, #31
 594 0008 1E20     		movne	r0, #30
 595 000a FFF7FEBF 		b	pmc_enable_periph_clk
 596              	.L129:
 597 000e 00BF     		.align	2
 598              	.L128:
 599 0010 00400B40 		.word	1074479104
 600              		.size	afec_enable, .-afec_enable
 601              		.section	.text.afec_disable,"ax",%progbits
 602              		.align	1
 603              		.p2align 2,,3
 604              		.global	afec_disable
 605              		.syntax unified
 606              		.thumb
 607              		.thumb_func
 608              		.fpu fpv4-sp-d16
 609              		.type	afec_disable, %function
 610              	afec_disable:
 611              		@ args = 0, pretend = 0, frame = 0
 612              		@ frame_needed = 0, uses_anonymous_args = 0
 613              		@ link register save eliminated.
 614 0000 034B     		ldr	r3, .L133
 615 0002 9842     		cmp	r0, r3
 616 0004 0CBF     		ite	eq
 617 0006 1F20     		moveq	r0, #31
 618 0008 1E20     		movne	r0, #30
 619 000a FFF7FEBF 		b	pmc_disable_periph_clk
 620              	.L134:
 621 000e 00BF     		.align	2
 622              	.L133:
 623 0010 00400B40 		.word	1074479104
 624              		.size	afec_disable, .-afec_disable
 625              		.section	.text.afec_configure_sequence,"ax",%progbits
 626              		.align	1
 627              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHQnnNN.s 			page 12


 628              		.global	afec_configure_sequence
 629              		.syntax unified
 630              		.thumb
 631              		.thumb_func
 632              		.fpu fpv4-sp-d16
 633              		.type	afec_configure_sequence, %function
 634              	afec_configure_sequence:
 635              		@ args = 0, pretend = 0, frame = 0
 636              		@ frame_needed = 0, uses_anonymous_args = 0
 637              		@ link register save eliminated.
 638 0000 70B4     		push	{r4, r5, r6}
 639 0002 4468     		ldr	r4, [r0, #4]
 640 0004 0023     		movs	r3, #0
 641 0006 44F00044 		orr	r4, r4, #-2147483648
 642 000a 072A     		cmp	r2, #7
 643 000c 4460     		str	r4, [r0, #4]
 644 000e C360     		str	r3, [r0, #12]
 645 0010 0361     		str	r3, [r0, #16]
 646 0012 11D8     		bhi	.L136
 647 0014 72B1     		cbz	r2, .L135
 648 0016 541E     		subs	r4, r2, #1
 649 0018 E4B2     		uxtb	r4, r4
 650 001a 01EB4404 		add	r4, r1, r4, lsl #1
 651 001e 0239     		subs	r1, r1, #2
 652              	.L138:
 653 0020 31F8022F 		ldrh	r2, [r1, #2]!
 654 0024 C568     		ldr	r5, [r0, #12]
 655 0026 9A40     		lsls	r2, r2, r3
 656 0028 2A43     		orrs	r2, r2, r5
 657 002a 8C42     		cmp	r4, r1
 658 002c 03F10403 		add	r3, r3, #4
 659 0030 C260     		str	r2, [r0, #12]
 660 0032 F5D1     		bne	.L138
 661              	.L135:
 662 0034 70BC     		pop	{r4, r5, r6}
 663 0036 7047     		bx	lr
 664              	.L136:
 665 0038 8D1E     		subs	r5, r1, #2
 666              	.L139:
 667 003a 35F8024F 		ldrh	r4, [r5, #2]!
 668 003e C668     		ldr	r6, [r0, #12]
 669 0040 9C40     		lsls	r4, r4, r3
 670 0042 0433     		adds	r3, r3, #4
 671 0044 3443     		orrs	r4, r4, r6
 672 0046 202B     		cmp	r3, #32
 673 0048 C460     		str	r4, [r0, #12]
 674 004a F6D1     		bne	.L139
 675 004c 083A     		subs	r2, r2, #8
 676 004e F1D0     		beq	.L135
 677 0050 0023     		movs	r3, #0
 678 0052 1C46     		mov	r4, r3
 679              	.L140:
 680 0054 0834     		adds	r4, r4, #8
 681 0056 9E00     		lsls	r6, r3, #2
 682 0058 31F81440 		ldrh	r4, [r1, r4, lsl #1]
 683 005c 0569     		ldr	r5, [r0, #16]
 684 005e 0133     		adds	r3, r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccHQnnNN.s 			page 13


 685 0060 DBB2     		uxtb	r3, r3
 686 0062 B440     		lsls	r4, r4, r6
 687 0064 2C43     		orrs	r4, r4, r5
 688 0066 9342     		cmp	r3, r2
 689 0068 0461     		str	r4, [r0, #16]
 690 006a 1C46     		mov	r4, r3
 691 006c F2D3     		bcc	.L140
 692 006e 70BC     		pop	{r4, r5, r6}
 693 0070 7047     		bx	lr
 694              		.size	afec_configure_sequence, .-afec_configure_sequence
 695              		.comm	afec_callback_pointer,184,4
 696 0072 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 697              		.align	2
 698              		.type	cpu_irq_critical_section_counter, %object
 699              		.size	cpu_irq_critical_section_counter, 4
 700              	cpu_irq_critical_section_counter:
 701 0000 00000000 		.space	4
 702              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 703              		.type	cpu_irq_prev_interrupt_state, %object
 704              		.size	cpu_irq_prev_interrupt_state, 1
 705              	cpu_irq_prev_interrupt_state:
 706 0000 00       		.space	1
 707              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
