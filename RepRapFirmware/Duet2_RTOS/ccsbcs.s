ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2k41Ca.s 			page 1


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
  14              		.text
  15              		.section	.text.ff_convert,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	ff_convert
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	ff_convert, %function
  24              	ff_convert:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 7F28     		cmp	r0, #127
  29 0002 1AD9     		bls	.L12
  30 0004 91B9     		cbnz	r1, .L3
  31 0006 10B4     		push	{r4}
  32 0008 0E4A     		ldr	r2, .L17
  33 000a C723     		movs	r3, #199
  34 000c 03E0     		b	.L4
  35              	.L16:
  36 000e 8029     		cmp	r1, #128
  37 0010 16D0     		beq	.L9
  38 0012 32F8023F 		ldrh	r3, [r2, #2]!
  39              	.L4:
  40 0016 9842     		cmp	r0, r3
  41 0018 8CB2     		uxth	r4, r1
  42 001a 01F10101 		add	r1, r1, #1
  43 001e F6D1     		bne	.L16
  44 0020 04F18000 		add	r0, r4, #128
  45 0024 80B2     		uxth	r0, r0
  46              	.L2:
  47 0026 5DF8044B 		ldr	r4, [sp], #4
  48 002a 7047     		bx	lr
  49              	.L3:
  50 002c FF28     		cmp	r0, #255
  51 002e 05D8     		bhi	.L8
  52 0030 044B     		ldr	r3, .L17
  53 0032 8038     		subs	r0, r0, #128
  54 0034 33F81000 		ldrh	r0, [r3, r0, lsl #1]
  55 0038 7047     		bx	lr
  56              	.L12:
  57 003a 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2k41Ca.s 			page 2


  58              	.L8:
  59 003c 0020     		movs	r0, #0
  60 003e 7047     		bx	lr
  61              	.L9:
  62 0040 0020     		movs	r0, #0
  63 0042 F0E7     		b	.L2
  64              	.L18:
  65              		.align	2
  66              	.L17:
  67 0044 00000000 		.word	.LANCHOR0
  68              		.size	ff_convert, .-ff_convert
  69              		.section	.text.ff_wtoupper,"ax",%progbits
  70              		.align	1
  71              		.p2align 2,,3
  72              		.global	ff_wtoupper
  73              		.syntax unified
  74              		.thumb
  75              		.thumb_func
  76              		.fpu fpv4-sp-d16
  77              		.type	ff_wtoupper, %function
  78              	ff_wtoupper:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81              		@ link register save eliminated.
  82 0000 6128     		cmp	r0, #97
  83 0002 0ED0     		beq	.L24
  84 0004 0849     		ldr	r1, .L28
  85 0006 0122     		movs	r2, #1
  86 0008 6223     		movs	r3, #98
  87              	.L21:
  88 000a 8342     		cmp	r3, r0
  89 000c 05D0     		beq	.L27
  90 000e 31F8023F 		ldrh	r3, [r1, #2]!
  91 0012 0132     		adds	r2, r2, #1
  92 0014 002B     		cmp	r3, #0
  93 0016 F8D1     		bne	.L21
  94              	.L26:
  95 0018 7047     		bx	lr
  96              	.L27:
  97 001a 044B     		ldr	r3, .L28+4
  98 001c 33F81200 		ldrh	r0, [r3, r2, lsl #1]
  99 0020 7047     		bx	lr
 100              	.L24:
 101 0022 4120     		movs	r0, #65
 102 0024 F8E7     		b	.L26
 103              	.L29:
 104 0026 00BF     		.align	2
 105              	.L28:
 106 0028 02000000 		.word	.LANCHOR1+2
 107 002c 00000000 		.word	.LANCHOR2
 108              		.size	ff_wtoupper, .-ff_wtoupper
 109              		.section	.rodata.Tbl,"a",%progbits
 110              		.align	2
 111              		.set	.LANCHOR0,. + 0
 112              		.type	Tbl, %object
 113              		.size	Tbl, 256
 114              	Tbl:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2k41Ca.s 			page 3


 115 0000 C700     		.short	199
 116 0002 FC00     		.short	252
 117 0004 E900     		.short	233
 118 0006 E200     		.short	226
 119 0008 E400     		.short	228
 120 000a E000     		.short	224
 121 000c E500     		.short	229
 122 000e E700     		.short	231
 123 0010 EA00     		.short	234
 124 0012 EB00     		.short	235
 125 0014 E800     		.short	232
 126 0016 EF00     		.short	239
 127 0018 EE00     		.short	238
 128 001a EC00     		.short	236
 129 001c C400     		.short	196
 130 001e C500     		.short	197
 131 0020 C900     		.short	201
 132 0022 E600     		.short	230
 133 0024 C600     		.short	198
 134 0026 F400     		.short	244
 135 0028 F600     		.short	246
 136 002a F200     		.short	242
 137 002c FB00     		.short	251
 138 002e F900     		.short	249
 139 0030 FF00     		.short	255
 140 0032 D600     		.short	214
 141 0034 DC00     		.short	220
 142 0036 F800     		.short	248
 143 0038 A300     		.short	163
 144 003a D800     		.short	216
 145 003c D700     		.short	215
 146 003e 9201     		.short	402
 147 0040 E100     		.short	225
 148 0042 ED00     		.short	237
 149 0044 F300     		.short	243
 150 0046 FA00     		.short	250
 151 0048 F100     		.short	241
 152 004a D100     		.short	209
 153 004c AA00     		.short	170
 154 004e BA00     		.short	186
 155 0050 BF00     		.short	191
 156 0052 AE00     		.short	174
 157 0054 AC00     		.short	172
 158 0056 BD00     		.short	189
 159 0058 BC00     		.short	188
 160 005a A100     		.short	161
 161 005c AB00     		.short	171
 162 005e BB00     		.short	187
 163 0060 9125     		.short	9617
 164 0062 9225     		.short	9618
 165 0064 9325     		.short	9619
 166 0066 0225     		.short	9474
 167 0068 2425     		.short	9508
 168 006a C100     		.short	193
 169 006c C200     		.short	194
 170 006e C000     		.short	192
 171 0070 A900     		.short	169
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2k41Ca.s 			page 4


 172 0072 6325     		.short	9571
 173 0074 5125     		.short	9553
 174 0076 5725     		.short	9559
 175 0078 5D25     		.short	9565
 176 007a A200     		.short	162
 177 007c A500     		.short	165
 178 007e 1025     		.short	9488
 179 0080 1425     		.short	9492
 180 0082 3425     		.short	9524
 181 0084 2C25     		.short	9516
 182 0086 1C25     		.short	9500
 183 0088 0025     		.short	9472
 184 008a 3C25     		.short	9532
 185 008c E300     		.short	227
 186 008e C300     		.short	195
 187 0090 5A25     		.short	9562
 188 0092 5425     		.short	9556
 189 0094 6925     		.short	9577
 190 0096 6625     		.short	9574
 191 0098 6025     		.short	9568
 192 009a 5025     		.short	9552
 193 009c 6C25     		.short	9580
 194 009e A400     		.short	164
 195 00a0 F000     		.short	240
 196 00a2 D000     		.short	208
 197 00a4 CA00     		.short	202
 198 00a6 CB00     		.short	203
 199 00a8 C800     		.short	200
 200 00aa 3101     		.short	305
 201 00ac CD00     		.short	205
 202 00ae CE00     		.short	206
 203 00b0 CF00     		.short	207
 204 00b2 1825     		.short	9496
 205 00b4 0C25     		.short	9484
 206 00b6 8825     		.short	9608
 207 00b8 8425     		.short	9604
 208 00ba A600     		.short	166
 209 00bc CC00     		.short	204
 210 00be 8025     		.short	9600
 211 00c0 D300     		.short	211
 212 00c2 DF00     		.short	223
 213 00c4 D400     		.short	212
 214 00c6 D200     		.short	210
 215 00c8 F500     		.short	245
 216 00ca D500     		.short	213
 217 00cc B500     		.short	181
 218 00ce FE00     		.short	254
 219 00d0 DE00     		.short	222
 220 00d2 DA00     		.short	218
 221 00d4 DB00     		.short	219
 222 00d6 D900     		.short	217
 223 00d8 FD00     		.short	253
 224 00da DD00     		.short	221
 225 00dc AF00     		.short	175
 226 00de B400     		.short	180
 227 00e0 AD00     		.short	173
 228 00e2 B100     		.short	177
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2k41Ca.s 			page 5


 229 00e4 1720     		.short	8215
 230 00e6 BE00     		.short	190
 231 00e8 B600     		.short	182
 232 00ea A700     		.short	167
 233 00ec F700     		.short	247
 234 00ee B800     		.short	184
 235 00f0 B000     		.short	176
 236 00f2 A800     		.short	168
 237 00f4 B700     		.short	183
 238 00f6 B900     		.short	185
 239 00f8 B300     		.short	179
 240 00fa B200     		.short	178
 241 00fc A025     		.short	9632
 242 00fe A000     		.short	160
 243              		.section	.rodata.tbl_lower.5581,"a",%progbits
 244              		.align	2
 245              		.set	.LANCHOR1,. + 0
 246              		.type	tbl_lower.5581, %object
 247              		.size	tbl_lower.5581, 480
 248              	tbl_lower.5581:
 249 0000 6100     		.short	97
 250 0002 6200     		.short	98
 251 0004 6300     		.short	99
 252 0006 6400     		.short	100
 253 0008 6500     		.short	101
 254 000a 6600     		.short	102
 255 000c 6700     		.short	103
 256 000e 6800     		.short	104
 257 0010 6900     		.short	105
 258 0012 6A00     		.short	106
 259 0014 6B00     		.short	107
 260 0016 6C00     		.short	108
 261 0018 6D00     		.short	109
 262 001a 6E00     		.short	110
 263 001c 6F00     		.short	111
 264 001e 7000     		.short	112
 265 0020 7100     		.short	113
 266 0022 7200     		.short	114
 267 0024 7300     		.short	115
 268 0026 7400     		.short	116
 269 0028 7500     		.short	117
 270 002a 7600     		.short	118
 271 002c 7700     		.short	119
 272 002e 7800     		.short	120
 273 0030 7900     		.short	121
 274 0032 7A00     		.short	122
 275 0034 A100     		.short	161
 276 0036 A200     		.short	162
 277 0038 A300     		.short	163
 278 003a A500     		.short	165
 279 003c AC00     		.short	172
 280 003e AF00     		.short	175
 281 0040 E000     		.short	224
 282 0042 E100     		.short	225
 283 0044 E200     		.short	226
 284 0046 E300     		.short	227
 285 0048 E400     		.short	228
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2k41Ca.s 			page 6


 286 004a E500     		.short	229
 287 004c E600     		.short	230
 288 004e E700     		.short	231
 289 0050 E800     		.short	232
 290 0052 E900     		.short	233
 291 0054 EA00     		.short	234
 292 0056 EB00     		.short	235
 293 0058 EC00     		.short	236
 294 005a ED00     		.short	237
 295 005c EE00     		.short	238
 296 005e EF00     		.short	239
 297 0060 F000     		.short	240
 298 0062 F100     		.short	241
 299 0064 F200     		.short	242
 300 0066 F300     		.short	243
 301 0068 F400     		.short	244
 302 006a F500     		.short	245
 303 006c F600     		.short	246
 304 006e F800     		.short	248
 305 0070 F900     		.short	249
 306 0072 FA00     		.short	250
 307 0074 FB00     		.short	251
 308 0076 FC00     		.short	252
 309 0078 FD00     		.short	253
 310 007a FE00     		.short	254
 311 007c FF00     		.short	255
 312 007e 0101     		.short	257
 313 0080 0301     		.short	259
 314 0082 0501     		.short	261
 315 0084 0701     		.short	263
 316 0086 0901     		.short	265
 317 0088 0B01     		.short	267
 318 008a 0D01     		.short	269
 319 008c 0F01     		.short	271
 320 008e 1101     		.short	273
 321 0090 1301     		.short	275
 322 0092 1501     		.short	277
 323 0094 1701     		.short	279
 324 0096 1901     		.short	281
 325 0098 1B01     		.short	283
 326 009a 1D01     		.short	285
 327 009c 1F01     		.short	287
 328 009e 2101     		.short	289
 329 00a0 2301     		.short	291
 330 00a2 2501     		.short	293
 331 00a4 2701     		.short	295
 332 00a6 2901     		.short	297
 333 00a8 2B01     		.short	299
 334 00aa 2D01     		.short	301
 335 00ac 2F01     		.short	303
 336 00ae 3101     		.short	305
 337 00b0 3301     		.short	307
 338 00b2 3501     		.short	309
 339 00b4 3701     		.short	311
 340 00b6 3A01     		.short	314
 341 00b8 3C01     		.short	316
 342 00ba 3E01     		.short	318
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2k41Ca.s 			page 7


 343 00bc 4001     		.short	320
 344 00be 4201     		.short	322
 345 00c0 4401     		.short	324
 346 00c2 4601     		.short	326
 347 00c4 4801     		.short	328
 348 00c6 4B01     		.short	331
 349 00c8 4D01     		.short	333
 350 00ca 4F01     		.short	335
 351 00cc 5101     		.short	337
 352 00ce 5301     		.short	339
 353 00d0 5501     		.short	341
 354 00d2 5701     		.short	343
 355 00d4 5901     		.short	345
 356 00d6 5B01     		.short	347
 357 00d8 5D01     		.short	349
 358 00da 5F01     		.short	351
 359 00dc 6101     		.short	353
 360 00de 6301     		.short	355
 361 00e0 6501     		.short	357
 362 00e2 6701     		.short	359
 363 00e4 6901     		.short	361
 364 00e6 6B01     		.short	363
 365 00e8 6D01     		.short	365
 366 00ea 6F01     		.short	367
 367 00ec 7101     		.short	369
 368 00ee 7301     		.short	371
 369 00f0 7501     		.short	373
 370 00f2 7701     		.short	375
 371 00f4 7A01     		.short	378
 372 00f6 7C01     		.short	380
 373 00f8 7E01     		.short	382
 374 00fa 9201     		.short	402
 375 00fc B103     		.short	945
 376 00fe B203     		.short	946
 377 0100 B303     		.short	947
 378 0102 B403     		.short	948
 379 0104 B503     		.short	949
 380 0106 B603     		.short	950
 381 0108 B703     		.short	951
 382 010a B803     		.short	952
 383 010c B903     		.short	953
 384 010e BA03     		.short	954
 385 0110 BB03     		.short	955
 386 0112 BC03     		.short	956
 387 0114 BD03     		.short	957
 388 0116 BE03     		.short	958
 389 0118 BF03     		.short	959
 390 011a C003     		.short	960
 391 011c C103     		.short	961
 392 011e C303     		.short	963
 393 0120 C403     		.short	964
 394 0122 C503     		.short	965
 395 0124 C603     		.short	966
 396 0126 C703     		.short	967
 397 0128 C803     		.short	968
 398 012a C903     		.short	969
 399 012c CA03     		.short	970
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2k41Ca.s 			page 8


 400 012e 3004     		.short	1072
 401 0130 3104     		.short	1073
 402 0132 3204     		.short	1074
 403 0134 3304     		.short	1075
 404 0136 3404     		.short	1076
 405 0138 3504     		.short	1077
 406 013a 3604     		.short	1078
 407 013c 3704     		.short	1079
 408 013e 3804     		.short	1080
 409 0140 3904     		.short	1081
 410 0142 3A04     		.short	1082
 411 0144 3B04     		.short	1083
 412 0146 3C04     		.short	1084
 413 0148 3D04     		.short	1085
 414 014a 3E04     		.short	1086
 415 014c 3F04     		.short	1087
 416 014e 4004     		.short	1088
 417 0150 4104     		.short	1089
 418 0152 4204     		.short	1090
 419 0154 4304     		.short	1091
 420 0156 4404     		.short	1092
 421 0158 4504     		.short	1093
 422 015a 4604     		.short	1094
 423 015c 4704     		.short	1095
 424 015e 4804     		.short	1096
 425 0160 4904     		.short	1097
 426 0162 4A04     		.short	1098
 427 0164 4B04     		.short	1099
 428 0166 4C04     		.short	1100
 429 0168 4D04     		.short	1101
 430 016a 4E04     		.short	1102
 431 016c 4F04     		.short	1103
 432 016e 5104     		.short	1105
 433 0170 5204     		.short	1106
 434 0172 5304     		.short	1107
 435 0174 5404     		.short	1108
 436 0176 5504     		.short	1109
 437 0178 5604     		.short	1110
 438 017a 5704     		.short	1111
 439 017c 5804     		.short	1112
 440 017e 5904     		.short	1113
 441 0180 5A04     		.short	1114
 442 0182 5B04     		.short	1115
 443 0184 5C04     		.short	1116
 444 0186 5E04     		.short	1118
 445 0188 5F04     		.short	1119
 446 018a 7021     		.short	8560
 447 018c 7121     		.short	8561
 448 018e 7221     		.short	8562
 449 0190 7321     		.short	8563
 450 0192 7421     		.short	8564
 451 0194 7521     		.short	8565
 452 0196 7621     		.short	8566
 453 0198 7721     		.short	8567
 454 019a 7821     		.short	8568
 455 019c 7921     		.short	8569
 456 019e 7A21     		.short	8570
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2k41Ca.s 			page 9


 457 01a0 7B21     		.short	8571
 458 01a2 7C21     		.short	8572
 459 01a4 7D21     		.short	8573
 460 01a6 7E21     		.short	8574
 461 01a8 7F21     		.short	8575
 462 01aa 41FF     		.short	-191
 463 01ac 42FF     		.short	-190
 464 01ae 43FF     		.short	-189
 465 01b0 44FF     		.short	-188
 466 01b2 45FF     		.short	-187
 467 01b4 46FF     		.short	-186
 468 01b6 47FF     		.short	-185
 469 01b8 48FF     		.short	-184
 470 01ba 49FF     		.short	-183
 471 01bc 4AFF     		.short	-182
 472 01be 4BFF     		.short	-181
 473 01c0 4CFF     		.short	-180
 474 01c2 4DFF     		.short	-179
 475 01c4 4EFF     		.short	-178
 476 01c6 4FFF     		.short	-177
 477 01c8 50FF     		.short	-176
 478 01ca 51FF     		.short	-175
 479 01cc 52FF     		.short	-174
 480 01ce 53FF     		.short	-173
 481 01d0 54FF     		.short	-172
 482 01d2 55FF     		.short	-171
 483 01d4 56FF     		.short	-170
 484 01d6 57FF     		.short	-169
 485 01d8 58FF     		.short	-168
 486 01da 59FF     		.short	-167
 487 01dc 5AFF     		.short	-166
 488 01de 0000     		.short	0
 489              		.section	.rodata.tbl_upper.5582,"a",%progbits
 490              		.align	2
 491              		.set	.LANCHOR2,. + 0
 492              		.type	tbl_upper.5582, %object
 493              		.size	tbl_upper.5582, 480
 494              	tbl_upper.5582:
 495 0000 4100     		.short	65
 496 0002 4200     		.short	66
 497 0004 4300     		.short	67
 498 0006 4400     		.short	68
 499 0008 4500     		.short	69
 500 000a 4600     		.short	70
 501 000c 4700     		.short	71
 502 000e 4800     		.short	72
 503 0010 4900     		.short	73
 504 0012 4A00     		.short	74
 505 0014 4B00     		.short	75
 506 0016 4C00     		.short	76
 507 0018 4D00     		.short	77
 508 001a 4E00     		.short	78
 509 001c 4F00     		.short	79
 510 001e 5000     		.short	80
 511 0020 5100     		.short	81
 512 0022 5200     		.short	82
 513 0024 5300     		.short	83
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2k41Ca.s 			page 10


 514 0026 5400     		.short	84
 515 0028 5500     		.short	85
 516 002a 5600     		.short	86
 517 002c 5700     		.short	87
 518 002e 5800     		.short	88
 519 0030 5900     		.short	89
 520 0032 5A00     		.short	90
 521 0034 2100     		.short	33
 522 0036 E0FF     		.short	-32
 523 0038 E1FF     		.short	-31
 524 003a E5FF     		.short	-27
 525 003c E2FF     		.short	-30
 526 003e E3FF     		.short	-29
 527 0040 C000     		.short	192
 528 0042 C100     		.short	193
 529 0044 C200     		.short	194
 530 0046 C300     		.short	195
 531 0048 C400     		.short	196
 532 004a C500     		.short	197
 533 004c C600     		.short	198
 534 004e C700     		.short	199
 535 0050 C800     		.short	200
 536 0052 C900     		.short	201
 537 0054 CA00     		.short	202
 538 0056 CB00     		.short	203
 539 0058 CC00     		.short	204
 540 005a CD00     		.short	205
 541 005c CE00     		.short	206
 542 005e CF00     		.short	207
 543 0060 D000     		.short	208
 544 0062 D100     		.short	209
 545 0064 D200     		.short	210
 546 0066 D300     		.short	211
 547 0068 D400     		.short	212
 548 006a D500     		.short	213
 549 006c D600     		.short	214
 550 006e D800     		.short	216
 551 0070 D900     		.short	217
 552 0072 DA00     		.short	218
 553 0074 DB00     		.short	219
 554 0076 DC00     		.short	220
 555 0078 DD00     		.short	221
 556 007a DE00     		.short	222
 557 007c 7801     		.short	376
 558 007e 0001     		.short	256
 559 0080 0201     		.short	258
 560 0082 0401     		.short	260
 561 0084 0601     		.short	262
 562 0086 0801     		.short	264
 563 0088 0A01     		.short	266
 564 008a 0C01     		.short	268
 565 008c 0E01     		.short	270
 566 008e 1001     		.short	272
 567 0090 1201     		.short	274
 568 0092 1401     		.short	276
 569 0094 1601     		.short	278
 570 0096 1801     		.short	280
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2k41Ca.s 			page 11


 571 0098 1A01     		.short	282
 572 009a 1C01     		.short	284
 573 009c 1E01     		.short	286
 574 009e 2001     		.short	288
 575 00a0 2201     		.short	290
 576 00a2 2401     		.short	292
 577 00a4 2601     		.short	294
 578 00a6 2801     		.short	296
 579 00a8 2A01     		.short	298
 580 00aa 2C01     		.short	300
 581 00ac 2E01     		.short	302
 582 00ae 3001     		.short	304
 583 00b0 3201     		.short	306
 584 00b2 3401     		.short	308
 585 00b4 3601     		.short	310
 586 00b6 3901     		.short	313
 587 00b8 3B01     		.short	315
 588 00ba 3D01     		.short	317
 589 00bc 3F01     		.short	319
 590 00be 4101     		.short	321
 591 00c0 4301     		.short	323
 592 00c2 4501     		.short	325
 593 00c4 4701     		.short	327
 594 00c6 4A01     		.short	330
 595 00c8 4C01     		.short	332
 596 00ca 4E01     		.short	334
 597 00cc 5001     		.short	336
 598 00ce 5201     		.short	338
 599 00d0 5401     		.short	340
 600 00d2 5601     		.short	342
 601 00d4 5801     		.short	344
 602 00d6 5A01     		.short	346
 603 00d8 5C01     		.short	348
 604 00da 5E01     		.short	350
 605 00dc 6001     		.short	352
 606 00de 6201     		.short	354
 607 00e0 6401     		.short	356
 608 00e2 6601     		.short	358
 609 00e4 6801     		.short	360
 610 00e6 6A01     		.short	362
 611 00e8 6C01     		.short	364
 612 00ea 6E01     		.short	366
 613 00ec 7001     		.short	368
 614 00ee 7201     		.short	370
 615 00f0 7401     		.short	372
 616 00f2 7601     		.short	374
 617 00f4 7901     		.short	377
 618 00f6 7B01     		.short	379
 619 00f8 7D01     		.short	381
 620 00fa 9101     		.short	401
 621 00fc 9103     		.short	913
 622 00fe 9203     		.short	914
 623 0100 9303     		.short	915
 624 0102 9403     		.short	916
 625 0104 9503     		.short	917
 626 0106 9603     		.short	918
 627 0108 9703     		.short	919
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2k41Ca.s 			page 12


 628 010a 9803     		.short	920
 629 010c 9903     		.short	921
 630 010e 9A03     		.short	922
 631 0110 9B03     		.short	923
 632 0112 9C03     		.short	924
 633 0114 9D03     		.short	925
 634 0116 9E03     		.short	926
 635 0118 9F03     		.short	927
 636 011a A003     		.short	928
 637 011c A103     		.short	929
 638 011e A303     		.short	931
 639 0120 A403     		.short	932
 640 0122 A503     		.short	933
 641 0124 A603     		.short	934
 642 0126 A703     		.short	935
 643 0128 A803     		.short	936
 644 012a A903     		.short	937
 645 012c AA03     		.short	938
 646 012e 1004     		.short	1040
 647 0130 1104     		.short	1041
 648 0132 1204     		.short	1042
 649 0134 1304     		.short	1043
 650 0136 1404     		.short	1044
 651 0138 1504     		.short	1045
 652 013a 1604     		.short	1046
 653 013c 1704     		.short	1047
 654 013e 1804     		.short	1048
 655 0140 1904     		.short	1049
 656 0142 1A04     		.short	1050
 657 0144 1B04     		.short	1051
 658 0146 1C04     		.short	1052
 659 0148 1D04     		.short	1053
 660 014a 1E04     		.short	1054
 661 014c 1F04     		.short	1055
 662 014e 2004     		.short	1056
 663 0150 2104     		.short	1057
 664 0152 2204     		.short	1058
 665 0154 2304     		.short	1059
 666 0156 2404     		.short	1060
 667 0158 2504     		.short	1061
 668 015a 2604     		.short	1062
 669 015c 2704     		.short	1063
 670 015e 2804     		.short	1064
 671 0160 2904     		.short	1065
 672 0162 2A04     		.short	1066
 673 0164 2B04     		.short	1067
 674 0166 2C04     		.short	1068
 675 0168 2D04     		.short	1069
 676 016a 2E04     		.short	1070
 677 016c 2F04     		.short	1071
 678 016e 0104     		.short	1025
 679 0170 0204     		.short	1026
 680 0172 0304     		.short	1027
 681 0174 0404     		.short	1028
 682 0176 0504     		.short	1029
 683 0178 0604     		.short	1030
 684 017a 0704     		.short	1031
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2k41Ca.s 			page 13


 685 017c 0804     		.short	1032
 686 017e 0904     		.short	1033
 687 0180 0A04     		.short	1034
 688 0182 0B04     		.short	1035
 689 0184 0C04     		.short	1036
 690 0186 0E04     		.short	1038
 691 0188 0F04     		.short	1039
 692 018a 6021     		.short	8544
 693 018c 6121     		.short	8545
 694 018e 6221     		.short	8546
 695 0190 6321     		.short	8547
 696 0192 6421     		.short	8548
 697 0194 6521     		.short	8549
 698 0196 6621     		.short	8550
 699 0198 6721     		.short	8551
 700 019a 6821     		.short	8552
 701 019c 6921     		.short	8553
 702 019e 6A21     		.short	8554
 703 01a0 6B21     		.short	8555
 704 01a2 6C21     		.short	8556
 705 01a4 6D21     		.short	8557
 706 01a6 6E21     		.short	8558
 707 01a8 6F21     		.short	8559
 708 01aa 21FF     		.short	-223
 709 01ac 22FF     		.short	-222
 710 01ae 23FF     		.short	-221
 711 01b0 24FF     		.short	-220
 712 01b2 25FF     		.short	-219
 713 01b4 26FF     		.short	-218
 714 01b6 27FF     		.short	-217
 715 01b8 28FF     		.short	-216
 716 01ba 29FF     		.short	-215
 717 01bc 2AFF     		.short	-214
 718 01be 2BFF     		.short	-213
 719 01c0 2CFF     		.short	-212
 720 01c2 2DFF     		.short	-211
 721 01c4 2EFF     		.short	-210
 722 01c6 2FFF     		.short	-209
 723 01c8 30FF     		.short	-208
 724 01ca 31FF     		.short	-207
 725 01cc 32FF     		.short	-206
 726 01ce 33FF     		.short	-205
 727 01d0 34FF     		.short	-204
 728 01d2 35FF     		.short	-203
 729 01d4 36FF     		.short	-202
 730 01d6 37FF     		.short	-201
 731 01d8 38FF     		.short	-200
 732 01da 39FF     		.short	-199
 733 01dc 3AFF     		.short	-198
 734 01de 0000     		.short	0
 735              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
