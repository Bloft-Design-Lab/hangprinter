ARM GAS  /tmp/ccHMRXxq.s 			page 1


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
  13              		.file	"twi.c"
  14              		.section	.text.twi_mk_addr.part.1,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	twi_mk_addr.part.1, %function
  22              	twi_mk_addr.part.1:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 0129     		cmp	r1, #1
  27 0002 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
  28 0004 07DD     		ble	.L1
  29 0006 4278     		ldrb	r2, [r0, #1]	@ zero_extendqisi2
  30 0008 0229     		cmp	r1, #2
  31 000a 42EA0323 		orr	r3, r2, r3, lsl #8
  32 000e 1CBF     		itt	ne
  33 0010 8278     		ldrbne	r2, [r0, #2]	@ zero_extendqisi2
  34 0012 42EA0323 		orrne	r3, r2, r3, lsl #8
  35              	.L1:
  36 0016 1846     		mov	r0, r3
  37 0018 7047     		bx	lr
  38              		.size	twi_mk_addr.part.1, .-twi_mk_addr.part.1
  39 001a 00BF     		.section	.text.twi_enable_master_mode,"ax",%progbits
  40              		.align	1
  41              		.p2align 2,,3
  42              		.global	twi_enable_master_mode
  43              		.syntax unified
  44              		.thumb
  45              		.thumb_func
  46              		.fpu fpv4-sp-d16
  47              		.type	twi_enable_master_mode, %function
  48              	twi_enable_master_mode:
  49              		@ args = 0, pretend = 0, frame = 0
  50              		@ frame_needed = 0, uses_anonymous_args = 0
  51              		@ link register save eliminated.
  52 0000 0821     		movs	r1, #8
  53 0002 2022     		movs	r2, #32
  54 0004 0423     		movs	r3, #4
  55 0006 0160     		str	r1, [r0]
  56 0008 0260     		str	r2, [r0]
  57 000a 0360     		str	r3, [r0]
ARM GAS  /tmp/ccHMRXxq.s 			page 2


  58 000c 7047     		bx	lr
  59              		.size	twi_enable_master_mode, .-twi_enable_master_mode
  60 000e 00BF     		.section	.text.twi_disable_master_mode,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.global	twi_disable_master_mode
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu fpv4-sp-d16
  68              		.type	twi_disable_master_mode, %function
  69              	twi_disable_master_mode:
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72              		@ link register save eliminated.
  73 0000 0823     		movs	r3, #8
  74 0002 0360     		str	r3, [r0]
  75 0004 7047     		bx	lr
  76              		.size	twi_disable_master_mode, .-twi_disable_master_mode
  77 0006 00BF     		.section	.text.twi_set_speed,"ax",%progbits
  78              		.align	1
  79              		.p2align 2,,3
  80              		.global	twi_set_speed
  81              		.syntax unified
  82              		.thumb
  83              		.thumb_func
  84              		.fpu fpv4-sp-d16
  85              		.type	twi_set_speed, %function
  86              	twi_set_speed:
  87              		@ args = 0, pretend = 0, frame = 0
  88              		@ frame_needed = 0, uses_anonymous_args = 0
  89 0000 2A4B     		ldr	r3, .L37
  90 0002 9942     		cmp	r1, r3
  91 0004 49D8     		bhi	.L23
  92 0006 A3F57A53 		sub	r3, r3, #16000
  93 000a 9942     		cmp	r1, r3
  94 000c 22D9     		bls	.L11
  95 000e 284B     		ldr	r3, .L37+4
  96 0010 10B5     		push	{r4, lr}
  97 0012 A3FB02E3 		umull	lr, r3, r3, r2
  98 0016 274C     		ldr	r4, .L37+8
  99 0018 9B0B     		lsrs	r3, r3, #14
 100 001a 0C44     		add	r4, r4, r1
 101 001c 191F     		subs	r1, r3, #4
 102 001e FF29     		cmp	r1, #255
 103 0020 4FEA8404 		lsl	r4, r4, #2
 104 0024 4FF00003 		mov	r3, #0
 105 0028 B2FBF4F2 		udiv	r2, r2, r4
 106 002c A2F10402 		sub	r2, r2, #4
 107 0030 39D9     		bls	.L12
 108              	.L14:
 109 0032 4908     		lsrs	r1, r1, #1
 110 0034 FF29     		cmp	r1, #255
 111 0036 03F10103 		add	r3, r3, #1
 112 003a 28D9     		bls	.L35
 113 003c 072B     		cmp	r3, #7
 114 003e F8D1     		bne	.L14
ARM GAS  /tmp/ccHMRXxq.s 			page 3


 115              	.L24:
 116 0040 4FF4E023 		mov	r3, #458752
 117              	.L15:
 118 0044 C9B2     		uxtb	r1, r1
 119 0046 1202     		lsls	r2, r2, #8
 120 0048 0B43     		orrs	r3, r3, r1
 121 004a 92B2     		uxth	r2, r2
 122 004c 1A43     		orrs	r2, r2, r3
 123 004e 0261     		str	r2, [r0, #16]
 124 0050 0020     		movs	r0, #0
 125 0052 10BD     		pop	{r4, pc}
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
 151 0086 072B     		cmp	r3, #7
 152 0088 DAD0     		beq	.L24
 153              	.L18:
 154 008a 5208     		lsrs	r2, r2, #1
 155 008c 0133     		adds	r3, r3, #1
 156              	.L35:
 157 008e FF2A     		cmp	r2, #255
 158 0090 F9D8     		bhi	.L17
 159 0092 1B04     		lsls	r3, r3, #16
 160 0094 03F4E023 		and	r3, r3, #458752
 161 0098 D4E7     		b	.L15
 162              	.L23:
 163 009a 0120     		movs	r0, #1
 164 009c 7047     		bx	lr
 165              	.L36:
 166 009e 1B04     		lsls	r3, r3, #16
 167 00a0 03F4E023 		and	r3, r3, #458752
 168 00a4 E7E7     		b	.L19
 169              	.L12:
 170 00a6 FF2A     		cmp	r2, #255
 171 00a8 EFD8     		bhi	.L18
ARM GAS  /tmp/ccHMRXxq.s 			page 4


 172 00aa CBE7     		b	.L15
 173              	.L38:
 174              		.align	2
 175              	.L37:
 176 00ac 801A0600 		.word	400000
 177 00b0 F1197605 		.word	91625969
 178 00b4 0012FD3F 		.word	1073549824
 179              		.size	twi_set_speed, .-twi_set_speed
 180              		.section	.text.twi_master_init,"ax",%progbits
 181              		.align	1
 182              		.p2align 2,,3
 183              		.global	twi_master_init
 184              		.syntax unified
 185              		.thumb
 186              		.thumb_func
 187              		.fpu fpv4-sp-d16
 188              		.type	twi_master_init, %function
 189              	twi_master_init:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192 0000 4FF0FF33 		mov	r3, #-1
 193 0004 70B5     		push	{r4, r5, r6, lr}
 194 0006 8362     		str	r3, [r0, #40]
 195 0008 0D46     		mov	r5, r1
 196 000a 8023     		movs	r3, #128
 197 000c 026A     		ldr	r2, [r0, #32]
 198 000e 0360     		str	r3, [r0]
 199 0010 0821     		movs	r1, #8
 200 0012 0423     		movs	r3, #4
 201 0014 2026     		movs	r6, #32
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
 216 0038 4FEA5010 		lsr	r0, r0, #5
 217 003c 08BF     		it	eq
 218 003e 2360     		streq	r3, [r4]
 219 0040 70BD     		pop	{r4, r5, r6, pc}
 220              		.size	twi_master_init, .-twi_master_init
 221 0042 00BF     		.section	.text.twi_mk_addr,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	twi_mk_addr
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccHMRXxq.s 			page 5


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
 247              		.fpu fpv4-sp-d16
 248              		.type	twi_master_read, %function
 249              	twi_master_read:
 250              		@ args = 0, pretend = 0, frame = 0
 251              		@ frame_needed = 0, uses_anonymous_args = 0
 252 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 253 0002 CC68     		ldr	r4, [r1, #12]
 254 0004 002C     		cmp	r4, #0
 255 0006 48D0     		beq	.L55
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
 271 002c 49B3     		cbz	r1, .L56
 272 002e FFF7FEFF 		bl	twi_mk_addr.part.1
 273 0032 012C     		cmp	r4, #1
 274 0034 E860     		str	r0, [r5, #12]
 275 0036 28D0     		beq	.L69
 276              	.L47:
 277 0038 0123     		movs	r3, #1
 278 003a 2B60     		str	r3, [r5]
 279 003c 0020     		movs	r0, #0
 280              	.L48:
 281 003e 2B6A     		ldr	r3, [r5, #32]
 282 0040 D905     		lsls	r1, r3, #23
 283 0042 47F23052 		movw	r2, #30000
 284 0046 4FF00207 		mov	r7, #2
 285 004a 11D4     		bmi	.L57
ARM GAS  /tmp/ccHMRXxq.s 			page 6


 286              	.L71:
 287 004c 511E     		subs	r1, r2, #1
 288 004e 3AB3     		cbz	r2, .L58
 289 0050 012C     		cmp	r4, #1
 290 0052 1ED0     		beq	.L70
 291              	.L67:
 292 0054 9B07     		lsls	r3, r3, #30
 293 0056 07D5     		bpl	.L52
 294 0058 2B6B     		ldr	r3, [r5, #48]
 295 005a 3370     		strb	r3, [r6]
 296 005c 013C     		subs	r4, r4, #1
 297 005e 06F10106 		add	r6, r6, #1
 298 0062 08D0     		beq	.L53
 299 0064 47F23051 		movw	r1, #30000
 300              	.L52:
 301 0068 2B6A     		ldr	r3, [r5, #32]
 302 006a 0A46     		mov	r2, r1
 303 006c D905     		lsls	r1, r3, #23
 304 006e EDD5     		bpl	.L71
 305              	.L57:
 306 0070 0524     		movs	r4, #5
 307 0072 2046     		mov	r0, r4
 308 0074 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 309              	.L53:
 310 0076 2B6A     		ldr	r3, [r5, #32]
 311 0078 DA07     		lsls	r2, r3, #31
 312 007a FCD5     		bpl	.L53
 313 007c 2B6A     		ldr	r3, [r5, #32]
 314 007e 2046     		mov	r0, r4
 315 0080 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 316              	.L56:
 317 0082 0846     		mov	r0, r1
 318 0084 012C     		cmp	r4, #1
 319 0086 E860     		str	r0, [r5, #12]
 320 0088 D6D1     		bne	.L47
 321              	.L69:
 322 008a 0323     		movs	r3, #3
 323 008c 2B60     		str	r3, [r5]
 324 008e 2046     		mov	r0, r4
 325 0090 D5E7     		b	.L48
 326              	.L70:
 327 0092 00B9     		cbnz	r0, .L51
 328 0094 2F60     		str	r7, [r5]
 329              	.L51:
 330 0096 0120     		movs	r0, #1
 331 0098 DCE7     		b	.L67
 332              	.L55:
 333 009a 0124     		movs	r4, #1
 334 009c 2046     		mov	r0, r4
 335 009e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 336              	.L58:
 337 00a0 0924     		movs	r4, #9
 338 00a2 2046     		mov	r0, r4
 339 00a4 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 340              		.size	twi_master_read, .-twi_master_read
 341 00a6 00BF     		.section	.text.twi_master_write,"ax",%progbits
 342              		.align	1
ARM GAS  /tmp/ccHMRXxq.s 			page 7


 343              		.p2align 2,,3
 344              		.global	twi_master_write
 345              		.syntax unified
 346              		.thumb
 347              		.thumb_func
 348              		.fpu fpv4-sp-d16
 349              		.type	twi_master_write, %function
 350              	twi_master_write:
 351              		@ args = 0, pretend = 0, frame = 0
 352              		@ frame_needed = 0, uses_anonymous_args = 0
 353 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 354 0002 CD68     		ldr	r5, [r1, #12]
 355 0004 5DB3     		cbz	r5, .L82
 356 0006 0446     		mov	r4, r0
 357 0008 0027     		movs	r7, #0
 358 000a 8E68     		ldr	r6, [r1, #8]
 359 000c 6760     		str	r7, [r4, #4]
 360 000e 0B7C     		ldrb	r3, [r1, #16]	@ zero_extendqisi2
 361 0010 0846     		mov	r0, r1
 362 0012 4968     		ldr	r1, [r1, #4]
 363 0014 1B04     		lsls	r3, r3, #16
 364 0016 0A02     		lsls	r2, r1, #8
 365 0018 03F4FE03 		and	r3, r3, #8323072
 366 001c 02F44072 		and	r2, r2, #768
 367 0020 1343     		orrs	r3, r3, r2
 368 0022 6360     		str	r3, [r4, #4]
 369 0024 E760     		str	r7, [r4, #12]
 370 0026 C1B1     		cbz	r1, .L83
 371 0028 FFF7FEFF 		bl	twi_mk_addr.part.1
 372              	.L74:
 373 002c E060     		str	r0, [r4, #12]
 374              	.L77:
 375 002e 236A     		ldr	r3, [r4, #32]
 376 0030 DF05     		lsls	r7, r3, #23
 377 0032 09D4     		bmi	.L79
 378              	.L95:
 379 0034 5807     		lsls	r0, r3, #29
 380 0036 FAD5     		bpl	.L77
 381 0038 16F8013B 		ldrb	r3, [r6], #1	@ zero_extendqisi2
 382 003c 6363     		str	r3, [r4, #52]
 383 003e 013D     		subs	r5, r5, #1
 384 0040 07D0     		beq	.L78
 385 0042 236A     		ldr	r3, [r4, #32]
 386 0044 DF05     		lsls	r7, r3, #23
 387 0046 F5D5     		bpl	.L95
 388              	.L79:
 389 0048 0525     		movs	r5, #5
 390 004a 2846     		mov	r0, r5
 391 004c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 392              	.L99:
 393 004e 5A07     		lsls	r2, r3, #29
 394 0050 08D4     		bmi	.L98
 395              	.L78:
 396 0052 236A     		ldr	r3, [r4, #32]
 397 0054 D905     		lsls	r1, r3, #23
 398 0056 F7D4     		bmi	.L79
 399 0058 F9E7     		b	.L99
ARM GAS  /tmp/ccHMRXxq.s 			page 8


 400              	.L83:
 401 005a 0846     		mov	r0, r1
 402 005c E6E7     		b	.L74
 403              	.L82:
 404 005e 0125     		movs	r5, #1
 405 0060 2846     		mov	r0, r5
 406 0062 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 407              	.L98:
 408 0064 0223     		movs	r3, #2
 409 0066 2360     		str	r3, [r4]
 410              	.L81:
 411 0068 236A     		ldr	r3, [r4, #32]
 412 006a DB07     		lsls	r3, r3, #31
 413 006c FCD5     		bpl	.L81
 414 006e 2846     		mov	r0, r5
 415 0070 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 416              		.size	twi_master_write, .-twi_master_write
 417              		.section	.text.twi_probe,"ax",%progbits
 418              		.align	1
 419              		.p2align 2,,3
 420              		.global	twi_probe
 421              		.syntax unified
 422              		.thumb
 423              		.thumb_func
 424              		.fpu fpv4-sp-d16
 425              		.type	twi_probe, %function
 426              	twi_probe:
 427              		@ args = 0, pretend = 0, frame = 24
 428              		@ frame_needed = 0, uses_anonymous_args = 0
 429 0000 10B5     		push	{r4, lr}
 430 0002 86B0     		sub	sp, sp, #24
 431 0004 06AA     		add	r2, sp, #24
 432 0006 0023     		movs	r3, #0
 433 0008 02F8153D 		strb	r3, [r2, #-21]!
 434 000c 8DF81410 		strb	r1, [sp, #20]
 435 0010 0124     		movs	r4, #1
 436 0012 01A9     		add	r1, sp, #4
 437 0014 0392     		str	r2, [sp, #12]
 438 0016 8DF80430 		strb	r3, [sp, #4]
 439 001a 0293     		str	r3, [sp, #8]
 440 001c 0494     		str	r4, [sp, #16]
 441 001e FFF7FEFF 		bl	twi_master_write
 442 0022 06B0     		add	sp, sp, #24
 443              		@ sp needed
 444 0024 10BD     		pop	{r4, pc}
 445              		.size	twi_probe, .-twi_probe
 446 0026 00BF     		.section	.text.twi_enable_interrupt,"ax",%progbits
 447              		.align	1
 448              		.p2align 2,,3
 449              		.global	twi_enable_interrupt
 450              		.syntax unified
 451              		.thumb
 452              		.thumb_func
 453              		.fpu fpv4-sp-d16
 454              		.type	twi_enable_interrupt, %function
 455              	twi_enable_interrupt:
 456              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccHMRXxq.s 			page 9


 457              		@ frame_needed = 0, uses_anonymous_args = 0
 458              		@ link register save eliminated.
 459 0000 4162     		str	r1, [r0, #36]
 460 0002 7047     		bx	lr
 461              		.size	twi_enable_interrupt, .-twi_enable_interrupt
 462              		.section	.text.twi_disable_interrupt,"ax",%progbits
 463              		.align	1
 464              		.p2align 2,,3
 465              		.global	twi_disable_interrupt
 466              		.syntax unified
 467              		.thumb
 468              		.thumb_func
 469              		.fpu fpv4-sp-d16
 470              		.type	twi_disable_interrupt, %function
 471              	twi_disable_interrupt:
 472              		@ args = 0, pretend = 0, frame = 0
 473              		@ frame_needed = 0, uses_anonymous_args = 0
 474              		@ link register save eliminated.
 475 0000 8162     		str	r1, [r0, #40]
 476 0002 036A     		ldr	r3, [r0, #32]
 477 0004 7047     		bx	lr
 478              		.size	twi_disable_interrupt, .-twi_disable_interrupt
 479 0006 00BF     		.section	.text.twi_get_interrupt_status,"ax",%progbits
 480              		.align	1
 481              		.p2align 2,,3
 482              		.global	twi_get_interrupt_status
 483              		.syntax unified
 484              		.thumb
 485              		.thumb_func
 486              		.fpu fpv4-sp-d16
 487              		.type	twi_get_interrupt_status, %function
 488              	twi_get_interrupt_status:
 489              		@ args = 0, pretend = 0, frame = 0
 490              		@ frame_needed = 0, uses_anonymous_args = 0
 491              		@ link register save eliminated.
 492 0000 006A     		ldr	r0, [r0, #32]
 493 0002 7047     		bx	lr
 494              		.size	twi_get_interrupt_status, .-twi_get_interrupt_status
 495              		.section	.text.twi_get_interrupt_mask,"ax",%progbits
 496              		.align	1
 497              		.p2align 2,,3
 498              		.global	twi_get_interrupt_mask
 499              		.syntax unified
 500              		.thumb
 501              		.thumb_func
 502              		.fpu fpv4-sp-d16
 503              		.type	twi_get_interrupt_mask, %function
 504              	twi_get_interrupt_mask:
 505              		@ args = 0, pretend = 0, frame = 0
 506              		@ frame_needed = 0, uses_anonymous_args = 0
 507              		@ link register save eliminated.
 508 0000 C06A     		ldr	r0, [r0, #44]
 509 0002 7047     		bx	lr
 510              		.size	twi_get_interrupt_mask, .-twi_get_interrupt_mask
 511              		.section	.text.twi_read_byte,"ax",%progbits
 512              		.align	1
 513              		.p2align 2,,3
ARM GAS  /tmp/ccHMRXxq.s 			page 10


 514              		.global	twi_read_byte
 515              		.syntax unified
 516              		.thumb
 517              		.thumb_func
 518              		.fpu fpv4-sp-d16
 519              		.type	twi_read_byte, %function
 520              	twi_read_byte:
 521              		@ args = 0, pretend = 0, frame = 0
 522              		@ frame_needed = 0, uses_anonymous_args = 0
 523              		@ link register save eliminated.
 524 0000 006B     		ldr	r0, [r0, #48]
 525 0002 C0B2     		uxtb	r0, r0
 526 0004 7047     		bx	lr
 527              		.size	twi_read_byte, .-twi_read_byte
 528 0006 00BF     		.section	.text.twi_write_byte,"ax",%progbits
 529              		.align	1
 530              		.p2align 2,,3
 531              		.global	twi_write_byte
 532              		.syntax unified
 533              		.thumb
 534              		.thumb_func
 535              		.fpu fpv4-sp-d16
 536              		.type	twi_write_byte, %function
 537              	twi_write_byte:
 538              		@ args = 0, pretend = 0, frame = 0
 539              		@ frame_needed = 0, uses_anonymous_args = 0
 540              		@ link register save eliminated.
 541 0000 4163     		str	r1, [r0, #52]
 542 0002 7047     		bx	lr
 543              		.size	twi_write_byte, .-twi_write_byte
 544              		.section	.text.twi_enable_slave_mode,"ax",%progbits
 545              		.align	1
 546              		.p2align 2,,3
 547              		.global	twi_enable_slave_mode
 548              		.syntax unified
 549              		.thumb
 550              		.thumb_func
 551              		.fpu fpv4-sp-d16
 552              		.type	twi_enable_slave_mode, %function
 553              	twi_enable_slave_mode:
 554              		@ args = 0, pretend = 0, frame = 0
 555              		@ frame_needed = 0, uses_anonymous_args = 0
 556              		@ link register save eliminated.
 557 0000 0821     		movs	r1, #8
 558 0002 2022     		movs	r2, #32
 559 0004 1023     		movs	r3, #16
 560 0006 0160     		str	r1, [r0]
 561 0008 0260     		str	r2, [r0]
 562 000a 0360     		str	r3, [r0]
 563 000c 7047     		bx	lr
 564              		.size	twi_enable_slave_mode, .-twi_enable_slave_mode
 565 000e 00BF     		.section	.text.twi_disable_slave_mode,"ax",%progbits
 566              		.align	1
 567              		.p2align 2,,3
 568              		.global	twi_disable_slave_mode
 569              		.syntax unified
 570              		.thumb
ARM GAS  /tmp/ccHMRXxq.s 			page 11


 571              		.thumb_func
 572              		.fpu fpv4-sp-d16
 573              		.type	twi_disable_slave_mode, %function
 574              	twi_disable_slave_mode:
 575              		@ args = 0, pretend = 0, frame = 0
 576              		@ frame_needed = 0, uses_anonymous_args = 0
 577              		@ link register save eliminated.
 578 0000 2023     		movs	r3, #32
 579 0002 0360     		str	r3, [r0]
 580 0004 7047     		bx	lr
 581              		.size	twi_disable_slave_mode, .-twi_disable_slave_mode
 582 0006 00BF     		.section	.text.twi_slave_init,"ax",%progbits
 583              		.align	1
 584              		.p2align 2,,3
 585              		.global	twi_slave_init
 586              		.syntax unified
 587              		.thumb
 588              		.thumb_func
 589              		.fpu fpv4-sp-d16
 590              		.type	twi_slave_init, %function
 591              	twi_slave_init:
 592              		@ args = 0, pretend = 0, frame = 0
 593              		@ frame_needed = 0, uses_anonymous_args = 0
 594              		@ link register save eliminated.
 595 0000 30B4     		push	{r4, r5}
 596 0002 4FF0FF33 		mov	r3, #-1
 597 0006 8362     		str	r3, [r0, #40]
 598 0008 0904     		lsls	r1, r1, #16
 599 000a 8023     		movs	r3, #128
 600 000c 026A     		ldr	r2, [r0, #32]
 601 000e 0360     		str	r3, [r0]
 602 0010 0824     		movs	r4, #8
 603 0012 01F4FE01 		and	r1, r1, #8323072
 604 0016 2022     		movs	r2, #32
 605 0018 1023     		movs	r3, #16
 606 001a 056B     		ldr	r5, [r0, #48]
 607 001c 8160     		str	r1, [r0, #8]
 608 001e 0460     		str	r4, [r0]
 609 0020 0260     		str	r2, [r0]
 610 0022 30BC     		pop	{r4, r5}
 611 0024 0360     		str	r3, [r0]
 612 0026 7047     		bx	lr
 613              		.size	twi_slave_init, .-twi_slave_init
 614              		.section	.text.twi_set_slave_addr,"ax",%progbits
 615              		.align	1
 616              		.p2align 2,,3
 617              		.global	twi_set_slave_addr
 618              		.syntax unified
 619              		.thumb
 620              		.thumb_func
 621              		.fpu fpv4-sp-d16
 622              		.type	twi_set_slave_addr, %function
 623              	twi_set_slave_addr:
 624              		@ args = 0, pretend = 0, frame = 0
 625              		@ frame_needed = 0, uses_anonymous_args = 0
 626              		@ link register save eliminated.
 627 0000 0904     		lsls	r1, r1, #16
ARM GAS  /tmp/ccHMRXxq.s 			page 12


 628 0002 01F4FE01 		and	r1, r1, #8323072
 629 0006 8160     		str	r1, [r0, #8]
 630 0008 7047     		bx	lr
 631              		.size	twi_set_slave_addr, .-twi_set_slave_addr
 632 000a 00BF     		.section	.text.twi_slave_read,"ax",%progbits
 633              		.align	1
 634              		.p2align 2,,3
 635              		.global	twi_slave_read
 636              		.syntax unified
 637              		.thumb
 638              		.thumb_func
 639              		.fpu fpv4-sp-d16
 640              		.type	twi_slave_read, %function
 641              	twi_slave_read:
 642              		@ args = 0, pretend = 0, frame = 0
 643              		@ frame_needed = 0, uses_anonymous_args = 0
 644              		@ link register save eliminated.
 645 0000 30B4     		push	{r4, r5}
 646 0002 0025     		movs	r5, #0
 647 0004 40F60104 		movw	r4, #2049
 648              	.L114:
 649 0008 036A     		ldr	r3, [r0, #32]
 650 000a 13F0100F 		tst	r3, #16
 651 000e 03F02A02 		and	r2, r3, #42
 652 0012 0DD0     		beq	.L115
 653              	.L118:
 654 0014 0A2A     		cmp	r2, #10
 655 0016 F7D1     		bne	.L114
 656 0018 036B     		ldr	r3, [r0, #48]
 657 001a 0B70     		strb	r3, [r1]
 658 001c 036A     		ldr	r3, [r0, #32]
 659 001e 13F0100F 		tst	r3, #16
 660 0022 05F10105 		add	r5, r5, #1
 661 0026 01F10101 		add	r1, r1, #1
 662 002a 03F02A02 		and	r2, r3, #42
 663 002e F1D1     		bne	.L118
 664              	.L115:
 665 0030 34EA0303 		bics	r3, r4, r3
 666 0034 E8D1     		bne	.L114
 667 0036 2846     		mov	r0, r5
 668 0038 30BC     		pop	{r4, r5}
 669 003a 7047     		bx	lr
 670              		.size	twi_slave_read, .-twi_slave_read
 671              		.section	.text.twi_slave_write,"ax",%progbits
 672              		.align	1
 673              		.p2align 2,,3
 674              		.global	twi_slave_write
 675              		.syntax unified
 676              		.thumb
 677              		.thumb_func
 678              		.fpu fpv4-sp-d16
 679              		.type	twi_slave_write, %function
 680              	twi_slave_write:
 681              		@ args = 0, pretend = 0, frame = 0
 682              		@ frame_needed = 0, uses_anonymous_args = 0
 683              		@ link register save eliminated.
 684 0000 30B4     		push	{r4, r5}
ARM GAS  /tmp/ccHMRXxq.s 			page 13


 685 0002 0025     		movs	r5, #0
 686 0004 40F60104 		movw	r4, #2049
 687              	.L120:
 688 0008 036A     		ldr	r3, [r0, #32]
 689 000a 13F0100F 		tst	r3, #16
 690 000e 03F02C02 		and	r2, r3, #44
 691 0012 0DD0     		beq	.L121
 692              	.L124:
 693 0014 042A     		cmp	r2, #4
 694 0016 F7D1     		bne	.L120
 695 0018 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 696 001a 4363     		str	r3, [r0, #52]
 697 001c 036A     		ldr	r3, [r0, #32]
 698 001e 13F0100F 		tst	r3, #16
 699 0022 05F10105 		add	r5, r5, #1
 700 0026 01F10101 		add	r1, r1, #1
 701 002a 03F02C02 		and	r2, r3, #44
 702 002e F1D1     		bne	.L124
 703              	.L121:
 704 0030 34EA0303 		bics	r3, r4, r3
 705 0034 E8D1     		bne	.L120
 706 0036 2846     		mov	r0, r5
 707 0038 30BC     		pop	{r4, r5}
 708 003a 7047     		bx	lr
 709              		.size	twi_slave_write, .-twi_slave_write
 710              		.section	.text.twi_reset,"ax",%progbits
 711              		.align	1
 712              		.p2align 2,,3
 713              		.global	twi_reset
 714              		.syntax unified
 715              		.thumb
 716              		.thumb_func
 717              		.fpu fpv4-sp-d16
 718              		.type	twi_reset, %function
 719              	twi_reset:
 720              		@ args = 0, pretend = 0, frame = 0
 721              		@ frame_needed = 0, uses_anonymous_args = 0
 722              		@ link register save eliminated.
 723 0000 8023     		movs	r3, #128
 724 0002 0360     		str	r3, [r0]
 725 0004 036B     		ldr	r3, [r0, #48]
 726 0006 7047     		bx	lr
 727              		.size	twi_reset, .-twi_reset
 728              		.section	.text.twi_get_pdc_base,"ax",%progbits
 729              		.align	1
 730              		.p2align 2,,3
 731              		.global	twi_get_pdc_base
 732              		.syntax unified
 733              		.thumb
 734              		.thumb_func
 735              		.fpu fpv4-sp-d16
 736              		.type	twi_get_pdc_base, %function
 737              	twi_get_pdc_base:
 738              		@ args = 0, pretend = 0, frame = 0
 739              		@ frame_needed = 0, uses_anonymous_args = 0
 740              		@ link register save eliminated.
 741 0000 064B     		ldr	r3, .L130
ARM GAS  /tmp/ccHMRXxq.s 			page 14


 742 0002 9842     		cmp	r0, r3
 743 0004 07D0     		beq	.L128
 744 0006 064A     		ldr	r2, .L130+4
 745 0008 03F58243 		add	r3, r3, #16640
 746 000c 9042     		cmp	r0, r2
 747 000e 0CBF     		ite	eq
 748 0010 1846     		moveq	r0, r3
 749 0012 0020     		movne	r0, #0
 750 0014 7047     		bx	lr
 751              	.L128:
 752 0016 0348     		ldr	r0, .L130+8
 753 0018 7047     		bx	lr
 754              	.L131:
 755 001a 00BF     		.align	2
 756              	.L130:
 757 001c 00800A40 		.word	1074429952
 758 0020 00C00A40 		.word	1074446336
 759 0024 00810A40 		.word	1074430208
 760              		.size	twi_get_pdc_base, .-twi_get_pdc_base
 761              		.section	.text.twi_set_write_protection,"ax",%progbits
 762              		.align	1
 763              		.p2align 2,,3
 764              		.global	twi_set_write_protection
 765              		.syntax unified
 766              		.thumb
 767              		.thumb_func
 768              		.fpu fpv4-sp-d16
 769              		.type	twi_set_write_protection, %function
 770              	twi_set_write_protection:
 771              		@ args = 0, pretend = 0, frame = 0
 772              		@ frame_needed = 0, uses_anonymous_args = 0
 773              		@ link register save eliminated.
 774 0000 044B     		ldr	r3, .L135
 775 0002 054A     		ldr	r2, .L135+4
 776 0004 0029     		cmp	r1, #0
 777 0006 14BF     		ite	ne
 778 0008 1946     		movne	r1, r3
 779 000a 1146     		moveq	r1, r2
 780 000c C0F8E410 		str	r1, [r0, #228]
 781 0010 7047     		bx	lr
 782              	.L136:
 783 0012 00BF     		.align	2
 784              	.L135:
 785 0014 01495754 		.word	1415006465
 786 0018 00495754 		.word	1415006464
 787              		.size	twi_set_write_protection, .-twi_set_write_protection
 788              		.section	.text.twi_read_write_protection_status,"ax",%progbits
 789              		.align	1
 790              		.p2align 2,,3
 791              		.global	twi_read_write_protection_status
 792              		.syntax unified
 793              		.thumb
 794              		.thumb_func
 795              		.fpu fpv4-sp-d16
 796              		.type	twi_read_write_protection_status, %function
 797              	twi_read_write_protection_status:
 798              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccHMRXxq.s 			page 15


 799              		@ frame_needed = 0, uses_anonymous_args = 0
 800              		@ link register save eliminated.
 801 0000 D0F8E830 		ldr	r3, [r0, #232]
 802 0004 0B60     		str	r3, [r1]
 803 0006 7047     		bx	lr
 804              		.size	twi_read_write_protection_status, .-twi_read_write_protection_status
 805              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 806              		.align	2
 807              		.type	cpu_irq_critical_section_counter, %object
 808              		.size	cpu_irq_critical_section_counter, 4
 809              	cpu_irq_critical_section_counter:
 810 0000 00000000 		.space	4
 811              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 812              		.type	cpu_irq_prev_interrupt_state, %object
 813              		.size	cpu_irq_prev_interrupt_state, 1
 814              	cpu_irq_prev_interrupt_state:
 815 0000 00       		.space	1
 816              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
