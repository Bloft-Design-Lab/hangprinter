ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccck7LXM.s 			page 1


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
  14              		.text
  15              		.section	.text.SHA1Reset,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	SHA1Reset
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	SHA1Reset, %function
  24              	SHA1Reset:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 30B4     		push	{r4, r5}
  29 0002 0A4B     		ldr	r3, .L4
  30 0004 0A4D     		ldr	r5, .L4+4
  31 0006 0B4C     		ldr	r4, .L4+8
  32 0008 0B49     		ldr	r1, .L4+12
  33 000a 0C4A     		ldr	r2, .L4+16
  34 000c 0360     		str	r3, [r0]
  35 000e 0023     		movs	r3, #0
  36 0010 C0E90154 		strd	r5, r4, [r0, #4]
  37 0014 C0E90312 		strd	r1, r2, [r0, #12]
  38 0018 C0E90533 		strd	r3, r3, [r0, #20]
  39 001c C365     		str	r3, [r0, #92]
  40 001e 80F86030 		strb	r3, [r0, #96]
  41 0022 80F86130 		strb	r3, [r0, #97]
  42 0026 30BC     		pop	{r4, r5}
  43 0028 7047     		bx	lr
  44              	.L5:
  45 002a 00BF     		.align	2
  46              	.L4:
  47 002c 01234567 		.word	1732584193
  48 0030 89ABCDEF 		.word	-271733879
  49 0034 FEDCBA98 		.word	-1732584194
  50 0038 76543210 		.word	271733878
  51 003c F0E1D2C3 		.word	-1009589776
  52              		.size	SHA1Reset, .-SHA1Reset
  53              		.section	.text.SHA1ProcessMessageBlock,"ax",%progbits
  54              		.align	1
  55              		.p2align 2,,3
  56              		.global	SHA1ProcessMessageBlock
  57              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccck7LXM.s 			page 2


  58              		.thumb
  59              		.thumb_func
  60              		.fpu fpv4-sp-d16
  61              		.type	SHA1ProcessMessageBlock, %function
  62              	SHA1ProcessMessageBlock:
  63              		@ args = 0, pretend = 0, frame = 336
  64              		@ frame_needed = 0, uses_anonymous_args = 0
  65 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  66 0004 D5B0     		sub	sp, sp, #340
  67 0006 03A9     		add	r1, sp, #12
  68 0008 0646     		mov	r6, r0
  69 000a 0F46     		mov	r7, r1
  70 000c 0DF14C0C 		add	ip, sp, #76
  71              	.L7:
  72 0010 737F     		ldrb	r3, [r6, #29]	@ zero_extendqisi2
  73 0012 357F     		ldrb	r5, [r6, #28]	@ zero_extendqisi2
  74 0014 F47F     		ldrb	r4, [r6, #31]	@ zero_extendqisi2
  75 0016 B27F     		ldrb	r2, [r6, #30]	@ zero_extendqisi2
  76 0018 1B04     		lsls	r3, r3, #16
  77 001a 43EA0563 		orr	r3, r3, r5, lsl #24
  78 001e 2343     		orrs	r3, r3, r4
  79 0020 43EA0223 		orr	r3, r3, r2, lsl #8
  80 0024 47F8043F 		str	r3, [r7, #4]!
  81 0028 BC45     		cmp	ip, r7
  82 002a 06F10406 		add	r6, r6, #4
  83 002e EFD1     		bne	.L7
  84 0030 43AF     		add	r7, sp, #268
  85 0032 0E46     		mov	r6, r1
  86              	.L8:
  87 0034 3246     		mov	r2, r6
  88 0036 56F8044F 		ldr	r4, [r6, #4]!
  89 003a 936B     		ldr	r3, [r2, #56]
  90 003c 556A     		ldr	r5, [r2, #36]
  91 003e D268     		ldr	r2, [r2, #12]
  92 0040 6B40     		eors	r3, r3, r5
  93 0042 5340     		eors	r3, r3, r2
  94 0044 6340     		eors	r3, r3, r4
  95 0046 4FEAF373 		ror	r3, r3, #31
  96 004a B742     		cmp	r7, r6
  97 004c 3364     		str	r3, [r6, #64]
  98 004e F1D1     		bne	.L8
  99 0050 D0E900BA 		ldrd	fp, r10, [r0]
 100 0054 8368     		ldr	r3, [r0, #8]
 101 0056 C468     		ldr	r4, [r0, #12]
 102 0058 0769     		ldr	r7, [r0, #16]
 103 005a 0193     		str	r3, [sp, #4]
 104 005c 0294     		str	r4, [sp, #8]
 105 005e 0397     		str	r7, [sp, #12]
 106 0060 DFF80881 		ldr	r8, .L20
 107 0064 5A46     		mov	r2, fp
 108 0066 5546     		mov	r5, r10
 109 0068 9C46     		mov	ip, r3
 110 006a 0DF15C0E 		add	lr, sp, #92
 111 006e 02E0     		b	.L9
 112              	.L13:
 113 0070 6446     		mov	r4, ip
 114 0072 3246     		mov	r2, r6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccck7LXM.s 			page 3


 115 0074 9C46     		mov	ip, r3
 116              	.L9:
 117 0076 51F8043F 		ldr	r3, [r1, #4]!
 118 007a 8CEA0406 		eor	r6, ip, r4
 119 007e 2E40     		ands	r6, r6, r5
 120 0080 4344     		add	r3, r3, r8
 121 0082 03EBF263 		add	r3, r3, r2, ror #27
 122 0086 6640     		eors	r6, r6, r4
 123 0088 1E44     		add	r6, r6, r3
 124 008a 8E45     		cmp	lr, r1
 125 008c 3E44     		add	r6, r6, r7
 126 008e 4FEAB503 		ror	r3, r5, #2
 127 0092 2746     		mov	r7, r4
 128 0094 1546     		mov	r5, r2
 129 0096 EBD1     		bne	.L13
 130 0098 3146     		mov	r1, r6
 131 009a 17AD     		add	r5, sp, #92
 132 009c 1E46     		mov	r6, r3
 133 009e 0DF1AC08 		add	r8, sp, #172
 134 00a2 0B46     		mov	r3, r1
 135 00a4 DFF8C8E0 		ldr	lr, .L20+4
 136 00a8 02E0     		b	.L10
 137              	.L14:
 138 00aa B446     		mov	ip, r6
 139 00ac 0B46     		mov	r3, r1
 140 00ae 3E46     		mov	r6, r7
 141              	.L10:
 142 00b0 55F8041F 		ldr	r1, [r5, #4]!
 143 00b4 82EA0607 		eor	r7, r2, r6
 144 00b8 7144     		add	r1, r1, lr
 145 00ba 87EA0C07 		eor	r7, r7, ip
 146 00be 01EBF361 		add	r1, r1, r3, ror #27
 147 00c2 3944     		add	r1, r1, r7
 148 00c4 A845     		cmp	r8, r5
 149 00c6 2144     		add	r1, r1, r4
 150 00c8 4FEAB207 		ror	r7, r2, #2
 151 00cc 6446     		mov	r4, ip
 152 00ce 1A46     		mov	r2, r3
 153 00d0 EBD1     		bne	.L14
 154 00d2 0DF1AC0E 		add	lr, sp, #172
 155 00d6 0DF1FC09 		add	r9, sp, #252
 156 00da DFF89880 		ldr	r8, .L20+8
 157 00de 02E0     		b	.L11
 158              	.L15:
 159 00e0 3E46     		mov	r6, r7
 160 00e2 1146     		mov	r1, r2
 161 00e4 2F46     		mov	r7, r5
 162              	.L11:
 163 00e6 5EF8045F 		ldr	r5, [lr, #4]!
 164 00ea 47EA0602 		orr	r2, r7, r6
 165 00ee 02EA0304 		and	r4, r2, r3
 166 00f2 4544     		add	r5, r5, r8
 167 00f4 07EA0602 		and	r2, r7, r6
 168 00f8 05EBF165 		add	r5, r5, r1, ror #27
 169 00fc 2243     		orrs	r2, r2, r4
 170 00fe 2A44     		add	r2, r2, r5
 171 0100 F145     		cmp	r9, lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccck7LXM.s 			page 4


 172 0102 4FEAB305 		ror	r5, r3, #2
 173 0106 6244     		add	r2, r2, ip
 174 0108 0B46     		mov	r3, r1
 175 010a B446     		mov	ip, r6
 176 010c E8D1     		bne	.L15
 177 010e 0DF5A67E 		add	lr, sp, #332
 178 0112 0DF1FC0C 		add	ip, sp, #252
 179 0116 DFF86080 		ldr	r8, .L20+12
 180 011a 02E0     		b	.L12
 181              	.L16:
 182 011c 2F46     		mov	r7, r5
 183 011e 1A46     		mov	r2, r3
 184 0120 2546     		mov	r5, r4
 185              	.L12:
 186 0122 5CF8043F 		ldr	r3, [ip, #4]!
 187 0126 81EA0504 		eor	r4, r1, r5
 188 012a 4344     		add	r3, r3, r8
 189 012c 7C40     		eors	r4, r4, r7
 190 012e 03EBF263 		add	r3, r3, r2, ror #27
 191 0132 2344     		add	r3, r3, r4
 192 0134 E645     		cmp	lr, ip
 193 0136 3344     		add	r3, r3, r6
 194 0138 4FEAB104 		ror	r4, r1, #2
 195 013c 3E46     		mov	r6, r7
 196 013e 1146     		mov	r1, r2
 197 0140 ECD1     		bne	.L16
 198 0142 0199     		ldr	r1, [sp, #4]
 199 0144 2144     		add	r1, r1, r4
 200 0146 0C46     		mov	r4, r1
 201 0148 0299     		ldr	r1, [sp, #8]
 202 014a 2944     		add	r1, r1, r5
 203 014c 0D46     		mov	r5, r1
 204 014e 0399     		ldr	r1, [sp, #12]
 205 0150 3944     		add	r1, r1, r7
 206 0152 0F46     		mov	r7, r1
 207 0154 5B44     		add	r3, r3, fp
 208 0156 5244     		add	r2, r2, r10
 209 0158 0021     		movs	r1, #0
 210 015a C0E90032 		strd	r3, r2, [r0]
 211 015e C0E90245 		strd	r4, r5, [r0, #8]
 212 0162 0761     		str	r7, [r0, #16]
 213 0164 C165     		str	r1, [r0, #92]
 214 0166 55B0     		add	sp, sp, #340
 215              		@ sp needed
 216 0168 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 217              	.L21:
 218              		.align	2
 219              	.L20:
 220 016c 9979825A 		.word	1518500249
 221 0170 A1EBD96E 		.word	1859775393
 222 0174 DCBC1B8F 		.word	-1894007588
 223 0178 D6C162CA 		.word	-899497514
 224              		.size	SHA1ProcessMessageBlock, .-SHA1ProcessMessageBlock
 225              		.section	.text.SHA1Input,"ax",%progbits
 226              		.align	1
 227              		.p2align 2,,3
 228              		.global	SHA1Input
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccck7LXM.s 			page 5


 229              		.syntax unified
 230              		.thumb
 231              		.thumb_func
 232              		.fpu fpv4-sp-d16
 233              		.type	SHA1Input, %function
 234              	SHA1Input:
 235              		@ args = 0, pretend = 0, frame = 0
 236              		@ frame_needed = 0, uses_anonymous_args = 0
 237 0000 6AB3     		cbz	r2, .L39
 238 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 239 0004 B0F86030 		ldrh	r3, [r0, #96]
 240 0008 2BBB     		cbnz	r3, .L24
 241 000a 90F86130 		ldrb	r3, [r0, #97]	@ zero_extendqisi2
 242 000e 0BBB     		cbnz	r3, .L22
 243 0010 4D1E     		subs	r5, r1, #1
 244 0012 0446     		mov	r4, r0
 245 0014 AE18     		adds	r6, r5, r2
 246 0016 0127     		movs	r7, #1
 247 0018 04E0     		b	.L31
 248              	.L30:
 249 001a B542     		cmp	r5, r6
 250 001c 1AD0     		beq	.L22
 251              	.L42:
 252 001e 94F86130 		ldrb	r3, [r4, #97]	@ zero_extendqisi2
 253 0022 BBB9     		cbnz	r3, .L22
 254              	.L31:
 255 0024 E36D     		ldr	r3, [r4, #92]
 256 0026 5A1C     		adds	r2, r3, #1
 257 0028 E265     		str	r2, [r4, #92]
 258 002a 2344     		add	r3, r3, r4
 259 002c 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
 260 0030 1977     		strb	r1, [r3, #28]
 261 0032 6369     		ldr	r3, [r4, #20]
 262 0034 0833     		adds	r3, r3, #8
 263 0036 6361     		str	r3, [r4, #20]
 264 0038 2BB9     		cbnz	r3, .L28
 265 003a A369     		ldr	r3, [r4, #24]
 266 003c 0133     		adds	r3, r3, #1
 267 003e A361     		str	r3, [r4, #24]
 268 0040 0BB9     		cbnz	r3, .L28
 269 0042 84F86170 		strb	r7, [r4, #97]
 270              	.L28:
 271 0046 402A     		cmp	r2, #64
 272 0048 E7D1     		bne	.L30
 273 004a 2046     		mov	r0, r4
 274 004c FFF7FEFF 		bl	SHA1ProcessMessageBlock
 275 0050 B542     		cmp	r5, r6
 276 0052 E4D1     		bne	.L42
 277              	.L22:
 278 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 279              	.L24:
 280 0056 0123     		movs	r3, #1
 281 0058 80F86130 		strb	r3, [r0, #97]
 282 005c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 283              	.L39:
 284 005e 7047     		bx	lr
 285              		.size	SHA1Input, .-SHA1Input
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccck7LXM.s 			page 6


 286              		.section	.text.SHA1PadMessage,"ax",%progbits
 287              		.align	1
 288              		.p2align 2,,3
 289              		.global	SHA1PadMessage
 290              		.syntax unified
 291              		.thumb
 292              		.thumb_func
 293              		.fpu fpv4-sp-d16
 294              		.type	SHA1PadMessage, %function
 295              	SHA1PadMessage:
 296              		@ args = 0, pretend = 0, frame = 0
 297              		@ frame_needed = 0, uses_anonymous_args = 0
 298 0000 38B5     		push	{r3, r4, r5, lr}
 299 0002 C36D     		ldr	r3, [r0, #92]
 300 0004 0446     		mov	r4, r0
 301 0006 C118     		adds	r1, r0, r3
 302 0008 5A1C     		adds	r2, r3, #1
 303 000a 8020     		movs	r0, #128
 304 000c 372B     		cmp	r3, #55
 305 000e E265     		str	r2, [r4, #92]
 306 0010 0877     		strb	r0, [r1, #28]
 307 0012 3ADD     		ble	.L44
 308 0014 3F2A     		cmp	r2, #63
 309 0016 0ADC     		bgt	.L45
 310 0018 1C33     		adds	r3, r3, #28
 311 001a 2344     		add	r3, r3, r4
 312 001c 04F15B01 		add	r1, r4, #91
 313 0020 0022     		movs	r2, #0
 314              	.L46:
 315 0022 03F8012F 		strb	r2, [r3, #1]!
 316 0026 9942     		cmp	r1, r3
 317 0028 FBD1     		bne	.L46
 318 002a 4023     		movs	r3, #64
 319 002c E365     		str	r3, [r4, #92]
 320              	.L45:
 321 002e 2046     		mov	r0, r4
 322 0030 FFF7FEFF 		bl	SHA1ProcessMessageBlock
 323 0034 E36D     		ldr	r3, [r4, #92]
 324 0036 372B     		cmp	r3, #55
 325 0038 0ADC     		bgt	.L48
 326 003a 1C33     		adds	r3, r3, #28
 327 003c 2344     		add	r3, r3, r4
 328 003e 04F15401 		add	r1, r4, #84
 329 0042 0022     		movs	r2, #0
 330              	.L49:
 331 0044 03F8012B 		strb	r2, [r3], #1
 332 0048 9942     		cmp	r1, r3
 333 004a FBD1     		bne	.L49
 334              	.L56:
 335 004c 3823     		movs	r3, #56
 336 004e E365     		str	r3, [r4, #92]
 337              	.L48:
 338 0050 D4E90523 		ldrd	r2, r3, [r4, #20]
 339 0054 180E     		lsrs	r0, r3, #24
 340 0056 190C     		lsrs	r1, r3, #16
 341 0058 84F85730 		strb	r3, [r4, #87]
 342 005c 150E     		lsrs	r5, r2, #24
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccck7LXM.s 			page 7


 343 005e 1B0A     		lsrs	r3, r3, #8
 344 0060 84F85400 		strb	r0, [r4, #84]
 345 0064 84F85510 		strb	r1, [r4, #85]
 346 0068 100C     		lsrs	r0, r2, #16
 347 006a 110A     		lsrs	r1, r2, #8
 348 006c 84F85900 		strb	r0, [r4, #89]
 349 0070 84F85630 		strb	r3, [r4, #86]
 350 0074 84F85B20 		strb	r2, [r4, #91]
 351 0078 84F85850 		strb	r5, [r4, #88]
 352 007c 84F85A10 		strb	r1, [r4, #90]
 353 0080 2046     		mov	r0, r4
 354 0082 BDE83840 		pop	{r3, r4, r5, lr}
 355 0086 FFF7FEBF 		b	SHA1ProcessMessageBlock
 356              	.L44:
 357 008a 372A     		cmp	r2, #55
 358 008c E0DC     		bgt	.L48
 359 008e 1D33     		adds	r3, r3, #29
 360 0090 2344     		add	r3, r3, r4
 361 0092 04F15401 		add	r1, r4, #84
 362 0096 0022     		movs	r2, #0
 363              	.L52:
 364 0098 03F8012B 		strb	r2, [r3], #1
 365 009c 9942     		cmp	r1, r3
 366 009e FBD1     		bne	.L52
 367 00a0 D4E7     		b	.L56
 368              		.size	SHA1PadMessage, .-SHA1PadMessage
 369 00a2 00BF     		.section	.text.SHA1Result,"ax",%progbits
 370              		.align	1
 371              		.p2align 2,,3
 372              		.global	SHA1Result
 373              		.syntax unified
 374              		.thumb
 375              		.thumb_func
 376              		.fpu fpv4-sp-d16
 377              		.type	SHA1Result, %function
 378              	SHA1Result:
 379              		@ args = 0, pretend = 0, frame = 0
 380              		@ frame_needed = 0, uses_anonymous_args = 0
 381 0000 90F86130 		ldrb	r3, [r0, #97]	@ zero_extendqisi2
 382 0004 33B9     		cbnz	r3, .L60
 383 0006 90F86030 		ldrb	r3, [r0, #96]	@ zero_extendqisi2
 384 000a 10B5     		push	{r4, lr}
 385 000c 0446     		mov	r4, r0
 386 000e 23B1     		cbz	r3, .L65
 387 0010 1846     		mov	r0, r3
 388 0012 10BD     		pop	{r4, pc}
 389              	.L60:
 390 0014 0023     		movs	r3, #0
 391 0016 1846     		mov	r0, r3
 392 0018 7047     		bx	lr
 393              	.L65:
 394 001a FFF7FEFF 		bl	SHA1PadMessage
 395 001e 0123     		movs	r3, #1
 396 0020 84F86030 		strb	r3, [r4, #96]
 397 0024 1846     		mov	r0, r3
 398 0026 10BD     		pop	{r4, pc}
 399              		.size	SHA1Result, .-SHA1Result
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccck7LXM.s 			page 8


 400              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
