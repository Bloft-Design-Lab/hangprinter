ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczdDXBk.s 			page 1


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
  13              		.file	"tc.c"
  14              		.text
  15              		.section	.text.tc_init,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	tc_init
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	tc_init, %function
  24              	tc_init:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 8901     		lsls	r1, r1, #6
  29 0002 10B4     		push	{r4}
  30 0004 4318     		adds	r3, r0, r1
  31 0006 0224     		movs	r4, #2
  32 0008 4450     		str	r4, [r0, r1]
  33 000a 4FF0FF31 		mov	r1, #-1
  34 000e 9962     		str	r1, [r3, #40]
  35 0010 196A     		ldr	r1, [r3, #32]
  36 0012 5DF8044B 		ldr	r4, [sp], #4
  37 0016 5A60     		str	r2, [r3, #4]
  38 0018 7047     		bx	lr
  39              		.size	tc_init, .-tc_init
  40              		.section	.text.tc_sync_trigger,"ax",%progbits
  41              		.align	1
  42              		.p2align 2,,3
  43              		.global	tc_sync_trigger
  44              		.syntax unified
  45              		.thumb
  46              		.thumb_func
  47              		.fpu fpv4-sp-d16
  48              		.type	tc_sync_trigger, %function
  49              	tc_sync_trigger:
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52              		@ link register save eliminated.
  53 0000 0123     		movs	r3, #1
  54 0002 C0F8C030 		str	r3, [r0, #192]
  55 0006 7047     		bx	lr
  56              		.size	tc_sync_trigger, .-tc_sync_trigger
  57              		.section	.text.tc_set_block_mode,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczdDXBk.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	tc_set_block_mode
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv4-sp-d16
  65              		.type	tc_set_block_mode, %function
  66              	tc_set_block_mode:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69              		@ link register save eliminated.
  70 0000 C0F8C410 		str	r1, [r0, #196]
  71 0004 7047     		bx	lr
  72              		.size	tc_set_block_mode, .-tc_set_block_mode
  73 0006 00BF     		.section	.text.tc_init_2bit_gray,"ax",%progbits
  74              		.align	1
  75              		.p2align 2,,3
  76              		.global	tc_init_2bit_gray
  77              		.syntax unified
  78              		.thumb
  79              		.thumb_func
  80              		.fpu fpv4-sp-d16
  81              		.type	tc_init_2bit_gray, %function
  82              	tc_init_2bit_gray:
  83              		@ args = 0, pretend = 0, frame = 0
  84              		@ frame_needed = 0, uses_anonymous_args = 0
  85              		@ link register save eliminated.
  86 0000 00EB8111 		add	r1, r0, r1, lsl #6
  87 0004 0020     		movs	r0, #0
  88 0006 8A60     		str	r2, [r1, #8]
  89 0008 7047     		bx	lr
  90              		.size	tc_init_2bit_gray, .-tc_init_2bit_gray
  91 000a 00BF     		.section	.text.tc_start,"ax",%progbits
  92              		.align	1
  93              		.p2align 2,,3
  94              		.global	tc_start
  95              		.syntax unified
  96              		.thumb
  97              		.thumb_func
  98              		.fpu fpv4-sp-d16
  99              		.type	tc_start, %function
 100              	tc_start:
 101              		@ args = 0, pretend = 0, frame = 0
 102              		@ frame_needed = 0, uses_anonymous_args = 0
 103              		@ link register save eliminated.
 104 0000 8901     		lsls	r1, r1, #6
 105 0002 0523     		movs	r3, #5
 106 0004 4350     		str	r3, [r0, r1]
 107 0006 7047     		bx	lr
 108              		.size	tc_start, .-tc_start
 109              		.section	.text.tc_stop,"ax",%progbits
 110              		.align	1
 111              		.p2align 2,,3
 112              		.global	tc_stop
 113              		.syntax unified
 114              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczdDXBk.s 			page 3


 115              		.thumb_func
 116              		.fpu fpv4-sp-d16
 117              		.type	tc_stop, %function
 118              	tc_stop:
 119              		@ args = 0, pretend = 0, frame = 0
 120              		@ frame_needed = 0, uses_anonymous_args = 0
 121              		@ link register save eliminated.
 122 0000 8901     		lsls	r1, r1, #6
 123 0002 0223     		movs	r3, #2
 124 0004 4350     		str	r3, [r0, r1]
 125 0006 7047     		bx	lr
 126              		.size	tc_stop, .-tc_stop
 127              		.section	.text.tc_read_cv,"ax",%progbits
 128              		.align	1
 129              		.p2align 2,,3
 130              		.global	tc_read_cv
 131              		.syntax unified
 132              		.thumb
 133              		.thumb_func
 134              		.fpu fpv4-sp-d16
 135              		.type	tc_read_cv, %function
 136              	tc_read_cv:
 137              		@ args = 0, pretend = 0, frame = 0
 138              		@ frame_needed = 0, uses_anonymous_args = 0
 139              		@ link register save eliminated.
 140 0000 00EB8111 		add	r1, r0, r1, lsl #6
 141 0004 0869     		ldr	r0, [r1, #16]
 142 0006 7047     		bx	lr
 143              		.size	tc_read_cv, .-tc_read_cv
 144              		.section	.text.tc_read_ra,"ax",%progbits
 145              		.align	1
 146              		.p2align 2,,3
 147              		.global	tc_read_ra
 148              		.syntax unified
 149              		.thumb
 150              		.thumb_func
 151              		.fpu fpv4-sp-d16
 152              		.type	tc_read_ra, %function
 153              	tc_read_ra:
 154              		@ args = 0, pretend = 0, frame = 0
 155              		@ frame_needed = 0, uses_anonymous_args = 0
 156              		@ link register save eliminated.
 157 0000 00EB8111 		add	r1, r0, r1, lsl #6
 158 0004 4869     		ldr	r0, [r1, #20]
 159 0006 7047     		bx	lr
 160              		.size	tc_read_ra, .-tc_read_ra
 161              		.section	.text.tc_read_rb,"ax",%progbits
 162              		.align	1
 163              		.p2align 2,,3
 164              		.global	tc_read_rb
 165              		.syntax unified
 166              		.thumb
 167              		.thumb_func
 168              		.fpu fpv4-sp-d16
 169              		.type	tc_read_rb, %function
 170              	tc_read_rb:
 171              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczdDXBk.s 			page 4


 172              		@ frame_needed = 0, uses_anonymous_args = 0
 173              		@ link register save eliminated.
 174 0000 00EB8111 		add	r1, r0, r1, lsl #6
 175 0004 8869     		ldr	r0, [r1, #24]
 176 0006 7047     		bx	lr
 177              		.size	tc_read_rb, .-tc_read_rb
 178              		.section	.text.tc_read_rc,"ax",%progbits
 179              		.align	1
 180              		.p2align 2,,3
 181              		.global	tc_read_rc
 182              		.syntax unified
 183              		.thumb
 184              		.thumb_func
 185              		.fpu fpv4-sp-d16
 186              		.type	tc_read_rc, %function
 187              	tc_read_rc:
 188              		@ args = 0, pretend = 0, frame = 0
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 190              		@ link register save eliminated.
 191 0000 00EB8111 		add	r1, r0, r1, lsl #6
 192 0004 C869     		ldr	r0, [r1, #28]
 193 0006 7047     		bx	lr
 194              		.size	tc_read_rc, .-tc_read_rc
 195              		.section	.text.tc_write_ra,"ax",%progbits
 196              		.align	1
 197              		.p2align 2,,3
 198              		.global	tc_write_ra
 199              		.syntax unified
 200              		.thumb
 201              		.thumb_func
 202              		.fpu fpv4-sp-d16
 203              		.type	tc_write_ra, %function
 204              	tc_write_ra:
 205              		@ args = 0, pretend = 0, frame = 0
 206              		@ frame_needed = 0, uses_anonymous_args = 0
 207              		@ link register save eliminated.
 208 0000 00EB8111 		add	r1, r0, r1, lsl #6
 209 0004 4A61     		str	r2, [r1, #20]
 210 0006 7047     		bx	lr
 211              		.size	tc_write_ra, .-tc_write_ra
 212              		.section	.text.tc_write_rb,"ax",%progbits
 213              		.align	1
 214              		.p2align 2,,3
 215              		.global	tc_write_rb
 216              		.syntax unified
 217              		.thumb
 218              		.thumb_func
 219              		.fpu fpv4-sp-d16
 220              		.type	tc_write_rb, %function
 221              	tc_write_rb:
 222              		@ args = 0, pretend = 0, frame = 0
 223              		@ frame_needed = 0, uses_anonymous_args = 0
 224              		@ link register save eliminated.
 225 0000 00EB8111 		add	r1, r0, r1, lsl #6
 226 0004 8A61     		str	r2, [r1, #24]
 227 0006 7047     		bx	lr
 228              		.size	tc_write_rb, .-tc_write_rb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczdDXBk.s 			page 5


 229              		.section	.text.tc_write_rc,"ax",%progbits
 230              		.align	1
 231              		.p2align 2,,3
 232              		.global	tc_write_rc
 233              		.syntax unified
 234              		.thumb
 235              		.thumb_func
 236              		.fpu fpv4-sp-d16
 237              		.type	tc_write_rc, %function
 238              	tc_write_rc:
 239              		@ args = 0, pretend = 0, frame = 0
 240              		@ frame_needed = 0, uses_anonymous_args = 0
 241              		@ link register save eliminated.
 242 0000 00EB8111 		add	r1, r0, r1, lsl #6
 243 0004 CA61     		str	r2, [r1, #28]
 244 0006 7047     		bx	lr
 245              		.size	tc_write_rc, .-tc_write_rc
 246              		.section	.text.tc_enable_interrupt,"ax",%progbits
 247              		.align	1
 248              		.p2align 2,,3
 249              		.global	tc_enable_interrupt
 250              		.syntax unified
 251              		.thumb
 252              		.thumb_func
 253              		.fpu fpv4-sp-d16
 254              		.type	tc_enable_interrupt, %function
 255              	tc_enable_interrupt:
 256              		@ args = 0, pretend = 0, frame = 0
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258              		@ link register save eliminated.
 259 0000 00EB8111 		add	r1, r0, r1, lsl #6
 260 0004 4A62     		str	r2, [r1, #36]
 261 0006 7047     		bx	lr
 262              		.size	tc_enable_interrupt, .-tc_enable_interrupt
 263              		.section	.text.tc_disable_interrupt,"ax",%progbits
 264              		.align	1
 265              		.p2align 2,,3
 266              		.global	tc_disable_interrupt
 267              		.syntax unified
 268              		.thumb
 269              		.thumb_func
 270              		.fpu fpv4-sp-d16
 271              		.type	tc_disable_interrupt, %function
 272              	tc_disable_interrupt:
 273              		@ args = 0, pretend = 0, frame = 0
 274              		@ frame_needed = 0, uses_anonymous_args = 0
 275              		@ link register save eliminated.
 276 0000 00EB8111 		add	r1, r0, r1, lsl #6
 277 0004 8A62     		str	r2, [r1, #40]
 278 0006 7047     		bx	lr
 279              		.size	tc_disable_interrupt, .-tc_disable_interrupt
 280              		.section	.text.tc_get_interrupt_mask,"ax",%progbits
 281              		.align	1
 282              		.p2align 2,,3
 283              		.global	tc_get_interrupt_mask
 284              		.syntax unified
 285              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczdDXBk.s 			page 6


 286              		.thumb_func
 287              		.fpu fpv4-sp-d16
 288              		.type	tc_get_interrupt_mask, %function
 289              	tc_get_interrupt_mask:
 290              		@ args = 0, pretend = 0, frame = 0
 291              		@ frame_needed = 0, uses_anonymous_args = 0
 292              		@ link register save eliminated.
 293 0000 00EB8111 		add	r1, r0, r1, lsl #6
 294 0004 C86A     		ldr	r0, [r1, #44]
 295 0006 7047     		bx	lr
 296              		.size	tc_get_interrupt_mask, .-tc_get_interrupt_mask
 297              		.section	.text.tc_get_status,"ax",%progbits
 298              		.align	1
 299              		.p2align 2,,3
 300              		.global	tc_get_status
 301              		.syntax unified
 302              		.thumb
 303              		.thumb_func
 304              		.fpu fpv4-sp-d16
 305              		.type	tc_get_status, %function
 306              	tc_get_status:
 307              		@ args = 0, pretend = 0, frame = 0
 308              		@ frame_needed = 0, uses_anonymous_args = 0
 309              		@ link register save eliminated.
 310 0000 00EB8111 		add	r1, r0, r1, lsl #6
 311 0004 086A     		ldr	r0, [r1, #32]
 312 0006 7047     		bx	lr
 313              		.size	tc_get_status, .-tc_get_status
 314              		.section	.text.tc_find_mck_divisor,"ax",%progbits
 315              		.align	1
 316              		.p2align 2,,3
 317              		.global	tc_find_mck_divisor
 318              		.syntax unified
 319              		.thumb
 320              		.thumb_func
 321              		.fpu fpv4-sp-d16
 322              		.type	tc_find_mck_divisor, %function
 323              	tc_find_mck_divisor:
 324              		@ args = 4, pretend = 0, frame = 24
 325              		@ frame_needed = 0, uses_anonymous_args = 0
 326              		@ link register save eliminated.
 327 0000 F0B4     		push	{r4, r5, r6, r7}
 328 0002 86B0     		sub	sp, sp, #24
 329 0004 2025     		movs	r5, #32
 330 0006 0A9C     		ldr	r4, [sp, #40]
 331 0008 E40B     		lsrs	r4, r4, #15
 332 000a 0594     		str	r4, [sp, #20]
 333 000c 8024     		movs	r4, #128
 334 000e 0226     		movs	r6, #2
 335 0010 0827     		movs	r7, #8
 336 0012 CDE90354 		strd	r5, r4, [sp, #12]
 337 0016 B1FBF6F5 		udiv	r5, r1, r6
 338 001a 8542     		cmp	r5, r0
 339 001c CDE90167 		strd	r6, r7, [sp, #4]
 340 0020 4FF00004 		mov	r4, #0
 341 0024 0DF1040C 		add	ip, sp, #4
 342 0028 4FEA1547 		lsr	r7, r5, #16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczdDXBk.s 			page 7


 343 002c 0CD3     		bcc	.L27
 344              	.L31:
 345 002e 8742     		cmp	r7, r0
 346 0030 0ED9     		bls	.L22
 347 0032 0134     		adds	r4, r4, #1
 348 0034 052C     		cmp	r4, #5
 349 0036 07D0     		beq	.L27
 350 0038 5CF82460 		ldr	r6, [ip, r4, lsl #2]
 351 003c B1FBF6F5 		udiv	r5, r1, r6
 352 0040 8542     		cmp	r5, r0
 353 0042 4FEA1547 		lsr	r7, r5, #16
 354 0046 F2D2     		bcs	.L31
 355              	.L27:
 356 0048 0020     		movs	r0, #0
 357 004a 06B0     		add	sp, sp, #24
 358              		@ sp needed
 359 004c F0BC     		pop	{r4, r5, r6, r7}
 360 004e 7047     		bx	lr
 361              	.L22:
 362 0050 02B1     		cbz	r2, .L25
 363 0052 1660     		str	r6, [r2]
 364              	.L25:
 365 0054 23B1     		cbz	r3, .L28
 366 0056 0120     		movs	r0, #1
 367 0058 1C60     		str	r4, [r3]
 368 005a 06B0     		add	sp, sp, #24
 369              		@ sp needed
 370 005c F0BC     		pop	{r4, r5, r6, r7}
 371 005e 7047     		bx	lr
 372              	.L28:
 373 0060 0120     		movs	r0, #1
 374 0062 06B0     		add	sp, sp, #24
 375              		@ sp needed
 376 0064 F0BC     		pop	{r4, r5, r6, r7}
 377 0066 7047     		bx	lr
 378              		.size	tc_find_mck_divisor, .-tc_find_mck_divisor
 379              		.section	.text.tc_enable_qdec_interrupt,"ax",%progbits
 380              		.align	1
 381              		.p2align 2,,3
 382              		.global	tc_enable_qdec_interrupt
 383              		.syntax unified
 384              		.thumb
 385              		.thumb_func
 386              		.fpu fpv4-sp-d16
 387              		.type	tc_enable_qdec_interrupt, %function
 388              	tc_enable_qdec_interrupt:
 389              		@ args = 0, pretend = 0, frame = 0
 390              		@ frame_needed = 0, uses_anonymous_args = 0
 391              		@ link register save eliminated.
 392 0000 C0F8C810 		str	r1, [r0, #200]
 393 0004 7047     		bx	lr
 394              		.size	tc_enable_qdec_interrupt, .-tc_enable_qdec_interrupt
 395 0006 00BF     		.section	.text.tc_disable_qdec_interrupt,"ax",%progbits
 396              		.align	1
 397              		.p2align 2,,3
 398              		.global	tc_disable_qdec_interrupt
 399              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczdDXBk.s 			page 8


 400              		.thumb
 401              		.thumb_func
 402              		.fpu fpv4-sp-d16
 403              		.type	tc_disable_qdec_interrupt, %function
 404              	tc_disable_qdec_interrupt:
 405              		@ args = 0, pretend = 0, frame = 0
 406              		@ frame_needed = 0, uses_anonymous_args = 0
 407              		@ link register save eliminated.
 408 0000 C0F8CC10 		str	r1, [r0, #204]
 409 0004 7047     		bx	lr
 410              		.size	tc_disable_qdec_interrupt, .-tc_disable_qdec_interrupt
 411 0006 00BF     		.section	.text.tc_get_qdec_interrupt_mask,"ax",%progbits
 412              		.align	1
 413              		.p2align 2,,3
 414              		.global	tc_get_qdec_interrupt_mask
 415              		.syntax unified
 416              		.thumb
 417              		.thumb_func
 418              		.fpu fpv4-sp-d16
 419              		.type	tc_get_qdec_interrupt_mask, %function
 420              	tc_get_qdec_interrupt_mask:
 421              		@ args = 0, pretend = 0, frame = 0
 422              		@ frame_needed = 0, uses_anonymous_args = 0
 423              		@ link register save eliminated.
 424 0000 D0F8D000 		ldr	r0, [r0, #208]
 425 0004 7047     		bx	lr
 426              		.size	tc_get_qdec_interrupt_mask, .-tc_get_qdec_interrupt_mask
 427 0006 00BF     		.section	.text.tc_get_qdec_interrupt_status,"ax",%progbits
 428              		.align	1
 429              		.p2align 2,,3
 430              		.global	tc_get_qdec_interrupt_status
 431              		.syntax unified
 432              		.thumb
 433              		.thumb_func
 434              		.fpu fpv4-sp-d16
 435              		.type	tc_get_qdec_interrupt_status, %function
 436              	tc_get_qdec_interrupt_status:
 437              		@ args = 0, pretend = 0, frame = 0
 438              		@ frame_needed = 0, uses_anonymous_args = 0
 439              		@ link register save eliminated.
 440 0000 D0F8D400 		ldr	r0, [r0, #212]
 441 0004 7047     		bx	lr
 442              		.size	tc_get_qdec_interrupt_status, .-tc_get_qdec_interrupt_status
 443 0006 00BF     		.section	.text.tc_set_writeprotect,"ax",%progbits
 444              		.align	1
 445              		.p2align 2,,3
 446              		.global	tc_set_writeprotect
 447              		.syntax unified
 448              		.thumb
 449              		.thumb_func
 450              		.fpu fpv4-sp-d16
 451              		.type	tc_set_writeprotect, %function
 452              	tc_set_writeprotect:
 453              		@ args = 0, pretend = 0, frame = 0
 454              		@ frame_needed = 0, uses_anonymous_args = 0
 455              		@ link register save eliminated.
 456 0000 19B9     		cbnz	r1, .L39
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cczdDXBk.s 			page 9


 457 0002 044B     		ldr	r3, .L40
 458 0004 C0F8E430 		str	r3, [r0, #228]
 459 0008 7047     		bx	lr
 460              	.L39:
 461 000a 034B     		ldr	r3, .L40+4
 462 000c C0F8E430 		str	r3, [r0, #228]
 463 0010 7047     		bx	lr
 464              	.L41:
 465 0012 00BF     		.align	2
 466              	.L40:
 467 0014 004D4954 		.word	1414089984
 468 0018 014D4954 		.word	1414089985
 469              		.size	tc_set_writeprotect, .-tc_set_writeprotect
 470              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 471              		.align	2
 472              		.type	cpu_irq_critical_section_counter, %object
 473              		.size	cpu_irq_critical_section_counter, 4
 474              	cpu_irq_critical_section_counter:
 475 0000 00000000 		.space	4
 476              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 477              		.type	cpu_irq_prev_interrupt_state, %object
 478              		.size	cpu_irq_prev_interrupt_state, 1
 479              	cpu_irq_prev_interrupt_state:
 480 0000 00       		.space	1
 481              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
