ARM GAS  /tmp/ccES1yDh.s 			page 1


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
  11              		.file	"pmc.c"
  12              		.section	.text.pmc_mck_set_prescaler,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	pmc_mck_set_prescaler
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	pmc_mck_set_prescaler, %function
  21              	pmc_mck_set_prescaler:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 044A     		ldr	r2, .L6
  26 0002 136B     		ldr	r3, [r2, #48]
  27 0004 23F07003 		bic	r3, r3, #112
  28 0008 1843     		orrs	r0, r0, r3
  29 000a 1063     		str	r0, [r2, #48]
  30              	.L2:
  31 000c 936E     		ldr	r3, [r2, #104]
  32 000e 1B07     		lsls	r3, r3, #28
  33 0010 FCD5     		bpl	.L2
  34 0012 7047     		bx	lr
  35              	.L7:
  36              		.align	2
  37              	.L6:
  38 0014 00040E40 		.word	1074660352
  39              		.size	pmc_mck_set_prescaler, .-pmc_mck_set_prescaler
  40              		.section	.text.pmc_mck_set_source,"ax",%progbits
  41              		.align	1
  42              		.p2align 2,,3
  43              		.global	pmc_mck_set_source
  44              		.syntax unified
  45              		.thumb
  46              		.thumb_func
  47              		.fpu softvfp
  48              		.type	pmc_mck_set_source, %function
  49              	pmc_mck_set_source:
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52              		@ link register save eliminated.
  53 0000 044A     		ldr	r2, .L12
  54 0002 136B     		ldr	r3, [r2, #48]
  55 0004 23F00303 		bic	r3, r3, #3
  56 0008 1843     		orrs	r0, r0, r3
  57 000a 1063     		str	r0, [r2, #48]
ARM GAS  /tmp/ccES1yDh.s 			page 2


  58              	.L9:
  59 000c 936E     		ldr	r3, [r2, #104]
  60 000e 1B07     		lsls	r3, r3, #28
  61 0010 FCD5     		bpl	.L9
  62 0012 7047     		bx	lr
  63              	.L13:
  64              		.align	2
  65              	.L12:
  66 0014 00040E40 		.word	1074660352
  67              		.size	pmc_mck_set_source, .-pmc_mck_set_source
  68              		.section	.text.pmc_switch_mck_to_sclk,"ax",%progbits
  69              		.align	1
  70              		.p2align 2,,3
  71              		.global	pmc_switch_mck_to_sclk
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu softvfp
  76              		.type	pmc_switch_mck_to_sclk, %function
  77              	pmc_switch_mck_to_sclk:
  78              		@ args = 0, pretend = 0, frame = 0
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80              		@ link register save eliminated.
  81 0000 1349     		ldr	r1, .L30
  82 0002 0B6B     		ldr	r3, [r1, #48]
  83 0004 23F00303 		bic	r3, r3, #3
  84 0008 0B63     		str	r3, [r1, #48]
  85 000a 8B6E     		ldr	r3, [r1, #104]
  86 000c 1B07     		lsls	r3, r3, #28
  87 000e 58BF     		it	pl
  88 0010 4FF40063 		movpl	r3, #2048
  89 0014 02D5     		bpl	.L17
  90 0016 04E0     		b	.L16
  91              	.L19:
  92 0018 013B     		subs	r3, r3, #1
  93 001a 16D0     		beq	.L21
  94              	.L17:
  95 001c 8A6E     		ldr	r2, [r1, #104]
  96 001e 1207     		lsls	r2, r2, #28
  97 0020 FAD5     		bpl	.L19
  98              	.L16:
  99 0022 0B49     		ldr	r1, .L30
 100 0024 0B6B     		ldr	r3, [r1, #48]
 101 0026 23F07003 		bic	r3, r3, #112
 102 002a 1843     		orrs	r0, r0, r3
 103 002c 0863     		str	r0, [r1, #48]
 104 002e 8B6E     		ldr	r3, [r1, #104]
 105 0030 1807     		lsls	r0, r3, #28
 106 0032 58BF     		it	pl
 107 0034 4FF40063 		movpl	r3, #2048
 108 0038 02D5     		bpl	.L22
 109 003a 04E0     		b	.L29
 110              	.L23:
 111 003c 013B     		subs	r3, r3, #1
 112 003e 04D0     		beq	.L21
 113              	.L22:
 114 0040 8A6E     		ldr	r2, [r1, #104]
ARM GAS  /tmp/ccES1yDh.s 			page 3


 115 0042 1207     		lsls	r2, r2, #28
 116 0044 FAD5     		bpl	.L23
 117              	.L29:
 118 0046 0020     		movs	r0, #0
 119 0048 7047     		bx	lr
 120              	.L21:
 121 004a 0120     		movs	r0, #1
 122 004c 7047     		bx	lr
 123              	.L31:
 124 004e 00BF     		.align	2
 125              	.L30:
 126 0050 00040E40 		.word	1074660352
 127              		.size	pmc_switch_mck_to_sclk, .-pmc_switch_mck_to_sclk
 128              		.section	.text.pmc_switch_mck_to_mainck,"ax",%progbits
 129              		.align	1
 130              		.p2align 2,,3
 131              		.global	pmc_switch_mck_to_mainck
 132              		.syntax unified
 133              		.thumb
 134              		.thumb_func
 135              		.fpu softvfp
 136              		.type	pmc_switch_mck_to_mainck, %function
 137              	pmc_switch_mck_to_mainck:
 138              		@ args = 0, pretend = 0, frame = 0
 139              		@ frame_needed = 0, uses_anonymous_args = 0
 140              		@ link register save eliminated.
 141 0000 1449     		ldr	r1, .L48
 142 0002 0B6B     		ldr	r3, [r1, #48]
 143 0004 23F00303 		bic	r3, r3, #3
 144 0008 43F00103 		orr	r3, r3, #1
 145 000c 0B63     		str	r3, [r1, #48]
 146 000e 8B6E     		ldr	r3, [r1, #104]
 147 0010 1B07     		lsls	r3, r3, #28
 148 0012 58BF     		it	pl
 149 0014 4FF40063 		movpl	r3, #2048
 150 0018 02D5     		bpl	.L35
 151 001a 04E0     		b	.L34
 152              	.L37:
 153 001c 013B     		subs	r3, r3, #1
 154 001e 16D0     		beq	.L39
 155              	.L35:
 156 0020 8A6E     		ldr	r2, [r1, #104]
 157 0022 1207     		lsls	r2, r2, #28
 158 0024 FAD5     		bpl	.L37
 159              	.L34:
 160 0026 0B49     		ldr	r1, .L48
 161 0028 0B6B     		ldr	r3, [r1, #48]
 162 002a 23F07003 		bic	r3, r3, #112
 163 002e 1843     		orrs	r0, r0, r3
 164 0030 0863     		str	r0, [r1, #48]
 165 0032 8B6E     		ldr	r3, [r1, #104]
 166 0034 1807     		lsls	r0, r3, #28
 167 0036 58BF     		it	pl
 168 0038 4FF40063 		movpl	r3, #2048
 169 003c 02D5     		bpl	.L40
 170 003e 04E0     		b	.L47
 171              	.L41:
ARM GAS  /tmp/ccES1yDh.s 			page 4


 172 0040 013B     		subs	r3, r3, #1
 173 0042 04D0     		beq	.L39
 174              	.L40:
 175 0044 8A6E     		ldr	r2, [r1, #104]
 176 0046 1207     		lsls	r2, r2, #28
 177 0048 FAD5     		bpl	.L41
 178              	.L47:
 179 004a 0020     		movs	r0, #0
 180 004c 7047     		bx	lr
 181              	.L39:
 182 004e 0120     		movs	r0, #1
 183 0050 7047     		bx	lr
 184              	.L49:
 185 0052 00BF     		.align	2
 186              	.L48:
 187 0054 00040E40 		.word	1074660352
 188              		.size	pmc_switch_mck_to_mainck, .-pmc_switch_mck_to_mainck
 189              		.section	.text.pmc_switch_mck_to_pllack,"ax",%progbits
 190              		.align	1
 191              		.p2align 2,,3
 192              		.global	pmc_switch_mck_to_pllack
 193              		.syntax unified
 194              		.thumb
 195              		.thumb_func
 196              		.fpu softvfp
 197              		.type	pmc_switch_mck_to_pllack, %function
 198              	pmc_switch_mck_to_pllack:
 199              		@ args = 0, pretend = 0, frame = 0
 200              		@ frame_needed = 0, uses_anonymous_args = 0
 201              		@ link register save eliminated.
 202 0000 1449     		ldr	r1, .L66
 203 0002 0B6B     		ldr	r3, [r1, #48]
 204 0004 23F07003 		bic	r3, r3, #112
 205 0008 1843     		orrs	r0, r0, r3
 206 000a 0863     		str	r0, [r1, #48]
 207 000c 8B6E     		ldr	r3, [r1, #104]
 208 000e 1807     		lsls	r0, r3, #28
 209 0010 58BF     		it	pl
 210 0012 4FF40063 		movpl	r3, #2048
 211 0016 02D5     		bpl	.L53
 212 0018 04E0     		b	.L52
 213              	.L55:
 214 001a 013B     		subs	r3, r3, #1
 215 001c 17D0     		beq	.L57
 216              	.L53:
 217 001e 8A6E     		ldr	r2, [r1, #104]
 218 0020 1207     		lsls	r2, r2, #28
 219 0022 FAD5     		bpl	.L55
 220              	.L52:
 221 0024 0B49     		ldr	r1, .L66
 222 0026 0B6B     		ldr	r3, [r1, #48]
 223 0028 23F00303 		bic	r3, r3, #3
 224 002c 43F00203 		orr	r3, r3, #2
 225 0030 0B63     		str	r3, [r1, #48]
 226 0032 8B6E     		ldr	r3, [r1, #104]
 227 0034 1807     		lsls	r0, r3, #28
 228 0036 58BF     		it	pl
ARM GAS  /tmp/ccES1yDh.s 			page 5


 229 0038 4FF40063 		movpl	r3, #2048
 230 003c 02D5     		bpl	.L58
 231 003e 04E0     		b	.L65
 232              	.L59:
 233 0040 013B     		subs	r3, r3, #1
 234 0042 04D0     		beq	.L57
 235              	.L58:
 236 0044 8A6E     		ldr	r2, [r1, #104]
 237 0046 1207     		lsls	r2, r2, #28
 238 0048 FAD5     		bpl	.L59
 239              	.L65:
 240 004a 0020     		movs	r0, #0
 241 004c 7047     		bx	lr
 242              	.L57:
 243 004e 0120     		movs	r0, #1
 244 0050 7047     		bx	lr
 245              	.L67:
 246 0052 00BF     		.align	2
 247              	.L66:
 248 0054 00040E40 		.word	1074660352
 249              		.size	pmc_switch_mck_to_pllack, .-pmc_switch_mck_to_pllack
 250              		.section	.text.pmc_switch_mck_to_pllbck,"ax",%progbits
 251              		.align	1
 252              		.p2align 2,,3
 253              		.global	pmc_switch_mck_to_pllbck
 254              		.syntax unified
 255              		.thumb
 256              		.thumb_func
 257              		.fpu softvfp
 258              		.type	pmc_switch_mck_to_pllbck, %function
 259              	pmc_switch_mck_to_pllbck:
 260              		@ args = 0, pretend = 0, frame = 0
 261              		@ frame_needed = 0, uses_anonymous_args = 0
 262              		@ link register save eliminated.
 263 0000 1349     		ldr	r1, .L84
 264 0002 0B6B     		ldr	r3, [r1, #48]
 265 0004 23F07003 		bic	r3, r3, #112
 266 0008 1843     		orrs	r0, r0, r3
 267 000a 0863     		str	r0, [r1, #48]
 268 000c 8B6E     		ldr	r3, [r1, #104]
 269 000e 1807     		lsls	r0, r3, #28
 270 0010 58BF     		it	pl
 271 0012 4FF40063 		movpl	r3, #2048
 272 0016 02D5     		bpl	.L71
 273 0018 04E0     		b	.L70
 274              	.L73:
 275 001a 013B     		subs	r3, r3, #1
 276 001c 15D0     		beq	.L75
 277              	.L71:
 278 001e 8A6E     		ldr	r2, [r1, #104]
 279 0020 1207     		lsls	r2, r2, #28
 280 0022 FAD5     		bpl	.L73
 281              	.L70:
 282 0024 0A49     		ldr	r1, .L84
 283 0026 0B6B     		ldr	r3, [r1, #48]
 284 0028 43F00303 		orr	r3, r3, #3
 285 002c 0B63     		str	r3, [r1, #48]
ARM GAS  /tmp/ccES1yDh.s 			page 6


 286 002e 8B6E     		ldr	r3, [r1, #104]
 287 0030 1807     		lsls	r0, r3, #28
 288 0032 58BF     		it	pl
 289 0034 4FF40063 		movpl	r3, #2048
 290 0038 02D5     		bpl	.L76
 291 003a 04E0     		b	.L83
 292              	.L77:
 293 003c 013B     		subs	r3, r3, #1
 294 003e 04D0     		beq	.L75
 295              	.L76:
 296 0040 8A6E     		ldr	r2, [r1, #104]
 297 0042 1207     		lsls	r2, r2, #28
 298 0044 FAD5     		bpl	.L77
 299              	.L83:
 300 0046 0020     		movs	r0, #0
 301 0048 7047     		bx	lr
 302              	.L75:
 303 004a 0120     		movs	r0, #1
 304 004c 7047     		bx	lr
 305              	.L85:
 306 004e 00BF     		.align	2
 307              	.L84:
 308 0050 00040E40 		.word	1074660352
 309              		.size	pmc_switch_mck_to_pllbck, .-pmc_switch_mck_to_pllbck
 310              		.section	.text.pmc_switch_sclk_to_32kxtal,"ax",%progbits
 311              		.align	1
 312              		.p2align 2,,3
 313              		.global	pmc_switch_sclk_to_32kxtal
 314              		.syntax unified
 315              		.thumb
 316              		.thumb_func
 317              		.fpu softvfp
 318              		.type	pmc_switch_sclk_to_32kxtal, %function
 319              	pmc_switch_sclk_to_32kxtal:
 320              		@ args = 0, pretend = 0, frame = 0
 321              		@ frame_needed = 0, uses_anonymous_args = 0
 322              		@ link register save eliminated.
 323 0000 0128     		cmp	r0, #1
 324 0002 06D1     		bne	.L87
 325 0004 054A     		ldr	r2, .L88
 326 0006 9368     		ldr	r3, [r2, #8]
 327 0008 43F02543 		orr	r3, r3, #-1526726656
 328 000c 43F48013 		orr	r3, r3, #1048576
 329 0010 9360     		str	r3, [r2, #8]
 330              	.L87:
 331 0012 024B     		ldr	r3, .L88
 332 0014 024A     		ldr	r2, .L88+4
 333 0016 1A60     		str	r2, [r3]
 334 0018 7047     		bx	lr
 335              	.L89:
 336 001a 00BF     		.align	2
 337              	.L88:
 338 001c 10140E40 		.word	1074664464
 339 0020 080000A5 		.word	-1526726648
 340              		.size	pmc_switch_sclk_to_32kxtal, .-pmc_switch_sclk_to_32kxtal
 341              		.section	.text.pmc_osc_is_ready_32kxtal,"ax",%progbits
 342              		.align	1
ARM GAS  /tmp/ccES1yDh.s 			page 7


 343              		.p2align 2,,3
 344              		.global	pmc_osc_is_ready_32kxtal
 345              		.syntax unified
 346              		.thumb
 347              		.thumb_func
 348              		.fpu softvfp
 349              		.type	pmc_osc_is_ready_32kxtal, %function
 350              	pmc_osc_is_ready_32kxtal:
 351              		@ args = 0, pretend = 0, frame = 0
 352              		@ frame_needed = 0, uses_anonymous_args = 0
 353              		@ link register save eliminated.
 354 0000 054B     		ldr	r3, .L93
 355 0002 5869     		ldr	r0, [r3, #20]
 356 0004 10F08000 		ands	r0, r0, #128
 357 0008 05D0     		beq	.L91
 358 000a A3F58053 		sub	r3, r3, #4096
 359 000e 103B     		subs	r3, r3, #16
 360 0010 986E     		ldr	r0, [r3, #104]
 361 0012 C0F3C010 		ubfx	r0, r0, #7, #1
 362              	.L91:
 363 0016 7047     		bx	lr
 364              	.L94:
 365              		.align	2
 366              	.L93:
 367 0018 10140E40 		.word	1074664464
 368              		.size	pmc_osc_is_ready_32kxtal, .-pmc_osc_is_ready_32kxtal
 369              		.section	.text.pmc_switch_mainck_to_fastrc,"ax",%progbits
 370              		.align	1
 371              		.p2align 2,,3
 372              		.global	pmc_switch_mainck_to_fastrc
 373              		.syntax unified
 374              		.thumb
 375              		.thumb_func
 376              		.fpu softvfp
 377              		.type	pmc_switch_mainck_to_fastrc, %function
 378              	pmc_switch_mainck_to_fastrc:
 379              		@ args = 0, pretend = 0, frame = 0
 380              		@ frame_needed = 0, uses_anonymous_args = 0
 381              		@ link register save eliminated.
 382 0000 0F4A     		ldr	r2, .L102
 383 0002 116A     		ldr	r1, [r2, #32]
 384 0004 41F45C11 		orr	r1, r1, #3604480
 385 0008 41F00801 		orr	r1, r1, #8
 386 000c 1162     		str	r1, [r2, #32]
 387              	.L96:
 388 000e 936E     		ldr	r3, [r2, #104]
 389 0010 9903     		lsls	r1, r3, #14
 390 0012 FCD5     		bpl	.L96
 391 0014 136A     		ldr	r3, [r2, #32]
 392 0016 0A49     		ldr	r1, .L102
 393 0018 23F45C13 		bic	r3, r3, #3604480
 394 001c 23F07003 		bic	r3, r3, #112
 395 0020 43F45C13 		orr	r3, r3, #3604480
 396 0024 1843     		orrs	r0, r0, r3
 397 0026 1062     		str	r0, [r2, #32]
 398              	.L97:
 399 0028 8B6E     		ldr	r3, [r1, #104]
ARM GAS  /tmp/ccES1yDh.s 			page 8


 400 002a 9B03     		lsls	r3, r3, #14
 401 002c FCD5     		bpl	.L97
 402 002e 0B6A     		ldr	r3, [r1, #32]
 403 0030 23F09B73 		bic	r3, r3, #20316160
 404 0034 23F48033 		bic	r3, r3, #65536
 405 0038 43F45C13 		orr	r3, r3, #3604480
 406 003c 0B62     		str	r3, [r1, #32]
 407 003e 7047     		bx	lr
 408              	.L103:
 409              		.align	2
 410              	.L102:
 411 0040 00040E40 		.word	1074660352
 412              		.size	pmc_switch_mainck_to_fastrc, .-pmc_switch_mainck_to_fastrc
 413              		.section	.text.pmc_osc_enable_fastrc,"ax",%progbits
 414              		.align	1
 415              		.p2align 2,,3
 416              		.global	pmc_osc_enable_fastrc
 417              		.syntax unified
 418              		.thumb
 419              		.thumb_func
 420              		.fpu softvfp
 421              		.type	pmc_osc_enable_fastrc, %function
 422              	pmc_osc_enable_fastrc:
 423              		@ args = 0, pretend = 0, frame = 0
 424              		@ frame_needed = 0, uses_anonymous_args = 0
 425              		@ link register save eliminated.
 426 0000 0B4A     		ldr	r2, .L111
 427 0002 116A     		ldr	r1, [r2, #32]
 428 0004 41F45C11 		orr	r1, r1, #3604480
 429 0008 41F00801 		orr	r1, r1, #8
 430 000c 1162     		str	r1, [r2, #32]
 431              	.L105:
 432 000e 936E     		ldr	r3, [r2, #104]
 433 0010 9903     		lsls	r1, r3, #14
 434 0012 FCD5     		bpl	.L105
 435 0014 136A     		ldr	r3, [r2, #32]
 436 0016 0649     		ldr	r1, .L111
 437 0018 23F45C13 		bic	r3, r3, #3604480
 438 001c 23F07003 		bic	r3, r3, #112
 439 0020 43F45C13 		orr	r3, r3, #3604480
 440 0024 1843     		orrs	r0, r0, r3
 441 0026 1062     		str	r0, [r2, #32]
 442              	.L106:
 443 0028 8B6E     		ldr	r3, [r1, #104]
 444 002a 9B03     		lsls	r3, r3, #14
 445 002c FCD5     		bpl	.L106
 446 002e 7047     		bx	lr
 447              	.L112:
 448              		.align	2
 449              	.L111:
 450 0030 00040E40 		.word	1074660352
 451              		.size	pmc_osc_enable_fastrc, .-pmc_osc_enable_fastrc
 452              		.section	.text.pmc_osc_disable_fastrc,"ax",%progbits
 453              		.align	1
 454              		.p2align 2,,3
 455              		.global	pmc_osc_disable_fastrc
 456              		.syntax unified
ARM GAS  /tmp/ccES1yDh.s 			page 9


 457              		.thumb
 458              		.thumb_func
 459              		.fpu softvfp
 460              		.type	pmc_osc_disable_fastrc, %function
 461              	pmc_osc_disable_fastrc:
 462              		@ args = 0, pretend = 0, frame = 0
 463              		@ frame_needed = 0, uses_anonymous_args = 0
 464              		@ link register save eliminated.
 465 0000 044A     		ldr	r2, .L114
 466 0002 136A     		ldr	r3, [r2, #32]
 467 0004 23F45C13 		bic	r3, r3, #3604480
 468 0008 23F07803 		bic	r3, r3, #120
 469 000c 43F45C13 		orr	r3, r3, #3604480
 470 0010 1362     		str	r3, [r2, #32]
 471 0012 7047     		bx	lr
 472              	.L115:
 473              		.align	2
 474              	.L114:
 475 0014 00040E40 		.word	1074660352
 476              		.size	pmc_osc_disable_fastrc, .-pmc_osc_disable_fastrc
 477              		.section	.text.pmc_osc_is_ready_fastrc,"ax",%progbits
 478              		.align	1
 479              		.p2align 2,,3
 480              		.global	pmc_osc_is_ready_fastrc
 481              		.syntax unified
 482              		.thumb
 483              		.thumb_func
 484              		.fpu softvfp
 485              		.type	pmc_osc_is_ready_fastrc, %function
 486              	pmc_osc_is_ready_fastrc:
 487              		@ args = 0, pretend = 0, frame = 0
 488              		@ frame_needed = 0, uses_anonymous_args = 0
 489              		@ link register save eliminated.
 490 0000 024B     		ldr	r3, .L117
 491 0002 986E     		ldr	r0, [r3, #104]
 492 0004 00F40030 		and	r0, r0, #131072
 493 0008 7047     		bx	lr
 494              	.L118:
 495 000a 00BF     		.align	2
 496              	.L117:
 497 000c 00040E40 		.word	1074660352
 498              		.size	pmc_osc_is_ready_fastrc, .-pmc_osc_is_ready_fastrc
 499              		.section	.text.pmc_osc_enable_main_xtal,"ax",%progbits
 500              		.align	1
 501              		.p2align 2,,3
 502              		.global	pmc_osc_enable_main_xtal
 503              		.syntax unified
 504              		.thumb
 505              		.thumb_func
 506              		.fpu softvfp
 507              		.type	pmc_osc_enable_main_xtal, %function
 508              	pmc_osc_enable_main_xtal:
 509              		@ args = 0, pretend = 0, frame = 0
 510              		@ frame_needed = 0, uses_anonymous_args = 0
 511              		@ link register save eliminated.
 512 0000 074A     		ldr	r2, .L123
 513 0002 136A     		ldr	r3, [r2, #32]
ARM GAS  /tmp/ccES1yDh.s 			page 10


 514 0004 23F00303 		bic	r3, r3, #3
 515 0008 0002     		lsls	r0, r0, #8
 516 000a 43F45C13 		orr	r3, r3, #3604480
 517 000e 80B2     		uxth	r0, r0
 518 0010 43F00103 		orr	r3, r3, #1
 519 0014 0343     		orrs	r3, r3, r0
 520 0016 1362     		str	r3, [r2, #32]
 521              	.L120:
 522 0018 936E     		ldr	r3, [r2, #104]
 523 001a DB07     		lsls	r3, r3, #31
 524 001c FCD5     		bpl	.L120
 525 001e 7047     		bx	lr
 526              	.L124:
 527              		.align	2
 528              	.L123:
 529 0020 00040E40 		.word	1074660352
 530              		.size	pmc_osc_enable_main_xtal, .-pmc_osc_enable_main_xtal
 531              		.section	.text.pmc_osc_bypass_main_xtal,"ax",%progbits
 532              		.align	1
 533              		.p2align 2,,3
 534              		.global	pmc_osc_bypass_main_xtal
 535              		.syntax unified
 536              		.thumb
 537              		.thumb_func
 538              		.fpu softvfp
 539              		.type	pmc_osc_bypass_main_xtal, %function
 540              	pmc_osc_bypass_main_xtal:
 541              		@ args = 0, pretend = 0, frame = 0
 542              		@ frame_needed = 0, uses_anonymous_args = 0
 543              		@ link register save eliminated.
 544 0000 044A     		ldr	r2, .L126
 545 0002 136A     		ldr	r3, [r2, #32]
 546 0004 23F00303 		bic	r3, r3, #3
 547 0008 43F45C13 		orr	r3, r3, #3604480
 548 000c 43F00203 		orr	r3, r3, #2
 549 0010 1362     		str	r3, [r2, #32]
 550 0012 7047     		bx	lr
 551              	.L127:
 552              		.align	2
 553              	.L126:
 554 0014 00040E40 		.word	1074660352
 555              		.size	pmc_osc_bypass_main_xtal, .-pmc_osc_bypass_main_xtal
 556              		.section	.text.pmc_osc_disable_main_xtal,"ax",%progbits
 557              		.align	1
 558              		.p2align 2,,3
 559              		.global	pmc_osc_disable_main_xtal
 560              		.syntax unified
 561              		.thumb
 562              		.thumb_func
 563              		.fpu softvfp
 564              		.type	pmc_osc_disable_main_xtal, %function
 565              	pmc_osc_disable_main_xtal:
 566              		@ args = 0, pretend = 0, frame = 0
 567              		@ frame_needed = 0, uses_anonymous_args = 0
 568              		@ link register save eliminated.
 569 0000 034A     		ldr	r2, .L129
 570 0002 136A     		ldr	r3, [r2, #32]
ARM GAS  /tmp/ccES1yDh.s 			page 11


 571 0004 23F00303 		bic	r3, r3, #3
 572 0008 43F45C13 		orr	r3, r3, #3604480
 573 000c 1362     		str	r3, [r2, #32]
 574 000e 7047     		bx	lr
 575              	.L130:
 576              		.align	2
 577              	.L129:
 578 0010 00040E40 		.word	1074660352
 579              		.size	pmc_osc_disable_main_xtal, .-pmc_osc_disable_main_xtal
 580              		.section	.text.pmc_osc_is_bypassed_main_xtal,"ax",%progbits
 581              		.align	1
 582              		.p2align 2,,3
 583              		.global	pmc_osc_is_bypassed_main_xtal
 584              		.syntax unified
 585              		.thumb
 586              		.thumb_func
 587              		.fpu softvfp
 588              		.type	pmc_osc_is_bypassed_main_xtal, %function
 589              	pmc_osc_is_bypassed_main_xtal:
 590              		@ args = 0, pretend = 0, frame = 0
 591              		@ frame_needed = 0, uses_anonymous_args = 0
 592              		@ link register save eliminated.
 593 0000 024B     		ldr	r3, .L132
 594 0002 186A     		ldr	r0, [r3, #32]
 595 0004 00F00200 		and	r0, r0, #2
 596 0008 7047     		bx	lr
 597              	.L133:
 598 000a 00BF     		.align	2
 599              	.L132:
 600 000c 00040E40 		.word	1074660352
 601              		.size	pmc_osc_is_bypassed_main_xtal, .-pmc_osc_is_bypassed_main_xtal
 602              		.section	.text.pmc_osc_is_ready_main_xtal,"ax",%progbits
 603              		.align	1
 604              		.p2align 2,,3
 605              		.global	pmc_osc_is_ready_main_xtal
 606              		.syntax unified
 607              		.thumb
 608              		.thumb_func
 609              		.fpu softvfp
 610              		.type	pmc_osc_is_ready_main_xtal, %function
 611              	pmc_osc_is_ready_main_xtal:
 612              		@ args = 0, pretend = 0, frame = 0
 613              		@ frame_needed = 0, uses_anonymous_args = 0
 614              		@ link register save eliminated.
 615 0000 024B     		ldr	r3, .L135
 616 0002 986E     		ldr	r0, [r3, #104]
 617 0004 00F00100 		and	r0, r0, #1
 618 0008 7047     		bx	lr
 619              	.L136:
 620 000a 00BF     		.align	2
 621              	.L135:
 622 000c 00040E40 		.word	1074660352
 623              		.size	pmc_osc_is_ready_main_xtal, .-pmc_osc_is_ready_main_xtal
 624              		.section	.text.pmc_switch_mainck_to_xtal,"ax",%progbits
 625              		.align	1
 626              		.p2align 2,,3
 627              		.global	pmc_switch_mainck_to_xtal
ARM GAS  /tmp/ccES1yDh.s 			page 12


 628              		.syntax unified
 629              		.thumb
 630              		.thumb_func
 631              		.fpu softvfp
 632              		.type	pmc_switch_mainck_to_xtal, %function
 633              	pmc_switch_mainck_to_xtal:
 634              		@ args = 0, pretend = 0, frame = 0
 635              		@ frame_needed = 0, uses_anonymous_args = 0
 636              		@ link register save eliminated.
 637 0000 B8B9     		cbnz	r0, .L143
 638 0002 104A     		ldr	r2, .L144
 639 0004 136A     		ldr	r3, [r2, #32]
 640 0006 23F45C13 		bic	r3, r3, #3604480
 641 000a 23F00303 		bic	r3, r3, #3
 642 000e 0902     		lsls	r1, r1, #8
 643 0010 43F45C13 		orr	r3, r3, #3604480
 644 0014 89B2     		uxth	r1, r1
 645 0016 43F00103 		orr	r3, r3, #1
 646 001a 0B43     		orrs	r3, r3, r1
 647 001c 1362     		str	r3, [r2, #32]
 648              	.L140:
 649 001e 936E     		ldr	r3, [r2, #104]
 650 0020 DB07     		lsls	r3, r3, #31
 651 0022 FCD5     		bpl	.L140
 652 0024 136A     		ldr	r3, [r2, #32]
 653 0026 43F09B73 		orr	r3, r3, #20316160
 654 002a 43F48033 		orr	r3, r3, #65536
 655 002e 1362     		str	r3, [r2, #32]
 656 0030 7047     		bx	lr
 657              	.L143:
 658 0032 0449     		ldr	r1, .L144
 659 0034 044A     		ldr	r2, .L144+4
 660 0036 086A     		ldr	r0, [r1, #32]
 661 0038 044B     		ldr	r3, .L144+8
 662 003a 0240     		ands	r2, r2, r0
 663 003c 1343     		orrs	r3, r3, r2
 664 003e 0B62     		str	r3, [r1, #32]
 665 0040 7047     		bx	lr
 666              	.L145:
 667 0042 00BF     		.align	2
 668              	.L144:
 669 0044 00040E40 		.word	1074660352
 670 0048 FCFFC8FE 		.word	-20381700
 671 004c 02003701 		.word	20381698
 672              		.size	pmc_switch_mainck_to_xtal, .-pmc_switch_mainck_to_xtal
 673              		.section	.text.pmc_osc_disable_xtal,"ax",%progbits
 674              		.align	1
 675              		.p2align 2,,3
 676              		.global	pmc_osc_disable_xtal
 677              		.syntax unified
 678              		.thumb
 679              		.thumb_func
 680              		.fpu softvfp
 681              		.type	pmc_osc_disable_xtal, %function
 682              	pmc_osc_disable_xtal:
 683              		@ args = 0, pretend = 0, frame = 0
 684              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccES1yDh.s 			page 13


 685              		@ link register save eliminated.
 686 0000 084A     		ldr	r2, .L150
 687 0002 136A     		ldr	r3, [r2, #32]
 688 0004 23F45C13 		bic	r3, r3, #3604480
 689 0008 28B9     		cbnz	r0, .L149
 690 000a 23F00103 		bic	r3, r3, #1
 691 000e 43F45C13 		orr	r3, r3, #3604480
 692 0012 1362     		str	r3, [r2, #32]
 693 0014 7047     		bx	lr
 694              	.L149:
 695 0016 23F00203 		bic	r3, r3, #2
 696 001a 43F45C13 		orr	r3, r3, #3604480
 697 001e 1362     		str	r3, [r2, #32]
 698 0020 7047     		bx	lr
 699              	.L151:
 700 0022 00BF     		.align	2
 701              	.L150:
 702 0024 00040E40 		.word	1074660352
 703              		.size	pmc_osc_disable_xtal, .-pmc_osc_disable_xtal
 704              		.section	.text.pmc_osc_is_ready_mainck,"ax",%progbits
 705              		.align	1
 706              		.p2align 2,,3
 707              		.global	pmc_osc_is_ready_mainck
 708              		.syntax unified
 709              		.thumb
 710              		.thumb_func
 711              		.fpu softvfp
 712              		.type	pmc_osc_is_ready_mainck, %function
 713              	pmc_osc_is_ready_mainck:
 714              		@ args = 0, pretend = 0, frame = 0
 715              		@ frame_needed = 0, uses_anonymous_args = 0
 716              		@ link register save eliminated.
 717 0000 024B     		ldr	r3, .L153
 718 0002 986E     		ldr	r0, [r3, #104]
 719 0004 00F48030 		and	r0, r0, #65536
 720 0008 7047     		bx	lr
 721              	.L154:
 722 000a 00BF     		.align	2
 723              	.L153:
 724 000c 00040E40 		.word	1074660352
 725              		.size	pmc_osc_is_ready_mainck, .-pmc_osc_is_ready_mainck
 726              		.section	.text.pmc_mainck_osc_select,"ax",%progbits
 727              		.align	1
 728              		.p2align 2,,3
 729              		.global	pmc_mainck_osc_select
 730              		.syntax unified
 731              		.thumb
 732              		.thumb_func
 733              		.fpu softvfp
 734              		.type	pmc_mainck_osc_select, %function
 735              	pmc_mainck_osc_select:
 736              		@ args = 0, pretend = 0, frame = 0
 737              		@ frame_needed = 0, uses_anonymous_args = 0
 738              		@ link register save eliminated.
 739 0000 084B     		ldr	r3, .L159
 740 0002 1B6A     		ldr	r3, [r3, #32]
 741 0004 30B9     		cbnz	r0, .L158
ARM GAS  /tmp/ccES1yDh.s 			page 14


 742 0006 23F08073 		bic	r3, r3, #16777216
 743 000a 064A     		ldr	r2, .L159
 744 000c 43F45C13 		orr	r3, r3, #3604480
 745 0010 1362     		str	r3, [r2, #32]
 746 0012 7047     		bx	lr
 747              	.L158:
 748 0014 43F08073 		orr	r3, r3, #16777216
 749 0018 024A     		ldr	r2, .L159
 750 001a 43F45C13 		orr	r3, r3, #3604480
 751 001e 1362     		str	r3, [r2, #32]
 752 0020 7047     		bx	lr
 753              	.L160:
 754 0022 00BF     		.align	2
 755              	.L159:
 756 0024 00040E40 		.word	1074660352
 757              		.size	pmc_mainck_osc_select, .-pmc_mainck_osc_select
 758              		.section	.text.pmc_enable_pllack,"ax",%progbits
 759              		.align	1
 760              		.p2align 2,,3
 761              		.global	pmc_enable_pllack
 762              		.syntax unified
 763              		.thumb
 764              		.thumb_func
 765              		.fpu softvfp
 766              		.type	pmc_enable_pllack, %function
 767              	pmc_enable_pllack:
 768              		@ args = 0, pretend = 0, frame = 0
 769              		@ frame_needed = 0, uses_anonymous_args = 0
 770              		@ link register save eliminated.
 771 0000 0B4B     		ldr	r3, .L166
 772 0002 03EA0043 		and	r3, r3, r0, lsl #16
 773 0006 D2B2     		uxtb	r2, r2
 774 0008 0902     		lsls	r1, r1, #8
 775 000a 43F00053 		orr	r3, r3, #536870912
 776 000e 10B4     		push	{r4}
 777 0010 1343     		orrs	r3, r3, r2
 778 0012 084C     		ldr	r4, .L166+4
 779 0014 01F47C51 		and	r1, r1, #16128
 780 0018 4FF00052 		mov	r2, #536870912
 781 001c 0B43     		orrs	r3, r3, r1
 782 001e A262     		str	r2, [r4, #40]
 783 0020 2246     		mov	r2, r4
 784 0022 A362     		str	r3, [r4, #40]
 785              	.L162:
 786 0024 936E     		ldr	r3, [r2, #104]
 787 0026 9B07     		lsls	r3, r3, #30
 788 0028 FCD5     		bpl	.L162
 789 002a 10BC     		pop	{r4}
 790 002c 7047     		bx	lr
 791              	.L167:
 792 002e 00BF     		.align	2
 793              	.L166:
 794 0030 0000FF07 		.word	134152192
 795 0034 00040E40 		.word	1074660352
 796              		.size	pmc_enable_pllack, .-pmc_enable_pllack
 797              		.section	.text.pmc_disable_pllack,"ax",%progbits
 798              		.align	1
ARM GAS  /tmp/ccES1yDh.s 			page 15


 799              		.p2align 2,,3
 800              		.global	pmc_disable_pllack
 801              		.syntax unified
 802              		.thumb
 803              		.thumb_func
 804              		.fpu softvfp
 805              		.type	pmc_disable_pllack, %function
 806              	pmc_disable_pllack:
 807              		@ args = 0, pretend = 0, frame = 0
 808              		@ frame_needed = 0, uses_anonymous_args = 0
 809              		@ link register save eliminated.
 810 0000 024B     		ldr	r3, .L169
 811 0002 4FF00052 		mov	r2, #536870912
 812 0006 9A62     		str	r2, [r3, #40]
 813 0008 7047     		bx	lr
 814              	.L170:
 815 000a 00BF     		.align	2
 816              	.L169:
 817 000c 00040E40 		.word	1074660352
 818              		.size	pmc_disable_pllack, .-pmc_disable_pllack
 819              		.section	.text.pmc_is_locked_pllack,"ax",%progbits
 820              		.align	1
 821              		.p2align 2,,3
 822              		.global	pmc_is_locked_pllack
 823              		.syntax unified
 824              		.thumb
 825              		.thumb_func
 826              		.fpu softvfp
 827              		.type	pmc_is_locked_pllack, %function
 828              	pmc_is_locked_pllack:
 829              		@ args = 0, pretend = 0, frame = 0
 830              		@ frame_needed = 0, uses_anonymous_args = 0
 831              		@ link register save eliminated.
 832 0000 024B     		ldr	r3, .L172
 833 0002 986E     		ldr	r0, [r3, #104]
 834 0004 00F00200 		and	r0, r0, #2
 835 0008 7047     		bx	lr
 836              	.L173:
 837 000a 00BF     		.align	2
 838              	.L172:
 839 000c 00040E40 		.word	1074660352
 840              		.size	pmc_is_locked_pllack, .-pmc_is_locked_pllack
 841              		.section	.text.pmc_enable_pllbck,"ax",%progbits
 842              		.align	1
 843              		.p2align 2,,3
 844              		.global	pmc_enable_pllbck
 845              		.syntax unified
 846              		.thumb
 847              		.thumb_func
 848              		.fpu softvfp
 849              		.type	pmc_enable_pllbck, %function
 850              	pmc_enable_pllbck:
 851              		@ args = 0, pretend = 0, frame = 0
 852              		@ frame_needed = 0, uses_anonymous_args = 0
 853              		@ link register save eliminated.
 854 0000 10B4     		push	{r4}
 855 0002 0902     		lsls	r1, r1, #8
ARM GAS  /tmp/ccES1yDh.s 			page 16


 856 0004 084C     		ldr	r4, .L179
 857 0006 094B     		ldr	r3, .L179+4
 858 0008 D2B2     		uxtb	r2, r2
 859 000a 01F47C51 		and	r1, r1, #16128
 860 000e 1143     		orrs	r1, r1, r2
 861 0010 04EA0040 		and	r0, r4, r0, lsl #16
 862 0014 0022     		movs	r2, #0
 863 0016 0143     		orrs	r1, r1, r0
 864 0018 DA62     		str	r2, [r3, #44]
 865 001a 1A46     		mov	r2, r3
 866 001c D962     		str	r1, [r3, #44]
 867              	.L175:
 868 001e 936E     		ldr	r3, [r2, #104]
 869 0020 5B07     		lsls	r3, r3, #29
 870 0022 FCD5     		bpl	.L175
 871 0024 10BC     		pop	{r4}
 872 0026 7047     		bx	lr
 873              	.L180:
 874              		.align	2
 875              	.L179:
 876 0028 0000FF07 		.word	134152192
 877 002c 00040E40 		.word	1074660352
 878              		.size	pmc_enable_pllbck, .-pmc_enable_pllbck
 879              		.section	.text.pmc_disable_pllbck,"ax",%progbits
 880              		.align	1
 881              		.p2align 2,,3
 882              		.global	pmc_disable_pllbck
 883              		.syntax unified
 884              		.thumb
 885              		.thumb_func
 886              		.fpu softvfp
 887              		.type	pmc_disable_pllbck, %function
 888              	pmc_disable_pllbck:
 889              		@ args = 0, pretend = 0, frame = 0
 890              		@ frame_needed = 0, uses_anonymous_args = 0
 891              		@ link register save eliminated.
 892 0000 014B     		ldr	r3, .L182
 893 0002 0022     		movs	r2, #0
 894 0004 DA62     		str	r2, [r3, #44]
 895 0006 7047     		bx	lr
 896              	.L183:
 897              		.align	2
 898              	.L182:
 899 0008 00040E40 		.word	1074660352
 900              		.size	pmc_disable_pllbck, .-pmc_disable_pllbck
 901              		.section	.text.pmc_is_locked_pllbck,"ax",%progbits
 902              		.align	1
 903              		.p2align 2,,3
 904              		.global	pmc_is_locked_pllbck
 905              		.syntax unified
 906              		.thumb
 907              		.thumb_func
 908              		.fpu softvfp
 909              		.type	pmc_is_locked_pllbck, %function
 910              	pmc_is_locked_pllbck:
 911              		@ args = 0, pretend = 0, frame = 0
 912              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccES1yDh.s 			page 17


 913              		@ link register save eliminated.
 914 0000 024B     		ldr	r3, .L185
 915 0002 986E     		ldr	r0, [r3, #104]
 916 0004 00F00400 		and	r0, r0, #4
 917 0008 7047     		bx	lr
 918              	.L186:
 919 000a 00BF     		.align	2
 920              	.L185:
 921 000c 00040E40 		.word	1074660352
 922              		.size	pmc_is_locked_pllbck, .-pmc_is_locked_pllbck
 923              		.section	.text.pmc_enable_periph_clk,"ax",%progbits
 924              		.align	1
 925              		.p2align 2,,3
 926              		.global	pmc_enable_periph_clk
 927              		.syntax unified
 928              		.thumb
 929              		.thumb_func
 930              		.fpu softvfp
 931              		.type	pmc_enable_periph_clk, %function
 932              	pmc_enable_periph_clk:
 933              		@ args = 0, pretend = 0, frame = 0
 934              		@ frame_needed = 0, uses_anonymous_args = 0
 935              		@ link register save eliminated.
 936 0000 2228     		cmp	r0, #34
 937 0002 19D8     		bhi	.L190
 938 0004 1F28     		cmp	r0, #31
 939 0006 0E4A     		ldr	r2, .L193
 940 0008 09D8     		bhi	.L189
 941 000a 0123     		movs	r3, #1
 942 000c 9169     		ldr	r1, [r2, #24]
 943 000e 03FA00F0 		lsl	r0, r3, r0
 944 0012 30EA0103 		bics	r3, r0, r1
 945 0016 11D0     		beq	.L192
 946 0018 1061     		str	r0, [r2, #16]
 947 001a 0020     		movs	r0, #0
 948 001c 7047     		bx	lr
 949              	.L189:
 950 001e 0123     		movs	r3, #1
 951 0020 2038     		subs	r0, r0, #32
 952 0022 D2F80811 		ldr	r1, [r2, #264]
 953 0026 03FA00F0 		lsl	r0, r3, r0
 954 002a 30EA0103 		bics	r3, r0, r1
 955 002e 05D0     		beq	.L192
 956 0030 C2F80001 		str	r0, [r2, #256]
 957 0034 0020     		movs	r0, #0
 958 0036 7047     		bx	lr
 959              	.L190:
 960 0038 0120     		movs	r0, #1
 961 003a 7047     		bx	lr
 962              	.L192:
 963 003c 0020     		movs	r0, #0
 964 003e 7047     		bx	lr
 965              	.L194:
 966              		.align	2
 967              	.L193:
 968 0040 00040E40 		.word	1074660352
 969              		.size	pmc_enable_periph_clk, .-pmc_enable_periph_clk
ARM GAS  /tmp/ccES1yDh.s 			page 18


 970              		.section	.text.pmc_disable_periph_clk,"ax",%progbits
 971              		.align	1
 972              		.p2align 2,,3
 973              		.global	pmc_disable_periph_clk
 974              		.syntax unified
 975              		.thumb
 976              		.thumb_func
 977              		.fpu softvfp
 978              		.type	pmc_disable_periph_clk, %function
 979              	pmc_disable_periph_clk:
 980              		@ args = 0, pretend = 0, frame = 0
 981              		@ frame_needed = 0, uses_anonymous_args = 0
 982              		@ link register save eliminated.
 983 0000 2228     		cmp	r0, #34
 984 0002 18D8     		bhi	.L198
 985 0004 1F28     		cmp	r0, #31
 986 0006 0E4A     		ldr	r2, .L202
 987 0008 08D8     		bhi	.L197
 988 000a 0123     		movs	r3, #1
 989 000c 9169     		ldr	r1, [r2, #24]
 990 000e 03FA00F0 		lsl	r0, r3, r0
 991 0012 30EA0103 		bics	r3, r0, r1
 992 0016 10D0     		beq	.L201
 993              	.L200:
 994 0018 0020     		movs	r0, #0
 995 001a 7047     		bx	lr
 996              	.L197:
 997 001c 0123     		movs	r3, #1
 998 001e 2038     		subs	r0, r0, #32
 999 0020 D2F80811 		ldr	r1, [r2, #264]
 1000 0024 03FA00F0 		lsl	r0, r3, r0
 1001 0028 30EA0103 		bics	r3, r0, r1
 1002 002c F4D1     		bne	.L200
 1003 002e C2F80401 		str	r0, [r2, #260]
 1004 0032 0020     		movs	r0, #0
 1005 0034 7047     		bx	lr
 1006              	.L198:
 1007 0036 0120     		movs	r0, #1
 1008 0038 7047     		bx	lr
 1009              	.L201:
 1010 003a 5061     		str	r0, [r2, #20]
 1011 003c 0020     		movs	r0, #0
 1012 003e 7047     		bx	lr
 1013              	.L203:
 1014              		.align	2
 1015              	.L202:
 1016 0040 00040E40 		.word	1074660352
 1017              		.size	pmc_disable_periph_clk, .-pmc_disable_periph_clk
 1018              		.section	.text.pmc_enable_all_periph_clk,"ax",%progbits
 1019              		.align	1
 1020              		.p2align 2,,3
 1021              		.global	pmc_enable_all_periph_clk
 1022              		.syntax unified
 1023              		.thumb
 1024              		.thumb_func
 1025              		.fpu softvfp
 1026              		.type	pmc_enable_all_periph_clk, %function
ARM GAS  /tmp/ccES1yDh.s 			page 19


 1027              	pmc_enable_all_periph_clk:
 1028              		@ args = 0, pretend = 0, frame = 0
 1029              		@ frame_needed = 0, uses_anonymous_args = 0
 1030              		@ link register save eliminated.
 1031 0000 094A     		ldr	r2, .L209
 1032 0002 6FF00303 		mvn	r3, #3
 1033 0006 1361     		str	r3, [r2, #16]
 1034              	.L205:
 1035 0008 9369     		ldr	r3, [r2, #24]
 1036 000a 23F00303 		bic	r3, r3, #3
 1037 000e 0433     		adds	r3, r3, #4
 1038 0010 FAD1     		bne	.L205
 1039 0012 4FF0FF33 		mov	r3, #-1
 1040 0016 0449     		ldr	r1, .L209
 1041 0018 C2F80031 		str	r3, [r2, #256]
 1042              	.L206:
 1043 001c D1F80831 		ldr	r3, [r1, #264]
 1044 0020 0133     		adds	r3, r3, #1
 1045 0022 FBD1     		bne	.L206
 1046 0024 7047     		bx	lr
 1047              	.L210:
 1048 0026 00BF     		.align	2
 1049              	.L209:
 1050 0028 00040E40 		.word	1074660352
 1051              		.size	pmc_enable_all_periph_clk, .-pmc_enable_all_periph_clk
 1052              		.section	.text.pmc_disable_all_periph_clk,"ax",%progbits
 1053              		.align	1
 1054              		.p2align 2,,3
 1055              		.global	pmc_disable_all_periph_clk
 1056              		.syntax unified
 1057              		.thumb
 1058              		.thumb_func
 1059              		.fpu softvfp
 1060              		.type	pmc_disable_all_periph_clk, %function
 1061              	pmc_disable_all_periph_clk:
 1062              		@ args = 0, pretend = 0, frame = 0
 1063              		@ frame_needed = 0, uses_anonymous_args = 0
 1064              		@ link register save eliminated.
 1065 0000 084A     		ldr	r2, .L216
 1066 0002 6FF00303 		mvn	r3, #3
 1067 0006 5361     		str	r3, [r2, #20]
 1068              	.L212:
 1069 0008 9369     		ldr	r3, [r2, #24]
 1070 000a 33F00303 		bics	r3, r3, #3
 1071 000e FBD1     		bne	.L212
 1072 0010 4FF0FF33 		mov	r3, #-1
 1073 0014 0349     		ldr	r1, .L216
 1074 0016 C2F80431 		str	r3, [r2, #260]
 1075              	.L213:
 1076 001a D1F80831 		ldr	r3, [r1, #264]
 1077 001e 002B     		cmp	r3, #0
 1078 0020 FBD1     		bne	.L213
 1079 0022 7047     		bx	lr
 1080              	.L217:
 1081              		.align	2
 1082              	.L216:
 1083 0024 00040E40 		.word	1074660352
ARM GAS  /tmp/ccES1yDh.s 			page 20


 1084              		.size	pmc_disable_all_periph_clk, .-pmc_disable_all_periph_clk
 1085              		.section	.text.pmc_is_periph_clk_enabled,"ax",%progbits
 1086              		.align	1
 1087              		.p2align 2,,3
 1088              		.global	pmc_is_periph_clk_enabled
 1089              		.syntax unified
 1090              		.thumb
 1091              		.thumb_func
 1092              		.fpu softvfp
 1093              		.type	pmc_is_periph_clk_enabled, %function
 1094              	pmc_is_periph_clk_enabled:
 1095              		@ args = 0, pretend = 0, frame = 0
 1096              		@ frame_needed = 0, uses_anonymous_args = 0
 1097              		@ link register save eliminated.
 1098 0000 2228     		cmp	r0, #34
 1099 0002 16D8     		bhi	.L221
 1100 0004 1F28     		cmp	r0, #31
 1101 0006 0C4A     		ldr	r2, .L222
 1102 0008 08D8     		bhi	.L220
 1103 000a 0123     		movs	r3, #1
 1104 000c 9269     		ldr	r2, [r2, #24]
 1105 000e 03FA00F0 		lsl	r0, r3, r0
 1106 0012 1042     		tst	r0, r2
 1107 0014 14BF     		ite	ne
 1108 0016 1846     		movne	r0, r3
 1109 0018 0020     		moveq	r0, #0
 1110 001a 7047     		bx	lr
 1111              	.L220:
 1112 001c 0123     		movs	r3, #1
 1113 001e D2F80821 		ldr	r2, [r2, #264]
 1114 0022 2038     		subs	r0, r0, #32
 1115 0024 03FA00F0 		lsl	r0, r3, r0
 1116 0028 1042     		tst	r0, r2
 1117 002a 14BF     		ite	ne
 1118 002c 1846     		movne	r0, r3
 1119 002e 0020     		moveq	r0, #0
 1120 0030 7047     		bx	lr
 1121              	.L221:
 1122 0032 0020     		movs	r0, #0
 1123 0034 7047     		bx	lr
 1124              	.L223:
 1125 0036 00BF     		.align	2
 1126              	.L222:
 1127 0038 00040E40 		.word	1074660352
 1128              		.size	pmc_is_periph_clk_enabled, .-pmc_is_periph_clk_enabled
 1129              		.section	.text.pmc_pck_set_prescaler,"ax",%progbits
 1130              		.align	1
 1131              		.p2align 2,,3
 1132              		.global	pmc_pck_set_prescaler
 1133              		.syntax unified
 1134              		.thumb
 1135              		.thumb_func
 1136              		.fpu softvfp
 1137              		.type	pmc_pck_set_prescaler, %function
 1138              	pmc_pck_set_prescaler:
 1139              		@ args = 0, pretend = 0, frame = 0
 1140              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccES1yDh.s 			page 21


 1141              		@ link register save eliminated.
 1142 0000 0A4B     		ldr	r3, .L234
 1143 0002 30B4     		push	{r4, r5}
 1144 0004 03EB8005 		add	r5, r3, r0, lsl #2
 1145 0008 4FF48072 		mov	r2, #256
 1146 000c 2C6C     		ldr	r4, [r5, #64]
 1147 000e 24F07004 		bic	r4, r4, #112
 1148 0012 2143     		orrs	r1, r1, r4
 1149 0014 2964     		str	r1, [r5, #64]
 1150 0016 02FA00F0 		lsl	r0, r2, r0
 1151 001a 02E0     		b	.L226
 1152              	.L233:
 1153 001c 9A6E     		ldr	r2, [r3, #104]
 1154 001e 0242     		tst	r2, r0
 1155 0020 02D1     		bne	.L224
 1156              	.L226:
 1157 0022 1A68     		ldr	r2, [r3]
 1158 0024 0242     		tst	r2, r0
 1159 0026 F9D1     		bne	.L233
 1160              	.L224:
 1161 0028 30BC     		pop	{r4, r5}
 1162 002a 7047     		bx	lr
 1163              	.L235:
 1164              		.align	2
 1165              	.L234:
 1166 002c 00040E40 		.word	1074660352
 1167              		.size	pmc_pck_set_prescaler, .-pmc_pck_set_prescaler
 1168              		.section	.text.pmc_pck_set_source,"ax",%progbits
 1169              		.align	1
 1170              		.p2align 2,,3
 1171              		.global	pmc_pck_set_source
 1172              		.syntax unified
 1173              		.thumb
 1174              		.thumb_func
 1175              		.fpu softvfp
 1176              		.type	pmc_pck_set_source, %function
 1177              	pmc_pck_set_source:
 1178              		@ args = 0, pretend = 0, frame = 0
 1179              		@ frame_needed = 0, uses_anonymous_args = 0
 1180              		@ link register save eliminated.
 1181 0000 0A4B     		ldr	r3, .L246
 1182 0002 30B4     		push	{r4, r5}
 1183 0004 03EB8005 		add	r5, r3, r0, lsl #2
 1184 0008 4FF48072 		mov	r2, #256
 1185 000c 2C6C     		ldr	r4, [r5, #64]
 1186 000e 24F00704 		bic	r4, r4, #7
 1187 0012 2143     		orrs	r1, r1, r4
 1188 0014 2964     		str	r1, [r5, #64]
 1189 0016 02FA00F0 		lsl	r0, r2, r0
 1190 001a 02E0     		b	.L238
 1191              	.L245:
 1192 001c 9A6E     		ldr	r2, [r3, #104]
 1193 001e 0242     		tst	r2, r0
 1194 0020 02D1     		bne	.L236
 1195              	.L238:
 1196 0022 1A68     		ldr	r2, [r3]
 1197 0024 0242     		tst	r2, r0
ARM GAS  /tmp/ccES1yDh.s 			page 22


 1198 0026 F9D1     		bne	.L245
 1199              	.L236:
 1200 0028 30BC     		pop	{r4, r5}
 1201 002a 7047     		bx	lr
 1202              	.L247:
 1203              		.align	2
 1204              	.L246:
 1205 002c 00040E40 		.word	1074660352
 1206              		.size	pmc_pck_set_source, .-pmc_pck_set_source
 1207              		.section	.text.pmc_switch_pck_to_sclk,"ax",%progbits
 1208              		.align	1
 1209              		.p2align 2,,3
 1210              		.global	pmc_switch_pck_to_sclk
 1211              		.syntax unified
 1212              		.thumb
 1213              		.thumb_func
 1214              		.fpu softvfp
 1215              		.type	pmc_switch_pck_to_sclk, %function
 1216              	pmc_switch_pck_to_sclk:
 1217              		@ args = 0, pretend = 0, frame = 0
 1218              		@ frame_needed = 0, uses_anonymous_args = 0
 1219              		@ link register save eliminated.
 1220 0000 00F11002 		add	r2, r0, #16
 1221 0004 0B4B     		ldr	r3, .L258
 1222 0006 43F82210 		str	r1, [r3, r2, lsl #2]
 1223 000a 4FF48072 		mov	r2, #256
 1224 000e 996E     		ldr	r1, [r3, #104]
 1225 0010 02FA00F0 		lsl	r0, r2, r0
 1226 0014 0142     		tst	r1, r0
 1227 0016 08D1     		bne	.L255
 1228 0018 1946     		mov	r1, r3
 1229 001a 4FF40063 		mov	r3, #2048
 1230 001e 01E0     		b	.L251
 1231              	.L252:
 1232 0020 013B     		subs	r3, r3, #1
 1233 0022 04D0     		beq	.L257
 1234              	.L251:
 1235 0024 8A6E     		ldr	r2, [r1, #104]
 1236 0026 0242     		tst	r2, r0
 1237 0028 FAD0     		beq	.L252
 1238              	.L255:
 1239 002a 0020     		movs	r0, #0
 1240 002c 7047     		bx	lr
 1241              	.L257:
 1242 002e 0120     		movs	r0, #1
 1243 0030 7047     		bx	lr
 1244              	.L259:
 1245 0032 00BF     		.align	2
 1246              	.L258:
 1247 0034 00040E40 		.word	1074660352
 1248              		.size	pmc_switch_pck_to_sclk, .-pmc_switch_pck_to_sclk
 1249              		.section	.text.pmc_switch_pck_to_mainck,"ax",%progbits
 1250              		.align	1
 1251              		.p2align 2,,3
 1252              		.global	pmc_switch_pck_to_mainck
 1253              		.syntax unified
 1254              		.thumb
ARM GAS  /tmp/ccES1yDh.s 			page 23


 1255              		.thumb_func
 1256              		.fpu softvfp
 1257              		.type	pmc_switch_pck_to_mainck, %function
 1258              	pmc_switch_pck_to_mainck:
 1259              		@ args = 0, pretend = 0, frame = 0
 1260              		@ frame_needed = 0, uses_anonymous_args = 0
 1261              		@ link register save eliminated.
 1262 0000 00F11002 		add	r2, r0, #16
 1263 0004 0C4B     		ldr	r3, .L270
 1264 0006 41F00101 		orr	r1, r1, #1
 1265 000a 43F82210 		str	r1, [r3, r2, lsl #2]
 1266 000e 4FF48072 		mov	r2, #256
 1267 0012 996E     		ldr	r1, [r3, #104]
 1268 0014 02FA00F0 		lsl	r0, r2, r0
 1269 0018 0142     		tst	r1, r0
 1270 001a 08D1     		bne	.L267
 1271 001c 1946     		mov	r1, r3
 1272 001e 4FF40063 		mov	r3, #2048
 1273 0022 01E0     		b	.L263
 1274              	.L264:
 1275 0024 013B     		subs	r3, r3, #1
 1276 0026 04D0     		beq	.L269
 1277              	.L263:
 1278 0028 8A6E     		ldr	r2, [r1, #104]
 1279 002a 0242     		tst	r2, r0
 1280 002c FAD0     		beq	.L264
 1281              	.L267:
 1282 002e 0020     		movs	r0, #0
 1283 0030 7047     		bx	lr
 1284              	.L269:
 1285 0032 0120     		movs	r0, #1
 1286 0034 7047     		bx	lr
 1287              	.L271:
 1288 0036 00BF     		.align	2
 1289              	.L270:
 1290 0038 00040E40 		.word	1074660352
 1291              		.size	pmc_switch_pck_to_mainck, .-pmc_switch_pck_to_mainck
 1292              		.section	.text.pmc_switch_pck_to_pllack,"ax",%progbits
 1293              		.align	1
 1294              		.p2align 2,,3
 1295              		.global	pmc_switch_pck_to_pllack
 1296              		.syntax unified
 1297              		.thumb
 1298              		.thumb_func
 1299              		.fpu softvfp
 1300              		.type	pmc_switch_pck_to_pllack, %function
 1301              	pmc_switch_pck_to_pllack:
 1302              		@ args = 0, pretend = 0, frame = 0
 1303              		@ frame_needed = 0, uses_anonymous_args = 0
 1304              		@ link register save eliminated.
 1305 0000 00F11002 		add	r2, r0, #16
 1306 0004 0C4B     		ldr	r3, .L282
 1307 0006 41F00201 		orr	r1, r1, #2
 1308 000a 43F82210 		str	r1, [r3, r2, lsl #2]
 1309 000e 4FF48072 		mov	r2, #256
 1310 0012 996E     		ldr	r1, [r3, #104]
 1311 0014 02FA00F0 		lsl	r0, r2, r0
ARM GAS  /tmp/ccES1yDh.s 			page 24


 1312 0018 0142     		tst	r1, r0
 1313 001a 08D1     		bne	.L279
 1314 001c 1946     		mov	r1, r3
 1315 001e 4FF40063 		mov	r3, #2048
 1316 0022 01E0     		b	.L275
 1317              	.L276:
 1318 0024 013B     		subs	r3, r3, #1
 1319 0026 04D0     		beq	.L281
 1320              	.L275:
 1321 0028 8A6E     		ldr	r2, [r1, #104]
 1322 002a 0242     		tst	r2, r0
 1323 002c FAD0     		beq	.L276
 1324              	.L279:
 1325 002e 0020     		movs	r0, #0
 1326 0030 7047     		bx	lr
 1327              	.L281:
 1328 0032 0120     		movs	r0, #1
 1329 0034 7047     		bx	lr
 1330              	.L283:
 1331 0036 00BF     		.align	2
 1332              	.L282:
 1333 0038 00040E40 		.word	1074660352
 1334              		.size	pmc_switch_pck_to_pllack, .-pmc_switch_pck_to_pllack
 1335              		.section	.text.pmc_switch_pck_to_pllbck,"ax",%progbits
 1336              		.align	1
 1337              		.p2align 2,,3
 1338              		.global	pmc_switch_pck_to_pllbck
 1339              		.syntax unified
 1340              		.thumb
 1341              		.thumb_func
 1342              		.fpu softvfp
 1343              		.type	pmc_switch_pck_to_pllbck, %function
 1344              	pmc_switch_pck_to_pllbck:
 1345              		@ args = 0, pretend = 0, frame = 0
 1346              		@ frame_needed = 0, uses_anonymous_args = 0
 1347              		@ link register save eliminated.
 1348 0000 00F11002 		add	r2, r0, #16
 1349 0004 0C4B     		ldr	r3, .L294
 1350 0006 41F00301 		orr	r1, r1, #3
 1351 000a 43F82210 		str	r1, [r3, r2, lsl #2]
 1352 000e 4FF48072 		mov	r2, #256
 1353 0012 996E     		ldr	r1, [r3, #104]
 1354 0014 02FA00F0 		lsl	r0, r2, r0
 1355 0018 0142     		tst	r1, r0
 1356 001a 08D1     		bne	.L291
 1357 001c 1946     		mov	r1, r3
 1358 001e 4FF40063 		mov	r3, #2048
 1359 0022 01E0     		b	.L287
 1360              	.L288:
 1361 0024 013B     		subs	r3, r3, #1
 1362 0026 04D0     		beq	.L293
 1363              	.L287:
 1364 0028 8A6E     		ldr	r2, [r1, #104]
 1365 002a 0242     		tst	r2, r0
 1366 002c FAD0     		beq	.L288
 1367              	.L291:
 1368 002e 0020     		movs	r0, #0
ARM GAS  /tmp/ccES1yDh.s 			page 25


 1369 0030 7047     		bx	lr
 1370              	.L293:
 1371 0032 0120     		movs	r0, #1
 1372 0034 7047     		bx	lr
 1373              	.L295:
 1374 0036 00BF     		.align	2
 1375              	.L294:
 1376 0038 00040E40 		.word	1074660352
 1377              		.size	pmc_switch_pck_to_pllbck, .-pmc_switch_pck_to_pllbck
 1378              		.section	.text.pmc_switch_pck_to_mck,"ax",%progbits
 1379              		.align	1
 1380              		.p2align 2,,3
 1381              		.global	pmc_switch_pck_to_mck
 1382              		.syntax unified
 1383              		.thumb
 1384              		.thumb_func
 1385              		.fpu softvfp
 1386              		.type	pmc_switch_pck_to_mck, %function
 1387              	pmc_switch_pck_to_mck:
 1388              		@ args = 0, pretend = 0, frame = 0
 1389              		@ frame_needed = 0, uses_anonymous_args = 0
 1390              		@ link register save eliminated.
 1391 0000 00F11002 		add	r2, r0, #16
 1392 0004 0C4B     		ldr	r3, .L306
 1393 0006 41F00401 		orr	r1, r1, #4
 1394 000a 43F82210 		str	r1, [r3, r2, lsl #2]
 1395 000e 4FF48072 		mov	r2, #256
 1396 0012 996E     		ldr	r1, [r3, #104]
 1397 0014 02FA00F0 		lsl	r0, r2, r0
 1398 0018 0142     		tst	r1, r0
 1399 001a 08D1     		bne	.L303
 1400 001c 1946     		mov	r1, r3
 1401 001e 4FF40063 		mov	r3, #2048
 1402 0022 01E0     		b	.L299
 1403              	.L300:
 1404 0024 013B     		subs	r3, r3, #1
 1405 0026 04D0     		beq	.L305
 1406              	.L299:
 1407 0028 8A6E     		ldr	r2, [r1, #104]
 1408 002a 0242     		tst	r2, r0
 1409 002c FAD0     		beq	.L300
 1410              	.L303:
 1411 002e 0020     		movs	r0, #0
 1412 0030 7047     		bx	lr
 1413              	.L305:
 1414 0032 0120     		movs	r0, #1
 1415 0034 7047     		bx	lr
 1416              	.L307:
 1417 0036 00BF     		.align	2
 1418              	.L306:
 1419 0038 00040E40 		.word	1074660352
 1420              		.size	pmc_switch_pck_to_mck, .-pmc_switch_pck_to_mck
 1421              		.section	.text.pmc_enable_pck,"ax",%progbits
 1422              		.align	1
 1423              		.p2align 2,,3
 1424              		.global	pmc_enable_pck
 1425              		.syntax unified
ARM GAS  /tmp/ccES1yDh.s 			page 26


 1426              		.thumb
 1427              		.thumb_func
 1428              		.fpu softvfp
 1429              		.type	pmc_enable_pck, %function
 1430              	pmc_enable_pck:
 1431              		@ args = 0, pretend = 0, frame = 0
 1432              		@ frame_needed = 0, uses_anonymous_args = 0
 1433              		@ link register save eliminated.
 1434 0000 4FF48073 		mov	r3, #256
 1435 0004 024A     		ldr	r2, .L309
 1436 0006 03FA00F0 		lsl	r0, r3, r0
 1437 000a 1060     		str	r0, [r2]
 1438 000c 7047     		bx	lr
 1439              	.L310:
 1440 000e 00BF     		.align	2
 1441              	.L309:
 1442 0010 00040E40 		.word	1074660352
 1443              		.size	pmc_enable_pck, .-pmc_enable_pck
 1444              		.section	.text.pmc_disable_pck,"ax",%progbits
 1445              		.align	1
 1446              		.p2align 2,,3
 1447              		.global	pmc_disable_pck
 1448              		.syntax unified
 1449              		.thumb
 1450              		.thumb_func
 1451              		.fpu softvfp
 1452              		.type	pmc_disable_pck, %function
 1453              	pmc_disable_pck:
 1454              		@ args = 0, pretend = 0, frame = 0
 1455              		@ frame_needed = 0, uses_anonymous_args = 0
 1456              		@ link register save eliminated.
 1457 0000 4FF48073 		mov	r3, #256
 1458 0004 024A     		ldr	r2, .L312
 1459 0006 03FA00F0 		lsl	r0, r3, r0
 1460 000a 5060     		str	r0, [r2, #4]
 1461 000c 7047     		bx	lr
 1462              	.L313:
 1463 000e 00BF     		.align	2
 1464              	.L312:
 1465 0010 00040E40 		.word	1074660352
 1466              		.size	pmc_disable_pck, .-pmc_disable_pck
 1467              		.section	.text.pmc_enable_all_pck,"ax",%progbits
 1468              		.align	1
 1469              		.p2align 2,,3
 1470              		.global	pmc_enable_all_pck
 1471              		.syntax unified
 1472              		.thumb
 1473              		.thumb_func
 1474              		.fpu softvfp
 1475              		.type	pmc_enable_all_pck, %function
 1476              	pmc_enable_all_pck:
 1477              		@ args = 0, pretend = 0, frame = 0
 1478              		@ frame_needed = 0, uses_anonymous_args = 0
 1479              		@ link register save eliminated.
 1480 0000 024B     		ldr	r3, .L315
 1481 0002 4FF4E062 		mov	r2, #1792
 1482 0006 1A60     		str	r2, [r3]
ARM GAS  /tmp/ccES1yDh.s 			page 27


 1483 0008 7047     		bx	lr
 1484              	.L316:
 1485 000a 00BF     		.align	2
 1486              	.L315:
 1487 000c 00040E40 		.word	1074660352
 1488              		.size	pmc_enable_all_pck, .-pmc_enable_all_pck
 1489              		.section	.text.pmc_disable_all_pck,"ax",%progbits
 1490              		.align	1
 1491              		.p2align 2,,3
 1492              		.global	pmc_disable_all_pck
 1493              		.syntax unified
 1494              		.thumb
 1495              		.thumb_func
 1496              		.fpu softvfp
 1497              		.type	pmc_disable_all_pck, %function
 1498              	pmc_disable_all_pck:
 1499              		@ args = 0, pretend = 0, frame = 0
 1500              		@ frame_needed = 0, uses_anonymous_args = 0
 1501              		@ link register save eliminated.
 1502 0000 024B     		ldr	r3, .L318
 1503 0002 4FF4E062 		mov	r2, #1792
 1504 0006 5A60     		str	r2, [r3, #4]
 1505 0008 7047     		bx	lr
 1506              	.L319:
 1507 000a 00BF     		.align	2
 1508              	.L318:
 1509 000c 00040E40 		.word	1074660352
 1510              		.size	pmc_disable_all_pck, .-pmc_disable_all_pck
 1511              		.section	.text.pmc_is_pck_enabled,"ax",%progbits
 1512              		.align	1
 1513              		.p2align 2,,3
 1514              		.global	pmc_is_pck_enabled
 1515              		.syntax unified
 1516              		.thumb
 1517              		.thumb_func
 1518              		.fpu softvfp
 1519              		.type	pmc_is_pck_enabled, %function
 1520              	pmc_is_pck_enabled:
 1521              		@ args = 0, pretend = 0, frame = 0
 1522              		@ frame_needed = 0, uses_anonymous_args = 0
 1523              		@ link register save eliminated.
 1524 0000 0228     		cmp	r0, #2
 1525 0002 07D8     		bhi	.L322
 1526 0004 044A     		ldr	r2, .L323
 1527 0006 4FF48073 		mov	r3, #256
 1528 000a 9268     		ldr	r2, [r2, #8]
 1529 000c 03FA00F0 		lsl	r0, r3, r0
 1530 0010 1040     		ands	r0, r0, r2
 1531 0012 7047     		bx	lr
 1532              	.L322:
 1533 0014 0020     		movs	r0, #0
 1534 0016 7047     		bx	lr
 1535              	.L324:
 1536              		.align	2
 1537              	.L323:
 1538 0018 00040E40 		.word	1074660352
 1539              		.size	pmc_is_pck_enabled, .-pmc_is_pck_enabled
ARM GAS  /tmp/ccES1yDh.s 			page 28


 1540              		.section	.text.pmc_switch_udpck_to_pllack,"ax",%progbits
 1541              		.align	1
 1542              		.p2align 2,,3
 1543              		.global	pmc_switch_udpck_to_pllack
 1544              		.syntax unified
 1545              		.thumb
 1546              		.thumb_func
 1547              		.fpu softvfp
 1548              		.type	pmc_switch_udpck_to_pllack, %function
 1549              	pmc_switch_udpck_to_pllack:
 1550              		@ args = 0, pretend = 0, frame = 0
 1551              		@ frame_needed = 0, uses_anonymous_args = 0
 1552              		@ link register save eliminated.
 1553 0000 0002     		lsls	r0, r0, #8
 1554 0002 024B     		ldr	r3, .L326
 1555 0004 00F47060 		and	r0, r0, #3840
 1556 0008 9863     		str	r0, [r3, #56]
 1557 000a 7047     		bx	lr
 1558              	.L327:
 1559              		.align	2
 1560              	.L326:
 1561 000c 00040E40 		.word	1074660352
 1562              		.size	pmc_switch_udpck_to_pllack, .-pmc_switch_udpck_to_pllack
 1563              		.section	.text.pmc_switch_udpck_to_pllbck,"ax",%progbits
 1564              		.align	1
 1565              		.p2align 2,,3
 1566              		.global	pmc_switch_udpck_to_pllbck
 1567              		.syntax unified
 1568              		.thumb
 1569              		.thumb_func
 1570              		.fpu softvfp
 1571              		.type	pmc_switch_udpck_to_pllbck, %function
 1572              	pmc_switch_udpck_to_pllbck:
 1573              		@ args = 0, pretend = 0, frame = 0
 1574              		@ frame_needed = 0, uses_anonymous_args = 0
 1575              		@ link register save eliminated.
 1576 0000 0002     		lsls	r0, r0, #8
 1577 0002 00F47060 		and	r0, r0, #3840
 1578 0006 024B     		ldr	r3, .L329
 1579 0008 40F00100 		orr	r0, r0, #1
 1580 000c 9863     		str	r0, [r3, #56]
 1581 000e 7047     		bx	lr
 1582              	.L330:
 1583              		.align	2
 1584              	.L329:
 1585 0010 00040E40 		.word	1074660352
 1586              		.size	pmc_switch_udpck_to_pllbck, .-pmc_switch_udpck_to_pllbck
 1587              		.section	.text.pmc_enable_udpck,"ax",%progbits
 1588              		.align	1
 1589              		.p2align 2,,3
 1590              		.global	pmc_enable_udpck
 1591              		.syntax unified
 1592              		.thumb
 1593              		.thumb_func
 1594              		.fpu softvfp
 1595              		.type	pmc_enable_udpck, %function
 1596              	pmc_enable_udpck:
ARM GAS  /tmp/ccES1yDh.s 			page 29


 1597              		@ args = 0, pretend = 0, frame = 0
 1598              		@ frame_needed = 0, uses_anonymous_args = 0
 1599              		@ link register save eliminated.
 1600 0000 014B     		ldr	r3, .L332
 1601 0002 8022     		movs	r2, #128
 1602 0004 1A60     		str	r2, [r3]
 1603 0006 7047     		bx	lr
 1604              	.L333:
 1605              		.align	2
 1606              	.L332:
 1607 0008 00040E40 		.word	1074660352
 1608              		.size	pmc_enable_udpck, .-pmc_enable_udpck
 1609              		.section	.text.pmc_disable_udpck,"ax",%progbits
 1610              		.align	1
 1611              		.p2align 2,,3
 1612              		.global	pmc_disable_udpck
 1613              		.syntax unified
 1614              		.thumb
 1615              		.thumb_func
 1616              		.fpu softvfp
 1617              		.type	pmc_disable_udpck, %function
 1618              	pmc_disable_udpck:
 1619              		@ args = 0, pretend = 0, frame = 0
 1620              		@ frame_needed = 0, uses_anonymous_args = 0
 1621              		@ link register save eliminated.
 1622 0000 014B     		ldr	r3, .L335
 1623 0002 8022     		movs	r2, #128
 1624 0004 5A60     		str	r2, [r3, #4]
 1625 0006 7047     		bx	lr
 1626              	.L336:
 1627              		.align	2
 1628              	.L335:
 1629 0008 00040E40 		.word	1074660352
 1630              		.size	pmc_disable_udpck, .-pmc_disable_udpck
 1631              		.section	.text.pmc_enable_interrupt,"ax",%progbits
 1632              		.align	1
 1633              		.p2align 2,,3
 1634              		.global	pmc_enable_interrupt
 1635              		.syntax unified
 1636              		.thumb
 1637              		.thumb_func
 1638              		.fpu softvfp
 1639              		.type	pmc_enable_interrupt, %function
 1640              	pmc_enable_interrupt:
 1641              		@ args = 0, pretend = 0, frame = 0
 1642              		@ frame_needed = 0, uses_anonymous_args = 0
 1643              		@ link register save eliminated.
 1644 0000 014B     		ldr	r3, .L338
 1645 0002 1866     		str	r0, [r3, #96]
 1646 0004 7047     		bx	lr
 1647              	.L339:
 1648 0006 00BF     		.align	2
 1649              	.L338:
 1650 0008 00040E40 		.word	1074660352
 1651              		.size	pmc_enable_interrupt, .-pmc_enable_interrupt
 1652              		.section	.text.pmc_disable_interrupt,"ax",%progbits
 1653              		.align	1
ARM GAS  /tmp/ccES1yDh.s 			page 30


 1654              		.p2align 2,,3
 1655              		.global	pmc_disable_interrupt
 1656              		.syntax unified
 1657              		.thumb
 1658              		.thumb_func
 1659              		.fpu softvfp
 1660              		.type	pmc_disable_interrupt, %function
 1661              	pmc_disable_interrupt:
 1662              		@ args = 0, pretend = 0, frame = 0
 1663              		@ frame_needed = 0, uses_anonymous_args = 0
 1664              		@ link register save eliminated.
 1665 0000 014B     		ldr	r3, .L341
 1666 0002 5866     		str	r0, [r3, #100]
 1667 0004 7047     		bx	lr
 1668              	.L342:
 1669 0006 00BF     		.align	2
 1670              	.L341:
 1671 0008 00040E40 		.word	1074660352
 1672              		.size	pmc_disable_interrupt, .-pmc_disable_interrupt
 1673              		.section	.text.pmc_get_interrupt_mask,"ax",%progbits
 1674              		.align	1
 1675              		.p2align 2,,3
 1676              		.global	pmc_get_interrupt_mask
 1677              		.syntax unified
 1678              		.thumb
 1679              		.thumb_func
 1680              		.fpu softvfp
 1681              		.type	pmc_get_interrupt_mask, %function
 1682              	pmc_get_interrupt_mask:
 1683              		@ args = 0, pretend = 0, frame = 0
 1684              		@ frame_needed = 0, uses_anonymous_args = 0
 1685              		@ link register save eliminated.
 1686 0000 014B     		ldr	r3, .L344
 1687 0002 D86E     		ldr	r0, [r3, #108]
 1688 0004 7047     		bx	lr
 1689              	.L345:
 1690 0006 00BF     		.align	2
 1691              	.L344:
 1692 0008 00040E40 		.word	1074660352
 1693              		.size	pmc_get_interrupt_mask, .-pmc_get_interrupt_mask
 1694              		.section	.text.pmc_get_status,"ax",%progbits
 1695              		.align	1
 1696              		.p2align 2,,3
 1697              		.global	pmc_get_status
 1698              		.syntax unified
 1699              		.thumb
 1700              		.thumb_func
 1701              		.fpu softvfp
 1702              		.type	pmc_get_status, %function
 1703              	pmc_get_status:
 1704              		@ args = 0, pretend = 0, frame = 0
 1705              		@ frame_needed = 0, uses_anonymous_args = 0
 1706              		@ link register save eliminated.
 1707 0000 014B     		ldr	r3, .L347
 1708 0002 986E     		ldr	r0, [r3, #104]
 1709 0004 7047     		bx	lr
 1710              	.L348:
ARM GAS  /tmp/ccES1yDh.s 			page 31


 1711 0006 00BF     		.align	2
 1712              	.L347:
 1713 0008 00040E40 		.word	1074660352
 1714              		.size	pmc_get_status, .-pmc_get_status
 1715              		.section	.text.pmc_set_fast_startup_input,"ax",%progbits
 1716              		.align	1
 1717              		.p2align 2,,3
 1718              		.global	pmc_set_fast_startup_input
 1719              		.syntax unified
 1720              		.thumb
 1721              		.thumb_func
 1722              		.fpu softvfp
 1723              		.type	pmc_set_fast_startup_input, %function
 1724              	pmc_set_fast_startup_input:
 1725              		@ args = 0, pretend = 0, frame = 0
 1726              		@ frame_needed = 0, uses_anonymous_args = 0
 1727              		@ link register save eliminated.
 1728 0000 034B     		ldr	r3, .L350
 1729 0002 1A6F     		ldr	r2, [r3, #112]
 1730 0004 C0F31200 		ubfx	r0, r0, #0, #19
 1731 0008 1043     		orrs	r0, r0, r2
 1732 000a 1867     		str	r0, [r3, #112]
 1733 000c 7047     		bx	lr
 1734              	.L351:
 1735 000e 00BF     		.align	2
 1736              	.L350:
 1737 0010 00040E40 		.word	1074660352
 1738              		.size	pmc_set_fast_startup_input, .-pmc_set_fast_startup_input
 1739              		.section	.text.pmc_clr_fast_startup_input,"ax",%progbits
 1740              		.align	1
 1741              		.p2align 2,,3
 1742              		.global	pmc_clr_fast_startup_input
 1743              		.syntax unified
 1744              		.thumb
 1745              		.thumb_func
 1746              		.fpu softvfp
 1747              		.type	pmc_clr_fast_startup_input, %function
 1748              	pmc_clr_fast_startup_input:
 1749              		@ args = 0, pretend = 0, frame = 0
 1750              		@ frame_needed = 0, uses_anonymous_args = 0
 1751              		@ link register save eliminated.
 1752 0000 034A     		ldr	r2, .L353
 1753 0002 136F     		ldr	r3, [r2, #112]
 1754 0004 C0F31200 		ubfx	r0, r0, #0, #19
 1755 0008 23EA0003 		bic	r3, r3, r0
 1756 000c 1367     		str	r3, [r2, #112]
 1757 000e 7047     		bx	lr
 1758              	.L354:
 1759              		.align	2
 1760              	.L353:
 1761 0010 00040E40 		.word	1074660352
 1762              		.size	pmc_clr_fast_startup_input, .-pmc_clr_fast_startup_input
 1763              		.section	.text.pmc_enable_sleepmode,"ax",%progbits
 1764              		.align	1
 1765              		.p2align 2,,3
 1766              		.global	pmc_enable_sleepmode
 1767              		.syntax unified
ARM GAS  /tmp/ccES1yDh.s 			page 32


 1768              		.thumb
 1769              		.thumb_func
 1770              		.fpu softvfp
 1771              		.type	pmc_enable_sleepmode, %function
 1772              	pmc_enable_sleepmode:
 1773              		@ args = 0, pretend = 0, frame = 0
 1774              		@ frame_needed = 0, uses_anonymous_args = 0
 1775              		@ link register save eliminated.
 1776 0000 044A     		ldr	r2, .L356
 1777 0002 1369     		ldr	r3, [r2, #16]
 1778 0004 23F00403 		bic	r3, r3, #4
 1779 0008 1361     		str	r3, [r2, #16]
 1780              		.syntax unified
 1781              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1782 000a BFF34F8F 		dsb
 1783              	@ 0 "" 2
 1784              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1785 000e 30BF     		wfi
 1786              	@ 0 "" 2
 1787              		.thumb
 1788              		.syntax unified
 1789 0010 7047     		bx	lr
 1790              	.L357:
 1791 0012 00BF     		.align	2
 1792              	.L356:
 1793 0014 00ED00E0 		.word	-536810240
 1794              		.size	pmc_enable_sleepmode, .-pmc_enable_sleepmode
 1795              		.section	.text.pmc_set_flash_in_wait_mode,"ax",%progbits
 1796              		.align	1
 1797              		.p2align 2,,3
 1798              		.global	pmc_set_flash_in_wait_mode
 1799              		.syntax unified
 1800              		.thumb
 1801              		.thumb_func
 1802              		.fpu softvfp
 1803              		.type	pmc_set_flash_in_wait_mode, %function
 1804              	pmc_set_flash_in_wait_mode:
 1805              		@ args = 0, pretend = 0, frame = 0
 1806              		@ frame_needed = 0, uses_anonymous_args = 0
 1807              		@ link register save eliminated.
 1808 0000 014B     		ldr	r3, .L359
 1809 0002 1860     		str	r0, [r3]
 1810 0004 7047     		bx	lr
 1811              	.L360:
 1812 0006 00BF     		.align	2
 1813              	.L359:
 1814 0008 00000000 		.word	.LANCHOR0
 1815              		.size	pmc_set_flash_in_wait_mode, .-pmc_set_flash_in_wait_mode
 1816              		.section	.text.pmc_enable_waitmode,"ax",%progbits
 1817              		.align	1
 1818              		.p2align 2,,3
 1819              		.global	pmc_enable_waitmode
 1820              		.syntax unified
 1821              		.thumb
 1822              		.thumb_func
 1823              		.fpu softvfp
 1824              		.type	pmc_enable_waitmode, %function
ARM GAS  /tmp/ccES1yDh.s 			page 33


 1825              	pmc_enable_waitmode:
 1826              		@ args = 0, pretend = 0, frame = 0
 1827              		@ frame_needed = 0, uses_anonymous_args = 0
 1828              		@ link register save eliminated.
 1829 0000 104A     		ldr	r2, .L370
 1830 0002 1149     		ldr	r1, .L370+4
 1831 0004 136F     		ldr	r3, [r2, #112]
 1832 0006 0968     		ldr	r1, [r1]
 1833 0008 23F4C003 		bic	r3, r3, #6291456
 1834 000c 0B43     		orrs	r3, r3, r1
 1835 000e 1367     		str	r3, [r2, #112]
 1836 0010 136A     		ldr	r3, [r2, #32]
 1837 0012 43F45C13 		orr	r3, r3, #3604480
 1838 0016 43F00403 		orr	r3, r3, #4
 1839 001a 1362     		str	r3, [r2, #32]
 1840              	.L362:
 1841 001c 936E     		ldr	r3, [r2, #104]
 1842 001e 1907     		lsls	r1, r3, #28
 1843 0020 FCD5     		bpl	.L362
 1844 0022 4FF4FA73 		mov	r3, #500
 1845              	.L363:
 1846              		.syntax unified
 1847              	@ 390 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1848 0026 00BF     		nop
 1849              	@ 0 "" 2
 1850              		.thumb
 1851              		.syntax unified
 1852 0028 013B     		subs	r3, r3, #1
 1853 002a FCD1     		bne	.L363
 1854 002c 054A     		ldr	r2, .L370
 1855              	.L364:
 1856 002e 136A     		ldr	r3, [r2, #32]
 1857 0030 1B07     		lsls	r3, r3, #28
 1858 0032 FCD5     		bpl	.L364
 1859 0034 136F     		ldr	r3, [r2, #112]
 1860 0036 23F4C003 		bic	r3, r3, #6291456
 1861 003a 43F48003 		orr	r3, r3, #4194304
 1862 003e 1367     		str	r3, [r2, #112]
 1863 0040 7047     		bx	lr
 1864              	.L371:
 1865 0042 00BF     		.align	2
 1866              	.L370:
 1867 0044 00040E40 		.word	1074660352
 1868 0048 00000000 		.word	.LANCHOR0
 1869              		.size	pmc_enable_waitmode, .-pmc_enable_waitmode
 1870              		.section	.text.pmc_enable_backupmode,"ax",%progbits
 1871              		.align	1
 1872              		.p2align 2,,3
 1873              		.global	pmc_enable_backupmode
 1874              		.syntax unified
 1875              		.thumb
 1876              		.thumb_func
 1877              		.fpu softvfp
 1878              		.type	pmc_enable_backupmode, %function
 1879              	pmc_enable_backupmode:
 1880              		@ args = 0, pretend = 0, frame = 0
 1881              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccES1yDh.s 			page 34


 1882              		@ link register save eliminated.
 1883 0000 0649     		ldr	r1, .L373
 1884 0002 074A     		ldr	r2, .L373+4
 1885 0004 0B69     		ldr	r3, [r1, #16]
 1886 0006 0748     		ldr	r0, .L373+8
 1887 0008 43F00403 		orr	r3, r3, #4
 1888 000c 0B61     		str	r3, [r1, #16]
 1889 000e 1060     		str	r0, [r2]
 1890 0010 9368     		ldr	r3, [r2, #8]
 1891              		.syntax unified
 1892              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1893 0012 BFF34F8F 		dsb
 1894              	@ 0 "" 2
 1895              	@ 412 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1896 0016 20BF     		wfe
 1897              	@ 0 "" 2
 1898              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1899 0018 30BF     		wfi
 1900              	@ 0 "" 2
 1901              		.thumb
 1902              		.syntax unified
 1903 001a 7047     		bx	lr
 1904              	.L374:
 1905              		.align	2
 1906              	.L373:
 1907 001c 00ED00E0 		.word	-536810240
 1908 0020 10140E40 		.word	1074664464
 1909 0024 040000A5 		.word	-1526726652
 1910              		.size	pmc_enable_backupmode, .-pmc_enable_backupmode
 1911              		.section	.text.pmc_enable_clock_failure_detector,"ax",%progbits
 1912              		.align	1
 1913              		.p2align 2,,3
 1914              		.global	pmc_enable_clock_failure_detector
 1915              		.syntax unified
 1916              		.thumb
 1917              		.thumb_func
 1918              		.fpu softvfp
 1919              		.type	pmc_enable_clock_failure_detector, %function
 1920              	pmc_enable_clock_failure_detector:
 1921              		@ args = 0, pretend = 0, frame = 0
 1922              		@ frame_needed = 0, uses_anonymous_args = 0
 1923              		@ link register save eliminated.
 1924 0000 034A     		ldr	r2, .L376
 1925 0002 136A     		ldr	r3, [r2, #32]
 1926 0004 43F00D73 		orr	r3, r3, #36962304
 1927 0008 43F44033 		orr	r3, r3, #196608
 1928 000c 1362     		str	r3, [r2, #32]
 1929 000e 7047     		bx	lr
 1930              	.L377:
 1931              		.align	2
 1932              	.L376:
 1933 0010 00040E40 		.word	1074660352
 1934              		.size	pmc_enable_clock_failure_detector, .-pmc_enable_clock_failure_detector
 1935              		.section	.text.pmc_disable_clock_failure_detector,"ax",%progbits
 1936              		.align	1
 1937              		.p2align 2,,3
 1938              		.global	pmc_disable_clock_failure_detector
ARM GAS  /tmp/ccES1yDh.s 			page 35


 1939              		.syntax unified
 1940              		.thumb
 1941              		.thumb_func
 1942              		.fpu softvfp
 1943              		.type	pmc_disable_clock_failure_detector, %function
 1944              	pmc_disable_clock_failure_detector:
 1945              		@ args = 0, pretend = 0, frame = 0
 1946              		@ frame_needed = 0, uses_anonymous_args = 0
 1947              		@ link register save eliminated.
 1948 0000 034A     		ldr	r2, .L379
 1949 0002 136A     		ldr	r3, [r2, #32]
 1950 0004 23F00073 		bic	r3, r3, #33554432
 1951 0008 43F45C13 		orr	r3, r3, #3604480
 1952 000c 1362     		str	r3, [r2, #32]
 1953 000e 7047     		bx	lr
 1954              	.L380:
 1955              		.align	2
 1956              	.L379:
 1957 0010 00040E40 		.word	1074660352
 1958              		.size	pmc_disable_clock_failure_detector, .-pmc_disable_clock_failure_detector
 1959              		.section	.text.pmc_set_writeprotect,"ax",%progbits
 1960              		.align	1
 1961              		.p2align 2,,3
 1962              		.global	pmc_set_writeprotect
 1963              		.syntax unified
 1964              		.thumb
 1965              		.thumb_func
 1966              		.fpu softvfp
 1967              		.type	pmc_set_writeprotect, %function
 1968              	pmc_set_writeprotect:
 1969              		@ args = 0, pretend = 0, frame = 0
 1970              		@ frame_needed = 0, uses_anonymous_args = 0
 1971              		@ link register save eliminated.
 1972 0000 044B     		ldr	r3, .L385
 1973 0002 18B9     		cbnz	r0, .L384
 1974 0004 044A     		ldr	r2, .L385+4
 1975 0006 C3F8E420 		str	r2, [r3, #228]
 1976 000a 7047     		bx	lr
 1977              	.L384:
 1978 000c 034A     		ldr	r2, .L385+8
 1979 000e C3F8E420 		str	r2, [r3, #228]
 1980 0012 7047     		bx	lr
 1981              	.L386:
 1982              		.align	2
 1983              	.L385:
 1984 0014 00040E40 		.word	1074660352
 1985 0018 00434D50 		.word	1347240704
 1986 001c 01434D50 		.word	1347240705
 1987              		.size	pmc_set_writeprotect, .-pmc_set_writeprotect
 1988              		.section	.text.pmc_get_writeprotect_status,"ax",%progbits
 1989              		.align	1
 1990              		.p2align 2,,3
 1991              		.global	pmc_get_writeprotect_status
 1992              		.syntax unified
 1993              		.thumb
 1994              		.thumb_func
 1995              		.fpu softvfp
ARM GAS  /tmp/ccES1yDh.s 			page 36


 1996              		.type	pmc_get_writeprotect_status, %function
 1997              	pmc_get_writeprotect_status:
 1998              		@ args = 0, pretend = 0, frame = 0
 1999              		@ frame_needed = 0, uses_anonymous_args = 0
 2000              		@ link register save eliminated.
 2001 0000 014B     		ldr	r3, .L388
 2002 0002 D3F8E800 		ldr	r0, [r3, #232]
 2003 0006 7047     		bx	lr
 2004              	.L389:
 2005              		.align	2
 2006              	.L388:
 2007 0008 00040E40 		.word	1074660352
 2008              		.size	pmc_get_writeprotect_status, .-pmc_get_writeprotect_status
 2009              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 2010              		.align	2
 2011              		.type	cpu_irq_critical_section_counter, %object
 2012              		.size	cpu_irq_critical_section_counter, 4
 2013              	cpu_irq_critical_section_counter:
 2014 0000 00000000 		.space	4
 2015              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 2016              		.type	cpu_irq_prev_interrupt_state, %object
 2017              		.size	cpu_irq_prev_interrupt_state, 1
 2018              	cpu_irq_prev_interrupt_state:
 2019 0000 00       		.space	1
 2020              		.section	.data.ul_flash_in_wait_mode,"aw",%progbits
 2021              		.align	2
 2022              		.set	.LANCHOR0,. + 0
 2023              		.type	ul_flash_in_wait_mode, %object
 2024              		.size	ul_flash_in_wait_mode, 4
 2025              	ul_flash_in_wait_mode:
 2026 0000 00002000 		.word	2097152
 2027              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
