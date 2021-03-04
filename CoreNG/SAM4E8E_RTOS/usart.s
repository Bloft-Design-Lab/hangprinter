ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 1


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
  14              		.text
  15              		.section	.text.usart_set_async_baudrate,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	usart_set_async_baudrate
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	usart_set_async_baudrate, %function
  24              	usart_set_async_baudrate:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 10B4     		push	{r4}
  29 0002 0C01     		lsls	r4, r1, #4
  30 0004 9442     		cmp	r4, r2
  31 0006 4FEAC203 		lsl	r3, r2, #3
  32 000a 12D8     		bhi	.L13
  33 000c 03EB5401 		add	r1, r3, r4, lsr #1
  34 0010 B1FBF4F1 		udiv	r1, r1, r4
  35 0014 CB08     		lsrs	r3, r1, #3
  36 0016 5C1E     		subs	r4, r3, #1
  37 0018 4FF6FE72 		movw	r2, #65534
  38 001c 9442     		cmp	r4, r2
  39 001e 13D8     		bhi	.L8
  40              	.L5:
  41 0020 0904     		lsls	r1, r1, #16
  42 0022 01F4E021 		and	r1, r1, #458752
  43 0026 1943     		orrs	r1, r1, r3
  44 0028 0162     		str	r1, [r0, #32]
  45 002a 5DF8044B 		ldr	r4, [sp], #4
  46 002e 0020     		movs	r0, #0
  47 0030 7047     		bx	lr
  48              	.L13:
  49 0032 CA00     		lsls	r2, r1, #3
  50 0034 03EB5201 		add	r1, r3, r2, lsr #1
  51 0038 B1FBF2F1 		udiv	r1, r1, r2
  52 003c CB08     		lsrs	r3, r1, #3
  53 003e 5C1E     		subs	r4, r3, #1
  54 0040 4FF6FE72 		movw	r2, #65534
  55 0044 9442     		cmp	r4, r2
  56 0046 03D9     		bls	.L14
  57              	.L8:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 2


  58 0048 0120     		movs	r0, #1
  59 004a 5DF8044B 		ldr	r4, [sp], #4
  60 004e 7047     		bx	lr
  61              	.L14:
  62 0050 4268     		ldr	r2, [r0, #4]
  63 0052 42F40022 		orr	r2, r2, #524288
  64 0056 4260     		str	r2, [r0, #4]
  65 0058 E2E7     		b	.L5
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
  80 0000 30B4     		push	{r4, r5}
  81 0002 0B4B     		ldr	r3, .L17
  82 0004 C0F8E430 		str	r3, [r0, #228]
  83 0008 0023     		movs	r3, #0
  84 000a 4360     		str	r3, [r0, #4]
  85 000c 8825     		movs	r5, #136
  86 000e 4362     		str	r3, [r0, #36]
  87 0010 2424     		movs	r4, #36
  88 0012 8362     		str	r3, [r0, #40]
  89 0014 4FF48071 		mov	r1, #256
  90 0018 4FF40022 		mov	r2, #524288
  91 001c 4FF40033 		mov	r3, #131072
  92 0020 0560     		str	r5, [r0]
  93 0022 0460     		str	r4, [r0]
  94 0024 0160     		str	r1, [r0]
  95 0026 30BC     		pop	{r4, r5}
  96 0028 0260     		str	r2, [r0]
  97 002a 0360     		str	r3, [r0]
  98 002c 7047     		bx	lr
  99              	.L18:
 100 002e 00BF     		.align	2
 101              	.L17:
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 117 0002 154C     		ldr	r4, .L24
 118 0004 154E     		ldr	r6, .L24+4
 119 0006 C0F8E440 		str	r4, [r0, #228]
 120 000a 0024     		movs	r4, #0
 121 000c 4460     		str	r4, [r0, #4]
 122 000e 2425     		movs	r5, #36
 123 0010 4462     		str	r4, [r0, #36]
 124 0012 8827     		movs	r7, #136
 125 0014 8462     		str	r4, [r0, #40]
 126 0016 3460     		str	r4, [r6]
 127 0018 4FF48074 		mov	r4, #256
 128 001c 0760     		str	r7, [r0]
 129 001e 0560     		str	r5, [r0]
 130 0020 0460     		str	r4, [r0]
 131 0022 4FF40025 		mov	r5, #524288
 132 0026 4FF40034 		mov	r4, #131072
 133 002a 0560     		str	r5, [r0]
 134 002c 0460     		str	r4, [r0]
 135 002e 89B1     		cbz	r1, .L22
 136 0030 0D46     		mov	r5, r1
 137 0032 0968     		ldr	r1, [r1]
 138 0034 0446     		mov	r4, r0
 139 0036 FFF7FEFF 		bl	usart_set_async_baudrate
 140 003a 58B9     		cbnz	r0, .L22
 141 003c D5E90137 		ldrd	r3, r7, [r5, #4]
 142 0040 D5E90312 		ldrd	r1, r2, [r5, #12]
 143 0044 3B43     		orrs	r3, r3, r7
 144 0046 1343     		orrs	r3, r3, r2
 145 0048 6268     		ldr	r2, [r4, #4]
 146 004a 0B43     		orrs	r3, r3, r1
 147 004c 1A43     		orrs	r2, r2, r3
 148 004e 3360     		str	r3, [r6]
 149 0050 6260     		str	r2, [r4, #4]
 150 0052 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 151              	.L22:
 152 0054 0120     		movs	r0, #1
 153 0056 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 154              	.L25:
 155              		.align	2
 156              	.L24:
 157 0058 00415355 		.word	1431519488
 158 005c 00000000 		.word	.LANCHOR0
 159              		.size	usart_init_rs232, .-usart_init_rs232
 160              		.section	.text.usart_init_hw_handshaking,"ax",%progbits
 161              		.align	1
 162              		.p2align 2,,3
 163              		.global	usart_init_hw_handshaking
 164              		.syntax unified
 165              		.thumb
 166              		.thumb_func
 167              		.fpu fpv4-sp-d16
 168              		.type	usart_init_hw_handshaking, %function
 169              	usart_init_hw_handshaking:
 170              		@ args = 0, pretend = 0, frame = 0
 171              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 4


 172 0000 10B5     		push	{r4, lr}
 173 0002 0446     		mov	r4, r0
 174 0004 FFF7FEFF 		bl	usart_init_rs232
 175 0008 30B9     		cbnz	r0, .L28
 176 000a 6368     		ldr	r3, [r4, #4]
 177 000c 23F00F03 		bic	r3, r3, #15
 178 0010 43F00203 		orr	r3, r3, #2
 179 0014 6360     		str	r3, [r4, #4]
 180 0016 10BD     		pop	{r4, pc}
 181              	.L28:
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
 192              		.fpu fpv4-sp-d16
 193              		.type	usart_init_modem, %function
 194              	usart_init_modem:
 195              		@ args = 0, pretend = 0, frame = 0
 196              		@ frame_needed = 0, uses_anonymous_args = 0
 197 0000 10B5     		push	{r4, lr}
 198 0002 084C     		ldr	r4, .L35
 199 0004 A042     		cmp	r0, r4
 200 0006 01D0     		beq	.L31
 201              	.L33:
 202 0008 0120     		movs	r0, #1
 203 000a 10BD     		pop	{r4, pc}
 204              	.L31:
 205 000c 0446     		mov	r4, r0
 206 000e FFF7FEFF 		bl	usart_init_rs232
 207 0012 0028     		cmp	r0, #0
 208 0014 F8D1     		bne	.L33
 209 0016 6368     		ldr	r3, [r4, #4]
 210 0018 23F00F03 		bic	r3, r3, #15
 211 001c 43F00303 		orr	r3, r3, #3
 212 0020 6360     		str	r3, [r4, #4]
 213 0022 10BD     		pop	{r4, pc}
 214              	.L36:
 215              		.align	2
 216              	.L35:
 217 0024 00400A40 		.word	1074413568
 218              		.size	usart_init_modem, .-usart_init_modem
 219              		.section	.text.usart_init_sync_master,"ax",%progbits
 220              		.align	1
 221              		.p2align 2,,3
 222              		.global	usart_init_sync_master
 223              		.syntax unified
 224              		.thumb
 225              		.thumb_func
 226              		.fpu fpv4-sp-d16
 227              		.type	usart_init_sync_master, %function
 228              	usart_init_sync_master:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 5


 229              		@ args = 0, pretend = 0, frame = 0
 230              		@ frame_needed = 0, uses_anonymous_args = 0
 231              		@ link register save eliminated.
 232 0000 0346     		mov	r3, r0
 233 0002 1C48     		ldr	r0, .L42
 234 0004 F0B4     		push	{r4, r5, r6, r7}
 235 0006 C3F8E400 		str	r0, [r3, #228]
 236 000a 8824     		movs	r4, #136
 237 000c 0020     		movs	r0, #0
 238 000e 5860     		str	r0, [r3, #4]
 239 0010 2425     		movs	r5, #36
 240 0012 5862     		str	r0, [r3, #36]
 241 0014 9862     		str	r0, [r3, #40]
 242 0016 1C60     		str	r4, [r3]
 243 0018 4FF48074 		mov	r4, #256
 244 001c 1D60     		str	r5, [r3]
 245 001e 1C60     		str	r4, [r3]
 246 0020 4FF40025 		mov	r5, #524288
 247 0024 4FF40034 		mov	r4, #131072
 248 0028 1D60     		str	r5, [r3]
 249 002a 1C60     		str	r4, [r3]
 250 002c F1B1     		cbz	r1, .L40
 251 002e 0C68     		ldr	r4, [r1]
 252 0030 4FF6FE75 		movw	r5, #65534
 253 0034 02EB5402 		add	r2, r2, r4, lsr #1
 254 0038 B2FBF4F2 		udiv	r2, r2, r4
 255 003c 541E     		subs	r4, r2, #1
 256 003e AC42     		cmp	r4, r5
 257 0040 14D8     		bhi	.L40
 258 0042 1A62     		str	r2, [r3, #32]
 259 0044 5C68     		ldr	r4, [r3, #4]
 260 0046 D1E90127 		ldrd	r2, r7, [r1, #4]
 261 004a D1E90356 		ldrd	r5, r6, [r1, #12]
 262 004e 24F49871 		bic	r1, r4, #304
 263 0052 41F48071 		orr	r1, r1, #256
 264 0056 3A43     		orrs	r2, r2, r7
 265 0058 5960     		str	r1, [r3, #4]
 266 005a 42F48022 		orr	r2, r2, #262144
 267 005e 5968     		ldr	r1, [r3, #4]
 268 0060 3243     		orrs	r2, r2, r6
 269 0062 2A43     		orrs	r2, r2, r5
 270 0064 0A43     		orrs	r2, r2, r1
 271 0066 5A60     		str	r2, [r3, #4]
 272 0068 F0BC     		pop	{r4, r5, r6, r7}
 273 006a 7047     		bx	lr
 274              	.L40:
 275 006c 0120     		movs	r0, #1
 276 006e F0BC     		pop	{r4, r5, r6, r7}
 277 0070 7047     		bx	lr
 278              	.L43:
 279 0072 00BF     		.align	2
 280              	.L42:
 281 0074 00415355 		.word	1431519488
 282              		.size	usart_init_sync_master, .-usart_init_sync_master
 283              		.section	.text.usart_init_sync_slave,"ax",%progbits
 284              		.align	1
 285              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 6


 286              		.global	usart_init_sync_slave
 287              		.syntax unified
 288              		.thumb
 289              		.thumb_func
 290              		.fpu fpv4-sp-d16
 291              		.type	usart_init_sync_slave, %function
 292              	usart_init_sync_slave:
 293              		@ args = 0, pretend = 0, frame = 0
 294              		@ frame_needed = 0, uses_anonymous_args = 0
 295              		@ link register save eliminated.
 296 0000 0346     		mov	r3, r0
 297 0002 144A     		ldr	r2, .L48
 298 0004 70B4     		push	{r4, r5, r6}
 299 0006 C0F8E420 		str	r2, [r0, #228]
 300 000a 8824     		movs	r4, #136
 301 000c 0020     		movs	r0, #0
 302 000e 2422     		movs	r2, #36
 303 0010 5860     		str	r0, [r3, #4]
 304 0012 4FF48075 		mov	r5, #256
 305 0016 5862     		str	r0, [r3, #36]
 306 0018 9862     		str	r0, [r3, #40]
 307 001a 1C60     		str	r4, [r3]
 308 001c 1A60     		str	r2, [r3]
 309 001e 4FF40024 		mov	r4, #524288
 310 0022 4FF40032 		mov	r2, #131072
 311 0026 1D60     		str	r5, [r3]
 312 0028 1C60     		str	r4, [r3]
 313 002a 1A60     		str	r2, [r3]
 314 002c 5A68     		ldr	r2, [r3, #4]
 315 002e 42F49872 		orr	r2, r2, #304
 316 0032 5A60     		str	r2, [r3, #4]
 317 0034 59B1     		cbz	r1, .L46
 318 0036 D1E90126 		ldrd	r2, r6, [r1, #4]
 319 003a D1E90345 		ldrd	r4, r5, [r1, #12]
 320 003e 3243     		orrs	r2, r2, r6
 321 0040 2A43     		orrs	r2, r2, r5
 322 0042 5968     		ldr	r1, [r3, #4]
 323 0044 2243     		orrs	r2, r2, r4
 324 0046 0A43     		orrs	r2, r2, r1
 325 0048 5A60     		str	r2, [r3, #4]
 326 004a 70BC     		pop	{r4, r5, r6}
 327 004c 7047     		bx	lr
 328              	.L46:
 329 004e 0120     		movs	r0, #1
 330 0050 70BC     		pop	{r4, r5, r6}
 331 0052 7047     		bx	lr
 332              	.L49:
 333              		.align	2
 334              	.L48:
 335 0054 00415355 		.word	1431519488
 336              		.size	usart_init_sync_slave, .-usart_init_sync_slave
 337              		.section	.text.usart_init_rs485,"ax",%progbits
 338              		.align	1
 339              		.p2align 2,,3
 340              		.global	usart_init_rs485
 341              		.syntax unified
 342              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 7


 343              		.thumb_func
 344              		.fpu fpv4-sp-d16
 345              		.type	usart_init_rs485, %function
 346              	usart_init_rs485:
 347              		@ args = 0, pretend = 0, frame = 0
 348              		@ frame_needed = 0, uses_anonymous_args = 0
 349 0000 10B5     		push	{r4, lr}
 350 0002 0446     		mov	r4, r0
 351 0004 FFF7FEFF 		bl	usart_init_rs232
 352 0008 30B9     		cbnz	r0, .L52
 353 000a 6368     		ldr	r3, [r4, #4]
 354 000c 23F00F03 		bic	r3, r3, #15
 355 0010 43F00103 		orr	r3, r3, #1
 356 0014 6360     		str	r3, [r4, #4]
 357 0016 10BD     		pop	{r4, pc}
 358              	.L52:
 359 0018 0120     		movs	r0, #1
 360 001a 10BD     		pop	{r4, pc}
 361              		.size	usart_init_rs485, .-usart_init_rs485
 362              		.section	.text.usart_init_irda,"ax",%progbits
 363              		.align	1
 364              		.p2align 2,,3
 365              		.global	usart_init_irda
 366              		.syntax unified
 367              		.thumb
 368              		.thumb_func
 369              		.fpu fpv4-sp-d16
 370              		.type	usart_init_irda, %function
 371              	usart_init_irda:
 372              		@ args = 0, pretend = 0, frame = 0
 373              		@ frame_needed = 0, uses_anonymous_args = 0
 374 0000 38B5     		push	{r3, r4, r5, lr}
 375 0002 0446     		mov	r4, r0
 376 0004 0D46     		mov	r5, r1
 377 0006 FFF7FEFF 		bl	usart_init_rs232
 378 000a 40B9     		cbnz	r0, .L56
 379 000c 6B69     		ldr	r3, [r5, #20]
 380 000e E364     		str	r3, [r4, #76]
 381 0010 6368     		ldr	r3, [r4, #4]
 382 0012 23F00F03 		bic	r3, r3, #15
 383 0016 43F00803 		orr	r3, r3, #8
 384 001a 6360     		str	r3, [r4, #4]
 385 001c 38BD     		pop	{r3, r4, r5, pc}
 386              	.L56:
 387 001e 0120     		movs	r0, #1
 388 0020 38BD     		pop	{r3, r4, r5, pc}
 389              		.size	usart_init_irda, .-usart_init_irda
 390 0022 00BF     		.section	.text.usart_init_iso7816,"ax",%progbits
 391              		.align	1
 392              		.p2align 2,,3
 393              		.global	usart_init_iso7816
 394              		.syntax unified
 395              		.thumb
 396              		.thumb_func
 397              		.fpu fpv4-sp-d16
 398              		.type	usart_init_iso7816, %function
 399              	usart_init_iso7816:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 8


 400              		@ args = 0, pretend = 0, frame = 0
 401              		@ frame_needed = 0, uses_anonymous_args = 0
 402              		@ link register save eliminated.
 403 0000 F0B4     		push	{r4, r5, r6, r7}
 404 0002 314B     		ldr	r3, .L77
 405 0004 314C     		ldr	r4, .L77+4
 406 0006 C0F8E430 		str	r3, [r0, #228]
 407 000a 0023     		movs	r3, #0
 408 000c 4360     		str	r3, [r0, #4]
 409 000e 2425     		movs	r5, #36
 410 0010 4362     		str	r3, [r0, #36]
 411 0012 8826     		movs	r6, #136
 412 0014 8362     		str	r3, [r0, #40]
 413 0016 2360     		str	r3, [r4]
 414 0018 4FF48073 		mov	r3, #256
 415 001c 0660     		str	r6, [r0]
 416 001e 0560     		str	r5, [r0]
 417 0020 0360     		str	r3, [r0]
 418 0022 4FF40025 		mov	r5, #524288
 419 0026 4FF40033 		mov	r3, #131072
 420 002a 0560     		str	r5, [r0]
 421 002c 0360     		str	r3, [r0]
 422 002e 19B1     		cbz	r1, .L61
 423 0030 8B68     		ldr	r3, [r1, #8]
 424 0032 33F40075 		bics	r5, r3, #512
 425 0036 02D0     		beq	.L76
 426              	.L61:
 427 0038 0120     		movs	r0, #1
 428 003a F0BC     		pop	{r4, r5, r6, r7}
 429 003c 7047     		bx	lr
 430              	.L76:
 431 003e CD69     		ldr	r5, [r1, #28]
 432 0040 002D     		cmp	r5, #0
 433 0042 35D1     		bne	.L62
 434 0044 D1E90556 		ldrd	r5, r6, [r1, #20]
 435 0048 2D06     		lsls	r5, r5, #24
 436 004a 45F40057 		orr	r7, r5, #8192
 437 004e 47F00407 		orr	r7, r7, #4
 438 0052 2760     		str	r7, [r4]
 439 0054 26B1     		cbz	r6, .L63
 440 0056 45F49035 		orr	r5, r5, #73728
 441 005a 45F00405 		orr	r5, r5, #4
 442 005e 2560     		str	r5, [r4]
 443              	.L63:
 444 0060 0D68     		ldr	r5, [r1]
 445 0062 4FF6FE76 		movw	r6, #65534
 446 0066 02EB5502 		add	r2, r2, r5, lsr #1
 447 006a B2FBF5F2 		udiv	r2, r2, r5
 448 006e 551E     		subs	r5, r2, #1
 449 0070 B542     		cmp	r5, r6
 450 0072 E1D8     		bhi	.L61
 451 0074 4568     		ldr	r5, [r0, #4]
 452 0076 2668     		ldr	r6, [r4]
 453 0078 25F44025 		bic	r5, r5, #786432
 454 007c 25F49875 		bic	r5, r5, #304
 455 0080 45F48025 		orr	r5, r5, #262144
 456 0084 3343     		orrs	r3, r3, r6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 9


 457 0086 CE68     		ldr	r6, [r1, #12]
 458 0088 4560     		str	r5, [r0, #4]
 459 008a 4D68     		ldr	r5, [r1, #4]
 460 008c 2360     		str	r3, [r4]
 461 008e 0262     		str	r2, [r0, #32]
 462 0090 0564     		str	r5, [r0, #64]
 463 0092 16B1     		cbz	r6, .L64
 464 0094 43F48013 		orr	r3, r3, #1048576
 465 0098 2360     		str	r3, [r4]
 466              	.L64:
 467 009a 0A69     		ldr	r2, [r1, #16]
 468 009c 12B1     		cbz	r2, .L65
 469 009e 43F40013 		orr	r3, r3, #2097152
 470 00a2 2360     		str	r3, [r4]
 471              	.L65:
 472 00a4 4268     		ldr	r2, [r0, #4]
 473 00a6 1343     		orrs	r3, r3, r2
 474 00a8 4360     		str	r3, [r0, #4]
 475 00aa F0BC     		pop	{r4, r5, r6, r7}
 476 00ac 0020     		movs	r0, #0
 477 00ae 7047     		bx	lr
 478              	.L62:
 479 00b0 012D     		cmp	r5, #1
 480 00b2 C1D1     		bne	.L61
 481 00b4 8D69     		ldr	r5, [r1, #24]
 482 00b6 002D     		cmp	r5, #0
 483 00b8 BED1     		bne	.L61
 484 00ba 4D69     		ldr	r5, [r1, #20]
 485 00bc 002D     		cmp	r5, #0
 486 00be BBD1     		bne	.L61
 487 00c0 0625     		movs	r5, #6
 488 00c2 2560     		str	r5, [r4]
 489 00c4 CCE7     		b	.L63
 490              	.L78:
 491 00c6 00BF     		.align	2
 492              	.L77:
 493 00c8 00415355 		.word	1431519488
 494 00cc 00000000 		.word	.LANCHOR1
 495              		.size	usart_init_iso7816, .-usart_init_iso7816
 496              		.section	.text.usart_reset_iterations,"ax",%progbits
 497              		.align	1
 498              		.p2align 2,,3
 499              		.global	usart_reset_iterations
 500              		.syntax unified
 501              		.thumb
 502              		.thumb_func
 503              		.fpu fpv4-sp-d16
 504              		.type	usart_reset_iterations, %function
 505              	usart_reset_iterations:
 506              		@ args = 0, pretend = 0, frame = 0
 507              		@ frame_needed = 0, uses_anonymous_args = 0
 508              		@ link register save eliminated.
 509 0000 4FF40053 		mov	r3, #8192
 510 0004 0360     		str	r3, [r0]
 511 0006 7047     		bx	lr
 512              		.size	usart_reset_iterations, .-usart_reset_iterations
 513              		.section	.text.usart_reset_nack,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 10


 514              		.align	1
 515              		.p2align 2,,3
 516              		.global	usart_reset_nack
 517              		.syntax unified
 518              		.thumb
 519              		.thumb_func
 520              		.fpu fpv4-sp-d16
 521              		.type	usart_reset_nack, %function
 522              	usart_reset_nack:
 523              		@ args = 0, pretend = 0, frame = 0
 524              		@ frame_needed = 0, uses_anonymous_args = 0
 525              		@ link register save eliminated.
 526 0000 4FF48043 		mov	r3, #16384
 527 0004 0360     		str	r3, [r0]
 528 0006 7047     		bx	lr
 529              		.size	usart_reset_nack, .-usart_reset_nack
 530              		.section	.text.usart_is_rx_buf_full,"ax",%progbits
 531              		.align	1
 532              		.p2align 2,,3
 533              		.global	usart_is_rx_buf_full
 534              		.syntax unified
 535              		.thumb
 536              		.thumb_func
 537              		.fpu fpv4-sp-d16
 538              		.type	usart_is_rx_buf_full, %function
 539              	usart_is_rx_buf_full:
 540              		@ args = 0, pretend = 0, frame = 0
 541              		@ frame_needed = 0, uses_anonymous_args = 0
 542              		@ link register save eliminated.
 543 0000 4069     		ldr	r0, [r0, #20]
 544 0002 C0F30030 		ubfx	r0, r0, #12, #1
 545 0006 7047     		bx	lr
 546              		.size	usart_is_rx_buf_full, .-usart_is_rx_buf_full
 547              		.section	.text.usart_is_rx_buf_end,"ax",%progbits
 548              		.align	1
 549              		.p2align 2,,3
 550              		.global	usart_is_rx_buf_end
 551              		.syntax unified
 552              		.thumb
 553              		.thumb_func
 554              		.fpu fpv4-sp-d16
 555              		.type	usart_is_rx_buf_end, %function
 556              	usart_is_rx_buf_end:
 557              		@ args = 0, pretend = 0, frame = 0
 558              		@ frame_needed = 0, uses_anonymous_args = 0
 559              		@ link register save eliminated.
 560 0000 4069     		ldr	r0, [r0, #20]
 561 0002 C0F3C000 		ubfx	r0, r0, #3, #1
 562 0006 7047     		bx	lr
 563              		.size	usart_is_rx_buf_end, .-usart_is_rx_buf_end
 564              		.section	.text.usart_is_tx_buf_end,"ax",%progbits
 565              		.align	1
 566              		.p2align 2,,3
 567              		.global	usart_is_tx_buf_end
 568              		.syntax unified
 569              		.thumb
 570              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 11


 571              		.fpu fpv4-sp-d16
 572              		.type	usart_is_tx_buf_end, %function
 573              	usart_is_tx_buf_end:
 574              		@ args = 0, pretend = 0, frame = 0
 575              		@ frame_needed = 0, uses_anonymous_args = 0
 576              		@ link register save eliminated.
 577 0000 4069     		ldr	r0, [r0, #20]
 578 0002 C0F30010 		ubfx	r0, r0, #4, #1
 579 0006 7047     		bx	lr
 580              		.size	usart_is_tx_buf_end, .-usart_is_tx_buf_end
 581              		.section	.text.usart_is_tx_buf_empty,"ax",%progbits
 582              		.align	1
 583              		.p2align 2,,3
 584              		.global	usart_is_tx_buf_empty
 585              		.syntax unified
 586              		.thumb
 587              		.thumb_func
 588              		.fpu fpv4-sp-d16
 589              		.type	usart_is_tx_buf_empty, %function
 590              	usart_is_tx_buf_empty:
 591              		@ args = 0, pretend = 0, frame = 0
 592              		@ frame_needed = 0, uses_anonymous_args = 0
 593              		@ link register save eliminated.
 594 0000 4069     		ldr	r0, [r0, #20]
 595 0002 C0F3C020 		ubfx	r0, r0, #11, #1
 596 0006 7047     		bx	lr
 597              		.size	usart_is_tx_buf_empty, .-usart_is_tx_buf_empty
 598              		.section	.text.usart_get_error_number,"ax",%progbits
 599              		.align	1
 600              		.p2align 2,,3
 601              		.global	usart_get_error_number
 602              		.syntax unified
 603              		.thumb
 604              		.thumb_func
 605              		.fpu fpv4-sp-d16
 606              		.type	usart_get_error_number, %function
 607              	usart_get_error_number:
 608              		@ args = 0, pretend = 0, frame = 0
 609              		@ frame_needed = 0, uses_anonymous_args = 0
 610              		@ link register save eliminated.
 611 0000 406C     		ldr	r0, [r0, #68]
 612 0002 C0B2     		uxtb	r0, r0
 613 0004 7047     		bx	lr
 614              		.size	usart_get_error_number, .-usart_get_error_number
 615 0006 00BF     		.section	.text.usart_init_spi_master,"ax",%progbits
 616              		.align	1
 617              		.p2align 2,,3
 618              		.global	usart_init_spi_master
 619              		.syntax unified
 620              		.thumb
 621              		.thumb_func
 622              		.fpu fpv4-sp-d16
 623              		.type	usart_init_spi_master, %function
 624              	usart_init_spi_master:
 625              		@ args = 0, pretend = 0, frame = 0
 626              		@ frame_needed = 0, uses_anonymous_args = 0
 627              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 12


 628 0000 70B4     		push	{r4, r5, r6}
 629 0002 284B     		ldr	r3, .L97
 630 0004 284C     		ldr	r4, .L97+4
 631 0006 C0F8E430 		str	r3, [r0, #228]
 632 000a 0023     		movs	r3, #0
 633 000c 4360     		str	r3, [r0, #4]
 634 000e 2425     		movs	r5, #36
 635 0010 4362     		str	r3, [r0, #36]
 636 0012 8826     		movs	r6, #136
 637 0014 8362     		str	r3, [r0, #40]
 638 0016 2360     		str	r3, [r4]
 639 0018 4FF48073 		mov	r3, #256
 640 001c 0660     		str	r6, [r0]
 641 001e 0560     		str	r5, [r0]
 642 0020 0360     		str	r3, [r0]
 643 0022 4FF40025 		mov	r5, #524288
 644 0026 4FF40033 		mov	r3, #131072
 645 002a 0560     		str	r5, [r0]
 646 002c 0360     		str	r3, [r0]
 647 002e 41B3     		cbz	r1, .L95
 648 0030 8D68     		ldr	r5, [r1, #8]
 649 0032 032D     		cmp	r5, #3
 650 0034 25D8     		bhi	.L95
 651 0036 0B68     		ldr	r3, [r1]
 652 0038 4FF6FB76 		movw	r6, #65531
 653 003c 02EB5302 		add	r2, r2, r3, lsr #1
 654 0040 B2FBF3F2 		udiv	r2, r2, r3
 655 0044 131F     		subs	r3, r2, #4
 656 0046 B342     		cmp	r3, r6
 657 0048 1BD8     		bhi	.L95
 658 004a 4B68     		ldr	r3, [r1, #4]
 659 004c C968     		ldr	r1, [r1, #12]
 660 004e 0262     		str	r2, [r0, #32]
 661 0050 022D     		cmp	r5, #2
 662 0052 43EA0103 		orr	r3, r3, r1
 663 0056 154A     		ldr	r2, .L97+8
 664 0058 16D0     		beq	.L89
 665 005a 032D     		cmp	r5, #3
 666 005c 1AD0     		beq	.L90
 667 005e 23F48033 		bic	r3, r3, #65536
 668 0062 012D     		cmp	r5, #1
 669 0064 15BF     		itete	ne
 670 0066 43F48023 		orrne	r3, r3, #262144
 671 006a 23F48073 		biceq	r3, r3, #256
 672 006e 43F48773 		orrne	r3, r3, #270
 673 0072 1343     		orreq	r3, r3, r2
 674 0074 2360     		str	r3, [r4]
 675              	.L92:
 676 0076 4268     		ldr	r2, [r0, #4]
 677 0078 1343     		orrs	r3, r3, r2
 678 007a 4360     		str	r3, [r0, #4]
 679 007c 70BC     		pop	{r4, r5, r6}
 680 007e 0020     		movs	r0, #0
 681 0080 7047     		bx	lr
 682              	.L95:
 683 0082 0120     		movs	r0, #1
 684 0084 70BC     		pop	{r4, r5, r6}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 13


 685 0086 7047     		bx	lr
 686              	.L89:
 687 0088 43F4A023 		orr	r3, r3, #327680
 688 008c 43F48773 		orr	r3, r3, #270
 689 0090 2360     		str	r3, [r4]
 690 0092 F0E7     		b	.L92
 691              	.L90:
 692 0094 23F48073 		bic	r3, r3, #256
 693 0098 43F4A023 		orr	r3, r3, #327680
 694 009c 43F00E03 		orr	r3, r3, #14
 695 00a0 2360     		str	r3, [r4]
 696 00a2 E8E7     		b	.L92
 697              	.L98:
 698              		.align	2
 699              	.L97:
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
 711              		.fpu fpv4-sp-d16
 712              		.type	usart_init_spi_slave, %function
 713              	usart_init_spi_slave:
 714              		@ args = 0, pretend = 0, frame = 0
 715              		@ frame_needed = 0, uses_anonymous_args = 0
 716              		@ link register save eliminated.
 717 0000 264B     		ldr	r3, .L109
 718 0002 30B4     		push	{r4, r5}
 719 0004 2422     		movs	r2, #36
 720 0006 C0F8E430 		str	r3, [r0, #228]
 721 000a 8824     		movs	r4, #136
 722 000c 0023     		movs	r3, #0
 723 000e 4360     		str	r3, [r0, #4]
 724 0010 4FF48075 		mov	r5, #256
 725 0014 4362     		str	r3, [r0, #36]
 726 0016 8362     		str	r3, [r0, #40]
 727 0018 0460     		str	r4, [r0]
 728 001a 0260     		str	r2, [r0]
 729 001c 4FF40024 		mov	r4, #524288
 730 0020 4FF40032 		mov	r2, #131072
 731 0024 0560     		str	r5, [r0]
 732 0026 0460     		str	r4, [r0]
 733 0028 0260     		str	r2, [r0]
 734 002a 4268     		ldr	r2, [r0, #4]
 735 002c 1C4C     		ldr	r4, .L109+4
 736 002e 22F03002 		bic	r2, r2, #48
 737 0032 4260     		str	r2, [r0, #4]
 738 0034 4268     		ldr	r2, [r0, #4]
 739 0036 2360     		str	r3, [r4]
 740 0038 42F03002 		orr	r2, r2, #48
 741 003c 4260     		str	r2, [r0, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 14


 742 003e E9B1     		cbz	r1, .L107
 743 0040 8A68     		ldr	r2, [r1, #8]
 744 0042 032A     		cmp	r2, #3
 745 0044 1AD8     		bhi	.L107
 746 0046 4B68     		ldr	r3, [r1, #4]
 747 0048 C968     		ldr	r1, [r1, #12]
 748 004a 022A     		cmp	r2, #2
 749 004c 41EA0301 		orr	r1, r1, r3
 750 0050 1FD0     		beq	.L102
 751 0052 032A     		cmp	r2, #3
 752 0054 15D0     		beq	.L103
 753 0056 21F48033 		bic	r3, r1, #65536
 754 005a 012A     		cmp	r2, #1
 755 005c 15BF     		itete	ne
 756 005e 43F48773 		orrne	r3, r3, #270
 757 0062 23F48073 		biceq	r3, r3, #256
 758 0066 43F00103 		orrne	r3, r3, #1
 759 006a 43F00F03 		orreq	r3, r3, #15
 760 006e 2360     		str	r3, [r4]
 761              	.L105:
 762 0070 4268     		ldr	r2, [r0, #4]
 763 0072 1343     		orrs	r3, r3, r2
 764 0074 4360     		str	r3, [r0, #4]
 765 0076 30BC     		pop	{r4, r5}
 766 0078 0020     		movs	r0, #0
 767 007a 7047     		bx	lr
 768              	.L107:
 769 007c 0120     		movs	r0, #1
 770 007e 30BC     		pop	{r4, r5}
 771 0080 7047     		bx	lr
 772              	.L103:
 773 0082 21F48073 		bic	r3, r1, #256
 774 0086 43F48033 		orr	r3, r3, #65536
 775 008a 43F00F03 		orr	r3, r3, #15
 776 008e 2360     		str	r3, [r4]
 777 0090 EEE7     		b	.L105
 778              	.L102:
 779 0092 044B     		ldr	r3, .L109+8
 780 0094 0B43     		orrs	r3, r3, r1
 781 0096 2360     		str	r3, [r4]
 782 0098 EAE7     		b	.L105
 783              	.L110:
 784 009a 00BF     		.align	2
 785              	.L109:
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
 797              		.fpu fpv4-sp-d16
 798              		.type	usart_enable_tx, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 15


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
 814              		.fpu fpv4-sp-d16
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
 831              		.fpu fpv4-sp-d16
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
 848              		.fpu fpv4-sp-d16
 849              		.type	usart_set_tx_timeguard, %function
 850              	usart_set_tx_timeguard:
 851              		@ args = 0, pretend = 0, frame = 0
 852              		@ frame_needed = 0, uses_anonymous_args = 0
 853              		@ link register save eliminated.
 854 0000 8162     		str	r1, [r0, #40]
 855 0002 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 16


 856              		.size	usart_set_tx_timeguard, .-usart_set_tx_timeguard
 857              		.section	.text.usart_enable_rx,"ax",%progbits
 858              		.align	1
 859              		.p2align 2,,3
 860              		.global	usart_enable_rx
 861              		.syntax unified
 862              		.thumb
 863              		.thumb_func
 864              		.fpu fpv4-sp-d16
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
 881              		.fpu fpv4-sp-d16
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
 898              		.fpu fpv4-sp-d16
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 17


 913              		.thumb
 914              		.thumb_func
 915              		.fpu fpv4-sp-d16
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
 931              		.fpu fpv4-sp-d16
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
 947              		.fpu fpv4-sp-d16
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
 963              		.fpu fpv4-sp-d16
 964              		.type	usart_get_interrupt_mask, %function
 965              	usart_get_interrupt_mask:
 966              		@ args = 0, pretend = 0, frame = 0
 967              		@ frame_needed = 0, uses_anonymous_args = 0
 968              		@ link register save eliminated.
 969 0000 0069     		ldr	r0, [r0, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 18


 970 0002 7047     		bx	lr
 971              		.size	usart_get_interrupt_mask, .-usart_get_interrupt_mask
 972              		.section	.text.usart_get_status,"ax",%progbits
 973              		.align	1
 974              		.p2align 2,,3
 975              		.global	usart_get_status
 976              		.syntax unified
 977              		.thumb
 978              		.thumb_func
 979              		.fpu fpv4-sp-d16
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
 995              		.fpu fpv4-sp-d16
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
 1012              		.fpu fpv4-sp-d16
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 19


 1027              		.thumb
 1028              		.thumb_func
 1029              		.fpu fpv4-sp-d16
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
 1046              		.fpu fpv4-sp-d16
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
 1063              		.fpu fpv4-sp-d16
 1064              		.type	usart_send_address, %function
 1065              	usart_send_address:
 1066              		@ args = 0, pretend = 0, frame = 0
 1067              		@ frame_needed = 0, uses_anonymous_args = 0
 1068              		@ link register save eliminated.
 1069 0000 4368     		ldr	r3, [r0, #4]
 1070 0002 03F44063 		and	r3, r3, #3072
 1071 0006 B3F5406F 		cmp	r3, #3072
 1072 000a 01D0     		beq	.L128
 1073              	.L130:
 1074 000c 0120     		movs	r0, #1
 1075 000e 7047     		bx	lr
 1076              	.L128:
 1077 0010 4FF48053 		mov	r3, #4096
 1078 0014 0360     		str	r3, [r0]
 1079 0016 4369     		ldr	r3, [r0, #20]
 1080 0018 9B07     		lsls	r3, r3, #30
 1081 001a F7D5     		bpl	.L130
 1082 001c C1F30801 		ubfx	r1, r1, #0, #9
 1083 0020 C161     		str	r1, [r0, #28]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 20


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
 1094              		.fpu fpv4-sp-d16
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
 1111              		.fpu fpv4-sp-d16
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
 1128              		.fpu fpv4-sp-d16
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 21


 1141              		.global	usart_drive_RTS_pin_low
 1142              		.syntax unified
 1143              		.thumb
 1144              		.thumb_func
 1145              		.fpu fpv4-sp-d16
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
 1162              		.fpu fpv4-sp-d16
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
 1179              		.fpu fpv4-sp-d16
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
 1196              		.fpu fpv4-sp-d16
 1197              		.type	usart_spi_release_chip_select, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 22


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
 1213              		.fpu fpv4-sp-d16
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
 1230              		.fpu fpv4-sp-d16
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
 1247              		.fpu fpv4-sp-d16
 1248              		.type	usart_is_rx_ready, %function
 1249              	usart_is_rx_ready:
 1250              		@ args = 0, pretend = 0, frame = 0
 1251              		@ frame_needed = 0, uses_anonymous_args = 0
 1252              		@ link register save eliminated.
 1253 0000 4069     		ldr	r0, [r0, #20]
 1254 0002 00F00100 		and	r0, r0, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 23


 1255 0006 7047     		bx	lr
 1256              		.size	usart_is_rx_ready, .-usart_is_rx_ready
 1257              		.section	.text.usart_write,"ax",%progbits
 1258              		.align	1
 1259              		.p2align 2,,3
 1260              		.global	usart_write
 1261              		.syntax unified
 1262              		.thumb
 1263              		.thumb_func
 1264              		.fpu fpv4-sp-d16
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
 1286              		.fpu fpv4-sp-d16
 1287              		.type	usart_putchar, %function
 1288              	usart_putchar:
 1289              		@ args = 0, pretend = 0, frame = 0
 1290              		@ frame_needed = 0, uses_anonymous_args = 0
 1291              		@ link register save eliminated.
 1292              	.L148:
 1293 0000 4369     		ldr	r3, [r0, #20]
 1294 0002 9B07     		lsls	r3, r3, #30
 1295 0004 FCD5     		bpl	.L148
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
 1308              		.fpu fpv4-sp-d16
 1309              		.type	usart_write_line, %function
 1310              	usart_write_line:
 1311              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 24


 1312              		@ frame_needed = 0, uses_anonymous_args = 0
 1313              		@ link register save eliminated.
 1314 0000 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 1315 0002 3AB1     		cbz	r2, .L151
 1316              	.L153:
 1317 0004 4369     		ldr	r3, [r0, #20]
 1318 0006 9B07     		lsls	r3, r3, #30
 1319 0008 FCD5     		bpl	.L153
 1320 000a C261     		str	r2, [r0, #28]
 1321 000c 11F8012F 		ldrb	r2, [r1, #1]!	@ zero_extendqisi2
 1322 0010 002A     		cmp	r2, #0
 1323 0012 F7D1     		bne	.L153
 1324              	.L151:
 1325 0014 7047     		bx	lr
 1326              		.size	usart_write_line, .-usart_write_line
 1327 0016 00BF     		.section	.text.usart_read,"ax",%progbits
 1328              		.align	1
 1329              		.p2align 2,,3
 1330              		.global	usart_read
 1331              		.syntax unified
 1332              		.thumb
 1333              		.thumb_func
 1334              		.fpu fpv4-sp-d16
 1335              		.type	usart_read, %function
 1336              	usart_read:
 1337              		@ args = 0, pretend = 0, frame = 0
 1338              		@ frame_needed = 0, uses_anonymous_args = 0
 1339              		@ link register save eliminated.
 1340 0000 4369     		ldr	r3, [r0, #20]
 1341 0002 DB07     		lsls	r3, r3, #31
 1342 0004 05D5     		bpl	.L163
 1343 0006 8369     		ldr	r3, [r0, #24]
 1344 0008 C3F30803 		ubfx	r3, r3, #0, #9
 1345 000c 0B60     		str	r3, [r1]
 1346 000e 0020     		movs	r0, #0
 1347 0010 7047     		bx	lr
 1348              	.L163:
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
 1359              		.fpu fpv4-sp-d16
 1360              		.type	usart_getchar, %function
 1361              	usart_getchar:
 1362              		@ args = 0, pretend = 0, frame = 0
 1363              		@ frame_needed = 0, uses_anonymous_args = 0
 1364              		@ link register save eliminated.
 1365              	.L165:
 1366 0000 4369     		ldr	r3, [r0, #20]
 1367 0002 DB07     		lsls	r3, r3, #31
 1368 0004 FCD5     		bpl	.L165
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 25


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
 1382              		.fpu fpv4-sp-d16
 1383              		.type	usart_get_pdc_base, %function
 1384              	usart_get_pdc_base:
 1385              		@ args = 0, pretend = 0, frame = 0
 1386              		@ frame_needed = 0, uses_anonymous_args = 0
 1387              		@ link register save eliminated.
 1388 0000 064B     		ldr	r3, .L172
 1389 0002 9842     		cmp	r0, r3
 1390 0004 07D0     		beq	.L170
 1391 0006 064A     		ldr	r2, .L172+4
 1392 0008 03F58243 		add	r3, r3, #16640
 1393 000c 9042     		cmp	r0, r2
 1394 000e 0CBF     		ite	eq
 1395 0010 1846     		moveq	r0, r3
 1396 0012 0020     		movne	r0, #0
 1397 0014 7047     		bx	lr
 1398              	.L170:
 1399 0016 0348     		ldr	r0, .L172+8
 1400 0018 7047     		bx	lr
 1401              	.L173:
 1402 001a 00BF     		.align	2
 1403              	.L172:
 1404 001c 00000A40 		.word	1074397184
 1405 0020 00400A40 		.word	1074413568
 1406 0024 00010A40 		.word	1074397440
 1407              		.size	usart_get_pdc_base, .-usart_get_pdc_base
 1408              		.section	.text.usart_enable_writeprotect,"ax",%progbits
 1409              		.align	1
 1410              		.p2align 2,,3
 1411              		.global	usart_enable_writeprotect
 1412              		.syntax unified
 1413              		.thumb
 1414              		.thumb_func
 1415              		.fpu fpv4-sp-d16
 1416              		.type	usart_enable_writeprotect, %function
 1417              	usart_enable_writeprotect:
 1418              		@ args = 0, pretend = 0, frame = 0
 1419              		@ frame_needed = 0, uses_anonymous_args = 0
 1420              		@ link register save eliminated.
 1421 0000 014B     		ldr	r3, .L175
 1422 0002 C0F8E430 		str	r3, [r0, #228]
 1423 0006 7047     		bx	lr
 1424              	.L176:
 1425              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 26


 1426              	.L175:
 1427 0008 01415355 		.word	1431519489
 1428              		.size	usart_enable_writeprotect, .-usart_enable_writeprotect
 1429              		.section	.text.usart_disable_writeprotect,"ax",%progbits
 1430              		.align	1
 1431              		.p2align 2,,3
 1432              		.global	usart_disable_writeprotect
 1433              		.syntax unified
 1434              		.thumb
 1435              		.thumb_func
 1436              		.fpu fpv4-sp-d16
 1437              		.type	usart_disable_writeprotect, %function
 1438              	usart_disable_writeprotect:
 1439              		@ args = 0, pretend = 0, frame = 0
 1440              		@ frame_needed = 0, uses_anonymous_args = 0
 1441              		@ link register save eliminated.
 1442 0000 014B     		ldr	r3, .L178
 1443 0002 C0F8E430 		str	r3, [r0, #228]
 1444 0006 7047     		bx	lr
 1445              	.L179:
 1446              		.align	2
 1447              	.L178:
 1448 0008 00415355 		.word	1431519488
 1449              		.size	usart_disable_writeprotect, .-usart_disable_writeprotect
 1450              		.section	.text.usart_get_writeprotect_status,"ax",%progbits
 1451              		.align	1
 1452              		.p2align 2,,3
 1453              		.global	usart_get_writeprotect_status
 1454              		.syntax unified
 1455              		.thumb
 1456              		.thumb_func
 1457              		.fpu fpv4-sp-d16
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
 1476              		.fpu fpv4-sp-d16
 1477              		.type	usart_man_set_tx_pre_len, %function
 1478              	usart_man_set_tx_pre_len:
 1479              		@ args = 0, pretend = 0, frame = 0
 1480              		@ frame_needed = 0, uses_anonymous_args = 0
 1481              		@ link register save eliminated.
 1482 0000 01F00F03 		and	r3, r1, #15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 27


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
 1496              		.fpu fpv4-sp-d16
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
 1515              		.fpu fpv4-sp-d16
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
 1534              		.fpu fpv4-sp-d16
 1535              		.type	usart_man_set_rx_pre_len, %function
 1536              	usart_man_set_rx_pre_len:
 1537              		@ args = 0, pretend = 0, frame = 0
 1538              		@ frame_needed = 0, uses_anonymous_args = 0
 1539              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 28


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
 1555              		.fpu fpv4-sp-d16
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
 1574              		.fpu fpv4-sp-d16
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
 1593              		.fpu fpv4-sp-d16
 1594              		.type	usart_man_enable_drift_compensation, %function
 1595              	usart_man_enable_drift_compensation:
 1596              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 29


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
 1611              		.fpu fpv4-sp-d16
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
 1633              		.section	.bss.ul_reg_val.9012,"aw",%nobits
 1634              		.align	2
 1635              		.set	.LANCHOR0,. + 0
 1636              		.type	ul_reg_val.9012, %object
 1637              		.size	ul_reg_val.9012, 4
 1638              	ul_reg_val.9012:
 1639 0000 00000000 		.space	4
 1640              		.section	.bss.ul_reg_val.9055,"aw",%nobits
 1641              		.align	2
 1642              		.set	.LANCHOR1,. + 0
 1643              		.type	ul_reg_val.9055, %object
 1644              		.size	ul_reg_val.9055, 4
 1645              	ul_reg_val.9055:
 1646 0000 00000000 		.space	4
 1647              		.section	.bss.ul_reg_val.9082,"aw",%nobits
 1648              		.align	2
 1649              		.set	.LANCHOR2,. + 0
 1650              		.type	ul_reg_val.9082, %object
 1651              		.size	ul_reg_val.9082, 4
 1652              	ul_reg_val.9082:
 1653 0000 00000000 		.space	4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc7LE4HI.s 			page 30


 1654              		.section	.bss.ul_reg_val.9093,"aw",%nobits
 1655              		.align	2
 1656              		.set	.LANCHOR3,. + 0
 1657              		.type	ul_reg_val.9093, %object
 1658              		.size	ul_reg_val.9093, 4
 1659              	ul_reg_val.9093:
 1660 0000 00000000 		.space	4
 1661              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
