ARM GAS  /tmp/cc0SeAZp.s 			page 1


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
ARM GAS  /tmp/cc0SeAZp.s 			page 2


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
ARM GAS  /tmp/cc0SeAZp.s 			page 3


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
ARM GAS  /tmp/cc0SeAZp.s 			page 4


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
ARM GAS  /tmp/cc0SeAZp.s 			page 5


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
ARM GAS  /tmp/cc0SeAZp.s 			page 6


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
ARM GAS  /tmp/cc0SeAZp.s 			page 7


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
ARM GAS  /tmp/cc0SeAZp.s 			page 8


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
ARM GAS  /tmp/cc0SeAZp.s 			page 9


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
ARM GAS  /tmp/cc0SeAZp.s 			page 10


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
ARM GAS  /tmp/cc0SeAZp.s 			page 11


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
ARM GAS  /tmp/cc0SeAZp.s 			page 12


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
ARM GAS  /tmp/cc0SeAZp.s 			page 13


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
 710 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 711 0004 8946     		mov	r9, r1
 712 0006 0025     		movs	r5, #0
 713 0008 4FF00408 		mov	r8, #4
 714 000c 0E4C     		ldr	r4, .L147
 715 000e 0F4F     		ldr	r7, .L147+4
 716 0010 461E     		subs	r6, r0, #1
 717              	.L141:
 718 0012 84F81080 		strb	r8, [r4, #16]
 719 0016 16F8010F 		ldrb	r0, [r6, #1]!	@ zero_extendqisi2
 720 001a FF28     		cmp	r0, #255
 721 001c 2073     		strb	r0, [r4, #12]
 722 001e 03D0     		beq	.L140
 723 0020 0022     		movs	r2, #0
 724 0022 0121     		movs	r1, #1
 725 0024 FFF7FEFF 		bl	pinModeDuet
 726              	.L140:
 727 0028 E574     		strb	r5, [r4, #19]
 728 002a 0135     		adds	r5, r5, #1
 729 002c 022D     		cmp	r5, #2
 730 002e 2760     		str	r7, [r4]
 731 0030 04F12804 		add	r4, r4, #40
 732 0034 EDD1     		bne	.L141
 733 0036 FF22     		movs	r2, #255
 734 0038 054B     		ldr	r3, .L147+8
 735 003a 4846     		mov	r0, r9
 736 003c 1A70     		strb	r2, [r3]
 737 003e BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 738 0042 FFF7FEBF 		b	sd_mmc_spi_init
 739              	.L148:
 740 0046 00BF     		.align	2
 741              	.L147:
ARM GAS  /tmp/cc0SeAZp.s 			page 14


 742 0048 00000000 		.word	.LANCHOR4
 743 004c 00000000 		.word	.LANCHOR6
 744 0050 00000000 		.word	.LANCHOR5
 745              		.size	sd_mmc_init, .-sd_mmc_init
 746              		.section	.text.sd_mmc_nb_slot,"ax",%progbits
 747              		.align	1
 748              		.p2align 2,,3
 749              		.global	sd_mmc_nb_slot
 750              		.syntax unified
 751              		.thumb
 752              		.thumb_func
 753              		.fpu softvfp
 754              		.type	sd_mmc_nb_slot, %function
 755              	sd_mmc_nb_slot:
 756              		@ args = 0, pretend = 0, frame = 0
 757              		@ frame_needed = 0, uses_anonymous_args = 0
 758              		@ link register save eliminated.
 759 0000 0220     		movs	r0, #2
 760 0002 7047     		bx	lr
 761              		.size	sd_mmc_nb_slot, .-sd_mmc_nb_slot
 762              		.section	.text.sd_mmc_check,"ax",%progbits
 763              		.align	1
 764              		.p2align 2,,3
 765              		.global	sd_mmc_check
 766              		.syntax unified
 767              		.thumb
 768              		.thumb_func
 769              		.fpu softvfp
 770              		.type	sd_mmc_check, %function
 771              	sd_mmc_check:
 772              		@ args = 0, pretend = 0, frame = 72
 773              		@ frame_needed = 0, uses_anonymous_args = 0
 774 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 775 0002 0128     		cmp	r0, #1
 776 0004 95B0     		sub	sp, sp, #84
 777 0006 07D9     		bls	.L370
 778 0008 0424     		movs	r4, #4
 779              	.L151:
 780 000a 8E4B     		ldr	r3, .L381
 781 000c 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 782 000e 012B     		cmp	r3, #1
 783 0010 2AD9     		bls	.L362
 784              	.L230:
 785 0012 2046     		mov	r0, r4
 786 0014 15B0     		add	sp, sp, #84
 787              		@ sp needed
 788 0016 F0BD     		pop	{r4, r5, r6, r7, pc}
 789              	.L370:
 790 0018 0546     		mov	r5, r0
 791              	.L314:
 792 001a 2846     		mov	r0, r5
 793 001c FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 794 0020 0828     		cmp	r0, #8
 795 0022 0446     		mov	r4, r0
 796 0024 F9D0     		beq	.L314
 797 0026 0128     		cmp	r0, #1
 798 0028 EFD1     		bne	.L151
ARM GAS  /tmp/cc0SeAZp.s 			page 15


 799 002a 874C     		ldr	r4, .L381+4
 800 002c 2368     		ldr	r3, [r4]
 801 002e 1A68     		ldr	r2, [r3]
 802 0030 92F84850 		ldrb	r5, [r2, #72]	@ zero_extendqisi2
 803 0034 EDB1     		cbz	r5, .L155
 804 0036 0025     		movs	r5, #0
 805 0038 8DF80F50 		strb	r5, [sp, #15]
 806 003c 5874     		strb	r0, [r3, #17]
 807 003e 9D74     		strb	r5, [r3, #18]
 808 0040 DD81     		strh	r5, [r3, #14]	@ movhi
 809 0042 1369     		ldr	r3, [r2, #16]
 810 0044 9847     		blx	r3
 811 0046 2368     		ldr	r3, [r4]
 812 0048 2946     		mov	r1, r5
 813 004a 1B68     		ldr	r3, [r3]
 814 004c 4FF48850 		mov	r0, #4352
 815 0050 5B69     		ldr	r3, [r3, #20]
 816 0052 9847     		blx	r3
 817 0054 00BB     		cbnz	r0, .L371
 818              	.L168:
 819 0056 0025     		movs	r5, #0
 820              	.L361:
 821 0058 2368     		ldr	r3, [r4]
 822              	.L176:
 823 005a DDB1     		cbz	r5, .L218
 824 005c 0024     		movs	r4, #0
 825              	.L365:
 826 005e 794A     		ldr	r2, .L381
 827 0060 1C74     		strb	r4, [r3, #16]
 828 0062 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 829 0064 012B     		cmp	r3, #1
 830 0066 D4D8     		bhi	.L230
 831              	.L362:
 832 0068 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 833 006c 2046     		mov	r0, r4
 834 006e 15B0     		add	sp, sp, #84
 835              		@ sp needed
 836 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 837              	.L155:
 838 0072 8DF80F50 		strb	r5, [sp, #15]
 839 0076 5874     		strb	r0, [r3, #17]
 840 0078 9D74     		strb	r5, [r3, #18]
 841 007a 1269     		ldr	r2, [r2, #16]
 842 007c DD81     		strh	r5, [r3, #14]	@ movhi
 843 007e 9047     		blx	r2
 844 0080 2368     		ldr	r3, [r4]
 845 0082 2946     		mov	r1, r5
 846 0084 1B68     		ldr	r3, [r3]
 847 0086 4FF48040 		mov	r0, #16384
 848 008a 5B69     		ldr	r3, [r3, #20]
 849 008c 9847     		blx	r3
 850 008e 0028     		cmp	r0, #0
 851 0090 30D1     		bne	.L372
 852              	.L215:
 853 0092 2368     		ldr	r3, [r4]
 854              	.L218:
 855 0094 0324     		movs	r4, #3
ARM GAS  /tmp/cc0SeAZp.s 			page 16


 856 0096 E2E7     		b	.L365
 857              	.L371:
 858 0098 0DF10F00 		add	r0, sp, #15
 859 009c FFF7FEFF 		bl	sd_cmd8
 860 00a0 0546     		mov	r5, r0
 861 00a2 0028     		cmp	r0, #0
 862 00a4 D7D0     		beq	.L168
 863 00a6 2068     		ldr	r0, [r4]
 864 00a8 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 865 00aa D907     		lsls	r1, r3, #31
 866 00ac 00F19580 		bmi	.L373
 867              	.L159:
 868 00b0 03F00903 		and	r3, r3, #9
 869 00b4 012B     		cmp	r3, #1
 870 00b6 11D1     		bne	.L175
 871              	.L224:
 872 00b8 0368     		ldr	r3, [r0]
 873 00ba 4FF40071 		mov	r1, #512
 874 00be 5B69     		ldr	r3, [r3, #20]
 875 00c0 41F21010 		movw	r0, #4368
 876 00c4 9847     		blx	r3
 877 00c6 0028     		cmp	r0, #0
 878 00c8 C5D0     		beq	.L168
 879 00ca 2068     		ldr	r0, [r4]
 880 00cc 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 881              	.L174:
 882 00ce DE07     		lsls	r6, r3, #31
 883 00d0 04D5     		bpl	.L175
 884 00d2 FFF7FEFF 		bl	sd_mmc_cmd13
 885 00d6 0028     		cmp	r0, #0
 886 00d8 BDD0     		beq	.L168
 887              	.L360:
 888 00da 2068     		ldr	r0, [r4]
 889              	.L175:
 890 00dc 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 891 00e0 0268     		ldr	r2, [r0]
 892 00e2 0033     		adds	r3, r3, #0
 893 00e4 1668     		ldr	r6, [r2]
 894 00e6 4168     		ldr	r1, [r0, #4]
 895 00e8 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 896 00ea 18BF     		it	ne
 897 00ec 0123     		movne	r3, #1
 898 00ee C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 899 00f0 B047     		blx	r6
 900 00f2 B1E7     		b	.L361
 901              	.L372:
 902 00f4 0DF10F00 		add	r0, sp, #15
 903 00f8 FFF7FEFF 		bl	sd_cmd8
 904 00fc 2368     		ldr	r3, [r4]
 905 00fe 0028     		cmp	r0, #0
 906 0100 C8D0     		beq	.L218
 907 0102 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 908 0104 D007     		lsls	r0, r2, #31
 909 0106 00F1F880 		bmi	.L374
 910              	.L180:
 911 010a 1B68     		ldr	r3, [r3]
 912 010c 0021     		movs	r1, #0
ARM GAS  /tmp/cc0SeAZp.s 			page 17


 913 010e 5B69     		ldr	r3, [r3, #20]
 914 0110 45F20310 		movw	r0, #20739
 915 0114 9847     		blx	r3
 916 0116 0028     		cmp	r0, #0
 917 0118 BBD0     		beq	.L215
 918 011a 2568     		ldr	r5, [r4]
 919 011c 2B68     		ldr	r3, [r5]
 920 011e 9B69     		ldr	r3, [r3, #24]
 921 0120 9847     		blx	r3
 922 0122 2368     		ldr	r3, [r4]
 923 0124 000C     		lsrs	r0, r0, #16
 924 0126 E881     		strh	r0, [r5, #14]	@ movhi
 925 0128 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 926 012a D107     		lsls	r1, r2, #31
 927 012c 06D5     		bpl	.L203
 928 012e FFF7FEFF 		bl	sd_mmc_cmd9_mci
 929 0132 0028     		cmp	r0, #0
 930 0134 ADD0     		beq	.L215
 931 0136 FFF7FEFF 		bl	sd_decode_csd
 932 013a 2368     		ldr	r3, [r4]
 933              	.L203:
 934 013c D989     		ldrh	r1, [r3, #14]
 935 013e 1B68     		ldr	r3, [r3]
 936 0140 0904     		lsls	r1, r1, #16
 937 0142 5B69     		ldr	r3, [r3, #20]
 938 0144 43F20710 		movw	r0, #12551
 939 0148 9847     		blx	r3
 940 014a 2368     		ldr	r3, [r4]
 941 014c 0546     		mov	r5, r0
 942 014e 0028     		cmp	r0, #0
 943 0150 A0D0     		beq	.L218
 944 0152 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 945 0154 D207     		lsls	r2, r2, #31
 946 0156 04D5     		bpl	.L206
 947 0158 FFF7FEFF 		bl	sd_acmd51
 948 015c 2368     		ldr	r3, [r4]
 949 015e 0028     		cmp	r0, #0
 950 0160 98D0     		beq	.L218
 951              	.L206:
 952 0162 1A68     		ldr	r2, [r3]
 953 0164 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 954 0166 9368     		ldr	r3, [r2, #8]
 955 0168 9847     		blx	r3
 956 016a 0328     		cmp	r0, #3
 957 016c 0FD9     		bls	.L208
 958 016e 2068     		ldr	r0, [r4]
 959 0170 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 960 0172 DF07     		lsls	r7, r3, #31
 961 0174 00F1DD81 		bmi	.L209
 962 0178 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 963              	.L210:
 964 017a 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 965 017e 0168     		ldr	r1, [r0]
 966 0180 0033     		adds	r3, r3, #0
 967 0182 0E68     		ldr	r6, [r1]
 968 0184 18BF     		it	ne
 969 0186 0123     		movne	r3, #1
ARM GAS  /tmp/cc0SeAZp.s 			page 18


 970 0188 4168     		ldr	r1, [r0, #4]
 971 018a C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 972 018c B047     		blx	r6
 973              	.L208:
 974 018e 2368     		ldr	r3, [r4]
 975 0190 1B68     		ldr	r3, [r3]
 976 0192 DB68     		ldr	r3, [r3, #12]
 977 0194 9847     		blx	r3
 978 0196 90B1     		cbz	r0, .L213
 979 0198 2068     		ldr	r0, [r4]
 980 019a 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 981 019c DE07     		lsls	r6, r3, #31
 982 019e 03D5     		bpl	.L214
 983 01a0 837C     		ldrb	r3, [r0, #18]	@ zero_extendqisi2
 984 01a2 102B     		cmp	r3, #16
 985 01a4 00F2E481 		bhi	.L375
 986              	.L214:
 987 01a8 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 988 01ac 0268     		ldr	r2, [r0]
 989 01ae 0033     		adds	r3, r3, #0
 990 01b0 1668     		ldr	r6, [r2]
 991 01b2 4168     		ldr	r1, [r0, #4]
 992 01b4 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 993 01b6 18BF     		it	ne
 994 01b8 0123     		movne	r3, #1
 995 01ba C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 996 01bc B047     		blx	r6
 997              	.L213:
 998 01be 2368     		ldr	r3, [r4]
 999 01c0 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1000 01c2 D207     		lsls	r2, r2, #31
 1001 01c4 7FF549AF 		bpl	.L176
 1002 01c8 1B68     		ldr	r3, [r3]
 1003 01ca 4FF40071 		mov	r1, #512
 1004 01ce 5B69     		ldr	r3, [r3, #20]
 1005 01d0 41F21010 		movw	r0, #4368
 1006 01d4 9847     		blx	r3
 1007              	.L363:
 1008 01d6 0546     		mov	r5, r0
 1009 01d8 3EE7     		b	.L361
 1010              	.L373:
 1011 01da 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 1012 01de 41F6EF36 		movw	r6, #7151
 1013 01e2 002B     		cmp	r3, #0
 1014 01e4 14BF     		ite	ne
 1015 01e6 4FF08047 		movne	r7, #1073741824
 1016 01ea 0027     		moveq	r7, #0
 1017 01ec 12E0     		b	.L162
 1018              	.L376:
 1019 01ee 2368     		ldr	r3, [r4]
 1020 01f0 3946     		mov	r1, r7
 1021 01f2 1B68     		ldr	r3, [r3]
 1022 01f4 41F22910 		movw	r0, #4393
 1023 01f8 5B69     		ldr	r3, [r3, #20]
 1024 01fa 9847     		blx	r3
 1025 01fc 90B1     		cbz	r0, .L160
 1026 01fe 2368     		ldr	r3, [r4]
ARM GAS  /tmp/cc0SeAZp.s 			page 19


 1027 0200 1B68     		ldr	r3, [r3]
 1028 0202 9B69     		ldr	r3, [r3, #24]
 1029 0204 9847     		blx	r3
 1030 0206 10F00101 		ands	r1, r0, #1
 1031 020a 00F04781 		beq	.L161
 1032 020e 013E     		subs	r6, r6, #1
 1033 0210 08D0     		beq	.L160
 1034 0212 2068     		ldr	r0, [r4]
 1035              	.L162:
 1036 0214 0368     		ldr	r3, [r0]
 1037 0216 0021     		movs	r1, #0
 1038 0218 5B69     		ldr	r3, [r3, #20]
 1039 021a 41F23710 		movw	r0, #4407
 1040 021e 9847     		blx	r3
 1041 0220 0028     		cmp	r0, #0
 1042 0222 E4D1     		bne	.L376
 1043              	.L160:
 1044 0224 0220     		movs	r0, #2
 1045 0226 2368     		ldr	r3, [r4]
 1046 0228 0021     		movs	r1, #0
 1047 022a 1A68     		ldr	r2, [r3]
 1048 022c 5874     		strb	r0, [r3, #17]
 1049 022e 5369     		ldr	r3, [r2, #20]
 1050 0230 4FF48850 		mov	r0, #4352
 1051 0234 9847     		blx	r3
 1052 0236 0028     		cmp	r0, #0
 1053 0238 3FF40DAF 		beq	.L168
 1054 023c 41F6EF35 		movw	r5, #7151
 1055 0240 07E0     		b	.L169
 1056              	.L382:
 1057 0242 00BF     		.align	2
 1058              	.L381:
 1059 0244 00000000 		.word	.LANCHOR5
 1060 0248 00000000 		.word	.LANCHOR0
 1061              	.L377:
 1062 024c 013D     		subs	r5, r5, #1
 1063 024e 3FF402AF 		beq	.L168
 1064              	.L169:
 1065 0252 2368     		ldr	r3, [r4]
 1066 0254 0021     		movs	r1, #0
 1067 0256 1B68     		ldr	r3, [r3]
 1068 0258 41F20110 		movw	r0, #4353
 1069 025c 5B69     		ldr	r3, [r3, #20]
 1070 025e 9847     		blx	r3
 1071 0260 0028     		cmp	r0, #0
 1072 0262 3FF4F8AE 		beq	.L168
 1073 0266 2368     		ldr	r3, [r4]
 1074 0268 1B68     		ldr	r3, [r3]
 1075 026a 9B69     		ldr	r3, [r3, #24]
 1076 026c 9847     		blx	r3
 1077 026e 10F00101 		ands	r1, r0, #1
 1078 0272 EBD1     		bne	.L377
 1079 0274 2368     		ldr	r3, [r4]
 1080 0276 40F23A50 		movw	r0, #1338
 1081 027a 1B68     		ldr	r3, [r3]
 1082 027c 5B69     		ldr	r3, [r3, #20]
 1083 027e 9847     		blx	r3
ARM GAS  /tmp/cc0SeAZp.s 			page 20


 1084 0280 0028     		cmp	r0, #0
 1085 0282 3FF4E8AE 		beq	.L168
 1086 0286 2368     		ldr	r3, [r4]
 1087 0288 1B68     		ldr	r3, [r3]
 1088 028a 9B69     		ldr	r3, [r3, #24]
 1089 028c 9847     		blx	r3
 1090 028e 00F0C040 		and	r0, r0, #1610612736
 1091 0292 B0F1804F 		cmp	r0, #1073741824
 1092 0296 2368     		ldr	r3, [r4]
 1093 0298 03D1     		bne	.L171
 1094 029a 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1095 029c 42F00802 		orr	r2, r2, #8
 1096 02a0 5A74     		strb	r2, [r3, #17]
 1097              	.L171:
 1098 02a2 1B68     		ldr	r3, [r3]
 1099 02a4 0021     		movs	r1, #0
 1100 02a6 5B69     		ldr	r3, [r3, #20]
 1101 02a8 41F23B10 		movw	r0, #4411
 1102 02ac 9847     		blx	r3
 1103 02ae 0028     		cmp	r0, #0
 1104 02b0 3FF4D1AE 		beq	.L168
 1105 02b4 FFF7FEFF 		bl	sd_mmc_cmd9_spi
 1106 02b8 0028     		cmp	r0, #0
 1107 02ba 3FF4CCAE 		beq	.L168
 1108 02be FFF7FEFF 		bl	mmc_decode_csd
 1109 02c2 2368     		ldr	r3, [r4]
 1110 02c4 9A7C     		ldrb	r2, [r3, #18]	@ zero_extendqisi2
 1111 02c6 3F2A     		cmp	r2, #63
 1112 02c8 06D9     		bls	.L172
 1113 02ca 04A8     		add	r0, sp, #16
 1114 02cc FFF7FEFF 		bl	mmc_cmd8
 1115 02d0 0028     		cmp	r0, #0
 1116 02d2 3FF4C0AE 		beq	.L168
 1117 02d6 2368     		ldr	r3, [r4]
 1118              	.L172:
 1119 02d8 1B68     		ldr	r3, [r3]
 1120 02da 4FF40071 		mov	r1, #512
 1121 02de 5B69     		ldr	r3, [r3, #20]
 1122 02e0 41F21010 		movw	r0, #4368
 1123 02e4 9847     		blx	r3
 1124 02e6 0028     		cmp	r0, #0
 1125 02e8 3FF4B5AE 		beq	.L168
 1126 02ec FFF7FEFF 		bl	sd_mmc_cmd13
 1127 02f0 0546     		mov	r5, r0
 1128 02f2 0028     		cmp	r0, #0
 1129 02f4 3FF4AFAE 		beq	.L168
 1130 02f8 EFE6     		b	.L360
 1131              	.L374:
 1132 02fa 9DF80F20 		ldrb	r2, [sp, #15]	@ zero_extendqisi2
 1133 02fe 994F     		ldr	r7, .L383
 1134 0300 002A     		cmp	r2, #0
 1135 0302 08BF     		it	eq
 1136 0304 4FF4FC17 		moveq	r7, #2064384
 1137 0308 40F63506 		movw	r6, #2101
 1138 030c 11E0     		b	.L185
 1139              	.L379:
 1140 030e 2368     		ldr	r3, [r4]
ARM GAS  /tmp/cc0SeAZp.s 			page 21


 1141 0310 3946     		mov	r1, r7
 1142 0312 1B68     		ldr	r3, [r3]
 1143 0314 44F22950 		movw	r0, #17705
 1144 0318 5B69     		ldr	r3, [r3, #20]
 1145 031a 9847     		blx	r3
 1146 031c 88B1     		cbz	r0, .L181
 1147 031e 2368     		ldr	r3, [r4]
 1148 0320 1B68     		ldr	r3, [r3]
 1149 0322 9B69     		ldr	r3, [r3, #24]
 1150 0324 9847     		blx	r3
 1151 0326 0028     		cmp	r0, #0
 1152 0328 C0F2EE80 		blt	.L378
 1153 032c 013E     		subs	r6, r6, #1
 1154 032e 08D0     		beq	.L181
 1155 0330 2368     		ldr	r3, [r4]
 1156              	.L185:
 1157 0332 1B68     		ldr	r3, [r3]
 1158 0334 0021     		movs	r1, #0
 1159 0336 5B69     		ldr	r3, [r3, #20]
 1160 0338 41F23710 		movw	r0, #4407
 1161 033c 9847     		blx	r3
 1162 033e 0028     		cmp	r0, #0
 1163 0340 E5D1     		bne	.L379
 1164              	.L181:
 1165 0342 0220     		movs	r0, #2
 1166 0344 2368     		ldr	r3, [r4]
 1167 0346 0021     		movs	r1, #0
 1168 0348 1A68     		ldr	r2, [r3]
 1169 034a 5874     		strb	r0, [r3, #17]
 1170 034c 5369     		ldr	r3, [r2, #20]
 1171 034e 4FF48040 		mov	r0, #16384
 1172 0352 9847     		blx	r3
 1173 0354 0028     		cmp	r0, #0
 1174 0356 3FF47FAE 		beq	.L361
 1175 035a 41F26906 		movw	r6, #4201
 1176 035e 814F     		ldr	r7, .L383
 1177 0360 02E0     		b	.L192
 1178              	.L188:
 1179 0362 013E     		subs	r6, r6, #1
 1180 0364 3FF478AE 		beq	.L361
 1181              	.L192:
 1182 0368 2368     		ldr	r3, [r4]
 1183 036a 3946     		mov	r1, r7
 1184 036c 1B68     		ldr	r3, [r3]
 1185 036e 44F20150 		movw	r0, #17665
 1186 0372 5B69     		ldr	r3, [r3, #20]
 1187 0374 9847     		blx	r3
 1188 0376 0028     		cmp	r0, #0
 1189 0378 3FF46EAE 		beq	.L361
 1190 037c 2368     		ldr	r3, [r4]
 1191 037e 1B68     		ldr	r3, [r3]
 1192 0380 9B69     		ldr	r3, [r3, #24]
 1193 0382 9847     		blx	r3
 1194 0384 031E     		subs	r3, r0, #0
 1195 0386 ECDA     		bge	.L188
 1196 0388 03F0C043 		and	r3, r3, #1610612736
 1197 038c B3F1804F 		cmp	r3, #1073741824
ARM GAS  /tmp/cc0SeAZp.s 			page 22


 1198 0390 2368     		ldr	r3, [r4]
 1199 0392 03D1     		bne	.L190
 1200 0394 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1201 0396 42F00802 		orr	r2, r2, #8
 1202 039a 5A74     		strb	r2, [r3, #17]
 1203              	.L190:
 1204 039c 1B68     		ldr	r3, [r3]
 1205 039e 0021     		movs	r1, #0
 1206 03a0 5B69     		ldr	r3, [r3, #20]
 1207 03a2 45F60230 		movw	r0, #23298
 1208 03a6 9847     		blx	r3
 1209 03a8 0028     		cmp	r0, #0
 1210 03aa 3FF455AE 		beq	.L361
 1211 03ae 0120     		movs	r0, #1
 1212 03b0 2368     		ldr	r3, [r4]
 1213 03b2 4FF48031 		mov	r1, #65536
 1214 03b6 1A68     		ldr	r2, [r3]
 1215 03b8 D881     		strh	r0, [r3, #14]	@ movhi
 1216 03ba 5369     		ldr	r3, [r2, #20]
 1217 03bc 41F20310 		movw	r0, #4355
 1218 03c0 9847     		blx	r3
 1219 03c2 0028     		cmp	r0, #0
 1220 03c4 3FF448AE 		beq	.L361
 1221 03c8 FFF7FEFF 		bl	sd_mmc_cmd9_mci
 1222 03cc 0028     		cmp	r0, #0
 1223 03ce 3FF443AE 		beq	.L361
 1224 03d2 FFF7FEFF 		bl	mmc_decode_csd
 1225 03d6 2368     		ldr	r3, [r4]
 1226 03d8 43F20710 		movw	r0, #12551
 1227 03dc D989     		ldrh	r1, [r3, #14]
 1228 03de 1B68     		ldr	r3, [r3]
 1229 03e0 0904     		lsls	r1, r1, #16
 1230 03e2 5B69     		ldr	r3, [r3, #20]
 1231 03e4 9847     		blx	r3
 1232 03e6 0028     		cmp	r0, #0
 1233 03e8 3FF436AE 		beq	.L361
 1234 03ec 2068     		ldr	r0, [r4]
 1235 03ee 837C     		ldrb	r3, [r0, #18]	@ zero_extendqisi2
 1236 03f0 3F2B     		cmp	r3, #63
 1237 03f2 40F2FC80 		bls	.L193
 1238 03f6 04A8     		add	r0, sp, #16
 1239 03f8 FFF7FEFF 		bl	mmc_cmd8
 1240 03fc 0028     		cmp	r0, #0
 1241 03fe 3FF42BAE 		beq	.L361
 1242 0402 2368     		ldr	r3, [r4]
 1243 0404 1A68     		ldr	r2, [r3]
 1244 0406 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1245 0408 9368     		ldr	r3, [r2, #8]
 1246 040a 9847     		blx	r3
 1247 040c 0328     		cmp	r0, #3
 1248 040e 2AD9     		bls	.L194
 1249 0410 2368     		ldr	r3, [r4]
 1250 0412 1A68     		ldr	r2, [r3]
 1251 0414 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1252 0416 9368     		ldr	r3, [r2, #8]
 1253 0418 9847     		blx	r3
 1254 041a 0428     		cmp	r0, #4
ARM GAS  /tmp/cc0SeAZp.s 			page 23


 1255 041c 0646     		mov	r6, r0
 1256 041e 00F0E280 		beq	.L226
 1257 0422 5149     		ldr	r1, .L383+4
 1258 0424 514B     		ldr	r3, .L383+8
 1259 0426 0828     		cmp	r0, #8
 1260 0428 18BF     		it	ne
 1261 042a 1946     		movne	r1, r3
 1262              	.L196:
 1263 042c 2368     		ldr	r3, [r4]
 1264 042e 43F20610 		movw	r0, #12550
 1265 0432 1B68     		ldr	r3, [r3]
 1266 0434 5B69     		ldr	r3, [r3, #20]
 1267 0436 9847     		blx	r3
 1268 0438 0028     		cmp	r0, #0
 1269 043a 3FF40DAE 		beq	.L361
 1270 043e 2368     		ldr	r3, [r4]
 1271 0440 1B68     		ldr	r3, [r3]
 1272 0442 9B69     		ldr	r3, [r3, #24]
 1273 0444 9847     		blx	r3
 1274 0446 0706     		lsls	r7, r0, #24
 1275 0448 3FF506AE 		bmi	.L361
 1276 044c 2068     		ldr	r0, [r4]
 1277 044e 3246     		mov	r2, r6
 1278 0450 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1279 0454 0168     		ldr	r1, [r0]
 1280 0456 0675     		strb	r6, [r0, #20]
 1281 0458 0033     		adds	r3, r3, #0
 1282 045a 0E68     		ldr	r6, [r1]
 1283 045c 18BF     		it	ne
 1284 045e 0123     		movne	r3, #1
 1285 0460 4168     		ldr	r1, [r0, #4]
 1286 0462 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1287 0464 B047     		blx	r6
 1288              	.L194:
 1289 0466 2368     		ldr	r3, [r4]
 1290 0468 1B68     		ldr	r3, [r3]
 1291 046a DB68     		ldr	r3, [r3, #12]
 1292 046c 9847     		blx	r3
 1293 046e 20B1     		cbz	r0, .L198
 1294 0470 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 1295 0474 002B     		cmp	r3, #0
 1296 0476 40F0C680 		bne	.L380
 1297              	.L198:
 1298 047a 0A26     		movs	r6, #10
 1299              	.L200:
 1300 047c 2368     		ldr	r3, [r4]
 1301 047e 4FF40071 		mov	r1, #512
 1302 0482 1B68     		ldr	r3, [r3]
 1303 0484 41F21010 		movw	r0, #4368
 1304 0488 5B69     		ldr	r3, [r3, #20]
 1305 048a 9847     		blx	r3
 1306 048c 013E     		subs	r6, r6, #1
 1307 048e 0028     		cmp	r0, #0
 1308 0490 7FF4A1AE 		bne	.L363
 1309 0494 16F0FF06 		ands	r6, r6, #255
 1310 0498 F0D1     		bne	.L200
 1311 049a DDE5     		b	.L361
ARM GAS  /tmp/cc0SeAZp.s 			page 24


 1312              	.L161:
 1313 049c 2368     		ldr	r3, [r4]
 1314 049e 40F23A50 		movw	r0, #1338
 1315 04a2 1B68     		ldr	r3, [r3]
 1316 04a4 5B69     		ldr	r3, [r3, #20]
 1317 04a6 9847     		blx	r3
 1318 04a8 0028     		cmp	r0, #0
 1319 04aa 3FF4BBAE 		beq	.L160
 1320 04ae 2368     		ldr	r3, [r4]
 1321 04b0 1B68     		ldr	r3, [r3]
 1322 04b2 9B69     		ldr	r3, [r3, #24]
 1323 04b4 9847     		blx	r3
 1324 04b6 4200     		lsls	r2, r0, #1
 1325 04b8 2368     		ldr	r3, [r4]
 1326 04ba 03D5     		bpl	.L164
 1327 04bc 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1328 04be 42F00802 		orr	r2, r2, #8
 1329 04c2 5A74     		strb	r2, [r3, #17]
 1330              	.L164:
 1331 04c4 1B68     		ldr	r3, [r3]
 1332 04c6 0021     		movs	r1, #0
 1333 04c8 5B69     		ldr	r3, [r3, #20]
 1334 04ca 41F23B10 		movw	r0, #4411
 1335 04ce 9847     		blx	r3
 1336 04d0 0028     		cmp	r0, #0
 1337 04d2 3FF4C0AD 		beq	.L168
 1338 04d6 2068     		ldr	r0, [r4]
 1339 04d8 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1340 04da DF07     		lsls	r7, r3, #31
 1341 04dc 7FF5E8AD 		bpl	.L159
 1342 04e0 FFF7FEFF 		bl	sd_mmc_cmd9_spi
 1343 04e4 0028     		cmp	r0, #0
 1344 04e6 3FF4B6AD 		beq	.L168
 1345 04ea FFF7FEFF 		bl	sd_decode_csd
 1346 04ee FFF7FEFF 		bl	sd_acmd51
 1347 04f2 0028     		cmp	r0, #0
 1348 04f4 3FF4AFAD 		beq	.L168
 1349 04f8 2068     		ldr	r0, [r4]
 1350 04fa 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1351 04fc 03F00902 		and	r2, r3, #9
 1352 0500 012A     		cmp	r2, #1
 1353 0502 7FF4E4AD 		bne	.L174
 1354 0506 D7E5     		b	.L224
 1355              	.L378:
 1356 0508 2368     		ldr	r3, [r4]
 1357 050a 4100     		lsls	r1, r0, #1
 1358 050c 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1359 050e 02D5     		bpl	.L184
 1360 0510 42F00802 		orr	r2, r2, #8
 1361 0514 5A74     		strb	r2, [r3, #17]
 1362              	.L184:
 1363 0516 D007     		lsls	r0, r2, #31
 1364 0518 7FF5F7AD 		bpl	.L180
 1365 051c 1B68     		ldr	r3, [r3]
 1366 051e 0021     		movs	r1, #0
 1367 0520 5B69     		ldr	r3, [r3, #20]
 1368 0522 45F60230 		movw	r0, #23298
ARM GAS  /tmp/cc0SeAZp.s 			page 25


 1369 0526 9847     		blx	r3
 1370 0528 2368     		ldr	r3, [r4]
 1371 052a 0028     		cmp	r0, #0
 1372 052c 7FF4EDAD 		bne	.L180
 1373 0530 B0E5     		b	.L218
 1374              	.L209:
 1375 0532 C189     		ldrh	r1, [r0, #14]
 1376 0534 0368     		ldr	r3, [r0]
 1377 0536 0904     		lsls	r1, r1, #16
 1378 0538 5B69     		ldr	r3, [r3, #20]
 1379 053a 41F23710 		movw	r0, #4407
 1380 053e 9847     		blx	r3
 1381 0540 2368     		ldr	r3, [r4]
 1382 0542 0028     		cmp	r0, #0
 1383 0544 3FF4A6AD 		beq	.L218
 1384 0548 1B68     		ldr	r3, [r3]
 1385 054a 0221     		movs	r1, #2
 1386 054c 41F20610 		movw	r0, #4358
 1387 0550 5B69     		ldr	r3, [r3, #20]
 1388 0552 9847     		blx	r3
 1389 0554 0028     		cmp	r0, #0
 1390 0556 3FF49CAD 		beq	.L215
 1391 055a 0423     		movs	r3, #4
 1392 055c 2068     		ldr	r0, [r4]
 1393 055e 1A46     		mov	r2, r3
 1394 0560 0375     		strb	r3, [r0, #20]
 1395 0562 0AE6     		b	.L210
 1396              	.L384:
 1397              		.align	2
 1398              	.L383:
 1399 0564 00801F40 		.word	1075806208
 1400 0568 0002B701 		.word	28770816
 1401 056c 0000B701 		.word	28770304
 1402              	.L375:
 1403 0570 0126     		movs	r6, #1
 1404 0572 0368     		ldr	r3, [r0]
 1405 0574 0096     		str	r6, [sp]
 1406 0576 1F6A     		ldr	r7, [r3, #32]
 1407 0578 4022     		movs	r2, #64
 1408 057a 3346     		mov	r3, r6
 1409 057c 3049     		ldr	r1, .L385
 1410 057e 3148     		ldr	r0, .L385+4
 1411 0580 B847     		blx	r7
 1412 0582 0028     		cmp	r0, #0
 1413 0584 3FF485AD 		beq	.L215
 1414 0588 2368     		ldr	r3, [r4]
 1415 058a 3146     		mov	r1, r6
 1416 058c 1B68     		ldr	r3, [r3]
 1417 058e 04A8     		add	r0, sp, #16
 1418 0590 1B6B     		ldr	r3, [r3, #48]
 1419 0592 9847     		blx	r3
 1420 0594 0028     		cmp	r0, #0
 1421 0596 3FF47CAD 		beq	.L215
 1422 059a 2368     		ldr	r3, [r4]
 1423 059c 1B68     		ldr	r3, [r3]
 1424 059e 5B6B     		ldr	r3, [r3, #52]
 1425 05a0 9847     		blx	r3
ARM GAS  /tmp/cc0SeAZp.s 			page 26


 1426 05a2 0028     		cmp	r0, #0
 1427 05a4 3FF475AD 		beq	.L215
 1428 05a8 2368     		ldr	r3, [r4]
 1429 05aa 1B68     		ldr	r3, [r3]
 1430 05ac 9B69     		ldr	r3, [r3, #24]
 1431 05ae 9847     		blx	r3
 1432 05b0 0106     		lsls	r1, r0, #24
 1433 05b2 3FF56EAD 		bmi	.L215
 1434 05b6 9DF82030 		ldrb	r3, [sp, #32]	@ zero_extendqisi2
 1435 05ba 03F00F03 		and	r3, r3, #15
 1436 05be 0F2B     		cmp	r3, #15
 1437 05c0 13D0     		beq	.L216
 1438 05c2 BDF82C30 		ldrh	r3, [sp, #44]
 1439 05c6 5BBA     		rev16	r3, r3
 1440 05c8 9BB2     		uxth	r3, r3
 1441 05ca 002B     		cmp	r3, #0
 1442 05cc 7FF461AD 		bne	.L215
 1443 05d0 2368     		ldr	r3, [r4]
 1444 05d2 1B68     		ldr	r3, [r3]
 1445 05d4 1B69     		ldr	r3, [r3, #16]
 1446 05d6 9847     		blx	r3
 1447 05d8 2068     		ldr	r0, [r4]
 1448 05da 4368     		ldr	r3, [r0, #4]
 1449 05dc 80F82560 		strb	r6, [r0, #37]
 1450 05e0 B340     		lsls	r3, r3, r6
 1451 05e2 4360     		str	r3, [r0, #4]
 1452 05e4 E0E5     		b	.L214
 1453              	.L226:
 1454 05e6 1849     		ldr	r1, .L385+8
 1455 05e8 20E7     		b	.L196
 1456              	.L216:
 1457 05ea 2068     		ldr	r0, [r4]
 1458 05ec DCE5     		b	.L214
 1459              	.L193:
 1460 05ee 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1461 05f2 0268     		ldr	r2, [r0]
 1462 05f4 0033     		adds	r3, r3, #0
 1463 05f6 1668     		ldr	r6, [r2]
 1464 05f8 4168     		ldr	r1, [r0, #4]
 1465 05fa 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1466 05fc 18BF     		it	ne
 1467 05fe 0123     		movne	r3, #1
 1468 0600 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1469 0602 B047     		blx	r6
 1470 0604 39E7     		b	.L198
 1471              	.L380:
 1472 0606 2368     		ldr	r3, [r4]
 1473 0608 1049     		ldr	r1, .L385+12
 1474 060a 1B68     		ldr	r3, [r3]
 1475 060c 43F20610 		movw	r0, #12550
 1476 0610 5B69     		ldr	r3, [r3, #20]
 1477 0612 9847     		blx	r3
 1478 0614 0028     		cmp	r0, #0
 1479 0616 3FF41FAD 		beq	.L361
 1480 061a 2368     		ldr	r3, [r4]
 1481 061c 1B68     		ldr	r3, [r3]
 1482 061e 9B69     		ldr	r3, [r3, #24]
ARM GAS  /tmp/cc0SeAZp.s 			page 27


 1483 0620 9847     		blx	r3
 1484 0622 0606     		lsls	r6, r0, #24
 1485 0624 3FF518AD 		bmi	.L361
 1486 0628 0123     		movs	r3, #1
 1487 062a 2068     		ldr	r0, [r4]
 1488 062c 0849     		ldr	r1, .L385+16
 1489 062e 0268     		ldr	r2, [r0]
 1490 0630 80F82530 		strb	r3, [r0, #37]
 1491 0634 1668     		ldr	r6, [r2]
 1492 0636 4160     		str	r1, [r0, #4]
 1493 0638 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1494 063a C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1495 063c B047     		blx	r6
 1496 063e 1CE7     		b	.L198
 1497              	.L386:
 1498              		.align	2
 1499              	.L385:
 1500 0640 01FFFF80 		.word	-2130706687
 1501 0644 06110800 		.word	528646
 1502 0648 0001B701 		.word	28770560
 1503 064c 0001B903 		.word	62456064
 1504 0650 00751903 		.word	52000000
 1505              		.size	sd_mmc_check, .-sd_mmc_check
 1506              		.section	.text.sd_mmc_get_type,"ax",%progbits
 1507              		.align	1
 1508              		.p2align 2,,3
 1509              		.global	sd_mmc_get_type
 1510              		.syntax unified
 1511              		.thumb
 1512              		.thumb_func
 1513              		.fpu softvfp
 1514              		.type	sd_mmc_get_type, %function
 1515              	sd_mmc_get_type:
 1516              		@ args = 0, pretend = 0, frame = 0
 1517              		@ frame_needed = 0, uses_anonymous_args = 0
 1518 0000 0128     		cmp	r0, #1
 1519 0002 01D9     		bls	.L396
 1520 0004 0020     		movs	r0, #0
 1521 0006 7047     		bx	lr
 1522              	.L396:
 1523 0008 08B5     		push	{r3, lr}
 1524 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1525 000e 38B9     		cbnz	r0, .L390
 1526 0010 064B     		ldr	r3, .L398
 1527 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1528 0014 012B     		cmp	r3, #1
 1529 0016 05D9     		bls	.L397
 1530              	.L391:
 1531 0018 054B     		ldr	r3, .L398+4
 1532 001a 1B68     		ldr	r3, [r3]
 1533 001c 587C     		ldrb	r0, [r3, #17]	@ zero_extendqisi2
 1534 001e 08BD     		pop	{r3, pc}
 1535              	.L390:
 1536 0020 0020     		movs	r0, #0
 1537 0022 08BD     		pop	{r3, pc}
 1538              	.L397:
 1539 0024 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
ARM GAS  /tmp/cc0SeAZp.s 			page 28


 1540 0028 F6E7     		b	.L391
 1541              	.L399:
 1542 002a 00BF     		.align	2
 1543              	.L398:
 1544 002c 00000000 		.word	.LANCHOR5
 1545 0030 00000000 		.word	.LANCHOR0
 1546              		.size	sd_mmc_get_type, .-sd_mmc_get_type
 1547              		.section	.text.sd_mmc_get_version,"ax",%progbits
 1548              		.align	1
 1549              		.p2align 2,,3
 1550              		.global	sd_mmc_get_version
 1551              		.syntax unified
 1552              		.thumb
 1553              		.thumb_func
 1554              		.fpu softvfp
 1555              		.type	sd_mmc_get_version, %function
 1556              	sd_mmc_get_version:
 1557              		@ args = 0, pretend = 0, frame = 0
 1558              		@ frame_needed = 0, uses_anonymous_args = 0
 1559 0000 0128     		cmp	r0, #1
 1560 0002 01D9     		bls	.L409
 1561 0004 0020     		movs	r0, #0
 1562 0006 7047     		bx	lr
 1563              	.L409:
 1564 0008 08B5     		push	{r3, lr}
 1565 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1566 000e 38B9     		cbnz	r0, .L403
 1567 0010 064B     		ldr	r3, .L411
 1568 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1569 0014 012B     		cmp	r3, #1
 1570 0016 05D9     		bls	.L410
 1571              	.L404:
 1572 0018 054B     		ldr	r3, .L411+4
 1573 001a 1B68     		ldr	r3, [r3]
 1574 001c 987C     		ldrb	r0, [r3, #18]	@ zero_extendqisi2
 1575 001e 08BD     		pop	{r3, pc}
 1576              	.L403:
 1577 0020 0020     		movs	r0, #0
 1578 0022 08BD     		pop	{r3, pc}
 1579              	.L410:
 1580 0024 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1581 0028 F6E7     		b	.L404
 1582              	.L412:
 1583 002a 00BF     		.align	2
 1584              	.L411:
 1585 002c 00000000 		.word	.LANCHOR5
 1586 0030 00000000 		.word	.LANCHOR0
 1587              		.size	sd_mmc_get_version, .-sd_mmc_get_version
 1588              		.section	.text.sd_mmc_get_capacity,"ax",%progbits
 1589              		.align	1
 1590              		.p2align 2,,3
 1591              		.global	sd_mmc_get_capacity
 1592              		.syntax unified
 1593              		.thumb
 1594              		.thumb_func
 1595              		.fpu softvfp
 1596              		.type	sd_mmc_get_capacity, %function
ARM GAS  /tmp/cc0SeAZp.s 			page 29


 1597              	sd_mmc_get_capacity:
 1598              		@ args = 0, pretend = 0, frame = 0
 1599              		@ frame_needed = 0, uses_anonymous_args = 0
 1600 0000 0128     		cmp	r0, #1
 1601 0002 01D9     		bls	.L422
 1602 0004 0020     		movs	r0, #0
 1603 0006 7047     		bx	lr
 1604              	.L422:
 1605 0008 08B5     		push	{r3, lr}
 1606 000a FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1607 000e 38B9     		cbnz	r0, .L416
 1608 0010 064B     		ldr	r3, .L424
 1609 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1610 0014 012B     		cmp	r3, #1
 1611 0016 05D9     		bls	.L423
 1612              	.L417:
 1613 0018 054B     		ldr	r3, .L424+4
 1614 001a 1B68     		ldr	r3, [r3]
 1615 001c 9868     		ldr	r0, [r3, #8]
 1616 001e 08BD     		pop	{r3, pc}
 1617              	.L416:
 1618 0020 0020     		movs	r0, #0
 1619 0022 08BD     		pop	{r3, pc}
 1620              	.L423:
 1621 0024 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1622 0028 F6E7     		b	.L417
 1623              	.L425:
 1624 002a 00BF     		.align	2
 1625              	.L424:
 1626 002c 00000000 		.word	.LANCHOR5
 1627 0030 00000000 		.word	.LANCHOR0
 1628              		.size	sd_mmc_get_capacity, .-sd_mmc_get_capacity
 1629              		.section	.text.sd_mmc_is_write_protected,"ax",%progbits
 1630              		.align	1
 1631              		.p2align 2,,3
 1632              		.global	sd_mmc_is_write_protected
 1633              		.syntax unified
 1634              		.thumb
 1635              		.thumb_func
 1636              		.fpu softvfp
 1637              		.type	sd_mmc_is_write_protected, %function
 1638              	sd_mmc_is_write_protected:
 1639              		@ args = 0, pretend = 0, frame = 0
 1640              		@ frame_needed = 0, uses_anonymous_args = 0
 1641 0000 08B5     		push	{r3, lr}
 1642 0002 084B     		ldr	r3, .L430
 1643 0004 00EB8000 		add	r0, r0, r0, lsl #2
 1644 0008 03EBC003 		add	r3, r3, r0, lsl #3
 1645 000c 187B     		ldrb	r0, [r3, #12]	@ zero_extendqisi2
 1646 000e FF28     		cmp	r0, #255
 1647 0010 05D0     		beq	.L428
 1648 0012 FFF7FEFF 		bl	digitalRead
 1649 0016 80F00100 		eor	r0, r0, #1
 1650 001a C0B2     		uxtb	r0, r0
 1651 001c 08BD     		pop	{r3, pc}
 1652              	.L428:
 1653 001e 0020     		movs	r0, #0
ARM GAS  /tmp/cc0SeAZp.s 			page 30


 1654 0020 08BD     		pop	{r3, pc}
 1655              	.L431:
 1656 0022 00BF     		.align	2
 1657              	.L430:
 1658 0024 00000000 		.word	.LANCHOR4
 1659              		.size	sd_mmc_is_write_protected, .-sd_mmc_is_write_protected
 1660              		.section	.text.sd_mmc_unmount,"ax",%progbits
 1661              		.align	1
 1662              		.p2align 2,,3
 1663              		.global	sd_mmc_unmount
 1664              		.syntax unified
 1665              		.thumb
 1666              		.thumb_func
 1667              		.fpu softvfp
 1668              		.type	sd_mmc_unmount, %function
 1669              	sd_mmc_unmount:
 1670              		@ args = 0, pretend = 0, frame = 0
 1671              		@ frame_needed = 0, uses_anonymous_args = 0
 1672              		@ link register save eliminated.
 1673 0000 0422     		movs	r2, #4
 1674 0002 034B     		ldr	r3, .L433
 1675 0004 00EB8000 		add	r0, r0, r0, lsl #2
 1676 0008 03EBC003 		add	r3, r3, r0, lsl #3
 1677 000c 1A74     		strb	r2, [r3, #16]
 1678 000e 7047     		bx	lr
 1679              	.L434:
 1680              		.align	2
 1681              	.L433:
 1682 0010 00000000 		.word	.LANCHOR4
 1683              		.size	sd_mmc_unmount, .-sd_mmc_unmount
 1684              		.section	.text.sd_mmc_get_interface_speed,"ax",%progbits
 1685              		.align	1
 1686              		.p2align 2,,3
 1687              		.global	sd_mmc_get_interface_speed
 1688              		.syntax unified
 1689              		.thumb
 1690              		.thumb_func
 1691              		.fpu softvfp
 1692              		.type	sd_mmc_get_interface_speed, %function
 1693              	sd_mmc_get_interface_speed:
 1694              		@ args = 0, pretend = 0, frame = 0
 1695              		@ frame_needed = 0, uses_anonymous_args = 0
 1696              		@ link register save eliminated.
 1697 0000 034B     		ldr	r3, .L436
 1698 0002 00EB8000 		add	r0, r0, r0, lsl #2
 1699 0006 53F83030 		ldr	r3, [r3, r0, lsl #3]
 1700 000a 1B6C     		ldr	r3, [r3, #64]
 1701 000c 1847     		bx	r3
 1702              	.L437:
 1703 000e 00BF     		.align	2
 1704              	.L436:
 1705 0010 00000000 		.word	.LANCHOR4
 1706              		.size	sd_mmc_get_interface_speed, .-sd_mmc_get_interface_speed
 1707              		.section	.text.sd_mmc_init_read_blocks,"ax",%progbits
 1708              		.align	1
 1709              		.p2align 2,,3
 1710              		.global	sd_mmc_init_read_blocks
ARM GAS  /tmp/cc0SeAZp.s 			page 31


 1711              		.syntax unified
 1712              		.thumb
 1713              		.thumb_func
 1714              		.fpu softvfp
 1715              		.type	sd_mmc_init_read_blocks, %function
 1716              	sd_mmc_init_read_blocks:
 1717              		@ args = 0, pretend = 0, frame = 0
 1718              		@ frame_needed = 0, uses_anonymous_args = 0
 1719 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1720 0002 0128     		cmp	r0, #1
 1721 0004 83B0     		sub	sp, sp, #12
 1722 0006 03D9     		bls	.L455
 1723 0008 0424     		movs	r4, #4
 1724              	.L439:
 1725 000a 2046     		mov	r0, r4
 1726 000c 03B0     		add	sp, sp, #12
 1727              		@ sp needed
 1728 000e F0BD     		pop	{r4, r5, r6, r7, pc}
 1729              	.L455:
 1730 0010 0E46     		mov	r6, r1
 1731 0012 1546     		mov	r5, r2
 1732 0014 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1733 0018 0446     		mov	r4, r0
 1734 001a 0028     		cmp	r0, #0
 1735 001c F5D1     		bne	.L439
 1736 001e FFF7FEFF 		bl	sd_mmc_cmd13
 1737 0022 28B3     		cbz	r0, .L453
 1738 0024 184F     		ldr	r7, .L458
 1739 0026 1949     		ldr	r1, .L458+4
 1740 0028 3B68     		ldr	r3, [r7]
 1741 002a 1948     		ldr	r0, .L458+8
 1742 002c 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1743 002e 012D     		cmp	r5, #1
 1744 0030 98BF     		it	ls
 1745 0032 0846     		movls	r0, r1
 1746 0034 1207     		lsls	r2, r2, #28
 1747 0036 4FF00102 		mov	r2, #1
 1748 003a 1B68     		ldr	r3, [r3]
 1749 003c 58BF     		it	pl
 1750 003e 7602     		lslpl	r6, r6, #9
 1751 0040 0092     		str	r2, [sp]
 1752 0042 3146     		mov	r1, r6
 1753 0044 4FF40072 		mov	r2, #512
 1754 0048 1E6A     		ldr	r6, [r3, #32]
 1755 004a 2B46     		mov	r3, r5
 1756 004c B047     		blx	r6
 1757 004e 78B1     		cbz	r0, .L453
 1758 0050 3B68     		ldr	r3, [r7]
 1759 0052 1B68     		ldr	r3, [r3]
 1760 0054 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 1761 0058 22B1     		cbz	r2, .L456
 1762              	.L446:
 1763 005a 0E4A     		ldr	r2, .L458+12
 1764 005c 0E4B     		ldr	r3, .L458+16
 1765 005e 1580     		strh	r5, [r2]	@ movhi
 1766 0060 1D80     		strh	r5, [r3]	@ movhi
 1767 0062 D2E7     		b	.L439
ARM GAS  /tmp/cc0SeAZp.s 			page 32


 1768              	.L456:
 1769 0064 9B69     		ldr	r3, [r3, #24]
 1770 0066 9847     		blx	r3
 1771 0068 0C4B     		ldr	r3, .L458+20
 1772 006a 0340     		ands	r3, r3, r0
 1773 006c 002B     		cmp	r3, #0
 1774 006e F4D0     		beq	.L446
 1775              	.L453:
 1776 0070 0B4B     		ldr	r3, .L458+24
 1777 0072 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1778 0074 012B     		cmp	r3, #1
 1779 0076 03D9     		bls	.L457
 1780              	.L454:
 1781 0078 0524     		movs	r4, #5
 1782 007a 2046     		mov	r0, r4
 1783 007c 03B0     		add	sp, sp, #12
 1784              		@ sp needed
 1785 007e F0BD     		pop	{r4, r5, r6, r7, pc}
 1786              	.L457:
 1787 0080 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1788 0084 F8E7     		b	.L454
 1789              	.L459:
 1790 0086 00BF     		.align	2
 1791              	.L458:
 1792 0088 00000000 		.word	.LANCHOR0
 1793 008c 11110800 		.word	528657
 1794 0090 12111000 		.word	1052946
 1795 0094 00000000 		.word	.LANCHOR7
 1796 0098 00000000 		.word	.LANCHOR8
 1797 009c 000058E4 		.word	-463994880
 1798 00a0 00000000 		.word	.LANCHOR5
 1799              		.size	sd_mmc_init_read_blocks, .-sd_mmc_init_read_blocks
 1800              		.section	.text.sd_mmc_start_read_blocks,"ax",%progbits
 1801              		.align	1
 1802              		.p2align 2,,3
 1803              		.global	sd_mmc_start_read_blocks
 1804              		.syntax unified
 1805              		.thumb
 1806              		.thumb_func
 1807              		.fpu softvfp
 1808              		.type	sd_mmc_start_read_blocks, %function
 1809              	sd_mmc_start_read_blocks:
 1810              		@ args = 0, pretend = 0, frame = 0
 1811              		@ frame_needed = 0, uses_anonymous_args = 0
 1812 0000 094B     		ldr	r3, .L464
 1813 0002 10B5     		push	{r4, lr}
 1814 0004 1B68     		ldr	r3, [r3]
 1815 0006 0C46     		mov	r4, r1
 1816 0008 1B68     		ldr	r3, [r3]
 1817 000a 1B6B     		ldr	r3, [r3, #48]
 1818 000c 9847     		blx	r3
 1819 000e 20B9     		cbnz	r0, .L461
 1820 0010 0346     		mov	r3, r0
 1821 0012 064A     		ldr	r2, .L464+4
 1822 0014 0520     		movs	r0, #5
 1823 0016 1380     		strh	r3, [r2]	@ movhi
 1824 0018 10BD     		pop	{r4, pc}
ARM GAS  /tmp/cc0SeAZp.s 			page 33


 1825              	.L461:
 1826 001a 044A     		ldr	r2, .L464+4
 1827 001c 0020     		movs	r0, #0
 1828 001e 1388     		ldrh	r3, [r2]
 1829 0020 1C1B     		subs	r4, r3, r4
 1830 0022 1480     		strh	r4, [r2]	@ movhi
 1831 0024 10BD     		pop	{r4, pc}
 1832              	.L465:
 1833 0026 00BF     		.align	2
 1834              	.L464:
 1835 0028 00000000 		.word	.LANCHOR0
 1836 002c 00000000 		.word	.LANCHOR7
 1837              		.size	sd_mmc_start_read_blocks, .-sd_mmc_start_read_blocks
 1838              		.section	.text.sd_mmc_wait_end_of_read_blocks,"ax",%progbits
 1839              		.align	1
 1840              		.p2align 2,,3
 1841              		.global	sd_mmc_wait_end_of_read_blocks
 1842              		.syntax unified
 1843              		.thumb
 1844              		.thumb_func
 1845              		.fpu softvfp
 1846              		.type	sd_mmc_wait_end_of_read_blocks, %function
 1847              	sd_mmc_wait_end_of_read_blocks:
 1848              		@ args = 0, pretend = 0, frame = 0
 1849              		@ frame_needed = 0, uses_anonymous_args = 0
 1850 0000 38B5     		push	{r3, r4, r5, lr}
 1851 0002 174C     		ldr	r4, .L486
 1852 0004 0546     		mov	r5, r0
 1853 0006 2368     		ldr	r3, [r4]
 1854 0008 1B68     		ldr	r3, [r3]
 1855 000a 5B6B     		ldr	r3, [r3, #52]
 1856 000c 9847     		blx	r3
 1857 000e 08B9     		cbnz	r0, .L482
 1858 0010 0520     		movs	r0, #5
 1859 0012 38BD     		pop	{r3, r4, r5, pc}
 1860              	.L482:
 1861 0014 A5B9     		cbnz	r5, .L483
 1862 0016 134B     		ldr	r3, .L486+4
 1863 0018 1B88     		ldrh	r3, [r3]
 1864 001a 7BB9     		cbnz	r3, .L481
 1865              	.L469:
 1866 001c 124B     		ldr	r3, .L486+8
 1867 001e 1B88     		ldrh	r3, [r3]
 1868 0020 012B     		cmp	r3, #1
 1869 0022 07D0     		beq	.L480
 1870 0024 2368     		ldr	r3, [r4]
 1871 0026 0021     		movs	r1, #0
 1872 0028 1B68     		ldr	r3, [r3]
 1873 002a 43F20C10 		movw	r0, #12556
 1874 002e 5B6A     		ldr	r3, [r3, #36]
 1875 0030 9847     		blx	r3
 1876 0032 60B1     		cbz	r0, .L484
 1877              	.L480:
 1878 0034 0D4B     		ldr	r3, .L486+12
 1879 0036 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1880 0038 012B     		cmp	r3, #1
 1881 003a 05D9     		bls	.L485
ARM GAS  /tmp/cc0SeAZp.s 			page 34


 1882              	.L481:
 1883 003c 0020     		movs	r0, #0
 1884 003e 38BD     		pop	{r3, r4, r5, pc}
 1885              	.L483:
 1886 0040 0022     		movs	r2, #0
 1887 0042 084B     		ldr	r3, .L486+4
 1888 0044 1A80     		strh	r2, [r3]	@ movhi
 1889 0046 E9E7     		b	.L469
 1890              	.L485:
 1891 0048 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1892 004c F6E7     		b	.L481
 1893              	.L484:
 1894 004e 2368     		ldr	r3, [r4]
 1895 0050 0146     		mov	r1, r0
 1896 0052 1B68     		ldr	r3, [r3]
 1897 0054 43F20C10 		movw	r0, #12556
 1898 0058 5B6A     		ldr	r3, [r3, #36]
 1899 005a 9847     		blx	r3
 1900 005c EAE7     		b	.L480
 1901              	.L487:
 1902 005e 00BF     		.align	2
 1903              	.L486:
 1904 0060 00000000 		.word	.LANCHOR0
 1905 0064 00000000 		.word	.LANCHOR7
 1906 0068 00000000 		.word	.LANCHOR8
 1907 006c 00000000 		.word	.LANCHOR5
 1908              		.size	sd_mmc_wait_end_of_read_blocks, .-sd_mmc_wait_end_of_read_blocks
 1909              		.section	.text.sd_mmc_init_write_blocks,"ax",%progbits
 1910              		.align	1
 1911              		.p2align 2,,3
 1912              		.global	sd_mmc_init_write_blocks
 1913              		.syntax unified
 1914              		.thumb
 1915              		.thumb_func
 1916              		.fpu softvfp
 1917              		.type	sd_mmc_init_write_blocks, %function
 1918              	sd_mmc_init_write_blocks:
 1919              		@ args = 0, pretend = 0, frame = 0
 1920              		@ frame_needed = 0, uses_anonymous_args = 0
 1921 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1922 0002 0128     		cmp	r0, #1
 1923 0004 83B0     		sub	sp, sp, #12
 1924 0006 03D9     		bls	.L515
 1925 0008 0425     		movs	r5, #4
 1926              	.L501:
 1927 000a 2846     		mov	r0, r5
 1928 000c 03B0     		add	sp, sp, #12
 1929              		@ sp needed
 1930 000e F0BD     		pop	{r4, r5, r6, r7, pc}
 1931              	.L515:
 1932 0010 0446     		mov	r4, r0
 1933 0012 0F46     		mov	r7, r1
 1934 0014 1646     		mov	r6, r2
 1935 0016 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1936 001a 0546     		mov	r5, r0
 1937 001c 0028     		cmp	r0, #0
 1938 001e F4D1     		bne	.L501
ARM GAS  /tmp/cc0SeAZp.s 			page 35


 1939 0020 244B     		ldr	r3, .L518
 1940 0022 04EB8404 		add	r4, r4, r4, lsl #2
 1941 0026 03EBC404 		add	r4, r3, r4, lsl #3
 1942 002a 207B     		ldrb	r0, [r4, #12]	@ zero_extendqisi2
 1943 002c FF28     		cmp	r0, #255
 1944 002e 0AD0     		beq	.L490
 1945 0030 FFF7FEFF 		bl	digitalRead
 1946 0034 38B9     		cbnz	r0, .L490
 1947 0036 204B     		ldr	r3, .L518+4
 1948 0038 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1949 003a 012B     		cmp	r3, #1
 1950 003c 32D9     		bls	.L497
 1951 003e 0725     		movs	r5, #7
 1952 0040 2846     		mov	r0, r5
 1953 0042 03B0     		add	sp, sp, #12
 1954              		@ sp needed
 1955 0044 F0BD     		pop	{r4, r5, r6, r7, pc}
 1956              	.L490:
 1957 0046 1D4C     		ldr	r4, .L518+8
 1958 0048 1D48     		ldr	r0, .L518+12
 1959 004a 2368     		ldr	r3, [r4]
 1960 004c 1D49     		ldr	r1, .L518+16
 1961 004e 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1962 0050 012E     		cmp	r6, #1
 1963 0052 98BF     		it	ls
 1964 0054 0846     		movls	r0, r1
 1965 0056 1207     		lsls	r2, r2, #28
 1966 0058 00D4     		bmi	.L492
 1967 005a 7F02     		lsls	r7, r7, #9
 1968              	.L492:
 1969 005c 0122     		movs	r2, #1
 1970 005e 1B68     		ldr	r3, [r3]
 1971 0060 0092     		str	r2, [sp]
 1972 0062 3946     		mov	r1, r7
 1973 0064 4FF40072 		mov	r2, #512
 1974 0068 1F6A     		ldr	r7, [r3, #32]
 1975 006a 3346     		mov	r3, r6
 1976 006c B847     		blx	r7
 1977 006e 88B1     		cbz	r0, .L511
 1978 0070 2368     		ldr	r3, [r4]
 1979 0072 1B68     		ldr	r3, [r3]
 1980 0074 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 1981 0078 32B1     		cbz	r2, .L516
 1982              	.L495:
 1983 007a 2846     		mov	r0, r5
 1984 007c 124A     		ldr	r2, .L518+20
 1985 007e 134B     		ldr	r3, .L518+24
 1986 0080 1680     		strh	r6, [r2]	@ movhi
 1987 0082 1E80     		strh	r6, [r3]	@ movhi
 1988 0084 03B0     		add	sp, sp, #12
 1989              		@ sp needed
 1990 0086 F0BD     		pop	{r4, r5, r6, r7, pc}
 1991              	.L516:
 1992 0088 9B69     		ldr	r3, [r3, #24]
 1993 008a 9847     		blx	r3
 1994 008c 104B     		ldr	r3, .L518+28
 1995 008e 0340     		ands	r3, r3, r0
ARM GAS  /tmp/cc0SeAZp.s 			page 36


 1996 0090 002B     		cmp	r3, #0
 1997 0092 F2D0     		beq	.L495
 1998              	.L511:
 1999 0094 084B     		ldr	r3, .L518+4
 2000 0096 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2001 0098 012B     		cmp	r3, #1
 2002 009a 07D9     		bls	.L517
 2003              	.L512:
 2004 009c 0525     		movs	r5, #5
 2005 009e 2846     		mov	r0, r5
 2006 00a0 03B0     		add	sp, sp, #12
 2007              		@ sp needed
 2008 00a2 F0BD     		pop	{r4, r5, r6, r7, pc}
 2009              	.L497:
 2010 00a4 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2011 00a8 0725     		movs	r5, #7
 2012 00aa AEE7     		b	.L501
 2013              	.L517:
 2014 00ac FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2015 00b0 F4E7     		b	.L512
 2016              	.L519:
 2017 00b2 00BF     		.align	2
 2018              	.L518:
 2019 00b4 00000000 		.word	.LANCHOR4
 2020 00b8 00000000 		.word	.LANCHOR5
 2021 00bc 00000000 		.word	.LANCHOR0
 2022 00c0 19911000 		.word	1085721
 2023 00c4 18910800 		.word	561432
 2024 00c8 00000000 		.word	.LANCHOR7
 2025 00cc 00000000 		.word	.LANCHOR8
 2026 00d0 000058E4 		.word	-463994880
 2027              		.size	sd_mmc_init_write_blocks, .-sd_mmc_init_write_blocks
 2028              		.section	.text.sd_mmc_start_write_blocks,"ax",%progbits
 2029              		.align	1
 2030              		.p2align 2,,3
 2031              		.global	sd_mmc_start_write_blocks
 2032              		.syntax unified
 2033              		.thumb
 2034              		.thumb_func
 2035              		.fpu softvfp
 2036              		.type	sd_mmc_start_write_blocks, %function
 2037              	sd_mmc_start_write_blocks:
 2038              		@ args = 0, pretend = 0, frame = 0
 2039              		@ frame_needed = 0, uses_anonymous_args = 0
 2040 0000 094B     		ldr	r3, .L524
 2041 0002 10B5     		push	{r4, lr}
 2042 0004 1B68     		ldr	r3, [r3]
 2043 0006 0C46     		mov	r4, r1
 2044 0008 1B68     		ldr	r3, [r3]
 2045 000a 9B6B     		ldr	r3, [r3, #56]
 2046 000c 9847     		blx	r3
 2047 000e 20B9     		cbnz	r0, .L521
 2048 0010 0346     		mov	r3, r0
 2049 0012 064A     		ldr	r2, .L524+4
 2050 0014 0520     		movs	r0, #5
 2051 0016 1380     		strh	r3, [r2]	@ movhi
 2052 0018 10BD     		pop	{r4, pc}
ARM GAS  /tmp/cc0SeAZp.s 			page 37


 2053              	.L521:
 2054 001a 044A     		ldr	r2, .L524+4
 2055 001c 0020     		movs	r0, #0
 2056 001e 1388     		ldrh	r3, [r2]
 2057 0020 1C1B     		subs	r4, r3, r4
 2058 0022 1480     		strh	r4, [r2]	@ movhi
 2059 0024 10BD     		pop	{r4, pc}
 2060              	.L525:
 2061 0026 00BF     		.align	2
 2062              	.L524:
 2063 0028 00000000 		.word	.LANCHOR0
 2064 002c 00000000 		.word	.LANCHOR7
 2065              		.size	sd_mmc_start_write_blocks, .-sd_mmc_start_write_blocks
 2066              		.section	.text.sd_mmc_wait_end_of_write_blocks,"ax",%progbits
 2067              		.align	1
 2068              		.p2align 2,,3
 2069              		.global	sd_mmc_wait_end_of_write_blocks
 2070              		.syntax unified
 2071              		.thumb
 2072              		.thumb_func
 2073              		.fpu softvfp
 2074              		.type	sd_mmc_wait_end_of_write_blocks, %function
 2075              	sd_mmc_wait_end_of_write_blocks:
 2076              		@ args = 0, pretend = 0, frame = 0
 2077              		@ frame_needed = 0, uses_anonymous_args = 0
 2078 0000 38B5     		push	{r3, r4, r5, lr}
 2079 0002 184C     		ldr	r4, .L548
 2080 0004 0546     		mov	r5, r0
 2081 0006 2368     		ldr	r3, [r4]
 2082 0008 1B68     		ldr	r3, [r3]
 2083 000a DB6B     		ldr	r3, [r3, #60]
 2084 000c 9847     		blx	r3
 2085 000e 08B9     		cbnz	r0, .L544
 2086              	.L542:
 2087 0010 0520     		movs	r0, #5
 2088 0012 38BD     		pop	{r3, r4, r5, pc}
 2089              	.L544:
 2090 0014 8DB9     		cbnz	r5, .L545
 2091 0016 144B     		ldr	r3, .L548+4
 2092 0018 1B88     		ldrh	r3, [r3]
 2093 001a 63B9     		cbnz	r3, .L543
 2094              	.L530:
 2095 001c 134B     		ldr	r3, .L548+8
 2096 001e 1B88     		ldrh	r3, [r3]
 2097 0020 012B     		cmp	r3, #1
 2098 0022 04D0     		beq	.L541
 2099 0024 2368     		ldr	r3, [r4]
 2100 0026 1B68     		ldr	r3, [r3]
 2101 0028 93F84810 		ldrb	r1, [r3, #72]	@ zero_extendqisi2
 2102 002c 49B1     		cbz	r1, .L546
 2103              	.L541:
 2104 002e 104B     		ldr	r3, .L548+12
 2105 0030 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2106 0032 012B     		cmp	r3, #1
 2107 0034 12D9     		bls	.L547
 2108              	.L543:
 2109 0036 0020     		movs	r0, #0
ARM GAS  /tmp/cc0SeAZp.s 			page 38


 2110 0038 38BD     		pop	{r3, r4, r5, pc}
 2111              	.L545:
 2112 003a 0022     		movs	r2, #0
 2113 003c 0A4B     		ldr	r3, .L548+4
 2114 003e 1A80     		strh	r2, [r3]	@ movhi
 2115 0040 ECE7     		b	.L530
 2116              	.L546:
 2117 0042 5B6A     		ldr	r3, [r3, #36]
 2118 0044 43F20C10 		movw	r0, #12556
 2119 0048 9847     		blx	r3
 2120 004a 0028     		cmp	r0, #0
 2121 004c EFD1     		bne	.L541
 2122 004e 084B     		ldr	r3, .L548+12
 2123 0050 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2124 0052 012B     		cmp	r3, #1
 2125 0054 DCD8     		bhi	.L542
 2126 0056 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2127 005a D9E7     		b	.L542
 2128              	.L547:
 2129 005c FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2130 0060 E9E7     		b	.L543
 2131              	.L549:
 2132 0062 00BF     		.align	2
 2133              	.L548:
 2134 0064 00000000 		.word	.LANCHOR0
 2135 0068 00000000 		.word	.LANCHOR7
 2136 006c 00000000 		.word	.LANCHOR8
 2137 0070 00000000 		.word	.LANCHOR5
 2138              		.size	sd_mmc_wait_end_of_write_blocks, .-sd_mmc_wait_end_of_write_blocks
 2139              		.global	mmc_trans_multipliers
 2140              		.global	sd_trans_multipliers
 2141              		.global	sd_mmc_trans_units
 2142              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 2143              		.align	2
 2144              		.type	cpu_irq_critical_section_counter, %object
 2145              		.size	cpu_irq_critical_section_counter, 4
 2146              	cpu_irq_critical_section_counter:
 2147 0000 00000000 		.space	4
 2148              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 2149              		.type	cpu_irq_prev_interrupt_state, %object
 2150              		.size	cpu_irq_prev_interrupt_state, 1
 2151              	cpu_irq_prev_interrupt_state:
 2152 0000 00       		.space	1
 2153              		.section	.bss.sd_mmc_card,"aw",%nobits
 2154              		.align	2
 2155              		.set	.LANCHOR0,. + 0
 2156              		.type	sd_mmc_card, %object
 2157              		.size	sd_mmc_card, 4
 2158              	sd_mmc_card:
 2159 0000 00000000 		.space	4
 2160              		.section	.bss.sd_mmc_cards,"aw",%nobits
 2161              		.align	2
 2162              		.set	.LANCHOR4,. + 0
 2163              		.type	sd_mmc_cards, %object
 2164              		.size	sd_mmc_cards, 80
 2165              	sd_mmc_cards:
 2166 0000 00000000 		.space	80
ARM GAS  /tmp/cc0SeAZp.s 			page 39


 2166      00000000 
 2166      00000000 
 2166      00000000 
 2166      00000000 
 2167              		.section	.bss.sd_mmc_nb_block_remaining,"aw",%nobits
 2168              		.align	1
 2169              		.set	.LANCHOR7,. + 0
 2170              		.type	sd_mmc_nb_block_remaining, %object
 2171              		.size	sd_mmc_nb_block_remaining, 2
 2172              	sd_mmc_nb_block_remaining:
 2173 0000 0000     		.space	2
 2174              		.section	.bss.sd_mmc_nb_block_to_tranfer,"aw",%nobits
 2175              		.align	1
 2176              		.set	.LANCHOR8,. + 0
 2177              		.type	sd_mmc_nb_block_to_tranfer, %object
 2178              		.size	sd_mmc_nb_block_to_tranfer, 2
 2179              	sd_mmc_nb_block_to_tranfer:
 2180 0000 0000     		.space	2
 2181              		.section	.bss.sd_mmc_slot_sel,"aw",%nobits
 2182              		.set	.LANCHOR5,. + 0
 2183              		.type	sd_mmc_slot_sel, %object
 2184              		.size	sd_mmc_slot_sel, 1
 2185              	sd_mmc_slot_sel:
 2186 0000 00       		.space	1
 2187              		.section	.rodata.mmc_trans_multipliers,"a",%progbits
 2188              		.align	2
 2189              		.set	.LANCHOR1,. + 0
 2190              		.type	mmc_trans_multipliers, %object
 2191              		.size	mmc_trans_multipliers, 64
 2192              	mmc_trans_multipliers:
 2193 0000 00000000 		.word	0
 2194 0004 0A000000 		.word	10
 2195 0008 0C000000 		.word	12
 2196 000c 0D000000 		.word	13
 2197 0010 0F000000 		.word	15
 2198 0014 14000000 		.word	20
 2199 0018 1A000000 		.word	26
 2200 001c 1E000000 		.word	30
 2201 0020 23000000 		.word	35
 2202 0024 28000000 		.word	40
 2203 0028 2D000000 		.word	45
 2204 002c 34000000 		.word	52
 2205 0030 37000000 		.word	55
 2206 0034 3C000000 		.word	60
 2207 0038 46000000 		.word	70
 2208 003c 50000000 		.word	80
 2209              		.section	.rodata.sd_mmc_trans_units,"a",%progbits
 2210              		.align	2
 2211              		.set	.LANCHOR2,. + 0
 2212              		.type	sd_mmc_trans_units, %object
 2213              		.size	sd_mmc_trans_units, 28
 2214              	sd_mmc_trans_units:
 2215 0000 0A000000 		.word	10
 2216 0004 64000000 		.word	100
 2217 0008 E8030000 		.word	1000
 2218 000c 10270000 		.word	10000
 2219 0010 00000000 		.word	0
ARM GAS  /tmp/cc0SeAZp.s 			page 40


 2220 0014 00000000 		.word	0
 2221 0018 00000000 		.word	0
 2222              		.section	.rodata.sd_trans_multipliers,"a",%progbits
 2223              		.align	2
 2224              		.set	.LANCHOR3,. + 0
 2225              		.type	sd_trans_multipliers, %object
 2226              		.size	sd_trans_multipliers, 64
 2227              	sd_trans_multipliers:
 2228 0000 00000000 		.word	0
 2229 0004 0A000000 		.word	10
 2230 0008 0C000000 		.word	12
 2231 000c 0D000000 		.word	13
 2232 0010 0F000000 		.word	15
 2233 0014 14000000 		.word	20
 2234 0018 19000000 		.word	25
 2235 001c 1E000000 		.word	30
 2236 0020 23000000 		.word	35
 2237 0024 28000000 		.word	40
 2238 0028 2D000000 		.word	45
 2239 002c 32000000 		.word	50
 2240 0030 37000000 		.word	55
 2241 0034 3C000000 		.word	60
 2242 0038 46000000 		.word	70
 2243 003c 50000000 		.word	80
 2244              		.section	.rodata.spiInterface,"a",%progbits
 2245              		.align	2
 2246              		.set	.LANCHOR6,. + 0
 2247              		.type	spiInterface, %object
 2248              		.size	spiInterface, 76
 2249              	spiInterface:
 2250 0000 00000000 		.word	sd_mmc_spi_select_device
 2251 0004 00000000 		.word	sd_mmc_spi_deselect_device
 2252 0008 00000000 		.word	sd_mmc_spi_get_bus_width
 2253 000c 00000000 		.word	sd_mmc_spi_is_high_speed_capable
 2254 0010 00000000 		.word	sd_mmc_spi_send_clock
 2255 0014 00000000 		.word	sd_mmc_spi_send_cmd
 2256 0018 00000000 		.word	sd_mmc_spi_get_response
 2257 001c 00000000 		.word	sd_mmc_spi_get_response_128
 2258 0020 00000000 		.word	sd_mmc_spi_adtc_start
 2259 0024 00000000 		.word	sd_mmc_spi_send_cmd
 2260 0028 00000000 		.word	sd_mmc_spi_read_word
 2261 002c 00000000 		.word	sd_mmc_spi_write_word
 2262 0030 00000000 		.word	sd_mmc_spi_start_read_blocks
 2263 0034 00000000 		.word	sd_mmc_spi_wait_end_of_read_blocks
 2264 0038 00000000 		.word	sd_mmc_spi_start_write_blocks
 2265 003c 00000000 		.word	sd_mmc_spi_wait_end_of_write_blocks
 2266 0040 00000000 		.word	spi_mmc_get_speed
 2267 0044 00000000 		.word	sd_mmc_spi_set_idle_func
 2268 0048 01       		.byte	1
 2269 0049 000000   		.space	3
 2270              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
