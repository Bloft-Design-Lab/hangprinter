ARM GAS  /tmp/ccoF6Xmb.s 			page 1


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
  13              		.file	"usart.c"
  14              		.section	.text.usart_set_async_baudrate,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	usart_set_async_baudrate
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	usart_set_async_baudrate, %function
  23              	usart_set_async_baudrate:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0B01     		lsls	r3, r1, #4
  28 0002 9342     		cmp	r3, r2
  29 0004 10B4     		push	{r4}
  30 0006 13D8     		bhi	.L15
  31 0008 5908     		lsrs	r1, r3, #1
  32 000a 01EBC202 		add	r2, r1, r2, lsl #3
  33 000e B2FBF3F2 		udiv	r2, r2, r3
  34 0012 D308     		lsrs	r3, r2, #3
  35 0014 5C1E     		subs	r4, r3, #1
  36 0016 4FF6FE71 		movw	r1, #65534
  37 001a 8C42     		cmp	r4, r1
  38 001c 14D8     		bhi	.L8
  39              	.L5:
  40 001e 1204     		lsls	r2, r2, #16
  41 0020 02F4E022 		and	r2, r2, #458752
  42 0024 1A43     		orrs	r2, r2, r3
  43 0026 0262     		str	r2, [r0, #32]
  44 0028 5DF8044B 		ldr	r4, [sp], #4
  45 002c 0020     		movs	r0, #0
  46 002e 7047     		bx	lr
  47              	.L15:
  48 0030 C900     		lsls	r1, r1, #3
  49 0032 4B08     		lsrs	r3, r1, #1
  50 0034 03EBC202 		add	r2, r3, r2, lsl #3
  51 0038 B2FBF1F2 		udiv	r2, r2, r1
  52 003c D308     		lsrs	r3, r2, #3
  53 003e 5C1E     		subs	r4, r3, #1
  54 0040 4FF6FE71 		movw	r1, #65534
  55 0044 8C42     		cmp	r4, r1
  56 0046 03D9     		bls	.L16
  57              	.L8:
ARM GAS  /tmp/ccoF6Xmb.s 			page 2


  58 0048 0120     		movs	r0, #1
  59 004a 5DF8044B 		ldr	r4, [sp], #4
  60 004e 7047     		bx	lr
  61              	.L16:
  62 0050 4168     		ldr	r1, [r0, #4]
  63 0052 41F40021 		orr	r1, r1, #524288
  64 0056 4160     		str	r1, [r0, #4]
  65 0058 E1E7     		b	.L5
  66              		.size	usart_set_async_baudrate, .-usart_set_async_baudrate
  67 005a 00BF     		.section	.text.usart_reset,"ax",%progbits
  68              		.align	1
  69              		.p2align 2,,3
  70              		.global	usart_reset
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu fpv4-sp-d16
  75              		.type	usart_reset, %function
  76              	usart_reset:
  77              		@ args = 0, pretend = 0, frame = 0
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79              		@ link register save eliminated.
  80 0000 70B4     		push	{r4, r5, r6}
  81 0002 0B4B     		ldr	r3, .L19
  82 0004 C0F8E430 		str	r3, [r0, #228]
  83 0008 8826     		movs	r6, #136
  84 000a 0023     		movs	r3, #0
  85 000c 2425     		movs	r5, #36
  86 000e 4FF48074 		mov	r4, #256
  87 0012 4FF40021 		mov	r1, #524288
  88 0016 4FF40032 		mov	r2, #131072
  89 001a 4360     		str	r3, [r0, #4]
  90 001c 4362     		str	r3, [r0, #36]
  91 001e 8362     		str	r3, [r0, #40]
  92 0020 0660     		str	r6, [r0]
  93 0022 0560     		str	r5, [r0]
  94 0024 0460     		str	r4, [r0]
  95 0026 0160     		str	r1, [r0]
  96 0028 70BC     		pop	{r4, r5, r6}
  97 002a 0260     		str	r2, [r0]
  98 002c 7047     		bx	lr
  99              	.L20:
 100 002e 00BF     		.align	2
 101              	.L19:
 102 0030 00415355 		.word	1431519488
 103              		.size	usart_reset, .-usart_reset
 104              		.section	.text.usart_init_rs232,"ax",%progbits
 105              		.align	1
 106              		.p2align 2,,3
 107              		.global	usart_init_rs232
 108              		.syntax unified
 109              		.thumb
 110              		.thumb_func
 111              		.fpu fpv4-sp-d16
 112              		.type	usart_init_rs232, %function
 113              	usart_init_rs232:
 114              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccoF6Xmb.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 117 0002 174C     		ldr	r4, .L26
 118 0004 174E     		ldr	r6, .L26+4
 119 0006 C0F8E440 		str	r4, [r0, #228]
 120 000a 8825     		movs	r5, #136
 121 000c 0024     		movs	r4, #0
 122 000e 4460     		str	r4, [r0, #4]
 123 0010 4FF0240E 		mov	lr, #36
 124 0014 4462     		str	r4, [r0, #36]
 125 0016 3460     		str	r4, [r6]
 126 0018 8462     		str	r4, [r0, #40]
 127 001a 4FF48077 		mov	r7, #256
 128 001e 0560     		str	r5, [r0]
 129 0020 4FF40034 		mov	r4, #131072
 130 0024 4FF40025 		mov	r5, #524288
 131 0028 C0F800E0 		str	lr, [r0]
 132 002c 0760     		str	r7, [r0]
 133 002e 0560     		str	r5, [r0]
 134 0030 0460     		str	r4, [r0]
 135 0032 99B1     		cbz	r1, .L24
 136 0034 0D46     		mov	r5, r1
 137 0036 0968     		ldr	r1, [r1]
 138 0038 0446     		mov	r4, r0
 139 003a FFF7FEFF 		bl	usart_set_async_baudrate
 140 003e 68B9     		cbnz	r0, .L24
 141 0040 6B68     		ldr	r3, [r5, #4]
 142 0042 D5F808E0 		ldr	lr, [r5, #8]
 143 0046 2F69     		ldr	r7, [r5, #16]
 144 0048 E968     		ldr	r1, [r5, #12]
 145 004a 6268     		ldr	r2, [r4, #4]
 146 004c 43EA0E03 		orr	r3, r3, lr
 147 0050 3B43     		orrs	r3, r3, r7
 148 0052 0B43     		orrs	r3, r3, r1
 149 0054 1A43     		orrs	r2, r2, r3
 150 0056 3360     		str	r3, [r6]
 151 0058 6260     		str	r2, [r4, #4]
 152 005a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 153              	.L24:
 154 005c 0120     		movs	r0, #1
 155 005e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 156              	.L27:
 157              		.align	2
 158              	.L26:
 159 0060 00415355 		.word	1431519488
 160 0064 00000000 		.word	.LANCHOR0
 161              		.size	usart_init_rs232, .-usart_init_rs232
 162              		.section	.text.usart_init_hw_handshaking,"ax",%progbits
 163              		.align	1
 164              		.p2align 2,,3
 165              		.global	usart_init_hw_handshaking
 166              		.syntax unified
 167              		.thumb
 168              		.thumb_func
 169              		.fpu fpv4-sp-d16
 170              		.type	usart_init_hw_handshaking, %function
 171              	usart_init_hw_handshaking:
ARM GAS  /tmp/ccoF6Xmb.s 			page 4


 172              		@ args = 0, pretend = 0, frame = 0
 173              		@ frame_needed = 0, uses_anonymous_args = 0
 174 0000 10B5     		push	{r4, lr}
 175 0002 0446     		mov	r4, r0
 176 0004 FFF7FEFF 		bl	usart_init_rs232
 177 0008 30B9     		cbnz	r0, .L30
 178 000a 6368     		ldr	r3, [r4, #4]
 179 000c 23F00F03 		bic	r3, r3, #15
 180 0010 43F00203 		orr	r3, r3, #2
 181 0014 6360     		str	r3, [r4, #4]
 182 0016 10BD     		pop	{r4, pc}
 183              	.L30:
 184 0018 0120     		movs	r0, #1
 185 001a 10BD     		pop	{r4, pc}
 186              		.size	usart_init_hw_handshaking, .-usart_init_hw_handshaking
 187              		.section	.text.usart_init_modem,"ax",%progbits
 188              		.align	1
 189              		.p2align 2,,3
 190              		.global	usart_init_modem
 191              		.syntax unified
 192              		.thumb
 193              		.thumb_func
 194              		.fpu fpv4-sp-d16
 195              		.type	usart_init_modem, %function
 196              	usart_init_modem:
 197              		@ args = 0, pretend = 0, frame = 0
 198              		@ frame_needed = 0, uses_anonymous_args = 0
 199 0000 10B5     		push	{r4, lr}
 200 0002 084C     		ldr	r4, .L37
 201 0004 A042     		cmp	r0, r4
 202 0006 01D0     		beq	.L33
 203              	.L35:
 204 0008 0120     		movs	r0, #1
 205 000a 10BD     		pop	{r4, pc}
 206              	.L33:
 207 000c 0446     		mov	r4, r0
 208 000e FFF7FEFF 		bl	usart_init_rs232
 209 0012 0028     		cmp	r0, #0
 210 0014 F8D1     		bne	.L35
 211 0016 6368     		ldr	r3, [r4, #4]
 212 0018 23F00F03 		bic	r3, r3, #15
 213 001c 43F00303 		orr	r3, r3, #3
 214 0020 6360     		str	r3, [r4, #4]
 215 0022 10BD     		pop	{r4, pc}
 216              	.L38:
 217              		.align	2
 218              	.L37:
 219 0024 00400A40 		.word	1074413568
 220              		.size	usart_init_modem, .-usart_init_modem
 221              		.section	.text.usart_init_sync_master,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	usart_init_sync_master
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccoF6Xmb.s 			page 5


 229              		.type	usart_init_sync_master, %function
 230              	usart_init_sync_master:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233              		@ link register save eliminated.
 234 0000 0346     		mov	r3, r0
 235 0002 1C48     		ldr	r0, .L45
 236 0004 F0B4     		push	{r4, r5, r6, r7}
 237 0006 C3F8E400 		str	r0, [r3, #228]
 238 000a 8824     		movs	r4, #136
 239 000c 0020     		movs	r0, #0
 240 000e 5860     		str	r0, [r3, #4]
 241 0010 2427     		movs	r7, #36
 242 0012 5862     		str	r0, [r3, #36]
 243 0014 4FF48076 		mov	r6, #256
 244 0018 9862     		str	r0, [r3, #40]
 245 001a 4FF40025 		mov	r5, #524288
 246 001e 1C60     		str	r4, [r3]
 247 0020 4FF40034 		mov	r4, #131072
 248 0024 1F60     		str	r7, [r3]
 249 0026 1E60     		str	r6, [r3]
 250 0028 1D60     		str	r5, [r3]
 251 002a 1C60     		str	r4, [r3]
 252 002c 49B1     		cbz	r1, .L42
 253 002e 0C68     		ldr	r4, [r1]
 254 0030 4FF6FE75 		movw	r5, #65534
 255 0034 02EB5402 		add	r2, r2, r4, lsr #1
 256 0038 B2FBF4F2 		udiv	r2, r2, r4
 257 003c 541E     		subs	r4, r2, #1
 258 003e AC42     		cmp	r4, r5
 259 0040 02D9     		bls	.L44
 260              	.L42:
 261 0042 0120     		movs	r0, #1
 262 0044 F0BC     		pop	{r4, r5, r6, r7}
 263 0046 7047     		bx	lr
 264              	.L44:
 265 0048 1A62     		str	r2, [r3, #32]
 266 004a 5C68     		ldr	r4, [r3, #4]
 267 004c 8F68     		ldr	r7, [r1, #8]
 268 004e 4A68     		ldr	r2, [r1, #4]
 269 0050 0E69     		ldr	r6, [r1, #16]
 270 0052 CD68     		ldr	r5, [r1, #12]
 271 0054 24F49871 		bic	r1, r4, #304
 272 0058 41F48071 		orr	r1, r1, #256
 273 005c 3A43     		orrs	r2, r2, r7
 274 005e 5960     		str	r1, [r3, #4]
 275 0060 42F48022 		orr	r2, r2, #262144
 276 0064 5968     		ldr	r1, [r3, #4]
 277 0066 3243     		orrs	r2, r2, r6
 278 0068 2A43     		orrs	r2, r2, r5
 279 006a 0A43     		orrs	r2, r2, r1
 280 006c 5A60     		str	r2, [r3, #4]
 281 006e F0BC     		pop	{r4, r5, r6, r7}
 282 0070 7047     		bx	lr
 283              	.L46:
 284 0072 00BF     		.align	2
 285              	.L45:
ARM GAS  /tmp/ccoF6Xmb.s 			page 6


 286 0074 00415355 		.word	1431519488
 287              		.size	usart_init_sync_master, .-usart_init_sync_master
 288              		.section	.text.usart_init_sync_slave,"ax",%progbits
 289              		.align	1
 290              		.p2align 2,,3
 291              		.global	usart_init_sync_slave
 292              		.syntax unified
 293              		.thumb
 294              		.thumb_func
 295              		.fpu fpv4-sp-d16
 296              		.type	usart_init_sync_slave, %function
 297              	usart_init_sync_slave:
 298              		@ args = 0, pretend = 0, frame = 0
 299              		@ frame_needed = 0, uses_anonymous_args = 0
 300              		@ link register save eliminated.
 301 0000 0346     		mov	r3, r0
 302 0002 144A     		ldr	r2, .L51
 303 0004 F0B4     		push	{r4, r5, r6, r7}
 304 0006 C0F8E420 		str	r2, [r0, #228]
 305 000a 8827     		movs	r7, #136
 306 000c 0020     		movs	r0, #0
 307 000e 4FF40032 		mov	r2, #131072
 308 0012 2426     		movs	r6, #36
 309 0014 4FF48075 		mov	r5, #256
 310 0018 4FF40024 		mov	r4, #524288
 311 001c 5860     		str	r0, [r3, #4]
 312 001e 5862     		str	r0, [r3, #36]
 313 0020 9862     		str	r0, [r3, #40]
 314 0022 1F60     		str	r7, [r3]
 315 0024 1E60     		str	r6, [r3]
 316 0026 1D60     		str	r5, [r3]
 317 0028 1C60     		str	r4, [r3]
 318 002a 1A60     		str	r2, [r3]
 319 002c 5A68     		ldr	r2, [r3, #4]
 320 002e 42F49872 		orr	r2, r2, #304
 321 0032 5A60     		str	r2, [r3, #4]
 322 0034 59B1     		cbz	r1, .L49
 323 0036 8E68     		ldr	r6, [r1, #8]
 324 0038 4A68     		ldr	r2, [r1, #4]
 325 003a 0D69     		ldr	r5, [r1, #16]
 326 003c CC68     		ldr	r4, [r1, #12]
 327 003e 5968     		ldr	r1, [r3, #4]
 328 0040 3243     		orrs	r2, r2, r6
 329 0042 2A43     		orrs	r2, r2, r5
 330 0044 2243     		orrs	r2, r2, r4
 331 0046 0A43     		orrs	r2, r2, r1
 332 0048 5A60     		str	r2, [r3, #4]
 333 004a F0BC     		pop	{r4, r5, r6, r7}
 334 004c 7047     		bx	lr
 335              	.L49:
 336 004e 0120     		movs	r0, #1
 337 0050 F0BC     		pop	{r4, r5, r6, r7}
 338 0052 7047     		bx	lr
 339              	.L52:
 340              		.align	2
 341              	.L51:
 342 0054 00415355 		.word	1431519488
ARM GAS  /tmp/ccoF6Xmb.s 			page 7


 343              		.size	usart_init_sync_slave, .-usart_init_sync_slave
 344              		.section	.text.usart_init_rs485,"ax",%progbits
 345              		.align	1
 346              		.p2align 2,,3
 347              		.global	usart_init_rs485
 348              		.syntax unified
 349              		.thumb
 350              		.thumb_func
 351              		.fpu fpv4-sp-d16
 352              		.type	usart_init_rs485, %function
 353              	usart_init_rs485:
 354              		@ args = 0, pretend = 0, frame = 0
 355              		@ frame_needed = 0, uses_anonymous_args = 0
 356 0000 10B5     		push	{r4, lr}
 357 0002 0446     		mov	r4, r0
 358 0004 FFF7FEFF 		bl	usart_init_rs232
 359 0008 30B9     		cbnz	r0, .L55
 360 000a 6368     		ldr	r3, [r4, #4]
 361 000c 23F00F03 		bic	r3, r3, #15
 362 0010 43F00103 		orr	r3, r3, #1
 363 0014 6360     		str	r3, [r4, #4]
 364 0016 10BD     		pop	{r4, pc}
 365              	.L55:
 366 0018 0120     		movs	r0, #1
 367 001a 10BD     		pop	{r4, pc}
 368              		.size	usart_init_rs485, .-usart_init_rs485
 369              		.section	.text.usart_init_irda,"ax",%progbits
 370              		.align	1
 371              		.p2align 2,,3
 372              		.global	usart_init_irda
 373              		.syntax unified
 374              		.thumb
 375              		.thumb_func
 376              		.fpu fpv4-sp-d16
 377              		.type	usart_init_irda, %function
 378              	usart_init_irda:
 379              		@ args = 0, pretend = 0, frame = 0
 380              		@ frame_needed = 0, uses_anonymous_args = 0
 381 0000 38B5     		push	{r3, r4, r5, lr}
 382 0002 0446     		mov	r4, r0
 383 0004 0D46     		mov	r5, r1
 384 0006 FFF7FEFF 		bl	usart_init_rs232
 385 000a 40B9     		cbnz	r0, .L59
 386 000c 6B69     		ldr	r3, [r5, #20]
 387 000e E364     		str	r3, [r4, #76]
 388 0010 6368     		ldr	r3, [r4, #4]
 389 0012 23F00F03 		bic	r3, r3, #15
 390 0016 43F00803 		orr	r3, r3, #8
 391 001a 6360     		str	r3, [r4, #4]
 392 001c 38BD     		pop	{r3, r4, r5, pc}
 393              	.L59:
 394 001e 0120     		movs	r0, #1
 395 0020 38BD     		pop	{r3, r4, r5, pc}
 396              		.size	usart_init_irda, .-usart_init_irda
 397 0022 00BF     		.section	.text.usart_init_iso7816,"ax",%progbits
 398              		.align	1
 399              		.p2align 2,,3
ARM GAS  /tmp/ccoF6Xmb.s 			page 8


 400              		.global	usart_init_iso7816
 401              		.syntax unified
 402              		.thumb
 403              		.thumb_func
 404              		.fpu fpv4-sp-d16
 405              		.type	usart_init_iso7816, %function
 406              	usart_init_iso7816:
 407              		@ args = 0, pretend = 0, frame = 0
 408              		@ frame_needed = 0, uses_anonymous_args = 0
 409 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 410 0002 314B     		ldr	r3, .L80
 411 0004 314C     		ldr	r4, .L80+4
 412 0006 C0F8E430 		str	r3, [r0, #228]
 413 000a 0023     		movs	r3, #0
 414 000c 4360     		str	r3, [r0, #4]
 415 000e 4FF0880E 		mov	lr, #136
 416 0012 4362     		str	r3, [r0, #36]
 417 0014 2427     		movs	r7, #36
 418 0016 8362     		str	r3, [r0, #40]
 419 0018 4FF48076 		mov	r6, #256
 420 001c 2360     		str	r3, [r4]
 421 001e 4FF40025 		mov	r5, #524288
 422 0022 4FF40033 		mov	r3, #131072
 423 0026 C0F800E0 		str	lr, [r0]
 424 002a 0760     		str	r7, [r0]
 425 002c 0660     		str	r6, [r0]
 426 002e 0560     		str	r5, [r0]
 427 0030 0360     		str	r3, [r0]
 428 0032 19B1     		cbz	r1, .L64
 429 0034 8B68     		ldr	r3, [r1, #8]
 430 0036 33F40075 		bics	r5, r3, #512
 431 003a 01D0     		beq	.L79
 432              	.L64:
 433 003c 0120     		movs	r0, #1
 434 003e F0BD     		pop	{r4, r5, r6, r7, pc}
 435              	.L79:
 436 0040 CD69     		ldr	r5, [r1, #28]
 437 0042 002D     		cmp	r5, #0
 438 0044 34D1     		bne	.L65
 439 0046 4D69     		ldr	r5, [r1, #20]
 440 0048 8E69     		ldr	r6, [r1, #24]
 441 004a 2D06     		lsls	r5, r5, #24
 442 004c 45F40057 		orr	r7, r5, #8192
 443 0050 47F00407 		orr	r7, r7, #4
 444 0054 2760     		str	r7, [r4]
 445 0056 26B1     		cbz	r6, .L66
 446 0058 45F49035 		orr	r5, r5, #73728
 447 005c 45F00405 		orr	r5, r5, #4
 448 0060 2560     		str	r5, [r4]
 449              	.L66:
 450 0062 0D68     		ldr	r5, [r1]
 451 0064 4FF6FE76 		movw	r6, #65534
 452 0068 02EB5502 		add	r2, r2, r5, lsr #1
 453 006c B2FBF5F2 		udiv	r2, r2, r5
 454 0070 551E     		subs	r5, r2, #1
 455 0072 B542     		cmp	r5, r6
 456 0074 E2D8     		bhi	.L64
ARM GAS  /tmp/ccoF6Xmb.s 			page 9


 457 0076 4568     		ldr	r5, [r0, #4]
 458 0078 2668     		ldr	r6, [r4]
 459 007a CF68     		ldr	r7, [r1, #12]
 460 007c 25F44025 		bic	r5, r5, #786432
 461 0080 25F49875 		bic	r5, r5, #304
 462 0084 3343     		orrs	r3, r3, r6
 463 0086 45F48025 		orr	r5, r5, #262144
 464 008a 4E68     		ldr	r6, [r1, #4]
 465 008c 2360     		str	r3, [r4]
 466 008e 4560     		str	r5, [r0, #4]
 467 0090 0262     		str	r2, [r0, #32]
 468 0092 0664     		str	r6, [r0, #64]
 469 0094 17B1     		cbz	r7, .L67
 470 0096 43F48013 		orr	r3, r3, #1048576
 471 009a 2360     		str	r3, [r4]
 472              	.L67:
 473 009c 0A69     		ldr	r2, [r1, #16]
 474 009e 12B1     		cbz	r2, .L68
 475 00a0 43F40013 		orr	r3, r3, #2097152
 476 00a4 2360     		str	r3, [r4]
 477              	.L68:
 478 00a6 4268     		ldr	r2, [r0, #4]
 479 00a8 1343     		orrs	r3, r3, r2
 480 00aa 4360     		str	r3, [r0, #4]
 481 00ac 0020     		movs	r0, #0
 482 00ae F0BD     		pop	{r4, r5, r6, r7, pc}
 483              	.L65:
 484 00b0 012D     		cmp	r5, #1
 485 00b2 C3D1     		bne	.L64
 486 00b4 8D69     		ldr	r5, [r1, #24]
 487 00b6 002D     		cmp	r5, #0
 488 00b8 C0D1     		bne	.L64
 489 00ba 4D69     		ldr	r5, [r1, #20]
 490 00bc 002D     		cmp	r5, #0
 491 00be BDD1     		bne	.L64
 492 00c0 0625     		movs	r5, #6
 493 00c2 2560     		str	r5, [r4]
 494 00c4 CDE7     		b	.L66
 495              	.L81:
 496 00c6 00BF     		.align	2
 497              	.L80:
 498 00c8 00415355 		.word	1431519488
 499 00cc 00000000 		.word	.LANCHOR1
 500              		.size	usart_init_iso7816, .-usart_init_iso7816
 501              		.section	.text.usart_reset_iterations,"ax",%progbits
 502              		.align	1
 503              		.p2align 2,,3
 504              		.global	usart_reset_iterations
 505              		.syntax unified
 506              		.thumb
 507              		.thumb_func
 508              		.fpu fpv4-sp-d16
 509              		.type	usart_reset_iterations, %function
 510              	usart_reset_iterations:
 511              		@ args = 0, pretend = 0, frame = 0
 512              		@ frame_needed = 0, uses_anonymous_args = 0
 513              		@ link register save eliminated.
ARM GAS  /tmp/ccoF6Xmb.s 			page 10


 514 0000 4FF40053 		mov	r3, #8192
 515 0004 0360     		str	r3, [r0]
 516 0006 7047     		bx	lr
 517              		.size	usart_reset_iterations, .-usart_reset_iterations
 518              		.section	.text.usart_reset_nack,"ax",%progbits
 519              		.align	1
 520              		.p2align 2,,3
 521              		.global	usart_reset_nack
 522              		.syntax unified
 523              		.thumb
 524              		.thumb_func
 525              		.fpu fpv4-sp-d16
 526              		.type	usart_reset_nack, %function
 527              	usart_reset_nack:
 528              		@ args = 0, pretend = 0, frame = 0
 529              		@ frame_needed = 0, uses_anonymous_args = 0
 530              		@ link register save eliminated.
 531 0000 4FF48043 		mov	r3, #16384
 532 0004 0360     		str	r3, [r0]
 533 0006 7047     		bx	lr
 534              		.size	usart_reset_nack, .-usart_reset_nack
 535              		.section	.text.usart_is_rx_buf_full,"ax",%progbits
 536              		.align	1
 537              		.p2align 2,,3
 538              		.global	usart_is_rx_buf_full
 539              		.syntax unified
 540              		.thumb
 541              		.thumb_func
 542              		.fpu fpv4-sp-d16
 543              		.type	usart_is_rx_buf_full, %function
 544              	usart_is_rx_buf_full:
 545              		@ args = 0, pretend = 0, frame = 0
 546              		@ frame_needed = 0, uses_anonymous_args = 0
 547              		@ link register save eliminated.
 548 0000 4069     		ldr	r0, [r0, #20]
 549 0002 C0F30030 		ubfx	r0, r0, #12, #1
 550 0006 7047     		bx	lr
 551              		.size	usart_is_rx_buf_full, .-usart_is_rx_buf_full
 552              		.section	.text.usart_is_rx_buf_end,"ax",%progbits
 553              		.align	1
 554              		.p2align 2,,3
 555              		.global	usart_is_rx_buf_end
 556              		.syntax unified
 557              		.thumb
 558              		.thumb_func
 559              		.fpu fpv4-sp-d16
 560              		.type	usart_is_rx_buf_end, %function
 561              	usart_is_rx_buf_end:
 562              		@ args = 0, pretend = 0, frame = 0
 563              		@ frame_needed = 0, uses_anonymous_args = 0
 564              		@ link register save eliminated.
 565 0000 4069     		ldr	r0, [r0, #20]
 566 0002 C0F3C000 		ubfx	r0, r0, #3, #1
 567 0006 7047     		bx	lr
 568              		.size	usart_is_rx_buf_end, .-usart_is_rx_buf_end
 569              		.section	.text.usart_is_tx_buf_end,"ax",%progbits
 570              		.align	1
ARM GAS  /tmp/ccoF6Xmb.s 			page 11


 571              		.p2align 2,,3
 572              		.global	usart_is_tx_buf_end
 573              		.syntax unified
 574              		.thumb
 575              		.thumb_func
 576              		.fpu fpv4-sp-d16
 577              		.type	usart_is_tx_buf_end, %function
 578              	usart_is_tx_buf_end:
 579              		@ args = 0, pretend = 0, frame = 0
 580              		@ frame_needed = 0, uses_anonymous_args = 0
 581              		@ link register save eliminated.
 582 0000 4069     		ldr	r0, [r0, #20]
 583 0002 C0F30010 		ubfx	r0, r0, #4, #1
 584 0006 7047     		bx	lr
 585              		.size	usart_is_tx_buf_end, .-usart_is_tx_buf_end
 586              		.section	.text.usart_is_tx_buf_empty,"ax",%progbits
 587              		.align	1
 588              		.p2align 2,,3
 589              		.global	usart_is_tx_buf_empty
 590              		.syntax unified
 591              		.thumb
 592              		.thumb_func
 593              		.fpu fpv4-sp-d16
 594              		.type	usart_is_tx_buf_empty, %function
 595              	usart_is_tx_buf_empty:
 596              		@ args = 0, pretend = 0, frame = 0
 597              		@ frame_needed = 0, uses_anonymous_args = 0
 598              		@ link register save eliminated.
 599 0000 4069     		ldr	r0, [r0, #20]
 600 0002 C0F3C020 		ubfx	r0, r0, #11, #1
 601 0006 7047     		bx	lr
 602              		.size	usart_is_tx_buf_empty, .-usart_is_tx_buf_empty
 603              		.section	.text.usart_get_error_number,"ax",%progbits
 604              		.align	1
 605              		.p2align 2,,3
 606              		.global	usart_get_error_number
 607              		.syntax unified
 608              		.thumb
 609              		.thumb_func
 610              		.fpu fpv4-sp-d16
 611              		.type	usart_get_error_number, %function
 612              	usart_get_error_number:
 613              		@ args = 0, pretend = 0, frame = 0
 614              		@ frame_needed = 0, uses_anonymous_args = 0
 615              		@ link register save eliminated.
 616 0000 406C     		ldr	r0, [r0, #68]
 617 0002 C0B2     		uxtb	r0, r0
 618 0004 7047     		bx	lr
 619              		.size	usart_get_error_number, .-usart_get_error_number
 620 0006 00BF     		.section	.text.usart_init_spi_master,"ax",%progbits
 621              		.align	1
 622              		.p2align 2,,3
 623              		.global	usart_init_spi_master
 624              		.syntax unified
 625              		.thumb
 626              		.thumb_func
 627              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccoF6Xmb.s 			page 12


 628              		.type	usart_init_spi_master, %function
 629              	usart_init_spi_master:
 630              		@ args = 0, pretend = 0, frame = 0
 631              		@ frame_needed = 0, uses_anonymous_args = 0
 632 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 633 0002 284B     		ldr	r3, .L100
 634 0004 284C     		ldr	r4, .L100+4
 635 0006 C0F8E430 		str	r3, [r0, #228]
 636 000a 0023     		movs	r3, #0
 637 000c 4360     		str	r3, [r0, #4]
 638 000e 4FF0880E 		mov	lr, #136
 639 0012 4362     		str	r3, [r0, #36]
 640 0014 2427     		movs	r7, #36
 641 0016 8362     		str	r3, [r0, #40]
 642 0018 4FF48076 		mov	r6, #256
 643 001c 2360     		str	r3, [r4]
 644 001e 4FF40025 		mov	r5, #524288
 645 0022 4FF40033 		mov	r3, #131072
 646 0026 C0F800E0 		str	lr, [r0]
 647 002a 0760     		str	r7, [r0]
 648 002c 0660     		str	r6, [r0]
 649 002e 0560     		str	r5, [r0]
 650 0030 0360     		str	r3, [r0]
 651 0032 39B3     		cbz	r1, .L98
 652 0034 8D68     		ldr	r5, [r1, #8]
 653 0036 032D     		cmp	r5, #3
 654 0038 24D8     		bhi	.L98
 655 003a 0B68     		ldr	r3, [r1]
 656 003c 4FF6FB76 		movw	r6, #65531
 657 0040 02EB5302 		add	r2, r2, r3, lsr #1
 658 0044 B2FBF3F2 		udiv	r2, r2, r3
 659 0048 131F     		subs	r3, r2, #4
 660 004a B342     		cmp	r3, r6
 661 004c 1AD8     		bhi	.L98
 662 004e 4B68     		ldr	r3, [r1, #4]
 663 0050 C968     		ldr	r1, [r1, #12]
 664 0052 0262     		str	r2, [r0, #32]
 665 0054 022D     		cmp	r5, #2
 666 0056 43EA0103 		orr	r3, r3, r1
 667 005a 144A     		ldr	r2, .L100+8
 668 005c 1CD0     		beq	.L92
 669 005e 032D     		cmp	r5, #3
 670 0060 12D0     		beq	.L93
 671 0062 23F48033 		bic	r3, r3, #65536
 672 0066 012D     		cmp	r5, #1
 673 0068 15BF     		itete	ne
 674 006a 43F48023 		orrne	r3, r3, #262144
 675 006e 23F48073 		biceq	r3, r3, #256
 676 0072 43F48773 		orrne	r3, r3, #270
 677 0076 1343     		orreq	r3, r3, r2
 678 0078 2360     		str	r3, [r4]
 679              	.L95:
 680 007a 4268     		ldr	r2, [r0, #4]
 681 007c 1343     		orrs	r3, r3, r2
 682 007e 4360     		str	r3, [r0, #4]
 683 0080 0020     		movs	r0, #0
 684 0082 F0BD     		pop	{r4, r5, r6, r7, pc}
ARM GAS  /tmp/ccoF6Xmb.s 			page 13


 685              	.L98:
 686 0084 0120     		movs	r0, #1
 687 0086 F0BD     		pop	{r4, r5, r6, r7, pc}
 688              	.L93:
 689 0088 23F48073 		bic	r3, r3, #256
 690 008c 43F4A023 		orr	r3, r3, #327680
 691 0090 43F00E03 		orr	r3, r3, #14
 692 0094 2360     		str	r3, [r4]
 693 0096 F0E7     		b	.L95
 694              	.L92:
 695 0098 43F4A023 		orr	r3, r3, #327680
 696 009c 43F48773 		orr	r3, r3, #270
 697 00a0 2360     		str	r3, [r4]
 698 00a2 EAE7     		b	.L95
 699              	.L101:
 700              		.align	2
 701              	.L100:
 702 00a4 00415355 		.word	1431519488
 703 00a8 00000000 		.word	.LANCHOR2
 704 00ac 0E000400 		.word	262158
 705              		.size	usart_init_spi_master, .-usart_init_spi_master
 706              		.section	.text.usart_init_spi_slave,"ax",%progbits
 707              		.align	1
 708              		.p2align 2,,3
 709              		.global	usart_init_spi_slave
 710              		.syntax unified
 711              		.thumb
 712              		.thumb_func
 713              		.fpu fpv4-sp-d16
 714              		.type	usart_init_spi_slave, %function
 715              	usart_init_spi_slave:
 716              		@ args = 0, pretend = 0, frame = 0
 717              		@ frame_needed = 0, uses_anonymous_args = 0
 718              		@ link register save eliminated.
 719 0000 264B     		ldr	r3, .L112
 720 0002 F0B4     		push	{r4, r5, r6, r7}
 721 0004 4FF40032 		mov	r2, #131072
 722 0008 C0F8E430 		str	r3, [r0, #228]
 723 000c 4FF40024 		mov	r4, #524288
 724 0010 0023     		movs	r3, #0
 725 0012 8827     		movs	r7, #136
 726 0014 2426     		movs	r6, #36
 727 0016 4FF48075 		mov	r5, #256
 728 001a 4360     		str	r3, [r0, #4]
 729 001c 4362     		str	r3, [r0, #36]
 730 001e 8362     		str	r3, [r0, #40]
 731 0020 0760     		str	r7, [r0]
 732 0022 0660     		str	r6, [r0]
 733 0024 0560     		str	r5, [r0]
 734 0026 0460     		str	r4, [r0]
 735 0028 0260     		str	r2, [r0]
 736 002a 4268     		ldr	r2, [r0, #4]
 737 002c 1C4C     		ldr	r4, .L112+4
 738 002e 22F03002 		bic	r2, r2, #48
 739 0032 4260     		str	r2, [r0, #4]
 740 0034 4268     		ldr	r2, [r0, #4]
 741 0036 2360     		str	r3, [r4]
ARM GAS  /tmp/ccoF6Xmb.s 			page 14


 742 0038 42F03002 		orr	r2, r2, #48
 743 003c 4260     		str	r2, [r0, #4]
 744 003e E9B1     		cbz	r1, .L110
 745 0040 8D68     		ldr	r5, [r1, #8]
 746 0042 032D     		cmp	r5, #3
 747 0044 1AD8     		bhi	.L110
 748 0046 4B68     		ldr	r3, [r1, #4]
 749 0048 CA68     		ldr	r2, [r1, #12]
 750 004a 022D     		cmp	r5, #2
 751 004c 42EA0302 		orr	r2, r2, r3
 752 0050 17D0     		beq	.L105
 753 0052 032D     		cmp	r5, #3
 754 0054 19D0     		beq	.L106
 755 0056 22F48033 		bic	r3, r2, #65536
 756 005a 012D     		cmp	r5, #1
 757 005c 15BF     		itete	ne
 758 005e 43F48773 		orrne	r3, r3, #270
 759 0062 23F48073 		biceq	r3, r3, #256
 760 0066 43F00103 		orrne	r3, r3, #1
 761 006a 43F00F03 		orreq	r3, r3, #15
 762 006e 2360     		str	r3, [r4]
 763              	.L108:
 764 0070 4268     		ldr	r2, [r0, #4]
 765 0072 1343     		orrs	r3, r3, r2
 766 0074 4360     		str	r3, [r0, #4]
 767 0076 F0BC     		pop	{r4, r5, r6, r7}
 768 0078 0020     		movs	r0, #0
 769 007a 7047     		bx	lr
 770              	.L110:
 771 007c 0120     		movs	r0, #1
 772 007e F0BC     		pop	{r4, r5, r6, r7}
 773 0080 7047     		bx	lr
 774              	.L105:
 775 0082 084B     		ldr	r3, .L112+8
 776 0084 1343     		orrs	r3, r3, r2
 777 0086 2360     		str	r3, [r4]
 778 0088 F2E7     		b	.L108
 779              	.L106:
 780 008a 22F48073 		bic	r3, r2, #256
 781 008e 43F48033 		orr	r3, r3, #65536
 782 0092 43F00F03 		orr	r3, r3, #15
 783 0096 2360     		str	r3, [r4]
 784 0098 EAE7     		b	.L108
 785              	.L113:
 786 009a 00BF     		.align	2
 787              	.L112:
 788 009c 00415355 		.word	1431519488
 789 00a0 00000000 		.word	.LANCHOR3
 790 00a4 0F010100 		.word	65807
 791              		.size	usart_init_spi_slave, .-usart_init_spi_slave
 792              		.section	.text.usart_enable_tx,"ax",%progbits
 793              		.align	1
 794              		.p2align 2,,3
 795              		.global	usart_enable_tx
 796              		.syntax unified
 797              		.thumb
 798              		.thumb_func
ARM GAS  /tmp/ccoF6Xmb.s 			page 15


 799              		.fpu fpv4-sp-d16
 800              		.type	usart_enable_tx, %function
 801              	usart_enable_tx:
 802              		@ args = 0, pretend = 0, frame = 0
 803              		@ frame_needed = 0, uses_anonymous_args = 0
 804              		@ link register save eliminated.
 805 0000 4023     		movs	r3, #64
 806 0002 0360     		str	r3, [r0]
 807 0004 7047     		bx	lr
 808              		.size	usart_enable_tx, .-usart_enable_tx
 809 0006 00BF     		.section	.text.usart_disable_tx,"ax",%progbits
 810              		.align	1
 811              		.p2align 2,,3
 812              		.global	usart_disable_tx
 813              		.syntax unified
 814              		.thumb
 815              		.thumb_func
 816              		.fpu fpv4-sp-d16
 817              		.type	usart_disable_tx, %function
 818              	usart_disable_tx:
 819              		@ args = 0, pretend = 0, frame = 0
 820              		@ frame_needed = 0, uses_anonymous_args = 0
 821              		@ link register save eliminated.
 822 0000 8023     		movs	r3, #128
 823 0002 0360     		str	r3, [r0]
 824 0004 7047     		bx	lr
 825              		.size	usart_disable_tx, .-usart_disable_tx
 826 0006 00BF     		.section	.text.usart_reset_tx,"ax",%progbits
 827              		.align	1
 828              		.p2align 2,,3
 829              		.global	usart_reset_tx
 830              		.syntax unified
 831              		.thumb
 832              		.thumb_func
 833              		.fpu fpv4-sp-d16
 834              		.type	usart_reset_tx, %function
 835              	usart_reset_tx:
 836              		@ args = 0, pretend = 0, frame = 0
 837              		@ frame_needed = 0, uses_anonymous_args = 0
 838              		@ link register save eliminated.
 839 0000 8823     		movs	r3, #136
 840 0002 0360     		str	r3, [r0]
 841 0004 7047     		bx	lr
 842              		.size	usart_reset_tx, .-usart_reset_tx
 843 0006 00BF     		.section	.text.usart_set_tx_timeguard,"ax",%progbits
 844              		.align	1
 845              		.p2align 2,,3
 846              		.global	usart_set_tx_timeguard
 847              		.syntax unified
 848              		.thumb
 849              		.thumb_func
 850              		.fpu fpv4-sp-d16
 851              		.type	usart_set_tx_timeguard, %function
 852              	usart_set_tx_timeguard:
 853              		@ args = 0, pretend = 0, frame = 0
 854              		@ frame_needed = 0, uses_anonymous_args = 0
 855              		@ link register save eliminated.
ARM GAS  /tmp/ccoF6Xmb.s 			page 16


 856 0000 8162     		str	r1, [r0, #40]
 857 0002 7047     		bx	lr
 858              		.size	usart_set_tx_timeguard, .-usart_set_tx_timeguard
 859              		.section	.text.usart_enable_rx,"ax",%progbits
 860              		.align	1
 861              		.p2align 2,,3
 862              		.global	usart_enable_rx
 863              		.syntax unified
 864              		.thumb
 865              		.thumb_func
 866              		.fpu fpv4-sp-d16
 867              		.type	usart_enable_rx, %function
 868              	usart_enable_rx:
 869              		@ args = 0, pretend = 0, frame = 0
 870              		@ frame_needed = 0, uses_anonymous_args = 0
 871              		@ link register save eliminated.
 872 0000 1023     		movs	r3, #16
 873 0002 0360     		str	r3, [r0]
 874 0004 7047     		bx	lr
 875              		.size	usart_enable_rx, .-usart_enable_rx
 876 0006 00BF     		.section	.text.usart_disable_rx,"ax",%progbits
 877              		.align	1
 878              		.p2align 2,,3
 879              		.global	usart_disable_rx
 880              		.syntax unified
 881              		.thumb
 882              		.thumb_func
 883              		.fpu fpv4-sp-d16
 884              		.type	usart_disable_rx, %function
 885              	usart_disable_rx:
 886              		@ args = 0, pretend = 0, frame = 0
 887              		@ frame_needed = 0, uses_anonymous_args = 0
 888              		@ link register save eliminated.
 889 0000 2023     		movs	r3, #32
 890 0002 0360     		str	r3, [r0]
 891 0004 7047     		bx	lr
 892              		.size	usart_disable_rx, .-usart_disable_rx
 893 0006 00BF     		.section	.text.usart_reset_rx,"ax",%progbits
 894              		.align	1
 895              		.p2align 2,,3
 896              		.global	usart_reset_rx
 897              		.syntax unified
 898              		.thumb
 899              		.thumb_func
 900              		.fpu fpv4-sp-d16
 901              		.type	usart_reset_rx, %function
 902              	usart_reset_rx:
 903              		@ args = 0, pretend = 0, frame = 0
 904              		@ frame_needed = 0, uses_anonymous_args = 0
 905              		@ link register save eliminated.
 906 0000 2423     		movs	r3, #36
 907 0002 0360     		str	r3, [r0]
 908 0004 7047     		bx	lr
 909              		.size	usart_reset_rx, .-usart_reset_rx
 910 0006 00BF     		.section	.text.usart_set_rx_timeout,"ax",%progbits
 911              		.align	1
 912              		.p2align 2,,3
ARM GAS  /tmp/ccoF6Xmb.s 			page 17


 913              		.global	usart_set_rx_timeout
 914              		.syntax unified
 915              		.thumb
 916              		.thumb_func
 917              		.fpu fpv4-sp-d16
 918              		.type	usart_set_rx_timeout, %function
 919              	usart_set_rx_timeout:
 920              		@ args = 0, pretend = 0, frame = 0
 921              		@ frame_needed = 0, uses_anonymous_args = 0
 922              		@ link register save eliminated.
 923 0000 4162     		str	r1, [r0, #36]
 924 0002 7047     		bx	lr
 925              		.size	usart_set_rx_timeout, .-usart_set_rx_timeout
 926              		.section	.text.usart_enable_interrupt,"ax",%progbits
 927              		.align	1
 928              		.p2align 2,,3
 929              		.global	usart_enable_interrupt
 930              		.syntax unified
 931              		.thumb
 932              		.thumb_func
 933              		.fpu fpv4-sp-d16
 934              		.type	usart_enable_interrupt, %function
 935              	usart_enable_interrupt:
 936              		@ args = 0, pretend = 0, frame = 0
 937              		@ frame_needed = 0, uses_anonymous_args = 0
 938              		@ link register save eliminated.
 939 0000 8160     		str	r1, [r0, #8]
 940 0002 7047     		bx	lr
 941              		.size	usart_enable_interrupt, .-usart_enable_interrupt
 942              		.section	.text.usart_disable_interrupt,"ax",%progbits
 943              		.align	1
 944              		.p2align 2,,3
 945              		.global	usart_disable_interrupt
 946              		.syntax unified
 947              		.thumb
 948              		.thumb_func
 949              		.fpu fpv4-sp-d16
 950              		.type	usart_disable_interrupt, %function
 951              	usart_disable_interrupt:
 952              		@ args = 0, pretend = 0, frame = 0
 953              		@ frame_needed = 0, uses_anonymous_args = 0
 954              		@ link register save eliminated.
 955 0000 C160     		str	r1, [r0, #12]
 956 0002 7047     		bx	lr
 957              		.size	usart_disable_interrupt, .-usart_disable_interrupt
 958              		.section	.text.usart_get_interrupt_mask,"ax",%progbits
 959              		.align	1
 960              		.p2align 2,,3
 961              		.global	usart_get_interrupt_mask
 962              		.syntax unified
 963              		.thumb
 964              		.thumb_func
 965              		.fpu fpv4-sp-d16
 966              		.type	usart_get_interrupt_mask, %function
 967              	usart_get_interrupt_mask:
 968              		@ args = 0, pretend = 0, frame = 0
 969              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccoF6Xmb.s 			page 18


 970              		@ link register save eliminated.
 971 0000 0069     		ldr	r0, [r0, #16]
 972 0002 7047     		bx	lr
 973              		.size	usart_get_interrupt_mask, .-usart_get_interrupt_mask
 974              		.section	.text.usart_get_status,"ax",%progbits
 975              		.align	1
 976              		.p2align 2,,3
 977              		.global	usart_get_status
 978              		.syntax unified
 979              		.thumb
 980              		.thumb_func
 981              		.fpu fpv4-sp-d16
 982              		.type	usart_get_status, %function
 983              	usart_get_status:
 984              		@ args = 0, pretend = 0, frame = 0
 985              		@ frame_needed = 0, uses_anonymous_args = 0
 986              		@ link register save eliminated.
 987 0000 4069     		ldr	r0, [r0, #20]
 988 0002 7047     		bx	lr
 989              		.size	usart_get_status, .-usart_get_status
 990              		.section	.text.usart_reset_status,"ax",%progbits
 991              		.align	1
 992              		.p2align 2,,3
 993              		.global	usart_reset_status
 994              		.syntax unified
 995              		.thumb
 996              		.thumb_func
 997              		.fpu fpv4-sp-d16
 998              		.type	usart_reset_status, %function
 999              	usart_reset_status:
 1000              		@ args = 0, pretend = 0, frame = 0
 1001              		@ frame_needed = 0, uses_anonymous_args = 0
 1002              		@ link register save eliminated.
 1003 0000 4FF48073 		mov	r3, #256
 1004 0004 0360     		str	r3, [r0]
 1005 0006 7047     		bx	lr
 1006              		.size	usart_reset_status, .-usart_reset_status
 1007              		.section	.text.usart_start_tx_break,"ax",%progbits
 1008              		.align	1
 1009              		.p2align 2,,3
 1010              		.global	usart_start_tx_break
 1011              		.syntax unified
 1012              		.thumb
 1013              		.thumb_func
 1014              		.fpu fpv4-sp-d16
 1015              		.type	usart_start_tx_break, %function
 1016              	usart_start_tx_break:
 1017              		@ args = 0, pretend = 0, frame = 0
 1018              		@ frame_needed = 0, uses_anonymous_args = 0
 1019              		@ link register save eliminated.
 1020 0000 4FF40073 		mov	r3, #512
 1021 0004 0360     		str	r3, [r0]
 1022 0006 7047     		bx	lr
 1023              		.size	usart_start_tx_break, .-usart_start_tx_break
 1024              		.section	.text.usart_stop_tx_break,"ax",%progbits
 1025              		.align	1
 1026              		.p2align 2,,3
ARM GAS  /tmp/ccoF6Xmb.s 			page 19


 1027              		.global	usart_stop_tx_break
 1028              		.syntax unified
 1029              		.thumb
 1030              		.thumb_func
 1031              		.fpu fpv4-sp-d16
 1032              		.type	usart_stop_tx_break, %function
 1033              	usart_stop_tx_break:
 1034              		@ args = 0, pretend = 0, frame = 0
 1035              		@ frame_needed = 0, uses_anonymous_args = 0
 1036              		@ link register save eliminated.
 1037 0000 4FF48063 		mov	r3, #1024
 1038 0004 0360     		str	r3, [r0]
 1039 0006 7047     		bx	lr
 1040              		.size	usart_stop_tx_break, .-usart_stop_tx_break
 1041              		.section	.text.usart_start_rx_timeout,"ax",%progbits
 1042              		.align	1
 1043              		.p2align 2,,3
 1044              		.global	usart_start_rx_timeout
 1045              		.syntax unified
 1046              		.thumb
 1047              		.thumb_func
 1048              		.fpu fpv4-sp-d16
 1049              		.type	usart_start_rx_timeout, %function
 1050              	usart_start_rx_timeout:
 1051              		@ args = 0, pretend = 0, frame = 0
 1052              		@ frame_needed = 0, uses_anonymous_args = 0
 1053              		@ link register save eliminated.
 1054 0000 4FF40063 		mov	r3, #2048
 1055 0004 0360     		str	r3, [r0]
 1056 0006 7047     		bx	lr
 1057              		.size	usart_start_rx_timeout, .-usart_start_rx_timeout
 1058              		.section	.text.usart_send_address,"ax",%progbits
 1059              		.align	1
 1060              		.p2align 2,,3
 1061              		.global	usart_send_address
 1062              		.syntax unified
 1063              		.thumb
 1064              		.thumb_func
 1065              		.fpu fpv4-sp-d16
 1066              		.type	usart_send_address, %function
 1067              	usart_send_address:
 1068              		@ args = 0, pretend = 0, frame = 0
 1069              		@ frame_needed = 0, uses_anonymous_args = 0
 1070              		@ link register save eliminated.
 1071 0000 4368     		ldr	r3, [r0, #4]
 1072 0002 03F44063 		and	r3, r3, #3072
 1073 0006 B3F5406F 		cmp	r3, #3072
 1074 000a 01D0     		beq	.L131
 1075              	.L133:
 1076 000c 0120     		movs	r0, #1
 1077 000e 7047     		bx	lr
 1078              	.L131:
 1079 0010 4FF48053 		mov	r3, #4096
 1080 0014 0360     		str	r3, [r0]
 1081 0016 4369     		ldr	r3, [r0, #20]
 1082 0018 9B07     		lsls	r3, r3, #30
 1083 001a F7D5     		bpl	.L133
ARM GAS  /tmp/ccoF6Xmb.s 			page 20


 1084 001c C1F30801 		ubfx	r1, r1, #0, #9
 1085 0020 C161     		str	r1, [r0, #28]
 1086 0022 0020     		movs	r0, #0
 1087 0024 7047     		bx	lr
 1088              		.size	usart_send_address, .-usart_send_address
 1089 0026 00BF     		.section	.text.usart_restart_rx_timeout,"ax",%progbits
 1090              		.align	1
 1091              		.p2align 2,,3
 1092              		.global	usart_restart_rx_timeout
 1093              		.syntax unified
 1094              		.thumb
 1095              		.thumb_func
 1096              		.fpu fpv4-sp-d16
 1097              		.type	usart_restart_rx_timeout, %function
 1098              	usart_restart_rx_timeout:
 1099              		@ args = 0, pretend = 0, frame = 0
 1100              		@ frame_needed = 0, uses_anonymous_args = 0
 1101              		@ link register save eliminated.
 1102 0000 4FF40043 		mov	r3, #32768
 1103 0004 0360     		str	r3, [r0]
 1104 0006 7047     		bx	lr
 1105              		.size	usart_restart_rx_timeout, .-usart_restart_rx_timeout
 1106              		.section	.text.usart_drive_DTR_pin_low,"ax",%progbits
 1107              		.align	1
 1108              		.p2align 2,,3
 1109              		.global	usart_drive_DTR_pin_low
 1110              		.syntax unified
 1111              		.thumb
 1112              		.thumb_func
 1113              		.fpu fpv4-sp-d16
 1114              		.type	usart_drive_DTR_pin_low, %function
 1115              	usart_drive_DTR_pin_low:
 1116              		@ args = 0, pretend = 0, frame = 0
 1117              		@ frame_needed = 0, uses_anonymous_args = 0
 1118              		@ link register save eliminated.
 1119 0000 4FF48033 		mov	r3, #65536
 1120 0004 0360     		str	r3, [r0]
 1121 0006 7047     		bx	lr
 1122              		.size	usart_drive_DTR_pin_low, .-usart_drive_DTR_pin_low
 1123              		.section	.text.usart_drive_DTR_pin_high,"ax",%progbits
 1124              		.align	1
 1125              		.p2align 2,,3
 1126              		.global	usart_drive_DTR_pin_high
 1127              		.syntax unified
 1128              		.thumb
 1129              		.thumb_func
 1130              		.fpu fpv4-sp-d16
 1131              		.type	usart_drive_DTR_pin_high, %function
 1132              	usart_drive_DTR_pin_high:
 1133              		@ args = 0, pretend = 0, frame = 0
 1134              		@ frame_needed = 0, uses_anonymous_args = 0
 1135              		@ link register save eliminated.
 1136 0000 4FF40033 		mov	r3, #131072
 1137 0004 0360     		str	r3, [r0]
 1138 0006 7047     		bx	lr
 1139              		.size	usart_drive_DTR_pin_high, .-usart_drive_DTR_pin_high
 1140              		.section	.text.usart_drive_RTS_pin_low,"ax",%progbits
ARM GAS  /tmp/ccoF6Xmb.s 			page 21


 1141              		.align	1
 1142              		.p2align 2,,3
 1143              		.global	usart_drive_RTS_pin_low
 1144              		.syntax unified
 1145              		.thumb
 1146              		.thumb_func
 1147              		.fpu fpv4-sp-d16
 1148              		.type	usart_drive_RTS_pin_low, %function
 1149              	usart_drive_RTS_pin_low:
 1150              		@ args = 0, pretend = 0, frame = 0
 1151              		@ frame_needed = 0, uses_anonymous_args = 0
 1152              		@ link register save eliminated.
 1153 0000 4FF48023 		mov	r3, #262144
 1154 0004 0360     		str	r3, [r0]
 1155 0006 7047     		bx	lr
 1156              		.size	usart_drive_RTS_pin_low, .-usart_drive_RTS_pin_low
 1157              		.section	.text.usart_drive_RTS_pin_high,"ax",%progbits
 1158              		.align	1
 1159              		.p2align 2,,3
 1160              		.global	usart_drive_RTS_pin_high
 1161              		.syntax unified
 1162              		.thumb
 1163              		.thumb_func
 1164              		.fpu fpv4-sp-d16
 1165              		.type	usart_drive_RTS_pin_high, %function
 1166              	usart_drive_RTS_pin_high:
 1167              		@ args = 0, pretend = 0, frame = 0
 1168              		@ frame_needed = 0, uses_anonymous_args = 0
 1169              		@ link register save eliminated.
 1170 0000 4FF40023 		mov	r3, #524288
 1171 0004 0360     		str	r3, [r0]
 1172 0006 7047     		bx	lr
 1173              		.size	usart_drive_RTS_pin_high, .-usart_drive_RTS_pin_high
 1174              		.section	.text.usart_spi_force_chip_select,"ax",%progbits
 1175              		.align	1
 1176              		.p2align 2,,3
 1177              		.global	usart_spi_force_chip_select
 1178              		.syntax unified
 1179              		.thumb
 1180              		.thumb_func
 1181              		.fpu fpv4-sp-d16
 1182              		.type	usart_spi_force_chip_select, %function
 1183              	usart_spi_force_chip_select:
 1184              		@ args = 0, pretend = 0, frame = 0
 1185              		@ frame_needed = 0, uses_anonymous_args = 0
 1186              		@ link register save eliminated.
 1187 0000 4FF48023 		mov	r3, #262144
 1188 0004 0360     		str	r3, [r0]
 1189 0006 7047     		bx	lr
 1190              		.size	usart_spi_force_chip_select, .-usart_spi_force_chip_select
 1191              		.section	.text.usart_spi_release_chip_select,"ax",%progbits
 1192              		.align	1
 1193              		.p2align 2,,3
 1194              		.global	usart_spi_release_chip_select
 1195              		.syntax unified
 1196              		.thumb
 1197              		.thumb_func
ARM GAS  /tmp/ccoF6Xmb.s 			page 22


 1198              		.fpu fpv4-sp-d16
 1199              		.type	usart_spi_release_chip_select, %function
 1200              	usart_spi_release_chip_select:
 1201              		@ args = 0, pretend = 0, frame = 0
 1202              		@ frame_needed = 0, uses_anonymous_args = 0
 1203              		@ link register save eliminated.
 1204 0000 4FF40023 		mov	r3, #524288
 1205 0004 0360     		str	r3, [r0]
 1206 0006 7047     		bx	lr
 1207              		.size	usart_spi_release_chip_select, .-usart_spi_release_chip_select
 1208              		.section	.text.usart_is_tx_ready,"ax",%progbits
 1209              		.align	1
 1210              		.p2align 2,,3
 1211              		.global	usart_is_tx_ready
 1212              		.syntax unified
 1213              		.thumb
 1214              		.thumb_func
 1215              		.fpu fpv4-sp-d16
 1216              		.type	usart_is_tx_ready, %function
 1217              	usart_is_tx_ready:
 1218              		@ args = 0, pretend = 0, frame = 0
 1219              		@ frame_needed = 0, uses_anonymous_args = 0
 1220              		@ link register save eliminated.
 1221 0000 4069     		ldr	r0, [r0, #20]
 1222 0002 C0F34000 		ubfx	r0, r0, #1, #1
 1223 0006 7047     		bx	lr
 1224              		.size	usart_is_tx_ready, .-usart_is_tx_ready
 1225              		.section	.text.usart_is_tx_empty,"ax",%progbits
 1226              		.align	1
 1227              		.p2align 2,,3
 1228              		.global	usart_is_tx_empty
 1229              		.syntax unified
 1230              		.thumb
 1231              		.thumb_func
 1232              		.fpu fpv4-sp-d16
 1233              		.type	usart_is_tx_empty, %function
 1234              	usart_is_tx_empty:
 1235              		@ args = 0, pretend = 0, frame = 0
 1236              		@ frame_needed = 0, uses_anonymous_args = 0
 1237              		@ link register save eliminated.
 1238 0000 4069     		ldr	r0, [r0, #20]
 1239 0002 C0F34020 		ubfx	r0, r0, #9, #1
 1240 0006 7047     		bx	lr
 1241              		.size	usart_is_tx_empty, .-usart_is_tx_empty
 1242              		.section	.text.usart_is_rx_ready,"ax",%progbits
 1243              		.align	1
 1244              		.p2align 2,,3
 1245              		.global	usart_is_rx_ready
 1246              		.syntax unified
 1247              		.thumb
 1248              		.thumb_func
 1249              		.fpu fpv4-sp-d16
 1250              		.type	usart_is_rx_ready, %function
 1251              	usart_is_rx_ready:
 1252              		@ args = 0, pretend = 0, frame = 0
 1253              		@ frame_needed = 0, uses_anonymous_args = 0
 1254              		@ link register save eliminated.
ARM GAS  /tmp/ccoF6Xmb.s 			page 23


 1255 0000 4069     		ldr	r0, [r0, #20]
 1256 0002 00F00100 		and	r0, r0, #1
 1257 0006 7047     		bx	lr
 1258              		.size	usart_is_rx_ready, .-usart_is_rx_ready
 1259              		.section	.text.usart_write,"ax",%progbits
 1260              		.align	1
 1261              		.p2align 2,,3
 1262              		.global	usart_write
 1263              		.syntax unified
 1264              		.thumb
 1265              		.thumb_func
 1266              		.fpu fpv4-sp-d16
 1267              		.type	usart_write, %function
 1268              	usart_write:
 1269              		@ args = 0, pretend = 0, frame = 0
 1270              		@ frame_needed = 0, uses_anonymous_args = 0
 1271              		@ link register save eliminated.
 1272 0000 4369     		ldr	r3, [r0, #20]
 1273 0002 9B07     		lsls	r3, r3, #30
 1274 0004 43BF     		ittte	mi
 1275 0006 C1F30801 		ubfxmi	r1, r1, #0, #9
 1276 000a C161     		strmi	r1, [r0, #28]
 1277 000c 0020     		movmi	r0, #0
 1278 000e 0120     		movpl	r0, #1
 1279 0010 7047     		bx	lr
 1280              		.size	usart_write, .-usart_write
 1281 0012 00BF     		.section	.text.usart_putchar,"ax",%progbits
 1282              		.align	1
 1283              		.p2align 2,,3
 1284              		.global	usart_putchar
 1285              		.syntax unified
 1286              		.thumb
 1287              		.thumb_func
 1288              		.fpu fpv4-sp-d16
 1289              		.type	usart_putchar, %function
 1290              	usart_putchar:
 1291              		@ args = 0, pretend = 0, frame = 0
 1292              		@ frame_needed = 0, uses_anonymous_args = 0
 1293              		@ link register save eliminated.
 1294              	.L151:
 1295 0000 4369     		ldr	r3, [r0, #20]
 1296 0002 9B07     		lsls	r3, r3, #30
 1297 0004 FCD5     		bpl	.L151
 1298 0006 C1F30801 		ubfx	r1, r1, #0, #9
 1299 000a C161     		str	r1, [r0, #28]
 1300 000c 0020     		movs	r0, #0
 1301 000e 7047     		bx	lr
 1302              		.size	usart_putchar, .-usart_putchar
 1303              		.section	.text.usart_write_line,"ax",%progbits
 1304              		.align	1
 1305              		.p2align 2,,3
 1306              		.global	usart_write_line
 1307              		.syntax unified
 1308              		.thumb
 1309              		.thumb_func
 1310              		.fpu fpv4-sp-d16
 1311              		.type	usart_write_line, %function
ARM GAS  /tmp/ccoF6Xmb.s 			page 24


 1312              	usart_write_line:
 1313              		@ args = 0, pretend = 0, frame = 0
 1314              		@ frame_needed = 0, uses_anonymous_args = 0
 1315              		@ link register save eliminated.
 1316 0000 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 1317 0002 3AB1     		cbz	r2, .L154
 1318              	.L156:
 1319 0004 4369     		ldr	r3, [r0, #20]
 1320 0006 9B07     		lsls	r3, r3, #30
 1321 0008 FCD5     		bpl	.L156
 1322 000a C261     		str	r2, [r0, #28]
 1323 000c 11F8012F 		ldrb	r2, [r1, #1]!	@ zero_extendqisi2
 1324 0010 002A     		cmp	r2, #0
 1325 0012 F7D1     		bne	.L156
 1326              	.L154:
 1327 0014 7047     		bx	lr
 1328              		.size	usart_write_line, .-usart_write_line
 1329              		.section	.text.usart_read,"ax",%progbits
 1330              		.align	1
 1331              		.p2align 2,,3
 1332              		.global	usart_read
 1333              		.syntax unified
 1334              		.thumb
 1335              		.thumb_func
 1336              		.fpu fpv4-sp-d16
 1337              		.type	usart_read, %function
 1338              	usart_read:
 1339              		@ args = 0, pretend = 0, frame = 0
 1340              		@ frame_needed = 0, uses_anonymous_args = 0
 1341              		@ link register save eliminated.
 1342 0000 4369     		ldr	r3, [r0, #20]
 1343 0002 DB07     		lsls	r3, r3, #31
 1344 0004 05D5     		bpl	.L164
 1345 0006 8369     		ldr	r3, [r0, #24]
 1346 0008 C3F30803 		ubfx	r3, r3, #0, #9
 1347 000c 0B60     		str	r3, [r1]
 1348 000e 0020     		movs	r0, #0
 1349 0010 7047     		bx	lr
 1350              	.L164:
 1351 0012 0120     		movs	r0, #1
 1352 0014 7047     		bx	lr
 1353              		.size	usart_read, .-usart_read
 1354 0016 00BF     		.section	.text.usart_getchar,"ax",%progbits
 1355              		.align	1
 1356              		.p2align 2,,3
 1357              		.global	usart_getchar
 1358              		.syntax unified
 1359              		.thumb
 1360              		.thumb_func
 1361              		.fpu fpv4-sp-d16
 1362              		.type	usart_getchar, %function
 1363              	usart_getchar:
 1364              		@ args = 0, pretend = 0, frame = 0
 1365              		@ frame_needed = 0, uses_anonymous_args = 0
 1366              		@ link register save eliminated.
 1367              	.L166:
 1368 0000 4369     		ldr	r3, [r0, #20]
ARM GAS  /tmp/ccoF6Xmb.s 			page 25


 1369 0002 DB07     		lsls	r3, r3, #31
 1370 0004 FCD5     		bpl	.L166
 1371 0006 8369     		ldr	r3, [r0, #24]
 1372 0008 C3F30803 		ubfx	r3, r3, #0, #9
 1373 000c 0B60     		str	r3, [r1]
 1374 000e 0020     		movs	r0, #0
 1375 0010 7047     		bx	lr
 1376              		.size	usart_getchar, .-usart_getchar
 1377 0012 00BF     		.section	.text.usart_get_pdc_base,"ax",%progbits
 1378              		.align	1
 1379              		.p2align 2,,3
 1380              		.global	usart_get_pdc_base
 1381              		.syntax unified
 1382              		.thumb
 1383              		.thumb_func
 1384              		.fpu fpv4-sp-d16
 1385              		.type	usart_get_pdc_base, %function
 1386              	usart_get_pdc_base:
 1387              		@ args = 0, pretend = 0, frame = 0
 1388              		@ frame_needed = 0, uses_anonymous_args = 0
 1389              		@ link register save eliminated.
 1390 0000 064B     		ldr	r3, .L173
 1391 0002 9842     		cmp	r0, r3
 1392 0004 07D0     		beq	.L171
 1393 0006 064A     		ldr	r2, .L173+4
 1394 0008 03F58243 		add	r3, r3, #16640
 1395 000c 9042     		cmp	r0, r2
 1396 000e 0CBF     		ite	eq
 1397 0010 1846     		moveq	r0, r3
 1398 0012 0020     		movne	r0, #0
 1399 0014 7047     		bx	lr
 1400              	.L171:
 1401 0016 0348     		ldr	r0, .L173+8
 1402 0018 7047     		bx	lr
 1403              	.L174:
 1404 001a 00BF     		.align	2
 1405              	.L173:
 1406 001c 00000A40 		.word	1074397184
 1407 0020 00400A40 		.word	1074413568
 1408 0024 00010A40 		.word	1074397440
 1409              		.size	usart_get_pdc_base, .-usart_get_pdc_base
 1410              		.section	.text.usart_enable_writeprotect,"ax",%progbits
 1411              		.align	1
 1412              		.p2align 2,,3
 1413              		.global	usart_enable_writeprotect
 1414              		.syntax unified
 1415              		.thumb
 1416              		.thumb_func
 1417              		.fpu fpv4-sp-d16
 1418              		.type	usart_enable_writeprotect, %function
 1419              	usart_enable_writeprotect:
 1420              		@ args = 0, pretend = 0, frame = 0
 1421              		@ frame_needed = 0, uses_anonymous_args = 0
 1422              		@ link register save eliminated.
 1423 0000 014B     		ldr	r3, .L176
 1424 0002 C0F8E430 		str	r3, [r0, #228]
 1425 0006 7047     		bx	lr
ARM GAS  /tmp/ccoF6Xmb.s 			page 26


 1426              	.L177:
 1427              		.align	2
 1428              	.L176:
 1429 0008 01415355 		.word	1431519489
 1430              		.size	usart_enable_writeprotect, .-usart_enable_writeprotect
 1431              		.section	.text.usart_disable_writeprotect,"ax",%progbits
 1432              		.align	1
 1433              		.p2align 2,,3
 1434              		.global	usart_disable_writeprotect
 1435              		.syntax unified
 1436              		.thumb
 1437              		.thumb_func
 1438              		.fpu fpv4-sp-d16
 1439              		.type	usart_disable_writeprotect, %function
 1440              	usart_disable_writeprotect:
 1441              		@ args = 0, pretend = 0, frame = 0
 1442              		@ frame_needed = 0, uses_anonymous_args = 0
 1443              		@ link register save eliminated.
 1444 0000 014B     		ldr	r3, .L179
 1445 0002 C0F8E430 		str	r3, [r0, #228]
 1446 0006 7047     		bx	lr
 1447              	.L180:
 1448              		.align	2
 1449              	.L179:
 1450 0008 00415355 		.word	1431519488
 1451              		.size	usart_disable_writeprotect, .-usart_disable_writeprotect
 1452              		.section	.text.usart_get_writeprotect_status,"ax",%progbits
 1453              		.align	1
 1454              		.p2align 2,,3
 1455              		.global	usart_get_writeprotect_status
 1456              		.syntax unified
 1457              		.thumb
 1458              		.thumb_func
 1459              		.fpu fpv4-sp-d16
 1460              		.type	usart_get_writeprotect_status, %function
 1461              	usart_get_writeprotect_status:
 1462              		@ args = 0, pretend = 0, frame = 0
 1463              		@ frame_needed = 0, uses_anonymous_args = 0
 1464              		@ link register save eliminated.
 1465 0000 D0F8E830 		ldr	r3, [r0, #232]
 1466 0004 13F00100 		ands	r0, r3, #1
 1467 0008 18BF     		it	ne
 1468 000a C3F30F20 		ubfxne	r0, r3, #8, #16
 1469 000e 7047     		bx	lr
 1470              		.size	usart_get_writeprotect_status, .-usart_get_writeprotect_status
 1471              		.section	.text.usart_man_set_tx_pre_len,"ax",%progbits
 1472              		.align	1
 1473              		.p2align 2,,3
 1474              		.global	usart_man_set_tx_pre_len
 1475              		.syntax unified
 1476              		.thumb
 1477              		.thumb_func
 1478              		.fpu fpv4-sp-d16
 1479              		.type	usart_man_set_tx_pre_len, %function
 1480              	usart_man_set_tx_pre_len:
 1481              		@ args = 0, pretend = 0, frame = 0
 1482              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccoF6Xmb.s 			page 27


 1483              		@ link register save eliminated.
 1484 0000 01F00F03 		and	r3, r1, #15
 1485 0004 016D     		ldr	r1, [r0, #80]
 1486 0006 21F00F01 		bic	r1, r1, #15
 1487 000a 1943     		orrs	r1, r1, r3
 1488 000c 0165     		str	r1, [r0, #80]
 1489 000e 7047     		bx	lr
 1490              		.size	usart_man_set_tx_pre_len, .-usart_man_set_tx_pre_len
 1491              		.section	.text.usart_man_set_tx_pre_pattern,"ax",%progbits
 1492              		.align	1
 1493              		.p2align 2,,3
 1494              		.global	usart_man_set_tx_pre_pattern
 1495              		.syntax unified
 1496              		.thumb
 1497              		.thumb_func
 1498              		.fpu fpv4-sp-d16
 1499              		.type	usart_man_set_tx_pre_pattern, %function
 1500              	usart_man_set_tx_pre_pattern:
 1501              		@ args = 0, pretend = 0, frame = 0
 1502              		@ frame_needed = 0, uses_anonymous_args = 0
 1503              		@ link register save eliminated.
 1504 0000 036D     		ldr	r3, [r0, #80]
 1505 0002 23F44073 		bic	r3, r3, #768
 1506 0006 43EA0121 		orr	r1, r3, r1, lsl #8
 1507 000a 0165     		str	r1, [r0, #80]
 1508 000c 7047     		bx	lr
 1509              		.size	usart_man_set_tx_pre_pattern, .-usart_man_set_tx_pre_pattern
 1510 000e 00BF     		.section	.text.usart_man_set_tx_polarity,"ax",%progbits
 1511              		.align	1
 1512              		.p2align 2,,3
 1513              		.global	usart_man_set_tx_polarity
 1514              		.syntax unified
 1515              		.thumb
 1516              		.thumb_func
 1517              		.fpu fpv4-sp-d16
 1518              		.type	usart_man_set_tx_polarity, %function
 1519              	usart_man_set_tx_polarity:
 1520              		@ args = 0, pretend = 0, frame = 0
 1521              		@ frame_needed = 0, uses_anonymous_args = 0
 1522              		@ link register save eliminated.
 1523 0000 036D     		ldr	r3, [r0, #80]
 1524 0002 23F48053 		bic	r3, r3, #4096
 1525 0006 43EA0131 		orr	r1, r3, r1, lsl #12
 1526 000a 0165     		str	r1, [r0, #80]
 1527 000c 7047     		bx	lr
 1528              		.size	usart_man_set_tx_polarity, .-usart_man_set_tx_polarity
 1529 000e 00BF     		.section	.text.usart_man_set_rx_pre_len,"ax",%progbits
 1530              		.align	1
 1531              		.p2align 2,,3
 1532              		.global	usart_man_set_rx_pre_len
 1533              		.syntax unified
 1534              		.thumb
 1535              		.thumb_func
 1536              		.fpu fpv4-sp-d16
 1537              		.type	usart_man_set_rx_pre_len, %function
 1538              	usart_man_set_rx_pre_len:
 1539              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccoF6Xmb.s 			page 28


 1540              		@ frame_needed = 0, uses_anonymous_args = 0
 1541              		@ link register save eliminated.
 1542 0000 036D     		ldr	r3, [r0, #80]
 1543 0002 0904     		lsls	r1, r1, #16
 1544 0004 01F47021 		and	r1, r1, #983040
 1545 0008 23F47023 		bic	r3, r3, #983040
 1546 000c 1943     		orrs	r1, r1, r3
 1547 000e 0165     		str	r1, [r0, #80]
 1548 0010 7047     		bx	lr
 1549              		.size	usart_man_set_rx_pre_len, .-usart_man_set_rx_pre_len
 1550 0012 00BF     		.section	.text.usart_man_set_rx_pre_pattern,"ax",%progbits
 1551              		.align	1
 1552              		.p2align 2,,3
 1553              		.global	usart_man_set_rx_pre_pattern
 1554              		.syntax unified
 1555              		.thumb
 1556              		.thumb_func
 1557              		.fpu fpv4-sp-d16
 1558              		.type	usart_man_set_rx_pre_pattern, %function
 1559              	usart_man_set_rx_pre_pattern:
 1560              		@ args = 0, pretend = 0, frame = 0
 1561              		@ frame_needed = 0, uses_anonymous_args = 0
 1562              		@ link register save eliminated.
 1563 0000 036D     		ldr	r3, [r0, #80]
 1564 0002 23F04073 		bic	r3, r3, #50331648
 1565 0006 43EA0161 		orr	r1, r3, r1, lsl #24
 1566 000a 0165     		str	r1, [r0, #80]
 1567 000c 7047     		bx	lr
 1568              		.size	usart_man_set_rx_pre_pattern, .-usart_man_set_rx_pre_pattern
 1569 000e 00BF     		.section	.text.usart_man_set_rx_polarity,"ax",%progbits
 1570              		.align	1
 1571              		.p2align 2,,3
 1572              		.global	usart_man_set_rx_polarity
 1573              		.syntax unified
 1574              		.thumb
 1575              		.thumb_func
 1576              		.fpu fpv4-sp-d16
 1577              		.type	usart_man_set_rx_polarity, %function
 1578              	usart_man_set_rx_polarity:
 1579              		@ args = 0, pretend = 0, frame = 0
 1580              		@ frame_needed = 0, uses_anonymous_args = 0
 1581              		@ link register save eliminated.
 1582 0000 036D     		ldr	r3, [r0, #80]
 1583 0002 23F08053 		bic	r3, r3, #268435456
 1584 0006 43EA0171 		orr	r1, r3, r1, lsl #28
 1585 000a 0165     		str	r1, [r0, #80]
 1586 000c 7047     		bx	lr
 1587              		.size	usart_man_set_rx_polarity, .-usart_man_set_rx_polarity
 1588 000e 00BF     		.section	.text.usart_man_enable_drift_compensation,"ax",%progbits
 1589              		.align	1
 1590              		.p2align 2,,3
 1591              		.global	usart_man_enable_drift_compensation
 1592              		.syntax unified
 1593              		.thumb
 1594              		.thumb_func
 1595              		.fpu fpv4-sp-d16
 1596              		.type	usart_man_enable_drift_compensation, %function
ARM GAS  /tmp/ccoF6Xmb.s 			page 29


 1597              	usart_man_enable_drift_compensation:
 1598              		@ args = 0, pretend = 0, frame = 0
 1599              		@ frame_needed = 0, uses_anonymous_args = 0
 1600              		@ link register save eliminated.
 1601 0000 036D     		ldr	r3, [r0, #80]
 1602 0002 43F08043 		orr	r3, r3, #1073741824
 1603 0006 0365     		str	r3, [r0, #80]
 1604 0008 7047     		bx	lr
 1605              		.size	usart_man_enable_drift_compensation, .-usart_man_enable_drift_compensation
 1606 000a 00BF     		.section	.text.usart_man_disable_drift_compensation,"ax",%progbits
 1607              		.align	1
 1608              		.p2align 2,,3
 1609              		.global	usart_man_disable_drift_compensation
 1610              		.syntax unified
 1611              		.thumb
 1612              		.thumb_func
 1613              		.fpu fpv4-sp-d16
 1614              		.type	usart_man_disable_drift_compensation, %function
 1615              	usart_man_disable_drift_compensation:
 1616              		@ args = 0, pretend = 0, frame = 0
 1617              		@ frame_needed = 0, uses_anonymous_args = 0
 1618              		@ link register save eliminated.
 1619 0000 036D     		ldr	r3, [r0, #80]
 1620 0002 23F08043 		bic	r3, r3, #1073741824
 1621 0006 0365     		str	r3, [r0, #80]
 1622 0008 7047     		bx	lr
 1623              		.size	usart_man_disable_drift_compensation, .-usart_man_disable_drift_compensation
 1624 000a 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1625              		.align	2
 1626              		.type	cpu_irq_critical_section_counter, %object
 1627              		.size	cpu_irq_critical_section_counter, 4
 1628              	cpu_irq_critical_section_counter:
 1629 0000 00000000 		.space	4
 1630              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1631              		.type	cpu_irq_prev_interrupt_state, %object
 1632              		.size	cpu_irq_prev_interrupt_state, 1
 1633              	cpu_irq_prev_interrupt_state:
 1634 0000 00       		.space	1
 1635              		.section	.bss.ul_reg_val.8810,"aw",%nobits
 1636              		.align	2
 1637              		.set	.LANCHOR0,. + 0
 1638              		.type	ul_reg_val.8810, %object
 1639              		.size	ul_reg_val.8810, 4
 1640              	ul_reg_val.8810:
 1641 0000 00000000 		.space	4
 1642              		.section	.bss.ul_reg_val.8853,"aw",%nobits
 1643              		.align	2
 1644              		.set	.LANCHOR1,. + 0
 1645              		.type	ul_reg_val.8853, %object
 1646              		.size	ul_reg_val.8853, 4
 1647              	ul_reg_val.8853:
 1648 0000 00000000 		.space	4
 1649              		.section	.bss.ul_reg_val.8880,"aw",%nobits
 1650              		.align	2
 1651              		.set	.LANCHOR2,. + 0
 1652              		.type	ul_reg_val.8880, %object
 1653              		.size	ul_reg_val.8880, 4
ARM GAS  /tmp/ccoF6Xmb.s 			page 30


 1654              	ul_reg_val.8880:
 1655 0000 00000000 		.space	4
 1656              		.section	.bss.ul_reg_val.8891,"aw",%nobits
 1657              		.align	2
 1658              		.set	.LANCHOR3,. + 0
 1659              		.type	ul_reg_val.8891, %object
 1660              		.size	ul_reg_val.8891, 4
 1661              	ul_reg_val.8891:
 1662 0000 00000000 		.space	4
 1663              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
