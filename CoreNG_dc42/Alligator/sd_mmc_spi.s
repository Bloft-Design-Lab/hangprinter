ARM GAS  /tmp/ccDdWu4c.s 			page 1


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
  23 0000 FF23     		movs	r3, #255
  24 0002 00B5     		push	{lr}
  25 0004 83B0     		sub	sp, sp, #12
  26 0006 02A8     		add	r0, sp, #8
  27 0008 00F8023D 		strb	r3, [r0, #-2]!
  28 000c 0122     		movs	r2, #1
  29 000e 0021     		movs	r1, #0
  30 0010 FFF7FEFF 		bl	sspi_transceive_packet
  31 0014 084B     		ldr	r3, .L6
  32 0016 0122     		movs	r2, #1
  33 0018 1B88     		ldrh	r3, [r3]
  34 001a 0021     		movs	r1, #0
  35 001c 012B     		cmp	r3, #1
  36 001e 0CBF     		ite	eq
  37 0020 FE23     		moveq	r3, #254
  38 0022 FC23     		movne	r3, #252
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
ARM GAS  /tmp/ccDdWu4c.s 			page 2


  58              	sd_mmc_spi_wait_busy:
  59              		@ args = 0, pretend = 0, frame = 8
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61 0000 FF23     		movs	r3, #255
  62 0002 30B5     		push	{r4, r5, lr}
  63 0004 83B0     		sub	sp, sp, #12
  64 0006 02AD     		add	r5, sp, #8
  65 0008 05F8013D 		strb	r3, [r5, #-1]!
  66 000c 2946     		mov	r1, r5
  67 000e 0122     		movs	r2, #1
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
  78 002a 094C     		ldr	r4, .L14
  79 002c 06E0     		b	.L9
  80              	.L11:
  81 002e 0122     		movs	r2, #1
  82 0030 2946     		mov	r1, r5
  83 0032 0020     		movs	r0, #0
  84 0034 FFF7FEFF 		bl	sspi_transceive_packet
  85 0038 013C     		subs	r4, r4, #1
  86 003a 06D0     		beq	.L12
  87              	.L9:
  88 003c 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
  89 0040 FF2B     		cmp	r3, #255
  90 0042 F4D1     		bne	.L11
  91 0044 0120     		movs	r0, #1
  92 0046 03B0     		add	sp, sp, #12
  93              		@ sp needed
  94 0048 30BD     		pop	{r4, r5, pc}
  95              	.L12:
  96 004a 2046     		mov	r0, r4
  97 004c 03B0     		add	sp, sp, #12
  98              		@ sp needed
  99 004e 30BD     		pop	{r4, r5, pc}
 100              	.L15:
 101              		.align	2
 102              	.L14:
 103 0050 400D0300 		.word	200000
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
ARM GAS  /tmp/ccDdWu4c.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116 0000 0023     		movs	r3, #0
 117 0002 30B5     		push	{r4, r5, lr}
 118 0004 83B0     		sub	sp, sp, #12
 119 0006 02AD     		add	r5, sp, #8
 120 0008 144C     		ldr	r4, .L26
 121 000a 05F8013D 		strb	r3, [r5, #-1]!
 122 000e 03E0     		b	.L17
 123              	.L19:
 124 0010 FE2B     		cmp	r3, #254
 125 0012 14D0     		beq	.L24
 126 0014 013C     		subs	r4, r4, #1
 127 0016 1AD0     		beq	.L25
 128              	.L17:
 129 0018 0122     		movs	r2, #1
 130 001a 2946     		mov	r1, r5
 131 001c 0020     		movs	r0, #0
 132 001e FFF7FEFF 		bl	sspi_transceive_packet
 133 0022 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 134 0026 13F0F002 		ands	r2, r3, #240
 135 002a F1D1     		bne	.L19
 136 002c 13F00700 		ands	r0, r3, #7
 137 0030 08D0     		beq	.L20
 138 0032 0721     		movs	r1, #7
 139 0034 1046     		mov	r0, r2
 140 0036 0A4B     		ldr	r3, .L26+4
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
 152 0046 064B     		ldr	r3, .L26+4
 153 0048 1A70     		strb	r2, [r3]
 154 004a 03B0     		add	sp, sp, #12
 155              		@ sp needed
 156 004c 30BD     		pop	{r4, r5, pc}
 157              	.L25:
 158 004e 0422     		movs	r2, #4
 159 0050 2046     		mov	r0, r4
 160 0052 034B     		ldr	r3, .L26+4
 161 0054 1A70     		strb	r2, [r3]
 162 0056 03B0     		add	sp, sp, #12
 163              		@ sp needed
 164 0058 30BD     		pop	{r4, r5, pc}
 165              	.L27:
 166 005a 00BF     		.align	2
 167              	.L26:
 168 005c 20A10700 		.word	500000
 169 0060 00000000 		.word	.LANCHOR1
 170              		.size	sd_mmc_spi_start_read_block, .-sd_mmc_spi_start_read_block
 171              		.section	.text.sd_mmc_spi_stop_write_block,"ax",%progbits
ARM GAS  /tmp/ccDdWu4c.s 			page 4


 172              		.align	1
 173              		.p2align 2,,3
 174              		.syntax unified
 175              		.thumb
 176              		.thumb_func
 177              		.fpu softvfp
 178              		.type	sd_mmc_spi_stop_write_block, %function
 179              	sd_mmc_spi_stop_write_block:
 180              		@ args = 0, pretend = 0, frame = 8
 181              		@ frame_needed = 0, uses_anonymous_args = 0
 182 0000 4FF6FF73 		movw	r3, #65535
 183 0004 00B5     		push	{lr}
 184 0006 83B0     		sub	sp, sp, #12
 185 0008 02A8     		add	r0, sp, #8
 186 000a 20F8023D 		strh	r3, [r0, #-2]!	@ movhi
 187 000e 0222     		movs	r2, #2
 188 0010 0021     		movs	r1, #0
 189 0012 FFF7FEFF 		bl	sspi_transceive_packet
 190 0016 0122     		movs	r2, #1
 191 0018 0DF10501 		add	r1, sp, #5
 192 001c 0020     		movs	r0, #0
 193 001e FFF7FEFF 		bl	sspi_transceive_packet
 194 0022 9DF80530 		ldrb	r3, [sp, #5]	@ zero_extendqisi2
 195 0026 03F01100 		and	r0, r3, #17
 196 002a 0128     		cmp	r0, #1
 197 002c 06D0     		beq	.L29
 198 002e 0122     		movs	r2, #1
 199 0030 0020     		movs	r0, #0
 200 0032 094B     		ldr	r3, .L36
 201 0034 1A70     		strb	r2, [r3]
 202              	.L30:
 203 0036 03B0     		add	sp, sp, #12
 204              		@ sp needed
 205 0038 5DF804FB 		ldr	pc, [sp], #4
 206              	.L29:
 207 003c 03F01E03 		and	r3, r3, #30
 208 0040 042B     		cmp	r3, #4
 209 0042 F8D0     		beq	.L30
 210 0044 0A2B     		cmp	r3, #10
 211 0046 0CBF     		ite	eq
 212 0048 0822     		moveq	r2, #8
 213 004a 0A22     		movne	r2, #10
 214 004c 0020     		movs	r0, #0
 215 004e 024B     		ldr	r3, .L36
 216 0050 1A70     		strb	r2, [r3]
 217 0052 03B0     		add	sp, sp, #12
 218              		@ sp needed
 219 0054 5DF804FB 		ldr	pc, [sp], #4
 220              	.L37:
 221              		.align	2
 222              	.L36:
 223 0058 00000000 		.word	.LANCHOR1
 224              		.size	sd_mmc_spi_stop_write_block, .-sd_mmc_spi_stop_write_block
 225              		.section	.text.sd_mmc_spi_stop_multiwrite_block,"ax",%progbits
 226              		.align	1
 227              		.p2align 2,,3
 228              		.syntax unified
ARM GAS  /tmp/ccDdWu4c.s 			page 5


 229              		.thumb
 230              		.thumb_func
 231              		.fpu softvfp
 232              		.type	sd_mmc_spi_stop_multiwrite_block, %function
 233              	sd_mmc_spi_stop_multiwrite_block:
 234              		@ args = 0, pretend = 0, frame = 8
 235              		@ frame_needed = 0, uses_anonymous_args = 0
 236 0000 144B     		ldr	r3, .L48
 237 0002 1888     		ldrh	r0, [r3]
 238 0004 0128     		cmp	r0, #1
 239 0006 09D0     		beq	.L44
 240 0008 134B     		ldr	r3, .L48+4
 241 000a 144A     		ldr	r2, .L48+8
 242 000c 1B68     		ldr	r3, [r3]
 243 000e 1288     		ldrh	r2, [r2]
 244 0010 B3FBF2F3 		udiv	r3, r3, r2
 245 0014 9842     		cmp	r0, r3
 246 0016 02D9     		bls	.L47
 247 0018 0120     		movs	r0, #1
 248 001a 7047     		bx	lr
 249              	.L44:
 250 001c 7047     		bx	lr
 251              	.L47:
 252 001e FF23     		movs	r3, #255
 253 0020 10B5     		push	{r4, lr}
 254 0022 82B0     		sub	sp, sp, #8
 255 0024 02AC     		add	r4, sp, #8
 256 0026 04F8013D 		strb	r3, [r4, #-1]!
 257 002a 0122     		movs	r2, #1
 258 002c 0021     		movs	r1, #0
 259 002e 2046     		mov	r0, r4
 260 0030 FFF7FEFF 		bl	sspi_transceive_packet
 261 0034 FD23     		movs	r3, #253
 262 0036 0122     		movs	r2, #1
 263 0038 0021     		movs	r1, #0
 264 003a 2046     		mov	r0, r4
 265 003c 8DF80730 		strb	r3, [sp, #7]
 266 0040 FFF7FEFF 		bl	sspi_transceive_packet
 267 0044 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 268 0048 10B9     		cbnz	r0, .L39
 269 004a 0522     		movs	r2, #5
 270 004c 044B     		ldr	r3, .L48+12
 271 004e 1A70     		strb	r2, [r3]
 272              	.L39:
 273 0050 02B0     		add	sp, sp, #8
 274              		@ sp needed
 275 0052 10BD     		pop	{r4, pc}
 276              	.L49:
 277              		.align	2
 278              	.L48:
 279 0054 00000000 		.word	.LANCHOR0
 280 0058 00000000 		.word	.LANCHOR2
 281 005c 00000000 		.word	.LANCHOR3
 282 0060 00000000 		.word	.LANCHOR1
 283              		.size	sd_mmc_spi_stop_multiwrite_block, .-sd_mmc_spi_stop_multiwrite_block
 284              		.section	.text.spi_mmc_get_speed,"ax",%progbits
 285              		.align	1
ARM GAS  /tmp/ccDdWu4c.s 			page 6


 286              		.p2align 2,,3
 287              		.global	spi_mmc_get_speed
 288              		.syntax unified
 289              		.thumb
 290              		.thumb_func
 291              		.fpu softvfp
 292              		.type	spi_mmc_get_speed, %function
 293              	spi_mmc_get_speed:
 294              		@ args = 0, pretend = 0, frame = 0
 295              		@ frame_needed = 0, uses_anonymous_args = 0
 296              		@ link register save eliminated.
 297 0000 0048     		ldr	r0, .L51
 298 0002 7047     		bx	lr
 299              	.L52:
 300              		.align	2
 301              	.L51:
 302 0004 A0252600 		.word	2500000
 303              		.size	spi_mmc_get_speed, .-spi_mmc_get_speed
 304              		.section	.text.sd_mmc_spi_set_idle_func,"ax",%progbits
 305              		.align	1
 306              		.p2align 2,,3
 307              		.global	sd_mmc_spi_set_idle_func
 308              		.syntax unified
 309              		.thumb
 310              		.thumb_func
 311              		.fpu softvfp
 312              		.type	sd_mmc_spi_set_idle_func, %function
 313              	sd_mmc_spi_set_idle_func:
 314              		@ args = 0, pretend = 0, frame = 0
 315              		@ frame_needed = 0, uses_anonymous_args = 0
 316              		@ link register save eliminated.
 317 0000 024B     		ldr	r3, .L54
 318 0002 1A68     		ldr	r2, [r3]
 319 0004 1860     		str	r0, [r3]
 320 0006 1046     		mov	r0, r2
 321 0008 7047     		bx	lr
 322              	.L55:
 323 000a 00BF     		.align	2
 324              	.L54:
 325 000c 00000000 		.word	.LANCHOR4
 326              		.size	sd_mmc_spi_set_idle_func, .-sd_mmc_spi_set_idle_func
 327              		.section	.text.sd_mmc_spi_get_errno,"ax",%progbits
 328              		.align	1
 329              		.p2align 2,,3
 330              		.global	sd_mmc_spi_get_errno
 331              		.syntax unified
 332              		.thumb
 333              		.thumb_func
 334              		.fpu softvfp
 335              		.type	sd_mmc_spi_get_errno, %function
 336              	sd_mmc_spi_get_errno:
 337              		@ args = 0, pretend = 0, frame = 0
 338              		@ frame_needed = 0, uses_anonymous_args = 0
 339              		@ link register save eliminated.
 340 0000 014B     		ldr	r3, .L57
 341 0002 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 342 0004 7047     		bx	lr
ARM GAS  /tmp/ccDdWu4c.s 			page 7


 343              	.L58:
 344 0006 00BF     		.align	2
 345              	.L57:
 346 0008 00000000 		.word	.LANCHOR1
 347              		.size	sd_mmc_spi_get_errno, .-sd_mmc_spi_get_errno
 348              		.section	.text.sd_mmc_spi_init,"ax",%progbits
 349              		.align	1
 350              		.p2align 2,,3
 351              		.global	sd_mmc_spi_init
 352              		.syntax unified
 353              		.thumb
 354              		.thumb_func
 355              		.fpu softvfp
 356              		.type	sd_mmc_spi_init, %function
 357              	sd_mmc_spi_init:
 358              		@ args = 0, pretend = 0, frame = 0
 359              		@ frame_needed = 0, uses_anonymous_args = 0
 360              		@ link register save eliminated.
 361 0000 0022     		movs	r2, #0
 362 0002 30B4     		push	{r4, r5}
 363 0004 054B     		ldr	r3, .L61
 364 0006 0578     		ldrb	r5, [r0]	@ zero_extendqisi2
 365 0008 054C     		ldr	r4, .L61+4
 366 000a 1D70     		strb	r5, [r3]
 367 000c 2270     		strb	r2, [r4]
 368 000e 1846     		mov	r0, r3
 369 0010 30BC     		pop	{r4, r5}
 370 0012 0821     		movs	r1, #8
 371 0014 5A70     		strb	r2, [r3, #1]
 372 0016 FFF7FEBF 		b	sspi_master_init
 373              	.L62:
 374 001a 00BF     		.align	2
 375              	.L61:
 376 001c 00000000 		.word	.LANCHOR5
 377 0020 00000000 		.word	.LANCHOR1
 378              		.size	sd_mmc_spi_init, .-sd_mmc_spi_init
 379              		.section	.text.sd_mmc_spi_select_device,"ax",%progbits
 380              		.align	1
 381              		.p2align 2,,3
 382              		.global	sd_mmc_spi_select_device
 383              		.syntax unified
 384              		.thumb
 385              		.thumb_func
 386              		.fpu softvfp
 387              		.type	sd_mmc_spi_select_device, %function
 388              	sd_mmc_spi_select_device:
 389              		@ args = 0, pretend = 0, frame = 0
 390              		@ frame_needed = 0, uses_anonymous_args = 0
 391 0000 0B4B     		ldr	r3, .L65
 392 0002 0022     		movs	r2, #0
 393 0004 9942     		cmp	r1, r3
 394 0006 28BF     		it	cs
 395 0008 1946     		movcs	r1, r3
 396 000a 10B5     		push	{r4, lr}
 397 000c 094C     		ldr	r4, .L65+4
 398 000e 0A4B     		ldr	r3, .L65+8
 399 0010 04EBC004 		add	r4, r4, r0, lsl #3
ARM GAS  /tmp/ccDdWu4c.s 			page 8


 400 0014 2046     		mov	r0, r4
 401 0016 6160     		str	r1, [r4, #4]
 402 0018 E270     		strb	r2, [r4, #3]
 403 001a 1A70     		strb	r2, [r3]
 404 001c FFF7FEFF 		bl	sspi_master_setup_device
 405 0020 2046     		mov	r0, r4
 406 0022 FFF7FEFF 		bl	sspi_select_device
 407 0026 1C23     		movs	r3, #28
 408              		.syntax unified
 409              	@ 83 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 410              		L_435_delayMicroseconds:
 411 0028 013B     		subs   r3, #1
 412 002a FDD1     		bne    L_435_delayMicroseconds
 413              	
 414              	@ 0 "" 2
 415              		.thumb
 416              		.syntax unified
 417 002c 10BD     		pop	{r4, pc}
 418              	.L66:
 419 002e 00BF     		.align	2
 420              	.L65:
 421 0030 002D3101 		.word	20000000
 422 0034 00000000 		.word	.LANCHOR5
 423 0038 00000000 		.word	.LANCHOR1
 424              		.size	sd_mmc_spi_select_device, .-sd_mmc_spi_select_device
 425              		.section	.text.sd_mmc_spi_deselect_device,"ax",%progbits
 426              		.align	1
 427              		.p2align 2,,3
 428              		.global	sd_mmc_spi_deselect_device
 429              		.syntax unified
 430              		.thumb
 431              		.thumb_func
 432              		.fpu softvfp
 433              		.type	sd_mmc_spi_deselect_device, %function
 434              	sd_mmc_spi_deselect_device:
 435              		@ args = 0, pretend = 0, frame = 0
 436              		@ frame_needed = 0, uses_anonymous_args = 0
 437 0000 0022     		movs	r2, #0
 438 0002 0649     		ldr	r1, .L69
 439 0004 08B5     		push	{r3, lr}
 440 0006 064B     		ldr	r3, .L69+4
 441 0008 01EBC000 		add	r0, r1, r0, lsl #3
 442 000c 1A70     		strb	r2, [r3]
 443 000e FFF7FEFF 		bl	sspi_deselect_device
 444 0012 1C23     		movs	r3, #28
 445              		.syntax unified
 446              	@ 83 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 447              		L_463_delayMicroseconds:
 448 0014 013B     		subs   r3, #1
 449 0016 FDD1     		bne    L_463_delayMicroseconds
 450              	
 451              	@ 0 "" 2
 452              		.thumb
 453              		.syntax unified
 454 0018 08BD     		pop	{r3, pc}
 455              	.L70:
 456 001a 00BF     		.align	2
ARM GAS  /tmp/ccDdWu4c.s 			page 9


 457              	.L69:
 458 001c 00000000 		.word	.LANCHOR5
 459 0020 00000000 		.word	.LANCHOR1
 460              		.size	sd_mmc_spi_deselect_device, .-sd_mmc_spi_deselect_device
 461              		.section	.text.sd_mmc_spi_send_clock,"ax",%progbits
 462              		.align	1
 463              		.p2align 2,,3
 464              		.global	sd_mmc_spi_send_clock
 465              		.syntax unified
 466              		.thumb
 467              		.thumb_func
 468              		.fpu softvfp
 469              		.type	sd_mmc_spi_send_clock, %function
 470              	sd_mmc_spi_send_clock:
 471              		@ args = 0, pretend = 0, frame = 8
 472              		@ frame_needed = 0, uses_anonymous_args = 0
 473 0000 FF21     		movs	r1, #255
 474 0002 0022     		movs	r2, #0
 475 0004 30B5     		push	{r4, r5, lr}
 476 0006 0A24     		movs	r4, #10
 477 0008 83B0     		sub	sp, sp, #12
 478 000a 084B     		ldr	r3, .L75
 479 000c 02AD     		add	r5, sp, #8
 480 000e 05F8011D 		strb	r1, [r5, #-1]!
 481 0012 1A70     		strb	r2, [r3]
 482              	.L72:
 483 0014 0122     		movs	r2, #1
 484 0016 0021     		movs	r1, #0
 485 0018 2846     		mov	r0, r5
 486 001a FFF7FEFF 		bl	sspi_transceive_packet
 487 001e 631E     		subs	r3, r4, #1
 488 0020 13F0FF04 		ands	r4, r3, #255
 489 0024 F6D1     		bne	.L72
 490 0026 03B0     		add	sp, sp, #12
 491              		@ sp needed
 492 0028 30BD     		pop	{r4, r5, pc}
 493              	.L76:
 494 002a 00BF     		.align	2
 495              	.L75:
 496 002c 00000000 		.word	.LANCHOR1
 497              		.size	sd_mmc_spi_send_clock, .-sd_mmc_spi_send_clock
 498              		.section	.text.sd_mmc_spi_adtc_start,"ax",%progbits
 499              		.align	1
 500              		.p2align 2,,3
 501              		.global	sd_mmc_spi_adtc_start
 502              		.syntax unified
 503              		.thumb
 504              		.thumb_func
 505              		.fpu softvfp
 506              		.type	sd_mmc_spi_adtc_start, %function
 507              	sd_mmc_spi_adtc_start:
 508              		@ args = 4, pretend = 0, frame = 16
 509              		@ frame_needed = 0, uses_anonymous_args = 0
 510 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 511 0004 0546     		mov	r5, r0
 512 0006 4FF0000E 		mov	lr, #0
 513 000a FF20     		movs	r0, #255
ARM GAS  /tmp/ccDdWu4c.s 			page 10


 514 000c 85B0     		sub	sp, sp, #20
 515 000e 0C0E     		lsrs	r4, r1, #24
 516 0010 8DF80940 		strb	r4, [sp, #9]
 517 0014 0C0C     		lsrs	r4, r1, #16
 518 0016 1746     		mov	r7, r2
 519 0018 8DF80A40 		strb	r4, [sp, #10]
 520 001c 05F03F02 		and	r2, r5, #63
 521 0020 4E4C     		ldr	r4, .L109
 522 0022 42F04002 		orr	r2, r2, #64
 523 0026 8DF80C10 		strb	r1, [sp, #12]
 524 002a 090A     		lsrs	r1, r1, #8
 525 002c 1E46     		mov	r6, r3
 526 002e 84F800E0 		strb	lr, [r4]
 527 0032 7346     		mov	r3, lr
 528 0034 8DF80820 		strb	r2, [sp, #8]
 529 0038 8DF80B10 		strb	r1, [sp, #11]
 530 003c 8DF80600 		strb	r0, [sp, #6]
 531 0040 0DF1090E 		add	lr, sp, #9
 532 0044 0DF10D0C 		add	ip, sp, #13
 533              	.L81:
 534 0048 4FF00808 		mov	r8, #8
 535              	.L79:
 536 004c 5B00     		lsls	r3, r3, #1
 537 004e DBB2     		uxtb	r3, r3
 538 0050 83EA0200 		eor	r0, r3, r2
 539 0054 10F0800F 		tst	r0, #128
 540 0058 08F1FF31 		add	r1, r8, #-1
 541 005c 4FEA4202 		lsl	r2, r2, #1
 542 0060 18BF     		it	ne
 543 0062 83F00903 		eorne	r3, r3, #9
 544 0066 11F0FF08 		ands	r8, r1, #255
 545 006a D2B2     		uxtb	r2, r2
 546 006c EED1     		bne	.L79
 547 006e F445     		cmp	ip, lr
 548 0070 02D0     		beq	.L80
 549 0072 1EF8012B 		ldrb	r2, [lr], #1	@ zero_extendqisi2
 550 0076 E7E7     		b	.L81
 551              	.L80:
 552 0078 5B00     		lsls	r3, r3, #1
 553 007a 43F00103 		orr	r3, r3, #1
 554 007e 4146     		mov	r1, r8
 555 0080 0122     		movs	r2, #1
 556 0082 0DF10600 		add	r0, sp, #6
 557 0086 8DF80D30 		strb	r3, [sp, #13]
 558 008a FFF7FEFF 		bl	sspi_transceive_packet
 559 008e 4146     		mov	r1, r8
 560 0090 0622     		movs	r2, #6
 561 0092 02A8     		add	r0, sp, #8
 562 0094 FFF7FEFF 		bl	sspi_transceive_packet
 563 0098 FF23     		movs	r3, #255
 564 009a 0DF11009 		add	r9, sp, #16
 565 009e 09F8093D 		strb	r3, [r9, #-9]!
 566 00a2 4046     		mov	r0, r8
 567 00a4 4946     		mov	r1, r9
 568 00a6 0122     		movs	r2, #1
 569 00a8 FFF7FEFF 		bl	sspi_transceive_packet
 570 00ac 4FF00708 		mov	r8, #7
ARM GAS  /tmp/ccDdWu4c.s 			page 11


 571              	.L83:
 572 00b0 0122     		movs	r2, #1
 573 00b2 4946     		mov	r1, r9
 574 00b4 0020     		movs	r0, #0
 575 00b6 FFF7FEFF 		bl	sspi_transceive_packet
 576 00ba 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 577 00be 08F1FF30 		add	r0, r8, #-1
 578 00c2 1A06     		lsls	r2, r3, #24
 579 00c4 08D5     		bpl	.L82
 580 00c6 10F0FF08 		ands	r8, r0, #255
 581 00ca F1D1     		bne	.L83
 582 00cc 0223     		movs	r3, #2
 583 00ce 4046     		mov	r0, r8
 584 00d0 2370     		strb	r3, [r4]
 585              	.L84:
 586 00d2 05B0     		add	sp, sp, #20
 587              		@ sp needed
 588 00d4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 589              	.L82:
 590 00d8 DFF89090 		ldr	r9, .L109+16
 591 00dc 13F00802 		ands	r2, r3, #8
 592 00e0 C9F80030 		str	r3, [r9]
 593 00e4 14D1     		bne	.L103
 594 00e6 13F00400 		ands	r0, r3, #4
 595 00ea 15D1     		bne	.L104
 596 00ec 13F0FE0F 		tst	r3, #254
 597 00f0 31D1     		bne	.L105
 598 00f2 A904     		lsls	r1, r5, #18
 599 00f4 14D4     		bmi	.L106
 600              	.L88:
 601 00f6 AA05     		lsls	r2, r5, #22
 602 00f8 24D4     		bmi	.L107
 603              	.L89:
 604 00fa 6B05     		lsls	r3, r5, #21
 605 00fc 17D4     		bmi	.L108
 606              	.L90:
 607 00fe 0024     		movs	r4, #0
 608 0100 1749     		ldr	r1, .L109+4
 609 0102 184A     		ldr	r2, .L109+8
 610 0104 184B     		ldr	r3, .L109+12
 611 0106 0120     		movs	r0, #1
 612 0108 0C60     		str	r4, [r1]
 613 010a 1780     		strh	r7, [r2]	@ movhi
 614 010c 1E80     		strh	r6, [r3]	@ movhi
 615 010e E0E7     		b	.L84
 616              	.L103:
 617 0110 0623     		movs	r3, #6
 618 0112 0020     		movs	r0, #0
 619 0114 2370     		strb	r3, [r4]
 620 0116 DCE7     		b	.L84
 621              	.L104:
 622 0118 0923     		movs	r3, #9
 623 011a 1046     		mov	r0, r2
 624 011c 2370     		strb	r3, [r4]
 625 011e D8E7     		b	.L84
 626              	.L106:
 627 0120 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
ARM GAS  /tmp/ccDdWu4c.s 			page 12


 628 0124 0028     		cmp	r0, #0
 629 0126 E6D1     		bne	.L88
 630 0128 0323     		movs	r3, #3
 631 012a 2370     		strb	r3, [r4]
 632 012c D1E7     		b	.L84
 633              	.L108:
 634 012e 0422     		movs	r2, #4
 635 0130 0E49     		ldr	r1, .L109+16
 636 0132 0020     		movs	r0, #0
 637 0134 FFF7FEFF 		bl	sspi_transceive_packet
 638 0138 D9F80030 		ldr	r3, [r9]
 639 013c 1BBA     		rev	r3, r3
 640 013e C9F80030 		str	r3, [r9]
 641 0142 DCE7     		b	.L90
 642              	.L107:
 643 0144 0023     		movs	r3, #0
 644 0146 0122     		movs	r2, #1
 645 0148 1846     		mov	r0, r3
 646 014a 0849     		ldr	r1, .L109+16
 647 014c C9F80030 		str	r3, [r9]
 648 0150 FFF7FEFF 		bl	sspi_transceive_packet
 649 0154 D1E7     		b	.L89
 650              	.L105:
 651 0156 0123     		movs	r3, #1
 652 0158 2370     		strb	r3, [r4]
 653 015a BAE7     		b	.L84
 654              	.L110:
 655              		.align	2
 656              	.L109:
 657 015c 00000000 		.word	.LANCHOR1
 658 0160 00000000 		.word	.LANCHOR2
 659 0164 00000000 		.word	.LANCHOR3
 660 0168 00000000 		.word	.LANCHOR0
 661 016c 00000000 		.word	.LANCHOR6
 662              		.size	sd_mmc_spi_adtc_start, .-sd_mmc_spi_adtc_start
 663              		.section	.text.sd_mmc_spi_send_cmd,"ax",%progbits
 664              		.align	1
 665              		.p2align 2,,3
 666              		.global	sd_mmc_spi_send_cmd
 667              		.syntax unified
 668              		.thumb
 669              		.thumb_func
 670              		.fpu softvfp
 671              		.type	sd_mmc_spi_send_cmd, %function
 672              	sd_mmc_spi_send_cmd:
 673              		@ args = 0, pretend = 0, frame = 0
 674              		@ frame_needed = 0, uses_anonymous_args = 0
 675 0000 0023     		movs	r3, #0
 676 0002 00B5     		push	{lr}
 677 0004 83B0     		sub	sp, sp, #12
 678 0006 0093     		str	r3, [sp]
 679 0008 1A46     		mov	r2, r3
 680 000a FFF7FEFF 		bl	sd_mmc_spi_adtc_start
 681 000e 03B0     		add	sp, sp, #12
 682              		@ sp needed
 683 0010 5DF804FB 		ldr	pc, [sp], #4
 684              		.size	sd_mmc_spi_send_cmd, .-sd_mmc_spi_send_cmd
ARM GAS  /tmp/ccDdWu4c.s 			page 13


 685              		.section	.text.sd_mmc_spi_get_response,"ax",%progbits
 686              		.align	1
 687              		.p2align 2,,3
 688              		.global	sd_mmc_spi_get_response
 689              		.syntax unified
 690              		.thumb
 691              		.thumb_func
 692              		.fpu softvfp
 693              		.type	sd_mmc_spi_get_response, %function
 694              	sd_mmc_spi_get_response:
 695              		@ args = 0, pretend = 0, frame = 0
 696              		@ frame_needed = 0, uses_anonymous_args = 0
 697              		@ link register save eliminated.
 698 0000 014B     		ldr	r3, .L114
 699 0002 1868     		ldr	r0, [r3]
 700 0004 7047     		bx	lr
 701              	.L115:
 702 0006 00BF     		.align	2
 703              	.L114:
 704 0008 00000000 		.word	.LANCHOR6
 705              		.size	sd_mmc_spi_get_response, .-sd_mmc_spi_get_response
 706              		.section	.text.sd_mmc_spi_read_word,"ax",%progbits
 707              		.align	1
 708              		.p2align 2,,3
 709              		.global	sd_mmc_spi_read_word
 710              		.syntax unified
 711              		.thumb
 712              		.thumb_func
 713              		.fpu softvfp
 714              		.type	sd_mmc_spi_read_word, %function
 715              	sd_mmc_spi_read_word:
 716              		@ args = 0, pretend = 0, frame = 8
 717              		@ frame_needed = 0, uses_anonymous_args = 0
 718 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 719 0002 134C     		ldr	r4, .L124
 720 0004 134D     		ldr	r5, .L124+4
 721 0006 2168     		ldr	r1, [r4]
 722 0008 2A88     		ldrh	r2, [r5]
 723 000a 0026     		movs	r6, #0
 724 000c B1FBF2F3 		udiv	r3, r1, r2
 725 0010 02FB1313 		mls	r3, r2, r3, r1
 726 0014 104A     		ldr	r2, .L124+8
 727 0016 83B0     		sub	sp, sp, #12
 728 0018 0746     		mov	r7, r0
 729 001a 1670     		strb	r6, [r2]
 730 001c 13B9     		cbnz	r3, .L120
 731 001e FFF7FEFF 		bl	sd_mmc_spi_start_read_block
 732 0022 70B1     		cbz	r0, .L119
 733              	.L120:
 734 0024 0422     		movs	r2, #4
 735 0026 3946     		mov	r1, r7
 736 0028 0020     		movs	r0, #0
 737 002a FFF7FEFF 		bl	sspi_transceive_packet
 738 002e 2368     		ldr	r3, [r4]
 739 0030 2A88     		ldrh	r2, [r5]
 740 0032 0433     		adds	r3, r3, #4
 741 0034 B3FBF2F0 		udiv	r0, r3, r2
ARM GAS  /tmp/ccDdWu4c.s 			page 14


 742 0038 02FB1030 		mls	r0, r2, r0, r3
 743 003c 2360     		str	r3, [r4]
 744 003e 10B1     		cbz	r0, .L123
 745              	.L122:
 746 0040 0120     		movs	r0, #1
 747              	.L119:
 748 0042 03B0     		add	sp, sp, #12
 749              		@ sp needed
 750 0044 F0BD     		pop	{r4, r5, r6, r7, pc}
 751              	.L123:
 752 0046 0222     		movs	r2, #2
 753 0048 01A9     		add	r1, sp, #4
 754 004a FFF7FEFF 		bl	sspi_transceive_packet
 755 004e F7E7     		b	.L122
 756              	.L125:
 757              		.align	2
 758              	.L124:
 759 0050 00000000 		.word	.LANCHOR2
 760 0054 00000000 		.word	.LANCHOR3
 761 0058 00000000 		.word	.LANCHOR1
 762              		.size	sd_mmc_spi_read_word, .-sd_mmc_spi_read_word
 763              		.section	.text.sd_mmc_spi_write_word,"ax",%progbits
 764              		.align	1
 765              		.p2align 2,,3
 766              		.global	sd_mmc_spi_write_word
 767              		.syntax unified
 768              		.thumb
 769              		.thumb_func
 770              		.fpu softvfp
 771              		.type	sd_mmc_spi_write_word, %function
 772              	sd_mmc_spi_write_word:
 773              		@ args = 0, pretend = 0, frame = 8
 774              		@ frame_needed = 0, uses_anonymous_args = 0
 775 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 776 0002 184C     		ldr	r4, .L136
 777 0004 184E     		ldr	r6, .L136+4
 778 0006 2168     		ldr	r1, [r4]
 779 0008 3288     		ldrh	r2, [r6]
 780 000a 0027     		movs	r7, #0
 781 000c B1FBF2F3 		udiv	r3, r1, r2
 782 0010 02FB1313 		mls	r3, r2, r3, r1
 783 0014 154D     		ldr	r5, .L136+8
 784 0016 83B0     		sub	sp, sp, #12
 785 0018 0190     		str	r0, [sp, #4]
 786 001a 2F70     		strb	r7, [r5]
 787 001c BBB1     		cbz	r3, .L134
 788              	.L127:
 789 001e 0422     		movs	r2, #4
 790 0020 0021     		movs	r1, #0
 791 0022 0DEB0200 		add	r0, sp, r2
 792 0026 FFF7FEFF 		bl	sspi_transceive_packet
 793 002a 2368     		ldr	r3, [r4]
 794 002c 3188     		ldrh	r1, [r6]
 795 002e 0433     		adds	r3, r3, #4
 796 0030 B3FBF1F2 		udiv	r2, r3, r1
 797 0034 01FB1232 		mls	r2, r1, r2, r3
 798 0038 2360     		str	r3, [r4]
ARM GAS  /tmp/ccDdWu4c.s 			page 15


 799 003a 22B9     		cbnz	r2, .L128
 800 003c FFF7FEFF 		bl	sd_mmc_spi_stop_write_block
 801 0040 40B9     		cbnz	r0, .L135
 802              	.L129:
 803 0042 03B0     		add	sp, sp, #12
 804              		@ sp needed
 805 0044 F0BD     		pop	{r4, r5, r6, r7, pc}
 806              	.L128:
 807 0046 FFF7FEFF 		bl	sd_mmc_spi_stop_multiwrite_block
 808 004a 03B0     		add	sp, sp, #12
 809              		@ sp needed
 810 004c F0BD     		pop	{r4, r5, r6, r7, pc}
 811              	.L134:
 812 004e FFF7FEFF 		bl	sd_mmc_spi_start_write_block
 813 0052 E4E7     		b	.L127
 814              	.L135:
 815 0054 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 816 0058 0028     		cmp	r0, #0
 817 005a F4D1     		bne	.L128
 818 005c 0523     		movs	r3, #5
 819 005e 2B70     		strb	r3, [r5]
 820 0060 EFE7     		b	.L129
 821              	.L137:
 822 0062 00BF     		.align	2
 823              	.L136:
 824 0064 00000000 		.word	.LANCHOR2
 825 0068 00000000 		.word	.LANCHOR3
 826 006c 00000000 		.word	.LANCHOR1
 827              		.size	sd_mmc_spi_write_word, .-sd_mmc_spi_write_word
 828              		.section	.text.sd_mmc_spi_start_read_blocks,"ax",%progbits
 829              		.align	1
 830              		.p2align 2,,3
 831              		.global	sd_mmc_spi_start_read_blocks
 832              		.syntax unified
 833              		.thumb
 834              		.thumb_func
 835              		.fpu softvfp
 836              		.type	sd_mmc_spi_start_read_blocks, %function
 837              	sd_mmc_spi_start_read_blocks:
 838              		@ args = 0, pretend = 0, frame = 8
 839              		@ frame_needed = 0, uses_anonymous_args = 0
 840 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 841 0004 0025     		movs	r5, #0
 842 0006 174B     		ldr	r3, .L149
 843 0008 83B0     		sub	sp, sp, #12
 844 000a 1D70     		strb	r5, [r3]
 845 000c 29B3     		cbz	r1, .L142
 846 000e 4C1E     		subs	r4, r1, #1
 847 0010 A4B2     		uxth	r4, r4
 848 0012 8146     		mov	r9, r0
 849 0014 DFF85480 		ldr	r8, .L149+8
 850 0018 134F     		ldr	r7, .L149+4
 851 001a 15E0     		b	.L141
 852              	.L148:
 853 001c B8F80020 		ldrh	r2, [r8]
 854 0020 0020     		movs	r0, #0
 855 0022 FFF7FEFF 		bl	sspi_transceive_packet
ARM GAS  /tmp/ccDdWu4c.s 			page 16


 856 0026 B8F80060 		ldrh	r6, [r8]
 857 002a 3B68     		ldr	r3, [r7]
 858 002c 0222     		movs	r2, #2
 859 002e 3344     		add	r3, r3, r6
 860 0030 01A9     		add	r1, sp, #4
 861 0032 0020     		movs	r0, #0
 862 0034 3B60     		str	r3, [r7]
 863 0036 FFF7FEFF 		bl	sspi_transceive_packet
 864 003a 4FF6FF73 		movw	r3, #65535
 865 003e 013C     		subs	r4, r4, #1
 866 0040 A4B2     		uxth	r4, r4
 867 0042 9C42     		cmp	r4, r3
 868 0044 3544     		add	r5, r5, r6
 869 0046 08D0     		beq	.L142
 870              	.L141:
 871 0048 FFF7FEFF 		bl	sd_mmc_spi_start_read_block
 872 004c 09EB0501 		add	r1, r9, r5
 873 0050 0028     		cmp	r0, #0
 874 0052 E3D1     		bne	.L148
 875 0054 03B0     		add	sp, sp, #12
 876              		@ sp needed
 877 0056 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 878              	.L142:
 879 005a 0120     		movs	r0, #1
 880 005c 03B0     		add	sp, sp, #12
 881              		@ sp needed
 882 005e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 883              	.L150:
 884 0062 00BF     		.align	2
 885              	.L149:
 886 0064 00000000 		.word	.LANCHOR1
 887 0068 00000000 		.word	.LANCHOR2
 888 006c 00000000 		.word	.LANCHOR3
 889              		.size	sd_mmc_spi_start_read_blocks, .-sd_mmc_spi_start_read_blocks
 890              		.section	.text.sd_mmc_spi_wait_end_of_read_blocks,"ax",%progbits
 891              		.align	1
 892              		.p2align 2,,3
 893              		.global	sd_mmc_spi_wait_end_of_read_blocks
 894              		.syntax unified
 895              		.thumb
 896              		.thumb_func
 897              		.fpu softvfp
 898              		.type	sd_mmc_spi_wait_end_of_read_blocks, %function
 899              	sd_mmc_spi_wait_end_of_read_blocks:
 900              		@ args = 0, pretend = 0, frame = 0
 901              		@ frame_needed = 0, uses_anonymous_args = 0
 902              		@ link register save eliminated.
 903 0000 0120     		movs	r0, #1
 904 0002 7047     		bx	lr
 905              		.size	sd_mmc_spi_wait_end_of_read_blocks, .-sd_mmc_spi_wait_end_of_read_blocks
 906              		.section	.text.sd_mmc_spi_start_write_blocks,"ax",%progbits
 907              		.align	1
 908              		.p2align 2,,3
 909              		.global	sd_mmc_spi_start_write_blocks
 910              		.syntax unified
 911              		.thumb
 912              		.thumb_func
ARM GAS  /tmp/ccDdWu4c.s 			page 17


 913              		.fpu softvfp
 914              		.type	sd_mmc_spi_start_write_blocks, %function
 915              	sd_mmc_spi_start_write_blocks:
 916              		@ args = 0, pretend = 0, frame = 0
 917              		@ frame_needed = 0, uses_anonymous_args = 0
 918 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 919 0004 0024     		movs	r4, #0
 920 0006 8046     		mov	r8, r0
 921 0008 0D46     		mov	r5, r1
 922 000a DFF85890 		ldr	r9, .L163+8
 923 000e 134F     		ldr	r7, .L163
 924 0010 134E     		ldr	r6, .L163+4
 925 0012 89F80040 		strb	r4, [r9]
 926              	.L153:
 927 0016 8DB1     		cbz	r5, .L157
 928 0018 FFF7FEFF 		bl	sd_mmc_spi_start_write_block
 929 001c 3A88     		ldrh	r2, [r7]
 930 001e 08EB0400 		add	r0, r8, r4
 931 0022 0021     		movs	r1, #0
 932 0024 FFF7FEFF 		bl	sspi_transceive_packet
 933 0028 3A88     		ldrh	r2, [r7]
 934 002a 3368     		ldr	r3, [r6]
 935 002c 1444     		add	r4, r4, r2
 936 002e 1344     		add	r3, r3, r2
 937 0030 3360     		str	r3, [r6]
 938 0032 FFF7FEFF 		bl	sd_mmc_spi_stop_write_block
 939 0036 78B1     		cbz	r0, .L154
 940 0038 012D     		cmp	r5, #1
 941 003a 02D1     		bne	.L155
 942              	.L157:
 943 003c 0120     		movs	r0, #1
 944 003e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 945              	.L155:
 946 0042 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 947 0046 013D     		subs	r5, r5, #1
 948 0048 ADB2     		uxth	r5, r5
 949 004a 0028     		cmp	r0, #0
 950 004c E3D1     		bne	.L153
 951 004e 0523     		movs	r3, #5
 952 0050 89F80030 		strb	r3, [r9]
 953 0054 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 954              	.L154:
 955 0058 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 956              	.L164:
 957              		.align	2
 958              	.L163:
 959 005c 00000000 		.word	.LANCHOR3
 960 0060 00000000 		.word	.LANCHOR2
 961 0064 00000000 		.word	.LANCHOR1
 962              		.size	sd_mmc_spi_start_write_blocks, .-sd_mmc_spi_start_write_blocks
 963              		.section	.text.sd_mmc_spi_wait_end_of_write_blocks,"ax",%progbits
 964              		.align	1
 965              		.p2align 2,,3
 966              		.global	sd_mmc_spi_wait_end_of_write_blocks
 967              		.syntax unified
 968              		.thumb
 969              		.thumb_func
ARM GAS  /tmp/ccDdWu4c.s 			page 18


 970              		.fpu softvfp
 971              		.type	sd_mmc_spi_wait_end_of_write_blocks, %function
 972              	sd_mmc_spi_wait_end_of_write_blocks:
 973              		@ args = 0, pretend = 0, frame = 0
 974              		@ frame_needed = 0, uses_anonymous_args = 0
 975 0000 08B5     		push	{r3, lr}
 976 0002 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 977 0006 18B9     		cbnz	r0, .L166
 978 0008 0522     		movs	r2, #5
 979 000a 034B     		ldr	r3, .L170
 980 000c 1A70     		strb	r2, [r3]
 981 000e 08BD     		pop	{r3, pc}
 982              	.L166:
 983 0010 BDE80840 		pop	{r3, lr}
 984 0014 FFF7FEBF 		b	sd_mmc_spi_stop_multiwrite_block
 985              	.L171:
 986              		.align	2
 987              	.L170:
 988 0018 00000000 		.word	.LANCHOR1
 989              		.size	sd_mmc_spi_wait_end_of_write_blocks, .-sd_mmc_spi_wait_end_of_write_blocks
 990              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 991              		.align	2
 992              		.type	cpu_irq_critical_section_counter, %object
 993              		.size	cpu_irq_critical_section_counter, 4
 994              	cpu_irq_critical_section_counter:
 995 0000 00000000 		.space	4
 996              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 997              		.type	cpu_irq_prev_interrupt_state, %object
 998              		.size	cpu_irq_prev_interrupt_state, 1
 999              	cpu_irq_prev_interrupt_state:
 1000 0000 00       		.space	1
 1001              		.section	.bss.sd_mmc_spi_block_size,"aw",%nobits
 1002              		.align	1
 1003              		.set	.LANCHOR3,. + 0
 1004              		.type	sd_mmc_spi_block_size, %object
 1005              		.size	sd_mmc_spi_block_size, 2
 1006              	sd_mmc_spi_block_size:
 1007 0000 0000     		.space	2
 1008              		.section	.bss.sd_mmc_spi_devices,"aw",%nobits
 1009              		.align	2
 1010              		.set	.LANCHOR5,. + 0
 1011              		.type	sd_mmc_spi_devices, %object
 1012              		.size	sd_mmc_spi_devices, 8
 1013              	sd_mmc_spi_devices:
 1014 0000 00000000 		.space	8
 1014      00000000 
 1015              		.section	.bss.sd_mmc_spi_err,"aw",%nobits
 1016              		.set	.LANCHOR1,. + 0
 1017              		.type	sd_mmc_spi_err, %object
 1018              		.size	sd_mmc_spi_err, 1
 1019              	sd_mmc_spi_err:
 1020 0000 00       		.space	1
 1021              		.section	.bss.sd_mmc_spi_nb_block,"aw",%nobits
 1022              		.align	1
 1023              		.set	.LANCHOR0,. + 0
 1024              		.type	sd_mmc_spi_nb_block, %object
 1025              		.size	sd_mmc_spi_nb_block, 2
ARM GAS  /tmp/ccDdWu4c.s 			page 19


 1026              	sd_mmc_spi_nb_block:
 1027 0000 0000     		.space	2
 1028              		.section	.bss.sd_mmc_spi_response_32,"aw",%nobits
 1029              		.align	2
 1030              		.set	.LANCHOR6,. + 0
 1031              		.type	sd_mmc_spi_response_32, %object
 1032              		.size	sd_mmc_spi_response_32, 4
 1033              	sd_mmc_spi_response_32:
 1034 0000 00000000 		.space	4
 1035              		.section	.bss.sd_mmc_spi_transfert_pos,"aw",%nobits
 1036              		.align	2
 1037              		.set	.LANCHOR2,. + 0
 1038              		.type	sd_mmc_spi_transfert_pos, %object
 1039              		.size	sd_mmc_spi_transfert_pos, 4
 1040              	sd_mmc_spi_transfert_pos:
 1041 0000 00000000 		.space	4
 1042              		.section	.bss.spiIdleFunc,"aw",%nobits
 1043              		.align	2
 1044              		.set	.LANCHOR4,. + 0
 1045              		.type	spiIdleFunc, %object
 1046              		.size	spiIdleFunc, 4
 1047              	spiIdleFunc:
 1048 0000 00000000 		.space	4
 1049              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
