ARM GAS  /tmp/ccQR8ZYG.s 			page 1


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
  14              		.section	.text.matrix_set_master_burst_type,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	matrix_set_master_burst_type
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	matrix_set_master_burst_type, %function
  23              	matrix_set_master_burst_type:
  24              		@ args = 0, pretend = 0, frame = 8
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 064A     		ldr	r2, .L3
  28 0002 52F82030 		ldr	r3, [r2, r0, lsl #2]
  29 0006 82B0     		sub	sp, sp, #8
  30 0008 23F00703 		bic	r3, r3, #7
  31 000c 0193     		str	r3, [sp, #4]
  32 000e 019B     		ldr	r3, [sp, #4]
  33 0010 1943     		orrs	r1, r1, r3
  34 0012 42F82010 		str	r1, [r2, r0, lsl #2]
  35 0016 02B0     		add	sp, sp, #8
  36              		@ sp needed
  37 0018 7047     		bx	lr
  38              	.L4:
  39 001a 00BF     		.align	2
  40              	.L3:
  41 001c 00020E40 		.word	1074659840
  42              		.size	matrix_set_master_burst_type, .-matrix_set_master_burst_type
  43              		.section	.text.matrix_get_master_burst_type,"ax",%progbits
  44              		.align	1
  45              		.p2align 2,,3
  46              		.global	matrix_get_master_burst_type
  47              		.syntax unified
  48              		.thumb
  49              		.thumb_func
  50              		.fpu fpv4-sp-d16
  51              		.type	matrix_get_master_burst_type, %function
  52              	matrix_get_master_burst_type:
  53              		@ args = 0, pretend = 0, frame = 8
  54              		@ frame_needed = 0, uses_anonymous_args = 0
  55              		@ link register save eliminated.
  56 0000 054B     		ldr	r3, .L7
  57 0002 53F82030 		ldr	r3, [r3, r0, lsl #2]
ARM GAS  /tmp/ccQR8ZYG.s 			page 2


  58 0006 82B0     		sub	sp, sp, #8
  59 0008 03F00703 		and	r3, r3, #7
  60 000c 0193     		str	r3, [sp, #4]
  61 000e 0198     		ldr	r0, [sp, #4]
  62 0010 C0B2     		uxtb	r0, r0
  63 0012 02B0     		add	sp, sp, #8
  64              		@ sp needed
  65 0014 7047     		bx	lr
  66              	.L8:
  67 0016 00BF     		.align	2
  68              	.L7:
  69 0018 00020E40 		.word	1074659840
  70              		.size	matrix_get_master_burst_type, .-matrix_get_master_burst_type
  71              		.section	.text.matrix_set_slave_slot_cycle,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.global	matrix_set_slave_slot_cycle
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu fpv4-sp-d16
  79              		.type	matrix_set_slave_slot_cycle, %function
  80              	matrix_set_slave_slot_cycle:
  81              		@ args = 0, pretend = 0, frame = 8
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 084B     		ldr	r3, .L11
  85 0002 03EB8000 		add	r0, r3, r0, lsl #2
  86 0006 82B0     		sub	sp, sp, #8
  87 0008 036C     		ldr	r3, [r0, #64]
  88 000a 23F4FF73 		bic	r3, r3, #510
  89 000e 23F00103 		bic	r3, r3, #1
  90 0012 0193     		str	r3, [sp, #4]
  91 0014 019B     		ldr	r3, [sp, #4]
  92 0016 C1F30801 		ubfx	r1, r1, #0, #9
  93 001a 1943     		orrs	r1, r1, r3
  94 001c 0164     		str	r1, [r0, #64]
  95 001e 02B0     		add	sp, sp, #8
  96              		@ sp needed
  97 0020 7047     		bx	lr
  98              	.L12:
  99 0022 00BF     		.align	2
 100              	.L11:
 101 0024 00020E40 		.word	1074659840
 102              		.size	matrix_set_slave_slot_cycle, .-matrix_set_slave_slot_cycle
 103              		.section	.text.matrix_get_slave_slot_cycle,"ax",%progbits
 104              		.align	1
 105              		.p2align 2,,3
 106              		.global	matrix_get_slave_slot_cycle
 107              		.syntax unified
 108              		.thumb
 109              		.thumb_func
 110              		.fpu fpv4-sp-d16
 111              		.type	matrix_get_slave_slot_cycle, %function
 112              	matrix_get_slave_slot_cycle:
 113              		@ args = 0, pretend = 0, frame = 8
 114              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccQR8ZYG.s 			page 3


 115              		@ link register save eliminated.
 116 0000 1030     		adds	r0, r0, #16
 117 0002 054B     		ldr	r3, .L15
 118 0004 53F82030 		ldr	r3, [r3, r0, lsl #2]
 119 0008 82B0     		sub	sp, sp, #8
 120 000a C3F30803 		ubfx	r3, r3, #0, #9
 121 000e 0193     		str	r3, [sp, #4]
 122 0010 0198     		ldr	r0, [sp, #4]
 123 0012 02B0     		add	sp, sp, #8
 124              		@ sp needed
 125 0014 7047     		bx	lr
 126              	.L16:
 127 0016 00BF     		.align	2
 128              	.L15:
 129 0018 00020E40 		.word	1074659840
 130              		.size	matrix_get_slave_slot_cycle, .-matrix_get_slave_slot_cycle
 131              		.section	.text.matrix_set_slave_default_master_type,"ax",%progbits
 132              		.align	1
 133              		.p2align 2,,3
 134              		.global	matrix_set_slave_default_master_type
 135              		.syntax unified
 136              		.thumb
 137              		.thumb_func
 138              		.fpu fpv4-sp-d16
 139              		.type	matrix_set_slave_default_master_type, %function
 140              	matrix_set_slave_default_master_type:
 141              		@ args = 0, pretend = 0, frame = 8
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143              		@ link register save eliminated.
 144 0000 064B     		ldr	r3, .L19
 145 0002 03EB8000 		add	r0, r3, r0, lsl #2
 146 0006 82B0     		sub	sp, sp, #8
 147 0008 036C     		ldr	r3, [r0, #64]
 148 000a 23F44033 		bic	r3, r3, #196608
 149 000e 0193     		str	r3, [sp, #4]
 150 0010 019B     		ldr	r3, [sp, #4]
 151 0012 1943     		orrs	r1, r1, r3
 152 0014 0164     		str	r1, [r0, #64]
 153 0016 02B0     		add	sp, sp, #8
 154              		@ sp needed
 155 0018 7047     		bx	lr
 156              	.L20:
 157 001a 00BF     		.align	2
 158              	.L19:
 159 001c 00020E40 		.word	1074659840
 160              		.size	matrix_set_slave_default_master_type, .-matrix_set_slave_default_master_type
 161              		.section	.text.matrix_get_slave_default_master_type,"ax",%progbits
 162              		.align	1
 163              		.p2align 2,,3
 164              		.global	matrix_get_slave_default_master_type
 165              		.syntax unified
 166              		.thumb
 167              		.thumb_func
 168              		.fpu fpv4-sp-d16
 169              		.type	matrix_get_slave_default_master_type, %function
 170              	matrix_get_slave_default_master_type:
 171              		@ args = 0, pretend = 0, frame = 8
ARM GAS  /tmp/ccQR8ZYG.s 			page 4


 172              		@ frame_needed = 0, uses_anonymous_args = 0
 173              		@ link register save eliminated.
 174 0000 1030     		adds	r0, r0, #16
 175 0002 054B     		ldr	r3, .L23
 176 0004 53F82030 		ldr	r3, [r3, r0, lsl #2]
 177 0008 82B0     		sub	sp, sp, #8
 178 000a 03F44033 		and	r3, r3, #196608
 179 000e 0193     		str	r3, [sp, #4]
 180 0010 0198     		ldr	r0, [sp, #4]
 181 0012 02B0     		add	sp, sp, #8
 182              		@ sp needed
 183 0014 7047     		bx	lr
 184              	.L24:
 185 0016 00BF     		.align	2
 186              	.L23:
 187 0018 00020E40 		.word	1074659840
 188              		.size	matrix_get_slave_default_master_type, .-matrix_get_slave_default_master_type
 189              		.section	.text.matrix_set_slave_fixed_default_master,"ax",%progbits
 190              		.align	1
 191              		.p2align 2,,3
 192              		.global	matrix_set_slave_fixed_default_master
 193              		.syntax unified
 194              		.thumb
 195              		.thumb_func
 196              		.fpu fpv4-sp-d16
 197              		.type	matrix_set_slave_fixed_default_master, %function
 198              	matrix_set_slave_fixed_default_master:
 199              		@ args = 0, pretend = 0, frame = 8
 200              		@ frame_needed = 0, uses_anonymous_args = 0
 201              		@ link register save eliminated.
 202 0000 074B     		ldr	r3, .L27
 203 0002 03EB8000 		add	r0, r3, r0, lsl #2
 204 0006 82B0     		sub	sp, sp, #8
 205 0008 036C     		ldr	r3, [r0, #64]
 206 000a 23F47013 		bic	r3, r3, #3932160
 207 000e 0193     		str	r3, [sp, #4]
 208 0010 019B     		ldr	r3, [sp, #4]
 209 0012 8904     		lsls	r1, r1, #18
 210 0014 01F47011 		and	r1, r1, #3932160
 211 0018 1943     		orrs	r1, r1, r3
 212 001a 0164     		str	r1, [r0, #64]
 213 001c 02B0     		add	sp, sp, #8
 214              		@ sp needed
 215 001e 7047     		bx	lr
 216              	.L28:
 217              		.align	2
 218              	.L27:
 219 0020 00020E40 		.word	1074659840
 220              		.size	matrix_set_slave_fixed_default_master, .-matrix_set_slave_fixed_default_master
 221              		.section	.text.matrix_get_slave_fixed_default_master,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	matrix_get_slave_fixed_default_master
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccQR8ZYG.s 			page 5


 229              		.type	matrix_get_slave_fixed_default_master, %function
 230              	matrix_get_slave_fixed_default_master:
 231              		@ args = 0, pretend = 0, frame = 8
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233              		@ link register save eliminated.
 234 0000 1030     		adds	r0, r0, #16
 235 0002 054B     		ldr	r3, .L31
 236 0004 53F82030 		ldr	r3, [r3, r0, lsl #2]
 237 0008 82B0     		sub	sp, sp, #8
 238 000a 03F47013 		and	r3, r3, #3932160
 239 000e 0193     		str	r3, [sp, #4]
 240 0010 0198     		ldr	r0, [sp, #4]
 241 0012 800C     		lsrs	r0, r0, #18
 242 0014 02B0     		add	sp, sp, #8
 243              		@ sp needed
 244 0016 7047     		bx	lr
 245              	.L32:
 246              		.align	2
 247              	.L31:
 248 0018 00020E40 		.word	1074659840
 249              		.size	matrix_get_slave_fixed_default_master, .-matrix_get_slave_fixed_default_master
 250              		.section	.text.matrix_set_slave_priority,"ax",%progbits
 251              		.align	1
 252              		.p2align 2,,3
 253              		.global	matrix_set_slave_priority
 254              		.syntax unified
 255              		.thumb
 256              		.thumb_func
 257              		.fpu fpv4-sp-d16
 258              		.type	matrix_set_slave_priority, %function
 259              	matrix_set_slave_priority:
 260              		@ args = 0, pretend = 0, frame = 0
 261              		@ frame_needed = 0, uses_anonymous_args = 0
 262              		@ link register save eliminated.
 263 0000 014B     		ldr	r3, .L34
 264 0002 43F83010 		str	r1, [r3, r0, lsl #3]
 265 0006 7047     		bx	lr
 266              	.L35:
 267              		.align	2
 268              	.L34:
 269 0008 80020E40 		.word	1074659968
 270              		.size	matrix_set_slave_priority, .-matrix_set_slave_priority
 271              		.section	.text.matrix_get_slave_priority,"ax",%progbits
 272              		.align	1
 273              		.p2align 2,,3
 274              		.global	matrix_get_slave_priority
 275              		.syntax unified
 276              		.thumb
 277              		.thumb_func
 278              		.fpu fpv4-sp-d16
 279              		.type	matrix_get_slave_priority, %function
 280              	matrix_get_slave_priority:
 281              		@ args = 0, pretend = 0, frame = 0
 282              		@ frame_needed = 0, uses_anonymous_args = 0
 283              		@ link register save eliminated.
 284 0000 014B     		ldr	r3, .L37
 285 0002 53F83000 		ldr	r0, [r3, r0, lsl #3]
ARM GAS  /tmp/ccQR8ZYG.s 			page 6


 286 0006 7047     		bx	lr
 287              	.L38:
 288              		.align	2
 289              	.L37:
 290 0008 80020E40 		.word	1074659968
 291              		.size	matrix_get_slave_priority, .-matrix_get_slave_priority
 292              		.section	.text.matrix_set_master_remap,"ax",%progbits
 293              		.align	1
 294              		.p2align 2,,3
 295              		.global	matrix_set_master_remap
 296              		.syntax unified
 297              		.thumb
 298              		.thumb_func
 299              		.fpu fpv4-sp-d16
 300              		.type	matrix_set_master_remap, %function
 301              	matrix_set_master_remap:
 302              		@ args = 0, pretend = 0, frame = 0
 303              		@ frame_needed = 0, uses_anonymous_args = 0
 304              		@ link register save eliminated.
 305 0000 014B     		ldr	r3, .L40
 306 0002 C3F80001 		str	r0, [r3, #256]
 307 0006 7047     		bx	lr
 308              	.L41:
 309              		.align	2
 310              	.L40:
 311 0008 00020E40 		.word	1074659840
 312              		.size	matrix_set_master_remap, .-matrix_set_master_remap
 313              		.section	.text.matrix_get_master_remap,"ax",%progbits
 314              		.align	1
 315              		.p2align 2,,3
 316              		.global	matrix_get_master_remap
 317              		.syntax unified
 318              		.thumb
 319              		.thumb_func
 320              		.fpu fpv4-sp-d16
 321              		.type	matrix_get_master_remap, %function
 322              	matrix_get_master_remap:
 323              		@ args = 0, pretend = 0, frame = 0
 324              		@ frame_needed = 0, uses_anonymous_args = 0
 325              		@ link register save eliminated.
 326 0000 014B     		ldr	r3, .L43
 327 0002 D3F80001 		ldr	r0, [r3, #256]
 328 0006 7047     		bx	lr
 329              	.L44:
 330              		.align	2
 331              	.L43:
 332 0008 00020E40 		.word	1074659840
 333              		.size	matrix_get_master_remap, .-matrix_get_master_remap
 334              		.section	.text.matrix_set_system_io,"ax",%progbits
 335              		.align	1
 336              		.p2align 2,,3
 337              		.global	matrix_set_system_io
 338              		.syntax unified
 339              		.thumb
 340              		.thumb_func
 341              		.fpu fpv4-sp-d16
 342              		.type	matrix_set_system_io, %function
ARM GAS  /tmp/ccQR8ZYG.s 			page 7


 343              	matrix_set_system_io:
 344              		@ args = 0, pretend = 0, frame = 0
 345              		@ frame_needed = 0, uses_anonymous_args = 0
 346              		@ link register save eliminated.
 347 0000 014B     		ldr	r3, .L46
 348 0002 C3F81401 		str	r0, [r3, #276]
 349 0006 7047     		bx	lr
 350              	.L47:
 351              		.align	2
 352              	.L46:
 353 0008 00020E40 		.word	1074659840
 354              		.size	matrix_set_system_io, .-matrix_set_system_io
 355              		.section	.text.matrix_get_system_io,"ax",%progbits
 356              		.align	1
 357              		.p2align 2,,3
 358              		.global	matrix_get_system_io
 359              		.syntax unified
 360              		.thumb
 361              		.thumb_func
 362              		.fpu fpv4-sp-d16
 363              		.type	matrix_get_system_io, %function
 364              	matrix_get_system_io:
 365              		@ args = 0, pretend = 0, frame = 0
 366              		@ frame_needed = 0, uses_anonymous_args = 0
 367              		@ link register save eliminated.
 368 0000 014B     		ldr	r3, .L49
 369 0002 D3F81401 		ldr	r0, [r3, #276]
 370 0006 7047     		bx	lr
 371              	.L50:
 372              		.align	2
 373              	.L49:
 374 0008 00020E40 		.word	1074659840
 375              		.size	matrix_get_system_io, .-matrix_get_system_io
 376              		.section	.text.matrix_set_nandflash_cs,"ax",%progbits
 377              		.align	1
 378              		.p2align 2,,3
 379              		.global	matrix_set_nandflash_cs
 380              		.syntax unified
 381              		.thumb
 382              		.thumb_func
 383              		.fpu fpv4-sp-d16
 384              		.type	matrix_set_nandflash_cs, %function
 385              	matrix_set_nandflash_cs:
 386              		@ args = 0, pretend = 0, frame = 0
 387              		@ frame_needed = 0, uses_anonymous_args = 0
 388              		@ link register save eliminated.
 389 0000 014B     		ldr	r3, .L52
 390 0002 C3F82401 		str	r0, [r3, #292]
 391 0006 7047     		bx	lr
 392              	.L53:
 393              		.align	2
 394              	.L52:
 395 0008 00020E40 		.word	1074659840
 396              		.size	matrix_set_nandflash_cs, .-matrix_set_nandflash_cs
 397              		.section	.text.matrix_get_nandflash_cs,"ax",%progbits
 398              		.align	1
 399              		.p2align 2,,3
ARM GAS  /tmp/ccQR8ZYG.s 			page 8


 400              		.global	matrix_get_nandflash_cs
 401              		.syntax unified
 402              		.thumb
 403              		.thumb_func
 404              		.fpu fpv4-sp-d16
 405              		.type	matrix_get_nandflash_cs, %function
 406              	matrix_get_nandflash_cs:
 407              		@ args = 0, pretend = 0, frame = 0
 408              		@ frame_needed = 0, uses_anonymous_args = 0
 409              		@ link register save eliminated.
 410 0000 014B     		ldr	r3, .L55
 411 0002 D3F82401 		ldr	r0, [r3, #292]
 412 0006 7047     		bx	lr
 413              	.L56:
 414              		.align	2
 415              	.L55:
 416 0008 00020E40 		.word	1074659840
 417              		.size	matrix_get_nandflash_cs, .-matrix_get_nandflash_cs
 418              		.section	.text.matrix_set_writeprotect,"ax",%progbits
 419              		.align	1
 420              		.p2align 2,,3
 421              		.global	matrix_set_writeprotect
 422              		.syntax unified
 423              		.thumb
 424              		.thumb_func
 425              		.fpu fpv4-sp-d16
 426              		.type	matrix_set_writeprotect, %function
 427              	matrix_set_writeprotect:
 428              		@ args = 0, pretend = 0, frame = 0
 429              		@ frame_needed = 0, uses_anonymous_args = 0
 430              		@ link register save eliminated.
 431 0000 044B     		ldr	r3, .L62
 432 0002 18B9     		cbnz	r0, .L61
 433 0004 044A     		ldr	r2, .L62+4
 434 0006 C3F8E421 		str	r2, [r3, #484]
 435 000a 7047     		bx	lr
 436              	.L61:
 437 000c 034A     		ldr	r2, .L62+8
 438 000e C3F8E421 		str	r2, [r3, #484]
 439 0012 7047     		bx	lr
 440              	.L63:
 441              		.align	2
 442              	.L62:
 443 0014 00020E40 		.word	1074659840
 444 0018 0054414D 		.word	1296126976
 445 001c 0154414D 		.word	1296126977
 446              		.size	matrix_set_writeprotect, .-matrix_set_writeprotect
 447              		.section	.text.matrix_get_writeprotect_status,"ax",%progbits
 448              		.align	1
 449              		.p2align 2,,3
 450              		.global	matrix_get_writeprotect_status
 451              		.syntax unified
 452              		.thumb
 453              		.thumb_func
 454              		.fpu fpv4-sp-d16
 455              		.type	matrix_get_writeprotect_status, %function
 456              	matrix_get_writeprotect_status:
ARM GAS  /tmp/ccQR8ZYG.s 			page 9


 457              		@ args = 0, pretend = 0, frame = 0
 458              		@ frame_needed = 0, uses_anonymous_args = 0
 459              		@ link register save eliminated.
 460 0000 014B     		ldr	r3, .L65
 461 0002 D3F8E801 		ldr	r0, [r3, #488]
 462 0006 7047     		bx	lr
 463              	.L66:
 464              		.align	2
 465              	.L65:
 466 0008 00020E40 		.word	1074659840
 467              		.size	matrix_get_writeprotect_status, .-matrix_get_writeprotect_status
 468              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 469              		.align	2
 470              		.type	cpu_irq_critical_section_counter, %object
 471              		.size	cpu_irq_critical_section_counter, 4
 472              	cpu_irq_critical_section_counter:
 473 0000 00000000 		.space	4
 474              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 475              		.type	cpu_irq_prev_interrupt_state, %object
 476              		.size	cpu_irq_prev_interrupt_state, 1
 477              	cpu_irq_prev_interrupt_state:
 478 0000 00       		.space	1
 479              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
