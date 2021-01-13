ARM GAS  /tmp/ccVXCgdO.s 			page 1


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
  11              		.file	"dmac.c"
  12              		.section	.text.dmac_init,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	dmac_init
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	dmac_init, %function
  21              	dmac_init:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 4368     		ldr	r3, [r0, #4]
  26 0002 23F00103 		bic	r3, r3, #1
  27 0006 4360     		str	r3, [r0, #4]
  28 0008 7047     		bx	lr
  29              		.size	dmac_init, .-dmac_init
  30 000a 00BF     		.section	.text.dmac_set_priority_mode,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.global	dmac_set_priority_mode
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu softvfp
  38              		.type	dmac_set_priority_mode, %function
  39              	dmac_set_priority_mode:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 0368     		ldr	r3, [r0]
  44 0002 23F01003 		bic	r3, r3, #16
  45 0006 1943     		orrs	r1, r1, r3
  46 0008 0160     		str	r1, [r0]
  47 000a 7047     		bx	lr
  48              		.size	dmac_set_priority_mode, .-dmac_set_priority_mode
  49              		.section	.text.dmac_enable,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.global	dmac_enable
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu softvfp
  57              		.type	dmac_enable, %function
ARM GAS  /tmp/ccVXCgdO.s 			page 2


  58              	dmac_enable:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61              		@ link register save eliminated.
  62 0000 0123     		movs	r3, #1
  63 0002 4360     		str	r3, [r0, #4]
  64 0004 7047     		bx	lr
  65              		.size	dmac_enable, .-dmac_enable
  66 0006 00BF     		.section	.text.dmac_disable,"ax",%progbits
  67              		.align	1
  68              		.p2align 2,,3
  69              		.global	dmac_disable
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu softvfp
  74              		.type	dmac_disable, %function
  75              	dmac_disable:
  76              		@ args = 0, pretend = 0, frame = 0
  77              		@ frame_needed = 0, uses_anonymous_args = 0
  78              		@ link register save eliminated.
  79 0000 4368     		ldr	r3, [r0, #4]
  80 0002 23F00103 		bic	r3, r3, #1
  81 0006 4360     		str	r3, [r0, #4]
  82 0008 7047     		bx	lr
  83              		.size	dmac_disable, .-dmac_disable
  84 000a 00BF     		.section	.text.dmac_enable_interrupt,"ax",%progbits
  85              		.align	1
  86              		.p2align 2,,3
  87              		.global	dmac_enable_interrupt
  88              		.syntax unified
  89              		.thumb
  90              		.thumb_func
  91              		.fpu softvfp
  92              		.type	dmac_enable_interrupt, %function
  93              	dmac_enable_interrupt:
  94              		@ args = 0, pretend = 0, frame = 0
  95              		@ frame_needed = 0, uses_anonymous_args = 0
  96              		@ link register save eliminated.
  97 0000 8161     		str	r1, [r0, #24]
  98 0002 7047     		bx	lr
  99              		.size	dmac_enable_interrupt, .-dmac_enable_interrupt
 100              		.section	.text.dmac_disable_interrupt,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.global	dmac_disable_interrupt
 104              		.syntax unified
 105              		.thumb
 106              		.thumb_func
 107              		.fpu softvfp
 108              		.type	dmac_disable_interrupt, %function
 109              	dmac_disable_interrupt:
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112              		@ link register save eliminated.
 113 0000 C161     		str	r1, [r0, #28]
 114 0002 7047     		bx	lr
ARM GAS  /tmp/ccVXCgdO.s 			page 3


 115              		.size	dmac_disable_interrupt, .-dmac_disable_interrupt
 116              		.section	.text.dmac_get_interrupt_mask,"ax",%progbits
 117              		.align	1
 118              		.p2align 2,,3
 119              		.global	dmac_get_interrupt_mask
 120              		.syntax unified
 121              		.thumb
 122              		.thumb_func
 123              		.fpu softvfp
 124              		.type	dmac_get_interrupt_mask, %function
 125              	dmac_get_interrupt_mask:
 126              		@ args = 0, pretend = 0, frame = 0
 127              		@ frame_needed = 0, uses_anonymous_args = 0
 128              		@ link register save eliminated.
 129 0000 006A     		ldr	r0, [r0, #32]
 130 0002 7047     		bx	lr
 131              		.size	dmac_get_interrupt_mask, .-dmac_get_interrupt_mask
 132              		.section	.text.dmac_get_status,"ax",%progbits
 133              		.align	1
 134              		.p2align 2,,3
 135              		.global	dmac_get_status
 136              		.syntax unified
 137              		.thumb
 138              		.thumb_func
 139              		.fpu softvfp
 140              		.type	dmac_get_status, %function
 141              	dmac_get_status:
 142              		@ args = 0, pretend = 0, frame = 0
 143              		@ frame_needed = 0, uses_anonymous_args = 0
 144              		@ link register save eliminated.
 145 0000 406A     		ldr	r0, [r0, #36]
 146 0002 7047     		bx	lr
 147              		.size	dmac_get_status, .-dmac_get_status
 148              		.section	.text.dmac_channel_enable,"ax",%progbits
 149              		.align	1
 150              		.p2align 2,,3
 151              		.global	dmac_channel_enable
 152              		.syntax unified
 153              		.thumb
 154              		.thumb_func
 155              		.fpu softvfp
 156              		.type	dmac_channel_enable, %function
 157              	dmac_channel_enable:
 158              		@ args = 0, pretend = 0, frame = 0
 159              		@ frame_needed = 0, uses_anonymous_args = 0
 160              		@ link register save eliminated.
 161 0000 0123     		movs	r3, #1
 162 0002 03FA01F1 		lsl	r1, r3, r1
 163 0006 8162     		str	r1, [r0, #40]
 164 0008 7047     		bx	lr
 165              		.size	dmac_channel_enable, .-dmac_channel_enable
 166 000a 00BF     		.section	.text.dmac_channel_disable,"ax",%progbits
 167              		.align	1
 168              		.p2align 2,,3
 169              		.global	dmac_channel_disable
 170              		.syntax unified
 171              		.thumb
ARM GAS  /tmp/ccVXCgdO.s 			page 4


 172              		.thumb_func
 173              		.fpu softvfp
 174              		.type	dmac_channel_disable, %function
 175              	dmac_channel_disable:
 176              		@ args = 0, pretend = 0, frame = 0
 177              		@ frame_needed = 0, uses_anonymous_args = 0
 178              		@ link register save eliminated.
 179 0000 0123     		movs	r3, #1
 180 0002 03FA01F1 		lsl	r1, r3, r1
 181 0006 C162     		str	r1, [r0, #44]
 182 0008 7047     		bx	lr
 183              		.size	dmac_channel_disable, .-dmac_channel_disable
 184 000a 00BF     		.section	.text.dmac_channel_is_enable,"ax",%progbits
 185              		.align	1
 186              		.p2align 2,,3
 187              		.global	dmac_channel_is_enable
 188              		.syntax unified
 189              		.thumb
 190              		.thumb_func
 191              		.fpu softvfp
 192              		.type	dmac_channel_is_enable, %function
 193              	dmac_channel_is_enable:
 194              		@ args = 0, pretend = 0, frame = 0
 195              		@ frame_needed = 0, uses_anonymous_args = 0
 196              		@ link register save eliminated.
 197 0000 0123     		movs	r3, #1
 198 0002 026B     		ldr	r2, [r0, #48]
 199 0004 03FA01F1 		lsl	r1, r3, r1
 200 0008 1142     		tst	r1, r2
 201 000a 14BF     		ite	ne
 202 000c 1846     		movne	r0, r3
 203 000e 0020     		moveq	r0, #0
 204 0010 7047     		bx	lr
 205              		.size	dmac_channel_is_enable, .-dmac_channel_is_enable
 206 0012 00BF     		.section	.text.dmac_channel_suspend,"ax",%progbits
 207              		.align	1
 208              		.p2align 2,,3
 209              		.global	dmac_channel_suspend
 210              		.syntax unified
 211              		.thumb
 212              		.thumb_func
 213              		.fpu softvfp
 214              		.type	dmac_channel_suspend, %function
 215              	dmac_channel_suspend:
 216              		@ args = 0, pretend = 0, frame = 0
 217              		@ frame_needed = 0, uses_anonymous_args = 0
 218              		@ link register save eliminated.
 219 0000 4FF48073 		mov	r3, #256
 220 0004 03FA01F1 		lsl	r1, r3, r1
 221 0008 8162     		str	r1, [r0, #40]
 222 000a 7047     		bx	lr
 223              		.size	dmac_channel_suspend, .-dmac_channel_suspend
 224              		.section	.text.dmac_channel_resume,"ax",%progbits
 225              		.align	1
 226              		.p2align 2,,3
 227              		.global	dmac_channel_resume
 228              		.syntax unified
ARM GAS  /tmp/ccVXCgdO.s 			page 5


 229              		.thumb
 230              		.thumb_func
 231              		.fpu softvfp
 232              		.type	dmac_channel_resume, %function
 233              	dmac_channel_resume:
 234              		@ args = 0, pretend = 0, frame = 0
 235              		@ frame_needed = 0, uses_anonymous_args = 0
 236              		@ link register save eliminated.
 237 0000 4FF48073 		mov	r3, #256
 238 0004 03FA01F1 		lsl	r1, r3, r1
 239 0008 C162     		str	r1, [r0, #44]
 240 000a 7047     		bx	lr
 241              		.size	dmac_channel_resume, .-dmac_channel_resume
 242              		.section	.text.dmac_channel_keep,"ax",%progbits
 243              		.align	1
 244              		.p2align 2,,3
 245              		.global	dmac_channel_keep
 246              		.syntax unified
 247              		.thumb
 248              		.thumb_func
 249              		.fpu softvfp
 250              		.type	dmac_channel_keep, %function
 251              	dmac_channel_keep:
 252              		@ args = 0, pretend = 0, frame = 0
 253              		@ frame_needed = 0, uses_anonymous_args = 0
 254              		@ link register save eliminated.
 255 0000 4FF08073 		mov	r3, #16777216
 256 0004 03FA01F1 		lsl	r1, r3, r1
 257 0008 8162     		str	r1, [r0, #40]
 258 000a 7047     		bx	lr
 259              		.size	dmac_channel_keep, .-dmac_channel_keep
 260              		.section	.text.dmac_channel_get_status,"ax",%progbits
 261              		.align	1
 262              		.p2align 2,,3
 263              		.global	dmac_channel_get_status
 264              		.syntax unified
 265              		.thumb
 266              		.thumb_func
 267              		.fpu softvfp
 268              		.type	dmac_channel_get_status, %function
 269              	dmac_channel_get_status:
 270              		@ args = 0, pretend = 0, frame = 0
 271              		@ frame_needed = 0, uses_anonymous_args = 0
 272              		@ link register save eliminated.
 273 0000 006B     		ldr	r0, [r0, #48]
 274 0002 7047     		bx	lr
 275              		.size	dmac_channel_get_status, .-dmac_channel_get_status
 276              		.section	.text.dmac_channel_set_source_addr,"ax",%progbits
 277              		.align	1
 278              		.p2align 2,,3
 279              		.global	dmac_channel_set_source_addr
 280              		.syntax unified
 281              		.thumb
 282              		.thumb_func
 283              		.fpu softvfp
 284              		.type	dmac_channel_set_source_addr, %function
 285              	dmac_channel_set_source_addr:
ARM GAS  /tmp/ccVXCgdO.s 			page 6


 286              		@ args = 0, pretend = 0, frame = 0
 287              		@ frame_needed = 0, uses_anonymous_args = 0
 288              		@ link register save eliminated.
 289 0000 01EB8101 		add	r1, r1, r1, lsl #2
 290 0004 00EBC101 		add	r1, r0, r1, lsl #3
 291 0008 CA63     		str	r2, [r1, #60]
 292 000a 7047     		bx	lr
 293              		.size	dmac_channel_set_source_addr, .-dmac_channel_set_source_addr
 294              		.section	.text.dmac_channel_set_destination_addr,"ax",%progbits
 295              		.align	1
 296              		.p2align 2,,3
 297              		.global	dmac_channel_set_destination_addr
 298              		.syntax unified
 299              		.thumb
 300              		.thumb_func
 301              		.fpu softvfp
 302              		.type	dmac_channel_set_destination_addr, %function
 303              	dmac_channel_set_destination_addr:
 304              		@ args = 0, pretend = 0, frame = 0
 305              		@ frame_needed = 0, uses_anonymous_args = 0
 306              		@ link register save eliminated.
 307 0000 01EB8101 		add	r1, r1, r1, lsl #2
 308 0004 00EBC101 		add	r1, r0, r1, lsl #3
 309 0008 0A64     		str	r2, [r1, #64]
 310 000a 7047     		bx	lr
 311              		.size	dmac_channel_set_destination_addr, .-dmac_channel_set_destination_addr
 312              		.section	.text.dmac_channel_set_descriptor_addr,"ax",%progbits
 313              		.align	1
 314              		.p2align 2,,3
 315              		.global	dmac_channel_set_descriptor_addr
 316              		.syntax unified
 317              		.thumb
 318              		.thumb_func
 319              		.fpu softvfp
 320              		.type	dmac_channel_set_descriptor_addr, %function
 321              	dmac_channel_set_descriptor_addr:
 322              		@ args = 0, pretend = 0, frame = 0
 323              		@ frame_needed = 0, uses_anonymous_args = 0
 324              		@ link register save eliminated.
 325 0000 01EB8101 		add	r1, r1, r1, lsl #2
 326 0004 00EBC101 		add	r1, r0, r1, lsl #3
 327 0008 4A64     		str	r2, [r1, #68]
 328 000a 7047     		bx	lr
 329              		.size	dmac_channel_set_descriptor_addr, .-dmac_channel_set_descriptor_addr
 330              		.section	.text.dmac_channel_set_ctrlA,"ax",%progbits
 331              		.align	1
 332              		.p2align 2,,3
 333              		.global	dmac_channel_set_ctrlA
 334              		.syntax unified
 335              		.thumb
 336              		.thumb_func
 337              		.fpu softvfp
 338              		.type	dmac_channel_set_ctrlA, %function
 339              	dmac_channel_set_ctrlA:
 340              		@ args = 0, pretend = 0, frame = 0
 341              		@ frame_needed = 0, uses_anonymous_args = 0
 342              		@ link register save eliminated.
ARM GAS  /tmp/ccVXCgdO.s 			page 7


 343 0000 01EB8101 		add	r1, r1, r1, lsl #2
 344 0004 00EBC101 		add	r1, r0, r1, lsl #3
 345 0008 8A64     		str	r2, [r1, #72]
 346 000a 7047     		bx	lr
 347              		.size	dmac_channel_set_ctrlA, .-dmac_channel_set_ctrlA
 348              		.section	.text.dmac_channel_set_ctrlB,"ax",%progbits
 349              		.align	1
 350              		.p2align 2,,3
 351              		.global	dmac_channel_set_ctrlB
 352              		.syntax unified
 353              		.thumb
 354              		.thumb_func
 355              		.fpu softvfp
 356              		.type	dmac_channel_set_ctrlB, %function
 357              	dmac_channel_set_ctrlB:
 358              		@ args = 0, pretend = 0, frame = 0
 359              		@ frame_needed = 0, uses_anonymous_args = 0
 360              		@ link register save eliminated.
 361 0000 01EB8101 		add	r1, r1, r1, lsl #2
 362 0004 00EBC101 		add	r1, r0, r1, lsl #3
 363 0008 CA64     		str	r2, [r1, #76]
 364 000a 7047     		bx	lr
 365              		.size	dmac_channel_set_ctrlB, .-dmac_channel_set_ctrlB
 366              		.section	.text.dmac_channel_set_configuration,"ax",%progbits
 367              		.align	1
 368              		.p2align 2,,3
 369              		.global	dmac_channel_set_configuration
 370              		.syntax unified
 371              		.thumb
 372              		.thumb_func
 373              		.fpu softvfp
 374              		.type	dmac_channel_set_configuration, %function
 375              	dmac_channel_set_configuration:
 376              		@ args = 0, pretend = 0, frame = 0
 377              		@ frame_needed = 0, uses_anonymous_args = 0
 378              		@ link register save eliminated.
 379 0000 01EB8101 		add	r1, r1, r1, lsl #2
 380 0004 00EBC101 		add	r1, r0, r1, lsl #3
 381 0008 0A65     		str	r2, [r1, #80]
 382 000a 7047     		bx	lr
 383              		.size	dmac_channel_set_configuration, .-dmac_channel_set_configuration
 384              		.section	.text.dmac_channel_single_buf_transfer_init,"ax",%progbits
 385              		.align	1
 386              		.p2align 2,,3
 387              		.global	dmac_channel_single_buf_transfer_init
 388              		.syntax unified
 389              		.thumb
 390              		.thumb_func
 391              		.fpu softvfp
 392              		.type	dmac_channel_single_buf_transfer_init, %function
 393              	dmac_channel_single_buf_transfer_init:
 394              		@ args = 0, pretend = 0, frame = 0
 395              		@ frame_needed = 0, uses_anonymous_args = 0
 396              		@ link register save eliminated.
 397 0000 F0B4     		push	{r4, r5, r6, r7}
 398 0002 0025     		movs	r5, #0
 399 0004 1768     		ldr	r7, [r2]
ARM GAS  /tmp/ccVXCgdO.s 			page 8


 400 0006 5668     		ldr	r6, [r2, #4]
 401 0008 9468     		ldr	r4, [r2, #8]
 402 000a D368     		ldr	r3, [r2, #12]
 403 000c 01EB8101 		add	r1, r1, r1, lsl #2
 404 0010 00EBC101 		add	r1, r0, r1, lsl #3
 405 0014 426A     		ldr	r2, [r0, #36]
 406 0016 CF63     		str	r7, [r1, #60]
 407 0018 0E64     		str	r6, [r1, #64]
 408 001a 4D64     		str	r5, [r1, #68]
 409 001c 8C64     		str	r4, [r1, #72]
 410 001e CB64     		str	r3, [r1, #76]
 411 0020 F0BC     		pop	{r4, r5, r6, r7}
 412 0022 7047     		bx	lr
 413              		.size	dmac_channel_single_buf_transfer_init, .-dmac_channel_single_buf_transfer_init
 414              		.section	.text.dmac_channel_multi_buf_transfer_init,"ax",%progbits
 415              		.align	1
 416              		.p2align 2,,3
 417              		.global	dmac_channel_multi_buf_transfer_init
 418              		.syntax unified
 419              		.thumb
 420              		.thumb_func
 421              		.fpu softvfp
 422              		.type	dmac_channel_multi_buf_transfer_init, %function
 423              	dmac_channel_multi_buf_transfer_init:
 424              		@ args = 0, pretend = 0, frame = 0
 425              		@ frame_needed = 0, uses_anonymous_args = 0
 426              		@ link register save eliminated.
 427 0000 0023     		movs	r3, #0
 428 0002 01EB8101 		add	r1, r1, r1, lsl #2
 429 0006 00EBC101 		add	r1, r0, r1, lsl #3
 430 000a 406A     		ldr	r0, [r0, #36]
 431 000c 4A64     		str	r2, [r1, #68]
 432 000e CB64     		str	r3, [r1, #76]
 433 0010 7047     		bx	lr
 434              		.size	dmac_channel_multi_buf_transfer_init, .-dmac_channel_multi_buf_transfer_init
 435 0012 00BF     		.section	.text.dmac_channel_stop_transfer,"ax",%progbits
 436              		.align	1
 437              		.p2align 2,,3
 438              		.global	dmac_channel_stop_transfer
 439              		.syntax unified
 440              		.thumb
 441              		.thumb_func
 442              		.fpu softvfp
 443              		.type	dmac_channel_stop_transfer, %function
 444              	dmac_channel_stop_transfer:
 445              		@ args = 0, pretend = 0, frame = 0
 446              		@ frame_needed = 0, uses_anonymous_args = 0
 447              		@ link register save eliminated.
 448 0000 0122     		movs	r2, #1
 449 0002 036B     		ldr	r3, [r0, #48]
 450 0004 8A40     		lsls	r2, r2, r1
 451 0006 1A42     		tst	r2, r3
 452 0008 0ED0     		beq	.L37
 453 000a 10B4     		push	{r4}
 454 000c 4FF48074 		mov	r4, #256
 455 0010 4FF48033 		mov	r3, #65536
 456 0014 8C40     		lsls	r4, r4, r1
ARM GAS  /tmp/ccVXCgdO.s 			page 9


 457 0016 8462     		str	r4, [r0, #40]
 458 0018 03FA01F1 		lsl	r1, r3, r1
 459              	.L27:
 460 001c 036B     		ldr	r3, [r0, #48]
 461 001e 1942     		tst	r1, r3
 462 0020 FCD0     		beq	.L27
 463 0022 C262     		str	r2, [r0, #44]
 464 0024 C462     		str	r4, [r0, #44]
 465 0026 10BC     		pop	{r4}
 466              	.L37:
 467 0028 7047     		bx	lr
 468              		.size	dmac_channel_stop_transfer, .-dmac_channel_stop_transfer
 469 002a 00BF     		.section	.text.dmac_channel_is_transfer_done,"ax",%progbits
 470              		.align	1
 471              		.p2align 2,,3
 472              		.global	dmac_channel_is_transfer_done
 473              		.syntax unified
 474              		.thumb
 475              		.thumb_func
 476              		.fpu softvfp
 477              		.type	dmac_channel_is_transfer_done, %function
 478              	dmac_channel_is_transfer_done:
 479              		@ args = 0, pretend = 0, frame = 0
 480              		@ frame_needed = 0, uses_anonymous_args = 0
 481              		@ link register save eliminated.
 482 0000 0123     		movs	r3, #1
 483 0002 026B     		ldr	r2, [r0, #48]
 484 0004 03FA01F1 		lsl	r1, r3, r1
 485 0008 1142     		tst	r1, r2
 486 000a 0CBF     		ite	eq
 487 000c 1846     		moveq	r0, r3
 488 000e 0020     		movne	r0, #0
 489 0010 7047     		bx	lr
 490              		.size	dmac_channel_is_transfer_done, .-dmac_channel_is_transfer_done
 491 0012 00BF     		.section	.text.dmac_soft_set_last_transfer_flag,"ax",%progbits
 492              		.align	1
 493              		.p2align 2,,3
 494              		.global	dmac_soft_set_last_transfer_flag
 495              		.syntax unified
 496              		.thumb
 497              		.thumb_func
 498              		.fpu softvfp
 499              		.type	dmac_soft_set_last_transfer_flag, %function
 500              	dmac_soft_set_last_transfer_flag:
 501              		@ args = 0, pretend = 0, frame = 0
 502              		@ frame_needed = 0, uses_anonymous_args = 0
 503              		@ link register save eliminated.
 504 0000 002B     		cmp	r3, #0
 505 0002 14BF     		ite	ne
 506 0004 0223     		movne	r3, #2
 507 0006 0023     		moveq	r3, #0
 508 0008 002A     		cmp	r2, #0
 509 000a 0CBF     		ite	eq
 510 000c 1A46     		moveq	r2, r3
 511 000e 43F00102 		orrne	r2, r3, #1
 512 0012 8368     		ldr	r3, [r0, #8]
 513 0014 8A40     		lsls	r2, r2, r1
ARM GAS  /tmp/ccVXCgdO.s 			page 10


 514 0016 1A43     		orrs	r2, r2, r3
 515 0018 8260     		str	r2, [r0, #8]
 516 001a 7047     		bx	lr
 517              		.size	dmac_soft_set_last_transfer_flag, .-dmac_soft_set_last_transfer_flag
 518              		.section	.text.dmac_soft_chunk_transfer_request,"ax",%progbits
 519              		.align	1
 520              		.p2align 2,,3
 521              		.global	dmac_soft_chunk_transfer_request
 522              		.syntax unified
 523              		.thumb
 524              		.thumb_func
 525              		.fpu softvfp
 526              		.type	dmac_soft_chunk_transfer_request, %function
 527              	dmac_soft_chunk_transfer_request:
 528              		@ args = 0, pretend = 0, frame = 0
 529              		@ frame_needed = 0, uses_anonymous_args = 0
 530              		@ link register save eliminated.
 531 0000 FFF7FEBF 		b	dmac_soft_set_last_transfer_flag
 532              		.size	dmac_soft_chunk_transfer_request, .-dmac_soft_chunk_transfer_request
 533              		.section	.text.dmac_soft_single_transfer_request,"ax",%progbits
 534              		.align	1
 535              		.p2align 2,,3
 536              		.global	dmac_soft_single_transfer_request
 537              		.syntax unified
 538              		.thumb
 539              		.thumb_func
 540              		.fpu softvfp
 541              		.type	dmac_soft_single_transfer_request, %function
 542              	dmac_soft_single_transfer_request:
 543              		@ args = 0, pretend = 0, frame = 0
 544              		@ frame_needed = 0, uses_anonymous_args = 0
 545              		@ link register save eliminated.
 546 0000 FFF7FEBF 		b	dmac_soft_set_last_transfer_flag
 547              		.size	dmac_soft_single_transfer_request, .-dmac_soft_single_transfer_request
 548              		.section	.text.dmac_set_writeprotect,"ax",%progbits
 549              		.align	1
 550              		.p2align 2,,3
 551              		.global	dmac_set_writeprotect
 552              		.syntax unified
 553              		.thumb
 554              		.thumb_func
 555              		.fpu softvfp
 556              		.type	dmac_set_writeprotect, %function
 557              	dmac_set_writeprotect:
 558              		@ args = 0, pretend = 0, frame = 0
 559              		@ frame_needed = 0, uses_anonymous_args = 0
 560              		@ link register save eliminated.
 561 0000 19B9     		cbnz	r1, .L48
 562 0002 044B     		ldr	r3, .L49
 563 0004 C0F8E431 		str	r3, [r0, #484]
 564 0008 7047     		bx	lr
 565              	.L48:
 566 000a 034B     		ldr	r3, .L49+4
 567 000c C0F8E431 		str	r3, [r0, #484]
 568 0010 7047     		bx	lr
 569              	.L50:
 570 0012 00BF     		.align	2
ARM GAS  /tmp/ccVXCgdO.s 			page 11


 571              	.L49:
 572 0014 00414D44 		.word	1145913600
 573 0018 01414D44 		.word	1145913601
 574              		.size	dmac_set_writeprotect, .-dmac_set_writeprotect
 575              		.section	.text.dmac_get_writeprotect_status,"ax",%progbits
 576              		.align	1
 577              		.p2align 2,,3
 578              		.global	dmac_get_writeprotect_status
 579              		.syntax unified
 580              		.thumb
 581              		.thumb_func
 582              		.fpu softvfp
 583              		.type	dmac_get_writeprotect_status, %function
 584              	dmac_get_writeprotect_status:
 585              		@ args = 0, pretend = 0, frame = 0
 586              		@ frame_needed = 0, uses_anonymous_args = 0
 587              		@ link register save eliminated.
 588 0000 D0F8E801 		ldr	r0, [r0, #488]
 589 0004 7047     		bx	lr
 590              		.size	dmac_get_writeprotect_status, .-dmac_get_writeprotect_status
 591 0006 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 592              		.align	2
 593              		.type	cpu_irq_critical_section_counter, %object
 594              		.size	cpu_irq_critical_section_counter, 4
 595              	cpu_irq_critical_section_counter:
 596 0000 00000000 		.space	4
 597              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 598              		.type	cpu_irq_prev_interrupt_state, %object
 599              		.size	cpu_irq_prev_interrupt_state, 1
 600              	cpu_irq_prev_interrupt_state:
 601 0000 00       		.space	1
 602              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
