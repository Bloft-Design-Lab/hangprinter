ARM GAS  /tmp/ccysVinc.s 			page 1


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
  25 0000 30B4     		push	{r4, r5}
  26 0002 91E81800 		ldm	r1, {r3, r4}
  27 0006 B3FBF4F3 		udiv	r3, r3, r4
  28 000a 0246     		mov	r2, r0
  29 000c 4FF6FE70 		movw	r0, #65534
  30 0010 AC25     		movs	r5, #172
  31 0012 1B09     		lsrs	r3, r3, #4
  32 0014 5C1E     		subs	r4, r3, #1
  33 0016 8442     		cmp	r4, r0
  34 0018 1560     		str	r5, [r2]
  35 001a 0BD8     		bhi	.L3
  36 001c 40F20225 		movw	r5, #514
  37 0020 5024     		movs	r4, #80
  38 0022 8968     		ldr	r1, [r1, #8]
  39 0024 0020     		movs	r0, #0
  40 0026 1362     		str	r3, [r2, #32]
  41 0028 5160     		str	r1, [r2, #4]
  42 002a C2F82051 		str	r5, [r2, #288]
  43 002e 1460     		str	r4, [r2]
  44 0030 30BC     		pop	{r4, r5}
  45 0032 7047     		bx	lr
  46              	.L3:
  47 0034 0120     		movs	r0, #1
  48 0036 30BC     		pop	{r4, r5}
  49 0038 7047     		bx	lr
  50              		.size	uart_init, .-uart_init
  51 003a 00BF     		.section	.text.uart_enable_tx,"ax",%progbits
  52              		.align	1
  53              		.p2align 2,,3
  54              		.global	uart_enable_tx
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  /tmp/ccysVinc.s 			page 2


  58              		.fpu softvfp
  59              		.type	uart_enable_tx, %function
  60              	uart_enable_tx:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63              		@ link register save eliminated.
  64 0000 4023     		movs	r3, #64
  65 0002 0360     		str	r3, [r0]
  66 0004 7047     		bx	lr
  67              		.size	uart_enable_tx, .-uart_enable_tx
  68 0006 00BF     		.section	.text.uart_disable_tx,"ax",%progbits
  69              		.align	1
  70              		.p2align 2,,3
  71              		.global	uart_disable_tx
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu softvfp
  76              		.type	uart_disable_tx, %function
  77              	uart_disable_tx:
  78              		@ args = 0, pretend = 0, frame = 0
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80              		@ link register save eliminated.
  81 0000 8023     		movs	r3, #128
  82 0002 0360     		str	r3, [r0]
  83 0004 7047     		bx	lr
  84              		.size	uart_disable_tx, .-uart_disable_tx
  85 0006 00BF     		.section	.text.uart_reset_tx,"ax",%progbits
  86              		.align	1
  87              		.p2align 2,,3
  88              		.global	uart_reset_tx
  89              		.syntax unified
  90              		.thumb
  91              		.thumb_func
  92              		.fpu softvfp
  93              		.type	uart_reset_tx, %function
  94              	uart_reset_tx:
  95              		@ args = 0, pretend = 0, frame = 0
  96              		@ frame_needed = 0, uses_anonymous_args = 0
  97              		@ link register save eliminated.
  98 0000 8823     		movs	r3, #136
  99 0002 0360     		str	r3, [r0]
 100 0004 7047     		bx	lr
 101              		.size	uart_reset_tx, .-uart_reset_tx
 102 0006 00BF     		.section	.text.uart_enable_rx,"ax",%progbits
 103              		.align	1
 104              		.p2align 2,,3
 105              		.global	uart_enable_rx
 106              		.syntax unified
 107              		.thumb
 108              		.thumb_func
 109              		.fpu softvfp
 110              		.type	uart_enable_rx, %function
 111              	uart_enable_rx:
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114              		@ link register save eliminated.
ARM GAS  /tmp/ccysVinc.s 			page 3


 115 0000 1023     		movs	r3, #16
 116 0002 0360     		str	r3, [r0]
 117 0004 7047     		bx	lr
 118              		.size	uart_enable_rx, .-uart_enable_rx
 119 0006 00BF     		.section	.text.uart_disable_rx,"ax",%progbits
 120              		.align	1
 121              		.p2align 2,,3
 122              		.global	uart_disable_rx
 123              		.syntax unified
 124              		.thumb
 125              		.thumb_func
 126              		.fpu softvfp
 127              		.type	uart_disable_rx, %function
 128              	uart_disable_rx:
 129              		@ args = 0, pretend = 0, frame = 0
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131              		@ link register save eliminated.
 132 0000 2023     		movs	r3, #32
 133 0002 0360     		str	r3, [r0]
 134 0004 7047     		bx	lr
 135              		.size	uart_disable_rx, .-uart_disable_rx
 136 0006 00BF     		.section	.text.uart_reset_rx,"ax",%progbits
 137              		.align	1
 138              		.p2align 2,,3
 139              		.global	uart_reset_rx
 140              		.syntax unified
 141              		.thumb
 142              		.thumb_func
 143              		.fpu softvfp
 144              		.type	uart_reset_rx, %function
 145              	uart_reset_rx:
 146              		@ args = 0, pretend = 0, frame = 0
 147              		@ frame_needed = 0, uses_anonymous_args = 0
 148              		@ link register save eliminated.
 149 0000 2423     		movs	r3, #36
 150 0002 0360     		str	r3, [r0]
 151 0004 7047     		bx	lr
 152              		.size	uart_reset_rx, .-uart_reset_rx
 153 0006 00BF     		.section	.text.uart_enable,"ax",%progbits
 154              		.align	1
 155              		.p2align 2,,3
 156              		.global	uart_enable
 157              		.syntax unified
 158              		.thumb
 159              		.thumb_func
 160              		.fpu softvfp
 161              		.type	uart_enable, %function
 162              	uart_enable:
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 0, uses_anonymous_args = 0
 165              		@ link register save eliminated.
 166 0000 5023     		movs	r3, #80
 167 0002 0360     		str	r3, [r0]
 168 0004 7047     		bx	lr
 169              		.size	uart_enable, .-uart_enable
 170 0006 00BF     		.section	.text.uart_disable,"ax",%progbits
 171              		.align	1
ARM GAS  /tmp/ccysVinc.s 			page 4


 172              		.p2align 2,,3
 173              		.global	uart_disable
 174              		.syntax unified
 175              		.thumb
 176              		.thumb_func
 177              		.fpu softvfp
 178              		.type	uart_disable, %function
 179              	uart_disable:
 180              		@ args = 0, pretend = 0, frame = 0
 181              		@ frame_needed = 0, uses_anonymous_args = 0
 182              		@ link register save eliminated.
 183 0000 A023     		movs	r3, #160
 184 0002 0360     		str	r3, [r0]
 185 0004 7047     		bx	lr
 186              		.size	uart_disable, .-uart_disable
 187 0006 00BF     		.section	.text.uart_reset,"ax",%progbits
 188              		.align	1
 189              		.p2align 2,,3
 190              		.global	uart_reset
 191              		.syntax unified
 192              		.thumb
 193              		.thumb_func
 194              		.fpu softvfp
 195              		.type	uart_reset, %function
 196              	uart_reset:
 197              		@ args = 0, pretend = 0, frame = 0
 198              		@ frame_needed = 0, uses_anonymous_args = 0
 199              		@ link register save eliminated.
 200 0000 AC23     		movs	r3, #172
 201 0002 0360     		str	r3, [r0]
 202 0004 7047     		bx	lr
 203              		.size	uart_reset, .-uart_reset
 204 0006 00BF     		.section	.text.uart_enable_interrupt,"ax",%progbits
 205              		.align	1
 206              		.p2align 2,,3
 207              		.global	uart_enable_interrupt
 208              		.syntax unified
 209              		.thumb
 210              		.thumb_func
 211              		.fpu softvfp
 212              		.type	uart_enable_interrupt, %function
 213              	uart_enable_interrupt:
 214              		@ args = 0, pretend = 0, frame = 0
 215              		@ frame_needed = 0, uses_anonymous_args = 0
 216              		@ link register save eliminated.
 217 0000 8160     		str	r1, [r0, #8]
 218 0002 7047     		bx	lr
 219              		.size	uart_enable_interrupt, .-uart_enable_interrupt
 220              		.section	.text.uart_disable_interrupt,"ax",%progbits
 221              		.align	1
 222              		.p2align 2,,3
 223              		.global	uart_disable_interrupt
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu softvfp
 228              		.type	uart_disable_interrupt, %function
ARM GAS  /tmp/ccysVinc.s 			page 5


 229              	uart_disable_interrupt:
 230              		@ args = 0, pretend = 0, frame = 0
 231              		@ frame_needed = 0, uses_anonymous_args = 0
 232              		@ link register save eliminated.
 233 0000 C160     		str	r1, [r0, #12]
 234 0002 7047     		bx	lr
 235              		.size	uart_disable_interrupt, .-uart_disable_interrupt
 236              		.section	.text.uart_get_interrupt_mask,"ax",%progbits
 237              		.align	1
 238              		.p2align 2,,3
 239              		.global	uart_get_interrupt_mask
 240              		.syntax unified
 241              		.thumb
 242              		.thumb_func
 243              		.fpu softvfp
 244              		.type	uart_get_interrupt_mask, %function
 245              	uart_get_interrupt_mask:
 246              		@ args = 0, pretend = 0, frame = 0
 247              		@ frame_needed = 0, uses_anonymous_args = 0
 248              		@ link register save eliminated.
 249 0000 0069     		ldr	r0, [r0, #16]
 250 0002 7047     		bx	lr
 251              		.size	uart_get_interrupt_mask, .-uart_get_interrupt_mask
 252              		.section	.text.uart_get_status,"ax",%progbits
 253              		.align	1
 254              		.p2align 2,,3
 255              		.global	uart_get_status
 256              		.syntax unified
 257              		.thumb
 258              		.thumb_func
 259              		.fpu softvfp
 260              		.type	uart_get_status, %function
 261              	uart_get_status:
 262              		@ args = 0, pretend = 0, frame = 0
 263              		@ frame_needed = 0, uses_anonymous_args = 0
 264              		@ link register save eliminated.
 265 0000 4069     		ldr	r0, [r0, #20]
 266 0002 7047     		bx	lr
 267              		.size	uart_get_status, .-uart_get_status
 268              		.section	.text.uart_reset_status,"ax",%progbits
 269              		.align	1
 270              		.p2align 2,,3
 271              		.global	uart_reset_status
 272              		.syntax unified
 273              		.thumb
 274              		.thumb_func
 275              		.fpu softvfp
 276              		.type	uart_reset_status, %function
 277              	uart_reset_status:
 278              		@ args = 0, pretend = 0, frame = 0
 279              		@ frame_needed = 0, uses_anonymous_args = 0
 280              		@ link register save eliminated.
 281 0000 4FF48073 		mov	r3, #256
 282 0004 0360     		str	r3, [r0]
 283 0006 7047     		bx	lr
 284              		.size	uart_reset_status, .-uart_reset_status
 285              		.section	.text.uart_is_tx_ready,"ax",%progbits
ARM GAS  /tmp/ccysVinc.s 			page 6


 286              		.align	1
 287              		.p2align 2,,3
 288              		.global	uart_is_tx_ready
 289              		.syntax unified
 290              		.thumb
 291              		.thumb_func
 292              		.fpu softvfp
 293              		.type	uart_is_tx_ready, %function
 294              	uart_is_tx_ready:
 295              		@ args = 0, pretend = 0, frame = 0
 296              		@ frame_needed = 0, uses_anonymous_args = 0
 297              		@ link register save eliminated.
 298 0000 4069     		ldr	r0, [r0, #20]
 299 0002 C0F34000 		ubfx	r0, r0, #1, #1
 300 0006 7047     		bx	lr
 301              		.size	uart_is_tx_ready, .-uart_is_tx_ready
 302              		.section	.text.uart_is_tx_empty,"ax",%progbits
 303              		.align	1
 304              		.p2align 2,,3
 305              		.global	uart_is_tx_empty
 306              		.syntax unified
 307              		.thumb
 308              		.thumb_func
 309              		.fpu softvfp
 310              		.type	uart_is_tx_empty, %function
 311              	uart_is_tx_empty:
 312              		@ args = 0, pretend = 0, frame = 0
 313              		@ frame_needed = 0, uses_anonymous_args = 0
 314              		@ link register save eliminated.
 315 0000 4069     		ldr	r0, [r0, #20]
 316 0002 C0F34020 		ubfx	r0, r0, #9, #1
 317 0006 7047     		bx	lr
 318              		.size	uart_is_tx_empty, .-uart_is_tx_empty
 319              		.section	.text.uart_is_rx_ready,"ax",%progbits
 320              		.align	1
 321              		.p2align 2,,3
 322              		.global	uart_is_rx_ready
 323              		.syntax unified
 324              		.thumb
 325              		.thumb_func
 326              		.fpu softvfp
 327              		.type	uart_is_rx_ready, %function
 328              	uart_is_rx_ready:
 329              		@ args = 0, pretend = 0, frame = 0
 330              		@ frame_needed = 0, uses_anonymous_args = 0
 331              		@ link register save eliminated.
 332 0000 4069     		ldr	r0, [r0, #20]
 333 0002 00F00100 		and	r0, r0, #1
 334 0006 7047     		bx	lr
 335              		.size	uart_is_rx_ready, .-uart_is_rx_ready
 336              		.section	.text.uart_is_tx_buf_empty,"ax",%progbits
 337              		.align	1
 338              		.p2align 2,,3
 339              		.global	uart_is_tx_buf_empty
 340              		.syntax unified
 341              		.thumb
 342              		.thumb_func
ARM GAS  /tmp/ccysVinc.s 			page 7


 343              		.fpu softvfp
 344              		.type	uart_is_tx_buf_empty, %function
 345              	uart_is_tx_buf_empty:
 346              		@ args = 0, pretend = 0, frame = 0
 347              		@ frame_needed = 0, uses_anonymous_args = 0
 348              		@ link register save eliminated.
 349 0000 4069     		ldr	r0, [r0, #20]
 350 0002 C0F34020 		ubfx	r0, r0, #9, #1
 351 0006 7047     		bx	lr
 352              		.size	uart_is_tx_buf_empty, .-uart_is_tx_buf_empty
 353              		.section	.text.uart_set_clock_divisor,"ax",%progbits
 354              		.align	1
 355              		.p2align 2,,3
 356              		.global	uart_set_clock_divisor
 357              		.syntax unified
 358              		.thumb
 359              		.thumb_func
 360              		.fpu softvfp
 361              		.type	uart_set_clock_divisor, %function
 362              	uart_set_clock_divisor:
 363              		@ args = 0, pretend = 0, frame = 0
 364              		@ frame_needed = 0, uses_anonymous_args = 0
 365              		@ link register save eliminated.
 366 0000 0162     		str	r1, [r0, #32]
 367 0002 7047     		bx	lr
 368              		.size	uart_set_clock_divisor, .-uart_set_clock_divisor
 369              		.section	.text.uart_write,"ax",%progbits
 370              		.align	1
 371              		.p2align 2,,3
 372              		.global	uart_write
 373              		.syntax unified
 374              		.thumb
 375              		.thumb_func
 376              		.fpu softvfp
 377              		.type	uart_write, %function
 378              	uart_write:
 379              		@ args = 0, pretend = 0, frame = 0
 380              		@ frame_needed = 0, uses_anonymous_args = 0
 381              		@ link register save eliminated.
 382 0000 4369     		ldr	r3, [r0, #20]
 383 0002 9B07     		lsls	r3, r3, #30
 384 0004 46BF     		itte	mi
 385 0006 C161     		strmi	r1, [r0, #28]
 386 0008 0020     		movmi	r0, #0
 387 000a 0120     		movpl	r0, #1
 388 000c 7047     		bx	lr
 389              		.size	uart_write, .-uart_write
 390 000e 00BF     		.section	.text.uart_read,"ax",%progbits
 391              		.align	1
 392              		.p2align 2,,3
 393              		.global	uart_read
 394              		.syntax unified
 395              		.thumb
 396              		.thumb_func
 397              		.fpu softvfp
 398              		.type	uart_read, %function
 399              	uart_read:
ARM GAS  /tmp/ccysVinc.s 			page 8


 400              		@ args = 0, pretend = 0, frame = 0
 401              		@ frame_needed = 0, uses_anonymous_args = 0
 402              		@ link register save eliminated.
 403 0000 4369     		ldr	r3, [r0, #20]
 404 0002 DB07     		lsls	r3, r3, #31
 405 0004 43BF     		ittte	mi
 406 0006 8369     		ldrmi	r3, [r0, #24]
 407 0008 0020     		movmi	r0, #0
 408 000a 0B70     		strbmi	r3, [r1]
 409 000c 0120     		movpl	r0, #1
 410 000e 7047     		bx	lr
 411              		.size	uart_read, .-uart_read
 412              		.section	.text.uart_is_rx_buf_end,"ax",%progbits
 413              		.align	1
 414              		.p2align 2,,3
 415              		.global	uart_is_rx_buf_end
 416              		.syntax unified
 417              		.thumb
 418              		.thumb_func
 419              		.fpu softvfp
 420              		.type	uart_is_rx_buf_end, %function
 421              	uart_is_rx_buf_end:
 422              		@ args = 0, pretend = 0, frame = 0
 423              		@ frame_needed = 0, uses_anonymous_args = 0
 424              		@ link register save eliminated.
 425 0000 4069     		ldr	r0, [r0, #20]
 426 0002 C0F3C000 		ubfx	r0, r0, #3, #1
 427 0006 7047     		bx	lr
 428              		.size	uart_is_rx_buf_end, .-uart_is_rx_buf_end
 429              		.section	.text.uart_is_tx_buf_end,"ax",%progbits
 430              		.align	1
 431              		.p2align 2,,3
 432              		.global	uart_is_tx_buf_end
 433              		.syntax unified
 434              		.thumb
 435              		.thumb_func
 436              		.fpu softvfp
 437              		.type	uart_is_tx_buf_end, %function
 438              	uart_is_tx_buf_end:
 439              		@ args = 0, pretend = 0, frame = 0
 440              		@ frame_needed = 0, uses_anonymous_args = 0
 441              		@ link register save eliminated.
 442 0000 4069     		ldr	r0, [r0, #20]
 443 0002 C0F30010 		ubfx	r0, r0, #4, #1
 444 0006 7047     		bx	lr
 445              		.size	uart_is_tx_buf_end, .-uart_is_tx_buf_end
 446              		.section	.text.uart_is_rx_buf_full,"ax",%progbits
 447              		.align	1
 448              		.p2align 2,,3
 449              		.global	uart_is_rx_buf_full
 450              		.syntax unified
 451              		.thumb
 452              		.thumb_func
 453              		.fpu softvfp
 454              		.type	uart_is_rx_buf_full, %function
 455              	uart_is_rx_buf_full:
 456              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccysVinc.s 			page 9


 457              		@ frame_needed = 0, uses_anonymous_args = 0
 458              		@ link register save eliminated.
 459 0000 4069     		ldr	r0, [r0, #20]
 460 0002 C0F30030 		ubfx	r0, r0, #12, #1
 461 0006 7047     		bx	lr
 462              		.size	uart_is_rx_buf_full, .-uart_is_rx_buf_full
 463              		.section	.text.uart_get_pdc_base,"ax",%progbits
 464              		.align	1
 465              		.p2align 2,,3
 466              		.global	uart_get_pdc_base
 467              		.syntax unified
 468              		.thumb
 469              		.thumb_func
 470              		.fpu softvfp
 471              		.type	uart_get_pdc_base, %function
 472              	uart_get_pdc_base:
 473              		@ args = 0, pretend = 0, frame = 0
 474              		@ frame_needed = 0, uses_anonymous_args = 0
 475              		@ link register save eliminated.
 476 0000 0048     		ldr	r0, .L35
 477 0002 7047     		bx	lr
 478              	.L36:
 479              		.align	2
 480              	.L35:
 481 0004 00090E40 		.word	1074661632
 482              		.size	uart_get_pdc_base, .-uart_get_pdc_base
 483              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 484              		.align	2
 485              		.type	cpu_irq_critical_section_counter, %object
 486              		.size	cpu_irq_critical_section_counter, 4
 487              	cpu_irq_critical_section_counter:
 488 0000 00000000 		.space	4
 489              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 490              		.type	cpu_irq_prev_interrupt_state, %object
 491              		.size	cpu_irq_prev_interrupt_state, 1
 492              	cpu_irq_prev_interrupt_state:
 493 0000 00       		.space	1
 494              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
