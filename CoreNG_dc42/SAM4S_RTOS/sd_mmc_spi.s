ARM GAS  /tmp/ccilBUhC.s 			page 1


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
  11              		.file	"sd_mmc_spi.c"
  12              		.section	.text.sd_mmc_spi_start_write_block,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	sd_mmc_spi_start_write_block, %function
  20              	sd_mmc_spi_start_write_block:
  21              		@ args = 0, pretend = 0, frame = 8
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 00B5     		push	{lr}
  24 0002 83B0     		sub	sp, sp, #12
  25 0004 02A8     		add	r0, sp, #8
  26 0006 FF23     		movs	r3, #255
  27 0008 00F8023D 		strb	r3, [r0, #-2]!
  28 000c 0122     		movs	r2, #1
  29 000e 0021     		movs	r1, #0
  30 0010 FFF7FEFF 		bl	sspi_transceive_packet
  31 0014 084B     		ldr	r3, .L6
  32 0016 1B88     		ldrh	r3, [r3]
  33 0018 012B     		cmp	r3, #1
  34 001a 0CBF     		ite	eq
  35 001c FE23     		moveq	r3, #254
  36 001e FC23     		movne	r3, #252
  37 0020 0122     		movs	r2, #1
  38 0022 0021     		movs	r1, #0
  39 0024 0DF10700 		add	r0, sp, #7
  40 0028 8DF80730 		strb	r3, [sp, #7]
  41 002c FFF7FEFF 		bl	sspi_transceive_packet
  42 0030 03B0     		add	sp, sp, #12
  43              		@ sp needed
  44 0032 5DF804FB 		ldr	pc, [sp], #4
  45              	.L7:
  46 0036 00BF     		.align	2
  47              	.L6:
  48 0038 00000000 		.word	.LANCHOR0
  49              		.size	sd_mmc_spi_start_write_block, .-sd_mmc_spi_start_write_block
  50              		.section	.text.sd_mmc_spi_wait_busy,"ax",%progbits
  51              		.align	1
  52              		.p2align 2,,3
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu softvfp
  57              		.type	sd_mmc_spi_wait_busy, %function
ARM GAS  /tmp/ccilBUhC.s 			page 2


  58              	sd_mmc_spi_wait_busy:
  59              		@ args = 0, pretend = 0, frame = 8
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61 0000 30B5     		push	{r4, r5, lr}
  62 0002 83B0     		sub	sp, sp, #12
  63 0004 02AD     		add	r5, sp, #8
  64 0006 FF23     		movs	r3, #255
  65 0008 05F8013D 		strb	r3, [r5, #-1]!
  66 000c 0122     		movs	r2, #1
  67 000e 2946     		mov	r1, r5
  68 0010 0020     		movs	r0, #0
  69 0012 FFF7FEFF 		bl	sspi_transceive_packet
  70 0016 2946     		mov	r1, r5
  71 0018 0122     		movs	r2, #1
  72 001a 0020     		movs	r0, #0
  73 001c FFF7FEFF 		bl	sspi_transceive_packet
  74 0020 2946     		mov	r1, r5
  75 0022 0122     		movs	r2, #1
  76 0024 0020     		movs	r0, #0
  77 0026 FFF7FEFF 		bl	sspi_transceive_packet
  78 002a 0A4C     		ldr	r4, .L14
  79 002c 03E0     		b	.L9
  80              	.L11:
  81 002e FFF7FEFF 		bl	sspi_transceive_packet
  82 0032 013C     		subs	r4, r4, #1
  83 0034 0BD0     		beq	.L12
  84              	.L9:
  85 0036 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
  86 003a FF2B     		cmp	r3, #255
  87 003c 4FF00102 		mov	r2, #1
  88 0040 2946     		mov	r1, r5
  89 0042 4FF00000 		mov	r0, #0
  90 0046 F2D1     		bne	.L11
  91 0048 1046     		mov	r0, r2
  92 004a 03B0     		add	sp, sp, #12
  93              		@ sp needed
  94 004c 30BD     		pop	{r4, r5, pc}
  95              	.L12:
  96 004e 2046     		mov	r0, r4
  97 0050 03B0     		add	sp, sp, #12
  98              		@ sp needed
  99 0052 30BD     		pop	{r4, r5, pc}
 100              	.L15:
 101              		.align	2
 102              	.L14:
 103 0054 400D0300 		.word	200000
 104              		.size	sd_mmc_spi_wait_busy, .-sd_mmc_spi_wait_busy
 105              		.section	.text.sd_mmc_spi_start_read_block,"ax",%progbits
 106              		.align	1
 107              		.p2align 2,,3
 108              		.syntax unified
 109              		.thumb
 110              		.thumb_func
 111              		.fpu softvfp
 112              		.type	sd_mmc_spi_start_read_block, %function
 113              	sd_mmc_spi_start_read_block:
 114              		@ args = 0, pretend = 0, frame = 8
ARM GAS  /tmp/ccilBUhC.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116 0000 30B5     		push	{r4, r5, lr}
 117 0002 83B0     		sub	sp, sp, #12
 118 0004 02AD     		add	r5, sp, #8
 119 0006 0023     		movs	r3, #0
 120 0008 05F8013D 		strb	r3, [r5, #-1]!
 121 000c 124C     		ldr	r4, .L26
 122 000e 03E0     		b	.L17
 123              	.L19:
 124 0010 FE2B     		cmp	r3, #254
 125 0012 14D0     		beq	.L24
 126 0014 013C     		subs	r4, r4, #1
 127 0016 19D0     		beq	.L25
 128              	.L17:
 129 0018 0122     		movs	r2, #1
 130 001a 2946     		mov	r1, r5
 131 001c 0020     		movs	r0, #0
 132 001e FFF7FEFF 		bl	sspi_transceive_packet
 133 0022 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 134 0026 13F0F002 		ands	r2, r3, #240
 135 002a F1D1     		bne	.L19
 136 002c 13F00700 		ands	r0, r3, #7
 137 0030 0A4B     		ldr	r3, .L26+4
 138 0032 07D0     		beq	.L20
 139 0034 0721     		movs	r1, #7
 140 0036 1046     		mov	r0, r2
 141 0038 1970     		strb	r1, [r3]
 142 003a 03B0     		add	sp, sp, #12
 143              		@ sp needed
 144 003c 30BD     		pop	{r4, r5, pc}
 145              	.L24:
 146 003e 0120     		movs	r0, #1
 147 0040 03B0     		add	sp, sp, #12
 148              		@ sp needed
 149 0042 30BD     		pop	{r4, r5, pc}
 150              	.L20:
 151 0044 0B22     		movs	r2, #11
 152 0046 1A70     		strb	r2, [r3]
 153 0048 03B0     		add	sp, sp, #12
 154              		@ sp needed
 155 004a 30BD     		pop	{r4, r5, pc}
 156              	.L25:
 157 004c 034B     		ldr	r3, .L26+4
 158 004e 0422     		movs	r2, #4
 159 0050 2046     		mov	r0, r4
 160 0052 1A70     		strb	r2, [r3]
 161 0054 03B0     		add	sp, sp, #12
 162              		@ sp needed
 163 0056 30BD     		pop	{r4, r5, pc}
 164              	.L27:
 165              		.align	2
 166              	.L26:
 167 0058 20A10700 		.word	500000
 168 005c 00000000 		.word	.LANCHOR1
 169              		.size	sd_mmc_spi_start_read_block, .-sd_mmc_spi_start_read_block
 170              		.section	.text.sd_mmc_spi_stop_write_block,"ax",%progbits
 171              		.align	1
ARM GAS  /tmp/ccilBUhC.s 			page 4


 172              		.p2align 2,,3
 173              		.syntax unified
 174              		.thumb
 175              		.thumb_func
 176              		.fpu softvfp
 177              		.type	sd_mmc_spi_stop_write_block, %function
 178              	sd_mmc_spi_stop_write_block:
 179              		@ args = 0, pretend = 0, frame = 8
 180              		@ frame_needed = 0, uses_anonymous_args = 0
 181 0000 00B5     		push	{lr}
 182 0002 83B0     		sub	sp, sp, #12
 183 0004 02A8     		add	r0, sp, #8
 184 0006 4FF6FF73 		movw	r3, #65535
 185 000a 20F8023D 		strh	r3, [r0, #-2]!	@ movhi
 186 000e 0222     		movs	r2, #2
 187 0010 0021     		movs	r1, #0
 188 0012 FFF7FEFF 		bl	sspi_transceive_packet
 189 0016 0122     		movs	r2, #1
 190 0018 0DF10501 		add	r1, sp, #5
 191 001c 0020     		movs	r0, #0
 192 001e FFF7FEFF 		bl	sspi_transceive_packet
 193 0022 9DF80530 		ldrb	r3, [sp, #5]	@ zero_extendqisi2
 194 0026 03F01100 		and	r0, r3, #17
 195 002a 0128     		cmp	r0, #1
 196 002c 06D0     		beq	.L29
 197 002e 0A4B     		ldr	r3, .L36
 198 0030 0122     		movs	r2, #1
 199 0032 1A70     		strb	r2, [r3]
 200 0034 0020     		movs	r0, #0
 201              	.L30:
 202 0036 03B0     		add	sp, sp, #12
 203              		@ sp needed
 204 0038 5DF804FB 		ldr	pc, [sp], #4
 205              	.L29:
 206 003c 03F01E03 		and	r3, r3, #30
 207 0040 042B     		cmp	r3, #4
 208 0042 F8D0     		beq	.L30
 209 0044 0A2B     		cmp	r3, #10
 210 0046 044B     		ldr	r3, .L36
 211 0048 0CBF     		ite	eq
 212 004a 0822     		moveq	r2, #8
 213 004c 0A22     		movne	r2, #10
 214 004e 0020     		movs	r0, #0
 215 0050 1A70     		strb	r2, [r3]
 216 0052 03B0     		add	sp, sp, #12
 217              		@ sp needed
 218 0054 5DF804FB 		ldr	pc, [sp], #4
 219              	.L37:
 220              		.align	2
 221              	.L36:
 222 0058 00000000 		.word	.LANCHOR1
 223              		.size	sd_mmc_spi_stop_write_block, .-sd_mmc_spi_stop_write_block
 224              		.section	.text.sd_mmc_spi_stop_multiwrite_block,"ax",%progbits
 225              		.align	1
 226              		.p2align 2,,3
 227              		.syntax unified
 228              		.thumb
ARM GAS  /tmp/ccilBUhC.s 			page 5


 229              		.thumb_func
 230              		.fpu softvfp
 231              		.type	sd_mmc_spi_stop_multiwrite_block, %function
 232              	sd_mmc_spi_stop_multiwrite_block:
 233              		@ args = 0, pretend = 0, frame = 8
 234              		@ frame_needed = 0, uses_anonymous_args = 0
 235 0000 144B     		ldr	r3, .L48
 236 0002 1888     		ldrh	r0, [r3]
 237 0004 0128     		cmp	r0, #1
 238 0006 09D0     		beq	.L44
 239 0008 134B     		ldr	r3, .L48+4
 240 000a 144A     		ldr	r2, .L48+8
 241 000c 1B68     		ldr	r3, [r3]
 242 000e 1288     		ldrh	r2, [r2]
 243 0010 B3FBF2F3 		udiv	r3, r3, r2
 244 0014 9842     		cmp	r0, r3
 245 0016 02D9     		bls	.L47
 246 0018 0120     		movs	r0, #1
 247 001a 7047     		bx	lr
 248              	.L44:
 249 001c 7047     		bx	lr
 250              	.L47:
 251 001e 10B5     		push	{r4, lr}
 252 0020 82B0     		sub	sp, sp, #8
 253 0022 02AC     		add	r4, sp, #8
 254 0024 FF23     		movs	r3, #255
 255 0026 04F8013D 		strb	r3, [r4, #-1]!
 256 002a 0122     		movs	r2, #1
 257 002c 0021     		movs	r1, #0
 258 002e 2046     		mov	r0, r4
 259 0030 FFF7FEFF 		bl	sspi_transceive_packet
 260 0034 FD23     		movs	r3, #253
 261 0036 0122     		movs	r2, #1
 262 0038 0021     		movs	r1, #0
 263 003a 2046     		mov	r0, r4
 264 003c 8DF80730 		strb	r3, [sp, #7]
 265 0040 FFF7FEFF 		bl	sspi_transceive_packet
 266 0044 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 267 0048 10B9     		cbnz	r0, .L39
 268 004a 054B     		ldr	r3, .L48+12
 269 004c 0522     		movs	r2, #5
 270 004e 1A70     		strb	r2, [r3]
 271              	.L39:
 272 0050 02B0     		add	sp, sp, #8
 273              		@ sp needed
 274 0052 10BD     		pop	{r4, pc}
 275              	.L49:
 276              		.align	2
 277              	.L48:
 278 0054 00000000 		.word	.LANCHOR0
 279 0058 00000000 		.word	.LANCHOR2
 280 005c 00000000 		.word	.LANCHOR3
 281 0060 00000000 		.word	.LANCHOR1
 282              		.size	sd_mmc_spi_stop_multiwrite_block, .-sd_mmc_spi_stop_multiwrite_block
 283              		.section	.text.spi_mmc_get_speed,"ax",%progbits
 284              		.align	1
 285              		.p2align 2,,3
ARM GAS  /tmp/ccilBUhC.s 			page 6


 286              		.global	spi_mmc_get_speed
 287              		.syntax unified
 288              		.thumb
 289              		.thumb_func
 290              		.fpu softvfp
 291              		.type	spi_mmc_get_speed, %function
 292              	spi_mmc_get_speed:
 293              		@ args = 0, pretend = 0, frame = 0
 294              		@ frame_needed = 0, uses_anonymous_args = 0
 295              		@ link register save eliminated.
 296 0000 0048     		ldr	r0, .L51
 297 0002 7047     		bx	lr
 298              	.L52:
 299              		.align	2
 300              	.L51:
 301 0004 20A10700 		.word	500000
 302              		.size	spi_mmc_get_speed, .-spi_mmc_get_speed
 303              		.section	.text.sd_mmc_spi_set_idle_func,"ax",%progbits
 304              		.align	1
 305              		.p2align 2,,3
 306              		.global	sd_mmc_spi_set_idle_func
 307              		.syntax unified
 308              		.thumb
 309              		.thumb_func
 310              		.fpu softvfp
 311              		.type	sd_mmc_spi_set_idle_func, %function
 312              	sd_mmc_spi_set_idle_func:
 313              		@ args = 0, pretend = 0, frame = 0
 314              		@ frame_needed = 0, uses_anonymous_args = 0
 315              		@ link register save eliminated.
 316 0000 024B     		ldr	r3, .L54
 317 0002 1A68     		ldr	r2, [r3]
 318 0004 1860     		str	r0, [r3]
 319 0006 1046     		mov	r0, r2
 320 0008 7047     		bx	lr
 321              	.L55:
 322 000a 00BF     		.align	2
 323              	.L54:
 324 000c 00000000 		.word	.LANCHOR4
 325              		.size	sd_mmc_spi_set_idle_func, .-sd_mmc_spi_set_idle_func
 326              		.section	.text.sd_mmc_spi_get_errno,"ax",%progbits
 327              		.align	1
 328              		.p2align 2,,3
 329              		.global	sd_mmc_spi_get_errno
 330              		.syntax unified
 331              		.thumb
 332              		.thumb_func
 333              		.fpu softvfp
 334              		.type	sd_mmc_spi_get_errno, %function
 335              	sd_mmc_spi_get_errno:
 336              		@ args = 0, pretend = 0, frame = 0
 337              		@ frame_needed = 0, uses_anonymous_args = 0
 338              		@ link register save eliminated.
 339 0000 014B     		ldr	r3, .L57
 340 0002 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 341 0004 7047     		bx	lr
 342              	.L58:
ARM GAS  /tmp/ccilBUhC.s 			page 7


 343 0006 00BF     		.align	2
 344              	.L57:
 345 0008 00000000 		.word	.LANCHOR1
 346              		.size	sd_mmc_spi_get_errno, .-sd_mmc_spi_get_errno
 347              		.section	.text.sd_mmc_spi_init,"ax",%progbits
 348              		.align	1
 349              		.p2align 2,,3
 350              		.global	sd_mmc_spi_init
 351              		.syntax unified
 352              		.thumb
 353              		.thumb_func
 354              		.fpu softvfp
 355              		.type	sd_mmc_spi_init, %function
 356              	sd_mmc_spi_init:
 357              		@ args = 0, pretend = 0, frame = 0
 358              		@ frame_needed = 0, uses_anonymous_args = 0
 359              		@ link register save eliminated.
 360 0000 10B4     		push	{r4}
 361 0002 064B     		ldr	r3, .L61
 362 0004 0278     		ldrb	r2, [r0]	@ zero_extendqisi2
 363 0006 064C     		ldr	r4, .L61+4
 364 0008 1A70     		strb	r2, [r3]
 365 000a 0022     		movs	r2, #0
 366 000c 2270     		strb	r2, [r4]
 367 000e 1846     		mov	r0, r3
 368 0010 0821     		movs	r1, #8
 369 0012 5A70     		strb	r2, [r3, #1]
 370 0014 10BC     		pop	{r4}
 371 0016 FFF7FEBF 		b	sspi_master_init
 372              	.L62:
 373 001a 00BF     		.align	2
 374              	.L61:
 375 001c 00000000 		.word	.LANCHOR5
 376 0020 00000000 		.word	.LANCHOR1
 377              		.size	sd_mmc_spi_init, .-sd_mmc_spi_init
 378              		.section	.text.sd_mmc_spi_select_device,"ax",%progbits
 379              		.align	1
 380              		.p2align 2,,3
 381              		.global	sd_mmc_spi_select_device
 382              		.syntax unified
 383              		.thumb
 384              		.thumb_func
 385              		.fpu softvfp
 386              		.type	sd_mmc_spi_select_device, %function
 387              	sd_mmc_spi_select_device:
 388              		@ args = 0, pretend = 0, frame = 0
 389              		@ frame_needed = 0, uses_anonymous_args = 0
 390 0000 38B5     		push	{r3, r4, r5, lr}
 391 0002 0B4A     		ldr	r2, .L65
 392 0004 0B4B     		ldr	r3, .L65+4
 393 0006 0C4D     		ldr	r5, .L65+8
 394 0008 03EBC004 		add	r4, r3, r0, lsl #3
 395 000c 9142     		cmp	r1, r2
 396 000e 28BF     		it	cs
 397 0010 1146     		movcs	r1, r2
 398 0012 0022     		movs	r2, #0
 399 0014 2046     		mov	r0, r4
ARM GAS  /tmp/ccilBUhC.s 			page 8


 400 0016 6160     		str	r1, [r4, #4]
 401 0018 E270     		strb	r2, [r4, #3]
 402 001a 2A70     		strb	r2, [r5]
 403 001c FFF7FEFF 		bl	sspi_master_setup_device
 404 0020 2046     		mov	r0, r4
 405 0022 FFF7FEFF 		bl	sspi_select_device
 406 0026 2823     		movs	r3, #40
 407              		.syntax unified
 408              	@ 83 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 409              		L_435_delayMicroseconds:
 410 0028 013B     		subs   r3, #1
 411 002a FDD1     		bne    L_435_delayMicroseconds
 412              	
 413              	@ 0 "" 2
 414              		.thumb
 415              		.syntax unified
 416 002c 38BD     		pop	{r3, r4, r5, pc}
 417              	.L66:
 418 002e 00BF     		.align	2
 419              	.L65:
 420 0030 00093D00 		.word	4000000
 421 0034 00000000 		.word	.LANCHOR5
 422 0038 00000000 		.word	.LANCHOR1
 423              		.size	sd_mmc_spi_select_device, .-sd_mmc_spi_select_device
 424              		.section	.text.sd_mmc_spi_deselect_device,"ax",%progbits
 425              		.align	1
 426              		.p2align 2,,3
 427              		.global	sd_mmc_spi_deselect_device
 428              		.syntax unified
 429              		.thumb
 430              		.thumb_func
 431              		.fpu softvfp
 432              		.type	sd_mmc_spi_deselect_device, %function
 433              	sd_mmc_spi_deselect_device:
 434              		@ args = 0, pretend = 0, frame = 0
 435              		@ frame_needed = 0, uses_anonymous_args = 0
 436 0000 064A     		ldr	r2, .L69
 437 0002 08B5     		push	{r3, lr}
 438 0004 064B     		ldr	r3, .L69+4
 439 0006 02EBC000 		add	r0, r2, r0, lsl #3
 440 000a 0022     		movs	r2, #0
 441 000c 1A70     		strb	r2, [r3]
 442 000e FFF7FEFF 		bl	sspi_deselect_device
 443 0012 2823     		movs	r3, #40
 444              		.syntax unified
 445              	@ 83 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 446              		L_464_delayMicroseconds:
 447 0014 013B     		subs   r3, #1
 448 0016 FDD1     		bne    L_464_delayMicroseconds
 449              	
 450              	@ 0 "" 2
 451              		.thumb
 452              		.syntax unified
 453 0018 08BD     		pop	{r3, pc}
 454              	.L70:
 455 001a 00BF     		.align	2
 456              	.L69:
ARM GAS  /tmp/ccilBUhC.s 			page 9


 457 001c 00000000 		.word	.LANCHOR5
 458 0020 00000000 		.word	.LANCHOR1
 459              		.size	sd_mmc_spi_deselect_device, .-sd_mmc_spi_deselect_device
 460              		.section	.text.sd_mmc_spi_send_clock,"ax",%progbits
 461              		.align	1
 462              		.p2align 2,,3
 463              		.global	sd_mmc_spi_send_clock
 464              		.syntax unified
 465              		.thumb
 466              		.thumb_func
 467              		.fpu softvfp
 468              		.type	sd_mmc_spi_send_clock, %function
 469              	sd_mmc_spi_send_clock:
 470              		@ args = 0, pretend = 0, frame = 8
 471              		@ frame_needed = 0, uses_anonymous_args = 0
 472 0000 30B5     		push	{r4, r5, lr}
 473 0002 83B0     		sub	sp, sp, #12
 474 0004 02AD     		add	r5, sp, #8
 475 0006 FF22     		movs	r2, #255
 476 0008 084B     		ldr	r3, .L75
 477 000a 05F8012D 		strb	r2, [r5, #-1]!
 478 000e 0022     		movs	r2, #0
 479 0010 1A70     		strb	r2, [r3]
 480 0012 0A24     		movs	r4, #10
 481              	.L72:
 482 0014 0122     		movs	r2, #1
 483 0016 0021     		movs	r1, #0
 484 0018 2846     		mov	r0, r5
 485 001a FFF7FEFF 		bl	sspi_transceive_packet
 486 001e 631E     		subs	r3, r4, #1
 487 0020 13F0FF04 		ands	r4, r3, #255
 488 0024 F6D1     		bne	.L72
 489 0026 03B0     		add	sp, sp, #12
 490              		@ sp needed
 491 0028 30BD     		pop	{r4, r5, pc}
 492              	.L76:
 493 002a 00BF     		.align	2
 494              	.L75:
 495 002c 00000000 		.word	.LANCHOR1
 496              		.size	sd_mmc_spi_send_clock, .-sd_mmc_spi_send_clock
 497              		.section	.text.sd_mmc_spi_adtc_start,"ax",%progbits
 498              		.align	1
 499              		.p2align 2,,3
 500              		.global	sd_mmc_spi_adtc_start
 501              		.syntax unified
 502              		.thumb
 503              		.thumb_func
 504              		.fpu softvfp
 505              		.type	sd_mmc_spi_adtc_start, %function
 506              	sd_mmc_spi_adtc_start:
 507              		@ args = 4, pretend = 0, frame = 16
 508              		@ frame_needed = 0, uses_anonymous_args = 0
 509 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 510 0004 85B0     		sub	sp, sp, #20
 511 0006 0546     		mov	r5, r0
 512 0008 554C     		ldr	r4, .L109
 513 000a 8DF80C10 		strb	r1, [sp, #12]
ARM GAS  /tmp/ccilBUhC.s 			page 10


 514 000e 00F03F00 		and	r0, r0, #63
 515 0012 4FEA112E 		lsr	lr, r1, #8
 516 0016 4FEA1168 		lsr	r8, r1, #24
 517 001a 4FEA114C 		lsr	ip, r1, #16
 518 001e 40F04000 		orr	r0, r0, #64
 519 0022 0021     		movs	r1, #0
 520 0024 1746     		mov	r7, r2
 521 0026 FF22     		movs	r2, #255
 522 0028 1E46     		mov	r6, r3
 523 002a 8DF80BE0 		strb	lr, [sp, #11]
 524 002e 2170     		strb	r1, [r4]
 525 0030 0B46     		mov	r3, r1
 526 0032 8DF80800 		strb	r0, [sp, #8]
 527 0036 8DF80980 		strb	r8, [sp, #9]
 528 003a 8DF80AC0 		strb	ip, [sp, #10]
 529 003e 8DF80620 		strb	r2, [sp, #6]
 530 0042 0DF10901 		add	r1, sp, #9
 531 0046 0DF10D0E 		add	lr, sp, #13
 532              	.L81:
 533 004a 4FF00808 		mov	r8, #8
 534              	.L79:
 535 004e 5B00     		lsls	r3, r3, #1
 536 0050 DBB2     		uxtb	r3, r3
 537 0052 83EA0002 		eor	r2, r3, r0
 538 0056 12F0800F 		tst	r2, #128
 539 005a 08F1FF38 		add	r8, r8, #-1
 540 005e 4FEA4000 		lsl	r0, r0, #1
 541 0062 18BF     		it	ne
 542 0064 83F00903 		eorne	r3, r3, #9
 543 0068 18F0FF08 		ands	r8, r8, #255
 544 006c C0B2     		uxtb	r0, r0
 545 006e EED1     		bne	.L79
 546 0070 8E45     		cmp	lr, r1
 547 0072 02D0     		beq	.L80
 548 0074 11F8010B 		ldrb	r0, [r1], #1	@ zero_extendqisi2
 549 0078 E7E7     		b	.L81
 550              	.L80:
 551 007a 5B00     		lsls	r3, r3, #1
 552 007c 43F00103 		orr	r3, r3, #1
 553 0080 4146     		mov	r1, r8
 554 0082 0122     		movs	r2, #1
 555 0084 0DF10600 		add	r0, sp, #6
 556 0088 8DF80D30 		strb	r3, [sp, #13]
 557 008c 0DF11009 		add	r9, sp, #16
 558 0090 FFF7FEFF 		bl	sspi_transceive_packet
 559 0094 4146     		mov	r1, r8
 560 0096 0622     		movs	r2, #6
 561 0098 02A8     		add	r0, sp, #8
 562 009a FFF7FEFF 		bl	sspi_transceive_packet
 563 009e FF23     		movs	r3, #255
 564 00a0 09F8093D 		strb	r3, [r9, #-9]!
 565 00a4 4046     		mov	r0, r8
 566 00a6 4946     		mov	r1, r9
 567 00a8 0122     		movs	r2, #1
 568 00aa FFF7FEFF 		bl	sspi_transceive_packet
 569 00ae 4FF00708 		mov	r8, #7
 570              	.L83:
ARM GAS  /tmp/ccilBUhC.s 			page 11


 571 00b2 0122     		movs	r2, #1
 572 00b4 4946     		mov	r1, r9
 573 00b6 0020     		movs	r0, #0
 574 00b8 FFF7FEFF 		bl	sspi_transceive_packet
 575 00bc 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 576 00c0 1A06     		lsls	r2, r3, #24
 577 00c2 08F1FF30 		add	r0, r8, #-1
 578 00c6 08D5     		bpl	.L82
 579 00c8 10F0FF08 		ands	r8, r0, #255
 580 00cc F1D1     		bne	.L83
 581 00ce 0223     		movs	r3, #2
 582 00d0 4046     		mov	r0, r8
 583 00d2 2370     		strb	r3, [r4]
 584              	.L84:
 585 00d4 05B0     		add	sp, sp, #20
 586              		@ sp needed
 587 00d6 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 588              	.L82:
 589 00da DFF89480 		ldr	r8, .L109+16
 590 00de 13F00802 		ands	r2, r3, #8
 591 00e2 C8F80030 		str	r3, [r8]
 592 00e6 14D1     		bne	.L103
 593 00e8 13F00400 		ands	r0, r3, #4
 594 00ec 15D1     		bne	.L104
 595 00ee 13F0FE0F 		tst	r3, #254
 596 00f2 31D1     		bne	.L105
 597 00f4 A904     		lsls	r1, r5, #18
 598 00f6 14D4     		bmi	.L106
 599              	.L88:
 600 00f8 AA05     		lsls	r2, r5, #22
 601 00fa 24D4     		bmi	.L107
 602              	.L89:
 603 00fc 6B05     		lsls	r3, r5, #21
 604 00fe 17D4     		bmi	.L108
 605              	.L90:
 606 0100 184A     		ldr	r2, .L109+4
 607 0102 1949     		ldr	r1, .L109+8
 608 0104 194B     		ldr	r3, .L109+12
 609 0106 1780     		strh	r7, [r2]	@ movhi
 610 0108 0022     		movs	r2, #0
 611 010a 0E80     		strh	r6, [r1]	@ movhi
 612 010c 1A60     		str	r2, [r3]
 613 010e 0120     		movs	r0, #1
 614 0110 E0E7     		b	.L84
 615              	.L103:
 616 0112 0623     		movs	r3, #6
 617 0114 2370     		strb	r3, [r4]
 618 0116 0020     		movs	r0, #0
 619 0118 DCE7     		b	.L84
 620              	.L104:
 621 011a 0923     		movs	r3, #9
 622 011c 1046     		mov	r0, r2
 623 011e 2370     		strb	r3, [r4]
 624 0120 D8E7     		b	.L84
 625              	.L106:
 626 0122 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 627 0126 0028     		cmp	r0, #0
ARM GAS  /tmp/ccilBUhC.s 			page 12


 628 0128 E6D1     		bne	.L88
 629 012a 0323     		movs	r3, #3
 630 012c 2370     		strb	r3, [r4]
 631 012e D1E7     		b	.L84
 632              	.L108:
 633 0130 0422     		movs	r2, #4
 634 0132 0F49     		ldr	r1, .L109+16
 635 0134 0020     		movs	r0, #0
 636 0136 FFF7FEFF 		bl	sspi_transceive_packet
 637 013a D8F80030 		ldr	r3, [r8]
 638 013e 1BBA     		rev	r3, r3
 639 0140 C8F80030 		str	r3, [r8]
 640 0144 DCE7     		b	.L90
 641              	.L107:
 642 0146 0023     		movs	r3, #0
 643 0148 1846     		mov	r0, r3
 644 014a 0122     		movs	r2, #1
 645 014c 0849     		ldr	r1, .L109+16
 646 014e C8F80030 		str	r3, [r8]
 647 0152 FFF7FEFF 		bl	sspi_transceive_packet
 648 0156 D1E7     		b	.L89
 649              	.L105:
 650 0158 0123     		movs	r3, #1
 651 015a 2370     		strb	r3, [r4]
 652 015c BAE7     		b	.L84
 653              	.L110:
 654 015e 00BF     		.align	2
 655              	.L109:
 656 0160 00000000 		.word	.LANCHOR1
 657 0164 00000000 		.word	.LANCHOR3
 658 0168 00000000 		.word	.LANCHOR0
 659 016c 00000000 		.word	.LANCHOR2
 660 0170 00000000 		.word	.LANCHOR6
 661              		.size	sd_mmc_spi_adtc_start, .-sd_mmc_spi_adtc_start
 662              		.section	.text.sd_mmc_spi_send_cmd,"ax",%progbits
 663              		.align	1
 664              		.p2align 2,,3
 665              		.global	sd_mmc_spi_send_cmd
 666              		.syntax unified
 667              		.thumb
 668              		.thumb_func
 669              		.fpu softvfp
 670              		.type	sd_mmc_spi_send_cmd, %function
 671              	sd_mmc_spi_send_cmd:
 672              		@ args = 0, pretend = 0, frame = 0
 673              		@ frame_needed = 0, uses_anonymous_args = 0
 674 0000 00B5     		push	{lr}
 675 0002 83B0     		sub	sp, sp, #12
 676 0004 0023     		movs	r3, #0
 677 0006 0093     		str	r3, [sp]
 678 0008 1A46     		mov	r2, r3
 679 000a FFF7FEFF 		bl	sd_mmc_spi_adtc_start
 680 000e 03B0     		add	sp, sp, #12
 681              		@ sp needed
 682 0010 5DF804FB 		ldr	pc, [sp], #4
 683              		.size	sd_mmc_spi_send_cmd, .-sd_mmc_spi_send_cmd
 684              		.section	.text.sd_mmc_spi_get_response,"ax",%progbits
ARM GAS  /tmp/ccilBUhC.s 			page 13


 685              		.align	1
 686              		.p2align 2,,3
 687              		.global	sd_mmc_spi_get_response
 688              		.syntax unified
 689              		.thumb
 690              		.thumb_func
 691              		.fpu softvfp
 692              		.type	sd_mmc_spi_get_response, %function
 693              	sd_mmc_spi_get_response:
 694              		@ args = 0, pretend = 0, frame = 0
 695              		@ frame_needed = 0, uses_anonymous_args = 0
 696              		@ link register save eliminated.
 697 0000 014B     		ldr	r3, .L114
 698 0002 1868     		ldr	r0, [r3]
 699 0004 7047     		bx	lr
 700              	.L115:
 701 0006 00BF     		.align	2
 702              	.L114:
 703 0008 00000000 		.word	.LANCHOR6
 704              		.size	sd_mmc_spi_get_response, .-sd_mmc_spi_get_response
 705              		.section	.text.sd_mmc_spi_read_word,"ax",%progbits
 706              		.align	1
 707              		.p2align 2,,3
 708              		.global	sd_mmc_spi_read_word
 709              		.syntax unified
 710              		.thumb
 711              		.thumb_func
 712              		.fpu softvfp
 713              		.type	sd_mmc_spi_read_word, %function
 714              	sd_mmc_spi_read_word:
 715              		@ args = 0, pretend = 0, frame = 8
 716              		@ frame_needed = 0, uses_anonymous_args = 0
 717 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 718 0002 134C     		ldr	r4, .L124
 719 0004 134D     		ldr	r5, .L124+4
 720 0006 2168     		ldr	r1, [r4]
 721 0008 2A88     		ldrh	r2, [r5]
 722 000a 134E     		ldr	r6, .L124+8
 723 000c B1FBF2F3 		udiv	r3, r1, r2
 724 0010 02FB1313 		mls	r3, r2, r3, r1
 725 0014 0022     		movs	r2, #0
 726 0016 83B0     		sub	sp, sp, #12
 727 0018 0746     		mov	r7, r0
 728 001a 3270     		strb	r2, [r6]
 729 001c 13B9     		cbnz	r3, .L120
 730 001e FFF7FEFF 		bl	sd_mmc_spi_start_read_block
 731 0022 70B1     		cbz	r0, .L119
 732              	.L120:
 733 0024 0422     		movs	r2, #4
 734 0026 3946     		mov	r1, r7
 735 0028 0020     		movs	r0, #0
 736 002a FFF7FEFF 		bl	sspi_transceive_packet
 737 002e 2368     		ldr	r3, [r4]
 738 0030 2A88     		ldrh	r2, [r5]
 739 0032 0433     		adds	r3, r3, #4
 740 0034 B3FBF2F0 		udiv	r0, r3, r2
 741 0038 02FB1030 		mls	r0, r2, r0, r3
ARM GAS  /tmp/ccilBUhC.s 			page 14


 742 003c 2360     		str	r3, [r4]
 743 003e 10B1     		cbz	r0, .L123
 744              	.L122:
 745 0040 0120     		movs	r0, #1
 746              	.L119:
 747 0042 03B0     		add	sp, sp, #12
 748              		@ sp needed
 749 0044 F0BD     		pop	{r4, r5, r6, r7, pc}
 750              	.L123:
 751 0046 0222     		movs	r2, #2
 752 0048 01A9     		add	r1, sp, #4
 753 004a FFF7FEFF 		bl	sspi_transceive_packet
 754 004e F7E7     		b	.L122
 755              	.L125:
 756              		.align	2
 757              	.L124:
 758 0050 00000000 		.word	.LANCHOR2
 759 0054 00000000 		.word	.LANCHOR3
 760 0058 00000000 		.word	.LANCHOR1
 761              		.size	sd_mmc_spi_read_word, .-sd_mmc_spi_read_word
 762              		.section	.text.sd_mmc_spi_write_word,"ax",%progbits
 763              		.align	1
 764              		.p2align 2,,3
 765              		.global	sd_mmc_spi_write_word
 766              		.syntax unified
 767              		.thumb
 768              		.thumb_func
 769              		.fpu softvfp
 770              		.type	sd_mmc_spi_write_word, %function
 771              	sd_mmc_spi_write_word:
 772              		@ args = 0, pretend = 0, frame = 8
 773              		@ frame_needed = 0, uses_anonymous_args = 0
 774 0000 70B5     		push	{r4, r5, r6, lr}
 775 0002 184C     		ldr	r4, .L136
 776 0004 184E     		ldr	r6, .L136+4
 777 0006 2168     		ldr	r1, [r4]
 778 0008 3288     		ldrh	r2, [r6]
 779 000a 184D     		ldr	r5, .L136+8
 780 000c B1FBF2F3 		udiv	r3, r1, r2
 781 0010 82B0     		sub	sp, sp, #8
 782 0012 02FB1313 		mls	r3, r2, r3, r1
 783 0016 0022     		movs	r2, #0
 784 0018 0190     		str	r0, [sp, #4]
 785 001a 2A70     		strb	r2, [r5]
 786 001c BBB1     		cbz	r3, .L134
 787              	.L127:
 788 001e 0422     		movs	r2, #4
 789 0020 0021     		movs	r1, #0
 790 0022 0DEB0200 		add	r0, sp, r2
 791 0026 FFF7FEFF 		bl	sspi_transceive_packet
 792 002a 2368     		ldr	r3, [r4]
 793 002c 3188     		ldrh	r1, [r6]
 794 002e 0433     		adds	r3, r3, #4
 795 0030 B3FBF1F2 		udiv	r2, r3, r1
 796 0034 01FB1232 		mls	r2, r1, r2, r3
 797 0038 2360     		str	r3, [r4]
 798 003a 22B9     		cbnz	r2, .L128
ARM GAS  /tmp/ccilBUhC.s 			page 15


 799 003c FFF7FEFF 		bl	sd_mmc_spi_stop_write_block
 800 0040 40B9     		cbnz	r0, .L135
 801              	.L129:
 802 0042 02B0     		add	sp, sp, #8
 803              		@ sp needed
 804 0044 70BD     		pop	{r4, r5, r6, pc}
 805              	.L128:
 806 0046 FFF7FEFF 		bl	sd_mmc_spi_stop_multiwrite_block
 807 004a 02B0     		add	sp, sp, #8
 808              		@ sp needed
 809 004c 70BD     		pop	{r4, r5, r6, pc}
 810              	.L134:
 811 004e FFF7FEFF 		bl	sd_mmc_spi_start_write_block
 812 0052 E4E7     		b	.L127
 813              	.L135:
 814 0054 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 815 0058 0028     		cmp	r0, #0
 816 005a F4D1     		bne	.L128
 817 005c 0523     		movs	r3, #5
 818 005e 2B70     		strb	r3, [r5]
 819 0060 EFE7     		b	.L129
 820              	.L137:
 821 0062 00BF     		.align	2
 822              	.L136:
 823 0064 00000000 		.word	.LANCHOR2
 824 0068 00000000 		.word	.LANCHOR3
 825 006c 00000000 		.word	.LANCHOR1
 826              		.size	sd_mmc_spi_write_word, .-sd_mmc_spi_write_word
 827              		.section	.text.sd_mmc_spi_start_read_blocks,"ax",%progbits
 828              		.align	1
 829              		.p2align 2,,3
 830              		.global	sd_mmc_spi_start_read_blocks
 831              		.syntax unified
 832              		.thumb
 833              		.thumb_func
 834              		.fpu softvfp
 835              		.type	sd_mmc_spi_start_read_blocks, %function
 836              	sd_mmc_spi_start_read_blocks:
 837              		@ args = 0, pretend = 0, frame = 8
 838              		@ frame_needed = 0, uses_anonymous_args = 0
 839 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 840 0004 174B     		ldr	r3, .L149
 841 0006 0025     		movs	r5, #0
 842 0008 83B0     		sub	sp, sp, #12
 843 000a 1D70     		strb	r5, [r3]
 844 000c 29B3     		cbz	r1, .L142
 845 000e 4C1E     		subs	r4, r1, #1
 846 0010 A4B2     		uxth	r4, r4
 847 0012 8146     		mov	r9, r0
 848 0014 DFF85480 		ldr	r8, .L149+8
 849 0018 134F     		ldr	r7, .L149+4
 850 001a 15E0     		b	.L141
 851              	.L148:
 852 001c B8F80020 		ldrh	r2, [r8]
 853 0020 0020     		movs	r0, #0
 854 0022 FFF7FEFF 		bl	sspi_transceive_packet
 855 0026 B8F80060 		ldrh	r6, [r8]
ARM GAS  /tmp/ccilBUhC.s 			page 16


 856 002a 3B68     		ldr	r3, [r7]
 857 002c 0222     		movs	r2, #2
 858 002e 3344     		add	r3, r3, r6
 859 0030 01A9     		add	r1, sp, #4
 860 0032 0020     		movs	r0, #0
 861 0034 013C     		subs	r4, r4, #1
 862 0036 3B60     		str	r3, [r7]
 863 0038 A4B2     		uxth	r4, r4
 864 003a FFF7FEFF 		bl	sspi_transceive_packet
 865 003e 4FF6FF73 		movw	r3, #65535
 866 0042 9C42     		cmp	r4, r3
 867 0044 3544     		add	r5, r5, r6
 868 0046 08D0     		beq	.L142
 869              	.L141:
 870 0048 FFF7FEFF 		bl	sd_mmc_spi_start_read_block
 871 004c 09EB0501 		add	r1, r9, r5
 872 0050 0028     		cmp	r0, #0
 873 0052 E3D1     		bne	.L148
 874 0054 03B0     		add	sp, sp, #12
 875              		@ sp needed
 876 0056 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 877              	.L142:
 878 005a 0120     		movs	r0, #1
 879 005c 03B0     		add	sp, sp, #12
 880              		@ sp needed
 881 005e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 882              	.L150:
 883 0062 00BF     		.align	2
 884              	.L149:
 885 0064 00000000 		.word	.LANCHOR1
 886 0068 00000000 		.word	.LANCHOR2
 887 006c 00000000 		.word	.LANCHOR3
 888              		.size	sd_mmc_spi_start_read_blocks, .-sd_mmc_spi_start_read_blocks
 889              		.section	.text.sd_mmc_spi_wait_end_of_read_blocks,"ax",%progbits
 890              		.align	1
 891              		.p2align 2,,3
 892              		.global	sd_mmc_spi_wait_end_of_read_blocks
 893              		.syntax unified
 894              		.thumb
 895              		.thumb_func
 896              		.fpu softvfp
 897              		.type	sd_mmc_spi_wait_end_of_read_blocks, %function
 898              	sd_mmc_spi_wait_end_of_read_blocks:
 899              		@ args = 0, pretend = 0, frame = 0
 900              		@ frame_needed = 0, uses_anonymous_args = 0
 901              		@ link register save eliminated.
 902 0000 0120     		movs	r0, #1
 903 0002 7047     		bx	lr
 904              		.size	sd_mmc_spi_wait_end_of_read_blocks, .-sd_mmc_spi_wait_end_of_read_blocks
 905              		.section	.text.sd_mmc_spi_start_write_blocks,"ax",%progbits
 906              		.align	1
 907              		.p2align 2,,3
 908              		.global	sd_mmc_spi_start_write_blocks
 909              		.syntax unified
 910              		.thumb
 911              		.thumb_func
 912              		.fpu softvfp
ARM GAS  /tmp/ccilBUhC.s 			page 17


 913              		.type	sd_mmc_spi_start_write_blocks, %function
 914              	sd_mmc_spi_start_write_blocks:
 915              		@ args = 0, pretend = 0, frame = 0
 916              		@ frame_needed = 0, uses_anonymous_args = 0
 917 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 918 0004 DFF85C90 		ldr	r9, .L163+8
 919 0008 144F     		ldr	r7, .L163
 920 000a 154E     		ldr	r6, .L163+4
 921 000c 0024     		movs	r4, #0
 922 000e 8046     		mov	r8, r0
 923 0010 0D46     		mov	r5, r1
 924 0012 89F80040 		strb	r4, [r9]
 925              	.L153:
 926 0016 8DB1     		cbz	r5, .L157
 927 0018 FFF7FEFF 		bl	sd_mmc_spi_start_write_block
 928 001c 3A88     		ldrh	r2, [r7]
 929 001e 08EB0400 		add	r0, r8, r4
 930 0022 0021     		movs	r1, #0
 931 0024 FFF7FEFF 		bl	sspi_transceive_packet
 932 0028 3A88     		ldrh	r2, [r7]
 933 002a 3368     		ldr	r3, [r6]
 934 002c 1344     		add	r3, r3, r2
 935 002e 1444     		add	r4, r4, r2
 936 0030 3360     		str	r3, [r6]
 937 0032 FFF7FEFF 		bl	sd_mmc_spi_stop_write_block
 938 0036 78B1     		cbz	r0, .L154
 939 0038 012D     		cmp	r5, #1
 940 003a 02D1     		bne	.L155
 941              	.L157:
 942 003c 0120     		movs	r0, #1
 943 003e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 944              	.L155:
 945 0042 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 946 0046 013D     		subs	r5, r5, #1
 947 0048 ADB2     		uxth	r5, r5
 948 004a 0028     		cmp	r0, #0
 949 004c E3D1     		bne	.L153
 950 004e 0523     		movs	r3, #5
 951 0050 89F80030 		strb	r3, [r9]
 952 0054 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 953              	.L154:
 954 0058 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 955              	.L164:
 956              		.align	2
 957              	.L163:
 958 005c 00000000 		.word	.LANCHOR3
 959 0060 00000000 		.word	.LANCHOR2
 960 0064 00000000 		.word	.LANCHOR1
 961              		.size	sd_mmc_spi_start_write_blocks, .-sd_mmc_spi_start_write_blocks
 962              		.section	.text.sd_mmc_spi_wait_end_of_write_blocks,"ax",%progbits
 963              		.align	1
 964              		.p2align 2,,3
 965              		.global	sd_mmc_spi_wait_end_of_write_blocks
 966              		.syntax unified
 967              		.thumb
 968              		.thumb_func
 969              		.fpu softvfp
ARM GAS  /tmp/ccilBUhC.s 			page 18


 970              		.type	sd_mmc_spi_wait_end_of_write_blocks, %function
 971              	sd_mmc_spi_wait_end_of_write_blocks:
 972              		@ args = 0, pretend = 0, frame = 0
 973              		@ frame_needed = 0, uses_anonymous_args = 0
 974 0000 08B5     		push	{r3, lr}
 975 0002 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 976 0006 18B9     		cbnz	r0, .L166
 977 0008 034B     		ldr	r3, .L170
 978 000a 0522     		movs	r2, #5
 979 000c 1A70     		strb	r2, [r3]
 980 000e 08BD     		pop	{r3, pc}
 981              	.L166:
 982 0010 BDE80840 		pop	{r3, lr}
 983 0014 FFF7FEBF 		b	sd_mmc_spi_stop_multiwrite_block
 984              	.L171:
 985              		.align	2
 986              	.L170:
 987 0018 00000000 		.word	.LANCHOR1
 988              		.size	sd_mmc_spi_wait_end_of_write_blocks, .-sd_mmc_spi_wait_end_of_write_blocks
 989              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 990              		.align	2
 991              		.type	cpu_irq_critical_section_counter, %object
 992              		.size	cpu_irq_critical_section_counter, 4
 993              	cpu_irq_critical_section_counter:
 994 0000 00000000 		.space	4
 995              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 996              		.type	cpu_irq_prev_interrupt_state, %object
 997              		.size	cpu_irq_prev_interrupt_state, 1
 998              	cpu_irq_prev_interrupt_state:
 999 0000 00       		.space	1
 1000              		.section	.bss.sd_mmc_spi_block_size,"aw",%nobits
 1001              		.align	1
 1002              		.set	.LANCHOR3,. + 0
 1003              		.type	sd_mmc_spi_block_size, %object
 1004              		.size	sd_mmc_spi_block_size, 2
 1005              	sd_mmc_spi_block_size:
 1006 0000 0000     		.space	2
 1007              		.section	.bss.sd_mmc_spi_devices,"aw",%nobits
 1008              		.align	2
 1009              		.set	.LANCHOR5,. + 0
 1010              		.type	sd_mmc_spi_devices, %object
 1011              		.size	sd_mmc_spi_devices, 8
 1012              	sd_mmc_spi_devices:
 1013 0000 00000000 		.space	8
 1013      00000000 
 1014              		.section	.bss.sd_mmc_spi_err,"aw",%nobits
 1015              		.set	.LANCHOR1,. + 0
 1016              		.type	sd_mmc_spi_err, %object
 1017              		.size	sd_mmc_spi_err, 1
 1018              	sd_mmc_spi_err:
 1019 0000 00       		.space	1
 1020              		.section	.bss.sd_mmc_spi_nb_block,"aw",%nobits
 1021              		.align	1
 1022              		.set	.LANCHOR0,. + 0
 1023              		.type	sd_mmc_spi_nb_block, %object
 1024              		.size	sd_mmc_spi_nb_block, 2
 1025              	sd_mmc_spi_nb_block:
ARM GAS  /tmp/ccilBUhC.s 			page 19


 1026 0000 0000     		.space	2
 1027              		.section	.bss.sd_mmc_spi_response_32,"aw",%nobits
 1028              		.align	2
 1029              		.set	.LANCHOR6,. + 0
 1030              		.type	sd_mmc_spi_response_32, %object
 1031              		.size	sd_mmc_spi_response_32, 4
 1032              	sd_mmc_spi_response_32:
 1033 0000 00000000 		.space	4
 1034              		.section	.bss.sd_mmc_spi_transfert_pos,"aw",%nobits
 1035              		.align	2
 1036              		.set	.LANCHOR2,. + 0
 1037              		.type	sd_mmc_spi_transfert_pos, %object
 1038              		.size	sd_mmc_spi_transfert_pos, 4
 1039              	sd_mmc_spi_transfert_pos:
 1040 0000 00000000 		.space	4
 1041              		.section	.bss.spiIdleFunc,"aw",%nobits
 1042              		.align	2
 1043              		.set	.LANCHOR4,. + 0
 1044              		.type	spiIdleFunc, %object
 1045              		.size	spiIdleFunc, 4
 1046              	spiIdleFunc:
 1047 0000 00000000 		.space	4
 1048              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
