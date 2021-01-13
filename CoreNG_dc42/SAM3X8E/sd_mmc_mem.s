ARM GAS  /tmp/ccuoghtj.s 			page 1


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
  11              		.file	"sd_mmc_mem.c"
  12              		.section	.text.sd_mmc_test_unit_ready,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	sd_mmc_test_unit_ready
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	sd_mmc_test_unit_ready, %function
  21              	sd_mmc_test_unit_ready:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 38B5     		push	{r3, r4, r5, lr}
  25 0002 0546     		mov	r5, r0
  26 0004 FFF7FEFF 		bl	sd_mmc_check
  27 0008 0128     		cmp	r0, #1
  28 000a 0DD0     		beq	.L7
  29 000c 07D3     		bcc	.L4
  30 000e 0228     		cmp	r0, #2
  31 0010 03D1     		bne	.L11
  32 0012 0022     		movs	r2, #0
  33 0014 094B     		ldr	r3, .L13
  34 0016 5A55     		strb	r2, [r3, r5]
  35 0018 38BD     		pop	{r3, r4, r5, pc}
  36              	.L11:
  37 001a 0120     		movs	r0, #1
  38 001c 38BD     		pop	{r3, r4, r5, pc}
  39              	.L4:
  40 001e 074B     		ldr	r3, .L13
  41 0020 5C5D     		ldrb	r4, [r3, r5]	@ zero_extendqisi2
  42 0022 1CB1     		cbz	r4, .L12
  43              	.L6:
  44 0024 0220     		movs	r0, #2
  45 0026 38BD     		pop	{r3, r4, r5, pc}
  46              	.L7:
  47 0028 0320     		movs	r0, #3
  48 002a 38BD     		pop	{r3, r4, r5, pc}
  49              	.L12:
  50 002c 2846     		mov	r0, r5
  51 002e FFF7FEFF 		bl	sd_mmc_get_type
  52 0032 8307     		lsls	r3, r0, #30
  53 0034 F6D0     		beq	.L6
  54 0036 2046     		mov	r0, r4
  55 0038 38BD     		pop	{r3, r4, r5, pc}
  56              	.L14:
  57 003a 00BF     		.align	2
ARM GAS  /tmp/ccuoghtj.s 			page 2


  58              	.L13:
  59 003c 00000000 		.word	.LANCHOR0
  60              		.size	sd_mmc_test_unit_ready, .-sd_mmc_test_unit_ready
  61              		.section	.text.sd_mmc_test_unit_ready_0,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.global	sd_mmc_test_unit_ready_0
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu softvfp
  69              		.type	sd_mmc_test_unit_ready_0, %function
  70              	sd_mmc_test_unit_ready_0:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73              		@ link register save eliminated.
  74 0000 0020     		movs	r0, #0
  75 0002 FFF7FEBF 		b	sd_mmc_test_unit_ready
  76              		.size	sd_mmc_test_unit_ready_0, .-sd_mmc_test_unit_ready_0
  77 0006 00BF     		.section	.text.sd_mmc_test_unit_ready_1,"ax",%progbits
  78              		.align	1
  79              		.p2align 2,,3
  80              		.global	sd_mmc_test_unit_ready_1
  81              		.syntax unified
  82              		.thumb
  83              		.thumb_func
  84              		.fpu softvfp
  85              		.type	sd_mmc_test_unit_ready_1, %function
  86              	sd_mmc_test_unit_ready_1:
  87              		@ args = 0, pretend = 0, frame = 0
  88              		@ frame_needed = 0, uses_anonymous_args = 0
  89              		@ link register save eliminated.
  90 0000 0120     		movs	r0, #1
  91 0002 FFF7FEBF 		b	sd_mmc_test_unit_ready
  92              		.size	sd_mmc_test_unit_ready_1, .-sd_mmc_test_unit_ready_1
  93 0006 00BF     		.section	.text.sd_mmc_read_capacity,"ax",%progbits
  94              		.align	1
  95              		.p2align 2,,3
  96              		.global	sd_mmc_read_capacity
  97              		.syntax unified
  98              		.thumb
  99              		.thumb_func
 100              		.fpu softvfp
 101              		.type	sd_mmc_read_capacity, %function
 102              	sd_mmc_read_capacity:
 103              		@ args = 0, pretend = 0, frame = 0
 104              		@ frame_needed = 0, uses_anonymous_args = 0
 105 0000 38B5     		push	{r3, r4, r5, lr}
 106 0002 0D46     		mov	r5, r1
 107 0004 0446     		mov	r4, r0
 108 0006 FFF7FEFF 		bl	sd_mmc_get_capacity
 109 000a 4000     		lsls	r0, r0, #1
 110 000c 0138     		subs	r0, r0, #1
 111 000e 2860     		str	r0, [r5]
 112 0010 2046     		mov	r0, r4
 113 0012 BDE83840 		pop	{r3, r4, r5, lr}
 114 0016 FFF7FEBF 		b	sd_mmc_test_unit_ready
ARM GAS  /tmp/ccuoghtj.s 			page 3


 115              		.size	sd_mmc_read_capacity, .-sd_mmc_read_capacity
 116 001a 00BF     		.section	.text.sd_mmc_read_capacity_0,"ax",%progbits
 117              		.align	1
 118              		.p2align 2,,3
 119              		.global	sd_mmc_read_capacity_0
 120              		.syntax unified
 121              		.thumb
 122              		.thumb_func
 123              		.fpu softvfp
 124              		.type	sd_mmc_read_capacity_0, %function
 125              	sd_mmc_read_capacity_0:
 126              		@ args = 0, pretend = 0, frame = 0
 127              		@ frame_needed = 0, uses_anonymous_args = 0
 128              		@ link register save eliminated.
 129 0000 0146     		mov	r1, r0
 130 0002 0020     		movs	r0, #0
 131 0004 FFF7FEBF 		b	sd_mmc_read_capacity
 132              		.size	sd_mmc_read_capacity_0, .-sd_mmc_read_capacity_0
 133              		.section	.text.sd_mmc_read_capacity_1,"ax",%progbits
 134              		.align	1
 135              		.p2align 2,,3
 136              		.global	sd_mmc_read_capacity_1
 137              		.syntax unified
 138              		.thumb
 139              		.thumb_func
 140              		.fpu softvfp
 141              		.type	sd_mmc_read_capacity_1, %function
 142              	sd_mmc_read_capacity_1:
 143              		@ args = 0, pretend = 0, frame = 0
 144              		@ frame_needed = 0, uses_anonymous_args = 0
 145              		@ link register save eliminated.
 146 0000 0146     		mov	r1, r0
 147 0002 0120     		movs	r0, #1
 148 0004 FFF7FEBF 		b	sd_mmc_read_capacity
 149              		.size	sd_mmc_read_capacity_1, .-sd_mmc_read_capacity_1
 150              		.section	.text.sd_mmc_unload,"ax",%progbits
 151              		.align	1
 152              		.p2align 2,,3
 153              		.global	sd_mmc_unload
 154              		.syntax unified
 155              		.thumb
 156              		.thumb_func
 157              		.fpu softvfp
 158              		.type	sd_mmc_unload, %function
 159              	sd_mmc_unload:
 160              		@ args = 0, pretend = 0, frame = 0
 161              		@ frame_needed = 0, uses_anonymous_args = 0
 162              		@ link register save eliminated.
 163 0000 014B     		ldr	r3, .L22
 164 0002 1954     		strb	r1, [r3, r0]
 165 0004 0120     		movs	r0, #1
 166 0006 7047     		bx	lr
 167              	.L23:
 168              		.align	2
 169              	.L22:
 170 0008 00000000 		.word	.LANCHOR0
 171              		.size	sd_mmc_unload, .-sd_mmc_unload
ARM GAS  /tmp/ccuoghtj.s 			page 4


 172              		.section	.text.sd_mmc_unload_0,"ax",%progbits
 173              		.align	1
 174              		.p2align 2,,3
 175              		.global	sd_mmc_unload_0
 176              		.syntax unified
 177              		.thumb
 178              		.thumb_func
 179              		.fpu softvfp
 180              		.type	sd_mmc_unload_0, %function
 181              	sd_mmc_unload_0:
 182              		@ args = 0, pretend = 0, frame = 0
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184              		@ link register save eliminated.
 185 0000 014B     		ldr	r3, .L25
 186 0002 1870     		strb	r0, [r3]
 187 0004 0120     		movs	r0, #1
 188 0006 7047     		bx	lr
 189              	.L26:
 190              		.align	2
 191              	.L25:
 192 0008 00000000 		.word	.LANCHOR0
 193              		.size	sd_mmc_unload_0, .-sd_mmc_unload_0
 194              		.section	.text.sd_mmc_unload_1,"ax",%progbits
 195              		.align	1
 196              		.p2align 2,,3
 197              		.global	sd_mmc_unload_1
 198              		.syntax unified
 199              		.thumb
 200              		.thumb_func
 201              		.fpu softvfp
 202              		.type	sd_mmc_unload_1, %function
 203              	sd_mmc_unload_1:
 204              		@ args = 0, pretend = 0, frame = 0
 205              		@ frame_needed = 0, uses_anonymous_args = 0
 206              		@ link register save eliminated.
 207 0000 014B     		ldr	r3, .L28
 208 0002 5870     		strb	r0, [r3, #1]
 209 0004 0120     		movs	r0, #1
 210 0006 7047     		bx	lr
 211              	.L29:
 212              		.align	2
 213              	.L28:
 214 0008 00000000 		.word	.LANCHOR0
 215              		.size	sd_mmc_unload_1, .-sd_mmc_unload_1
 216              		.section	.text.sd_mmc_wr_protect,"ax",%progbits
 217              		.align	1
 218              		.p2align 2,,3
 219              		.global	sd_mmc_wr_protect
 220              		.syntax unified
 221              		.thumb
 222              		.thumb_func
 223              		.fpu softvfp
 224              		.type	sd_mmc_wr_protect, %function
 225              	sd_mmc_wr_protect:
 226              		@ args = 0, pretend = 0, frame = 0
 227              		@ frame_needed = 0, uses_anonymous_args = 0
 228              		@ link register save eliminated.
ARM GAS  /tmp/ccuoghtj.s 			page 5


 229 0000 FFF7FEBF 		b	sd_mmc_is_write_protected
 230              		.size	sd_mmc_wr_protect, .-sd_mmc_wr_protect
 231              		.section	.text.sd_mmc_wr_protect_0,"ax",%progbits
 232              		.align	1
 233              		.p2align 2,,3
 234              		.global	sd_mmc_wr_protect_0
 235              		.syntax unified
 236              		.thumb
 237              		.thumb_func
 238              		.fpu softvfp
 239              		.type	sd_mmc_wr_protect_0, %function
 240              	sd_mmc_wr_protect_0:
 241              		@ args = 0, pretend = 0, frame = 0
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243              		@ link register save eliminated.
 244 0000 0020     		movs	r0, #0
 245 0002 FFF7FEBF 		b	sd_mmc_is_write_protected
 246              		.size	sd_mmc_wr_protect_0, .-sd_mmc_wr_protect_0
 247 0006 00BF     		.section	.text.sd_mmc_wr_protect_1,"ax",%progbits
 248              		.align	1
 249              		.p2align 2,,3
 250              		.global	sd_mmc_wr_protect_1
 251              		.syntax unified
 252              		.thumb
 253              		.thumb_func
 254              		.fpu softvfp
 255              		.type	sd_mmc_wr_protect_1, %function
 256              	sd_mmc_wr_protect_1:
 257              		@ args = 0, pretend = 0, frame = 0
 258              		@ frame_needed = 0, uses_anonymous_args = 0
 259              		@ link register save eliminated.
 260 0000 0120     		movs	r0, #1
 261 0002 FFF7FEBF 		b	sd_mmc_is_write_protected
 262              		.size	sd_mmc_wr_protect_1, .-sd_mmc_wr_protect_1
 263 0006 00BF     		.section	.text.sd_mmc_removal,"ax",%progbits
 264              		.align	1
 265              		.p2align 2,,3
 266              		.global	sd_mmc_removal
 267              		.syntax unified
 268              		.thumb
 269              		.thumb_func
 270              		.fpu softvfp
 271              		.type	sd_mmc_removal, %function
 272              	sd_mmc_removal:
 273              		@ args = 0, pretend = 0, frame = 0
 274              		@ frame_needed = 0, uses_anonymous_args = 0
 275              		@ link register save eliminated.
 276 0000 0120     		movs	r0, #1
 277 0002 7047     		bx	lr
 278              		.size	sd_mmc_removal, .-sd_mmc_removal
 279              		.section	.text.sd_mmc_removal_0,"ax",%progbits
 280              		.align	1
 281              		.p2align 2,,3
 282              		.global	sd_mmc_removal_0
 283              		.syntax unified
 284              		.thumb
 285              		.thumb_func
ARM GAS  /tmp/ccuoghtj.s 			page 6


 286              		.fpu softvfp
 287              		.type	sd_mmc_removal_0, %function
 288              	sd_mmc_removal_0:
 289              		@ args = 0, pretend = 0, frame = 0
 290              		@ frame_needed = 0, uses_anonymous_args = 0
 291              		@ link register save eliminated.
 292 0000 0120     		movs	r0, #1
 293 0002 7047     		bx	lr
 294              		.size	sd_mmc_removal_0, .-sd_mmc_removal_0
 295              		.section	.text.sd_mmc_removal_1,"ax",%progbits
 296              		.align	1
 297              		.p2align 2,,3
 298              		.global	sd_mmc_removal_1
 299              		.syntax unified
 300              		.thumb
 301              		.thumb_func
 302              		.fpu softvfp
 303              		.type	sd_mmc_removal_1, %function
 304              	sd_mmc_removal_1:
 305              		@ args = 0, pretend = 0, frame = 0
 306              		@ frame_needed = 0, uses_anonymous_args = 0
 307              		@ link register save eliminated.
 308 0000 0120     		movs	r0, #1
 309 0002 7047     		bx	lr
 310              		.size	sd_mmc_removal_1, .-sd_mmc_removal_1
 311              		.section	.text.sd_mmc_mem_2_ram,"ax",%progbits
 312              		.align	1
 313              		.p2align 2,,3
 314              		.global	sd_mmc_mem_2_ram
 315              		.syntax unified
 316              		.thumb
 317              		.thumb_func
 318              		.fpu softvfp
 319              		.type	sd_mmc_mem_2_ram, %function
 320              	sd_mmc_mem_2_ram:
 321              		@ args = 0, pretend = 0, frame = 0
 322              		@ frame_needed = 0, uses_anonymous_args = 0
 323 0000 38B5     		push	{r3, r4, r5, lr}
 324 0002 9CB2     		uxth	r4, r3
 325 0004 1546     		mov	r5, r2
 326 0006 2246     		mov	r2, r4
 327 0008 FFF7FEFF 		bl	sd_mmc_init_read_blocks
 328 000c 20B1     		cbz	r0, .L38
 329 000e 0228     		cmp	r0, #2
 330 0010 0CBF     		ite	eq
 331 0012 0220     		moveq	r0, #2
 332 0014 0120     		movne	r0, #1
 333 0016 38BD     		pop	{r3, r4, r5, pc}
 334              	.L38:
 335 0018 2146     		mov	r1, r4
 336 001a 2846     		mov	r0, r5
 337 001c FFF7FEFF 		bl	sd_mmc_start_read_blocks
 338 0020 08B1     		cbz	r0, .L43
 339 0022 0120     		movs	r0, #1
 340 0024 38BD     		pop	{r3, r4, r5, pc}
 341              	.L43:
 342 0026 FFF7FEFF 		bl	sd_mmc_wait_end_of_read_blocks
ARM GAS  /tmp/ccuoghtj.s 			page 7


 343 002a 0030     		adds	r0, r0, #0
 344 002c 18BF     		it	ne
 345 002e 0120     		movne	r0, #1
 346 0030 38BD     		pop	{r3, r4, r5, pc}
 347              		.size	sd_mmc_mem_2_ram, .-sd_mmc_mem_2_ram
 348 0032 00BF     		.section	.text.sd_mmc_mem_2_ram_0,"ax",%progbits
 349              		.align	1
 350              		.p2align 2,,3
 351              		.global	sd_mmc_mem_2_ram_0
 352              		.syntax unified
 353              		.thumb
 354              		.thumb_func
 355              		.fpu softvfp
 356              		.type	sd_mmc_mem_2_ram_0, %function
 357              	sd_mmc_mem_2_ram_0:
 358              		@ args = 0, pretend = 0, frame = 0
 359              		@ frame_needed = 0, uses_anonymous_args = 0
 360              		@ link register save eliminated.
 361 0000 1346     		mov	r3, r2
 362 0002 0A46     		mov	r2, r1
 363 0004 0146     		mov	r1, r0
 364 0006 0020     		movs	r0, #0
 365 0008 FFF7FEBF 		b	sd_mmc_mem_2_ram
 366              		.size	sd_mmc_mem_2_ram_0, .-sd_mmc_mem_2_ram_0
 367              		.section	.text.sd_mmc_mem_2_ram_1,"ax",%progbits
 368              		.align	1
 369              		.p2align 2,,3
 370              		.global	sd_mmc_mem_2_ram_1
 371              		.syntax unified
 372              		.thumb
 373              		.thumb_func
 374              		.fpu softvfp
 375              		.type	sd_mmc_mem_2_ram_1, %function
 376              	sd_mmc_mem_2_ram_1:
 377              		@ args = 0, pretend = 0, frame = 0
 378              		@ frame_needed = 0, uses_anonymous_args = 0
 379              		@ link register save eliminated.
 380 0000 1346     		mov	r3, r2
 381 0002 0A46     		mov	r2, r1
 382 0004 0146     		mov	r1, r0
 383 0006 0120     		movs	r0, #1
 384 0008 FFF7FEBF 		b	sd_mmc_mem_2_ram
 385              		.size	sd_mmc_mem_2_ram_1, .-sd_mmc_mem_2_ram_1
 386              		.section	.text.sd_mmc_ram_2_mem,"ax",%progbits
 387              		.align	1
 388              		.p2align 2,,3
 389              		.global	sd_mmc_ram_2_mem
 390              		.syntax unified
 391              		.thumb
 392              		.thumb_func
 393              		.fpu softvfp
 394              		.type	sd_mmc_ram_2_mem, %function
 395              	sd_mmc_ram_2_mem:
 396              		@ args = 0, pretend = 0, frame = 0
 397              		@ frame_needed = 0, uses_anonymous_args = 0
 398 0000 38B5     		push	{r3, r4, r5, lr}
 399 0002 9CB2     		uxth	r4, r3
ARM GAS  /tmp/ccuoghtj.s 			page 8


 400 0004 1546     		mov	r5, r2
 401 0006 2246     		mov	r2, r4
 402 0008 FFF7FEFF 		bl	sd_mmc_init_write_blocks
 403 000c 20B1     		cbz	r0, .L48
 404 000e 0228     		cmp	r0, #2
 405 0010 0CBF     		ite	eq
 406 0012 0220     		moveq	r0, #2
 407 0014 0120     		movne	r0, #1
 408 0016 38BD     		pop	{r3, r4, r5, pc}
 409              	.L48:
 410 0018 2146     		mov	r1, r4
 411 001a 2846     		mov	r0, r5
 412 001c FFF7FEFF 		bl	sd_mmc_start_write_blocks
 413 0020 08B1     		cbz	r0, .L53
 414 0022 0120     		movs	r0, #1
 415 0024 38BD     		pop	{r3, r4, r5, pc}
 416              	.L53:
 417 0026 FFF7FEFF 		bl	sd_mmc_wait_end_of_write_blocks
 418 002a 0030     		adds	r0, r0, #0
 419 002c 18BF     		it	ne
 420 002e 0120     		movne	r0, #1
 421 0030 38BD     		pop	{r3, r4, r5, pc}
 422              		.size	sd_mmc_ram_2_mem, .-sd_mmc_ram_2_mem
 423 0032 00BF     		.section	.text.sd_mmc_ram_2_mem_0,"ax",%progbits
 424              		.align	1
 425              		.p2align 2,,3
 426              		.global	sd_mmc_ram_2_mem_0
 427              		.syntax unified
 428              		.thumb
 429              		.thumb_func
 430              		.fpu softvfp
 431              		.type	sd_mmc_ram_2_mem_0, %function
 432              	sd_mmc_ram_2_mem_0:
 433              		@ args = 0, pretend = 0, frame = 0
 434              		@ frame_needed = 0, uses_anonymous_args = 0
 435              		@ link register save eliminated.
 436 0000 1346     		mov	r3, r2
 437 0002 0A46     		mov	r2, r1
 438 0004 0146     		mov	r1, r0
 439 0006 0020     		movs	r0, #0
 440 0008 FFF7FEBF 		b	sd_mmc_ram_2_mem
 441              		.size	sd_mmc_ram_2_mem_0, .-sd_mmc_ram_2_mem_0
 442              		.section	.text.sd_mmc_ram_2_mem_1,"ax",%progbits
 443              		.align	1
 444              		.p2align 2,,3
 445              		.global	sd_mmc_ram_2_mem_1
 446              		.syntax unified
 447              		.thumb
 448              		.thumb_func
 449              		.fpu softvfp
 450              		.type	sd_mmc_ram_2_mem_1, %function
 451              	sd_mmc_ram_2_mem_1:
 452              		@ args = 0, pretend = 0, frame = 0
 453              		@ frame_needed = 0, uses_anonymous_args = 0
 454              		@ link register save eliminated.
 455 0000 1346     		mov	r3, r2
 456 0002 0A46     		mov	r2, r1
ARM GAS  /tmp/ccuoghtj.s 			page 9


 457 0004 0146     		mov	r1, r0
 458 0006 0120     		movs	r0, #1
 459 0008 FFF7FEBF 		b	sd_mmc_ram_2_mem
 460              		.size	sd_mmc_ram_2_mem_1, .-sd_mmc_ram_2_mem_1
 461              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 462              		.align	2
 463              		.type	cpu_irq_critical_section_counter, %object
 464              		.size	cpu_irq_critical_section_counter, 4
 465              	cpu_irq_critical_section_counter:
 466 0000 00000000 		.space	4
 467              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 468              		.type	cpu_irq_prev_interrupt_state, %object
 469              		.size	cpu_irq_prev_interrupt_state, 1
 470              	cpu_irq_prev_interrupt_state:
 471 0000 00       		.space	1
 472              		.section	.bss.sd_mmc_ejected,"aw",%nobits
 473              		.align	2
 474              		.set	.LANCHOR0,. + 0
 475              		.type	sd_mmc_ejected, %object
 476              		.size	sd_mmc_ejected, 2
 477              	sd_mmc_ejected:
 478 0000 0000     		.space	2
 479              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
