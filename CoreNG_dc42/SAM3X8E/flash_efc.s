ARM GAS  /tmp/cc7kknJ5.s 			page 1


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
  24 0000 38B5     		push	{r3, r4, r5, lr}
  25 0002 0446     		mov	r4, r0
  26 0004 0D46     		mov	r5, r1
  27 0006 0A46     		mov	r2, r1
  28 0008 0548     		ldr	r0, .L3
  29 000a 2146     		mov	r1, r4
  30 000c FFF7FEFF 		bl	efc_init
  31 0010 2A46     		mov	r2, r5
  32 0012 2146     		mov	r1, r4
  33 0014 0348     		ldr	r0, .L3+4
  34 0016 FFF7FEFF 		bl	efc_init
  35 001a 0020     		movs	r0, #0
  36 001c 38BD     		pop	{r3, r4, r5, pc}
  37              	.L4:
  38 001e 00BF     		.align	2
  39              	.L3:
  40 0020 000A0E40 		.word	1074661888
  41 0024 000C0E40 		.word	1074662400
  42              		.size	flash_init, .-flash_init
  43              		.section	.text.flash_set_wait_state,"ax",%progbits
  44              		.align	1
  45              		.p2align 2,,3
  46              		.global	flash_set_wait_state
  47              		.syntax unified
  48              		.thumb
  49              		.thumb_func
  50              		.fpu softvfp
  51              		.type	flash_set_wait_state, %function
  52              	flash_set_wait_state:
  53              		@ args = 0, pretend = 0, frame = 0
  54              		@ frame_needed = 0, uses_anonymous_args = 0
  55 0000 08B5     		push	{r3, lr}
  56 0002 054A     		ldr	r2, .L9
  57 0004 054B     		ldr	r3, .L9+4
ARM GAS  /tmp/cc7kknJ5.s 			page 2


  58 0006 B0F5402F 		cmp	r0, #786432
  59 000a 2CBF     		ite	cs
  60 000c 1046     		movcs	r0, r2
  61 000e 1846     		movcc	r0, r3
  62 0010 FFF7FEFF 		bl	efc_set_wait_state
  63 0014 0020     		movs	r0, #0
  64 0016 08BD     		pop	{r3, pc}
  65              	.L10:
  66              		.align	2
  67              	.L9:
  68 0018 000C0E40 		.word	1074662400
  69 001c 000A0E40 		.word	1074661888
  70              		.size	flash_set_wait_state, .-flash_set_wait_state
  71              		.section	.text.flash_set_wait_state_adaptively,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	flash_set_wait_state_adaptively
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu softvfp
  79              		.type	flash_set_wait_state_adaptively, %function
  80              	flash_set_wait_state_adaptively:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83 0000 08B5     		push	{r3, lr}
  84 0002 064A     		ldr	r2, .L15
  85 0004 064B     		ldr	r3, .L15+4
  86 0006 0421     		movs	r1, #4
  87 0008 B0F5402F 		cmp	r0, #786432
  88 000c 2CBF     		ite	cs
  89 000e 1046     		movcs	r0, r2
  90 0010 1846     		movcc	r0, r3
  91 0012 FFF7FEFF 		bl	efc_set_wait_state
  92 0016 0020     		movs	r0, #0
  93 0018 08BD     		pop	{r3, pc}
  94              	.L16:
  95 001a 00BF     		.align	2
  96              	.L15:
  97 001c 000C0E40 		.word	1074662400
  98 0020 000A0E40 		.word	1074661888
  99              		.size	flash_set_wait_state_adaptively, .-flash_set_wait_state_adaptively
 100              		.section	.text.flash_get_wait_state,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.global	flash_get_wait_state
 104              		.syntax unified
 105              		.thumb
 106              		.thumb_func
 107              		.fpu softvfp
 108              		.type	flash_get_wait_state, %function
 109              	flash_get_wait_state:
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112              		@ link register save eliminated.
 113 0000 044A     		ldr	r2, .L20
 114 0002 054B     		ldr	r3, .L20+4
ARM GAS  /tmp/cc7kknJ5.s 			page 3


 115 0004 B0F5402F 		cmp	r0, #786432
 116 0008 2CBF     		ite	cs
 117 000a 1046     		movcs	r0, r2
 118 000c 1846     		movcc	r0, r3
 119 000e FFF7FEBF 		b	efc_get_wait_state
 120              	.L21:
 121 0012 00BF     		.align	2
 122              	.L20:
 123 0014 000C0E40 		.word	1074662400
 124 0018 000A0E40 		.word	1074661888
 125              		.size	flash_get_wait_state, .-flash_get_wait_state
 126              		.section	.text.flash_get_descriptor,"ax",%progbits
 127              		.align	1
 128              		.p2align 2,,3
 129              		.global	flash_get_descriptor
 130              		.syntax unified
 131              		.thumb
 132              		.thumb_func
 133              		.fpu softvfp
 134              		.type	flash_get_descriptor, %function
 135              	flash_get_descriptor:
 136              		@ args = 0, pretend = 0, frame = 0
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 139 0002 0F4E     		ldr	r6, .L34
 140 0004 0F4B     		ldr	r3, .L34+4
 141 0006 1746     		mov	r7, r2
 142 0008 B0F5402F 		cmp	r0, #786432
 143 000c 38BF     		it	cc
 144 000e 1E46     		movcc	r6, r3
 145 0010 0022     		movs	r2, #0
 146 0012 0D46     		mov	r5, r1
 147 0014 3046     		mov	r0, r6
 148 0016 1146     		mov	r1, r2
 149 0018 FFF7FEFF 		bl	efc_perform_command
 150 001c 60B9     		cbnz	r0, .L27
 151 001e 0446     		mov	r4, r0
 152 0020 03E0     		b	.L25
 153              	.L33:
 154 0022 38B1     		cbz	r0, .L22
 155 0024 45F8040B 		str	r0, [r5], #4
 156 0028 0134     		adds	r4, r4, #1
 157              	.L25:
 158 002a 3046     		mov	r0, r6
 159 002c FFF7FEFF 		bl	efc_get_result
 160 0030 BC42     		cmp	r4, r7
 161 0032 F6D1     		bne	.L33
 162              	.L22:
 163 0034 2046     		mov	r0, r4
 164 0036 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 165              	.L27:
 166 0038 0024     		movs	r4, #0
 167 003a 2046     		mov	r0, r4
 168 003c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 169              	.L35:
 170 003e 00BF     		.align	2
 171              	.L34:
ARM GAS  /tmp/cc7kknJ5.s 			page 4


 172 0040 000C0E40 		.word	1074662400
 173 0044 000A0E40 		.word	1074661888
 174              		.size	flash_get_descriptor, .-flash_get_descriptor
 175              		.section	.text.flash_get_page_count,"ax",%progbits
 176              		.align	1
 177              		.p2align 2,,3
 178              		.global	flash_get_page_count
 179              		.syntax unified
 180              		.thumb
 181              		.thumb_func
 182              		.fpu softvfp
 183              		.type	flash_get_page_count, %function
 184              	flash_get_page_count:
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 0, uses_anonymous_args = 0
 187              		@ link register save eliminated.
 188 0000 4268     		ldr	r2, [r0, #4]
 189 0002 8068     		ldr	r0, [r0, #8]
 190 0004 B2FBF0F0 		udiv	r0, r2, r0
 191 0008 7047     		bx	lr
 192              		.size	flash_get_page_count, .-flash_get_page_count
 193 000a 00BF     		.section	.text.flash_get_page_count_per_region,"ax",%progbits
 194              		.align	1
 195              		.p2align 2,,3
 196              		.global	flash_get_page_count_per_region
 197              		.syntax unified
 198              		.thumb
 199              		.thumb_func
 200              		.fpu softvfp
 201              		.type	flash_get_page_count_per_region, %function
 202              	flash_get_page_count_per_region:
 203              		@ args = 0, pretend = 0, frame = 0
 204              		@ frame_needed = 0, uses_anonymous_args = 0
 205              		@ link register save eliminated.
 206 0000 0269     		ldr	r2, [r0, #16]
 207 0002 8068     		ldr	r0, [r0, #8]
 208 0004 B2FBF0F0 		udiv	r0, r2, r0
 209 0008 7047     		bx	lr
 210              		.size	flash_get_page_count_per_region, .-flash_get_page_count_per_region
 211 000a 00BF     		.section	.text.flash_get_region_count,"ax",%progbits
 212              		.align	1
 213              		.p2align 2,,3
 214              		.global	flash_get_region_count
 215              		.syntax unified
 216              		.thumb
 217              		.thumb_func
 218              		.fpu softvfp
 219              		.type	flash_get_region_count, %function
 220              	flash_get_region_count:
 221              		@ args = 0, pretend = 0, frame = 0
 222              		@ frame_needed = 0, uses_anonymous_args = 0
 223              		@ link register save eliminated.
 224 0000 C068     		ldr	r0, [r0, #12]
 225 0002 7047     		bx	lr
 226              		.size	flash_get_region_count, .-flash_get_region_count
 227              		.section	.text.flash_erase_all,"ax",%progbits
 228              		.align	1
ARM GAS  /tmp/cc7kknJ5.s 			page 5


 229              		.p2align 2,,3
 230              		.global	flash_erase_all
 231              		.syntax unified
 232              		.thumb
 233              		.thumb_func
 234              		.fpu softvfp
 235              		.type	flash_erase_all, %function
 236              	flash_erase_all:
 237              		@ args = 0, pretend = 0, frame = 0
 238              		@ frame_needed = 0, uses_anonymous_args = 0
 239 0000 08B5     		push	{r3, lr}
 240 0002 0849     		ldr	r1, .L45
 241 0004 084B     		ldr	r3, .L45+4
 242 0006 0022     		movs	r2, #0
 243 0008 B0F5402F 		cmp	r0, #786432
 244 000c 2CBF     		ite	cs
 245 000e 0846     		movcs	r0, r1
 246 0010 1846     		movcc	r0, r3
 247 0012 0521     		movs	r1, #5
 248 0014 FFF7FEFF 		bl	efc_perform_command
 249 0018 0028     		cmp	r0, #0
 250 001a 14BF     		ite	ne
 251 001c 1020     		movne	r0, #16
 252 001e 0020     		moveq	r0, #0
 253 0020 08BD     		pop	{r3, pc}
 254              	.L46:
 255 0022 00BF     		.align	2
 256              	.L45:
 257 0024 000C0E40 		.word	1074662400
 258 0028 000A0E40 		.word	1074661888
 259              		.size	flash_erase_all, .-flash_erase_all
 260              		.section	.text.flash_write,"ax",%progbits
 261              		.align	1
 262              		.p2align 2,,3
 263              		.global	flash_write
 264              		.syntax unified
 265              		.thumb
 266              		.thumb_func
 267              		.fpu softvfp
 268              		.type	flash_write, %function
 269              	flash_write:
 270              		@ args = 0, pretend = 0, frame = 16
 271              		@ frame_needed = 0, uses_anonymous_args = 0
 272 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 273 0004 B0F5402F 		cmp	r0, #786432
 274 0008 85B0     		sub	sp, sp, #20
 275 000a 8A46     		mov	r10, r1
 276 000c 9146     		mov	r9, r2
 277 000e 0293     		str	r3, [sp, #8]
 278 0010 5DD3     		bcc	.L48
 279 0012 A0F54028 		sub	r8, r0, #786432
 280 0016 DFF8D4B0 		ldr	fp, .L63+12
 281 001a C8F30F28 		ubfx	r8, r8, #8, #16
 282 001e C6B2     		uxtb	r6, r0
 283              	.L49:
 284 0020 5846     		mov	r0, fp
 285 0022 FFF7FEFF 		bl	efc_get_wait_state
ARM GAS  /tmp/cc7kknJ5.s 			page 6


 286 0026 0621     		movs	r1, #6
 287 0028 0390     		str	r0, [sp, #12]
 288 002a 5846     		mov	r0, fp
 289 002c FFF7FEFF 		bl	efc_set_wait_state
 290 0030 B9F1000F 		cmp	r9, #0
 291 0034 3ED0     		beq	.L58
 292 0036 2A4B     		ldr	r3, .L63
 293 0038 03F1FC05 		add	r5, r3, #252
 294              	.L57:
 295 003c C6F58073 		rsb	r3, r6, #256
 296 0040 4B45     		cmp	r3, r9
 297 0042 1F46     		mov	r7, r3
 298 0044 28BF     		it	cs
 299 0046 4F46     		movcs	r7, r9
 300 0048 264A     		ldr	r2, .L63+4
 301 004a 2548     		ldr	r0, .L63
 302 004c 9345     		cmp	fp, r2
 303 004e 0CBF     		ite	eq
 304 0050 08F50064 		addeq	r4, r8, #2048
 305 0054 08F54064 		addne	r4, r8, #3072
 306 0058 2402     		lsls	r4, r4, #8
 307 005a 2146     		mov	r1, r4
 308 005c 3246     		mov	r2, r6
 309 005e 0193     		str	r3, [sp, #4]
 310 0060 FFF7FEFF 		bl	memcpy
 311 0064 1E4B     		ldr	r3, .L63
 312 0066 3A46     		mov	r2, r7
 313 0068 5146     		mov	r1, r10
 314 006a 9819     		adds	r0, r3, r6
 315 006c FFF7FEFF 		bl	memcpy
 316 0070 019B     		ldr	r3, [sp, #4]
 317 0072 F019     		adds	r0, r6, r7
 318 0074 DB1B     		subs	r3, r3, r7
 319 0076 9AB2     		uxth	r2, r3
 320 0078 194B     		ldr	r3, .L63
 321 007a 0119     		adds	r1, r0, r4
 322 007c 1844     		add	r0, r0, r3
 323 007e FFF7FEFF 		bl	memcpy
 324 0082 194B     		ldr	r3, .L63+8
 325 0084 043C     		subs	r4, r4, #4
 326              	.L54:
 327 0086 53F8042F 		ldr	r2, [r3, #4]!
 328 008a 9D42     		cmp	r5, r3
 329 008c 44F8042F 		str	r2, [r4, #4]!
 330 0090 F9D1     		bne	.L54
 331 0092 029B     		ldr	r3, [sp, #8]
 332 0094 4246     		mov	r2, r8
 333 0096 ABB1     		cbz	r3, .L55
 334 0098 0321     		movs	r1, #3
 335 009a 5846     		mov	r0, fp
 336 009c FFF7FEFF 		bl	efc_perform_command
 337              	.L56:
 338 00a0 68B9     		cbnz	r0, .L47
 339 00a2 08F10108 		add	r8, r8, #1
 340 00a6 B9EB0709 		subs	r9, r9, r7
 341 00aa 1FFA88F8 		uxth	r8, r8
 342 00ae BA44     		add	r10, r10, r7
ARM GAS  /tmp/cc7kknJ5.s 			page 7


 343 00b0 0646     		mov	r6, r0
 344 00b2 C3D1     		bne	.L57
 345              	.L58:
 346 00b4 5846     		mov	r0, fp
 347 00b6 0399     		ldr	r1, [sp, #12]
 348 00b8 FFF7FEFF 		bl	efc_set_wait_state
 349 00bc 0020     		movs	r0, #0
 350              	.L47:
 351 00be 05B0     		add	sp, sp, #20
 352              		@ sp needed
 353 00c0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 354              	.L55:
 355 00c4 0121     		movs	r1, #1
 356 00c6 5846     		mov	r0, fp
 357 00c8 FFF7FEFF 		bl	efc_perform_command
 358 00cc E8E7     		b	.L56
 359              	.L48:
 360 00ce A0F50028 		sub	r8, r0, #524288
 361 00d2 DFF810B0 		ldr	fp, .L63+4
 362 00d6 C8F30F28 		ubfx	r8, r8, #8, #16
 363 00da C6B2     		uxtb	r6, r0
 364 00dc A0E7     		b	.L49
 365              	.L64:
 366 00de 00BF     		.align	2
 367              	.L63:
 368 00e0 00000000 		.word	.LANCHOR0
 369 00e4 000A0E40 		.word	1074661888
 370 00e8 FCFFFFFF 		.word	.LANCHOR0-4
 371 00ec 000C0E40 		.word	1074662400
 372              		.size	flash_write, .-flash_write
 373              		.section	.text.flash_lock,"ax",%progbits
 374              		.align	1
 375              		.p2align 2,,3
 376              		.global	flash_lock
 377              		.syntax unified
 378              		.thumb
 379              		.thumb_func
 380              		.fpu softvfp
 381              		.type	flash_lock, %function
 382              	flash_lock:
 383              		@ args = 0, pretend = 0, frame = 0
 384              		@ frame_needed = 0, uses_anonymous_args = 0
 385 0000 70B5     		push	{r4, r5, r6, lr}
 386 0002 194C     		ldr	r4, .L85
 387 0004 2140     		ands	r1, r1, r4
 388 0006 01F57F55 		add	r5, r1, #16320
 389 000a 0440     		ands	r4, r4, r0
 390 000c 3F35     		adds	r5, r5, #63
 391 000e 02B1     		cbz	r2, .L66
 392 0010 1460     		str	r4, [r2]
 393              	.L66:
 394 0012 03B1     		cbz	r3, .L67
 395 0014 1D60     		str	r5, [r3]
 396              	.L67:
 397 0016 B4F5402F 		cmp	r4, #786432
 398 001a 1FD3     		bcc	.L68
 399 001c A4F54024 		sub	r4, r4, #786432
ARM GAS  /tmp/cc7kknJ5.s 			page 8


 400 0020 240A     		lsrs	r4, r4, #8
 401 0022 124E     		ldr	r6, .L85+4
 402 0024 A4B2     		uxth	r4, r4
 403              	.L69:
 404 0026 B5F5402F 		cmp	r5, #786432
 405 002a 2CBF     		ite	cs
 406 002c A1F53C25 		subcs	r5, r1, #770048
 407 0030 A1F5F825 		subcc	r5, r1, #507904
 408 0034 013D     		subs	r5, r5, #1
 409 0036 C5F30F25 		ubfx	r5, r5, #8, #16
 410 003a A542     		cmp	r5, r4
 411 003c 02D8     		bhi	.L74
 412 003e 0BE0     		b	.L75
 413              	.L84:
 414 0040 AC42     		cmp	r4, r5
 415 0042 09D2     		bcs	.L75
 416              	.L74:
 417 0044 2246     		mov	r2, r4
 418 0046 0821     		movs	r1, #8
 419 0048 3046     		mov	r0, r6
 420 004a FFF7FEFF 		bl	efc_perform_command
 421 004e 4034     		adds	r4, r4, #64
 422 0050 A4B2     		uxth	r4, r4
 423 0052 0028     		cmp	r0, #0
 424 0054 F4D0     		beq	.L84
 425 0056 70BD     		pop	{r4, r5, r6, pc}
 426              	.L75:
 427 0058 0020     		movs	r0, #0
 428 005a 70BD     		pop	{r4, r5, r6, pc}
 429              	.L68:
 430 005c A4F50024 		sub	r4, r4, #524288
 431 0060 240A     		lsrs	r4, r4, #8
 432 0062 034E     		ldr	r6, .L85+8
 433 0064 A4B2     		uxth	r4, r4
 434 0066 DEE7     		b	.L69
 435              	.L86:
 436              		.align	2
 437              	.L85:
 438 0068 00C0FFFF 		.word	-16384
 439 006c 000C0E40 		.word	1074662400
 440 0070 000A0E40 		.word	1074661888
 441              		.size	flash_lock, .-flash_lock
 442              		.section	.text.flash_unlock,"ax",%progbits
 443              		.align	1
 444              		.p2align 2,,3
 445              		.global	flash_unlock
 446              		.syntax unified
 447              		.thumb
 448              		.thumb_func
 449              		.fpu softvfp
 450              		.type	flash_unlock, %function
 451              	flash_unlock:
 452              		@ args = 0, pretend = 0, frame = 0
 453              		@ frame_needed = 0, uses_anonymous_args = 0
 454 0000 70B5     		push	{r4, r5, r6, lr}
 455 0002 194C     		ldr	r4, .L107
 456 0004 2140     		ands	r1, r1, r4
ARM GAS  /tmp/cc7kknJ5.s 			page 9


 457 0006 01F57F55 		add	r5, r1, #16320
 458 000a 0440     		ands	r4, r4, r0
 459 000c 3F35     		adds	r5, r5, #63
 460 000e 02B1     		cbz	r2, .L88
 461 0010 1460     		str	r4, [r2]
 462              	.L88:
 463 0012 03B1     		cbz	r3, .L89
 464 0014 1D60     		str	r5, [r3]
 465              	.L89:
 466 0016 B4F5402F 		cmp	r4, #786432
 467 001a 1FD3     		bcc	.L90
 468 001c A4F54024 		sub	r4, r4, #786432
 469 0020 240A     		lsrs	r4, r4, #8
 470 0022 124E     		ldr	r6, .L107+4
 471 0024 A4B2     		uxth	r4, r4
 472              	.L91:
 473 0026 B5F5402F 		cmp	r5, #786432
 474 002a 2CBF     		ite	cs
 475 002c A1F53C25 		subcs	r5, r1, #770048
 476 0030 A1F5F825 		subcc	r5, r1, #507904
 477 0034 013D     		subs	r5, r5, #1
 478 0036 C5F30F25 		ubfx	r5, r5, #8, #16
 479 003a A542     		cmp	r5, r4
 480 003c 02D8     		bhi	.L96
 481 003e 0BE0     		b	.L97
 482              	.L106:
 483 0040 AC42     		cmp	r4, r5
 484 0042 09D2     		bcs	.L97
 485              	.L96:
 486 0044 2246     		mov	r2, r4
 487 0046 0921     		movs	r1, #9
 488 0048 3046     		mov	r0, r6
 489 004a FFF7FEFF 		bl	efc_perform_command
 490 004e 4034     		adds	r4, r4, #64
 491 0050 A4B2     		uxth	r4, r4
 492 0052 0028     		cmp	r0, #0
 493 0054 F4D0     		beq	.L106
 494 0056 70BD     		pop	{r4, r5, r6, pc}
 495              	.L97:
 496 0058 0020     		movs	r0, #0
 497 005a 70BD     		pop	{r4, r5, r6, pc}
 498              	.L90:
 499 005c A4F50024 		sub	r4, r4, #524288
 500 0060 240A     		lsrs	r4, r4, #8
 501 0062 034E     		ldr	r6, .L107+8
 502 0064 A4B2     		uxth	r4, r4
 503 0066 DEE7     		b	.L91
 504              	.L108:
 505              		.align	2
 506              	.L107:
 507 0068 00C0FFFF 		.word	-16384
 508 006c 000C0E40 		.word	1074662400
 509 0070 000A0E40 		.word	1074661888
 510              		.size	flash_unlock, .-flash_unlock
 511              		.section	.text.flash_is_locked,"ax",%progbits
 512              		.align	1
 513              		.p2align 2,,3
ARM GAS  /tmp/cc7kknJ5.s 			page 10


 514              		.global	flash_is_locked
 515              		.syntax unified
 516              		.thumb
 517              		.thumb_func
 518              		.fpu softvfp
 519              		.type	flash_is_locked, %function
 520              	flash_is_locked:
 521              		@ args = 0, pretend = 0, frame = 0
 522              		@ frame_needed = 0, uses_anonymous_args = 0
 523 0000 B0F5402F 		cmp	r0, #786432
 524 0004 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 525 0006 14D3     		bcc	.L110
 526 0008 A0F54024 		sub	r4, r0, #786432
 527 000c 244E     		ldr	r6, .L129
 528 000e C4F30F24 		ubfx	r4, r4, #8, #16
 529              	.L111:
 530 0012 B1F5402F 		cmp	r1, #786432
 531 0016 2CBF     		ite	cs
 532 0018 A1F54021 		subcs	r1, r1, #786432
 533 001c A1F50021 		subcc	r1, r1, #524288
 534 0020 C1F30F27 		ubfx	r7, r1, #8, #16
 535 0024 0022     		movs	r2, #0
 536 0026 0A21     		movs	r1, #10
 537 0028 3046     		mov	r0, r6
 538 002a FFF7FEFF 		bl	efc_perform_command
 539 002e 30B1     		cbz	r0, .L126
 540              	.L109:
 541 0030 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 542              	.L110:
 543 0032 A0F50024 		sub	r4, r0, #524288
 544 0036 1B4E     		ldr	r6, .L129+4
 545 0038 C4F30F24 		ubfx	r4, r4, #8, #16
 546 003c E9E7     		b	.L111
 547              	.L126:
 548 003e 3046     		mov	r0, r6
 549 0040 C4F38714 		ubfx	r4, r4, #6, #8
 550 0044 FFF7FEFF 		bl	efc_get_result
 551 0048 2025     		movs	r5, #32
 552 004a 03E0     		b	.L115
 553              	.L116:
 554 004c 3046     		mov	r0, r6
 555 004e FFF7FEFF 		bl	efc_get_result
 556 0052 2035     		adds	r5, r5, #32
 557              	.L115:
 558 0054 A5F12003 		sub	r3, r5, #32
 559 0058 A342     		cmp	r3, r4
 560 005a F7D8     		bhi	.L116
 561 005c A542     		cmp	r5, r4
 562 005e F5D9     		bls	.L116
 563 0060 C7F38717 		ubfx	r7, r7, #6, #8
 564 0064 3F1B     		subs	r7, r7, r4
 565 0066 E31A     		subs	r3, r4, r3
 566 0068 7C1C     		adds	r4, r7, #1
 567 006a 17D0     		beq	.L120
 568 006c 0025     		movs	r5, #0
 569 006e 0127     		movs	r7, #1
 570              	.L119:
ARM GAS  /tmp/cc7kknJ5.s 			page 11


 571 0070 07FA03F2 		lsl	r2, r7, r3
 572 0074 0242     		tst	r2, r0
 573 0076 03F10103 		add	r3, r3, #1
 574 007a 18BF     		it	ne
 575 007c 0135     		addne	r5, r5, #1
 576 007e 202B     		cmp	r3, #32
 577 0080 04F1FF34 		add	r4, r4, #-1
 578 0084 03D0     		beq	.L127
 579 0086 002C     		cmp	r4, #0
 580 0088 F2D1     		bne	.L119
 581              	.L128:
 582 008a 2846     		mov	r0, r5
 583 008c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 584              	.L127:
 585 008e 3046     		mov	r0, r6
 586 0090 FFF7FEFF 		bl	efc_get_result
 587 0094 0023     		movs	r3, #0
 588 0096 002C     		cmp	r4, #0
 589 0098 EAD1     		bne	.L119
 590 009a F6E7     		b	.L128
 591              	.L120:
 592 009c 2046     		mov	r0, r4
 593 009e C7E7     		b	.L109
 594              	.L130:
 595              		.align	2
 596              	.L129:
 597 00a0 000C0E40 		.word	1074662400
 598 00a4 000A0E40 		.word	1074661888
 599              		.size	flash_is_locked, .-flash_is_locked
 600              		.section	.text.flash_is_gpnvm_set,"ax",%progbits
 601              		.align	1
 602              		.p2align 2,,3
 603              		.global	flash_is_gpnvm_set
 604              		.syntax unified
 605              		.thumb
 606              		.thumb_func
 607              		.fpu softvfp
 608              		.type	flash_is_gpnvm_set, %function
 609              	flash_is_gpnvm_set:
 610              		@ args = 0, pretend = 0, frame = 0
 611              		@ frame_needed = 0, uses_anonymous_args = 0
 612 0000 0228     		cmp	r0, #2
 613 0002 01D9     		bls	.L139
 614 0004 1120     		movs	r0, #17
 615 0006 7047     		bx	lr
 616              	.L139:
 617 0008 10B5     		push	{r4, lr}
 618 000a 0022     		movs	r2, #0
 619 000c 0446     		mov	r4, r0
 620 000e 0D21     		movs	r1, #13
 621 0010 0848     		ldr	r0, .L141
 622 0012 FFF7FEFF 		bl	efc_perform_command
 623 0016 08B1     		cbz	r0, .L140
 624 0018 1020     		movs	r0, #16
 625 001a 10BD     		pop	{r4, pc}
 626              	.L140:
 627 001c 0548     		ldr	r0, .L141
ARM GAS  /tmp/cc7kknJ5.s 			page 12


 628 001e FFF7FEFF 		bl	efc_get_result
 629 0022 0123     		movs	r3, #1
 630 0024 03FA04F4 		lsl	r4, r3, r4
 631 0028 0442     		tst	r4, r0
 632 002a 14BF     		ite	ne
 633 002c 1846     		movne	r0, r3
 634 002e 0020     		moveq	r0, #0
 635 0030 10BD     		pop	{r4, pc}
 636              	.L142:
 637 0032 00BF     		.align	2
 638              	.L141:
 639 0034 000A0E40 		.word	1074661888
 640              		.size	flash_is_gpnvm_set, .-flash_is_gpnvm_set
 641              		.section	.text.flash_set_gpnvm,"ax",%progbits
 642              		.align	1
 643              		.p2align 2,,3
 644              		.global	flash_set_gpnvm
 645              		.syntax unified
 646              		.thumb
 647              		.thumb_func
 648              		.fpu softvfp
 649              		.type	flash_set_gpnvm, %function
 650              	flash_set_gpnvm:
 651              		@ args = 0, pretend = 0, frame = 0
 652              		@ frame_needed = 0, uses_anonymous_args = 0
 653 0000 0228     		cmp	r0, #2
 654 0002 01D9     		bls	.L155
 655 0004 1120     		movs	r0, #17
 656 0006 7047     		bx	lr
 657              	.L155:
 658 0008 10B5     		push	{r4, lr}
 659 000a 0446     		mov	r4, r0
 660 000c FFF7FEFF 		bl	flash_is_gpnvm_set
 661 0010 0128     		cmp	r0, #1
 662 0012 07D0     		beq	.L146
 663 0014 2246     		mov	r2, r4
 664 0016 0B21     		movs	r1, #11
 665 0018 0348     		ldr	r0, .L156
 666 001a FFF7FEFF 		bl	efc_perform_command
 667 001e 08B1     		cbz	r0, .L146
 668 0020 1020     		movs	r0, #16
 669 0022 10BD     		pop	{r4, pc}
 670              	.L146:
 671 0024 0020     		movs	r0, #0
 672 0026 10BD     		pop	{r4, pc}
 673              	.L157:
 674              		.align	2
 675              	.L156:
 676 0028 000A0E40 		.word	1074661888
 677              		.size	flash_set_gpnvm, .-flash_set_gpnvm
 678              		.section	.text.flash_clear_gpnvm,"ax",%progbits
 679              		.align	1
 680              		.p2align 2,,3
 681              		.global	flash_clear_gpnvm
 682              		.syntax unified
 683              		.thumb
 684              		.thumb_func
ARM GAS  /tmp/cc7kknJ5.s 			page 13


 685              		.fpu softvfp
 686              		.type	flash_clear_gpnvm, %function
 687              	flash_clear_gpnvm:
 688              		@ args = 0, pretend = 0, frame = 0
 689              		@ frame_needed = 0, uses_anonymous_args = 0
 690 0000 0228     		cmp	r0, #2
 691 0002 01D9     		bls	.L170
 692 0004 1120     		movs	r0, #17
 693 0006 7047     		bx	lr
 694              	.L170:
 695 0008 10B5     		push	{r4, lr}
 696 000a 0446     		mov	r4, r0
 697 000c FFF7FEFF 		bl	flash_is_gpnvm_set
 698 0010 08B9     		cbnz	r0, .L160
 699              	.L161:
 700 0012 0020     		movs	r0, #0
 701 0014 10BD     		pop	{r4, pc}
 702              	.L160:
 703 0016 2246     		mov	r2, r4
 704 0018 0C21     		movs	r1, #12
 705 001a 0348     		ldr	r0, .L171
 706 001c FFF7FEFF 		bl	efc_perform_command
 707 0020 0028     		cmp	r0, #0
 708 0022 F6D0     		beq	.L161
 709 0024 1020     		movs	r0, #16
 710 0026 10BD     		pop	{r4, pc}
 711              	.L172:
 712              		.align	2
 713              	.L171:
 714 0028 000A0E40 		.word	1074661888
 715              		.size	flash_clear_gpnvm, .-flash_clear_gpnvm
 716              		.section	.text.flash_enable_security_bit,"ax",%progbits
 717              		.align	1
 718              		.p2align 2,,3
 719              		.global	flash_enable_security_bit
 720              		.syntax unified
 721              		.thumb
 722              		.thumb_func
 723              		.fpu softvfp
 724              		.type	flash_enable_security_bit, %function
 725              	flash_enable_security_bit:
 726              		@ args = 0, pretend = 0, frame = 0
 727              		@ frame_needed = 0, uses_anonymous_args = 0
 728              		@ link register save eliminated.
 729 0000 0020     		movs	r0, #0
 730 0002 FFF7FEBF 		b	flash_set_gpnvm
 731              		.size	flash_enable_security_bit, .-flash_enable_security_bit
 732 0006 00BF     		.section	.text.flash_is_security_bit_enabled,"ax",%progbits
 733              		.align	1
 734              		.p2align 2,,3
 735              		.global	flash_is_security_bit_enabled
 736              		.syntax unified
 737              		.thumb
 738              		.thumb_func
 739              		.fpu softvfp
 740              		.type	flash_is_security_bit_enabled, %function
 741              	flash_is_security_bit_enabled:
ARM GAS  /tmp/cc7kknJ5.s 			page 14


 742              		@ args = 0, pretend = 0, frame = 0
 743              		@ frame_needed = 0, uses_anonymous_args = 0
 744              		@ link register save eliminated.
 745 0000 0020     		movs	r0, #0
 746 0002 FFF7FEBF 		b	flash_is_gpnvm_set
 747              		.size	flash_is_security_bit_enabled, .-flash_is_security_bit_enabled
 748 0006 00BF     		.section	.text.flash_read_unique_id,"ax",%progbits
 749              		.align	1
 750              		.p2align 2,,3
 751              		.global	flash_read_unique_id
 752              		.syntax unified
 753              		.thumb
 754              		.thumb_func
 755              		.fpu softvfp
 756              		.type	flash_read_unique_id, %function
 757              	flash_read_unique_id:
 758              		@ args = 0, pretend = 0, frame = 16
 759              		@ frame_needed = 0, uses_anonymous_args = 0
 760 0000 0423     		movs	r3, #4
 761 0002 30B5     		push	{r4, r5, lr}
 762 0004 87B0     		sub	sp, sp, #28
 763 0006 0446     		mov	r4, r0
 764 0008 0D46     		mov	r5, r1
 765 000a 0093     		str	r3, [sp]
 766 000c 0F22     		movs	r2, #15
 767 000e 02AB     		add	r3, sp, #8
 768 0010 0E21     		movs	r1, #14
 769 0012 0C48     		ldr	r0, .L184
 770 0014 FFF7FEFF 		bl	efc_perform_read_sequence
 771 0018 10B1     		cbz	r0, .L183
 772 001a 1020     		movs	r0, #16
 773              	.L175:
 774 001c 07B0     		add	sp, sp, #28
 775              		@ sp needed
 776 001e 30BD     		pop	{r4, r5, pc}
 777              	.L183:
 778 0020 042D     		cmp	r5, #4
 779 0022 28BF     		it	cs
 780 0024 0425     		movcs	r5, #4
 781 0026 002D     		cmp	r5, #0
 782 0028 F8D0     		beq	.L175
 783 002a 2346     		mov	r3, r4
 784 002c 02AA     		add	r2, sp, #8
 785 002e 04EB8501 		add	r1, r4, r5, lsl #2
 786              	.L178:
 787 0032 52F8044B 		ldr	r4, [r2], #4
 788 0036 43F8044B 		str	r4, [r3], #4
 789 003a 8B42     		cmp	r3, r1
 790 003c F9D1     		bne	.L178
 791 003e 07B0     		add	sp, sp, #28
 792              		@ sp needed
 793 0040 30BD     		pop	{r4, r5, pc}
 794              	.L185:
 795 0042 00BF     		.align	2
 796              	.L184:
 797 0044 000A0E40 		.word	1074661888
 798              		.size	flash_read_unique_id, .-flash_read_unique_id
ARM GAS  /tmp/cc7kknJ5.s 			page 15


 799              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 800              		.align	2
 801              		.type	cpu_irq_critical_section_counter, %object
 802              		.size	cpu_irq_critical_section_counter, 4
 803              	cpu_irq_critical_section_counter:
 804 0000 00000000 		.space	4
 805              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 806              		.type	cpu_irq_prev_interrupt_state, %object
 807              		.size	cpu_irq_prev_interrupt_state, 1
 808              	cpu_irq_prev_interrupt_state:
 809 0000 00       		.space	1
 810              		.section	.bss.gs_ul_page_buffer,"aw",%nobits
 811              		.align	2
 812              		.set	.LANCHOR0,. + 0
 813              		.type	gs_ul_page_buffer, %object
 814              		.size	gs_ul_page_buffer, 256
 815              	gs_ul_page_buffer:
 816 0000 00000000 		.space	256
 816      00000000 
 816      00000000 
 816      00000000 
 816      00000000 
 817              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
