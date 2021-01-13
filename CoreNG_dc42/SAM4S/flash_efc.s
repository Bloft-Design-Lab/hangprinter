ARM GAS  /tmp/ccQRF7Tq.s 			page 1


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
  11              		.file	"flash_efc.c"
  12              		.section	.text.flash_init,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	flash_init
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	flash_init, %function
  21              	flash_init:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 08B5     		push	{r3, lr}
  25 0002 0A46     		mov	r2, r1
  26 0004 0146     		mov	r1, r0
  27 0006 0248     		ldr	r0, .L3
  28 0008 FFF7FEFF 		bl	efc_init
  29 000c 0020     		movs	r0, #0
  30 000e 08BD     		pop	{r3, pc}
  31              	.L4:
  32              		.align	2
  33              	.L3:
  34 0010 000A0E40 		.word	1074661888
  35              		.size	flash_init, .-flash_init
  36              		.section	.text.flash_set_wait_state,"ax",%progbits
  37              		.align	1
  38              		.p2align 2,,3
  39              		.global	flash_set_wait_state
  40              		.syntax unified
  41              		.thumb
  42              		.thumb_func
  43              		.fpu softvfp
  44              		.type	flash_set_wait_state, %function
  45              	flash_set_wait_state:
  46              		@ args = 0, pretend = 0, frame = 0
  47              		@ frame_needed = 0, uses_anonymous_args = 0
  48 0000 08B5     		push	{r3, lr}
  49 0002 0248     		ldr	r0, .L7
  50 0004 FFF7FEFF 		bl	efc_set_wait_state
  51 0008 0020     		movs	r0, #0
  52 000a 08BD     		pop	{r3, pc}
  53              	.L8:
  54              		.align	2
  55              	.L7:
  56 000c 000A0E40 		.word	1074661888
  57              		.size	flash_set_wait_state, .-flash_set_wait_state
ARM GAS  /tmp/ccQRF7Tq.s 			page 2


  58              		.section	.text.flash_set_wait_state_adaptively,"ax",%progbits
  59              		.align	1
  60              		.p2align 2,,3
  61              		.global	flash_set_wait_state_adaptively
  62              		.syntax unified
  63              		.thumb
  64              		.thumb_func
  65              		.fpu softvfp
  66              		.type	flash_set_wait_state_adaptively, %function
  67              	flash_set_wait_state_adaptively:
  68              		@ args = 0, pretend = 0, frame = 0
  69              		@ frame_needed = 0, uses_anonymous_args = 0
  70 0000 08B5     		push	{r3, lr}
  71 0002 0521     		movs	r1, #5
  72 0004 0248     		ldr	r0, .L11
  73 0006 FFF7FEFF 		bl	efc_set_wait_state
  74 000a 0020     		movs	r0, #0
  75 000c 08BD     		pop	{r3, pc}
  76              	.L12:
  77 000e 00BF     		.align	2
  78              	.L11:
  79 0010 000A0E40 		.word	1074661888
  80              		.size	flash_set_wait_state_adaptively, .-flash_set_wait_state_adaptively
  81              		.section	.text.flash_get_wait_state,"ax",%progbits
  82              		.align	1
  83              		.p2align 2,,3
  84              		.global	flash_get_wait_state
  85              		.syntax unified
  86              		.thumb
  87              		.thumb_func
  88              		.fpu softvfp
  89              		.type	flash_get_wait_state, %function
  90              	flash_get_wait_state:
  91              		@ args = 0, pretend = 0, frame = 0
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93              		@ link register save eliminated.
  94 0000 0148     		ldr	r0, .L14
  95 0002 FFF7FEBF 		b	efc_get_wait_state
  96              	.L15:
  97 0006 00BF     		.align	2
  98              	.L14:
  99 0008 000A0E40 		.word	1074661888
 100              		.size	flash_get_wait_state, .-flash_get_wait_state
 101              		.section	.text.flash_get_descriptor,"ax",%progbits
 102              		.align	1
 103              		.p2align 2,,3
 104              		.global	flash_get_descriptor
 105              		.syntax unified
 106              		.thumb
 107              		.thumb_func
 108              		.fpu softvfp
 109              		.type	flash_get_descriptor, %function
 110              	flash_get_descriptor:
 111              		@ args = 0, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 114 0002 1646     		mov	r6, r2
ARM GAS  /tmp/ccQRF7Tq.s 			page 3


 115 0004 0022     		movs	r2, #0
 116 0006 0D46     		mov	r5, r1
 117 0008 0A48     		ldr	r0, .L26
 118 000a 1146     		mov	r1, r2
 119 000c FFF7FEFF 		bl	efc_perform_command
 120 0010 68B9     		cbnz	r0, .L19
 121 0012 0446     		mov	r4, r0
 122 0014 074F     		ldr	r7, .L26
 123 0016 03E0     		b	.L18
 124              	.L25:
 125 0018 38B1     		cbz	r0, .L16
 126 001a 45F8040B 		str	r0, [r5], #4
 127 001e 0134     		adds	r4, r4, #1
 128              	.L18:
 129 0020 3846     		mov	r0, r7
 130 0022 FFF7FEFF 		bl	efc_get_result
 131 0026 B442     		cmp	r4, r6
 132 0028 F6D1     		bne	.L25
 133              	.L16:
 134 002a 2046     		mov	r0, r4
 135 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 136              	.L19:
 137 002e 0024     		movs	r4, #0
 138 0030 2046     		mov	r0, r4
 139 0032 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 140              	.L27:
 141              		.align	2
 142              	.L26:
 143 0034 000A0E40 		.word	1074661888
 144              		.size	flash_get_descriptor, .-flash_get_descriptor
 145              		.section	.text.flash_get_page_count,"ax",%progbits
 146              		.align	1
 147              		.p2align 2,,3
 148              		.global	flash_get_page_count
 149              		.syntax unified
 150              		.thumb
 151              		.thumb_func
 152              		.fpu softvfp
 153              		.type	flash_get_page_count, %function
 154              	flash_get_page_count:
 155              		@ args = 0, pretend = 0, frame = 0
 156              		@ frame_needed = 0, uses_anonymous_args = 0
 157              		@ link register save eliminated.
 158 0000 4268     		ldr	r2, [r0, #4]
 159 0002 8068     		ldr	r0, [r0, #8]
 160 0004 B2FBF0F0 		udiv	r0, r2, r0
 161 0008 7047     		bx	lr
 162              		.size	flash_get_page_count, .-flash_get_page_count
 163 000a 00BF     		.section	.text.flash_get_page_count_per_region,"ax",%progbits
 164              		.align	1
 165              		.p2align 2,,3
 166              		.global	flash_get_page_count_per_region
 167              		.syntax unified
 168              		.thumb
 169              		.thumb_func
 170              		.fpu softvfp
 171              		.type	flash_get_page_count_per_region, %function
ARM GAS  /tmp/ccQRF7Tq.s 			page 4


 172              	flash_get_page_count_per_region:
 173              		@ args = 0, pretend = 0, frame = 0
 174              		@ frame_needed = 0, uses_anonymous_args = 0
 175              		@ link register save eliminated.
 176 0000 0269     		ldr	r2, [r0, #16]
 177 0002 8068     		ldr	r0, [r0, #8]
 178 0004 B2FBF0F0 		udiv	r0, r2, r0
 179 0008 7047     		bx	lr
 180              		.size	flash_get_page_count_per_region, .-flash_get_page_count_per_region
 181 000a 00BF     		.section	.text.flash_get_region_count,"ax",%progbits
 182              		.align	1
 183              		.p2align 2,,3
 184              		.global	flash_get_region_count
 185              		.syntax unified
 186              		.thumb
 187              		.thumb_func
 188              		.fpu softvfp
 189              		.type	flash_get_region_count, %function
 190              	flash_get_region_count:
 191              		@ args = 0, pretend = 0, frame = 0
 192              		@ frame_needed = 0, uses_anonymous_args = 0
 193              		@ link register save eliminated.
 194 0000 C068     		ldr	r0, [r0, #12]
 195 0002 7047     		bx	lr
 196              		.size	flash_get_region_count, .-flash_get_region_count
 197              		.section	.text.flash_erase_all,"ax",%progbits
 198              		.align	1
 199              		.p2align 2,,3
 200              		.global	flash_erase_all
 201              		.syntax unified
 202              		.thumb
 203              		.thumb_func
 204              		.fpu softvfp
 205              		.type	flash_erase_all, %function
 206              	flash_erase_all:
 207              		@ args = 0, pretend = 0, frame = 0
 208              		@ frame_needed = 0, uses_anonymous_args = 0
 209 0000 08B5     		push	{r3, lr}
 210 0002 0022     		movs	r2, #0
 211 0004 0521     		movs	r1, #5
 212 0006 0448     		ldr	r0, .L35
 213 0008 FFF7FEFF 		bl	efc_perform_command
 214 000c 0028     		cmp	r0, #0
 215 000e 14BF     		ite	ne
 216 0010 1020     		movne	r0, #16
 217 0012 0020     		moveq	r0, #0
 218 0014 08BD     		pop	{r3, pc}
 219              	.L36:
 220 0016 00BF     		.align	2
 221              	.L35:
 222 0018 000A0E40 		.word	1074661888
 223              		.size	flash_erase_all, .-flash_erase_all
 224              		.section	.text.flash_erase_page,"ax",%progbits
 225              		.align	1
 226              		.p2align 2,,3
 227              		.global	flash_erase_page
 228              		.syntax unified
ARM GAS  /tmp/ccQRF7Tq.s 			page 5


 229              		.thumb
 230              		.thumb_func
 231              		.fpu softvfp
 232              		.type	flash_erase_page, %function
 233              	flash_erase_page:
 234              		@ args = 0, pretend = 0, frame = 0
 235              		@ frame_needed = 0, uses_anonymous_args = 0
 236 0000 0329     		cmp	r1, #3
 237 0002 01D9     		bls	.L46
 238 0004 1120     		movs	r0, #17
 239 0006 7047     		bx	lr
 240              	.L46:
 241 0008 08B5     		push	{r3, lr}
 242 000a C0F30803 		ubfx	r3, r0, #0, #9
 243 000e 0BB1     		cbz	r3, .L47
 244 0010 1120     		movs	r0, #17
 245 0012 08BD     		pop	{r3, pc}
 246              	.L47:
 247 0014 A0F58002 		sub	r2, r0, #4194304
 248 0018 C2F34F22 		ubfx	r2, r2, #9, #16
 249 001c 0A43     		orrs	r2, r2, r1
 250 001e 0448     		ldr	r0, .L48
 251 0020 0721     		movs	r1, #7
 252 0022 FFF7FEFF 		bl	efc_perform_command
 253 0026 0028     		cmp	r0, #0
 254 0028 14BF     		ite	ne
 255 002a 1020     		movne	r0, #16
 256 002c 0020     		moveq	r0, #0
 257 002e 08BD     		pop	{r3, pc}
 258              	.L49:
 259              		.align	2
 260              	.L48:
 261 0030 000A0E40 		.word	1074661888
 262              		.size	flash_erase_page, .-flash_erase_page
 263              		.section	.text.flash_erase_sector,"ax",%progbits
 264              		.align	1
 265              		.p2align 2,,3
 266              		.global	flash_erase_sector
 267              		.syntax unified
 268              		.thumb
 269              		.thumb_func
 270              		.fpu softvfp
 271              		.type	flash_erase_sector, %function
 272              	flash_erase_sector:
 273              		@ args = 0, pretend = 0, frame = 0
 274              		@ frame_needed = 0, uses_anonymous_args = 0
 275 0000 08B5     		push	{r3, lr}
 276 0002 A0F58002 		sub	r2, r0, #4194304
 277 0006 C2F34F22 		ubfx	r2, r2, #9, #16
 278 000a 1121     		movs	r1, #17
 279 000c 0348     		ldr	r0, .L54
 280 000e FFF7FEFF 		bl	efc_perform_command
 281 0012 0028     		cmp	r0, #0
 282 0014 14BF     		ite	ne
 283 0016 1020     		movne	r0, #16
 284 0018 0020     		moveq	r0, #0
 285 001a 08BD     		pop	{r3, pc}
ARM GAS  /tmp/ccQRF7Tq.s 			page 6


 286              	.L55:
 287              		.align	2
 288              	.L54:
 289 001c 000A0E40 		.word	1074661888
 290              		.size	flash_erase_sector, .-flash_erase_sector
 291              		.section	.text.flash_write,"ax",%progbits
 292              		.align	1
 293              		.p2align 2,,3
 294              		.global	flash_write
 295              		.syntax unified
 296              		.thumb
 297              		.thumb_func
 298              		.fpu softvfp
 299              		.type	flash_write, %function
 300              	flash_write:
 301              		@ args = 0, pretend = 0, frame = 8
 302              		@ frame_needed = 0, uses_anonymous_args = 0
 303 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 304 0004 83B0     		sub	sp, sp, #12
 305 0006 A0F58008 		sub	r8, r0, #4194304
 306 000a 0193     		str	r3, [sp, #4]
 307 000c C8F34F28 		ubfx	r8, r8, #9, #16
 308 0010 C0F30806 		ubfx	r6, r0, #0, #9
 309 0014 002A     		cmp	r2, #0
 310 0016 3DD0     		beq	.L63
 311 0018 DFF88CB0 		ldr	fp, .L68
 312 001c 8A46     		mov	r10, r1
 313 001e 9146     		mov	r9, r2
 314 0020 0BF5FE75 		add	r5, fp, #508
 315              	.L62:
 316 0024 C6F50073 		rsb	r3, r6, #512
 317 0028 08F50054 		add	r4, r8, #8192
 318 002c 4B45     		cmp	r3, r9
 319 002e 4FEA4424 		lsl	r4, r4, #9
 320 0032 1F46     		mov	r7, r3
 321 0034 2146     		mov	r1, r4
 322 0036 28BF     		it	cs
 323 0038 4F46     		movcs	r7, r9
 324 003a 3246     		mov	r2, r6
 325 003c 1A48     		ldr	r0, .L68
 326 003e 0093     		str	r3, [sp]
 327 0040 FFF7FEFF 		bl	memcpy
 328 0044 3A46     		mov	r2, r7
 329 0046 5146     		mov	r1, r10
 330 0048 0BEB0600 		add	r0, fp, r6
 331 004c FFF7FEFF 		bl	memcpy
 332 0050 009B     		ldr	r3, [sp]
 333 0052 3919     		adds	r1, r7, r4
 334 0054 DB1B     		subs	r3, r3, r7
 335 0056 F019     		adds	r0, r6, r7
 336 0058 9AB2     		uxth	r2, r3
 337 005a 5844     		add	r0, r0, fp
 338 005c 3144     		add	r1, r1, r6
 339 005e FFF7FEFF 		bl	memcpy
 340 0062 124B     		ldr	r3, .L68+4
 341 0064 043C     		subs	r4, r4, #4
 342              	.L59:
ARM GAS  /tmp/ccQRF7Tq.s 			page 7


 343 0066 53F8042F 		ldr	r2, [r3, #4]!
 344 006a 44F8042F 		str	r2, [r4, #4]!
 345 006e 9D42     		cmp	r5, r3
 346 0070 F9D1     		bne	.L59
 347 0072 019B     		ldr	r3, [sp, #4]
 348 0074 4246     		mov	r2, r8
 349 0076 8BB1     		cbz	r3, .L60
 350 0078 0321     		movs	r1, #3
 351 007a 0D48     		ldr	r0, .L68+8
 352 007c FFF7FEFF 		bl	efc_perform_command
 353              	.L61:
 354 0080 48B9     		cbnz	r0, .L56
 355 0082 08F10108 		add	r8, r8, #1
 356 0086 B9EB0709 		subs	r9, r9, r7
 357 008a 1FFA88F8 		uxth	r8, r8
 358 008e BA44     		add	r10, r10, r7
 359 0090 0646     		mov	r6, r0
 360 0092 C7D1     		bne	.L62
 361              	.L63:
 362 0094 0020     		movs	r0, #0
 363              	.L56:
 364 0096 03B0     		add	sp, sp, #12
 365              		@ sp needed
 366 0098 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 367              	.L60:
 368 009c 0121     		movs	r1, #1
 369 009e 0448     		ldr	r0, .L68+8
 370 00a0 FFF7FEFF 		bl	efc_perform_command
 371 00a4 ECE7     		b	.L61
 372              	.L69:
 373 00a6 00BF     		.align	2
 374              	.L68:
 375 00a8 00000000 		.word	.LANCHOR0
 376 00ac FCFFFFFF 		.word	.LANCHOR0-4
 377 00b0 000A0E40 		.word	1074661888
 378              		.size	flash_write, .-flash_write
 379              		.section	.text.flash_lock,"ax",%progbits
 380              		.align	1
 381              		.p2align 2,,3
 382              		.global	flash_lock
 383              		.syntax unified
 384              		.thumb
 385              		.thumb_func
 386              		.fpu softvfp
 387              		.type	flash_lock, %function
 388              	flash_lock:
 389              		@ args = 0, pretend = 0, frame = 0
 390              		@ frame_needed = 0, uses_anonymous_args = 0
 391 0000 70B5     		push	{r4, r5, r6, lr}
 392 0002 124C     		ldr	r4, .L86
 393 0004 2140     		ands	r1, r1, r4
 394 0006 01F5FF55 		add	r5, r1, #8160
 395 000a 0440     		ands	r4, r4, r0
 396 000c 1F35     		adds	r5, r5, #31
 397 000e 02B1     		cbz	r2, .L71
 398 0010 1460     		str	r4, [r2]
 399              	.L71:
ARM GAS  /tmp/ccQRF7Tq.s 			page 8


 400 0012 03B1     		cbz	r3, .L72
 401 0014 1D60     		str	r5, [r3]
 402              	.L72:
 403 0016 0E4D     		ldr	r5, .L86+4
 404 0018 A4F58004 		sub	r4, r4, #4194304
 405 001c 640A     		lsrs	r4, r4, #9
 406 001e 0D44     		add	r5, r5, r1
 407 0020 A4B2     		uxth	r4, r4
 408 0022 C5F34F25 		ubfx	r5, r5, #9, #16
 409 0026 A542     		cmp	r5, r4
 410 0028 0DD9     		bls	.L76
 411 002a 0A4E     		ldr	r6, .L86+8
 412 002c 01E0     		b	.L75
 413              	.L85:
 414 002e AC42     		cmp	r4, r5
 415 0030 09D2     		bcs	.L76
 416              	.L75:
 417 0032 2246     		mov	r2, r4
 418 0034 0821     		movs	r1, #8
 419 0036 3046     		mov	r0, r6
 420 0038 FFF7FEFF 		bl	efc_perform_command
 421 003c 1034     		adds	r4, r4, #16
 422 003e A4B2     		uxth	r4, r4
 423 0040 0028     		cmp	r0, #0
 424 0042 F4D0     		beq	.L85
 425 0044 70BD     		pop	{r4, r5, r6, pc}
 426              	.L76:
 427 0046 0020     		movs	r0, #0
 428 0048 70BD     		pop	{r4, r5, r6, pc}
 429              	.L87:
 430 004a 00BF     		.align	2
 431              	.L86:
 432 004c 00E0FFFF 		.word	-8192
 433 0050 FF1FC0FF 		.word	-4186113
 434 0054 000A0E40 		.word	1074661888
 435              		.size	flash_lock, .-flash_lock
 436              		.section	.text.flash_unlock,"ax",%progbits
 437              		.align	1
 438              		.p2align 2,,3
 439              		.global	flash_unlock
 440              		.syntax unified
 441              		.thumb
 442              		.thumb_func
 443              		.fpu softvfp
 444              		.type	flash_unlock, %function
 445              	flash_unlock:
 446              		@ args = 0, pretend = 0, frame = 0
 447              		@ frame_needed = 0, uses_anonymous_args = 0
 448 0000 70B5     		push	{r4, r5, r6, lr}
 449 0002 124C     		ldr	r4, .L104
 450 0004 2140     		ands	r1, r1, r4
 451 0006 01F5FF55 		add	r5, r1, #8160
 452 000a 0440     		ands	r4, r4, r0
 453 000c 1F35     		adds	r5, r5, #31
 454 000e 02B1     		cbz	r2, .L89
 455 0010 1460     		str	r4, [r2]
 456              	.L89:
ARM GAS  /tmp/ccQRF7Tq.s 			page 9


 457 0012 03B1     		cbz	r3, .L90
 458 0014 1D60     		str	r5, [r3]
 459              	.L90:
 460 0016 0E4D     		ldr	r5, .L104+4
 461 0018 A4F58004 		sub	r4, r4, #4194304
 462 001c 640A     		lsrs	r4, r4, #9
 463 001e 0D44     		add	r5, r5, r1
 464 0020 A4B2     		uxth	r4, r4
 465 0022 C5F34F25 		ubfx	r5, r5, #9, #16
 466 0026 A542     		cmp	r5, r4
 467 0028 0DD9     		bls	.L94
 468 002a 0A4E     		ldr	r6, .L104+8
 469 002c 01E0     		b	.L93
 470              	.L103:
 471 002e AC42     		cmp	r4, r5
 472 0030 09D2     		bcs	.L94
 473              	.L93:
 474 0032 2246     		mov	r2, r4
 475 0034 0921     		movs	r1, #9
 476 0036 3046     		mov	r0, r6
 477 0038 FFF7FEFF 		bl	efc_perform_command
 478 003c 1034     		adds	r4, r4, #16
 479 003e A4B2     		uxth	r4, r4
 480 0040 0028     		cmp	r0, #0
 481 0042 F4D0     		beq	.L103
 482 0044 70BD     		pop	{r4, r5, r6, pc}
 483              	.L94:
 484 0046 0020     		movs	r0, #0
 485 0048 70BD     		pop	{r4, r5, r6, pc}
 486              	.L105:
 487 004a 00BF     		.align	2
 488              	.L104:
 489 004c 00E0FFFF 		.word	-8192
 490 0050 FF1FC0FF 		.word	-4186113
 491 0054 000A0E40 		.word	1074661888
 492              		.size	flash_unlock, .-flash_unlock
 493              		.section	.text.flash_is_locked,"ax",%progbits
 494              		.align	1
 495              		.p2align 2,,3
 496              		.global	flash_is_locked
 497              		.syntax unified
 498              		.thumb
 499              		.thumb_func
 500              		.fpu softvfp
 501              		.type	flash_is_locked, %function
 502              	flash_is_locked:
 503              		@ args = 0, pretend = 0, frame = 0
 504              		@ frame_needed = 0, uses_anonymous_args = 0
 505 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 506 0004 0022     		movs	r2, #0
 507 0006 0446     		mov	r4, r0
 508 0008 0F46     		mov	r7, r1
 509 000a 1D48     		ldr	r0, .L121
 510 000c 0A21     		movs	r1, #10
 511 000e FFF7FEFF 		bl	efc_perform_command
 512 0012 0546     		mov	r5, r0
 513 0014 10B1     		cbz	r0, .L119
ARM GAS  /tmp/ccQRF7Tq.s 			page 10


 514              	.L106:
 515 0016 2846     		mov	r0, r5
 516 0018 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 517              	.L119:
 518 001c 1848     		ldr	r0, .L121
 519 001e C4F34734 		ubfx	r4, r4, #13, #8
 520 0022 8046     		mov	r8, r0
 521 0024 2026     		movs	r6, #32
 522 0026 FFF7FEFF 		bl	efc_get_result
 523 002a 04E0     		b	.L108
 524              	.L109:
 525 002c 4046     		mov	r0, r8
 526 002e 2035     		adds	r5, r5, #32
 527 0030 2036     		adds	r6, r6, #32
 528 0032 FFF7FEFF 		bl	efc_get_result
 529              	.L108:
 530 0036 AC42     		cmp	r4, r5
 531 0038 F8D3     		bcc	.L109
 532 003a B442     		cmp	r4, r6
 533 003c F6D2     		bcs	.L109
 534 003e C7F34737 		ubfx	r7, r7, #13, #8
 535 0042 3F1B     		subs	r7, r7, r4
 536 0044 631B     		subs	r3, r4, r5
 537 0046 7C1C     		adds	r4, r7, #1
 538 0048 17D0     		beq	.L113
 539 004a 0D4F     		ldr	r7, .L121
 540 004c 0025     		movs	r5, #0
 541 004e 0126     		movs	r6, #1
 542              	.L112:
 543 0050 06FA03F2 		lsl	r2, r6, r3
 544 0054 0242     		tst	r2, r0
 545 0056 03F10103 		add	r3, r3, #1
 546 005a 18BF     		it	ne
 547 005c 0135     		addne	r5, r5, #1
 548 005e 202B     		cmp	r3, #32
 549 0060 04F1FF34 		add	r4, r4, #-1
 550 0064 02D0     		beq	.L120
 551 0066 002C     		cmp	r4, #0
 552 0068 F2D1     		bne	.L112
 553 006a D4E7     		b	.L106
 554              	.L120:
 555 006c 3846     		mov	r0, r7
 556 006e FFF7FEFF 		bl	efc_get_result
 557 0072 0023     		movs	r3, #0
 558 0074 002C     		cmp	r4, #0
 559 0076 EBD1     		bne	.L112
 560 0078 CDE7     		b	.L106
 561              	.L113:
 562 007a 2546     		mov	r5, r4
 563 007c CBE7     		b	.L106
 564              	.L122:
 565 007e 00BF     		.align	2
 566              	.L121:
 567 0080 000A0E40 		.word	1074661888
 568              		.size	flash_is_locked, .-flash_is_locked
 569              		.section	.text.flash_is_gpnvm_set,"ax",%progbits
 570              		.align	1
ARM GAS  /tmp/ccQRF7Tq.s 			page 11


 571              		.p2align 2,,3
 572              		.global	flash_is_gpnvm_set
 573              		.syntax unified
 574              		.thumb
 575              		.thumb_func
 576              		.fpu softvfp
 577              		.type	flash_is_gpnvm_set, %function
 578              	flash_is_gpnvm_set:
 579              		@ args = 0, pretend = 0, frame = 0
 580              		@ frame_needed = 0, uses_anonymous_args = 0
 581 0000 0128     		cmp	r0, #1
 582 0002 01D9     		bls	.L131
 583 0004 1120     		movs	r0, #17
 584 0006 7047     		bx	lr
 585              	.L131:
 586 0008 10B5     		push	{r4, lr}
 587 000a 0022     		movs	r2, #0
 588 000c 0446     		mov	r4, r0
 589 000e 0D21     		movs	r1, #13
 590 0010 0848     		ldr	r0, .L133
 591 0012 FFF7FEFF 		bl	efc_perform_command
 592 0016 08B1     		cbz	r0, .L132
 593 0018 1020     		movs	r0, #16
 594 001a 10BD     		pop	{r4, pc}
 595              	.L132:
 596 001c 0548     		ldr	r0, .L133
 597 001e FFF7FEFF 		bl	efc_get_result
 598 0022 0123     		movs	r3, #1
 599 0024 03FA04F4 		lsl	r4, r3, r4
 600 0028 0442     		tst	r4, r0
 601 002a 14BF     		ite	ne
 602 002c 1846     		movne	r0, r3
 603 002e 0020     		moveq	r0, #0
 604 0030 10BD     		pop	{r4, pc}
 605              	.L134:
 606 0032 00BF     		.align	2
 607              	.L133:
 608 0034 000A0E40 		.word	1074661888
 609              		.size	flash_is_gpnvm_set, .-flash_is_gpnvm_set
 610              		.section	.text.flash_set_gpnvm,"ax",%progbits
 611              		.align	1
 612              		.p2align 2,,3
 613              		.global	flash_set_gpnvm
 614              		.syntax unified
 615              		.thumb
 616              		.thumb_func
 617              		.fpu softvfp
 618              		.type	flash_set_gpnvm, %function
 619              	flash_set_gpnvm:
 620              		@ args = 0, pretend = 0, frame = 0
 621              		@ frame_needed = 0, uses_anonymous_args = 0
 622 0000 0128     		cmp	r0, #1
 623 0002 01D9     		bls	.L147
 624 0004 1120     		movs	r0, #17
 625 0006 7047     		bx	lr
 626              	.L147:
 627 0008 10B5     		push	{r4, lr}
ARM GAS  /tmp/ccQRF7Tq.s 			page 12


 628 000a 0446     		mov	r4, r0
 629 000c FFF7FEFF 		bl	flash_is_gpnvm_set
 630 0010 0128     		cmp	r0, #1
 631 0012 07D0     		beq	.L138
 632 0014 2246     		mov	r2, r4
 633 0016 0B21     		movs	r1, #11
 634 0018 0348     		ldr	r0, .L148
 635 001a FFF7FEFF 		bl	efc_perform_command
 636 001e 08B1     		cbz	r0, .L138
 637 0020 1020     		movs	r0, #16
 638 0022 10BD     		pop	{r4, pc}
 639              	.L138:
 640 0024 0020     		movs	r0, #0
 641 0026 10BD     		pop	{r4, pc}
 642              	.L149:
 643              		.align	2
 644              	.L148:
 645 0028 000A0E40 		.word	1074661888
 646              		.size	flash_set_gpnvm, .-flash_set_gpnvm
 647              		.section	.text.flash_clear_gpnvm,"ax",%progbits
 648              		.align	1
 649              		.p2align 2,,3
 650              		.global	flash_clear_gpnvm
 651              		.syntax unified
 652              		.thumb
 653              		.thumb_func
 654              		.fpu softvfp
 655              		.type	flash_clear_gpnvm, %function
 656              	flash_clear_gpnvm:
 657              		@ args = 0, pretend = 0, frame = 0
 658              		@ frame_needed = 0, uses_anonymous_args = 0
 659 0000 0128     		cmp	r0, #1
 660 0002 01D9     		bls	.L162
 661 0004 1120     		movs	r0, #17
 662 0006 7047     		bx	lr
 663              	.L162:
 664 0008 10B5     		push	{r4, lr}
 665 000a 0446     		mov	r4, r0
 666 000c FFF7FEFF 		bl	flash_is_gpnvm_set
 667 0010 08B9     		cbnz	r0, .L152
 668              	.L153:
 669 0012 0020     		movs	r0, #0
 670 0014 10BD     		pop	{r4, pc}
 671              	.L152:
 672 0016 2246     		mov	r2, r4
 673 0018 0C21     		movs	r1, #12
 674 001a 0348     		ldr	r0, .L163
 675 001c FFF7FEFF 		bl	efc_perform_command
 676 0020 0028     		cmp	r0, #0
 677 0022 F6D0     		beq	.L153
 678 0024 1020     		movs	r0, #16
 679 0026 10BD     		pop	{r4, pc}
 680              	.L164:
 681              		.align	2
 682              	.L163:
 683 0028 000A0E40 		.word	1074661888
 684              		.size	flash_clear_gpnvm, .-flash_clear_gpnvm
ARM GAS  /tmp/ccQRF7Tq.s 			page 13


 685              		.section	.text.flash_enable_security_bit,"ax",%progbits
 686              		.align	1
 687              		.p2align 2,,3
 688              		.global	flash_enable_security_bit
 689              		.syntax unified
 690              		.thumb
 691              		.thumb_func
 692              		.fpu softvfp
 693              		.type	flash_enable_security_bit, %function
 694              	flash_enable_security_bit:
 695              		@ args = 0, pretend = 0, frame = 0
 696              		@ frame_needed = 0, uses_anonymous_args = 0
 697              		@ link register save eliminated.
 698 0000 0020     		movs	r0, #0
 699 0002 FFF7FEBF 		b	flash_set_gpnvm
 700              		.size	flash_enable_security_bit, .-flash_enable_security_bit
 701 0006 00BF     		.section	.text.flash_is_security_bit_enabled,"ax",%progbits
 702              		.align	1
 703              		.p2align 2,,3
 704              		.global	flash_is_security_bit_enabled
 705              		.syntax unified
 706              		.thumb
 707              		.thumb_func
 708              		.fpu softvfp
 709              		.type	flash_is_security_bit_enabled, %function
 710              	flash_is_security_bit_enabled:
 711              		@ args = 0, pretend = 0, frame = 0
 712              		@ frame_needed = 0, uses_anonymous_args = 0
 713              		@ link register save eliminated.
 714 0000 0020     		movs	r0, #0
 715 0002 FFF7FEBF 		b	flash_is_gpnvm_set
 716              		.size	flash_is_security_bit_enabled, .-flash_is_security_bit_enabled
 717 0006 00BF     		.section	.text.flash_read_unique_id,"ax",%progbits
 718              		.align	1
 719              		.p2align 2,,3
 720              		.global	flash_read_unique_id
 721              		.syntax unified
 722              		.thumb
 723              		.thumb_func
 724              		.fpu softvfp
 725              		.type	flash_read_unique_id, %function
 726              	flash_read_unique_id:
 727              		@ args = 0, pretend = 0, frame = 16
 728              		@ frame_needed = 0, uses_anonymous_args = 0
 729 0000 30B5     		push	{r4, r5, lr}
 730 0002 87B0     		sub	sp, sp, #28
 731 0004 0422     		movs	r2, #4
 732 0006 0446     		mov	r4, r0
 733 0008 0D46     		mov	r5, r1
 734 000a 0092     		str	r2, [sp]
 735 000c 02AB     		add	r3, sp, #8
 736 000e 0F22     		movs	r2, #15
 737 0010 0E21     		movs	r1, #14
 738 0012 0C48     		ldr	r0, .L176
 739 0014 FFF7FEFF 		bl	efc_perform_read_sequence
 740 0018 10B1     		cbz	r0, .L175
 741 001a 1020     		movs	r0, #16
ARM GAS  /tmp/ccQRF7Tq.s 			page 14


 742              	.L167:
 743 001c 07B0     		add	sp, sp, #28
 744              		@ sp needed
 745 001e 30BD     		pop	{r4, r5, pc}
 746              	.L175:
 747 0020 042D     		cmp	r5, #4
 748 0022 28BF     		it	cs
 749 0024 0425     		movcs	r5, #4
 750 0026 002D     		cmp	r5, #0
 751 0028 F8D0     		beq	.L167
 752 002a 2346     		mov	r3, r4
 753 002c 04EB8501 		add	r1, r4, r5, lsl #2
 754 0030 02AA     		add	r2, sp, #8
 755              	.L170:
 756 0032 52F8044B 		ldr	r4, [r2], #4
 757 0036 43F8044B 		str	r4, [r3], #4
 758 003a 8B42     		cmp	r3, r1
 759 003c F9D1     		bne	.L170
 760 003e 07B0     		add	sp, sp, #28
 761              		@ sp needed
 762 0040 30BD     		pop	{r4, r5, pc}
 763              	.L177:
 764 0042 00BF     		.align	2
 765              	.L176:
 766 0044 000A0E40 		.word	1074661888
 767              		.size	flash_read_unique_id, .-flash_read_unique_id
 768              		.section	.text.flash_read_user_signature,"ax",%progbits
 769              		.align	1
 770              		.p2align 2,,3
 771              		.global	flash_read_user_signature
 772              		.syntax unified
 773              		.thumb
 774              		.thumb_func
 775              		.fpu softvfp
 776              		.type	flash_read_user_signature, %function
 777              	flash_read_user_signature:
 778              		@ args = 0, pretend = 0, frame = 0
 779              		@ frame_needed = 0, uses_anonymous_args = 0
 780 0000 00B5     		push	{lr}
 781 0002 8029     		cmp	r1, #128
 782 0004 83B0     		sub	sp, sp, #12
 783 0006 28BF     		it	cs
 784 0008 8021     		movcs	r1, #128
 785 000a 0091     		str	r1, [sp]
 786 000c 0346     		mov	r3, r0
 787 000e 1522     		movs	r2, #21
 788 0010 1421     		movs	r1, #20
 789 0012 0548     		ldr	r0, .L182
 790 0014 FFF7FEFF 		bl	efc_perform_read_sequence
 791 0018 0028     		cmp	r0, #0
 792 001a 14BF     		ite	ne
 793 001c 1020     		movne	r0, #16
 794 001e 0020     		moveq	r0, #0
 795 0020 03B0     		add	sp, sp, #12
 796              		@ sp needed
 797 0022 5DF804FB 		ldr	pc, [sp], #4
 798              	.L183:
ARM GAS  /tmp/ccQRF7Tq.s 			page 15


 799 0026 00BF     		.align	2
 800              	.L182:
 801 0028 000A0E40 		.word	1074661888
 802              		.size	flash_read_user_signature, .-flash_read_user_signature
 803              		.section	.text.flash_write_user_signature,"ax",%progbits
 804              		.align	1
 805              		.p2align 2,,3
 806              		.global	flash_write_user_signature
 807              		.syntax unified
 808              		.thumb
 809              		.thumb_func
 810              		.fpu softvfp
 811              		.type	flash_write_user_signature, %function
 812              	flash_write_user_signature:
 813              		@ args = 0, pretend = 0, frame = 0
 814              		@ frame_needed = 0, uses_anonymous_args = 0
 815 0000 8029     		cmp	r1, #128
 816 0002 01D9     		bls	.L194
 817 0004 1120     		movs	r0, #17
 818 0006 7047     		bx	lr
 819              	.L194:
 820 0008 8A00     		lsls	r2, r1, #2
 821 000a 08B5     		push	{r3, lr}
 822 000c 0146     		mov	r1, r0
 823 000e 0B48     		ldr	r0, .L195
 824 0010 FFF7FEFF 		bl	memcpy
 825 0014 0A4B     		ldr	r3, .L195+4
 826 0016 0B4A     		ldr	r2, .L195+8
 827 0018 03F50070 		add	r0, r3, #512
 828              	.L186:
 829 001c 53F8041F 		ldr	r1, [r3, #4]!
 830 0020 42F8041F 		str	r1, [r2, #4]!
 831 0024 8342     		cmp	r3, r0
 832 0026 F9D1     		bne	.L186
 833 0028 0022     		movs	r2, #0
 834 002a 1221     		movs	r1, #18
 835 002c 0648     		ldr	r0, .L195+12
 836 002e FFF7FEFF 		bl	efc_perform_command
 837 0032 0028     		cmp	r0, #0
 838 0034 14BF     		ite	ne
 839 0036 1020     		movne	r0, #16
 840 0038 0020     		moveq	r0, #0
 841 003a 08BD     		pop	{r3, pc}
 842              	.L196:
 843              		.align	2
 844              	.L195:
 845 003c 00000000 		.word	.LANCHOR0
 846 0040 FCFFFFFF 		.word	.LANCHOR0-4
 847 0044 FCFF3F00 		.word	4194300
 848 0048 000A0E40 		.word	1074661888
 849              		.size	flash_write_user_signature, .-flash_write_user_signature
 850              		.section	.text.flash_erase_user_signature,"ax",%progbits
 851              		.align	1
 852              		.p2align 2,,3
 853              		.global	flash_erase_user_signature
 854              		.syntax unified
 855              		.thumb
ARM GAS  /tmp/ccQRF7Tq.s 			page 16


 856              		.thumb_func
 857              		.fpu softvfp
 858              		.type	flash_erase_user_signature, %function
 859              	flash_erase_user_signature:
 860              		@ args = 0, pretend = 0, frame = 0
 861              		@ frame_needed = 0, uses_anonymous_args = 0
 862              		@ link register save eliminated.
 863 0000 0022     		movs	r2, #0
 864 0002 1321     		movs	r1, #19
 865 0004 0148     		ldr	r0, .L198
 866 0006 FFF7FEBF 		b	efc_perform_command
 867              	.L199:
 868 000a 00BF     		.align	2
 869              	.L198:
 870 000c 000A0E40 		.word	1074661888
 871              		.size	flash_erase_user_signature, .-flash_erase_user_signature
 872              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 873              		.align	2
 874              		.type	cpu_irq_critical_section_counter, %object
 875              		.size	cpu_irq_critical_section_counter, 4
 876              	cpu_irq_critical_section_counter:
 877 0000 00000000 		.space	4
 878              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 879              		.type	cpu_irq_prev_interrupt_state, %object
 880              		.size	cpu_irq_prev_interrupt_state, 1
 881              	cpu_irq_prev_interrupt_state:
 882 0000 00       		.space	1
 883              		.section	.bss.gs_ul_page_buffer,"aw",%nobits
 884              		.align	2
 885              		.set	.LANCHOR0,. + 0
 886              		.type	gs_ul_page_buffer, %object
 887              		.size	gs_ul_page_buffer, 512
 888              	gs_ul_page_buffer:
 889 0000 00000000 		.space	512
 889      00000000 
 889      00000000 
 889      00000000 
 889      00000000 
 890              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
