ARM GAS  /tmp/ccdfXkHO.s 			page 1


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
  11              		.file	"twi.c"
  12              		.section	.text.twi_mk_addr.part.1,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	twi_mk_addr.part.1, %function
  20              	twi_mk_addr.part.1:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23              		@ link register save eliminated.
  24 0000 0129     		cmp	r1, #1
  25 0002 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
  26 0004 07DD     		ble	.L1
  27 0006 4278     		ldrb	r2, [r0, #1]	@ zero_extendqisi2
  28 0008 0229     		cmp	r1, #2
  29 000a 42EA0323 		orr	r3, r2, r3, lsl #8
  30 000e 1CBF     		itt	ne
  31 0010 8278     		ldrbne	r2, [r0, #2]	@ zero_extendqisi2
  32 0012 42EA0323 		orrne	r3, r2, r3, lsl #8
  33              	.L1:
  34 0016 1846     		mov	r0, r3
  35 0018 7047     		bx	lr
  36              		.size	twi_mk_addr.part.1, .-twi_mk_addr.part.1
  37 001a 00BF     		.section	.text.twi_enable_master_mode,"ax",%progbits
  38              		.align	1
  39              		.p2align 2,,3
  40              		.global	twi_enable_master_mode
  41              		.syntax unified
  42              		.thumb
  43              		.thumb_func
  44              		.fpu softvfp
  45              		.type	twi_enable_master_mode, %function
  46              	twi_enable_master_mode:
  47              		@ args = 0, pretend = 0, frame = 0
  48              		@ frame_needed = 0, uses_anonymous_args = 0
  49              		@ link register save eliminated.
  50 0000 0821     		movs	r1, #8
  51 0002 2022     		movs	r2, #32
  52 0004 0423     		movs	r3, #4
  53 0006 0160     		str	r1, [r0]
  54 0008 0260     		str	r2, [r0]
  55 000a 0360     		str	r3, [r0]
  56 000c 7047     		bx	lr
  57              		.size	twi_enable_master_mode, .-twi_enable_master_mode
ARM GAS  /tmp/ccdfXkHO.s 			page 2


  58 000e 00BF     		.section	.text.twi_disable_master_mode,"ax",%progbits
  59              		.align	1
  60              		.p2align 2,,3
  61              		.global	twi_disable_master_mode
  62              		.syntax unified
  63              		.thumb
  64              		.thumb_func
  65              		.fpu softvfp
  66              		.type	twi_disable_master_mode, %function
  67              	twi_disable_master_mode:
  68              		@ args = 0, pretend = 0, frame = 0
  69              		@ frame_needed = 0, uses_anonymous_args = 0
  70              		@ link register save eliminated.
  71 0000 0823     		movs	r3, #8
  72 0002 0360     		str	r3, [r0]
  73 0004 7047     		bx	lr
  74              		.size	twi_disable_master_mode, .-twi_disable_master_mode
  75 0006 00BF     		.section	.text.twi_set_speed,"ax",%progbits
  76              		.align	1
  77              		.p2align 2,,3
  78              		.global	twi_set_speed
  79              		.syntax unified
  80              		.thumb
  81              		.thumb_func
  82              		.fpu softvfp
  83              		.type	twi_set_speed, %function
  84              	twi_set_speed:
  85              		@ args = 0, pretend = 0, frame = 0
  86              		@ frame_needed = 0, uses_anonymous_args = 0
  87 0000 2A4B     		ldr	r3, .L37
  88 0002 9942     		cmp	r1, r3
  89 0004 49D8     		bhi	.L23
  90 0006 A3F57A53 		sub	r3, r3, #16000
  91 000a 9942     		cmp	r1, r3
  92 000c 22D9     		bls	.L11
  93 000e 284B     		ldr	r3, .L37+4
  94 0010 10B5     		push	{r4, lr}
  95 0012 A3FB02E3 		umull	lr, r3, r3, r2
  96 0016 274C     		ldr	r4, .L37+8
  97 0018 9B0B     		lsrs	r3, r3, #14
  98 001a 0C44     		add	r4, r4, r1
  99 001c 191F     		subs	r1, r3, #4
 100 001e FF29     		cmp	r1, #255
 101 0020 4FEA8404 		lsl	r4, r4, #2
 102 0024 4FF00003 		mov	r3, #0
 103 0028 B2FBF4F2 		udiv	r2, r2, r4
 104 002c A2F10402 		sub	r2, r2, #4
 105 0030 39D9     		bls	.L12
 106              	.L14:
 107 0032 4908     		lsrs	r1, r1, #1
 108 0034 FF29     		cmp	r1, #255
 109 0036 03F10103 		add	r3, r3, #1
 110 003a 28D9     		bls	.L35
 111 003c 072B     		cmp	r3, #7
 112 003e F8D1     		bne	.L14
 113              	.L24:
 114 0040 4FF4E023 		mov	r3, #458752
ARM GAS  /tmp/ccdfXkHO.s 			page 3


 115              	.L15:
 116 0044 C9B2     		uxtb	r1, r1
 117 0046 1202     		lsls	r2, r2, #8
 118 0048 0B43     		orrs	r3, r3, r1
 119 004a 92B2     		uxth	r2, r2
 120 004c 1A43     		orrs	r2, r2, r3
 121 004e 0261     		str	r2, [r0, #16]
 122 0050 0020     		movs	r0, #0
 123 0052 10BD     		pop	{r4, pc}
 124              	.L11:
 125 0054 4900     		lsls	r1, r1, #1
 126 0056 B2FBF1F2 		udiv	r2, r2, r1
 127 005a 043A     		subs	r2, r2, #4
 128 005c FF2A     		cmp	r2, #255
 129 005e 4FF00003 		mov	r3, #0
 130 0062 08D9     		bls	.L19
 131              	.L21:
 132 0064 5208     		lsrs	r2, r2, #1
 133 0066 FF2A     		cmp	r2, #255
 134 0068 03F10103 		add	r3, r3, #1
 135 006c 17D9     		bls	.L36
 136 006e 072B     		cmp	r3, #7
 137 0070 F8D1     		bne	.L21
 138 0072 4FF4E023 		mov	r3, #458752
 139              	.L19:
 140 0076 1102     		lsls	r1, r2, #8
 141 0078 D2B2     		uxtb	r2, r2
 142 007a 89B2     		uxth	r1, r1
 143 007c 1A43     		orrs	r2, r2, r3
 144 007e 0A43     		orrs	r2, r2, r1
 145 0080 0261     		str	r2, [r0, #16]
 146 0082 0020     		movs	r0, #0
 147 0084 7047     		bx	lr
 148              	.L17:
 149 0086 072B     		cmp	r3, #7
 150 0088 DAD0     		beq	.L24
 151              	.L18:
 152 008a 5208     		lsrs	r2, r2, #1
 153 008c 0133     		adds	r3, r3, #1
 154              	.L35:
 155 008e FF2A     		cmp	r2, #255
 156 0090 F9D8     		bhi	.L17
 157 0092 1B04     		lsls	r3, r3, #16
 158 0094 03F4E023 		and	r3, r3, #458752
 159 0098 D4E7     		b	.L15
 160              	.L23:
 161 009a 0120     		movs	r0, #1
 162 009c 7047     		bx	lr
 163              	.L36:
 164 009e 1B04     		lsls	r3, r3, #16
 165 00a0 03F4E023 		and	r3, r3, #458752
 166 00a4 E7E7     		b	.L19
 167              	.L12:
 168 00a6 FF2A     		cmp	r2, #255
 169 00a8 EFD8     		bhi	.L18
 170 00aa CBE7     		b	.L15
 171              	.L38:
ARM GAS  /tmp/ccdfXkHO.s 			page 4


 172              		.align	2
 173              	.L37:
 174 00ac 801A0600 		.word	400000
 175 00b0 F1197605 		.word	91625969
 176 00b4 0012FD3F 		.word	1073549824
 177              		.size	twi_set_speed, .-twi_set_speed
 178              		.section	.text.twi_master_init,"ax",%progbits
 179              		.align	1
 180              		.p2align 2,,3
 181              		.global	twi_master_init
 182              		.syntax unified
 183              		.thumb
 184              		.thumb_func
 185              		.fpu softvfp
 186              		.type	twi_master_init, %function
 187              	twi_master_init:
 188              		@ args = 0, pretend = 0, frame = 0
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 190 0000 4FF0FF33 		mov	r3, #-1
 191 0004 70B5     		push	{r4, r5, r6, lr}
 192 0006 8362     		str	r3, [r0, #40]
 193 0008 0D46     		mov	r5, r1
 194 000a 8023     		movs	r3, #128
 195 000c 026A     		ldr	r2, [r0, #32]
 196 000e 0360     		str	r3, [r0]
 197 0010 0821     		movs	r1, #8
 198 0012 0423     		movs	r3, #4
 199 0014 2026     		movs	r6, #32
 200 0016 026B     		ldr	r2, [r0, #48]
 201 0018 2A68     		ldr	r2, [r5]
 202 001a 0160     		str	r1, [r0]
 203 001c 6968     		ldr	r1, [r5, #4]
 204 001e 0660     		str	r6, [r0]
 205 0020 0360     		str	r3, [r0]
 206 0022 0446     		mov	r4, r0
 207 0024 FFF7FEFF 		bl	twi_set_speed
 208 0028 6B7A     		ldrb	r3, [r5, #9]	@ zero_extendqisi2
 209 002a A0F10100 		sub	r0, #1
 210 002e 012B     		cmp	r3, #1
 211 0030 08BF     		it	eq
 212 0032 4023     		moveq	r3, #64
 213 0034 B0FA80F0 		clz	r0, r0
 214 0038 4FEA5010 		lsr	r0, r0, #5
 215 003c 08BF     		it	eq
 216 003e 2360     		streq	r3, [r4]
 217 0040 70BD     		pop	{r4, r5, r6, pc}
 218              		.size	twi_master_init, .-twi_master_init
 219 0042 00BF     		.section	.text.twi_mk_addr,"ax",%progbits
 220              		.align	1
 221              		.p2align 2,,3
 222              		.global	twi_mk_addr
 223              		.syntax unified
 224              		.thumb
 225              		.thumb_func
 226              		.fpu softvfp
 227              		.type	twi_mk_addr, %function
 228              	twi_mk_addr:
ARM GAS  /tmp/ccdfXkHO.s 			page 5


 229              		@ args = 0, pretend = 0, frame = 0
 230              		@ frame_needed = 0, uses_anonymous_args = 0
 231              		@ link register save eliminated.
 232 0000 09B1     		cbz	r1, .L43
 233 0002 FFF7FEBF 		b	twi_mk_addr.part.1
 234              	.L43:
 235 0006 0846     		mov	r0, r1
 236 0008 7047     		bx	lr
 237              		.size	twi_mk_addr, .-twi_mk_addr
 238 000a 00BF     		.section	.text.twi_master_read,"ax",%progbits
 239              		.align	1
 240              		.p2align 2,,3
 241              		.global	twi_master_read
 242              		.syntax unified
 243              		.thumb
 244              		.thumb_func
 245              		.fpu softvfp
 246              		.type	twi_master_read, %function
 247              	twi_master_read:
 248              		@ args = 0, pretend = 0, frame = 0
 249              		@ frame_needed = 0, uses_anonymous_args = 0
 250 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 251 0002 CC68     		ldr	r4, [r1, #12]
 252 0004 002C     		cmp	r4, #0
 253 0006 48D0     		beq	.L55
 254 0008 0546     		mov	r5, r0
 255 000a 0027     		movs	r7, #0
 256 000c 0846     		mov	r0, r1
 257 000e 8E68     		ldr	r6, [r1, #8]
 258 0010 4968     		ldr	r1, [r1, #4]
 259 0012 6F60     		str	r7, [r5, #4]
 260 0014 027C     		ldrb	r2, [r0, #16]	@ zero_extendqisi2
 261 0016 0B02     		lsls	r3, r1, #8
 262 0018 1204     		lsls	r2, r2, #16
 263 001a 03F44073 		and	r3, r3, #768
 264 001e 02F4FE02 		and	r2, r2, #8323072
 265 0022 43F48053 		orr	r3, r3, #4096
 266 0026 1343     		orrs	r3, r3, r2
 267 0028 6B60     		str	r3, [r5, #4]
 268 002a EF60     		str	r7, [r5, #12]
 269 002c 49B3     		cbz	r1, .L56
 270 002e FFF7FEFF 		bl	twi_mk_addr.part.1
 271 0032 012C     		cmp	r4, #1
 272 0034 E860     		str	r0, [r5, #12]
 273 0036 28D0     		beq	.L69
 274              	.L47:
 275 0038 0123     		movs	r3, #1
 276 003a 2B60     		str	r3, [r5]
 277 003c 0020     		movs	r0, #0
 278              	.L48:
 279 003e 2B6A     		ldr	r3, [r5, #32]
 280 0040 D905     		lsls	r1, r3, #23
 281 0042 47F23052 		movw	r2, #30000
 282 0046 4FF00207 		mov	r7, #2
 283 004a 11D4     		bmi	.L57
 284              	.L71:
 285 004c 511E     		subs	r1, r2, #1
ARM GAS  /tmp/ccdfXkHO.s 			page 6


 286 004e 3AB3     		cbz	r2, .L58
 287 0050 012C     		cmp	r4, #1
 288 0052 1ED0     		beq	.L70
 289              	.L67:
 290 0054 9B07     		lsls	r3, r3, #30
 291 0056 07D5     		bpl	.L52
 292 0058 2B6B     		ldr	r3, [r5, #48]
 293 005a 3370     		strb	r3, [r6]
 294 005c 013C     		subs	r4, r4, #1
 295 005e 06F10106 		add	r6, r6, #1
 296 0062 08D0     		beq	.L53
 297 0064 47F23051 		movw	r1, #30000
 298              	.L52:
 299 0068 2B6A     		ldr	r3, [r5, #32]
 300 006a 0A46     		mov	r2, r1
 301 006c D905     		lsls	r1, r3, #23
 302 006e EDD5     		bpl	.L71
 303              	.L57:
 304 0070 0524     		movs	r4, #5
 305 0072 2046     		mov	r0, r4
 306 0074 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 307              	.L53:
 308 0076 2B6A     		ldr	r3, [r5, #32]
 309 0078 DA07     		lsls	r2, r3, #31
 310 007a FCD5     		bpl	.L53
 311 007c 2B6A     		ldr	r3, [r5, #32]
 312 007e 2046     		mov	r0, r4
 313 0080 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 314              	.L56:
 315 0082 0846     		mov	r0, r1
 316 0084 012C     		cmp	r4, #1
 317 0086 E860     		str	r0, [r5, #12]
 318 0088 D6D1     		bne	.L47
 319              	.L69:
 320 008a 0323     		movs	r3, #3
 321 008c 2B60     		str	r3, [r5]
 322 008e 2046     		mov	r0, r4
 323 0090 D5E7     		b	.L48
 324              	.L70:
 325 0092 00B9     		cbnz	r0, .L51
 326 0094 2F60     		str	r7, [r5]
 327              	.L51:
 328 0096 0120     		movs	r0, #1
 329 0098 DCE7     		b	.L67
 330              	.L55:
 331 009a 0124     		movs	r4, #1
 332 009c 2046     		mov	r0, r4
 333 009e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 334              	.L58:
 335 00a0 0924     		movs	r4, #9
 336 00a2 2046     		mov	r0, r4
 337 00a4 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 338              		.size	twi_master_read, .-twi_master_read
 339 00a6 00BF     		.section	.text.twi_master_write,"ax",%progbits
 340              		.align	1
 341              		.p2align 2,,3
 342              		.global	twi_master_write
ARM GAS  /tmp/ccdfXkHO.s 			page 7


 343              		.syntax unified
 344              		.thumb
 345              		.thumb_func
 346              		.fpu softvfp
 347              		.type	twi_master_write, %function
 348              	twi_master_write:
 349              		@ args = 0, pretend = 0, frame = 0
 350              		@ frame_needed = 0, uses_anonymous_args = 0
 351 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 352 0002 CD68     		ldr	r5, [r1, #12]
 353 0004 5DB3     		cbz	r5, .L82
 354 0006 0446     		mov	r4, r0
 355 0008 0027     		movs	r7, #0
 356 000a 8E68     		ldr	r6, [r1, #8]
 357 000c 6760     		str	r7, [r4, #4]
 358 000e 0B7C     		ldrb	r3, [r1, #16]	@ zero_extendqisi2
 359 0010 0846     		mov	r0, r1
 360 0012 4968     		ldr	r1, [r1, #4]
 361 0014 1B04     		lsls	r3, r3, #16
 362 0016 0A02     		lsls	r2, r1, #8
 363 0018 03F4FE03 		and	r3, r3, #8323072
 364 001c 02F44072 		and	r2, r2, #768
 365 0020 1343     		orrs	r3, r3, r2
 366 0022 6360     		str	r3, [r4, #4]
 367 0024 E760     		str	r7, [r4, #12]
 368 0026 C1B1     		cbz	r1, .L83
 369 0028 FFF7FEFF 		bl	twi_mk_addr.part.1
 370              	.L74:
 371 002c E060     		str	r0, [r4, #12]
 372              	.L77:
 373 002e 236A     		ldr	r3, [r4, #32]
 374 0030 DF05     		lsls	r7, r3, #23
 375 0032 09D4     		bmi	.L79
 376              	.L95:
 377 0034 5807     		lsls	r0, r3, #29
 378 0036 FAD5     		bpl	.L77
 379 0038 16F8013B 		ldrb	r3, [r6], #1	@ zero_extendqisi2
 380 003c 6363     		str	r3, [r4, #52]
 381 003e 013D     		subs	r5, r5, #1
 382 0040 07D0     		beq	.L78
 383 0042 236A     		ldr	r3, [r4, #32]
 384 0044 DF05     		lsls	r7, r3, #23
 385 0046 F5D5     		bpl	.L95
 386              	.L79:
 387 0048 0525     		movs	r5, #5
 388 004a 2846     		mov	r0, r5
 389 004c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 390              	.L99:
 391 004e 5A07     		lsls	r2, r3, #29
 392 0050 08D4     		bmi	.L98
 393              	.L78:
 394 0052 236A     		ldr	r3, [r4, #32]
 395 0054 D905     		lsls	r1, r3, #23
 396 0056 F7D4     		bmi	.L79
 397 0058 F9E7     		b	.L99
 398              	.L83:
 399 005a 0846     		mov	r0, r1
ARM GAS  /tmp/ccdfXkHO.s 			page 8


 400 005c E6E7     		b	.L74
 401              	.L82:
 402 005e 0125     		movs	r5, #1
 403 0060 2846     		mov	r0, r5
 404 0062 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 405              	.L98:
 406 0064 0223     		movs	r3, #2
 407 0066 2360     		str	r3, [r4]
 408              	.L81:
 409 0068 236A     		ldr	r3, [r4, #32]
 410 006a DB07     		lsls	r3, r3, #31
 411 006c FCD5     		bpl	.L81
 412 006e 2846     		mov	r0, r5
 413 0070 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 414              		.size	twi_master_write, .-twi_master_write
 415              		.section	.text.twi_probe,"ax",%progbits
 416              		.align	1
 417              		.p2align 2,,3
 418              		.global	twi_probe
 419              		.syntax unified
 420              		.thumb
 421              		.thumb_func
 422              		.fpu softvfp
 423              		.type	twi_probe, %function
 424              	twi_probe:
 425              		@ args = 0, pretend = 0, frame = 24
 426              		@ frame_needed = 0, uses_anonymous_args = 0
 427 0000 10B5     		push	{r4, lr}
 428 0002 86B0     		sub	sp, sp, #24
 429 0004 06AA     		add	r2, sp, #24
 430 0006 0023     		movs	r3, #0
 431 0008 02F8153D 		strb	r3, [r2, #-21]!
 432 000c 8DF81410 		strb	r1, [sp, #20]
 433 0010 0124     		movs	r4, #1
 434 0012 01A9     		add	r1, sp, #4
 435 0014 0392     		str	r2, [sp, #12]
 436 0016 8DF80430 		strb	r3, [sp, #4]
 437 001a 0293     		str	r3, [sp, #8]
 438 001c 0494     		str	r4, [sp, #16]
 439 001e FFF7FEFF 		bl	twi_master_write
 440 0022 06B0     		add	sp, sp, #24
 441              		@ sp needed
 442 0024 10BD     		pop	{r4, pc}
 443              		.size	twi_probe, .-twi_probe
 444 0026 00BF     		.section	.text.twi_enable_interrupt,"ax",%progbits
 445              		.align	1
 446              		.p2align 2,,3
 447              		.global	twi_enable_interrupt
 448              		.syntax unified
 449              		.thumb
 450              		.thumb_func
 451              		.fpu softvfp
 452              		.type	twi_enable_interrupt, %function
 453              	twi_enable_interrupt:
 454              		@ args = 0, pretend = 0, frame = 0
 455              		@ frame_needed = 0, uses_anonymous_args = 0
 456              		@ link register save eliminated.
ARM GAS  /tmp/ccdfXkHO.s 			page 9


 457 0000 4162     		str	r1, [r0, #36]
 458 0002 7047     		bx	lr
 459              		.size	twi_enable_interrupt, .-twi_enable_interrupt
 460              		.section	.text.twi_disable_interrupt,"ax",%progbits
 461              		.align	1
 462              		.p2align 2,,3
 463              		.global	twi_disable_interrupt
 464              		.syntax unified
 465              		.thumb
 466              		.thumb_func
 467              		.fpu softvfp
 468              		.type	twi_disable_interrupt, %function
 469              	twi_disable_interrupt:
 470              		@ args = 0, pretend = 0, frame = 0
 471              		@ frame_needed = 0, uses_anonymous_args = 0
 472              		@ link register save eliminated.
 473 0000 8162     		str	r1, [r0, #40]
 474 0002 036A     		ldr	r3, [r0, #32]
 475 0004 7047     		bx	lr
 476              		.size	twi_disable_interrupt, .-twi_disable_interrupt
 477 0006 00BF     		.section	.text.twi_get_interrupt_status,"ax",%progbits
 478              		.align	1
 479              		.p2align 2,,3
 480              		.global	twi_get_interrupt_status
 481              		.syntax unified
 482              		.thumb
 483              		.thumb_func
 484              		.fpu softvfp
 485              		.type	twi_get_interrupt_status, %function
 486              	twi_get_interrupt_status:
 487              		@ args = 0, pretend = 0, frame = 0
 488              		@ frame_needed = 0, uses_anonymous_args = 0
 489              		@ link register save eliminated.
 490 0000 006A     		ldr	r0, [r0, #32]
 491 0002 7047     		bx	lr
 492              		.size	twi_get_interrupt_status, .-twi_get_interrupt_status
 493              		.section	.text.twi_get_interrupt_mask,"ax",%progbits
 494              		.align	1
 495              		.p2align 2,,3
 496              		.global	twi_get_interrupt_mask
 497              		.syntax unified
 498              		.thumb
 499              		.thumb_func
 500              		.fpu softvfp
 501              		.type	twi_get_interrupt_mask, %function
 502              	twi_get_interrupt_mask:
 503              		@ args = 0, pretend = 0, frame = 0
 504              		@ frame_needed = 0, uses_anonymous_args = 0
 505              		@ link register save eliminated.
 506 0000 C06A     		ldr	r0, [r0, #44]
 507 0002 7047     		bx	lr
 508              		.size	twi_get_interrupt_mask, .-twi_get_interrupt_mask
 509              		.section	.text.twi_read_byte,"ax",%progbits
 510              		.align	1
 511              		.p2align 2,,3
 512              		.global	twi_read_byte
 513              		.syntax unified
ARM GAS  /tmp/ccdfXkHO.s 			page 10


 514              		.thumb
 515              		.thumb_func
 516              		.fpu softvfp
 517              		.type	twi_read_byte, %function
 518              	twi_read_byte:
 519              		@ args = 0, pretend = 0, frame = 0
 520              		@ frame_needed = 0, uses_anonymous_args = 0
 521              		@ link register save eliminated.
 522 0000 006B     		ldr	r0, [r0, #48]
 523 0002 C0B2     		uxtb	r0, r0
 524 0004 7047     		bx	lr
 525              		.size	twi_read_byte, .-twi_read_byte
 526 0006 00BF     		.section	.text.twi_write_byte,"ax",%progbits
 527              		.align	1
 528              		.p2align 2,,3
 529              		.global	twi_write_byte
 530              		.syntax unified
 531              		.thumb
 532              		.thumb_func
 533              		.fpu softvfp
 534              		.type	twi_write_byte, %function
 535              	twi_write_byte:
 536              		@ args = 0, pretend = 0, frame = 0
 537              		@ frame_needed = 0, uses_anonymous_args = 0
 538              		@ link register save eliminated.
 539 0000 4163     		str	r1, [r0, #52]
 540 0002 7047     		bx	lr
 541              		.size	twi_write_byte, .-twi_write_byte
 542              		.section	.text.twi_enable_slave_mode,"ax",%progbits
 543              		.align	1
 544              		.p2align 2,,3
 545              		.global	twi_enable_slave_mode
 546              		.syntax unified
 547              		.thumb
 548              		.thumb_func
 549              		.fpu softvfp
 550              		.type	twi_enable_slave_mode, %function
 551              	twi_enable_slave_mode:
 552              		@ args = 0, pretend = 0, frame = 0
 553              		@ frame_needed = 0, uses_anonymous_args = 0
 554              		@ link register save eliminated.
 555 0000 0821     		movs	r1, #8
 556 0002 2022     		movs	r2, #32
 557 0004 1023     		movs	r3, #16
 558 0006 0160     		str	r1, [r0]
 559 0008 0260     		str	r2, [r0]
 560 000a 0360     		str	r3, [r0]
 561 000c 7047     		bx	lr
 562              		.size	twi_enable_slave_mode, .-twi_enable_slave_mode
 563 000e 00BF     		.section	.text.twi_disable_slave_mode,"ax",%progbits
 564              		.align	1
 565              		.p2align 2,,3
 566              		.global	twi_disable_slave_mode
 567              		.syntax unified
 568              		.thumb
 569              		.thumb_func
 570              		.fpu softvfp
ARM GAS  /tmp/ccdfXkHO.s 			page 11


 571              		.type	twi_disable_slave_mode, %function
 572              	twi_disable_slave_mode:
 573              		@ args = 0, pretend = 0, frame = 0
 574              		@ frame_needed = 0, uses_anonymous_args = 0
 575              		@ link register save eliminated.
 576 0000 2023     		movs	r3, #32
 577 0002 0360     		str	r3, [r0]
 578 0004 7047     		bx	lr
 579              		.size	twi_disable_slave_mode, .-twi_disable_slave_mode
 580 0006 00BF     		.section	.text.twi_slave_init,"ax",%progbits
 581              		.align	1
 582              		.p2align 2,,3
 583              		.global	twi_slave_init
 584              		.syntax unified
 585              		.thumb
 586              		.thumb_func
 587              		.fpu softvfp
 588              		.type	twi_slave_init, %function
 589              	twi_slave_init:
 590              		@ args = 0, pretend = 0, frame = 0
 591              		@ frame_needed = 0, uses_anonymous_args = 0
 592              		@ link register save eliminated.
 593 0000 30B4     		push	{r4, r5}
 594 0002 4FF0FF33 		mov	r3, #-1
 595 0006 8362     		str	r3, [r0, #40]
 596 0008 0904     		lsls	r1, r1, #16
 597 000a 8023     		movs	r3, #128
 598 000c 026A     		ldr	r2, [r0, #32]
 599 000e 0360     		str	r3, [r0]
 600 0010 0824     		movs	r4, #8
 601 0012 01F4FE01 		and	r1, r1, #8323072
 602 0016 2022     		movs	r2, #32
 603 0018 1023     		movs	r3, #16
 604 001a 056B     		ldr	r5, [r0, #48]
 605 001c 8160     		str	r1, [r0, #8]
 606 001e 0460     		str	r4, [r0]
 607 0020 0260     		str	r2, [r0]
 608 0022 30BC     		pop	{r4, r5}
 609 0024 0360     		str	r3, [r0]
 610 0026 7047     		bx	lr
 611              		.size	twi_slave_init, .-twi_slave_init
 612              		.section	.text.twi_set_slave_addr,"ax",%progbits
 613              		.align	1
 614              		.p2align 2,,3
 615              		.global	twi_set_slave_addr
 616              		.syntax unified
 617              		.thumb
 618              		.thumb_func
 619              		.fpu softvfp
 620              		.type	twi_set_slave_addr, %function
 621              	twi_set_slave_addr:
 622              		@ args = 0, pretend = 0, frame = 0
 623              		@ frame_needed = 0, uses_anonymous_args = 0
 624              		@ link register save eliminated.
 625 0000 0904     		lsls	r1, r1, #16
 626 0002 01F4FE01 		and	r1, r1, #8323072
 627 0006 8160     		str	r1, [r0, #8]
ARM GAS  /tmp/ccdfXkHO.s 			page 12


 628 0008 7047     		bx	lr
 629              		.size	twi_set_slave_addr, .-twi_set_slave_addr
 630 000a 00BF     		.section	.text.twi_slave_read,"ax",%progbits
 631              		.align	1
 632              		.p2align 2,,3
 633              		.global	twi_slave_read
 634              		.syntax unified
 635              		.thumb
 636              		.thumb_func
 637              		.fpu softvfp
 638              		.type	twi_slave_read, %function
 639              	twi_slave_read:
 640              		@ args = 0, pretend = 0, frame = 0
 641              		@ frame_needed = 0, uses_anonymous_args = 0
 642              		@ link register save eliminated.
 643 0000 30B4     		push	{r4, r5}
 644 0002 0025     		movs	r5, #0
 645 0004 40F60104 		movw	r4, #2049
 646              	.L114:
 647 0008 036A     		ldr	r3, [r0, #32]
 648 000a 13F0100F 		tst	r3, #16
 649 000e 03F02A02 		and	r2, r3, #42
 650 0012 0DD0     		beq	.L115
 651              	.L118:
 652 0014 0A2A     		cmp	r2, #10
 653 0016 F7D1     		bne	.L114
 654 0018 036B     		ldr	r3, [r0, #48]
 655 001a 0B70     		strb	r3, [r1]
 656 001c 036A     		ldr	r3, [r0, #32]
 657 001e 13F0100F 		tst	r3, #16
 658 0022 05F10105 		add	r5, r5, #1
 659 0026 01F10101 		add	r1, r1, #1
 660 002a 03F02A02 		and	r2, r3, #42
 661 002e F1D1     		bne	.L118
 662              	.L115:
 663 0030 34EA0303 		bics	r3, r4, r3
 664 0034 E8D1     		bne	.L114
 665 0036 2846     		mov	r0, r5
 666 0038 30BC     		pop	{r4, r5}
 667 003a 7047     		bx	lr
 668              		.size	twi_slave_read, .-twi_slave_read
 669              		.section	.text.twi_slave_write,"ax",%progbits
 670              		.align	1
 671              		.p2align 2,,3
 672              		.global	twi_slave_write
 673              		.syntax unified
 674              		.thumb
 675              		.thumb_func
 676              		.fpu softvfp
 677              		.type	twi_slave_write, %function
 678              	twi_slave_write:
 679              		@ args = 0, pretend = 0, frame = 0
 680              		@ frame_needed = 0, uses_anonymous_args = 0
 681              		@ link register save eliminated.
 682 0000 30B4     		push	{r4, r5}
 683 0002 0025     		movs	r5, #0
 684 0004 40F60104 		movw	r4, #2049
ARM GAS  /tmp/ccdfXkHO.s 			page 13


 685              	.L120:
 686 0008 036A     		ldr	r3, [r0, #32]
 687 000a 13F0100F 		tst	r3, #16
 688 000e 03F02C02 		and	r2, r3, #44
 689 0012 0DD0     		beq	.L121
 690              	.L124:
 691 0014 042A     		cmp	r2, #4
 692 0016 F7D1     		bne	.L120
 693 0018 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 694 001a 4363     		str	r3, [r0, #52]
 695 001c 036A     		ldr	r3, [r0, #32]
 696 001e 13F0100F 		tst	r3, #16
 697 0022 05F10105 		add	r5, r5, #1
 698 0026 01F10101 		add	r1, r1, #1
 699 002a 03F02C02 		and	r2, r3, #44
 700 002e F1D1     		bne	.L124
 701              	.L121:
 702 0030 34EA0303 		bics	r3, r4, r3
 703 0034 E8D1     		bne	.L120
 704 0036 2846     		mov	r0, r5
 705 0038 30BC     		pop	{r4, r5}
 706 003a 7047     		bx	lr
 707              		.size	twi_slave_write, .-twi_slave_write
 708              		.section	.text.twi_reset,"ax",%progbits
 709              		.align	1
 710              		.p2align 2,,3
 711              		.global	twi_reset
 712              		.syntax unified
 713              		.thumb
 714              		.thumb_func
 715              		.fpu softvfp
 716              		.type	twi_reset, %function
 717              	twi_reset:
 718              		@ args = 0, pretend = 0, frame = 0
 719              		@ frame_needed = 0, uses_anonymous_args = 0
 720              		@ link register save eliminated.
 721 0000 8023     		movs	r3, #128
 722 0002 0360     		str	r3, [r0]
 723 0004 036B     		ldr	r3, [r0, #48]
 724 0006 7047     		bx	lr
 725              		.size	twi_reset, .-twi_reset
 726              		.section	.text.twi_get_pdc_base,"ax",%progbits
 727              		.align	1
 728              		.p2align 2,,3
 729              		.global	twi_get_pdc_base
 730              		.syntax unified
 731              		.thumb
 732              		.thumb_func
 733              		.fpu softvfp
 734              		.type	twi_get_pdc_base, %function
 735              	twi_get_pdc_base:
 736              		@ args = 0, pretend = 0, frame = 0
 737              		@ frame_needed = 0, uses_anonymous_args = 0
 738              		@ link register save eliminated.
 739 0000 064B     		ldr	r3, .L130
 740 0002 9842     		cmp	r0, r3
 741 0004 07D0     		beq	.L128
ARM GAS  /tmp/ccdfXkHO.s 			page 14


 742 0006 064A     		ldr	r2, .L130+4
 743 0008 03F58243 		add	r3, r3, #16640
 744 000c 9042     		cmp	r0, r2
 745 000e 0CBF     		ite	eq
 746 0010 1846     		moveq	r0, r3
 747 0012 0020     		movne	r0, #0
 748 0014 7047     		bx	lr
 749              	.L128:
 750 0016 0348     		ldr	r0, .L130+8
 751 0018 7047     		bx	lr
 752              	.L131:
 753 001a 00BF     		.align	2
 754              	.L130:
 755 001c 00800140 		.word	1073840128
 756 0020 00C00140 		.word	1073856512
 757 0024 00810140 		.word	1073840384
 758              		.size	twi_get_pdc_base, .-twi_get_pdc_base
 759              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 760              		.align	2
 761              		.type	cpu_irq_critical_section_counter, %object
 762              		.size	cpu_irq_critical_section_counter, 4
 763              	cpu_irq_critical_section_counter:
 764 0000 00000000 		.space	4
 765              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 766              		.type	cpu_irq_prev_interrupt_state, %object
 767              		.size	cpu_irq_prev_interrupt_state, 1
 768              	cpu_irq_prev_interrupt_state:
 769 0000 00       		.space	1
 770              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
