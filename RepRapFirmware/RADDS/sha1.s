ARM GAS  /tmp/ccTYMBTj.s 			page 1


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
  11              		.file	"sha1.c"
  12              		.section	.text.SHA1Reset,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	SHA1Reset
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	SHA1Reset, %function
  21              	SHA1Reset:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0023     		movs	r3, #0
  26 0002 70B4     		push	{r4, r5, r6}
  27 0004 0949     		ldr	r1, .L3
  28 0006 0A4E     		ldr	r6, .L3+4
  29 0008 0A4D     		ldr	r5, .L3+8
  30 000a 0B4C     		ldr	r4, .L3+12
  31 000c 0B4A     		ldr	r2, .L3+16
  32 000e 0660     		str	r6, [r0]
  33 0010 4560     		str	r5, [r0, #4]
  34 0012 8460     		str	r4, [r0, #8]
  35 0014 C160     		str	r1, [r0, #12]
  36 0016 0261     		str	r2, [r0, #16]
  37 0018 4361     		str	r3, [r0, #20]
  38 001a 8361     		str	r3, [r0, #24]
  39 001c C365     		str	r3, [r0, #92]
  40 001e 80F86030 		strb	r3, [r0, #96]
  41 0022 80F86130 		strb	r3, [r0, #97]
  42 0026 70BC     		pop	{r4, r5, r6}
  43 0028 7047     		bx	lr
  44              	.L4:
  45 002a 00BF     		.align	2
  46              	.L3:
  47 002c 76543210 		.word	271733878
  48 0030 01234567 		.word	1732584193
  49 0034 89ABCDEF 		.word	-271733879
  50 0038 FEDCBA98 		.word	-1732584194
  51 003c F0E1D2C3 		.word	-1009589776
  52              		.size	SHA1Reset, .-SHA1Reset
  53              		.section	.text.SHA1ProcessMessageBlock,"ax",%progbits
  54              		.align	1
  55              		.p2align 2,,3
  56              		.global	SHA1ProcessMessageBlock
  57              		.syntax unified
ARM GAS  /tmp/ccTYMBTj.s 			page 2


  58              		.thumb
  59              		.thumb_func
  60              		.fpu softvfp
  61              		.type	SHA1ProcessMessageBlock, %function
  62              	SHA1ProcessMessageBlock:
  63              		@ args = 0, pretend = 0, frame = 336
  64              		@ frame_needed = 0, uses_anonymous_args = 0
  65 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  66 0004 D5B0     		sub	sp, sp, #340
  67 0006 03AE     		add	r6, sp, #12
  68 0008 0446     		mov	r4, r0
  69 000a 3546     		mov	r5, r6
  70 000c 13AF     		add	r7, sp, #76
  71              	.L6:
  72 000e 637F     		ldrb	r3, [r4, #29]	@ zero_extendqisi2
  73 0010 227F     		ldrb	r2, [r4, #28]	@ zero_extendqisi2
  74 0012 E17F     		ldrb	r1, [r4, #31]	@ zero_extendqisi2
  75 0014 1B04     		lsls	r3, r3, #16
  76 0016 43EA0263 		orr	r3, r3, r2, lsl #24
  77 001a A27F     		ldrb	r2, [r4, #30]	@ zero_extendqisi2
  78 001c 0B43     		orrs	r3, r3, r1
  79 001e 43EA0223 		orr	r3, r3, r2, lsl #8
  80 0022 45F8043F 		str	r3, [r5, #4]!
  81 0026 AF42     		cmp	r7, r5
  82 0028 04F10404 		add	r4, r4, #4
  83 002c EFD1     		bne	.L6
  84 002e 3446     		mov	r4, r6
  85 0030 43AD     		add	r5, sp, #268
  86              	.L7:
  87 0032 A36B     		ldr	r3, [r4, #56]
  88 0034 676A     		ldr	r7, [r4, #36]
  89 0036 E168     		ldr	r1, [r4, #12]
  90 0038 7B40     		eors	r3, r3, r7
  91 003a 54F8042F 		ldr	r2, [r4, #4]!
  92 003e 4B40     		eors	r3, r3, r1
  93 0040 5340     		eors	r3, r3, r2
  94 0042 4FEAF373 		ror	r3, r3, #31
  95 0046 A542     		cmp	r5, r4
  96 0048 2364     		str	r3, [r4, #64]
  97 004a F2D1     		bne	.L7
  98 004c C268     		ldr	r2, [r0, #12]
  99 004e 8368     		ldr	r3, [r0, #8]
 100 0050 D0F800B0 		ldr	fp, [r0]
 101 0054 D0F804A0 		ldr	r10, [r0, #4]
 102 0058 1446     		mov	r4, r2
 103 005a 0292     		str	r2, [sp, #8]
 104 005c 0269     		ldr	r2, [r0, #16]
 105 005e 0193     		str	r3, [sp, #4]
 106 0060 1546     		mov	r5, r2
 107 0062 0392     		str	r2, [sp, #12]
 108 0064 5146     		mov	r1, r10
 109 0066 5A46     		mov	r2, fp
 110 0068 9C46     		mov	ip, r3
 111 006a 0DF15C08 		add	r8, sp, #92
 112 006e DFF8FCE0 		ldr	lr, .L20+4
 113 0072 02E0     		b	.L8
 114              	.L12:
ARM GAS  /tmp/ccTYMBTj.s 			page 3


 115 0074 6446     		mov	r4, ip
 116 0076 3A46     		mov	r2, r7
 117 0078 9C46     		mov	ip, r3
 118              	.L8:
 119 007a 56F8043F 		ldr	r3, [r6, #4]!
 120 007e 8CEA0407 		eor	r7, ip, r4
 121 0082 0F40     		ands	r7, r7, r1
 122 0084 7344     		add	r3, r3, lr
 123 0086 03EBF263 		add	r3, r3, r2, ror #27
 124 008a 6740     		eors	r7, r7, r4
 125 008c 1F44     		add	r7, r7, r3
 126 008e B045     		cmp	r8, r6
 127 0090 2F44     		add	r7, r7, r5
 128 0092 4FEAB103 		ror	r3, r1, #2
 129 0096 2546     		mov	r5, r4
 130 0098 1146     		mov	r1, r2
 131 009a EBD1     		bne	.L12
 132 009c 3946     		mov	r1, r7
 133 009e 0DF1AC08 		add	r8, sp, #172
 134 00a2 1F46     		mov	r7, r3
 135 00a4 304D     		ldr	r5, .L20
 136 00a6 0B46     		mov	r3, r1
 137 00a8 02E0     		b	.L9
 138              	.L13:
 139 00aa BC46     		mov	ip, r7
 140 00ac 0B46     		mov	r3, r1
 141 00ae 7746     		mov	r7, lr
 142              	.L9:
 143 00b0 56F8041F 		ldr	r1, [r6, #4]!
 144 00b4 82EA070E 		eor	lr, r2, r7
 145 00b8 2944     		add	r1, r1, r5
 146 00ba 8EEA0C0E 		eor	lr, lr, ip
 147 00be 01EBF361 		add	r1, r1, r3, ror #27
 148 00c2 7144     		add	r1, r1, lr
 149 00c4 B045     		cmp	r8, r6
 150 00c6 2144     		add	r1, r1, r4
 151 00c8 4FEAB20E 		ror	lr, r2, #2
 152 00cc 6446     		mov	r4, ip
 153 00ce 1A46     		mov	r2, r3
 154 00d0 EBD1     		bne	.L13
 155 00d2 0DF1FC09 		add	r9, sp, #252
 156 00d6 DFF89880 		ldr	r8, .L20+8
 157 00da 02E0     		b	.L10
 158              	.L14:
 159 00dc 7746     		mov	r7, lr
 160 00de 1146     		mov	r1, r2
 161 00e0 AE46     		mov	lr, r5
 162              	.L10:
 163 00e2 56F8045F 		ldr	r5, [r6, #4]!
 164 00e6 4EEA0702 		orr	r2, lr, r7
 165 00ea 02EA0304 		and	r4, r2, r3
 166 00ee 4544     		add	r5, r5, r8
 167 00f0 0EEA0702 		and	r2, lr, r7
 168 00f4 05EBF165 		add	r5, r5, r1, ror #27
 169 00f8 2243     		orrs	r2, r2, r4
 170 00fa 2A44     		add	r2, r2, r5
 171 00fc B145     		cmp	r9, r6
ARM GAS  /tmp/ccTYMBTj.s 			page 4


 172 00fe 4FEAB305 		ror	r5, r3, #2
 173 0102 6244     		add	r2, r2, ip
 174 0104 0B46     		mov	r3, r1
 175 0106 BC46     		mov	ip, r7
 176 0108 E8D1     		bne	.L14
 177 010a 0DF5A678 		add	r8, sp, #332
 178 010e DFF864C0 		ldr	ip, .L20+12
 179 0112 02E0     		b	.L11
 180              	.L15:
 181 0114 AE46     		mov	lr, r5
 182 0116 1A46     		mov	r2, r3
 183 0118 2546     		mov	r5, r4
 184              	.L11:
 185 011a 56F8043F 		ldr	r3, [r6, #4]!
 186 011e 81EA0504 		eor	r4, r1, r5
 187 0122 6344     		add	r3, r3, ip
 188 0124 84EA0E04 		eor	r4, r4, lr
 189 0128 03EBF263 		add	r3, r3, r2, ror #27
 190 012c 2344     		add	r3, r3, r4
 191 012e B045     		cmp	r8, r6
 192 0130 3B44     		add	r3, r3, r7
 193 0132 4FEAB104 		ror	r4, r1, #2
 194 0136 7746     		mov	r7, lr
 195 0138 1146     		mov	r1, r2
 196 013a EBD1     		bne	.L15
 197 013c 0AEB0206 		add	r6, r10, r2
 198 0140 019A     		ldr	r2, [sp, #4]
 199 0142 0021     		movs	r1, #0
 200 0144 2244     		add	r2, r2, r4
 201 0146 1446     		mov	r4, r2
 202 0148 029A     		ldr	r2, [sp, #8]
 203 014a 5B44     		add	r3, r3, fp
 204 014c 2A44     		add	r2, r2, r5
 205 014e 1546     		mov	r5, r2
 206 0150 039A     		ldr	r2, [sp, #12]
 207 0152 80E84800 		stm	r0, {r3, r6}
 208 0156 7244     		add	r2, r2, lr
 209 0158 8460     		str	r4, [r0, #8]
 210 015a C560     		str	r5, [r0, #12]
 211 015c 0261     		str	r2, [r0, #16]
 212 015e C165     		str	r1, [r0, #92]
 213 0160 55B0     		add	sp, sp, #340
 214              		@ sp needed
 215 0162 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 216              	.L21:
 217 0166 00BF     		.align	2
 218              	.L20:
 219 0168 A1EBD96E 		.word	1859775393
 220 016c 9979825A 		.word	1518500249
 221 0170 DCBC1B8F 		.word	-1894007588
 222 0174 D6C162CA 		.word	-899497514
 223              		.size	SHA1ProcessMessageBlock, .-SHA1ProcessMessageBlock
 224              		.section	.text.SHA1Input,"ax",%progbits
 225              		.align	1
 226              		.p2align 2,,3
 227              		.global	SHA1Input
 228              		.syntax unified
ARM GAS  /tmp/ccTYMBTj.s 			page 5


 229              		.thumb
 230              		.thumb_func
 231              		.fpu softvfp
 232              		.type	SHA1Input, %function
 233              	SHA1Input:
 234              		@ args = 0, pretend = 0, frame = 0
 235              		@ frame_needed = 0, uses_anonymous_args = 0
 236 0000 6AB3     		cbz	r2, .L35
 237 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 238 0004 B0F86030 		ldrh	r3, [r0, #96]
 239 0008 2BBB     		cbnz	r3, .L25
 240 000a 90F86130 		ldrb	r3, [r0, #97]	@ zero_extendqisi2
 241 000e 3BBB     		cbnz	r3, .L38
 242 0010 0446     		mov	r4, r0
 243 0012 0D46     		mov	r5, r1
 244 0014 0127     		movs	r7, #1
 245 0016 8E18     		adds	r6, r1, r2
 246 0018 04E0     		b	.L32
 247              	.L31:
 248 001a AE42     		cmp	r6, r5
 249 001c 1AD0     		beq	.L22
 250              	.L39:
 251 001e 94F86130 		ldrb	r3, [r4, #97]	@ zero_extendqisi2
 252 0022 BBB9     		cbnz	r3, .L22
 253              	.L32:
 254 0024 E36D     		ldr	r3, [r4, #92]
 255 0026 5A1C     		adds	r2, r3, #1
 256 0028 E265     		str	r2, [r4, #92]
 257 002a 15F8011B 		ldrb	r1, [r5], #1	@ zero_extendqisi2
 258 002e 2344     		add	r3, r3, r4
 259 0030 1977     		strb	r1, [r3, #28]
 260 0032 6369     		ldr	r3, [r4, #20]
 261 0034 0833     		adds	r3, r3, #8
 262 0036 6361     		str	r3, [r4, #20]
 263 0038 2BB9     		cbnz	r3, .L29
 264 003a A369     		ldr	r3, [r4, #24]
 265 003c 0133     		adds	r3, r3, #1
 266 003e A361     		str	r3, [r4, #24]
 267 0040 0BB9     		cbnz	r3, .L29
 268 0042 84F86170 		strb	r7, [r4, #97]
 269              	.L29:
 270 0046 402A     		cmp	r2, #64
 271 0048 E7D1     		bne	.L31
 272 004a 2046     		mov	r0, r4
 273 004c FFF7FEFF 		bl	SHA1ProcessMessageBlock
 274 0050 AE42     		cmp	r6, r5
 275 0052 E4D1     		bne	.L39
 276              	.L22:
 277 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 278              	.L25:
 279 0056 0123     		movs	r3, #1
 280 0058 80F86130 		strb	r3, [r0, #97]
 281 005c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 282              	.L35:
 283 005e 7047     		bx	lr
 284              	.L38:
 285 0060 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  /tmp/ccTYMBTj.s 			page 6


 286              		.size	SHA1Input, .-SHA1Input
 287              		.section	.text.SHA1PadMessage,"ax",%progbits
 288              		.align	1
 289              		.p2align 2,,3
 290              		.global	SHA1PadMessage
 291              		.syntax unified
 292              		.thumb
 293              		.thumb_func
 294              		.fpu softvfp
 295              		.type	SHA1PadMessage, %function
 296              	SHA1PadMessage:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 300 0002 0446     		mov	r4, r0
 301 0004 C36D     		ldr	r3, [r0, #92]
 302 0006 8020     		movs	r0, #128
 303 0008 5A1C     		adds	r2, r3, #1
 304 000a E118     		adds	r1, r4, r3
 305 000c 372B     		cmp	r3, #55
 306 000e E265     		str	r2, [r4, #92]
 307 0010 0877     		strb	r0, [r1, #28]
 308 0012 3ADD     		ble	.L41
 309 0014 3F2A     		cmp	r2, #63
 310 0016 0ADC     		bgt	.L46
 311 0018 0021     		movs	r1, #0
 312 001a 1C33     		adds	r3, r3, #28
 313 001c 2344     		add	r3, r3, r4
 314 001e 04F15B02 		add	r2, r4, #91
 315              	.L45:
 316 0022 03F8011F 		strb	r1, [r3, #1]!
 317 0026 9A42     		cmp	r2, r3
 318 0028 FBD1     		bne	.L45
 319 002a 4023     		movs	r3, #64
 320 002c E365     		str	r3, [r4, #92]
 321              	.L46:
 322 002e 2046     		mov	r0, r4
 323 0030 FFF7FEFF 		bl	SHA1ProcessMessageBlock
 324 0034 E36D     		ldr	r3, [r4, #92]
 325 0036 372B     		cmp	r3, #55
 326 0038 0ADC     		bgt	.L44
 327 003a 0021     		movs	r1, #0
 328 003c 1B33     		adds	r3, r3, #27
 329 003e 2344     		add	r3, r3, r4
 330 0040 04F15302 		add	r2, r4, #83
 331              	.L47:
 332 0044 03F8011F 		strb	r1, [r3, #1]!
 333 0048 9A42     		cmp	r2, r3
 334 004a FBD1     		bne	.L47
 335 004c 3823     		movs	r3, #56
 336 004e E365     		str	r3, [r4, #92]
 337              	.L44:
 338 0050 A269     		ldr	r2, [r4, #24]
 339 0052 6369     		ldr	r3, [r4, #20]
 340 0054 170E     		lsrs	r7, r2, #24
 341 0056 160C     		lsrs	r6, r2, #16
 342 0058 150A     		lsrs	r5, r2, #8
ARM GAS  /tmp/ccTYMBTj.s 			page 7


 343 005a 180E     		lsrs	r0, r3, #24
 344 005c 190C     		lsrs	r1, r3, #16
 345 005e 84F85720 		strb	r2, [r4, #87]
 346 0062 1A0A     		lsrs	r2, r3, #8
 347 0064 84F85800 		strb	r0, [r4, #88]
 348 0068 84F85470 		strb	r7, [r4, #84]
 349 006c 84F85560 		strb	r6, [r4, #85]
 350 0070 84F85650 		strb	r5, [r4, #86]
 351 0074 84F85B30 		strb	r3, [r4, #91]
 352 0078 84F85910 		strb	r1, [r4, #89]
 353 007c 84F85A20 		strb	r2, [r4, #90]
 354 0080 2046     		mov	r0, r4
 355 0082 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 356 0086 FFF7FEBF 		b	SHA1ProcessMessageBlock
 357              	.L41:
 358 008a 382A     		cmp	r2, #56
 359 008c E0D0     		beq	.L44
 360 008e 0021     		movs	r1, #0
 361 0090 1C33     		adds	r3, r3, #28
 362 0092 2344     		add	r3, r3, r4
 363 0094 04F15302 		add	r2, r4, #83
 364              	.L48:
 365 0098 03F8011F 		strb	r1, [r3, #1]!
 366 009c 9342     		cmp	r3, r2
 367 009e FBD1     		bne	.L48
 368 00a0 3823     		movs	r3, #56
 369 00a2 E365     		str	r3, [r4, #92]
 370 00a4 D4E7     		b	.L44
 371              		.size	SHA1PadMessage, .-SHA1PadMessage
 372 00a6 00BF     		.section	.text.SHA1Result,"ax",%progbits
 373              		.align	1
 374              		.p2align 2,,3
 375              		.global	SHA1Result
 376              		.syntax unified
 377              		.thumb
 378              		.thumb_func
 379              		.fpu softvfp
 380              		.type	SHA1Result, %function
 381              	SHA1Result:
 382              		@ args = 0, pretend = 0, frame = 0
 383              		@ frame_needed = 0, uses_anonymous_args = 0
 384 0000 90F86130 		ldrb	r3, [r0, #97]	@ zero_extendqisi2
 385 0004 6BB9     		cbnz	r3, .L59
 386 0006 90F86030 		ldrb	r3, [r0, #96]	@ zero_extendqisi2
 387 000a 10B5     		push	{r4, lr}
 388 000c 0446     		mov	r4, r0
 389 000e 0BB1     		cbz	r3, .L64
 390 0010 1846     		mov	r0, r3
 391 0012 10BD     		pop	{r4, pc}
 392              	.L64:
 393 0014 FFF7FEFF 		bl	SHA1PadMessage
 394 0018 0123     		movs	r3, #1
 395 001a 84F86030 		strb	r3, [r4, #96]
 396 001e 1846     		mov	r0, r3
 397 0020 10BD     		pop	{r4, pc}
 398              	.L59:
 399 0022 0023     		movs	r3, #0
ARM GAS  /tmp/ccTYMBTj.s 			page 8


 400 0024 1846     		mov	r0, r3
 401 0026 7047     		bx	lr
 402              		.size	SHA1Result, .-SHA1Result
 403              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
