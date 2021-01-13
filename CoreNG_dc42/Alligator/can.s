ARM GAS  /tmp/cch5izEL.s 			page 1


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
  11              		.file	"can.c"
  12              		.section	.text.can_enable,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	can_enable
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	can_enable, %function
  21              	can_enable:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0368     		ldr	r3, [r0]
  26 0002 43F00103 		orr	r3, r3, #1
  27 0006 0360     		str	r3, [r0]
  28 0008 7047     		bx	lr
  29              		.size	can_enable, .-can_enable
  30 000a 00BF     		.section	.text.can_disable,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.global	can_disable
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu softvfp
  38              		.type	can_disable, %function
  39              	can_disable:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 0368     		ldr	r3, [r0]
  44 0002 23F00103 		bic	r3, r3, #1
  45 0006 0360     		str	r3, [r0]
  46 0008 7047     		bx	lr
  47              		.size	can_disable, .-can_disable
  48 000a 00BF     		.section	.text.can_disable_low_power_mode,"ax",%progbits
  49              		.align	1
  50              		.p2align 2,,3
  51              		.global	can_disable_low_power_mode
  52              		.syntax unified
  53              		.thumb
  54              		.thumb_func
  55              		.fpu softvfp
  56              		.type	can_disable_low_power_mode, %function
  57              	can_disable_low_power_mode:
ARM GAS  /tmp/cch5izEL.s 			page 2


  58              		@ args = 0, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60              		@ link register save eliminated.
  61 0000 0368     		ldr	r3, [r0]
  62 0002 23F00203 		bic	r3, r3, #2
  63 0006 0360     		str	r3, [r0]
  64 0008 7047     		bx	lr
  65              		.size	can_disable_low_power_mode, .-can_disable_low_power_mode
  66 000a 00BF     		.section	.text.can_enable_low_power_mode,"ax",%progbits
  67              		.align	1
  68              		.p2align 2,,3
  69              		.global	can_enable_low_power_mode
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu softvfp
  74              		.type	can_enable_low_power_mode, %function
  75              	can_enable_low_power_mode:
  76              		@ args = 0, pretend = 0, frame = 0
  77              		@ frame_needed = 0, uses_anonymous_args = 0
  78              		@ link register save eliminated.
  79 0000 0368     		ldr	r3, [r0]
  80 0002 43F00203 		orr	r3, r3, #2
  81 0006 0360     		str	r3, [r0]
  82 0008 7047     		bx	lr
  83              		.size	can_enable_low_power_mode, .-can_enable_low_power_mode
  84 000a 00BF     		.section	.text.can_disable_autobaud_listen_mode,"ax",%progbits
  85              		.align	1
  86              		.p2align 2,,3
  87              		.global	can_disable_autobaud_listen_mode
  88              		.syntax unified
  89              		.thumb
  90              		.thumb_func
  91              		.fpu softvfp
  92              		.type	can_disable_autobaud_listen_mode, %function
  93              	can_disable_autobaud_listen_mode:
  94              		@ args = 0, pretend = 0, frame = 0
  95              		@ frame_needed = 0, uses_anonymous_args = 0
  96              		@ link register save eliminated.
  97 0000 0368     		ldr	r3, [r0]
  98 0002 23F00403 		bic	r3, r3, #4
  99 0006 0360     		str	r3, [r0]
 100 0008 7047     		bx	lr
 101              		.size	can_disable_autobaud_listen_mode, .-can_disable_autobaud_listen_mode
 102 000a 00BF     		.section	.text.can_enable_autobaud_listen_mode,"ax",%progbits
 103              		.align	1
 104              		.p2align 2,,3
 105              		.global	can_enable_autobaud_listen_mode
 106              		.syntax unified
 107              		.thumb
 108              		.thumb_func
 109              		.fpu softvfp
 110              		.type	can_enable_autobaud_listen_mode, %function
 111              	can_enable_autobaud_listen_mode:
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114              		@ link register save eliminated.
ARM GAS  /tmp/cch5izEL.s 			page 3


 115 0000 0368     		ldr	r3, [r0]
 116 0002 43F00403 		orr	r3, r3, #4
 117 0006 0360     		str	r3, [r0]
 118 0008 7047     		bx	lr
 119              		.size	can_enable_autobaud_listen_mode, .-can_enable_autobaud_listen_mode
 120 000a 00BF     		.section	.text.can_disable_overload_frame,"ax",%progbits
 121              		.align	1
 122              		.p2align 2,,3
 123              		.global	can_disable_overload_frame
 124              		.syntax unified
 125              		.thumb
 126              		.thumb_func
 127              		.fpu softvfp
 128              		.type	can_disable_overload_frame, %function
 129              	can_disable_overload_frame:
 130              		@ args = 0, pretend = 0, frame = 0
 131              		@ frame_needed = 0, uses_anonymous_args = 0
 132              		@ link register save eliminated.
 133 0000 0368     		ldr	r3, [r0]
 134 0002 23F00803 		bic	r3, r3, #8
 135 0006 0360     		str	r3, [r0]
 136 0008 7047     		bx	lr
 137              		.size	can_disable_overload_frame, .-can_disable_overload_frame
 138 000a 00BF     		.section	.text.can_enable_overload_frame,"ax",%progbits
 139              		.align	1
 140              		.p2align 2,,3
 141              		.global	can_enable_overload_frame
 142              		.syntax unified
 143              		.thumb
 144              		.thumb_func
 145              		.fpu softvfp
 146              		.type	can_enable_overload_frame, %function
 147              	can_enable_overload_frame:
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 0, uses_anonymous_args = 0
 150              		@ link register save eliminated.
 151 0000 0368     		ldr	r3, [r0]
 152 0002 43F00803 		orr	r3, r3, #8
 153 0006 0360     		str	r3, [r0]
 154 0008 7047     		bx	lr
 155              		.size	can_enable_overload_frame, .-can_enable_overload_frame
 156 000a 00BF     		.section	.text.can_set_timestamp_capture_point,"ax",%progbits
 157              		.align	1
 158              		.p2align 2,,3
 159              		.global	can_set_timestamp_capture_point
 160              		.syntax unified
 161              		.thumb
 162              		.thumb_func
 163              		.fpu softvfp
 164              		.type	can_set_timestamp_capture_point, %function
 165              	can_set_timestamp_capture_point:
 166              		@ args = 0, pretend = 0, frame = 0
 167              		@ frame_needed = 0, uses_anonymous_args = 0
 168              		@ link register save eliminated.
 169 0000 0368     		ldr	r3, [r0]
 170 0002 19B9     		cbnz	r1, .L13
 171 0004 23F01003 		bic	r3, r3, #16
ARM GAS  /tmp/cch5izEL.s 			page 4


 172 0008 0360     		str	r3, [r0]
 173 000a 7047     		bx	lr
 174              	.L13:
 175 000c 43F01003 		orr	r3, r3, #16
 176 0010 0360     		str	r3, [r0]
 177 0012 7047     		bx	lr
 178              		.size	can_set_timestamp_capture_point, .-can_set_timestamp_capture_point
 179              		.section	.text.can_disable_time_triggered_mode,"ax",%progbits
 180              		.align	1
 181              		.p2align 2,,3
 182              		.global	can_disable_time_triggered_mode
 183              		.syntax unified
 184              		.thumb
 185              		.thumb_func
 186              		.fpu softvfp
 187              		.type	can_disable_time_triggered_mode, %function
 188              	can_disable_time_triggered_mode:
 189              		@ args = 0, pretend = 0, frame = 0
 190              		@ frame_needed = 0, uses_anonymous_args = 0
 191              		@ link register save eliminated.
 192 0000 0368     		ldr	r3, [r0]
 193 0002 23F02003 		bic	r3, r3, #32
 194 0006 0360     		str	r3, [r0]
 195 0008 7047     		bx	lr
 196              		.size	can_disable_time_triggered_mode, .-can_disable_time_triggered_mode
 197 000a 00BF     		.section	.text.can_enable_time_triggered_mode,"ax",%progbits
 198              		.align	1
 199              		.p2align 2,,3
 200              		.global	can_enable_time_triggered_mode
 201              		.syntax unified
 202              		.thumb
 203              		.thumb_func
 204              		.fpu softvfp
 205              		.type	can_enable_time_triggered_mode, %function
 206              	can_enable_time_triggered_mode:
 207              		@ args = 0, pretend = 0, frame = 0
 208              		@ frame_needed = 0, uses_anonymous_args = 0
 209              		@ link register save eliminated.
 210 0000 0368     		ldr	r3, [r0]
 211 0002 43F02003 		orr	r3, r3, #32
 212 0006 0360     		str	r3, [r0]
 213 0008 7047     		bx	lr
 214              		.size	can_enable_time_triggered_mode, .-can_enable_time_triggered_mode
 215 000a 00BF     		.section	.text.can_disable_timer_freeze,"ax",%progbits
 216              		.align	1
 217              		.p2align 2,,3
 218              		.global	can_disable_timer_freeze
 219              		.syntax unified
 220              		.thumb
 221              		.thumb_func
 222              		.fpu softvfp
 223              		.type	can_disable_timer_freeze, %function
 224              	can_disable_timer_freeze:
 225              		@ args = 0, pretend = 0, frame = 0
 226              		@ frame_needed = 0, uses_anonymous_args = 0
 227              		@ link register save eliminated.
 228 0000 0368     		ldr	r3, [r0]
ARM GAS  /tmp/cch5izEL.s 			page 5


 229 0002 23F04003 		bic	r3, r3, #64
 230 0006 0360     		str	r3, [r0]
 231 0008 7047     		bx	lr
 232              		.size	can_disable_timer_freeze, .-can_disable_timer_freeze
 233 000a 00BF     		.section	.text.can_enable_timer_freeze,"ax",%progbits
 234              		.align	1
 235              		.p2align 2,,3
 236              		.global	can_enable_timer_freeze
 237              		.syntax unified
 238              		.thumb
 239              		.thumb_func
 240              		.fpu softvfp
 241              		.type	can_enable_timer_freeze, %function
 242              	can_enable_timer_freeze:
 243              		@ args = 0, pretend = 0, frame = 0
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245              		@ link register save eliminated.
 246 0000 0368     		ldr	r3, [r0]
 247 0002 43F04003 		orr	r3, r3, #64
 248 0006 0360     		str	r3, [r0]
 249 0008 7047     		bx	lr
 250              		.size	can_enable_timer_freeze, .-can_enable_timer_freeze
 251 000a 00BF     		.section	.text.can_disable_tx_repeat,"ax",%progbits
 252              		.align	1
 253              		.p2align 2,,3
 254              		.global	can_disable_tx_repeat
 255              		.syntax unified
 256              		.thumb
 257              		.thumb_func
 258              		.fpu softvfp
 259              		.type	can_disable_tx_repeat, %function
 260              	can_disable_tx_repeat:
 261              		@ args = 0, pretend = 0, frame = 0
 262              		@ frame_needed = 0, uses_anonymous_args = 0
 263              		@ link register save eliminated.
 264 0000 0368     		ldr	r3, [r0]
 265 0002 43F08003 		orr	r3, r3, #128
 266 0006 0360     		str	r3, [r0]
 267 0008 7047     		bx	lr
 268              		.size	can_disable_tx_repeat, .-can_disable_tx_repeat
 269 000a 00BF     		.section	.text.can_enable_tx_repeat,"ax",%progbits
 270              		.align	1
 271              		.p2align 2,,3
 272              		.global	can_enable_tx_repeat
 273              		.syntax unified
 274              		.thumb
 275              		.thumb_func
 276              		.fpu softvfp
 277              		.type	can_enable_tx_repeat, %function
 278              	can_enable_tx_repeat:
 279              		@ args = 0, pretend = 0, frame = 0
 280              		@ frame_needed = 0, uses_anonymous_args = 0
 281              		@ link register save eliminated.
 282 0000 0368     		ldr	r3, [r0]
 283 0002 23F08003 		bic	r3, r3, #128
 284 0006 0360     		str	r3, [r0]
 285 0008 7047     		bx	lr
ARM GAS  /tmp/cch5izEL.s 			page 6


 286              		.size	can_enable_tx_repeat, .-can_enable_tx_repeat
 287 000a 00BF     		.section	.text.can_set_rx_sync_stage,"ax",%progbits
 288              		.align	1
 289              		.p2align 2,,3
 290              		.global	can_set_rx_sync_stage
 291              		.syntax unified
 292              		.thumb
 293              		.thumb_func
 294              		.fpu softvfp
 295              		.type	can_set_rx_sync_stage, %function
 296              	can_set_rx_sync_stage:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299              		@ link register save eliminated.
 300 0000 0368     		ldr	r3, [r0]
 301 0002 23F0E063 		bic	r3, r3, #117440512
 302 0006 1943     		orrs	r1, r1, r3
 303 0008 0160     		str	r1, [r0]
 304 000a 7047     		bx	lr
 305              		.size	can_set_rx_sync_stage, .-can_set_rx_sync_stage
 306              		.section	.text.can_enable_interrupt,"ax",%progbits
 307              		.align	1
 308              		.p2align 2,,3
 309              		.global	can_enable_interrupt
 310              		.syntax unified
 311              		.thumb
 312              		.thumb_func
 313              		.fpu softvfp
 314              		.type	can_enable_interrupt, %function
 315              	can_enable_interrupt:
 316              		@ args = 0, pretend = 0, frame = 0
 317              		@ frame_needed = 0, uses_anonymous_args = 0
 318              		@ link register save eliminated.
 319 0000 4160     		str	r1, [r0, #4]
 320 0002 7047     		bx	lr
 321              		.size	can_enable_interrupt, .-can_enable_interrupt
 322              		.section	.text.can_disable_interrupt,"ax",%progbits
 323              		.align	1
 324              		.p2align 2,,3
 325              		.global	can_disable_interrupt
 326              		.syntax unified
 327              		.thumb
 328              		.thumb_func
 329              		.fpu softvfp
 330              		.type	can_disable_interrupt, %function
 331              	can_disable_interrupt:
 332              		@ args = 0, pretend = 0, frame = 0
 333              		@ frame_needed = 0, uses_anonymous_args = 0
 334              		@ link register save eliminated.
 335 0000 8160     		str	r1, [r0, #8]
 336 0002 7047     		bx	lr
 337              		.size	can_disable_interrupt, .-can_disable_interrupt
 338              		.section	.text.can_get_interrupt_mask,"ax",%progbits
 339              		.align	1
 340              		.p2align 2,,3
 341              		.global	can_get_interrupt_mask
 342              		.syntax unified
ARM GAS  /tmp/cch5izEL.s 			page 7


 343              		.thumb
 344              		.thumb_func
 345              		.fpu softvfp
 346              		.type	can_get_interrupt_mask, %function
 347              	can_get_interrupt_mask:
 348              		@ args = 0, pretend = 0, frame = 0
 349              		@ frame_needed = 0, uses_anonymous_args = 0
 350              		@ link register save eliminated.
 351 0000 C068     		ldr	r0, [r0, #12]
 352 0002 7047     		bx	lr
 353              		.size	can_get_interrupt_mask, .-can_get_interrupt_mask
 354              		.section	.text.can_get_status,"ax",%progbits
 355              		.align	1
 356              		.p2align 2,,3
 357              		.global	can_get_status
 358              		.syntax unified
 359              		.thumb
 360              		.thumb_func
 361              		.fpu softvfp
 362              		.type	can_get_status, %function
 363              	can_get_status:
 364              		@ args = 0, pretend = 0, frame = 0
 365              		@ frame_needed = 0, uses_anonymous_args = 0
 366              		@ link register save eliminated.
 367 0000 0069     		ldr	r0, [r0, #16]
 368 0002 7047     		bx	lr
 369              		.size	can_get_status, .-can_get_status
 370              		.section	.text.can_get_internal_timer_value,"ax",%progbits
 371              		.align	1
 372              		.p2align 2,,3
 373              		.global	can_get_internal_timer_value
 374              		.syntax unified
 375              		.thumb
 376              		.thumb_func
 377              		.fpu softvfp
 378              		.type	can_get_internal_timer_value, %function
 379              	can_get_internal_timer_value:
 380              		@ args = 0, pretend = 0, frame = 0
 381              		@ frame_needed = 0, uses_anonymous_args = 0
 382              		@ link register save eliminated.
 383 0000 8069     		ldr	r0, [r0, #24]
 384 0002 7047     		bx	lr
 385              		.size	can_get_internal_timer_value, .-can_get_internal_timer_value
 386              		.section	.text.can_get_timestamp_value,"ax",%progbits
 387              		.align	1
 388              		.p2align 2,,3
 389              		.global	can_get_timestamp_value
 390              		.syntax unified
 391              		.thumb
 392              		.thumb_func
 393              		.fpu softvfp
 394              		.type	can_get_timestamp_value, %function
 395              	can_get_timestamp_value:
 396              		@ args = 0, pretend = 0, frame = 0
 397              		@ frame_needed = 0, uses_anonymous_args = 0
 398              		@ link register save eliminated.
 399 0000 C069     		ldr	r0, [r0, #28]
ARM GAS  /tmp/cch5izEL.s 			page 8


 400 0002 7047     		bx	lr
 401              		.size	can_get_timestamp_value, .-can_get_timestamp_value
 402              		.section	.text.can_get_tx_error_cnt,"ax",%progbits
 403              		.align	1
 404              		.p2align 2,,3
 405              		.global	can_get_tx_error_cnt
 406              		.syntax unified
 407              		.thumb
 408              		.thumb_func
 409              		.fpu softvfp
 410              		.type	can_get_tx_error_cnt, %function
 411              	can_get_tx_error_cnt:
 412              		@ args = 0, pretend = 0, frame = 0
 413              		@ frame_needed = 0, uses_anonymous_args = 0
 414              		@ link register save eliminated.
 415 0000 006A     		ldr	r0, [r0, #32]
 416 0002 C0F30740 		ubfx	r0, r0, #16, #8
 417 0006 7047     		bx	lr
 418              		.size	can_get_tx_error_cnt, .-can_get_tx_error_cnt
 419              		.section	.text.can_get_rx_error_cnt,"ax",%progbits
 420              		.align	1
 421              		.p2align 2,,3
 422              		.global	can_get_rx_error_cnt
 423              		.syntax unified
 424              		.thumb
 425              		.thumb_func
 426              		.fpu softvfp
 427              		.type	can_get_rx_error_cnt, %function
 428              	can_get_rx_error_cnt:
 429              		@ args = 0, pretend = 0, frame = 0
 430              		@ frame_needed = 0, uses_anonymous_args = 0
 431              		@ link register save eliminated.
 432 0000 006A     		ldr	r0, [r0, #32]
 433 0002 C0B2     		uxtb	r0, r0
 434 0004 7047     		bx	lr
 435              		.size	can_get_rx_error_cnt, .-can_get_rx_error_cnt
 436 0006 00BF     		.section	.text.can_reset_internal_timer,"ax",%progbits
 437              		.align	1
 438              		.p2align 2,,3
 439              		.global	can_reset_internal_timer
 440              		.syntax unified
 441              		.thumb
 442              		.thumb_func
 443              		.fpu softvfp
 444              		.type	can_reset_internal_timer, %function
 445              	can_reset_internal_timer:
 446              		@ args = 0, pretend = 0, frame = 0
 447              		@ frame_needed = 0, uses_anonymous_args = 0
 448              		@ link register save eliminated.
 449 0000 436A     		ldr	r3, [r0, #36]
 450 0002 43F00043 		orr	r3, r3, #-2147483648
 451 0006 4362     		str	r3, [r0, #36]
 452 0008 7047     		bx	lr
 453              		.size	can_reset_internal_timer, .-can_reset_internal_timer
 454 000a 00BF     		.section	.text.can_global_send_transfer_cmd,"ax",%progbits
 455              		.align	1
 456              		.p2align 2,,3
ARM GAS  /tmp/cch5izEL.s 			page 9


 457              		.global	can_global_send_transfer_cmd
 458              		.syntax unified
 459              		.thumb
 460              		.thumb_func
 461              		.fpu softvfp
 462              		.type	can_global_send_transfer_cmd, %function
 463              	can_global_send_transfer_cmd:
 464              		@ args = 0, pretend = 0, frame = 0
 465              		@ frame_needed = 0, uses_anonymous_args = 0
 466              		@ link register save eliminated.
 467 0000 436A     		ldr	r3, [r0, #36]
 468 0002 23F0FF03 		bic	r3, r3, #255
 469 0006 1943     		orrs	r1, r1, r3
 470 0008 4162     		str	r1, [r0, #36]
 471 000a 7047     		bx	lr
 472              		.size	can_global_send_transfer_cmd, .-can_global_send_transfer_cmd
 473              		.section	.text.can_global_send_abort_cmd,"ax",%progbits
 474              		.align	1
 475              		.p2align 2,,3
 476              		.global	can_global_send_abort_cmd
 477              		.syntax unified
 478              		.thumb
 479              		.thumb_func
 480              		.fpu softvfp
 481              		.type	can_global_send_abort_cmd, %function
 482              	can_global_send_abort_cmd:
 483              		@ args = 0, pretend = 0, frame = 0
 484              		@ frame_needed = 0, uses_anonymous_args = 0
 485              		@ link register save eliminated.
 486 0000 836A     		ldr	r3, [r0, #40]
 487 0002 23F0FF03 		bic	r3, r3, #255
 488 0006 1943     		orrs	r1, r1, r3
 489 0008 8162     		str	r1, [r0, #40]
 490 000a 7047     		bx	lr
 491              		.size	can_global_send_abort_cmd, .-can_global_send_abort_cmd
 492              		.section	.text.can_mailbox_set_timemark,"ax",%progbits
 493              		.align	1
 494              		.p2align 2,,3
 495              		.global	can_mailbox_set_timemark
 496              		.syntax unified
 497              		.thumb
 498              		.thumb_func
 499              		.fpu softvfp
 500              		.type	can_mailbox_set_timemark, %function
 501              	can_mailbox_set_timemark:
 502              		@ args = 0, pretend = 0, frame = 0
 503              		@ frame_needed = 0, uses_anonymous_args = 0
 504              		@ link register save eliminated.
 505 0000 00EB4111 		add	r1, r0, r1, lsl #5
 506 0004 D1F80032 		ldr	r3, [r1, #512]
 507 0008 1B0C     		lsrs	r3, r3, #16
 508 000a 1B04     		lsls	r3, r3, #16
 509 000c 1A43     		orrs	r2, r2, r3
 510 000e C1F80022 		str	r2, [r1, #512]
 511 0012 7047     		bx	lr
 512              		.size	can_mailbox_set_timemark, .-can_mailbox_set_timemark
 513              		.section	.text.can_mailbox_get_status,"ax",%progbits
ARM GAS  /tmp/cch5izEL.s 			page 10


 514              		.align	1
 515              		.p2align 2,,3
 516              		.global	can_mailbox_get_status
 517              		.syntax unified
 518              		.thumb
 519              		.thumb_func
 520              		.fpu softvfp
 521              		.type	can_mailbox_get_status, %function
 522              	can_mailbox_get_status:
 523              		@ args = 0, pretend = 0, frame = 0
 524              		@ frame_needed = 0, uses_anonymous_args = 0
 525              		@ link register save eliminated.
 526 0000 00EB4111 		add	r1, r0, r1, lsl #5
 527 0004 D1F81002 		ldr	r0, [r1, #528]
 528 0008 7047     		bx	lr
 529              		.size	can_mailbox_get_status, .-can_mailbox_get_status
 530 000a 00BF     		.section	.text.can_mailbox_send_transfer_cmd,"ax",%progbits
 531              		.align	1
 532              		.p2align 2,,3
 533              		.global	can_mailbox_send_transfer_cmd
 534              		.syntax unified
 535              		.thumb
 536              		.thumb_func
 537              		.fpu softvfp
 538              		.type	can_mailbox_send_transfer_cmd, %function
 539              	can_mailbox_send_transfer_cmd:
 540              		@ args = 0, pretend = 0, frame = 0
 541              		@ frame_needed = 0, uses_anonymous_args = 0
 542              		@ link register save eliminated.
 543 0000 8B79     		ldrb	r3, [r1, #6]	@ zero_extendqisi2
 544 0002 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 545 0004 1B04     		lsls	r3, r3, #16
 546 0006 03F47023 		and	r3, r3, #983040
 547 000a 43F40003 		orr	r3, r3, #8388608
 548 000e 00EB4210 		add	r0, r0, r2, lsl #5
 549 0012 C0F81C32 		str	r3, [r0, #540]
 550 0016 7047     		bx	lr
 551              		.size	can_mailbox_send_transfer_cmd, .-can_mailbox_send_transfer_cmd
 552              		.section	.text.can_mailbox_send_abort_cmd,"ax",%progbits
 553              		.align	1
 554              		.p2align 2,,3
 555              		.global	can_mailbox_send_abort_cmd
 556              		.syntax unified
 557              		.thumb
 558              		.thumb_func
 559              		.fpu softvfp
 560              		.type	can_mailbox_send_abort_cmd, %function
 561              	can_mailbox_send_abort_cmd:
 562              		@ args = 0, pretend = 0, frame = 0
 563              		@ frame_needed = 0, uses_anonymous_args = 0
 564              		@ link register save eliminated.
 565 0000 8B79     		ldrb	r3, [r1, #6]	@ zero_extendqisi2
 566 0002 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 567 0004 1B04     		lsls	r3, r3, #16
 568 0006 03F47023 		and	r3, r3, #983040
 569 000a 43F48003 		orr	r3, r3, #4194304
 570 000e 00EB4210 		add	r0, r0, r2, lsl #5
ARM GAS  /tmp/cch5izEL.s 			page 11


 571 0012 C0F81C32 		str	r3, [r0, #540]
 572 0016 7047     		bx	lr
 573              		.size	can_mailbox_send_abort_cmd, .-can_mailbox_send_abort_cmd
 574              		.section	.text.can_mailbox_init,"ax",%progbits
 575              		.align	1
 576              		.p2align 2,,3
 577              		.global	can_mailbox_init
 578              		.syntax unified
 579              		.thumb
 580              		.thumb_func
 581              		.fpu softvfp
 582              		.type	can_mailbox_init, %function
 583              	can_mailbox_init:
 584              		@ args = 0, pretend = 0, frame = 0
 585              		@ frame_needed = 0, uses_anonymous_args = 0
 586              		@ link register save eliminated.
 587 0000 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 588 0002 0A68     		ldr	r2, [r1]
 589 0004 43B3     		cbz	r3, .L44
 590 0006 D2B2     		uxtb	r2, r2
 591 0008 00EB4210 		add	r0, r0, r2, lsl #5
 592 000c D0F80022 		ldr	r2, [r0, #512]
 593 0010 10B4     		push	{r4}
 594 0012 CC79     		ldrb	r4, [r1, #7]	@ zero_extendqisi2
 595 0014 22F47022 		bic	r2, r2, #983040
 596 0018 42EA0442 		orr	r2, r2, r4, lsl #16
 597 001c C0F80022 		str	r2, [r0, #512]
 598 0020 4A79     		ldrb	r2, [r1, #5]	@ zero_extendqisi2
 599 0022 CC68     		ldr	r4, [r1, #12]
 600 0024 72B9     		cbnz	r2, .L45
 601 0026 0A69     		ldr	r2, [r1, #16]
 602 0028 C0F80442 		str	r4, [r0, #516]
 603 002c C0F80822 		str	r2, [r0, #520]
 604              	.L40:
 605 0030 D0F80022 		ldr	r2, [r0, #512]
 606 0034 10BC     		pop	{r4}
 607 0036 22F0E062 		bic	r2, r2, #117440512
 608 003a 42EA0363 		orr	r3, r2, r3, lsl #24
 609 003e C0F80032 		str	r3, [r0, #512]
 610 0042 7047     		bx	lr
 611              	.L45:
 612 0044 0A69     		ldr	r2, [r1, #16]
 613 0046 44F00054 		orr	r4, r4, #536870912
 614 004a 42F00052 		orr	r2, r2, #536870912
 615 004e C0F80442 		str	r4, [r0, #516]
 616 0052 C0F80822 		str	r2, [r0, #520]
 617 0056 EBE7     		b	.L40
 618              	.L44:
 619 0058 D2B2     		uxtb	r2, r2
 620 005a 00EB4210 		add	r0, r0, r2, lsl #5
 621 005e C0F80032 		str	r3, [r0, #512]
 622 0062 C0F80432 		str	r3, [r0, #516]
 623 0066 C0F80832 		str	r3, [r0, #520]
 624 006a C0F81432 		str	r3, [r0, #532]
 625 006e C0F81832 		str	r3, [r0, #536]
 626 0072 C0F81C32 		str	r3, [r0, #540]
 627 0076 7047     		bx	lr
ARM GAS  /tmp/cch5izEL.s 			page 12


 628              		.size	can_mailbox_init, .-can_mailbox_init
 629              		.section	.text.can_init,"ax",%progbits
 630              		.align	1
 631              		.p2align 2,,3
 632              		.global	can_init
 633              		.syntax unified
 634              		.thumb
 635              		.thumb_func
 636              		.fpu softvfp
 637              		.type	can_init, %function
 638              	can_init:
 639              		@ args = 0, pretend = 0, frame = 32
 640              		@ frame_needed = 0, uses_anonymous_args = 0
 641 0000 46F2A813 		movw	r3, #25000
 642 0004 F0B5     		push	{r4, r5, r6, r7, lr}
 643 0006 03FB02F4 		mul	r4, r3, r2
 644 000a 0B19     		adds	r3, r1, r4
 645 000c 013B     		subs	r3, r3, #1
 646 000e B3FBF4F3 		udiv	r3, r3, r4
 647 0012 802B     		cmp	r3, #128
 648 0014 89B0     		sub	sp, sp, #36
 649 0016 73D8     		bhi	.L49
 650 0018 4FF4FA54 		mov	r4, #8000
 651 001c 04FB02F4 		mul	r4, r4, r2
 652 0020 B4EB510F 		cmp	r4, r1, lsr #1
 653 0024 6CD8     		bhi	.L49
 654 0026 4FF0080E 		mov	lr, #8
 655 002a 4FF47A73 		mov	r3, #1000
 656 002e 7546     		mov	r5, lr
 657 0030 4FF0FF3C 		mov	ip, #-1
 658 0034 03FB02F2 		mul	r2, r3, r2
 659              	.L52:
 660 0038 B1FBF4F3 		udiv	r3, r1, r4
 661 003c 802B     		cmp	r3, #128
 662 003e 05F10106 		add	r6, r5, #1
 663 0042 07D8     		bhi	.L50
 664 0044 04FB1317 		mls	r7, r4, r3, r1
 665 0048 6745     		cmp	r7, ip
 666 004a 03D2     		bcs	.L50
 667 004c 002F     		cmp	r7, #0
 668 004e 5AD0     		beq	.L56
 669 0050 BC46     		mov	ip, r7
 670 0052 AE46     		mov	lr, r5
 671              	.L50:
 672 0054 F5B2     		uxtb	r5, r6
 673 0056 1A2D     		cmp	r5, #26
 674 0058 1444     		add	r4, r4, r2
 675 005a EDD1     		bne	.L52
 676 005c 02FB0EF3 		mul	r3, r2, lr
 677 0060 B1FBF3F3 		udiv	r3, r1, r3
 678              	.L51:
 679 0064 DBB2     		uxtb	r3, r3
 680 0066 012B     		cmp	r3, #1
 681 0068 4AD9     		bls	.L49
 682 006a 0022     		movs	r2, #0
 683 006c 0446     		mov	r4, r0
 684 006e 1546     		mov	r5, r2
ARM GAS  /tmp/cch5izEL.s 			page 13


 685 0070 2649     		ldr	r1, .L62
 686 0072 AEF1080E 		sub	lr, lr, #8
 687 0076 0EEB4E0E 		add	lr, lr, lr, lsl #1
 688 007a 01EB4E0E 		add	lr, r1, lr, lsl #1
 689 007e 9EF80370 		ldrb	r7, [lr, #3]	@ zero_extendqisi2
 690 0082 9EF80260 		ldrb	r6, [lr, #2]	@ zero_extendqisi2
 691 0086 013B     		subs	r3, r3, #1
 692 0088 9EF80100 		ldrb	r0, [lr, #1]	@ zero_extendqisi2
 693 008c 1B04     		lsls	r3, r3, #16
 694 008e 013F     		subs	r7, r7, #1
 695 0090 013E     		subs	r6, r6, #1
 696 0092 9EF80410 		ldrb	r1, [lr, #4]	@ zero_extendqisi2
 697 0096 03F4FE03 		and	r3, r3, #8323072
 698 009a 07F00707 		and	r7, r7, #7
 699 009e 3601     		lsls	r6, r6, #4
 700 00a0 0138     		subs	r0, r0, #1
 701 00a2 06F07006 		and	r6, r6, #112
 702 00a6 3B43     		orrs	r3, r3, r7
 703 00a8 0002     		lsls	r0, r0, #8
 704 00aa 0139     		subs	r1, r1, #1
 705 00ac 3343     		orrs	r3, r3, r6
 706 00ae 00F4E060 		and	r0, r0, #1792
 707 00b2 2668     		ldr	r6, [r4]
 708 00b4 0903     		lsls	r1, r1, #12
 709 00b6 0343     		orrs	r3, r3, r0
 710 00b8 01F44051 		and	r1, r1, #12288
 711 00bc 0B43     		orrs	r3, r3, r1
 712 00be 26F00106 		bic	r6, r6, #1
 713 00c2 2660     		str	r6, [r4]
 714 00c4 8DF80420 		strb	r2, [sp, #4]
 715 00c8 6361     		str	r3, [r4, #20]
 716              	.L53:
 717 00ca 0095     		str	r5, [sp]
 718 00cc 6946     		mov	r1, sp
 719 00ce 0135     		adds	r5, r5, #1
 720 00d0 2046     		mov	r0, r4
 721 00d2 FFF7FEFF 		bl	can_mailbox_init
 722 00d6 082D     		cmp	r5, #8
 723 00d8 F7D1     		bne	.L53
 724 00da 2268     		ldr	r2, [r4]
 725 00dc 0023     		movs	r3, #0
 726 00de 42F00102 		orr	r2, r2, #1
 727 00e2 0B49     		ldr	r1, .L62+4
 728 00e4 2260     		str	r2, [r4]
 729 00e6 01E0     		b	.L55
 730              	.L61:
 731 00e8 8B42     		cmp	r3, r1
 732 00ea 09D0     		beq	.L49
 733              	.L55:
 734 00ec 2269     		ldr	r2, [r4, #16]
 735 00ee 0133     		adds	r3, r3, #1
 736 00f0 9202     		lsls	r2, r2, #10
 737 00f2 F9D5     		bpl	.L61
 738 00f4 0648     		ldr	r0, .L62+4
 739 00f6 181A     		subs	r0, r3, r0
 740 00f8 18BF     		it	ne
 741 00fa 0120     		movne	r0, #1
ARM GAS  /tmp/cch5izEL.s 			page 14


 742 00fc 09B0     		add	sp, sp, #36
 743              		@ sp needed
 744 00fe F0BD     		pop	{r4, r5, r6, r7, pc}
 745              	.L49:
 746 0100 0020     		movs	r0, #0
 747 0102 09B0     		add	sp, sp, #36
 748              		@ sp needed
 749 0104 F0BD     		pop	{r4, r5, r6, r7, pc}
 750              	.L56:
 751 0106 AE46     		mov	lr, r5
 752 0108 ACE7     		b	.L51
 753              	.L63:
 754 010a 00BF     		.align	2
 755              	.L62:
 756 010c 00000000 		.word	.LANCHOR0
 757 0110 A0860100 		.word	100000
 758              		.size	can_init, .-can_init
 759              		.section	.text.can_mailbox_read,"ax",%progbits
 760              		.align	1
 761              		.p2align 2,,3
 762              		.global	can_mailbox_read
 763              		.syntax unified
 764              		.thumb
 765              		.thumb_func
 766              		.fpu softvfp
 767              		.type	can_mailbox_read, %function
 768              	can_mailbox_read:
 769              		@ args = 0, pretend = 0, frame = 0
 770              		@ frame_needed = 0, uses_anonymous_args = 0
 771              		@ link register save eliminated.
 772 0000 F0B4     		push	{r4, r5, r6, r7}
 773 0002 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
 774 0004 8D68     		ldr	r5, [r1, #8]
 775 0006 6401     		lsls	r4, r4, #5
 776 0008 0619     		adds	r6, r0, r4
 777 000a 0246     		mov	r2, r0
 778 000c D6F80C02 		ldr	r0, [r6, #524]
 779 0010 C5F30343 		ubfx	r3, r5, #16, #4
 780 0014 05F0C075 		and	r5, r5, #25165824
 781 0018 8B71     		strb	r3, [r1, #6]
 782 001a 20F06040 		bic	r0, r0, #-536870912
 783 001e B5F1C07F 		cmp	r5, #25165824
 784 0022 D6F81472 		ldr	r7, [r6, #532]
 785 0026 4861     		str	r0, [r1, #20]
 786 0028 14BF     		ite	ne
 787 002a 0020     		movne	r0, #0
 788 002c 0220     		moveq	r0, #2
 789 002e 042B     		cmp	r3, #4
 790 0030 88BF     		it	hi
 791 0032 D6F81852 		ldrhi	r5, [r6, #536]
 792 0036 4FEA0343 		lsl	r3, r3, #16
 793 003a 88BF     		it	hi
 794 003c CD61     		strhi	r5, [r1, #28]
 795 003e 1519     		adds	r5, r2, r4
 796 0040 D5F81052 		ldr	r5, [r5, #528]
 797 0044 8F61     		str	r7, [r1, #24]
 798 0046 8D60     		str	r5, [r1, #8]
ARM GAS  /tmp/cch5izEL.s 			page 15


 799 0048 2244     		add	r2, r2, r4
 800 004a E901     		lsls	r1, r5, #7
 801 004c 43F40003 		orr	r3, r3, #8388608
 802 0050 48BF     		it	mi
 803 0052 40F00400 		orrmi	r0, r0, #4
 804 0056 C2F81C32 		str	r3, [r2, #540]
 805 005a F0BC     		pop	{r4, r5, r6, r7}
 806 005c 7047     		bx	lr
 807              		.size	can_mailbox_read, .-can_mailbox_read
 808 005e 00BF     		.section	.text.can_mailbox_write,"ax",%progbits
 809              		.align	1
 810              		.p2align 2,,3
 811              		.global	can_mailbox_write
 812              		.syntax unified
 813              		.thumb
 814              		.thumb_func
 815              		.fpu softvfp
 816              		.type	can_mailbox_write, %function
 817              	can_mailbox_write:
 818              		@ args = 0, pretend = 0, frame = 0
 819              		@ frame_needed = 0, uses_anonymous_args = 0
 820              		@ link register save eliminated.
 821 0000 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 822 0002 10B4     		push	{r4}
 823 0004 5301     		lsls	r3, r2, #5
 824 0006 C418     		adds	r4, r0, r3
 825 0008 D4F81022 		ldr	r2, [r4, #528]
 826 000c 8A60     		str	r2, [r1, #8]
 827 000e 1202     		lsls	r2, r2, #8
 828 0010 1FD5     		bpl	.L78
 829 0012 4A79     		ldrb	r2, [r1, #5]	@ zero_extendqisi2
 830 0014 BAB9     		cbnz	r2, .L80
 831 0016 0A69     		ldr	r2, [r1, #16]
 832 0018 C4F80822 		str	r2, [r4, #520]
 833              	.L76:
 834 001c 8A69     		ldr	r2, [r1, #24]
 835 001e C418     		adds	r4, r0, r3
 836 0020 C4F81422 		str	r2, [r4, #532]
 837 0024 8A79     		ldrb	r2, [r1, #6]	@ zero_extendqisi2
 838 0026 0344     		add	r3, r3, r0
 839 0028 042A     		cmp	r2, #4
 840 002a 88BF     		it	hi
 841 002c C969     		ldrhi	r1, [r1, #28]
 842 002e 4FEA0242 		lsl	r2, r2, #16
 843 0032 02F47022 		and	r2, r2, #983040
 844 0036 88BF     		it	hi
 845 0038 C4F81812 		strhi	r1, [r4, #536]
 846 003c 0020     		movs	r0, #0
 847 003e C3F81C22 		str	r2, [r3, #540]
 848 0042 10BC     		pop	{r4}
 849 0044 7047     		bx	lr
 850              	.L80:
 851 0046 0A69     		ldr	r2, [r1, #16]
 852 0048 42F00052 		orr	r2, r2, #536870912
 853 004c C4F80822 		str	r2, [r4, #520]
 854 0050 E4E7     		b	.L76
 855              	.L78:
ARM GAS  /tmp/cch5izEL.s 			page 16


 856 0052 0120     		movs	r0, #1
 857 0054 10BC     		pop	{r4}
 858 0056 7047     		bx	lr
 859              		.size	can_mailbox_write, .-can_mailbox_write
 860              		.section	.text.can_mailbox_tx_remote_frame,"ax",%progbits
 861              		.align	1
 862              		.p2align 2,,3
 863              		.global	can_mailbox_tx_remote_frame
 864              		.syntax unified
 865              		.thumb
 866              		.thumb_func
 867              		.fpu softvfp
 868              		.type	can_mailbox_tx_remote_frame, %function
 869              	can_mailbox_tx_remote_frame:
 870              		@ args = 0, pretend = 0, frame = 0
 871              		@ frame_needed = 0, uses_anonymous_args = 0
 872              		@ link register save eliminated.
 873 0000 30B4     		push	{r4, r5}
 874 0002 0D78     		ldrb	r5, [r1]	@ zero_extendqisi2
 875 0004 6C01     		lsls	r4, r5, #5
 876 0006 0319     		adds	r3, r0, r4
 877 0008 D3F81022 		ldr	r2, [r3, #528]
 878 000c 8A60     		str	r2, [r1, #8]
 879 000e 1202     		lsls	r2, r2, #8
 880 0010 1ED5     		bpl	.L85
 881 0012 4A79     		ldrb	r2, [r1, #5]	@ zero_extendqisi2
 882 0014 B2B9     		cbnz	r2, .L87
 883 0016 0A69     		ldr	r2, [r1, #16]
 884 0018 C3F80822 		str	r2, [r3, #520]
 885              	.L84:
 886 001c 0123     		movs	r3, #1
 887 001e 8A79     		ldrb	r2, [r1, #6]	@ zero_extendqisi2
 888 0020 0444     		add	r4, r4, r0
 889 0022 1204     		lsls	r2, r2, #16
 890 0024 02F47022 		and	r2, r2, #983040
 891 0028 42F48012 		orr	r2, r2, #1048576
 892 002c C4F81C22 		str	r2, [r4, #540]
 893 0030 426A     		ldr	r2, [r0, #36]
 894 0032 AB40     		lsls	r3, r3, r5
 895 0034 22F0FF02 		bic	r2, r2, #255
 896 0038 DBB2     		uxtb	r3, r3
 897 003a 1343     		orrs	r3, r3, r2
 898 003c 4362     		str	r3, [r0, #36]
 899 003e 30BC     		pop	{r4, r5}
 900 0040 0020     		movs	r0, #0
 901 0042 7047     		bx	lr
 902              	.L87:
 903 0044 0A69     		ldr	r2, [r1, #16]
 904 0046 42F00052 		orr	r2, r2, #536870912
 905 004a C3F80822 		str	r2, [r3, #520]
 906 004e E5E7     		b	.L84
 907              	.L85:
 908 0050 0120     		movs	r0, #1
 909 0052 30BC     		pop	{r4, r5}
 910 0054 7047     		bx	lr
 911              		.size	can_mailbox_tx_remote_frame, .-can_mailbox_tx_remote_frame
 912 0056 00BF     		.section	.text.can_reset_all_mailbox,"ax",%progbits
ARM GAS  /tmp/cch5izEL.s 			page 17


 913              		.align	1
 914              		.p2align 2,,3
 915              		.global	can_reset_all_mailbox
 916              		.syntax unified
 917              		.thumb
 918              		.thumb_func
 919              		.fpu softvfp
 920              		.type	can_reset_all_mailbox, %function
 921              	can_reset_all_mailbox:
 922              		@ args = 0, pretend = 0, frame = 32
 923              		@ frame_needed = 0, uses_anonymous_args = 0
 924 0000 0023     		movs	r3, #0
 925 0002 30B5     		push	{r4, r5, lr}
 926 0004 0546     		mov	r5, r0
 927 0006 1C46     		mov	r4, r3
 928 0008 89B0     		sub	sp, sp, #36
 929 000a 8DF80430 		strb	r3, [sp, #4]
 930              	.L89:
 931 000e 0094     		str	r4, [sp]
 932 0010 6946     		mov	r1, sp
 933 0012 0134     		adds	r4, r4, #1
 934 0014 2846     		mov	r0, r5
 935 0016 FFF7FEFF 		bl	can_mailbox_init
 936 001a 082C     		cmp	r4, #8
 937 001c F7D1     		bne	.L89
 938 001e 09B0     		add	sp, sp, #36
 939              		@ sp needed
 940 0020 30BD     		pop	{r4, r5, pc}
 941              		.size	can_reset_all_mailbox, .-can_reset_all_mailbox
 942              		.global	can_bit_time
 943 0022 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 944              		.align	2
 945              		.type	cpu_irq_critical_section_counter, %object
 946              		.size	cpu_irq_critical_section_counter, 4
 947              	cpu_irq_critical_section_counter:
 948 0000 00000000 		.space	4
 949              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 950              		.type	cpu_irq_prev_interrupt_state, %object
 951              		.size	cpu_irq_prev_interrupt_state, 1
 952              	cpu_irq_prev_interrupt_state:
 953 0000 00       		.space	1
 954              		.section	.rodata.can_bit_time,"a",%progbits
 955              		.align	2
 956              		.set	.LANCHOR0,. + 0
 957              		.type	can_bit_time, %object
 958              		.size	can_bit_time, 108
 959              	can_bit_time:
 960 0000 08       		.byte	8
 961 0001 03       		.byte	3
 962 0002 02       		.byte	2
 963 0003 02       		.byte	2
 964 0004 03       		.byte	3
 965 0005 4B       		.byte	75
 966 0006 09       		.byte	9
 967 0007 02       		.byte	2
 968 0008 03       		.byte	3
 969 0009 03       		.byte	3
ARM GAS  /tmp/cch5izEL.s 			page 18


 970 000a 02       		.byte	2
 971 000b 43       		.byte	67
 972 000c 0A       		.byte	10
 973 000d 03       		.byte	3
 974 000e 03       		.byte	3
 975 000f 03       		.byte	3
 976 0010 03       		.byte	3
 977 0011 46       		.byte	70
 978 0012 0B       		.byte	11
 979 0013 04       		.byte	4
 980 0014 03       		.byte	3
 981 0015 03       		.byte	3
 982 0016 04       		.byte	4
 983 0017 48       		.byte	72
 984 0018 0C       		.byte	12
 985 0019 03       		.byte	3
 986 001a 04       		.byte	4
 987 001b 04       		.byte	4
 988 001c 04       		.byte	4
 989 001d 43       		.byte	67
 990 001e 0D       		.byte	13
 991 001f 04       		.byte	4
 992 0020 04       		.byte	4
 993 0021 04       		.byte	4
 994 0022 04       		.byte	4
 995 0023 4D       		.byte	77
 996 0024 0E       		.byte	14
 997 0025 04       		.byte	4
 998 0026 04       		.byte	4
 999 0027 05       		.byte	5
 1000 0028 04       		.byte	4
 1001 0029 40       		.byte	64
 1002 002a 0F       		.byte	15
 1003 002b 04       		.byte	4
 1004 002c 05       		.byte	5
 1005 002d 05       		.byte	5
 1006 002e 04       		.byte	4
 1007 002f 43       		.byte	67
 1008 0030 10       		.byte	16
 1009 0031 05       		.byte	5
 1010 0032 05       		.byte	5
 1011 0033 05       		.byte	5
 1012 0034 04       		.byte	4
 1013 0035 45       		.byte	69
 1014 0036 11       		.byte	17
 1015 0037 06       		.byte	6
 1016 0038 05       		.byte	5
 1017 0039 05       		.byte	5
 1018 003a 04       		.byte	4
 1019 003b 47       		.byte	71
 1020 003c 12       		.byte	18
 1021 003d 05       		.byte	5
 1022 003e 06       		.byte	6
 1023 003f 06       		.byte	6
 1024 0040 04       		.byte	4
 1025 0041 43       		.byte	67
 1026 0042 13       		.byte	19
ARM GAS  /tmp/cch5izEL.s 			page 19


 1027 0043 06       		.byte	6
 1028 0044 06       		.byte	6
 1029 0045 06       		.byte	6
 1030 0046 04       		.byte	4
 1031 0047 44       		.byte	68
 1032 0048 14       		.byte	20
 1033 0049 07       		.byte	7
 1034 004a 06       		.byte	6
 1035 004b 06       		.byte	6
 1036 004c 04       		.byte	4
 1037 004d 46       		.byte	70
 1038 004e 15       		.byte	21
 1039 004f 08       		.byte	8
 1040 0050 06       		.byte	6
 1041 0051 06       		.byte	6
 1042 0052 04       		.byte	4
 1043 0053 47       		.byte	71
 1044 0054 16       		.byte	22
 1045 0055 07       		.byte	7
 1046 0056 07       		.byte	7
 1047 0057 07       		.byte	7
 1048 0058 04       		.byte	4
 1049 0059 44       		.byte	68
 1050 005a 17       		.byte	23
 1051 005b 08       		.byte	8
 1052 005c 08       		.byte	8
 1053 005d 07       		.byte	7
 1054 005e 04       		.byte	4
 1055 005f 46       		.byte	70
 1056 0060 18       		.byte	24
 1057 0061 07       		.byte	7
 1058 0062 08       		.byte	8
 1059 0063 08       		.byte	8
 1060 0064 04       		.byte	4
 1061 0065 43       		.byte	67
 1062 0066 19       		.byte	25
 1063 0067 08       		.byte	8
 1064 0068 08       		.byte	8
 1065 0069 08       		.byte	8
 1066 006a 04       		.byte	4
 1067 006b 44       		.byte	68
 1068              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
