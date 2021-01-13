ARM GAS  /tmp/cc9aTA7z.s 			page 1


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
ARM GAS  /tmp/cc9aTA7z.s 			page 2


  58 0002 00BF     		.section	.text.mmc_decode_csd,"ax",%progbits
  59              		.align	1
  60              		.p2align 2,,3
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu fpv4-sp-d16
  65              		.type	mmc_decode_csd, %function
  66              	mmc_decode_csd:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69              		@ link register save eliminated.
  70 0000 F0B4     		push	{r4, r5, r6, r7}
  71 0002 264B     		ldr	r3, .L15
  72 0004 1A68     		ldr	r2, [r3]
  73 0006 537D     		ldrb	r3, [r2, #21]	@ zero_extendqisi2
  74 0008 C3F38303 		ubfx	r3, r3, #2, #4
  75 000c 013B     		subs	r3, r3, #1
  76 000e 032B     		cmp	r3, #3
  77 0010 40D8     		bhi	.L5
  78 0012 DFE803F0 		tbb	[pc, r3]
  79              	.L7:
  80 0016 3C       		.byte	(.L6-.L7)/2
  81 0017 39       		.byte	(.L8-.L7)/2
  82 0018 36       		.byte	(.L9-.L7)/2
  83 0019 02       		.byte	(.L10-.L7)/2
  84              		.p2align 1
  85              	.L10:
  86 001a 4023     		movs	r3, #64
  87 001c 9374     		strb	r3, [r2, #18]
  88              	.L11:
  89 001e 117E     		ldrb	r1, [r2, #24]	@ zero_extendqisi2
  90 0020 1F4D     		ldr	r5, .L15+4
  91 0022 D37E     		ldrb	r3, [r2, #27]	@ zero_extendqisi2
  92 0024 1F48     		ldr	r0, .L15+8
  93 0026 167F     		ldrb	r6, [r2, #28]	@ zero_extendqisi2
  94 0028 547F     		ldrb	r4, [r2, #29]	@ zero_extendqisi2
  95 002a 01F00707 		and	r7, r1, #7
  96 002e C1F3C301 		ubfx	r1, r1, #3, #4
  97 0032 55F82750 		ldr	r5, [r5, r7, lsl #2]
  98 0036 50F82100 		ldr	r0, [r0, r1, lsl #2]
  99 003a 9B02     		lsls	r3, r3, #10
 100 003c 4FF47A71 		mov	r1, #1000
 101 0040 43EA8603 		orr	r3, r3, r6, lsl #2
 102 0044 01FB05F1 		mul	r1, r1, r5
 103 0048 43EA9413 		orr	r3, r3, r4, lsr #6
 104 004c 01FB00F1 		mul	r1, r1, r0
 105 0050 C3F30B03 		ubfx	r3, r3, #0, #12
 106 0054 40F6FF70 		movw	r0, #4095
 107 0058 8342     		cmp	r3, r0
 108 005a 5160     		str	r1, [r2, #4]
 109 005c 0FD0     		beq	.L4
 110 005e 917F     		ldrb	r1, [r2, #30]	@ zero_extendqisi2
 111 0060 D47F     		ldrb	r4, [r2, #31]	@ zero_extendqisi2
 112 0062 907E     		ldrb	r0, [r2, #26]	@ zero_extendqisi2
 113 0064 4900     		lsls	r1, r1, #1
 114 0066 41EAD411 		orr	r1, r1, r4, lsr #7
ARM GAS  /tmp/cc9aTA7z.s 			page 3


 115 006a 01F00701 		and	r1, r1, #7
 116 006e 0231     		adds	r1, r1, #2
 117 0070 0133     		adds	r3, r3, #1
 118 0072 8B40     		lsls	r3, r3, r1
 119 0074 00F00F01 		and	r1, r0, #15
 120 0078 8B40     		lsls	r3, r3, r1
 121 007a 9B0A     		lsrs	r3, r3, #10
 122 007c 9360     		str	r3, [r2, #8]
 123              	.L4:
 124 007e F0BC     		pop	{r4, r5, r6, r7}
 125 0080 7047     		bx	lr
 126              	.L9:
 127 0082 3023     		movs	r3, #48
 128 0084 9374     		strb	r3, [r2, #18]
 129 0086 CAE7     		b	.L11
 130              	.L8:
 131 0088 2223     		movs	r3, #34
 132 008a 9374     		strb	r3, [r2, #18]
 133 008c C7E7     		b	.L11
 134              	.L6:
 135 008e 1423     		movs	r3, #20
 136 0090 9374     		strb	r3, [r2, #18]
 137 0092 C4E7     		b	.L11
 138              	.L5:
 139 0094 1223     		movs	r3, #18
 140 0096 9374     		strb	r3, [r2, #18]
 141 0098 C1E7     		b	.L11
 142              	.L16:
 143 009a 00BF     		.align	2
 144              	.L15:
 145 009c 00000000 		.word	.LANCHOR0
 146 00a0 00000000 		.word	.LANCHOR2
 147 00a4 00000000 		.word	.LANCHOR1
 148              		.size	mmc_decode_csd, .-mmc_decode_csd
 149              		.section	.text.sd_decode_csd,"ax",%progbits
 150              		.align	1
 151              		.p2align 2,,3
 152              		.syntax unified
 153              		.thumb
 154              		.thumb_func
 155              		.fpu fpv4-sp-d16
 156              		.type	sd_decode_csd, %function
 157              	sd_decode_csd:
 158              		@ args = 0, pretend = 0, frame = 0
 159              		@ frame_needed = 0, uses_anonymous_args = 0
 160              		@ link register save eliminated.
 161 0000 70B4     		push	{r4, r5, r6}
 162 0002 204B     		ldr	r3, .L22
 163 0004 204C     		ldr	r4, .L22+4
 164 0006 1A68     		ldr	r2, [r3]
 165 0008 2048     		ldr	r0, .L22+8
 166 000a 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 167 000c 517D     		ldrb	r1, [r2, #21]	@ zero_extendqisi2
 168 000e 03F00705 		and	r5, r3, #7
 169 0012 C3F3C303 		ubfx	r3, r3, #3, #4
 170 0016 54F82540 		ldr	r4, [r4, r5, lsl #2]
 171 001a 50F82300 		ldr	r0, [r0, r3, lsl #2]
ARM GAS  /tmp/cc9aTA7z.s 			page 4


 172 001e 4FF47A73 		mov	r3, #1000
 173 0022 03FB04F3 		mul	r3, r3, r4
 174 0026 03FB00F3 		mul	r3, r3, r0
 175 002a 5360     		str	r3, [r2, #4]
 176 002c 8B09     		lsrs	r3, r1, #6
 177 002e 1BD1     		bne	.L21
 178 0030 D37E     		ldrb	r3, [r2, #27]	@ zero_extendqisi2
 179 0032 167F     		ldrb	r6, [r2, #28]	@ zero_extendqisi2
 180 0034 917F     		ldrb	r1, [r2, #30]	@ zero_extendqisi2
 181 0036 557F     		ldrb	r5, [r2, #29]	@ zero_extendqisi2
 182 0038 D47F     		ldrb	r4, [r2, #31]	@ zero_extendqisi2
 183 003a 907E     		ldrb	r0, [r2, #26]	@ zero_extendqisi2
 184 003c 9B02     		lsls	r3, r3, #10
 185 003e 43EA8603 		orr	r3, r3, r6, lsl #2
 186 0042 4900     		lsls	r1, r1, #1
 187 0044 43EA9513 		orr	r3, r3, r5, lsr #6
 188 0048 41EAD411 		orr	r1, r1, r4, lsr #7
 189 004c C3F30B03 		ubfx	r3, r3, #0, #12
 190 0050 01F00701 		and	r1, r1, #7
 191 0054 0231     		adds	r1, r1, #2
 192 0056 0133     		adds	r3, r3, #1
 193 0058 8B40     		lsls	r3, r3, r1
 194 005a 00F00F01 		and	r1, r0, #15
 195 005e 8B40     		lsls	r3, r3, r1
 196 0060 9B0A     		lsrs	r3, r3, #10
 197 0062 9360     		str	r3, [r2, #8]
 198 0064 70BC     		pop	{r4, r5, r6}
 199 0066 7047     		bx	lr
 200              	.L21:
 201 0068 137F     		ldrb	r3, [r2, #28]	@ zero_extendqisi2
 202 006a 507F     		ldrb	r0, [r2, #29]	@ zero_extendqisi2
 203 006c 917F     		ldrb	r1, [r2, #30]	@ zero_extendqisi2
 204 006e 1B04     		lsls	r3, r3, #16
 205 0070 43EA0023 		orr	r3, r3, r0, lsl #8
 206 0074 0B43     		orrs	r3, r3, r1
 207 0076 C3F31503 		ubfx	r3, r3, #0, #22
 208 007a 0133     		adds	r3, r3, #1
 209 007c 5B02     		lsls	r3, r3, #9
 210 007e 9360     		str	r3, [r2, #8]
 211 0080 70BC     		pop	{r4, r5, r6}
 212 0082 7047     		bx	lr
 213              	.L23:
 214              		.align	2
 215              	.L22:
 216 0084 00000000 		.word	.LANCHOR0
 217 0088 00000000 		.word	.LANCHOR2
 218 008c 00000000 		.word	.LANCHOR3
 219              		.size	sd_decode_csd, .-sd_decode_csd
 220              		.section	.text.sd_mmc_cmd13,"ax",%progbits
 221              		.align	1
 222              		.p2align 2,,3
 223              		.syntax unified
 224              		.thumb
 225              		.thumb_func
 226              		.fpu fpv4-sp-d16
 227              		.type	sd_mmc_cmd13, %function
 228              	sd_mmc_cmd13:
ARM GAS  /tmp/cc9aTA7z.s 			page 5


 229              		@ args = 0, pretend = 0, frame = 0
 230              		@ frame_needed = 0, uses_anonymous_args = 0
 231 0000 70B5     		push	{r4, r5, r6, lr}
 232 0002 144C     		ldr	r4, .L43
 233 0004 144D     		ldr	r5, .L43+4
 234 0006 0BE0     		b	.L30
 235              	.L42:
 236 0008 5B69     		ldr	r3, [r3, #20]
 237 000a 9847     		blx	r3
 238 000c 00B3     		cbz	r0, .L29
 239 000e 2B68     		ldr	r3, [r5]
 240 0010 1B68     		ldr	r3, [r3]
 241 0012 9B69     		ldr	r3, [r3, #24]
 242 0014 9847     		blx	r3
 243 0016 10F0FF0F 		tst	r0, #255
 244 001a 17D0     		beq	.L28
 245              	.L31:
 246 001c 013C     		subs	r4, r4, #1
 247 001e 17D0     		beq	.L29
 248              	.L30:
 249 0020 2A68     		ldr	r2, [r5]
 250 0022 1368     		ldr	r3, [r2]
 251 0024 93F84860 		ldrb	r6, [r3, #72]	@ zero_extendqisi2
 252 0028 0021     		movs	r1, #0
 253 002a 41F60D30 		movw	r0, #6925
 254 002e 002E     		cmp	r6, #0
 255 0030 EAD1     		bne	.L42
 256 0032 D189     		ldrh	r1, [r2, #14]
 257 0034 5B69     		ldr	r3, [r3, #20]
 258 0036 0904     		lsls	r1, r1, #16
 259 0038 41F20D10 		movw	r0, #4365
 260 003c 9847     		blx	r3
 261 003e 38B1     		cbz	r0, .L29
 262 0040 2B68     		ldr	r3, [r5]
 263 0042 1B68     		ldr	r3, [r3]
 264 0044 9B69     		ldr	r3, [r3, #24]
 265 0046 9847     		blx	r3
 266 0048 C305     		lsls	r3, r0, #23
 267 004a E7D5     		bpl	.L31
 268              	.L28:
 269 004c 0120     		movs	r0, #1
 270 004e 70BD     		pop	{r4, r5, r6, pc}
 271              	.L29:
 272 0050 0020     		movs	r0, #0
 273 0052 70BD     		pop	{r4, r5, r6, pc}
 274              	.L44:
 275              		.align	2
 276              	.L43:
 277 0054 410D0300 		.word	200001
 278 0058 00000000 		.word	.LANCHOR0
 279              		.size	sd_mmc_cmd13, .-sd_mmc_cmd13
 280              		.section	.text.sd_cmd8,"ax",%progbits
 281              		.align	1
 282              		.p2align 2,,3
 283              		.syntax unified
 284              		.thumb
 285              		.thumb_func
ARM GAS  /tmp/cc9aTA7z.s 			page 6


 286              		.fpu fpv4-sp-d16
 287              		.type	sd_cmd8, %function
 288              	sd_cmd8:
 289              		@ args = 0, pretend = 0, frame = 0
 290              		@ frame_needed = 0, uses_anonymous_args = 0
 291 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 292 0002 104D     		ldr	r5, .L54
 293 0004 0026     		movs	r6, #0
 294 0006 2B68     		ldr	r3, [r5]
 295 0008 0670     		strb	r6, [r0]
 296 000a 1B68     		ldr	r3, [r3]
 297 000c 0746     		mov	r7, r0
 298 000e 4FF4D571 		mov	r1, #426
 299 0012 5B69     		ldr	r3, [r3, #20]
 300 0014 45F20850 		movw	r0, #21768
 301 0018 9847     		blx	r3
 302 001a 10B9     		cbnz	r0, .L46
 303              	.L48:
 304 001c 0124     		movs	r4, #1
 305 001e 2046     		mov	r0, r4
 306 0020 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 307              	.L46:
 308 0022 2B68     		ldr	r3, [r5]
 309 0024 1B68     		ldr	r3, [r3]
 310 0026 9B69     		ldr	r3, [r3, #24]
 311 0028 0446     		mov	r4, r0
 312 002a 9847     		blx	r3
 313 002c 431C     		adds	r3, r0, #1
 314 002e F5D0     		beq	.L48
 315 0030 C0F30B00 		ubfx	r0, r0, #0, #12
 316 0034 B0F5D57F 		cmp	r0, #426
 317 0038 0ABF     		itet	eq
 318 003a 0123     		moveq	r3, #1
 319 003c 3446     		movne	r4, r6
 320 003e 3B70     		strbeq	r3, [r7]
 321 0040 2046     		mov	r0, r4
 322 0042 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 323              	.L55:
 324              		.align	2
 325              	.L54:
 326 0044 00000000 		.word	.LANCHOR0
 327              		.size	sd_cmd8, .-sd_cmd8
 328              		.section	.text.mmc_cmd8,"ax",%progbits
 329              		.align	1
 330              		.p2align 2,,3
 331              		.syntax unified
 332              		.thumb
 333              		.thumb_func
 334              		.fpu fpv4-sp-d16
 335              		.type	mmc_cmd8, %function
 336              	mmc_cmd8:
 337              		@ args = 0, pretend = 0, frame = 8
 338              		@ frame_needed = 0, uses_anonymous_args = 0
 339 0000 70B5     		push	{r4, r5, r6, lr}
 340 0002 294D     		ldr	r5, .L85
 341 0004 2B68     		ldr	r3, [r5]
 342 0006 84B0     		sub	sp, sp, #16
ARM GAS  /tmp/cc9aTA7z.s 			page 7


 343 0008 1B68     		ldr	r3, [r3]
 344 000a 0021     		movs	r1, #0
 345 000c 0091     		str	r1, [sp]
 346 000e 0646     		mov	r6, r0
 347 0010 1C6A     		ldr	r4, [r3, #32]
 348 0012 2648     		ldr	r0, .L85+4
 349 0014 0123     		movs	r3, #1
 350 0016 4FF40072 		mov	r2, #512
 351 001a A047     		blx	r4
 352 001c 60B1     		cbz	r0, .L57
 353 001e 3224     		movs	r4, #50
 354 0020 00E0     		b	.L60
 355              	.L58:
 356 0022 5CB1     		cbz	r4, .L81
 357              	.L60:
 358 0024 2B68     		ldr	r3, [r5]
 359 0026 1B68     		ldr	r3, [r3]
 360 0028 02A8     		add	r0, sp, #8
 361 002a 9B6A     		ldr	r3, [r3, #40]
 362 002c 9847     		blx	r3
 363 002e 013C     		subs	r4, r4, #1
 364 0030 A4B2     		uxth	r4, r4
 365 0032 0028     		cmp	r0, #0
 366 0034 F5D1     		bne	.L58
 367              	.L62:
 368 0036 0020     		movs	r0, #0
 369              	.L57:
 370 0038 04B0     		add	sp, sp, #16
 371              		@ sp needed
 372 003a 70BD     		pop	{r4, r5, r6, pc}
 373              	.L81:
 374 003c 029A     		ldr	r2, [sp, #8]
 375 003e 2B68     		ldr	r3, [r5]
 376 0040 02F00202 		and	r2, r2, #2
 377 0044 3270     		strb	r2, [r6]
 378 0046 DA7E     		ldrb	r2, [r3, #27]	@ zero_extendqisi2
 379 0048 187F     		ldrb	r0, [r3, #28]	@ zero_extendqisi2
 380 004a 597F     		ldrb	r1, [r3, #29]	@ zero_extendqisi2
 381 004c 9202     		lsls	r2, r2, #10
 382 004e 42EA8002 		orr	r2, r2, r0, lsl #2
 383 0052 42EA9112 		orr	r2, r2, r1, lsr #6
 384 0056 C2F30B02 		ubfx	r2, r2, #0, #12
 385 005a 40F6FF71 		movw	r1, #4095
 386 005e 8A42     		cmp	r2, r1
 387 0060 0ED0     		beq	.L82
 388 0062 3224     		movs	r4, #50
 389 0064 03AE     		add	r6, sp, #12
 390 0066 02E0     		b	.L65
 391              	.L83:
 392 0068 802C     		cmp	r4, #128
 393 006a E5D0     		beq	.L57
 394 006c 2B68     		ldr	r3, [r5]
 395              	.L65:
 396 006e 1B68     		ldr	r3, [r3]
 397 0070 3046     		mov	r0, r6
 398 0072 9B6A     		ldr	r3, [r3, #40]
 399 0074 9847     		blx	r3
ARM GAS  /tmp/cc9aTA7z.s 			page 8


 400 0076 0134     		adds	r4, r4, #1
 401 0078 A4B2     		uxth	r4, r4
 402 007a 0028     		cmp	r0, #0
 403 007c F4D1     		bne	.L83
 404 007e DAE7     		b	.L62
 405              	.L82:
 406 0080 0424     		movs	r4, #4
 407 0082 03AE     		add	r6, sp, #12
 408 0084 00E0     		b	.L64
 409              	.L84:
 410 0086 2B68     		ldr	r3, [r5]
 411              	.L64:
 412 0088 1B68     		ldr	r3, [r3]
 413 008a 3046     		mov	r0, r6
 414 008c 9B6A     		ldr	r3, [r3, #40]
 415 008e 9847     		blx	r3
 416 0090 013C     		subs	r4, r4, #1
 417 0092 A4B2     		uxth	r4, r4
 418 0094 0028     		cmp	r0, #0
 419 0096 CED0     		beq	.L62
 420 0098 002C     		cmp	r4, #0
 421 009a F4D1     		bne	.L84
 422 009c 039A     		ldr	r2, [sp, #12]
 423 009e 2B68     		ldr	r3, [r5]
 424 00a0 5208     		lsrs	r2, r2, #1
 425 00a2 9A60     		str	r2, [r3, #8]
 426 00a4 3624     		movs	r4, #54
 427 00a6 E2E7     		b	.L65
 428              	.L86:
 429              		.align	2
 430              	.L85:
 431 00a8 00000000 		.word	.LANCHOR0
 432 00ac 08110800 		.word	528648
 433              		.size	mmc_cmd8, .-mmc_cmd8
 434              		.section	.text.sd_mmc_cmd9_spi,"ax",%progbits
 435              		.align	1
 436              		.p2align 2,,3
 437              		.syntax unified
 438              		.thumb
 439              		.thumb_func
 440              		.fpu fpv4-sp-d16
 441              		.type	sd_mmc_cmd9_spi, %function
 442              	sd_mmc_cmd9_spi:
 443              		@ args = 0, pretend = 0, frame = 0
 444              		@ frame_needed = 0, uses_anonymous_args = 0
 445 0000 70B5     		push	{r4, r5, r6, lr}
 446 0002 104D     		ldr	r5, .L96
 447 0004 1048     		ldr	r0, .L96+4
 448 0006 2B68     		ldr	r3, [r5]
 449 0008 82B0     		sub	sp, sp, #8
 450 000a D989     		ldrh	r1, [r3, #14]
 451 000c 1B68     		ldr	r3, [r3]
 452 000e 0124     		movs	r4, #1
 453 0010 0094     		str	r4, [sp]
 454 0012 1E6A     		ldr	r6, [r3, #32]
 455 0014 0904     		lsls	r1, r1, #16
 456 0016 2346     		mov	r3, r4
ARM GAS  /tmp/cc9aTA7z.s 			page 9


 457 0018 1022     		movs	r2, #16
 458 001a B047     		blx	r6
 459 001c 10B9     		cbnz	r0, .L95
 460              	.L89:
 461 001e 0020     		movs	r0, #0
 462 0020 02B0     		add	sp, sp, #8
 463              		@ sp needed
 464 0022 70BD     		pop	{r4, r5, r6, pc}
 465              	.L95:
 466 0024 2868     		ldr	r0, [r5]
 467 0026 0368     		ldr	r3, [r0]
 468 0028 2146     		mov	r1, r4
 469 002a 1B6B     		ldr	r3, [r3, #48]
 470 002c 1530     		adds	r0, r0, #21
 471 002e 9847     		blx	r3
 472 0030 0028     		cmp	r0, #0
 473 0032 F4D0     		beq	.L89
 474 0034 2B68     		ldr	r3, [r5]
 475 0036 1B68     		ldr	r3, [r3]
 476 0038 5B6B     		ldr	r3, [r3, #52]
 477 003a 02B0     		add	sp, sp, #8
 478              		@ sp needed
 479 003c BDE87040 		pop	{r4, r5, r6, lr}
 480 0040 1847     		bx	r3
 481              	.L97:
 482 0042 00BF     		.align	2
 483              	.L96:
 484 0044 00000000 		.word	.LANCHOR0
 485 0048 09110800 		.word	528649
 486              		.size	sd_mmc_cmd9_spi, .-sd_mmc_cmd9_spi
 487              		.section	.text.sd_mmc_cmd9_mci,"ax",%progbits
 488              		.align	1
 489              		.p2align 2,,3
 490              		.syntax unified
 491              		.thumb
 492              		.thumb_func
 493              		.fpu fpv4-sp-d16
 494              		.type	sd_mmc_cmd9_mci, %function
 495              	sd_mmc_cmd9_mci:
 496              		@ args = 0, pretend = 0, frame = 0
 497              		@ frame_needed = 0, uses_anonymous_args = 0
 498 0000 38B5     		push	{r3, r4, r5, lr}
 499 0002 094D     		ldr	r5, .L104
 500 0004 2B68     		ldr	r3, [r5]
 501 0006 D989     		ldrh	r1, [r3, #14]
 502 0008 1B68     		ldr	r3, [r3]
 503 000a 0904     		lsls	r1, r1, #16
 504 000c 5B69     		ldr	r3, [r3, #20]
 505 000e 41F60930 		movw	r0, #6921
 506 0012 9847     		blx	r3
 507 0014 0446     		mov	r4, r0
 508 0016 20B1     		cbz	r0, .L99
 509 0018 2868     		ldr	r0, [r5]
 510 001a 0368     		ldr	r3, [r0]
 511 001c 1530     		adds	r0, r0, #21
 512 001e DB69     		ldr	r3, [r3, #28]
 513 0020 9847     		blx	r3
ARM GAS  /tmp/cc9aTA7z.s 			page 10


 514              	.L99:
 515 0022 2046     		mov	r0, r4
 516 0024 38BD     		pop	{r3, r4, r5, pc}
 517              	.L105:
 518 0026 00BF     		.align	2
 519              	.L104:
 520 0028 00000000 		.word	.LANCHOR0
 521              		.size	sd_mmc_cmd9_mci, .-sd_mmc_cmd9_mci
 522              		.section	.text.sd_acmd51,"ax",%progbits
 523              		.align	1
 524              		.p2align 2,,3
 525              		.syntax unified
 526              		.thumb
 527              		.thumb_func
 528              		.fpu fpv4-sp-d16
 529              		.type	sd_acmd51, %function
 530              	sd_acmd51:
 531              		@ args = 0, pretend = 0, frame = 8
 532              		@ frame_needed = 0, uses_anonymous_args = 0
 533 0000 70B5     		push	{r4, r5, r6, lr}
 534 0002 214C     		ldr	r4, .L127
 535 0004 2368     		ldr	r3, [r4]
 536 0006 D989     		ldrh	r1, [r3, #14]
 537 0008 1B68     		ldr	r3, [r3]
 538 000a 84B0     		sub	sp, sp, #16
 539 000c 0904     		lsls	r1, r1, #16
 540 000e 5B69     		ldr	r3, [r3, #20]
 541 0010 41F23710 		movw	r0, #4407
 542 0014 9847     		blx	r3
 543 0016 10B9     		cbnz	r0, .L126
 544              	.L112:
 545 0018 0020     		movs	r0, #0
 546              	.L108:
 547 001a 04B0     		add	sp, sp, #16
 548              		@ sp needed
 549 001c 70BD     		pop	{r4, r5, r6, pc}
 550              	.L126:
 551 001e 2368     		ldr	r3, [r4]
 552 0020 1A48     		ldr	r0, .L127+4
 553 0022 1B68     		ldr	r3, [r3]
 554 0024 0125     		movs	r5, #1
 555 0026 0095     		str	r5, [sp]
 556 0028 1E6A     		ldr	r6, [r3, #32]
 557 002a 0822     		movs	r2, #8
 558 002c 2B46     		mov	r3, r5
 559 002e 0021     		movs	r1, #0
 560 0030 B047     		blx	r6
 561 0032 0028     		cmp	r0, #0
 562 0034 F0D0     		beq	.L112
 563 0036 2368     		ldr	r3, [r4]
 564 0038 1B68     		ldr	r3, [r3]
 565 003a 2946     		mov	r1, r5
 566 003c 1B6B     		ldr	r3, [r3, #48]
 567 003e 02A8     		add	r0, sp, #8
 568 0040 9847     		blx	r3
 569 0042 0028     		cmp	r0, #0
 570 0044 E8D0     		beq	.L112
ARM GAS  /tmp/cc9aTA7z.s 			page 11


 571 0046 2368     		ldr	r3, [r4]
 572 0048 1B68     		ldr	r3, [r3]
 573 004a 5B6B     		ldr	r3, [r3, #52]
 574 004c 9847     		blx	r3
 575 004e 0028     		cmp	r0, #0
 576 0050 E2D0     		beq	.L112
 577 0052 9DF80830 		ldrb	r3, [sp, #8]	@ zero_extendqisi2
 578 0056 03F00F03 		and	r3, r3, #15
 579 005a 012B     		cmp	r3, #1
 580 005c 0FD0     		beq	.L114
 581 005e 0AD3     		bcc	.L124
 582 0060 022B     		cmp	r3, #2
 583 0062 08D1     		bne	.L124
 584 0064 9DF80A30 		ldrb	r3, [sp, #10]	@ zero_extendqisi2
 585 0068 DB09     		lsrs	r3, r3, #7
 586 006a 2368     		ldr	r3, [r4]
 587 006c 14BF     		ite	ne
 588 006e 3022     		movne	r2, #48
 589 0070 2022     		moveq	r2, #32
 590 0072 9A74     		strb	r2, [r3, #18]
 591 0074 D1E7     		b	.L108
 592              	.L124:
 593 0076 2368     		ldr	r3, [r4]
 594 0078 1022     		movs	r2, #16
 595 007a 9A74     		strb	r2, [r3, #18]
 596 007c CDE7     		b	.L108
 597              	.L114:
 598 007e 2368     		ldr	r3, [r4]
 599 0080 1A22     		movs	r2, #26
 600 0082 9A74     		strb	r2, [r3, #18]
 601 0084 C9E7     		b	.L108
 602              	.L128:
 603 0086 00BF     		.align	2
 604              	.L127:
 605 0088 00000000 		.word	.LANCHOR0
 606 008c 33110800 		.word	528691
 607              		.size	sd_acmd51, .-sd_acmd51
 608              		.section	.text.sd_mmc_select_slot.part.5,"ax",%progbits
 609              		.align	1
 610              		.p2align 2,,3
 611              		.syntax unified
 612              		.thumb
 613              		.thumb_func
 614              		.fpu fpv4-sp-d16
 615              		.type	sd_mmc_select_slot.part.5, %function
 616              	sd_mmc_select_slot.part.5:
 617              		@ args = 0, pretend = 0, frame = 0
 618              		@ frame_needed = 0, uses_anonymous_args = 0
 619 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 620 0004 8200     		lsls	r2, r0, #2
 621 0006 1A4D     		ldr	r5, .L133
 622 0008 1118     		adds	r1, r2, r0
 623 000a 05EBC101 		add	r1, r5, r1, lsl #3
 624 000e 0446     		mov	r4, r0
 625 0010 0B7C     		ldrb	r3, [r1, #16]	@ zero_extendqisi2
 626 0012 033B     		subs	r3, r3, #3
 627 0014 012B     		cmp	r3, #1
ARM GAS  /tmp/cc9aTA7z.s 			page 12


 628 0016 21D9     		bls	.L130
 629 0018 91F82530 		ldrb	r3, [r1, #37]	@ zero_extendqisi2
 630 001c 0033     		adds	r3, r3, #0
 631 001e 18BF     		it	ne
 632 0020 0123     		movne	r3, #1
 633              	.L131:
 634 0022 2244     		add	r2, r2, r4
 635 0024 D200     		lsls	r2, r2, #3
 636 0026 AE18     		adds	r6, r5, r2
 637 0028 AA58     		ldr	r2, [r5, r2]
 638 002a DFF84CC0 		ldr	ip, .L133+8
 639 002e DFF84CE0 		ldr	lr, .L133+12
 640 0032 1768     		ldr	r7, [r2]
 641 0034 F07C     		ldrb	r0, [r6, #19]	@ zero_extendqisi2
 642 0036 327D     		ldrb	r2, [r6, #20]	@ zero_extendqisi2
 643 0038 7168     		ldr	r1, [r6, #4]
 644 003a 8EF80040 		strb	r4, [lr]
 645 003e 04EB8408 		add	r8, r4, r4, lsl #2
 646 0042 05EBC805 		add	r5, r5, r8, lsl #3
 647 0046 CCF80050 		str	r5, [ip]
 648 004a B847     		blx	r7
 649 004c 307C     		ldrb	r0, [r6, #16]	@ zero_extendqisi2
 650 004e A0F10200 		sub	r0, #2
 651 0052 B0FA80F0 		clz	r0, r0
 652 0056 4009     		lsrs	r0, r0, #5
 653 0058 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 654              	.L130:
 655 005c 0223     		movs	r3, #2
 656 005e 054E     		ldr	r6, .L133+4
 657 0060 0B74     		strb	r3, [r1, #16]
 658 0062 0120     		movs	r0, #1
 659 0064 0023     		movs	r3, #0
 660 0066 4E60     		str	r6, [r1, #4]
 661 0068 0875     		strb	r0, [r1, #20]
 662 006a 81F82530 		strb	r3, [r1, #37]
 663 006e D8E7     		b	.L131
 664              	.L134:
 665              		.align	2
 666              	.L133:
 667 0070 00000000 		.word	.LANCHOR4
 668 0074 801A0600 		.word	400000
 669 0078 00000000 		.word	.LANCHOR0
 670 007c 00000000 		.word	.LANCHOR5
 671              		.size	sd_mmc_select_slot.part.5, .-sd_mmc_select_slot.part.5
 672              		.section	.text.sd_mmc_deselect_slot.part.6,"ax",%progbits
 673              		.align	1
 674              		.p2align 2,,3
 675              		.syntax unified
 676              		.thumb
 677              		.thumb_func
 678              		.fpu fpv4-sp-d16
 679              		.type	sd_mmc_deselect_slot.part.6, %function
 680              	sd_mmc_deselect_slot.part.6:
 681              		@ args = 0, pretend = 0, frame = 0
 682              		@ frame_needed = 0, uses_anonymous_args = 0
 683 0000 08B5     		push	{r3, lr}
 684 0002 054B     		ldr	r3, .L137
ARM GAS  /tmp/cc9aTA7z.s 			page 13


 685 0004 1B68     		ldr	r3, [r3]
 686 0006 1A68     		ldr	r2, [r3]
 687 0008 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 688 000a 5368     		ldr	r3, [r2, #4]
 689 000c 9847     		blx	r3
 690 000e 034B     		ldr	r3, .L137+4
 691 0010 FF22     		movs	r2, #255
 692 0012 1A70     		strb	r2, [r3]
 693 0014 08BD     		pop	{r3, pc}
 694              	.L138:
 695 0016 00BF     		.align	2
 696              	.L137:
 697 0018 00000000 		.word	.LANCHOR0
 698 001c 00000000 		.word	.LANCHOR5
 699              		.size	sd_mmc_deselect_slot.part.6, .-sd_mmc_deselect_slot.part.6
 700              		.section	.text.sd_mmc_init,"ax",%progbits
 701              		.align	1
 702              		.p2align 2,,3
 703              		.global	sd_mmc_init
 704              		.syntax unified
 705              		.thumb
 706              		.thumb_func
 707              		.fpu fpv4-sp-d16
 708              		.type	sd_mmc_init, %function
 709              	sd_mmc_init:
 710              		@ args = 0, pretend = 0, frame = 0
 711              		@ frame_needed = 0, uses_anonymous_args = 0
 712 0000 70B5     		push	{r4, r5, r6, lr}
 713 0002 154C     		ldr	r4, .L149
 714 0004 0423     		movs	r3, #4
 715 0006 2374     		strb	r3, [r4, #16]
 716 0008 0546     		mov	r5, r0
 717 000a 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 718 000c 2073     		strb	r0, [r4, #12]
 719 000e FF28     		cmp	r0, #255
 720 0010 0E46     		mov	r6, r1
 721 0012 03D0     		beq	.L140
 722 0014 0022     		movs	r2, #0
 723 0016 0121     		movs	r1, #1
 724 0018 FFF7FEFF 		bl	pinModeDuet
 725              	.L140:
 726 001c 0F4B     		ldr	r3, .L149+4
 727 001e 2360     		str	r3, [r4]
 728 0020 0022     		movs	r2, #0
 729 0022 0423     		movs	r3, #4
 730 0024 E274     		strb	r2, [r4, #19]
 731 0026 84F83830 		strb	r3, [r4, #56]
 732 002a 6878     		ldrb	r0, [r5, #1]	@ zero_extendqisi2
 733 002c 84F83400 		strb	r0, [r4, #52]
 734 0030 FF28     		cmp	r0, #255
 735 0032 02D0     		beq	.L141
 736 0034 0121     		movs	r1, #1
 737 0036 FFF7FEFF 		bl	pinModeDuet
 738              	.L141:
 739 003a 094A     		ldr	r2, .L149+8
 740 003c 094B     		ldr	r3, .L149+12
 741 003e A362     		str	r3, [r4, #40]
ARM GAS  /tmp/cc9aTA7z.s 			page 14


 742 0040 FF21     		movs	r1, #255
 743 0042 0023     		movs	r3, #0
 744 0044 84F83B30 		strb	r3, [r4, #59]
 745 0048 1170     		strb	r1, [r2]
 746 004a FFF7FEFF 		bl	hsmci_init
 747 004e 3046     		mov	r0, r6
 748 0050 BDE87040 		pop	{r4, r5, r6, lr}
 749 0054 FFF7FEBF 		b	sd_mmc_spi_init
 750              	.L150:
 751              		.align	2
 752              	.L149:
 753 0058 00000000 		.word	.LANCHOR4
 754 005c 00000000 		.word	.LANCHOR6
 755 0060 00000000 		.word	.LANCHOR5
 756 0064 00000000 		.word	.LANCHOR7
 757              		.size	sd_mmc_init, .-sd_mmc_init
 758              		.section	.text.sd_mmc_nb_slot,"ax",%progbits
 759              		.align	1
 760              		.p2align 2,,3
 761              		.global	sd_mmc_nb_slot
 762              		.syntax unified
 763              		.thumb
 764              		.thumb_func
 765              		.fpu fpv4-sp-d16
 766              		.type	sd_mmc_nb_slot, %function
 767              	sd_mmc_nb_slot:
 768              		@ args = 0, pretend = 0, frame = 0
 769              		@ frame_needed = 0, uses_anonymous_args = 0
 770              		@ link register save eliminated.
 771 0000 0220     		movs	r0, #2
 772 0002 7047     		bx	lr
 773              		.size	sd_mmc_nb_slot, .-sd_mmc_nb_slot
 774              		.section	.text.sd_mmc_check,"ax",%progbits
 775              		.align	1
 776              		.p2align 2,,3
 777              		.global	sd_mmc_check
 778              		.syntax unified
 779              		.thumb
 780              		.thumb_func
 781              		.fpu fpv4-sp-d16
 782              		.type	sd_mmc_check, %function
 783              	sd_mmc_check:
 784              		@ args = 0, pretend = 0, frame = 72
 785              		@ frame_needed = 0, uses_anonymous_args = 0
 786 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 787 0002 0128     		cmp	r0, #1
 788 0004 95B0     		sub	sp, sp, #84
 789 0006 23D9     		bls	.L371
 790 0008 0424     		movs	r4, #4
 791              	.L153:
 792 000a 944B     		ldr	r3, .L382
 793 000c 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 794 000e 012B     		cmp	r3, #1
 795 0010 19D9     		bls	.L364
 796              	.L232:
 797 0012 2046     		mov	r0, r4
 798 0014 15B0     		add	sp, sp, #84
ARM GAS  /tmp/cc9aTA7z.s 			page 15


 799              		@ sp needed
 800 0016 F0BD     		pop	{r4, r5, r6, r7, pc}
 801              	.L157:
 802 0018 8DF80F50 		strb	r5, [sp, #15]
 803 001c 5874     		strb	r0, [r3, #17]
 804 001e 9D74     		strb	r5, [r3, #18]
 805 0020 1269     		ldr	r2, [r2, #16]
 806 0022 DD81     		strh	r5, [r3, #14]	@ movhi
 807 0024 9047     		blx	r2
 808 0026 2368     		ldr	r3, [r4]
 809 0028 1B68     		ldr	r3, [r3]
 810 002a 2946     		mov	r1, r5
 811 002c 5B69     		ldr	r3, [r3, #20]
 812 002e 4FF48040 		mov	r0, #16384
 813 0032 9847     		blx	r3
 814 0034 0028     		cmp	r0, #0
 815 0036 66D1     		bne	.L372
 816              	.L217:
 817 0038 2368     		ldr	r3, [r4]
 818              	.L220:
 819 003a 884A     		ldr	r2, .L382
 820 003c 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 821 003e 0324     		movs	r4, #3
 822 0040 012A     		cmp	r2, #1
 823 0042 1C74     		strb	r4, [r3, #16]
 824 0044 E5D8     		bhi	.L232
 825              	.L364:
 826 0046 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 827 004a 2046     		mov	r0, r4
 828 004c 15B0     		add	sp, sp, #84
 829              		@ sp needed
 830 004e F0BD     		pop	{r4, r5, r6, r7, pc}
 831              	.L371:
 832 0050 0546     		mov	r5, r0
 833              	.L316:
 834 0052 2846     		mov	r0, r5
 835 0054 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 836 0058 0828     		cmp	r0, #8
 837 005a 0446     		mov	r4, r0
 838 005c F9D0     		beq	.L316
 839 005e 0128     		cmp	r0, #1
 840 0060 D3D1     		bne	.L153
 841 0062 7F4C     		ldr	r4, .L382+4
 842 0064 2368     		ldr	r3, [r4]
 843 0066 1A68     		ldr	r2, [r3]
 844 0068 92F84850 		ldrb	r5, [r2, #72]	@ zero_extendqisi2
 845 006c 002D     		cmp	r5, #0
 846 006e D3D0     		beq	.L157
 847 0070 0025     		movs	r5, #0
 848 0072 8DF80F50 		strb	r5, [sp, #15]
 849 0076 5874     		strb	r0, [r3, #17]
 850 0078 9D74     		strb	r5, [r3, #18]
 851 007a DD81     		strh	r5, [r3, #14]	@ movhi
 852 007c 1369     		ldr	r3, [r2, #16]
 853 007e 9847     		blx	r3
 854 0080 2368     		ldr	r3, [r4]
 855 0082 1B68     		ldr	r3, [r3]
ARM GAS  /tmp/cc9aTA7z.s 			page 16


 856 0084 2946     		mov	r1, r5
 857 0086 5B69     		ldr	r3, [r3, #20]
 858 0088 4FF48850 		mov	r0, #4352
 859 008c 9847     		blx	r3
 860 008e 60B9     		cbnz	r0, .L373
 861              	.L170:
 862 0090 0025     		movs	r5, #0
 863              	.L363:
 864 0092 2368     		ldr	r3, [r4]
 865              	.L178:
 866 0094 002D     		cmp	r5, #0
 867 0096 D0D0     		beq	.L220
 868 0098 704A     		ldr	r2, .L382
 869 009a 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 870 009c 0024     		movs	r4, #0
 871 009e 012A     		cmp	r2, #1
 872 00a0 1C74     		strb	r4, [r3, #16]
 873 00a2 D0D9     		bls	.L364
 874 00a4 2046     		mov	r0, r4
 875 00a6 15B0     		add	sp, sp, #84
 876              		@ sp needed
 877 00a8 F0BD     		pop	{r4, r5, r6, r7, pc}
 878              	.L373:
 879 00aa 0DF10F00 		add	r0, sp, #15
 880 00ae FFF7FEFF 		bl	sd_cmd8
 881 00b2 0546     		mov	r5, r0
 882 00b4 0028     		cmp	r0, #0
 883 00b6 EBD0     		beq	.L170
 884 00b8 2068     		ldr	r0, [r4]
 885 00ba 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 886 00bc D907     		lsls	r1, r3, #31
 887 00be 00F19880 		bmi	.L374
 888              	.L161:
 889 00c2 03F00903 		and	r3, r3, #9
 890 00c6 012B     		cmp	r3, #1
 891 00c8 11D1     		bne	.L177
 892              	.L226:
 893 00ca 0368     		ldr	r3, [r0]
 894 00cc 4FF40071 		mov	r1, #512
 895 00d0 5B69     		ldr	r3, [r3, #20]
 896 00d2 41F21010 		movw	r0, #4368
 897 00d6 9847     		blx	r3
 898 00d8 0028     		cmp	r0, #0
 899 00da D9D0     		beq	.L170
 900 00dc 2068     		ldr	r0, [r4]
 901 00de 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 902              	.L176:
 903 00e0 DE07     		lsls	r6, r3, #31
 904 00e2 04D5     		bpl	.L177
 905 00e4 FFF7FEFF 		bl	sd_mmc_cmd13
 906 00e8 0028     		cmp	r0, #0
 907 00ea D1D0     		beq	.L170
 908              	.L362:
 909 00ec 2068     		ldr	r0, [r4]
 910              	.L177:
 911 00ee 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 912 00f2 0168     		ldr	r1, [r0]
ARM GAS  /tmp/cc9aTA7z.s 			page 17


 913 00f4 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 914 00f6 0E68     		ldr	r6, [r1]
 915 00f8 4168     		ldr	r1, [r0, #4]
 916 00fa C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 917 00fc 0033     		adds	r3, r3, #0
 918 00fe 18BF     		it	ne
 919 0100 0123     		movne	r3, #1
 920 0102 B047     		blx	r6
 921 0104 C5E7     		b	.L363
 922              	.L372:
 923 0106 0DF10F00 		add	r0, sp, #15
 924 010a FFF7FEFF 		bl	sd_cmd8
 925 010e 2368     		ldr	r3, [r4]
 926 0110 0028     		cmp	r0, #0
 927 0112 92D0     		beq	.L220
 928 0114 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 929 0116 D007     		lsls	r0, r2, #31
 930 0118 00F1FB80 		bmi	.L375
 931              	.L182:
 932 011c 1B68     		ldr	r3, [r3]
 933 011e 0021     		movs	r1, #0
 934 0120 5B69     		ldr	r3, [r3, #20]
 935 0122 45F20310 		movw	r0, #20739
 936 0126 9847     		blx	r3
 937 0128 0028     		cmp	r0, #0
 938 012a 85D0     		beq	.L217
 939 012c 2568     		ldr	r5, [r4]
 940 012e 2B68     		ldr	r3, [r5]
 941 0130 9B69     		ldr	r3, [r3, #24]
 942 0132 9847     		blx	r3
 943 0134 2368     		ldr	r3, [r4]
 944 0136 000C     		lsrs	r0, r0, #16
 945 0138 E881     		strh	r0, [r5, #14]	@ movhi
 946 013a 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 947 013c D107     		lsls	r1, r2, #31
 948 013e 07D5     		bpl	.L205
 949 0140 FFF7FEFF 		bl	sd_mmc_cmd9_mci
 950 0144 0028     		cmp	r0, #0
 951 0146 3FF477AF 		beq	.L217
 952 014a FFF7FEFF 		bl	sd_decode_csd
 953 014e 2368     		ldr	r3, [r4]
 954              	.L205:
 955 0150 D989     		ldrh	r1, [r3, #14]
 956 0152 1B68     		ldr	r3, [r3]
 957 0154 0904     		lsls	r1, r1, #16
 958 0156 5B69     		ldr	r3, [r3, #20]
 959 0158 43F20710 		movw	r0, #12551
 960 015c 9847     		blx	r3
 961 015e 2368     		ldr	r3, [r4]
 962 0160 0546     		mov	r5, r0
 963 0162 0028     		cmp	r0, #0
 964 0164 3FF469AF 		beq	.L220
 965 0168 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 966 016a D207     		lsls	r2, r2, #31
 967 016c 05D5     		bpl	.L208
 968 016e FFF7FEFF 		bl	sd_acmd51
 969 0172 2368     		ldr	r3, [r4]
ARM GAS  /tmp/cc9aTA7z.s 			page 18


 970 0174 0028     		cmp	r0, #0
 971 0176 3FF460AF 		beq	.L220
 972              	.L208:
 973 017a 1A68     		ldr	r2, [r3]
 974 017c D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 975 017e 9368     		ldr	r3, [r2, #8]
 976 0180 9847     		blx	r3
 977 0182 0328     		cmp	r0, #3
 978 0184 0FD9     		bls	.L210
 979 0186 2068     		ldr	r0, [r4]
 980 0188 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 981 018a DF07     		lsls	r7, r3, #31
 982 018c 00F1DD81 		bmi	.L211
 983 0190 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 984              	.L212:
 985 0192 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 986 0196 0668     		ldr	r6, [r0]
 987 0198 4168     		ldr	r1, [r0, #4]
 988 019a 3668     		ldr	r6, [r6]
 989 019c C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 990 019e 0033     		adds	r3, r3, #0
 991 01a0 18BF     		it	ne
 992 01a2 0123     		movne	r3, #1
 993 01a4 B047     		blx	r6
 994              	.L210:
 995 01a6 2368     		ldr	r3, [r4]
 996 01a8 1B68     		ldr	r3, [r3]
 997 01aa DB68     		ldr	r3, [r3, #12]
 998 01ac 9847     		blx	r3
 999 01ae 90B1     		cbz	r0, .L215
 1000 01b0 2068     		ldr	r0, [r4]
 1001 01b2 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1002 01b4 DE07     		lsls	r6, r3, #31
 1003 01b6 03D5     		bpl	.L216
 1004 01b8 837C     		ldrb	r3, [r0, #18]	@ zero_extendqisi2
 1005 01ba 102B     		cmp	r3, #16
 1006 01bc 00F2E481 		bhi	.L376
 1007              	.L216:
 1008 01c0 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1009 01c4 0168     		ldr	r1, [r0]
 1010 01c6 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1011 01c8 0E68     		ldr	r6, [r1]
 1012 01ca 4168     		ldr	r1, [r0, #4]
 1013 01cc C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1014 01ce 0033     		adds	r3, r3, #0
 1015 01d0 18BF     		it	ne
 1016 01d2 0123     		movne	r3, #1
 1017 01d4 B047     		blx	r6
 1018              	.L215:
 1019 01d6 2368     		ldr	r3, [r4]
 1020 01d8 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1021 01da D207     		lsls	r2, r2, #31
 1022 01dc 7FF55AAF 		bpl	.L178
 1023 01e0 1B68     		ldr	r3, [r3]
 1024 01e2 4FF40071 		mov	r1, #512
 1025 01e6 5B69     		ldr	r3, [r3, #20]
 1026 01e8 41F21010 		movw	r0, #4368
ARM GAS  /tmp/cc9aTA7z.s 			page 19


 1027 01ec 9847     		blx	r3
 1028              	.L365:
 1029 01ee 0546     		mov	r5, r0
 1030 01f0 4FE7     		b	.L363
 1031              	.L374:
 1032 01f2 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 1033 01f6 002B     		cmp	r3, #0
 1034 01f8 14BF     		ite	ne
 1035 01fa 4FF08047 		movne	r7, #1073741824
 1036 01fe 0027     		moveq	r7, #0
 1037 0200 41F6EF36 		movw	r6, #7151
 1038 0204 11E0     		b	.L164
 1039              	.L377:
 1040 0206 2368     		ldr	r3, [r4]
 1041 0208 1B68     		ldr	r3, [r3]
 1042 020a 41F22910 		movw	r0, #4393
 1043 020e 5B69     		ldr	r3, [r3, #20]
 1044 0210 9847     		blx	r3
 1045 0212 98B1     		cbz	r0, .L162
 1046 0214 2368     		ldr	r3, [r4]
 1047 0216 1B68     		ldr	r3, [r3]
 1048 0218 9B69     		ldr	r3, [r3, #24]
 1049 021a 9847     		blx	r3
 1050 021c 10F00101 		ands	r1, r0, #1
 1051 0220 00F04881 		beq	.L163
 1052 0224 013E     		subs	r6, r6, #1
 1053 0226 09D0     		beq	.L162
 1054 0228 2068     		ldr	r0, [r4]
 1055              	.L164:
 1056 022a 0368     		ldr	r3, [r0]
 1057 022c 0021     		movs	r1, #0
 1058 022e 5B69     		ldr	r3, [r3, #20]
 1059 0230 41F23710 		movw	r0, #4407
 1060 0234 9847     		blx	r3
 1061 0236 3946     		mov	r1, r7
 1062 0238 0028     		cmp	r0, #0
 1063 023a E4D1     		bne	.L377
 1064              	.L162:
 1065 023c 2368     		ldr	r3, [r4]
 1066 023e 0221     		movs	r1, #2
 1067 0240 1A68     		ldr	r2, [r3]
 1068 0242 5974     		strb	r1, [r3, #17]
 1069 0244 5369     		ldr	r3, [r2, #20]
 1070 0246 0021     		movs	r1, #0
 1071 0248 4FF48850 		mov	r0, #4352
 1072 024c 9847     		blx	r3
 1073 024e 0028     		cmp	r0, #0
 1074 0250 3FF41EAF 		beq	.L170
 1075 0254 41F6EF35 		movw	r5, #7151
 1076 0258 07E0     		b	.L171
 1077              	.L383:
 1078 025a 00BF     		.align	2
 1079              	.L382:
 1080 025c 00000000 		.word	.LANCHOR5
 1081 0260 00000000 		.word	.LANCHOR0
 1082              	.L378:
 1083 0264 013D     		subs	r5, r5, #1
ARM GAS  /tmp/cc9aTA7z.s 			page 20


 1084 0266 3FF413AF 		beq	.L170
 1085              	.L171:
 1086 026a 2368     		ldr	r3, [r4]
 1087 026c 1B68     		ldr	r3, [r3]
 1088 026e 0021     		movs	r1, #0
 1089 0270 5B69     		ldr	r3, [r3, #20]
 1090 0272 41F20110 		movw	r0, #4353
 1091 0276 9847     		blx	r3
 1092 0278 0028     		cmp	r0, #0
 1093 027a 3FF409AF 		beq	.L170
 1094 027e 2368     		ldr	r3, [r4]
 1095 0280 1B68     		ldr	r3, [r3]
 1096 0282 9B69     		ldr	r3, [r3, #24]
 1097 0284 9847     		blx	r3
 1098 0286 10F00101 		ands	r1, r0, #1
 1099 028a EBD1     		bne	.L378
 1100 028c 2368     		ldr	r3, [r4]
 1101 028e 1B68     		ldr	r3, [r3]
 1102 0290 40F23A50 		movw	r0, #1338
 1103 0294 5B69     		ldr	r3, [r3, #20]
 1104 0296 9847     		blx	r3
 1105 0298 0028     		cmp	r0, #0
 1106 029a 3FF4F9AE 		beq	.L170
 1107 029e 2368     		ldr	r3, [r4]
 1108 02a0 1B68     		ldr	r3, [r3]
 1109 02a2 9B69     		ldr	r3, [r3, #24]
 1110 02a4 9847     		blx	r3
 1111 02a6 00F0C040 		and	r0, r0, #1610612736
 1112 02aa B0F1804F 		cmp	r0, #1073741824
 1113 02ae 2368     		ldr	r3, [r4]
 1114 02b0 03D1     		bne	.L173
 1115 02b2 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1116 02b4 42F00802 		orr	r2, r2, #8
 1117 02b8 5A74     		strb	r2, [r3, #17]
 1118              	.L173:
 1119 02ba 1B68     		ldr	r3, [r3]
 1120 02bc 0021     		movs	r1, #0
 1121 02be 5B69     		ldr	r3, [r3, #20]
 1122 02c0 41F23B10 		movw	r0, #4411
 1123 02c4 9847     		blx	r3
 1124 02c6 0028     		cmp	r0, #0
 1125 02c8 3FF4E2AE 		beq	.L170
 1126 02cc FFF7FEFF 		bl	sd_mmc_cmd9_spi
 1127 02d0 0028     		cmp	r0, #0
 1128 02d2 3FF4DDAE 		beq	.L170
 1129 02d6 FFF7FEFF 		bl	mmc_decode_csd
 1130 02da 2368     		ldr	r3, [r4]
 1131 02dc 9A7C     		ldrb	r2, [r3, #18]	@ zero_extendqisi2
 1132 02de 3F2A     		cmp	r2, #63
 1133 02e0 06D9     		bls	.L174
 1134 02e2 04A8     		add	r0, sp, #16
 1135 02e4 FFF7FEFF 		bl	mmc_cmd8
 1136 02e8 0028     		cmp	r0, #0
 1137 02ea 3FF4D1AE 		beq	.L170
 1138 02ee 2368     		ldr	r3, [r4]
 1139              	.L174:
 1140 02f0 1B68     		ldr	r3, [r3]
ARM GAS  /tmp/cc9aTA7z.s 			page 21


 1141 02f2 4FF40071 		mov	r1, #512
 1142 02f6 5B69     		ldr	r3, [r3, #20]
 1143 02f8 41F21010 		movw	r0, #4368
 1144 02fc 9847     		blx	r3
 1145 02fe 0028     		cmp	r0, #0
 1146 0300 3FF4C6AE 		beq	.L170
 1147 0304 FFF7FEFF 		bl	sd_mmc_cmd13
 1148 0308 0546     		mov	r5, r0
 1149 030a 0028     		cmp	r0, #0
 1150 030c 3FF4C0AE 		beq	.L170
 1151 0310 ECE6     		b	.L362
 1152              	.L375:
 1153 0312 9DF80F20 		ldrb	r2, [sp, #15]	@ zero_extendqisi2
 1154 0316 994F     		ldr	r7, .L384
 1155 0318 002A     		cmp	r2, #0
 1156 031a 08BF     		it	eq
 1157 031c 4FF4FC17 		moveq	r7, #2064384
 1158 0320 40F63506 		movw	r6, #2101
 1159 0324 10E0     		b	.L187
 1160              	.L380:
 1161 0326 2368     		ldr	r3, [r4]
 1162 0328 1B68     		ldr	r3, [r3]
 1163 032a 44F22950 		movw	r0, #17705
 1164 032e 5B69     		ldr	r3, [r3, #20]
 1165 0330 9847     		blx	r3
 1166 0332 90B1     		cbz	r0, .L183
 1167 0334 2368     		ldr	r3, [r4]
 1168 0336 1B68     		ldr	r3, [r3]
 1169 0338 9B69     		ldr	r3, [r3, #24]
 1170 033a 9847     		blx	r3
 1171 033c 0028     		cmp	r0, #0
 1172 033e C0F2EF80 		blt	.L379
 1173 0342 013E     		subs	r6, r6, #1
 1174 0344 09D0     		beq	.L183
 1175 0346 2368     		ldr	r3, [r4]
 1176              	.L187:
 1177 0348 1B68     		ldr	r3, [r3]
 1178 034a 0021     		movs	r1, #0
 1179 034c 5B69     		ldr	r3, [r3, #20]
 1180 034e 41F23710 		movw	r0, #4407
 1181 0352 9847     		blx	r3
 1182 0354 3946     		mov	r1, r7
 1183 0356 0028     		cmp	r0, #0
 1184 0358 E5D1     		bne	.L380
 1185              	.L183:
 1186 035a 2368     		ldr	r3, [r4]
 1187 035c 0221     		movs	r1, #2
 1188 035e 1A68     		ldr	r2, [r3]
 1189 0360 5974     		strb	r1, [r3, #17]
 1190 0362 5369     		ldr	r3, [r2, #20]
 1191 0364 0021     		movs	r1, #0
 1192 0366 4FF48040 		mov	r0, #16384
 1193 036a 9847     		blx	r3
 1194 036c 0028     		cmp	r0, #0
 1195 036e 3FF490AE 		beq	.L363
 1196 0372 824F     		ldr	r7, .L384
 1197 0374 41F26906 		movw	r6, #4201
ARM GAS  /tmp/cc9aTA7z.s 			page 22


 1198 0378 02E0     		b	.L194
 1199              	.L190:
 1200 037a 013E     		subs	r6, r6, #1
 1201 037c 3FF489AE 		beq	.L363
 1202              	.L194:
 1203 0380 2368     		ldr	r3, [r4]
 1204 0382 1B68     		ldr	r3, [r3]
 1205 0384 3946     		mov	r1, r7
 1206 0386 5B69     		ldr	r3, [r3, #20]
 1207 0388 44F20150 		movw	r0, #17665
 1208 038c 9847     		blx	r3
 1209 038e 0028     		cmp	r0, #0
 1210 0390 3FF47FAE 		beq	.L363
 1211 0394 2368     		ldr	r3, [r4]
 1212 0396 1B68     		ldr	r3, [r3]
 1213 0398 9B69     		ldr	r3, [r3, #24]
 1214 039a 9847     		blx	r3
 1215 039c 031E     		subs	r3, r0, #0
 1216 039e ECDA     		bge	.L190
 1217 03a0 03F0C043 		and	r3, r3, #1610612736
 1218 03a4 B3F1804F 		cmp	r3, #1073741824
 1219 03a8 2368     		ldr	r3, [r4]
 1220 03aa 03D1     		bne	.L192
 1221 03ac 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1222 03ae 42F00802 		orr	r2, r2, #8
 1223 03b2 5A74     		strb	r2, [r3, #17]
 1224              	.L192:
 1225 03b4 1B68     		ldr	r3, [r3]
 1226 03b6 0021     		movs	r1, #0
 1227 03b8 5B69     		ldr	r3, [r3, #20]
 1228 03ba 45F60230 		movw	r0, #23298
 1229 03be 9847     		blx	r3
 1230 03c0 0028     		cmp	r0, #0
 1231 03c2 3FF466AE 		beq	.L363
 1232 03c6 2368     		ldr	r3, [r4]
 1233 03c8 1A68     		ldr	r2, [r3]
 1234 03ca 0121     		movs	r1, #1
 1235 03cc D981     		strh	r1, [r3, #14]	@ movhi
 1236 03ce 41F20310 		movw	r0, #4355
 1237 03d2 5369     		ldr	r3, [r2, #20]
 1238 03d4 4FF48031 		mov	r1, #65536
 1239 03d8 9847     		blx	r3
 1240 03da 0028     		cmp	r0, #0
 1241 03dc 3FF459AE 		beq	.L363
 1242 03e0 FFF7FEFF 		bl	sd_mmc_cmd9_mci
 1243 03e4 0028     		cmp	r0, #0
 1244 03e6 3FF454AE 		beq	.L363
 1245 03ea FFF7FEFF 		bl	mmc_decode_csd
 1246 03ee 2368     		ldr	r3, [r4]
 1247 03f0 D989     		ldrh	r1, [r3, #14]
 1248 03f2 1B68     		ldr	r3, [r3]
 1249 03f4 0904     		lsls	r1, r1, #16
 1250 03f6 5B69     		ldr	r3, [r3, #20]
 1251 03f8 43F20710 		movw	r0, #12551
 1252 03fc 9847     		blx	r3
 1253 03fe 0028     		cmp	r0, #0
 1254 0400 3FF447AE 		beq	.L363
ARM GAS  /tmp/cc9aTA7z.s 			page 23


 1255 0404 2068     		ldr	r0, [r4]
 1256 0406 837C     		ldrb	r3, [r0, #18]	@ zero_extendqisi2
 1257 0408 3F2B     		cmp	r3, #63
 1258 040a 40F2FC80 		bls	.L195
 1259 040e 04A8     		add	r0, sp, #16
 1260 0410 FFF7FEFF 		bl	mmc_cmd8
 1261 0414 0028     		cmp	r0, #0
 1262 0416 3FF43CAE 		beq	.L363
 1263 041a 2368     		ldr	r3, [r4]
 1264 041c 1A68     		ldr	r2, [r3]
 1265 041e D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1266 0420 9368     		ldr	r3, [r2, #8]
 1267 0422 9847     		blx	r3
 1268 0424 0328     		cmp	r0, #3
 1269 0426 2AD9     		bls	.L196
 1270 0428 2368     		ldr	r3, [r4]
 1271 042a 1A68     		ldr	r2, [r3]
 1272 042c D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1273 042e 9368     		ldr	r3, [r2, #8]
 1274 0430 9847     		blx	r3
 1275 0432 0428     		cmp	r0, #4
 1276 0434 0646     		mov	r6, r0
 1277 0436 00F0E280 		beq	.L228
 1278 043a 5149     		ldr	r1, .L384+4
 1279 043c 514B     		ldr	r3, .L384+8
 1280 043e 0828     		cmp	r0, #8
 1281 0440 18BF     		it	ne
 1282 0442 1946     		movne	r1, r3
 1283              	.L198:
 1284 0444 2368     		ldr	r3, [r4]
 1285 0446 1B68     		ldr	r3, [r3]
 1286 0448 43F20610 		movw	r0, #12550
 1287 044c 5B69     		ldr	r3, [r3, #20]
 1288 044e 9847     		blx	r3
 1289 0450 0028     		cmp	r0, #0
 1290 0452 3FF41EAE 		beq	.L363
 1291 0456 2368     		ldr	r3, [r4]
 1292 0458 1B68     		ldr	r3, [r3]
 1293 045a 9B69     		ldr	r3, [r3, #24]
 1294 045c 9847     		blx	r3
 1295 045e 0706     		lsls	r7, r0, #24
 1296 0460 3FF517AE 		bmi	.L363
 1297 0464 2068     		ldr	r0, [r4]
 1298 0466 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1299 046a 0168     		ldr	r1, [r0]
 1300 046c 0675     		strb	r6, [r0, #20]
 1301 046e 0033     		adds	r3, r3, #0
 1302 0470 3246     		mov	r2, r6
 1303 0472 18BF     		it	ne
 1304 0474 0123     		movne	r3, #1
 1305 0476 0E68     		ldr	r6, [r1]
 1306 0478 4168     		ldr	r1, [r0, #4]
 1307 047a C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1308 047c B047     		blx	r6
 1309              	.L196:
 1310 047e 2368     		ldr	r3, [r4]
 1311 0480 1B68     		ldr	r3, [r3]
ARM GAS  /tmp/cc9aTA7z.s 			page 24


 1312 0482 DB68     		ldr	r3, [r3, #12]
 1313 0484 9847     		blx	r3
 1314 0486 20B1     		cbz	r0, .L200
 1315 0488 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 1316 048c 002B     		cmp	r3, #0
 1317 048e 40F0C680 		bne	.L381
 1318              	.L200:
 1319 0492 0A26     		movs	r6, #10
 1320              	.L202:
 1321 0494 2368     		ldr	r3, [r4]
 1322 0496 1B68     		ldr	r3, [r3]
 1323 0498 4FF40071 		mov	r1, #512
 1324 049c 5B69     		ldr	r3, [r3, #20]
 1325 049e 41F21010 		movw	r0, #4368
 1326 04a2 9847     		blx	r3
 1327 04a4 013E     		subs	r6, r6, #1
 1328 04a6 0028     		cmp	r0, #0
 1329 04a8 7FF4A1AE 		bne	.L365
 1330 04ac 16F0FF06 		ands	r6, r6, #255
 1331 04b0 F0D1     		bne	.L202
 1332 04b2 EEE5     		b	.L363
 1333              	.L163:
 1334 04b4 2368     		ldr	r3, [r4]
 1335 04b6 1B68     		ldr	r3, [r3]
 1336 04b8 40F23A50 		movw	r0, #1338
 1337 04bc 5B69     		ldr	r3, [r3, #20]
 1338 04be 9847     		blx	r3
 1339 04c0 0028     		cmp	r0, #0
 1340 04c2 3FF4BBAE 		beq	.L162
 1341 04c6 2368     		ldr	r3, [r4]
 1342 04c8 1B68     		ldr	r3, [r3]
 1343 04ca 9B69     		ldr	r3, [r3, #24]
 1344 04cc 9847     		blx	r3
 1345 04ce 4200     		lsls	r2, r0, #1
 1346 04d0 2368     		ldr	r3, [r4]
 1347 04d2 03D5     		bpl	.L166
 1348 04d4 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1349 04d6 42F00802 		orr	r2, r2, #8
 1350 04da 5A74     		strb	r2, [r3, #17]
 1351              	.L166:
 1352 04dc 1B68     		ldr	r3, [r3]
 1353 04de 0021     		movs	r1, #0
 1354 04e0 5B69     		ldr	r3, [r3, #20]
 1355 04e2 41F23B10 		movw	r0, #4411
 1356 04e6 9847     		blx	r3
 1357 04e8 0028     		cmp	r0, #0
 1358 04ea 3FF4D1AD 		beq	.L170
 1359 04ee 2068     		ldr	r0, [r4]
 1360 04f0 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1361 04f2 DF07     		lsls	r7, r3, #31
 1362 04f4 7FF5E5AD 		bpl	.L161
 1363 04f8 FFF7FEFF 		bl	sd_mmc_cmd9_spi
 1364 04fc 0028     		cmp	r0, #0
 1365 04fe 3FF4C7AD 		beq	.L170
 1366 0502 FFF7FEFF 		bl	sd_decode_csd
 1367 0506 FFF7FEFF 		bl	sd_acmd51
 1368 050a 0028     		cmp	r0, #0
ARM GAS  /tmp/cc9aTA7z.s 			page 25


 1369 050c 3FF4C0AD 		beq	.L170
 1370 0510 2068     		ldr	r0, [r4]
 1371 0512 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1372 0514 03F00902 		and	r2, r3, #9
 1373 0518 012A     		cmp	r2, #1
 1374 051a 7FF4E1AD 		bne	.L176
 1375 051e D4E5     		b	.L226
 1376              	.L379:
 1377 0520 2368     		ldr	r3, [r4]
 1378 0522 4100     		lsls	r1, r0, #1
 1379 0524 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1380 0526 02D5     		bpl	.L186
 1381 0528 42F00802 		orr	r2, r2, #8
 1382 052c 5A74     		strb	r2, [r3, #17]
 1383              	.L186:
 1384 052e D007     		lsls	r0, r2, #31
 1385 0530 7FF5F4AD 		bpl	.L182
 1386 0534 1B68     		ldr	r3, [r3]
 1387 0536 0021     		movs	r1, #0
 1388 0538 5B69     		ldr	r3, [r3, #20]
 1389 053a 45F60230 		movw	r0, #23298
 1390 053e 9847     		blx	r3
 1391 0540 2368     		ldr	r3, [r4]
 1392 0542 0028     		cmp	r0, #0
 1393 0544 7FF4EAAD 		bne	.L182
 1394 0548 77E5     		b	.L220
 1395              	.L211:
 1396 054a C189     		ldrh	r1, [r0, #14]
 1397 054c 0368     		ldr	r3, [r0]
 1398 054e 0904     		lsls	r1, r1, #16
 1399 0550 5B69     		ldr	r3, [r3, #20]
 1400 0552 41F23710 		movw	r0, #4407
 1401 0556 9847     		blx	r3
 1402 0558 2368     		ldr	r3, [r4]
 1403 055a 0028     		cmp	r0, #0
 1404 055c 3FF46DAD 		beq	.L220
 1405 0560 1B68     		ldr	r3, [r3]
 1406 0562 0221     		movs	r1, #2
 1407 0564 5B69     		ldr	r3, [r3, #20]
 1408 0566 41F20610 		movw	r0, #4358
 1409 056a 9847     		blx	r3
 1410 056c 0028     		cmp	r0, #0
 1411 056e 3FF463AD 		beq	.L217
 1412 0572 2068     		ldr	r0, [r4]
 1413 0574 0422     		movs	r2, #4
 1414 0576 0275     		strb	r2, [r0, #20]
 1415 0578 0BE6     		b	.L212
 1416              	.L385:
 1417 057a 00BF     		.align	2
 1418              	.L384:
 1419 057c 00801F40 		.word	1075806208
 1420 0580 0002B701 		.word	28770816
 1421 0584 0000B701 		.word	28770304
 1422              	.L376:
 1423 0588 0368     		ldr	r3, [r0]
 1424 058a 3349     		ldr	r1, .L386
 1425 058c 3348     		ldr	r0, .L386+4
ARM GAS  /tmp/cc9aTA7z.s 			page 26


 1426 058e 0126     		movs	r6, #1
 1427 0590 0096     		str	r6, [sp]
 1428 0592 1F6A     		ldr	r7, [r3, #32]
 1429 0594 4022     		movs	r2, #64
 1430 0596 3346     		mov	r3, r6
 1431 0598 B847     		blx	r7
 1432 059a 0028     		cmp	r0, #0
 1433 059c 3FF44CAD 		beq	.L217
 1434 05a0 2368     		ldr	r3, [r4]
 1435 05a2 1B68     		ldr	r3, [r3]
 1436 05a4 3146     		mov	r1, r6
 1437 05a6 1B6B     		ldr	r3, [r3, #48]
 1438 05a8 04A8     		add	r0, sp, #16
 1439 05aa 9847     		blx	r3
 1440 05ac 0028     		cmp	r0, #0
 1441 05ae 3FF443AD 		beq	.L217
 1442 05b2 2368     		ldr	r3, [r4]
 1443 05b4 1B68     		ldr	r3, [r3]
 1444 05b6 5B6B     		ldr	r3, [r3, #52]
 1445 05b8 9847     		blx	r3
 1446 05ba 0028     		cmp	r0, #0
 1447 05bc 3FF43CAD 		beq	.L217
 1448 05c0 2368     		ldr	r3, [r4]
 1449 05c2 1B68     		ldr	r3, [r3]
 1450 05c4 9B69     		ldr	r3, [r3, #24]
 1451 05c6 9847     		blx	r3
 1452 05c8 0106     		lsls	r1, r0, #24
 1453 05ca 3FF535AD 		bmi	.L217
 1454 05ce 9DF82030 		ldrb	r3, [sp, #32]	@ zero_extendqisi2
 1455 05d2 03F00F03 		and	r3, r3, #15
 1456 05d6 0F2B     		cmp	r3, #15
 1457 05d8 13D0     		beq	.L218
 1458 05da BDF82C30 		ldrh	r3, [sp, #44]
 1459 05de 5BBA     		rev16	r3, r3
 1460 05e0 9BB2     		uxth	r3, r3
 1461 05e2 002B     		cmp	r3, #0
 1462 05e4 7FF428AD 		bne	.L217
 1463 05e8 2368     		ldr	r3, [r4]
 1464 05ea 1B68     		ldr	r3, [r3]
 1465 05ec 1B69     		ldr	r3, [r3, #16]
 1466 05ee 9847     		blx	r3
 1467 05f0 2068     		ldr	r0, [r4]
 1468 05f2 4368     		ldr	r3, [r0, #4]
 1469 05f4 80F82560 		strb	r6, [r0, #37]
 1470 05f8 B340     		lsls	r3, r3, r6
 1471 05fa 4360     		str	r3, [r0, #4]
 1472 05fc E0E5     		b	.L216
 1473              	.L228:
 1474 05fe 1849     		ldr	r1, .L386+8
 1475 0600 20E7     		b	.L198
 1476              	.L218:
 1477 0602 2068     		ldr	r0, [r4]
 1478 0604 DCE5     		b	.L216
 1479              	.L195:
 1480 0606 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1481 060a 0168     		ldr	r1, [r0]
 1482 060c 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
ARM GAS  /tmp/cc9aTA7z.s 			page 27


 1483 060e 0E68     		ldr	r6, [r1]
 1484 0610 4168     		ldr	r1, [r0, #4]
 1485 0612 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1486 0614 0033     		adds	r3, r3, #0
 1487 0616 18BF     		it	ne
 1488 0618 0123     		movne	r3, #1
 1489 061a B047     		blx	r6
 1490 061c 39E7     		b	.L200
 1491              	.L381:
 1492 061e 2368     		ldr	r3, [r4]
 1493 0620 1049     		ldr	r1, .L386+12
 1494 0622 1B68     		ldr	r3, [r3]
 1495 0624 43F20610 		movw	r0, #12550
 1496 0628 5B69     		ldr	r3, [r3, #20]
 1497 062a 9847     		blx	r3
 1498 062c 0028     		cmp	r0, #0
 1499 062e 3FF430AD 		beq	.L363
 1500 0632 2368     		ldr	r3, [r4]
 1501 0634 1B68     		ldr	r3, [r3]
 1502 0636 9B69     		ldr	r3, [r3, #24]
 1503 0638 9847     		blx	r3
 1504 063a 0606     		lsls	r6, r0, #24
 1505 063c 3FF529AD 		bmi	.L363
 1506 0640 2068     		ldr	r0, [r4]
 1507 0642 0949     		ldr	r1, .L386+16
 1508 0644 0268     		ldr	r2, [r0]
 1509 0646 4160     		str	r1, [r0, #4]
 1510 0648 0123     		movs	r3, #1
 1511 064a 80F82530 		strb	r3, [r0, #37]
 1512 064e 1668     		ldr	r6, [r2]
 1513 0650 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1514 0652 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1515 0654 B047     		blx	r6
 1516 0656 1CE7     		b	.L200
 1517              	.L387:
 1518              		.align	2
 1519              	.L386:
 1520 0658 01FFFF80 		.word	-2130706687
 1521 065c 06110800 		.word	528646
 1522 0660 0001B701 		.word	28770560
 1523 0664 0001B903 		.word	62456064
 1524 0668 00751903 		.word	52000000
 1525              		.size	sd_mmc_check, .-sd_mmc_check
 1526              		.section	.text.sd_mmc_get_type,"ax",%progbits
 1527              		.align	1
 1528              		.p2align 2,,3
 1529              		.global	sd_mmc_get_type
 1530              		.syntax unified
 1531              		.thumb
 1532              		.thumb_func
 1533              		.fpu fpv4-sp-d16
 1534              		.type	sd_mmc_get_type, %function
 1535              	sd_mmc_get_type:
 1536              		@ args = 0, pretend = 0, frame = 0
 1537              		@ frame_needed = 0, uses_anonymous_args = 0
 1538 0000 0128     		cmp	r0, #1
 1539 0002 01D9     		bls	.L397
ARM GAS  /tmp/cc9aTA7z.s 			page 28


 1540 0004 0020     		movs	r0, #0
 1541 0006 7047     		bx	lr
 1542              	.L397:
 1543 0008 08B5     		push	{r3, lr}
 1544 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1545 000e 38B9     		cbnz	r0, .L391
 1546 0010 064B     		ldr	r3, .L399
 1547 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1548 0014 012B     		cmp	r3, #1
 1549 0016 05D9     		bls	.L398
 1550              	.L392:
 1551 0018 054B     		ldr	r3, .L399+4
 1552 001a 1B68     		ldr	r3, [r3]
 1553 001c 587C     		ldrb	r0, [r3, #17]	@ zero_extendqisi2
 1554 001e 08BD     		pop	{r3, pc}
 1555              	.L391:
 1556 0020 0020     		movs	r0, #0
 1557 0022 08BD     		pop	{r3, pc}
 1558              	.L398:
 1559 0024 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1560 0028 F6E7     		b	.L392
 1561              	.L400:
 1562 002a 00BF     		.align	2
 1563              	.L399:
 1564 002c 00000000 		.word	.LANCHOR5
 1565 0030 00000000 		.word	.LANCHOR0
 1566              		.size	sd_mmc_get_type, .-sd_mmc_get_type
 1567              		.section	.text.sd_mmc_get_version,"ax",%progbits
 1568              		.align	1
 1569              		.p2align 2,,3
 1570              		.global	sd_mmc_get_version
 1571              		.syntax unified
 1572              		.thumb
 1573              		.thumb_func
 1574              		.fpu fpv4-sp-d16
 1575              		.type	sd_mmc_get_version, %function
 1576              	sd_mmc_get_version:
 1577              		@ args = 0, pretend = 0, frame = 0
 1578              		@ frame_needed = 0, uses_anonymous_args = 0
 1579 0000 0128     		cmp	r0, #1
 1580 0002 01D9     		bls	.L410
 1581 0004 0020     		movs	r0, #0
 1582 0006 7047     		bx	lr
 1583              	.L410:
 1584 0008 08B5     		push	{r3, lr}
 1585 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1586 000e 38B9     		cbnz	r0, .L404
 1587 0010 064B     		ldr	r3, .L412
 1588 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1589 0014 012B     		cmp	r3, #1
 1590 0016 05D9     		bls	.L411
 1591              	.L405:
 1592 0018 054B     		ldr	r3, .L412+4
 1593 001a 1B68     		ldr	r3, [r3]
 1594 001c 987C     		ldrb	r0, [r3, #18]	@ zero_extendqisi2
 1595 001e 08BD     		pop	{r3, pc}
 1596              	.L404:
ARM GAS  /tmp/cc9aTA7z.s 			page 29


 1597 0020 0020     		movs	r0, #0
 1598 0022 08BD     		pop	{r3, pc}
 1599              	.L411:
 1600 0024 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1601 0028 F6E7     		b	.L405
 1602              	.L413:
 1603 002a 00BF     		.align	2
 1604              	.L412:
 1605 002c 00000000 		.word	.LANCHOR5
 1606 0030 00000000 		.word	.LANCHOR0
 1607              		.size	sd_mmc_get_version, .-sd_mmc_get_version
 1608              		.section	.text.sd_mmc_get_capacity,"ax",%progbits
 1609              		.align	1
 1610              		.p2align 2,,3
 1611              		.global	sd_mmc_get_capacity
 1612              		.syntax unified
 1613              		.thumb
 1614              		.thumb_func
 1615              		.fpu fpv4-sp-d16
 1616              		.type	sd_mmc_get_capacity, %function
 1617              	sd_mmc_get_capacity:
 1618              		@ args = 0, pretend = 0, frame = 0
 1619              		@ frame_needed = 0, uses_anonymous_args = 0
 1620 0000 0128     		cmp	r0, #1
 1621 0002 01D9     		bls	.L423
 1622 0004 0020     		movs	r0, #0
 1623 0006 7047     		bx	lr
 1624              	.L423:
 1625 0008 08B5     		push	{r3, lr}
 1626 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1627 000e 38B9     		cbnz	r0, .L417
 1628 0010 064B     		ldr	r3, .L425
 1629 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1630 0014 012B     		cmp	r3, #1
 1631 0016 05D9     		bls	.L424
 1632              	.L418:
 1633 0018 054B     		ldr	r3, .L425+4
 1634 001a 1B68     		ldr	r3, [r3]
 1635 001c 9868     		ldr	r0, [r3, #8]
 1636 001e 08BD     		pop	{r3, pc}
 1637              	.L417:
 1638 0020 0020     		movs	r0, #0
 1639 0022 08BD     		pop	{r3, pc}
 1640              	.L424:
 1641 0024 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1642 0028 F6E7     		b	.L418
 1643              	.L426:
 1644 002a 00BF     		.align	2
 1645              	.L425:
 1646 002c 00000000 		.word	.LANCHOR5
 1647 0030 00000000 		.word	.LANCHOR0
 1648              		.size	sd_mmc_get_capacity, .-sd_mmc_get_capacity
 1649              		.section	.text.sd_mmc_is_write_protected,"ax",%progbits
 1650              		.align	1
 1651              		.p2align 2,,3
 1652              		.global	sd_mmc_is_write_protected
 1653              		.syntax unified
ARM GAS  /tmp/cc9aTA7z.s 			page 30


 1654              		.thumb
 1655              		.thumb_func
 1656              		.fpu fpv4-sp-d16
 1657              		.type	sd_mmc_is_write_protected, %function
 1658              	sd_mmc_is_write_protected:
 1659              		@ args = 0, pretend = 0, frame = 0
 1660              		@ frame_needed = 0, uses_anonymous_args = 0
 1661 0000 08B5     		push	{r3, lr}
 1662 0002 084B     		ldr	r3, .L431
 1663 0004 00EB8000 		add	r0, r0, r0, lsl #2
 1664 0008 03EBC003 		add	r3, r3, r0, lsl #3
 1665 000c 187B     		ldrb	r0, [r3, #12]	@ zero_extendqisi2
 1666 000e FF28     		cmp	r0, #255
 1667 0010 05D0     		beq	.L429
 1668 0012 FFF7FEFF 		bl	digitalRead
 1669 0016 80F00100 		eor	r0, r0, #1
 1670 001a C0B2     		uxtb	r0, r0
 1671 001c 08BD     		pop	{r3, pc}
 1672              	.L429:
 1673 001e 0020     		movs	r0, #0
 1674 0020 08BD     		pop	{r3, pc}
 1675              	.L432:
 1676 0022 00BF     		.align	2
 1677              	.L431:
 1678 0024 00000000 		.word	.LANCHOR4
 1679              		.size	sd_mmc_is_write_protected, .-sd_mmc_is_write_protected
 1680              		.section	.text.sd_mmc_unmount,"ax",%progbits
 1681              		.align	1
 1682              		.p2align 2,,3
 1683              		.global	sd_mmc_unmount
 1684              		.syntax unified
 1685              		.thumb
 1686              		.thumb_func
 1687              		.fpu fpv4-sp-d16
 1688              		.type	sd_mmc_unmount, %function
 1689              	sd_mmc_unmount:
 1690              		@ args = 0, pretend = 0, frame = 0
 1691              		@ frame_needed = 0, uses_anonymous_args = 0
 1692              		@ link register save eliminated.
 1693 0000 034B     		ldr	r3, .L434
 1694 0002 00EB8000 		add	r0, r0, r0, lsl #2
 1695 0006 03EBC003 		add	r3, r3, r0, lsl #3
 1696 000a 0422     		movs	r2, #4
 1697 000c 1A74     		strb	r2, [r3, #16]
 1698 000e 7047     		bx	lr
 1699              	.L435:
 1700              		.align	2
 1701              	.L434:
 1702 0010 00000000 		.word	.LANCHOR4
 1703              		.size	sd_mmc_unmount, .-sd_mmc_unmount
 1704              		.section	.text.sd_mmc_get_interface_speed,"ax",%progbits
 1705              		.align	1
 1706              		.p2align 2,,3
 1707              		.global	sd_mmc_get_interface_speed
 1708              		.syntax unified
 1709              		.thumb
 1710              		.thumb_func
ARM GAS  /tmp/cc9aTA7z.s 			page 31


 1711              		.fpu fpv4-sp-d16
 1712              		.type	sd_mmc_get_interface_speed, %function
 1713              	sd_mmc_get_interface_speed:
 1714              		@ args = 0, pretend = 0, frame = 0
 1715              		@ frame_needed = 0, uses_anonymous_args = 0
 1716              		@ link register save eliminated.
 1717 0000 00EB8000 		add	r0, r0, r0, lsl #2
 1718 0004 024B     		ldr	r3, .L437
 1719 0006 53F83030 		ldr	r3, [r3, r0, lsl #3]
 1720 000a 1B6C     		ldr	r3, [r3, #64]
 1721 000c 1847     		bx	r3
 1722              	.L438:
 1723 000e 00BF     		.align	2
 1724              	.L437:
 1725 0010 00000000 		.word	.LANCHOR4
 1726              		.size	sd_mmc_get_interface_speed, .-sd_mmc_get_interface_speed
 1727              		.section	.text.sd_mmc_init_read_blocks,"ax",%progbits
 1728              		.align	1
 1729              		.p2align 2,,3
 1730              		.global	sd_mmc_init_read_blocks
 1731              		.syntax unified
 1732              		.thumb
 1733              		.thumb_func
 1734              		.fpu fpv4-sp-d16
 1735              		.type	sd_mmc_init_read_blocks, %function
 1736              	sd_mmc_init_read_blocks:
 1737              		@ args = 0, pretend = 0, frame = 0
 1738              		@ frame_needed = 0, uses_anonymous_args = 0
 1739 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1740 0002 0128     		cmp	r0, #1
 1741 0004 83B0     		sub	sp, sp, #12
 1742 0006 03D9     		bls	.L456
 1743 0008 0424     		movs	r4, #4
 1744              	.L440:
 1745 000a 2046     		mov	r0, r4
 1746 000c 03B0     		add	sp, sp, #12
 1747              		@ sp needed
 1748 000e F0BD     		pop	{r4, r5, r6, r7, pc}
 1749              	.L456:
 1750 0010 0E46     		mov	r6, r1
 1751 0012 1546     		mov	r5, r2
 1752 0014 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1753 0018 0446     		mov	r4, r0
 1754 001a 0028     		cmp	r0, #0
 1755 001c F5D1     		bne	.L440
 1756 001e FFF7FEFF 		bl	sd_mmc_cmd13
 1757 0022 28B3     		cbz	r0, .L454
 1758 0024 184F     		ldr	r7, .L459
 1759 0026 1949     		ldr	r1, .L459+4
 1760 0028 3B68     		ldr	r3, [r7]
 1761 002a 1948     		ldr	r0, .L459+8
 1762 002c 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1763 002e 1B68     		ldr	r3, [r3]
 1764 0030 012D     		cmp	r5, #1
 1765 0032 98BF     		it	ls
 1766 0034 0846     		movls	r0, r1
 1767 0036 1207     		lsls	r2, r2, #28
ARM GAS  /tmp/cc9aTA7z.s 			page 32


 1768 0038 4FF00102 		mov	r2, #1
 1769 003c 58BF     		it	pl
 1770 003e 7602     		lslpl	r6, r6, #9
 1771 0040 0092     		str	r2, [sp]
 1772 0042 3146     		mov	r1, r6
 1773 0044 4FF40072 		mov	r2, #512
 1774 0048 1E6A     		ldr	r6, [r3, #32]
 1775 004a 2B46     		mov	r3, r5
 1776 004c B047     		blx	r6
 1777 004e 78B1     		cbz	r0, .L454
 1778 0050 3B68     		ldr	r3, [r7]
 1779 0052 1B68     		ldr	r3, [r3]
 1780 0054 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 1781 0058 22B1     		cbz	r2, .L457
 1782              	.L447:
 1783 005a 0E4A     		ldr	r2, .L459+12
 1784 005c 0E4B     		ldr	r3, .L459+16
 1785 005e 1580     		strh	r5, [r2]	@ movhi
 1786 0060 1D80     		strh	r5, [r3]	@ movhi
 1787 0062 D2E7     		b	.L440
 1788              	.L457:
 1789 0064 9B69     		ldr	r3, [r3, #24]
 1790 0066 9847     		blx	r3
 1791 0068 0C4B     		ldr	r3, .L459+20
 1792 006a 0340     		ands	r3, r3, r0
 1793 006c 002B     		cmp	r3, #0
 1794 006e F4D0     		beq	.L447
 1795              	.L454:
 1796 0070 0B4B     		ldr	r3, .L459+24
 1797 0072 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1798 0074 012B     		cmp	r3, #1
 1799 0076 03D9     		bls	.L458
 1800              	.L455:
 1801 0078 0524     		movs	r4, #5
 1802 007a 2046     		mov	r0, r4
 1803 007c 03B0     		add	sp, sp, #12
 1804              		@ sp needed
 1805 007e F0BD     		pop	{r4, r5, r6, r7, pc}
 1806              	.L458:
 1807 0080 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1808 0084 F8E7     		b	.L455
 1809              	.L460:
 1810 0086 00BF     		.align	2
 1811              	.L459:
 1812 0088 00000000 		.word	.LANCHOR0
 1813 008c 11110800 		.word	528657
 1814 0090 12111000 		.word	1052946
 1815 0094 00000000 		.word	.LANCHOR8
 1816 0098 00000000 		.word	.LANCHOR9
 1817 009c 000058E4 		.word	-463994880
 1818 00a0 00000000 		.word	.LANCHOR5
 1819              		.size	sd_mmc_init_read_blocks, .-sd_mmc_init_read_blocks
 1820              		.section	.text.sd_mmc_start_read_blocks,"ax",%progbits
 1821              		.align	1
 1822              		.p2align 2,,3
 1823              		.global	sd_mmc_start_read_blocks
 1824              		.syntax unified
ARM GAS  /tmp/cc9aTA7z.s 			page 33


 1825              		.thumb
 1826              		.thumb_func
 1827              		.fpu fpv4-sp-d16
 1828              		.type	sd_mmc_start_read_blocks, %function
 1829              	sd_mmc_start_read_blocks:
 1830              		@ args = 0, pretend = 0, frame = 0
 1831              		@ frame_needed = 0, uses_anonymous_args = 0
 1832 0000 094B     		ldr	r3, .L465
 1833 0002 1B68     		ldr	r3, [r3]
 1834 0004 1B68     		ldr	r3, [r3]
 1835 0006 10B5     		push	{r4, lr}
 1836 0008 1B6B     		ldr	r3, [r3, #48]
 1837 000a 0C46     		mov	r4, r1
 1838 000c 9847     		blx	r3
 1839 000e 20B9     		cbnz	r0, .L462
 1840 0010 064A     		ldr	r2, .L465+4
 1841 0012 0346     		mov	r3, r0
 1842 0014 1380     		strh	r3, [r2]	@ movhi
 1843 0016 0520     		movs	r0, #5
 1844 0018 10BD     		pop	{r4, pc}
 1845              	.L462:
 1846 001a 044A     		ldr	r2, .L465+4
 1847 001c 1388     		ldrh	r3, [r2]
 1848 001e 1C1B     		subs	r4, r3, r4
 1849 0020 1480     		strh	r4, [r2]	@ movhi
 1850 0022 0020     		movs	r0, #0
 1851 0024 10BD     		pop	{r4, pc}
 1852              	.L466:
 1853 0026 00BF     		.align	2
 1854              	.L465:
 1855 0028 00000000 		.word	.LANCHOR0
 1856 002c 00000000 		.word	.LANCHOR8
 1857              		.size	sd_mmc_start_read_blocks, .-sd_mmc_start_read_blocks
 1858              		.section	.text.sd_mmc_wait_end_of_read_blocks,"ax",%progbits
 1859              		.align	1
 1860              		.p2align 2,,3
 1861              		.global	sd_mmc_wait_end_of_read_blocks
 1862              		.syntax unified
 1863              		.thumb
 1864              		.thumb_func
 1865              		.fpu fpv4-sp-d16
 1866              		.type	sd_mmc_wait_end_of_read_blocks, %function
 1867              	sd_mmc_wait_end_of_read_blocks:
 1868              		@ args = 0, pretend = 0, frame = 0
 1869              		@ frame_needed = 0, uses_anonymous_args = 0
 1870 0000 38B5     		push	{r3, r4, r5, lr}
 1871 0002 164C     		ldr	r4, .L487
 1872 0004 2368     		ldr	r3, [r4]
 1873 0006 1B68     		ldr	r3, [r3]
 1874 0008 5B6B     		ldr	r3, [r3, #52]
 1875 000a 0546     		mov	r5, r0
 1876 000c 9847     		blx	r3
 1877 000e 08B9     		cbnz	r0, .L483
 1878 0010 0520     		movs	r0, #5
 1879 0012 38BD     		pop	{r3, r4, r5, pc}
 1880              	.L483:
 1881 0014 124B     		ldr	r3, .L487+4
ARM GAS  /tmp/cc9aTA7z.s 			page 34


 1882 0016 9DB9     		cbnz	r5, .L484
 1883 0018 1B88     		ldrh	r3, [r3]
 1884 001a 7BB9     		cbnz	r3, .L482
 1885              	.L470:
 1886 001c 114B     		ldr	r3, .L487+8
 1887 001e 1B88     		ldrh	r3, [r3]
 1888 0020 012B     		cmp	r3, #1
 1889 0022 07D0     		beq	.L481
 1890 0024 2368     		ldr	r3, [r4]
 1891 0026 1B68     		ldr	r3, [r3]
 1892 0028 0021     		movs	r1, #0
 1893 002a 5B6A     		ldr	r3, [r3, #36]
 1894 002c 43F20C10 		movw	r0, #12556
 1895 0030 9847     		blx	r3
 1896 0032 58B1     		cbz	r0, .L485
 1897              	.L481:
 1898 0034 0C4B     		ldr	r3, .L487+12
 1899 0036 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1900 0038 012B     		cmp	r3, #1
 1901 003a 04D9     		bls	.L486
 1902              	.L482:
 1903 003c 0020     		movs	r0, #0
 1904 003e 38BD     		pop	{r3, r4, r5, pc}
 1905              	.L484:
 1906 0040 0022     		movs	r2, #0
 1907 0042 1A80     		strh	r2, [r3]	@ movhi
 1908 0044 EAE7     		b	.L470
 1909              	.L486:
 1910 0046 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1911 004a F7E7     		b	.L482
 1912              	.L485:
 1913 004c 2368     		ldr	r3, [r4]
 1914 004e 1B68     		ldr	r3, [r3]
 1915 0050 0146     		mov	r1, r0
 1916 0052 5B6A     		ldr	r3, [r3, #36]
 1917 0054 43F20C10 		movw	r0, #12556
 1918 0058 9847     		blx	r3
 1919 005a EBE7     		b	.L481
 1920              	.L488:
 1921              		.align	2
 1922              	.L487:
 1923 005c 00000000 		.word	.LANCHOR0
 1924 0060 00000000 		.word	.LANCHOR8
 1925 0064 00000000 		.word	.LANCHOR9
 1926 0068 00000000 		.word	.LANCHOR5
 1927              		.size	sd_mmc_wait_end_of_read_blocks, .-sd_mmc_wait_end_of_read_blocks
 1928              		.section	.text.sd_mmc_init_write_blocks,"ax",%progbits
 1929              		.align	1
 1930              		.p2align 2,,3
 1931              		.global	sd_mmc_init_write_blocks
 1932              		.syntax unified
 1933              		.thumb
 1934              		.thumb_func
 1935              		.fpu fpv4-sp-d16
 1936              		.type	sd_mmc_init_write_blocks, %function
 1937              	sd_mmc_init_write_blocks:
 1938              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/cc9aTA7z.s 			page 35


 1939              		@ frame_needed = 0, uses_anonymous_args = 0
 1940 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1941 0002 0128     		cmp	r0, #1
 1942 0004 83B0     		sub	sp, sp, #12
 1943 0006 03D9     		bls	.L516
 1944 0008 0425     		movs	r5, #4
 1945              	.L502:
 1946 000a 2846     		mov	r0, r5
 1947 000c 03B0     		add	sp, sp, #12
 1948              		@ sp needed
 1949 000e F0BD     		pop	{r4, r5, r6, r7, pc}
 1950              	.L516:
 1951 0010 0446     		mov	r4, r0
 1952 0012 0F46     		mov	r7, r1
 1953 0014 1646     		mov	r6, r2
 1954 0016 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1955 001a 0546     		mov	r5, r0
 1956 001c 0028     		cmp	r0, #0
 1957 001e F4D1     		bne	.L502
 1958 0020 244B     		ldr	r3, .L519
 1959 0022 04EB8404 		add	r4, r4, r4, lsl #2
 1960 0026 03EBC404 		add	r4, r3, r4, lsl #3
 1961 002a 207B     		ldrb	r0, [r4, #12]	@ zero_extendqisi2
 1962 002c FF28     		cmp	r0, #255
 1963 002e 0AD0     		beq	.L491
 1964 0030 FFF7FEFF 		bl	digitalRead
 1965 0034 38B9     		cbnz	r0, .L491
 1966 0036 204B     		ldr	r3, .L519+4
 1967 0038 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1968 003a 012B     		cmp	r3, #1
 1969 003c 32D9     		bls	.L498
 1970 003e 0725     		movs	r5, #7
 1971 0040 2846     		mov	r0, r5
 1972 0042 03B0     		add	sp, sp, #12
 1973              		@ sp needed
 1974 0044 F0BD     		pop	{r4, r5, r6, r7, pc}
 1975              	.L491:
 1976 0046 1D4C     		ldr	r4, .L519+8
 1977 0048 1D48     		ldr	r0, .L519+12
 1978 004a 2368     		ldr	r3, [r4]
 1979 004c 1D49     		ldr	r1, .L519+16
 1980 004e 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1981 0050 012E     		cmp	r6, #1
 1982 0052 98BF     		it	ls
 1983 0054 0846     		movls	r0, r1
 1984 0056 1207     		lsls	r2, r2, #28
 1985 0058 00D4     		bmi	.L493
 1986 005a 7F02     		lsls	r7, r7, #9
 1987              	.L493:
 1988 005c 1B68     		ldr	r3, [r3]
 1989 005e 0122     		movs	r2, #1
 1990 0060 0092     		str	r2, [sp]
 1991 0062 3946     		mov	r1, r7
 1992 0064 4FF40072 		mov	r2, #512
 1993 0068 1F6A     		ldr	r7, [r3, #32]
 1994 006a 3346     		mov	r3, r6
 1995 006c B847     		blx	r7
ARM GAS  /tmp/cc9aTA7z.s 			page 36


 1996 006e 88B1     		cbz	r0, .L512
 1997 0070 2368     		ldr	r3, [r4]
 1998 0072 1B68     		ldr	r3, [r3]
 1999 0074 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 2000 0078 32B1     		cbz	r2, .L517
 2001              	.L496:
 2002 007a 134A     		ldr	r2, .L519+20
 2003 007c 134B     		ldr	r3, .L519+24
 2004 007e 1680     		strh	r6, [r2]	@ movhi
 2005 0080 2846     		mov	r0, r5
 2006 0082 1E80     		strh	r6, [r3]	@ movhi
 2007 0084 03B0     		add	sp, sp, #12
 2008              		@ sp needed
 2009 0086 F0BD     		pop	{r4, r5, r6, r7, pc}
 2010              	.L517:
 2011 0088 9B69     		ldr	r3, [r3, #24]
 2012 008a 9847     		blx	r3
 2013 008c 104B     		ldr	r3, .L519+28
 2014 008e 0340     		ands	r3, r3, r0
 2015 0090 002B     		cmp	r3, #0
 2016 0092 F2D0     		beq	.L496
 2017              	.L512:
 2018 0094 084B     		ldr	r3, .L519+4
 2019 0096 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2020 0098 012B     		cmp	r3, #1
 2021 009a 07D9     		bls	.L518
 2022              	.L513:
 2023 009c 0525     		movs	r5, #5
 2024 009e 2846     		mov	r0, r5
 2025 00a0 03B0     		add	sp, sp, #12
 2026              		@ sp needed
 2027 00a2 F0BD     		pop	{r4, r5, r6, r7, pc}
 2028              	.L498:
 2029 00a4 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2030 00a8 0725     		movs	r5, #7
 2031 00aa AEE7     		b	.L502
 2032              	.L518:
 2033 00ac FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2034 00b0 F4E7     		b	.L513
 2035              	.L520:
 2036 00b2 00BF     		.align	2
 2037              	.L519:
 2038 00b4 00000000 		.word	.LANCHOR4
 2039 00b8 00000000 		.word	.LANCHOR5
 2040 00bc 00000000 		.word	.LANCHOR0
 2041 00c0 19911000 		.word	1085721
 2042 00c4 18910800 		.word	561432
 2043 00c8 00000000 		.word	.LANCHOR8
 2044 00cc 00000000 		.word	.LANCHOR9
 2045 00d0 000058E4 		.word	-463994880
 2046              		.size	sd_mmc_init_write_blocks, .-sd_mmc_init_write_blocks
 2047              		.section	.text.sd_mmc_start_write_blocks,"ax",%progbits
 2048              		.align	1
 2049              		.p2align 2,,3
 2050              		.global	sd_mmc_start_write_blocks
 2051              		.syntax unified
 2052              		.thumb
ARM GAS  /tmp/cc9aTA7z.s 			page 37


 2053              		.thumb_func
 2054              		.fpu fpv4-sp-d16
 2055              		.type	sd_mmc_start_write_blocks, %function
 2056              	sd_mmc_start_write_blocks:
 2057              		@ args = 0, pretend = 0, frame = 0
 2058              		@ frame_needed = 0, uses_anonymous_args = 0
 2059 0000 094B     		ldr	r3, .L525
 2060 0002 1B68     		ldr	r3, [r3]
 2061 0004 1B68     		ldr	r3, [r3]
 2062 0006 10B5     		push	{r4, lr}
 2063 0008 9B6B     		ldr	r3, [r3, #56]
 2064 000a 0C46     		mov	r4, r1
 2065 000c 9847     		blx	r3
 2066 000e 20B9     		cbnz	r0, .L522
 2067 0010 064A     		ldr	r2, .L525+4
 2068 0012 0346     		mov	r3, r0
 2069 0014 1380     		strh	r3, [r2]	@ movhi
 2070 0016 0520     		movs	r0, #5
 2071 0018 10BD     		pop	{r4, pc}
 2072              	.L522:
 2073 001a 044A     		ldr	r2, .L525+4
 2074 001c 1388     		ldrh	r3, [r2]
 2075 001e 1C1B     		subs	r4, r3, r4
 2076 0020 1480     		strh	r4, [r2]	@ movhi
 2077 0022 0020     		movs	r0, #0
 2078 0024 10BD     		pop	{r4, pc}
 2079              	.L526:
 2080 0026 00BF     		.align	2
 2081              	.L525:
 2082 0028 00000000 		.word	.LANCHOR0
 2083 002c 00000000 		.word	.LANCHOR8
 2084              		.size	sd_mmc_start_write_blocks, .-sd_mmc_start_write_blocks
 2085              		.section	.text.sd_mmc_wait_end_of_write_blocks,"ax",%progbits
 2086              		.align	1
 2087              		.p2align 2,,3
 2088              		.global	sd_mmc_wait_end_of_write_blocks
 2089              		.syntax unified
 2090              		.thumb
 2091              		.thumb_func
 2092              		.fpu fpv4-sp-d16
 2093              		.type	sd_mmc_wait_end_of_write_blocks, %function
 2094              	sd_mmc_wait_end_of_write_blocks:
 2095              		@ args = 0, pretend = 0, frame = 0
 2096              		@ frame_needed = 0, uses_anonymous_args = 0
 2097 0000 38B5     		push	{r3, r4, r5, lr}
 2098 0002 174C     		ldr	r4, .L549
 2099 0004 2368     		ldr	r3, [r4]
 2100 0006 1B68     		ldr	r3, [r3]
 2101 0008 DB6B     		ldr	r3, [r3, #60]
 2102 000a 0546     		mov	r5, r0
 2103 000c 9847     		blx	r3
 2104 000e 08B9     		cbnz	r0, .L545
 2105              	.L543:
 2106 0010 0520     		movs	r0, #5
 2107 0012 38BD     		pop	{r3, r4, r5, pc}
 2108              	.L545:
 2109 0014 134B     		ldr	r3, .L549+4
ARM GAS  /tmp/cc9aTA7z.s 			page 38


 2110 0016 85B9     		cbnz	r5, .L546
 2111 0018 1B88     		ldrh	r3, [r3]
 2112 001a 63B9     		cbnz	r3, .L544
 2113              	.L531:
 2114 001c 124B     		ldr	r3, .L549+8
 2115 001e 1B88     		ldrh	r3, [r3]
 2116 0020 012B     		cmp	r3, #1
 2117 0022 04D0     		beq	.L542
 2118 0024 2368     		ldr	r3, [r4]
 2119 0026 1B68     		ldr	r3, [r3]
 2120 0028 93F84810 		ldrb	r1, [r3, #72]	@ zero_extendqisi2
 2121 002c 41B1     		cbz	r1, .L547
 2122              	.L542:
 2123 002e 0F4B     		ldr	r3, .L549+12
 2124 0030 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2125 0032 012B     		cmp	r3, #1
 2126 0034 11D9     		bls	.L548
 2127              	.L544:
 2128 0036 0020     		movs	r0, #0
 2129 0038 38BD     		pop	{r3, r4, r5, pc}
 2130              	.L546:
 2131 003a 0022     		movs	r2, #0
 2132 003c 1A80     		strh	r2, [r3]	@ movhi
 2133 003e EDE7     		b	.L531
 2134              	.L547:
 2135 0040 5B6A     		ldr	r3, [r3, #36]
 2136 0042 43F20C10 		movw	r0, #12556
 2137 0046 9847     		blx	r3
 2138 0048 0028     		cmp	r0, #0
 2139 004a F0D1     		bne	.L542
 2140 004c 074B     		ldr	r3, .L549+12
 2141 004e 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2142 0050 012B     		cmp	r3, #1
 2143 0052 DDD8     		bhi	.L543
 2144 0054 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2145 0058 DAE7     		b	.L543
 2146              	.L548:
 2147 005a FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2148 005e EAE7     		b	.L544
 2149              	.L550:
 2150              		.align	2
 2151              	.L549:
 2152 0060 00000000 		.word	.LANCHOR0
 2153 0064 00000000 		.word	.LANCHOR8
 2154 0068 00000000 		.word	.LANCHOR9
 2155 006c 00000000 		.word	.LANCHOR5
 2156              		.size	sd_mmc_wait_end_of_write_blocks, .-sd_mmc_wait_end_of_write_blocks
 2157              		.global	mmc_trans_multipliers
 2158              		.global	sd_trans_multipliers
 2159              		.global	sd_mmc_trans_units
 2160              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 2161              		.align	2
 2162              		.type	cpu_irq_critical_section_counter, %object
 2163              		.size	cpu_irq_critical_section_counter, 4
 2164              	cpu_irq_critical_section_counter:
 2165 0000 00000000 		.space	4
 2166              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
ARM GAS  /tmp/cc9aTA7z.s 			page 39


 2167              		.type	cpu_irq_prev_interrupt_state, %object
 2168              		.size	cpu_irq_prev_interrupt_state, 1
 2169              	cpu_irq_prev_interrupt_state:
 2170 0000 00       		.space	1
 2171              		.section	.bss.sd_mmc_card,"aw",%nobits
 2172              		.align	2
 2173              		.set	.LANCHOR0,. + 0
 2174              		.type	sd_mmc_card, %object
 2175              		.size	sd_mmc_card, 4
 2176              	sd_mmc_card:
 2177 0000 00000000 		.space	4
 2178              		.section	.bss.sd_mmc_cards,"aw",%nobits
 2179              		.align	2
 2180              		.set	.LANCHOR4,. + 0
 2181              		.type	sd_mmc_cards, %object
 2182              		.size	sd_mmc_cards, 80
 2183              	sd_mmc_cards:
 2184 0000 00000000 		.space	80
 2184      00000000 
 2184      00000000 
 2184      00000000 
 2184      00000000 
 2185              		.section	.bss.sd_mmc_nb_block_remaining,"aw",%nobits
 2186              		.align	1
 2187              		.set	.LANCHOR8,. + 0
 2188              		.type	sd_mmc_nb_block_remaining, %object
 2189              		.size	sd_mmc_nb_block_remaining, 2
 2190              	sd_mmc_nb_block_remaining:
 2191 0000 0000     		.space	2
 2192              		.section	.bss.sd_mmc_nb_block_to_tranfer,"aw",%nobits
 2193              		.align	1
 2194              		.set	.LANCHOR9,. + 0
 2195              		.type	sd_mmc_nb_block_to_tranfer, %object
 2196              		.size	sd_mmc_nb_block_to_tranfer, 2
 2197              	sd_mmc_nb_block_to_tranfer:
 2198 0000 0000     		.space	2
 2199              		.section	.bss.sd_mmc_slot_sel,"aw",%nobits
 2200              		.set	.LANCHOR5,. + 0
 2201              		.type	sd_mmc_slot_sel, %object
 2202              		.size	sd_mmc_slot_sel, 1
 2203              	sd_mmc_slot_sel:
 2204 0000 00       		.space	1
 2205              		.section	.rodata.hsmciInterface,"a",%progbits
 2206              		.align	2
 2207              		.set	.LANCHOR6,. + 0
 2208              		.type	hsmciInterface, %object
 2209              		.size	hsmciInterface, 76
 2210              	hsmciInterface:
 2211 0000 00000000 		.word	hsmci_select_device
 2212 0004 00000000 		.word	hsmci_deselect_device
 2213 0008 00000000 		.word	hsmci_get_bus_width
 2214 000c 00000000 		.word	hsmci_is_high_speed_capable
 2215 0010 00000000 		.word	hsmci_send_clock
 2216 0014 00000000 		.word	hsmci_send_cmd
 2217 0018 00000000 		.word	hsmci_get_response
 2218 001c 00000000 		.word	hsmci_get_response_128
 2219 0020 00000000 		.word	hsmci_adtc_start
ARM GAS  /tmp/cc9aTA7z.s 			page 40


 2220 0024 00000000 		.word	hsmci_send_cmd
 2221 0028 00000000 		.word	hsmci_read_word
 2222 002c 00000000 		.word	hsmci_write_word
 2223 0030 00000000 		.word	hsmci_start_read_blocks
 2224 0034 00000000 		.word	hsmci_wait_end_of_read_blocks
 2225 0038 00000000 		.word	hsmci_start_write_blocks
 2226 003c 00000000 		.word	hsmci_wait_end_of_write_blocks
 2227 0040 00000000 		.word	hsmci_get_speed
 2228 0044 00000000 		.word	hsmci_set_idle_func
 2229 0048 00       		.byte	0
 2230 0049 000000   		.space	3
 2231              		.section	.rodata.mmc_trans_multipliers,"a",%progbits
 2232              		.align	2
 2233              		.set	.LANCHOR1,. + 0
 2234              		.type	mmc_trans_multipliers, %object
 2235              		.size	mmc_trans_multipliers, 64
 2236              	mmc_trans_multipliers:
 2237 0000 00000000 		.word	0
 2238 0004 0A000000 		.word	10
 2239 0008 0C000000 		.word	12
 2240 000c 0D000000 		.word	13
 2241 0010 0F000000 		.word	15
 2242 0014 14000000 		.word	20
 2243 0018 1A000000 		.word	26
 2244 001c 1E000000 		.word	30
 2245 0020 23000000 		.word	35
 2246 0024 28000000 		.word	40
 2247 0028 2D000000 		.word	45
 2248 002c 34000000 		.word	52
 2249 0030 37000000 		.word	55
 2250 0034 3C000000 		.word	60
 2251 0038 46000000 		.word	70
 2252 003c 50000000 		.word	80
 2253              		.section	.rodata.sd_mmc_trans_units,"a",%progbits
 2254              		.align	2
 2255              		.set	.LANCHOR2,. + 0
 2256              		.type	sd_mmc_trans_units, %object
 2257              		.size	sd_mmc_trans_units, 28
 2258              	sd_mmc_trans_units:
 2259 0000 0A000000 		.word	10
 2260 0004 64000000 		.word	100
 2261 0008 E8030000 		.word	1000
 2262 000c 10270000 		.word	10000
 2263 0010 00000000 		.word	0
 2264 0014 00000000 		.word	0
 2265 0018 00000000 		.word	0
 2266              		.section	.rodata.sd_trans_multipliers,"a",%progbits
 2267              		.align	2
 2268              		.set	.LANCHOR3,. + 0
 2269              		.type	sd_trans_multipliers, %object
 2270              		.size	sd_trans_multipliers, 64
 2271              	sd_trans_multipliers:
 2272 0000 00000000 		.word	0
 2273 0004 0A000000 		.word	10
 2274 0008 0C000000 		.word	12
 2275 000c 0D000000 		.word	13
 2276 0010 0F000000 		.word	15
ARM GAS  /tmp/cc9aTA7z.s 			page 41


 2277 0014 14000000 		.word	20
 2278 0018 19000000 		.word	25
 2279 001c 1E000000 		.word	30
 2280 0020 23000000 		.word	35
 2281 0024 28000000 		.word	40
 2282 0028 2D000000 		.word	45
 2283 002c 32000000 		.word	50
 2284 0030 37000000 		.word	55
 2285 0034 3C000000 		.word	60
 2286 0038 46000000 		.word	70
 2287 003c 50000000 		.word	80
 2288              		.section	.rodata.spiInterface,"a",%progbits
 2289              		.align	2
 2290              		.set	.LANCHOR7,. + 0
 2291              		.type	spiInterface, %object
 2292              		.size	spiInterface, 76
 2293              	spiInterface:
 2294 0000 00000000 		.word	sd_mmc_spi_select_device
 2295 0004 00000000 		.word	sd_mmc_spi_deselect_device
 2296 0008 00000000 		.word	sd_mmc_spi_get_bus_width
 2297 000c 00000000 		.word	sd_mmc_spi_is_high_speed_capable
 2298 0010 00000000 		.word	sd_mmc_spi_send_clock
 2299 0014 00000000 		.word	sd_mmc_spi_send_cmd
 2300 0018 00000000 		.word	sd_mmc_spi_get_response
 2301 001c 00000000 		.word	sd_mmc_spi_get_response_128
 2302 0020 00000000 		.word	sd_mmc_spi_adtc_start
 2303 0024 00000000 		.word	sd_mmc_spi_send_cmd
 2304 0028 00000000 		.word	sd_mmc_spi_read_word
 2305 002c 00000000 		.word	sd_mmc_spi_write_word
 2306 0030 00000000 		.word	sd_mmc_spi_start_read_blocks
 2307 0034 00000000 		.word	sd_mmc_spi_wait_end_of_read_blocks
 2308 0038 00000000 		.word	sd_mmc_spi_start_write_blocks
 2309 003c 00000000 		.word	sd_mmc_spi_wait_end_of_write_blocks
 2310 0040 00000000 		.word	spi_mmc_get_speed
 2311 0044 00000000 		.word	sd_mmc_spi_set_idle_func
 2312 0048 01       		.byte	1
 2313 0049 000000   		.space	3
 2314              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
