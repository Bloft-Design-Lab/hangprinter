ARM GAS  /tmp/ccmq7QPH.s 			page 1


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
  13              		.file	"ccsbcs.c"
  14              		.section	.text.ff_convert,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	ff_convert
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	ff_convert, %function
  23              	ff_convert:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 7F28     		cmp	r0, #127
  28 0002 1AD9     		bls	.L12
  29 0004 91B9     		cbnz	r1, .L3
  30 0006 10B4     		push	{r4}
  31 0008 0E4A     		ldr	r2, .L17
  32 000a C723     		movs	r3, #199
  33 000c 03E0     		b	.L4
  34              	.L16:
  35 000e 8029     		cmp	r1, #128
  36 0010 16D0     		beq	.L9
  37 0012 32F8023F 		ldrh	r3, [r2, #2]!
  38              	.L4:
  39 0016 9842     		cmp	r0, r3
  40 0018 8CB2     		uxth	r4, r1
  41 001a 01F10101 		add	r1, r1, #1
  42 001e F6D1     		bne	.L16
  43 0020 04F18000 		add	r0, r4, #128
  44 0024 80B2     		uxth	r0, r0
  45              	.L2:
  46 0026 5DF8044B 		ldr	r4, [sp], #4
  47 002a 7047     		bx	lr
  48              	.L3:
  49 002c FF28     		cmp	r0, #255
  50 002e 05D8     		bhi	.L8
  51 0030 044B     		ldr	r3, .L17
  52 0032 8038     		subs	r0, r0, #128
  53 0034 33F81000 		ldrh	r0, [r3, r0, lsl #1]
  54 0038 7047     		bx	lr
  55              	.L12:
  56 003a 7047     		bx	lr
  57              	.L8:
ARM GAS  /tmp/ccmq7QPH.s 			page 2


  58 003c 0020     		movs	r0, #0
  59 003e 7047     		bx	lr
  60              	.L9:
  61 0040 0020     		movs	r0, #0
  62 0042 F0E7     		b	.L2
  63              	.L18:
  64              		.align	2
  65              	.L17:
  66 0044 00000000 		.word	.LANCHOR0
  67              		.size	ff_convert, .-ff_convert
  68              		.section	.text.ff_wtoupper,"ax",%progbits
  69              		.align	1
  70              		.p2align 2,,3
  71              		.global	ff_wtoupper
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu fpv4-sp-d16
  76              		.type	ff_wtoupper, %function
  77              	ff_wtoupper:
  78              		@ args = 0, pretend = 0, frame = 0
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80              		@ link register save eliminated.
  81 0000 6128     		cmp	r0, #97
  82 0002 0ED0     		beq	.L24
  83 0004 0849     		ldr	r1, .L28
  84 0006 0122     		movs	r2, #1
  85 0008 6223     		movs	r3, #98
  86              	.L21:
  87 000a 8342     		cmp	r3, r0
  88 000c 05D0     		beq	.L27
  89 000e 31F8023F 		ldrh	r3, [r1, #2]!
  90 0012 0132     		adds	r2, r2, #1
  91 0014 002B     		cmp	r3, #0
  92 0016 F8D1     		bne	.L21
  93              	.L26:
  94 0018 7047     		bx	lr
  95              	.L27:
  96 001a 044B     		ldr	r3, .L28+4
  97 001c 33F81200 		ldrh	r0, [r3, r2, lsl #1]
  98 0020 7047     		bx	lr
  99              	.L24:
 100 0022 4120     		movs	r0, #65
 101 0024 F8E7     		b	.L26
 102              	.L29:
 103 0026 00BF     		.align	2
 104              	.L28:
 105 0028 02000000 		.word	.LANCHOR1+2
 106 002c 00000000 		.word	.LANCHOR2
 107              		.size	ff_wtoupper, .-ff_wtoupper
 108              		.section	.rodata.Tbl,"a",%progbits
 109              		.align	2
 110              		.set	.LANCHOR0,. + 0
 111              		.type	Tbl, %object
 112              		.size	Tbl, 256
 113              	Tbl:
 114 0000 C700     		.short	199
ARM GAS  /tmp/ccmq7QPH.s 			page 3


 115 0002 FC00     		.short	252
 116 0004 E900     		.short	233
 117 0006 E200     		.short	226
 118 0008 E400     		.short	228
 119 000a E000     		.short	224
 120 000c E500     		.short	229
 121 000e E700     		.short	231
 122 0010 EA00     		.short	234
 123 0012 EB00     		.short	235
 124 0014 E800     		.short	232
 125 0016 EF00     		.short	239
 126 0018 EE00     		.short	238
 127 001a EC00     		.short	236
 128 001c C400     		.short	196
 129 001e C500     		.short	197
 130 0020 C900     		.short	201
 131 0022 E600     		.short	230
 132 0024 C600     		.short	198
 133 0026 F400     		.short	244
 134 0028 F600     		.short	246
 135 002a F200     		.short	242
 136 002c FB00     		.short	251
 137 002e F900     		.short	249
 138 0030 FF00     		.short	255
 139 0032 D600     		.short	214
 140 0034 DC00     		.short	220
 141 0036 F800     		.short	248
 142 0038 A300     		.short	163
 143 003a D800     		.short	216
 144 003c D700     		.short	215
 145 003e 9201     		.short	402
 146 0040 E100     		.short	225
 147 0042 ED00     		.short	237
 148 0044 F300     		.short	243
 149 0046 FA00     		.short	250
 150 0048 F100     		.short	241
 151 004a D100     		.short	209
 152 004c AA00     		.short	170
 153 004e BA00     		.short	186
 154 0050 BF00     		.short	191
 155 0052 AE00     		.short	174
 156 0054 AC00     		.short	172
 157 0056 BD00     		.short	189
 158 0058 BC00     		.short	188
 159 005a A100     		.short	161
 160 005c AB00     		.short	171
 161 005e BB00     		.short	187
 162 0060 9125     		.short	9617
 163 0062 9225     		.short	9618
 164 0064 9325     		.short	9619
 165 0066 0225     		.short	9474
 166 0068 2425     		.short	9508
 167 006a C100     		.short	193
 168 006c C200     		.short	194
 169 006e C000     		.short	192
 170 0070 A900     		.short	169
 171 0072 6325     		.short	9571
ARM GAS  /tmp/ccmq7QPH.s 			page 4


 172 0074 5125     		.short	9553
 173 0076 5725     		.short	9559
 174 0078 5D25     		.short	9565
 175 007a A200     		.short	162
 176 007c A500     		.short	165
 177 007e 1025     		.short	9488
 178 0080 1425     		.short	9492
 179 0082 3425     		.short	9524
 180 0084 2C25     		.short	9516
 181 0086 1C25     		.short	9500
 182 0088 0025     		.short	9472
 183 008a 3C25     		.short	9532
 184 008c E300     		.short	227
 185 008e C300     		.short	195
 186 0090 5A25     		.short	9562
 187 0092 5425     		.short	9556
 188 0094 6925     		.short	9577
 189 0096 6625     		.short	9574
 190 0098 6025     		.short	9568
 191 009a 5025     		.short	9552
 192 009c 6C25     		.short	9580
 193 009e A400     		.short	164
 194 00a0 F000     		.short	240
 195 00a2 D000     		.short	208
 196 00a4 CA00     		.short	202
 197 00a6 CB00     		.short	203
 198 00a8 C800     		.short	200
 199 00aa 3101     		.short	305
 200 00ac CD00     		.short	205
 201 00ae CE00     		.short	206
 202 00b0 CF00     		.short	207
 203 00b2 1825     		.short	9496
 204 00b4 0C25     		.short	9484
 205 00b6 8825     		.short	9608
 206 00b8 8425     		.short	9604
 207 00ba A600     		.short	166
 208 00bc CC00     		.short	204
 209 00be 8025     		.short	9600
 210 00c0 D300     		.short	211
 211 00c2 DF00     		.short	223
 212 00c4 D400     		.short	212
 213 00c6 D200     		.short	210
 214 00c8 F500     		.short	245
 215 00ca D500     		.short	213
 216 00cc B500     		.short	181
 217 00ce FE00     		.short	254
 218 00d0 DE00     		.short	222
 219 00d2 DA00     		.short	218
 220 00d4 DB00     		.short	219
 221 00d6 D900     		.short	217
 222 00d8 FD00     		.short	253
 223 00da DD00     		.short	221
 224 00dc AF00     		.short	175
 225 00de B400     		.short	180
 226 00e0 AD00     		.short	173
 227 00e2 B100     		.short	177
 228 00e4 1720     		.short	8215
ARM GAS  /tmp/ccmq7QPH.s 			page 5


 229 00e6 BE00     		.short	190
 230 00e8 B600     		.short	182
 231 00ea A700     		.short	167
 232 00ec F700     		.short	247
 233 00ee B800     		.short	184
 234 00f0 B000     		.short	176
 235 00f2 A800     		.short	168
 236 00f4 B700     		.short	183
 237 00f6 B900     		.short	185
 238 00f8 B300     		.short	179
 239 00fa B200     		.short	178
 240 00fc A025     		.short	9632
 241 00fe A000     		.short	160
 242              		.section	.rodata.tbl_lower.5570,"a",%progbits
 243              		.align	2
 244              		.set	.LANCHOR1,. + 0
 245              		.type	tbl_lower.5570, %object
 246              		.size	tbl_lower.5570, 480
 247              	tbl_lower.5570:
 248 0000 6100     		.short	97
 249 0002 6200     		.short	98
 250 0004 6300     		.short	99
 251 0006 6400     		.short	100
 252 0008 6500     		.short	101
 253 000a 6600     		.short	102
 254 000c 6700     		.short	103
 255 000e 6800     		.short	104
 256 0010 6900     		.short	105
 257 0012 6A00     		.short	106
 258 0014 6B00     		.short	107
 259 0016 6C00     		.short	108
 260 0018 6D00     		.short	109
 261 001a 6E00     		.short	110
 262 001c 6F00     		.short	111
 263 001e 7000     		.short	112
 264 0020 7100     		.short	113
 265 0022 7200     		.short	114
 266 0024 7300     		.short	115
 267 0026 7400     		.short	116
 268 0028 7500     		.short	117
 269 002a 7600     		.short	118
 270 002c 7700     		.short	119
 271 002e 7800     		.short	120
 272 0030 7900     		.short	121
 273 0032 7A00     		.short	122
 274 0034 A100     		.short	161
 275 0036 A200     		.short	162
 276 0038 A300     		.short	163
 277 003a A500     		.short	165
 278 003c AC00     		.short	172
 279 003e AF00     		.short	175
 280 0040 E000     		.short	224
 281 0042 E100     		.short	225
 282 0044 E200     		.short	226
 283 0046 E300     		.short	227
 284 0048 E400     		.short	228
 285 004a E500     		.short	229
ARM GAS  /tmp/ccmq7QPH.s 			page 6


 286 004c E600     		.short	230
 287 004e E700     		.short	231
 288 0050 E800     		.short	232
 289 0052 E900     		.short	233
 290 0054 EA00     		.short	234
 291 0056 EB00     		.short	235
 292 0058 EC00     		.short	236
 293 005a ED00     		.short	237
 294 005c EE00     		.short	238
 295 005e EF00     		.short	239
 296 0060 F000     		.short	240
 297 0062 F100     		.short	241
 298 0064 F200     		.short	242
 299 0066 F300     		.short	243
 300 0068 F400     		.short	244
 301 006a F500     		.short	245
 302 006c F600     		.short	246
 303 006e F800     		.short	248
 304 0070 F900     		.short	249
 305 0072 FA00     		.short	250
 306 0074 FB00     		.short	251
 307 0076 FC00     		.short	252
 308 0078 FD00     		.short	253
 309 007a FE00     		.short	254
 310 007c FF00     		.short	255
 311 007e 0101     		.short	257
 312 0080 0301     		.short	259
 313 0082 0501     		.short	261
 314 0084 0701     		.short	263
 315 0086 0901     		.short	265
 316 0088 0B01     		.short	267
 317 008a 0D01     		.short	269
 318 008c 0F01     		.short	271
 319 008e 1101     		.short	273
 320 0090 1301     		.short	275
 321 0092 1501     		.short	277
 322 0094 1701     		.short	279
 323 0096 1901     		.short	281
 324 0098 1B01     		.short	283
 325 009a 1D01     		.short	285
 326 009c 1F01     		.short	287
 327 009e 2101     		.short	289
 328 00a0 2301     		.short	291
 329 00a2 2501     		.short	293
 330 00a4 2701     		.short	295
 331 00a6 2901     		.short	297
 332 00a8 2B01     		.short	299
 333 00aa 2D01     		.short	301
 334 00ac 2F01     		.short	303
 335 00ae 3101     		.short	305
 336 00b0 3301     		.short	307
 337 00b2 3501     		.short	309
 338 00b4 3701     		.short	311
 339 00b6 3A01     		.short	314
 340 00b8 3C01     		.short	316
 341 00ba 3E01     		.short	318
 342 00bc 4001     		.short	320
ARM GAS  /tmp/ccmq7QPH.s 			page 7


 343 00be 4201     		.short	322
 344 00c0 4401     		.short	324
 345 00c2 4601     		.short	326
 346 00c4 4801     		.short	328
 347 00c6 4B01     		.short	331
 348 00c8 4D01     		.short	333
 349 00ca 4F01     		.short	335
 350 00cc 5101     		.short	337
 351 00ce 5301     		.short	339
 352 00d0 5501     		.short	341
 353 00d2 5701     		.short	343
 354 00d4 5901     		.short	345
 355 00d6 5B01     		.short	347
 356 00d8 5D01     		.short	349
 357 00da 5F01     		.short	351
 358 00dc 6101     		.short	353
 359 00de 6301     		.short	355
 360 00e0 6501     		.short	357
 361 00e2 6701     		.short	359
 362 00e4 6901     		.short	361
 363 00e6 6B01     		.short	363
 364 00e8 6D01     		.short	365
 365 00ea 6F01     		.short	367
 366 00ec 7101     		.short	369
 367 00ee 7301     		.short	371
 368 00f0 7501     		.short	373
 369 00f2 7701     		.short	375
 370 00f4 7A01     		.short	378
 371 00f6 7C01     		.short	380
 372 00f8 7E01     		.short	382
 373 00fa 9201     		.short	402
 374 00fc B103     		.short	945
 375 00fe B203     		.short	946
 376 0100 B303     		.short	947
 377 0102 B403     		.short	948
 378 0104 B503     		.short	949
 379 0106 B603     		.short	950
 380 0108 B703     		.short	951
 381 010a B803     		.short	952
 382 010c B903     		.short	953
 383 010e BA03     		.short	954
 384 0110 BB03     		.short	955
 385 0112 BC03     		.short	956
 386 0114 BD03     		.short	957
 387 0116 BE03     		.short	958
 388 0118 BF03     		.short	959
 389 011a C003     		.short	960
 390 011c C103     		.short	961
 391 011e C303     		.short	963
 392 0120 C403     		.short	964
 393 0122 C503     		.short	965
 394 0124 C603     		.short	966
 395 0126 C703     		.short	967
 396 0128 C803     		.short	968
 397 012a C903     		.short	969
 398 012c CA03     		.short	970
 399 012e 3004     		.short	1072
ARM GAS  /tmp/ccmq7QPH.s 			page 8


 400 0130 3104     		.short	1073
 401 0132 3204     		.short	1074
 402 0134 3304     		.short	1075
 403 0136 3404     		.short	1076
 404 0138 3504     		.short	1077
 405 013a 3604     		.short	1078
 406 013c 3704     		.short	1079
 407 013e 3804     		.short	1080
 408 0140 3904     		.short	1081
 409 0142 3A04     		.short	1082
 410 0144 3B04     		.short	1083
 411 0146 3C04     		.short	1084
 412 0148 3D04     		.short	1085
 413 014a 3E04     		.short	1086
 414 014c 3F04     		.short	1087
 415 014e 4004     		.short	1088
 416 0150 4104     		.short	1089
 417 0152 4204     		.short	1090
 418 0154 4304     		.short	1091
 419 0156 4404     		.short	1092
 420 0158 4504     		.short	1093
 421 015a 4604     		.short	1094
 422 015c 4704     		.short	1095
 423 015e 4804     		.short	1096
 424 0160 4904     		.short	1097
 425 0162 4A04     		.short	1098
 426 0164 4B04     		.short	1099
 427 0166 4C04     		.short	1100
 428 0168 4D04     		.short	1101
 429 016a 4E04     		.short	1102
 430 016c 4F04     		.short	1103
 431 016e 5104     		.short	1105
 432 0170 5204     		.short	1106
 433 0172 5304     		.short	1107
 434 0174 5404     		.short	1108
 435 0176 5504     		.short	1109
 436 0178 5604     		.short	1110
 437 017a 5704     		.short	1111
 438 017c 5804     		.short	1112
 439 017e 5904     		.short	1113
 440 0180 5A04     		.short	1114
 441 0182 5B04     		.short	1115
 442 0184 5C04     		.short	1116
 443 0186 5E04     		.short	1118
 444 0188 5F04     		.short	1119
 445 018a 7021     		.short	8560
 446 018c 7121     		.short	8561
 447 018e 7221     		.short	8562
 448 0190 7321     		.short	8563
 449 0192 7421     		.short	8564
 450 0194 7521     		.short	8565
 451 0196 7621     		.short	8566
 452 0198 7721     		.short	8567
 453 019a 7821     		.short	8568
 454 019c 7921     		.short	8569
 455 019e 7A21     		.short	8570
 456 01a0 7B21     		.short	8571
ARM GAS  /tmp/ccmq7QPH.s 			page 9


 457 01a2 7C21     		.short	8572
 458 01a4 7D21     		.short	8573
 459 01a6 7E21     		.short	8574
 460 01a8 7F21     		.short	8575
 461 01aa 41FF     		.short	-191
 462 01ac 42FF     		.short	-190
 463 01ae 43FF     		.short	-189
 464 01b0 44FF     		.short	-188
 465 01b2 45FF     		.short	-187
 466 01b4 46FF     		.short	-186
 467 01b6 47FF     		.short	-185
 468 01b8 48FF     		.short	-184
 469 01ba 49FF     		.short	-183
 470 01bc 4AFF     		.short	-182
 471 01be 4BFF     		.short	-181
 472 01c0 4CFF     		.short	-180
 473 01c2 4DFF     		.short	-179
 474 01c4 4EFF     		.short	-178
 475 01c6 4FFF     		.short	-177
 476 01c8 50FF     		.short	-176
 477 01ca 51FF     		.short	-175
 478 01cc 52FF     		.short	-174
 479 01ce 53FF     		.short	-173
 480 01d0 54FF     		.short	-172
 481 01d2 55FF     		.short	-171
 482 01d4 56FF     		.short	-170
 483 01d6 57FF     		.short	-169
 484 01d8 58FF     		.short	-168
 485 01da 59FF     		.short	-167
 486 01dc 5AFF     		.short	-166
 487 01de 0000     		.short	0
 488              		.section	.rodata.tbl_upper.5571,"a",%progbits
 489              		.align	2
 490              		.set	.LANCHOR2,. + 0
 491              		.type	tbl_upper.5571, %object
 492              		.size	tbl_upper.5571, 480
 493              	tbl_upper.5571:
 494 0000 4100     		.short	65
 495 0002 4200     		.short	66
 496 0004 4300     		.short	67
 497 0006 4400     		.short	68
 498 0008 4500     		.short	69
 499 000a 4600     		.short	70
 500 000c 4700     		.short	71
 501 000e 4800     		.short	72
 502 0010 4900     		.short	73
 503 0012 4A00     		.short	74
 504 0014 4B00     		.short	75
 505 0016 4C00     		.short	76
 506 0018 4D00     		.short	77
 507 001a 4E00     		.short	78
 508 001c 4F00     		.short	79
 509 001e 5000     		.short	80
 510 0020 5100     		.short	81
 511 0022 5200     		.short	82
 512 0024 5300     		.short	83
 513 0026 5400     		.short	84
ARM GAS  /tmp/ccmq7QPH.s 			page 10


 514 0028 5500     		.short	85
 515 002a 5600     		.short	86
 516 002c 5700     		.short	87
 517 002e 5800     		.short	88
 518 0030 5900     		.short	89
 519 0032 5A00     		.short	90
 520 0034 2100     		.short	33
 521 0036 E0FF     		.short	-32
 522 0038 E1FF     		.short	-31
 523 003a E5FF     		.short	-27
 524 003c E2FF     		.short	-30
 525 003e E3FF     		.short	-29
 526 0040 C000     		.short	192
 527 0042 C100     		.short	193
 528 0044 C200     		.short	194
 529 0046 C300     		.short	195
 530 0048 C400     		.short	196
 531 004a C500     		.short	197
 532 004c C600     		.short	198
 533 004e C700     		.short	199
 534 0050 C800     		.short	200
 535 0052 C900     		.short	201
 536 0054 CA00     		.short	202
 537 0056 CB00     		.short	203
 538 0058 CC00     		.short	204
 539 005a CD00     		.short	205
 540 005c CE00     		.short	206
 541 005e CF00     		.short	207
 542 0060 D000     		.short	208
 543 0062 D100     		.short	209
 544 0064 D200     		.short	210
 545 0066 D300     		.short	211
 546 0068 D400     		.short	212
 547 006a D500     		.short	213
 548 006c D600     		.short	214
 549 006e D800     		.short	216
 550 0070 D900     		.short	217
 551 0072 DA00     		.short	218
 552 0074 DB00     		.short	219
 553 0076 DC00     		.short	220
 554 0078 DD00     		.short	221
 555 007a DE00     		.short	222
 556 007c 7801     		.short	376
 557 007e 0001     		.short	256
 558 0080 0201     		.short	258
 559 0082 0401     		.short	260
 560 0084 0601     		.short	262
 561 0086 0801     		.short	264
 562 0088 0A01     		.short	266
 563 008a 0C01     		.short	268
 564 008c 0E01     		.short	270
 565 008e 1001     		.short	272
 566 0090 1201     		.short	274
 567 0092 1401     		.short	276
 568 0094 1601     		.short	278
 569 0096 1801     		.short	280
 570 0098 1A01     		.short	282
ARM GAS  /tmp/ccmq7QPH.s 			page 11


 571 009a 1C01     		.short	284
 572 009c 1E01     		.short	286
 573 009e 2001     		.short	288
 574 00a0 2201     		.short	290
 575 00a2 2401     		.short	292
 576 00a4 2601     		.short	294
 577 00a6 2801     		.short	296
 578 00a8 2A01     		.short	298
 579 00aa 2C01     		.short	300
 580 00ac 2E01     		.short	302
 581 00ae 3001     		.short	304
 582 00b0 3201     		.short	306
 583 00b2 3401     		.short	308
 584 00b4 3601     		.short	310
 585 00b6 3901     		.short	313
 586 00b8 3B01     		.short	315
 587 00ba 3D01     		.short	317
 588 00bc 3F01     		.short	319
 589 00be 4101     		.short	321
 590 00c0 4301     		.short	323
 591 00c2 4501     		.short	325
 592 00c4 4701     		.short	327
 593 00c6 4A01     		.short	330
 594 00c8 4C01     		.short	332
 595 00ca 4E01     		.short	334
 596 00cc 5001     		.short	336
 597 00ce 5201     		.short	338
 598 00d0 5401     		.short	340
 599 00d2 5601     		.short	342
 600 00d4 5801     		.short	344
 601 00d6 5A01     		.short	346
 602 00d8 5C01     		.short	348
 603 00da 5E01     		.short	350
 604 00dc 6001     		.short	352
 605 00de 6201     		.short	354
 606 00e0 6401     		.short	356
 607 00e2 6601     		.short	358
 608 00e4 6801     		.short	360
 609 00e6 6A01     		.short	362
 610 00e8 6C01     		.short	364
 611 00ea 6E01     		.short	366
 612 00ec 7001     		.short	368
 613 00ee 7201     		.short	370
 614 00f0 7401     		.short	372
 615 00f2 7601     		.short	374
 616 00f4 7901     		.short	377
 617 00f6 7B01     		.short	379
 618 00f8 7D01     		.short	381
 619 00fa 9101     		.short	401
 620 00fc 9103     		.short	913
 621 00fe 9203     		.short	914
 622 0100 9303     		.short	915
 623 0102 9403     		.short	916
 624 0104 9503     		.short	917
 625 0106 9603     		.short	918
 626 0108 9703     		.short	919
 627 010a 9803     		.short	920
ARM GAS  /tmp/ccmq7QPH.s 			page 12


 628 010c 9903     		.short	921
 629 010e 9A03     		.short	922
 630 0110 9B03     		.short	923
 631 0112 9C03     		.short	924
 632 0114 9D03     		.short	925
 633 0116 9E03     		.short	926
 634 0118 9F03     		.short	927
 635 011a A003     		.short	928
 636 011c A103     		.short	929
 637 011e A303     		.short	931
 638 0120 A403     		.short	932
 639 0122 A503     		.short	933
 640 0124 A603     		.short	934
 641 0126 A703     		.short	935
 642 0128 A803     		.short	936
 643 012a A903     		.short	937
 644 012c AA03     		.short	938
 645 012e 1004     		.short	1040
 646 0130 1104     		.short	1041
 647 0132 1204     		.short	1042
 648 0134 1304     		.short	1043
 649 0136 1404     		.short	1044
 650 0138 1504     		.short	1045
 651 013a 1604     		.short	1046
 652 013c 1704     		.short	1047
 653 013e 1804     		.short	1048
 654 0140 1904     		.short	1049
 655 0142 1A04     		.short	1050
 656 0144 1B04     		.short	1051
 657 0146 1C04     		.short	1052
 658 0148 1D04     		.short	1053
 659 014a 1E04     		.short	1054
 660 014c 1F04     		.short	1055
 661 014e 2004     		.short	1056
 662 0150 2104     		.short	1057
 663 0152 2204     		.short	1058
 664 0154 2304     		.short	1059
 665 0156 2404     		.short	1060
 666 0158 2504     		.short	1061
 667 015a 2604     		.short	1062
 668 015c 2704     		.short	1063
 669 015e 2804     		.short	1064
 670 0160 2904     		.short	1065
 671 0162 2A04     		.short	1066
 672 0164 2B04     		.short	1067
 673 0166 2C04     		.short	1068
 674 0168 2D04     		.short	1069
 675 016a 2E04     		.short	1070
 676 016c 2F04     		.short	1071
 677 016e 0104     		.short	1025
 678 0170 0204     		.short	1026
 679 0172 0304     		.short	1027
 680 0174 0404     		.short	1028
 681 0176 0504     		.short	1029
 682 0178 0604     		.short	1030
 683 017a 0704     		.short	1031
 684 017c 0804     		.short	1032
ARM GAS  /tmp/ccmq7QPH.s 			page 13


 685 017e 0904     		.short	1033
 686 0180 0A04     		.short	1034
 687 0182 0B04     		.short	1035
 688 0184 0C04     		.short	1036
 689 0186 0E04     		.short	1038
 690 0188 0F04     		.short	1039
 691 018a 6021     		.short	8544
 692 018c 6121     		.short	8545
 693 018e 6221     		.short	8546
 694 0190 6321     		.short	8547
 695 0192 6421     		.short	8548
 696 0194 6521     		.short	8549
 697 0196 6621     		.short	8550
 698 0198 6721     		.short	8551
 699 019a 6821     		.short	8552
 700 019c 6921     		.short	8553
 701 019e 6A21     		.short	8554
 702 01a0 6B21     		.short	8555
 703 01a2 6C21     		.short	8556
 704 01a4 6D21     		.short	8557
 705 01a6 6E21     		.short	8558
 706 01a8 6F21     		.short	8559
 707 01aa 21FF     		.short	-223
 708 01ac 22FF     		.short	-222
 709 01ae 23FF     		.short	-221
 710 01b0 24FF     		.short	-220
 711 01b2 25FF     		.short	-219
 712 01b4 26FF     		.short	-218
 713 01b6 27FF     		.short	-217
 714 01b8 28FF     		.short	-216
 715 01ba 29FF     		.short	-215
 716 01bc 2AFF     		.short	-214
 717 01be 2BFF     		.short	-213
 718 01c0 2CFF     		.short	-212
 719 01c2 2DFF     		.short	-211
 720 01c4 2EFF     		.short	-210
 721 01c6 2FFF     		.short	-209
 722 01c8 30FF     		.short	-208
 723 01ca 31FF     		.short	-207
 724 01cc 32FF     		.short	-206
 725 01ce 33FF     		.short	-205
 726 01d0 34FF     		.short	-204
 727 01d2 35FF     		.short	-203
 728 01d4 36FF     		.short	-202
 729 01d6 37FF     		.short	-201
 730 01d8 38FF     		.short	-200
 731 01da 39FF     		.short	-199
 732 01dc 3AFF     		.short	-198
 733 01de 0000     		.short	0
 734              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
