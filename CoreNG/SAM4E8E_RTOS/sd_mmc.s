ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 1


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
  14              		.text
  15              		.section	.text.sd_mmc_spi_get_bus_width,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	sd_mmc_spi_get_bus_width, %function
  23              	sd_mmc_spi_get_bus_width:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0120     		movs	r0, #1
  28 0002 7047     		bx	lr
  29              		.size	sd_mmc_spi_get_bus_width, .-sd_mmc_spi_get_bus_width
  30              		.section	.text.sd_mmc_spi_is_high_speed_capable,"ax",%progbits
  31              		.align	1
  32              		.p2align 2,,3
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu fpv4-sp-d16
  37              		.type	sd_mmc_spi_is_high_speed_capable, %function
  38              	sd_mmc_spi_is_high_speed_capable:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41              		@ link register save eliminated.
  42 0000 0020     		movs	r0, #0
  43 0002 7047     		bx	lr
  44              		.size	sd_mmc_spi_is_high_speed_capable, .-sd_mmc_spi_is_high_speed_capable
  45              		.section	.text.sd_mmc_spi_get_response_128,"ax",%progbits
  46              		.align	1
  47              		.p2align 2,,3
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu fpv4-sp-d16
  52              		.type	sd_mmc_spi_get_response_128, %function
  53              	sd_mmc_spi_get_response_128:
  54              		@ args = 0, pretend = 0, frame = 0
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56              		@ link register save eliminated.
  57 0000 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 2


  58              		.size	sd_mmc_spi_get_response_128, .-sd_mmc_spi_get_response_128
  59 0002 00BF     		.section	.text.sd_cmd8,"ax",%progbits
  60              		.align	1
  61              		.p2align 2,,3
  62              		.syntax unified
  63              		.thumb
  64              		.thumb_func
  65              		.fpu fpv4-sp-d16
  66              		.type	sd_cmd8, %function
  67              	sd_cmd8:
  68              		@ args = 0, pretend = 0, frame = 0
  69              		@ frame_needed = 0, uses_anonymous_args = 0
  70 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  71 0002 104D     		ldr	r5, .L14
  72 0004 0026     		movs	r6, #0
  73 0006 2B68     		ldr	r3, [r5]
  74 0008 0670     		strb	r6, [r0]
  75 000a 1B68     		ldr	r3, [r3]
  76 000c 0746     		mov	r7, r0
  77 000e 4FF4D571 		mov	r1, #426
  78 0012 5B69     		ldr	r3, [r3, #20]
  79 0014 45F20850 		movw	r0, #21768
  80 0018 9847     		blx	r3
  81 001a 80B1     		cbz	r0, .L8
  82 001c 2B68     		ldr	r3, [r5]
  83 001e 1B68     		ldr	r3, [r3]
  84 0020 9B69     		ldr	r3, [r3, #24]
  85 0022 0446     		mov	r4, r0
  86 0024 9847     		blx	r3
  87 0026 431C     		adds	r3, r0, #1
  88 0028 09D0     		beq	.L8
  89 002a C0F30B00 		ubfx	r0, r0, #0, #12
  90 002e B0F5D57F 		cmp	r0, #426
  91 0032 0ABF     		itet	eq
  92 0034 0123     		moveq	r3, #1
  93 0036 3446     		movne	r4, r6
  94 0038 3B70     		strbeq	r3, [r7]
  95 003a 2046     		mov	r0, r4
  96 003c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  97              	.L8:
  98 003e 0124     		movs	r4, #1
  99 0040 2046     		mov	r0, r4
 100 0042 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 101              	.L15:
 102              		.align	2
 103              	.L14:
 104 0044 00000000 		.word	.LANCHOR0
 105              		.size	sd_cmd8, .-sd_cmd8
 106              		.section	.text.sd_mmc_cmd9_spi,"ax",%progbits
 107              		.align	1
 108              		.p2align 2,,3
 109              		.syntax unified
 110              		.thumb
 111              		.thumb_func
 112              		.fpu fpv4-sp-d16
 113              		.type	sd_mmc_cmd9_spi, %function
 114              	sd_mmc_cmd9_spi:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 3


 115              		@ args = 0, pretend = 0, frame = 0
 116              		@ frame_needed = 0, uses_anonymous_args = 0
 117 0000 70B5     		push	{r4, r5, r6, lr}
 118 0002 0F4D     		ldr	r5, .L24
 119 0004 0F48     		ldr	r0, .L24+4
 120 0006 2B68     		ldr	r3, [r5]
 121 0008 82B0     		sub	sp, sp, #8
 122 000a D989     		ldrh	r1, [r3, #14]
 123 000c 1B68     		ldr	r3, [r3]
 124 000e 0124     		movs	r4, #1
 125 0010 0094     		str	r4, [sp]
 126 0012 1E6A     		ldr	r6, [r3, #32]
 127 0014 0904     		lsls	r1, r1, #16
 128 0016 2346     		mov	r3, r4
 129 0018 1022     		movs	r2, #16
 130 001a B047     		blx	r6
 131 001c 68B1     		cbz	r0, .L18
 132 001e 2868     		ldr	r0, [r5]
 133 0020 0368     		ldr	r3, [r0]
 134 0022 2146     		mov	r1, r4
 135 0024 1B6B     		ldr	r3, [r3, #48]
 136 0026 1530     		adds	r0, r0, #21
 137 0028 9847     		blx	r3
 138 002a 30B1     		cbz	r0, .L18
 139 002c 2B68     		ldr	r3, [r5]
 140 002e 1B68     		ldr	r3, [r3]
 141 0030 5B6B     		ldr	r3, [r3, #52]
 142 0032 02B0     		add	sp, sp, #8
 143              		@ sp needed
 144 0034 BDE87040 		pop	{r4, r5, r6, lr}
 145 0038 1847     		bx	r3
 146              	.L18:
 147 003a 0020     		movs	r0, #0
 148 003c 02B0     		add	sp, sp, #8
 149              		@ sp needed
 150 003e 70BD     		pop	{r4, r5, r6, pc}
 151              	.L25:
 152              		.align	2
 153              	.L24:
 154 0040 00000000 		.word	.LANCHOR0
 155 0044 09110800 		.word	528649
 156              		.size	sd_mmc_cmd9_spi, .-sd_mmc_cmd9_spi
 157              		.section	.text.sd_mmc_cmd9_mci,"ax",%progbits
 158              		.align	1
 159              		.p2align 2,,3
 160              		.syntax unified
 161              		.thumb
 162              		.thumb_func
 163              		.fpu fpv4-sp-d16
 164              		.type	sd_mmc_cmd9_mci, %function
 165              	sd_mmc_cmd9_mci:
 166              		@ args = 0, pretend = 0, frame = 0
 167              		@ frame_needed = 0, uses_anonymous_args = 0
 168 0000 38B5     		push	{r3, r4, r5, lr}
 169 0002 094D     		ldr	r5, .L32
 170 0004 2B68     		ldr	r3, [r5]
 171 0006 D989     		ldrh	r1, [r3, #14]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 4


 172 0008 1B68     		ldr	r3, [r3]
 173 000a 0904     		lsls	r1, r1, #16
 174 000c 5B69     		ldr	r3, [r3, #20]
 175 000e 41F60930 		movw	r0, #6921
 176 0012 9847     		blx	r3
 177 0014 0446     		mov	r4, r0
 178 0016 20B1     		cbz	r0, .L27
 179 0018 2868     		ldr	r0, [r5]
 180 001a 0368     		ldr	r3, [r0]
 181 001c 1530     		adds	r0, r0, #21
 182 001e DB69     		ldr	r3, [r3, #28]
 183 0020 9847     		blx	r3
 184              	.L27:
 185 0022 2046     		mov	r0, r4
 186 0024 38BD     		pop	{r3, r4, r5, pc}
 187              	.L33:
 188 0026 00BF     		.align	2
 189              	.L32:
 190 0028 00000000 		.word	.LANCHOR0
 191              		.size	sd_mmc_cmd9_mci, .-sd_mmc_cmd9_mci
 192              		.section	.text.mmc_decode_csd,"ax",%progbits
 193              		.align	1
 194              		.p2align 2,,3
 195              		.syntax unified
 196              		.thumb
 197              		.thumb_func
 198              		.fpu fpv4-sp-d16
 199              		.type	mmc_decode_csd, %function
 200              	mmc_decode_csd:
 201              		@ args = 0, pretend = 0, frame = 0
 202              		@ frame_needed = 0, uses_anonymous_args = 0
 203              		@ link register save eliminated.
 204 0000 70B4     		push	{r4, r5, r6}
 205 0002 264B     		ldr	r3, .L44
 206 0004 1A68     		ldr	r2, [r3]
 207 0006 537D     		ldrb	r3, [r2, #21]	@ zero_extendqisi2
 208 0008 C3F38303 		ubfx	r3, r3, #2, #4
 209 000c 013B     		subs	r3, r3, #1
 210 000e 032B     		cmp	r3, #3
 211 0010 40D8     		bhi	.L35
 212 0012 DFE803F0 		tbb	[pc, r3]
 213              	.L37:
 214 0016 3C       		.byte	(.L36-.L37)/2
 215 0017 39       		.byte	(.L38-.L37)/2
 216 0018 36       		.byte	(.L39-.L37)/2
 217 0019 02       		.byte	(.L40-.L37)/2
 218              		.p2align 1
 219              	.L40:
 220 001a 4023     		movs	r3, #64
 221 001c 9374     		strb	r3, [r2, #18]
 222              	.L41:
 223 001e 117E     		ldrb	r1, [r2, #24]	@ zero_extendqisi2
 224 0020 1F4C     		ldr	r4, .L44+4
 225 0022 D37E     		ldrb	r3, [r2, #27]	@ zero_extendqisi2
 226 0024 1F48     		ldr	r0, .L44+8
 227 0026 167F     		ldrb	r6, [r2, #28]	@ zero_extendqisi2
 228 0028 01F00705 		and	r5, r1, #7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 5


 229 002c C1F3C301 		ubfx	r1, r1, #3, #4
 230 0030 54F82550 		ldr	r5, [r4, r5, lsl #2]
 231 0034 547F     		ldrb	r4, [r2, #29]	@ zero_extendqisi2
 232 0036 50F82100 		ldr	r0, [r0, r1, lsl #2]
 233 003a 9B02     		lsls	r3, r3, #10
 234 003c 4FF47A71 		mov	r1, #1000
 235 0040 43EA8603 		orr	r3, r3, r6, lsl #2
 236 0044 01FB05F1 		mul	r1, r1, r5
 237 0048 43EA9413 		orr	r3, r3, r4, lsr #6
 238 004c 01FB00F1 		mul	r1, r1, r0
 239 0050 C3F30B03 		ubfx	r3, r3, #0, #12
 240 0054 40F6FF70 		movw	r0, #4095
 241 0058 8342     		cmp	r3, r0
 242 005a 5160     		str	r1, [r2, #4]
 243 005c 0FD0     		beq	.L34
 244 005e 917F     		ldrb	r1, [r2, #30]	@ zero_extendqisi2
 245 0060 D47F     		ldrb	r4, [r2, #31]	@ zero_extendqisi2
 246 0062 907E     		ldrb	r0, [r2, #26]	@ zero_extendqisi2
 247 0064 4900     		lsls	r1, r1, #1
 248 0066 41EAD411 		orr	r1, r1, r4, lsr #7
 249 006a 01F00701 		and	r1, r1, #7
 250 006e 0231     		adds	r1, r1, #2
 251 0070 0133     		adds	r3, r3, #1
 252 0072 8B40     		lsls	r3, r3, r1
 253 0074 00F00F01 		and	r1, r0, #15
 254 0078 8B40     		lsls	r3, r3, r1
 255 007a 9B0A     		lsrs	r3, r3, #10
 256 007c 9360     		str	r3, [r2, #8]
 257              	.L34:
 258 007e 70BC     		pop	{r4, r5, r6}
 259 0080 7047     		bx	lr
 260              	.L39:
 261 0082 3023     		movs	r3, #48
 262 0084 9374     		strb	r3, [r2, #18]
 263 0086 CAE7     		b	.L41
 264              	.L38:
 265 0088 2223     		movs	r3, #34
 266 008a 9374     		strb	r3, [r2, #18]
 267 008c C7E7     		b	.L41
 268              	.L36:
 269 008e 1423     		movs	r3, #20
 270 0090 9374     		strb	r3, [r2, #18]
 271 0092 C4E7     		b	.L41
 272              	.L35:
 273 0094 1223     		movs	r3, #18
 274 0096 9374     		strb	r3, [r2, #18]
 275 0098 C1E7     		b	.L41
 276              	.L45:
 277 009a 00BF     		.align	2
 278              	.L44:
 279 009c 00000000 		.word	.LANCHOR0
 280 00a0 00000000 		.word	.LANCHOR2
 281 00a4 00000000 		.word	.LANCHOR1
 282              		.size	mmc_decode_csd, .-mmc_decode_csd
 283              		.section	.text.sd_decode_csd,"ax",%progbits
 284              		.align	1
 285              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 6


 286              		.syntax unified
 287              		.thumb
 288              		.thumb_func
 289              		.fpu fpv4-sp-d16
 290              		.type	sd_decode_csd, %function
 291              	sd_decode_csd:
 292              		@ args = 0, pretend = 0, frame = 0
 293              		@ frame_needed = 0, uses_anonymous_args = 0
 294              		@ link register save eliminated.
 295 0000 30B4     		push	{r4, r5}
 296 0002 1F4B     		ldr	r3, .L51
 297 0004 1F48     		ldr	r0, .L51+4
 298 0006 1A68     		ldr	r2, [r3]
 299 0008 1F49     		ldr	r1, .L51+8
 300 000a 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 301 000c 547D     		ldrb	r4, [r2, #21]	@ zero_extendqisi2
 302 000e 03F00705 		and	r5, r3, #7
 303 0012 C3F3C303 		ubfx	r3, r3, #3, #4
 304 0016 50F82550 		ldr	r5, [r0, r5, lsl #2]
 305 001a 51F82300 		ldr	r0, [r1, r3, lsl #2]
 306 001e 917F     		ldrb	r1, [r2, #30]	@ zero_extendqisi2
 307 0020 4FF47A73 		mov	r3, #1000
 308 0024 03FB05F3 		mul	r3, r3, r5
 309 0028 03FB00F3 		mul	r3, r3, r0
 310 002c A409     		lsrs	r4, r4, #6
 311 002e 5360     		str	r3, [r2, #4]
 312 0030 507F     		ldrb	r0, [r2, #29]	@ zero_extendqisi2
 313 0032 137F     		ldrb	r3, [r2, #28]	@ zero_extendqisi2
 314 0034 18D1     		bne	.L50
 315 0036 D57E     		ldrb	r5, [r2, #27]	@ zero_extendqisi2
 316 0038 D47F     		ldrb	r4, [r2, #31]	@ zero_extendqisi2
 317 003a 9B00     		lsls	r3, r3, #2
 318 003c 43EA8523 		orr	r3, r3, r5, lsl #10
 319 0040 4900     		lsls	r1, r1, #1
 320 0042 43EA9013 		orr	r3, r3, r0, lsr #6
 321 0046 41EAD411 		orr	r1, r1, r4, lsr #7
 322 004a C3F30B03 		ubfx	r3, r3, #0, #12
 323 004e 01F00701 		and	r1, r1, #7
 324 0052 907E     		ldrb	r0, [r2, #26]	@ zero_extendqisi2
 325 0054 0231     		adds	r1, r1, #2
 326 0056 0133     		adds	r3, r3, #1
 327 0058 8B40     		lsls	r3, r3, r1
 328 005a 00F00F01 		and	r1, r0, #15
 329 005e 8B40     		lsls	r3, r3, r1
 330 0060 9B0A     		lsrs	r3, r3, #10
 331 0062 9360     		str	r3, [r2, #8]
 332 0064 30BC     		pop	{r4, r5}
 333 0066 7047     		bx	lr
 334              	.L50:
 335 0068 1B04     		lsls	r3, r3, #16
 336 006a 43EA0023 		orr	r3, r3, r0, lsl #8
 337 006e 0B43     		orrs	r3, r3, r1
 338 0070 C3F31503 		ubfx	r3, r3, #0, #22
 339 0074 0133     		adds	r3, r3, #1
 340 0076 5B02     		lsls	r3, r3, #9
 341 0078 9360     		str	r3, [r2, #8]
 342 007a 30BC     		pop	{r4, r5}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 7


 343 007c 7047     		bx	lr
 344              	.L52:
 345 007e 00BF     		.align	2
 346              	.L51:
 347 0080 00000000 		.word	.LANCHOR0
 348 0084 00000000 		.word	.LANCHOR2
 349 0088 00000000 		.word	.LANCHOR3
 350              		.size	sd_decode_csd, .-sd_decode_csd
 351              		.section	.text.sd_mmc_cmd13,"ax",%progbits
 352              		.align	1
 353              		.p2align 2,,3
 354              		.syntax unified
 355              		.thumb
 356              		.thumb_func
 357              		.fpu fpv4-sp-d16
 358              		.type	sd_mmc_cmd13, %function
 359              	sd_mmc_cmd13:
 360              		@ args = 0, pretend = 0, frame = 0
 361              		@ frame_needed = 0, uses_anonymous_args = 0
 362 0000 70B5     		push	{r4, r5, r6, lr}
 363 0002 144C     		ldr	r4, .L74
 364 0004 144D     		ldr	r5, .L74+4
 365 0006 0AE0     		b	.L57
 366              	.L73:
 367 0008 9847     		blx	r3
 368 000a 00B3     		cbz	r0, .L55
 369 000c 2B68     		ldr	r3, [r5]
 370 000e 1B68     		ldr	r3, [r3]
 371 0010 9B69     		ldr	r3, [r3, #24]
 372 0012 9847     		blx	r3
 373 0014 10F0FF0F 		tst	r0, #255
 374 0018 17D0     		beq	.L56
 375              	.L59:
 376 001a 013C     		subs	r4, r4, #1
 377 001c 17D0     		beq	.L55
 378              	.L57:
 379 001e 2A68     		ldr	r2, [r5]
 380 0020 1368     		ldr	r3, [r2]
 381 0022 93F84860 		ldrb	r6, [r3, #72]	@ zero_extendqisi2
 382 0026 5B69     		ldr	r3, [r3, #20]
 383 0028 0021     		movs	r1, #0
 384 002a 41F60D30 		movw	r0, #6925
 385 002e 002E     		cmp	r6, #0
 386 0030 EAD1     		bne	.L73
 387 0032 D189     		ldrh	r1, [r2, #14]
 388 0034 41F20D10 		movw	r0, #4365
 389 0038 0904     		lsls	r1, r1, #16
 390 003a 9847     		blx	r3
 391 003c 38B1     		cbz	r0, .L55
 392 003e 2B68     		ldr	r3, [r5]
 393 0040 1B68     		ldr	r3, [r3]
 394 0042 9B69     		ldr	r3, [r3, #24]
 395 0044 9847     		blx	r3
 396 0046 C305     		lsls	r3, r0, #23
 397 0048 E7D5     		bpl	.L59
 398              	.L56:
 399 004a 0120     		movs	r0, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 8


 400 004c 70BD     		pop	{r4, r5, r6, pc}
 401              	.L55:
 402 004e 0020     		movs	r0, #0
 403 0050 70BD     		pop	{r4, r5, r6, pc}
 404              	.L75:
 405 0052 00BF     		.align	2
 406              	.L74:
 407 0054 410D0300 		.word	200001
 408 0058 00000000 		.word	.LANCHOR0
 409              		.size	sd_mmc_cmd13, .-sd_mmc_cmd13
 410              		.section	.text.sd_acmd51,"ax",%progbits
 411              		.align	1
 412              		.p2align 2,,3
 413              		.syntax unified
 414              		.thumb
 415              		.thumb_func
 416              		.fpu fpv4-sp-d16
 417              		.type	sd_acmd51, %function
 418              	sd_acmd51:
 419              		@ args = 0, pretend = 0, frame = 8
 420              		@ frame_needed = 0, uses_anonymous_args = 0
 421 0000 70B5     		push	{r4, r5, r6, lr}
 422 0002 1E4C     		ldr	r4, .L96
 423 0004 2368     		ldr	r3, [r4]
 424 0006 D989     		ldrh	r1, [r3, #14]
 425 0008 1B68     		ldr	r3, [r3]
 426 000a 84B0     		sub	sp, sp, #16
 427 000c 0904     		lsls	r1, r1, #16
 428 000e 5B69     		ldr	r3, [r3, #20]
 429 0010 41F23710 		movw	r0, #4407
 430 0014 9847     		blx	r3
 431 0016 18B3     		cbz	r0, .L79
 432 0018 2368     		ldr	r3, [r4]
 433 001a 1948     		ldr	r0, .L96+4
 434 001c 1B68     		ldr	r3, [r3]
 435 001e 0125     		movs	r5, #1
 436 0020 0095     		str	r5, [sp]
 437 0022 1E6A     		ldr	r6, [r3, #32]
 438 0024 0822     		movs	r2, #8
 439 0026 2B46     		mov	r3, r5
 440 0028 0021     		movs	r1, #0
 441 002a B047     		blx	r6
 442 002c C0B1     		cbz	r0, .L79
 443 002e 2368     		ldr	r3, [r4]
 444 0030 1B68     		ldr	r3, [r3]
 445 0032 2946     		mov	r1, r5
 446 0034 1B6B     		ldr	r3, [r3, #48]
 447 0036 02A8     		add	r0, sp, #8
 448 0038 9847     		blx	r3
 449 003a 88B1     		cbz	r0, .L79
 450 003c 2368     		ldr	r3, [r4]
 451 003e 1B68     		ldr	r3, [r3]
 452 0040 5B6B     		ldr	r3, [r3, #52]
 453 0042 9847     		blx	r3
 454 0044 60B1     		cbz	r0, .L79
 455 0046 9DF80830 		ldrb	r3, [sp, #8]	@ zero_extendqisi2
 456 004a 2268     		ldr	r2, [r4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 9


 457 004c 03F00F03 		and	r3, r3, #15
 458 0050 AB42     		cmp	r3, r5
 459 0052 10D0     		beq	.L81
 460 0054 022B     		cmp	r3, #2
 461 0056 06D0     		beq	.L95
 462 0058 1023     		movs	r3, #16
 463 005a 9374     		strb	r3, [r2, #18]
 464 005c 04B0     		add	sp, sp, #16
 465              		@ sp needed
 466 005e 70BD     		pop	{r4, r5, r6, pc}
 467              	.L79:
 468 0060 0020     		movs	r0, #0
 469              	.L78:
 470 0062 04B0     		add	sp, sp, #16
 471              		@ sp needed
 472 0064 70BD     		pop	{r4, r5, r6, pc}
 473              	.L95:
 474 0066 9DF80A30 		ldrb	r3, [sp, #10]	@ zero_extendqisi2
 475 006a DB09     		lsrs	r3, r3, #7
 476 006c 14BF     		ite	ne
 477 006e 3023     		movne	r3, #48
 478 0070 2023     		moveq	r3, #32
 479 0072 9374     		strb	r3, [r2, #18]
 480 0074 F5E7     		b	.L78
 481              	.L81:
 482 0076 1A23     		movs	r3, #26
 483 0078 9374     		strb	r3, [r2, #18]
 484 007a F2E7     		b	.L78
 485              	.L97:
 486              		.align	2
 487              	.L96:
 488 007c 00000000 		.word	.LANCHOR0
 489 0080 33110800 		.word	528691
 490              		.size	sd_acmd51, .-sd_acmd51
 491              		.section	.text.mmc_cmd8,"ax",%progbits
 492              		.align	1
 493              		.p2align 2,,3
 494              		.syntax unified
 495              		.thumb
 496              		.thumb_func
 497              		.fpu fpv4-sp-d16
 498              		.type	mmc_cmd8, %function
 499              	mmc_cmd8:
 500              		@ args = 0, pretend = 0, frame = 8
 501              		@ frame_needed = 0, uses_anonymous_args = 0
 502 0000 70B5     		push	{r4, r5, r6, lr}
 503 0002 284D     		ldr	r5, .L129
 504 0004 2B68     		ldr	r3, [r5]
 505 0006 84B0     		sub	sp, sp, #16
 506 0008 1B68     		ldr	r3, [r3]
 507 000a 0021     		movs	r1, #0
 508 000c 0091     		str	r1, [sp]
 509 000e 0646     		mov	r6, r0
 510 0010 1C6A     		ldr	r4, [r3, #32]
 511 0012 2548     		ldr	r0, .L129+4
 512 0014 0123     		movs	r3, #1
 513 0016 4FF40072 		mov	r2, #512
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 10


 514 001a A047     		blx	r4
 515 001c 60B1     		cbz	r0, .L99
 516 001e 3224     		movs	r4, #50
 517 0020 00E0     		b	.L101
 518              	.L126:
 519 0022 5CB1     		cbz	r4, .L125
 520              	.L101:
 521 0024 2B68     		ldr	r3, [r5]
 522 0026 1B68     		ldr	r3, [r3]
 523 0028 02A8     		add	r0, sp, #8
 524 002a 9B6A     		ldr	r3, [r3, #40]
 525 002c 9847     		blx	r3
 526 002e 013C     		subs	r4, r4, #1
 527 0030 A4B2     		uxth	r4, r4
 528 0032 0028     		cmp	r0, #0
 529 0034 F5D1     		bne	.L126
 530              	.L100:
 531 0036 0020     		movs	r0, #0
 532              	.L99:
 533 0038 04B0     		add	sp, sp, #16
 534              		@ sp needed
 535 003a 70BD     		pop	{r4, r5, r6, pc}
 536              	.L125:
 537 003c 029A     		ldr	r2, [sp, #8]
 538 003e 2B68     		ldr	r3, [r5]
 539 0040 02F00202 		and	r2, r2, #2
 540 0044 3270     		strb	r2, [r6]
 541 0046 DA7E     		ldrb	r2, [r3, #27]	@ zero_extendqisi2
 542 0048 187F     		ldrb	r0, [r3, #28]	@ zero_extendqisi2
 543 004a 597F     		ldrb	r1, [r3, #29]	@ zero_extendqisi2
 544 004c 9202     		lsls	r2, r2, #10
 545 004e 42EA8002 		orr	r2, r2, r0, lsl #2
 546 0052 42EA9112 		orr	r2, r2, r1, lsr #6
 547 0056 C2F30B02 		ubfx	r2, r2, #0, #12
 548 005a 40F6FF71 		movw	r1, #4095
 549 005e 8A42     		cmp	r2, r1
 550 0060 0ED0     		beq	.L127
 551 0062 3224     		movs	r4, #50
 552 0064 03AE     		add	r6, sp, #12
 553 0066 00E0     		b	.L105
 554              	.L128:
 555 0068 2B68     		ldr	r3, [r5]
 556              	.L105:
 557 006a 1B68     		ldr	r3, [r3]
 558 006c 3046     		mov	r0, r6
 559 006e 9B6A     		ldr	r3, [r3, #40]
 560 0070 9847     		blx	r3
 561 0072 0134     		adds	r4, r4, #1
 562 0074 A4B2     		uxth	r4, r4
 563 0076 0028     		cmp	r0, #0
 564 0078 DDD0     		beq	.L100
 565 007a 802C     		cmp	r4, #128
 566 007c F4D1     		bne	.L128
 567 007e DBE7     		b	.L99
 568              	.L127:
 569 0080 0424     		movs	r4, #4
 570 0082 03AE     		add	r6, sp, #12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 11


 571              	.L103:
 572 0084 1B68     		ldr	r3, [r3]
 573 0086 3046     		mov	r0, r6
 574 0088 9B6A     		ldr	r3, [r3, #40]
 575 008a 9847     		blx	r3
 576 008c 013C     		subs	r4, r4, #1
 577 008e A4B2     		uxth	r4, r4
 578 0090 0028     		cmp	r0, #0
 579 0092 D0D0     		beq	.L100
 580 0094 2B68     		ldr	r3, [r5]
 581 0096 002C     		cmp	r4, #0
 582 0098 F4D1     		bne	.L103
 583 009a 039A     		ldr	r2, [sp, #12]
 584 009c 5208     		lsrs	r2, r2, #1
 585 009e 9A60     		str	r2, [r3, #8]
 586 00a0 3624     		movs	r4, #54
 587 00a2 E2E7     		b	.L105
 588              	.L130:
 589              		.align	2
 590              	.L129:
 591 00a4 00000000 		.word	.LANCHOR0
 592 00a8 08110800 		.word	528648
 593              		.size	mmc_cmd8, .-mmc_cmd8
 594              		.section	.text.sd_mmc_select_slot.part.1,"ax",%progbits
 595              		.align	1
 596              		.p2align 2,,3
 597              		.syntax unified
 598              		.thumb
 599              		.thumb_func
 600              		.fpu fpv4-sp-d16
 601              		.type	sd_mmc_select_slot.part.1, %function
 602              	sd_mmc_select_slot.part.1:
 603              		@ args = 0, pretend = 0, frame = 0
 604              		@ frame_needed = 0, uses_anonymous_args = 0
 605 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 606 0004 8200     		lsls	r2, r0, #2
 607 0006 1A4D     		ldr	r5, .L135
 608 0008 1118     		adds	r1, r2, r0
 609 000a 05EBC101 		add	r1, r5, r1, lsl #3
 610 000e 0446     		mov	r4, r0
 611 0010 0B7C     		ldrb	r3, [r1, #16]	@ zero_extendqisi2
 612 0012 033B     		subs	r3, r3, #3
 613 0014 012B     		cmp	r3, #1
 614 0016 21D9     		bls	.L132
 615 0018 91F82530 		ldrb	r3, [r1, #37]	@ zero_extendqisi2
 616 001c 0033     		adds	r3, r3, #0
 617 001e 18BF     		it	ne
 618 0020 0123     		movne	r3, #1
 619              	.L133:
 620 0022 2244     		add	r2, r2, r4
 621 0024 D200     		lsls	r2, r2, #3
 622 0026 AE18     		adds	r6, r5, r2
 623 0028 AA58     		ldr	r2, [r5, r2]
 624 002a DFF84CE0 		ldr	lr, .L135+8
 625 002e DFF84CC0 		ldr	ip, .L135+12
 626 0032 1768     		ldr	r7, [r2]
 627 0034 F07C     		ldrb	r0, [r6, #19]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 12


 628 0036 327D     		ldrb	r2, [r6, #20]	@ zero_extendqisi2
 629 0038 7168     		ldr	r1, [r6, #4]
 630 003a 8CF80040 		strb	r4, [ip]
 631 003e 04EB8408 		add	r8, r4, r4, lsl #2
 632 0042 05EBC805 		add	r5, r5, r8, lsl #3
 633 0046 CEF80050 		str	r5, [lr]
 634 004a B847     		blx	r7
 635 004c 307C     		ldrb	r0, [r6, #16]	@ zero_extendqisi2
 636 004e A0F10200 		sub	r0, #2
 637 0052 B0FA80F0 		clz	r0, r0
 638 0056 4009     		lsrs	r0, r0, #5
 639 0058 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 640              	.L132:
 641 005c 0220     		movs	r0, #2
 642 005e 054B     		ldr	r3, .L135+4
 643 0060 0874     		strb	r0, [r1, #16]
 644 0062 4B60     		str	r3, [r1, #4]
 645 0064 0120     		movs	r0, #1
 646 0066 0023     		movs	r3, #0
 647 0068 0875     		strb	r0, [r1, #20]
 648 006a 81F82530 		strb	r3, [r1, #37]
 649 006e D8E7     		b	.L133
 650              	.L136:
 651              		.align	2
 652              	.L135:
 653 0070 00000000 		.word	.LANCHOR4
 654 0074 801A0600 		.word	400000
 655 0078 00000000 		.word	.LANCHOR0
 656 007c 00000000 		.word	.LANCHOR5
 657              		.size	sd_mmc_select_slot.part.1, .-sd_mmc_select_slot.part.1
 658              		.section	.text.sd_mmc_init,"ax",%progbits
 659              		.align	1
 660              		.p2align 2,,3
 661              		.global	sd_mmc_init
 662              		.syntax unified
 663              		.thumb
 664              		.thumb_func
 665              		.fpu fpv4-sp-d16
 666              		.type	sd_mmc_init, %function
 667              	sd_mmc_init:
 668              		@ args = 0, pretend = 0, frame = 0
 669              		@ frame_needed = 0, uses_anonymous_args = 0
 670 0000 70B5     		push	{r4, r5, r6, lr}
 671 0002 154C     		ldr	r4, .L147
 672 0004 0423     		movs	r3, #4
 673 0006 2374     		strb	r3, [r4, #16]
 674 0008 0546     		mov	r5, r0
 675 000a 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 676 000c 2073     		strb	r0, [r4, #12]
 677 000e FF28     		cmp	r0, #255
 678 0010 0E46     		mov	r6, r1
 679 0012 03D0     		beq	.L138
 680 0014 0022     		movs	r2, #0
 681 0016 0121     		movs	r1, #1
 682 0018 FFF7FEFF 		bl	pinModeDuet
 683              	.L138:
 684 001c 0F4B     		ldr	r3, .L147+4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 13


 685 001e 2360     		str	r3, [r4]
 686 0020 0022     		movs	r2, #0
 687 0022 0423     		movs	r3, #4
 688 0024 E274     		strb	r2, [r4, #19]
 689 0026 84F83830 		strb	r3, [r4, #56]
 690 002a 6878     		ldrb	r0, [r5, #1]	@ zero_extendqisi2
 691 002c 84F83400 		strb	r0, [r4, #52]
 692 0030 FF28     		cmp	r0, #255
 693 0032 02D0     		beq	.L139
 694 0034 0121     		movs	r1, #1
 695 0036 FFF7FEFF 		bl	pinModeDuet
 696              	.L139:
 697 003a 094A     		ldr	r2, .L147+8
 698 003c 094B     		ldr	r3, .L147+12
 699 003e A362     		str	r3, [r4, #40]
 700 0040 FF21     		movs	r1, #255
 701 0042 0023     		movs	r3, #0
 702 0044 84F83B30 		strb	r3, [r4, #59]
 703 0048 1170     		strb	r1, [r2]
 704 004a FFF7FEFF 		bl	hsmci_init
 705 004e 3046     		mov	r0, r6
 706 0050 BDE87040 		pop	{r4, r5, r6, lr}
 707 0054 FFF7FEBF 		b	sd_mmc_spi_init
 708              	.L148:
 709              		.align	2
 710              	.L147:
 711 0058 00000000 		.word	.LANCHOR4
 712 005c 00000000 		.word	.LANCHOR6
 713 0060 00000000 		.word	.LANCHOR5
 714 0064 00000000 		.word	.LANCHOR7
 715              		.size	sd_mmc_init, .-sd_mmc_init
 716              		.section	.text.sd_mmc_nb_slot,"ax",%progbits
 717              		.align	1
 718              		.p2align 2,,3
 719              		.global	sd_mmc_nb_slot
 720              		.syntax unified
 721              		.thumb
 722              		.thumb_func
 723              		.fpu fpv4-sp-d16
 724              		.type	sd_mmc_nb_slot, %function
 725              	sd_mmc_nb_slot:
 726              		@ args = 0, pretend = 0, frame = 0
 727              		@ frame_needed = 0, uses_anonymous_args = 0
 728              		@ link register save eliminated.
 729 0000 0220     		movs	r0, #2
 730 0002 7047     		bx	lr
 731              		.size	sd_mmc_nb_slot, .-sd_mmc_nb_slot
 732              		.section	.text.sd_mmc_check,"ax",%progbits
 733              		.align	1
 734              		.p2align 2,,3
 735              		.global	sd_mmc_check
 736              		.syntax unified
 737              		.thumb
 738              		.thumb_func
 739              		.fpu fpv4-sp-d16
 740              		.type	sd_mmc_check, %function
 741              	sd_mmc_check:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 14


 742              		@ args = 0, pretend = 0, frame = 72
 743              		@ frame_needed = 0, uses_anonymous_args = 0
 744 0000 70B5     		push	{r4, r5, r6, lr}
 745 0002 0128     		cmp	r0, #1
 746 0004 94B0     		sub	sp, sp, #80
 747 0006 2FD8     		bhi	.L207
 748 0008 0546     		mov	r5, r0
 749              	.L152:
 750 000a 2846     		mov	r0, r5
 751 000c FFF7FEFF 		bl	sd_mmc_select_slot.part.1
 752 0010 0828     		cmp	r0, #8
 753 0012 0446     		mov	r4, r0
 754 0014 F9D0     		beq	.L152
 755 0016 0128     		cmp	r0, #1
 756 0018 27D1     		bne	.L151
 757 001a 904D     		ldr	r5, .L407
 758 001c 2B68     		ldr	r3, [r5]
 759 001e 1A68     		ldr	r2, [r3]
 760 0020 92F84840 		ldrb	r4, [r2, #72]	@ zero_extendqisi2
 761 0024 1269     		ldr	r2, [r2, #16]
 762 0026 002C     		cmp	r4, #0
 763 0028 2ED1     		bne	.L393
 764 002a 8DF80F40 		strb	r4, [sp, #15]
 765 002e 5874     		strb	r0, [r3, #17]
 766 0030 9C74     		strb	r4, [r3, #18]
 767 0032 DC81     		strh	r4, [r3, #14]	@ movhi
 768 0034 9047     		blx	r2
 769 0036 2B68     		ldr	r3, [r5]
 770 0038 1B68     		ldr	r3, [r3]
 771 003a 2146     		mov	r1, r4
 772 003c 5B69     		ldr	r3, [r3, #20]
 773 003e 4FF48040 		mov	r0, #16384
 774 0042 9847     		blx	r3
 775 0044 0028     		cmp	r0, #0
 776 0046 58D1     		bne	.L394
 777              	.L172:
 778 0048 854E     		ldr	r6, .L407+4
 779 004a 2B68     		ldr	r3, [r5]
 780 004c 3278     		ldrb	r2, [r6]	@ zero_extendqisi2
 781 004e 0324     		movs	r4, #3
 782 0050 012A     		cmp	r2, #1
 783 0052 1C74     		strb	r4, [r3, #16]
 784 0054 15D8     		bhi	.L212
 785 0056 1A68     		ldr	r2, [r3]
 786 0058 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 787 005a 5368     		ldr	r3, [r2, #4]
 788 005c 9847     		blx	r3
 789 005e FF23     		movs	r3, #255
 790 0060 2046     		mov	r0, r4
 791 0062 3370     		strb	r3, [r6]
 792 0064 14B0     		add	sp, sp, #80
 793              		@ sp needed
 794 0066 70BD     		pop	{r4, r5, r6, pc}
 795              	.L207:
 796 0068 0424     		movs	r4, #4
 797              	.L151:
 798 006a 7D4D     		ldr	r5, .L407+4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 15


 799 006c 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 800 006e 012B     		cmp	r3, #1
 801 0070 07D8     		bhi	.L212
 802 0072 7A4B     		ldr	r3, .L407
 803 0074 1B68     		ldr	r3, [r3]
 804              	.L392:
 805 0076 1A68     		ldr	r2, [r3]
 806 0078 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 807 007a 5368     		ldr	r3, [r2, #4]
 808 007c 9847     		blx	r3
 809 007e FF23     		movs	r3, #255
 810 0080 2B70     		strb	r3, [r5]
 811              	.L212:
 812 0082 2046     		mov	r0, r4
 813 0084 14B0     		add	sp, sp, #80
 814              		@ sp needed
 815 0086 70BD     		pop	{r4, r5, r6, pc}
 816              	.L393:
 817 0088 0024     		movs	r4, #0
 818 008a 8DF80F40 		strb	r4, [sp, #15]
 819 008e 5874     		strb	r0, [r3, #17]
 820 0090 9C74     		strb	r4, [r3, #18]
 821 0092 DC81     		strh	r4, [r3, #14]	@ movhi
 822 0094 9047     		blx	r2
 823 0096 2B68     		ldr	r3, [r5]
 824 0098 1B68     		ldr	r3, [r3]
 825 009a 2146     		mov	r1, r4
 826 009c 5B69     		ldr	r3, [r3, #20]
 827 009e 4FF48850 		mov	r0, #4352
 828 00a2 9847     		blx	r3
 829 00a4 0028     		cmp	r0, #0
 830 00a6 CFD0     		beq	.L172
 831 00a8 0DF10F00 		add	r0, sp, #15
 832 00ac FFF7FEFF 		bl	sd_cmd8
 833 00b0 0028     		cmp	r0, #0
 834 00b2 C9D0     		beq	.L172
 835 00b4 2868     		ldr	r0, [r5]
 836 00b6 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 837 00b8 D907     		lsls	r1, r3, #31
 838 00ba 7CD4     		bmi	.L395
 839              	.L157:
 840 00bc 03F00903 		and	r3, r3, #9
 841 00c0 012B     		cmp	r3, #1
 842 00c2 0DD1     		bne	.L175
 843              	.L206:
 844 00c4 0368     		ldr	r3, [r0]
 845 00c6 4FF40071 		mov	r1, #512
 846 00ca 5B69     		ldr	r3, [r3, #20]
 847 00cc 41F21010 		movw	r0, #4368
 848 00d0 9847     		blx	r3
 849 00d2 0028     		cmp	r0, #0
 850 00d4 B8D0     		beq	.L172
 851 00d6 2868     		ldr	r0, [r5]
 852 00d8 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 853              	.L174:
 854 00da DC07     		lsls	r4, r3, #31
 855 00dc 00F13282 		bmi	.L391
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 16


 856              	.L175:
 857 00e0 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 858 00e4 0168     		ldr	r1, [r0]
 859 00e6 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 860 00e8 0C68     		ldr	r4, [r1]
 861 00ea 4168     		ldr	r1, [r0, #4]
 862 00ec C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 863 00ee 0033     		adds	r3, r3, #0
 864 00f0 18BF     		it	ne
 865 00f2 0123     		movne	r3, #1
 866 00f4 A047     		blx	r4
 867 00f6 2B68     		ldr	r3, [r5]
 868 00f8 55E0     		b	.L171
 869              	.L394:
 870 00fa 0DF10F00 		add	r0, sp, #15
 871 00fe FFF7FEFF 		bl	sd_cmd8
 872 0102 0028     		cmp	r0, #0
 873 0104 A0D0     		beq	.L172
 874 0106 2B68     		ldr	r3, [r5]
 875 0108 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 876 010a D007     		lsls	r0, r2, #31
 877 010c 00F19B80 		bmi	.L396
 878              	.L177:
 879 0110 1B68     		ldr	r3, [r3]
 880 0112 0021     		movs	r1, #0
 881 0114 5B69     		ldr	r3, [r3, #20]
 882 0116 45F20310 		movw	r0, #20739
 883 011a 9847     		blx	r3
 884 011c 0028     		cmp	r0, #0
 885 011e 93D0     		beq	.L172
 886 0120 2B68     		ldr	r3, [r5]
 887 0122 1B68     		ldr	r3, [r3]
 888 0124 9B69     		ldr	r3, [r3, #24]
 889 0126 9847     		blx	r3
 890 0128 2B68     		ldr	r3, [r5]
 891 012a 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 892 012c 010C     		lsrs	r1, r0, #16
 893 012e D007     		lsls	r0, r2, #31
 894 0130 D981     		strh	r1, [r3, #14]	@ movhi
 895 0132 00F18281 		bmi	.L397
 896              	.L196:
 897 0136 1B68     		ldr	r3, [r3]
 898 0138 0904     		lsls	r1, r1, #16
 899 013a 5B69     		ldr	r3, [r3, #20]
 900 013c 43F20710 		movw	r0, #12551
 901 0140 9847     		blx	r3
 902 0142 0028     		cmp	r0, #0
 903 0144 80D0     		beq	.L172
 904 0146 2B68     		ldr	r3, [r5]
 905 0148 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 906 014a D207     		lsls	r2, r2, #31
 907 014c 00F17F81 		bmi	.L398
 908              	.L197:
 909 0150 1A68     		ldr	r2, [r3]
 910 0152 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 911 0154 9368     		ldr	r3, [r2, #8]
 912 0156 9847     		blx	r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 17


 913 0158 0328     		cmp	r0, #3
 914 015a 00F25D81 		bhi	.L399
 915              	.L198:
 916 015e 2B68     		ldr	r3, [r5]
 917 0160 1B68     		ldr	r3, [r3]
 918 0162 DB68     		ldr	r3, [r3, #12]
 919 0164 9847     		blx	r3
 920 0166 78B1     		cbz	r0, .L201
 921 0168 2868     		ldr	r0, [r5]
 922 016a 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 923 016c 0268     		ldr	r2, [r0]
 924 016e DC07     		lsls	r4, r3, #31
 925 0170 00F17481 		bmi	.L400
 926              	.L202:
 927 0174 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 928 0178 1468     		ldr	r4, [r2]
 929 017a 4168     		ldr	r1, [r0, #4]
 930 017c 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 931 017e C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 932 0180 0033     		adds	r3, r3, #0
 933 0182 18BF     		it	ne
 934 0184 0123     		movne	r3, #1
 935 0186 A047     		blx	r4
 936              	.L201:
 937 0188 2B68     		ldr	r3, [r5]
 938 018a 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 939 018c D207     		lsls	r2, r2, #31
 940 018e 0AD5     		bpl	.L171
 941 0190 1B68     		ldr	r3, [r3]
 942 0192 4FF40071 		mov	r1, #512
 943 0196 5B69     		ldr	r3, [r3, #20]
 944 0198 41F21010 		movw	r0, #4368
 945 019c 9847     		blx	r3
 946 019e 0028     		cmp	r0, #0
 947 01a0 3FF452AF 		beq	.L172
 948              	.L390:
 949 01a4 2B68     		ldr	r3, [r5]
 950              	.L171:
 951 01a6 2E4D     		ldr	r5, .L407+4
 952 01a8 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 953 01aa 0024     		movs	r4, #0
 954 01ac 012A     		cmp	r2, #1
 955 01ae 1C74     		strb	r4, [r3, #16]
 956 01b0 7FF661AF 		bls	.L392
 957 01b4 65E7     		b	.L212
 958              	.L395:
 959 01b6 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 960 01ba A342     		cmp	r3, r4
 961 01bc 0CBF     		ite	eq
 962 01be 2646     		moveq	r6, r4
 963 01c0 4FF08046 		movne	r6, #1073741824
 964 01c4 41F6EF34 		movw	r4, #7151
 965 01c8 11E0     		b	.L160
 966              	.L401:
 967 01ca 2B68     		ldr	r3, [r5]
 968 01cc 1B68     		ldr	r3, [r3]
 969 01ce 41F22910 		movw	r0, #4393
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 18


 970 01d2 5B69     		ldr	r3, [r3, #20]
 971 01d4 9847     		blx	r3
 972 01d6 98B1     		cbz	r0, .L158
 973 01d8 2B68     		ldr	r3, [r5]
 974 01da 1B68     		ldr	r3, [r3]
 975 01dc 9B69     		ldr	r3, [r3, #24]
 976 01de 9847     		blx	r3
 977 01e0 10F00101 		ands	r1, r0, #1
 978 01e4 00F0CE80 		beq	.L159
 979 01e8 013C     		subs	r4, r4, #1
 980 01ea 2868     		ldr	r0, [r5]
 981 01ec 08D0     		beq	.L158
 982              	.L160:
 983 01ee 0368     		ldr	r3, [r0]
 984 01f0 0021     		movs	r1, #0
 985 01f2 5B69     		ldr	r3, [r3, #20]
 986 01f4 41F23710 		movw	r0, #4407
 987 01f8 9847     		blx	r3
 988 01fa 3146     		mov	r1, r6
 989 01fc 0028     		cmp	r0, #0
 990 01fe E4D1     		bne	.L401
 991              	.L158:
 992 0200 2B68     		ldr	r3, [r5]
 993 0202 0221     		movs	r1, #2
 994 0204 1A68     		ldr	r2, [r3]
 995 0206 5974     		strb	r1, [r3, #17]
 996 0208 5369     		ldr	r3, [r2, #20]
 997 020a 0021     		movs	r1, #0
 998 020c 4FF48850 		mov	r0, #4352
 999 0210 9847     		blx	r3
 1000 0212 0028     		cmp	r0, #0
 1001 0214 3FF418AF 		beq	.L172
 1002 0218 41F6EF34 		movw	r4, #7151
 1003              	.L166:
 1004 021c 2B68     		ldr	r3, [r5]
 1005 021e 1B68     		ldr	r3, [r3]
 1006 0220 0021     		movs	r1, #0
 1007 0222 5B69     		ldr	r3, [r3, #20]
 1008 0224 41F20110 		movw	r0, #4353
 1009 0228 9847     		blx	r3
 1010 022a 0028     		cmp	r0, #0
 1011 022c 3FF40CAF 		beq	.L172
 1012 0230 2B68     		ldr	r3, [r5]
 1013 0232 1B68     		ldr	r3, [r3]
 1014 0234 9B69     		ldr	r3, [r3, #24]
 1015 0236 9847     		blx	r3
 1016 0238 10F00101 		ands	r1, r0, #1
 1017 023c 00F04B81 		beq	.L165
 1018 0240 013C     		subs	r4, r4, #1
 1019 0242 EBD1     		bne	.L166
 1020 0244 00E7     		b	.L172
 1021              	.L396:
 1022 0246 9DF80F20 		ldrb	r2, [sp, #15]	@ zero_extendqisi2
 1023 024a 064E     		ldr	r6, .L407+8
 1024 024c 002A     		cmp	r2, #0
 1025 024e 08BF     		it	eq
 1026 0250 4FF4FC16 		moveq	r6, #2064384
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 19


 1027 0254 40F63504 		movw	r4, #2101
 1028 0258 17E0     		b	.L181
 1029              	.L408:
 1030 025a 00BF     		.align	2
 1031              	.L407:
 1032 025c 00000000 		.word	.LANCHOR0
 1033 0260 00000000 		.word	.LANCHOR5
 1034 0264 00801F40 		.word	1075806208
 1035              	.L403:
 1036 0268 2B68     		ldr	r3, [r5]
 1037 026a 1B68     		ldr	r3, [r3]
 1038 026c 44F22950 		movw	r0, #17705
 1039 0270 5B69     		ldr	r3, [r3, #20]
 1040 0272 9847     		blx	r3
 1041 0274 90B1     		cbz	r0, .L178
 1042 0276 2B68     		ldr	r3, [r5]
 1043 0278 1B68     		ldr	r3, [r3]
 1044 027a 9B69     		ldr	r3, [r3, #24]
 1045 027c 9847     		blx	r3
 1046 027e 0028     		cmp	r0, #0
 1047 0280 2B68     		ldr	r3, [r5]
 1048 0282 C0F2B580 		blt	.L402
 1049 0286 013C     		subs	r4, r4, #1
 1050 0288 08D0     		beq	.L178
 1051              	.L181:
 1052 028a 1B68     		ldr	r3, [r3]
 1053 028c 0021     		movs	r1, #0
 1054 028e 5B69     		ldr	r3, [r3, #20]
 1055 0290 41F23710 		movw	r0, #4407
 1056 0294 9847     		blx	r3
 1057 0296 3146     		mov	r1, r6
 1058 0298 0028     		cmp	r0, #0
 1059 029a E5D1     		bne	.L403
 1060              	.L178:
 1061 029c 2B68     		ldr	r3, [r5]
 1062 029e 0221     		movs	r1, #2
 1063 02a0 1A68     		ldr	r2, [r3]
 1064 02a2 5974     		strb	r1, [r3, #17]
 1065 02a4 5369     		ldr	r3, [r2, #20]
 1066 02a6 0021     		movs	r1, #0
 1067 02a8 4FF48040 		mov	r0, #16384
 1068 02ac 9847     		blx	r3
 1069 02ae 0028     		cmp	r0, #0
 1070 02b0 3FF4CAAE 		beq	.L172
 1071 02b4 A84E     		ldr	r6, .L409
 1072 02b6 41F26904 		movw	r4, #4201
 1073 02ba 02E0     		b	.L185
 1074              	.L183:
 1075 02bc 013C     		subs	r4, r4, #1
 1076 02be 3FF4C3AE 		beq	.L172
 1077              	.L185:
 1078 02c2 2B68     		ldr	r3, [r5]
 1079 02c4 1B68     		ldr	r3, [r3]
 1080 02c6 3146     		mov	r1, r6
 1081 02c8 5B69     		ldr	r3, [r3, #20]
 1082 02ca 44F20150 		movw	r0, #17665
 1083 02ce 9847     		blx	r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 20


 1084 02d0 0028     		cmp	r0, #0
 1085 02d2 3FF4B9AE 		beq	.L172
 1086 02d6 2B68     		ldr	r3, [r5]
 1087 02d8 1B68     		ldr	r3, [r3]
 1088 02da 9B69     		ldr	r3, [r3, #24]
 1089 02dc 9847     		blx	r3
 1090 02de 021E     		subs	r2, r0, #0
 1091 02e0 ECDA     		bge	.L183
 1092 02e2 02F0C042 		and	r2, r2, #1610612736
 1093 02e6 B2F1804F 		cmp	r2, #1073741824
 1094 02ea 2B68     		ldr	r3, [r5]
 1095 02ec 00F0B881 		beq	.L404
 1096              	.L184:
 1097 02f0 1B68     		ldr	r3, [r3]
 1098 02f2 0021     		movs	r1, #0
 1099 02f4 5B69     		ldr	r3, [r3, #20]
 1100 02f6 45F60230 		movw	r0, #23298
 1101 02fa 9847     		blx	r3
 1102 02fc 0028     		cmp	r0, #0
 1103 02fe 3FF4A3AE 		beq	.L172
 1104 0302 2B68     		ldr	r3, [r5]
 1105 0304 1A68     		ldr	r2, [r3]
 1106 0306 0121     		movs	r1, #1
 1107 0308 D981     		strh	r1, [r3, #14]	@ movhi
 1108 030a 41F20310 		movw	r0, #4355
 1109 030e 5369     		ldr	r3, [r2, #20]
 1110 0310 4FF48031 		mov	r1, #65536
 1111 0314 9847     		blx	r3
 1112 0316 0028     		cmp	r0, #0
 1113 0318 3FF496AE 		beq	.L172
 1114 031c FFF7FEFF 		bl	sd_mmc_cmd9_mci
 1115 0320 0028     		cmp	r0, #0
 1116 0322 3FF491AE 		beq	.L172
 1117 0326 FFF7FEFF 		bl	mmc_decode_csd
 1118 032a 2B68     		ldr	r3, [r5]
 1119 032c D989     		ldrh	r1, [r3, #14]
 1120 032e 1B68     		ldr	r3, [r3]
 1121 0330 0904     		lsls	r1, r1, #16
 1122 0332 5B69     		ldr	r3, [r3, #20]
 1123 0334 43F20710 		movw	r0, #12551
 1124 0338 9847     		blx	r3
 1125 033a 0028     		cmp	r0, #0
 1126 033c 3FF484AE 		beq	.L172
 1127 0340 2868     		ldr	r0, [r5]
 1128 0342 837C     		ldrb	r3, [r0, #18]	@ zero_extendqisi2
 1129 0344 3F2B     		cmp	r3, #63
 1130 0346 00F22B81 		bhi	.L405
 1131 034a 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1132 034e 0168     		ldr	r1, [r0]
 1133 0350 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1134 0352 0C68     		ldr	r4, [r1]
 1135 0354 4168     		ldr	r1, [r0, #4]
 1136 0356 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1137 0358 0033     		adds	r3, r3, #0
 1138 035a 18BF     		it	ne
 1139 035c 0123     		movne	r3, #1
 1140 035e A047     		blx	r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 21


 1141              	.L192:
 1142 0360 0A24     		movs	r4, #10
 1143 0362 03E0     		b	.L195
 1144              	.L387:
 1145 0364 14F0FF04 		ands	r4, r4, #255
 1146 0368 3FF46EAE 		beq	.L172
 1147              	.L195:
 1148 036c 2B68     		ldr	r3, [r5]
 1149 036e 1B68     		ldr	r3, [r3]
 1150 0370 4FF40071 		mov	r1, #512
 1151 0374 5B69     		ldr	r3, [r3, #20]
 1152 0376 41F21010 		movw	r0, #4368
 1153 037a 9847     		blx	r3
 1154 037c 013C     		subs	r4, r4, #1
 1155 037e 0028     		cmp	r0, #0
 1156 0380 F0D0     		beq	.L387
 1157 0382 0FE7     		b	.L390
 1158              	.L159:
 1159 0384 2B68     		ldr	r3, [r5]
 1160 0386 1B68     		ldr	r3, [r3]
 1161 0388 40F23A50 		movw	r0, #1338
 1162 038c 5B69     		ldr	r3, [r3, #20]
 1163 038e 9847     		blx	r3
 1164 0390 0028     		cmp	r0, #0
 1165 0392 3FF435AF 		beq	.L158
 1166 0396 2B68     		ldr	r3, [r5]
 1167 0398 1B68     		ldr	r3, [r3]
 1168 039a 9B69     		ldr	r3, [r3, #24]
 1169 039c 9847     		blx	r3
 1170 039e 4200     		lsls	r2, r0, #1
 1171 03a0 2B68     		ldr	r3, [r5]
 1172 03a2 03D5     		bpl	.L162
 1173 03a4 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1174 03a6 42F00802 		orr	r2, r2, #8
 1175 03aa 5A74     		strb	r2, [r3, #17]
 1176              	.L162:
 1177 03ac 1B68     		ldr	r3, [r3]
 1178 03ae 0021     		movs	r1, #0
 1179 03b0 5B69     		ldr	r3, [r3, #20]
 1180 03b2 41F23B10 		movw	r0, #4411
 1181 03b6 9847     		blx	r3
 1182 03b8 0028     		cmp	r0, #0
 1183 03ba 3FF445AE 		beq	.L172
 1184 03be 2868     		ldr	r0, [r5]
 1185 03c0 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1186 03c2 DE07     		lsls	r6, r3, #31
 1187 03c4 7FF57AAE 		bpl	.L157
 1188 03c8 FFF7FEFF 		bl	sd_mmc_cmd9_spi
 1189 03cc 0028     		cmp	r0, #0
 1190 03ce 3FF43BAE 		beq	.L172
 1191 03d2 FFF7FEFF 		bl	sd_decode_csd
 1192 03d6 FFF7FEFF 		bl	sd_acmd51
 1193 03da 0028     		cmp	r0, #0
 1194 03dc 3FF434AE 		beq	.L172
 1195 03e0 2868     		ldr	r0, [r5]
 1196 03e2 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1197 03e4 03F00902 		and	r2, r3, #9
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 22


 1198 03e8 012A     		cmp	r2, #1
 1199 03ea 3FF46BAE 		beq	.L206
 1200 03ee 74E6     		b	.L174
 1201              	.L402:
 1202 03f0 4100     		lsls	r1, r0, #1
 1203 03f2 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1204 03f4 02D5     		bpl	.L180
 1205 03f6 42F00802 		orr	r2, r2, #8
 1206 03fa 5A74     		strb	r2, [r3, #17]
 1207              	.L180:
 1208 03fc 1968     		ldr	r1, [r3]
 1209 03fe D607     		lsls	r6, r2, #31
 1210 0400 4C69     		ldr	r4, [r1, #20]
 1211 0402 7FF585AE 		bpl	.L177
 1212 0406 0021     		movs	r1, #0
 1213 0408 45F60230 		movw	r0, #23298
 1214 040c A047     		blx	r4
 1215 040e 0028     		cmp	r0, #0
 1216 0410 3FF41AAE 		beq	.L172
 1217 0414 2B68     		ldr	r3, [r5]
 1218 0416 7BE6     		b	.L177
 1219              	.L399:
 1220 0418 2868     		ldr	r0, [r5]
 1221 041a 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1222 041c 0268     		ldr	r2, [r0]
 1223 041e DE07     		lsls	r6, r3, #31
 1224 0420 00F1A080 		bmi	.L406
 1225              	.L199:
 1226 0424 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1227 0428 1468     		ldr	r4, [r2]
 1228 042a 4168     		ldr	r1, [r0, #4]
 1229 042c 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1230 042e C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1231 0430 0033     		adds	r3, r3, #0
 1232 0432 18BF     		it	ne
 1233 0434 0123     		movne	r3, #1
 1234 0436 A047     		blx	r4
 1235 0438 91E6     		b	.L198
 1236              	.L397:
 1237 043a FFF7FEFF 		bl	sd_mmc_cmd9_mci
 1238 043e 0028     		cmp	r0, #0
 1239 0440 3FF402AE 		beq	.L172
 1240 0444 FFF7FEFF 		bl	sd_decode_csd
 1241 0448 2B68     		ldr	r3, [r5]
 1242 044a D989     		ldrh	r1, [r3, #14]
 1243 044c 73E6     		b	.L196
 1244              	.L398:
 1245 044e FFF7FEFF 		bl	sd_acmd51
 1246 0452 0028     		cmp	r0, #0
 1247 0454 3FF4F8AD 		beq	.L172
 1248 0458 2B68     		ldr	r3, [r5]
 1249 045a 79E6     		b	.L197
 1250              	.L400:
 1251 045c 837C     		ldrb	r3, [r0, #18]	@ zero_extendqisi2
 1252 045e 102B     		cmp	r3, #16
 1253 0460 7FF688AE 		bls	.L202
 1254 0464 0124     		movs	r4, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 23


 1255 0466 0094     		str	r4, [sp]
 1256 0468 166A     		ldr	r6, [r2, #32]
 1257 046a 3C49     		ldr	r1, .L409+4
 1258 046c 3C48     		ldr	r0, .L409+8
 1259 046e 2346     		mov	r3, r4
 1260 0470 4022     		movs	r2, #64
 1261 0472 B047     		blx	r6
 1262 0474 0028     		cmp	r0, #0
 1263 0476 3FF4E7AD 		beq	.L172
 1264 047a 2B68     		ldr	r3, [r5]
 1265 047c 1B68     		ldr	r3, [r3]
 1266 047e 2146     		mov	r1, r4
 1267 0480 1B6B     		ldr	r3, [r3, #48]
 1268 0482 04A8     		add	r0, sp, #16
 1269 0484 9847     		blx	r3
 1270 0486 0028     		cmp	r0, #0
 1271 0488 3FF4DEAD 		beq	.L172
 1272 048c 2B68     		ldr	r3, [r5]
 1273 048e 1B68     		ldr	r3, [r3]
 1274 0490 5B6B     		ldr	r3, [r3, #52]
 1275 0492 9847     		blx	r3
 1276 0494 0028     		cmp	r0, #0
 1277 0496 3FF4D7AD 		beq	.L172
 1278 049a 2B68     		ldr	r3, [r5]
 1279 049c 1B68     		ldr	r3, [r3]
 1280 049e 9B69     		ldr	r3, [r3, #24]
 1281 04a0 9847     		blx	r3
 1282 04a2 0106     		lsls	r1, r0, #24
 1283 04a4 3FF5D0AD 		bmi	.L172
 1284 04a8 9DF82030 		ldrb	r3, [sp, #32]	@ zero_extendqisi2
 1285 04ac 2868     		ldr	r0, [r5]
 1286 04ae 03F00F03 		and	r3, r3, #15
 1287 04b2 0F2B     		cmp	r3, #15
 1288 04b4 4DD0     		beq	.L204
 1289 04b6 BDF82C30 		ldrh	r3, [sp, #44]
 1290 04ba 002B     		cmp	r3, #0
 1291 04bc 7FF4C4AD 		bne	.L172
 1292 04c0 0368     		ldr	r3, [r0]
 1293 04c2 1B69     		ldr	r3, [r3, #16]
 1294 04c4 9847     		blx	r3
 1295 04c6 2868     		ldr	r0, [r5]
 1296 04c8 4368     		ldr	r3, [r0, #4]
 1297 04ca 80F82540 		strb	r4, [r0, #37]
 1298 04ce A340     		lsls	r3, r3, r4
 1299 04d0 4360     		str	r3, [r0, #4]
 1300 04d2 0268     		ldr	r2, [r0]
 1301 04d4 4EE6     		b	.L202
 1302              	.L165:
 1303 04d6 2B68     		ldr	r3, [r5]
 1304 04d8 1B68     		ldr	r3, [r3]
 1305 04da 40F23A50 		movw	r0, #1338
 1306 04de 5B69     		ldr	r3, [r3, #20]
 1307 04e0 9847     		blx	r3
 1308 04e2 0028     		cmp	r0, #0
 1309 04e4 3FF4B0AD 		beq	.L172
 1310 04e8 2B68     		ldr	r3, [r5]
 1311 04ea 1B68     		ldr	r3, [r3]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 24


 1312 04ec 9B69     		ldr	r3, [r3, #24]
 1313 04ee 9847     		blx	r3
 1314 04f0 00F0C040 		and	r0, r0, #1610612736
 1315 04f4 B0F1804F 		cmp	r0, #1073741824
 1316 04f8 04D1     		bne	.L167
 1317 04fa 2A68     		ldr	r2, [r5]
 1318 04fc 537C     		ldrb	r3, [r2, #17]	@ zero_extendqisi2
 1319 04fe 43F00803 		orr	r3, r3, #8
 1320 0502 5374     		strb	r3, [r2, #17]
 1321              	.L167:
 1322 0504 2B68     		ldr	r3, [r5]
 1323 0506 1B68     		ldr	r3, [r3]
 1324 0508 0021     		movs	r1, #0
 1325 050a 5B69     		ldr	r3, [r3, #20]
 1326 050c 41F23B10 		movw	r0, #4411
 1327 0510 9847     		blx	r3
 1328 0512 0028     		cmp	r0, #0
 1329 0514 3FF498AD 		beq	.L172
 1330 0518 FFF7FEFF 		bl	sd_mmc_cmd9_spi
 1331 051c 0028     		cmp	r0, #0
 1332 051e 3FF493AD 		beq	.L172
 1333 0522 FFF7FEFF 		bl	mmc_decode_csd
 1334 0526 2B68     		ldr	r3, [r5]
 1335 0528 9B7C     		ldrb	r3, [r3, #18]	@ zero_extendqisi2
 1336 052a 3F2B     		cmp	r3, #63
 1337 052c 32D8     		bhi	.L168
 1338              	.L170:
 1339 052e 2B68     		ldr	r3, [r5]
 1340 0530 1B68     		ldr	r3, [r3]
 1341 0532 4FF40071 		mov	r1, #512
 1342 0536 5B69     		ldr	r3, [r3, #20]
 1343 0538 41F21010 		movw	r0, #4368
 1344 053c 9847     		blx	r3
 1345 053e 0028     		cmp	r0, #0
 1346 0540 3FF482AD 		beq	.L172
 1347              	.L391:
 1348 0544 FFF7FEFF 		bl	sd_mmc_cmd13
 1349 0548 0028     		cmp	r0, #0
 1350 054a 3FF47DAD 		beq	.L172
 1351 054e 2868     		ldr	r0, [r5]
 1352 0550 C6E5     		b	.L175
 1353              	.L204:
 1354 0552 0268     		ldr	r2, [r0]
 1355 0554 0EE6     		b	.L202
 1356              	.L410:
 1357 0556 00BF     		.align	2
 1358              	.L409:
 1359 0558 00801F40 		.word	1075806208
 1360 055c 01FFFF80 		.word	-2130706687
 1361 0560 06110800 		.word	528646
 1362              	.L406:
 1363 0564 C189     		ldrh	r1, [r0, #14]
 1364 0566 5369     		ldr	r3, [r2, #20]
 1365 0568 0904     		lsls	r1, r1, #16
 1366 056a 41F23710 		movw	r0, #4407
 1367 056e 9847     		blx	r3
 1368 0570 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 25


 1369 0572 3FF469AD 		beq	.L172
 1370 0576 2B68     		ldr	r3, [r5]
 1371 0578 1B68     		ldr	r3, [r3]
 1372 057a 0221     		movs	r1, #2
 1373 057c 5B69     		ldr	r3, [r3, #20]
 1374 057e 41F20610 		movw	r0, #4358
 1375 0582 9847     		blx	r3
 1376 0584 0028     		cmp	r0, #0
 1377 0586 3FF45FAD 		beq	.L172
 1378 058a 2868     		ldr	r0, [r5]
 1379 058c 0423     		movs	r3, #4
 1380 058e 0268     		ldr	r2, [r0]
 1381 0590 0375     		strb	r3, [r0, #20]
 1382 0592 47E7     		b	.L199
 1383              	.L168:
 1384 0594 04A8     		add	r0, sp, #16
 1385 0596 FFF7FEFF 		bl	mmc_cmd8
 1386 059a 0028     		cmp	r0, #0
 1387 059c C7D1     		bne	.L170
 1388 059e 53E5     		b	.L172
 1389              	.L405:
 1390 05a0 04A8     		add	r0, sp, #16
 1391 05a2 FFF7FEFF 		bl	mmc_cmd8
 1392 05a6 0028     		cmp	r0, #0
 1393 05a8 3FF44EAD 		beq	.L172
 1394 05ac 2B68     		ldr	r3, [r5]
 1395 05ae 1A68     		ldr	r2, [r3]
 1396 05b0 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1397 05b2 9368     		ldr	r3, [r2, #8]
 1398 05b4 9847     		blx	r3
 1399 05b6 0328     		cmp	r0, #3
 1400 05b8 29D9     		bls	.L188
 1401 05ba 2B68     		ldr	r3, [r5]
 1402 05bc 1A68     		ldr	r2, [r3]
 1403 05be D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1404 05c0 9368     		ldr	r3, [r2, #8]
 1405 05c2 9847     		blx	r3
 1406 05c4 0428     		cmp	r0, #4
 1407 05c6 0446     		mov	r4, r0
 1408 05c8 4FD0     		beq	.L208
 1409 05ca 2949     		ldr	r1, .L411
 1410 05cc 294B     		ldr	r3, .L411+4
 1411 05ce 0828     		cmp	r0, #8
 1412 05d0 18BF     		it	ne
 1413 05d2 1946     		movne	r1, r3
 1414              	.L190:
 1415 05d4 2B68     		ldr	r3, [r5]
 1416 05d6 1B68     		ldr	r3, [r3]
 1417 05d8 43F20610 		movw	r0, #12550
 1418 05dc 5B69     		ldr	r3, [r3, #20]
 1419 05de 9847     		blx	r3
 1420 05e0 0028     		cmp	r0, #0
 1421 05e2 3FF431AD 		beq	.L172
 1422 05e6 2B68     		ldr	r3, [r5]
 1423 05e8 1B68     		ldr	r3, [r3]
 1424 05ea 9B69     		ldr	r3, [r3, #24]
 1425 05ec 9847     		blx	r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 26


 1426 05ee 0206     		lsls	r2, r0, #24
 1427 05f0 3FF52AAD 		bmi	.L172
 1428 05f4 2868     		ldr	r0, [r5]
 1429 05f6 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1430 05fa 0168     		ldr	r1, [r0]
 1431 05fc 0475     		strb	r4, [r0, #20]
 1432 05fe 0033     		adds	r3, r3, #0
 1433 0600 2246     		mov	r2, r4
 1434 0602 18BF     		it	ne
 1435 0604 0123     		movne	r3, #1
 1436 0606 0C68     		ldr	r4, [r1]
 1437 0608 4168     		ldr	r1, [r0, #4]
 1438 060a C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1439 060c A047     		blx	r4
 1440              	.L188:
 1441 060e 2B68     		ldr	r3, [r5]
 1442 0610 1B68     		ldr	r3, [r3]
 1443 0612 DB68     		ldr	r3, [r3, #12]
 1444 0614 9847     		blx	r3
 1445 0616 0028     		cmp	r0, #0
 1446 0618 3FF4A2AE 		beq	.L192
 1447 061c 2B68     		ldr	r3, [r5]
 1448 061e 9DF81020 		ldrb	r2, [sp, #16]	@ zero_extendqisi2
 1449 0622 1B68     		ldr	r3, [r3]
 1450 0624 5B69     		ldr	r3, [r3, #20]
 1451 0626 002A     		cmp	r2, #0
 1452 0628 3FF49AAE 		beq	.L192
 1453 062c 1249     		ldr	r1, .L411+8
 1454 062e 43F20610 		movw	r0, #12550
 1455 0632 9847     		blx	r3
 1456 0634 0028     		cmp	r0, #0
 1457 0636 3FF407AD 		beq	.L172
 1458 063a 2B68     		ldr	r3, [r5]
 1459 063c 1B68     		ldr	r3, [r3]
 1460 063e 9B69     		ldr	r3, [r3, #24]
 1461 0640 9847     		blx	r3
 1462 0642 0306     		lsls	r3, r0, #24
 1463 0644 3FF500AD 		bmi	.L172
 1464 0648 2868     		ldr	r0, [r5]
 1465 064a 0C49     		ldr	r1, .L411+12
 1466 064c 0268     		ldr	r2, [r0]
 1467 064e 4160     		str	r1, [r0, #4]
 1468 0650 0123     		movs	r3, #1
 1469 0652 80F82530 		strb	r3, [r0, #37]
 1470 0656 1468     		ldr	r4, [r2]
 1471 0658 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1472 065a C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1473 065c A047     		blx	r4
 1474 065e 7FE6     		b	.L192
 1475              	.L404:
 1476 0660 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1477 0662 42F00802 		orr	r2, r2, #8
 1478 0666 5A74     		strb	r2, [r3, #17]
 1479 0668 42E6     		b	.L184
 1480              	.L208:
 1481 066a 0549     		ldr	r1, .L411+16
 1482 066c B2E7     		b	.L190
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 27


 1483              	.L412:
 1484 066e 00BF     		.align	2
 1485              	.L411:
 1486 0670 0002B701 		.word	28770816
 1487 0674 0000B701 		.word	28770304
 1488 0678 0001B903 		.word	62456064
 1489 067c 00751903 		.word	52000000
 1490 0680 0001B701 		.word	28770560
 1491              		.size	sd_mmc_check, .-sd_mmc_check
 1492              		.section	.text.sd_mmc_get_type,"ax",%progbits
 1493              		.align	1
 1494              		.p2align 2,,3
 1495              		.global	sd_mmc_get_type
 1496              		.syntax unified
 1497              		.thumb
 1498              		.thumb_func
 1499              		.fpu fpv4-sp-d16
 1500              		.type	sd_mmc_get_type, %function
 1501              	sd_mmc_get_type:
 1502              		@ args = 0, pretend = 0, frame = 0
 1503              		@ frame_needed = 0, uses_anonymous_args = 0
 1504 0000 0128     		cmp	r0, #1
 1505 0002 01D9     		bls	.L414
 1506 0004 0020     		movs	r0, #0
 1507 0006 7047     		bx	lr
 1508              	.L414:
 1509 0008 38B5     		push	{r3, r4, r5, lr}
 1510 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.1
 1511 000e 70B9     		cbnz	r0, .L416
 1512 0010 084C     		ldr	r4, .L421
 1513 0012 094D     		ldr	r5, .L421+4
 1514 0014 2278     		ldrb	r2, [r4]	@ zero_extendqisi2
 1515 0016 2B68     		ldr	r3, [r5]
 1516 0018 012A     		cmp	r2, #1
 1517 001a 06D8     		bhi	.L417
 1518 001c 1A68     		ldr	r2, [r3]
 1519 001e D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1520 0020 5368     		ldr	r3, [r2, #4]
 1521 0022 9847     		blx	r3
 1522 0024 FF22     		movs	r2, #255
 1523 0026 2B68     		ldr	r3, [r5]
 1524 0028 2270     		strb	r2, [r4]
 1525              	.L417:
 1526 002a 587C     		ldrb	r0, [r3, #17]	@ zero_extendqisi2
 1527 002c 38BD     		pop	{r3, r4, r5, pc}
 1528              	.L416:
 1529 002e 0020     		movs	r0, #0
 1530 0030 38BD     		pop	{r3, r4, r5, pc}
 1531              	.L422:
 1532 0032 00BF     		.align	2
 1533              	.L421:
 1534 0034 00000000 		.word	.LANCHOR5
 1535 0038 00000000 		.word	.LANCHOR0
 1536              		.size	sd_mmc_get_type, .-sd_mmc_get_type
 1537              		.section	.text.sd_mmc_get_version,"ax",%progbits
 1538              		.align	1
 1539              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 28


 1540              		.global	sd_mmc_get_version
 1541              		.syntax unified
 1542              		.thumb
 1543              		.thumb_func
 1544              		.fpu fpv4-sp-d16
 1545              		.type	sd_mmc_get_version, %function
 1546              	sd_mmc_get_version:
 1547              		@ args = 0, pretend = 0, frame = 0
 1548              		@ frame_needed = 0, uses_anonymous_args = 0
 1549 0000 0128     		cmp	r0, #1
 1550 0002 01D9     		bls	.L424
 1551 0004 0020     		movs	r0, #0
 1552 0006 7047     		bx	lr
 1553              	.L424:
 1554 0008 38B5     		push	{r3, r4, r5, lr}
 1555 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.1
 1556 000e 70B9     		cbnz	r0, .L426
 1557 0010 084C     		ldr	r4, .L431
 1558 0012 094D     		ldr	r5, .L431+4
 1559 0014 2278     		ldrb	r2, [r4]	@ zero_extendqisi2
 1560 0016 2B68     		ldr	r3, [r5]
 1561 0018 012A     		cmp	r2, #1
 1562 001a 06D8     		bhi	.L427
 1563 001c 1A68     		ldr	r2, [r3]
 1564 001e D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1565 0020 5368     		ldr	r3, [r2, #4]
 1566 0022 9847     		blx	r3
 1567 0024 FF22     		movs	r2, #255
 1568 0026 2B68     		ldr	r3, [r5]
 1569 0028 2270     		strb	r2, [r4]
 1570              	.L427:
 1571 002a 987C     		ldrb	r0, [r3, #18]	@ zero_extendqisi2
 1572 002c 38BD     		pop	{r3, r4, r5, pc}
 1573              	.L426:
 1574 002e 0020     		movs	r0, #0
 1575 0030 38BD     		pop	{r3, r4, r5, pc}
 1576              	.L432:
 1577 0032 00BF     		.align	2
 1578              	.L431:
 1579 0034 00000000 		.word	.LANCHOR5
 1580 0038 00000000 		.word	.LANCHOR0
 1581              		.size	sd_mmc_get_version, .-sd_mmc_get_version
 1582              		.section	.text.sd_mmc_get_capacity,"ax",%progbits
 1583              		.align	1
 1584              		.p2align 2,,3
 1585              		.global	sd_mmc_get_capacity
 1586              		.syntax unified
 1587              		.thumb
 1588              		.thumb_func
 1589              		.fpu fpv4-sp-d16
 1590              		.type	sd_mmc_get_capacity, %function
 1591              	sd_mmc_get_capacity:
 1592              		@ args = 0, pretend = 0, frame = 0
 1593              		@ frame_needed = 0, uses_anonymous_args = 0
 1594 0000 0128     		cmp	r0, #1
 1595 0002 01D9     		bls	.L434
 1596 0004 0020     		movs	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 29


 1597 0006 7047     		bx	lr
 1598              	.L434:
 1599 0008 38B5     		push	{r3, r4, r5, lr}
 1600 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.1
 1601 000e 70B9     		cbnz	r0, .L436
 1602 0010 084C     		ldr	r4, .L441
 1603 0012 094D     		ldr	r5, .L441+4
 1604 0014 2278     		ldrb	r2, [r4]	@ zero_extendqisi2
 1605 0016 2B68     		ldr	r3, [r5]
 1606 0018 012A     		cmp	r2, #1
 1607 001a 06D8     		bhi	.L437
 1608 001c 1A68     		ldr	r2, [r3]
 1609 001e D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1610 0020 5368     		ldr	r3, [r2, #4]
 1611 0022 9847     		blx	r3
 1612 0024 FF22     		movs	r2, #255
 1613 0026 2B68     		ldr	r3, [r5]
 1614 0028 2270     		strb	r2, [r4]
 1615              	.L437:
 1616 002a 9868     		ldr	r0, [r3, #8]
 1617 002c 38BD     		pop	{r3, r4, r5, pc}
 1618              	.L436:
 1619 002e 0020     		movs	r0, #0
 1620 0030 38BD     		pop	{r3, r4, r5, pc}
 1621              	.L442:
 1622 0032 00BF     		.align	2
 1623              	.L441:
 1624 0034 00000000 		.word	.LANCHOR5
 1625 0038 00000000 		.word	.LANCHOR0
 1626              		.size	sd_mmc_get_capacity, .-sd_mmc_get_capacity
 1627              		.section	.text.sd_mmc_is_write_protected,"ax",%progbits
 1628              		.align	1
 1629              		.p2align 2,,3
 1630              		.global	sd_mmc_is_write_protected
 1631              		.syntax unified
 1632              		.thumb
 1633              		.thumb_func
 1634              		.fpu fpv4-sp-d16
 1635              		.type	sd_mmc_is_write_protected, %function
 1636              	sd_mmc_is_write_protected:
 1637              		@ args = 0, pretend = 0, frame = 0
 1638              		@ frame_needed = 0, uses_anonymous_args = 0
 1639 0000 08B5     		push	{r3, lr}
 1640 0002 084B     		ldr	r3, .L447
 1641 0004 00EB8000 		add	r0, r0, r0, lsl #2
 1642 0008 03EBC003 		add	r3, r3, r0, lsl #3
 1643 000c 187B     		ldrb	r0, [r3, #12]	@ zero_extendqisi2
 1644 000e FF28     		cmp	r0, #255
 1645 0010 05D0     		beq	.L445
 1646 0012 FFF7FEFF 		bl	digitalRead
 1647 0016 80F00100 		eor	r0, r0, #1
 1648 001a C0B2     		uxtb	r0, r0
 1649 001c 08BD     		pop	{r3, pc}
 1650              	.L445:
 1651 001e 0020     		movs	r0, #0
 1652 0020 08BD     		pop	{r3, pc}
 1653              	.L448:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 30


 1654 0022 00BF     		.align	2
 1655              	.L447:
 1656 0024 00000000 		.word	.LANCHOR4
 1657              		.size	sd_mmc_is_write_protected, .-sd_mmc_is_write_protected
 1658              		.section	.text.sd_mmc_unmount,"ax",%progbits
 1659              		.align	1
 1660              		.p2align 2,,3
 1661              		.global	sd_mmc_unmount
 1662              		.syntax unified
 1663              		.thumb
 1664              		.thumb_func
 1665              		.fpu fpv4-sp-d16
 1666              		.type	sd_mmc_unmount, %function
 1667              	sd_mmc_unmount:
 1668              		@ args = 0, pretend = 0, frame = 0
 1669              		@ frame_needed = 0, uses_anonymous_args = 0
 1670              		@ link register save eliminated.
 1671 0000 034B     		ldr	r3, .L450
 1672 0002 00EB8000 		add	r0, r0, r0, lsl #2
 1673 0006 03EBC003 		add	r3, r3, r0, lsl #3
 1674 000a 0422     		movs	r2, #4
 1675 000c 1A74     		strb	r2, [r3, #16]
 1676 000e 7047     		bx	lr
 1677              	.L451:
 1678              		.align	2
 1679              	.L450:
 1680 0010 00000000 		.word	.LANCHOR4
 1681              		.size	sd_mmc_unmount, .-sd_mmc_unmount
 1682              		.section	.text.sd_mmc_get_interface_speed,"ax",%progbits
 1683              		.align	1
 1684              		.p2align 2,,3
 1685              		.global	sd_mmc_get_interface_speed
 1686              		.syntax unified
 1687              		.thumb
 1688              		.thumb_func
 1689              		.fpu fpv4-sp-d16
 1690              		.type	sd_mmc_get_interface_speed, %function
 1691              	sd_mmc_get_interface_speed:
 1692              		@ args = 0, pretend = 0, frame = 0
 1693              		@ frame_needed = 0, uses_anonymous_args = 0
 1694              		@ link register save eliminated.
 1695 0000 00EB8000 		add	r0, r0, r0, lsl #2
 1696 0004 024B     		ldr	r3, .L453
 1697 0006 53F83030 		ldr	r3, [r3, r0, lsl #3]
 1698 000a 1B6C     		ldr	r3, [r3, #64]
 1699 000c 1847     		bx	r3
 1700              	.L454:
 1701 000e 00BF     		.align	2
 1702              	.L453:
 1703 0010 00000000 		.word	.LANCHOR4
 1704              		.size	sd_mmc_get_interface_speed, .-sd_mmc_get_interface_speed
 1705              		.section	.text.sd_mmc_init_read_blocks,"ax",%progbits
 1706              		.align	1
 1707              		.p2align 2,,3
 1708              		.global	sd_mmc_init_read_blocks
 1709              		.syntax unified
 1710              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 31


 1711              		.thumb_func
 1712              		.fpu fpv4-sp-d16
 1713              		.type	sd_mmc_init_read_blocks, %function
 1714              	sd_mmc_init_read_blocks:
 1715              		@ args = 0, pretend = 0, frame = 0
 1716              		@ frame_needed = 0, uses_anonymous_args = 0
 1717 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1718 0002 0128     		cmp	r0, #1
 1719 0004 83B0     		sub	sp, sp, #12
 1720 0006 03D9     		bls	.L475
 1721 0008 0424     		movs	r4, #4
 1722              	.L456:
 1723 000a 2046     		mov	r0, r4
 1724 000c 03B0     		add	sp, sp, #12
 1725              		@ sp needed
 1726 000e F0BD     		pop	{r4, r5, r6, r7, pc}
 1727              	.L475:
 1728 0010 0E46     		mov	r6, r1
 1729 0012 1546     		mov	r5, r2
 1730 0014 FFF7FEFF 		bl	sd_mmc_select_slot.part.1
 1731 0018 0446     		mov	r4, r0
 1732 001a 0028     		cmp	r0, #0
 1733 001c F5D1     		bne	.L456
 1734 001e FFF7FEFF 		bl	sd_mmc_cmd13
 1735 0022 78B9     		cbnz	r0, .L457
 1736 0024 1D4C     		ldr	r4, .L476
 1737 0026 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1738 0028 012B     		cmp	r3, #1
 1739 002a 07D8     		bhi	.L470
 1740 002c 1C4B     		ldr	r3, .L476+4
 1741 002e 1B68     		ldr	r3, [r3]
 1742              	.L471:
 1743 0030 1A68     		ldr	r2, [r3]
 1744 0032 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1745 0034 5368     		ldr	r3, [r2, #4]
 1746 0036 9847     		blx	r3
 1747 0038 FF23     		movs	r3, #255
 1748 003a 2370     		strb	r3, [r4]
 1749              	.L470:
 1750 003c 0524     		movs	r4, #5
 1751 003e 2046     		mov	r0, r4
 1752 0040 03B0     		add	sp, sp, #12
 1753              		@ sp needed
 1754 0042 F0BD     		pop	{r4, r5, r6, r7, pc}
 1755              	.L457:
 1756 0044 164F     		ldr	r7, .L476+4
 1757 0046 1749     		ldr	r1, .L476+8
 1758 0048 3B68     		ldr	r3, [r7]
 1759 004a 1748     		ldr	r0, .L476+12
 1760 004c 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1761 004e 1B68     		ldr	r3, [r3]
 1762 0050 012D     		cmp	r5, #1
 1763 0052 98BF     		it	ls
 1764 0054 0846     		movls	r0, r1
 1765 0056 1207     		lsls	r2, r2, #28
 1766 0058 4FF00102 		mov	r2, #1
 1767 005c 58BF     		it	pl
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 32


 1768 005e 7602     		lslpl	r6, r6, #9
 1769 0060 0092     		str	r2, [sp]
 1770 0062 3146     		mov	r1, r6
 1771 0064 4FF40072 		mov	r2, #512
 1772 0068 1E6A     		ldr	r6, [r3, #32]
 1773 006a 2B46     		mov	r3, r5
 1774 006c B047     		blx	r6
 1775 006e 70B1     		cbz	r0, .L474
 1776 0070 3B68     		ldr	r3, [r7]
 1777 0072 1B68     		ldr	r3, [r3]
 1778 0074 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 1779 0078 22B9     		cbnz	r2, .L463
 1780 007a 9B69     		ldr	r3, [r3, #24]
 1781 007c 9847     		blx	r3
 1782 007e 0B4B     		ldr	r3, .L476+16
 1783 0080 0340     		ands	r3, r3, r0
 1784 0082 23B9     		cbnz	r3, .L474
 1785              	.L463:
 1786 0084 0A4A     		ldr	r2, .L476+20
 1787 0086 0B4B     		ldr	r3, .L476+24
 1788 0088 1580     		strh	r5, [r2]	@ movhi
 1789 008a 1D80     		strh	r5, [r3]	@ movhi
 1790 008c BDE7     		b	.L456
 1791              	.L474:
 1792 008e 034C     		ldr	r4, .L476
 1793 0090 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1794 0092 012B     		cmp	r3, #1
 1795 0094 D2D8     		bhi	.L470
 1796 0096 3B68     		ldr	r3, [r7]
 1797 0098 CAE7     		b	.L471
 1798              	.L477:
 1799 009a 00BF     		.align	2
 1800              	.L476:
 1801 009c 00000000 		.word	.LANCHOR5
 1802 00a0 00000000 		.word	.LANCHOR0
 1803 00a4 11110800 		.word	528657
 1804 00a8 12111000 		.word	1052946
 1805 00ac 000058E4 		.word	-463994880
 1806 00b0 00000000 		.word	.LANCHOR8
 1807 00b4 00000000 		.word	.LANCHOR9
 1808              		.size	sd_mmc_init_read_blocks, .-sd_mmc_init_read_blocks
 1809              		.section	.text.sd_mmc_start_read_blocks,"ax",%progbits
 1810              		.align	1
 1811              		.p2align 2,,3
 1812              		.global	sd_mmc_start_read_blocks
 1813              		.syntax unified
 1814              		.thumb
 1815              		.thumb_func
 1816              		.fpu fpv4-sp-d16
 1817              		.type	sd_mmc_start_read_blocks, %function
 1818              	sd_mmc_start_read_blocks:
 1819              		@ args = 0, pretend = 0, frame = 0
 1820              		@ frame_needed = 0, uses_anonymous_args = 0
 1821 0000 094B     		ldr	r3, .L483
 1822 0002 1B68     		ldr	r3, [r3]
 1823 0004 1B68     		ldr	r3, [r3]
 1824 0006 10B5     		push	{r4, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 33


 1825 0008 1B6B     		ldr	r3, [r3, #48]
 1826 000a 0C46     		mov	r4, r1
 1827 000c 9847     		blx	r3
 1828 000e 28B1     		cbz	r0, .L482
 1829 0010 064B     		ldr	r3, .L483+4
 1830 0012 1988     		ldrh	r1, [r3]
 1831 0014 091B     		subs	r1, r1, r4
 1832 0016 1980     		strh	r1, [r3]	@ movhi
 1833 0018 0020     		movs	r0, #0
 1834 001a 10BD     		pop	{r4, pc}
 1835              	.L482:
 1836 001c 034A     		ldr	r2, .L483+4
 1837 001e 0346     		mov	r3, r0
 1838 0020 1380     		strh	r3, [r2]	@ movhi
 1839 0022 0520     		movs	r0, #5
 1840 0024 10BD     		pop	{r4, pc}
 1841              	.L484:
 1842 0026 00BF     		.align	2
 1843              	.L483:
 1844 0028 00000000 		.word	.LANCHOR0
 1845 002c 00000000 		.word	.LANCHOR8
 1846              		.size	sd_mmc_start_read_blocks, .-sd_mmc_start_read_blocks
 1847              		.section	.text.sd_mmc_wait_end_of_read_blocks,"ax",%progbits
 1848              		.align	1
 1849              		.p2align 2,,3
 1850              		.global	sd_mmc_wait_end_of_read_blocks
 1851              		.syntax unified
 1852              		.thumb
 1853              		.thumb_func
 1854              		.fpu fpv4-sp-d16
 1855              		.type	sd_mmc_wait_end_of_read_blocks, %function
 1856              	sd_mmc_wait_end_of_read_blocks:
 1857              		@ args = 0, pretend = 0, frame = 0
 1858              		@ frame_needed = 0, uses_anonymous_args = 0
 1859 0000 38B5     		push	{r3, r4, r5, lr}
 1860 0002 184C     		ldr	r4, .L500
 1861 0004 2368     		ldr	r3, [r4]
 1862 0006 1B68     		ldr	r3, [r3]
 1863 0008 5B6B     		ldr	r3, [r3, #52]
 1864 000a 0546     		mov	r5, r0
 1865 000c 9847     		blx	r3
 1866 000e 38B3     		cbz	r0, .L492
 1867 0010 154B     		ldr	r3, .L500+4
 1868 0012 0DB3     		cbz	r5, .L487
 1869 0014 0022     		movs	r2, #0
 1870 0016 1A80     		strh	r2, [r3]	@ movhi
 1871              	.L488:
 1872 0018 144B     		ldr	r3, .L500+8
 1873 001a 1B88     		ldrh	r3, [r3]
 1874 001c 012B     		cmp	r3, #1
 1875 001e 0ED0     		beq	.L491
 1876 0020 2368     		ldr	r3, [r4]
 1877 0022 1B68     		ldr	r3, [r3]
 1878 0024 0021     		movs	r1, #0
 1879 0026 5B6A     		ldr	r3, [r3, #36]
 1880 0028 43F20C10 		movw	r0, #12556
 1881 002c 9847     		blx	r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 34


 1882 002e 30B9     		cbnz	r0, .L491
 1883 0030 2368     		ldr	r3, [r4]
 1884 0032 1B68     		ldr	r3, [r3]
 1885 0034 0146     		mov	r1, r0
 1886 0036 5B6A     		ldr	r3, [r3, #36]
 1887 0038 43F20C10 		movw	r0, #12556
 1888 003c 9847     		blx	r3
 1889              	.L491:
 1890 003e 0C4D     		ldr	r5, .L500+12
 1891 0040 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 1892 0042 012B     		cmp	r3, #1
 1893 0044 06D8     		bhi	.L498
 1894 0046 2368     		ldr	r3, [r4]
 1895 0048 1A68     		ldr	r2, [r3]
 1896 004a D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1897 004c 5368     		ldr	r3, [r2, #4]
 1898 004e 9847     		blx	r3
 1899 0050 FF23     		movs	r3, #255
 1900 0052 2B70     		strb	r3, [r5]
 1901              	.L498:
 1902 0054 0020     		movs	r0, #0
 1903 0056 38BD     		pop	{r3, r4, r5, pc}
 1904              	.L487:
 1905 0058 1B88     		ldrh	r3, [r3]
 1906 005a 002B     		cmp	r3, #0
 1907 005c DCD0     		beq	.L488
 1908 005e F9E7     		b	.L498
 1909              	.L492:
 1910 0060 0520     		movs	r0, #5
 1911 0062 38BD     		pop	{r3, r4, r5, pc}
 1912              	.L501:
 1913              		.align	2
 1914              	.L500:
 1915 0064 00000000 		.word	.LANCHOR0
 1916 0068 00000000 		.word	.LANCHOR8
 1917 006c 00000000 		.word	.LANCHOR9
 1918 0070 00000000 		.word	.LANCHOR5
 1919              		.size	sd_mmc_wait_end_of_read_blocks, .-sd_mmc_wait_end_of_read_blocks
 1920              		.section	.text.sd_mmc_init_write_blocks,"ax",%progbits
 1921              		.align	1
 1922              		.p2align 2,,3
 1923              		.global	sd_mmc_init_write_blocks
 1924              		.syntax unified
 1925              		.thumb
 1926              		.thumb_func
 1927              		.fpu fpv4-sp-d16
 1928              		.type	sd_mmc_init_write_blocks, %function
 1929              	sd_mmc_init_write_blocks:
 1930              		@ args = 0, pretend = 0, frame = 0
 1931              		@ frame_needed = 0, uses_anonymous_args = 0
 1932 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1933 0002 0128     		cmp	r0, #1
 1934 0004 83B0     		sub	sp, sp, #12
 1935 0006 03D9     		bls	.L527
 1936 0008 0425     		movs	r5, #4
 1937              	.L515:
 1938 000a 2846     		mov	r0, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 35


 1939 000c 03B0     		add	sp, sp, #12
 1940              		@ sp needed
 1941 000e F0BD     		pop	{r4, r5, r6, r7, pc}
 1942              	.L527:
 1943 0010 0446     		mov	r4, r0
 1944 0012 0F46     		mov	r7, r1
 1945 0014 1646     		mov	r6, r2
 1946 0016 FFF7FEFF 		bl	sd_mmc_select_slot.part.1
 1947 001a 0546     		mov	r5, r0
 1948 001c 0028     		cmp	r0, #0
 1949 001e F4D1     		bne	.L515
 1950 0020 264B     		ldr	r3, .L530
 1951 0022 04EB8404 		add	r4, r4, r4, lsl #2
 1952 0026 03EBC404 		add	r4, r3, r4, lsl #3
 1953 002a 207B     		ldrb	r0, [r4, #12]	@ zero_extendqisi2
 1954 002c FF28     		cmp	r0, #255
 1955 002e 23D1     		bne	.L528
 1956              	.L504:
 1957 0030 234C     		ldr	r4, .L530+4
 1958 0032 2448     		ldr	r0, .L530+8
 1959 0034 2368     		ldr	r3, [r4]
 1960 0036 2449     		ldr	r1, .L530+12
 1961 0038 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1962 003a 012E     		cmp	r6, #1
 1963 003c 98BF     		it	ls
 1964 003e 0846     		movls	r0, r1
 1965 0040 1207     		lsls	r2, r2, #28
 1966 0042 00D4     		bmi	.L506
 1967 0044 7F02     		lsls	r7, r7, #9
 1968              	.L506:
 1969 0046 1B68     		ldr	r3, [r3]
 1970 0048 0122     		movs	r2, #1
 1971 004a 0092     		str	r2, [sp]
 1972 004c 3946     		mov	r1, r7
 1973 004e 4FF40072 		mov	r2, #512
 1974 0052 1F6A     		ldr	r7, [r3, #32]
 1975 0054 3346     		mov	r3, r6
 1976 0056 B847     		blx	r7
 1977 0058 00B3     		cbz	r0, .L526
 1978 005a 2368     		ldr	r3, [r4]
 1979 005c 1B68     		ldr	r3, [r3]
 1980 005e 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 1981 0062 22B9     		cbnz	r2, .L509
 1982 0064 9B69     		ldr	r3, [r3, #24]
 1983 0066 9847     		blx	r3
 1984 0068 184B     		ldr	r3, .L530+16
 1985 006a 0340     		ands	r3, r3, r0
 1986 006c B3B9     		cbnz	r3, .L526
 1987              	.L509:
 1988 006e 184A     		ldr	r2, .L530+20
 1989 0070 184B     		ldr	r3, .L530+24
 1990 0072 1680     		strh	r6, [r2]	@ movhi
 1991 0074 1E80     		strh	r6, [r3]	@ movhi
 1992 0076 C8E7     		b	.L515
 1993              	.L528:
 1994 0078 FFF7FEFF 		bl	digitalRead
 1995 007c 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 36


 1996 007e D7D1     		bne	.L504
 1997 0080 154C     		ldr	r4, .L530+28
 1998 0082 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1999 0084 012B     		cmp	r3, #1
 2000 0086 16D8     		bhi	.L529
 2001 0088 0D4B     		ldr	r3, .L530+4
 2002 008a 1B68     		ldr	r3, [r3]
 2003 008c 1A68     		ldr	r2, [r3]
 2004 008e D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 2005 0090 5368     		ldr	r3, [r2, #4]
 2006 0092 9847     		blx	r3
 2007 0094 FF23     		movs	r3, #255
 2008 0096 2370     		strb	r3, [r4]
 2009 0098 0725     		movs	r5, #7
 2010 009a B6E7     		b	.L515
 2011              	.L526:
 2012 009c 0E4D     		ldr	r5, .L530+28
 2013 009e 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 2014 00a0 012B     		cmp	r3, #1
 2015 00a2 06D8     		bhi	.L525
 2016 00a4 2368     		ldr	r3, [r4]
 2017 00a6 1A68     		ldr	r2, [r3]
 2018 00a8 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 2019 00aa 5368     		ldr	r3, [r2, #4]
 2020 00ac 9847     		blx	r3
 2021 00ae FF23     		movs	r3, #255
 2022 00b0 2B70     		strb	r3, [r5]
 2023              	.L525:
 2024 00b2 0525     		movs	r5, #5
 2025 00b4 A9E7     		b	.L515
 2026              	.L529:
 2027 00b6 0725     		movs	r5, #7
 2028 00b8 A7E7     		b	.L515
 2029              	.L531:
 2030 00ba 00BF     		.align	2
 2031              	.L530:
 2032 00bc 00000000 		.word	.LANCHOR4
 2033 00c0 00000000 		.word	.LANCHOR0
 2034 00c4 19911000 		.word	1085721
 2035 00c8 18910800 		.word	561432
 2036 00cc 000058E4 		.word	-463994880
 2037 00d0 00000000 		.word	.LANCHOR8
 2038 00d4 00000000 		.word	.LANCHOR9
 2039 00d8 00000000 		.word	.LANCHOR5
 2040              		.size	sd_mmc_init_write_blocks, .-sd_mmc_init_write_blocks
 2041              		.section	.text.sd_mmc_start_write_blocks,"ax",%progbits
 2042              		.align	1
 2043              		.p2align 2,,3
 2044              		.global	sd_mmc_start_write_blocks
 2045              		.syntax unified
 2046              		.thumb
 2047              		.thumb_func
 2048              		.fpu fpv4-sp-d16
 2049              		.type	sd_mmc_start_write_blocks, %function
 2050              	sd_mmc_start_write_blocks:
 2051              		@ args = 0, pretend = 0, frame = 0
 2052              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 37


 2053 0000 094B     		ldr	r3, .L537
 2054 0002 1B68     		ldr	r3, [r3]
 2055 0004 1B68     		ldr	r3, [r3]
 2056 0006 10B5     		push	{r4, lr}
 2057 0008 9B6B     		ldr	r3, [r3, #56]
 2058 000a 0C46     		mov	r4, r1
 2059 000c 9847     		blx	r3
 2060 000e 28B1     		cbz	r0, .L536
 2061 0010 064B     		ldr	r3, .L537+4
 2062 0012 1988     		ldrh	r1, [r3]
 2063 0014 091B     		subs	r1, r1, r4
 2064 0016 1980     		strh	r1, [r3]	@ movhi
 2065 0018 0020     		movs	r0, #0
 2066 001a 10BD     		pop	{r4, pc}
 2067              	.L536:
 2068 001c 034A     		ldr	r2, .L537+4
 2069 001e 0346     		mov	r3, r0
 2070 0020 1380     		strh	r3, [r2]	@ movhi
 2071 0022 0520     		movs	r0, #5
 2072 0024 10BD     		pop	{r4, pc}
 2073              	.L538:
 2074 0026 00BF     		.align	2
 2075              	.L537:
 2076 0028 00000000 		.word	.LANCHOR0
 2077 002c 00000000 		.word	.LANCHOR8
 2078              		.size	sd_mmc_start_write_blocks, .-sd_mmc_start_write_blocks
 2079              		.section	.text.sd_mmc_wait_end_of_write_blocks,"ax",%progbits
 2080              		.align	1
 2081              		.p2align 2,,3
 2082              		.global	sd_mmc_wait_end_of_write_blocks
 2083              		.syntax unified
 2084              		.thumb
 2085              		.thumb_func
 2086              		.fpu fpv4-sp-d16
 2087              		.type	sd_mmc_wait_end_of_write_blocks, %function
 2088              	sd_mmc_wait_end_of_write_blocks:
 2089              		@ args = 0, pretend = 0, frame = 0
 2090              		@ frame_needed = 0, uses_anonymous_args = 0
 2091 0000 38B5     		push	{r3, r4, r5, lr}
 2092 0002 1E4C     		ldr	r4, .L557
 2093 0004 2368     		ldr	r3, [r4]
 2094 0006 1B68     		ldr	r3, [r3]
 2095 0008 DB6B     		ldr	r3, [r3, #60]
 2096 000a 0546     		mov	r5, r0
 2097 000c 9847     		blx	r3
 2098 000e E0B1     		cbz	r0, .L552
 2099 0010 1B4B     		ldr	r3, .L557+4
 2100 0012 E5B1     		cbz	r5, .L542
 2101 0014 0022     		movs	r2, #0
 2102 0016 1A80     		strh	r2, [r3]	@ movhi
 2103              	.L543:
 2104 0018 1A4B     		ldr	r3, .L557+8
 2105 001a 1B88     		ldrh	r3, [r3]
 2106 001c 012B     		cmp	r3, #1
 2107 001e 27D0     		beq	.L555
 2108 0020 2368     		ldr	r3, [r4]
 2109 0022 194D     		ldr	r5, .L557+12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 38


 2110 0024 1B68     		ldr	r3, [r3]
 2111 0026 93F84810 		ldrb	r1, [r3, #72]	@ zero_extendqisi2
 2112 002a A9B9     		cbnz	r1, .L546
 2113 002c 5B6A     		ldr	r3, [r3, #36]
 2114 002e 43F20C10 		movw	r0, #12556
 2115 0032 9847     		blx	r3
 2116 0034 80B9     		cbnz	r0, .L546
 2117 0036 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 2118 0038 012B     		cmp	r3, #1
 2119 003a 06D8     		bhi	.L552
 2120 003c 2368     		ldr	r3, [r4]
 2121 003e 1A68     		ldr	r2, [r3]
 2122 0040 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 2123 0042 5368     		ldr	r3, [r2, #4]
 2124 0044 9847     		blx	r3
 2125 0046 FF23     		movs	r3, #255
 2126 0048 2B70     		strb	r3, [r5]
 2127              	.L552:
 2128 004a 0520     		movs	r0, #5
 2129 004c 38BD     		pop	{r3, r4, r5, pc}
 2130              	.L542:
 2131 004e 1B88     		ldrh	r3, [r3]
 2132 0050 002B     		cmp	r3, #0
 2133 0052 E1D0     		beq	.L543
 2134              	.L554:
 2135 0054 0020     		movs	r0, #0
 2136              	.L556:
 2137 0056 38BD     		pop	{r3, r4, r5, pc}
 2138              	.L546:
 2139 0058 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 2140 005a 012B     		cmp	r3, #1
 2141 005c FAD8     		bhi	.L554
 2142              	.L553:
 2143 005e 2368     		ldr	r3, [r4]
 2144 0060 1A68     		ldr	r2, [r3]
 2145 0062 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 2146 0064 5368     		ldr	r3, [r2, #4]
 2147 0066 9847     		blx	r3
 2148 0068 FF23     		movs	r3, #255
 2149 006a 2B70     		strb	r3, [r5]
 2150 006c 0020     		movs	r0, #0
 2151 006e F2E7     		b	.L556
 2152              	.L555:
 2153 0070 054D     		ldr	r5, .L557+12
 2154 0072 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 2155 0074 012B     		cmp	r3, #1
 2156 0076 F2D9     		bls	.L553
 2157 0078 ECE7     		b	.L554
 2158              	.L558:
 2159 007a 00BF     		.align	2
 2160              	.L557:
 2161 007c 00000000 		.word	.LANCHOR0
 2162 0080 00000000 		.word	.LANCHOR8
 2163 0084 00000000 		.word	.LANCHOR9
 2164 0088 00000000 		.word	.LANCHOR5
 2165              		.size	sd_mmc_wait_end_of_write_blocks, .-sd_mmc_wait_end_of_write_blocks
 2166              		.global	mmc_trans_multipliers
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 39


 2167              		.global	sd_trans_multipliers
 2168              		.global	sd_mmc_trans_units
 2169              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 2170              		.align	2
 2171              		.type	cpu_irq_critical_section_counter, %object
 2172              		.size	cpu_irq_critical_section_counter, 4
 2173              	cpu_irq_critical_section_counter:
 2174 0000 00000000 		.space	4
 2175              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 2176              		.type	cpu_irq_prev_interrupt_state, %object
 2177              		.size	cpu_irq_prev_interrupt_state, 1
 2178              	cpu_irq_prev_interrupt_state:
 2179 0000 00       		.space	1
 2180              		.section	.bss.sd_mmc_card,"aw",%nobits
 2181              		.align	2
 2182              		.set	.LANCHOR0,. + 0
 2183              		.type	sd_mmc_card, %object
 2184              		.size	sd_mmc_card, 4
 2185              	sd_mmc_card:
 2186 0000 00000000 		.space	4
 2187              		.section	.bss.sd_mmc_cards,"aw",%nobits
 2188              		.align	2
 2189              		.set	.LANCHOR4,. + 0
 2190              		.type	sd_mmc_cards, %object
 2191              		.size	sd_mmc_cards, 80
 2192              	sd_mmc_cards:
 2193 0000 00000000 		.space	80
 2193      00000000 
 2193      00000000 
 2193      00000000 
 2193      00000000 
 2194              		.section	.bss.sd_mmc_nb_block_remaining,"aw",%nobits
 2195              		.align	1
 2196              		.set	.LANCHOR8,. + 0
 2197              		.type	sd_mmc_nb_block_remaining, %object
 2198              		.size	sd_mmc_nb_block_remaining, 2
 2199              	sd_mmc_nb_block_remaining:
 2200 0000 0000     		.space	2
 2201              		.section	.bss.sd_mmc_nb_block_to_tranfer,"aw",%nobits
 2202              		.align	1
 2203              		.set	.LANCHOR9,. + 0
 2204              		.type	sd_mmc_nb_block_to_tranfer, %object
 2205              		.size	sd_mmc_nb_block_to_tranfer, 2
 2206              	sd_mmc_nb_block_to_tranfer:
 2207 0000 0000     		.space	2
 2208              		.section	.bss.sd_mmc_slot_sel,"aw",%nobits
 2209              		.set	.LANCHOR5,. + 0
 2210              		.type	sd_mmc_slot_sel, %object
 2211              		.size	sd_mmc_slot_sel, 1
 2212              	sd_mmc_slot_sel:
 2213 0000 00       		.space	1
 2214              		.section	.rodata.hsmciInterface,"a",%progbits
 2215              		.align	2
 2216              		.set	.LANCHOR6,. + 0
 2217              		.type	hsmciInterface, %object
 2218              		.size	hsmciInterface, 76
 2219              	hsmciInterface:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 40


 2220 0000 00000000 		.word	hsmci_select_device
 2221 0004 00000000 		.word	hsmci_deselect_device
 2222 0008 00000000 		.word	hsmci_get_bus_width
 2223 000c 00000000 		.word	hsmci_is_high_speed_capable
 2224 0010 00000000 		.word	hsmci_send_clock
 2225 0014 00000000 		.word	hsmci_send_cmd
 2226 0018 00000000 		.word	hsmci_get_response
 2227 001c 00000000 		.word	hsmci_get_response_128
 2228 0020 00000000 		.word	hsmci_adtc_start
 2229 0024 00000000 		.word	hsmci_send_cmd
 2230 0028 00000000 		.word	hsmci_read_word
 2231 002c 00000000 		.word	hsmci_write_word
 2232 0030 00000000 		.word	hsmci_start_read_blocks
 2233 0034 00000000 		.word	hsmci_wait_end_of_read_blocks
 2234 0038 00000000 		.word	hsmci_start_write_blocks
 2235 003c 00000000 		.word	hsmci_wait_end_of_write_blocks
 2236 0040 00000000 		.word	hsmci_get_speed
 2237 0044 00000000 		.word	hsmci_set_idle_func
 2238 0048 00       		.byte	0
 2239 0049 000000   		.space	3
 2240              		.section	.rodata.mmc_trans_multipliers,"a",%progbits
 2241              		.align	2
 2242              		.set	.LANCHOR1,. + 0
 2243              		.type	mmc_trans_multipliers, %object
 2244              		.size	mmc_trans_multipliers, 64
 2245              	mmc_trans_multipliers:
 2246 0000 00000000 		.word	0
 2247 0004 0A000000 		.word	10
 2248 0008 0C000000 		.word	12
 2249 000c 0D000000 		.word	13
 2250 0010 0F000000 		.word	15
 2251 0014 14000000 		.word	20
 2252 0018 1A000000 		.word	26
 2253 001c 1E000000 		.word	30
 2254 0020 23000000 		.word	35
 2255 0024 28000000 		.word	40
 2256 0028 2D000000 		.word	45
 2257 002c 34000000 		.word	52
 2258 0030 37000000 		.word	55
 2259 0034 3C000000 		.word	60
 2260 0038 46000000 		.word	70
 2261 003c 50000000 		.word	80
 2262              		.section	.rodata.sd_mmc_trans_units,"a",%progbits
 2263              		.align	2
 2264              		.set	.LANCHOR2,. + 0
 2265              		.type	sd_mmc_trans_units, %object
 2266              		.size	sd_mmc_trans_units, 28
 2267              	sd_mmc_trans_units:
 2268 0000 0A000000 		.word	10
 2269 0004 64000000 		.word	100
 2270 0008 E8030000 		.word	1000
 2271 000c 10270000 		.word	10000
 2272 0010 00000000 		.word	0
 2273 0014 00000000 		.word	0
 2274 0018 00000000 		.word	0
 2275              		.section	.rodata.sd_trans_multipliers,"a",%progbits
 2276              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuzi5Uc.s 			page 41


 2277              		.set	.LANCHOR3,. + 0
 2278              		.type	sd_trans_multipliers, %object
 2279              		.size	sd_trans_multipliers, 64
 2280              	sd_trans_multipliers:
 2281 0000 00000000 		.word	0
 2282 0004 0A000000 		.word	10
 2283 0008 0C000000 		.word	12
 2284 000c 0D000000 		.word	13
 2285 0010 0F000000 		.word	15
 2286 0014 14000000 		.word	20
 2287 0018 19000000 		.word	25
 2288 001c 1E000000 		.word	30
 2289 0020 23000000 		.word	35
 2290 0024 28000000 		.word	40
 2291 0028 2D000000 		.word	45
 2292 002c 32000000 		.word	50
 2293 0030 37000000 		.word	55
 2294 0034 3C000000 		.word	60
 2295 0038 46000000 		.word	70
 2296 003c 50000000 		.word	80
 2297              		.section	.rodata.spiInterface,"a",%progbits
 2298              		.align	2
 2299              		.set	.LANCHOR7,. + 0
 2300              		.type	spiInterface, %object
 2301              		.size	spiInterface, 76
 2302              	spiInterface:
 2303 0000 00000000 		.word	sd_mmc_spi_select_device
 2304 0004 00000000 		.word	sd_mmc_spi_deselect_device
 2305 0008 00000000 		.word	sd_mmc_spi_get_bus_width
 2306 000c 00000000 		.word	sd_mmc_spi_is_high_speed_capable
 2307 0010 00000000 		.word	sd_mmc_spi_send_clock
 2308 0014 00000000 		.word	sd_mmc_spi_send_cmd
 2309 0018 00000000 		.word	sd_mmc_spi_get_response
 2310 001c 00000000 		.word	sd_mmc_spi_get_response_128
 2311 0020 00000000 		.word	sd_mmc_spi_adtc_start
 2312 0024 00000000 		.word	sd_mmc_spi_send_cmd
 2313 0028 00000000 		.word	sd_mmc_spi_read_word
 2314 002c 00000000 		.word	sd_mmc_spi_write_word
 2315 0030 00000000 		.word	sd_mmc_spi_start_read_blocks
 2316 0034 00000000 		.word	sd_mmc_spi_wait_end_of_read_blocks
 2317 0038 00000000 		.word	sd_mmc_spi_start_write_blocks
 2318 003c 00000000 		.word	sd_mmc_spi_wait_end_of_write_blocks
 2319 0040 00000000 		.word	spi_mmc_get_speed
 2320 0044 00000000 		.word	sd_mmc_spi_set_idle_func
 2321 0048 01       		.byte	1
 2322 0049 000000   		.space	3
 2323              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
