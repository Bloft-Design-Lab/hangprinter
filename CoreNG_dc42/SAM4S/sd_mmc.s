ARM GAS  /tmp/ccJnwJVi.s 			page 1


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
  11              		.file	"sd_mmc.c"
  12              		.section	.text.sd_mmc_spi_get_bus_width,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	sd_mmc_spi_get_bus_width, %function
  20              	sd_mmc_spi_get_bus_width:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23              		@ link register save eliminated.
  24 0000 0120     		movs	r0, #1
  25 0002 7047     		bx	lr
  26              		.size	sd_mmc_spi_get_bus_width, .-sd_mmc_spi_get_bus_width
  27              		.section	.text.sd_mmc_spi_is_high_speed_capable,"ax",%progbits
  28              		.align	1
  29              		.p2align 2,,3
  30              		.syntax unified
  31              		.thumb
  32              		.thumb_func
  33              		.fpu softvfp
  34              		.type	sd_mmc_spi_is_high_speed_capable, %function
  35              	sd_mmc_spi_is_high_speed_capable:
  36              		@ args = 0, pretend = 0, frame = 0
  37              		@ frame_needed = 0, uses_anonymous_args = 0
  38              		@ link register save eliminated.
  39 0000 0020     		movs	r0, #0
  40 0002 7047     		bx	lr
  41              		.size	sd_mmc_spi_is_high_speed_capable, .-sd_mmc_spi_is_high_speed_capable
  42              		.section	.text.sd_mmc_spi_get_response_128,"ax",%progbits
  43              		.align	1
  44              		.p2align 2,,3
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu softvfp
  49              		.type	sd_mmc_spi_get_response_128, %function
  50              	sd_mmc_spi_get_response_128:
  51              		@ args = 0, pretend = 0, frame = 0
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53              		@ link register save eliminated.
  54 0000 7047     		bx	lr
  55              		.size	sd_mmc_spi_get_response_128, .-sd_mmc_spi_get_response_128
  56 0002 00BF     		.section	.text.mmc_decode_csd,"ax",%progbits
  57              		.align	1
ARM GAS  /tmp/ccJnwJVi.s 			page 2


  58              		.p2align 2,,3
  59              		.syntax unified
  60              		.thumb
  61              		.thumb_func
  62              		.fpu softvfp
  63              		.type	mmc_decode_csd, %function
  64              	mmc_decode_csd:
  65              		@ args = 0, pretend = 0, frame = 0
  66              		@ frame_needed = 0, uses_anonymous_args = 0
  67              		@ link register save eliminated.
  68 0000 F0B4     		push	{r4, r5, r6, r7}
  69 0002 264B     		ldr	r3, .L15
  70 0004 1A68     		ldr	r2, [r3]
  71 0006 537D     		ldrb	r3, [r2, #21]	@ zero_extendqisi2
  72 0008 C3F38303 		ubfx	r3, r3, #2, #4
  73 000c 013B     		subs	r3, r3, #1
  74 000e 032B     		cmp	r3, #3
  75 0010 40D8     		bhi	.L5
  76 0012 DFE803F0 		tbb	[pc, r3]
  77              	.L7:
  78 0016 3C       		.byte	(.L6-.L7)/2
  79 0017 39       		.byte	(.L8-.L7)/2
  80 0018 36       		.byte	(.L9-.L7)/2
  81 0019 02       		.byte	(.L10-.L7)/2
  82              		.p2align 1
  83              	.L10:
  84 001a 4023     		movs	r3, #64
  85 001c 9374     		strb	r3, [r2, #18]
  86              	.L11:
  87 001e 117E     		ldrb	r1, [r2, #24]	@ zero_extendqisi2
  88 0020 1F4D     		ldr	r5, .L15+4
  89 0022 D37E     		ldrb	r3, [r2, #27]	@ zero_extendqisi2
  90 0024 1F48     		ldr	r0, .L15+8
  91 0026 167F     		ldrb	r6, [r2, #28]	@ zero_extendqisi2
  92 0028 547F     		ldrb	r4, [r2, #29]	@ zero_extendqisi2
  93 002a 01F00707 		and	r7, r1, #7
  94 002e C1F3C301 		ubfx	r1, r1, #3, #4
  95 0032 55F82750 		ldr	r5, [r5, r7, lsl #2]
  96 0036 50F82100 		ldr	r0, [r0, r1, lsl #2]
  97 003a 9B02     		lsls	r3, r3, #10
  98 003c 4FF47A71 		mov	r1, #1000
  99 0040 43EA8603 		orr	r3, r3, r6, lsl #2
 100 0044 01FB05F1 		mul	r1, r1, r5
 101 0048 43EA9413 		orr	r3, r3, r4, lsr #6
 102 004c 01FB00F1 		mul	r1, r1, r0
 103 0050 C3F30B03 		ubfx	r3, r3, #0, #12
 104 0054 40F6FF70 		movw	r0, #4095
 105 0058 8342     		cmp	r3, r0
 106 005a 5160     		str	r1, [r2, #4]
 107 005c 0FD0     		beq	.L4
 108 005e 917F     		ldrb	r1, [r2, #30]	@ zero_extendqisi2
 109 0060 D47F     		ldrb	r4, [r2, #31]	@ zero_extendqisi2
 110 0062 907E     		ldrb	r0, [r2, #26]	@ zero_extendqisi2
 111 0064 4900     		lsls	r1, r1, #1
 112 0066 41EAD411 		orr	r1, r1, r4, lsr #7
 113 006a 01F00701 		and	r1, r1, #7
 114 006e 0231     		adds	r1, r1, #2
ARM GAS  /tmp/ccJnwJVi.s 			page 3


 115 0070 0133     		adds	r3, r3, #1
 116 0072 8B40     		lsls	r3, r3, r1
 117 0074 00F00F01 		and	r1, r0, #15
 118 0078 8B40     		lsls	r3, r3, r1
 119 007a 9B0A     		lsrs	r3, r3, #10
 120 007c 9360     		str	r3, [r2, #8]
 121              	.L4:
 122 007e F0BC     		pop	{r4, r5, r6, r7}
 123 0080 7047     		bx	lr
 124              	.L9:
 125 0082 3023     		movs	r3, #48
 126 0084 9374     		strb	r3, [r2, #18]
 127 0086 CAE7     		b	.L11
 128              	.L8:
 129 0088 2223     		movs	r3, #34
 130 008a 9374     		strb	r3, [r2, #18]
 131 008c C7E7     		b	.L11
 132              	.L6:
 133 008e 1423     		movs	r3, #20
 134 0090 9374     		strb	r3, [r2, #18]
 135 0092 C4E7     		b	.L11
 136              	.L5:
 137 0094 1223     		movs	r3, #18
 138 0096 9374     		strb	r3, [r2, #18]
 139 0098 C1E7     		b	.L11
 140              	.L16:
 141 009a 00BF     		.align	2
 142              	.L15:
 143 009c 00000000 		.word	.LANCHOR0
 144 00a0 00000000 		.word	.LANCHOR2
 145 00a4 00000000 		.word	.LANCHOR1
 146              		.size	mmc_decode_csd, .-mmc_decode_csd
 147              		.section	.text.sd_decode_csd,"ax",%progbits
 148              		.align	1
 149              		.p2align 2,,3
 150              		.syntax unified
 151              		.thumb
 152              		.thumb_func
 153              		.fpu softvfp
 154              		.type	sd_decode_csd, %function
 155              	sd_decode_csd:
 156              		@ args = 0, pretend = 0, frame = 0
 157              		@ frame_needed = 0, uses_anonymous_args = 0
 158              		@ link register save eliminated.
 159 0000 70B4     		push	{r4, r5, r6}
 160 0002 204B     		ldr	r3, .L22
 161 0004 204C     		ldr	r4, .L22+4
 162 0006 1A68     		ldr	r2, [r3]
 163 0008 2048     		ldr	r0, .L22+8
 164 000a 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 165 000c 517D     		ldrb	r1, [r2, #21]	@ zero_extendqisi2
 166 000e 03F00705 		and	r5, r3, #7
 167 0012 C3F3C303 		ubfx	r3, r3, #3, #4
 168 0016 54F82540 		ldr	r4, [r4, r5, lsl #2]
 169 001a 50F82300 		ldr	r0, [r0, r3, lsl #2]
 170 001e 4FF47A73 		mov	r3, #1000
 171 0022 03FB04F3 		mul	r3, r3, r4
ARM GAS  /tmp/ccJnwJVi.s 			page 4


 172 0026 03FB00F3 		mul	r3, r3, r0
 173 002a 5360     		str	r3, [r2, #4]
 174 002c 8B09     		lsrs	r3, r1, #6
 175 002e 1BD1     		bne	.L21
 176 0030 D37E     		ldrb	r3, [r2, #27]	@ zero_extendqisi2
 177 0032 167F     		ldrb	r6, [r2, #28]	@ zero_extendqisi2
 178 0034 917F     		ldrb	r1, [r2, #30]	@ zero_extendqisi2
 179 0036 557F     		ldrb	r5, [r2, #29]	@ zero_extendqisi2
 180 0038 D47F     		ldrb	r4, [r2, #31]	@ zero_extendqisi2
 181 003a 907E     		ldrb	r0, [r2, #26]	@ zero_extendqisi2
 182 003c 9B02     		lsls	r3, r3, #10
 183 003e 43EA8603 		orr	r3, r3, r6, lsl #2
 184 0042 4900     		lsls	r1, r1, #1
 185 0044 43EA9513 		orr	r3, r3, r5, lsr #6
 186 0048 41EAD411 		orr	r1, r1, r4, lsr #7
 187 004c C3F30B03 		ubfx	r3, r3, #0, #12
 188 0050 01F00701 		and	r1, r1, #7
 189 0054 0231     		adds	r1, r1, #2
 190 0056 0133     		adds	r3, r3, #1
 191 0058 8B40     		lsls	r3, r3, r1
 192 005a 00F00F01 		and	r1, r0, #15
 193 005e 8B40     		lsls	r3, r3, r1
 194 0060 9B0A     		lsrs	r3, r3, #10
 195 0062 9360     		str	r3, [r2, #8]
 196 0064 70BC     		pop	{r4, r5, r6}
 197 0066 7047     		bx	lr
 198              	.L21:
 199 0068 137F     		ldrb	r3, [r2, #28]	@ zero_extendqisi2
 200 006a 507F     		ldrb	r0, [r2, #29]	@ zero_extendqisi2
 201 006c 917F     		ldrb	r1, [r2, #30]	@ zero_extendqisi2
 202 006e 1B04     		lsls	r3, r3, #16
 203 0070 43EA0023 		orr	r3, r3, r0, lsl #8
 204 0074 0B43     		orrs	r3, r3, r1
 205 0076 C3F31503 		ubfx	r3, r3, #0, #22
 206 007a 0133     		adds	r3, r3, #1
 207 007c 5B02     		lsls	r3, r3, #9
 208 007e 9360     		str	r3, [r2, #8]
 209 0080 70BC     		pop	{r4, r5, r6}
 210 0082 7047     		bx	lr
 211              	.L23:
 212              		.align	2
 213              	.L22:
 214 0084 00000000 		.word	.LANCHOR0
 215 0088 00000000 		.word	.LANCHOR2
 216 008c 00000000 		.word	.LANCHOR3
 217              		.size	sd_decode_csd, .-sd_decode_csd
 218              		.section	.text.sd_mmc_cmd13,"ax",%progbits
 219              		.align	1
 220              		.p2align 2,,3
 221              		.syntax unified
 222              		.thumb
 223              		.thumb_func
 224              		.fpu softvfp
 225              		.type	sd_mmc_cmd13, %function
 226              	sd_mmc_cmd13:
 227              		@ args = 0, pretend = 0, frame = 0
 228              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccJnwJVi.s 			page 5


 229 0000 70B5     		push	{r4, r5, r6, lr}
 230 0002 144C     		ldr	r4, .L43
 231 0004 144D     		ldr	r5, .L43+4
 232 0006 0BE0     		b	.L30
 233              	.L42:
 234 0008 5B69     		ldr	r3, [r3, #20]
 235 000a 9847     		blx	r3
 236 000c 00B3     		cbz	r0, .L29
 237 000e 2B68     		ldr	r3, [r5]
 238 0010 1B68     		ldr	r3, [r3]
 239 0012 9B69     		ldr	r3, [r3, #24]
 240 0014 9847     		blx	r3
 241 0016 10F0FF0F 		tst	r0, #255
 242 001a 17D0     		beq	.L28
 243              	.L31:
 244 001c 013C     		subs	r4, r4, #1
 245 001e 17D0     		beq	.L29
 246              	.L30:
 247 0020 2A68     		ldr	r2, [r5]
 248 0022 1368     		ldr	r3, [r2]
 249 0024 93F84860 		ldrb	r6, [r3, #72]	@ zero_extendqisi2
 250 0028 0021     		movs	r1, #0
 251 002a 41F60D30 		movw	r0, #6925
 252 002e 002E     		cmp	r6, #0
 253 0030 EAD1     		bne	.L42
 254 0032 D189     		ldrh	r1, [r2, #14]
 255 0034 5B69     		ldr	r3, [r3, #20]
 256 0036 0904     		lsls	r1, r1, #16
 257 0038 41F20D10 		movw	r0, #4365
 258 003c 9847     		blx	r3
 259 003e 38B1     		cbz	r0, .L29
 260 0040 2B68     		ldr	r3, [r5]
 261 0042 1B68     		ldr	r3, [r3]
 262 0044 9B69     		ldr	r3, [r3, #24]
 263 0046 9847     		blx	r3
 264 0048 C305     		lsls	r3, r0, #23
 265 004a E7D5     		bpl	.L31
 266              	.L28:
 267 004c 0120     		movs	r0, #1
 268 004e 70BD     		pop	{r4, r5, r6, pc}
 269              	.L29:
 270 0050 0020     		movs	r0, #0
 271 0052 70BD     		pop	{r4, r5, r6, pc}
 272              	.L44:
 273              		.align	2
 274              	.L43:
 275 0054 410D0300 		.word	200001
 276 0058 00000000 		.word	.LANCHOR0
 277              		.size	sd_mmc_cmd13, .-sd_mmc_cmd13
 278              		.section	.text.sd_cmd8,"ax",%progbits
 279              		.align	1
 280              		.p2align 2,,3
 281              		.syntax unified
 282              		.thumb
 283              		.thumb_func
 284              		.fpu softvfp
 285              		.type	sd_cmd8, %function
ARM GAS  /tmp/ccJnwJVi.s 			page 6


 286              	sd_cmd8:
 287              		@ args = 0, pretend = 0, frame = 0
 288              		@ frame_needed = 0, uses_anonymous_args = 0
 289 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 290 0002 104D     		ldr	r5, .L54
 291 0004 0026     		movs	r6, #0
 292 0006 2B68     		ldr	r3, [r5]
 293 0008 0670     		strb	r6, [r0]
 294 000a 1B68     		ldr	r3, [r3]
 295 000c 0746     		mov	r7, r0
 296 000e 4FF4D571 		mov	r1, #426
 297 0012 5B69     		ldr	r3, [r3, #20]
 298 0014 45F20850 		movw	r0, #21768
 299 0018 9847     		blx	r3
 300 001a 10B9     		cbnz	r0, .L46
 301              	.L48:
 302 001c 0124     		movs	r4, #1
 303 001e 2046     		mov	r0, r4
 304 0020 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 305              	.L46:
 306 0022 2B68     		ldr	r3, [r5]
 307 0024 1B68     		ldr	r3, [r3]
 308 0026 9B69     		ldr	r3, [r3, #24]
 309 0028 0446     		mov	r4, r0
 310 002a 9847     		blx	r3
 311 002c 431C     		adds	r3, r0, #1
 312 002e F5D0     		beq	.L48
 313 0030 C0F30B00 		ubfx	r0, r0, #0, #12
 314 0034 B0F5D57F 		cmp	r0, #426
 315 0038 0ABF     		itet	eq
 316 003a 0123     		moveq	r3, #1
 317 003c 3446     		movne	r4, r6
 318 003e 3B70     		strbeq	r3, [r7]
 319 0040 2046     		mov	r0, r4
 320 0042 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 321              	.L55:
 322              		.align	2
 323              	.L54:
 324 0044 00000000 		.word	.LANCHOR0
 325              		.size	sd_cmd8, .-sd_cmd8
 326              		.section	.text.mmc_cmd8,"ax",%progbits
 327              		.align	1
 328              		.p2align 2,,3
 329              		.syntax unified
 330              		.thumb
 331              		.thumb_func
 332              		.fpu softvfp
 333              		.type	mmc_cmd8, %function
 334              	mmc_cmd8:
 335              		@ args = 0, pretend = 0, frame = 8
 336              		@ frame_needed = 0, uses_anonymous_args = 0
 337 0000 70B5     		push	{r4, r5, r6, lr}
 338 0002 294D     		ldr	r5, .L85
 339 0004 2B68     		ldr	r3, [r5]
 340 0006 84B0     		sub	sp, sp, #16
 341 0008 1B68     		ldr	r3, [r3]
 342 000a 0021     		movs	r1, #0
ARM GAS  /tmp/ccJnwJVi.s 			page 7


 343 000c 0091     		str	r1, [sp]
 344 000e 0646     		mov	r6, r0
 345 0010 1C6A     		ldr	r4, [r3, #32]
 346 0012 2648     		ldr	r0, .L85+4
 347 0014 0123     		movs	r3, #1
 348 0016 4FF40072 		mov	r2, #512
 349 001a A047     		blx	r4
 350 001c 60B1     		cbz	r0, .L57
 351 001e 3224     		movs	r4, #50
 352 0020 00E0     		b	.L60
 353              	.L58:
 354 0022 5CB1     		cbz	r4, .L81
 355              	.L60:
 356 0024 2B68     		ldr	r3, [r5]
 357 0026 1B68     		ldr	r3, [r3]
 358 0028 02A8     		add	r0, sp, #8
 359 002a 9B6A     		ldr	r3, [r3, #40]
 360 002c 9847     		blx	r3
 361 002e 013C     		subs	r4, r4, #1
 362 0030 A4B2     		uxth	r4, r4
 363 0032 0028     		cmp	r0, #0
 364 0034 F5D1     		bne	.L58
 365              	.L62:
 366 0036 0020     		movs	r0, #0
 367              	.L57:
 368 0038 04B0     		add	sp, sp, #16
 369              		@ sp needed
 370 003a 70BD     		pop	{r4, r5, r6, pc}
 371              	.L81:
 372 003c 029A     		ldr	r2, [sp, #8]
 373 003e 2B68     		ldr	r3, [r5]
 374 0040 02F00202 		and	r2, r2, #2
 375 0044 3270     		strb	r2, [r6]
 376 0046 DA7E     		ldrb	r2, [r3, #27]	@ zero_extendqisi2
 377 0048 187F     		ldrb	r0, [r3, #28]	@ zero_extendqisi2
 378 004a 597F     		ldrb	r1, [r3, #29]	@ zero_extendqisi2
 379 004c 9202     		lsls	r2, r2, #10
 380 004e 42EA8002 		orr	r2, r2, r0, lsl #2
 381 0052 42EA9112 		orr	r2, r2, r1, lsr #6
 382 0056 C2F30B02 		ubfx	r2, r2, #0, #12
 383 005a 40F6FF71 		movw	r1, #4095
 384 005e 8A42     		cmp	r2, r1
 385 0060 0ED0     		beq	.L82
 386 0062 3224     		movs	r4, #50
 387 0064 03AE     		add	r6, sp, #12
 388 0066 02E0     		b	.L65
 389              	.L83:
 390 0068 802C     		cmp	r4, #128
 391 006a E5D0     		beq	.L57
 392 006c 2B68     		ldr	r3, [r5]
 393              	.L65:
 394 006e 1B68     		ldr	r3, [r3]
 395 0070 3046     		mov	r0, r6
 396 0072 9B6A     		ldr	r3, [r3, #40]
 397 0074 9847     		blx	r3
 398 0076 0134     		adds	r4, r4, #1
 399 0078 A4B2     		uxth	r4, r4
ARM GAS  /tmp/ccJnwJVi.s 			page 8


 400 007a 0028     		cmp	r0, #0
 401 007c F4D1     		bne	.L83
 402 007e DAE7     		b	.L62
 403              	.L82:
 404 0080 0424     		movs	r4, #4
 405 0082 03AE     		add	r6, sp, #12
 406 0084 00E0     		b	.L64
 407              	.L84:
 408 0086 2B68     		ldr	r3, [r5]
 409              	.L64:
 410 0088 1B68     		ldr	r3, [r3]
 411 008a 3046     		mov	r0, r6
 412 008c 9B6A     		ldr	r3, [r3, #40]
 413 008e 9847     		blx	r3
 414 0090 013C     		subs	r4, r4, #1
 415 0092 A4B2     		uxth	r4, r4
 416 0094 0028     		cmp	r0, #0
 417 0096 CED0     		beq	.L62
 418 0098 002C     		cmp	r4, #0
 419 009a F4D1     		bne	.L84
 420 009c 039A     		ldr	r2, [sp, #12]
 421 009e 2B68     		ldr	r3, [r5]
 422 00a0 5208     		lsrs	r2, r2, #1
 423 00a2 9A60     		str	r2, [r3, #8]
 424 00a4 3624     		movs	r4, #54
 425 00a6 E2E7     		b	.L65
 426              	.L86:
 427              		.align	2
 428              	.L85:
 429 00a8 00000000 		.word	.LANCHOR0
 430 00ac 08110800 		.word	528648
 431              		.size	mmc_cmd8, .-mmc_cmd8
 432              		.section	.text.sd_mmc_cmd9_spi,"ax",%progbits
 433              		.align	1
 434              		.p2align 2,,3
 435              		.syntax unified
 436              		.thumb
 437              		.thumb_func
 438              		.fpu softvfp
 439              		.type	sd_mmc_cmd9_spi, %function
 440              	sd_mmc_cmd9_spi:
 441              		@ args = 0, pretend = 0, frame = 0
 442              		@ frame_needed = 0, uses_anonymous_args = 0
 443 0000 70B5     		push	{r4, r5, r6, lr}
 444 0002 104D     		ldr	r5, .L96
 445 0004 1048     		ldr	r0, .L96+4
 446 0006 2B68     		ldr	r3, [r5]
 447 0008 82B0     		sub	sp, sp, #8
 448 000a D989     		ldrh	r1, [r3, #14]
 449 000c 1B68     		ldr	r3, [r3]
 450 000e 0124     		movs	r4, #1
 451 0010 0094     		str	r4, [sp]
 452 0012 1E6A     		ldr	r6, [r3, #32]
 453 0014 0904     		lsls	r1, r1, #16
 454 0016 2346     		mov	r3, r4
 455 0018 1022     		movs	r2, #16
 456 001a B047     		blx	r6
ARM GAS  /tmp/ccJnwJVi.s 			page 9


 457 001c 10B9     		cbnz	r0, .L95
 458              	.L89:
 459 001e 0020     		movs	r0, #0
 460 0020 02B0     		add	sp, sp, #8
 461              		@ sp needed
 462 0022 70BD     		pop	{r4, r5, r6, pc}
 463              	.L95:
 464 0024 2868     		ldr	r0, [r5]
 465 0026 0368     		ldr	r3, [r0]
 466 0028 2146     		mov	r1, r4
 467 002a 1B6B     		ldr	r3, [r3, #48]
 468 002c 1530     		adds	r0, r0, #21
 469 002e 9847     		blx	r3
 470 0030 0028     		cmp	r0, #0
 471 0032 F4D0     		beq	.L89
 472 0034 2B68     		ldr	r3, [r5]
 473 0036 1B68     		ldr	r3, [r3]
 474 0038 5B6B     		ldr	r3, [r3, #52]
 475 003a 02B0     		add	sp, sp, #8
 476              		@ sp needed
 477 003c BDE87040 		pop	{r4, r5, r6, lr}
 478 0040 1847     		bx	r3
 479              	.L97:
 480 0042 00BF     		.align	2
 481              	.L96:
 482 0044 00000000 		.word	.LANCHOR0
 483 0048 09110800 		.word	528649
 484              		.size	sd_mmc_cmd9_spi, .-sd_mmc_cmd9_spi
 485              		.section	.text.sd_mmc_cmd9_mci,"ax",%progbits
 486              		.align	1
 487              		.p2align 2,,3
 488              		.syntax unified
 489              		.thumb
 490              		.thumb_func
 491              		.fpu softvfp
 492              		.type	sd_mmc_cmd9_mci, %function
 493              	sd_mmc_cmd9_mci:
 494              		@ args = 0, pretend = 0, frame = 0
 495              		@ frame_needed = 0, uses_anonymous_args = 0
 496 0000 38B5     		push	{r3, r4, r5, lr}
 497 0002 094D     		ldr	r5, .L104
 498 0004 2B68     		ldr	r3, [r5]
 499 0006 D989     		ldrh	r1, [r3, #14]
 500 0008 1B68     		ldr	r3, [r3]
 501 000a 0904     		lsls	r1, r1, #16
 502 000c 5B69     		ldr	r3, [r3, #20]
 503 000e 41F60930 		movw	r0, #6921
 504 0012 9847     		blx	r3
 505 0014 0446     		mov	r4, r0
 506 0016 20B1     		cbz	r0, .L99
 507 0018 2868     		ldr	r0, [r5]
 508 001a 0368     		ldr	r3, [r0]
 509 001c 1530     		adds	r0, r0, #21
 510 001e DB69     		ldr	r3, [r3, #28]
 511 0020 9847     		blx	r3
 512              	.L99:
 513 0022 2046     		mov	r0, r4
ARM GAS  /tmp/ccJnwJVi.s 			page 10


 514 0024 38BD     		pop	{r3, r4, r5, pc}
 515              	.L105:
 516 0026 00BF     		.align	2
 517              	.L104:
 518 0028 00000000 		.word	.LANCHOR0
 519              		.size	sd_mmc_cmd9_mci, .-sd_mmc_cmd9_mci
 520              		.section	.text.sd_acmd51,"ax",%progbits
 521              		.align	1
 522              		.p2align 2,,3
 523              		.syntax unified
 524              		.thumb
 525              		.thumb_func
 526              		.fpu softvfp
 527              		.type	sd_acmd51, %function
 528              	sd_acmd51:
 529              		@ args = 0, pretend = 0, frame = 8
 530              		@ frame_needed = 0, uses_anonymous_args = 0
 531 0000 70B5     		push	{r4, r5, r6, lr}
 532 0002 214C     		ldr	r4, .L127
 533 0004 2368     		ldr	r3, [r4]
 534 0006 D989     		ldrh	r1, [r3, #14]
 535 0008 1B68     		ldr	r3, [r3]
 536 000a 84B0     		sub	sp, sp, #16
 537 000c 0904     		lsls	r1, r1, #16
 538 000e 5B69     		ldr	r3, [r3, #20]
 539 0010 41F23710 		movw	r0, #4407
 540 0014 9847     		blx	r3
 541 0016 10B9     		cbnz	r0, .L126
 542              	.L112:
 543 0018 0020     		movs	r0, #0
 544              	.L108:
 545 001a 04B0     		add	sp, sp, #16
 546              		@ sp needed
 547 001c 70BD     		pop	{r4, r5, r6, pc}
 548              	.L126:
 549 001e 2368     		ldr	r3, [r4]
 550 0020 1A48     		ldr	r0, .L127+4
 551 0022 1B68     		ldr	r3, [r3]
 552 0024 0125     		movs	r5, #1
 553 0026 0095     		str	r5, [sp]
 554 0028 1E6A     		ldr	r6, [r3, #32]
 555 002a 0822     		movs	r2, #8
 556 002c 2B46     		mov	r3, r5
 557 002e 0021     		movs	r1, #0
 558 0030 B047     		blx	r6
 559 0032 0028     		cmp	r0, #0
 560 0034 F0D0     		beq	.L112
 561 0036 2368     		ldr	r3, [r4]
 562 0038 1B68     		ldr	r3, [r3]
 563 003a 2946     		mov	r1, r5
 564 003c 1B6B     		ldr	r3, [r3, #48]
 565 003e 02A8     		add	r0, sp, #8
 566 0040 9847     		blx	r3
 567 0042 0028     		cmp	r0, #0
 568 0044 E8D0     		beq	.L112
 569 0046 2368     		ldr	r3, [r4]
 570 0048 1B68     		ldr	r3, [r3]
ARM GAS  /tmp/ccJnwJVi.s 			page 11


 571 004a 5B6B     		ldr	r3, [r3, #52]
 572 004c 9847     		blx	r3
 573 004e 0028     		cmp	r0, #0
 574 0050 E2D0     		beq	.L112
 575 0052 9DF80830 		ldrb	r3, [sp, #8]	@ zero_extendqisi2
 576 0056 03F00F03 		and	r3, r3, #15
 577 005a 012B     		cmp	r3, #1
 578 005c 0FD0     		beq	.L114
 579 005e 0AD3     		bcc	.L124
 580 0060 022B     		cmp	r3, #2
 581 0062 08D1     		bne	.L124
 582 0064 9DF80A30 		ldrb	r3, [sp, #10]	@ zero_extendqisi2
 583 0068 DB09     		lsrs	r3, r3, #7
 584 006a 2368     		ldr	r3, [r4]
 585 006c 14BF     		ite	ne
 586 006e 3022     		movne	r2, #48
 587 0070 2022     		moveq	r2, #32
 588 0072 9A74     		strb	r2, [r3, #18]
 589 0074 D1E7     		b	.L108
 590              	.L124:
 591 0076 2368     		ldr	r3, [r4]
 592 0078 1022     		movs	r2, #16
 593 007a 9A74     		strb	r2, [r3, #18]
 594 007c CDE7     		b	.L108
 595              	.L114:
 596 007e 2368     		ldr	r3, [r4]
 597 0080 1A22     		movs	r2, #26
 598 0082 9A74     		strb	r2, [r3, #18]
 599 0084 C9E7     		b	.L108
 600              	.L128:
 601 0086 00BF     		.align	2
 602              	.L127:
 603 0088 00000000 		.word	.LANCHOR0
 604 008c 33110800 		.word	528691
 605              		.size	sd_acmd51, .-sd_acmd51
 606              		.section	.text.sd_mmc_select_slot.part.5,"ax",%progbits
 607              		.align	1
 608              		.p2align 2,,3
 609              		.syntax unified
 610              		.thumb
 611              		.thumb_func
 612              		.fpu softvfp
 613              		.type	sd_mmc_select_slot.part.5, %function
 614              	sd_mmc_select_slot.part.5:
 615              		@ args = 0, pretend = 0, frame = 0
 616              		@ frame_needed = 0, uses_anonymous_args = 0
 617 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 618 0004 8200     		lsls	r2, r0, #2
 619 0006 1A4D     		ldr	r5, .L133
 620 0008 1118     		adds	r1, r2, r0
 621 000a 05EBC101 		add	r1, r5, r1, lsl #3
 622 000e 0446     		mov	r4, r0
 623 0010 0B7C     		ldrb	r3, [r1, #16]	@ zero_extendqisi2
 624 0012 033B     		subs	r3, r3, #3
 625 0014 012B     		cmp	r3, #1
 626 0016 21D9     		bls	.L130
 627 0018 91F82530 		ldrb	r3, [r1, #37]	@ zero_extendqisi2
ARM GAS  /tmp/ccJnwJVi.s 			page 12


 628 001c 0033     		adds	r3, r3, #0
 629 001e 18BF     		it	ne
 630 0020 0123     		movne	r3, #1
 631              	.L131:
 632 0022 2244     		add	r2, r2, r4
 633 0024 D200     		lsls	r2, r2, #3
 634 0026 AE18     		adds	r6, r5, r2
 635 0028 AA58     		ldr	r2, [r5, r2]
 636 002a DFF84CC0 		ldr	ip, .L133+8
 637 002e DFF84CE0 		ldr	lr, .L133+12
 638 0032 1768     		ldr	r7, [r2]
 639 0034 F07C     		ldrb	r0, [r6, #19]	@ zero_extendqisi2
 640 0036 327D     		ldrb	r2, [r6, #20]	@ zero_extendqisi2
 641 0038 7168     		ldr	r1, [r6, #4]
 642 003a 8EF80040 		strb	r4, [lr]
 643 003e 04EB8408 		add	r8, r4, r4, lsl #2
 644 0042 05EBC805 		add	r5, r5, r8, lsl #3
 645 0046 CCF80050 		str	r5, [ip]
 646 004a B847     		blx	r7
 647 004c 307C     		ldrb	r0, [r6, #16]	@ zero_extendqisi2
 648 004e A0F10200 		sub	r0, #2
 649 0052 B0FA80F0 		clz	r0, r0
 650 0056 4009     		lsrs	r0, r0, #5
 651 0058 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 652              	.L130:
 653 005c 0223     		movs	r3, #2
 654 005e 054E     		ldr	r6, .L133+4
 655 0060 0B74     		strb	r3, [r1, #16]
 656 0062 0120     		movs	r0, #1
 657 0064 0023     		movs	r3, #0
 658 0066 4E60     		str	r6, [r1, #4]
 659 0068 0875     		strb	r0, [r1, #20]
 660 006a 81F82530 		strb	r3, [r1, #37]
 661 006e D8E7     		b	.L131
 662              	.L134:
 663              		.align	2
 664              	.L133:
 665 0070 00000000 		.word	.LANCHOR4
 666 0074 801A0600 		.word	400000
 667 0078 00000000 		.word	.LANCHOR0
 668 007c 00000000 		.word	.LANCHOR5
 669              		.size	sd_mmc_select_slot.part.5, .-sd_mmc_select_slot.part.5
 670              		.section	.text.sd_mmc_deselect_slot.part.6,"ax",%progbits
 671              		.align	1
 672              		.p2align 2,,3
 673              		.syntax unified
 674              		.thumb
 675              		.thumb_func
 676              		.fpu softvfp
 677              		.type	sd_mmc_deselect_slot.part.6, %function
 678              	sd_mmc_deselect_slot.part.6:
 679              		@ args = 0, pretend = 0, frame = 0
 680              		@ frame_needed = 0, uses_anonymous_args = 0
 681 0000 08B5     		push	{r3, lr}
 682 0002 054B     		ldr	r3, .L137
 683 0004 1B68     		ldr	r3, [r3]
 684 0006 1A68     		ldr	r2, [r3]
ARM GAS  /tmp/ccJnwJVi.s 			page 13


 685 0008 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 686 000a 5368     		ldr	r3, [r2, #4]
 687 000c 9847     		blx	r3
 688 000e 034B     		ldr	r3, .L137+4
 689 0010 FF22     		movs	r2, #255
 690 0012 1A70     		strb	r2, [r3]
 691 0014 08BD     		pop	{r3, pc}
 692              	.L138:
 693 0016 00BF     		.align	2
 694              	.L137:
 695 0018 00000000 		.word	.LANCHOR0
 696 001c 00000000 		.word	.LANCHOR5
 697              		.size	sd_mmc_deselect_slot.part.6, .-sd_mmc_deselect_slot.part.6
 698              		.section	.text.sd_mmc_init,"ax",%progbits
 699              		.align	1
 700              		.p2align 2,,3
 701              		.global	sd_mmc_init
 702              		.syntax unified
 703              		.thumb
 704              		.thumb_func
 705              		.fpu softvfp
 706              		.type	sd_mmc_init, %function
 707              	sd_mmc_init:
 708              		@ args = 0, pretend = 0, frame = 0
 709              		@ frame_needed = 0, uses_anonymous_args = 0
 710 0000 70B5     		push	{r4, r5, r6, lr}
 711 0002 154C     		ldr	r4, .L149
 712 0004 0423     		movs	r3, #4
 713 0006 2374     		strb	r3, [r4, #16]
 714 0008 0546     		mov	r5, r0
 715 000a 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 716 000c 2073     		strb	r0, [r4, #12]
 717 000e FF28     		cmp	r0, #255
 718 0010 0E46     		mov	r6, r1
 719 0012 03D0     		beq	.L140
 720 0014 0022     		movs	r2, #0
 721 0016 0121     		movs	r1, #1
 722 0018 FFF7FEFF 		bl	pinModeDuet
 723              	.L140:
 724 001c 0F4B     		ldr	r3, .L149+4
 725 001e 2360     		str	r3, [r4]
 726 0020 0022     		movs	r2, #0
 727 0022 0423     		movs	r3, #4
 728 0024 E274     		strb	r2, [r4, #19]
 729 0026 84F83830 		strb	r3, [r4, #56]
 730 002a 6878     		ldrb	r0, [r5, #1]	@ zero_extendqisi2
 731 002c 84F83400 		strb	r0, [r4, #52]
 732 0030 FF28     		cmp	r0, #255
 733 0032 02D0     		beq	.L141
 734 0034 0121     		movs	r1, #1
 735 0036 FFF7FEFF 		bl	pinModeDuet
 736              	.L141:
 737 003a 094A     		ldr	r2, .L149+8
 738 003c 094B     		ldr	r3, .L149+12
 739 003e A362     		str	r3, [r4, #40]
 740 0040 FF21     		movs	r1, #255
 741 0042 0023     		movs	r3, #0
ARM GAS  /tmp/ccJnwJVi.s 			page 14


 742 0044 84F83B30 		strb	r3, [r4, #59]
 743 0048 1170     		strb	r1, [r2]
 744 004a FFF7FEFF 		bl	hsmci_init
 745 004e 3046     		mov	r0, r6
 746 0050 BDE87040 		pop	{r4, r5, r6, lr}
 747 0054 FFF7FEBF 		b	sd_mmc_spi_init
 748              	.L150:
 749              		.align	2
 750              	.L149:
 751 0058 00000000 		.word	.LANCHOR4
 752 005c 00000000 		.word	.LANCHOR6
 753 0060 00000000 		.word	.LANCHOR5
 754 0064 00000000 		.word	.LANCHOR7
 755              		.size	sd_mmc_init, .-sd_mmc_init
 756              		.section	.text.sd_mmc_nb_slot,"ax",%progbits
 757              		.align	1
 758              		.p2align 2,,3
 759              		.global	sd_mmc_nb_slot
 760              		.syntax unified
 761              		.thumb
 762              		.thumb_func
 763              		.fpu softvfp
 764              		.type	sd_mmc_nb_slot, %function
 765              	sd_mmc_nb_slot:
 766              		@ args = 0, pretend = 0, frame = 0
 767              		@ frame_needed = 0, uses_anonymous_args = 0
 768              		@ link register save eliminated.
 769 0000 0220     		movs	r0, #2
 770 0002 7047     		bx	lr
 771              		.size	sd_mmc_nb_slot, .-sd_mmc_nb_slot
 772              		.section	.text.sd_mmc_check,"ax",%progbits
 773              		.align	1
 774              		.p2align 2,,3
 775              		.global	sd_mmc_check
 776              		.syntax unified
 777              		.thumb
 778              		.thumb_func
 779              		.fpu softvfp
 780              		.type	sd_mmc_check, %function
 781              	sd_mmc_check:
 782              		@ args = 0, pretend = 0, frame = 72
 783              		@ frame_needed = 0, uses_anonymous_args = 0
 784 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 785 0002 0128     		cmp	r0, #1
 786 0004 95B0     		sub	sp, sp, #84
 787 0006 23D9     		bls	.L371
 788 0008 0424     		movs	r4, #4
 789              	.L153:
 790 000a 944B     		ldr	r3, .L382
 791 000c 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 792 000e 012B     		cmp	r3, #1
 793 0010 19D9     		bls	.L364
 794              	.L232:
 795 0012 2046     		mov	r0, r4
 796 0014 15B0     		add	sp, sp, #84
 797              		@ sp needed
 798 0016 F0BD     		pop	{r4, r5, r6, r7, pc}
ARM GAS  /tmp/ccJnwJVi.s 			page 15


 799              	.L157:
 800 0018 8DF80F50 		strb	r5, [sp, #15]
 801 001c 5874     		strb	r0, [r3, #17]
 802 001e 9D74     		strb	r5, [r3, #18]
 803 0020 1269     		ldr	r2, [r2, #16]
 804 0022 DD81     		strh	r5, [r3, #14]	@ movhi
 805 0024 9047     		blx	r2
 806 0026 2368     		ldr	r3, [r4]
 807 0028 1B68     		ldr	r3, [r3]
 808 002a 2946     		mov	r1, r5
 809 002c 5B69     		ldr	r3, [r3, #20]
 810 002e 4FF48040 		mov	r0, #16384
 811 0032 9847     		blx	r3
 812 0034 0028     		cmp	r0, #0
 813 0036 66D1     		bne	.L372
 814              	.L217:
 815 0038 2368     		ldr	r3, [r4]
 816              	.L220:
 817 003a 884A     		ldr	r2, .L382
 818 003c 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 819 003e 0324     		movs	r4, #3
 820 0040 012A     		cmp	r2, #1
 821 0042 1C74     		strb	r4, [r3, #16]
 822 0044 E5D8     		bhi	.L232
 823              	.L364:
 824 0046 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 825 004a 2046     		mov	r0, r4
 826 004c 15B0     		add	sp, sp, #84
 827              		@ sp needed
 828 004e F0BD     		pop	{r4, r5, r6, r7, pc}
 829              	.L371:
 830 0050 0546     		mov	r5, r0
 831              	.L316:
 832 0052 2846     		mov	r0, r5
 833 0054 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 834 0058 0828     		cmp	r0, #8
 835 005a 0446     		mov	r4, r0
 836 005c F9D0     		beq	.L316
 837 005e 0128     		cmp	r0, #1
 838 0060 D3D1     		bne	.L153
 839 0062 7F4C     		ldr	r4, .L382+4
 840 0064 2368     		ldr	r3, [r4]
 841 0066 1A68     		ldr	r2, [r3]
 842 0068 92F84850 		ldrb	r5, [r2, #72]	@ zero_extendqisi2
 843 006c 002D     		cmp	r5, #0
 844 006e D3D0     		beq	.L157
 845 0070 0025     		movs	r5, #0
 846 0072 8DF80F50 		strb	r5, [sp, #15]
 847 0076 5874     		strb	r0, [r3, #17]
 848 0078 9D74     		strb	r5, [r3, #18]
 849 007a DD81     		strh	r5, [r3, #14]	@ movhi
 850 007c 1369     		ldr	r3, [r2, #16]
 851 007e 9847     		blx	r3
 852 0080 2368     		ldr	r3, [r4]
 853 0082 1B68     		ldr	r3, [r3]
 854 0084 2946     		mov	r1, r5
 855 0086 5B69     		ldr	r3, [r3, #20]
ARM GAS  /tmp/ccJnwJVi.s 			page 16


 856 0088 4FF48850 		mov	r0, #4352
 857 008c 9847     		blx	r3
 858 008e 60B9     		cbnz	r0, .L373
 859              	.L170:
 860 0090 0025     		movs	r5, #0
 861              	.L363:
 862 0092 2368     		ldr	r3, [r4]
 863              	.L178:
 864 0094 002D     		cmp	r5, #0
 865 0096 D0D0     		beq	.L220
 866 0098 704A     		ldr	r2, .L382
 867 009a 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 868 009c 0024     		movs	r4, #0
 869 009e 012A     		cmp	r2, #1
 870 00a0 1C74     		strb	r4, [r3, #16]
 871 00a2 D0D9     		bls	.L364
 872 00a4 2046     		mov	r0, r4
 873 00a6 15B0     		add	sp, sp, #84
 874              		@ sp needed
 875 00a8 F0BD     		pop	{r4, r5, r6, r7, pc}
 876              	.L373:
 877 00aa 0DF10F00 		add	r0, sp, #15
 878 00ae FFF7FEFF 		bl	sd_cmd8
 879 00b2 0546     		mov	r5, r0
 880 00b4 0028     		cmp	r0, #0
 881 00b6 EBD0     		beq	.L170
 882 00b8 2068     		ldr	r0, [r4]
 883 00ba 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 884 00bc D907     		lsls	r1, r3, #31
 885 00be 00F19880 		bmi	.L374
 886              	.L161:
 887 00c2 03F00903 		and	r3, r3, #9
 888 00c6 012B     		cmp	r3, #1
 889 00c8 11D1     		bne	.L177
 890              	.L226:
 891 00ca 0368     		ldr	r3, [r0]
 892 00cc 4FF40071 		mov	r1, #512
 893 00d0 5B69     		ldr	r3, [r3, #20]
 894 00d2 41F21010 		movw	r0, #4368
 895 00d6 9847     		blx	r3
 896 00d8 0028     		cmp	r0, #0
 897 00da D9D0     		beq	.L170
 898 00dc 2068     		ldr	r0, [r4]
 899 00de 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 900              	.L176:
 901 00e0 DE07     		lsls	r6, r3, #31
 902 00e2 04D5     		bpl	.L177
 903 00e4 FFF7FEFF 		bl	sd_mmc_cmd13
 904 00e8 0028     		cmp	r0, #0
 905 00ea D1D0     		beq	.L170
 906              	.L362:
 907 00ec 2068     		ldr	r0, [r4]
 908              	.L177:
 909 00ee 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 910 00f2 0168     		ldr	r1, [r0]
 911 00f4 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 912 00f6 0E68     		ldr	r6, [r1]
ARM GAS  /tmp/ccJnwJVi.s 			page 17


 913 00f8 4168     		ldr	r1, [r0, #4]
 914 00fa C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 915 00fc 0033     		adds	r3, r3, #0
 916 00fe 18BF     		it	ne
 917 0100 0123     		movne	r3, #1
 918 0102 B047     		blx	r6
 919 0104 C5E7     		b	.L363
 920              	.L372:
 921 0106 0DF10F00 		add	r0, sp, #15
 922 010a FFF7FEFF 		bl	sd_cmd8
 923 010e 2368     		ldr	r3, [r4]
 924 0110 0028     		cmp	r0, #0
 925 0112 92D0     		beq	.L220
 926 0114 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 927 0116 D007     		lsls	r0, r2, #31
 928 0118 00F1FB80 		bmi	.L375
 929              	.L182:
 930 011c 1B68     		ldr	r3, [r3]
 931 011e 0021     		movs	r1, #0
 932 0120 5B69     		ldr	r3, [r3, #20]
 933 0122 45F20310 		movw	r0, #20739
 934 0126 9847     		blx	r3
 935 0128 0028     		cmp	r0, #0
 936 012a 85D0     		beq	.L217
 937 012c 2568     		ldr	r5, [r4]
 938 012e 2B68     		ldr	r3, [r5]
 939 0130 9B69     		ldr	r3, [r3, #24]
 940 0132 9847     		blx	r3
 941 0134 2368     		ldr	r3, [r4]
 942 0136 000C     		lsrs	r0, r0, #16
 943 0138 E881     		strh	r0, [r5, #14]	@ movhi
 944 013a 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 945 013c D107     		lsls	r1, r2, #31
 946 013e 07D5     		bpl	.L205
 947 0140 FFF7FEFF 		bl	sd_mmc_cmd9_mci
 948 0144 0028     		cmp	r0, #0
 949 0146 3FF477AF 		beq	.L217
 950 014a FFF7FEFF 		bl	sd_decode_csd
 951 014e 2368     		ldr	r3, [r4]
 952              	.L205:
 953 0150 D989     		ldrh	r1, [r3, #14]
 954 0152 1B68     		ldr	r3, [r3]
 955 0154 0904     		lsls	r1, r1, #16
 956 0156 5B69     		ldr	r3, [r3, #20]
 957 0158 43F20710 		movw	r0, #12551
 958 015c 9847     		blx	r3
 959 015e 2368     		ldr	r3, [r4]
 960 0160 0546     		mov	r5, r0
 961 0162 0028     		cmp	r0, #0
 962 0164 3FF469AF 		beq	.L220
 963 0168 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 964 016a D207     		lsls	r2, r2, #31
 965 016c 05D5     		bpl	.L208
 966 016e FFF7FEFF 		bl	sd_acmd51
 967 0172 2368     		ldr	r3, [r4]
 968 0174 0028     		cmp	r0, #0
 969 0176 3FF460AF 		beq	.L220
ARM GAS  /tmp/ccJnwJVi.s 			page 18


 970              	.L208:
 971 017a 1A68     		ldr	r2, [r3]
 972 017c D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 973 017e 9368     		ldr	r3, [r2, #8]
 974 0180 9847     		blx	r3
 975 0182 0328     		cmp	r0, #3
 976 0184 0FD9     		bls	.L210
 977 0186 2068     		ldr	r0, [r4]
 978 0188 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 979 018a DF07     		lsls	r7, r3, #31
 980 018c 00F1DD81 		bmi	.L211
 981 0190 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 982              	.L212:
 983 0192 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 984 0196 0668     		ldr	r6, [r0]
 985 0198 4168     		ldr	r1, [r0, #4]
 986 019a 3668     		ldr	r6, [r6]
 987 019c C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 988 019e 0033     		adds	r3, r3, #0
 989 01a0 18BF     		it	ne
 990 01a2 0123     		movne	r3, #1
 991 01a4 B047     		blx	r6
 992              	.L210:
 993 01a6 2368     		ldr	r3, [r4]
 994 01a8 1B68     		ldr	r3, [r3]
 995 01aa DB68     		ldr	r3, [r3, #12]
 996 01ac 9847     		blx	r3
 997 01ae 90B1     		cbz	r0, .L215
 998 01b0 2068     		ldr	r0, [r4]
 999 01b2 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1000 01b4 DE07     		lsls	r6, r3, #31
 1001 01b6 03D5     		bpl	.L216
 1002 01b8 837C     		ldrb	r3, [r0, #18]	@ zero_extendqisi2
 1003 01ba 102B     		cmp	r3, #16
 1004 01bc 00F2E481 		bhi	.L376
 1005              	.L216:
 1006 01c0 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1007 01c4 0168     		ldr	r1, [r0]
 1008 01c6 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1009 01c8 0E68     		ldr	r6, [r1]
 1010 01ca 4168     		ldr	r1, [r0, #4]
 1011 01cc C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1012 01ce 0033     		adds	r3, r3, #0
 1013 01d0 18BF     		it	ne
 1014 01d2 0123     		movne	r3, #1
 1015 01d4 B047     		blx	r6
 1016              	.L215:
 1017 01d6 2368     		ldr	r3, [r4]
 1018 01d8 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1019 01da D207     		lsls	r2, r2, #31
 1020 01dc 7FF55AAF 		bpl	.L178
 1021 01e0 1B68     		ldr	r3, [r3]
 1022 01e2 4FF40071 		mov	r1, #512
 1023 01e6 5B69     		ldr	r3, [r3, #20]
 1024 01e8 41F21010 		movw	r0, #4368
 1025 01ec 9847     		blx	r3
 1026              	.L365:
ARM GAS  /tmp/ccJnwJVi.s 			page 19


 1027 01ee 0546     		mov	r5, r0
 1028 01f0 4FE7     		b	.L363
 1029              	.L374:
 1030 01f2 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 1031 01f6 002B     		cmp	r3, #0
 1032 01f8 14BF     		ite	ne
 1033 01fa 4FF08047 		movne	r7, #1073741824
 1034 01fe 0027     		moveq	r7, #0
 1035 0200 41F6EF36 		movw	r6, #7151
 1036 0204 11E0     		b	.L164
 1037              	.L377:
 1038 0206 2368     		ldr	r3, [r4]
 1039 0208 1B68     		ldr	r3, [r3]
 1040 020a 41F22910 		movw	r0, #4393
 1041 020e 5B69     		ldr	r3, [r3, #20]
 1042 0210 9847     		blx	r3
 1043 0212 98B1     		cbz	r0, .L162
 1044 0214 2368     		ldr	r3, [r4]
 1045 0216 1B68     		ldr	r3, [r3]
 1046 0218 9B69     		ldr	r3, [r3, #24]
 1047 021a 9847     		blx	r3
 1048 021c 10F00101 		ands	r1, r0, #1
 1049 0220 00F04881 		beq	.L163
 1050 0224 013E     		subs	r6, r6, #1
 1051 0226 09D0     		beq	.L162
 1052 0228 2068     		ldr	r0, [r4]
 1053              	.L164:
 1054 022a 0368     		ldr	r3, [r0]
 1055 022c 0021     		movs	r1, #0
 1056 022e 5B69     		ldr	r3, [r3, #20]
 1057 0230 41F23710 		movw	r0, #4407
 1058 0234 9847     		blx	r3
 1059 0236 3946     		mov	r1, r7
 1060 0238 0028     		cmp	r0, #0
 1061 023a E4D1     		bne	.L377
 1062              	.L162:
 1063 023c 2368     		ldr	r3, [r4]
 1064 023e 0221     		movs	r1, #2
 1065 0240 1A68     		ldr	r2, [r3]
 1066 0242 5974     		strb	r1, [r3, #17]
 1067 0244 5369     		ldr	r3, [r2, #20]
 1068 0246 0021     		movs	r1, #0
 1069 0248 4FF48850 		mov	r0, #4352
 1070 024c 9847     		blx	r3
 1071 024e 0028     		cmp	r0, #0
 1072 0250 3FF41EAF 		beq	.L170
 1073 0254 41F6EF35 		movw	r5, #7151
 1074 0258 07E0     		b	.L171
 1075              	.L383:
 1076 025a 00BF     		.align	2
 1077              	.L382:
 1078 025c 00000000 		.word	.LANCHOR5
 1079 0260 00000000 		.word	.LANCHOR0
 1080              	.L378:
 1081 0264 013D     		subs	r5, r5, #1
 1082 0266 3FF413AF 		beq	.L170
 1083              	.L171:
ARM GAS  /tmp/ccJnwJVi.s 			page 20


 1084 026a 2368     		ldr	r3, [r4]
 1085 026c 1B68     		ldr	r3, [r3]
 1086 026e 0021     		movs	r1, #0
 1087 0270 5B69     		ldr	r3, [r3, #20]
 1088 0272 41F20110 		movw	r0, #4353
 1089 0276 9847     		blx	r3
 1090 0278 0028     		cmp	r0, #0
 1091 027a 3FF409AF 		beq	.L170
 1092 027e 2368     		ldr	r3, [r4]
 1093 0280 1B68     		ldr	r3, [r3]
 1094 0282 9B69     		ldr	r3, [r3, #24]
 1095 0284 9847     		blx	r3
 1096 0286 10F00101 		ands	r1, r0, #1
 1097 028a EBD1     		bne	.L378
 1098 028c 2368     		ldr	r3, [r4]
 1099 028e 1B68     		ldr	r3, [r3]
 1100 0290 40F23A50 		movw	r0, #1338
 1101 0294 5B69     		ldr	r3, [r3, #20]
 1102 0296 9847     		blx	r3
 1103 0298 0028     		cmp	r0, #0
 1104 029a 3FF4F9AE 		beq	.L170
 1105 029e 2368     		ldr	r3, [r4]
 1106 02a0 1B68     		ldr	r3, [r3]
 1107 02a2 9B69     		ldr	r3, [r3, #24]
 1108 02a4 9847     		blx	r3
 1109 02a6 00F0C040 		and	r0, r0, #1610612736
 1110 02aa B0F1804F 		cmp	r0, #1073741824
 1111 02ae 2368     		ldr	r3, [r4]
 1112 02b0 03D1     		bne	.L173
 1113 02b2 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1114 02b4 42F00802 		orr	r2, r2, #8
 1115 02b8 5A74     		strb	r2, [r3, #17]
 1116              	.L173:
 1117 02ba 1B68     		ldr	r3, [r3]
 1118 02bc 0021     		movs	r1, #0
 1119 02be 5B69     		ldr	r3, [r3, #20]
 1120 02c0 41F23B10 		movw	r0, #4411
 1121 02c4 9847     		blx	r3
 1122 02c6 0028     		cmp	r0, #0
 1123 02c8 3FF4E2AE 		beq	.L170
 1124 02cc FFF7FEFF 		bl	sd_mmc_cmd9_spi
 1125 02d0 0028     		cmp	r0, #0
 1126 02d2 3FF4DDAE 		beq	.L170
 1127 02d6 FFF7FEFF 		bl	mmc_decode_csd
 1128 02da 2368     		ldr	r3, [r4]
 1129 02dc 9A7C     		ldrb	r2, [r3, #18]	@ zero_extendqisi2
 1130 02de 3F2A     		cmp	r2, #63
 1131 02e0 06D9     		bls	.L174
 1132 02e2 04A8     		add	r0, sp, #16
 1133 02e4 FFF7FEFF 		bl	mmc_cmd8
 1134 02e8 0028     		cmp	r0, #0
 1135 02ea 3FF4D1AE 		beq	.L170
 1136 02ee 2368     		ldr	r3, [r4]
 1137              	.L174:
 1138 02f0 1B68     		ldr	r3, [r3]
 1139 02f2 4FF40071 		mov	r1, #512
 1140 02f6 5B69     		ldr	r3, [r3, #20]
ARM GAS  /tmp/ccJnwJVi.s 			page 21


 1141 02f8 41F21010 		movw	r0, #4368
 1142 02fc 9847     		blx	r3
 1143 02fe 0028     		cmp	r0, #0
 1144 0300 3FF4C6AE 		beq	.L170
 1145 0304 FFF7FEFF 		bl	sd_mmc_cmd13
 1146 0308 0546     		mov	r5, r0
 1147 030a 0028     		cmp	r0, #0
 1148 030c 3FF4C0AE 		beq	.L170
 1149 0310 ECE6     		b	.L362
 1150              	.L375:
 1151 0312 9DF80F20 		ldrb	r2, [sp, #15]	@ zero_extendqisi2
 1152 0316 994F     		ldr	r7, .L384
 1153 0318 002A     		cmp	r2, #0
 1154 031a 08BF     		it	eq
 1155 031c 4FF4FC17 		moveq	r7, #2064384
 1156 0320 40F63506 		movw	r6, #2101
 1157 0324 10E0     		b	.L187
 1158              	.L380:
 1159 0326 2368     		ldr	r3, [r4]
 1160 0328 1B68     		ldr	r3, [r3]
 1161 032a 44F22950 		movw	r0, #17705
 1162 032e 5B69     		ldr	r3, [r3, #20]
 1163 0330 9847     		blx	r3
 1164 0332 90B1     		cbz	r0, .L183
 1165 0334 2368     		ldr	r3, [r4]
 1166 0336 1B68     		ldr	r3, [r3]
 1167 0338 9B69     		ldr	r3, [r3, #24]
 1168 033a 9847     		blx	r3
 1169 033c 0028     		cmp	r0, #0
 1170 033e C0F2EF80 		blt	.L379
 1171 0342 013E     		subs	r6, r6, #1
 1172 0344 09D0     		beq	.L183
 1173 0346 2368     		ldr	r3, [r4]
 1174              	.L187:
 1175 0348 1B68     		ldr	r3, [r3]
 1176 034a 0021     		movs	r1, #0
 1177 034c 5B69     		ldr	r3, [r3, #20]
 1178 034e 41F23710 		movw	r0, #4407
 1179 0352 9847     		blx	r3
 1180 0354 3946     		mov	r1, r7
 1181 0356 0028     		cmp	r0, #0
 1182 0358 E5D1     		bne	.L380
 1183              	.L183:
 1184 035a 2368     		ldr	r3, [r4]
 1185 035c 0221     		movs	r1, #2
 1186 035e 1A68     		ldr	r2, [r3]
 1187 0360 5974     		strb	r1, [r3, #17]
 1188 0362 5369     		ldr	r3, [r2, #20]
 1189 0364 0021     		movs	r1, #0
 1190 0366 4FF48040 		mov	r0, #16384
 1191 036a 9847     		blx	r3
 1192 036c 0028     		cmp	r0, #0
 1193 036e 3FF490AE 		beq	.L363
 1194 0372 824F     		ldr	r7, .L384
 1195 0374 41F26906 		movw	r6, #4201
 1196 0378 02E0     		b	.L194
 1197              	.L190:
ARM GAS  /tmp/ccJnwJVi.s 			page 22


 1198 037a 013E     		subs	r6, r6, #1
 1199 037c 3FF489AE 		beq	.L363
 1200              	.L194:
 1201 0380 2368     		ldr	r3, [r4]
 1202 0382 1B68     		ldr	r3, [r3]
 1203 0384 3946     		mov	r1, r7
 1204 0386 5B69     		ldr	r3, [r3, #20]
 1205 0388 44F20150 		movw	r0, #17665
 1206 038c 9847     		blx	r3
 1207 038e 0028     		cmp	r0, #0
 1208 0390 3FF47FAE 		beq	.L363
 1209 0394 2368     		ldr	r3, [r4]
 1210 0396 1B68     		ldr	r3, [r3]
 1211 0398 9B69     		ldr	r3, [r3, #24]
 1212 039a 9847     		blx	r3
 1213 039c 031E     		subs	r3, r0, #0
 1214 039e ECDA     		bge	.L190
 1215 03a0 03F0C043 		and	r3, r3, #1610612736
 1216 03a4 B3F1804F 		cmp	r3, #1073741824
 1217 03a8 2368     		ldr	r3, [r4]
 1218 03aa 03D1     		bne	.L192
 1219 03ac 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1220 03ae 42F00802 		orr	r2, r2, #8
 1221 03b2 5A74     		strb	r2, [r3, #17]
 1222              	.L192:
 1223 03b4 1B68     		ldr	r3, [r3]
 1224 03b6 0021     		movs	r1, #0
 1225 03b8 5B69     		ldr	r3, [r3, #20]
 1226 03ba 45F60230 		movw	r0, #23298
 1227 03be 9847     		blx	r3
 1228 03c0 0028     		cmp	r0, #0
 1229 03c2 3FF466AE 		beq	.L363
 1230 03c6 2368     		ldr	r3, [r4]
 1231 03c8 1A68     		ldr	r2, [r3]
 1232 03ca 0121     		movs	r1, #1
 1233 03cc D981     		strh	r1, [r3, #14]	@ movhi
 1234 03ce 41F20310 		movw	r0, #4355
 1235 03d2 5369     		ldr	r3, [r2, #20]
 1236 03d4 4FF48031 		mov	r1, #65536
 1237 03d8 9847     		blx	r3
 1238 03da 0028     		cmp	r0, #0
 1239 03dc 3FF459AE 		beq	.L363
 1240 03e0 FFF7FEFF 		bl	sd_mmc_cmd9_mci
 1241 03e4 0028     		cmp	r0, #0
 1242 03e6 3FF454AE 		beq	.L363
 1243 03ea FFF7FEFF 		bl	mmc_decode_csd
 1244 03ee 2368     		ldr	r3, [r4]
 1245 03f0 D989     		ldrh	r1, [r3, #14]
 1246 03f2 1B68     		ldr	r3, [r3]
 1247 03f4 0904     		lsls	r1, r1, #16
 1248 03f6 5B69     		ldr	r3, [r3, #20]
 1249 03f8 43F20710 		movw	r0, #12551
 1250 03fc 9847     		blx	r3
 1251 03fe 0028     		cmp	r0, #0
 1252 0400 3FF447AE 		beq	.L363
 1253 0404 2068     		ldr	r0, [r4]
 1254 0406 837C     		ldrb	r3, [r0, #18]	@ zero_extendqisi2
ARM GAS  /tmp/ccJnwJVi.s 			page 23


 1255 0408 3F2B     		cmp	r3, #63
 1256 040a 40F2FC80 		bls	.L195
 1257 040e 04A8     		add	r0, sp, #16
 1258 0410 FFF7FEFF 		bl	mmc_cmd8
 1259 0414 0028     		cmp	r0, #0
 1260 0416 3FF43CAE 		beq	.L363
 1261 041a 2368     		ldr	r3, [r4]
 1262 041c 1A68     		ldr	r2, [r3]
 1263 041e D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1264 0420 9368     		ldr	r3, [r2, #8]
 1265 0422 9847     		blx	r3
 1266 0424 0328     		cmp	r0, #3
 1267 0426 2AD9     		bls	.L196
 1268 0428 2368     		ldr	r3, [r4]
 1269 042a 1A68     		ldr	r2, [r3]
 1270 042c D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1271 042e 9368     		ldr	r3, [r2, #8]
 1272 0430 9847     		blx	r3
 1273 0432 0428     		cmp	r0, #4
 1274 0434 0646     		mov	r6, r0
 1275 0436 00F0E280 		beq	.L228
 1276 043a 5149     		ldr	r1, .L384+4
 1277 043c 514B     		ldr	r3, .L384+8
 1278 043e 0828     		cmp	r0, #8
 1279 0440 18BF     		it	ne
 1280 0442 1946     		movne	r1, r3
 1281              	.L198:
 1282 0444 2368     		ldr	r3, [r4]
 1283 0446 1B68     		ldr	r3, [r3]
 1284 0448 43F20610 		movw	r0, #12550
 1285 044c 5B69     		ldr	r3, [r3, #20]
 1286 044e 9847     		blx	r3
 1287 0450 0028     		cmp	r0, #0
 1288 0452 3FF41EAE 		beq	.L363
 1289 0456 2368     		ldr	r3, [r4]
 1290 0458 1B68     		ldr	r3, [r3]
 1291 045a 9B69     		ldr	r3, [r3, #24]
 1292 045c 9847     		blx	r3
 1293 045e 0706     		lsls	r7, r0, #24
 1294 0460 3FF517AE 		bmi	.L363
 1295 0464 2068     		ldr	r0, [r4]
 1296 0466 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1297 046a 0168     		ldr	r1, [r0]
 1298 046c 0675     		strb	r6, [r0, #20]
 1299 046e 0033     		adds	r3, r3, #0
 1300 0470 3246     		mov	r2, r6
 1301 0472 18BF     		it	ne
 1302 0474 0123     		movne	r3, #1
 1303 0476 0E68     		ldr	r6, [r1]
 1304 0478 4168     		ldr	r1, [r0, #4]
 1305 047a C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1306 047c B047     		blx	r6
 1307              	.L196:
 1308 047e 2368     		ldr	r3, [r4]
 1309 0480 1B68     		ldr	r3, [r3]
 1310 0482 DB68     		ldr	r3, [r3, #12]
 1311 0484 9847     		blx	r3
ARM GAS  /tmp/ccJnwJVi.s 			page 24


 1312 0486 20B1     		cbz	r0, .L200
 1313 0488 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 1314 048c 002B     		cmp	r3, #0
 1315 048e 40F0C680 		bne	.L381
 1316              	.L200:
 1317 0492 0A26     		movs	r6, #10
 1318              	.L202:
 1319 0494 2368     		ldr	r3, [r4]
 1320 0496 1B68     		ldr	r3, [r3]
 1321 0498 4FF40071 		mov	r1, #512
 1322 049c 5B69     		ldr	r3, [r3, #20]
 1323 049e 41F21010 		movw	r0, #4368
 1324 04a2 9847     		blx	r3
 1325 04a4 013E     		subs	r6, r6, #1
 1326 04a6 0028     		cmp	r0, #0
 1327 04a8 7FF4A1AE 		bne	.L365
 1328 04ac 16F0FF06 		ands	r6, r6, #255
 1329 04b0 F0D1     		bne	.L202
 1330 04b2 EEE5     		b	.L363
 1331              	.L163:
 1332 04b4 2368     		ldr	r3, [r4]
 1333 04b6 1B68     		ldr	r3, [r3]
 1334 04b8 40F23A50 		movw	r0, #1338
 1335 04bc 5B69     		ldr	r3, [r3, #20]
 1336 04be 9847     		blx	r3
 1337 04c0 0028     		cmp	r0, #0
 1338 04c2 3FF4BBAE 		beq	.L162
 1339 04c6 2368     		ldr	r3, [r4]
 1340 04c8 1B68     		ldr	r3, [r3]
 1341 04ca 9B69     		ldr	r3, [r3, #24]
 1342 04cc 9847     		blx	r3
 1343 04ce 4200     		lsls	r2, r0, #1
 1344 04d0 2368     		ldr	r3, [r4]
 1345 04d2 03D5     		bpl	.L166
 1346 04d4 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1347 04d6 42F00802 		orr	r2, r2, #8
 1348 04da 5A74     		strb	r2, [r3, #17]
 1349              	.L166:
 1350 04dc 1B68     		ldr	r3, [r3]
 1351 04de 0021     		movs	r1, #0
 1352 04e0 5B69     		ldr	r3, [r3, #20]
 1353 04e2 41F23B10 		movw	r0, #4411
 1354 04e6 9847     		blx	r3
 1355 04e8 0028     		cmp	r0, #0
 1356 04ea 3FF4D1AD 		beq	.L170
 1357 04ee 2068     		ldr	r0, [r4]
 1358 04f0 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1359 04f2 DF07     		lsls	r7, r3, #31
 1360 04f4 7FF5E5AD 		bpl	.L161
 1361 04f8 FFF7FEFF 		bl	sd_mmc_cmd9_spi
 1362 04fc 0028     		cmp	r0, #0
 1363 04fe 3FF4C7AD 		beq	.L170
 1364 0502 FFF7FEFF 		bl	sd_decode_csd
 1365 0506 FFF7FEFF 		bl	sd_acmd51
 1366 050a 0028     		cmp	r0, #0
 1367 050c 3FF4C0AD 		beq	.L170
 1368 0510 2068     		ldr	r0, [r4]
ARM GAS  /tmp/ccJnwJVi.s 			page 25


 1369 0512 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1370 0514 03F00902 		and	r2, r3, #9
 1371 0518 012A     		cmp	r2, #1
 1372 051a 7FF4E1AD 		bne	.L176
 1373 051e D4E5     		b	.L226
 1374              	.L379:
 1375 0520 2368     		ldr	r3, [r4]
 1376 0522 4100     		lsls	r1, r0, #1
 1377 0524 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1378 0526 02D5     		bpl	.L186
 1379 0528 42F00802 		orr	r2, r2, #8
 1380 052c 5A74     		strb	r2, [r3, #17]
 1381              	.L186:
 1382 052e D007     		lsls	r0, r2, #31
 1383 0530 7FF5F4AD 		bpl	.L182
 1384 0534 1B68     		ldr	r3, [r3]
 1385 0536 0021     		movs	r1, #0
 1386 0538 5B69     		ldr	r3, [r3, #20]
 1387 053a 45F60230 		movw	r0, #23298
 1388 053e 9847     		blx	r3
 1389 0540 2368     		ldr	r3, [r4]
 1390 0542 0028     		cmp	r0, #0
 1391 0544 7FF4EAAD 		bne	.L182
 1392 0548 77E5     		b	.L220
 1393              	.L211:
 1394 054a C189     		ldrh	r1, [r0, #14]
 1395 054c 0368     		ldr	r3, [r0]
 1396 054e 0904     		lsls	r1, r1, #16
 1397 0550 5B69     		ldr	r3, [r3, #20]
 1398 0552 41F23710 		movw	r0, #4407
 1399 0556 9847     		blx	r3
 1400 0558 2368     		ldr	r3, [r4]
 1401 055a 0028     		cmp	r0, #0
 1402 055c 3FF46DAD 		beq	.L220
 1403 0560 1B68     		ldr	r3, [r3]
 1404 0562 0221     		movs	r1, #2
 1405 0564 5B69     		ldr	r3, [r3, #20]
 1406 0566 41F20610 		movw	r0, #4358
 1407 056a 9847     		blx	r3
 1408 056c 0028     		cmp	r0, #0
 1409 056e 3FF463AD 		beq	.L217
 1410 0572 2068     		ldr	r0, [r4]
 1411 0574 0422     		movs	r2, #4
 1412 0576 0275     		strb	r2, [r0, #20]
 1413 0578 0BE6     		b	.L212
 1414              	.L385:
 1415 057a 00BF     		.align	2
 1416              	.L384:
 1417 057c 00801F40 		.word	1075806208
 1418 0580 0002B701 		.word	28770816
 1419 0584 0000B701 		.word	28770304
 1420              	.L376:
 1421 0588 0368     		ldr	r3, [r0]
 1422 058a 3349     		ldr	r1, .L386
 1423 058c 3348     		ldr	r0, .L386+4
 1424 058e 0126     		movs	r6, #1
 1425 0590 0096     		str	r6, [sp]
ARM GAS  /tmp/ccJnwJVi.s 			page 26


 1426 0592 1F6A     		ldr	r7, [r3, #32]
 1427 0594 4022     		movs	r2, #64
 1428 0596 3346     		mov	r3, r6
 1429 0598 B847     		blx	r7
 1430 059a 0028     		cmp	r0, #0
 1431 059c 3FF44CAD 		beq	.L217
 1432 05a0 2368     		ldr	r3, [r4]
 1433 05a2 1B68     		ldr	r3, [r3]
 1434 05a4 3146     		mov	r1, r6
 1435 05a6 1B6B     		ldr	r3, [r3, #48]
 1436 05a8 04A8     		add	r0, sp, #16
 1437 05aa 9847     		blx	r3
 1438 05ac 0028     		cmp	r0, #0
 1439 05ae 3FF443AD 		beq	.L217
 1440 05b2 2368     		ldr	r3, [r4]
 1441 05b4 1B68     		ldr	r3, [r3]
 1442 05b6 5B6B     		ldr	r3, [r3, #52]
 1443 05b8 9847     		blx	r3
 1444 05ba 0028     		cmp	r0, #0
 1445 05bc 3FF43CAD 		beq	.L217
 1446 05c0 2368     		ldr	r3, [r4]
 1447 05c2 1B68     		ldr	r3, [r3]
 1448 05c4 9B69     		ldr	r3, [r3, #24]
 1449 05c6 9847     		blx	r3
 1450 05c8 0106     		lsls	r1, r0, #24
 1451 05ca 3FF535AD 		bmi	.L217
 1452 05ce 9DF82030 		ldrb	r3, [sp, #32]	@ zero_extendqisi2
 1453 05d2 03F00F03 		and	r3, r3, #15
 1454 05d6 0F2B     		cmp	r3, #15
 1455 05d8 13D0     		beq	.L218
 1456 05da BDF82C30 		ldrh	r3, [sp, #44]
 1457 05de 5BBA     		rev16	r3, r3
 1458 05e0 9BB2     		uxth	r3, r3
 1459 05e2 002B     		cmp	r3, #0
 1460 05e4 7FF428AD 		bne	.L217
 1461 05e8 2368     		ldr	r3, [r4]
 1462 05ea 1B68     		ldr	r3, [r3]
 1463 05ec 1B69     		ldr	r3, [r3, #16]
 1464 05ee 9847     		blx	r3
 1465 05f0 2068     		ldr	r0, [r4]
 1466 05f2 4368     		ldr	r3, [r0, #4]
 1467 05f4 80F82560 		strb	r6, [r0, #37]
 1468 05f8 B340     		lsls	r3, r3, r6
 1469 05fa 4360     		str	r3, [r0, #4]
 1470 05fc E0E5     		b	.L216
 1471              	.L228:
 1472 05fe 1849     		ldr	r1, .L386+8
 1473 0600 20E7     		b	.L198
 1474              	.L218:
 1475 0602 2068     		ldr	r0, [r4]
 1476 0604 DCE5     		b	.L216
 1477              	.L195:
 1478 0606 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1479 060a 0168     		ldr	r1, [r0]
 1480 060c 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1481 060e 0E68     		ldr	r6, [r1]
 1482 0610 4168     		ldr	r1, [r0, #4]
ARM GAS  /tmp/ccJnwJVi.s 			page 27


 1483 0612 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1484 0614 0033     		adds	r3, r3, #0
 1485 0616 18BF     		it	ne
 1486 0618 0123     		movne	r3, #1
 1487 061a B047     		blx	r6
 1488 061c 39E7     		b	.L200
 1489              	.L381:
 1490 061e 2368     		ldr	r3, [r4]
 1491 0620 1049     		ldr	r1, .L386+12
 1492 0622 1B68     		ldr	r3, [r3]
 1493 0624 43F20610 		movw	r0, #12550
 1494 0628 5B69     		ldr	r3, [r3, #20]
 1495 062a 9847     		blx	r3
 1496 062c 0028     		cmp	r0, #0
 1497 062e 3FF430AD 		beq	.L363
 1498 0632 2368     		ldr	r3, [r4]
 1499 0634 1B68     		ldr	r3, [r3]
 1500 0636 9B69     		ldr	r3, [r3, #24]
 1501 0638 9847     		blx	r3
 1502 063a 0606     		lsls	r6, r0, #24
 1503 063c 3FF529AD 		bmi	.L363
 1504 0640 2068     		ldr	r0, [r4]
 1505 0642 0949     		ldr	r1, .L386+16
 1506 0644 0268     		ldr	r2, [r0]
 1507 0646 4160     		str	r1, [r0, #4]
 1508 0648 0123     		movs	r3, #1
 1509 064a 80F82530 		strb	r3, [r0, #37]
 1510 064e 1668     		ldr	r6, [r2]
 1511 0650 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1512 0652 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1513 0654 B047     		blx	r6
 1514 0656 1CE7     		b	.L200
 1515              	.L387:
 1516              		.align	2
 1517              	.L386:
 1518 0658 01FFFF80 		.word	-2130706687
 1519 065c 06110800 		.word	528646
 1520 0660 0001B701 		.word	28770560
 1521 0664 0001B903 		.word	62456064
 1522 0668 00751903 		.word	52000000
 1523              		.size	sd_mmc_check, .-sd_mmc_check
 1524              		.section	.text.sd_mmc_get_type,"ax",%progbits
 1525              		.align	1
 1526              		.p2align 2,,3
 1527              		.global	sd_mmc_get_type
 1528              		.syntax unified
 1529              		.thumb
 1530              		.thumb_func
 1531              		.fpu softvfp
 1532              		.type	sd_mmc_get_type, %function
 1533              	sd_mmc_get_type:
 1534              		@ args = 0, pretend = 0, frame = 0
 1535              		@ frame_needed = 0, uses_anonymous_args = 0
 1536 0000 0128     		cmp	r0, #1
 1537 0002 01D9     		bls	.L397
 1538 0004 0020     		movs	r0, #0
 1539 0006 7047     		bx	lr
ARM GAS  /tmp/ccJnwJVi.s 			page 28


 1540              	.L397:
 1541 0008 08B5     		push	{r3, lr}
 1542 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1543 000e 38B9     		cbnz	r0, .L391
 1544 0010 064B     		ldr	r3, .L399
 1545 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1546 0014 012B     		cmp	r3, #1
 1547 0016 05D9     		bls	.L398
 1548              	.L392:
 1549 0018 054B     		ldr	r3, .L399+4
 1550 001a 1B68     		ldr	r3, [r3]
 1551 001c 587C     		ldrb	r0, [r3, #17]	@ zero_extendqisi2
 1552 001e 08BD     		pop	{r3, pc}
 1553              	.L391:
 1554 0020 0020     		movs	r0, #0
 1555 0022 08BD     		pop	{r3, pc}
 1556              	.L398:
 1557 0024 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1558 0028 F6E7     		b	.L392
 1559              	.L400:
 1560 002a 00BF     		.align	2
 1561              	.L399:
 1562 002c 00000000 		.word	.LANCHOR5
 1563 0030 00000000 		.word	.LANCHOR0
 1564              		.size	sd_mmc_get_type, .-sd_mmc_get_type
 1565              		.section	.text.sd_mmc_get_version,"ax",%progbits
 1566              		.align	1
 1567              		.p2align 2,,3
 1568              		.global	sd_mmc_get_version
 1569              		.syntax unified
 1570              		.thumb
 1571              		.thumb_func
 1572              		.fpu softvfp
 1573              		.type	sd_mmc_get_version, %function
 1574              	sd_mmc_get_version:
 1575              		@ args = 0, pretend = 0, frame = 0
 1576              		@ frame_needed = 0, uses_anonymous_args = 0
 1577 0000 0128     		cmp	r0, #1
 1578 0002 01D9     		bls	.L410
 1579 0004 0020     		movs	r0, #0
 1580 0006 7047     		bx	lr
 1581              	.L410:
 1582 0008 08B5     		push	{r3, lr}
 1583 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1584 000e 38B9     		cbnz	r0, .L404
 1585 0010 064B     		ldr	r3, .L412
 1586 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1587 0014 012B     		cmp	r3, #1
 1588 0016 05D9     		bls	.L411
 1589              	.L405:
 1590 0018 054B     		ldr	r3, .L412+4
 1591 001a 1B68     		ldr	r3, [r3]
 1592 001c 987C     		ldrb	r0, [r3, #18]	@ zero_extendqisi2
 1593 001e 08BD     		pop	{r3, pc}
 1594              	.L404:
 1595 0020 0020     		movs	r0, #0
 1596 0022 08BD     		pop	{r3, pc}
ARM GAS  /tmp/ccJnwJVi.s 			page 29


 1597              	.L411:
 1598 0024 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1599 0028 F6E7     		b	.L405
 1600              	.L413:
 1601 002a 00BF     		.align	2
 1602              	.L412:
 1603 002c 00000000 		.word	.LANCHOR5
 1604 0030 00000000 		.word	.LANCHOR0
 1605              		.size	sd_mmc_get_version, .-sd_mmc_get_version
 1606              		.section	.text.sd_mmc_get_capacity,"ax",%progbits
 1607              		.align	1
 1608              		.p2align 2,,3
 1609              		.global	sd_mmc_get_capacity
 1610              		.syntax unified
 1611              		.thumb
 1612              		.thumb_func
 1613              		.fpu softvfp
 1614              		.type	sd_mmc_get_capacity, %function
 1615              	sd_mmc_get_capacity:
 1616              		@ args = 0, pretend = 0, frame = 0
 1617              		@ frame_needed = 0, uses_anonymous_args = 0
 1618 0000 0128     		cmp	r0, #1
 1619 0002 01D9     		bls	.L423
 1620 0004 0020     		movs	r0, #0
 1621 0006 7047     		bx	lr
 1622              	.L423:
 1623 0008 08B5     		push	{r3, lr}
 1624 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1625 000e 38B9     		cbnz	r0, .L417
 1626 0010 064B     		ldr	r3, .L425
 1627 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1628 0014 012B     		cmp	r3, #1
 1629 0016 05D9     		bls	.L424
 1630              	.L418:
 1631 0018 054B     		ldr	r3, .L425+4
 1632 001a 1B68     		ldr	r3, [r3]
 1633 001c 9868     		ldr	r0, [r3, #8]
 1634 001e 08BD     		pop	{r3, pc}
 1635              	.L417:
 1636 0020 0020     		movs	r0, #0
 1637 0022 08BD     		pop	{r3, pc}
 1638              	.L424:
 1639 0024 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1640 0028 F6E7     		b	.L418
 1641              	.L426:
 1642 002a 00BF     		.align	2
 1643              	.L425:
 1644 002c 00000000 		.word	.LANCHOR5
 1645 0030 00000000 		.word	.LANCHOR0
 1646              		.size	sd_mmc_get_capacity, .-sd_mmc_get_capacity
 1647              		.section	.text.sd_mmc_is_write_protected,"ax",%progbits
 1648              		.align	1
 1649              		.p2align 2,,3
 1650              		.global	sd_mmc_is_write_protected
 1651              		.syntax unified
 1652              		.thumb
 1653              		.thumb_func
ARM GAS  /tmp/ccJnwJVi.s 			page 30


 1654              		.fpu softvfp
 1655              		.type	sd_mmc_is_write_protected, %function
 1656              	sd_mmc_is_write_protected:
 1657              		@ args = 0, pretend = 0, frame = 0
 1658              		@ frame_needed = 0, uses_anonymous_args = 0
 1659 0000 08B5     		push	{r3, lr}
 1660 0002 084B     		ldr	r3, .L431
 1661 0004 00EB8000 		add	r0, r0, r0, lsl #2
 1662 0008 03EBC003 		add	r3, r3, r0, lsl #3
 1663 000c 187B     		ldrb	r0, [r3, #12]	@ zero_extendqisi2
 1664 000e FF28     		cmp	r0, #255
 1665 0010 05D0     		beq	.L429
 1666 0012 FFF7FEFF 		bl	digitalRead
 1667 0016 80F00100 		eor	r0, r0, #1
 1668 001a C0B2     		uxtb	r0, r0
 1669 001c 08BD     		pop	{r3, pc}
 1670              	.L429:
 1671 001e 0020     		movs	r0, #0
 1672 0020 08BD     		pop	{r3, pc}
 1673              	.L432:
 1674 0022 00BF     		.align	2
 1675              	.L431:
 1676 0024 00000000 		.word	.LANCHOR4
 1677              		.size	sd_mmc_is_write_protected, .-sd_mmc_is_write_protected
 1678              		.section	.text.sd_mmc_unmount,"ax",%progbits
 1679              		.align	1
 1680              		.p2align 2,,3
 1681              		.global	sd_mmc_unmount
 1682              		.syntax unified
 1683              		.thumb
 1684              		.thumb_func
 1685              		.fpu softvfp
 1686              		.type	sd_mmc_unmount, %function
 1687              	sd_mmc_unmount:
 1688              		@ args = 0, pretend = 0, frame = 0
 1689              		@ frame_needed = 0, uses_anonymous_args = 0
 1690              		@ link register save eliminated.
 1691 0000 034B     		ldr	r3, .L434
 1692 0002 00EB8000 		add	r0, r0, r0, lsl #2
 1693 0006 03EBC003 		add	r3, r3, r0, lsl #3
 1694 000a 0422     		movs	r2, #4
 1695 000c 1A74     		strb	r2, [r3, #16]
 1696 000e 7047     		bx	lr
 1697              	.L435:
 1698              		.align	2
 1699              	.L434:
 1700 0010 00000000 		.word	.LANCHOR4
 1701              		.size	sd_mmc_unmount, .-sd_mmc_unmount
 1702              		.section	.text.sd_mmc_get_interface_speed,"ax",%progbits
 1703              		.align	1
 1704              		.p2align 2,,3
 1705              		.global	sd_mmc_get_interface_speed
 1706              		.syntax unified
 1707              		.thumb
 1708              		.thumb_func
 1709              		.fpu softvfp
 1710              		.type	sd_mmc_get_interface_speed, %function
ARM GAS  /tmp/ccJnwJVi.s 			page 31


 1711              	sd_mmc_get_interface_speed:
 1712              		@ args = 0, pretend = 0, frame = 0
 1713              		@ frame_needed = 0, uses_anonymous_args = 0
 1714              		@ link register save eliminated.
 1715 0000 00EB8000 		add	r0, r0, r0, lsl #2
 1716 0004 024B     		ldr	r3, .L437
 1717 0006 53F83030 		ldr	r3, [r3, r0, lsl #3]
 1718 000a 1B6C     		ldr	r3, [r3, #64]
 1719 000c 1847     		bx	r3
 1720              	.L438:
 1721 000e 00BF     		.align	2
 1722              	.L437:
 1723 0010 00000000 		.word	.LANCHOR4
 1724              		.size	sd_mmc_get_interface_speed, .-sd_mmc_get_interface_speed
 1725              		.section	.text.sd_mmc_init_read_blocks,"ax",%progbits
 1726              		.align	1
 1727              		.p2align 2,,3
 1728              		.global	sd_mmc_init_read_blocks
 1729              		.syntax unified
 1730              		.thumb
 1731              		.thumb_func
 1732              		.fpu softvfp
 1733              		.type	sd_mmc_init_read_blocks, %function
 1734              	sd_mmc_init_read_blocks:
 1735              		@ args = 0, pretend = 0, frame = 0
 1736              		@ frame_needed = 0, uses_anonymous_args = 0
 1737 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1738 0002 0128     		cmp	r0, #1
 1739 0004 83B0     		sub	sp, sp, #12
 1740 0006 03D9     		bls	.L456
 1741 0008 0424     		movs	r4, #4
 1742              	.L440:
 1743 000a 2046     		mov	r0, r4
 1744 000c 03B0     		add	sp, sp, #12
 1745              		@ sp needed
 1746 000e F0BD     		pop	{r4, r5, r6, r7, pc}
 1747              	.L456:
 1748 0010 0E46     		mov	r6, r1
 1749 0012 1546     		mov	r5, r2
 1750 0014 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1751 0018 0446     		mov	r4, r0
 1752 001a 0028     		cmp	r0, #0
 1753 001c F5D1     		bne	.L440
 1754 001e FFF7FEFF 		bl	sd_mmc_cmd13
 1755 0022 28B3     		cbz	r0, .L454
 1756 0024 184F     		ldr	r7, .L459
 1757 0026 1949     		ldr	r1, .L459+4
 1758 0028 3B68     		ldr	r3, [r7]
 1759 002a 1948     		ldr	r0, .L459+8
 1760 002c 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1761 002e 1B68     		ldr	r3, [r3]
 1762 0030 012D     		cmp	r5, #1
 1763 0032 98BF     		it	ls
 1764 0034 0846     		movls	r0, r1
 1765 0036 1207     		lsls	r2, r2, #28
 1766 0038 4FF00102 		mov	r2, #1
 1767 003c 58BF     		it	pl
ARM GAS  /tmp/ccJnwJVi.s 			page 32


 1768 003e 7602     		lslpl	r6, r6, #9
 1769 0040 0092     		str	r2, [sp]
 1770 0042 3146     		mov	r1, r6
 1771 0044 4FF40072 		mov	r2, #512
 1772 0048 1E6A     		ldr	r6, [r3, #32]
 1773 004a 2B46     		mov	r3, r5
 1774 004c B047     		blx	r6
 1775 004e 78B1     		cbz	r0, .L454
 1776 0050 3B68     		ldr	r3, [r7]
 1777 0052 1B68     		ldr	r3, [r3]
 1778 0054 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 1779 0058 22B1     		cbz	r2, .L457
 1780              	.L447:
 1781 005a 0E4A     		ldr	r2, .L459+12
 1782 005c 0E4B     		ldr	r3, .L459+16
 1783 005e 1580     		strh	r5, [r2]	@ movhi
 1784 0060 1D80     		strh	r5, [r3]	@ movhi
 1785 0062 D2E7     		b	.L440
 1786              	.L457:
 1787 0064 9B69     		ldr	r3, [r3, #24]
 1788 0066 9847     		blx	r3
 1789 0068 0C4B     		ldr	r3, .L459+20
 1790 006a 0340     		ands	r3, r3, r0
 1791 006c 002B     		cmp	r3, #0
 1792 006e F4D0     		beq	.L447
 1793              	.L454:
 1794 0070 0B4B     		ldr	r3, .L459+24
 1795 0072 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1796 0074 012B     		cmp	r3, #1
 1797 0076 03D9     		bls	.L458
 1798              	.L455:
 1799 0078 0524     		movs	r4, #5
 1800 007a 2046     		mov	r0, r4
 1801 007c 03B0     		add	sp, sp, #12
 1802              		@ sp needed
 1803 007e F0BD     		pop	{r4, r5, r6, r7, pc}
 1804              	.L458:
 1805 0080 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1806 0084 F8E7     		b	.L455
 1807              	.L460:
 1808 0086 00BF     		.align	2
 1809              	.L459:
 1810 0088 00000000 		.word	.LANCHOR0
 1811 008c 11110800 		.word	528657
 1812 0090 12111000 		.word	1052946
 1813 0094 00000000 		.word	.LANCHOR8
 1814 0098 00000000 		.word	.LANCHOR9
 1815 009c 000058E4 		.word	-463994880
 1816 00a0 00000000 		.word	.LANCHOR5
 1817              		.size	sd_mmc_init_read_blocks, .-sd_mmc_init_read_blocks
 1818              		.section	.text.sd_mmc_start_read_blocks,"ax",%progbits
 1819              		.align	1
 1820              		.p2align 2,,3
 1821              		.global	sd_mmc_start_read_blocks
 1822              		.syntax unified
 1823              		.thumb
 1824              		.thumb_func
ARM GAS  /tmp/ccJnwJVi.s 			page 33


 1825              		.fpu softvfp
 1826              		.type	sd_mmc_start_read_blocks, %function
 1827              	sd_mmc_start_read_blocks:
 1828              		@ args = 0, pretend = 0, frame = 0
 1829              		@ frame_needed = 0, uses_anonymous_args = 0
 1830 0000 094B     		ldr	r3, .L465
 1831 0002 1B68     		ldr	r3, [r3]
 1832 0004 1B68     		ldr	r3, [r3]
 1833 0006 10B5     		push	{r4, lr}
 1834 0008 1B6B     		ldr	r3, [r3, #48]
 1835 000a 0C46     		mov	r4, r1
 1836 000c 9847     		blx	r3
 1837 000e 20B9     		cbnz	r0, .L462
 1838 0010 064A     		ldr	r2, .L465+4
 1839 0012 0346     		mov	r3, r0
 1840 0014 1380     		strh	r3, [r2]	@ movhi
 1841 0016 0520     		movs	r0, #5
 1842 0018 10BD     		pop	{r4, pc}
 1843              	.L462:
 1844 001a 044A     		ldr	r2, .L465+4
 1845 001c 1388     		ldrh	r3, [r2]
 1846 001e 1C1B     		subs	r4, r3, r4
 1847 0020 1480     		strh	r4, [r2]	@ movhi
 1848 0022 0020     		movs	r0, #0
 1849 0024 10BD     		pop	{r4, pc}
 1850              	.L466:
 1851 0026 00BF     		.align	2
 1852              	.L465:
 1853 0028 00000000 		.word	.LANCHOR0
 1854 002c 00000000 		.word	.LANCHOR8
 1855              		.size	sd_mmc_start_read_blocks, .-sd_mmc_start_read_blocks
 1856              		.section	.text.sd_mmc_wait_end_of_read_blocks,"ax",%progbits
 1857              		.align	1
 1858              		.p2align 2,,3
 1859              		.global	sd_mmc_wait_end_of_read_blocks
 1860              		.syntax unified
 1861              		.thumb
 1862              		.thumb_func
 1863              		.fpu softvfp
 1864              		.type	sd_mmc_wait_end_of_read_blocks, %function
 1865              	sd_mmc_wait_end_of_read_blocks:
 1866              		@ args = 0, pretend = 0, frame = 0
 1867              		@ frame_needed = 0, uses_anonymous_args = 0
 1868 0000 38B5     		push	{r3, r4, r5, lr}
 1869 0002 164C     		ldr	r4, .L487
 1870 0004 2368     		ldr	r3, [r4]
 1871 0006 1B68     		ldr	r3, [r3]
 1872 0008 5B6B     		ldr	r3, [r3, #52]
 1873 000a 0546     		mov	r5, r0
 1874 000c 9847     		blx	r3
 1875 000e 08B9     		cbnz	r0, .L483
 1876 0010 0520     		movs	r0, #5
 1877 0012 38BD     		pop	{r3, r4, r5, pc}
 1878              	.L483:
 1879 0014 124B     		ldr	r3, .L487+4
 1880 0016 9DB9     		cbnz	r5, .L484
 1881 0018 1B88     		ldrh	r3, [r3]
ARM GAS  /tmp/ccJnwJVi.s 			page 34


 1882 001a 7BB9     		cbnz	r3, .L482
 1883              	.L470:
 1884 001c 114B     		ldr	r3, .L487+8
 1885 001e 1B88     		ldrh	r3, [r3]
 1886 0020 012B     		cmp	r3, #1
 1887 0022 07D0     		beq	.L481
 1888 0024 2368     		ldr	r3, [r4]
 1889 0026 1B68     		ldr	r3, [r3]
 1890 0028 0021     		movs	r1, #0
 1891 002a 5B6A     		ldr	r3, [r3, #36]
 1892 002c 43F20C10 		movw	r0, #12556
 1893 0030 9847     		blx	r3
 1894 0032 58B1     		cbz	r0, .L485
 1895              	.L481:
 1896 0034 0C4B     		ldr	r3, .L487+12
 1897 0036 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1898 0038 012B     		cmp	r3, #1
 1899 003a 04D9     		bls	.L486
 1900              	.L482:
 1901 003c 0020     		movs	r0, #0
 1902 003e 38BD     		pop	{r3, r4, r5, pc}
 1903              	.L484:
 1904 0040 0022     		movs	r2, #0
 1905 0042 1A80     		strh	r2, [r3]	@ movhi
 1906 0044 EAE7     		b	.L470
 1907              	.L486:
 1908 0046 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1909 004a F7E7     		b	.L482
 1910              	.L485:
 1911 004c 2368     		ldr	r3, [r4]
 1912 004e 1B68     		ldr	r3, [r3]
 1913 0050 0146     		mov	r1, r0
 1914 0052 5B6A     		ldr	r3, [r3, #36]
 1915 0054 43F20C10 		movw	r0, #12556
 1916 0058 9847     		blx	r3
 1917 005a EBE7     		b	.L481
 1918              	.L488:
 1919              		.align	2
 1920              	.L487:
 1921 005c 00000000 		.word	.LANCHOR0
 1922 0060 00000000 		.word	.LANCHOR8
 1923 0064 00000000 		.word	.LANCHOR9
 1924 0068 00000000 		.word	.LANCHOR5
 1925              		.size	sd_mmc_wait_end_of_read_blocks, .-sd_mmc_wait_end_of_read_blocks
 1926              		.section	.text.sd_mmc_init_write_blocks,"ax",%progbits
 1927              		.align	1
 1928              		.p2align 2,,3
 1929              		.global	sd_mmc_init_write_blocks
 1930              		.syntax unified
 1931              		.thumb
 1932              		.thumb_func
 1933              		.fpu softvfp
 1934              		.type	sd_mmc_init_write_blocks, %function
 1935              	sd_mmc_init_write_blocks:
 1936              		@ args = 0, pretend = 0, frame = 0
 1937              		@ frame_needed = 0, uses_anonymous_args = 0
 1938 0000 F0B5     		push	{r4, r5, r6, r7, lr}
ARM GAS  /tmp/ccJnwJVi.s 			page 35


 1939 0002 0128     		cmp	r0, #1
 1940 0004 83B0     		sub	sp, sp, #12
 1941 0006 03D9     		bls	.L516
 1942 0008 0425     		movs	r5, #4
 1943              	.L502:
 1944 000a 2846     		mov	r0, r5
 1945 000c 03B0     		add	sp, sp, #12
 1946              		@ sp needed
 1947 000e F0BD     		pop	{r4, r5, r6, r7, pc}
 1948              	.L516:
 1949 0010 0446     		mov	r4, r0
 1950 0012 0F46     		mov	r7, r1
 1951 0014 1646     		mov	r6, r2
 1952 0016 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1953 001a 0546     		mov	r5, r0
 1954 001c 0028     		cmp	r0, #0
 1955 001e F4D1     		bne	.L502
 1956 0020 244B     		ldr	r3, .L519
 1957 0022 04EB8404 		add	r4, r4, r4, lsl #2
 1958 0026 03EBC404 		add	r4, r3, r4, lsl #3
 1959 002a 207B     		ldrb	r0, [r4, #12]	@ zero_extendqisi2
 1960 002c FF28     		cmp	r0, #255
 1961 002e 0AD0     		beq	.L491
 1962 0030 FFF7FEFF 		bl	digitalRead
 1963 0034 38B9     		cbnz	r0, .L491
 1964 0036 204B     		ldr	r3, .L519+4
 1965 0038 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1966 003a 012B     		cmp	r3, #1
 1967 003c 32D9     		bls	.L498
 1968 003e 0725     		movs	r5, #7
 1969 0040 2846     		mov	r0, r5
 1970 0042 03B0     		add	sp, sp, #12
 1971              		@ sp needed
 1972 0044 F0BD     		pop	{r4, r5, r6, r7, pc}
 1973              	.L491:
 1974 0046 1D4C     		ldr	r4, .L519+8
 1975 0048 1D48     		ldr	r0, .L519+12
 1976 004a 2368     		ldr	r3, [r4]
 1977 004c 1D49     		ldr	r1, .L519+16
 1978 004e 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1979 0050 012E     		cmp	r6, #1
 1980 0052 98BF     		it	ls
 1981 0054 0846     		movls	r0, r1
 1982 0056 1207     		lsls	r2, r2, #28
 1983 0058 00D4     		bmi	.L493
 1984 005a 7F02     		lsls	r7, r7, #9
 1985              	.L493:
 1986 005c 1B68     		ldr	r3, [r3]
 1987 005e 0122     		movs	r2, #1
 1988 0060 0092     		str	r2, [sp]
 1989 0062 3946     		mov	r1, r7
 1990 0064 4FF40072 		mov	r2, #512
 1991 0068 1F6A     		ldr	r7, [r3, #32]
 1992 006a 3346     		mov	r3, r6
 1993 006c B847     		blx	r7
 1994 006e 88B1     		cbz	r0, .L512
 1995 0070 2368     		ldr	r3, [r4]
ARM GAS  /tmp/ccJnwJVi.s 			page 36


 1996 0072 1B68     		ldr	r3, [r3]
 1997 0074 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 1998 0078 32B1     		cbz	r2, .L517
 1999              	.L496:
 2000 007a 134A     		ldr	r2, .L519+20
 2001 007c 134B     		ldr	r3, .L519+24
 2002 007e 1680     		strh	r6, [r2]	@ movhi
 2003 0080 2846     		mov	r0, r5
 2004 0082 1E80     		strh	r6, [r3]	@ movhi
 2005 0084 03B0     		add	sp, sp, #12
 2006              		@ sp needed
 2007 0086 F0BD     		pop	{r4, r5, r6, r7, pc}
 2008              	.L517:
 2009 0088 9B69     		ldr	r3, [r3, #24]
 2010 008a 9847     		blx	r3
 2011 008c 104B     		ldr	r3, .L519+28
 2012 008e 0340     		ands	r3, r3, r0
 2013 0090 002B     		cmp	r3, #0
 2014 0092 F2D0     		beq	.L496
 2015              	.L512:
 2016 0094 084B     		ldr	r3, .L519+4
 2017 0096 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2018 0098 012B     		cmp	r3, #1
 2019 009a 07D9     		bls	.L518
 2020              	.L513:
 2021 009c 0525     		movs	r5, #5
 2022 009e 2846     		mov	r0, r5
 2023 00a0 03B0     		add	sp, sp, #12
 2024              		@ sp needed
 2025 00a2 F0BD     		pop	{r4, r5, r6, r7, pc}
 2026              	.L498:
 2027 00a4 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2028 00a8 0725     		movs	r5, #7
 2029 00aa AEE7     		b	.L502
 2030              	.L518:
 2031 00ac FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2032 00b0 F4E7     		b	.L513
 2033              	.L520:
 2034 00b2 00BF     		.align	2
 2035              	.L519:
 2036 00b4 00000000 		.word	.LANCHOR4
 2037 00b8 00000000 		.word	.LANCHOR5
 2038 00bc 00000000 		.word	.LANCHOR0
 2039 00c0 19911000 		.word	1085721
 2040 00c4 18910800 		.word	561432
 2041 00c8 00000000 		.word	.LANCHOR8
 2042 00cc 00000000 		.word	.LANCHOR9
 2043 00d0 000058E4 		.word	-463994880
 2044              		.size	sd_mmc_init_write_blocks, .-sd_mmc_init_write_blocks
 2045              		.section	.text.sd_mmc_start_write_blocks,"ax",%progbits
 2046              		.align	1
 2047              		.p2align 2,,3
 2048              		.global	sd_mmc_start_write_blocks
 2049              		.syntax unified
 2050              		.thumb
 2051              		.thumb_func
 2052              		.fpu softvfp
ARM GAS  /tmp/ccJnwJVi.s 			page 37


 2053              		.type	sd_mmc_start_write_blocks, %function
 2054              	sd_mmc_start_write_blocks:
 2055              		@ args = 0, pretend = 0, frame = 0
 2056              		@ frame_needed = 0, uses_anonymous_args = 0
 2057 0000 094B     		ldr	r3, .L525
 2058 0002 1B68     		ldr	r3, [r3]
 2059 0004 1B68     		ldr	r3, [r3]
 2060 0006 10B5     		push	{r4, lr}
 2061 0008 9B6B     		ldr	r3, [r3, #56]
 2062 000a 0C46     		mov	r4, r1
 2063 000c 9847     		blx	r3
 2064 000e 20B9     		cbnz	r0, .L522
 2065 0010 064A     		ldr	r2, .L525+4
 2066 0012 0346     		mov	r3, r0
 2067 0014 1380     		strh	r3, [r2]	@ movhi
 2068 0016 0520     		movs	r0, #5
 2069 0018 10BD     		pop	{r4, pc}
 2070              	.L522:
 2071 001a 044A     		ldr	r2, .L525+4
 2072 001c 1388     		ldrh	r3, [r2]
 2073 001e 1C1B     		subs	r4, r3, r4
 2074 0020 1480     		strh	r4, [r2]	@ movhi
 2075 0022 0020     		movs	r0, #0
 2076 0024 10BD     		pop	{r4, pc}
 2077              	.L526:
 2078 0026 00BF     		.align	2
 2079              	.L525:
 2080 0028 00000000 		.word	.LANCHOR0
 2081 002c 00000000 		.word	.LANCHOR8
 2082              		.size	sd_mmc_start_write_blocks, .-sd_mmc_start_write_blocks
 2083              		.section	.text.sd_mmc_wait_end_of_write_blocks,"ax",%progbits
 2084              		.align	1
 2085              		.p2align 2,,3
 2086              		.global	sd_mmc_wait_end_of_write_blocks
 2087              		.syntax unified
 2088              		.thumb
 2089              		.thumb_func
 2090              		.fpu softvfp
 2091              		.type	sd_mmc_wait_end_of_write_blocks, %function
 2092              	sd_mmc_wait_end_of_write_blocks:
 2093              		@ args = 0, pretend = 0, frame = 0
 2094              		@ frame_needed = 0, uses_anonymous_args = 0
 2095 0000 38B5     		push	{r3, r4, r5, lr}
 2096 0002 174C     		ldr	r4, .L549
 2097 0004 2368     		ldr	r3, [r4]
 2098 0006 1B68     		ldr	r3, [r3]
 2099 0008 DB6B     		ldr	r3, [r3, #60]
 2100 000a 0546     		mov	r5, r0
 2101 000c 9847     		blx	r3
 2102 000e 08B9     		cbnz	r0, .L545
 2103              	.L543:
 2104 0010 0520     		movs	r0, #5
 2105 0012 38BD     		pop	{r3, r4, r5, pc}
 2106              	.L545:
 2107 0014 134B     		ldr	r3, .L549+4
 2108 0016 85B9     		cbnz	r5, .L546
 2109 0018 1B88     		ldrh	r3, [r3]
ARM GAS  /tmp/ccJnwJVi.s 			page 38


 2110 001a 63B9     		cbnz	r3, .L544
 2111              	.L531:
 2112 001c 124B     		ldr	r3, .L549+8
 2113 001e 1B88     		ldrh	r3, [r3]
 2114 0020 012B     		cmp	r3, #1
 2115 0022 04D0     		beq	.L542
 2116 0024 2368     		ldr	r3, [r4]
 2117 0026 1B68     		ldr	r3, [r3]
 2118 0028 93F84810 		ldrb	r1, [r3, #72]	@ zero_extendqisi2
 2119 002c 41B1     		cbz	r1, .L547
 2120              	.L542:
 2121 002e 0F4B     		ldr	r3, .L549+12
 2122 0030 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2123 0032 012B     		cmp	r3, #1
 2124 0034 11D9     		bls	.L548
 2125              	.L544:
 2126 0036 0020     		movs	r0, #0
 2127 0038 38BD     		pop	{r3, r4, r5, pc}
 2128              	.L546:
 2129 003a 0022     		movs	r2, #0
 2130 003c 1A80     		strh	r2, [r3]	@ movhi
 2131 003e EDE7     		b	.L531
 2132              	.L547:
 2133 0040 5B6A     		ldr	r3, [r3, #36]
 2134 0042 43F20C10 		movw	r0, #12556
 2135 0046 9847     		blx	r3
 2136 0048 0028     		cmp	r0, #0
 2137 004a F0D1     		bne	.L542
 2138 004c 074B     		ldr	r3, .L549+12
 2139 004e 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2140 0050 012B     		cmp	r3, #1
 2141 0052 DDD8     		bhi	.L543
 2142 0054 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2143 0058 DAE7     		b	.L543
 2144              	.L548:
 2145 005a FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2146 005e EAE7     		b	.L544
 2147              	.L550:
 2148              		.align	2
 2149              	.L549:
 2150 0060 00000000 		.word	.LANCHOR0
 2151 0064 00000000 		.word	.LANCHOR8
 2152 0068 00000000 		.word	.LANCHOR9
 2153 006c 00000000 		.word	.LANCHOR5
 2154              		.size	sd_mmc_wait_end_of_write_blocks, .-sd_mmc_wait_end_of_write_blocks
 2155              		.global	mmc_trans_multipliers
 2156              		.global	sd_trans_multipliers
 2157              		.global	sd_mmc_trans_units
 2158              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 2159              		.align	2
 2160              		.type	cpu_irq_critical_section_counter, %object
 2161              		.size	cpu_irq_critical_section_counter, 4
 2162              	cpu_irq_critical_section_counter:
 2163 0000 00000000 		.space	4
 2164              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 2165              		.type	cpu_irq_prev_interrupt_state, %object
 2166              		.size	cpu_irq_prev_interrupt_state, 1
ARM GAS  /tmp/ccJnwJVi.s 			page 39


 2167              	cpu_irq_prev_interrupt_state:
 2168 0000 00       		.space	1
 2169              		.section	.bss.sd_mmc_card,"aw",%nobits
 2170              		.align	2
 2171              		.set	.LANCHOR0,. + 0
 2172              		.type	sd_mmc_card, %object
 2173              		.size	sd_mmc_card, 4
 2174              	sd_mmc_card:
 2175 0000 00000000 		.space	4
 2176              		.section	.bss.sd_mmc_cards,"aw",%nobits
 2177              		.align	2
 2178              		.set	.LANCHOR4,. + 0
 2179              		.type	sd_mmc_cards, %object
 2180              		.size	sd_mmc_cards, 80
 2181              	sd_mmc_cards:
 2182 0000 00000000 		.space	80
 2182      00000000 
 2182      00000000 
 2182      00000000 
 2182      00000000 
 2183              		.section	.bss.sd_mmc_nb_block_remaining,"aw",%nobits
 2184              		.align	1
 2185              		.set	.LANCHOR8,. + 0
 2186              		.type	sd_mmc_nb_block_remaining, %object
 2187              		.size	sd_mmc_nb_block_remaining, 2
 2188              	sd_mmc_nb_block_remaining:
 2189 0000 0000     		.space	2
 2190              		.section	.bss.sd_mmc_nb_block_to_tranfer,"aw",%nobits
 2191              		.align	1
 2192              		.set	.LANCHOR9,. + 0
 2193              		.type	sd_mmc_nb_block_to_tranfer, %object
 2194              		.size	sd_mmc_nb_block_to_tranfer, 2
 2195              	sd_mmc_nb_block_to_tranfer:
 2196 0000 0000     		.space	2
 2197              		.section	.bss.sd_mmc_slot_sel,"aw",%nobits
 2198              		.set	.LANCHOR5,. + 0
 2199              		.type	sd_mmc_slot_sel, %object
 2200              		.size	sd_mmc_slot_sel, 1
 2201              	sd_mmc_slot_sel:
 2202 0000 00       		.space	1
 2203              		.section	.rodata.hsmciInterface,"a",%progbits
 2204              		.align	2
 2205              		.set	.LANCHOR6,. + 0
 2206              		.type	hsmciInterface, %object
 2207              		.size	hsmciInterface, 76
 2208              	hsmciInterface:
 2209 0000 00000000 		.word	hsmci_select_device
 2210 0004 00000000 		.word	hsmci_deselect_device
 2211 0008 00000000 		.word	hsmci_get_bus_width
 2212 000c 00000000 		.word	hsmci_is_high_speed_capable
 2213 0010 00000000 		.word	hsmci_send_clock
 2214 0014 00000000 		.word	hsmci_send_cmd
 2215 0018 00000000 		.word	hsmci_get_response
 2216 001c 00000000 		.word	hsmci_get_response_128
 2217 0020 00000000 		.word	hsmci_adtc_start
 2218 0024 00000000 		.word	hsmci_send_cmd
 2219 0028 00000000 		.word	hsmci_read_word
ARM GAS  /tmp/ccJnwJVi.s 			page 40


 2220 002c 00000000 		.word	hsmci_write_word
 2221 0030 00000000 		.word	hsmci_start_read_blocks
 2222 0034 00000000 		.word	hsmci_wait_end_of_read_blocks
 2223 0038 00000000 		.word	hsmci_start_write_blocks
 2224 003c 00000000 		.word	hsmci_wait_end_of_write_blocks
 2225 0040 00000000 		.word	hsmci_get_speed
 2226 0044 00000000 		.word	hsmci_set_idle_func
 2227 0048 00       		.byte	0
 2228 0049 000000   		.space	3
 2229              		.section	.rodata.mmc_trans_multipliers,"a",%progbits
 2230              		.align	2
 2231              		.set	.LANCHOR1,. + 0
 2232              		.type	mmc_trans_multipliers, %object
 2233              		.size	mmc_trans_multipliers, 64
 2234              	mmc_trans_multipliers:
 2235 0000 00000000 		.word	0
 2236 0004 0A000000 		.word	10
 2237 0008 0C000000 		.word	12
 2238 000c 0D000000 		.word	13
 2239 0010 0F000000 		.word	15
 2240 0014 14000000 		.word	20
 2241 0018 1A000000 		.word	26
 2242 001c 1E000000 		.word	30
 2243 0020 23000000 		.word	35
 2244 0024 28000000 		.word	40
 2245 0028 2D000000 		.word	45
 2246 002c 34000000 		.word	52
 2247 0030 37000000 		.word	55
 2248 0034 3C000000 		.word	60
 2249 0038 46000000 		.word	70
 2250 003c 50000000 		.word	80
 2251              		.section	.rodata.sd_mmc_trans_units,"a",%progbits
 2252              		.align	2
 2253              		.set	.LANCHOR2,. + 0
 2254              		.type	sd_mmc_trans_units, %object
 2255              		.size	sd_mmc_trans_units, 28
 2256              	sd_mmc_trans_units:
 2257 0000 0A000000 		.word	10
 2258 0004 64000000 		.word	100
 2259 0008 E8030000 		.word	1000
 2260 000c 10270000 		.word	10000
 2261 0010 00000000 		.word	0
 2262 0014 00000000 		.word	0
 2263 0018 00000000 		.word	0
 2264              		.section	.rodata.sd_trans_multipliers,"a",%progbits
 2265              		.align	2
 2266              		.set	.LANCHOR3,. + 0
 2267              		.type	sd_trans_multipliers, %object
 2268              		.size	sd_trans_multipliers, 64
 2269              	sd_trans_multipliers:
 2270 0000 00000000 		.word	0
 2271 0004 0A000000 		.word	10
 2272 0008 0C000000 		.word	12
 2273 000c 0D000000 		.word	13
 2274 0010 0F000000 		.word	15
 2275 0014 14000000 		.word	20
 2276 0018 19000000 		.word	25
ARM GAS  /tmp/ccJnwJVi.s 			page 41


 2277 001c 1E000000 		.word	30
 2278 0020 23000000 		.word	35
 2279 0024 28000000 		.word	40
 2280 0028 2D000000 		.word	45
 2281 002c 32000000 		.word	50
 2282 0030 37000000 		.word	55
 2283 0034 3C000000 		.word	60
 2284 0038 46000000 		.word	70
 2285 003c 50000000 		.word	80
 2286              		.section	.rodata.spiInterface,"a",%progbits
 2287              		.align	2
 2288              		.set	.LANCHOR7,. + 0
 2289              		.type	spiInterface, %object
 2290              		.size	spiInterface, 76
 2291              	spiInterface:
 2292 0000 00000000 		.word	sd_mmc_spi_select_device
 2293 0004 00000000 		.word	sd_mmc_spi_deselect_device
 2294 0008 00000000 		.word	sd_mmc_spi_get_bus_width
 2295 000c 00000000 		.word	sd_mmc_spi_is_high_speed_capable
 2296 0010 00000000 		.word	sd_mmc_spi_send_clock
 2297 0014 00000000 		.word	sd_mmc_spi_send_cmd
 2298 0018 00000000 		.word	sd_mmc_spi_get_response
 2299 001c 00000000 		.word	sd_mmc_spi_get_response_128
 2300 0020 00000000 		.word	sd_mmc_spi_adtc_start
 2301 0024 00000000 		.word	sd_mmc_spi_send_cmd
 2302 0028 00000000 		.word	sd_mmc_spi_read_word
 2303 002c 00000000 		.word	sd_mmc_spi_write_word
 2304 0030 00000000 		.word	sd_mmc_spi_start_read_blocks
 2305 0034 00000000 		.word	sd_mmc_spi_wait_end_of_read_blocks
 2306 0038 00000000 		.word	sd_mmc_spi_start_write_blocks
 2307 003c 00000000 		.word	sd_mmc_spi_wait_end_of_write_blocks
 2308 0040 00000000 		.word	spi_mmc_get_speed
 2309 0044 00000000 		.word	sd_mmc_spi_set_idle_func
 2310 0048 01       		.byte	1
 2311 0049 000000   		.space	3
 2312              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
