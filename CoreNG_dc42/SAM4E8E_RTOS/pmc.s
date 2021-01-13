ARM GAS  /tmp/cc4Mo6Vu.s 			page 1


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
  13              		.file	"pmc.c"
  14              		.section	.text.pmc_mck_set_prescaler,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	pmc_mck_set_prescaler
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	pmc_mck_set_prescaler, %function
  23              	pmc_mck_set_prescaler:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 044A     		ldr	r2, .L6
  28 0002 136B     		ldr	r3, [r2, #48]
  29 0004 23F07003 		bic	r3, r3, #112
  30 0008 1843     		orrs	r0, r0, r3
  31 000a 1063     		str	r0, [r2, #48]
  32              	.L2:
  33 000c 936E     		ldr	r3, [r2, #104]
  34 000e 1B07     		lsls	r3, r3, #28
  35 0010 FCD5     		bpl	.L2
  36 0012 7047     		bx	lr
  37              	.L7:
  38              		.align	2
  39              	.L6:
  40 0014 00040E40 		.word	1074660352
  41              		.size	pmc_mck_set_prescaler, .-pmc_mck_set_prescaler
  42              		.section	.text.pmc_mck_set_source,"ax",%progbits
  43              		.align	1
  44              		.p2align 2,,3
  45              		.global	pmc_mck_set_source
  46              		.syntax unified
  47              		.thumb
  48              		.thumb_func
  49              		.fpu fpv4-sp-d16
  50              		.type	pmc_mck_set_source, %function
  51              	pmc_mck_set_source:
  52              		@ args = 0, pretend = 0, frame = 0
  53              		@ frame_needed = 0, uses_anonymous_args = 0
  54              		@ link register save eliminated.
  55 0000 044A     		ldr	r2, .L12
  56 0002 136B     		ldr	r3, [r2, #48]
  57 0004 23F00303 		bic	r3, r3, #3
ARM GAS  /tmp/cc4Mo6Vu.s 			page 2


  58 0008 1843     		orrs	r0, r0, r3
  59 000a 1063     		str	r0, [r2, #48]
  60              	.L9:
  61 000c 936E     		ldr	r3, [r2, #104]
  62 000e 1B07     		lsls	r3, r3, #28
  63 0010 FCD5     		bpl	.L9
  64 0012 7047     		bx	lr
  65              	.L13:
  66              		.align	2
  67              	.L12:
  68 0014 00040E40 		.word	1074660352
  69              		.size	pmc_mck_set_source, .-pmc_mck_set_source
  70              		.section	.text.pmc_switch_mck_to_sclk,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.global	pmc_switch_mck_to_sclk
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu fpv4-sp-d16
  78              		.type	pmc_switch_mck_to_sclk, %function
  79              	pmc_switch_mck_to_sclk:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 1349     		ldr	r1, .L30
  84 0002 0B6B     		ldr	r3, [r1, #48]
  85 0004 23F00303 		bic	r3, r3, #3
  86 0008 0B63     		str	r3, [r1, #48]
  87 000a 8B6E     		ldr	r3, [r1, #104]
  88 000c 1B07     		lsls	r3, r3, #28
  89 000e 58BF     		it	pl
  90 0010 4FF40063 		movpl	r3, #2048
  91 0014 02D5     		bpl	.L17
  92 0016 04E0     		b	.L16
  93              	.L19:
  94 0018 013B     		subs	r3, r3, #1
  95 001a 16D0     		beq	.L21
  96              	.L17:
  97 001c 8A6E     		ldr	r2, [r1, #104]
  98 001e 1207     		lsls	r2, r2, #28
  99 0020 FAD5     		bpl	.L19
 100              	.L16:
 101 0022 0B49     		ldr	r1, .L30
 102 0024 0B6B     		ldr	r3, [r1, #48]
 103 0026 23F07003 		bic	r3, r3, #112
 104 002a 1843     		orrs	r0, r0, r3
 105 002c 0863     		str	r0, [r1, #48]
 106 002e 8B6E     		ldr	r3, [r1, #104]
 107 0030 1807     		lsls	r0, r3, #28
 108 0032 58BF     		it	pl
 109 0034 4FF40063 		movpl	r3, #2048
 110 0038 02D5     		bpl	.L22
 111 003a 04E0     		b	.L29
 112              	.L23:
 113 003c 013B     		subs	r3, r3, #1
 114 003e 04D0     		beq	.L21
ARM GAS  /tmp/cc4Mo6Vu.s 			page 3


 115              	.L22:
 116 0040 8A6E     		ldr	r2, [r1, #104]
 117 0042 1207     		lsls	r2, r2, #28
 118 0044 FAD5     		bpl	.L23
 119              	.L29:
 120 0046 0020     		movs	r0, #0
 121 0048 7047     		bx	lr
 122              	.L21:
 123 004a 0120     		movs	r0, #1
 124 004c 7047     		bx	lr
 125              	.L31:
 126 004e 00BF     		.align	2
 127              	.L30:
 128 0050 00040E40 		.word	1074660352
 129              		.size	pmc_switch_mck_to_sclk, .-pmc_switch_mck_to_sclk
 130              		.section	.text.pmc_switch_mck_to_mainck,"ax",%progbits
 131              		.align	1
 132              		.p2align 2,,3
 133              		.global	pmc_switch_mck_to_mainck
 134              		.syntax unified
 135              		.thumb
 136              		.thumb_func
 137              		.fpu fpv4-sp-d16
 138              		.type	pmc_switch_mck_to_mainck, %function
 139              	pmc_switch_mck_to_mainck:
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 0, uses_anonymous_args = 0
 142              		@ link register save eliminated.
 143 0000 1449     		ldr	r1, .L48
 144 0002 0B6B     		ldr	r3, [r1, #48]
 145 0004 23F00303 		bic	r3, r3, #3
 146 0008 43F00103 		orr	r3, r3, #1
 147 000c 0B63     		str	r3, [r1, #48]
 148 000e 8B6E     		ldr	r3, [r1, #104]
 149 0010 1B07     		lsls	r3, r3, #28
 150 0012 58BF     		it	pl
 151 0014 4FF40063 		movpl	r3, #2048
 152 0018 02D5     		bpl	.L35
 153 001a 04E0     		b	.L34
 154              	.L37:
 155 001c 013B     		subs	r3, r3, #1
 156 001e 16D0     		beq	.L39
 157              	.L35:
 158 0020 8A6E     		ldr	r2, [r1, #104]
 159 0022 1207     		lsls	r2, r2, #28
 160 0024 FAD5     		bpl	.L37
 161              	.L34:
 162 0026 0B49     		ldr	r1, .L48
 163 0028 0B6B     		ldr	r3, [r1, #48]
 164 002a 23F07003 		bic	r3, r3, #112
 165 002e 1843     		orrs	r0, r0, r3
 166 0030 0863     		str	r0, [r1, #48]
 167 0032 8B6E     		ldr	r3, [r1, #104]
 168 0034 1807     		lsls	r0, r3, #28
 169 0036 58BF     		it	pl
 170 0038 4FF40063 		movpl	r3, #2048
 171 003c 02D5     		bpl	.L40
ARM GAS  /tmp/cc4Mo6Vu.s 			page 4


 172 003e 04E0     		b	.L47
 173              	.L41:
 174 0040 013B     		subs	r3, r3, #1
 175 0042 04D0     		beq	.L39
 176              	.L40:
 177 0044 8A6E     		ldr	r2, [r1, #104]
 178 0046 1207     		lsls	r2, r2, #28
 179 0048 FAD5     		bpl	.L41
 180              	.L47:
 181 004a 0020     		movs	r0, #0
 182 004c 7047     		bx	lr
 183              	.L39:
 184 004e 0120     		movs	r0, #1
 185 0050 7047     		bx	lr
 186              	.L49:
 187 0052 00BF     		.align	2
 188              	.L48:
 189 0054 00040E40 		.word	1074660352
 190              		.size	pmc_switch_mck_to_mainck, .-pmc_switch_mck_to_mainck
 191              		.section	.text.pmc_switch_mck_to_pllack,"ax",%progbits
 192              		.align	1
 193              		.p2align 2,,3
 194              		.global	pmc_switch_mck_to_pllack
 195              		.syntax unified
 196              		.thumb
 197              		.thumb_func
 198              		.fpu fpv4-sp-d16
 199              		.type	pmc_switch_mck_to_pllack, %function
 200              	pmc_switch_mck_to_pllack:
 201              		@ args = 0, pretend = 0, frame = 0
 202              		@ frame_needed = 0, uses_anonymous_args = 0
 203              		@ link register save eliminated.
 204 0000 1449     		ldr	r1, .L66
 205 0002 0B6B     		ldr	r3, [r1, #48]
 206 0004 23F07003 		bic	r3, r3, #112
 207 0008 1843     		orrs	r0, r0, r3
 208 000a 0863     		str	r0, [r1, #48]
 209 000c 8B6E     		ldr	r3, [r1, #104]
 210 000e 1807     		lsls	r0, r3, #28
 211 0010 58BF     		it	pl
 212 0012 4FF40063 		movpl	r3, #2048
 213 0016 02D5     		bpl	.L53
 214 0018 04E0     		b	.L52
 215              	.L55:
 216 001a 013B     		subs	r3, r3, #1
 217 001c 17D0     		beq	.L57
 218              	.L53:
 219 001e 8A6E     		ldr	r2, [r1, #104]
 220 0020 1207     		lsls	r2, r2, #28
 221 0022 FAD5     		bpl	.L55
 222              	.L52:
 223 0024 0B49     		ldr	r1, .L66
 224 0026 0B6B     		ldr	r3, [r1, #48]
 225 0028 23F00303 		bic	r3, r3, #3
 226 002c 43F00203 		orr	r3, r3, #2
 227 0030 0B63     		str	r3, [r1, #48]
 228 0032 8B6E     		ldr	r3, [r1, #104]
ARM GAS  /tmp/cc4Mo6Vu.s 			page 5


 229 0034 1807     		lsls	r0, r3, #28
 230 0036 58BF     		it	pl
 231 0038 4FF40063 		movpl	r3, #2048
 232 003c 02D5     		bpl	.L58
 233 003e 04E0     		b	.L65
 234              	.L59:
 235 0040 013B     		subs	r3, r3, #1
 236 0042 04D0     		beq	.L57
 237              	.L58:
 238 0044 8A6E     		ldr	r2, [r1, #104]
 239 0046 1207     		lsls	r2, r2, #28
 240 0048 FAD5     		bpl	.L59
 241              	.L65:
 242 004a 0020     		movs	r0, #0
 243 004c 7047     		bx	lr
 244              	.L57:
 245 004e 0120     		movs	r0, #1
 246 0050 7047     		bx	lr
 247              	.L67:
 248 0052 00BF     		.align	2
 249              	.L66:
 250 0054 00040E40 		.word	1074660352
 251              		.size	pmc_switch_mck_to_pllack, .-pmc_switch_mck_to_pllack
 252              		.section	.text.pmc_switch_sclk_to_32kxtal,"ax",%progbits
 253              		.align	1
 254              		.p2align 2,,3
 255              		.global	pmc_switch_sclk_to_32kxtal
 256              		.syntax unified
 257              		.thumb
 258              		.thumb_func
 259              		.fpu fpv4-sp-d16
 260              		.type	pmc_switch_sclk_to_32kxtal, %function
 261              	pmc_switch_sclk_to_32kxtal:
 262              		@ args = 0, pretend = 0, frame = 0
 263              		@ frame_needed = 0, uses_anonymous_args = 0
 264              		@ link register save eliminated.
 265 0000 0128     		cmp	r0, #1
 266 0002 06D1     		bne	.L69
 267 0004 054A     		ldr	r2, .L70
 268 0006 9368     		ldr	r3, [r2, #8]
 269 0008 43F02543 		orr	r3, r3, #-1526726656
 270 000c 43F48013 		orr	r3, r3, #1048576
 271 0010 9360     		str	r3, [r2, #8]
 272              	.L69:
 273 0012 024B     		ldr	r3, .L70
 274 0014 024A     		ldr	r2, .L70+4
 275 0016 1A60     		str	r2, [r3]
 276 0018 7047     		bx	lr
 277              	.L71:
 278 001a 00BF     		.align	2
 279              	.L70:
 280 001c 10180E40 		.word	1074665488
 281 0020 080000A5 		.word	-1526726648
 282              		.size	pmc_switch_sclk_to_32kxtal, .-pmc_switch_sclk_to_32kxtal
 283              		.section	.text.pmc_osc_is_ready_32kxtal,"ax",%progbits
 284              		.align	1
 285              		.p2align 2,,3
ARM GAS  /tmp/cc4Mo6Vu.s 			page 6


 286              		.global	pmc_osc_is_ready_32kxtal
 287              		.syntax unified
 288              		.thumb
 289              		.thumb_func
 290              		.fpu fpv4-sp-d16
 291              		.type	pmc_osc_is_ready_32kxtal, %function
 292              	pmc_osc_is_ready_32kxtal:
 293              		@ args = 0, pretend = 0, frame = 0
 294              		@ frame_needed = 0, uses_anonymous_args = 0
 295              		@ link register save eliminated.
 296 0000 054B     		ldr	r3, .L75
 297 0002 5869     		ldr	r0, [r3, #20]
 298 0004 10F08000 		ands	r0, r0, #128
 299 0008 05D0     		beq	.L73
 300 000a A3F5A053 		sub	r3, r3, #5120
 301 000e 103B     		subs	r3, r3, #16
 302 0010 986E     		ldr	r0, [r3, #104]
 303 0012 C0F3C010 		ubfx	r0, r0, #7, #1
 304              	.L73:
 305 0016 7047     		bx	lr
 306              	.L76:
 307              		.align	2
 308              	.L75:
 309 0018 10180E40 		.word	1074665488
 310              		.size	pmc_osc_is_ready_32kxtal, .-pmc_osc_is_ready_32kxtal
 311              		.section	.text.pmc_switch_mainck_to_fastrc,"ax",%progbits
 312              		.align	1
 313              		.p2align 2,,3
 314              		.global	pmc_switch_mainck_to_fastrc
 315              		.syntax unified
 316              		.thumb
 317              		.thumb_func
 318              		.fpu fpv4-sp-d16
 319              		.type	pmc_switch_mainck_to_fastrc, %function
 320              	pmc_switch_mainck_to_fastrc:
 321              		@ args = 0, pretend = 0, frame = 0
 322              		@ frame_needed = 0, uses_anonymous_args = 0
 323              		@ link register save eliminated.
 324 0000 0F4A     		ldr	r2, .L84
 325 0002 116A     		ldr	r1, [r2, #32]
 326 0004 41F45C11 		orr	r1, r1, #3604480
 327 0008 41F00801 		orr	r1, r1, #8
 328 000c 1162     		str	r1, [r2, #32]
 329              	.L78:
 330 000e 936E     		ldr	r3, [r2, #104]
 331 0010 9903     		lsls	r1, r3, #14
 332 0012 FCD5     		bpl	.L78
 333 0014 136A     		ldr	r3, [r2, #32]
 334 0016 0A49     		ldr	r1, .L84
 335 0018 23F45C13 		bic	r3, r3, #3604480
 336 001c 23F07003 		bic	r3, r3, #112
 337 0020 43F45C13 		orr	r3, r3, #3604480
 338 0024 1843     		orrs	r0, r0, r3
 339 0026 1062     		str	r0, [r2, #32]
 340              	.L79:
 341 0028 8B6E     		ldr	r3, [r1, #104]
 342 002a 9B03     		lsls	r3, r3, #14
ARM GAS  /tmp/cc4Mo6Vu.s 			page 7


 343 002c FCD5     		bpl	.L79
 344 002e 0B6A     		ldr	r3, [r1, #32]
 345 0030 23F09B73 		bic	r3, r3, #20316160
 346 0034 23F48033 		bic	r3, r3, #65536
 347 0038 43F45C13 		orr	r3, r3, #3604480
 348 003c 0B62     		str	r3, [r1, #32]
 349 003e 7047     		bx	lr
 350              	.L85:
 351              		.align	2
 352              	.L84:
 353 0040 00040E40 		.word	1074660352
 354              		.size	pmc_switch_mainck_to_fastrc, .-pmc_switch_mainck_to_fastrc
 355              		.section	.text.pmc_osc_enable_fastrc,"ax",%progbits
 356              		.align	1
 357              		.p2align 2,,3
 358              		.global	pmc_osc_enable_fastrc
 359              		.syntax unified
 360              		.thumb
 361              		.thumb_func
 362              		.fpu fpv4-sp-d16
 363              		.type	pmc_osc_enable_fastrc, %function
 364              	pmc_osc_enable_fastrc:
 365              		@ args = 0, pretend = 0, frame = 0
 366              		@ frame_needed = 0, uses_anonymous_args = 0
 367              		@ link register save eliminated.
 368 0000 0B4A     		ldr	r2, .L93
 369 0002 116A     		ldr	r1, [r2, #32]
 370 0004 41F45C11 		orr	r1, r1, #3604480
 371 0008 41F00801 		orr	r1, r1, #8
 372 000c 1162     		str	r1, [r2, #32]
 373              	.L87:
 374 000e 936E     		ldr	r3, [r2, #104]
 375 0010 9903     		lsls	r1, r3, #14
 376 0012 FCD5     		bpl	.L87
 377 0014 136A     		ldr	r3, [r2, #32]
 378 0016 0649     		ldr	r1, .L93
 379 0018 23F45C13 		bic	r3, r3, #3604480
 380 001c 23F07003 		bic	r3, r3, #112
 381 0020 43F45C13 		orr	r3, r3, #3604480
 382 0024 1843     		orrs	r0, r0, r3
 383 0026 1062     		str	r0, [r2, #32]
 384              	.L88:
 385 0028 8B6E     		ldr	r3, [r1, #104]
 386 002a 9B03     		lsls	r3, r3, #14
 387 002c FCD5     		bpl	.L88
 388 002e 7047     		bx	lr
 389              	.L94:
 390              		.align	2
 391              	.L93:
 392 0030 00040E40 		.word	1074660352
 393              		.size	pmc_osc_enable_fastrc, .-pmc_osc_enable_fastrc
 394              		.section	.text.pmc_osc_disable_fastrc,"ax",%progbits
 395              		.align	1
 396              		.p2align 2,,3
 397              		.global	pmc_osc_disable_fastrc
 398              		.syntax unified
 399              		.thumb
ARM GAS  /tmp/cc4Mo6Vu.s 			page 8


 400              		.thumb_func
 401              		.fpu fpv4-sp-d16
 402              		.type	pmc_osc_disable_fastrc, %function
 403              	pmc_osc_disable_fastrc:
 404              		@ args = 0, pretend = 0, frame = 0
 405              		@ frame_needed = 0, uses_anonymous_args = 0
 406              		@ link register save eliminated.
 407 0000 044A     		ldr	r2, .L96
 408 0002 136A     		ldr	r3, [r2, #32]
 409 0004 23F45C13 		bic	r3, r3, #3604480
 410 0008 23F07803 		bic	r3, r3, #120
 411 000c 43F45C13 		orr	r3, r3, #3604480
 412 0010 1362     		str	r3, [r2, #32]
 413 0012 7047     		bx	lr
 414              	.L97:
 415              		.align	2
 416              	.L96:
 417 0014 00040E40 		.word	1074660352
 418              		.size	pmc_osc_disable_fastrc, .-pmc_osc_disable_fastrc
 419              		.section	.text.pmc_osc_is_ready_fastrc,"ax",%progbits
 420              		.align	1
 421              		.p2align 2,,3
 422              		.global	pmc_osc_is_ready_fastrc
 423              		.syntax unified
 424              		.thumb
 425              		.thumb_func
 426              		.fpu fpv4-sp-d16
 427              		.type	pmc_osc_is_ready_fastrc, %function
 428              	pmc_osc_is_ready_fastrc:
 429              		@ args = 0, pretend = 0, frame = 0
 430              		@ frame_needed = 0, uses_anonymous_args = 0
 431              		@ link register save eliminated.
 432 0000 024B     		ldr	r3, .L99
 433 0002 986E     		ldr	r0, [r3, #104]
 434 0004 00F40030 		and	r0, r0, #131072
 435 0008 7047     		bx	lr
 436              	.L100:
 437 000a 00BF     		.align	2
 438              	.L99:
 439 000c 00040E40 		.word	1074660352
 440              		.size	pmc_osc_is_ready_fastrc, .-pmc_osc_is_ready_fastrc
 441              		.section	.text.pmc_osc_enable_main_xtal,"ax",%progbits
 442              		.align	1
 443              		.p2align 2,,3
 444              		.global	pmc_osc_enable_main_xtal
 445              		.syntax unified
 446              		.thumb
 447              		.thumb_func
 448              		.fpu fpv4-sp-d16
 449              		.type	pmc_osc_enable_main_xtal, %function
 450              	pmc_osc_enable_main_xtal:
 451              		@ args = 0, pretend = 0, frame = 0
 452              		@ frame_needed = 0, uses_anonymous_args = 0
 453              		@ link register save eliminated.
 454 0000 074A     		ldr	r2, .L105
 455 0002 136A     		ldr	r3, [r2, #32]
 456 0004 23F00303 		bic	r3, r3, #3
ARM GAS  /tmp/cc4Mo6Vu.s 			page 9


 457 0008 0002     		lsls	r0, r0, #8
 458 000a 43F45C13 		orr	r3, r3, #3604480
 459 000e 80B2     		uxth	r0, r0
 460 0010 43F00103 		orr	r3, r3, #1
 461 0014 0343     		orrs	r3, r3, r0
 462 0016 1362     		str	r3, [r2, #32]
 463              	.L102:
 464 0018 936E     		ldr	r3, [r2, #104]
 465 001a DB07     		lsls	r3, r3, #31
 466 001c FCD5     		bpl	.L102
 467 001e 7047     		bx	lr
 468              	.L106:
 469              		.align	2
 470              	.L105:
 471 0020 00040E40 		.word	1074660352
 472              		.size	pmc_osc_enable_main_xtal, .-pmc_osc_enable_main_xtal
 473              		.section	.text.pmc_osc_bypass_main_xtal,"ax",%progbits
 474              		.align	1
 475              		.p2align 2,,3
 476              		.global	pmc_osc_bypass_main_xtal
 477              		.syntax unified
 478              		.thumb
 479              		.thumb_func
 480              		.fpu fpv4-sp-d16
 481              		.type	pmc_osc_bypass_main_xtal, %function
 482              	pmc_osc_bypass_main_xtal:
 483              		@ args = 0, pretend = 0, frame = 0
 484              		@ frame_needed = 0, uses_anonymous_args = 0
 485              		@ link register save eliminated.
 486 0000 044A     		ldr	r2, .L108
 487 0002 136A     		ldr	r3, [r2, #32]
 488 0004 23F00303 		bic	r3, r3, #3
 489 0008 43F45C13 		orr	r3, r3, #3604480
 490 000c 43F00203 		orr	r3, r3, #2
 491 0010 1362     		str	r3, [r2, #32]
 492 0012 7047     		bx	lr
 493              	.L109:
 494              		.align	2
 495              	.L108:
 496 0014 00040E40 		.word	1074660352
 497              		.size	pmc_osc_bypass_main_xtal, .-pmc_osc_bypass_main_xtal
 498              		.section	.text.pmc_osc_disable_main_xtal,"ax",%progbits
 499              		.align	1
 500              		.p2align 2,,3
 501              		.global	pmc_osc_disable_main_xtal
 502              		.syntax unified
 503              		.thumb
 504              		.thumb_func
 505              		.fpu fpv4-sp-d16
 506              		.type	pmc_osc_disable_main_xtal, %function
 507              	pmc_osc_disable_main_xtal:
 508              		@ args = 0, pretend = 0, frame = 0
 509              		@ frame_needed = 0, uses_anonymous_args = 0
 510              		@ link register save eliminated.
 511 0000 034A     		ldr	r2, .L111
 512 0002 136A     		ldr	r3, [r2, #32]
 513 0004 23F00303 		bic	r3, r3, #3
ARM GAS  /tmp/cc4Mo6Vu.s 			page 10


 514 0008 43F45C13 		orr	r3, r3, #3604480
 515 000c 1362     		str	r3, [r2, #32]
 516 000e 7047     		bx	lr
 517              	.L112:
 518              		.align	2
 519              	.L111:
 520 0010 00040E40 		.word	1074660352
 521              		.size	pmc_osc_disable_main_xtal, .-pmc_osc_disable_main_xtal
 522              		.section	.text.pmc_osc_is_bypassed_main_xtal,"ax",%progbits
 523              		.align	1
 524              		.p2align 2,,3
 525              		.global	pmc_osc_is_bypassed_main_xtal
 526              		.syntax unified
 527              		.thumb
 528              		.thumb_func
 529              		.fpu fpv4-sp-d16
 530              		.type	pmc_osc_is_bypassed_main_xtal, %function
 531              	pmc_osc_is_bypassed_main_xtal:
 532              		@ args = 0, pretend = 0, frame = 0
 533              		@ frame_needed = 0, uses_anonymous_args = 0
 534              		@ link register save eliminated.
 535 0000 024B     		ldr	r3, .L114
 536 0002 186A     		ldr	r0, [r3, #32]
 537 0004 00F00200 		and	r0, r0, #2
 538 0008 7047     		bx	lr
 539              	.L115:
 540 000a 00BF     		.align	2
 541              	.L114:
 542 000c 00040E40 		.word	1074660352
 543              		.size	pmc_osc_is_bypassed_main_xtal, .-pmc_osc_is_bypassed_main_xtal
 544              		.section	.text.pmc_osc_is_ready_main_xtal,"ax",%progbits
 545              		.align	1
 546              		.p2align 2,,3
 547              		.global	pmc_osc_is_ready_main_xtal
 548              		.syntax unified
 549              		.thumb
 550              		.thumb_func
 551              		.fpu fpv4-sp-d16
 552              		.type	pmc_osc_is_ready_main_xtal, %function
 553              	pmc_osc_is_ready_main_xtal:
 554              		@ args = 0, pretend = 0, frame = 0
 555              		@ frame_needed = 0, uses_anonymous_args = 0
 556              		@ link register save eliminated.
 557 0000 024B     		ldr	r3, .L117
 558 0002 986E     		ldr	r0, [r3, #104]
 559 0004 00F00100 		and	r0, r0, #1
 560 0008 7047     		bx	lr
 561              	.L118:
 562 000a 00BF     		.align	2
 563              	.L117:
 564 000c 00040E40 		.word	1074660352
 565              		.size	pmc_osc_is_ready_main_xtal, .-pmc_osc_is_ready_main_xtal
 566              		.section	.text.pmc_switch_mainck_to_xtal,"ax",%progbits
 567              		.align	1
 568              		.p2align 2,,3
 569              		.global	pmc_switch_mainck_to_xtal
 570              		.syntax unified
ARM GAS  /tmp/cc4Mo6Vu.s 			page 11


 571              		.thumb
 572              		.thumb_func
 573              		.fpu fpv4-sp-d16
 574              		.type	pmc_switch_mainck_to_xtal, %function
 575              	pmc_switch_mainck_to_xtal:
 576              		@ args = 0, pretend = 0, frame = 0
 577              		@ frame_needed = 0, uses_anonymous_args = 0
 578              		@ link register save eliminated.
 579 0000 B8B9     		cbnz	r0, .L125
 580 0002 104A     		ldr	r2, .L126
 581 0004 136A     		ldr	r3, [r2, #32]
 582 0006 23F45C13 		bic	r3, r3, #3604480
 583 000a 23F00303 		bic	r3, r3, #3
 584 000e 0902     		lsls	r1, r1, #8
 585 0010 43F45C13 		orr	r3, r3, #3604480
 586 0014 89B2     		uxth	r1, r1
 587 0016 43F00103 		orr	r3, r3, #1
 588 001a 0B43     		orrs	r3, r3, r1
 589 001c 1362     		str	r3, [r2, #32]
 590              	.L122:
 591 001e 936E     		ldr	r3, [r2, #104]
 592 0020 DB07     		lsls	r3, r3, #31
 593 0022 FCD5     		bpl	.L122
 594 0024 136A     		ldr	r3, [r2, #32]
 595 0026 43F09B73 		orr	r3, r3, #20316160
 596 002a 43F48033 		orr	r3, r3, #65536
 597 002e 1362     		str	r3, [r2, #32]
 598 0030 7047     		bx	lr
 599              	.L125:
 600 0032 0449     		ldr	r1, .L126
 601 0034 044A     		ldr	r2, .L126+4
 602 0036 086A     		ldr	r0, [r1, #32]
 603 0038 044B     		ldr	r3, .L126+8
 604 003a 0240     		ands	r2, r2, r0
 605 003c 1343     		orrs	r3, r3, r2
 606 003e 0B62     		str	r3, [r1, #32]
 607 0040 7047     		bx	lr
 608              	.L127:
 609 0042 00BF     		.align	2
 610              	.L126:
 611 0044 00040E40 		.word	1074660352
 612 0048 FCFFC8FE 		.word	-20381700
 613 004c 02003701 		.word	20381698
 614              		.size	pmc_switch_mainck_to_xtal, .-pmc_switch_mainck_to_xtal
 615              		.section	.text.pmc_osc_disable_xtal,"ax",%progbits
 616              		.align	1
 617              		.p2align 2,,3
 618              		.global	pmc_osc_disable_xtal
 619              		.syntax unified
 620              		.thumb
 621              		.thumb_func
 622              		.fpu fpv4-sp-d16
 623              		.type	pmc_osc_disable_xtal, %function
 624              	pmc_osc_disable_xtal:
 625              		@ args = 0, pretend = 0, frame = 0
 626              		@ frame_needed = 0, uses_anonymous_args = 0
 627              		@ link register save eliminated.
ARM GAS  /tmp/cc4Mo6Vu.s 			page 12


 628 0000 084A     		ldr	r2, .L132
 629 0002 136A     		ldr	r3, [r2, #32]
 630 0004 23F45C13 		bic	r3, r3, #3604480
 631 0008 28B9     		cbnz	r0, .L131
 632 000a 23F00103 		bic	r3, r3, #1
 633 000e 43F45C13 		orr	r3, r3, #3604480
 634 0012 1362     		str	r3, [r2, #32]
 635 0014 7047     		bx	lr
 636              	.L131:
 637 0016 23F00203 		bic	r3, r3, #2
 638 001a 43F45C13 		orr	r3, r3, #3604480
 639 001e 1362     		str	r3, [r2, #32]
 640 0020 7047     		bx	lr
 641              	.L133:
 642 0022 00BF     		.align	2
 643              	.L132:
 644 0024 00040E40 		.word	1074660352
 645              		.size	pmc_osc_disable_xtal, .-pmc_osc_disable_xtal
 646              		.section	.text.pmc_osc_is_ready_mainck,"ax",%progbits
 647              		.align	1
 648              		.p2align 2,,3
 649              		.global	pmc_osc_is_ready_mainck
 650              		.syntax unified
 651              		.thumb
 652              		.thumb_func
 653              		.fpu fpv4-sp-d16
 654              		.type	pmc_osc_is_ready_mainck, %function
 655              	pmc_osc_is_ready_mainck:
 656              		@ args = 0, pretend = 0, frame = 0
 657              		@ frame_needed = 0, uses_anonymous_args = 0
 658              		@ link register save eliminated.
 659 0000 024B     		ldr	r3, .L135
 660 0002 986E     		ldr	r0, [r3, #104]
 661 0004 00F48030 		and	r0, r0, #65536
 662 0008 7047     		bx	lr
 663              	.L136:
 664 000a 00BF     		.align	2
 665              	.L135:
 666 000c 00040E40 		.word	1074660352
 667              		.size	pmc_osc_is_ready_mainck, .-pmc_osc_is_ready_mainck
 668              		.section	.text.pmc_mainck_osc_select,"ax",%progbits
 669              		.align	1
 670              		.p2align 2,,3
 671              		.global	pmc_mainck_osc_select
 672              		.syntax unified
 673              		.thumb
 674              		.thumb_func
 675              		.fpu fpv4-sp-d16
 676              		.type	pmc_mainck_osc_select, %function
 677              	pmc_mainck_osc_select:
 678              		@ args = 0, pretend = 0, frame = 0
 679              		@ frame_needed = 0, uses_anonymous_args = 0
 680              		@ link register save eliminated.
 681 0000 084B     		ldr	r3, .L141
 682 0002 1B6A     		ldr	r3, [r3, #32]
 683 0004 30B9     		cbnz	r0, .L140
 684 0006 23F08073 		bic	r3, r3, #16777216
ARM GAS  /tmp/cc4Mo6Vu.s 			page 13


 685 000a 064A     		ldr	r2, .L141
 686 000c 43F45C13 		orr	r3, r3, #3604480
 687 0010 1362     		str	r3, [r2, #32]
 688 0012 7047     		bx	lr
 689              	.L140:
 690 0014 43F08073 		orr	r3, r3, #16777216
 691 0018 024A     		ldr	r2, .L141
 692 001a 43F45C13 		orr	r3, r3, #3604480
 693 001e 1362     		str	r3, [r2, #32]
 694 0020 7047     		bx	lr
 695              	.L142:
 696 0022 00BF     		.align	2
 697              	.L141:
 698 0024 00040E40 		.word	1074660352
 699              		.size	pmc_mainck_osc_select, .-pmc_mainck_osc_select
 700              		.section	.text.pmc_enable_pllack,"ax",%progbits
 701              		.align	1
 702              		.p2align 2,,3
 703              		.global	pmc_enable_pllack
 704              		.syntax unified
 705              		.thumb
 706              		.thumb_func
 707              		.fpu fpv4-sp-d16
 708              		.type	pmc_enable_pllack, %function
 709              	pmc_enable_pllack:
 710              		@ args = 0, pretend = 0, frame = 0
 711              		@ frame_needed = 0, uses_anonymous_args = 0
 712              		@ link register save eliminated.
 713 0000 0B4B     		ldr	r3, .L148
 714 0002 03EA0043 		and	r3, r3, r0, lsl #16
 715 0006 D2B2     		uxtb	r2, r2
 716 0008 0902     		lsls	r1, r1, #8
 717 000a 43F00053 		orr	r3, r3, #536870912
 718 000e 10B4     		push	{r4}
 719 0010 1343     		orrs	r3, r3, r2
 720 0012 084C     		ldr	r4, .L148+4
 721 0014 01F47C51 		and	r1, r1, #16128
 722 0018 4FF00052 		mov	r2, #536870912
 723 001c 0B43     		orrs	r3, r3, r1
 724 001e A262     		str	r2, [r4, #40]
 725 0020 2246     		mov	r2, r4
 726 0022 A362     		str	r3, [r4, #40]
 727              	.L144:
 728 0024 936E     		ldr	r3, [r2, #104]
 729 0026 9B07     		lsls	r3, r3, #30
 730 0028 FCD5     		bpl	.L144
 731 002a 5DF8044B 		ldr	r4, [sp], #4
 732 002e 7047     		bx	lr
 733              	.L149:
 734              		.align	2
 735              	.L148:
 736 0030 0000FF07 		.word	134152192
 737 0034 00040E40 		.word	1074660352
 738              		.size	pmc_enable_pllack, .-pmc_enable_pllack
 739              		.section	.text.pmc_disable_pllack,"ax",%progbits
 740              		.align	1
 741              		.p2align 2,,3
ARM GAS  /tmp/cc4Mo6Vu.s 			page 14


 742              		.global	pmc_disable_pllack
 743              		.syntax unified
 744              		.thumb
 745              		.thumb_func
 746              		.fpu fpv4-sp-d16
 747              		.type	pmc_disable_pllack, %function
 748              	pmc_disable_pllack:
 749              		@ args = 0, pretend = 0, frame = 0
 750              		@ frame_needed = 0, uses_anonymous_args = 0
 751              		@ link register save eliminated.
 752 0000 024B     		ldr	r3, .L151
 753 0002 4FF00052 		mov	r2, #536870912
 754 0006 9A62     		str	r2, [r3, #40]
 755 0008 7047     		bx	lr
 756              	.L152:
 757 000a 00BF     		.align	2
 758              	.L151:
 759 000c 00040E40 		.word	1074660352
 760              		.size	pmc_disable_pllack, .-pmc_disable_pllack
 761              		.section	.text.pmc_is_locked_pllack,"ax",%progbits
 762              		.align	1
 763              		.p2align 2,,3
 764              		.global	pmc_is_locked_pllack
 765              		.syntax unified
 766              		.thumb
 767              		.thumb_func
 768              		.fpu fpv4-sp-d16
 769              		.type	pmc_is_locked_pllack, %function
 770              	pmc_is_locked_pllack:
 771              		@ args = 0, pretend = 0, frame = 0
 772              		@ frame_needed = 0, uses_anonymous_args = 0
 773              		@ link register save eliminated.
 774 0000 024B     		ldr	r3, .L154
 775 0002 986E     		ldr	r0, [r3, #104]
 776 0004 00F00200 		and	r0, r0, #2
 777 0008 7047     		bx	lr
 778              	.L155:
 779 000a 00BF     		.align	2
 780              	.L154:
 781 000c 00040E40 		.word	1074660352
 782              		.size	pmc_is_locked_pllack, .-pmc_is_locked_pllack
 783              		.section	.text.pmc_enable_periph_clk,"ax",%progbits
 784              		.align	1
 785              		.p2align 2,,3
 786              		.global	pmc_enable_periph_clk
 787              		.syntax unified
 788              		.thumb
 789              		.thumb_func
 790              		.fpu fpv4-sp-d16
 791              		.type	pmc_enable_periph_clk, %function
 792              	pmc_enable_periph_clk:
 793              		@ args = 0, pretend = 0, frame = 0
 794              		@ frame_needed = 0, uses_anonymous_args = 0
 795              		@ link register save eliminated.
 796 0000 2F28     		cmp	r0, #47
 797 0002 19D8     		bhi	.L159
 798 0004 1F28     		cmp	r0, #31
ARM GAS  /tmp/cc4Mo6Vu.s 			page 15


 799 0006 0E4A     		ldr	r2, .L162
 800 0008 09D8     		bhi	.L158
 801 000a 0123     		movs	r3, #1
 802 000c 9169     		ldr	r1, [r2, #24]
 803 000e 03FA00F0 		lsl	r0, r3, r0
 804 0012 30EA0103 		bics	r3, r0, r1
 805 0016 11D0     		beq	.L161
 806 0018 1061     		str	r0, [r2, #16]
 807 001a 0020     		movs	r0, #0
 808 001c 7047     		bx	lr
 809              	.L158:
 810 001e 0123     		movs	r3, #1
 811 0020 2038     		subs	r0, r0, #32
 812 0022 D2F80811 		ldr	r1, [r2, #264]
 813 0026 03FA00F0 		lsl	r0, r3, r0
 814 002a 30EA0103 		bics	r3, r0, r1
 815 002e 05D0     		beq	.L161
 816 0030 C2F80001 		str	r0, [r2, #256]
 817 0034 0020     		movs	r0, #0
 818 0036 7047     		bx	lr
 819              	.L159:
 820 0038 0120     		movs	r0, #1
 821 003a 7047     		bx	lr
 822              	.L161:
 823 003c 0020     		movs	r0, #0
 824 003e 7047     		bx	lr
 825              	.L163:
 826              		.align	2
 827              	.L162:
 828 0040 00040E40 		.word	1074660352
 829              		.size	pmc_enable_periph_clk, .-pmc_enable_periph_clk
 830              		.section	.text.pmc_disable_periph_clk,"ax",%progbits
 831              		.align	1
 832              		.p2align 2,,3
 833              		.global	pmc_disable_periph_clk
 834              		.syntax unified
 835              		.thumb
 836              		.thumb_func
 837              		.fpu fpv4-sp-d16
 838              		.type	pmc_disable_periph_clk, %function
 839              	pmc_disable_periph_clk:
 840              		@ args = 0, pretend = 0, frame = 0
 841              		@ frame_needed = 0, uses_anonymous_args = 0
 842              		@ link register save eliminated.
 843 0000 2F28     		cmp	r0, #47
 844 0002 18D8     		bhi	.L167
 845 0004 1F28     		cmp	r0, #31
 846 0006 0E4A     		ldr	r2, .L171
 847 0008 08D8     		bhi	.L166
 848 000a 0123     		movs	r3, #1
 849 000c 9169     		ldr	r1, [r2, #24]
 850 000e 03FA00F0 		lsl	r0, r3, r0
 851 0012 30EA0103 		bics	r3, r0, r1
 852 0016 10D0     		beq	.L170
 853              	.L169:
 854 0018 0020     		movs	r0, #0
 855 001a 7047     		bx	lr
ARM GAS  /tmp/cc4Mo6Vu.s 			page 16


 856              	.L166:
 857 001c 0123     		movs	r3, #1
 858 001e 2038     		subs	r0, r0, #32
 859 0020 D2F80811 		ldr	r1, [r2, #264]
 860 0024 03FA00F0 		lsl	r0, r3, r0
 861 0028 30EA0103 		bics	r3, r0, r1
 862 002c F4D1     		bne	.L169
 863 002e C2F80401 		str	r0, [r2, #260]
 864 0032 0020     		movs	r0, #0
 865 0034 7047     		bx	lr
 866              	.L167:
 867 0036 0120     		movs	r0, #1
 868 0038 7047     		bx	lr
 869              	.L170:
 870 003a 5061     		str	r0, [r2, #20]
 871 003c 0020     		movs	r0, #0
 872 003e 7047     		bx	lr
 873              	.L172:
 874              		.align	2
 875              	.L171:
 876 0040 00040E40 		.word	1074660352
 877              		.size	pmc_disable_periph_clk, .-pmc_disable_periph_clk
 878              		.section	.text.pmc_enable_all_periph_clk,"ax",%progbits
 879              		.align	1
 880              		.p2align 2,,3
 881              		.global	pmc_enable_all_periph_clk
 882              		.syntax unified
 883              		.thumb
 884              		.thumb_func
 885              		.fpu fpv4-sp-d16
 886              		.type	pmc_enable_all_periph_clk, %function
 887              	pmc_enable_all_periph_clk:
 888              		@ args = 0, pretend = 0, frame = 0
 889              		@ frame_needed = 0, uses_anonymous_args = 0
 890              		@ link register save eliminated.
 891 0000 094A     		ldr	r2, .L178
 892 0002 6FF00303 		mvn	r3, #3
 893 0006 1361     		str	r3, [r2, #16]
 894              	.L174:
 895 0008 9369     		ldr	r3, [r2, #24]
 896 000a 23F00303 		bic	r3, r3, #3
 897 000e 0433     		adds	r3, r3, #4
 898 0010 FAD1     		bne	.L174
 899 0012 4FF0FF33 		mov	r3, #-1
 900 0016 0449     		ldr	r1, .L178
 901 0018 C2F80031 		str	r3, [r2, #256]
 902              	.L175:
 903 001c D1F80831 		ldr	r3, [r1, #264]
 904 0020 0133     		adds	r3, r3, #1
 905 0022 FBD1     		bne	.L175
 906 0024 7047     		bx	lr
 907              	.L179:
 908 0026 00BF     		.align	2
 909              	.L178:
 910 0028 00040E40 		.word	1074660352
 911              		.size	pmc_enable_all_periph_clk, .-pmc_enable_all_periph_clk
 912              		.section	.text.pmc_disable_all_periph_clk,"ax",%progbits
ARM GAS  /tmp/cc4Mo6Vu.s 			page 17


 913              		.align	1
 914              		.p2align 2,,3
 915              		.global	pmc_disable_all_periph_clk
 916              		.syntax unified
 917              		.thumb
 918              		.thumb_func
 919              		.fpu fpv4-sp-d16
 920              		.type	pmc_disable_all_periph_clk, %function
 921              	pmc_disable_all_periph_clk:
 922              		@ args = 0, pretend = 0, frame = 0
 923              		@ frame_needed = 0, uses_anonymous_args = 0
 924              		@ link register save eliminated.
 925 0000 084A     		ldr	r2, .L185
 926 0002 6FF00303 		mvn	r3, #3
 927 0006 5361     		str	r3, [r2, #20]
 928              	.L181:
 929 0008 9369     		ldr	r3, [r2, #24]
 930 000a 33F00303 		bics	r3, r3, #3
 931 000e FBD1     		bne	.L181
 932 0010 4FF0FF33 		mov	r3, #-1
 933 0014 0349     		ldr	r1, .L185
 934 0016 C2F80431 		str	r3, [r2, #260]
 935              	.L182:
 936 001a D1F80831 		ldr	r3, [r1, #264]
 937 001e 002B     		cmp	r3, #0
 938 0020 FBD1     		bne	.L182
 939 0022 7047     		bx	lr
 940              	.L186:
 941              		.align	2
 942              	.L185:
 943 0024 00040E40 		.word	1074660352
 944              		.size	pmc_disable_all_periph_clk, .-pmc_disable_all_periph_clk
 945              		.section	.text.pmc_is_periph_clk_enabled,"ax",%progbits
 946              		.align	1
 947              		.p2align 2,,3
 948              		.global	pmc_is_periph_clk_enabled
 949              		.syntax unified
 950              		.thumb
 951              		.thumb_func
 952              		.fpu fpv4-sp-d16
 953              		.type	pmc_is_periph_clk_enabled, %function
 954              	pmc_is_periph_clk_enabled:
 955              		@ args = 0, pretend = 0, frame = 0
 956              		@ frame_needed = 0, uses_anonymous_args = 0
 957              		@ link register save eliminated.
 958 0000 2F28     		cmp	r0, #47
 959 0002 16D8     		bhi	.L190
 960 0004 1F28     		cmp	r0, #31
 961 0006 0C4A     		ldr	r2, .L191
 962 0008 08D8     		bhi	.L189
 963 000a 0123     		movs	r3, #1
 964 000c 9269     		ldr	r2, [r2, #24]
 965 000e 03FA00F0 		lsl	r0, r3, r0
 966 0012 1042     		tst	r0, r2
 967 0014 14BF     		ite	ne
 968 0016 1846     		movne	r0, r3
 969 0018 0020     		moveq	r0, #0
ARM GAS  /tmp/cc4Mo6Vu.s 			page 18


 970 001a 7047     		bx	lr
 971              	.L189:
 972 001c 0123     		movs	r3, #1
 973 001e D2F80821 		ldr	r2, [r2, #264]
 974 0022 2038     		subs	r0, r0, #32
 975 0024 03FA00F0 		lsl	r0, r3, r0
 976 0028 1042     		tst	r0, r2
 977 002a 14BF     		ite	ne
 978 002c 1846     		movne	r0, r3
 979 002e 0020     		moveq	r0, #0
 980 0030 7047     		bx	lr
 981              	.L190:
 982 0032 0020     		movs	r0, #0
 983 0034 7047     		bx	lr
 984              	.L192:
 985 0036 00BF     		.align	2
 986              	.L191:
 987 0038 00040E40 		.word	1074660352
 988              		.size	pmc_is_periph_clk_enabled, .-pmc_is_periph_clk_enabled
 989              		.section	.text.pmc_pck_set_prescaler,"ax",%progbits
 990              		.align	1
 991              		.p2align 2,,3
 992              		.global	pmc_pck_set_prescaler
 993              		.syntax unified
 994              		.thumb
 995              		.thumb_func
 996              		.fpu fpv4-sp-d16
 997              		.type	pmc_pck_set_prescaler, %function
 998              	pmc_pck_set_prescaler:
 999              		@ args = 0, pretend = 0, frame = 0
 1000              		@ frame_needed = 0, uses_anonymous_args = 0
 1001              		@ link register save eliminated.
 1002 0000 0A4B     		ldr	r3, .L203
 1003 0002 30B4     		push	{r4, r5}
 1004 0004 03EB8005 		add	r5, r3, r0, lsl #2
 1005 0008 4FF48072 		mov	r2, #256
 1006 000c 2C6C     		ldr	r4, [r5, #64]
 1007 000e 24F07004 		bic	r4, r4, #112
 1008 0012 2143     		orrs	r1, r1, r4
 1009 0014 2964     		str	r1, [r5, #64]
 1010 0016 02FA00F0 		lsl	r0, r2, r0
 1011 001a 02E0     		b	.L195
 1012              	.L202:
 1013 001c 9A6E     		ldr	r2, [r3, #104]
 1014 001e 0242     		tst	r2, r0
 1015 0020 02D1     		bne	.L193
 1016              	.L195:
 1017 0022 1A68     		ldr	r2, [r3]
 1018 0024 0242     		tst	r2, r0
 1019 0026 F9D1     		bne	.L202
 1020              	.L193:
 1021 0028 30BC     		pop	{r4, r5}
 1022 002a 7047     		bx	lr
 1023              	.L204:
 1024              		.align	2
 1025              	.L203:
 1026 002c 00040E40 		.word	1074660352
ARM GAS  /tmp/cc4Mo6Vu.s 			page 19


 1027              		.size	pmc_pck_set_prescaler, .-pmc_pck_set_prescaler
 1028              		.section	.text.pmc_pck_set_source,"ax",%progbits
 1029              		.align	1
 1030              		.p2align 2,,3
 1031              		.global	pmc_pck_set_source
 1032              		.syntax unified
 1033              		.thumb
 1034              		.thumb_func
 1035              		.fpu fpv4-sp-d16
 1036              		.type	pmc_pck_set_source, %function
 1037              	pmc_pck_set_source:
 1038              		@ args = 0, pretend = 0, frame = 0
 1039              		@ frame_needed = 0, uses_anonymous_args = 0
 1040              		@ link register save eliminated.
 1041 0000 0A4B     		ldr	r3, .L215
 1042 0002 30B4     		push	{r4, r5}
 1043 0004 03EB8005 		add	r5, r3, r0, lsl #2
 1044 0008 4FF48072 		mov	r2, #256
 1045 000c 2C6C     		ldr	r4, [r5, #64]
 1046 000e 24F00704 		bic	r4, r4, #7
 1047 0012 2143     		orrs	r1, r1, r4
 1048 0014 2964     		str	r1, [r5, #64]
 1049 0016 02FA00F0 		lsl	r0, r2, r0
 1050 001a 02E0     		b	.L207
 1051              	.L214:
 1052 001c 9A6E     		ldr	r2, [r3, #104]
 1053 001e 0242     		tst	r2, r0
 1054 0020 02D1     		bne	.L205
 1055              	.L207:
 1056 0022 1A68     		ldr	r2, [r3]
 1057 0024 0242     		tst	r2, r0
 1058 0026 F9D1     		bne	.L214
 1059              	.L205:
 1060 0028 30BC     		pop	{r4, r5}
 1061 002a 7047     		bx	lr
 1062              	.L216:
 1063              		.align	2
 1064              	.L215:
 1065 002c 00040E40 		.word	1074660352
 1066              		.size	pmc_pck_set_source, .-pmc_pck_set_source
 1067              		.section	.text.pmc_switch_pck_to_sclk,"ax",%progbits
 1068              		.align	1
 1069              		.p2align 2,,3
 1070              		.global	pmc_switch_pck_to_sclk
 1071              		.syntax unified
 1072              		.thumb
 1073              		.thumb_func
 1074              		.fpu fpv4-sp-d16
 1075              		.type	pmc_switch_pck_to_sclk, %function
 1076              	pmc_switch_pck_to_sclk:
 1077              		@ args = 0, pretend = 0, frame = 0
 1078              		@ frame_needed = 0, uses_anonymous_args = 0
 1079              		@ link register save eliminated.
 1080 0000 00F11002 		add	r2, r0, #16
 1081 0004 0B4B     		ldr	r3, .L227
 1082 0006 43F82210 		str	r1, [r3, r2, lsl #2]
 1083 000a 4FF48072 		mov	r2, #256
ARM GAS  /tmp/cc4Mo6Vu.s 			page 20


 1084 000e 996E     		ldr	r1, [r3, #104]
 1085 0010 02FA00F0 		lsl	r0, r2, r0
 1086 0014 0142     		tst	r1, r0
 1087 0016 08D1     		bne	.L224
 1088 0018 1946     		mov	r1, r3
 1089 001a 4FF40063 		mov	r3, #2048
 1090 001e 01E0     		b	.L220
 1091              	.L221:
 1092 0020 013B     		subs	r3, r3, #1
 1093 0022 04D0     		beq	.L226
 1094              	.L220:
 1095 0024 8A6E     		ldr	r2, [r1, #104]
 1096 0026 0242     		tst	r2, r0
 1097 0028 FAD0     		beq	.L221
 1098              	.L224:
 1099 002a 0020     		movs	r0, #0
 1100 002c 7047     		bx	lr
 1101              	.L226:
 1102 002e 0120     		movs	r0, #1
 1103 0030 7047     		bx	lr
 1104              	.L228:
 1105 0032 00BF     		.align	2
 1106              	.L227:
 1107 0034 00040E40 		.word	1074660352
 1108              		.size	pmc_switch_pck_to_sclk, .-pmc_switch_pck_to_sclk
 1109              		.section	.text.pmc_switch_pck_to_mainck,"ax",%progbits
 1110              		.align	1
 1111              		.p2align 2,,3
 1112              		.global	pmc_switch_pck_to_mainck
 1113              		.syntax unified
 1114              		.thumb
 1115              		.thumb_func
 1116              		.fpu fpv4-sp-d16
 1117              		.type	pmc_switch_pck_to_mainck, %function
 1118              	pmc_switch_pck_to_mainck:
 1119              		@ args = 0, pretend = 0, frame = 0
 1120              		@ frame_needed = 0, uses_anonymous_args = 0
 1121              		@ link register save eliminated.
 1122 0000 00F11002 		add	r2, r0, #16
 1123 0004 0C4B     		ldr	r3, .L239
 1124 0006 41F00101 		orr	r1, r1, #1
 1125 000a 43F82210 		str	r1, [r3, r2, lsl #2]
 1126 000e 4FF48072 		mov	r2, #256
 1127 0012 996E     		ldr	r1, [r3, #104]
 1128 0014 02FA00F0 		lsl	r0, r2, r0
 1129 0018 0142     		tst	r1, r0
 1130 001a 08D1     		bne	.L236
 1131 001c 1946     		mov	r1, r3
 1132 001e 4FF40063 		mov	r3, #2048
 1133 0022 01E0     		b	.L232
 1134              	.L233:
 1135 0024 013B     		subs	r3, r3, #1
 1136 0026 04D0     		beq	.L238
 1137              	.L232:
 1138 0028 8A6E     		ldr	r2, [r1, #104]
 1139 002a 0242     		tst	r2, r0
 1140 002c FAD0     		beq	.L233
ARM GAS  /tmp/cc4Mo6Vu.s 			page 21


 1141              	.L236:
 1142 002e 0020     		movs	r0, #0
 1143 0030 7047     		bx	lr
 1144              	.L238:
 1145 0032 0120     		movs	r0, #1
 1146 0034 7047     		bx	lr
 1147              	.L240:
 1148 0036 00BF     		.align	2
 1149              	.L239:
 1150 0038 00040E40 		.word	1074660352
 1151              		.size	pmc_switch_pck_to_mainck, .-pmc_switch_pck_to_mainck
 1152              		.section	.text.pmc_switch_pck_to_pllack,"ax",%progbits
 1153              		.align	1
 1154              		.p2align 2,,3
 1155              		.global	pmc_switch_pck_to_pllack
 1156              		.syntax unified
 1157              		.thumb
 1158              		.thumb_func
 1159              		.fpu fpv4-sp-d16
 1160              		.type	pmc_switch_pck_to_pllack, %function
 1161              	pmc_switch_pck_to_pllack:
 1162              		@ args = 0, pretend = 0, frame = 0
 1163              		@ frame_needed = 0, uses_anonymous_args = 0
 1164              		@ link register save eliminated.
 1165 0000 00F11002 		add	r2, r0, #16
 1166 0004 0C4B     		ldr	r3, .L251
 1167 0006 41F00201 		orr	r1, r1, #2
 1168 000a 43F82210 		str	r1, [r3, r2, lsl #2]
 1169 000e 4FF48072 		mov	r2, #256
 1170 0012 996E     		ldr	r1, [r3, #104]
 1171 0014 02FA00F0 		lsl	r0, r2, r0
 1172 0018 0142     		tst	r1, r0
 1173 001a 08D1     		bne	.L248
 1174 001c 1946     		mov	r1, r3
 1175 001e 4FF40063 		mov	r3, #2048
 1176 0022 01E0     		b	.L244
 1177              	.L245:
 1178 0024 013B     		subs	r3, r3, #1
 1179 0026 04D0     		beq	.L250
 1180              	.L244:
 1181 0028 8A6E     		ldr	r2, [r1, #104]
 1182 002a 0242     		tst	r2, r0
 1183 002c FAD0     		beq	.L245
 1184              	.L248:
 1185 002e 0020     		movs	r0, #0
 1186 0030 7047     		bx	lr
 1187              	.L250:
 1188 0032 0120     		movs	r0, #1
 1189 0034 7047     		bx	lr
 1190              	.L252:
 1191 0036 00BF     		.align	2
 1192              	.L251:
 1193 0038 00040E40 		.word	1074660352
 1194              		.size	pmc_switch_pck_to_pllack, .-pmc_switch_pck_to_pllack
 1195              		.section	.text.pmc_switch_pck_to_mck,"ax",%progbits
 1196              		.align	1
 1197              		.p2align 2,,3
ARM GAS  /tmp/cc4Mo6Vu.s 			page 22


 1198              		.global	pmc_switch_pck_to_mck
 1199              		.syntax unified
 1200              		.thumb
 1201              		.thumb_func
 1202              		.fpu fpv4-sp-d16
 1203              		.type	pmc_switch_pck_to_mck, %function
 1204              	pmc_switch_pck_to_mck:
 1205              		@ args = 0, pretend = 0, frame = 0
 1206              		@ frame_needed = 0, uses_anonymous_args = 0
 1207              		@ link register save eliminated.
 1208 0000 00F11002 		add	r2, r0, #16
 1209 0004 0C4B     		ldr	r3, .L263
 1210 0006 41F00401 		orr	r1, r1, #4
 1211 000a 43F82210 		str	r1, [r3, r2, lsl #2]
 1212 000e 4FF48072 		mov	r2, #256
 1213 0012 996E     		ldr	r1, [r3, #104]
 1214 0014 02FA00F0 		lsl	r0, r2, r0
 1215 0018 0142     		tst	r1, r0
 1216 001a 08D1     		bne	.L260
 1217 001c 1946     		mov	r1, r3
 1218 001e 4FF40063 		mov	r3, #2048
 1219 0022 01E0     		b	.L256
 1220              	.L257:
 1221 0024 013B     		subs	r3, r3, #1
 1222 0026 04D0     		beq	.L262
 1223              	.L256:
 1224 0028 8A6E     		ldr	r2, [r1, #104]
 1225 002a 0242     		tst	r2, r0
 1226 002c FAD0     		beq	.L257
 1227              	.L260:
 1228 002e 0020     		movs	r0, #0
 1229 0030 7047     		bx	lr
 1230              	.L262:
 1231 0032 0120     		movs	r0, #1
 1232 0034 7047     		bx	lr
 1233              	.L264:
 1234 0036 00BF     		.align	2
 1235              	.L263:
 1236 0038 00040E40 		.word	1074660352
 1237              		.size	pmc_switch_pck_to_mck, .-pmc_switch_pck_to_mck
 1238              		.section	.text.pmc_enable_pck,"ax",%progbits
 1239              		.align	1
 1240              		.p2align 2,,3
 1241              		.global	pmc_enable_pck
 1242              		.syntax unified
 1243              		.thumb
 1244              		.thumb_func
 1245              		.fpu fpv4-sp-d16
 1246              		.type	pmc_enable_pck, %function
 1247              	pmc_enable_pck:
 1248              		@ args = 0, pretend = 0, frame = 0
 1249              		@ frame_needed = 0, uses_anonymous_args = 0
 1250              		@ link register save eliminated.
 1251 0000 4FF48073 		mov	r3, #256
 1252 0004 024A     		ldr	r2, .L266
 1253 0006 03FA00F0 		lsl	r0, r3, r0
 1254 000a 1060     		str	r0, [r2]
ARM GAS  /tmp/cc4Mo6Vu.s 			page 23


 1255 000c 7047     		bx	lr
 1256              	.L267:
 1257 000e 00BF     		.align	2
 1258              	.L266:
 1259 0010 00040E40 		.word	1074660352
 1260              		.size	pmc_enable_pck, .-pmc_enable_pck
 1261              		.section	.text.pmc_disable_pck,"ax",%progbits
 1262              		.align	1
 1263              		.p2align 2,,3
 1264              		.global	pmc_disable_pck
 1265              		.syntax unified
 1266              		.thumb
 1267              		.thumb_func
 1268              		.fpu fpv4-sp-d16
 1269              		.type	pmc_disable_pck, %function
 1270              	pmc_disable_pck:
 1271              		@ args = 0, pretend = 0, frame = 0
 1272              		@ frame_needed = 0, uses_anonymous_args = 0
 1273              		@ link register save eliminated.
 1274 0000 4FF48073 		mov	r3, #256
 1275 0004 024A     		ldr	r2, .L269
 1276 0006 03FA00F0 		lsl	r0, r3, r0
 1277 000a 5060     		str	r0, [r2, #4]
 1278 000c 7047     		bx	lr
 1279              	.L270:
 1280 000e 00BF     		.align	2
 1281              	.L269:
 1282 0010 00040E40 		.word	1074660352
 1283              		.size	pmc_disable_pck, .-pmc_disable_pck
 1284              		.section	.text.pmc_enable_all_pck,"ax",%progbits
 1285              		.align	1
 1286              		.p2align 2,,3
 1287              		.global	pmc_enable_all_pck
 1288              		.syntax unified
 1289              		.thumb
 1290              		.thumb_func
 1291              		.fpu fpv4-sp-d16
 1292              		.type	pmc_enable_all_pck, %function
 1293              	pmc_enable_all_pck:
 1294              		@ args = 0, pretend = 0, frame = 0
 1295              		@ frame_needed = 0, uses_anonymous_args = 0
 1296              		@ link register save eliminated.
 1297 0000 024B     		ldr	r3, .L272
 1298 0002 4FF4E062 		mov	r2, #1792
 1299 0006 1A60     		str	r2, [r3]
 1300 0008 7047     		bx	lr
 1301              	.L273:
 1302 000a 00BF     		.align	2
 1303              	.L272:
 1304 000c 00040E40 		.word	1074660352
 1305              		.size	pmc_enable_all_pck, .-pmc_enable_all_pck
 1306              		.section	.text.pmc_disable_all_pck,"ax",%progbits
 1307              		.align	1
 1308              		.p2align 2,,3
 1309              		.global	pmc_disable_all_pck
 1310              		.syntax unified
 1311              		.thumb
ARM GAS  /tmp/cc4Mo6Vu.s 			page 24


 1312              		.thumb_func
 1313              		.fpu fpv4-sp-d16
 1314              		.type	pmc_disable_all_pck, %function
 1315              	pmc_disable_all_pck:
 1316              		@ args = 0, pretend = 0, frame = 0
 1317              		@ frame_needed = 0, uses_anonymous_args = 0
 1318              		@ link register save eliminated.
 1319 0000 024B     		ldr	r3, .L275
 1320 0002 4FF4E062 		mov	r2, #1792
 1321 0006 5A60     		str	r2, [r3, #4]
 1322 0008 7047     		bx	lr
 1323              	.L276:
 1324 000a 00BF     		.align	2
 1325              	.L275:
 1326 000c 00040E40 		.word	1074660352
 1327              		.size	pmc_disable_all_pck, .-pmc_disable_all_pck
 1328              		.section	.text.pmc_is_pck_enabled,"ax",%progbits
 1329              		.align	1
 1330              		.p2align 2,,3
 1331              		.global	pmc_is_pck_enabled
 1332              		.syntax unified
 1333              		.thumb
 1334              		.thumb_func
 1335              		.fpu fpv4-sp-d16
 1336              		.type	pmc_is_pck_enabled, %function
 1337              	pmc_is_pck_enabled:
 1338              		@ args = 0, pretend = 0, frame = 0
 1339              		@ frame_needed = 0, uses_anonymous_args = 0
 1340              		@ link register save eliminated.
 1341 0000 0228     		cmp	r0, #2
 1342 0002 07D8     		bhi	.L279
 1343 0004 044A     		ldr	r2, .L280
 1344 0006 4FF48073 		mov	r3, #256
 1345 000a 9268     		ldr	r2, [r2, #8]
 1346 000c 03FA00F0 		lsl	r0, r3, r0
 1347 0010 1040     		ands	r0, r0, r2
 1348 0012 7047     		bx	lr
 1349              	.L279:
 1350 0014 0020     		movs	r0, #0
 1351 0016 7047     		bx	lr
 1352              	.L281:
 1353              		.align	2
 1354              	.L280:
 1355 0018 00040E40 		.word	1074660352
 1356              		.size	pmc_is_pck_enabled, .-pmc_is_pck_enabled
 1357              		.section	.text.pmc_switch_udpck_to_pllack,"ax",%progbits
 1358              		.align	1
 1359              		.p2align 2,,3
 1360              		.global	pmc_switch_udpck_to_pllack
 1361              		.syntax unified
 1362              		.thumb
 1363              		.thumb_func
 1364              		.fpu fpv4-sp-d16
 1365              		.type	pmc_switch_udpck_to_pllack, %function
 1366              	pmc_switch_udpck_to_pllack:
 1367              		@ args = 0, pretend = 0, frame = 0
 1368              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cc4Mo6Vu.s 			page 25


 1369              		@ link register save eliminated.
 1370 0000 0002     		lsls	r0, r0, #8
 1371 0002 024B     		ldr	r3, .L283
 1372 0004 00F47060 		and	r0, r0, #3840
 1373 0008 9863     		str	r0, [r3, #56]
 1374 000a 7047     		bx	lr
 1375              	.L284:
 1376              		.align	2
 1377              	.L283:
 1378 000c 00040E40 		.word	1074660352
 1379              		.size	pmc_switch_udpck_to_pllack, .-pmc_switch_udpck_to_pllack
 1380              		.section	.text.pmc_enable_udpck,"ax",%progbits
 1381              		.align	1
 1382              		.p2align 2,,3
 1383              		.global	pmc_enable_udpck
 1384              		.syntax unified
 1385              		.thumb
 1386              		.thumb_func
 1387              		.fpu fpv4-sp-d16
 1388              		.type	pmc_enable_udpck, %function
 1389              	pmc_enable_udpck:
 1390              		@ args = 0, pretend = 0, frame = 0
 1391              		@ frame_needed = 0, uses_anonymous_args = 0
 1392              		@ link register save eliminated.
 1393 0000 014B     		ldr	r3, .L286
 1394 0002 8022     		movs	r2, #128
 1395 0004 1A60     		str	r2, [r3]
 1396 0006 7047     		bx	lr
 1397              	.L287:
 1398              		.align	2
 1399              	.L286:
 1400 0008 00040E40 		.word	1074660352
 1401              		.size	pmc_enable_udpck, .-pmc_enable_udpck
 1402              		.section	.text.pmc_disable_udpck,"ax",%progbits
 1403              		.align	1
 1404              		.p2align 2,,3
 1405              		.global	pmc_disable_udpck
 1406              		.syntax unified
 1407              		.thumb
 1408              		.thumb_func
 1409              		.fpu fpv4-sp-d16
 1410              		.type	pmc_disable_udpck, %function
 1411              	pmc_disable_udpck:
 1412              		@ args = 0, pretend = 0, frame = 0
 1413              		@ frame_needed = 0, uses_anonymous_args = 0
 1414              		@ link register save eliminated.
 1415 0000 014B     		ldr	r3, .L289
 1416 0002 8022     		movs	r2, #128
 1417 0004 5A60     		str	r2, [r3, #4]
 1418 0006 7047     		bx	lr
 1419              	.L290:
 1420              		.align	2
 1421              	.L289:
 1422 0008 00040E40 		.word	1074660352
 1423              		.size	pmc_disable_udpck, .-pmc_disable_udpck
 1424              		.section	.text.pmc_enable_interrupt,"ax",%progbits
 1425              		.align	1
ARM GAS  /tmp/cc4Mo6Vu.s 			page 26


 1426              		.p2align 2,,3
 1427              		.global	pmc_enable_interrupt
 1428              		.syntax unified
 1429              		.thumb
 1430              		.thumb_func
 1431              		.fpu fpv4-sp-d16
 1432              		.type	pmc_enable_interrupt, %function
 1433              	pmc_enable_interrupt:
 1434              		@ args = 0, pretend = 0, frame = 0
 1435              		@ frame_needed = 0, uses_anonymous_args = 0
 1436              		@ link register save eliminated.
 1437 0000 014B     		ldr	r3, .L292
 1438 0002 1866     		str	r0, [r3, #96]
 1439 0004 7047     		bx	lr
 1440              	.L293:
 1441 0006 00BF     		.align	2
 1442              	.L292:
 1443 0008 00040E40 		.word	1074660352
 1444              		.size	pmc_enable_interrupt, .-pmc_enable_interrupt
 1445              		.section	.text.pmc_disable_interrupt,"ax",%progbits
 1446              		.align	1
 1447              		.p2align 2,,3
 1448              		.global	pmc_disable_interrupt
 1449              		.syntax unified
 1450              		.thumb
 1451              		.thumb_func
 1452              		.fpu fpv4-sp-d16
 1453              		.type	pmc_disable_interrupt, %function
 1454              	pmc_disable_interrupt:
 1455              		@ args = 0, pretend = 0, frame = 0
 1456              		@ frame_needed = 0, uses_anonymous_args = 0
 1457              		@ link register save eliminated.
 1458 0000 014B     		ldr	r3, .L295
 1459 0002 5866     		str	r0, [r3, #100]
 1460 0004 7047     		bx	lr
 1461              	.L296:
 1462 0006 00BF     		.align	2
 1463              	.L295:
 1464 0008 00040E40 		.word	1074660352
 1465              		.size	pmc_disable_interrupt, .-pmc_disable_interrupt
 1466              		.section	.text.pmc_get_interrupt_mask,"ax",%progbits
 1467              		.align	1
 1468              		.p2align 2,,3
 1469              		.global	pmc_get_interrupt_mask
 1470              		.syntax unified
 1471              		.thumb
 1472              		.thumb_func
 1473              		.fpu fpv4-sp-d16
 1474              		.type	pmc_get_interrupt_mask, %function
 1475              	pmc_get_interrupt_mask:
 1476              		@ args = 0, pretend = 0, frame = 0
 1477              		@ frame_needed = 0, uses_anonymous_args = 0
 1478              		@ link register save eliminated.
 1479 0000 014B     		ldr	r3, .L298
 1480 0002 D86E     		ldr	r0, [r3, #108]
 1481 0004 7047     		bx	lr
 1482              	.L299:
ARM GAS  /tmp/cc4Mo6Vu.s 			page 27


 1483 0006 00BF     		.align	2
 1484              	.L298:
 1485 0008 00040E40 		.word	1074660352
 1486              		.size	pmc_get_interrupt_mask, .-pmc_get_interrupt_mask
 1487              		.section	.text.pmc_get_status,"ax",%progbits
 1488              		.align	1
 1489              		.p2align 2,,3
 1490              		.global	pmc_get_status
 1491              		.syntax unified
 1492              		.thumb
 1493              		.thumb_func
 1494              		.fpu fpv4-sp-d16
 1495              		.type	pmc_get_status, %function
 1496              	pmc_get_status:
 1497              		@ args = 0, pretend = 0, frame = 0
 1498              		@ frame_needed = 0, uses_anonymous_args = 0
 1499              		@ link register save eliminated.
 1500 0000 014B     		ldr	r3, .L301
 1501 0002 986E     		ldr	r0, [r3, #104]
 1502 0004 7047     		bx	lr
 1503              	.L302:
 1504 0006 00BF     		.align	2
 1505              	.L301:
 1506 0008 00040E40 		.word	1074660352
 1507              		.size	pmc_get_status, .-pmc_get_status
 1508              		.section	.text.pmc_set_fast_startup_input,"ax",%progbits
 1509              		.align	1
 1510              		.p2align 2,,3
 1511              		.global	pmc_set_fast_startup_input
 1512              		.syntax unified
 1513              		.thumb
 1514              		.thumb_func
 1515              		.fpu fpv4-sp-d16
 1516              		.type	pmc_set_fast_startup_input, %function
 1517              	pmc_set_fast_startup_input:
 1518              		@ args = 0, pretend = 0, frame = 0
 1519              		@ frame_needed = 0, uses_anonymous_args = 0
 1520              		@ link register save eliminated.
 1521 0000 034B     		ldr	r3, .L304
 1522 0002 1A6F     		ldr	r2, [r3, #112]
 1523 0004 C0F31200 		ubfx	r0, r0, #0, #19
 1524 0008 1043     		orrs	r0, r0, r2
 1525 000a 1867     		str	r0, [r3, #112]
 1526 000c 7047     		bx	lr
 1527              	.L305:
 1528 000e 00BF     		.align	2
 1529              	.L304:
 1530 0010 00040E40 		.word	1074660352
 1531              		.size	pmc_set_fast_startup_input, .-pmc_set_fast_startup_input
 1532              		.section	.text.pmc_clr_fast_startup_input,"ax",%progbits
 1533              		.align	1
 1534              		.p2align 2,,3
 1535              		.global	pmc_clr_fast_startup_input
 1536              		.syntax unified
 1537              		.thumb
 1538              		.thumb_func
 1539              		.fpu fpv4-sp-d16
ARM GAS  /tmp/cc4Mo6Vu.s 			page 28


 1540              		.type	pmc_clr_fast_startup_input, %function
 1541              	pmc_clr_fast_startup_input:
 1542              		@ args = 0, pretend = 0, frame = 0
 1543              		@ frame_needed = 0, uses_anonymous_args = 0
 1544              		@ link register save eliminated.
 1545 0000 034A     		ldr	r2, .L307
 1546 0002 136F     		ldr	r3, [r2, #112]
 1547 0004 C0F31200 		ubfx	r0, r0, #0, #19
 1548 0008 23EA0003 		bic	r3, r3, r0
 1549 000c 1367     		str	r3, [r2, #112]
 1550 000e 7047     		bx	lr
 1551              	.L308:
 1552              		.align	2
 1553              	.L307:
 1554 0010 00040E40 		.word	1074660352
 1555              		.size	pmc_clr_fast_startup_input, .-pmc_clr_fast_startup_input
 1556              		.section	.text.pmc_enable_sleepmode,"ax",%progbits
 1557              		.align	1
 1558              		.p2align 2,,3
 1559              		.global	pmc_enable_sleepmode
 1560              		.syntax unified
 1561              		.thumb
 1562              		.thumb_func
 1563              		.fpu fpv4-sp-d16
 1564              		.type	pmc_enable_sleepmode, %function
 1565              	pmc_enable_sleepmode:
 1566              		@ args = 0, pretend = 0, frame = 0
 1567              		@ frame_needed = 0, uses_anonymous_args = 0
 1568              		@ link register save eliminated.
 1569 0000 044A     		ldr	r2, .L310
 1570 0002 1369     		ldr	r3, [r2, #16]
 1571 0004 23F00403 		bic	r3, r3, #4
 1572 0008 1361     		str	r3, [r2, #16]
 1573              		.syntax unified
 1574              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1575 000a BFF34F8F 		dsb
 1576              	@ 0 "" 2
 1577              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1578 000e 30BF     		wfi
 1579              	@ 0 "" 2
 1580              		.thumb
 1581              		.syntax unified
 1582 0010 7047     		bx	lr
 1583              	.L311:
 1584 0012 00BF     		.align	2
 1585              	.L310:
 1586 0014 00ED00E0 		.word	-536810240
 1587              		.size	pmc_enable_sleepmode, .-pmc_enable_sleepmode
 1588              		.section	.text.pmc_set_flash_in_wait_mode,"ax",%progbits
 1589              		.align	1
 1590              		.p2align 2,,3
 1591              		.global	pmc_set_flash_in_wait_mode
 1592              		.syntax unified
 1593              		.thumb
 1594              		.thumb_func
 1595              		.fpu fpv4-sp-d16
 1596              		.type	pmc_set_flash_in_wait_mode, %function
ARM GAS  /tmp/cc4Mo6Vu.s 			page 29


 1597              	pmc_set_flash_in_wait_mode:
 1598              		@ args = 0, pretend = 0, frame = 0
 1599              		@ frame_needed = 0, uses_anonymous_args = 0
 1600              		@ link register save eliminated.
 1601 0000 014B     		ldr	r3, .L313
 1602 0002 1860     		str	r0, [r3]
 1603 0004 7047     		bx	lr
 1604              	.L314:
 1605 0006 00BF     		.align	2
 1606              	.L313:
 1607 0008 00000000 		.word	.LANCHOR0
 1608              		.size	pmc_set_flash_in_wait_mode, .-pmc_set_flash_in_wait_mode
 1609              		.section	.text.pmc_enable_waitmode,"ax",%progbits
 1610              		.align	1
 1611              		.p2align 2,,3
 1612              		.global	pmc_enable_waitmode
 1613              		.syntax unified
 1614              		.thumb
 1615              		.thumb_func
 1616              		.fpu fpv4-sp-d16
 1617              		.type	pmc_enable_waitmode, %function
 1618              	pmc_enable_waitmode:
 1619              		@ args = 0, pretend = 0, frame = 0
 1620              		@ frame_needed = 0, uses_anonymous_args = 0
 1621              		@ link register save eliminated.
 1622 0000 104A     		ldr	r2, .L324
 1623 0002 1149     		ldr	r1, .L324+4
 1624 0004 136F     		ldr	r3, [r2, #112]
 1625 0006 0968     		ldr	r1, [r1]
 1626 0008 23F4C003 		bic	r3, r3, #6291456
 1627 000c 0B43     		orrs	r3, r3, r1
 1628 000e 1367     		str	r3, [r2, #112]
 1629 0010 136A     		ldr	r3, [r2, #32]
 1630 0012 43F45C13 		orr	r3, r3, #3604480
 1631 0016 43F00403 		orr	r3, r3, #4
 1632 001a 1362     		str	r3, [r2, #32]
 1633              	.L316:
 1634 001c 936E     		ldr	r3, [r2, #104]
 1635 001e 1907     		lsls	r1, r3, #28
 1636 0020 FCD5     		bpl	.L316
 1637 0022 4FF4FA73 		mov	r3, #500
 1638              	.L317:
 1639              		.syntax unified
 1640              	@ 390 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1641 0026 00BF     		nop
 1642              	@ 0 "" 2
 1643              		.thumb
 1644              		.syntax unified
 1645 0028 013B     		subs	r3, r3, #1
 1646 002a FCD1     		bne	.L317
 1647 002c 054A     		ldr	r2, .L324
 1648              	.L318:
 1649 002e 136A     		ldr	r3, [r2, #32]
 1650 0030 1B07     		lsls	r3, r3, #28
 1651 0032 FCD5     		bpl	.L318
 1652 0034 136F     		ldr	r3, [r2, #112]
 1653 0036 23F4C003 		bic	r3, r3, #6291456
ARM GAS  /tmp/cc4Mo6Vu.s 			page 30


 1654 003a 43F48003 		orr	r3, r3, #4194304
 1655 003e 1367     		str	r3, [r2, #112]
 1656 0040 7047     		bx	lr
 1657              	.L325:
 1658 0042 00BF     		.align	2
 1659              	.L324:
 1660 0044 00040E40 		.word	1074660352
 1661 0048 00000000 		.word	.LANCHOR0
 1662              		.size	pmc_enable_waitmode, .-pmc_enable_waitmode
 1663              		.section	.text.pmc_enable_backupmode,"ax",%progbits
 1664              		.align	1
 1665              		.p2align 2,,3
 1666              		.global	pmc_enable_backupmode
 1667              		.syntax unified
 1668              		.thumb
 1669              		.thumb_func
 1670              		.fpu fpv4-sp-d16
 1671              		.type	pmc_enable_backupmode, %function
 1672              	pmc_enable_backupmode:
 1673              		@ args = 0, pretend = 0, frame = 0
 1674              		@ frame_needed = 0, uses_anonymous_args = 0
 1675              		@ link register save eliminated.
 1676 0000 0649     		ldr	r1, .L327
 1677 0002 074A     		ldr	r2, .L327+4
 1678 0004 0B69     		ldr	r3, [r1, #16]
 1679 0006 0748     		ldr	r0, .L327+8
 1680 0008 43F00403 		orr	r3, r3, #4
 1681 000c 0B61     		str	r3, [r1, #16]
 1682 000e 1060     		str	r0, [r2]
 1683 0010 9368     		ldr	r3, [r2, #8]
 1684              		.syntax unified
 1685              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1686 0012 BFF34F8F 		dsb
 1687              	@ 0 "" 2
 1688              	@ 412 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1689 0016 20BF     		wfe
 1690              	@ 0 "" 2
 1691              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1692 0018 30BF     		wfi
 1693              	@ 0 "" 2
 1694              		.thumb
 1695              		.syntax unified
 1696 001a 7047     		bx	lr
 1697              	.L328:
 1698              		.align	2
 1699              	.L327:
 1700 001c 00ED00E0 		.word	-536810240
 1701 0020 10180E40 		.word	1074665488
 1702 0024 040000A5 		.word	-1526726652
 1703              		.size	pmc_enable_backupmode, .-pmc_enable_backupmode
 1704              		.section	.text.pmc_enable_clock_failure_detector,"ax",%progbits
 1705              		.align	1
 1706              		.p2align 2,,3
 1707              		.global	pmc_enable_clock_failure_detector
 1708              		.syntax unified
 1709              		.thumb
 1710              		.thumb_func
ARM GAS  /tmp/cc4Mo6Vu.s 			page 31


 1711              		.fpu fpv4-sp-d16
 1712              		.type	pmc_enable_clock_failure_detector, %function
 1713              	pmc_enable_clock_failure_detector:
 1714              		@ args = 0, pretend = 0, frame = 0
 1715              		@ frame_needed = 0, uses_anonymous_args = 0
 1716              		@ link register save eliminated.
 1717 0000 034A     		ldr	r2, .L330
 1718 0002 136A     		ldr	r3, [r2, #32]
 1719 0004 43F00D73 		orr	r3, r3, #36962304
 1720 0008 43F44033 		orr	r3, r3, #196608
 1721 000c 1362     		str	r3, [r2, #32]
 1722 000e 7047     		bx	lr
 1723              	.L331:
 1724              		.align	2
 1725              	.L330:
 1726 0010 00040E40 		.word	1074660352
 1727              		.size	pmc_enable_clock_failure_detector, .-pmc_enable_clock_failure_detector
 1728              		.section	.text.pmc_disable_clock_failure_detector,"ax",%progbits
 1729              		.align	1
 1730              		.p2align 2,,3
 1731              		.global	pmc_disable_clock_failure_detector
 1732              		.syntax unified
 1733              		.thumb
 1734              		.thumb_func
 1735              		.fpu fpv4-sp-d16
 1736              		.type	pmc_disable_clock_failure_detector, %function
 1737              	pmc_disable_clock_failure_detector:
 1738              		@ args = 0, pretend = 0, frame = 0
 1739              		@ frame_needed = 0, uses_anonymous_args = 0
 1740              		@ link register save eliminated.
 1741 0000 034A     		ldr	r2, .L333
 1742 0002 136A     		ldr	r3, [r2, #32]
 1743 0004 23F00073 		bic	r3, r3, #33554432
 1744 0008 43F45C13 		orr	r3, r3, #3604480
 1745 000c 1362     		str	r3, [r2, #32]
 1746 000e 7047     		bx	lr
 1747              	.L334:
 1748              		.align	2
 1749              	.L333:
 1750 0010 00040E40 		.word	1074660352
 1751              		.size	pmc_disable_clock_failure_detector, .-pmc_disable_clock_failure_detector
 1752              		.section	.text.pmc_set_writeprotect,"ax",%progbits
 1753              		.align	1
 1754              		.p2align 2,,3
 1755              		.global	pmc_set_writeprotect
 1756              		.syntax unified
 1757              		.thumb
 1758              		.thumb_func
 1759              		.fpu fpv4-sp-d16
 1760              		.type	pmc_set_writeprotect, %function
 1761              	pmc_set_writeprotect:
 1762              		@ args = 0, pretend = 0, frame = 0
 1763              		@ frame_needed = 0, uses_anonymous_args = 0
 1764              		@ link register save eliminated.
 1765 0000 044B     		ldr	r3, .L339
 1766 0002 18B9     		cbnz	r0, .L338
 1767 0004 044A     		ldr	r2, .L339+4
ARM GAS  /tmp/cc4Mo6Vu.s 			page 32


 1768 0006 C3F8E420 		str	r2, [r3, #228]
 1769 000a 7047     		bx	lr
 1770              	.L338:
 1771 000c 034A     		ldr	r2, .L339+8
 1772 000e C3F8E420 		str	r2, [r3, #228]
 1773 0012 7047     		bx	lr
 1774              	.L340:
 1775              		.align	2
 1776              	.L339:
 1777 0014 00040E40 		.word	1074660352
 1778 0018 00434D50 		.word	1347240704
 1779 001c 01434D50 		.word	1347240705
 1780              		.size	pmc_set_writeprotect, .-pmc_set_writeprotect
 1781              		.section	.text.pmc_get_writeprotect_status,"ax",%progbits
 1782              		.align	1
 1783              		.p2align 2,,3
 1784              		.global	pmc_get_writeprotect_status
 1785              		.syntax unified
 1786              		.thumb
 1787              		.thumb_func
 1788              		.fpu fpv4-sp-d16
 1789              		.type	pmc_get_writeprotect_status, %function
 1790              	pmc_get_writeprotect_status:
 1791              		@ args = 0, pretend = 0, frame = 0
 1792              		@ frame_needed = 0, uses_anonymous_args = 0
 1793              		@ link register save eliminated.
 1794 0000 014B     		ldr	r3, .L342
 1795 0002 D3F8E800 		ldr	r0, [r3, #232]
 1796 0006 7047     		bx	lr
 1797              	.L343:
 1798              		.align	2
 1799              	.L342:
 1800 0008 00040E40 		.word	1074660352
 1801              		.size	pmc_get_writeprotect_status, .-pmc_get_writeprotect_status
 1802              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1803              		.align	2
 1804              		.type	cpu_irq_critical_section_counter, %object
 1805              		.size	cpu_irq_critical_section_counter, 4
 1806              	cpu_irq_critical_section_counter:
 1807 0000 00000000 		.space	4
 1808              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1809              		.type	cpu_irq_prev_interrupt_state, %object
 1810              		.size	cpu_irq_prev_interrupt_state, 1
 1811              	cpu_irq_prev_interrupt_state:
 1812 0000 00       		.space	1
 1813              		.section	.data.ul_flash_in_wait_mode,"aw",%progbits
 1814              		.align	2
 1815              		.set	.LANCHOR0,. + 0
 1816              		.type	ul_flash_in_wait_mode, %object
 1817              		.size	ul_flash_in_wait_mode, 4
 1818              	ul_flash_in_wait_mode:
 1819 0000 00002000 		.word	2097152
 1820              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
