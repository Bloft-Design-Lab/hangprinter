ARM GAS  /tmp/ccoaa6J0.s 			page 1


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
ARM GAS  /tmp/ccoaa6J0.s 			page 2


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
ARM GAS  /tmp/ccoaa6J0.s 			page 3


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
 164 0002 4468     		ldr	r4, [r0, #4]
 165 0004 14F00104 		ands	r4, r4, #1
 166 0008 05D0     		beq	.L30
 167 000a 0C29     		cmp	r1, #12
 168 000c 8ABF     		itet	hi
 169 000e 4FF48004 		movhi	r4, #4194304
 170 0012 0024     		movls	r4, #0
 171 0014 0C39     		subhi	r1, r1, #12
ARM GAS  /tmp/ccoaa6J0.s 			page 4


 172              	.L30:
 173 0016 1B4F     		ldr	r7, .L40
 174 0018 A7FB0356 		umull	r5, r6, r7, r3
 175 001c A7FB02E5 		umull	lr, r5, r7, r2
 176 0020 F608     		lsrs	r6, r6, #3
 177 0022 06EB860E 		add	lr, r6, r6, lsl #2
 178 0026 A7FB01C7 		umull	ip, r7, r7, r1
 179 002a ED08     		lsrs	r5, r5, #3
 180 002c A3EB4E03 		sub	r3, r3, lr, lsl #1
 181 0030 43EA0613 		orr	r3, r3, r6, lsl #4
 182 0034 05EB8506 		add	r6, r5, r5, lsl #2
 183 0038 A2EB4602 		sub	r2, r2, r6, lsl #1
 184 003c 43EA0533 		orr	r3, r3, r5, lsl #12
 185 0040 43EA0223 		orr	r3, r3, r2, lsl #8
 186 0044 FA08     		lsrs	r2, r7, #3
 187 0046 2343     		orrs	r3, r3, r4
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
ARM GAS  /tmp/ccoaa6J0.s 			page 5


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
ARM GAS  /tmp/ccoaa6J0.s 			page 6


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
 314 0014 A1B1     		cbz	r1, .L65
 315 0016 4FF0640E 		mov	lr, #100
 316 001a C4F30335 		ubfx	r5, r4, #12, #4
 317 001e C4F30327 		ubfx	r7, r4, #8, #4
 318 0022 C4F30210 		ubfx	r0, r4, #4, #3
 319 0026 05EB8505 		add	r5, r5, r5, lsl #2
 320 002a 07EB4505 		add	r5, r7, r5, lsl #1
 321 002e 00EB8000 		add	r0, r0, r0, lsl #2
 322 0032 04F00F07 		and	r7, r4, #15
 323 0036 07EB4000 		add	r0, r7, r0, lsl #1
 324 003a 0EFB0050 		mla	r0, lr, r0, r5
 325 003e 0860     		str	r0, [r1]
 326              	.L65:
 327 0040 42B1     		cbz	r2, .L66
 328 0042 C4F30050 		ubfx	r0, r4, #20, #1
 329 0046 8100     		lsls	r1, r0, #2
 330 0048 0844     		add	r0, r0, r1
 331 004a C4F30341 		ubfx	r1, r4, #16, #4
 332 004e 01EB4001 		add	r1, r1, r0, lsl #1
 333 0052 1160     		str	r1, [r2]
 334              	.L66:
 335 0054 43B1     		cbz	r3, .L67
 336 0056 C4F30172 		ubfx	r2, r4, #28, #2
 337 005a 02EB8202 		add	r2, r2, r2, lsl #2
 338 005e C4F30361 		ubfx	r1, r4, #24, #4
 339 0062 01EB4202 		add	r2, r1, r2, lsl #1
 340 0066 1A60     		str	r2, [r3]
 341              	.L67:
 342 0068 16B1     		cbz	r6, .L62
ARM GAS  /tmp/ccoaa6J0.s 			page 7


 343 006a C4F34254 		ubfx	r4, r4, #21, #3
 344 006e 3460     		str	r4, [r6]
 345              	.L62:
 346 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 347              		.size	rtc_get_date, .-rtc_get_date
 348 0072 00BF     		.section	.text.rtc_set_date,"ax",%progbits
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
 360 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 361 0004 DFF8B480 		ldr	r8, .L92+8
 362 0008 2A4F     		ldr	r7, .L92
 363 000a A8FB034E 		umull	r4, lr, r8, r3
 364 000e A7FB0147 		umull	r4, r7, r7, r1
 365 0012 A8FB0146 		umull	r4, r6, r8, r1
 366 0016 A8FB0245 		umull	r4, r5, r8, r2
 367 001a 4FEADE0E 		lsr	lr, lr, #3
 368 001e 079C     		ldr	r4, [sp, #28]
 369 0020 0EEB8E09 		add	r9, lr, lr, lsl #2
 370 0024 A3EB4909 		sub	r9, r3, r9, lsl #1
 371 0028 6305     		lsls	r3, r4, #21
 372 002a 234C     		ldr	r4, .L92+4
 373 002c 7F09     		lsrs	r7, r7, #5
 374 002e A4FB014C 		umull	r4, ip, r4, r1
 375 0032 43EA0E73 		orr	r3, r3, lr, lsl #28
 376 0036 A8FB074E 		umull	r4, lr, r8, r7
 377 003a F608     		lsrs	r6, r6, #3
 378 003c ED08     		lsrs	r5, r5, #3
 379 003e 43EA0963 		orr	r3, r3, r9, lsl #24
 380 0042 A8FB0684 		umull	r8, r4, r8, r6
 381 0046 43EA0553 		orr	r3, r3, r5, lsl #20
 382 004a 05EB8505 		add	r5, r5, r5, lsl #2
 383 004e A2EB4502 		sub	r2, r2, r5, lsl #1
 384 0052 4FEADE0E 		lsr	lr, lr, #3
 385 0056 43EA0242 		orr	r2, r3, r2, lsl #16
 386 005a 4FEA9C1C 		lsr	ip, ip, #6
 387 005e 0EEB8E0E 		add	lr, lr, lr, lsl #2
 388 0062 06EB8603 		add	r3, r6, r6, lsl #2
 389 0066 42EA0C12 		orr	r2, r2, ip, lsl #4
 390 006a A7EB4E0E 		sub	lr, r7, lr, lsl #1
 391 006e E408     		lsrs	r4, r4, #3
 392 0070 A1EB4301 		sub	r1, r1, r3, lsl #1
 393 0074 42EA0E02 		orr	r2, r2, lr
 394 0078 04EB8404 		add	r4, r4, r4, lsl #2
 395 007c A6EB4403 		sub	r3, r6, r4, lsl #1
 396 0080 42EA0122 		orr	r2, r2, r1, lsl #8
 397 0084 42EA0332 		orr	r2, r2, r3, lsl #12
 398              	.L85:
 399 0088 8369     		ldr	r3, [r0, #24]
ARM GAS  /tmp/ccoaa6J0.s 			page 8


 400 008a 5907     		lsls	r1, r3, #29
 401 008c FCD5     		bpl	.L85
 402 008e 0368     		ldr	r3, [r0]
 403 0090 43F00203 		orr	r3, r3, #2
 404 0094 0360     		str	r3, [r0]
 405              	.L86:
 406 0096 8369     		ldr	r3, [r0, #24]
 407 0098 DB07     		lsls	r3, r3, #31
 408 009a FCD5     		bpl	.L86
 409 009c 0123     		movs	r3, #1
 410 009e C361     		str	r3, [r0, #28]
 411 00a0 C260     		str	r2, [r0, #12]
 412 00a2 0368     		ldr	r3, [r0]
 413 00a4 23F00203 		bic	r3, r3, #2
 414 00a8 0360     		str	r3, [r0]
 415 00aa C06A     		ldr	r0, [r0, #44]
 416 00ac 00F00200 		and	r0, r0, #2
 417 00b0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 418              	.L93:
 419              		.align	2
 420              	.L92:
 421 00b4 1F85EB51 		.word	1374389535
 422 00b8 D34D6210 		.word	274877907
 423 00bc CDCCCCCC 		.word	-858993459
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
ARM GAS  /tmp/ccoaa6J0.s 			page 9


 457 0034 2143     		orrs	r1, r1, r4
 458              	.L96:
 459 0036 4369     		ldr	r3, [r0, #20]
 460 0038 30BC     		pop	{r4, r5}
 461 003a 23F00043 		bic	r3, r3, #-2147483648
 462 003e 23F40003 		bic	r3, r3, #8388608
 463 0042 4361     		str	r3, [r0, #20]
 464 0044 4161     		str	r1, [r0, #20]
 465 0046 4369     		ldr	r3, [r0, #20]
 466 0048 43F00043 		orr	r3, r3, #-2147483648
 467 004c 43F40003 		orr	r3, r3, #8388608
 468 0050 4361     		str	r3, [r0, #20]
 469 0052 C06A     		ldr	r0, [r0, #44]
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
ARM GAS  /tmp/ccoaa6J0.s 			page 10


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
ARM GAS  /tmp/ccoaa6J0.s 			page 11


 571              		.type	rtc_set_time_event, %function
 572              	rtc_set_time_event:
 573              		@ args = 0, pretend = 0, frame = 0
 574              		@ frame_needed = 0, uses_anonymous_args = 0
 575              		@ link register save eliminated.
 576 0000 0368     		ldr	r3, [r0]
 577 0002 0902     		lsls	r1, r1, #8
 578 0004 23F44073 		bic	r3, r3, #768
 579 0008 0360     		str	r3, [r0]
 580 000a 0368     		ldr	r3, [r0]
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
 600 0002 0904     		lsls	r1, r1, #16
 601 0004 23F44033 		bic	r3, r3, #196608
 602 0008 0360     		str	r3, [r0]
 603 000a 0368     		ldr	r3, [r0]
 604 000c 01F44031 		and	r1, r1, #196608
 605 0010 1943     		orrs	r1, r1, r3
 606 0012 0160     		str	r1, [r0]
 607 0014 7047     		bx	lr
 608              		.size	rtc_set_calendar_event, .-rtc_set_calendar_event
 609 0016 00BF     		.section	.text.rtc_set_writeprotect,"ax",%progbits
 610              		.align	1
 611              		.p2align 2,,3
 612              		.global	rtc_set_writeprotect
 613              		.syntax unified
 614              		.thumb
 615              		.thumb_func
 616              		.fpu softvfp
 617              		.type	rtc_set_writeprotect, %function
 618              	rtc_set_writeprotect:
 619              		@ args = 0, pretend = 0, frame = 0
 620              		@ frame_needed = 0, uses_anonymous_args = 0
 621              		@ link register save eliminated.
 622 0000 19B9     		cbnz	r1, .L118
 623 0002 044B     		ldr	r3, .L119
 624 0004 C0F8E430 		str	r3, [r0, #228]
 625 0008 7047     		bx	lr
 626              	.L118:
 627 000a 034B     		ldr	r3, .L119+4
ARM GAS  /tmp/ccoaa6J0.s 			page 12


 628 000c C0F8E430 		str	r3, [r0, #228]
 629 0010 7047     		bx	lr
 630              	.L120:
 631 0012 00BF     		.align	2
 632              	.L119:
 633 0014 00435452 		.word	1381253888
 634 0018 01435452 		.word	1381253889
 635              		.size	rtc_set_writeprotect, .-rtc_set_writeprotect
 636              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 637              		.align	2
 638              		.type	cpu_irq_critical_section_counter, %object
 639              		.size	cpu_irq_critical_section_counter, 4
 640              	cpu_irq_critical_section_counter:
 641 0000 00000000 		.space	4
 642              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 643              		.type	cpu_irq_prev_interrupt_state, %object
 644              		.size	cpu_irq_prev_interrupt_state, 1
 645              	cpu_irq_prev_interrupt_state:
 646 0000 00       		.space	1
 647              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
