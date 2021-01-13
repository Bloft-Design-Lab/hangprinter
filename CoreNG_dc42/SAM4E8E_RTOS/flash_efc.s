ARM GAS  /tmp/cc7Tody3.s 			page 1


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
  13              		.file	"flash_efc.c"
  14              		.section	.text.flash_init,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	flash_init
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	flash_init, %function
  23              	flash_init:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 08B5     		push	{r3, lr}
  27 0002 0A46     		mov	r2, r1
  28 0004 0146     		mov	r1, r0
  29 0006 0248     		ldr	r0, .L3
  30 0008 FFF7FEFF 		bl	efc_init
  31 000c 0020     		movs	r0, #0
  32 000e 08BD     		pop	{r3, pc}
  33              	.L4:
  34              		.align	2
  35              	.L3:
  36 0010 000A0E40 		.word	1074661888
  37              		.size	flash_init, .-flash_init
  38              		.section	.text.flash_set_wait_state,"ax",%progbits
  39              		.align	1
  40              		.p2align 2,,3
  41              		.global	flash_set_wait_state
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu fpv4-sp-d16
  46              		.type	flash_set_wait_state, %function
  47              	flash_set_wait_state:
  48              		@ args = 0, pretend = 0, frame = 0
  49              		@ frame_needed = 0, uses_anonymous_args = 0
  50 0000 08B5     		push	{r3, lr}
  51 0002 0248     		ldr	r0, .L7
  52 0004 FFF7FEFF 		bl	efc_set_wait_state
  53 0008 0020     		movs	r0, #0
  54 000a 08BD     		pop	{r3, pc}
  55              	.L8:
  56              		.align	2
  57              	.L7:
ARM GAS  /tmp/cc7Tody3.s 			page 2


  58 000c 000A0E40 		.word	1074661888
  59              		.size	flash_set_wait_state, .-flash_set_wait_state
  60              		.section	.text.flash_set_wait_state_adaptively,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.global	flash_set_wait_state_adaptively
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu fpv4-sp-d16
  68              		.type	flash_set_wait_state_adaptively, %function
  69              	flash_set_wait_state_adaptively:
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72 0000 08B5     		push	{r3, lr}
  73 0002 0521     		movs	r1, #5
  74 0004 0248     		ldr	r0, .L11
  75 0006 FFF7FEFF 		bl	efc_set_wait_state
  76 000a 0020     		movs	r0, #0
  77 000c 08BD     		pop	{r3, pc}
  78              	.L12:
  79 000e 00BF     		.align	2
  80              	.L11:
  81 0010 000A0E40 		.word	1074661888
  82              		.size	flash_set_wait_state_adaptively, .-flash_set_wait_state_adaptively
  83              		.section	.text.flash_get_wait_state,"ax",%progbits
  84              		.align	1
  85              		.p2align 2,,3
  86              		.global	flash_get_wait_state
  87              		.syntax unified
  88              		.thumb
  89              		.thumb_func
  90              		.fpu fpv4-sp-d16
  91              		.type	flash_get_wait_state, %function
  92              	flash_get_wait_state:
  93              		@ args = 0, pretend = 0, frame = 0
  94              		@ frame_needed = 0, uses_anonymous_args = 0
  95              		@ link register save eliminated.
  96 0000 0148     		ldr	r0, .L14
  97 0002 FFF7FEBF 		b	efc_get_wait_state
  98              	.L15:
  99 0006 00BF     		.align	2
 100              	.L14:
 101 0008 000A0E40 		.word	1074661888
 102              		.size	flash_get_wait_state, .-flash_get_wait_state
 103              		.section	.text.flash_get_descriptor,"ax",%progbits
 104              		.align	1
 105              		.p2align 2,,3
 106              		.global	flash_get_descriptor
 107              		.syntax unified
 108              		.thumb
 109              		.thumb_func
 110              		.fpu fpv4-sp-d16
 111              		.type	flash_get_descriptor, %function
 112              	flash_get_descriptor:
 113              		@ args = 0, pretend = 0, frame = 0
 114              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cc7Tody3.s 			page 3


 115 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 116 0002 1646     		mov	r6, r2
 117 0004 0022     		movs	r2, #0
 118 0006 0D46     		mov	r5, r1
 119 0008 0A48     		ldr	r0, .L26
 120 000a 1146     		mov	r1, r2
 121 000c FFF7FEFF 		bl	efc_perform_command
 122 0010 68B9     		cbnz	r0, .L19
 123 0012 0446     		mov	r4, r0
 124 0014 074F     		ldr	r7, .L26
 125 0016 03E0     		b	.L18
 126              	.L25:
 127 0018 38B1     		cbz	r0, .L16
 128 001a 45F8040B 		str	r0, [r5], #4
 129 001e 0134     		adds	r4, r4, #1
 130              	.L18:
 131 0020 3846     		mov	r0, r7
 132 0022 FFF7FEFF 		bl	efc_get_result
 133 0026 B442     		cmp	r4, r6
 134 0028 F6D1     		bne	.L25
 135              	.L16:
 136 002a 2046     		mov	r0, r4
 137 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 138              	.L19:
 139 002e 0024     		movs	r4, #0
 140 0030 2046     		mov	r0, r4
 141 0032 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 142              	.L27:
 143              		.align	2
 144              	.L26:
 145 0034 000A0E40 		.word	1074661888
 146              		.size	flash_get_descriptor, .-flash_get_descriptor
 147              		.section	.text.flash_get_page_count,"ax",%progbits
 148              		.align	1
 149              		.p2align 2,,3
 150              		.global	flash_get_page_count
 151              		.syntax unified
 152              		.thumb
 153              		.thumb_func
 154              		.fpu fpv4-sp-d16
 155              		.type	flash_get_page_count, %function
 156              	flash_get_page_count:
 157              		@ args = 0, pretend = 0, frame = 0
 158              		@ frame_needed = 0, uses_anonymous_args = 0
 159              		@ link register save eliminated.
 160 0000 4268     		ldr	r2, [r0, #4]
 161 0002 8068     		ldr	r0, [r0, #8]
 162 0004 B2FBF0F0 		udiv	r0, r2, r0
 163 0008 7047     		bx	lr
 164              		.size	flash_get_page_count, .-flash_get_page_count
 165 000a 00BF     		.section	.text.flash_get_page_count_per_region,"ax",%progbits
 166              		.align	1
 167              		.p2align 2,,3
 168              		.global	flash_get_page_count_per_region
 169              		.syntax unified
 170              		.thumb
 171              		.thumb_func
ARM GAS  /tmp/cc7Tody3.s 			page 4


 172              		.fpu fpv4-sp-d16
 173              		.type	flash_get_page_count_per_region, %function
 174              	flash_get_page_count_per_region:
 175              		@ args = 0, pretend = 0, frame = 0
 176              		@ frame_needed = 0, uses_anonymous_args = 0
 177              		@ link register save eliminated.
 178 0000 0269     		ldr	r2, [r0, #16]
 179 0002 8068     		ldr	r0, [r0, #8]
 180 0004 B2FBF0F0 		udiv	r0, r2, r0
 181 0008 7047     		bx	lr
 182              		.size	flash_get_page_count_per_region, .-flash_get_page_count_per_region
 183 000a 00BF     		.section	.text.flash_get_region_count,"ax",%progbits
 184              		.align	1
 185              		.p2align 2,,3
 186              		.global	flash_get_region_count
 187              		.syntax unified
 188              		.thumb
 189              		.thumb_func
 190              		.fpu fpv4-sp-d16
 191              		.type	flash_get_region_count, %function
 192              	flash_get_region_count:
 193              		@ args = 0, pretend = 0, frame = 0
 194              		@ frame_needed = 0, uses_anonymous_args = 0
 195              		@ link register save eliminated.
 196 0000 C068     		ldr	r0, [r0, #12]
 197 0002 7047     		bx	lr
 198              		.size	flash_get_region_count, .-flash_get_region_count
 199              		.section	.text.flash_erase_all,"ax",%progbits
 200              		.align	1
 201              		.p2align 2,,3
 202              		.global	flash_erase_all
 203              		.syntax unified
 204              		.thumb
 205              		.thumb_func
 206              		.fpu fpv4-sp-d16
 207              		.type	flash_erase_all, %function
 208              	flash_erase_all:
 209              		@ args = 0, pretend = 0, frame = 0
 210              		@ frame_needed = 0, uses_anonymous_args = 0
 211 0000 08B5     		push	{r3, lr}
 212 0002 0022     		movs	r2, #0
 213 0004 0521     		movs	r1, #5
 214 0006 0448     		ldr	r0, .L35
 215 0008 FFF7FEFF 		bl	efc_perform_command
 216 000c 0028     		cmp	r0, #0
 217 000e 14BF     		ite	ne
 218 0010 1020     		movne	r0, #16
 219 0012 0020     		moveq	r0, #0
 220 0014 08BD     		pop	{r3, pc}
 221              	.L36:
 222 0016 00BF     		.align	2
 223              	.L35:
 224 0018 000A0E40 		.word	1074661888
 225              		.size	flash_erase_all, .-flash_erase_all
 226              		.section	.text.flash_erase_page,"ax",%progbits
 227              		.align	1
 228              		.p2align 2,,3
ARM GAS  /tmp/cc7Tody3.s 			page 5


 229              		.global	flash_erase_page
 230              		.syntax unified
 231              		.thumb
 232              		.thumb_func
 233              		.fpu fpv4-sp-d16
 234              		.type	flash_erase_page, %function
 235              	flash_erase_page:
 236              		@ args = 0, pretend = 0, frame = 0
 237              		@ frame_needed = 0, uses_anonymous_args = 0
 238 0000 0329     		cmp	r1, #3
 239 0002 01D9     		bls	.L46
 240 0004 1120     		movs	r0, #17
 241 0006 7047     		bx	lr
 242              	.L46:
 243 0008 08B5     		push	{r3, lr}
 244 000a C0F30803 		ubfx	r3, r0, #0, #9
 245 000e 0BB1     		cbz	r3, .L47
 246 0010 1120     		movs	r0, #17
 247 0012 08BD     		pop	{r3, pc}
 248              	.L47:
 249 0014 A0F58002 		sub	r2, r0, #4194304
 250 0018 C2F34F22 		ubfx	r2, r2, #9, #16
 251 001c 0A43     		orrs	r2, r2, r1
 252 001e 0448     		ldr	r0, .L48
 253 0020 0721     		movs	r1, #7
 254 0022 FFF7FEFF 		bl	efc_perform_command
 255 0026 0028     		cmp	r0, #0
 256 0028 14BF     		ite	ne
 257 002a 1020     		movne	r0, #16
 258 002c 0020     		moveq	r0, #0
 259 002e 08BD     		pop	{r3, pc}
 260              	.L49:
 261              		.align	2
 262              	.L48:
 263 0030 000A0E40 		.word	1074661888
 264              		.size	flash_erase_page, .-flash_erase_page
 265              		.section	.text.flash_erase_sector,"ax",%progbits
 266              		.align	1
 267              		.p2align 2,,3
 268              		.global	flash_erase_sector
 269              		.syntax unified
 270              		.thumb
 271              		.thumb_func
 272              		.fpu fpv4-sp-d16
 273              		.type	flash_erase_sector, %function
 274              	flash_erase_sector:
 275              		@ args = 0, pretend = 0, frame = 0
 276              		@ frame_needed = 0, uses_anonymous_args = 0
 277 0000 08B5     		push	{r3, lr}
 278 0002 A0F58002 		sub	r2, r0, #4194304
 279 0006 C2F34F22 		ubfx	r2, r2, #9, #16
 280 000a 1121     		movs	r1, #17
 281 000c 0348     		ldr	r0, .L54
 282 000e FFF7FEFF 		bl	efc_perform_command
 283 0012 0028     		cmp	r0, #0
 284 0014 14BF     		ite	ne
 285 0016 1020     		movne	r0, #16
ARM GAS  /tmp/cc7Tody3.s 			page 6


 286 0018 0020     		moveq	r0, #0
 287 001a 08BD     		pop	{r3, pc}
 288              	.L55:
 289              		.align	2
 290              	.L54:
 291 001c 000A0E40 		.word	1074661888
 292              		.size	flash_erase_sector, .-flash_erase_sector
 293              		.section	.text.flash_write,"ax",%progbits
 294              		.align	1
 295              		.p2align 2,,3
 296              		.global	flash_write
 297              		.syntax unified
 298              		.thumb
 299              		.thumb_func
 300              		.fpu fpv4-sp-d16
 301              		.type	flash_write, %function
 302              	flash_write:
 303              		@ args = 0, pretend = 0, frame = 8
 304              		@ frame_needed = 0, uses_anonymous_args = 0
 305 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 306 0004 83B0     		sub	sp, sp, #12
 307 0006 A0F58008 		sub	r8, r0, #4194304
 308 000a 0193     		str	r3, [sp, #4]
 309 000c C8F34F28 		ubfx	r8, r8, #9, #16
 310 0010 C0F30806 		ubfx	r6, r0, #0, #9
 311 0014 002A     		cmp	r2, #0
 312 0016 3DD0     		beq	.L63
 313 0018 DFF88CB0 		ldr	fp, .L68
 314 001c 8A46     		mov	r10, r1
 315 001e 9146     		mov	r9, r2
 316 0020 0BF5FE75 		add	r5, fp, #508
 317              	.L62:
 318 0024 C6F50073 		rsb	r3, r6, #512
 319 0028 08F50054 		add	r4, r8, #8192
 320 002c 4B45     		cmp	r3, r9
 321 002e 4FEA4424 		lsl	r4, r4, #9
 322 0032 1F46     		mov	r7, r3
 323 0034 2146     		mov	r1, r4
 324 0036 28BF     		it	cs
 325 0038 4F46     		movcs	r7, r9
 326 003a 3246     		mov	r2, r6
 327 003c 1A48     		ldr	r0, .L68
 328 003e 0093     		str	r3, [sp]
 329 0040 FFF7FEFF 		bl	memcpy
 330 0044 3A46     		mov	r2, r7
 331 0046 5146     		mov	r1, r10
 332 0048 0BEB0600 		add	r0, fp, r6
 333 004c FFF7FEFF 		bl	memcpy
 334 0050 009B     		ldr	r3, [sp]
 335 0052 3919     		adds	r1, r7, r4
 336 0054 DB1B     		subs	r3, r3, r7
 337 0056 F019     		adds	r0, r6, r7
 338 0058 9AB2     		uxth	r2, r3
 339 005a 5844     		add	r0, r0, fp
 340 005c 3144     		add	r1, r1, r6
 341 005e FFF7FEFF 		bl	memcpy
 342 0062 124B     		ldr	r3, .L68+4
ARM GAS  /tmp/cc7Tody3.s 			page 7


 343 0064 043C     		subs	r4, r4, #4
 344              	.L59:
 345 0066 53F8042F 		ldr	r2, [r3, #4]!
 346 006a 44F8042F 		str	r2, [r4, #4]!
 347 006e 9D42     		cmp	r5, r3
 348 0070 F9D1     		bne	.L59
 349 0072 019B     		ldr	r3, [sp, #4]
 350 0074 4246     		mov	r2, r8
 351 0076 8BB1     		cbz	r3, .L60
 352 0078 0321     		movs	r1, #3
 353 007a 0D48     		ldr	r0, .L68+8
 354 007c FFF7FEFF 		bl	efc_perform_command
 355              	.L61:
 356 0080 48B9     		cbnz	r0, .L56
 357 0082 08F10108 		add	r8, r8, #1
 358 0086 B9EB0709 		subs	r9, r9, r7
 359 008a 1FFA88F8 		uxth	r8, r8
 360 008e BA44     		add	r10, r10, r7
 361 0090 0646     		mov	r6, r0
 362 0092 C7D1     		bne	.L62
 363              	.L63:
 364 0094 0020     		movs	r0, #0
 365              	.L56:
 366 0096 03B0     		add	sp, sp, #12
 367              		@ sp needed
 368 0098 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 369              	.L60:
 370 009c 0121     		movs	r1, #1
 371 009e 0448     		ldr	r0, .L68+8
 372 00a0 FFF7FEFF 		bl	efc_perform_command
 373 00a4 ECE7     		b	.L61
 374              	.L69:
 375 00a6 00BF     		.align	2
 376              	.L68:
 377 00a8 00000000 		.word	.LANCHOR0
 378 00ac FCFFFFFF 		.word	.LANCHOR0-4
 379 00b0 000A0E40 		.word	1074661888
 380              		.size	flash_write, .-flash_write
 381              		.section	.text.flash_lock,"ax",%progbits
 382              		.align	1
 383              		.p2align 2,,3
 384              		.global	flash_lock
 385              		.syntax unified
 386              		.thumb
 387              		.thumb_func
 388              		.fpu fpv4-sp-d16
 389              		.type	flash_lock, %function
 390              	flash_lock:
 391              		@ args = 0, pretend = 0, frame = 0
 392              		@ frame_needed = 0, uses_anonymous_args = 0
 393 0000 70B5     		push	{r4, r5, r6, lr}
 394 0002 124C     		ldr	r4, .L86
 395 0004 2140     		ands	r1, r1, r4
 396 0006 01F5FF55 		add	r5, r1, #8160
 397 000a 0440     		ands	r4, r4, r0
 398 000c 1F35     		adds	r5, r5, #31
 399 000e 02B1     		cbz	r2, .L71
ARM GAS  /tmp/cc7Tody3.s 			page 8


 400 0010 1460     		str	r4, [r2]
 401              	.L71:
 402 0012 03B1     		cbz	r3, .L72
 403 0014 1D60     		str	r5, [r3]
 404              	.L72:
 405 0016 0E4D     		ldr	r5, .L86+4
 406 0018 A4F58004 		sub	r4, r4, #4194304
 407 001c 640A     		lsrs	r4, r4, #9
 408 001e 0D44     		add	r5, r5, r1
 409 0020 A4B2     		uxth	r4, r4
 410 0022 C5F34F25 		ubfx	r5, r5, #9, #16
 411 0026 A542     		cmp	r5, r4
 412 0028 0DD9     		bls	.L76
 413 002a 0A4E     		ldr	r6, .L86+8
 414 002c 01E0     		b	.L75
 415              	.L85:
 416 002e AC42     		cmp	r4, r5
 417 0030 09D2     		bcs	.L76
 418              	.L75:
 419 0032 2246     		mov	r2, r4
 420 0034 0821     		movs	r1, #8
 421 0036 3046     		mov	r0, r6
 422 0038 FFF7FEFF 		bl	efc_perform_command
 423 003c 1034     		adds	r4, r4, #16
 424 003e A4B2     		uxth	r4, r4
 425 0040 0028     		cmp	r0, #0
 426 0042 F4D0     		beq	.L85
 427 0044 70BD     		pop	{r4, r5, r6, pc}
 428              	.L76:
 429 0046 0020     		movs	r0, #0
 430 0048 70BD     		pop	{r4, r5, r6, pc}
 431              	.L87:
 432 004a 00BF     		.align	2
 433              	.L86:
 434 004c 00E0FFFF 		.word	-8192
 435 0050 FF1FC0FF 		.word	-4186113
 436 0054 000A0E40 		.word	1074661888
 437              		.size	flash_lock, .-flash_lock
 438              		.section	.text.flash_unlock,"ax",%progbits
 439              		.align	1
 440              		.p2align 2,,3
 441              		.global	flash_unlock
 442              		.syntax unified
 443              		.thumb
 444              		.thumb_func
 445              		.fpu fpv4-sp-d16
 446              		.type	flash_unlock, %function
 447              	flash_unlock:
 448              		@ args = 0, pretend = 0, frame = 0
 449              		@ frame_needed = 0, uses_anonymous_args = 0
 450 0000 70B5     		push	{r4, r5, r6, lr}
 451 0002 124C     		ldr	r4, .L104
 452 0004 2140     		ands	r1, r1, r4
 453 0006 01F5FF55 		add	r5, r1, #8160
 454 000a 0440     		ands	r4, r4, r0
 455 000c 1F35     		adds	r5, r5, #31
 456 000e 02B1     		cbz	r2, .L89
ARM GAS  /tmp/cc7Tody3.s 			page 9


 457 0010 1460     		str	r4, [r2]
 458              	.L89:
 459 0012 03B1     		cbz	r3, .L90
 460 0014 1D60     		str	r5, [r3]
 461              	.L90:
 462 0016 0E4D     		ldr	r5, .L104+4
 463 0018 A4F58004 		sub	r4, r4, #4194304
 464 001c 640A     		lsrs	r4, r4, #9
 465 001e 0D44     		add	r5, r5, r1
 466 0020 A4B2     		uxth	r4, r4
 467 0022 C5F34F25 		ubfx	r5, r5, #9, #16
 468 0026 A542     		cmp	r5, r4
 469 0028 0DD9     		bls	.L94
 470 002a 0A4E     		ldr	r6, .L104+8
 471 002c 01E0     		b	.L93
 472              	.L103:
 473 002e AC42     		cmp	r4, r5
 474 0030 09D2     		bcs	.L94
 475              	.L93:
 476 0032 2246     		mov	r2, r4
 477 0034 0921     		movs	r1, #9
 478 0036 3046     		mov	r0, r6
 479 0038 FFF7FEFF 		bl	efc_perform_command
 480 003c 1034     		adds	r4, r4, #16
 481 003e A4B2     		uxth	r4, r4
 482 0040 0028     		cmp	r0, #0
 483 0042 F4D0     		beq	.L103
 484 0044 70BD     		pop	{r4, r5, r6, pc}
 485              	.L94:
 486 0046 0020     		movs	r0, #0
 487 0048 70BD     		pop	{r4, r5, r6, pc}
 488              	.L105:
 489 004a 00BF     		.align	2
 490              	.L104:
 491 004c 00E0FFFF 		.word	-8192
 492 0050 FF1FC0FF 		.word	-4186113
 493 0054 000A0E40 		.word	1074661888
 494              		.size	flash_unlock, .-flash_unlock
 495              		.section	.text.flash_is_locked,"ax",%progbits
 496              		.align	1
 497              		.p2align 2,,3
 498              		.global	flash_is_locked
 499              		.syntax unified
 500              		.thumb
 501              		.thumb_func
 502              		.fpu fpv4-sp-d16
 503              		.type	flash_is_locked, %function
 504              	flash_is_locked:
 505              		@ args = 0, pretend = 0, frame = 0
 506              		@ frame_needed = 0, uses_anonymous_args = 0
 507 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 508 0004 0022     		movs	r2, #0
 509 0006 0446     		mov	r4, r0
 510 0008 0F46     		mov	r7, r1
 511 000a 1D48     		ldr	r0, .L121
 512 000c 0A21     		movs	r1, #10
 513 000e FFF7FEFF 		bl	efc_perform_command
ARM GAS  /tmp/cc7Tody3.s 			page 10


 514 0012 0546     		mov	r5, r0
 515 0014 10B1     		cbz	r0, .L119
 516              	.L106:
 517 0016 2846     		mov	r0, r5
 518 0018 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 519              	.L119:
 520 001c 1848     		ldr	r0, .L121
 521 001e C4F34734 		ubfx	r4, r4, #13, #8
 522 0022 8046     		mov	r8, r0
 523 0024 2026     		movs	r6, #32
 524 0026 FFF7FEFF 		bl	efc_get_result
 525 002a 04E0     		b	.L108
 526              	.L109:
 527 002c 4046     		mov	r0, r8
 528 002e 2035     		adds	r5, r5, #32
 529 0030 2036     		adds	r6, r6, #32
 530 0032 FFF7FEFF 		bl	efc_get_result
 531              	.L108:
 532 0036 AC42     		cmp	r4, r5
 533 0038 F8D3     		bcc	.L109
 534 003a B442     		cmp	r4, r6
 535 003c F6D2     		bcs	.L109
 536 003e C7F34737 		ubfx	r7, r7, #13, #8
 537 0042 3F1B     		subs	r7, r7, r4
 538 0044 631B     		subs	r3, r4, r5
 539 0046 7C1C     		adds	r4, r7, #1
 540 0048 17D0     		beq	.L113
 541 004a 0D4F     		ldr	r7, .L121
 542 004c 0025     		movs	r5, #0
 543 004e 0126     		movs	r6, #1
 544              	.L112:
 545 0050 06FA03F2 		lsl	r2, r6, r3
 546 0054 0242     		tst	r2, r0
 547 0056 03F10103 		add	r3, r3, #1
 548 005a 18BF     		it	ne
 549 005c 0135     		addne	r5, r5, #1
 550 005e 202B     		cmp	r3, #32
 551 0060 04F1FF34 		add	r4, r4, #-1
 552 0064 02D0     		beq	.L120
 553 0066 002C     		cmp	r4, #0
 554 0068 F2D1     		bne	.L112
 555 006a D4E7     		b	.L106
 556              	.L120:
 557 006c 3846     		mov	r0, r7
 558 006e FFF7FEFF 		bl	efc_get_result
 559 0072 0023     		movs	r3, #0
 560 0074 002C     		cmp	r4, #0
 561 0076 EBD1     		bne	.L112
 562 0078 CDE7     		b	.L106
 563              	.L113:
 564 007a 2546     		mov	r5, r4
 565 007c CBE7     		b	.L106
 566              	.L122:
 567 007e 00BF     		.align	2
 568              	.L121:
 569 0080 000A0E40 		.word	1074661888
 570              		.size	flash_is_locked, .-flash_is_locked
ARM GAS  /tmp/cc7Tody3.s 			page 11


 571              		.section	.text.flash_is_gpnvm_set,"ax",%progbits
 572              		.align	1
 573              		.p2align 2,,3
 574              		.global	flash_is_gpnvm_set
 575              		.syntax unified
 576              		.thumb
 577              		.thumb_func
 578              		.fpu fpv4-sp-d16
 579              		.type	flash_is_gpnvm_set, %function
 580              	flash_is_gpnvm_set:
 581              		@ args = 0, pretend = 0, frame = 0
 582              		@ frame_needed = 0, uses_anonymous_args = 0
 583 0000 0128     		cmp	r0, #1
 584 0002 01D9     		bls	.L131
 585 0004 1120     		movs	r0, #17
 586 0006 7047     		bx	lr
 587              	.L131:
 588 0008 10B5     		push	{r4, lr}
 589 000a 0022     		movs	r2, #0
 590 000c 0446     		mov	r4, r0
 591 000e 0D21     		movs	r1, #13
 592 0010 0848     		ldr	r0, .L133
 593 0012 FFF7FEFF 		bl	efc_perform_command
 594 0016 08B1     		cbz	r0, .L132
 595 0018 1020     		movs	r0, #16
 596 001a 10BD     		pop	{r4, pc}
 597              	.L132:
 598 001c 0548     		ldr	r0, .L133
 599 001e FFF7FEFF 		bl	efc_get_result
 600 0022 0123     		movs	r3, #1
 601 0024 03FA04F4 		lsl	r4, r3, r4
 602 0028 0442     		tst	r4, r0
 603 002a 14BF     		ite	ne
 604 002c 1846     		movne	r0, r3
 605 002e 0020     		moveq	r0, #0
 606 0030 10BD     		pop	{r4, pc}
 607              	.L134:
 608 0032 00BF     		.align	2
 609              	.L133:
 610 0034 000A0E40 		.word	1074661888
 611              		.size	flash_is_gpnvm_set, .-flash_is_gpnvm_set
 612              		.section	.text.flash_set_gpnvm,"ax",%progbits
 613              		.align	1
 614              		.p2align 2,,3
 615              		.global	flash_set_gpnvm
 616              		.syntax unified
 617              		.thumb
 618              		.thumb_func
 619              		.fpu fpv4-sp-d16
 620              		.type	flash_set_gpnvm, %function
 621              	flash_set_gpnvm:
 622              		@ args = 0, pretend = 0, frame = 0
 623              		@ frame_needed = 0, uses_anonymous_args = 0
 624 0000 0128     		cmp	r0, #1
 625 0002 01D9     		bls	.L147
 626 0004 1120     		movs	r0, #17
 627 0006 7047     		bx	lr
ARM GAS  /tmp/cc7Tody3.s 			page 12


 628              	.L147:
 629 0008 10B5     		push	{r4, lr}
 630 000a 0446     		mov	r4, r0
 631 000c FFF7FEFF 		bl	flash_is_gpnvm_set
 632 0010 0128     		cmp	r0, #1
 633 0012 07D0     		beq	.L138
 634 0014 2246     		mov	r2, r4
 635 0016 0B21     		movs	r1, #11
 636 0018 0348     		ldr	r0, .L148
 637 001a FFF7FEFF 		bl	efc_perform_command
 638 001e 08B1     		cbz	r0, .L138
 639 0020 1020     		movs	r0, #16
 640 0022 10BD     		pop	{r4, pc}
 641              	.L138:
 642 0024 0020     		movs	r0, #0
 643 0026 10BD     		pop	{r4, pc}
 644              	.L149:
 645              		.align	2
 646              	.L148:
 647 0028 000A0E40 		.word	1074661888
 648              		.size	flash_set_gpnvm, .-flash_set_gpnvm
 649              		.section	.text.flash_clear_gpnvm,"ax",%progbits
 650              		.align	1
 651              		.p2align 2,,3
 652              		.global	flash_clear_gpnvm
 653              		.syntax unified
 654              		.thumb
 655              		.thumb_func
 656              		.fpu fpv4-sp-d16
 657              		.type	flash_clear_gpnvm, %function
 658              	flash_clear_gpnvm:
 659              		@ args = 0, pretend = 0, frame = 0
 660              		@ frame_needed = 0, uses_anonymous_args = 0
 661 0000 0128     		cmp	r0, #1
 662 0002 01D9     		bls	.L162
 663 0004 1120     		movs	r0, #17
 664 0006 7047     		bx	lr
 665              	.L162:
 666 0008 10B5     		push	{r4, lr}
 667 000a 0446     		mov	r4, r0
 668 000c FFF7FEFF 		bl	flash_is_gpnvm_set
 669 0010 08B9     		cbnz	r0, .L152
 670              	.L153:
 671 0012 0020     		movs	r0, #0
 672 0014 10BD     		pop	{r4, pc}
 673              	.L152:
 674 0016 2246     		mov	r2, r4
 675 0018 0C21     		movs	r1, #12
 676 001a 0348     		ldr	r0, .L163
 677 001c FFF7FEFF 		bl	efc_perform_command
 678 0020 0028     		cmp	r0, #0
 679 0022 F6D0     		beq	.L153
 680 0024 1020     		movs	r0, #16
 681 0026 10BD     		pop	{r4, pc}
 682              	.L164:
 683              		.align	2
 684              	.L163:
ARM GAS  /tmp/cc7Tody3.s 			page 13


 685 0028 000A0E40 		.word	1074661888
 686              		.size	flash_clear_gpnvm, .-flash_clear_gpnvm
 687              		.section	.text.flash_enable_security_bit,"ax",%progbits
 688              		.align	1
 689              		.p2align 2,,3
 690              		.global	flash_enable_security_bit
 691              		.syntax unified
 692              		.thumb
 693              		.thumb_func
 694              		.fpu fpv4-sp-d16
 695              		.type	flash_enable_security_bit, %function
 696              	flash_enable_security_bit:
 697              		@ args = 0, pretend = 0, frame = 0
 698              		@ frame_needed = 0, uses_anonymous_args = 0
 699              		@ link register save eliminated.
 700 0000 0020     		movs	r0, #0
 701 0002 FFF7FEBF 		b	flash_set_gpnvm
 702              		.size	flash_enable_security_bit, .-flash_enable_security_bit
 703 0006 00BF     		.section	.text.flash_is_security_bit_enabled,"ax",%progbits
 704              		.align	1
 705              		.p2align 2,,3
 706              		.global	flash_is_security_bit_enabled
 707              		.syntax unified
 708              		.thumb
 709              		.thumb_func
 710              		.fpu fpv4-sp-d16
 711              		.type	flash_is_security_bit_enabled, %function
 712              	flash_is_security_bit_enabled:
 713              		@ args = 0, pretend = 0, frame = 0
 714              		@ frame_needed = 0, uses_anonymous_args = 0
 715              		@ link register save eliminated.
 716 0000 0020     		movs	r0, #0
 717 0002 FFF7FEBF 		b	flash_is_gpnvm_set
 718              		.size	flash_is_security_bit_enabled, .-flash_is_security_bit_enabled
 719 0006 00BF     		.section	.text.flash_read_unique_id,"ax",%progbits
 720              		.align	1
 721              		.p2align 2,,3
 722              		.global	flash_read_unique_id
 723              		.syntax unified
 724              		.thumb
 725              		.thumb_func
 726              		.fpu fpv4-sp-d16
 727              		.type	flash_read_unique_id, %function
 728              	flash_read_unique_id:
 729              		@ args = 0, pretend = 0, frame = 16
 730              		@ frame_needed = 0, uses_anonymous_args = 0
 731 0000 30B5     		push	{r4, r5, lr}
 732 0002 87B0     		sub	sp, sp, #28
 733 0004 0422     		movs	r2, #4
 734 0006 0446     		mov	r4, r0
 735 0008 0D46     		mov	r5, r1
 736 000a 0092     		str	r2, [sp]
 737 000c 02AB     		add	r3, sp, #8
 738 000e 0F22     		movs	r2, #15
 739 0010 0E21     		movs	r1, #14
 740 0012 0C48     		ldr	r0, .L176
 741 0014 FFF7FEFF 		bl	efc_perform_read_sequence
ARM GAS  /tmp/cc7Tody3.s 			page 14


 742 0018 10B1     		cbz	r0, .L175
 743 001a 1020     		movs	r0, #16
 744              	.L167:
 745 001c 07B0     		add	sp, sp, #28
 746              		@ sp needed
 747 001e 30BD     		pop	{r4, r5, pc}
 748              	.L175:
 749 0020 042D     		cmp	r5, #4
 750 0022 28BF     		it	cs
 751 0024 0425     		movcs	r5, #4
 752 0026 002D     		cmp	r5, #0
 753 0028 F8D0     		beq	.L167
 754 002a 2346     		mov	r3, r4
 755 002c 04EB8501 		add	r1, r4, r5, lsl #2
 756 0030 02AA     		add	r2, sp, #8
 757              	.L170:
 758 0032 52F8044B 		ldr	r4, [r2], #4
 759 0036 43F8044B 		str	r4, [r3], #4
 760 003a 8B42     		cmp	r3, r1
 761 003c F9D1     		bne	.L170
 762 003e 07B0     		add	sp, sp, #28
 763              		@ sp needed
 764 0040 30BD     		pop	{r4, r5, pc}
 765              	.L177:
 766 0042 00BF     		.align	2
 767              	.L176:
 768 0044 000A0E40 		.word	1074661888
 769              		.size	flash_read_unique_id, .-flash_read_unique_id
 770              		.section	.text.flash_read_user_signature,"ax",%progbits
 771              		.align	1
 772              		.p2align 2,,3
 773              		.global	flash_read_user_signature
 774              		.syntax unified
 775              		.thumb
 776              		.thumb_func
 777              		.fpu fpv4-sp-d16
 778              		.type	flash_read_user_signature, %function
 779              	flash_read_user_signature:
 780              		@ args = 0, pretend = 0, frame = 0
 781              		@ frame_needed = 0, uses_anonymous_args = 0
 782 0000 00B5     		push	{lr}
 783 0002 8029     		cmp	r1, #128
 784 0004 83B0     		sub	sp, sp, #12
 785 0006 28BF     		it	cs
 786 0008 8021     		movcs	r1, #128
 787 000a 0091     		str	r1, [sp]
 788 000c 0346     		mov	r3, r0
 789 000e 1522     		movs	r2, #21
 790 0010 1421     		movs	r1, #20
 791 0012 0548     		ldr	r0, .L182
 792 0014 FFF7FEFF 		bl	efc_perform_read_sequence
 793 0018 0028     		cmp	r0, #0
 794 001a 14BF     		ite	ne
 795 001c 1020     		movne	r0, #16
 796 001e 0020     		moveq	r0, #0
 797 0020 03B0     		add	sp, sp, #12
 798              		@ sp needed
ARM GAS  /tmp/cc7Tody3.s 			page 15


 799 0022 5DF804FB 		ldr	pc, [sp], #4
 800              	.L183:
 801 0026 00BF     		.align	2
 802              	.L182:
 803 0028 000A0E40 		.word	1074661888
 804              		.size	flash_read_user_signature, .-flash_read_user_signature
 805              		.section	.text.flash_write_user_signature,"ax",%progbits
 806              		.align	1
 807              		.p2align 2,,3
 808              		.global	flash_write_user_signature
 809              		.syntax unified
 810              		.thumb
 811              		.thumb_func
 812              		.fpu fpv4-sp-d16
 813              		.type	flash_write_user_signature, %function
 814              	flash_write_user_signature:
 815              		@ args = 0, pretend = 0, frame = 0
 816              		@ frame_needed = 0, uses_anonymous_args = 0
 817 0000 8029     		cmp	r1, #128
 818 0002 01D9     		bls	.L194
 819 0004 1120     		movs	r0, #17
 820 0006 7047     		bx	lr
 821              	.L194:
 822 0008 8A00     		lsls	r2, r1, #2
 823 000a 08B5     		push	{r3, lr}
 824 000c 0146     		mov	r1, r0
 825 000e 0B48     		ldr	r0, .L195
 826 0010 FFF7FEFF 		bl	memcpy
 827 0014 0A4B     		ldr	r3, .L195+4
 828 0016 0B4A     		ldr	r2, .L195+8
 829 0018 03F50070 		add	r0, r3, #512
 830              	.L186:
 831 001c 53F8041F 		ldr	r1, [r3, #4]!
 832 0020 42F8041F 		str	r1, [r2, #4]!
 833 0024 8342     		cmp	r3, r0
 834 0026 F9D1     		bne	.L186
 835 0028 0022     		movs	r2, #0
 836 002a 1221     		movs	r1, #18
 837 002c 0648     		ldr	r0, .L195+12
 838 002e FFF7FEFF 		bl	efc_perform_command
 839 0032 0028     		cmp	r0, #0
 840 0034 14BF     		ite	ne
 841 0036 1020     		movne	r0, #16
 842 0038 0020     		moveq	r0, #0
 843 003a 08BD     		pop	{r3, pc}
 844              	.L196:
 845              		.align	2
 846              	.L195:
 847 003c 00000000 		.word	.LANCHOR0
 848 0040 FCFFFFFF 		.word	.LANCHOR0-4
 849 0044 FCFF3F00 		.word	4194300
 850 0048 000A0E40 		.word	1074661888
 851              		.size	flash_write_user_signature, .-flash_write_user_signature
 852              		.section	.text.flash_erase_user_signature,"ax",%progbits
 853              		.align	1
 854              		.p2align 2,,3
 855              		.global	flash_erase_user_signature
ARM GAS  /tmp/cc7Tody3.s 			page 16


 856              		.syntax unified
 857              		.thumb
 858              		.thumb_func
 859              		.fpu fpv4-sp-d16
 860              		.type	flash_erase_user_signature, %function
 861              	flash_erase_user_signature:
 862              		@ args = 0, pretend = 0, frame = 0
 863              		@ frame_needed = 0, uses_anonymous_args = 0
 864              		@ link register save eliminated.
 865 0000 0022     		movs	r2, #0
 866 0002 1321     		movs	r1, #19
 867 0004 0148     		ldr	r0, .L198
 868 0006 FFF7FEBF 		b	efc_perform_command
 869              	.L199:
 870 000a 00BF     		.align	2
 871              	.L198:
 872 000c 000A0E40 		.word	1074661888
 873              		.size	flash_erase_user_signature, .-flash_erase_user_signature
 874              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 875              		.align	2
 876              		.type	cpu_irq_critical_section_counter, %object
 877              		.size	cpu_irq_critical_section_counter, 4
 878              	cpu_irq_critical_section_counter:
 879 0000 00000000 		.space	4
 880              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 881              		.type	cpu_irq_prev_interrupt_state, %object
 882              		.size	cpu_irq_prev_interrupt_state, 1
 883              	cpu_irq_prev_interrupt_state:
 884 0000 00       		.space	1
 885              		.section	.bss.gs_ul_page_buffer,"aw",%nobits
 886              		.align	2
 887              		.set	.LANCHOR0,. + 0
 888              		.type	gs_ul_page_buffer, %object
 889              		.size	gs_ul_page_buffer, 512
 890              	gs_ul_page_buffer:
 891 0000 00000000 		.space	512
 891      00000000 
 891      00000000 
 891      00000000 
 891      00000000 
 892              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
