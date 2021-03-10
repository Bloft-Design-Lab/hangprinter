ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 1


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
  14              		.text
  15              		.section	.text._ZL6printsR10SStringBufPKc,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZL6printsR10SStringBufPKc, %function
  23              	_ZL6printsR10SStringBufPKc:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  27 0002 0D46     		mov	r5, r1
  28 0004 8169     		ldr	r1, [r0, #24]
  29 0006 477F     		ldrb	r7, [r0, #29]	@ zero_extendqisi2
  30 0008 0029     		cmp	r1, #0
  31 000a 0446     		mov	r4, r0
  32 000c 2846     		mov	r0, r5
  33 000e 01DD     		ble	.L2
  34 0010 FB06     		lsls	r3, r7, #27
  35 0012 65D4     		bmi	.L79
  36              	.L2:
  37 0014 FFF7FEFF 		bl	strlen
  38              	.L3:
  39 0018 3E07     		lsls	r6, r7, #28
  40 001a 6369     		ldr	r3, [r4, #20]
  41 001c 35D5     		bpl	.L4
  42 001e A269     		ldr	r2, [r4, #24]
  43 0020 002A     		cmp	r2, #0
  44 0022 32DD     		ble	.L4
  45 0024 8242     		cmp	r2, r0
  46 0026 32DD     		ble	.L6
  47 0028 9A42     		cmp	r2, r3
  48 002a A2EB0006 		sub	r6, r2, r0
  49 002e A8BF     		it	ge
  50 0030 0023     		movge	r3, #0
  51 0032 72DB     		blt	.L80
  52              	.L8:
  53 0034 2268     		ldr	r2, [r4]
  54 0036 A168     		ldr	r1, [r4, #8]
  55 0038 8A42     		cmp	r2, r1
  56 003a 68D2     		bcs	.L27
  57 003c 3027     		movs	r7, #48
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 2


  58 003e 03E0     		b	.L18
  59              	.L72:
  60 0040 2268     		ldr	r2, [r4]
  61 0042 A168     		ldr	r1, [r4, #8]
  62 0044 8A42     		cmp	r2, r1
  63 0046 62D2     		bcs	.L27
  64              	.L18:
  65 0048 511C     		adds	r1, r2, #1
  66 004a 2160     		str	r1, [r4]
  67 004c 1770     		strb	r7, [r2]
  68 004e E268     		ldr	r2, [r4, #12]
  69 0050 013E     		subs	r6, r6, #1
  70 0052 02F10102 		add	r2, r2, #1
  71 0056 E260     		str	r2, [r4, #12]
  72 0058 F2D1     		bne	.L72
  73              	.L17:
  74 005a 0028     		cmp	r0, #0
  75 005c 27DC     		bgt	.L16
  76              	.L21:
  77 005e 93B1     		cbz	r3, .L15
  78              	.L24:
  79 0060 2268     		ldr	r2, [r4]
  80 0062 A168     		ldr	r1, [r4, #8]
  81 0064 8A42     		cmp	r2, r1
  82 0066 52D2     		bcs	.L27
  83 0068 2020     		movs	r0, #32
  84 006a 03E0     		b	.L26
  85              	.L74:
  86 006c 2268     		ldr	r2, [r4]
  87 006e A168     		ldr	r1, [r4, #8]
  88 0070 8A42     		cmp	r2, r1
  89 0072 4CD2     		bcs	.L27
  90              	.L26:
  91 0074 511C     		adds	r1, r2, #1
  92 0076 2160     		str	r1, [r4]
  93 0078 1070     		strb	r0, [r2]
  94 007a E268     		ldr	r2, [r4, #12]
  95 007c 013B     		subs	r3, r3, #1
  96 007e 02F10102 		add	r2, r2, #1
  97 0082 E260     		str	r2, [r4, #12]
  98 0084 F2D1     		bne	.L74
  99              	.L15:
 100 0086 0120     		movs	r0, #1
 101 0088 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 102              	.L4:
 103 008a 002B     		cmp	r3, #0
 104 008c 0CDD     		ble	.L69
 105              	.L6:
 106 008e 9842     		cmp	r0, r3
 107 0090 0ADA     		bge	.L69
 108 0092 17F00206 		ands	r6, r7, #2
 109 0096 A3EB0003 		sub	r3, r3, r0
 110 009a 3BD1     		bne	.L30
 111 009c 17F00107 		ands	r7, r7, #1
 112 00a0 22D0     		beq	.L34
 113              	.L9:
 114 00a2 1E44     		add	r6, r6, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 3


 115 00a4 0023     		movs	r3, #0
 116 00a6 C5E7     		b	.L8
 117              	.L69:
 118 00a8 0028     		cmp	r0, #0
 119 00aa ECDD     		ble	.L15
 120 00ac 0023     		movs	r3, #0
 121              	.L16:
 122 00ae 2978     		ldrb	r1, [r5]	@ zero_extendqisi2
 123 00b0 2268     		ldr	r2, [r4]
 124 00b2 0135     		adds	r5, r5, #1
 125 00b4 59B3     		cbz	r1, .L27
 126 00b6 A668     		ldr	r6, [r4, #8]
 127 00b8 9642     		cmp	r6, r2
 128 00ba 07D8     		bhi	.L23
 129 00bc 27E0     		b	.L27
 130              	.L73:
 131 00be 15F8011B 		ldrb	r1, [r5], #1	@ zero_extendqisi2
 132 00c2 2268     		ldr	r2, [r4]
 133 00c4 19B3     		cbz	r1, .L27
 134 00c6 A668     		ldr	r6, [r4, #8]
 135 00c8 B242     		cmp	r2, r6
 136 00ca 20D2     		bcs	.L27
 137              	.L23:
 138 00cc 561C     		adds	r6, r2, #1
 139 00ce 2660     		str	r6, [r4]
 140 00d0 1170     		strb	r1, [r2]
 141 00d2 E268     		ldr	r2, [r4, #12]
 142 00d4 0138     		subs	r0, r0, #1
 143 00d6 02F10102 		add	r2, r2, #1
 144 00da E260     		str	r2, [r4, #12]
 145 00dc EFD1     		bne	.L73
 146 00de BEE7     		b	.L21
 147              	.L79:
 148 00e0 FFF7FEFF 		bl	_Z7StrnlenPKcj
 149 00e4 677F     		ldrb	r7, [r4, #29]	@ zero_extendqisi2
 150 00e6 97E7     		b	.L3
 151              	.L34:
 152 00e8 3E46     		mov	r6, r7
 153              	.L31:
 154 00ea 2268     		ldr	r2, [r4]
 155 00ec A168     		ldr	r1, [r4, #8]
 156 00ee 8A42     		cmp	r2, r1
 157 00f0 0DD2     		bcs	.L27
 158 00f2 2027     		movs	r7, #32
 159              	.L10:
 160 00f4 511C     		adds	r1, r2, #1
 161 00f6 2160     		str	r1, [r4]
 162 00f8 1770     		strb	r7, [r2]
 163 00fa E268     		ldr	r2, [r4, #12]
 164 00fc 013B     		subs	r3, r3, #1
 165 00fe 02F10102 		add	r2, r2, #1
 166 0102 E260     		str	r2, [r4, #12]
 167 0104 10D0     		beq	.L81
 168 0106 2268     		ldr	r2, [r4]
 169 0108 A168     		ldr	r1, [r4, #8]
 170 010a 8A42     		cmp	r2, r1
 171 010c F2D3     		bcc	.L10
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 4


 172              	.L27:
 173 010e 0020     		movs	r0, #0
 174 0110 1070     		strb	r0, [r2]
 175 0112 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 176              	.L30:
 177 0114 0028     		cmp	r0, #0
 178 0116 CADC     		bgt	.L16
 179 0118 A2E7     		b	.L24
 180              	.L80:
 181 011a B907     		lsls	r1, r7, #30
 182 011c A3EB0203 		sub	r3, r3, r2
 183 0120 88D4     		bmi	.L8
 184 0122 FA07     		lsls	r2, r7, #31
 185 0124 BDD4     		bmi	.L9
 186 0126 E0E7     		b	.L31
 187              	.L81:
 188 0128 002E     		cmp	r6, #0
 189 012a 83D1     		bne	.L8
 190 012c 95E7     		b	.L17
 191              		.size	_ZL6printsR10SStringBufPKc, .-_ZL6printsR10SStringBufPKc
 192 012e 00BF     		.section	.text._ZL7printllR10SStringBufx,"ax",%progbits
 193              		.align	1
 194              		.p2align 2,,3
 195              		.syntax unified
 196              		.thumb
 197              		.thumb_func
 198              		.fpu fpv4-sp-d16
 199              		.type	_ZL7printllR10SStringBufx, %function
 200              	_ZL7printllR10SStringBufx:
 201              		@ args = 0, pretend = 0, frame = 40
 202              		@ frame_needed = 0, uses_anonymous_args = 0
 203 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 204 0004 9946     		mov	r9, r3
 205 0006 437F     		ldrb	r3, [r0, #29]	@ zero_extendqisi2
 206 0008 9046     		mov	r8, r2
 207 000a 43F00803 		orr	r3, r3, #8
 208 000e 4377     		strb	r3, [r0, #29]
 209 0010 58EA0903 		orrs	r3, r8, r9
 210 0014 8DB0     		sub	sp, sp, #52
 211 0016 00F09180 		beq	.L187
 212 001a 467F     		ldrb	r6, [r0, #29]	@ zero_extendqisi2
 213 001c 16F00408 		ands	r8, r6, #4
 214 0020 0446     		mov	r4, r0
 215 0022 4B46     		mov	r3, r9
 216 0024 73D1     		bne	.L85
 217 0026 0669     		ldr	r6, [r0, #16]
 218 0028 8DF82D80 		strb	r8, [sp, #45]
 219              	.L86:
 220 002c 0DF12D05 		add	r5, sp, #45
 221 0030 0AE0     		b	.L93
 222              	.L188:
 223 0032 207F     		ldrb	r0, [r4, #28]	@ zero_extendqisi2
 224 0034 DDE90223 		ldrd	r2, [sp, #8]
 225 0038 0144     		add	r1, r1, r0
 226 003a 0A39     		subs	r1, r1, #10
 227 003c 05F8011D 		strb	r1, [r5, #-1]!
 228 0040 52EA0301 		orrs	r1, r2, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 5


 229 0044 12D0     		beq	.L91
 230              	.L92:
 231 0046 2669     		ldr	r6, [r4, #16]
 232              	.L93:
 233 0048 F717     		asrs	r7, r6, #31
 234 004a 02A8     		add	r0, sp, #8
 235 004c CDE90067 		strd	r6, [sp]
 236 0050 FFF7FEFF 		bl	lldiv
 237 0054 0499     		ldr	r1, [sp, #16]
 238 0056 0929     		cmp	r1, #9
 239 0058 01F13000 		add	r0, r1, #48
 240 005c E9D8     		bhi	.L188
 241 005e DDE90223 		ldrd	r2, [sp, #8]
 242 0062 52EA0301 		orrs	r1, r2, r3
 243 0066 05F8010D 		strb	r0, [r5, #-1]!
 244 006a ECD1     		bne	.L92
 245              	.L91:
 246 006c 667F     		ldrb	r6, [r4, #29]	@ zero_extendqisi2
 247 006e B8F1000F 		cmp	r8, #0
 248 0072 08D0     		beq	.L94
 249 0074 6369     		ldr	r3, [r4, #20]
 250 0076 13B1     		cbz	r3, .L95
 251 0078 F207     		lsls	r2, r6, #31
 252 007a 00F18380 		bmi	.L189
 253              	.L95:
 254 007e 2D23     		movs	r3, #45
 255 0080 05F8013C 		strb	r3, [r5, #-1]
 256 0084 013D     		subs	r5, r5, #1
 257              	.L94:
 258 0086 A169     		ldr	r1, [r4, #24]
 259 0088 0029     		cmp	r1, #0
 260 008a 2846     		mov	r0, r5
 261 008c 02DD     		ble	.L97
 262 008e F306     		lsls	r3, r6, #27
 263 0090 00F1A080 		bmi	.L190
 264              	.L97:
 265 0094 FFF7FEFF 		bl	strlen
 266              	.L98:
 267 0098 3707     		lsls	r7, r6, #28
 268 009a 6369     		ldr	r3, [r4, #20]
 269 009c 3FD5     		bpl	.L99
 270 009e A269     		ldr	r2, [r4, #24]
 271 00a0 002A     		cmp	r2, #0
 272 00a2 3CDD     		ble	.L99
 273 00a4 8242     		cmp	r2, r0
 274 00a6 3CDD     		ble	.L101
 275 00a8 9A42     		cmp	r2, r3
 276 00aa A2EB0007 		sub	r7, r2, r0
 277 00ae A8BF     		it	ge
 278 00b0 0023     		movge	r3, #0
 279 00b2 C0F2A680 		blt	.L191
 280              	.L103:
 281 00b6 2268     		ldr	r2, [r4]
 282 00b8 A168     		ldr	r1, [r4, #8]
 283 00ba 9142     		cmp	r1, r2
 284 00bc 40F28580 		bls	.L121
 285 00c0 3026     		movs	r6, #48
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 6


 286 00c2 03E0     		b	.L112
 287              	.L181:
 288 00c4 2268     		ldr	r2, [r4]
 289 00c6 A168     		ldr	r1, [r4, #8]
 290 00c8 8A42     		cmp	r2, r1
 291 00ca 7ED2     		bcs	.L121
 292              	.L112:
 293 00cc 511C     		adds	r1, r2, #1
 294 00ce 2160     		str	r1, [r4]
 295 00d0 1670     		strb	r6, [r2]
 296 00d2 E268     		ldr	r2, [r4, #12]
 297 00d4 013F     		subs	r7, r7, #1
 298 00d6 02F10102 		add	r2, r2, #1
 299 00da E260     		str	r2, [r4, #12]
 300 00dc F2D1     		bne	.L181
 301              	.L111:
 302 00de 0028     		cmp	r0, #0
 303 00e0 35DC     		bgt	.L110
 304              	.L115:
 305 00e2 93B1     		cbz	r3, .L109
 306              	.L118:
 307 00e4 2268     		ldr	r2, [r4]
 308 00e6 A168     		ldr	r1, [r4, #8]
 309 00e8 8A42     		cmp	r2, r1
 310 00ea 6ED2     		bcs	.L121
 311 00ec 2020     		movs	r0, #32
 312 00ee 03E0     		b	.L120
 313              	.L183:
 314 00f0 2268     		ldr	r2, [r4]
 315 00f2 A168     		ldr	r1, [r4, #8]
 316 00f4 8A42     		cmp	r2, r1
 317 00f6 68D2     		bcs	.L121
 318              	.L120:
 319 00f8 511C     		adds	r1, r2, #1
 320 00fa 2160     		str	r1, [r4]
 321 00fc 1070     		strb	r0, [r2]
 322 00fe E268     		ldr	r2, [r4, #12]
 323 0100 013B     		subs	r3, r3, #1
 324 0102 02F10102 		add	r2, r2, #1
 325 0106 E260     		str	r2, [r4, #12]
 326 0108 F2D1     		bne	.L183
 327              	.L109:
 328 010a 0120     		movs	r0, #1
 329 010c 19E0     		b	.L178
 330              	.L85:
 331 010e 0669     		ldr	r6, [r0, #16]
 332 0110 0A2E     		cmp	r6, #10
 333 0112 63D0     		beq	.L192
 334              	.L87:
 335 0114 4FF00008 		mov	r8, #0
 336 0118 8DF82D80 		strb	r8, [sp, #45]
 337 011c 86E7     		b	.L86
 338              	.L99:
 339 011e 002B     		cmp	r3, #0
 340 0120 12DD     		ble	.L179
 341              	.L101:
 342 0122 9842     		cmp	r0, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 7


 343 0124 10DA     		bge	.L179
 344 0126 16F00207 		ands	r7, r6, #2
 345 012a A3EB0003 		sub	r3, r3, r0
 346 012e 65D1     		bne	.L124
 347 0130 16F00106 		ands	r6, r6, #1
 348 0134 36D0     		beq	.L130
 349              	.L104:
 350 0136 1F44     		add	r7, r7, r3
 351 0138 0023     		movs	r3, #0
 352 013a BCE7     		b	.L103
 353              	.L187:
 354 013c 3749     		ldr	r1, .L194
 355 013e FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 356              	.L178:
 357 0142 0DB0     		add	sp, sp, #52
 358              		@ sp needed
 359 0144 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 360              	.L179:
 361 0148 0028     		cmp	r0, #0
 362 014a DEDD     		ble	.L109
 363 014c 0023     		movs	r3, #0
 364              	.L110:
 365 014e 2978     		ldrb	r1, [r5]	@ zero_extendqisi2
 366 0150 2268     		ldr	r2, [r4]
 367 0152 0135     		adds	r5, r5, #1
 368 0154 0029     		cmp	r1, #0
 369 0156 38D0     		beq	.L121
 370 0158 A668     		ldr	r6, [r4, #8]
 371 015a B242     		cmp	r2, r6
 372 015c 08D3     		bcc	.L117
 373 015e 34E0     		b	.L121
 374              	.L182:
 375 0160 15F8011B 		ldrb	r1, [r5], #1	@ zero_extendqisi2
 376 0164 2268     		ldr	r2, [r4]
 377 0166 0029     		cmp	r1, #0
 378 0168 2FD0     		beq	.L121
 379 016a A668     		ldr	r6, [r4, #8]
 380 016c 9642     		cmp	r6, r2
 381 016e 2CD9     		bls	.L121
 382              	.L117:
 383 0170 561C     		adds	r6, r2, #1
 384 0172 2660     		str	r6, [r4]
 385 0174 1170     		strb	r1, [r2]
 386 0176 E268     		ldr	r2, [r4, #12]
 387 0178 0138     		subs	r0, r0, #1
 388 017a 02F10102 		add	r2, r2, #1
 389 017e E260     		str	r2, [r4, #12]
 390 0180 EED1     		bne	.L182
 391 0182 AEE7     		b	.L115
 392              	.L189:
 393 0184 2368     		ldr	r3, [r4]
 394 0186 A268     		ldr	r2, [r4, #8]
 395 0188 9342     		cmp	r3, r2
 396 018a 34D2     		bcs	.L96
 397 018c 591C     		adds	r1, r3, #1
 398 018e 2D22     		movs	r2, #45
 399 0190 2160     		str	r1, [r4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 8


 400 0192 1A70     		strb	r2, [r3]
 401 0194 E268     		ldr	r2, [r4, #12]
 402 0196 6369     		ldr	r3, [r4, #20]
 403 0198 667F     		ldrb	r6, [r4, #29]	@ zero_extendqisi2
 404 019a 0132     		adds	r2, r2, #1
 405 019c 013B     		subs	r3, r3, #1
 406 019e E260     		str	r2, [r4, #12]
 407 01a0 6361     		str	r3, [r4, #20]
 408 01a2 70E7     		b	.L94
 409              	.L130:
 410 01a4 3746     		mov	r7, r6
 411              	.L125:
 412 01a6 2268     		ldr	r2, [r4]
 413 01a8 A168     		ldr	r1, [r4, #8]
 414 01aa 9142     		cmp	r1, r2
 415 01ac 0DD9     		bls	.L121
 416 01ae 2026     		movs	r6, #32
 417              	.L105:
 418 01b0 511C     		adds	r1, r2, #1
 419 01b2 2160     		str	r1, [r4]
 420 01b4 1670     		strb	r6, [r2]
 421 01b6 E268     		ldr	r2, [r4, #12]
 422 01b8 013B     		subs	r3, r3, #1
 423 01ba 02F10102 		add	r2, r2, #1
 424 01be E260     		str	r2, [r4, #12]
 425 01c0 27D0     		beq	.L193
 426 01c2 2268     		ldr	r2, [r4]
 427 01c4 A168     		ldr	r1, [r4, #8]
 428 01c6 8A42     		cmp	r2, r1
 429 01c8 F2D3     		bcc	.L105
 430              	.L121:
 431 01ca 0020     		movs	r0, #0
 432 01cc 1070     		strb	r0, [r2]
 433 01ce 0DB0     		add	sp, sp, #52
 434              		@ sp needed
 435 01d0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 436              	.L190:
 437 01d4 FFF7FEFF 		bl	_Z7StrnlenPKcj
 438 01d8 667F     		ldrb	r6, [r4, #29]	@ zero_extendqisi2
 439 01da 5DE7     		b	.L98
 440              	.L192:
 441 01dc 002A     		cmp	r2, #0
 442 01de 79F10001 		sbcs	r1, r9, #0
 443 01e2 97DA     		bge	.L87
 444 01e4 0021     		movs	r1, #0
 445 01e6 5242     		rsbs	r2, r2, #0
 446 01e8 69EB4903 		sbc	r3, r9, r9, lsl #1
 447 01ec 8DF82D10 		strb	r1, [sp, #45]
 448 01f0 4FF00108 		mov	r8, #1
 449 01f4 1AE7     		b	.L86
 450              	.L96:
 451 01f6 0020     		movs	r0, #0
 452 01f8 1870     		strb	r0, [r3]
 453 01fa A2E7     		b	.L178
 454              	.L124:
 455 01fc 0028     		cmp	r0, #0
 456 01fe A6DC     		bgt	.L110
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 9


 457 0200 70E7     		b	.L118
 458              	.L191:
 459 0202 B107     		lsls	r1, r6, #30
 460 0204 A3EB0203 		sub	r3, r3, r2
 461 0208 3FF555AF 		bmi	.L103
 462 020c F207     		lsls	r2, r6, #31
 463 020e 92D4     		bmi	.L104
 464 0210 C9E7     		b	.L125
 465              	.L193:
 466 0212 002F     		cmp	r7, #0
 467 0214 7FF44FAF 		bne	.L103
 468 0218 61E7     		b	.L111
 469              	.L195:
 470 021a 00BF     		.align	2
 471              	.L194:
 472 021c 00000000 		.word	.LC0
 473              		.size	_ZL7printllR10SStringBufx, .-_ZL7printllR10SStringBufx
 474              		.section	.text._ZL6printiR10SStringBufi,"ax",%progbits
 475              		.align	1
 476              		.p2align 2,,3
 477              		.syntax unified
 478              		.thumb
 479              		.thumb_func
 480              		.fpu fpv4-sp-d16
 481              		.type	_ZL6printiR10SStringBufi, %function
 482              	_ZL6printiR10SStringBufi:
 483              		@ args = 0, pretend = 0, frame = 16
 484              		@ frame_needed = 0, uses_anonymous_args = 0
 485 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 486 0002 437F     		ldrb	r3, [r0, #29]	@ zero_extendqisi2
 487 0004 43F00803 		orr	r3, r3, #8
 488 0008 85B0     		sub	sp, sp, #20
 489 000a 4377     		strb	r3, [r0, #29]
 490 000c 0029     		cmp	r1, #0
 491 000e 00F08680 		beq	.L320
 492 0012 0446     		mov	r4, r0
 493 0014 407F     		ldrb	r0, [r0, #29]	@ zero_extendqisi2
 494 0016 2269     		ldr	r2, [r4, #16]
 495 0018 4507     		lsls	r5, r0, #29
 496 001a 0746     		mov	r7, r0
 497 001c 0B46     		mov	r3, r1
 498 001e 4FD4     		bmi	.L321
 499              	.L199:
 500 0020 0021     		movs	r1, #0
 501 0022 0A2A     		cmp	r2, #10
 502 0024 8DF80F10 		strb	r1, [sp, #15]
 503 0028 00F09A80 		beq	.L250
 504 002c 102A     		cmp	r2, #16
 505 002e 51D0     		beq	.L251
 506 0030 082A     		cmp	r2, #8
 507 0032 00F09580 		beq	.L250
 508 0036 0DF10F05 		add	r5, sp, #15
 509              	.L211:
 510 003a A169     		ldr	r1, [r4, #24]
 511 003c 0029     		cmp	r1, #0
 512 003e 2846     		mov	r0, r5
 513 0040 02DD     		ble	.L214
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 10


 514 0042 FB06     		lsls	r3, r7, #27
 515 0044 00F1B580 		bmi	.L322
 516              	.L214:
 517 0048 FFF7FEFF 		bl	strlen
 518              	.L215:
 519 004c 3E07     		lsls	r6, r7, #28
 520 004e 6369     		ldr	r3, [r4, #20]
 521 0050 51D5     		bpl	.L216
 522 0052 A269     		ldr	r2, [r4, #24]
 523 0054 002A     		cmp	r2, #0
 524 0056 4EDD     		ble	.L216
 525 0058 8242     		cmp	r2, r0
 526 005a 4EDD     		ble	.L218
 527 005c 9A42     		cmp	r2, r3
 528 005e A2EB0006 		sub	r6, r2, r0
 529 0062 A8BF     		it	ge
 530 0064 0023     		movge	r3, #0
 531 0066 C0F2C480 		blt	.L323
 532              	.L220:
 533 006a 2268     		ldr	r2, [r4]
 534 006c A168     		ldr	r1, [r4, #8]
 535 006e 8A42     		cmp	r2, r1
 536 0070 72D2     		bcs	.L238
 537 0072 3027     		movs	r7, #48
 538 0074 03E0     		b	.L229
 539              	.L311:
 540 0076 2268     		ldr	r2, [r4]
 541 0078 A168     		ldr	r1, [r4, #8]
 542 007a 8A42     		cmp	r2, r1
 543 007c 6CD2     		bcs	.L238
 544              	.L229:
 545 007e 511C     		adds	r1, r2, #1
 546 0080 2160     		str	r1, [r4]
 547 0082 1770     		strb	r7, [r2]
 548 0084 E268     		ldr	r2, [r4, #12]
 549 0086 013E     		subs	r6, r6, #1
 550 0088 02F10102 		add	r2, r2, #1
 551 008c E260     		str	r2, [r4, #12]
 552 008e F2D1     		bne	.L311
 553              	.L228:
 554 0090 0028     		cmp	r0, #0
 555 0092 4CDC     		bgt	.L227
 556              	.L232:
 557 0094 93B1     		cbz	r3, .L226
 558              	.L235:
 559 0096 2268     		ldr	r2, [r4]
 560 0098 A168     		ldr	r1, [r4, #8]
 561 009a 9142     		cmp	r1, r2
 562 009c 5CD9     		bls	.L238
 563 009e 2020     		movs	r0, #32
 564 00a0 03E0     		b	.L237
 565              	.L313:
 566 00a2 2268     		ldr	r2, [r4]
 567 00a4 A168     		ldr	r1, [r4, #8]
 568 00a6 8A42     		cmp	r2, r1
 569 00a8 56D2     		bcs	.L238
 570              	.L237:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 11


 571 00aa 511C     		adds	r1, r2, #1
 572 00ac 2160     		str	r1, [r4]
 573 00ae 1070     		strb	r0, [r2]
 574 00b0 E268     		ldr	r2, [r4, #12]
 575 00b2 013B     		subs	r3, r3, #1
 576 00b4 02F10102 		add	r2, r2, #1
 577 00b8 E260     		str	r2, [r4, #12]
 578 00ba F2D1     		bne	.L313
 579              	.L226:
 580 00bc 0120     		movs	r0, #1
 581 00be 31E0     		b	.L308
 582              	.L321:
 583 00c0 0A2A     		cmp	r2, #10
 584 00c2 ADD1     		bne	.L199
 585 00c4 0029     		cmp	r1, #0
 586 00c6 ABDA     		bge	.L199
 587 00c8 0025     		movs	r5, #0
 588 00ca 4B42     		negs	r3, r1
 589 00cc 8DF80F50 		strb	r5, [sp, #15]
 590 00d0 0126     		movs	r6, #1
 591 00d2 46E0     		b	.L208
 592              	.L251:
 593 00d4 0DF10F05 		add	r5, sp, #15
 594              	.L204:
 595 00d8 03F00F02 		and	r2, r3, #15
 596 00dc 092A     		cmp	r2, #9
 597 00de 02F13001 		add	r1, r2, #48
 598 00e2 17D9     		bls	.L205
 599 00e4 217F     		ldrb	r1, [r4, #28]	@ zero_extendqisi2
 600 00e6 0A44     		add	r2, r2, r1
 601 00e8 0A3A     		subs	r2, r2, #10
 602 00ea 1B09     		lsrs	r3, r3, #4
 603 00ec 05F8012D 		strb	r2, [r5, #-1]!
 604 00f0 F2D1     		bne	.L204
 605              	.L283:
 606 00f2 0746     		mov	r7, r0
 607 00f4 A1E7     		b	.L211
 608              	.L216:
 609 00f6 002B     		cmp	r3, #0
 610 00f8 16DD     		ble	.L309
 611              	.L218:
 612 00fa 9842     		cmp	r0, r3
 613 00fc 14DA     		bge	.L309
 614 00fe 17F00206 		ands	r6, r7, #2
 615 0102 A3EB0003 		sub	r3, r3, r0
 616 0106 71D1     		bne	.L241
 617 0108 17F00107 		ands	r7, r7, #1
 618 010c 55D0     		beq	.L248
 619              	.L221:
 620 010e 1E44     		add	r6, r6, r3
 621 0110 0023     		movs	r3, #0
 622 0112 AAE7     		b	.L220
 623              	.L205:
 624 0114 1B09     		lsrs	r3, r3, #4
 625 0116 05F8011D 		strb	r1, [r5, #-1]!
 626 011a DDD1     		bne	.L204
 627 011c E9E7     		b	.L283
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 12


 628              	.L320:
 629 011e 3B49     		ldr	r1, .L327
 630 0120 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 631              	.L308:
 632 0124 05B0     		add	sp, sp, #20
 633              		@ sp needed
 634 0126 F0BD     		pop	{r4, r5, r6, r7, pc}
 635              	.L309:
 636 0128 0028     		cmp	r0, #0
 637 012a C7DD     		ble	.L226
 638 012c 0023     		movs	r3, #0
 639              	.L227:
 640 012e 2978     		ldrb	r1, [r5]	@ zero_extendqisi2
 641 0130 2268     		ldr	r2, [r4]
 642 0132 0135     		adds	r5, r5, #1
 643 0134 69B9     		cbnz	r1, .L317
 644 0136 0FE0     		b	.L238
 645              	.L324:
 646 0138 561C     		adds	r6, r2, #1
 647 013a 2660     		str	r6, [r4]
 648 013c 1170     		strb	r1, [r2]
 649 013e E268     		ldr	r2, [r4, #12]
 650 0140 0138     		subs	r0, r0, #1
 651 0142 02F10102 		add	r2, r2, #1
 652 0146 E260     		str	r2, [r4, #12]
 653 0148 A4D0     		beq	.L232
 654 014a 15F8011B 		ldrb	r1, [r5], #1	@ zero_extendqisi2
 655 014e 2268     		ldr	r2, [r4]
 656 0150 11B1     		cbz	r1, .L238
 657              	.L317:
 658 0152 A668     		ldr	r6, [r4, #8]
 659 0154 B242     		cmp	r2, r6
 660 0156 EFD3     		bcc	.L324
 661              	.L238:
 662 0158 0020     		movs	r0, #0
 663 015a 1070     		strb	r0, [r2]
 664              	.L326:
 665 015c 05B0     		add	sp, sp, #20
 666              		@ sp needed
 667 015e F0BD     		pop	{r4, r5, r6, r7, pc}
 668              	.L250:
 669 0160 0026     		movs	r6, #0
 670              	.L208:
 671 0162 0DF10F05 		add	r5, sp, #15
 672              	.L210:
 673 0166 B3FBF2F1 		udiv	r1, r3, r2
 674 016a 02FB1133 		mls	r3, r2, r1, r3
 675 016e 3033     		adds	r3, r3, #48
 676 0170 05F8013D 		strb	r3, [r5, #-1]!
 677 0174 0B46     		mov	r3, r1
 678 0176 0029     		cmp	r1, #0
 679 0178 F5D1     		bne	.L210
 680 017a 002E     		cmp	r6, #0
 681 017c B9D0     		beq	.L283
 682 017e 6369     		ldr	r3, [r4, #20]
 683 0180 8BB1     		cbz	r3, .L212
 684 0182 C207     		lsls	r2, r0, #31
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 13


 685 0184 0FD5     		bpl	.L212
 686 0186 2368     		ldr	r3, [r4]
 687 0188 A268     		ldr	r2, [r4, #8]
 688 018a 9342     		cmp	r3, r2
 689 018c 2BD2     		bcs	.L213
 690 018e 591C     		adds	r1, r3, #1
 691 0190 2D22     		movs	r2, #45
 692 0192 2160     		str	r1, [r4]
 693 0194 1A70     		strb	r2, [r3]
 694 0196 E268     		ldr	r2, [r4, #12]
 695 0198 6369     		ldr	r3, [r4, #20]
 696 019a 677F     		ldrb	r7, [r4, #29]	@ zero_extendqisi2
 697 019c 0132     		adds	r2, r2, #1
 698 019e 013B     		subs	r3, r3, #1
 699 01a0 E260     		str	r2, [r4, #12]
 700 01a2 6361     		str	r3, [r4, #20]
 701 01a4 49E7     		b	.L211
 702              	.L212:
 703 01a6 2D23     		movs	r3, #45
 704 01a8 05F8013C 		strb	r3, [r5, #-1]
 705 01ac 0746     		mov	r7, r0
 706 01ae 013D     		subs	r5, r5, #1
 707 01b0 43E7     		b	.L211
 708              	.L322:
 709 01b2 FFF7FEFF 		bl	_Z7StrnlenPKcj
 710 01b6 677F     		ldrb	r7, [r4, #29]	@ zero_extendqisi2
 711 01b8 48E7     		b	.L215
 712              	.L248:
 713 01ba 3E46     		mov	r6, r7
 714              	.L242:
 715 01bc 2268     		ldr	r2, [r4]
 716 01be A168     		ldr	r1, [r4, #8]
 717 01c0 8A42     		cmp	r2, r1
 718 01c2 C9D2     		bcs	.L238
 719 01c4 2027     		movs	r7, #32
 720              	.L222:
 721 01c6 511C     		adds	r1, r2, #1
 722 01c8 2160     		str	r1, [r4]
 723 01ca 1770     		strb	r7, [r2]
 724 01cc E268     		ldr	r2, [r4, #12]
 725 01ce 013B     		subs	r3, r3, #1
 726 01d0 02F10102 		add	r2, r2, #1
 727 01d4 E260     		str	r2, [r4, #12]
 728 01d6 14D0     		beq	.L325
 729 01d8 2268     		ldr	r2, [r4]
 730 01da A168     		ldr	r1, [r4, #8]
 731 01dc 8A42     		cmp	r2, r1
 732 01de F2D3     		bcc	.L222
 733 01e0 0020     		movs	r0, #0
 734 01e2 1070     		strb	r0, [r2]
 735 01e4 BAE7     		b	.L326
 736              	.L213:
 737 01e6 0020     		movs	r0, #0
 738 01e8 1870     		strb	r0, [r3]
 739 01ea 9BE7     		b	.L308
 740              	.L241:
 741 01ec 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 14


 742 01ee 9EDC     		bgt	.L227
 743 01f0 51E7     		b	.L235
 744              	.L323:
 745 01f2 B907     		lsls	r1, r7, #30
 746 01f4 A3EB0203 		sub	r3, r3, r2
 747 01f8 3FF537AF 		bmi	.L220
 748 01fc FA07     		lsls	r2, r7, #31
 749 01fe 86D4     		bmi	.L221
 750 0200 DCE7     		b	.L242
 751              	.L325:
 752 0202 002E     		cmp	r6, #0
 753 0204 7FF431AF 		bne	.L220
 754 0208 42E7     		b	.L228
 755              	.L328:
 756 020a 00BF     		.align	2
 757              	.L327:
 758 020c 00000000 		.word	.LC0
 759              		.size	_ZL6printiR10SStringBufi, .-_ZL6printiR10SStringBufi
 760              		.section	.text._ZN10SStringBufC2EPcj,"ax",%progbits
 761              		.align	1
 762              		.p2align 2,,3
 763              		.global	_ZN10SStringBufC2EPcj
 764              		.syntax unified
 765              		.thumb
 766              		.thumb_func
 767              		.fpu fpv4-sp-d16
 768              		.type	_ZN10SStringBufC2EPcj, %function
 769              	_ZN10SStringBufC2EPcj:
 770              		@ args = 0, pretend = 0, frame = 0
 771              		@ frame_needed = 0, uses_anonymous_args = 0
 772              		@ link register save eliminated.
 773 0000 30B4     		push	{r4, r5}
 774 0002 013A     		subs	r2, r2, #1
 775 0004 0024     		movs	r4, #0
 776 0006 0A44     		add	r2, r2, r1
 777 0008 C460     		str	r4, [r0, #12]
 778 000a 0461     		str	r4, [r0, #16]	@ unaligned
 779 000c 4461     		str	r4, [r0, #20]	@ unaligned
 780 000e 8461     		str	r4, [r0, #24]	@ unaligned
 781 0010 C461     		str	r4, [r0, #28]	@ unaligned
 782 0012 8260     		str	r2, [r0, #8]
 783 0014 C0E90011 		strd	r1, r1, [r0]
 784 0018 30BC     		pop	{r4, r5}
 785 001a 7047     		bx	lr
 786              		.size	_ZN10SStringBufC2EPcj, .-_ZN10SStringBufC2EPcj
 787              		.global	_ZN10SStringBufC1EPcj
 788              		.thumb_set _ZN10SStringBufC1EPcj,_ZN10SStringBufC2EPcj
 789              		.section	.text._ZN10SStringBuf4InitEv,"ax",%progbits
 790              		.align	1
 791              		.p2align 2,,3
 792              		.global	_ZN10SStringBuf4InitEv
 793              		.syntax unified
 794              		.thumb
 795              		.thumb_func
 796              		.fpu fpv4-sp-d16
 797              		.type	_ZN10SStringBuf4InitEv, %function
 798              	_ZN10SStringBuf4InitEv:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 15


 799              		@ args = 0, pretend = 0, frame = 0
 800              		@ frame_needed = 0, uses_anonymous_args = 0
 801              		@ link register save eliminated.
 802 0000 0023     		movs	r3, #0
 803 0002 0361     		str	r3, [r0, #16]	@ unaligned
 804 0004 4361     		str	r3, [r0, #20]	@ unaligned
 805 0006 8361     		str	r3, [r0, #24]	@ unaligned
 806 0008 C361     		str	r3, [r0, #28]	@ unaligned
 807 000a 7047     		bx	lr
 808              		.size	_ZN10SStringBuf4InitEv, .-_ZN10SStringBuf4InitEv
 809              		.global	__aeabi_dcmpun
 810              		.global	__aeabi_dcmple
 811              		.global	__aeabi_dcmpgt
 812              		.global	__aeabi_ddiv
 813              		.global	__aeabi_dcmpeq
 814              		.global	__aeabi_dcmplt
 815              		.global	__aeabi_dmul
 816              		.global	__aeabi_i2d
 817              		.section	.text._Z13SafeVsnprintfPcjPKcSt9__va_list,"ax",%progbits
 818              		.align	1
 819              		.p2align 2,,3
 820              		.global	_Z13SafeVsnprintfPcjPKcSt9__va_list
 821              		.syntax unified
 822              		.thumb
 823              		.thumb_func
 824              		.fpu fpv4-sp-d16
 825              		.type	_Z13SafeVsnprintfPcjPKcSt9__va_list, %function
 826              	_Z13SafeVsnprintfPcjPKcSt9__va_list:
 827              		@ args = 0, pretend = 0, frame = 112
 828              		@ frame_needed = 0, uses_anonymous_args = 0
 829 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 830 0004 0024     		movs	r4, #0
 831 0006 9FB0     		sub	sp, sp, #124
 832 0008 0139     		subs	r1, r1, #1
 833 000a CDE90D00 		strd	r0, r0, [sp, #52]
 834 000e CDE91044 		strd	r4, r4, [sp, #64]
 835 0012 CDE91344 		strd	r4, r4, [sp, #76]
 836 0016 0144     		add	r1, r1, r0
 837 0018 0F91     		str	r1, [sp, #60]
 838 001a 9046     		mov	r8, r2
 839 001c 1294     		str	r4, [sp, #72]
 840 001e 1F46     		mov	r7, r3
 841              	.L333:
 842 0020 98F80020 		ldrb	r2, [r8]	@ zero_extendqisi2
 843 0024 252A     		cmp	r2, #37
 844 0026 10D0     		beq	.L334
 845              	.L476:
 846 0028 0D99     		ldr	r1, [sp, #52]
 847 002a D2B1     		cbz	r2, .L341
 848 002c 0F98     		ldr	r0, [sp, #60]
 849 002e 8842     		cmp	r0, r1
 850 0030 17D9     		bls	.L341
 851 0032 481C     		adds	r0, r1, #1
 852 0034 0D90     		str	r0, [sp, #52]
 853 0036 0A70     		strb	r2, [r1]
 854 0038 109A     		ldr	r2, [sp, #64]
 855 003a 08F10108 		add	r8, r8, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 16


 856 003e 0132     		adds	r2, r2, #1
 857 0040 1092     		str	r2, [sp, #64]
 858 0042 98F80020 		ldrb	r2, [r8]	@ zero_extendqisi2
 859 0046 252A     		cmp	r2, #37
 860 0048 EED1     		bne	.L476
 861              	.L334:
 862 004a 98F80140 		ldrb	r4, [r8, #1]	@ zero_extendqisi2
 863 004e 08F10202 		add	r2, r8, #2
 864 0052 002C     		cmp	r4, #0
 865 0054 5CD0     		beq	.L339
 866 0056 252C     		cmp	r4, #37
 867 0058 09D1     		bne	.L340
 868 005a 0D99     		ldr	r1, [sp, #52]
 869 005c 0F98     		ldr	r0, [sp, #60]
 870 005e 8142     		cmp	r1, r0
 871 0060 5DD3     		bcc	.L477
 872              	.L341:
 873 0062 0023     		movs	r3, #0
 874 0064 0B70     		strb	r3, [r1]
 875              	.L337:
 876 0066 1098     		ldr	r0, [sp, #64]
 877 0068 1FB0     		add	sp, sp, #124
 878              		@ sp needed
 879 006a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 880              	.L340:
 881 006e 0021     		movs	r1, #0
 882 0070 2D2C     		cmp	r4, #45
 883 0072 CDE91111 		strd	r1, r1, [sp, #68]
 884 0076 CDE91311 		strd	r1, r1, [sp, #76]
 885 007a 09D1     		bne	.L342
 886 007c 9DF85120 		ldrb	r2, [sp, #81]	@ zero_extendqisi2
 887 0080 98F80240 		ldrb	r4, [r8, #2]	@ zero_extendqisi2
 888 0084 42F00202 		orr	r2, r2, #2
 889 0088 8DF85120 		strb	r2, [sp, #81]
 890 008c 08F10302 		add	r2, r8, #3
 891              	.L342:
 892 0090 302C     		cmp	r4, #48
 893 0092 09D1     		bne	.L343
 894              	.L344:
 895 0094 12F8014B 		ldrb	r4, [r2], #1	@ zero_extendqisi2
 896 0098 302C     		cmp	r4, #48
 897 009a FBD0     		beq	.L344
 898 009c 9DF85110 		ldrb	r1, [sp, #81]	@ zero_extendqisi2
 899 00a0 41F00101 		orr	r1, r1, #1
 900 00a4 8DF85110 		strb	r1, [sp, #81]
 901              	.L343:
 902 00a8 2A2C     		cmp	r4, #42
 903 00aa 40D1     		bne	.L345
 904 00ac 3968     		ldr	r1, [r7]
 905 00ae 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 906 00b0 1291     		str	r1, [sp, #72]
 907 00b2 0437     		adds	r7, r7, #4
 908 00b4 02F10108 		add	r8, r2, #1
 909              	.L346:
 910 00b8 2E2C     		cmp	r4, #46
 911 00ba 4ED0     		beq	.L478
 912              	.L348:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 17


 913 00bc 4FF0FF36 		mov	r6, #-1
 914 00c0 732C     		cmp	r4, #115
 915 00c2 1396     		str	r6, [sp, #76]
 916 00c4 59D0     		beq	.L479
 917              	.L353:
 918 00c6 632C     		cmp	r4, #99
 919 00c8 69D0     		beq	.L480
 920 00ca 6C2C     		cmp	r4, #108
 921 00cc 00F01582 		beq	.L481
 922              	.L359:
 923 00d0 04F0DF0B 		and	fp, r4, #223
 924 00d4 ABF14502 		sub	r2, fp, #69
 925 00d8 012A     		cmp	r2, #1
 926 00da 40F28780 		bls	.L482
 927 00de A4F16402 		sub	r2, r4, #100
 928 00e2 D2B2     		uxtb	r2, r2
 929 00e4 0A20     		movs	r0, #10
 930 00e6 6121     		movs	r1, #97
 931 00e8 112A     		cmp	r2, #17
 932 00ea 1190     		str	r0, [sp, #68]
 933 00ec 8DF85010 		strb	r1, [sp, #80]
 934 00f0 5FD9     		bls	.L483
 935 00f2 1022     		movs	r2, #16
 936 00f4 782C     		cmp	r4, #120
 937 00f6 1192     		str	r2, [sp, #68]
 938 00f8 40F01982 		bne	.L404
 939              	.L398:
 940 00fc 9DF85120 		ldrb	r2, [sp, #81]	@ zero_extendqisi2
 941 0100 5306     		lsls	r3, r2, #25
 942 0102 67D4     		bmi	.L474
 943              	.L401:
 944 0104 3968     		ldr	r1, [r7]
 945 0106 0DA8     		add	r0, sp, #52
 946 0108 FFF7FEFF 		bl	_ZL6printiR10SStringBufi
 947 010c 0028     		cmp	r0, #0
 948 010e 44D1     		bne	.L355
 949              	.L339:
 950 0110 0D9B     		ldr	r3, [sp, #52]
 951 0112 0022     		movs	r2, #0
 952 0114 1A70     		strb	r2, [r3]
 953 0116 1098     		ldr	r0, [sp, #64]
 954 0118 1FB0     		add	sp, sp, #124
 955              		@ sp needed
 956 011a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 957              	.L477:
 958 011e 481C     		adds	r0, r1, #1
 959 0120 0D90     		str	r0, [sp, #52]
 960 0122 0C70     		strb	r4, [r1]
 961 0124 1099     		ldr	r1, [sp, #64]
 962 0126 0131     		adds	r1, r1, #1
 963 0128 9046     		mov	r8, r2
 964 012a 1091     		str	r1, [sp, #64]
 965 012c 78E7     		b	.L333
 966              	.L345:
 967 012e A4F13000 		sub	r0, r4, #48
 968 0132 C1B2     		uxtb	r1, r0
 969 0134 0929     		cmp	r1, #9
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 18


 970 0136 00F2ED81 		bhi	.L405
 971 013a 0021     		movs	r1, #0
 972              	.L347:
 973 013c 12F8014B 		ldrb	r4, [r2], #1	@ zero_extendqisi2
 974 0140 01EB8101 		add	r1, r1, r1, lsl #2
 975 0144 00EB4101 		add	r1, r0, r1, lsl #1
 976 0148 A4F13000 		sub	r0, r4, #48
 977 014c C3B2     		uxtb	r3, r0
 978 014e 092B     		cmp	r3, #9
 979 0150 F4D9     		bls	.L347
 980 0152 2E2C     		cmp	r4, #46
 981 0154 1291     		str	r1, [sp, #72]
 982 0156 9046     		mov	r8, r2
 983 0158 B0D1     		bne	.L348
 984              	.L478:
 985 015a 98F80040 		ldrb	r4, [r8]	@ zero_extendqisi2
 986 015e 2A2C     		cmp	r4, #42
 987 0160 40F0B281 		bne	.L349
 988 0164 3E68     		ldr	r6, [r7]
 989 0166 98F80140 		ldrb	r4, [r8, #1]	@ zero_extendqisi2
 990 016a 1396     		str	r6, [sp, #76]
 991 016c 0437     		adds	r7, r7, #4
 992 016e 08F10208 		add	r8, r8, #2
 993 0172 002E     		cmp	r6, #0
 994 0174 A2D0     		beq	.L348
 995              	.L475:
 996 0176 732C     		cmp	r4, #115
 997 0178 A5D1     		bne	.L353
 998              	.L479:
 999 017a 9DF85120 		ldrb	r2, [sp, #81]	@ zero_extendqisi2
 1000 017e 3968     		ldr	r1, [r7]
 1001 0180 B548     		ldr	r0, .L494+24
 1002 0182 42F01002 		orr	r2, r2, #16
 1003 0186 0029     		cmp	r1, #0
 1004 0188 08BF     		it	eq
 1005 018a 0146     		moveq	r1, r0
 1006 018c 0DA8     		add	r0, sp, #52
 1007 018e 8DF85120 		strb	r2, [sp, #81]
 1008 0192 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 1009 0196 0028     		cmp	r0, #0
 1010 0198 BAD0     		beq	.L339
 1011              	.L355:
 1012 019a 0437     		adds	r7, r7, #4
 1013 019c 40E7     		b	.L333
 1014              	.L480:
 1015 019e 3978     		ldrb	r1, [r7]	@ zero_extendqisi2
 1016 01a0 0D9A     		ldr	r2, [sp, #52]
 1017 01a2 19B1     		cbz	r1, .L358
 1018 01a4 0F98     		ldr	r0, [sp, #60]
 1019 01a6 9042     		cmp	r0, r2
 1020 01a8 00F20082 		bhi	.L484
 1021              	.L358:
 1022 01ac 0023     		movs	r3, #0
 1023 01ae 1370     		strb	r3, [r2]
 1024 01b0 59E7     		b	.L337
 1025              	.L483:
 1026 01b2 AA49     		ldr	r1, .L494+28
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 19


 1027 01b4 21FA02F2 		lsr	r2, r1, r2
 1028 01b8 D107     		lsls	r1, r2, #31
 1029 01ba 40F1B681 		bpl	.L396
 1030 01be 753C     		subs	r4, r4, #117
 1031 01c0 9DF85120 		ldrb	r2, [sp, #81]	@ zero_extendqisi2
 1032 01c4 18BF     		it	ne
 1033 01c6 0124     		movne	r4, #1
 1034 01c8 64F38202 		bfi	r2, r4, #2, #1
 1035 01cc 8DF85120 		strb	r2, [sp, #81]
 1036 01d0 5206     		lsls	r2, r2, #25
 1037 01d2 97D5     		bpl	.L401
 1038              	.L474:
 1039 01d4 FB1D     		adds	r3, r7, #7
 1040 01d6 23F00707 		bic	r7, r3, #7
 1041 01da D7E90023 		ldrd	r2, [r7]
 1042 01de 0DA8     		add	r0, sp, #52
 1043 01e0 FFF7FEFF 		bl	_ZL7printllR10SStringBufx
 1044 01e4 0028     		cmp	r0, #0
 1045 01e6 93D0     		beq	.L339
 1046 01e8 0837     		adds	r7, r7, #8
 1047 01ea 19E7     		b	.L333
 1048              	.L482:
 1049 01ec FB1D     		adds	r3, r7, #7
 1050 01ee 23F00703 		bic	r3, r3, #7
 1051 01f2 93ED007B 		vldr.64	d7, [r3]
 1052 01f6 51EC170B 		vmov	r0, r1, d7
 1053 01fa 0693     		str	r3, [sp, #24]
 1054 01fc 17EE102A 		vmov	r2, s14	@ int
 1055 0200 0B46     		mov	r3, r1
 1056 0202 8DED047B 		vstr.64	d7, [sp, #16]
 1057 0206 FFF7FEFF 		bl	__aeabi_dcmpun
 1058 020a 0028     		cmp	r0, #0
 1059 020c 40F00282 		bne	.L485
 1060 0210 DDE90412 		ldrd	r1, [sp, #16]
 1061 0214 22F00043 		bic	r3, r2, #-2147483648
 1062 0218 0291     		str	r1, [sp, #8]
 1063 021a 0393     		str	r3, [sp, #12]
 1064 021c DDE9029A 		ldrd	r9, [sp, #8]
 1065 0220 4FF0FF32 		mov	r2, #-1
 1066 0224 4846     		mov	r0, r9
 1067 0226 5146     		mov	r1, r10
 1068 0228 8D4B     		ldr	r3, .L494+32
 1069 022a FFF7FEFF 		bl	__aeabi_dcmpun
 1070 022e 48B9     		cbnz	r0, .L365
 1071 0230 4FF0FF32 		mov	r2, #-1
 1072 0234 8A4B     		ldr	r3, .L494+32
 1073 0236 4846     		mov	r0, r9
 1074 0238 5146     		mov	r1, r10
 1075 023a FFF7FEFF 		bl	__aeabi_dcmple
 1076 023e 0028     		cmp	r0, #0
 1077 0240 00F0AC81 		beq	.L486
 1078              	.L365:
 1079 0244 0022     		movs	r2, #0
 1080 0246 874B     		ldr	r3, .L494+36
 1081 0248 DDE90201 		ldrd	r0, [sp, #8]
 1082 024c FFF7FEFF 		bl	__aeabi_dcmpgt
 1083 0250 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 20


 1084 0252 00F09180 		beq	.L366
 1085 0256 BBF1460F 		cmp	fp, #70
 1086 025a 00F08980 		beq	.L487
 1087 025e 4FF0450B 		mov	fp, #69
 1088              	.L368:
 1089 0262 77A3     		adr	r3, .L494
 1090 0264 D3E90023 		ldrd	r2, [r3]
 1091 0268 DDE90201 		ldrd	r0, [sp, #8]
 1092 026c FFF7FEFF 		bl	__aeabi_dcmpgt
 1093 0270 0028     		cmp	r0, #0
 1094 0272 00F0C781 		beq	.L488
 1095 0276 2746     		mov	r7, r4
 1096 0278 DDE90245 		ldrd	r4, [sp, #8]
 1097 027c 4FF0000A 		mov	r10, #0
 1098              	.L370:
 1099 0280 2046     		mov	r0, r4
 1100 0282 2946     		mov	r1, r5
 1101 0284 6EA3     		adr	r3, .L494
 1102 0286 D3E90023 		ldrd	r2, [r3]
 1103 028a FFF7FEFF 		bl	__aeabi_ddiv
 1104 028e 6CA3     		adr	r3, .L494
 1105 0290 D3E90023 		ldrd	r2, [r3]
 1106 0294 0446     		mov	r4, r0
 1107 0296 0D46     		mov	r5, r1
 1108 0298 0AF1050A 		add	r10, r10, #5
 1109 029c FFF7FEFF 		bl	__aeabi_dcmpgt
 1110 02a0 0028     		cmp	r0, #0
 1111 02a2 EDD1     		bne	.L370
 1112 02a4 CDE90245 		strd	r4, [sp, #8]
 1113 02a8 3C46     		mov	r4, r7
 1114              	.L373:
 1115 02aa 0022     		movs	r2, #0
 1116 02ac 6E4B     		ldr	r3, .L494+40
 1117 02ae DDE90201 		ldrd	r0, [sp, #8]
 1118 02b2 FFF7FEFF 		bl	__aeabi_dcmpgt
 1119 02b6 A8B1     		cbz	r0, .L372
 1120 02b8 2746     		mov	r7, r4
 1121 02ba DDE90245 		ldrd	r4, [sp, #8]
 1122              	.L371:
 1123 02be 2046     		mov	r0, r4
 1124 02c0 2946     		mov	r1, r5
 1125 02c2 0022     		movs	r2, #0
 1126 02c4 684B     		ldr	r3, .L494+40
 1127 02c6 FFF7FEFF 		bl	__aeabi_ddiv
 1128 02ca 0022     		movs	r2, #0
 1129 02cc 664B     		ldr	r3, .L494+40
 1130 02ce 0446     		mov	r4, r0
 1131 02d0 0D46     		mov	r5, r1
 1132 02d2 0AF1010A 		add	r10, r10, #1
 1133 02d6 FFF7FEFF 		bl	__aeabi_dcmpgt
 1134 02da 0028     		cmp	r0, #0
 1135 02dc EFD1     		bne	.L371
 1136 02de CDE90245 		strd	r4, [sp, #8]
 1137 02e2 3C46     		mov	r4, r7
 1138              	.L372:
 1139 02e4 0022     		movs	r2, #0
 1140 02e6 0023     		movs	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 21


 1141 02e8 DDE90201 		ldrd	r0, [sp, #8]
 1142 02ec FFF7FEFF 		bl	__aeabi_dcmpeq
 1143 02f0 0028     		cmp	r0, #0
 1144 02f2 47D1     		bne	.L369
 1145 02f4 54A3     		adr	r3, .L494+8
 1146 02f6 D3E90023 		ldrd	r2, [r3]
 1147 02fa DDE90201 		ldrd	r0, [sp, #8]
 1148 02fe FFF7FEFF 		bl	__aeabi_dcmplt
 1149 0302 B8B1     		cbz	r0, .L377
 1150 0304 2746     		mov	r7, r4
 1151 0306 DDE90245 		ldrd	r4, [sp, #8]
 1152              	.L375:
 1153 030a 2046     		mov	r0, r4
 1154 030c 2946     		mov	r1, r5
 1155 030e 4CA3     		adr	r3, .L494
 1156 0310 D3E90023 		ldrd	r2, [r3]
 1157 0314 FFF7FEFF 		bl	__aeabi_dmul
 1158 0318 4BA3     		adr	r3, .L494+8
 1159 031a D3E90023 		ldrd	r2, [r3]
 1160 031e 0446     		mov	r4, r0
 1161 0320 0D46     		mov	r5, r1
 1162 0322 AAF1050A 		sub	r10, r10, #5
 1163 0326 FFF7FEFF 		bl	__aeabi_dcmplt
 1164 032a 0028     		cmp	r0, #0
 1165 032c EDD1     		bne	.L375
 1166 032e CDE90245 		strd	r4, [sp, #8]
 1167 0332 3C46     		mov	r4, r7
 1168              	.L377:
 1169 0334 0022     		movs	r2, #0
 1170 0336 4D4B     		ldr	r3, .L494+44
 1171 0338 DDE90201 		ldrd	r0, [sp, #8]
 1172 033c FFF7FEFF 		bl	__aeabi_dcmplt
 1173 0340 00B3     		cbz	r0, .L369
 1174 0342 2746     		mov	r7, r4
 1175 0344 DDE90245 		ldrd	r4, [sp, #8]
 1176              	.L376:
 1177 0348 2046     		mov	r0, r4
 1178 034a 2946     		mov	r1, r5
 1179 034c 0022     		movs	r2, #0
 1180 034e 464B     		ldr	r3, .L494+40
 1181 0350 FFF7FEFF 		bl	__aeabi_dmul
 1182 0354 0022     		movs	r2, #0
 1183 0356 454B     		ldr	r3, .L494+44
 1184 0358 0446     		mov	r4, r0
 1185 035a 0D46     		mov	r5, r1
 1186 035c 0AF1FF3A 		add	r10, r10, #-1
 1187 0360 FFF7FEFF 		bl	__aeabi_dcmplt
 1188 0364 0028     		cmp	r0, #0
 1189 0366 EFD1     		bne	.L376
 1190 0368 CDE90245 		strd	r4, [sp, #8]
 1191 036c 3C46     		mov	r4, r7
 1192 036e 09E0     		b	.L369
 1193              	.L487:
 1194 0370 013C     		subs	r4, r4, #1
 1195 0372 E4B2     		uxtb	r4, r4
 1196 0374 04F0DF0B 		and	fp, r4, #223
 1197              	.L366:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 22


 1198 0378 BBF1450F 		cmp	fp, #69
 1199 037c 3FF471AF 		beq	.L368
 1200 0380 4FF0000A 		mov	r10, #0
 1201              	.L369:
 1202 0384 002E     		cmp	r6, #0
 1203 0386 01DA     		bge	.L403
 1204 0388 0626     		movs	r6, #6
 1205 038a 1396     		str	r6, [sp, #76]
 1206              	.L403:
 1207 038c 30A3     		adr	r3, .L494+16
 1208 038e D3E90023 		ldrd	r2, [r3]
 1209 0392 DDE90201 		ldrd	r0, [sp, #8]
 1210 0396 FFF7FEFF 		bl	__aeabi_dcmplt
 1211 039a 0028     		cmp	r0, #0
 1212 039c 00F03481 		beq	.L489
 1213 03a0 0794     		str	r4, [sp, #28]
 1214 03a2 4FF00A09 		mov	r9, #10
 1215 03a6 3446     		mov	r4, r6
 1216 03a8 0025     		movs	r5, #0
 1217 03aa DDE90267 		ldrd	r6, [sp, #8]
 1218 03ae 02E0     		b	.L378
 1219              	.L381:
 1220 03b0 FFF7FEFF 		bl	__aeabi_dcmplt
 1221 03b4 88B1     		cbz	r0, .L472
 1222              	.L378:
 1223 03b6 3046     		mov	r0, r6
 1224 03b8 3946     		mov	r1, r7
 1225 03ba 0022     		movs	r2, #0
 1226 03bc 2A4B     		ldr	r3, .L494+40
 1227 03be FFF7FEFF 		bl	__aeabi_dmul
 1228 03c2 0135     		adds	r5, r5, #1
 1229 03c4 09EB8909 		add	r9, r9, r9, lsl #2
 1230 03c8 A542     		cmp	r5, r4
 1231 03ca 0646     		mov	r6, r0
 1232 03cc 0F46     		mov	r7, r1
 1233 03ce 20A3     		adr	r3, .L494+16
 1234 03d0 D3E90023 		ldrd	r2, [r3]
 1235 03d4 4FEA4909 		lsl	r9, r9, #1
 1236 03d8 EADB     		blt	.L381
 1237              	.L472:
 1238 03da CDE90267 		strd	r6, [sp, #8]
 1239 03de 079C     		ldr	r4, [sp, #28]
 1240 03e0 47EC106B 		vmov	d0, r6, r7
 1241              	.L379:
 1242 03e4 0023     		movs	r3, #0
 1243 03e6 8DF87630 		strb	r3, [sp, #118]
 1244 03ea FFF7FEFF 		bl	llrint
 1245 03ee BBF1450F 		cmp	fp, #69
 1246 03f2 0646     		mov	r6, r0
 1247 03f4 0F46     		mov	r7, r1
 1248 03f6 00F0A580 		beq	.L490
 1249 03fa 0DF17609 		add	r9, sp, #118
 1250              	.L382:
 1251 03fe AB46     		mov	fp, r5
 1252 0400 0A24     		movs	r4, #10
 1253 0402 0025     		movs	r5, #0
 1254              	.L387:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 23


 1255 0404 3246     		mov	r2, r6
 1256 0406 3B46     		mov	r3, r7
 1257 0408 08A8     		add	r0, sp, #32
 1258 040a 09F1FF3A 		add	r10, r9, #-1
 1259 040e BBF1000F 		cmp	fp, #0
 1260 0412 00F0D980 		beq	.L491
 1261 0416 CDE90045 		strd	r4, [sp]
 1262 041a FFF7FEFF 		bl	lldiv
 1263 041e 9DF82830 		ldrb	r3, [sp, #40]	@ zero_extendqisi2
 1264 0422 DDE90867 		ldrd	r6, [sp, #32]
 1265 0426 3033     		adds	r3, r3, #48
 1266 0428 09F8013C 		strb	r3, [r9, #-1]
 1267 042c 56EA0703 		orrs	r3, r6, r7
 1268 0430 1ED0     		beq	.L467
 1269 0432 0BF1FF3B 		add	fp, fp, #-1
 1270              	.L390:
 1271 0436 D146     		mov	r9, r10
 1272 0438 E4E7     		b	.L387
 1273              	.L495:
 1274 043a 00BFAFF3 		.align	3
 1274      0080
 1275              	.L494:
 1276 0440 00000000 		.word	0
 1277 0444 006AF840 		.word	1090021888
 1278 0448 00000080 		.word	-2147483648
 1279 044c B5F8E43E 		.word	1055193269
 1280 0450 9A999999 		.word	-1717986918
 1281 0454 9999A943 		.word	1135188377
 1282 0458 00000000 		.word	.LC1
 1283 045c 21000200 		.word	131105
 1284 0460 FFFFEF7F 		.word	2146435071
 1285 0464 0000E043 		.word	1138753536
 1286 0468 00002440 		.word	1076101120
 1287 046c 0000F03F 		.word	1072693248
 1288              	.L467:
 1289 0470 BBF1010B 		subs	fp, fp, #1
 1290 0474 DFD5     		bpl	.L390
 1291              	.L389:
 1292 0476 DDE90401 		ldrd	r0, [sp, #16]
 1293 047a 0022     		movs	r2, #0
 1294 047c 0023     		movs	r3, #0
 1295 047e FFF7FEFF 		bl	__aeabi_dcmplt
 1296 0482 B8B1     		cbz	r0, .L391
 1297 0484 129B     		ldr	r3, [sp, #72]
 1298 0486 002B     		cmp	r3, #0
 1299 0488 00F09880 		beq	.L393
 1300 048c 9DF85130 		ldrb	r3, [sp, #81]	@ zero_extendqisi2
 1301 0490 D807     		lsls	r0, r3, #31
 1302 0492 40F19380 		bpl	.L393
 1303 0496 0D9B     		ldr	r3, [sp, #52]
 1304 0498 0F9A     		ldr	r2, [sp, #60]
 1305 049a 9342     		cmp	r3, r2
 1306 049c 80F0C280 		bcs	.L394
 1307 04a0 591C     		adds	r1, r3, #1
 1308 04a2 2D22     		movs	r2, #45
 1309 04a4 0D91     		str	r1, [sp, #52]
 1310 04a6 1A70     		strb	r2, [r3]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 24


 1311 04a8 109A     		ldr	r2, [sp, #64]
 1312 04aa 129B     		ldr	r3, [sp, #72]
 1313 04ac 0132     		adds	r2, r2, #1
 1314 04ae 013B     		subs	r3, r3, #1
 1315 04b0 1092     		str	r2, [sp, #64]
 1316 04b2 1293     		str	r3, [sp, #72]
 1317              	.L391:
 1318 04b4 5146     		mov	r1, r10
 1319 04b6 0DA8     		add	r0, sp, #52
 1320 04b8 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 1321 04bc 0028     		cmp	r0, #0
 1322 04be 3FF427AE 		beq	.L339
 1323              	.L493:
 1324 04c2 069F     		ldr	r7, [sp, #24]
 1325 04c4 0837     		adds	r7, r7, #8
 1326 04c6 ABE5     		b	.L333
 1327              	.L349:
 1328 04c8 A4F13000 		sub	r0, r4, #48
 1329 04cc C2B2     		uxtb	r2, r0
 1330 04ce 092A     		cmp	r2, #9
 1331 04d0 08F10108 		add	r8, r8, #1
 1332 04d4 3FF6F2AD 		bhi	.L348
 1333 04d8 0026     		movs	r6, #0
 1334              	.L351:
 1335 04da 18F8014B 		ldrb	r4, [r8], #1	@ zero_extendqisi2
 1336 04de 06EB8606 		add	r6, r6, r6, lsl #2
 1337 04e2 00EB4606 		add	r6, r0, r6, lsl #1
 1338 04e6 A4F13000 		sub	r0, r4, #48
 1339 04ea C3B2     		uxtb	r3, r0
 1340 04ec 092B     		cmp	r3, #9
 1341 04ee F4D9     		bls	.L351
 1342 04f0 1396     		str	r6, [sp, #76]
 1343 04f2 002E     		cmp	r6, #0
 1344 04f4 7FF43FAE 		bne	.L475
 1345 04f8 E0E5     		b	.L348
 1346              	.L481:
 1347 04fa 98F80040 		ldrb	r4, [r8]	@ zero_extendqisi2
 1348 04fe 9DF85120 		ldrb	r2, [sp, #81]	@ zero_extendqisi2
 1349 0502 6C2C     		cmp	r4, #108
 1350 0504 08D0     		beq	.L492
 1351 0506 42F02002 		orr	r2, r2, #32
 1352 050a 08F10108 		add	r8, r8, #1
 1353 050e 8DF85120 		strb	r2, [sp, #81]
 1354 0512 DDE5     		b	.L359
 1355              	.L405:
 1356 0514 9046     		mov	r8, r2
 1357 0516 CFE5     		b	.L346
 1358              	.L492:
 1359 0518 42F04002 		orr	r2, r2, #64
 1360 051c 98F80140 		ldrb	r4, [r8, #1]	@ zero_extendqisi2
 1361 0520 8DF85120 		strb	r2, [sp, #81]
 1362 0524 08F10208 		add	r8, r8, #2
 1363 0528 D2E5     		b	.L359
 1364              	.L396:
 1365 052a 1022     		movs	r2, #16
 1366 052c 1192     		str	r2, [sp, #68]
 1367              	.L404:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 25


 1368 052e 582C     		cmp	r4, #88
 1369 0530 7BD0     		beq	.L399
 1370 0532 702C     		cmp	r4, #112
 1371 0534 3FF4E2AD 		beq	.L398
 1372 0538 6F2C     		cmp	r4, #111
 1373 053a 7FF471AD 		bne	.L333
 1374 053e 0822     		movs	r2, #8
 1375 0540 1192     		str	r2, [sp, #68]
 1376 0542 DBE5     		b	.L398
 1377              	.L490:
 1378 0544 4846     		mov	r0, r9
 1379 0546 FFF7FEFF 		bl	__aeabi_i2d
 1380 054a DDE90223 		ldrd	r2, [sp, #8]
 1381 054e FFF7FEFF 		bl	__aeabi_dcmple
 1382 0552 08B1     		cbz	r0, .L383
 1383 0554 0AF1010A 		add	r10, r10, #1
 1384              	.L383:
 1385 0558 8AEAEA73 		eor	r3, r10, r10, asr #31
 1386 055c 3549     		ldr	r1, .L496
 1387 055e A3EBEA73 		sub	r3, r3, r10, asr #31
 1388 0562 0DF17609 		add	r9, sp, #118
 1389              	.L385:
 1390 0566 81FB0320 		smull	r2, r0, r1, r3
 1391 056a DA17     		asrs	r2, r3, #31
 1392 056c C2EBA002 		rsb	r2, r2, r0, asr #2
 1393 0570 02EB8200 		add	r0, r2, r2, lsl #2
 1394 0574 A3EB4003 		sub	r3, r3, r0, lsl #1
 1395 0578 3033     		adds	r3, r3, #48
 1396 057a 09F8013D 		strb	r3, [r9, #-1]!
 1397 057e 1346     		mov	r3, r2
 1398 0580 002A     		cmp	r2, #0
 1399 0582 F0D1     		bne	.L385
 1400 0584 BAF1000F 		cmp	r10, #0
 1401 0588 ACBF     		ite	ge
 1402 058a 2B23     		movge	r3, #43
 1403 058c 2D23     		movlt	r3, #45
 1404 058e 09F8024C 		strb	r4, [r9, #-2]
 1405 0592 09F8013C 		strb	r3, [r9, #-1]
 1406 0596 A9F10209 		sub	r9, r9, #2
 1407 059a 30E7     		b	.L382
 1408              	.L486:
 1409 059c 2649     		ldr	r1, .L496+4
 1410 059e 0DA8     		add	r0, sp, #52
 1411 05a0 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 1412 05a4 0028     		cmp	r0, #0
 1413 05a6 3FF4B3AD 		beq	.L339
 1414 05aa 8AE7     		b	.L493
 1415              	.L484:
 1416 05ac 501C     		adds	r0, r2, #1
 1417 05ae 0D90     		str	r0, [sp, #52]
 1418 05b0 1170     		strb	r1, [r2]
 1419 05b2 109A     		ldr	r2, [sp, #64]
 1420 05b4 0132     		adds	r2, r2, #1
 1421 05b6 0437     		adds	r7, r7, #4
 1422 05b8 1092     		str	r2, [sp, #64]
 1423 05ba 31E5     		b	.L333
 1424              	.L393:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 26


 1425 05bc 2D23     		movs	r3, #45
 1426 05be 09F8023C 		strb	r3, [r9, #-2]
 1427 05c2 A9F1020A 		sub	r10, r9, #2
 1428 05c6 75E7     		b	.L391
 1429              	.L491:
 1430 05c8 4FF02E03 		mov	r3, #46
 1431 05cc 09F8013C 		strb	r3, [r9, #-1]
 1432 05d0 3B46     		mov	r3, r7
 1433 05d2 CDE90045 		strd	r4, [sp]
 1434 05d6 FFF7FEFF 		bl	lldiv
 1435 05da DDE90867 		ldrd	r6, [sp, #32]
 1436 05de 9DF82830 		ldrb	r3, [sp, #40]	@ zero_extendqisi2
 1437 05e2 56EA0702 		orrs	r2, r6, r7
 1438 05e6 03F13003 		add	r3, r3, #48
 1439 05ea 09F8023C 		strb	r3, [r9, #-2]
 1440 05ee A9F10203 		sub	r3, r9, #2
 1441 05f2 04D0     		beq	.L413
 1442 05f4 9A46     		mov	r10, r3
 1443 05f6 4FF0FF3B 		mov	fp, #-1
 1444 05fa D146     		mov	r9, r10
 1445 05fc 02E7     		b	.L387
 1446              	.L413:
 1447 05fe D146     		mov	r9, r10
 1448 0600 9A46     		mov	r10, r3
 1449 0602 38E7     		b	.L389
 1450              	.L488:
 1451 0604 8246     		mov	r10, r0
 1452 0606 50E6     		b	.L373
 1453              	.L489:
 1454 0608 0546     		mov	r5, r0
 1455 060a 4FF00A09 		mov	r9, #10
 1456 060e 9DED020B 		vldr.64	d0, [sp, #8]
 1457 0612 E7E6     		b	.L379
 1458              	.L485:
 1459 0614 0949     		ldr	r1, .L496+8
 1460 0616 0DA8     		add	r0, sp, #52
 1461 0618 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 1462 061c 0028     		cmp	r0, #0
 1463 061e 3FF477AD 		beq	.L339
 1464 0622 4EE7     		b	.L493
 1465              	.L394:
 1466 0624 0022     		movs	r2, #0
 1467 0626 1A70     		strb	r2, [r3]
 1468 0628 72E5     		b	.L339
 1469              	.L399:
 1470 062a 4122     		movs	r2, #65
 1471 062c 8DF85020 		strb	r2, [sp, #80]
 1472 0630 64E5     		b	.L398
 1473              	.L497:
 1474 0632 00BF     		.align	2
 1475              	.L496:
 1476 0634 67666666 		.word	1717986919
 1477 0638 0C000000 		.word	.LC3
 1478 063c 08000000 		.word	.LC2
 1479              		.size	_Z13SafeVsnprintfPcjPKcSt9__va_list, .-_Z13SafeVsnprintfPcjPKcSt9__va_list
 1480              		.section	.text._Z12SafeSnprintfPcjPKcz,"ax",%progbits
 1481              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 27


 1482              		.p2align 2,,3
 1483              		.global	_Z12SafeSnprintfPcjPKcz
 1484              		.syntax unified
 1485              		.thumb
 1486              		.thumb_func
 1487              		.fpu fpv4-sp-d16
 1488              		.type	_Z12SafeSnprintfPcjPKcz, %function
 1489              	_Z12SafeSnprintfPcjPKcz:
 1490              		@ args = 4, pretend = 8, frame = 120
 1491              		@ frame_needed = 0, uses_anonymous_args = 1
 1492 0000 0CB4     		push	{r2, r3}
 1493 0002 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1494 0006 0139     		subs	r1, r1, #1
 1495 0008 A1B0     		sub	sp, sp, #132
 1496 000a 0023     		movs	r3, #0
 1497 000c 2AAD     		add	r5, sp, #168
 1498 000e 0144     		add	r1, r1, r0
 1499 0010 CDE91001 		strd	r0, r1, [sp, #64]
 1500 0014 CDE91233 		strd	r3, r3, [sp, #72]
 1501 0018 CDE91533 		strd	r3, r3, [sp, #84]
 1502 001c 55F8048B 		ldr	r8, [r5], #4
 1503 0020 0F90     		str	r0, [sp, #60]
 1504 0022 0995     		str	r5, [sp, #36]
 1505 0024 1493     		str	r3, [sp, #80]
 1506              	.L499:
 1507 0026 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 1508 002a 252B     		cmp	r3, #37
 1509 002c 10D0     		beq	.L500
 1510              	.L643:
 1511 002e 0F9A     		ldr	r2, [sp, #60]
 1512 0030 D3B1     		cbz	r3, .L507
 1513 0032 1199     		ldr	r1, [sp, #68]
 1514 0034 9142     		cmp	r1, r2
 1515 0036 17D9     		bls	.L507
 1516 0038 511C     		adds	r1, r2, #1
 1517 003a 0F91     		str	r1, [sp, #60]
 1518 003c 1370     		strb	r3, [r2]
 1519 003e 129B     		ldr	r3, [sp, #72]
 1520 0040 08F10108 		add	r8, r8, #1
 1521 0044 0133     		adds	r3, r3, #1
 1522 0046 1293     		str	r3, [sp, #72]
 1523 0048 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 1524 004c 252B     		cmp	r3, #37
 1525 004e EED1     		bne	.L643
 1526              	.L500:
 1527 0050 98F80140 		ldrb	r4, [r8, #1]	@ zero_extendqisi2
 1528 0054 08F10203 		add	r3, r8, #2
 1529 0058 002C     		cmp	r4, #0
 1530 005a 5ED0     		beq	.L505
 1531 005c 252C     		cmp	r4, #37
 1532 005e 0BD1     		bne	.L506
 1533 0060 0F9A     		ldr	r2, [sp, #60]
 1534 0062 1199     		ldr	r1, [sp, #68]
 1535 0064 8A42     		cmp	r2, r1
 1536 0066 5CD3     		bcc	.L644
 1537              	.L507:
 1538 0068 0023     		movs	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 28


 1539 006a 1370     		strb	r3, [r2]
 1540              	.L503:
 1541 006c 1298     		ldr	r0, [sp, #72]
 1542 006e 21B0     		add	sp, sp, #132
 1543              		@ sp needed
 1544 0070 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1545 0074 02B0     		add	sp, sp, #8
 1546 0076 7047     		bx	lr
 1547              	.L506:
 1548 0078 0022     		movs	r2, #0
 1549 007a 2D2C     		cmp	r4, #45
 1550 007c CDE91322 		strd	r2, r2, [sp, #76]
 1551 0080 CDE91522 		strd	r2, r2, [sp, #84]
 1552 0084 09D1     		bne	.L508
 1553 0086 9DF85930 		ldrb	r3, [sp, #89]	@ zero_extendqisi2
 1554 008a 98F80240 		ldrb	r4, [r8, #2]	@ zero_extendqisi2
 1555 008e 43F00203 		orr	r3, r3, #2
 1556 0092 8DF85930 		strb	r3, [sp, #89]
 1557 0096 08F10303 		add	r3, r8, #3
 1558              	.L508:
 1559 009a 302C     		cmp	r4, #48
 1560 009c 09D1     		bne	.L509
 1561              	.L510:
 1562 009e 13F8014B 		ldrb	r4, [r3], #1	@ zero_extendqisi2
 1563 00a2 302C     		cmp	r4, #48
 1564 00a4 FBD0     		beq	.L510
 1565 00a6 9DF85920 		ldrb	r2, [sp, #89]	@ zero_extendqisi2
 1566 00aa 42F00102 		orr	r2, r2, #1
 1567 00ae 8DF85920 		strb	r2, [sp, #89]
 1568              	.L509:
 1569 00b2 2A2C     		cmp	r4, #42
 1570 00b4 3DD1     		bne	.L511
 1571 00b6 2A68     		ldr	r2, [r5]
 1572 00b8 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 1573 00ba 1492     		str	r2, [sp, #80]
 1574 00bc 0435     		adds	r5, r5, #4
 1575 00be 03F10108 		add	r8, r3, #1
 1576              	.L512:
 1577 00c2 2E2C     		cmp	r4, #46
 1578 00c4 4BD0     		beq	.L645
 1579              	.L514:
 1580 00c6 4FF0FF36 		mov	r6, #-1
 1581 00ca 732C     		cmp	r4, #115
 1582 00cc 1596     		str	r6, [sp, #84]
 1583 00ce 56D0     		beq	.L646
 1584              	.L519:
 1585 00d0 632C     		cmp	r4, #99
 1586 00d2 66D0     		beq	.L647
 1587 00d4 6C2C     		cmp	r4, #108
 1588 00d6 00F01482 		beq	.L648
 1589              	.L525:
 1590 00da 04F0DF0B 		and	fp, r4, #223
 1591 00de ABF14503 		sub	r3, fp, #69
 1592 00e2 012B     		cmp	r3, #1
 1593 00e4 40F28980 		bls	.L649
 1594 00e8 A4F16403 		sub	r3, r4, #100
 1595 00ec DBB2     		uxtb	r3, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 29


 1596 00ee 0A21     		movs	r1, #10
 1597 00f0 6122     		movs	r2, #97
 1598 00f2 112B     		cmp	r3, #17
 1599 00f4 1391     		str	r1, [sp, #76]
 1600 00f6 8DF85820 		strb	r2, [sp, #88]
 1601 00fa 61D9     		bls	.L650
 1602 00fc 1023     		movs	r3, #16
 1603 00fe 782C     		cmp	r4, #120
 1604 0100 1393     		str	r3, [sp, #76]
 1605 0102 40F01882 		bne	.L570
 1606              	.L564:
 1607 0106 9DF85930 		ldrb	r3, [sp, #89]	@ zero_extendqisi2
 1608 010a 5B06     		lsls	r3, r3, #25
 1609 010c 69D4     		bmi	.L640
 1610              	.L567:
 1611 010e 2968     		ldr	r1, [r5]
 1612 0110 0FA8     		add	r0, sp, #60
 1613 0112 FFF7FEFF 		bl	_ZL6printiR10SStringBufi
 1614 0116 0028     		cmp	r0, #0
 1615 0118 41D1     		bne	.L521
 1616              	.L505:
 1617 011a 0F9B     		ldr	r3, [sp, #60]
 1618              	.L641:
 1619 011c 0022     		movs	r2, #0
 1620 011e 1A70     		strb	r2, [r3]
 1621 0120 A4E7     		b	.L503
 1622              	.L644:
 1623 0122 511C     		adds	r1, r2, #1
 1624 0124 0F91     		str	r1, [sp, #60]
 1625 0126 1470     		strb	r4, [r2]
 1626 0128 129A     		ldr	r2, [sp, #72]
 1627 012a 0132     		adds	r2, r2, #1
 1628 012c 9846     		mov	r8, r3
 1629 012e 1292     		str	r2, [sp, #72]
 1630 0130 79E7     		b	.L499
 1631              	.L511:
 1632 0132 A4F13001 		sub	r1, r4, #48
 1633 0136 CAB2     		uxtb	r2, r1
 1634 0138 092A     		cmp	r2, #9
 1635 013a 00F2EF81 		bhi	.L571
 1636 013e 0022     		movs	r2, #0
 1637              	.L513:
 1638 0140 13F8014B 		ldrb	r4, [r3], #1	@ zero_extendqisi2
 1639 0144 02EB8202 		add	r2, r2, r2, lsl #2
 1640 0148 01EB4202 		add	r2, r1, r2, lsl #1
 1641 014c A4F13001 		sub	r1, r4, #48
 1642 0150 C8B2     		uxtb	r0, r1
 1643 0152 0928     		cmp	r0, #9
 1644 0154 F4D9     		bls	.L513
 1645 0156 2E2C     		cmp	r4, #46
 1646 0158 1492     		str	r2, [sp, #80]
 1647 015a 9846     		mov	r8, r3
 1648 015c B3D1     		bne	.L514
 1649              	.L645:
 1650 015e 98F80040 		ldrb	r4, [r8]	@ zero_extendqisi2
 1651 0162 2A2C     		cmp	r4, #42
 1652 0164 40F0B481 		bne	.L515
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 30


 1653 0168 2E68     		ldr	r6, [r5]
 1654 016a 98F80140 		ldrb	r4, [r8, #1]	@ zero_extendqisi2
 1655 016e 1596     		str	r6, [sp, #84]
 1656 0170 0435     		adds	r5, r5, #4
 1657 0172 08F10208 		add	r8, r8, #2
 1658 0176 002E     		cmp	r6, #0
 1659 0178 A5D0     		beq	.L514
 1660              	.L642:
 1661 017a 732C     		cmp	r4, #115
 1662 017c A8D1     		bne	.L519
 1663              	.L646:
 1664 017e 9DF85930 		ldrb	r3, [sp, #89]	@ zero_extendqisi2
 1665 0182 2968     		ldr	r1, [r5]
 1666 0184 B64A     		ldr	r2, .L660+24
 1667 0186 43F01003 		orr	r3, r3, #16
 1668 018a 0029     		cmp	r1, #0
 1669 018c 08BF     		it	eq
 1670 018e 1146     		moveq	r1, r2
 1671 0190 0FA8     		add	r0, sp, #60
 1672 0192 8DF85930 		strb	r3, [sp, #89]
 1673 0196 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 1674 019a 0028     		cmp	r0, #0
 1675 019c BDD0     		beq	.L505
 1676              	.L521:
 1677 019e 0435     		adds	r5, r5, #4
 1678 01a0 41E7     		b	.L499
 1679              	.L647:
 1680 01a2 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 1681 01a4 0F9B     		ldr	r3, [sp, #60]
 1682 01a6 002A     		cmp	r2, #0
 1683 01a8 B8D0     		beq	.L641
 1684 01aa 1199     		ldr	r1, [sp, #68]
 1685 01ac 9942     		cmp	r1, r3
 1686 01ae B5D9     		bls	.L641
 1687 01b0 591C     		adds	r1, r3, #1
 1688 01b2 0F91     		str	r1, [sp, #60]
 1689 01b4 1A70     		strb	r2, [r3]
 1690 01b6 129B     		ldr	r3, [sp, #72]
 1691 01b8 0133     		adds	r3, r3, #1
 1692 01ba 0435     		adds	r5, r5, #4
 1693 01bc 1293     		str	r3, [sp, #72]
 1694 01be 32E7     		b	.L499
 1695              	.L650:
 1696 01c0 A84A     		ldr	r2, .L660+28
 1697 01c2 22FA03F3 		lsr	r3, r2, r3
 1698 01c6 D907     		lsls	r1, r3, #31
 1699 01c8 40F1B381 		bpl	.L562
 1700 01cc 753C     		subs	r4, r4, #117
 1701 01ce 9DF85930 		ldrb	r3, [sp, #89]	@ zero_extendqisi2
 1702 01d2 18BF     		it	ne
 1703 01d4 0124     		movne	r4, #1
 1704 01d6 64F38203 		bfi	r3, r4, #2, #1
 1705 01da 5A06     		lsls	r2, r3, #25
 1706 01dc 8DF85930 		strb	r3, [sp, #89]
 1707 01e0 95D5     		bpl	.L567
 1708              	.L640:
 1709 01e2 0735     		adds	r5, r5, #7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 31


 1710 01e4 25F00705 		bic	r5, r5, #7
 1711 01e8 D5E90023 		ldrd	r2, [r5]
 1712 01ec 0FA8     		add	r0, sp, #60
 1713 01ee FFF7FEFF 		bl	_ZL7printllR10SStringBufx
 1714 01f2 0028     		cmp	r0, #0
 1715 01f4 91D0     		beq	.L505
 1716 01f6 0835     		adds	r5, r5, #8
 1717 01f8 15E7     		b	.L499
 1718              	.L649:
 1719 01fa 0735     		adds	r5, r5, #7
 1720 01fc 25F00703 		bic	r3, r5, #7
 1721 0200 93ED007B 		vldr.64	d7, [r3]
 1722 0204 51EC170B 		vmov	r0, r1, d7
 1723 0208 0693     		str	r3, [sp, #24]
 1724 020a 17EE102A 		vmov	r2, s14	@ int
 1725 020e 0B46     		mov	r3, r1
 1726 0210 8DED047B 		vstr.64	d7, [sp, #16]
 1727 0214 FFF7FEFF 		bl	__aeabi_dcmpun
 1728 0218 0028     		cmp	r0, #0
 1729 021a 40F0F781 		bne	.L651
 1730 021e DDE90412 		ldrd	r1, [sp, #16]
 1731 0222 22F00043 		bic	r3, r2, #-2147483648
 1732 0226 0291     		str	r1, [sp, #8]
 1733 0228 0393     		str	r3, [sp, #12]
 1734 022a DDE9029A 		ldrd	r9, [sp, #8]
 1735 022e 4FF0FF32 		mov	r2, #-1
 1736 0232 4846     		mov	r0, r9
 1737 0234 5146     		mov	r1, r10
 1738 0236 8C4B     		ldr	r3, .L660+32
 1739 0238 FFF7FEFF 		bl	__aeabi_dcmpun
 1740 023c 48B9     		cbnz	r0, .L531
 1741 023e 4FF0FF32 		mov	r2, #-1
 1742 0242 894B     		ldr	r3, .L660+32
 1743 0244 4846     		mov	r0, r9
 1744 0246 5146     		mov	r1, r10
 1745 0248 FFF7FEFF 		bl	__aeabi_dcmple
 1746 024c 0028     		cmp	r0, #0
 1747 024e 00F0A981 		beq	.L652
 1748              	.L531:
 1749 0252 0022     		movs	r2, #0
 1750 0254 854B     		ldr	r3, .L660+36
 1751 0256 DDE90201 		ldrd	r0, [sp, #8]
 1752 025a FFF7FEFF 		bl	__aeabi_dcmpgt
 1753 025e 0028     		cmp	r0, #0
 1754 0260 00F09180 		beq	.L532
 1755 0264 BBF1460F 		cmp	fp, #70
 1756 0268 00F08980 		beq	.L653
 1757 026c 4FF0450B 		mov	fp, #69
 1758              	.L534:
 1759 0270 75A3     		adr	r3, .L660
 1760 0272 D3E90023 		ldrd	r2, [r3]
 1761 0276 DDE90201 		ldrd	r0, [sp, #8]
 1762 027a FFF7FEFF 		bl	__aeabi_dcmpgt
 1763 027e 0028     		cmp	r0, #0
 1764 0280 00F0BC81 		beq	.L654
 1765 0284 2746     		mov	r7, r4
 1766 0286 DDE90245 		ldrd	r4, [sp, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 32


 1767 028a 4FF0000A 		mov	r10, #0
 1768              	.L536:
 1769 028e 2046     		mov	r0, r4
 1770 0290 2946     		mov	r1, r5
 1771 0292 6DA3     		adr	r3, .L660
 1772 0294 D3E90023 		ldrd	r2, [r3]
 1773 0298 FFF7FEFF 		bl	__aeabi_ddiv
 1774 029c 6AA3     		adr	r3, .L660
 1775 029e D3E90023 		ldrd	r2, [r3]
 1776 02a2 0446     		mov	r4, r0
 1777 02a4 0D46     		mov	r5, r1
 1778 02a6 0AF1050A 		add	r10, r10, #5
 1779 02aa FFF7FEFF 		bl	__aeabi_dcmpgt
 1780 02ae 0028     		cmp	r0, #0
 1781 02b0 EDD1     		bne	.L536
 1782 02b2 CDE90245 		strd	r4, [sp, #8]
 1783 02b6 3C46     		mov	r4, r7
 1784              	.L539:
 1785 02b8 0022     		movs	r2, #0
 1786 02ba 6D4B     		ldr	r3, .L660+40
 1787 02bc DDE90201 		ldrd	r0, [sp, #8]
 1788 02c0 FFF7FEFF 		bl	__aeabi_dcmpgt
 1789 02c4 A8B1     		cbz	r0, .L538
 1790 02c6 2746     		mov	r7, r4
 1791 02c8 DDE90245 		ldrd	r4, [sp, #8]
 1792              	.L537:
 1793 02cc 2046     		mov	r0, r4
 1794 02ce 2946     		mov	r1, r5
 1795 02d0 0022     		movs	r2, #0
 1796 02d2 674B     		ldr	r3, .L660+40
 1797 02d4 FFF7FEFF 		bl	__aeabi_ddiv
 1798 02d8 0022     		movs	r2, #0
 1799 02da 654B     		ldr	r3, .L660+40
 1800 02dc 0446     		mov	r4, r0
 1801 02de 0D46     		mov	r5, r1
 1802 02e0 0AF1010A 		add	r10, r10, #1
 1803 02e4 FFF7FEFF 		bl	__aeabi_dcmpgt
 1804 02e8 0028     		cmp	r0, #0
 1805 02ea EFD1     		bne	.L537
 1806 02ec CDE90245 		strd	r4, [sp, #8]
 1807 02f0 3C46     		mov	r4, r7
 1808              	.L538:
 1809 02f2 0022     		movs	r2, #0
 1810 02f4 0023     		movs	r3, #0
 1811 02f6 DDE90201 		ldrd	r0, [sp, #8]
 1812 02fa FFF7FEFF 		bl	__aeabi_dcmpeq
 1813 02fe 0028     		cmp	r0, #0
 1814 0300 47D1     		bne	.L535
 1815 0302 53A3     		adr	r3, .L660+8
 1816 0304 D3E90023 		ldrd	r2, [r3]
 1817 0308 DDE90201 		ldrd	r0, [sp, #8]
 1818 030c FFF7FEFF 		bl	__aeabi_dcmplt
 1819 0310 B8B1     		cbz	r0, .L543
 1820 0312 2746     		mov	r7, r4
 1821 0314 DDE90245 		ldrd	r4, [sp, #8]
 1822              	.L541:
 1823 0318 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 33


 1824 031a 2946     		mov	r1, r5
 1825 031c 4AA3     		adr	r3, .L660
 1826 031e D3E90023 		ldrd	r2, [r3]
 1827 0322 FFF7FEFF 		bl	__aeabi_dmul
 1828 0326 4AA3     		adr	r3, .L660+8
 1829 0328 D3E90023 		ldrd	r2, [r3]
 1830 032c 0446     		mov	r4, r0
 1831 032e 0D46     		mov	r5, r1
 1832 0330 AAF1050A 		sub	r10, r10, #5
 1833 0334 FFF7FEFF 		bl	__aeabi_dcmplt
 1834 0338 0028     		cmp	r0, #0
 1835 033a EDD1     		bne	.L541
 1836 033c CDE90245 		strd	r4, [sp, #8]
 1837 0340 3C46     		mov	r4, r7
 1838              	.L543:
 1839 0342 0022     		movs	r2, #0
 1840 0344 4B4B     		ldr	r3, .L660+44
 1841 0346 DDE90201 		ldrd	r0, [sp, #8]
 1842 034a FFF7FEFF 		bl	__aeabi_dcmplt
 1843 034e 00B3     		cbz	r0, .L535
 1844 0350 2746     		mov	r7, r4
 1845 0352 DDE90245 		ldrd	r4, [sp, #8]
 1846              	.L542:
 1847 0356 2046     		mov	r0, r4
 1848 0358 2946     		mov	r1, r5
 1849 035a 0022     		movs	r2, #0
 1850 035c 444B     		ldr	r3, .L660+40
 1851 035e FFF7FEFF 		bl	__aeabi_dmul
 1852 0362 0022     		movs	r2, #0
 1853 0364 434B     		ldr	r3, .L660+44
 1854 0366 0446     		mov	r4, r0
 1855 0368 0D46     		mov	r5, r1
 1856 036a 0AF1FF3A 		add	r10, r10, #-1
 1857 036e FFF7FEFF 		bl	__aeabi_dcmplt
 1858 0372 0028     		cmp	r0, #0
 1859 0374 EFD1     		bne	.L542
 1860 0376 CDE90245 		strd	r4, [sp, #8]
 1861 037a 3C46     		mov	r4, r7
 1862 037c 09E0     		b	.L535
 1863              	.L653:
 1864 037e 013C     		subs	r4, r4, #1
 1865 0380 E4B2     		uxtb	r4, r4
 1866 0382 04F0DF0B 		and	fp, r4, #223
 1867              	.L532:
 1868 0386 BBF1450F 		cmp	fp, #69
 1869 038a 3FF471AF 		beq	.L534
 1870 038e 4FF0000A 		mov	r10, #0
 1871              	.L535:
 1872 0392 002E     		cmp	r6, #0
 1873 0394 01DA     		bge	.L569
 1874 0396 0626     		movs	r6, #6
 1875 0398 1596     		str	r6, [sp, #84]
 1876              	.L569:
 1877 039a 2FA3     		adr	r3, .L660+16
 1878 039c D3E90023 		ldrd	r2, [r3]
 1879 03a0 DDE90201 		ldrd	r0, [sp, #8]
 1880 03a4 FFF7FEFF 		bl	__aeabi_dcmplt
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 34


 1881 03a8 0028     		cmp	r0, #0
 1882 03aa 00F02981 		beq	.L655
 1883 03ae 0794     		str	r4, [sp, #28]
 1884 03b0 4FF00A09 		mov	r9, #10
 1885 03b4 3446     		mov	r4, r6
 1886 03b6 0025     		movs	r5, #0
 1887 03b8 DDE90267 		ldrd	r6, [sp, #8]
 1888 03bc 02E0     		b	.L544
 1889              	.L547:
 1890 03be FFF7FEFF 		bl	__aeabi_dcmplt
 1891 03c2 88B1     		cbz	r0, .L638
 1892              	.L544:
 1893 03c4 3046     		mov	r0, r6
 1894 03c6 3946     		mov	r1, r7
 1895 03c8 0022     		movs	r2, #0
 1896 03ca 294B     		ldr	r3, .L660+40
 1897 03cc FFF7FEFF 		bl	__aeabi_dmul
 1898 03d0 0135     		adds	r5, r5, #1
 1899 03d2 09EB8909 		add	r9, r9, r9, lsl #2
 1900 03d6 A542     		cmp	r5, r4
 1901 03d8 0646     		mov	r6, r0
 1902 03da 0F46     		mov	r7, r1
 1903 03dc 1EA3     		adr	r3, .L660+16
 1904 03de D3E90023 		ldrd	r2, [r3]
 1905 03e2 4FEA4909 		lsl	r9, r9, #1
 1906 03e6 EADB     		blt	.L547
 1907              	.L638:
 1908 03e8 CDE90267 		strd	r6, [sp, #8]
 1909 03ec 079C     		ldr	r4, [sp, #28]
 1910 03ee 47EC106B 		vmov	d0, r6, r7
 1911              	.L545:
 1912 03f2 0023     		movs	r3, #0
 1913 03f4 8DF87E30 		strb	r3, [sp, #126]
 1914 03f8 FFF7FEFF 		bl	llrint
 1915 03fc BBF1450F 		cmp	fp, #69
 1916 0400 0646     		mov	r6, r0
 1917 0402 0F46     		mov	r7, r1
 1918 0404 00F0A280 		beq	.L656
 1919 0408 0DF17E09 		add	r9, sp, #126
 1920              	.L548:
 1921 040c AB46     		mov	fp, r5
 1922 040e 0A24     		movs	r4, #10
 1923 0410 0025     		movs	r5, #0
 1924              	.L553:
 1925 0412 3246     		mov	r2, r6
 1926 0414 3B46     		mov	r3, r7
 1927 0416 0AA8     		add	r0, sp, #40
 1928 0418 09F1FF3A 		add	r10, r9, #-1
 1929 041c BBF1000F 		cmp	fp, #0
 1930 0420 00F0CE80 		beq	.L657
 1931 0424 CDE90045 		strd	r4, [sp]
 1932 0428 FFF7FEFF 		bl	lldiv
 1933 042c 9DF83030 		ldrb	r3, [sp, #48]	@ zero_extendqisi2
 1934 0430 DDE90A67 		ldrd	r6, [sp, #40]
 1935 0434 3033     		adds	r3, r3, #48
 1936 0436 09F8013C 		strb	r3, [r9, #-1]
 1937 043a 56EA0703 		orrs	r3, r6, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 35


 1938 043e 1BD0     		beq	.L633
 1939 0440 0BF1FF3B 		add	fp, fp, #-1
 1940              	.L556:
 1941 0444 D146     		mov	r9, r10
 1942 0446 E4E7     		b	.L553
 1943              	.L661:
 1944              		.align	3
 1945              	.L660:
 1946 0448 00000000 		.word	0
 1947 044c 006AF840 		.word	1090021888
 1948 0450 00000080 		.word	-2147483648
 1949 0454 B5F8E43E 		.word	1055193269
 1950 0458 9A999999 		.word	-1717986918
 1951 045c 9999A943 		.word	1135188377
 1952 0460 00000000 		.word	.LC1
 1953 0464 21000200 		.word	131105
 1954 0468 FFFFEF7F 		.word	2146435071
 1955 046c 0000E043 		.word	1138753536
 1956 0470 00002440 		.word	1076101120
 1957 0474 0000F03F 		.word	1072693248
 1958              	.L633:
 1959 0478 BBF1010B 		subs	fp, fp, #1
 1960 047c E2D5     		bpl	.L556
 1961              	.L555:
 1962 047e DDE90401 		ldrd	r0, [sp, #16]
 1963 0482 0022     		movs	r2, #0
 1964 0484 0023     		movs	r3, #0
 1965 0486 FFF7FEFF 		bl	__aeabi_dcmplt
 1966 048a B8B1     		cbz	r0, .L557
 1967 048c 149B     		ldr	r3, [sp, #80]
 1968 048e 002B     		cmp	r3, #0
 1969 0490 00F09080 		beq	.L559
 1970 0494 9DF85930 		ldrb	r3, [sp, #89]	@ zero_extendqisi2
 1971 0498 D807     		lsls	r0, r3, #31
 1972 049a 40F18B80 		bpl	.L559
 1973 049e 0F9B     		ldr	r3, [sp, #60]
 1974 04a0 119A     		ldr	r2, [sp, #68]
 1975 04a2 9342     		cmp	r3, r2
 1976 04a4 80F0BA80 		bcs	.L560
 1977 04a8 591C     		adds	r1, r3, #1
 1978 04aa 2D22     		movs	r2, #45
 1979 04ac 0F91     		str	r1, [sp, #60]
 1980 04ae 1A70     		strb	r2, [r3]
 1981 04b0 129A     		ldr	r2, [sp, #72]
 1982 04b2 149B     		ldr	r3, [sp, #80]
 1983 04b4 0132     		adds	r2, r2, #1
 1984 04b6 013B     		subs	r3, r3, #1
 1985 04b8 1292     		str	r2, [sp, #72]
 1986 04ba 1493     		str	r3, [sp, #80]
 1987              	.L557:
 1988 04bc 5146     		mov	r1, r10
 1989 04be 0FA8     		add	r0, sp, #60
 1990 04c0 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 1991 04c4 0028     		cmp	r0, #0
 1992 04c6 3FF428AE 		beq	.L505
 1993              	.L659:
 1994 04ca 069D     		ldr	r5, [sp, #24]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 36


 1995 04cc 0835     		adds	r5, r5, #8
 1996 04ce AAE5     		b	.L499
 1997              	.L515:
 1998 04d0 A4F13001 		sub	r1, r4, #48
 1999 04d4 CBB2     		uxtb	r3, r1
 2000 04d6 092B     		cmp	r3, #9
 2001 04d8 08F10108 		add	r8, r8, #1
 2002 04dc 3FF6F3AD 		bhi	.L514
 2003 04e0 0026     		movs	r6, #0
 2004              	.L517:
 2005 04e2 18F8014B 		ldrb	r4, [r8], #1	@ zero_extendqisi2
 2006 04e6 06EB8606 		add	r6, r6, r6, lsl #2
 2007 04ea 01EB4606 		add	r6, r1, r6, lsl #1
 2008 04ee A4F13001 		sub	r1, r4, #48
 2009 04f2 CBB2     		uxtb	r3, r1
 2010 04f4 092B     		cmp	r3, #9
 2011 04f6 F4D9     		bls	.L517
 2012 04f8 1596     		str	r6, [sp, #84]
 2013 04fa 002E     		cmp	r6, #0
 2014 04fc 7FF43DAE 		bne	.L642
 2015 0500 E1E5     		b	.L514
 2016              	.L648:
 2017 0502 98F80040 		ldrb	r4, [r8]	@ zero_extendqisi2
 2018 0506 9DF85930 		ldrb	r3, [sp, #89]	@ zero_extendqisi2
 2019 050a 6C2C     		cmp	r4, #108
 2020 050c 08D0     		beq	.L658
 2021 050e 43F02003 		orr	r3, r3, #32
 2022 0512 08F10108 		add	r8, r8, #1
 2023 0516 8DF85930 		strb	r3, [sp, #89]
 2024 051a DEE5     		b	.L525
 2025              	.L571:
 2026 051c 9846     		mov	r8, r3
 2027 051e D0E5     		b	.L512
 2028              	.L658:
 2029 0520 43F04003 		orr	r3, r3, #64
 2030 0524 98F80140 		ldrb	r4, [r8, #1]	@ zero_extendqisi2
 2031 0528 8DF85930 		strb	r3, [sp, #89]
 2032 052c 08F10208 		add	r8, r8, #2
 2033 0530 D3E5     		b	.L525
 2034              	.L562:
 2035 0532 1023     		movs	r3, #16
 2036 0534 1393     		str	r3, [sp, #76]
 2037              	.L570:
 2038 0536 582C     		cmp	r4, #88
 2039 0538 73D0     		beq	.L565
 2040 053a 702C     		cmp	r4, #112
 2041 053c 3FF4E3AD 		beq	.L564
 2042 0540 6F2C     		cmp	r4, #111
 2043 0542 7FF470AD 		bne	.L499
 2044 0546 0823     		movs	r3, #8
 2045 0548 1393     		str	r3, [sp, #76]
 2046 054a DCE5     		b	.L564
 2047              	.L656:
 2048 054c 4846     		mov	r0, r9
 2049 054e FFF7FEFF 		bl	__aeabi_i2d
 2050 0552 DDE90223 		ldrd	r2, [sp, #8]
 2051 0556 FFF7FEFF 		bl	__aeabi_dcmple
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 37


 2052 055a 08B1     		cbz	r0, .L549
 2053 055c 0AF1010A 		add	r10, r10, #1
 2054              	.L549:
 2055 0560 8AEAEA73 		eor	r3, r10, r10, asr #31
 2056 0564 3149     		ldr	r1, .L662
 2057 0566 A3EBEA73 		sub	r3, r3, r10, asr #31
 2058 056a 0DF17E09 		add	r9, sp, #126
 2059              	.L551:
 2060 056e 81FB0320 		smull	r2, r0, r1, r3
 2061 0572 DA17     		asrs	r2, r3, #31
 2062 0574 C2EBA002 		rsb	r2, r2, r0, asr #2
 2063 0578 02EB8200 		add	r0, r2, r2, lsl #2
 2064 057c A3EB4003 		sub	r3, r3, r0, lsl #1
 2065 0580 3033     		adds	r3, r3, #48
 2066 0582 09F8013D 		strb	r3, [r9, #-1]!
 2067 0586 1346     		mov	r3, r2
 2068 0588 002A     		cmp	r2, #0
 2069 058a F0D1     		bne	.L551
 2070 058c BAF1000F 		cmp	r10, #0
 2071 0590 ACBF     		ite	ge
 2072 0592 2B23     		movge	r3, #43
 2073 0594 2D23     		movlt	r3, #45
 2074 0596 09F8024C 		strb	r4, [r9, #-2]
 2075 059a 09F8013C 		strb	r3, [r9, #-1]
 2076 059e A9F10209 		sub	r9, r9, #2
 2077 05a2 33E7     		b	.L548
 2078              	.L652:
 2079 05a4 2249     		ldr	r1, .L662+4
 2080 05a6 0FA8     		add	r0, sp, #60
 2081 05a8 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 2082 05ac 0028     		cmp	r0, #0
 2083 05ae 3FF4B4AD 		beq	.L505
 2084 05b2 8AE7     		b	.L659
 2085              	.L559:
 2086 05b4 2D23     		movs	r3, #45
 2087 05b6 09F8023C 		strb	r3, [r9, #-2]
 2088 05ba A9F1020A 		sub	r10, r9, #2
 2089 05be 7DE7     		b	.L557
 2090              	.L657:
 2091 05c0 4FF02E03 		mov	r3, #46
 2092 05c4 09F8013C 		strb	r3, [r9, #-1]
 2093 05c8 3B46     		mov	r3, r7
 2094 05ca CDE90045 		strd	r4, [sp]
 2095 05ce FFF7FEFF 		bl	lldiv
 2096 05d2 DDE90A67 		ldrd	r6, [sp, #40]
 2097 05d6 9DF83030 		ldrb	r3, [sp, #48]	@ zero_extendqisi2
 2098 05da 56EA0702 		orrs	r2, r6, r7
 2099 05de 03F13003 		add	r3, r3, #48
 2100 05e2 09F8023C 		strb	r3, [r9, #-2]
 2101 05e6 A9F10203 		sub	r3, r9, #2
 2102 05ea 04D0     		beq	.L579
 2103 05ec 9A46     		mov	r10, r3
 2104 05ee 4FF0FF3B 		mov	fp, #-1
 2105 05f2 D146     		mov	r9, r10
 2106 05f4 0DE7     		b	.L553
 2107              	.L579:
 2108 05f6 D146     		mov	r9, r10
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxrmQgW.s 			page 38


 2109 05f8 9A46     		mov	r10, r3
 2110 05fa 40E7     		b	.L555
 2111              	.L654:
 2112 05fc 8246     		mov	r10, r0
 2113 05fe 5BE6     		b	.L539
 2114              	.L655:
 2115 0600 0546     		mov	r5, r0
 2116 0602 4FF00A09 		mov	r9, #10
 2117 0606 9DED020B 		vldr.64	d0, [sp, #8]
 2118 060a F2E6     		b	.L545
 2119              	.L651:
 2120 060c 0949     		ldr	r1, .L662+8
 2121 060e 0FA8     		add	r0, sp, #60
 2122 0610 FFF7FEFF 		bl	_ZL6printsR10SStringBufPKc
 2123 0614 0028     		cmp	r0, #0
 2124 0616 3FF480AD 		beq	.L505
 2125 061a 56E7     		b	.L659
 2126              	.L560:
 2127 061c 0022     		movs	r2, #0
 2128 061e 1A70     		strb	r2, [r3]
 2129 0620 7BE5     		b	.L505
 2130              	.L565:
 2131 0622 4123     		movs	r3, #65
 2132 0624 8DF85830 		strb	r3, [sp, #88]
 2133 0628 6DE5     		b	.L564
 2134              	.L663:
 2135 062a 00BF     		.align	2
 2136              	.L662:
 2137 062c 67666666 		.word	1717986919
 2138 0630 0C000000 		.word	.LC3
 2139 0634 08000000 		.word	.LC2
 2140              		.size	_Z12SafeSnprintfPcjPKcz, .-_Z12SafeSnprintfPcjPKcz
 2141              		.section	.rodata._Z13SafeVsnprintfPcjPKcSt9__va_list.str1.4,"aMS",%progbits,1
 2142              		.align	2
 2143              	.LC1:
 2144 0000 3C6E756C 		.ascii	"<null>\000"
 2144      6C3E00
 2145 0007 00       		.space	1
 2146              	.LC2:
 2147 0008 6E616E00 		.ascii	"nan\000"
 2148              	.LC3:
 2149 000c 696E6600 		.ascii	"inf\000"
 2150              		.section	.rodata._ZL7printllR10SStringBufx.str1.4,"aMS",%progbits,1
 2151              		.align	2
 2152              	.LC0:
 2153 0000 3000     		.ascii	"0\000"
 2154              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
