ARM GAS  /tmp/ccLCiAGb.s 			page 1


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
  25 0000 0549     		ldr	r1, .L6
  26 0002 0A46     		mov	r2, r1
  27 0004 0B6B     		ldr	r3, [r1, #48]
  28 0006 23F07003 		bic	r3, r3, #112
  29 000a 1843     		orrs	r0, r0, r3
  30 000c 0863     		str	r0, [r1, #48]
  31              	.L2:
  32 000e 936E     		ldr	r3, [r2, #104]
  33 0010 1B07     		lsls	r3, r3, #28
  34 0012 FCD5     		bpl	.L2
  35 0014 7047     		bx	lr
  36              	.L7:
  37 0016 00BF     		.align	2
  38              	.L6:
  39 0018 00060E40 		.word	1074660864
  40              		.size	pmc_mck_set_prescaler, .-pmc_mck_set_prescaler
  41              		.section	.text.pmc_mck_set_source,"ax",%progbits
  42              		.align	1
  43              		.p2align 2,,3
  44              		.global	pmc_mck_set_source
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu softvfp
  49              		.type	pmc_mck_set_source, %function
  50              	pmc_mck_set_source:
  51              		@ args = 0, pretend = 0, frame = 0
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53              		@ link register save eliminated.
  54 0000 0549     		ldr	r1, .L12
  55 0002 0A46     		mov	r2, r1
  56 0004 0B6B     		ldr	r3, [r1, #48]
  57 0006 23F00303 		bic	r3, r3, #3
ARM GAS  /tmp/ccLCiAGb.s 			page 2


  58 000a 1843     		orrs	r0, r0, r3
  59 000c 0863     		str	r0, [r1, #48]
  60              	.L9:
  61 000e 936E     		ldr	r3, [r2, #104]
  62 0010 1B07     		lsls	r3, r3, #28
  63 0012 FCD5     		bpl	.L9
  64 0014 7047     		bx	lr
  65              	.L13:
  66 0016 00BF     		.align	2
  67              	.L12:
  68 0018 00060E40 		.word	1074660864
  69              		.size	pmc_mck_set_source, .-pmc_mck_set_source
  70              		.section	.text.pmc_switch_mck_to_sclk,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.global	pmc_switch_mck_to_sclk
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu softvfp
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
ARM GAS  /tmp/ccLCiAGb.s 			page 3


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
 128 0050 00060E40 		.word	1074660864
 129              		.size	pmc_switch_mck_to_sclk, .-pmc_switch_mck_to_sclk
 130              		.section	.text.pmc_switch_mck_to_mainck,"ax",%progbits
 131              		.align	1
 132              		.p2align 2,,3
 133              		.global	pmc_switch_mck_to_mainck
 134              		.syntax unified
 135              		.thumb
 136              		.thumb_func
 137              		.fpu softvfp
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
ARM GAS  /tmp/ccLCiAGb.s 			page 4


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
 189 0054 00060E40 		.word	1074660864
 190              		.size	pmc_switch_mck_to_mainck, .-pmc_switch_mck_to_mainck
 191              		.section	.text.pmc_switch_mck_to_pllack,"ax",%progbits
 192              		.align	1
 193              		.p2align 2,,3
 194              		.global	pmc_switch_mck_to_pllack
 195              		.syntax unified
 196              		.thumb
 197              		.thumb_func
 198              		.fpu softvfp
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
ARM GAS  /tmp/ccLCiAGb.s 			page 5


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
 250 0054 00060E40 		.word	1074660864
 251              		.size	pmc_switch_mck_to_pllack, .-pmc_switch_mck_to_pllack
 252              		.section	.text.pmc_switch_mck_to_upllck,"ax",%progbits
 253              		.align	1
 254              		.p2align 2,,3
 255              		.global	pmc_switch_mck_to_upllck
 256              		.syntax unified
 257              		.thumb
 258              		.thumb_func
 259              		.fpu softvfp
 260              		.type	pmc_switch_mck_to_upllck, %function
 261              	pmc_switch_mck_to_upllck:
 262              		@ args = 0, pretend = 0, frame = 0
 263              		@ frame_needed = 0, uses_anonymous_args = 0
 264              		@ link register save eliminated.
 265 0000 1349     		ldr	r1, .L84
 266 0002 0B6B     		ldr	r3, [r1, #48]
 267 0004 23F07003 		bic	r3, r3, #112
 268 0008 1843     		orrs	r0, r0, r3
 269 000a 0863     		str	r0, [r1, #48]
 270 000c 8B6E     		ldr	r3, [r1, #104]
 271 000e 1807     		lsls	r0, r3, #28
 272 0010 58BF     		it	pl
 273 0012 4FF40063 		movpl	r3, #2048
 274 0016 02D5     		bpl	.L71
 275 0018 04E0     		b	.L70
 276              	.L73:
 277 001a 013B     		subs	r3, r3, #1
 278 001c 15D0     		beq	.L75
 279              	.L71:
 280 001e 8A6E     		ldr	r2, [r1, #104]
 281 0020 1207     		lsls	r2, r2, #28
 282 0022 FAD5     		bpl	.L73
 283              	.L70:
 284 0024 0A49     		ldr	r1, .L84
 285 0026 0B6B     		ldr	r3, [r1, #48]
ARM GAS  /tmp/ccLCiAGb.s 			page 6


 286 0028 43F00303 		orr	r3, r3, #3
 287 002c 0B63     		str	r3, [r1, #48]
 288 002e 8B6E     		ldr	r3, [r1, #104]
 289 0030 1807     		lsls	r0, r3, #28
 290 0032 58BF     		it	pl
 291 0034 4FF40063 		movpl	r3, #2048
 292 0038 02D5     		bpl	.L76
 293 003a 04E0     		b	.L83
 294              	.L77:
 295 003c 013B     		subs	r3, r3, #1
 296 003e 04D0     		beq	.L75
 297              	.L76:
 298 0040 8A6E     		ldr	r2, [r1, #104]
 299 0042 1207     		lsls	r2, r2, #28
 300 0044 FAD5     		bpl	.L77
 301              	.L83:
 302 0046 0020     		movs	r0, #0
 303 0048 7047     		bx	lr
 304              	.L75:
 305 004a 0120     		movs	r0, #1
 306 004c 7047     		bx	lr
 307              	.L85:
 308 004e 00BF     		.align	2
 309              	.L84:
 310 0050 00060E40 		.word	1074660864
 311              		.size	pmc_switch_mck_to_upllck, .-pmc_switch_mck_to_upllck
 312              		.section	.text.pmc_switch_sclk_to_32kxtal,"ax",%progbits
 313              		.align	1
 314              		.p2align 2,,3
 315              		.global	pmc_switch_sclk_to_32kxtal
 316              		.syntax unified
 317              		.thumb
 318              		.thumb_func
 319              		.fpu softvfp
 320              		.type	pmc_switch_sclk_to_32kxtal, %function
 321              	pmc_switch_sclk_to_32kxtal:
 322              		@ args = 0, pretend = 0, frame = 0
 323              		@ frame_needed = 0, uses_anonymous_args = 0
 324              		@ link register save eliminated.
 325 0000 0128     		cmp	r0, #1
 326 0002 06D1     		bne	.L87
 327 0004 054A     		ldr	r2, .L88
 328 0006 9368     		ldr	r3, [r2, #8]
 329 0008 43F02543 		orr	r3, r3, #-1526726656
 330 000c 43F48013 		orr	r3, r3, #1048576
 331 0010 9360     		str	r3, [r2, #8]
 332              	.L87:
 333 0012 024B     		ldr	r3, .L88
 334 0014 024A     		ldr	r2, .L88+4
 335 0016 1A60     		str	r2, [r3]
 336 0018 7047     		bx	lr
 337              	.L89:
 338 001a 00BF     		.align	2
 339              	.L88:
 340 001c 101A0E40 		.word	1074666000
 341 0020 080000A5 		.word	-1526726648
 342              		.size	pmc_switch_sclk_to_32kxtal, .-pmc_switch_sclk_to_32kxtal
ARM GAS  /tmp/ccLCiAGb.s 			page 7


 343              		.section	.text.pmc_osc_is_ready_32kxtal,"ax",%progbits
 344              		.align	1
 345              		.p2align 2,,3
 346              		.global	pmc_osc_is_ready_32kxtal
 347              		.syntax unified
 348              		.thumb
 349              		.thumb_func
 350              		.fpu softvfp
 351              		.type	pmc_osc_is_ready_32kxtal, %function
 352              	pmc_osc_is_ready_32kxtal:
 353              		@ args = 0, pretend = 0, frame = 0
 354              		@ frame_needed = 0, uses_anonymous_args = 0
 355              		@ link register save eliminated.
 356 0000 054B     		ldr	r3, .L93
 357 0002 5869     		ldr	r0, [r3, #20]
 358 0004 10F08000 		ands	r0, r0, #128
 359 0008 05D0     		beq	.L91
 360 000a A3F5A053 		sub	r3, r3, #5120
 361 000e 103B     		subs	r3, r3, #16
 362 0010 986E     		ldr	r0, [r3, #104]
 363 0012 C0F3C010 		ubfx	r0, r0, #7, #1
 364              	.L91:
 365 0016 7047     		bx	lr
 366              	.L94:
 367              		.align	2
 368              	.L93:
 369 0018 101A0E40 		.word	1074666000
 370              		.size	pmc_osc_is_ready_32kxtal, .-pmc_osc_is_ready_32kxtal
 371              		.section	.text.pmc_switch_mainck_to_fastrc,"ax",%progbits
 372              		.align	1
 373              		.p2align 2,,3
 374              		.global	pmc_switch_mainck_to_fastrc
 375              		.syntax unified
 376              		.thumb
 377              		.thumb_func
 378              		.fpu softvfp
 379              		.type	pmc_switch_mainck_to_fastrc, %function
 380              	pmc_switch_mainck_to_fastrc:
 381              		@ args = 0, pretend = 0, frame = 0
 382              		@ frame_needed = 0, uses_anonymous_args = 0
 383              		@ link register save eliminated.
 384 0000 10B4     		push	{r4}
 385 0002 114C     		ldr	r4, .L103
 386 0004 2146     		mov	r1, r4
 387 0006 226A     		ldr	r2, [r4, #32]
 388 0008 42F45C12 		orr	r2, r2, #3604480
 389 000c 42F00802 		orr	r2, r2, #8
 390 0010 2262     		str	r2, [r4, #32]
 391              	.L96:
 392 0012 8B6E     		ldr	r3, [r1, #104]
 393 0014 9A03     		lsls	r2, r3, #14
 394 0016 FCD5     		bpl	.L96
 395 0018 0B6A     		ldr	r3, [r1, #32]
 396 001a 0B4A     		ldr	r2, .L103
 397 001c 23F45C13 		bic	r3, r3, #3604480
 398 0020 23F07003 		bic	r3, r3, #112
 399 0024 43F45C13 		orr	r3, r3, #3604480
ARM GAS  /tmp/ccLCiAGb.s 			page 8


 400 0028 1843     		orrs	r0, r0, r3
 401 002a 0862     		str	r0, [r1, #32]
 402              	.L97:
 403 002c 936E     		ldr	r3, [r2, #104]
 404 002e 9B03     		lsls	r3, r3, #14
 405 0030 FCD5     		bpl	.L97
 406 0032 136A     		ldr	r3, [r2, #32]
 407 0034 10BC     		pop	{r4}
 408 0036 23F09B73 		bic	r3, r3, #20316160
 409 003a 23F48033 		bic	r3, r3, #65536
 410 003e 43F45C13 		orr	r3, r3, #3604480
 411 0042 1362     		str	r3, [r2, #32]
 412 0044 7047     		bx	lr
 413              	.L104:
 414 0046 00BF     		.align	2
 415              	.L103:
 416 0048 00060E40 		.word	1074660864
 417              		.size	pmc_switch_mainck_to_fastrc, .-pmc_switch_mainck_to_fastrc
 418              		.section	.text.pmc_osc_enable_fastrc,"ax",%progbits
 419              		.align	1
 420              		.p2align 2,,3
 421              		.global	pmc_osc_enable_fastrc
 422              		.syntax unified
 423              		.thumb
 424              		.thumb_func
 425              		.fpu softvfp
 426              		.type	pmc_osc_enable_fastrc, %function
 427              	pmc_osc_enable_fastrc:
 428              		@ args = 0, pretend = 0, frame = 0
 429              		@ frame_needed = 0, uses_anonymous_args = 0
 430              		@ link register save eliminated.
 431 0000 10B4     		push	{r4}
 432 0002 0D4C     		ldr	r4, .L113
 433 0004 2246     		mov	r2, r4
 434 0006 216A     		ldr	r1, [r4, #32]
 435 0008 41F45C11 		orr	r1, r1, #3604480
 436 000c 41F00801 		orr	r1, r1, #8
 437 0010 2162     		str	r1, [r4, #32]
 438              	.L106:
 439 0012 936E     		ldr	r3, [r2, #104]
 440 0014 9903     		lsls	r1, r3, #14
 441 0016 FCD5     		bpl	.L106
 442 0018 136A     		ldr	r3, [r2, #32]
 443 001a 0749     		ldr	r1, .L113
 444 001c 23F45C13 		bic	r3, r3, #3604480
 445 0020 23F07003 		bic	r3, r3, #112
 446 0024 43F45C13 		orr	r3, r3, #3604480
 447 0028 1843     		orrs	r0, r0, r3
 448 002a 1062     		str	r0, [r2, #32]
 449              	.L107:
 450 002c 8B6E     		ldr	r3, [r1, #104]
 451 002e 9B03     		lsls	r3, r3, #14
 452 0030 FCD5     		bpl	.L107
 453 0032 10BC     		pop	{r4}
 454 0034 7047     		bx	lr
 455              	.L114:
 456 0036 00BF     		.align	2
ARM GAS  /tmp/ccLCiAGb.s 			page 9


 457              	.L113:
 458 0038 00060E40 		.word	1074660864
 459              		.size	pmc_osc_enable_fastrc, .-pmc_osc_enable_fastrc
 460              		.section	.text.pmc_osc_disable_fastrc,"ax",%progbits
 461              		.align	1
 462              		.p2align 2,,3
 463              		.global	pmc_osc_disable_fastrc
 464              		.syntax unified
 465              		.thumb
 466              		.thumb_func
 467              		.fpu softvfp
 468              		.type	pmc_osc_disable_fastrc, %function
 469              	pmc_osc_disable_fastrc:
 470              		@ args = 0, pretend = 0, frame = 0
 471              		@ frame_needed = 0, uses_anonymous_args = 0
 472              		@ link register save eliminated.
 473 0000 044A     		ldr	r2, .L116
 474 0002 136A     		ldr	r3, [r2, #32]
 475 0004 23F45C13 		bic	r3, r3, #3604480
 476 0008 23F07803 		bic	r3, r3, #120
 477 000c 43F45C13 		orr	r3, r3, #3604480
 478 0010 1362     		str	r3, [r2, #32]
 479 0012 7047     		bx	lr
 480              	.L117:
 481              		.align	2
 482              	.L116:
 483 0014 00060E40 		.word	1074660864
 484              		.size	pmc_osc_disable_fastrc, .-pmc_osc_disable_fastrc
 485              		.section	.text.pmc_osc_is_ready_fastrc,"ax",%progbits
 486              		.align	1
 487              		.p2align 2,,3
 488              		.global	pmc_osc_is_ready_fastrc
 489              		.syntax unified
 490              		.thumb
 491              		.thumb_func
 492              		.fpu softvfp
 493              		.type	pmc_osc_is_ready_fastrc, %function
 494              	pmc_osc_is_ready_fastrc:
 495              		@ args = 0, pretend = 0, frame = 0
 496              		@ frame_needed = 0, uses_anonymous_args = 0
 497              		@ link register save eliminated.
 498 0000 024B     		ldr	r3, .L119
 499 0002 986E     		ldr	r0, [r3, #104]
 500 0004 00F40030 		and	r0, r0, #131072
 501 0008 7047     		bx	lr
 502              	.L120:
 503 000a 00BF     		.align	2
 504              	.L119:
 505 000c 00060E40 		.word	1074660864
 506              		.size	pmc_osc_is_ready_fastrc, .-pmc_osc_is_ready_fastrc
 507              		.section	.text.pmc_osc_enable_main_xtal,"ax",%progbits
 508              		.align	1
 509              		.p2align 2,,3
 510              		.global	pmc_osc_enable_main_xtal
 511              		.syntax unified
 512              		.thumb
 513              		.thumb_func
ARM GAS  /tmp/ccLCiAGb.s 			page 10


 514              		.fpu softvfp
 515              		.type	pmc_osc_enable_main_xtal, %function
 516              	pmc_osc_enable_main_xtal:
 517              		@ args = 0, pretend = 0, frame = 0
 518              		@ frame_needed = 0, uses_anonymous_args = 0
 519              		@ link register save eliminated.
 520 0000 0849     		ldr	r1, .L125
 521 0002 0002     		lsls	r0, r0, #8
 522 0004 0A46     		mov	r2, r1
 523 0006 0B6A     		ldr	r3, [r1, #32]
 524 0008 80B2     		uxth	r0, r0
 525 000a 23F00303 		bic	r3, r3, #3
 526 000e 43F45C13 		orr	r3, r3, #3604480
 527 0012 43F00103 		orr	r3, r3, #1
 528 0016 0343     		orrs	r3, r3, r0
 529 0018 0B62     		str	r3, [r1, #32]
 530              	.L122:
 531 001a 936E     		ldr	r3, [r2, #104]
 532 001c DB07     		lsls	r3, r3, #31
 533 001e FCD5     		bpl	.L122
 534 0020 7047     		bx	lr
 535              	.L126:
 536 0022 00BF     		.align	2
 537              	.L125:
 538 0024 00060E40 		.word	1074660864
 539              		.size	pmc_osc_enable_main_xtal, .-pmc_osc_enable_main_xtal
 540              		.section	.text.pmc_osc_bypass_main_xtal,"ax",%progbits
 541              		.align	1
 542              		.p2align 2,,3
 543              		.global	pmc_osc_bypass_main_xtal
 544              		.syntax unified
 545              		.thumb
 546              		.thumb_func
 547              		.fpu softvfp
 548              		.type	pmc_osc_bypass_main_xtal, %function
 549              	pmc_osc_bypass_main_xtal:
 550              		@ args = 0, pretend = 0, frame = 0
 551              		@ frame_needed = 0, uses_anonymous_args = 0
 552              		@ link register save eliminated.
 553 0000 044A     		ldr	r2, .L128
 554 0002 136A     		ldr	r3, [r2, #32]
 555 0004 23F00303 		bic	r3, r3, #3
 556 0008 43F45C13 		orr	r3, r3, #3604480
 557 000c 43F00203 		orr	r3, r3, #2
 558 0010 1362     		str	r3, [r2, #32]
 559 0012 7047     		bx	lr
 560              	.L129:
 561              		.align	2
 562              	.L128:
 563 0014 00060E40 		.word	1074660864
 564              		.size	pmc_osc_bypass_main_xtal, .-pmc_osc_bypass_main_xtal
 565              		.section	.text.pmc_osc_disable_main_xtal,"ax",%progbits
 566              		.align	1
 567              		.p2align 2,,3
 568              		.global	pmc_osc_disable_main_xtal
 569              		.syntax unified
 570              		.thumb
ARM GAS  /tmp/ccLCiAGb.s 			page 11


 571              		.thumb_func
 572              		.fpu softvfp
 573              		.type	pmc_osc_disable_main_xtal, %function
 574              	pmc_osc_disable_main_xtal:
 575              		@ args = 0, pretend = 0, frame = 0
 576              		@ frame_needed = 0, uses_anonymous_args = 0
 577              		@ link register save eliminated.
 578 0000 034A     		ldr	r2, .L131
 579 0002 136A     		ldr	r3, [r2, #32]
 580 0004 23F00303 		bic	r3, r3, #3
 581 0008 43F45C13 		orr	r3, r3, #3604480
 582 000c 1362     		str	r3, [r2, #32]
 583 000e 7047     		bx	lr
 584              	.L132:
 585              		.align	2
 586              	.L131:
 587 0010 00060E40 		.word	1074660864
 588              		.size	pmc_osc_disable_main_xtal, .-pmc_osc_disable_main_xtal
 589              		.section	.text.pmc_osc_is_bypassed_main_xtal,"ax",%progbits
 590              		.align	1
 591              		.p2align 2,,3
 592              		.global	pmc_osc_is_bypassed_main_xtal
 593              		.syntax unified
 594              		.thumb
 595              		.thumb_func
 596              		.fpu softvfp
 597              		.type	pmc_osc_is_bypassed_main_xtal, %function
 598              	pmc_osc_is_bypassed_main_xtal:
 599              		@ args = 0, pretend = 0, frame = 0
 600              		@ frame_needed = 0, uses_anonymous_args = 0
 601              		@ link register save eliminated.
 602 0000 024B     		ldr	r3, .L134
 603 0002 186A     		ldr	r0, [r3, #32]
 604 0004 00F00200 		and	r0, r0, #2
 605 0008 7047     		bx	lr
 606              	.L135:
 607 000a 00BF     		.align	2
 608              	.L134:
 609 000c 00060E40 		.word	1074660864
 610              		.size	pmc_osc_is_bypassed_main_xtal, .-pmc_osc_is_bypassed_main_xtal
 611              		.section	.text.pmc_osc_is_ready_main_xtal,"ax",%progbits
 612              		.align	1
 613              		.p2align 2,,3
 614              		.global	pmc_osc_is_ready_main_xtal
 615              		.syntax unified
 616              		.thumb
 617              		.thumb_func
 618              		.fpu softvfp
 619              		.type	pmc_osc_is_ready_main_xtal, %function
 620              	pmc_osc_is_ready_main_xtal:
 621              		@ args = 0, pretend = 0, frame = 0
 622              		@ frame_needed = 0, uses_anonymous_args = 0
 623              		@ link register save eliminated.
 624 0000 024B     		ldr	r3, .L137
 625 0002 986E     		ldr	r0, [r3, #104]
 626 0004 00F00100 		and	r0, r0, #1
 627 0008 7047     		bx	lr
ARM GAS  /tmp/ccLCiAGb.s 			page 12


 628              	.L138:
 629 000a 00BF     		.align	2
 630              	.L137:
 631 000c 00060E40 		.word	1074660864
 632              		.size	pmc_osc_is_ready_main_xtal, .-pmc_osc_is_ready_main_xtal
 633              		.section	.text.pmc_switch_mainck_to_xtal,"ax",%progbits
 634              		.align	1
 635              		.p2align 2,,3
 636              		.global	pmc_switch_mainck_to_xtal
 637              		.syntax unified
 638              		.thumb
 639              		.thumb_func
 640              		.fpu softvfp
 641              		.type	pmc_switch_mainck_to_xtal, %function
 642              	pmc_switch_mainck_to_xtal:
 643              		@ args = 0, pretend = 0, frame = 0
 644              		@ frame_needed = 0, uses_anonymous_args = 0
 645              		@ link register save eliminated.
 646 0000 C0B9     		cbnz	r0, .L145
 647 0002 1048     		ldr	r0, .L146
 648 0004 0902     		lsls	r1, r1, #8
 649 0006 0246     		mov	r2, r0
 650 0008 036A     		ldr	r3, [r0, #32]
 651 000a 89B2     		uxth	r1, r1
 652 000c 23F45C13 		bic	r3, r3, #3604480
 653 0010 23F00303 		bic	r3, r3, #3
 654 0014 43F45C13 		orr	r3, r3, #3604480
 655 0018 43F00103 		orr	r3, r3, #1
 656 001c 0B43     		orrs	r3, r3, r1
 657 001e 0362     		str	r3, [r0, #32]
 658              	.L142:
 659 0020 936E     		ldr	r3, [r2, #104]
 660 0022 DB07     		lsls	r3, r3, #31
 661 0024 FCD5     		bpl	.L142
 662 0026 136A     		ldr	r3, [r2, #32]
 663 0028 43F09B73 		orr	r3, r3, #20316160
 664 002c 43F48033 		orr	r3, r3, #65536
 665 0030 1362     		str	r3, [r2, #32]
 666 0032 7047     		bx	lr
 667              	.L145:
 668 0034 0349     		ldr	r1, .L146
 669 0036 044A     		ldr	r2, .L146+4
 670 0038 086A     		ldr	r0, [r1, #32]
 671 003a 044B     		ldr	r3, .L146+8
 672 003c 0240     		ands	r2, r2, r0
 673 003e 1343     		orrs	r3, r3, r2
 674 0040 0B62     		str	r3, [r1, #32]
 675 0042 7047     		bx	lr
 676              	.L147:
 677              		.align	2
 678              	.L146:
 679 0044 00060E40 		.word	1074660864
 680 0048 FCFFC8FE 		.word	-20381700
 681 004c 02003701 		.word	20381698
 682              		.size	pmc_switch_mainck_to_xtal, .-pmc_switch_mainck_to_xtal
 683              		.section	.text.pmc_osc_disable_xtal,"ax",%progbits
 684              		.align	1
ARM GAS  /tmp/ccLCiAGb.s 			page 13


 685              		.p2align 2,,3
 686              		.global	pmc_osc_disable_xtal
 687              		.syntax unified
 688              		.thumb
 689              		.thumb_func
 690              		.fpu softvfp
 691              		.type	pmc_osc_disable_xtal, %function
 692              	pmc_osc_disable_xtal:
 693              		@ args = 0, pretend = 0, frame = 0
 694              		@ frame_needed = 0, uses_anonymous_args = 0
 695              		@ link register save eliminated.
 696 0000 084A     		ldr	r2, .L152
 697 0002 136A     		ldr	r3, [r2, #32]
 698 0004 23F45C13 		bic	r3, r3, #3604480
 699 0008 28B9     		cbnz	r0, .L151
 700 000a 23F00103 		bic	r3, r3, #1
 701 000e 43F45C13 		orr	r3, r3, #3604480
 702 0012 1362     		str	r3, [r2, #32]
 703 0014 7047     		bx	lr
 704              	.L151:
 705 0016 23F00203 		bic	r3, r3, #2
 706 001a 43F45C13 		orr	r3, r3, #3604480
 707 001e 1362     		str	r3, [r2, #32]
 708 0020 7047     		bx	lr
 709              	.L153:
 710 0022 00BF     		.align	2
 711              	.L152:
 712 0024 00060E40 		.word	1074660864
 713              		.size	pmc_osc_disable_xtal, .-pmc_osc_disable_xtal
 714              		.section	.text.pmc_osc_is_ready_mainck,"ax",%progbits
 715              		.align	1
 716              		.p2align 2,,3
 717              		.global	pmc_osc_is_ready_mainck
 718              		.syntax unified
 719              		.thumb
 720              		.thumb_func
 721              		.fpu softvfp
 722              		.type	pmc_osc_is_ready_mainck, %function
 723              	pmc_osc_is_ready_mainck:
 724              		@ args = 0, pretend = 0, frame = 0
 725              		@ frame_needed = 0, uses_anonymous_args = 0
 726              		@ link register save eliminated.
 727 0000 024B     		ldr	r3, .L155
 728 0002 986E     		ldr	r0, [r3, #104]
 729 0004 00F48030 		and	r0, r0, #65536
 730 0008 7047     		bx	lr
 731              	.L156:
 732 000a 00BF     		.align	2
 733              	.L155:
 734 000c 00060E40 		.word	1074660864
 735              		.size	pmc_osc_is_ready_mainck, .-pmc_osc_is_ready_mainck
 736              		.section	.text.pmc_mainck_osc_select,"ax",%progbits
 737              		.align	1
 738              		.p2align 2,,3
 739              		.global	pmc_mainck_osc_select
 740              		.syntax unified
 741              		.thumb
ARM GAS  /tmp/ccLCiAGb.s 			page 14


 742              		.thumb_func
 743              		.fpu softvfp
 744              		.type	pmc_mainck_osc_select, %function
 745              	pmc_mainck_osc_select:
 746              		@ args = 0, pretend = 0, frame = 0
 747              		@ frame_needed = 0, uses_anonymous_args = 0
 748              		@ link register save eliminated.
 749 0000 084B     		ldr	r3, .L161
 750 0002 1B6A     		ldr	r3, [r3, #32]
 751 0004 30B9     		cbnz	r0, .L160
 752 0006 23F08073 		bic	r3, r3, #16777216
 753 000a 064A     		ldr	r2, .L161
 754 000c 43F45C13 		orr	r3, r3, #3604480
 755 0010 1362     		str	r3, [r2, #32]
 756 0012 7047     		bx	lr
 757              	.L160:
 758 0014 43F08073 		orr	r3, r3, #16777216
 759 0018 024A     		ldr	r2, .L161
 760 001a 43F45C13 		orr	r3, r3, #3604480
 761 001e 1362     		str	r3, [r2, #32]
 762 0020 7047     		bx	lr
 763              	.L162:
 764 0022 00BF     		.align	2
 765              	.L161:
 766 0024 00060E40 		.word	1074660864
 767              		.size	pmc_mainck_osc_select, .-pmc_mainck_osc_select
 768              		.section	.text.pmc_enable_pllack,"ax",%progbits
 769              		.align	1
 770              		.p2align 2,,3
 771              		.global	pmc_enable_pllack
 772              		.syntax unified
 773              		.thumb
 774              		.thumb_func
 775              		.fpu softvfp
 776              		.type	pmc_enable_pllack, %function
 777              	pmc_enable_pllack:
 778              		@ args = 0, pretend = 0, frame = 0
 779              		@ frame_needed = 0, uses_anonymous_args = 0
 780              		@ link register save eliminated.
 781 0000 70B4     		push	{r4, r5, r6}
 782 0002 4FF00056 		mov	r6, #536870912
 783 0006 094D     		ldr	r5, .L168
 784 0008 094B     		ldr	r3, .L168+4
 785 000a 2C46     		mov	r4, r5
 786 000c 03EA0043 		and	r3, r3, r0, lsl #16
 787 0010 D2B2     		uxtb	r2, r2
 788 0012 0902     		lsls	r1, r1, #8
 789 0014 3343     		orrs	r3, r3, r6
 790 0016 01F47C51 		and	r1, r1, #16128
 791 001a 1343     		orrs	r3, r3, r2
 792 001c 0B43     		orrs	r3, r3, r1
 793 001e AE62     		str	r6, [r5, #40]
 794 0020 AB62     		str	r3, [r5, #40]
 795              	.L164:
 796 0022 A36E     		ldr	r3, [r4, #104]
 797 0024 9B07     		lsls	r3, r3, #30
 798 0026 FCD5     		bpl	.L164
ARM GAS  /tmp/ccLCiAGb.s 			page 15


 799 0028 70BC     		pop	{r4, r5, r6}
 800 002a 7047     		bx	lr
 801              	.L169:
 802              		.align	2
 803              	.L168:
 804 002c 00060E40 		.word	1074660864
 805 0030 0000FF07 		.word	134152192
 806              		.size	pmc_enable_pllack, .-pmc_enable_pllack
 807              		.section	.text.pmc_disable_pllack,"ax",%progbits
 808              		.align	1
 809              		.p2align 2,,3
 810              		.global	pmc_disable_pllack
 811              		.syntax unified
 812              		.thumb
 813              		.thumb_func
 814              		.fpu softvfp
 815              		.type	pmc_disable_pllack, %function
 816              	pmc_disable_pllack:
 817              		@ args = 0, pretend = 0, frame = 0
 818              		@ frame_needed = 0, uses_anonymous_args = 0
 819              		@ link register save eliminated.
 820 0000 4FF00052 		mov	r2, #536870912
 821 0004 014B     		ldr	r3, .L171
 822 0006 9A62     		str	r2, [r3, #40]
 823 0008 7047     		bx	lr
 824              	.L172:
 825 000a 00BF     		.align	2
 826              	.L171:
 827 000c 00060E40 		.word	1074660864
 828              		.size	pmc_disable_pllack, .-pmc_disable_pllack
 829              		.section	.text.pmc_is_locked_pllack,"ax",%progbits
 830              		.align	1
 831              		.p2align 2,,3
 832              		.global	pmc_is_locked_pllack
 833              		.syntax unified
 834              		.thumb
 835              		.thumb_func
 836              		.fpu softvfp
 837              		.type	pmc_is_locked_pllack, %function
 838              	pmc_is_locked_pllack:
 839              		@ args = 0, pretend = 0, frame = 0
 840              		@ frame_needed = 0, uses_anonymous_args = 0
 841              		@ link register save eliminated.
 842 0000 024B     		ldr	r3, .L174
 843 0002 986E     		ldr	r0, [r3, #104]
 844 0004 00F00200 		and	r0, r0, #2
 845 0008 7047     		bx	lr
 846              	.L175:
 847 000a 00BF     		.align	2
 848              	.L174:
 849 000c 00060E40 		.word	1074660864
 850              		.size	pmc_is_locked_pllack, .-pmc_is_locked_pllack
 851              		.section	.text.pmc_enable_upll_clock,"ax",%progbits
 852              		.align	1
 853              		.p2align 2,,3
 854              		.global	pmc_enable_upll_clock
 855              		.syntax unified
ARM GAS  /tmp/ccLCiAGb.s 			page 16


 856              		.thumb
 857              		.thumb_func
 858              		.fpu softvfp
 859              		.type	pmc_enable_upll_clock, %function
 860              	pmc_enable_upll_clock:
 861              		@ args = 0, pretend = 0, frame = 0
 862              		@ frame_needed = 0, uses_anonymous_args = 0
 863              		@ link register save eliminated.
 864 0000 044B     		ldr	r3, .L180
 865 0002 4FF44411 		mov	r1, #3211264
 866 0006 1A46     		mov	r2, r3
 867 0008 D961     		str	r1, [r3, #28]
 868              	.L177:
 869 000a 936E     		ldr	r3, [r2, #104]
 870 000c 5B06     		lsls	r3, r3, #25
 871 000e FCD5     		bpl	.L177
 872 0010 7047     		bx	lr
 873              	.L181:
 874 0012 00BF     		.align	2
 875              	.L180:
 876 0014 00060E40 		.word	1074660864
 877              		.size	pmc_enable_upll_clock, .-pmc_enable_upll_clock
 878              		.section	.text.pmc_disable_upll_clock,"ax",%progbits
 879              		.align	1
 880              		.p2align 2,,3
 881              		.global	pmc_disable_upll_clock
 882              		.syntax unified
 883              		.thumb
 884              		.thumb_func
 885              		.fpu softvfp
 886              		.type	pmc_disable_upll_clock, %function
 887              	pmc_disable_upll_clock:
 888              		@ args = 0, pretend = 0, frame = 0
 889              		@ frame_needed = 0, uses_anonymous_args = 0
 890              		@ link register save eliminated.
 891 0000 024A     		ldr	r2, .L183
 892 0002 D369     		ldr	r3, [r2, #28]
 893 0004 23F48033 		bic	r3, r3, #65536
 894 0008 D361     		str	r3, [r2, #28]
 895 000a 7047     		bx	lr
 896              	.L184:
 897              		.align	2
 898              	.L183:
 899 000c 00060E40 		.word	1074660864
 900              		.size	pmc_disable_upll_clock, .-pmc_disable_upll_clock
 901              		.section	.text.pmc_is_locked_upll,"ax",%progbits
 902              		.align	1
 903              		.p2align 2,,3
 904              		.global	pmc_is_locked_upll
 905              		.syntax unified
 906              		.thumb
 907              		.thumb_func
 908              		.fpu softvfp
 909              		.type	pmc_is_locked_upll, %function
 910              	pmc_is_locked_upll:
 911              		@ args = 0, pretend = 0, frame = 0
 912              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccLCiAGb.s 			page 17


 913              		@ link register save eliminated.
 914 0000 024B     		ldr	r3, .L186
 915 0002 986E     		ldr	r0, [r3, #104]
 916 0004 00F04000 		and	r0, r0, #64
 917 0008 7047     		bx	lr
 918              	.L187:
 919 000a 00BF     		.align	2
 920              	.L186:
 921 000c 00060E40 		.word	1074660864
 922              		.size	pmc_is_locked_upll, .-pmc_is_locked_upll
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
 936 0000 2C28     		cmp	r0, #44
 937 0002 19D8     		bhi	.L191
 938 0004 1F28     		cmp	r0, #31
 939 0006 4FF00103 		mov	r3, #1
 940 000a 0D4A     		ldr	r2, .L194
 941 000c 08D8     		bhi	.L190
 942 000e 03FA00F0 		lsl	r0, r3, r0
 943 0012 9369     		ldr	r3, [r2, #24]
 944 0014 30EA0303 		bics	r3, r0, r3
 945 0018 10D0     		beq	.L193
 946 001a 1061     		str	r0, [r2, #16]
 947 001c 0020     		movs	r0, #0
 948 001e 7047     		bx	lr
 949              	.L190:
 950 0020 2038     		subs	r0, r0, #32
 951 0022 D2F80811 		ldr	r1, [r2, #264]
 952 0026 03FA00F0 		lsl	r0, r3, r0
 953 002a 30EA0103 		bics	r3, r0, r1
 954 002e 05D0     		beq	.L193
 955 0030 C2F80001 		str	r0, [r2, #256]
 956 0034 0020     		movs	r0, #0
 957 0036 7047     		bx	lr
 958              	.L191:
 959 0038 0120     		movs	r0, #1
 960 003a 7047     		bx	lr
 961              	.L193:
 962 003c 0020     		movs	r0, #0
 963 003e 7047     		bx	lr
 964              	.L195:
 965              		.align	2
 966              	.L194:
 967 0040 00060E40 		.word	1074660864
 968              		.size	pmc_enable_periph_clk, .-pmc_enable_periph_clk
 969              		.section	.text.pmc_disable_periph_clk,"ax",%progbits
ARM GAS  /tmp/ccLCiAGb.s 			page 18


 970              		.align	1
 971              		.p2align 2,,3
 972              		.global	pmc_disable_periph_clk
 973              		.syntax unified
 974              		.thumb
 975              		.thumb_func
 976              		.fpu softvfp
 977              		.type	pmc_disable_periph_clk, %function
 978              	pmc_disable_periph_clk:
 979              		@ args = 0, pretend = 0, frame = 0
 980              		@ frame_needed = 0, uses_anonymous_args = 0
 981              		@ link register save eliminated.
 982 0000 2C28     		cmp	r0, #44
 983 0002 18D8     		bhi	.L199
 984 0004 1F28     		cmp	r0, #31
 985 0006 4FF00103 		mov	r3, #1
 986 000a 0D4A     		ldr	r2, .L203
 987 000c 07D8     		bhi	.L198
 988 000e 03FA00F0 		lsl	r0, r3, r0
 989 0012 9369     		ldr	r3, [r2, #24]
 990 0014 30EA0303 		bics	r3, r0, r3
 991 0018 0FD0     		beq	.L202
 992              	.L201:
 993 001a 0020     		movs	r0, #0
 994 001c 7047     		bx	lr
 995              	.L198:
 996 001e 2038     		subs	r0, r0, #32
 997 0020 D2F80811 		ldr	r1, [r2, #264]
 998 0024 03FA00F0 		lsl	r0, r3, r0
 999 0028 30EA0103 		bics	r3, r0, r1
 1000 002c F5D1     		bne	.L201
 1001 002e C2F80401 		str	r0, [r2, #260]
 1002 0032 0020     		movs	r0, #0
 1003 0034 7047     		bx	lr
 1004              	.L199:
 1005 0036 0120     		movs	r0, #1
 1006 0038 7047     		bx	lr
 1007              	.L202:
 1008 003a 5061     		str	r0, [r2, #20]
 1009 003c 0020     		movs	r0, #0
 1010 003e 7047     		bx	lr
 1011              	.L204:
 1012              		.align	2
 1013              	.L203:
 1014 0040 00060E40 		.word	1074660864
 1015              		.size	pmc_disable_periph_clk, .-pmc_disable_periph_clk
 1016              		.section	.text.pmc_enable_all_periph_clk,"ax",%progbits
 1017              		.align	1
 1018              		.p2align 2,,3
 1019              		.global	pmc_enable_all_periph_clk
 1020              		.syntax unified
 1021              		.thumb
 1022              		.thumb_func
 1023              		.fpu softvfp
 1024              		.type	pmc_enable_all_periph_clk, %function
 1025              	pmc_enable_all_periph_clk:
 1026              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccLCiAGb.s 			page 19


 1027              		@ frame_needed = 0, uses_anonymous_args = 0
 1028              		@ link register save eliminated.
 1029 0000 094B     		ldr	r3, .L210
 1030 0002 6FF00301 		mvn	r1, #3
 1031 0006 1A46     		mov	r2, r3
 1032 0008 1961     		str	r1, [r3, #16]
 1033              	.L206:
 1034 000a 9369     		ldr	r3, [r2, #24]
 1035 000c 23F00303 		bic	r3, r3, #3
 1036 0010 0433     		adds	r3, r3, #4
 1037 0012 FAD1     		bne	.L206
 1038 0014 4FF0FF33 		mov	r3, #-1
 1039 0018 0349     		ldr	r1, .L210
 1040 001a C2F80031 		str	r3, [r2, #256]
 1041              	.L207:
 1042 001e D1F80831 		ldr	r3, [r1, #264]
 1043 0022 0133     		adds	r3, r3, #1
 1044 0024 FBD1     		bne	.L207
 1045 0026 7047     		bx	lr
 1046              	.L211:
 1047              		.align	2
 1048              	.L210:
 1049 0028 00060E40 		.word	1074660864
 1050              		.size	pmc_enable_all_periph_clk, .-pmc_enable_all_periph_clk
 1051              		.section	.text.pmc_disable_all_periph_clk,"ax",%progbits
 1052              		.align	1
 1053              		.p2align 2,,3
 1054              		.global	pmc_disable_all_periph_clk
 1055              		.syntax unified
 1056              		.thumb
 1057              		.thumb_func
 1058              		.fpu softvfp
 1059              		.type	pmc_disable_all_periph_clk, %function
 1060              	pmc_disable_all_periph_clk:
 1061              		@ args = 0, pretend = 0, frame = 0
 1062              		@ frame_needed = 0, uses_anonymous_args = 0
 1063              		@ link register save eliminated.
 1064 0000 094B     		ldr	r3, .L217
 1065 0002 6FF00301 		mvn	r1, #3
 1066 0006 1A46     		mov	r2, r3
 1067 0008 5961     		str	r1, [r3, #20]
 1068              	.L213:
 1069 000a 9369     		ldr	r3, [r2, #24]
 1070 000c 33F00303 		bics	r3, r3, #3
 1071 0010 FBD1     		bne	.L213
 1072 0012 4FF0FF33 		mov	r3, #-1
 1073 0016 0449     		ldr	r1, .L217
 1074 0018 C2F80431 		str	r3, [r2, #260]
 1075              	.L214:
 1076 001c D1F80831 		ldr	r3, [r1, #264]
 1077 0020 002B     		cmp	r3, #0
 1078 0022 FBD1     		bne	.L214
 1079 0024 7047     		bx	lr
 1080              	.L218:
 1081 0026 00BF     		.align	2
 1082              	.L217:
 1083 0028 00060E40 		.word	1074660864
ARM GAS  /tmp/ccLCiAGb.s 			page 20


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
 1098 0000 2C28     		cmp	r0, #44
 1099 0002 16D8     		bhi	.L222
 1100 0004 1F28     		cmp	r0, #31
 1101 0006 4FF00103 		mov	r3, #1
 1102 000a 0B4A     		ldr	r2, .L223
 1103 000c 07D8     		bhi	.L221
 1104 000e 03FA00F0 		lsl	r0, r3, r0
 1105 0012 9369     		ldr	r3, [r2, #24]
 1106 0014 1842     		tst	r0, r3
 1107 0016 14BF     		ite	ne
 1108 0018 0120     		movne	r0, #1
 1109 001a 0020     		moveq	r0, #0
 1110 001c 7047     		bx	lr
 1111              	.L221:
 1112 001e D2F80821 		ldr	r2, [r2, #264]
 1113 0022 2038     		subs	r0, r0, #32
 1114 0024 03FA00F0 		lsl	r0, r3, r0
 1115 0028 1042     		tst	r0, r2
 1116 002a 14BF     		ite	ne
 1117 002c 1846     		movne	r0, r3
 1118 002e 0020     		moveq	r0, #0
 1119 0030 7047     		bx	lr
 1120              	.L222:
 1121 0032 0020     		movs	r0, #0
 1122 0034 7047     		bx	lr
 1123              	.L224:
 1124 0036 00BF     		.align	2
 1125              	.L223:
 1126 0038 00060E40 		.word	1074660864
 1127              		.size	pmc_is_periph_clk_enabled, .-pmc_is_periph_clk_enabled
 1128              		.section	.text.pmc_pck_set_prescaler,"ax",%progbits
 1129              		.align	1
 1130              		.p2align 2,,3
 1131              		.global	pmc_pck_set_prescaler
 1132              		.syntax unified
 1133              		.thumb
 1134              		.thumb_func
 1135              		.fpu softvfp
 1136              		.type	pmc_pck_set_prescaler, %function
 1137              	pmc_pck_set_prescaler:
 1138              		@ args = 0, pretend = 0, frame = 0
 1139              		@ frame_needed = 0, uses_anonymous_args = 0
 1140              		@ link register save eliminated.
ARM GAS  /tmp/ccLCiAGb.s 			page 21


 1141 0000 4FF48073 		mov	r3, #256
 1142 0004 30B4     		push	{r4, r5}
 1143 0006 0A4C     		ldr	r4, .L235
 1144 0008 2246     		mov	r2, r4
 1145 000a 04EB8004 		add	r4, r4, r0, lsl #2
 1146 000e 256C     		ldr	r5, [r4, #64]
 1147 0010 03FA00F0 		lsl	r0, r3, r0
 1148 0014 25F07003 		bic	r3, r5, #112
 1149 0018 1943     		orrs	r1, r1, r3
 1150 001a 2164     		str	r1, [r4, #64]
 1151 001c 02E0     		b	.L227
 1152              	.L234:
 1153 001e 936E     		ldr	r3, [r2, #104]
 1154 0020 0342     		tst	r3, r0
 1155 0022 02D1     		bne	.L225
 1156              	.L227:
 1157 0024 1368     		ldr	r3, [r2]
 1158 0026 0342     		tst	r3, r0
 1159 0028 F9D1     		bne	.L234
 1160              	.L225:
 1161 002a 30BC     		pop	{r4, r5}
 1162 002c 7047     		bx	lr
 1163              	.L236:
 1164 002e 00BF     		.align	2
 1165              	.L235:
 1166 0030 00060E40 		.word	1074660864
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
 1181 0000 4FF48073 		mov	r3, #256
 1182 0004 30B4     		push	{r4, r5}
 1183 0006 0A4C     		ldr	r4, .L247
 1184 0008 2246     		mov	r2, r4
 1185 000a 04EB8004 		add	r4, r4, r0, lsl #2
 1186 000e 256C     		ldr	r5, [r4, #64]
 1187 0010 03FA00F0 		lsl	r0, r3, r0
 1188 0014 25F00703 		bic	r3, r5, #7
 1189 0018 1943     		orrs	r1, r1, r3
 1190 001a 2164     		str	r1, [r4, #64]
 1191 001c 02E0     		b	.L239
 1192              	.L246:
 1193 001e 936E     		ldr	r3, [r2, #104]
 1194 0020 0342     		tst	r3, r0
 1195 0022 02D1     		bne	.L237
 1196              	.L239:
 1197 0024 1368     		ldr	r3, [r2]
ARM GAS  /tmp/ccLCiAGb.s 			page 22


 1198 0026 0342     		tst	r3, r0
 1199 0028 F9D1     		bne	.L246
 1200              	.L237:
 1201 002a 30BC     		pop	{r4, r5}
 1202 002c 7047     		bx	lr
 1203              	.L248:
 1204 002e 00BF     		.align	2
 1205              	.L247:
 1206 0030 00060E40 		.word	1074660864
 1207              		.size	pmc_pck_set_source, .-pmc_pck_set_source
 1208              		.section	.text.pmc_switch_pck_to_sclk,"ax",%progbits
 1209              		.align	1
 1210              		.p2align 2,,3
 1211              		.global	pmc_switch_pck_to_sclk
 1212              		.syntax unified
 1213              		.thumb
 1214              		.thumb_func
 1215              		.fpu softvfp
 1216              		.type	pmc_switch_pck_to_sclk, %function
 1217              	pmc_switch_pck_to_sclk:
 1218              		@ args = 0, pretend = 0, frame = 0
 1219              		@ frame_needed = 0, uses_anonymous_args = 0
 1220              		@ link register save eliminated.
 1221 0000 4FF48072 		mov	r2, #256
 1222 0004 0C4B     		ldr	r3, .L260
 1223 0006 10B4     		push	{r4}
 1224 0008 00F11004 		add	r4, r0, #16
 1225 000c 43F82410 		str	r1, [r3, r4, lsl #2]
 1226 0010 996E     		ldr	r1, [r3, #104]
 1227 0012 02FA00F0 		lsl	r0, r2, r0
 1228 0016 0142     		tst	r1, r0
 1229 0018 08D1     		bne	.L257
 1230 001a 1946     		mov	r1, r3
 1231 001c 4FF40063 		mov	r3, #2048
 1232 0020 01E0     		b	.L252
 1233              	.L253:
 1234 0022 013B     		subs	r3, r3, #1
 1235 0024 05D0     		beq	.L259
 1236              	.L252:
 1237 0026 8A6E     		ldr	r2, [r1, #104]
 1238 0028 0242     		tst	r2, r0
 1239 002a FAD0     		beq	.L253
 1240              	.L257:
 1241 002c 0020     		movs	r0, #0
 1242 002e 10BC     		pop	{r4}
 1243 0030 7047     		bx	lr
 1244              	.L259:
 1245 0032 0120     		movs	r0, #1
 1246 0034 10BC     		pop	{r4}
 1247 0036 7047     		bx	lr
 1248              	.L261:
 1249              		.align	2
 1250              	.L260:
 1251 0038 00060E40 		.word	1074660864
 1252              		.size	pmc_switch_pck_to_sclk, .-pmc_switch_pck_to_sclk
 1253              		.section	.text.pmc_switch_pck_to_mainck,"ax",%progbits
 1254              		.align	1
ARM GAS  /tmp/ccLCiAGb.s 			page 23


 1255              		.p2align 2,,3
 1256              		.global	pmc_switch_pck_to_mainck
 1257              		.syntax unified
 1258              		.thumb
 1259              		.thumb_func
 1260              		.fpu softvfp
 1261              		.type	pmc_switch_pck_to_mainck, %function
 1262              	pmc_switch_pck_to_mainck:
 1263              		@ args = 0, pretend = 0, frame = 0
 1264              		@ frame_needed = 0, uses_anonymous_args = 0
 1265              		@ link register save eliminated.
 1266 0000 4FF48072 		mov	r2, #256
 1267 0004 0D4B     		ldr	r3, .L273
 1268 0006 10B4     		push	{r4}
 1269 0008 41F00101 		orr	r1, r1, #1
 1270 000c 00F11004 		add	r4, r0, #16
 1271 0010 43F82410 		str	r1, [r3, r4, lsl #2]
 1272 0014 996E     		ldr	r1, [r3, #104]
 1273 0016 02FA00F0 		lsl	r0, r2, r0
 1274 001a 0142     		tst	r1, r0
 1275 001c 08D1     		bne	.L270
 1276 001e 1946     		mov	r1, r3
 1277 0020 4FF40063 		mov	r3, #2048
 1278 0024 01E0     		b	.L265
 1279              	.L266:
 1280 0026 013B     		subs	r3, r3, #1
 1281 0028 05D0     		beq	.L272
 1282              	.L265:
 1283 002a 8A6E     		ldr	r2, [r1, #104]
 1284 002c 0242     		tst	r2, r0
 1285 002e FAD0     		beq	.L266
 1286              	.L270:
 1287 0030 0020     		movs	r0, #0
 1288 0032 10BC     		pop	{r4}
 1289 0034 7047     		bx	lr
 1290              	.L272:
 1291 0036 0120     		movs	r0, #1
 1292 0038 10BC     		pop	{r4}
 1293 003a 7047     		bx	lr
 1294              	.L274:
 1295              		.align	2
 1296              	.L273:
 1297 003c 00060E40 		.word	1074660864
 1298              		.size	pmc_switch_pck_to_mainck, .-pmc_switch_pck_to_mainck
 1299              		.section	.text.pmc_switch_pck_to_pllack,"ax",%progbits
 1300              		.align	1
 1301              		.p2align 2,,3
 1302              		.global	pmc_switch_pck_to_pllack
 1303              		.syntax unified
 1304              		.thumb
 1305              		.thumb_func
 1306              		.fpu softvfp
 1307              		.type	pmc_switch_pck_to_pllack, %function
 1308              	pmc_switch_pck_to_pllack:
 1309              		@ args = 0, pretend = 0, frame = 0
 1310              		@ frame_needed = 0, uses_anonymous_args = 0
 1311              		@ link register save eliminated.
ARM GAS  /tmp/ccLCiAGb.s 			page 24


 1312 0000 4FF48072 		mov	r2, #256
 1313 0004 0D4B     		ldr	r3, .L286
 1314 0006 10B4     		push	{r4}
 1315 0008 41F00201 		orr	r1, r1, #2
 1316 000c 00F11004 		add	r4, r0, #16
 1317 0010 43F82410 		str	r1, [r3, r4, lsl #2]
 1318 0014 996E     		ldr	r1, [r3, #104]
 1319 0016 02FA00F0 		lsl	r0, r2, r0
 1320 001a 0142     		tst	r1, r0
 1321 001c 08D1     		bne	.L283
 1322 001e 1946     		mov	r1, r3
 1323 0020 4FF40063 		mov	r3, #2048
 1324 0024 01E0     		b	.L278
 1325              	.L279:
 1326 0026 013B     		subs	r3, r3, #1
 1327 0028 05D0     		beq	.L285
 1328              	.L278:
 1329 002a 8A6E     		ldr	r2, [r1, #104]
 1330 002c 0242     		tst	r2, r0
 1331 002e FAD0     		beq	.L279
 1332              	.L283:
 1333 0030 0020     		movs	r0, #0
 1334 0032 10BC     		pop	{r4}
 1335 0034 7047     		bx	lr
 1336              	.L285:
 1337 0036 0120     		movs	r0, #1
 1338 0038 10BC     		pop	{r4}
 1339 003a 7047     		bx	lr
 1340              	.L287:
 1341              		.align	2
 1342              	.L286:
 1343 003c 00060E40 		.word	1074660864
 1344              		.size	pmc_switch_pck_to_pllack, .-pmc_switch_pck_to_pllack
 1345              		.section	.text.pmc_switch_pck_to_upllck,"ax",%progbits
 1346              		.align	1
 1347              		.p2align 2,,3
 1348              		.global	pmc_switch_pck_to_upllck
 1349              		.syntax unified
 1350              		.thumb
 1351              		.thumb_func
 1352              		.fpu softvfp
 1353              		.type	pmc_switch_pck_to_upllck, %function
 1354              	pmc_switch_pck_to_upllck:
 1355              		@ args = 0, pretend = 0, frame = 0
 1356              		@ frame_needed = 0, uses_anonymous_args = 0
 1357              		@ link register save eliminated.
 1358 0000 4FF48072 		mov	r2, #256
 1359 0004 0D4B     		ldr	r3, .L299
 1360 0006 10B4     		push	{r4}
 1361 0008 41F00301 		orr	r1, r1, #3
 1362 000c 00F11004 		add	r4, r0, #16
 1363 0010 43F82410 		str	r1, [r3, r4, lsl #2]
 1364 0014 996E     		ldr	r1, [r3, #104]
 1365 0016 02FA00F0 		lsl	r0, r2, r0
 1366 001a 0142     		tst	r1, r0
 1367 001c 08D1     		bne	.L296
 1368 001e 1946     		mov	r1, r3
ARM GAS  /tmp/ccLCiAGb.s 			page 25


 1369 0020 4FF40063 		mov	r3, #2048
 1370 0024 01E0     		b	.L291
 1371              	.L292:
 1372 0026 013B     		subs	r3, r3, #1
 1373 0028 05D0     		beq	.L298
 1374              	.L291:
 1375 002a 8A6E     		ldr	r2, [r1, #104]
 1376 002c 0242     		tst	r2, r0
 1377 002e FAD0     		beq	.L292
 1378              	.L296:
 1379 0030 0020     		movs	r0, #0
 1380 0032 10BC     		pop	{r4}
 1381 0034 7047     		bx	lr
 1382              	.L298:
 1383 0036 0120     		movs	r0, #1
 1384 0038 10BC     		pop	{r4}
 1385 003a 7047     		bx	lr
 1386              	.L300:
 1387              		.align	2
 1388              	.L299:
 1389 003c 00060E40 		.word	1074660864
 1390              		.size	pmc_switch_pck_to_upllck, .-pmc_switch_pck_to_upllck
 1391              		.section	.text.pmc_switch_pck_to_mck,"ax",%progbits
 1392              		.align	1
 1393              		.p2align 2,,3
 1394              		.global	pmc_switch_pck_to_mck
 1395              		.syntax unified
 1396              		.thumb
 1397              		.thumb_func
 1398              		.fpu softvfp
 1399              		.type	pmc_switch_pck_to_mck, %function
 1400              	pmc_switch_pck_to_mck:
 1401              		@ args = 0, pretend = 0, frame = 0
 1402              		@ frame_needed = 0, uses_anonymous_args = 0
 1403              		@ link register save eliminated.
 1404 0000 4FF48072 		mov	r2, #256
 1405 0004 0D4B     		ldr	r3, .L312
 1406 0006 10B4     		push	{r4}
 1407 0008 41F00401 		orr	r1, r1, #4
 1408 000c 00F11004 		add	r4, r0, #16
 1409 0010 43F82410 		str	r1, [r3, r4, lsl #2]
 1410 0014 996E     		ldr	r1, [r3, #104]
 1411 0016 02FA00F0 		lsl	r0, r2, r0
 1412 001a 0142     		tst	r1, r0
 1413 001c 08D1     		bne	.L309
 1414 001e 1946     		mov	r1, r3
 1415 0020 4FF40063 		mov	r3, #2048
 1416 0024 01E0     		b	.L304
 1417              	.L305:
 1418 0026 013B     		subs	r3, r3, #1
 1419 0028 05D0     		beq	.L311
 1420              	.L304:
 1421 002a 8A6E     		ldr	r2, [r1, #104]
 1422 002c 0242     		tst	r2, r0
 1423 002e FAD0     		beq	.L305
 1424              	.L309:
 1425 0030 0020     		movs	r0, #0
ARM GAS  /tmp/ccLCiAGb.s 			page 26


 1426 0032 10BC     		pop	{r4}
 1427 0034 7047     		bx	lr
 1428              	.L311:
 1429 0036 0120     		movs	r0, #1
 1430 0038 10BC     		pop	{r4}
 1431 003a 7047     		bx	lr
 1432              	.L313:
 1433              		.align	2
 1434              	.L312:
 1435 003c 00060E40 		.word	1074660864
 1436              		.size	pmc_switch_pck_to_mck, .-pmc_switch_pck_to_mck
 1437              		.section	.text.pmc_enable_pck,"ax",%progbits
 1438              		.align	1
 1439              		.p2align 2,,3
 1440              		.global	pmc_enable_pck
 1441              		.syntax unified
 1442              		.thumb
 1443              		.thumb_func
 1444              		.fpu softvfp
 1445              		.type	pmc_enable_pck, %function
 1446              	pmc_enable_pck:
 1447              		@ args = 0, pretend = 0, frame = 0
 1448              		@ frame_needed = 0, uses_anonymous_args = 0
 1449              		@ link register save eliminated.
 1450 0000 4FF48073 		mov	r3, #256
 1451 0004 024A     		ldr	r2, .L315
 1452 0006 03FA00F0 		lsl	r0, r3, r0
 1453 000a 1060     		str	r0, [r2]
 1454 000c 7047     		bx	lr
 1455              	.L316:
 1456 000e 00BF     		.align	2
 1457              	.L315:
 1458 0010 00060E40 		.word	1074660864
 1459              		.size	pmc_enable_pck, .-pmc_enable_pck
 1460              		.section	.text.pmc_disable_pck,"ax",%progbits
 1461              		.align	1
 1462              		.p2align 2,,3
 1463              		.global	pmc_disable_pck
 1464              		.syntax unified
 1465              		.thumb
 1466              		.thumb_func
 1467              		.fpu softvfp
 1468              		.type	pmc_disable_pck, %function
 1469              	pmc_disable_pck:
 1470              		@ args = 0, pretend = 0, frame = 0
 1471              		@ frame_needed = 0, uses_anonymous_args = 0
 1472              		@ link register save eliminated.
 1473 0000 4FF48073 		mov	r3, #256
 1474 0004 024A     		ldr	r2, .L318
 1475 0006 03FA00F0 		lsl	r0, r3, r0
 1476 000a 5060     		str	r0, [r2, #4]
 1477 000c 7047     		bx	lr
 1478              	.L319:
 1479 000e 00BF     		.align	2
 1480              	.L318:
 1481 0010 00060E40 		.word	1074660864
 1482              		.size	pmc_disable_pck, .-pmc_disable_pck
ARM GAS  /tmp/ccLCiAGb.s 			page 27


 1483              		.section	.text.pmc_enable_all_pck,"ax",%progbits
 1484              		.align	1
 1485              		.p2align 2,,3
 1486              		.global	pmc_enable_all_pck
 1487              		.syntax unified
 1488              		.thumb
 1489              		.thumb_func
 1490              		.fpu softvfp
 1491              		.type	pmc_enable_all_pck, %function
 1492              	pmc_enable_all_pck:
 1493              		@ args = 0, pretend = 0, frame = 0
 1494              		@ frame_needed = 0, uses_anonymous_args = 0
 1495              		@ link register save eliminated.
 1496 0000 4FF4E062 		mov	r2, #1792
 1497 0004 014B     		ldr	r3, .L321
 1498 0006 1A60     		str	r2, [r3]
 1499 0008 7047     		bx	lr
 1500              	.L322:
 1501 000a 00BF     		.align	2
 1502              	.L321:
 1503 000c 00060E40 		.word	1074660864
 1504              		.size	pmc_enable_all_pck, .-pmc_enable_all_pck
 1505              		.section	.text.pmc_disable_all_pck,"ax",%progbits
 1506              		.align	1
 1507              		.p2align 2,,3
 1508              		.global	pmc_disable_all_pck
 1509              		.syntax unified
 1510              		.thumb
 1511              		.thumb_func
 1512              		.fpu softvfp
 1513              		.type	pmc_disable_all_pck, %function
 1514              	pmc_disable_all_pck:
 1515              		@ args = 0, pretend = 0, frame = 0
 1516              		@ frame_needed = 0, uses_anonymous_args = 0
 1517              		@ link register save eliminated.
 1518 0000 4FF4E062 		mov	r2, #1792
 1519 0004 014B     		ldr	r3, .L324
 1520 0006 5A60     		str	r2, [r3, #4]
 1521 0008 7047     		bx	lr
 1522              	.L325:
 1523 000a 00BF     		.align	2
 1524              	.L324:
 1525 000c 00060E40 		.word	1074660864
 1526              		.size	pmc_disable_all_pck, .-pmc_disable_all_pck
 1527              		.section	.text.pmc_is_pck_enabled,"ax",%progbits
 1528              		.align	1
 1529              		.p2align 2,,3
 1530              		.global	pmc_is_pck_enabled
 1531              		.syntax unified
 1532              		.thumb
 1533              		.thumb_func
 1534              		.fpu softvfp
 1535              		.type	pmc_is_pck_enabled, %function
 1536              	pmc_is_pck_enabled:
 1537              		@ args = 0, pretend = 0, frame = 0
 1538              		@ frame_needed = 0, uses_anonymous_args = 0
 1539              		@ link register save eliminated.
ARM GAS  /tmp/ccLCiAGb.s 			page 28


 1540 0000 0228     		cmp	r0, #2
 1541 0002 07D8     		bhi	.L328
 1542 0004 4FF48073 		mov	r3, #256
 1543 0008 034A     		ldr	r2, .L329
 1544 000a 03FA00F0 		lsl	r0, r3, r0
 1545 000e 9368     		ldr	r3, [r2, #8]
 1546 0010 1840     		ands	r0, r0, r3
 1547 0012 7047     		bx	lr
 1548              	.L328:
 1549 0014 0020     		movs	r0, #0
 1550 0016 7047     		bx	lr
 1551              	.L330:
 1552              		.align	2
 1553              	.L329:
 1554 0018 00060E40 		.word	1074660864
 1555              		.size	pmc_is_pck_enabled, .-pmc_is_pck_enabled
 1556              		.section	.text.pmc_switch_udpck_to_pllack,"ax",%progbits
 1557              		.align	1
 1558              		.p2align 2,,3
 1559              		.global	pmc_switch_udpck_to_pllack
 1560              		.syntax unified
 1561              		.thumb
 1562              		.thumb_func
 1563              		.fpu softvfp
 1564              		.type	pmc_switch_udpck_to_pllack, %function
 1565              	pmc_switch_udpck_to_pllack:
 1566              		@ args = 0, pretend = 0, frame = 0
 1567              		@ frame_needed = 0, uses_anonymous_args = 0
 1568              		@ link register save eliminated.
 1569 0000 0002     		lsls	r0, r0, #8
 1570 0002 024B     		ldr	r3, .L332
 1571 0004 00F47060 		and	r0, r0, #3840
 1572 0008 9863     		str	r0, [r3, #56]
 1573 000a 7047     		bx	lr
 1574              	.L333:
 1575              		.align	2
 1576              	.L332:
 1577 000c 00060E40 		.word	1074660864
 1578              		.size	pmc_switch_udpck_to_pllack, .-pmc_switch_udpck_to_pllack
 1579              		.section	.text.pmc_switch_udpck_to_upllck,"ax",%progbits
 1580              		.align	1
 1581              		.p2align 2,,3
 1582              		.global	pmc_switch_udpck_to_upllck
 1583              		.syntax unified
 1584              		.thumb
 1585              		.thumb_func
 1586              		.fpu softvfp
 1587              		.type	pmc_switch_udpck_to_upllck, %function
 1588              	pmc_switch_udpck_to_upllck:
 1589              		@ args = 0, pretend = 0, frame = 0
 1590              		@ frame_needed = 0, uses_anonymous_args = 0
 1591              		@ link register save eliminated.
 1592 0000 0002     		lsls	r0, r0, #8
 1593 0002 00F47060 		and	r0, r0, #3840
 1594 0006 024B     		ldr	r3, .L335
 1595 0008 40F00100 		orr	r0, r0, #1
 1596 000c 9863     		str	r0, [r3, #56]
ARM GAS  /tmp/ccLCiAGb.s 			page 29


 1597 000e 7047     		bx	lr
 1598              	.L336:
 1599              		.align	2
 1600              	.L335:
 1601 0010 00060E40 		.word	1074660864
 1602              		.size	pmc_switch_udpck_to_upllck, .-pmc_switch_udpck_to_upllck
 1603              		.section	.text.pmc_enable_udpck,"ax",%progbits
 1604              		.align	1
 1605              		.p2align 2,,3
 1606              		.global	pmc_enable_udpck
 1607              		.syntax unified
 1608              		.thumb
 1609              		.thumb_func
 1610              		.fpu softvfp
 1611              		.type	pmc_enable_udpck, %function
 1612              	pmc_enable_udpck:
 1613              		@ args = 0, pretend = 0, frame = 0
 1614              		@ frame_needed = 0, uses_anonymous_args = 0
 1615              		@ link register save eliminated.
 1616 0000 2022     		movs	r2, #32
 1617 0002 014B     		ldr	r3, .L338
 1618 0004 1A60     		str	r2, [r3]
 1619 0006 7047     		bx	lr
 1620              	.L339:
 1621              		.align	2
 1622              	.L338:
 1623 0008 00060E40 		.word	1074660864
 1624              		.size	pmc_enable_udpck, .-pmc_enable_udpck
 1625              		.section	.text.pmc_disable_udpck,"ax",%progbits
 1626              		.align	1
 1627              		.p2align 2,,3
 1628              		.global	pmc_disable_udpck
 1629              		.syntax unified
 1630              		.thumb
 1631              		.thumb_func
 1632              		.fpu softvfp
 1633              		.type	pmc_disable_udpck, %function
 1634              	pmc_disable_udpck:
 1635              		@ args = 0, pretend = 0, frame = 0
 1636              		@ frame_needed = 0, uses_anonymous_args = 0
 1637              		@ link register save eliminated.
 1638 0000 2022     		movs	r2, #32
 1639 0002 014B     		ldr	r3, .L341
 1640 0004 5A60     		str	r2, [r3, #4]
 1641 0006 7047     		bx	lr
 1642              	.L342:
 1643              		.align	2
 1644              	.L341:
 1645 0008 00060E40 		.word	1074660864
 1646              		.size	pmc_disable_udpck, .-pmc_disable_udpck
 1647              		.section	.text.pmc_enable_interrupt,"ax",%progbits
 1648              		.align	1
 1649              		.p2align 2,,3
 1650              		.global	pmc_enable_interrupt
 1651              		.syntax unified
 1652              		.thumb
 1653              		.thumb_func
ARM GAS  /tmp/ccLCiAGb.s 			page 30


 1654              		.fpu softvfp
 1655              		.type	pmc_enable_interrupt, %function
 1656              	pmc_enable_interrupt:
 1657              		@ args = 0, pretend = 0, frame = 0
 1658              		@ frame_needed = 0, uses_anonymous_args = 0
 1659              		@ link register save eliminated.
 1660 0000 014B     		ldr	r3, .L344
 1661 0002 1866     		str	r0, [r3, #96]
 1662 0004 7047     		bx	lr
 1663              	.L345:
 1664 0006 00BF     		.align	2
 1665              	.L344:
 1666 0008 00060E40 		.word	1074660864
 1667              		.size	pmc_enable_interrupt, .-pmc_enable_interrupt
 1668              		.section	.text.pmc_disable_interrupt,"ax",%progbits
 1669              		.align	1
 1670              		.p2align 2,,3
 1671              		.global	pmc_disable_interrupt
 1672              		.syntax unified
 1673              		.thumb
 1674              		.thumb_func
 1675              		.fpu softvfp
 1676              		.type	pmc_disable_interrupt, %function
 1677              	pmc_disable_interrupt:
 1678              		@ args = 0, pretend = 0, frame = 0
 1679              		@ frame_needed = 0, uses_anonymous_args = 0
 1680              		@ link register save eliminated.
 1681 0000 014B     		ldr	r3, .L347
 1682 0002 5866     		str	r0, [r3, #100]
 1683 0004 7047     		bx	lr
 1684              	.L348:
 1685 0006 00BF     		.align	2
 1686              	.L347:
 1687 0008 00060E40 		.word	1074660864
 1688              		.size	pmc_disable_interrupt, .-pmc_disable_interrupt
 1689              		.section	.text.pmc_get_interrupt_mask,"ax",%progbits
 1690              		.align	1
 1691              		.p2align 2,,3
 1692              		.global	pmc_get_interrupt_mask
 1693              		.syntax unified
 1694              		.thumb
 1695              		.thumb_func
 1696              		.fpu softvfp
 1697              		.type	pmc_get_interrupt_mask, %function
 1698              	pmc_get_interrupt_mask:
 1699              		@ args = 0, pretend = 0, frame = 0
 1700              		@ frame_needed = 0, uses_anonymous_args = 0
 1701              		@ link register save eliminated.
 1702 0000 014B     		ldr	r3, .L350
 1703 0002 D86E     		ldr	r0, [r3, #108]
 1704 0004 7047     		bx	lr
 1705              	.L351:
 1706 0006 00BF     		.align	2
 1707              	.L350:
 1708 0008 00060E40 		.word	1074660864
 1709              		.size	pmc_get_interrupt_mask, .-pmc_get_interrupt_mask
 1710              		.section	.text.pmc_get_status,"ax",%progbits
ARM GAS  /tmp/ccLCiAGb.s 			page 31


 1711              		.align	1
 1712              		.p2align 2,,3
 1713              		.global	pmc_get_status
 1714              		.syntax unified
 1715              		.thumb
 1716              		.thumb_func
 1717              		.fpu softvfp
 1718              		.type	pmc_get_status, %function
 1719              	pmc_get_status:
 1720              		@ args = 0, pretend = 0, frame = 0
 1721              		@ frame_needed = 0, uses_anonymous_args = 0
 1722              		@ link register save eliminated.
 1723 0000 014B     		ldr	r3, .L353
 1724 0002 986E     		ldr	r0, [r3, #104]
 1725 0004 7047     		bx	lr
 1726              	.L354:
 1727 0006 00BF     		.align	2
 1728              	.L353:
 1729 0008 00060E40 		.word	1074660864
 1730              		.size	pmc_get_status, .-pmc_get_status
 1731              		.section	.text.pmc_set_fast_startup_input,"ax",%progbits
 1732              		.align	1
 1733              		.p2align 2,,3
 1734              		.global	pmc_set_fast_startup_input
 1735              		.syntax unified
 1736              		.thumb
 1737              		.thumb_func
 1738              		.fpu softvfp
 1739              		.type	pmc_set_fast_startup_input, %function
 1740              	pmc_set_fast_startup_input:
 1741              		@ args = 0, pretend = 0, frame = 0
 1742              		@ frame_needed = 0, uses_anonymous_args = 0
 1743              		@ link register save eliminated.
 1744 0000 034B     		ldr	r3, .L356
 1745 0002 C0F31200 		ubfx	r0, r0, #0, #19
 1746 0006 1A6F     		ldr	r2, [r3, #112]
 1747 0008 1043     		orrs	r0, r0, r2
 1748 000a 1867     		str	r0, [r3, #112]
 1749 000c 7047     		bx	lr
 1750              	.L357:
 1751 000e 00BF     		.align	2
 1752              	.L356:
 1753 0010 00060E40 		.word	1074660864
 1754              		.size	pmc_set_fast_startup_input, .-pmc_set_fast_startup_input
 1755              		.section	.text.pmc_clr_fast_startup_input,"ax",%progbits
 1756              		.align	1
 1757              		.p2align 2,,3
 1758              		.global	pmc_clr_fast_startup_input
 1759              		.syntax unified
 1760              		.thumb
 1761              		.thumb_func
 1762              		.fpu softvfp
 1763              		.type	pmc_clr_fast_startup_input, %function
 1764              	pmc_clr_fast_startup_input:
 1765              		@ args = 0, pretend = 0, frame = 0
 1766              		@ frame_needed = 0, uses_anonymous_args = 0
 1767              		@ link register save eliminated.
ARM GAS  /tmp/ccLCiAGb.s 			page 32


 1768 0000 034A     		ldr	r2, .L359
 1769 0002 C0F31200 		ubfx	r0, r0, #0, #19
 1770 0006 136F     		ldr	r3, [r2, #112]
 1771 0008 23EA0000 		bic	r0, r3, r0
 1772 000c 1067     		str	r0, [r2, #112]
 1773 000e 7047     		bx	lr
 1774              	.L360:
 1775              		.align	2
 1776              	.L359:
 1777 0010 00060E40 		.word	1074660864
 1778              		.size	pmc_clr_fast_startup_input, .-pmc_clr_fast_startup_input
 1779              		.section	.text.pmc_enable_sleepmode,"ax",%progbits
 1780              		.align	1
 1781              		.p2align 2,,3
 1782              		.global	pmc_enable_sleepmode
 1783              		.syntax unified
 1784              		.thumb
 1785              		.thumb_func
 1786              		.fpu softvfp
 1787              		.type	pmc_enable_sleepmode, %function
 1788              	pmc_enable_sleepmode:
 1789              		@ args = 0, pretend = 0, frame = 0
 1790              		@ frame_needed = 0, uses_anonymous_args = 0
 1791              		@ link register save eliminated.
 1792 0000 0949     		ldr	r1, .L365
 1793 0002 0A4A     		ldr	r2, .L365+4
 1794 0004 0B6F     		ldr	r3, [r1, #112]
 1795 0006 23F48013 		bic	r3, r3, #1048576
 1796 000a 0B67     		str	r3, [r1, #112]
 1797 000c 1369     		ldr	r3, [r2, #16]
 1798 000e 23F00403 		bic	r3, r3, #4
 1799 0012 1361     		str	r3, [r2, #16]
 1800 0014 18B1     		cbz	r0, .L364
 1801              		.syntax unified
 1802              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1803 0016 BFF34F8F 		dsb
 1804              	@ 0 "" 2
 1805              	@ 412 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1806 001a 20BF     		wfe
 1807              	@ 0 "" 2
 1808              		.thumb
 1809              		.syntax unified
 1810 001c 7047     		bx	lr
 1811              	.L364:
 1812              		.syntax unified
 1813              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1814 001e BFF34F8F 		dsb
 1815              	@ 0 "" 2
 1816              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1817 0022 30BF     		wfi
 1818              	@ 0 "" 2
 1819              		.thumb
 1820              		.syntax unified
 1821 0024 7047     		bx	lr
 1822              	.L366:
 1823 0026 00BF     		.align	2
 1824              	.L365:
ARM GAS  /tmp/ccLCiAGb.s 			page 33


 1825 0028 00060E40 		.word	1074660864
 1826 002c 00ED00E0 		.word	-536810240
 1827              		.size	pmc_enable_sleepmode, .-pmc_enable_sleepmode
 1828              		.section	.text.pmc_enable_waitmode,"ax",%progbits
 1829              		.align	1
 1830              		.p2align 2,,3
 1831              		.global	pmc_enable_waitmode
 1832              		.syntax unified
 1833              		.thumb
 1834              		.thumb_func
 1835              		.fpu softvfp
 1836              		.type	pmc_enable_waitmode, %function
 1837              	pmc_enable_waitmode:
 1838              		@ args = 0, pretend = 0, frame = 0
 1839              		@ frame_needed = 0, uses_anonymous_args = 0
 1840              		@ link register save eliminated.
 1841 0000 0B49     		ldr	r1, .L373
 1842 0002 0C4A     		ldr	r2, .L373+4
 1843 0004 0B6F     		ldr	r3, [r1, #112]
 1844 0006 43F48013 		orr	r3, r3, #1048576
 1845 000a 0B67     		str	r3, [r1, #112]
 1846 000c 1369     		ldr	r3, [r2, #16]
 1847 000e 23F00403 		bic	r3, r3, #4
 1848 0012 1361     		str	r3, [r2, #16]
 1849              		.syntax unified
 1850              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1851 0014 BFF34F8F 		dsb
 1852              	@ 0 "" 2
 1853              	@ 412 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1854 0018 20BF     		wfe
 1855              	@ 0 "" 2
 1856              		.thumb
 1857              		.syntax unified
 1858 001a 4FF4FA73 		mov	r3, #500
 1859              	.L368:
 1860              		.syntax unified
 1861              	@ 390 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1862 001e 00BF     		nop
 1863              	@ 0 "" 2
 1864              		.thumb
 1865              		.syntax unified
 1866 0020 013B     		subs	r3, r3, #1
 1867 0022 FCD1     		bne	.L368
 1868 0024 024A     		ldr	r2, .L373
 1869              	.L369:
 1870 0026 136A     		ldr	r3, [r2, #32]
 1871 0028 1B07     		lsls	r3, r3, #28
 1872 002a FCD5     		bpl	.L369
 1873 002c 7047     		bx	lr
 1874              	.L374:
 1875 002e 00BF     		.align	2
 1876              	.L373:
 1877 0030 00060E40 		.word	1074660864
 1878 0034 00ED00E0 		.word	-536810240
 1879              		.size	pmc_enable_waitmode, .-pmc_enable_waitmode
 1880              		.section	.text.pmc_enable_backupmode,"ax",%progbits
 1881              		.align	1
ARM GAS  /tmp/ccLCiAGb.s 			page 34


 1882              		.p2align 2,,3
 1883              		.global	pmc_enable_backupmode
 1884              		.syntax unified
 1885              		.thumb
 1886              		.thumb_func
 1887              		.fpu softvfp
 1888              		.type	pmc_enable_backupmode, %function
 1889              	pmc_enable_backupmode:
 1890              		@ args = 0, pretend = 0, frame = 0
 1891              		@ frame_needed = 0, uses_anonymous_args = 0
 1892              		@ link register save eliminated.
 1893 0000 044A     		ldr	r2, .L376
 1894 0002 1369     		ldr	r3, [r2, #16]
 1895 0004 43F00403 		orr	r3, r3, #4
 1896 0008 1361     		str	r3, [r2, #16]
 1897              		.syntax unified
 1898              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1899 000a BFF34F8F 		dsb
 1900              	@ 0 "" 2
 1901              	@ 412 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1902 000e 20BF     		wfe
 1903              	@ 0 "" 2
 1904              		.thumb
 1905              		.syntax unified
 1906 0010 7047     		bx	lr
 1907              	.L377:
 1908 0012 00BF     		.align	2
 1909              	.L376:
 1910 0014 00ED00E0 		.word	-536810240
 1911              		.size	pmc_enable_backupmode, .-pmc_enable_backupmode
 1912              		.section	.text.pmc_enable_clock_failure_detector,"ax",%progbits
 1913              		.align	1
 1914              		.p2align 2,,3
 1915              		.global	pmc_enable_clock_failure_detector
 1916              		.syntax unified
 1917              		.thumb
 1918              		.thumb_func
 1919              		.fpu softvfp
 1920              		.type	pmc_enable_clock_failure_detector, %function
 1921              	pmc_enable_clock_failure_detector:
 1922              		@ args = 0, pretend = 0, frame = 0
 1923              		@ frame_needed = 0, uses_anonymous_args = 0
 1924              		@ link register save eliminated.
 1925 0000 034A     		ldr	r2, .L379
 1926 0002 136A     		ldr	r3, [r2, #32]
 1927 0004 43F00D73 		orr	r3, r3, #36962304
 1928 0008 43F44033 		orr	r3, r3, #196608
 1929 000c 1362     		str	r3, [r2, #32]
 1930 000e 7047     		bx	lr
 1931              	.L380:
 1932              		.align	2
 1933              	.L379:
 1934 0010 00060E40 		.word	1074660864
 1935              		.size	pmc_enable_clock_failure_detector, .-pmc_enable_clock_failure_detector
 1936              		.section	.text.pmc_disable_clock_failure_detector,"ax",%progbits
 1937              		.align	1
 1938              		.p2align 2,,3
ARM GAS  /tmp/ccLCiAGb.s 			page 35


 1939              		.global	pmc_disable_clock_failure_detector
 1940              		.syntax unified
 1941              		.thumb
 1942              		.thumb_func
 1943              		.fpu softvfp
 1944              		.type	pmc_disable_clock_failure_detector, %function
 1945              	pmc_disable_clock_failure_detector:
 1946              		@ args = 0, pretend = 0, frame = 0
 1947              		@ frame_needed = 0, uses_anonymous_args = 0
 1948              		@ link register save eliminated.
 1949 0000 034A     		ldr	r2, .L382
 1950 0002 136A     		ldr	r3, [r2, #32]
 1951 0004 23F00073 		bic	r3, r3, #33554432
 1952 0008 43F45C13 		orr	r3, r3, #3604480
 1953 000c 1362     		str	r3, [r2, #32]
 1954 000e 7047     		bx	lr
 1955              	.L383:
 1956              		.align	2
 1957              	.L382:
 1958 0010 00060E40 		.word	1074660864
 1959              		.size	pmc_disable_clock_failure_detector, .-pmc_disable_clock_failure_detector
 1960              		.section	.text.pmc_set_writeprotect,"ax",%progbits
 1961              		.align	1
 1962              		.p2align 2,,3
 1963              		.global	pmc_set_writeprotect
 1964              		.syntax unified
 1965              		.thumb
 1966              		.thumb_func
 1967              		.fpu softvfp
 1968              		.type	pmc_set_writeprotect, %function
 1969              	pmc_set_writeprotect:
 1970              		@ args = 0, pretend = 0, frame = 0
 1971              		@ frame_needed = 0, uses_anonymous_args = 0
 1972              		@ link register save eliminated.
 1973 0000 044B     		ldr	r3, .L388
 1974 0002 18B9     		cbnz	r0, .L387
 1975 0004 044A     		ldr	r2, .L388+4
 1976 0006 C3F8E420 		str	r2, [r3, #228]
 1977 000a 7047     		bx	lr
 1978              	.L387:
 1979 000c 034A     		ldr	r2, .L388+8
 1980 000e C3F8E420 		str	r2, [r3, #228]
 1981 0012 7047     		bx	lr
 1982              	.L389:
 1983              		.align	2
 1984              	.L388:
 1985 0014 00060E40 		.word	1074660864
 1986 0018 00434D50 		.word	1347240704
 1987 001c 01434D50 		.word	1347240705
 1988              		.size	pmc_set_writeprotect, .-pmc_set_writeprotect
 1989              		.section	.text.pmc_get_writeprotect_status,"ax",%progbits
 1990              		.align	1
 1991              		.p2align 2,,3
 1992              		.global	pmc_get_writeprotect_status
 1993              		.syntax unified
 1994              		.thumb
 1995              		.thumb_func
ARM GAS  /tmp/ccLCiAGb.s 			page 36


 1996              		.fpu softvfp
 1997              		.type	pmc_get_writeprotect_status, %function
 1998              	pmc_get_writeprotect_status:
 1999              		@ args = 0, pretend = 0, frame = 0
 2000              		@ frame_needed = 0, uses_anonymous_args = 0
 2001              		@ link register save eliminated.
 2002 0000 014B     		ldr	r3, .L391
 2003 0002 D3F8E800 		ldr	r0, [r3, #232]
 2004 0006 7047     		bx	lr
 2005              	.L392:
 2006              		.align	2
 2007              	.L391:
 2008 0008 00060E40 		.word	1074660864
 2009              		.size	pmc_get_writeprotect_status, .-pmc_get_writeprotect_status
 2010              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 2011              		.align	2
 2012              		.type	cpu_irq_critical_section_counter, %object
 2013              		.size	cpu_irq_critical_section_counter, 4
 2014              	cpu_irq_critical_section_counter:
 2015 0000 00000000 		.space	4
 2016              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 2017              		.type	cpu_irq_prev_interrupt_state, %object
 2018              		.size	cpu_irq_prev_interrupt_state, 1
 2019              	cpu_irq_prev_interrupt_state:
 2020 0000 00       		.space	1
 2021              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
