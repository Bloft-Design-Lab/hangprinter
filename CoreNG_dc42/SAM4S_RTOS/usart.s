ARM GAS  /tmp/ccDjCk6q.s 			page 1


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
  32 0012 D308     		lsrs	r3, r2, #3
  33 0014 5C1E     		subs	r4, r3, #1
  34 0016 4FF6FE71 		movw	r1, #65534
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
  50 003a D308     		lsrs	r3, r2, #3
  51 003c 5C1E     		subs	r4, r3, #1
  52 003e 4FF6FE71 		movw	r1, #65534
  53 0042 8C42     		cmp	r4, r1
  54 0044 02D9     		bls	.L16
  55              	.L8:
  56 0046 0120     		movs	r0, #1
  57 0048 10BC     		pop	{r4}
ARM GAS  /tmp/ccDjCk6q.s 			page 2


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
  79 0002 0B4B     		ldr	r3, .L19
  80 0004 C0F8E430 		str	r3, [r0, #228]
  81 0008 8826     		movs	r6, #136
  82 000a 0023     		movs	r3, #0
  83 000c 2425     		movs	r5, #36
  84 000e 4FF48074 		mov	r4, #256
  85 0012 4FF40021 		mov	r1, #524288
  86 0016 4FF40032 		mov	r2, #131072
  87 001a 4360     		str	r3, [r0, #4]
  88 001c 4362     		str	r3, [r0, #36]
  89 001e 8362     		str	r3, [r0, #40]
  90 0020 0660     		str	r6, [r0]
  91 0022 0560     		str	r5, [r0]
  92 0024 0460     		str	r4, [r0]
  93 0026 0160     		str	r1, [r0]
  94 0028 70BC     		pop	{r4, r5, r6}
  95 002a 0260     		str	r2, [r0]
  96 002c 7047     		bx	lr
  97              	.L20:
  98 002e 00BF     		.align	2
  99              	.L19:
 100 0030 00415355 		.word	1431519488
 101              		.size	usart_reset, .-usart_reset
 102              		.section	.text.usart_init_rs232,"ax",%progbits
 103              		.align	1
 104              		.p2align 2,,3
 105              		.global	usart_init_rs232
 106              		.syntax unified
 107              		.thumb
 108              		.thumb_func
 109              		.fpu softvfp
 110              		.type	usart_init_rs232, %function
 111              	usart_init_rs232:
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
ARM GAS  /tmp/ccDjCk6q.s 			page 3


 115 0002 174C     		ldr	r4, .L26
 116 0004 174E     		ldr	r6, .L26+4
 117 0006 C0F8E440 		str	r4, [r0, #228]
 118 000a 8825     		movs	r5, #136
 119 000c 0024     		movs	r4, #0
 120 000e 4460     		str	r4, [r0, #4]
 121 0010 4FF0240E 		mov	lr, #36
 122 0014 4462     		str	r4, [r0, #36]
 123 0016 3460     		str	r4, [r6]
 124 0018 8462     		str	r4, [r0, #40]
 125 001a 4FF48077 		mov	r7, #256
 126 001e 0560     		str	r5, [r0]
 127 0020 4FF40034 		mov	r4, #131072
 128 0024 4FF40025 		mov	r5, #524288
 129 0028 C0F800E0 		str	lr, [r0]
 130 002c 0760     		str	r7, [r0]
 131 002e 0560     		str	r5, [r0]
 132 0030 0460     		str	r4, [r0]
 133 0032 99B1     		cbz	r1, .L24
 134 0034 0D46     		mov	r5, r1
 135 0036 0968     		ldr	r1, [r1]
 136 0038 0446     		mov	r4, r0
 137 003a FFF7FEFF 		bl	usart_set_async_baudrate
 138 003e 68B9     		cbnz	r0, .L24
 139 0040 6B68     		ldr	r3, [r5, #4]
 140 0042 D5F808E0 		ldr	lr, [r5, #8]
 141 0046 2F69     		ldr	r7, [r5, #16]
 142 0048 E968     		ldr	r1, [r5, #12]
 143 004a 6268     		ldr	r2, [r4, #4]
 144 004c 43EA0E03 		orr	r3, r3, lr
 145 0050 3B43     		orrs	r3, r3, r7
 146 0052 0B43     		orrs	r3, r3, r1
 147 0054 1A43     		orrs	r2, r2, r3
 148 0056 3360     		str	r3, [r6]
 149 0058 6260     		str	r2, [r4, #4]
 150 005a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 151              	.L24:
 152 005c 0120     		movs	r0, #1
 153 005e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 154              	.L27:
 155              		.align	2
 156              	.L26:
 157 0060 00415355 		.word	1431519488
 158 0064 00000000 		.word	.LANCHOR0
 159              		.size	usart_init_rs232, .-usart_init_rs232
 160              		.section	.text.usart_init_hw_handshaking,"ax",%progbits
 161              		.align	1
 162              		.p2align 2,,3
 163              		.global	usart_init_hw_handshaking
 164              		.syntax unified
 165              		.thumb
 166              		.thumb_func
 167              		.fpu softvfp
 168              		.type	usart_init_hw_handshaking, %function
 169              	usart_init_hw_handshaking:
 170              		@ args = 0, pretend = 0, frame = 0
 171              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccDjCk6q.s 			page 4


 172 0000 10B5     		push	{r4, lr}
 173 0002 0446     		mov	r4, r0
 174 0004 FFF7FEFF 		bl	usart_init_rs232
 175 0008 30B9     		cbnz	r0, .L30
 176 000a 6368     		ldr	r3, [r4, #4]
 177 000c 23F00F03 		bic	r3, r3, #15
 178 0010 43F00203 		orr	r3, r3, #2
 179 0014 6360     		str	r3, [r4, #4]
 180 0016 10BD     		pop	{r4, pc}
 181              	.L30:
 182 0018 0120     		movs	r0, #1
 183 001a 10BD     		pop	{r4, pc}
 184              		.size	usart_init_hw_handshaking, .-usart_init_hw_handshaking
 185              		.section	.text.usart_init_modem,"ax",%progbits
 186              		.align	1
 187              		.p2align 2,,3
 188              		.global	usart_init_modem
 189              		.syntax unified
 190              		.thumb
 191              		.thumb_func
 192              		.fpu softvfp
 193              		.type	usart_init_modem, %function
 194              	usart_init_modem:
 195              		@ args = 0, pretend = 0, frame = 0
 196              		@ frame_needed = 0, uses_anonymous_args = 0
 197 0000 10B5     		push	{r4, lr}
 198 0002 084C     		ldr	r4, .L37
 199 0004 A042     		cmp	r0, r4
 200 0006 01D0     		beq	.L33
 201              	.L35:
 202 0008 0120     		movs	r0, #1
 203 000a 10BD     		pop	{r4, pc}
 204              	.L33:
 205 000c 0446     		mov	r4, r0
 206 000e FFF7FEFF 		bl	usart_init_rs232
 207 0012 0028     		cmp	r0, #0
 208 0014 F8D1     		bne	.L35
 209 0016 6368     		ldr	r3, [r4, #4]
 210 0018 23F00F03 		bic	r3, r3, #15
 211 001c 43F00303 		orr	r3, r3, #3
 212 0020 6360     		str	r3, [r4, #4]
 213 0022 10BD     		pop	{r4, pc}
 214              	.L38:
 215              		.align	2
 216              	.L37:
 217 0024 00800240 		.word	1073905664
 218              		.size	usart_init_modem, .-usart_init_modem
 219              		.section	.text.usart_init_sync_master,"ax",%progbits
 220              		.align	1
 221              		.p2align 2,,3
 222              		.global	usart_init_sync_master
 223              		.syntax unified
 224              		.thumb
 225              		.thumb_func
 226              		.fpu softvfp
 227              		.type	usart_init_sync_master, %function
 228              	usart_init_sync_master:
ARM GAS  /tmp/ccDjCk6q.s 			page 5


 229              		@ args = 0, pretend = 0, frame = 0
 230              		@ frame_needed = 0, uses_anonymous_args = 0
 231              		@ link register save eliminated.
 232 0000 0346     		mov	r3, r0
 233 0002 1C48     		ldr	r0, .L45
 234 0004 F0B4     		push	{r4, r5, r6, r7}
 235 0006 C3F8E400 		str	r0, [r3, #228]
 236 000a 8824     		movs	r4, #136
 237 000c 0020     		movs	r0, #0
 238 000e 5860     		str	r0, [r3, #4]
 239 0010 2427     		movs	r7, #36
 240 0012 5862     		str	r0, [r3, #36]
 241 0014 4FF48076 		mov	r6, #256
 242 0018 9862     		str	r0, [r3, #40]
 243 001a 4FF40025 		mov	r5, #524288
 244 001e 1C60     		str	r4, [r3]
 245 0020 4FF40034 		mov	r4, #131072
 246 0024 1F60     		str	r7, [r3]
 247 0026 1E60     		str	r6, [r3]
 248 0028 1D60     		str	r5, [r3]
 249 002a 1C60     		str	r4, [r3]
 250 002c 49B1     		cbz	r1, .L42
 251 002e 0C68     		ldr	r4, [r1]
 252 0030 4FF6FE75 		movw	r5, #65534
 253 0034 02EB5402 		add	r2, r2, r4, lsr #1
 254 0038 B2FBF4F2 		udiv	r2, r2, r4
 255 003c 541E     		subs	r4, r2, #1
 256 003e AC42     		cmp	r4, r5
 257 0040 02D9     		bls	.L44
 258              	.L42:
 259 0042 0120     		movs	r0, #1
 260 0044 F0BC     		pop	{r4, r5, r6, r7}
 261 0046 7047     		bx	lr
 262              	.L44:
 263 0048 1A62     		str	r2, [r3, #32]
 264 004a 5C68     		ldr	r4, [r3, #4]
 265 004c 8F68     		ldr	r7, [r1, #8]
 266 004e 4A68     		ldr	r2, [r1, #4]
 267 0050 0E69     		ldr	r6, [r1, #16]
 268 0052 CD68     		ldr	r5, [r1, #12]
 269 0054 24F49871 		bic	r1, r4, #304
 270 0058 41F48071 		orr	r1, r1, #256
 271 005c 3A43     		orrs	r2, r2, r7
 272 005e 5960     		str	r1, [r3, #4]
 273 0060 42F48022 		orr	r2, r2, #262144
 274 0064 5968     		ldr	r1, [r3, #4]
 275 0066 3243     		orrs	r2, r2, r6
 276 0068 2A43     		orrs	r2, r2, r5
 277 006a 0A43     		orrs	r2, r2, r1
 278 006c 5A60     		str	r2, [r3, #4]
 279 006e F0BC     		pop	{r4, r5, r6, r7}
 280 0070 7047     		bx	lr
 281              	.L46:
 282 0072 00BF     		.align	2
 283              	.L45:
 284 0074 00415355 		.word	1431519488
 285              		.size	usart_init_sync_master, .-usart_init_sync_master
ARM GAS  /tmp/ccDjCk6q.s 			page 6


 286              		.section	.text.usart_init_sync_slave,"ax",%progbits
 287              		.align	1
 288              		.p2align 2,,3
 289              		.global	usart_init_sync_slave
 290              		.syntax unified
 291              		.thumb
 292              		.thumb_func
 293              		.fpu softvfp
 294              		.type	usart_init_sync_slave, %function
 295              	usart_init_sync_slave:
 296              		@ args = 0, pretend = 0, frame = 0
 297              		@ frame_needed = 0, uses_anonymous_args = 0
 298              		@ link register save eliminated.
 299 0000 0346     		mov	r3, r0
 300 0002 144A     		ldr	r2, .L51
 301 0004 F0B4     		push	{r4, r5, r6, r7}
 302 0006 C0F8E420 		str	r2, [r0, #228]
 303 000a 8827     		movs	r7, #136
 304 000c 0020     		movs	r0, #0
 305 000e 4FF40032 		mov	r2, #131072
 306 0012 2426     		movs	r6, #36
 307 0014 4FF48075 		mov	r5, #256
 308 0018 4FF40024 		mov	r4, #524288
 309 001c 5860     		str	r0, [r3, #4]
 310 001e 5862     		str	r0, [r3, #36]
 311 0020 9862     		str	r0, [r3, #40]
 312 0022 1F60     		str	r7, [r3]
 313 0024 1E60     		str	r6, [r3]
 314 0026 1D60     		str	r5, [r3]
 315 0028 1C60     		str	r4, [r3]
 316 002a 1A60     		str	r2, [r3]
 317 002c 5A68     		ldr	r2, [r3, #4]
 318 002e 42F49872 		orr	r2, r2, #304
 319 0032 5A60     		str	r2, [r3, #4]
 320 0034 59B1     		cbz	r1, .L49
 321 0036 8E68     		ldr	r6, [r1, #8]
 322 0038 4A68     		ldr	r2, [r1, #4]
 323 003a 0D69     		ldr	r5, [r1, #16]
 324 003c CC68     		ldr	r4, [r1, #12]
 325 003e 5968     		ldr	r1, [r3, #4]
 326 0040 3243     		orrs	r2, r2, r6
 327 0042 2A43     		orrs	r2, r2, r5
 328 0044 2243     		orrs	r2, r2, r4
 329 0046 0A43     		orrs	r2, r2, r1
 330 0048 5A60     		str	r2, [r3, #4]
 331 004a F0BC     		pop	{r4, r5, r6, r7}
 332 004c 7047     		bx	lr
 333              	.L49:
 334 004e 0120     		movs	r0, #1
 335 0050 F0BC     		pop	{r4, r5, r6, r7}
 336 0052 7047     		bx	lr
 337              	.L52:
 338              		.align	2
 339              	.L51:
 340 0054 00415355 		.word	1431519488
 341              		.size	usart_init_sync_slave, .-usart_init_sync_slave
 342              		.section	.text.usart_init_rs485,"ax",%progbits
ARM GAS  /tmp/ccDjCk6q.s 			page 7


 343              		.align	1
 344              		.p2align 2,,3
 345              		.global	usart_init_rs485
 346              		.syntax unified
 347              		.thumb
 348              		.thumb_func
 349              		.fpu softvfp
 350              		.type	usart_init_rs485, %function
 351              	usart_init_rs485:
 352              		@ args = 0, pretend = 0, frame = 0
 353              		@ frame_needed = 0, uses_anonymous_args = 0
 354 0000 10B5     		push	{r4, lr}
 355 0002 0446     		mov	r4, r0
 356 0004 FFF7FEFF 		bl	usart_init_rs232
 357 0008 30B9     		cbnz	r0, .L55
 358 000a 6368     		ldr	r3, [r4, #4]
 359 000c 23F00F03 		bic	r3, r3, #15
 360 0010 43F00103 		orr	r3, r3, #1
 361 0014 6360     		str	r3, [r4, #4]
 362 0016 10BD     		pop	{r4, pc}
 363              	.L55:
 364 0018 0120     		movs	r0, #1
 365 001a 10BD     		pop	{r4, pc}
 366              		.size	usart_init_rs485, .-usart_init_rs485
 367              		.section	.text.usart_init_irda,"ax",%progbits
 368              		.align	1
 369              		.p2align 2,,3
 370              		.global	usart_init_irda
 371              		.syntax unified
 372              		.thumb
 373              		.thumb_func
 374              		.fpu softvfp
 375              		.type	usart_init_irda, %function
 376              	usart_init_irda:
 377              		@ args = 0, pretend = 0, frame = 0
 378              		@ frame_needed = 0, uses_anonymous_args = 0
 379 0000 38B5     		push	{r3, r4, r5, lr}
 380 0002 0446     		mov	r4, r0
 381 0004 0D46     		mov	r5, r1
 382 0006 FFF7FEFF 		bl	usart_init_rs232
 383 000a 40B9     		cbnz	r0, .L59
 384 000c 6B69     		ldr	r3, [r5, #20]
 385 000e E364     		str	r3, [r4, #76]
 386 0010 6368     		ldr	r3, [r4, #4]
 387 0012 23F00F03 		bic	r3, r3, #15
 388 0016 43F00803 		orr	r3, r3, #8
 389 001a 6360     		str	r3, [r4, #4]
 390 001c 38BD     		pop	{r3, r4, r5, pc}
 391              	.L59:
 392 001e 0120     		movs	r0, #1
 393 0020 38BD     		pop	{r3, r4, r5, pc}
 394              		.size	usart_init_irda, .-usart_init_irda
 395 0022 00BF     		.section	.text.usart_init_iso7816,"ax",%progbits
 396              		.align	1
 397              		.p2align 2,,3
 398              		.global	usart_init_iso7816
 399              		.syntax unified
ARM GAS  /tmp/ccDjCk6q.s 			page 8


 400              		.thumb
 401              		.thumb_func
 402              		.fpu softvfp
 403              		.type	usart_init_iso7816, %function
 404              	usart_init_iso7816:
 405              		@ args = 0, pretend = 0, frame = 0
 406              		@ frame_needed = 0, uses_anonymous_args = 0
 407 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 408 0002 314B     		ldr	r3, .L80
 409 0004 314C     		ldr	r4, .L80+4
 410 0006 C0F8E430 		str	r3, [r0, #228]
 411 000a 0023     		movs	r3, #0
 412 000c 4360     		str	r3, [r0, #4]
 413 000e 4FF0880E 		mov	lr, #136
 414 0012 4362     		str	r3, [r0, #36]
 415 0014 2427     		movs	r7, #36
 416 0016 8362     		str	r3, [r0, #40]
 417 0018 4FF48076 		mov	r6, #256
 418 001c 2360     		str	r3, [r4]
 419 001e 4FF40025 		mov	r5, #524288
 420 0022 4FF40033 		mov	r3, #131072
 421 0026 C0F800E0 		str	lr, [r0]
 422 002a 0760     		str	r7, [r0]
 423 002c 0660     		str	r6, [r0]
 424 002e 0560     		str	r5, [r0]
 425 0030 0360     		str	r3, [r0]
 426 0032 19B1     		cbz	r1, .L64
 427 0034 8B68     		ldr	r3, [r1, #8]
 428 0036 33F40075 		bics	r5, r3, #512
 429 003a 01D0     		beq	.L79
 430              	.L64:
 431 003c 0120     		movs	r0, #1
 432 003e F0BD     		pop	{r4, r5, r6, r7, pc}
 433              	.L79:
 434 0040 CD69     		ldr	r5, [r1, #28]
 435 0042 002D     		cmp	r5, #0
 436 0044 34D1     		bne	.L65
 437 0046 4D69     		ldr	r5, [r1, #20]
 438 0048 8E69     		ldr	r6, [r1, #24]
 439 004a 2D06     		lsls	r5, r5, #24
 440 004c 45F40057 		orr	r7, r5, #8192
 441 0050 47F00407 		orr	r7, r7, #4
 442 0054 2760     		str	r7, [r4]
 443 0056 26B1     		cbz	r6, .L66
 444 0058 45F49035 		orr	r5, r5, #73728
 445 005c 45F00405 		orr	r5, r5, #4
 446 0060 2560     		str	r5, [r4]
 447              	.L66:
 448 0062 0D68     		ldr	r5, [r1]
 449 0064 4FF6FE76 		movw	r6, #65534
 450 0068 02EB5502 		add	r2, r2, r5, lsr #1
 451 006c B2FBF5F2 		udiv	r2, r2, r5
 452 0070 551E     		subs	r5, r2, #1
 453 0072 B542     		cmp	r5, r6
 454 0074 E2D8     		bhi	.L64
 455 0076 4568     		ldr	r5, [r0, #4]
 456 0078 2668     		ldr	r6, [r4]
ARM GAS  /tmp/ccDjCk6q.s 			page 9


 457 007a CF68     		ldr	r7, [r1, #12]
 458 007c 25F44025 		bic	r5, r5, #786432
 459 0080 25F49875 		bic	r5, r5, #304
 460 0084 3343     		orrs	r3, r3, r6
 461 0086 45F48025 		orr	r5, r5, #262144
 462 008a 4E68     		ldr	r6, [r1, #4]
 463 008c 2360     		str	r3, [r4]
 464 008e 4560     		str	r5, [r0, #4]
 465 0090 0262     		str	r2, [r0, #32]
 466 0092 0664     		str	r6, [r0, #64]
 467 0094 17B1     		cbz	r7, .L67
 468 0096 43F48013 		orr	r3, r3, #1048576
 469 009a 2360     		str	r3, [r4]
 470              	.L67:
 471 009c 0A69     		ldr	r2, [r1, #16]
 472 009e 12B1     		cbz	r2, .L68
 473 00a0 43F40013 		orr	r3, r3, #2097152
 474 00a4 2360     		str	r3, [r4]
 475              	.L68:
 476 00a6 4268     		ldr	r2, [r0, #4]
 477 00a8 1343     		orrs	r3, r3, r2
 478 00aa 4360     		str	r3, [r0, #4]
 479 00ac 0020     		movs	r0, #0
 480 00ae F0BD     		pop	{r4, r5, r6, r7, pc}
 481              	.L65:
 482 00b0 012D     		cmp	r5, #1
 483 00b2 C3D1     		bne	.L64
 484 00b4 8D69     		ldr	r5, [r1, #24]
 485 00b6 002D     		cmp	r5, #0
 486 00b8 C0D1     		bne	.L64
 487 00ba 4D69     		ldr	r5, [r1, #20]
 488 00bc 002D     		cmp	r5, #0
 489 00be BDD1     		bne	.L64
 490 00c0 0625     		movs	r5, #6
 491 00c2 2560     		str	r5, [r4]
 492 00c4 CDE7     		b	.L66
 493              	.L81:
 494 00c6 00BF     		.align	2
 495              	.L80:
 496 00c8 00415355 		.word	1431519488
 497 00cc 00000000 		.word	.LANCHOR1
 498              		.size	usart_init_iso7816, .-usart_init_iso7816
 499              		.section	.text.usart_reset_iterations,"ax",%progbits
 500              		.align	1
 501              		.p2align 2,,3
 502              		.global	usart_reset_iterations
 503              		.syntax unified
 504              		.thumb
 505              		.thumb_func
 506              		.fpu softvfp
 507              		.type	usart_reset_iterations, %function
 508              	usart_reset_iterations:
 509              		@ args = 0, pretend = 0, frame = 0
 510              		@ frame_needed = 0, uses_anonymous_args = 0
 511              		@ link register save eliminated.
 512 0000 4FF40053 		mov	r3, #8192
 513 0004 0360     		str	r3, [r0]
ARM GAS  /tmp/ccDjCk6q.s 			page 10


 514 0006 7047     		bx	lr
 515              		.size	usart_reset_iterations, .-usart_reset_iterations
 516              		.section	.text.usart_reset_nack,"ax",%progbits
 517              		.align	1
 518              		.p2align 2,,3
 519              		.global	usart_reset_nack
 520              		.syntax unified
 521              		.thumb
 522              		.thumb_func
 523              		.fpu softvfp
 524              		.type	usart_reset_nack, %function
 525              	usart_reset_nack:
 526              		@ args = 0, pretend = 0, frame = 0
 527              		@ frame_needed = 0, uses_anonymous_args = 0
 528              		@ link register save eliminated.
 529 0000 4FF48043 		mov	r3, #16384
 530 0004 0360     		str	r3, [r0]
 531 0006 7047     		bx	lr
 532              		.size	usart_reset_nack, .-usart_reset_nack
 533              		.section	.text.usart_is_rx_buf_full,"ax",%progbits
 534              		.align	1
 535              		.p2align 2,,3
 536              		.global	usart_is_rx_buf_full
 537              		.syntax unified
 538              		.thumb
 539              		.thumb_func
 540              		.fpu softvfp
 541              		.type	usart_is_rx_buf_full, %function
 542              	usart_is_rx_buf_full:
 543              		@ args = 0, pretend = 0, frame = 0
 544              		@ frame_needed = 0, uses_anonymous_args = 0
 545              		@ link register save eliminated.
 546 0000 4069     		ldr	r0, [r0, #20]
 547 0002 C0F30030 		ubfx	r0, r0, #12, #1
 548 0006 7047     		bx	lr
 549              		.size	usart_is_rx_buf_full, .-usart_is_rx_buf_full
 550              		.section	.text.usart_is_rx_buf_end,"ax",%progbits
 551              		.align	1
 552              		.p2align 2,,3
 553              		.global	usart_is_rx_buf_end
 554              		.syntax unified
 555              		.thumb
 556              		.thumb_func
 557              		.fpu softvfp
 558              		.type	usart_is_rx_buf_end, %function
 559              	usart_is_rx_buf_end:
 560              		@ args = 0, pretend = 0, frame = 0
 561              		@ frame_needed = 0, uses_anonymous_args = 0
 562              		@ link register save eliminated.
 563 0000 4069     		ldr	r0, [r0, #20]
 564 0002 C0F3C000 		ubfx	r0, r0, #3, #1
 565 0006 7047     		bx	lr
 566              		.size	usart_is_rx_buf_end, .-usart_is_rx_buf_end
 567              		.section	.text.usart_is_tx_buf_end,"ax",%progbits
 568              		.align	1
 569              		.p2align 2,,3
 570              		.global	usart_is_tx_buf_end
ARM GAS  /tmp/ccDjCk6q.s 			page 11


 571              		.syntax unified
 572              		.thumb
 573              		.thumb_func
 574              		.fpu softvfp
 575              		.type	usart_is_tx_buf_end, %function
 576              	usart_is_tx_buf_end:
 577              		@ args = 0, pretend = 0, frame = 0
 578              		@ frame_needed = 0, uses_anonymous_args = 0
 579              		@ link register save eliminated.
 580 0000 4069     		ldr	r0, [r0, #20]
 581 0002 C0F30010 		ubfx	r0, r0, #4, #1
 582 0006 7047     		bx	lr
 583              		.size	usart_is_tx_buf_end, .-usart_is_tx_buf_end
 584              		.section	.text.usart_is_tx_buf_empty,"ax",%progbits
 585              		.align	1
 586              		.p2align 2,,3
 587              		.global	usart_is_tx_buf_empty
 588              		.syntax unified
 589              		.thumb
 590              		.thumb_func
 591              		.fpu softvfp
 592              		.type	usart_is_tx_buf_empty, %function
 593              	usart_is_tx_buf_empty:
 594              		@ args = 0, pretend = 0, frame = 0
 595              		@ frame_needed = 0, uses_anonymous_args = 0
 596              		@ link register save eliminated.
 597 0000 4069     		ldr	r0, [r0, #20]
 598 0002 C0F3C020 		ubfx	r0, r0, #11, #1
 599 0006 7047     		bx	lr
 600              		.size	usart_is_tx_buf_empty, .-usart_is_tx_buf_empty
 601              		.section	.text.usart_get_error_number,"ax",%progbits
 602              		.align	1
 603              		.p2align 2,,3
 604              		.global	usart_get_error_number
 605              		.syntax unified
 606              		.thumb
 607              		.thumb_func
 608              		.fpu softvfp
 609              		.type	usart_get_error_number, %function
 610              	usart_get_error_number:
 611              		@ args = 0, pretend = 0, frame = 0
 612              		@ frame_needed = 0, uses_anonymous_args = 0
 613              		@ link register save eliminated.
 614 0000 406C     		ldr	r0, [r0, #68]
 615 0002 C0B2     		uxtb	r0, r0
 616 0004 7047     		bx	lr
 617              		.size	usart_get_error_number, .-usart_get_error_number
 618 0006 00BF     		.section	.text.usart_init_spi_master,"ax",%progbits
 619              		.align	1
 620              		.p2align 2,,3
 621              		.global	usart_init_spi_master
 622              		.syntax unified
 623              		.thumb
 624              		.thumb_func
 625              		.fpu softvfp
 626              		.type	usart_init_spi_master, %function
 627              	usart_init_spi_master:
ARM GAS  /tmp/ccDjCk6q.s 			page 12


 628              		@ args = 0, pretend = 0, frame = 0
 629              		@ frame_needed = 0, uses_anonymous_args = 0
 630 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 631 0002 284B     		ldr	r3, .L100
 632 0004 284C     		ldr	r4, .L100+4
 633 0006 C0F8E430 		str	r3, [r0, #228]
 634 000a 0023     		movs	r3, #0
 635 000c 4360     		str	r3, [r0, #4]
 636 000e 4FF0880E 		mov	lr, #136
 637 0012 4362     		str	r3, [r0, #36]
 638 0014 2427     		movs	r7, #36
 639 0016 8362     		str	r3, [r0, #40]
 640 0018 4FF48076 		mov	r6, #256
 641 001c 2360     		str	r3, [r4]
 642 001e 4FF40025 		mov	r5, #524288
 643 0022 4FF40033 		mov	r3, #131072
 644 0026 C0F800E0 		str	lr, [r0]
 645 002a 0760     		str	r7, [r0]
 646 002c 0660     		str	r6, [r0]
 647 002e 0560     		str	r5, [r0]
 648 0030 0360     		str	r3, [r0]
 649 0032 39B3     		cbz	r1, .L98
 650 0034 8D68     		ldr	r5, [r1, #8]
 651 0036 032D     		cmp	r5, #3
 652 0038 24D8     		bhi	.L98
 653 003a 0B68     		ldr	r3, [r1]
 654 003c 4FF6FB76 		movw	r6, #65531
 655 0040 02EB5302 		add	r2, r2, r3, lsr #1
 656 0044 B2FBF3F2 		udiv	r2, r2, r3
 657 0048 131F     		subs	r3, r2, #4
 658 004a B342     		cmp	r3, r6
 659 004c 1AD8     		bhi	.L98
 660 004e 4B68     		ldr	r3, [r1, #4]
 661 0050 C968     		ldr	r1, [r1, #12]
 662 0052 0262     		str	r2, [r0, #32]
 663 0054 022D     		cmp	r5, #2
 664 0056 43EA0103 		orr	r3, r3, r1
 665 005a 144A     		ldr	r2, .L100+8
 666 005c 1CD0     		beq	.L92
 667 005e 032D     		cmp	r5, #3
 668 0060 12D0     		beq	.L93
 669 0062 23F48033 		bic	r3, r3, #65536
 670 0066 012D     		cmp	r5, #1
 671 0068 15BF     		itete	ne
 672 006a 43F48023 		orrne	r3, r3, #262144
 673 006e 23F48073 		biceq	r3, r3, #256
 674 0072 43F48773 		orrne	r3, r3, #270
 675 0076 1343     		orreq	r3, r3, r2
 676 0078 2360     		str	r3, [r4]
 677              	.L95:
 678 007a 4268     		ldr	r2, [r0, #4]
 679 007c 1343     		orrs	r3, r3, r2
 680 007e 4360     		str	r3, [r0, #4]
 681 0080 0020     		movs	r0, #0
 682 0082 F0BD     		pop	{r4, r5, r6, r7, pc}
 683              	.L98:
 684 0084 0120     		movs	r0, #1
ARM GAS  /tmp/ccDjCk6q.s 			page 13


 685 0086 F0BD     		pop	{r4, r5, r6, r7, pc}
 686              	.L93:
 687 0088 23F48073 		bic	r3, r3, #256
 688 008c 43F4A023 		orr	r3, r3, #327680
 689 0090 43F00E03 		orr	r3, r3, #14
 690 0094 2360     		str	r3, [r4]
 691 0096 F0E7     		b	.L95
 692              	.L92:
 693 0098 43F4A023 		orr	r3, r3, #327680
 694 009c 43F48773 		orr	r3, r3, #270
 695 00a0 2360     		str	r3, [r4]
 696 00a2 EAE7     		b	.L95
 697              	.L101:
 698              		.align	2
 699              	.L100:
 700 00a4 00415355 		.word	1431519488
 701 00a8 00000000 		.word	.LANCHOR2
 702 00ac 0E000400 		.word	262158
 703              		.size	usart_init_spi_master, .-usart_init_spi_master
 704              		.section	.text.usart_init_spi_slave,"ax",%progbits
 705              		.align	1
 706              		.p2align 2,,3
 707              		.global	usart_init_spi_slave
 708              		.syntax unified
 709              		.thumb
 710              		.thumb_func
 711              		.fpu softvfp
 712              		.type	usart_init_spi_slave, %function
 713              	usart_init_spi_slave:
 714              		@ args = 0, pretend = 0, frame = 0
 715              		@ frame_needed = 0, uses_anonymous_args = 0
 716              		@ link register save eliminated.
 717 0000 264B     		ldr	r3, .L112
 718 0002 F0B4     		push	{r4, r5, r6, r7}
 719 0004 4FF40032 		mov	r2, #131072
 720 0008 C0F8E430 		str	r3, [r0, #228]
 721 000c 4FF40024 		mov	r4, #524288
 722 0010 0023     		movs	r3, #0
 723 0012 8827     		movs	r7, #136
 724 0014 2426     		movs	r6, #36
 725 0016 4FF48075 		mov	r5, #256
 726 001a 4360     		str	r3, [r0, #4]
 727 001c 4362     		str	r3, [r0, #36]
 728 001e 8362     		str	r3, [r0, #40]
 729 0020 0760     		str	r7, [r0]
 730 0022 0660     		str	r6, [r0]
 731 0024 0560     		str	r5, [r0]
 732 0026 0460     		str	r4, [r0]
 733 0028 0260     		str	r2, [r0]
 734 002a 4268     		ldr	r2, [r0, #4]
 735 002c 1C4C     		ldr	r4, .L112+4
 736 002e 22F03002 		bic	r2, r2, #48
 737 0032 4260     		str	r2, [r0, #4]
 738 0034 4268     		ldr	r2, [r0, #4]
 739 0036 2360     		str	r3, [r4]
 740 0038 42F03002 		orr	r2, r2, #48
 741 003c 4260     		str	r2, [r0, #4]
ARM GAS  /tmp/ccDjCk6q.s 			page 14


 742 003e E9B1     		cbz	r1, .L110
 743 0040 8D68     		ldr	r5, [r1, #8]
 744 0042 032D     		cmp	r5, #3
 745 0044 1AD8     		bhi	.L110
 746 0046 4B68     		ldr	r3, [r1, #4]
 747 0048 CA68     		ldr	r2, [r1, #12]
 748 004a 022D     		cmp	r5, #2
 749 004c 42EA0302 		orr	r2, r2, r3
 750 0050 17D0     		beq	.L105
 751 0052 032D     		cmp	r5, #3
 752 0054 19D0     		beq	.L106
 753 0056 22F48033 		bic	r3, r2, #65536
 754 005a 012D     		cmp	r5, #1
 755 005c 15BF     		itete	ne
 756 005e 43F48773 		orrne	r3, r3, #270
 757 0062 23F48073 		biceq	r3, r3, #256
 758 0066 43F00103 		orrne	r3, r3, #1
 759 006a 43F00F03 		orreq	r3, r3, #15
 760 006e 2360     		str	r3, [r4]
 761              	.L108:
 762 0070 4268     		ldr	r2, [r0, #4]
 763 0072 1343     		orrs	r3, r3, r2
 764 0074 4360     		str	r3, [r0, #4]
 765 0076 F0BC     		pop	{r4, r5, r6, r7}
 766 0078 0020     		movs	r0, #0
 767 007a 7047     		bx	lr
 768              	.L110:
 769 007c 0120     		movs	r0, #1
 770 007e F0BC     		pop	{r4, r5, r6, r7}
 771 0080 7047     		bx	lr
 772              	.L105:
 773 0082 084B     		ldr	r3, .L112+8
 774 0084 1343     		orrs	r3, r3, r2
 775 0086 2360     		str	r3, [r4]
 776 0088 F2E7     		b	.L108
 777              	.L106:
 778 008a 22F48073 		bic	r3, r2, #256
 779 008e 43F48033 		orr	r3, r3, #65536
 780 0092 43F00F03 		orr	r3, r3, #15
 781 0096 2360     		str	r3, [r4]
 782 0098 EAE7     		b	.L108
 783              	.L113:
 784 009a 00BF     		.align	2
 785              	.L112:
 786 009c 00415355 		.word	1431519488
 787 00a0 00000000 		.word	.LANCHOR3
 788 00a4 0F010100 		.word	65807
 789              		.size	usart_init_spi_slave, .-usart_init_spi_slave
 790              		.section	.text.usart_enable_tx,"ax",%progbits
 791              		.align	1
 792              		.p2align 2,,3
 793              		.global	usart_enable_tx
 794              		.syntax unified
 795              		.thumb
 796              		.thumb_func
 797              		.fpu softvfp
 798              		.type	usart_enable_tx, %function
ARM GAS  /tmp/ccDjCk6q.s 			page 15


 799              	usart_enable_tx:
 800              		@ args = 0, pretend = 0, frame = 0
 801              		@ frame_needed = 0, uses_anonymous_args = 0
 802              		@ link register save eliminated.
 803 0000 4023     		movs	r3, #64
 804 0002 0360     		str	r3, [r0]
 805 0004 7047     		bx	lr
 806              		.size	usart_enable_tx, .-usart_enable_tx
 807 0006 00BF     		.section	.text.usart_disable_tx,"ax",%progbits
 808              		.align	1
 809              		.p2align 2,,3
 810              		.global	usart_disable_tx
 811              		.syntax unified
 812              		.thumb
 813              		.thumb_func
 814              		.fpu softvfp
 815              		.type	usart_disable_tx, %function
 816              	usart_disable_tx:
 817              		@ args = 0, pretend = 0, frame = 0
 818              		@ frame_needed = 0, uses_anonymous_args = 0
 819              		@ link register save eliminated.
 820 0000 8023     		movs	r3, #128
 821 0002 0360     		str	r3, [r0]
 822 0004 7047     		bx	lr
 823              		.size	usart_disable_tx, .-usart_disable_tx
 824 0006 00BF     		.section	.text.usart_reset_tx,"ax",%progbits
 825              		.align	1
 826              		.p2align 2,,3
 827              		.global	usart_reset_tx
 828              		.syntax unified
 829              		.thumb
 830              		.thumb_func
 831              		.fpu softvfp
 832              		.type	usart_reset_tx, %function
 833              	usart_reset_tx:
 834              		@ args = 0, pretend = 0, frame = 0
 835              		@ frame_needed = 0, uses_anonymous_args = 0
 836              		@ link register save eliminated.
 837 0000 8823     		movs	r3, #136
 838 0002 0360     		str	r3, [r0]
 839 0004 7047     		bx	lr
 840              		.size	usart_reset_tx, .-usart_reset_tx
 841 0006 00BF     		.section	.text.usart_set_tx_timeguard,"ax",%progbits
 842              		.align	1
 843              		.p2align 2,,3
 844              		.global	usart_set_tx_timeguard
 845              		.syntax unified
 846              		.thumb
 847              		.thumb_func
 848              		.fpu softvfp
 849              		.type	usart_set_tx_timeguard, %function
 850              	usart_set_tx_timeguard:
 851              		@ args = 0, pretend = 0, frame = 0
 852              		@ frame_needed = 0, uses_anonymous_args = 0
 853              		@ link register save eliminated.
 854 0000 8162     		str	r1, [r0, #40]
 855 0002 7047     		bx	lr
ARM GAS  /tmp/ccDjCk6q.s 			page 16


 856              		.size	usart_set_tx_timeguard, .-usart_set_tx_timeguard
 857              		.section	.text.usart_enable_rx,"ax",%progbits
 858              		.align	1
 859              		.p2align 2,,3
 860              		.global	usart_enable_rx
 861              		.syntax unified
 862              		.thumb
 863              		.thumb_func
 864              		.fpu softvfp
 865              		.type	usart_enable_rx, %function
 866              	usart_enable_rx:
 867              		@ args = 0, pretend = 0, frame = 0
 868              		@ frame_needed = 0, uses_anonymous_args = 0
 869              		@ link register save eliminated.
 870 0000 1023     		movs	r3, #16
 871 0002 0360     		str	r3, [r0]
 872 0004 7047     		bx	lr
 873              		.size	usart_enable_rx, .-usart_enable_rx
 874 0006 00BF     		.section	.text.usart_disable_rx,"ax",%progbits
 875              		.align	1
 876              		.p2align 2,,3
 877              		.global	usart_disable_rx
 878              		.syntax unified
 879              		.thumb
 880              		.thumb_func
 881              		.fpu softvfp
 882              		.type	usart_disable_rx, %function
 883              	usart_disable_rx:
 884              		@ args = 0, pretend = 0, frame = 0
 885              		@ frame_needed = 0, uses_anonymous_args = 0
 886              		@ link register save eliminated.
 887 0000 2023     		movs	r3, #32
 888 0002 0360     		str	r3, [r0]
 889 0004 7047     		bx	lr
 890              		.size	usart_disable_rx, .-usart_disable_rx
 891 0006 00BF     		.section	.text.usart_reset_rx,"ax",%progbits
 892              		.align	1
 893              		.p2align 2,,3
 894              		.global	usart_reset_rx
 895              		.syntax unified
 896              		.thumb
 897              		.thumb_func
 898              		.fpu softvfp
 899              		.type	usart_reset_rx, %function
 900              	usart_reset_rx:
 901              		@ args = 0, pretend = 0, frame = 0
 902              		@ frame_needed = 0, uses_anonymous_args = 0
 903              		@ link register save eliminated.
 904 0000 2423     		movs	r3, #36
 905 0002 0360     		str	r3, [r0]
 906 0004 7047     		bx	lr
 907              		.size	usart_reset_rx, .-usart_reset_rx
 908 0006 00BF     		.section	.text.usart_set_rx_timeout,"ax",%progbits
 909              		.align	1
 910              		.p2align 2,,3
 911              		.global	usart_set_rx_timeout
 912              		.syntax unified
ARM GAS  /tmp/ccDjCk6q.s 			page 17


 913              		.thumb
 914              		.thumb_func
 915              		.fpu softvfp
 916              		.type	usart_set_rx_timeout, %function
 917              	usart_set_rx_timeout:
 918              		@ args = 0, pretend = 0, frame = 0
 919              		@ frame_needed = 0, uses_anonymous_args = 0
 920              		@ link register save eliminated.
 921 0000 4162     		str	r1, [r0, #36]
 922 0002 7047     		bx	lr
 923              		.size	usart_set_rx_timeout, .-usart_set_rx_timeout
 924              		.section	.text.usart_enable_interrupt,"ax",%progbits
 925              		.align	1
 926              		.p2align 2,,3
 927              		.global	usart_enable_interrupt
 928              		.syntax unified
 929              		.thumb
 930              		.thumb_func
 931              		.fpu softvfp
 932              		.type	usart_enable_interrupt, %function
 933              	usart_enable_interrupt:
 934              		@ args = 0, pretend = 0, frame = 0
 935              		@ frame_needed = 0, uses_anonymous_args = 0
 936              		@ link register save eliminated.
 937 0000 8160     		str	r1, [r0, #8]
 938 0002 7047     		bx	lr
 939              		.size	usart_enable_interrupt, .-usart_enable_interrupt
 940              		.section	.text.usart_disable_interrupt,"ax",%progbits
 941              		.align	1
 942              		.p2align 2,,3
 943              		.global	usart_disable_interrupt
 944              		.syntax unified
 945              		.thumb
 946              		.thumb_func
 947              		.fpu softvfp
 948              		.type	usart_disable_interrupt, %function
 949              	usart_disable_interrupt:
 950              		@ args = 0, pretend = 0, frame = 0
 951              		@ frame_needed = 0, uses_anonymous_args = 0
 952              		@ link register save eliminated.
 953 0000 C160     		str	r1, [r0, #12]
 954 0002 7047     		bx	lr
 955              		.size	usart_disable_interrupt, .-usart_disable_interrupt
 956              		.section	.text.usart_get_interrupt_mask,"ax",%progbits
 957              		.align	1
 958              		.p2align 2,,3
 959              		.global	usart_get_interrupt_mask
 960              		.syntax unified
 961              		.thumb
 962              		.thumb_func
 963              		.fpu softvfp
 964              		.type	usart_get_interrupt_mask, %function
 965              	usart_get_interrupt_mask:
 966              		@ args = 0, pretend = 0, frame = 0
 967              		@ frame_needed = 0, uses_anonymous_args = 0
 968              		@ link register save eliminated.
 969 0000 0069     		ldr	r0, [r0, #16]
ARM GAS  /tmp/ccDjCk6q.s 			page 18


 970 0002 7047     		bx	lr
 971              		.size	usart_get_interrupt_mask, .-usart_get_interrupt_mask
 972              		.section	.text.usart_get_status,"ax",%progbits
 973              		.align	1
 974              		.p2align 2,,3
 975              		.global	usart_get_status
 976              		.syntax unified
 977              		.thumb
 978              		.thumb_func
 979              		.fpu softvfp
 980              		.type	usart_get_status, %function
 981              	usart_get_status:
 982              		@ args = 0, pretend = 0, frame = 0
 983              		@ frame_needed = 0, uses_anonymous_args = 0
 984              		@ link register save eliminated.
 985 0000 4069     		ldr	r0, [r0, #20]
 986 0002 7047     		bx	lr
 987              		.size	usart_get_status, .-usart_get_status
 988              		.section	.text.usart_reset_status,"ax",%progbits
 989              		.align	1
 990              		.p2align 2,,3
 991              		.global	usart_reset_status
 992              		.syntax unified
 993              		.thumb
 994              		.thumb_func
 995              		.fpu softvfp
 996              		.type	usart_reset_status, %function
 997              	usart_reset_status:
 998              		@ args = 0, pretend = 0, frame = 0
 999              		@ frame_needed = 0, uses_anonymous_args = 0
 1000              		@ link register save eliminated.
 1001 0000 4FF48073 		mov	r3, #256
 1002 0004 0360     		str	r3, [r0]
 1003 0006 7047     		bx	lr
 1004              		.size	usart_reset_status, .-usart_reset_status
 1005              		.section	.text.usart_start_tx_break,"ax",%progbits
 1006              		.align	1
 1007              		.p2align 2,,3
 1008              		.global	usart_start_tx_break
 1009              		.syntax unified
 1010              		.thumb
 1011              		.thumb_func
 1012              		.fpu softvfp
 1013              		.type	usart_start_tx_break, %function
 1014              	usart_start_tx_break:
 1015              		@ args = 0, pretend = 0, frame = 0
 1016              		@ frame_needed = 0, uses_anonymous_args = 0
 1017              		@ link register save eliminated.
 1018 0000 4FF40073 		mov	r3, #512
 1019 0004 0360     		str	r3, [r0]
 1020 0006 7047     		bx	lr
 1021              		.size	usart_start_tx_break, .-usart_start_tx_break
 1022              		.section	.text.usart_stop_tx_break,"ax",%progbits
 1023              		.align	1
 1024              		.p2align 2,,3
 1025              		.global	usart_stop_tx_break
 1026              		.syntax unified
ARM GAS  /tmp/ccDjCk6q.s 			page 19


 1027              		.thumb
 1028              		.thumb_func
 1029              		.fpu softvfp
 1030              		.type	usart_stop_tx_break, %function
 1031              	usart_stop_tx_break:
 1032              		@ args = 0, pretend = 0, frame = 0
 1033              		@ frame_needed = 0, uses_anonymous_args = 0
 1034              		@ link register save eliminated.
 1035 0000 4FF48063 		mov	r3, #1024
 1036 0004 0360     		str	r3, [r0]
 1037 0006 7047     		bx	lr
 1038              		.size	usart_stop_tx_break, .-usart_stop_tx_break
 1039              		.section	.text.usart_start_rx_timeout,"ax",%progbits
 1040              		.align	1
 1041              		.p2align 2,,3
 1042              		.global	usart_start_rx_timeout
 1043              		.syntax unified
 1044              		.thumb
 1045              		.thumb_func
 1046              		.fpu softvfp
 1047              		.type	usart_start_rx_timeout, %function
 1048              	usart_start_rx_timeout:
 1049              		@ args = 0, pretend = 0, frame = 0
 1050              		@ frame_needed = 0, uses_anonymous_args = 0
 1051              		@ link register save eliminated.
 1052 0000 4FF40063 		mov	r3, #2048
 1053 0004 0360     		str	r3, [r0]
 1054 0006 7047     		bx	lr
 1055              		.size	usart_start_rx_timeout, .-usart_start_rx_timeout
 1056              		.section	.text.usart_send_address,"ax",%progbits
 1057              		.align	1
 1058              		.p2align 2,,3
 1059              		.global	usart_send_address
 1060              		.syntax unified
 1061              		.thumb
 1062              		.thumb_func
 1063              		.fpu softvfp
 1064              		.type	usart_send_address, %function
 1065              	usart_send_address:
 1066              		@ args = 0, pretend = 0, frame = 0
 1067              		@ frame_needed = 0, uses_anonymous_args = 0
 1068              		@ link register save eliminated.
 1069 0000 4368     		ldr	r3, [r0, #4]
 1070 0002 03F44063 		and	r3, r3, #3072
 1071 0006 B3F5406F 		cmp	r3, #3072
 1072 000a 01D0     		beq	.L131
 1073              	.L133:
 1074 000c 0120     		movs	r0, #1
 1075 000e 7047     		bx	lr
 1076              	.L131:
 1077 0010 4FF48053 		mov	r3, #4096
 1078 0014 0360     		str	r3, [r0]
 1079 0016 4369     		ldr	r3, [r0, #20]
 1080 0018 9B07     		lsls	r3, r3, #30
 1081 001a F7D5     		bpl	.L133
 1082 001c C1F30801 		ubfx	r1, r1, #0, #9
 1083 0020 C161     		str	r1, [r0, #28]
ARM GAS  /tmp/ccDjCk6q.s 			page 20


 1084 0022 0020     		movs	r0, #0
 1085 0024 7047     		bx	lr
 1086              		.size	usart_send_address, .-usart_send_address
 1087 0026 00BF     		.section	.text.usart_restart_rx_timeout,"ax",%progbits
 1088              		.align	1
 1089              		.p2align 2,,3
 1090              		.global	usart_restart_rx_timeout
 1091              		.syntax unified
 1092              		.thumb
 1093              		.thumb_func
 1094              		.fpu softvfp
 1095              		.type	usart_restart_rx_timeout, %function
 1096              	usart_restart_rx_timeout:
 1097              		@ args = 0, pretend = 0, frame = 0
 1098              		@ frame_needed = 0, uses_anonymous_args = 0
 1099              		@ link register save eliminated.
 1100 0000 4FF40043 		mov	r3, #32768
 1101 0004 0360     		str	r3, [r0]
 1102 0006 7047     		bx	lr
 1103              		.size	usart_restart_rx_timeout, .-usart_restart_rx_timeout
 1104              		.section	.text.usart_drive_DTR_pin_low,"ax",%progbits
 1105              		.align	1
 1106              		.p2align 2,,3
 1107              		.global	usart_drive_DTR_pin_low
 1108              		.syntax unified
 1109              		.thumb
 1110              		.thumb_func
 1111              		.fpu softvfp
 1112              		.type	usart_drive_DTR_pin_low, %function
 1113              	usart_drive_DTR_pin_low:
 1114              		@ args = 0, pretend = 0, frame = 0
 1115              		@ frame_needed = 0, uses_anonymous_args = 0
 1116              		@ link register save eliminated.
 1117 0000 4FF48033 		mov	r3, #65536
 1118 0004 0360     		str	r3, [r0]
 1119 0006 7047     		bx	lr
 1120              		.size	usart_drive_DTR_pin_low, .-usart_drive_DTR_pin_low
 1121              		.section	.text.usart_drive_DTR_pin_high,"ax",%progbits
 1122              		.align	1
 1123              		.p2align 2,,3
 1124              		.global	usart_drive_DTR_pin_high
 1125              		.syntax unified
 1126              		.thumb
 1127              		.thumb_func
 1128              		.fpu softvfp
 1129              		.type	usart_drive_DTR_pin_high, %function
 1130              	usart_drive_DTR_pin_high:
 1131              		@ args = 0, pretend = 0, frame = 0
 1132              		@ frame_needed = 0, uses_anonymous_args = 0
 1133              		@ link register save eliminated.
 1134 0000 4FF40033 		mov	r3, #131072
 1135 0004 0360     		str	r3, [r0]
 1136 0006 7047     		bx	lr
 1137              		.size	usart_drive_DTR_pin_high, .-usart_drive_DTR_pin_high
 1138              		.section	.text.usart_drive_RTS_pin_low,"ax",%progbits
 1139              		.align	1
 1140              		.p2align 2,,3
ARM GAS  /tmp/ccDjCk6q.s 			page 21


 1141              		.global	usart_drive_RTS_pin_low
 1142              		.syntax unified
 1143              		.thumb
 1144              		.thumb_func
 1145              		.fpu softvfp
 1146              		.type	usart_drive_RTS_pin_low, %function
 1147              	usart_drive_RTS_pin_low:
 1148              		@ args = 0, pretend = 0, frame = 0
 1149              		@ frame_needed = 0, uses_anonymous_args = 0
 1150              		@ link register save eliminated.
 1151 0000 4FF48023 		mov	r3, #262144
 1152 0004 0360     		str	r3, [r0]
 1153 0006 7047     		bx	lr
 1154              		.size	usart_drive_RTS_pin_low, .-usart_drive_RTS_pin_low
 1155              		.section	.text.usart_drive_RTS_pin_high,"ax",%progbits
 1156              		.align	1
 1157              		.p2align 2,,3
 1158              		.global	usart_drive_RTS_pin_high
 1159              		.syntax unified
 1160              		.thumb
 1161              		.thumb_func
 1162              		.fpu softvfp
 1163              		.type	usart_drive_RTS_pin_high, %function
 1164              	usart_drive_RTS_pin_high:
 1165              		@ args = 0, pretend = 0, frame = 0
 1166              		@ frame_needed = 0, uses_anonymous_args = 0
 1167              		@ link register save eliminated.
 1168 0000 4FF40023 		mov	r3, #524288
 1169 0004 0360     		str	r3, [r0]
 1170 0006 7047     		bx	lr
 1171              		.size	usart_drive_RTS_pin_high, .-usart_drive_RTS_pin_high
 1172              		.section	.text.usart_spi_force_chip_select,"ax",%progbits
 1173              		.align	1
 1174              		.p2align 2,,3
 1175              		.global	usart_spi_force_chip_select
 1176              		.syntax unified
 1177              		.thumb
 1178              		.thumb_func
 1179              		.fpu softvfp
 1180              		.type	usart_spi_force_chip_select, %function
 1181              	usart_spi_force_chip_select:
 1182              		@ args = 0, pretend = 0, frame = 0
 1183              		@ frame_needed = 0, uses_anonymous_args = 0
 1184              		@ link register save eliminated.
 1185 0000 4FF48023 		mov	r3, #262144
 1186 0004 0360     		str	r3, [r0]
 1187 0006 7047     		bx	lr
 1188              		.size	usart_spi_force_chip_select, .-usart_spi_force_chip_select
 1189              		.section	.text.usart_spi_release_chip_select,"ax",%progbits
 1190              		.align	1
 1191              		.p2align 2,,3
 1192              		.global	usart_spi_release_chip_select
 1193              		.syntax unified
 1194              		.thumb
 1195              		.thumb_func
 1196              		.fpu softvfp
 1197              		.type	usart_spi_release_chip_select, %function
ARM GAS  /tmp/ccDjCk6q.s 			page 22


 1198              	usart_spi_release_chip_select:
 1199              		@ args = 0, pretend = 0, frame = 0
 1200              		@ frame_needed = 0, uses_anonymous_args = 0
 1201              		@ link register save eliminated.
 1202 0000 4FF40023 		mov	r3, #524288
 1203 0004 0360     		str	r3, [r0]
 1204 0006 7047     		bx	lr
 1205              		.size	usart_spi_release_chip_select, .-usart_spi_release_chip_select
 1206              		.section	.text.usart_is_tx_ready,"ax",%progbits
 1207              		.align	1
 1208              		.p2align 2,,3
 1209              		.global	usart_is_tx_ready
 1210              		.syntax unified
 1211              		.thumb
 1212              		.thumb_func
 1213              		.fpu softvfp
 1214              		.type	usart_is_tx_ready, %function
 1215              	usart_is_tx_ready:
 1216              		@ args = 0, pretend = 0, frame = 0
 1217              		@ frame_needed = 0, uses_anonymous_args = 0
 1218              		@ link register save eliminated.
 1219 0000 4069     		ldr	r0, [r0, #20]
 1220 0002 C0F34000 		ubfx	r0, r0, #1, #1
 1221 0006 7047     		bx	lr
 1222              		.size	usart_is_tx_ready, .-usart_is_tx_ready
 1223              		.section	.text.usart_is_tx_empty,"ax",%progbits
 1224              		.align	1
 1225              		.p2align 2,,3
 1226              		.global	usart_is_tx_empty
 1227              		.syntax unified
 1228              		.thumb
 1229              		.thumb_func
 1230              		.fpu softvfp
 1231              		.type	usart_is_tx_empty, %function
 1232              	usart_is_tx_empty:
 1233              		@ args = 0, pretend = 0, frame = 0
 1234              		@ frame_needed = 0, uses_anonymous_args = 0
 1235              		@ link register save eliminated.
 1236 0000 4069     		ldr	r0, [r0, #20]
 1237 0002 C0F34020 		ubfx	r0, r0, #9, #1
 1238 0006 7047     		bx	lr
 1239              		.size	usart_is_tx_empty, .-usart_is_tx_empty
 1240              		.section	.text.usart_is_rx_ready,"ax",%progbits
 1241              		.align	1
 1242              		.p2align 2,,3
 1243              		.global	usart_is_rx_ready
 1244              		.syntax unified
 1245              		.thumb
 1246              		.thumb_func
 1247              		.fpu softvfp
 1248              		.type	usart_is_rx_ready, %function
 1249              	usart_is_rx_ready:
 1250              		@ args = 0, pretend = 0, frame = 0
 1251              		@ frame_needed = 0, uses_anonymous_args = 0
 1252              		@ link register save eliminated.
 1253 0000 4069     		ldr	r0, [r0, #20]
 1254 0002 00F00100 		and	r0, r0, #1
ARM GAS  /tmp/ccDjCk6q.s 			page 23


 1255 0006 7047     		bx	lr
 1256              		.size	usart_is_rx_ready, .-usart_is_rx_ready
 1257              		.section	.text.usart_write,"ax",%progbits
 1258              		.align	1
 1259              		.p2align 2,,3
 1260              		.global	usart_write
 1261              		.syntax unified
 1262              		.thumb
 1263              		.thumb_func
 1264              		.fpu softvfp
 1265              		.type	usart_write, %function
 1266              	usart_write:
 1267              		@ args = 0, pretend = 0, frame = 0
 1268              		@ frame_needed = 0, uses_anonymous_args = 0
 1269              		@ link register save eliminated.
 1270 0000 4369     		ldr	r3, [r0, #20]
 1271 0002 9B07     		lsls	r3, r3, #30
 1272 0004 43BF     		ittte	mi
 1273 0006 C1F30801 		ubfxmi	r1, r1, #0, #9
 1274 000a C161     		strmi	r1, [r0, #28]
 1275 000c 0020     		movmi	r0, #0
 1276 000e 0120     		movpl	r0, #1
 1277 0010 7047     		bx	lr
 1278              		.size	usart_write, .-usart_write
 1279 0012 00BF     		.section	.text.usart_putchar,"ax",%progbits
 1280              		.align	1
 1281              		.p2align 2,,3
 1282              		.global	usart_putchar
 1283              		.syntax unified
 1284              		.thumb
 1285              		.thumb_func
 1286              		.fpu softvfp
 1287              		.type	usart_putchar, %function
 1288              	usart_putchar:
 1289              		@ args = 0, pretend = 0, frame = 0
 1290              		@ frame_needed = 0, uses_anonymous_args = 0
 1291              		@ link register save eliminated.
 1292              	.L151:
 1293 0000 4369     		ldr	r3, [r0, #20]
 1294 0002 9B07     		lsls	r3, r3, #30
 1295 0004 FCD5     		bpl	.L151
 1296 0006 C1F30801 		ubfx	r1, r1, #0, #9
 1297 000a C161     		str	r1, [r0, #28]
 1298 000c 0020     		movs	r0, #0
 1299 000e 7047     		bx	lr
 1300              		.size	usart_putchar, .-usart_putchar
 1301              		.section	.text.usart_write_line,"ax",%progbits
 1302              		.align	1
 1303              		.p2align 2,,3
 1304              		.global	usart_write_line
 1305              		.syntax unified
 1306              		.thumb
 1307              		.thumb_func
 1308              		.fpu softvfp
 1309              		.type	usart_write_line, %function
 1310              	usart_write_line:
 1311              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccDjCk6q.s 			page 24


 1312              		@ frame_needed = 0, uses_anonymous_args = 0
 1313              		@ link register save eliminated.
 1314 0000 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 1315 0002 3AB1     		cbz	r2, .L154
 1316              	.L156:
 1317 0004 4369     		ldr	r3, [r0, #20]
 1318 0006 9B07     		lsls	r3, r3, #30
 1319 0008 FCD5     		bpl	.L156
 1320 000a C261     		str	r2, [r0, #28]
 1321 000c 11F8012F 		ldrb	r2, [r1, #1]!	@ zero_extendqisi2
 1322 0010 002A     		cmp	r2, #0
 1323 0012 F7D1     		bne	.L156
 1324              	.L154:
 1325 0014 7047     		bx	lr
 1326              		.size	usart_write_line, .-usart_write_line
 1327              		.section	.text.usart_read,"ax",%progbits
 1328              		.align	1
 1329              		.p2align 2,,3
 1330              		.global	usart_read
 1331              		.syntax unified
 1332              		.thumb
 1333              		.thumb_func
 1334              		.fpu softvfp
 1335              		.type	usart_read, %function
 1336              	usart_read:
 1337              		@ args = 0, pretend = 0, frame = 0
 1338              		@ frame_needed = 0, uses_anonymous_args = 0
 1339              		@ link register save eliminated.
 1340 0000 4369     		ldr	r3, [r0, #20]
 1341 0002 DB07     		lsls	r3, r3, #31
 1342 0004 05D5     		bpl	.L164
 1343 0006 8369     		ldr	r3, [r0, #24]
 1344 0008 C3F30803 		ubfx	r3, r3, #0, #9
 1345 000c 0B60     		str	r3, [r1]
 1346 000e 0020     		movs	r0, #0
 1347 0010 7047     		bx	lr
 1348              	.L164:
 1349 0012 0120     		movs	r0, #1
 1350 0014 7047     		bx	lr
 1351              		.size	usart_read, .-usart_read
 1352 0016 00BF     		.section	.text.usart_getchar,"ax",%progbits
 1353              		.align	1
 1354              		.p2align 2,,3
 1355              		.global	usart_getchar
 1356              		.syntax unified
 1357              		.thumb
 1358              		.thumb_func
 1359              		.fpu softvfp
 1360              		.type	usart_getchar, %function
 1361              	usart_getchar:
 1362              		@ args = 0, pretend = 0, frame = 0
 1363              		@ frame_needed = 0, uses_anonymous_args = 0
 1364              		@ link register save eliminated.
 1365              	.L166:
 1366 0000 4369     		ldr	r3, [r0, #20]
 1367 0002 DB07     		lsls	r3, r3, #31
 1368 0004 FCD5     		bpl	.L166
ARM GAS  /tmp/ccDjCk6q.s 			page 25


 1369 0006 8369     		ldr	r3, [r0, #24]
 1370 0008 C3F30803 		ubfx	r3, r3, #0, #9
 1371 000c 0B60     		str	r3, [r1]
 1372 000e 0020     		movs	r0, #0
 1373 0010 7047     		bx	lr
 1374              		.size	usart_getchar, .-usart_getchar
 1375 0012 00BF     		.section	.text.usart_get_pdc_base,"ax",%progbits
 1376              		.align	1
 1377              		.p2align 2,,3
 1378              		.global	usart_get_pdc_base
 1379              		.syntax unified
 1380              		.thumb
 1381              		.thumb_func
 1382              		.fpu softvfp
 1383              		.type	usart_get_pdc_base, %function
 1384              	usart_get_pdc_base:
 1385              		@ args = 0, pretend = 0, frame = 0
 1386              		@ frame_needed = 0, uses_anonymous_args = 0
 1387              		@ link register save eliminated.
 1388 0000 064B     		ldr	r3, .L173
 1389 0002 9842     		cmp	r0, r3
 1390 0004 07D0     		beq	.L171
 1391 0006 064A     		ldr	r2, .L173+4
 1392 0008 03F58243 		add	r3, r3, #16640
 1393 000c 9042     		cmp	r0, r2
 1394 000e 0CBF     		ite	eq
 1395 0010 1846     		moveq	r0, r3
 1396 0012 0020     		movne	r0, #0
 1397 0014 7047     		bx	lr
 1398              	.L171:
 1399 0016 0348     		ldr	r0, .L173+8
 1400 0018 7047     		bx	lr
 1401              	.L174:
 1402 001a 00BF     		.align	2
 1403              	.L173:
 1404 001c 00400240 		.word	1073889280
 1405 0020 00800240 		.word	1073905664
 1406 0024 00410240 		.word	1073889536
 1407              		.size	usart_get_pdc_base, .-usart_get_pdc_base
 1408              		.section	.text.usart_enable_writeprotect,"ax",%progbits
 1409              		.align	1
 1410              		.p2align 2,,3
 1411              		.global	usart_enable_writeprotect
 1412              		.syntax unified
 1413              		.thumb
 1414              		.thumb_func
 1415              		.fpu softvfp
 1416              		.type	usart_enable_writeprotect, %function
 1417              	usart_enable_writeprotect:
 1418              		@ args = 0, pretend = 0, frame = 0
 1419              		@ frame_needed = 0, uses_anonymous_args = 0
 1420              		@ link register save eliminated.
 1421 0000 014B     		ldr	r3, .L176
 1422 0002 C0F8E430 		str	r3, [r0, #228]
 1423 0006 7047     		bx	lr
 1424              	.L177:
 1425              		.align	2
ARM GAS  /tmp/ccDjCk6q.s 			page 26


 1426              	.L176:
 1427 0008 01415355 		.word	1431519489
 1428              		.size	usart_enable_writeprotect, .-usart_enable_writeprotect
 1429              		.section	.text.usart_disable_writeprotect,"ax",%progbits
 1430              		.align	1
 1431              		.p2align 2,,3
 1432              		.global	usart_disable_writeprotect
 1433              		.syntax unified
 1434              		.thumb
 1435              		.thumb_func
 1436              		.fpu softvfp
 1437              		.type	usart_disable_writeprotect, %function
 1438              	usart_disable_writeprotect:
 1439              		@ args = 0, pretend = 0, frame = 0
 1440              		@ frame_needed = 0, uses_anonymous_args = 0
 1441              		@ link register save eliminated.
 1442 0000 014B     		ldr	r3, .L179
 1443 0002 C0F8E430 		str	r3, [r0, #228]
 1444 0006 7047     		bx	lr
 1445              	.L180:
 1446              		.align	2
 1447              	.L179:
 1448 0008 00415355 		.word	1431519488
 1449              		.size	usart_disable_writeprotect, .-usart_disable_writeprotect
 1450              		.section	.text.usart_get_writeprotect_status,"ax",%progbits
 1451              		.align	1
 1452              		.p2align 2,,3
 1453              		.global	usart_get_writeprotect_status
 1454              		.syntax unified
 1455              		.thumb
 1456              		.thumb_func
 1457              		.fpu softvfp
 1458              		.type	usart_get_writeprotect_status, %function
 1459              	usart_get_writeprotect_status:
 1460              		@ args = 0, pretend = 0, frame = 0
 1461              		@ frame_needed = 0, uses_anonymous_args = 0
 1462              		@ link register save eliminated.
 1463 0000 D0F8E830 		ldr	r3, [r0, #232]
 1464 0004 13F00100 		ands	r0, r3, #1
 1465 0008 18BF     		it	ne
 1466 000a C3F30F20 		ubfxne	r0, r3, #8, #16
 1467 000e 7047     		bx	lr
 1468              		.size	usart_get_writeprotect_status, .-usart_get_writeprotect_status
 1469              		.section	.text.usart_man_set_tx_pre_len,"ax",%progbits
 1470              		.align	1
 1471              		.p2align 2,,3
 1472              		.global	usart_man_set_tx_pre_len
 1473              		.syntax unified
 1474              		.thumb
 1475              		.thumb_func
 1476              		.fpu softvfp
 1477              		.type	usart_man_set_tx_pre_len, %function
 1478              	usart_man_set_tx_pre_len:
 1479              		@ args = 0, pretend = 0, frame = 0
 1480              		@ frame_needed = 0, uses_anonymous_args = 0
 1481              		@ link register save eliminated.
 1482 0000 01F00F03 		and	r3, r1, #15
ARM GAS  /tmp/ccDjCk6q.s 			page 27


 1483 0004 016D     		ldr	r1, [r0, #80]
 1484 0006 21F00F01 		bic	r1, r1, #15
 1485 000a 1943     		orrs	r1, r1, r3
 1486 000c 0165     		str	r1, [r0, #80]
 1487 000e 7047     		bx	lr
 1488              		.size	usart_man_set_tx_pre_len, .-usart_man_set_tx_pre_len
 1489              		.section	.text.usart_man_set_tx_pre_pattern,"ax",%progbits
 1490              		.align	1
 1491              		.p2align 2,,3
 1492              		.global	usart_man_set_tx_pre_pattern
 1493              		.syntax unified
 1494              		.thumb
 1495              		.thumb_func
 1496              		.fpu softvfp
 1497              		.type	usart_man_set_tx_pre_pattern, %function
 1498              	usart_man_set_tx_pre_pattern:
 1499              		@ args = 0, pretend = 0, frame = 0
 1500              		@ frame_needed = 0, uses_anonymous_args = 0
 1501              		@ link register save eliminated.
 1502 0000 036D     		ldr	r3, [r0, #80]
 1503 0002 23F44073 		bic	r3, r3, #768
 1504 0006 43EA0121 		orr	r1, r3, r1, lsl #8
 1505 000a 0165     		str	r1, [r0, #80]
 1506 000c 7047     		bx	lr
 1507              		.size	usart_man_set_tx_pre_pattern, .-usart_man_set_tx_pre_pattern
 1508 000e 00BF     		.section	.text.usart_man_set_tx_polarity,"ax",%progbits
 1509              		.align	1
 1510              		.p2align 2,,3
 1511              		.global	usart_man_set_tx_polarity
 1512              		.syntax unified
 1513              		.thumb
 1514              		.thumb_func
 1515              		.fpu softvfp
 1516              		.type	usart_man_set_tx_polarity, %function
 1517              	usart_man_set_tx_polarity:
 1518              		@ args = 0, pretend = 0, frame = 0
 1519              		@ frame_needed = 0, uses_anonymous_args = 0
 1520              		@ link register save eliminated.
 1521 0000 036D     		ldr	r3, [r0, #80]
 1522 0002 23F48053 		bic	r3, r3, #4096
 1523 0006 43EA0131 		orr	r1, r3, r1, lsl #12
 1524 000a 0165     		str	r1, [r0, #80]
 1525 000c 7047     		bx	lr
 1526              		.size	usart_man_set_tx_polarity, .-usart_man_set_tx_polarity
 1527 000e 00BF     		.section	.text.usart_man_set_rx_pre_len,"ax",%progbits
 1528              		.align	1
 1529              		.p2align 2,,3
 1530              		.global	usart_man_set_rx_pre_len
 1531              		.syntax unified
 1532              		.thumb
 1533              		.thumb_func
 1534              		.fpu softvfp
 1535              		.type	usart_man_set_rx_pre_len, %function
 1536              	usart_man_set_rx_pre_len:
 1537              		@ args = 0, pretend = 0, frame = 0
 1538              		@ frame_needed = 0, uses_anonymous_args = 0
 1539              		@ link register save eliminated.
ARM GAS  /tmp/ccDjCk6q.s 			page 28


 1540 0000 036D     		ldr	r3, [r0, #80]
 1541 0002 0904     		lsls	r1, r1, #16
 1542 0004 01F47021 		and	r1, r1, #983040
 1543 0008 23F47023 		bic	r3, r3, #983040
 1544 000c 1943     		orrs	r1, r1, r3
 1545 000e 0165     		str	r1, [r0, #80]
 1546 0010 7047     		bx	lr
 1547              		.size	usart_man_set_rx_pre_len, .-usart_man_set_rx_pre_len
 1548 0012 00BF     		.section	.text.usart_man_set_rx_pre_pattern,"ax",%progbits
 1549              		.align	1
 1550              		.p2align 2,,3
 1551              		.global	usart_man_set_rx_pre_pattern
 1552              		.syntax unified
 1553              		.thumb
 1554              		.thumb_func
 1555              		.fpu softvfp
 1556              		.type	usart_man_set_rx_pre_pattern, %function
 1557              	usart_man_set_rx_pre_pattern:
 1558              		@ args = 0, pretend = 0, frame = 0
 1559              		@ frame_needed = 0, uses_anonymous_args = 0
 1560              		@ link register save eliminated.
 1561 0000 036D     		ldr	r3, [r0, #80]
 1562 0002 23F04073 		bic	r3, r3, #50331648
 1563 0006 43EA0161 		orr	r1, r3, r1, lsl #24
 1564 000a 0165     		str	r1, [r0, #80]
 1565 000c 7047     		bx	lr
 1566              		.size	usart_man_set_rx_pre_pattern, .-usart_man_set_rx_pre_pattern
 1567 000e 00BF     		.section	.text.usart_man_set_rx_polarity,"ax",%progbits
 1568              		.align	1
 1569              		.p2align 2,,3
 1570              		.global	usart_man_set_rx_polarity
 1571              		.syntax unified
 1572              		.thumb
 1573              		.thumb_func
 1574              		.fpu softvfp
 1575              		.type	usart_man_set_rx_polarity, %function
 1576              	usart_man_set_rx_polarity:
 1577              		@ args = 0, pretend = 0, frame = 0
 1578              		@ frame_needed = 0, uses_anonymous_args = 0
 1579              		@ link register save eliminated.
 1580 0000 036D     		ldr	r3, [r0, #80]
 1581 0002 23F08053 		bic	r3, r3, #268435456
 1582 0006 43EA0171 		orr	r1, r3, r1, lsl #28
 1583 000a 0165     		str	r1, [r0, #80]
 1584 000c 7047     		bx	lr
 1585              		.size	usart_man_set_rx_polarity, .-usart_man_set_rx_polarity
 1586 000e 00BF     		.section	.text.usart_man_enable_drift_compensation,"ax",%progbits
 1587              		.align	1
 1588              		.p2align 2,,3
 1589              		.global	usart_man_enable_drift_compensation
 1590              		.syntax unified
 1591              		.thumb
 1592              		.thumb_func
 1593              		.fpu softvfp
 1594              		.type	usart_man_enable_drift_compensation, %function
 1595              	usart_man_enable_drift_compensation:
 1596              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccDjCk6q.s 			page 29


 1597              		@ frame_needed = 0, uses_anonymous_args = 0
 1598              		@ link register save eliminated.
 1599 0000 036D     		ldr	r3, [r0, #80]
 1600 0002 43F08043 		orr	r3, r3, #1073741824
 1601 0006 0365     		str	r3, [r0, #80]
 1602 0008 7047     		bx	lr
 1603              		.size	usart_man_enable_drift_compensation, .-usart_man_enable_drift_compensation
 1604 000a 00BF     		.section	.text.usart_man_disable_drift_compensation,"ax",%progbits
 1605              		.align	1
 1606              		.p2align 2,,3
 1607              		.global	usart_man_disable_drift_compensation
 1608              		.syntax unified
 1609              		.thumb
 1610              		.thumb_func
 1611              		.fpu softvfp
 1612              		.type	usart_man_disable_drift_compensation, %function
 1613              	usart_man_disable_drift_compensation:
 1614              		@ args = 0, pretend = 0, frame = 0
 1615              		@ frame_needed = 0, uses_anonymous_args = 0
 1616              		@ link register save eliminated.
 1617 0000 036D     		ldr	r3, [r0, #80]
 1618 0002 23F08043 		bic	r3, r3, #1073741824
 1619 0006 0365     		str	r3, [r0, #80]
 1620 0008 7047     		bx	lr
 1621              		.size	usart_man_disable_drift_compensation, .-usart_man_disable_drift_compensation
 1622 000a 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1623              		.align	2
 1624              		.type	cpu_irq_critical_section_counter, %object
 1625              		.size	cpu_irq_critical_section_counter, 4
 1626              	cpu_irq_critical_section_counter:
 1627 0000 00000000 		.space	4
 1628              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1629              		.type	cpu_irq_prev_interrupt_state, %object
 1630              		.size	cpu_irq_prev_interrupt_state, 1
 1631              	cpu_irq_prev_interrupt_state:
 1632 0000 00       		.space	1
 1633              		.section	.bss.ul_reg_val.7462,"aw",%nobits
 1634              		.align	2
 1635              		.set	.LANCHOR0,. + 0
 1636              		.type	ul_reg_val.7462, %object
 1637              		.size	ul_reg_val.7462, 4
 1638              	ul_reg_val.7462:
 1639 0000 00000000 		.space	4
 1640              		.section	.bss.ul_reg_val.7505,"aw",%nobits
 1641              		.align	2
 1642              		.set	.LANCHOR1,. + 0
 1643              		.type	ul_reg_val.7505, %object
 1644              		.size	ul_reg_val.7505, 4
 1645              	ul_reg_val.7505:
 1646 0000 00000000 		.space	4
 1647              		.section	.bss.ul_reg_val.7532,"aw",%nobits
 1648              		.align	2
 1649              		.set	.LANCHOR2,. + 0
 1650              		.type	ul_reg_val.7532, %object
 1651              		.size	ul_reg_val.7532, 4
 1652              	ul_reg_val.7532:
 1653 0000 00000000 		.space	4
ARM GAS  /tmp/ccDjCk6q.s 			page 30


 1654              		.section	.bss.ul_reg_val.7543,"aw",%nobits
 1655              		.align	2
 1656              		.set	.LANCHOR3,. + 0
 1657              		.type	ul_reg_val.7543, %object
 1658              		.size	ul_reg_val.7543, 4
 1659              	ul_reg_val.7543:
 1660 0000 00000000 		.space	4
 1661              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
