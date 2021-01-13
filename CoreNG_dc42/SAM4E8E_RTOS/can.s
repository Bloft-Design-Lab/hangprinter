ARM GAS  /tmp/ccY8VimY.s 			page 1


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
  13              		.file	"can.c"
  14              		.section	.text.can_enable,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	can_enable
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	can_enable, %function
  23              	can_enable:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0368     		ldr	r3, [r0]
  28 0002 43F00103 		orr	r3, r3, #1
  29 0006 0360     		str	r3, [r0]
  30 0008 7047     		bx	lr
  31              		.size	can_enable, .-can_enable
  32 000a 00BF     		.section	.text.can_disable,"ax",%progbits
  33              		.align	1
  34              		.p2align 2,,3
  35              		.global	can_disable
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu fpv4-sp-d16
  40              		.type	can_disable, %function
  41              	can_disable:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44              		@ link register save eliminated.
  45 0000 0368     		ldr	r3, [r0]
  46 0002 23F00103 		bic	r3, r3, #1
  47 0006 0360     		str	r3, [r0]
  48 0008 7047     		bx	lr
  49              		.size	can_disable, .-can_disable
  50 000a 00BF     		.section	.text.can_disable_low_power_mode,"ax",%progbits
  51              		.align	1
  52              		.p2align 2,,3
  53              		.global	can_disable_low_power_mode
  54              		.syntax unified
  55              		.thumb
  56              		.thumb_func
  57              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccY8VimY.s 			page 2


  58              		.type	can_disable_low_power_mode, %function
  59              	can_disable_low_power_mode:
  60              		@ args = 0, pretend = 0, frame = 0
  61              		@ frame_needed = 0, uses_anonymous_args = 0
  62              		@ link register save eliminated.
  63 0000 0368     		ldr	r3, [r0]
  64 0002 23F00203 		bic	r3, r3, #2
  65 0006 0360     		str	r3, [r0]
  66 0008 7047     		bx	lr
  67              		.size	can_disable_low_power_mode, .-can_disable_low_power_mode
  68 000a 00BF     		.section	.text.can_enable_low_power_mode,"ax",%progbits
  69              		.align	1
  70              		.p2align 2,,3
  71              		.global	can_enable_low_power_mode
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu fpv4-sp-d16
  76              		.type	can_enable_low_power_mode, %function
  77              	can_enable_low_power_mode:
  78              		@ args = 0, pretend = 0, frame = 0
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80              		@ link register save eliminated.
  81 0000 0368     		ldr	r3, [r0]
  82 0002 43F00203 		orr	r3, r3, #2
  83 0006 0360     		str	r3, [r0]
  84 0008 7047     		bx	lr
  85              		.size	can_enable_low_power_mode, .-can_enable_low_power_mode
  86 000a 00BF     		.section	.text.can_disable_autobaud_listen_mode,"ax",%progbits
  87              		.align	1
  88              		.p2align 2,,3
  89              		.global	can_disable_autobaud_listen_mode
  90              		.syntax unified
  91              		.thumb
  92              		.thumb_func
  93              		.fpu fpv4-sp-d16
  94              		.type	can_disable_autobaud_listen_mode, %function
  95              	can_disable_autobaud_listen_mode:
  96              		@ args = 0, pretend = 0, frame = 0
  97              		@ frame_needed = 0, uses_anonymous_args = 0
  98              		@ link register save eliminated.
  99 0000 0368     		ldr	r3, [r0]
 100 0002 23F00403 		bic	r3, r3, #4
 101 0006 0360     		str	r3, [r0]
 102 0008 7047     		bx	lr
 103              		.size	can_disable_autobaud_listen_mode, .-can_disable_autobaud_listen_mode
 104 000a 00BF     		.section	.text.can_enable_autobaud_listen_mode,"ax",%progbits
 105              		.align	1
 106              		.p2align 2,,3
 107              		.global	can_enable_autobaud_listen_mode
 108              		.syntax unified
 109              		.thumb
 110              		.thumb_func
 111              		.fpu fpv4-sp-d16
 112              		.type	can_enable_autobaud_listen_mode, %function
 113              	can_enable_autobaud_listen_mode:
 114              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccY8VimY.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116              		@ link register save eliminated.
 117 0000 0368     		ldr	r3, [r0]
 118 0002 43F00403 		orr	r3, r3, #4
 119 0006 0360     		str	r3, [r0]
 120 0008 7047     		bx	lr
 121              		.size	can_enable_autobaud_listen_mode, .-can_enable_autobaud_listen_mode
 122 000a 00BF     		.section	.text.can_disable_overload_frame,"ax",%progbits
 123              		.align	1
 124              		.p2align 2,,3
 125              		.global	can_disable_overload_frame
 126              		.syntax unified
 127              		.thumb
 128              		.thumb_func
 129              		.fpu fpv4-sp-d16
 130              		.type	can_disable_overload_frame, %function
 131              	can_disable_overload_frame:
 132              		@ args = 0, pretend = 0, frame = 0
 133              		@ frame_needed = 0, uses_anonymous_args = 0
 134              		@ link register save eliminated.
 135 0000 0368     		ldr	r3, [r0]
 136 0002 23F00803 		bic	r3, r3, #8
 137 0006 0360     		str	r3, [r0]
 138 0008 7047     		bx	lr
 139              		.size	can_disable_overload_frame, .-can_disable_overload_frame
 140 000a 00BF     		.section	.text.can_enable_overload_frame,"ax",%progbits
 141              		.align	1
 142              		.p2align 2,,3
 143              		.global	can_enable_overload_frame
 144              		.syntax unified
 145              		.thumb
 146              		.thumb_func
 147              		.fpu fpv4-sp-d16
 148              		.type	can_enable_overload_frame, %function
 149              	can_enable_overload_frame:
 150              		@ args = 0, pretend = 0, frame = 0
 151              		@ frame_needed = 0, uses_anonymous_args = 0
 152              		@ link register save eliminated.
 153 0000 0368     		ldr	r3, [r0]
 154 0002 43F00803 		orr	r3, r3, #8
 155 0006 0360     		str	r3, [r0]
 156 0008 7047     		bx	lr
 157              		.size	can_enable_overload_frame, .-can_enable_overload_frame
 158 000a 00BF     		.section	.text.can_set_timestamp_capture_point,"ax",%progbits
 159              		.align	1
 160              		.p2align 2,,3
 161              		.global	can_set_timestamp_capture_point
 162              		.syntax unified
 163              		.thumb
 164              		.thumb_func
 165              		.fpu fpv4-sp-d16
 166              		.type	can_set_timestamp_capture_point, %function
 167              	can_set_timestamp_capture_point:
 168              		@ args = 0, pretend = 0, frame = 0
 169              		@ frame_needed = 0, uses_anonymous_args = 0
 170              		@ link register save eliminated.
 171 0000 0368     		ldr	r3, [r0]
ARM GAS  /tmp/ccY8VimY.s 			page 4


 172 0002 19B9     		cbnz	r1, .L13
 173 0004 23F01003 		bic	r3, r3, #16
 174 0008 0360     		str	r3, [r0]
 175 000a 7047     		bx	lr
 176              	.L13:
 177 000c 43F01003 		orr	r3, r3, #16
 178 0010 0360     		str	r3, [r0]
 179 0012 7047     		bx	lr
 180              		.size	can_set_timestamp_capture_point, .-can_set_timestamp_capture_point
 181              		.section	.text.can_disable_time_triggered_mode,"ax",%progbits
 182              		.align	1
 183              		.p2align 2,,3
 184              		.global	can_disable_time_triggered_mode
 185              		.syntax unified
 186              		.thumb
 187              		.thumb_func
 188              		.fpu fpv4-sp-d16
 189              		.type	can_disable_time_triggered_mode, %function
 190              	can_disable_time_triggered_mode:
 191              		@ args = 0, pretend = 0, frame = 0
 192              		@ frame_needed = 0, uses_anonymous_args = 0
 193              		@ link register save eliminated.
 194 0000 0368     		ldr	r3, [r0]
 195 0002 23F02003 		bic	r3, r3, #32
 196 0006 0360     		str	r3, [r0]
 197 0008 7047     		bx	lr
 198              		.size	can_disable_time_triggered_mode, .-can_disable_time_triggered_mode
 199 000a 00BF     		.section	.text.can_enable_time_triggered_mode,"ax",%progbits
 200              		.align	1
 201              		.p2align 2,,3
 202              		.global	can_enable_time_triggered_mode
 203              		.syntax unified
 204              		.thumb
 205              		.thumb_func
 206              		.fpu fpv4-sp-d16
 207              		.type	can_enable_time_triggered_mode, %function
 208              	can_enable_time_triggered_mode:
 209              		@ args = 0, pretend = 0, frame = 0
 210              		@ frame_needed = 0, uses_anonymous_args = 0
 211              		@ link register save eliminated.
 212 0000 0368     		ldr	r3, [r0]
 213 0002 43F02003 		orr	r3, r3, #32
 214 0006 0360     		str	r3, [r0]
 215 0008 7047     		bx	lr
 216              		.size	can_enable_time_triggered_mode, .-can_enable_time_triggered_mode
 217 000a 00BF     		.section	.text.can_disable_timer_freeze,"ax",%progbits
 218              		.align	1
 219              		.p2align 2,,3
 220              		.global	can_disable_timer_freeze
 221              		.syntax unified
 222              		.thumb
 223              		.thumb_func
 224              		.fpu fpv4-sp-d16
 225              		.type	can_disable_timer_freeze, %function
 226              	can_disable_timer_freeze:
 227              		@ args = 0, pretend = 0, frame = 0
 228              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccY8VimY.s 			page 5


 229              		@ link register save eliminated.
 230 0000 0368     		ldr	r3, [r0]
 231 0002 23F04003 		bic	r3, r3, #64
 232 0006 0360     		str	r3, [r0]
 233 0008 7047     		bx	lr
 234              		.size	can_disable_timer_freeze, .-can_disable_timer_freeze
 235 000a 00BF     		.section	.text.can_enable_timer_freeze,"ax",%progbits
 236              		.align	1
 237              		.p2align 2,,3
 238              		.global	can_enable_timer_freeze
 239              		.syntax unified
 240              		.thumb
 241              		.thumb_func
 242              		.fpu fpv4-sp-d16
 243              		.type	can_enable_timer_freeze, %function
 244              	can_enable_timer_freeze:
 245              		@ args = 0, pretend = 0, frame = 0
 246              		@ frame_needed = 0, uses_anonymous_args = 0
 247              		@ link register save eliminated.
 248 0000 0368     		ldr	r3, [r0]
 249 0002 43F04003 		orr	r3, r3, #64
 250 0006 0360     		str	r3, [r0]
 251 0008 7047     		bx	lr
 252              		.size	can_enable_timer_freeze, .-can_enable_timer_freeze
 253 000a 00BF     		.section	.text.can_disable_tx_repeat,"ax",%progbits
 254              		.align	1
 255              		.p2align 2,,3
 256              		.global	can_disable_tx_repeat
 257              		.syntax unified
 258              		.thumb
 259              		.thumb_func
 260              		.fpu fpv4-sp-d16
 261              		.type	can_disable_tx_repeat, %function
 262              	can_disable_tx_repeat:
 263              		@ args = 0, pretend = 0, frame = 0
 264              		@ frame_needed = 0, uses_anonymous_args = 0
 265              		@ link register save eliminated.
 266 0000 0368     		ldr	r3, [r0]
 267 0002 43F08003 		orr	r3, r3, #128
 268 0006 0360     		str	r3, [r0]
 269 0008 7047     		bx	lr
 270              		.size	can_disable_tx_repeat, .-can_disable_tx_repeat
 271 000a 00BF     		.section	.text.can_enable_tx_repeat,"ax",%progbits
 272              		.align	1
 273              		.p2align 2,,3
 274              		.global	can_enable_tx_repeat
 275              		.syntax unified
 276              		.thumb
 277              		.thumb_func
 278              		.fpu fpv4-sp-d16
 279              		.type	can_enable_tx_repeat, %function
 280              	can_enable_tx_repeat:
 281              		@ args = 0, pretend = 0, frame = 0
 282              		@ frame_needed = 0, uses_anonymous_args = 0
 283              		@ link register save eliminated.
 284 0000 0368     		ldr	r3, [r0]
 285 0002 23F08003 		bic	r3, r3, #128
ARM GAS  /tmp/ccY8VimY.s 			page 6


 286 0006 0360     		str	r3, [r0]
 287 0008 7047     		bx	lr
 288              		.size	can_enable_tx_repeat, .-can_enable_tx_repeat
 289 000a 00BF     		.section	.text.can_enable_interrupt,"ax",%progbits
 290              		.align	1
 291              		.p2align 2,,3
 292              		.global	can_enable_interrupt
 293              		.syntax unified
 294              		.thumb
 295              		.thumb_func
 296              		.fpu fpv4-sp-d16
 297              		.type	can_enable_interrupt, %function
 298              	can_enable_interrupt:
 299              		@ args = 0, pretend = 0, frame = 0
 300              		@ frame_needed = 0, uses_anonymous_args = 0
 301              		@ link register save eliminated.
 302 0000 4160     		str	r1, [r0, #4]
 303 0002 7047     		bx	lr
 304              		.size	can_enable_interrupt, .-can_enable_interrupt
 305              		.section	.text.can_disable_interrupt,"ax",%progbits
 306              		.align	1
 307              		.p2align 2,,3
 308              		.global	can_disable_interrupt
 309              		.syntax unified
 310              		.thumb
 311              		.thumb_func
 312              		.fpu fpv4-sp-d16
 313              		.type	can_disable_interrupt, %function
 314              	can_disable_interrupt:
 315              		@ args = 0, pretend = 0, frame = 0
 316              		@ frame_needed = 0, uses_anonymous_args = 0
 317              		@ link register save eliminated.
 318 0000 8160     		str	r1, [r0, #8]
 319 0002 7047     		bx	lr
 320              		.size	can_disable_interrupt, .-can_disable_interrupt
 321              		.section	.text.can_get_interrupt_mask,"ax",%progbits
 322              		.align	1
 323              		.p2align 2,,3
 324              		.global	can_get_interrupt_mask
 325              		.syntax unified
 326              		.thumb
 327              		.thumb_func
 328              		.fpu fpv4-sp-d16
 329              		.type	can_get_interrupt_mask, %function
 330              	can_get_interrupt_mask:
 331              		@ args = 0, pretend = 0, frame = 0
 332              		@ frame_needed = 0, uses_anonymous_args = 0
 333              		@ link register save eliminated.
 334 0000 C068     		ldr	r0, [r0, #12]
 335 0002 7047     		bx	lr
 336              		.size	can_get_interrupt_mask, .-can_get_interrupt_mask
 337              		.section	.text.can_get_status,"ax",%progbits
 338              		.align	1
 339              		.p2align 2,,3
 340              		.global	can_get_status
 341              		.syntax unified
 342              		.thumb
ARM GAS  /tmp/ccY8VimY.s 			page 7


 343              		.thumb_func
 344              		.fpu fpv4-sp-d16
 345              		.type	can_get_status, %function
 346              	can_get_status:
 347              		@ args = 0, pretend = 0, frame = 0
 348              		@ frame_needed = 0, uses_anonymous_args = 0
 349              		@ link register save eliminated.
 350 0000 0069     		ldr	r0, [r0, #16]
 351 0002 7047     		bx	lr
 352              		.size	can_get_status, .-can_get_status
 353              		.section	.text.can_get_internal_timer_value,"ax",%progbits
 354              		.align	1
 355              		.p2align 2,,3
 356              		.global	can_get_internal_timer_value
 357              		.syntax unified
 358              		.thumb
 359              		.thumb_func
 360              		.fpu fpv4-sp-d16
 361              		.type	can_get_internal_timer_value, %function
 362              	can_get_internal_timer_value:
 363              		@ args = 0, pretend = 0, frame = 0
 364              		@ frame_needed = 0, uses_anonymous_args = 0
 365              		@ link register save eliminated.
 366 0000 8069     		ldr	r0, [r0, #24]
 367 0002 7047     		bx	lr
 368              		.size	can_get_internal_timer_value, .-can_get_internal_timer_value
 369              		.section	.text.can_get_timestamp_value,"ax",%progbits
 370              		.align	1
 371              		.p2align 2,,3
 372              		.global	can_get_timestamp_value
 373              		.syntax unified
 374              		.thumb
 375              		.thumb_func
 376              		.fpu fpv4-sp-d16
 377              		.type	can_get_timestamp_value, %function
 378              	can_get_timestamp_value:
 379              		@ args = 0, pretend = 0, frame = 0
 380              		@ frame_needed = 0, uses_anonymous_args = 0
 381              		@ link register save eliminated.
 382 0000 C069     		ldr	r0, [r0, #28]
 383 0002 7047     		bx	lr
 384              		.size	can_get_timestamp_value, .-can_get_timestamp_value
 385              		.section	.text.can_get_tx_error_cnt,"ax",%progbits
 386              		.align	1
 387              		.p2align 2,,3
 388              		.global	can_get_tx_error_cnt
 389              		.syntax unified
 390              		.thumb
 391              		.thumb_func
 392              		.fpu fpv4-sp-d16
 393              		.type	can_get_tx_error_cnt, %function
 394              	can_get_tx_error_cnt:
 395              		@ args = 0, pretend = 0, frame = 0
 396              		@ frame_needed = 0, uses_anonymous_args = 0
 397              		@ link register save eliminated.
 398 0000 006A     		ldr	r0, [r0, #32]
 399 0002 C0F30740 		ubfx	r0, r0, #16, #8
ARM GAS  /tmp/ccY8VimY.s 			page 8


 400 0006 7047     		bx	lr
 401              		.size	can_get_tx_error_cnt, .-can_get_tx_error_cnt
 402              		.section	.text.can_get_rx_error_cnt,"ax",%progbits
 403              		.align	1
 404              		.p2align 2,,3
 405              		.global	can_get_rx_error_cnt
 406              		.syntax unified
 407              		.thumb
 408              		.thumb_func
 409              		.fpu fpv4-sp-d16
 410              		.type	can_get_rx_error_cnt, %function
 411              	can_get_rx_error_cnt:
 412              		@ args = 0, pretend = 0, frame = 0
 413              		@ frame_needed = 0, uses_anonymous_args = 0
 414              		@ link register save eliminated.
 415 0000 006A     		ldr	r0, [r0, #32]
 416 0002 C0B2     		uxtb	r0, r0
 417 0004 7047     		bx	lr
 418              		.size	can_get_rx_error_cnt, .-can_get_rx_error_cnt
 419 0006 00BF     		.section	.text.can_reset_internal_timer,"ax",%progbits
 420              		.align	1
 421              		.p2align 2,,3
 422              		.global	can_reset_internal_timer
 423              		.syntax unified
 424              		.thumb
 425              		.thumb_func
 426              		.fpu fpv4-sp-d16
 427              		.type	can_reset_internal_timer, %function
 428              	can_reset_internal_timer:
 429              		@ args = 0, pretend = 0, frame = 0
 430              		@ frame_needed = 0, uses_anonymous_args = 0
 431              		@ link register save eliminated.
 432 0000 436A     		ldr	r3, [r0, #36]
 433 0002 43F00043 		orr	r3, r3, #-2147483648
 434 0006 4362     		str	r3, [r0, #36]
 435 0008 7047     		bx	lr
 436              		.size	can_reset_internal_timer, .-can_reset_internal_timer
 437 000a 00BF     		.section	.text.can_global_send_transfer_cmd,"ax",%progbits
 438              		.align	1
 439              		.p2align 2,,3
 440              		.global	can_global_send_transfer_cmd
 441              		.syntax unified
 442              		.thumb
 443              		.thumb_func
 444              		.fpu fpv4-sp-d16
 445              		.type	can_global_send_transfer_cmd, %function
 446              	can_global_send_transfer_cmd:
 447              		@ args = 0, pretend = 0, frame = 0
 448              		@ frame_needed = 0, uses_anonymous_args = 0
 449              		@ link register save eliminated.
 450 0000 436A     		ldr	r3, [r0, #36]
 451 0002 23F0FF03 		bic	r3, r3, #255
 452 0006 1943     		orrs	r1, r1, r3
 453 0008 4162     		str	r1, [r0, #36]
 454 000a 7047     		bx	lr
 455              		.size	can_global_send_transfer_cmd, .-can_global_send_transfer_cmd
 456              		.section	.text.can_global_send_abort_cmd,"ax",%progbits
ARM GAS  /tmp/ccY8VimY.s 			page 9


 457              		.align	1
 458              		.p2align 2,,3
 459              		.global	can_global_send_abort_cmd
 460              		.syntax unified
 461              		.thumb
 462              		.thumb_func
 463              		.fpu fpv4-sp-d16
 464              		.type	can_global_send_abort_cmd, %function
 465              	can_global_send_abort_cmd:
 466              		@ args = 0, pretend = 0, frame = 0
 467              		@ frame_needed = 0, uses_anonymous_args = 0
 468              		@ link register save eliminated.
 469 0000 836A     		ldr	r3, [r0, #40]
 470 0002 23F0FF03 		bic	r3, r3, #255
 471 0006 1943     		orrs	r1, r1, r3
 472 0008 8162     		str	r1, [r0, #40]
 473 000a 7047     		bx	lr
 474              		.size	can_global_send_abort_cmd, .-can_global_send_abort_cmd
 475              		.section	.text.can_mailbox_set_timemark,"ax",%progbits
 476              		.align	1
 477              		.p2align 2,,3
 478              		.global	can_mailbox_set_timemark
 479              		.syntax unified
 480              		.thumb
 481              		.thumb_func
 482              		.fpu fpv4-sp-d16
 483              		.type	can_mailbox_set_timemark, %function
 484              	can_mailbox_set_timemark:
 485              		@ args = 0, pretend = 0, frame = 0
 486              		@ frame_needed = 0, uses_anonymous_args = 0
 487              		@ link register save eliminated.
 488 0000 00EB4111 		add	r1, r0, r1, lsl #5
 489 0004 D1F80032 		ldr	r3, [r1, #512]
 490 0008 1B0C     		lsrs	r3, r3, #16
 491 000a 1B04     		lsls	r3, r3, #16
 492 000c 1A43     		orrs	r2, r2, r3
 493 000e C1F80022 		str	r2, [r1, #512]
 494 0012 7047     		bx	lr
 495              		.size	can_mailbox_set_timemark, .-can_mailbox_set_timemark
 496              		.section	.text.can_mailbox_get_status,"ax",%progbits
 497              		.align	1
 498              		.p2align 2,,3
 499              		.global	can_mailbox_get_status
 500              		.syntax unified
 501              		.thumb
 502              		.thumb_func
 503              		.fpu fpv4-sp-d16
 504              		.type	can_mailbox_get_status, %function
 505              	can_mailbox_get_status:
 506              		@ args = 0, pretend = 0, frame = 0
 507              		@ frame_needed = 0, uses_anonymous_args = 0
 508              		@ link register save eliminated.
 509 0000 00EB4111 		add	r1, r0, r1, lsl #5
 510 0004 D1F81002 		ldr	r0, [r1, #528]
 511 0008 7047     		bx	lr
 512              		.size	can_mailbox_get_status, .-can_mailbox_get_status
 513 000a 00BF     		.section	.text.can_mailbox_send_transfer_cmd,"ax",%progbits
ARM GAS  /tmp/ccY8VimY.s 			page 10


 514              		.align	1
 515              		.p2align 2,,3
 516              		.global	can_mailbox_send_transfer_cmd
 517              		.syntax unified
 518              		.thumb
 519              		.thumb_func
 520              		.fpu fpv4-sp-d16
 521              		.type	can_mailbox_send_transfer_cmd, %function
 522              	can_mailbox_send_transfer_cmd:
 523              		@ args = 0, pretend = 0, frame = 0
 524              		@ frame_needed = 0, uses_anonymous_args = 0
 525              		@ link register save eliminated.
 526 0000 8B79     		ldrb	r3, [r1, #6]	@ zero_extendqisi2
 527 0002 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 528 0004 1B04     		lsls	r3, r3, #16
 529 0006 03F47023 		and	r3, r3, #983040
 530 000a 00EB4210 		add	r0, r0, r2, lsl #5
 531 000e 43F40003 		orr	r3, r3, #8388608
 532 0012 C0F81C32 		str	r3, [r0, #540]
 533 0016 7047     		bx	lr
 534              		.size	can_mailbox_send_transfer_cmd, .-can_mailbox_send_transfer_cmd
 535              		.section	.text.can_mailbox_send_abort_cmd,"ax",%progbits
 536              		.align	1
 537              		.p2align 2,,3
 538              		.global	can_mailbox_send_abort_cmd
 539              		.syntax unified
 540              		.thumb
 541              		.thumb_func
 542              		.fpu fpv4-sp-d16
 543              		.type	can_mailbox_send_abort_cmd, %function
 544              	can_mailbox_send_abort_cmd:
 545              		@ args = 0, pretend = 0, frame = 0
 546              		@ frame_needed = 0, uses_anonymous_args = 0
 547              		@ link register save eliminated.
 548 0000 8B79     		ldrb	r3, [r1, #6]	@ zero_extendqisi2
 549 0002 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 550 0004 1B04     		lsls	r3, r3, #16
 551 0006 03F47023 		and	r3, r3, #983040
 552 000a 00EB4210 		add	r0, r0, r2, lsl #5
 553 000e 43F48003 		orr	r3, r3, #4194304
 554 0012 C0F81C32 		str	r3, [r0, #540]
 555 0016 7047     		bx	lr
 556              		.size	can_mailbox_send_abort_cmd, .-can_mailbox_send_abort_cmd
 557              		.section	.text.can_mailbox_init,"ax",%progbits
 558              		.align	1
 559              		.p2align 2,,3
 560              		.global	can_mailbox_init
 561              		.syntax unified
 562              		.thumb
 563              		.thumb_func
 564              		.fpu fpv4-sp-d16
 565              		.type	can_mailbox_init, %function
 566              	can_mailbox_init:
 567              		@ args = 0, pretend = 0, frame = 0
 568              		@ frame_needed = 0, uses_anonymous_args = 0
 569              		@ link register save eliminated.
 570 0000 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
ARM GAS  /tmp/ccY8VimY.s 			page 11


 571 0002 0A68     		ldr	r2, [r1]
 572 0004 4BB3     		cbz	r3, .L43
 573 0006 D2B2     		uxtb	r2, r2
 574 0008 00EB4210 		add	r0, r0, r2, lsl #5
 575 000c 10B4     		push	{r4}
 576 000e D0F80022 		ldr	r2, [r0, #512]
 577 0012 CC79     		ldrb	r4, [r1, #7]	@ zero_extendqisi2
 578 0014 22F47022 		bic	r2, r2, #983040
 579 0018 42EA0442 		orr	r2, r2, r4, lsl #16
 580 001c C0F80022 		str	r2, [r0, #512]
 581 0020 4A79     		ldrb	r2, [r1, #5]	@ zero_extendqisi2
 582 0022 CC68     		ldr	r4, [r1, #12]
 583 0024 7AB9     		cbnz	r2, .L44
 584 0026 0A69     		ldr	r2, [r1, #16]
 585 0028 C0F80442 		str	r4, [r0, #516]
 586 002c C0F80822 		str	r2, [r0, #520]
 587              	.L39:
 588 0030 D0F80022 		ldr	r2, [r0, #512]
 589 0034 5DF8044B 		ldr	r4, [sp], #4
 590 0038 22F0E062 		bic	r2, r2, #117440512
 591 003c 42EA0363 		orr	r3, r2, r3, lsl #24
 592 0040 C0F80032 		str	r3, [r0, #512]
 593 0044 7047     		bx	lr
 594              	.L44:
 595 0046 0A69     		ldr	r2, [r1, #16]
 596 0048 44F00054 		orr	r4, r4, #536870912
 597 004c 42F00052 		orr	r2, r2, #536870912
 598 0050 C0F80442 		str	r4, [r0, #516]
 599 0054 C0F80822 		str	r2, [r0, #520]
 600 0058 EAE7     		b	.L39
 601              	.L43:
 602 005a D2B2     		uxtb	r2, r2
 603 005c 00EB4210 		add	r0, r0, r2, lsl #5
 604 0060 C0F80032 		str	r3, [r0, #512]
 605 0064 C0F80432 		str	r3, [r0, #516]
 606 0068 C0F80832 		str	r3, [r0, #520]
 607 006c C0F81432 		str	r3, [r0, #532]
 608 0070 C0F81832 		str	r3, [r0, #536]
 609 0074 C0F81C32 		str	r3, [r0, #540]
 610 0078 7047     		bx	lr
 611              		.size	can_mailbox_init, .-can_mailbox_init
 612 007a 00BF     		.section	.text.can_init,"ax",%progbits
 613              		.align	1
 614              		.p2align 2,,3
 615              		.global	can_init
 616              		.syntax unified
 617              		.thumb
 618              		.thumb_func
 619              		.fpu fpv4-sp-d16
 620              		.type	can_init, %function
 621              	can_init:
 622              		@ args = 0, pretend = 0, frame = 32
 623              		@ frame_needed = 0, uses_anonymous_args = 0
 624 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 625 0002 46F2A813 		movw	r3, #25000
 626 0006 03FB02F4 		mul	r4, r3, r2
 627 000a 0B19     		adds	r3, r1, r4
ARM GAS  /tmp/ccY8VimY.s 			page 12


 628 000c 013B     		subs	r3, r3, #1
 629 000e B3FBF4F3 		udiv	r3, r3, r4
 630 0012 802B     		cmp	r3, #128
 631 0014 89B0     		sub	sp, sp, #36
 632 0016 72D8     		bhi	.L48
 633 0018 4FF4FA54 		mov	r4, #8000
 634 001c 04FB02F4 		mul	r4, r4, r2
 635 0020 B4EB510F 		cmp	r4, r1, lsr #1
 636 0024 6BD8     		bhi	.L48
 637 0026 4FF47A73 		mov	r3, #1000
 638 002a 4FF0080E 		mov	lr, #8
 639 002e 03FB02F2 		mul	r2, r3, r2
 640 0032 7546     		mov	r5, lr
 641 0034 4FF0FF3C 		mov	ip, #-1
 642              	.L51:
 643 0038 B1FBF4F3 		udiv	r3, r1, r4
 644 003c 802B     		cmp	r3, #128
 645 003e 04FB1317 		mls	r7, r4, r3, r1
 646 0042 05F10106 		add	r6, r5, #1
 647 0046 1444     		add	r4, r4, r2
 648 0048 04D8     		bhi	.L49
 649 004a 6745     		cmp	r7, ip
 650 004c 02D2     		bcs	.L49
 651 004e AE46     		mov	lr, r5
 652 0050 3FB1     		cbz	r7, .L50
 653 0052 BC46     		mov	ip, r7
 654              	.L49:
 655 0054 F5B2     		uxtb	r5, r6
 656 0056 1A2D     		cmp	r5, #26
 657 0058 EED1     		bne	.L51
 658 005a 02FB0EF3 		mul	r3, r2, lr
 659 005e B1FBF3F3 		udiv	r3, r1, r3
 660              	.L50:
 661 0062 DBB2     		uxtb	r3, r3
 662 0064 012B     		cmp	r3, #1
 663 0066 4AD9     		bls	.L48
 664 0068 264A     		ldr	r2, .L61
 665 006a 0168     		ldr	r1, [r0]
 666 006c AEF1080E 		sub	lr, lr, #8
 667 0070 0EEB4E0E 		add	lr, lr, lr, lsl #1
 668 0074 02EB4E0E 		add	lr, r2, lr, lsl #1
 669 0078 0446     		mov	r4, r0
 670 007a 9EF80360 		ldrb	r6, [lr, #3]	@ zero_extendqisi2
 671 007e 9EF80250 		ldrb	r5, [lr, #2]	@ zero_extendqisi2
 672 0082 9EF80100 		ldrb	r0, [lr, #1]	@ zero_extendqisi2
 673 0086 9EF80420 		ldrb	r2, [lr, #4]	@ zero_extendqisi2
 674 008a 013B     		subs	r3, r3, #1
 675 008c 1B04     		lsls	r3, r3, #16
 676 008e 013E     		subs	r6, r6, #1
 677 0090 013D     		subs	r5, r5, #1
 678 0092 03F4FE03 		and	r3, r3, #8323072
 679 0096 06F00706 		and	r6, r6, #7
 680 009a 2D01     		lsls	r5, r5, #4
 681 009c 0138     		subs	r0, r0, #1
 682 009e 05F07005 		and	r5, r5, #112
 683 00a2 3343     		orrs	r3, r3, r6
 684 00a4 0002     		lsls	r0, r0, #8
ARM GAS  /tmp/ccY8VimY.s 			page 13


 685 00a6 013A     		subs	r2, r2, #1
 686 00a8 2B43     		orrs	r3, r3, r5
 687 00aa 00F4E060 		and	r0, r0, #1792
 688 00ae 1203     		lsls	r2, r2, #12
 689 00b0 0343     		orrs	r3, r3, r0
 690 00b2 02F44052 		and	r2, r2, #12288
 691 00b6 1343     		orrs	r3, r3, r2
 692 00b8 21F00101 		bic	r1, r1, #1
 693 00bc 0025     		movs	r5, #0
 694 00be 2160     		str	r1, [r4]
 695 00c0 8DF80450 		strb	r5, [sp, #4]
 696 00c4 6361     		str	r3, [r4, #20]
 697              	.L52:
 698 00c6 0095     		str	r5, [sp]
 699 00c8 6946     		mov	r1, sp
 700 00ca 0135     		adds	r5, r5, #1
 701 00cc 2046     		mov	r0, r4
 702 00ce FFF7FEFF 		bl	can_mailbox_init
 703 00d2 082D     		cmp	r5, #8
 704 00d4 F7D1     		bne	.L52
 705 00d6 2368     		ldr	r3, [r4]
 706 00d8 0B49     		ldr	r1, .L61+4
 707 00da 43F00103 		orr	r3, r3, #1
 708 00de 2360     		str	r3, [r4]
 709 00e0 0023     		movs	r3, #0
 710 00e2 01E0     		b	.L54
 711              	.L60:
 712 00e4 8B42     		cmp	r3, r1
 713 00e6 0AD0     		beq	.L48
 714              	.L54:
 715 00e8 2269     		ldr	r2, [r4, #16]
 716 00ea 9202     		lsls	r2, r2, #10
 717 00ec 03F10103 		add	r3, r3, #1
 718 00f0 F8D5     		bpl	.L60
 719 00f2 0548     		ldr	r0, .L61+4
 720 00f4 181A     		subs	r0, r3, r0
 721 00f6 18BF     		it	ne
 722 00f8 0120     		movne	r0, #1
 723 00fa 09B0     		add	sp, sp, #36
 724              		@ sp needed
 725 00fc F0BD     		pop	{r4, r5, r6, r7, pc}
 726              	.L48:
 727 00fe 0020     		movs	r0, #0
 728 0100 09B0     		add	sp, sp, #36
 729              		@ sp needed
 730 0102 F0BD     		pop	{r4, r5, r6, r7, pc}
 731              	.L62:
 732              		.align	2
 733              	.L61:
 734 0104 00000000 		.word	.LANCHOR0
 735 0108 A0860100 		.word	100000
 736              		.size	can_init, .-can_init
 737              		.section	.text.can_mailbox_read,"ax",%progbits
 738              		.align	1
 739              		.p2align 2,,3
 740              		.global	can_mailbox_read
 741              		.syntax unified
ARM GAS  /tmp/ccY8VimY.s 			page 14


 742              		.thumb
 743              		.thumb_func
 744              		.fpu fpv4-sp-d16
 745              		.type	can_mailbox_read, %function
 746              	can_mailbox_read:
 747              		@ args = 0, pretend = 0, frame = 0
 748              		@ frame_needed = 0, uses_anonymous_args = 0
 749              		@ link register save eliminated.
 750 0000 70B4     		push	{r4, r5, r6}
 751 0002 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
 752 0004 8D68     		ldr	r5, [r1, #8]
 753 0006 6401     		lsls	r4, r4, #5
 754 0008 0619     		adds	r6, r0, r4
 755 000a 0246     		mov	r2, r0
 756 000c D6F80C02 		ldr	r0, [r6, #524]
 757 0010 C5F30343 		ubfx	r3, r5, #16, #4
 758 0014 05F0C075 		and	r5, r5, #25165824
 759 0018 8B71     		strb	r3, [r1, #6]
 760 001a 20F06040 		bic	r0, r0, #-536870912
 761 001e B5F1C07F 		cmp	r5, #25165824
 762 0022 D6F81452 		ldr	r5, [r6, #532]
 763 0026 4861     		str	r0, [r1, #20]
 764 0028 14BF     		ite	ne
 765 002a 0020     		movne	r0, #0
 766 002c 0220     		moveq	r0, #2
 767 002e 042B     		cmp	r3, #4
 768 0030 8D61     		str	r5, [r1, #24]
 769 0032 84BF     		itt	hi
 770 0034 D6F81852 		ldrhi	r5, [r6, #536]
 771 0038 CD61     		strhi	r5, [r1, #28]
 772 003a 1519     		adds	r5, r2, r4
 773 003c 1B04     		lsls	r3, r3, #16
 774 003e D5F81052 		ldr	r5, [r5, #528]
 775 0042 8D60     		str	r5, [r1, #8]
 776 0044 2244     		add	r2, r2, r4
 777 0046 E901     		lsls	r1, r5, #7
 778 0048 43F40003 		orr	r3, r3, #8388608
 779 004c 48BF     		it	mi
 780 004e 40F00400 		orrmi	r0, r0, #4
 781 0052 C2F81C32 		str	r3, [r2, #540]
 782 0056 70BC     		pop	{r4, r5, r6}
 783 0058 7047     		bx	lr
 784              		.size	can_mailbox_read, .-can_mailbox_read
 785 005a 00BF     		.section	.text.can_mailbox_write,"ax",%progbits
 786              		.align	1
 787              		.p2align 2,,3
 788              		.global	can_mailbox_write
 789              		.syntax unified
 790              		.thumb
 791              		.thumb_func
 792              		.fpu fpv4-sp-d16
 793              		.type	can_mailbox_write, %function
 794              	can_mailbox_write:
 795              		@ args = 0, pretend = 0, frame = 0
 796              		@ frame_needed = 0, uses_anonymous_args = 0
 797              		@ link register save eliminated.
 798 0000 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
ARM GAS  /tmp/ccY8VimY.s 			page 15


 799 0002 5B01     		lsls	r3, r3, #5
 800 0004 10B4     		push	{r4}
 801 0006 C418     		adds	r4, r0, r3
 802 0008 D4F81022 		ldr	r2, [r4, #528]
 803 000c 8A60     		str	r2, [r1, #8]
 804 000e 1202     		lsls	r2, r2, #8
 805 0010 1FD5     		bpl	.L77
 806 0012 4A79     		ldrb	r2, [r1, #5]	@ zero_extendqisi2
 807 0014 BAB9     		cbnz	r2, .L79
 808 0016 0A69     		ldr	r2, [r1, #16]
 809 0018 C4F80822 		str	r2, [r4, #520]
 810              	.L75:
 811 001c C418     		adds	r4, r0, r3
 812 001e 8A69     		ldr	r2, [r1, #24]
 813 0020 C4F81422 		str	r2, [r4, #532]
 814 0024 8A79     		ldrb	r2, [r1, #6]	@ zero_extendqisi2
 815 0026 1844     		add	r0, r0, r3
 816 0028 042A     		cmp	r2, #4
 817 002a 4FEA0242 		lsl	r2, r2, #16
 818 002e 84BF     		itt	hi
 819 0030 C969     		ldrhi	r1, [r1, #28]
 820 0032 C4F81812 		strhi	r1, [r4, #536]
 821 0036 02F47022 		and	r2, r2, #983040
 822 003a C0F81C22 		str	r2, [r0, #540]
 823 003e 5DF8044B 		ldr	r4, [sp], #4
 824 0042 0020     		movs	r0, #0
 825 0044 7047     		bx	lr
 826              	.L79:
 827 0046 0A69     		ldr	r2, [r1, #16]
 828 0048 42F00052 		orr	r2, r2, #536870912
 829 004c C4F80822 		str	r2, [r4, #520]
 830 0050 E4E7     		b	.L75
 831              	.L77:
 832 0052 0120     		movs	r0, #1
 833 0054 5DF8044B 		ldr	r4, [sp], #4
 834 0058 7047     		bx	lr
 835              		.size	can_mailbox_write, .-can_mailbox_write
 836 005a 00BF     		.section	.text.can_mailbox_tx_remote_frame,"ax",%progbits
 837              		.align	1
 838              		.p2align 2,,3
 839              		.global	can_mailbox_tx_remote_frame
 840              		.syntax unified
 841              		.thumb
 842              		.thumb_func
 843              		.fpu fpv4-sp-d16
 844              		.type	can_mailbox_tx_remote_frame, %function
 845              	can_mailbox_tx_remote_frame:
 846              		@ args = 0, pretend = 0, frame = 0
 847              		@ frame_needed = 0, uses_anonymous_args = 0
 848              		@ link register save eliminated.
 849 0000 30B4     		push	{r4, r5}
 850 0002 0D78     		ldrb	r5, [r1]	@ zero_extendqisi2
 851 0004 6C01     		lsls	r4, r5, #5
 852 0006 0319     		adds	r3, r0, r4
 853 0008 D3F81022 		ldr	r2, [r3, #528]
 854 000c 8A60     		str	r2, [r1, #8]
 855 000e 1202     		lsls	r2, r2, #8
ARM GAS  /tmp/ccY8VimY.s 			page 16


 856 0010 1ED5     		bpl	.L84
 857 0012 4A79     		ldrb	r2, [r1, #5]	@ zero_extendqisi2
 858 0014 B2B9     		cbnz	r2, .L86
 859 0016 0A69     		ldr	r2, [r1, #16]
 860 0018 C3F80822 		str	r2, [r3, #520]
 861              	.L83:
 862 001c 8A79     		ldrb	r2, [r1, #6]	@ zero_extendqisi2
 863 001e 1204     		lsls	r2, r2, #16
 864 0020 0444     		add	r4, r4, r0
 865 0022 02F47022 		and	r2, r2, #983040
 866 0026 42F48012 		orr	r2, r2, #1048576
 867 002a C4F81C22 		str	r2, [r4, #540]
 868 002e 426A     		ldr	r2, [r0, #36]
 869 0030 0123     		movs	r3, #1
 870 0032 AB40     		lsls	r3, r3, r5
 871 0034 22F0FF02 		bic	r2, r2, #255
 872 0038 DBB2     		uxtb	r3, r3
 873 003a 1343     		orrs	r3, r3, r2
 874 003c 4362     		str	r3, [r0, #36]
 875 003e 30BC     		pop	{r4, r5}
 876 0040 0020     		movs	r0, #0
 877 0042 7047     		bx	lr
 878              	.L86:
 879 0044 0A69     		ldr	r2, [r1, #16]
 880 0046 42F00052 		orr	r2, r2, #536870912
 881 004a C3F80822 		str	r2, [r3, #520]
 882 004e E5E7     		b	.L83
 883              	.L84:
 884 0050 0120     		movs	r0, #1
 885 0052 30BC     		pop	{r4, r5}
 886 0054 7047     		bx	lr
 887              		.size	can_mailbox_tx_remote_frame, .-can_mailbox_tx_remote_frame
 888 0056 00BF     		.section	.text.can_reset_all_mailbox,"ax",%progbits
 889              		.align	1
 890              		.p2align 2,,3
 891              		.global	can_reset_all_mailbox
 892              		.syntax unified
 893              		.thumb
 894              		.thumb_func
 895              		.fpu fpv4-sp-d16
 896              		.type	can_reset_all_mailbox, %function
 897              	can_reset_all_mailbox:
 898              		@ args = 0, pretend = 0, frame = 32
 899              		@ frame_needed = 0, uses_anonymous_args = 0
 900 0000 30B5     		push	{r4, r5, lr}
 901 0002 89B0     		sub	sp, sp, #36
 902 0004 0024     		movs	r4, #0
 903 0006 0546     		mov	r5, r0
 904 0008 8DF80440 		strb	r4, [sp, #4]
 905              	.L88:
 906 000c 0094     		str	r4, [sp]
 907 000e 6946     		mov	r1, sp
 908 0010 0134     		adds	r4, r4, #1
 909 0012 2846     		mov	r0, r5
 910 0014 FFF7FEFF 		bl	can_mailbox_init
 911 0018 082C     		cmp	r4, #8
 912 001a F7D1     		bne	.L88
ARM GAS  /tmp/ccY8VimY.s 			page 17


 913 001c 09B0     		add	sp, sp, #36
 914              		@ sp needed
 915 001e 30BD     		pop	{r4, r5, pc}
 916              		.size	can_reset_all_mailbox, .-can_reset_all_mailbox
 917              		.global	can_bit_time
 918              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 919              		.align	2
 920              		.type	cpu_irq_critical_section_counter, %object
 921              		.size	cpu_irq_critical_section_counter, 4
 922              	cpu_irq_critical_section_counter:
 923 0000 00000000 		.space	4
 924              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 925              		.type	cpu_irq_prev_interrupt_state, %object
 926              		.size	cpu_irq_prev_interrupt_state, 1
 927              	cpu_irq_prev_interrupt_state:
 928 0000 00       		.space	1
 929              		.section	.rodata.can_bit_time,"a",%progbits
 930              		.align	2
 931              		.set	.LANCHOR0,. + 0
 932              		.type	can_bit_time, %object
 933              		.size	can_bit_time, 108
 934              	can_bit_time:
 935 0000 08       		.byte	8
 936 0001 03       		.byte	3
 937 0002 02       		.byte	2
 938 0003 02       		.byte	2
 939 0004 03       		.byte	3
 940 0005 4B       		.byte	75
 941 0006 09       		.byte	9
 942 0007 02       		.byte	2
 943 0008 03       		.byte	3
 944 0009 03       		.byte	3
 945 000a 02       		.byte	2
 946 000b 43       		.byte	67
 947 000c 0A       		.byte	10
 948 000d 03       		.byte	3
 949 000e 03       		.byte	3
 950 000f 03       		.byte	3
 951 0010 03       		.byte	3
 952 0011 46       		.byte	70
 953 0012 0B       		.byte	11
 954 0013 04       		.byte	4
 955 0014 03       		.byte	3
 956 0015 03       		.byte	3
 957 0016 04       		.byte	4
 958 0017 48       		.byte	72
 959 0018 0C       		.byte	12
 960 0019 03       		.byte	3
 961 001a 04       		.byte	4
 962 001b 04       		.byte	4
 963 001c 04       		.byte	4
 964 001d 43       		.byte	67
 965 001e 0D       		.byte	13
 966 001f 04       		.byte	4
 967 0020 04       		.byte	4
 968 0021 04       		.byte	4
 969 0022 04       		.byte	4
ARM GAS  /tmp/ccY8VimY.s 			page 18


 970 0023 4D       		.byte	77
 971 0024 0E       		.byte	14
 972 0025 04       		.byte	4
 973 0026 04       		.byte	4
 974 0027 05       		.byte	5
 975 0028 04       		.byte	4
 976 0029 40       		.byte	64
 977 002a 0F       		.byte	15
 978 002b 04       		.byte	4
 979 002c 05       		.byte	5
 980 002d 05       		.byte	5
 981 002e 04       		.byte	4
 982 002f 43       		.byte	67
 983 0030 10       		.byte	16
 984 0031 05       		.byte	5
 985 0032 05       		.byte	5
 986 0033 05       		.byte	5
 987 0034 04       		.byte	4
 988 0035 45       		.byte	69
 989 0036 11       		.byte	17
 990 0037 06       		.byte	6
 991 0038 05       		.byte	5
 992 0039 05       		.byte	5
 993 003a 04       		.byte	4
 994 003b 47       		.byte	71
 995 003c 12       		.byte	18
 996 003d 05       		.byte	5
 997 003e 06       		.byte	6
 998 003f 06       		.byte	6
 999 0040 04       		.byte	4
 1000 0041 43       		.byte	67
 1001 0042 13       		.byte	19
 1002 0043 06       		.byte	6
 1003 0044 06       		.byte	6
 1004 0045 06       		.byte	6
 1005 0046 04       		.byte	4
 1006 0047 44       		.byte	68
 1007 0048 14       		.byte	20
 1008 0049 07       		.byte	7
 1009 004a 06       		.byte	6
 1010 004b 06       		.byte	6
 1011 004c 04       		.byte	4
 1012 004d 46       		.byte	70
 1013 004e 15       		.byte	21
 1014 004f 08       		.byte	8
 1015 0050 06       		.byte	6
 1016 0051 06       		.byte	6
 1017 0052 04       		.byte	4
 1018 0053 47       		.byte	71
 1019 0054 16       		.byte	22
 1020 0055 07       		.byte	7
 1021 0056 07       		.byte	7
 1022 0057 07       		.byte	7
 1023 0058 04       		.byte	4
 1024 0059 44       		.byte	68
 1025 005a 17       		.byte	23
 1026 005b 08       		.byte	8
ARM GAS  /tmp/ccY8VimY.s 			page 19


 1027 005c 08       		.byte	8
 1028 005d 07       		.byte	7
 1029 005e 04       		.byte	4
 1030 005f 46       		.byte	70
 1031 0060 18       		.byte	24
 1032 0061 07       		.byte	7
 1033 0062 08       		.byte	8
 1034 0063 08       		.byte	8
 1035 0064 04       		.byte	4
 1036 0065 43       		.byte	67
 1037 0066 19       		.byte	25
 1038 0067 08       		.byte	8
 1039 0068 08       		.byte	8
 1040 0069 08       		.byte	8
 1041 006a 04       		.byte	4
 1042 006b 44       		.byte	68
 1043              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
