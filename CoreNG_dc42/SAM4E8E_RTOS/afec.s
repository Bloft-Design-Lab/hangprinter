ARM GAS  /tmp/ccixR8Ct.s 			page 1


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
  14              		.section	.text.afec_process_callback,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	afec_process_callback, %function
  22              	afec_process_callback:
  23              		@ args = 0, pretend = 0, frame = 8
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 70B5     		push	{r4, r5, r6, lr}
  26 0002 1C4A     		ldr	r2, .L34
  27 0004 016B     		ldr	r1, [r0, #48]
  28 0006 C36A     		ldr	r3, [r0, #44]
  29 0008 1B4D     		ldr	r5, .L34+4
  30 000a 801A     		subs	r0, r0, r2
  31 000c 82B0     		sub	sp, sp, #8
  32 000e B0FA80F0 		clz	r0, r0
  33 0012 0B40     		ands	r3, r3, r1
  34 0014 4009     		lsrs	r0, r0, #5
  35 0016 5C22     		movs	r2, #92
  36 0018 0193     		str	r3, [sp, #4]
  37 001a 02FB0055 		mla	r5, r2, r0, r5
  38 001e 0024     		movs	r4, #0
  39 0020 0126     		movs	r6, #1
  40 0022 0CE0     		b	.L5
  41              	.L33:
  42 0024 019B     		ldr	r3, [sp, #4]
  43 0026 06FA04F2 		lsl	r2, r6, r4
  44 002a 1A42     		tst	r2, r3
  45 002c 02D0     		beq	.L3
  46              	.L28:
  47 002e 2B68     		ldr	r3, [r5]
  48 0030 03B1     		cbz	r3, .L3
  49 0032 9847     		blx	r3
  50              	.L3:
  51 0034 0134     		adds	r4, r4, #1
  52 0036 172C     		cmp	r4, #23
  53 0038 05F10405 		add	r5, r5, #4
  54 003c 0FD0     		beq	.L32
  55              	.L5:
  56 003e 0F2C     		cmp	r4, #15
  57 0040 F0D9     		bls	.L33
ARM GAS  /tmp/ccixR8Ct.s 			page 2


  58 0042 142C     		cmp	r4, #20
  59 0044 0DD8     		bhi	.L4
  60 0046 04F10803 		add	r3, r4, #8
  61 004a 019A     		ldr	r2, [sp, #4]
  62 004c 06FA03F3 		lsl	r3, r6, r3
  63 0050 1342     		tst	r3, r2
  64 0052 ECD1     		bne	.L28
  65 0054 0134     		adds	r4, r4, #1
  66 0056 172C     		cmp	r4, #23
  67 0058 05F10405 		add	r5, r5, #4
  68 005c EFD1     		bne	.L5
  69              	.L32:
  70 005e 02B0     		add	sp, sp, #8
  71              		@ sp needed
  72 0060 70BD     		pop	{r4, r5, r6, pc}
  73              	.L4:
  74 0062 04F10903 		add	r3, r4, #9
  75 0066 019A     		ldr	r2, [sp, #4]
  76 0068 06FA03F3 		lsl	r3, r6, r3
  77 006c 1342     		tst	r3, r2
  78 006e E1D0     		beq	.L3
  79 0070 DDE7     		b	.L28
  80              	.L35:
  81 0072 00BF     		.align	2
  82              	.L34:
  83 0074 00400B40 		.word	1074479104
  84 0078 00000000 		.word	afec_callback_pointer
  85              		.size	afec_process_callback, .-afec_process_callback
  86              		.section	.text.afec_ch_set_config,"ax",%progbits
  87              		.align	1
  88              		.p2align 2,,3
  89              		.global	afec_ch_set_config
  90              		.syntax unified
  91              		.thumb
  92              		.thumb_func
  93              		.fpu fpv4-sp-d16
  94              		.type	afec_ch_set_config, %function
  95              	afec_ch_set_config:
  96              		@ args = 0, pretend = 0, frame = 0
  97              		@ frame_needed = 0, uses_anonymous_args = 0
  98              		@ link register save eliminated.
  99 0000 30B4     		push	{r4, r5}
 100 0002 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 101 0004 056E     		ldr	r5, [r0, #96]
 102 0006 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 103 0008 0122     		movs	r2, #1
 104 000a 002C     		cmp	r4, #0
 105 000c 02FA01F2 		lsl	r2, r2, r1
 106 0010 14BF     		ite	ne
 107 0012 1446     		movne	r4, r2
 108 0014 0024     		moveq	r4, #0
 109 0016 25EA0202 		bic	r2, r5, r2
 110 001a 2243     		orrs	r2, r2, r4
 111 001c 0266     		str	r2, [r0, #96]
 112 001e 4900     		lsls	r1, r1, #1
 113 0020 426D     		ldr	r2, [r0, #84]
 114 0022 0324     		movs	r4, #3
ARM GAS  /tmp/ccixR8Ct.s 			page 3


 115 0024 8C40     		lsls	r4, r4, r1
 116 0026 8B40     		lsls	r3, r3, r1
 117 0028 22EA0401 		bic	r1, r2, r4
 118 002c 0B43     		orrs	r3, r3, r1
 119 002e 4365     		str	r3, [r0, #84]
 120 0030 30BC     		pop	{r4, r5}
 121 0032 7047     		bx	lr
 122              		.size	afec_ch_set_config, .-afec_ch_set_config
 123              		.section	.text.afec_temp_sensor_set_config,"ax",%progbits
 124              		.align	1
 125              		.p2align 2,,3
 126              		.global	afec_temp_sensor_set_config
 127              		.syntax unified
 128              		.thumb
 129              		.thumb_func
 130              		.fpu fpv4-sp-d16
 131              		.type	afec_temp_sensor_set_config, %function
 132              	afec_temp_sensor_set_config:
 133              		@ args = 0, pretend = 0, frame = 0
 134              		@ frame_needed = 0, uses_anonymous_args = 0
 135              		@ link register save eliminated.
 136 0000 4B78     		ldrb	r3, [r1, #1]	@ zero_extendqisi2
 137 0002 D1F80220 		ldr	r2, [r1, #2]	@ unaligned
 138 0006 10B4     		push	{r4}
 139 0008 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
 140 000a 2343     		orrs	r3, r3, r4
 141 000c 0367     		str	r3, [r0, #112]
 142 000e 5DF8044B 		ldr	r4, [sp], #4
 143 0012 4267     		str	r2, [r0, #116]
 144 0014 7047     		bx	lr
 145              		.size	afec_temp_sensor_set_config, .-afec_temp_sensor_set_config
 146 0016 00BF     		.section	.text.afec_get_config_defaults,"ax",%progbits
 147              		.align	1
 148              		.p2align 2,,3
 149              		.global	afec_get_config_defaults
 150              		.syntax unified
 151              		.thumb
 152              		.thumb_func
 153              		.fpu fpv4-sp-d16
 154              		.type	afec_get_config_defaults, %function
 155              	afec_get_config_defaults:
 156              		@ args = 0, pretend = 0, frame = 0
 157              		@ frame_needed = 0, uses_anonymous_args = 0
 158              		@ link register save eliminated.
 159 0000 30B4     		push	{r4, r5}
 160 0002 0A4B     		ldr	r3, .L44
 161 0004 0A4D     		ldr	r5, .L44+4
 162 0006 4360     		str	r3, [r0, #4]
 163 0008 0022     		movs	r2, #0
 164 000a 0123     		movs	r3, #1
 165 000c 4FF48024 		mov	r4, #262144
 166 0010 0221     		movs	r1, #2
 167 0012 8560     		str	r5, [r0, #8]
 168 0014 C460     		str	r4, [r0, #12]
 169 0016 0175     		strb	r1, [r0, #20]
 170 0018 0260     		str	r2, [r0]
 171 001a 0261     		str	r2, [r0, #16]
ARM GAS  /tmp/ccixR8Ct.s 			page 4


 172 001c C275     		strb	r2, [r0, #23]
 173 001e 4375     		strb	r3, [r0, #21]
 174 0020 8375     		strb	r3, [r0, #22]
 175 0022 0376     		strb	r3, [r0, #24]
 176 0024 4376     		strb	r3, [r0, #25]
 177 0026 8376     		strb	r3, [r0, #26]
 178 0028 30BC     		pop	{r4, r5}
 179 002a 7047     		bx	lr
 180              	.L45:
 181              		.align	2
 182              	.L44:
 183 002c 000E2707 		.word	120000000
 184 0030 808D5B00 		.word	6000000
 185              		.size	afec_get_config_defaults, .-afec_get_config_defaults
 186              		.section	.text.afec_ch_get_config_defaults,"ax",%progbits
 187              		.align	1
 188              		.p2align 2,,3
 189              		.global	afec_ch_get_config_defaults
 190              		.syntax unified
 191              		.thumb
 192              		.thumb_func
 193              		.fpu fpv4-sp-d16
 194              		.type	afec_ch_get_config_defaults, %function
 195              	afec_ch_get_config_defaults:
 196              		@ args = 0, pretend = 0, frame = 0
 197              		@ frame_needed = 0, uses_anonymous_args = 0
 198              		@ link register save eliminated.
 199 0000 0022     		movs	r2, #0
 200 0002 0123     		movs	r3, #1
 201 0004 0270     		strb	r2, [r0]
 202 0006 4370     		strb	r3, [r0, #1]
 203 0008 7047     		bx	lr
 204              		.size	afec_ch_get_config_defaults, .-afec_ch_get_config_defaults
 205 000a 00BF     		.section	.text.afec_temp_sensor_get_config_defaults,"ax",%progbits
 206              		.align	1
 207              		.p2align 2,,3
 208              		.global	afec_temp_sensor_get_config_defaults
 209              		.syntax unified
 210              		.thumb
 211              		.thumb_func
 212              		.fpu fpv4-sp-d16
 213              		.type	afec_temp_sensor_get_config_defaults, %function
 214              	afec_temp_sensor_get_config_defaults:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217              		@ link register save eliminated.
 218 0000 10B4     		push	{r4}
 219 0002 2021     		movs	r1, #32
 220 0004 0024     		movs	r4, #0
 221 0006 FF22     		movs	r2, #255
 222 0008 40F6FF73 		movw	r3, #4095
 223 000c 0470     		strb	r4, [r0]
 224 000e 4170     		strb	r1, [r0, #1]
 225 0010 4280     		strh	r2, [r0, #2]	@ movhi
 226 0012 8380     		strh	r3, [r0, #4]	@ movhi
 227 0014 5DF8044B 		ldr	r4, [sp], #4
 228 0018 7047     		bx	lr
ARM GAS  /tmp/ccixR8Ct.s 			page 5


 229              		.size	afec_temp_sensor_get_config_defaults, .-afec_temp_sensor_get_config_defaults
 230 001a 00BF     		.section	.text.afec_init,"ax",%progbits
 231              		.align	1
 232              		.p2align 2,,3
 233              		.global	afec_init
 234              		.syntax unified
 235              		.thumb
 236              		.thumb_func
 237              		.fpu fpv4-sp-d16
 238              		.type	afec_init, %function
 239              	afec_init:
 240              		@ args = 0, pretend = 0, frame = 0
 241              		@ frame_needed = 0, uses_anonymous_args = 0
 242 0000 036B     		ldr	r3, [r0, #48]
 243 0002 13F08073 		ands	r3, r3, #16777216
 244 0006 01D0     		beq	.L70
 245 0008 1920     		movs	r0, #25
 246 000a 7047     		bx	lr
 247              	.L70:
 248 000c F0B5     		push	{r4, r5, r6, r7, lr}
 249 000e 0122     		movs	r2, #1
 250 0010 0260     		str	r2, [r0]
 251 0012 0A7D     		ldrb	r2, [r1, #20]	@ zero_extendqisi2
 252 0014 CF68     		ldr	r7, [r1, #12]
 253 0016 0E69     		ldr	r6, [r1, #16]
 254 0018 4D7D     		ldrb	r5, [r1, #21]	@ zero_extendqisi2
 255 001a 8C68     		ldr	r4, [r1, #8]
 256 001c 91F817E0 		ldrb	lr, [r1, #23]	@ zero_extendqisi2
 257 0020 1206     		lsls	r2, r2, #24
 258 0022 3E43     		orrs	r6, r6, r7
 259 0024 02F0706C 		and	ip, r2, #251658240
 260 0028 2D07     		lsls	r5, r5, #28
 261 002a 4A68     		ldr	r2, [r1, #4]
 262 002c 8F7D     		ldrb	r7, [r1, #22]	@ zero_extendqisi2
 263 002e 6400     		lsls	r4, r4, #1
 264 0030 B2FBF4F4 		udiv	r4, r2, r4
 265 0034 013C     		subs	r4, r4, #1
 266 0036 4CEA0602 		orr	r2, ip, r6
 267 003a 05F04055 		and	r5, r5, #805306368
 268 003e 2402     		lsls	r4, r4, #8
 269 0040 A4B2     		uxth	r4, r4
 270 0042 BEF1000F 		cmp	lr, #0
 271 0046 42EA0502 		orr	r2, r2, r5
 272 004a 91F818E0 		ldrb	lr, [r1, #24]	@ zero_extendqisi2
 273 004e 4E7E     		ldrb	r6, [r1, #25]	@ zero_extendqisi2
 274 0050 0D68     		ldr	r5, [r1]
 275 0052 42EA0402 		orr	r2, r2, r4
 276 0056 14BF     		ite	ne
 277 0058 4FF00044 		movne	r4, #-2147483648
 278 005c 0024     		moveq	r4, #0
 279 005e 002F     		cmp	r7, #0
 280 0060 14BF     		ite	ne
 281 0062 4FF40007 		movne	r7, #8388608
 282 0066 0027     		moveq	r7, #0
 283 0068 BEF1000F 		cmp	lr, #0
 284 006c 42EA0402 		orr	r2, r2, r4
 285 0070 14BF     		ite	ne
ARM GAS  /tmp/ccixR8Ct.s 			page 6


 286 0072 4FF08074 		movne	r4, #16777216
 287 0076 0024     		moveq	r4, #0
 288 0078 002E     		cmp	r6, #0
 289 007a 44EA0504 		orr	r4, r4, r5
 290 007e 14BF     		ite	ne
 291 0080 4FF00075 		movne	r5, #33554432
 292 0084 0025     		moveq	r5, #0
 293 0086 3A43     		orrs	r2, r2, r7
 294 0088 2C43     		orrs	r4, r4, r5
 295 008a 4260     		str	r2, [r0, #4]
 296 008c 8460     		str	r4, [r0, #8]
 297 008e 8A7E     		ldrb	r2, [r1, #26]	@ zero_extendqisi2
 298 0090 0E49     		ldr	r1, .L73
 299 0092 1202     		lsls	r2, r2, #8
 300 0094 02F44072 		and	r2, r2, #768
 301 0098 8842     		cmp	r0, r1
 302 009a C0F89420 		str	r2, [r0, #148]
 303 009e 0CD0     		beq	.L71
 304 00a0 0B4A     		ldr	r2, .L73+4
 305 00a2 9042     		cmp	r0, r2
 306 00a4 01D0     		beq	.L72
 307              	.L57:
 308 00a6 0020     		movs	r0, #0
 309 00a8 F0BD     		pop	{r4, r5, r6, r7, pc}
 310              	.L72:
 311 00aa 0A4A     		ldr	r2, .L73+8
 312 00ac 02F15C01 		add	r1, r2, #92
 313              	.L58:
 314 00b0 42F8043F 		str	r3, [r2, #4]!
 315 00b4 8A42     		cmp	r2, r1
 316 00b6 FBD1     		bne	.L58
 317 00b8 F5E7     		b	.L57
 318              	.L71:
 319 00ba 074A     		ldr	r2, .L73+12
 320 00bc 02F15C01 		add	r1, r2, #92
 321              	.L56:
 322 00c0 42F8043F 		str	r3, [r2, #4]!
 323 00c4 9142     		cmp	r1, r2
 324 00c6 FBD1     		bne	.L56
 325 00c8 EDE7     		b	.L57
 326              	.L74:
 327 00ca 00BF     		.align	2
 328              	.L73:
 329 00cc 00000B40 		.word	1074462720
 330 00d0 00400B40 		.word	1074479104
 331 00d4 58000000 		.word	afec_callback_pointer+88
 332 00d8 FCFFFFFF 		.word	afec_callback_pointer-4
 333              		.size	afec_init, .-afec_init
 334              		.section	.text.afec_set_comparison_mode,"ax",%progbits
 335              		.align	1
 336              		.p2align 2,,3
 337              		.global	afec_set_comparison_mode
 338              		.syntax unified
 339              		.thumb
 340              		.thumb_func
 341              		.fpu fpv4-sp-d16
 342              		.type	afec_set_comparison_mode, %function
ARM GAS  /tmp/ccixR8Ct.s 			page 7


 343              	afec_set_comparison_mode:
 344              		@ args = 0, pretend = 0, frame = 0
 345              		@ frame_needed = 0, uses_anonymous_args = 0
 346              		@ link register save eliminated.
 347 0000 30B4     		push	{r4, r5}
 348 0002 8468     		ldr	r4, [r0, #8]
 349 0004 4FF6FF75 		movw	r5, #65535
 350 0008 24F44354 		bic	r4, r4, #12480
 351 000c 1B03     		lsls	r3, r3, #12
 352 000e AA42     		cmp	r2, r5
 353 0010 24F03B04 		bic	r4, r4, #59
 354 0014 03F44053 		and	r3, r3, #12288
 355 0018 18BF     		it	ne
 356 001a D200     		lslne	r2, r2, #3
 357 001c 43EA0403 		orr	r3, r3, r4
 358 0020 14BF     		ite	ne
 359 0022 D2B2     		uxtbne	r2, r2
 360 0024 4FF40072 		moveq	r2, #512
 361 0028 1943     		orrs	r1, r1, r3
 362 002a 1143     		orrs	r1, r1, r2
 363 002c 8160     		str	r1, [r0, #8]
 364 002e 30BC     		pop	{r4, r5}
 365 0030 7047     		bx	lr
 366              		.size	afec_set_comparison_mode, .-afec_set_comparison_mode
 367 0032 00BF     		.section	.text.afec_set_power_mode,"ax",%progbits
 368              		.align	1
 369              		.p2align 2,,3
 370              		.global	afec_set_power_mode
 371              		.syntax unified
 372              		.thumb
 373              		.thumb_func
 374              		.fpu fpv4-sp-d16
 375              		.type	afec_set_power_mode, %function
 376              	afec_set_power_mode:
 377              		@ args = 0, pretend = 0, frame = 0
 378              		@ frame_needed = 0, uses_anonymous_args = 0
 379              		@ link register save eliminated.
 380 0000 0129     		cmp	r1, #1
 381 0002 4368     		ldr	r3, [r0, #4]
 382 0004 0CD0     		beq	.L81
 383 0006 07D3     		bcc	.L82
 384 0008 0229     		cmp	r1, #2
 385 000a 03D1     		bne	.L80
 386 000c 23F04003 		bic	r3, r3, #64
 387 0010 43F02003 		orr	r3, r3, #32
 388              	.L80:
 389 0014 4360     		str	r3, [r0, #4]
 390 0016 7047     		bx	lr
 391              	.L82:
 392 0018 23F06003 		bic	r3, r3, #96
 393 001c 4360     		str	r3, [r0, #4]
 394 001e 7047     		bx	lr
 395              	.L81:
 396 0020 43F04003 		orr	r3, r3, #64
 397 0024 4360     		str	r3, [r0, #4]
 398 0026 7047     		bx	lr
 399              		.size	afec_set_power_mode, .-afec_set_power_mode
ARM GAS  /tmp/ccixR8Ct.s 			page 8


 400              		.section	.text.afec_enable_interrupt,"ax",%progbits
 401              		.align	1
 402              		.p2align 2,,3
 403              		.global	afec_enable_interrupt
 404              		.syntax unified
 405              		.thumb
 406              		.thumb_func
 407              		.fpu fpv4-sp-d16
 408              		.type	afec_enable_interrupt, %function
 409              	afec_enable_interrupt:
 410              		@ args = 0, pretend = 0, frame = 0
 411              		@ frame_needed = 0, uses_anonymous_args = 0
 412              		@ link register save eliminated.
 413 0000 0B4B     		ldr	r3, .L94
 414 0002 9942     		cmp	r1, r3
 415 0004 07D0     		beq	.L91
 416 0006 0F29     		cmp	r1, #15
 417 0008 07D9     		bls	.L92
 418 000a 1429     		cmp	r1, #20
 419 000c 0AD9     		bls	.L93
 420 000e 0931     		adds	r1, r1, #9
 421              	.L90:
 422 0010 0123     		movs	r3, #1
 423 0012 03FA01F1 		lsl	r1, r3, r1
 424              	.L91:
 425 0016 4162     		str	r1, [r0, #36]
 426 0018 7047     		bx	lr
 427              	.L92:
 428 001a F9D1     		bne	.L90
 429 001c 4FF40043 		mov	r3, #32768
 430 0020 4362     		str	r3, [r0, #36]
 431 0022 7047     		bx	lr
 432              	.L93:
 433 0024 0831     		adds	r1, r1, #8
 434 0026 0123     		movs	r3, #1
 435 0028 03FA01F1 		lsl	r1, r3, r1
 436 002c 4162     		str	r1, [r0, #36]
 437 002e 7047     		bx	lr
 438              	.L95:
 439              		.align	2
 440              	.L94:
 441 0030 FFFF00DF 		.word	-553582593
 442              		.size	afec_enable_interrupt, .-afec_enable_interrupt
 443              		.section	.text.afec_set_callback,"ax",%progbits
 444              		.align	1
 445              		.p2align 2,,3
 446              		.global	afec_set_callback
 447              		.syntax unified
 448              		.thumb
 449              		.thumb_func
 450              		.fpu fpv4-sp-d16
 451              		.type	afec_set_callback, %function
 452              	afec_set_callback:
 453              		@ args = 0, pretend = 0, frame = 0
 454              		@ frame_needed = 0, uses_anonymous_args = 0
 455              		@ link register save eliminated.
 456 0000 F0B4     		push	{r4, r5, r6, r7}
ARM GAS  /tmp/ccixR8Ct.s 			page 9


 457 0002 124C     		ldr	r4, .L104
 458 0004 A042     		cmp	r0, r4
 459 0006 0FD0     		beq	.L103
 460 0008 114D     		ldr	r5, .L104+4
 461 000a 124C     		ldr	r4, .L104+8
 462 000c 45F82120 		str	r2, [r5, r1, lsl #2]
 463 0010 1B01     		lsls	r3, r3, #4
 464 0012 4FF08042 		mov	r2, #1073741824
 465 0016 DBB2     		uxtb	r3, r3
 466 0018 C4F88021 		str	r2, [r4, #384]
 467 001c 84F81E33 		strb	r3, [r4, #798]
 468 0020 2260     		str	r2, [r4]
 469 0022 F0BC     		pop	{r4, r5, r6, r7}
 470 0024 FFF7FEBF 		b	afec_enable_interrupt
 471              	.L103:
 472 0028 0A4C     		ldr	r4, .L104+8
 473 002a 094F     		ldr	r7, .L104+4
 474 002c 01F11705 		add	r5, r1, #23
 475 0030 1B01     		lsls	r3, r3, #4
 476 0032 4FF00046 		mov	r6, #-2147483648
 477 0036 DBB2     		uxtb	r3, r3
 478 0038 47F82520 		str	r2, [r7, r5, lsl #2]
 479 003c C4F88061 		str	r6, [r4, #384]
 480 0040 84F81F33 		strb	r3, [r4, #799]
 481 0044 2660     		str	r6, [r4]
 482 0046 F0BC     		pop	{r4, r5, r6, r7}
 483 0048 FFF7FEBF 		b	afec_enable_interrupt
 484              	.L105:
 485              		.align	2
 486              	.L104:
 487 004c 00400B40 		.word	1074479104
 488 0050 00000000 		.word	afec_callback_pointer
 489 0054 00E100E0 		.word	-536813312
 490              		.size	afec_set_callback, .-afec_set_callback
 491              		.section	.text.afec_disable_interrupt,"ax",%progbits
 492              		.align	1
 493              		.p2align 2,,3
 494              		.global	afec_disable_interrupt
 495              		.syntax unified
 496              		.thumb
 497              		.thumb_func
 498              		.fpu fpv4-sp-d16
 499              		.type	afec_disable_interrupt, %function
 500              	afec_disable_interrupt:
 501              		@ args = 0, pretend = 0, frame = 0
 502              		@ frame_needed = 0, uses_anonymous_args = 0
 503              		@ link register save eliminated.
 504 0000 0B4B     		ldr	r3, .L116
 505 0002 9942     		cmp	r1, r3
 506 0004 07D0     		beq	.L113
 507 0006 0F29     		cmp	r1, #15
 508 0008 07D9     		bls	.L114
 509 000a 1429     		cmp	r1, #20
 510 000c 0AD9     		bls	.L115
 511 000e 0931     		adds	r1, r1, #9
 512              	.L112:
 513 0010 0123     		movs	r3, #1
ARM GAS  /tmp/ccixR8Ct.s 			page 10


 514 0012 03FA01F1 		lsl	r1, r3, r1
 515              	.L113:
 516 0016 8162     		str	r1, [r0, #40]
 517 0018 7047     		bx	lr
 518              	.L114:
 519 001a F9D1     		bne	.L112
 520 001c 4FF40043 		mov	r3, #32768
 521 0020 8362     		str	r3, [r0, #40]
 522 0022 7047     		bx	lr
 523              	.L115:
 524 0024 0831     		adds	r1, r1, #8
 525 0026 0123     		movs	r3, #1
 526 0028 03FA01F1 		lsl	r1, r3, r1
 527 002c 8162     		str	r1, [r0, #40]
 528 002e 7047     		bx	lr
 529              	.L117:
 530              		.align	2
 531              	.L116:
 532 0030 FFFF00DF 		.word	-553582593
 533              		.size	afec_disable_interrupt, .-afec_disable_interrupt
 534              		.section	.text.AFEC0_Handler,"ax",%progbits
 535              		.align	1
 536              		.p2align 2,,3
 537              		.global	AFEC0_Handler
 538              		.syntax unified
 539              		.thumb
 540              		.thumb_func
 541              		.fpu fpv4-sp-d16
 542              		.type	AFEC0_Handler, %function
 543              	AFEC0_Handler:
 544              		@ args = 0, pretend = 0, frame = 0
 545              		@ frame_needed = 0, uses_anonymous_args = 0
 546              		@ link register save eliminated.
 547 0000 0148     		ldr	r0, .L119
 548 0002 FFF7FEBF 		b	afec_process_callback
 549              	.L120:
 550 0006 00BF     		.align	2
 551              	.L119:
 552 0008 00000B40 		.word	1074462720
 553              		.size	AFEC0_Handler, .-AFEC0_Handler
 554              		.section	.text.AFEC1_Handler,"ax",%progbits
 555              		.align	1
 556              		.p2align 2,,3
 557              		.global	AFEC1_Handler
 558              		.syntax unified
 559              		.thumb
 560              		.thumb_func
 561              		.fpu fpv4-sp-d16
 562              		.type	AFEC1_Handler, %function
 563              	AFEC1_Handler:
 564              		@ args = 0, pretend = 0, frame = 0
 565              		@ frame_needed = 0, uses_anonymous_args = 0
 566              		@ link register save eliminated.
 567 0000 0148     		ldr	r0, .L122
 568 0002 FFF7FEBF 		b	afec_process_callback
 569              	.L123:
 570 0006 00BF     		.align	2
ARM GAS  /tmp/ccixR8Ct.s 			page 11


 571              	.L122:
 572 0008 00400B40 		.word	1074479104
 573              		.size	AFEC1_Handler, .-AFEC1_Handler
 574              		.section	.text.afec_enable,"ax",%progbits
 575              		.align	1
 576              		.p2align 2,,3
 577              		.global	afec_enable
 578              		.syntax unified
 579              		.thumb
 580              		.thumb_func
 581              		.fpu fpv4-sp-d16
 582              		.type	afec_enable, %function
 583              	afec_enable:
 584              		@ args = 0, pretend = 0, frame = 0
 585              		@ frame_needed = 0, uses_anonymous_args = 0
 586              		@ link register save eliminated.
 587 0000 034B     		ldr	r3, .L127
 588 0002 9842     		cmp	r0, r3
 589 0004 0CBF     		ite	eq
 590 0006 1F20     		moveq	r0, #31
 591 0008 1E20     		movne	r0, #30
 592 000a FFF7FEBF 		b	pmc_enable_periph_clk
 593              	.L128:
 594 000e 00BF     		.align	2
 595              	.L127:
 596 0010 00400B40 		.word	1074479104
 597              		.size	afec_enable, .-afec_enable
 598              		.section	.text.afec_disable,"ax",%progbits
 599              		.align	1
 600              		.p2align 2,,3
 601              		.global	afec_disable
 602              		.syntax unified
 603              		.thumb
 604              		.thumb_func
 605              		.fpu fpv4-sp-d16
 606              		.type	afec_disable, %function
 607              	afec_disable:
 608              		@ args = 0, pretend = 0, frame = 0
 609              		@ frame_needed = 0, uses_anonymous_args = 0
 610              		@ link register save eliminated.
 611 0000 034B     		ldr	r3, .L132
 612 0002 9842     		cmp	r0, r3
 613 0004 0CBF     		ite	eq
 614 0006 1F20     		moveq	r0, #31
 615 0008 1E20     		movne	r0, #30
 616 000a FFF7FEBF 		b	pmc_disable_periph_clk
 617              	.L133:
 618 000e 00BF     		.align	2
 619              	.L132:
 620 0010 00400B40 		.word	1074479104
 621              		.size	afec_disable, .-afec_disable
 622              		.section	.text.afec_configure_sequence,"ax",%progbits
 623              		.align	1
 624              		.p2align 2,,3
 625              		.global	afec_configure_sequence
 626              		.syntax unified
 627              		.thumb
ARM GAS  /tmp/ccixR8Ct.s 			page 12


 628              		.thumb_func
 629              		.fpu fpv4-sp-d16
 630              		.type	afec_configure_sequence, %function
 631              	afec_configure_sequence:
 632              		@ args = 0, pretend = 0, frame = 0
 633              		@ frame_needed = 0, uses_anonymous_args = 0
 634              		@ link register save eliminated.
 635 0000 70B4     		push	{r4, r5, r6}
 636 0002 4468     		ldr	r4, [r0, #4]
 637 0004 0023     		movs	r3, #0
 638 0006 44F00044 		orr	r4, r4, #-2147483648
 639 000a 072A     		cmp	r2, #7
 640 000c 4460     		str	r4, [r0, #4]
 641 000e C360     		str	r3, [r0, #12]
 642 0010 0361     		str	r3, [r0, #16]
 643 0012 11D8     		bhi	.L135
 644 0014 72B1     		cbz	r2, .L134
 645 0016 013A     		subs	r2, r2, #1
 646 0018 D4B2     		uxtb	r4, r2
 647 001a 01EB4404 		add	r4, r1, r4, lsl #1
 648 001e 0239     		subs	r1, r1, #2
 649              	.L137:
 650 0020 31F8022F 		ldrh	r2, [r1, #2]!
 651 0024 C568     		ldr	r5, [r0, #12]
 652 0026 9A40     		lsls	r2, r2, r3
 653 0028 2A43     		orrs	r2, r2, r5
 654 002a 8C42     		cmp	r4, r1
 655 002c 03F10403 		add	r3, r3, #4
 656 0030 C260     		str	r2, [r0, #12]
 657 0032 F5D1     		bne	.L137
 658              	.L134:
 659 0034 70BC     		pop	{r4, r5, r6}
 660 0036 7047     		bx	lr
 661              	.L135:
 662 0038 8D1E     		subs	r5, r1, #2
 663              	.L139:
 664 003a 35F8024F 		ldrh	r4, [r5, #2]!
 665 003e C668     		ldr	r6, [r0, #12]
 666 0040 9C40     		lsls	r4, r4, r3
 667 0042 0433     		adds	r3, r3, #4
 668 0044 3443     		orrs	r4, r4, r6
 669 0046 202B     		cmp	r3, #32
 670 0048 C460     		str	r4, [r0, #12]
 671 004a F6D1     		bne	.L139
 672 004c 083A     		subs	r2, r2, #8
 673 004e F1D0     		beq	.L134
 674 0050 0024     		movs	r4, #0
 675 0052 2346     		mov	r3, r4
 676              	.L140:
 677 0054 0834     		adds	r4, r4, #8
 678 0056 9E00     		lsls	r6, r3, #2
 679 0058 31F81440 		ldrh	r4, [r1, r4, lsl #1]
 680 005c 0569     		ldr	r5, [r0, #16]
 681 005e 0133     		adds	r3, r3, #1
 682 0060 DBB2     		uxtb	r3, r3
 683 0062 B440     		lsls	r4, r4, r6
 684 0064 2C43     		orrs	r4, r4, r5
ARM GAS  /tmp/ccixR8Ct.s 			page 13


 685 0066 9342     		cmp	r3, r2
 686 0068 0461     		str	r4, [r0, #16]
 687 006a 1C46     		mov	r4, r3
 688 006c F2D3     		bcc	.L140
 689 006e 70BC     		pop	{r4, r5, r6}
 690 0070 7047     		bx	lr
 691              		.size	afec_configure_sequence, .-afec_configure_sequence
 692              		.comm	afec_callback_pointer,184,4
 693 0072 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 694              		.align	2
 695              		.type	cpu_irq_critical_section_counter, %object
 696              		.size	cpu_irq_critical_section_counter, 4
 697              	cpu_irq_critical_section_counter:
 698 0000 00000000 		.space	4
 699              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 700              		.type	cpu_irq_prev_interrupt_state, %object
 701              		.size	cpu_irq_prev_interrupt_state, 1
 702              	cpu_irq_prev_interrupt_state:
 703 0000 00       		.space	1
 704              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
