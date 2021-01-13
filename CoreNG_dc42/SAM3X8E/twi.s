ARM GAS  /tmp/ccKkTZ3z.s 			page 1


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
ARM GAS  /tmp/ccKkTZ3z.s 			page 2


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
  87              		@ link register save eliminated.
  88 0000 2A4B     		ldr	r3, .L37
  89 0002 9942     		cmp	r1, r3
  90 0004 49D8     		bhi	.L23
  91 0006 A3F57A53 		sub	r3, r3, #16000
  92 000a 9942     		cmp	r1, r3
  93 000c 22D9     		bls	.L11
  94 000e 10B4     		push	{r4}
  95 0010 274C     		ldr	r4, .L37+4
  96 0012 284B     		ldr	r3, .L37+8
  97 0014 0C44     		add	r4, r4, r1
  98 0016 A100     		lsls	r1, r4, #2
  99 0018 B2FBF1F1 		udiv	r1, r2, r1
 100 001c A3FB0223 		umull	r2, r3, r3, r2
 101 0020 9B0B     		lsrs	r3, r3, #14
 102 0022 043B     		subs	r3, r3, #4
 103 0024 FF2B     		cmp	r3, #255
 104 0026 A1F10401 		sub	r1, r1, #4
 105 002a 4FF00002 		mov	r2, #0
 106 002e 3AD9     		bls	.L12
 107              	.L14:
 108 0030 5B08     		lsrs	r3, r3, #1
 109 0032 FF2B     		cmp	r3, #255
 110 0034 02F10102 		add	r2, r2, #1
 111 0038 29D9     		bls	.L35
 112 003a 072A     		cmp	r2, #7
 113 003c F8D1     		bne	.L14
 114              	.L24:
ARM GAS  /tmp/ccKkTZ3z.s 			page 3


 115 003e 4FF4E022 		mov	r2, #458752
 116              	.L15:
 117 0042 0902     		lsls	r1, r1, #8
 118 0044 DBB2     		uxtb	r3, r3
 119 0046 89B2     		uxth	r1, r1
 120 0048 1343     		orrs	r3, r3, r2
 121 004a 0B43     		orrs	r3, r3, r1
 122 004c 0361     		str	r3, [r0, #16]
 123 004e 10BC     		pop	{r4}
 124 0050 0020     		movs	r0, #0
 125 0052 7047     		bx	lr
 126              	.L11:
 127 0054 4900     		lsls	r1, r1, #1
 128 0056 B2FBF1F2 		udiv	r2, r2, r1
 129 005a 043A     		subs	r2, r2, #4
 130 005c FF2A     		cmp	r2, #255
 131 005e 4FF00003 		mov	r3, #0
 132 0062 08D9     		bls	.L19
 133              	.L21:
 134 0064 5208     		lsrs	r2, r2, #1
 135 0066 FF2A     		cmp	r2, #255
 136 0068 03F10103 		add	r3, r3, #1
 137 006c 17D9     		bls	.L36
 138 006e 072B     		cmp	r3, #7
 139 0070 F8D1     		bne	.L21
 140 0072 4FF4E023 		mov	r3, #458752
 141              	.L19:
 142 0076 1102     		lsls	r1, r2, #8
 143 0078 D2B2     		uxtb	r2, r2
 144 007a 89B2     		uxth	r1, r1
 145 007c 1A43     		orrs	r2, r2, r3
 146 007e 0A43     		orrs	r2, r2, r1
 147 0080 0261     		str	r2, [r0, #16]
 148 0082 0020     		movs	r0, #0
 149 0084 7047     		bx	lr
 150              	.L17:
 151 0086 072A     		cmp	r2, #7
 152 0088 D9D0     		beq	.L24
 153              	.L18:
 154 008a 4908     		lsrs	r1, r1, #1
 155 008c 0132     		adds	r2, r2, #1
 156              	.L35:
 157 008e FF29     		cmp	r1, #255
 158 0090 F9D8     		bhi	.L17
 159 0092 1204     		lsls	r2, r2, #16
 160 0094 02F4E022 		and	r2, r2, #458752
 161 0098 D3E7     		b	.L15
 162              	.L23:
 163 009a 0120     		movs	r0, #1
 164 009c 7047     		bx	lr
 165              	.L36:
 166 009e 1B04     		lsls	r3, r3, #16
 167 00a0 03F4E023 		and	r3, r3, #458752
 168 00a4 E7E7     		b	.L19
 169              	.L12:
 170 00a6 FF29     		cmp	r1, #255
 171 00a8 EFD8     		bhi	.L18
ARM GAS  /tmp/ccKkTZ3z.s 			page 4


 172 00aa CAE7     		b	.L15
 173              	.L38:
 174              		.align	2
 175              	.L37:
 176 00ac 801A0600 		.word	400000
 177 00b0 0012FD3F 		.word	1073549824
 178 00b4 F1197605 		.word	91625969
 179              		.size	twi_set_speed, .-twi_set_speed
 180              		.section	.text.twi_master_init,"ax",%progbits
 181              		.align	1
 182              		.p2align 2,,3
 183              		.global	twi_master_init
 184              		.syntax unified
 185              		.thumb
 186              		.thumb_func
 187              		.fpu softvfp
 188              		.type	twi_master_init, %function
 189              	twi_master_init:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 193 0002 4FF0FF37 		mov	r7, #-1
 194 0006 8022     		movs	r2, #128
 195 0008 0D46     		mov	r5, r1
 196 000a 0423     		movs	r3, #4
 197 000c 0821     		movs	r1, #8
 198 000e 2026     		movs	r6, #32
 199 0010 8762     		str	r7, [r0, #40]
 200 0012 076A     		ldr	r7, [r0, #32]
 201 0014 0260     		str	r2, [r0]
 202 0016 026B     		ldr	r2, [r0, #48]
 203 0018 2A68     		ldr	r2, [r5]
 204 001a 0160     		str	r1, [r0]
 205 001c 6968     		ldr	r1, [r5, #4]
 206 001e 0660     		str	r6, [r0]
 207 0020 0360     		str	r3, [r0]
 208 0022 0446     		mov	r4, r0
 209 0024 FFF7FEFF 		bl	twi_set_speed
 210 0028 6B7A     		ldrb	r3, [r5, #9]	@ zero_extendqisi2
 211 002a A0F10100 		sub	r0, #1
 212 002e 012B     		cmp	r3, #1
 213 0030 08BF     		it	eq
 214 0032 4023     		moveq	r3, #64
 215 0034 B0FA80F0 		clz	r0, r0
 216 0038 08BF     		it	eq
 217 003a 2360     		streq	r3, [r4]
 218 003c 4009     		lsrs	r0, r0, #5
 219 003e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 220              		.size	twi_master_init, .-twi_master_init
 221              		.section	.text.twi_mk_addr,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	twi_mk_addr
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu softvfp
ARM GAS  /tmp/ccKkTZ3z.s 			page 5


 229              		.type	twi_mk_addr, %function
 230              	twi_mk_addr:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233              		@ link register save eliminated.
 234 0000 09B1     		cbz	r1, .L43
 235 0002 FFF7FEBF 		b	twi_mk_addr.part.1
 236              	.L43:
 237 0006 0846     		mov	r0, r1
 238 0008 7047     		bx	lr
 239              		.size	twi_mk_addr, .-twi_mk_addr
 240 000a 00BF     		.section	.text.twi_master_read,"ax",%progbits
 241              		.align	1
 242              		.p2align 2,,3
 243              		.global	twi_master_read
 244              		.syntax unified
 245              		.thumb
 246              		.thumb_func
 247              		.fpu softvfp
 248              		.type	twi_master_read, %function
 249              	twi_master_read:
 250              		@ args = 0, pretend = 0, frame = 0
 251              		@ frame_needed = 0, uses_anonymous_args = 0
 252 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 253 0002 CC68     		ldr	r4, [r1, #12]
 254 0004 002C     		cmp	r4, #0
 255 0006 46D0     		beq	.L55
 256 0008 0546     		mov	r5, r0
 257 000a 0027     		movs	r7, #0
 258 000c 0846     		mov	r0, r1
 259 000e 8E68     		ldr	r6, [r1, #8]
 260 0010 4968     		ldr	r1, [r1, #4]
 261 0012 6F60     		str	r7, [r5, #4]
 262 0014 027C     		ldrb	r2, [r0, #16]	@ zero_extendqisi2
 263 0016 0B02     		lsls	r3, r1, #8
 264 0018 1204     		lsls	r2, r2, #16
 265 001a 03F44073 		and	r3, r3, #768
 266 001e 02F4FE02 		and	r2, r2, #8323072
 267 0022 43F48053 		orr	r3, r3, #4096
 268 0026 1343     		orrs	r3, r3, r2
 269 0028 6B60     		str	r3, [r5, #4]
 270 002a EF60     		str	r7, [r5, #12]
 271 002c 69B3     		cbz	r1, .L56
 272 002e FFF7FEFF 		bl	twi_mk_addr.part.1
 273              	.L46:
 274 0032 012C     		cmp	r4, #1
 275 0034 0CBF     		ite	eq
 276 0036 0323     		moveq	r3, #3
 277 0038 0123     		movne	r3, #1
 278 003a E860     		str	r0, [r5, #12]
 279 003c 2B60     		str	r3, [r5]
 280 003e 2B6A     		ldr	r3, [r5, #32]
 281 0040 0CBF     		ite	eq
 282 0042 2046     		moveq	r0, r4
 283 0044 0020     		movne	r0, #0
 284 0046 D905     		lsls	r1, r3, #23
 285 0048 47F23052 		movw	r2, #30000
ARM GAS  /tmp/ccKkTZ3z.s 			page 6


 286 004c 4FF00207 		mov	r7, #2
 287 0050 12D4     		bmi	.L57
 288              	.L70:
 289 0052 511E     		subs	r1, r2, #1
 290 0054 12B3     		cbz	r2, .L58
 291 0056 012C     		cmp	r4, #1
 292 0058 19D0     		beq	.L69
 293              	.L67:
 294 005a 9B07     		lsls	r3, r3, #30
 295 005c 08D5     		bpl	.L52
 296 005e 2B6B     		ldr	r3, [r5, #48]
 297 0060 013C     		subs	r4, r4, #1
 298 0062 06F10102 		add	r2, r6, #1
 299 0066 3370     		strb	r3, [r6]
 300 0068 09D0     		beq	.L53
 301 006a 1646     		mov	r6, r2
 302 006c 47F23051 		movw	r1, #30000
 303              	.L52:
 304 0070 2B6A     		ldr	r3, [r5, #32]
 305 0072 0A46     		mov	r2, r1
 306 0074 D905     		lsls	r1, r3, #23
 307 0076 ECD5     		bpl	.L70
 308              	.L57:
 309 0078 0524     		movs	r4, #5
 310 007a 2046     		mov	r0, r4
 311 007c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 312              	.L53:
 313 007e 2B6A     		ldr	r3, [r5, #32]
 314 0080 DA07     		lsls	r2, r3, #31
 315 0082 FCD5     		bpl	.L53
 316 0084 2B6A     		ldr	r3, [r5, #32]
 317 0086 2046     		mov	r0, r4
 318 0088 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 319              	.L56:
 320 008a 0846     		mov	r0, r1
 321 008c D1E7     		b	.L46
 322              	.L69:
 323 008e 00B9     		cbnz	r0, .L51
 324 0090 2F60     		str	r7, [r5]
 325              	.L51:
 326 0092 0120     		movs	r0, #1
 327 0094 E1E7     		b	.L67
 328              	.L55:
 329 0096 0124     		movs	r4, #1
 330 0098 2046     		mov	r0, r4
 331 009a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 332              	.L58:
 333 009c 0924     		movs	r4, #9
 334 009e 2046     		mov	r0, r4
 335 00a0 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 336              		.size	twi_master_read, .-twi_master_read
 337 00a2 00BF     		.section	.text.twi_master_write,"ax",%progbits
 338              		.align	1
 339              		.p2align 2,,3
 340              		.global	twi_master_write
 341              		.syntax unified
 342              		.thumb
ARM GAS  /tmp/ccKkTZ3z.s 			page 7


 343              		.thumb_func
 344              		.fpu softvfp
 345              		.type	twi_master_write, %function
 346              	twi_master_write:
 347              		@ args = 0, pretend = 0, frame = 0
 348              		@ frame_needed = 0, uses_anonymous_args = 0
 349 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 350 0002 CD68     		ldr	r5, [r1, #12]
 351 0004 5DB3     		cbz	r5, .L81
 352 0006 0446     		mov	r4, r0
 353 0008 0027     		movs	r7, #0
 354 000a 8E68     		ldr	r6, [r1, #8]
 355 000c 6760     		str	r7, [r4, #4]
 356 000e 0B7C     		ldrb	r3, [r1, #16]	@ zero_extendqisi2
 357 0010 0846     		mov	r0, r1
 358 0012 4968     		ldr	r1, [r1, #4]
 359 0014 1B04     		lsls	r3, r3, #16
 360 0016 0A02     		lsls	r2, r1, #8
 361 0018 03F4FE03 		and	r3, r3, #8323072
 362 001c 02F44072 		and	r2, r2, #768
 363 0020 1343     		orrs	r3, r3, r2
 364 0022 6360     		str	r3, [r4, #4]
 365 0024 E760     		str	r7, [r4, #12]
 366 0026 C1B1     		cbz	r1, .L82
 367 0028 FFF7FEFF 		bl	twi_mk_addr.part.1
 368              	.L73:
 369 002c E060     		str	r0, [r4, #12]
 370              	.L76:
 371 002e 236A     		ldr	r3, [r4, #32]
 372 0030 DF05     		lsls	r7, r3, #23
 373 0032 09D4     		bmi	.L78
 374              	.L94:
 375 0034 5807     		lsls	r0, r3, #29
 376 0036 FAD5     		bpl	.L76
 377 0038 16F8013B 		ldrb	r3, [r6], #1	@ zero_extendqisi2
 378 003c 013D     		subs	r5, r5, #1
 379 003e 6363     		str	r3, [r4, #52]
 380 0040 07D0     		beq	.L77
 381 0042 236A     		ldr	r3, [r4, #32]
 382 0044 DF05     		lsls	r7, r3, #23
 383 0046 F5D5     		bpl	.L94
 384              	.L78:
 385 0048 0525     		movs	r5, #5
 386 004a 2846     		mov	r0, r5
 387 004c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 388              	.L98:
 389 004e 5A07     		lsls	r2, r3, #29
 390 0050 08D4     		bmi	.L97
 391              	.L77:
 392 0052 236A     		ldr	r3, [r4, #32]
 393 0054 D905     		lsls	r1, r3, #23
 394 0056 F7D4     		bmi	.L78
 395 0058 F9E7     		b	.L98
 396              	.L82:
 397 005a 0846     		mov	r0, r1
 398 005c E6E7     		b	.L73
 399              	.L81:
ARM GAS  /tmp/ccKkTZ3z.s 			page 8


 400 005e 0125     		movs	r5, #1
 401 0060 2846     		mov	r0, r5
 402 0062 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 403              	.L97:
 404 0064 0223     		movs	r3, #2
 405 0066 2360     		str	r3, [r4]
 406              	.L80:
 407 0068 236A     		ldr	r3, [r4, #32]
 408 006a DB07     		lsls	r3, r3, #31
 409 006c FCD5     		bpl	.L80
 410 006e 2846     		mov	r0, r5
 411 0070 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 412              		.size	twi_master_write, .-twi_master_write
 413              		.section	.text.twi_probe,"ax",%progbits
 414              		.align	1
 415              		.p2align 2,,3
 416              		.global	twi_probe
 417              		.syntax unified
 418              		.thumb
 419              		.thumb_func
 420              		.fpu softvfp
 421              		.type	twi_probe, %function
 422              	twi_probe:
 423              		@ args = 0, pretend = 0, frame = 24
 424              		@ frame_needed = 0, uses_anonymous_args = 0
 425 0000 0022     		movs	r2, #0
 426 0002 10B5     		push	{r4, lr}
 427 0004 0124     		movs	r4, #1
 428 0006 86B0     		sub	sp, sp, #24
 429 0008 06AB     		add	r3, sp, #24
 430 000a 8DF81410 		strb	r1, [sp, #20]
 431 000e 03F8152D 		strb	r2, [r3, #-21]!
 432 0012 01A9     		add	r1, sp, #4
 433 0014 8DF80420 		strb	r2, [sp, #4]
 434 0018 0292     		str	r2, [sp, #8]
 435 001a 0393     		str	r3, [sp, #12]
 436 001c 0494     		str	r4, [sp, #16]
 437 001e FFF7FEFF 		bl	twi_master_write
 438 0022 06B0     		add	sp, sp, #24
 439              		@ sp needed
 440 0024 10BD     		pop	{r4, pc}
 441              		.size	twi_probe, .-twi_probe
 442 0026 00BF     		.section	.text.twi_enable_interrupt,"ax",%progbits
 443              		.align	1
 444              		.p2align 2,,3
 445              		.global	twi_enable_interrupt
 446              		.syntax unified
 447              		.thumb
 448              		.thumb_func
 449              		.fpu softvfp
 450              		.type	twi_enable_interrupt, %function
 451              	twi_enable_interrupt:
 452              		@ args = 0, pretend = 0, frame = 0
 453              		@ frame_needed = 0, uses_anonymous_args = 0
 454              		@ link register save eliminated.
 455 0000 4162     		str	r1, [r0, #36]
 456 0002 7047     		bx	lr
ARM GAS  /tmp/ccKkTZ3z.s 			page 9


 457              		.size	twi_enable_interrupt, .-twi_enable_interrupt
 458              		.section	.text.twi_disable_interrupt,"ax",%progbits
 459              		.align	1
 460              		.p2align 2,,3
 461              		.global	twi_disable_interrupt
 462              		.syntax unified
 463              		.thumb
 464              		.thumb_func
 465              		.fpu softvfp
 466              		.type	twi_disable_interrupt, %function
 467              	twi_disable_interrupt:
 468              		@ args = 0, pretend = 0, frame = 0
 469              		@ frame_needed = 0, uses_anonymous_args = 0
 470              		@ link register save eliminated.
 471 0000 8162     		str	r1, [r0, #40]
 472 0002 036A     		ldr	r3, [r0, #32]
 473 0004 7047     		bx	lr
 474              		.size	twi_disable_interrupt, .-twi_disable_interrupt
 475 0006 00BF     		.section	.text.twi_get_interrupt_status,"ax",%progbits
 476              		.align	1
 477              		.p2align 2,,3
 478              		.global	twi_get_interrupt_status
 479              		.syntax unified
 480              		.thumb
 481              		.thumb_func
 482              		.fpu softvfp
 483              		.type	twi_get_interrupt_status, %function
 484              	twi_get_interrupt_status:
 485              		@ args = 0, pretend = 0, frame = 0
 486              		@ frame_needed = 0, uses_anonymous_args = 0
 487              		@ link register save eliminated.
 488 0000 006A     		ldr	r0, [r0, #32]
 489 0002 7047     		bx	lr
 490              		.size	twi_get_interrupt_status, .-twi_get_interrupt_status
 491              		.section	.text.twi_get_interrupt_mask,"ax",%progbits
 492              		.align	1
 493              		.p2align 2,,3
 494              		.global	twi_get_interrupt_mask
 495              		.syntax unified
 496              		.thumb
 497              		.thumb_func
 498              		.fpu softvfp
 499              		.type	twi_get_interrupt_mask, %function
 500              	twi_get_interrupt_mask:
 501              		@ args = 0, pretend = 0, frame = 0
 502              		@ frame_needed = 0, uses_anonymous_args = 0
 503              		@ link register save eliminated.
 504 0000 C06A     		ldr	r0, [r0, #44]
 505 0002 7047     		bx	lr
 506              		.size	twi_get_interrupt_mask, .-twi_get_interrupt_mask
 507              		.section	.text.twi_read_byte,"ax",%progbits
 508              		.align	1
 509              		.p2align 2,,3
 510              		.global	twi_read_byte
 511              		.syntax unified
 512              		.thumb
 513              		.thumb_func
ARM GAS  /tmp/ccKkTZ3z.s 			page 10


 514              		.fpu softvfp
 515              		.type	twi_read_byte, %function
 516              	twi_read_byte:
 517              		@ args = 0, pretend = 0, frame = 0
 518              		@ frame_needed = 0, uses_anonymous_args = 0
 519              		@ link register save eliminated.
 520 0000 006B     		ldr	r0, [r0, #48]
 521 0002 C0B2     		uxtb	r0, r0
 522 0004 7047     		bx	lr
 523              		.size	twi_read_byte, .-twi_read_byte
 524 0006 00BF     		.section	.text.twi_write_byte,"ax",%progbits
 525              		.align	1
 526              		.p2align 2,,3
 527              		.global	twi_write_byte
 528              		.syntax unified
 529              		.thumb
 530              		.thumb_func
 531              		.fpu softvfp
 532              		.type	twi_write_byte, %function
 533              	twi_write_byte:
 534              		@ args = 0, pretend = 0, frame = 0
 535              		@ frame_needed = 0, uses_anonymous_args = 0
 536              		@ link register save eliminated.
 537 0000 4163     		str	r1, [r0, #52]
 538 0002 7047     		bx	lr
 539              		.size	twi_write_byte, .-twi_write_byte
 540              		.section	.text.twi_enable_slave_mode,"ax",%progbits
 541              		.align	1
 542              		.p2align 2,,3
 543              		.global	twi_enable_slave_mode
 544              		.syntax unified
 545              		.thumb
 546              		.thumb_func
 547              		.fpu softvfp
 548              		.type	twi_enable_slave_mode, %function
 549              	twi_enable_slave_mode:
 550              		@ args = 0, pretend = 0, frame = 0
 551              		@ frame_needed = 0, uses_anonymous_args = 0
 552              		@ link register save eliminated.
 553 0000 0821     		movs	r1, #8
 554 0002 2022     		movs	r2, #32
 555 0004 1023     		movs	r3, #16
 556 0006 0160     		str	r1, [r0]
 557 0008 0260     		str	r2, [r0]
 558 000a 0360     		str	r3, [r0]
 559 000c 7047     		bx	lr
 560              		.size	twi_enable_slave_mode, .-twi_enable_slave_mode
 561 000e 00BF     		.section	.text.twi_disable_slave_mode,"ax",%progbits
 562              		.align	1
 563              		.p2align 2,,3
 564              		.global	twi_disable_slave_mode
 565              		.syntax unified
 566              		.thumb
 567              		.thumb_func
 568              		.fpu softvfp
 569              		.type	twi_disable_slave_mode, %function
 570              	twi_disable_slave_mode:
ARM GAS  /tmp/ccKkTZ3z.s 			page 11


 571              		@ args = 0, pretend = 0, frame = 0
 572              		@ frame_needed = 0, uses_anonymous_args = 0
 573              		@ link register save eliminated.
 574 0000 2023     		movs	r3, #32
 575 0002 0360     		str	r3, [r0]
 576 0004 7047     		bx	lr
 577              		.size	twi_disable_slave_mode, .-twi_disable_slave_mode
 578 0006 00BF     		.section	.text.twi_slave_init,"ax",%progbits
 579              		.align	1
 580              		.p2align 2,,3
 581              		.global	twi_slave_init
 582              		.syntax unified
 583              		.thumb
 584              		.thumb_func
 585              		.fpu softvfp
 586              		.type	twi_slave_init, %function
 587              	twi_slave_init:
 588              		@ args = 0, pretend = 0, frame = 0
 589              		@ frame_needed = 0, uses_anonymous_args = 0
 590              		@ link register save eliminated.
 591 0000 70B4     		push	{r4, r5, r6}
 592 0002 1023     		movs	r3, #16
 593 0004 4FF0FF36 		mov	r6, #-1
 594 0008 8025     		movs	r5, #128
 595 000a 0824     		movs	r4, #8
 596 000c 2022     		movs	r2, #32
 597 000e 8662     		str	r6, [r0, #40]
 598 0010 9940     		lsls	r1, r1, r3
 599 0012 066A     		ldr	r6, [r0, #32]
 600 0014 01F4FE01 		and	r1, r1, #8323072
 601 0018 0560     		str	r5, [r0]
 602 001a 056B     		ldr	r5, [r0, #48]
 603 001c 8160     		str	r1, [r0, #8]
 604 001e 0460     		str	r4, [r0]
 605 0020 0260     		str	r2, [r0]
 606 0022 70BC     		pop	{r4, r5, r6}
 607 0024 0360     		str	r3, [r0]
 608 0026 7047     		bx	lr
 609              		.size	twi_slave_init, .-twi_slave_init
 610              		.section	.text.twi_set_slave_addr,"ax",%progbits
 611              		.align	1
 612              		.p2align 2,,3
 613              		.global	twi_set_slave_addr
 614              		.syntax unified
 615              		.thumb
 616              		.thumb_func
 617              		.fpu softvfp
 618              		.type	twi_set_slave_addr, %function
 619              	twi_set_slave_addr:
 620              		@ args = 0, pretend = 0, frame = 0
 621              		@ frame_needed = 0, uses_anonymous_args = 0
 622              		@ link register save eliminated.
 623 0000 0904     		lsls	r1, r1, #16
 624 0002 01F4FE01 		and	r1, r1, #8323072
 625 0006 8160     		str	r1, [r0, #8]
 626 0008 7047     		bx	lr
 627              		.size	twi_set_slave_addr, .-twi_set_slave_addr
ARM GAS  /tmp/ccKkTZ3z.s 			page 12


 628 000a 00BF     		.section	.text.twi_slave_read,"ax",%progbits
 629              		.align	1
 630              		.p2align 2,,3
 631              		.global	twi_slave_read
 632              		.syntax unified
 633              		.thumb
 634              		.thumb_func
 635              		.fpu softvfp
 636              		.type	twi_slave_read, %function
 637              	twi_slave_read:
 638              		@ args = 0, pretend = 0, frame = 0
 639              		@ frame_needed = 0, uses_anonymous_args = 0
 640              		@ link register save eliminated.
 641 0000 30B4     		push	{r4, r5}
 642 0002 0025     		movs	r5, #0
 643 0004 40F60104 		movw	r4, #2049
 644              	.L113:
 645 0008 036A     		ldr	r3, [r0, #32]
 646 000a 13F0100F 		tst	r3, #16
 647 000e 03F02A02 		and	r2, r3, #42
 648 0012 0BD0     		beq	.L114
 649              	.L117:
 650 0014 0A2A     		cmp	r2, #10
 651 0016 F7D1     		bne	.L113
 652 0018 036B     		ldr	r3, [r0, #48]
 653 001a 0135     		adds	r5, r5, #1
 654 001c 0B70     		strb	r3, [r1]
 655 001e 036A     		ldr	r3, [r0, #32]
 656 0020 0131     		adds	r1, r1, #1
 657 0022 13F0100F 		tst	r3, #16
 658 0026 03F02A02 		and	r2, r3, #42
 659 002a F3D1     		bne	.L117
 660              	.L114:
 661 002c 34EA0303 		bics	r3, r4, r3
 662 0030 EAD1     		bne	.L113
 663 0032 2846     		mov	r0, r5
 664 0034 30BC     		pop	{r4, r5}
 665 0036 7047     		bx	lr
 666              		.size	twi_slave_read, .-twi_slave_read
 667              		.section	.text.twi_slave_write,"ax",%progbits
 668              		.align	1
 669              		.p2align 2,,3
 670              		.global	twi_slave_write
 671              		.syntax unified
 672              		.thumb
 673              		.thumb_func
 674              		.fpu softvfp
 675              		.type	twi_slave_write, %function
 676              	twi_slave_write:
 677              		@ args = 0, pretend = 0, frame = 0
 678              		@ frame_needed = 0, uses_anonymous_args = 0
 679              		@ link register save eliminated.
 680 0000 30B4     		push	{r4, r5}
 681 0002 0025     		movs	r5, #0
 682 0004 40F60104 		movw	r4, #2049
 683              	.L119:
 684 0008 036A     		ldr	r3, [r0, #32]
ARM GAS  /tmp/ccKkTZ3z.s 			page 13


 685 000a 13F0100F 		tst	r3, #16
 686 000e 03F02C02 		and	r2, r3, #44
 687 0012 0BD0     		beq	.L120
 688              	.L123:
 689 0014 042A     		cmp	r2, #4
 690 0016 F7D1     		bne	.L119
 691 0018 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 692 001a 0135     		adds	r5, r5, #1
 693 001c 4363     		str	r3, [r0, #52]
 694 001e 036A     		ldr	r3, [r0, #32]
 695 0020 0131     		adds	r1, r1, #1
 696 0022 13F0100F 		tst	r3, #16
 697 0026 03F02C02 		and	r2, r3, #44
 698 002a F3D1     		bne	.L123
 699              	.L120:
 700 002c 34EA0303 		bics	r3, r4, r3
 701 0030 EAD1     		bne	.L119
 702 0032 2846     		mov	r0, r5
 703 0034 30BC     		pop	{r4, r5}
 704 0036 7047     		bx	lr
 705              		.size	twi_slave_write, .-twi_slave_write
 706              		.section	.text.twi_reset,"ax",%progbits
 707              		.align	1
 708              		.p2align 2,,3
 709              		.global	twi_reset
 710              		.syntax unified
 711              		.thumb
 712              		.thumb_func
 713              		.fpu softvfp
 714              		.type	twi_reset, %function
 715              	twi_reset:
 716              		@ args = 0, pretend = 0, frame = 0
 717              		@ frame_needed = 0, uses_anonymous_args = 0
 718              		@ link register save eliminated.
 719 0000 8023     		movs	r3, #128
 720 0002 0360     		str	r3, [r0]
 721 0004 036B     		ldr	r3, [r0, #48]
 722 0006 7047     		bx	lr
 723              		.size	twi_reset, .-twi_reset
 724              		.section	.text.twi_get_pdc_base,"ax",%progbits
 725              		.align	1
 726              		.p2align 2,,3
 727              		.global	twi_get_pdc_base
 728              		.syntax unified
 729              		.thumb
 730              		.thumb_func
 731              		.fpu softvfp
 732              		.type	twi_get_pdc_base, %function
 733              	twi_get_pdc_base:
 734              		@ args = 0, pretend = 0, frame = 0
 735              		@ frame_needed = 0, uses_anonymous_args = 0
 736              		@ link register save eliminated.
 737 0000 064B     		ldr	r3, .L129
 738 0002 9842     		cmp	r0, r3
 739 0004 07D0     		beq	.L127
 740 0006 064A     		ldr	r2, .L129+4
 741 0008 03F58243 		add	r3, r3, #16640
ARM GAS  /tmp/ccKkTZ3z.s 			page 14


 742 000c 9042     		cmp	r0, r2
 743 000e 0CBF     		ite	eq
 744 0010 1846     		moveq	r0, r3
 745 0012 0020     		movne	r0, #0
 746 0014 7047     		bx	lr
 747              	.L127:
 748 0016 0348     		ldr	r0, .L129+8
 749 0018 7047     		bx	lr
 750              	.L130:
 751 001a 00BF     		.align	2
 752              	.L129:
 753 001c 00C00840 		.word	1074315264
 754 0020 00000940 		.word	1074331648
 755 0024 00C10840 		.word	1074315520
 756              		.size	twi_get_pdc_base, .-twi_get_pdc_base
 757              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 758              		.align	2
 759              		.type	cpu_irq_critical_section_counter, %object
 760              		.size	cpu_irq_critical_section_counter, 4
 761              	cpu_irq_critical_section_counter:
 762 0000 00000000 		.space	4
 763              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 764              		.type	cpu_irq_prev_interrupt_state, %object
 765              		.size	cpu_irq_prev_interrupt_state, 1
 766              	cpu_irq_prev_interrupt_state:
 767 0000 00       		.space	1
 768              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
