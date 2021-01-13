ARM GAS  /tmp/cc3ZNkdW.s 			page 1


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
  13              		.file	"sd_mmc_spi.c"
  14              		.section	.text.sd_mmc_spi_start_write_block,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	sd_mmc_spi_start_write_block, %function
  22              	sd_mmc_spi_start_write_block:
  23              		@ args = 0, pretend = 0, frame = 8
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 00B5     		push	{lr}
  26 0002 83B0     		sub	sp, sp, #12
  27 0004 02A8     		add	r0, sp, #8
  28 0006 FF23     		movs	r3, #255
  29 0008 00F8023D 		strb	r3, [r0, #-2]!
  30 000c 0122     		movs	r2, #1
  31 000e 0021     		movs	r1, #0
  32 0010 FFF7FEFF 		bl	sspi_transceive_packet
  33 0014 084B     		ldr	r3, .L6
  34 0016 1B88     		ldrh	r3, [r3]
  35 0018 012B     		cmp	r3, #1
  36 001a 0CBF     		ite	eq
  37 001c FE23     		moveq	r3, #254
  38 001e FC23     		movne	r3, #252
  39 0020 0122     		movs	r2, #1
  40 0022 0021     		movs	r1, #0
  41 0024 0DF10700 		add	r0, sp, #7
  42 0028 8DF80730 		strb	r3, [sp, #7]
  43 002c FFF7FEFF 		bl	sspi_transceive_packet
  44 0030 03B0     		add	sp, sp, #12
  45              		@ sp needed
  46 0032 5DF804FB 		ldr	pc, [sp], #4
  47              	.L7:
  48 0036 00BF     		.align	2
  49              	.L6:
  50 0038 00000000 		.word	.LANCHOR0
  51              		.size	sd_mmc_spi_start_write_block, .-sd_mmc_spi_start_write_block
  52              		.section	.text.sd_mmc_spi_wait_busy,"ax",%progbits
  53              		.align	1
  54              		.p2align 2,,3
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  /tmp/cc3ZNkdW.s 			page 2


  58              		.fpu fpv4-sp-d16
  59              		.type	sd_mmc_spi_wait_busy, %function
  60              	sd_mmc_spi_wait_busy:
  61              		@ args = 0, pretend = 0, frame = 8
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63 0000 30B5     		push	{r4, r5, lr}
  64 0002 83B0     		sub	sp, sp, #12
  65 0004 02AD     		add	r5, sp, #8
  66 0006 FF23     		movs	r3, #255
  67 0008 05F8013D 		strb	r3, [r5, #-1]!
  68 000c 0122     		movs	r2, #1
  69 000e 2946     		mov	r1, r5
  70 0010 0020     		movs	r0, #0
  71 0012 FFF7FEFF 		bl	sspi_transceive_packet
  72 0016 2946     		mov	r1, r5
  73 0018 0122     		movs	r2, #1
  74 001a 0020     		movs	r0, #0
  75 001c FFF7FEFF 		bl	sspi_transceive_packet
  76 0020 2946     		mov	r1, r5
  77 0022 0122     		movs	r2, #1
  78 0024 0020     		movs	r0, #0
  79 0026 FFF7FEFF 		bl	sspi_transceive_packet
  80 002a 0A4C     		ldr	r4, .L14
  81 002c 03E0     		b	.L9
  82              	.L11:
  83 002e FFF7FEFF 		bl	sspi_transceive_packet
  84 0032 013C     		subs	r4, r4, #1
  85 0034 0BD0     		beq	.L12
  86              	.L9:
  87 0036 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
  88 003a FF2B     		cmp	r3, #255
  89 003c 4FF00102 		mov	r2, #1
  90 0040 2946     		mov	r1, r5
  91 0042 4FF00000 		mov	r0, #0
  92 0046 F2D1     		bne	.L11
  93 0048 1046     		mov	r0, r2
  94 004a 03B0     		add	sp, sp, #12
  95              		@ sp needed
  96 004c 30BD     		pop	{r4, r5, pc}
  97              	.L12:
  98 004e 2046     		mov	r0, r4
  99 0050 03B0     		add	sp, sp, #12
 100              		@ sp needed
 101 0052 30BD     		pop	{r4, r5, pc}
 102              	.L15:
 103              		.align	2
 104              	.L14:
 105 0054 400D0300 		.word	200000
 106              		.size	sd_mmc_spi_wait_busy, .-sd_mmc_spi_wait_busy
 107              		.section	.text.sd_mmc_spi_start_read_block,"ax",%progbits
 108              		.align	1
 109              		.p2align 2,,3
 110              		.syntax unified
 111              		.thumb
 112              		.thumb_func
 113              		.fpu fpv4-sp-d16
 114              		.type	sd_mmc_spi_start_read_block, %function
ARM GAS  /tmp/cc3ZNkdW.s 			page 3


 115              	sd_mmc_spi_start_read_block:
 116              		@ args = 0, pretend = 0, frame = 8
 117              		@ frame_needed = 0, uses_anonymous_args = 0
 118 0000 30B5     		push	{r4, r5, lr}
 119 0002 83B0     		sub	sp, sp, #12
 120 0004 02AD     		add	r5, sp, #8
 121 0006 0023     		movs	r3, #0
 122 0008 05F8013D 		strb	r3, [r5, #-1]!
 123 000c 124C     		ldr	r4, .L26
 124 000e 03E0     		b	.L17
 125              	.L19:
 126 0010 FE2B     		cmp	r3, #254
 127 0012 14D0     		beq	.L24
 128 0014 013C     		subs	r4, r4, #1
 129 0016 19D0     		beq	.L25
 130              	.L17:
 131 0018 0122     		movs	r2, #1
 132 001a 2946     		mov	r1, r5
 133 001c 0020     		movs	r0, #0
 134 001e FFF7FEFF 		bl	sspi_transceive_packet
 135 0022 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 136 0026 13F0F002 		ands	r2, r3, #240
 137 002a F1D1     		bne	.L19
 138 002c 13F00700 		ands	r0, r3, #7
 139 0030 0A4B     		ldr	r3, .L26+4
 140 0032 07D0     		beq	.L20
 141 0034 0721     		movs	r1, #7
 142 0036 1046     		mov	r0, r2
 143 0038 1970     		strb	r1, [r3]
 144 003a 03B0     		add	sp, sp, #12
 145              		@ sp needed
 146 003c 30BD     		pop	{r4, r5, pc}
 147              	.L24:
 148 003e 0120     		movs	r0, #1
 149 0040 03B0     		add	sp, sp, #12
 150              		@ sp needed
 151 0042 30BD     		pop	{r4, r5, pc}
 152              	.L20:
 153 0044 0B22     		movs	r2, #11
 154 0046 1A70     		strb	r2, [r3]
 155 0048 03B0     		add	sp, sp, #12
 156              		@ sp needed
 157 004a 30BD     		pop	{r4, r5, pc}
 158              	.L25:
 159 004c 034B     		ldr	r3, .L26+4
 160 004e 0422     		movs	r2, #4
 161 0050 2046     		mov	r0, r4
 162 0052 1A70     		strb	r2, [r3]
 163 0054 03B0     		add	sp, sp, #12
 164              		@ sp needed
 165 0056 30BD     		pop	{r4, r5, pc}
 166              	.L27:
 167              		.align	2
 168              	.L26:
 169 0058 20A10700 		.word	500000
 170 005c 00000000 		.word	.LANCHOR1
 171              		.size	sd_mmc_spi_start_read_block, .-sd_mmc_spi_start_read_block
ARM GAS  /tmp/cc3ZNkdW.s 			page 4


 172              		.section	.text.sd_mmc_spi_stop_write_block,"ax",%progbits
 173              		.align	1
 174              		.p2align 2,,3
 175              		.syntax unified
 176              		.thumb
 177              		.thumb_func
 178              		.fpu fpv4-sp-d16
 179              		.type	sd_mmc_spi_stop_write_block, %function
 180              	sd_mmc_spi_stop_write_block:
 181              		@ args = 0, pretend = 0, frame = 8
 182              		@ frame_needed = 0, uses_anonymous_args = 0
 183 0000 00B5     		push	{lr}
 184 0002 83B0     		sub	sp, sp, #12
 185 0004 02A8     		add	r0, sp, #8
 186 0006 4FF6FF73 		movw	r3, #65535
 187 000a 20F8023D 		strh	r3, [r0, #-2]!	@ movhi
 188 000e 0222     		movs	r2, #2
 189 0010 0021     		movs	r1, #0
 190 0012 FFF7FEFF 		bl	sspi_transceive_packet
 191 0016 0122     		movs	r2, #1
 192 0018 0DF10501 		add	r1, sp, #5
 193 001c 0020     		movs	r0, #0
 194 001e FFF7FEFF 		bl	sspi_transceive_packet
 195 0022 9DF80530 		ldrb	r3, [sp, #5]	@ zero_extendqisi2
 196 0026 03F01100 		and	r0, r3, #17
 197 002a 0128     		cmp	r0, #1
 198 002c 06D0     		beq	.L29
 199 002e 0A4B     		ldr	r3, .L36
 200 0030 0122     		movs	r2, #1
 201 0032 1A70     		strb	r2, [r3]
 202 0034 0020     		movs	r0, #0
 203              	.L30:
 204 0036 03B0     		add	sp, sp, #12
 205              		@ sp needed
 206 0038 5DF804FB 		ldr	pc, [sp], #4
 207              	.L29:
 208 003c 03F01E03 		and	r3, r3, #30
 209 0040 042B     		cmp	r3, #4
 210 0042 F8D0     		beq	.L30
 211 0044 0A2B     		cmp	r3, #10
 212 0046 044B     		ldr	r3, .L36
 213 0048 0CBF     		ite	eq
 214 004a 0822     		moveq	r2, #8
 215 004c 0A22     		movne	r2, #10
 216 004e 0020     		movs	r0, #0
 217 0050 1A70     		strb	r2, [r3]
 218 0052 03B0     		add	sp, sp, #12
 219              		@ sp needed
 220 0054 5DF804FB 		ldr	pc, [sp], #4
 221              	.L37:
 222              		.align	2
 223              	.L36:
 224 0058 00000000 		.word	.LANCHOR1
 225              		.size	sd_mmc_spi_stop_write_block, .-sd_mmc_spi_stop_write_block
 226              		.section	.text.sd_mmc_spi_stop_multiwrite_block,"ax",%progbits
 227              		.align	1
 228              		.p2align 2,,3
ARM GAS  /tmp/cc3ZNkdW.s 			page 5


 229              		.syntax unified
 230              		.thumb
 231              		.thumb_func
 232              		.fpu fpv4-sp-d16
 233              		.type	sd_mmc_spi_stop_multiwrite_block, %function
 234              	sd_mmc_spi_stop_multiwrite_block:
 235              		@ args = 0, pretend = 0, frame = 8
 236              		@ frame_needed = 0, uses_anonymous_args = 0
 237 0000 144B     		ldr	r3, .L48
 238 0002 1888     		ldrh	r0, [r3]
 239 0004 0128     		cmp	r0, #1
 240 0006 09D0     		beq	.L44
 241 0008 134B     		ldr	r3, .L48+4
 242 000a 144A     		ldr	r2, .L48+8
 243 000c 1B68     		ldr	r3, [r3]
 244 000e 1288     		ldrh	r2, [r2]
 245 0010 B3FBF2F3 		udiv	r3, r3, r2
 246 0014 9842     		cmp	r0, r3
 247 0016 02D9     		bls	.L47
 248 0018 0120     		movs	r0, #1
 249 001a 7047     		bx	lr
 250              	.L44:
 251 001c 7047     		bx	lr
 252              	.L47:
 253 001e 10B5     		push	{r4, lr}
 254 0020 82B0     		sub	sp, sp, #8
 255 0022 02AC     		add	r4, sp, #8
 256 0024 FF23     		movs	r3, #255
 257 0026 04F8013D 		strb	r3, [r4, #-1]!
 258 002a 0122     		movs	r2, #1
 259 002c 0021     		movs	r1, #0
 260 002e 2046     		mov	r0, r4
 261 0030 FFF7FEFF 		bl	sspi_transceive_packet
 262 0034 FD23     		movs	r3, #253
 263 0036 0122     		movs	r2, #1
 264 0038 0021     		movs	r1, #0
 265 003a 2046     		mov	r0, r4
 266 003c 8DF80730 		strb	r3, [sp, #7]
 267 0040 FFF7FEFF 		bl	sspi_transceive_packet
 268 0044 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 269 0048 10B9     		cbnz	r0, .L39
 270 004a 054B     		ldr	r3, .L48+12
 271 004c 0522     		movs	r2, #5
 272 004e 1A70     		strb	r2, [r3]
 273              	.L39:
 274 0050 02B0     		add	sp, sp, #8
 275              		@ sp needed
 276 0052 10BD     		pop	{r4, pc}
 277              	.L49:
 278              		.align	2
 279              	.L48:
 280 0054 00000000 		.word	.LANCHOR0
 281 0058 00000000 		.word	.LANCHOR2
 282 005c 00000000 		.word	.LANCHOR3
 283 0060 00000000 		.word	.LANCHOR1
 284              		.size	sd_mmc_spi_stop_multiwrite_block, .-sd_mmc_spi_stop_multiwrite_block
 285              		.section	.text.spi_mmc_get_speed,"ax",%progbits
ARM GAS  /tmp/cc3ZNkdW.s 			page 6


 286              		.align	1
 287              		.p2align 2,,3
 288              		.global	spi_mmc_get_speed
 289              		.syntax unified
 290              		.thumb
 291              		.thumb_func
 292              		.fpu fpv4-sp-d16
 293              		.type	spi_mmc_get_speed, %function
 294              	spi_mmc_get_speed:
 295              		@ args = 0, pretend = 0, frame = 0
 296              		@ frame_needed = 0, uses_anonymous_args = 0
 297              		@ link register save eliminated.
 298 0000 0048     		ldr	r0, .L51
 299 0002 7047     		bx	lr
 300              	.L52:
 301              		.align	2
 302              	.L51:
 303 0004 20A10700 		.word	500000
 304              		.size	spi_mmc_get_speed, .-spi_mmc_get_speed
 305              		.section	.text.sd_mmc_spi_set_idle_func,"ax",%progbits
 306              		.align	1
 307              		.p2align 2,,3
 308              		.global	sd_mmc_spi_set_idle_func
 309              		.syntax unified
 310              		.thumb
 311              		.thumb_func
 312              		.fpu fpv4-sp-d16
 313              		.type	sd_mmc_spi_set_idle_func, %function
 314              	sd_mmc_spi_set_idle_func:
 315              		@ args = 0, pretend = 0, frame = 0
 316              		@ frame_needed = 0, uses_anonymous_args = 0
 317              		@ link register save eliminated.
 318 0000 024B     		ldr	r3, .L54
 319 0002 1A68     		ldr	r2, [r3]
 320 0004 1860     		str	r0, [r3]
 321 0006 1046     		mov	r0, r2
 322 0008 7047     		bx	lr
 323              	.L55:
 324 000a 00BF     		.align	2
 325              	.L54:
 326 000c 00000000 		.word	.LANCHOR4
 327              		.size	sd_mmc_spi_set_idle_func, .-sd_mmc_spi_set_idle_func
 328              		.section	.text.sd_mmc_spi_get_errno,"ax",%progbits
 329              		.align	1
 330              		.p2align 2,,3
 331              		.global	sd_mmc_spi_get_errno
 332              		.syntax unified
 333              		.thumb
 334              		.thumb_func
 335              		.fpu fpv4-sp-d16
 336              		.type	sd_mmc_spi_get_errno, %function
 337              	sd_mmc_spi_get_errno:
 338              		@ args = 0, pretend = 0, frame = 0
 339              		@ frame_needed = 0, uses_anonymous_args = 0
 340              		@ link register save eliminated.
 341 0000 014B     		ldr	r3, .L57
 342 0002 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
ARM GAS  /tmp/cc3ZNkdW.s 			page 7


 343 0004 7047     		bx	lr
 344              	.L58:
 345 0006 00BF     		.align	2
 346              	.L57:
 347 0008 00000000 		.word	.LANCHOR1
 348              		.size	sd_mmc_spi_get_errno, .-sd_mmc_spi_get_errno
 349              		.section	.text.sd_mmc_spi_init,"ax",%progbits
 350              		.align	1
 351              		.p2align 2,,3
 352              		.global	sd_mmc_spi_init
 353              		.syntax unified
 354              		.thumb
 355              		.thumb_func
 356              		.fpu fpv4-sp-d16
 357              		.type	sd_mmc_spi_init, %function
 358              	sd_mmc_spi_init:
 359              		@ args = 0, pretend = 0, frame = 0
 360              		@ frame_needed = 0, uses_anonymous_args = 0
 361              		@ link register save eliminated.
 362 0000 10B4     		push	{r4}
 363 0002 064B     		ldr	r3, .L61
 364 0004 0278     		ldrb	r2, [r0]	@ zero_extendqisi2
 365 0006 064C     		ldr	r4, .L61+4
 366 0008 1A70     		strb	r2, [r3]
 367 000a 0022     		movs	r2, #0
 368 000c 2270     		strb	r2, [r4]
 369 000e 1846     		mov	r0, r3
 370 0010 0821     		movs	r1, #8
 371 0012 5A70     		strb	r2, [r3, #1]
 372 0014 5DF8044B 		ldr	r4, [sp], #4
 373 0018 FFF7FEBF 		b	sspi_master_init
 374              	.L62:
 375              		.align	2
 376              	.L61:
 377 001c 00000000 		.word	.LANCHOR5
 378 0020 00000000 		.word	.LANCHOR1
 379              		.size	sd_mmc_spi_init, .-sd_mmc_spi_init
 380              		.section	.text.sd_mmc_spi_select_device,"ax",%progbits
 381              		.align	1
 382              		.p2align 2,,3
 383              		.global	sd_mmc_spi_select_device
 384              		.syntax unified
 385              		.thumb
 386              		.thumb_func
 387              		.fpu fpv4-sp-d16
 388              		.type	sd_mmc_spi_select_device, %function
 389              	sd_mmc_spi_select_device:
 390              		@ args = 0, pretend = 0, frame = 0
 391              		@ frame_needed = 0, uses_anonymous_args = 0
 392 0000 38B5     		push	{r3, r4, r5, lr}
 393 0002 0D4A     		ldr	r2, .L65
 394 0004 0D4B     		ldr	r3, .L65+4
 395 0006 0E4D     		ldr	r5, .L65+8
 396 0008 03EBC004 		add	r4, r3, r0, lsl #3
 397 000c 9142     		cmp	r1, r2
 398 000e 28BF     		it	cs
 399 0010 1146     		movcs	r1, r2
ARM GAS  /tmp/cc3ZNkdW.s 			page 8


 400 0012 0022     		movs	r2, #0
 401 0014 E270     		strb	r2, [r4, #3]
 402 0016 2046     		mov	r0, r4
 403 0018 6160     		str	r1, [r4, #4]
 404 001a 2A70     		strb	r2, [r5]
 405 001c FFF7FEFF 		bl	sspi_master_setup_device
 406 0020 2046     		mov	r0, r4
 407 0022 FFF7FEFF 		bl	sspi_select_device
 408 0026 074B     		ldr	r3, .L65+12
 409 0028 074A     		ldr	r2, .L65+16
 410 002a 1B68     		ldr	r3, [r3]
 411 002c A2FB0323 		umull	r2, r3, r2, r3
 412 0030 9B0C     		lsrs	r3, r3, #18
 413              		.syntax unified
 414              	@ 83 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 415              		L_439_delayMicroseconds:
 416 0032 013B     		subs   r3, #1
 417 0034 FDD1     		bne    L_439_delayMicroseconds
 418              	
 419              	@ 0 "" 2
 420              		.thumb
 421              		.syntax unified
 422 0036 38BD     		pop	{r3, r4, r5, pc}
 423              	.L66:
 424              		.align	2
 425              	.L65:
 426 0038 00093D00 		.word	4000000
 427 003c 00000000 		.word	.LANCHOR5
 428 0040 00000000 		.word	.LANCHOR1
 429 0044 00000000 		.word	SystemCoreClock
 430 0048 819F5E16 		.word	375299969
 431              		.size	sd_mmc_spi_select_device, .-sd_mmc_spi_select_device
 432              		.section	.text.sd_mmc_spi_deselect_device,"ax",%progbits
 433              		.align	1
 434              		.p2align 2,,3
 435              		.global	sd_mmc_spi_deselect_device
 436              		.syntax unified
 437              		.thumb
 438              		.thumb_func
 439              		.fpu fpv4-sp-d16
 440              		.type	sd_mmc_spi_deselect_device, %function
 441              	sd_mmc_spi_deselect_device:
 442              		@ args = 0, pretend = 0, frame = 0
 443              		@ frame_needed = 0, uses_anonymous_args = 0
 444 0000 084A     		ldr	r2, .L69
 445 0002 08B5     		push	{r3, lr}
 446 0004 084B     		ldr	r3, .L69+4
 447 0006 02EBC000 		add	r0, r2, r0, lsl #3
 448 000a 0022     		movs	r2, #0
 449 000c 1A70     		strb	r2, [r3]
 450 000e FFF7FEFF 		bl	sspi_deselect_device
 451 0012 064B     		ldr	r3, .L69+8
 452 0014 064A     		ldr	r2, .L69+12
 453 0016 1B68     		ldr	r3, [r3]
 454 0018 A2FB0323 		umull	r2, r3, r2, r3
 455 001c 9B0C     		lsrs	r3, r3, #18
 456              		.syntax unified
ARM GAS  /tmp/cc3ZNkdW.s 			page 9


 457              	@ 83 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/wiring.h" 1
 458              		L_474_delayMicroseconds:
 459 001e 013B     		subs   r3, #1
 460 0020 FDD1     		bne    L_474_delayMicroseconds
 461              	
 462              	@ 0 "" 2
 463              		.thumb
 464              		.syntax unified
 465 0022 08BD     		pop	{r3, pc}
 466              	.L70:
 467              		.align	2
 468              	.L69:
 469 0024 00000000 		.word	.LANCHOR5
 470 0028 00000000 		.word	.LANCHOR1
 471 002c 00000000 		.word	SystemCoreClock
 472 0030 819F5E16 		.word	375299969
 473              		.size	sd_mmc_spi_deselect_device, .-sd_mmc_spi_deselect_device
 474              		.section	.text.sd_mmc_spi_send_clock,"ax",%progbits
 475              		.align	1
 476              		.p2align 2,,3
 477              		.global	sd_mmc_spi_send_clock
 478              		.syntax unified
 479              		.thumb
 480              		.thumb_func
 481              		.fpu fpv4-sp-d16
 482              		.type	sd_mmc_spi_send_clock, %function
 483              	sd_mmc_spi_send_clock:
 484              		@ args = 0, pretend = 0, frame = 8
 485              		@ frame_needed = 0, uses_anonymous_args = 0
 486 0000 30B5     		push	{r4, r5, lr}
 487 0002 83B0     		sub	sp, sp, #12
 488 0004 02AD     		add	r5, sp, #8
 489 0006 FF22     		movs	r2, #255
 490 0008 084B     		ldr	r3, .L75
 491 000a 05F8012D 		strb	r2, [r5, #-1]!
 492 000e 0022     		movs	r2, #0
 493 0010 1A70     		strb	r2, [r3]
 494 0012 0A24     		movs	r4, #10
 495              	.L72:
 496 0014 0122     		movs	r2, #1
 497 0016 0021     		movs	r1, #0
 498 0018 2846     		mov	r0, r5
 499 001a FFF7FEFF 		bl	sspi_transceive_packet
 500 001e 631E     		subs	r3, r4, #1
 501 0020 13F0FF04 		ands	r4, r3, #255
 502 0024 F6D1     		bne	.L72
 503 0026 03B0     		add	sp, sp, #12
 504              		@ sp needed
 505 0028 30BD     		pop	{r4, r5, pc}
 506              	.L76:
 507 002a 00BF     		.align	2
 508              	.L75:
 509 002c 00000000 		.word	.LANCHOR1
 510              		.size	sd_mmc_spi_send_clock, .-sd_mmc_spi_send_clock
 511              		.section	.text.sd_mmc_spi_adtc_start,"ax",%progbits
 512              		.align	1
 513              		.p2align 2,,3
ARM GAS  /tmp/cc3ZNkdW.s 			page 10


 514              		.global	sd_mmc_spi_adtc_start
 515              		.syntax unified
 516              		.thumb
 517              		.thumb_func
 518              		.fpu fpv4-sp-d16
 519              		.type	sd_mmc_spi_adtc_start, %function
 520              	sd_mmc_spi_adtc_start:
 521              		@ args = 4, pretend = 0, frame = 16
 522              		@ frame_needed = 0, uses_anonymous_args = 0
 523 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 524 0004 85B0     		sub	sp, sp, #20
 525 0006 0546     		mov	r5, r0
 526 0008 554C     		ldr	r4, .L109
 527 000a 8DF80C10 		strb	r1, [sp, #12]
 528 000e 00F03F00 		and	r0, r0, #63
 529 0012 4FEA112E 		lsr	lr, r1, #8
 530 0016 4FEA1168 		lsr	r8, r1, #24
 531 001a 4FEA114C 		lsr	ip, r1, #16
 532 001e 40F04000 		orr	r0, r0, #64
 533 0022 0021     		movs	r1, #0
 534 0024 1746     		mov	r7, r2
 535 0026 FF22     		movs	r2, #255
 536 0028 1E46     		mov	r6, r3
 537 002a 8DF80BE0 		strb	lr, [sp, #11]
 538 002e 2170     		strb	r1, [r4]
 539 0030 0B46     		mov	r3, r1
 540 0032 8DF80800 		strb	r0, [sp, #8]
 541 0036 8DF80980 		strb	r8, [sp, #9]
 542 003a 8DF80AC0 		strb	ip, [sp, #10]
 543 003e 8DF80620 		strb	r2, [sp, #6]
 544 0042 0DF10901 		add	r1, sp, #9
 545 0046 0DF10D0E 		add	lr, sp, #13
 546              	.L81:
 547 004a 4FF00808 		mov	r8, #8
 548              	.L79:
 549 004e 5B00     		lsls	r3, r3, #1
 550 0050 DBB2     		uxtb	r3, r3
 551 0052 83EA0002 		eor	r2, r3, r0
 552 0056 12F0800F 		tst	r2, #128
 553 005a 08F1FF38 		add	r8, r8, #-1
 554 005e 4FEA4000 		lsl	r0, r0, #1
 555 0062 18BF     		it	ne
 556 0064 83F00903 		eorne	r3, r3, #9
 557 0068 18F0FF08 		ands	r8, r8, #255
 558 006c C0B2     		uxtb	r0, r0
 559 006e EED1     		bne	.L79
 560 0070 8E45     		cmp	lr, r1
 561 0072 02D0     		beq	.L80
 562 0074 11F8010B 		ldrb	r0, [r1], #1	@ zero_extendqisi2
 563 0078 E7E7     		b	.L81
 564              	.L80:
 565 007a 5B00     		lsls	r3, r3, #1
 566 007c 43F00103 		orr	r3, r3, #1
 567 0080 4146     		mov	r1, r8
 568 0082 0122     		movs	r2, #1
 569 0084 0DF10600 		add	r0, sp, #6
 570 0088 8DF80D30 		strb	r3, [sp, #13]
ARM GAS  /tmp/cc3ZNkdW.s 			page 11


 571 008c 0DF11009 		add	r9, sp, #16
 572 0090 FFF7FEFF 		bl	sspi_transceive_packet
 573 0094 4146     		mov	r1, r8
 574 0096 0622     		movs	r2, #6
 575 0098 02A8     		add	r0, sp, #8
 576 009a FFF7FEFF 		bl	sspi_transceive_packet
 577 009e FF23     		movs	r3, #255
 578 00a0 09F8093D 		strb	r3, [r9, #-9]!
 579 00a4 4046     		mov	r0, r8
 580 00a6 4946     		mov	r1, r9
 581 00a8 0122     		movs	r2, #1
 582 00aa FFF7FEFF 		bl	sspi_transceive_packet
 583 00ae 4FF00708 		mov	r8, #7
 584              	.L83:
 585 00b2 0122     		movs	r2, #1
 586 00b4 4946     		mov	r1, r9
 587 00b6 0020     		movs	r0, #0
 588 00b8 FFF7FEFF 		bl	sspi_transceive_packet
 589 00bc 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 590 00c0 1A06     		lsls	r2, r3, #24
 591 00c2 08F1FF30 		add	r0, r8, #-1
 592 00c6 08D5     		bpl	.L82
 593 00c8 10F0FF08 		ands	r8, r0, #255
 594 00cc F1D1     		bne	.L83
 595 00ce 0223     		movs	r3, #2
 596 00d0 4046     		mov	r0, r8
 597 00d2 2370     		strb	r3, [r4]
 598              	.L84:
 599 00d4 05B0     		add	sp, sp, #20
 600              		@ sp needed
 601 00d6 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 602              	.L82:
 603 00da DFF89480 		ldr	r8, .L109+16
 604 00de 13F00802 		ands	r2, r3, #8
 605 00e2 C8F80030 		str	r3, [r8]
 606 00e6 14D1     		bne	.L103
 607 00e8 13F00400 		ands	r0, r3, #4
 608 00ec 15D1     		bne	.L104
 609 00ee 13F0FE0F 		tst	r3, #254
 610 00f2 31D1     		bne	.L105
 611 00f4 A904     		lsls	r1, r5, #18
 612 00f6 14D4     		bmi	.L106
 613              	.L88:
 614 00f8 AA05     		lsls	r2, r5, #22
 615 00fa 24D4     		bmi	.L107
 616              	.L89:
 617 00fc 6B05     		lsls	r3, r5, #21
 618 00fe 17D4     		bmi	.L108
 619              	.L90:
 620 0100 184A     		ldr	r2, .L109+4
 621 0102 1949     		ldr	r1, .L109+8
 622 0104 194B     		ldr	r3, .L109+12
 623 0106 1780     		strh	r7, [r2]	@ movhi
 624 0108 0022     		movs	r2, #0
 625 010a 0E80     		strh	r6, [r1]	@ movhi
 626 010c 1A60     		str	r2, [r3]
 627 010e 0120     		movs	r0, #1
ARM GAS  /tmp/cc3ZNkdW.s 			page 12


 628 0110 E0E7     		b	.L84
 629              	.L103:
 630 0112 0623     		movs	r3, #6
 631 0114 2370     		strb	r3, [r4]
 632 0116 0020     		movs	r0, #0
 633 0118 DCE7     		b	.L84
 634              	.L104:
 635 011a 0923     		movs	r3, #9
 636 011c 1046     		mov	r0, r2
 637 011e 2370     		strb	r3, [r4]
 638 0120 D8E7     		b	.L84
 639              	.L106:
 640 0122 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 641 0126 0028     		cmp	r0, #0
 642 0128 E6D1     		bne	.L88
 643 012a 0323     		movs	r3, #3
 644 012c 2370     		strb	r3, [r4]
 645 012e D1E7     		b	.L84
 646              	.L108:
 647 0130 0422     		movs	r2, #4
 648 0132 0F49     		ldr	r1, .L109+16
 649 0134 0020     		movs	r0, #0
 650 0136 FFF7FEFF 		bl	sspi_transceive_packet
 651 013a D8F80030 		ldr	r3, [r8]
 652 013e 1BBA     		rev	r3, r3
 653 0140 C8F80030 		str	r3, [r8]
 654 0144 DCE7     		b	.L90
 655              	.L107:
 656 0146 0023     		movs	r3, #0
 657 0148 1846     		mov	r0, r3
 658 014a 0122     		movs	r2, #1
 659 014c 0849     		ldr	r1, .L109+16
 660 014e C8F80030 		str	r3, [r8]
 661 0152 FFF7FEFF 		bl	sspi_transceive_packet
 662 0156 D1E7     		b	.L89
 663              	.L105:
 664 0158 0123     		movs	r3, #1
 665 015a 2370     		strb	r3, [r4]
 666 015c BAE7     		b	.L84
 667              	.L110:
 668 015e 00BF     		.align	2
 669              	.L109:
 670 0160 00000000 		.word	.LANCHOR1
 671 0164 00000000 		.word	.LANCHOR3
 672 0168 00000000 		.word	.LANCHOR0
 673 016c 00000000 		.word	.LANCHOR2
 674 0170 00000000 		.word	.LANCHOR6
 675              		.size	sd_mmc_spi_adtc_start, .-sd_mmc_spi_adtc_start
 676              		.section	.text.sd_mmc_spi_send_cmd,"ax",%progbits
 677              		.align	1
 678              		.p2align 2,,3
 679              		.global	sd_mmc_spi_send_cmd
 680              		.syntax unified
 681              		.thumb
 682              		.thumb_func
 683              		.fpu fpv4-sp-d16
 684              		.type	sd_mmc_spi_send_cmd, %function
ARM GAS  /tmp/cc3ZNkdW.s 			page 13


 685              	sd_mmc_spi_send_cmd:
 686              		@ args = 0, pretend = 0, frame = 0
 687              		@ frame_needed = 0, uses_anonymous_args = 0
 688 0000 00B5     		push	{lr}
 689 0002 83B0     		sub	sp, sp, #12
 690 0004 0023     		movs	r3, #0
 691 0006 0093     		str	r3, [sp]
 692 0008 1A46     		mov	r2, r3
 693 000a FFF7FEFF 		bl	sd_mmc_spi_adtc_start
 694 000e 03B0     		add	sp, sp, #12
 695              		@ sp needed
 696 0010 5DF804FB 		ldr	pc, [sp], #4
 697              		.size	sd_mmc_spi_send_cmd, .-sd_mmc_spi_send_cmd
 698              		.section	.text.sd_mmc_spi_get_response,"ax",%progbits
 699              		.align	1
 700              		.p2align 2,,3
 701              		.global	sd_mmc_spi_get_response
 702              		.syntax unified
 703              		.thumb
 704              		.thumb_func
 705              		.fpu fpv4-sp-d16
 706              		.type	sd_mmc_spi_get_response, %function
 707              	sd_mmc_spi_get_response:
 708              		@ args = 0, pretend = 0, frame = 0
 709              		@ frame_needed = 0, uses_anonymous_args = 0
 710              		@ link register save eliminated.
 711 0000 014B     		ldr	r3, .L114
 712 0002 1868     		ldr	r0, [r3]
 713 0004 7047     		bx	lr
 714              	.L115:
 715 0006 00BF     		.align	2
 716              	.L114:
 717 0008 00000000 		.word	.LANCHOR6
 718              		.size	sd_mmc_spi_get_response, .-sd_mmc_spi_get_response
 719              		.section	.text.sd_mmc_spi_read_word,"ax",%progbits
 720              		.align	1
 721              		.p2align 2,,3
 722              		.global	sd_mmc_spi_read_word
 723              		.syntax unified
 724              		.thumb
 725              		.thumb_func
 726              		.fpu fpv4-sp-d16
 727              		.type	sd_mmc_spi_read_word, %function
 728              	sd_mmc_spi_read_word:
 729              		@ args = 0, pretend = 0, frame = 8
 730              		@ frame_needed = 0, uses_anonymous_args = 0
 731 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 732 0002 134C     		ldr	r4, .L124
 733 0004 134D     		ldr	r5, .L124+4
 734 0006 2168     		ldr	r1, [r4]
 735 0008 2A88     		ldrh	r2, [r5]
 736 000a 134E     		ldr	r6, .L124+8
 737 000c B1FBF2F3 		udiv	r3, r1, r2
 738 0010 02FB1313 		mls	r3, r2, r3, r1
 739 0014 0022     		movs	r2, #0
 740 0016 83B0     		sub	sp, sp, #12
 741 0018 0746     		mov	r7, r0
ARM GAS  /tmp/cc3ZNkdW.s 			page 14


 742 001a 3270     		strb	r2, [r6]
 743 001c 13B9     		cbnz	r3, .L120
 744 001e FFF7FEFF 		bl	sd_mmc_spi_start_read_block
 745 0022 70B1     		cbz	r0, .L119
 746              	.L120:
 747 0024 0422     		movs	r2, #4
 748 0026 3946     		mov	r1, r7
 749 0028 0020     		movs	r0, #0
 750 002a FFF7FEFF 		bl	sspi_transceive_packet
 751 002e 2368     		ldr	r3, [r4]
 752 0030 2A88     		ldrh	r2, [r5]
 753 0032 0433     		adds	r3, r3, #4
 754 0034 B3FBF2F0 		udiv	r0, r3, r2
 755 0038 02FB1030 		mls	r0, r2, r0, r3
 756 003c 2360     		str	r3, [r4]
 757 003e 10B1     		cbz	r0, .L123
 758              	.L122:
 759 0040 0120     		movs	r0, #1
 760              	.L119:
 761 0042 03B0     		add	sp, sp, #12
 762              		@ sp needed
 763 0044 F0BD     		pop	{r4, r5, r6, r7, pc}
 764              	.L123:
 765 0046 0222     		movs	r2, #2
 766 0048 01A9     		add	r1, sp, #4
 767 004a FFF7FEFF 		bl	sspi_transceive_packet
 768 004e F7E7     		b	.L122
 769              	.L125:
 770              		.align	2
 771              	.L124:
 772 0050 00000000 		.word	.LANCHOR2
 773 0054 00000000 		.word	.LANCHOR3
 774 0058 00000000 		.word	.LANCHOR1
 775              		.size	sd_mmc_spi_read_word, .-sd_mmc_spi_read_word
 776              		.section	.text.sd_mmc_spi_write_word,"ax",%progbits
 777              		.align	1
 778              		.p2align 2,,3
 779              		.global	sd_mmc_spi_write_word
 780              		.syntax unified
 781              		.thumb
 782              		.thumb_func
 783              		.fpu fpv4-sp-d16
 784              		.type	sd_mmc_spi_write_word, %function
 785              	sd_mmc_spi_write_word:
 786              		@ args = 0, pretend = 0, frame = 8
 787              		@ frame_needed = 0, uses_anonymous_args = 0
 788 0000 70B5     		push	{r4, r5, r6, lr}
 789 0002 184C     		ldr	r4, .L136
 790 0004 184E     		ldr	r6, .L136+4
 791 0006 2168     		ldr	r1, [r4]
 792 0008 3288     		ldrh	r2, [r6]
 793 000a 184D     		ldr	r5, .L136+8
 794 000c B1FBF2F3 		udiv	r3, r1, r2
 795 0010 82B0     		sub	sp, sp, #8
 796 0012 02FB1313 		mls	r3, r2, r3, r1
 797 0016 0022     		movs	r2, #0
 798 0018 0190     		str	r0, [sp, #4]
ARM GAS  /tmp/cc3ZNkdW.s 			page 15


 799 001a 2A70     		strb	r2, [r5]
 800 001c BBB1     		cbz	r3, .L134
 801              	.L127:
 802 001e 0422     		movs	r2, #4
 803 0020 0021     		movs	r1, #0
 804 0022 0DEB0200 		add	r0, sp, r2
 805 0026 FFF7FEFF 		bl	sspi_transceive_packet
 806 002a 2368     		ldr	r3, [r4]
 807 002c 3188     		ldrh	r1, [r6]
 808 002e 0433     		adds	r3, r3, #4
 809 0030 B3FBF1F2 		udiv	r2, r3, r1
 810 0034 01FB1232 		mls	r2, r1, r2, r3
 811 0038 2360     		str	r3, [r4]
 812 003a 22B9     		cbnz	r2, .L128
 813 003c FFF7FEFF 		bl	sd_mmc_spi_stop_write_block
 814 0040 40B9     		cbnz	r0, .L135
 815              	.L129:
 816 0042 02B0     		add	sp, sp, #8
 817              		@ sp needed
 818 0044 70BD     		pop	{r4, r5, r6, pc}
 819              	.L128:
 820 0046 FFF7FEFF 		bl	sd_mmc_spi_stop_multiwrite_block
 821 004a 02B0     		add	sp, sp, #8
 822              		@ sp needed
 823 004c 70BD     		pop	{r4, r5, r6, pc}
 824              	.L134:
 825 004e FFF7FEFF 		bl	sd_mmc_spi_start_write_block
 826 0052 E4E7     		b	.L127
 827              	.L135:
 828 0054 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 829 0058 0028     		cmp	r0, #0
 830 005a F4D1     		bne	.L128
 831 005c 0523     		movs	r3, #5
 832 005e 2B70     		strb	r3, [r5]
 833 0060 EFE7     		b	.L129
 834              	.L137:
 835 0062 00BF     		.align	2
 836              	.L136:
 837 0064 00000000 		.word	.LANCHOR2
 838 0068 00000000 		.word	.LANCHOR3
 839 006c 00000000 		.word	.LANCHOR1
 840              		.size	sd_mmc_spi_write_word, .-sd_mmc_spi_write_word
 841              		.section	.text.sd_mmc_spi_start_read_blocks,"ax",%progbits
 842              		.align	1
 843              		.p2align 2,,3
 844              		.global	sd_mmc_spi_start_read_blocks
 845              		.syntax unified
 846              		.thumb
 847              		.thumb_func
 848              		.fpu fpv4-sp-d16
 849              		.type	sd_mmc_spi_start_read_blocks, %function
 850              	sd_mmc_spi_start_read_blocks:
 851              		@ args = 0, pretend = 0, frame = 8
 852              		@ frame_needed = 0, uses_anonymous_args = 0
 853 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 854 0004 174B     		ldr	r3, .L149
 855 0006 0025     		movs	r5, #0
ARM GAS  /tmp/cc3ZNkdW.s 			page 16


 856 0008 83B0     		sub	sp, sp, #12
 857 000a 1D70     		strb	r5, [r3]
 858 000c 29B3     		cbz	r1, .L142
 859 000e 4C1E     		subs	r4, r1, #1
 860 0010 A4B2     		uxth	r4, r4
 861 0012 8146     		mov	r9, r0
 862 0014 DFF85480 		ldr	r8, .L149+8
 863 0018 134F     		ldr	r7, .L149+4
 864 001a 15E0     		b	.L141
 865              	.L148:
 866 001c B8F80020 		ldrh	r2, [r8]
 867 0020 0020     		movs	r0, #0
 868 0022 FFF7FEFF 		bl	sspi_transceive_packet
 869 0026 B8F80060 		ldrh	r6, [r8]
 870 002a 3B68     		ldr	r3, [r7]
 871 002c 0222     		movs	r2, #2
 872 002e 3344     		add	r3, r3, r6
 873 0030 01A9     		add	r1, sp, #4
 874 0032 0020     		movs	r0, #0
 875 0034 013C     		subs	r4, r4, #1
 876 0036 3B60     		str	r3, [r7]
 877 0038 A4B2     		uxth	r4, r4
 878 003a FFF7FEFF 		bl	sspi_transceive_packet
 879 003e 4FF6FF73 		movw	r3, #65535
 880 0042 9C42     		cmp	r4, r3
 881 0044 3544     		add	r5, r5, r6
 882 0046 08D0     		beq	.L142
 883              	.L141:
 884 0048 FFF7FEFF 		bl	sd_mmc_spi_start_read_block
 885 004c 09EB0501 		add	r1, r9, r5
 886 0050 0028     		cmp	r0, #0
 887 0052 E3D1     		bne	.L148
 888 0054 03B0     		add	sp, sp, #12
 889              		@ sp needed
 890 0056 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 891              	.L142:
 892 005a 0120     		movs	r0, #1
 893 005c 03B0     		add	sp, sp, #12
 894              		@ sp needed
 895 005e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 896              	.L150:
 897 0062 00BF     		.align	2
 898              	.L149:
 899 0064 00000000 		.word	.LANCHOR1
 900 0068 00000000 		.word	.LANCHOR2
 901 006c 00000000 		.word	.LANCHOR3
 902              		.size	sd_mmc_spi_start_read_blocks, .-sd_mmc_spi_start_read_blocks
 903              		.section	.text.sd_mmc_spi_wait_end_of_read_blocks,"ax",%progbits
 904              		.align	1
 905              		.p2align 2,,3
 906              		.global	sd_mmc_spi_wait_end_of_read_blocks
 907              		.syntax unified
 908              		.thumb
 909              		.thumb_func
 910              		.fpu fpv4-sp-d16
 911              		.type	sd_mmc_spi_wait_end_of_read_blocks, %function
 912              	sd_mmc_spi_wait_end_of_read_blocks:
ARM GAS  /tmp/cc3ZNkdW.s 			page 17


 913              		@ args = 0, pretend = 0, frame = 0
 914              		@ frame_needed = 0, uses_anonymous_args = 0
 915              		@ link register save eliminated.
 916 0000 0120     		movs	r0, #1
 917 0002 7047     		bx	lr
 918              		.size	sd_mmc_spi_wait_end_of_read_blocks, .-sd_mmc_spi_wait_end_of_read_blocks
 919              		.section	.text.sd_mmc_spi_start_write_blocks,"ax",%progbits
 920              		.align	1
 921              		.p2align 2,,3
 922              		.global	sd_mmc_spi_start_write_blocks
 923              		.syntax unified
 924              		.thumb
 925              		.thumb_func
 926              		.fpu fpv4-sp-d16
 927              		.type	sd_mmc_spi_start_write_blocks, %function
 928              	sd_mmc_spi_start_write_blocks:
 929              		@ args = 0, pretend = 0, frame = 0
 930              		@ frame_needed = 0, uses_anonymous_args = 0
 931 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 932 0004 DFF85C90 		ldr	r9, .L163+8
 933 0008 144F     		ldr	r7, .L163
 934 000a 154E     		ldr	r6, .L163+4
 935 000c 0024     		movs	r4, #0
 936 000e 8046     		mov	r8, r0
 937 0010 0D46     		mov	r5, r1
 938 0012 89F80040 		strb	r4, [r9]
 939              	.L153:
 940 0016 8DB1     		cbz	r5, .L157
 941 0018 FFF7FEFF 		bl	sd_mmc_spi_start_write_block
 942 001c 3A88     		ldrh	r2, [r7]
 943 001e 08EB0400 		add	r0, r8, r4
 944 0022 0021     		movs	r1, #0
 945 0024 FFF7FEFF 		bl	sspi_transceive_packet
 946 0028 3A88     		ldrh	r2, [r7]
 947 002a 3368     		ldr	r3, [r6]
 948 002c 1344     		add	r3, r3, r2
 949 002e 1444     		add	r4, r4, r2
 950 0030 3360     		str	r3, [r6]
 951 0032 FFF7FEFF 		bl	sd_mmc_spi_stop_write_block
 952 0036 78B1     		cbz	r0, .L154
 953 0038 012D     		cmp	r5, #1
 954 003a 02D1     		bne	.L155
 955              	.L157:
 956 003c 0120     		movs	r0, #1
 957 003e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 958              	.L155:
 959 0042 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 960 0046 013D     		subs	r5, r5, #1
 961 0048 ADB2     		uxth	r5, r5
 962 004a 0028     		cmp	r0, #0
 963 004c E3D1     		bne	.L153
 964 004e 0523     		movs	r3, #5
 965 0050 89F80030 		strb	r3, [r9]
 966 0054 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 967              	.L154:
 968 0058 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 969              	.L164:
ARM GAS  /tmp/cc3ZNkdW.s 			page 18


 970              		.align	2
 971              	.L163:
 972 005c 00000000 		.word	.LANCHOR3
 973 0060 00000000 		.word	.LANCHOR2
 974 0064 00000000 		.word	.LANCHOR1
 975              		.size	sd_mmc_spi_start_write_blocks, .-sd_mmc_spi_start_write_blocks
 976              		.section	.text.sd_mmc_spi_wait_end_of_write_blocks,"ax",%progbits
 977              		.align	1
 978              		.p2align 2,,3
 979              		.global	sd_mmc_spi_wait_end_of_write_blocks
 980              		.syntax unified
 981              		.thumb
 982              		.thumb_func
 983              		.fpu fpv4-sp-d16
 984              		.type	sd_mmc_spi_wait_end_of_write_blocks, %function
 985              	sd_mmc_spi_wait_end_of_write_blocks:
 986              		@ args = 0, pretend = 0, frame = 0
 987              		@ frame_needed = 0, uses_anonymous_args = 0
 988 0000 08B5     		push	{r3, lr}
 989 0002 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 990 0006 18B9     		cbnz	r0, .L166
 991 0008 034B     		ldr	r3, .L170
 992 000a 0522     		movs	r2, #5
 993 000c 1A70     		strb	r2, [r3]
 994 000e 08BD     		pop	{r3, pc}
 995              	.L166:
 996 0010 BDE80840 		pop	{r3, lr}
 997 0014 FFF7FEBF 		b	sd_mmc_spi_stop_multiwrite_block
 998              	.L171:
 999              		.align	2
 1000              	.L170:
 1001 0018 00000000 		.word	.LANCHOR1
 1002              		.size	sd_mmc_spi_wait_end_of_write_blocks, .-sd_mmc_spi_wait_end_of_write_blocks
 1003              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1004              		.align	2
 1005              		.type	cpu_irq_critical_section_counter, %object
 1006              		.size	cpu_irq_critical_section_counter, 4
 1007              	cpu_irq_critical_section_counter:
 1008 0000 00000000 		.space	4
 1009              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1010              		.type	cpu_irq_prev_interrupt_state, %object
 1011              		.size	cpu_irq_prev_interrupt_state, 1
 1012              	cpu_irq_prev_interrupt_state:
 1013 0000 00       		.space	1
 1014              		.section	.bss.sd_mmc_spi_block_size,"aw",%nobits
 1015              		.align	1
 1016              		.set	.LANCHOR3,. + 0
 1017              		.type	sd_mmc_spi_block_size, %object
 1018              		.size	sd_mmc_spi_block_size, 2
 1019              	sd_mmc_spi_block_size:
 1020 0000 0000     		.space	2
 1021              		.section	.bss.sd_mmc_spi_devices,"aw",%nobits
 1022              		.align	2
 1023              		.set	.LANCHOR5,. + 0
 1024              		.type	sd_mmc_spi_devices, %object
 1025              		.size	sd_mmc_spi_devices, 8
 1026              	sd_mmc_spi_devices:
ARM GAS  /tmp/cc3ZNkdW.s 			page 19


 1027 0000 00000000 		.space	8
 1027      00000000 
 1028              		.section	.bss.sd_mmc_spi_err,"aw",%nobits
 1029              		.set	.LANCHOR1,. + 0
 1030              		.type	sd_mmc_spi_err, %object
 1031              		.size	sd_mmc_spi_err, 1
 1032              	sd_mmc_spi_err:
 1033 0000 00       		.space	1
 1034              		.section	.bss.sd_mmc_spi_nb_block,"aw",%nobits
 1035              		.align	1
 1036              		.set	.LANCHOR0,. + 0
 1037              		.type	sd_mmc_spi_nb_block, %object
 1038              		.size	sd_mmc_spi_nb_block, 2
 1039              	sd_mmc_spi_nb_block:
 1040 0000 0000     		.space	2
 1041              		.section	.bss.sd_mmc_spi_response_32,"aw",%nobits
 1042              		.align	2
 1043              		.set	.LANCHOR6,. + 0
 1044              		.type	sd_mmc_spi_response_32, %object
 1045              		.size	sd_mmc_spi_response_32, 4
 1046              	sd_mmc_spi_response_32:
 1047 0000 00000000 		.space	4
 1048              		.section	.bss.sd_mmc_spi_transfert_pos,"aw",%nobits
 1049              		.align	2
 1050              		.set	.LANCHOR2,. + 0
 1051              		.type	sd_mmc_spi_transfert_pos, %object
 1052              		.size	sd_mmc_spi_transfert_pos, 4
 1053              	sd_mmc_spi_transfert_pos:
 1054 0000 00000000 		.space	4
 1055              		.section	.bss.spiIdleFunc,"aw",%nobits
 1056              		.align	2
 1057              		.set	.LANCHOR4,. + 0
 1058              		.type	spiIdleFunc, %object
 1059              		.size	spiIdleFunc, 4
 1060              	spiIdleFunc:
 1061 0000 00000000 		.space	4
 1062              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
