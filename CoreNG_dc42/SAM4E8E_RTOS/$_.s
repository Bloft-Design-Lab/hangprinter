ARM GAS  /tmp/ccfnyGjL.s 			page 1


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
  13              		.file	"sd_mmc.c"
  14              		.section	.text.sd_mmc_spi_get_bus_width,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	sd_mmc_spi_get_bus_width, %function
  22              	sd_mmc_spi_get_bus_width:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 0120     		movs	r0, #1
  27 0002 7047     		bx	lr
  28              		.size	sd_mmc_spi_get_bus_width, .-sd_mmc_spi_get_bus_width
  29              		.section	.text.sd_mmc_spi_is_high_speed_capable,"ax",%progbits
  30              		.align	1
  31              		.p2align 2,,3
  32              		.syntax unified
  33              		.thumb
  34              		.thumb_func
  35              		.fpu fpv4-sp-d16
  36              		.type	sd_mmc_spi_is_high_speed_capable, %function
  37              	sd_mmc_spi_is_high_speed_capable:
  38              		@ args = 0, pretend = 0, frame = 0
  39              		@ frame_needed = 0, uses_anonymous_args = 0
  40              		@ link register save eliminated.
  41 0000 0020     		movs	r0, #0
  42 0002 7047     		bx	lr
  43              		.size	sd_mmc_spi_is_high_speed_capable, .-sd_mmc_spi_is_high_speed_capable
  44              		.section	.text.sd_mmc_spi_get_response_128,"ax",%progbits
  45              		.align	1
  46              		.p2align 2,,3
  47              		.syntax unified
  48              		.thumb
  49              		.thumb_func
  50              		.fpu fpv4-sp-d16
  51              		.type	sd_mmc_spi_get_response_128, %function
  52              	sd_mmc_spi_get_response_128:
  53              		@ args = 0, pretend = 0, frame = 0
  54              		@ frame_needed = 0, uses_anonymous_args = 0
  55              		@ link register save eliminated.
  56 0000 7047     		bx	lr
  57              		.size	sd_mmc_spi_get_response_128, .-sd_mmc_spi_get_response_128
ARM GAS  /tmp/ccfnyGjL.s 			page 2


  58 0002 00BF     		.section	.text.sd_cmd8,"ax",%progbits
  59              		.align	1
  60              		.p2align 2,,3
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv4-sp-d16
  65              		.type	sd_cmd8, %function
  66              	sd_cmd8:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  70 0002 104D     		ldr	r5, .L14
  71 0004 0026     		movs	r6, #0
  72 0006 2B68     		ldr	r3, [r5]
  73 0008 0670     		strb	r6, [r0]
  74 000a 1B68     		ldr	r3, [r3]
  75 000c 0746     		mov	r7, r0
  76 000e 4FF4D571 		mov	r1, #426
  77 0012 5B69     		ldr	r3, [r3, #20]
  78 0014 45F20850 		movw	r0, #21768
  79 0018 9847     		blx	r3
  80 001a 80B1     		cbz	r0, .L8
  81 001c 2B68     		ldr	r3, [r5]
  82 001e 1B68     		ldr	r3, [r3]
  83 0020 9B69     		ldr	r3, [r3, #24]
  84 0022 0446     		mov	r4, r0
  85 0024 9847     		blx	r3
  86 0026 431C     		adds	r3, r0, #1
  87 0028 09D0     		beq	.L8
  88 002a C0F30B00 		ubfx	r0, r0, #0, #12
  89 002e B0F5D57F 		cmp	r0, #426
  90 0032 0ABF     		itet	eq
  91 0034 0123     		moveq	r3, #1
  92 0036 3446     		movne	r4, r6
  93 0038 3B70     		strbeq	r3, [r7]
  94 003a 2046     		mov	r0, r4
  95 003c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  96              	.L8:
  97 003e 0124     		movs	r4, #1
  98 0040 2046     		mov	r0, r4
  99 0042 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 100              	.L15:
 101              		.align	2
 102              	.L14:
 103 0044 00000000 		.word	.LANCHOR0
 104              		.size	sd_cmd8, .-sd_cmd8
 105              		.section	.text.sd_mmc_cmd9_spi,"ax",%progbits
 106              		.align	1
 107              		.p2align 2,,3
 108              		.syntax unified
 109              		.thumb
 110              		.thumb_func
 111              		.fpu fpv4-sp-d16
 112              		.type	sd_mmc_cmd9_spi, %function
 113              	sd_mmc_cmd9_spi:
 114              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccfnyGjL.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116 0000 70B5     		push	{r4, r5, r6, lr}
 117 0002 0F4D     		ldr	r5, .L24
 118 0004 0F48     		ldr	r0, .L24+4
 119 0006 2B68     		ldr	r3, [r5]
 120 0008 82B0     		sub	sp, sp, #8
 121 000a D989     		ldrh	r1, [r3, #14]
 122 000c 1B68     		ldr	r3, [r3]
 123 000e 0124     		movs	r4, #1
 124 0010 0094     		str	r4, [sp]
 125 0012 1E6A     		ldr	r6, [r3, #32]
 126 0014 0904     		lsls	r1, r1, #16
 127 0016 2346     		mov	r3, r4
 128 0018 1022     		movs	r2, #16
 129 001a B047     		blx	r6
 130 001c 68B1     		cbz	r0, .L18
 131 001e 2868     		ldr	r0, [r5]
 132 0020 0368     		ldr	r3, [r0]
 133 0022 2146     		mov	r1, r4
 134 0024 1B6B     		ldr	r3, [r3, #48]
 135 0026 1530     		adds	r0, r0, #21
 136 0028 9847     		blx	r3
 137 002a 30B1     		cbz	r0, .L18
 138 002c 2B68     		ldr	r3, [r5]
 139 002e 1B68     		ldr	r3, [r3]
 140 0030 5B6B     		ldr	r3, [r3, #52]
 141 0032 02B0     		add	sp, sp, #8
 142              		@ sp needed
 143 0034 BDE87040 		pop	{r4, r5, r6, lr}
 144 0038 1847     		bx	r3
 145              	.L18:
 146 003a 0020     		movs	r0, #0
 147 003c 02B0     		add	sp, sp, #8
 148              		@ sp needed
 149 003e 70BD     		pop	{r4, r5, r6, pc}
 150              	.L25:
 151              		.align	2
 152              	.L24:
 153 0040 00000000 		.word	.LANCHOR0
 154 0044 09110800 		.word	528649
 155              		.size	sd_mmc_cmd9_spi, .-sd_mmc_cmd9_spi
 156              		.section	.text.sd_mmc_cmd9_mci,"ax",%progbits
 157              		.align	1
 158              		.p2align 2,,3
 159              		.syntax unified
 160              		.thumb
 161              		.thumb_func
 162              		.fpu fpv4-sp-d16
 163              		.type	sd_mmc_cmd9_mci, %function
 164              	sd_mmc_cmd9_mci:
 165              		@ args = 0, pretend = 0, frame = 0
 166              		@ frame_needed = 0, uses_anonymous_args = 0
 167 0000 38B5     		push	{r3, r4, r5, lr}
 168 0002 094D     		ldr	r5, .L32
 169 0004 2B68     		ldr	r3, [r5]
 170 0006 D989     		ldrh	r1, [r3, #14]
 171 0008 1B68     		ldr	r3, [r3]
ARM GAS  /tmp/ccfnyGjL.s 			page 4


 172 000a 0904     		lsls	r1, r1, #16
 173 000c 5B69     		ldr	r3, [r3, #20]
 174 000e 41F60930 		movw	r0, #6921
 175 0012 9847     		blx	r3
 176 0014 0446     		mov	r4, r0
 177 0016 20B1     		cbz	r0, .L27
 178 0018 2868     		ldr	r0, [r5]
 179 001a 0368     		ldr	r3, [r0]
 180 001c 1530     		adds	r0, r0, #21
 181 001e DB69     		ldr	r3, [r3, #28]
 182 0020 9847     		blx	r3
 183              	.L27:
 184 0022 2046     		mov	r0, r4
 185 0024 38BD     		pop	{r3, r4, r5, pc}
 186              	.L33:
 187 0026 00BF     		.align	2
 188              	.L32:
 189 0028 00000000 		.word	.LANCHOR0
 190              		.size	sd_mmc_cmd9_mci, .-sd_mmc_cmd9_mci
 191              		.section	.text.mmc_decode_csd,"ax",%progbits
 192              		.align	1
 193              		.p2align 2,,3
 194              		.syntax unified
 195              		.thumb
 196              		.thumb_func
 197              		.fpu fpv4-sp-d16
 198              		.type	mmc_decode_csd, %function
 199              	mmc_decode_csd:
 200              		@ args = 0, pretend = 0, frame = 0
 201              		@ frame_needed = 0, uses_anonymous_args = 0
 202              		@ link register save eliminated.
 203 0000 70B4     		push	{r4, r5, r6}
 204 0002 264B     		ldr	r3, .L44
 205 0004 1A68     		ldr	r2, [r3]
 206 0006 537D     		ldrb	r3, [r2, #21]	@ zero_extendqisi2
 207 0008 C3F38303 		ubfx	r3, r3, #2, #4
 208 000c 013B     		subs	r3, r3, #1
 209 000e 032B     		cmp	r3, #3
 210 0010 40D8     		bhi	.L35
 211 0012 DFE803F0 		tbb	[pc, r3]
 212              	.L37:
 213 0016 3C       		.byte	(.L36-.L37)/2
 214 0017 39       		.byte	(.L38-.L37)/2
 215 0018 36       		.byte	(.L39-.L37)/2
 216 0019 02       		.byte	(.L40-.L37)/2
 217              		.p2align 1
 218              	.L40:
 219 001a 4023     		movs	r3, #64
 220 001c 9374     		strb	r3, [r2, #18]
 221              	.L41:
 222 001e 117E     		ldrb	r1, [r2, #24]	@ zero_extendqisi2
 223 0020 1F4C     		ldr	r4, .L44+4
 224 0022 D37E     		ldrb	r3, [r2, #27]	@ zero_extendqisi2
 225 0024 1F48     		ldr	r0, .L44+8
 226 0026 167F     		ldrb	r6, [r2, #28]	@ zero_extendqisi2
 227 0028 01F00705 		and	r5, r1, #7
 228 002c C1F3C301 		ubfx	r1, r1, #3, #4
ARM GAS  /tmp/ccfnyGjL.s 			page 5


 229 0030 54F82550 		ldr	r5, [r4, r5, lsl #2]
 230 0034 547F     		ldrb	r4, [r2, #29]	@ zero_extendqisi2
 231 0036 50F82100 		ldr	r0, [r0, r1, lsl #2]
 232 003a 9B02     		lsls	r3, r3, #10
 233 003c 4FF47A71 		mov	r1, #1000
 234 0040 43EA8603 		orr	r3, r3, r6, lsl #2
 235 0044 01FB05F1 		mul	r1, r1, r5
 236 0048 43EA9413 		orr	r3, r3, r4, lsr #6
 237 004c 01FB00F1 		mul	r1, r1, r0
 238 0050 C3F30B03 		ubfx	r3, r3, #0, #12
 239 0054 40F6FF70 		movw	r0, #4095
 240 0058 8342     		cmp	r3, r0
 241 005a 5160     		str	r1, [r2, #4]
 242 005c 0FD0     		beq	.L34
 243 005e 917F     		ldrb	r1, [r2, #30]	@ zero_extendqisi2
 244 0060 D47F     		ldrb	r4, [r2, #31]	@ zero_extendqisi2
 245 0062 907E     		ldrb	r0, [r2, #26]	@ zero_extendqisi2
 246 0064 4900     		lsls	r1, r1, #1
 247 0066 41EAD411 		orr	r1, r1, r4, lsr #7
 248 006a 01F00701 		and	r1, r1, #7
 249 006e 0231     		adds	r1, r1, #2
 250 0070 0133     		adds	r3, r3, #1
 251 0072 8B40     		lsls	r3, r3, r1
 252 0074 00F00F01 		and	r1, r0, #15
 253 0078 8B40     		lsls	r3, r3, r1
 254 007a 9B0A     		lsrs	r3, r3, #10
 255 007c 9360     		str	r3, [r2, #8]
 256              	.L34:
 257 007e 70BC     		pop	{r4, r5, r6}
 258 0080 7047     		bx	lr
 259              	.L39:
 260 0082 3023     		movs	r3, #48
 261 0084 9374     		strb	r3, [r2, #18]
 262 0086 CAE7     		b	.L41
 263              	.L38:
 264 0088 2223     		movs	r3, #34
 265 008a 9374     		strb	r3, [r2, #18]
 266 008c C7E7     		b	.L41
 267              	.L36:
 268 008e 1423     		movs	r3, #20
 269 0090 9374     		strb	r3, [r2, #18]
 270 0092 C4E7     		b	.L41
 271              	.L35:
 272 0094 1223     		movs	r3, #18
 273 0096 9374     		strb	r3, [r2, #18]
 274 0098 C1E7     		b	.L41
 275              	.L45:
 276 009a 00BF     		.align	2
 277              	.L44:
 278 009c 00000000 		.word	.LANCHOR0
 279 00a0 00000000 		.word	.LANCHOR2
 280 00a4 00000000 		.word	.LANCHOR1
 281              		.size	mmc_decode_csd, .-mmc_decode_csd
 282              		.section	.text.sd_decode_csd,"ax",%progbits
 283              		.align	1
 284              		.p2align 2,,3
 285              		.syntax unified
ARM GAS  /tmp/ccfnyGjL.s 			page 6


 286              		.thumb
 287              		.thumb_func
 288              		.fpu fpv4-sp-d16
 289              		.type	sd_decode_csd, %function
 290              	sd_decode_csd:
 291              		@ args = 0, pretend = 0, frame = 0
 292              		@ frame_needed = 0, uses_anonymous_args = 0
 293              		@ link register save eliminated.
 294 0000 30B4     		push	{r4, r5}
 295 0002 1F4B     		ldr	r3, .L51
 296 0004 1F48     		ldr	r0, .L51+4
 297 0006 1A68     		ldr	r2, [r3]
 298 0008 1F49     		ldr	r1, .L51+8
 299 000a 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 300 000c 547D     		ldrb	r4, [r2, #21]	@ zero_extendqisi2
 301 000e 03F00705 		and	r5, r3, #7
 302 0012 C3F3C303 		ubfx	r3, r3, #3, #4
 303 0016 50F82550 		ldr	r5, [r0, r5, lsl #2]
 304 001a 51F82300 		ldr	r0, [r1, r3, lsl #2]
 305 001e 917F     		ldrb	r1, [r2, #30]	@ zero_extendqisi2
 306 0020 4FF47A73 		mov	r3, #1000
 307 0024 03FB05F3 		mul	r3, r3, r5
 308 0028 03FB00F3 		mul	r3, r3, r0
 309 002c A409     		lsrs	r4, r4, #6
 310 002e 5360     		str	r3, [r2, #4]
 311 0030 507F     		ldrb	r0, [r2, #29]	@ zero_extendqisi2
 312 0032 137F     		ldrb	r3, [r2, #28]	@ zero_extendqisi2
 313 0034 18D1     		bne	.L50
 314 0036 D57E     		ldrb	r5, [r2, #27]	@ zero_extendqisi2
 315 0038 D47F     		ldrb	r4, [r2, #31]	@ zero_extendqisi2
 316 003a 9B00     		lsls	r3, r3, #2
 317 003c 43EA8523 		orr	r3, r3, r5, lsl #10
 318 0040 4900     		lsls	r1, r1, #1
 319 0042 43EA9013 		orr	r3, r3, r0, lsr #6
 320 0046 41EAD411 		orr	r1, r1, r4, lsr #7
 321 004a C3F30B03 		ubfx	r3, r3, #0, #12
 322 004e 01F00701 		and	r1, r1, #7
 323 0052 907E     		ldrb	r0, [r2, #26]	@ zero_extendqisi2
 324 0054 0231     		adds	r1, r1, #2
 325 0056 0133     		adds	r3, r3, #1
 326 0058 8B40     		lsls	r3, r3, r1
 327 005a 00F00F01 		and	r1, r0, #15
 328 005e 8B40     		lsls	r3, r3, r1
 329 0060 9B0A     		lsrs	r3, r3, #10
 330 0062 9360     		str	r3, [r2, #8]
 331 0064 30BC     		pop	{r4, r5}
 332 0066 7047     		bx	lr
 333              	.L50:
 334 0068 1B04     		lsls	r3, r3, #16
 335 006a 43EA0023 		orr	r3, r3, r0, lsl #8
 336 006e 0B43     		orrs	r3, r3, r1
 337 0070 C3F31503 		ubfx	r3, r3, #0, #22
 338 0074 0133     		adds	r3, r3, #1
 339 0076 5B02     		lsls	r3, r3, #9
 340 0078 9360     		str	r3, [r2, #8]
 341 007a 30BC     		pop	{r4, r5}
 342 007c 7047     		bx	lr
ARM GAS  /tmp/ccfnyGjL.s 			page 7


 343              	.L52:
 344 007e 00BF     		.align	2
 345              	.L51:
 346 0080 00000000 		.word	.LANCHOR0
 347 0084 00000000 		.word	.LANCHOR2
 348 0088 00000000 		.word	.LANCHOR3
 349              		.size	sd_decode_csd, .-sd_decode_csd
 350              		.section	.text.sd_mmc_cmd13,"ax",%progbits
 351              		.align	1
 352              		.p2align 2,,3
 353              		.syntax unified
 354              		.thumb
 355              		.thumb_func
 356              		.fpu fpv4-sp-d16
 357              		.type	sd_mmc_cmd13, %function
 358              	sd_mmc_cmd13:
 359              		@ args = 0, pretend = 0, frame = 0
 360              		@ frame_needed = 0, uses_anonymous_args = 0
 361 0000 70B5     		push	{r4, r5, r6, lr}
 362 0002 144C     		ldr	r4, .L74
 363 0004 144D     		ldr	r5, .L74+4
 364 0006 0AE0     		b	.L57
 365              	.L73:
 366 0008 9847     		blx	r3
 367 000a 00B3     		cbz	r0, .L55
 368 000c 2B68     		ldr	r3, [r5]
 369 000e 1B68     		ldr	r3, [r3]
 370 0010 9B69     		ldr	r3, [r3, #24]
 371 0012 9847     		blx	r3
 372 0014 10F0FF0F 		tst	r0, #255
 373 0018 17D0     		beq	.L56
 374              	.L59:
 375 001a 013C     		subs	r4, r4, #1
 376 001c 17D0     		beq	.L55
 377              	.L57:
 378 001e 2A68     		ldr	r2, [r5]
 379 0020 1368     		ldr	r3, [r2]
 380 0022 93F84860 		ldrb	r6, [r3, #72]	@ zero_extendqisi2
 381 0026 5B69     		ldr	r3, [r3, #20]
 382 0028 0021     		movs	r1, #0
 383 002a 41F60D30 		movw	r0, #6925
 384 002e 002E     		cmp	r6, #0
 385 0030 EAD1     		bne	.L73
 386 0032 D189     		ldrh	r1, [r2, #14]
 387 0034 41F20D10 		movw	r0, #4365
 388 0038 0904     		lsls	r1, r1, #16
 389 003a 9847     		blx	r3
 390 003c 38B1     		cbz	r0, .L55
 391 003e 2B68     		ldr	r3, [r5]
 392 0040 1B68     		ldr	r3, [r3]
 393 0042 9B69     		ldr	r3, [r3, #24]
 394 0044 9847     		blx	r3
 395 0046 C305     		lsls	r3, r0, #23
 396 0048 E7D5     		bpl	.L59
 397              	.L56:
 398 004a 0120     		movs	r0, #1
 399 004c 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  /tmp/ccfnyGjL.s 			page 8


 400              	.L55:
 401 004e 0020     		movs	r0, #0
 402 0050 70BD     		pop	{r4, r5, r6, pc}
 403              	.L75:
 404 0052 00BF     		.align	2
 405              	.L74:
 406 0054 410D0300 		.word	200001
 407 0058 00000000 		.word	.LANCHOR0
 408              		.size	sd_mmc_cmd13, .-sd_mmc_cmd13
 409              		.section	.text.sd_acmd51,"ax",%progbits
 410              		.align	1
 411              		.p2align 2,,3
 412              		.syntax unified
 413              		.thumb
 414              		.thumb_func
 415              		.fpu fpv4-sp-d16
 416              		.type	sd_acmd51, %function
 417              	sd_acmd51:
 418              		@ args = 0, pretend = 0, frame = 8
 419              		@ frame_needed = 0, uses_anonymous_args = 0
 420 0000 70B5     		push	{r4, r5, r6, lr}
 421 0002 1E4C     		ldr	r4, .L96
 422 0004 2368     		ldr	r3, [r4]
 423 0006 D989     		ldrh	r1, [r3, #14]
 424 0008 1B68     		ldr	r3, [r3]
 425 000a 84B0     		sub	sp, sp, #16
 426 000c 0904     		lsls	r1, r1, #16
 427 000e 5B69     		ldr	r3, [r3, #20]
 428 0010 41F23710 		movw	r0, #4407
 429 0014 9847     		blx	r3
 430 0016 18B3     		cbz	r0, .L79
 431 0018 2368     		ldr	r3, [r4]
 432 001a 1948     		ldr	r0, .L96+4
 433 001c 1B68     		ldr	r3, [r3]
 434 001e 0125     		movs	r5, #1
 435 0020 0095     		str	r5, [sp]
 436 0022 1E6A     		ldr	r6, [r3, #32]
 437 0024 0822     		movs	r2, #8
 438 0026 2B46     		mov	r3, r5
 439 0028 0021     		movs	r1, #0
 440 002a B047     		blx	r6
 441 002c C0B1     		cbz	r0, .L79
 442 002e 2368     		ldr	r3, [r4]
 443 0030 1B68     		ldr	r3, [r3]
 444 0032 2946     		mov	r1, r5
 445 0034 1B6B     		ldr	r3, [r3, #48]
 446 0036 02A8     		add	r0, sp, #8
 447 0038 9847     		blx	r3
 448 003a 88B1     		cbz	r0, .L79
 449 003c 2368     		ldr	r3, [r4]
 450 003e 1B68     		ldr	r3, [r3]
 451 0040 5B6B     		ldr	r3, [r3, #52]
 452 0042 9847     		blx	r3
 453 0044 60B1     		cbz	r0, .L79
 454 0046 9DF80830 		ldrb	r3, [sp, #8]	@ zero_extendqisi2
 455 004a 2268     		ldr	r2, [r4]
 456 004c 03F00F03 		and	r3, r3, #15
ARM GAS  /tmp/ccfnyGjL.s 			page 9


 457 0050 AB42     		cmp	r3, r5
 458 0052 10D0     		beq	.L81
 459 0054 022B     		cmp	r3, #2
 460 0056 06D0     		beq	.L95
 461 0058 1023     		movs	r3, #16
 462 005a 9374     		strb	r3, [r2, #18]
 463 005c 04B0     		add	sp, sp, #16
 464              		@ sp needed
 465 005e 70BD     		pop	{r4, r5, r6, pc}
 466              	.L79:
 467 0060 0020     		movs	r0, #0
 468              	.L78:
 469 0062 04B0     		add	sp, sp, #16
 470              		@ sp needed
 471 0064 70BD     		pop	{r4, r5, r6, pc}
 472              	.L95:
 473 0066 9DF80A30 		ldrb	r3, [sp, #10]	@ zero_extendqisi2
 474 006a DB09     		lsrs	r3, r3, #7
 475 006c 14BF     		ite	ne
 476 006e 3023     		movne	r3, #48
 477 0070 2023     		moveq	r3, #32
 478 0072 9374     		strb	r3, [r2, #18]
 479 0074 F5E7     		b	.L78
 480              	.L81:
 481 0076 1A23     		movs	r3, #26
 482 0078 9374     		strb	r3, [r2, #18]
 483 007a F2E7     		b	.L78
 484              	.L97:
 485              		.align	2
 486              	.L96:
 487 007c 00000000 		.word	.LANCHOR0
 488 0080 33110800 		.word	528691
 489              		.size	sd_acmd51, .-sd_acmd51
 490              		.section	.text.mmc_cmd8,"ax",%progbits
 491              		.align	1
 492              		.p2align 2,,3
 493              		.syntax unified
 494              		.thumb
 495              		.thumb_func
 496              		.fpu fpv4-sp-d16
 497              		.type	mmc_cmd8, %function
 498              	mmc_cmd8:
 499              		@ args = 0, pretend = 0, frame = 8
 500              		@ frame_needed = 0, uses_anonymous_args = 0
 501 0000 70B5     		push	{r4, r5, r6, lr}
 502 0002 284D     		ldr	r5, .L129
 503 0004 2B68     		ldr	r3, [r5]
 504 0006 84B0     		sub	sp, sp, #16
 505 0008 1B68     		ldr	r3, [r3]
 506 000a 0021     		movs	r1, #0
 507 000c 0091     		str	r1, [sp]
 508 000e 0646     		mov	r6, r0
 509 0010 1C6A     		ldr	r4, [r3, #32]
 510 0012 2548     		ldr	r0, .L129+4
 511 0014 0123     		movs	r3, #1
 512 0016 4FF40072 		mov	r2, #512
 513 001a A047     		blx	r4
ARM GAS  /tmp/ccfnyGjL.s 			page 10


 514 001c 60B1     		cbz	r0, .L99
 515 001e 3224     		movs	r4, #50
 516 0020 00E0     		b	.L101
 517              	.L126:
 518 0022 5CB1     		cbz	r4, .L125
 519              	.L101:
 520 0024 2B68     		ldr	r3, [r5]
 521 0026 1B68     		ldr	r3, [r3]
 522 0028 02A8     		add	r0, sp, #8
 523 002a 9B6A     		ldr	r3, [r3, #40]
 524 002c 9847     		blx	r3
 525 002e 013C     		subs	r4, r4, #1
 526 0030 A4B2     		uxth	r4, r4
 527 0032 0028     		cmp	r0, #0
 528 0034 F5D1     		bne	.L126
 529              	.L100:
 530 0036 0020     		movs	r0, #0
 531              	.L99:
 532 0038 04B0     		add	sp, sp, #16
 533              		@ sp needed
 534 003a 70BD     		pop	{r4, r5, r6, pc}
 535              	.L125:
 536 003c 029A     		ldr	r2, [sp, #8]
 537 003e 2B68     		ldr	r3, [r5]
 538 0040 02F00202 		and	r2, r2, #2
 539 0044 3270     		strb	r2, [r6]
 540 0046 DA7E     		ldrb	r2, [r3, #27]	@ zero_extendqisi2
 541 0048 187F     		ldrb	r0, [r3, #28]	@ zero_extendqisi2
 542 004a 597F     		ldrb	r1, [r3, #29]	@ zero_extendqisi2
 543 004c 9202     		lsls	r2, r2, #10
 544 004e 42EA8002 		orr	r2, r2, r0, lsl #2
 545 0052 42EA9112 		orr	r2, r2, r1, lsr #6
 546 0056 C2F30B02 		ubfx	r2, r2, #0, #12
 547 005a 40F6FF71 		movw	r1, #4095
 548 005e 8A42     		cmp	r2, r1
 549 0060 0ED0     		beq	.L127
 550 0062 3224     		movs	r4, #50
 551 0064 03AE     		add	r6, sp, #12
 552 0066 00E0     		b	.L105
 553              	.L128:
 554 0068 2B68     		ldr	r3, [r5]
 555              	.L105:
 556 006a 1B68     		ldr	r3, [r3]
 557 006c 3046     		mov	r0, r6
 558 006e 9B6A     		ldr	r3, [r3, #40]
 559 0070 9847     		blx	r3
 560 0072 0134     		adds	r4, r4, #1
 561 0074 A4B2     		uxth	r4, r4
 562 0076 0028     		cmp	r0, #0
 563 0078 DDD0     		beq	.L100
 564 007a 802C     		cmp	r4, #128
 565 007c F4D1     		bne	.L128
 566 007e DBE7     		b	.L99
 567              	.L127:
 568 0080 0424     		movs	r4, #4
 569 0082 03AE     		add	r6, sp, #12
 570              	.L103:
ARM GAS  /tmp/ccfnyGjL.s 			page 11


 571 0084 1B68     		ldr	r3, [r3]
 572 0086 3046     		mov	r0, r6
 573 0088 9B6A     		ldr	r3, [r3, #40]
 574 008a 9847     		blx	r3
 575 008c 013C     		subs	r4, r4, #1
 576 008e A4B2     		uxth	r4, r4
 577 0090 0028     		cmp	r0, #0
 578 0092 D0D0     		beq	.L100
 579 0094 2B68     		ldr	r3, [r5]
 580 0096 002C     		cmp	r4, #0
 581 0098 F4D1     		bne	.L103
 582 009a 039A     		ldr	r2, [sp, #12]
 583 009c 5208     		lsrs	r2, r2, #1
 584 009e 9A60     		str	r2, [r3, #8]
 585 00a0 3624     		movs	r4, #54
 586 00a2 E2E7     		b	.L105
 587              	.L130:
 588              		.align	2
 589              	.L129:
 590 00a4 00000000 		.word	.LANCHOR0
 591 00a8 08110800 		.word	528648
 592              		.size	mmc_cmd8, .-mmc_cmd8
 593              		.section	.text.sd_mmc_select_slot.part.1,"ax",%progbits
 594              		.align	1
 595              		.p2align 2,,3
 596              		.syntax unified
 597              		.thumb
 598              		.thumb_func
 599              		.fpu fpv4-sp-d16
 600              		.type	sd_mmc_select_slot.part.1, %function
 601              	sd_mmc_select_slot.part.1:
 602              		@ args = 0, pretend = 0, frame = 0
 603              		@ frame_needed = 0, uses_anonymous_args = 0
 604 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 605 0004 8200     		lsls	r2, r0, #2
 606 0006 1A4D     		ldr	r5, .L135
 607 0008 1118     		adds	r1, r2, r0
 608 000a 05EBC101 		add	r1, r5, r1, lsl #3
 609 000e 0446     		mov	r4, r0
 610 0010 0B7C     		ldrb	r3, [r1, #16]	@ zero_extendqisi2
 611 0012 033B     		subs	r3, r3, #3
 612 0014 012B     		cmp	r3, #1
 613 0016 21D9     		bls	.L132
 614 0018 91F82530 		ldrb	r3, [r1, #37]	@ zero_extendqisi2
 615 001c 0033     		adds	r3, r3, #0
 616 001e 18BF     		it	ne
 617 0020 0123     		movne	r3, #1
 618              	.L133:
 619 0022 2244     		add	r2, r2, r4
 620 0024 D200     		lsls	r2, r2, #3
 621 0026 AE18     		adds	r6, r5, r2
 622 0028 AA58     		ldr	r2, [r5, r2]
 623 002a DFF84CE0 		ldr	lr, .L135+8
 624 002e DFF84CC0 		ldr	ip, .L135+12
 625 0032 1768     		ldr	r7, [r2]
 626 0034 F07C     		ldrb	r0, [r6, #19]	@ zero_extendqisi2
 627 0036 327D     		ldrb	r2, [r6, #20]	@ zero_extendqisi2
ARM GAS  /tmp/ccfnyGjL.s 			page 12


 628 0038 7168     		ldr	r1, [r6, #4]
 629 003a 8CF80040 		strb	r4, [ip]
 630 003e 04EB8408 		add	r8, r4, r4, lsl #2
 631 0042 05EBC805 		add	r5, r5, r8, lsl #3
 632 0046 CEF80050 		str	r5, [lr]
 633 004a B847     		blx	r7
 634 004c 307C     		ldrb	r0, [r6, #16]	@ zero_extendqisi2
 635 004e A0F10200 		sub	r0, #2
 636 0052 B0FA80F0 		clz	r0, r0
 637 0056 4009     		lsrs	r0, r0, #5
 638 0058 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 639              	.L132:
 640 005c 0220     		movs	r0, #2
 641 005e 054B     		ldr	r3, .L135+4
 642 0060 0874     		strb	r0, [r1, #16]
 643 0062 4B60     		str	r3, [r1, #4]
 644 0064 0120     		movs	r0, #1
 645 0066 0023     		movs	r3, #0
 646 0068 0875     		strb	r0, [r1, #20]
 647 006a 81F82530 		strb	r3, [r1, #37]
 648 006e D8E7     		b	.L133
 649              	.L136:
 650              		.align	2
 651              	.L135:
 652 0070 00000000 		.word	.LANCHOR4
 653 0074 801A0600 		.word	400000
 654 0078 00000000 		.word	.LANCHOR0
 655 007c 00000000 		.word	.LANCHOR5
 656              		.size	sd_mmc_select_slot.part.1, .-sd_mmc_select_slot.part.1
 657              		.section	.text.sd_mmc_init,"ax",%progbits
 658              		.align	1
 659              		.p2align 2,,3
 660              		.global	sd_mmc_init
 661              		.syntax unified
 662              		.thumb
 663              		.thumb_func
 664              		.fpu fpv4-sp-d16
 665              		.type	sd_mmc_init, %function
 666              	sd_mmc_init:
 667              		@ args = 0, pretend = 0, frame = 0
 668              		@ frame_needed = 0, uses_anonymous_args = 0
 669 0000 70B5     		push	{r4, r5, r6, lr}
 670 0002 154C     		ldr	r4, .L147
 671 0004 0423     		movs	r3, #4
 672 0006 2374     		strb	r3, [r4, #16]
 673 0008 0546     		mov	r5, r0
 674 000a 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 675 000c 2073     		strb	r0, [r4, #12]
 676 000e FF28     		cmp	r0, #255
 677 0010 0E46     		mov	r6, r1
 678 0012 03D0     		beq	.L138
 679 0014 0022     		movs	r2, #0
 680 0016 0121     		movs	r1, #1
 681 0018 FFF7FEFF 		bl	pinModeDuet
 682              	.L138:
 683 001c 0F4B     		ldr	r3, .L147+4
 684 001e 2360     		str	r3, [r4]
ARM GAS  /tmp/ccfnyGjL.s 			page 13


 685 0020 0022     		movs	r2, #0
 686 0022 0423     		movs	r3, #4
 687 0024 E274     		strb	r2, [r4, #19]
 688 0026 84F83830 		strb	r3, [r4, #56]
 689 002a 6878     		ldrb	r0, [r5, #1]	@ zero_extendqisi2
 690 002c 84F83400 		strb	r0, [r4, #52]
 691 0030 FF28     		cmp	r0, #255
 692 0032 02D0     		beq	.L139
 693 0034 0121     		movs	r1, #1
 694 0036 FFF7FEFF 		bl	pinModeDuet
 695              	.L139:
 696 003a 094A     		ldr	r2, .L147+8
 697 003c 094B     		ldr	r3, .L147+12
 698 003e A362     		str	r3, [r4, #40]
 699 0040 FF21     		movs	r1, #255
 700 0042 0023     		movs	r3, #0
 701 0044 84F83B30 		strb	r3, [r4, #59]
 702 0048 1170     		strb	r1, [r2]
 703 004a FFF7FEFF 		bl	hsmci_init
 704 004e 3046     		mov	r0, r6
 705 0050 BDE87040 		pop	{r4, r5, r6, lr}
 706 0054 FFF7FEBF 		b	sd_mmc_spi_init
 707              	.L148:
 708              		.align	2
 709              	.L147:
 710 0058 00000000 		.word	.LANCHOR4
 711 005c 00000000 		.word	.LANCHOR6
 712 0060 00000000 		.word	.LANCHOR5
 713 0064 00000000 		.word	.LANCHOR7
 714              		.size	sd_mmc_init, .-sd_mmc_init
 715              		.section	.text.sd_mmc_nb_slot,"ax",%progbits
 716              		.align	1
 717              		.p2align 2,,3
 718              		.global	sd_mmc_nb_slot
 719              		.syntax unified
 720              		.thumb
 721              		.thumb_func
 722              		.fpu fpv4-sp-d16
 723              		.type	sd_mmc_nb_slot, %function
 724              	sd_mmc_nb_slot:
 725              		@ args = 0, pretend = 0, frame = 0
 726              		@ frame_needed = 0, uses_anonymous_args = 0
 727              		@ link register save eliminated.
 728 0000 0220     		movs	r0, #2
 729 0002 7047     		bx	lr
 730              		.size	sd_mmc_nb_slot, .-sd_mmc_nb_slot
 731              		.section	.text.sd_mmc_check,"ax",%progbits
 732              		.align	1
 733              		.p2align 2,,3
 734              		.global	sd_mmc_check
 735              		.syntax unified
 736              		.thumb
 737              		.thumb_func
 738              		.fpu fpv4-sp-d16
 739              		.type	sd_mmc_check, %function
 740              	sd_mmc_check:
 741              		@ args = 0, pretend = 0, frame = 72
ARM GAS  /tmp/ccfnyGjL.s 			page 14


 742              		@ frame_needed = 0, uses_anonymous_args = 0
 743 0000 70B5     		push	{r4, r5, r6, lr}
 744 0002 0128     		cmp	r0, #1
 745 0004 94B0     		sub	sp, sp, #80
 746 0006 2FD8     		bhi	.L207
 747 0008 0546     		mov	r5, r0
 748              	.L152:
 749 000a 2846     		mov	r0, r5
 750 000c FFF7FEFF 		bl	sd_mmc_select_slot.part.1
 751 0010 0828     		cmp	r0, #8
 752 0012 0446     		mov	r4, r0
 753 0014 F9D0     		beq	.L152
 754 0016 0128     		cmp	r0, #1
 755 0018 27D1     		bne	.L151
 756 001a 904D     		ldr	r5, .L407
 757 001c 2B68     		ldr	r3, [r5]
 758 001e 1A68     		ldr	r2, [r3]
 759 0020 92F84840 		ldrb	r4, [r2, #72]	@ zero_extendqisi2
 760 0024 1269     		ldr	r2, [r2, #16]
 761 0026 002C     		cmp	r4, #0
 762 0028 2ED1     		bne	.L393
 763 002a 8DF80F40 		strb	r4, [sp, #15]
 764 002e 5874     		strb	r0, [r3, #17]
 765 0030 9C74     		strb	r4, [r3, #18]
 766 0032 DC81     		strh	r4, [r3, #14]	@ movhi
 767 0034 9047     		blx	r2
 768 0036 2B68     		ldr	r3, [r5]
 769 0038 1B68     		ldr	r3, [r3]
 770 003a 2146     		mov	r1, r4
 771 003c 5B69     		ldr	r3, [r3, #20]
 772 003e 4FF48040 		mov	r0, #16384
 773 0042 9847     		blx	r3
 774 0044 0028     		cmp	r0, #0
 775 0046 58D1     		bne	.L394
 776              	.L172:
 777 0048 854E     		ldr	r6, .L407+4
 778 004a 2B68     		ldr	r3, [r5]
 779 004c 3278     		ldrb	r2, [r6]	@ zero_extendqisi2
 780 004e 0324     		movs	r4, #3
 781 0050 012A     		cmp	r2, #1
 782 0052 1C74     		strb	r4, [r3, #16]
 783 0054 15D8     		bhi	.L212
 784 0056 1A68     		ldr	r2, [r3]
 785 0058 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 786 005a 5368     		ldr	r3, [r2, #4]
 787 005c 9847     		blx	r3
 788 005e FF23     		movs	r3, #255
 789 0060 2046     		mov	r0, r4
 790 0062 3370     		strb	r3, [r6]
 791 0064 14B0     		add	sp, sp, #80
 792              		@ sp needed
 793 0066 70BD     		pop	{r4, r5, r6, pc}
 794              	.L207:
 795 0068 0424     		movs	r4, #4
 796              	.L151:
 797 006a 7D4D     		ldr	r5, .L407+4
 798 006c 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
ARM GAS  /tmp/ccfnyGjL.s 			page 15


 799 006e 012B     		cmp	r3, #1
 800 0070 07D8     		bhi	.L212
 801 0072 7A4B     		ldr	r3, .L407
 802 0074 1B68     		ldr	r3, [r3]
 803              	.L392:
 804 0076 1A68     		ldr	r2, [r3]
 805 0078 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 806 007a 5368     		ldr	r3, [r2, #4]
 807 007c 9847     		blx	r3
 808 007e FF23     		movs	r3, #255
 809 0080 2B70     		strb	r3, [r5]
 810              	.L212:
 811 0082 2046     		mov	r0, r4
 812 0084 14B0     		add	sp, sp, #80
 813              		@ sp needed
 814 0086 70BD     		pop	{r4, r5, r6, pc}
 815              	.L393:
 816 0088 0024     		movs	r4, #0
 817 008a 8DF80F40 		strb	r4, [sp, #15]
 818 008e 5874     		strb	r0, [r3, #17]
 819 0090 9C74     		strb	r4, [r3, #18]
 820 0092 DC81     		strh	r4, [r3, #14]	@ movhi
 821 0094 9047     		blx	r2
 822 0096 2B68     		ldr	r3, [r5]
 823 0098 1B68     		ldr	r3, [r3]
 824 009a 2146     		mov	r1, r4
 825 009c 5B69     		ldr	r3, [r3, #20]
 826 009e 4FF48850 		mov	r0, #4352
 827 00a2 9847     		blx	r3
 828 00a4 0028     		cmp	r0, #0
 829 00a6 CFD0     		beq	.L172
 830 00a8 0DF10F00 		add	r0, sp, #15
 831 00ac FFF7FEFF 		bl	sd_cmd8
 832 00b0 0028     		cmp	r0, #0
 833 00b2 C9D0     		beq	.L172
 834 00b4 2868     		ldr	r0, [r5]
 835 00b6 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 836 00b8 D907     		lsls	r1, r3, #31
 837 00ba 7CD4     		bmi	.L395
 838              	.L157:
 839 00bc 03F00903 		and	r3, r3, #9
 840 00c0 012B     		cmp	r3, #1
 841 00c2 0DD1     		bne	.L175
 842              	.L206:
 843 00c4 0368     		ldr	r3, [r0]
 844 00c6 4FF40071 		mov	r1, #512
 845 00ca 5B69     		ldr	r3, [r3, #20]
 846 00cc 41F21010 		movw	r0, #4368
 847 00d0 9847     		blx	r3
 848 00d2 0028     		cmp	r0, #0
 849 00d4 B8D0     		beq	.L172
 850 00d6 2868     		ldr	r0, [r5]
 851 00d8 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 852              	.L174:
 853 00da DC07     		lsls	r4, r3, #31
 854 00dc 00F13282 		bmi	.L391
 855              	.L175:
ARM GAS  /tmp/ccfnyGjL.s 			page 16


 856 00e0 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 857 00e4 0168     		ldr	r1, [r0]
 858 00e6 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 859 00e8 0C68     		ldr	r4, [r1]
 860 00ea 4168     		ldr	r1, [r0, #4]
 861 00ec C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 862 00ee 0033     		adds	r3, r3, #0
 863 00f0 18BF     		it	ne
 864 00f2 0123     		movne	r3, #1
 865 00f4 A047     		blx	r4
 866 00f6 2B68     		ldr	r3, [r5]
 867 00f8 55E0     		b	.L171
 868              	.L394:
 869 00fa 0DF10F00 		add	r0, sp, #15
 870 00fe FFF7FEFF 		bl	sd_cmd8
 871 0102 0028     		cmp	r0, #0
 872 0104 A0D0     		beq	.L172
 873 0106 2B68     		ldr	r3, [r5]
 874 0108 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 875 010a D007     		lsls	r0, r2, #31
 876 010c 00F19B80 		bmi	.L396
 877              	.L177:
 878 0110 1B68     		ldr	r3, [r3]
 879 0112 0021     		movs	r1, #0
 880 0114 5B69     		ldr	r3, [r3, #20]
 881 0116 45F20310 		movw	r0, #20739
 882 011a 9847     		blx	r3
 883 011c 0028     		cmp	r0, #0
 884 011e 93D0     		beq	.L172
 885 0120 2B68     		ldr	r3, [r5]
 886 0122 1B68     		ldr	r3, [r3]
 887 0124 9B69     		ldr	r3, [r3, #24]
 888 0126 9847     		blx	r3
 889 0128 2B68     		ldr	r3, [r5]
 890 012a 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 891 012c 010C     		lsrs	r1, r0, #16
 892 012e D007     		lsls	r0, r2, #31
 893 0130 D981     		strh	r1, [r3, #14]	@ movhi
 894 0132 00F18281 		bmi	.L397
 895              	.L196:
 896 0136 1B68     		ldr	r3, [r3]
 897 0138 0904     		lsls	r1, r1, #16
 898 013a 5B69     		ldr	r3, [r3, #20]
 899 013c 43F20710 		movw	r0, #12551
 900 0140 9847     		blx	r3
 901 0142 0028     		cmp	r0, #0
 902 0144 80D0     		beq	.L172
 903 0146 2B68     		ldr	r3, [r5]
 904 0148 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 905 014a D207     		lsls	r2, r2, #31
 906 014c 00F17F81 		bmi	.L398
 907              	.L197:
 908 0150 1A68     		ldr	r2, [r3]
 909 0152 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 910 0154 9368     		ldr	r3, [r2, #8]
 911 0156 9847     		blx	r3
 912 0158 0328     		cmp	r0, #3
ARM GAS  /tmp/ccfnyGjL.s 			page 17


 913 015a 00F25D81 		bhi	.L399
 914              	.L198:
 915 015e 2B68     		ldr	r3, [r5]
 916 0160 1B68     		ldr	r3, [r3]
 917 0162 DB68     		ldr	r3, [r3, #12]
 918 0164 9847     		blx	r3
 919 0166 78B1     		cbz	r0, .L201
 920 0168 2868     		ldr	r0, [r5]
 921 016a 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 922 016c 0268     		ldr	r2, [r0]
 923 016e DC07     		lsls	r4, r3, #31
 924 0170 00F17481 		bmi	.L400
 925              	.L202:
 926 0174 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 927 0178 1468     		ldr	r4, [r2]
 928 017a 4168     		ldr	r1, [r0, #4]
 929 017c 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 930 017e C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 931 0180 0033     		adds	r3, r3, #0
 932 0182 18BF     		it	ne
 933 0184 0123     		movne	r3, #1
 934 0186 A047     		blx	r4
 935              	.L201:
 936 0188 2B68     		ldr	r3, [r5]
 937 018a 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 938 018c D207     		lsls	r2, r2, #31
 939 018e 0AD5     		bpl	.L171
 940 0190 1B68     		ldr	r3, [r3]
 941 0192 4FF40071 		mov	r1, #512
 942 0196 5B69     		ldr	r3, [r3, #20]
 943 0198 41F21010 		movw	r0, #4368
 944 019c 9847     		blx	r3
 945 019e 0028     		cmp	r0, #0
 946 01a0 3FF452AF 		beq	.L172
 947              	.L390:
 948 01a4 2B68     		ldr	r3, [r5]
 949              	.L171:
 950 01a6 2E4D     		ldr	r5, .L407+4
 951 01a8 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 952 01aa 0024     		movs	r4, #0
 953 01ac 012A     		cmp	r2, #1
 954 01ae 1C74     		strb	r4, [r3, #16]
 955 01b0 7FF661AF 		bls	.L392
 956 01b4 65E7     		b	.L212
 957              	.L395:
 958 01b6 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 959 01ba A342     		cmp	r3, r4
 960 01bc 0CBF     		ite	eq
 961 01be 2646     		moveq	r6, r4
 962 01c0 4FF08046 		movne	r6, #1073741824
 963 01c4 41F6EF34 		movw	r4, #7151
 964 01c8 11E0     		b	.L160
 965              	.L401:
 966 01ca 2B68     		ldr	r3, [r5]
 967 01cc 1B68     		ldr	r3, [r3]
 968 01ce 41F22910 		movw	r0, #4393
 969 01d2 5B69     		ldr	r3, [r3, #20]
ARM GAS  /tmp/ccfnyGjL.s 			page 18


 970 01d4 9847     		blx	r3
 971 01d6 98B1     		cbz	r0, .L158
 972 01d8 2B68     		ldr	r3, [r5]
 973 01da 1B68     		ldr	r3, [r3]
 974 01dc 9B69     		ldr	r3, [r3, #24]
 975 01de 9847     		blx	r3
 976 01e0 10F00101 		ands	r1, r0, #1
 977 01e4 00F0CE80 		beq	.L159
 978 01e8 013C     		subs	r4, r4, #1
 979 01ea 2868     		ldr	r0, [r5]
 980 01ec 08D0     		beq	.L158
 981              	.L160:
 982 01ee 0368     		ldr	r3, [r0]
 983 01f0 0021     		movs	r1, #0
 984 01f2 5B69     		ldr	r3, [r3, #20]
 985 01f4 41F23710 		movw	r0, #4407
 986 01f8 9847     		blx	r3
 987 01fa 3146     		mov	r1, r6
 988 01fc 0028     		cmp	r0, #0
 989 01fe E4D1     		bne	.L401
 990              	.L158:
 991 0200 2B68     		ldr	r3, [r5]
 992 0202 0221     		movs	r1, #2
 993 0204 1A68     		ldr	r2, [r3]
 994 0206 5974     		strb	r1, [r3, #17]
 995 0208 5369     		ldr	r3, [r2, #20]
 996 020a 0021     		movs	r1, #0
 997 020c 4FF48850 		mov	r0, #4352
 998 0210 9847     		blx	r3
 999 0212 0028     		cmp	r0, #0
 1000 0214 3FF418AF 		beq	.L172
 1001 0218 41F6EF34 		movw	r4, #7151
 1002              	.L166:
 1003 021c 2B68     		ldr	r3, [r5]
 1004 021e 1B68     		ldr	r3, [r3]
 1005 0220 0021     		movs	r1, #0
 1006 0222 5B69     		ldr	r3, [r3, #20]
 1007 0224 41F20110 		movw	r0, #4353
 1008 0228 9847     		blx	r3
 1009 022a 0028     		cmp	r0, #0
 1010 022c 3FF40CAF 		beq	.L172
 1011 0230 2B68     		ldr	r3, [r5]
 1012 0232 1B68     		ldr	r3, [r3]
 1013 0234 9B69     		ldr	r3, [r3, #24]
 1014 0236 9847     		blx	r3
 1015 0238 10F00101 		ands	r1, r0, #1
 1016 023c 00F04B81 		beq	.L165
 1017 0240 013C     		subs	r4, r4, #1
 1018 0242 EBD1     		bne	.L166
 1019 0244 00E7     		b	.L172
 1020              	.L396:
 1021 0246 9DF80F20 		ldrb	r2, [sp, #15]	@ zero_extendqisi2
 1022 024a 064E     		ldr	r6, .L407+8
 1023 024c 002A     		cmp	r2, #0
 1024 024e 08BF     		it	eq
 1025 0250 4FF4FC16 		moveq	r6, #2064384
 1026 0254 40F63504 		movw	r4, #2101
ARM GAS  /tmp/ccfnyGjL.s 			page 19


 1027 0258 17E0     		b	.L181
 1028              	.L408:
 1029 025a 00BF     		.align	2
 1030              	.L407:
 1031 025c 00000000 		.word	.LANCHOR0
 1032 0260 00000000 		.word	.LANCHOR5
 1033 0264 00801F40 		.word	1075806208
 1034              	.L403:
 1035 0268 2B68     		ldr	r3, [r5]
 1036 026a 1B68     		ldr	r3, [r3]
 1037 026c 44F22950 		movw	r0, #17705
 1038 0270 5B69     		ldr	r3, [r3, #20]
 1039 0272 9847     		blx	r3
 1040 0274 90B1     		cbz	r0, .L178
 1041 0276 2B68     		ldr	r3, [r5]
 1042 0278 1B68     		ldr	r3, [r3]
 1043 027a 9B69     		ldr	r3, [r3, #24]
 1044 027c 9847     		blx	r3
 1045 027e 0028     		cmp	r0, #0
 1046 0280 2B68     		ldr	r3, [r5]
 1047 0282 C0F2B580 		blt	.L402
 1048 0286 013C     		subs	r4, r4, #1
 1049 0288 08D0     		beq	.L178
 1050              	.L181:
 1051 028a 1B68     		ldr	r3, [r3]
 1052 028c 0021     		movs	r1, #0
 1053 028e 5B69     		ldr	r3, [r3, #20]
 1054 0290 41F23710 		movw	r0, #4407
 1055 0294 9847     		blx	r3
 1056 0296 3146     		mov	r1, r6
 1057 0298 0028     		cmp	r0, #0
 1058 029a E5D1     		bne	.L403
 1059              	.L178:
 1060 029c 2B68     		ldr	r3, [r5]
 1061 029e 0221     		movs	r1, #2
 1062 02a0 1A68     		ldr	r2, [r3]
 1063 02a2 5974     		strb	r1, [r3, #17]
 1064 02a4 5369     		ldr	r3, [r2, #20]
 1065 02a6 0021     		movs	r1, #0
 1066 02a8 4FF48040 		mov	r0, #16384
 1067 02ac 9847     		blx	r3
 1068 02ae 0028     		cmp	r0, #0
 1069 02b0 3FF4CAAE 		beq	.L172
 1070 02b4 A84E     		ldr	r6, .L409
 1071 02b6 41F26904 		movw	r4, #4201
 1072 02ba 02E0     		b	.L185
 1073              	.L183:
 1074 02bc 013C     		subs	r4, r4, #1
 1075 02be 3FF4C3AE 		beq	.L172
 1076              	.L185:
 1077 02c2 2B68     		ldr	r3, [r5]
 1078 02c4 1B68     		ldr	r3, [r3]
 1079 02c6 3146     		mov	r1, r6
 1080 02c8 5B69     		ldr	r3, [r3, #20]
 1081 02ca 44F20150 		movw	r0, #17665
 1082 02ce 9847     		blx	r3
 1083 02d0 0028     		cmp	r0, #0
ARM GAS  /tmp/ccfnyGjL.s 			page 20


 1084 02d2 3FF4B9AE 		beq	.L172
 1085 02d6 2B68     		ldr	r3, [r5]
 1086 02d8 1B68     		ldr	r3, [r3]
 1087 02da 9B69     		ldr	r3, [r3, #24]
 1088 02dc 9847     		blx	r3
 1089 02de 021E     		subs	r2, r0, #0
 1090 02e0 ECDA     		bge	.L183
 1091 02e2 02F0C042 		and	r2, r2, #1610612736
 1092 02e6 B2F1804F 		cmp	r2, #1073741824
 1093 02ea 2B68     		ldr	r3, [r5]
 1094 02ec 00F0B881 		beq	.L404
 1095              	.L184:
 1096 02f0 1B68     		ldr	r3, [r3]
 1097 02f2 0021     		movs	r1, #0
 1098 02f4 5B69     		ldr	r3, [r3, #20]
 1099 02f6 45F60230 		movw	r0, #23298
 1100 02fa 9847     		blx	r3
 1101 02fc 0028     		cmp	r0, #0
 1102 02fe 3FF4A3AE 		beq	.L172
 1103 0302 2B68     		ldr	r3, [r5]
 1104 0304 1A68     		ldr	r2, [r3]
 1105 0306 0121     		movs	r1, #1
 1106 0308 D981     		strh	r1, [r3, #14]	@ movhi
 1107 030a 41F20310 		movw	r0, #4355
 1108 030e 5369     		ldr	r3, [r2, #20]
 1109 0310 4FF48031 		mov	r1, #65536
 1110 0314 9847     		blx	r3
 1111 0316 0028     		cmp	r0, #0
 1112 0318 3FF496AE 		beq	.L172
 1113 031c FFF7FEFF 		bl	sd_mmc_cmd9_mci
 1114 0320 0028     		cmp	r0, #0
 1115 0322 3FF491AE 		beq	.L172
 1116 0326 FFF7FEFF 		bl	mmc_decode_csd
 1117 032a 2B68     		ldr	r3, [r5]
 1118 032c D989     		ldrh	r1, [r3, #14]
 1119 032e 1B68     		ldr	r3, [r3]
 1120 0330 0904     		lsls	r1, r1, #16
 1121 0332 5B69     		ldr	r3, [r3, #20]
 1122 0334 43F20710 		movw	r0, #12551
 1123 0338 9847     		blx	r3
 1124 033a 0028     		cmp	r0, #0
 1125 033c 3FF484AE 		beq	.L172
 1126 0340 2868     		ldr	r0, [r5]
 1127 0342 837C     		ldrb	r3, [r0, #18]	@ zero_extendqisi2
 1128 0344 3F2B     		cmp	r3, #63
 1129 0346 00F22B81 		bhi	.L405
 1130 034a 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1131 034e 0168     		ldr	r1, [r0]
 1132 0350 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1133 0352 0C68     		ldr	r4, [r1]
 1134 0354 4168     		ldr	r1, [r0, #4]
 1135 0356 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1136 0358 0033     		adds	r3, r3, #0
 1137 035a 18BF     		it	ne
 1138 035c 0123     		movne	r3, #1
 1139 035e A047     		blx	r4
 1140              	.L192:
ARM GAS  /tmp/ccfnyGjL.s 			page 21


 1141 0360 0A24     		movs	r4, #10
 1142 0362 03E0     		b	.L195
 1143              	.L387:
 1144 0364 14F0FF04 		ands	r4, r4, #255
 1145 0368 3FF46EAE 		beq	.L172
 1146              	.L195:
 1147 036c 2B68     		ldr	r3, [r5]
 1148 036e 1B68     		ldr	r3, [r3]
 1149 0370 4FF40071 		mov	r1, #512
 1150 0374 5B69     		ldr	r3, [r3, #20]
 1151 0376 41F21010 		movw	r0, #4368
 1152 037a 9847     		blx	r3
 1153 037c 013C     		subs	r4, r4, #1
 1154 037e 0028     		cmp	r0, #0
 1155 0380 F0D0     		beq	.L387
 1156 0382 0FE7     		b	.L390
 1157              	.L159:
 1158 0384 2B68     		ldr	r3, [r5]
 1159 0386 1B68     		ldr	r3, [r3]
 1160 0388 40F23A50 		movw	r0, #1338
 1161 038c 5B69     		ldr	r3, [r3, #20]
 1162 038e 9847     		blx	r3
 1163 0390 0028     		cmp	r0, #0
 1164 0392 3FF435AF 		beq	.L158
 1165 0396 2B68     		ldr	r3, [r5]
 1166 0398 1B68     		ldr	r3, [r3]
 1167 039a 9B69     		ldr	r3, [r3, #24]
 1168 039c 9847     		blx	r3
 1169 039e 4200     		lsls	r2, r0, #1
 1170 03a0 2B68     		ldr	r3, [r5]
 1171 03a2 03D5     		bpl	.L162
 1172 03a4 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1173 03a6 42F00802 		orr	r2, r2, #8
 1174 03aa 5A74     		strb	r2, [r3, #17]
 1175              	.L162:
 1176 03ac 1B68     		ldr	r3, [r3]
 1177 03ae 0021     		movs	r1, #0
 1178 03b0 5B69     		ldr	r3, [r3, #20]
 1179 03b2 41F23B10 		movw	r0, #4411
 1180 03b6 9847     		blx	r3
 1181 03b8 0028     		cmp	r0, #0
 1182 03ba 3FF445AE 		beq	.L172
 1183 03be 2868     		ldr	r0, [r5]
 1184 03c0 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1185 03c2 DE07     		lsls	r6, r3, #31
 1186 03c4 7FF57AAE 		bpl	.L157
 1187 03c8 FFF7FEFF 		bl	sd_mmc_cmd9_spi
 1188 03cc 0028     		cmp	r0, #0
 1189 03ce 3FF43BAE 		beq	.L172
 1190 03d2 FFF7FEFF 		bl	sd_decode_csd
 1191 03d6 FFF7FEFF 		bl	sd_acmd51
 1192 03da 0028     		cmp	r0, #0
 1193 03dc 3FF434AE 		beq	.L172
 1194 03e0 2868     		ldr	r0, [r5]
 1195 03e2 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1196 03e4 03F00902 		and	r2, r3, #9
 1197 03e8 012A     		cmp	r2, #1
ARM GAS  /tmp/ccfnyGjL.s 			page 22


 1198 03ea 3FF46BAE 		beq	.L206
 1199 03ee 74E6     		b	.L174
 1200              	.L402:
 1201 03f0 4100     		lsls	r1, r0, #1
 1202 03f2 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1203 03f4 02D5     		bpl	.L180
 1204 03f6 42F00802 		orr	r2, r2, #8
 1205 03fa 5A74     		strb	r2, [r3, #17]
 1206              	.L180:
 1207 03fc 1968     		ldr	r1, [r3]
 1208 03fe D607     		lsls	r6, r2, #31
 1209 0400 4C69     		ldr	r4, [r1, #20]
 1210 0402 7FF585AE 		bpl	.L177
 1211 0406 0021     		movs	r1, #0
 1212 0408 45F60230 		movw	r0, #23298
 1213 040c A047     		blx	r4
 1214 040e 0028     		cmp	r0, #0
 1215 0410 3FF41AAE 		beq	.L172
 1216 0414 2B68     		ldr	r3, [r5]
 1217 0416 7BE6     		b	.L177
 1218              	.L399:
 1219 0418 2868     		ldr	r0, [r5]
 1220 041a 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1221 041c 0268     		ldr	r2, [r0]
 1222 041e DE07     		lsls	r6, r3, #31
 1223 0420 00F1A080 		bmi	.L406
 1224              	.L199:
 1225 0424 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1226 0428 1468     		ldr	r4, [r2]
 1227 042a 4168     		ldr	r1, [r0, #4]
 1228 042c 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1229 042e C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1230 0430 0033     		adds	r3, r3, #0
 1231 0432 18BF     		it	ne
 1232 0434 0123     		movne	r3, #1
 1233 0436 A047     		blx	r4
 1234 0438 91E6     		b	.L198
 1235              	.L397:
 1236 043a FFF7FEFF 		bl	sd_mmc_cmd9_mci
 1237 043e 0028     		cmp	r0, #0
 1238 0440 3FF402AE 		beq	.L172
 1239 0444 FFF7FEFF 		bl	sd_decode_csd
 1240 0448 2B68     		ldr	r3, [r5]
 1241 044a D989     		ldrh	r1, [r3, #14]
 1242 044c 73E6     		b	.L196
 1243              	.L398:
 1244 044e FFF7FEFF 		bl	sd_acmd51
 1245 0452 0028     		cmp	r0, #0
 1246 0454 3FF4F8AD 		beq	.L172
 1247 0458 2B68     		ldr	r3, [r5]
 1248 045a 79E6     		b	.L197
 1249              	.L400:
 1250 045c 837C     		ldrb	r3, [r0, #18]	@ zero_extendqisi2
 1251 045e 102B     		cmp	r3, #16
 1252 0460 7FF688AE 		bls	.L202
 1253 0464 0124     		movs	r4, #1
 1254 0466 0094     		str	r4, [sp]
ARM GAS  /tmp/ccfnyGjL.s 			page 23


 1255 0468 166A     		ldr	r6, [r2, #32]
 1256 046a 3C49     		ldr	r1, .L409+4
 1257 046c 3C48     		ldr	r0, .L409+8
 1258 046e 2346     		mov	r3, r4
 1259 0470 4022     		movs	r2, #64
 1260 0472 B047     		blx	r6
 1261 0474 0028     		cmp	r0, #0
 1262 0476 3FF4E7AD 		beq	.L172
 1263 047a 2B68     		ldr	r3, [r5]
 1264 047c 1B68     		ldr	r3, [r3]
 1265 047e 2146     		mov	r1, r4
 1266 0480 1B6B     		ldr	r3, [r3, #48]
 1267 0482 04A8     		add	r0, sp, #16
 1268 0484 9847     		blx	r3
 1269 0486 0028     		cmp	r0, #0
 1270 0488 3FF4DEAD 		beq	.L172
 1271 048c 2B68     		ldr	r3, [r5]
 1272 048e 1B68     		ldr	r3, [r3]
 1273 0490 5B6B     		ldr	r3, [r3, #52]
 1274 0492 9847     		blx	r3
 1275 0494 0028     		cmp	r0, #0
 1276 0496 3FF4D7AD 		beq	.L172
 1277 049a 2B68     		ldr	r3, [r5]
 1278 049c 1B68     		ldr	r3, [r3]
 1279 049e 9B69     		ldr	r3, [r3, #24]
 1280 04a0 9847     		blx	r3
 1281 04a2 0106     		lsls	r1, r0, #24
 1282 04a4 3FF5D0AD 		bmi	.L172
 1283 04a8 9DF82030 		ldrb	r3, [sp, #32]	@ zero_extendqisi2
 1284 04ac 2868     		ldr	r0, [r5]
 1285 04ae 03F00F03 		and	r3, r3, #15
 1286 04b2 0F2B     		cmp	r3, #15
 1287 04b4 4DD0     		beq	.L204
 1288 04b6 BDF82C30 		ldrh	r3, [sp, #44]
 1289 04ba 002B     		cmp	r3, #0
 1290 04bc 7FF4C4AD 		bne	.L172
 1291 04c0 0368     		ldr	r3, [r0]
 1292 04c2 1B69     		ldr	r3, [r3, #16]
 1293 04c4 9847     		blx	r3
 1294 04c6 2868     		ldr	r0, [r5]
 1295 04c8 4368     		ldr	r3, [r0, #4]
 1296 04ca 80F82540 		strb	r4, [r0, #37]
 1297 04ce A340     		lsls	r3, r3, r4
 1298 04d0 4360     		str	r3, [r0, #4]
 1299 04d2 0268     		ldr	r2, [r0]
 1300 04d4 4EE6     		b	.L202
 1301              	.L165:
 1302 04d6 2B68     		ldr	r3, [r5]
 1303 04d8 1B68     		ldr	r3, [r3]
 1304 04da 40F23A50 		movw	r0, #1338
 1305 04de 5B69     		ldr	r3, [r3, #20]
 1306 04e0 9847     		blx	r3
 1307 04e2 0028     		cmp	r0, #0
 1308 04e4 3FF4B0AD 		beq	.L172
 1309 04e8 2B68     		ldr	r3, [r5]
 1310 04ea 1B68     		ldr	r3, [r3]
 1311 04ec 9B69     		ldr	r3, [r3, #24]
ARM GAS  /tmp/ccfnyGjL.s 			page 24


 1312 04ee 9847     		blx	r3
 1313 04f0 00F0C040 		and	r0, r0, #1610612736
 1314 04f4 B0F1804F 		cmp	r0, #1073741824
 1315 04f8 04D1     		bne	.L167
 1316 04fa 2A68     		ldr	r2, [r5]
 1317 04fc 537C     		ldrb	r3, [r2, #17]	@ zero_extendqisi2
 1318 04fe 43F00803 		orr	r3, r3, #8
 1319 0502 5374     		strb	r3, [r2, #17]
 1320              	.L167:
 1321 0504 2B68     		ldr	r3, [r5]
 1322 0506 1B68     		ldr	r3, [r3]
 1323 0508 0021     		movs	r1, #0
 1324 050a 5B69     		ldr	r3, [r3, #20]
 1325 050c 41F23B10 		movw	r0, #4411
 1326 0510 9847     		blx	r3
 1327 0512 0028     		cmp	r0, #0
 1328 0514 3FF498AD 		beq	.L172
 1329 0518 FFF7FEFF 		bl	sd_mmc_cmd9_spi
 1330 051c 0028     		cmp	r0, #0
 1331 051e 3FF493AD 		beq	.L172
 1332 0522 FFF7FEFF 		bl	mmc_decode_csd
 1333 0526 2B68     		ldr	r3, [r5]
 1334 0528 9B7C     		ldrb	r3, [r3, #18]	@ zero_extendqisi2
 1335 052a 3F2B     		cmp	r3, #63
 1336 052c 32D8     		bhi	.L168
 1337              	.L170:
 1338 052e 2B68     		ldr	r3, [r5]
 1339 0530 1B68     		ldr	r3, [r3]
 1340 0532 4FF40071 		mov	r1, #512
 1341 0536 5B69     		ldr	r3, [r3, #20]
 1342 0538 41F21010 		movw	r0, #4368
 1343 053c 9847     		blx	r3
 1344 053e 0028     		cmp	r0, #0
 1345 0540 3FF482AD 		beq	.L172
 1346              	.L391:
 1347 0544 FFF7FEFF 		bl	sd_mmc_cmd13
 1348 0548 0028     		cmp	r0, #0
 1349 054a 3FF47DAD 		beq	.L172
 1350 054e 2868     		ldr	r0, [r5]
 1351 0550 C6E5     		b	.L175
 1352              	.L204:
 1353 0552 0268     		ldr	r2, [r0]
 1354 0554 0EE6     		b	.L202
 1355              	.L410:
 1356 0556 00BF     		.align	2
 1357              	.L409:
 1358 0558 00801F40 		.word	1075806208
 1359 055c 01FFFF80 		.word	-2130706687
 1360 0560 06110800 		.word	528646
 1361              	.L406:
 1362 0564 C189     		ldrh	r1, [r0, #14]
 1363 0566 5369     		ldr	r3, [r2, #20]
 1364 0568 0904     		lsls	r1, r1, #16
 1365 056a 41F23710 		movw	r0, #4407
 1366 056e 9847     		blx	r3
 1367 0570 0028     		cmp	r0, #0
 1368 0572 3FF469AD 		beq	.L172
ARM GAS  /tmp/ccfnyGjL.s 			page 25


 1369 0576 2B68     		ldr	r3, [r5]
 1370 0578 1B68     		ldr	r3, [r3]
 1371 057a 0221     		movs	r1, #2
 1372 057c 5B69     		ldr	r3, [r3, #20]
 1373 057e 41F20610 		movw	r0, #4358
 1374 0582 9847     		blx	r3
 1375 0584 0028     		cmp	r0, #0
 1376 0586 3FF45FAD 		beq	.L172
 1377 058a 2868     		ldr	r0, [r5]
 1378 058c 0423     		movs	r3, #4
 1379 058e 0268     		ldr	r2, [r0]
 1380 0590 0375     		strb	r3, [r0, #20]
 1381 0592 47E7     		b	.L199
 1382              	.L168:
 1383 0594 04A8     		add	r0, sp, #16
 1384 0596 FFF7FEFF 		bl	mmc_cmd8
 1385 059a 0028     		cmp	r0, #0
 1386 059c C7D1     		bne	.L170
 1387 059e 53E5     		b	.L172
 1388              	.L405:
 1389 05a0 04A8     		add	r0, sp, #16
 1390 05a2 FFF7FEFF 		bl	mmc_cmd8
 1391 05a6 0028     		cmp	r0, #0
 1392 05a8 3FF44EAD 		beq	.L172
 1393 05ac 2B68     		ldr	r3, [r5]
 1394 05ae 1A68     		ldr	r2, [r3]
 1395 05b0 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1396 05b2 9368     		ldr	r3, [r2, #8]
 1397 05b4 9847     		blx	r3
 1398 05b6 0328     		cmp	r0, #3
 1399 05b8 29D9     		bls	.L188
 1400 05ba 2B68     		ldr	r3, [r5]
 1401 05bc 1A68     		ldr	r2, [r3]
 1402 05be D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1403 05c0 9368     		ldr	r3, [r2, #8]
 1404 05c2 9847     		blx	r3
 1405 05c4 0428     		cmp	r0, #4
 1406 05c6 0446     		mov	r4, r0
 1407 05c8 4FD0     		beq	.L208
 1408 05ca 2949     		ldr	r1, .L411
 1409 05cc 294B     		ldr	r3, .L411+4
 1410 05ce 0828     		cmp	r0, #8
 1411 05d0 18BF     		it	ne
 1412 05d2 1946     		movne	r1, r3
 1413              	.L190:
 1414 05d4 2B68     		ldr	r3, [r5]
 1415 05d6 1B68     		ldr	r3, [r3]
 1416 05d8 43F20610 		movw	r0, #12550
 1417 05dc 5B69     		ldr	r3, [r3, #20]
 1418 05de 9847     		blx	r3
 1419 05e0 0028     		cmp	r0, #0
 1420 05e2 3FF431AD 		beq	.L172
 1421 05e6 2B68     		ldr	r3, [r5]
 1422 05e8 1B68     		ldr	r3, [r3]
 1423 05ea 9B69     		ldr	r3, [r3, #24]
 1424 05ec 9847     		blx	r3
 1425 05ee 0206     		lsls	r2, r0, #24
ARM GAS  /tmp/ccfnyGjL.s 			page 26


 1426 05f0 3FF52AAD 		bmi	.L172
 1427 05f4 2868     		ldr	r0, [r5]
 1428 05f6 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1429 05fa 0168     		ldr	r1, [r0]
 1430 05fc 0475     		strb	r4, [r0, #20]
 1431 05fe 0033     		adds	r3, r3, #0
 1432 0600 2246     		mov	r2, r4
 1433 0602 18BF     		it	ne
 1434 0604 0123     		movne	r3, #1
 1435 0606 0C68     		ldr	r4, [r1]
 1436 0608 4168     		ldr	r1, [r0, #4]
 1437 060a C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1438 060c A047     		blx	r4
 1439              	.L188:
 1440 060e 2B68     		ldr	r3, [r5]
 1441 0610 1B68     		ldr	r3, [r3]
 1442 0612 DB68     		ldr	r3, [r3, #12]
 1443 0614 9847     		blx	r3
 1444 0616 0028     		cmp	r0, #0
 1445 0618 3FF4A2AE 		beq	.L192
 1446 061c 2B68     		ldr	r3, [r5]
 1447 061e 9DF81020 		ldrb	r2, [sp, #16]	@ zero_extendqisi2
 1448 0622 1B68     		ldr	r3, [r3]
 1449 0624 5B69     		ldr	r3, [r3, #20]
 1450 0626 002A     		cmp	r2, #0
 1451 0628 3FF49AAE 		beq	.L192
 1452 062c 1249     		ldr	r1, .L411+8
 1453 062e 43F20610 		movw	r0, #12550
 1454 0632 9847     		blx	r3
 1455 0634 0028     		cmp	r0, #0
 1456 0636 3FF407AD 		beq	.L172
 1457 063a 2B68     		ldr	r3, [r5]
 1458 063c 1B68     		ldr	r3, [r3]
 1459 063e 9B69     		ldr	r3, [r3, #24]
 1460 0640 9847     		blx	r3
 1461 0642 0306     		lsls	r3, r0, #24
 1462 0644 3FF500AD 		bmi	.L172
 1463 0648 2868     		ldr	r0, [r5]
 1464 064a 0C49     		ldr	r1, .L411+12
 1465 064c 0268     		ldr	r2, [r0]
 1466 064e 4160     		str	r1, [r0, #4]
 1467 0650 0123     		movs	r3, #1
 1468 0652 80F82530 		strb	r3, [r0, #37]
 1469 0656 1468     		ldr	r4, [r2]
 1470 0658 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1471 065a C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1472 065c A047     		blx	r4
 1473 065e 7FE6     		b	.L192
 1474              	.L404:
 1475 0660 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1476 0662 42F00802 		orr	r2, r2, #8
 1477 0666 5A74     		strb	r2, [r3, #17]
 1478 0668 42E6     		b	.L184
 1479              	.L208:
 1480 066a 0549     		ldr	r1, .L411+16
 1481 066c B2E7     		b	.L190
 1482              	.L412:
ARM GAS  /tmp/ccfnyGjL.s 			page 27


 1483 066e 00BF     		.align	2
 1484              	.L411:
 1485 0670 0002B701 		.word	28770816
 1486 0674 0000B701 		.word	28770304
 1487 0678 0001B903 		.word	62456064
 1488 067c 00751903 		.word	52000000
 1489 0680 0001B701 		.word	28770560
 1490              		.size	sd_mmc_check, .-sd_mmc_check
 1491              		.section	.text.sd_mmc_get_type,"ax",%progbits
 1492              		.align	1
 1493              		.p2align 2,,3
 1494              		.global	sd_mmc_get_type
 1495              		.syntax unified
 1496              		.thumb
 1497              		.thumb_func
 1498              		.fpu fpv4-sp-d16
 1499              		.type	sd_mmc_get_type, %function
 1500              	sd_mmc_get_type:
 1501              		@ args = 0, pretend = 0, frame = 0
 1502              		@ frame_needed = 0, uses_anonymous_args = 0
 1503 0000 0128     		cmp	r0, #1
 1504 0002 01D9     		bls	.L414
 1505 0004 0020     		movs	r0, #0
 1506 0006 7047     		bx	lr
 1507              	.L414:
 1508 0008 38B5     		push	{r3, r4, r5, lr}
 1509 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.1
 1510 000e 70B9     		cbnz	r0, .L416
 1511 0010 084C     		ldr	r4, .L421
 1512 0012 094D     		ldr	r5, .L421+4
 1513 0014 2278     		ldrb	r2, [r4]	@ zero_extendqisi2
 1514 0016 2B68     		ldr	r3, [r5]
 1515 0018 012A     		cmp	r2, #1
 1516 001a 06D8     		bhi	.L417
 1517 001c 1A68     		ldr	r2, [r3]
 1518 001e D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1519 0020 5368     		ldr	r3, [r2, #4]
 1520 0022 9847     		blx	r3
 1521 0024 FF22     		movs	r2, #255
 1522 0026 2B68     		ldr	r3, [r5]
 1523 0028 2270     		strb	r2, [r4]
 1524              	.L417:
 1525 002a 587C     		ldrb	r0, [r3, #17]	@ zero_extendqisi2
 1526 002c 38BD     		pop	{r3, r4, r5, pc}
 1527              	.L416:
 1528 002e 0020     		movs	r0, #0
 1529 0030 38BD     		pop	{r3, r4, r5, pc}
 1530              	.L422:
 1531 0032 00BF     		.align	2
 1532              	.L421:
 1533 0034 00000000 		.word	.LANCHOR5
 1534 0038 00000000 		.word	.LANCHOR0
 1535              		.size	sd_mmc_get_type, .-sd_mmc_get_type
 1536              		.section	.text.sd_mmc_get_version,"ax",%progbits
 1537              		.align	1
 1538              		.p2align 2,,3
 1539              		.global	sd_mmc_get_version
ARM GAS  /tmp/ccfnyGjL.s 			page 28


 1540              		.syntax unified
 1541              		.thumb
 1542              		.thumb_func
 1543              		.fpu fpv4-sp-d16
 1544              		.type	sd_mmc_get_version, %function
 1545              	sd_mmc_get_version:
 1546              		@ args = 0, pretend = 0, frame = 0
 1547              		@ frame_needed = 0, uses_anonymous_args = 0
 1548 0000 0128     		cmp	r0, #1
 1549 0002 01D9     		bls	.L424
 1550 0004 0020     		movs	r0, #0
 1551 0006 7047     		bx	lr
 1552              	.L424:
 1553 0008 38B5     		push	{r3, r4, r5, lr}
 1554 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.1
 1555 000e 70B9     		cbnz	r0, .L426
 1556 0010 084C     		ldr	r4, .L431
 1557 0012 094D     		ldr	r5, .L431+4
 1558 0014 2278     		ldrb	r2, [r4]	@ zero_extendqisi2
 1559 0016 2B68     		ldr	r3, [r5]
 1560 0018 012A     		cmp	r2, #1
 1561 001a 06D8     		bhi	.L427
 1562 001c 1A68     		ldr	r2, [r3]
 1563 001e D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1564 0020 5368     		ldr	r3, [r2, #4]
 1565 0022 9847     		blx	r3
 1566 0024 FF22     		movs	r2, #255
 1567 0026 2B68     		ldr	r3, [r5]
 1568 0028 2270     		strb	r2, [r4]
 1569              	.L427:
 1570 002a 987C     		ldrb	r0, [r3, #18]	@ zero_extendqisi2
 1571 002c 38BD     		pop	{r3, r4, r5, pc}
 1572              	.L426:
 1573 002e 0020     		movs	r0, #0
 1574 0030 38BD     		pop	{r3, r4, r5, pc}
 1575              	.L432:
 1576 0032 00BF     		.align	2
 1577              	.L431:
 1578 0034 00000000 		.word	.LANCHOR5
 1579 0038 00000000 		.word	.LANCHOR0
 1580              		.size	sd_mmc_get_version, .-sd_mmc_get_version
 1581              		.section	.text.sd_mmc_get_capacity,"ax",%progbits
 1582              		.align	1
 1583              		.p2align 2,,3
 1584              		.global	sd_mmc_get_capacity
 1585              		.syntax unified
 1586              		.thumb
 1587              		.thumb_func
 1588              		.fpu fpv4-sp-d16
 1589              		.type	sd_mmc_get_capacity, %function
 1590              	sd_mmc_get_capacity:
 1591              		@ args = 0, pretend = 0, frame = 0
 1592              		@ frame_needed = 0, uses_anonymous_args = 0
 1593 0000 0128     		cmp	r0, #1
 1594 0002 01D9     		bls	.L434
 1595 0004 0020     		movs	r0, #0
 1596 0006 7047     		bx	lr
ARM GAS  /tmp/ccfnyGjL.s 			page 29


 1597              	.L434:
 1598 0008 38B5     		push	{r3, r4, r5, lr}
 1599 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.1
 1600 000e 70B9     		cbnz	r0, .L436
 1601 0010 084C     		ldr	r4, .L441
 1602 0012 094D     		ldr	r5, .L441+4
 1603 0014 2278     		ldrb	r2, [r4]	@ zero_extendqisi2
 1604 0016 2B68     		ldr	r3, [r5]
 1605 0018 012A     		cmp	r2, #1
 1606 001a 06D8     		bhi	.L437
 1607 001c 1A68     		ldr	r2, [r3]
 1608 001e D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1609 0020 5368     		ldr	r3, [r2, #4]
 1610 0022 9847     		blx	r3
 1611 0024 FF22     		movs	r2, #255
 1612 0026 2B68     		ldr	r3, [r5]
 1613 0028 2270     		strb	r2, [r4]
 1614              	.L437:
 1615 002a 9868     		ldr	r0, [r3, #8]
 1616 002c 38BD     		pop	{r3, r4, r5, pc}
 1617              	.L436:
 1618 002e 0020     		movs	r0, #0
 1619 0030 38BD     		pop	{r3, r4, r5, pc}
 1620              	.L442:
 1621 0032 00BF     		.align	2
 1622              	.L441:
 1623 0034 00000000 		.word	.LANCHOR5
 1624 0038 00000000 		.word	.LANCHOR0
 1625              		.size	sd_mmc_get_capacity, .-sd_mmc_get_capacity
 1626              		.section	.text.sd_mmc_is_write_protected,"ax",%progbits
 1627              		.align	1
 1628              		.p2align 2,,3
 1629              		.global	sd_mmc_is_write_protected
 1630              		.syntax unified
 1631              		.thumb
 1632              		.thumb_func
 1633              		.fpu fpv4-sp-d16
 1634              		.type	sd_mmc_is_write_protected, %function
 1635              	sd_mmc_is_write_protected:
 1636              		@ args = 0, pretend = 0, frame = 0
 1637              		@ frame_needed = 0, uses_anonymous_args = 0
 1638 0000 08B5     		push	{r3, lr}
 1639 0002 084B     		ldr	r3, .L447
 1640 0004 00EB8000 		add	r0, r0, r0, lsl #2
 1641 0008 03EBC003 		add	r3, r3, r0, lsl #3
 1642 000c 187B     		ldrb	r0, [r3, #12]	@ zero_extendqisi2
 1643 000e FF28     		cmp	r0, #255
 1644 0010 05D0     		beq	.L445
 1645 0012 FFF7FEFF 		bl	digitalRead
 1646 0016 80F00100 		eor	r0, r0, #1
 1647 001a C0B2     		uxtb	r0, r0
 1648 001c 08BD     		pop	{r3, pc}
 1649              	.L445:
 1650 001e 0020     		movs	r0, #0
 1651 0020 08BD     		pop	{r3, pc}
 1652              	.L448:
 1653 0022 00BF     		.align	2
ARM GAS  /tmp/ccfnyGjL.s 			page 30


 1654              	.L447:
 1655 0024 00000000 		.word	.LANCHOR4
 1656              		.size	sd_mmc_is_write_protected, .-sd_mmc_is_write_protected
 1657              		.section	.text.sd_mmc_unmount,"ax",%progbits
 1658              		.align	1
 1659              		.p2align 2,,3
 1660              		.global	sd_mmc_unmount
 1661              		.syntax unified
 1662              		.thumb
 1663              		.thumb_func
 1664              		.fpu fpv4-sp-d16
 1665              		.type	sd_mmc_unmount, %function
 1666              	sd_mmc_unmount:
 1667              		@ args = 0, pretend = 0, frame = 0
 1668              		@ frame_needed = 0, uses_anonymous_args = 0
 1669              		@ link register save eliminated.
 1670 0000 034B     		ldr	r3, .L450
 1671 0002 00EB8000 		add	r0, r0, r0, lsl #2
 1672 0006 03EBC003 		add	r3, r3, r0, lsl #3
 1673 000a 0422     		movs	r2, #4
 1674 000c 1A74     		strb	r2, [r3, #16]
 1675 000e 7047     		bx	lr
 1676              	.L451:
 1677              		.align	2
 1678              	.L450:
 1679 0010 00000000 		.word	.LANCHOR4
 1680              		.size	sd_mmc_unmount, .-sd_mmc_unmount
 1681              		.section	.text.sd_mmc_get_interface_speed,"ax",%progbits
 1682              		.align	1
 1683              		.p2align 2,,3
 1684              		.global	sd_mmc_get_interface_speed
 1685              		.syntax unified
 1686              		.thumb
 1687              		.thumb_func
 1688              		.fpu fpv4-sp-d16
 1689              		.type	sd_mmc_get_interface_speed, %function
 1690              	sd_mmc_get_interface_speed:
 1691              		@ args = 0, pretend = 0, frame = 0
 1692              		@ frame_needed = 0, uses_anonymous_args = 0
 1693              		@ link register save eliminated.
 1694 0000 00EB8000 		add	r0, r0, r0, lsl #2
 1695 0004 024B     		ldr	r3, .L453
 1696 0006 53F83030 		ldr	r3, [r3, r0, lsl #3]
 1697 000a 1B6C     		ldr	r3, [r3, #64]
 1698 000c 1847     		bx	r3
 1699              	.L454:
 1700 000e 00BF     		.align	2
 1701              	.L453:
 1702 0010 00000000 		.word	.LANCHOR4
 1703              		.size	sd_mmc_get_interface_speed, .-sd_mmc_get_interface_speed
 1704              		.section	.text.sd_mmc_init_read_blocks,"ax",%progbits
 1705              		.align	1
 1706              		.p2align 2,,3
 1707              		.global	sd_mmc_init_read_blocks
 1708              		.syntax unified
 1709              		.thumb
 1710              		.thumb_func
ARM GAS  /tmp/ccfnyGjL.s 			page 31


 1711              		.fpu fpv4-sp-d16
 1712              		.type	sd_mmc_init_read_blocks, %function
 1713              	sd_mmc_init_read_blocks:
 1714              		@ args = 0, pretend = 0, frame = 0
 1715              		@ frame_needed = 0, uses_anonymous_args = 0
 1716 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1717 0002 0128     		cmp	r0, #1
 1718 0004 83B0     		sub	sp, sp, #12
 1719 0006 03D9     		bls	.L475
 1720 0008 0424     		movs	r4, #4
 1721              	.L456:
 1722 000a 2046     		mov	r0, r4
 1723 000c 03B0     		add	sp, sp, #12
 1724              		@ sp needed
 1725 000e F0BD     		pop	{r4, r5, r6, r7, pc}
 1726              	.L475:
 1727 0010 0E46     		mov	r6, r1
 1728 0012 1546     		mov	r5, r2
 1729 0014 FFF7FEFF 		bl	sd_mmc_select_slot.part.1
 1730 0018 0446     		mov	r4, r0
 1731 001a 0028     		cmp	r0, #0
 1732 001c F5D1     		bne	.L456
 1733 001e FFF7FEFF 		bl	sd_mmc_cmd13
 1734 0022 78B9     		cbnz	r0, .L457
 1735 0024 1D4C     		ldr	r4, .L476
 1736 0026 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1737 0028 012B     		cmp	r3, #1
 1738 002a 07D8     		bhi	.L470
 1739 002c 1C4B     		ldr	r3, .L476+4
 1740 002e 1B68     		ldr	r3, [r3]
 1741              	.L471:
 1742 0030 1A68     		ldr	r2, [r3]
 1743 0032 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1744 0034 5368     		ldr	r3, [r2, #4]
 1745 0036 9847     		blx	r3
 1746 0038 FF23     		movs	r3, #255
 1747 003a 2370     		strb	r3, [r4]
 1748              	.L470:
 1749 003c 0524     		movs	r4, #5
 1750 003e 2046     		mov	r0, r4
 1751 0040 03B0     		add	sp, sp, #12
 1752              		@ sp needed
 1753 0042 F0BD     		pop	{r4, r5, r6, r7, pc}
 1754              	.L457:
 1755 0044 164F     		ldr	r7, .L476+4
 1756 0046 1749     		ldr	r1, .L476+8
 1757 0048 3B68     		ldr	r3, [r7]
 1758 004a 1748     		ldr	r0, .L476+12
 1759 004c 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1760 004e 1B68     		ldr	r3, [r3]
 1761 0050 012D     		cmp	r5, #1
 1762 0052 98BF     		it	ls
 1763 0054 0846     		movls	r0, r1
 1764 0056 1207     		lsls	r2, r2, #28
 1765 0058 4FF00102 		mov	r2, #1
 1766 005c 58BF     		it	pl
 1767 005e 7602     		lslpl	r6, r6, #9
ARM GAS  /tmp/ccfnyGjL.s 			page 32


 1768 0060 0092     		str	r2, [sp]
 1769 0062 3146     		mov	r1, r6
 1770 0064 4FF40072 		mov	r2, #512
 1771 0068 1E6A     		ldr	r6, [r3, #32]
 1772 006a 2B46     		mov	r3, r5
 1773 006c B047     		blx	r6
 1774 006e 70B1     		cbz	r0, .L474
 1775 0070 3B68     		ldr	r3, [r7]
 1776 0072 1B68     		ldr	r3, [r3]
 1777 0074 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 1778 0078 22B9     		cbnz	r2, .L463
 1779 007a 9B69     		ldr	r3, [r3, #24]
 1780 007c 9847     		blx	r3
 1781 007e 0B4B     		ldr	r3, .L476+16
 1782 0080 0340     		ands	r3, r3, r0
 1783 0082 23B9     		cbnz	r3, .L474
 1784              	.L463:
 1785 0084 0A4A     		ldr	r2, .L476+20
 1786 0086 0B4B     		ldr	r3, .L476+24
 1787 0088 1580     		strh	r5, [r2]	@ movhi
 1788 008a 1D80     		strh	r5, [r3]	@ movhi
 1789 008c BDE7     		b	.L456
 1790              	.L474:
 1791 008e 034C     		ldr	r4, .L476
 1792 0090 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1793 0092 012B     		cmp	r3, #1
 1794 0094 D2D8     		bhi	.L470
 1795 0096 3B68     		ldr	r3, [r7]
 1796 0098 CAE7     		b	.L471
 1797              	.L477:
 1798 009a 00BF     		.align	2
 1799              	.L476:
 1800 009c 00000000 		.word	.LANCHOR5
 1801 00a0 00000000 		.word	.LANCHOR0
 1802 00a4 11110800 		.word	528657
 1803 00a8 12111000 		.word	1052946
 1804 00ac 000058E4 		.word	-463994880
 1805 00b0 00000000 		.word	.LANCHOR8
 1806 00b4 00000000 		.word	.LANCHOR9
 1807              		.size	sd_mmc_init_read_blocks, .-sd_mmc_init_read_blocks
 1808              		.section	.text.sd_mmc_start_read_blocks,"ax",%progbits
 1809              		.align	1
 1810              		.p2align 2,,3
 1811              		.global	sd_mmc_start_read_blocks
 1812              		.syntax unified
 1813              		.thumb
 1814              		.thumb_func
 1815              		.fpu fpv4-sp-d16
 1816              		.type	sd_mmc_start_read_blocks, %function
 1817              	sd_mmc_start_read_blocks:
 1818              		@ args = 0, pretend = 0, frame = 0
 1819              		@ frame_needed = 0, uses_anonymous_args = 0
 1820 0000 094B     		ldr	r3, .L483
 1821 0002 1B68     		ldr	r3, [r3]
 1822 0004 1B68     		ldr	r3, [r3]
 1823 0006 10B5     		push	{r4, lr}
 1824 0008 1B6B     		ldr	r3, [r3, #48]
ARM GAS  /tmp/ccfnyGjL.s 			page 33


 1825 000a 0C46     		mov	r4, r1
 1826 000c 9847     		blx	r3
 1827 000e 28B1     		cbz	r0, .L482
 1828 0010 064B     		ldr	r3, .L483+4
 1829 0012 1988     		ldrh	r1, [r3]
 1830 0014 091B     		subs	r1, r1, r4
 1831 0016 1980     		strh	r1, [r3]	@ movhi
 1832 0018 0020     		movs	r0, #0
 1833 001a 10BD     		pop	{r4, pc}
 1834              	.L482:
 1835 001c 034A     		ldr	r2, .L483+4
 1836 001e 0346     		mov	r3, r0
 1837 0020 1380     		strh	r3, [r2]	@ movhi
 1838 0022 0520     		movs	r0, #5
 1839 0024 10BD     		pop	{r4, pc}
 1840              	.L484:
 1841 0026 00BF     		.align	2
 1842              	.L483:
 1843 0028 00000000 		.word	.LANCHOR0
 1844 002c 00000000 		.word	.LANCHOR8
 1845              		.size	sd_mmc_start_read_blocks, .-sd_mmc_start_read_blocks
 1846              		.section	.text.sd_mmc_wait_end_of_read_blocks,"ax",%progbits
 1847              		.align	1
 1848              		.p2align 2,,3
 1849              		.global	sd_mmc_wait_end_of_read_blocks
 1850              		.syntax unified
 1851              		.thumb
 1852              		.thumb_func
 1853              		.fpu fpv4-sp-d16
 1854              		.type	sd_mmc_wait_end_of_read_blocks, %function
 1855              	sd_mmc_wait_end_of_read_blocks:
 1856              		@ args = 0, pretend = 0, frame = 0
 1857              		@ frame_needed = 0, uses_anonymous_args = 0
 1858 0000 38B5     		push	{r3, r4, r5, lr}
 1859 0002 184C     		ldr	r4, .L500
 1860 0004 2368     		ldr	r3, [r4]
 1861 0006 1B68     		ldr	r3, [r3]
 1862 0008 5B6B     		ldr	r3, [r3, #52]
 1863 000a 0546     		mov	r5, r0
 1864 000c 9847     		blx	r3
 1865 000e 38B3     		cbz	r0, .L492
 1866 0010 154B     		ldr	r3, .L500+4
 1867 0012 0DB3     		cbz	r5, .L487
 1868 0014 0022     		movs	r2, #0
 1869 0016 1A80     		strh	r2, [r3]	@ movhi
 1870              	.L488:
 1871 0018 144B     		ldr	r3, .L500+8
 1872 001a 1B88     		ldrh	r3, [r3]
 1873 001c 012B     		cmp	r3, #1
 1874 001e 0ED0     		beq	.L491
 1875 0020 2368     		ldr	r3, [r4]
 1876 0022 1B68     		ldr	r3, [r3]
 1877 0024 0021     		movs	r1, #0
 1878 0026 5B6A     		ldr	r3, [r3, #36]
 1879 0028 43F20C10 		movw	r0, #12556
 1880 002c 9847     		blx	r3
 1881 002e 30B9     		cbnz	r0, .L491
ARM GAS  /tmp/ccfnyGjL.s 			page 34


 1882 0030 2368     		ldr	r3, [r4]
 1883 0032 1B68     		ldr	r3, [r3]
 1884 0034 0146     		mov	r1, r0
 1885 0036 5B6A     		ldr	r3, [r3, #36]
 1886 0038 43F20C10 		movw	r0, #12556
 1887 003c 9847     		blx	r3
 1888              	.L491:
 1889 003e 0C4D     		ldr	r5, .L500+12
 1890 0040 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 1891 0042 012B     		cmp	r3, #1
 1892 0044 06D8     		bhi	.L498
 1893 0046 2368     		ldr	r3, [r4]
 1894 0048 1A68     		ldr	r2, [r3]
 1895 004a D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1896 004c 5368     		ldr	r3, [r2, #4]
 1897 004e 9847     		blx	r3
 1898 0050 FF23     		movs	r3, #255
 1899 0052 2B70     		strb	r3, [r5]
 1900              	.L498:
 1901 0054 0020     		movs	r0, #0
 1902 0056 38BD     		pop	{r3, r4, r5, pc}
 1903              	.L487:
 1904 0058 1B88     		ldrh	r3, [r3]
 1905 005a 002B     		cmp	r3, #0
 1906 005c DCD0     		beq	.L488
 1907 005e F9E7     		b	.L498
 1908              	.L492:
 1909 0060 0520     		movs	r0, #5
 1910 0062 38BD     		pop	{r3, r4, r5, pc}
 1911              	.L501:
 1912              		.align	2
 1913              	.L500:
 1914 0064 00000000 		.word	.LANCHOR0
 1915 0068 00000000 		.word	.LANCHOR8
 1916 006c 00000000 		.word	.LANCHOR9
 1917 0070 00000000 		.word	.LANCHOR5
 1918              		.size	sd_mmc_wait_end_of_read_blocks, .-sd_mmc_wait_end_of_read_blocks
 1919              		.section	.text.sd_mmc_init_write_blocks,"ax",%progbits
 1920              		.align	1
 1921              		.p2align 2,,3
 1922              		.global	sd_mmc_init_write_blocks
 1923              		.syntax unified
 1924              		.thumb
 1925              		.thumb_func
 1926              		.fpu fpv4-sp-d16
 1927              		.type	sd_mmc_init_write_blocks, %function
 1928              	sd_mmc_init_write_blocks:
 1929              		@ args = 0, pretend = 0, frame = 0
 1930              		@ frame_needed = 0, uses_anonymous_args = 0
 1931 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1932 0002 0128     		cmp	r0, #1
 1933 0004 83B0     		sub	sp, sp, #12
 1934 0006 03D9     		bls	.L527
 1935 0008 0425     		movs	r5, #4
 1936              	.L515:
 1937 000a 2846     		mov	r0, r5
 1938 000c 03B0     		add	sp, sp, #12
ARM GAS  /tmp/ccfnyGjL.s 			page 35


 1939              		@ sp needed
 1940 000e F0BD     		pop	{r4, r5, r6, r7, pc}
 1941              	.L527:
 1942 0010 0446     		mov	r4, r0
 1943 0012 0F46     		mov	r7, r1
 1944 0014 1646     		mov	r6, r2
 1945 0016 FFF7FEFF 		bl	sd_mmc_select_slot.part.1
 1946 001a 0546     		mov	r5, r0
 1947 001c 0028     		cmp	r0, #0
 1948 001e F4D1     		bne	.L515
 1949 0020 264B     		ldr	r3, .L530
 1950 0022 04EB8404 		add	r4, r4, r4, lsl #2
 1951 0026 03EBC404 		add	r4, r3, r4, lsl #3
 1952 002a 207B     		ldrb	r0, [r4, #12]	@ zero_extendqisi2
 1953 002c FF28     		cmp	r0, #255
 1954 002e 23D1     		bne	.L528
 1955              	.L504:
 1956 0030 234C     		ldr	r4, .L530+4
 1957 0032 2448     		ldr	r0, .L530+8
 1958 0034 2368     		ldr	r3, [r4]
 1959 0036 2449     		ldr	r1, .L530+12
 1960 0038 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1961 003a 012E     		cmp	r6, #1
 1962 003c 98BF     		it	ls
 1963 003e 0846     		movls	r0, r1
 1964 0040 1207     		lsls	r2, r2, #28
 1965 0042 00D4     		bmi	.L506
 1966 0044 7F02     		lsls	r7, r7, #9
 1967              	.L506:
 1968 0046 1B68     		ldr	r3, [r3]
 1969 0048 0122     		movs	r2, #1
 1970 004a 0092     		str	r2, [sp]
 1971 004c 3946     		mov	r1, r7
 1972 004e 4FF40072 		mov	r2, #512
 1973 0052 1F6A     		ldr	r7, [r3, #32]
 1974 0054 3346     		mov	r3, r6
 1975 0056 B847     		blx	r7
 1976 0058 00B3     		cbz	r0, .L526
 1977 005a 2368     		ldr	r3, [r4]
 1978 005c 1B68     		ldr	r3, [r3]
 1979 005e 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 1980 0062 22B9     		cbnz	r2, .L509
 1981 0064 9B69     		ldr	r3, [r3, #24]
 1982 0066 9847     		blx	r3
 1983 0068 184B     		ldr	r3, .L530+16
 1984 006a 0340     		ands	r3, r3, r0
 1985 006c B3B9     		cbnz	r3, .L526
 1986              	.L509:
 1987 006e 184A     		ldr	r2, .L530+20
 1988 0070 184B     		ldr	r3, .L530+24
 1989 0072 1680     		strh	r6, [r2]	@ movhi
 1990 0074 1E80     		strh	r6, [r3]	@ movhi
 1991 0076 C8E7     		b	.L515
 1992              	.L528:
 1993 0078 FFF7FEFF 		bl	digitalRead
 1994 007c 0028     		cmp	r0, #0
 1995 007e D7D1     		bne	.L504
ARM GAS  /tmp/ccfnyGjL.s 			page 36


 1996 0080 154C     		ldr	r4, .L530+28
 1997 0082 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1998 0084 012B     		cmp	r3, #1
 1999 0086 16D8     		bhi	.L529
 2000 0088 0D4B     		ldr	r3, .L530+4
 2001 008a 1B68     		ldr	r3, [r3]
 2002 008c 1A68     		ldr	r2, [r3]
 2003 008e D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 2004 0090 5368     		ldr	r3, [r2, #4]
 2005 0092 9847     		blx	r3
 2006 0094 FF23     		movs	r3, #255
 2007 0096 2370     		strb	r3, [r4]
 2008 0098 0725     		movs	r5, #7
 2009 009a B6E7     		b	.L515
 2010              	.L526:
 2011 009c 0E4D     		ldr	r5, .L530+28
 2012 009e 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 2013 00a0 012B     		cmp	r3, #1
 2014 00a2 06D8     		bhi	.L525
 2015 00a4 2368     		ldr	r3, [r4]
 2016 00a6 1A68     		ldr	r2, [r3]
 2017 00a8 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 2018 00aa 5368     		ldr	r3, [r2, #4]
 2019 00ac 9847     		blx	r3
 2020 00ae FF23     		movs	r3, #255
 2021 00b0 2B70     		strb	r3, [r5]
 2022              	.L525:
 2023 00b2 0525     		movs	r5, #5
 2024 00b4 A9E7     		b	.L515
 2025              	.L529:
 2026 00b6 0725     		movs	r5, #7
 2027 00b8 A7E7     		b	.L515
 2028              	.L531:
 2029 00ba 00BF     		.align	2
 2030              	.L530:
 2031 00bc 00000000 		.word	.LANCHOR4
 2032 00c0 00000000 		.word	.LANCHOR0
 2033 00c4 19911000 		.word	1085721
 2034 00c8 18910800 		.word	561432
 2035 00cc 000058E4 		.word	-463994880
 2036 00d0 00000000 		.word	.LANCHOR8
 2037 00d4 00000000 		.word	.LANCHOR9
 2038 00d8 00000000 		.word	.LANCHOR5
 2039              		.size	sd_mmc_init_write_blocks, .-sd_mmc_init_write_blocks
 2040              		.section	.text.sd_mmc_start_write_blocks,"ax",%progbits
 2041              		.align	1
 2042              		.p2align 2,,3
 2043              		.global	sd_mmc_start_write_blocks
 2044              		.syntax unified
 2045              		.thumb
 2046              		.thumb_func
 2047              		.fpu fpv4-sp-d16
 2048              		.type	sd_mmc_start_write_blocks, %function
 2049              	sd_mmc_start_write_blocks:
 2050              		@ args = 0, pretend = 0, frame = 0
 2051              		@ frame_needed = 0, uses_anonymous_args = 0
 2052 0000 094B     		ldr	r3, .L537
ARM GAS  /tmp/ccfnyGjL.s 			page 37


 2053 0002 1B68     		ldr	r3, [r3]
 2054 0004 1B68     		ldr	r3, [r3]
 2055 0006 10B5     		push	{r4, lr}
 2056 0008 9B6B     		ldr	r3, [r3, #56]
 2057 000a 0C46     		mov	r4, r1
 2058 000c 9847     		blx	r3
 2059 000e 28B1     		cbz	r0, .L536
 2060 0010 064B     		ldr	r3, .L537+4
 2061 0012 1988     		ldrh	r1, [r3]
 2062 0014 091B     		subs	r1, r1, r4
 2063 0016 1980     		strh	r1, [r3]	@ movhi
 2064 0018 0020     		movs	r0, #0
 2065 001a 10BD     		pop	{r4, pc}
 2066              	.L536:
 2067 001c 034A     		ldr	r2, .L537+4
 2068 001e 0346     		mov	r3, r0
 2069 0020 1380     		strh	r3, [r2]	@ movhi
 2070 0022 0520     		movs	r0, #5
 2071 0024 10BD     		pop	{r4, pc}
 2072              	.L538:
 2073 0026 00BF     		.align	2
 2074              	.L537:
 2075 0028 00000000 		.word	.LANCHOR0
 2076 002c 00000000 		.word	.LANCHOR8
 2077              		.size	sd_mmc_start_write_blocks, .-sd_mmc_start_write_blocks
 2078              		.section	.text.sd_mmc_wait_end_of_write_blocks,"ax",%progbits
 2079              		.align	1
 2080              		.p2align 2,,3
 2081              		.global	sd_mmc_wait_end_of_write_blocks
 2082              		.syntax unified
 2083              		.thumb
 2084              		.thumb_func
 2085              		.fpu fpv4-sp-d16
 2086              		.type	sd_mmc_wait_end_of_write_blocks, %function
 2087              	sd_mmc_wait_end_of_write_blocks:
 2088              		@ args = 0, pretend = 0, frame = 0
 2089              		@ frame_needed = 0, uses_anonymous_args = 0
 2090 0000 38B5     		push	{r3, r4, r5, lr}
 2091 0002 1E4C     		ldr	r4, .L557
 2092 0004 2368     		ldr	r3, [r4]
 2093 0006 1B68     		ldr	r3, [r3]
 2094 0008 DB6B     		ldr	r3, [r3, #60]
 2095 000a 0546     		mov	r5, r0
 2096 000c 9847     		blx	r3
 2097 000e E0B1     		cbz	r0, .L552
 2098 0010 1B4B     		ldr	r3, .L557+4
 2099 0012 E5B1     		cbz	r5, .L542
 2100 0014 0022     		movs	r2, #0
 2101 0016 1A80     		strh	r2, [r3]	@ movhi
 2102              	.L543:
 2103 0018 1A4B     		ldr	r3, .L557+8
 2104 001a 1B88     		ldrh	r3, [r3]
 2105 001c 012B     		cmp	r3, #1
 2106 001e 27D0     		beq	.L555
 2107 0020 2368     		ldr	r3, [r4]
 2108 0022 194D     		ldr	r5, .L557+12
 2109 0024 1B68     		ldr	r3, [r3]
ARM GAS  /tmp/ccfnyGjL.s 			page 38


 2110 0026 93F84810 		ldrb	r1, [r3, #72]	@ zero_extendqisi2
 2111 002a A9B9     		cbnz	r1, .L546
 2112 002c 5B6A     		ldr	r3, [r3, #36]
 2113 002e 43F20C10 		movw	r0, #12556
 2114 0032 9847     		blx	r3
 2115 0034 80B9     		cbnz	r0, .L546
 2116 0036 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 2117 0038 012B     		cmp	r3, #1
 2118 003a 06D8     		bhi	.L552
 2119 003c 2368     		ldr	r3, [r4]
 2120 003e 1A68     		ldr	r2, [r3]
 2121 0040 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 2122 0042 5368     		ldr	r3, [r2, #4]
 2123 0044 9847     		blx	r3
 2124 0046 FF23     		movs	r3, #255
 2125 0048 2B70     		strb	r3, [r5]
 2126              	.L552:
 2127 004a 0520     		movs	r0, #5
 2128 004c 38BD     		pop	{r3, r4, r5, pc}
 2129              	.L542:
 2130 004e 1B88     		ldrh	r3, [r3]
 2131 0050 002B     		cmp	r3, #0
 2132 0052 E1D0     		beq	.L543
 2133              	.L554:
 2134 0054 0020     		movs	r0, #0
 2135              	.L556:
 2136 0056 38BD     		pop	{r3, r4, r5, pc}
 2137              	.L546:
 2138 0058 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 2139 005a 012B     		cmp	r3, #1
 2140 005c FAD8     		bhi	.L554
 2141              	.L553:
 2142 005e 2368     		ldr	r3, [r4]
 2143 0060 1A68     		ldr	r2, [r3]
 2144 0062 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 2145 0064 5368     		ldr	r3, [r2, #4]
 2146 0066 9847     		blx	r3
 2147 0068 FF23     		movs	r3, #255
 2148 006a 2B70     		strb	r3, [r5]
 2149 006c 0020     		movs	r0, #0
 2150 006e F2E7     		b	.L556
 2151              	.L555:
 2152 0070 054D     		ldr	r5, .L557+12
 2153 0072 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 2154 0074 012B     		cmp	r3, #1
 2155 0076 F2D9     		bls	.L553
 2156 0078 ECE7     		b	.L554
 2157              	.L558:
 2158 007a 00BF     		.align	2
 2159              	.L557:
 2160 007c 00000000 		.word	.LANCHOR0
 2161 0080 00000000 		.word	.LANCHOR8
 2162 0084 00000000 		.word	.LANCHOR9
 2163 0088 00000000 		.word	.LANCHOR5
 2164              		.size	sd_mmc_wait_end_of_write_blocks, .-sd_mmc_wait_end_of_write_blocks
 2165              		.global	mmc_trans_multipliers
 2166              		.global	sd_trans_multipliers
ARM GAS  /tmp/ccfnyGjL.s 			page 39


 2167              		.global	sd_mmc_trans_units
 2168              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 2169              		.align	2
 2170              		.type	cpu_irq_critical_section_counter, %object
 2171              		.size	cpu_irq_critical_section_counter, 4
 2172              	cpu_irq_critical_section_counter:
 2173 0000 00000000 		.space	4
 2174              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 2175              		.type	cpu_irq_prev_interrupt_state, %object
 2176              		.size	cpu_irq_prev_interrupt_state, 1
 2177              	cpu_irq_prev_interrupt_state:
 2178 0000 00       		.space	1
 2179              		.section	.bss.sd_mmc_card,"aw",%nobits
 2180              		.align	2
 2181              		.set	.LANCHOR0,. + 0
 2182              		.type	sd_mmc_card, %object
 2183              		.size	sd_mmc_card, 4
 2184              	sd_mmc_card:
 2185 0000 00000000 		.space	4
 2186              		.section	.bss.sd_mmc_cards,"aw",%nobits
 2187              		.align	2
 2188              		.set	.LANCHOR4,. + 0
 2189              		.type	sd_mmc_cards, %object
 2190              		.size	sd_mmc_cards, 80
 2191              	sd_mmc_cards:
 2192 0000 00000000 		.space	80
 2192      00000000 
 2192      00000000 
 2192      00000000 
 2192      00000000 
 2193              		.section	.bss.sd_mmc_nb_block_remaining,"aw",%nobits
 2194              		.align	1
 2195              		.set	.LANCHOR8,. + 0
 2196              		.type	sd_mmc_nb_block_remaining, %object
 2197              		.size	sd_mmc_nb_block_remaining, 2
 2198              	sd_mmc_nb_block_remaining:
 2199 0000 0000     		.space	2
 2200              		.section	.bss.sd_mmc_nb_block_to_tranfer,"aw",%nobits
 2201              		.align	1
 2202              		.set	.LANCHOR9,. + 0
 2203              		.type	sd_mmc_nb_block_to_tranfer, %object
 2204              		.size	sd_mmc_nb_block_to_tranfer, 2
 2205              	sd_mmc_nb_block_to_tranfer:
 2206 0000 0000     		.space	2
 2207              		.section	.bss.sd_mmc_slot_sel,"aw",%nobits
 2208              		.set	.LANCHOR5,. + 0
 2209              		.type	sd_mmc_slot_sel, %object
 2210              		.size	sd_mmc_slot_sel, 1
 2211              	sd_mmc_slot_sel:
 2212 0000 00       		.space	1
 2213              		.section	.rodata.hsmciInterface,"a",%progbits
 2214              		.align	2
 2215              		.set	.LANCHOR6,. + 0
 2216              		.type	hsmciInterface, %object
 2217              		.size	hsmciInterface, 76
 2218              	hsmciInterface:
 2219 0000 00000000 		.word	hsmci_select_device
ARM GAS  /tmp/ccfnyGjL.s 			page 40


 2220 0004 00000000 		.word	hsmci_deselect_device
 2221 0008 00000000 		.word	hsmci_get_bus_width
 2222 000c 00000000 		.word	hsmci_is_high_speed_capable
 2223 0010 00000000 		.word	hsmci_send_clock
 2224 0014 00000000 		.word	hsmci_send_cmd
 2225 0018 00000000 		.word	hsmci_get_response
 2226 001c 00000000 		.word	hsmci_get_response_128
 2227 0020 00000000 		.word	hsmci_adtc_start
 2228 0024 00000000 		.word	hsmci_send_cmd
 2229 0028 00000000 		.word	hsmci_read_word
 2230 002c 00000000 		.word	hsmci_write_word
 2231 0030 00000000 		.word	hsmci_start_read_blocks
 2232 0034 00000000 		.word	hsmci_wait_end_of_read_blocks
 2233 0038 00000000 		.word	hsmci_start_write_blocks
 2234 003c 00000000 		.word	hsmci_wait_end_of_write_blocks
 2235 0040 00000000 		.word	hsmci_get_speed
 2236 0044 00000000 		.word	hsmci_set_idle_func
 2237 0048 00       		.byte	0
 2238 0049 000000   		.space	3
 2239              		.section	.rodata.mmc_trans_multipliers,"a",%progbits
 2240              		.align	2
 2241              		.set	.LANCHOR1,. + 0
 2242              		.type	mmc_trans_multipliers, %object
 2243              		.size	mmc_trans_multipliers, 64
 2244              	mmc_trans_multipliers:
 2245 0000 00000000 		.word	0
 2246 0004 0A000000 		.word	10
 2247 0008 0C000000 		.word	12
 2248 000c 0D000000 		.word	13
 2249 0010 0F000000 		.word	15
 2250 0014 14000000 		.word	20
 2251 0018 1A000000 		.word	26
 2252 001c 1E000000 		.word	30
 2253 0020 23000000 		.word	35
 2254 0024 28000000 		.word	40
 2255 0028 2D000000 		.word	45
 2256 002c 34000000 		.word	52
 2257 0030 37000000 		.word	55
 2258 0034 3C000000 		.word	60
 2259 0038 46000000 		.word	70
 2260 003c 50000000 		.word	80
 2261              		.section	.rodata.sd_mmc_trans_units,"a",%progbits
 2262              		.align	2
 2263              		.set	.LANCHOR2,. + 0
 2264              		.type	sd_mmc_trans_units, %object
 2265              		.size	sd_mmc_trans_units, 28
 2266              	sd_mmc_trans_units:
 2267 0000 0A000000 		.word	10
 2268 0004 64000000 		.word	100
 2269 0008 E8030000 		.word	1000
 2270 000c 10270000 		.word	10000
 2271 0010 00000000 		.word	0
 2272 0014 00000000 		.word	0
 2273 0018 00000000 		.word	0
 2274              		.section	.rodata.sd_trans_multipliers,"a",%progbits
 2275              		.align	2
 2276              		.set	.LANCHOR3,. + 0
ARM GAS  /tmp/ccfnyGjL.s 			page 41


 2277              		.type	sd_trans_multipliers, %object
 2278              		.size	sd_trans_multipliers, 64
 2279              	sd_trans_multipliers:
 2280 0000 00000000 		.word	0
 2281 0004 0A000000 		.word	10
 2282 0008 0C000000 		.word	12
 2283 000c 0D000000 		.word	13
 2284 0010 0F000000 		.word	15
 2285 0014 14000000 		.word	20
 2286 0018 19000000 		.word	25
 2287 001c 1E000000 		.word	30
 2288 0020 23000000 		.word	35
 2289 0024 28000000 		.word	40
 2290 0028 2D000000 		.word	45
 2291 002c 32000000 		.word	50
 2292 0030 37000000 		.word	55
 2293 0034 3C000000 		.word	60
 2294 0038 46000000 		.word	70
 2295 003c 50000000 		.word	80
 2296              		.section	.rodata.spiInterface,"a",%progbits
 2297              		.align	2
 2298              		.set	.LANCHOR7,. + 0
 2299              		.type	spiInterface, %object
 2300              		.size	spiInterface, 76
 2301              	spiInterface:
 2302 0000 00000000 		.word	sd_mmc_spi_select_device
 2303 0004 00000000 		.word	sd_mmc_spi_deselect_device
 2304 0008 00000000 		.word	sd_mmc_spi_get_bus_width
 2305 000c 00000000 		.word	sd_mmc_spi_is_high_speed_capable
 2306 0010 00000000 		.word	sd_mmc_spi_send_clock
 2307 0014 00000000 		.word	sd_mmc_spi_send_cmd
 2308 0018 00000000 		.word	sd_mmc_spi_get_response
 2309 001c 00000000 		.word	sd_mmc_spi_get_response_128
 2310 0020 00000000 		.word	sd_mmc_spi_adtc_start
 2311 0024 00000000 		.word	sd_mmc_spi_send_cmd
 2312 0028 00000000 		.word	sd_mmc_spi_read_word
 2313 002c 00000000 		.word	sd_mmc_spi_write_word
 2314 0030 00000000 		.word	sd_mmc_spi_start_read_blocks
 2315 0034 00000000 		.word	sd_mmc_spi_wait_end_of_read_blocks
 2316 0038 00000000 		.word	sd_mmc_spi_start_write_blocks
 2317 003c 00000000 		.word	sd_mmc_spi_wait_end_of_write_blocks
 2318 0040 00000000 		.word	spi_mmc_get_speed
 2319 0044 00000000 		.word	sd_mmc_spi_set_idle_func
 2320 0048 01       		.byte	1
 2321 0049 000000   		.space	3
 2322              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
