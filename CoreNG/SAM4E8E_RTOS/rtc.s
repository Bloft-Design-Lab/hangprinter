ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccN4aLsf.s 			page 1


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
  14              		.text
  15              		.section	.text.rtc_set_hour_mode,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	rtc_set_hour_mode
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	rtc_set_hour_mode, %function
  24              	rtc_set_hour_mode:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 4368     		ldr	r3, [r0, #4]
  29 0002 19B9     		cbnz	r1, .L5
  30 0004 23F00103 		bic	r3, r3, #1
  31 0008 4360     		str	r3, [r0, #4]
  32 000a 7047     		bx	lr
  33              	.L5:
  34 000c 43F00103 		orr	r3, r3, #1
  35 0010 4360     		str	r3, [r0, #4]
  36 0012 7047     		bx	lr
  37              		.size	rtc_set_hour_mode, .-rtc_set_hour_mode
  38              		.section	.text.rtc_get_hour_mode,"ax",%progbits
  39              		.align	1
  40              		.p2align 2,,3
  41              		.global	rtc_get_hour_mode
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu fpv4-sp-d16
  46              		.type	rtc_get_hour_mode, %function
  47              	rtc_get_hour_mode:
  48              		@ args = 0, pretend = 0, frame = 0
  49              		@ frame_needed = 0, uses_anonymous_args = 0
  50              		@ link register save eliminated.
  51 0000 4068     		ldr	r0, [r0, #4]
  52 0002 00F00100 		and	r0, r0, #1
  53 0006 7047     		bx	lr
  54              		.size	rtc_get_hour_mode, .-rtc_get_hour_mode
  55              		.section	.text.rtc_enable_interrupt,"ax",%progbits
  56              		.align	1
  57              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccN4aLsf.s 			page 2


  58              		.global	rtc_enable_interrupt
  59              		.syntax unified
  60              		.thumb
  61              		.thumb_func
  62              		.fpu fpv4-sp-d16
  63              		.type	rtc_enable_interrupt, %function
  64              	rtc_enable_interrupt:
  65              		@ args = 0, pretend = 0, frame = 0
  66              		@ frame_needed = 0, uses_anonymous_args = 0
  67              		@ link register save eliminated.
  68 0000 0162     		str	r1, [r0, #32]
  69 0002 7047     		bx	lr
  70              		.size	rtc_enable_interrupt, .-rtc_enable_interrupt
  71              		.section	.text.rtc_disable_interrupt,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	rtc_disable_interrupt
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu fpv4-sp-d16
  79              		.type	rtc_disable_interrupt, %function
  80              	rtc_disable_interrupt:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 4162     		str	r1, [r0, #36]
  85 0002 7047     		bx	lr
  86              		.size	rtc_disable_interrupt, .-rtc_disable_interrupt
  87              		.section	.text.rtc_get_interrupt_mask,"ax",%progbits
  88              		.align	1
  89              		.p2align 2,,3
  90              		.global	rtc_get_interrupt_mask
  91              		.syntax unified
  92              		.thumb
  93              		.thumb_func
  94              		.fpu fpv4-sp-d16
  95              		.type	rtc_get_interrupt_mask, %function
  96              	rtc_get_interrupt_mask:
  97              		@ args = 0, pretend = 0, frame = 0
  98              		@ frame_needed = 0, uses_anonymous_args = 0
  99              		@ link register save eliminated.
 100 0000 806A     		ldr	r0, [r0, #40]
 101 0002 7047     		bx	lr
 102              		.size	rtc_get_interrupt_mask, .-rtc_get_interrupt_mask
 103              		.section	.text.rtc_get_time,"ax",%progbits
 104              		.align	1
 105              		.p2align 2,,3
 106              		.global	rtc_get_time
 107              		.syntax unified
 108              		.thumb
 109              		.thumb_func
 110              		.fpu fpv4-sp-d16
 111              		.type	rtc_get_time, %function
 112              	rtc_get_time:
 113              		@ args = 0, pretend = 0, frame = 0
 114              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccN4aLsf.s 			page 3


 115              		@ link register save eliminated.
 116 0000 30B4     		push	{r4, r5}
 117 0002 8568     		ldr	r5, [r0, #8]
 118 0004 8468     		ldr	r4, [r0, #8]
 119 0006 A542     		cmp	r5, r4
 120 0008 03D0     		beq	.L11
 121              	.L12:
 122 000a 8568     		ldr	r5, [r0, #8]
 123 000c 8468     		ldr	r4, [r0, #8]
 124 000e AC42     		cmp	r4, r5
 125 0010 FBD1     		bne	.L12
 126              	.L11:
 127 0012 59B1     		cbz	r1, .L14
 128 0014 C4F30150 		ubfx	r0, r4, #20, #2
 129 0018 C4F30345 		ubfx	r5, r4, #16, #4
 130 001c 00EB8000 		add	r0, r0, r0, lsl #2
 131 0020 05EB4000 		add	r0, r5, r0, lsl #1
 132 0024 6502     		lsls	r5, r4, #9
 133 0026 48BF     		it	mi
 134 0028 0C30     		addmi	r0, r0, #12
 135 002a 0860     		str	r0, [r1]
 136              	.L14:
 137 002c 42B1     		cbz	r2, .L17
 138 002e C4F30231 		ubfx	r1, r4, #12, #3
 139 0032 01EB8101 		add	r1, r1, r1, lsl #2
 140 0036 C4F30320 		ubfx	r0, r4, #8, #4
 141 003a 00EB4101 		add	r1, r0, r1, lsl #1
 142 003e 1160     		str	r1, [r2]
 143              	.L17:
 144 0040 43B1     		cbz	r3, .L10
 145 0042 C4F30212 		ubfx	r2, r4, #4, #3
 146 0046 02EB8202 		add	r2, r2, r2, lsl #2
 147 004a 04F00F04 		and	r4, r4, #15
 148 004e 04EB4204 		add	r4, r4, r2, lsl #1
 149 0052 1C60     		str	r4, [r3]
 150              	.L10:
 151 0054 30BC     		pop	{r4, r5}
 152 0056 7047     		bx	lr
 153              		.size	rtc_get_time, .-rtc_get_time
 154              		.section	.text.rtc_set_time,"ax",%progbits
 155              		.align	1
 156              		.p2align 2,,3
 157              		.global	rtc_set_time
 158              		.syntax unified
 159              		.thumb
 160              		.thumb_func
 161              		.fpu fpv4-sp-d16
 162              		.type	rtc_set_time, %function
 163              	rtc_set_time:
 164              		@ args = 0, pretend = 0, frame = 0
 165              		@ frame_needed = 0, uses_anonymous_args = 0
 166 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 167 0002 4568     		ldr	r5, [r0, #4]
 168 0004 15F00105 		ands	r5, r5, #1
 169 0008 05D0     		beq	.L29
 170 000a 0C29     		cmp	r1, #12
 171 000c 86BF     		itte	hi
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccN4aLsf.s 			page 4


 172 000e 0C39     		subhi	r1, r1, #12
 173 0010 4FF48005 		movhi	r5, #4194304
 174 0014 0025     		movls	r5, #0
 175              	.L29:
 176 0016 1B4C     		ldr	r4, .L39
 177 0018 A4FB0367 		umull	r6, r7, r4, r3
 178 001c FF08     		lsrs	r7, r7, #3
 179 001e A4FB02E6 		umull	lr, r6, r4, r2
 180 0022 07EB870C 		add	ip, r7, r7, lsl #2
 181 0026 F608     		lsrs	r6, r6, #3
 182 0028 A3EB4C03 		sub	r3, r3, ip, lsl #1
 183 002c 43EA0713 		orr	r3, r3, r7, lsl #4
 184 0030 06EB8607 		add	r7, r6, r6, lsl #2
 185 0034 43EA0633 		orr	r3, r3, r6, lsl #12
 186 0038 A2EB4706 		sub	r6, r2, r7, lsl #1
 187 003c A4FB0142 		umull	r4, r2, r4, r1
 188 0040 D208     		lsrs	r2, r2, #3
 189 0042 43EA0623 		orr	r3, r3, r6, lsl #8
 190 0046 2B43     		orrs	r3, r3, r5
 191 0048 02EB8204 		add	r4, r2, r2, lsl #2
 192 004c 43EA0253 		orr	r3, r3, r2, lsl #20
 193 0050 A1EB4401 		sub	r1, r1, r4, lsl #1
 194 0054 43EA0141 		orr	r1, r3, r1, lsl #16
 195              	.L30:
 196 0058 8369     		ldr	r3, [r0, #24]
 197 005a 5A07     		lsls	r2, r3, #29
 198 005c FCD5     		bpl	.L30
 199 005e 0368     		ldr	r3, [r0]
 200 0060 43F00103 		orr	r3, r3, #1
 201 0064 0360     		str	r3, [r0]
 202              	.L31:
 203 0066 8369     		ldr	r3, [r0, #24]
 204 0068 DB07     		lsls	r3, r3, #31
 205 006a FCD5     		bpl	.L31
 206 006c 0123     		movs	r3, #1
 207 006e C361     		str	r3, [r0, #28]
 208 0070 8160     		str	r1, [r0, #8]
 209 0072 0368     		ldr	r3, [r0]
 210 0074 23F00103 		bic	r3, r3, #1
 211 0078 0360     		str	r3, [r0]
 212 007a C06A     		ldr	r0, [r0, #44]
 213 007c 00F00100 		and	r0, r0, #1
 214 0080 F0BD     		pop	{r4, r5, r6, r7, pc}
 215              	.L40:
 216 0082 00BF     		.align	2
 217              	.L39:
 218 0084 CDCCCCCC 		.word	-858993459
 219              		.size	rtc_set_time, .-rtc_set_time
 220              		.section	.text.rtc_set_time_alarm,"ax",%progbits
 221              		.align	1
 222              		.p2align 2,,3
 223              		.global	rtc_set_time_alarm
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv4-sp-d16
 228              		.type	rtc_set_time_alarm, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccN4aLsf.s 			page 5


 229              	rtc_set_time_alarm:
 230              		@ args = 12, pretend = 0, frame = 0
 231              		@ frame_needed = 0, uses_anonymous_args = 0
 232              		@ link register save eliminated.
 233 0000 F0B4     		push	{r4, r5, r6, r7}
 234 0002 069D     		ldr	r5, [sp, #24]
 235 0004 DDE90446 		ldrd	r4, r6, [sp, #16]
 236 0008 91B1     		cbz	r1, .L42
 237 000a 4168     		ldr	r1, [r0, #4]
 238 000c 11F00101 		ands	r1, r1, #1
 239 0010 39D1     		bne	.L58
 240              	.L47:
 241 0012 4FF0000C 		mov	ip, #0
 242              	.L43:
 243 0016 1F4F     		ldr	r7, .L59
 244 0018 A7FB0217 		umull	r1, r7, r7, r2
 245 001c FF08     		lsrs	r7, r7, #3
 246 001e 07EB8701 		add	r1, r7, r7, lsl #2
 247 0022 A2EB4102 		sub	r2, r2, r1, lsl #1
 248 0026 1104     		lsls	r1, r2, #16
 249 0028 41EA0751 		orr	r1, r1, r7, lsl #20
 250 002c 41EA0C01 		orr	r1, r1, ip
 251              	.L42:
 252 0030 5BB1     		cbz	r3, .L44
 253 0032 184B     		ldr	r3, .L59
 254 0034 A3FB0423 		umull	r2, r3, r3, r4
 255 0038 DB08     		lsrs	r3, r3, #3
 256 003a 03EB8302 		add	r2, r3, r3, lsl #2
 257 003e A4EB4204 		sub	r4, r4, r2, lsl #1
 258 0042 2402     		lsls	r4, r4, #8
 259 0044 44EA0334 		orr	r4, r4, r3, lsl #12
 260 0048 2143     		orrs	r1, r1, r4
 261              	.L44:
 262 004a 56B1     		cbz	r6, .L45
 263 004c 114B     		ldr	r3, .L59
 264 004e A3FB0523 		umull	r2, r3, r3, r5
 265 0052 DB08     		lsrs	r3, r3, #3
 266 0054 03EB8302 		add	r2, r3, r3, lsl #2
 267 0058 A5EB4205 		sub	r5, r5, r2, lsl #1
 268 005c 45EA0313 		orr	r3, r5, r3, lsl #4
 269 0060 1943     		orrs	r1, r1, r3
 270              	.L45:
 271 0062 0369     		ldr	r3, [r0, #16]
 272 0064 23F08013 		bic	r3, r3, #8388736
 273 0068 23F40043 		bic	r3, r3, #32768
 274 006c 0361     		str	r3, [r0, #16]
 275 006e 0161     		str	r1, [r0, #16]
 276 0070 0369     		ldr	r3, [r0, #16]
 277 0072 43F08013 		orr	r3, r3, #8388736
 278 0076 43F40043 		orr	r3, r3, #32768
 279 007a 0361     		str	r3, [r0, #16]
 280 007c C06A     		ldr	r0, [r0, #44]
 281 007e F0BC     		pop	{r4, r5, r6, r7}
 282 0080 00F00400 		and	r0, r0, #4
 283 0084 7047     		bx	lr
 284              	.L58:
 285 0086 0C2A     		cmp	r2, #12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccN4aLsf.s 			page 6


 286 0088 C3D9     		bls	.L47
 287 008a 0C3A     		subs	r2, r2, #12
 288 008c 4FF4800C 		mov	ip, #4194304
 289 0090 C1E7     		b	.L43
 290              	.L60:
 291 0092 00BF     		.align	2
 292              	.L59:
 293 0094 CDCCCCCC 		.word	-858993459
 294              		.size	rtc_set_time_alarm, .-rtc_set_time_alarm
 295              		.section	.text.rtc_get_date,"ax",%progbits
 296              		.align	1
 297              		.p2align 2,,3
 298              		.global	rtc_get_date
 299              		.syntax unified
 300              		.thumb
 301              		.thumb_func
 302              		.fpu fpv4-sp-d16
 303              		.type	rtc_get_date, %function
 304              	rtc_get_date:
 305              		@ args = 4, pretend = 0, frame = 0
 306              		@ frame_needed = 0, uses_anonymous_args = 0
 307              		@ link register save eliminated.
 308 0000 F0B4     		push	{r4, r5, r6, r7}
 309 0002 C568     		ldr	r5, [r0, #12]
 310 0004 C468     		ldr	r4, [r0, #12]
 311 0006 049F     		ldr	r7, [sp, #16]
 312 0008 A542     		cmp	r5, r4
 313 000a 03D0     		beq	.L62
 314              	.L63:
 315 000c C568     		ldr	r5, [r0, #12]
 316 000e C468     		ldr	r4, [r0, #12]
 317 0010 AC42     		cmp	r4, r5
 318 0012 FBD1     		bne	.L63
 319              	.L62:
 320 0014 99B1     		cbz	r1, .L64
 321 0016 C4F30210 		ubfx	r0, r4, #4, #3
 322 001a C4F30336 		ubfx	r6, r4, #12, #4
 323 001e 00EB8000 		add	r0, r0, r0, lsl #2
 324 0022 04F00F05 		and	r5, r4, #15
 325 0026 06EB8606 		add	r6, r6, r6, lsl #2
 326 002a C4F3032C 		ubfx	ip, r4, #8, #4
 327 002e 05EB4005 		add	r5, r5, r0, lsl #1
 328 0032 0CEB4606 		add	r6, ip, r6, lsl #1
 329 0036 6420     		movs	r0, #100
 330 0038 00FB0560 		mla	r0, r0, r5, r6
 331 003c 0860     		str	r0, [r1]
 332              	.L64:
 333 003e 42B1     		cbz	r2, .L65
 334 0040 C4F30050 		ubfx	r0, r4, #20, #1
 335 0044 8100     		lsls	r1, r0, #2
 336 0046 0844     		add	r0, r0, r1
 337 0048 C4F30341 		ubfx	r1, r4, #16, #4
 338 004c 01EB4001 		add	r1, r1, r0, lsl #1
 339 0050 1160     		str	r1, [r2]
 340              	.L65:
 341 0052 43B1     		cbz	r3, .L66
 342 0054 C4F30172 		ubfx	r2, r4, #28, #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccN4aLsf.s 			page 7


 343 0058 02EB8202 		add	r2, r2, r2, lsl #2
 344 005c C4F30361 		ubfx	r1, r4, #24, #4
 345 0060 01EB4202 		add	r2, r1, r2, lsl #1
 346 0064 1A60     		str	r2, [r3]
 347              	.L66:
 348 0066 17B1     		cbz	r7, .L61
 349 0068 C4F34254 		ubfx	r4, r4, #21, #3
 350 006c 3C60     		str	r4, [r7]
 351              	.L61:
 352 006e F0BC     		pop	{r4, r5, r6, r7}
 353 0070 7047     		bx	lr
 354              		.size	rtc_get_date, .-rtc_get_date
 355 0072 00BF     		.section	.text.rtc_set_date,"ax",%progbits
 356              		.align	1
 357              		.p2align 2,,3
 358              		.global	rtc_set_date
 359              		.syntax unified
 360              		.thumb
 361              		.thumb_func
 362              		.fpu fpv4-sp-d16
 363              		.type	rtc_set_date, %function
 364              	rtc_set_date:
 365              		@ args = 4, pretend = 0, frame = 0
 366              		@ frame_needed = 0, uses_anonymous_args = 0
 367 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 368 0002 294D     		ldr	r5, .L90
 369 0004 059C     		ldr	r4, [sp, #20]
 370 0006 A5FB0367 		umull	r6, r7, r5, r3
 371 000a FF08     		lsrs	r7, r7, #3
 372 000c 07EB870C 		add	ip, r7, r7, lsl #2
 373 0010 6405     		lsls	r4, r4, #21
 374 0012 A3EB4C0C 		sub	ip, r3, ip, lsl #1
 375 0016 254E     		ldr	r6, .L90+4
 376 0018 44EA0773 		orr	r3, r4, r7, lsl #28
 377 001c A5FB0274 		umull	r7, r4, r5, r2
 378 0020 E408     		lsrs	r4, r4, #3
 379 0022 43EA0C63 		orr	r3, r3, ip, lsl #24
 380 0026 A6FB01E6 		umull	lr, r6, r6, r1
 381 002a DFF884C0 		ldr	ip, .L90+8
 382 002e 43EA0453 		orr	r3, r3, r4, lsl #20
 383 0032 04EB8404 		add	r4, r4, r4, lsl #2
 384 0036 A2EB4402 		sub	r2, r2, r4, lsl #1
 385 003a 7609     		lsrs	r6, r6, #5
 386 003c A5FB0647 		umull	r4, r7, r5, r6
 387 0040 43EA0243 		orr	r3, r3, r2, lsl #16
 388 0044 ACFB01C4 		umull	ip, r4, ip, r1
 389 0048 A5FB01C2 		umull	ip, r2, r5, r1
 390 004c D208     		lsrs	r2, r2, #3
 391 004e FF08     		lsrs	r7, r7, #3
 392 0050 A409     		lsrs	r4, r4, #6
 393 0052 07EB8707 		add	r7, r7, r7, lsl #2
 394 0056 A5FB02C5 		umull	ip, r5, r5, r2
 395 005a 43EA0413 		orr	r3, r3, r4, lsl #4
 396 005e A6EB4707 		sub	r7, r6, r7, lsl #1
 397 0062 ED08     		lsrs	r5, r5, #3
 398 0064 02EB8204 		add	r4, r2, r2, lsl #2
 399 0068 3B43     		orrs	r3, r3, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccN4aLsf.s 			page 8


 400 006a 05EB8505 		add	r5, r5, r5, lsl #2
 401 006e A1EB4401 		sub	r1, r1, r4, lsl #1
 402 0072 A2EB4505 		sub	r5, r2, r5, lsl #1
 403 0076 43EA0121 		orr	r1, r3, r1, lsl #8
 404 007a 41EA0531 		orr	r1, r1, r5, lsl #12
 405              	.L83:
 406 007e 8369     		ldr	r3, [r0, #24]
 407 0080 5A07     		lsls	r2, r3, #29
 408 0082 FCD5     		bpl	.L83
 409 0084 0368     		ldr	r3, [r0]
 410 0086 43F00203 		orr	r3, r3, #2
 411 008a 0360     		str	r3, [r0]
 412              	.L84:
 413 008c 8369     		ldr	r3, [r0, #24]
 414 008e DB07     		lsls	r3, r3, #31
 415 0090 FCD5     		bpl	.L84
 416 0092 0123     		movs	r3, #1
 417 0094 C361     		str	r3, [r0, #28]
 418 0096 C160     		str	r1, [r0, #12]
 419 0098 0368     		ldr	r3, [r0]
 420 009a 23F00203 		bic	r3, r3, #2
 421 009e 0360     		str	r3, [r0]
 422 00a0 C06A     		ldr	r0, [r0, #44]
 423 00a2 00F00200 		and	r0, r0, #2
 424 00a6 F0BD     		pop	{r4, r5, r6, r7, pc}
 425              	.L91:
 426              		.align	2
 427              	.L90:
 428 00a8 CDCCCCCC 		.word	-858993459
 429 00ac 1F85EB51 		.word	1374389535
 430 00b0 D34D6210 		.word	274877907
 431              		.size	rtc_set_date, .-rtc_set_date
 432              		.section	.text.rtc_set_date_alarm,"ax",%progbits
 433              		.align	1
 434              		.p2align 2,,3
 435              		.global	rtc_set_date_alarm
 436              		.syntax unified
 437              		.thumb
 438              		.thumb_func
 439              		.fpu fpv4-sp-d16
 440              		.type	rtc_set_date_alarm, %function
 441              	rtc_set_date_alarm:
 442              		@ args = 4, pretend = 0, frame = 0
 443              		@ frame_needed = 0, uses_anonymous_args = 0
 444              		@ link register save eliminated.
 445 0000 30B4     		push	{r4, r5}
 446 0002 029C     		ldr	r4, [sp, #8]
 447 0004 51B1     		cbz	r1, .L93
 448 0006 1549     		ldr	r1, .L102
 449 0008 A1FB0251 		umull	r5, r1, r1, r2
 450 000c C908     		lsrs	r1, r1, #3
 451 000e 01EB8105 		add	r5, r1, r1, lsl #2
 452 0012 A2EB4502 		sub	r2, r2, r5, lsl #1
 453 0016 1204     		lsls	r2, r2, #16
 454 0018 42EA0151 		orr	r1, r2, r1, lsl #20
 455              	.L93:
 456 001c 5BB1     		cbz	r3, .L94
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccN4aLsf.s 			page 9


 457 001e 0F4B     		ldr	r3, .L102
 458 0020 A3FB0423 		umull	r2, r3, r3, r4
 459 0024 DB08     		lsrs	r3, r3, #3
 460 0026 03EB8302 		add	r2, r3, r3, lsl #2
 461 002a A4EB4204 		sub	r4, r4, r2, lsl #1
 462 002e 2406     		lsls	r4, r4, #24
 463 0030 44EA0374 		orr	r4, r4, r3, lsl #28
 464 0034 2143     		orrs	r1, r1, r4
 465              	.L94:
 466 0036 4369     		ldr	r3, [r0, #20]
 467 0038 23F00043 		bic	r3, r3, #-2147483648
 468 003c 23F40003 		bic	r3, r3, #8388608
 469 0040 4361     		str	r3, [r0, #20]
 470 0042 4161     		str	r1, [r0, #20]
 471 0044 4369     		ldr	r3, [r0, #20]
 472 0046 43F00043 		orr	r3, r3, #-2147483648
 473 004a 43F40003 		orr	r3, r3, #8388608
 474 004e 4361     		str	r3, [r0, #20]
 475 0050 C06A     		ldr	r0, [r0, #44]
 476 0052 30BC     		pop	{r4, r5}
 477 0054 00F00800 		and	r0, r0, #8
 478 0058 7047     		bx	lr
 479              	.L103:
 480 005a 00BF     		.align	2
 481              	.L102:
 482 005c CDCCCCCC 		.word	-858993459
 483              		.size	rtc_set_date_alarm, .-rtc_set_date_alarm
 484              		.section	.text.rtc_clear_time_alarm,"ax",%progbits
 485              		.align	1
 486              		.p2align 2,,3
 487              		.global	rtc_clear_time_alarm
 488              		.syntax unified
 489              		.thumb
 490              		.thumb_func
 491              		.fpu fpv4-sp-d16
 492              		.type	rtc_clear_time_alarm, %function
 493              	rtc_clear_time_alarm:
 494              		@ args = 0, pretend = 0, frame = 0
 495              		@ frame_needed = 0, uses_anonymous_args = 0
 496              		@ link register save eliminated.
 497 0000 0023     		movs	r3, #0
 498 0002 0361     		str	r3, [r0, #16]
 499 0004 7047     		bx	lr
 500              		.size	rtc_clear_time_alarm, .-rtc_clear_time_alarm
 501 0006 00BF     		.section	.text.rtc_clear_date_alarm,"ax",%progbits
 502              		.align	1
 503              		.p2align 2,,3
 504              		.global	rtc_clear_date_alarm
 505              		.syntax unified
 506              		.thumb
 507              		.thumb_func
 508              		.fpu fpv4-sp-d16
 509              		.type	rtc_clear_date_alarm, %function
 510              	rtc_clear_date_alarm:
 511              		@ args = 0, pretend = 0, frame = 0
 512              		@ frame_needed = 0, uses_anonymous_args = 0
 513              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccN4aLsf.s 			page 10


 514 0000 014B     		ldr	r3, .L106
 515 0002 4361     		str	r3, [r0, #20]
 516 0004 7047     		bx	lr
 517              	.L107:
 518 0006 00BF     		.align	2
 519              	.L106:
 520 0008 00000101 		.word	16842752
 521              		.size	rtc_clear_date_alarm, .-rtc_clear_date_alarm
 522              		.section	.text.rtc_get_status,"ax",%progbits
 523              		.align	1
 524              		.p2align 2,,3
 525              		.global	rtc_get_status
 526              		.syntax unified
 527              		.thumb
 528              		.thumb_func
 529              		.fpu fpv4-sp-d16
 530              		.type	rtc_get_status, %function
 531              	rtc_get_status:
 532              		@ args = 0, pretend = 0, frame = 0
 533              		@ frame_needed = 0, uses_anonymous_args = 0
 534              		@ link register save eliminated.
 535 0000 8069     		ldr	r0, [r0, #24]
 536 0002 7047     		bx	lr
 537              		.size	rtc_get_status, .-rtc_get_status
 538              		.section	.text.rtc_clear_status,"ax",%progbits
 539              		.align	1
 540              		.p2align 2,,3
 541              		.global	rtc_clear_status
 542              		.syntax unified
 543              		.thumb
 544              		.thumb_func
 545              		.fpu fpv4-sp-d16
 546              		.type	rtc_clear_status, %function
 547              	rtc_clear_status:
 548              		@ args = 0, pretend = 0, frame = 0
 549              		@ frame_needed = 0, uses_anonymous_args = 0
 550              		@ link register save eliminated.
 551 0000 C161     		str	r1, [r0, #28]
 552 0002 7047     		bx	lr
 553              		.size	rtc_clear_status, .-rtc_clear_status
 554              		.section	.text.rtc_get_valid_entry,"ax",%progbits
 555              		.align	1
 556              		.p2align 2,,3
 557              		.global	rtc_get_valid_entry
 558              		.syntax unified
 559              		.thumb
 560              		.thumb_func
 561              		.fpu fpv4-sp-d16
 562              		.type	rtc_get_valid_entry, %function
 563              	rtc_get_valid_entry:
 564              		@ args = 0, pretend = 0, frame = 0
 565              		@ frame_needed = 0, uses_anonymous_args = 0
 566              		@ link register save eliminated.
 567 0000 C06A     		ldr	r0, [r0, #44]
 568 0002 7047     		bx	lr
 569              		.size	rtc_get_valid_entry, .-rtc_get_valid_entry
 570              		.section	.text.rtc_set_time_event,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccN4aLsf.s 			page 11


 571              		.align	1
 572              		.p2align 2,,3
 573              		.global	rtc_set_time_event
 574              		.syntax unified
 575              		.thumb
 576              		.thumb_func
 577              		.fpu fpv4-sp-d16
 578              		.type	rtc_set_time_event, %function
 579              	rtc_set_time_event:
 580              		@ args = 0, pretend = 0, frame = 0
 581              		@ frame_needed = 0, uses_anonymous_args = 0
 582              		@ link register save eliminated.
 583 0000 0368     		ldr	r3, [r0]
 584 0002 23F44073 		bic	r3, r3, #768
 585 0006 0360     		str	r3, [r0]
 586 0008 0368     		ldr	r3, [r0]
 587 000a 0902     		lsls	r1, r1, #8
 588 000c 01F44071 		and	r1, r1, #768
 589 0010 1943     		orrs	r1, r1, r3
 590 0012 0160     		str	r1, [r0]
 591 0014 7047     		bx	lr
 592              		.size	rtc_set_time_event, .-rtc_set_time_event
 593 0016 00BF     		.section	.text.rtc_set_calendar_event,"ax",%progbits
 594              		.align	1
 595              		.p2align 2,,3
 596              		.global	rtc_set_calendar_event
 597              		.syntax unified
 598              		.thumb
 599              		.thumb_func
 600              		.fpu fpv4-sp-d16
 601              		.type	rtc_set_calendar_event, %function
 602              	rtc_set_calendar_event:
 603              		@ args = 0, pretend = 0, frame = 0
 604              		@ frame_needed = 0, uses_anonymous_args = 0
 605              		@ link register save eliminated.
 606 0000 0368     		ldr	r3, [r0]
 607 0002 23F44033 		bic	r3, r3, #196608
 608 0006 0360     		str	r3, [r0]
 609 0008 0368     		ldr	r3, [r0]
 610 000a 0904     		lsls	r1, r1, #16
 611 000c 01F44031 		and	r1, r1, #196608
 612 0010 1943     		orrs	r1, r1, r3
 613 0012 0160     		str	r1, [r0]
 614 0014 7047     		bx	lr
 615              		.size	rtc_set_calendar_event, .-rtc_set_calendar_event
 616 0016 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 617              		.align	2
 618              		.type	cpu_irq_critical_section_counter, %object
 619              		.size	cpu_irq_critical_section_counter, 4
 620              	cpu_irq_critical_section_counter:
 621 0000 00000000 		.space	4
 622              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 623              		.type	cpu_irq_prev_interrupt_state, %object
 624              		.size	cpu_irq_prev_interrupt_state, 1
 625              	cpu_irq_prev_interrupt_state:
 626 0000 00       		.space	1
 627              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccN4aLsf.s 			page 12


