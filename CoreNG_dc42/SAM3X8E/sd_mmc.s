ARM GAS  /tmp/ccwSpz6b.s 			page 1


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
ARM GAS  /tmp/ccwSpz6b.s 			page 2


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
  68 0000 30B4     		push	{r4, r5}
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
  87 001e 4FF47A71 		mov	r1, #1000
  88 0022 40F6FF70 		movw	r0, #4095
  89 0026 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
  90 0028 1D4C     		ldr	r4, .L15+4
  91 002a 03F00705 		and	r5, r3, #7
  92 002e 54F82550 		ldr	r5, [r4, r5, lsl #2]
  93 0032 1C4C     		ldr	r4, .L15+8
  94 0034 01FB05F1 		mul	r1, r1, r5
  95 0038 C3F3C303 		ubfx	r3, r3, #3, #4
  96 003c 54F82340 		ldr	r4, [r4, r3, lsl #2]
  97 0040 D37E     		ldrb	r3, [r2, #27]	@ zero_extendqisi2
  98 0042 157F     		ldrb	r5, [r2, #28]	@ zero_extendqisi2
  99 0044 01FB04F1 		mul	r1, r1, r4
 100 0048 9B02     		lsls	r3, r3, #10
 101 004a 547F     		ldrb	r4, [r2, #29]	@ zero_extendqisi2
 102 004c 43EA8503 		orr	r3, r3, r5, lsl #2
 103 0050 43EA9413 		orr	r3, r3, r4, lsr #6
 104 0054 C3F30B03 		ubfx	r3, r3, #0, #12
 105 0058 8342     		cmp	r3, r0
 106 005a 5160     		str	r1, [r2, #4]
 107 005c 0FD0     		beq	.L4
 108 005e 917F     		ldrb	r1, [r2, #30]	@ zero_extendqisi2
 109 0060 D07F     		ldrb	r0, [r2, #31]	@ zero_extendqisi2
 110 0062 4900     		lsls	r1, r1, #1
 111 0064 41EAD011 		orr	r1, r1, r0, lsr #7
 112 0068 01F00701 		and	r1, r1, #7
 113 006c 907E     		ldrb	r0, [r2, #26]	@ zero_extendqisi2
 114 006e 0231     		adds	r1, r1, #2
ARM GAS  /tmp/ccwSpz6b.s 			page 3


 115 0070 0133     		adds	r3, r3, #1
 116 0072 8B40     		lsls	r3, r3, r1
 117 0074 00F00F01 		and	r1, r0, #15
 118 0078 8B40     		lsls	r3, r3, r1
 119 007a 9B0A     		lsrs	r3, r3, #10
 120 007c 9360     		str	r3, [r2, #8]
 121              	.L4:
 122 007e 30BC     		pop	{r4, r5}
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
 159 0000 4FF47A73 		mov	r3, #1000
 160 0004 70B4     		push	{r4, r5, r6}
 161 0006 1F4A     		ldr	r2, .L22
 162 0008 1F4D     		ldr	r5, .L22+4
 163 000a 1268     		ldr	r2, [r2]
 164 000c 1F4C     		ldr	r4, .L22+8
 165 000e 117E     		ldrb	r1, [r2, #24]	@ zero_extendqisi2
 166 0010 507D     		ldrb	r0, [r2, #21]	@ zero_extendqisi2
 167 0012 01F00706 		and	r6, r1, #7
 168 0016 55F82650 		ldr	r5, [r5, r6, lsl #2]
 169 001a C1F3C301 		ubfx	r1, r1, #3, #4
 170 001e 03FB05F3 		mul	r3, r3, r5
 171 0022 54F82110 		ldr	r1, [r4, r1, lsl #2]
ARM GAS  /tmp/ccwSpz6b.s 			page 4


 172 0026 03FB01F3 		mul	r3, r3, r1
 173 002a 5360     		str	r3, [r2, #4]
 174 002c 8309     		lsrs	r3, r0, #6
 175 002e 1BD1     		bne	.L21
 176 0030 D37E     		ldrb	r3, [r2, #27]	@ zero_extendqisi2
 177 0032 157F     		ldrb	r5, [r2, #28]	@ zero_extendqisi2
 178 0034 917F     		ldrb	r1, [r2, #30]	@ zero_extendqisi2
 179 0036 547F     		ldrb	r4, [r2, #29]	@ zero_extendqisi2
 180 0038 D07F     		ldrb	r0, [r2, #31]	@ zero_extendqisi2
 181 003a 9B02     		lsls	r3, r3, #10
 182 003c 43EA8503 		orr	r3, r3, r5, lsl #2
 183 0040 4900     		lsls	r1, r1, #1
 184 0042 43EA9413 		orr	r3, r3, r4, lsr #6
 185 0046 41EAD011 		orr	r1, r1, r0, lsr #7
 186 004a C3F30B03 		ubfx	r3, r3, #0, #12
 187 004e 01F00701 		and	r1, r1, #7
 188 0052 907E     		ldrb	r0, [r2, #26]	@ zero_extendqisi2
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
 201 006c 1B04     		lsls	r3, r3, #16
 202 006e 917F     		ldrb	r1, [r2, #30]	@ zero_extendqisi2
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
ARM GAS  /tmp/ccwSpz6b.s 			page 5


 229 0000 38B5     		push	{r3, r4, r5, lr}
 230 0002 144C     		ldr	r4, .L43
 231 0004 144D     		ldr	r5, .L43+4
 232 0006 0EE0     		b	.L30
 233              	.L42:
 234 0008 5B69     		ldr	r3, [r3, #20]
 235 000a 0021     		movs	r1, #0
 236 000c 41F60D30 		movw	r0, #6925
 237 0010 9847     		blx	r3
 238 0012 E8B1     		cbz	r0, .L29
 239 0014 2B68     		ldr	r3, [r5]
 240 0016 1B68     		ldr	r3, [r3]
 241 0018 9B69     		ldr	r3, [r3, #24]
 242 001a 9847     		blx	r3
 243 001c 10F0FF0F 		tst	r0, #255
 244 0020 14D0     		beq	.L28
 245              	.L31:
 246 0022 013C     		subs	r4, r4, #1
 247 0024 14D0     		beq	.L29
 248              	.L30:
 249 0026 2A68     		ldr	r2, [r5]
 250 0028 1368     		ldr	r3, [r2]
 251 002a 93F84810 		ldrb	r1, [r3, #72]	@ zero_extendqisi2
 252 002e 0029     		cmp	r1, #0
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
 265 004a EAD5     		bpl	.L31
 266              	.L28:
 267 004c 0120     		movs	r0, #1
 268 004e 38BD     		pop	{r3, r4, r5, pc}
 269              	.L29:
 270 0050 0020     		movs	r0, #0
 271 0052 38BD     		pop	{r3, r4, r5, pc}
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
ARM GAS  /tmp/ccwSpz6b.s 			page 6


 286              	sd_cmd8:
 287              		@ args = 0, pretend = 0, frame = 0
 288              		@ frame_needed = 0, uses_anonymous_args = 0
 289 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 290 0002 0026     		movs	r6, #0
 291 0004 0F4D     		ldr	r5, .L54
 292 0006 0670     		strb	r6, [r0]
 293 0008 2B68     		ldr	r3, [r5]
 294 000a 0746     		mov	r7, r0
 295 000c 1B68     		ldr	r3, [r3]
 296 000e 4FF4D571 		mov	r1, #426
 297 0012 45F20850 		movw	r0, #21768
 298 0016 5B69     		ldr	r3, [r3, #20]
 299 0018 9847     		blx	r3
 300 001a 10B9     		cbnz	r0, .L46
 301              	.L48:
 302 001c 0124     		movs	r4, #1
 303 001e 2046     		mov	r0, r4
 304 0020 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 305              	.L46:
 306 0022 2B68     		ldr	r3, [r5]
 307 0024 0446     		mov	r4, r0
 308 0026 1B68     		ldr	r3, [r3]
 309 0028 9B69     		ldr	r3, [r3, #24]
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
 337 0000 0023     		movs	r3, #0
 338 0002 70B5     		push	{r4, r5, r6, lr}
 339 0004 294D     		ldr	r5, .L85
 340 0006 84B0     		sub	sp, sp, #16
 341 0008 2A68     		ldr	r2, [r5]
 342 000a 0646     		mov	r6, r0
ARM GAS  /tmp/ccwSpz6b.s 			page 7


 343 000c 1268     		ldr	r2, [r2]
 344 000e 0093     		str	r3, [sp]
 345 0010 1946     		mov	r1, r3
 346 0012 146A     		ldr	r4, [r2, #32]
 347 0014 0123     		movs	r3, #1
 348 0016 4FF40072 		mov	r2, #512
 349 001a 2548     		ldr	r0, .L85+4
 350 001c A047     		blx	r4
 351 001e 60B1     		cbz	r0, .L57
 352 0020 3224     		movs	r4, #50
 353 0022 00E0     		b	.L60
 354              	.L58:
 355 0024 5CB1     		cbz	r4, .L81
 356              	.L60:
 357 0026 2B68     		ldr	r3, [r5]
 358 0028 02A8     		add	r0, sp, #8
 359 002a 1B68     		ldr	r3, [r3]
 360 002c 013C     		subs	r4, r4, #1
 361 002e 9B6A     		ldr	r3, [r3, #40]
 362 0030 9847     		blx	r3
 363 0032 A4B2     		uxth	r4, r4
 364 0034 0028     		cmp	r0, #0
 365 0036 F5D1     		bne	.L58
 366              	.L62:
 367 0038 0020     		movs	r0, #0
 368              	.L57:
 369 003a 04B0     		add	sp, sp, #16
 370              		@ sp needed
 371 003c 70BD     		pop	{r4, r5, r6, pc}
 372              	.L81:
 373 003e 40F6FF71 		movw	r1, #4095
 374 0042 029A     		ldr	r2, [sp, #8]
 375 0044 2B68     		ldr	r3, [r5]
 376 0046 02F00202 		and	r2, r2, #2
 377 004a 3270     		strb	r2, [r6]
 378 004c DA7E     		ldrb	r2, [r3, #27]	@ zero_extendqisi2
 379 004e 1C7F     		ldrb	r4, [r3, #28]	@ zero_extendqisi2
 380 0050 9202     		lsls	r2, r2, #10
 381 0052 587F     		ldrb	r0, [r3, #29]	@ zero_extendqisi2
 382 0054 42EA8402 		orr	r2, r2, r4, lsl #2
 383 0058 42EA9012 		orr	r2, r2, r0, lsr #6
 384 005c C2F30B02 		ubfx	r2, r2, #0, #12
 385 0060 8A42     		cmp	r2, r1
 386 0062 0ED0     		beq	.L82
 387 0064 3224     		movs	r4, #50
 388 0066 03AE     		add	r6, sp, #12
 389 0068 02E0     		b	.L65
 390              	.L83:
 391 006a 802C     		cmp	r4, #128
 392 006c E5D0     		beq	.L57
 393 006e 2B68     		ldr	r3, [r5]
 394              	.L65:
 395 0070 1B68     		ldr	r3, [r3]
 396 0072 3046     		mov	r0, r6
 397 0074 9B6A     		ldr	r3, [r3, #40]
 398 0076 9847     		blx	r3
 399 0078 0134     		adds	r4, r4, #1
ARM GAS  /tmp/ccwSpz6b.s 			page 8


 400 007a A4B2     		uxth	r4, r4
 401 007c 0028     		cmp	r0, #0
 402 007e F4D1     		bne	.L83
 403 0080 DAE7     		b	.L62
 404              	.L82:
 405 0082 0424     		movs	r4, #4
 406 0084 03AE     		add	r6, sp, #12
 407 0086 00E0     		b	.L64
 408              	.L84:
 409 0088 2B68     		ldr	r3, [r5]
 410              	.L64:
 411 008a 1B68     		ldr	r3, [r3]
 412 008c 3046     		mov	r0, r6
 413 008e 9B6A     		ldr	r3, [r3, #40]
 414 0090 9847     		blx	r3
 415 0092 013C     		subs	r4, r4, #1
 416 0094 A4B2     		uxth	r4, r4
 417 0096 0028     		cmp	r0, #0
 418 0098 CED0     		beq	.L62
 419 009a 002C     		cmp	r4, #0
 420 009c F4D1     		bne	.L84
 421 009e 039A     		ldr	r2, [sp, #12]
 422 00a0 2B68     		ldr	r3, [r5]
 423 00a2 5208     		lsrs	r2, r2, #1
 424 00a4 9A60     		str	r2, [r3, #8]
 425 00a6 3624     		movs	r4, #54
 426 00a8 E2E7     		b	.L65
 427              	.L86:
 428 00aa 00BF     		.align	2
 429              	.L85:
 430 00ac 00000000 		.word	.LANCHOR0
 431 00b0 08110800 		.word	528648
 432              		.size	mmc_cmd8, .-mmc_cmd8
 433              		.section	.text.sd_mmc_cmd9_spi,"ax",%progbits
 434              		.align	1
 435              		.p2align 2,,3
 436              		.syntax unified
 437              		.thumb
 438              		.thumb_func
 439              		.fpu softvfp
 440              		.type	sd_mmc_cmd9_spi, %function
 441              	sd_mmc_cmd9_spi:
 442              		@ args = 0, pretend = 0, frame = 0
 443              		@ frame_needed = 0, uses_anonymous_args = 0
 444 0000 70B5     		push	{r4, r5, r6, lr}
 445 0002 0124     		movs	r4, #1
 446 0004 1022     		movs	r2, #16
 447 0006 0F4D     		ldr	r5, .L96
 448 0008 82B0     		sub	sp, sp, #8
 449 000a 2868     		ldr	r0, [r5]
 450 000c 2346     		mov	r3, r4
 451 000e C189     		ldrh	r1, [r0, #14]
 452 0010 0068     		ldr	r0, [r0]
 453 0012 0094     		str	r4, [sp]
 454 0014 066A     		ldr	r6, [r0, #32]
 455 0016 9140     		lsls	r1, r1, r2
 456 0018 0B48     		ldr	r0, .L96+4
ARM GAS  /tmp/ccwSpz6b.s 			page 9


 457 001a B047     		blx	r6
 458 001c 10B9     		cbnz	r0, .L95
 459              	.L89:
 460 001e 0020     		movs	r0, #0
 461 0020 02B0     		add	sp, sp, #8
 462              		@ sp needed
 463 0022 70BD     		pop	{r4, r5, r6, pc}
 464              	.L95:
 465 0024 2868     		ldr	r0, [r5]
 466 0026 2146     		mov	r1, r4
 467 0028 0368     		ldr	r3, [r0]
 468 002a 1530     		adds	r0, r0, #21
 469 002c 1B6B     		ldr	r3, [r3, #48]
 470 002e 9847     		blx	r3
 471 0030 0028     		cmp	r0, #0
 472 0032 F4D0     		beq	.L89
 473 0034 2B68     		ldr	r3, [r5]
 474 0036 1B68     		ldr	r3, [r3]
 475 0038 5B6B     		ldr	r3, [r3, #52]
 476 003a 02B0     		add	sp, sp, #8
 477              		@ sp needed
 478 003c BDE87040 		pop	{r4, r5, r6, lr}
 479 0040 1847     		bx	r3
 480              	.L97:
 481 0042 00BF     		.align	2
 482              	.L96:
 483 0044 00000000 		.word	.LANCHOR0
 484 0048 09110800 		.word	528649
 485              		.size	sd_mmc_cmd9_spi, .-sd_mmc_cmd9_spi
 486              		.section	.text.sd_mmc_cmd9_mci,"ax",%progbits
 487              		.align	1
 488              		.p2align 2,,3
 489              		.syntax unified
 490              		.thumb
 491              		.thumb_func
 492              		.fpu softvfp
 493              		.type	sd_mmc_cmd9_mci, %function
 494              	sd_mmc_cmd9_mci:
 495              		@ args = 0, pretend = 0, frame = 0
 496              		@ frame_needed = 0, uses_anonymous_args = 0
 497 0000 38B5     		push	{r3, r4, r5, lr}
 498 0002 094D     		ldr	r5, .L104
 499 0004 41F60930 		movw	r0, #6921
 500 0008 2B68     		ldr	r3, [r5]
 501 000a D989     		ldrh	r1, [r3, #14]
 502 000c 1B68     		ldr	r3, [r3]
 503 000e 0904     		lsls	r1, r1, #16
 504 0010 5B69     		ldr	r3, [r3, #20]
 505 0012 9847     		blx	r3
 506 0014 0446     		mov	r4, r0
 507 0016 20B1     		cbz	r0, .L99
 508 0018 2868     		ldr	r0, [r5]
 509 001a 0368     		ldr	r3, [r0]
 510 001c 1530     		adds	r0, r0, #21
 511 001e DB69     		ldr	r3, [r3, #28]
 512 0020 9847     		blx	r3
 513              	.L99:
ARM GAS  /tmp/ccwSpz6b.s 			page 10


 514 0022 2046     		mov	r0, r4
 515 0024 38BD     		pop	{r3, r4, r5, pc}
 516              	.L105:
 517 0026 00BF     		.align	2
 518              	.L104:
 519 0028 00000000 		.word	.LANCHOR0
 520              		.size	sd_mmc_cmd9_mci, .-sd_mmc_cmd9_mci
 521              		.section	.text.sd_acmd51,"ax",%progbits
 522              		.align	1
 523              		.p2align 2,,3
 524              		.syntax unified
 525              		.thumb
 526              		.thumb_func
 527              		.fpu softvfp
 528              		.type	sd_acmd51, %function
 529              	sd_acmd51:
 530              		@ args = 0, pretend = 0, frame = 8
 531              		@ frame_needed = 0, uses_anonymous_args = 0
 532 0000 70B5     		push	{r4, r5, r6, lr}
 533 0002 214C     		ldr	r4, .L127
 534 0004 84B0     		sub	sp, sp, #16
 535 0006 2368     		ldr	r3, [r4]
 536 0008 41F23710 		movw	r0, #4407
 537 000c D989     		ldrh	r1, [r3, #14]
 538 000e 1B68     		ldr	r3, [r3]
 539 0010 0904     		lsls	r1, r1, #16
 540 0012 5B69     		ldr	r3, [r3, #20]
 541 0014 9847     		blx	r3
 542 0016 10B9     		cbnz	r0, .L126
 543              	.L112:
 544 0018 0020     		movs	r0, #0
 545              	.L108:
 546 001a 04B0     		add	sp, sp, #16
 547              		@ sp needed
 548 001c 70BD     		pop	{r4, r5, r6, pc}
 549              	.L126:
 550 001e 0125     		movs	r5, #1
 551 0020 2268     		ldr	r2, [r4]
 552 0022 2B46     		mov	r3, r5
 553 0024 1268     		ldr	r2, [r2]
 554 0026 0095     		str	r5, [sp]
 555 0028 166A     		ldr	r6, [r2, #32]
 556 002a 0021     		movs	r1, #0
 557 002c 0822     		movs	r2, #8
 558 002e 1748     		ldr	r0, .L127+4
 559 0030 B047     		blx	r6
 560 0032 0028     		cmp	r0, #0
 561 0034 F0D0     		beq	.L112
 562 0036 2368     		ldr	r3, [r4]
 563 0038 2946     		mov	r1, r5
 564 003a 1B68     		ldr	r3, [r3]
 565 003c 02A8     		add	r0, sp, #8
 566 003e 1B6B     		ldr	r3, [r3, #48]
 567 0040 9847     		blx	r3
 568 0042 0028     		cmp	r0, #0
 569 0044 E8D0     		beq	.L112
 570 0046 2368     		ldr	r3, [r4]
ARM GAS  /tmp/ccwSpz6b.s 			page 11


 571 0048 1B68     		ldr	r3, [r3]
 572 004a 5B6B     		ldr	r3, [r3, #52]
 573 004c 9847     		blx	r3
 574 004e 0028     		cmp	r0, #0
 575 0050 E2D0     		beq	.L112
 576 0052 9DF80830 		ldrb	r3, [sp, #8]	@ zero_extendqisi2
 577 0056 03F00F03 		and	r3, r3, #15
 578 005a 012B     		cmp	r3, #1
 579 005c 0FD0     		beq	.L114
 580 005e 0AD3     		bcc	.L124
 581 0060 022B     		cmp	r3, #2
 582 0062 08D1     		bne	.L124
 583 0064 9DF80A30 		ldrb	r3, [sp, #10]	@ zero_extendqisi2
 584 0068 DB09     		lsrs	r3, r3, #7
 585 006a 14BF     		ite	ne
 586 006c 3022     		movne	r2, #48
 587 006e 2022     		moveq	r2, #32
 588 0070 2368     		ldr	r3, [r4]
 589 0072 9A74     		strb	r2, [r3, #18]
 590 0074 D1E7     		b	.L108
 591              	.L124:
 592 0076 1022     		movs	r2, #16
 593 0078 2368     		ldr	r3, [r4]
 594 007a 9A74     		strb	r2, [r3, #18]
 595 007c CDE7     		b	.L108
 596              	.L114:
 597 007e 1A22     		movs	r2, #26
 598 0080 2368     		ldr	r3, [r4]
 599 0082 9A74     		strb	r2, [r3, #18]
 600 0084 C9E7     		b	.L108
 601              	.L128:
 602 0086 00BF     		.align	2
 603              	.L127:
 604 0088 00000000 		.word	.LANCHOR0
 605 008c 33110800 		.word	528691
 606              		.size	sd_acmd51, .-sd_acmd51
 607              		.section	.text.sd_mmc_select_slot.part.5,"ax",%progbits
 608              		.align	1
 609              		.p2align 2,,3
 610              		.syntax unified
 611              		.thumb
 612              		.thumb_func
 613              		.fpu softvfp
 614              		.type	sd_mmc_select_slot.part.5, %function
 615              	sd_mmc_select_slot.part.5:
 616              		@ args = 0, pretend = 0, frame = 0
 617              		@ frame_needed = 0, uses_anonymous_args = 0
 618 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 619 0002 8200     		lsls	r2, r0, #2
 620 0004 174C     		ldr	r4, .L133
 621 0006 1118     		adds	r1, r2, r0
 622 0008 04EBC101 		add	r1, r4, r1, lsl #3
 623 000c 0B7C     		ldrb	r3, [r1, #16]	@ zero_extendqisi2
 624 000e 0546     		mov	r5, r0
 625 0010 033B     		subs	r3, r3, #3
 626 0012 012B     		cmp	r3, #1
 627 0014 1AD9     		bls	.L130
ARM GAS  /tmp/ccwSpz6b.s 			page 12


 628 0016 91F82530 		ldrb	r3, [r1, #37]	@ zero_extendqisi2
 629 001a 0033     		adds	r3, r3, #0
 630 001c 18BF     		it	ne
 631 001e 0123     		movne	r3, #1
 632              	.L131:
 633 0020 2A44     		add	r2, r2, r5
 634 0022 D200     		lsls	r2, r2, #3
 635 0024 A158     		ldr	r1, [r4, r2]
 636 0026 DFF848E0 		ldr	lr, .L133+12
 637 002a 1444     		add	r4, r4, r2
 638 002c 0E4F     		ldr	r7, .L133+4
 639 002e 0E68     		ldr	r6, [r1]
 640 0030 E07C     		ldrb	r0, [r4, #19]	@ zero_extendqisi2
 641 0032 227D     		ldrb	r2, [r4, #20]	@ zero_extendqisi2
 642 0034 6168     		ldr	r1, [r4, #4]
 643 0036 CEF80040 		str	r4, [lr]
 644 003a 3D70     		strb	r5, [r7]
 645 003c B047     		blx	r6
 646 003e 207C     		ldrb	r0, [r4, #16]	@ zero_extendqisi2
 647 0040 A0F10200 		sub	r0, #2
 648 0044 B0FA80F0 		clz	r0, r0
 649 0048 4009     		lsrs	r0, r0, #5
 650 004a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 651              	.L130:
 652 004c 0020     		movs	r0, #0
 653 004e 0227     		movs	r7, #2
 654 0050 0126     		movs	r6, #1
 655 0052 0346     		mov	r3, r0
 656 0054 81F82500 		strb	r0, [r1, #37]
 657 0058 0448     		ldr	r0, .L133+8
 658 005a 0F74     		strb	r7, [r1, #16]
 659 005c 0E75     		strb	r6, [r1, #20]
 660 005e 4860     		str	r0, [r1, #4]
 661 0060 DEE7     		b	.L131
 662              	.L134:
 663 0062 00BF     		.align	2
 664              	.L133:
 665 0064 00000000 		.word	.LANCHOR4
 666 0068 00000000 		.word	.LANCHOR5
 667 006c 801A0600 		.word	400000
 668 0070 00000000 		.word	.LANCHOR0
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
ARM GAS  /tmp/ccwSpz6b.s 			page 13


 685 0008 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 686 000a 5368     		ldr	r3, [r2, #4]
 687 000c 9847     		blx	r3
 688 000e FF22     		movs	r2, #255
 689 0010 024B     		ldr	r3, .L137+4
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
 710 0000 0423     		movs	r3, #4
 711 0002 70B5     		push	{r4, r5, r6, lr}
 712 0004 144C     		ldr	r4, .L149
 713 0006 0546     		mov	r5, r0
 714 0008 2374     		strb	r3, [r4, #16]
 715 000a 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 716 000c 0E46     		mov	r6, r1
 717 000e FF28     		cmp	r0, #255
 718 0010 2073     		strb	r0, [r4, #12]
 719 0012 03D0     		beq	.L140
 720 0014 0022     		movs	r2, #0
 721 0016 0121     		movs	r1, #1
 722 0018 FFF7FEFF 		bl	pinModeDuet
 723              	.L140:
 724 001c 0022     		movs	r2, #0
 725 001e 0421     		movs	r1, #4
 726 0020 0E4B     		ldr	r3, .L149+4
 727 0022 E274     		strb	r2, [r4, #19]
 728 0024 84F83810 		strb	r1, [r4, #56]
 729 0028 2360     		str	r3, [r4]
 730 002a 6878     		ldrb	r0, [r5, #1]	@ zero_extendqisi2
 731 002c FF28     		cmp	r0, #255
 732 002e 84F83400 		strb	r0, [r4, #52]
 733 0032 02D0     		beq	.L141
 734 0034 0121     		movs	r1, #1
 735 0036 FFF7FEFF 		bl	pinModeDuet
 736              	.L141:
 737 003a 0020     		movs	r0, #0
 738 003c FF21     		movs	r1, #255
 739 003e 084A     		ldr	r2, .L149+8
 740 0040 084B     		ldr	r3, .L149+12
 741 0042 84F83B00 		strb	r0, [r4, #59]
ARM GAS  /tmp/ccwSpz6b.s 			page 14


 742 0046 A362     		str	r3, [r4, #40]
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
 787 0006 07D9     		bls	.L372
 788 0008 0424     		movs	r4, #4
 789              	.L153:
 790 000a 8E4B     		ldr	r3, .L383
 791 000c 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 792 000e 012B     		cmp	r3, #1
 793 0010 2AD9     		bls	.L364
 794              	.L232:
 795 0012 2046     		mov	r0, r4
 796 0014 15B0     		add	sp, sp, #84
 797              		@ sp needed
 798 0016 F0BD     		pop	{r4, r5, r6, r7, pc}
ARM GAS  /tmp/ccwSpz6b.s 			page 15


 799              	.L372:
 800 0018 0546     		mov	r5, r0
 801              	.L316:
 802 001a 2846     		mov	r0, r5
 803 001c FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 804 0020 0828     		cmp	r0, #8
 805 0022 0446     		mov	r4, r0
 806 0024 F9D0     		beq	.L316
 807 0026 0128     		cmp	r0, #1
 808 0028 EFD1     		bne	.L153
 809 002a 874C     		ldr	r4, .L383+4
 810 002c 2368     		ldr	r3, [r4]
 811 002e 1A68     		ldr	r2, [r3]
 812 0030 92F84850 		ldrb	r5, [r2, #72]	@ zero_extendqisi2
 813 0034 EDB1     		cbz	r5, .L157
 814 0036 0025     		movs	r5, #0
 815 0038 8DF80F50 		strb	r5, [sp, #15]
 816 003c 5874     		strb	r0, [r3, #17]
 817 003e 9D74     		strb	r5, [r3, #18]
 818 0040 DD81     		strh	r5, [r3, #14]	@ movhi
 819 0042 1369     		ldr	r3, [r2, #16]
 820 0044 9847     		blx	r3
 821 0046 2368     		ldr	r3, [r4]
 822 0048 2946     		mov	r1, r5
 823 004a 1B68     		ldr	r3, [r3]
 824 004c 4FF48850 		mov	r0, #4352
 825 0050 5B69     		ldr	r3, [r3, #20]
 826 0052 9847     		blx	r3
 827 0054 00BB     		cbnz	r0, .L373
 828              	.L170:
 829 0056 0025     		movs	r5, #0
 830              	.L363:
 831 0058 2368     		ldr	r3, [r4]
 832              	.L178:
 833 005a DDB1     		cbz	r5, .L220
 834 005c 0024     		movs	r4, #0
 835              	.L367:
 836 005e 794A     		ldr	r2, .L383
 837 0060 1C74     		strb	r4, [r3, #16]
 838 0062 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 839 0064 012B     		cmp	r3, #1
 840 0066 D4D8     		bhi	.L232
 841              	.L364:
 842 0068 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 843 006c 2046     		mov	r0, r4
 844 006e 15B0     		add	sp, sp, #84
 845              		@ sp needed
 846 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 847              	.L157:
 848 0072 8DF80F50 		strb	r5, [sp, #15]
 849 0076 5874     		strb	r0, [r3, #17]
 850 0078 9D74     		strb	r5, [r3, #18]
 851 007a 1269     		ldr	r2, [r2, #16]
 852 007c DD81     		strh	r5, [r3, #14]	@ movhi
 853 007e 9047     		blx	r2
 854 0080 2368     		ldr	r3, [r4]
 855 0082 2946     		mov	r1, r5
ARM GAS  /tmp/ccwSpz6b.s 			page 16


 856 0084 1B68     		ldr	r3, [r3]
 857 0086 4FF48040 		mov	r0, #16384
 858 008a 5B69     		ldr	r3, [r3, #20]
 859 008c 9847     		blx	r3
 860 008e 0028     		cmp	r0, #0
 861 0090 30D1     		bne	.L374
 862              	.L217:
 863 0092 2368     		ldr	r3, [r4]
 864              	.L220:
 865 0094 0324     		movs	r4, #3
 866 0096 E2E7     		b	.L367
 867              	.L373:
 868 0098 0DF10F00 		add	r0, sp, #15
 869 009c FFF7FEFF 		bl	sd_cmd8
 870 00a0 0546     		mov	r5, r0
 871 00a2 0028     		cmp	r0, #0
 872 00a4 D7D0     		beq	.L170
 873 00a6 2068     		ldr	r0, [r4]
 874 00a8 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 875 00aa D907     		lsls	r1, r3, #31
 876 00ac 00F19580 		bmi	.L375
 877              	.L161:
 878 00b0 03F00903 		and	r3, r3, #9
 879 00b4 012B     		cmp	r3, #1
 880 00b6 11D1     		bne	.L177
 881              	.L226:
 882 00b8 0368     		ldr	r3, [r0]
 883 00ba 4FF40071 		mov	r1, #512
 884 00be 5B69     		ldr	r3, [r3, #20]
 885 00c0 41F21010 		movw	r0, #4368
 886 00c4 9847     		blx	r3
 887 00c6 0028     		cmp	r0, #0
 888 00c8 C5D0     		beq	.L170
 889 00ca 2068     		ldr	r0, [r4]
 890 00cc 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 891              	.L176:
 892 00ce DE07     		lsls	r6, r3, #31
 893 00d0 04D5     		bpl	.L177
 894 00d2 FFF7FEFF 		bl	sd_mmc_cmd13
 895 00d6 0028     		cmp	r0, #0
 896 00d8 BDD0     		beq	.L170
 897              	.L362:
 898 00da 2068     		ldr	r0, [r4]
 899              	.L177:
 900 00dc 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 901 00e0 0268     		ldr	r2, [r0]
 902 00e2 0033     		adds	r3, r3, #0
 903 00e4 1668     		ldr	r6, [r2]
 904 00e6 4168     		ldr	r1, [r0, #4]
 905 00e8 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 906 00ea 18BF     		it	ne
 907 00ec 0123     		movne	r3, #1
 908 00ee C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 909 00f0 B047     		blx	r6
 910 00f2 B1E7     		b	.L363
 911              	.L374:
 912 00f4 0DF10F00 		add	r0, sp, #15
ARM GAS  /tmp/ccwSpz6b.s 			page 17


 913 00f8 FFF7FEFF 		bl	sd_cmd8
 914 00fc 2368     		ldr	r3, [r4]
 915 00fe 0028     		cmp	r0, #0
 916 0100 C8D0     		beq	.L220
 917 0102 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 918 0104 D007     		lsls	r0, r2, #31
 919 0106 00F1F880 		bmi	.L376
 920              	.L182:
 921 010a 1B68     		ldr	r3, [r3]
 922 010c 0021     		movs	r1, #0
 923 010e 5B69     		ldr	r3, [r3, #20]
 924 0110 45F20310 		movw	r0, #20739
 925 0114 9847     		blx	r3
 926 0116 0028     		cmp	r0, #0
 927 0118 BBD0     		beq	.L217
 928 011a 2568     		ldr	r5, [r4]
 929 011c 2B68     		ldr	r3, [r5]
 930 011e 9B69     		ldr	r3, [r3, #24]
 931 0120 9847     		blx	r3
 932 0122 2368     		ldr	r3, [r4]
 933 0124 000C     		lsrs	r0, r0, #16
 934 0126 E881     		strh	r0, [r5, #14]	@ movhi
 935 0128 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 936 012a D107     		lsls	r1, r2, #31
 937 012c 06D5     		bpl	.L205
 938 012e FFF7FEFF 		bl	sd_mmc_cmd9_mci
 939 0132 0028     		cmp	r0, #0
 940 0134 ADD0     		beq	.L217
 941 0136 FFF7FEFF 		bl	sd_decode_csd
 942 013a 2368     		ldr	r3, [r4]
 943              	.L205:
 944 013c D989     		ldrh	r1, [r3, #14]
 945 013e 1B68     		ldr	r3, [r3]
 946 0140 0904     		lsls	r1, r1, #16
 947 0142 5B69     		ldr	r3, [r3, #20]
 948 0144 43F20710 		movw	r0, #12551
 949 0148 9847     		blx	r3
 950 014a 2368     		ldr	r3, [r4]
 951 014c 0546     		mov	r5, r0
 952 014e 0028     		cmp	r0, #0
 953 0150 A0D0     		beq	.L220
 954 0152 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 955 0154 D207     		lsls	r2, r2, #31
 956 0156 04D5     		bpl	.L208
 957 0158 FFF7FEFF 		bl	sd_acmd51
 958 015c 2368     		ldr	r3, [r4]
 959 015e 0028     		cmp	r0, #0
 960 0160 98D0     		beq	.L220
 961              	.L208:
 962 0162 1A68     		ldr	r2, [r3]
 963 0164 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 964 0166 9368     		ldr	r3, [r2, #8]
 965 0168 9847     		blx	r3
 966 016a 0328     		cmp	r0, #3
 967 016c 0FD9     		bls	.L210
 968 016e 2068     		ldr	r0, [r4]
 969 0170 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
ARM GAS  /tmp/ccwSpz6b.s 			page 18


 970 0172 DF07     		lsls	r7, r3, #31
 971 0174 00F1DD81 		bmi	.L211
 972 0178 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 973              	.L212:
 974 017a 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 975 017e 0168     		ldr	r1, [r0]
 976 0180 0033     		adds	r3, r3, #0
 977 0182 0E68     		ldr	r6, [r1]
 978 0184 18BF     		it	ne
 979 0186 0123     		movne	r3, #1
 980 0188 4168     		ldr	r1, [r0, #4]
 981 018a C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 982 018c B047     		blx	r6
 983              	.L210:
 984 018e 2368     		ldr	r3, [r4]
 985 0190 1B68     		ldr	r3, [r3]
 986 0192 DB68     		ldr	r3, [r3, #12]
 987 0194 9847     		blx	r3
 988 0196 90B1     		cbz	r0, .L215
 989 0198 2068     		ldr	r0, [r4]
 990 019a 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 991 019c DE07     		lsls	r6, r3, #31
 992 019e 03D5     		bpl	.L216
 993 01a0 837C     		ldrb	r3, [r0, #18]	@ zero_extendqisi2
 994 01a2 102B     		cmp	r3, #16
 995 01a4 00F2E481 		bhi	.L377
 996              	.L216:
 997 01a8 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 998 01ac 0268     		ldr	r2, [r0]
 999 01ae 0033     		adds	r3, r3, #0
 1000 01b0 1668     		ldr	r6, [r2]
 1001 01b2 4168     		ldr	r1, [r0, #4]
 1002 01b4 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1003 01b6 18BF     		it	ne
 1004 01b8 0123     		movne	r3, #1
 1005 01ba C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1006 01bc B047     		blx	r6
 1007              	.L215:
 1008 01be 2368     		ldr	r3, [r4]
 1009 01c0 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1010 01c2 D207     		lsls	r2, r2, #31
 1011 01c4 7FF549AF 		bpl	.L178
 1012 01c8 1B68     		ldr	r3, [r3]
 1013 01ca 4FF40071 		mov	r1, #512
 1014 01ce 5B69     		ldr	r3, [r3, #20]
 1015 01d0 41F21010 		movw	r0, #4368
 1016 01d4 9847     		blx	r3
 1017              	.L365:
 1018 01d6 0546     		mov	r5, r0
 1019 01d8 3EE7     		b	.L363
 1020              	.L375:
 1021 01da 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 1022 01de 41F6EF36 		movw	r6, #7151
 1023 01e2 002B     		cmp	r3, #0
 1024 01e4 14BF     		ite	ne
 1025 01e6 4FF08047 		movne	r7, #1073741824
 1026 01ea 0027     		moveq	r7, #0
ARM GAS  /tmp/ccwSpz6b.s 			page 19


 1027 01ec 12E0     		b	.L164
 1028              	.L378:
 1029 01ee 2368     		ldr	r3, [r4]
 1030 01f0 3946     		mov	r1, r7
 1031 01f2 1B68     		ldr	r3, [r3]
 1032 01f4 41F22910 		movw	r0, #4393
 1033 01f8 5B69     		ldr	r3, [r3, #20]
 1034 01fa 9847     		blx	r3
 1035 01fc 90B1     		cbz	r0, .L162
 1036 01fe 2368     		ldr	r3, [r4]
 1037 0200 1B68     		ldr	r3, [r3]
 1038 0202 9B69     		ldr	r3, [r3, #24]
 1039 0204 9847     		blx	r3
 1040 0206 10F00101 		ands	r1, r0, #1
 1041 020a 00F04781 		beq	.L163
 1042 020e 013E     		subs	r6, r6, #1
 1043 0210 08D0     		beq	.L162
 1044 0212 2068     		ldr	r0, [r4]
 1045              	.L164:
 1046 0214 0368     		ldr	r3, [r0]
 1047 0216 0021     		movs	r1, #0
 1048 0218 5B69     		ldr	r3, [r3, #20]
 1049 021a 41F23710 		movw	r0, #4407
 1050 021e 9847     		blx	r3
 1051 0220 0028     		cmp	r0, #0
 1052 0222 E4D1     		bne	.L378
 1053              	.L162:
 1054 0224 0220     		movs	r0, #2
 1055 0226 2368     		ldr	r3, [r4]
 1056 0228 0021     		movs	r1, #0
 1057 022a 1A68     		ldr	r2, [r3]
 1058 022c 5874     		strb	r0, [r3, #17]
 1059 022e 5369     		ldr	r3, [r2, #20]
 1060 0230 4FF48850 		mov	r0, #4352
 1061 0234 9847     		blx	r3
 1062 0236 0028     		cmp	r0, #0
 1063 0238 3FF40DAF 		beq	.L170
 1064 023c 41F6EF35 		movw	r5, #7151
 1065 0240 07E0     		b	.L171
 1066              	.L384:
 1067 0242 00BF     		.align	2
 1068              	.L383:
 1069 0244 00000000 		.word	.LANCHOR5
 1070 0248 00000000 		.word	.LANCHOR0
 1071              	.L379:
 1072 024c 013D     		subs	r5, r5, #1
 1073 024e 3FF402AF 		beq	.L170
 1074              	.L171:
 1075 0252 2368     		ldr	r3, [r4]
 1076 0254 0021     		movs	r1, #0
 1077 0256 1B68     		ldr	r3, [r3]
 1078 0258 41F20110 		movw	r0, #4353
 1079 025c 5B69     		ldr	r3, [r3, #20]
 1080 025e 9847     		blx	r3
 1081 0260 0028     		cmp	r0, #0
 1082 0262 3FF4F8AE 		beq	.L170
 1083 0266 2368     		ldr	r3, [r4]
ARM GAS  /tmp/ccwSpz6b.s 			page 20


 1084 0268 1B68     		ldr	r3, [r3]
 1085 026a 9B69     		ldr	r3, [r3, #24]
 1086 026c 9847     		blx	r3
 1087 026e 10F00101 		ands	r1, r0, #1
 1088 0272 EBD1     		bne	.L379
 1089 0274 2368     		ldr	r3, [r4]
 1090 0276 40F23A50 		movw	r0, #1338
 1091 027a 1B68     		ldr	r3, [r3]
 1092 027c 5B69     		ldr	r3, [r3, #20]
 1093 027e 9847     		blx	r3
 1094 0280 0028     		cmp	r0, #0
 1095 0282 3FF4E8AE 		beq	.L170
 1096 0286 2368     		ldr	r3, [r4]
 1097 0288 1B68     		ldr	r3, [r3]
 1098 028a 9B69     		ldr	r3, [r3, #24]
 1099 028c 9847     		blx	r3
 1100 028e 00F0C040 		and	r0, r0, #1610612736
 1101 0292 B0F1804F 		cmp	r0, #1073741824
 1102 0296 2368     		ldr	r3, [r4]
 1103 0298 03D1     		bne	.L173
 1104 029a 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1105 029c 42F00802 		orr	r2, r2, #8
 1106 02a0 5A74     		strb	r2, [r3, #17]
 1107              	.L173:
 1108 02a2 1B68     		ldr	r3, [r3]
 1109 02a4 0021     		movs	r1, #0
 1110 02a6 5B69     		ldr	r3, [r3, #20]
 1111 02a8 41F23B10 		movw	r0, #4411
 1112 02ac 9847     		blx	r3
 1113 02ae 0028     		cmp	r0, #0
 1114 02b0 3FF4D1AE 		beq	.L170
 1115 02b4 FFF7FEFF 		bl	sd_mmc_cmd9_spi
 1116 02b8 0028     		cmp	r0, #0
 1117 02ba 3FF4CCAE 		beq	.L170
 1118 02be FFF7FEFF 		bl	mmc_decode_csd
 1119 02c2 2368     		ldr	r3, [r4]
 1120 02c4 9A7C     		ldrb	r2, [r3, #18]	@ zero_extendqisi2
 1121 02c6 3F2A     		cmp	r2, #63
 1122 02c8 06D9     		bls	.L174
 1123 02ca 04A8     		add	r0, sp, #16
 1124 02cc FFF7FEFF 		bl	mmc_cmd8
 1125 02d0 0028     		cmp	r0, #0
 1126 02d2 3FF4C0AE 		beq	.L170
 1127 02d6 2368     		ldr	r3, [r4]
 1128              	.L174:
 1129 02d8 1B68     		ldr	r3, [r3]
 1130 02da 4FF40071 		mov	r1, #512
 1131 02de 5B69     		ldr	r3, [r3, #20]
 1132 02e0 41F21010 		movw	r0, #4368
 1133 02e4 9847     		blx	r3
 1134 02e6 0028     		cmp	r0, #0
 1135 02e8 3FF4B5AE 		beq	.L170
 1136 02ec FFF7FEFF 		bl	sd_mmc_cmd13
 1137 02f0 0546     		mov	r5, r0
 1138 02f2 0028     		cmp	r0, #0
 1139 02f4 3FF4AFAE 		beq	.L170
 1140 02f8 EFE6     		b	.L362
ARM GAS  /tmp/ccwSpz6b.s 			page 21


 1141              	.L376:
 1142 02fa 9DF80F20 		ldrb	r2, [sp, #15]	@ zero_extendqisi2
 1143 02fe 994F     		ldr	r7, .L385
 1144 0300 002A     		cmp	r2, #0
 1145 0302 08BF     		it	eq
 1146 0304 4FF4FC17 		moveq	r7, #2064384
 1147 0308 40F63506 		movw	r6, #2101
 1148 030c 11E0     		b	.L187
 1149              	.L381:
 1150 030e 2368     		ldr	r3, [r4]
 1151 0310 3946     		mov	r1, r7
 1152 0312 1B68     		ldr	r3, [r3]
 1153 0314 44F22950 		movw	r0, #17705
 1154 0318 5B69     		ldr	r3, [r3, #20]
 1155 031a 9847     		blx	r3
 1156 031c 88B1     		cbz	r0, .L183
 1157 031e 2368     		ldr	r3, [r4]
 1158 0320 1B68     		ldr	r3, [r3]
 1159 0322 9B69     		ldr	r3, [r3, #24]
 1160 0324 9847     		blx	r3
 1161 0326 0028     		cmp	r0, #0
 1162 0328 C0F2EE80 		blt	.L380
 1163 032c 013E     		subs	r6, r6, #1
 1164 032e 08D0     		beq	.L183
 1165 0330 2368     		ldr	r3, [r4]
 1166              	.L187:
 1167 0332 1B68     		ldr	r3, [r3]
 1168 0334 0021     		movs	r1, #0
 1169 0336 5B69     		ldr	r3, [r3, #20]
 1170 0338 41F23710 		movw	r0, #4407
 1171 033c 9847     		blx	r3
 1172 033e 0028     		cmp	r0, #0
 1173 0340 E5D1     		bne	.L381
 1174              	.L183:
 1175 0342 0220     		movs	r0, #2
 1176 0344 2368     		ldr	r3, [r4]
 1177 0346 0021     		movs	r1, #0
 1178 0348 1A68     		ldr	r2, [r3]
 1179 034a 5874     		strb	r0, [r3, #17]
 1180 034c 5369     		ldr	r3, [r2, #20]
 1181 034e 4FF48040 		mov	r0, #16384
 1182 0352 9847     		blx	r3
 1183 0354 0028     		cmp	r0, #0
 1184 0356 3FF47FAE 		beq	.L363
 1185 035a 41F26906 		movw	r6, #4201
 1186 035e 814F     		ldr	r7, .L385
 1187 0360 02E0     		b	.L194
 1188              	.L190:
 1189 0362 013E     		subs	r6, r6, #1
 1190 0364 3FF478AE 		beq	.L363
 1191              	.L194:
 1192 0368 2368     		ldr	r3, [r4]
 1193 036a 3946     		mov	r1, r7
 1194 036c 1B68     		ldr	r3, [r3]
 1195 036e 44F20150 		movw	r0, #17665
 1196 0372 5B69     		ldr	r3, [r3, #20]
 1197 0374 9847     		blx	r3
ARM GAS  /tmp/ccwSpz6b.s 			page 22


 1198 0376 0028     		cmp	r0, #0
 1199 0378 3FF46EAE 		beq	.L363
 1200 037c 2368     		ldr	r3, [r4]
 1201 037e 1B68     		ldr	r3, [r3]
 1202 0380 9B69     		ldr	r3, [r3, #24]
 1203 0382 9847     		blx	r3
 1204 0384 031E     		subs	r3, r0, #0
 1205 0386 ECDA     		bge	.L190
 1206 0388 03F0C043 		and	r3, r3, #1610612736
 1207 038c B3F1804F 		cmp	r3, #1073741824
 1208 0390 2368     		ldr	r3, [r4]
 1209 0392 03D1     		bne	.L192
 1210 0394 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1211 0396 42F00802 		orr	r2, r2, #8
 1212 039a 5A74     		strb	r2, [r3, #17]
 1213              	.L192:
 1214 039c 1B68     		ldr	r3, [r3]
 1215 039e 0021     		movs	r1, #0
 1216 03a0 5B69     		ldr	r3, [r3, #20]
 1217 03a2 45F60230 		movw	r0, #23298
 1218 03a6 9847     		blx	r3
 1219 03a8 0028     		cmp	r0, #0
 1220 03aa 3FF455AE 		beq	.L363
 1221 03ae 0120     		movs	r0, #1
 1222 03b0 2368     		ldr	r3, [r4]
 1223 03b2 4FF48031 		mov	r1, #65536
 1224 03b6 1A68     		ldr	r2, [r3]
 1225 03b8 D881     		strh	r0, [r3, #14]	@ movhi
 1226 03ba 5369     		ldr	r3, [r2, #20]
 1227 03bc 41F20310 		movw	r0, #4355
 1228 03c0 9847     		blx	r3
 1229 03c2 0028     		cmp	r0, #0
 1230 03c4 3FF448AE 		beq	.L363
 1231 03c8 FFF7FEFF 		bl	sd_mmc_cmd9_mci
 1232 03cc 0028     		cmp	r0, #0
 1233 03ce 3FF443AE 		beq	.L363
 1234 03d2 FFF7FEFF 		bl	mmc_decode_csd
 1235 03d6 2368     		ldr	r3, [r4]
 1236 03d8 43F20710 		movw	r0, #12551
 1237 03dc D989     		ldrh	r1, [r3, #14]
 1238 03de 1B68     		ldr	r3, [r3]
 1239 03e0 0904     		lsls	r1, r1, #16
 1240 03e2 5B69     		ldr	r3, [r3, #20]
 1241 03e4 9847     		blx	r3
 1242 03e6 0028     		cmp	r0, #0
 1243 03e8 3FF436AE 		beq	.L363
 1244 03ec 2068     		ldr	r0, [r4]
 1245 03ee 837C     		ldrb	r3, [r0, #18]	@ zero_extendqisi2
 1246 03f0 3F2B     		cmp	r3, #63
 1247 03f2 40F2FC80 		bls	.L195
 1248 03f6 04A8     		add	r0, sp, #16
 1249 03f8 FFF7FEFF 		bl	mmc_cmd8
 1250 03fc 0028     		cmp	r0, #0
 1251 03fe 3FF42BAE 		beq	.L363
 1252 0402 2368     		ldr	r3, [r4]
 1253 0404 1A68     		ldr	r2, [r3]
 1254 0406 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
ARM GAS  /tmp/ccwSpz6b.s 			page 23


 1255 0408 9368     		ldr	r3, [r2, #8]
 1256 040a 9847     		blx	r3
 1257 040c 0328     		cmp	r0, #3
 1258 040e 2AD9     		bls	.L196
 1259 0410 2368     		ldr	r3, [r4]
 1260 0412 1A68     		ldr	r2, [r3]
 1261 0414 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1262 0416 9368     		ldr	r3, [r2, #8]
 1263 0418 9847     		blx	r3
 1264 041a 0428     		cmp	r0, #4
 1265 041c 0646     		mov	r6, r0
 1266 041e 00F0E280 		beq	.L228
 1267 0422 5149     		ldr	r1, .L385+4
 1268 0424 514B     		ldr	r3, .L385+8
 1269 0426 0828     		cmp	r0, #8
 1270 0428 18BF     		it	ne
 1271 042a 1946     		movne	r1, r3
 1272              	.L198:
 1273 042c 2368     		ldr	r3, [r4]
 1274 042e 43F20610 		movw	r0, #12550
 1275 0432 1B68     		ldr	r3, [r3]
 1276 0434 5B69     		ldr	r3, [r3, #20]
 1277 0436 9847     		blx	r3
 1278 0438 0028     		cmp	r0, #0
 1279 043a 3FF40DAE 		beq	.L363
 1280 043e 2368     		ldr	r3, [r4]
 1281 0440 1B68     		ldr	r3, [r3]
 1282 0442 9B69     		ldr	r3, [r3, #24]
 1283 0444 9847     		blx	r3
 1284 0446 0706     		lsls	r7, r0, #24
 1285 0448 3FF506AE 		bmi	.L363
 1286 044c 2068     		ldr	r0, [r4]
 1287 044e 3246     		mov	r2, r6
 1288 0450 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1289 0454 0168     		ldr	r1, [r0]
 1290 0456 0675     		strb	r6, [r0, #20]
 1291 0458 0033     		adds	r3, r3, #0
 1292 045a 0E68     		ldr	r6, [r1]
 1293 045c 18BF     		it	ne
 1294 045e 0123     		movne	r3, #1
 1295 0460 4168     		ldr	r1, [r0, #4]
 1296 0462 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1297 0464 B047     		blx	r6
 1298              	.L196:
 1299 0466 2368     		ldr	r3, [r4]
 1300 0468 1B68     		ldr	r3, [r3]
 1301 046a DB68     		ldr	r3, [r3, #12]
 1302 046c 9847     		blx	r3
 1303 046e 20B1     		cbz	r0, .L200
 1304 0470 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 1305 0474 002B     		cmp	r3, #0
 1306 0476 40F0C680 		bne	.L382
 1307              	.L200:
 1308 047a 0A26     		movs	r6, #10
 1309              	.L202:
 1310 047c 2368     		ldr	r3, [r4]
 1311 047e 4FF40071 		mov	r1, #512
ARM GAS  /tmp/ccwSpz6b.s 			page 24


 1312 0482 1B68     		ldr	r3, [r3]
 1313 0484 41F21010 		movw	r0, #4368
 1314 0488 5B69     		ldr	r3, [r3, #20]
 1315 048a 9847     		blx	r3
 1316 048c 013E     		subs	r6, r6, #1
 1317 048e 0028     		cmp	r0, #0
 1318 0490 7FF4A1AE 		bne	.L365
 1319 0494 16F0FF06 		ands	r6, r6, #255
 1320 0498 F0D1     		bne	.L202
 1321 049a DDE5     		b	.L363
 1322              	.L163:
 1323 049c 2368     		ldr	r3, [r4]
 1324 049e 40F23A50 		movw	r0, #1338
 1325 04a2 1B68     		ldr	r3, [r3]
 1326 04a4 5B69     		ldr	r3, [r3, #20]
 1327 04a6 9847     		blx	r3
 1328 04a8 0028     		cmp	r0, #0
 1329 04aa 3FF4BBAE 		beq	.L162
 1330 04ae 2368     		ldr	r3, [r4]
 1331 04b0 1B68     		ldr	r3, [r3]
 1332 04b2 9B69     		ldr	r3, [r3, #24]
 1333 04b4 9847     		blx	r3
 1334 04b6 4200     		lsls	r2, r0, #1
 1335 04b8 2368     		ldr	r3, [r4]
 1336 04ba 03D5     		bpl	.L166
 1337 04bc 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1338 04be 42F00802 		orr	r2, r2, #8
 1339 04c2 5A74     		strb	r2, [r3, #17]
 1340              	.L166:
 1341 04c4 1B68     		ldr	r3, [r3]
 1342 04c6 0021     		movs	r1, #0
 1343 04c8 5B69     		ldr	r3, [r3, #20]
 1344 04ca 41F23B10 		movw	r0, #4411
 1345 04ce 9847     		blx	r3
 1346 04d0 0028     		cmp	r0, #0
 1347 04d2 3FF4C0AD 		beq	.L170
 1348 04d6 2068     		ldr	r0, [r4]
 1349 04d8 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1350 04da DF07     		lsls	r7, r3, #31
 1351 04dc 7FF5E8AD 		bpl	.L161
 1352 04e0 FFF7FEFF 		bl	sd_mmc_cmd9_spi
 1353 04e4 0028     		cmp	r0, #0
 1354 04e6 3FF4B6AD 		beq	.L170
 1355 04ea FFF7FEFF 		bl	sd_decode_csd
 1356 04ee FFF7FEFF 		bl	sd_acmd51
 1357 04f2 0028     		cmp	r0, #0
 1358 04f4 3FF4AFAD 		beq	.L170
 1359 04f8 2068     		ldr	r0, [r4]
 1360 04fa 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1361 04fc 03F00902 		and	r2, r3, #9
 1362 0500 012A     		cmp	r2, #1
 1363 0502 7FF4E4AD 		bne	.L176
 1364 0506 D7E5     		b	.L226
 1365              	.L380:
 1366 0508 2368     		ldr	r3, [r4]
 1367 050a 4100     		lsls	r1, r0, #1
 1368 050c 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
ARM GAS  /tmp/ccwSpz6b.s 			page 25


 1369 050e 02D5     		bpl	.L186
 1370 0510 42F00802 		orr	r2, r2, #8
 1371 0514 5A74     		strb	r2, [r3, #17]
 1372              	.L186:
 1373 0516 D007     		lsls	r0, r2, #31
 1374 0518 7FF5F7AD 		bpl	.L182
 1375 051c 1B68     		ldr	r3, [r3]
 1376 051e 0021     		movs	r1, #0
 1377 0520 5B69     		ldr	r3, [r3, #20]
 1378 0522 45F60230 		movw	r0, #23298
 1379 0526 9847     		blx	r3
 1380 0528 2368     		ldr	r3, [r4]
 1381 052a 0028     		cmp	r0, #0
 1382 052c 7FF4EDAD 		bne	.L182
 1383 0530 B0E5     		b	.L220
 1384              	.L211:
 1385 0532 C189     		ldrh	r1, [r0, #14]
 1386 0534 0368     		ldr	r3, [r0]
 1387 0536 0904     		lsls	r1, r1, #16
 1388 0538 5B69     		ldr	r3, [r3, #20]
 1389 053a 41F23710 		movw	r0, #4407
 1390 053e 9847     		blx	r3
 1391 0540 2368     		ldr	r3, [r4]
 1392 0542 0028     		cmp	r0, #0
 1393 0544 3FF4A6AD 		beq	.L220
 1394 0548 1B68     		ldr	r3, [r3]
 1395 054a 0221     		movs	r1, #2
 1396 054c 41F20610 		movw	r0, #4358
 1397 0550 5B69     		ldr	r3, [r3, #20]
 1398 0552 9847     		blx	r3
 1399 0554 0028     		cmp	r0, #0
 1400 0556 3FF49CAD 		beq	.L217
 1401 055a 0423     		movs	r3, #4
 1402 055c 2068     		ldr	r0, [r4]
 1403 055e 1A46     		mov	r2, r3
 1404 0560 0375     		strb	r3, [r0, #20]
 1405 0562 0AE6     		b	.L212
 1406              	.L386:
 1407              		.align	2
 1408              	.L385:
 1409 0564 00801F40 		.word	1075806208
 1410 0568 0002B701 		.word	28770816
 1411 056c 0000B701 		.word	28770304
 1412              	.L377:
 1413 0570 0126     		movs	r6, #1
 1414 0572 0368     		ldr	r3, [r0]
 1415 0574 0096     		str	r6, [sp]
 1416 0576 1F6A     		ldr	r7, [r3, #32]
 1417 0578 4022     		movs	r2, #64
 1418 057a 3346     		mov	r3, r6
 1419 057c 3049     		ldr	r1, .L387
 1420 057e 3148     		ldr	r0, .L387+4
 1421 0580 B847     		blx	r7
 1422 0582 0028     		cmp	r0, #0
 1423 0584 3FF485AD 		beq	.L217
 1424 0588 2368     		ldr	r3, [r4]
 1425 058a 3146     		mov	r1, r6
ARM GAS  /tmp/ccwSpz6b.s 			page 26


 1426 058c 1B68     		ldr	r3, [r3]
 1427 058e 04A8     		add	r0, sp, #16
 1428 0590 1B6B     		ldr	r3, [r3, #48]
 1429 0592 9847     		blx	r3
 1430 0594 0028     		cmp	r0, #0
 1431 0596 3FF47CAD 		beq	.L217
 1432 059a 2368     		ldr	r3, [r4]
 1433 059c 1B68     		ldr	r3, [r3]
 1434 059e 5B6B     		ldr	r3, [r3, #52]
 1435 05a0 9847     		blx	r3
 1436 05a2 0028     		cmp	r0, #0
 1437 05a4 3FF475AD 		beq	.L217
 1438 05a8 2368     		ldr	r3, [r4]
 1439 05aa 1B68     		ldr	r3, [r3]
 1440 05ac 9B69     		ldr	r3, [r3, #24]
 1441 05ae 9847     		blx	r3
 1442 05b0 0106     		lsls	r1, r0, #24
 1443 05b2 3FF56EAD 		bmi	.L217
 1444 05b6 9DF82030 		ldrb	r3, [sp, #32]	@ zero_extendqisi2
 1445 05ba 03F00F03 		and	r3, r3, #15
 1446 05be 0F2B     		cmp	r3, #15
 1447 05c0 13D0     		beq	.L218
 1448 05c2 BDF82C30 		ldrh	r3, [sp, #44]
 1449 05c6 5BBA     		rev16	r3, r3
 1450 05c8 9BB2     		uxth	r3, r3
 1451 05ca 002B     		cmp	r3, #0
 1452 05cc 7FF461AD 		bne	.L217
 1453 05d0 2368     		ldr	r3, [r4]
 1454 05d2 1B68     		ldr	r3, [r3]
 1455 05d4 1B69     		ldr	r3, [r3, #16]
 1456 05d6 9847     		blx	r3
 1457 05d8 2068     		ldr	r0, [r4]
 1458 05da 4368     		ldr	r3, [r0, #4]
 1459 05dc 80F82560 		strb	r6, [r0, #37]
 1460 05e0 B340     		lsls	r3, r3, r6
 1461 05e2 4360     		str	r3, [r0, #4]
 1462 05e4 E0E5     		b	.L216
 1463              	.L228:
 1464 05e6 1849     		ldr	r1, .L387+8
 1465 05e8 20E7     		b	.L198
 1466              	.L218:
 1467 05ea 2068     		ldr	r0, [r4]
 1468 05ec DCE5     		b	.L216
 1469              	.L195:
 1470 05ee 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1471 05f2 0268     		ldr	r2, [r0]
 1472 05f4 0033     		adds	r3, r3, #0
 1473 05f6 1668     		ldr	r6, [r2]
 1474 05f8 4168     		ldr	r1, [r0, #4]
 1475 05fa 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1476 05fc 18BF     		it	ne
 1477 05fe 0123     		movne	r3, #1
 1478 0600 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1479 0602 B047     		blx	r6
 1480 0604 39E7     		b	.L200
 1481              	.L382:
 1482 0606 2368     		ldr	r3, [r4]
ARM GAS  /tmp/ccwSpz6b.s 			page 27


 1483 0608 1049     		ldr	r1, .L387+12
 1484 060a 1B68     		ldr	r3, [r3]
 1485 060c 43F20610 		movw	r0, #12550
 1486 0610 5B69     		ldr	r3, [r3, #20]
 1487 0612 9847     		blx	r3
 1488 0614 0028     		cmp	r0, #0
 1489 0616 3FF41FAD 		beq	.L363
 1490 061a 2368     		ldr	r3, [r4]
 1491 061c 1B68     		ldr	r3, [r3]
 1492 061e 9B69     		ldr	r3, [r3, #24]
 1493 0620 9847     		blx	r3
 1494 0622 0606     		lsls	r6, r0, #24
 1495 0624 3FF518AD 		bmi	.L363
 1496 0628 0123     		movs	r3, #1
 1497 062a 2068     		ldr	r0, [r4]
 1498 062c 0849     		ldr	r1, .L387+16
 1499 062e 0268     		ldr	r2, [r0]
 1500 0630 80F82530 		strb	r3, [r0, #37]
 1501 0634 1668     		ldr	r6, [r2]
 1502 0636 4160     		str	r1, [r0, #4]
 1503 0638 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1504 063a C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1505 063c B047     		blx	r6
 1506 063e 1CE7     		b	.L200
 1507              	.L388:
 1508              		.align	2
 1509              	.L387:
 1510 0640 01FFFF80 		.word	-2130706687
 1511 0644 06110800 		.word	528646
 1512 0648 0001B701 		.word	28770560
 1513 064c 0001B903 		.word	62456064
 1514 0650 00751903 		.word	52000000
 1515              		.size	sd_mmc_check, .-sd_mmc_check
 1516              		.section	.text.sd_mmc_get_type,"ax",%progbits
 1517              		.align	1
 1518              		.p2align 2,,3
 1519              		.global	sd_mmc_get_type
 1520              		.syntax unified
 1521              		.thumb
 1522              		.thumb_func
 1523              		.fpu softvfp
 1524              		.type	sd_mmc_get_type, %function
 1525              	sd_mmc_get_type:
 1526              		@ args = 0, pretend = 0, frame = 0
 1527              		@ frame_needed = 0, uses_anonymous_args = 0
 1528 0000 0128     		cmp	r0, #1
 1529 0002 01D9     		bls	.L398
 1530 0004 0020     		movs	r0, #0
 1531 0006 7047     		bx	lr
 1532              	.L398:
 1533 0008 08B5     		push	{r3, lr}
 1534 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1535 000e 38B9     		cbnz	r0, .L392
 1536 0010 064B     		ldr	r3, .L400
 1537 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1538 0014 012B     		cmp	r3, #1
 1539 0016 05D9     		bls	.L399
ARM GAS  /tmp/ccwSpz6b.s 			page 28


 1540              	.L393:
 1541 0018 054B     		ldr	r3, .L400+4
 1542 001a 1B68     		ldr	r3, [r3]
 1543 001c 587C     		ldrb	r0, [r3, #17]	@ zero_extendqisi2
 1544 001e 08BD     		pop	{r3, pc}
 1545              	.L392:
 1546 0020 0020     		movs	r0, #0
 1547 0022 08BD     		pop	{r3, pc}
 1548              	.L399:
 1549 0024 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1550 0028 F6E7     		b	.L393
 1551              	.L401:
 1552 002a 00BF     		.align	2
 1553              	.L400:
 1554 002c 00000000 		.word	.LANCHOR5
 1555 0030 00000000 		.word	.LANCHOR0
 1556              		.size	sd_mmc_get_type, .-sd_mmc_get_type
 1557              		.section	.text.sd_mmc_get_version,"ax",%progbits
 1558              		.align	1
 1559              		.p2align 2,,3
 1560              		.global	sd_mmc_get_version
 1561              		.syntax unified
 1562              		.thumb
 1563              		.thumb_func
 1564              		.fpu softvfp
 1565              		.type	sd_mmc_get_version, %function
 1566              	sd_mmc_get_version:
 1567              		@ args = 0, pretend = 0, frame = 0
 1568              		@ frame_needed = 0, uses_anonymous_args = 0
 1569 0000 0128     		cmp	r0, #1
 1570 0002 01D9     		bls	.L411
 1571 0004 0020     		movs	r0, #0
 1572 0006 7047     		bx	lr
 1573              	.L411:
 1574 0008 08B5     		push	{r3, lr}
 1575 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1576 000e 38B9     		cbnz	r0, .L405
 1577 0010 064B     		ldr	r3, .L413
 1578 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1579 0014 012B     		cmp	r3, #1
 1580 0016 05D9     		bls	.L412
 1581              	.L406:
 1582 0018 054B     		ldr	r3, .L413+4
 1583 001a 1B68     		ldr	r3, [r3]
 1584 001c 987C     		ldrb	r0, [r3, #18]	@ zero_extendqisi2
 1585 001e 08BD     		pop	{r3, pc}
 1586              	.L405:
 1587 0020 0020     		movs	r0, #0
 1588 0022 08BD     		pop	{r3, pc}
 1589              	.L412:
 1590 0024 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1591 0028 F6E7     		b	.L406
 1592              	.L414:
 1593 002a 00BF     		.align	2
 1594              	.L413:
 1595 002c 00000000 		.word	.LANCHOR5
 1596 0030 00000000 		.word	.LANCHOR0
ARM GAS  /tmp/ccwSpz6b.s 			page 29


 1597              		.size	sd_mmc_get_version, .-sd_mmc_get_version
 1598              		.section	.text.sd_mmc_get_capacity,"ax",%progbits
 1599              		.align	1
 1600              		.p2align 2,,3
 1601              		.global	sd_mmc_get_capacity
 1602              		.syntax unified
 1603              		.thumb
 1604              		.thumb_func
 1605              		.fpu softvfp
 1606              		.type	sd_mmc_get_capacity, %function
 1607              	sd_mmc_get_capacity:
 1608              		@ args = 0, pretend = 0, frame = 0
 1609              		@ frame_needed = 0, uses_anonymous_args = 0
 1610 0000 0128     		cmp	r0, #1
 1611 0002 01D9     		bls	.L424
 1612 0004 0020     		movs	r0, #0
 1613 0006 7047     		bx	lr
 1614              	.L424:
 1615 0008 08B5     		push	{r3, lr}
 1616 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1617 000e 38B9     		cbnz	r0, .L418
 1618 0010 064B     		ldr	r3, .L426
 1619 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1620 0014 012B     		cmp	r3, #1
 1621 0016 05D9     		bls	.L425
 1622              	.L419:
 1623 0018 054B     		ldr	r3, .L426+4
 1624 001a 1B68     		ldr	r3, [r3]
 1625 001c 9868     		ldr	r0, [r3, #8]
 1626 001e 08BD     		pop	{r3, pc}
 1627              	.L418:
 1628 0020 0020     		movs	r0, #0
 1629 0022 08BD     		pop	{r3, pc}
 1630              	.L425:
 1631 0024 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1632 0028 F6E7     		b	.L419
 1633              	.L427:
 1634 002a 00BF     		.align	2
 1635              	.L426:
 1636 002c 00000000 		.word	.LANCHOR5
 1637 0030 00000000 		.word	.LANCHOR0
 1638              		.size	sd_mmc_get_capacity, .-sd_mmc_get_capacity
 1639              		.section	.text.sd_mmc_is_write_protected,"ax",%progbits
 1640              		.align	1
 1641              		.p2align 2,,3
 1642              		.global	sd_mmc_is_write_protected
 1643              		.syntax unified
 1644              		.thumb
 1645              		.thumb_func
 1646              		.fpu softvfp
 1647              		.type	sd_mmc_is_write_protected, %function
 1648              	sd_mmc_is_write_protected:
 1649              		@ args = 0, pretend = 0, frame = 0
 1650              		@ frame_needed = 0, uses_anonymous_args = 0
 1651 0000 08B5     		push	{r3, lr}
 1652 0002 084B     		ldr	r3, .L432
 1653 0004 00EB8000 		add	r0, r0, r0, lsl #2
ARM GAS  /tmp/ccwSpz6b.s 			page 30


 1654 0008 03EBC003 		add	r3, r3, r0, lsl #3
 1655 000c 187B     		ldrb	r0, [r3, #12]	@ zero_extendqisi2
 1656 000e FF28     		cmp	r0, #255
 1657 0010 05D0     		beq	.L430
 1658 0012 FFF7FEFF 		bl	digitalRead
 1659 0016 80F00100 		eor	r0, r0, #1
 1660 001a C0B2     		uxtb	r0, r0
 1661 001c 08BD     		pop	{r3, pc}
 1662              	.L430:
 1663 001e 0020     		movs	r0, #0
 1664 0020 08BD     		pop	{r3, pc}
 1665              	.L433:
 1666 0022 00BF     		.align	2
 1667              	.L432:
 1668 0024 00000000 		.word	.LANCHOR4
 1669              		.size	sd_mmc_is_write_protected, .-sd_mmc_is_write_protected
 1670              		.section	.text.sd_mmc_unmount,"ax",%progbits
 1671              		.align	1
 1672              		.p2align 2,,3
 1673              		.global	sd_mmc_unmount
 1674              		.syntax unified
 1675              		.thumb
 1676              		.thumb_func
 1677              		.fpu softvfp
 1678              		.type	sd_mmc_unmount, %function
 1679              	sd_mmc_unmount:
 1680              		@ args = 0, pretend = 0, frame = 0
 1681              		@ frame_needed = 0, uses_anonymous_args = 0
 1682              		@ link register save eliminated.
 1683 0000 0422     		movs	r2, #4
 1684 0002 034B     		ldr	r3, .L435
 1685 0004 00EB8000 		add	r0, r0, r0, lsl #2
 1686 0008 03EBC003 		add	r3, r3, r0, lsl #3
 1687 000c 1A74     		strb	r2, [r3, #16]
 1688 000e 7047     		bx	lr
 1689              	.L436:
 1690              		.align	2
 1691              	.L435:
 1692 0010 00000000 		.word	.LANCHOR4
 1693              		.size	sd_mmc_unmount, .-sd_mmc_unmount
 1694              		.section	.text.sd_mmc_get_interface_speed,"ax",%progbits
 1695              		.align	1
 1696              		.p2align 2,,3
 1697              		.global	sd_mmc_get_interface_speed
 1698              		.syntax unified
 1699              		.thumb
 1700              		.thumb_func
 1701              		.fpu softvfp
 1702              		.type	sd_mmc_get_interface_speed, %function
 1703              	sd_mmc_get_interface_speed:
 1704              		@ args = 0, pretend = 0, frame = 0
 1705              		@ frame_needed = 0, uses_anonymous_args = 0
 1706              		@ link register save eliminated.
 1707 0000 034B     		ldr	r3, .L438
 1708 0002 00EB8000 		add	r0, r0, r0, lsl #2
 1709 0006 53F83030 		ldr	r3, [r3, r0, lsl #3]
 1710 000a 1B6C     		ldr	r3, [r3, #64]
ARM GAS  /tmp/ccwSpz6b.s 			page 31


 1711 000c 1847     		bx	r3
 1712              	.L439:
 1713 000e 00BF     		.align	2
 1714              	.L438:
 1715 0010 00000000 		.word	.LANCHOR4
 1716              		.size	sd_mmc_get_interface_speed, .-sd_mmc_get_interface_speed
 1717              		.section	.text.sd_mmc_init_read_blocks,"ax",%progbits
 1718              		.align	1
 1719              		.p2align 2,,3
 1720              		.global	sd_mmc_init_read_blocks
 1721              		.syntax unified
 1722              		.thumb
 1723              		.thumb_func
 1724              		.fpu softvfp
 1725              		.type	sd_mmc_init_read_blocks, %function
 1726              	sd_mmc_init_read_blocks:
 1727              		@ args = 0, pretend = 0, frame = 0
 1728              		@ frame_needed = 0, uses_anonymous_args = 0
 1729 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1730 0002 0128     		cmp	r0, #1
 1731 0004 83B0     		sub	sp, sp, #12
 1732 0006 03D9     		bls	.L457
 1733 0008 0424     		movs	r4, #4
 1734              	.L441:
 1735 000a 2046     		mov	r0, r4
 1736 000c 03B0     		add	sp, sp, #12
 1737              		@ sp needed
 1738 000e F0BD     		pop	{r4, r5, r6, r7, pc}
 1739              	.L457:
 1740 0010 0E46     		mov	r6, r1
 1741 0012 1546     		mov	r5, r2
 1742 0014 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1743 0018 0446     		mov	r4, r0
 1744 001a 0028     		cmp	r0, #0
 1745 001c F5D1     		bne	.L441
 1746 001e FFF7FEFF 		bl	sd_mmc_cmd13
 1747 0022 28B3     		cbz	r0, .L455
 1748 0024 184F     		ldr	r7, .L460
 1749 0026 1949     		ldr	r1, .L460+4
 1750 0028 3B68     		ldr	r3, [r7]
 1751 002a 1948     		ldr	r0, .L460+8
 1752 002c 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1753 002e 012D     		cmp	r5, #1
 1754 0030 98BF     		it	ls
 1755 0032 0846     		movls	r0, r1
 1756 0034 1207     		lsls	r2, r2, #28
 1757 0036 4FF00102 		mov	r2, #1
 1758 003a 1B68     		ldr	r3, [r3]
 1759 003c 58BF     		it	pl
 1760 003e 7602     		lslpl	r6, r6, #9
 1761 0040 0092     		str	r2, [sp]
 1762 0042 3146     		mov	r1, r6
 1763 0044 4FF40072 		mov	r2, #512
 1764 0048 1E6A     		ldr	r6, [r3, #32]
 1765 004a 2B46     		mov	r3, r5
 1766 004c B047     		blx	r6
 1767 004e 78B1     		cbz	r0, .L455
ARM GAS  /tmp/ccwSpz6b.s 			page 32


 1768 0050 3B68     		ldr	r3, [r7]
 1769 0052 1B68     		ldr	r3, [r3]
 1770 0054 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 1771 0058 22B1     		cbz	r2, .L458
 1772              	.L448:
 1773 005a 0E4A     		ldr	r2, .L460+12
 1774 005c 0E4B     		ldr	r3, .L460+16
 1775 005e 1580     		strh	r5, [r2]	@ movhi
 1776 0060 1D80     		strh	r5, [r3]	@ movhi
 1777 0062 D2E7     		b	.L441
 1778              	.L458:
 1779 0064 9B69     		ldr	r3, [r3, #24]
 1780 0066 9847     		blx	r3
 1781 0068 0C4B     		ldr	r3, .L460+20
 1782 006a 0340     		ands	r3, r3, r0
 1783 006c 002B     		cmp	r3, #0
 1784 006e F4D0     		beq	.L448
 1785              	.L455:
 1786 0070 0B4B     		ldr	r3, .L460+24
 1787 0072 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1788 0074 012B     		cmp	r3, #1
 1789 0076 03D9     		bls	.L459
 1790              	.L456:
 1791 0078 0524     		movs	r4, #5
 1792 007a 2046     		mov	r0, r4
 1793 007c 03B0     		add	sp, sp, #12
 1794              		@ sp needed
 1795 007e F0BD     		pop	{r4, r5, r6, r7, pc}
 1796              	.L459:
 1797 0080 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1798 0084 F8E7     		b	.L456
 1799              	.L461:
 1800 0086 00BF     		.align	2
 1801              	.L460:
 1802 0088 00000000 		.word	.LANCHOR0
 1803 008c 11110800 		.word	528657
 1804 0090 12111000 		.word	1052946
 1805 0094 00000000 		.word	.LANCHOR8
 1806 0098 00000000 		.word	.LANCHOR9
 1807 009c 000058E4 		.word	-463994880
 1808 00a0 00000000 		.word	.LANCHOR5
 1809              		.size	sd_mmc_init_read_blocks, .-sd_mmc_init_read_blocks
 1810              		.section	.text.sd_mmc_start_read_blocks,"ax",%progbits
 1811              		.align	1
 1812              		.p2align 2,,3
 1813              		.global	sd_mmc_start_read_blocks
 1814              		.syntax unified
 1815              		.thumb
 1816              		.thumb_func
 1817              		.fpu softvfp
 1818              		.type	sd_mmc_start_read_blocks, %function
 1819              	sd_mmc_start_read_blocks:
 1820              		@ args = 0, pretend = 0, frame = 0
 1821              		@ frame_needed = 0, uses_anonymous_args = 0
 1822 0000 094B     		ldr	r3, .L466
 1823 0002 10B5     		push	{r4, lr}
 1824 0004 1B68     		ldr	r3, [r3]
ARM GAS  /tmp/ccwSpz6b.s 			page 33


 1825 0006 0C46     		mov	r4, r1
 1826 0008 1B68     		ldr	r3, [r3]
 1827 000a 1B6B     		ldr	r3, [r3, #48]
 1828 000c 9847     		blx	r3
 1829 000e 20B9     		cbnz	r0, .L463
 1830 0010 0346     		mov	r3, r0
 1831 0012 064A     		ldr	r2, .L466+4
 1832 0014 0520     		movs	r0, #5
 1833 0016 1380     		strh	r3, [r2]	@ movhi
 1834 0018 10BD     		pop	{r4, pc}
 1835              	.L463:
 1836 001a 044A     		ldr	r2, .L466+4
 1837 001c 0020     		movs	r0, #0
 1838 001e 1388     		ldrh	r3, [r2]
 1839 0020 1C1B     		subs	r4, r3, r4
 1840 0022 1480     		strh	r4, [r2]	@ movhi
 1841 0024 10BD     		pop	{r4, pc}
 1842              	.L467:
 1843 0026 00BF     		.align	2
 1844              	.L466:
 1845 0028 00000000 		.word	.LANCHOR0
 1846 002c 00000000 		.word	.LANCHOR8
 1847              		.size	sd_mmc_start_read_blocks, .-sd_mmc_start_read_blocks
 1848              		.section	.text.sd_mmc_wait_end_of_read_blocks,"ax",%progbits
 1849              		.align	1
 1850              		.p2align 2,,3
 1851              		.global	sd_mmc_wait_end_of_read_blocks
 1852              		.syntax unified
 1853              		.thumb
 1854              		.thumb_func
 1855              		.fpu softvfp
 1856              		.type	sd_mmc_wait_end_of_read_blocks, %function
 1857              	sd_mmc_wait_end_of_read_blocks:
 1858              		@ args = 0, pretend = 0, frame = 0
 1859              		@ frame_needed = 0, uses_anonymous_args = 0
 1860 0000 38B5     		push	{r3, r4, r5, lr}
 1861 0002 174C     		ldr	r4, .L488
 1862 0004 0546     		mov	r5, r0
 1863 0006 2368     		ldr	r3, [r4]
 1864 0008 1B68     		ldr	r3, [r3]
 1865 000a 5B6B     		ldr	r3, [r3, #52]
 1866 000c 9847     		blx	r3
 1867 000e 08B9     		cbnz	r0, .L484
 1868 0010 0520     		movs	r0, #5
 1869 0012 38BD     		pop	{r3, r4, r5, pc}
 1870              	.L484:
 1871 0014 A5B9     		cbnz	r5, .L485
 1872 0016 134B     		ldr	r3, .L488+4
 1873 0018 1B88     		ldrh	r3, [r3]
 1874 001a 7BB9     		cbnz	r3, .L483
 1875              	.L471:
 1876 001c 124B     		ldr	r3, .L488+8
 1877 001e 1B88     		ldrh	r3, [r3]
 1878 0020 012B     		cmp	r3, #1
 1879 0022 07D0     		beq	.L482
 1880 0024 2368     		ldr	r3, [r4]
 1881 0026 0021     		movs	r1, #0
ARM GAS  /tmp/ccwSpz6b.s 			page 34


 1882 0028 1B68     		ldr	r3, [r3]
 1883 002a 43F20C10 		movw	r0, #12556
 1884 002e 5B6A     		ldr	r3, [r3, #36]
 1885 0030 9847     		blx	r3
 1886 0032 60B1     		cbz	r0, .L486
 1887              	.L482:
 1888 0034 0D4B     		ldr	r3, .L488+12
 1889 0036 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1890 0038 012B     		cmp	r3, #1
 1891 003a 05D9     		bls	.L487
 1892              	.L483:
 1893 003c 0020     		movs	r0, #0
 1894 003e 38BD     		pop	{r3, r4, r5, pc}
 1895              	.L485:
 1896 0040 0022     		movs	r2, #0
 1897 0042 084B     		ldr	r3, .L488+4
 1898 0044 1A80     		strh	r2, [r3]	@ movhi
 1899 0046 E9E7     		b	.L471
 1900              	.L487:
 1901 0048 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1902 004c F6E7     		b	.L483
 1903              	.L486:
 1904 004e 2368     		ldr	r3, [r4]
 1905 0050 0146     		mov	r1, r0
 1906 0052 1B68     		ldr	r3, [r3]
 1907 0054 43F20C10 		movw	r0, #12556
 1908 0058 5B6A     		ldr	r3, [r3, #36]
 1909 005a 9847     		blx	r3
 1910 005c EAE7     		b	.L482
 1911              	.L489:
 1912 005e 00BF     		.align	2
 1913              	.L488:
 1914 0060 00000000 		.word	.LANCHOR0
 1915 0064 00000000 		.word	.LANCHOR8
 1916 0068 00000000 		.word	.LANCHOR9
 1917 006c 00000000 		.word	.LANCHOR5
 1918              		.size	sd_mmc_wait_end_of_read_blocks, .-sd_mmc_wait_end_of_read_blocks
 1919              		.section	.text.sd_mmc_init_write_blocks,"ax",%progbits
 1920              		.align	1
 1921              		.p2align 2,,3
 1922              		.global	sd_mmc_init_write_blocks
 1923              		.syntax unified
 1924              		.thumb
 1925              		.thumb_func
 1926              		.fpu softvfp
 1927              		.type	sd_mmc_init_write_blocks, %function
 1928              	sd_mmc_init_write_blocks:
 1929              		@ args = 0, pretend = 0, frame = 0
 1930              		@ frame_needed = 0, uses_anonymous_args = 0
 1931 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1932 0002 0128     		cmp	r0, #1
 1933 0004 83B0     		sub	sp, sp, #12
 1934 0006 03D9     		bls	.L517
 1935 0008 0425     		movs	r5, #4
 1936              	.L503:
 1937 000a 2846     		mov	r0, r5
 1938 000c 03B0     		add	sp, sp, #12
ARM GAS  /tmp/ccwSpz6b.s 			page 35


 1939              		@ sp needed
 1940 000e F0BD     		pop	{r4, r5, r6, r7, pc}
 1941              	.L517:
 1942 0010 0446     		mov	r4, r0
 1943 0012 0F46     		mov	r7, r1
 1944 0014 1646     		mov	r6, r2
 1945 0016 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1946 001a 0546     		mov	r5, r0
 1947 001c 0028     		cmp	r0, #0
 1948 001e F4D1     		bne	.L503
 1949 0020 244B     		ldr	r3, .L520
 1950 0022 04EB8404 		add	r4, r4, r4, lsl #2
 1951 0026 03EBC404 		add	r4, r3, r4, lsl #3
 1952 002a 207B     		ldrb	r0, [r4, #12]	@ zero_extendqisi2
 1953 002c FF28     		cmp	r0, #255
 1954 002e 0AD0     		beq	.L492
 1955 0030 FFF7FEFF 		bl	digitalRead
 1956 0034 38B9     		cbnz	r0, .L492
 1957 0036 204B     		ldr	r3, .L520+4
 1958 0038 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1959 003a 012B     		cmp	r3, #1
 1960 003c 32D9     		bls	.L499
 1961 003e 0725     		movs	r5, #7
 1962 0040 2846     		mov	r0, r5
 1963 0042 03B0     		add	sp, sp, #12
 1964              		@ sp needed
 1965 0044 F0BD     		pop	{r4, r5, r6, r7, pc}
 1966              	.L492:
 1967 0046 1D4C     		ldr	r4, .L520+8
 1968 0048 1D48     		ldr	r0, .L520+12
 1969 004a 2368     		ldr	r3, [r4]
 1970 004c 1D49     		ldr	r1, .L520+16
 1971 004e 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1972 0050 012E     		cmp	r6, #1
 1973 0052 98BF     		it	ls
 1974 0054 0846     		movls	r0, r1
 1975 0056 1207     		lsls	r2, r2, #28
 1976 0058 00D4     		bmi	.L494
 1977 005a 7F02     		lsls	r7, r7, #9
 1978              	.L494:
 1979 005c 0122     		movs	r2, #1
 1980 005e 1B68     		ldr	r3, [r3]
 1981 0060 0092     		str	r2, [sp]
 1982 0062 3946     		mov	r1, r7
 1983 0064 4FF40072 		mov	r2, #512
 1984 0068 1F6A     		ldr	r7, [r3, #32]
 1985 006a 3346     		mov	r3, r6
 1986 006c B847     		blx	r7
 1987 006e 88B1     		cbz	r0, .L513
 1988 0070 2368     		ldr	r3, [r4]
 1989 0072 1B68     		ldr	r3, [r3]
 1990 0074 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 1991 0078 32B1     		cbz	r2, .L518
 1992              	.L497:
 1993 007a 2846     		mov	r0, r5
 1994 007c 124A     		ldr	r2, .L520+20
 1995 007e 134B     		ldr	r3, .L520+24
ARM GAS  /tmp/ccwSpz6b.s 			page 36


 1996 0080 1680     		strh	r6, [r2]	@ movhi
 1997 0082 1E80     		strh	r6, [r3]	@ movhi
 1998 0084 03B0     		add	sp, sp, #12
 1999              		@ sp needed
 2000 0086 F0BD     		pop	{r4, r5, r6, r7, pc}
 2001              	.L518:
 2002 0088 9B69     		ldr	r3, [r3, #24]
 2003 008a 9847     		blx	r3
 2004 008c 104B     		ldr	r3, .L520+28
 2005 008e 0340     		ands	r3, r3, r0
 2006 0090 002B     		cmp	r3, #0
 2007 0092 F2D0     		beq	.L497
 2008              	.L513:
 2009 0094 084B     		ldr	r3, .L520+4
 2010 0096 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2011 0098 012B     		cmp	r3, #1
 2012 009a 07D9     		bls	.L519
 2013              	.L514:
 2014 009c 0525     		movs	r5, #5
 2015 009e 2846     		mov	r0, r5
 2016 00a0 03B0     		add	sp, sp, #12
 2017              		@ sp needed
 2018 00a2 F0BD     		pop	{r4, r5, r6, r7, pc}
 2019              	.L499:
 2020 00a4 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2021 00a8 0725     		movs	r5, #7
 2022 00aa AEE7     		b	.L503
 2023              	.L519:
 2024 00ac FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2025 00b0 F4E7     		b	.L514
 2026              	.L521:
 2027 00b2 00BF     		.align	2
 2028              	.L520:
 2029 00b4 00000000 		.word	.LANCHOR4
 2030 00b8 00000000 		.word	.LANCHOR5
 2031 00bc 00000000 		.word	.LANCHOR0
 2032 00c0 19911000 		.word	1085721
 2033 00c4 18910800 		.word	561432
 2034 00c8 00000000 		.word	.LANCHOR8
 2035 00cc 00000000 		.word	.LANCHOR9
 2036 00d0 000058E4 		.word	-463994880
 2037              		.size	sd_mmc_init_write_blocks, .-sd_mmc_init_write_blocks
 2038              		.section	.text.sd_mmc_start_write_blocks,"ax",%progbits
 2039              		.align	1
 2040              		.p2align 2,,3
 2041              		.global	sd_mmc_start_write_blocks
 2042              		.syntax unified
 2043              		.thumb
 2044              		.thumb_func
 2045              		.fpu softvfp
 2046              		.type	sd_mmc_start_write_blocks, %function
 2047              	sd_mmc_start_write_blocks:
 2048              		@ args = 0, pretend = 0, frame = 0
 2049              		@ frame_needed = 0, uses_anonymous_args = 0
 2050 0000 094B     		ldr	r3, .L526
 2051 0002 10B5     		push	{r4, lr}
 2052 0004 1B68     		ldr	r3, [r3]
ARM GAS  /tmp/ccwSpz6b.s 			page 37


 2053 0006 0C46     		mov	r4, r1
 2054 0008 1B68     		ldr	r3, [r3]
 2055 000a 9B6B     		ldr	r3, [r3, #56]
 2056 000c 9847     		blx	r3
 2057 000e 20B9     		cbnz	r0, .L523
 2058 0010 0346     		mov	r3, r0
 2059 0012 064A     		ldr	r2, .L526+4
 2060 0014 0520     		movs	r0, #5
 2061 0016 1380     		strh	r3, [r2]	@ movhi
 2062 0018 10BD     		pop	{r4, pc}
 2063              	.L523:
 2064 001a 044A     		ldr	r2, .L526+4
 2065 001c 0020     		movs	r0, #0
 2066 001e 1388     		ldrh	r3, [r2]
 2067 0020 1C1B     		subs	r4, r3, r4
 2068 0022 1480     		strh	r4, [r2]	@ movhi
 2069 0024 10BD     		pop	{r4, pc}
 2070              	.L527:
 2071 0026 00BF     		.align	2
 2072              	.L526:
 2073 0028 00000000 		.word	.LANCHOR0
 2074 002c 00000000 		.word	.LANCHOR8
 2075              		.size	sd_mmc_start_write_blocks, .-sd_mmc_start_write_blocks
 2076              		.section	.text.sd_mmc_wait_end_of_write_blocks,"ax",%progbits
 2077              		.align	1
 2078              		.p2align 2,,3
 2079              		.global	sd_mmc_wait_end_of_write_blocks
 2080              		.syntax unified
 2081              		.thumb
 2082              		.thumb_func
 2083              		.fpu softvfp
 2084              		.type	sd_mmc_wait_end_of_write_blocks, %function
 2085              	sd_mmc_wait_end_of_write_blocks:
 2086              		@ args = 0, pretend = 0, frame = 0
 2087              		@ frame_needed = 0, uses_anonymous_args = 0
 2088 0000 38B5     		push	{r3, r4, r5, lr}
 2089 0002 184C     		ldr	r4, .L550
 2090 0004 0546     		mov	r5, r0
 2091 0006 2368     		ldr	r3, [r4]
 2092 0008 1B68     		ldr	r3, [r3]
 2093 000a DB6B     		ldr	r3, [r3, #60]
 2094 000c 9847     		blx	r3
 2095 000e 08B9     		cbnz	r0, .L546
 2096              	.L544:
 2097 0010 0520     		movs	r0, #5
 2098 0012 38BD     		pop	{r3, r4, r5, pc}
 2099              	.L546:
 2100 0014 8DB9     		cbnz	r5, .L547
 2101 0016 144B     		ldr	r3, .L550+4
 2102 0018 1B88     		ldrh	r3, [r3]
 2103 001a 63B9     		cbnz	r3, .L545
 2104              	.L532:
 2105 001c 134B     		ldr	r3, .L550+8
 2106 001e 1B88     		ldrh	r3, [r3]
 2107 0020 012B     		cmp	r3, #1
 2108 0022 04D0     		beq	.L543
 2109 0024 2368     		ldr	r3, [r4]
ARM GAS  /tmp/ccwSpz6b.s 			page 38


 2110 0026 1B68     		ldr	r3, [r3]
 2111 0028 93F84810 		ldrb	r1, [r3, #72]	@ zero_extendqisi2
 2112 002c 49B1     		cbz	r1, .L548
 2113              	.L543:
 2114 002e 104B     		ldr	r3, .L550+12
 2115 0030 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2116 0032 012B     		cmp	r3, #1
 2117 0034 12D9     		bls	.L549
 2118              	.L545:
 2119 0036 0020     		movs	r0, #0
 2120 0038 38BD     		pop	{r3, r4, r5, pc}
 2121              	.L547:
 2122 003a 0022     		movs	r2, #0
 2123 003c 0A4B     		ldr	r3, .L550+4
 2124 003e 1A80     		strh	r2, [r3]	@ movhi
 2125 0040 ECE7     		b	.L532
 2126              	.L548:
 2127 0042 5B6A     		ldr	r3, [r3, #36]
 2128 0044 43F20C10 		movw	r0, #12556
 2129 0048 9847     		blx	r3
 2130 004a 0028     		cmp	r0, #0
 2131 004c EFD1     		bne	.L543
 2132 004e 084B     		ldr	r3, .L550+12
 2133 0050 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2134 0052 012B     		cmp	r3, #1
 2135 0054 DCD8     		bhi	.L544
 2136 0056 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2137 005a D9E7     		b	.L544
 2138              	.L549:
 2139 005c FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2140 0060 E9E7     		b	.L545
 2141              	.L551:
 2142 0062 00BF     		.align	2
 2143              	.L550:
 2144 0064 00000000 		.word	.LANCHOR0
 2145 0068 00000000 		.word	.LANCHOR8
 2146 006c 00000000 		.word	.LANCHOR9
 2147 0070 00000000 		.word	.LANCHOR5
 2148              		.size	sd_mmc_wait_end_of_write_blocks, .-sd_mmc_wait_end_of_write_blocks
 2149              		.global	mmc_trans_multipliers
 2150              		.global	sd_trans_multipliers
 2151              		.global	sd_mmc_trans_units
 2152              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 2153              		.align	2
 2154              		.type	cpu_irq_critical_section_counter, %object
 2155              		.size	cpu_irq_critical_section_counter, 4
 2156              	cpu_irq_critical_section_counter:
 2157 0000 00000000 		.space	4
 2158              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 2159              		.type	cpu_irq_prev_interrupt_state, %object
 2160              		.size	cpu_irq_prev_interrupt_state, 1
 2161              	cpu_irq_prev_interrupt_state:
 2162 0000 00       		.space	1
 2163              		.section	.bss.sd_mmc_card,"aw",%nobits
 2164              		.align	2
 2165              		.set	.LANCHOR0,. + 0
 2166              		.type	sd_mmc_card, %object
ARM GAS  /tmp/ccwSpz6b.s 			page 39


 2167              		.size	sd_mmc_card, 4
 2168              	sd_mmc_card:
 2169 0000 00000000 		.space	4
 2170              		.section	.bss.sd_mmc_cards,"aw",%nobits
 2171              		.align	2
 2172              		.set	.LANCHOR4,. + 0
 2173              		.type	sd_mmc_cards, %object
 2174              		.size	sd_mmc_cards, 80
 2175              	sd_mmc_cards:
 2176 0000 00000000 		.space	80
 2176      00000000 
 2176      00000000 
 2176      00000000 
 2176      00000000 
 2177              		.section	.bss.sd_mmc_nb_block_remaining,"aw",%nobits
 2178              		.align	1
 2179              		.set	.LANCHOR8,. + 0
 2180              		.type	sd_mmc_nb_block_remaining, %object
 2181              		.size	sd_mmc_nb_block_remaining, 2
 2182              	sd_mmc_nb_block_remaining:
 2183 0000 0000     		.space	2
 2184              		.section	.bss.sd_mmc_nb_block_to_tranfer,"aw",%nobits
 2185              		.align	1
 2186              		.set	.LANCHOR9,. + 0
 2187              		.type	sd_mmc_nb_block_to_tranfer, %object
 2188              		.size	sd_mmc_nb_block_to_tranfer, 2
 2189              	sd_mmc_nb_block_to_tranfer:
 2190 0000 0000     		.space	2
 2191              		.section	.bss.sd_mmc_slot_sel,"aw",%nobits
 2192              		.set	.LANCHOR5,. + 0
 2193              		.type	sd_mmc_slot_sel, %object
 2194              		.size	sd_mmc_slot_sel, 1
 2195              	sd_mmc_slot_sel:
 2196 0000 00       		.space	1
 2197              		.section	.rodata.hsmciInterface,"a",%progbits
 2198              		.align	2
 2199              		.set	.LANCHOR6,. + 0
 2200              		.type	hsmciInterface, %object
 2201              		.size	hsmciInterface, 76
 2202              	hsmciInterface:
 2203 0000 00000000 		.word	hsmci_select_device
 2204 0004 00000000 		.word	hsmci_deselect_device
 2205 0008 00000000 		.word	hsmci_get_bus_width
 2206 000c 00000000 		.word	hsmci_is_high_speed_capable
 2207 0010 00000000 		.word	hsmci_send_clock
 2208 0014 00000000 		.word	hsmci_send_cmd
 2209 0018 00000000 		.word	hsmci_get_response
 2210 001c 00000000 		.word	hsmci_get_response_128
 2211 0020 00000000 		.word	hsmci_adtc_start
 2212 0024 00000000 		.word	hsmci_send_cmd
 2213 0028 00000000 		.word	hsmci_read_word
 2214 002c 00000000 		.word	hsmci_write_word
 2215 0030 00000000 		.word	hsmci_start_read_blocks
 2216 0034 00000000 		.word	hsmci_wait_end_of_read_blocks
 2217 0038 00000000 		.word	hsmci_start_write_blocks
 2218 003c 00000000 		.word	hsmci_wait_end_of_write_blocks
 2219 0040 00000000 		.word	hsmci_get_speed
ARM GAS  /tmp/ccwSpz6b.s 			page 40


 2220 0044 00000000 		.word	hsmci_set_idle_func
 2221 0048 00       		.byte	0
 2222 0049 000000   		.space	3
 2223              		.section	.rodata.mmc_trans_multipliers,"a",%progbits
 2224              		.align	2
 2225              		.set	.LANCHOR1,. + 0
 2226              		.type	mmc_trans_multipliers, %object
 2227              		.size	mmc_trans_multipliers, 64
 2228              	mmc_trans_multipliers:
 2229 0000 00000000 		.word	0
 2230 0004 0A000000 		.word	10
 2231 0008 0C000000 		.word	12
 2232 000c 0D000000 		.word	13
 2233 0010 0F000000 		.word	15
 2234 0014 14000000 		.word	20
 2235 0018 1A000000 		.word	26
 2236 001c 1E000000 		.word	30
 2237 0020 23000000 		.word	35
 2238 0024 28000000 		.word	40
 2239 0028 2D000000 		.word	45
 2240 002c 34000000 		.word	52
 2241 0030 37000000 		.word	55
 2242 0034 3C000000 		.word	60
 2243 0038 46000000 		.word	70
 2244 003c 50000000 		.word	80
 2245              		.section	.rodata.sd_mmc_trans_units,"a",%progbits
 2246              		.align	2
 2247              		.set	.LANCHOR2,. + 0
 2248              		.type	sd_mmc_trans_units, %object
 2249              		.size	sd_mmc_trans_units, 28
 2250              	sd_mmc_trans_units:
 2251 0000 0A000000 		.word	10
 2252 0004 64000000 		.word	100
 2253 0008 E8030000 		.word	1000
 2254 000c 10270000 		.word	10000
 2255 0010 00000000 		.word	0
 2256 0014 00000000 		.word	0
 2257 0018 00000000 		.word	0
 2258              		.section	.rodata.sd_trans_multipliers,"a",%progbits
 2259              		.align	2
 2260              		.set	.LANCHOR3,. + 0
 2261              		.type	sd_trans_multipliers, %object
 2262              		.size	sd_trans_multipliers, 64
 2263              	sd_trans_multipliers:
 2264 0000 00000000 		.word	0
 2265 0004 0A000000 		.word	10
 2266 0008 0C000000 		.word	12
 2267 000c 0D000000 		.word	13
 2268 0010 0F000000 		.word	15
 2269 0014 14000000 		.word	20
 2270 0018 19000000 		.word	25
 2271 001c 1E000000 		.word	30
 2272 0020 23000000 		.word	35
 2273 0024 28000000 		.word	40
 2274 0028 2D000000 		.word	45
 2275 002c 32000000 		.word	50
 2276 0030 37000000 		.word	55
ARM GAS  /tmp/ccwSpz6b.s 			page 41


 2277 0034 3C000000 		.word	60
 2278 0038 46000000 		.word	70
 2279 003c 50000000 		.word	80
 2280              		.section	.rodata.spiInterface,"a",%progbits
 2281              		.align	2
 2282              		.set	.LANCHOR7,. + 0
 2283              		.type	spiInterface, %object
 2284              		.size	spiInterface, 76
 2285              	spiInterface:
 2286 0000 00000000 		.word	sd_mmc_spi_select_device
 2287 0004 00000000 		.word	sd_mmc_spi_deselect_device
 2288 0008 00000000 		.word	sd_mmc_spi_get_bus_width
 2289 000c 00000000 		.word	sd_mmc_spi_is_high_speed_capable
 2290 0010 00000000 		.word	sd_mmc_spi_send_clock
 2291 0014 00000000 		.word	sd_mmc_spi_send_cmd
 2292 0018 00000000 		.word	sd_mmc_spi_get_response
 2293 001c 00000000 		.word	sd_mmc_spi_get_response_128
 2294 0020 00000000 		.word	sd_mmc_spi_adtc_start
 2295 0024 00000000 		.word	sd_mmc_spi_send_cmd
 2296 0028 00000000 		.word	sd_mmc_spi_read_word
 2297 002c 00000000 		.word	sd_mmc_spi_write_word
 2298 0030 00000000 		.word	sd_mmc_spi_start_read_blocks
 2299 0034 00000000 		.word	sd_mmc_spi_wait_end_of_read_blocks
 2300 0038 00000000 		.word	sd_mmc_spi_start_write_blocks
 2301 003c 00000000 		.word	sd_mmc_spi_wait_end_of_write_blocks
 2302 0040 00000000 		.word	spi_mmc_get_speed
 2303 0044 00000000 		.word	sd_mmc_spi_set_idle_func
 2304 0048 01       		.byte	1
 2305 0049 000000   		.space	3
 2306              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
