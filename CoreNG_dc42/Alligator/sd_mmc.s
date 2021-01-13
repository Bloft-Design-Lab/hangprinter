ARM GAS  /tmp/ccKolRqR.s 			page 1


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
ARM GAS  /tmp/ccKolRqR.s 			page 2


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
ARM GAS  /tmp/ccKolRqR.s 			page 3


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
ARM GAS  /tmp/ccKolRqR.s 			page 4


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
ARM GAS  /tmp/ccKolRqR.s 			page 5


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
ARM GAS  /tmp/ccKolRqR.s 			page 6


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
ARM GAS  /tmp/ccKolRqR.s 			page 7


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
ARM GAS  /tmp/ccKolRqR.s 			page 8


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
ARM GAS  /tmp/ccKolRqR.s 			page 9


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
ARM GAS  /tmp/ccKolRqR.s 			page 10


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
ARM GAS  /tmp/ccKolRqR.s 			page 11


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
ARM GAS  /tmp/ccKolRqR.s 			page 12


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
ARM GAS  /tmp/ccKolRqR.s 			page 13


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
 712 0004 0B4C     		ldr	r4, .L145
 713 0006 0E46     		mov	r6, r1
 714 0008 2374     		strb	r3, [r4, #16]
 715 000a 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
 716 000c FF28     		cmp	r0, #255
 717 000e 2073     		strb	r0, [r4, #12]
 718 0010 03D0     		beq	.L140
 719 0012 0022     		movs	r2, #0
 720 0014 0121     		movs	r1, #1
 721 0016 FFF7FEFF 		bl	pinModeDuet
 722              	.L140:
 723 001a FF21     		movs	r1, #255
 724 001c 0025     		movs	r5, #0
 725 001e 064A     		ldr	r2, .L145+4
 726 0020 064B     		ldr	r3, .L145+8
 727 0022 1170     		strb	r1, [r2]
 728 0024 3046     		mov	r0, r6
 729 0026 E574     		strb	r5, [r4, #19]
 730 0028 2360     		str	r3, [r4]
 731 002a BDE87040 		pop	{r4, r5, r6, lr}
 732 002e FFF7FEBF 		b	sd_mmc_spi_init
 733              	.L146:
 734 0032 00BF     		.align	2
 735              	.L145:
 736 0034 00000000 		.word	.LANCHOR4
 737 0038 00000000 		.word	.LANCHOR5
 738 003c 00000000 		.word	.LANCHOR6
 739              		.size	sd_mmc_init, .-sd_mmc_init
 740              		.section	.text.sd_mmc_nb_slot,"ax",%progbits
 741              		.align	1
ARM GAS  /tmp/ccKolRqR.s 			page 14


 742              		.p2align 2,,3
 743              		.global	sd_mmc_nb_slot
 744              		.syntax unified
 745              		.thumb
 746              		.thumb_func
 747              		.fpu softvfp
 748              		.type	sd_mmc_nb_slot, %function
 749              	sd_mmc_nb_slot:
 750              		@ args = 0, pretend = 0, frame = 0
 751              		@ frame_needed = 0, uses_anonymous_args = 0
 752              		@ link register save eliminated.
 753 0000 0120     		movs	r0, #1
 754 0002 7047     		bx	lr
 755              		.size	sd_mmc_nb_slot, .-sd_mmc_nb_slot
 756              		.section	.text.sd_mmc_check,"ax",%progbits
 757              		.align	1
 758              		.p2align 2,,3
 759              		.global	sd_mmc_check
 760              		.syntax unified
 761              		.thumb
 762              		.thumb_func
 763              		.fpu softvfp
 764              		.type	sd_mmc_check, %function
 765              	sd_mmc_check:
 766              		@ args = 0, pretend = 0, frame = 72
 767              		@ frame_needed = 0, uses_anonymous_args = 0
 768 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 769 0002 95B0     		sub	sp, sp, #84
 770 0004 38B1     		cbz	r0, .L150
 771 0006 0424     		movs	r4, #4
 772              	.L149:
 773 0008 914B     		ldr	r3, .L375
 774 000a 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 775 000c 002B     		cmp	r3, #0
 776 000e 44D0     		beq	.L359
 777              	.L228:
 778 0010 2046     		mov	r0, r4
 779 0012 15B0     		add	sp, sp, #84
 780              		@ sp needed
 781 0014 F0BD     		pop	{r4, r5, r6, r7, pc}
 782              	.L150:
 783 0016 0020     		movs	r0, #0
 784 0018 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 785 001c 0828     		cmp	r0, #8
 786 001e 0446     		mov	r4, r0
 787 0020 F9D0     		beq	.L150
 788 0022 0128     		cmp	r0, #1
 789 0024 F0D1     		bne	.L149
 790 0026 8B4C     		ldr	r4, .L375+4
 791 0028 2368     		ldr	r3, [r4]
 792 002a 1A68     		ldr	r2, [r3]
 793 002c 92F84850 		ldrb	r5, [r2, #72]	@ zero_extendqisi2
 794 0030 E5B1     		cbz	r5, .L153
 795 0032 0025     		movs	r5, #0
 796 0034 8DF80F50 		strb	r5, [sp, #15]
 797 0038 5874     		strb	r0, [r3, #17]
 798 003a 9D74     		strb	r5, [r3, #18]
ARM GAS  /tmp/ccKolRqR.s 			page 15


 799 003c DD81     		strh	r5, [r3, #14]	@ movhi
 800 003e 1369     		ldr	r3, [r2, #16]
 801 0040 9847     		blx	r3
 802 0042 2368     		ldr	r3, [r4]
 803 0044 2946     		mov	r1, r5
 804 0046 1B68     		ldr	r3, [r3]
 805 0048 4FF48850 		mov	r0, #4352
 806 004c 5B69     		ldr	r3, [r3, #20]
 807 004e 9847     		blx	r3
 808 0050 40BB     		cbnz	r0, .L365
 809              	.L166:
 810 0052 0025     		movs	r5, #0
 811              	.L358:
 812 0054 2368     		ldr	r3, [r4]
 813              	.L174:
 814 0056 D5B1     		cbz	r5, .L216
 815 0058 0024     		movs	r4, #0
 816 005a 7D4A     		ldr	r2, .L375
 817 005c 1C74     		strb	r4, [r3, #16]
 818 005e 1578     		ldrb	r5, [r2]	@ zero_extendqisi2
 819 0060 002D     		cmp	r5, #0
 820 0062 D5D1     		bne	.L228
 821 0064 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 822 0068 2C46     		mov	r4, r5
 823 006a D1E7     		b	.L228
 824              	.L153:
 825 006c 8DF80F50 		strb	r5, [sp, #15]
 826 0070 5874     		strb	r0, [r3, #17]
 827 0072 9D74     		strb	r5, [r3, #18]
 828 0074 1269     		ldr	r2, [r2, #16]
 829 0076 DD81     		strh	r5, [r3, #14]	@ movhi
 830 0078 9047     		blx	r2
 831 007a 2368     		ldr	r3, [r4]
 832 007c 2946     		mov	r1, r5
 833 007e 1B68     		ldr	r3, [r3]
 834 0080 4FF48040 		mov	r0, #16384
 835 0084 5B69     		ldr	r3, [r3, #20]
 836 0086 9847     		blx	r3
 837 0088 0028     		cmp	r0, #0
 838 008a 39D1     		bne	.L366
 839              	.L213:
 840 008c 2368     		ldr	r3, [r4]
 841              	.L216:
 842 008e 0324     		movs	r4, #3
 843 0090 6F4A     		ldr	r2, .L375
 844 0092 1C74     		strb	r4, [r3, #16]
 845 0094 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 846 0096 002B     		cmp	r3, #0
 847 0098 BAD1     		bne	.L228
 848              	.L359:
 849 009a FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 850 009e 2046     		mov	r0, r4
 851 00a0 15B0     		add	sp, sp, #84
 852              		@ sp needed
 853 00a2 F0BD     		pop	{r4, r5, r6, r7, pc}
 854              	.L365:
 855 00a4 0DF10F00 		add	r0, sp, #15
ARM GAS  /tmp/ccKolRqR.s 			page 16


 856 00a8 FFF7FEFF 		bl	sd_cmd8
 857 00ac 0546     		mov	r5, r0
 858 00ae 0028     		cmp	r0, #0
 859 00b0 CFD0     		beq	.L166
 860 00b2 2068     		ldr	r0, [r4]
 861 00b4 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 862 00b6 D907     		lsls	r1, r3, #31
 863 00b8 00F19580 		bmi	.L367
 864              	.L157:
 865 00bc 03F00903 		and	r3, r3, #9
 866 00c0 012B     		cmp	r3, #1
 867 00c2 11D1     		bne	.L173
 868              	.L222:
 869 00c4 0368     		ldr	r3, [r0]
 870 00c6 4FF40071 		mov	r1, #512
 871 00ca 5B69     		ldr	r3, [r3, #20]
 872 00cc 41F21010 		movw	r0, #4368
 873 00d0 9847     		blx	r3
 874 00d2 0028     		cmp	r0, #0
 875 00d4 BDD0     		beq	.L166
 876 00d6 2068     		ldr	r0, [r4]
 877 00d8 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 878              	.L172:
 879 00da DE07     		lsls	r6, r3, #31
 880 00dc 04D5     		bpl	.L173
 881 00de FFF7FEFF 		bl	sd_mmc_cmd13
 882 00e2 0028     		cmp	r0, #0
 883 00e4 B5D0     		beq	.L166
 884              	.L357:
 885 00e6 2068     		ldr	r0, [r4]
 886              	.L173:
 887 00e8 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 888 00ec 0268     		ldr	r2, [r0]
 889 00ee 0033     		adds	r3, r3, #0
 890 00f0 1668     		ldr	r6, [r2]
 891 00f2 4168     		ldr	r1, [r0, #4]
 892 00f4 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 893 00f6 18BF     		it	ne
 894 00f8 0123     		movne	r3, #1
 895 00fa C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 896 00fc B047     		blx	r6
 897 00fe A9E7     		b	.L358
 898              	.L366:
 899 0100 0DF10F00 		add	r0, sp, #15
 900 0104 FFF7FEFF 		bl	sd_cmd8
 901 0108 2368     		ldr	r3, [r4]
 902 010a 0028     		cmp	r0, #0
 903 010c BFD0     		beq	.L216
 904 010e 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 905 0110 D007     		lsls	r0, r2, #31
 906 0112 00F1F880 		bmi	.L368
 907              	.L178:
 908 0116 1B68     		ldr	r3, [r3]
 909 0118 0021     		movs	r1, #0
 910 011a 5B69     		ldr	r3, [r3, #20]
 911 011c 45F20310 		movw	r0, #20739
 912 0120 9847     		blx	r3
ARM GAS  /tmp/ccKolRqR.s 			page 17


 913 0122 0028     		cmp	r0, #0
 914 0124 B2D0     		beq	.L213
 915 0126 2568     		ldr	r5, [r4]
 916 0128 2B68     		ldr	r3, [r5]
 917 012a 9B69     		ldr	r3, [r3, #24]
 918 012c 9847     		blx	r3
 919 012e 2368     		ldr	r3, [r4]
 920 0130 000C     		lsrs	r0, r0, #16
 921 0132 E881     		strh	r0, [r5, #14]	@ movhi
 922 0134 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 923 0136 D107     		lsls	r1, r2, #31
 924 0138 06D5     		bpl	.L201
 925 013a FFF7FEFF 		bl	sd_mmc_cmd9_mci
 926 013e 0028     		cmp	r0, #0
 927 0140 A4D0     		beq	.L213
 928 0142 FFF7FEFF 		bl	sd_decode_csd
 929 0146 2368     		ldr	r3, [r4]
 930              	.L201:
 931 0148 D989     		ldrh	r1, [r3, #14]
 932 014a 1B68     		ldr	r3, [r3]
 933 014c 0904     		lsls	r1, r1, #16
 934 014e 5B69     		ldr	r3, [r3, #20]
 935 0150 43F20710 		movw	r0, #12551
 936 0154 9847     		blx	r3
 937 0156 2368     		ldr	r3, [r4]
 938 0158 0546     		mov	r5, r0
 939 015a 0028     		cmp	r0, #0
 940 015c 97D0     		beq	.L216
 941 015e 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 942 0160 D207     		lsls	r2, r2, #31
 943 0162 04D5     		bpl	.L204
 944 0164 FFF7FEFF 		bl	sd_acmd51
 945 0168 2368     		ldr	r3, [r4]
 946 016a 0028     		cmp	r0, #0
 947 016c 8FD0     		beq	.L216
 948              	.L204:
 949 016e 1A68     		ldr	r2, [r3]
 950 0170 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 951 0172 9368     		ldr	r3, [r2, #8]
 952 0174 9847     		blx	r3
 953 0176 0328     		cmp	r0, #3
 954 0178 0FD9     		bls	.L206
 955 017a 2068     		ldr	r0, [r4]
 956 017c 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 957 017e DF07     		lsls	r7, r3, #31
 958 0180 00F1DD81 		bmi	.L207
 959 0184 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 960              	.L208:
 961 0186 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 962 018a 0168     		ldr	r1, [r0]
 963 018c 0033     		adds	r3, r3, #0
 964 018e 0E68     		ldr	r6, [r1]
 965 0190 18BF     		it	ne
 966 0192 0123     		movne	r3, #1
 967 0194 4168     		ldr	r1, [r0, #4]
 968 0196 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 969 0198 B047     		blx	r6
ARM GAS  /tmp/ccKolRqR.s 			page 18


 970              	.L206:
 971 019a 2368     		ldr	r3, [r4]
 972 019c 1B68     		ldr	r3, [r3]
 973 019e DB68     		ldr	r3, [r3, #12]
 974 01a0 9847     		blx	r3
 975 01a2 90B1     		cbz	r0, .L211
 976 01a4 2068     		ldr	r0, [r4]
 977 01a6 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 978 01a8 DE07     		lsls	r6, r3, #31
 979 01aa 03D5     		bpl	.L212
 980 01ac 837C     		ldrb	r3, [r0, #18]	@ zero_extendqisi2
 981 01ae 102B     		cmp	r3, #16
 982 01b0 00F2E481 		bhi	.L369
 983              	.L212:
 984 01b4 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 985 01b8 0268     		ldr	r2, [r0]
 986 01ba 0033     		adds	r3, r3, #0
 987 01bc 1668     		ldr	r6, [r2]
 988 01be 4168     		ldr	r1, [r0, #4]
 989 01c0 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 990 01c2 18BF     		it	ne
 991 01c4 0123     		movne	r3, #1
 992 01c6 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 993 01c8 B047     		blx	r6
 994              	.L211:
 995 01ca 2368     		ldr	r3, [r4]
 996 01cc 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 997 01ce D207     		lsls	r2, r2, #31
 998 01d0 7FF541AF 		bpl	.L174
 999 01d4 1B68     		ldr	r3, [r3]
 1000 01d6 4FF40071 		mov	r1, #512
 1001 01da 5B69     		ldr	r3, [r3, #20]
 1002 01dc 41F21010 		movw	r0, #4368
 1003 01e0 9847     		blx	r3
 1004              	.L360:
 1005 01e2 0546     		mov	r5, r0
 1006 01e4 36E7     		b	.L358
 1007              	.L367:
 1008 01e6 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 1009 01ea 41F6EF36 		movw	r6, #7151
 1010 01ee 002B     		cmp	r3, #0
 1011 01f0 14BF     		ite	ne
 1012 01f2 4FF08047 		movne	r7, #1073741824
 1013 01f6 0027     		moveq	r7, #0
 1014 01f8 12E0     		b	.L160
 1015              	.L370:
 1016 01fa 2368     		ldr	r3, [r4]
 1017 01fc 3946     		mov	r1, r7
 1018 01fe 1B68     		ldr	r3, [r3]
 1019 0200 41F22910 		movw	r0, #4393
 1020 0204 5B69     		ldr	r3, [r3, #20]
 1021 0206 9847     		blx	r3
 1022 0208 90B1     		cbz	r0, .L158
 1023 020a 2368     		ldr	r3, [r4]
 1024 020c 1B68     		ldr	r3, [r3]
 1025 020e 9B69     		ldr	r3, [r3, #24]
 1026 0210 9847     		blx	r3
ARM GAS  /tmp/ccKolRqR.s 			page 19


 1027 0212 10F00101 		ands	r1, r0, #1
 1028 0216 00F04781 		beq	.L159
 1029 021a 013E     		subs	r6, r6, #1
 1030 021c 08D0     		beq	.L158
 1031 021e 2068     		ldr	r0, [r4]
 1032              	.L160:
 1033 0220 0368     		ldr	r3, [r0]
 1034 0222 0021     		movs	r1, #0
 1035 0224 5B69     		ldr	r3, [r3, #20]
 1036 0226 41F23710 		movw	r0, #4407
 1037 022a 9847     		blx	r3
 1038 022c 0028     		cmp	r0, #0
 1039 022e E4D1     		bne	.L370
 1040              	.L158:
 1041 0230 0220     		movs	r0, #2
 1042 0232 2368     		ldr	r3, [r4]
 1043 0234 0021     		movs	r1, #0
 1044 0236 1A68     		ldr	r2, [r3]
 1045 0238 5874     		strb	r0, [r3, #17]
 1046 023a 5369     		ldr	r3, [r2, #20]
 1047 023c 4FF48850 		mov	r0, #4352
 1048 0240 9847     		blx	r3
 1049 0242 0028     		cmp	r0, #0
 1050 0244 3FF405AF 		beq	.L166
 1051 0248 41F6EF35 		movw	r5, #7151
 1052 024c 07E0     		b	.L167
 1053              	.L376:
 1054 024e 00BF     		.align	2
 1055              	.L375:
 1056 0250 00000000 		.word	.LANCHOR5
 1057 0254 00000000 		.word	.LANCHOR0
 1058              	.L371:
 1059 0258 013D     		subs	r5, r5, #1
 1060 025a 3FF4FAAE 		beq	.L166
 1061              	.L167:
 1062 025e 2368     		ldr	r3, [r4]
 1063 0260 0021     		movs	r1, #0
 1064 0262 1B68     		ldr	r3, [r3]
 1065 0264 41F20110 		movw	r0, #4353
 1066 0268 5B69     		ldr	r3, [r3, #20]
 1067 026a 9847     		blx	r3
 1068 026c 0028     		cmp	r0, #0
 1069 026e 3FF4F0AE 		beq	.L166
 1070 0272 2368     		ldr	r3, [r4]
 1071 0274 1B68     		ldr	r3, [r3]
 1072 0276 9B69     		ldr	r3, [r3, #24]
 1073 0278 9847     		blx	r3
 1074 027a 10F00101 		ands	r1, r0, #1
 1075 027e EBD1     		bne	.L371
 1076 0280 2368     		ldr	r3, [r4]
 1077 0282 40F23A50 		movw	r0, #1338
 1078 0286 1B68     		ldr	r3, [r3]
 1079 0288 5B69     		ldr	r3, [r3, #20]
 1080 028a 9847     		blx	r3
 1081 028c 0028     		cmp	r0, #0
 1082 028e 3FF4E0AE 		beq	.L166
 1083 0292 2368     		ldr	r3, [r4]
ARM GAS  /tmp/ccKolRqR.s 			page 20


 1084 0294 1B68     		ldr	r3, [r3]
 1085 0296 9B69     		ldr	r3, [r3, #24]
 1086 0298 9847     		blx	r3
 1087 029a 00F0C040 		and	r0, r0, #1610612736
 1088 029e B0F1804F 		cmp	r0, #1073741824
 1089 02a2 2368     		ldr	r3, [r4]
 1090 02a4 03D1     		bne	.L169
 1091 02a6 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1092 02a8 42F00802 		orr	r2, r2, #8
 1093 02ac 5A74     		strb	r2, [r3, #17]
 1094              	.L169:
 1095 02ae 1B68     		ldr	r3, [r3]
 1096 02b0 0021     		movs	r1, #0
 1097 02b2 5B69     		ldr	r3, [r3, #20]
 1098 02b4 41F23B10 		movw	r0, #4411
 1099 02b8 9847     		blx	r3
 1100 02ba 0028     		cmp	r0, #0
 1101 02bc 3FF4C9AE 		beq	.L166
 1102 02c0 FFF7FEFF 		bl	sd_mmc_cmd9_spi
 1103 02c4 0028     		cmp	r0, #0
 1104 02c6 3FF4C4AE 		beq	.L166
 1105 02ca FFF7FEFF 		bl	mmc_decode_csd
 1106 02ce 2368     		ldr	r3, [r4]
 1107 02d0 9A7C     		ldrb	r2, [r3, #18]	@ zero_extendqisi2
 1108 02d2 3F2A     		cmp	r2, #63
 1109 02d4 06D9     		bls	.L170
 1110 02d6 04A8     		add	r0, sp, #16
 1111 02d8 FFF7FEFF 		bl	mmc_cmd8
 1112 02dc 0028     		cmp	r0, #0
 1113 02de 3FF4B8AE 		beq	.L166
 1114 02e2 2368     		ldr	r3, [r4]
 1115              	.L170:
 1116 02e4 1B68     		ldr	r3, [r3]
 1117 02e6 4FF40071 		mov	r1, #512
 1118 02ea 5B69     		ldr	r3, [r3, #20]
 1119 02ec 41F21010 		movw	r0, #4368
 1120 02f0 9847     		blx	r3
 1121 02f2 0028     		cmp	r0, #0
 1122 02f4 3FF4ADAE 		beq	.L166
 1123 02f8 FFF7FEFF 		bl	sd_mmc_cmd13
 1124 02fc 0546     		mov	r5, r0
 1125 02fe 0028     		cmp	r0, #0
 1126 0300 3FF4A7AE 		beq	.L166
 1127 0304 EFE6     		b	.L357
 1128              	.L368:
 1129 0306 9DF80F20 		ldrb	r2, [sp, #15]	@ zero_extendqisi2
 1130 030a 994F     		ldr	r7, .L377
 1131 030c 002A     		cmp	r2, #0
 1132 030e 08BF     		it	eq
 1133 0310 4FF4FC17 		moveq	r7, #2064384
 1134 0314 40F63506 		movw	r6, #2101
 1135 0318 11E0     		b	.L183
 1136              	.L373:
 1137 031a 2368     		ldr	r3, [r4]
 1138 031c 3946     		mov	r1, r7
 1139 031e 1B68     		ldr	r3, [r3]
 1140 0320 44F22950 		movw	r0, #17705
ARM GAS  /tmp/ccKolRqR.s 			page 21


 1141 0324 5B69     		ldr	r3, [r3, #20]
 1142 0326 9847     		blx	r3
 1143 0328 88B1     		cbz	r0, .L179
 1144 032a 2368     		ldr	r3, [r4]
 1145 032c 1B68     		ldr	r3, [r3]
 1146 032e 9B69     		ldr	r3, [r3, #24]
 1147 0330 9847     		blx	r3
 1148 0332 0028     		cmp	r0, #0
 1149 0334 C0F2EE80 		blt	.L372
 1150 0338 013E     		subs	r6, r6, #1
 1151 033a 08D0     		beq	.L179
 1152 033c 2368     		ldr	r3, [r4]
 1153              	.L183:
 1154 033e 1B68     		ldr	r3, [r3]
 1155 0340 0021     		movs	r1, #0
 1156 0342 5B69     		ldr	r3, [r3, #20]
 1157 0344 41F23710 		movw	r0, #4407
 1158 0348 9847     		blx	r3
 1159 034a 0028     		cmp	r0, #0
 1160 034c E5D1     		bne	.L373
 1161              	.L179:
 1162 034e 0220     		movs	r0, #2
 1163 0350 2368     		ldr	r3, [r4]
 1164 0352 0021     		movs	r1, #0
 1165 0354 1A68     		ldr	r2, [r3]
 1166 0356 5874     		strb	r0, [r3, #17]
 1167 0358 5369     		ldr	r3, [r2, #20]
 1168 035a 4FF48040 		mov	r0, #16384
 1169 035e 9847     		blx	r3
 1170 0360 0028     		cmp	r0, #0
 1171 0362 3FF477AE 		beq	.L358
 1172 0366 41F26906 		movw	r6, #4201
 1173 036a 814F     		ldr	r7, .L377
 1174 036c 02E0     		b	.L190
 1175              	.L186:
 1176 036e 013E     		subs	r6, r6, #1
 1177 0370 3FF470AE 		beq	.L358
 1178              	.L190:
 1179 0374 2368     		ldr	r3, [r4]
 1180 0376 3946     		mov	r1, r7
 1181 0378 1B68     		ldr	r3, [r3]
 1182 037a 44F20150 		movw	r0, #17665
 1183 037e 5B69     		ldr	r3, [r3, #20]
 1184 0380 9847     		blx	r3
 1185 0382 0028     		cmp	r0, #0
 1186 0384 3FF466AE 		beq	.L358
 1187 0388 2368     		ldr	r3, [r4]
 1188 038a 1B68     		ldr	r3, [r3]
 1189 038c 9B69     		ldr	r3, [r3, #24]
 1190 038e 9847     		blx	r3
 1191 0390 031E     		subs	r3, r0, #0
 1192 0392 ECDA     		bge	.L186
 1193 0394 03F0C043 		and	r3, r3, #1610612736
 1194 0398 B3F1804F 		cmp	r3, #1073741824
 1195 039c 2368     		ldr	r3, [r4]
 1196 039e 03D1     		bne	.L188
 1197 03a0 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
ARM GAS  /tmp/ccKolRqR.s 			page 22


 1198 03a2 42F00802 		orr	r2, r2, #8
 1199 03a6 5A74     		strb	r2, [r3, #17]
 1200              	.L188:
 1201 03a8 1B68     		ldr	r3, [r3]
 1202 03aa 0021     		movs	r1, #0
 1203 03ac 5B69     		ldr	r3, [r3, #20]
 1204 03ae 45F60230 		movw	r0, #23298
 1205 03b2 9847     		blx	r3
 1206 03b4 0028     		cmp	r0, #0
 1207 03b6 3FF44DAE 		beq	.L358
 1208 03ba 0120     		movs	r0, #1
 1209 03bc 2368     		ldr	r3, [r4]
 1210 03be 4FF48031 		mov	r1, #65536
 1211 03c2 1A68     		ldr	r2, [r3]
 1212 03c4 D881     		strh	r0, [r3, #14]	@ movhi
 1213 03c6 5369     		ldr	r3, [r2, #20]
 1214 03c8 41F20310 		movw	r0, #4355
 1215 03cc 9847     		blx	r3
 1216 03ce 0028     		cmp	r0, #0
 1217 03d0 3FF440AE 		beq	.L358
 1218 03d4 FFF7FEFF 		bl	sd_mmc_cmd9_mci
 1219 03d8 0028     		cmp	r0, #0
 1220 03da 3FF43BAE 		beq	.L358
 1221 03de FFF7FEFF 		bl	mmc_decode_csd
 1222 03e2 2368     		ldr	r3, [r4]
 1223 03e4 43F20710 		movw	r0, #12551
 1224 03e8 D989     		ldrh	r1, [r3, #14]
 1225 03ea 1B68     		ldr	r3, [r3]
 1226 03ec 0904     		lsls	r1, r1, #16
 1227 03ee 5B69     		ldr	r3, [r3, #20]
 1228 03f0 9847     		blx	r3
 1229 03f2 0028     		cmp	r0, #0
 1230 03f4 3FF42EAE 		beq	.L358
 1231 03f8 2068     		ldr	r0, [r4]
 1232 03fa 837C     		ldrb	r3, [r0, #18]	@ zero_extendqisi2
 1233 03fc 3F2B     		cmp	r3, #63
 1234 03fe 40F2FC80 		bls	.L191
 1235 0402 04A8     		add	r0, sp, #16
 1236 0404 FFF7FEFF 		bl	mmc_cmd8
 1237 0408 0028     		cmp	r0, #0
 1238 040a 3FF423AE 		beq	.L358
 1239 040e 2368     		ldr	r3, [r4]
 1240 0410 1A68     		ldr	r2, [r3]
 1241 0412 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1242 0414 9368     		ldr	r3, [r2, #8]
 1243 0416 9847     		blx	r3
 1244 0418 0328     		cmp	r0, #3
 1245 041a 2AD9     		bls	.L192
 1246 041c 2368     		ldr	r3, [r4]
 1247 041e 1A68     		ldr	r2, [r3]
 1248 0420 D87C     		ldrb	r0, [r3, #19]	@ zero_extendqisi2
 1249 0422 9368     		ldr	r3, [r2, #8]
 1250 0424 9847     		blx	r3
 1251 0426 0428     		cmp	r0, #4
 1252 0428 0646     		mov	r6, r0
 1253 042a 00F0E280 		beq	.L224
 1254 042e 5149     		ldr	r1, .L377+4
ARM GAS  /tmp/ccKolRqR.s 			page 23


 1255 0430 514B     		ldr	r3, .L377+8
 1256 0432 0828     		cmp	r0, #8
 1257 0434 18BF     		it	ne
 1258 0436 1946     		movne	r1, r3
 1259              	.L194:
 1260 0438 2368     		ldr	r3, [r4]
 1261 043a 43F20610 		movw	r0, #12550
 1262 043e 1B68     		ldr	r3, [r3]
 1263 0440 5B69     		ldr	r3, [r3, #20]
 1264 0442 9847     		blx	r3
 1265 0444 0028     		cmp	r0, #0
 1266 0446 3FF405AE 		beq	.L358
 1267 044a 2368     		ldr	r3, [r4]
 1268 044c 1B68     		ldr	r3, [r3]
 1269 044e 9B69     		ldr	r3, [r3, #24]
 1270 0450 9847     		blx	r3
 1271 0452 0706     		lsls	r7, r0, #24
 1272 0454 3FF5FEAD 		bmi	.L358
 1273 0458 2068     		ldr	r0, [r4]
 1274 045a 3246     		mov	r2, r6
 1275 045c 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1276 0460 0168     		ldr	r1, [r0]
 1277 0462 0675     		strb	r6, [r0, #20]
 1278 0464 0033     		adds	r3, r3, #0
 1279 0466 0E68     		ldr	r6, [r1]
 1280 0468 18BF     		it	ne
 1281 046a 0123     		movne	r3, #1
 1282 046c 4168     		ldr	r1, [r0, #4]
 1283 046e C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1284 0470 B047     		blx	r6
 1285              	.L192:
 1286 0472 2368     		ldr	r3, [r4]
 1287 0474 1B68     		ldr	r3, [r3]
 1288 0476 DB68     		ldr	r3, [r3, #12]
 1289 0478 9847     		blx	r3
 1290 047a 20B1     		cbz	r0, .L196
 1291 047c 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 1292 0480 002B     		cmp	r3, #0
 1293 0482 40F0C680 		bne	.L374
 1294              	.L196:
 1295 0486 0A26     		movs	r6, #10
 1296              	.L198:
 1297 0488 2368     		ldr	r3, [r4]
 1298 048a 4FF40071 		mov	r1, #512
 1299 048e 1B68     		ldr	r3, [r3]
 1300 0490 41F21010 		movw	r0, #4368
 1301 0494 5B69     		ldr	r3, [r3, #20]
 1302 0496 9847     		blx	r3
 1303 0498 013E     		subs	r6, r6, #1
 1304 049a 0028     		cmp	r0, #0
 1305 049c 7FF4A1AE 		bne	.L360
 1306 04a0 16F0FF06 		ands	r6, r6, #255
 1307 04a4 F0D1     		bne	.L198
 1308 04a6 D5E5     		b	.L358
 1309              	.L159:
 1310 04a8 2368     		ldr	r3, [r4]
 1311 04aa 40F23A50 		movw	r0, #1338
ARM GAS  /tmp/ccKolRqR.s 			page 24


 1312 04ae 1B68     		ldr	r3, [r3]
 1313 04b0 5B69     		ldr	r3, [r3, #20]
 1314 04b2 9847     		blx	r3
 1315 04b4 0028     		cmp	r0, #0
 1316 04b6 3FF4BBAE 		beq	.L158
 1317 04ba 2368     		ldr	r3, [r4]
 1318 04bc 1B68     		ldr	r3, [r3]
 1319 04be 9B69     		ldr	r3, [r3, #24]
 1320 04c0 9847     		blx	r3
 1321 04c2 4200     		lsls	r2, r0, #1
 1322 04c4 2368     		ldr	r3, [r4]
 1323 04c6 03D5     		bpl	.L162
 1324 04c8 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1325 04ca 42F00802 		orr	r2, r2, #8
 1326 04ce 5A74     		strb	r2, [r3, #17]
 1327              	.L162:
 1328 04d0 1B68     		ldr	r3, [r3]
 1329 04d2 0021     		movs	r1, #0
 1330 04d4 5B69     		ldr	r3, [r3, #20]
 1331 04d6 41F23B10 		movw	r0, #4411
 1332 04da 9847     		blx	r3
 1333 04dc 0028     		cmp	r0, #0
 1334 04de 3FF4B8AD 		beq	.L166
 1335 04e2 2068     		ldr	r0, [r4]
 1336 04e4 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1337 04e6 DF07     		lsls	r7, r3, #31
 1338 04e8 7FF5E8AD 		bpl	.L157
 1339 04ec FFF7FEFF 		bl	sd_mmc_cmd9_spi
 1340 04f0 0028     		cmp	r0, #0
 1341 04f2 3FF4AEAD 		beq	.L166
 1342 04f6 FFF7FEFF 		bl	sd_decode_csd
 1343 04fa FFF7FEFF 		bl	sd_acmd51
 1344 04fe 0028     		cmp	r0, #0
 1345 0500 3FF4A7AD 		beq	.L166
 1346 0504 2068     		ldr	r0, [r4]
 1347 0506 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1348 0508 03F00902 		and	r2, r3, #9
 1349 050c 012A     		cmp	r2, #1
 1350 050e 7FF4E4AD 		bne	.L172
 1351 0512 D7E5     		b	.L222
 1352              	.L372:
 1353 0514 2368     		ldr	r3, [r4]
 1354 0516 4100     		lsls	r1, r0, #1
 1355 0518 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1356 051a 02D5     		bpl	.L182
 1357 051c 42F00802 		orr	r2, r2, #8
 1358 0520 5A74     		strb	r2, [r3, #17]
 1359              	.L182:
 1360 0522 D007     		lsls	r0, r2, #31
 1361 0524 7FF5F7AD 		bpl	.L178
 1362 0528 1B68     		ldr	r3, [r3]
 1363 052a 0021     		movs	r1, #0
 1364 052c 5B69     		ldr	r3, [r3, #20]
 1365 052e 45F60230 		movw	r0, #23298
 1366 0532 9847     		blx	r3
 1367 0534 2368     		ldr	r3, [r4]
 1368 0536 0028     		cmp	r0, #0
ARM GAS  /tmp/ccKolRqR.s 			page 25


 1369 0538 7FF4EDAD 		bne	.L178
 1370 053c A7E5     		b	.L216
 1371              	.L207:
 1372 053e C189     		ldrh	r1, [r0, #14]
 1373 0540 0368     		ldr	r3, [r0]
 1374 0542 0904     		lsls	r1, r1, #16
 1375 0544 5B69     		ldr	r3, [r3, #20]
 1376 0546 41F23710 		movw	r0, #4407
 1377 054a 9847     		blx	r3
 1378 054c 2368     		ldr	r3, [r4]
 1379 054e 0028     		cmp	r0, #0
 1380 0550 3FF49DAD 		beq	.L216
 1381 0554 1B68     		ldr	r3, [r3]
 1382 0556 0221     		movs	r1, #2
 1383 0558 41F20610 		movw	r0, #4358
 1384 055c 5B69     		ldr	r3, [r3, #20]
 1385 055e 9847     		blx	r3
 1386 0560 0028     		cmp	r0, #0
 1387 0562 3FF493AD 		beq	.L213
 1388 0566 0423     		movs	r3, #4
 1389 0568 2068     		ldr	r0, [r4]
 1390 056a 1A46     		mov	r2, r3
 1391 056c 0375     		strb	r3, [r0, #20]
 1392 056e 0AE6     		b	.L208
 1393              	.L378:
 1394              		.align	2
 1395              	.L377:
 1396 0570 00801F40 		.word	1075806208
 1397 0574 0002B701 		.word	28770816
 1398 0578 0000B701 		.word	28770304
 1399              	.L369:
 1400 057c 0126     		movs	r6, #1
 1401 057e 0368     		ldr	r3, [r0]
 1402 0580 0096     		str	r6, [sp]
 1403 0582 1F6A     		ldr	r7, [r3, #32]
 1404 0584 4022     		movs	r2, #64
 1405 0586 3346     		mov	r3, r6
 1406 0588 3049     		ldr	r1, .L379
 1407 058a 3148     		ldr	r0, .L379+4
 1408 058c B847     		blx	r7
 1409 058e 0028     		cmp	r0, #0
 1410 0590 3FF47CAD 		beq	.L213
 1411 0594 2368     		ldr	r3, [r4]
 1412 0596 3146     		mov	r1, r6
 1413 0598 1B68     		ldr	r3, [r3]
 1414 059a 04A8     		add	r0, sp, #16
 1415 059c 1B6B     		ldr	r3, [r3, #48]
 1416 059e 9847     		blx	r3
 1417 05a0 0028     		cmp	r0, #0
 1418 05a2 3FF473AD 		beq	.L213
 1419 05a6 2368     		ldr	r3, [r4]
 1420 05a8 1B68     		ldr	r3, [r3]
 1421 05aa 5B6B     		ldr	r3, [r3, #52]
 1422 05ac 9847     		blx	r3
 1423 05ae 0028     		cmp	r0, #0
 1424 05b0 3FF46CAD 		beq	.L213
 1425 05b4 2368     		ldr	r3, [r4]
ARM GAS  /tmp/ccKolRqR.s 			page 26


 1426 05b6 1B68     		ldr	r3, [r3]
 1427 05b8 9B69     		ldr	r3, [r3, #24]
 1428 05ba 9847     		blx	r3
 1429 05bc 0106     		lsls	r1, r0, #24
 1430 05be 3FF565AD 		bmi	.L213
 1431 05c2 9DF82030 		ldrb	r3, [sp, #32]	@ zero_extendqisi2
 1432 05c6 03F00F03 		and	r3, r3, #15
 1433 05ca 0F2B     		cmp	r3, #15
 1434 05cc 13D0     		beq	.L214
 1435 05ce BDF82C30 		ldrh	r3, [sp, #44]
 1436 05d2 5BBA     		rev16	r3, r3
 1437 05d4 9BB2     		uxth	r3, r3
 1438 05d6 002B     		cmp	r3, #0
 1439 05d8 7FF458AD 		bne	.L213
 1440 05dc 2368     		ldr	r3, [r4]
 1441 05de 1B68     		ldr	r3, [r3]
 1442 05e0 1B69     		ldr	r3, [r3, #16]
 1443 05e2 9847     		blx	r3
 1444 05e4 2068     		ldr	r0, [r4]
 1445 05e6 4368     		ldr	r3, [r0, #4]
 1446 05e8 80F82560 		strb	r6, [r0, #37]
 1447 05ec B340     		lsls	r3, r3, r6
 1448 05ee 4360     		str	r3, [r0, #4]
 1449 05f0 E0E5     		b	.L212
 1450              	.L224:
 1451 05f2 1849     		ldr	r1, .L379+8
 1452 05f4 20E7     		b	.L194
 1453              	.L214:
 1454 05f6 2068     		ldr	r0, [r4]
 1455 05f8 DCE5     		b	.L212
 1456              	.L191:
 1457 05fa 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 1458 05fe 0268     		ldr	r2, [r0]
 1459 0600 0033     		adds	r3, r3, #0
 1460 0602 1668     		ldr	r6, [r2]
 1461 0604 4168     		ldr	r1, [r0, #4]
 1462 0606 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1463 0608 18BF     		it	ne
 1464 060a 0123     		movne	r3, #1
 1465 060c C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1466 060e B047     		blx	r6
 1467 0610 39E7     		b	.L196
 1468              	.L374:
 1469 0612 2368     		ldr	r3, [r4]
 1470 0614 1049     		ldr	r1, .L379+12
 1471 0616 1B68     		ldr	r3, [r3]
 1472 0618 43F20610 		movw	r0, #12550
 1473 061c 5B69     		ldr	r3, [r3, #20]
 1474 061e 9847     		blx	r3
 1475 0620 0028     		cmp	r0, #0
 1476 0622 3FF417AD 		beq	.L358
 1477 0626 2368     		ldr	r3, [r4]
 1478 0628 1B68     		ldr	r3, [r3]
 1479 062a 9B69     		ldr	r3, [r3, #24]
 1480 062c 9847     		blx	r3
 1481 062e 0606     		lsls	r6, r0, #24
 1482 0630 3FF510AD 		bmi	.L358
ARM GAS  /tmp/ccKolRqR.s 			page 27


 1483 0634 0123     		movs	r3, #1
 1484 0636 2068     		ldr	r0, [r4]
 1485 0638 0849     		ldr	r1, .L379+16
 1486 063a 0268     		ldr	r2, [r0]
 1487 063c 80F82530 		strb	r3, [r0, #37]
 1488 0640 1668     		ldr	r6, [r2]
 1489 0642 4160     		str	r1, [r0, #4]
 1490 0644 027D     		ldrb	r2, [r0, #20]	@ zero_extendqisi2
 1491 0646 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 1492 0648 B047     		blx	r6
 1493 064a 1CE7     		b	.L196
 1494              	.L380:
 1495              		.align	2
 1496              	.L379:
 1497 064c 01FFFF80 		.word	-2130706687
 1498 0650 06110800 		.word	528646
 1499 0654 0001B701 		.word	28770560
 1500 0658 0001B903 		.word	62456064
 1501 065c 00751903 		.word	52000000
 1502              		.size	sd_mmc_check, .-sd_mmc_check
 1503              		.section	.text.sd_mmc_get_type,"ax",%progbits
 1504              		.align	1
 1505              		.p2align 2,,3
 1506              		.global	sd_mmc_get_type
 1507              		.syntax unified
 1508              		.thumb
 1509              		.thumb_func
 1510              		.fpu softvfp
 1511              		.type	sd_mmc_get_type, %function
 1512              	sd_mmc_get_type:
 1513              		@ args = 0, pretend = 0, frame = 0
 1514              		@ frame_needed = 0, uses_anonymous_args = 0
 1515 0000 08B1     		cbz	r0, .L390
 1516 0002 0020     		movs	r0, #0
 1517 0004 7047     		bx	lr
 1518              	.L390:
 1519 0006 08B5     		push	{r3, lr}
 1520 0008 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1521 000c 30B9     		cbnz	r0, .L384
 1522 000e 074B     		ldr	r3, .L392
 1523 0010 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1524 0012 2BB1     		cbz	r3, .L391
 1525 0014 064B     		ldr	r3, .L392+4
 1526 0016 1B68     		ldr	r3, [r3]
 1527 0018 587C     		ldrb	r0, [r3, #17]	@ zero_extendqisi2
 1528 001a 08BD     		pop	{r3, pc}
 1529              	.L384:
 1530 001c 0020     		movs	r0, #0
 1531 001e 08BD     		pop	{r3, pc}
 1532              	.L391:
 1533 0020 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1534 0024 024B     		ldr	r3, .L392+4
 1535 0026 1B68     		ldr	r3, [r3]
 1536 0028 587C     		ldrb	r0, [r3, #17]	@ zero_extendqisi2
 1537 002a 08BD     		pop	{r3, pc}
 1538              	.L393:
 1539              		.align	2
ARM GAS  /tmp/ccKolRqR.s 			page 28


 1540              	.L392:
 1541 002c 00000000 		.word	.LANCHOR5
 1542 0030 00000000 		.word	.LANCHOR0
 1543              		.size	sd_mmc_get_type, .-sd_mmc_get_type
 1544              		.section	.text.sd_mmc_get_version,"ax",%progbits
 1545              		.align	1
 1546              		.p2align 2,,3
 1547              		.global	sd_mmc_get_version
 1548              		.syntax unified
 1549              		.thumb
 1550              		.thumb_func
 1551              		.fpu softvfp
 1552              		.type	sd_mmc_get_version, %function
 1553              	sd_mmc_get_version:
 1554              		@ args = 0, pretend = 0, frame = 0
 1555              		@ frame_needed = 0, uses_anonymous_args = 0
 1556 0000 08B1     		cbz	r0, .L403
 1557 0002 0020     		movs	r0, #0
 1558 0004 7047     		bx	lr
 1559              	.L403:
 1560 0006 08B5     		push	{r3, lr}
 1561 0008 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1562 000c 30B9     		cbnz	r0, .L397
 1563 000e 074B     		ldr	r3, .L405
 1564 0010 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1565 0012 2BB1     		cbz	r3, .L404
 1566 0014 064B     		ldr	r3, .L405+4
 1567 0016 1B68     		ldr	r3, [r3]
 1568 0018 987C     		ldrb	r0, [r3, #18]	@ zero_extendqisi2
 1569 001a 08BD     		pop	{r3, pc}
 1570              	.L397:
 1571 001c 0020     		movs	r0, #0
 1572 001e 08BD     		pop	{r3, pc}
 1573              	.L404:
 1574 0020 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1575 0024 024B     		ldr	r3, .L405+4
 1576 0026 1B68     		ldr	r3, [r3]
 1577 0028 987C     		ldrb	r0, [r3, #18]	@ zero_extendqisi2
 1578 002a 08BD     		pop	{r3, pc}
 1579              	.L406:
 1580              		.align	2
 1581              	.L405:
 1582 002c 00000000 		.word	.LANCHOR5
 1583 0030 00000000 		.word	.LANCHOR0
 1584              		.size	sd_mmc_get_version, .-sd_mmc_get_version
 1585              		.section	.text.sd_mmc_get_capacity,"ax",%progbits
 1586              		.align	1
 1587              		.p2align 2,,3
 1588              		.global	sd_mmc_get_capacity
 1589              		.syntax unified
 1590              		.thumb
 1591              		.thumb_func
 1592              		.fpu softvfp
 1593              		.type	sd_mmc_get_capacity, %function
 1594              	sd_mmc_get_capacity:
 1595              		@ args = 0, pretend = 0, frame = 0
 1596              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccKolRqR.s 			page 29


 1597 0000 08B1     		cbz	r0, .L416
 1598 0002 0020     		movs	r0, #0
 1599 0004 7047     		bx	lr
 1600              	.L416:
 1601 0006 08B5     		push	{r3, lr}
 1602 0008 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1603 000c 30B9     		cbnz	r0, .L410
 1604 000e 074B     		ldr	r3, .L418
 1605 0010 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1606 0012 2BB1     		cbz	r3, .L417
 1607 0014 064B     		ldr	r3, .L418+4
 1608 0016 1B68     		ldr	r3, [r3]
 1609 0018 9868     		ldr	r0, [r3, #8]
 1610 001a 08BD     		pop	{r3, pc}
 1611              	.L410:
 1612 001c 0020     		movs	r0, #0
 1613 001e 08BD     		pop	{r3, pc}
 1614              	.L417:
 1615 0020 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1616 0024 024B     		ldr	r3, .L418+4
 1617 0026 1B68     		ldr	r3, [r3]
 1618 0028 9868     		ldr	r0, [r3, #8]
 1619 002a 08BD     		pop	{r3, pc}
 1620              	.L419:
 1621              		.align	2
 1622              	.L418:
 1623 002c 00000000 		.word	.LANCHOR5
 1624 0030 00000000 		.word	.LANCHOR0
 1625              		.size	sd_mmc_get_capacity, .-sd_mmc_get_capacity
 1626              		.section	.text.sd_mmc_is_write_protected,"ax",%progbits
 1627              		.align	1
 1628              		.p2align 2,,3
 1629              		.global	sd_mmc_is_write_protected
 1630              		.syntax unified
 1631              		.thumb
 1632              		.thumb_func
 1633              		.fpu softvfp
 1634              		.type	sd_mmc_is_write_protected, %function
 1635              	sd_mmc_is_write_protected:
 1636              		@ args = 0, pretend = 0, frame = 0
 1637              		@ frame_needed = 0, uses_anonymous_args = 0
 1638 0000 08B5     		push	{r3, lr}
 1639 0002 084B     		ldr	r3, .L424
 1640 0004 00EB8000 		add	r0, r0, r0, lsl #2
 1641 0008 03EBC003 		add	r3, r3, r0, lsl #3
 1642 000c 187B     		ldrb	r0, [r3, #12]	@ zero_extendqisi2
 1643 000e FF28     		cmp	r0, #255
 1644 0010 05D0     		beq	.L422
 1645 0012 FFF7FEFF 		bl	digitalRead
 1646 0016 80F00100 		eor	r0, r0, #1
 1647 001a C0B2     		uxtb	r0, r0
 1648 001c 08BD     		pop	{r3, pc}
 1649              	.L422:
 1650 001e 0020     		movs	r0, #0
 1651 0020 08BD     		pop	{r3, pc}
 1652              	.L425:
 1653 0022 00BF     		.align	2
ARM GAS  /tmp/ccKolRqR.s 			page 30


 1654              	.L424:
 1655 0024 00000000 		.word	.LANCHOR4
 1656              		.size	sd_mmc_is_write_protected, .-sd_mmc_is_write_protected
 1657              		.section	.text.sd_mmc_unmount,"ax",%progbits
 1658              		.align	1
 1659              		.p2align 2,,3
 1660              		.global	sd_mmc_unmount
 1661              		.syntax unified
 1662              		.thumb
 1663              		.thumb_func
 1664              		.fpu softvfp
 1665              		.type	sd_mmc_unmount, %function
 1666              	sd_mmc_unmount:
 1667              		@ args = 0, pretend = 0, frame = 0
 1668              		@ frame_needed = 0, uses_anonymous_args = 0
 1669              		@ link register save eliminated.
 1670 0000 0422     		movs	r2, #4
 1671 0002 034B     		ldr	r3, .L427
 1672 0004 00EB8000 		add	r0, r0, r0, lsl #2
 1673 0008 03EBC003 		add	r3, r3, r0, lsl #3
 1674 000c 1A74     		strb	r2, [r3, #16]
 1675 000e 7047     		bx	lr
 1676              	.L428:
 1677              		.align	2
 1678              	.L427:
 1679 0010 00000000 		.word	.LANCHOR4
 1680              		.size	sd_mmc_unmount, .-sd_mmc_unmount
 1681              		.section	.text.sd_mmc_get_interface_speed,"ax",%progbits
 1682              		.align	1
 1683              		.p2align 2,,3
 1684              		.global	sd_mmc_get_interface_speed
 1685              		.syntax unified
 1686              		.thumb
 1687              		.thumb_func
 1688              		.fpu softvfp
 1689              		.type	sd_mmc_get_interface_speed, %function
 1690              	sd_mmc_get_interface_speed:
 1691              		@ args = 0, pretend = 0, frame = 0
 1692              		@ frame_needed = 0, uses_anonymous_args = 0
 1693              		@ link register save eliminated.
 1694 0000 034B     		ldr	r3, .L430
 1695 0002 00EB8000 		add	r0, r0, r0, lsl #2
 1696 0006 53F83030 		ldr	r3, [r3, r0, lsl #3]
 1697 000a 1B6C     		ldr	r3, [r3, #64]
 1698 000c 1847     		bx	r3
 1699              	.L431:
 1700 000e 00BF     		.align	2
 1701              	.L430:
 1702 0010 00000000 		.word	.LANCHOR4
 1703              		.size	sd_mmc_get_interface_speed, .-sd_mmc_get_interface_speed
 1704              		.section	.text.sd_mmc_init_read_blocks,"ax",%progbits
 1705              		.align	1
 1706              		.p2align 2,,3
 1707              		.global	sd_mmc_init_read_blocks
 1708              		.syntax unified
 1709              		.thumb
 1710              		.thumb_func
ARM GAS  /tmp/ccKolRqR.s 			page 31


 1711              		.fpu softvfp
 1712              		.type	sd_mmc_init_read_blocks, %function
 1713              	sd_mmc_init_read_blocks:
 1714              		@ args = 0, pretend = 0, frame = 0
 1715              		@ frame_needed = 0, uses_anonymous_args = 0
 1716 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1717 0002 83B0     		sub	sp, sp, #12
 1718 0004 18B1     		cbz	r0, .L458
 1719 0006 0424     		movs	r4, #4
 1720              	.L433:
 1721 0008 2046     		mov	r0, r4
 1722 000a 03B0     		add	sp, sp, #12
 1723              		@ sp needed
 1724 000c F0BD     		pop	{r4, r5, r6, r7, pc}
 1725              	.L458:
 1726 000e 0E46     		mov	r6, r1
 1727 0010 1546     		mov	r5, r2
 1728 0012 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1729 0016 0446     		mov	r4, r0
 1730 0018 0028     		cmp	r0, #0
 1731 001a F5D1     		bne	.L433
 1732 001c FFF7FEFF 		bl	sd_mmc_cmd13
 1733 0020 28B3     		cbz	r0, .L456
 1734 0022 184F     		ldr	r7, .L461
 1735 0024 1849     		ldr	r1, .L461+4
 1736 0026 3B68     		ldr	r3, [r7]
 1737 0028 1848     		ldr	r0, .L461+8
 1738 002a 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1739 002c 012D     		cmp	r5, #1
 1740 002e 98BF     		it	ls
 1741 0030 0846     		movls	r0, r1
 1742 0032 1207     		lsls	r2, r2, #28
 1743 0034 4FF00102 		mov	r2, #1
 1744 0038 1B68     		ldr	r3, [r3]
 1745 003a 58BF     		it	pl
 1746 003c 7602     		lslpl	r6, r6, #9
 1747 003e 0092     		str	r2, [sp]
 1748 0040 3146     		mov	r1, r6
 1749 0042 4FF40072 		mov	r2, #512
 1750 0046 1E6A     		ldr	r6, [r3, #32]
 1751 0048 2B46     		mov	r3, r5
 1752 004a B047     		blx	r6
 1753 004c 78B1     		cbz	r0, .L456
 1754 004e 3B68     		ldr	r3, [r7]
 1755 0050 1B68     		ldr	r3, [r3]
 1756 0052 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 1757 0056 22B1     		cbz	r2, .L459
 1758              	.L440:
 1759 0058 0D4A     		ldr	r2, .L461+12
 1760 005a 0E4B     		ldr	r3, .L461+16
 1761 005c 1580     		strh	r5, [r2]	@ movhi
 1762 005e 1D80     		strh	r5, [r3]	@ movhi
 1763 0060 D2E7     		b	.L433
 1764              	.L459:
 1765 0062 9B69     		ldr	r3, [r3, #24]
 1766 0064 9847     		blx	r3
 1767 0066 0C4B     		ldr	r3, .L461+20
ARM GAS  /tmp/ccKolRqR.s 			page 32


 1768 0068 0340     		ands	r3, r3, r0
 1769 006a 002B     		cmp	r3, #0
 1770 006c F4D0     		beq	.L440
 1771              	.L456:
 1772 006e 0B4B     		ldr	r3, .L461+24
 1773 0070 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1774 0072 1BB1     		cbz	r3, .L460
 1775              	.L457:
 1776 0074 0524     		movs	r4, #5
 1777 0076 2046     		mov	r0, r4
 1778 0078 03B0     		add	sp, sp, #12
 1779              		@ sp needed
 1780 007a F0BD     		pop	{r4, r5, r6, r7, pc}
 1781              	.L460:
 1782 007c FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1783 0080 F8E7     		b	.L457
 1784              	.L462:
 1785 0082 00BF     		.align	2
 1786              	.L461:
 1787 0084 00000000 		.word	.LANCHOR0
 1788 0088 11110800 		.word	528657
 1789 008c 12111000 		.word	1052946
 1790 0090 00000000 		.word	.LANCHOR7
 1791 0094 00000000 		.word	.LANCHOR8
 1792 0098 000058E4 		.word	-463994880
 1793 009c 00000000 		.word	.LANCHOR5
 1794              		.size	sd_mmc_init_read_blocks, .-sd_mmc_init_read_blocks
 1795              		.section	.text.sd_mmc_start_read_blocks,"ax",%progbits
 1796              		.align	1
 1797              		.p2align 2,,3
 1798              		.global	sd_mmc_start_read_blocks
 1799              		.syntax unified
 1800              		.thumb
 1801              		.thumb_func
 1802              		.fpu softvfp
 1803              		.type	sd_mmc_start_read_blocks, %function
 1804              	sd_mmc_start_read_blocks:
 1805              		@ args = 0, pretend = 0, frame = 0
 1806              		@ frame_needed = 0, uses_anonymous_args = 0
 1807 0000 094B     		ldr	r3, .L467
 1808 0002 10B5     		push	{r4, lr}
 1809 0004 1B68     		ldr	r3, [r3]
 1810 0006 0C46     		mov	r4, r1
 1811 0008 1B68     		ldr	r3, [r3]
 1812 000a 1B6B     		ldr	r3, [r3, #48]
 1813 000c 9847     		blx	r3
 1814 000e 20B9     		cbnz	r0, .L464
 1815 0010 0346     		mov	r3, r0
 1816 0012 064A     		ldr	r2, .L467+4
 1817 0014 0520     		movs	r0, #5
 1818 0016 1380     		strh	r3, [r2]	@ movhi
 1819 0018 10BD     		pop	{r4, pc}
 1820              	.L464:
 1821 001a 044A     		ldr	r2, .L467+4
 1822 001c 0020     		movs	r0, #0
 1823 001e 1388     		ldrh	r3, [r2]
 1824 0020 1C1B     		subs	r4, r3, r4
ARM GAS  /tmp/ccKolRqR.s 			page 33


 1825 0022 1480     		strh	r4, [r2]	@ movhi
 1826 0024 10BD     		pop	{r4, pc}
 1827              	.L468:
 1828 0026 00BF     		.align	2
 1829              	.L467:
 1830 0028 00000000 		.word	.LANCHOR0
 1831 002c 00000000 		.word	.LANCHOR7
 1832              		.size	sd_mmc_start_read_blocks, .-sd_mmc_start_read_blocks
 1833              		.section	.text.sd_mmc_wait_end_of_read_blocks,"ax",%progbits
 1834              		.align	1
 1835              		.p2align 2,,3
 1836              		.global	sd_mmc_wait_end_of_read_blocks
 1837              		.syntax unified
 1838              		.thumb
 1839              		.thumb_func
 1840              		.fpu softvfp
 1841              		.type	sd_mmc_wait_end_of_read_blocks, %function
 1842              	sd_mmc_wait_end_of_read_blocks:
 1843              		@ args = 0, pretend = 0, frame = 0
 1844              		@ frame_needed = 0, uses_anonymous_args = 0
 1845 0000 38B5     		push	{r3, r4, r5, lr}
 1846 0002 164C     		ldr	r4, .L491
 1847 0004 0546     		mov	r5, r0
 1848 0006 2368     		ldr	r3, [r4]
 1849 0008 1B68     		ldr	r3, [r3]
 1850 000a 5B6B     		ldr	r3, [r3, #52]
 1851 000c 9847     		blx	r3
 1852 000e 08B9     		cbnz	r0, .L488
 1853 0010 0520     		movs	r0, #5
 1854 0012 38BD     		pop	{r3, r4, r5, pc}
 1855              	.L488:
 1856 0014 ADB9     		cbnz	r5, .L489
 1857 0016 124B     		ldr	r3, .L491+4
 1858 0018 1B88     		ldrh	r3, [r3]
 1859 001a 83B9     		cbnz	r3, .L487
 1860              	.L472:
 1861 001c 114B     		ldr	r3, .L491+8
 1862 001e 1B88     		ldrh	r3, [r3]
 1863 0020 012B     		cmp	r3, #1
 1864 0022 07D0     		beq	.L486
 1865 0024 2368     		ldr	r3, [r4]
 1866 0026 0021     		movs	r1, #0
 1867 0028 1B68     		ldr	r3, [r3]
 1868 002a 43F20C10 		movw	r0, #12556
 1869 002e 5B6A     		ldr	r3, [r3, #36]
 1870 0030 9847     		blx	r3
 1871 0032 50B1     		cbz	r0, .L490
 1872              	.L486:
 1873 0034 0C4B     		ldr	r3, .L491+12
 1874 0036 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1875 0038 0BB9     		cbnz	r3, .L487
 1876 003a FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1877              	.L487:
 1878 003e 0020     		movs	r0, #0
 1879 0040 38BD     		pop	{r3, r4, r5, pc}
 1880              	.L489:
 1881 0042 0022     		movs	r2, #0
ARM GAS  /tmp/ccKolRqR.s 			page 34


 1882 0044 064B     		ldr	r3, .L491+4
 1883 0046 1A80     		strh	r2, [r3]	@ movhi
 1884 0048 E8E7     		b	.L472
 1885              	.L490:
 1886 004a 2368     		ldr	r3, [r4]
 1887 004c 0146     		mov	r1, r0
 1888 004e 1B68     		ldr	r3, [r3]
 1889 0050 43F20C10 		movw	r0, #12556
 1890 0054 5B6A     		ldr	r3, [r3, #36]
 1891 0056 9847     		blx	r3
 1892 0058 ECE7     		b	.L486
 1893              	.L492:
 1894 005a 00BF     		.align	2
 1895              	.L491:
 1896 005c 00000000 		.word	.LANCHOR0
 1897 0060 00000000 		.word	.LANCHOR7
 1898 0064 00000000 		.word	.LANCHOR8
 1899 0068 00000000 		.word	.LANCHOR5
 1900              		.size	sd_mmc_wait_end_of_read_blocks, .-sd_mmc_wait_end_of_read_blocks
 1901              		.section	.text.sd_mmc_init_write_blocks,"ax",%progbits
 1902              		.align	1
 1903              		.p2align 2,,3
 1904              		.global	sd_mmc_init_write_blocks
 1905              		.syntax unified
 1906              		.thumb
 1907              		.thumb_func
 1908              		.fpu softvfp
 1909              		.type	sd_mmc_init_write_blocks, %function
 1910              	sd_mmc_init_write_blocks:
 1911              		@ args = 0, pretend = 0, frame = 0
 1912              		@ frame_needed = 0, uses_anonymous_args = 0
 1913 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1914 0002 83B0     		sub	sp, sp, #12
 1915 0004 18B1     		cbz	r0, .L526
 1916 0006 0424     		movs	r4, #4
 1917              	.L506:
 1918 0008 2046     		mov	r0, r4
 1919 000a 03B0     		add	sp, sp, #12
 1920              		@ sp needed
 1921 000c F0BD     		pop	{r4, r5, r6, r7, pc}
 1922              	.L526:
 1923 000e 0E46     		mov	r6, r1
 1924 0010 1546     		mov	r5, r2
 1925 0012 FFF7FEFF 		bl	sd_mmc_select_slot.part.5
 1926 0016 0446     		mov	r4, r0
 1927 0018 0028     		cmp	r0, #0
 1928 001a F5D1     		bne	.L506
 1929 001c 224B     		ldr	r3, .L529
 1930 001e 187B     		ldrb	r0, [r3, #12]	@ zero_extendqisi2
 1931 0020 FF28     		cmp	r0, #255
 1932 0022 0AD0     		beq	.L495
 1933 0024 FFF7FEFF 		bl	digitalRead
 1934 0028 38B9     		cbnz	r0, .L495
 1935 002a 204B     		ldr	r3, .L529+4
 1936 002c 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1937 002e 002B     		cmp	r3, #0
 1938 0030 2BD0     		beq	.L502
ARM GAS  /tmp/ccKolRqR.s 			page 35


 1939 0032 0724     		movs	r4, #7
 1940 0034 2046     		mov	r0, r4
 1941 0036 03B0     		add	sp, sp, #12
 1942              		@ sp needed
 1943 0038 F0BD     		pop	{r4, r5, r6, r7, pc}
 1944              	.L495:
 1945 003a 1D4F     		ldr	r7, .L529+8
 1946 003c 1D48     		ldr	r0, .L529+12
 1947 003e 3B68     		ldr	r3, [r7]
 1948 0040 1D49     		ldr	r1, .L529+16
 1949 0042 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1950 0044 012D     		cmp	r5, #1
 1951 0046 98BF     		it	ls
 1952 0048 0846     		movls	r0, r1
 1953 004a 1207     		lsls	r2, r2, #28
 1954 004c 00D4     		bmi	.L497
 1955 004e 7602     		lsls	r6, r6, #9
 1956              	.L497:
 1957 0050 0122     		movs	r2, #1
 1958 0052 1B68     		ldr	r3, [r3]
 1959 0054 0092     		str	r2, [sp]
 1960 0056 3146     		mov	r1, r6
 1961 0058 4FF40072 		mov	r2, #512
 1962 005c 1E6A     		ldr	r6, [r3, #32]
 1963 005e 2B46     		mov	r3, r5
 1964 0060 B047     		blx	r6
 1965 0062 30B9     		cbnz	r0, .L498
 1966              	.L522:
 1967 0064 114B     		ldr	r3, .L529+4
 1968 0066 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1969 0068 9BB1     		cbz	r3, .L527
 1970              	.L523:
 1971 006a 0524     		movs	r4, #5
 1972 006c 2046     		mov	r0, r4
 1973 006e 03B0     		add	sp, sp, #12
 1974              		@ sp needed
 1975 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 1976              	.L498:
 1977 0072 3B68     		ldr	r3, [r7]
 1978 0074 1B68     		ldr	r3, [r3]
 1979 0076 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 1980 007a 6AB1     		cbz	r2, .L528
 1981              	.L500:
 1982 007c 2046     		mov	r0, r4
 1983 007e 0F4A     		ldr	r2, .L529+20
 1984 0080 0F4B     		ldr	r3, .L529+24
 1985 0082 1580     		strh	r5, [r2]	@ movhi
 1986 0084 1D80     		strh	r5, [r3]	@ movhi
 1987 0086 03B0     		add	sp, sp, #12
 1988              		@ sp needed
 1989 0088 F0BD     		pop	{r4, r5, r6, r7, pc}
 1990              	.L502:
 1991 008a FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 1992 008e 0724     		movs	r4, #7
 1993 0090 BAE7     		b	.L506
 1994              	.L527:
 1995 0092 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
ARM GAS  /tmp/ccKolRqR.s 			page 36


 1996 0096 E8E7     		b	.L523
 1997              	.L528:
 1998 0098 9B69     		ldr	r3, [r3, #24]
 1999 009a 9847     		blx	r3
 2000 009c 094B     		ldr	r3, .L529+28
 2001 009e 0340     		ands	r3, r3, r0
 2002 00a0 002B     		cmp	r3, #0
 2003 00a2 DFD1     		bne	.L522
 2004 00a4 EAE7     		b	.L500
 2005              	.L530:
 2006 00a6 00BF     		.align	2
 2007              	.L529:
 2008 00a8 00000000 		.word	.LANCHOR4
 2009 00ac 00000000 		.word	.LANCHOR5
 2010 00b0 00000000 		.word	.LANCHOR0
 2011 00b4 19911000 		.word	1085721
 2012 00b8 18910800 		.word	561432
 2013 00bc 00000000 		.word	.LANCHOR7
 2014 00c0 00000000 		.word	.LANCHOR8
 2015 00c4 000058E4 		.word	-463994880
 2016              		.size	sd_mmc_init_write_blocks, .-sd_mmc_init_write_blocks
 2017              		.section	.text.sd_mmc_start_write_blocks,"ax",%progbits
 2018              		.align	1
 2019              		.p2align 2,,3
 2020              		.global	sd_mmc_start_write_blocks
 2021              		.syntax unified
 2022              		.thumb
 2023              		.thumb_func
 2024              		.fpu softvfp
 2025              		.type	sd_mmc_start_write_blocks, %function
 2026              	sd_mmc_start_write_blocks:
 2027              		@ args = 0, pretend = 0, frame = 0
 2028              		@ frame_needed = 0, uses_anonymous_args = 0
 2029 0000 094B     		ldr	r3, .L535
 2030 0002 10B5     		push	{r4, lr}
 2031 0004 1B68     		ldr	r3, [r3]
 2032 0006 0C46     		mov	r4, r1
 2033 0008 1B68     		ldr	r3, [r3]
 2034 000a 9B6B     		ldr	r3, [r3, #56]
 2035 000c 9847     		blx	r3
 2036 000e 20B9     		cbnz	r0, .L532
 2037 0010 0346     		mov	r3, r0
 2038 0012 064A     		ldr	r2, .L535+4
 2039 0014 0520     		movs	r0, #5
 2040 0016 1380     		strh	r3, [r2]	@ movhi
 2041 0018 10BD     		pop	{r4, pc}
 2042              	.L532:
 2043 001a 044A     		ldr	r2, .L535+4
 2044 001c 0020     		movs	r0, #0
 2045 001e 1388     		ldrh	r3, [r2]
 2046 0020 1C1B     		subs	r4, r3, r4
 2047 0022 1480     		strh	r4, [r2]	@ movhi
 2048 0024 10BD     		pop	{r4, pc}
 2049              	.L536:
 2050 0026 00BF     		.align	2
 2051              	.L535:
 2052 0028 00000000 		.word	.LANCHOR0
ARM GAS  /tmp/ccKolRqR.s 			page 37


 2053 002c 00000000 		.word	.LANCHOR7
 2054              		.size	sd_mmc_start_write_blocks, .-sd_mmc_start_write_blocks
 2055              		.section	.text.sd_mmc_wait_end_of_write_blocks,"ax",%progbits
 2056              		.align	1
 2057              		.p2align 2,,3
 2058              		.global	sd_mmc_wait_end_of_write_blocks
 2059              		.syntax unified
 2060              		.thumb
 2061              		.thumb_func
 2062              		.fpu softvfp
 2063              		.type	sd_mmc_wait_end_of_write_blocks, %function
 2064              	sd_mmc_wait_end_of_write_blocks:
 2065              		@ args = 0, pretend = 0, frame = 0
 2066              		@ frame_needed = 0, uses_anonymous_args = 0
 2067 0000 38B5     		push	{r3, r4, r5, lr}
 2068 0002 174C     		ldr	r4, .L561
 2069 0004 0546     		mov	r5, r0
 2070 0006 2368     		ldr	r3, [r4]
 2071 0008 1B68     		ldr	r3, [r3]
 2072 000a DB6B     		ldr	r3, [r3, #60]
 2073 000c 9847     		blx	r3
 2074 000e 08B9     		cbnz	r0, .L558
 2075              	.L556:
 2076 0010 0520     		movs	r0, #5
 2077 0012 38BD     		pop	{r3, r4, r5, pc}
 2078              	.L558:
 2079 0014 95B9     		cbnz	r5, .L559
 2080 0016 134B     		ldr	r3, .L561+4
 2081 0018 1B88     		ldrh	r3, [r3]
 2082 001a 6BB9     		cbnz	r3, .L557
 2083              	.L541:
 2084 001c 124B     		ldr	r3, .L561+8
 2085 001e 1B88     		ldrh	r3, [r3]
 2086 0020 012B     		cmp	r3, #1
 2087 0022 04D0     		beq	.L555
 2088 0024 2368     		ldr	r3, [r4]
 2089 0026 1B68     		ldr	r3, [r3]
 2090 0028 93F84810 		ldrb	r1, [r3, #72]	@ zero_extendqisi2
 2091 002c 51B1     		cbz	r1, .L560
 2092              	.L555:
 2093 002e 0F4B     		ldr	r3, .L561+12
 2094 0030 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2095 0032 0BB9     		cbnz	r3, .L557
 2096 0034 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2097              	.L557:
 2098 0038 0020     		movs	r0, #0
 2099 003a 38BD     		pop	{r3, r4, r5, pc}
 2100              	.L559:
 2101 003c 0022     		movs	r2, #0
 2102 003e 094B     		ldr	r3, .L561+4
 2103 0040 1A80     		strh	r2, [r3]	@ movhi
 2104 0042 EBE7     		b	.L541
 2105              	.L560:
 2106 0044 5B6A     		ldr	r3, [r3, #36]
 2107 0046 43F20C10 		movw	r0, #12556
 2108 004a 9847     		blx	r3
 2109 004c 0028     		cmp	r0, #0
ARM GAS  /tmp/ccKolRqR.s 			page 38


 2110 004e EED1     		bne	.L555
 2111 0050 064B     		ldr	r3, .L561+12
 2112 0052 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 2113 0054 002B     		cmp	r3, #0
 2114 0056 DBD1     		bne	.L556
 2115 0058 FFF7FEFF 		bl	sd_mmc_deselect_slot.part.6
 2116 005c D8E7     		b	.L556
 2117              	.L562:
 2118 005e 00BF     		.align	2
 2119              	.L561:
 2120 0060 00000000 		.word	.LANCHOR0
 2121 0064 00000000 		.word	.LANCHOR7
 2122 0068 00000000 		.word	.LANCHOR8
 2123 006c 00000000 		.word	.LANCHOR5
 2124              		.size	sd_mmc_wait_end_of_write_blocks, .-sd_mmc_wait_end_of_write_blocks
 2125              		.global	mmc_trans_multipliers
 2126              		.global	sd_trans_multipliers
 2127              		.global	sd_mmc_trans_units
 2128              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 2129              		.align	2
 2130              		.type	cpu_irq_critical_section_counter, %object
 2131              		.size	cpu_irq_critical_section_counter, 4
 2132              	cpu_irq_critical_section_counter:
 2133 0000 00000000 		.space	4
 2134              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 2135              		.type	cpu_irq_prev_interrupt_state, %object
 2136              		.size	cpu_irq_prev_interrupt_state, 1
 2137              	cpu_irq_prev_interrupt_state:
 2138 0000 00       		.space	1
 2139              		.section	.bss.sd_mmc_card,"aw",%nobits
 2140              		.align	2
 2141              		.set	.LANCHOR0,. + 0
 2142              		.type	sd_mmc_card, %object
 2143              		.size	sd_mmc_card, 4
 2144              	sd_mmc_card:
 2145 0000 00000000 		.space	4
 2146              		.section	.bss.sd_mmc_cards,"aw",%nobits
 2147              		.align	2
 2148              		.set	.LANCHOR4,. + 0
 2149              		.type	sd_mmc_cards, %object
 2150              		.size	sd_mmc_cards, 40
 2151              	sd_mmc_cards:
 2152 0000 00000000 		.space	40
 2152      00000000 
 2152      00000000 
 2152      00000000 
 2152      00000000 
 2153              		.section	.bss.sd_mmc_nb_block_remaining,"aw",%nobits
 2154              		.align	1
 2155              		.set	.LANCHOR7,. + 0
 2156              		.type	sd_mmc_nb_block_remaining, %object
 2157              		.size	sd_mmc_nb_block_remaining, 2
 2158              	sd_mmc_nb_block_remaining:
 2159 0000 0000     		.space	2
 2160              		.section	.bss.sd_mmc_nb_block_to_tranfer,"aw",%nobits
 2161              		.align	1
 2162              		.set	.LANCHOR8,. + 0
ARM GAS  /tmp/ccKolRqR.s 			page 39


 2163              		.type	sd_mmc_nb_block_to_tranfer, %object
 2164              		.size	sd_mmc_nb_block_to_tranfer, 2
 2165              	sd_mmc_nb_block_to_tranfer:
 2166 0000 0000     		.space	2
 2167              		.section	.bss.sd_mmc_slot_sel,"aw",%nobits
 2168              		.set	.LANCHOR5,. + 0
 2169              		.type	sd_mmc_slot_sel, %object
 2170              		.size	sd_mmc_slot_sel, 1
 2171              	sd_mmc_slot_sel:
 2172 0000 00       		.space	1
 2173              		.section	.rodata.mmc_trans_multipliers,"a",%progbits
 2174              		.align	2
 2175              		.set	.LANCHOR1,. + 0
 2176              		.type	mmc_trans_multipliers, %object
 2177              		.size	mmc_trans_multipliers, 64
 2178              	mmc_trans_multipliers:
 2179 0000 00000000 		.word	0
 2180 0004 0A000000 		.word	10
 2181 0008 0C000000 		.word	12
 2182 000c 0D000000 		.word	13
 2183 0010 0F000000 		.word	15
 2184 0014 14000000 		.word	20
 2185 0018 1A000000 		.word	26
 2186 001c 1E000000 		.word	30
 2187 0020 23000000 		.word	35
 2188 0024 28000000 		.word	40
 2189 0028 2D000000 		.word	45
 2190 002c 34000000 		.word	52
 2191 0030 37000000 		.word	55
 2192 0034 3C000000 		.word	60
 2193 0038 46000000 		.word	70
 2194 003c 50000000 		.word	80
 2195              		.section	.rodata.sd_mmc_trans_units,"a",%progbits
 2196              		.align	2
 2197              		.set	.LANCHOR2,. + 0
 2198              		.type	sd_mmc_trans_units, %object
 2199              		.size	sd_mmc_trans_units, 28
 2200              	sd_mmc_trans_units:
 2201 0000 0A000000 		.word	10
 2202 0004 64000000 		.word	100
 2203 0008 E8030000 		.word	1000
 2204 000c 10270000 		.word	10000
 2205 0010 00000000 		.word	0
 2206 0014 00000000 		.word	0
 2207 0018 00000000 		.word	0
 2208              		.section	.rodata.sd_trans_multipliers,"a",%progbits
 2209              		.align	2
 2210              		.set	.LANCHOR3,. + 0
 2211              		.type	sd_trans_multipliers, %object
 2212              		.size	sd_trans_multipliers, 64
 2213              	sd_trans_multipliers:
 2214 0000 00000000 		.word	0
 2215 0004 0A000000 		.word	10
 2216 0008 0C000000 		.word	12
 2217 000c 0D000000 		.word	13
 2218 0010 0F000000 		.word	15
 2219 0014 14000000 		.word	20
ARM GAS  /tmp/ccKolRqR.s 			page 40


 2220 0018 19000000 		.word	25
 2221 001c 1E000000 		.word	30
 2222 0020 23000000 		.word	35
 2223 0024 28000000 		.word	40
 2224 0028 2D000000 		.word	45
 2225 002c 32000000 		.word	50
 2226 0030 37000000 		.word	55
 2227 0034 3C000000 		.word	60
 2228 0038 46000000 		.word	70
 2229 003c 50000000 		.word	80
 2230              		.section	.rodata.spiInterface,"a",%progbits
 2231              		.align	2
 2232              		.set	.LANCHOR6,. + 0
 2233              		.type	spiInterface, %object
 2234              		.size	spiInterface, 76
 2235              	spiInterface:
 2236 0000 00000000 		.word	sd_mmc_spi_select_device
 2237 0004 00000000 		.word	sd_mmc_spi_deselect_device
 2238 0008 00000000 		.word	sd_mmc_spi_get_bus_width
 2239 000c 00000000 		.word	sd_mmc_spi_is_high_speed_capable
 2240 0010 00000000 		.word	sd_mmc_spi_send_clock
 2241 0014 00000000 		.word	sd_mmc_spi_send_cmd
 2242 0018 00000000 		.word	sd_mmc_spi_get_response
 2243 001c 00000000 		.word	sd_mmc_spi_get_response_128
 2244 0020 00000000 		.word	sd_mmc_spi_adtc_start
 2245 0024 00000000 		.word	sd_mmc_spi_send_cmd
 2246 0028 00000000 		.word	sd_mmc_spi_read_word
 2247 002c 00000000 		.word	sd_mmc_spi_write_word
 2248 0030 00000000 		.word	sd_mmc_spi_start_read_blocks
 2249 0034 00000000 		.word	sd_mmc_spi_wait_end_of_read_blocks
 2250 0038 00000000 		.word	sd_mmc_spi_start_write_blocks
 2251 003c 00000000 		.word	sd_mmc_spi_wait_end_of_write_blocks
 2252 0040 00000000 		.word	spi_mmc_get_speed
 2253 0044 00000000 		.word	sd_mmc_spi_set_idle_func
 2254 0048 01       		.byte	1
 2255 0049 000000   		.space	3
 2256              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
