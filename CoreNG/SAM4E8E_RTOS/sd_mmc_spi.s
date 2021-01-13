ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 1


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
  14              		.text
  15              		.section	.text.sd_mmc_spi_start_write_block,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	sd_mmc_spi_start_write_block, %function
  23              	sd_mmc_spi_start_write_block:
  24              		@ args = 0, pretend = 0, frame = 8
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 00B5     		push	{lr}
  27 0002 83B0     		sub	sp, sp, #12
  28 0004 02A8     		add	r0, sp, #8
  29 0006 FF23     		movs	r3, #255
  30 0008 00F8023D 		strb	r3, [r0, #-2]!
  31 000c 0122     		movs	r2, #1
  32 000e 0021     		movs	r1, #0
  33 0010 FFF7FEFF 		bl	sspi_transceive_packet
  34 0014 084B     		ldr	r3, .L6
  35 0016 1B88     		ldrh	r3, [r3]
  36 0018 012B     		cmp	r3, #1
  37 001a 0CBF     		ite	eq
  38 001c FE23     		moveq	r3, #254
  39 001e FC23     		movne	r3, #252
  40 0020 0122     		movs	r2, #1
  41 0022 0021     		movs	r1, #0
  42 0024 0DF10700 		add	r0, sp, #7
  43 0028 8DF80730 		strb	r3, [sp, #7]
  44 002c FFF7FEFF 		bl	sspi_transceive_packet
  45 0030 03B0     		add	sp, sp, #12
  46              		@ sp needed
  47 0032 5DF804FB 		ldr	pc, [sp], #4
  48              	.L7:
  49 0036 00BF     		.align	2
  50              	.L6:
  51 0038 00000000 		.word	.LANCHOR0
  52              		.size	sd_mmc_spi_start_write_block, .-sd_mmc_spi_start_write_block
  53              		.section	.text.sd_mmc_spi_wait_busy,"ax",%progbits
  54              		.align	1
  55              		.p2align 2,,3
  56              		.syntax unified
  57              		.thumb
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 2


  58              		.thumb_func
  59              		.fpu fpv4-sp-d16
  60              		.type	sd_mmc_spi_wait_busy, %function
  61              	sd_mmc_spi_wait_busy:
  62              		@ args = 0, pretend = 0, frame = 8
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64 0000 30B5     		push	{r4, r5, lr}
  65 0002 83B0     		sub	sp, sp, #12
  66 0004 02AD     		add	r5, sp, #8
  67 0006 FF23     		movs	r3, #255
  68 0008 05F8013D 		strb	r3, [r5, #-1]!
  69 000c 0122     		movs	r2, #1
  70 000e 2946     		mov	r1, r5
  71 0010 0020     		movs	r0, #0
  72 0012 FFF7FEFF 		bl	sspi_transceive_packet
  73 0016 2946     		mov	r1, r5
  74 0018 0122     		movs	r2, #1
  75 001a 0020     		movs	r0, #0
  76 001c FFF7FEFF 		bl	sspi_transceive_packet
  77 0020 2946     		mov	r1, r5
  78 0022 0122     		movs	r2, #1
  79 0024 0020     		movs	r0, #0
  80 0026 FFF7FEFF 		bl	sspi_transceive_packet
  81 002a 0A4C     		ldr	r4, .L14
  82 002c 03E0     		b	.L9
  83              	.L11:
  84 002e FFF7FEFF 		bl	sspi_transceive_packet
  85 0032 013C     		subs	r4, r4, #1
  86 0034 0BD0     		beq	.L12
  87              	.L9:
  88 0036 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
  89 003a FF2B     		cmp	r3, #255
  90 003c 4FF00102 		mov	r2, #1
  91 0040 2946     		mov	r1, r5
  92 0042 4FF00000 		mov	r0, #0
  93 0046 F2D1     		bne	.L11
  94 0048 1046     		mov	r0, r2
  95 004a 03B0     		add	sp, sp, #12
  96              		@ sp needed
  97 004c 30BD     		pop	{r4, r5, pc}
  98              	.L12:
  99 004e 2046     		mov	r0, r4
 100 0050 03B0     		add	sp, sp, #12
 101              		@ sp needed
 102 0052 30BD     		pop	{r4, r5, pc}
 103              	.L15:
 104              		.align	2
 105              	.L14:
 106 0054 400D0300 		.word	200000
 107              		.size	sd_mmc_spi_wait_busy, .-sd_mmc_spi_wait_busy
 108              		.section	.text.sd_mmc_spi_start_read_block,"ax",%progbits
 109              		.align	1
 110              		.p2align 2,,3
 111              		.syntax unified
 112              		.thumb
 113              		.thumb_func
 114              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 3


 115              		.type	sd_mmc_spi_start_read_block, %function
 116              	sd_mmc_spi_start_read_block:
 117              		@ args = 0, pretend = 0, frame = 8
 118              		@ frame_needed = 0, uses_anonymous_args = 0
 119 0000 30B5     		push	{r4, r5, lr}
 120 0002 83B0     		sub	sp, sp, #12
 121 0004 02AD     		add	r5, sp, #8
 122 0006 0023     		movs	r3, #0
 123 0008 05F8013D 		strb	r3, [r5, #-1]!
 124 000c 124C     		ldr	r4, .L26
 125 000e 03E0     		b	.L17
 126              	.L19:
 127 0010 FE2B     		cmp	r3, #254
 128 0012 14D0     		beq	.L24
 129 0014 013C     		subs	r4, r4, #1
 130 0016 19D0     		beq	.L25
 131              	.L17:
 132 0018 0122     		movs	r2, #1
 133 001a 2946     		mov	r1, r5
 134 001c 0020     		movs	r0, #0
 135 001e FFF7FEFF 		bl	sspi_transceive_packet
 136 0022 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 137 0026 13F0F002 		ands	r2, r3, #240
 138 002a F1D1     		bne	.L19
 139 002c 13F00700 		ands	r0, r3, #7
 140 0030 0A4B     		ldr	r3, .L26+4
 141 0032 07D0     		beq	.L20
 142 0034 0721     		movs	r1, #7
 143 0036 1046     		mov	r0, r2
 144 0038 1970     		strb	r1, [r3]
 145              	.L18:
 146 003a 03B0     		add	sp, sp, #12
 147              		@ sp needed
 148 003c 30BD     		pop	{r4, r5, pc}
 149              	.L24:
 150 003e 0120     		movs	r0, #1
 151 0040 03B0     		add	sp, sp, #12
 152              		@ sp needed
 153 0042 30BD     		pop	{r4, r5, pc}
 154              	.L20:
 155 0044 0B22     		movs	r2, #11
 156 0046 1A70     		strb	r2, [r3]
 157 0048 03B0     		add	sp, sp, #12
 158              		@ sp needed
 159 004a 30BD     		pop	{r4, r5, pc}
 160              	.L25:
 161 004c 034B     		ldr	r3, .L26+4
 162 004e 0422     		movs	r2, #4
 163 0050 2046     		mov	r0, r4
 164 0052 1A70     		strb	r2, [r3]
 165 0054 F1E7     		b	.L18
 166              	.L27:
 167 0056 00BF     		.align	2
 168              	.L26:
 169 0058 20A10700 		.word	500000
 170 005c 00000000 		.word	.LANCHOR1
 171              		.size	sd_mmc_spi_start_read_block, .-sd_mmc_spi_start_read_block
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 4


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
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 5


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
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 6


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
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 7


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
 362 0000 034A     		ldr	r2, .L60
 363 0002 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 364 0004 0349     		ldr	r1, .L60+4
 365 0006 1370     		strb	r3, [r2]
 366 0008 0023     		movs	r3, #0
 367 000a 5370     		strb	r3, [r2, #1]
 368 000c 0B70     		strb	r3, [r1]
 369 000e 7047     		bx	lr
 370              	.L61:
 371              		.align	2
 372              	.L60:
 373 0010 00000000 		.word	.LANCHOR5
 374 0014 00000000 		.word	.LANCHOR1
 375              		.size	sd_mmc_spi_init, .-sd_mmc_spi_init
 376              		.section	.text.sd_mmc_spi_select_device,"ax",%progbits
 377              		.align	1
 378              		.p2align 2,,3
 379              		.global	sd_mmc_spi_select_device
 380              		.syntax unified
 381              		.thumb
 382              		.thumb_func
 383              		.fpu fpv4-sp-d16
 384              		.type	sd_mmc_spi_select_device, %function
 385              	sd_mmc_spi_select_device:
 386              		@ args = 0, pretend = 0, frame = 0
 387              		@ frame_needed = 0, uses_anonymous_args = 0
 388 0000 38B5     		push	{r3, r4, r5, lr}
 389 0002 0D4A     		ldr	r2, .L64
 390 0004 0D4B     		ldr	r3, .L64+4
 391 0006 0E4D     		ldr	r5, .L64+8
 392 0008 03EBC004 		add	r4, r3, r0, lsl #3
 393 000c 9142     		cmp	r1, r2
 394 000e 28BF     		it	cs
 395 0010 1146     		movcs	r1, r2
 396 0012 0022     		movs	r2, #0
 397 0014 E270     		strb	r2, [r4, #3]
 398 0016 2046     		mov	r0, r4
 399 0018 6160     		str	r1, [r4, #4]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 8


 400 001a 2A70     		strb	r2, [r5]
 401 001c FFF7FEFF 		bl	sspi_master_setup_device
 402 0020 2046     		mov	r0, r4
 403 0022 FFF7FEFF 		bl	sspi_select_device
 404 0026 074B     		ldr	r3, .L64+12
 405 0028 074A     		ldr	r2, .L64+16
 406 002a 1B68     		ldr	r3, [r3]
 407 002c A2FB0323 		umull	r2, r3, r2, r3
 408 0030 9B0C     		lsrs	r3, r3, #18
 409              		.syntax unified
 410              	@ 83 "C:\eclipse\firmware\CoreNG\cores\arduino/wiring.h" 1
 411              		L_436_delayMicroseconds:
 412 0032 013B     		subs   r3, #1
 413 0034 FDD1     		bne    L_436_delayMicroseconds
 414              	
 415              	@ 0 "" 2
 416              		.thumb
 417              		.syntax unified
 418 0036 38BD     		pop	{r3, r4, r5, pc}
 419              	.L65:
 420              		.align	2
 421              	.L64:
 422 0038 00093D00 		.word	4000000
 423 003c 00000000 		.word	.LANCHOR5
 424 0040 00000000 		.word	.LANCHOR1
 425 0044 00000000 		.word	SystemCoreClock
 426 0048 819F5E16 		.word	375299969
 427              		.size	sd_mmc_spi_select_device, .-sd_mmc_spi_select_device
 428              		.section	.text.sd_mmc_spi_deselect_device,"ax",%progbits
 429              		.align	1
 430              		.p2align 2,,3
 431              		.global	sd_mmc_spi_deselect_device
 432              		.syntax unified
 433              		.thumb
 434              		.thumb_func
 435              		.fpu fpv4-sp-d16
 436              		.type	sd_mmc_spi_deselect_device, %function
 437              	sd_mmc_spi_deselect_device:
 438              		@ args = 0, pretend = 0, frame = 0
 439              		@ frame_needed = 0, uses_anonymous_args = 0
 440 0000 084A     		ldr	r2, .L68
 441 0002 08B5     		push	{r3, lr}
 442 0004 084B     		ldr	r3, .L68+4
 443 0006 02EBC000 		add	r0, r2, r0, lsl #3
 444 000a 0022     		movs	r2, #0
 445 000c 1A70     		strb	r2, [r3]
 446 000e FFF7FEFF 		bl	sspi_deselect_device
 447 0012 064B     		ldr	r3, .L68+8
 448 0014 064A     		ldr	r2, .L68+12
 449 0016 1B68     		ldr	r3, [r3]
 450 0018 A2FB0323 		umull	r2, r3, r2, r3
 451 001c 9B0C     		lsrs	r3, r3, #18
 452              		.syntax unified
 453              	@ 83 "C:\eclipse\firmware\CoreNG\cores\arduino/wiring.h" 1
 454              		L_472_delayMicroseconds:
 455 001e 013B     		subs   r3, #1
 456 0020 FDD1     		bne    L_472_delayMicroseconds
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 9


 457              	
 458              	@ 0 "" 2
 459              		.thumb
 460              		.syntax unified
 461 0022 08BD     		pop	{r3, pc}
 462              	.L69:
 463              		.align	2
 464              	.L68:
 465 0024 00000000 		.word	.LANCHOR5
 466 0028 00000000 		.word	.LANCHOR1
 467 002c 00000000 		.word	SystemCoreClock
 468 0030 819F5E16 		.word	375299969
 469              		.size	sd_mmc_spi_deselect_device, .-sd_mmc_spi_deselect_device
 470              		.section	.text.sd_mmc_spi_send_clock,"ax",%progbits
 471              		.align	1
 472              		.p2align 2,,3
 473              		.global	sd_mmc_spi_send_clock
 474              		.syntax unified
 475              		.thumb
 476              		.thumb_func
 477              		.fpu fpv4-sp-d16
 478              		.type	sd_mmc_spi_send_clock, %function
 479              	sd_mmc_spi_send_clock:
 480              		@ args = 0, pretend = 0, frame = 8
 481              		@ frame_needed = 0, uses_anonymous_args = 0
 482 0000 30B5     		push	{r4, r5, lr}
 483 0002 83B0     		sub	sp, sp, #12
 484 0004 02AD     		add	r5, sp, #8
 485 0006 FF22     		movs	r2, #255
 486 0008 084B     		ldr	r3, .L74
 487 000a 05F8012D 		strb	r2, [r5, #-1]!
 488 000e 0022     		movs	r2, #0
 489 0010 1A70     		strb	r2, [r3]
 490 0012 0A24     		movs	r4, #10
 491              	.L71:
 492 0014 0122     		movs	r2, #1
 493 0016 0021     		movs	r1, #0
 494 0018 2846     		mov	r0, r5
 495 001a FFF7FEFF 		bl	sspi_transceive_packet
 496 001e 631E     		subs	r3, r4, #1
 497 0020 13F0FF04 		ands	r4, r3, #255
 498 0024 F6D1     		bne	.L71
 499 0026 03B0     		add	sp, sp, #12
 500              		@ sp needed
 501 0028 30BD     		pop	{r4, r5, pc}
 502              	.L75:
 503 002a 00BF     		.align	2
 504              	.L74:
 505 002c 00000000 		.word	.LANCHOR1
 506              		.size	sd_mmc_spi_send_clock, .-sd_mmc_spi_send_clock
 507              		.section	.text.sd_mmc_spi_adtc_start,"ax",%progbits
 508              		.align	1
 509              		.p2align 2,,3
 510              		.global	sd_mmc_spi_adtc_start
 511              		.syntax unified
 512              		.thumb
 513              		.thumb_func
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 10


 514              		.fpu fpv4-sp-d16
 515              		.type	sd_mmc_spi_adtc_start, %function
 516              	sd_mmc_spi_adtc_start:
 517              		@ args = 4, pretend = 0, frame = 16
 518              		@ frame_needed = 0, uses_anonymous_args = 0
 519 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 520 0004 85B0     		sub	sp, sp, #20
 521 0006 0546     		mov	r5, r0
 522 0008 564C     		ldr	r4, .L108
 523 000a 8DF80C10 		strb	r1, [sp, #12]
 524 000e 00F03F00 		and	r0, r0, #63
 525 0012 4FEA112C 		lsr	ip, r1, #8
 526 0016 4FEA1168 		lsr	r8, r1, #24
 527 001a 4FEA114E 		lsr	lr, r1, #16
 528 001e 40F04000 		orr	r0, r0, #64
 529 0022 0021     		movs	r1, #0
 530 0024 1746     		mov	r7, r2
 531 0026 FF22     		movs	r2, #255
 532 0028 1E46     		mov	r6, r3
 533 002a 8DF80BC0 		strb	ip, [sp, #11]
 534 002e 2170     		strb	r1, [r4]
 535 0030 0B46     		mov	r3, r1
 536 0032 8DF80800 		strb	r0, [sp, #8]
 537 0036 8DF80980 		strb	r8, [sp, #9]
 538 003a 8DF80AE0 		strb	lr, [sp, #10]
 539 003e 8DF80620 		strb	r2, [sp, #6]
 540 0042 0DF10901 		add	r1, sp, #9
 541 0046 0DF10D0C 		add	ip, sp, #13
 542              	.L80:
 543 004a 4FF00808 		mov	r8, #8
 544              	.L78:
 545 004e 5B00     		lsls	r3, r3, #1
 546 0050 DBB2     		uxtb	r3, r3
 547 0052 83EA0002 		eor	r2, r3, r0
 548 0056 12F0800F 		tst	r2, #128
 549 005a 08F1FF38 		add	r8, r8, #-1
 550 005e 4FEA4000 		lsl	r0, r0, #1
 551 0062 18BF     		it	ne
 552 0064 83F00903 		eorne	r3, r3, #9
 553 0068 18F0FF08 		ands	r8, r8, #255
 554 006c C0B2     		uxtb	r0, r0
 555 006e EED1     		bne	.L78
 556 0070 8C45     		cmp	ip, r1
 557 0072 02D0     		beq	.L79
 558 0074 11F8010B 		ldrb	r0, [r1], #1	@ zero_extendqisi2
 559 0078 E7E7     		b	.L80
 560              	.L79:
 561 007a 5B00     		lsls	r3, r3, #1
 562 007c 43F00103 		orr	r3, r3, #1
 563 0080 4146     		mov	r1, r8
 564 0082 0122     		movs	r2, #1
 565 0084 0DF10600 		add	r0, sp, #6
 566 0088 8DF80D30 		strb	r3, [sp, #13]
 567 008c 0DF11009 		add	r9, sp, #16
 568 0090 FFF7FEFF 		bl	sspi_transceive_packet
 569 0094 4146     		mov	r1, r8
 570 0096 0622     		movs	r2, #6
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 11


 571 0098 02A8     		add	r0, sp, #8
 572 009a FFF7FEFF 		bl	sspi_transceive_packet
 573 009e FF23     		movs	r3, #255
 574 00a0 09F8093D 		strb	r3, [r9, #-9]!
 575 00a4 4046     		mov	r0, r8
 576 00a6 4946     		mov	r1, r9
 577 00a8 0122     		movs	r2, #1
 578 00aa FFF7FEFF 		bl	sspi_transceive_packet
 579 00ae 4FF00708 		mov	r8, #7
 580              	.L82:
 581 00b2 0122     		movs	r2, #1
 582 00b4 4946     		mov	r1, r9
 583 00b6 0020     		movs	r0, #0
 584 00b8 FFF7FEFF 		bl	sspi_transceive_packet
 585 00bc 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 586 00c0 1A06     		lsls	r2, r3, #24
 587 00c2 08F1FF30 		add	r0, r8, #-1
 588 00c6 08D5     		bpl	.L81
 589 00c8 10F0FF08 		ands	r8, r0, #255
 590 00cc F1D1     		bne	.L82
 591 00ce 0223     		movs	r3, #2
 592 00d0 4046     		mov	r0, r8
 593 00d2 2370     		strb	r3, [r4]
 594              	.L83:
 595 00d4 05B0     		add	sp, sp, #20
 596              		@ sp needed
 597 00d6 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 598              	.L81:
 599 00da DFF89880 		ldr	r8, .L108+16
 600 00de 13F00800 		ands	r0, r3, #8
 601 00e2 C8F80030 		str	r3, [r8]
 602 00e6 14D1     		bne	.L102
 603 00e8 13F00402 		ands	r2, r3, #4
 604 00ec 17D1     		bne	.L103
 605 00ee 13F0FE0F 		tst	r3, #254
 606 00f2 17D1     		bne	.L104
 607 00f4 A904     		lsls	r1, r5, #18
 608 00f6 2DD4     		bmi	.L105
 609              	.L87:
 610 00f8 AA05     		lsls	r2, r5, #22
 611 00fa 22D4     		bmi	.L106
 612              	.L88:
 613 00fc 6B05     		lsls	r3, r5, #21
 614 00fe 15D4     		bmi	.L107
 615              	.L89:
 616 0100 194A     		ldr	r2, .L108+4
 617 0102 1A49     		ldr	r1, .L108+8
 618 0104 1A4B     		ldr	r3, .L108+12
 619 0106 1780     		strh	r7, [r2]	@ movhi
 620 0108 0022     		movs	r2, #0
 621 010a 0E80     		strh	r6, [r1]	@ movhi
 622 010c 1A60     		str	r2, [r3]
 623 010e 0120     		movs	r0, #1
 624 0110 E0E7     		b	.L83
 625              	.L102:
 626 0112 0623     		movs	r3, #6
 627 0114 0020     		movs	r0, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 12


 628 0116 2370     		strb	r3, [r4]
 629 0118 05B0     		add	sp, sp, #20
 630              		@ sp needed
 631 011a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 632              	.L103:
 633 011e 0923     		movs	r3, #9
 634 0120 2370     		strb	r3, [r4]
 635 0122 D7E7     		b	.L83
 636              	.L104:
 637 0124 0123     		movs	r3, #1
 638 0126 1046     		mov	r0, r2
 639 0128 2370     		strb	r3, [r4]
 640 012a D3E7     		b	.L83
 641              	.L107:
 642 012c 0422     		movs	r2, #4
 643 012e 1149     		ldr	r1, .L108+16
 644 0130 0020     		movs	r0, #0
 645 0132 FFF7FEFF 		bl	sspi_transceive_packet
 646 0136 D8F80030 		ldr	r3, [r8]
 647 013a 1BBA     		rev	r3, r3
 648 013c C8F80030 		str	r3, [r8]
 649 0140 DEE7     		b	.L89
 650              	.L106:
 651 0142 0023     		movs	r3, #0
 652 0144 1846     		mov	r0, r3
 653 0146 0122     		movs	r2, #1
 654 0148 0A49     		ldr	r1, .L108+16
 655 014a C8F80030 		str	r3, [r8]
 656 014e FFF7FEFF 		bl	sspi_transceive_packet
 657 0152 D3E7     		b	.L88
 658              	.L105:
 659 0154 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 660 0158 0028     		cmp	r0, #0
 661 015a CDD1     		bne	.L87
 662 015c 0323     		movs	r3, #3
 663 015e 2370     		strb	r3, [r4]
 664 0160 B8E7     		b	.L83
 665              	.L109:
 666 0162 00BF     		.align	2
 667              	.L108:
 668 0164 00000000 		.word	.LANCHOR1
 669 0168 00000000 		.word	.LANCHOR3
 670 016c 00000000 		.word	.LANCHOR0
 671 0170 00000000 		.word	.LANCHOR2
 672 0174 00000000 		.word	.LANCHOR6
 673              		.size	sd_mmc_spi_adtc_start, .-sd_mmc_spi_adtc_start
 674              		.section	.text.sd_mmc_spi_send_cmd,"ax",%progbits
 675              		.align	1
 676              		.p2align 2,,3
 677              		.global	sd_mmc_spi_send_cmd
 678              		.syntax unified
 679              		.thumb
 680              		.thumb_func
 681              		.fpu fpv4-sp-d16
 682              		.type	sd_mmc_spi_send_cmd, %function
 683              	sd_mmc_spi_send_cmd:
 684              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 13


 685              		@ frame_needed = 0, uses_anonymous_args = 0
 686 0000 00B5     		push	{lr}
 687 0002 83B0     		sub	sp, sp, #12
 688 0004 0023     		movs	r3, #0
 689 0006 0093     		str	r3, [sp]
 690 0008 1A46     		mov	r2, r3
 691 000a FFF7FEFF 		bl	sd_mmc_spi_adtc_start
 692 000e 03B0     		add	sp, sp, #12
 693              		@ sp needed
 694 0010 5DF804FB 		ldr	pc, [sp], #4
 695              		.size	sd_mmc_spi_send_cmd, .-sd_mmc_spi_send_cmd
 696              		.section	.text.sd_mmc_spi_get_response,"ax",%progbits
 697              		.align	1
 698              		.p2align 2,,3
 699              		.global	sd_mmc_spi_get_response
 700              		.syntax unified
 701              		.thumb
 702              		.thumb_func
 703              		.fpu fpv4-sp-d16
 704              		.type	sd_mmc_spi_get_response, %function
 705              	sd_mmc_spi_get_response:
 706              		@ args = 0, pretend = 0, frame = 0
 707              		@ frame_needed = 0, uses_anonymous_args = 0
 708              		@ link register save eliminated.
 709 0000 014B     		ldr	r3, .L113
 710 0002 1868     		ldr	r0, [r3]
 711 0004 7047     		bx	lr
 712              	.L114:
 713 0006 00BF     		.align	2
 714              	.L113:
 715 0008 00000000 		.word	.LANCHOR6
 716              		.size	sd_mmc_spi_get_response, .-sd_mmc_spi_get_response
 717              		.section	.text.sd_mmc_spi_read_word,"ax",%progbits
 718              		.align	1
 719              		.p2align 2,,3
 720              		.global	sd_mmc_spi_read_word
 721              		.syntax unified
 722              		.thumb
 723              		.thumb_func
 724              		.fpu fpv4-sp-d16
 725              		.type	sd_mmc_spi_read_word, %function
 726              	sd_mmc_spi_read_word:
 727              		@ args = 0, pretend = 0, frame = 8
 728              		@ frame_needed = 0, uses_anonymous_args = 0
 729 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 730 0002 134C     		ldr	r4, .L122
 731 0004 134D     		ldr	r5, .L122+4
 732 0006 2168     		ldr	r1, [r4]
 733 0008 2A88     		ldrh	r2, [r5]
 734 000a 134E     		ldr	r6, .L122+8
 735 000c B1FBF2F3 		udiv	r3, r1, r2
 736 0010 02FB1313 		mls	r3, r2, r3, r1
 737 0014 0022     		movs	r2, #0
 738 0016 83B0     		sub	sp, sp, #12
 739 0018 0746     		mov	r7, r0
 740 001a 3270     		strb	r2, [r6]
 741 001c 13B9     		cbnz	r3, .L119
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 14


 742 001e FFF7FEFF 		bl	sd_mmc_spi_start_read_block
 743 0022 70B1     		cbz	r0, .L118
 744              	.L119:
 745 0024 0422     		movs	r2, #4
 746 0026 3946     		mov	r1, r7
 747 0028 0020     		movs	r0, #0
 748 002a FFF7FEFF 		bl	sspi_transceive_packet
 749 002e 2368     		ldr	r3, [r4]
 750 0030 2A88     		ldrh	r2, [r5]
 751 0032 0433     		adds	r3, r3, #4
 752 0034 B3FBF2F0 		udiv	r0, r3, r2
 753 0038 02FB1030 		mls	r0, r2, r0, r3
 754 003c 2360     		str	r3, [r4]
 755 003e 10B1     		cbz	r0, .L117
 756              	.L121:
 757 0040 0120     		movs	r0, #1
 758              	.L118:
 759 0042 03B0     		add	sp, sp, #12
 760              		@ sp needed
 761 0044 F0BD     		pop	{r4, r5, r6, r7, pc}
 762              	.L117:
 763 0046 0222     		movs	r2, #2
 764 0048 01A9     		add	r1, sp, #4
 765 004a FFF7FEFF 		bl	sspi_transceive_packet
 766 004e F7E7     		b	.L121
 767              	.L123:
 768              		.align	2
 769              	.L122:
 770 0050 00000000 		.word	.LANCHOR2
 771 0054 00000000 		.word	.LANCHOR3
 772 0058 00000000 		.word	.LANCHOR1
 773              		.size	sd_mmc_spi_read_word, .-sd_mmc_spi_read_word
 774              		.section	.text.sd_mmc_spi_write_word,"ax",%progbits
 775              		.align	1
 776              		.p2align 2,,3
 777              		.global	sd_mmc_spi_write_word
 778              		.syntax unified
 779              		.thumb
 780              		.thumb_func
 781              		.fpu fpv4-sp-d16
 782              		.type	sd_mmc_spi_write_word, %function
 783              	sd_mmc_spi_write_word:
 784              		@ args = 0, pretend = 0, frame = 8
 785              		@ frame_needed = 0, uses_anonymous_args = 0
 786 0000 70B5     		push	{r4, r5, r6, lr}
 787 0002 184C     		ldr	r4, .L134
 788 0004 184E     		ldr	r6, .L134+4
 789 0006 2168     		ldr	r1, [r4]
 790 0008 3288     		ldrh	r2, [r6]
 791 000a 184D     		ldr	r5, .L134+8
 792 000c B1FBF2F3 		udiv	r3, r1, r2
 793 0010 82B0     		sub	sp, sp, #8
 794 0012 02FB1313 		mls	r3, r2, r3, r1
 795 0016 0022     		movs	r2, #0
 796 0018 0190     		str	r0, [sp, #4]
 797 001a 2A70     		strb	r2, [r5]
 798 001c BBB1     		cbz	r3, .L132
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 15


 799              	.L125:
 800 001e 0422     		movs	r2, #4
 801 0020 0021     		movs	r1, #0
 802 0022 0DEB0200 		add	r0, sp, r2
 803 0026 FFF7FEFF 		bl	sspi_transceive_packet
 804 002a 2368     		ldr	r3, [r4]
 805 002c 3188     		ldrh	r1, [r6]
 806 002e 0433     		adds	r3, r3, #4
 807 0030 B3FBF1F2 		udiv	r2, r3, r1
 808 0034 01FB1232 		mls	r2, r1, r2, r3
 809 0038 2360     		str	r3, [r4]
 810 003a 22B9     		cbnz	r2, .L126
 811 003c FFF7FEFF 		bl	sd_mmc_spi_stop_write_block
 812 0040 40B9     		cbnz	r0, .L133
 813              	.L127:
 814 0042 02B0     		add	sp, sp, #8
 815              		@ sp needed
 816 0044 70BD     		pop	{r4, r5, r6, pc}
 817              	.L126:
 818 0046 FFF7FEFF 		bl	sd_mmc_spi_stop_multiwrite_block
 819 004a 02B0     		add	sp, sp, #8
 820              		@ sp needed
 821 004c 70BD     		pop	{r4, r5, r6, pc}
 822              	.L132:
 823 004e FFF7FEFF 		bl	sd_mmc_spi_start_write_block
 824 0052 E4E7     		b	.L125
 825              	.L133:
 826 0054 FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 827 0058 0028     		cmp	r0, #0
 828 005a F4D1     		bne	.L126
 829 005c 0523     		movs	r3, #5
 830 005e 2B70     		strb	r3, [r5]
 831 0060 EFE7     		b	.L127
 832              	.L135:
 833 0062 00BF     		.align	2
 834              	.L134:
 835 0064 00000000 		.word	.LANCHOR2
 836 0068 00000000 		.word	.LANCHOR3
 837 006c 00000000 		.word	.LANCHOR1
 838              		.size	sd_mmc_spi_write_word, .-sd_mmc_spi_write_word
 839              		.section	.text.sd_mmc_spi_start_read_blocks,"ax",%progbits
 840              		.align	1
 841              		.p2align 2,,3
 842              		.global	sd_mmc_spi_start_read_blocks
 843              		.syntax unified
 844              		.thumb
 845              		.thumb_func
 846              		.fpu fpv4-sp-d16
 847              		.type	sd_mmc_spi_start_read_blocks, %function
 848              	sd_mmc_spi_start_read_blocks:
 849              		@ args = 0, pretend = 0, frame = 8
 850              		@ frame_needed = 0, uses_anonymous_args = 0
 851 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 852 0004 174B     		ldr	r3, .L149
 853 0006 0025     		movs	r5, #0
 854 0008 83B0     		sub	sp, sp, #12
 855 000a 1D70     		strb	r5, [r3]
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 16


 856 000c 29B3     		cbz	r1, .L137
 857 000e 4C1E     		subs	r4, r1, #1
 858 0010 A4B2     		uxth	r4, r4
 859 0012 8146     		mov	r9, r0
 860 0014 DFF85480 		ldr	r8, .L149+8
 861 0018 134F     		ldr	r7, .L149+4
 862 001a 15E0     		b	.L139
 863              	.L148:
 864 001c B8F80020 		ldrh	r2, [r8]
 865 0020 0020     		movs	r0, #0
 866 0022 FFF7FEFF 		bl	sspi_transceive_packet
 867 0026 B8F80060 		ldrh	r6, [r8]
 868 002a 3B68     		ldr	r3, [r7]
 869 002c 0222     		movs	r2, #2
 870 002e 3344     		add	r3, r3, r6
 871 0030 01A9     		add	r1, sp, #4
 872 0032 0020     		movs	r0, #0
 873 0034 013C     		subs	r4, r4, #1
 874 0036 3B60     		str	r3, [r7]
 875 0038 A4B2     		uxth	r4, r4
 876 003a FFF7FEFF 		bl	sspi_transceive_packet
 877 003e 4FF6FF73 		movw	r3, #65535
 878 0042 9C42     		cmp	r4, r3
 879 0044 3544     		add	r5, r5, r6
 880 0046 08D0     		beq	.L137
 881              	.L139:
 882 0048 FFF7FEFF 		bl	sd_mmc_spi_start_read_block
 883 004c 09EB0501 		add	r1, r9, r5
 884 0050 0028     		cmp	r0, #0
 885 0052 E3D1     		bne	.L148
 886 0054 03B0     		add	sp, sp, #12
 887              		@ sp needed
 888 0056 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 889              	.L137:
 890 005a 0120     		movs	r0, #1
 891 005c 03B0     		add	sp, sp, #12
 892              		@ sp needed
 893 005e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 894              	.L150:
 895 0062 00BF     		.align	2
 896              	.L149:
 897 0064 00000000 		.word	.LANCHOR1
 898 0068 00000000 		.word	.LANCHOR2
 899 006c 00000000 		.word	.LANCHOR3
 900              		.size	sd_mmc_spi_start_read_blocks, .-sd_mmc_spi_start_read_blocks
 901              		.section	.text.sd_mmc_spi_wait_end_of_read_blocks,"ax",%progbits
 902              		.align	1
 903              		.p2align 2,,3
 904              		.global	sd_mmc_spi_wait_end_of_read_blocks
 905              		.syntax unified
 906              		.thumb
 907              		.thumb_func
 908              		.fpu fpv4-sp-d16
 909              		.type	sd_mmc_spi_wait_end_of_read_blocks, %function
 910              	sd_mmc_spi_wait_end_of_read_blocks:
 911              		@ args = 0, pretend = 0, frame = 0
 912              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 17


 913              		@ link register save eliminated.
 914 0000 0120     		movs	r0, #1
 915 0002 7047     		bx	lr
 916              		.size	sd_mmc_spi_wait_end_of_read_blocks, .-sd_mmc_spi_wait_end_of_read_blocks
 917              		.section	.text.sd_mmc_spi_start_write_blocks,"ax",%progbits
 918              		.align	1
 919              		.p2align 2,,3
 920              		.global	sd_mmc_spi_start_write_blocks
 921              		.syntax unified
 922              		.thumb
 923              		.thumb_func
 924              		.fpu fpv4-sp-d16
 925              		.type	sd_mmc_spi_start_write_blocks, %function
 926              	sd_mmc_spi_start_write_blocks:
 927              		@ args = 0, pretend = 0, frame = 0
 928              		@ frame_needed = 0, uses_anonymous_args = 0
 929 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 930 0004 DFF864B0 		ldr	fp, .L163+8
 931 0008 164F     		ldr	r7, .L163
 932 000a 174E     		ldr	r6, .L163+4
 933 000c 0025     		movs	r5, #0
 934 000e 01F1FF38 		add	r8, r1, #-1
 935 0012 8A46     		mov	r10, r1
 936 0014 8BF80050 		strb	r5, [fp]
 937 0018 8146     		mov	r9, r0
 938 001a 1FFA88F8 		uxth	r8, r8
 939 001e 2C46     		mov	r4, r5
 940              	.L153:
 941 0020 5545     		cmp	r5, r10
 942 0022 11D0     		beq	.L157
 943 0024 FFF7FEFF 		bl	sd_mmc_spi_start_write_block
 944 0028 3A88     		ldrh	r2, [r7]
 945 002a 09EB0400 		add	r0, r9, r4
 946 002e 0021     		movs	r1, #0
 947 0030 FFF7FEFF 		bl	sspi_transceive_packet
 948 0034 3A88     		ldrh	r2, [r7]
 949 0036 3368     		ldr	r3, [r6]
 950 0038 1344     		add	r3, r3, r2
 951 003a 1444     		add	r4, r4, r2
 952 003c 3360     		str	r3, [r6]
 953 003e FFF7FEFF 		bl	sd_mmc_spi_stop_write_block
 954 0042 10B1     		cbz	r0, .L154
 955 0044 4545     		cmp	r5, r8
 956 0046 02D1     		bne	.L155
 957              	.L157:
 958 0048 0120     		movs	r0, #1
 959              	.L154:
 960 004a BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 961              	.L155:
 962 004e FFF7FEFF 		bl	sd_mmc_spi_wait_busy
 963 0052 0135     		adds	r5, r5, #1
 964 0054 0028     		cmp	r0, #0
 965 0056 E3D1     		bne	.L153
 966 0058 0523     		movs	r3, #5
 967 005a 8BF80030 		strb	r3, [fp]
 968 005e BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 969              	.L164:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 18


 970 0062 00BF     		.align	2
 971              	.L163:
 972 0064 00000000 		.word	.LANCHOR3
 973 0068 00000000 		.word	.LANCHOR2
 974 006c 00000000 		.word	.LANCHOR1
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
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccLmtxDw.s 			page 19


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
 1062              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
