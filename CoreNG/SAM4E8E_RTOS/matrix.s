ARM GAS  C:\Users\paja\AppData\Local\Temp\cc9oeAyq.s 			page 1


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
  13              		.file	"matrix.c"
  14              		.text
  15              		.section	.text.matrix_set_master_burst_type,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	matrix_set_master_burst_type
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	matrix_set_master_burst_type, %function
  24              	matrix_set_master_burst_type:
  25              		@ args = 0, pretend = 0, frame = 8
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 064A     		ldr	r2, .L4
  29 0002 52F82030 		ldr	r3, [r2, r0, lsl #2]
  30 0006 82B0     		sub	sp, sp, #8
  31 0008 23F00703 		bic	r3, r3, #7
  32 000c 0193     		str	r3, [sp, #4]
  33 000e 019B     		ldr	r3, [sp, #4]
  34 0010 1943     		orrs	r1, r1, r3
  35 0012 42F82010 		str	r1, [r2, r0, lsl #2]
  36 0016 02B0     		add	sp, sp, #8
  37              		@ sp needed
  38 0018 7047     		bx	lr
  39              	.L5:
  40 001a 00BF     		.align	2
  41              	.L4:
  42 001c 00020E40 		.word	1074659840
  43              		.size	matrix_set_master_burst_type, .-matrix_set_master_burst_type
  44              		.section	.text.matrix_get_master_burst_type,"ax",%progbits
  45              		.align	1
  46              		.p2align 2,,3
  47              		.global	matrix_get_master_burst_type
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu fpv4-sp-d16
  52              		.type	matrix_get_master_burst_type, %function
  53              	matrix_get_master_burst_type:
  54              		@ args = 0, pretend = 0, frame = 8
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56              		@ link register save eliminated.
  57 0000 054B     		ldr	r3, .L8
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc9oeAyq.s 			page 2


  58 0002 53F82030 		ldr	r3, [r3, r0, lsl #2]
  59 0006 82B0     		sub	sp, sp, #8
  60 0008 03F00703 		and	r3, r3, #7
  61 000c 0193     		str	r3, [sp, #4]
  62 000e 0198     		ldr	r0, [sp, #4]
  63 0010 C0B2     		uxtb	r0, r0
  64 0012 02B0     		add	sp, sp, #8
  65              		@ sp needed
  66 0014 7047     		bx	lr
  67              	.L9:
  68 0016 00BF     		.align	2
  69              	.L8:
  70 0018 00020E40 		.word	1074659840
  71              		.size	matrix_get_master_burst_type, .-matrix_get_master_burst_type
  72              		.section	.text.matrix_set_slave_slot_cycle,"ax",%progbits
  73              		.align	1
  74              		.p2align 2,,3
  75              		.global	matrix_set_slave_slot_cycle
  76              		.syntax unified
  77              		.thumb
  78              		.thumb_func
  79              		.fpu fpv4-sp-d16
  80              		.type	matrix_set_slave_slot_cycle, %function
  81              	matrix_set_slave_slot_cycle:
  82              		@ args = 0, pretend = 0, frame = 8
  83              		@ frame_needed = 0, uses_anonymous_args = 0
  84              		@ link register save eliminated.
  85 0000 084B     		ldr	r3, .L12
  86 0002 03EB8000 		add	r0, r3, r0, lsl #2
  87 0006 82B0     		sub	sp, sp, #8
  88 0008 036C     		ldr	r3, [r0, #64]
  89 000a 23F4FF73 		bic	r3, r3, #510
  90 000e 23F00103 		bic	r3, r3, #1
  91 0012 0193     		str	r3, [sp, #4]
  92 0014 019B     		ldr	r3, [sp, #4]
  93 0016 C1F30801 		ubfx	r1, r1, #0, #9
  94 001a 1943     		orrs	r1, r1, r3
  95 001c 0164     		str	r1, [r0, #64]
  96 001e 02B0     		add	sp, sp, #8
  97              		@ sp needed
  98 0020 7047     		bx	lr
  99              	.L13:
 100 0022 00BF     		.align	2
 101              	.L12:
 102 0024 00020E40 		.word	1074659840
 103              		.size	matrix_set_slave_slot_cycle, .-matrix_set_slave_slot_cycle
 104              		.section	.text.matrix_get_slave_slot_cycle,"ax",%progbits
 105              		.align	1
 106              		.p2align 2,,3
 107              		.global	matrix_get_slave_slot_cycle
 108              		.syntax unified
 109              		.thumb
 110              		.thumb_func
 111              		.fpu fpv4-sp-d16
 112              		.type	matrix_get_slave_slot_cycle, %function
 113              	matrix_get_slave_slot_cycle:
 114              		@ args = 0, pretend = 0, frame = 8
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc9oeAyq.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116              		@ link register save eliminated.
 117 0000 1030     		adds	r0, r0, #16
 118 0002 054B     		ldr	r3, .L16
 119 0004 53F82030 		ldr	r3, [r3, r0, lsl #2]
 120 0008 82B0     		sub	sp, sp, #8
 121 000a C3F30803 		ubfx	r3, r3, #0, #9
 122 000e 0193     		str	r3, [sp, #4]
 123 0010 0198     		ldr	r0, [sp, #4]
 124 0012 02B0     		add	sp, sp, #8
 125              		@ sp needed
 126 0014 7047     		bx	lr
 127              	.L17:
 128 0016 00BF     		.align	2
 129              	.L16:
 130 0018 00020E40 		.word	1074659840
 131              		.size	matrix_get_slave_slot_cycle, .-matrix_get_slave_slot_cycle
 132              		.section	.text.matrix_set_slave_default_master_type,"ax",%progbits
 133              		.align	1
 134              		.p2align 2,,3
 135              		.global	matrix_set_slave_default_master_type
 136              		.syntax unified
 137              		.thumb
 138              		.thumb_func
 139              		.fpu fpv4-sp-d16
 140              		.type	matrix_set_slave_default_master_type, %function
 141              	matrix_set_slave_default_master_type:
 142              		@ args = 0, pretend = 0, frame = 8
 143              		@ frame_needed = 0, uses_anonymous_args = 0
 144              		@ link register save eliminated.
 145 0000 064B     		ldr	r3, .L20
 146 0002 03EB8000 		add	r0, r3, r0, lsl #2
 147 0006 82B0     		sub	sp, sp, #8
 148 0008 036C     		ldr	r3, [r0, #64]
 149 000a 23F44033 		bic	r3, r3, #196608
 150 000e 0193     		str	r3, [sp, #4]
 151 0010 019B     		ldr	r3, [sp, #4]
 152 0012 1943     		orrs	r1, r1, r3
 153 0014 0164     		str	r1, [r0, #64]
 154 0016 02B0     		add	sp, sp, #8
 155              		@ sp needed
 156 0018 7047     		bx	lr
 157              	.L21:
 158 001a 00BF     		.align	2
 159              	.L20:
 160 001c 00020E40 		.word	1074659840
 161              		.size	matrix_set_slave_default_master_type, .-matrix_set_slave_default_master_type
 162              		.section	.text.matrix_get_slave_default_master_type,"ax",%progbits
 163              		.align	1
 164              		.p2align 2,,3
 165              		.global	matrix_get_slave_default_master_type
 166              		.syntax unified
 167              		.thumb
 168              		.thumb_func
 169              		.fpu fpv4-sp-d16
 170              		.type	matrix_get_slave_default_master_type, %function
 171              	matrix_get_slave_default_master_type:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc9oeAyq.s 			page 4


 172              		@ args = 0, pretend = 0, frame = 8
 173              		@ frame_needed = 0, uses_anonymous_args = 0
 174              		@ link register save eliminated.
 175 0000 1030     		adds	r0, r0, #16
 176 0002 054B     		ldr	r3, .L24
 177 0004 53F82030 		ldr	r3, [r3, r0, lsl #2]
 178 0008 82B0     		sub	sp, sp, #8
 179 000a 03F44033 		and	r3, r3, #196608
 180 000e 0193     		str	r3, [sp, #4]
 181 0010 0198     		ldr	r0, [sp, #4]
 182 0012 02B0     		add	sp, sp, #8
 183              		@ sp needed
 184 0014 7047     		bx	lr
 185              	.L25:
 186 0016 00BF     		.align	2
 187              	.L24:
 188 0018 00020E40 		.word	1074659840
 189              		.size	matrix_get_slave_default_master_type, .-matrix_get_slave_default_master_type
 190              		.section	.text.matrix_set_slave_fixed_default_master,"ax",%progbits
 191              		.align	1
 192              		.p2align 2,,3
 193              		.global	matrix_set_slave_fixed_default_master
 194              		.syntax unified
 195              		.thumb
 196              		.thumb_func
 197              		.fpu fpv4-sp-d16
 198              		.type	matrix_set_slave_fixed_default_master, %function
 199              	matrix_set_slave_fixed_default_master:
 200              		@ args = 0, pretend = 0, frame = 8
 201              		@ frame_needed = 0, uses_anonymous_args = 0
 202              		@ link register save eliminated.
 203 0000 074B     		ldr	r3, .L28
 204 0002 03EB8000 		add	r0, r3, r0, lsl #2
 205 0006 82B0     		sub	sp, sp, #8
 206 0008 036C     		ldr	r3, [r0, #64]
 207 000a 23F47013 		bic	r3, r3, #3932160
 208 000e 0193     		str	r3, [sp, #4]
 209 0010 019B     		ldr	r3, [sp, #4]
 210 0012 8904     		lsls	r1, r1, #18
 211 0014 01F47011 		and	r1, r1, #3932160
 212 0018 1943     		orrs	r1, r1, r3
 213 001a 0164     		str	r1, [r0, #64]
 214 001c 02B0     		add	sp, sp, #8
 215              		@ sp needed
 216 001e 7047     		bx	lr
 217              	.L29:
 218              		.align	2
 219              	.L28:
 220 0020 00020E40 		.word	1074659840
 221              		.size	matrix_set_slave_fixed_default_master, .-matrix_set_slave_fixed_default_master
 222              		.section	.text.matrix_get_slave_fixed_default_master,"ax",%progbits
 223              		.align	1
 224              		.p2align 2,,3
 225              		.global	matrix_get_slave_fixed_default_master
 226              		.syntax unified
 227              		.thumb
 228              		.thumb_func
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc9oeAyq.s 			page 5


 229              		.fpu fpv4-sp-d16
 230              		.type	matrix_get_slave_fixed_default_master, %function
 231              	matrix_get_slave_fixed_default_master:
 232              		@ args = 0, pretend = 0, frame = 8
 233              		@ frame_needed = 0, uses_anonymous_args = 0
 234              		@ link register save eliminated.
 235 0000 1030     		adds	r0, r0, #16
 236 0002 054B     		ldr	r3, .L32
 237 0004 53F82030 		ldr	r3, [r3, r0, lsl #2]
 238 0008 82B0     		sub	sp, sp, #8
 239 000a 03F47013 		and	r3, r3, #3932160
 240 000e 0193     		str	r3, [sp, #4]
 241 0010 0198     		ldr	r0, [sp, #4]
 242 0012 800C     		lsrs	r0, r0, #18
 243 0014 02B0     		add	sp, sp, #8
 244              		@ sp needed
 245 0016 7047     		bx	lr
 246              	.L33:
 247              		.align	2
 248              	.L32:
 249 0018 00020E40 		.word	1074659840
 250              		.size	matrix_get_slave_fixed_default_master, .-matrix_get_slave_fixed_default_master
 251              		.section	.text.matrix_set_slave_priority,"ax",%progbits
 252              		.align	1
 253              		.p2align 2,,3
 254              		.global	matrix_set_slave_priority
 255              		.syntax unified
 256              		.thumb
 257              		.thumb_func
 258              		.fpu fpv4-sp-d16
 259              		.type	matrix_set_slave_priority, %function
 260              	matrix_set_slave_priority:
 261              		@ args = 0, pretend = 0, frame = 0
 262              		@ frame_needed = 0, uses_anonymous_args = 0
 263              		@ link register save eliminated.
 264 0000 014B     		ldr	r3, .L35
 265 0002 43F83010 		str	r1, [r3, r0, lsl #3]
 266 0006 7047     		bx	lr
 267              	.L36:
 268              		.align	2
 269              	.L35:
 270 0008 80020E40 		.word	1074659968
 271              		.size	matrix_set_slave_priority, .-matrix_set_slave_priority
 272              		.section	.text.matrix_get_slave_priority,"ax",%progbits
 273              		.align	1
 274              		.p2align 2,,3
 275              		.global	matrix_get_slave_priority
 276              		.syntax unified
 277              		.thumb
 278              		.thumb_func
 279              		.fpu fpv4-sp-d16
 280              		.type	matrix_get_slave_priority, %function
 281              	matrix_get_slave_priority:
 282              		@ args = 0, pretend = 0, frame = 0
 283              		@ frame_needed = 0, uses_anonymous_args = 0
 284              		@ link register save eliminated.
 285 0000 014B     		ldr	r3, .L38
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc9oeAyq.s 			page 6


 286 0002 53F83000 		ldr	r0, [r3, r0, lsl #3]
 287 0006 7047     		bx	lr
 288              	.L39:
 289              		.align	2
 290              	.L38:
 291 0008 80020E40 		.word	1074659968
 292              		.size	matrix_get_slave_priority, .-matrix_get_slave_priority
 293              		.section	.text.matrix_set_master_remap,"ax",%progbits
 294              		.align	1
 295              		.p2align 2,,3
 296              		.global	matrix_set_master_remap
 297              		.syntax unified
 298              		.thumb
 299              		.thumb_func
 300              		.fpu fpv4-sp-d16
 301              		.type	matrix_set_master_remap, %function
 302              	matrix_set_master_remap:
 303              		@ args = 0, pretend = 0, frame = 0
 304              		@ frame_needed = 0, uses_anonymous_args = 0
 305              		@ link register save eliminated.
 306 0000 014B     		ldr	r3, .L41
 307 0002 C3F80001 		str	r0, [r3, #256]
 308 0006 7047     		bx	lr
 309              	.L42:
 310              		.align	2
 311              	.L41:
 312 0008 00020E40 		.word	1074659840
 313              		.size	matrix_set_master_remap, .-matrix_set_master_remap
 314              		.section	.text.matrix_get_master_remap,"ax",%progbits
 315              		.align	1
 316              		.p2align 2,,3
 317              		.global	matrix_get_master_remap
 318              		.syntax unified
 319              		.thumb
 320              		.thumb_func
 321              		.fpu fpv4-sp-d16
 322              		.type	matrix_get_master_remap, %function
 323              	matrix_get_master_remap:
 324              		@ args = 0, pretend = 0, frame = 0
 325              		@ frame_needed = 0, uses_anonymous_args = 0
 326              		@ link register save eliminated.
 327 0000 014B     		ldr	r3, .L44
 328 0002 D3F80001 		ldr	r0, [r3, #256]
 329 0006 7047     		bx	lr
 330              	.L45:
 331              		.align	2
 332              	.L44:
 333 0008 00020E40 		.word	1074659840
 334              		.size	matrix_get_master_remap, .-matrix_get_master_remap
 335              		.section	.text.matrix_set_system_io,"ax",%progbits
 336              		.align	1
 337              		.p2align 2,,3
 338              		.global	matrix_set_system_io
 339              		.syntax unified
 340              		.thumb
 341              		.thumb_func
 342              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc9oeAyq.s 			page 7


 343              		.type	matrix_set_system_io, %function
 344              	matrix_set_system_io:
 345              		@ args = 0, pretend = 0, frame = 0
 346              		@ frame_needed = 0, uses_anonymous_args = 0
 347              		@ link register save eliminated.
 348 0000 014B     		ldr	r3, .L47
 349 0002 C3F81401 		str	r0, [r3, #276]
 350 0006 7047     		bx	lr
 351              	.L48:
 352              		.align	2
 353              	.L47:
 354 0008 00020E40 		.word	1074659840
 355              		.size	matrix_set_system_io, .-matrix_set_system_io
 356              		.section	.text.matrix_get_system_io,"ax",%progbits
 357              		.align	1
 358              		.p2align 2,,3
 359              		.global	matrix_get_system_io
 360              		.syntax unified
 361              		.thumb
 362              		.thumb_func
 363              		.fpu fpv4-sp-d16
 364              		.type	matrix_get_system_io, %function
 365              	matrix_get_system_io:
 366              		@ args = 0, pretend = 0, frame = 0
 367              		@ frame_needed = 0, uses_anonymous_args = 0
 368              		@ link register save eliminated.
 369 0000 014B     		ldr	r3, .L50
 370 0002 D3F81401 		ldr	r0, [r3, #276]
 371 0006 7047     		bx	lr
 372              	.L51:
 373              		.align	2
 374              	.L50:
 375 0008 00020E40 		.word	1074659840
 376              		.size	matrix_get_system_io, .-matrix_get_system_io
 377              		.section	.text.matrix_set_nandflash_cs,"ax",%progbits
 378              		.align	1
 379              		.p2align 2,,3
 380              		.global	matrix_set_nandflash_cs
 381              		.syntax unified
 382              		.thumb
 383              		.thumb_func
 384              		.fpu fpv4-sp-d16
 385              		.type	matrix_set_nandflash_cs, %function
 386              	matrix_set_nandflash_cs:
 387              		@ args = 0, pretend = 0, frame = 0
 388              		@ frame_needed = 0, uses_anonymous_args = 0
 389              		@ link register save eliminated.
 390 0000 014B     		ldr	r3, .L53
 391 0002 C3F82401 		str	r0, [r3, #292]
 392 0006 7047     		bx	lr
 393              	.L54:
 394              		.align	2
 395              	.L53:
 396 0008 00020E40 		.word	1074659840
 397              		.size	matrix_set_nandflash_cs, .-matrix_set_nandflash_cs
 398              		.section	.text.matrix_get_nandflash_cs,"ax",%progbits
 399              		.align	1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc9oeAyq.s 			page 8


 400              		.p2align 2,,3
 401              		.global	matrix_get_nandflash_cs
 402              		.syntax unified
 403              		.thumb
 404              		.thumb_func
 405              		.fpu fpv4-sp-d16
 406              		.type	matrix_get_nandflash_cs, %function
 407              	matrix_get_nandflash_cs:
 408              		@ args = 0, pretend = 0, frame = 0
 409              		@ frame_needed = 0, uses_anonymous_args = 0
 410              		@ link register save eliminated.
 411 0000 014B     		ldr	r3, .L56
 412 0002 D3F82401 		ldr	r0, [r3, #292]
 413 0006 7047     		bx	lr
 414              	.L57:
 415              		.align	2
 416              	.L56:
 417 0008 00020E40 		.word	1074659840
 418              		.size	matrix_get_nandflash_cs, .-matrix_get_nandflash_cs
 419              		.section	.text.matrix_set_writeprotect,"ax",%progbits
 420              		.align	1
 421              		.p2align 2,,3
 422              		.global	matrix_set_writeprotect
 423              		.syntax unified
 424              		.thumb
 425              		.thumb_func
 426              		.fpu fpv4-sp-d16
 427              		.type	matrix_set_writeprotect, %function
 428              	matrix_set_writeprotect:
 429              		@ args = 0, pretend = 0, frame = 0
 430              		@ frame_needed = 0, uses_anonymous_args = 0
 431              		@ link register save eliminated.
 432 0000 044B     		ldr	r3, .L62
 433 0002 18B9     		cbnz	r0, .L61
 434 0004 044A     		ldr	r2, .L62+4
 435 0006 C3F8E421 		str	r2, [r3, #484]
 436 000a 7047     		bx	lr
 437              	.L61:
 438 000c 034A     		ldr	r2, .L62+8
 439 000e C3F8E421 		str	r2, [r3, #484]
 440 0012 7047     		bx	lr
 441              	.L63:
 442              		.align	2
 443              	.L62:
 444 0014 00020E40 		.word	1074659840
 445 0018 0054414D 		.word	1296126976
 446 001c 0154414D 		.word	1296126977
 447              		.size	matrix_set_writeprotect, .-matrix_set_writeprotect
 448              		.section	.text.matrix_get_writeprotect_status,"ax",%progbits
 449              		.align	1
 450              		.p2align 2,,3
 451              		.global	matrix_get_writeprotect_status
 452              		.syntax unified
 453              		.thumb
 454              		.thumb_func
 455              		.fpu fpv4-sp-d16
 456              		.type	matrix_get_writeprotect_status, %function
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc9oeAyq.s 			page 9


 457              	matrix_get_writeprotect_status:
 458              		@ args = 0, pretend = 0, frame = 0
 459              		@ frame_needed = 0, uses_anonymous_args = 0
 460              		@ link register save eliminated.
 461 0000 014B     		ldr	r3, .L65
 462 0002 D3F8E801 		ldr	r0, [r3, #488]
 463 0006 7047     		bx	lr
 464              	.L66:
 465              		.align	2
 466              	.L65:
 467 0008 00020E40 		.word	1074659840
 468              		.size	matrix_get_writeprotect_status, .-matrix_get_writeprotect_status
 469              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 470              		.align	2
 471              		.type	cpu_irq_critical_section_counter, %object
 472              		.size	cpu_irq_critical_section_counter, 4
 473              	cpu_irq_critical_section_counter:
 474 0000 00000000 		.space	4
 475              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 476              		.type	cpu_irq_prev_interrupt_state, %object
 477              		.size	cpu_irq_prev_interrupt_state, 1
 478              	cpu_irq_prev_interrupt_state:
 479 0000 00       		.space	1
 480              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
