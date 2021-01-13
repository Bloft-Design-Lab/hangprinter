ARM GAS  /tmp/ccwbVul6.s 			page 1


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
  13              		.file	"dmac.c"
  14              		.section	.text.dmac_init,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	dmac_init
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	dmac_init, %function
  23              	dmac_init:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 4368     		ldr	r3, [r0, #4]
  28 0002 23F00103 		bic	r3, r3, #1
  29 0006 4360     		str	r3, [r0, #4]
  30 0008 7047     		bx	lr
  31              		.size	dmac_init, .-dmac_init
  32 000a 00BF     		.section	.text.dmac_set_priority_mode,"ax",%progbits
  33              		.align	1
  34              		.p2align 2,,3
  35              		.global	dmac_set_priority_mode
  36              		.syntax unified
  37              		.thumb
  38              		.thumb_func
  39              		.fpu fpv4-sp-d16
  40              		.type	dmac_set_priority_mode, %function
  41              	dmac_set_priority_mode:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44              		@ link register save eliminated.
  45 0000 0368     		ldr	r3, [r0]
  46 0002 23F01003 		bic	r3, r3, #16
  47 0006 1943     		orrs	r1, r1, r3
  48 0008 0160     		str	r1, [r0]
  49 000a 7047     		bx	lr
  50              		.size	dmac_set_priority_mode, .-dmac_set_priority_mode
  51              		.section	.text.dmac_enable,"ax",%progbits
  52              		.align	1
  53              		.p2align 2,,3
  54              		.global	dmac_enable
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  /tmp/ccwbVul6.s 			page 2


  58              		.fpu fpv4-sp-d16
  59              		.type	dmac_enable, %function
  60              	dmac_enable:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63              		@ link register save eliminated.
  64 0000 0123     		movs	r3, #1
  65 0002 4360     		str	r3, [r0, #4]
  66 0004 7047     		bx	lr
  67              		.size	dmac_enable, .-dmac_enable
  68 0006 00BF     		.section	.text.dmac_disable,"ax",%progbits
  69              		.align	1
  70              		.p2align 2,,3
  71              		.global	dmac_disable
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu fpv4-sp-d16
  76              		.type	dmac_disable, %function
  77              	dmac_disable:
  78              		@ args = 0, pretend = 0, frame = 0
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80              		@ link register save eliminated.
  81 0000 4368     		ldr	r3, [r0, #4]
  82 0002 23F00103 		bic	r3, r3, #1
  83 0006 4360     		str	r3, [r0, #4]
  84 0008 7047     		bx	lr
  85              		.size	dmac_disable, .-dmac_disable
  86 000a 00BF     		.section	.text.dmac_enable_interrupt,"ax",%progbits
  87              		.align	1
  88              		.p2align 2,,3
  89              		.global	dmac_enable_interrupt
  90              		.syntax unified
  91              		.thumb
  92              		.thumb_func
  93              		.fpu fpv4-sp-d16
  94              		.type	dmac_enable_interrupt, %function
  95              	dmac_enable_interrupt:
  96              		@ args = 0, pretend = 0, frame = 0
  97              		@ frame_needed = 0, uses_anonymous_args = 0
  98              		@ link register save eliminated.
  99 0000 8161     		str	r1, [r0, #24]
 100 0002 7047     		bx	lr
 101              		.size	dmac_enable_interrupt, .-dmac_enable_interrupt
 102              		.section	.text.dmac_disable_interrupt,"ax",%progbits
 103              		.align	1
 104              		.p2align 2,,3
 105              		.global	dmac_disable_interrupt
 106              		.syntax unified
 107              		.thumb
 108              		.thumb_func
 109              		.fpu fpv4-sp-d16
 110              		.type	dmac_disable_interrupt, %function
 111              	dmac_disable_interrupt:
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114              		@ link register save eliminated.
ARM GAS  /tmp/ccwbVul6.s 			page 3


 115 0000 C161     		str	r1, [r0, #28]
 116 0002 7047     		bx	lr
 117              		.size	dmac_disable_interrupt, .-dmac_disable_interrupt
 118              		.section	.text.dmac_get_interrupt_mask,"ax",%progbits
 119              		.align	1
 120              		.p2align 2,,3
 121              		.global	dmac_get_interrupt_mask
 122              		.syntax unified
 123              		.thumb
 124              		.thumb_func
 125              		.fpu fpv4-sp-d16
 126              		.type	dmac_get_interrupt_mask, %function
 127              	dmac_get_interrupt_mask:
 128              		@ args = 0, pretend = 0, frame = 0
 129              		@ frame_needed = 0, uses_anonymous_args = 0
 130              		@ link register save eliminated.
 131 0000 006A     		ldr	r0, [r0, #32]
 132 0002 7047     		bx	lr
 133              		.size	dmac_get_interrupt_mask, .-dmac_get_interrupt_mask
 134              		.section	.text.dmac_get_status,"ax",%progbits
 135              		.align	1
 136              		.p2align 2,,3
 137              		.global	dmac_get_status
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu fpv4-sp-d16
 142              		.type	dmac_get_status, %function
 143              	dmac_get_status:
 144              		@ args = 0, pretend = 0, frame = 0
 145              		@ frame_needed = 0, uses_anonymous_args = 0
 146              		@ link register save eliminated.
 147 0000 406A     		ldr	r0, [r0, #36]
 148 0002 7047     		bx	lr
 149              		.size	dmac_get_status, .-dmac_get_status
 150              		.section	.text.dmac_channel_enable,"ax",%progbits
 151              		.align	1
 152              		.p2align 2,,3
 153              		.global	dmac_channel_enable
 154              		.syntax unified
 155              		.thumb
 156              		.thumb_func
 157              		.fpu fpv4-sp-d16
 158              		.type	dmac_channel_enable, %function
 159              	dmac_channel_enable:
 160              		@ args = 0, pretend = 0, frame = 0
 161              		@ frame_needed = 0, uses_anonymous_args = 0
 162              		@ link register save eliminated.
 163 0000 0123     		movs	r3, #1
 164 0002 03FA01F1 		lsl	r1, r3, r1
 165 0006 8162     		str	r1, [r0, #40]
 166 0008 7047     		bx	lr
 167              		.size	dmac_channel_enable, .-dmac_channel_enable
 168 000a 00BF     		.section	.text.dmac_channel_disable,"ax",%progbits
 169              		.align	1
 170              		.p2align 2,,3
 171              		.global	dmac_channel_disable
ARM GAS  /tmp/ccwbVul6.s 			page 4


 172              		.syntax unified
 173              		.thumb
 174              		.thumb_func
 175              		.fpu fpv4-sp-d16
 176              		.type	dmac_channel_disable, %function
 177              	dmac_channel_disable:
 178              		@ args = 0, pretend = 0, frame = 0
 179              		@ frame_needed = 0, uses_anonymous_args = 0
 180              		@ link register save eliminated.
 181 0000 0123     		movs	r3, #1
 182 0002 03FA01F1 		lsl	r1, r3, r1
 183 0006 C162     		str	r1, [r0, #44]
 184 0008 7047     		bx	lr
 185              		.size	dmac_channel_disable, .-dmac_channel_disable
 186 000a 00BF     		.section	.text.dmac_channel_is_enable,"ax",%progbits
 187              		.align	1
 188              		.p2align 2,,3
 189              		.global	dmac_channel_is_enable
 190              		.syntax unified
 191              		.thumb
 192              		.thumb_func
 193              		.fpu fpv4-sp-d16
 194              		.type	dmac_channel_is_enable, %function
 195              	dmac_channel_is_enable:
 196              		@ args = 0, pretend = 0, frame = 0
 197              		@ frame_needed = 0, uses_anonymous_args = 0
 198              		@ link register save eliminated.
 199 0000 026B     		ldr	r2, [r0, #48]
 200 0002 0123     		movs	r3, #1
 201 0004 03FA01F1 		lsl	r1, r3, r1
 202 0008 1142     		tst	r1, r2
 203 000a 14BF     		ite	ne
 204 000c 1846     		movne	r0, r3
 205 000e 0020     		moveq	r0, #0
 206 0010 7047     		bx	lr
 207              		.size	dmac_channel_is_enable, .-dmac_channel_is_enable
 208 0012 00BF     		.section	.text.dmac_channel_suspend,"ax",%progbits
 209              		.align	1
 210              		.p2align 2,,3
 211              		.global	dmac_channel_suspend
 212              		.syntax unified
 213              		.thumb
 214              		.thumb_func
 215              		.fpu fpv4-sp-d16
 216              		.type	dmac_channel_suspend, %function
 217              	dmac_channel_suspend:
 218              		@ args = 0, pretend = 0, frame = 0
 219              		@ frame_needed = 0, uses_anonymous_args = 0
 220              		@ link register save eliminated.
 221 0000 4FF48073 		mov	r3, #256
 222 0004 03FA01F1 		lsl	r1, r3, r1
 223 0008 8162     		str	r1, [r0, #40]
 224 000a 7047     		bx	lr
 225              		.size	dmac_channel_suspend, .-dmac_channel_suspend
 226              		.section	.text.dmac_channel_resume,"ax",%progbits
 227              		.align	1
 228              		.p2align 2,,3
ARM GAS  /tmp/ccwbVul6.s 			page 5


 229              		.global	dmac_channel_resume
 230              		.syntax unified
 231              		.thumb
 232              		.thumb_func
 233              		.fpu fpv4-sp-d16
 234              		.type	dmac_channel_resume, %function
 235              	dmac_channel_resume:
 236              		@ args = 0, pretend = 0, frame = 0
 237              		@ frame_needed = 0, uses_anonymous_args = 0
 238              		@ link register save eliminated.
 239 0000 4FF48073 		mov	r3, #256
 240 0004 03FA01F1 		lsl	r1, r3, r1
 241 0008 C162     		str	r1, [r0, #44]
 242 000a 7047     		bx	lr
 243              		.size	dmac_channel_resume, .-dmac_channel_resume
 244              		.section	.text.dmac_channel_keep,"ax",%progbits
 245              		.align	1
 246              		.p2align 2,,3
 247              		.global	dmac_channel_keep
 248              		.syntax unified
 249              		.thumb
 250              		.thumb_func
 251              		.fpu fpv4-sp-d16
 252              		.type	dmac_channel_keep, %function
 253              	dmac_channel_keep:
 254              		@ args = 0, pretend = 0, frame = 0
 255              		@ frame_needed = 0, uses_anonymous_args = 0
 256              		@ link register save eliminated.
 257 0000 4FF08073 		mov	r3, #16777216
 258 0004 03FA01F1 		lsl	r1, r3, r1
 259 0008 8162     		str	r1, [r0, #40]
 260 000a 7047     		bx	lr
 261              		.size	dmac_channel_keep, .-dmac_channel_keep
 262              		.section	.text.dmac_channel_get_status,"ax",%progbits
 263              		.align	1
 264              		.p2align 2,,3
 265              		.global	dmac_channel_get_status
 266              		.syntax unified
 267              		.thumb
 268              		.thumb_func
 269              		.fpu fpv4-sp-d16
 270              		.type	dmac_channel_get_status, %function
 271              	dmac_channel_get_status:
 272              		@ args = 0, pretend = 0, frame = 0
 273              		@ frame_needed = 0, uses_anonymous_args = 0
 274              		@ link register save eliminated.
 275 0000 006B     		ldr	r0, [r0, #48]
 276 0002 7047     		bx	lr
 277              		.size	dmac_channel_get_status, .-dmac_channel_get_status
 278              		.section	.text.dmac_channel_set_source_addr,"ax",%progbits
 279              		.align	1
 280              		.p2align 2,,3
 281              		.global	dmac_channel_set_source_addr
 282              		.syntax unified
 283              		.thumb
 284              		.thumb_func
 285              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccwbVul6.s 			page 6


 286              		.type	dmac_channel_set_source_addr, %function
 287              	dmac_channel_set_source_addr:
 288              		@ args = 0, pretend = 0, frame = 0
 289              		@ frame_needed = 0, uses_anonymous_args = 0
 290              		@ link register save eliminated.
 291 0000 01EB8101 		add	r1, r1, r1, lsl #2
 292 0004 00EBC101 		add	r1, r0, r1, lsl #3
 293 0008 CA63     		str	r2, [r1, #60]
 294 000a 7047     		bx	lr
 295              		.size	dmac_channel_set_source_addr, .-dmac_channel_set_source_addr
 296              		.section	.text.dmac_channel_set_destination_addr,"ax",%progbits
 297              		.align	1
 298              		.p2align 2,,3
 299              		.global	dmac_channel_set_destination_addr
 300              		.syntax unified
 301              		.thumb
 302              		.thumb_func
 303              		.fpu fpv4-sp-d16
 304              		.type	dmac_channel_set_destination_addr, %function
 305              	dmac_channel_set_destination_addr:
 306              		@ args = 0, pretend = 0, frame = 0
 307              		@ frame_needed = 0, uses_anonymous_args = 0
 308              		@ link register save eliminated.
 309 0000 01EB8101 		add	r1, r1, r1, lsl #2
 310 0004 00EBC101 		add	r1, r0, r1, lsl #3
 311 0008 0A64     		str	r2, [r1, #64]
 312 000a 7047     		bx	lr
 313              		.size	dmac_channel_set_destination_addr, .-dmac_channel_set_destination_addr
 314              		.section	.text.dmac_channel_set_descriptor_addr,"ax",%progbits
 315              		.align	1
 316              		.p2align 2,,3
 317              		.global	dmac_channel_set_descriptor_addr
 318              		.syntax unified
 319              		.thumb
 320              		.thumb_func
 321              		.fpu fpv4-sp-d16
 322              		.type	dmac_channel_set_descriptor_addr, %function
 323              	dmac_channel_set_descriptor_addr:
 324              		@ args = 0, pretend = 0, frame = 0
 325              		@ frame_needed = 0, uses_anonymous_args = 0
 326              		@ link register save eliminated.
 327 0000 01EB8101 		add	r1, r1, r1, lsl #2
 328 0004 00EBC101 		add	r1, r0, r1, lsl #3
 329 0008 4A64     		str	r2, [r1, #68]
 330 000a 7047     		bx	lr
 331              		.size	dmac_channel_set_descriptor_addr, .-dmac_channel_set_descriptor_addr
 332              		.section	.text.dmac_channel_set_ctrlA,"ax",%progbits
 333              		.align	1
 334              		.p2align 2,,3
 335              		.global	dmac_channel_set_ctrlA
 336              		.syntax unified
 337              		.thumb
 338              		.thumb_func
 339              		.fpu fpv4-sp-d16
 340              		.type	dmac_channel_set_ctrlA, %function
 341              	dmac_channel_set_ctrlA:
 342              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccwbVul6.s 			page 7


 343              		@ frame_needed = 0, uses_anonymous_args = 0
 344              		@ link register save eliminated.
 345 0000 01EB8101 		add	r1, r1, r1, lsl #2
 346 0004 00EBC101 		add	r1, r0, r1, lsl #3
 347 0008 8A64     		str	r2, [r1, #72]
 348 000a 7047     		bx	lr
 349              		.size	dmac_channel_set_ctrlA, .-dmac_channel_set_ctrlA
 350              		.section	.text.dmac_channel_set_ctrlB,"ax",%progbits
 351              		.align	1
 352              		.p2align 2,,3
 353              		.global	dmac_channel_set_ctrlB
 354              		.syntax unified
 355              		.thumb
 356              		.thumb_func
 357              		.fpu fpv4-sp-d16
 358              		.type	dmac_channel_set_ctrlB, %function
 359              	dmac_channel_set_ctrlB:
 360              		@ args = 0, pretend = 0, frame = 0
 361              		@ frame_needed = 0, uses_anonymous_args = 0
 362              		@ link register save eliminated.
 363 0000 01EB8101 		add	r1, r1, r1, lsl #2
 364 0004 00EBC101 		add	r1, r0, r1, lsl #3
 365 0008 CA64     		str	r2, [r1, #76]
 366 000a 7047     		bx	lr
 367              		.size	dmac_channel_set_ctrlB, .-dmac_channel_set_ctrlB
 368              		.section	.text.dmac_channel_set_configuration,"ax",%progbits
 369              		.align	1
 370              		.p2align 2,,3
 371              		.global	dmac_channel_set_configuration
 372              		.syntax unified
 373              		.thumb
 374              		.thumb_func
 375              		.fpu fpv4-sp-d16
 376              		.type	dmac_channel_set_configuration, %function
 377              	dmac_channel_set_configuration:
 378              		@ args = 0, pretend = 0, frame = 0
 379              		@ frame_needed = 0, uses_anonymous_args = 0
 380              		@ link register save eliminated.
 381 0000 01EB8101 		add	r1, r1, r1, lsl #2
 382 0004 00EBC101 		add	r1, r0, r1, lsl #3
 383 0008 0A65     		str	r2, [r1, #80]
 384 000a 7047     		bx	lr
 385              		.size	dmac_channel_set_configuration, .-dmac_channel_set_configuration
 386              		.section	.text.dmac_channel_single_buf_transfer_init,"ax",%progbits
 387              		.align	1
 388              		.p2align 2,,3
 389              		.global	dmac_channel_single_buf_transfer_init
 390              		.syntax unified
 391              		.thumb
 392              		.thumb_func
 393              		.fpu fpv4-sp-d16
 394              		.type	dmac_channel_single_buf_transfer_init, %function
 395              	dmac_channel_single_buf_transfer_init:
 396              		@ args = 0, pretend = 0, frame = 0
 397              		@ frame_needed = 0, uses_anonymous_args = 0
 398              		@ link register save eliminated.
 399 0000 70B4     		push	{r4, r5, r6}
ARM GAS  /tmp/ccwbVul6.s 			page 8


 400 0002 01EB8101 		add	r1, r1, r1, lsl #2
 401 0006 00EBC101 		add	r1, r0, r1, lsl #3
 402 000a 1668     		ldr	r6, [r2]
 403 000c 5568     		ldr	r5, [r2, #4]
 404 000e 9468     		ldr	r4, [r2, #8]
 405 0010 D368     		ldr	r3, [r2, #12]
 406 0012 426A     		ldr	r2, [r0, #36]
 407 0014 CE63     		str	r6, [r1, #60]
 408 0016 0022     		movs	r2, #0
 409 0018 0D64     		str	r5, [r1, #64]
 410 001a 4A64     		str	r2, [r1, #68]
 411 001c 8C64     		str	r4, [r1, #72]
 412 001e CB64     		str	r3, [r1, #76]
 413 0020 70BC     		pop	{r4, r5, r6}
 414 0022 7047     		bx	lr
 415              		.size	dmac_channel_single_buf_transfer_init, .-dmac_channel_single_buf_transfer_init
 416              		.section	.text.dmac_channel_multi_buf_transfer_init,"ax",%progbits
 417              		.align	1
 418              		.p2align 2,,3
 419              		.global	dmac_channel_multi_buf_transfer_init
 420              		.syntax unified
 421              		.thumb
 422              		.thumb_func
 423              		.fpu fpv4-sp-d16
 424              		.type	dmac_channel_multi_buf_transfer_init, %function
 425              	dmac_channel_multi_buf_transfer_init:
 426              		@ args = 0, pretend = 0, frame = 0
 427              		@ frame_needed = 0, uses_anonymous_args = 0
 428              		@ link register save eliminated.
 429 0000 01EB8101 		add	r1, r1, r1, lsl #2
 430 0004 00EBC101 		add	r1, r0, r1, lsl #3
 431 0008 0023     		movs	r3, #0
 432 000a 406A     		ldr	r0, [r0, #36]
 433 000c 4A64     		str	r2, [r1, #68]
 434 000e CB64     		str	r3, [r1, #76]
 435 0010 7047     		bx	lr
 436              		.size	dmac_channel_multi_buf_transfer_init, .-dmac_channel_multi_buf_transfer_init
 437 0012 00BF     		.section	.text.dmac_channel_stop_transfer,"ax",%progbits
 438              		.align	1
 439              		.p2align 2,,3
 440              		.global	dmac_channel_stop_transfer
 441              		.syntax unified
 442              		.thumb
 443              		.thumb_func
 444              		.fpu fpv4-sp-d16
 445              		.type	dmac_channel_stop_transfer, %function
 446              	dmac_channel_stop_transfer:
 447              		@ args = 0, pretend = 0, frame = 0
 448              		@ frame_needed = 0, uses_anonymous_args = 0
 449              		@ link register save eliminated.
 450 0000 036B     		ldr	r3, [r0, #48]
 451 0002 0122     		movs	r2, #1
 452 0004 8A40     		lsls	r2, r2, r1
 453 0006 1A42     		tst	r2, r3
 454 0008 0FD0     		beq	.L37
 455 000a 10B4     		push	{r4}
 456 000c 4FF48074 		mov	r4, #256
ARM GAS  /tmp/ccwbVul6.s 			page 9


 457 0010 8C40     		lsls	r4, r4, r1
 458 0012 4FF48033 		mov	r3, #65536
 459 0016 8462     		str	r4, [r0, #40]
 460 0018 03FA01F1 		lsl	r1, r3, r1
 461              	.L27:
 462 001c 036B     		ldr	r3, [r0, #48]
 463 001e 1942     		tst	r1, r3
 464 0020 FCD0     		beq	.L27
 465 0022 C262     		str	r2, [r0, #44]
 466 0024 C462     		str	r4, [r0, #44]
 467 0026 5DF8044B 		ldr	r4, [sp], #4
 468              	.L37:
 469 002a 7047     		bx	lr
 470              		.size	dmac_channel_stop_transfer, .-dmac_channel_stop_transfer
 471              		.section	.text.dmac_channel_is_transfer_done,"ax",%progbits
 472              		.align	1
 473              		.p2align 2,,3
 474              		.global	dmac_channel_is_transfer_done
 475              		.syntax unified
 476              		.thumb
 477              		.thumb_func
 478              		.fpu fpv4-sp-d16
 479              		.type	dmac_channel_is_transfer_done, %function
 480              	dmac_channel_is_transfer_done:
 481              		@ args = 0, pretend = 0, frame = 0
 482              		@ frame_needed = 0, uses_anonymous_args = 0
 483              		@ link register save eliminated.
 484 0000 026B     		ldr	r2, [r0, #48]
 485 0002 0123     		movs	r3, #1
 486 0004 03FA01F1 		lsl	r1, r3, r1
 487 0008 1142     		tst	r1, r2
 488 000a 0CBF     		ite	eq
 489 000c 1846     		moveq	r0, r3
 490 000e 0020     		movne	r0, #0
 491 0010 7047     		bx	lr
 492              		.size	dmac_channel_is_transfer_done, .-dmac_channel_is_transfer_done
 493 0012 00BF     		.section	.text.dmac_soft_set_last_transfer_flag,"ax",%progbits
 494              		.align	1
 495              		.p2align 2,,3
 496              		.global	dmac_soft_set_last_transfer_flag
 497              		.syntax unified
 498              		.thumb
 499              		.thumb_func
 500              		.fpu fpv4-sp-d16
 501              		.type	dmac_soft_set_last_transfer_flag, %function
 502              	dmac_soft_set_last_transfer_flag:
 503              		@ args = 0, pretend = 0, frame = 0
 504              		@ frame_needed = 0, uses_anonymous_args = 0
 505              		@ link register save eliminated.
 506 0000 002B     		cmp	r3, #0
 507 0002 14BF     		ite	ne
 508 0004 0223     		movne	r3, #2
 509 0006 0023     		moveq	r3, #0
 510 0008 002A     		cmp	r2, #0
 511 000a 0CBF     		ite	eq
 512 000c 1A46     		moveq	r2, r3
 513 000e 43F00102 		orrne	r2, r3, #1
ARM GAS  /tmp/ccwbVul6.s 			page 10


 514 0012 8368     		ldr	r3, [r0, #8]
 515 0014 8A40     		lsls	r2, r2, r1
 516 0016 1A43     		orrs	r2, r2, r3
 517 0018 8260     		str	r2, [r0, #8]
 518 001a 7047     		bx	lr
 519              		.size	dmac_soft_set_last_transfer_flag, .-dmac_soft_set_last_transfer_flag
 520              		.section	.text.dmac_soft_chunk_transfer_request,"ax",%progbits
 521              		.align	1
 522              		.p2align 2,,3
 523              		.global	dmac_soft_chunk_transfer_request
 524              		.syntax unified
 525              		.thumb
 526              		.thumb_func
 527              		.fpu fpv4-sp-d16
 528              		.type	dmac_soft_chunk_transfer_request, %function
 529              	dmac_soft_chunk_transfer_request:
 530              		@ args = 0, pretend = 0, frame = 0
 531              		@ frame_needed = 0, uses_anonymous_args = 0
 532              		@ link register save eliminated.
 533 0000 FFF7FEBF 		b	dmac_soft_set_last_transfer_flag
 534              		.size	dmac_soft_chunk_transfer_request, .-dmac_soft_chunk_transfer_request
 535              		.section	.text.dmac_soft_single_transfer_request,"ax",%progbits
 536              		.align	1
 537              		.p2align 2,,3
 538              		.global	dmac_soft_single_transfer_request
 539              		.syntax unified
 540              		.thumb
 541              		.thumb_func
 542              		.fpu fpv4-sp-d16
 543              		.type	dmac_soft_single_transfer_request, %function
 544              	dmac_soft_single_transfer_request:
 545              		@ args = 0, pretend = 0, frame = 0
 546              		@ frame_needed = 0, uses_anonymous_args = 0
 547              		@ link register save eliminated.
 548 0000 FFF7FEBF 		b	dmac_soft_set_last_transfer_flag
 549              		.size	dmac_soft_single_transfer_request, .-dmac_soft_single_transfer_request
 550              		.section	.text.dmac_set_writeprotect,"ax",%progbits
 551              		.align	1
 552              		.p2align 2,,3
 553              		.global	dmac_set_writeprotect
 554              		.syntax unified
 555              		.thumb
 556              		.thumb_func
 557              		.fpu fpv4-sp-d16
 558              		.type	dmac_set_writeprotect, %function
 559              	dmac_set_writeprotect:
 560              		@ args = 0, pretend = 0, frame = 0
 561              		@ frame_needed = 0, uses_anonymous_args = 0
 562              		@ link register save eliminated.
 563 0000 19B9     		cbnz	r1, .L48
 564 0002 044B     		ldr	r3, .L49
 565 0004 C0F8E431 		str	r3, [r0, #484]
 566 0008 7047     		bx	lr
 567              	.L48:
 568 000a 034B     		ldr	r3, .L49+4
 569 000c C0F8E431 		str	r3, [r0, #484]
 570 0010 7047     		bx	lr
ARM GAS  /tmp/ccwbVul6.s 			page 11


 571              	.L50:
 572 0012 00BF     		.align	2
 573              	.L49:
 574 0014 00414D44 		.word	1145913600
 575 0018 01414D44 		.word	1145913601
 576              		.size	dmac_set_writeprotect, .-dmac_set_writeprotect
 577              		.section	.text.dmac_get_writeprotect_status,"ax",%progbits
 578              		.align	1
 579              		.p2align 2,,3
 580              		.global	dmac_get_writeprotect_status
 581              		.syntax unified
 582              		.thumb
 583              		.thumb_func
 584              		.fpu fpv4-sp-d16
 585              		.type	dmac_get_writeprotect_status, %function
 586              	dmac_get_writeprotect_status:
 587              		@ args = 0, pretend = 0, frame = 0
 588              		@ frame_needed = 0, uses_anonymous_args = 0
 589              		@ link register save eliminated.
 590 0000 D0F8E801 		ldr	r0, [r0, #488]
 591 0004 7047     		bx	lr
 592              		.size	dmac_get_writeprotect_status, .-dmac_get_writeprotect_status
 593 0006 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 594              		.align	2
 595              		.type	cpu_irq_critical_section_counter, %object
 596              		.size	cpu_irq_critical_section_counter, 4
 597              	cpu_irq_critical_section_counter:
 598 0000 00000000 		.space	4
 599              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 600              		.type	cpu_irq_prev_interrupt_state, %object
 601              		.size	cpu_irq_prev_interrupt_state, 1
 602              	cpu_irq_prev_interrupt_state:
 603 0000 00       		.space	1
 604              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
