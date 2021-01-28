ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccq78A8e.s 			page 1


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
  13              		.file	"sd_mmc_mem.c"
  14              		.text
  15              		.section	.text.sd_mmc_test_unit_ready,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	sd_mmc_test_unit_ready
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	sd_mmc_test_unit_ready, %function
  24              	sd_mmc_test_unit_ready:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 38B5     		push	{r3, r4, r5, lr}
  28 0002 0546     		mov	r5, r0
  29 0004 FFF7FEFF 		bl	sd_mmc_check
  30 0008 0128     		cmp	r0, #1
  31 000a 12D0     		beq	.L7
  32 000c 07D3     		bcc	.L4
  33 000e 0228     		cmp	r0, #2
  34 0010 03D1     		bne	.L11
  35 0012 0A4B     		ldr	r3, .L12
  36 0014 0022     		movs	r2, #0
  37 0016 5A55     		strb	r2, [r3, r5]
  38 0018 38BD     		pop	{r3, r4, r5, pc}
  39              	.L11:
  40 001a 0120     		movs	r0, #1
  41 001c 38BD     		pop	{r3, r4, r5, pc}
  42              	.L4:
  43 001e 074B     		ldr	r3, .L12
  44 0020 5C5D     		ldrb	r4, [r3, r5]	@ zero_extendqisi2
  45 0022 44B9     		cbnz	r4, .L6
  46 0024 2846     		mov	r0, r5
  47 0026 FFF7FEFF 		bl	sd_mmc_get_type
  48 002a 8307     		lsls	r3, r0, #30
  49 002c 03D0     		beq	.L6
  50 002e 2046     		mov	r0, r4
  51 0030 38BD     		pop	{r3, r4, r5, pc}
  52              	.L7:
  53 0032 0320     		movs	r0, #3
  54 0034 38BD     		pop	{r3, r4, r5, pc}
  55              	.L6:
  56 0036 0220     		movs	r0, #2
  57 0038 38BD     		pop	{r3, r4, r5, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccq78A8e.s 			page 2


  58              	.L13:
  59 003a 00BF     		.align	2
  60              	.L12:
  61 003c 00000000 		.word	.LANCHOR0
  62              		.size	sd_mmc_test_unit_ready, .-sd_mmc_test_unit_ready
  63              		.section	.text.sd_mmc_test_unit_ready_0,"ax",%progbits
  64              		.align	1
  65              		.p2align 2,,3
  66              		.global	sd_mmc_test_unit_ready_0
  67              		.syntax unified
  68              		.thumb
  69              		.thumb_func
  70              		.fpu fpv4-sp-d16
  71              		.type	sd_mmc_test_unit_ready_0, %function
  72              	sd_mmc_test_unit_ready_0:
  73              		@ args = 0, pretend = 0, frame = 0
  74              		@ frame_needed = 0, uses_anonymous_args = 0
  75              		@ link register save eliminated.
  76 0000 0020     		movs	r0, #0
  77 0002 FFF7FEBF 		b	sd_mmc_test_unit_ready
  78              		.size	sd_mmc_test_unit_ready_0, .-sd_mmc_test_unit_ready_0
  79 0006 00BF     		.section	.text.sd_mmc_test_unit_ready_1,"ax",%progbits
  80              		.align	1
  81              		.p2align 2,,3
  82              		.global	sd_mmc_test_unit_ready_1
  83              		.syntax unified
  84              		.thumb
  85              		.thumb_func
  86              		.fpu fpv4-sp-d16
  87              		.type	sd_mmc_test_unit_ready_1, %function
  88              	sd_mmc_test_unit_ready_1:
  89              		@ args = 0, pretend = 0, frame = 0
  90              		@ frame_needed = 0, uses_anonymous_args = 0
  91              		@ link register save eliminated.
  92 0000 0120     		movs	r0, #1
  93 0002 FFF7FEBF 		b	sd_mmc_test_unit_ready
  94              		.size	sd_mmc_test_unit_ready_1, .-sd_mmc_test_unit_ready_1
  95 0006 00BF     		.section	.text.sd_mmc_read_capacity,"ax",%progbits
  96              		.align	1
  97              		.p2align 2,,3
  98              		.global	sd_mmc_read_capacity
  99              		.syntax unified
 100              		.thumb
 101              		.thumb_func
 102              		.fpu fpv4-sp-d16
 103              		.type	sd_mmc_read_capacity, %function
 104              	sd_mmc_read_capacity:
 105              		@ args = 0, pretend = 0, frame = 0
 106              		@ frame_needed = 0, uses_anonymous_args = 0
 107 0000 38B5     		push	{r3, r4, r5, lr}
 108 0002 0D46     		mov	r5, r1
 109 0004 0446     		mov	r4, r0
 110 0006 FFF7FEFF 		bl	sd_mmc_get_capacity
 111 000a 4000     		lsls	r0, r0, #1
 112 000c 0138     		subs	r0, r0, #1
 113 000e 2860     		str	r0, [r5]
 114 0010 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccq78A8e.s 			page 3


 115 0012 BDE83840 		pop	{r3, r4, r5, lr}
 116 0016 FFF7FEBF 		b	sd_mmc_test_unit_ready
 117              		.size	sd_mmc_read_capacity, .-sd_mmc_read_capacity
 118 001a 00BF     		.section	.text.sd_mmc_read_capacity_0,"ax",%progbits
 119              		.align	1
 120              		.p2align 2,,3
 121              		.global	sd_mmc_read_capacity_0
 122              		.syntax unified
 123              		.thumb
 124              		.thumb_func
 125              		.fpu fpv4-sp-d16
 126              		.type	sd_mmc_read_capacity_0, %function
 127              	sd_mmc_read_capacity_0:
 128              		@ args = 0, pretend = 0, frame = 0
 129              		@ frame_needed = 0, uses_anonymous_args = 0
 130              		@ link register save eliminated.
 131 0000 0146     		mov	r1, r0
 132 0002 0020     		movs	r0, #0
 133 0004 FFF7FEBF 		b	sd_mmc_read_capacity
 134              		.size	sd_mmc_read_capacity_0, .-sd_mmc_read_capacity_0
 135              		.section	.text.sd_mmc_read_capacity_1,"ax",%progbits
 136              		.align	1
 137              		.p2align 2,,3
 138              		.global	sd_mmc_read_capacity_1
 139              		.syntax unified
 140              		.thumb
 141              		.thumb_func
 142              		.fpu fpv4-sp-d16
 143              		.type	sd_mmc_read_capacity_1, %function
 144              	sd_mmc_read_capacity_1:
 145              		@ args = 0, pretend = 0, frame = 0
 146              		@ frame_needed = 0, uses_anonymous_args = 0
 147              		@ link register save eliminated.
 148 0000 0146     		mov	r1, r0
 149 0002 0120     		movs	r0, #1
 150 0004 FFF7FEBF 		b	sd_mmc_read_capacity
 151              		.size	sd_mmc_read_capacity_1, .-sd_mmc_read_capacity_1
 152              		.section	.text.sd_mmc_unload,"ax",%progbits
 153              		.align	1
 154              		.p2align 2,,3
 155              		.global	sd_mmc_unload
 156              		.syntax unified
 157              		.thumb
 158              		.thumb_func
 159              		.fpu fpv4-sp-d16
 160              		.type	sd_mmc_unload, %function
 161              	sd_mmc_unload:
 162              		@ args = 0, pretend = 0, frame = 0
 163              		@ frame_needed = 0, uses_anonymous_args = 0
 164              		@ link register save eliminated.
 165 0000 014B     		ldr	r3, .L21
 166 0002 1954     		strb	r1, [r3, r0]
 167 0004 0120     		movs	r0, #1
 168 0006 7047     		bx	lr
 169              	.L22:
 170              		.align	2
 171              	.L21:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccq78A8e.s 			page 4


 172 0008 00000000 		.word	.LANCHOR0
 173              		.size	sd_mmc_unload, .-sd_mmc_unload
 174              		.section	.text.sd_mmc_unload_0,"ax",%progbits
 175              		.align	1
 176              		.p2align 2,,3
 177              		.global	sd_mmc_unload_0
 178              		.syntax unified
 179              		.thumb
 180              		.thumb_func
 181              		.fpu fpv4-sp-d16
 182              		.type	sd_mmc_unload_0, %function
 183              	sd_mmc_unload_0:
 184              		@ args = 0, pretend = 0, frame = 0
 185              		@ frame_needed = 0, uses_anonymous_args = 0
 186              		@ link register save eliminated.
 187 0000 014B     		ldr	r3, .L24
 188 0002 1870     		strb	r0, [r3]
 189 0004 0120     		movs	r0, #1
 190 0006 7047     		bx	lr
 191              	.L25:
 192              		.align	2
 193              	.L24:
 194 0008 00000000 		.word	.LANCHOR0
 195              		.size	sd_mmc_unload_0, .-sd_mmc_unload_0
 196              		.section	.text.sd_mmc_unload_1,"ax",%progbits
 197              		.align	1
 198              		.p2align 2,,3
 199              		.global	sd_mmc_unload_1
 200              		.syntax unified
 201              		.thumb
 202              		.thumb_func
 203              		.fpu fpv4-sp-d16
 204              		.type	sd_mmc_unload_1, %function
 205              	sd_mmc_unload_1:
 206              		@ args = 0, pretend = 0, frame = 0
 207              		@ frame_needed = 0, uses_anonymous_args = 0
 208              		@ link register save eliminated.
 209 0000 014B     		ldr	r3, .L27
 210 0002 5870     		strb	r0, [r3, #1]
 211 0004 0120     		movs	r0, #1
 212 0006 7047     		bx	lr
 213              	.L28:
 214              		.align	2
 215              	.L27:
 216 0008 00000000 		.word	.LANCHOR0
 217              		.size	sd_mmc_unload_1, .-sd_mmc_unload_1
 218              		.section	.text.sd_mmc_wr_protect,"ax",%progbits
 219              		.align	1
 220              		.p2align 2,,3
 221              		.global	sd_mmc_wr_protect
 222              		.syntax unified
 223              		.thumb
 224              		.thumb_func
 225              		.fpu fpv4-sp-d16
 226              		.type	sd_mmc_wr_protect, %function
 227              	sd_mmc_wr_protect:
 228              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccq78A8e.s 			page 5


 229              		@ frame_needed = 0, uses_anonymous_args = 0
 230              		@ link register save eliminated.
 231 0000 FFF7FEBF 		b	sd_mmc_is_write_protected
 232              		.size	sd_mmc_wr_protect, .-sd_mmc_wr_protect
 233              		.section	.text.sd_mmc_wr_protect_0,"ax",%progbits
 234              		.align	1
 235              		.p2align 2,,3
 236              		.global	sd_mmc_wr_protect_0
 237              		.syntax unified
 238              		.thumb
 239              		.thumb_func
 240              		.fpu fpv4-sp-d16
 241              		.type	sd_mmc_wr_protect_0, %function
 242              	sd_mmc_wr_protect_0:
 243              		@ args = 0, pretend = 0, frame = 0
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245              		@ link register save eliminated.
 246 0000 0020     		movs	r0, #0
 247 0002 FFF7FEBF 		b	sd_mmc_is_write_protected
 248              		.size	sd_mmc_wr_protect_0, .-sd_mmc_wr_protect_0
 249 0006 00BF     		.section	.text.sd_mmc_wr_protect_1,"ax",%progbits
 250              		.align	1
 251              		.p2align 2,,3
 252              		.global	sd_mmc_wr_protect_1
 253              		.syntax unified
 254              		.thumb
 255              		.thumb_func
 256              		.fpu fpv4-sp-d16
 257              		.type	sd_mmc_wr_protect_1, %function
 258              	sd_mmc_wr_protect_1:
 259              		@ args = 0, pretend = 0, frame = 0
 260              		@ frame_needed = 0, uses_anonymous_args = 0
 261              		@ link register save eliminated.
 262 0000 0120     		movs	r0, #1
 263 0002 FFF7FEBF 		b	sd_mmc_is_write_protected
 264              		.size	sd_mmc_wr_protect_1, .-sd_mmc_wr_protect_1
 265 0006 00BF     		.section	.text.sd_mmc_removal,"ax",%progbits
 266              		.align	1
 267              		.p2align 2,,3
 268              		.global	sd_mmc_removal
 269              		.syntax unified
 270              		.thumb
 271              		.thumb_func
 272              		.fpu fpv4-sp-d16
 273              		.type	sd_mmc_removal, %function
 274              	sd_mmc_removal:
 275              		@ args = 0, pretend = 0, frame = 0
 276              		@ frame_needed = 0, uses_anonymous_args = 0
 277              		@ link register save eliminated.
 278 0000 0120     		movs	r0, #1
 279 0002 7047     		bx	lr
 280              		.size	sd_mmc_removal, .-sd_mmc_removal
 281              		.section	.text.sd_mmc_removal_0,"ax",%progbits
 282              		.align	1
 283              		.p2align 2,,3
 284              		.global	sd_mmc_removal_0
 285              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccq78A8e.s 			page 6


 286              		.thumb
 287              		.thumb_func
 288              		.fpu fpv4-sp-d16
 289              		.type	sd_mmc_removal_0, %function
 290              	sd_mmc_removal_0:
 291              		@ args = 0, pretend = 0, frame = 0
 292              		@ frame_needed = 0, uses_anonymous_args = 0
 293              		@ link register save eliminated.
 294 0000 0120     		movs	r0, #1
 295 0002 7047     		bx	lr
 296              		.size	sd_mmc_removal_0, .-sd_mmc_removal_0
 297              		.section	.text.sd_mmc_removal_1,"ax",%progbits
 298              		.align	1
 299              		.p2align 2,,3
 300              		.global	sd_mmc_removal_1
 301              		.syntax unified
 302              		.thumb
 303              		.thumb_func
 304              		.fpu fpv4-sp-d16
 305              		.type	sd_mmc_removal_1, %function
 306              	sd_mmc_removal_1:
 307              		@ args = 0, pretend = 0, frame = 0
 308              		@ frame_needed = 0, uses_anonymous_args = 0
 309              		@ link register save eliminated.
 310 0000 0120     		movs	r0, #1
 311 0002 7047     		bx	lr
 312              		.size	sd_mmc_removal_1, .-sd_mmc_removal_1
 313              		.section	.text.sd_mmc_mem_2_ram,"ax",%progbits
 314              		.align	1
 315              		.p2align 2,,3
 316              		.global	sd_mmc_mem_2_ram
 317              		.syntax unified
 318              		.thumb
 319              		.thumb_func
 320              		.fpu fpv4-sp-d16
 321              		.type	sd_mmc_mem_2_ram, %function
 322              	sd_mmc_mem_2_ram:
 323              		@ args = 0, pretend = 0, frame = 0
 324              		@ frame_needed = 0, uses_anonymous_args = 0
 325 0000 38B5     		push	{r3, r4, r5, lr}
 326 0002 9CB2     		uxth	r4, r3
 327 0004 1546     		mov	r5, r2
 328 0006 2246     		mov	r2, r4
 329 0008 FFF7FEFF 		bl	sd_mmc_init_read_blocks
 330 000c 20B1     		cbz	r0, .L37
 331 000e 0228     		cmp	r0, #2
 332 0010 0CBF     		ite	eq
 333 0012 0220     		moveq	r0, #2
 334 0014 0120     		movne	r0, #1
 335 0016 38BD     		pop	{r3, r4, r5, pc}
 336              	.L37:
 337 0018 2146     		mov	r1, r4
 338 001a 2846     		mov	r0, r5
 339 001c FFF7FEFF 		bl	sd_mmc_start_read_blocks
 340 0020 08B1     		cbz	r0, .L42
 341 0022 0120     		movs	r0, #1
 342 0024 38BD     		pop	{r3, r4, r5, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccq78A8e.s 			page 7


 343              	.L42:
 344 0026 FFF7FEFF 		bl	sd_mmc_wait_end_of_read_blocks
 345 002a 0030     		adds	r0, r0, #0
 346 002c 18BF     		it	ne
 347 002e 0120     		movne	r0, #1
 348 0030 38BD     		pop	{r3, r4, r5, pc}
 349              		.size	sd_mmc_mem_2_ram, .-sd_mmc_mem_2_ram
 350 0032 00BF     		.section	.text.sd_mmc_mem_2_ram_0,"ax",%progbits
 351              		.align	1
 352              		.p2align 2,,3
 353              		.global	sd_mmc_mem_2_ram_0
 354              		.syntax unified
 355              		.thumb
 356              		.thumb_func
 357              		.fpu fpv4-sp-d16
 358              		.type	sd_mmc_mem_2_ram_0, %function
 359              	sd_mmc_mem_2_ram_0:
 360              		@ args = 0, pretend = 0, frame = 0
 361              		@ frame_needed = 0, uses_anonymous_args = 0
 362              		@ link register save eliminated.
 363 0000 1346     		mov	r3, r2
 364 0002 0A46     		mov	r2, r1
 365 0004 0146     		mov	r1, r0
 366 0006 0020     		movs	r0, #0
 367 0008 FFF7FEBF 		b	sd_mmc_mem_2_ram
 368              		.size	sd_mmc_mem_2_ram_0, .-sd_mmc_mem_2_ram_0
 369              		.section	.text.sd_mmc_mem_2_ram_1,"ax",%progbits
 370              		.align	1
 371              		.p2align 2,,3
 372              		.global	sd_mmc_mem_2_ram_1
 373              		.syntax unified
 374              		.thumb
 375              		.thumb_func
 376              		.fpu fpv4-sp-d16
 377              		.type	sd_mmc_mem_2_ram_1, %function
 378              	sd_mmc_mem_2_ram_1:
 379              		@ args = 0, pretend = 0, frame = 0
 380              		@ frame_needed = 0, uses_anonymous_args = 0
 381              		@ link register save eliminated.
 382 0000 1346     		mov	r3, r2
 383 0002 0A46     		mov	r2, r1
 384 0004 0146     		mov	r1, r0
 385 0006 0120     		movs	r0, #1
 386 0008 FFF7FEBF 		b	sd_mmc_mem_2_ram
 387              		.size	sd_mmc_mem_2_ram_1, .-sd_mmc_mem_2_ram_1
 388              		.section	.text.sd_mmc_ram_2_mem,"ax",%progbits
 389              		.align	1
 390              		.p2align 2,,3
 391              		.global	sd_mmc_ram_2_mem
 392              		.syntax unified
 393              		.thumb
 394              		.thumb_func
 395              		.fpu fpv4-sp-d16
 396              		.type	sd_mmc_ram_2_mem, %function
 397              	sd_mmc_ram_2_mem:
 398              		@ args = 0, pretend = 0, frame = 0
 399              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccq78A8e.s 			page 8


 400 0000 38B5     		push	{r3, r4, r5, lr}
 401 0002 9CB2     		uxth	r4, r3
 402 0004 1546     		mov	r5, r2
 403 0006 2246     		mov	r2, r4
 404 0008 FFF7FEFF 		bl	sd_mmc_init_write_blocks
 405 000c 20B1     		cbz	r0, .L47
 406 000e 0228     		cmp	r0, #2
 407 0010 0CBF     		ite	eq
 408 0012 0220     		moveq	r0, #2
 409 0014 0120     		movne	r0, #1
 410 0016 38BD     		pop	{r3, r4, r5, pc}
 411              	.L47:
 412 0018 2146     		mov	r1, r4
 413 001a 2846     		mov	r0, r5
 414 001c FFF7FEFF 		bl	sd_mmc_start_write_blocks
 415 0020 08B1     		cbz	r0, .L52
 416 0022 0120     		movs	r0, #1
 417 0024 38BD     		pop	{r3, r4, r5, pc}
 418              	.L52:
 419 0026 FFF7FEFF 		bl	sd_mmc_wait_end_of_write_blocks
 420 002a 0030     		adds	r0, r0, #0
 421 002c 18BF     		it	ne
 422 002e 0120     		movne	r0, #1
 423 0030 38BD     		pop	{r3, r4, r5, pc}
 424              		.size	sd_mmc_ram_2_mem, .-sd_mmc_ram_2_mem
 425 0032 00BF     		.section	.text.sd_mmc_ram_2_mem_0,"ax",%progbits
 426              		.align	1
 427              		.p2align 2,,3
 428              		.global	sd_mmc_ram_2_mem_0
 429              		.syntax unified
 430              		.thumb
 431              		.thumb_func
 432              		.fpu fpv4-sp-d16
 433              		.type	sd_mmc_ram_2_mem_0, %function
 434              	sd_mmc_ram_2_mem_0:
 435              		@ args = 0, pretend = 0, frame = 0
 436              		@ frame_needed = 0, uses_anonymous_args = 0
 437              		@ link register save eliminated.
 438 0000 1346     		mov	r3, r2
 439 0002 0A46     		mov	r2, r1
 440 0004 0146     		mov	r1, r0
 441 0006 0020     		movs	r0, #0
 442 0008 FFF7FEBF 		b	sd_mmc_ram_2_mem
 443              		.size	sd_mmc_ram_2_mem_0, .-sd_mmc_ram_2_mem_0
 444              		.section	.text.sd_mmc_ram_2_mem_1,"ax",%progbits
 445              		.align	1
 446              		.p2align 2,,3
 447              		.global	sd_mmc_ram_2_mem_1
 448              		.syntax unified
 449              		.thumb
 450              		.thumb_func
 451              		.fpu fpv4-sp-d16
 452              		.type	sd_mmc_ram_2_mem_1, %function
 453              	sd_mmc_ram_2_mem_1:
 454              		@ args = 0, pretend = 0, frame = 0
 455              		@ frame_needed = 0, uses_anonymous_args = 0
 456              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccq78A8e.s 			page 9


 457 0000 1346     		mov	r3, r2
 458 0002 0A46     		mov	r2, r1
 459 0004 0146     		mov	r1, r0
 460 0006 0120     		movs	r0, #1
 461 0008 FFF7FEBF 		b	sd_mmc_ram_2_mem
 462              		.size	sd_mmc_ram_2_mem_1, .-sd_mmc_ram_2_mem_1
 463              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 464              		.align	2
 465              		.type	cpu_irq_critical_section_counter, %object
 466              		.size	cpu_irq_critical_section_counter, 4
 467              	cpu_irq_critical_section_counter:
 468 0000 00000000 		.space	4
 469              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 470              		.type	cpu_irq_prev_interrupt_state, %object
 471              		.size	cpu_irq_prev_interrupt_state, 1
 472              	cpu_irq_prev_interrupt_state:
 473 0000 00       		.space	1
 474              		.section	.bss.sd_mmc_ejected,"aw",%nobits
 475              		.align	2
 476              		.set	.LANCHOR0,. + 0
 477              		.type	sd_mmc_ejected, %object
 478              		.size	sd_mmc_ejected, 2
 479              	sd_mmc_ejected:
 480 0000 0000     		.space	2
 481              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
