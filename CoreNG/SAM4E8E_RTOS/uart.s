ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck0TENh.s 			page 1


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
  13              		.file	"uart.c"
  14              		.text
  15              		.section	.text.uart_init,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	uart_init
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	uart_init, %function
  24              	uart_init:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0246     		mov	r2, r0
  29 0002 D1E90030 		ldrd	r3, r0, [r1]
  30 0006 B3FBF0F3 		udiv	r3, r3, r0
  31 000a 1B09     		lsrs	r3, r3, #4
  32 000c 30B4     		push	{r4, r5}
  33 000e 4FF6FE70 		movw	r0, #65534
  34 0012 5C1E     		subs	r4, r3, #1
  35 0014 AC25     		movs	r5, #172
  36 0016 8442     		cmp	r4, r0
  37 0018 1560     		str	r5, [r2]
  38 001a 0BD8     		bhi	.L3
  39 001c 8868     		ldr	r0, [r1, #8]
  40 001e 1362     		str	r3, [r2, #32]
  41 0020 40F20221 		movw	r1, #514
  42 0024 5023     		movs	r3, #80
  43 0026 5060     		str	r0, [r2, #4]
  44 0028 30BC     		pop	{r4, r5}
  45 002a 0020     		movs	r0, #0
  46 002c C2F82011 		str	r1, [r2, #288]
  47 0030 1360     		str	r3, [r2]
  48 0032 7047     		bx	lr
  49              	.L3:
  50 0034 0120     		movs	r0, #1
  51 0036 30BC     		pop	{r4, r5}
  52 0038 7047     		bx	lr
  53              		.size	uart_init, .-uart_init
  54 003a 00BF     		.section	.text.uart_enable_tx,"ax",%progbits
  55              		.align	1
  56              		.p2align 2,,3
  57              		.global	uart_enable_tx
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck0TENh.s 			page 2


  58              		.syntax unified
  59              		.thumb
  60              		.thumb_func
  61              		.fpu fpv4-sp-d16
  62              		.type	uart_enable_tx, %function
  63              	uart_enable_tx:
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66              		@ link register save eliminated.
  67 0000 4023     		movs	r3, #64
  68 0002 0360     		str	r3, [r0]
  69 0004 7047     		bx	lr
  70              		.size	uart_enable_tx, .-uart_enable_tx
  71 0006 00BF     		.section	.text.uart_disable_tx,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	uart_disable_tx
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu fpv4-sp-d16
  79              		.type	uart_disable_tx, %function
  80              	uart_disable_tx:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 8023     		movs	r3, #128
  85 0002 0360     		str	r3, [r0]
  86 0004 7047     		bx	lr
  87              		.size	uart_disable_tx, .-uart_disable_tx
  88 0006 00BF     		.section	.text.uart_reset_tx,"ax",%progbits
  89              		.align	1
  90              		.p2align 2,,3
  91              		.global	uart_reset_tx
  92              		.syntax unified
  93              		.thumb
  94              		.thumb_func
  95              		.fpu fpv4-sp-d16
  96              		.type	uart_reset_tx, %function
  97              	uart_reset_tx:
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100              		@ link register save eliminated.
 101 0000 8823     		movs	r3, #136
 102 0002 0360     		str	r3, [r0]
 103 0004 7047     		bx	lr
 104              		.size	uart_reset_tx, .-uart_reset_tx
 105 0006 00BF     		.section	.text.uart_enable_rx,"ax",%progbits
 106              		.align	1
 107              		.p2align 2,,3
 108              		.global	uart_enable_rx
 109              		.syntax unified
 110              		.thumb
 111              		.thumb_func
 112              		.fpu fpv4-sp-d16
 113              		.type	uart_enable_rx, %function
 114              	uart_enable_rx:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck0TENh.s 			page 3


 115              		@ args = 0, pretend = 0, frame = 0
 116              		@ frame_needed = 0, uses_anonymous_args = 0
 117              		@ link register save eliminated.
 118 0000 1023     		movs	r3, #16
 119 0002 0360     		str	r3, [r0]
 120 0004 7047     		bx	lr
 121              		.size	uart_enable_rx, .-uart_enable_rx
 122 0006 00BF     		.section	.text.uart_disable_rx,"ax",%progbits
 123              		.align	1
 124              		.p2align 2,,3
 125              		.global	uart_disable_rx
 126              		.syntax unified
 127              		.thumb
 128              		.thumb_func
 129              		.fpu fpv4-sp-d16
 130              		.type	uart_disable_rx, %function
 131              	uart_disable_rx:
 132              		@ args = 0, pretend = 0, frame = 0
 133              		@ frame_needed = 0, uses_anonymous_args = 0
 134              		@ link register save eliminated.
 135 0000 2023     		movs	r3, #32
 136 0002 0360     		str	r3, [r0]
 137 0004 7047     		bx	lr
 138              		.size	uart_disable_rx, .-uart_disable_rx
 139 0006 00BF     		.section	.text.uart_reset_rx,"ax",%progbits
 140              		.align	1
 141              		.p2align 2,,3
 142              		.global	uart_reset_rx
 143              		.syntax unified
 144              		.thumb
 145              		.thumb_func
 146              		.fpu fpv4-sp-d16
 147              		.type	uart_reset_rx, %function
 148              	uart_reset_rx:
 149              		@ args = 0, pretend = 0, frame = 0
 150              		@ frame_needed = 0, uses_anonymous_args = 0
 151              		@ link register save eliminated.
 152 0000 2423     		movs	r3, #36
 153 0002 0360     		str	r3, [r0]
 154 0004 7047     		bx	lr
 155              		.size	uart_reset_rx, .-uart_reset_rx
 156 0006 00BF     		.section	.text.uart_enable,"ax",%progbits
 157              		.align	1
 158              		.p2align 2,,3
 159              		.global	uart_enable
 160              		.syntax unified
 161              		.thumb
 162              		.thumb_func
 163              		.fpu fpv4-sp-d16
 164              		.type	uart_enable, %function
 165              	uart_enable:
 166              		@ args = 0, pretend = 0, frame = 0
 167              		@ frame_needed = 0, uses_anonymous_args = 0
 168              		@ link register save eliminated.
 169 0000 5023     		movs	r3, #80
 170 0002 0360     		str	r3, [r0]
 171 0004 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck0TENh.s 			page 4


 172              		.size	uart_enable, .-uart_enable
 173 0006 00BF     		.section	.text.uart_disable,"ax",%progbits
 174              		.align	1
 175              		.p2align 2,,3
 176              		.global	uart_disable
 177              		.syntax unified
 178              		.thumb
 179              		.thumb_func
 180              		.fpu fpv4-sp-d16
 181              		.type	uart_disable, %function
 182              	uart_disable:
 183              		@ args = 0, pretend = 0, frame = 0
 184              		@ frame_needed = 0, uses_anonymous_args = 0
 185              		@ link register save eliminated.
 186 0000 A023     		movs	r3, #160
 187 0002 0360     		str	r3, [r0]
 188 0004 7047     		bx	lr
 189              		.size	uart_disable, .-uart_disable
 190 0006 00BF     		.section	.text.uart_reset,"ax",%progbits
 191              		.align	1
 192              		.p2align 2,,3
 193              		.global	uart_reset
 194              		.syntax unified
 195              		.thumb
 196              		.thumb_func
 197              		.fpu fpv4-sp-d16
 198              		.type	uart_reset, %function
 199              	uart_reset:
 200              		@ args = 0, pretend = 0, frame = 0
 201              		@ frame_needed = 0, uses_anonymous_args = 0
 202              		@ link register save eliminated.
 203 0000 AC23     		movs	r3, #172
 204 0002 0360     		str	r3, [r0]
 205 0004 7047     		bx	lr
 206              		.size	uart_reset, .-uart_reset
 207 0006 00BF     		.section	.text.uart_enable_interrupt,"ax",%progbits
 208              		.align	1
 209              		.p2align 2,,3
 210              		.global	uart_enable_interrupt
 211              		.syntax unified
 212              		.thumb
 213              		.thumb_func
 214              		.fpu fpv4-sp-d16
 215              		.type	uart_enable_interrupt, %function
 216              	uart_enable_interrupt:
 217              		@ args = 0, pretend = 0, frame = 0
 218              		@ frame_needed = 0, uses_anonymous_args = 0
 219              		@ link register save eliminated.
 220 0000 8160     		str	r1, [r0, #8]
 221 0002 7047     		bx	lr
 222              		.size	uart_enable_interrupt, .-uart_enable_interrupt
 223              		.section	.text.uart_disable_interrupt,"ax",%progbits
 224              		.align	1
 225              		.p2align 2,,3
 226              		.global	uart_disable_interrupt
 227              		.syntax unified
 228              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck0TENh.s 			page 5


 229              		.thumb_func
 230              		.fpu fpv4-sp-d16
 231              		.type	uart_disable_interrupt, %function
 232              	uart_disable_interrupt:
 233              		@ args = 0, pretend = 0, frame = 0
 234              		@ frame_needed = 0, uses_anonymous_args = 0
 235              		@ link register save eliminated.
 236 0000 C160     		str	r1, [r0, #12]
 237 0002 7047     		bx	lr
 238              		.size	uart_disable_interrupt, .-uart_disable_interrupt
 239              		.section	.text.uart_get_interrupt_mask,"ax",%progbits
 240              		.align	1
 241              		.p2align 2,,3
 242              		.global	uart_get_interrupt_mask
 243              		.syntax unified
 244              		.thumb
 245              		.thumb_func
 246              		.fpu fpv4-sp-d16
 247              		.type	uart_get_interrupt_mask, %function
 248              	uart_get_interrupt_mask:
 249              		@ args = 0, pretend = 0, frame = 0
 250              		@ frame_needed = 0, uses_anonymous_args = 0
 251              		@ link register save eliminated.
 252 0000 0069     		ldr	r0, [r0, #16]
 253 0002 7047     		bx	lr
 254              		.size	uart_get_interrupt_mask, .-uart_get_interrupt_mask
 255              		.section	.text.uart_get_status,"ax",%progbits
 256              		.align	1
 257              		.p2align 2,,3
 258              		.global	uart_get_status
 259              		.syntax unified
 260              		.thumb
 261              		.thumb_func
 262              		.fpu fpv4-sp-d16
 263              		.type	uart_get_status, %function
 264              	uart_get_status:
 265              		@ args = 0, pretend = 0, frame = 0
 266              		@ frame_needed = 0, uses_anonymous_args = 0
 267              		@ link register save eliminated.
 268 0000 4069     		ldr	r0, [r0, #20]
 269 0002 7047     		bx	lr
 270              		.size	uart_get_status, .-uart_get_status
 271              		.section	.text.uart_reset_status,"ax",%progbits
 272              		.align	1
 273              		.p2align 2,,3
 274              		.global	uart_reset_status
 275              		.syntax unified
 276              		.thumb
 277              		.thumb_func
 278              		.fpu fpv4-sp-d16
 279              		.type	uart_reset_status, %function
 280              	uart_reset_status:
 281              		@ args = 0, pretend = 0, frame = 0
 282              		@ frame_needed = 0, uses_anonymous_args = 0
 283              		@ link register save eliminated.
 284 0000 4FF48073 		mov	r3, #256
 285 0004 0360     		str	r3, [r0]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck0TENh.s 			page 6


 286 0006 7047     		bx	lr
 287              		.size	uart_reset_status, .-uart_reset_status
 288              		.section	.text.uart_is_tx_ready,"ax",%progbits
 289              		.align	1
 290              		.p2align 2,,3
 291              		.global	uart_is_tx_ready
 292              		.syntax unified
 293              		.thumb
 294              		.thumb_func
 295              		.fpu fpv4-sp-d16
 296              		.type	uart_is_tx_ready, %function
 297              	uart_is_tx_ready:
 298              		@ args = 0, pretend = 0, frame = 0
 299              		@ frame_needed = 0, uses_anonymous_args = 0
 300              		@ link register save eliminated.
 301 0000 4069     		ldr	r0, [r0, #20]
 302 0002 C0F34000 		ubfx	r0, r0, #1, #1
 303 0006 7047     		bx	lr
 304              		.size	uart_is_tx_ready, .-uart_is_tx_ready
 305              		.section	.text.uart_is_tx_empty,"ax",%progbits
 306              		.align	1
 307              		.p2align 2,,3
 308              		.global	uart_is_tx_empty
 309              		.syntax unified
 310              		.thumb
 311              		.thumb_func
 312              		.fpu fpv4-sp-d16
 313              		.type	uart_is_tx_empty, %function
 314              	uart_is_tx_empty:
 315              		@ args = 0, pretend = 0, frame = 0
 316              		@ frame_needed = 0, uses_anonymous_args = 0
 317              		@ link register save eliminated.
 318 0000 4069     		ldr	r0, [r0, #20]
 319 0002 C0F34020 		ubfx	r0, r0, #9, #1
 320 0006 7047     		bx	lr
 321              		.size	uart_is_tx_empty, .-uart_is_tx_empty
 322              		.section	.text.uart_is_rx_ready,"ax",%progbits
 323              		.align	1
 324              		.p2align 2,,3
 325              		.global	uart_is_rx_ready
 326              		.syntax unified
 327              		.thumb
 328              		.thumb_func
 329              		.fpu fpv4-sp-d16
 330              		.type	uart_is_rx_ready, %function
 331              	uart_is_rx_ready:
 332              		@ args = 0, pretend = 0, frame = 0
 333              		@ frame_needed = 0, uses_anonymous_args = 0
 334              		@ link register save eliminated.
 335 0000 4069     		ldr	r0, [r0, #20]
 336 0002 00F00100 		and	r0, r0, #1
 337 0006 7047     		bx	lr
 338              		.size	uart_is_rx_ready, .-uart_is_rx_ready
 339              		.section	.text.uart_is_tx_buf_empty,"ax",%progbits
 340              		.align	1
 341              		.p2align 2,,3
 342              		.global	uart_is_tx_buf_empty
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck0TENh.s 			page 7


 343              		.syntax unified
 344              		.thumb
 345              		.thumb_func
 346              		.fpu fpv4-sp-d16
 347              		.type	uart_is_tx_buf_empty, %function
 348              	uart_is_tx_buf_empty:
 349              		@ args = 0, pretend = 0, frame = 0
 350              		@ frame_needed = 0, uses_anonymous_args = 0
 351              		@ link register save eliminated.
 352 0000 4069     		ldr	r0, [r0, #20]
 353 0002 C0F34020 		ubfx	r0, r0, #9, #1
 354 0006 7047     		bx	lr
 355              		.size	uart_is_tx_buf_empty, .-uart_is_tx_buf_empty
 356              		.section	.text.uart_set_clock_divisor,"ax",%progbits
 357              		.align	1
 358              		.p2align 2,,3
 359              		.global	uart_set_clock_divisor
 360              		.syntax unified
 361              		.thumb
 362              		.thumb_func
 363              		.fpu fpv4-sp-d16
 364              		.type	uart_set_clock_divisor, %function
 365              	uart_set_clock_divisor:
 366              		@ args = 0, pretend = 0, frame = 0
 367              		@ frame_needed = 0, uses_anonymous_args = 0
 368              		@ link register save eliminated.
 369 0000 0162     		str	r1, [r0, #32]
 370 0002 7047     		bx	lr
 371              		.size	uart_set_clock_divisor, .-uart_set_clock_divisor
 372              		.section	.text.uart_write,"ax",%progbits
 373              		.align	1
 374              		.p2align 2,,3
 375              		.global	uart_write
 376              		.syntax unified
 377              		.thumb
 378              		.thumb_func
 379              		.fpu fpv4-sp-d16
 380              		.type	uart_write, %function
 381              	uart_write:
 382              		@ args = 0, pretend = 0, frame = 0
 383              		@ frame_needed = 0, uses_anonymous_args = 0
 384              		@ link register save eliminated.
 385 0000 4369     		ldr	r3, [r0, #20]
 386 0002 9B07     		lsls	r3, r3, #30
 387 0004 46BF     		itte	mi
 388 0006 C161     		strmi	r1, [r0, #28]
 389 0008 0020     		movmi	r0, #0
 390 000a 0120     		movpl	r0, #1
 391 000c 7047     		bx	lr
 392              		.size	uart_write, .-uart_write
 393 000e 00BF     		.section	.text.uart_read,"ax",%progbits
 394              		.align	1
 395              		.p2align 2,,3
 396              		.global	uart_read
 397              		.syntax unified
 398              		.thumb
 399              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck0TENh.s 			page 8


 400              		.fpu fpv4-sp-d16
 401              		.type	uart_read, %function
 402              	uart_read:
 403              		@ args = 0, pretend = 0, frame = 0
 404              		@ frame_needed = 0, uses_anonymous_args = 0
 405              		@ link register save eliminated.
 406 0000 4369     		ldr	r3, [r0, #20]
 407 0002 DB07     		lsls	r3, r3, #31
 408 0004 43BF     		ittte	mi
 409 0006 8369     		ldrmi	r3, [r0, #24]
 410 0008 0B70     		strbmi	r3, [r1]
 411 000a 0020     		movmi	r0, #0
 412 000c 0120     		movpl	r0, #1
 413 000e 7047     		bx	lr
 414              		.size	uart_read, .-uart_read
 415              		.section	.text.uart_is_rx_buf_end,"ax",%progbits
 416              		.align	1
 417              		.p2align 2,,3
 418              		.global	uart_is_rx_buf_end
 419              		.syntax unified
 420              		.thumb
 421              		.thumb_func
 422              		.fpu fpv4-sp-d16
 423              		.type	uart_is_rx_buf_end, %function
 424              	uart_is_rx_buf_end:
 425              		@ args = 0, pretend = 0, frame = 0
 426              		@ frame_needed = 0, uses_anonymous_args = 0
 427              		@ link register save eliminated.
 428 0000 4069     		ldr	r0, [r0, #20]
 429 0002 C0F3C000 		ubfx	r0, r0, #3, #1
 430 0006 7047     		bx	lr
 431              		.size	uart_is_rx_buf_end, .-uart_is_rx_buf_end
 432              		.section	.text.uart_is_tx_buf_end,"ax",%progbits
 433              		.align	1
 434              		.p2align 2,,3
 435              		.global	uart_is_tx_buf_end
 436              		.syntax unified
 437              		.thumb
 438              		.thumb_func
 439              		.fpu fpv4-sp-d16
 440              		.type	uart_is_tx_buf_end, %function
 441              	uart_is_tx_buf_end:
 442              		@ args = 0, pretend = 0, frame = 0
 443              		@ frame_needed = 0, uses_anonymous_args = 0
 444              		@ link register save eliminated.
 445 0000 4069     		ldr	r0, [r0, #20]
 446 0002 C0F30010 		ubfx	r0, r0, #4, #1
 447 0006 7047     		bx	lr
 448              		.size	uart_is_tx_buf_end, .-uart_is_tx_buf_end
 449              		.section	.text.uart_is_rx_buf_full,"ax",%progbits
 450              		.align	1
 451              		.p2align 2,,3
 452              		.global	uart_is_rx_buf_full
 453              		.syntax unified
 454              		.thumb
 455              		.thumb_func
 456              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck0TENh.s 			page 9


 457              		.type	uart_is_rx_buf_full, %function
 458              	uart_is_rx_buf_full:
 459              		@ args = 0, pretend = 0, frame = 0
 460              		@ frame_needed = 0, uses_anonymous_args = 0
 461              		@ link register save eliminated.
 462 0000 4069     		ldr	r0, [r0, #20]
 463 0002 C0F30030 		ubfx	r0, r0, #12, #1
 464 0006 7047     		bx	lr
 465              		.size	uart_is_rx_buf_full, .-uart_is_rx_buf_full
 466              		.section	.text.uart_get_pdc_base,"ax",%progbits
 467              		.align	1
 468              		.p2align 2,,3
 469              		.global	uart_get_pdc_base
 470              		.syntax unified
 471              		.thumb
 472              		.thumb_func
 473              		.fpu fpv4-sp-d16
 474              		.type	uart_get_pdc_base, %function
 475              	uart_get_pdc_base:
 476              		@ args = 0, pretend = 0, frame = 0
 477              		@ frame_needed = 0, uses_anonymous_args = 0
 478              		@ link register save eliminated.
 479 0000 0349     		ldr	r1, .L37
 480 0002 044A     		ldr	r2, .L37+4
 481 0004 044B     		ldr	r3, .L37+8
 482 0006 8842     		cmp	r0, r1
 483 0008 14BF     		ite	ne
 484 000a 1046     		movne	r0, r2
 485 000c 1846     		moveq	r0, r3
 486 000e 7047     		bx	lr
 487              	.L38:
 488              		.align	2
 489              	.L37:
 490 0010 00060640 		.word	1074136576
 491 0014 00070E40 		.word	1074661120
 492 0018 00070640 		.word	1074136832
 493              		.size	uart_get_pdc_base, .-uart_get_pdc_base
 494              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 495              		.align	2
 496              		.type	cpu_irq_critical_section_counter, %object
 497              		.size	cpu_irq_critical_section_counter, 4
 498              	cpu_irq_critical_section_counter:
 499 0000 00000000 		.space	4
 500              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 501              		.type	cpu_irq_prev_interrupt_state, %object
 502              		.size	cpu_irq_prev_interrupt_state, 1
 503              	cpu_irq_prev_interrupt_state:
 504 0000 00       		.space	1
 505              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
