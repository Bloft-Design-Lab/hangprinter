ARM GAS  /tmp/ccAFkCCB.s 			page 1


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
ARM GAS  /tmp/ccAFkCCB.s 			page 2


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
ARM GAS  /tmp/ccAFkCCB.s 			page 3


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
ARM GAS  /tmp/ccAFkCCB.s 			page 4


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
ARM GAS  /tmp/ccAFkCCB.s 			page 5


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
ARM GAS  /tmp/ccAFkCCB.s 			page 6


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
 302 0004 20A10700 		.word	500000
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
ARM GAS  /tmp/ccAFkCCB.s 			page 7


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
 360 0000 70B5     		push	{r4, r5, r6, lr}
 361 0002 0025     		movs	r5, #0
 362 0004 0646     		mov	r6, r0
 363 0006 0A4C     		ldr	r4, .L61
 364 0008 0278     		ldrb	r2, [r0]	@ zero_extendqisi2
 365 000a 0A4B     		ldr	r3, .L61+4
 366 000c 2046     		mov	r0, r4
 367 000e 0821     		movs	r1, #8
 368 0010 1D70     		strb	r5, [r3]
 369 0012 2270     		strb	r2, [r4]
 370 0014 6570     		strb	r5, [r4, #1]
 371 0016 FFF7FEFF 		bl	sspi_master_init
 372 001a 7378     		ldrb	r3, [r6, #1]	@ zero_extendqisi2
 373 001c 04F10800 		add	r0, r4, #8
 374 0020 2372     		strb	r3, [r4, #8]
 375 0022 6572     		strb	r5, [r4, #9]
 376 0024 0821     		movs	r1, #8
 377 0026 BDE87040 		pop	{r4, r5, r6, lr}
 378 002a FFF7FEBF 		b	sspi_master_init
 379              	.L62:
 380 002e 00BF     		.align	2
 381              	.L61:
 382 0030 00000000 		.word	.LANCHOR5
 383 0034 00000000 		.word	.LANCHOR1
 384              		.size	sd_mmc_spi_init, .-sd_mmc_spi_init
 385              		.section	.text.sd_mmc_spi_select_device,"ax",%progbits
 386              		.align	1
 387              		.p2align 2,,3
 388              		.global	sd_mmc_spi_select_device
 389              		.syntax unified
 390              		.thumb
 391              		.thumb_func
 392              		.fpu softvfp
 393              		.type	sd_mmc_spi_select_device, %function
 394              	sd_mmc_spi_select_device:
 395              		@ args = 0, pretend = 0, frame = 0
 396              		@ frame_needed = 0, uses_anonymous_args = 0
 397 0000 0B4B     		ldr	r3, .L65
 398 0002 0022     		movs	r2, #0
 399 0004 9942     		cmp	r1, r3
ARM GAS  /tmp/ccAFkCCB.s 			page 8


 400 0006 28BF     		it	cs
 401 0008 1946     		movcs	r1, r3
 402 000a 10B5     		push	{r4, lr}
 403 000c 094C     		ldr	r4, .L65+4
 404 000e 0A4B     		ldr	r3, .L65+8
 405 0010 04EBC004 		add	r4, r4, r0, lsl #3
 406 0014 2046     		mov	r0, r4
 407 0016 6160     		str	r1, [r4, #4]
 408 0018 E270     		strb	r2, [r4, #3]
 409 001a 1A70     		strb	r2, [r3]
 410 001c FFF7FEFF 		bl	sspi_master_setup_device
 411 0020 2046     		mov	r0, r4
 412 0022 FFF7FEFF 		bl	sspi_select_device
 413 0026 1C23     		movs	r3, #28
 414              		.syntax unified
 415              	@ 83 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 416              		L_442_delayMicroseconds:
 417 0028 013B     		subs   r3, #1
 418 002a FDD1     		bne    L_442_delayMicroseconds
 419              	
 420              	@ 0 "" 2
 421              		.thumb
 422              		.syntax unified
 423 002c 10BD     		pop	{r4, pc}
 424              	.L66:
 425 002e 00BF     		.align	2
 426              	.L65:
 427 0030 00093D00 		.word	4000000
 428 0034 00000000 		.word	.LANCHOR5
 429 0038 00000000 		.word	.LANCHOR1
 430              		.size	sd_mmc_spi_select_device, .-sd_mmc_spi_select_device
 431              		.section	.text.sd_mmc_spi_deselect_device,"ax",%progbits
 432              		.align	1
 433              		.p2align 2,,3
 434              		.global	sd_mmc_spi_deselect_device
 435              		.syntax unified
 436              		.thumb
 437              		.thumb_func
 438              		.fpu softvfp
 439              		.type	sd_mmc_spi_deselect_device, %function
 440              	sd_mmc_spi_deselect_device:
 441              		@ args = 0, pretend = 0, frame = 0
 442              		@ frame_needed = 0, uses_anonymous_args = 0
 443 0000 0022     		movs	r2, #0
 444 0002 0649     		ldr	r1, .L69
 445 0004 08B5     		push	{r3, lr}
 446 0006 064B     		ldr	r3, .L69+4
 447 0008 01EBC000 		add	r0, r1, r0, lsl #3
 448 000c 1A70     		strb	r2, [r3]
 449 000e FFF7FEFF 		bl	sspi_deselect_device
 450 0012 1C23     		movs	r3, #28
 451              		.syntax unified
 452              	@ 83 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 453              		L_470_delayMicroseconds:
 454 0014 013B     		subs   r3, #1
 455 0016 FDD1     		bne    L_470_delayMicroseconds
 456              	
ARM GAS  /tmp/ccAFkCCB.s 			page 9


 457              	@ 0 "" 2
 458              		.thumb
 459              		.syntax unified
 460 0018 08BD     		pop	{r3, pc}
 461              	.L70:
 462 001a 00BF     		.align	2
 463              	.L69:
 464 001c 00000000 		.word	.LANCHOR5
 465 0020 00000000 		.word	.LANCHOR1
 466              		.size	sd_mmc_spi_deselect_device, .-sd_mmc_spi_deselect_device
 467              		.section	.text.sd_mmc_spi_send_clock,"ax",%progbits
 468              		.align	1
 469              		.p2align 2,,3
 470              		.global	sd_mmc_spi_send_clock
 471              		.syntax unified
 472              		.thumb
 473              		.thumb_func
 474              		.fpu softvfp
 475              		.type	sd_mmc_spi_send_clock, %function
 476              	sd_mmc_spi_send_clock:
 477              		@ args = 0, pretend = 0, frame = 8
 478              		@ frame_needed = 0, uses_anonymous_args = 0
 479 0000 FF21     		movs	r1, #255
 480 0002 0022     		movs	r2, #0
 481 0004 30B5     		push	{r4, r5, lr}
 482 0006 0A24     		movs	r4, #10
 483 0008 83B0     		sub	sp, sp, #12
 484 000a 084B     		ldr	r3, .L75
 485 000c 02AD     		add	r5, sp, #8
 486 000e 05F8011D 		strb	r1, [r5, #-1]!
 487 0012 1A70     		strb	r2, [r3]
 488              	.L72:
 489 0014 0122     		movs	r2, #1
 490 0016 0021     		movs	r1, #0
 491 0018 2846     		mov	r0, r5
 492 001a FFF7FEFF 		bl	sspi_transceive_packet
 493 001e 631E     		subs	r3, r4, #1
 494 0020 13F0FF04 		ands	r4, r3, #255
 495 0024 F6D1     		bne	.L72
 496 0026 03B0     		add	sp, sp, #12
 497              		@ sp needed
 498 0028 30BD     		pop	{r4, r5, pc}
 499              	.L76:
 500 002a 00BF     		.align	2
 501              	.L75:
 502 002c 00000000 		.word	.LANCHOR1
 503              		.size	sd_mmc_spi_send_clock, .-sd_mmc_spi_send_clock
 504              		.section	.text.sd_mmc_spi_adtc_start,"ax",%progbits
 505              		.align	1
 506              		.p2align 2,,3
 507              		.global	sd_mmc_spi_adtc_start
 508              		.syntax unified
 509              		.thumb
 510              		.thumb_func
 511              		.fpu softvfp
 512              		.type	sd_mmc_spi_adtc_start, %function
 513              	sd_mmc_spi_adtc_start:
ARM GAS  /tmp/ccAFkCCB.s 			page 10


 514              		@ args = 4, pretend = 0, frame = 16
 515              		@ frame_needed = 0, uses_anonymous_args = 0
 516 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 517 0004 0546     		mov	r5, r0
 518 0006 4FF0000E 		mov	lr, #0
 519 000a FF20     		movs	r0, #255
 520 000c 85B0     		sub	sp, sp, #20
 521 000e 0C0E     		lsrs	r4, r1, #24
 522 0010 8DF80940 		strb	r4, [sp, #9]
 523 0014 0C0C     		lsrs	r4, r1, #16
 524 0016 1746     		mov	r7, r2
 525 0018 8DF80A40 		strb	r4, [sp, #10]
 526 001c 05F03F02 		and	r2, r5, #63
 527 0020 4E4C     		ldr	r4, .L109
 528 0022 42F04002 		orr	r2, r2, #64
 529 0026 8DF80C10 		strb	r1, [sp, #12]
 530 002a 090A     		lsrs	r1, r1, #8
 531 002c 1E46     		mov	r6, r3
 532 002e 84F800E0 		strb	lr, [r4]
 533 0032 7346     		mov	r3, lr
 534 0034 8DF80820 		strb	r2, [sp, #8]
 535 0038 8DF80B10 		strb	r1, [sp, #11]
 536 003c 8DF80600 		strb	r0, [sp, #6]
 537 0040 0DF1090E 		add	lr, sp, #9
 538 0044 0DF10D0C 		add	ip, sp, #13
 539              	.L81:
 540 0048 4FF00808 		mov	r8, #8
 541              	.L79:
 542 004c 5B00     		lsls	r3, r3, #1
 543 004e DBB2     		uxtb	r3, r3
 544 0050 83EA0200 		eor	r0, r3, r2
 545 0054 10F0800F 		tst	r0, #128
 546 0058 08F1FF31 		add	r1, r8, #-1
 547 005c 4FEA4202 		lsl	r2, r2, #1
 548 0060 18BF     		it	ne
 549 0062 83F00903 		eorne	r3, r3, #9
 550 0066 11F0FF08 		ands	r8, r1, #255
 551 006a D2B2     		uxtb	r2, r2
 552 006c EED1     		bne	.L79
 553 006e F445     		cmp	ip, lr
 554 0070 02D0     		beq	.L80
 555 0072 1EF8012B 		ldrb	r2, [lr], #1	@ zero_extendqisi2
 556 0076 E7E7     		b	.L81
 557              	.L80:
 558 0078 5B00     		lsls	r3, r3, #1
 559 007a 43F00103 		orr	r3, r3, #1
 560 007e 4146     		mov	r1, r8
 561 0080 0122     		movs	r2, #1
 562 0082 0DF10600 		add	r0, sp, #6
 563 0086 8DF80D30 		strb	r3, [sp, #13]
 564 008a FFF7FEFF 		bl	sspi_transceive_packet
 565 008e 4146     		mov	r1, r8
 566 0090 0622     		movs	r2, #6
 567 0092 02A8     		add	r0, sp, #8
 568 0094 FFF7FEFF 		bl	sspi_transceive_packet
 569 0098 FF23     		movs	r3, #255
 570 009a 0DF11009 		add	r9, sp, #16
ARM GAS  /tmp/ccAFkCCB.s 			page 11


 571 009e 09F8093D 		strb	r3, [r9, #-9]!
 572 00a2 4046     		mov	r0, r8
 573 00a4 4946     		mov	r1, r9
 574 00a6 0122     		movs	r2, #1
 575 00a8 FFF7FEFF 		bl	sspi_transceive_packet
 576 00ac 4FF00708 		mov	r8, #7
 577              	.L83:
 578 00b0 0122     		movs	r2, #1
 579 00b2 4946     		mov	r1, r9
 580 00b4 0020     		movs	r0, #0
 581 00b6 FFF7FEFF 		bl	sspi_transceive_packet
 582 00ba 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 583 00be 08F1FF30 		add	r0, r8, #-1
 584 00c2 1A06     		lsls	r2, r3, #24
 585 00c4 08D5     		bpl	.L82
 586 00c6 10F0FF08 		ands	r8, r0, #255
 587 00ca F1D1     		bne	.L83
 588 00cc 0223     		movs	r3, #2
 589 00ce 4046     		mov	r0, r8
 590 00d0 2370     		strb	r3, [r4]
 591              	.L84:
 592 00d2 05B0     		add	sp, sp, #20
 593              		@ sp needed
 594 00d4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 595              	.L82:
 596 00d8 DFF89090 		ldr	r9, .L109+16
 597 00dc 13F00802 		ands	r2, r3, #8
 598 00e0 C9F80030 		str	r3, [r9]
 599 00e4 14D1     		bne	.L103
 600 00e6 13F00400 		ands	r0, r3, #4
 601 00ea 15D1     		bne	.L104
 602 00ec 13F0FE0F 		tst	r3, #254
 603 00f0 31D1     		bne	.L105
 604 00f2 A904     		lsls	r1, r5, #18
 605 00f4 14D4     		bmi	.L106
 606              	.L88:
 607 00f6 AA05     		lsls	r2, r5, #22
 608 00f8 24D4     		bmi	.L107
 609              	.L89:
 610 00fa 6B05     		lsls	r3, r5, #21
 611 00fc 17D4     		bmi	.L108
 612              	.L90:
 613 00fe 0024     		movs	r4, #0
 614 0100 1749     		ldr	r1, .L109+4
 615 0102 184A     		ldr	r2, .L109+8
 616 0104 184B     		ldr	r3, .L109+12
 617 0106 0120     		movs	r0, #1
 618 0108 0C60     		str	r4, [r1]
 619 010a 1780     		strh	r7, [r2]	@ movhi
 620 010c 1E80     		strh	r6, [r3]	@ movhi
 621 010e E0E7     		b	.L84
 622              	.L103:
 623 0110 0623     		movs	r3, #6
 624 0112 0020     		movs	r0, #0
 625 0114 2370     		strb	r3, [r4]
 626 0116 DCE7     		b	.L84
 627              	.L104:
ARM GAS  /tmp/ccAFkCCB.s 			page 12


 628 0118 0923     		movs	r3, #9
 629 011a 1046     		mov	r0, r2
 630 011c 2370     		strb	r3, [r4]
 631 011e D8E7     		b	.L84
 632              	.L106:
 633 0120 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 634 0124 0028     		cmp	r0, #0
 635 0126 E6D1     		bne	.L88
 636 0128 0323     		movs	r3, #3
 637 012a 2370     		strb	r3, [r4]
 638 012c D1E7     		b	.L84
 639              	.L108:
 640 012e 0422     		movs	r2, #4
 641 0130 0E49     		ldr	r1, .L109+16
 642 0132 0020     		movs	r0, #0
 643 0134 FFF7FEFF 		bl	sspi_transceive_packet
 644 0138 D9F80030 		ldr	r3, [r9]
 645 013c 1BBA     		rev	r3, r3
 646 013e C9F80030 		str	r3, [r9]
 647 0142 DCE7     		b	.L90
 648              	.L107:
 649 0144 0023     		movs	r3, #0
 650 0146 0122     		movs	r2, #1
 651 0148 1846     		mov	r0, r3
 652 014a 0849     		ldr	r1, .L109+16
 653 014c C9F80030 		str	r3, [r9]
 654 0150 FFF7FEFF 		bl	sspi_transceive_packet
 655 0154 D1E7     		b	.L89
 656              	.L105:
 657 0156 0123     		movs	r3, #1
 658 0158 2370     		strb	r3, [r4]
 659 015a BAE7     		b	.L84
 660              	.L110:
 661              		.align	2
 662              	.L109:
 663 015c 00000000 		.word	.LANCHOR1
 664 0160 00000000 		.word	.LANCHOR2
 665 0164 00000000 		.word	.LANCHOR3
 666 0168 00000000 		.word	.LANCHOR0
 667 016c 00000000 		.word	.LANCHOR6
 668              		.size	sd_mmc_spi_adtc_start, .-sd_mmc_spi_adtc_start
 669              		.section	.text.sd_mmc_spi_send_cmd,"ax",%progbits
 670              		.align	1
 671              		.p2align 2,,3
 672              		.global	sd_mmc_spi_send_cmd
 673              		.syntax unified
 674              		.thumb
 675              		.thumb_func
 676              		.fpu softvfp
 677              		.type	sd_mmc_spi_send_cmd, %function
 678              	sd_mmc_spi_send_cmd:
 679              		@ args = 0, pretend = 0, frame = 0
 680              		@ frame_needed = 0, uses_anonymous_args = 0
 681 0000 0023     		movs	r3, #0
 682 0002 00B5     		push	{lr}
 683 0004 83B0     		sub	sp, sp, #12
 684 0006 0093     		str	r3, [sp]
ARM GAS  /tmp/ccAFkCCB.s 			page 13


 685 0008 1A46     		mov	r2, r3
 686 000a FFF7FEFF 		bl	sd_mmc_spi_adtc_start
 687 000e 03B0     		add	sp, sp, #12
 688              		@ sp needed
 689 0010 5DF804FB 		ldr	pc, [sp], #4
 690              		.size	sd_mmc_spi_send_cmd, .-sd_mmc_spi_send_cmd
 691              		.section	.text.sd_mmc_spi_get_response,"ax",%progbits
 692              		.align	1
 693              		.p2align 2,,3
 694              		.global	sd_mmc_spi_get_response
 695              		.syntax unified
 696              		.thumb
 697              		.thumb_func
 698              		.fpu softvfp
 699              		.type	sd_mmc_spi_get_response, %function
 700              	sd_mmc_spi_get_response:
 701              		@ args = 0, pretend = 0, frame = 0
 702              		@ frame_needed = 0, uses_anonymous_args = 0
 703              		@ link register save eliminated.
 704 0000 014B     		ldr	r3, .L114
 705 0002 1868     		ldr	r0, [r3]
 706 0004 7047     		bx	lr
 707              	.L115:
 708 0006 00BF     		.align	2
 709              	.L114:
 710 0008 00000000 		.word	.LANCHOR6
 711              		.size	sd_mmc_spi_get_response, .-sd_mmc_spi_get_response
 712              		.section	.text.sd_mmc_spi_read_word,"ax",%progbits
 713              		.align	1
 714              		.p2align 2,,3
 715              		.global	sd_mmc_spi_read_word
 716              		.syntax unified
 717              		.thumb
 718              		.thumb_func
 719              		.fpu softvfp
 720              		.type	sd_mmc_spi_read_word, %function
 721              	sd_mmc_spi_read_word:
 722              		@ args = 0, pretend = 0, frame = 8
 723              		@ frame_needed = 0, uses_anonymous_args = 0
 724 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 725 0002 134C     		ldr	r4, .L124
 726 0004 134D     		ldr	r5, .L124+4
 727 0006 2168     		ldr	r1, [r4]
 728 0008 2A88     		ldrh	r2, [r5]
 729 000a 0026     		movs	r6, #0
 730 000c B1FBF2F3 		udiv	r3, r1, r2
 731 0010 02FB1313 		mls	r3, r2, r3, r1
 732 0014 104A     		ldr	r2, .L124+8
 733 0016 83B0     		sub	sp, sp, #12
 734 0018 0746     		mov	r7, r0
 735 001a 1670     		strb	r6, [r2]
 736 001c 13B9     		cbnz	r3, .L120
 737 001e FFF7FEFF 		bl	sd_mmc_spi_start_read_block
 738 0022 70B1     		cbz	r0, .L119
 739              	.L120:
 740 0024 0422     		movs	r2, #4
 741 0026 3946     		mov	r1, r7
ARM GAS  /tmp/ccAFkCCB.s 			page 14


 742 0028 0020     		movs	r0, #0
 743 002a FFF7FEFF 		bl	sspi_transceive_packet
 744 002e 2368     		ldr	r3, [r4]
 745 0030 2A88     		ldrh	r2, [r5]
 746 0032 0433     		adds	r3, r3, #4
 747 0034 B3FBF2F0 		udiv	r0, r3, r2
 748 0038 02FB1030 		mls	r0, r2, r0, r3
 749 003c 2360     		str	r3, [r4]
 750 003e 10B1     		cbz	r0, .L123
 751              	.L122:
 752 0040 0120     		movs	r0, #1
 753              	.L119:
 754 0042 03B0     		add	sp, sp, #12
 755              		@ sp needed
 756 0044 F0BD     		pop	{r4, r5, r6, r7, pc}
 757              	.L123:
 758 0046 0222     		movs	r2, #2
 759 0048 01A9     		add	r1, sp, #4
 760 004a FFF7FEFF 		bl	sspi_transceive_packet
 761 004e F7E7     		b	.L122
 762              	.L125:
 763              		.align	2
 764              	.L124:
 765 0050 00000000 		.word	.LANCHOR2
 766 0054 00000000 		.word	.LANCHOR3
 767 0058 00000000 		.word	.LANCHOR1
 768              		.size	sd_mmc_spi_read_word, .-sd_mmc_spi_read_word
 769              		.section	.text.sd_mmc_spi_write_word,"ax",%progbits
 770              		.align	1
 771              		.p2align 2,,3
 772              		.global	sd_mmc_spi_write_word
 773              		.syntax unified
 774              		.thumb
 775              		.thumb_func
 776              		.fpu softvfp
 777              		.type	sd_mmc_spi_write_word, %function
 778              	sd_mmc_spi_write_word:
 779              		@ args = 0, pretend = 0, frame = 8
 780              		@ frame_needed = 0, uses_anonymous_args = 0
 781 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 782 0002 184C     		ldr	r4, .L136
 783 0004 184E     		ldr	r6, .L136+4
 784 0006 2168     		ldr	r1, [r4]
 785 0008 3288     		ldrh	r2, [r6]
 786 000a 0027     		movs	r7, #0
 787 000c B1FBF2F3 		udiv	r3, r1, r2
 788 0010 02FB1313 		mls	r3, r2, r3, r1
 789 0014 154D     		ldr	r5, .L136+8
 790 0016 83B0     		sub	sp, sp, #12
 791 0018 0190     		str	r0, [sp, #4]
 792 001a 2F70     		strb	r7, [r5]
 793 001c BBB1     		cbz	r3, .L134
 794              	.L127:
 795 001e 0422     		movs	r2, #4
 796 0020 0021     		movs	r1, #0
 797 0022 0DEB0200 		add	r0, sp, r2
 798 0026 FFF7FEFF 		bl	sspi_transceive_packet
ARM GAS  /tmp/ccAFkCCB.s 			page 15


 799 002a 2368     		ldr	r3, [r4]
 800 002c 3188     		ldrh	r1, [r6]
 801 002e 0433     		adds	r3, r3, #4
 802 0030 B3FBF1F2 		udiv	r2, r3, r1
 803 0034 01FB1232 		mls	r2, r1, r2, r3
 804 0038 2360     		str	r3, [r4]
 805 003a 22B9     		cbnz	r2, .L128
 806 003c FFF7FEFF 		bl	sd_mmc_spi_stop_write_block
 807 0040 40B9     		cbnz	r0, .L135
 808              	.L129:
 809 0042 03B0     		add	sp, sp, #12
 810              		@ sp needed
 811 0044 F0BD     		pop	{r4, r5, r6, r7, pc}
 812              	.L128:
 813 0046 FFF7FEFF 		bl	sd_mmc_spi_stop_multiwrite_block
 814 004a 03B0     		add	sp, sp, #12
 815              		@ sp needed
 816 004c F0BD     		pop	{r4, r5, r6, r7, pc}
 817              	.L134:
 818 004e FFF7FEFF 		bl	sd_mmc_spi_start_write_block
 819 0052 E4E7     		b	.L127
 820              	.L135:
 821 0054 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 822 0058 0028     		cmp	r0, #0
 823 005a F4D1     		bne	.L128
 824 005c 0523     		movs	r3, #5
 825 005e 2B70     		strb	r3, [r5]
 826 0060 EFE7     		b	.L129
 827              	.L137:
 828 0062 00BF     		.align	2
 829              	.L136:
 830 0064 00000000 		.word	.LANCHOR2
 831 0068 00000000 		.word	.LANCHOR3
 832 006c 00000000 		.word	.LANCHOR1
 833              		.size	sd_mmc_spi_write_word, .-sd_mmc_spi_write_word
 834              		.section	.text.sd_mmc_spi_start_read_blocks,"ax",%progbits
 835              		.align	1
 836              		.p2align 2,,3
 837              		.global	sd_mmc_spi_start_read_blocks
 838              		.syntax unified
 839              		.thumb
 840              		.thumb_func
 841              		.fpu softvfp
 842              		.type	sd_mmc_spi_start_read_blocks, %function
 843              	sd_mmc_spi_start_read_blocks:
 844              		@ args = 0, pretend = 0, frame = 8
 845              		@ frame_needed = 0, uses_anonymous_args = 0
 846 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 847 0004 0025     		movs	r5, #0
 848 0006 174B     		ldr	r3, .L149
 849 0008 83B0     		sub	sp, sp, #12
 850 000a 1D70     		strb	r5, [r3]
 851 000c 29B3     		cbz	r1, .L142
 852 000e 4C1E     		subs	r4, r1, #1
 853 0010 A4B2     		uxth	r4, r4
 854 0012 8146     		mov	r9, r0
 855 0014 DFF85480 		ldr	r8, .L149+8
ARM GAS  /tmp/ccAFkCCB.s 			page 16


 856 0018 134F     		ldr	r7, .L149+4
 857 001a 15E0     		b	.L141
 858              	.L148:
 859 001c B8F80020 		ldrh	r2, [r8]
 860 0020 0020     		movs	r0, #0
 861 0022 FFF7FEFF 		bl	sspi_transceive_packet
 862 0026 B8F80060 		ldrh	r6, [r8]
 863 002a 3B68     		ldr	r3, [r7]
 864 002c 0222     		movs	r2, #2
 865 002e 3344     		add	r3, r3, r6
 866 0030 01A9     		add	r1, sp, #4
 867 0032 0020     		movs	r0, #0
 868 0034 3B60     		str	r3, [r7]
 869 0036 FFF7FEFF 		bl	sspi_transceive_packet
 870 003a 4FF6FF73 		movw	r3, #65535
 871 003e 013C     		subs	r4, r4, #1
 872 0040 A4B2     		uxth	r4, r4
 873 0042 9C42     		cmp	r4, r3
 874 0044 3544     		add	r5, r5, r6
 875 0046 08D0     		beq	.L142
 876              	.L141:
 877 0048 FFF7FEFF 		bl	sd_mmc_spi_start_read_block
 878 004c 09EB0501 		add	r1, r9, r5
 879 0050 0028     		cmp	r0, #0
 880 0052 E3D1     		bne	.L148
 881 0054 03B0     		add	sp, sp, #12
 882              		@ sp needed
 883 0056 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 884              	.L142:
 885 005a 0120     		movs	r0, #1
 886 005c 03B0     		add	sp, sp, #12
 887              		@ sp needed
 888 005e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 889              	.L150:
 890 0062 00BF     		.align	2
 891              	.L149:
 892 0064 00000000 		.word	.LANCHOR1
 893 0068 00000000 		.word	.LANCHOR2
 894 006c 00000000 		.word	.LANCHOR3
 895              		.size	sd_mmc_spi_start_read_blocks, .-sd_mmc_spi_start_read_blocks
 896              		.section	.text.sd_mmc_spi_wait_end_of_read_blocks,"ax",%progbits
 897              		.align	1
 898              		.p2align 2,,3
 899              		.global	sd_mmc_spi_wait_end_of_read_blocks
 900              		.syntax unified
 901              		.thumb
 902              		.thumb_func
 903              		.fpu softvfp
 904              		.type	sd_mmc_spi_wait_end_of_read_blocks, %function
 905              	sd_mmc_spi_wait_end_of_read_blocks:
 906              		@ args = 0, pretend = 0, frame = 0
 907              		@ frame_needed = 0, uses_anonymous_args = 0
 908              		@ link register save eliminated.
 909 0000 0120     		movs	r0, #1
 910 0002 7047     		bx	lr
 911              		.size	sd_mmc_spi_wait_end_of_read_blocks, .-sd_mmc_spi_wait_end_of_read_blocks
 912              		.section	.text.sd_mmc_spi_start_write_blocks,"ax",%progbits
ARM GAS  /tmp/ccAFkCCB.s 			page 17


 913              		.align	1
 914              		.p2align 2,,3
 915              		.global	sd_mmc_spi_start_write_blocks
 916              		.syntax unified
 917              		.thumb
 918              		.thumb_func
 919              		.fpu softvfp
 920              		.type	sd_mmc_spi_start_write_blocks, %function
 921              	sd_mmc_spi_start_write_blocks:
 922              		@ args = 0, pretend = 0, frame = 0
 923              		@ frame_needed = 0, uses_anonymous_args = 0
 924 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 925 0004 0024     		movs	r4, #0
 926 0006 8046     		mov	r8, r0
 927 0008 0D46     		mov	r5, r1
 928 000a DFF85890 		ldr	r9, .L163+8
 929 000e 134F     		ldr	r7, .L163
 930 0010 134E     		ldr	r6, .L163+4
 931 0012 89F80040 		strb	r4, [r9]
 932              	.L153:
 933 0016 8DB1     		cbz	r5, .L157
 934 0018 FFF7FEFF 		bl	sd_mmc_spi_start_write_block
 935 001c 3A88     		ldrh	r2, [r7]
 936 001e 08EB0400 		add	r0, r8, r4
 937 0022 0021     		movs	r1, #0
 938 0024 FFF7FEFF 		bl	sspi_transceive_packet
 939 0028 3A88     		ldrh	r2, [r7]
 940 002a 3368     		ldr	r3, [r6]
 941 002c 1444     		add	r4, r4, r2
 942 002e 1344     		add	r3, r3, r2
 943 0030 3360     		str	r3, [r6]
 944 0032 FFF7FEFF 		bl	sd_mmc_spi_stop_write_block
 945 0036 78B1     		cbz	r0, .L154
 946 0038 012D     		cmp	r5, #1
 947 003a 02D1     		bne	.L155
 948              	.L157:
 949 003c 0120     		movs	r0, #1
 950 003e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 951              	.L155:
 952 0042 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 953 0046 013D     		subs	r5, r5, #1
 954 0048 ADB2     		uxth	r5, r5
 955 004a 0028     		cmp	r0, #0
 956 004c E3D1     		bne	.L153
 957 004e 0523     		movs	r3, #5
 958 0050 89F80030 		strb	r3, [r9]
 959 0054 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 960              	.L154:
 961 0058 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 962              	.L164:
 963              		.align	2
 964              	.L163:
 965 005c 00000000 		.word	.LANCHOR3
 966 0060 00000000 		.word	.LANCHOR2
 967 0064 00000000 		.word	.LANCHOR1
 968              		.size	sd_mmc_spi_start_write_blocks, .-sd_mmc_spi_start_write_blocks
 969              		.section	.text.sd_mmc_spi_wait_end_of_write_blocks,"ax",%progbits
ARM GAS  /tmp/ccAFkCCB.s 			page 18


 970              		.align	1
 971              		.p2align 2,,3
 972              		.global	sd_mmc_spi_wait_end_of_write_blocks
 973              		.syntax unified
 974              		.thumb
 975              		.thumb_func
 976              		.fpu softvfp
 977              		.type	sd_mmc_spi_wait_end_of_write_blocks, %function
 978              	sd_mmc_spi_wait_end_of_write_blocks:
 979              		@ args = 0, pretend = 0, frame = 0
 980              		@ frame_needed = 0, uses_anonymous_args = 0
 981 0000 08B5     		push	{r3, lr}
 982 0002 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 983 0006 18B9     		cbnz	r0, .L166
 984 0008 0522     		movs	r2, #5
 985 000a 034B     		ldr	r3, .L170
 986 000c 1A70     		strb	r2, [r3]
 987 000e 08BD     		pop	{r3, pc}
 988              	.L166:
 989 0010 BDE80840 		pop	{r3, lr}
 990 0014 FFF7FEBF 		b	sd_mmc_spi_stop_multiwrite_block
 991              	.L171:
 992              		.align	2
 993              	.L170:
 994 0018 00000000 		.word	.LANCHOR1
 995              		.size	sd_mmc_spi_wait_end_of_write_blocks, .-sd_mmc_spi_wait_end_of_write_blocks
 996              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 997              		.align	2
 998              		.type	cpu_irq_critical_section_counter, %object
 999              		.size	cpu_irq_critical_section_counter, 4
 1000              	cpu_irq_critical_section_counter:
 1001 0000 00000000 		.space	4
 1002              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1003              		.type	cpu_irq_prev_interrupt_state, %object
 1004              		.size	cpu_irq_prev_interrupt_state, 1
 1005              	cpu_irq_prev_interrupt_state:
 1006 0000 00       		.space	1
 1007              		.section	.bss.sd_mmc_spi_block_size,"aw",%nobits
 1008              		.align	1
 1009              		.set	.LANCHOR3,. + 0
 1010              		.type	sd_mmc_spi_block_size, %object
 1011              		.size	sd_mmc_spi_block_size, 2
 1012              	sd_mmc_spi_block_size:
 1013 0000 0000     		.space	2
 1014              		.section	.bss.sd_mmc_spi_devices,"aw",%nobits
 1015              		.align	2
 1016              		.set	.LANCHOR5,. + 0
 1017              		.type	sd_mmc_spi_devices, %object
 1018              		.size	sd_mmc_spi_devices, 16
 1019              	sd_mmc_spi_devices:
 1020 0000 00000000 		.space	16
 1020      00000000 
 1020      00000000 
 1020      00000000 
 1021              		.section	.bss.sd_mmc_spi_err,"aw",%nobits
 1022              		.set	.LANCHOR1,. + 0
 1023              		.type	sd_mmc_spi_err, %object
ARM GAS  /tmp/ccAFkCCB.s 			page 19


 1024              		.size	sd_mmc_spi_err, 1
 1025              	sd_mmc_spi_err:
 1026 0000 00       		.space	1
 1027              		.section	.bss.sd_mmc_spi_nb_block,"aw",%nobits
 1028              		.align	1
 1029              		.set	.LANCHOR0,. + 0
 1030              		.type	sd_mmc_spi_nb_block, %object
 1031              		.size	sd_mmc_spi_nb_block, 2
 1032              	sd_mmc_spi_nb_block:
 1033 0000 0000     		.space	2
 1034              		.section	.bss.sd_mmc_spi_response_32,"aw",%nobits
 1035              		.align	2
 1036              		.set	.LANCHOR6,. + 0
 1037              		.type	sd_mmc_spi_response_32, %object
 1038              		.size	sd_mmc_spi_response_32, 4
 1039              	sd_mmc_spi_response_32:
 1040 0000 00000000 		.space	4
 1041              		.section	.bss.sd_mmc_spi_transfert_pos,"aw",%nobits
 1042              		.align	2
 1043              		.set	.LANCHOR2,. + 0
 1044              		.type	sd_mmc_spi_transfert_pos, %object
 1045              		.size	sd_mmc_spi_transfert_pos, 4
 1046              	sd_mmc_spi_transfert_pos:
 1047 0000 00000000 		.space	4
 1048              		.section	.bss.spiIdleFunc,"aw",%nobits
 1049              		.align	2
 1050              		.set	.LANCHOR4,. + 0
 1051              		.type	spiIdleFunc, %object
 1052              		.size	spiIdleFunc, 4
 1053              	spiIdleFunc:
 1054 0000 00000000 		.space	4
 1055              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
