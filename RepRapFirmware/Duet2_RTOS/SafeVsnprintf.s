ARM GAS  /tmp/cc6HLOQk.s 			page 1


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
  13              		.file	"SafeVsnprintf.cpp"
  14              		.section	.text._ZL6printsR10SStringBufPKc,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	_ZL6printsR10SStringBufPKc, %function
  22              	_ZL6printsR10SStringBufPKc:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  26 0002 0D46     		mov	r5, r1
  27 0004 8169     		ldr	r1, [r0, #24]
  28 0006 477F     		ldrb	r7, [r0, #29]	@ zero_extendqisi2
  29 0008 0029     		cmp	r1, #0
  30 000a 0446     		mov	r4, r0
  31 000c 2846     		mov	r0, r5
  32 000e 01DD     		ble	.L2
  33 0010 FB06     		lsls	r3, r7, #27
  34 0012 64D4     		bmi	.L81
  35              	.L2:
  36 0014 FFF7FEFF 		bl	strlen
  37              	.L3:
  38 0018 3E07     		lsls	r6, r7, #28
  39 001a 6369     		ldr	r3, [r4, #20]
  40 001c 35D5     		bpl	.L4
  41 001e A269     		ldr	r2, [r4, #24]
  42 0020 002A     		cmp	r2, #0
  43 0022 32DD     		ble	.L4
  44 0024 8242     		cmp	r2, r0
  45 0026 32DD     		ble	.L6
  46 0028 9A42     		cmp	r2, r3
  47 002a A2EB0006 		sub	r6, r2, r0
  48 002e A8BF     		it	ge
  49 0030 0023     		movge	r3, #0
  50 0032 71DB     		blt	.L82
  51              	.L8:
  52 0034 2268     		ldr	r2, [r4]
  53 0036 A168     		ldr	r1, [r4, #8]
  54 0038 8A42     		cmp	r2, r1
  55 003a 4DD2     		bcs	.L27
  56 003c 3027     		movs	r7, #48
  57 003e 03E0     		b	.L18
ARM GAS  /tmp/cc6HLOQk.s 			page 2


  58              	.L72:
  59 0040 2268     		ldr	r2, [r4]
  60 0042 A168     		ldr	r1, [r4, #8]
  61 0044 8A42     		cmp	r2, r1
  62 0046 47D2     		bcs	.L27
  63              	.L18:
  64 0048 511C     		adds	r1, r2, #1
  65 004a 2160     		str	r1, [r4]
  66 004c 1770     		strb	r7, [r2]
  67 004e E268     		ldr	r2, [r4, #12]
  68 0050 013E     		subs	r6, r6, #1
  69 0052 02F10102 		add	r2, r2, #1
  70 0056 E260     		str	r2, [r4, #12]
  71 0058 F2D1     		bne	.L72
  72              	.L17:
  73 005a 0028     		cmp	r0, #0
  74 005c 27DC     		bgt	.L16
  75              	.L21:
  76 005e 93B1     		cbz	r3, .L15
  77              	.L24:
  78 0060 2268     		ldr	r2, [r4]
  79 0062 A168     		ldr	r1, [r4, #8]
  80 0064 8A42     		cmp	r2, r1
  81 0066 37D2     		bcs	.L27
  82 0068 2020     		movs	r0, #32
  83 006a 03E0     		b	.L26
  84              	.L74:
  85 006c 2268     		ldr	r2, [r4]
  86 006e A168     		ldr	r1, [r4, #8]
  87 0070 8A42     		cmp	r2, r1
  88 0072 31D2     		bcs	.L27
  89              	.L26:
  90 0074 511C     		adds	r1, r2, #1
  91 0076 2160     		str	r1, [r4]
  92 0078 1070     		strb	r0, [r2]
  93 007a E268     		ldr	r2, [r4, #12]
  94 007c 013B     		subs	r3, r3, #1
  95 007e 02F10102 		add	r2, r2, #1
  96 0082 E260     		str	r2, [r4, #12]
  97 0084 F2D1     		bne	.L74
  98              	.L15:
  99 0086 0120     		movs	r0, #1
 100 0088 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 101              	.L4:
 102 008a 002B     		cmp	r3, #0
 103 008c 0CDD     		ble	.L69
 104              	.L6:
 105 008e 9842     		cmp	r0, r3
 106 0090 0ADA     		bge	.L69
 107 0092 17F00206 		ands	r6, r7, #2
 108 0096 A3EB0003 		sub	r3, r3, r0
 109 009a 3AD1     		bne	.L30
 110 009c 17F00107 		ands	r7, r7, #1
 111 00a0 21D0     		beq	.L34
 112              	.L9:
 113 00a2 1E44     		add	r6, r6, r3
 114 00a4 0023     		movs	r3, #0
ARM GAS  /tmp/cc6HLOQk.s 			page 3


 115 00a6 C5E7     		b	.L8
 116              	.L69:
 117 00a8 0028     		cmp	r0, #0
 118 00aa ECDD     		ble	.L15
 119 00ac 0023     		movs	r3, #0
 120              	.L16:
 121 00ae 2978     		ldrb	r1, [r5]	@ zero_extendqisi2
 122 00b0 2268     		ldr	r2, [r4]
 123 00b2 0135     		adds	r5, r5, #1
 124 00b4 69B9     		cbnz	r1, .L77
 125 00b6 0FE0     		b	.L27
 126              	.L83:
 127 00b8 561C     		adds	r6, r2, #1
 128 00ba 2660     		str	r6, [r4]
 129 00bc 1170     		strb	r1, [r2]
 130 00be E268     		ldr	r2, [r4, #12]
 131 00c0 0138     		subs	r0, r0, #1
 132 00c2 02F10102 		add	r2, r2, #1
 133 00c6 E260     		str	r2, [r4, #12]
 134 00c8 C9D0     		beq	.L21
 135 00ca 15F8011B 		ldrb	r1, [r5], #1	@ zero_extendqisi2
 136 00ce 2268     		ldr	r2, [r4]
 137 00d0 11B1     		cbz	r1, .L27
 138              	.L77:
 139 00d2 A668     		ldr	r6, [r4, #8]
 140 00d4 B242     		cmp	r2, r6
 141 00d6 EFD3     		bcc	.L83
 142              	.L27:
 143 00d8 0020     		movs	r0, #0
 144 00da 1070     		strb	r0, [r2]
 145              	.L85:
 146 00dc F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 147              	.L81:
 148 00de FFF7FEFF 		bl	_Z7StrnlenPKcj
 149 00e2 677F     		ldrb	r7, [r4, #29]	@ zero_extendqisi2
 150 00e4 98E7     		b	.L3
 151              	.L34:
 152 00e6 3E46     		mov	r6, r7
 153              	.L31:
 154 00e8 2268     		ldr	r2, [r4]
 155 00ea A168     		ldr	r1, [r4, #8]
 156 00ec 8A42     		cmp	r2, r1
 157 00ee F3D2     		bcs	.L27
 158 00f0 2027     		movs	r7, #32
 159              	.L10:
 160 00f2 511C     		adds	r1, r2, #1
 161 00f4 2160     		str	r1, [r4]
 162 00f6 1770     		strb	r7, [r2]
 163 00f8 E268     		ldr	r2, [r4, #12]
 164 00fa 013B     		subs	r3, r3, #1
 165 00fc 02F10102 		add	r2, r2, #1
 166 0100 E260     		str	r2, [r4, #12]
 167 0102 10D0     		beq	.L84
 168 0104 2268     		ldr	r2, [r4]
 169 0106 A168     		ldr	r1, [r4, #8]
 170 0108 8A42     		cmp	r2, r1
 171 010a F2D3     		bcc	.L10
ARM GAS  /tmp/cc6HLOQk.s 			page 4


 172 010c 0020     		movs	r0, #0
 173 010e 1070     		strb	r0, [r2]
 174 0110 E4E7     		b	.L85
 175              	.L30:
 176 0112 0028     		cmp	r0, #0
 177 0114 CBDC     		bgt	.L16
 178 0116 A3E7     		b	.L24
 179              	.L82:
 180 0118 B907     		lsls	r1, r7, #30
 181 011a A3EB0203 		sub	r3, r3, r2
 182 011e 89D4     		bmi	.L8
 183 0120 FA07     		lsls	r2, r7, #31
 184 0122 BED4     		bmi	.L9
 185 0124 E0E7     		b	.L31
 186              	.L84:
 187 0126 002E     		cmp	r6, #0
 188 0128 84D1     		bne	.L8
 189 012a 96E7     		b	.L17
 190              		.size	_ZL6printsR10SStringBufPKc, .-_ZL6printsR10SStringBufPKc
 191              		.section	.text._ZL6printiR10SStringBufi,"ax",%progbits
 192              		.align	1
 193              		.p2align 2,,3
 194              		.syntax unified
 195              		.thumb
 196              		.thumb_func
 197              		.fpu fpv4-sp-d16
 198              		.type	_ZL6printiR10SStringBufi, %function
 199              	_ZL6printiR10SStringBufi:
 200              		@ args = 0, pretend = 0, frame = 16
 201              		@ frame_needed = 0, uses_anonymous_args = 0
 202 0000 70B5     		push	{r4, r5, r6, lr}
 203 0002 437F     		ldrb	r3, [r0, #29]	@ zero_extendqisi2
 204 0004 43F00803 		orr	r3, r3, #8
 205 0008 84B0     		sub	sp, sp, #16
 206 000a 4377     		strb	r3, [r0, #29]
 207 000c B9B1     		cbz	r1, .L136
 208 000e 457F     		ldrb	r5, [r0, #29]	@ zero_extendqisi2
 209 0010 0269     		ldr	r2, [r0, #16]
 210 0012 0446     		mov	r4, r0
 211 0014 6807     		lsls	r0, r5, #29
 212 0016 0B46     		mov	r3, r1
 213 0018 01D5     		bpl	.L89
 214 001a 0A2A     		cmp	r2, #10
 215 001c 23D0     		beq	.L137
 216              	.L89:
 217 001e 0021     		movs	r1, #0
 218 0020 0A2A     		cmp	r2, #10
 219 0022 8DF80F10 		strb	r1, [sp, #15]
 220 0026 44D0     		beq	.L111
 221 0028 102A     		cmp	r2, #16
 222 002a 0DD0     		beq	.L112
 223 002c 082A     		cmp	r2, #8
 224 002e 40D0     		beq	.L111
 225 0030 0DF10F01 		add	r1, sp, #15
 226              	.L100:
 227 0034 2046     		mov	r0, r4
 228 0036 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
ARM GAS  /tmp/cc6HLOQk.s 			page 5


 229              	.L133:
 230 003a 04B0     		add	sp, sp, #16
 231              		@ sp needed
 232 003c 70BD     		pop	{r4, r5, r6, pc}
 233              	.L136:
 234 003e 2549     		ldr	r1, .L139
 235 0040 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 236 0044 04B0     		add	sp, sp, #16
 237              		@ sp needed
 238 0046 70BD     		pop	{r4, r5, r6, pc}
 239              	.L112:
 240 0048 0DF10F01 		add	r1, sp, #15
 241              	.L97:
 242 004c 03F00F02 		and	r2, r3, #15
 243 0050 092A     		cmp	r2, #9
 244 0052 02D9     		bls	.L95
 245 0054 207F     		ldrb	r0, [r4, #28]	@ zero_extendqisi2
 246 0056 3A38     		subs	r0, r0, #58
 247 0058 0244     		add	r2, r2, r0
 248              	.L95:
 249 005a 3032     		adds	r2, r2, #48
 250 005c 1B09     		lsrs	r3, r3, #4
 251 005e 01F8012D 		strb	r2, [r1, #-1]!
 252 0062 F3D1     		bne	.L97
 253 0064 E6E7     		b	.L100
 254              	.L137:
 255 0066 0029     		cmp	r1, #0
 256 0068 2DDB     		blt	.L138
 257 006a 0026     		movs	r6, #0
 258 006c 8DF80F60 		strb	r6, [sp, #15]
 259              	.L98:
 260 0070 0DF10F01 		add	r1, sp, #15
 261              	.L99:
 262 0074 B3FBF2F0 		udiv	r0, r3, r2
 263 0078 02FB1033 		mls	r3, r2, r0, r3
 264 007c 3033     		adds	r3, r3, #48
 265 007e 01F8013D 		strb	r3, [r1, #-1]!
 266 0082 0346     		mov	r3, r0
 267 0084 0028     		cmp	r0, #0
 268 0086 F5D1     		bne	.L99
 269 0088 002E     		cmp	r6, #0
 270 008a D3D0     		beq	.L100
 271 008c 6369     		ldr	r3, [r4, #20]
 272 008e 93B1     		cbz	r3, .L101
 273 0090 EB07     		lsls	r3, r5, #31
 274 0092 10D5     		bpl	.L101
 275 0094 2368     		ldr	r3, [r4]
 276 0096 A268     		ldr	r2, [r4, #8]
 277 0098 9342     		cmp	r3, r2
 278 009a 11D2     		bcs	.L102
 279 009c 581C     		adds	r0, r3, #1
 280 009e 2D22     		movs	r2, #45
 281 00a0 2060     		str	r0, [r4]
 282 00a2 1A70     		strb	r2, [r3]
 283 00a4 E268     		ldr	r2, [r4, #12]
 284 00a6 6369     		ldr	r3, [r4, #20]
 285 00a8 0132     		adds	r2, r2, #1
ARM GAS  /tmp/cc6HLOQk.s 			page 6


 286 00aa 013B     		subs	r3, r3, #1
 287 00ac E260     		str	r2, [r4, #12]
 288 00ae 6361     		str	r3, [r4, #20]
 289 00b0 C0E7     		b	.L100
 290              	.L111:
 291 00b2 0026     		movs	r6, #0
 292 00b4 DCE7     		b	.L98
 293              	.L101:
 294 00b6 2D23     		movs	r3, #45
 295 00b8 01F8013C 		strb	r3, [r1, #-1]
 296 00bc 0139     		subs	r1, r1, #1
 297 00be B9E7     		b	.L100
 298              	.L102:
 299 00c0 0020     		movs	r0, #0
 300 00c2 1870     		strb	r0, [r3]
 301 00c4 B9E7     		b	.L133
 302              	.L138:
 303 00c6 0020     		movs	r0, #0
 304 00c8 4B42     		negs	r3, r1
 305 00ca 8DF80F00 		strb	r0, [sp, #15]
 306 00ce 0126     		movs	r6, #1
 307 00d0 CEE7     		b	.L98
 308              	.L140:
 309 00d2 00BF     		.align	2
 310              	.L139:
 311 00d4 00000000 		.word	.LC0
 312              		.size	_ZL6printiR10SStringBufi, .-_ZL6printiR10SStringBufi
 313              		.section	.text._ZL7printllR10SStringBufx,"ax",%progbits
 314              		.align	1
 315              		.p2align 2,,3
 316              		.syntax unified
 317              		.thumb
 318              		.thumb_func
 319              		.fpu fpv4-sp-d16
 320              		.type	_ZL7printllR10SStringBufx, %function
 321              	_ZL7printllR10SStringBufx:
 322              		@ args = 0, pretend = 0, frame = 40
 323              		@ frame_needed = 0, uses_anonymous_args = 0
 324 0000 2DE97043 		push	{r4, r5, r6, r8, r9, lr}
 325 0004 9946     		mov	r9, r3
 326 0006 437F     		ldrb	r3, [r0, #29]	@ zero_extendqisi2
 327 0008 9046     		mov	r8, r2
 328 000a 43F00803 		orr	r3, r3, #8
 329 000e 4377     		strb	r3, [r0, #29]
 330 0010 58EA0903 		orrs	r3, r8, r9
 331 0014 8CB0     		sub	sp, sp, #48
 332 0016 3CD0     		beq	.L164
 333 0018 467F     		ldrb	r6, [r0, #29]	@ zero_extendqisi2
 334 001a 16F00406 		ands	r6, r6, #4
 335 001e 0446     		mov	r4, r0
 336 0020 4946     		mov	r1, r9
 337 0022 1046     		mov	r0, r2
 338 0024 2ED1     		bne	.L144
 339 0026 2369     		ldr	r3, [r4, #16]
 340 0028 8DF82D60 		strb	r6, [sp, #45]
 341              	.L145:
 342 002c 0DF12D05 		add	r5, sp, #45
ARM GAS  /tmp/cc6HLOQk.s 			page 7


 343 0030 00E0     		b	.L151
 344              	.L165:
 345 0032 2369     		ldr	r3, [r4, #16]
 346              	.L151:
 347 0034 9846     		mov	r8, r3
 348 0036 4FEAE379 		asr	r9, r3, #31
 349 003a 0246     		mov	r2, r0
 350 003c 0B46     		mov	r3, r1
 351 003e CDE90089 		strd	r8, [sp]
 352 0042 02A8     		add	r0, sp, #8
 353 0044 FFF7FEFF 		bl	lldiv
 354 0048 049B     		ldr	r3, [sp, #16]
 355 004a 092B     		cmp	r3, #9
 356 004c 02D9     		bls	.L149
 357 004e 227F     		ldrb	r2, [r4, #28]	@ zero_extendqisi2
 358 0050 3A3B     		subs	r3, r3, #58
 359 0052 1344     		add	r3, r3, r2
 360              	.L149:
 361 0054 DDE90201 		ldrd	r0, [sp, #8]
 362 0058 3033     		adds	r3, r3, #48
 363 005a 05F8013D 		strb	r3, [r5, #-1]!
 364 005e 50EA0103 		orrs	r3, r0, r1
 365 0062 E6D1     		bne	.L165
 366 0064 5EB3     		cbz	r6, .L156
 367 0066 6369     		ldr	r3, [r4, #20]
 368 0068 13B1     		cbz	r3, .L153
 369 006a 637F     		ldrb	r3, [r4, #29]	@ zero_extendqisi2
 370 006c DB07     		lsls	r3, r3, #31
 371 006e 16D4     		bmi	.L166
 372              	.L153:
 373 0070 2D23     		movs	r3, #45
 374 0072 05F8013C 		strb	r3, [r5, #-1]
 375 0076 691E     		subs	r1, r5, #1
 376              	.L152:
 377 0078 2046     		mov	r0, r4
 378 007a FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 379              	.L143:
 380 007e 0CB0     		add	sp, sp, #48
 381              		@ sp needed
 382 0080 BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 383              	.L144:
 384 0084 2369     		ldr	r3, [r4, #16]
 385 0086 0A2B     		cmp	r3, #10
 386 0088 1BD0     		beq	.L167
 387              	.L146:
 388 008a 0026     		movs	r6, #0
 389 008c 8DF82D60 		strb	r6, [sp, #45]
 390 0090 CCE7     		b	.L145
 391              	.L164:
 392 0092 1449     		ldr	r1, .L168
 393 0094 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 394 0098 0CB0     		add	sp, sp, #48
 395              		@ sp needed
 396 009a BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 397              	.L166:
 398 009e 2368     		ldr	r3, [r4]
 399 00a0 A268     		ldr	r2, [r4, #8]
ARM GAS  /tmp/cc6HLOQk.s 			page 8


 400 00a2 9342     		cmp	r3, r2
 401 00a4 1AD2     		bcs	.L154
 402 00a6 591C     		adds	r1, r3, #1
 403 00a8 2D22     		movs	r2, #45
 404 00aa 2160     		str	r1, [r4]
 405 00ac 1A70     		strb	r2, [r3]
 406 00ae E268     		ldr	r2, [r4, #12]
 407 00b0 6369     		ldr	r3, [r4, #20]
 408 00b2 0132     		adds	r2, r2, #1
 409 00b4 013B     		subs	r3, r3, #1
 410 00b6 2946     		mov	r1, r5
 411 00b8 E260     		str	r2, [r4, #12]
 412 00ba 6361     		str	r3, [r4, #20]
 413 00bc DCE7     		b	.L152
 414              	.L156:
 415 00be 2946     		mov	r1, r5
 416 00c0 DAE7     		b	.L152
 417              	.L167:
 418 00c2 002A     		cmp	r2, #0
 419 00c4 79F10002 		sbcs	r2, r9, #0
 420 00c8 DFDA     		bge	.L146
 421 00ca 0022     		movs	r2, #0
 422 00cc D8F10000 		rsbs	r0, r8, #0
 423 00d0 69EB4901 		sbc	r1, r9, r9, lsl #1
 424 00d4 8DF82D20 		strb	r2, [sp, #45]
 425 00d8 0126     		movs	r6, #1
 426 00da A7E7     		b	.L145
 427              	.L154:
 428 00dc 0020     		movs	r0, #0
 429 00de 1870     		strb	r0, [r3]
 430 00e0 CDE7     		b	.L143
 431              	.L169:
 432 00e2 00BF     		.align	2
 433              	.L168:
 434 00e4 00000000 		.word	.LC0
 435              		.size	_ZL7printllR10SStringBufx, .-_ZL7printllR10SStringBufx
 436              		.section	.text._ZN10SStringBufC2EPcj,"ax",%progbits
 437              		.align	1
 438              		.p2align 2,,3
 439              		.global	_ZN10SStringBufC2EPcj
 440              		.syntax unified
 441              		.thumb
 442              		.thumb_func
 443              		.fpu fpv4-sp-d16
 444              		.type	_ZN10SStringBufC2EPcj, %function
 445              	_ZN10SStringBufC2EPcj:
 446              		@ args = 0, pretend = 0, frame = 0
 447              		@ frame_needed = 0, uses_anonymous_args = 0
 448              		@ link register save eliminated.
 449 0000 30B4     		push	{r4, r5}
 450 0002 013A     		subs	r2, r2, #1
 451 0004 0024     		movs	r4, #0
 452 0006 0A44     		add	r2, r2, r1
 453 0008 C460     		str	r4, [r0, #12]
 454 000a 0461     		str	r4, [r0, #16]	@ unaligned
 455 000c 4461     		str	r4, [r0, #20]	@ unaligned
 456 000e 8461     		str	r4, [r0, #24]	@ unaligned
ARM GAS  /tmp/cc6HLOQk.s 			page 9


 457 0010 C461     		str	r4, [r0, #28]	@ unaligned
 458 0012 8260     		str	r2, [r0, #8]
 459 0014 C0E90011 		strd	r1, r1, [r0]
 460 0018 30BC     		pop	{r4, r5}
 461 001a 7047     		bx	lr
 462              		.size	_ZN10SStringBufC2EPcj, .-_ZN10SStringBufC2EPcj
 463              		.global	_ZN10SStringBufC1EPcj
 464              		.thumb_set _ZN10SStringBufC1EPcj,_ZN10SStringBufC2EPcj
 465              		.section	.text._ZN10SStringBuf4InitEv,"ax",%progbits
 466              		.align	1
 467              		.p2align 2,,3
 468              		.global	_ZN10SStringBuf4InitEv
 469              		.syntax unified
 470              		.thumb
 471              		.thumb_func
 472              		.fpu fpv4-sp-d16
 473              		.type	_ZN10SStringBuf4InitEv, %function
 474              	_ZN10SStringBuf4InitEv:
 475              		@ args = 0, pretend = 0, frame = 0
 476              		@ frame_needed = 0, uses_anonymous_args = 0
 477              		@ link register save eliminated.
 478 0000 0023     		movs	r3, #0
 479 0002 0361     		str	r3, [r0, #16]	@ unaligned
 480 0004 4361     		str	r3, [r0, #20]	@ unaligned
 481 0006 8361     		str	r3, [r0, #24]	@ unaligned
 482 0008 C361     		str	r3, [r0, #28]	@ unaligned
 483 000a 7047     		bx	lr
 484              		.size	_ZN10SStringBuf4InitEv, .-_ZN10SStringBuf4InitEv
 485              		.global	__aeabi_dcmpun
 486              		.global	__aeabi_dcmple
 487              		.global	__aeabi_dcmpgt
 488              		.global	__aeabi_ddiv
 489              		.global	__aeabi_dcmpeq
 490              		.global	__aeabi_dcmplt
 491              		.global	__aeabi_dmul
 492              		.global	__aeabi_i2d
 493              		.section	.text._Z13SafeVsnprintfPcjPKcSt9__va_list,"ax",%progbits
 494              		.align	1
 495              		.p2align 2,,3
 496              		.global	_Z13SafeVsnprintfPcjPKcSt9__va_list
 497              		.syntax unified
 498              		.thumb
 499              		.thumb_func
 500              		.fpu fpv4-sp-d16
 501              		.type	_Z13SafeVsnprintfPcjPKcSt9__va_list, %function
 502              	_Z13SafeVsnprintfPcjPKcSt9__va_list:
 503              		@ args = 0, pretend = 0, frame = 112
 504              		@ frame_needed = 0, uses_anonymous_args = 0
 505 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 506 0004 0024     		movs	r4, #0
 507 0006 9FB0     		sub	sp, sp, #124
 508 0008 0139     		subs	r1, r1, #1
 509 000a CDE90D00 		strd	r0, r0, [sp, #52]
 510 000e CDE91044 		strd	r4, r4, [sp, #64]
 511 0012 CDE91344 		strd	r4, r4, [sp, #76]
 512 0016 0144     		add	r1, r1, r0
 513 0018 0F91     		str	r1, [sp, #60]
ARM GAS  /tmp/cc6HLOQk.s 			page 10


 514 001a 9046     		mov	r8, r2
 515 001c 1294     		str	r4, [sp, #72]
 516 001e 1E46     		mov	r6, r3
 517              	.L174:
 518 0020 98F80020 		ldrb	r2, [r8]	@ zero_extendqisi2
 519 0024 252A     		cmp	r2, #37
 520 0026 10D0     		beq	.L175
 521              	.L318:
 522 0028 0D99     		ldr	r1, [sp, #52]
 523 002a D2B1     		cbz	r2, .L182
 524 002c 0F98     		ldr	r0, [sp, #60]
 525 002e 8842     		cmp	r0, r1
 526 0030 17D9     		bls	.L182
 527 0032 481C     		adds	r0, r1, #1
 528 0034 0D90     		str	r0, [sp, #52]
 529 0036 0A70     		strb	r2, [r1]
 530 0038 109A     		ldr	r2, [sp, #64]
 531 003a 08F10108 		add	r8, r8, #1
 532 003e 0132     		adds	r2, r2, #1
 533 0040 1092     		str	r2, [sp, #64]
 534 0042 98F80020 		ldrb	r2, [r8]	@ zero_extendqisi2
 535 0046 252A     		cmp	r2, #37
 536 0048 EED1     		bne	.L318
 537              	.L175:
 538 004a 98F80140 		ldrb	r4, [r8, #1]	@ zero_extendqisi2
 539 004e 08F10202 		add	r2, r8, #2
 540 0052 002C     		cmp	r4, #0
 541 0054 5CD0     		beq	.L180
 542 0056 252C     		cmp	r4, #37
 543 0058 09D1     		bne	.L181
 544 005a 0D99     		ldr	r1, [sp, #52]
 545 005c 0F98     		ldr	r0, [sp, #60]
 546 005e 8142     		cmp	r1, r0
 547 0060 5DD3     		bcc	.L319
 548              	.L182:
 549 0062 0023     		movs	r3, #0
 550 0064 0B70     		strb	r3, [r1]
 551              	.L178:
 552 0066 1098     		ldr	r0, [sp, #64]
 553 0068 1FB0     		add	sp, sp, #124
 554              		@ sp needed
 555 006a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 556              	.L181:
 557 006e 0021     		movs	r1, #0
 558 0070 2D2C     		cmp	r4, #45
 559 0072 CDE91111 		strd	r1, r1, [sp, #68]
 560 0076 CDE91311 		strd	r1, r1, [sp, #76]
 561 007a 09D1     		bne	.L183
 562 007c 9DF85120 		ldrb	r2, [sp, #81]	@ zero_extendqisi2
 563 0080 98F80240 		ldrb	r4, [r8, #2]	@ zero_extendqisi2
 564 0084 42F00202 		orr	r2, r2, #2
 565 0088 8DF85120 		strb	r2, [sp, #81]
 566 008c 08F10302 		add	r2, r8, #3
 567              	.L183:
 568 0090 302C     		cmp	r4, #48
 569 0092 09D1     		bne	.L184
 570              	.L185:
ARM GAS  /tmp/cc6HLOQk.s 			page 11


 571 0094 12F8014B 		ldrb	r4, [r2], #1	@ zero_extendqisi2
 572 0098 302C     		cmp	r4, #48
 573 009a FBD0     		beq	.L185
 574 009c 9DF85110 		ldrb	r1, [sp, #81]	@ zero_extendqisi2
 575 00a0 41F00101 		orr	r1, r1, #1
 576 00a4 8DF85110 		strb	r1, [sp, #81]
 577              	.L184:
 578 00a8 2A2C     		cmp	r4, #42
 579 00aa 40D1     		bne	.L186
 580 00ac 3168     		ldr	r1, [r6]
 581 00ae 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 582 00b0 1291     		str	r1, [sp, #72]
 583 00b2 0436     		adds	r6, r6, #4
 584 00b4 02F10108 		add	r8, r2, #1
 585              	.L187:
 586 00b8 2E2C     		cmp	r4, #46
 587 00ba 4ED0     		beq	.L320
 588              	.L189:
 589 00bc 4FF0FF32 		mov	r2, #-1
 590 00c0 732C     		cmp	r4, #115
 591 00c2 1392     		str	r2, [sp, #76]
 592 00c4 59D0     		beq	.L321
 593              	.L194:
 594 00c6 632C     		cmp	r4, #99
 595 00c8 69D0     		beq	.L322
 596 00ca 6C2C     		cmp	r4, #108
 597 00cc 00F00D82 		beq	.L323
 598              	.L200:
 599 00d0 04F0DF09 		and	r9, r4, #223
 600 00d4 A9F14502 		sub	r2, r9, #69
 601 00d8 012A     		cmp	r2, #1
 602 00da 40F28780 		bls	.L324
 603 00de A4F16402 		sub	r2, r4, #100
 604 00e2 D2B2     		uxtb	r2, r2
 605 00e4 0A20     		movs	r0, #10
 606 00e6 6121     		movs	r1, #97
 607 00e8 112A     		cmp	r2, #17
 608 00ea 1190     		str	r0, [sp, #68]
 609 00ec 8DF85010 		strb	r1, [sp, #80]
 610 00f0 5FD9     		bls	.L325
 611 00f2 1022     		movs	r2, #16
 612 00f4 782C     		cmp	r4, #120
 613 00f6 1192     		str	r2, [sp, #68]
 614 00f8 40F01182 		bne	.L245
 615              	.L241:
 616 00fc 9DF85120 		ldrb	r2, [sp, #81]	@ zero_extendqisi2
 617 0100 5306     		lsls	r3, r2, #25
 618 0102 67D4     		bmi	.L316
 619              	.L244:
 620 0104 3168     		ldr	r1, [r6]
 621 0106 0DA8     		add	r0, sp, #52
 622 0108 FFF7FEFF 		bl	_ZL6printiR10SStringBufi
 623 010c 0028     		cmp	r0, #0
 624 010e 44D1     		bne	.L196
 625              	.L180:
 626 0110 0D9B     		ldr	r3, [sp, #52]
 627 0112 0022     		movs	r2, #0
ARM GAS  /tmp/cc6HLOQk.s 			page 12


 628 0114 1A70     		strb	r2, [r3]
 629 0116 1098     		ldr	r0, [sp, #64]
 630 0118 1FB0     		add	sp, sp, #124
 631              		@ sp needed
 632 011a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 633              	.L319:
 634 011e 481C     		adds	r0, r1, #1
 635 0120 0D90     		str	r0, [sp, #52]
 636 0122 0C70     		strb	r4, [r1]
 637 0124 1099     		ldr	r1, [sp, #64]
 638 0126 0131     		adds	r1, r1, #1
 639 0128 9046     		mov	r8, r2
 640 012a 1091     		str	r1, [sp, #64]
 641 012c 78E7     		b	.L174
 642              	.L186:
 643 012e A4F13000 		sub	r0, r4, #48
 644 0132 C1B2     		uxtb	r1, r0
 645 0134 0929     		cmp	r1, #9
 646 0136 00F2E581 		bhi	.L246
 647 013a 0021     		movs	r1, #0
 648              	.L188:
 649 013c 12F8014B 		ldrb	r4, [r2], #1	@ zero_extendqisi2
 650 0140 01EB8101 		add	r1, r1, r1, lsl #2
 651 0144 00EB4101 		add	r1, r0, r1, lsl #1
 652 0148 A4F13000 		sub	r0, r4, #48
 653 014c C3B2     		uxtb	r3, r0
 654 014e 092B     		cmp	r3, #9
 655 0150 F4D9     		bls	.L188
 656 0152 2E2C     		cmp	r4, #46
 657 0154 1291     		str	r1, [sp, #72]
 658 0156 9046     		mov	r8, r2
 659 0158 B0D1     		bne	.L189
 660              	.L320:
 661 015a 98F80040 		ldrb	r4, [r8]	@ zero_extendqisi2
 662 015e 2A2C     		cmp	r4, #42
 663 0160 40F0AA81 		bne	.L190
 664 0164 3268     		ldr	r2, [r6]
 665 0166 98F80140 		ldrb	r4, [r8, #1]	@ zero_extendqisi2
 666 016a 1392     		str	r2, [sp, #76]
 667 016c 0436     		adds	r6, r6, #4
 668 016e 08F10208 		add	r8, r8, #2
 669 0172 002A     		cmp	r2, #0
 670 0174 A2D0     		beq	.L189
 671              	.L317:
 672 0176 732C     		cmp	r4, #115
 673 0178 A5D1     		bne	.L194
 674              	.L321:
 675 017a 9DF85120 		ldrb	r2, [sp, #81]	@ zero_extendqisi2
 676 017e 3168     		ldr	r1, [r6]
 677 0180 B148     		ldr	r0, .L337+24
 678 0182 42F01002 		orr	r2, r2, #16
 679 0186 0029     		cmp	r1, #0
 680 0188 08BF     		it	eq
 681 018a 0146     		moveq	r1, r0
 682 018c 0DA8     		add	r0, sp, #52
 683 018e 8DF85120 		strb	r2, [sp, #81]
 684 0192 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
ARM GAS  /tmp/cc6HLOQk.s 			page 13


 685 0196 0028     		cmp	r0, #0
 686 0198 BAD0     		beq	.L180
 687              	.L196:
 688 019a 0436     		adds	r6, r6, #4
 689 019c 40E7     		b	.L174
 690              	.L322:
 691 019e 3178     		ldrb	r1, [r6]	@ zero_extendqisi2
 692 01a0 0D9A     		ldr	r2, [sp, #52]
 693 01a2 19B1     		cbz	r1, .L199
 694 01a4 0F98     		ldr	r0, [sp, #60]
 695 01a6 9042     		cmp	r0, r2
 696 01a8 00F2FA81 		bhi	.L326
 697              	.L199:
 698 01ac 0023     		movs	r3, #0
 699 01ae 1370     		strb	r3, [r2]
 700 01b0 59E7     		b	.L178
 701              	.L325:
 702 01b2 A649     		ldr	r1, .L337+28
 703 01b4 21FA02F2 		lsr	r2, r1, r2
 704 01b8 D107     		lsls	r1, r2, #31
 705 01ba 40F1AE81 		bpl	.L239
 706 01be 753C     		subs	r4, r4, #117
 707 01c0 9DF85120 		ldrb	r2, [sp, #81]	@ zero_extendqisi2
 708 01c4 18BF     		it	ne
 709 01c6 0124     		movne	r4, #1
 710 01c8 64F38202 		bfi	r2, r4, #2, #1
 711 01cc 8DF85120 		strb	r2, [sp, #81]
 712 01d0 5206     		lsls	r2, r2, #25
 713 01d2 97D5     		bpl	.L244
 714              	.L316:
 715 01d4 F31D     		adds	r3, r6, #7
 716 01d6 23F00706 		bic	r6, r3, #7
 717 01da D6E90023 		ldrd	r2, [r6]
 718 01de 0DA8     		add	r0, sp, #52
 719 01e0 FFF7FEFF 		bl	_ZL7printllR10SStringBufx
 720 01e4 0028     		cmp	r0, #0
 721 01e6 93D0     		beq	.L180
 722 01e8 0836     		adds	r6, r6, #8
 723 01ea 19E7     		b	.L174
 724              	.L324:
 725 01ec F31D     		adds	r3, r6, #7
 726 01ee 23F00703 		bic	r3, r3, #7
 727 01f2 93ED007B 		vldr.64	d7, [r3]
 728 01f6 51EC170B 		vmov	r0, r1, d7
 729 01fa 0693     		str	r3, [sp, #24]
 730 01fc 17EE102A 		vmov	r2, s14	@ int
 731 0200 0B46     		mov	r3, r1
 732 0202 8DED047B 		vstr.64	d7, [sp, #16]
 733 0206 FFF7FEFF 		bl	__aeabi_dcmpun
 734 020a 0028     		cmp	r0, #0
 735 020c 40F0FD81 		bne	.L327
 736 0210 DDE90412 		ldrd	r1, [sp, #16]
 737 0214 22F00043 		bic	r3, r2, #-2147483648
 738 0218 0291     		str	r1, [sp, #8]
 739 021a 0393     		str	r3, [sp, #12]
 740 021c DDE90256 		ldrd	r5, [sp, #8]
 741 0220 4FF0FF32 		mov	r2, #-1
ARM GAS  /tmp/cc6HLOQk.s 			page 14


 742 0224 2846     		mov	r0, r5
 743 0226 3146     		mov	r1, r6
 744 0228 894B     		ldr	r3, .L337+32
 745 022a FFF7FEFF 		bl	__aeabi_dcmpun
 746 022e 48B9     		cbnz	r0, .L206
 747 0230 4FF0FF32 		mov	r2, #-1
 748 0234 864B     		ldr	r3, .L337+32
 749 0236 2846     		mov	r0, r5
 750 0238 3146     		mov	r1, r6
 751 023a FFF7FEFF 		bl	__aeabi_dcmple
 752 023e 0028     		cmp	r0, #0
 753 0240 00F0A681 		beq	.L328
 754              	.L206:
 755 0244 0022     		movs	r2, #0
 756 0246 834B     		ldr	r3, .L337+36
 757 0248 DDE90201 		ldrd	r0, [sp, #8]
 758 024c FFF7FEFF 		bl	__aeabi_dcmpgt
 759 0250 0028     		cmp	r0, #0
 760 0252 00F08780 		beq	.L207
 761 0256 B9F1460F 		cmp	r9, #70
 762 025a 7FD0     		beq	.L329
 763 025c 4FF04509 		mov	r9, #69
 764              	.L209:
 765 0260 73A3     		adr	r3, .L337
 766 0262 D3E90023 		ldrd	r2, [r3]
 767 0266 DDE90201 		ldrd	r0, [sp, #8]
 768 026a FFF7FEFF 		bl	__aeabi_dcmpgt
 769 026e 0028     		cmp	r0, #0
 770 0270 00F0C581 		beq	.L330
 771 0274 DDE90267 		ldrd	r6, [sp, #8]
 772 0278 0025     		movs	r5, #0
 773              	.L211:
 774 027a 3046     		mov	r0, r6
 775 027c 3946     		mov	r1, r7
 776 027e 6CA3     		adr	r3, .L337
 777 0280 D3E90023 		ldrd	r2, [r3]
 778 0284 FFF7FEFF 		bl	__aeabi_ddiv
 779 0288 69A3     		adr	r3, .L337
 780 028a D3E90023 		ldrd	r2, [r3]
 781 028e 0646     		mov	r6, r0
 782 0290 0F46     		mov	r7, r1
 783 0292 0535     		adds	r5, r5, #5
 784 0294 FFF7FEFF 		bl	__aeabi_dcmpgt
 785 0298 0028     		cmp	r0, #0
 786 029a EED1     		bne	.L211
 787 029c CDE90267 		strd	r6, [sp, #8]
 788              	.L214:
 789 02a0 0022     		movs	r2, #0
 790 02a2 6D4B     		ldr	r3, .L337+40
 791 02a4 DDE90201 		ldrd	r0, [sp, #8]
 792 02a8 FFF7FEFF 		bl	__aeabi_dcmpgt
 793 02ac 90B1     		cbz	r0, .L213
 794 02ae DDE90267 		ldrd	r6, [sp, #8]
 795              	.L212:
 796 02b2 3046     		mov	r0, r6
 797 02b4 3946     		mov	r1, r7
 798 02b6 0022     		movs	r2, #0
ARM GAS  /tmp/cc6HLOQk.s 			page 15


 799 02b8 674B     		ldr	r3, .L337+40
 800 02ba FFF7FEFF 		bl	__aeabi_ddiv
 801 02be 0022     		movs	r2, #0
 802 02c0 654B     		ldr	r3, .L337+40
 803 02c2 0646     		mov	r6, r0
 804 02c4 0F46     		mov	r7, r1
 805 02c6 0135     		adds	r5, r5, #1
 806 02c8 FFF7FEFF 		bl	__aeabi_dcmpgt
 807 02cc 0028     		cmp	r0, #0
 808 02ce F0D1     		bne	.L212
 809 02d0 CDE90267 		strd	r6, [sp, #8]
 810              	.L213:
 811 02d4 DDE902AB 		ldrd	r10, [sp, #8]
 812 02d8 0022     		movs	r2, #0
 813 02da 0023     		movs	r3, #0
 814 02dc 5046     		mov	r0, r10
 815 02de 5946     		mov	r1, fp
 816 02e0 FFF7FEFF 		bl	__aeabi_dcmpeq
 817 02e4 0028     		cmp	r0, #0
 818 02e6 42D1     		bne	.L210
 819 02e8 53A3     		adr	r3, .L337+8
 820 02ea D3E90023 		ldrd	r2, [r3]
 821 02ee 5046     		mov	r0, r10
 822 02f0 5946     		mov	r1, fp
 823 02f2 FFF7FEFF 		bl	__aeabi_dcmplt
 824 02f6 A0B1     		cbz	r0, .L218
 825 02f8 4FA7     		adr	r7, .L337+8
 826 02fa D7E90067 		ldrd	r6, [r7]
 827              	.L216:
 828 02fe 4CA3     		adr	r3, .L337
 829 0300 D3E90023 		ldrd	r2, [r3]
 830 0304 5046     		mov	r0, r10
 831 0306 5946     		mov	r1, fp
 832 0308 FFF7FEFF 		bl	__aeabi_dmul
 833 030c 3246     		mov	r2, r6
 834 030e 3B46     		mov	r3, r7
 835 0310 8246     		mov	r10, r0
 836 0312 8B46     		mov	fp, r1
 837 0314 053D     		subs	r5, r5, #5
 838 0316 FFF7FEFF 		bl	__aeabi_dcmplt
 839 031a 0028     		cmp	r0, #0
 840 031c EFD1     		bne	.L216
 841 031e CDE902AB 		strd	r10, [sp, #8]
 842              	.L218:
 843 0322 DDE902AB 		ldrd	r10, [sp, #8]
 844 0326 0022     		movs	r2, #0
 845 0328 4C4B     		ldr	r3, .L337+44
 846 032a 5046     		mov	r0, r10
 847 032c 5946     		mov	r1, fp
 848 032e FFF7FEFF 		bl	__aeabi_dcmplt
 849 0332 E0B1     		cbz	r0, .L210
 850 0334 494F     		ldr	r7, .L337+44
 851 0336 0026     		movs	r6, #0
 852              	.L217:
 853 0338 5046     		mov	r0, r10
 854 033a 5946     		mov	r1, fp
 855 033c 0022     		movs	r2, #0
ARM GAS  /tmp/cc6HLOQk.s 			page 16


 856 033e 464B     		ldr	r3, .L337+40
 857 0340 FFF7FEFF 		bl	__aeabi_dmul
 858 0344 3246     		mov	r2, r6
 859 0346 3B46     		mov	r3, r7
 860 0348 8246     		mov	r10, r0
 861 034a 8B46     		mov	fp, r1
 862 034c 013D     		subs	r5, r5, #1
 863 034e FFF7FEFF 		bl	__aeabi_dcmplt
 864 0352 0028     		cmp	r0, #0
 865 0354 F0D1     		bne	.L217
 866 0356 CDE902AB 		strd	r10, [sp, #8]
 867 035a 08E0     		b	.L210
 868              	.L329:
 869 035c 013C     		subs	r4, r4, #1
 870 035e E4B2     		uxtb	r4, r4
 871 0360 04F0DF09 		and	r9, r4, #223
 872              	.L207:
 873 0364 B9F1450F 		cmp	r9, #69
 874 0368 3FF47AAF 		beq	.L209
 875 036c 0025     		movs	r5, #0
 876              	.L210:
 877 036e 139E     		ldr	r6, [sp, #76]
 878 0370 002E     		cmp	r6, #0
 879 0372 C0F22381 		blt	.L331
 880 0376 00F0DD80 		beq	.L251
 881              	.L220:
 882 037a 31A3     		adr	r3, .L337+16
 883 037c D3E90023 		ldrd	r2, [r3]
 884 0380 DDE90201 		ldrd	r0, [sp, #8]
 885 0384 FFF7FEFF 		bl	__aeabi_dcmplt
 886 0388 0028     		cmp	r0, #0
 887 038a 00F03A81 		beq	.L332
 888 038e 0794     		str	r4, [sp, #28]
 889 0390 2F46     		mov	r7, r5
 890 0392 4FF00A0B 		mov	fp, #10
 891 0396 4FF0000A 		mov	r10, #0
 892 039a DDE90245 		ldrd	r4, [sp, #8]
 893 039e 02E0     		b	.L222
 894              	.L224:
 895 03a0 FFF7FEFF 		bl	__aeabi_dcmplt
 896 03a4 90B1     		cbz	r0, .L314
 897              	.L222:
 898 03a6 2046     		mov	r0, r4
 899 03a8 2946     		mov	r1, r5
 900 03aa 0022     		movs	r2, #0
 901 03ac 2A4B     		ldr	r3, .L337+40
 902 03ae FFF7FEFF 		bl	__aeabi_dmul
 903 03b2 0AF1010A 		add	r10, r10, #1
 904 03b6 0BEB8B0B 		add	fp, fp, fp, lsl #2
 905 03ba B245     		cmp	r10, r6
 906 03bc 0446     		mov	r4, r0
 907 03be 0D46     		mov	r5, r1
 908 03c0 1FA3     		adr	r3, .L337+16
 909 03c2 D3E90023 		ldrd	r2, [r3]
 910 03c6 4FEA4B0B 		lsl	fp, fp, #1
 911 03ca E9DB     		blt	.L224
 912              	.L314:
ARM GAS  /tmp/cc6HLOQk.s 			page 17


 913 03cc CDE90245 		strd	r4, [sp, #8]
 914 03d0 079C     		ldr	r4, [sp, #28]
 915 03d2 3D46     		mov	r5, r7
 916              	.L221:
 917 03d4 0023     		movs	r3, #0
 918 03d6 9DED020B 		vldr.64	d0, [sp, #8]
 919 03da 8DF87630 		strb	r3, [sp, #118]
 920 03de FFF7FEFF 		bl	llrint
 921 03e2 B9F1450F 		cmp	r9, #69
 922 03e6 0646     		mov	r6, r0
 923 03e8 0F46     		mov	r7, r1
 924 03ea 00F0A780 		beq	.L333
 925 03ee 0DF17609 		add	r9, sp, #118
 926              	.L225:
 927 03f2 0A24     		movs	r4, #10
 928 03f4 0025     		movs	r5, #0
 929              	.L230:
 930 03f6 3246     		mov	r2, r6
 931 03f8 3B46     		mov	r3, r7
 932 03fa 08A8     		add	r0, sp, #32
 933 03fc 09F1FF3B 		add	fp, r9, #-1
 934 0400 BAF1000F 		cmp	r10, #0
 935 0404 00F0DD80 		beq	.L334
 936 0408 CDE90045 		strd	r4, [sp]
 937 040c FFF7FEFF 		bl	lldiv
 938 0410 9DF82830 		ldrb	r3, [sp, #40]	@ zero_extendqisi2
 939 0414 DDE90867 		ldrd	r6, [sp, #32]
 940 0418 3033     		adds	r3, r3, #48
 941 041a 09F8013C 		strb	r3, [r9, #-1]
 942 041e 56EA0703 		orrs	r3, r6, r7
 943 0422 1DD0     		beq	.L309
 944 0424 0AF1FF3A 		add	r10, r10, #-1
 945              	.L233:
 946 0428 D946     		mov	r9, fp
 947 042a E4E7     		b	.L230
 948              	.L338:
 949 042c AFF30080 		.align	3
 950              	.L337:
 951 0430 00000000 		.word	0
 952 0434 006AF840 		.word	1090021888
 953 0438 00000080 		.word	2147483648
 954 043c B5F8E43E 		.word	1055193269
 955 0440 9A999999 		.word	2576980378
 956 0444 9999A943 		.word	1135188377
 957 0448 00000000 		.word	.LC1
 958 044c 21000200 		.word	131105
 959 0450 FFFFEF7F 		.word	2146435071
 960 0454 0000E043 		.word	1138753536
 961 0458 00002440 		.word	1076101120
 962 045c 0000F03F 		.word	1072693248
 963              	.L309:
 964 0460 BAF1010A 		subs	r10, r10, #1
 965 0464 E0D5     		bpl	.L233
 966              	.L232:
 967 0466 DDE90401 		ldrd	r0, [sp, #16]
 968 046a 0022     		movs	r2, #0
 969 046c 0023     		movs	r3, #0
ARM GAS  /tmp/cc6HLOQk.s 			page 18


 970 046e FFF7FEFF 		bl	__aeabi_dcmplt
 971 0472 B8B1     		cbz	r0, .L234
 972 0474 129B     		ldr	r3, [sp, #72]
 973 0476 002B     		cmp	r3, #0
 974 0478 00F09A80 		beq	.L236
 975 047c 9DF85130 		ldrb	r3, [sp, #81]	@ zero_extendqisi2
 976 0480 D807     		lsls	r0, r3, #31
 977 0482 40F19580 		bpl	.L236
 978 0486 0D9B     		ldr	r3, [sp, #52]
 979 0488 0F9A     		ldr	r2, [sp, #60]
 980 048a 9342     		cmp	r3, r2
 981 048c 80F0C980 		bcs	.L237
 982 0490 591C     		adds	r1, r3, #1
 983 0492 2D22     		movs	r2, #45
 984 0494 0D91     		str	r1, [sp, #52]
 985 0496 1A70     		strb	r2, [r3]
 986 0498 109A     		ldr	r2, [sp, #64]
 987 049a 129B     		ldr	r3, [sp, #72]
 988 049c 0132     		adds	r2, r2, #1
 989 049e 013B     		subs	r3, r3, #1
 990 04a0 1092     		str	r2, [sp, #64]
 991 04a2 1293     		str	r3, [sp, #72]
 992              	.L234:
 993 04a4 5946     		mov	r1, fp
 994 04a6 0DA8     		add	r0, sp, #52
 995 04a8 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 996 04ac 0028     		cmp	r0, #0
 997 04ae 3FF42FAE 		beq	.L180
 998              	.L336:
 999 04b2 069E     		ldr	r6, [sp, #24]
 1000 04b4 0836     		adds	r6, r6, #8
 1001 04b6 B3E5     		b	.L174
 1002              	.L190:
 1003 04b8 A4F13000 		sub	r0, r4, #48
 1004 04bc C2B2     		uxtb	r2, r0
 1005 04be 092A     		cmp	r2, #9
 1006 04c0 08F10108 		add	r8, r8, #1
 1007 04c4 3FF6FAAD 		bhi	.L189
 1008 04c8 0022     		movs	r2, #0
 1009              	.L192:
 1010 04ca 18F8014B 		ldrb	r4, [r8], #1	@ zero_extendqisi2
 1011 04ce 02EB8202 		add	r2, r2, r2, lsl #2
 1012 04d2 00EB4202 		add	r2, r0, r2, lsl #1
 1013 04d6 A4F13000 		sub	r0, r4, #48
 1014 04da C3B2     		uxtb	r3, r0
 1015 04dc 092B     		cmp	r3, #9
 1016 04de F4D9     		bls	.L192
 1017 04e0 1392     		str	r2, [sp, #76]
 1018 04e2 002A     		cmp	r2, #0
 1019 04e4 7FF447AE 		bne	.L317
 1020 04e8 E8E5     		b	.L189
 1021              	.L323:
 1022 04ea 98F80040 		ldrb	r4, [r8]	@ zero_extendqisi2
 1023 04ee 9DF85120 		ldrb	r2, [sp, #81]	@ zero_extendqisi2
 1024 04f2 6C2C     		cmp	r4, #108
 1025 04f4 08D0     		beq	.L335
 1026 04f6 42F02002 		orr	r2, r2, #32
ARM GAS  /tmp/cc6HLOQk.s 			page 19


 1027 04fa 08F10108 		add	r8, r8, #1
 1028 04fe 8DF85120 		strb	r2, [sp, #81]
 1029 0502 E5E5     		b	.L200
 1030              	.L246:
 1031 0504 9046     		mov	r8, r2
 1032 0506 D7E5     		b	.L187
 1033              	.L335:
 1034 0508 42F04002 		orr	r2, r2, #64
 1035 050c 98F80140 		ldrb	r4, [r8, #1]	@ zero_extendqisi2
 1036 0510 8DF85120 		strb	r2, [sp, #81]
 1037 0514 08F10208 		add	r8, r8, #2
 1038 0518 DAE5     		b	.L200
 1039              	.L239:
 1040 051a 1022     		movs	r2, #16
 1041 051c 1192     		str	r2, [sp, #68]
 1042              	.L245:
 1043 051e 582C     		cmp	r4, #88
 1044 0520 7BD0     		beq	.L242
 1045 0522 702C     		cmp	r4, #112
 1046 0524 3FF4EAAD 		beq	.L241
 1047 0528 6F2C     		cmp	r4, #111
 1048 052a 7FF479AD 		bne	.L174
 1049 052e 0822     		movs	r2, #8
 1050 0530 1192     		str	r2, [sp, #68]
 1051 0532 E3E5     		b	.L241
 1052              	.L251:
 1053 0534 B246     		mov	r10, r6
 1054 0536 4FF00A0B 		mov	fp, #10
 1055 053a 4BE7     		b	.L221
 1056              	.L333:
 1057 053c 5846     		mov	r0, fp
 1058 053e FFF7FEFF 		bl	__aeabi_i2d
 1059 0542 DDE90223 		ldrd	r2, [sp, #8]
 1060 0546 FFF7FEFF 		bl	__aeabi_dcmple
 1061 054a 00B1     		cbz	r0, .L226
 1062 054c 0135     		adds	r5, r5, #1
 1063              	.L226:
 1064 054e 85EAE573 		eor	r3, r5, r5, asr #31
 1065 0552 3549     		ldr	r1, .L339
 1066 0554 A3EBE573 		sub	r3, r3, r5, asr #31
 1067 0558 0DF17609 		add	r9, sp, #118
 1068              	.L228:
 1069 055c 81FB0320 		smull	r2, r0, r1, r3
 1070 0560 DA17     		asrs	r2, r3, #31
 1071 0562 C2EBA002 		rsb	r2, r2, r0, asr #2
 1072 0566 02EB8200 		add	r0, r2, r2, lsl #2
 1073 056a A3EB4003 		sub	r3, r3, r0, lsl #1
 1074 056e 3033     		adds	r3, r3, #48
 1075 0570 09F8013D 		strb	r3, [r9, #-1]!
 1076 0574 1346     		mov	r3, r2
 1077 0576 002A     		cmp	r2, #0
 1078 0578 F0D1     		bne	.L228
 1079 057a 002D     		cmp	r5, #0
 1080 057c ACBF     		ite	ge
 1081 057e 2B23     		movge	r3, #43
 1082 0580 2D23     		movlt	r3, #45
 1083 0582 09F8024C 		strb	r4, [r9, #-2]
ARM GAS  /tmp/cc6HLOQk.s 			page 20


 1084 0586 09F8013C 		strb	r3, [r9, #-1]
 1085 058a A9F10209 		sub	r9, r9, #2
 1086 058e 30E7     		b	.L225
 1087              	.L328:
 1088 0590 2649     		ldr	r1, .L339+4
 1089 0592 0DA8     		add	r0, sp, #52
 1090 0594 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 1091 0598 0028     		cmp	r0, #0
 1092 059a 3FF4B9AD 		beq	.L180
 1093 059e 88E7     		b	.L336
 1094              	.L326:
 1095 05a0 501C     		adds	r0, r2, #1
 1096 05a2 0D90     		str	r0, [sp, #52]
 1097 05a4 1170     		strb	r1, [r2]
 1098 05a6 109A     		ldr	r2, [sp, #64]
 1099 05a8 0132     		adds	r2, r2, #1
 1100 05aa 0436     		adds	r6, r6, #4
 1101 05ac 1092     		str	r2, [sp, #64]
 1102 05ae 37E5     		b	.L174
 1103              	.L236:
 1104 05b0 2D23     		movs	r3, #45
 1105 05b2 09F8023C 		strb	r3, [r9, #-2]
 1106 05b6 A9F1020B 		sub	fp, r9, #2
 1107 05ba 73E7     		b	.L234
 1108              	.L331:
 1109 05bc 0626     		movs	r6, #6
 1110 05be 1396     		str	r6, [sp, #76]
 1111 05c0 DBE6     		b	.L220
 1112              	.L334:
 1113 05c2 4FF02E03 		mov	r3, #46
 1114 05c6 09F8013C 		strb	r3, [r9, #-1]
 1115 05ca 3B46     		mov	r3, r7
 1116 05cc CDE90045 		strd	r4, [sp]
 1117 05d0 FFF7FEFF 		bl	lldiv
 1118 05d4 DDE90867 		ldrd	r6, [sp, #32]
 1119 05d8 9DF82830 		ldrb	r3, [sp, #40]	@ zero_extendqisi2
 1120 05dc 56EA0702 		orrs	r2, r6, r7
 1121 05e0 03F13003 		add	r3, r3, #48
 1122 05e4 09F8023C 		strb	r3, [r9, #-2]
 1123 05e8 A9F10203 		sub	r3, r9, #2
 1124 05ec 04D0     		beq	.L255
 1125 05ee 9B46     		mov	fp, r3
 1126 05f0 4FF0FF3A 		mov	r10, #-1
 1127 05f4 D946     		mov	r9, fp
 1128 05f6 FEE6     		b	.L230
 1129              	.L255:
 1130 05f8 D946     		mov	r9, fp
 1131 05fa 9B46     		mov	fp, r3
 1132 05fc 33E7     		b	.L232
 1133              	.L330:
 1134 05fe 0546     		mov	r5, r0
 1135 0600 4EE6     		b	.L214
 1136              	.L332:
 1137 0602 8246     		mov	r10, r0
 1138 0604 4FF00A0B 		mov	fp, #10
 1139 0608 E4E6     		b	.L221
 1140              	.L327:
ARM GAS  /tmp/cc6HLOQk.s 			page 21


 1141 060a 0949     		ldr	r1, .L339+8
 1142 060c 0DA8     		add	r0, sp, #52
 1143 060e FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 1144 0612 0028     		cmp	r0, #0
 1145 0614 3FF47CAD 		beq	.L180
 1146 0618 4BE7     		b	.L336
 1147              	.L242:
 1148 061a 4122     		movs	r2, #65
 1149 061c 8DF85020 		strb	r2, [sp, #80]
 1150 0620 6CE5     		b	.L241
 1151              	.L237:
 1152 0622 0022     		movs	r2, #0
 1153 0624 1A70     		strb	r2, [r3]
 1154 0626 73E5     		b	.L180
 1155              	.L340:
 1156              		.align	2
 1157              	.L339:
 1158 0628 67666666 		.word	1717986919
 1159 062c 0C000000 		.word	.LC3
 1160 0630 08000000 		.word	.LC2
 1161              		.size	_Z13SafeVsnprintfPcjPKcSt9__va_list, .-_Z13SafeVsnprintfPcjPKcSt9__va_list
 1162              		.section	.text._Z12SafeSnprintfPcjPKcz,"ax",%progbits
 1163              		.align	1
 1164              		.p2align 2,,3
 1165              		.global	_Z12SafeSnprintfPcjPKcz
 1166              		.syntax unified
 1167              		.thumb
 1168              		.thumb_func
 1169              		.fpu fpv4-sp-d16
 1170              		.type	_Z12SafeSnprintfPcjPKcz, %function
 1171              	_Z12SafeSnprintfPcjPKcz:
 1172              		@ args = 4, pretend = 8, frame = 8
 1173              		@ frame_needed = 0, uses_anonymous_args = 1
 1174 0000 0CB4     		push	{r2, r3}
 1175 0002 00B5     		push	{lr}
 1176 0004 83B0     		sub	sp, sp, #12
 1177 0006 04AB     		add	r3, sp, #16
 1178 0008 53F8042B 		ldr	r2, [r3], #4
 1179 000c 0193     		str	r3, [sp, #4]
 1180 000e FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
 1181 0012 03B0     		add	sp, sp, #12
 1182              		@ sp needed
 1183 0014 5DF804EB 		ldr	lr, [sp], #4
 1184 0018 02B0     		add	sp, sp, #8
 1185 001a 7047     		bx	lr
 1186              		.size	_Z12SafeSnprintfPcjPKcz, .-_Z12SafeSnprintfPcjPKcz
 1187              		.section	.rodata._Z13SafeVsnprintfPcjPKcSt9__va_list.str1.4,"aMS",%progbits,1
 1188              		.align	2
 1189              	.LC1:
 1190 0000 286E756C 		.ascii	"(null)\000"
 1190      6C2900
 1191 0007 00       		.space	1
 1192              	.LC2:
 1193 0008 6E616E00 		.ascii	"nan\000"
 1194              	.LC3:
 1195 000c 696E6600 		.ascii	"inf\000"
 1196              		.section	.rodata._ZL6printiR10SStringBufi.str1.4,"aMS",%progbits,1
ARM GAS  /tmp/cc6HLOQk.s 			page 22


 1197              		.align	2
 1198              	.LC0:
 1199 0000 3000     		.ascii	"0\000"
 1200              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
