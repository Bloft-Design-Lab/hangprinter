ARM GAS  /tmp/ccFrGouL.s 			page 1


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
  11              		.file	"tc.c"
  12              		.section	.text.tc_init,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	tc_init
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	tc_init, %function
  21              	tc_init:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 8901     		lsls	r1, r1, #6
  26 0002 10B4     		push	{r4}
  27 0004 4318     		adds	r3, r0, r1
  28 0006 0224     		movs	r4, #2
  29 0008 4450     		str	r4, [r0, r1]
  30 000a 4FF0FF31 		mov	r1, #-1
  31 000e 9962     		str	r1, [r3, #40]
  32 0010 196A     		ldr	r1, [r3, #32]
  33 0012 10BC     		pop	{r4}
  34 0014 5A60     		str	r2, [r3, #4]
  35 0016 7047     		bx	lr
  36              		.size	tc_init, .-tc_init
  37              		.section	.text.tc_sync_trigger,"ax",%progbits
  38              		.align	1
  39              		.p2align 2,,3
  40              		.global	tc_sync_trigger
  41              		.syntax unified
  42              		.thumb
  43              		.thumb_func
  44              		.fpu softvfp
  45              		.type	tc_sync_trigger, %function
  46              	tc_sync_trigger:
  47              		@ args = 0, pretend = 0, frame = 0
  48              		@ frame_needed = 0, uses_anonymous_args = 0
  49              		@ link register save eliminated.
  50 0000 0123     		movs	r3, #1
  51 0002 C0F8C030 		str	r3, [r0, #192]
  52 0006 7047     		bx	lr
  53              		.size	tc_sync_trigger, .-tc_sync_trigger
  54              		.section	.text.tc_set_block_mode,"ax",%progbits
  55              		.align	1
  56              		.p2align 2,,3
  57              		.global	tc_set_block_mode
ARM GAS  /tmp/ccFrGouL.s 			page 2


  58              		.syntax unified
  59              		.thumb
  60              		.thumb_func
  61              		.fpu softvfp
  62              		.type	tc_set_block_mode, %function
  63              	tc_set_block_mode:
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66              		@ link register save eliminated.
  67 0000 C0F8C410 		str	r1, [r0, #196]
  68 0004 7047     		bx	lr
  69              		.size	tc_set_block_mode, .-tc_set_block_mode
  70 0006 00BF     		.section	.text.tc_init_2bit_gray,"ax",%progbits
  71              		.align	1
  72              		.p2align 2,,3
  73              		.global	tc_init_2bit_gray
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu softvfp
  78              		.type	tc_init_2bit_gray, %function
  79              	tc_init_2bit_gray:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 00EB8111 		add	r1, r0, r1, lsl #6
  84 0004 0020     		movs	r0, #0
  85 0006 8A60     		str	r2, [r1, #8]
  86 0008 7047     		bx	lr
  87              		.size	tc_init_2bit_gray, .-tc_init_2bit_gray
  88 000a 00BF     		.section	.text.tc_start,"ax",%progbits
  89              		.align	1
  90              		.p2align 2,,3
  91              		.global	tc_start
  92              		.syntax unified
  93              		.thumb
  94              		.thumb_func
  95              		.fpu softvfp
  96              		.type	tc_start, %function
  97              	tc_start:
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100              		@ link register save eliminated.
 101 0000 8901     		lsls	r1, r1, #6
 102 0002 0523     		movs	r3, #5
 103 0004 4350     		str	r3, [r0, r1]
 104 0006 7047     		bx	lr
 105              		.size	tc_start, .-tc_start
 106              		.section	.text.tc_stop,"ax",%progbits
 107              		.align	1
 108              		.p2align 2,,3
 109              		.global	tc_stop
 110              		.syntax unified
 111              		.thumb
 112              		.thumb_func
 113              		.fpu softvfp
 114              		.type	tc_stop, %function
ARM GAS  /tmp/ccFrGouL.s 			page 3


 115              	tc_stop:
 116              		@ args = 0, pretend = 0, frame = 0
 117              		@ frame_needed = 0, uses_anonymous_args = 0
 118              		@ link register save eliminated.
 119 0000 8901     		lsls	r1, r1, #6
 120 0002 0223     		movs	r3, #2
 121 0004 4350     		str	r3, [r0, r1]
 122 0006 7047     		bx	lr
 123              		.size	tc_stop, .-tc_stop
 124              		.section	.text.tc_read_cv,"ax",%progbits
 125              		.align	1
 126              		.p2align 2,,3
 127              		.global	tc_read_cv
 128              		.syntax unified
 129              		.thumb
 130              		.thumb_func
 131              		.fpu softvfp
 132              		.type	tc_read_cv, %function
 133              	tc_read_cv:
 134              		@ args = 0, pretend = 0, frame = 0
 135              		@ frame_needed = 0, uses_anonymous_args = 0
 136              		@ link register save eliminated.
 137 0000 00EB8111 		add	r1, r0, r1, lsl #6
 138 0004 0869     		ldr	r0, [r1, #16]
 139 0006 7047     		bx	lr
 140              		.size	tc_read_cv, .-tc_read_cv
 141              		.section	.text.tc_read_ra,"ax",%progbits
 142              		.align	1
 143              		.p2align 2,,3
 144              		.global	tc_read_ra
 145              		.syntax unified
 146              		.thumb
 147              		.thumb_func
 148              		.fpu softvfp
 149              		.type	tc_read_ra, %function
 150              	tc_read_ra:
 151              		@ args = 0, pretend = 0, frame = 0
 152              		@ frame_needed = 0, uses_anonymous_args = 0
 153              		@ link register save eliminated.
 154 0000 00EB8111 		add	r1, r0, r1, lsl #6
 155 0004 4869     		ldr	r0, [r1, #20]
 156 0006 7047     		bx	lr
 157              		.size	tc_read_ra, .-tc_read_ra
 158              		.section	.text.tc_read_rb,"ax",%progbits
 159              		.align	1
 160              		.p2align 2,,3
 161              		.global	tc_read_rb
 162              		.syntax unified
 163              		.thumb
 164              		.thumb_func
 165              		.fpu softvfp
 166              		.type	tc_read_rb, %function
 167              	tc_read_rb:
 168              		@ args = 0, pretend = 0, frame = 0
 169              		@ frame_needed = 0, uses_anonymous_args = 0
 170              		@ link register save eliminated.
 171 0000 00EB8111 		add	r1, r0, r1, lsl #6
ARM GAS  /tmp/ccFrGouL.s 			page 4


 172 0004 8869     		ldr	r0, [r1, #24]
 173 0006 7047     		bx	lr
 174              		.size	tc_read_rb, .-tc_read_rb
 175              		.section	.text.tc_read_rc,"ax",%progbits
 176              		.align	1
 177              		.p2align 2,,3
 178              		.global	tc_read_rc
 179              		.syntax unified
 180              		.thumb
 181              		.thumb_func
 182              		.fpu softvfp
 183              		.type	tc_read_rc, %function
 184              	tc_read_rc:
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 0, uses_anonymous_args = 0
 187              		@ link register save eliminated.
 188 0000 00EB8111 		add	r1, r0, r1, lsl #6
 189 0004 C869     		ldr	r0, [r1, #28]
 190 0006 7047     		bx	lr
 191              		.size	tc_read_rc, .-tc_read_rc
 192              		.section	.text.tc_write_ra,"ax",%progbits
 193              		.align	1
 194              		.p2align 2,,3
 195              		.global	tc_write_ra
 196              		.syntax unified
 197              		.thumb
 198              		.thumb_func
 199              		.fpu softvfp
 200              		.type	tc_write_ra, %function
 201              	tc_write_ra:
 202              		@ args = 0, pretend = 0, frame = 0
 203              		@ frame_needed = 0, uses_anonymous_args = 0
 204              		@ link register save eliminated.
 205 0000 00EB8111 		add	r1, r0, r1, lsl #6
 206 0004 4A61     		str	r2, [r1, #20]
 207 0006 7047     		bx	lr
 208              		.size	tc_write_ra, .-tc_write_ra
 209              		.section	.text.tc_write_rb,"ax",%progbits
 210              		.align	1
 211              		.p2align 2,,3
 212              		.global	tc_write_rb
 213              		.syntax unified
 214              		.thumb
 215              		.thumb_func
 216              		.fpu softvfp
 217              		.type	tc_write_rb, %function
 218              	tc_write_rb:
 219              		@ args = 0, pretend = 0, frame = 0
 220              		@ frame_needed = 0, uses_anonymous_args = 0
 221              		@ link register save eliminated.
 222 0000 00EB8111 		add	r1, r0, r1, lsl #6
 223 0004 8A61     		str	r2, [r1, #24]
 224 0006 7047     		bx	lr
 225              		.size	tc_write_rb, .-tc_write_rb
 226              		.section	.text.tc_write_rc,"ax",%progbits
 227              		.align	1
 228              		.p2align 2,,3
ARM GAS  /tmp/ccFrGouL.s 			page 5


 229              		.global	tc_write_rc
 230              		.syntax unified
 231              		.thumb
 232              		.thumb_func
 233              		.fpu softvfp
 234              		.type	tc_write_rc, %function
 235              	tc_write_rc:
 236              		@ args = 0, pretend = 0, frame = 0
 237              		@ frame_needed = 0, uses_anonymous_args = 0
 238              		@ link register save eliminated.
 239 0000 00EB8111 		add	r1, r0, r1, lsl #6
 240 0004 CA61     		str	r2, [r1, #28]
 241 0006 7047     		bx	lr
 242              		.size	tc_write_rc, .-tc_write_rc
 243              		.section	.text.tc_enable_interrupt,"ax",%progbits
 244              		.align	1
 245              		.p2align 2,,3
 246              		.global	tc_enable_interrupt
 247              		.syntax unified
 248              		.thumb
 249              		.thumb_func
 250              		.fpu softvfp
 251              		.type	tc_enable_interrupt, %function
 252              	tc_enable_interrupt:
 253              		@ args = 0, pretend = 0, frame = 0
 254              		@ frame_needed = 0, uses_anonymous_args = 0
 255              		@ link register save eliminated.
 256 0000 00EB8111 		add	r1, r0, r1, lsl #6
 257 0004 4A62     		str	r2, [r1, #36]
 258 0006 7047     		bx	lr
 259              		.size	tc_enable_interrupt, .-tc_enable_interrupt
 260              		.section	.text.tc_disable_interrupt,"ax",%progbits
 261              		.align	1
 262              		.p2align 2,,3
 263              		.global	tc_disable_interrupt
 264              		.syntax unified
 265              		.thumb
 266              		.thumb_func
 267              		.fpu softvfp
 268              		.type	tc_disable_interrupt, %function
 269              	tc_disable_interrupt:
 270              		@ args = 0, pretend = 0, frame = 0
 271              		@ frame_needed = 0, uses_anonymous_args = 0
 272              		@ link register save eliminated.
 273 0000 00EB8111 		add	r1, r0, r1, lsl #6
 274 0004 8A62     		str	r2, [r1, #40]
 275 0006 7047     		bx	lr
 276              		.size	tc_disable_interrupt, .-tc_disable_interrupt
 277              		.section	.text.tc_get_interrupt_mask,"ax",%progbits
 278              		.align	1
 279              		.p2align 2,,3
 280              		.global	tc_get_interrupt_mask
 281              		.syntax unified
 282              		.thumb
 283              		.thumb_func
 284              		.fpu softvfp
 285              		.type	tc_get_interrupt_mask, %function
ARM GAS  /tmp/ccFrGouL.s 			page 6


 286              	tc_get_interrupt_mask:
 287              		@ args = 0, pretend = 0, frame = 0
 288              		@ frame_needed = 0, uses_anonymous_args = 0
 289              		@ link register save eliminated.
 290 0000 00EB8111 		add	r1, r0, r1, lsl #6
 291 0004 C86A     		ldr	r0, [r1, #44]
 292 0006 7047     		bx	lr
 293              		.size	tc_get_interrupt_mask, .-tc_get_interrupt_mask
 294              		.section	.text.tc_get_status,"ax",%progbits
 295              		.align	1
 296              		.p2align 2,,3
 297              		.global	tc_get_status
 298              		.syntax unified
 299              		.thumb
 300              		.thumb_func
 301              		.fpu softvfp
 302              		.type	tc_get_status, %function
 303              	tc_get_status:
 304              		@ args = 0, pretend = 0, frame = 0
 305              		@ frame_needed = 0, uses_anonymous_args = 0
 306              		@ link register save eliminated.
 307 0000 00EB8111 		add	r1, r0, r1, lsl #6
 308 0004 086A     		ldr	r0, [r1, #32]
 309 0006 7047     		bx	lr
 310              		.size	tc_get_status, .-tc_get_status
 311              		.section	.text.tc_find_mck_divisor,"ax",%progbits
 312              		.align	1
 313              		.p2align 2,,3
 314              		.global	tc_find_mck_divisor
 315              		.syntax unified
 316              		.thumb
 317              		.thumb_func
 318              		.fpu softvfp
 319              		.type	tc_find_mck_divisor, %function
 320              	tc_find_mck_divisor:
 321              		@ args = 4, pretend = 0, frame = 24
 322              		@ frame_needed = 0, uses_anonymous_args = 0
 323 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 324 0002 87B0     		sub	sp, sp, #28
 325 0004 2025     		movs	r5, #32
 326 0006 0C9C     		ldr	r4, [sp, #48]
 327 0008 0395     		str	r5, [sp, #12]
 328 000a E40B     		lsrs	r4, r4, #15
 329 000c 0226     		movs	r6, #2
 330 000e 0827     		movs	r7, #8
 331 0010 B1FBF6F5 		udiv	r5, r1, r6
 332 0014 0594     		str	r4, [sp, #20]
 333 0016 8542     		cmp	r5, r0
 334 0018 4FF08004 		mov	r4, #128
 335 001c 0297     		str	r7, [sp, #8]
 336 001e 0494     		str	r4, [sp, #16]
 337 0020 0196     		str	r6, [sp, #4]
 338 0022 4FF00004 		mov	r4, #0
 339 0026 0DF1040E 		add	lr, sp, #4
 340 002a 4FEA1547 		lsr	r7, r5, #16
 341 002e 0CD3     		bcc	.L26
 342              	.L31:
ARM GAS  /tmp/ccFrGouL.s 			page 7


 343 0030 8742     		cmp	r7, r0
 344 0032 0DD9     		bls	.L21
 345 0034 0134     		adds	r4, r4, #1
 346 0036 052C     		cmp	r4, #5
 347 0038 07D0     		beq	.L26
 348 003a 5EF82460 		ldr	r6, [lr, r4, lsl #2]
 349 003e B1FBF6F5 		udiv	r5, r1, r6
 350 0042 8542     		cmp	r5, r0
 351 0044 4FEA1547 		lsr	r7, r5, #16
 352 0048 F2D2     		bcs	.L31
 353              	.L26:
 354 004a 0020     		movs	r0, #0
 355              	.L19:
 356 004c 07B0     		add	sp, sp, #28
 357              		@ sp needed
 358 004e F0BD     		pop	{r4, r5, r6, r7, pc}
 359              	.L21:
 360 0050 02B1     		cbz	r2, .L24
 361 0052 1660     		str	r6, [r2]
 362              	.L24:
 363 0054 1BB1     		cbz	r3, .L27
 364 0056 0120     		movs	r0, #1
 365 0058 1C60     		str	r4, [r3]
 366 005a 07B0     		add	sp, sp, #28
 367              		@ sp needed
 368 005c F0BD     		pop	{r4, r5, r6, r7, pc}
 369              	.L27:
 370 005e 0120     		movs	r0, #1
 371 0060 F4E7     		b	.L19
 372              		.size	tc_find_mck_divisor, .-tc_find_mck_divisor
 373 0062 00BF     		.section	.text.tc_enable_qdec_interrupt,"ax",%progbits
 374              		.align	1
 375              		.p2align 2,,3
 376              		.global	tc_enable_qdec_interrupt
 377              		.syntax unified
 378              		.thumb
 379              		.thumb_func
 380              		.fpu softvfp
 381              		.type	tc_enable_qdec_interrupt, %function
 382              	tc_enable_qdec_interrupt:
 383              		@ args = 0, pretend = 0, frame = 0
 384              		@ frame_needed = 0, uses_anonymous_args = 0
 385              		@ link register save eliminated.
 386 0000 C0F8C810 		str	r1, [r0, #200]
 387 0004 7047     		bx	lr
 388              		.size	tc_enable_qdec_interrupt, .-tc_enable_qdec_interrupt
 389 0006 00BF     		.section	.text.tc_disable_qdec_interrupt,"ax",%progbits
 390              		.align	1
 391              		.p2align 2,,3
 392              		.global	tc_disable_qdec_interrupt
 393              		.syntax unified
 394              		.thumb
 395              		.thumb_func
 396              		.fpu softvfp
 397              		.type	tc_disable_qdec_interrupt, %function
 398              	tc_disable_qdec_interrupt:
 399              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccFrGouL.s 			page 8


 400              		@ frame_needed = 0, uses_anonymous_args = 0
 401              		@ link register save eliminated.
 402 0000 C0F8CC10 		str	r1, [r0, #204]
 403 0004 7047     		bx	lr
 404              		.size	tc_disable_qdec_interrupt, .-tc_disable_qdec_interrupt
 405 0006 00BF     		.section	.text.tc_get_qdec_interrupt_mask,"ax",%progbits
 406              		.align	1
 407              		.p2align 2,,3
 408              		.global	tc_get_qdec_interrupt_mask
 409              		.syntax unified
 410              		.thumb
 411              		.thumb_func
 412              		.fpu softvfp
 413              		.type	tc_get_qdec_interrupt_mask, %function
 414              	tc_get_qdec_interrupt_mask:
 415              		@ args = 0, pretend = 0, frame = 0
 416              		@ frame_needed = 0, uses_anonymous_args = 0
 417              		@ link register save eliminated.
 418 0000 D0F8D000 		ldr	r0, [r0, #208]
 419 0004 7047     		bx	lr
 420              		.size	tc_get_qdec_interrupt_mask, .-tc_get_qdec_interrupt_mask
 421 0006 00BF     		.section	.text.tc_get_qdec_interrupt_status,"ax",%progbits
 422              		.align	1
 423              		.p2align 2,,3
 424              		.global	tc_get_qdec_interrupt_status
 425              		.syntax unified
 426              		.thumb
 427              		.thumb_func
 428              		.fpu softvfp
 429              		.type	tc_get_qdec_interrupt_status, %function
 430              	tc_get_qdec_interrupt_status:
 431              		@ args = 0, pretend = 0, frame = 0
 432              		@ frame_needed = 0, uses_anonymous_args = 0
 433              		@ link register save eliminated.
 434 0000 D0F8D400 		ldr	r0, [r0, #212]
 435 0004 7047     		bx	lr
 436              		.size	tc_get_qdec_interrupt_status, .-tc_get_qdec_interrupt_status
 437 0006 00BF     		.section	.text.tc_set_writeprotect,"ax",%progbits
 438              		.align	1
 439              		.p2align 2,,3
 440              		.global	tc_set_writeprotect
 441              		.syntax unified
 442              		.thumb
 443              		.thumb_func
 444              		.fpu softvfp
 445              		.type	tc_set_writeprotect, %function
 446              	tc_set_writeprotect:
 447              		@ args = 0, pretend = 0, frame = 0
 448              		@ frame_needed = 0, uses_anonymous_args = 0
 449              		@ link register save eliminated.
 450 0000 19B9     		cbnz	r1, .L39
 451 0002 044B     		ldr	r3, .L40
 452 0004 C0F8E430 		str	r3, [r0, #228]
 453 0008 7047     		bx	lr
 454              	.L39:
 455 000a 034B     		ldr	r3, .L40+4
 456 000c C0F8E430 		str	r3, [r0, #228]
ARM GAS  /tmp/ccFrGouL.s 			page 9


 457 0010 7047     		bx	lr
 458              	.L41:
 459 0012 00BF     		.align	2
 460              	.L40:
 461 0014 004D4954 		.word	1414089984
 462 0018 014D4954 		.word	1414089985
 463              		.size	tc_set_writeprotect, .-tc_set_writeprotect
 464              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 465              		.align	2
 466              		.type	cpu_irq_critical_section_counter, %object
 467              		.size	cpu_irq_critical_section_counter, 4
 468              	cpu_irq_critical_section_counter:
 469 0000 00000000 		.space	4
 470              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 471              		.type	cpu_irq_prev_interrupt_state, %object
 472              		.size	cpu_irq_prev_interrupt_state, 1
 473              	cpu_irq_prev_interrupt_state:
 474 0000 00       		.space	1
 475              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
