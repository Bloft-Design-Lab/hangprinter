ARM GAS  /tmp/ccphOcJz.s 			page 1


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
  11              		.file	"matrix.c"
  12              		.section	.text.matrix_set_master_burst_type,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	matrix_set_master_burst_type
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	matrix_set_master_burst_type, %function
  21              	matrix_set_master_burst_type:
  22              		@ args = 0, pretend = 0, frame = 8
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 064A     		ldr	r2, .L3
  26 0002 82B0     		sub	sp, sp, #8
  27 0004 52F82030 		ldr	r3, [r2, r0, lsl #2]
  28 0008 23F00703 		bic	r3, r3, #7
  29 000c 0193     		str	r3, [sp, #4]
  30 000e 019B     		ldr	r3, [sp, #4]
  31 0010 1943     		orrs	r1, r1, r3
  32 0012 42F82010 		str	r1, [r2, r0, lsl #2]
  33 0016 02B0     		add	sp, sp, #8
  34              		@ sp needed
  35 0018 7047     		bx	lr
  36              	.L4:
  37 001a 00BF     		.align	2
  38              	.L3:
  39 001c 00040E40 		.word	1074660352
  40              		.size	matrix_set_master_burst_type, .-matrix_set_master_burst_type
  41              		.section	.text.matrix_get_master_burst_type,"ax",%progbits
  42              		.align	1
  43              		.p2align 2,,3
  44              		.global	matrix_get_master_burst_type
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu softvfp
  49              		.type	matrix_get_master_burst_type, %function
  50              	matrix_get_master_burst_type:
  51              		@ args = 0, pretend = 0, frame = 8
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53              		@ link register save eliminated.
  54 0000 054B     		ldr	r3, .L7
  55 0002 82B0     		sub	sp, sp, #8
  56 0004 53F82030 		ldr	r3, [r3, r0, lsl #2]
  57 0008 03F00703 		and	r3, r3, #7
ARM GAS  /tmp/ccphOcJz.s 			page 2


  58 000c 0193     		str	r3, [sp, #4]
  59 000e 0198     		ldr	r0, [sp, #4]
  60 0010 C0B2     		uxtb	r0, r0
  61 0012 02B0     		add	sp, sp, #8
  62              		@ sp needed
  63 0014 7047     		bx	lr
  64              	.L8:
  65 0016 00BF     		.align	2
  66              	.L7:
  67 0018 00040E40 		.word	1074660352
  68              		.size	matrix_get_master_burst_type, .-matrix_get_master_burst_type
  69              		.section	.text.matrix_set_slave_slot_cycle,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	matrix_set_slave_slot_cycle
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu softvfp
  77              		.type	matrix_set_slave_slot_cycle, %function
  78              	matrix_set_slave_slot_cycle:
  79              		@ args = 0, pretend = 0, frame = 8
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81              		@ link register save eliminated.
  82 0000 064B     		ldr	r3, .L11
  83 0002 82B0     		sub	sp, sp, #8
  84 0004 03EB8000 		add	r0, r3, r0, lsl #2
  85 0008 036C     		ldr	r3, [r0, #64]
  86 000a C9B2     		uxtb	r1, r1
  87 000c 23F0FF03 		bic	r3, r3, #255
  88 0010 0193     		str	r3, [sp, #4]
  89 0012 019B     		ldr	r3, [sp, #4]
  90 0014 1943     		orrs	r1, r1, r3
  91 0016 0164     		str	r1, [r0, #64]
  92 0018 02B0     		add	sp, sp, #8
  93              		@ sp needed
  94 001a 7047     		bx	lr
  95              	.L12:
  96              		.align	2
  97              	.L11:
  98 001c 00040E40 		.word	1074660352
  99              		.size	matrix_set_slave_slot_cycle, .-matrix_set_slave_slot_cycle
 100              		.section	.text.matrix_get_slave_slot_cycle,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.global	matrix_get_slave_slot_cycle
 104              		.syntax unified
 105              		.thumb
 106              		.thumb_func
 107              		.fpu softvfp
 108              		.type	matrix_get_slave_slot_cycle, %function
 109              	matrix_get_slave_slot_cycle:
 110              		@ args = 0, pretend = 0, frame = 8
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112              		@ link register save eliminated.
 113 0000 044B     		ldr	r3, .L15
 114 0002 1030     		adds	r0, r0, #16
ARM GAS  /tmp/ccphOcJz.s 			page 3


 115 0004 53F82030 		ldr	r3, [r3, r0, lsl #2]
 116 0008 82B0     		sub	sp, sp, #8
 117 000a DBB2     		uxtb	r3, r3
 118 000c 0193     		str	r3, [sp, #4]
 119 000e 0198     		ldr	r0, [sp, #4]
 120 0010 02B0     		add	sp, sp, #8
 121              		@ sp needed
 122 0012 7047     		bx	lr
 123              	.L16:
 124              		.align	2
 125              	.L15:
 126 0014 00040E40 		.word	1074660352
 127              		.size	matrix_get_slave_slot_cycle, .-matrix_get_slave_slot_cycle
 128              		.section	.text.matrix_set_slave_default_master_type,"ax",%progbits
 129              		.align	1
 130              		.p2align 2,,3
 131              		.global	matrix_set_slave_default_master_type
 132              		.syntax unified
 133              		.thumb
 134              		.thumb_func
 135              		.fpu softvfp
 136              		.type	matrix_set_slave_default_master_type, %function
 137              	matrix_set_slave_default_master_type:
 138              		@ args = 0, pretend = 0, frame = 8
 139              		@ frame_needed = 0, uses_anonymous_args = 0
 140              		@ link register save eliminated.
 141 0000 064B     		ldr	r3, .L19
 142 0002 82B0     		sub	sp, sp, #8
 143 0004 03EB8000 		add	r0, r3, r0, lsl #2
 144 0008 036C     		ldr	r3, [r0, #64]
 145 000a 23F44033 		bic	r3, r3, #196608
 146 000e 0193     		str	r3, [sp, #4]
 147 0010 019B     		ldr	r3, [sp, #4]
 148 0012 1943     		orrs	r1, r1, r3
 149 0014 0164     		str	r1, [r0, #64]
 150 0016 02B0     		add	sp, sp, #8
 151              		@ sp needed
 152 0018 7047     		bx	lr
 153              	.L20:
 154 001a 00BF     		.align	2
 155              	.L19:
 156 001c 00040E40 		.word	1074660352
 157              		.size	matrix_set_slave_default_master_type, .-matrix_set_slave_default_master_type
 158              		.section	.text.matrix_get_slave_default_master_type,"ax",%progbits
 159              		.align	1
 160              		.p2align 2,,3
 161              		.global	matrix_get_slave_default_master_type
 162              		.syntax unified
 163              		.thumb
 164              		.thumb_func
 165              		.fpu softvfp
 166              		.type	matrix_get_slave_default_master_type, %function
 167              	matrix_get_slave_default_master_type:
 168              		@ args = 0, pretend = 0, frame = 8
 169              		@ frame_needed = 0, uses_anonymous_args = 0
 170              		@ link register save eliminated.
 171 0000 054B     		ldr	r3, .L23
ARM GAS  /tmp/ccphOcJz.s 			page 4


 172 0002 1030     		adds	r0, r0, #16
 173 0004 53F82030 		ldr	r3, [r3, r0, lsl #2]
 174 0008 82B0     		sub	sp, sp, #8
 175 000a 03F44033 		and	r3, r3, #196608
 176 000e 0193     		str	r3, [sp, #4]
 177 0010 0198     		ldr	r0, [sp, #4]
 178 0012 02B0     		add	sp, sp, #8
 179              		@ sp needed
 180 0014 7047     		bx	lr
 181              	.L24:
 182 0016 00BF     		.align	2
 183              	.L23:
 184 0018 00040E40 		.word	1074660352
 185              		.size	matrix_get_slave_default_master_type, .-matrix_get_slave_default_master_type
 186              		.section	.text.matrix_set_slave_fixed_default_master,"ax",%progbits
 187              		.align	1
 188              		.p2align 2,,3
 189              		.global	matrix_set_slave_fixed_default_master
 190              		.syntax unified
 191              		.thumb
 192              		.thumb_func
 193              		.fpu softvfp
 194              		.type	matrix_set_slave_fixed_default_master, %function
 195              	matrix_set_slave_fixed_default_master:
 196              		@ args = 0, pretend = 0, frame = 8
 197              		@ frame_needed = 0, uses_anonymous_args = 0
 198              		@ link register save eliminated.
 199 0000 074B     		ldr	r3, .L27
 200 0002 82B0     		sub	sp, sp, #8
 201 0004 03EB8000 		add	r0, r3, r0, lsl #2
 202 0008 036C     		ldr	r3, [r0, #64]
 203 000a 8904     		lsls	r1, r1, #18
 204 000c 23F4E013 		bic	r3, r3, #1835008
 205 0010 0193     		str	r3, [sp, #4]
 206 0012 019B     		ldr	r3, [sp, #4]
 207 0014 01F4E011 		and	r1, r1, #1835008
 208 0018 1943     		orrs	r1, r1, r3
 209 001a 0164     		str	r1, [r0, #64]
 210 001c 02B0     		add	sp, sp, #8
 211              		@ sp needed
 212 001e 7047     		bx	lr
 213              	.L28:
 214              		.align	2
 215              	.L27:
 216 0020 00040E40 		.word	1074660352
 217              		.size	matrix_set_slave_fixed_default_master, .-matrix_set_slave_fixed_default_master
 218              		.section	.text.matrix_get_slave_fixed_default_master,"ax",%progbits
 219              		.align	1
 220              		.p2align 2,,3
 221              		.global	matrix_get_slave_fixed_default_master
 222              		.syntax unified
 223              		.thumb
 224              		.thumb_func
 225              		.fpu softvfp
 226              		.type	matrix_get_slave_fixed_default_master, %function
 227              	matrix_get_slave_fixed_default_master:
 228              		@ args = 0, pretend = 0, frame = 8
ARM GAS  /tmp/ccphOcJz.s 			page 5


 229              		@ frame_needed = 0, uses_anonymous_args = 0
 230              		@ link register save eliminated.
 231 0000 054B     		ldr	r3, .L31
 232 0002 1030     		adds	r0, r0, #16
 233 0004 53F82030 		ldr	r3, [r3, r0, lsl #2]
 234 0008 82B0     		sub	sp, sp, #8
 235 000a 03F4E013 		and	r3, r3, #1835008
 236 000e 0193     		str	r3, [sp, #4]
 237 0010 0198     		ldr	r0, [sp, #4]
 238 0012 800C     		lsrs	r0, r0, #18
 239 0014 02B0     		add	sp, sp, #8
 240              		@ sp needed
 241 0016 7047     		bx	lr
 242              	.L32:
 243              		.align	2
 244              	.L31:
 245 0018 00040E40 		.word	1074660352
 246              		.size	matrix_get_slave_fixed_default_master, .-matrix_get_slave_fixed_default_master
 247              		.section	.text.matrix_set_slave_arbitration_type,"ax",%progbits
 248              		.align	1
 249              		.p2align 2,,3
 250              		.global	matrix_set_slave_arbitration_type
 251              		.syntax unified
 252              		.thumb
 253              		.thumb_func
 254              		.fpu softvfp
 255              		.type	matrix_set_slave_arbitration_type, %function
 256              	matrix_set_slave_arbitration_type:
 257              		@ args = 0, pretend = 0, frame = 8
 258              		@ frame_needed = 0, uses_anonymous_args = 0
 259              		@ link register save eliminated.
 260 0000 064B     		ldr	r3, .L35
 261 0002 82B0     		sub	sp, sp, #8
 262 0004 03EB8000 		add	r0, r3, r0, lsl #2
 263 0008 036C     		ldr	r3, [r0, #64]
 264 000a 23F04073 		bic	r3, r3, #50331648
 265 000e 0193     		str	r3, [sp, #4]
 266 0010 019B     		ldr	r3, [sp, #4]
 267 0012 1943     		orrs	r1, r1, r3
 268 0014 0164     		str	r1, [r0, #64]
 269 0016 02B0     		add	sp, sp, #8
 270              		@ sp needed
 271 0018 7047     		bx	lr
 272              	.L36:
 273 001a 00BF     		.align	2
 274              	.L35:
 275 001c 00040E40 		.word	1074660352
 276              		.size	matrix_set_slave_arbitration_type, .-matrix_set_slave_arbitration_type
 277              		.section	.text.matrix_get_slave_arbitration_type,"ax",%progbits
 278              		.align	1
 279              		.p2align 2,,3
 280              		.global	matrix_get_slave_arbitration_type
 281              		.syntax unified
 282              		.thumb
 283              		.thumb_func
 284              		.fpu softvfp
 285              		.type	matrix_get_slave_arbitration_type, %function
ARM GAS  /tmp/ccphOcJz.s 			page 6


 286              	matrix_get_slave_arbitration_type:
 287              		@ args = 0, pretend = 0, frame = 8
 288              		@ frame_needed = 0, uses_anonymous_args = 0
 289              		@ link register save eliminated.
 290 0000 054B     		ldr	r3, .L39
 291 0002 1030     		adds	r0, r0, #16
 292 0004 53F82030 		ldr	r3, [r3, r0, lsl #2]
 293 0008 82B0     		sub	sp, sp, #8
 294 000a 03F04073 		and	r3, r3, #50331648
 295 000e 0193     		str	r3, [sp, #4]
 296 0010 0198     		ldr	r0, [sp, #4]
 297 0012 02B0     		add	sp, sp, #8
 298              		@ sp needed
 299 0014 7047     		bx	lr
 300              	.L40:
 301 0016 00BF     		.align	2
 302              	.L39:
 303 0018 00040E40 		.word	1074660352
 304              		.size	matrix_get_slave_arbitration_type, .-matrix_get_slave_arbitration_type
 305              		.section	.text.matrix_set_slave_priority,"ax",%progbits
 306              		.align	1
 307              		.p2align 2,,3
 308              		.global	matrix_set_slave_priority
 309              		.syntax unified
 310              		.thumb
 311              		.thumb_func
 312              		.fpu softvfp
 313              		.type	matrix_set_slave_priority, %function
 314              	matrix_set_slave_priority:
 315              		@ args = 0, pretend = 0, frame = 0
 316              		@ frame_needed = 0, uses_anonymous_args = 0
 317              		@ link register save eliminated.
 318 0000 014B     		ldr	r3, .L42
 319 0002 43F83010 		str	r1, [r3, r0, lsl #3]
 320 0006 7047     		bx	lr
 321              	.L43:
 322              		.align	2
 323              	.L42:
 324 0008 80040E40 		.word	1074660480
 325              		.size	matrix_set_slave_priority, .-matrix_set_slave_priority
 326              		.section	.text.matrix_get_slave_priority,"ax",%progbits
 327              		.align	1
 328              		.p2align 2,,3
 329              		.global	matrix_get_slave_priority
 330              		.syntax unified
 331              		.thumb
 332              		.thumb_func
 333              		.fpu softvfp
 334              		.type	matrix_get_slave_priority, %function
 335              	matrix_get_slave_priority:
 336              		@ args = 0, pretend = 0, frame = 0
 337              		@ frame_needed = 0, uses_anonymous_args = 0
 338              		@ link register save eliminated.
 339 0000 014B     		ldr	r3, .L45
 340 0002 53F83000 		ldr	r0, [r3, r0, lsl #3]
 341 0006 7047     		bx	lr
 342              	.L46:
ARM GAS  /tmp/ccphOcJz.s 			page 7


 343              		.align	2
 344              	.L45:
 345 0008 80040E40 		.word	1074660480
 346              		.size	matrix_get_slave_priority, .-matrix_get_slave_priority
 347              		.section	.text.matrix_set_master_remap,"ax",%progbits
 348              		.align	1
 349              		.p2align 2,,3
 350              		.global	matrix_set_master_remap
 351              		.syntax unified
 352              		.thumb
 353              		.thumb_func
 354              		.fpu softvfp
 355              		.type	matrix_set_master_remap, %function
 356              	matrix_set_master_remap:
 357              		@ args = 0, pretend = 0, frame = 0
 358              		@ frame_needed = 0, uses_anonymous_args = 0
 359              		@ link register save eliminated.
 360 0000 014B     		ldr	r3, .L48
 361 0002 C3F80001 		str	r0, [r3, #256]
 362 0006 7047     		bx	lr
 363              	.L49:
 364              		.align	2
 365              	.L48:
 366 0008 00040E40 		.word	1074660352
 367              		.size	matrix_set_master_remap, .-matrix_set_master_remap
 368              		.section	.text.matrix_get_master_remap,"ax",%progbits
 369              		.align	1
 370              		.p2align 2,,3
 371              		.global	matrix_get_master_remap
 372              		.syntax unified
 373              		.thumb
 374              		.thumb_func
 375              		.fpu softvfp
 376              		.type	matrix_get_master_remap, %function
 377              	matrix_get_master_remap:
 378              		@ args = 0, pretend = 0, frame = 0
 379              		@ frame_needed = 0, uses_anonymous_args = 0
 380              		@ link register save eliminated.
 381 0000 014B     		ldr	r3, .L51
 382 0002 D3F80001 		ldr	r0, [r3, #256]
 383 0006 7047     		bx	lr
 384              	.L52:
 385              		.align	2
 386              	.L51:
 387 0008 00040E40 		.word	1074660352
 388              		.size	matrix_get_master_remap, .-matrix_get_master_remap
 389              		.section	.text.matrix_set_system_io,"ax",%progbits
 390              		.align	1
 391              		.p2align 2,,3
 392              		.global	matrix_set_system_io
 393              		.syntax unified
 394              		.thumb
 395              		.thumb_func
 396              		.fpu softvfp
 397              		.type	matrix_set_system_io, %function
 398              	matrix_set_system_io:
 399              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccphOcJz.s 			page 8


 400              		@ frame_needed = 0, uses_anonymous_args = 0
 401              		@ link register save eliminated.
 402 0000 014B     		ldr	r3, .L54
 403 0002 C3F81401 		str	r0, [r3, #276]
 404 0006 7047     		bx	lr
 405              	.L55:
 406              		.align	2
 407              	.L54:
 408 0008 00040E40 		.word	1074660352
 409              		.size	matrix_set_system_io, .-matrix_set_system_io
 410              		.section	.text.matrix_get_system_io,"ax",%progbits
 411              		.align	1
 412              		.p2align 2,,3
 413              		.global	matrix_get_system_io
 414              		.syntax unified
 415              		.thumb
 416              		.thumb_func
 417              		.fpu softvfp
 418              		.type	matrix_get_system_io, %function
 419              	matrix_get_system_io:
 420              		@ args = 0, pretend = 0, frame = 0
 421              		@ frame_needed = 0, uses_anonymous_args = 0
 422              		@ link register save eliminated.
 423 0000 014B     		ldr	r3, .L57
 424 0002 D3F81401 		ldr	r0, [r3, #276]
 425 0006 7047     		bx	lr
 426              	.L58:
 427              		.align	2
 428              	.L57:
 429 0008 00040E40 		.word	1074660352
 430              		.size	matrix_get_system_io, .-matrix_get_system_io
 431              		.section	.text.matrix_set_writeprotect,"ax",%progbits
 432              		.align	1
 433              		.p2align 2,,3
 434              		.global	matrix_set_writeprotect
 435              		.syntax unified
 436              		.thumb
 437              		.thumb_func
 438              		.fpu softvfp
 439              		.type	matrix_set_writeprotect, %function
 440              	matrix_set_writeprotect:
 441              		@ args = 0, pretend = 0, frame = 0
 442              		@ frame_needed = 0, uses_anonymous_args = 0
 443              		@ link register save eliminated.
 444 0000 044B     		ldr	r3, .L64
 445 0002 18B9     		cbnz	r0, .L63
 446 0004 044A     		ldr	r2, .L64+4
 447 0006 C3F8E421 		str	r2, [r3, #484]
 448 000a 7047     		bx	lr
 449              	.L63:
 450 000c 034A     		ldr	r2, .L64+8
 451 000e C3F8E421 		str	r2, [r3, #484]
 452 0012 7047     		bx	lr
 453              	.L65:
 454              		.align	2
 455              	.L64:
 456 0014 00040E40 		.word	1074660352
ARM GAS  /tmp/ccphOcJz.s 			page 9


 457 0018 0054414D 		.word	1296126976
 458 001c 0154414D 		.word	1296126977
 459              		.size	matrix_set_writeprotect, .-matrix_set_writeprotect
 460              		.section	.text.matrix_get_writeprotect_status,"ax",%progbits
 461              		.align	1
 462              		.p2align 2,,3
 463              		.global	matrix_get_writeprotect_status
 464              		.syntax unified
 465              		.thumb
 466              		.thumb_func
 467              		.fpu softvfp
 468              		.type	matrix_get_writeprotect_status, %function
 469              	matrix_get_writeprotect_status:
 470              		@ args = 0, pretend = 0, frame = 0
 471              		@ frame_needed = 0, uses_anonymous_args = 0
 472              		@ link register save eliminated.
 473 0000 014B     		ldr	r3, .L67
 474 0002 D3F8E801 		ldr	r0, [r3, #488]
 475 0006 7047     		bx	lr
 476              	.L68:
 477              		.align	2
 478              	.L67:
 479 0008 00040E40 		.word	1074660352
 480              		.size	matrix_get_writeprotect_status, .-matrix_get_writeprotect_status
 481              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 482              		.align	2
 483              		.type	cpu_irq_critical_section_counter, %object
 484              		.size	cpu_irq_critical_section_counter, 4
 485              	cpu_irq_critical_section_counter:
 486 0000 00000000 		.space	4
 487              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 488              		.type	cpu_irq_prev_interrupt_state, %object
 489              		.size	cpu_irq_prev_interrupt_state, 1
 490              	cpu_irq_prev_interrupt_state:
 491 0000 00       		.space	1
 492              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
