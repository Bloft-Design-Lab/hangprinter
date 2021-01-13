ARM GAS  C:\Users\paja\AppData\Local\Temp\ccRlqotT.s 			page 1


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
  14              		.text
  15              		.section	.text.dmac_init,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	dmac_init
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	dmac_init, %function
  24              	dmac_init:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 4368     		ldr	r3, [r0, #4]
  29 0002 23F00103 		bic	r3, r3, #1
  30 0006 4360     		str	r3, [r0, #4]
  31 0008 7047     		bx	lr
  32              		.size	dmac_init, .-dmac_init
  33 000a 00BF     		.section	.text.dmac_set_priority_mode,"ax",%progbits
  34              		.align	1
  35              		.p2align 2,,3
  36              		.global	dmac_set_priority_mode
  37              		.syntax unified
  38              		.thumb
  39              		.thumb_func
  40              		.fpu fpv4-sp-d16
  41              		.type	dmac_set_priority_mode, %function
  42              	dmac_set_priority_mode:
  43              		@ args = 0, pretend = 0, frame = 0
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45              		@ link register save eliminated.
  46 0000 0368     		ldr	r3, [r0]
  47 0002 23F01003 		bic	r3, r3, #16
  48 0006 1943     		orrs	r1, r1, r3
  49 0008 0160     		str	r1, [r0]
  50 000a 7047     		bx	lr
  51              		.size	dmac_set_priority_mode, .-dmac_set_priority_mode
  52              		.section	.text.dmac_enable,"ax",%progbits
  53              		.align	1
  54              		.p2align 2,,3
  55              		.global	dmac_enable
  56              		.syntax unified
  57              		.thumb
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccRlqotT.s 			page 2


  58              		.thumb_func
  59              		.fpu fpv4-sp-d16
  60              		.type	dmac_enable, %function
  61              	dmac_enable:
  62              		@ args = 0, pretend = 0, frame = 0
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64              		@ link register save eliminated.
  65 0000 0123     		movs	r3, #1
  66 0002 4360     		str	r3, [r0, #4]
  67 0004 7047     		bx	lr
  68              		.size	dmac_enable, .-dmac_enable
  69 0006 00BF     		.section	.text.dmac_disable,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	dmac_disable
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu fpv4-sp-d16
  77              		.type	dmac_disable, %function
  78              	dmac_disable:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81              		@ link register save eliminated.
  82 0000 4368     		ldr	r3, [r0, #4]
  83 0002 23F00103 		bic	r3, r3, #1
  84 0006 4360     		str	r3, [r0, #4]
  85 0008 7047     		bx	lr
  86              		.size	dmac_disable, .-dmac_disable
  87 000a 00BF     		.section	.text.dmac_enable_interrupt,"ax",%progbits
  88              		.align	1
  89              		.p2align 2,,3
  90              		.global	dmac_enable_interrupt
  91              		.syntax unified
  92              		.thumb
  93              		.thumb_func
  94              		.fpu fpv4-sp-d16
  95              		.type	dmac_enable_interrupt, %function
  96              	dmac_enable_interrupt:
  97              		@ args = 0, pretend = 0, frame = 0
  98              		@ frame_needed = 0, uses_anonymous_args = 0
  99              		@ link register save eliminated.
 100 0000 8161     		str	r1, [r0, #24]
 101 0002 7047     		bx	lr
 102              		.size	dmac_enable_interrupt, .-dmac_enable_interrupt
 103              		.section	.text.dmac_disable_interrupt,"ax",%progbits
 104              		.align	1
 105              		.p2align 2,,3
 106              		.global	dmac_disable_interrupt
 107              		.syntax unified
 108              		.thumb
 109              		.thumb_func
 110              		.fpu fpv4-sp-d16
 111              		.type	dmac_disable_interrupt, %function
 112              	dmac_disable_interrupt:
 113              		@ args = 0, pretend = 0, frame = 0
 114              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccRlqotT.s 			page 3


 115              		@ link register save eliminated.
 116 0000 C161     		str	r1, [r0, #28]
 117 0002 7047     		bx	lr
 118              		.size	dmac_disable_interrupt, .-dmac_disable_interrupt
 119              		.section	.text.dmac_get_interrupt_mask,"ax",%progbits
 120              		.align	1
 121              		.p2align 2,,3
 122              		.global	dmac_get_interrupt_mask
 123              		.syntax unified
 124              		.thumb
 125              		.thumb_func
 126              		.fpu fpv4-sp-d16
 127              		.type	dmac_get_interrupt_mask, %function
 128              	dmac_get_interrupt_mask:
 129              		@ args = 0, pretend = 0, frame = 0
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131              		@ link register save eliminated.
 132 0000 006A     		ldr	r0, [r0, #32]
 133 0002 7047     		bx	lr
 134              		.size	dmac_get_interrupt_mask, .-dmac_get_interrupt_mask
 135              		.section	.text.dmac_get_status,"ax",%progbits
 136              		.align	1
 137              		.p2align 2,,3
 138              		.global	dmac_get_status
 139              		.syntax unified
 140              		.thumb
 141              		.thumb_func
 142              		.fpu fpv4-sp-d16
 143              		.type	dmac_get_status, %function
 144              	dmac_get_status:
 145              		@ args = 0, pretend = 0, frame = 0
 146              		@ frame_needed = 0, uses_anonymous_args = 0
 147              		@ link register save eliminated.
 148 0000 406A     		ldr	r0, [r0, #36]
 149 0002 7047     		bx	lr
 150              		.size	dmac_get_status, .-dmac_get_status
 151              		.section	.text.dmac_channel_enable,"ax",%progbits
 152              		.align	1
 153              		.p2align 2,,3
 154              		.global	dmac_channel_enable
 155              		.syntax unified
 156              		.thumb
 157              		.thumb_func
 158              		.fpu fpv4-sp-d16
 159              		.type	dmac_channel_enable, %function
 160              	dmac_channel_enable:
 161              		@ args = 0, pretend = 0, frame = 0
 162              		@ frame_needed = 0, uses_anonymous_args = 0
 163              		@ link register save eliminated.
 164 0000 0123     		movs	r3, #1
 165 0002 03FA01F1 		lsl	r1, r3, r1
 166 0006 8162     		str	r1, [r0, #40]
 167 0008 7047     		bx	lr
 168              		.size	dmac_channel_enable, .-dmac_channel_enable
 169 000a 00BF     		.section	.text.dmac_channel_disable,"ax",%progbits
 170              		.align	1
 171              		.p2align 2,,3
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccRlqotT.s 			page 4


 172              		.global	dmac_channel_disable
 173              		.syntax unified
 174              		.thumb
 175              		.thumb_func
 176              		.fpu fpv4-sp-d16
 177              		.type	dmac_channel_disable, %function
 178              	dmac_channel_disable:
 179              		@ args = 0, pretend = 0, frame = 0
 180              		@ frame_needed = 0, uses_anonymous_args = 0
 181              		@ link register save eliminated.
 182 0000 0123     		movs	r3, #1
 183 0002 03FA01F1 		lsl	r1, r3, r1
 184 0006 C162     		str	r1, [r0, #44]
 185 0008 7047     		bx	lr
 186              		.size	dmac_channel_disable, .-dmac_channel_disable
 187 000a 00BF     		.section	.text.dmac_channel_is_enable,"ax",%progbits
 188              		.align	1
 189              		.p2align 2,,3
 190              		.global	dmac_channel_is_enable
 191              		.syntax unified
 192              		.thumb
 193              		.thumb_func
 194              		.fpu fpv4-sp-d16
 195              		.type	dmac_channel_is_enable, %function
 196              	dmac_channel_is_enable:
 197              		@ args = 0, pretend = 0, frame = 0
 198              		@ frame_needed = 0, uses_anonymous_args = 0
 199              		@ link register save eliminated.
 200 0000 026B     		ldr	r2, [r0, #48]
 201 0002 0123     		movs	r3, #1
 202 0004 03FA01F1 		lsl	r1, r3, r1
 203 0008 1142     		tst	r1, r2
 204 000a 14BF     		ite	ne
 205 000c 1846     		movne	r0, r3
 206 000e 0020     		moveq	r0, #0
 207 0010 7047     		bx	lr
 208              		.size	dmac_channel_is_enable, .-dmac_channel_is_enable
 209 0012 00BF     		.section	.text.dmac_channel_suspend,"ax",%progbits
 210              		.align	1
 211              		.p2align 2,,3
 212              		.global	dmac_channel_suspend
 213              		.syntax unified
 214              		.thumb
 215              		.thumb_func
 216              		.fpu fpv4-sp-d16
 217              		.type	dmac_channel_suspend, %function
 218              	dmac_channel_suspend:
 219              		@ args = 0, pretend = 0, frame = 0
 220              		@ frame_needed = 0, uses_anonymous_args = 0
 221              		@ link register save eliminated.
 222 0000 4FF48073 		mov	r3, #256
 223 0004 03FA01F1 		lsl	r1, r3, r1
 224 0008 8162     		str	r1, [r0, #40]
 225 000a 7047     		bx	lr
 226              		.size	dmac_channel_suspend, .-dmac_channel_suspend
 227              		.section	.text.dmac_channel_resume,"ax",%progbits
 228              		.align	1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccRlqotT.s 			page 5


 229              		.p2align 2,,3
 230              		.global	dmac_channel_resume
 231              		.syntax unified
 232              		.thumb
 233              		.thumb_func
 234              		.fpu fpv4-sp-d16
 235              		.type	dmac_channel_resume, %function
 236              	dmac_channel_resume:
 237              		@ args = 0, pretend = 0, frame = 0
 238              		@ frame_needed = 0, uses_anonymous_args = 0
 239              		@ link register save eliminated.
 240 0000 4FF48073 		mov	r3, #256
 241 0004 03FA01F1 		lsl	r1, r3, r1
 242 0008 C162     		str	r1, [r0, #44]
 243 000a 7047     		bx	lr
 244              		.size	dmac_channel_resume, .-dmac_channel_resume
 245              		.section	.text.dmac_channel_keep,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	dmac_channel_keep
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu fpv4-sp-d16
 253              		.type	dmac_channel_keep, %function
 254              	dmac_channel_keep:
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257              		@ link register save eliminated.
 258 0000 4FF08073 		mov	r3, #16777216
 259 0004 03FA01F1 		lsl	r1, r3, r1
 260 0008 8162     		str	r1, [r0, #40]
 261 000a 7047     		bx	lr
 262              		.size	dmac_channel_keep, .-dmac_channel_keep
 263              		.section	.text.dmac_channel_get_status,"ax",%progbits
 264              		.align	1
 265              		.p2align 2,,3
 266              		.global	dmac_channel_get_status
 267              		.syntax unified
 268              		.thumb
 269              		.thumb_func
 270              		.fpu fpv4-sp-d16
 271              		.type	dmac_channel_get_status, %function
 272              	dmac_channel_get_status:
 273              		@ args = 0, pretend = 0, frame = 0
 274              		@ frame_needed = 0, uses_anonymous_args = 0
 275              		@ link register save eliminated.
 276 0000 006B     		ldr	r0, [r0, #48]
 277 0002 7047     		bx	lr
 278              		.size	dmac_channel_get_status, .-dmac_channel_get_status
 279              		.section	.text.dmac_channel_set_source_addr,"ax",%progbits
 280              		.align	1
 281              		.p2align 2,,3
 282              		.global	dmac_channel_set_source_addr
 283              		.syntax unified
 284              		.thumb
 285              		.thumb_func
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccRlqotT.s 			page 6


 286              		.fpu fpv4-sp-d16
 287              		.type	dmac_channel_set_source_addr, %function
 288              	dmac_channel_set_source_addr:
 289              		@ args = 0, pretend = 0, frame = 0
 290              		@ frame_needed = 0, uses_anonymous_args = 0
 291              		@ link register save eliminated.
 292 0000 01EB8101 		add	r1, r1, r1, lsl #2
 293 0004 00EBC101 		add	r1, r0, r1, lsl #3
 294 0008 CA63     		str	r2, [r1, #60]
 295 000a 7047     		bx	lr
 296              		.size	dmac_channel_set_source_addr, .-dmac_channel_set_source_addr
 297              		.section	.text.dmac_channel_set_destination_addr,"ax",%progbits
 298              		.align	1
 299              		.p2align 2,,3
 300              		.global	dmac_channel_set_destination_addr
 301              		.syntax unified
 302              		.thumb
 303              		.thumb_func
 304              		.fpu fpv4-sp-d16
 305              		.type	dmac_channel_set_destination_addr, %function
 306              	dmac_channel_set_destination_addr:
 307              		@ args = 0, pretend = 0, frame = 0
 308              		@ frame_needed = 0, uses_anonymous_args = 0
 309              		@ link register save eliminated.
 310 0000 01EB8101 		add	r1, r1, r1, lsl #2
 311 0004 00EBC101 		add	r1, r0, r1, lsl #3
 312 0008 0A64     		str	r2, [r1, #64]
 313 000a 7047     		bx	lr
 314              		.size	dmac_channel_set_destination_addr, .-dmac_channel_set_destination_addr
 315              		.section	.text.dmac_channel_set_descriptor_addr,"ax",%progbits
 316              		.align	1
 317              		.p2align 2,,3
 318              		.global	dmac_channel_set_descriptor_addr
 319              		.syntax unified
 320              		.thumb
 321              		.thumb_func
 322              		.fpu fpv4-sp-d16
 323              		.type	dmac_channel_set_descriptor_addr, %function
 324              	dmac_channel_set_descriptor_addr:
 325              		@ args = 0, pretend = 0, frame = 0
 326              		@ frame_needed = 0, uses_anonymous_args = 0
 327              		@ link register save eliminated.
 328 0000 01EB8101 		add	r1, r1, r1, lsl #2
 329 0004 00EBC101 		add	r1, r0, r1, lsl #3
 330 0008 4A64     		str	r2, [r1, #68]
 331 000a 7047     		bx	lr
 332              		.size	dmac_channel_set_descriptor_addr, .-dmac_channel_set_descriptor_addr
 333              		.section	.text.dmac_channel_set_ctrlA,"ax",%progbits
 334              		.align	1
 335              		.p2align 2,,3
 336              		.global	dmac_channel_set_ctrlA
 337              		.syntax unified
 338              		.thumb
 339              		.thumb_func
 340              		.fpu fpv4-sp-d16
 341              		.type	dmac_channel_set_ctrlA, %function
 342              	dmac_channel_set_ctrlA:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccRlqotT.s 			page 7


 343              		@ args = 0, pretend = 0, frame = 0
 344              		@ frame_needed = 0, uses_anonymous_args = 0
 345              		@ link register save eliminated.
 346 0000 01EB8101 		add	r1, r1, r1, lsl #2
 347 0004 00EBC101 		add	r1, r0, r1, lsl #3
 348 0008 8A64     		str	r2, [r1, #72]
 349 000a 7047     		bx	lr
 350              		.size	dmac_channel_set_ctrlA, .-dmac_channel_set_ctrlA
 351              		.section	.text.dmac_channel_set_ctrlB,"ax",%progbits
 352              		.align	1
 353              		.p2align 2,,3
 354              		.global	dmac_channel_set_ctrlB
 355              		.syntax unified
 356              		.thumb
 357              		.thumb_func
 358              		.fpu fpv4-sp-d16
 359              		.type	dmac_channel_set_ctrlB, %function
 360              	dmac_channel_set_ctrlB:
 361              		@ args = 0, pretend = 0, frame = 0
 362              		@ frame_needed = 0, uses_anonymous_args = 0
 363              		@ link register save eliminated.
 364 0000 01EB8101 		add	r1, r1, r1, lsl #2
 365 0004 00EBC101 		add	r1, r0, r1, lsl #3
 366 0008 CA64     		str	r2, [r1, #76]
 367 000a 7047     		bx	lr
 368              		.size	dmac_channel_set_ctrlB, .-dmac_channel_set_ctrlB
 369              		.section	.text.dmac_channel_set_configuration,"ax",%progbits
 370              		.align	1
 371              		.p2align 2,,3
 372              		.global	dmac_channel_set_configuration
 373              		.syntax unified
 374              		.thumb
 375              		.thumb_func
 376              		.fpu fpv4-sp-d16
 377              		.type	dmac_channel_set_configuration, %function
 378              	dmac_channel_set_configuration:
 379              		@ args = 0, pretend = 0, frame = 0
 380              		@ frame_needed = 0, uses_anonymous_args = 0
 381              		@ link register save eliminated.
 382 0000 01EB8101 		add	r1, r1, r1, lsl #2
 383 0004 00EBC101 		add	r1, r0, r1, lsl #3
 384 0008 0A65     		str	r2, [r1, #80]
 385 000a 7047     		bx	lr
 386              		.size	dmac_channel_set_configuration, .-dmac_channel_set_configuration
 387              		.section	.text.dmac_channel_single_buf_transfer_init,"ax",%progbits
 388              		.align	1
 389              		.p2align 2,,3
 390              		.global	dmac_channel_single_buf_transfer_init
 391              		.syntax unified
 392              		.thumb
 393              		.thumb_func
 394              		.fpu fpv4-sp-d16
 395              		.type	dmac_channel_single_buf_transfer_init, %function
 396              	dmac_channel_single_buf_transfer_init:
 397              		@ args = 0, pretend = 0, frame = 0
 398              		@ frame_needed = 0, uses_anonymous_args = 0
 399              		@ link register save eliminated.
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccRlqotT.s 			page 8


 400 0000 70B4     		push	{r4, r5, r6}
 401 0002 01EB8101 		add	r1, r1, r1, lsl #2
 402 0006 D2E90065 		ldrd	r6, r5, [r2]
 403 000a D2E90243 		ldrd	r4, r3, [r2, #8]
 404 000e 00EBC101 		add	r1, r0, r1, lsl #3
 405 0012 426A     		ldr	r2, [r0, #36]
 406 0014 CE63     		str	r6, [r1, #60]
 407 0016 0022     		movs	r2, #0
 408 0018 0D64     		str	r5, [r1, #64]
 409 001a 4A64     		str	r2, [r1, #68]
 410 001c 8C64     		str	r4, [r1, #72]
 411 001e CB64     		str	r3, [r1, #76]
 412 0020 70BC     		pop	{r4, r5, r6}
 413 0022 7047     		bx	lr
 414              		.size	dmac_channel_single_buf_transfer_init, .-dmac_channel_single_buf_transfer_init
 415              		.section	.text.dmac_channel_multi_buf_transfer_init,"ax",%progbits
 416              		.align	1
 417              		.p2align 2,,3
 418              		.global	dmac_channel_multi_buf_transfer_init
 419              		.syntax unified
 420              		.thumb
 421              		.thumb_func
 422              		.fpu fpv4-sp-d16
 423              		.type	dmac_channel_multi_buf_transfer_init, %function
 424              	dmac_channel_multi_buf_transfer_init:
 425              		@ args = 0, pretend = 0, frame = 0
 426              		@ frame_needed = 0, uses_anonymous_args = 0
 427              		@ link register save eliminated.
 428 0000 01EB8101 		add	r1, r1, r1, lsl #2
 429 0004 00EBC101 		add	r1, r0, r1, lsl #3
 430 0008 0023     		movs	r3, #0
 431 000a 406A     		ldr	r0, [r0, #36]
 432 000c 4A64     		str	r2, [r1, #68]
 433 000e CB64     		str	r3, [r1, #76]
 434 0010 7047     		bx	lr
 435              		.size	dmac_channel_multi_buf_transfer_init, .-dmac_channel_multi_buf_transfer_init
 436 0012 00BF     		.section	.text.dmac_channel_stop_transfer,"ax",%progbits
 437              		.align	1
 438              		.p2align 2,,3
 439              		.global	dmac_channel_stop_transfer
 440              		.syntax unified
 441              		.thumb
 442              		.thumb_func
 443              		.fpu fpv4-sp-d16
 444              		.type	dmac_channel_stop_transfer, %function
 445              	dmac_channel_stop_transfer:
 446              		@ args = 0, pretend = 0, frame = 0
 447              		@ frame_needed = 0, uses_anonymous_args = 0
 448              		@ link register save eliminated.
 449 0000 036B     		ldr	r3, [r0, #48]
 450 0002 0122     		movs	r2, #1
 451 0004 8A40     		lsls	r2, r2, r1
 452 0006 1A42     		tst	r2, r3
 453 0008 10D0     		beq	.L35
 454 000a 10B4     		push	{r4}
 455 000c 4FF48074 		mov	r4, #256
 456 0010 8C40     		lsls	r4, r4, r1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccRlqotT.s 			page 9


 457 0012 4FF48033 		mov	r3, #65536
 458 0016 8462     		str	r4, [r0, #40]
 459 0018 03FA01F1 		lsl	r1, r3, r1
 460              	.L28:
 461 001c 036B     		ldr	r3, [r0, #48]
 462 001e 1942     		tst	r1, r3
 463 0020 FCD0     		beq	.L28
 464 0022 C262     		str	r2, [r0, #44]
 465 0024 C462     		str	r4, [r0, #44]
 466 0026 5DF8044B 		ldr	r4, [sp], #4
 467 002a 7047     		bx	lr
 468              	.L35:
 469 002c 7047     		bx	lr
 470              		.size	dmac_channel_stop_transfer, .-dmac_channel_stop_transfer
 471 002e 00BF     		.section	.text.dmac_channel_is_transfer_done,"ax",%progbits
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
 493 0012 00BF     		.section	.text.dmac_soft_single_transfer_request,"ax",%progbits
 494              		.align	1
 495              		.p2align 2,,3
 496              		.global	dmac_soft_single_transfer_request
 497              		.syntax unified
 498              		.thumb
 499              		.thumb_func
 500              		.fpu fpv4-sp-d16
 501              		.type	dmac_soft_single_transfer_request, %function
 502              	dmac_soft_single_transfer_request:
 503              		@ args = 0, pretend = 0, frame = 0
 504              		@ frame_needed = 0, uses_anonymous_args = 0
 505              		@ link register save eliminated.
 506 0000 0032     		adds	r2, r2, #0
 507 0002 18BF     		it	ne
 508 0004 0122     		movne	r2, #1
 509 0006 0BB1     		cbz	r3, .L40
 510 0008 42F00202 		orr	r2, r2, #2
 511              	.L40:
 512 000c 8368     		ldr	r3, [r0, #8]
 513 000e 8A40     		lsls	r2, r2, r1
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccRlqotT.s 			page 10


 514 0010 1A43     		orrs	r2, r2, r3
 515 0012 8260     		str	r2, [r0, #8]
 516 0014 7047     		bx	lr
 517              		.size	dmac_soft_single_transfer_request, .-dmac_soft_single_transfer_request
 518              		.section	.text.dmac_soft_chunk_transfer_request,"ax",%progbits
 519              		.align	1
 520              		.p2align 2,,3
 521              		.global	dmac_soft_chunk_transfer_request
 522              		.syntax unified
 523              		.thumb
 524              		.thumb_func
 525              		.fpu fpv4-sp-d16
 526              		.type	dmac_soft_chunk_transfer_request, %function
 527              	dmac_soft_chunk_transfer_request:
 528              		@ args = 0, pretend = 0, frame = 0
 529              		@ frame_needed = 0, uses_anonymous_args = 0
 530              		@ link register save eliminated.
 531 0000 FFF7FEBF 		b	dmac_soft_single_transfer_request
 532              		.size	dmac_soft_chunk_transfer_request, .-dmac_soft_chunk_transfer_request
 533              		.section	.text.dmac_soft_set_last_transfer_flag,"ax",%progbits
 534              		.align	1
 535              		.p2align 2,,3
 536              		.global	dmac_soft_set_last_transfer_flag
 537              		.syntax unified
 538              		.thumb
 539              		.thumb_func
 540              		.fpu fpv4-sp-d16
 541              		.type	dmac_soft_set_last_transfer_flag, %function
 542              	dmac_soft_set_last_transfer_flag:
 543              		@ args = 0, pretend = 0, frame = 0
 544              		@ frame_needed = 0, uses_anonymous_args = 0
 545              		@ link register save eliminated.
 546 0000 FFF7FEBF 		b	dmac_soft_single_transfer_request
 547              		.size	dmac_soft_set_last_transfer_flag, .-dmac_soft_set_last_transfer_flag
 548              		.section	.text.dmac_set_writeprotect,"ax",%progbits
 549              		.align	1
 550              		.p2align 2,,3
 551              		.global	dmac_set_writeprotect
 552              		.syntax unified
 553              		.thumb
 554              		.thumb_func
 555              		.fpu fpv4-sp-d16
 556              		.type	dmac_set_writeprotect, %function
 557              	dmac_set_writeprotect:
 558              		@ args = 0, pretend = 0, frame = 0
 559              		@ frame_needed = 0, uses_anonymous_args = 0
 560              		@ link register save eliminated.
 561 0000 19B9     		cbnz	r1, .L49
 562 0002 044B     		ldr	r3, .L50
 563 0004 C0F8E431 		str	r3, [r0, #484]
 564 0008 7047     		bx	lr
 565              	.L49:
 566 000a 034B     		ldr	r3, .L50+4
 567 000c C0F8E431 		str	r3, [r0, #484]
 568 0010 7047     		bx	lr
 569              	.L51:
 570 0012 00BF     		.align	2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccRlqotT.s 			page 11


 571              	.L50:
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
 582              		.fpu fpv4-sp-d16
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
 602              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
