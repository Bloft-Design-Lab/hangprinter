ARM GAS  /tmp/ccoWvB02.s 			page 1


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
  11              		.file	"ccsbcs.c"
  12              		.section	.text.ff_convert,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	ff_convert
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	ff_convert, %function
  21              	ff_convert:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 7F28     		cmp	r0, #127
  26 0002 11D9     		bls	.L15
  27 0004 89B9     		cbnz	r1, .L3
  28 0006 10B4     		push	{r4}
  29 0008 0E4A     		ldr	r2, .L17
  30 000a C723     		movs	r3, #199
  31 000c 03E0     		b	.L4
  32              	.L5:
  33 000e 8029     		cmp	r1, #128
  34 0010 14D0     		beq	.L9
  35 0012 32F8023F 		ldrh	r3, [r2, #2]!
  36              	.L4:
  37 0016 9842     		cmp	r0, r3
  38 0018 8CB2     		uxth	r4, r1
  39 001a 01F10101 		add	r1, r1, #1
  40 001e F6D1     		bne	.L5
  41 0020 04F18000 		add	r0, r4, #128
  42 0024 10BC     		pop	{r4}
  43 0026 80B2     		uxth	r0, r0
  44              	.L15:
  45 0028 7047     		bx	lr
  46              	.L3:
  47 002a FF28     		cmp	r0, #255
  48 002c 04D8     		bhi	.L8
  49 002e 054B     		ldr	r3, .L17
  50 0030 8038     		subs	r0, r0, #128
  51 0032 33F81000 		ldrh	r0, [r3, r0, lsl #1]
  52 0036 7047     		bx	lr
  53              	.L8:
  54 0038 0020     		movs	r0, #0
  55 003a 7047     		bx	lr
  56              	.L9:
  57 003c 0020     		movs	r0, #0
ARM GAS  /tmp/ccoWvB02.s 			page 2


  58 003e 10BC     		pop	{r4}
  59 0040 F2E7     		b	.L15
  60              	.L18:
  61 0042 00BF     		.align	2
  62              	.L17:
  63 0044 00000000 		.word	.LANCHOR0
  64              		.size	ff_convert, .-ff_convert
  65              		.section	.text.ff_wtoupper,"ax",%progbits
  66              		.align	1
  67              		.p2align 2,,3
  68              		.global	ff_wtoupper
  69              		.syntax unified
  70              		.thumb
  71              		.thumb_func
  72              		.fpu softvfp
  73              		.type	ff_wtoupper, %function
  74              	ff_wtoupper:
  75              		@ args = 0, pretend = 0, frame = 0
  76              		@ frame_needed = 0, uses_anonymous_args = 0
  77              		@ link register save eliminated.
  78 0000 6128     		cmp	r0, #97
  79 0002 0ED0     		beq	.L26
  80 0004 0122     		movs	r2, #1
  81 0006 6223     		movs	r3, #98
  82 0008 0749     		ldr	r1, .L28
  83              	.L22:
  84 000a 9842     		cmp	r0, r3
  85 000c 05D0     		beq	.L27
  86 000e 31F8023F 		ldrh	r3, [r1, #2]!
  87 0012 0132     		adds	r2, r2, #1
  88 0014 002B     		cmp	r3, #0
  89 0016 F8D1     		bne	.L22
  90 0018 7047     		bx	lr
  91              	.L27:
  92 001a 044B     		ldr	r3, .L28+4
  93 001c 33F81200 		ldrh	r0, [r3, r2, lsl #1]
  94 0020 7047     		bx	lr
  95              	.L26:
  96 0022 4120     		movs	r0, #65
  97 0024 7047     		bx	lr
  98              	.L29:
  99 0026 00BF     		.align	2
 100              	.L28:
 101 0028 02000000 		.word	.LANCHOR1+2
 102 002c 00000000 		.word	.LANCHOR2
 103              		.size	ff_wtoupper, .-ff_wtoupper
 104              		.section	.rodata.Tbl,"a",%progbits
 105              		.align	2
 106              		.set	.LANCHOR0,. + 0
 107              		.type	Tbl, %object
 108              		.size	Tbl, 256
 109              	Tbl:
 110 0000 C700     		.short	199
 111 0002 FC00     		.short	252
 112 0004 E900     		.short	233
 113 0006 E200     		.short	226
 114 0008 E400     		.short	228
ARM GAS  /tmp/ccoWvB02.s 			page 3


 115 000a E000     		.short	224
 116 000c E500     		.short	229
 117 000e E700     		.short	231
 118 0010 EA00     		.short	234
 119 0012 EB00     		.short	235
 120 0014 E800     		.short	232
 121 0016 EF00     		.short	239
 122 0018 EE00     		.short	238
 123 001a EC00     		.short	236
 124 001c C400     		.short	196
 125 001e C500     		.short	197
 126 0020 C900     		.short	201
 127 0022 E600     		.short	230
 128 0024 C600     		.short	198
 129 0026 F400     		.short	244
 130 0028 F600     		.short	246
 131 002a F200     		.short	242
 132 002c FB00     		.short	251
 133 002e F900     		.short	249
 134 0030 FF00     		.short	255
 135 0032 D600     		.short	214
 136 0034 DC00     		.short	220
 137 0036 F800     		.short	248
 138 0038 A300     		.short	163
 139 003a D800     		.short	216
 140 003c D700     		.short	215
 141 003e 9201     		.short	402
 142 0040 E100     		.short	225
 143 0042 ED00     		.short	237
 144 0044 F300     		.short	243
 145 0046 FA00     		.short	250
 146 0048 F100     		.short	241
 147 004a D100     		.short	209
 148 004c AA00     		.short	170
 149 004e BA00     		.short	186
 150 0050 BF00     		.short	191
 151 0052 AE00     		.short	174
 152 0054 AC00     		.short	172
 153 0056 BD00     		.short	189
 154 0058 BC00     		.short	188
 155 005a A100     		.short	161
 156 005c AB00     		.short	171
 157 005e BB00     		.short	187
 158 0060 9125     		.short	9617
 159 0062 9225     		.short	9618
 160 0064 9325     		.short	9619
 161 0066 0225     		.short	9474
 162 0068 2425     		.short	9508
 163 006a C100     		.short	193
 164 006c C200     		.short	194
 165 006e C000     		.short	192
 166 0070 A900     		.short	169
 167 0072 6325     		.short	9571
 168 0074 5125     		.short	9553
 169 0076 5725     		.short	9559
 170 0078 5D25     		.short	9565
 171 007a A200     		.short	162
ARM GAS  /tmp/ccoWvB02.s 			page 4


 172 007c A500     		.short	165
 173 007e 1025     		.short	9488
 174 0080 1425     		.short	9492
 175 0082 3425     		.short	9524
 176 0084 2C25     		.short	9516
 177 0086 1C25     		.short	9500
 178 0088 0025     		.short	9472
 179 008a 3C25     		.short	9532
 180 008c E300     		.short	227
 181 008e C300     		.short	195
 182 0090 5A25     		.short	9562
 183 0092 5425     		.short	9556
 184 0094 6925     		.short	9577
 185 0096 6625     		.short	9574
 186 0098 6025     		.short	9568
 187 009a 5025     		.short	9552
 188 009c 6C25     		.short	9580
 189 009e A400     		.short	164
 190 00a0 F000     		.short	240
 191 00a2 D000     		.short	208
 192 00a4 CA00     		.short	202
 193 00a6 CB00     		.short	203
 194 00a8 C800     		.short	200
 195 00aa 3101     		.short	305
 196 00ac CD00     		.short	205
 197 00ae CE00     		.short	206
 198 00b0 CF00     		.short	207
 199 00b2 1825     		.short	9496
 200 00b4 0C25     		.short	9484
 201 00b6 8825     		.short	9608
 202 00b8 8425     		.short	9604
 203 00ba A600     		.short	166
 204 00bc CC00     		.short	204
 205 00be 8025     		.short	9600
 206 00c0 D300     		.short	211
 207 00c2 DF00     		.short	223
 208 00c4 D400     		.short	212
 209 00c6 D200     		.short	210
 210 00c8 F500     		.short	245
 211 00ca D500     		.short	213
 212 00cc B500     		.short	181
 213 00ce FE00     		.short	254
 214 00d0 DE00     		.short	222
 215 00d2 DA00     		.short	218
 216 00d4 DB00     		.short	219
 217 00d6 D900     		.short	217
 218 00d8 FD00     		.short	253
 219 00da DD00     		.short	221
 220 00dc AF00     		.short	175
 221 00de B400     		.short	180
 222 00e0 AD00     		.short	173
 223 00e2 B100     		.short	177
 224 00e4 1720     		.short	8215
 225 00e6 BE00     		.short	190
 226 00e8 B600     		.short	182
 227 00ea A700     		.short	167
 228 00ec F700     		.short	247
ARM GAS  /tmp/ccoWvB02.s 			page 5


 229 00ee B800     		.short	184
 230 00f0 B000     		.short	176
 231 00f2 A800     		.short	168
 232 00f4 B700     		.short	183
 233 00f6 B900     		.short	185
 234 00f8 B300     		.short	179
 235 00fa B200     		.short	178
 236 00fc A025     		.short	9632
 237 00fe A000     		.short	160
 238              		.section	.rodata.tbl_lower.4309,"a",%progbits
 239              		.align	2
 240              		.set	.LANCHOR1,. + 0
 241              		.type	tbl_lower.4309, %object
 242              		.size	tbl_lower.4309, 480
 243              	tbl_lower.4309:
 244 0000 6100     		.short	97
 245 0002 6200     		.short	98
 246 0004 6300     		.short	99
 247 0006 6400     		.short	100
 248 0008 6500     		.short	101
 249 000a 6600     		.short	102
 250 000c 6700     		.short	103
 251 000e 6800     		.short	104
 252 0010 6900     		.short	105
 253 0012 6A00     		.short	106
 254 0014 6B00     		.short	107
 255 0016 6C00     		.short	108
 256 0018 6D00     		.short	109
 257 001a 6E00     		.short	110
 258 001c 6F00     		.short	111
 259 001e 7000     		.short	112
 260 0020 7100     		.short	113
 261 0022 7200     		.short	114
 262 0024 7300     		.short	115
 263 0026 7400     		.short	116
 264 0028 7500     		.short	117
 265 002a 7600     		.short	118
 266 002c 7700     		.short	119
 267 002e 7800     		.short	120
 268 0030 7900     		.short	121
 269 0032 7A00     		.short	122
 270 0034 A100     		.short	161
 271 0036 A200     		.short	162
 272 0038 A300     		.short	163
 273 003a A500     		.short	165
 274 003c AC00     		.short	172
 275 003e AF00     		.short	175
 276 0040 E000     		.short	224
 277 0042 E100     		.short	225
 278 0044 E200     		.short	226
 279 0046 E300     		.short	227
 280 0048 E400     		.short	228
 281 004a E500     		.short	229
 282 004c E600     		.short	230
 283 004e E700     		.short	231
 284 0050 E800     		.short	232
 285 0052 E900     		.short	233
ARM GAS  /tmp/ccoWvB02.s 			page 6


 286 0054 EA00     		.short	234
 287 0056 EB00     		.short	235
 288 0058 EC00     		.short	236
 289 005a ED00     		.short	237
 290 005c EE00     		.short	238
 291 005e EF00     		.short	239
 292 0060 F000     		.short	240
 293 0062 F100     		.short	241
 294 0064 F200     		.short	242
 295 0066 F300     		.short	243
 296 0068 F400     		.short	244
 297 006a F500     		.short	245
 298 006c F600     		.short	246
 299 006e F800     		.short	248
 300 0070 F900     		.short	249
 301 0072 FA00     		.short	250
 302 0074 FB00     		.short	251
 303 0076 FC00     		.short	252
 304 0078 FD00     		.short	253
 305 007a FE00     		.short	254
 306 007c FF00     		.short	255
 307 007e 0101     		.short	257
 308 0080 0301     		.short	259
 309 0082 0501     		.short	261
 310 0084 0701     		.short	263
 311 0086 0901     		.short	265
 312 0088 0B01     		.short	267
 313 008a 0D01     		.short	269
 314 008c 0F01     		.short	271
 315 008e 1101     		.short	273
 316 0090 1301     		.short	275
 317 0092 1501     		.short	277
 318 0094 1701     		.short	279
 319 0096 1901     		.short	281
 320 0098 1B01     		.short	283
 321 009a 1D01     		.short	285
 322 009c 1F01     		.short	287
 323 009e 2101     		.short	289
 324 00a0 2301     		.short	291
 325 00a2 2501     		.short	293
 326 00a4 2701     		.short	295
 327 00a6 2901     		.short	297
 328 00a8 2B01     		.short	299
 329 00aa 2D01     		.short	301
 330 00ac 2F01     		.short	303
 331 00ae 3101     		.short	305
 332 00b0 3301     		.short	307
 333 00b2 3501     		.short	309
 334 00b4 3701     		.short	311
 335 00b6 3A01     		.short	314
 336 00b8 3C01     		.short	316
 337 00ba 3E01     		.short	318
 338 00bc 4001     		.short	320
 339 00be 4201     		.short	322
 340 00c0 4401     		.short	324
 341 00c2 4601     		.short	326
 342 00c4 4801     		.short	328
ARM GAS  /tmp/ccoWvB02.s 			page 7


 343 00c6 4B01     		.short	331
 344 00c8 4D01     		.short	333
 345 00ca 4F01     		.short	335
 346 00cc 5101     		.short	337
 347 00ce 5301     		.short	339
 348 00d0 5501     		.short	341
 349 00d2 5701     		.short	343
 350 00d4 5901     		.short	345
 351 00d6 5B01     		.short	347
 352 00d8 5D01     		.short	349
 353 00da 5F01     		.short	351
 354 00dc 6101     		.short	353
 355 00de 6301     		.short	355
 356 00e0 6501     		.short	357
 357 00e2 6701     		.short	359
 358 00e4 6901     		.short	361
 359 00e6 6B01     		.short	363
 360 00e8 6D01     		.short	365
 361 00ea 6F01     		.short	367
 362 00ec 7101     		.short	369
 363 00ee 7301     		.short	371
 364 00f0 7501     		.short	373
 365 00f2 7701     		.short	375
 366 00f4 7A01     		.short	378
 367 00f6 7C01     		.short	380
 368 00f8 7E01     		.short	382
 369 00fa 9201     		.short	402
 370 00fc B103     		.short	945
 371 00fe B203     		.short	946
 372 0100 B303     		.short	947
 373 0102 B403     		.short	948
 374 0104 B503     		.short	949
 375 0106 B603     		.short	950
 376 0108 B703     		.short	951
 377 010a B803     		.short	952
 378 010c B903     		.short	953
 379 010e BA03     		.short	954
 380 0110 BB03     		.short	955
 381 0112 BC03     		.short	956
 382 0114 BD03     		.short	957
 383 0116 BE03     		.short	958
 384 0118 BF03     		.short	959
 385 011a C003     		.short	960
 386 011c C103     		.short	961
 387 011e C303     		.short	963
 388 0120 C403     		.short	964
 389 0122 C503     		.short	965
 390 0124 C603     		.short	966
 391 0126 C703     		.short	967
 392 0128 C803     		.short	968
 393 012a C903     		.short	969
 394 012c CA03     		.short	970
 395 012e 3004     		.short	1072
 396 0130 3104     		.short	1073
 397 0132 3204     		.short	1074
 398 0134 3304     		.short	1075
 399 0136 3404     		.short	1076
ARM GAS  /tmp/ccoWvB02.s 			page 8


 400 0138 3504     		.short	1077
 401 013a 3604     		.short	1078
 402 013c 3704     		.short	1079
 403 013e 3804     		.short	1080
 404 0140 3904     		.short	1081
 405 0142 3A04     		.short	1082
 406 0144 3B04     		.short	1083
 407 0146 3C04     		.short	1084
 408 0148 3D04     		.short	1085
 409 014a 3E04     		.short	1086
 410 014c 3F04     		.short	1087
 411 014e 4004     		.short	1088
 412 0150 4104     		.short	1089
 413 0152 4204     		.short	1090
 414 0154 4304     		.short	1091
 415 0156 4404     		.short	1092
 416 0158 4504     		.short	1093
 417 015a 4604     		.short	1094
 418 015c 4704     		.short	1095
 419 015e 4804     		.short	1096
 420 0160 4904     		.short	1097
 421 0162 4A04     		.short	1098
 422 0164 4B04     		.short	1099
 423 0166 4C04     		.short	1100
 424 0168 4D04     		.short	1101
 425 016a 4E04     		.short	1102
 426 016c 4F04     		.short	1103
 427 016e 5104     		.short	1105
 428 0170 5204     		.short	1106
 429 0172 5304     		.short	1107
 430 0174 5404     		.short	1108
 431 0176 5504     		.short	1109
 432 0178 5604     		.short	1110
 433 017a 5704     		.short	1111
 434 017c 5804     		.short	1112
 435 017e 5904     		.short	1113
 436 0180 5A04     		.short	1114
 437 0182 5B04     		.short	1115
 438 0184 5C04     		.short	1116
 439 0186 5E04     		.short	1118
 440 0188 5F04     		.short	1119
 441 018a 7021     		.short	8560
 442 018c 7121     		.short	8561
 443 018e 7221     		.short	8562
 444 0190 7321     		.short	8563
 445 0192 7421     		.short	8564
 446 0194 7521     		.short	8565
 447 0196 7621     		.short	8566
 448 0198 7721     		.short	8567
 449 019a 7821     		.short	8568
 450 019c 7921     		.short	8569
 451 019e 7A21     		.short	8570
 452 01a0 7B21     		.short	8571
 453 01a2 7C21     		.short	8572
 454 01a4 7D21     		.short	8573
 455 01a6 7E21     		.short	8574
 456 01a8 7F21     		.short	8575
ARM GAS  /tmp/ccoWvB02.s 			page 9


 457 01aa 41FF     		.short	-191
 458 01ac 42FF     		.short	-190
 459 01ae 43FF     		.short	-189
 460 01b0 44FF     		.short	-188
 461 01b2 45FF     		.short	-187
 462 01b4 46FF     		.short	-186
 463 01b6 47FF     		.short	-185
 464 01b8 48FF     		.short	-184
 465 01ba 49FF     		.short	-183
 466 01bc 4AFF     		.short	-182
 467 01be 4BFF     		.short	-181
 468 01c0 4CFF     		.short	-180
 469 01c2 4DFF     		.short	-179
 470 01c4 4EFF     		.short	-178
 471 01c6 4FFF     		.short	-177
 472 01c8 50FF     		.short	-176
 473 01ca 51FF     		.short	-175
 474 01cc 52FF     		.short	-174
 475 01ce 53FF     		.short	-173
 476 01d0 54FF     		.short	-172
 477 01d2 55FF     		.short	-171
 478 01d4 56FF     		.short	-170
 479 01d6 57FF     		.short	-169
 480 01d8 58FF     		.short	-168
 481 01da 59FF     		.short	-167
 482 01dc 5AFF     		.short	-166
 483 01de 0000     		.short	0
 484              		.section	.rodata.tbl_upper.4310,"a",%progbits
 485              		.align	2
 486              		.set	.LANCHOR2,. + 0
 487              		.type	tbl_upper.4310, %object
 488              		.size	tbl_upper.4310, 480
 489              	tbl_upper.4310:
 490 0000 4100     		.short	65
 491 0002 4200     		.short	66
 492 0004 4300     		.short	67
 493 0006 4400     		.short	68
 494 0008 4500     		.short	69
 495 000a 4600     		.short	70
 496 000c 4700     		.short	71
 497 000e 4800     		.short	72
 498 0010 4900     		.short	73
 499 0012 4A00     		.short	74
 500 0014 4B00     		.short	75
 501 0016 4C00     		.short	76
 502 0018 4D00     		.short	77
 503 001a 4E00     		.short	78
 504 001c 4F00     		.short	79
 505 001e 5000     		.short	80
 506 0020 5100     		.short	81
 507 0022 5200     		.short	82
 508 0024 5300     		.short	83
 509 0026 5400     		.short	84
 510 0028 5500     		.short	85
 511 002a 5600     		.short	86
 512 002c 5700     		.short	87
 513 002e 5800     		.short	88
ARM GAS  /tmp/ccoWvB02.s 			page 10


 514 0030 5900     		.short	89
 515 0032 5A00     		.short	90
 516 0034 2100     		.short	33
 517 0036 E0FF     		.short	-32
 518 0038 E1FF     		.short	-31
 519 003a E5FF     		.short	-27
 520 003c E2FF     		.short	-30
 521 003e E3FF     		.short	-29
 522 0040 C000     		.short	192
 523 0042 C100     		.short	193
 524 0044 C200     		.short	194
 525 0046 C300     		.short	195
 526 0048 C400     		.short	196
 527 004a C500     		.short	197
 528 004c C600     		.short	198
 529 004e C700     		.short	199
 530 0050 C800     		.short	200
 531 0052 C900     		.short	201
 532 0054 CA00     		.short	202
 533 0056 CB00     		.short	203
 534 0058 CC00     		.short	204
 535 005a CD00     		.short	205
 536 005c CE00     		.short	206
 537 005e CF00     		.short	207
 538 0060 D000     		.short	208
 539 0062 D100     		.short	209
 540 0064 D200     		.short	210
 541 0066 D300     		.short	211
 542 0068 D400     		.short	212
 543 006a D500     		.short	213
 544 006c D600     		.short	214
 545 006e D800     		.short	216
 546 0070 D900     		.short	217
 547 0072 DA00     		.short	218
 548 0074 DB00     		.short	219
 549 0076 DC00     		.short	220
 550 0078 DD00     		.short	221
 551 007a DE00     		.short	222
 552 007c 7801     		.short	376
 553 007e 0001     		.short	256
 554 0080 0201     		.short	258
 555 0082 0401     		.short	260
 556 0084 0601     		.short	262
 557 0086 0801     		.short	264
 558 0088 0A01     		.short	266
 559 008a 0C01     		.short	268
 560 008c 0E01     		.short	270
 561 008e 1001     		.short	272
 562 0090 1201     		.short	274
 563 0092 1401     		.short	276
 564 0094 1601     		.short	278
 565 0096 1801     		.short	280
 566 0098 1A01     		.short	282
 567 009a 1C01     		.short	284
 568 009c 1E01     		.short	286
 569 009e 2001     		.short	288
 570 00a0 2201     		.short	290
ARM GAS  /tmp/ccoWvB02.s 			page 11


 571 00a2 2401     		.short	292
 572 00a4 2601     		.short	294
 573 00a6 2801     		.short	296
 574 00a8 2A01     		.short	298
 575 00aa 2C01     		.short	300
 576 00ac 2E01     		.short	302
 577 00ae 3001     		.short	304
 578 00b0 3201     		.short	306
 579 00b2 3401     		.short	308
 580 00b4 3601     		.short	310
 581 00b6 3901     		.short	313
 582 00b8 3B01     		.short	315
 583 00ba 3D01     		.short	317
 584 00bc 3F01     		.short	319
 585 00be 4101     		.short	321
 586 00c0 4301     		.short	323
 587 00c2 4501     		.short	325
 588 00c4 4701     		.short	327
 589 00c6 4A01     		.short	330
 590 00c8 4C01     		.short	332
 591 00ca 4E01     		.short	334
 592 00cc 5001     		.short	336
 593 00ce 5201     		.short	338
 594 00d0 5401     		.short	340
 595 00d2 5601     		.short	342
 596 00d4 5801     		.short	344
 597 00d6 5A01     		.short	346
 598 00d8 5C01     		.short	348
 599 00da 5E01     		.short	350
 600 00dc 6001     		.short	352
 601 00de 6201     		.short	354
 602 00e0 6401     		.short	356
 603 00e2 6601     		.short	358
 604 00e4 6801     		.short	360
 605 00e6 6A01     		.short	362
 606 00e8 6C01     		.short	364
 607 00ea 6E01     		.short	366
 608 00ec 7001     		.short	368
 609 00ee 7201     		.short	370
 610 00f0 7401     		.short	372
 611 00f2 7601     		.short	374
 612 00f4 7901     		.short	377
 613 00f6 7B01     		.short	379
 614 00f8 7D01     		.short	381
 615 00fa 9101     		.short	401
 616 00fc 9103     		.short	913
 617 00fe 9203     		.short	914
 618 0100 9303     		.short	915
 619 0102 9403     		.short	916
 620 0104 9503     		.short	917
 621 0106 9603     		.short	918
 622 0108 9703     		.short	919
 623 010a 9803     		.short	920
 624 010c 9903     		.short	921
 625 010e 9A03     		.short	922
 626 0110 9B03     		.short	923
 627 0112 9C03     		.short	924
ARM GAS  /tmp/ccoWvB02.s 			page 12


 628 0114 9D03     		.short	925
 629 0116 9E03     		.short	926
 630 0118 9F03     		.short	927
 631 011a A003     		.short	928
 632 011c A103     		.short	929
 633 011e A303     		.short	931
 634 0120 A403     		.short	932
 635 0122 A503     		.short	933
 636 0124 A603     		.short	934
 637 0126 A703     		.short	935
 638 0128 A803     		.short	936
 639 012a A903     		.short	937
 640 012c AA03     		.short	938
 641 012e 1004     		.short	1040
 642 0130 1104     		.short	1041
 643 0132 1204     		.short	1042
 644 0134 1304     		.short	1043
 645 0136 1404     		.short	1044
 646 0138 1504     		.short	1045
 647 013a 1604     		.short	1046
 648 013c 1704     		.short	1047
 649 013e 1804     		.short	1048
 650 0140 1904     		.short	1049
 651 0142 1A04     		.short	1050
 652 0144 1B04     		.short	1051
 653 0146 1C04     		.short	1052
 654 0148 1D04     		.short	1053
 655 014a 1E04     		.short	1054
 656 014c 1F04     		.short	1055
 657 014e 2004     		.short	1056
 658 0150 2104     		.short	1057
 659 0152 2204     		.short	1058
 660 0154 2304     		.short	1059
 661 0156 2404     		.short	1060
 662 0158 2504     		.short	1061
 663 015a 2604     		.short	1062
 664 015c 2704     		.short	1063
 665 015e 2804     		.short	1064
 666 0160 2904     		.short	1065
 667 0162 2A04     		.short	1066
 668 0164 2B04     		.short	1067
 669 0166 2C04     		.short	1068
 670 0168 2D04     		.short	1069
 671 016a 2E04     		.short	1070
 672 016c 2F04     		.short	1071
 673 016e 0104     		.short	1025
 674 0170 0204     		.short	1026
 675 0172 0304     		.short	1027
 676 0174 0404     		.short	1028
 677 0176 0504     		.short	1029
 678 0178 0604     		.short	1030
 679 017a 0704     		.short	1031
 680 017c 0804     		.short	1032
 681 017e 0904     		.short	1033
 682 0180 0A04     		.short	1034
 683 0182 0B04     		.short	1035
 684 0184 0C04     		.short	1036
ARM GAS  /tmp/ccoWvB02.s 			page 13


 685 0186 0E04     		.short	1038
 686 0188 0F04     		.short	1039
 687 018a 6021     		.short	8544
 688 018c 6121     		.short	8545
 689 018e 6221     		.short	8546
 690 0190 6321     		.short	8547
 691 0192 6421     		.short	8548
 692 0194 6521     		.short	8549
 693 0196 6621     		.short	8550
 694 0198 6721     		.short	8551
 695 019a 6821     		.short	8552
 696 019c 6921     		.short	8553
 697 019e 6A21     		.short	8554
 698 01a0 6B21     		.short	8555
 699 01a2 6C21     		.short	8556
 700 01a4 6D21     		.short	8557
 701 01a6 6E21     		.short	8558
 702 01a8 6F21     		.short	8559
 703 01aa 21FF     		.short	-223
 704 01ac 22FF     		.short	-222
 705 01ae 23FF     		.short	-221
 706 01b0 24FF     		.short	-220
 707 01b2 25FF     		.short	-219
 708 01b4 26FF     		.short	-218
 709 01b6 27FF     		.short	-217
 710 01b8 28FF     		.short	-216
 711 01ba 29FF     		.short	-215
 712 01bc 2AFF     		.short	-214
 713 01be 2BFF     		.short	-213
 714 01c0 2CFF     		.short	-212
 715 01c2 2DFF     		.short	-211
 716 01c4 2EFF     		.short	-210
 717 01c6 2FFF     		.short	-209
 718 01c8 30FF     		.short	-208
 719 01ca 31FF     		.short	-207
 720 01cc 32FF     		.short	-206
 721 01ce 33FF     		.short	-205
 722 01d0 34FF     		.short	-204
 723 01d2 35FF     		.short	-203
 724 01d4 36FF     		.short	-202
 725 01d6 37FF     		.short	-201
 726 01d8 38FF     		.short	-200
 727 01da 39FF     		.short	-199
 728 01dc 3AFF     		.short	-198
 729 01de 0000     		.short	0
 730              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
