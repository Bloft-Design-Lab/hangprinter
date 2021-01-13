ARM GAS  /tmp/ccCDAMOG.s 			page 1


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
  13              		.file	"sha1.c"
  14              		.section	.text.SHA1Reset,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	SHA1Reset
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	SHA1Reset, %function
  23              	SHA1Reset:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 30B4     		push	{r4, r5}
  28 0002 0A4B     		ldr	r3, .L4
  29 0004 0A4D     		ldr	r5, .L4+4
  30 0006 0B4C     		ldr	r4, .L4+8
  31 0008 0B49     		ldr	r1, .L4+12
  32 000a 0C4A     		ldr	r2, .L4+16
  33 000c 0360     		str	r3, [r0]
  34 000e 0023     		movs	r3, #0
  35 0010 C0E90154 		strd	r5, r4, [r0, #4]
  36 0014 C0E90312 		strd	r1, r2, [r0, #12]
  37 0018 C0E90533 		strd	r3, r3, [r0, #20]
  38 001c C365     		str	r3, [r0, #92]
  39 001e 80F86030 		strb	r3, [r0, #96]
  40 0022 80F86130 		strb	r3, [r0, #97]
  41 0026 30BC     		pop	{r4, r5}
  42 0028 7047     		bx	lr
  43              	.L5:
  44 002a 00BF     		.align	2
  45              	.L4:
  46 002c 01234567 		.word	1732584193
  47 0030 89ABCDEF 		.word	-271733879
  48 0034 FEDCBA98 		.word	-1732584194
  49 0038 76543210 		.word	271733878
  50 003c F0E1D2C3 		.word	-1009589776
  51              		.size	SHA1Reset, .-SHA1Reset
  52              		.section	.text.SHA1ProcessMessageBlock,"ax",%progbits
  53              		.align	1
  54              		.p2align 2,,3
  55              		.global	SHA1ProcessMessageBlock
  56              		.syntax unified
  57              		.thumb
ARM GAS  /tmp/ccCDAMOG.s 			page 2


  58              		.thumb_func
  59              		.fpu fpv4-sp-d16
  60              		.type	SHA1ProcessMessageBlock, %function
  61              	SHA1ProcessMessageBlock:
  62              		@ args = 0, pretend = 0, frame = 336
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  65 0004 D5B0     		sub	sp, sp, #340
  66 0006 03A9     		add	r1, sp, #12
  67 0008 0646     		mov	r6, r0
  68 000a 0F46     		mov	r7, r1
  69 000c 0DF14C0C 		add	ip, sp, #76
  70              	.L7:
  71 0010 737F     		ldrb	r3, [r6, #29]	@ zero_extendqisi2
  72 0012 357F     		ldrb	r5, [r6, #28]	@ zero_extendqisi2
  73 0014 F47F     		ldrb	r4, [r6, #31]	@ zero_extendqisi2
  74 0016 B27F     		ldrb	r2, [r6, #30]	@ zero_extendqisi2
  75 0018 1B04     		lsls	r3, r3, #16
  76 001a 43EA0563 		orr	r3, r3, r5, lsl #24
  77 001e 2343     		orrs	r3, r3, r4
  78 0020 43EA0223 		orr	r3, r3, r2, lsl #8
  79 0024 47F8043F 		str	r3, [r7, #4]!
  80 0028 BC45     		cmp	ip, r7
  81 002a 06F10406 		add	r6, r6, #4
  82 002e EFD1     		bne	.L7
  83 0030 43AF     		add	r7, sp, #268
  84 0032 0E46     		mov	r6, r1
  85              	.L8:
  86 0034 3246     		mov	r2, r6
  87 0036 56F8044F 		ldr	r4, [r6, #4]!
  88 003a 936B     		ldr	r3, [r2, #56]
  89 003c 556A     		ldr	r5, [r2, #36]
  90 003e D268     		ldr	r2, [r2, #12]
  91 0040 6B40     		eors	r3, r3, r5
  92 0042 5340     		eors	r3, r3, r2
  93 0044 6340     		eors	r3, r3, r4
  94 0046 4FEAF373 		ror	r3, r3, #31
  95 004a B742     		cmp	r7, r6
  96 004c 3364     		str	r3, [r6, #64]
  97 004e F1D1     		bne	.L8
  98 0050 D0E900BA 		ldrd	fp, r10, [r0]
  99 0054 8368     		ldr	r3, [r0, #8]
 100 0056 C468     		ldr	r4, [r0, #12]
 101 0058 0769     		ldr	r7, [r0, #16]
 102 005a 0193     		str	r3, [sp, #4]
 103 005c 0294     		str	r4, [sp, #8]
 104 005e 0397     		str	r7, [sp, #12]
 105 0060 DFF80881 		ldr	r8, .L20
 106 0064 5A46     		mov	r2, fp
 107 0066 5546     		mov	r5, r10
 108 0068 9C46     		mov	ip, r3
 109 006a 0DF15C0E 		add	lr, sp, #92
 110 006e 02E0     		b	.L9
 111              	.L13:
 112 0070 6446     		mov	r4, ip
 113 0072 3246     		mov	r2, r6
 114 0074 9C46     		mov	ip, r3
ARM GAS  /tmp/ccCDAMOG.s 			page 3


 115              	.L9:
 116 0076 51F8043F 		ldr	r3, [r1, #4]!
 117 007a 8CEA0406 		eor	r6, ip, r4
 118 007e 2E40     		ands	r6, r6, r5
 119 0080 4344     		add	r3, r3, r8
 120 0082 03EBF263 		add	r3, r3, r2, ror #27
 121 0086 6640     		eors	r6, r6, r4
 122 0088 1E44     		add	r6, r6, r3
 123 008a 8E45     		cmp	lr, r1
 124 008c 3E44     		add	r6, r6, r7
 125 008e 4FEAB503 		ror	r3, r5, #2
 126 0092 2746     		mov	r7, r4
 127 0094 1546     		mov	r5, r2
 128 0096 EBD1     		bne	.L13
 129 0098 3146     		mov	r1, r6
 130 009a 17AD     		add	r5, sp, #92
 131 009c 1E46     		mov	r6, r3
 132 009e 0DF1AC08 		add	r8, sp, #172
 133 00a2 0B46     		mov	r3, r1
 134 00a4 DFF8C8E0 		ldr	lr, .L20+4
 135 00a8 02E0     		b	.L10
 136              	.L14:
 137 00aa B446     		mov	ip, r6
 138 00ac 0B46     		mov	r3, r1
 139 00ae 3E46     		mov	r6, r7
 140              	.L10:
 141 00b0 55F8041F 		ldr	r1, [r5, #4]!
 142 00b4 82EA0607 		eor	r7, r2, r6
 143 00b8 7144     		add	r1, r1, lr
 144 00ba 87EA0C07 		eor	r7, r7, ip
 145 00be 01EBF361 		add	r1, r1, r3, ror #27
 146 00c2 3944     		add	r1, r1, r7
 147 00c4 A845     		cmp	r8, r5
 148 00c6 2144     		add	r1, r1, r4
 149 00c8 4FEAB207 		ror	r7, r2, #2
 150 00cc 6446     		mov	r4, ip
 151 00ce 1A46     		mov	r2, r3
 152 00d0 EBD1     		bne	.L14
 153 00d2 0DF1AC0E 		add	lr, sp, #172
 154 00d6 0DF1FC09 		add	r9, sp, #252
 155 00da DFF89880 		ldr	r8, .L20+8
 156 00de 02E0     		b	.L11
 157              	.L15:
 158 00e0 3E46     		mov	r6, r7
 159 00e2 1146     		mov	r1, r2
 160 00e4 2F46     		mov	r7, r5
 161              	.L11:
 162 00e6 5EF8045F 		ldr	r5, [lr, #4]!
 163 00ea 47EA0602 		orr	r2, r7, r6
 164 00ee 02EA0304 		and	r4, r2, r3
 165 00f2 4544     		add	r5, r5, r8
 166 00f4 07EA0602 		and	r2, r7, r6
 167 00f8 05EBF165 		add	r5, r5, r1, ror #27
 168 00fc 2243     		orrs	r2, r2, r4
 169 00fe 2A44     		add	r2, r2, r5
 170 0100 F145     		cmp	r9, lr
 171 0102 4FEAB305 		ror	r5, r3, #2
ARM GAS  /tmp/ccCDAMOG.s 			page 4


 172 0106 6244     		add	r2, r2, ip
 173 0108 0B46     		mov	r3, r1
 174 010a B446     		mov	ip, r6
 175 010c E8D1     		bne	.L15
 176 010e 0DF5A67E 		add	lr, sp, #332
 177 0112 0DF1FC0C 		add	ip, sp, #252
 178 0116 DFF86080 		ldr	r8, .L20+12
 179 011a 02E0     		b	.L12
 180              	.L16:
 181 011c 2F46     		mov	r7, r5
 182 011e 1A46     		mov	r2, r3
 183 0120 2546     		mov	r5, r4
 184              	.L12:
 185 0122 5CF8043F 		ldr	r3, [ip, #4]!
 186 0126 81EA0504 		eor	r4, r1, r5
 187 012a 4344     		add	r3, r3, r8
 188 012c 7C40     		eors	r4, r4, r7
 189 012e 03EBF263 		add	r3, r3, r2, ror #27
 190 0132 2344     		add	r3, r3, r4
 191 0134 E645     		cmp	lr, ip
 192 0136 3344     		add	r3, r3, r6
 193 0138 4FEAB104 		ror	r4, r1, #2
 194 013c 3E46     		mov	r6, r7
 195 013e 1146     		mov	r1, r2
 196 0140 ECD1     		bne	.L16
 197 0142 0199     		ldr	r1, [sp, #4]
 198 0144 2144     		add	r1, r1, r4
 199 0146 0C46     		mov	r4, r1
 200 0148 0299     		ldr	r1, [sp, #8]
 201 014a 2944     		add	r1, r1, r5
 202 014c 0D46     		mov	r5, r1
 203 014e 0399     		ldr	r1, [sp, #12]
 204 0150 3944     		add	r1, r1, r7
 205 0152 0F46     		mov	r7, r1
 206 0154 5B44     		add	r3, r3, fp
 207 0156 5244     		add	r2, r2, r10
 208 0158 0021     		movs	r1, #0
 209 015a C0E90032 		strd	r3, r2, [r0]
 210 015e C0E90245 		strd	r4, r5, [r0, #8]
 211 0162 0761     		str	r7, [r0, #16]
 212 0164 C165     		str	r1, [r0, #92]
 213 0166 55B0     		add	sp, sp, #340
 214              		@ sp needed
 215 0168 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 216              	.L21:
 217              		.align	2
 218              	.L20:
 219 016c 9979825A 		.word	1518500249
 220 0170 A1EBD96E 		.word	1859775393
 221 0174 DCBC1B8F 		.word	-1894007588
 222 0178 D6C162CA 		.word	-899497514
 223              		.size	SHA1ProcessMessageBlock, .-SHA1ProcessMessageBlock
 224              		.section	.text.SHA1Input,"ax",%progbits
 225              		.align	1
 226              		.p2align 2,,3
 227              		.global	SHA1Input
 228              		.syntax unified
ARM GAS  /tmp/ccCDAMOG.s 			page 5


 229              		.thumb
 230              		.thumb_func
 231              		.fpu fpv4-sp-d16
 232              		.type	SHA1Input, %function
 233              	SHA1Input:
 234              		@ args = 0, pretend = 0, frame = 0
 235              		@ frame_needed = 0, uses_anonymous_args = 0
 236 0000 6AB3     		cbz	r2, .L39
 237 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 238 0004 B0F86030 		ldrh	r3, [r0, #96]
 239 0008 2BBB     		cbnz	r3, .L24
 240 000a 90F86130 		ldrb	r3, [r0, #97]	@ zero_extendqisi2
 241 000e 0BBB     		cbnz	r3, .L22
 242 0010 4D1E     		subs	r5, r1, #1
 243 0012 0446     		mov	r4, r0
 244 0014 AE18     		adds	r6, r5, r2
 245 0016 0127     		movs	r7, #1
 246 0018 04E0     		b	.L31
 247              	.L30:
 248 001a B542     		cmp	r5, r6
 249 001c 1AD0     		beq	.L22
 250              	.L42:
 251 001e 94F86130 		ldrb	r3, [r4, #97]	@ zero_extendqisi2
 252 0022 BBB9     		cbnz	r3, .L22
 253              	.L31:
 254 0024 E36D     		ldr	r3, [r4, #92]
 255 0026 5A1C     		adds	r2, r3, #1
 256 0028 E265     		str	r2, [r4, #92]
 257 002a 2344     		add	r3, r3, r4
 258 002c 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
 259 0030 1977     		strb	r1, [r3, #28]
 260 0032 6369     		ldr	r3, [r4, #20]
 261 0034 0833     		adds	r3, r3, #8
 262 0036 6361     		str	r3, [r4, #20]
 263 0038 2BB9     		cbnz	r3, .L28
 264 003a A369     		ldr	r3, [r4, #24]
 265 003c 0133     		adds	r3, r3, #1
 266 003e A361     		str	r3, [r4, #24]
 267 0040 0BB9     		cbnz	r3, .L28
 268 0042 84F86170 		strb	r7, [r4, #97]
 269              	.L28:
 270 0046 402A     		cmp	r2, #64
 271 0048 E7D1     		bne	.L30
 272 004a 2046     		mov	r0, r4
 273 004c FFF7FEFF 		bl	SHA1ProcessMessageBlock
 274 0050 B542     		cmp	r5, r6
 275 0052 E4D1     		bne	.L42
 276              	.L22:
 277 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 278              	.L24:
 279 0056 0123     		movs	r3, #1
 280 0058 80F86130 		strb	r3, [r0, #97]
 281 005c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 282              	.L39:
 283 005e 7047     		bx	lr
 284              		.size	SHA1Input, .-SHA1Input
 285              		.section	.text.SHA1PadMessage,"ax",%progbits
ARM GAS  /tmp/ccCDAMOG.s 			page 6


 286              		.align	1
 287              		.p2align 2,,3
 288              		.global	SHA1PadMessage
 289              		.syntax unified
 290              		.thumb
 291              		.thumb_func
 292              		.fpu fpv4-sp-d16
 293              		.type	SHA1PadMessage, %function
 294              	SHA1PadMessage:
 295              		@ args = 0, pretend = 0, frame = 0
 296              		@ frame_needed = 0, uses_anonymous_args = 0
 297 0000 38B5     		push	{r3, r4, r5, lr}
 298 0002 C36D     		ldr	r3, [r0, #92]
 299 0004 0446     		mov	r4, r0
 300 0006 C118     		adds	r1, r0, r3
 301 0008 5A1C     		adds	r2, r3, #1
 302 000a 8020     		movs	r0, #128
 303 000c 372B     		cmp	r3, #55
 304 000e E265     		str	r2, [r4, #92]
 305 0010 0877     		strb	r0, [r1, #28]
 306 0012 3ADD     		ble	.L44
 307 0014 3F2A     		cmp	r2, #63
 308 0016 0ADC     		bgt	.L45
 309 0018 1C33     		adds	r3, r3, #28
 310 001a 2344     		add	r3, r3, r4
 311 001c 04F15B01 		add	r1, r4, #91
 312 0020 0022     		movs	r2, #0
 313              	.L46:
 314 0022 03F8012F 		strb	r2, [r3, #1]!
 315 0026 9942     		cmp	r1, r3
 316 0028 FBD1     		bne	.L46
 317 002a 4023     		movs	r3, #64
 318 002c E365     		str	r3, [r4, #92]
 319              	.L45:
 320 002e 2046     		mov	r0, r4
 321 0030 FFF7FEFF 		bl	SHA1ProcessMessageBlock
 322 0034 E36D     		ldr	r3, [r4, #92]
 323 0036 372B     		cmp	r3, #55
 324 0038 0ADC     		bgt	.L48
 325 003a 1C33     		adds	r3, r3, #28
 326 003c 2344     		add	r3, r3, r4
 327 003e 04F15401 		add	r1, r4, #84
 328 0042 0022     		movs	r2, #0
 329              	.L49:
 330 0044 03F8012B 		strb	r2, [r3], #1
 331 0048 9942     		cmp	r1, r3
 332 004a FBD1     		bne	.L49
 333              	.L56:
 334 004c 3823     		movs	r3, #56
 335 004e E365     		str	r3, [r4, #92]
 336              	.L48:
 337 0050 D4E90523 		ldrd	r2, r3, [r4, #20]
 338 0054 180E     		lsrs	r0, r3, #24
 339 0056 190C     		lsrs	r1, r3, #16
 340 0058 84F85730 		strb	r3, [r4, #87]
 341 005c 150E     		lsrs	r5, r2, #24
 342 005e 1B0A     		lsrs	r3, r3, #8
ARM GAS  /tmp/ccCDAMOG.s 			page 7


 343 0060 84F85400 		strb	r0, [r4, #84]
 344 0064 84F85510 		strb	r1, [r4, #85]
 345 0068 100C     		lsrs	r0, r2, #16
 346 006a 110A     		lsrs	r1, r2, #8
 347 006c 84F85900 		strb	r0, [r4, #89]
 348 0070 84F85630 		strb	r3, [r4, #86]
 349 0074 84F85B20 		strb	r2, [r4, #91]
 350 0078 84F85850 		strb	r5, [r4, #88]
 351 007c 84F85A10 		strb	r1, [r4, #90]
 352 0080 2046     		mov	r0, r4
 353 0082 BDE83840 		pop	{r3, r4, r5, lr}
 354 0086 FFF7FEBF 		b	SHA1ProcessMessageBlock
 355              	.L44:
 356 008a 372A     		cmp	r2, #55
 357 008c E0DC     		bgt	.L48
 358 008e 1D33     		adds	r3, r3, #29
 359 0090 2344     		add	r3, r3, r4
 360 0092 04F15401 		add	r1, r4, #84
 361 0096 0022     		movs	r2, #0
 362              	.L52:
 363 0098 03F8012B 		strb	r2, [r3], #1
 364 009c 9942     		cmp	r1, r3
 365 009e FBD1     		bne	.L52
 366 00a0 D4E7     		b	.L56
 367              		.size	SHA1PadMessage, .-SHA1PadMessage
 368 00a2 00BF     		.section	.text.SHA1Result,"ax",%progbits
 369              		.align	1
 370              		.p2align 2,,3
 371              		.global	SHA1Result
 372              		.syntax unified
 373              		.thumb
 374              		.thumb_func
 375              		.fpu fpv4-sp-d16
 376              		.type	SHA1Result, %function
 377              	SHA1Result:
 378              		@ args = 0, pretend = 0, frame = 0
 379              		@ frame_needed = 0, uses_anonymous_args = 0
 380 0000 90F86130 		ldrb	r3, [r0, #97]	@ zero_extendqisi2
 381 0004 33B9     		cbnz	r3, .L60
 382 0006 90F86030 		ldrb	r3, [r0, #96]	@ zero_extendqisi2
 383 000a 10B5     		push	{r4, lr}
 384 000c 0446     		mov	r4, r0
 385 000e 23B1     		cbz	r3, .L65
 386 0010 1846     		mov	r0, r3
 387 0012 10BD     		pop	{r4, pc}
 388              	.L60:
 389 0014 0023     		movs	r3, #0
 390 0016 1846     		mov	r0, r3
 391 0018 7047     		bx	lr
 392              	.L65:
 393 001a FFF7FEFF 		bl	SHA1PadMessage
 394 001e 0123     		movs	r3, #1
 395 0020 84F86030 		strb	r3, [r4, #96]
 396 0024 1846     		mov	r0, r3
 397 0026 10BD     		pop	{r4, pc}
 398              		.size	SHA1Result, .-SHA1Result
 399              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
ARM GAS  /tmp/ccCDAMOG.s 			page 8


