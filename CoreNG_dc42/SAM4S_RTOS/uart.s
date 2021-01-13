ARM GAS  /tmp/cc56lrUt.s 			page 1


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
  11              		.file	"uart.c"
  12              		.section	.text.uart_init,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	uart_init
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	uart_init, %function
  21              	uart_init:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0246     		mov	r2, r0
  26 0002 0B68     		ldr	r3, [r1]
  27 0004 4868     		ldr	r0, [r1, #4]
  28 0006 B3FBF0F3 		udiv	r3, r3, r0
  29 000a 1B09     		lsrs	r3, r3, #4
  30 000c 30B4     		push	{r4, r5}
  31 000e 4FF6FE70 		movw	r0, #65534
  32 0012 5C1E     		subs	r4, r3, #1
  33 0014 AC25     		movs	r5, #172
  34 0016 8442     		cmp	r4, r0
  35 0018 1560     		str	r5, [r2]
  36 001a 0BD8     		bhi	.L3
  37 001c 8868     		ldr	r0, [r1, #8]
  38 001e 1362     		str	r3, [r2, #32]
  39 0020 40F20221 		movw	r1, #514
  40 0024 5023     		movs	r3, #80
  41 0026 5060     		str	r0, [r2, #4]
  42 0028 30BC     		pop	{r4, r5}
  43 002a 0020     		movs	r0, #0
  44 002c C2F82011 		str	r1, [r2, #288]
  45 0030 1360     		str	r3, [r2]
  46 0032 7047     		bx	lr
  47              	.L3:
  48 0034 0120     		movs	r0, #1
  49 0036 30BC     		pop	{r4, r5}
  50 0038 7047     		bx	lr
  51              		.size	uart_init, .-uart_init
  52 003a 00BF     		.section	.text.uart_enable_tx,"ax",%progbits
  53              		.align	1
  54              		.p2align 2,,3
  55              		.global	uart_enable_tx
  56              		.syntax unified
  57              		.thumb
ARM GAS  /tmp/cc56lrUt.s 			page 2


  58              		.thumb_func
  59              		.fpu softvfp
  60              		.type	uart_enable_tx, %function
  61              	uart_enable_tx:
  62              		@ args = 0, pretend = 0, frame = 0
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64              		@ link register save eliminated.
  65 0000 4023     		movs	r3, #64
  66 0002 0360     		str	r3, [r0]
  67 0004 7047     		bx	lr
  68              		.size	uart_enable_tx, .-uart_enable_tx
  69 0006 00BF     		.section	.text.uart_disable_tx,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	uart_disable_tx
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu softvfp
  77              		.type	uart_disable_tx, %function
  78              	uart_disable_tx:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81              		@ link register save eliminated.
  82 0000 8023     		movs	r3, #128
  83 0002 0360     		str	r3, [r0]
  84 0004 7047     		bx	lr
  85              		.size	uart_disable_tx, .-uart_disable_tx
  86 0006 00BF     		.section	.text.uart_reset_tx,"ax",%progbits
  87              		.align	1
  88              		.p2align 2,,3
  89              		.global	uart_reset_tx
  90              		.syntax unified
  91              		.thumb
  92              		.thumb_func
  93              		.fpu softvfp
  94              		.type	uart_reset_tx, %function
  95              	uart_reset_tx:
  96              		@ args = 0, pretend = 0, frame = 0
  97              		@ frame_needed = 0, uses_anonymous_args = 0
  98              		@ link register save eliminated.
  99 0000 8823     		movs	r3, #136
 100 0002 0360     		str	r3, [r0]
 101 0004 7047     		bx	lr
 102              		.size	uart_reset_tx, .-uart_reset_tx
 103 0006 00BF     		.section	.text.uart_enable_rx,"ax",%progbits
 104              		.align	1
 105              		.p2align 2,,3
 106              		.global	uart_enable_rx
 107              		.syntax unified
 108              		.thumb
 109              		.thumb_func
 110              		.fpu softvfp
 111              		.type	uart_enable_rx, %function
 112              	uart_enable_rx:
 113              		@ args = 0, pretend = 0, frame = 0
 114              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cc56lrUt.s 			page 3


 115              		@ link register save eliminated.
 116 0000 1023     		movs	r3, #16
 117 0002 0360     		str	r3, [r0]
 118 0004 7047     		bx	lr
 119              		.size	uart_enable_rx, .-uart_enable_rx
 120 0006 00BF     		.section	.text.uart_disable_rx,"ax",%progbits
 121              		.align	1
 122              		.p2align 2,,3
 123              		.global	uart_disable_rx
 124              		.syntax unified
 125              		.thumb
 126              		.thumb_func
 127              		.fpu softvfp
 128              		.type	uart_disable_rx, %function
 129              	uart_disable_rx:
 130              		@ args = 0, pretend = 0, frame = 0
 131              		@ frame_needed = 0, uses_anonymous_args = 0
 132              		@ link register save eliminated.
 133 0000 2023     		movs	r3, #32
 134 0002 0360     		str	r3, [r0]
 135 0004 7047     		bx	lr
 136              		.size	uart_disable_rx, .-uart_disable_rx
 137 0006 00BF     		.section	.text.uart_reset_rx,"ax",%progbits
 138              		.align	1
 139              		.p2align 2,,3
 140              		.global	uart_reset_rx
 141              		.syntax unified
 142              		.thumb
 143              		.thumb_func
 144              		.fpu softvfp
 145              		.type	uart_reset_rx, %function
 146              	uart_reset_rx:
 147              		@ args = 0, pretend = 0, frame = 0
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149              		@ link register save eliminated.
 150 0000 2423     		movs	r3, #36
 151 0002 0360     		str	r3, [r0]
 152 0004 7047     		bx	lr
 153              		.size	uart_reset_rx, .-uart_reset_rx
 154 0006 00BF     		.section	.text.uart_enable,"ax",%progbits
 155              		.align	1
 156              		.p2align 2,,3
 157              		.global	uart_enable
 158              		.syntax unified
 159              		.thumb
 160              		.thumb_func
 161              		.fpu softvfp
 162              		.type	uart_enable, %function
 163              	uart_enable:
 164              		@ args = 0, pretend = 0, frame = 0
 165              		@ frame_needed = 0, uses_anonymous_args = 0
 166              		@ link register save eliminated.
 167 0000 5023     		movs	r3, #80
 168 0002 0360     		str	r3, [r0]
 169 0004 7047     		bx	lr
 170              		.size	uart_enable, .-uart_enable
 171 0006 00BF     		.section	.text.uart_disable,"ax",%progbits
ARM GAS  /tmp/cc56lrUt.s 			page 4


 172              		.align	1
 173              		.p2align 2,,3
 174              		.global	uart_disable
 175              		.syntax unified
 176              		.thumb
 177              		.thumb_func
 178              		.fpu softvfp
 179              		.type	uart_disable, %function
 180              	uart_disable:
 181              		@ args = 0, pretend = 0, frame = 0
 182              		@ frame_needed = 0, uses_anonymous_args = 0
 183              		@ link register save eliminated.
 184 0000 A023     		movs	r3, #160
 185 0002 0360     		str	r3, [r0]
 186 0004 7047     		bx	lr
 187              		.size	uart_disable, .-uart_disable
 188 0006 00BF     		.section	.text.uart_reset,"ax",%progbits
 189              		.align	1
 190              		.p2align 2,,3
 191              		.global	uart_reset
 192              		.syntax unified
 193              		.thumb
 194              		.thumb_func
 195              		.fpu softvfp
 196              		.type	uart_reset, %function
 197              	uart_reset:
 198              		@ args = 0, pretend = 0, frame = 0
 199              		@ frame_needed = 0, uses_anonymous_args = 0
 200              		@ link register save eliminated.
 201 0000 AC23     		movs	r3, #172
 202 0002 0360     		str	r3, [r0]
 203 0004 7047     		bx	lr
 204              		.size	uart_reset, .-uart_reset
 205 0006 00BF     		.section	.text.uart_enable_interrupt,"ax",%progbits
 206              		.align	1
 207              		.p2align 2,,3
 208              		.global	uart_enable_interrupt
 209              		.syntax unified
 210              		.thumb
 211              		.thumb_func
 212              		.fpu softvfp
 213              		.type	uart_enable_interrupt, %function
 214              	uart_enable_interrupt:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217              		@ link register save eliminated.
 218 0000 8160     		str	r1, [r0, #8]
 219 0002 7047     		bx	lr
 220              		.size	uart_enable_interrupt, .-uart_enable_interrupt
 221              		.section	.text.uart_disable_interrupt,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	uart_disable_interrupt
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu softvfp
ARM GAS  /tmp/cc56lrUt.s 			page 5


 229              		.type	uart_disable_interrupt, %function
 230              	uart_disable_interrupt:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233              		@ link register save eliminated.
 234 0000 C160     		str	r1, [r0, #12]
 235 0002 7047     		bx	lr
 236              		.size	uart_disable_interrupt, .-uart_disable_interrupt
 237              		.section	.text.uart_get_interrupt_mask,"ax",%progbits
 238              		.align	1
 239              		.p2align 2,,3
 240              		.global	uart_get_interrupt_mask
 241              		.syntax unified
 242              		.thumb
 243              		.thumb_func
 244              		.fpu softvfp
 245              		.type	uart_get_interrupt_mask, %function
 246              	uart_get_interrupt_mask:
 247              		@ args = 0, pretend = 0, frame = 0
 248              		@ frame_needed = 0, uses_anonymous_args = 0
 249              		@ link register save eliminated.
 250 0000 0069     		ldr	r0, [r0, #16]
 251 0002 7047     		bx	lr
 252              		.size	uart_get_interrupt_mask, .-uart_get_interrupt_mask
 253              		.section	.text.uart_get_status,"ax",%progbits
 254              		.align	1
 255              		.p2align 2,,3
 256              		.global	uart_get_status
 257              		.syntax unified
 258              		.thumb
 259              		.thumb_func
 260              		.fpu softvfp
 261              		.type	uart_get_status, %function
 262              	uart_get_status:
 263              		@ args = 0, pretend = 0, frame = 0
 264              		@ frame_needed = 0, uses_anonymous_args = 0
 265              		@ link register save eliminated.
 266 0000 4069     		ldr	r0, [r0, #20]
 267 0002 7047     		bx	lr
 268              		.size	uart_get_status, .-uart_get_status
 269              		.section	.text.uart_reset_status,"ax",%progbits
 270              		.align	1
 271              		.p2align 2,,3
 272              		.global	uart_reset_status
 273              		.syntax unified
 274              		.thumb
 275              		.thumb_func
 276              		.fpu softvfp
 277              		.type	uart_reset_status, %function
 278              	uart_reset_status:
 279              		@ args = 0, pretend = 0, frame = 0
 280              		@ frame_needed = 0, uses_anonymous_args = 0
 281              		@ link register save eliminated.
 282 0000 4FF48073 		mov	r3, #256
 283 0004 0360     		str	r3, [r0]
 284 0006 7047     		bx	lr
 285              		.size	uart_reset_status, .-uart_reset_status
ARM GAS  /tmp/cc56lrUt.s 			page 6


 286              		.section	.text.uart_is_tx_ready,"ax",%progbits
 287              		.align	1
 288              		.p2align 2,,3
 289              		.global	uart_is_tx_ready
 290              		.syntax unified
 291              		.thumb
 292              		.thumb_func
 293              		.fpu softvfp
 294              		.type	uart_is_tx_ready, %function
 295              	uart_is_tx_ready:
 296              		@ args = 0, pretend = 0, frame = 0
 297              		@ frame_needed = 0, uses_anonymous_args = 0
 298              		@ link register save eliminated.
 299 0000 4069     		ldr	r0, [r0, #20]
 300 0002 C0F34000 		ubfx	r0, r0, #1, #1
 301 0006 7047     		bx	lr
 302              		.size	uart_is_tx_ready, .-uart_is_tx_ready
 303              		.section	.text.uart_is_tx_empty,"ax",%progbits
 304              		.align	1
 305              		.p2align 2,,3
 306              		.global	uart_is_tx_empty
 307              		.syntax unified
 308              		.thumb
 309              		.thumb_func
 310              		.fpu softvfp
 311              		.type	uart_is_tx_empty, %function
 312              	uart_is_tx_empty:
 313              		@ args = 0, pretend = 0, frame = 0
 314              		@ frame_needed = 0, uses_anonymous_args = 0
 315              		@ link register save eliminated.
 316 0000 4069     		ldr	r0, [r0, #20]
 317 0002 C0F34020 		ubfx	r0, r0, #9, #1
 318 0006 7047     		bx	lr
 319              		.size	uart_is_tx_empty, .-uart_is_tx_empty
 320              		.section	.text.uart_is_rx_ready,"ax",%progbits
 321              		.align	1
 322              		.p2align 2,,3
 323              		.global	uart_is_rx_ready
 324              		.syntax unified
 325              		.thumb
 326              		.thumb_func
 327              		.fpu softvfp
 328              		.type	uart_is_rx_ready, %function
 329              	uart_is_rx_ready:
 330              		@ args = 0, pretend = 0, frame = 0
 331              		@ frame_needed = 0, uses_anonymous_args = 0
 332              		@ link register save eliminated.
 333 0000 4069     		ldr	r0, [r0, #20]
 334 0002 00F00100 		and	r0, r0, #1
 335 0006 7047     		bx	lr
 336              		.size	uart_is_rx_ready, .-uart_is_rx_ready
 337              		.section	.text.uart_is_tx_buf_empty,"ax",%progbits
 338              		.align	1
 339              		.p2align 2,,3
 340              		.global	uart_is_tx_buf_empty
 341              		.syntax unified
 342              		.thumb
ARM GAS  /tmp/cc56lrUt.s 			page 7


 343              		.thumb_func
 344              		.fpu softvfp
 345              		.type	uart_is_tx_buf_empty, %function
 346              	uart_is_tx_buf_empty:
 347              		@ args = 0, pretend = 0, frame = 0
 348              		@ frame_needed = 0, uses_anonymous_args = 0
 349              		@ link register save eliminated.
 350 0000 4069     		ldr	r0, [r0, #20]
 351 0002 C0F34020 		ubfx	r0, r0, #9, #1
 352 0006 7047     		bx	lr
 353              		.size	uart_is_tx_buf_empty, .-uart_is_tx_buf_empty
 354              		.section	.text.uart_set_clock_divisor,"ax",%progbits
 355              		.align	1
 356              		.p2align 2,,3
 357              		.global	uart_set_clock_divisor
 358              		.syntax unified
 359              		.thumb
 360              		.thumb_func
 361              		.fpu softvfp
 362              		.type	uart_set_clock_divisor, %function
 363              	uart_set_clock_divisor:
 364              		@ args = 0, pretend = 0, frame = 0
 365              		@ frame_needed = 0, uses_anonymous_args = 0
 366              		@ link register save eliminated.
 367 0000 0162     		str	r1, [r0, #32]
 368 0002 7047     		bx	lr
 369              		.size	uart_set_clock_divisor, .-uart_set_clock_divisor
 370              		.section	.text.uart_write,"ax",%progbits
 371              		.align	1
 372              		.p2align 2,,3
 373              		.global	uart_write
 374              		.syntax unified
 375              		.thumb
 376              		.thumb_func
 377              		.fpu softvfp
 378              		.type	uart_write, %function
 379              	uart_write:
 380              		@ args = 0, pretend = 0, frame = 0
 381              		@ frame_needed = 0, uses_anonymous_args = 0
 382              		@ link register save eliminated.
 383 0000 4369     		ldr	r3, [r0, #20]
 384 0002 9B07     		lsls	r3, r3, #30
 385 0004 46BF     		itte	mi
 386 0006 C161     		strmi	r1, [r0, #28]
 387 0008 0020     		movmi	r0, #0
 388 000a 0120     		movpl	r0, #1
 389 000c 7047     		bx	lr
 390              		.size	uart_write, .-uart_write
 391 000e 00BF     		.section	.text.uart_read,"ax",%progbits
 392              		.align	1
 393              		.p2align 2,,3
 394              		.global	uart_read
 395              		.syntax unified
 396              		.thumb
 397              		.thumb_func
 398              		.fpu softvfp
 399              		.type	uart_read, %function
ARM GAS  /tmp/cc56lrUt.s 			page 8


 400              	uart_read:
 401              		@ args = 0, pretend = 0, frame = 0
 402              		@ frame_needed = 0, uses_anonymous_args = 0
 403              		@ link register save eliminated.
 404 0000 4369     		ldr	r3, [r0, #20]
 405 0002 DB07     		lsls	r3, r3, #31
 406 0004 43BF     		ittte	mi
 407 0006 8369     		ldrmi	r3, [r0, #24]
 408 0008 0B70     		strbmi	r3, [r1]
 409 000a 0020     		movmi	r0, #0
 410 000c 0120     		movpl	r0, #1
 411 000e 7047     		bx	lr
 412              		.size	uart_read, .-uart_read
 413              		.section	.text.uart_is_rx_buf_end,"ax",%progbits
 414              		.align	1
 415              		.p2align 2,,3
 416              		.global	uart_is_rx_buf_end
 417              		.syntax unified
 418              		.thumb
 419              		.thumb_func
 420              		.fpu softvfp
 421              		.type	uart_is_rx_buf_end, %function
 422              	uart_is_rx_buf_end:
 423              		@ args = 0, pretend = 0, frame = 0
 424              		@ frame_needed = 0, uses_anonymous_args = 0
 425              		@ link register save eliminated.
 426 0000 4069     		ldr	r0, [r0, #20]
 427 0002 C0F3C000 		ubfx	r0, r0, #3, #1
 428 0006 7047     		bx	lr
 429              		.size	uart_is_rx_buf_end, .-uart_is_rx_buf_end
 430              		.section	.text.uart_is_tx_buf_end,"ax",%progbits
 431              		.align	1
 432              		.p2align 2,,3
 433              		.global	uart_is_tx_buf_end
 434              		.syntax unified
 435              		.thumb
 436              		.thumb_func
 437              		.fpu softvfp
 438              		.type	uart_is_tx_buf_end, %function
 439              	uart_is_tx_buf_end:
 440              		@ args = 0, pretend = 0, frame = 0
 441              		@ frame_needed = 0, uses_anonymous_args = 0
 442              		@ link register save eliminated.
 443 0000 4069     		ldr	r0, [r0, #20]
 444 0002 C0F30010 		ubfx	r0, r0, #4, #1
 445 0006 7047     		bx	lr
 446              		.size	uart_is_tx_buf_end, .-uart_is_tx_buf_end
 447              		.section	.text.uart_is_rx_buf_full,"ax",%progbits
 448              		.align	1
 449              		.p2align 2,,3
 450              		.global	uart_is_rx_buf_full
 451              		.syntax unified
 452              		.thumb
 453              		.thumb_func
 454              		.fpu softvfp
 455              		.type	uart_is_rx_buf_full, %function
 456              	uart_is_rx_buf_full:
ARM GAS  /tmp/cc56lrUt.s 			page 9


 457              		@ args = 0, pretend = 0, frame = 0
 458              		@ frame_needed = 0, uses_anonymous_args = 0
 459              		@ link register save eliminated.
 460 0000 4069     		ldr	r0, [r0, #20]
 461 0002 C0F30030 		ubfx	r0, r0, #12, #1
 462 0006 7047     		bx	lr
 463              		.size	uart_is_rx_buf_full, .-uart_is_rx_buf_full
 464              		.section	.text.uart_get_pdc_base,"ax",%progbits
 465              		.align	1
 466              		.p2align 2,,3
 467              		.global	uart_get_pdc_base
 468              		.syntax unified
 469              		.thumb
 470              		.thumb_func
 471              		.fpu softvfp
 472              		.type	uart_get_pdc_base, %function
 473              	uart_get_pdc_base:
 474              		@ args = 0, pretend = 0, frame = 0
 475              		@ frame_needed = 0, uses_anonymous_args = 0
 476              		@ link register save eliminated.
 477 0000 0349     		ldr	r1, .L37
 478 0002 044A     		ldr	r2, .L37+4
 479 0004 044B     		ldr	r3, .L37+8
 480 0006 8842     		cmp	r0, r1
 481 0008 14BF     		ite	ne
 482 000a 1046     		movne	r0, r2
 483 000c 1846     		moveq	r0, r3
 484 000e 7047     		bx	lr
 485              	.L38:
 486              		.align	2
 487              	.L37:
 488 0010 00080E40 		.word	1074661376
 489 0014 00070E40 		.word	1074661120
 490 0018 00090E40 		.word	1074661632
 491              		.size	uart_get_pdc_base, .-uart_get_pdc_base
 492              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 493              		.align	2
 494              		.type	cpu_irq_critical_section_counter, %object
 495              		.size	cpu_irq_critical_section_counter, 4
 496              	cpu_irq_critical_section_counter:
 497 0000 00000000 		.space	4
 498              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 499              		.type	cpu_irq_prev_interrupt_state, %object
 500              		.size	cpu_irq_prev_interrupt_state, 1
 501              	cpu_irq_prev_interrupt_state:
 502 0000 00       		.space	1
 503              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
