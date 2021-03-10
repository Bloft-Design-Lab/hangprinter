ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccL3RYXC.s 			page 1


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
  14              		.text
  15              		.section	.text.flash_init,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	flash_init
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	flash_init, %function
  24              	flash_init:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 08B5     		push	{r3, lr}
  28 0002 0A46     		mov	r2, r1
  29 0004 0146     		mov	r1, r0
  30 0006 0248     		ldr	r0, .L4
  31 0008 FFF7FEFF 		bl	efc_init
  32 000c 0020     		movs	r0, #0
  33 000e 08BD     		pop	{r3, pc}
  34              	.L5:
  35              		.align	2
  36              	.L4:
  37 0010 000A0E40 		.word	1074661888
  38              		.size	flash_init, .-flash_init
  39              		.section	.text.flash_set_wait_state,"ax",%progbits
  40              		.align	1
  41              		.p2align 2,,3
  42              		.global	flash_set_wait_state
  43              		.syntax unified
  44              		.thumb
  45              		.thumb_func
  46              		.fpu fpv4-sp-d16
  47              		.type	flash_set_wait_state, %function
  48              	flash_set_wait_state:
  49              		@ args = 0, pretend = 0, frame = 0
  50              		@ frame_needed = 0, uses_anonymous_args = 0
  51 0000 08B5     		push	{r3, lr}
  52 0002 0248     		ldr	r0, .L8
  53 0004 FFF7FEFF 		bl	efc_set_wait_state
  54 0008 0020     		movs	r0, #0
  55 000a 08BD     		pop	{r3, pc}
  56              	.L9:
  57              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccL3RYXC.s 			page 2


  58              	.L8:
  59 000c 000A0E40 		.word	1074661888
  60              		.size	flash_set_wait_state, .-flash_set_wait_state
  61              		.section	.text.flash_set_wait_state_adaptively,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.global	flash_set_wait_state_adaptively
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv4-sp-d16
  69              		.type	flash_set_wait_state_adaptively, %function
  70              	flash_set_wait_state_adaptively:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73 0000 08B5     		push	{r3, lr}
  74 0002 0521     		movs	r1, #5
  75 0004 0248     		ldr	r0, .L12
  76 0006 FFF7FEFF 		bl	efc_set_wait_state
  77 000a 0020     		movs	r0, #0
  78 000c 08BD     		pop	{r3, pc}
  79              	.L13:
  80 000e 00BF     		.align	2
  81              	.L12:
  82 0010 000A0E40 		.word	1074661888
  83              		.size	flash_set_wait_state_adaptively, .-flash_set_wait_state_adaptively
  84              		.section	.text.flash_get_wait_state,"ax",%progbits
  85              		.align	1
  86              		.p2align 2,,3
  87              		.global	flash_get_wait_state
  88              		.syntax unified
  89              		.thumb
  90              		.thumb_func
  91              		.fpu fpv4-sp-d16
  92              		.type	flash_get_wait_state, %function
  93              	flash_get_wait_state:
  94              		@ args = 0, pretend = 0, frame = 0
  95              		@ frame_needed = 0, uses_anonymous_args = 0
  96              		@ link register save eliminated.
  97 0000 0148     		ldr	r0, .L15
  98 0002 FFF7FEBF 		b	efc_get_wait_state
  99              	.L16:
 100 0006 00BF     		.align	2
 101              	.L15:
 102 0008 000A0E40 		.word	1074661888
 103              		.size	flash_get_wait_state, .-flash_get_wait_state
 104              		.section	.text.flash_get_descriptor,"ax",%progbits
 105              		.align	1
 106              		.p2align 2,,3
 107              		.global	flash_get_descriptor
 108              		.syntax unified
 109              		.thumb
 110              		.thumb_func
 111              		.fpu fpv4-sp-d16
 112              		.type	flash_get_descriptor, %function
 113              	flash_get_descriptor:
 114              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccL3RYXC.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 117 0002 1646     		mov	r6, r2
 118 0004 0022     		movs	r2, #0
 119 0006 0D46     		mov	r5, r1
 120 0008 0A48     		ldr	r0, .L26
 121 000a 1146     		mov	r1, r2
 122 000c FFF7FEFF 		bl	efc_perform_command
 123 0010 68B9     		cbnz	r0, .L20
 124 0012 0446     		mov	r4, r0
 125 0014 074F     		ldr	r7, .L26
 126 0016 03E0     		b	.L19
 127              	.L25:
 128 0018 38B1     		cbz	r0, .L17
 129 001a 45F8040B 		str	r0, [r5], #4
 130 001e 0134     		adds	r4, r4, #1
 131              	.L19:
 132 0020 3846     		mov	r0, r7
 133 0022 FFF7FEFF 		bl	efc_get_result
 134 0026 B442     		cmp	r4, r6
 135 0028 F6D1     		bne	.L25
 136              	.L17:
 137 002a 2046     		mov	r0, r4
 138 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 139              	.L20:
 140 002e 0024     		movs	r4, #0
 141 0030 2046     		mov	r0, r4
 142 0032 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 143              	.L27:
 144              		.align	2
 145              	.L26:
 146 0034 000A0E40 		.word	1074661888
 147              		.size	flash_get_descriptor, .-flash_get_descriptor
 148              		.section	.text.flash_get_page_count,"ax",%progbits
 149              		.align	1
 150              		.p2align 2,,3
 151              		.global	flash_get_page_count
 152              		.syntax unified
 153              		.thumb
 154              		.thumb_func
 155              		.fpu fpv4-sp-d16
 156              		.type	flash_get_page_count, %function
 157              	flash_get_page_count:
 158              		@ args = 0, pretend = 0, frame = 0
 159              		@ frame_needed = 0, uses_anonymous_args = 0
 160              		@ link register save eliminated.
 161 0000 D0E90120 		ldrd	r2, r0, [r0, #4]
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccL3RYXC.s 			page 4


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccL3RYXC.s 			page 5


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
 239 0002 14D8     		bhi	.L39
 240 0004 08B5     		push	{r3, lr}
 241 0006 C0F30803 		ubfx	r3, r0, #0, #9
 242 000a 73B9     		cbnz	r3, .L40
 243 000c A0F58000 		sub	r0, r0, #4194304
 244 0010 C0F34F20 		ubfx	r0, r0, #9, #16
 245 0014 40EA0102 		orr	r2, r0, r1
 246 0018 0721     		movs	r1, #7
 247 001a 0648     		ldr	r0, .L46
 248 001c FFF7FEFF 		bl	efc_perform_command
 249 0020 0028     		cmp	r0, #0
 250 0022 14BF     		ite	ne
 251 0024 1020     		movne	r0, #16
 252 0026 0020     		moveq	r0, #0
 253 0028 08BD     		pop	{r3, pc}
 254              	.L40:
 255 002a 1120     		movs	r0, #17
 256 002c 08BD     		pop	{r3, pc}
 257              	.L39:
 258 002e 1120     		movs	r0, #17
 259 0030 7047     		bx	lr
 260              	.L47:
 261 0032 00BF     		.align	2
 262              	.L46:
 263 0034 000A0E40 		.word	1074661888
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
 281 000c 0348     		ldr	r0, .L52
 282 000e FFF7FEFF 		bl	efc_perform_command
 283 0012 0028     		cmp	r0, #0
 284 0014 14BF     		ite	ne
 285 0016 1020     		movne	r0, #16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccL3RYXC.s 			page 6


 286 0018 0020     		moveq	r0, #0
 287 001a 08BD     		pop	{r3, pc}
 288              	.L53:
 289              		.align	2
 290              	.L52:
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
 303              		@ args = 0, pretend = 0, frame = 16
 304              		@ frame_needed = 0, uses_anonymous_args = 0
 305 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 306 0004 85B0     		sub	sp, sp, #20
 307 0006 A0F58008 		sub	r8, r0, #4194304
 308 000a 0191     		str	r1, [sp, #4]
 309 000c 0393     		str	r3, [sp, #12]
 310 000e C8F34F28 		ubfx	r8, r8, #9, #16
 311 0012 C0F30806 		ubfx	r6, r0, #0, #9
 312 0016 002A     		cmp	r2, #0
 313 0018 41D0     		beq	.L55
 314 001a DFF894A0 		ldr	r10, .L68
 315 001e 9146     		mov	r9, r2
 316 0020 0AF50075 		add	r5, r10, #512
 317 0024 D346     		mov	fp, r10
 318              	.L60:
 319 0026 C6F50073 		rsb	r3, r6, #512
 320 002a 08F50054 		add	r4, r8, #8192
 321 002e 4B45     		cmp	r3, r9
 322 0030 4FEA4424 		lsl	r4, r4, #9
 323 0034 1F46     		mov	r7, r3
 324 0036 2146     		mov	r1, r4
 325 0038 28BF     		it	cs
 326 003a 4F46     		movcs	r7, r9
 327 003c 3246     		mov	r2, r6
 328 003e 5846     		mov	r0, fp
 329 0040 0293     		str	r3, [sp, #8]
 330 0042 FFF7FEFF 		bl	memcpy
 331 0046 3A46     		mov	r2, r7
 332 0048 0199     		ldr	r1, [sp, #4]
 333 004a 0AEB0600 		add	r0, r10, r6
 334 004e FFF7FEFF 		bl	memcpy
 335 0052 029B     		ldr	r3, [sp, #8]
 336 0054 3919     		adds	r1, r7, r4
 337 0056 DB1B     		subs	r3, r3, r7
 338 0058 F019     		adds	r0, r6, r7
 339 005a 9AB2     		uxth	r2, r3
 340 005c 5044     		add	r0, r0, r10
 341 005e 3144     		add	r1, r1, r6
 342 0060 FFF7FEFF 		bl	memcpy
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccL3RYXC.s 			page 7


 343 0064 124B     		ldr	r3, .L68
 344 0066 A4EB0B04 		sub	r4, r4, fp
 345 006a DA46     		mov	r10, fp
 346              	.L56:
 347 006c E218     		adds	r2, r4, r3
 348 006e 53F8041B 		ldr	r1, [r3], #4
 349 0072 1160     		str	r1, [r2]
 350 0074 9D42     		cmp	r5, r3
 351 0076 F9D1     		bne	.L56
 352 0078 039B     		ldr	r3, [sp, #12]
 353 007a 4246     		mov	r2, r8
 354 007c 9BB1     		cbz	r3, .L57
 355 007e 0321     		movs	r1, #3
 356 0080 0C48     		ldr	r0, .L68+4
 357 0082 FFF7FEFF 		bl	efc_perform_command
 358              	.L58:
 359 0086 58B9     		cbnz	r0, .L54
 360 0088 019B     		ldr	r3, [sp, #4]
 361 008a 08F10108 		add	r8, r8, #1
 362 008e 3B44     		add	r3, r3, r7
 363 0090 B9EB0709 		subs	r9, r9, r7
 364 0094 1FFA88F8 		uxth	r8, r8
 365 0098 0193     		str	r3, [sp, #4]
 366 009a 0646     		mov	r6, r0
 367 009c C3D1     		bne	.L60
 368              	.L55:
 369 009e 0020     		movs	r0, #0
 370              	.L54:
 371 00a0 05B0     		add	sp, sp, #20
 372              		@ sp needed
 373 00a2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 374              	.L57:
 375 00a6 0121     		movs	r1, #1
 376 00a8 0248     		ldr	r0, .L68+4
 377 00aa FFF7FEFF 		bl	efc_perform_command
 378 00ae EAE7     		b	.L58
 379              	.L69:
 380              		.align	2
 381              	.L68:
 382 00b0 00000000 		.word	.LANCHOR0
 383 00b4 000A0E40 		.word	1074661888
 384              		.size	flash_write, .-flash_write
 385              		.section	.text.flash_lock,"ax",%progbits
 386              		.align	1
 387              		.p2align 2,,3
 388              		.global	flash_lock
 389              		.syntax unified
 390              		.thumb
 391              		.thumb_func
 392              		.fpu fpv4-sp-d16
 393              		.type	flash_lock, %function
 394              	flash_lock:
 395              		@ args = 0, pretend = 0, frame = 0
 396              		@ frame_needed = 0, uses_anonymous_args = 0
 397 0000 70B5     		push	{r4, r5, r6, lr}
 398 0002 124C     		ldr	r4, .L85
 399 0004 2040     		ands	r0, r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccL3RYXC.s 			page 8


 400 0006 2140     		ands	r1, r1, r4
 401 0008 02B1     		cbz	r2, .L71
 402 000a 1060     		str	r0, [r2]
 403              	.L71:
 404 000c 1BB1     		cbz	r3, .L72
 405 000e 01F5FF52 		add	r2, r1, #8160
 406 0012 1F32     		adds	r2, r2, #31
 407 0014 1A60     		str	r2, [r3]
 408              	.L72:
 409 0016 0E4D     		ldr	r5, .L85+4
 410 0018 A0F58004 		sub	r4, r0, #4194304
 411 001c 640A     		lsrs	r4, r4, #9
 412 001e 0D44     		add	r5, r5, r1
 413 0020 A4B2     		uxth	r4, r4
 414 0022 C5F34F25 		ubfx	r5, r5, #9, #16
 415 0026 A542     		cmp	r5, r4
 416 0028 0DD9     		bls	.L73
 417 002a 0A4E     		ldr	r6, .L85+8
 418 002c 01E0     		b	.L75
 419              	.L84:
 420 002e AC42     		cmp	r4, r5
 421 0030 09D2     		bcs	.L73
 422              	.L75:
 423 0032 2246     		mov	r2, r4
 424 0034 0821     		movs	r1, #8
 425 0036 3046     		mov	r0, r6
 426 0038 FFF7FEFF 		bl	efc_perform_command
 427 003c 1034     		adds	r4, r4, #16
 428 003e A4B2     		uxth	r4, r4
 429 0040 0028     		cmp	r0, #0
 430 0042 F4D0     		beq	.L84
 431 0044 70BD     		pop	{r4, r5, r6, pc}
 432              	.L73:
 433 0046 0020     		movs	r0, #0
 434 0048 70BD     		pop	{r4, r5, r6, pc}
 435              	.L86:
 436 004a 00BF     		.align	2
 437              	.L85:
 438 004c 00E0FFFF 		.word	-8192
 439 0050 FF1FC0FF 		.word	-4186113
 440 0054 000A0E40 		.word	1074661888
 441              		.size	flash_lock, .-flash_lock
 442              		.section	.text.flash_unlock,"ax",%progbits
 443              		.align	1
 444              		.p2align 2,,3
 445              		.global	flash_unlock
 446              		.syntax unified
 447              		.thumb
 448              		.thumb_func
 449              		.fpu fpv4-sp-d16
 450              		.type	flash_unlock, %function
 451              	flash_unlock:
 452              		@ args = 0, pretend = 0, frame = 0
 453              		@ frame_needed = 0, uses_anonymous_args = 0
 454 0000 70B5     		push	{r4, r5, r6, lr}
 455 0002 124C     		ldr	r4, .L102
 456 0004 2040     		ands	r0, r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccL3RYXC.s 			page 9


 457 0006 2140     		ands	r1, r1, r4
 458 0008 02B1     		cbz	r2, .L88
 459 000a 1060     		str	r0, [r2]
 460              	.L88:
 461 000c 1BB1     		cbz	r3, .L89
 462 000e 01F5FF52 		add	r2, r1, #8160
 463 0012 1F32     		adds	r2, r2, #31
 464 0014 1A60     		str	r2, [r3]
 465              	.L89:
 466 0016 0E4D     		ldr	r5, .L102+4
 467 0018 A0F58004 		sub	r4, r0, #4194304
 468 001c 640A     		lsrs	r4, r4, #9
 469 001e 0D44     		add	r5, r5, r1
 470 0020 A4B2     		uxth	r4, r4
 471 0022 C5F34F25 		ubfx	r5, r5, #9, #16
 472 0026 A542     		cmp	r5, r4
 473 0028 0DD9     		bls	.L90
 474 002a 0A4E     		ldr	r6, .L102+8
 475 002c 01E0     		b	.L92
 476              	.L101:
 477 002e AC42     		cmp	r4, r5
 478 0030 09D2     		bcs	.L90
 479              	.L92:
 480 0032 2246     		mov	r2, r4
 481 0034 0921     		movs	r1, #9
 482 0036 3046     		mov	r0, r6
 483 0038 FFF7FEFF 		bl	efc_perform_command
 484 003c 1034     		adds	r4, r4, #16
 485 003e A4B2     		uxth	r4, r4
 486 0040 0028     		cmp	r0, #0
 487 0042 F4D0     		beq	.L101
 488 0044 70BD     		pop	{r4, r5, r6, pc}
 489              	.L90:
 490 0046 0020     		movs	r0, #0
 491 0048 70BD     		pop	{r4, r5, r6, pc}
 492              	.L103:
 493 004a 00BF     		.align	2
 494              	.L102:
 495 004c 00E0FFFF 		.word	-8192
 496 0050 FF1FC0FF 		.word	-4186113
 497 0054 000A0E40 		.word	1074661888
 498              		.size	flash_unlock, .-flash_unlock
 499              		.section	.text.flash_is_locked,"ax",%progbits
 500              		.align	1
 501              		.p2align 2,,3
 502              		.global	flash_is_locked
 503              		.syntax unified
 504              		.thumb
 505              		.thumb_func
 506              		.fpu fpv4-sp-d16
 507              		.type	flash_is_locked, %function
 508              	flash_is_locked:
 509              		@ args = 0, pretend = 0, frame = 0
 510              		@ frame_needed = 0, uses_anonymous_args = 0
 511 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 512 0002 0022     		movs	r2, #0
 513 0004 0546     		mov	r5, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccL3RYXC.s 			page 10


 514 0006 0E46     		mov	r6, r1
 515 0008 1C48     		ldr	r0, .L121
 516 000a 0A21     		movs	r1, #10
 517 000c FFF7FEFF 		bl	efc_perform_command
 518 0010 0446     		mov	r4, r0
 519 0012 08B1     		cbz	r0, .L119
 520              	.L104:
 521 0014 2046     		mov	r0, r4
 522 0016 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 523              	.L119:
 524 0018 1848     		ldr	r0, .L121
 525 001a C5F34735 		ubfx	r5, r5, #13, #8
 526 001e 0746     		mov	r7, r0
 527 0020 FFF7FEFF 		bl	efc_get_result
 528 0024 2346     		mov	r3, r4
 529 0026 03E0     		b	.L106
 530              	.L107:
 531 0028 3846     		mov	r0, r7
 532 002a FFF7FEFF 		bl	efc_get_result
 533 002e 2346     		mov	r3, r4
 534              	.L106:
 535 0030 AB42     		cmp	r3, r5
 536 0032 03F12004 		add	r4, r3, #32
 537 0036 F7D8     		bhi	.L107
 538 0038 AC42     		cmp	r4, r5
 539 003a F5D9     		bls	.L107
 540 003c C6F34734 		ubfx	r4, r6, #13, #8
 541 0040 641B     		subs	r4, r4, r5
 542 0042 EB1A     		subs	r3, r5, r3
 543 0044 651C     		adds	r5, r4, #1
 544 0046 17D0     		beq	.L111
 545 0048 0C4F     		ldr	r7, .L121
 546 004a 0024     		movs	r4, #0
 547 004c 0126     		movs	r6, #1
 548              	.L110:
 549 004e 06FA03F2 		lsl	r2, r6, r3
 550 0052 0242     		tst	r2, r0
 551 0054 03F10103 		add	r3, r3, #1
 552 0058 18BF     		it	ne
 553 005a 0134     		addne	r4, r4, #1
 554 005c 202B     		cmp	r3, #32
 555 005e 05F1FF35 		add	r5, r5, #-1
 556 0062 02D0     		beq	.L120
 557 0064 002D     		cmp	r5, #0
 558 0066 F2D1     		bne	.L110
 559 0068 D4E7     		b	.L104
 560              	.L120:
 561 006a 3846     		mov	r0, r7
 562 006c FFF7FEFF 		bl	efc_get_result
 563 0070 0023     		movs	r3, #0
 564 0072 002D     		cmp	r5, #0
 565 0074 EBD1     		bne	.L110
 566 0076 CDE7     		b	.L104
 567              	.L111:
 568 0078 2C46     		mov	r4, r5
 569 007a CBE7     		b	.L104
 570              	.L122:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccL3RYXC.s 			page 11


 571              		.align	2
 572              	.L121:
 573 007c 000A0E40 		.word	1074661888
 574              		.size	flash_is_locked, .-flash_is_locked
 575              		.section	.text.flash_is_gpnvm_set,"ax",%progbits
 576              		.align	1
 577              		.p2align 2,,3
 578              		.global	flash_is_gpnvm_set
 579              		.syntax unified
 580              		.thumb
 581              		.thumb_func
 582              		.fpu fpv4-sp-d16
 583              		.type	flash_is_gpnvm_set, %function
 584              	flash_is_gpnvm_set:
 585              		@ args = 0, pretend = 0, frame = 0
 586              		@ frame_needed = 0, uses_anonymous_args = 0
 587 0000 0128     		cmp	r0, #1
 588 0002 01D9     		bls	.L131
 589 0004 1120     		movs	r0, #17
 590 0006 7047     		bx	lr
 591              	.L131:
 592 0008 10B5     		push	{r4, lr}
 593 000a 0022     		movs	r2, #0
 594 000c 0446     		mov	r4, r0
 595 000e 0D21     		movs	r1, #13
 596 0010 0848     		ldr	r0, .L132
 597 0012 FFF7FEFF 		bl	efc_perform_command
 598 0016 50B9     		cbnz	r0, .L126
 599 0018 0648     		ldr	r0, .L132
 600 001a FFF7FEFF 		bl	efc_get_result
 601 001e 0123     		movs	r3, #1
 602 0020 03FA04F4 		lsl	r4, r3, r4
 603 0024 0442     		tst	r4, r0
 604 0026 14BF     		ite	ne
 605 0028 1846     		movne	r0, r3
 606 002a 0020     		moveq	r0, #0
 607 002c 10BD     		pop	{r4, pc}
 608              	.L126:
 609 002e 1020     		movs	r0, #16
 610 0030 10BD     		pop	{r4, pc}
 611              	.L133:
 612 0032 00BF     		.align	2
 613              	.L132:
 614 0034 000A0E40 		.word	1074661888
 615              		.size	flash_is_gpnvm_set, .-flash_is_gpnvm_set
 616              		.section	.text.flash_set_gpnvm,"ax",%progbits
 617              		.align	1
 618              		.p2align 2,,3
 619              		.global	flash_set_gpnvm
 620              		.syntax unified
 621              		.thumb
 622              		.thumb_func
 623              		.fpu fpv4-sp-d16
 624              		.type	flash_set_gpnvm, %function
 625              	flash_set_gpnvm:
 626              		@ args = 0, pretend = 0, frame = 0
 627              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccL3RYXC.s 			page 12


 628 0000 0128     		cmp	r0, #1
 629 0002 01D9     		bls	.L146
 630 0004 1120     		movs	r0, #17
 631 0006 7047     		bx	lr
 632              	.L146:
 633 0008 10B5     		push	{r4, lr}
 634 000a 0446     		mov	r4, r0
 635 000c FFF7FEFF 		bl	flash_is_gpnvm_set
 636 0010 0128     		cmp	r0, #1
 637 0012 05D0     		beq	.L137
 638 0014 2246     		mov	r2, r4
 639 0016 0B21     		movs	r1, #11
 640 0018 0348     		ldr	r0, .L148
 641 001a FFF7FEFF 		bl	efc_perform_command
 642 001e 08B9     		cbnz	r0, .L147
 643              	.L137:
 644 0020 0020     		movs	r0, #0
 645 0022 10BD     		pop	{r4, pc}
 646              	.L147:
 647 0024 1020     		movs	r0, #16
 648 0026 10BD     		pop	{r4, pc}
 649              	.L149:
 650              		.align	2
 651              	.L148:
 652 0028 000A0E40 		.word	1074661888
 653              		.size	flash_set_gpnvm, .-flash_set_gpnvm
 654              		.section	.text.flash_clear_gpnvm,"ax",%progbits
 655              		.align	1
 656              		.p2align 2,,3
 657              		.global	flash_clear_gpnvm
 658              		.syntax unified
 659              		.thumb
 660              		.thumb_func
 661              		.fpu fpv4-sp-d16
 662              		.type	flash_clear_gpnvm, %function
 663              	flash_clear_gpnvm:
 664              		@ args = 0, pretend = 0, frame = 0
 665              		@ frame_needed = 0, uses_anonymous_args = 0
 666 0000 0128     		cmp	r0, #1
 667 0002 01D9     		bls	.L162
 668 0004 1120     		movs	r0, #17
 669 0006 7047     		bx	lr
 670              	.L162:
 671 0008 10B5     		push	{r4, lr}
 672 000a 0446     		mov	r4, r0
 673 000c FFF7FEFF 		bl	flash_is_gpnvm_set
 674 0010 08B9     		cbnz	r0, .L152
 675              	.L153:
 676 0012 0020     		movs	r0, #0
 677 0014 10BD     		pop	{r4, pc}
 678              	.L152:
 679 0016 2246     		mov	r2, r4
 680 0018 0C21     		movs	r1, #12
 681 001a 0348     		ldr	r0, .L163
 682 001c FFF7FEFF 		bl	efc_perform_command
 683 0020 0028     		cmp	r0, #0
 684 0022 F6D0     		beq	.L153
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccL3RYXC.s 			page 13


 685 0024 1020     		movs	r0, #16
 686 0026 10BD     		pop	{r4, pc}
 687              	.L164:
 688              		.align	2
 689              	.L163:
 690 0028 000A0E40 		.word	1074661888
 691              		.size	flash_clear_gpnvm, .-flash_clear_gpnvm
 692              		.section	.text.flash_enable_security_bit,"ax",%progbits
 693              		.align	1
 694              		.p2align 2,,3
 695              		.global	flash_enable_security_bit
 696              		.syntax unified
 697              		.thumb
 698              		.thumb_func
 699              		.fpu fpv4-sp-d16
 700              		.type	flash_enable_security_bit, %function
 701              	flash_enable_security_bit:
 702              		@ args = 0, pretend = 0, frame = 0
 703              		@ frame_needed = 0, uses_anonymous_args = 0
 704              		@ link register save eliminated.
 705 0000 0020     		movs	r0, #0
 706 0002 FFF7FEBF 		b	flash_set_gpnvm
 707              		.size	flash_enable_security_bit, .-flash_enable_security_bit
 708 0006 00BF     		.section	.text.flash_is_security_bit_enabled,"ax",%progbits
 709              		.align	1
 710              		.p2align 2,,3
 711              		.global	flash_is_security_bit_enabled
 712              		.syntax unified
 713              		.thumb
 714              		.thumb_func
 715              		.fpu fpv4-sp-d16
 716              		.type	flash_is_security_bit_enabled, %function
 717              	flash_is_security_bit_enabled:
 718              		@ args = 0, pretend = 0, frame = 0
 719              		@ frame_needed = 0, uses_anonymous_args = 0
 720              		@ link register save eliminated.
 721 0000 0020     		movs	r0, #0
 722 0002 FFF7FEBF 		b	flash_is_gpnvm_set
 723              		.size	flash_is_security_bit_enabled, .-flash_is_security_bit_enabled
 724 0006 00BF     		.section	.text.flash_read_unique_id,"ax",%progbits
 725              		.align	1
 726              		.p2align 2,,3
 727              		.global	flash_read_unique_id
 728              		.syntax unified
 729              		.thumb
 730              		.thumb_func
 731              		.fpu fpv4-sp-d16
 732              		.type	flash_read_unique_id, %function
 733              	flash_read_unique_id:
 734              		@ args = 0, pretend = 0, frame = 16
 735              		@ frame_needed = 0, uses_anonymous_args = 0
 736 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 737 0002 87B0     		sub	sp, sp, #28
 738 0004 0422     		movs	r2, #4
 739 0006 02AD     		add	r5, sp, #8
 740 0008 0446     		mov	r4, r0
 741 000a 0F46     		mov	r7, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccL3RYXC.s 			page 14


 742 000c 0092     		str	r2, [sp]
 743 000e 2B46     		mov	r3, r5
 744 0010 0F22     		movs	r2, #15
 745 0012 0E21     		movs	r1, #14
 746 0014 0B48     		ldr	r0, .L175
 747 0016 FFF7FEFF 		bl	efc_perform_read_sequence
 748 001a 78B9     		cbnz	r0, .L172
 749 001c 042F     		cmp	r7, #4
 750 001e 3E46     		mov	r6, r7
 751 0020 28BF     		it	cs
 752 0022 0426     		movcs	r6, #4
 753 0024 47B1     		cbz	r7, .L167
 754 0026 221F     		subs	r2, r4, #4
 755 0028 0346     		mov	r3, r0
 756              	.L170:
 757 002a 55F82310 		ldr	r1, [r5, r3, lsl #2]
 758 002e 42F8041F 		str	r1, [r2, #4]!
 759 0032 0133     		adds	r3, r3, #1
 760 0034 B342     		cmp	r3, r6
 761 0036 F8D3     		bcc	.L170
 762              	.L167:
 763 0038 07B0     		add	sp, sp, #28
 764              		@ sp needed
 765 003a F0BD     		pop	{r4, r5, r6, r7, pc}
 766              	.L172:
 767 003c 1020     		movs	r0, #16
 768 003e 07B0     		add	sp, sp, #28
 769              		@ sp needed
 770 0040 F0BD     		pop	{r4, r5, r6, r7, pc}
 771              	.L176:
 772 0042 00BF     		.align	2
 773              	.L175:
 774 0044 000A0E40 		.word	1074661888
 775              		.size	flash_read_unique_id, .-flash_read_unique_id
 776              		.section	.text.flash_read_user_signature,"ax",%progbits
 777              		.align	1
 778              		.p2align 2,,3
 779              		.global	flash_read_user_signature
 780              		.syntax unified
 781              		.thumb
 782              		.thumb_func
 783              		.fpu fpv4-sp-d16
 784              		.type	flash_read_user_signature, %function
 785              	flash_read_user_signature:
 786              		@ args = 0, pretend = 0, frame = 0
 787              		@ frame_needed = 0, uses_anonymous_args = 0
 788 0000 00B5     		push	{lr}
 789 0002 8029     		cmp	r1, #128
 790 0004 83B0     		sub	sp, sp, #12
 791 0006 28BF     		it	cs
 792 0008 8021     		movcs	r1, #128
 793 000a 0091     		str	r1, [sp]
 794 000c 0346     		mov	r3, r0
 795 000e 1522     		movs	r2, #21
 796 0010 1421     		movs	r1, #20
 797 0012 0548     		ldr	r0, .L181
 798 0014 FFF7FEFF 		bl	efc_perform_read_sequence
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccL3RYXC.s 			page 15


 799 0018 0028     		cmp	r0, #0
 800 001a 14BF     		ite	ne
 801 001c 1020     		movne	r0, #16
 802 001e 0020     		moveq	r0, #0
 803 0020 03B0     		add	sp, sp, #12
 804              		@ sp needed
 805 0022 5DF804FB 		ldr	pc, [sp], #4
 806              	.L182:
 807 0026 00BF     		.align	2
 808              	.L181:
 809 0028 000A0E40 		.word	1074661888
 810              		.size	flash_read_user_signature, .-flash_read_user_signature
 811              		.section	.text.flash_write_user_signature,"ax",%progbits
 812              		.align	1
 813              		.p2align 2,,3
 814              		.global	flash_write_user_signature
 815              		.syntax unified
 816              		.thumb
 817              		.thumb_func
 818              		.fpu fpv4-sp-d16
 819              		.type	flash_write_user_signature, %function
 820              	flash_write_user_signature:
 821              		@ args = 0, pretend = 0, frame = 0
 822              		@ frame_needed = 0, uses_anonymous_args = 0
 823 0000 8029     		cmp	r1, #128
 824 0002 1CD8     		bhi	.L186
 825 0004 10B5     		push	{r4, lr}
 826 0006 8A00     		lsls	r2, r1, #2
 827 0008 0146     		mov	r1, r0
 828 000a 0E48     		ldr	r0, .L193
 829 000c FFF7FEFF 		bl	memcpy
 830 0010 0D4B     		ldr	r3, .L193+4
 831 0012 181D     		adds	r0, r3, #4
 832 0014 C0F58004 		rsb	r4, r0, #4194304
 833 0018 0434     		adds	r4, r4, #4
 834 001a 03F50070 		add	r0, r3, #512
 835              	.L185:
 836 001e E218     		adds	r2, r4, r3
 837 0020 53F8041F 		ldr	r1, [r3, #4]!
 838 0024 1160     		str	r1, [r2]
 839 0026 8342     		cmp	r3, r0
 840 0028 F9D1     		bne	.L185
 841 002a 0022     		movs	r2, #0
 842 002c 1221     		movs	r1, #18
 843 002e 0748     		ldr	r0, .L193+8
 844 0030 FFF7FEFF 		bl	efc_perform_command
 845 0034 0028     		cmp	r0, #0
 846 0036 14BF     		ite	ne
 847 0038 1020     		movne	r0, #16
 848 003a 0020     		moveq	r0, #0
 849 003c 10BD     		pop	{r4, pc}
 850              	.L186:
 851 003e 1120     		movs	r0, #17
 852 0040 7047     		bx	lr
 853              	.L194:
 854 0042 00BF     		.align	2
 855              	.L193:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccL3RYXC.s 			page 16


 856 0044 00000000 		.word	.LANCHOR0
 857 0048 FCFFFFFF 		.word	.LANCHOR0-4
 858 004c 000A0E40 		.word	1074661888
 859              		.size	flash_write_user_signature, .-flash_write_user_signature
 860              		.section	.text.flash_erase_user_signature,"ax",%progbits
 861              		.align	1
 862              		.p2align 2,,3
 863              		.global	flash_erase_user_signature
 864              		.syntax unified
 865              		.thumb
 866              		.thumb_func
 867              		.fpu fpv4-sp-d16
 868              		.type	flash_erase_user_signature, %function
 869              	flash_erase_user_signature:
 870              		@ args = 0, pretend = 0, frame = 0
 871              		@ frame_needed = 0, uses_anonymous_args = 0
 872              		@ link register save eliminated.
 873 0000 0022     		movs	r2, #0
 874 0002 1321     		movs	r1, #19
 875 0004 0148     		ldr	r0, .L196
 876 0006 FFF7FEBF 		b	efc_perform_command
 877              	.L197:
 878 000a 00BF     		.align	2
 879              	.L196:
 880 000c 000A0E40 		.word	1074661888
 881              		.size	flash_erase_user_signature, .-flash_erase_user_signature
 882              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 883              		.align	2
 884              		.type	cpu_irq_critical_section_counter, %object
 885              		.size	cpu_irq_critical_section_counter, 4
 886              	cpu_irq_critical_section_counter:
 887 0000 00000000 		.space	4
 888              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 889              		.type	cpu_irq_prev_interrupt_state, %object
 890              		.size	cpu_irq_prev_interrupt_state, 1
 891              	cpu_irq_prev_interrupt_state:
 892 0000 00       		.space	1
 893              		.section	.bss.gs_ul_page_buffer,"aw",%nobits
 894              		.align	2
 895              		.set	.LANCHOR0,. + 0
 896              		.type	gs_ul_page_buffer, %object
 897              		.size	gs_ul_page_buffer, 512
 898              	gs_ul_page_buffer:
 899 0000 00000000 		.space	512
 899      00000000 
 899      00000000 
 899      00000000 
 899      00000000 
 900              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
