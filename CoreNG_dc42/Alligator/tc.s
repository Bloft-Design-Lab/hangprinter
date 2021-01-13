ARM GAS  /tmp/ccQ0Uoau.s 			page 1


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
  25 0000 30B4     		push	{r4, r5}
  26 0002 0225     		movs	r5, #2
  27 0004 4FF0FF34 		mov	r4, #-1
  28 0008 8901     		lsls	r1, r1, #6
  29 000a 4318     		adds	r3, r0, r1
  30 000c 4550     		str	r5, [r0, r1]
  31 000e 9C62     		str	r4, [r3, #40]
  32 0010 196A     		ldr	r1, [r3, #32]
  33 0012 30BC     		pop	{r4, r5}
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
ARM GAS  /tmp/ccQ0Uoau.s 			page 2


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
  84 0004 8A60     		str	r2, [r1, #8]
  85 0006 0020     		movs	r0, #0
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
 101 0000 0523     		movs	r3, #5
 102 0002 8901     		lsls	r1, r1, #6
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
ARM GAS  /tmp/ccQ0Uoau.s 			page 3


 115              	tc_stop:
 116              		@ args = 0, pretend = 0, frame = 0
 117              		@ frame_needed = 0, uses_anonymous_args = 0
 118              		@ link register save eliminated.
 119 0000 0223     		movs	r3, #2
 120 0002 8901     		lsls	r1, r1, #6
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
ARM GAS  /tmp/ccQ0Uoau.s 			page 4


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
ARM GAS  /tmp/ccQ0Uoau.s 			page 5


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
ARM GAS  /tmp/ccQ0Uoau.s 			page 6


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
 323 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 324 0004 0227     		movs	r7, #2
 325 0006 3E46     		mov	r6, r7
 326 0008 86B0     		sub	sp, sp, #24
 327 000a 0C9D     		ldr	r5, [sp, #48]
 328 000c 4FF0200E 		mov	lr, #32
 329 0010 ED0B     		lsrs	r5, r5, #15
 330 0012 0595     		str	r5, [sp, #20]
 331 0014 B1FBF6F5 		udiv	r5, r1, r6
 332 0018 4FF0080C 		mov	ip, #8
 333 001c 4FF08008 		mov	r8, #128
 334 0020 8542     		cmp	r5, r0
 335 0022 0197     		str	r7, [sp, #4]
 336 0024 CDF80CE0 		str	lr, [sp, #12]
 337 0028 4FF00004 		mov	r4, #0
 338 002c CDF808C0 		str	ip, [sp, #8]
 339 0030 CDF81080 		str	r8, [sp, #16]
 340 0034 0DF1040E 		add	lr, sp, #4
 341 0038 4FEA1547 		lsr	r7, r5, #16
 342 003c 0CD3     		bcc	.L26
ARM GAS  /tmp/ccQ0Uoau.s 			page 7


 343              	.L31:
 344 003e 8742     		cmp	r7, r0
 345 0040 0ED9     		bls	.L21
 346 0042 0134     		adds	r4, r4, #1
 347 0044 052C     		cmp	r4, #5
 348 0046 07D0     		beq	.L26
 349 0048 5EF82460 		ldr	r6, [lr, r4, lsl #2]
 350 004c B1FBF6F5 		udiv	r5, r1, r6
 351 0050 8542     		cmp	r5, r0
 352 0052 4FEA1547 		lsr	r7, r5, #16
 353 0056 F2D2     		bcs	.L31
 354              	.L26:
 355 0058 0020     		movs	r0, #0
 356              	.L19:
 357 005a 06B0     		add	sp, sp, #24
 358              		@ sp needed
 359 005c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 360              	.L21:
 361 0060 02B1     		cbz	r2, .L24
 362 0062 1660     		str	r6, [r2]
 363              	.L24:
 364 0064 23B1     		cbz	r3, .L27
 365 0066 0120     		movs	r0, #1
 366 0068 1C60     		str	r4, [r3]
 367 006a 06B0     		add	sp, sp, #24
 368              		@ sp needed
 369 006c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 370              	.L27:
 371 0070 0120     		movs	r0, #1
 372 0072 F2E7     		b	.L19
 373              		.size	tc_find_mck_divisor, .-tc_find_mck_divisor
 374              		.section	.text.tc_enable_qdec_interrupt,"ax",%progbits
 375              		.align	1
 376              		.p2align 2,,3
 377              		.global	tc_enable_qdec_interrupt
 378              		.syntax unified
 379              		.thumb
 380              		.thumb_func
 381              		.fpu softvfp
 382              		.type	tc_enable_qdec_interrupt, %function
 383              	tc_enable_qdec_interrupt:
 384              		@ args = 0, pretend = 0, frame = 0
 385              		@ frame_needed = 0, uses_anonymous_args = 0
 386              		@ link register save eliminated.
 387 0000 C0F8C810 		str	r1, [r0, #200]
 388 0004 7047     		bx	lr
 389              		.size	tc_enable_qdec_interrupt, .-tc_enable_qdec_interrupt
 390 0006 00BF     		.section	.text.tc_disable_qdec_interrupt,"ax",%progbits
 391              		.align	1
 392              		.p2align 2,,3
 393              		.global	tc_disable_qdec_interrupt
 394              		.syntax unified
 395              		.thumb
 396              		.thumb_func
 397              		.fpu softvfp
 398              		.type	tc_disable_qdec_interrupt, %function
 399              	tc_disable_qdec_interrupt:
ARM GAS  /tmp/ccQ0Uoau.s 			page 8


 400              		@ args = 0, pretend = 0, frame = 0
 401              		@ frame_needed = 0, uses_anonymous_args = 0
 402              		@ link register save eliminated.
 403 0000 C0F8CC10 		str	r1, [r0, #204]
 404 0004 7047     		bx	lr
 405              		.size	tc_disable_qdec_interrupt, .-tc_disable_qdec_interrupt
 406 0006 00BF     		.section	.text.tc_get_qdec_interrupt_mask,"ax",%progbits
 407              		.align	1
 408              		.p2align 2,,3
 409              		.global	tc_get_qdec_interrupt_mask
 410              		.syntax unified
 411              		.thumb
 412              		.thumb_func
 413              		.fpu softvfp
 414              		.type	tc_get_qdec_interrupt_mask, %function
 415              	tc_get_qdec_interrupt_mask:
 416              		@ args = 0, pretend = 0, frame = 0
 417              		@ frame_needed = 0, uses_anonymous_args = 0
 418              		@ link register save eliminated.
 419 0000 D0F8D000 		ldr	r0, [r0, #208]
 420 0004 7047     		bx	lr
 421              		.size	tc_get_qdec_interrupt_mask, .-tc_get_qdec_interrupt_mask
 422 0006 00BF     		.section	.text.tc_get_qdec_interrupt_status,"ax",%progbits
 423              		.align	1
 424              		.p2align 2,,3
 425              		.global	tc_get_qdec_interrupt_status
 426              		.syntax unified
 427              		.thumb
 428              		.thumb_func
 429              		.fpu softvfp
 430              		.type	tc_get_qdec_interrupt_status, %function
 431              	tc_get_qdec_interrupt_status:
 432              		@ args = 0, pretend = 0, frame = 0
 433              		@ frame_needed = 0, uses_anonymous_args = 0
 434              		@ link register save eliminated.
 435 0000 D0F8D400 		ldr	r0, [r0, #212]
 436 0004 7047     		bx	lr
 437              		.size	tc_get_qdec_interrupt_status, .-tc_get_qdec_interrupt_status
 438 0006 00BF     		.section	.text.tc_set_writeprotect,"ax",%progbits
 439              		.align	1
 440              		.p2align 2,,3
 441              		.global	tc_set_writeprotect
 442              		.syntax unified
 443              		.thumb
 444              		.thumb_func
 445              		.fpu softvfp
 446              		.type	tc_set_writeprotect, %function
 447              	tc_set_writeprotect:
 448              		@ args = 0, pretend = 0, frame = 0
 449              		@ frame_needed = 0, uses_anonymous_args = 0
 450              		@ link register save eliminated.
 451 0000 19B9     		cbnz	r1, .L39
 452 0002 044B     		ldr	r3, .L40
 453 0004 C0F8E430 		str	r3, [r0, #228]
 454 0008 7047     		bx	lr
 455              	.L39:
 456 000a 034B     		ldr	r3, .L40+4
ARM GAS  /tmp/ccQ0Uoau.s 			page 9


 457 000c C0F8E430 		str	r3, [r0, #228]
 458 0010 7047     		bx	lr
 459              	.L41:
 460 0012 00BF     		.align	2
 461              	.L40:
 462 0014 004D4954 		.word	1414089984
 463 0018 014D4954 		.word	1414089985
 464              		.size	tc_set_writeprotect, .-tc_set_writeprotect
 465              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 466              		.align	2
 467              		.type	cpu_irq_critical_section_counter, %object
 468              		.size	cpu_irq_critical_section_counter, 4
 469              	cpu_irq_critical_section_counter:
 470 0000 00000000 		.space	4
 471              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 472              		.type	cpu_irq_prev_interrupt_state, %object
 473              		.size	cpu_irq_prev_interrupt_state, 1
 474              	cpu_irq_prev_interrupt_state:
 475 0000 00       		.space	1
 476              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
