ARM GAS  /tmp/ccY5qSEg.s 			page 1


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
  11              		.file	"usart.c"
  12              		.section	.text.usart_set_async_baudrate,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	usart_set_async_baudrate
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	usart_set_async_baudrate, %function
  21              	usart_set_async_baudrate:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0B01     		lsls	r3, r1, #4
  26 0002 9342     		cmp	r3, r2
  27 0004 10B4     		push	{r4}
  28 0006 12D8     		bhi	.L15
  29 0008 5908     		lsrs	r1, r3, #1
  30 000a 01EBC202 		add	r2, r1, r2, lsl #3
  31 000e B2FBF3F2 		udiv	r2, r2, r3
  32 0012 4FF6FE71 		movw	r1, #65534
  33 0016 D308     		lsrs	r3, r2, #3
  34 0018 5C1E     		subs	r4, r3, #1
  35 001a 8C42     		cmp	r4, r1
  36 001c 13D8     		bhi	.L8
  37              	.L5:
  38 001e 1204     		lsls	r2, r2, #16
  39 0020 02F4E022 		and	r2, r2, #458752
  40 0024 1A43     		orrs	r2, r2, r3
  41 0026 0262     		str	r2, [r0, #32]
  42 0028 10BC     		pop	{r4}
  43 002a 0020     		movs	r0, #0
  44 002c 7047     		bx	lr
  45              	.L15:
  46 002e C900     		lsls	r1, r1, #3
  47 0030 4B08     		lsrs	r3, r1, #1
  48 0032 03EBC202 		add	r2, r3, r2, lsl #3
  49 0036 B2FBF1F2 		udiv	r2, r2, r1
  50 003a 4FF6FE71 		movw	r1, #65534
  51 003e D308     		lsrs	r3, r2, #3
  52 0040 5C1E     		subs	r4, r3, #1
  53 0042 8C42     		cmp	r4, r1
  54 0044 02D9     		bls	.L16
  55              	.L8:
  56 0046 0120     		movs	r0, #1
  57 0048 10BC     		pop	{r4}
ARM GAS  /tmp/ccY5qSEg.s 			page 2


  58 004a 7047     		bx	lr
  59              	.L16:
  60 004c 4168     		ldr	r1, [r0, #4]
  61 004e 41F40021 		orr	r1, r1, #524288
  62 0052 4160     		str	r1, [r0, #4]
  63 0054 E3E7     		b	.L5
  64              		.size	usart_set_async_baudrate, .-usart_set_async_baudrate
  65 0056 00BF     		.section	.text.usart_reset,"ax",%progbits
  66              		.align	1
  67              		.p2align 2,,3
  68              		.global	usart_reset
  69              		.syntax unified
  70              		.thumb
  71              		.thumb_func
  72              		.fpu softvfp
  73              		.type	usart_reset, %function
  74              	usart_reset:
  75              		@ args = 0, pretend = 0, frame = 0
  76              		@ frame_needed = 0, uses_anonymous_args = 0
  77              		@ link register save eliminated.
  78 0000 70B4     		push	{r4, r5, r6}
  79 0002 0023     		movs	r3, #0
  80 0004 8825     		movs	r5, #136
  81 0006 2424     		movs	r4, #36
  82 0008 4FF48071 		mov	r1, #256
  83 000c 4FF40022 		mov	r2, #524288
  84 0010 054E     		ldr	r6, .L19
  85 0012 C0F8E460 		str	r6, [r0, #228]
  86 0016 4360     		str	r3, [r0, #4]
  87 0018 4362     		str	r3, [r0, #36]
  88 001a 8362     		str	r3, [r0, #40]
  89 001c 0560     		str	r5, [r0]
  90 001e 0460     		str	r4, [r0]
  91 0020 0160     		str	r1, [r0]
  92 0022 70BC     		pop	{r4, r5, r6}
  93 0024 0260     		str	r2, [r0]
  94 0026 7047     		bx	lr
  95              	.L20:
  96              		.align	2
  97              	.L19:
  98 0028 00415355 		.word	1431519488
  99              		.size	usart_reset, .-usart_reset
 100              		.section	.text.usart_init_rs232,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.global	usart_init_rs232
 104              		.syntax unified
 105              		.thumb
 106              		.thumb_func
 107              		.fpu softvfp
 108              		.type	usart_init_rs232, %function
 109              	usart_init_rs232:
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 113 0002 0024     		movs	r4, #0
 114 0004 2426     		movs	r6, #36
ARM GAS  /tmp/ccY5qSEg.s 			page 3


 115 0006 4FF0880E 		mov	lr, #136
 116 000a 4FF48077 		mov	r7, #256
 117 000e 4FF40025 		mov	r5, #524288
 118 0012 DFF848C0 		ldr	ip, .L26+4
 119 0016 C0F8E4C0 		str	ip, [r0, #228]
 120 001a 4460     		str	r4, [r0, #4]
 121 001c 4462     		str	r4, [r0, #36]
 122 001e 8462     		str	r4, [r0, #40]
 123 0020 C0F800E0 		str	lr, [r0]
 124 0024 0660     		str	r6, [r0]
 125 0026 0C4E     		ldr	r6, .L26
 126 0028 0760     		str	r7, [r0]
 127 002a 3460     		str	r4, [r6]
 128 002c 0560     		str	r5, [r0]
 129 002e 89B1     		cbz	r1, .L24
 130 0030 0D46     		mov	r5, r1
 131 0032 0968     		ldr	r1, [r1]
 132 0034 0446     		mov	r4, r0
 133 0036 FFF7FEFF 		bl	usart_set_async_baudrate
 134 003a 58B9     		cbnz	r0, .L24
 135 003c 6A68     		ldr	r2, [r5, #4]
 136 003e AB68     		ldr	r3, [r5, #8]
 137 0040 2F69     		ldr	r7, [r5, #16]
 138 0042 E968     		ldr	r1, [r5, #12]
 139 0044 1343     		orrs	r3, r3, r2
 140 0046 3B43     		orrs	r3, r3, r7
 141 0048 6268     		ldr	r2, [r4, #4]
 142 004a 0B43     		orrs	r3, r3, r1
 143 004c 1A43     		orrs	r2, r2, r3
 144 004e 3360     		str	r3, [r6]
 145 0050 6260     		str	r2, [r4, #4]
 146 0052 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 147              	.L24:
 148 0054 0120     		movs	r0, #1
 149 0056 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 150              	.L27:
 151              		.align	2
 152              	.L26:
 153 0058 00000000 		.word	.LANCHOR0
 154 005c 00415355 		.word	1431519488
 155              		.size	usart_init_rs232, .-usart_init_rs232
 156              		.section	.text.usart_init_hw_handshaking,"ax",%progbits
 157              		.align	1
 158              		.p2align 2,,3
 159              		.global	usart_init_hw_handshaking
 160              		.syntax unified
 161              		.thumb
 162              		.thumb_func
 163              		.fpu softvfp
 164              		.type	usart_init_hw_handshaking, %function
 165              	usart_init_hw_handshaking:
 166              		@ args = 0, pretend = 0, frame = 0
 167              		@ frame_needed = 0, uses_anonymous_args = 0
 168 0000 10B5     		push	{r4, lr}
 169 0002 0446     		mov	r4, r0
 170 0004 FFF7FEFF 		bl	usart_init_rs232
 171 0008 30B9     		cbnz	r0, .L30
ARM GAS  /tmp/ccY5qSEg.s 			page 4


 172 000a 6368     		ldr	r3, [r4, #4]
 173 000c 23F00F03 		bic	r3, r3, #15
 174 0010 43F00203 		orr	r3, r3, #2
 175 0014 6360     		str	r3, [r4, #4]
 176 0016 10BD     		pop	{r4, pc}
 177              	.L30:
 178 0018 0120     		movs	r0, #1
 179 001a 10BD     		pop	{r4, pc}
 180              		.size	usart_init_hw_handshaking, .-usart_init_hw_handshaking
 181              		.section	.text.usart_init_sync_master,"ax",%progbits
 182              		.align	1
 183              		.p2align 2,,3
 184              		.global	usart_init_sync_master
 185              		.syntax unified
 186              		.thumb
 187              		.thumb_func
 188              		.fpu softvfp
 189              		.type	usart_init_sync_master, %function
 190              	usart_init_sync_master:
 191              		@ args = 0, pretend = 0, frame = 0
 192              		@ frame_needed = 0, uses_anonymous_args = 0
 193 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 194 0002 0346     		mov	r3, r0
 195 0004 8827     		movs	r7, #136
 196 0006 0020     		movs	r0, #0
 197 0008 2426     		movs	r6, #36
 198 000a 4FF48075 		mov	r5, #256
 199 000e 4FF40024 		mov	r4, #524288
 200 0012 DFF858E0 		ldr	lr, .L38
 201 0016 C3F8E4E0 		str	lr, [r3, #228]
 202 001a 5860     		str	r0, [r3, #4]
 203 001c 5862     		str	r0, [r3, #36]
 204 001e 9862     		str	r0, [r3, #40]
 205 0020 1F60     		str	r7, [r3]
 206 0022 1E60     		str	r6, [r3]
 207 0024 1D60     		str	r5, [r3]
 208 0026 1C60     		str	r4, [r3]
 209 0028 49B1     		cbz	r1, .L35
 210 002a 0C68     		ldr	r4, [r1]
 211 002c 4FF6FE75 		movw	r5, #65534
 212 0030 02EB5402 		add	r2, r2, r4, lsr #1
 213 0034 B2FBF4F2 		udiv	r2, r2, r4
 214 0038 541E     		subs	r4, r2, #1
 215 003a AC42     		cmp	r4, r5
 216 003c 01D9     		bls	.L37
 217              	.L35:
 218 003e 0120     		movs	r0, #1
 219 0040 F0BD     		pop	{r4, r5, r6, r7, pc}
 220              	.L37:
 221 0042 1A62     		str	r2, [r3, #32]
 222 0044 5C68     		ldr	r4, [r3, #4]
 223 0046 8D68     		ldr	r5, [r1, #8]
 224 0048 4A68     		ldr	r2, [r1, #4]
 225 004a 24F49874 		bic	r4, r4, #304
 226 004e 44F48074 		orr	r4, r4, #256
 227 0052 2A43     		orrs	r2, r2, r5
 228 0054 0D69     		ldr	r5, [r1, #16]
ARM GAS  /tmp/ccY5qSEg.s 			page 5


 229 0056 42F48022 		orr	r2, r2, #262144
 230 005a 5C60     		str	r4, [r3, #4]
 231 005c CC68     		ldr	r4, [r1, #12]
 232 005e 2A43     		orrs	r2, r2, r5
 233 0060 5968     		ldr	r1, [r3, #4]
 234 0062 2243     		orrs	r2, r2, r4
 235 0064 0A43     		orrs	r2, r2, r1
 236 0066 5A60     		str	r2, [r3, #4]
 237 0068 F0BD     		pop	{r4, r5, r6, r7, pc}
 238              	.L39:
 239 006a 00BF     		.align	2
 240              	.L38:
 241 006c 00415355 		.word	1431519488
 242              		.size	usart_init_sync_master, .-usart_init_sync_master
 243              		.section	.text.usart_init_sync_slave,"ax",%progbits
 244              		.align	1
 245              		.p2align 2,,3
 246              		.global	usart_init_sync_slave
 247              		.syntax unified
 248              		.thumb
 249              		.thumb_func
 250              		.fpu softvfp
 251              		.type	usart_init_sync_slave, %function
 252              	usart_init_sync_slave:
 253              		@ args = 0, pretend = 0, frame = 0
 254              		@ frame_needed = 0, uses_anonymous_args = 0
 255              		@ link register save eliminated.
 256 0000 F0B4     		push	{r4, r5, r6, r7}
 257 0002 0346     		mov	r3, r0
 258 0004 4FF40022 		mov	r2, #524288
 259 0008 0020     		movs	r0, #0
 260 000a 8826     		movs	r6, #136
 261 000c 2425     		movs	r5, #36
 262 000e 4FF48074 		mov	r4, #256
 263 0012 0F4F     		ldr	r7, .L44
 264 0014 C3F8E470 		str	r7, [r3, #228]
 265 0018 5860     		str	r0, [r3, #4]
 266 001a 5862     		str	r0, [r3, #36]
 267 001c 9862     		str	r0, [r3, #40]
 268 001e 1E60     		str	r6, [r3]
 269 0020 1D60     		str	r5, [r3]
 270 0022 1C60     		str	r4, [r3]
 271 0024 1A60     		str	r2, [r3]
 272 0026 5A68     		ldr	r2, [r3, #4]
 273 0028 42F49872 		orr	r2, r2, #304
 274 002c 5A60     		str	r2, [r3, #4]
 275 002e 59B1     		cbz	r1, .L42
 276 0030 8C68     		ldr	r4, [r1, #8]
 277 0032 4A68     		ldr	r2, [r1, #4]
 278 0034 0D69     		ldr	r5, [r1, #16]
 279 0036 2243     		orrs	r2, r2, r4
 280 0038 CC68     		ldr	r4, [r1, #12]
 281 003a 2A43     		orrs	r2, r2, r5
 282 003c 5968     		ldr	r1, [r3, #4]
 283 003e 2243     		orrs	r2, r2, r4
 284 0040 0A43     		orrs	r2, r2, r1
 285 0042 5A60     		str	r2, [r3, #4]
ARM GAS  /tmp/ccY5qSEg.s 			page 6


 286 0044 F0BC     		pop	{r4, r5, r6, r7}
 287 0046 7047     		bx	lr
 288              	.L42:
 289 0048 0120     		movs	r0, #1
 290 004a F0BC     		pop	{r4, r5, r6, r7}
 291 004c 7047     		bx	lr
 292              	.L45:
 293 004e 00BF     		.align	2
 294              	.L44:
 295 0050 00415355 		.word	1431519488
 296              		.size	usart_init_sync_slave, .-usart_init_sync_slave
 297              		.section	.text.usart_init_rs485,"ax",%progbits
 298              		.align	1
 299              		.p2align 2,,3
 300              		.global	usart_init_rs485
 301              		.syntax unified
 302              		.thumb
 303              		.thumb_func
 304              		.fpu softvfp
 305              		.type	usart_init_rs485, %function
 306              	usart_init_rs485:
 307              		@ args = 0, pretend = 0, frame = 0
 308              		@ frame_needed = 0, uses_anonymous_args = 0
 309 0000 10B5     		push	{r4, lr}
 310 0002 0446     		mov	r4, r0
 311 0004 FFF7FEFF 		bl	usart_init_rs232
 312 0008 30B9     		cbnz	r0, .L48
 313 000a 6368     		ldr	r3, [r4, #4]
 314 000c 23F00F03 		bic	r3, r3, #15
 315 0010 43F00103 		orr	r3, r3, #1
 316 0014 6360     		str	r3, [r4, #4]
 317 0016 10BD     		pop	{r4, pc}
 318              	.L48:
 319 0018 0120     		movs	r0, #1
 320 001a 10BD     		pop	{r4, pc}
 321              		.size	usart_init_rs485, .-usart_init_rs485
 322              		.section	.text.usart_init_irda,"ax",%progbits
 323              		.align	1
 324              		.p2align 2,,3
 325              		.global	usart_init_irda
 326              		.syntax unified
 327              		.thumb
 328              		.thumb_func
 329              		.fpu softvfp
 330              		.type	usart_init_irda, %function
 331              	usart_init_irda:
 332              		@ args = 0, pretend = 0, frame = 0
 333              		@ frame_needed = 0, uses_anonymous_args = 0
 334 0000 38B5     		push	{r3, r4, r5, lr}
 335 0002 0446     		mov	r4, r0
 336 0004 0D46     		mov	r5, r1
 337 0006 FFF7FEFF 		bl	usart_init_rs232
 338 000a 40B9     		cbnz	r0, .L52
 339 000c 6B69     		ldr	r3, [r5, #20]
 340 000e E364     		str	r3, [r4, #76]
 341 0010 6368     		ldr	r3, [r4, #4]
 342 0012 23F00F03 		bic	r3, r3, #15
ARM GAS  /tmp/ccY5qSEg.s 			page 7


 343 0016 43F00803 		orr	r3, r3, #8
 344 001a 6360     		str	r3, [r4, #4]
 345 001c 38BD     		pop	{r3, r4, r5, pc}
 346              	.L52:
 347 001e 0120     		movs	r0, #1
 348 0020 38BD     		pop	{r3, r4, r5, pc}
 349              		.size	usart_init_irda, .-usart_init_irda
 350 0022 00BF     		.section	.text.usart_init_iso7816,"ax",%progbits
 351              		.align	1
 352              		.p2align 2,,3
 353              		.global	usart_init_iso7816
 354              		.syntax unified
 355              		.thumb
 356              		.thumb_func
 357              		.fpu softvfp
 358              		.type	usart_init_iso7816, %function
 359              	usart_init_iso7816:
 360              		@ args = 0, pretend = 0, frame = 0
 361              		@ frame_needed = 0, uses_anonymous_args = 0
 362 0000 0346     		mov	r3, r0
 363 0002 F0B5     		push	{r4, r5, r6, r7, lr}
 364 0004 0020     		movs	r0, #0
 365 0006 4FF0880E 		mov	lr, #136
 366 000a 2427     		movs	r7, #36
 367 000c 4FF48076 		mov	r6, #256
 368 0010 4FF40024 		mov	r4, #524288
 369 0014 2B4D     		ldr	r5, .L73
 370 0016 C3F8E450 		str	r5, [r3, #228]
 371 001a 2B4D     		ldr	r5, .L73+4
 372 001c 5860     		str	r0, [r3, #4]
 373 001e 2860     		str	r0, [r5]
 374 0020 5862     		str	r0, [r3, #36]
 375 0022 9862     		str	r0, [r3, #40]
 376 0024 C3F800E0 		str	lr, [r3]
 377 0028 1F60     		str	r7, [r3]
 378 002a 1E60     		str	r6, [r3]
 379 002c 1C60     		str	r4, [r3]
 380 002e 19B1     		cbz	r1, .L57
 381 0030 8868     		ldr	r0, [r1, #8]
 382 0032 30F40074 		bics	r4, r0, #512
 383 0036 01D0     		beq	.L72
 384              	.L57:
 385 0038 0120     		movs	r0, #1
 386 003a F0BD     		pop	{r4, r5, r6, r7, pc}
 387              	.L72:
 388 003c CC69     		ldr	r4, [r1, #28]
 389 003e 002C     		cmp	r4, #0
 390 0040 34D1     		bne	.L58
 391 0042 4C69     		ldr	r4, [r1, #20]
 392 0044 8E69     		ldr	r6, [r1, #24]
 393 0046 2406     		lsls	r4, r4, #24
 394 0048 44F40057 		orr	r7, r4, #8192
 395 004c 47F00407 		orr	r7, r7, #4
 396 0050 2F60     		str	r7, [r5]
 397 0052 26B1     		cbz	r6, .L59
 398 0054 44F49034 		orr	r4, r4, #73728
 399 0058 44F00404 		orr	r4, r4, #4
ARM GAS  /tmp/ccY5qSEg.s 			page 8


 400 005c 2C60     		str	r4, [r5]
 401              	.L59:
 402 005e 0C68     		ldr	r4, [r1]
 403 0060 4FF6FE76 		movw	r6, #65534
 404 0064 02EB5402 		add	r2, r2, r4, lsr #1
 405 0068 B2FBF4F2 		udiv	r2, r2, r4
 406 006c 541E     		subs	r4, r2, #1
 407 006e B442     		cmp	r4, r6
 408 0070 E2D8     		bhi	.L57
 409 0072 5E68     		ldr	r6, [r3, #4]
 410 0074 2C68     		ldr	r4, [r5]
 411 0076 26F44026 		bic	r6, r6, #786432
 412 007a 4F68     		ldr	r7, [r1, #4]
 413 007c 0443     		orrs	r4, r4, r0
 414 007e 26F49876 		bic	r6, r6, #304
 415 0082 C868     		ldr	r0, [r1, #12]
 416 0084 46F48026 		orr	r6, r6, #262144
 417 0088 5E60     		str	r6, [r3, #4]
 418 008a 2C60     		str	r4, [r5]
 419 008c 1A62     		str	r2, [r3, #32]
 420 008e 1F64     		str	r7, [r3, #64]
 421 0090 10B1     		cbz	r0, .L60
 422 0092 44F48014 		orr	r4, r4, #1048576
 423 0096 2C60     		str	r4, [r5]
 424              	.L60:
 425 0098 0A69     		ldr	r2, [r1, #16]
 426 009a 12B1     		cbz	r2, .L61
 427 009c 44F40014 		orr	r4, r4, #2097152
 428 00a0 2C60     		str	r4, [r5]
 429              	.L61:
 430 00a2 5A68     		ldr	r2, [r3, #4]
 431 00a4 0020     		movs	r0, #0
 432 00a6 1443     		orrs	r4, r4, r2
 433 00a8 5C60     		str	r4, [r3, #4]
 434 00aa F0BD     		pop	{r4, r5, r6, r7, pc}
 435              	.L58:
 436 00ac 012C     		cmp	r4, #1
 437 00ae C3D1     		bne	.L57
 438 00b0 8C69     		ldr	r4, [r1, #24]
 439 00b2 002C     		cmp	r4, #0
 440 00b4 C0D1     		bne	.L57
 441 00b6 4C69     		ldr	r4, [r1, #20]
 442 00b8 002C     		cmp	r4, #0
 443 00ba BDD1     		bne	.L57
 444 00bc 0624     		movs	r4, #6
 445 00be 2C60     		str	r4, [r5]
 446 00c0 CDE7     		b	.L59
 447              	.L74:
 448 00c2 00BF     		.align	2
 449              	.L73:
 450 00c4 00415355 		.word	1431519488
 451 00c8 00000000 		.word	.LANCHOR1
 452              		.size	usart_init_iso7816, .-usart_init_iso7816
 453              		.section	.text.usart_reset_iterations,"ax",%progbits
 454              		.align	1
 455              		.p2align 2,,3
 456              		.global	usart_reset_iterations
ARM GAS  /tmp/ccY5qSEg.s 			page 9


 457              		.syntax unified
 458              		.thumb
 459              		.thumb_func
 460              		.fpu softvfp
 461              		.type	usart_reset_iterations, %function
 462              	usart_reset_iterations:
 463              		@ args = 0, pretend = 0, frame = 0
 464              		@ frame_needed = 0, uses_anonymous_args = 0
 465              		@ link register save eliminated.
 466 0000 4FF40053 		mov	r3, #8192
 467 0004 0360     		str	r3, [r0]
 468 0006 7047     		bx	lr
 469              		.size	usart_reset_iterations, .-usart_reset_iterations
 470              		.section	.text.usart_reset_nack,"ax",%progbits
 471              		.align	1
 472              		.p2align 2,,3
 473              		.global	usart_reset_nack
 474              		.syntax unified
 475              		.thumb
 476              		.thumb_func
 477              		.fpu softvfp
 478              		.type	usart_reset_nack, %function
 479              	usart_reset_nack:
 480              		@ args = 0, pretend = 0, frame = 0
 481              		@ frame_needed = 0, uses_anonymous_args = 0
 482              		@ link register save eliminated.
 483 0000 4FF48043 		mov	r3, #16384
 484 0004 0360     		str	r3, [r0]
 485 0006 7047     		bx	lr
 486              		.size	usart_reset_nack, .-usart_reset_nack
 487              		.section	.text.usart_is_rx_buf_full,"ax",%progbits
 488              		.align	1
 489              		.p2align 2,,3
 490              		.global	usart_is_rx_buf_full
 491              		.syntax unified
 492              		.thumb
 493              		.thumb_func
 494              		.fpu softvfp
 495              		.type	usart_is_rx_buf_full, %function
 496              	usart_is_rx_buf_full:
 497              		@ args = 0, pretend = 0, frame = 0
 498              		@ frame_needed = 0, uses_anonymous_args = 0
 499              		@ link register save eliminated.
 500 0000 4069     		ldr	r0, [r0, #20]
 501 0002 C0F30030 		ubfx	r0, r0, #12, #1
 502 0006 7047     		bx	lr
 503              		.size	usart_is_rx_buf_full, .-usart_is_rx_buf_full
 504              		.section	.text.usart_is_rx_buf_end,"ax",%progbits
 505              		.align	1
 506              		.p2align 2,,3
 507              		.global	usart_is_rx_buf_end
 508              		.syntax unified
 509              		.thumb
 510              		.thumb_func
 511              		.fpu softvfp
 512              		.type	usart_is_rx_buf_end, %function
 513              	usart_is_rx_buf_end:
ARM GAS  /tmp/ccY5qSEg.s 			page 10


 514              		@ args = 0, pretend = 0, frame = 0
 515              		@ frame_needed = 0, uses_anonymous_args = 0
 516              		@ link register save eliminated.
 517 0000 4069     		ldr	r0, [r0, #20]
 518 0002 C0F3C000 		ubfx	r0, r0, #3, #1
 519 0006 7047     		bx	lr
 520              		.size	usart_is_rx_buf_end, .-usart_is_rx_buf_end
 521              		.section	.text.usart_is_tx_buf_end,"ax",%progbits
 522              		.align	1
 523              		.p2align 2,,3
 524              		.global	usart_is_tx_buf_end
 525              		.syntax unified
 526              		.thumb
 527              		.thumb_func
 528              		.fpu softvfp
 529              		.type	usart_is_tx_buf_end, %function
 530              	usart_is_tx_buf_end:
 531              		@ args = 0, pretend = 0, frame = 0
 532              		@ frame_needed = 0, uses_anonymous_args = 0
 533              		@ link register save eliminated.
 534 0000 4069     		ldr	r0, [r0, #20]
 535 0002 C0F30010 		ubfx	r0, r0, #4, #1
 536 0006 7047     		bx	lr
 537              		.size	usart_is_tx_buf_end, .-usart_is_tx_buf_end
 538              		.section	.text.usart_is_tx_buf_empty,"ax",%progbits
 539              		.align	1
 540              		.p2align 2,,3
 541              		.global	usart_is_tx_buf_empty
 542              		.syntax unified
 543              		.thumb
 544              		.thumb_func
 545              		.fpu softvfp
 546              		.type	usart_is_tx_buf_empty, %function
 547              	usart_is_tx_buf_empty:
 548              		@ args = 0, pretend = 0, frame = 0
 549              		@ frame_needed = 0, uses_anonymous_args = 0
 550              		@ link register save eliminated.
 551 0000 4069     		ldr	r0, [r0, #20]
 552 0002 C0F3C020 		ubfx	r0, r0, #11, #1
 553 0006 7047     		bx	lr
 554              		.size	usart_is_tx_buf_empty, .-usart_is_tx_buf_empty
 555              		.section	.text.usart_get_error_number,"ax",%progbits
 556              		.align	1
 557              		.p2align 2,,3
 558              		.global	usart_get_error_number
 559              		.syntax unified
 560              		.thumb
 561              		.thumb_func
 562              		.fpu softvfp
 563              		.type	usart_get_error_number, %function
 564              	usart_get_error_number:
 565              		@ args = 0, pretend = 0, frame = 0
 566              		@ frame_needed = 0, uses_anonymous_args = 0
 567              		@ link register save eliminated.
 568 0000 406C     		ldr	r0, [r0, #68]
 569 0002 C0B2     		uxtb	r0, r0
 570 0004 7047     		bx	lr
ARM GAS  /tmp/ccY5qSEg.s 			page 11


 571              		.size	usart_get_error_number, .-usart_get_error_number
 572 0006 00BF     		.section	.text.usart_init_spi_master,"ax",%progbits
 573              		.align	1
 574              		.p2align 2,,3
 575              		.global	usart_init_spi_master
 576              		.syntax unified
 577              		.thumb
 578              		.thumb_func
 579              		.fpu softvfp
 580              		.type	usart_init_spi_master, %function
 581              	usart_init_spi_master:
 582              		@ args = 0, pretend = 0, frame = 0
 583              		@ frame_needed = 0, uses_anonymous_args = 0
 584 0000 0346     		mov	r3, r0
 585 0002 F0B5     		push	{r4, r5, r6, r7, lr}
 586 0004 0020     		movs	r0, #0
 587 0006 4FF0880E 		mov	lr, #136
 588 000a 2427     		movs	r7, #36
 589 000c 4FF48076 		mov	r6, #256
 590 0010 4FF40025 		mov	r5, #524288
 591 0014 224C     		ldr	r4, .L93
 592 0016 C3F8E440 		str	r4, [r3, #228]
 593 001a 224C     		ldr	r4, .L93+4
 594 001c 5860     		str	r0, [r3, #4]
 595 001e 2060     		str	r0, [r4]
 596 0020 5862     		str	r0, [r3, #36]
 597 0022 9862     		str	r0, [r3, #40]
 598 0024 C3F800E0 		str	lr, [r3]
 599 0028 1F60     		str	r7, [r3]
 600 002a 1E60     		str	r6, [r3]
 601 002c 1D60     		str	r5, [r3]
 602 002e 39B3     		cbz	r1, .L91
 603 0030 8D68     		ldr	r5, [r1, #8]
 604 0032 032D     		cmp	r5, #3
 605 0034 24D8     		bhi	.L91
 606 0036 0868     		ldr	r0, [r1]
 607 0038 4FF6FB76 		movw	r6, #65531
 608 003c 02EB5002 		add	r2, r2, r0, lsr #1
 609 0040 B2FBF0F2 		udiv	r2, r2, r0
 610 0044 101F     		subs	r0, r2, #4
 611 0046 B042     		cmp	r0, r6
 612 0048 1AD8     		bhi	.L91
 613 004a 4868     		ldr	r0, [r1, #4]
 614 004c C968     		ldr	r1, [r1, #12]
 615 004e 022D     		cmp	r5, #2
 616 0050 40EA0100 		orr	r0, r0, r1
 617 0054 1A62     		str	r2, [r3, #32]
 618 0056 1449     		ldr	r1, .L93+8
 619 0058 1CD0     		beq	.L85
 620 005a 032D     		cmp	r5, #3
 621 005c 12D0     		beq	.L86
 622 005e 20F48032 		bic	r2, r0, #65536
 623 0062 012D     		cmp	r5, #1
 624 0064 15BF     		itete	ne
 625 0066 42F48022 		orrne	r2, r2, #262144
 626 006a 22F48072 		biceq	r2, r2, #256
 627 006e 42F48772 		orrne	r2, r2, #270
ARM GAS  /tmp/ccY5qSEg.s 			page 12


 628 0072 0A43     		orreq	r2, r2, r1
 629 0074 2260     		str	r2, [r4]
 630              	.L88:
 631 0076 5968     		ldr	r1, [r3, #4]
 632 0078 0020     		movs	r0, #0
 633 007a 0A43     		orrs	r2, r2, r1
 634 007c 5A60     		str	r2, [r3, #4]
 635 007e F0BD     		pop	{r4, r5, r6, r7, pc}
 636              	.L91:
 637 0080 0120     		movs	r0, #1
 638 0082 F0BD     		pop	{r4, r5, r6, r7, pc}
 639              	.L86:
 640 0084 20F48072 		bic	r2, r0, #256
 641 0088 42F4A022 		orr	r2, r2, #327680
 642 008c 42F00E02 		orr	r2, r2, #14
 643 0090 2260     		str	r2, [r4]
 644 0092 F0E7     		b	.L88
 645              	.L85:
 646 0094 40F4A022 		orr	r2, r0, #327680
 647 0098 42F48772 		orr	r2, r2, #270
 648 009c 2260     		str	r2, [r4]
 649 009e EAE7     		b	.L88
 650              	.L94:
 651              		.align	2
 652              	.L93:
 653 00a0 00415355 		.word	1431519488
 654 00a4 00000000 		.word	.LANCHOR2
 655 00a8 0E000400 		.word	262158
 656              		.size	usart_init_spi_master, .-usart_init_spi_master
 657              		.section	.text.usart_init_spi_slave,"ax",%progbits
 658              		.align	1
 659              		.p2align 2,,3
 660              		.global	usart_init_spi_slave
 661              		.syntax unified
 662              		.thumb
 663              		.thumb_func
 664              		.fpu softvfp
 665              		.type	usart_init_spi_slave, %function
 666              	usart_init_spi_slave:
 667              		@ args = 0, pretend = 0, frame = 0
 668              		@ frame_needed = 0, uses_anonymous_args = 0
 669              		@ link register save eliminated.
 670 0000 F0B4     		push	{r4, r5, r6, r7}
 671 0002 0346     		mov	r3, r0
 672 0004 0022     		movs	r2, #0
 673 0006 4FF48074 		mov	r4, #256
 674 000a 4FF40020 		mov	r0, #524288
 675 000e 8826     		movs	r6, #136
 676 0010 2425     		movs	r5, #36
 677 0012 214F     		ldr	r7, .L105
 678 0014 C3F8E470 		str	r7, [r3, #228]
 679 0018 5A60     		str	r2, [r3, #4]
 680 001a 5A62     		str	r2, [r3, #36]
 681 001c 9A62     		str	r2, [r3, #40]
 682 001e 1E60     		str	r6, [r3]
 683 0020 1D60     		str	r5, [r3]
 684 0022 1C60     		str	r4, [r3]
ARM GAS  /tmp/ccY5qSEg.s 			page 13


 685 0024 1860     		str	r0, [r3]
 686 0026 5868     		ldr	r0, [r3, #4]
 687 0028 1C4C     		ldr	r4, .L105+4
 688 002a 20F03000 		bic	r0, r0, #48
 689 002e 5860     		str	r0, [r3, #4]
 690 0030 5868     		ldr	r0, [r3, #4]
 691 0032 2260     		str	r2, [r4]
 692 0034 40F03000 		orr	r0, r0, #48
 693 0038 5860     		str	r0, [r3, #4]
 694 003a E9B1     		cbz	r1, .L103
 695 003c 8868     		ldr	r0, [r1, #8]
 696 003e 0328     		cmp	r0, #3
 697 0040 1AD8     		bhi	.L103
 698 0042 4A68     		ldr	r2, [r1, #4]
 699 0044 C968     		ldr	r1, [r1, #12]
 700 0046 0228     		cmp	r0, #2
 701 0048 41EA0201 		orr	r1, r1, r2
 702 004c 17D0     		beq	.L98
 703 004e 0328     		cmp	r0, #3
 704 0050 19D0     		beq	.L99
 705 0052 21F48032 		bic	r2, r1, #65536
 706 0056 0128     		cmp	r0, #1
 707 0058 15BF     		itete	ne
 708 005a 42F48772 		orrne	r2, r2, #270
 709 005e 22F48072 		biceq	r2, r2, #256
 710 0062 42F00102 		orrne	r2, r2, #1
 711 0066 42F00F02 		orreq	r2, r2, #15
 712 006a 2260     		str	r2, [r4]
 713              	.L101:
 714 006c 5968     		ldr	r1, [r3, #4]
 715 006e 0020     		movs	r0, #0
 716 0070 F0BC     		pop	{r4, r5, r6, r7}
 717 0072 0A43     		orrs	r2, r2, r1
 718 0074 5A60     		str	r2, [r3, #4]
 719 0076 7047     		bx	lr
 720              	.L103:
 721 0078 0120     		movs	r0, #1
 722 007a F0BC     		pop	{r4, r5, r6, r7}
 723 007c 7047     		bx	lr
 724              	.L98:
 725 007e 084A     		ldr	r2, .L105+8
 726 0080 0A43     		orrs	r2, r2, r1
 727 0082 2260     		str	r2, [r4]
 728 0084 F2E7     		b	.L101
 729              	.L99:
 730 0086 21F48072 		bic	r2, r1, #256
 731 008a 42F48032 		orr	r2, r2, #65536
 732 008e 42F00F02 		orr	r2, r2, #15
 733 0092 2260     		str	r2, [r4]
 734 0094 EAE7     		b	.L101
 735              	.L106:
 736 0096 00BF     		.align	2
 737              	.L105:
 738 0098 00415355 		.word	1431519488
 739 009c 00000000 		.word	.LANCHOR3
 740 00a0 0F010100 		.word	65807
 741              		.size	usart_init_spi_slave, .-usart_init_spi_slave
ARM GAS  /tmp/ccY5qSEg.s 			page 14


 742              		.section	.text.usart_init_lin_master,"ax",%progbits
 743              		.align	1
 744              		.p2align 2,,3
 745              		.global	usart_init_lin_master
 746              		.syntax unified
 747              		.thumb
 748              		.thumb_func
 749              		.fpu softvfp
 750              		.type	usart_init_lin_master, %function
 751              	usart_init_lin_master:
 752              		@ args = 0, pretend = 0, frame = 0
 753              		@ frame_needed = 0, uses_anonymous_args = 0
 754 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 755 0002 0023     		movs	r3, #0
 756 0004 4FF0880E 		mov	lr, #136
 757 0008 2427     		movs	r7, #36
 758 000a 4FF48076 		mov	r6, #256
 759 000e 4FF40025 		mov	r5, #524288
 760 0012 DFF838C0 		ldr	ip, .L111
 761 0016 0446     		mov	r4, r0
 762 0018 C0F8E4C0 		str	ip, [r0, #228]
 763 001c 4360     		str	r3, [r0, #4]
 764 001e 4362     		str	r3, [r0, #36]
 765 0020 8362     		str	r3, [r0, #40]
 766 0022 C0F800E0 		str	lr, [r0]
 767 0026 0760     		str	r7, [r0]
 768 0028 0660     		str	r6, [r0]
 769 002a 0560     		str	r5, [r0]
 770 002c FFF7FEFF 		bl	usart_set_async_baudrate
 771 0030 50B9     		cbnz	r0, .L109
 772 0032 1021     		movs	r1, #16
 773 0034 4022     		movs	r2, #64
 774 0036 6368     		ldr	r3, [r4, #4]
 775 0038 23F00F03 		bic	r3, r3, #15
 776 003c 43F00A03 		orr	r3, r3, #10
 777 0040 6360     		str	r3, [r4, #4]
 778 0042 2160     		str	r1, [r4]
 779 0044 2260     		str	r2, [r4]
 780 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 781              	.L109:
 782 0048 0120     		movs	r0, #1
 783 004a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 784              	.L112:
 785              		.align	2
 786              	.L111:
 787 004c 00415355 		.word	1431519488
 788              		.size	usart_init_lin_master, .-usart_init_lin_master
 789              		.section	.text.usart_init_lin_slave,"ax",%progbits
 790              		.align	1
 791              		.p2align 2,,3
 792              		.global	usart_init_lin_slave
 793              		.syntax unified
 794              		.thumb
 795              		.thumb_func
 796              		.fpu softvfp
 797              		.type	usart_init_lin_slave, %function
 798              	usart_init_lin_slave:
ARM GAS  /tmp/ccY5qSEg.s 			page 15


 799              		@ args = 0, pretend = 0, frame = 0
 800              		@ frame_needed = 0, uses_anonymous_args = 0
 801 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 802 0004 4FF0240C 		mov	ip, #36
 803 0008 0024     		movs	r4, #0
 804 000a 4FF4807E 		mov	lr, #256
 805 000e 4FF08808 		mov	r8, #136
 806 0012 4FF40027 		mov	r7, #524288
 807 0016 1026     		movs	r6, #16
 808 0018 4025     		movs	r5, #64
 809 001a DFF83890 		ldr	r9, .L115
 810 001e C0F8E490 		str	r9, [r0, #228]
 811 0022 4460     		str	r4, [r0, #4]
 812 0024 4462     		str	r4, [r0, #36]
 813 0026 8462     		str	r4, [r0, #40]
 814 0028 C0F80080 		str	r8, [r0]
 815 002c C0F800C0 		str	ip, [r0]
 816 0030 C0F800E0 		str	lr, [r0]
 817 0034 0760     		str	r7, [r0]
 818 0036 0660     		str	r6, [r0]
 819 0038 0560     		str	r5, [r0]
 820 003a 4468     		ldr	r4, [r0, #4]
 821 003c 24F00F04 		bic	r4, r4, #15
 822 0040 44F00B04 		orr	r4, r4, #11
 823 0044 4460     		str	r4, [r0, #4]
 824 0046 FFF7FEFF 		bl	usart_set_async_baudrate
 825 004a 0030     		adds	r0, r0, #0
 826 004c 18BF     		it	ne
 827 004e 0120     		movne	r0, #1
 828 0050 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 829              	.L116:
 830              		.align	2
 831              	.L115:
 832 0054 00415355 		.word	1431519488
 833              		.size	usart_init_lin_slave, .-usart_init_lin_slave
 834              		.section	.text.usart_lin_abort_tx,"ax",%progbits
 835              		.align	1
 836              		.p2align 2,,3
 837              		.global	usart_lin_abort_tx
 838              		.syntax unified
 839              		.thumb
 840              		.thumb_func
 841              		.fpu softvfp
 842              		.type	usart_lin_abort_tx, %function
 843              	usart_lin_abort_tx:
 844              		@ args = 0, pretend = 0, frame = 0
 845              		@ frame_needed = 0, uses_anonymous_args = 0
 846              		@ link register save eliminated.
 847 0000 4FF48013 		mov	r3, #1048576
 848 0004 0360     		str	r3, [r0]
 849 0006 7047     		bx	lr
 850              		.size	usart_lin_abort_tx, .-usart_lin_abort_tx
 851              		.section	.text.usart_lin_send_wakeup_signal,"ax",%progbits
 852              		.align	1
 853              		.p2align 2,,3
 854              		.global	usart_lin_send_wakeup_signal
 855              		.syntax unified
ARM GAS  /tmp/ccY5qSEg.s 			page 16


 856              		.thumb
 857              		.thumb_func
 858              		.fpu softvfp
 859              		.type	usart_lin_send_wakeup_signal, %function
 860              	usart_lin_send_wakeup_signal:
 861              		@ args = 0, pretend = 0, frame = 0
 862              		@ frame_needed = 0, uses_anonymous_args = 0
 863              		@ link register save eliminated.
 864 0000 4FF40013 		mov	r3, #2097152
 865 0004 0360     		str	r3, [r0]
 866 0006 7047     		bx	lr
 867              		.size	usart_lin_send_wakeup_signal, .-usart_lin_send_wakeup_signal
 868              		.section	.text.usart_lin_set_node_action,"ax",%progbits
 869              		.align	1
 870              		.p2align 2,,3
 871              		.global	usart_lin_set_node_action
 872              		.syntax unified
 873              		.thumb
 874              		.thumb_func
 875              		.fpu softvfp
 876              		.type	usart_lin_set_node_action, %function
 877              	usart_lin_set_node_action:
 878              		@ args = 0, pretend = 0, frame = 0
 879              		@ frame_needed = 0, uses_anonymous_args = 0
 880              		@ link register save eliminated.
 881 0000 436D     		ldr	r3, [r0, #84]
 882 0002 23F00303 		bic	r3, r3, #3
 883 0006 1943     		orrs	r1, r1, r3
 884 0008 4165     		str	r1, [r0, #84]
 885 000a 7047     		bx	lr
 886              		.size	usart_lin_set_node_action, .-usart_lin_set_node_action
 887              		.section	.text.usart_lin_disable_parity,"ax",%progbits
 888              		.align	1
 889              		.p2align 2,,3
 890              		.global	usart_lin_disable_parity
 891              		.syntax unified
 892              		.thumb
 893              		.thumb_func
 894              		.fpu softvfp
 895              		.type	usart_lin_disable_parity, %function
 896              	usart_lin_disable_parity:
 897              		@ args = 0, pretend = 0, frame = 0
 898              		@ frame_needed = 0, uses_anonymous_args = 0
 899              		@ link register save eliminated.
 900 0000 436D     		ldr	r3, [r0, #84]
 901 0002 43F00403 		orr	r3, r3, #4
 902 0006 4365     		str	r3, [r0, #84]
 903 0008 7047     		bx	lr
 904              		.size	usart_lin_disable_parity, .-usart_lin_disable_parity
 905 000a 00BF     		.section	.text.usart_lin_enable_parity,"ax",%progbits
 906              		.align	1
 907              		.p2align 2,,3
 908              		.global	usart_lin_enable_parity
 909              		.syntax unified
 910              		.thumb
 911              		.thumb_func
 912              		.fpu softvfp
ARM GAS  /tmp/ccY5qSEg.s 			page 17


 913              		.type	usart_lin_enable_parity, %function
 914              	usart_lin_enable_parity:
 915              		@ args = 0, pretend = 0, frame = 0
 916              		@ frame_needed = 0, uses_anonymous_args = 0
 917              		@ link register save eliminated.
 918 0000 436D     		ldr	r3, [r0, #84]
 919 0002 23F00403 		bic	r3, r3, #4
 920 0006 4365     		str	r3, [r0, #84]
 921 0008 7047     		bx	lr
 922              		.size	usart_lin_enable_parity, .-usart_lin_enable_parity
 923 000a 00BF     		.section	.text.usart_lin_disable_checksum,"ax",%progbits
 924              		.align	1
 925              		.p2align 2,,3
 926              		.global	usart_lin_disable_checksum
 927              		.syntax unified
 928              		.thumb
 929              		.thumb_func
 930              		.fpu softvfp
 931              		.type	usart_lin_disable_checksum, %function
 932              	usart_lin_disable_checksum:
 933              		@ args = 0, pretend = 0, frame = 0
 934              		@ frame_needed = 0, uses_anonymous_args = 0
 935              		@ link register save eliminated.
 936 0000 436D     		ldr	r3, [r0, #84]
 937 0002 43F00803 		orr	r3, r3, #8
 938 0006 4365     		str	r3, [r0, #84]
 939 0008 7047     		bx	lr
 940              		.size	usart_lin_disable_checksum, .-usart_lin_disable_checksum
 941 000a 00BF     		.section	.text.usart_lin_enable_checksum,"ax",%progbits
 942              		.align	1
 943              		.p2align 2,,3
 944              		.global	usart_lin_enable_checksum
 945              		.syntax unified
 946              		.thumb
 947              		.thumb_func
 948              		.fpu softvfp
 949              		.type	usart_lin_enable_checksum, %function
 950              	usart_lin_enable_checksum:
 951              		@ args = 0, pretend = 0, frame = 0
 952              		@ frame_needed = 0, uses_anonymous_args = 0
 953              		@ link register save eliminated.
 954 0000 436D     		ldr	r3, [r0, #84]
 955 0002 23F00803 		bic	r3, r3, #8
 956 0006 4365     		str	r3, [r0, #84]
 957 0008 7047     		bx	lr
 958              		.size	usart_lin_enable_checksum, .-usart_lin_enable_checksum
 959 000a 00BF     		.section	.text.usart_lin_set_checksum_type,"ax",%progbits
 960              		.align	1
 961              		.p2align 2,,3
 962              		.global	usart_lin_set_checksum_type
 963              		.syntax unified
 964              		.thumb
 965              		.thumb_func
 966              		.fpu softvfp
 967              		.type	usart_lin_set_checksum_type, %function
 968              	usart_lin_set_checksum_type:
 969              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccY5qSEg.s 			page 18


 970              		@ frame_needed = 0, uses_anonymous_args = 0
 971              		@ link register save eliminated.
 972 0000 436D     		ldr	r3, [r0, #84]
 973 0002 23F01003 		bic	r3, r3, #16
 974 0006 43EA0111 		orr	r1, r3, r1, lsl #4
 975 000a 4165     		str	r1, [r0, #84]
 976 000c 7047     		bx	lr
 977              		.size	usart_lin_set_checksum_type, .-usart_lin_set_checksum_type
 978 000e 00BF     		.section	.text.usart_lin_set_data_len_mode,"ax",%progbits
 979              		.align	1
 980              		.p2align 2,,3
 981              		.global	usart_lin_set_data_len_mode
 982              		.syntax unified
 983              		.thumb
 984              		.thumb_func
 985              		.fpu softvfp
 986              		.type	usart_lin_set_data_len_mode, %function
 987              	usart_lin_set_data_len_mode:
 988              		@ args = 0, pretend = 0, frame = 0
 989              		@ frame_needed = 0, uses_anonymous_args = 0
 990              		@ link register save eliminated.
 991 0000 436D     		ldr	r3, [r0, #84]
 992 0002 23F02003 		bic	r3, r3, #32
 993 0006 43EA4111 		orr	r1, r3, r1, lsl #5
 994 000a 4165     		str	r1, [r0, #84]
 995 000c 7047     		bx	lr
 996              		.size	usart_lin_set_data_len_mode, .-usart_lin_set_data_len_mode
 997 000e 00BF     		.section	.text.usart_lin_disable_frame_slot,"ax",%progbits
 998              		.align	1
 999              		.p2align 2,,3
 1000              		.global	usart_lin_disable_frame_slot
 1001              		.syntax unified
 1002              		.thumb
 1003              		.thumb_func
 1004              		.fpu softvfp
 1005              		.type	usart_lin_disable_frame_slot, %function
 1006              	usart_lin_disable_frame_slot:
 1007              		@ args = 0, pretend = 0, frame = 0
 1008              		@ frame_needed = 0, uses_anonymous_args = 0
 1009              		@ link register save eliminated.
 1010 0000 436D     		ldr	r3, [r0, #84]
 1011 0002 43F04003 		orr	r3, r3, #64
 1012 0006 4365     		str	r3, [r0, #84]
 1013 0008 7047     		bx	lr
 1014              		.size	usart_lin_disable_frame_slot, .-usart_lin_disable_frame_slot
 1015 000a 00BF     		.section	.text.usart_lin_enable_frame_slot,"ax",%progbits
 1016              		.align	1
 1017              		.p2align 2,,3
 1018              		.global	usart_lin_enable_frame_slot
 1019              		.syntax unified
 1020              		.thumb
 1021              		.thumb_func
 1022              		.fpu softvfp
 1023              		.type	usart_lin_enable_frame_slot, %function
 1024              	usart_lin_enable_frame_slot:
 1025              		@ args = 0, pretend = 0, frame = 0
 1026              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccY5qSEg.s 			page 19


 1027              		@ link register save eliminated.
 1028 0000 436D     		ldr	r3, [r0, #84]
 1029 0002 23F04003 		bic	r3, r3, #64
 1030 0006 4365     		str	r3, [r0, #84]
 1031 0008 7047     		bx	lr
 1032              		.size	usart_lin_enable_frame_slot, .-usart_lin_enable_frame_slot
 1033 000a 00BF     		.section	.text.usart_lin_set_wakeup_signal_type,"ax",%progbits
 1034              		.align	1
 1035              		.p2align 2,,3
 1036              		.global	usart_lin_set_wakeup_signal_type
 1037              		.syntax unified
 1038              		.thumb
 1039              		.thumb_func
 1040              		.fpu softvfp
 1041              		.type	usart_lin_set_wakeup_signal_type, %function
 1042              	usart_lin_set_wakeup_signal_type:
 1043              		@ args = 0, pretend = 0, frame = 0
 1044              		@ frame_needed = 0, uses_anonymous_args = 0
 1045              		@ link register save eliminated.
 1046 0000 436D     		ldr	r3, [r0, #84]
 1047 0002 23F08003 		bic	r3, r3, #128
 1048 0006 43EAC111 		orr	r1, r3, r1, lsl #7
 1049 000a 4165     		str	r1, [r0, #84]
 1050 000c 7047     		bx	lr
 1051              		.size	usart_lin_set_wakeup_signal_type, .-usart_lin_set_wakeup_signal_type
 1052 000e 00BF     		.section	.text.usart_lin_set_response_data_len,"ax",%progbits
 1053              		.align	1
 1054              		.p2align 2,,3
 1055              		.global	usart_lin_set_response_data_len
 1056              		.syntax unified
 1057              		.thumb
 1058              		.thumb_func
 1059              		.fpu softvfp
 1060              		.type	usart_lin_set_response_data_len, %function
 1061              	usart_lin_set_response_data_len:
 1062              		@ args = 0, pretend = 0, frame = 0
 1063              		@ frame_needed = 0, uses_anonymous_args = 0
 1064              		@ link register save eliminated.
 1065 0000 436D     		ldr	r3, [r0, #84]
 1066 0002 0139     		subs	r1, r1, #1
 1067 0004 23F47F43 		bic	r3, r3, #65280
 1068 0008 43EA0123 		orr	r3, r3, r1, lsl #8
 1069 000c 4365     		str	r3, [r0, #84]
 1070 000e 7047     		bx	lr
 1071              		.size	usart_lin_set_response_data_len, .-usart_lin_set_response_data_len
 1072              		.section	.text.usart_lin_disable_pdc_mode,"ax",%progbits
 1073              		.align	1
 1074              		.p2align 2,,3
 1075              		.global	usart_lin_disable_pdc_mode
 1076              		.syntax unified
 1077              		.thumb
 1078              		.thumb_func
 1079              		.fpu softvfp
 1080              		.type	usart_lin_disable_pdc_mode, %function
 1081              	usart_lin_disable_pdc_mode:
 1082              		@ args = 0, pretend = 0, frame = 0
 1083              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccY5qSEg.s 			page 20


 1084              		@ link register save eliminated.
 1085 0000 436D     		ldr	r3, [r0, #84]
 1086 0002 23F48033 		bic	r3, r3, #65536
 1087 0006 4365     		str	r3, [r0, #84]
 1088 0008 7047     		bx	lr
 1089              		.size	usart_lin_disable_pdc_mode, .-usart_lin_disable_pdc_mode
 1090 000a 00BF     		.section	.text.usart_lin_enable_pdc_mode,"ax",%progbits
 1091              		.align	1
 1092              		.p2align 2,,3
 1093              		.global	usart_lin_enable_pdc_mode
 1094              		.syntax unified
 1095              		.thumb
 1096              		.thumb_func
 1097              		.fpu softvfp
 1098              		.type	usart_lin_enable_pdc_mode, %function
 1099              	usart_lin_enable_pdc_mode:
 1100              		@ args = 0, pretend = 0, frame = 0
 1101              		@ frame_needed = 0, uses_anonymous_args = 0
 1102              		@ link register save eliminated.
 1103 0000 436D     		ldr	r3, [r0, #84]
 1104 0002 43F48033 		orr	r3, r3, #65536
 1105 0006 4365     		str	r3, [r0, #84]
 1106 0008 7047     		bx	lr
 1107              		.size	usart_lin_enable_pdc_mode, .-usart_lin_enable_pdc_mode
 1108 000a 00BF     		.section	.text.usart_lin_set_tx_identifier,"ax",%progbits
 1109              		.align	1
 1110              		.p2align 2,,3
 1111              		.global	usart_lin_set_tx_identifier
 1112              		.syntax unified
 1113              		.thumb
 1114              		.thumb_func
 1115              		.fpu softvfp
 1116              		.type	usart_lin_set_tx_identifier, %function
 1117              	usart_lin_set_tx_identifier:
 1118              		@ args = 0, pretend = 0, frame = 0
 1119              		@ frame_needed = 0, uses_anonymous_args = 0
 1120              		@ link register save eliminated.
 1121 0000 836D     		ldr	r3, [r0, #88]
 1122 0002 23F0FF03 		bic	r3, r3, #255
 1123 0006 1943     		orrs	r1, r1, r3
 1124 0008 8165     		str	r1, [r0, #88]
 1125 000a 7047     		bx	lr
 1126              		.size	usart_lin_set_tx_identifier, .-usart_lin_set_tx_identifier
 1127              		.section	.text.usart_lin_read_identifier,"ax",%progbits
 1128              		.align	1
 1129              		.p2align 2,,3
 1130              		.global	usart_lin_read_identifier
 1131              		.syntax unified
 1132              		.thumb
 1133              		.thumb_func
 1134              		.fpu softvfp
 1135              		.type	usart_lin_read_identifier, %function
 1136              	usart_lin_read_identifier:
 1137              		@ args = 0, pretend = 0, frame = 0
 1138              		@ frame_needed = 0, uses_anonymous_args = 0
 1139              		@ link register save eliminated.
 1140 0000 806D     		ldr	r0, [r0, #88]
ARM GAS  /tmp/ccY5qSEg.s 			page 21


 1141 0002 C0B2     		uxtb	r0, r0
 1142 0004 7047     		bx	lr
 1143              		.size	usart_lin_read_identifier, .-usart_lin_read_identifier
 1144 0006 00BF     		.section	.text.usart_lin_get_data_length,"ax",%progbits
 1145              		.align	1
 1146              		.p2align 2,,3
 1147              		.global	usart_lin_get_data_length
 1148              		.syntax unified
 1149              		.thumb
 1150              		.thumb_func
 1151              		.fpu softvfp
 1152              		.type	usart_lin_get_data_length, %function
 1153              	usart_lin_get_data_length:
 1154              		@ args = 0, pretend = 0, frame = 0
 1155              		@ frame_needed = 0, uses_anonymous_args = 0
 1156              		@ link register save eliminated.
 1157 0000 436D     		ldr	r3, [r0, #84]
 1158 0002 9B06     		lsls	r3, r3, #26
 1159 0004 04D4     		bmi	.L137
 1160 0006 406D     		ldr	r0, [r0, #84]
 1161 0008 000A     		lsrs	r0, r0, #8
 1162 000a 0130     		adds	r0, r0, #1
 1163 000c C0B2     		uxtb	r0, r0
 1164 000e 7047     		bx	lr
 1165              	.L137:
 1166 0010 0123     		movs	r3, #1
 1167 0012 806D     		ldr	r0, [r0, #88]
 1168 0014 C0F30110 		ubfx	r0, r0, #4, #2
 1169 0018 03FA00F0 		lsl	r0, r3, r0
 1170 001c C0B2     		uxtb	r0, r0
 1171 001e 7047     		bx	lr
 1172              		.size	usart_lin_get_data_length, .-usart_lin_get_data_length
 1173              		.section	.text.usart_enable_tx,"ax",%progbits
 1174              		.align	1
 1175              		.p2align 2,,3
 1176              		.global	usart_enable_tx
 1177              		.syntax unified
 1178              		.thumb
 1179              		.thumb_func
 1180              		.fpu softvfp
 1181              		.type	usart_enable_tx, %function
 1182              	usart_enable_tx:
 1183              		@ args = 0, pretend = 0, frame = 0
 1184              		@ frame_needed = 0, uses_anonymous_args = 0
 1185              		@ link register save eliminated.
 1186 0000 4023     		movs	r3, #64
 1187 0002 0360     		str	r3, [r0]
 1188 0004 7047     		bx	lr
 1189              		.size	usart_enable_tx, .-usart_enable_tx
 1190 0006 00BF     		.section	.text.usart_disable_tx,"ax",%progbits
 1191              		.align	1
 1192              		.p2align 2,,3
 1193              		.global	usart_disable_tx
 1194              		.syntax unified
 1195              		.thumb
 1196              		.thumb_func
 1197              		.fpu softvfp
ARM GAS  /tmp/ccY5qSEg.s 			page 22


 1198              		.type	usart_disable_tx, %function
 1199              	usart_disable_tx:
 1200              		@ args = 0, pretend = 0, frame = 0
 1201              		@ frame_needed = 0, uses_anonymous_args = 0
 1202              		@ link register save eliminated.
 1203 0000 8023     		movs	r3, #128
 1204 0002 0360     		str	r3, [r0]
 1205 0004 7047     		bx	lr
 1206              		.size	usart_disable_tx, .-usart_disable_tx
 1207 0006 00BF     		.section	.text.usart_reset_tx,"ax",%progbits
 1208              		.align	1
 1209              		.p2align 2,,3
 1210              		.global	usart_reset_tx
 1211              		.syntax unified
 1212              		.thumb
 1213              		.thumb_func
 1214              		.fpu softvfp
 1215              		.type	usart_reset_tx, %function
 1216              	usart_reset_tx:
 1217              		@ args = 0, pretend = 0, frame = 0
 1218              		@ frame_needed = 0, uses_anonymous_args = 0
 1219              		@ link register save eliminated.
 1220 0000 8823     		movs	r3, #136
 1221 0002 0360     		str	r3, [r0]
 1222 0004 7047     		bx	lr
 1223              		.size	usart_reset_tx, .-usart_reset_tx
 1224 0006 00BF     		.section	.text.usart_set_tx_timeguard,"ax",%progbits
 1225              		.align	1
 1226              		.p2align 2,,3
 1227              		.global	usart_set_tx_timeguard
 1228              		.syntax unified
 1229              		.thumb
 1230              		.thumb_func
 1231              		.fpu softvfp
 1232              		.type	usart_set_tx_timeguard, %function
 1233              	usart_set_tx_timeguard:
 1234              		@ args = 0, pretend = 0, frame = 0
 1235              		@ frame_needed = 0, uses_anonymous_args = 0
 1236              		@ link register save eliminated.
 1237 0000 8162     		str	r1, [r0, #40]
 1238 0002 7047     		bx	lr
 1239              		.size	usart_set_tx_timeguard, .-usart_set_tx_timeguard
 1240              		.section	.text.usart_enable_rx,"ax",%progbits
 1241              		.align	1
 1242              		.p2align 2,,3
 1243              		.global	usart_enable_rx
 1244              		.syntax unified
 1245              		.thumb
 1246              		.thumb_func
 1247              		.fpu softvfp
 1248              		.type	usart_enable_rx, %function
 1249              	usart_enable_rx:
 1250              		@ args = 0, pretend = 0, frame = 0
 1251              		@ frame_needed = 0, uses_anonymous_args = 0
 1252              		@ link register save eliminated.
 1253 0000 1023     		movs	r3, #16
 1254 0002 0360     		str	r3, [r0]
ARM GAS  /tmp/ccY5qSEg.s 			page 23


 1255 0004 7047     		bx	lr
 1256              		.size	usart_enable_rx, .-usart_enable_rx
 1257 0006 00BF     		.section	.text.usart_disable_rx,"ax",%progbits
 1258              		.align	1
 1259              		.p2align 2,,3
 1260              		.global	usart_disable_rx
 1261              		.syntax unified
 1262              		.thumb
 1263              		.thumb_func
 1264              		.fpu softvfp
 1265              		.type	usart_disable_rx, %function
 1266              	usart_disable_rx:
 1267              		@ args = 0, pretend = 0, frame = 0
 1268              		@ frame_needed = 0, uses_anonymous_args = 0
 1269              		@ link register save eliminated.
 1270 0000 2023     		movs	r3, #32
 1271 0002 0360     		str	r3, [r0]
 1272 0004 7047     		bx	lr
 1273              		.size	usart_disable_rx, .-usart_disable_rx
 1274 0006 00BF     		.section	.text.usart_reset_rx,"ax",%progbits
 1275              		.align	1
 1276              		.p2align 2,,3
 1277              		.global	usart_reset_rx
 1278              		.syntax unified
 1279              		.thumb
 1280              		.thumb_func
 1281              		.fpu softvfp
 1282              		.type	usart_reset_rx, %function
 1283              	usart_reset_rx:
 1284              		@ args = 0, pretend = 0, frame = 0
 1285              		@ frame_needed = 0, uses_anonymous_args = 0
 1286              		@ link register save eliminated.
 1287 0000 2423     		movs	r3, #36
 1288 0002 0360     		str	r3, [r0]
 1289 0004 7047     		bx	lr
 1290              		.size	usart_reset_rx, .-usart_reset_rx
 1291 0006 00BF     		.section	.text.usart_set_rx_timeout,"ax",%progbits
 1292              		.align	1
 1293              		.p2align 2,,3
 1294              		.global	usart_set_rx_timeout
 1295              		.syntax unified
 1296              		.thumb
 1297              		.thumb_func
 1298              		.fpu softvfp
 1299              		.type	usart_set_rx_timeout, %function
 1300              	usart_set_rx_timeout:
 1301              		@ args = 0, pretend = 0, frame = 0
 1302              		@ frame_needed = 0, uses_anonymous_args = 0
 1303              		@ link register save eliminated.
 1304 0000 4162     		str	r1, [r0, #36]
 1305 0002 7047     		bx	lr
 1306              		.size	usart_set_rx_timeout, .-usart_set_rx_timeout
 1307              		.section	.text.usart_enable_interrupt,"ax",%progbits
 1308              		.align	1
 1309              		.p2align 2,,3
 1310              		.global	usart_enable_interrupt
 1311              		.syntax unified
ARM GAS  /tmp/ccY5qSEg.s 			page 24


 1312              		.thumb
 1313              		.thumb_func
 1314              		.fpu softvfp
 1315              		.type	usart_enable_interrupt, %function
 1316              	usart_enable_interrupt:
 1317              		@ args = 0, pretend = 0, frame = 0
 1318              		@ frame_needed = 0, uses_anonymous_args = 0
 1319              		@ link register save eliminated.
 1320 0000 8160     		str	r1, [r0, #8]
 1321 0002 7047     		bx	lr
 1322              		.size	usart_enable_interrupt, .-usart_enable_interrupt
 1323              		.section	.text.usart_disable_interrupt,"ax",%progbits
 1324              		.align	1
 1325              		.p2align 2,,3
 1326              		.global	usart_disable_interrupt
 1327              		.syntax unified
 1328              		.thumb
 1329              		.thumb_func
 1330              		.fpu softvfp
 1331              		.type	usart_disable_interrupt, %function
 1332              	usart_disable_interrupt:
 1333              		@ args = 0, pretend = 0, frame = 0
 1334              		@ frame_needed = 0, uses_anonymous_args = 0
 1335              		@ link register save eliminated.
 1336 0000 C160     		str	r1, [r0, #12]
 1337 0002 7047     		bx	lr
 1338              		.size	usart_disable_interrupt, .-usart_disable_interrupt
 1339              		.section	.text.usart_get_interrupt_mask,"ax",%progbits
 1340              		.align	1
 1341              		.p2align 2,,3
 1342              		.global	usart_get_interrupt_mask
 1343              		.syntax unified
 1344              		.thumb
 1345              		.thumb_func
 1346              		.fpu softvfp
 1347              		.type	usart_get_interrupt_mask, %function
 1348              	usart_get_interrupt_mask:
 1349              		@ args = 0, pretend = 0, frame = 0
 1350              		@ frame_needed = 0, uses_anonymous_args = 0
 1351              		@ link register save eliminated.
 1352 0000 0069     		ldr	r0, [r0, #16]
 1353 0002 7047     		bx	lr
 1354              		.size	usart_get_interrupt_mask, .-usart_get_interrupt_mask
 1355              		.section	.text.usart_get_status,"ax",%progbits
 1356              		.align	1
 1357              		.p2align 2,,3
 1358              		.global	usart_get_status
 1359              		.syntax unified
 1360              		.thumb
 1361              		.thumb_func
 1362              		.fpu softvfp
 1363              		.type	usart_get_status, %function
 1364              	usart_get_status:
 1365              		@ args = 0, pretend = 0, frame = 0
 1366              		@ frame_needed = 0, uses_anonymous_args = 0
 1367              		@ link register save eliminated.
 1368 0000 4069     		ldr	r0, [r0, #20]
ARM GAS  /tmp/ccY5qSEg.s 			page 25


 1369 0002 7047     		bx	lr
 1370              		.size	usart_get_status, .-usart_get_status
 1371              		.section	.text.usart_reset_status,"ax",%progbits
 1372              		.align	1
 1373              		.p2align 2,,3
 1374              		.global	usart_reset_status
 1375              		.syntax unified
 1376              		.thumb
 1377              		.thumb_func
 1378              		.fpu softvfp
 1379              		.type	usart_reset_status, %function
 1380              	usart_reset_status:
 1381              		@ args = 0, pretend = 0, frame = 0
 1382              		@ frame_needed = 0, uses_anonymous_args = 0
 1383              		@ link register save eliminated.
 1384 0000 4FF48073 		mov	r3, #256
 1385 0004 0360     		str	r3, [r0]
 1386 0006 7047     		bx	lr
 1387              		.size	usart_reset_status, .-usart_reset_status
 1388              		.section	.text.usart_start_tx_break,"ax",%progbits
 1389              		.align	1
 1390              		.p2align 2,,3
 1391              		.global	usart_start_tx_break
 1392              		.syntax unified
 1393              		.thumb
 1394              		.thumb_func
 1395              		.fpu softvfp
 1396              		.type	usart_start_tx_break, %function
 1397              	usart_start_tx_break:
 1398              		@ args = 0, pretend = 0, frame = 0
 1399              		@ frame_needed = 0, uses_anonymous_args = 0
 1400              		@ link register save eliminated.
 1401 0000 4FF40073 		mov	r3, #512
 1402 0004 0360     		str	r3, [r0]
 1403 0006 7047     		bx	lr
 1404              		.size	usart_start_tx_break, .-usart_start_tx_break
 1405              		.section	.text.usart_stop_tx_break,"ax",%progbits
 1406              		.align	1
 1407              		.p2align 2,,3
 1408              		.global	usart_stop_tx_break
 1409              		.syntax unified
 1410              		.thumb
 1411              		.thumb_func
 1412              		.fpu softvfp
 1413              		.type	usart_stop_tx_break, %function
 1414              	usart_stop_tx_break:
 1415              		@ args = 0, pretend = 0, frame = 0
 1416              		@ frame_needed = 0, uses_anonymous_args = 0
 1417              		@ link register save eliminated.
 1418 0000 4FF48063 		mov	r3, #1024
 1419 0004 0360     		str	r3, [r0]
 1420 0006 7047     		bx	lr
 1421              		.size	usart_stop_tx_break, .-usart_stop_tx_break
 1422              		.section	.text.usart_start_rx_timeout,"ax",%progbits
 1423              		.align	1
 1424              		.p2align 2,,3
 1425              		.global	usart_start_rx_timeout
ARM GAS  /tmp/ccY5qSEg.s 			page 26


 1426              		.syntax unified
 1427              		.thumb
 1428              		.thumb_func
 1429              		.fpu softvfp
 1430              		.type	usart_start_rx_timeout, %function
 1431              	usart_start_rx_timeout:
 1432              		@ args = 0, pretend = 0, frame = 0
 1433              		@ frame_needed = 0, uses_anonymous_args = 0
 1434              		@ link register save eliminated.
 1435 0000 4FF40063 		mov	r3, #2048
 1436 0004 0360     		str	r3, [r0]
 1437 0006 7047     		bx	lr
 1438              		.size	usart_start_rx_timeout, .-usart_start_rx_timeout
 1439              		.section	.text.usart_send_address,"ax",%progbits
 1440              		.align	1
 1441              		.p2align 2,,3
 1442              		.global	usart_send_address
 1443              		.syntax unified
 1444              		.thumb
 1445              		.thumb_func
 1446              		.fpu softvfp
 1447              		.type	usart_send_address, %function
 1448              	usart_send_address:
 1449              		@ args = 0, pretend = 0, frame = 0
 1450              		@ frame_needed = 0, uses_anonymous_args = 0
 1451              		@ link register save eliminated.
 1452 0000 4368     		ldr	r3, [r0, #4]
 1453 0002 0246     		mov	r2, r0
 1454 0004 03F44063 		and	r3, r3, #3072
 1455 0008 B3F5406F 		cmp	r3, #3072
 1456 000c 01D0     		beq	.L155
 1457              	.L157:
 1458 000e 0120     		movs	r0, #1
 1459 0010 7047     		bx	lr
 1460              	.L155:
 1461 0012 4FF48053 		mov	r3, #4096
 1462 0016 0360     		str	r3, [r0]
 1463 0018 4369     		ldr	r3, [r0, #20]
 1464 001a 9B07     		lsls	r3, r3, #30
 1465 001c F7D5     		bpl	.L157
 1466 001e C1F30801 		ubfx	r1, r1, #0, #9
 1467 0022 0020     		movs	r0, #0
 1468 0024 D161     		str	r1, [r2, #28]
 1469 0026 7047     		bx	lr
 1470              		.size	usart_send_address, .-usart_send_address
 1471              		.section	.text.usart_restart_rx_timeout,"ax",%progbits
 1472              		.align	1
 1473              		.p2align 2,,3
 1474              		.global	usart_restart_rx_timeout
 1475              		.syntax unified
 1476              		.thumb
 1477              		.thumb_func
 1478              		.fpu softvfp
 1479              		.type	usart_restart_rx_timeout, %function
 1480              	usart_restart_rx_timeout:
 1481              		@ args = 0, pretend = 0, frame = 0
 1482              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccY5qSEg.s 			page 27


 1483              		@ link register save eliminated.
 1484 0000 4FF40043 		mov	r3, #32768
 1485 0004 0360     		str	r3, [r0]
 1486 0006 7047     		bx	lr
 1487              		.size	usart_restart_rx_timeout, .-usart_restart_rx_timeout
 1488              		.section	.text.usart_drive_RTS_pin_low,"ax",%progbits
 1489              		.align	1
 1490              		.p2align 2,,3
 1491              		.global	usart_drive_RTS_pin_low
 1492              		.syntax unified
 1493              		.thumb
 1494              		.thumb_func
 1495              		.fpu softvfp
 1496              		.type	usart_drive_RTS_pin_low, %function
 1497              	usart_drive_RTS_pin_low:
 1498              		@ args = 0, pretend = 0, frame = 0
 1499              		@ frame_needed = 0, uses_anonymous_args = 0
 1500              		@ link register save eliminated.
 1501 0000 4FF48023 		mov	r3, #262144
 1502 0004 0360     		str	r3, [r0]
 1503 0006 7047     		bx	lr
 1504              		.size	usart_drive_RTS_pin_low, .-usart_drive_RTS_pin_low
 1505              		.section	.text.usart_drive_RTS_pin_high,"ax",%progbits
 1506              		.align	1
 1507              		.p2align 2,,3
 1508              		.global	usart_drive_RTS_pin_high
 1509              		.syntax unified
 1510              		.thumb
 1511              		.thumb_func
 1512              		.fpu softvfp
 1513              		.type	usart_drive_RTS_pin_high, %function
 1514              	usart_drive_RTS_pin_high:
 1515              		@ args = 0, pretend = 0, frame = 0
 1516              		@ frame_needed = 0, uses_anonymous_args = 0
 1517              		@ link register save eliminated.
 1518 0000 4FF40023 		mov	r3, #524288
 1519 0004 0360     		str	r3, [r0]
 1520 0006 7047     		bx	lr
 1521              		.size	usart_drive_RTS_pin_high, .-usart_drive_RTS_pin_high
 1522              		.section	.text.usart_spi_force_chip_select,"ax",%progbits
 1523              		.align	1
 1524              		.p2align 2,,3
 1525              		.global	usart_spi_force_chip_select
 1526              		.syntax unified
 1527              		.thumb
 1528              		.thumb_func
 1529              		.fpu softvfp
 1530              		.type	usart_spi_force_chip_select, %function
 1531              	usart_spi_force_chip_select:
 1532              		@ args = 0, pretend = 0, frame = 0
 1533              		@ frame_needed = 0, uses_anonymous_args = 0
 1534              		@ link register save eliminated.
 1535 0000 4FF48023 		mov	r3, #262144
 1536 0004 0360     		str	r3, [r0]
 1537 0006 7047     		bx	lr
 1538              		.size	usart_spi_force_chip_select, .-usart_spi_force_chip_select
 1539              		.section	.text.usart_spi_release_chip_select,"ax",%progbits
ARM GAS  /tmp/ccY5qSEg.s 			page 28


 1540              		.align	1
 1541              		.p2align 2,,3
 1542              		.global	usart_spi_release_chip_select
 1543              		.syntax unified
 1544              		.thumb
 1545              		.thumb_func
 1546              		.fpu softvfp
 1547              		.type	usart_spi_release_chip_select, %function
 1548              	usart_spi_release_chip_select:
 1549              		@ args = 0, pretend = 0, frame = 0
 1550              		@ frame_needed = 0, uses_anonymous_args = 0
 1551              		@ link register save eliminated.
 1552 0000 4FF40023 		mov	r3, #524288
 1553 0004 0360     		str	r3, [r0]
 1554 0006 7047     		bx	lr
 1555              		.size	usart_spi_release_chip_select, .-usart_spi_release_chip_select
 1556              		.section	.text.usart_is_tx_ready,"ax",%progbits
 1557              		.align	1
 1558              		.p2align 2,,3
 1559              		.global	usart_is_tx_ready
 1560              		.syntax unified
 1561              		.thumb
 1562              		.thumb_func
 1563              		.fpu softvfp
 1564              		.type	usart_is_tx_ready, %function
 1565              	usart_is_tx_ready:
 1566              		@ args = 0, pretend = 0, frame = 0
 1567              		@ frame_needed = 0, uses_anonymous_args = 0
 1568              		@ link register save eliminated.
 1569 0000 4069     		ldr	r0, [r0, #20]
 1570 0002 C0F34000 		ubfx	r0, r0, #1, #1
 1571 0006 7047     		bx	lr
 1572              		.size	usart_is_tx_ready, .-usart_is_tx_ready
 1573              		.section	.text.usart_is_tx_empty,"ax",%progbits
 1574              		.align	1
 1575              		.p2align 2,,3
 1576              		.global	usart_is_tx_empty
 1577              		.syntax unified
 1578              		.thumb
 1579              		.thumb_func
 1580              		.fpu softvfp
 1581              		.type	usart_is_tx_empty, %function
 1582              	usart_is_tx_empty:
 1583              		@ args = 0, pretend = 0, frame = 0
 1584              		@ frame_needed = 0, uses_anonymous_args = 0
 1585              		@ link register save eliminated.
 1586 0000 4069     		ldr	r0, [r0, #20]
 1587 0002 C0F34020 		ubfx	r0, r0, #9, #1
 1588 0006 7047     		bx	lr
 1589              		.size	usart_is_tx_empty, .-usart_is_tx_empty
 1590              		.section	.text.usart_is_rx_ready,"ax",%progbits
 1591              		.align	1
 1592              		.p2align 2,,3
 1593              		.global	usart_is_rx_ready
 1594              		.syntax unified
 1595              		.thumb
 1596              		.thumb_func
ARM GAS  /tmp/ccY5qSEg.s 			page 29


 1597              		.fpu softvfp
 1598              		.type	usart_is_rx_ready, %function
 1599              	usart_is_rx_ready:
 1600              		@ args = 0, pretend = 0, frame = 0
 1601              		@ frame_needed = 0, uses_anonymous_args = 0
 1602              		@ link register save eliminated.
 1603 0000 4069     		ldr	r0, [r0, #20]
 1604 0002 00F00100 		and	r0, r0, #1
 1605 0006 7047     		bx	lr
 1606              		.size	usart_is_rx_ready, .-usart_is_rx_ready
 1607              		.section	.text.usart_write,"ax",%progbits
 1608              		.align	1
 1609              		.p2align 2,,3
 1610              		.global	usart_write
 1611              		.syntax unified
 1612              		.thumb
 1613              		.thumb_func
 1614              		.fpu softvfp
 1615              		.type	usart_write, %function
 1616              	usart_write:
 1617              		@ args = 0, pretend = 0, frame = 0
 1618              		@ frame_needed = 0, uses_anonymous_args = 0
 1619              		@ link register save eliminated.
 1620 0000 4369     		ldr	r3, [r0, #20]
 1621 0002 9B07     		lsls	r3, r3, #30
 1622 0004 43BF     		ittte	mi
 1623 0006 C1F30801 		ubfxmi	r1, r1, #0, #9
 1624 000a C161     		strmi	r1, [r0, #28]
 1625 000c 0020     		movmi	r0, #0
 1626 000e 0120     		movpl	r0, #1
 1627 0010 7047     		bx	lr
 1628              		.size	usart_write, .-usart_write
 1629 0012 00BF     		.section	.text.usart_putchar,"ax",%progbits
 1630              		.align	1
 1631              		.p2align 2,,3
 1632              		.global	usart_putchar
 1633              		.syntax unified
 1634              		.thumb
 1635              		.thumb_func
 1636              		.fpu softvfp
 1637              		.type	usart_putchar, %function
 1638              	usart_putchar:
 1639              		@ args = 0, pretend = 0, frame = 0
 1640              		@ frame_needed = 0, uses_anonymous_args = 0
 1641              		@ link register save eliminated.
 1642              	.L173:
 1643 0000 4369     		ldr	r3, [r0, #20]
 1644 0002 9B07     		lsls	r3, r3, #30
 1645 0004 FCD5     		bpl	.L173
 1646 0006 C1F30801 		ubfx	r1, r1, #0, #9
 1647 000a C161     		str	r1, [r0, #28]
 1648 000c 0020     		movs	r0, #0
 1649 000e 7047     		bx	lr
 1650              		.size	usart_putchar, .-usart_putchar
 1651              		.section	.text.usart_write_line,"ax",%progbits
 1652              		.align	1
 1653              		.p2align 2,,3
ARM GAS  /tmp/ccY5qSEg.s 			page 30


 1654              		.global	usart_write_line
 1655              		.syntax unified
 1656              		.thumb
 1657              		.thumb_func
 1658              		.fpu softvfp
 1659              		.type	usart_write_line, %function
 1660              	usart_write_line:
 1661              		@ args = 0, pretend = 0, frame = 0
 1662              		@ frame_needed = 0, uses_anonymous_args = 0
 1663              		@ link register save eliminated.
 1664 0000 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 1665 0002 3AB1     		cbz	r2, .L176
 1666              	.L178:
 1667 0004 4369     		ldr	r3, [r0, #20]
 1668 0006 9B07     		lsls	r3, r3, #30
 1669 0008 FCD5     		bpl	.L178
 1670 000a C261     		str	r2, [r0, #28]
 1671 000c 11F8012F 		ldrb	r2, [r1, #1]!	@ zero_extendqisi2
 1672 0010 002A     		cmp	r2, #0
 1673 0012 F7D1     		bne	.L178
 1674              	.L176:
 1675 0014 7047     		bx	lr
 1676              		.size	usart_write_line, .-usart_write_line
 1677              		.section	.text.usart_read,"ax",%progbits
 1678              		.align	1
 1679              		.p2align 2,,3
 1680              		.global	usart_read
 1681              		.syntax unified
 1682              		.thumb
 1683              		.thumb_func
 1684              		.fpu softvfp
 1685              		.type	usart_read, %function
 1686              	usart_read:
 1687              		@ args = 0, pretend = 0, frame = 0
 1688              		@ frame_needed = 0, uses_anonymous_args = 0
 1689              		@ link register save eliminated.
 1690 0000 4369     		ldr	r3, [r0, #20]
 1691 0002 DB07     		lsls	r3, r3, #31
 1692 0004 05D5     		bpl	.L186
 1693 0006 8369     		ldr	r3, [r0, #24]
 1694 0008 0020     		movs	r0, #0
 1695 000a C3F30803 		ubfx	r3, r3, #0, #9
 1696 000e 0B60     		str	r3, [r1]
 1697 0010 7047     		bx	lr
 1698              	.L186:
 1699 0012 0120     		movs	r0, #1
 1700 0014 7047     		bx	lr
 1701              		.size	usart_read, .-usart_read
 1702 0016 00BF     		.section	.text.usart_getchar,"ax",%progbits
 1703              		.align	1
 1704              		.p2align 2,,3
 1705              		.global	usart_getchar
 1706              		.syntax unified
 1707              		.thumb
 1708              		.thumb_func
 1709              		.fpu softvfp
 1710              		.type	usart_getchar, %function
ARM GAS  /tmp/ccY5qSEg.s 			page 31


 1711              	usart_getchar:
 1712              		@ args = 0, pretend = 0, frame = 0
 1713              		@ frame_needed = 0, uses_anonymous_args = 0
 1714              		@ link register save eliminated.
 1715              	.L188:
 1716 0000 4369     		ldr	r3, [r0, #20]
 1717 0002 DB07     		lsls	r3, r3, #31
 1718 0004 FCD5     		bpl	.L188
 1719 0006 8369     		ldr	r3, [r0, #24]
 1720 0008 0020     		movs	r0, #0
 1721 000a C3F30803 		ubfx	r3, r3, #0, #9
 1722 000e 0B60     		str	r3, [r1]
 1723 0010 7047     		bx	lr
 1724              		.size	usart_getchar, .-usart_getchar
 1725 0012 00BF     		.section	.text.usart_get_tx_access,"ax",%progbits
 1726              		.align	1
 1727              		.p2align 2,,3
 1728              		.global	usart_get_tx_access
 1729              		.syntax unified
 1730              		.thumb
 1731              		.thumb_func
 1732              		.fpu softvfp
 1733              		.type	usart_get_tx_access, %function
 1734              	usart_get_tx_access:
 1735              		@ args = 0, pretend = 0, frame = 0
 1736              		@ frame_needed = 0, uses_anonymous_args = 0
 1737              		@ link register save eliminated.
 1738 0000 1C30     		adds	r0, r0, #28
 1739 0002 7047     		bx	lr
 1740              		.size	usart_get_tx_access, .-usart_get_tx_access
 1741              		.section	.text.usart_get_rx_access,"ax",%progbits
 1742              		.align	1
 1743              		.p2align 2,,3
 1744              		.global	usart_get_rx_access
 1745              		.syntax unified
 1746              		.thumb
 1747              		.thumb_func
 1748              		.fpu softvfp
 1749              		.type	usart_get_rx_access, %function
 1750              	usart_get_rx_access:
 1751              		@ args = 0, pretend = 0, frame = 0
 1752              		@ frame_needed = 0, uses_anonymous_args = 0
 1753              		@ link register save eliminated.
 1754 0000 1830     		adds	r0, r0, #24
 1755 0002 7047     		bx	lr
 1756              		.size	usart_get_rx_access, .-usart_get_rx_access
 1757              		.section	.text.usart_get_pdc_base,"ax",%progbits
 1758              		.align	1
 1759              		.p2align 2,,3
 1760              		.global	usart_get_pdc_base
 1761              		.syntax unified
 1762              		.thumb
 1763              		.thumb_func
 1764              		.fpu softvfp
 1765              		.type	usart_get_pdc_base, %function
 1766              	usart_get_pdc_base:
 1767              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccY5qSEg.s 			page 32


 1768              		@ frame_needed = 0, uses_anonymous_args = 0
 1769              		@ link register save eliminated.
 1770 0000 0C4B     		ldr	r3, .L199
 1771 0002 9842     		cmp	r0, r3
 1772 0004 0FD0     		beq	.L195
 1773 0006 03F58043 		add	r3, r3, #16384
 1774 000a 9842     		cmp	r0, r3
 1775 000c 0DD0     		beq	.L196
 1776 000e 03F58043 		add	r3, r3, #16384
 1777 0012 9842     		cmp	r0, r3
 1778 0014 0BD0     		beq	.L197
 1779 0016 084A     		ldr	r2, .L199+4
 1780 0018 03F58243 		add	r3, r3, #16640
 1781 001c 9042     		cmp	r0, r2
 1782 001e 0CBF     		ite	eq
 1783 0020 1846     		moveq	r0, r3
 1784 0022 0020     		movne	r0, #0
 1785 0024 7047     		bx	lr
 1786              	.L195:
 1787 0026 0548     		ldr	r0, .L199+8
 1788 0028 7047     		bx	lr
 1789              	.L196:
 1790 002a 0548     		ldr	r0, .L199+12
 1791 002c 7047     		bx	lr
 1792              	.L197:
 1793 002e 0548     		ldr	r0, .L199+16
 1794 0030 7047     		bx	lr
 1795              	.L200:
 1796 0032 00BF     		.align	2
 1797              	.L199:
 1798 0034 00800940 		.word	1074364416
 1799 0038 00400A40 		.word	1074413568
 1800 003c 00810940 		.word	1074364672
 1801 0040 00C10940 		.word	1074381056
 1802 0044 00010A40 		.word	1074397440
 1803              		.size	usart_get_pdc_base, .-usart_get_pdc_base
 1804              		.section	.text.usart_enable_writeprotect,"ax",%progbits
 1805              		.align	1
 1806              		.p2align 2,,3
 1807              		.global	usart_enable_writeprotect
 1808              		.syntax unified
 1809              		.thumb
 1810              		.thumb_func
 1811              		.fpu softvfp
 1812              		.type	usart_enable_writeprotect, %function
 1813              	usart_enable_writeprotect:
 1814              		@ args = 0, pretend = 0, frame = 0
 1815              		@ frame_needed = 0, uses_anonymous_args = 0
 1816              		@ link register save eliminated.
 1817 0000 014B     		ldr	r3, .L202
 1818 0002 C0F8E430 		str	r3, [r0, #228]
 1819 0006 7047     		bx	lr
 1820              	.L203:
 1821              		.align	2
 1822              	.L202:
 1823 0008 01415355 		.word	1431519489
 1824              		.size	usart_enable_writeprotect, .-usart_enable_writeprotect
ARM GAS  /tmp/ccY5qSEg.s 			page 33


 1825              		.section	.text.usart_disable_writeprotect,"ax",%progbits
 1826              		.align	1
 1827              		.p2align 2,,3
 1828              		.global	usart_disable_writeprotect
 1829              		.syntax unified
 1830              		.thumb
 1831              		.thumb_func
 1832              		.fpu softvfp
 1833              		.type	usart_disable_writeprotect, %function
 1834              	usart_disable_writeprotect:
 1835              		@ args = 0, pretend = 0, frame = 0
 1836              		@ frame_needed = 0, uses_anonymous_args = 0
 1837              		@ link register save eliminated.
 1838 0000 014B     		ldr	r3, .L205
 1839 0002 C0F8E430 		str	r3, [r0, #228]
 1840 0006 7047     		bx	lr
 1841              	.L206:
 1842              		.align	2
 1843              	.L205:
 1844 0008 00415355 		.word	1431519488
 1845              		.size	usart_disable_writeprotect, .-usart_disable_writeprotect
 1846              		.section	.text.usart_get_writeprotect_status,"ax",%progbits
 1847              		.align	1
 1848              		.p2align 2,,3
 1849              		.global	usart_get_writeprotect_status
 1850              		.syntax unified
 1851              		.thumb
 1852              		.thumb_func
 1853              		.fpu softvfp
 1854              		.type	usart_get_writeprotect_status, %function
 1855              	usart_get_writeprotect_status:
 1856              		@ args = 0, pretend = 0, frame = 0
 1857              		@ frame_needed = 0, uses_anonymous_args = 0
 1858              		@ link register save eliminated.
 1859 0000 D0F8E830 		ldr	r3, [r0, #232]
 1860 0004 13F00100 		ands	r0, r3, #1
 1861 0008 18BF     		it	ne
 1862 000a C3F30F20 		ubfxne	r0, r3, #8, #16
 1863 000e 7047     		bx	lr
 1864              		.size	usart_get_writeprotect_status, .-usart_get_writeprotect_status
 1865              		.section	.text.usart_man_set_tx_pre_len,"ax",%progbits
 1866              		.align	1
 1867              		.p2align 2,,3
 1868              		.global	usart_man_set_tx_pre_len
 1869              		.syntax unified
 1870              		.thumb
 1871              		.thumb_func
 1872              		.fpu softvfp
 1873              		.type	usart_man_set_tx_pre_len, %function
 1874              	usart_man_set_tx_pre_len:
 1875              		@ args = 0, pretend = 0, frame = 0
 1876              		@ frame_needed = 0, uses_anonymous_args = 0
 1877              		@ link register save eliminated.
 1878 0000 036D     		ldr	r3, [r0, #80]
 1879 0002 01F00F01 		and	r1, r1, #15
 1880 0006 23F00F03 		bic	r3, r3, #15
 1881 000a 0B43     		orrs	r3, r3, r1
ARM GAS  /tmp/ccY5qSEg.s 			page 34


 1882 000c 0365     		str	r3, [r0, #80]
 1883 000e 7047     		bx	lr
 1884              		.size	usart_man_set_tx_pre_len, .-usart_man_set_tx_pre_len
 1885              		.section	.text.usart_man_set_tx_pre_pattern,"ax",%progbits
 1886              		.align	1
 1887              		.p2align 2,,3
 1888              		.global	usart_man_set_tx_pre_pattern
 1889              		.syntax unified
 1890              		.thumb
 1891              		.thumb_func
 1892              		.fpu softvfp
 1893              		.type	usart_man_set_tx_pre_pattern, %function
 1894              	usart_man_set_tx_pre_pattern:
 1895              		@ args = 0, pretend = 0, frame = 0
 1896              		@ frame_needed = 0, uses_anonymous_args = 0
 1897              		@ link register save eliminated.
 1898 0000 036D     		ldr	r3, [r0, #80]
 1899 0002 23F44073 		bic	r3, r3, #768
 1900 0006 43EA0121 		orr	r1, r3, r1, lsl #8
 1901 000a 0165     		str	r1, [r0, #80]
 1902 000c 7047     		bx	lr
 1903              		.size	usart_man_set_tx_pre_pattern, .-usart_man_set_tx_pre_pattern
 1904 000e 00BF     		.section	.text.usart_man_set_tx_polarity,"ax",%progbits
 1905              		.align	1
 1906              		.p2align 2,,3
 1907              		.global	usart_man_set_tx_polarity
 1908              		.syntax unified
 1909              		.thumb
 1910              		.thumb_func
 1911              		.fpu softvfp
 1912              		.type	usart_man_set_tx_polarity, %function
 1913              	usart_man_set_tx_polarity:
 1914              		@ args = 0, pretend = 0, frame = 0
 1915              		@ frame_needed = 0, uses_anonymous_args = 0
 1916              		@ link register save eliminated.
 1917 0000 036D     		ldr	r3, [r0, #80]
 1918 0002 23F48053 		bic	r3, r3, #4096
 1919 0006 43EA0131 		orr	r1, r3, r1, lsl #12
 1920 000a 0165     		str	r1, [r0, #80]
 1921 000c 7047     		bx	lr
 1922              		.size	usart_man_set_tx_polarity, .-usart_man_set_tx_polarity
 1923 000e 00BF     		.section	.text.usart_man_set_rx_pre_len,"ax",%progbits
 1924              		.align	1
 1925              		.p2align 2,,3
 1926              		.global	usart_man_set_rx_pre_len
 1927              		.syntax unified
 1928              		.thumb
 1929              		.thumb_func
 1930              		.fpu softvfp
 1931              		.type	usart_man_set_rx_pre_len, %function
 1932              	usart_man_set_rx_pre_len:
 1933              		@ args = 0, pretend = 0, frame = 0
 1934              		@ frame_needed = 0, uses_anonymous_args = 0
 1935              		@ link register save eliminated.
 1936 0000 036D     		ldr	r3, [r0, #80]
 1937 0002 0904     		lsls	r1, r1, #16
 1938 0004 01F47021 		and	r1, r1, #983040
ARM GAS  /tmp/ccY5qSEg.s 			page 35


 1939 0008 23F47023 		bic	r3, r3, #983040
 1940 000c 1943     		orrs	r1, r1, r3
 1941 000e 0165     		str	r1, [r0, #80]
 1942 0010 7047     		bx	lr
 1943              		.size	usart_man_set_rx_pre_len, .-usart_man_set_rx_pre_len
 1944 0012 00BF     		.section	.text.usart_man_set_rx_pre_pattern,"ax",%progbits
 1945              		.align	1
 1946              		.p2align 2,,3
 1947              		.global	usart_man_set_rx_pre_pattern
 1948              		.syntax unified
 1949              		.thumb
 1950              		.thumb_func
 1951              		.fpu softvfp
 1952              		.type	usart_man_set_rx_pre_pattern, %function
 1953              	usart_man_set_rx_pre_pattern:
 1954              		@ args = 0, pretend = 0, frame = 0
 1955              		@ frame_needed = 0, uses_anonymous_args = 0
 1956              		@ link register save eliminated.
 1957 0000 036D     		ldr	r3, [r0, #80]
 1958 0002 23F04073 		bic	r3, r3, #50331648
 1959 0006 43EA0161 		orr	r1, r3, r1, lsl #24
 1960 000a 0165     		str	r1, [r0, #80]
 1961 000c 7047     		bx	lr
 1962              		.size	usart_man_set_rx_pre_pattern, .-usart_man_set_rx_pre_pattern
 1963 000e 00BF     		.section	.text.usart_man_set_rx_polarity,"ax",%progbits
 1964              		.align	1
 1965              		.p2align 2,,3
 1966              		.global	usart_man_set_rx_polarity
 1967              		.syntax unified
 1968              		.thumb
 1969              		.thumb_func
 1970              		.fpu softvfp
 1971              		.type	usart_man_set_rx_polarity, %function
 1972              	usart_man_set_rx_polarity:
 1973              		@ args = 0, pretend = 0, frame = 0
 1974              		@ frame_needed = 0, uses_anonymous_args = 0
 1975              		@ link register save eliminated.
 1976 0000 036D     		ldr	r3, [r0, #80]
 1977 0002 23F08053 		bic	r3, r3, #268435456
 1978 0006 43EA0171 		orr	r1, r3, r1, lsl #28
 1979 000a 0165     		str	r1, [r0, #80]
 1980 000c 7047     		bx	lr
 1981              		.size	usart_man_set_rx_polarity, .-usart_man_set_rx_polarity
 1982 000e 00BF     		.section	.text.usart_man_enable_drift_compensation,"ax",%progbits
 1983              		.align	1
 1984              		.p2align 2,,3
 1985              		.global	usart_man_enable_drift_compensation
 1986              		.syntax unified
 1987              		.thumb
 1988              		.thumb_func
 1989              		.fpu softvfp
 1990              		.type	usart_man_enable_drift_compensation, %function
 1991              	usart_man_enable_drift_compensation:
 1992              		@ args = 0, pretend = 0, frame = 0
 1993              		@ frame_needed = 0, uses_anonymous_args = 0
 1994              		@ link register save eliminated.
 1995 0000 036D     		ldr	r3, [r0, #80]
ARM GAS  /tmp/ccY5qSEg.s 			page 36


 1996 0002 43F08043 		orr	r3, r3, #1073741824
 1997 0006 0365     		str	r3, [r0, #80]
 1998 0008 7047     		bx	lr
 1999              		.size	usart_man_enable_drift_compensation, .-usart_man_enable_drift_compensation
 2000 000a 00BF     		.section	.text.usart_man_disable_drift_compensation,"ax",%progbits
 2001              		.align	1
 2002              		.p2align 2,,3
 2003              		.global	usart_man_disable_drift_compensation
 2004              		.syntax unified
 2005              		.thumb
 2006              		.thumb_func
 2007              		.fpu softvfp
 2008              		.type	usart_man_disable_drift_compensation, %function
 2009              	usart_man_disable_drift_compensation:
 2010              		@ args = 0, pretend = 0, frame = 0
 2011              		@ frame_needed = 0, uses_anonymous_args = 0
 2012              		@ link register save eliminated.
 2013 0000 036D     		ldr	r3, [r0, #80]
 2014 0002 23F08043 		bic	r3, r3, #1073741824
 2015 0006 0365     		str	r3, [r0, #80]
 2016 0008 7047     		bx	lr
 2017              		.size	usart_man_disable_drift_compensation, .-usart_man_disable_drift_compensation
 2018 000a 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 2019              		.align	2
 2020              		.type	cpu_irq_critical_section_counter, %object
 2021              		.size	cpu_irq_critical_section_counter, 4
 2022              	cpu_irq_critical_section_counter:
 2023 0000 00000000 		.space	4
 2024              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 2025              		.type	cpu_irq_prev_interrupt_state, %object
 2026              		.size	cpu_irq_prev_interrupt_state, 1
 2027              	cpu_irq_prev_interrupt_state:
 2028 0000 00       		.space	1
 2029              		.section	.bss.ul_reg_val.7358,"aw",%nobits
 2030              		.align	2
 2031              		.set	.LANCHOR0,. + 0
 2032              		.type	ul_reg_val.7358, %object
 2033              		.size	ul_reg_val.7358, 4
 2034              	ul_reg_val.7358:
 2035 0000 00000000 		.space	4
 2036              		.section	.bss.ul_reg_val.7396,"aw",%nobits
 2037              		.align	2
 2038              		.set	.LANCHOR1,. + 0
 2039              		.type	ul_reg_val.7396, %object
 2040              		.size	ul_reg_val.7396, 4
 2041              	ul_reg_val.7396:
 2042 0000 00000000 		.space	4
 2043              		.section	.bss.ul_reg_val.7423,"aw",%nobits
 2044              		.align	2
 2045              		.set	.LANCHOR2,. + 0
 2046              		.type	ul_reg_val.7423, %object
 2047              		.size	ul_reg_val.7423, 4
 2048              	ul_reg_val.7423:
 2049 0000 00000000 		.space	4
 2050              		.section	.bss.ul_reg_val.7434,"aw",%nobits
 2051              		.align	2
 2052              		.set	.LANCHOR3,. + 0
ARM GAS  /tmp/ccY5qSEg.s 			page 37


 2053              		.type	ul_reg_val.7434, %object
 2054              		.size	ul_reg_val.7434, 4
 2055              	ul_reg_val.7434:
 2056 0000 00000000 		.space	4
 2057              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
