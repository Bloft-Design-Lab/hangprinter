ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 1


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
  14              		.text
  15              		.section	.text.pmc_mck_set_prescaler,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	pmc_mck_set_prescaler
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	pmc_mck_set_prescaler, %function
  24              	pmc_mck_set_prescaler:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 044A     		ldr	r2, .L6
  29 0002 136B     		ldr	r3, [r2, #48]
  30 0004 23F07003 		bic	r3, r3, #112
  31 0008 1843     		orrs	r0, r0, r3
  32 000a 1063     		str	r0, [r2, #48]
  33              	.L2:
  34 000c 936E     		ldr	r3, [r2, #104]
  35 000e 1B07     		lsls	r3, r3, #28
  36 0010 FCD5     		bpl	.L2
  37 0012 7047     		bx	lr
  38              	.L7:
  39              		.align	2
  40              	.L6:
  41 0014 00040E40 		.word	1074660352
  42              		.size	pmc_mck_set_prescaler, .-pmc_mck_set_prescaler
  43              		.section	.text.pmc_mck_set_source,"ax",%progbits
  44              		.align	1
  45              		.p2align 2,,3
  46              		.global	pmc_mck_set_source
  47              		.syntax unified
  48              		.thumb
  49              		.thumb_func
  50              		.fpu fpv4-sp-d16
  51              		.type	pmc_mck_set_source, %function
  52              	pmc_mck_set_source:
  53              		@ args = 0, pretend = 0, frame = 0
  54              		@ frame_needed = 0, uses_anonymous_args = 0
  55              		@ link register save eliminated.
  56 0000 044A     		ldr	r2, .L12
  57 0002 136B     		ldr	r3, [r2, #48]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 2


  58 0004 23F00303 		bic	r3, r3, #3
  59 0008 1843     		orrs	r0, r0, r3
  60 000a 1063     		str	r0, [r2, #48]
  61              	.L9:
  62 000c 936E     		ldr	r3, [r2, #104]
  63 000e 1B07     		lsls	r3, r3, #28
  64 0010 FCD5     		bpl	.L9
  65 0012 7047     		bx	lr
  66              	.L13:
  67              		.align	2
  68              	.L12:
  69 0014 00040E40 		.word	1074660352
  70              		.size	pmc_mck_set_source, .-pmc_mck_set_source
  71              		.section	.text.pmc_switch_mck_to_sclk,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	pmc_switch_mck_to_sclk
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu fpv4-sp-d16
  79              		.type	pmc_switch_mck_to_sclk, %function
  80              	pmc_switch_mck_to_sclk:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 1349     		ldr	r1, .L30
  85 0002 0B6B     		ldr	r3, [r1, #48]
  86 0004 23F00303 		bic	r3, r3, #3
  87 0008 0B63     		str	r3, [r1, #48]
  88 000a 8B6E     		ldr	r3, [r1, #104]
  89 000c 1B07     		lsls	r3, r3, #28
  90 000e 58BF     		it	pl
  91 0010 4FF40063 		movpl	r3, #2048
  92 0014 02D5     		bpl	.L15
  93 0016 04E0     		b	.L16
  94              	.L18:
  95 0018 013B     		subs	r3, r3, #1
  96 001a 16D0     		beq	.L20
  97              	.L15:
  98 001c 8A6E     		ldr	r2, [r1, #104]
  99 001e 1207     		lsls	r2, r2, #28
 100 0020 FAD5     		bpl	.L18
 101              	.L16:
 102 0022 0B49     		ldr	r1, .L30
 103 0024 0B6B     		ldr	r3, [r1, #48]
 104 0026 23F07003 		bic	r3, r3, #112
 105 002a 1843     		orrs	r0, r0, r3
 106 002c 0863     		str	r0, [r1, #48]
 107 002e 8B6E     		ldr	r3, [r1, #104]
 108 0030 1807     		lsls	r0, r3, #28
 109 0032 58BF     		it	pl
 110 0034 4FF40063 		movpl	r3, #2048
 111 0038 02D5     		bpl	.L19
 112 003a 04E0     		b	.L29
 113              	.L21:
 114 003c 013B     		subs	r3, r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 3


 115 003e 04D0     		beq	.L20
 116              	.L19:
 117 0040 8A6E     		ldr	r2, [r1, #104]
 118 0042 1207     		lsls	r2, r2, #28
 119 0044 FAD5     		bpl	.L21
 120              	.L29:
 121 0046 0020     		movs	r0, #0
 122 0048 7047     		bx	lr
 123              	.L20:
 124 004a 0120     		movs	r0, #1
 125 004c 7047     		bx	lr
 126              	.L31:
 127 004e 00BF     		.align	2
 128              	.L30:
 129 0050 00040E40 		.word	1074660352
 130              		.size	pmc_switch_mck_to_sclk, .-pmc_switch_mck_to_sclk
 131              		.section	.text.pmc_switch_mck_to_mainck,"ax",%progbits
 132              		.align	1
 133              		.p2align 2,,3
 134              		.global	pmc_switch_mck_to_mainck
 135              		.syntax unified
 136              		.thumb
 137              		.thumb_func
 138              		.fpu fpv4-sp-d16
 139              		.type	pmc_switch_mck_to_mainck, %function
 140              	pmc_switch_mck_to_mainck:
 141              		@ args = 0, pretend = 0, frame = 0
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143              		@ link register save eliminated.
 144 0000 1449     		ldr	r1, .L48
 145 0002 0B6B     		ldr	r3, [r1, #48]
 146 0004 23F00303 		bic	r3, r3, #3
 147 0008 43F00103 		orr	r3, r3, #1
 148 000c 0B63     		str	r3, [r1, #48]
 149 000e 8B6E     		ldr	r3, [r1, #104]
 150 0010 1B07     		lsls	r3, r3, #28
 151 0012 58BF     		it	pl
 152 0014 4FF40063 		movpl	r3, #2048
 153 0018 02D5     		bpl	.L33
 154 001a 04E0     		b	.L34
 155              	.L36:
 156 001c 013B     		subs	r3, r3, #1
 157 001e 16D0     		beq	.L38
 158              	.L33:
 159 0020 8A6E     		ldr	r2, [r1, #104]
 160 0022 1207     		lsls	r2, r2, #28
 161 0024 FAD5     		bpl	.L36
 162              	.L34:
 163 0026 0B49     		ldr	r1, .L48
 164 0028 0B6B     		ldr	r3, [r1, #48]
 165 002a 23F07003 		bic	r3, r3, #112
 166 002e 1843     		orrs	r0, r0, r3
 167 0030 0863     		str	r0, [r1, #48]
 168 0032 8B6E     		ldr	r3, [r1, #104]
 169 0034 1807     		lsls	r0, r3, #28
 170 0036 58BF     		it	pl
 171 0038 4FF40063 		movpl	r3, #2048
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 4


 172 003c 02D5     		bpl	.L37
 173 003e 04E0     		b	.L47
 174              	.L39:
 175 0040 013B     		subs	r3, r3, #1
 176 0042 04D0     		beq	.L38
 177              	.L37:
 178 0044 8A6E     		ldr	r2, [r1, #104]
 179 0046 1207     		lsls	r2, r2, #28
 180 0048 FAD5     		bpl	.L39
 181              	.L47:
 182 004a 0020     		movs	r0, #0
 183 004c 7047     		bx	lr
 184              	.L38:
 185 004e 0120     		movs	r0, #1
 186 0050 7047     		bx	lr
 187              	.L49:
 188 0052 00BF     		.align	2
 189              	.L48:
 190 0054 00040E40 		.word	1074660352
 191              		.size	pmc_switch_mck_to_mainck, .-pmc_switch_mck_to_mainck
 192              		.section	.text.pmc_switch_mck_to_pllack,"ax",%progbits
 193              		.align	1
 194              		.p2align 2,,3
 195              		.global	pmc_switch_mck_to_pllack
 196              		.syntax unified
 197              		.thumb
 198              		.thumb_func
 199              		.fpu fpv4-sp-d16
 200              		.type	pmc_switch_mck_to_pllack, %function
 201              	pmc_switch_mck_to_pllack:
 202              		@ args = 0, pretend = 0, frame = 0
 203              		@ frame_needed = 0, uses_anonymous_args = 0
 204              		@ link register save eliminated.
 205 0000 1449     		ldr	r1, .L66
 206 0002 0B6B     		ldr	r3, [r1, #48]
 207 0004 23F07003 		bic	r3, r3, #112
 208 0008 1843     		orrs	r0, r0, r3
 209 000a 0863     		str	r0, [r1, #48]
 210 000c 8B6E     		ldr	r3, [r1, #104]
 211 000e 1807     		lsls	r0, r3, #28
 212 0010 58BF     		it	pl
 213 0012 4FF40063 		movpl	r3, #2048
 214 0016 02D5     		bpl	.L51
 215 0018 04E0     		b	.L52
 216              	.L54:
 217 001a 013B     		subs	r3, r3, #1
 218 001c 17D0     		beq	.L56
 219              	.L51:
 220 001e 8A6E     		ldr	r2, [r1, #104]
 221 0020 1207     		lsls	r2, r2, #28
 222 0022 FAD5     		bpl	.L54
 223              	.L52:
 224 0024 0B49     		ldr	r1, .L66
 225 0026 0B6B     		ldr	r3, [r1, #48]
 226 0028 23F00303 		bic	r3, r3, #3
 227 002c 43F00203 		orr	r3, r3, #2
 228 0030 0B63     		str	r3, [r1, #48]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 5


 229 0032 8B6E     		ldr	r3, [r1, #104]
 230 0034 1807     		lsls	r0, r3, #28
 231 0036 58BF     		it	pl
 232 0038 4FF40063 		movpl	r3, #2048
 233 003c 02D5     		bpl	.L55
 234 003e 04E0     		b	.L65
 235              	.L57:
 236 0040 013B     		subs	r3, r3, #1
 237 0042 04D0     		beq	.L56
 238              	.L55:
 239 0044 8A6E     		ldr	r2, [r1, #104]
 240 0046 1207     		lsls	r2, r2, #28
 241 0048 FAD5     		bpl	.L57
 242              	.L65:
 243 004a 0020     		movs	r0, #0
 244 004c 7047     		bx	lr
 245              	.L56:
 246 004e 0120     		movs	r0, #1
 247 0050 7047     		bx	lr
 248              	.L67:
 249 0052 00BF     		.align	2
 250              	.L66:
 251 0054 00040E40 		.word	1074660352
 252              		.size	pmc_switch_mck_to_pllack, .-pmc_switch_mck_to_pllack
 253              		.section	.text.pmc_switch_sclk_to_32kxtal,"ax",%progbits
 254              		.align	1
 255              		.p2align 2,,3
 256              		.global	pmc_switch_sclk_to_32kxtal
 257              		.syntax unified
 258              		.thumb
 259              		.thumb_func
 260              		.fpu fpv4-sp-d16
 261              		.type	pmc_switch_sclk_to_32kxtal, %function
 262              	pmc_switch_sclk_to_32kxtal:
 263              		@ args = 0, pretend = 0, frame = 0
 264              		@ frame_needed = 0, uses_anonymous_args = 0
 265              		@ link register save eliminated.
 266 0000 0128     		cmp	r0, #1
 267 0002 06D1     		bne	.L69
 268 0004 054A     		ldr	r2, .L70
 269 0006 9368     		ldr	r3, [r2, #8]
 270 0008 43F02543 		orr	r3, r3, #-1526726656
 271 000c 43F48013 		orr	r3, r3, #1048576
 272 0010 9360     		str	r3, [r2, #8]
 273              	.L69:
 274 0012 024B     		ldr	r3, .L70
 275 0014 024A     		ldr	r2, .L70+4
 276 0016 1A60     		str	r2, [r3]
 277 0018 7047     		bx	lr
 278              	.L71:
 279 001a 00BF     		.align	2
 280              	.L70:
 281 001c 10180E40 		.word	1074665488
 282 0020 080000A5 		.word	-1526726648
 283              		.size	pmc_switch_sclk_to_32kxtal, .-pmc_switch_sclk_to_32kxtal
 284              		.section	.text.pmc_osc_is_ready_32kxtal,"ax",%progbits
 285              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 6


 286              		.p2align 2,,3
 287              		.global	pmc_osc_is_ready_32kxtal
 288              		.syntax unified
 289              		.thumb
 290              		.thumb_func
 291              		.fpu fpv4-sp-d16
 292              		.type	pmc_osc_is_ready_32kxtal, %function
 293              	pmc_osc_is_ready_32kxtal:
 294              		@ args = 0, pretend = 0, frame = 0
 295              		@ frame_needed = 0, uses_anonymous_args = 0
 296              		@ link register save eliminated.
 297 0000 054B     		ldr	r3, .L75
 298 0002 5869     		ldr	r0, [r3, #20]
 299 0004 10F08000 		ands	r0, r0, #128
 300 0008 05D0     		beq	.L72
 301 000a A3F5A053 		sub	r3, r3, #5120
 302 000e 103B     		subs	r3, r3, #16
 303 0010 986E     		ldr	r0, [r3, #104]
 304 0012 C0F3C010 		ubfx	r0, r0, #7, #1
 305              	.L72:
 306 0016 7047     		bx	lr
 307              	.L76:
 308              		.align	2
 309              	.L75:
 310 0018 10180E40 		.word	1074665488
 311              		.size	pmc_osc_is_ready_32kxtal, .-pmc_osc_is_ready_32kxtal
 312              		.section	.text.pmc_switch_mainck_to_fastrc,"ax",%progbits
 313              		.align	1
 314              		.p2align 2,,3
 315              		.global	pmc_switch_mainck_to_fastrc
 316              		.syntax unified
 317              		.thumb
 318              		.thumb_func
 319              		.fpu fpv4-sp-d16
 320              		.type	pmc_switch_mainck_to_fastrc, %function
 321              	pmc_switch_mainck_to_fastrc:
 322              		@ args = 0, pretend = 0, frame = 0
 323              		@ frame_needed = 0, uses_anonymous_args = 0
 324              		@ link register save eliminated.
 325 0000 0F4B     		ldr	r3, .L84
 326 0002 196A     		ldr	r1, [r3, #32]
 327 0004 41F45C11 		orr	r1, r1, #3604480
 328 0008 41F00801 		orr	r1, r1, #8
 329 000c 1962     		str	r1, [r3, #32]
 330              	.L78:
 331 000e 9A6E     		ldr	r2, [r3, #104]
 332 0010 9203     		lsls	r2, r2, #14
 333 0012 FCD5     		bpl	.L78
 334 0014 1A6A     		ldr	r2, [r3, #32]
 335 0016 0A49     		ldr	r1, .L84
 336 0018 22F45C12 		bic	r2, r2, #3604480
 337 001c 22F07002 		bic	r2, r2, #112
 338 0020 42F45C12 		orr	r2, r2, #3604480
 339 0024 1043     		orrs	r0, r0, r2
 340 0026 1862     		str	r0, [r3, #32]
 341              	.L79:
 342 0028 8B6E     		ldr	r3, [r1, #104]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 7


 343 002a 9B03     		lsls	r3, r3, #14
 344 002c FCD5     		bpl	.L79
 345 002e 0B6A     		ldr	r3, [r1, #32]
 346 0030 23F09B73 		bic	r3, r3, #20316160
 347 0034 23F48033 		bic	r3, r3, #65536
 348 0038 43F45C13 		orr	r3, r3, #3604480
 349 003c 0B62     		str	r3, [r1, #32]
 350 003e 7047     		bx	lr
 351              	.L85:
 352              		.align	2
 353              	.L84:
 354 0040 00040E40 		.word	1074660352
 355              		.size	pmc_switch_mainck_to_fastrc, .-pmc_switch_mainck_to_fastrc
 356              		.section	.text.pmc_osc_enable_fastrc,"ax",%progbits
 357              		.align	1
 358              		.p2align 2,,3
 359              		.global	pmc_osc_enable_fastrc
 360              		.syntax unified
 361              		.thumb
 362              		.thumb_func
 363              		.fpu fpv4-sp-d16
 364              		.type	pmc_osc_enable_fastrc, %function
 365              	pmc_osc_enable_fastrc:
 366              		@ args = 0, pretend = 0, frame = 0
 367              		@ frame_needed = 0, uses_anonymous_args = 0
 368              		@ link register save eliminated.
 369 0000 0B4B     		ldr	r3, .L93
 370 0002 196A     		ldr	r1, [r3, #32]
 371 0004 41F45C11 		orr	r1, r1, #3604480
 372 0008 41F00801 		orr	r1, r1, #8
 373 000c 1962     		str	r1, [r3, #32]
 374              	.L87:
 375 000e 9A6E     		ldr	r2, [r3, #104]
 376 0010 9203     		lsls	r2, r2, #14
 377 0012 FCD5     		bpl	.L87
 378 0014 1A6A     		ldr	r2, [r3, #32]
 379 0016 0649     		ldr	r1, .L93
 380 0018 22F45C12 		bic	r2, r2, #3604480
 381 001c 22F07002 		bic	r2, r2, #112
 382 0020 42F45C12 		orr	r2, r2, #3604480
 383 0024 1043     		orrs	r0, r0, r2
 384 0026 1862     		str	r0, [r3, #32]
 385              	.L88:
 386 0028 8B6E     		ldr	r3, [r1, #104]
 387 002a 9B03     		lsls	r3, r3, #14
 388 002c FCD5     		bpl	.L88
 389 002e 7047     		bx	lr
 390              	.L94:
 391              		.align	2
 392              	.L93:
 393 0030 00040E40 		.word	1074660352
 394              		.size	pmc_osc_enable_fastrc, .-pmc_osc_enable_fastrc
 395              		.section	.text.pmc_osc_disable_fastrc,"ax",%progbits
 396              		.align	1
 397              		.p2align 2,,3
 398              		.global	pmc_osc_disable_fastrc
 399              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 8


 400              		.thumb
 401              		.thumb_func
 402              		.fpu fpv4-sp-d16
 403              		.type	pmc_osc_disable_fastrc, %function
 404              	pmc_osc_disable_fastrc:
 405              		@ args = 0, pretend = 0, frame = 0
 406              		@ frame_needed = 0, uses_anonymous_args = 0
 407              		@ link register save eliminated.
 408 0000 044A     		ldr	r2, .L96
 409 0002 136A     		ldr	r3, [r2, #32]
 410 0004 23F45C13 		bic	r3, r3, #3604480
 411 0008 23F07803 		bic	r3, r3, #120
 412 000c 43F45C13 		orr	r3, r3, #3604480
 413 0010 1362     		str	r3, [r2, #32]
 414 0012 7047     		bx	lr
 415              	.L97:
 416              		.align	2
 417              	.L96:
 418 0014 00040E40 		.word	1074660352
 419              		.size	pmc_osc_disable_fastrc, .-pmc_osc_disable_fastrc
 420              		.section	.text.pmc_osc_is_ready_fastrc,"ax",%progbits
 421              		.align	1
 422              		.p2align 2,,3
 423              		.global	pmc_osc_is_ready_fastrc
 424              		.syntax unified
 425              		.thumb
 426              		.thumb_func
 427              		.fpu fpv4-sp-d16
 428              		.type	pmc_osc_is_ready_fastrc, %function
 429              	pmc_osc_is_ready_fastrc:
 430              		@ args = 0, pretend = 0, frame = 0
 431              		@ frame_needed = 0, uses_anonymous_args = 0
 432              		@ link register save eliminated.
 433 0000 024B     		ldr	r3, .L99
 434 0002 986E     		ldr	r0, [r3, #104]
 435 0004 00F40030 		and	r0, r0, #131072
 436 0008 7047     		bx	lr
 437              	.L100:
 438 000a 00BF     		.align	2
 439              	.L99:
 440 000c 00040E40 		.word	1074660352
 441              		.size	pmc_osc_is_ready_fastrc, .-pmc_osc_is_ready_fastrc
 442              		.section	.text.pmc_osc_enable_main_xtal,"ax",%progbits
 443              		.align	1
 444              		.p2align 2,,3
 445              		.global	pmc_osc_enable_main_xtal
 446              		.syntax unified
 447              		.thumb
 448              		.thumb_func
 449              		.fpu fpv4-sp-d16
 450              		.type	pmc_osc_enable_main_xtal, %function
 451              	pmc_osc_enable_main_xtal:
 452              		@ args = 0, pretend = 0, frame = 0
 453              		@ frame_needed = 0, uses_anonymous_args = 0
 454              		@ link register save eliminated.
 455 0000 074A     		ldr	r2, .L105
 456 0002 136A     		ldr	r3, [r2, #32]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 9


 457 0004 23F00303 		bic	r3, r3, #3
 458 0008 0002     		lsls	r0, r0, #8
 459 000a 43F45C13 		orr	r3, r3, #3604480
 460 000e 80B2     		uxth	r0, r0
 461 0010 43F00103 		orr	r3, r3, #1
 462 0014 0343     		orrs	r3, r3, r0
 463 0016 1362     		str	r3, [r2, #32]
 464              	.L102:
 465 0018 936E     		ldr	r3, [r2, #104]
 466 001a DB07     		lsls	r3, r3, #31
 467 001c FCD5     		bpl	.L102
 468 001e 7047     		bx	lr
 469              	.L106:
 470              		.align	2
 471              	.L105:
 472 0020 00040E40 		.word	1074660352
 473              		.size	pmc_osc_enable_main_xtal, .-pmc_osc_enable_main_xtal
 474              		.section	.text.pmc_osc_bypass_main_xtal,"ax",%progbits
 475              		.align	1
 476              		.p2align 2,,3
 477              		.global	pmc_osc_bypass_main_xtal
 478              		.syntax unified
 479              		.thumb
 480              		.thumb_func
 481              		.fpu fpv4-sp-d16
 482              		.type	pmc_osc_bypass_main_xtal, %function
 483              	pmc_osc_bypass_main_xtal:
 484              		@ args = 0, pretend = 0, frame = 0
 485              		@ frame_needed = 0, uses_anonymous_args = 0
 486              		@ link register save eliminated.
 487 0000 044A     		ldr	r2, .L108
 488 0002 136A     		ldr	r3, [r2, #32]
 489 0004 23F00303 		bic	r3, r3, #3
 490 0008 43F45C13 		orr	r3, r3, #3604480
 491 000c 43F00203 		orr	r3, r3, #2
 492 0010 1362     		str	r3, [r2, #32]
 493 0012 7047     		bx	lr
 494              	.L109:
 495              		.align	2
 496              	.L108:
 497 0014 00040E40 		.word	1074660352
 498              		.size	pmc_osc_bypass_main_xtal, .-pmc_osc_bypass_main_xtal
 499              		.section	.text.pmc_osc_disable_main_xtal,"ax",%progbits
 500              		.align	1
 501              		.p2align 2,,3
 502              		.global	pmc_osc_disable_main_xtal
 503              		.syntax unified
 504              		.thumb
 505              		.thumb_func
 506              		.fpu fpv4-sp-d16
 507              		.type	pmc_osc_disable_main_xtal, %function
 508              	pmc_osc_disable_main_xtal:
 509              		@ args = 0, pretend = 0, frame = 0
 510              		@ frame_needed = 0, uses_anonymous_args = 0
 511              		@ link register save eliminated.
 512 0000 034A     		ldr	r2, .L111
 513 0002 136A     		ldr	r3, [r2, #32]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 10


 514 0004 23F00303 		bic	r3, r3, #3
 515 0008 43F45C13 		orr	r3, r3, #3604480
 516 000c 1362     		str	r3, [r2, #32]
 517 000e 7047     		bx	lr
 518              	.L112:
 519              		.align	2
 520              	.L111:
 521 0010 00040E40 		.word	1074660352
 522              		.size	pmc_osc_disable_main_xtal, .-pmc_osc_disable_main_xtal
 523              		.section	.text.pmc_osc_is_bypassed_main_xtal,"ax",%progbits
 524              		.align	1
 525              		.p2align 2,,3
 526              		.global	pmc_osc_is_bypassed_main_xtal
 527              		.syntax unified
 528              		.thumb
 529              		.thumb_func
 530              		.fpu fpv4-sp-d16
 531              		.type	pmc_osc_is_bypassed_main_xtal, %function
 532              	pmc_osc_is_bypassed_main_xtal:
 533              		@ args = 0, pretend = 0, frame = 0
 534              		@ frame_needed = 0, uses_anonymous_args = 0
 535              		@ link register save eliminated.
 536 0000 024B     		ldr	r3, .L114
 537 0002 186A     		ldr	r0, [r3, #32]
 538 0004 00F00200 		and	r0, r0, #2
 539 0008 7047     		bx	lr
 540              	.L115:
 541 000a 00BF     		.align	2
 542              	.L114:
 543 000c 00040E40 		.word	1074660352
 544              		.size	pmc_osc_is_bypassed_main_xtal, .-pmc_osc_is_bypassed_main_xtal
 545              		.section	.text.pmc_osc_is_ready_main_xtal,"ax",%progbits
 546              		.align	1
 547              		.p2align 2,,3
 548              		.global	pmc_osc_is_ready_main_xtal
 549              		.syntax unified
 550              		.thumb
 551              		.thumb_func
 552              		.fpu fpv4-sp-d16
 553              		.type	pmc_osc_is_ready_main_xtal, %function
 554              	pmc_osc_is_ready_main_xtal:
 555              		@ args = 0, pretend = 0, frame = 0
 556              		@ frame_needed = 0, uses_anonymous_args = 0
 557              		@ link register save eliminated.
 558 0000 024B     		ldr	r3, .L117
 559 0002 986E     		ldr	r0, [r3, #104]
 560 0004 00F00100 		and	r0, r0, #1
 561 0008 7047     		bx	lr
 562              	.L118:
 563 000a 00BF     		.align	2
 564              	.L117:
 565 000c 00040E40 		.word	1074660352
 566              		.size	pmc_osc_is_ready_main_xtal, .-pmc_osc_is_ready_main_xtal
 567              		.section	.text.pmc_switch_mainck_to_xtal,"ax",%progbits
 568              		.align	1
 569              		.p2align 2,,3
 570              		.global	pmc_switch_mainck_to_xtal
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 11


 571              		.syntax unified
 572              		.thumb
 573              		.thumb_func
 574              		.fpu fpv4-sp-d16
 575              		.type	pmc_switch_mainck_to_xtal, %function
 576              	pmc_switch_mainck_to_xtal:
 577              		@ args = 0, pretend = 0, frame = 0
 578              		@ frame_needed = 0, uses_anonymous_args = 0
 579              		@ link register save eliminated.
 580 0000 B8B9     		cbnz	r0, .L125
 581 0002 104B     		ldr	r3, .L126
 582 0004 1A6A     		ldr	r2, [r3, #32]
 583 0006 22F45C12 		bic	r2, r2, #3604480
 584 000a 22F00302 		bic	r2, r2, #3
 585 000e 0902     		lsls	r1, r1, #8
 586 0010 42F45C12 		orr	r2, r2, #3604480
 587 0014 89B2     		uxth	r1, r1
 588 0016 42F00102 		orr	r2, r2, #1
 589 001a 0A43     		orrs	r2, r2, r1
 590 001c 1A62     		str	r2, [r3, #32]
 591              	.L122:
 592 001e 9A6E     		ldr	r2, [r3, #104]
 593 0020 D207     		lsls	r2, r2, #31
 594 0022 FCD5     		bpl	.L122
 595 0024 1A6A     		ldr	r2, [r3, #32]
 596 0026 42F09B72 		orr	r2, r2, #20316160
 597 002a 42F48032 		orr	r2, r2, #65536
 598 002e 1A62     		str	r2, [r3, #32]
 599 0030 7047     		bx	lr
 600              	.L125:
 601 0032 0449     		ldr	r1, .L126
 602 0034 044A     		ldr	r2, .L126+4
 603 0036 086A     		ldr	r0, [r1, #32]
 604 0038 044B     		ldr	r3, .L126+8
 605 003a 0240     		ands	r2, r2, r0
 606 003c 1343     		orrs	r3, r3, r2
 607 003e 0B62     		str	r3, [r1, #32]
 608 0040 7047     		bx	lr
 609              	.L127:
 610 0042 00BF     		.align	2
 611              	.L126:
 612 0044 00040E40 		.word	1074660352
 613 0048 FCFFC8FE 		.word	-20381700
 614 004c 02003701 		.word	20381698
 615              		.size	pmc_switch_mainck_to_xtal, .-pmc_switch_mainck_to_xtal
 616              		.section	.text.pmc_osc_disable_xtal,"ax",%progbits
 617              		.align	1
 618              		.p2align 2,,3
 619              		.global	pmc_osc_disable_xtal
 620              		.syntax unified
 621              		.thumb
 622              		.thumb_func
 623              		.fpu fpv4-sp-d16
 624              		.type	pmc_osc_disable_xtal, %function
 625              	pmc_osc_disable_xtal:
 626              		@ args = 0, pretend = 0, frame = 0
 627              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 12


 628              		@ link register save eliminated.
 629 0000 084A     		ldr	r2, .L132
 630 0002 136A     		ldr	r3, [r2, #32]
 631 0004 23F45C13 		bic	r3, r3, #3604480
 632 0008 28B9     		cbnz	r0, .L131
 633 000a 23F00103 		bic	r3, r3, #1
 634 000e 43F45C13 		orr	r3, r3, #3604480
 635 0012 1362     		str	r3, [r2, #32]
 636 0014 7047     		bx	lr
 637              	.L131:
 638 0016 23F00203 		bic	r3, r3, #2
 639 001a 43F45C13 		orr	r3, r3, #3604480
 640 001e 1362     		str	r3, [r2, #32]
 641 0020 7047     		bx	lr
 642              	.L133:
 643 0022 00BF     		.align	2
 644              	.L132:
 645 0024 00040E40 		.word	1074660352
 646              		.size	pmc_osc_disable_xtal, .-pmc_osc_disable_xtal
 647              		.section	.text.pmc_osc_is_ready_mainck,"ax",%progbits
 648              		.align	1
 649              		.p2align 2,,3
 650              		.global	pmc_osc_is_ready_mainck
 651              		.syntax unified
 652              		.thumb
 653              		.thumb_func
 654              		.fpu fpv4-sp-d16
 655              		.type	pmc_osc_is_ready_mainck, %function
 656              	pmc_osc_is_ready_mainck:
 657              		@ args = 0, pretend = 0, frame = 0
 658              		@ frame_needed = 0, uses_anonymous_args = 0
 659              		@ link register save eliminated.
 660 0000 024B     		ldr	r3, .L135
 661 0002 986E     		ldr	r0, [r3, #104]
 662 0004 00F48030 		and	r0, r0, #65536
 663 0008 7047     		bx	lr
 664              	.L136:
 665 000a 00BF     		.align	2
 666              	.L135:
 667 000c 00040E40 		.word	1074660352
 668              		.size	pmc_osc_is_ready_mainck, .-pmc_osc_is_ready_mainck
 669              		.section	.text.pmc_mainck_osc_select,"ax",%progbits
 670              		.align	1
 671              		.p2align 2,,3
 672              		.global	pmc_mainck_osc_select
 673              		.syntax unified
 674              		.thumb
 675              		.thumb_func
 676              		.fpu fpv4-sp-d16
 677              		.type	pmc_mainck_osc_select, %function
 678              	pmc_mainck_osc_select:
 679              		@ args = 0, pretend = 0, frame = 0
 680              		@ frame_needed = 0, uses_anonymous_args = 0
 681              		@ link register save eliminated.
 682 0000 084B     		ldr	r3, .L141
 683 0002 1B6A     		ldr	r3, [r3, #32]
 684 0004 30B9     		cbnz	r0, .L140
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 13


 685 0006 23F08073 		bic	r3, r3, #16777216
 686 000a 064A     		ldr	r2, .L141
 687 000c 43F45C13 		orr	r3, r3, #3604480
 688 0010 1362     		str	r3, [r2, #32]
 689 0012 7047     		bx	lr
 690              	.L140:
 691 0014 43F08073 		orr	r3, r3, #16777216
 692 0018 024A     		ldr	r2, .L141
 693 001a 43F45C13 		orr	r3, r3, #3604480
 694 001e 1362     		str	r3, [r2, #32]
 695 0020 7047     		bx	lr
 696              	.L142:
 697 0022 00BF     		.align	2
 698              	.L141:
 699 0024 00040E40 		.word	1074660352
 700              		.size	pmc_mainck_osc_select, .-pmc_mainck_osc_select
 701              		.section	.text.pmc_enable_pllack,"ax",%progbits
 702              		.align	1
 703              		.p2align 2,,3
 704              		.global	pmc_enable_pllack
 705              		.syntax unified
 706              		.thumb
 707              		.thumb_func
 708              		.fpu fpv4-sp-d16
 709              		.type	pmc_enable_pllack, %function
 710              	pmc_enable_pllack:
 711              		@ args = 0, pretend = 0, frame = 0
 712              		@ frame_needed = 0, uses_anonymous_args = 0
 713              		@ link register save eliminated.
 714 0000 0B4B     		ldr	r3, .L148
 715 0002 03EA0043 		and	r3, r3, r0, lsl #16
 716 0006 D2B2     		uxtb	r2, r2
 717 0008 0902     		lsls	r1, r1, #8
 718 000a 43F00053 		orr	r3, r3, #536870912
 719 000e 10B4     		push	{r4}
 720 0010 1343     		orrs	r3, r3, r2
 721 0012 084C     		ldr	r4, .L148+4
 722 0014 01F47C51 		and	r1, r1, #16128
 723 0018 4FF00052 		mov	r2, #536870912
 724 001c 0B43     		orrs	r3, r3, r1
 725 001e A262     		str	r2, [r4, #40]
 726 0020 2246     		mov	r2, r4
 727 0022 A362     		str	r3, [r4, #40]
 728              	.L144:
 729 0024 936E     		ldr	r3, [r2, #104]
 730 0026 9B07     		lsls	r3, r3, #30
 731 0028 FCD5     		bpl	.L144
 732 002a 5DF8044B 		ldr	r4, [sp], #4
 733 002e 7047     		bx	lr
 734              	.L149:
 735              		.align	2
 736              	.L148:
 737 0030 0000FF07 		.word	134152192
 738 0034 00040E40 		.word	1074660352
 739              		.size	pmc_enable_pllack, .-pmc_enable_pllack
 740              		.section	.text.pmc_disable_pllack,"ax",%progbits
 741              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 14


 742              		.p2align 2,,3
 743              		.global	pmc_disable_pllack
 744              		.syntax unified
 745              		.thumb
 746              		.thumb_func
 747              		.fpu fpv4-sp-d16
 748              		.type	pmc_disable_pllack, %function
 749              	pmc_disable_pllack:
 750              		@ args = 0, pretend = 0, frame = 0
 751              		@ frame_needed = 0, uses_anonymous_args = 0
 752              		@ link register save eliminated.
 753 0000 024B     		ldr	r3, .L151
 754 0002 4FF00052 		mov	r2, #536870912
 755 0006 9A62     		str	r2, [r3, #40]
 756 0008 7047     		bx	lr
 757              	.L152:
 758 000a 00BF     		.align	2
 759              	.L151:
 760 000c 00040E40 		.word	1074660352
 761              		.size	pmc_disable_pllack, .-pmc_disable_pllack
 762              		.section	.text.pmc_is_locked_pllack,"ax",%progbits
 763              		.align	1
 764              		.p2align 2,,3
 765              		.global	pmc_is_locked_pllack
 766              		.syntax unified
 767              		.thumb
 768              		.thumb_func
 769              		.fpu fpv4-sp-d16
 770              		.type	pmc_is_locked_pllack, %function
 771              	pmc_is_locked_pllack:
 772              		@ args = 0, pretend = 0, frame = 0
 773              		@ frame_needed = 0, uses_anonymous_args = 0
 774              		@ link register save eliminated.
 775 0000 024B     		ldr	r3, .L154
 776 0002 986E     		ldr	r0, [r3, #104]
 777 0004 00F00200 		and	r0, r0, #2
 778 0008 7047     		bx	lr
 779              	.L155:
 780 000a 00BF     		.align	2
 781              	.L154:
 782 000c 00040E40 		.word	1074660352
 783              		.size	pmc_is_locked_pllack, .-pmc_is_locked_pllack
 784              		.section	.text.pmc_enable_periph_clk,"ax",%progbits
 785              		.align	1
 786              		.p2align 2,,3
 787              		.global	pmc_enable_periph_clk
 788              		.syntax unified
 789              		.thumb
 790              		.thumb_func
 791              		.fpu fpv4-sp-d16
 792              		.type	pmc_enable_periph_clk, %function
 793              	pmc_enable_periph_clk:
 794              		@ args = 0, pretend = 0, frame = 0
 795              		@ frame_needed = 0, uses_anonymous_args = 0
 796              		@ link register save eliminated.
 797 0000 2F28     		cmp	r0, #47
 798 0002 19D8     		bhi	.L159
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 15


 799 0004 1F28     		cmp	r0, #31
 800 0006 0E4A     		ldr	r2, .L162
 801 0008 09D8     		bhi	.L158
 802 000a 0123     		movs	r3, #1
 803 000c 9169     		ldr	r1, [r2, #24]
 804 000e 03FA00F0 		lsl	r0, r3, r0
 805 0012 30EA0103 		bics	r3, r0, r1
 806 0016 11D0     		beq	.L161
 807 0018 1061     		str	r0, [r2, #16]
 808 001a 0020     		movs	r0, #0
 809 001c 7047     		bx	lr
 810              	.L158:
 811 001e 0123     		movs	r3, #1
 812 0020 2038     		subs	r0, r0, #32
 813 0022 D2F80811 		ldr	r1, [r2, #264]
 814 0026 03FA00F0 		lsl	r0, r3, r0
 815 002a 30EA0103 		bics	r3, r0, r1
 816 002e 05D0     		beq	.L161
 817 0030 C2F80001 		str	r0, [r2, #256]
 818 0034 0020     		movs	r0, #0
 819 0036 7047     		bx	lr
 820              	.L159:
 821 0038 0120     		movs	r0, #1
 822 003a 7047     		bx	lr
 823              	.L161:
 824 003c 0020     		movs	r0, #0
 825 003e 7047     		bx	lr
 826              	.L163:
 827              		.align	2
 828              	.L162:
 829 0040 00040E40 		.word	1074660352
 830              		.size	pmc_enable_periph_clk, .-pmc_enable_periph_clk
 831              		.section	.text.pmc_disable_periph_clk,"ax",%progbits
 832              		.align	1
 833              		.p2align 2,,3
 834              		.global	pmc_disable_periph_clk
 835              		.syntax unified
 836              		.thumb
 837              		.thumb_func
 838              		.fpu fpv4-sp-d16
 839              		.type	pmc_disable_periph_clk, %function
 840              	pmc_disable_periph_clk:
 841              		@ args = 0, pretend = 0, frame = 0
 842              		@ frame_needed = 0, uses_anonymous_args = 0
 843              		@ link register save eliminated.
 844 0000 2F28     		cmp	r0, #47
 845 0002 18D8     		bhi	.L167
 846 0004 1F28     		cmp	r0, #31
 847 0006 0E4A     		ldr	r2, .L171
 848 0008 08D8     		bhi	.L166
 849 000a 0123     		movs	r3, #1
 850 000c 9169     		ldr	r1, [r2, #24]
 851 000e 03FA00F0 		lsl	r0, r3, r0
 852 0012 30EA0103 		bics	r3, r0, r1
 853 0016 10D0     		beq	.L170
 854              	.L169:
 855 0018 0020     		movs	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 16


 856 001a 7047     		bx	lr
 857              	.L166:
 858 001c 0123     		movs	r3, #1
 859 001e 2038     		subs	r0, r0, #32
 860 0020 D2F80811 		ldr	r1, [r2, #264]
 861 0024 03FA00F0 		lsl	r0, r3, r0
 862 0028 30EA0103 		bics	r3, r0, r1
 863 002c F4D1     		bne	.L169
 864 002e C2F80401 		str	r0, [r2, #260]
 865 0032 0020     		movs	r0, #0
 866 0034 7047     		bx	lr
 867              	.L167:
 868 0036 0120     		movs	r0, #1
 869 0038 7047     		bx	lr
 870              	.L170:
 871 003a 5061     		str	r0, [r2, #20]
 872 003c 0020     		movs	r0, #0
 873 003e 7047     		bx	lr
 874              	.L172:
 875              		.align	2
 876              	.L171:
 877 0040 00040E40 		.word	1074660352
 878              		.size	pmc_disable_periph_clk, .-pmc_disable_periph_clk
 879              		.section	.text.pmc_enable_all_periph_clk,"ax",%progbits
 880              		.align	1
 881              		.p2align 2,,3
 882              		.global	pmc_enable_all_periph_clk
 883              		.syntax unified
 884              		.thumb
 885              		.thumb_func
 886              		.fpu fpv4-sp-d16
 887              		.type	pmc_enable_all_periph_clk, %function
 888              	pmc_enable_all_periph_clk:
 889              		@ args = 0, pretend = 0, frame = 0
 890              		@ frame_needed = 0, uses_anonymous_args = 0
 891              		@ link register save eliminated.
 892 0000 094A     		ldr	r2, .L178
 893 0002 6FF00303 		mvn	r3, #3
 894 0006 1361     		str	r3, [r2, #16]
 895              	.L174:
 896 0008 9369     		ldr	r3, [r2, #24]
 897 000a 23F00303 		bic	r3, r3, #3
 898 000e 0433     		adds	r3, r3, #4
 899 0010 FAD1     		bne	.L174
 900 0012 4FF0FF33 		mov	r3, #-1
 901 0016 0449     		ldr	r1, .L178
 902 0018 C2F80031 		str	r3, [r2, #256]
 903              	.L175:
 904 001c D1F80831 		ldr	r3, [r1, #264]
 905 0020 0133     		adds	r3, r3, #1
 906 0022 FBD1     		bne	.L175
 907 0024 7047     		bx	lr
 908              	.L179:
 909 0026 00BF     		.align	2
 910              	.L178:
 911 0028 00040E40 		.word	1074660352
 912              		.size	pmc_enable_all_periph_clk, .-pmc_enable_all_periph_clk
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 17


 913              		.section	.text.pmc_disable_all_periph_clk,"ax",%progbits
 914              		.align	1
 915              		.p2align 2,,3
 916              		.global	pmc_disable_all_periph_clk
 917              		.syntax unified
 918              		.thumb
 919              		.thumb_func
 920              		.fpu fpv4-sp-d16
 921              		.type	pmc_disable_all_periph_clk, %function
 922              	pmc_disable_all_periph_clk:
 923              		@ args = 0, pretend = 0, frame = 0
 924              		@ frame_needed = 0, uses_anonymous_args = 0
 925              		@ link register save eliminated.
 926 0000 084A     		ldr	r2, .L185
 927 0002 6FF00303 		mvn	r3, #3
 928 0006 5361     		str	r3, [r2, #20]
 929              	.L181:
 930 0008 9369     		ldr	r3, [r2, #24]
 931 000a 33F00303 		bics	r3, r3, #3
 932 000e FBD1     		bne	.L181
 933 0010 4FF0FF33 		mov	r3, #-1
 934 0014 0349     		ldr	r1, .L185
 935 0016 C2F80431 		str	r3, [r2, #260]
 936              	.L182:
 937 001a D1F80831 		ldr	r3, [r1, #264]
 938 001e 002B     		cmp	r3, #0
 939 0020 FBD1     		bne	.L182
 940 0022 7047     		bx	lr
 941              	.L186:
 942              		.align	2
 943              	.L185:
 944 0024 00040E40 		.word	1074660352
 945              		.size	pmc_disable_all_periph_clk, .-pmc_disable_all_periph_clk
 946              		.section	.text.pmc_is_periph_clk_enabled,"ax",%progbits
 947              		.align	1
 948              		.p2align 2,,3
 949              		.global	pmc_is_periph_clk_enabled
 950              		.syntax unified
 951              		.thumb
 952              		.thumb_func
 953              		.fpu fpv4-sp-d16
 954              		.type	pmc_is_periph_clk_enabled, %function
 955              	pmc_is_periph_clk_enabled:
 956              		@ args = 0, pretend = 0, frame = 0
 957              		@ frame_needed = 0, uses_anonymous_args = 0
 958              		@ link register save eliminated.
 959 0000 2F28     		cmp	r0, #47
 960 0002 16D8     		bhi	.L190
 961 0004 1F28     		cmp	r0, #31
 962 0006 0C4A     		ldr	r2, .L191
 963 0008 08D8     		bhi	.L189
 964 000a 0123     		movs	r3, #1
 965 000c 9269     		ldr	r2, [r2, #24]
 966 000e 03FA00F0 		lsl	r0, r3, r0
 967 0012 1042     		tst	r0, r2
 968 0014 14BF     		ite	ne
 969 0016 1846     		movne	r0, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 18


 970 0018 0020     		moveq	r0, #0
 971 001a 7047     		bx	lr
 972              	.L189:
 973 001c 0123     		movs	r3, #1
 974 001e D2F80821 		ldr	r2, [r2, #264]
 975 0022 2038     		subs	r0, r0, #32
 976 0024 03FA00F0 		lsl	r0, r3, r0
 977 0028 1042     		tst	r0, r2
 978 002a 14BF     		ite	ne
 979 002c 1846     		movne	r0, r3
 980 002e 0020     		moveq	r0, #0
 981 0030 7047     		bx	lr
 982              	.L190:
 983 0032 0020     		movs	r0, #0
 984 0034 7047     		bx	lr
 985              	.L192:
 986 0036 00BF     		.align	2
 987              	.L191:
 988 0038 00040E40 		.word	1074660352
 989              		.size	pmc_is_periph_clk_enabled, .-pmc_is_periph_clk_enabled
 990              		.section	.text.pmc_pck_set_prescaler,"ax",%progbits
 991              		.align	1
 992              		.p2align 2,,3
 993              		.global	pmc_pck_set_prescaler
 994              		.syntax unified
 995              		.thumb
 996              		.thumb_func
 997              		.fpu fpv4-sp-d16
 998              		.type	pmc_pck_set_prescaler, %function
 999              	pmc_pck_set_prescaler:
 1000              		@ args = 0, pretend = 0, frame = 0
 1001              		@ frame_needed = 0, uses_anonymous_args = 0
 1002              		@ link register save eliminated.
 1003 0000 0B4B     		ldr	r3, .L203
 1004 0002 10B4     		push	{r4}
 1005 0004 03EB8004 		add	r4, r3, r0, lsl #2
 1006 0008 226C     		ldr	r2, [r4, #64]
 1007 000a 22F07002 		bic	r2, r2, #112
 1008 000e 1143     		orrs	r1, r1, r2
 1009 0010 4FF48072 		mov	r2, #256
 1010 0014 2164     		str	r1, [r4, #64]
 1011 0016 02FA00F0 		lsl	r0, r2, r0
 1012 001a 02E0     		b	.L195
 1013              	.L202:
 1014 001c 9A6E     		ldr	r2, [r3, #104]
 1015 001e 1042     		tst	r0, r2
 1016 0020 02D1     		bne	.L193
 1017              	.L195:
 1018 0022 1A68     		ldr	r2, [r3]
 1019 0024 0242     		tst	r2, r0
 1020 0026 F9D1     		bne	.L202
 1021              	.L193:
 1022 0028 5DF8044B 		ldr	r4, [sp], #4
 1023 002c 7047     		bx	lr
 1024              	.L204:
 1025 002e 00BF     		.align	2
 1026              	.L203:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 19


 1027 0030 00040E40 		.word	1074660352
 1028              		.size	pmc_pck_set_prescaler, .-pmc_pck_set_prescaler
 1029              		.section	.text.pmc_pck_set_source,"ax",%progbits
 1030              		.align	1
 1031              		.p2align 2,,3
 1032              		.global	pmc_pck_set_source
 1033              		.syntax unified
 1034              		.thumb
 1035              		.thumb_func
 1036              		.fpu fpv4-sp-d16
 1037              		.type	pmc_pck_set_source, %function
 1038              	pmc_pck_set_source:
 1039              		@ args = 0, pretend = 0, frame = 0
 1040              		@ frame_needed = 0, uses_anonymous_args = 0
 1041              		@ link register save eliminated.
 1042 0000 0B4B     		ldr	r3, .L215
 1043 0002 10B4     		push	{r4}
 1044 0004 03EB8004 		add	r4, r3, r0, lsl #2
 1045 0008 226C     		ldr	r2, [r4, #64]
 1046 000a 22F00702 		bic	r2, r2, #7
 1047 000e 1143     		orrs	r1, r1, r2
 1048 0010 4FF48072 		mov	r2, #256
 1049 0014 2164     		str	r1, [r4, #64]
 1050 0016 02FA00F0 		lsl	r0, r2, r0
 1051 001a 02E0     		b	.L207
 1052              	.L214:
 1053 001c 9A6E     		ldr	r2, [r3, #104]
 1054 001e 1042     		tst	r0, r2
 1055 0020 02D1     		bne	.L205
 1056              	.L207:
 1057 0022 1A68     		ldr	r2, [r3]
 1058 0024 0242     		tst	r2, r0
 1059 0026 F9D1     		bne	.L214
 1060              	.L205:
 1061 0028 5DF8044B 		ldr	r4, [sp], #4
 1062 002c 7047     		bx	lr
 1063              	.L216:
 1064 002e 00BF     		.align	2
 1065              	.L215:
 1066 0030 00040E40 		.word	1074660352
 1067              		.size	pmc_pck_set_source, .-pmc_pck_set_source
 1068              		.section	.text.pmc_switch_pck_to_sclk,"ax",%progbits
 1069              		.align	1
 1070              		.p2align 2,,3
 1071              		.global	pmc_switch_pck_to_sclk
 1072              		.syntax unified
 1073              		.thumb
 1074              		.thumb_func
 1075              		.fpu fpv4-sp-d16
 1076              		.type	pmc_switch_pck_to_sclk, %function
 1077              	pmc_switch_pck_to_sclk:
 1078              		@ args = 0, pretend = 0, frame = 0
 1079              		@ frame_needed = 0, uses_anonymous_args = 0
 1080              		@ link register save eliminated.
 1081 0000 00F11002 		add	r2, r0, #16
 1082 0004 0B4B     		ldr	r3, .L226
 1083 0006 43F82210 		str	r1, [r3, r2, lsl #2]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 20


 1084 000a 4FF48072 		mov	r2, #256
 1085 000e 996E     		ldr	r1, [r3, #104]
 1086 0010 02FA00F0 		lsl	r0, r2, r0
 1087 0014 0142     		tst	r1, r0
 1088 0016 08D1     		bne	.L224
 1089 0018 1946     		mov	r1, r3
 1090 001a 4FF40063 		mov	r3, #2048
 1091 001e 01E0     		b	.L218
 1092              	.L220:
 1093 0020 013B     		subs	r3, r3, #1
 1094 0022 04D0     		beq	.L225
 1095              	.L218:
 1096 0024 8A6E     		ldr	r2, [r1, #104]
 1097 0026 0242     		tst	r2, r0
 1098 0028 FAD0     		beq	.L220
 1099              	.L224:
 1100 002a 0020     		movs	r0, #0
 1101 002c 7047     		bx	lr
 1102              	.L225:
 1103 002e 0120     		movs	r0, #1
 1104 0030 7047     		bx	lr
 1105              	.L227:
 1106 0032 00BF     		.align	2
 1107              	.L226:
 1108 0034 00040E40 		.word	1074660352
 1109              		.size	pmc_switch_pck_to_sclk, .-pmc_switch_pck_to_sclk
 1110              		.section	.text.pmc_switch_pck_to_mainck,"ax",%progbits
 1111              		.align	1
 1112              		.p2align 2,,3
 1113              		.global	pmc_switch_pck_to_mainck
 1114              		.syntax unified
 1115              		.thumb
 1116              		.thumb_func
 1117              		.fpu fpv4-sp-d16
 1118              		.type	pmc_switch_pck_to_mainck, %function
 1119              	pmc_switch_pck_to_mainck:
 1120              		@ args = 0, pretend = 0, frame = 0
 1121              		@ frame_needed = 0, uses_anonymous_args = 0
 1122              		@ link register save eliminated.
 1123 0000 00F11002 		add	r2, r0, #16
 1124 0004 0C4B     		ldr	r3, .L237
 1125 0006 41F00101 		orr	r1, r1, #1
 1126 000a 43F82210 		str	r1, [r3, r2, lsl #2]
 1127 000e 4FF48072 		mov	r2, #256
 1128 0012 996E     		ldr	r1, [r3, #104]
 1129 0014 02FA00F0 		lsl	r0, r2, r0
 1130 0018 0142     		tst	r1, r0
 1131 001a 08D1     		bne	.L235
 1132 001c 1946     		mov	r1, r3
 1133 001e 4FF40063 		mov	r3, #2048
 1134 0022 01E0     		b	.L229
 1135              	.L231:
 1136 0024 013B     		subs	r3, r3, #1
 1137 0026 04D0     		beq	.L236
 1138              	.L229:
 1139 0028 8A6E     		ldr	r2, [r1, #104]
 1140 002a 0242     		tst	r2, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 21


 1141 002c FAD0     		beq	.L231
 1142              	.L235:
 1143 002e 0020     		movs	r0, #0
 1144 0030 7047     		bx	lr
 1145              	.L236:
 1146 0032 0120     		movs	r0, #1
 1147 0034 7047     		bx	lr
 1148              	.L238:
 1149 0036 00BF     		.align	2
 1150              	.L237:
 1151 0038 00040E40 		.word	1074660352
 1152              		.size	pmc_switch_pck_to_mainck, .-pmc_switch_pck_to_mainck
 1153              		.section	.text.pmc_switch_pck_to_pllack,"ax",%progbits
 1154              		.align	1
 1155              		.p2align 2,,3
 1156              		.global	pmc_switch_pck_to_pllack
 1157              		.syntax unified
 1158              		.thumb
 1159              		.thumb_func
 1160              		.fpu fpv4-sp-d16
 1161              		.type	pmc_switch_pck_to_pllack, %function
 1162              	pmc_switch_pck_to_pllack:
 1163              		@ args = 0, pretend = 0, frame = 0
 1164              		@ frame_needed = 0, uses_anonymous_args = 0
 1165              		@ link register save eliminated.
 1166 0000 00F11002 		add	r2, r0, #16
 1167 0004 0C4B     		ldr	r3, .L248
 1168 0006 41F00201 		orr	r1, r1, #2
 1169 000a 43F82210 		str	r1, [r3, r2, lsl #2]
 1170 000e 4FF48072 		mov	r2, #256
 1171 0012 996E     		ldr	r1, [r3, #104]
 1172 0014 02FA00F0 		lsl	r0, r2, r0
 1173 0018 0142     		tst	r1, r0
 1174 001a 08D1     		bne	.L246
 1175 001c 1946     		mov	r1, r3
 1176 001e 4FF40063 		mov	r3, #2048
 1177 0022 01E0     		b	.L240
 1178              	.L242:
 1179 0024 013B     		subs	r3, r3, #1
 1180 0026 04D0     		beq	.L247
 1181              	.L240:
 1182 0028 8A6E     		ldr	r2, [r1, #104]
 1183 002a 0242     		tst	r2, r0
 1184 002c FAD0     		beq	.L242
 1185              	.L246:
 1186 002e 0020     		movs	r0, #0
 1187 0030 7047     		bx	lr
 1188              	.L247:
 1189 0032 0120     		movs	r0, #1
 1190 0034 7047     		bx	lr
 1191              	.L249:
 1192 0036 00BF     		.align	2
 1193              	.L248:
 1194 0038 00040E40 		.word	1074660352
 1195              		.size	pmc_switch_pck_to_pllack, .-pmc_switch_pck_to_pllack
 1196              		.section	.text.pmc_switch_pck_to_mck,"ax",%progbits
 1197              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 22


 1198              		.p2align 2,,3
 1199              		.global	pmc_switch_pck_to_mck
 1200              		.syntax unified
 1201              		.thumb
 1202              		.thumb_func
 1203              		.fpu fpv4-sp-d16
 1204              		.type	pmc_switch_pck_to_mck, %function
 1205              	pmc_switch_pck_to_mck:
 1206              		@ args = 0, pretend = 0, frame = 0
 1207              		@ frame_needed = 0, uses_anonymous_args = 0
 1208              		@ link register save eliminated.
 1209 0000 00F11002 		add	r2, r0, #16
 1210 0004 0C4B     		ldr	r3, .L259
 1211 0006 41F00401 		orr	r1, r1, #4
 1212 000a 43F82210 		str	r1, [r3, r2, lsl #2]
 1213 000e 4FF48072 		mov	r2, #256
 1214 0012 996E     		ldr	r1, [r3, #104]
 1215 0014 02FA00F0 		lsl	r0, r2, r0
 1216 0018 0142     		tst	r1, r0
 1217 001a 08D1     		bne	.L257
 1218 001c 1946     		mov	r1, r3
 1219 001e 4FF40063 		mov	r3, #2048
 1220 0022 01E0     		b	.L251
 1221              	.L253:
 1222 0024 013B     		subs	r3, r3, #1
 1223 0026 04D0     		beq	.L258
 1224              	.L251:
 1225 0028 8A6E     		ldr	r2, [r1, #104]
 1226 002a 0242     		tst	r2, r0
 1227 002c FAD0     		beq	.L253
 1228              	.L257:
 1229 002e 0020     		movs	r0, #0
 1230 0030 7047     		bx	lr
 1231              	.L258:
 1232 0032 0120     		movs	r0, #1
 1233 0034 7047     		bx	lr
 1234              	.L260:
 1235 0036 00BF     		.align	2
 1236              	.L259:
 1237 0038 00040E40 		.word	1074660352
 1238              		.size	pmc_switch_pck_to_mck, .-pmc_switch_pck_to_mck
 1239              		.section	.text.pmc_enable_pck,"ax",%progbits
 1240              		.align	1
 1241              		.p2align 2,,3
 1242              		.global	pmc_enable_pck
 1243              		.syntax unified
 1244              		.thumb
 1245              		.thumb_func
 1246              		.fpu fpv4-sp-d16
 1247              		.type	pmc_enable_pck, %function
 1248              	pmc_enable_pck:
 1249              		@ args = 0, pretend = 0, frame = 0
 1250              		@ frame_needed = 0, uses_anonymous_args = 0
 1251              		@ link register save eliminated.
 1252 0000 4FF48073 		mov	r3, #256
 1253 0004 024A     		ldr	r2, .L262
 1254 0006 03FA00F0 		lsl	r0, r3, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 23


 1255 000a 1060     		str	r0, [r2]
 1256 000c 7047     		bx	lr
 1257              	.L263:
 1258 000e 00BF     		.align	2
 1259              	.L262:
 1260 0010 00040E40 		.word	1074660352
 1261              		.size	pmc_enable_pck, .-pmc_enable_pck
 1262              		.section	.text.pmc_disable_pck,"ax",%progbits
 1263              		.align	1
 1264              		.p2align 2,,3
 1265              		.global	pmc_disable_pck
 1266              		.syntax unified
 1267              		.thumb
 1268              		.thumb_func
 1269              		.fpu fpv4-sp-d16
 1270              		.type	pmc_disable_pck, %function
 1271              	pmc_disable_pck:
 1272              		@ args = 0, pretend = 0, frame = 0
 1273              		@ frame_needed = 0, uses_anonymous_args = 0
 1274              		@ link register save eliminated.
 1275 0000 4FF48073 		mov	r3, #256
 1276 0004 024A     		ldr	r2, .L265
 1277 0006 03FA00F0 		lsl	r0, r3, r0
 1278 000a 5060     		str	r0, [r2, #4]
 1279 000c 7047     		bx	lr
 1280              	.L266:
 1281 000e 00BF     		.align	2
 1282              	.L265:
 1283 0010 00040E40 		.word	1074660352
 1284              		.size	pmc_disable_pck, .-pmc_disable_pck
 1285              		.section	.text.pmc_enable_all_pck,"ax",%progbits
 1286              		.align	1
 1287              		.p2align 2,,3
 1288              		.global	pmc_enable_all_pck
 1289              		.syntax unified
 1290              		.thumb
 1291              		.thumb_func
 1292              		.fpu fpv4-sp-d16
 1293              		.type	pmc_enable_all_pck, %function
 1294              	pmc_enable_all_pck:
 1295              		@ args = 0, pretend = 0, frame = 0
 1296              		@ frame_needed = 0, uses_anonymous_args = 0
 1297              		@ link register save eliminated.
 1298 0000 024B     		ldr	r3, .L268
 1299 0002 4FF4E062 		mov	r2, #1792
 1300 0006 1A60     		str	r2, [r3]
 1301 0008 7047     		bx	lr
 1302              	.L269:
 1303 000a 00BF     		.align	2
 1304              	.L268:
 1305 000c 00040E40 		.word	1074660352
 1306              		.size	pmc_enable_all_pck, .-pmc_enable_all_pck
 1307              		.section	.text.pmc_disable_all_pck,"ax",%progbits
 1308              		.align	1
 1309              		.p2align 2,,3
 1310              		.global	pmc_disable_all_pck
 1311              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 24


 1312              		.thumb
 1313              		.thumb_func
 1314              		.fpu fpv4-sp-d16
 1315              		.type	pmc_disable_all_pck, %function
 1316              	pmc_disable_all_pck:
 1317              		@ args = 0, pretend = 0, frame = 0
 1318              		@ frame_needed = 0, uses_anonymous_args = 0
 1319              		@ link register save eliminated.
 1320 0000 024B     		ldr	r3, .L271
 1321 0002 4FF4E062 		mov	r2, #1792
 1322 0006 5A60     		str	r2, [r3, #4]
 1323 0008 7047     		bx	lr
 1324              	.L272:
 1325 000a 00BF     		.align	2
 1326              	.L271:
 1327 000c 00040E40 		.word	1074660352
 1328              		.size	pmc_disable_all_pck, .-pmc_disable_all_pck
 1329              		.section	.text.pmc_is_pck_enabled,"ax",%progbits
 1330              		.align	1
 1331              		.p2align 2,,3
 1332              		.global	pmc_is_pck_enabled
 1333              		.syntax unified
 1334              		.thumb
 1335              		.thumb_func
 1336              		.fpu fpv4-sp-d16
 1337              		.type	pmc_is_pck_enabled, %function
 1338              	pmc_is_pck_enabled:
 1339              		@ args = 0, pretend = 0, frame = 0
 1340              		@ frame_needed = 0, uses_anonymous_args = 0
 1341              		@ link register save eliminated.
 1342 0000 0228     		cmp	r0, #2
 1343 0002 07D8     		bhi	.L275
 1344 0004 044A     		ldr	r2, .L276
 1345 0006 4FF48073 		mov	r3, #256
 1346 000a 9268     		ldr	r2, [r2, #8]
 1347 000c 03FA00F0 		lsl	r0, r3, r0
 1348 0010 1040     		ands	r0, r0, r2
 1349 0012 7047     		bx	lr
 1350              	.L275:
 1351 0014 0020     		movs	r0, #0
 1352 0016 7047     		bx	lr
 1353              	.L277:
 1354              		.align	2
 1355              	.L276:
 1356 0018 00040E40 		.word	1074660352
 1357              		.size	pmc_is_pck_enabled, .-pmc_is_pck_enabled
 1358              		.section	.text.pmc_switch_udpck_to_pllack,"ax",%progbits
 1359              		.align	1
 1360              		.p2align 2,,3
 1361              		.global	pmc_switch_udpck_to_pllack
 1362              		.syntax unified
 1363              		.thumb
 1364              		.thumb_func
 1365              		.fpu fpv4-sp-d16
 1366              		.type	pmc_switch_udpck_to_pllack, %function
 1367              	pmc_switch_udpck_to_pllack:
 1368              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 25


 1369              		@ frame_needed = 0, uses_anonymous_args = 0
 1370              		@ link register save eliminated.
 1371 0000 0002     		lsls	r0, r0, #8
 1372 0002 024B     		ldr	r3, .L279
 1373 0004 00F47060 		and	r0, r0, #3840
 1374 0008 9863     		str	r0, [r3, #56]
 1375 000a 7047     		bx	lr
 1376              	.L280:
 1377              		.align	2
 1378              	.L279:
 1379 000c 00040E40 		.word	1074660352
 1380              		.size	pmc_switch_udpck_to_pllack, .-pmc_switch_udpck_to_pllack
 1381              		.section	.text.pmc_enable_udpck,"ax",%progbits
 1382              		.align	1
 1383              		.p2align 2,,3
 1384              		.global	pmc_enable_udpck
 1385              		.syntax unified
 1386              		.thumb
 1387              		.thumb_func
 1388              		.fpu fpv4-sp-d16
 1389              		.type	pmc_enable_udpck, %function
 1390              	pmc_enable_udpck:
 1391              		@ args = 0, pretend = 0, frame = 0
 1392              		@ frame_needed = 0, uses_anonymous_args = 0
 1393              		@ link register save eliminated.
 1394 0000 014B     		ldr	r3, .L282
 1395 0002 8022     		movs	r2, #128
 1396 0004 1A60     		str	r2, [r3]
 1397 0006 7047     		bx	lr
 1398              	.L283:
 1399              		.align	2
 1400              	.L282:
 1401 0008 00040E40 		.word	1074660352
 1402              		.size	pmc_enable_udpck, .-pmc_enable_udpck
 1403              		.section	.text.pmc_disable_udpck,"ax",%progbits
 1404              		.align	1
 1405              		.p2align 2,,3
 1406              		.global	pmc_disable_udpck
 1407              		.syntax unified
 1408              		.thumb
 1409              		.thumb_func
 1410              		.fpu fpv4-sp-d16
 1411              		.type	pmc_disable_udpck, %function
 1412              	pmc_disable_udpck:
 1413              		@ args = 0, pretend = 0, frame = 0
 1414              		@ frame_needed = 0, uses_anonymous_args = 0
 1415              		@ link register save eliminated.
 1416 0000 014B     		ldr	r3, .L285
 1417 0002 8022     		movs	r2, #128
 1418 0004 5A60     		str	r2, [r3, #4]
 1419 0006 7047     		bx	lr
 1420              	.L286:
 1421              		.align	2
 1422              	.L285:
 1423 0008 00040E40 		.word	1074660352
 1424              		.size	pmc_disable_udpck, .-pmc_disable_udpck
 1425              		.section	.text.pmc_enable_interrupt,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 26


 1426              		.align	1
 1427              		.p2align 2,,3
 1428              		.global	pmc_enable_interrupt
 1429              		.syntax unified
 1430              		.thumb
 1431              		.thumb_func
 1432              		.fpu fpv4-sp-d16
 1433              		.type	pmc_enable_interrupt, %function
 1434              	pmc_enable_interrupt:
 1435              		@ args = 0, pretend = 0, frame = 0
 1436              		@ frame_needed = 0, uses_anonymous_args = 0
 1437              		@ link register save eliminated.
 1438 0000 014B     		ldr	r3, .L288
 1439 0002 1866     		str	r0, [r3, #96]
 1440 0004 7047     		bx	lr
 1441              	.L289:
 1442 0006 00BF     		.align	2
 1443              	.L288:
 1444 0008 00040E40 		.word	1074660352
 1445              		.size	pmc_enable_interrupt, .-pmc_enable_interrupt
 1446              		.section	.text.pmc_disable_interrupt,"ax",%progbits
 1447              		.align	1
 1448              		.p2align 2,,3
 1449              		.global	pmc_disable_interrupt
 1450              		.syntax unified
 1451              		.thumb
 1452              		.thumb_func
 1453              		.fpu fpv4-sp-d16
 1454              		.type	pmc_disable_interrupt, %function
 1455              	pmc_disable_interrupt:
 1456              		@ args = 0, pretend = 0, frame = 0
 1457              		@ frame_needed = 0, uses_anonymous_args = 0
 1458              		@ link register save eliminated.
 1459 0000 014B     		ldr	r3, .L291
 1460 0002 5866     		str	r0, [r3, #100]
 1461 0004 7047     		bx	lr
 1462              	.L292:
 1463 0006 00BF     		.align	2
 1464              	.L291:
 1465 0008 00040E40 		.word	1074660352
 1466              		.size	pmc_disable_interrupt, .-pmc_disable_interrupt
 1467              		.section	.text.pmc_get_interrupt_mask,"ax",%progbits
 1468              		.align	1
 1469              		.p2align 2,,3
 1470              		.global	pmc_get_interrupt_mask
 1471              		.syntax unified
 1472              		.thumb
 1473              		.thumb_func
 1474              		.fpu fpv4-sp-d16
 1475              		.type	pmc_get_interrupt_mask, %function
 1476              	pmc_get_interrupt_mask:
 1477              		@ args = 0, pretend = 0, frame = 0
 1478              		@ frame_needed = 0, uses_anonymous_args = 0
 1479              		@ link register save eliminated.
 1480 0000 014B     		ldr	r3, .L294
 1481 0002 D86E     		ldr	r0, [r3, #108]
 1482 0004 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 27


 1483              	.L295:
 1484 0006 00BF     		.align	2
 1485              	.L294:
 1486 0008 00040E40 		.word	1074660352
 1487              		.size	pmc_get_interrupt_mask, .-pmc_get_interrupt_mask
 1488              		.section	.text.pmc_get_status,"ax",%progbits
 1489              		.align	1
 1490              		.p2align 2,,3
 1491              		.global	pmc_get_status
 1492              		.syntax unified
 1493              		.thumb
 1494              		.thumb_func
 1495              		.fpu fpv4-sp-d16
 1496              		.type	pmc_get_status, %function
 1497              	pmc_get_status:
 1498              		@ args = 0, pretend = 0, frame = 0
 1499              		@ frame_needed = 0, uses_anonymous_args = 0
 1500              		@ link register save eliminated.
 1501 0000 014B     		ldr	r3, .L297
 1502 0002 986E     		ldr	r0, [r3, #104]
 1503 0004 7047     		bx	lr
 1504              	.L298:
 1505 0006 00BF     		.align	2
 1506              	.L297:
 1507 0008 00040E40 		.word	1074660352
 1508              		.size	pmc_get_status, .-pmc_get_status
 1509              		.section	.text.pmc_set_fast_startup_input,"ax",%progbits
 1510              		.align	1
 1511              		.p2align 2,,3
 1512              		.global	pmc_set_fast_startup_input
 1513              		.syntax unified
 1514              		.thumb
 1515              		.thumb_func
 1516              		.fpu fpv4-sp-d16
 1517              		.type	pmc_set_fast_startup_input, %function
 1518              	pmc_set_fast_startup_input:
 1519              		@ args = 0, pretend = 0, frame = 0
 1520              		@ frame_needed = 0, uses_anonymous_args = 0
 1521              		@ link register save eliminated.
 1522 0000 034B     		ldr	r3, .L300
 1523 0002 1A6F     		ldr	r2, [r3, #112]
 1524 0004 C0F31200 		ubfx	r0, r0, #0, #19
 1525 0008 1043     		orrs	r0, r0, r2
 1526 000a 1867     		str	r0, [r3, #112]
 1527 000c 7047     		bx	lr
 1528              	.L301:
 1529 000e 00BF     		.align	2
 1530              	.L300:
 1531 0010 00040E40 		.word	1074660352
 1532              		.size	pmc_set_fast_startup_input, .-pmc_set_fast_startup_input
 1533              		.section	.text.pmc_clr_fast_startup_input,"ax",%progbits
 1534              		.align	1
 1535              		.p2align 2,,3
 1536              		.global	pmc_clr_fast_startup_input
 1537              		.syntax unified
 1538              		.thumb
 1539              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 28


 1540              		.fpu fpv4-sp-d16
 1541              		.type	pmc_clr_fast_startup_input, %function
 1542              	pmc_clr_fast_startup_input:
 1543              		@ args = 0, pretend = 0, frame = 0
 1544              		@ frame_needed = 0, uses_anonymous_args = 0
 1545              		@ link register save eliminated.
 1546 0000 034A     		ldr	r2, .L303
 1547 0002 136F     		ldr	r3, [r2, #112]
 1548 0004 C0F31200 		ubfx	r0, r0, #0, #19
 1549 0008 23EA0003 		bic	r3, r3, r0
 1550 000c 1367     		str	r3, [r2, #112]
 1551 000e 7047     		bx	lr
 1552              	.L304:
 1553              		.align	2
 1554              	.L303:
 1555 0010 00040E40 		.word	1074660352
 1556              		.size	pmc_clr_fast_startup_input, .-pmc_clr_fast_startup_input
 1557              		.section	.text.pmc_enable_sleepmode,"ax",%progbits
 1558              		.align	1
 1559              		.p2align 2,,3
 1560              		.global	pmc_enable_sleepmode
 1561              		.syntax unified
 1562              		.thumb
 1563              		.thumb_func
 1564              		.fpu fpv4-sp-d16
 1565              		.type	pmc_enable_sleepmode, %function
 1566              	pmc_enable_sleepmode:
 1567              		@ args = 0, pretend = 0, frame = 0
 1568              		@ frame_needed = 0, uses_anonymous_args = 0
 1569              		@ link register save eliminated.
 1570 0000 044A     		ldr	r2, .L306
 1571 0002 1369     		ldr	r3, [r2, #16]
 1572 0004 23F00403 		bic	r3, r3, #4
 1573 0008 1361     		str	r3, [r2, #16]
 1574              		.syntax unified
 1575              	@ 445 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1576 000a BFF34F8F 		dsb
 1577              	@ 0 "" 2
 1578              	@ 401 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1579 000e 30BF     		wfi
 1580              	@ 0 "" 2
 1581              		.thumb
 1582              		.syntax unified
 1583 0010 7047     		bx	lr
 1584              	.L307:
 1585 0012 00BF     		.align	2
 1586              	.L306:
 1587 0014 00ED00E0 		.word	-536810240
 1588              		.size	pmc_enable_sleepmode, .-pmc_enable_sleepmode
 1589              		.section	.text.pmc_set_flash_in_wait_mode,"ax",%progbits
 1590              		.align	1
 1591              		.p2align 2,,3
 1592              		.global	pmc_set_flash_in_wait_mode
 1593              		.syntax unified
 1594              		.thumb
 1595              		.thumb_func
 1596              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 29


 1597              		.type	pmc_set_flash_in_wait_mode, %function
 1598              	pmc_set_flash_in_wait_mode:
 1599              		@ args = 0, pretend = 0, frame = 0
 1600              		@ frame_needed = 0, uses_anonymous_args = 0
 1601              		@ link register save eliminated.
 1602 0000 014B     		ldr	r3, .L309
 1603 0002 1860     		str	r0, [r3]
 1604 0004 7047     		bx	lr
 1605              	.L310:
 1606 0006 00BF     		.align	2
 1607              	.L309:
 1608 0008 00000000 		.word	.LANCHOR0
 1609              		.size	pmc_set_flash_in_wait_mode, .-pmc_set_flash_in_wait_mode
 1610              		.section	.text.pmc_enable_waitmode,"ax",%progbits
 1611              		.align	1
 1612              		.p2align 2,,3
 1613              		.global	pmc_enable_waitmode
 1614              		.syntax unified
 1615              		.thumb
 1616              		.thumb_func
 1617              		.fpu fpv4-sp-d16
 1618              		.type	pmc_enable_waitmode, %function
 1619              	pmc_enable_waitmode:
 1620              		@ args = 0, pretend = 0, frame = 0
 1621              		@ frame_needed = 0, uses_anonymous_args = 0
 1622              		@ link register save eliminated.
 1623 0000 104B     		ldr	r3, .L320
 1624 0002 1149     		ldr	r1, .L320+4
 1625 0004 1A6F     		ldr	r2, [r3, #112]
 1626 0006 0968     		ldr	r1, [r1]
 1627 0008 22F4C002 		bic	r2, r2, #6291456
 1628 000c 0A43     		orrs	r2, r2, r1
 1629 000e 1A67     		str	r2, [r3, #112]
 1630 0010 1A6A     		ldr	r2, [r3, #32]
 1631 0012 42F45C12 		orr	r2, r2, #3604480
 1632 0016 42F00402 		orr	r2, r2, #4
 1633 001a 1A62     		str	r2, [r3, #32]
 1634              	.L312:
 1635 001c 9A6E     		ldr	r2, [r3, #104]
 1636 001e 1207     		lsls	r2, r2, #28
 1637 0020 FCD5     		bpl	.L312
 1638 0022 4FF4FA73 		mov	r3, #500
 1639              	.L313:
 1640              		.syntax unified
 1641              	@ 390 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1642 0026 00BF     		nop
 1643              	@ 0 "" 2
 1644              		.thumb
 1645              		.syntax unified
 1646 0028 013B     		subs	r3, r3, #1
 1647 002a FCD1     		bne	.L313
 1648 002c 054A     		ldr	r2, .L320
 1649              	.L314:
 1650 002e 136A     		ldr	r3, [r2, #32]
 1651 0030 1B07     		lsls	r3, r3, #28
 1652 0032 FCD5     		bpl	.L314
 1653 0034 136F     		ldr	r3, [r2, #112]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 30


 1654 0036 23F4C003 		bic	r3, r3, #6291456
 1655 003a 43F48003 		orr	r3, r3, #4194304
 1656 003e 1367     		str	r3, [r2, #112]
 1657 0040 7047     		bx	lr
 1658              	.L321:
 1659 0042 00BF     		.align	2
 1660              	.L320:
 1661 0044 00040E40 		.word	1074660352
 1662 0048 00000000 		.word	.LANCHOR0
 1663              		.size	pmc_enable_waitmode, .-pmc_enable_waitmode
 1664              		.section	.text.pmc_enable_backupmode,"ax",%progbits
 1665              		.align	1
 1666              		.p2align 2,,3
 1667              		.global	pmc_enable_backupmode
 1668              		.syntax unified
 1669              		.thumb
 1670              		.thumb_func
 1671              		.fpu fpv4-sp-d16
 1672              		.type	pmc_enable_backupmode, %function
 1673              	pmc_enable_backupmode:
 1674              		@ args = 0, pretend = 0, frame = 0
 1675              		@ frame_needed = 0, uses_anonymous_args = 0
 1676              		@ link register save eliminated.
 1677 0000 0649     		ldr	r1, .L323
 1678 0002 074A     		ldr	r2, .L323+4
 1679 0004 0B69     		ldr	r3, [r1, #16]
 1680 0006 0748     		ldr	r0, .L323+8
 1681 0008 43F00403 		orr	r3, r3, #4
 1682 000c 0B61     		str	r3, [r1, #16]
 1683 000e 1060     		str	r0, [r2]
 1684 0010 9368     		ldr	r3, [r2, #8]
 1685              		.syntax unified
 1686              	@ 445 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1687 0012 BFF34F8F 		dsb
 1688              	@ 0 "" 2
 1689              	@ 412 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1690 0016 20BF     		wfe
 1691              	@ 0 "" 2
 1692              	@ 401 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1693 0018 30BF     		wfi
 1694              	@ 0 "" 2
 1695              		.thumb
 1696              		.syntax unified
 1697 001a 7047     		bx	lr
 1698              	.L324:
 1699              		.align	2
 1700              	.L323:
 1701 001c 00ED00E0 		.word	-536810240
 1702 0020 10180E40 		.word	1074665488
 1703 0024 040000A5 		.word	-1526726652
 1704              		.size	pmc_enable_backupmode, .-pmc_enable_backupmode
 1705              		.section	.text.pmc_enable_clock_failure_detector,"ax",%progbits
 1706              		.align	1
 1707              		.p2align 2,,3
 1708              		.global	pmc_enable_clock_failure_detector
 1709              		.syntax unified
 1710              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 31


 1711              		.thumb_func
 1712              		.fpu fpv4-sp-d16
 1713              		.type	pmc_enable_clock_failure_detector, %function
 1714              	pmc_enable_clock_failure_detector:
 1715              		@ args = 0, pretend = 0, frame = 0
 1716              		@ frame_needed = 0, uses_anonymous_args = 0
 1717              		@ link register save eliminated.
 1718 0000 034A     		ldr	r2, .L326
 1719 0002 136A     		ldr	r3, [r2, #32]
 1720 0004 43F00D73 		orr	r3, r3, #36962304
 1721 0008 43F44033 		orr	r3, r3, #196608
 1722 000c 1362     		str	r3, [r2, #32]
 1723 000e 7047     		bx	lr
 1724              	.L327:
 1725              		.align	2
 1726              	.L326:
 1727 0010 00040E40 		.word	1074660352
 1728              		.size	pmc_enable_clock_failure_detector, .-pmc_enable_clock_failure_detector
 1729              		.section	.text.pmc_disable_clock_failure_detector,"ax",%progbits
 1730              		.align	1
 1731              		.p2align 2,,3
 1732              		.global	pmc_disable_clock_failure_detector
 1733              		.syntax unified
 1734              		.thumb
 1735              		.thumb_func
 1736              		.fpu fpv4-sp-d16
 1737              		.type	pmc_disable_clock_failure_detector, %function
 1738              	pmc_disable_clock_failure_detector:
 1739              		@ args = 0, pretend = 0, frame = 0
 1740              		@ frame_needed = 0, uses_anonymous_args = 0
 1741              		@ link register save eliminated.
 1742 0000 034A     		ldr	r2, .L329
 1743 0002 136A     		ldr	r3, [r2, #32]
 1744 0004 23F00073 		bic	r3, r3, #33554432
 1745 0008 43F45C13 		orr	r3, r3, #3604480
 1746 000c 1362     		str	r3, [r2, #32]
 1747 000e 7047     		bx	lr
 1748              	.L330:
 1749              		.align	2
 1750              	.L329:
 1751 0010 00040E40 		.word	1074660352
 1752              		.size	pmc_disable_clock_failure_detector, .-pmc_disable_clock_failure_detector
 1753              		.section	.text.pmc_set_writeprotect,"ax",%progbits
 1754              		.align	1
 1755              		.p2align 2,,3
 1756              		.global	pmc_set_writeprotect
 1757              		.syntax unified
 1758              		.thumb
 1759              		.thumb_func
 1760              		.fpu fpv4-sp-d16
 1761              		.type	pmc_set_writeprotect, %function
 1762              	pmc_set_writeprotect:
 1763              		@ args = 0, pretend = 0, frame = 0
 1764              		@ frame_needed = 0, uses_anonymous_args = 0
 1765              		@ link register save eliminated.
 1766 0000 044B     		ldr	r3, .L335
 1767 0002 18B9     		cbnz	r0, .L334
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc8ayIvt.s 			page 32


 1768 0004 044A     		ldr	r2, .L335+4
 1769 0006 C3F8E420 		str	r2, [r3, #228]
 1770 000a 7047     		bx	lr
 1771              	.L334:
 1772 000c 034A     		ldr	r2, .L335+8
 1773 000e C3F8E420 		str	r2, [r3, #228]
 1774 0012 7047     		bx	lr
 1775              	.L336:
 1776              		.align	2
 1777              	.L335:
 1778 0014 00040E40 		.word	1074660352
 1779 0018 00434D50 		.word	1347240704
 1780 001c 01434D50 		.word	1347240705
 1781              		.size	pmc_set_writeprotect, .-pmc_set_writeprotect
 1782              		.section	.text.pmc_get_writeprotect_status,"ax",%progbits
 1783              		.align	1
 1784              		.p2align 2,,3
 1785              		.global	pmc_get_writeprotect_status
 1786              		.syntax unified
 1787              		.thumb
 1788              		.thumb_func
 1789              		.fpu fpv4-sp-d16
 1790              		.type	pmc_get_writeprotect_status, %function
 1791              	pmc_get_writeprotect_status:
 1792              		@ args = 0, pretend = 0, frame = 0
 1793              		@ frame_needed = 0, uses_anonymous_args = 0
 1794              		@ link register save eliminated.
 1795 0000 014B     		ldr	r3, .L338
 1796 0002 D3F8E800 		ldr	r0, [r3, #232]
 1797 0006 7047     		bx	lr
 1798              	.L339:
 1799              		.align	2
 1800              	.L338:
 1801 0008 00040E40 		.word	1074660352
 1802              		.size	pmc_get_writeprotect_status, .-pmc_get_writeprotect_status
 1803              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1804              		.align	2
 1805              		.type	cpu_irq_critical_section_counter, %object
 1806              		.size	cpu_irq_critical_section_counter, 4
 1807              	cpu_irq_critical_section_counter:
 1808 0000 00000000 		.space	4
 1809              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1810              		.type	cpu_irq_prev_interrupt_state, %object
 1811              		.size	cpu_irq_prev_interrupt_state, 1
 1812              	cpu_irq_prev_interrupt_state:
 1813 0000 00       		.space	1
 1814              		.section	.data.ul_flash_in_wait_mode,"aw",%progbits
 1815              		.align	2
 1816              		.set	.LANCHOR0,. + 0
 1817              		.type	ul_flash_in_wait_mode, %object
 1818              		.size	ul_flash_in_wait_mode, 4
 1819              	ul_flash_in_wait_mode:
 1820 0000 00002000 		.word	2097152
 1821              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
