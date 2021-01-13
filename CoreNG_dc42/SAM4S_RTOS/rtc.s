ARM GAS  /tmp/ccSivgPX.s 			page 1


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
  11              		.file	"rtc.c"
  12              		.section	.text.rtc_set_hour_mode,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	rtc_set_hour_mode
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	rtc_set_hour_mode, %function
  21              	rtc_set_hour_mode:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 4368     		ldr	r3, [r0, #4]
  26 0002 19B9     		cbnz	r1, .L5
  27 0004 23F00103 		bic	r3, r3, #1
  28 0008 4360     		str	r3, [r0, #4]
  29 000a 7047     		bx	lr
  30              	.L5:
  31 000c 43F00103 		orr	r3, r3, #1
  32 0010 4360     		str	r3, [r0, #4]
  33 0012 7047     		bx	lr
  34              		.size	rtc_set_hour_mode, .-rtc_set_hour_mode
  35              		.section	.text.rtc_get_hour_mode,"ax",%progbits
  36              		.align	1
  37              		.p2align 2,,3
  38              		.global	rtc_get_hour_mode
  39              		.syntax unified
  40              		.thumb
  41              		.thumb_func
  42              		.fpu softvfp
  43              		.type	rtc_get_hour_mode, %function
  44              	rtc_get_hour_mode:
  45              		@ args = 0, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47              		@ link register save eliminated.
  48 0000 4068     		ldr	r0, [r0, #4]
  49 0002 00F00100 		and	r0, r0, #1
  50 0006 7047     		bx	lr
  51              		.size	rtc_get_hour_mode, .-rtc_get_hour_mode
  52              		.section	.text.rtc_enable_interrupt,"ax",%progbits
  53              		.align	1
  54              		.p2align 2,,3
  55              		.global	rtc_enable_interrupt
  56              		.syntax unified
  57              		.thumb
ARM GAS  /tmp/ccSivgPX.s 			page 2


  58              		.thumb_func
  59              		.fpu softvfp
  60              		.type	rtc_enable_interrupt, %function
  61              	rtc_enable_interrupt:
  62              		@ args = 0, pretend = 0, frame = 0
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64              		@ link register save eliminated.
  65 0000 0162     		str	r1, [r0, #32]
  66 0002 7047     		bx	lr
  67              		.size	rtc_enable_interrupt, .-rtc_enable_interrupt
  68              		.section	.text.rtc_disable_interrupt,"ax",%progbits
  69              		.align	1
  70              		.p2align 2,,3
  71              		.global	rtc_disable_interrupt
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu softvfp
  76              		.type	rtc_disable_interrupt, %function
  77              	rtc_disable_interrupt:
  78              		@ args = 0, pretend = 0, frame = 0
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80              		@ link register save eliminated.
  81 0000 4162     		str	r1, [r0, #36]
  82 0002 7047     		bx	lr
  83              		.size	rtc_disable_interrupt, .-rtc_disable_interrupt
  84              		.section	.text.rtc_get_interrupt_mask,"ax",%progbits
  85              		.align	1
  86              		.p2align 2,,3
  87              		.global	rtc_get_interrupt_mask
  88              		.syntax unified
  89              		.thumb
  90              		.thumb_func
  91              		.fpu softvfp
  92              		.type	rtc_get_interrupt_mask, %function
  93              	rtc_get_interrupt_mask:
  94              		@ args = 0, pretend = 0, frame = 0
  95              		@ frame_needed = 0, uses_anonymous_args = 0
  96              		@ link register save eliminated.
  97 0000 806A     		ldr	r0, [r0, #40]
  98 0002 7047     		bx	lr
  99              		.size	rtc_get_interrupt_mask, .-rtc_get_interrupt_mask
 100              		.section	.text.rtc_get_time,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.global	rtc_get_time
 104              		.syntax unified
 105              		.thumb
 106              		.thumb_func
 107              		.fpu softvfp
 108              		.type	rtc_get_time, %function
 109              	rtc_get_time:
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112              		@ link register save eliminated.
 113 0000 30B4     		push	{r4, r5}
 114 0002 8568     		ldr	r5, [r0, #8]
ARM GAS  /tmp/ccSivgPX.s 			page 3


 115 0004 8468     		ldr	r4, [r0, #8]
 116 0006 A542     		cmp	r5, r4
 117 0008 03D0     		beq	.L11
 118              	.L23:
 119 000a 8568     		ldr	r5, [r0, #8]
 120 000c 8468     		ldr	r4, [r0, #8]
 121 000e AC42     		cmp	r4, r5
 122 0010 FBD1     		bne	.L23
 123              	.L11:
 124 0012 59B1     		cbz	r1, .L14
 125 0014 C4F30150 		ubfx	r0, r4, #20, #2
 126 0018 00EB8005 		add	r5, r0, r0, lsl #2
 127 001c C4F30340 		ubfx	r0, r4, #16, #4
 128 0020 00EB4500 		add	r0, r0, r5, lsl #1
 129 0024 6502     		lsls	r5, r4, #9
 130 0026 48BF     		it	mi
 131 0028 0C30     		addmi	r0, r0, #12
 132 002a 0860     		str	r0, [r1]
 133              	.L14:
 134 002c 42B1     		cbz	r2, .L17
 135 002e C4F30231 		ubfx	r1, r4, #12, #3
 136 0032 01EB8101 		add	r1, r1, r1, lsl #2
 137 0036 C4F30320 		ubfx	r0, r4, #8, #4
 138 003a 00EB4101 		add	r1, r0, r1, lsl #1
 139 003e 1160     		str	r1, [r2]
 140              	.L17:
 141 0040 43B1     		cbz	r3, .L10
 142 0042 C4F30212 		ubfx	r2, r4, #4, #3
 143 0046 02EB8202 		add	r2, r2, r2, lsl #2
 144 004a 04F00F04 		and	r4, r4, #15
 145 004e 04EB4204 		add	r4, r4, r2, lsl #1
 146 0052 1C60     		str	r4, [r3]
 147              	.L10:
 148 0054 30BC     		pop	{r4, r5}
 149 0056 7047     		bx	lr
 150              		.size	rtc_get_time, .-rtc_get_time
 151              		.section	.text.rtc_set_time,"ax",%progbits
 152              		.align	1
 153              		.p2align 2,,3
 154              		.global	rtc_set_time
 155              		.syntax unified
 156              		.thumb
 157              		.thumb_func
 158              		.fpu softvfp
 159              		.type	rtc_set_time, %function
 160              	rtc_set_time:
 161              		@ args = 0, pretend = 0, frame = 0
 162              		@ frame_needed = 0, uses_anonymous_args = 0
 163 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 164 0002 4568     		ldr	r5, [r0, #4]
 165 0004 15F00105 		ands	r5, r5, #1
 166 0008 05D0     		beq	.L30
 167 000a 0C29     		cmp	r1, #12
 168 000c 86BF     		itte	hi
 169 000e 0C39     		subhi	r1, r1, #12
 170 0010 4FF48005 		movhi	r5, #4194304
 171 0014 0025     		movls	r5, #0
ARM GAS  /tmp/ccSivgPX.s 			page 4


 172              	.L30:
 173 0016 1B4C     		ldr	r4, .L40
 174 0018 A4FB0367 		umull	r6, r7, r4, r3
 175 001c FF08     		lsrs	r7, r7, #3
 176 001e A4FB02C6 		umull	ip, r6, r4, r2
 177 0022 07EB870E 		add	lr, r7, r7, lsl #2
 178 0026 F608     		lsrs	r6, r6, #3
 179 0028 A3EB4E03 		sub	r3, r3, lr, lsl #1
 180 002c 43EA0713 		orr	r3, r3, r7, lsl #4
 181 0030 06EB8607 		add	r7, r6, r6, lsl #2
 182 0034 43EA0633 		orr	r3, r3, r6, lsl #12
 183 0038 A2EB4706 		sub	r6, r2, r7, lsl #1
 184 003c A4FB0142 		umull	r4, r2, r4, r1
 185 0040 D208     		lsrs	r2, r2, #3
 186 0042 43EA0623 		orr	r3, r3, r6, lsl #8
 187 0046 2B43     		orrs	r3, r3, r5
 188 0048 02EB8204 		add	r4, r2, r2, lsl #2
 189 004c 43EA0253 		orr	r3, r3, r2, lsl #20
 190 0050 A1EB4401 		sub	r1, r1, r4, lsl #1
 191 0054 43EA0141 		orr	r1, r3, r1, lsl #16
 192              	.L31:
 193 0058 8369     		ldr	r3, [r0, #24]
 194 005a 5A07     		lsls	r2, r3, #29
 195 005c FCD5     		bpl	.L31
 196 005e 0368     		ldr	r3, [r0]
 197 0060 43F00103 		orr	r3, r3, #1
 198 0064 0360     		str	r3, [r0]
 199              	.L32:
 200 0066 8369     		ldr	r3, [r0, #24]
 201 0068 DB07     		lsls	r3, r3, #31
 202 006a FCD5     		bpl	.L32
 203 006c 0123     		movs	r3, #1
 204 006e C361     		str	r3, [r0, #28]
 205 0070 8160     		str	r1, [r0, #8]
 206 0072 0368     		ldr	r3, [r0]
 207 0074 23F00103 		bic	r3, r3, #1
 208 0078 0360     		str	r3, [r0]
 209 007a C06A     		ldr	r0, [r0, #44]
 210 007c 00F00100 		and	r0, r0, #1
 211 0080 F0BD     		pop	{r4, r5, r6, r7, pc}
 212              	.L41:
 213 0082 00BF     		.align	2
 214              	.L40:
 215 0084 CDCCCCCC 		.word	-858993459
 216              		.size	rtc_set_time, .-rtc_set_time
 217              		.section	.text.rtc_set_time_alarm,"ax",%progbits
 218              		.align	1
 219              		.p2align 2,,3
 220              		.global	rtc_set_time_alarm
 221              		.syntax unified
 222              		.thumb
 223              		.thumb_func
 224              		.fpu softvfp
 225              		.type	rtc_set_time_alarm, %function
 226              	rtc_set_time_alarm:
 227              		@ args = 12, pretend = 0, frame = 0
 228              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccSivgPX.s 			page 5


 229 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 230 0002 05AC     		add	r4, sp, #20
 231 0004 70CC     		ldm	r4, {r4, r5, r6}
 232 0006 91B1     		cbz	r1, .L43
 233 0008 4168     		ldr	r1, [r0, #4]
 234 000a 11F00101 		ands	r1, r1, #1
 235 000e 38D1     		bne	.L59
 236              	.L48:
 237 0010 4FF0000E 		mov	lr, #0
 238              	.L44:
 239 0014 1E4F     		ldr	r7, .L60
 240 0016 A7FB0217 		umull	r1, r7, r7, r2
 241 001a FF08     		lsrs	r7, r7, #3
 242 001c 07EB8701 		add	r1, r7, r7, lsl #2
 243 0020 A2EB4102 		sub	r2, r2, r1, lsl #1
 244 0024 1104     		lsls	r1, r2, #16
 245 0026 41EA0751 		orr	r1, r1, r7, lsl #20
 246 002a 41EA0E01 		orr	r1, r1, lr
 247              	.L43:
 248 002e 5BB1     		cbz	r3, .L45
 249 0030 174B     		ldr	r3, .L60
 250 0032 A3FB0423 		umull	r2, r3, r3, r4
 251 0036 DB08     		lsrs	r3, r3, #3
 252 0038 03EB8302 		add	r2, r3, r3, lsl #2
 253 003c A4EB4204 		sub	r4, r4, r2, lsl #1
 254 0040 2402     		lsls	r4, r4, #8
 255 0042 44EA0334 		orr	r4, r4, r3, lsl #12
 256 0046 2143     		orrs	r1, r1, r4
 257              	.L45:
 258 0048 55B1     		cbz	r5, .L46
 259 004a 114B     		ldr	r3, .L60
 260 004c A3FB0623 		umull	r2, r3, r3, r6
 261 0050 DB08     		lsrs	r3, r3, #3
 262 0052 03EB8302 		add	r2, r3, r3, lsl #2
 263 0056 A6EB4206 		sub	r6, r6, r2, lsl #1
 264 005a 46EA0313 		orr	r3, r6, r3, lsl #4
 265 005e 1943     		orrs	r1, r1, r3
 266              	.L46:
 267 0060 0369     		ldr	r3, [r0, #16]
 268 0062 23F08013 		bic	r3, r3, #8388736
 269 0066 23F40043 		bic	r3, r3, #32768
 270 006a 0361     		str	r3, [r0, #16]
 271 006c 0161     		str	r1, [r0, #16]
 272 006e 0369     		ldr	r3, [r0, #16]
 273 0070 43F08013 		orr	r3, r3, #8388736
 274 0074 43F40043 		orr	r3, r3, #32768
 275 0078 0361     		str	r3, [r0, #16]
 276 007a C06A     		ldr	r0, [r0, #44]
 277 007c 00F00400 		and	r0, r0, #4
 278 0080 F0BD     		pop	{r4, r5, r6, r7, pc}
 279              	.L59:
 280 0082 0C2A     		cmp	r2, #12
 281 0084 C4D9     		bls	.L48
 282 0086 0C3A     		subs	r2, r2, #12
 283 0088 4FF4800E 		mov	lr, #4194304
 284 008c C2E7     		b	.L44
 285              	.L61:
ARM GAS  /tmp/ccSivgPX.s 			page 6


 286 008e 00BF     		.align	2
 287              	.L60:
 288 0090 CDCCCCCC 		.word	-858993459
 289              		.size	rtc_set_time_alarm, .-rtc_set_time_alarm
 290              		.section	.text.rtc_get_date,"ax",%progbits
 291              		.align	1
 292              		.p2align 2,,3
 293              		.global	rtc_get_date
 294              		.syntax unified
 295              		.thumb
 296              		.thumb_func
 297              		.fpu softvfp
 298              		.type	rtc_get_date, %function
 299              	rtc_get_date:
 300              		@ args = 4, pretend = 0, frame = 0
 301              		@ frame_needed = 0, uses_anonymous_args = 0
 302 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 303 0002 C568     		ldr	r5, [r0, #12]
 304 0004 C468     		ldr	r4, [r0, #12]
 305 0006 059E     		ldr	r6, [sp, #20]
 306 0008 A542     		cmp	r5, r4
 307 000a 03D0     		beq	.L63
 308              	.L77:
 309 000c C568     		ldr	r5, [r0, #12]
 310 000e C468     		ldr	r4, [r0, #12]
 311 0010 AC42     		cmp	r4, r5
 312 0012 FBD1     		bne	.L77
 313              	.L63:
 314 0014 99B1     		cbz	r1, .L65
 315 0016 C4F30335 		ubfx	r5, r4, #12, #4
 316 001a C4F30210 		ubfx	r0, r4, #4, #3
 317 001e 05EB8507 		add	r7, r5, r5, lsl #2
 318 0022 C4F3032E 		ubfx	lr, r4, #8, #4
 319 0026 00EB8005 		add	r5, r0, r0, lsl #2
 320 002a 04F00F00 		and	r0, r4, #15
 321 002e 00EB4500 		add	r0, r0, r5, lsl #1
 322 0032 0EEB4707 		add	r7, lr, r7, lsl #1
 323 0036 6425     		movs	r5, #100
 324 0038 05FB0070 		mla	r0, r5, r0, r7
 325 003c 0860     		str	r0, [r1]
 326              	.L65:
 327 003e 42B1     		cbz	r2, .L66
 328 0040 C4F30050 		ubfx	r0, r4, #20, #1
 329 0044 8100     		lsls	r1, r0, #2
 330 0046 0844     		add	r0, r0, r1
 331 0048 C4F30341 		ubfx	r1, r4, #16, #4
 332 004c 01EB4001 		add	r1, r1, r0, lsl #1
 333 0050 1160     		str	r1, [r2]
 334              	.L66:
 335 0052 43B1     		cbz	r3, .L67
 336 0054 C4F30172 		ubfx	r2, r4, #28, #2
 337 0058 02EB8202 		add	r2, r2, r2, lsl #2
 338 005c C4F30361 		ubfx	r1, r4, #24, #4
 339 0060 01EB4202 		add	r2, r1, r2, lsl #1
 340 0064 1A60     		str	r2, [r3]
 341              	.L67:
 342 0066 16B1     		cbz	r6, .L62
ARM GAS  /tmp/ccSivgPX.s 			page 7


 343 0068 C4F34254 		ubfx	r4, r4, #21, #3
 344 006c 3460     		str	r4, [r6]
 345              	.L62:
 346 006e F0BD     		pop	{r4, r5, r6, r7, pc}
 347              		.size	rtc_get_date, .-rtc_get_date
 348              		.section	.text.rtc_set_date,"ax",%progbits
 349              		.align	1
 350              		.p2align 2,,3
 351              		.global	rtc_set_date
 352              		.syntax unified
 353              		.thumb
 354              		.thumb_func
 355              		.fpu softvfp
 356              		.type	rtc_set_date, %function
 357              	rtc_set_date:
 358              		@ args = 4, pretend = 0, frame = 0
 359              		@ frame_needed = 0, uses_anonymous_args = 0
 360 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 361 0002 294D     		ldr	r5, .L92
 362 0004 059C     		ldr	r4, [sp, #20]
 363 0006 A5FB0367 		umull	r6, r7, r5, r3
 364 000a FF08     		lsrs	r7, r7, #3
 365 000c 07EB870E 		add	lr, r7, r7, lsl #2
 366 0010 6405     		lsls	r4, r4, #21
 367 0012 A3EB4E0E 		sub	lr, r3, lr, lsl #1
 368 0016 254E     		ldr	r6, .L92+4
 369 0018 44EA0773 		orr	r3, r4, r7, lsl #28
 370 001c A5FB0274 		umull	r7, r4, r5, r2
 371 0020 E408     		lsrs	r4, r4, #3
 372 0022 43EA0E63 		orr	r3, r3, lr, lsl #24
 373 0026 A6FB01C6 		umull	ip, r6, r6, r1
 374 002a DFF884E0 		ldr	lr, .L92+8
 375 002e 43EA0453 		orr	r3, r3, r4, lsl #20
 376 0032 04EB8404 		add	r4, r4, r4, lsl #2
 377 0036 A2EB4402 		sub	r2, r2, r4, lsl #1
 378 003a 7609     		lsrs	r6, r6, #5
 379 003c A5FB0647 		umull	r4, r7, r5, r6
 380 0040 43EA0243 		orr	r3, r3, r2, lsl #16
 381 0044 AEFB01E4 		umull	lr, r4, lr, r1
 382 0048 A5FB01E2 		umull	lr, r2, r5, r1
 383 004c D208     		lsrs	r2, r2, #3
 384 004e FF08     		lsrs	r7, r7, #3
 385 0050 A409     		lsrs	r4, r4, #6
 386 0052 07EB8707 		add	r7, r7, r7, lsl #2
 387 0056 A5FB02E5 		umull	lr, r5, r5, r2
 388 005a 43EA0413 		orr	r3, r3, r4, lsl #4
 389 005e A6EB4707 		sub	r7, r6, r7, lsl #1
 390 0062 ED08     		lsrs	r5, r5, #3
 391 0064 02EB8204 		add	r4, r2, r2, lsl #2
 392 0068 3B43     		orrs	r3, r3, r7
 393 006a 05EB8505 		add	r5, r5, r5, lsl #2
 394 006e A1EB4401 		sub	r1, r1, r4, lsl #1
 395 0072 A2EB4505 		sub	r5, r2, r5, lsl #1
 396 0076 43EA0121 		orr	r1, r3, r1, lsl #8
 397 007a 41EA0531 		orr	r1, r1, r5, lsl #12
 398              	.L85:
 399 007e 8369     		ldr	r3, [r0, #24]
ARM GAS  /tmp/ccSivgPX.s 			page 8


 400 0080 5A07     		lsls	r2, r3, #29
 401 0082 FCD5     		bpl	.L85
 402 0084 0368     		ldr	r3, [r0]
 403 0086 43F00203 		orr	r3, r3, #2
 404 008a 0360     		str	r3, [r0]
 405              	.L86:
 406 008c 8369     		ldr	r3, [r0, #24]
 407 008e DB07     		lsls	r3, r3, #31
 408 0090 FCD5     		bpl	.L86
 409 0092 0123     		movs	r3, #1
 410 0094 C361     		str	r3, [r0, #28]
 411 0096 C160     		str	r1, [r0, #12]
 412 0098 0368     		ldr	r3, [r0]
 413 009a 23F00203 		bic	r3, r3, #2
 414 009e 0360     		str	r3, [r0]
 415 00a0 C06A     		ldr	r0, [r0, #44]
 416 00a2 00F00200 		and	r0, r0, #2
 417 00a6 F0BD     		pop	{r4, r5, r6, r7, pc}
 418              	.L93:
 419              		.align	2
 420              	.L92:
 421 00a8 CDCCCCCC 		.word	-858993459
 422 00ac 1F85EB51 		.word	1374389535
 423 00b0 D34D6210 		.word	274877907
 424              		.size	rtc_set_date, .-rtc_set_date
 425              		.section	.text.rtc_set_date_alarm,"ax",%progbits
 426              		.align	1
 427              		.p2align 2,,3
 428              		.global	rtc_set_date_alarm
 429              		.syntax unified
 430              		.thumb
 431              		.thumb_func
 432              		.fpu softvfp
 433              		.type	rtc_set_date_alarm, %function
 434              	rtc_set_date_alarm:
 435              		@ args = 4, pretend = 0, frame = 0
 436              		@ frame_needed = 0, uses_anonymous_args = 0
 437              		@ link register save eliminated.
 438 0000 30B4     		push	{r4, r5}
 439 0002 029C     		ldr	r4, [sp, #8]
 440 0004 51B1     		cbz	r1, .L95
 441 0006 1549     		ldr	r1, .L104
 442 0008 A1FB0251 		umull	r5, r1, r1, r2
 443 000c C908     		lsrs	r1, r1, #3
 444 000e 01EB8105 		add	r5, r1, r1, lsl #2
 445 0012 A2EB4502 		sub	r2, r2, r5, lsl #1
 446 0016 1204     		lsls	r2, r2, #16
 447 0018 42EA0151 		orr	r1, r2, r1, lsl #20
 448              	.L95:
 449 001c 5BB1     		cbz	r3, .L96
 450 001e 0F4B     		ldr	r3, .L104
 451 0020 A3FB0423 		umull	r2, r3, r3, r4
 452 0024 DB08     		lsrs	r3, r3, #3
 453 0026 03EB8302 		add	r2, r3, r3, lsl #2
 454 002a A4EB4204 		sub	r4, r4, r2, lsl #1
 455 002e 2406     		lsls	r4, r4, #24
 456 0030 44EA0374 		orr	r4, r4, r3, lsl #28
ARM GAS  /tmp/ccSivgPX.s 			page 9


 457 0034 2143     		orrs	r1, r1, r4
 458              	.L96:
 459 0036 4369     		ldr	r3, [r0, #20]
 460 0038 23F00043 		bic	r3, r3, #-2147483648
 461 003c 23F40003 		bic	r3, r3, #8388608
 462 0040 4361     		str	r3, [r0, #20]
 463 0042 4161     		str	r1, [r0, #20]
 464 0044 4369     		ldr	r3, [r0, #20]
 465 0046 43F00043 		orr	r3, r3, #-2147483648
 466 004a 43F40003 		orr	r3, r3, #8388608
 467 004e 4361     		str	r3, [r0, #20]
 468 0050 C06A     		ldr	r0, [r0, #44]
 469 0052 30BC     		pop	{r4, r5}
 470 0054 00F00800 		and	r0, r0, #8
 471 0058 7047     		bx	lr
 472              	.L105:
 473 005a 00BF     		.align	2
 474              	.L104:
 475 005c CDCCCCCC 		.word	-858993459
 476              		.size	rtc_set_date_alarm, .-rtc_set_date_alarm
 477              		.section	.text.rtc_clear_time_alarm,"ax",%progbits
 478              		.align	1
 479              		.p2align 2,,3
 480              		.global	rtc_clear_time_alarm
 481              		.syntax unified
 482              		.thumb
 483              		.thumb_func
 484              		.fpu softvfp
 485              		.type	rtc_clear_time_alarm, %function
 486              	rtc_clear_time_alarm:
 487              		@ args = 0, pretend = 0, frame = 0
 488              		@ frame_needed = 0, uses_anonymous_args = 0
 489              		@ link register save eliminated.
 490 0000 0023     		movs	r3, #0
 491 0002 0361     		str	r3, [r0, #16]
 492 0004 7047     		bx	lr
 493              		.size	rtc_clear_time_alarm, .-rtc_clear_time_alarm
 494 0006 00BF     		.section	.text.rtc_clear_date_alarm,"ax",%progbits
 495              		.align	1
 496              		.p2align 2,,3
 497              		.global	rtc_clear_date_alarm
 498              		.syntax unified
 499              		.thumb
 500              		.thumb_func
 501              		.fpu softvfp
 502              		.type	rtc_clear_date_alarm, %function
 503              	rtc_clear_date_alarm:
 504              		@ args = 0, pretend = 0, frame = 0
 505              		@ frame_needed = 0, uses_anonymous_args = 0
 506              		@ link register save eliminated.
 507 0000 014B     		ldr	r3, .L108
 508 0002 4361     		str	r3, [r0, #20]
 509 0004 7047     		bx	lr
 510              	.L109:
 511 0006 00BF     		.align	2
 512              	.L108:
 513 0008 00000101 		.word	16842752
ARM GAS  /tmp/ccSivgPX.s 			page 10


 514              		.size	rtc_clear_date_alarm, .-rtc_clear_date_alarm
 515              		.section	.text.rtc_get_status,"ax",%progbits
 516              		.align	1
 517              		.p2align 2,,3
 518              		.global	rtc_get_status
 519              		.syntax unified
 520              		.thumb
 521              		.thumb_func
 522              		.fpu softvfp
 523              		.type	rtc_get_status, %function
 524              	rtc_get_status:
 525              		@ args = 0, pretend = 0, frame = 0
 526              		@ frame_needed = 0, uses_anonymous_args = 0
 527              		@ link register save eliminated.
 528 0000 8069     		ldr	r0, [r0, #24]
 529 0002 7047     		bx	lr
 530              		.size	rtc_get_status, .-rtc_get_status
 531              		.section	.text.rtc_clear_status,"ax",%progbits
 532              		.align	1
 533              		.p2align 2,,3
 534              		.global	rtc_clear_status
 535              		.syntax unified
 536              		.thumb
 537              		.thumb_func
 538              		.fpu softvfp
 539              		.type	rtc_clear_status, %function
 540              	rtc_clear_status:
 541              		@ args = 0, pretend = 0, frame = 0
 542              		@ frame_needed = 0, uses_anonymous_args = 0
 543              		@ link register save eliminated.
 544 0000 C161     		str	r1, [r0, #28]
 545 0002 7047     		bx	lr
 546              		.size	rtc_clear_status, .-rtc_clear_status
 547              		.section	.text.rtc_get_valid_entry,"ax",%progbits
 548              		.align	1
 549              		.p2align 2,,3
 550              		.global	rtc_get_valid_entry
 551              		.syntax unified
 552              		.thumb
 553              		.thumb_func
 554              		.fpu softvfp
 555              		.type	rtc_get_valid_entry, %function
 556              	rtc_get_valid_entry:
 557              		@ args = 0, pretend = 0, frame = 0
 558              		@ frame_needed = 0, uses_anonymous_args = 0
 559              		@ link register save eliminated.
 560 0000 C06A     		ldr	r0, [r0, #44]
 561 0002 7047     		bx	lr
 562              		.size	rtc_get_valid_entry, .-rtc_get_valid_entry
 563              		.section	.text.rtc_set_time_event,"ax",%progbits
 564              		.align	1
 565              		.p2align 2,,3
 566              		.global	rtc_set_time_event
 567              		.syntax unified
 568              		.thumb
 569              		.thumb_func
 570              		.fpu softvfp
ARM GAS  /tmp/ccSivgPX.s 			page 11


 571              		.type	rtc_set_time_event, %function
 572              	rtc_set_time_event:
 573              		@ args = 0, pretend = 0, frame = 0
 574              		@ frame_needed = 0, uses_anonymous_args = 0
 575              		@ link register save eliminated.
 576 0000 0368     		ldr	r3, [r0]
 577 0002 23F44073 		bic	r3, r3, #768
 578 0006 0360     		str	r3, [r0]
 579 0008 0368     		ldr	r3, [r0]
 580 000a 0902     		lsls	r1, r1, #8
 581 000c 01F44071 		and	r1, r1, #768
 582 0010 1943     		orrs	r1, r1, r3
 583 0012 0160     		str	r1, [r0]
 584 0014 7047     		bx	lr
 585              		.size	rtc_set_time_event, .-rtc_set_time_event
 586 0016 00BF     		.section	.text.rtc_set_calendar_event,"ax",%progbits
 587              		.align	1
 588              		.p2align 2,,3
 589              		.global	rtc_set_calendar_event
 590              		.syntax unified
 591              		.thumb
 592              		.thumb_func
 593              		.fpu softvfp
 594              		.type	rtc_set_calendar_event, %function
 595              	rtc_set_calendar_event:
 596              		@ args = 0, pretend = 0, frame = 0
 597              		@ frame_needed = 0, uses_anonymous_args = 0
 598              		@ link register save eliminated.
 599 0000 0368     		ldr	r3, [r0]
 600 0002 23F44033 		bic	r3, r3, #196608
 601 0006 0360     		str	r3, [r0]
 602 0008 0368     		ldr	r3, [r0]
 603 000a 0904     		lsls	r1, r1, #16
 604 000c 01F44031 		and	r1, r1, #196608
 605 0010 1943     		orrs	r1, r1, r3
 606 0012 0160     		str	r1, [r0]
 607 0014 7047     		bx	lr
 608              		.size	rtc_set_calendar_event, .-rtc_set_calendar_event
 609 0016 00BF     		.section	.text.rtc_set_calendar_mode,"ax",%progbits
 610              		.align	1
 611              		.p2align 2,,3
 612              		.global	rtc_set_calendar_mode
 613              		.syntax unified
 614              		.thumb
 615              		.thumb_func
 616              		.fpu softvfp
 617              		.type	rtc_set_calendar_mode, %function
 618              	rtc_set_calendar_mode:
 619              		@ args = 0, pretend = 0, frame = 0
 620              		@ frame_needed = 0, uses_anonymous_args = 0
 621              		@ link register save eliminated.
 622 0000 4368     		ldr	r3, [r0, #4]
 623 0002 19B9     		cbnz	r1, .L118
 624 0004 23F00203 		bic	r3, r3, #2
 625 0008 4360     		str	r3, [r0, #4]
 626 000a 7047     		bx	lr
 627              	.L118:
ARM GAS  /tmp/ccSivgPX.s 			page 12


 628 000c 43F00203 		orr	r3, r3, #2
 629 0010 4360     		str	r3, [r0, #4]
 630 0012 7047     		bx	lr
 631              		.size	rtc_set_calendar_mode, .-rtc_set_calendar_mode
 632              		.section	.text.rtc_get_calendar_mode,"ax",%progbits
 633              		.align	1
 634              		.p2align 2,,3
 635              		.global	rtc_get_calendar_mode
 636              		.syntax unified
 637              		.thumb
 638              		.thumb_func
 639              		.fpu softvfp
 640              		.type	rtc_get_calendar_mode, %function
 641              	rtc_get_calendar_mode:
 642              		@ args = 0, pretend = 0, frame = 0
 643              		@ frame_needed = 0, uses_anonymous_args = 0
 644              		@ link register save eliminated.
 645 0000 4068     		ldr	r0, [r0, #4]
 646 0002 C0F34000 		ubfx	r0, r0, #1, #1
 647 0006 7047     		bx	lr
 648              		.size	rtc_get_calendar_mode, .-rtc_get_calendar_mode
 649              		.section	.text.rtc_set_calibration,"ax",%progbits
 650              		.align	1
 651              		.p2align 2,,3
 652              		.global	rtc_set_calibration
 653              		.syntax unified
 654              		.thumb
 655              		.thumb_func
 656              		.fpu softvfp
 657              		.type	rtc_set_calibration, %function
 658              	rtc_set_calibration:
 659              		@ args = 0, pretend = 0, frame = 0
 660              		@ frame_needed = 0, uses_anonymous_args = 0
 661              		@ link register save eliminated.
 662 0000 10B4     		push	{r4}
 663 0002 4468     		ldr	r4, [r0, #4]
 664 0004 69B1     		cbz	r1, .L121
 665 0006 44F01004 		orr	r4, r4, #16
 666              	.L122:
 667 000a 1202     		lsls	r2, r2, #8
 668 000c 02F4FE42 		and	r2, r2, #32512
 669 0010 24F4FE44 		bic	r4, r4, #32512
 670 0014 2243     		orrs	r2, r2, r4
 671 0016 3BB9     		cbnz	r3, .L126
 672 0018 22F40042 		bic	r2, r2, #32768
 673 001c 4260     		str	r2, [r0, #4]
 674 001e 10BC     		pop	{r4}
 675 0020 7047     		bx	lr
 676              	.L121:
 677 0022 24F01004 		bic	r4, r4, #16
 678 0026 F0E7     		b	.L122
 679              	.L126:
 680 0028 42F40042 		orr	r2, r2, #32768
 681 002c 4260     		str	r2, [r0, #4]
 682 002e 10BC     		pop	{r4}
 683 0030 7047     		bx	lr
 684              		.size	rtc_set_calibration, .-rtc_set_calibration
ARM GAS  /tmp/ccSivgPX.s 			page 13


 685 0032 00BF     		.section	.text.rtc_set_waveform,"ax",%progbits
 686              		.align	1
 687              		.p2align 2,,3
 688              		.global	rtc_set_waveform
 689              		.syntax unified
 690              		.thumb
 691              		.thumb_func
 692              		.fpu softvfp
 693              		.type	rtc_set_waveform, %function
 694              	rtc_set_waveform:
 695              		@ args = 0, pretend = 0, frame = 0
 696              		@ frame_needed = 0, uses_anonymous_args = 0
 697              		@ link register save eliminated.
 698 0000 81B9     		cbnz	r1, .L128
 699 0002 072A     		cmp	r2, #7
 700 0004 0DD8     		bhi	.L127
 701 0006 DFE802F0 		tbb	[pc, r2]
 702              	.L131:
 703 000a 23       		.byte	(.L130-.L131)/2
 704 000b 2A       		.byte	(.L132-.L131)/2
 705 000c 33       		.byte	(.L133-.L131)/2
 706 000d 3C       		.byte	(.L134-.L131)/2
 707 000e 45       		.byte	(.L135-.L131)/2
 708 000f 4E       		.byte	(.L136-.L131)/2
 709 0010 57       		.byte	(.L137-.L131)/2
 710 0011 60       		.byte	(.L138-.L131)/2
 711              		.p2align 1
 712              	.L147:
 713 0012 4368     		ldr	r3, [r0, #4]
 714 0014 23F4E003 		bic	r3, r3, #7340032
 715 0018 4360     		str	r3, [r0, #4]
 716 001a 4368     		ldr	r3, [r0, #4]
 717 001c 43F4E003 		orr	r3, r3, #7340032
 718 0020 4360     		str	r3, [r0, #4]
 719              	.L127:
 720 0022 7047     		bx	lr
 721              	.L128:
 722 0024 072A     		cmp	r2, #7
 723 0026 FCD8     		bhi	.L127
 724 0028 01A3     		adr	r3, .L140
 725 002a 53F822F0 		ldr	pc, [r3, r2, lsl #2]
 726 002e 00BF     		.p2align 2
 727              	.L140:
 728 0030 DD000000 		.word	.L139+1
 729 0034 EB000000 		.word	.L141+1
 730 0038 FD000000 		.word	.L142+1
 731 003c 0F010000 		.word	.L143+1
 732 0040 21010000 		.word	.L144+1
 733 0044 33010000 		.word	.L145+1
 734 0048 45010000 		.word	.L146+1
 735 004c 13000000 		.word	.L147+1
 736              		.p2align 1
 737              	.L130:
 738 0050 4368     		ldr	r3, [r0, #4]
 739 0052 23F4E023 		bic	r3, r3, #458752
 740 0056 4360     		str	r3, [r0, #4]
 741 0058 4368     		ldr	r3, [r0, #4]
ARM GAS  /tmp/ccSivgPX.s 			page 14


 742 005a 4360     		str	r3, [r0, #4]
 743 005c 7047     		bx	lr
 744              	.L132:
 745 005e 4368     		ldr	r3, [r0, #4]
 746 0060 23F4E023 		bic	r3, r3, #458752
 747 0064 4360     		str	r3, [r0, #4]
 748 0066 4368     		ldr	r3, [r0, #4]
 749 0068 43F48033 		orr	r3, r3, #65536
 750 006c 4360     		str	r3, [r0, #4]
 751 006e 7047     		bx	lr
 752              	.L133:
 753 0070 4368     		ldr	r3, [r0, #4]
 754 0072 23F4E023 		bic	r3, r3, #458752
 755 0076 4360     		str	r3, [r0, #4]
 756 0078 4368     		ldr	r3, [r0, #4]
 757 007a 43F40033 		orr	r3, r3, #131072
 758 007e 4360     		str	r3, [r0, #4]
 759 0080 7047     		bx	lr
 760              	.L134:
 761 0082 4368     		ldr	r3, [r0, #4]
 762 0084 23F4E023 		bic	r3, r3, #458752
 763 0088 4360     		str	r3, [r0, #4]
 764 008a 4368     		ldr	r3, [r0, #4]
 765 008c 43F44033 		orr	r3, r3, #196608
 766 0090 4360     		str	r3, [r0, #4]
 767 0092 7047     		bx	lr
 768              	.L135:
 769 0094 4368     		ldr	r3, [r0, #4]
 770 0096 23F4E023 		bic	r3, r3, #458752
 771 009a 4360     		str	r3, [r0, #4]
 772 009c 4368     		ldr	r3, [r0, #4]
 773 009e 43F48023 		orr	r3, r3, #262144
 774 00a2 4360     		str	r3, [r0, #4]
 775 00a4 7047     		bx	lr
 776              	.L136:
 777 00a6 4368     		ldr	r3, [r0, #4]
 778 00a8 23F4E023 		bic	r3, r3, #458752
 779 00ac 4360     		str	r3, [r0, #4]
 780 00ae 4368     		ldr	r3, [r0, #4]
 781 00b0 43F4A023 		orr	r3, r3, #327680
 782 00b4 4360     		str	r3, [r0, #4]
 783 00b6 7047     		bx	lr
 784              	.L137:
 785 00b8 4368     		ldr	r3, [r0, #4]
 786 00ba 23F4E023 		bic	r3, r3, #458752
 787 00be 4360     		str	r3, [r0, #4]
 788 00c0 4368     		ldr	r3, [r0, #4]
 789 00c2 43F4C023 		orr	r3, r3, #393216
 790 00c6 4360     		str	r3, [r0, #4]
 791 00c8 7047     		bx	lr
 792              	.L138:
 793 00ca 4368     		ldr	r3, [r0, #4]
 794 00cc 23F4E023 		bic	r3, r3, #458752
 795 00d0 4360     		str	r3, [r0, #4]
 796 00d2 4368     		ldr	r3, [r0, #4]
 797 00d4 43F4E023 		orr	r3, r3, #458752
 798 00d8 4360     		str	r3, [r0, #4]
ARM GAS  /tmp/ccSivgPX.s 			page 15


 799 00da 7047     		bx	lr
 800              	.L139:
 801 00dc 4368     		ldr	r3, [r0, #4]
 802 00de 23F4E003 		bic	r3, r3, #7340032
 803 00e2 4360     		str	r3, [r0, #4]
 804 00e4 4368     		ldr	r3, [r0, #4]
 805 00e6 4360     		str	r3, [r0, #4]
 806 00e8 7047     		bx	lr
 807              	.L141:
 808 00ea 4368     		ldr	r3, [r0, #4]
 809 00ec 23F4E003 		bic	r3, r3, #7340032
 810 00f0 4360     		str	r3, [r0, #4]
 811 00f2 4368     		ldr	r3, [r0, #4]
 812 00f4 43F48013 		orr	r3, r3, #1048576
 813 00f8 4360     		str	r3, [r0, #4]
 814 00fa 7047     		bx	lr
 815              	.L142:
 816 00fc 4368     		ldr	r3, [r0, #4]
 817 00fe 23F4E003 		bic	r3, r3, #7340032
 818 0102 4360     		str	r3, [r0, #4]
 819 0104 4368     		ldr	r3, [r0, #4]
 820 0106 43F40013 		orr	r3, r3, #2097152
 821 010a 4360     		str	r3, [r0, #4]
 822 010c 7047     		bx	lr
 823              	.L143:
 824 010e 4368     		ldr	r3, [r0, #4]
 825 0110 23F4E003 		bic	r3, r3, #7340032
 826 0114 4360     		str	r3, [r0, #4]
 827 0116 4368     		ldr	r3, [r0, #4]
 828 0118 43F44013 		orr	r3, r3, #3145728
 829 011c 4360     		str	r3, [r0, #4]
 830 011e 7047     		bx	lr
 831              	.L144:
 832 0120 4368     		ldr	r3, [r0, #4]
 833 0122 23F4E003 		bic	r3, r3, #7340032
 834 0126 4360     		str	r3, [r0, #4]
 835 0128 4368     		ldr	r3, [r0, #4]
 836 012a 43F48003 		orr	r3, r3, #4194304
 837 012e 4360     		str	r3, [r0, #4]
 838 0130 7047     		bx	lr
 839              	.L145:
 840 0132 4368     		ldr	r3, [r0, #4]
 841 0134 23F4E003 		bic	r3, r3, #7340032
 842 0138 4360     		str	r3, [r0, #4]
 843 013a 4368     		ldr	r3, [r0, #4]
 844 013c 43F4A003 		orr	r3, r3, #5242880
 845 0140 4360     		str	r3, [r0, #4]
 846 0142 7047     		bx	lr
 847              	.L146:
 848 0144 4368     		ldr	r3, [r0, #4]
 849 0146 23F4E003 		bic	r3, r3, #7340032
 850 014a 4360     		str	r3, [r0, #4]
 851 014c 4368     		ldr	r3, [r0, #4]
 852 014e 43F4C003 		orr	r3, r3, #6291456
 853 0152 4360     		str	r3, [r0, #4]
 854 0154 7047     		bx	lr
 855              		.size	rtc_set_waveform, .-rtc_set_waveform
ARM GAS  /tmp/ccSivgPX.s 			page 16


 856 0156 00BF     		.section	.text.rtc_set_pulse_parameter,"ax",%progbits
 857              		.align	1
 858              		.p2align 2,,3
 859              		.global	rtc_set_pulse_parameter
 860              		.syntax unified
 861              		.thumb
 862              		.thumb_func
 863              		.fpu softvfp
 864              		.type	rtc_set_pulse_parameter, %function
 865              	rtc_set_pulse_parameter:
 866              		@ args = 0, pretend = 0, frame = 0
 867              		@ frame_needed = 0, uses_anonymous_args = 0
 868              		@ link register save eliminated.
 869 0000 4368     		ldr	r3, [r0, #4]
 870 0002 0906     		lsls	r1, r1, #24
 871 0004 01F0E061 		and	r1, r1, #117440512
 872 0008 1207     		lsls	r2, r2, #28
 873 000a 02F04052 		and	r2, r2, #805306368
 874 000e 1943     		orrs	r1, r1, r3
 875 0010 0A43     		orrs	r2, r2, r1
 876 0012 4260     		str	r2, [r0, #4]
 877 0014 7047     		bx	lr
 878              		.size	rtc_set_pulse_parameter, .-rtc_set_pulse_parameter
 879 0016 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 880              		.align	2
 881              		.type	cpu_irq_critical_section_counter, %object
 882              		.size	cpu_irq_critical_section_counter, 4
 883              	cpu_irq_critical_section_counter:
 884 0000 00000000 		.space	4
 885              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 886              		.type	cpu_irq_prev_interrupt_state, %object
 887              		.size	cpu_irq_prev_interrupt_state, 1
 888              	cpu_irq_prev_interrupt_state:
 889 0000 00       		.space	1
 890              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
