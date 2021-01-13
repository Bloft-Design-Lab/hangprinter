ARM GAS  /tmp/ccWTCDrB.s 			page 1


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
  14              		.section	.text.tc_init,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	tc_init
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	tc_init, %function
  23              	tc_init:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 8901     		lsls	r1, r1, #6
  28 0002 10B4     		push	{r4}
  29 0004 4318     		adds	r3, r0, r1
  30 0006 0224     		movs	r4, #2
  31 0008 4450     		str	r4, [r0, r1]
  32 000a 4FF0FF31 		mov	r1, #-1
  33 000e 9962     		str	r1, [r3, #40]
  34 0010 196A     		ldr	r1, [r3, #32]
  35 0012 5DF8044B 		ldr	r4, [sp], #4
  36 0016 5A60     		str	r2, [r3, #4]
  37 0018 7047     		bx	lr
  38              		.size	tc_init, .-tc_init
  39 001a 00BF     		.section	.text.tc_sync_trigger,"ax",%progbits
  40              		.align	1
  41              		.p2align 2,,3
  42              		.global	tc_sync_trigger
  43              		.syntax unified
  44              		.thumb
  45              		.thumb_func
  46              		.fpu fpv4-sp-d16
  47              		.type	tc_sync_trigger, %function
  48              	tc_sync_trigger:
  49              		@ args = 0, pretend = 0, frame = 0
  50              		@ frame_needed = 0, uses_anonymous_args = 0
  51              		@ link register save eliminated.
  52 0000 0123     		movs	r3, #1
  53 0002 C0F8C030 		str	r3, [r0, #192]
  54 0006 7047     		bx	lr
  55              		.size	tc_sync_trigger, .-tc_sync_trigger
  56              		.section	.text.tc_set_block_mode,"ax",%progbits
  57              		.align	1
ARM GAS  /tmp/ccWTCDrB.s 			page 2


  58              		.p2align 2,,3
  59              		.global	tc_set_block_mode
  60              		.syntax unified
  61              		.thumb
  62              		.thumb_func
  63              		.fpu fpv4-sp-d16
  64              		.type	tc_set_block_mode, %function
  65              	tc_set_block_mode:
  66              		@ args = 0, pretend = 0, frame = 0
  67              		@ frame_needed = 0, uses_anonymous_args = 0
  68              		@ link register save eliminated.
  69 0000 C0F8C410 		str	r1, [r0, #196]
  70 0004 7047     		bx	lr
  71              		.size	tc_set_block_mode, .-tc_set_block_mode
  72 0006 00BF     		.section	.text.tc_init_2bit_gray,"ax",%progbits
  73              		.align	1
  74              		.p2align 2,,3
  75              		.global	tc_init_2bit_gray
  76              		.syntax unified
  77              		.thumb
  78              		.thumb_func
  79              		.fpu fpv4-sp-d16
  80              		.type	tc_init_2bit_gray, %function
  81              	tc_init_2bit_gray:
  82              		@ args = 0, pretend = 0, frame = 0
  83              		@ frame_needed = 0, uses_anonymous_args = 0
  84              		@ link register save eliminated.
  85 0000 00EB8111 		add	r1, r0, r1, lsl #6
  86 0004 0020     		movs	r0, #0
  87 0006 8A60     		str	r2, [r1, #8]
  88 0008 7047     		bx	lr
  89              		.size	tc_init_2bit_gray, .-tc_init_2bit_gray
  90 000a 00BF     		.section	.text.tc_start,"ax",%progbits
  91              		.align	1
  92              		.p2align 2,,3
  93              		.global	tc_start
  94              		.syntax unified
  95              		.thumb
  96              		.thumb_func
  97              		.fpu fpv4-sp-d16
  98              		.type	tc_start, %function
  99              	tc_start:
 100              		@ args = 0, pretend = 0, frame = 0
 101              		@ frame_needed = 0, uses_anonymous_args = 0
 102              		@ link register save eliminated.
 103 0000 8901     		lsls	r1, r1, #6
 104 0002 0523     		movs	r3, #5
 105 0004 4350     		str	r3, [r0, r1]
 106 0006 7047     		bx	lr
 107              		.size	tc_start, .-tc_start
 108              		.section	.text.tc_stop,"ax",%progbits
 109              		.align	1
 110              		.p2align 2,,3
 111              		.global	tc_stop
 112              		.syntax unified
 113              		.thumb
 114              		.thumb_func
ARM GAS  /tmp/ccWTCDrB.s 			page 3


 115              		.fpu fpv4-sp-d16
 116              		.type	tc_stop, %function
 117              	tc_stop:
 118              		@ args = 0, pretend = 0, frame = 0
 119              		@ frame_needed = 0, uses_anonymous_args = 0
 120              		@ link register save eliminated.
 121 0000 8901     		lsls	r1, r1, #6
 122 0002 0223     		movs	r3, #2
 123 0004 4350     		str	r3, [r0, r1]
 124 0006 7047     		bx	lr
 125              		.size	tc_stop, .-tc_stop
 126              		.section	.text.tc_read_cv,"ax",%progbits
 127              		.align	1
 128              		.p2align 2,,3
 129              		.global	tc_read_cv
 130              		.syntax unified
 131              		.thumb
 132              		.thumb_func
 133              		.fpu fpv4-sp-d16
 134              		.type	tc_read_cv, %function
 135              	tc_read_cv:
 136              		@ args = 0, pretend = 0, frame = 0
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138              		@ link register save eliminated.
 139 0000 00EB8111 		add	r1, r0, r1, lsl #6
 140 0004 0869     		ldr	r0, [r1, #16]
 141 0006 7047     		bx	lr
 142              		.size	tc_read_cv, .-tc_read_cv
 143              		.section	.text.tc_read_ra,"ax",%progbits
 144              		.align	1
 145              		.p2align 2,,3
 146              		.global	tc_read_ra
 147              		.syntax unified
 148              		.thumb
 149              		.thumb_func
 150              		.fpu fpv4-sp-d16
 151              		.type	tc_read_ra, %function
 152              	tc_read_ra:
 153              		@ args = 0, pretend = 0, frame = 0
 154              		@ frame_needed = 0, uses_anonymous_args = 0
 155              		@ link register save eliminated.
 156 0000 00EB8111 		add	r1, r0, r1, lsl #6
 157 0004 4869     		ldr	r0, [r1, #20]
 158 0006 7047     		bx	lr
 159              		.size	tc_read_ra, .-tc_read_ra
 160              		.section	.text.tc_read_rb,"ax",%progbits
 161              		.align	1
 162              		.p2align 2,,3
 163              		.global	tc_read_rb
 164              		.syntax unified
 165              		.thumb
 166              		.thumb_func
 167              		.fpu fpv4-sp-d16
 168              		.type	tc_read_rb, %function
 169              	tc_read_rb:
 170              		@ args = 0, pretend = 0, frame = 0
 171              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccWTCDrB.s 			page 4


 172              		@ link register save eliminated.
 173 0000 00EB8111 		add	r1, r0, r1, lsl #6
 174 0004 8869     		ldr	r0, [r1, #24]
 175 0006 7047     		bx	lr
 176              		.size	tc_read_rb, .-tc_read_rb
 177              		.section	.text.tc_read_rc,"ax",%progbits
 178              		.align	1
 179              		.p2align 2,,3
 180              		.global	tc_read_rc
 181              		.syntax unified
 182              		.thumb
 183              		.thumb_func
 184              		.fpu fpv4-sp-d16
 185              		.type	tc_read_rc, %function
 186              	tc_read_rc:
 187              		@ args = 0, pretend = 0, frame = 0
 188              		@ frame_needed = 0, uses_anonymous_args = 0
 189              		@ link register save eliminated.
 190 0000 00EB8111 		add	r1, r0, r1, lsl #6
 191 0004 C869     		ldr	r0, [r1, #28]
 192 0006 7047     		bx	lr
 193              		.size	tc_read_rc, .-tc_read_rc
 194              		.section	.text.tc_write_ra,"ax",%progbits
 195              		.align	1
 196              		.p2align 2,,3
 197              		.global	tc_write_ra
 198              		.syntax unified
 199              		.thumb
 200              		.thumb_func
 201              		.fpu fpv4-sp-d16
 202              		.type	tc_write_ra, %function
 203              	tc_write_ra:
 204              		@ args = 0, pretend = 0, frame = 0
 205              		@ frame_needed = 0, uses_anonymous_args = 0
 206              		@ link register save eliminated.
 207 0000 00EB8111 		add	r1, r0, r1, lsl #6
 208 0004 4A61     		str	r2, [r1, #20]
 209 0006 7047     		bx	lr
 210              		.size	tc_write_ra, .-tc_write_ra
 211              		.section	.text.tc_write_rb,"ax",%progbits
 212              		.align	1
 213              		.p2align 2,,3
 214              		.global	tc_write_rb
 215              		.syntax unified
 216              		.thumb
 217              		.thumb_func
 218              		.fpu fpv4-sp-d16
 219              		.type	tc_write_rb, %function
 220              	tc_write_rb:
 221              		@ args = 0, pretend = 0, frame = 0
 222              		@ frame_needed = 0, uses_anonymous_args = 0
 223              		@ link register save eliminated.
 224 0000 00EB8111 		add	r1, r0, r1, lsl #6
 225 0004 8A61     		str	r2, [r1, #24]
 226 0006 7047     		bx	lr
 227              		.size	tc_write_rb, .-tc_write_rb
 228              		.section	.text.tc_write_rc,"ax",%progbits
ARM GAS  /tmp/ccWTCDrB.s 			page 5


 229              		.align	1
 230              		.p2align 2,,3
 231              		.global	tc_write_rc
 232              		.syntax unified
 233              		.thumb
 234              		.thumb_func
 235              		.fpu fpv4-sp-d16
 236              		.type	tc_write_rc, %function
 237              	tc_write_rc:
 238              		@ args = 0, pretend = 0, frame = 0
 239              		@ frame_needed = 0, uses_anonymous_args = 0
 240              		@ link register save eliminated.
 241 0000 00EB8111 		add	r1, r0, r1, lsl #6
 242 0004 CA61     		str	r2, [r1, #28]
 243 0006 7047     		bx	lr
 244              		.size	tc_write_rc, .-tc_write_rc
 245              		.section	.text.tc_enable_interrupt,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	tc_enable_interrupt
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu fpv4-sp-d16
 253              		.type	tc_enable_interrupt, %function
 254              	tc_enable_interrupt:
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257              		@ link register save eliminated.
 258 0000 00EB8111 		add	r1, r0, r1, lsl #6
 259 0004 4A62     		str	r2, [r1, #36]
 260 0006 7047     		bx	lr
 261              		.size	tc_enable_interrupt, .-tc_enable_interrupt
 262              		.section	.text.tc_disable_interrupt,"ax",%progbits
 263              		.align	1
 264              		.p2align 2,,3
 265              		.global	tc_disable_interrupt
 266              		.syntax unified
 267              		.thumb
 268              		.thumb_func
 269              		.fpu fpv4-sp-d16
 270              		.type	tc_disable_interrupt, %function
 271              	tc_disable_interrupt:
 272              		@ args = 0, pretend = 0, frame = 0
 273              		@ frame_needed = 0, uses_anonymous_args = 0
 274              		@ link register save eliminated.
 275 0000 00EB8111 		add	r1, r0, r1, lsl #6
 276 0004 8A62     		str	r2, [r1, #40]
 277 0006 7047     		bx	lr
 278              		.size	tc_disable_interrupt, .-tc_disable_interrupt
 279              		.section	.text.tc_get_interrupt_mask,"ax",%progbits
 280              		.align	1
 281              		.p2align 2,,3
 282              		.global	tc_get_interrupt_mask
 283              		.syntax unified
 284              		.thumb
 285              		.thumb_func
ARM GAS  /tmp/ccWTCDrB.s 			page 6


 286              		.fpu fpv4-sp-d16
 287              		.type	tc_get_interrupt_mask, %function
 288              	tc_get_interrupt_mask:
 289              		@ args = 0, pretend = 0, frame = 0
 290              		@ frame_needed = 0, uses_anonymous_args = 0
 291              		@ link register save eliminated.
 292 0000 00EB8111 		add	r1, r0, r1, lsl #6
 293 0004 C86A     		ldr	r0, [r1, #44]
 294 0006 7047     		bx	lr
 295              		.size	tc_get_interrupt_mask, .-tc_get_interrupt_mask
 296              		.section	.text.tc_get_status,"ax",%progbits
 297              		.align	1
 298              		.p2align 2,,3
 299              		.global	tc_get_status
 300              		.syntax unified
 301              		.thumb
 302              		.thumb_func
 303              		.fpu fpv4-sp-d16
 304              		.type	tc_get_status, %function
 305              	tc_get_status:
 306              		@ args = 0, pretend = 0, frame = 0
 307              		@ frame_needed = 0, uses_anonymous_args = 0
 308              		@ link register save eliminated.
 309 0000 00EB8111 		add	r1, r0, r1, lsl #6
 310 0004 086A     		ldr	r0, [r1, #32]
 311 0006 7047     		bx	lr
 312              		.size	tc_get_status, .-tc_get_status
 313              		.section	.text.tc_find_mck_divisor,"ax",%progbits
 314              		.align	1
 315              		.p2align 2,,3
 316              		.global	tc_find_mck_divisor
 317              		.syntax unified
 318              		.thumb
 319              		.thumb_func
 320              		.fpu fpv4-sp-d16
 321              		.type	tc_find_mck_divisor, %function
 322              	tc_find_mck_divisor:
 323              		@ args = 4, pretend = 0, frame = 24
 324              		@ frame_needed = 0, uses_anonymous_args = 0
 325 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 326 0002 87B0     		sub	sp, sp, #28
 327 0004 2025     		movs	r5, #32
 328 0006 0C9C     		ldr	r4, [sp, #48]
 329 0008 0395     		str	r5, [sp, #12]
 330 000a E40B     		lsrs	r4, r4, #15
 331 000c 0226     		movs	r6, #2
 332 000e 0827     		movs	r7, #8
 333 0010 B1FBF6F5 		udiv	r5, r1, r6
 334 0014 0594     		str	r4, [sp, #20]
 335 0016 8542     		cmp	r5, r0
 336 0018 4FF08004 		mov	r4, #128
 337 001c 0297     		str	r7, [sp, #8]
 338 001e 0494     		str	r4, [sp, #16]
 339 0020 0196     		str	r6, [sp, #4]
 340 0022 4FF00004 		mov	r4, #0
 341 0026 0DF1040E 		add	lr, sp, #4
 342 002a 4FEA1547 		lsr	r7, r5, #16
ARM GAS  /tmp/ccWTCDrB.s 			page 7


 343 002e 0CD3     		bcc	.L26
 344              	.L31:
 345 0030 8742     		cmp	r7, r0
 346 0032 0DD9     		bls	.L21
 347 0034 0134     		adds	r4, r4, #1
 348 0036 052C     		cmp	r4, #5
 349 0038 07D0     		beq	.L26
 350 003a 5EF82460 		ldr	r6, [lr, r4, lsl #2]
 351 003e B1FBF6F5 		udiv	r5, r1, r6
 352 0042 8542     		cmp	r5, r0
 353 0044 4FEA1547 		lsr	r7, r5, #16
 354 0048 F2D2     		bcs	.L31
 355              	.L26:
 356 004a 0020     		movs	r0, #0
 357              	.L19:
 358 004c 07B0     		add	sp, sp, #28
 359              		@ sp needed
 360 004e F0BD     		pop	{r4, r5, r6, r7, pc}
 361              	.L21:
 362 0050 02B1     		cbz	r2, .L24
 363 0052 1660     		str	r6, [r2]
 364              	.L24:
 365 0054 1BB1     		cbz	r3, .L27
 366 0056 0120     		movs	r0, #1
 367 0058 1C60     		str	r4, [r3]
 368 005a 07B0     		add	sp, sp, #28
 369              		@ sp needed
 370 005c F0BD     		pop	{r4, r5, r6, r7, pc}
 371              	.L27:
 372 005e 0120     		movs	r0, #1
 373 0060 F4E7     		b	.L19
 374              		.size	tc_find_mck_divisor, .-tc_find_mck_divisor
 375 0062 00BF     		.section	.text.tc_enable_qdec_interrupt,"ax",%progbits
 376              		.align	1
 377              		.p2align 2,,3
 378              		.global	tc_enable_qdec_interrupt
 379              		.syntax unified
 380              		.thumb
 381              		.thumb_func
 382              		.fpu fpv4-sp-d16
 383              		.type	tc_enable_qdec_interrupt, %function
 384              	tc_enable_qdec_interrupt:
 385              		@ args = 0, pretend = 0, frame = 0
 386              		@ frame_needed = 0, uses_anonymous_args = 0
 387              		@ link register save eliminated.
 388 0000 C0F8C810 		str	r1, [r0, #200]
 389 0004 7047     		bx	lr
 390              		.size	tc_enable_qdec_interrupt, .-tc_enable_qdec_interrupt
 391 0006 00BF     		.section	.text.tc_disable_qdec_interrupt,"ax",%progbits
 392              		.align	1
 393              		.p2align 2,,3
 394              		.global	tc_disable_qdec_interrupt
 395              		.syntax unified
 396              		.thumb
 397              		.thumb_func
 398              		.fpu fpv4-sp-d16
 399              		.type	tc_disable_qdec_interrupt, %function
ARM GAS  /tmp/ccWTCDrB.s 			page 8


 400              	tc_disable_qdec_interrupt:
 401              		@ args = 0, pretend = 0, frame = 0
 402              		@ frame_needed = 0, uses_anonymous_args = 0
 403              		@ link register save eliminated.
 404 0000 C0F8CC10 		str	r1, [r0, #204]
 405 0004 7047     		bx	lr
 406              		.size	tc_disable_qdec_interrupt, .-tc_disable_qdec_interrupt
 407 0006 00BF     		.section	.text.tc_get_qdec_interrupt_mask,"ax",%progbits
 408              		.align	1
 409              		.p2align 2,,3
 410              		.global	tc_get_qdec_interrupt_mask
 411              		.syntax unified
 412              		.thumb
 413              		.thumb_func
 414              		.fpu fpv4-sp-d16
 415              		.type	tc_get_qdec_interrupt_mask, %function
 416              	tc_get_qdec_interrupt_mask:
 417              		@ args = 0, pretend = 0, frame = 0
 418              		@ frame_needed = 0, uses_anonymous_args = 0
 419              		@ link register save eliminated.
 420 0000 D0F8D000 		ldr	r0, [r0, #208]
 421 0004 7047     		bx	lr
 422              		.size	tc_get_qdec_interrupt_mask, .-tc_get_qdec_interrupt_mask
 423 0006 00BF     		.section	.text.tc_get_qdec_interrupt_status,"ax",%progbits
 424              		.align	1
 425              		.p2align 2,,3
 426              		.global	tc_get_qdec_interrupt_status
 427              		.syntax unified
 428              		.thumb
 429              		.thumb_func
 430              		.fpu fpv4-sp-d16
 431              		.type	tc_get_qdec_interrupt_status, %function
 432              	tc_get_qdec_interrupt_status:
 433              		@ args = 0, pretend = 0, frame = 0
 434              		@ frame_needed = 0, uses_anonymous_args = 0
 435              		@ link register save eliminated.
 436 0000 D0F8D400 		ldr	r0, [r0, #212]
 437 0004 7047     		bx	lr
 438              		.size	tc_get_qdec_interrupt_status, .-tc_get_qdec_interrupt_status
 439 0006 00BF     		.section	.text.tc_set_writeprotect,"ax",%progbits
 440              		.align	1
 441              		.p2align 2,,3
 442              		.global	tc_set_writeprotect
 443              		.syntax unified
 444              		.thumb
 445              		.thumb_func
 446              		.fpu fpv4-sp-d16
 447              		.type	tc_set_writeprotect, %function
 448              	tc_set_writeprotect:
 449              		@ args = 0, pretend = 0, frame = 0
 450              		@ frame_needed = 0, uses_anonymous_args = 0
 451              		@ link register save eliminated.
 452 0000 19B9     		cbnz	r1, .L39
 453 0002 044B     		ldr	r3, .L40
 454 0004 C0F8E430 		str	r3, [r0, #228]
 455 0008 7047     		bx	lr
 456              	.L39:
ARM GAS  /tmp/ccWTCDrB.s 			page 9


 457 000a 034B     		ldr	r3, .L40+4
 458 000c C0F8E430 		str	r3, [r0, #228]
 459 0010 7047     		bx	lr
 460              	.L41:
 461 0012 00BF     		.align	2
 462              	.L40:
 463 0014 004D4954 		.word	1414089984
 464 0018 014D4954 		.word	1414089985
 465              		.size	tc_set_writeprotect, .-tc_set_writeprotect
 466              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 467              		.align	2
 468              		.type	cpu_irq_critical_section_counter, %object
 469              		.size	cpu_irq_critical_section_counter, 4
 470              	cpu_irq_critical_section_counter:
 471 0000 00000000 		.space	4
 472              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 473              		.type	cpu_irq_prev_interrupt_state, %object
 474              		.size	cpu_irq_prev_interrupt_state, 1
 475              	cpu_irq_prev_interrupt_state:
 476 0000 00       		.space	1
 477              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
