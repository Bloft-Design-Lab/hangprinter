ARM GAS  /tmp/ccDeUQcD.s 			page 1


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
  13              		.file	"CRC32.cpp"
  14              		.section	.text._ZN5CRC32C2Ev,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN5CRC32C2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN5CRC32C2Ev, %function
  23              	_ZN5CRC32C2Ev:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 4FF0FF33 		mov	r3, #-1
  28 0004 0360     		str	r3, [r0]
  29 0006 7047     		bx	lr
  30              		.size	_ZN5CRC32C2Ev, .-_ZN5CRC32C2Ev
  31              		.global	_ZN5CRC32C1Ev
  32              		.thumb_set _ZN5CRC32C1Ev,_ZN5CRC32C2Ev
  33              		.section	.text._ZN5CRC326UpdateEc,"ax",%progbits
  34              		.align	1
  35              		.p2align 2,,3
  36              		.global	_ZN5CRC326UpdateEc
  37              		.syntax unified
  38              		.thumb
  39              		.thumb_func
  40              		.fpu fpv4-sp-d16
  41              		.type	_ZN5CRC326UpdateEc, %function
  42              	_ZN5CRC326UpdateEc:
  43              		@ args = 0, pretend = 0, frame = 0
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45              		@ link register save eliminated.
  46 0000 0268     		ldr	r2, [r0]
  47 0002 044B     		ldr	r3, .L4
  48 0004 5140     		eors	r1, r1, r2
  49 0006 C9B2     		uxtb	r1, r1
  50 0008 53F82130 		ldr	r3, [r3, r1, lsl #2]
  51 000c 83EA1223 		eor	r3, r3, r2, lsr #8
  52 0010 0360     		str	r3, [r0]
  53 0012 7047     		bx	lr
  54              	.L5:
  55              		.align	2
  56              	.L4:
  57 0014 00000000 		.word	.LANCHOR0
ARM GAS  /tmp/ccDeUQcD.s 			page 2


  58              		.size	_ZN5CRC326UpdateEc, .-_ZN5CRC326UpdateEc
  59              		.section	.text._ZN5CRC326UpdateEPKcj,"ax",%progbits
  60              		.align	1
  61              		.p2align 2,,3
  62              		.global	_ZN5CRC326UpdateEPKcj
  63              		.syntax unified
  64              		.thumb
  65              		.thumb_func
  66              		.fpu fpv4-sp-d16
  67              		.type	_ZN5CRC326UpdateEPKcj, %function
  68              	_ZN5CRC326UpdateEPKcj:
  69              		@ args = 0, pretend = 0, frame = 0
  70              		@ frame_needed = 0, uses_anonymous_args = 0
  71              		@ link register save eliminated.
  72 0000 92B1     		cbz	r2, .L14
  73 0002 30B4     		push	{r4, r5}
  74 0004 0A44     		add	r2, r2, r1
  75 0006 0468     		ldr	r4, [r0]
  76 0008 084D     		ldr	r5, .L17
  77 000a 013A     		subs	r2, r2, #1
  78 000c 0139     		subs	r1, r1, #1
  79              	.L8:
  80 000e 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
  81 0012 6340     		eors	r3, r3, r4
  82 0014 DBB2     		uxtb	r3, r3
  83 0016 8A42     		cmp	r2, r1
  84 0018 55F82330 		ldr	r3, [r5, r3, lsl #2]
  85 001c 83EA1424 		eor	r4, r3, r4, lsr #8
  86 0020 0460     		str	r4, [r0]
  87 0022 F4D1     		bne	.L8
  88 0024 30BC     		pop	{r4, r5}
  89 0026 7047     		bx	lr
  90              	.L14:
  91 0028 7047     		bx	lr
  92              	.L18:
  93 002a 00BF     		.align	2
  94              	.L17:
  95 002c 00000000 		.word	.LANCHOR0
  96              		.size	_ZN5CRC326UpdateEPKcj, .-_ZN5CRC326UpdateEPKcj
  97              		.section	.text._ZN5CRC325ResetEv,"ax",%progbits
  98              		.align	1
  99              		.p2align 2,,3
 100              		.global	_ZN5CRC325ResetEv
 101              		.syntax unified
 102              		.thumb
 103              		.thumb_func
 104              		.fpu fpv4-sp-d16
 105              		.type	_ZN5CRC325ResetEv, %function
 106              	_ZN5CRC325ResetEv:
 107              		@ args = 0, pretend = 0, frame = 0
 108              		@ frame_needed = 0, uses_anonymous_args = 0
 109              		@ link register save eliminated.
 110 0000 4FF0FF33 		mov	r3, #-1
 111 0004 0360     		str	r3, [r0]
 112 0006 7047     		bx	lr
 113              		.size	_ZN5CRC325ResetEv, .-_ZN5CRC325ResetEv
 114              		.global	_ZN5CRC3210CRC_32_TABE
ARM GAS  /tmp/ccDeUQcD.s 			page 3


 115              		.section	.rodata._ZN5CRC3210CRC_32_TABE,"a",%progbits
 116              		.align	2
 117              		.set	.LANCHOR0,. + 0
 118              		.type	_ZN5CRC3210CRC_32_TABE, %object
 119              		.size	_ZN5CRC3210CRC_32_TABE, 1024
 120              	_ZN5CRC3210CRC_32_TABE:
 121 0000 00000000 		.word	0
 122 0004 96300777 		.word	1996959894
 123 0008 2C610EEE 		.word	-301047508
 124 000c BA510999 		.word	-1727442502
 125 0010 19C46D07 		.word	124634137
 126 0014 8FF46A70 		.word	1886057615
 127 0018 35A563E9 		.word	-379345611
 128 001c A395649E 		.word	-1637575261
 129 0020 3288DB0E 		.word	249268274
 130 0024 A4B8DC79 		.word	2044508324
 131 0028 1EE9D5E0 		.word	-522852066
 132 002c 88D9D297 		.word	-1747789432
 133 0030 2B4CB609 		.word	162941995
 134 0034 BD7CB17E 		.word	2125561021
 135 0038 072DB8E7 		.word	-407360249
 136 003c 911DBF90 		.word	-1866523247
 137 0040 6410B71D 		.word	498536548
 138 0044 F220B06A 		.word	1789927666
 139 0048 4871B9F3 		.word	-205950648
 140 004c DE41BE84 		.word	-2067906082
 141 0050 7DD4DA1A 		.word	450548861
 142 0054 EBE4DD6D 		.word	1843258603
 143 0058 51B5D4F4 		.word	-187386543
 144 005c C785D383 		.word	-2083289657
 145 0060 56986C13 		.word	325883990
 146 0064 C0A86B64 		.word	1684777152
 147 0068 7AF962FD 		.word	-43845254
 148 006c ECC9658A 		.word	-1973040660
 149 0070 4F5C0114 		.word	335633487
 150 0074 D96C0663 		.word	1661365465
 151 0078 633D0FFA 		.word	-99664541
 152 007c F50D088D 		.word	-1928851979
 153 0080 C8206E3B 		.word	997073096
 154 0084 5E10694C 		.word	1281953886
 155 0088 E44160D5 		.word	-715111964
 156 008c 727167A2 		.word	-1570279054
 157 0090 D1E4033C 		.word	1006888145
 158 0094 47D4044B 		.word	1258607687
 159 0098 FD850DD2 		.word	-770865667
 160 009c 6BB50AA5 		.word	-1526024853
 161 00a0 FAA8B535 		.word	901097722
 162 00a4 6C98B242 		.word	1119000684
 163 00a8 D6C9BBDB 		.word	-608450090
 164 00ac 40F9BCAC 		.word	-1396901568
 165 00b0 E36CD832 		.word	853044451
 166 00b4 755CDF45 		.word	1172266101
 167 00b8 CF0DD6DC 		.word	-589951537
 168 00bc 593DD1AB 		.word	-1412350631
 169 00c0 AC30D926 		.word	651767980
 170 00c4 3A00DE51 		.word	1373503546
 171 00c8 8051D7C8 		.word	-925412992
ARM GAS  /tmp/ccDeUQcD.s 			page 4


 172 00cc 1661D0BF 		.word	-1076862698
 173 00d0 B5F4B421 		.word	565507253
 174 00d4 23C4B356 		.word	1454621731
 175 00d8 9995BACF 		.word	-809855591
 176 00dc 0FA5BDB8 		.word	-1195530993
 177 00e0 9EB80228 		.word	671266974
 178 00e4 0888055F 		.word	1594198024
 179 00e8 B2D90CC6 		.word	-972236366
 180 00ec 24E90BB1 		.word	-1324619484
 181 00f0 877C6F2F 		.word	795835527
 182 00f4 114C6858 		.word	1483230225
 183 00f8 AB1D61C1 		.word	-1050600021
 184 00fc 3D2D66B6 		.word	-1234817731
 185 0100 9041DC76 		.word	1994146192
 186 0104 0671DB01 		.word	31158534
 187 0108 BC20D298 		.word	-1731059524
 188 010c 2A10D5EF 		.word	-271249366
 189 0110 8985B171 		.word	1907459465
 190 0114 1FB5B606 		.word	112637215
 191 0118 A5E4BF9F 		.word	-1614814043
 192 011c 33D4B8E8 		.word	-390540237
 193 0120 A2C90778 		.word	2013776290
 194 0124 34F9000F 		.word	251722036
 195 0128 8EA80996 		.word	-1777751922
 196 012c 18980EE1 		.word	-519137256
 197 0130 BB0D6A7F 		.word	2137656763
 198 0134 2D3D6D08 		.word	141376813
 199 0138 976C6491 		.word	-1855689577
 200 013c 015C63E6 		.word	-429695999
 201 0140 F4516B6B 		.word	1802195444
 202 0144 62616C1C 		.word	476864866
 203 0148 D8306585 		.word	-2056965928
 204 014c 4E0062F2 		.word	-228458418
 205 0150 ED95066C 		.word	1812370925
 206 0154 7BA5011B 		.word	453092731
 207 0158 C1F40882 		.word	-2113342271
 208 015c 57C40FF5 		.word	-183516073
 209 0160 C6D9B065 		.word	1706088902
 210 0164 50E9B712 		.word	314042704
 211 0168 EAB8BE8B 		.word	-1950435094
 212 016c 7C88B9FC 		.word	-54949764
 213 0170 DF1DDD62 		.word	1658658271
 214 0174 492DDA15 		.word	366619977
 215 0178 F37CD38C 		.word	-1932296973
 216 017c 654CD4FB 		.word	-69972891
 217 0180 5861B24D 		.word	1303535960
 218 0184 CE51B53A 		.word	984961486
 219 0188 7400BCA3 		.word	-1547960204
 220 018c E230BBD4 		.word	-725929758
 221 0190 41A5DF4A 		.word	1256170817
 222 0194 D795D83D 		.word	1037604311
 223 0198 6DC4D1A4 		.word	-1529756563
 224 019c FBF4D6D3 		.word	-740887301
 225 01a0 6AE96943 		.word	1131014506
 226 01a4 FCD96E34 		.word	879679996
 227 01a8 468867AD 		.word	-1385723834
 228 01ac D0B860DA 		.word	-631195440
ARM GAS  /tmp/ccDeUQcD.s 			page 5


 229 01b0 732D0444 		.word	1141124467
 230 01b4 E51D0333 		.word	855842277
 231 01b8 5F4C0AAA 		.word	-1442165665
 232 01bc C97C0DDD 		.word	-586318647
 233 01c0 3C710550 		.word	1342533948
 234 01c4 AA410227 		.word	654459306
 235 01c8 10100BBE 		.word	-1106571248
 236 01cc 86200CC9 		.word	-921952122
 237 01d0 25B56857 		.word	1466479909
 238 01d4 B3856F20 		.word	544179635
 239 01d8 09D466B9 		.word	-1184443383
 240 01dc 9FE461CE 		.word	-832445281
 241 01e0 0EF9DE5E 		.word	1591671054
 242 01e4 98C9D929 		.word	702138776
 243 01e8 2298D0B0 		.word	-1328506846
 244 01ec B4A8D7C7 		.word	-942167884
 245 01f0 173DB359 		.word	1504918807
 246 01f4 810DB42E 		.word	783551873
 247 01f8 3B5CBDB7 		.word	-1212326853
 248 01fc AD6CBAC0 		.word	-1061524307
 249 0200 2083B8ED 		.word	-306674912
 250 0204 B6B3BF9A 		.word	-1698712650
 251 0208 0CE2B603 		.word	62317068
 252 020c 9AD2B174 		.word	1957810842
 253 0210 3947D5EA 		.word	-355121351
 254 0214 AF77D29D 		.word	-1647151185
 255 0218 1526DB04 		.word	81470997
 256 021c 8316DC73 		.word	1943803523
 257 0220 120B63E3 		.word	-480048366
 258 0224 843B6494 		.word	-1805370492
 259 0228 3E6A6D0D 		.word	225274430
 260 022c A85A6A7A 		.word	2053790376
 261 0230 0BCF0EE4 		.word	-468791541
 262 0234 9DFF0993 		.word	-1828061283
 263 0238 27AE000A 		.word	167816743
 264 023c B19E077D 		.word	2097651377
 265 0240 44930FF0 		.word	-267414716
 266 0244 D2A30887 		.word	-2029476910
 267 0248 68F2011E 		.word	503444072
 268 024c FEC20669 		.word	1762050814
 269 0250 5D5762F7 		.word	-144550051
 270 0254 CB676580 		.word	-2140837941
 271 0258 71366C19 		.word	426522225
 272 025c E7066B6E 		.word	1852507879
 273 0260 761BD4FE 		.word	-19653770
 274 0264 E02BD389 		.word	-1982649376
 275 0268 5A7ADA10 		.word	282753626
 276 026c CC4ADD67 		.word	1742555852
 277 0270 6FDFB9F9 		.word	-105259153
 278 0274 F9EFBE8E 		.word	-1900089351
 279 0278 43BEB717 		.word	397917763
 280 027c D58EB060 		.word	1622183637
 281 0280 E8A3D6D6 		.word	-690576408
 282 0284 7E93D1A1 		.word	-1580100738
 283 0288 C4C2D838 		.word	953729732
 284 028c 52F2DF4F 		.word	1340076626
 285 0290 F167BBD1 		.word	-776247311
ARM GAS  /tmp/ccDeUQcD.s 			page 6


 286 0294 6757BCA6 		.word	-1497606297
 287 0298 DD06B53F 		.word	1068828381
 288 029c 4B36B248 		.word	1219638859
 289 02a0 DA2B0DD8 		.word	-670225446
 290 02a4 4C1B0AAF 		.word	-1358292148
 291 02a8 F64A0336 		.word	906185462
 292 02ac 607A0441 		.word	1090812512
 293 02b0 C3EF60DF 		.word	-547295293
 294 02b4 55DF67A8 		.word	-1469587627
 295 02b8 EF8E6E31 		.word	829329135
 296 02bc 79BE6946 		.word	1181335161
 297 02c0 8CB361CB 		.word	-882789492
 298 02c4 1A8366BC 		.word	-1134132454
 299 02c8 A0D26F25 		.word	628085408
 300 02cc 36E26852 		.word	1382605366
 301 02d0 95770CCC 		.word	-871598187
 302 02d4 03470BBB 		.word	-1156888829
 303 02d8 B9160222 		.word	570562233
 304 02dc 2F260555 		.word	1426400815
 305 02e0 BE3BBAC5 		.word	-977650754
 306 02e4 280BBDB2 		.word	-1296233688
 307 02e8 925AB42B 		.word	733239954
 308 02ec 046AB35C 		.word	1555261956
 309 02f0 A7FFD7C2 		.word	-1026031705
 310 02f4 31CFD0B5 		.word	-1244606671
 311 02f8 8B9ED92C 		.word	752459403
 312 02fc 1DAEDE5B 		.word	1541320221
 313 0300 B0C2649B 		.word	-1687895376
 314 0304 26F263EC 		.word	-328994266
 315 0308 9CA36A75 		.word	1969922972
 316 030c 0A936D02 		.word	40735498
 317 0310 A906099C 		.word	-1677130071
 318 0314 3F360EEB 		.word	-351390145
 319 0318 85670772 		.word	1913087877
 320 031c 13570005 		.word	83908371
 321 0320 824ABF95 		.word	-1782625662
 322 0324 147AB8E2 		.word	-491226604
 323 0328 AE2BB17B 		.word	2075208622
 324 032c 381BB60C 		.word	213261112
 325 0330 9B8ED292 		.word	-1831694693
 326 0334 0DBED5E5 		.word	-438977011
 327 0338 B7EFDC7C 		.word	2094854071
 328 033c 21DFDB0B 		.word	198958881
 329 0340 D4D2D386 		.word	-2032938284
 330 0344 42E2D4F1 		.word	-237706686
 331 0348 F8B3DD68 		.word	1759359992
 332 034c 6E83DA1F 		.word	534414190
 333 0350 CD16BE81 		.word	-2118248755
 334 0354 5B26B9F6 		.word	-155638181
 335 0358 E177B06F 		.word	1873836001
 336 035c 7747B718 		.word	414664567
 337 0360 E65A0888 		.word	-2012718362
 338 0364 706A0FFF 		.word	-15766928
 339 0368 CA3B0666 		.word	1711684554
 340 036c 5C0B0111 		.word	285281116
 341 0370 FF9E658F 		.word	-1889165569
 342 0374 69AE62F8 		.word	-127750551
ARM GAS  /tmp/ccDeUQcD.s 			page 7


 343 0378 D3FF6B61 		.word	1634467795
 344 037c 45CF6C16 		.word	376229701
 345 0380 78E20AA0 		.word	-1609899400
 346 0384 EED20DD7 		.word	-686959890
 347 0388 5483044E 		.word	1308918612
 348 038c C2B30339 		.word	956543938
 349 0390 612667A7 		.word	-1486412191
 350 0394 F71660D0 		.word	-799009033
 351 0398 4D476949 		.word	1231636301
 352 039c DB776E3E 		.word	1047427035
 353 03a0 4A6AD1AE 		.word	-1362007478
 354 03a4 DC5AD6D9 		.word	-640263460
 355 03a8 660BDF40 		.word	1088359270
 356 03ac F03BD837 		.word	936918000
 357 03b0 53AEBCA9 		.word	-1447252397
 358 03b4 C59EBBDE 		.word	-558129467
 359 03b8 7FCFB247 		.word	1202900863
 360 03bc E9FFB530 		.word	817233897
 361 03c0 1CF2BDBD 		.word	-1111625188
 362 03c4 8AC2BACA 		.word	-893730166
 363 03c8 3093B353 		.word	1404277552
 364 03cc A6A3B424 		.word	615818150
 365 03d0 0536D0BA 		.word	-1160759803
 366 03d4 9306D7CD 		.word	-841546093
 367 03d8 2957DE54 		.word	1423857449
 368 03dc BF67D923 		.word	601450431
 369 03e0 2E7A66B3 		.word	-1285129682
 370 03e4 B84A61C4 		.word	-1000256840
 371 03e8 021B685D 		.word	1567103746
 372 03ec 942B6F2A 		.word	711928724
 373 03f0 37BE0BB4 		.word	-1274298825
 374 03f4 A18E0CC3 		.word	-1022587231
 375 03f8 1BDF055A 		.word	1510334235
 376 03fc 8DEF022D 		.word	755167117
 377              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
