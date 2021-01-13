ARM GAS  /tmp/ccipE25Z.s 			page 1


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
  13              		.file	"rtc.c"
  14              		.section	.text.rtc_set_hour_mode,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	rtc_set_hour_mode
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	rtc_set_hour_mode, %function
  23              	rtc_set_hour_mode:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 4368     		ldr	r3, [r0, #4]
  28 0002 19B9     		cbnz	r1, .L5
  29 0004 23F00103 		bic	r3, r3, #1
  30 0008 4360     		str	r3, [r0, #4]
  31 000a 7047     		bx	lr
  32              	.L5:
  33 000c 43F00103 		orr	r3, r3, #1
  34 0010 4360     		str	r3, [r0, #4]
  35 0012 7047     		bx	lr
  36              		.size	rtc_set_hour_mode, .-rtc_set_hour_mode
  37              		.section	.text.rtc_get_hour_mode,"ax",%progbits
  38              		.align	1
  39              		.p2align 2,,3
  40              		.global	rtc_get_hour_mode
  41              		.syntax unified
  42              		.thumb
  43              		.thumb_func
  44              		.fpu fpv4-sp-d16
  45              		.type	rtc_get_hour_mode, %function
  46              	rtc_get_hour_mode:
  47              		@ args = 0, pretend = 0, frame = 0
  48              		@ frame_needed = 0, uses_anonymous_args = 0
  49              		@ link register save eliminated.
  50 0000 4068     		ldr	r0, [r0, #4]
  51 0002 00F00100 		and	r0, r0, #1
  52 0006 7047     		bx	lr
  53              		.size	rtc_get_hour_mode, .-rtc_get_hour_mode
  54              		.section	.text.rtc_enable_interrupt,"ax",%progbits
  55              		.align	1
  56              		.p2align 2,,3
  57              		.global	rtc_enable_interrupt
ARM GAS  /tmp/ccipE25Z.s 			page 2


  58              		.syntax unified
  59              		.thumb
  60              		.thumb_func
  61              		.fpu fpv4-sp-d16
  62              		.type	rtc_enable_interrupt, %function
  63              	rtc_enable_interrupt:
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66              		@ link register save eliminated.
  67 0000 0162     		str	r1, [r0, #32]
  68 0002 7047     		bx	lr
  69              		.size	rtc_enable_interrupt, .-rtc_enable_interrupt
  70              		.section	.text.rtc_disable_interrupt,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.global	rtc_disable_interrupt
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu fpv4-sp-d16
  78              		.type	rtc_disable_interrupt, %function
  79              	rtc_disable_interrupt:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 4162     		str	r1, [r0, #36]
  84 0002 7047     		bx	lr
  85              		.size	rtc_disable_interrupt, .-rtc_disable_interrupt
  86              		.section	.text.rtc_get_interrupt_mask,"ax",%progbits
  87              		.align	1
  88              		.p2align 2,,3
  89              		.global	rtc_get_interrupt_mask
  90              		.syntax unified
  91              		.thumb
  92              		.thumb_func
  93              		.fpu fpv4-sp-d16
  94              		.type	rtc_get_interrupt_mask, %function
  95              	rtc_get_interrupt_mask:
  96              		@ args = 0, pretend = 0, frame = 0
  97              		@ frame_needed = 0, uses_anonymous_args = 0
  98              		@ link register save eliminated.
  99 0000 806A     		ldr	r0, [r0, #40]
 100 0002 7047     		bx	lr
 101              		.size	rtc_get_interrupt_mask, .-rtc_get_interrupt_mask
 102              		.section	.text.rtc_get_time,"ax",%progbits
 103              		.align	1
 104              		.p2align 2,,3
 105              		.global	rtc_get_time
 106              		.syntax unified
 107              		.thumb
 108              		.thumb_func
 109              		.fpu fpv4-sp-d16
 110              		.type	rtc_get_time, %function
 111              	rtc_get_time:
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114              		@ link register save eliminated.
ARM GAS  /tmp/ccipE25Z.s 			page 3


 115 0000 30B4     		push	{r4, r5}
 116 0002 8568     		ldr	r5, [r0, #8]
 117 0004 8468     		ldr	r4, [r0, #8]
 118 0006 A542     		cmp	r5, r4
 119 0008 03D0     		beq	.L11
 120              	.L23:
 121 000a 8568     		ldr	r5, [r0, #8]
 122 000c 8468     		ldr	r4, [r0, #8]
 123 000e AC42     		cmp	r4, r5
 124 0010 FBD1     		bne	.L23
 125              	.L11:
 126 0012 59B1     		cbz	r1, .L14
 127 0014 C4F30150 		ubfx	r0, r4, #20, #2
 128 0018 00EB8005 		add	r5, r0, r0, lsl #2
 129 001c C4F30340 		ubfx	r0, r4, #16, #4
 130 0020 00EB4500 		add	r0, r0, r5, lsl #1
 131 0024 6502     		lsls	r5, r4, #9
 132 0026 48BF     		it	mi
 133 0028 0C30     		addmi	r0, r0, #12
 134 002a 0860     		str	r0, [r1]
 135              	.L14:
 136 002c 42B1     		cbz	r2, .L17
 137 002e C4F30231 		ubfx	r1, r4, #12, #3
 138 0032 01EB8101 		add	r1, r1, r1, lsl #2
 139 0036 C4F30320 		ubfx	r0, r4, #8, #4
 140 003a 00EB4101 		add	r1, r0, r1, lsl #1
 141 003e 1160     		str	r1, [r2]
 142              	.L17:
 143 0040 43B1     		cbz	r3, .L10
 144 0042 C4F30212 		ubfx	r2, r4, #4, #3
 145 0046 02EB8202 		add	r2, r2, r2, lsl #2
 146 004a 04F00F04 		and	r4, r4, #15
 147 004e 04EB4204 		add	r4, r4, r2, lsl #1
 148 0052 1C60     		str	r4, [r3]
 149              	.L10:
 150 0054 30BC     		pop	{r4, r5}
 151 0056 7047     		bx	lr
 152              		.size	rtc_get_time, .-rtc_get_time
 153              		.section	.text.rtc_set_time,"ax",%progbits
 154              		.align	1
 155              		.p2align 2,,3
 156              		.global	rtc_set_time
 157              		.syntax unified
 158              		.thumb
 159              		.thumb_func
 160              		.fpu fpv4-sp-d16
 161              		.type	rtc_set_time, %function
 162              	rtc_set_time:
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 0, uses_anonymous_args = 0
 165 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 166 0002 4568     		ldr	r5, [r0, #4]
 167 0004 15F00105 		ands	r5, r5, #1
 168 0008 05D0     		beq	.L30
 169 000a 0C29     		cmp	r1, #12
 170 000c 86BF     		itte	hi
 171 000e 0C39     		subhi	r1, r1, #12
ARM GAS  /tmp/ccipE25Z.s 			page 4


 172 0010 4FF48005 		movhi	r5, #4194304
 173 0014 0025     		movls	r5, #0
 174              	.L30:
 175 0016 1B4C     		ldr	r4, .L40
 176 0018 A4FB0367 		umull	r6, r7, r4, r3
 177 001c FF08     		lsrs	r7, r7, #3
 178 001e A4FB02C6 		umull	ip, r6, r4, r2
 179 0022 07EB870E 		add	lr, r7, r7, lsl #2
 180 0026 F608     		lsrs	r6, r6, #3
 181 0028 A3EB4E03 		sub	r3, r3, lr, lsl #1
 182 002c 43EA0713 		orr	r3, r3, r7, lsl #4
 183 0030 06EB8607 		add	r7, r6, r6, lsl #2
 184 0034 43EA0633 		orr	r3, r3, r6, lsl #12
 185 0038 A2EB4706 		sub	r6, r2, r7, lsl #1
 186 003c A4FB0142 		umull	r4, r2, r4, r1
 187 0040 D208     		lsrs	r2, r2, #3
 188 0042 43EA0623 		orr	r3, r3, r6, lsl #8
 189 0046 2B43     		orrs	r3, r3, r5
 190 0048 02EB8204 		add	r4, r2, r2, lsl #2
 191 004c 43EA0253 		orr	r3, r3, r2, lsl #20
 192 0050 A1EB4401 		sub	r1, r1, r4, lsl #1
 193 0054 43EA0141 		orr	r1, r3, r1, lsl #16
 194              	.L31:
 195 0058 8369     		ldr	r3, [r0, #24]
 196 005a 5A07     		lsls	r2, r3, #29
 197 005c FCD5     		bpl	.L31
 198 005e 0368     		ldr	r3, [r0]
 199 0060 43F00103 		orr	r3, r3, #1
 200 0064 0360     		str	r3, [r0]
 201              	.L32:
 202 0066 8369     		ldr	r3, [r0, #24]
 203 0068 DB07     		lsls	r3, r3, #31
 204 006a FCD5     		bpl	.L32
 205 006c 0123     		movs	r3, #1
 206 006e C361     		str	r3, [r0, #28]
 207 0070 8160     		str	r1, [r0, #8]
 208 0072 0368     		ldr	r3, [r0]
 209 0074 23F00103 		bic	r3, r3, #1
 210 0078 0360     		str	r3, [r0]
 211 007a C06A     		ldr	r0, [r0, #44]
 212 007c 00F00100 		and	r0, r0, #1
 213 0080 F0BD     		pop	{r4, r5, r6, r7, pc}
 214              	.L41:
 215 0082 00BF     		.align	2
 216              	.L40:
 217 0084 CDCCCCCC 		.word	-858993459
 218              		.size	rtc_set_time, .-rtc_set_time
 219              		.section	.text.rtc_set_time_alarm,"ax",%progbits
 220              		.align	1
 221              		.p2align 2,,3
 222              		.global	rtc_set_time_alarm
 223              		.syntax unified
 224              		.thumb
 225              		.thumb_func
 226              		.fpu fpv4-sp-d16
 227              		.type	rtc_set_time_alarm, %function
 228              	rtc_set_time_alarm:
ARM GAS  /tmp/ccipE25Z.s 			page 5


 229              		@ args = 12, pretend = 0, frame = 0
 230              		@ frame_needed = 0, uses_anonymous_args = 0
 231 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 232 0002 05AC     		add	r4, sp, #20
 233 0004 70CC     		ldm	r4, {r4, r5, r6}
 234 0006 91B1     		cbz	r1, .L43
 235 0008 4168     		ldr	r1, [r0, #4]
 236 000a 11F00101 		ands	r1, r1, #1
 237 000e 38D1     		bne	.L59
 238              	.L48:
 239 0010 4FF0000E 		mov	lr, #0
 240              	.L44:
 241 0014 1E4F     		ldr	r7, .L60
 242 0016 A7FB0217 		umull	r1, r7, r7, r2
 243 001a FF08     		lsrs	r7, r7, #3
 244 001c 07EB8701 		add	r1, r7, r7, lsl #2
 245 0020 A2EB4102 		sub	r2, r2, r1, lsl #1
 246 0024 1104     		lsls	r1, r2, #16
 247 0026 41EA0751 		orr	r1, r1, r7, lsl #20
 248 002a 41EA0E01 		orr	r1, r1, lr
 249              	.L43:
 250 002e 5BB1     		cbz	r3, .L45
 251 0030 174B     		ldr	r3, .L60
 252 0032 A3FB0423 		umull	r2, r3, r3, r4
 253 0036 DB08     		lsrs	r3, r3, #3
 254 0038 03EB8302 		add	r2, r3, r3, lsl #2
 255 003c A4EB4204 		sub	r4, r4, r2, lsl #1
 256 0040 2402     		lsls	r4, r4, #8
 257 0042 44EA0334 		orr	r4, r4, r3, lsl #12
 258 0046 2143     		orrs	r1, r1, r4
 259              	.L45:
 260 0048 55B1     		cbz	r5, .L46
 261 004a 114B     		ldr	r3, .L60
 262 004c A3FB0623 		umull	r2, r3, r3, r6
 263 0050 DB08     		lsrs	r3, r3, #3
 264 0052 03EB8302 		add	r2, r3, r3, lsl #2
 265 0056 A6EB4206 		sub	r6, r6, r2, lsl #1
 266 005a 46EA0313 		orr	r3, r6, r3, lsl #4
 267 005e 1943     		orrs	r1, r1, r3
 268              	.L46:
 269 0060 0369     		ldr	r3, [r0, #16]
 270 0062 23F08013 		bic	r3, r3, #8388736
 271 0066 23F40043 		bic	r3, r3, #32768
 272 006a 0361     		str	r3, [r0, #16]
 273 006c 0161     		str	r1, [r0, #16]
 274 006e 0369     		ldr	r3, [r0, #16]
 275 0070 43F08013 		orr	r3, r3, #8388736
 276 0074 43F40043 		orr	r3, r3, #32768
 277 0078 0361     		str	r3, [r0, #16]
 278 007a C06A     		ldr	r0, [r0, #44]
 279 007c 00F00400 		and	r0, r0, #4
 280 0080 F0BD     		pop	{r4, r5, r6, r7, pc}
 281              	.L59:
 282 0082 0C2A     		cmp	r2, #12
 283 0084 C4D9     		bls	.L48
 284 0086 0C3A     		subs	r2, r2, #12
 285 0088 4FF4800E 		mov	lr, #4194304
ARM GAS  /tmp/ccipE25Z.s 			page 6


 286 008c C2E7     		b	.L44
 287              	.L61:
 288 008e 00BF     		.align	2
 289              	.L60:
 290 0090 CDCCCCCC 		.word	-858993459
 291              		.size	rtc_set_time_alarm, .-rtc_set_time_alarm
 292              		.section	.text.rtc_get_date,"ax",%progbits
 293              		.align	1
 294              		.p2align 2,,3
 295              		.global	rtc_get_date
 296              		.syntax unified
 297              		.thumb
 298              		.thumb_func
 299              		.fpu fpv4-sp-d16
 300              		.type	rtc_get_date, %function
 301              	rtc_get_date:
 302              		@ args = 4, pretend = 0, frame = 0
 303              		@ frame_needed = 0, uses_anonymous_args = 0
 304 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 305 0002 C568     		ldr	r5, [r0, #12]
 306 0004 C468     		ldr	r4, [r0, #12]
 307 0006 059E     		ldr	r6, [sp, #20]
 308 0008 A542     		cmp	r5, r4
 309 000a 03D0     		beq	.L63
 310              	.L77:
 311 000c C568     		ldr	r5, [r0, #12]
 312 000e C468     		ldr	r4, [r0, #12]
 313 0010 AC42     		cmp	r4, r5
 314 0012 FBD1     		bne	.L77
 315              	.L63:
 316 0014 99B1     		cbz	r1, .L65
 317 0016 C4F30335 		ubfx	r5, r4, #12, #4
 318 001a C4F30210 		ubfx	r0, r4, #4, #3
 319 001e 05EB8507 		add	r7, r5, r5, lsl #2
 320 0022 C4F3032E 		ubfx	lr, r4, #8, #4
 321 0026 00EB8005 		add	r5, r0, r0, lsl #2
 322 002a 04F00F00 		and	r0, r4, #15
 323 002e 00EB4500 		add	r0, r0, r5, lsl #1
 324 0032 0EEB4707 		add	r7, lr, r7, lsl #1
 325 0036 6425     		movs	r5, #100
 326 0038 05FB0070 		mla	r0, r5, r0, r7
 327 003c 0860     		str	r0, [r1]
 328              	.L65:
 329 003e 42B1     		cbz	r2, .L66
 330 0040 C4F30050 		ubfx	r0, r4, #20, #1
 331 0044 8100     		lsls	r1, r0, #2
 332 0046 0844     		add	r0, r0, r1
 333 0048 C4F30341 		ubfx	r1, r4, #16, #4
 334 004c 01EB4001 		add	r1, r1, r0, lsl #1
 335 0050 1160     		str	r1, [r2]
 336              	.L66:
 337 0052 43B1     		cbz	r3, .L67
 338 0054 C4F30172 		ubfx	r2, r4, #28, #2
 339 0058 02EB8202 		add	r2, r2, r2, lsl #2
 340 005c C4F30361 		ubfx	r1, r4, #24, #4
 341 0060 01EB4202 		add	r2, r1, r2, lsl #1
 342 0064 1A60     		str	r2, [r3]
ARM GAS  /tmp/ccipE25Z.s 			page 7


 343              	.L67:
 344 0066 16B1     		cbz	r6, .L62
 345 0068 C4F34254 		ubfx	r4, r4, #21, #3
 346 006c 3460     		str	r4, [r6]
 347              	.L62:
 348 006e F0BD     		pop	{r4, r5, r6, r7, pc}
 349              		.size	rtc_get_date, .-rtc_get_date
 350              		.section	.text.rtc_set_date,"ax",%progbits
 351              		.align	1
 352              		.p2align 2,,3
 353              		.global	rtc_set_date
 354              		.syntax unified
 355              		.thumb
 356              		.thumb_func
 357              		.fpu fpv4-sp-d16
 358              		.type	rtc_set_date, %function
 359              	rtc_set_date:
 360              		@ args = 4, pretend = 0, frame = 0
 361              		@ frame_needed = 0, uses_anonymous_args = 0
 362 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 363 0002 294D     		ldr	r5, .L92
 364 0004 059C     		ldr	r4, [sp, #20]
 365 0006 A5FB0367 		umull	r6, r7, r5, r3
 366 000a FF08     		lsrs	r7, r7, #3
 367 000c 07EB870E 		add	lr, r7, r7, lsl #2
 368 0010 6405     		lsls	r4, r4, #21
 369 0012 A3EB4E0E 		sub	lr, r3, lr, lsl #1
 370 0016 254E     		ldr	r6, .L92+4
 371 0018 44EA0773 		orr	r3, r4, r7, lsl #28
 372 001c A5FB0274 		umull	r7, r4, r5, r2
 373 0020 E408     		lsrs	r4, r4, #3
 374 0022 43EA0E63 		orr	r3, r3, lr, lsl #24
 375 0026 A6FB01C6 		umull	ip, r6, r6, r1
 376 002a DFF884E0 		ldr	lr, .L92+8
 377 002e 43EA0453 		orr	r3, r3, r4, lsl #20
 378 0032 04EB8404 		add	r4, r4, r4, lsl #2
 379 0036 A2EB4402 		sub	r2, r2, r4, lsl #1
 380 003a 7609     		lsrs	r6, r6, #5
 381 003c A5FB0647 		umull	r4, r7, r5, r6
 382 0040 43EA0243 		orr	r3, r3, r2, lsl #16
 383 0044 AEFB01E4 		umull	lr, r4, lr, r1
 384 0048 A5FB01E2 		umull	lr, r2, r5, r1
 385 004c D208     		lsrs	r2, r2, #3
 386 004e FF08     		lsrs	r7, r7, #3
 387 0050 A409     		lsrs	r4, r4, #6
 388 0052 07EB8707 		add	r7, r7, r7, lsl #2
 389 0056 A5FB02E5 		umull	lr, r5, r5, r2
 390 005a 43EA0413 		orr	r3, r3, r4, lsl #4
 391 005e A6EB4707 		sub	r7, r6, r7, lsl #1
 392 0062 ED08     		lsrs	r5, r5, #3
 393 0064 02EB8204 		add	r4, r2, r2, lsl #2
 394 0068 3B43     		orrs	r3, r3, r7
 395 006a 05EB8505 		add	r5, r5, r5, lsl #2
 396 006e A1EB4401 		sub	r1, r1, r4, lsl #1
 397 0072 A2EB4505 		sub	r5, r2, r5, lsl #1
 398 0076 43EA0121 		orr	r1, r3, r1, lsl #8
 399 007a 41EA0531 		orr	r1, r1, r5, lsl #12
ARM GAS  /tmp/ccipE25Z.s 			page 8


 400              	.L85:
 401 007e 8369     		ldr	r3, [r0, #24]
 402 0080 5A07     		lsls	r2, r3, #29
 403 0082 FCD5     		bpl	.L85
 404 0084 0368     		ldr	r3, [r0]
 405 0086 43F00203 		orr	r3, r3, #2
 406 008a 0360     		str	r3, [r0]
 407              	.L86:
 408 008c 8369     		ldr	r3, [r0, #24]
 409 008e DB07     		lsls	r3, r3, #31
 410 0090 FCD5     		bpl	.L86
 411 0092 0123     		movs	r3, #1
 412 0094 C361     		str	r3, [r0, #28]
 413 0096 C160     		str	r1, [r0, #12]
 414 0098 0368     		ldr	r3, [r0]
 415 009a 23F00203 		bic	r3, r3, #2
 416 009e 0360     		str	r3, [r0]
 417 00a0 C06A     		ldr	r0, [r0, #44]
 418 00a2 00F00200 		and	r0, r0, #2
 419 00a6 F0BD     		pop	{r4, r5, r6, r7, pc}
 420              	.L93:
 421              		.align	2
 422              	.L92:
 423 00a8 CDCCCCCC 		.word	-858993459
 424 00ac 1F85EB51 		.word	1374389535
 425 00b0 D34D6210 		.word	274877907
 426              		.size	rtc_set_date, .-rtc_set_date
 427              		.section	.text.rtc_set_date_alarm,"ax",%progbits
 428              		.align	1
 429              		.p2align 2,,3
 430              		.global	rtc_set_date_alarm
 431              		.syntax unified
 432              		.thumb
 433              		.thumb_func
 434              		.fpu fpv4-sp-d16
 435              		.type	rtc_set_date_alarm, %function
 436              	rtc_set_date_alarm:
 437              		@ args = 4, pretend = 0, frame = 0
 438              		@ frame_needed = 0, uses_anonymous_args = 0
 439              		@ link register save eliminated.
 440 0000 30B4     		push	{r4, r5}
 441 0002 029C     		ldr	r4, [sp, #8]
 442 0004 51B1     		cbz	r1, .L95
 443 0006 1549     		ldr	r1, .L104
 444 0008 A1FB0251 		umull	r5, r1, r1, r2
 445 000c C908     		lsrs	r1, r1, #3
 446 000e 01EB8105 		add	r5, r1, r1, lsl #2
 447 0012 A2EB4502 		sub	r2, r2, r5, lsl #1
 448 0016 1204     		lsls	r2, r2, #16
 449 0018 42EA0151 		orr	r1, r2, r1, lsl #20
 450              	.L95:
 451 001c 5BB1     		cbz	r3, .L96
 452 001e 0F4B     		ldr	r3, .L104
 453 0020 A3FB0423 		umull	r2, r3, r3, r4
 454 0024 DB08     		lsrs	r3, r3, #3
 455 0026 03EB8302 		add	r2, r3, r3, lsl #2
 456 002a A4EB4204 		sub	r4, r4, r2, lsl #1
ARM GAS  /tmp/ccipE25Z.s 			page 9


 457 002e 2406     		lsls	r4, r4, #24
 458 0030 44EA0374 		orr	r4, r4, r3, lsl #28
 459 0034 2143     		orrs	r1, r1, r4
 460              	.L96:
 461 0036 4369     		ldr	r3, [r0, #20]
 462 0038 23F00043 		bic	r3, r3, #-2147483648
 463 003c 23F40003 		bic	r3, r3, #8388608
 464 0040 4361     		str	r3, [r0, #20]
 465 0042 4161     		str	r1, [r0, #20]
 466 0044 4369     		ldr	r3, [r0, #20]
 467 0046 43F00043 		orr	r3, r3, #-2147483648
 468 004a 43F40003 		orr	r3, r3, #8388608
 469 004e 4361     		str	r3, [r0, #20]
 470 0050 C06A     		ldr	r0, [r0, #44]
 471 0052 30BC     		pop	{r4, r5}
 472 0054 00F00800 		and	r0, r0, #8
 473 0058 7047     		bx	lr
 474              	.L105:
 475 005a 00BF     		.align	2
 476              	.L104:
 477 005c CDCCCCCC 		.word	-858993459
 478              		.size	rtc_set_date_alarm, .-rtc_set_date_alarm
 479              		.section	.text.rtc_clear_time_alarm,"ax",%progbits
 480              		.align	1
 481              		.p2align 2,,3
 482              		.global	rtc_clear_time_alarm
 483              		.syntax unified
 484              		.thumb
 485              		.thumb_func
 486              		.fpu fpv4-sp-d16
 487              		.type	rtc_clear_time_alarm, %function
 488              	rtc_clear_time_alarm:
 489              		@ args = 0, pretend = 0, frame = 0
 490              		@ frame_needed = 0, uses_anonymous_args = 0
 491              		@ link register save eliminated.
 492 0000 0023     		movs	r3, #0
 493 0002 0361     		str	r3, [r0, #16]
 494 0004 7047     		bx	lr
 495              		.size	rtc_clear_time_alarm, .-rtc_clear_time_alarm
 496 0006 00BF     		.section	.text.rtc_clear_date_alarm,"ax",%progbits
 497              		.align	1
 498              		.p2align 2,,3
 499              		.global	rtc_clear_date_alarm
 500              		.syntax unified
 501              		.thumb
 502              		.thumb_func
 503              		.fpu fpv4-sp-d16
 504              		.type	rtc_clear_date_alarm, %function
 505              	rtc_clear_date_alarm:
 506              		@ args = 0, pretend = 0, frame = 0
 507              		@ frame_needed = 0, uses_anonymous_args = 0
 508              		@ link register save eliminated.
 509 0000 014B     		ldr	r3, .L108
 510 0002 4361     		str	r3, [r0, #20]
 511 0004 7047     		bx	lr
 512              	.L109:
 513 0006 00BF     		.align	2
ARM GAS  /tmp/ccipE25Z.s 			page 10


 514              	.L108:
 515 0008 00000101 		.word	16842752
 516              		.size	rtc_clear_date_alarm, .-rtc_clear_date_alarm
 517              		.section	.text.rtc_get_status,"ax",%progbits
 518              		.align	1
 519              		.p2align 2,,3
 520              		.global	rtc_get_status
 521              		.syntax unified
 522              		.thumb
 523              		.thumb_func
 524              		.fpu fpv4-sp-d16
 525              		.type	rtc_get_status, %function
 526              	rtc_get_status:
 527              		@ args = 0, pretend = 0, frame = 0
 528              		@ frame_needed = 0, uses_anonymous_args = 0
 529              		@ link register save eliminated.
 530 0000 8069     		ldr	r0, [r0, #24]
 531 0002 7047     		bx	lr
 532              		.size	rtc_get_status, .-rtc_get_status
 533              		.section	.text.rtc_clear_status,"ax",%progbits
 534              		.align	1
 535              		.p2align 2,,3
 536              		.global	rtc_clear_status
 537              		.syntax unified
 538              		.thumb
 539              		.thumb_func
 540              		.fpu fpv4-sp-d16
 541              		.type	rtc_clear_status, %function
 542              	rtc_clear_status:
 543              		@ args = 0, pretend = 0, frame = 0
 544              		@ frame_needed = 0, uses_anonymous_args = 0
 545              		@ link register save eliminated.
 546 0000 C161     		str	r1, [r0, #28]
 547 0002 7047     		bx	lr
 548              		.size	rtc_clear_status, .-rtc_clear_status
 549              		.section	.text.rtc_get_valid_entry,"ax",%progbits
 550              		.align	1
 551              		.p2align 2,,3
 552              		.global	rtc_get_valid_entry
 553              		.syntax unified
 554              		.thumb
 555              		.thumb_func
 556              		.fpu fpv4-sp-d16
 557              		.type	rtc_get_valid_entry, %function
 558              	rtc_get_valid_entry:
 559              		@ args = 0, pretend = 0, frame = 0
 560              		@ frame_needed = 0, uses_anonymous_args = 0
 561              		@ link register save eliminated.
 562 0000 C06A     		ldr	r0, [r0, #44]
 563 0002 7047     		bx	lr
 564              		.size	rtc_get_valid_entry, .-rtc_get_valid_entry
 565              		.section	.text.rtc_set_time_event,"ax",%progbits
 566              		.align	1
 567              		.p2align 2,,3
 568              		.global	rtc_set_time_event
 569              		.syntax unified
 570              		.thumb
ARM GAS  /tmp/ccipE25Z.s 			page 11


 571              		.thumb_func
 572              		.fpu fpv4-sp-d16
 573              		.type	rtc_set_time_event, %function
 574              	rtc_set_time_event:
 575              		@ args = 0, pretend = 0, frame = 0
 576              		@ frame_needed = 0, uses_anonymous_args = 0
 577              		@ link register save eliminated.
 578 0000 0368     		ldr	r3, [r0]
 579 0002 23F44073 		bic	r3, r3, #768
 580 0006 0360     		str	r3, [r0]
 581 0008 0368     		ldr	r3, [r0]
 582 000a 0902     		lsls	r1, r1, #8
 583 000c 01F44071 		and	r1, r1, #768
 584 0010 1943     		orrs	r1, r1, r3
 585 0012 0160     		str	r1, [r0]
 586 0014 7047     		bx	lr
 587              		.size	rtc_set_time_event, .-rtc_set_time_event
 588 0016 00BF     		.section	.text.rtc_set_calendar_event,"ax",%progbits
 589              		.align	1
 590              		.p2align 2,,3
 591              		.global	rtc_set_calendar_event
 592              		.syntax unified
 593              		.thumb
 594              		.thumb_func
 595              		.fpu fpv4-sp-d16
 596              		.type	rtc_set_calendar_event, %function
 597              	rtc_set_calendar_event:
 598              		@ args = 0, pretend = 0, frame = 0
 599              		@ frame_needed = 0, uses_anonymous_args = 0
 600              		@ link register save eliminated.
 601 0000 0368     		ldr	r3, [r0]
 602 0002 23F44033 		bic	r3, r3, #196608
 603 0006 0360     		str	r3, [r0]
 604 0008 0368     		ldr	r3, [r0]
 605 000a 0904     		lsls	r1, r1, #16
 606 000c 01F44031 		and	r1, r1, #196608
 607 0010 1943     		orrs	r1, r1, r3
 608 0012 0160     		str	r1, [r0]
 609 0014 7047     		bx	lr
 610              		.size	rtc_set_calendar_event, .-rtc_set_calendar_event
 611 0016 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 612              		.align	2
 613              		.type	cpu_irq_critical_section_counter, %object
 614              		.size	cpu_irq_critical_section_counter, 4
 615              	cpu_irq_critical_section_counter:
 616 0000 00000000 		.space	4
 617              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 618              		.type	cpu_irq_prev_interrupt_state, %object
 619              		.size	cpu_irq_prev_interrupt_state, 1
 620              	cpu_irq_prev_interrupt_state:
 621 0000 00       		.space	1
 622              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
