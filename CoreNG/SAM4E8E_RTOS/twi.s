ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchG0Dwh.s 			page 1


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
  14              		.text
  15              		.section	.text.twi_mk_addr.part.1,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	twi_mk_addr.part.1, %function
  23              	twi_mk_addr.part.1:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0129     		cmp	r1, #1
  28 0002 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
  29 0004 08DD     		ble	.L1
  30 0006 0388     		ldrh	r3, [r0]	@ unaligned
  31 0008 0229     		cmp	r1, #2
  32 000a 5BBA     		rev16	r3, r3
  33 000c 18BF     		it	ne
  34 000e 8278     		ldrbne	r2, [r0, #2]	@ zero_extendqisi2
  35 0010 9BB2     		uxth	r3, r3
  36 0012 18BF     		it	ne
  37 0014 42EA0323 		orrne	r3, r2, r3, lsl #8
  38              	.L1:
  39 0018 1846     		mov	r0, r3
  40 001a 7047     		bx	lr
  41              		.size	twi_mk_addr.part.1, .-twi_mk_addr.part.1
  42              		.section	.text.twi_enable_master_mode,"ax",%progbits
  43              		.align	1
  44              		.p2align 2,,3
  45              		.global	twi_enable_master_mode
  46              		.syntax unified
  47              		.thumb
  48              		.thumb_func
  49              		.fpu fpv4-sp-d16
  50              		.type	twi_enable_master_mode, %function
  51              	twi_enable_master_mode:
  52              		@ args = 0, pretend = 0, frame = 0
  53              		@ frame_needed = 0, uses_anonymous_args = 0
  54              		@ link register save eliminated.
  55 0000 0821     		movs	r1, #8
  56 0002 2022     		movs	r2, #32
  57 0004 0423     		movs	r3, #4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchG0Dwh.s 			page 2


  58 0006 0160     		str	r1, [r0]
  59 0008 0260     		str	r2, [r0]
  60 000a 0360     		str	r3, [r0]
  61 000c 7047     		bx	lr
  62              		.size	twi_enable_master_mode, .-twi_enable_master_mode
  63 000e 00BF     		.section	.text.twi_disable_master_mode,"ax",%progbits
  64              		.align	1
  65              		.p2align 2,,3
  66              		.global	twi_disable_master_mode
  67              		.syntax unified
  68              		.thumb
  69              		.thumb_func
  70              		.fpu fpv4-sp-d16
  71              		.type	twi_disable_master_mode, %function
  72              	twi_disable_master_mode:
  73              		@ args = 0, pretend = 0, frame = 0
  74              		@ frame_needed = 0, uses_anonymous_args = 0
  75              		@ link register save eliminated.
  76 0000 0823     		movs	r3, #8
  77 0002 0360     		str	r3, [r0]
  78 0004 7047     		bx	lr
  79              		.size	twi_disable_master_mode, .-twi_disable_master_mode
  80 0006 00BF     		.section	.text.twi_set_speed,"ax",%progbits
  81              		.align	1
  82              		.p2align 2,,3
  83              		.global	twi_set_speed
  84              		.syntax unified
  85              		.thumb
  86              		.thumb_func
  87              		.fpu fpv4-sp-d16
  88              		.type	twi_set_speed, %function
  89              	twi_set_speed:
  90              		@ args = 0, pretend = 0, frame = 0
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92              		@ link register save eliminated.
  93 0000 2A4B     		ldr	r3, .L41
  94 0002 9942     		cmp	r1, r3
  95 0004 4AD8     		bhi	.L22
  96 0006 A3F57A53 		sub	r3, r3, #16000
  97 000a 9942     		cmp	r1, r3
  98 000c 24D9     		bls	.L11
  99 000e 284B     		ldr	r3, .L41+4
 100 0010 10B4     		push	{r4}
 101 0012 A3FB02C3 		umull	ip, r3, r3, r2
 102 0016 274C     		ldr	r4, .L41+8
 103 0018 9B0B     		lsrs	r3, r3, #14
 104 001a 0C44     		add	r4, r4, r1
 105 001c 191F     		subs	r1, r3, #4
 106 001e FF29     		cmp	r1, #255
 107 0020 4FEA8404 		lsl	r4, r4, #2
 108 0024 4FF00003 		mov	r3, #0
 109 0028 B2FBF4F2 		udiv	r2, r2, r4
 110 002c A2F10402 		sub	r2, r2, #4
 111 0030 38D9     		bls	.L38
 112              	.L12:
 113 0032 4908     		lsrs	r1, r1, #1
 114 0034 FF29     		cmp	r1, #255
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchG0Dwh.s 			page 3


 115 0036 03F10103 		add	r3, r3, #1
 116 003a 2AD9     		bls	.L37
 117 003c 072B     		cmp	r3, #7
 118 003e F8D1     		bne	.L12
 119              	.L33:
 120 0040 4FF4E023 		mov	r3, #458752
 121              	.L14:
 122 0044 1202     		lsls	r2, r2, #8
 123 0046 C9B2     		uxtb	r1, r1
 124 0048 92B2     		uxth	r2, r2
 125 004a 0B43     		orrs	r3, r3, r1
 126 004c 1A43     		orrs	r2, r2, r3
 127 004e 0261     		str	r2, [r0, #16]
 128 0050 5DF8044B 		ldr	r4, [sp], #4
 129 0054 0020     		movs	r0, #0
 130 0056 7047     		bx	lr
 131              	.L11:
 132 0058 4900     		lsls	r1, r1, #1
 133 005a B2FBF1F2 		udiv	r2, r2, r1
 134 005e 043A     		subs	r2, r2, #4
 135 0060 FF2A     		cmp	r2, #255
 136 0062 4FF00003 		mov	r3, #0
 137 0066 08D9     		bls	.L19
 138              	.L21:
 139 0068 5208     		lsrs	r2, r2, #1
 140 006a FF2A     		cmp	r2, #255
 141 006c 03F10103 		add	r3, r3, #1
 142 0070 16D9     		bls	.L39
 143 0072 072B     		cmp	r3, #7
 144 0074 F8D1     		bne	.L21
 145 0076 4FF4E023 		mov	r3, #458752
 146              	.L19:
 147 007a 1102     		lsls	r1, r2, #8
 148 007c D2B2     		uxtb	r2, r2
 149 007e 89B2     		uxth	r1, r1
 150 0080 1A43     		orrs	r2, r2, r3
 151 0082 0A43     		orrs	r2, r2, r1
 152 0084 0261     		str	r2, [r0, #16]
 153 0086 0020     		movs	r0, #0
 154 0088 7047     		bx	lr
 155              	.L40:
 156 008a 072B     		cmp	r3, #7
 157 008c D8D0     		beq	.L33
 158              	.L18:
 159 008e 5208     		lsrs	r2, r2, #1
 160 0090 0133     		adds	r3, r3, #1
 161              	.L37:
 162 0092 FF2A     		cmp	r2, #255
 163 0094 98BF     		it	ls
 164 0096 1B04     		lslls	r3, r3, #16
 165 0098 F7D8     		bhi	.L40
 166 009a D3E7     		b	.L14
 167              	.L22:
 168 009c 0120     		movs	r0, #1
 169 009e 7047     		bx	lr
 170              	.L39:
 171 00a0 1B04     		lsls	r3, r3, #16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchG0Dwh.s 			page 4


 172 00a2 EAE7     		b	.L19
 173              	.L38:
 174 00a4 FF2A     		cmp	r2, #255
 175 00a6 F2D8     		bhi	.L18
 176 00a8 CCE7     		b	.L14
 177              	.L42:
 178 00aa 00BF     		.align	2
 179              	.L41:
 180 00ac 801A0600 		.word	400000
 181 00b0 F1197605 		.word	91625969
 182 00b4 0012FD7F 		.word	2147291648
 183              		.size	twi_set_speed, .-twi_set_speed
 184              		.section	.text.twi_master_init,"ax",%progbits
 185              		.align	1
 186              		.p2align 2,,3
 187              		.global	twi_master_init
 188              		.syntax unified
 189              		.thumb
 190              		.thumb_func
 191              		.fpu fpv4-sp-d16
 192              		.type	twi_master_init, %function
 193              	twi_master_init:
 194              		@ args = 0, pretend = 0, frame = 0
 195              		@ frame_needed = 0, uses_anonymous_args = 0
 196 0000 4FF0FF33 		mov	r3, #-1
 197 0004 70B5     		push	{r4, r5, r6, lr}
 198 0006 8362     		str	r3, [r0, #40]
 199 0008 0D46     		mov	r5, r1
 200 000a 8023     		movs	r3, #128
 201 000c 026A     		ldr	r2, [r0, #32]
 202 000e 0360     		str	r3, [r0]
 203 0010 0821     		movs	r1, #8
 204 0012 0423     		movs	r3, #4
 205 0014 2022     		movs	r2, #32
 206 0016 066B     		ldr	r6, [r0, #48]
 207 0018 0160     		str	r1, [r0]
 208 001a 0260     		str	r2, [r0]
 209 001c 6968     		ldr	r1, [r5, #4]
 210 001e 2A68     		ldr	r2, [r5]
 211 0020 0360     		str	r3, [r0]
 212 0022 0446     		mov	r4, r0
 213 0024 FFF7FEFF 		bl	twi_set_speed
 214 0028 6B7A     		ldrb	r3, [r5, #9]	@ zero_extendqisi2
 215 002a A0F10100 		sub	r0, #1
 216 002e 012B     		cmp	r3, #1
 217 0030 08BF     		it	eq
 218 0032 4023     		moveq	r3, #64
 219 0034 B0FA80F0 		clz	r0, r0
 220 0038 4FEA5010 		lsr	r0, r0, #5
 221 003c 08BF     		it	eq
 222 003e 2360     		streq	r3, [r4]
 223 0040 70BD     		pop	{r4, r5, r6, pc}
 224              		.size	twi_master_init, .-twi_master_init
 225 0042 00BF     		.section	.text.twi_mk_addr,"ax",%progbits
 226              		.align	1
 227              		.p2align 2,,3
 228              		.global	twi_mk_addr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchG0Dwh.s 			page 5


 229              		.syntax unified
 230              		.thumb
 231              		.thumb_func
 232              		.fpu fpv4-sp-d16
 233              		.type	twi_mk_addr, %function
 234              	twi_mk_addr:
 235              		@ args = 0, pretend = 0, frame = 0
 236              		@ frame_needed = 0, uses_anonymous_args = 0
 237              		@ link register save eliminated.
 238 0000 09B1     		cbz	r1, .L47
 239 0002 FFF7FEBF 		b	twi_mk_addr.part.1
 240              	.L47:
 241 0006 0846     		mov	r0, r1
 242 0008 7047     		bx	lr
 243              		.size	twi_mk_addr, .-twi_mk_addr
 244 000a 00BF     		.section	.text.twi_master_read,"ax",%progbits
 245              		.align	1
 246              		.p2align 2,,3
 247              		.global	twi_master_read
 248              		.syntax unified
 249              		.thumb
 250              		.thumb_func
 251              		.fpu fpv4-sp-d16
 252              		.type	twi_master_read, %function
 253              	twi_master_read:
 254              		@ args = 0, pretend = 0, frame = 0
 255              		@ frame_needed = 0, uses_anonymous_args = 0
 256 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 257 0002 CC68     		ldr	r4, [r1, #12]
 258 0004 002C     		cmp	r4, #0
 259 0006 4AD0     		beq	.L59
 260 0008 0546     		mov	r5, r0
 261 000a 0027     		movs	r7, #0
 262 000c 0846     		mov	r0, r1
 263 000e D1E90116 		ldrd	r1, r6, [r1, #4]
 264 0012 6F60     		str	r7, [r5, #4]
 265 0014 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 266 0016 0A02     		lsls	r2, r1, #8
 267 0018 1B04     		lsls	r3, r3, #16
 268 001a 02F44072 		and	r2, r2, #768
 269 001e 03F4FE03 		and	r3, r3, #8323072
 270 0022 42F48052 		orr	r2, r2, #4096
 271 0026 1343     		orrs	r3, r3, r2
 272 0028 6B60     		str	r3, [r5, #4]
 273 002a EF60     		str	r7, [r5, #12]
 274 002c 41B3     		cbz	r1, .L60
 275 002e FFF7FEFF 		bl	twi_mk_addr.part.1
 276 0032 012C     		cmp	r4, #1
 277 0034 E860     		str	r0, [r5, #12]
 278 0036 27D0     		beq	.L69
 279              	.L51:
 280 0038 0123     		movs	r3, #1
 281 003a 2B60     		str	r3, [r5]
 282 003c 0020     		movs	r0, #0
 283              	.L52:
 284 003e 47F23052 		movw	r2, #30000
 285 0042 0227     		movs	r7, #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchG0Dwh.s 			page 6


 286              	.L53:
 287 0044 2B6A     		ldr	r3, [r5, #32]
 288 0046 D905     		lsls	r1, r3, #23
 289 0048 11D4     		bmi	.L61
 290              	.L71:
 291 004a 511E     		subs	r1, r2, #1
 292 004c 6AB3     		cbz	r2, .L62
 293 004e 012C     		cmp	r4, #1
 294 0050 03F00203 		and	r3, r3, #2
 295 0054 1CD0     		beq	.L70
 296 0056 03B3     		cbz	r3, .L63
 297              	.L58:
 298 0058 2B6B     		ldr	r3, [r5, #48]
 299 005a 3370     		strb	r3, [r6]
 300 005c 013C     		subs	r4, r4, #1
 301 005e 06F10106 		add	r6, r6, #1
 302 0062 07D0     		beq	.L57
 303 0064 2B6A     		ldr	r3, [r5, #32]
 304 0066 D905     		lsls	r1, r3, #23
 305 0068 47F23052 		movw	r2, #30000
 306 006c EDD5     		bpl	.L71
 307              	.L61:
 308 006e 0524     		movs	r4, #5
 309 0070 2046     		mov	r0, r4
 310 0072 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 311              	.L57:
 312 0074 2B6A     		ldr	r3, [r5, #32]
 313 0076 DB07     		lsls	r3, r3, #31
 314 0078 FCD5     		bpl	.L57
 315 007a 2B6A     		ldr	r3, [r5, #32]
 316 007c 2046     		mov	r0, r4
 317 007e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 318              	.L60:
 319 0080 0846     		mov	r0, r1
 320 0082 012C     		cmp	r4, #1
 321 0084 E860     		str	r0, [r5, #12]
 322 0086 D7D1     		bne	.L51
 323              	.L69:
 324 0088 0323     		movs	r3, #3
 325 008a 2B60     		str	r3, [r5]
 326 008c 2046     		mov	r0, r4
 327 008e D6E7     		b	.L52
 328              	.L70:
 329 0090 00B9     		cbnz	r0, .L55
 330 0092 2F60     		str	r7, [r5]
 331              	.L55:
 332 0094 33B1     		cbz	r3, .L65
 333 0096 0120     		movs	r0, #1
 334 0098 DEE7     		b	.L58
 335              	.L63:
 336 009a 0A46     		mov	r2, r1
 337 009c D2E7     		b	.L53
 338              	.L59:
 339 009e 0124     		movs	r4, #1
 340 00a0 2046     		mov	r0, r4
 341 00a2 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 342              	.L65:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchG0Dwh.s 			page 7


 343 00a4 0A46     		mov	r2, r1
 344 00a6 0120     		movs	r0, #1
 345 00a8 CCE7     		b	.L53
 346              	.L62:
 347 00aa 0924     		movs	r4, #9
 348 00ac 2046     		mov	r0, r4
 349 00ae F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 350              		.size	twi_master_read, .-twi_master_read
 351              		.section	.text.twi_master_write,"ax",%progbits
 352              		.align	1
 353              		.p2align 2,,3
 354              		.global	twi_master_write
 355              		.syntax unified
 356              		.thumb
 357              		.thumb_func
 358              		.fpu fpv4-sp-d16
 359              		.type	twi_master_write, %function
 360              	twi_master_write:
 361              		@ args = 0, pretend = 0, frame = 0
 362              		@ frame_needed = 0, uses_anonymous_args = 0
 363 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 364 0002 CD68     		ldr	r5, [r1, #12]
 365 0004 5DB3     		cbz	r5, .L82
 366 0006 0446     		mov	r4, r0
 367 0008 0027     		movs	r7, #0
 368 000a 8E68     		ldr	r6, [r1, #8]
 369 000c 6760     		str	r7, [r4, #4]
 370 000e 0B7C     		ldrb	r3, [r1, #16]	@ zero_extendqisi2
 371 0010 0846     		mov	r0, r1
 372 0012 4968     		ldr	r1, [r1, #4]
 373 0014 1B04     		lsls	r3, r3, #16
 374 0016 0A02     		lsls	r2, r1, #8
 375 0018 03F4FE03 		and	r3, r3, #8323072
 376 001c 02F44072 		and	r2, r2, #768
 377 0020 1343     		orrs	r3, r3, r2
 378 0022 6360     		str	r3, [r4, #4]
 379 0024 E760     		str	r7, [r4, #12]
 380 0026 C1B1     		cbz	r1, .L83
 381 0028 FFF7FEFF 		bl	twi_mk_addr.part.1
 382              	.L74:
 383 002c E060     		str	r0, [r4, #12]
 384              	.L77:
 385 002e 236A     		ldr	r3, [r4, #32]
 386 0030 DF05     		lsls	r7, r3, #23
 387 0032 09D4     		bmi	.L79
 388              	.L95:
 389 0034 5807     		lsls	r0, r3, #29
 390 0036 FAD5     		bpl	.L77
 391 0038 16F8013B 		ldrb	r3, [r6], #1	@ zero_extendqisi2
 392 003c 6363     		str	r3, [r4, #52]
 393 003e 013D     		subs	r5, r5, #1
 394 0040 07D0     		beq	.L78
 395 0042 236A     		ldr	r3, [r4, #32]
 396 0044 DF05     		lsls	r7, r3, #23
 397 0046 F5D5     		bpl	.L95
 398              	.L79:
 399 0048 0525     		movs	r5, #5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchG0Dwh.s 			page 8


 400 004a 2846     		mov	r0, r5
 401 004c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 402              	.L97:
 403 004e 5A07     		lsls	r2, r3, #29
 404 0050 08D4     		bmi	.L96
 405              	.L78:
 406 0052 236A     		ldr	r3, [r4, #32]
 407 0054 D905     		lsls	r1, r3, #23
 408 0056 F7D4     		bmi	.L79
 409 0058 F9E7     		b	.L97
 410              	.L83:
 411 005a 0846     		mov	r0, r1
 412 005c E6E7     		b	.L74
 413              	.L82:
 414 005e 0125     		movs	r5, #1
 415 0060 2846     		mov	r0, r5
 416 0062 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 417              	.L96:
 418 0064 0223     		movs	r3, #2
 419 0066 2360     		str	r3, [r4]
 420              	.L81:
 421 0068 236A     		ldr	r3, [r4, #32]
 422 006a DB07     		lsls	r3, r3, #31
 423 006c FCD5     		bpl	.L81
 424 006e 2846     		mov	r0, r5
 425 0070 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 426              		.size	twi_master_write, .-twi_master_write
 427 0072 00BF     		.section	.text.twi_probe,"ax",%progbits
 428              		.align	1
 429              		.p2align 2,,3
 430              		.global	twi_probe
 431              		.syntax unified
 432              		.thumb
 433              		.thumb_func
 434              		.fpu fpv4-sp-d16
 435              		.type	twi_probe, %function
 436              	twi_probe:
 437              		@ args = 0, pretend = 0, frame = 24
 438              		@ frame_needed = 0, uses_anonymous_args = 0
 439 0000 10B5     		push	{r4, lr}
 440 0002 86B0     		sub	sp, sp, #24
 441 0004 06AA     		add	r2, sp, #24
 442 0006 0023     		movs	r3, #0
 443 0008 02F8153D 		strb	r3, [r2, #-21]!
 444 000c 8DF81410 		strb	r1, [sp, #20]
 445 0010 0124     		movs	r4, #1
 446 0012 01A9     		add	r1, sp, #4
 447 0014 0392     		str	r2, [sp, #12]
 448 0016 8DF80430 		strb	r3, [sp, #4]
 449 001a 0293     		str	r3, [sp, #8]
 450 001c 0494     		str	r4, [sp, #16]
 451 001e FFF7FEFF 		bl	twi_master_write
 452 0022 06B0     		add	sp, sp, #24
 453              		@ sp needed
 454 0024 10BD     		pop	{r4, pc}
 455              		.size	twi_probe, .-twi_probe
 456 0026 00BF     		.section	.text.twi_enable_interrupt,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchG0Dwh.s 			page 9


 457              		.align	1
 458              		.p2align 2,,3
 459              		.global	twi_enable_interrupt
 460              		.syntax unified
 461              		.thumb
 462              		.thumb_func
 463              		.fpu fpv4-sp-d16
 464              		.type	twi_enable_interrupt, %function
 465              	twi_enable_interrupt:
 466              		@ args = 0, pretend = 0, frame = 0
 467              		@ frame_needed = 0, uses_anonymous_args = 0
 468              		@ link register save eliminated.
 469 0000 4162     		str	r1, [r0, #36]
 470 0002 7047     		bx	lr
 471              		.size	twi_enable_interrupt, .-twi_enable_interrupt
 472              		.section	.text.twi_disable_interrupt,"ax",%progbits
 473              		.align	1
 474              		.p2align 2,,3
 475              		.global	twi_disable_interrupt
 476              		.syntax unified
 477              		.thumb
 478              		.thumb_func
 479              		.fpu fpv4-sp-d16
 480              		.type	twi_disable_interrupt, %function
 481              	twi_disable_interrupt:
 482              		@ args = 0, pretend = 0, frame = 0
 483              		@ frame_needed = 0, uses_anonymous_args = 0
 484              		@ link register save eliminated.
 485 0000 8162     		str	r1, [r0, #40]
 486 0002 036A     		ldr	r3, [r0, #32]
 487 0004 7047     		bx	lr
 488              		.size	twi_disable_interrupt, .-twi_disable_interrupt
 489 0006 00BF     		.section	.text.twi_get_interrupt_status,"ax",%progbits
 490              		.align	1
 491              		.p2align 2,,3
 492              		.global	twi_get_interrupt_status
 493              		.syntax unified
 494              		.thumb
 495              		.thumb_func
 496              		.fpu fpv4-sp-d16
 497              		.type	twi_get_interrupt_status, %function
 498              	twi_get_interrupt_status:
 499              		@ args = 0, pretend = 0, frame = 0
 500              		@ frame_needed = 0, uses_anonymous_args = 0
 501              		@ link register save eliminated.
 502 0000 006A     		ldr	r0, [r0, #32]
 503 0002 7047     		bx	lr
 504              		.size	twi_get_interrupt_status, .-twi_get_interrupt_status
 505              		.section	.text.twi_get_interrupt_mask,"ax",%progbits
 506              		.align	1
 507              		.p2align 2,,3
 508              		.global	twi_get_interrupt_mask
 509              		.syntax unified
 510              		.thumb
 511              		.thumb_func
 512              		.fpu fpv4-sp-d16
 513              		.type	twi_get_interrupt_mask, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchG0Dwh.s 			page 10


 514              	twi_get_interrupt_mask:
 515              		@ args = 0, pretend = 0, frame = 0
 516              		@ frame_needed = 0, uses_anonymous_args = 0
 517              		@ link register save eliminated.
 518 0000 C06A     		ldr	r0, [r0, #44]
 519 0002 7047     		bx	lr
 520              		.size	twi_get_interrupt_mask, .-twi_get_interrupt_mask
 521              		.section	.text.twi_read_byte,"ax",%progbits
 522              		.align	1
 523              		.p2align 2,,3
 524              		.global	twi_read_byte
 525              		.syntax unified
 526              		.thumb
 527              		.thumb_func
 528              		.fpu fpv4-sp-d16
 529              		.type	twi_read_byte, %function
 530              	twi_read_byte:
 531              		@ args = 0, pretend = 0, frame = 0
 532              		@ frame_needed = 0, uses_anonymous_args = 0
 533              		@ link register save eliminated.
 534 0000 006B     		ldr	r0, [r0, #48]
 535 0002 C0B2     		uxtb	r0, r0
 536 0004 7047     		bx	lr
 537              		.size	twi_read_byte, .-twi_read_byte
 538 0006 00BF     		.section	.text.twi_write_byte,"ax",%progbits
 539              		.align	1
 540              		.p2align 2,,3
 541              		.global	twi_write_byte
 542              		.syntax unified
 543              		.thumb
 544              		.thumb_func
 545              		.fpu fpv4-sp-d16
 546              		.type	twi_write_byte, %function
 547              	twi_write_byte:
 548              		@ args = 0, pretend = 0, frame = 0
 549              		@ frame_needed = 0, uses_anonymous_args = 0
 550              		@ link register save eliminated.
 551 0000 4163     		str	r1, [r0, #52]
 552 0002 7047     		bx	lr
 553              		.size	twi_write_byte, .-twi_write_byte
 554              		.section	.text.twi_enable_slave_mode,"ax",%progbits
 555              		.align	1
 556              		.p2align 2,,3
 557              		.global	twi_enable_slave_mode
 558              		.syntax unified
 559              		.thumb
 560              		.thumb_func
 561              		.fpu fpv4-sp-d16
 562              		.type	twi_enable_slave_mode, %function
 563              	twi_enable_slave_mode:
 564              		@ args = 0, pretend = 0, frame = 0
 565              		@ frame_needed = 0, uses_anonymous_args = 0
 566              		@ link register save eliminated.
 567 0000 0821     		movs	r1, #8
 568 0002 2022     		movs	r2, #32
 569 0004 1023     		movs	r3, #16
 570 0006 0160     		str	r1, [r0]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchG0Dwh.s 			page 11


 571 0008 0260     		str	r2, [r0]
 572 000a 0360     		str	r3, [r0]
 573 000c 7047     		bx	lr
 574              		.size	twi_enable_slave_mode, .-twi_enable_slave_mode
 575 000e 00BF     		.section	.text.twi_disable_slave_mode,"ax",%progbits
 576              		.align	1
 577              		.p2align 2,,3
 578              		.global	twi_disable_slave_mode
 579              		.syntax unified
 580              		.thumb
 581              		.thumb_func
 582              		.fpu fpv4-sp-d16
 583              		.type	twi_disable_slave_mode, %function
 584              	twi_disable_slave_mode:
 585              		@ args = 0, pretend = 0, frame = 0
 586              		@ frame_needed = 0, uses_anonymous_args = 0
 587              		@ link register save eliminated.
 588 0000 2023     		movs	r3, #32
 589 0002 0360     		str	r3, [r0]
 590 0004 7047     		bx	lr
 591              		.size	twi_disable_slave_mode, .-twi_disable_slave_mode
 592 0006 00BF     		.section	.text.twi_slave_init,"ax",%progbits
 593              		.align	1
 594              		.p2align 2,,3
 595              		.global	twi_slave_init
 596              		.syntax unified
 597              		.thumb
 598              		.thumb_func
 599              		.fpu fpv4-sp-d16
 600              		.type	twi_slave_init, %function
 601              	twi_slave_init:
 602              		@ args = 0, pretend = 0, frame = 0
 603              		@ frame_needed = 0, uses_anonymous_args = 0
 604              		@ link register save eliminated.
 605 0000 30B4     		push	{r4, r5}
 606 0002 4FF0FF33 		mov	r3, #-1
 607 0006 8362     		str	r3, [r0, #40]
 608 0008 0904     		lsls	r1, r1, #16
 609 000a 8023     		movs	r3, #128
 610 000c 026A     		ldr	r2, [r0, #32]
 611 000e 0360     		str	r3, [r0]
 612 0010 0824     		movs	r4, #8
 613 0012 01F4FE01 		and	r1, r1, #8323072
 614 0016 2022     		movs	r2, #32
 615 0018 1023     		movs	r3, #16
 616 001a 056B     		ldr	r5, [r0, #48]
 617 001c 8160     		str	r1, [r0, #8]
 618 001e 0460     		str	r4, [r0]
 619 0020 0260     		str	r2, [r0]
 620 0022 30BC     		pop	{r4, r5}
 621 0024 0360     		str	r3, [r0]
 622 0026 7047     		bx	lr
 623              		.size	twi_slave_init, .-twi_slave_init
 624              		.section	.text.twi_set_slave_addr,"ax",%progbits
 625              		.align	1
 626              		.p2align 2,,3
 627              		.global	twi_set_slave_addr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchG0Dwh.s 			page 12


 628              		.syntax unified
 629              		.thumb
 630              		.thumb_func
 631              		.fpu fpv4-sp-d16
 632              		.type	twi_set_slave_addr, %function
 633              	twi_set_slave_addr:
 634              		@ args = 0, pretend = 0, frame = 0
 635              		@ frame_needed = 0, uses_anonymous_args = 0
 636              		@ link register save eliminated.
 637 0000 0904     		lsls	r1, r1, #16
 638 0002 01F4FE01 		and	r1, r1, #8323072
 639 0006 8160     		str	r1, [r0, #8]
 640 0008 7047     		bx	lr
 641              		.size	twi_set_slave_addr, .-twi_set_slave_addr
 642 000a 00BF     		.section	.text.twi_slave_read,"ax",%progbits
 643              		.align	1
 644              		.p2align 2,,3
 645              		.global	twi_slave_read
 646              		.syntax unified
 647              		.thumb
 648              		.thumb_func
 649              		.fpu fpv4-sp-d16
 650              		.type	twi_slave_read, %function
 651              	twi_slave_read:
 652              		@ args = 0, pretend = 0, frame = 0
 653              		@ frame_needed = 0, uses_anonymous_args = 0
 654              		@ link register save eliminated.
 655 0000 30B4     		push	{r4, r5}
 656 0002 0025     		movs	r5, #0
 657 0004 40F60104 		movw	r4, #2049
 658              	.L112:
 659 0008 036A     		ldr	r3, [r0, #32]
 660 000a 13F0100F 		tst	r3, #16
 661 000e 03F02A02 		and	r2, r3, #42
 662 0012 0DD0     		beq	.L113
 663              	.L116:
 664 0014 0A2A     		cmp	r2, #10
 665 0016 F7D1     		bne	.L112
 666 0018 036B     		ldr	r3, [r0, #48]
 667 001a 0B70     		strb	r3, [r1]
 668 001c 036A     		ldr	r3, [r0, #32]
 669 001e 13F0100F 		tst	r3, #16
 670 0022 05F10105 		add	r5, r5, #1
 671 0026 01F10101 		add	r1, r1, #1
 672 002a 03F02A02 		and	r2, r3, #42
 673 002e F1D1     		bne	.L116
 674              	.L113:
 675 0030 34EA0303 		bics	r3, r4, r3
 676 0034 E8D1     		bne	.L112
 677 0036 2846     		mov	r0, r5
 678 0038 30BC     		pop	{r4, r5}
 679 003a 7047     		bx	lr
 680              		.size	twi_slave_read, .-twi_slave_read
 681              		.section	.text.twi_slave_write,"ax",%progbits
 682              		.align	1
 683              		.p2align 2,,3
 684              		.global	twi_slave_write
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchG0Dwh.s 			page 13


 685              		.syntax unified
 686              		.thumb
 687              		.thumb_func
 688              		.fpu fpv4-sp-d16
 689              		.type	twi_slave_write, %function
 690              	twi_slave_write:
 691              		@ args = 0, pretend = 0, frame = 0
 692              		@ frame_needed = 0, uses_anonymous_args = 0
 693              		@ link register save eliminated.
 694 0000 30B4     		push	{r4, r5}
 695 0002 0025     		movs	r5, #0
 696 0004 40F60104 		movw	r4, #2049
 697              	.L118:
 698 0008 036A     		ldr	r3, [r0, #32]
 699 000a 13F0100F 		tst	r3, #16
 700 000e 03F02C02 		and	r2, r3, #44
 701 0012 0DD0     		beq	.L119
 702              	.L122:
 703 0014 042A     		cmp	r2, #4
 704 0016 F7D1     		bne	.L118
 705 0018 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 706 001a 4363     		str	r3, [r0, #52]
 707 001c 036A     		ldr	r3, [r0, #32]
 708 001e 13F0100F 		tst	r3, #16
 709 0022 05F10105 		add	r5, r5, #1
 710 0026 01F10101 		add	r1, r1, #1
 711 002a 03F02C02 		and	r2, r3, #44
 712 002e F1D1     		bne	.L122
 713              	.L119:
 714 0030 34EA0303 		bics	r3, r4, r3
 715 0034 E8D1     		bne	.L118
 716 0036 2846     		mov	r0, r5
 717 0038 30BC     		pop	{r4, r5}
 718 003a 7047     		bx	lr
 719              		.size	twi_slave_write, .-twi_slave_write
 720              		.section	.text.twi_reset,"ax",%progbits
 721              		.align	1
 722              		.p2align 2,,3
 723              		.global	twi_reset
 724              		.syntax unified
 725              		.thumb
 726              		.thumb_func
 727              		.fpu fpv4-sp-d16
 728              		.type	twi_reset, %function
 729              	twi_reset:
 730              		@ args = 0, pretend = 0, frame = 0
 731              		@ frame_needed = 0, uses_anonymous_args = 0
 732              		@ link register save eliminated.
 733 0000 8023     		movs	r3, #128
 734 0002 0360     		str	r3, [r0]
 735 0004 036B     		ldr	r3, [r0, #48]
 736 0006 7047     		bx	lr
 737              		.size	twi_reset, .-twi_reset
 738              		.section	.text.twi_get_pdc_base,"ax",%progbits
 739              		.align	1
 740              		.p2align 2,,3
 741              		.global	twi_get_pdc_base
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchG0Dwh.s 			page 14


 742              		.syntax unified
 743              		.thumb
 744              		.thumb_func
 745              		.fpu fpv4-sp-d16
 746              		.type	twi_get_pdc_base, %function
 747              	twi_get_pdc_base:
 748              		@ args = 0, pretend = 0, frame = 0
 749              		@ frame_needed = 0, uses_anonymous_args = 0
 750              		@ link register save eliminated.
 751 0000 064B     		ldr	r3, .L128
 752 0002 9842     		cmp	r0, r3
 753 0004 07D0     		beq	.L126
 754 0006 064A     		ldr	r2, .L128+4
 755 0008 03F58243 		add	r3, r3, #16640
 756 000c 9042     		cmp	r0, r2
 757 000e 0CBF     		ite	eq
 758 0010 1846     		moveq	r0, r3
 759 0012 0020     		movne	r0, #0
 760 0014 7047     		bx	lr
 761              	.L126:
 762 0016 0348     		ldr	r0, .L128+8
 763 0018 7047     		bx	lr
 764              	.L129:
 765 001a 00BF     		.align	2
 766              	.L128:
 767 001c 00800A40 		.word	1074429952
 768 0020 00C00A40 		.word	1074446336
 769 0024 00810A40 		.word	1074430208
 770              		.size	twi_get_pdc_base, .-twi_get_pdc_base
 771              		.section	.text.twi_set_write_protection,"ax",%progbits
 772              		.align	1
 773              		.p2align 2,,3
 774              		.global	twi_set_write_protection
 775              		.syntax unified
 776              		.thumb
 777              		.thumb_func
 778              		.fpu fpv4-sp-d16
 779              		.type	twi_set_write_protection, %function
 780              	twi_set_write_protection:
 781              		@ args = 0, pretend = 0, frame = 0
 782              		@ frame_needed = 0, uses_anonymous_args = 0
 783              		@ link register save eliminated.
 784 0000 044B     		ldr	r3, .L133
 785 0002 054A     		ldr	r2, .L133+4
 786 0004 0029     		cmp	r1, #0
 787 0006 14BF     		ite	ne
 788 0008 1946     		movne	r1, r3
 789 000a 1146     		moveq	r1, r2
 790 000c C0F8E410 		str	r1, [r0, #228]
 791 0010 7047     		bx	lr
 792              	.L134:
 793 0012 00BF     		.align	2
 794              	.L133:
 795 0014 01495754 		.word	1415006465
 796 0018 00495754 		.word	1415006464
 797              		.size	twi_set_write_protection, .-twi_set_write_protection
 798              		.section	.text.twi_read_write_protection_status,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cchG0Dwh.s 			page 15


 799              		.align	1
 800              		.p2align 2,,3
 801              		.global	twi_read_write_protection_status
 802              		.syntax unified
 803              		.thumb
 804              		.thumb_func
 805              		.fpu fpv4-sp-d16
 806              		.type	twi_read_write_protection_status, %function
 807              	twi_read_write_protection_status:
 808              		@ args = 0, pretend = 0, frame = 0
 809              		@ frame_needed = 0, uses_anonymous_args = 0
 810              		@ link register save eliminated.
 811 0000 D0F8E830 		ldr	r3, [r0, #232]
 812 0004 0B60     		str	r3, [r1]
 813 0006 7047     		bx	lr
 814              		.size	twi_read_write_protection_status, .-twi_read_write_protection_status
 815              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 816              		.align	2
 817              		.type	cpu_irq_critical_section_counter, %object
 818              		.size	cpu_irq_critical_section_counter, 4
 819              	cpu_irq_critical_section_counter:
 820 0000 00000000 		.space	4
 821              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 822              		.type	cpu_irq_prev_interrupt_state, %object
 823              		.size	cpu_irq_prev_interrupt_state, 1
 824              	cpu_irq_prev_interrupt_state:
 825 0000 00       		.space	1
 826              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
