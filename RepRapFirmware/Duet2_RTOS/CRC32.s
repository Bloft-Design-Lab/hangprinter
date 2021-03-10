ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIlPHje.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN5CRC32C2Ev,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN5CRC32C2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN5CRC32C2Ev, %function
  24              	_ZN5CRC32C2Ev:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 4FF0FF33 		mov	r3, #-1
  29 0004 0360     		str	r3, [r0]
  30 0006 7047     		bx	lr
  31              		.size	_ZN5CRC32C2Ev, .-_ZN5CRC32C2Ev
  32              		.global	_ZN5CRC32C1Ev
  33              		.thumb_set _ZN5CRC32C1Ev,_ZN5CRC32C2Ev
  34              		.section	.text._ZN5CRC326UpdateEc,"ax",%progbits
  35              		.align	1
  36              		.p2align 2,,3
  37              		.global	_ZN5CRC326UpdateEc
  38              		.syntax unified
  39              		.thumb
  40              		.thumb_func
  41              		.fpu fpv4-sp-d16
  42              		.type	_ZN5CRC326UpdateEc, %function
  43              	_ZN5CRC326UpdateEc:
  44              		@ args = 0, pretend = 0, frame = 0
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46              		@ link register save eliminated.
  47 0000 0268     		ldr	r2, [r0]
  48 0002 044B     		ldr	r3, .L4
  49 0004 5140     		eors	r1, r1, r2
  50 0006 C9B2     		uxtb	r1, r1
  51 0008 53F82130 		ldr	r3, [r3, r1, lsl #2]
  52 000c 83EA1223 		eor	r3, r3, r2, lsr #8
  53 0010 0360     		str	r3, [r0]
  54 0012 7047     		bx	lr
  55              	.L5:
  56              		.align	2
  57              	.L4:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIlPHje.s 			page 2


  58 0014 00000000 		.word	.LANCHOR0
  59              		.size	_ZN5CRC326UpdateEc, .-_ZN5CRC326UpdateEc
  60              		.section	.text._ZN5CRC326UpdateEPKcj,"ax",%progbits
  61              		.align	1
  62              		.p2align 2,,3
  63              		.global	_ZN5CRC326UpdateEPKcj
  64              		.syntax unified
  65              		.thumb
  66              		.thumb_func
  67              		.fpu fpv4-sp-d16
  68              		.type	_ZN5CRC326UpdateEPKcj, %function
  69              	_ZN5CRC326UpdateEPKcj:
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72              		@ link register save eliminated.
  73 0000 92B1     		cbz	r2, .L14
  74 0002 30B4     		push	{r4, r5}
  75 0004 0A44     		add	r2, r2, r1
  76 0006 0468     		ldr	r4, [r0]
  77 0008 084D     		ldr	r5, .L17
  78 000a 013A     		subs	r2, r2, #1
  79 000c 0139     		subs	r1, r1, #1
  80              	.L8:
  81 000e 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
  82 0012 6340     		eors	r3, r3, r4
  83 0014 DBB2     		uxtb	r3, r3
  84 0016 8A42     		cmp	r2, r1
  85 0018 55F82330 		ldr	r3, [r5, r3, lsl #2]
  86 001c 83EA1424 		eor	r4, r3, r4, lsr #8
  87 0020 0460     		str	r4, [r0]
  88 0022 F4D1     		bne	.L8
  89 0024 30BC     		pop	{r4, r5}
  90 0026 7047     		bx	lr
  91              	.L14:
  92 0028 7047     		bx	lr
  93              	.L18:
  94 002a 00BF     		.align	2
  95              	.L17:
  96 002c 00000000 		.word	.LANCHOR0
  97              		.size	_ZN5CRC326UpdateEPKcj, .-_ZN5CRC326UpdateEPKcj
  98              		.section	.text._ZN5CRC325ResetEv,"ax",%progbits
  99              		.align	1
 100              		.p2align 2,,3
 101              		.global	_ZN5CRC325ResetEv
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu fpv4-sp-d16
 106              		.type	_ZN5CRC325ResetEv, %function
 107              	_ZN5CRC325ResetEv:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110              		@ link register save eliminated.
 111 0000 4FF0FF33 		mov	r3, #-1
 112 0004 0360     		str	r3, [r0]
 113 0006 7047     		bx	lr
 114              		.size	_ZN5CRC325ResetEv, .-_ZN5CRC325ResetEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIlPHje.s 			page 3


 115              		.global	_ZN5CRC3210CRC_32_TABE
 116              		.section	.rodata._ZN5CRC3210CRC_32_TABE,"a",%progbits
 117              		.align	2
 118              		.set	.LANCHOR0,. + 0
 119              		.type	_ZN5CRC3210CRC_32_TABE, %object
 120              		.size	_ZN5CRC3210CRC_32_TABE, 1024
 121              	_ZN5CRC3210CRC_32_TABE:
 122 0000 00000000 		.word	0
 123 0004 96300777 		.word	1996959894
 124 0008 2C610EEE 		.word	-301047508
 125 000c BA510999 		.word	-1727442502
 126 0010 19C46D07 		.word	124634137
 127 0014 8FF46A70 		.word	1886057615
 128 0018 35A563E9 		.word	-379345611
 129 001c A395649E 		.word	-1637575261
 130 0020 3288DB0E 		.word	249268274
 131 0024 A4B8DC79 		.word	2044508324
 132 0028 1EE9D5E0 		.word	-522852066
 133 002c 88D9D297 		.word	-1747789432
 134 0030 2B4CB609 		.word	162941995
 135 0034 BD7CB17E 		.word	2125561021
 136 0038 072DB8E7 		.word	-407360249
 137 003c 911DBF90 		.word	-1866523247
 138 0040 6410B71D 		.word	498536548
 139 0044 F220B06A 		.word	1789927666
 140 0048 4871B9F3 		.word	-205950648
 141 004c DE41BE84 		.word	-2067906082
 142 0050 7DD4DA1A 		.word	450548861
 143 0054 EBE4DD6D 		.word	1843258603
 144 0058 51B5D4F4 		.word	-187386543
 145 005c C785D383 		.word	-2083289657
 146 0060 56986C13 		.word	325883990
 147 0064 C0A86B64 		.word	1684777152
 148 0068 7AF962FD 		.word	-43845254
 149 006c ECC9658A 		.word	-1973040660
 150 0070 4F5C0114 		.word	335633487
 151 0074 D96C0663 		.word	1661365465
 152 0078 633D0FFA 		.word	-99664541
 153 007c F50D088D 		.word	-1928851979
 154 0080 C8206E3B 		.word	997073096
 155 0084 5E10694C 		.word	1281953886
 156 0088 E44160D5 		.word	-715111964
 157 008c 727167A2 		.word	-1570279054
 158 0090 D1E4033C 		.word	1006888145
 159 0094 47D4044B 		.word	1258607687
 160 0098 FD850DD2 		.word	-770865667
 161 009c 6BB50AA5 		.word	-1526024853
 162 00a0 FAA8B535 		.word	901097722
 163 00a4 6C98B242 		.word	1119000684
 164 00a8 D6C9BBDB 		.word	-608450090
 165 00ac 40F9BCAC 		.word	-1396901568
 166 00b0 E36CD832 		.word	853044451
 167 00b4 755CDF45 		.word	1172266101
 168 00b8 CF0DD6DC 		.word	-589951537
 169 00bc 593DD1AB 		.word	-1412350631
 170 00c0 AC30D926 		.word	651767980
 171 00c4 3A00DE51 		.word	1373503546
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIlPHje.s 			page 4


 172 00c8 8051D7C8 		.word	-925412992
 173 00cc 1661D0BF 		.word	-1076862698
 174 00d0 B5F4B421 		.word	565507253
 175 00d4 23C4B356 		.word	1454621731
 176 00d8 9995BACF 		.word	-809855591
 177 00dc 0FA5BDB8 		.word	-1195530993
 178 00e0 9EB80228 		.word	671266974
 179 00e4 0888055F 		.word	1594198024
 180 00e8 B2D90CC6 		.word	-972236366
 181 00ec 24E90BB1 		.word	-1324619484
 182 00f0 877C6F2F 		.word	795835527
 183 00f4 114C6858 		.word	1483230225
 184 00f8 AB1D61C1 		.word	-1050600021
 185 00fc 3D2D66B6 		.word	-1234817731
 186 0100 9041DC76 		.word	1994146192
 187 0104 0671DB01 		.word	31158534
 188 0108 BC20D298 		.word	-1731059524
 189 010c 2A10D5EF 		.word	-271249366
 190 0110 8985B171 		.word	1907459465
 191 0114 1FB5B606 		.word	112637215
 192 0118 A5E4BF9F 		.word	-1614814043
 193 011c 33D4B8E8 		.word	-390540237
 194 0120 A2C90778 		.word	2013776290
 195 0124 34F9000F 		.word	251722036
 196 0128 8EA80996 		.word	-1777751922
 197 012c 18980EE1 		.word	-519137256
 198 0130 BB0D6A7F 		.word	2137656763
 199 0134 2D3D6D08 		.word	141376813
 200 0138 976C6491 		.word	-1855689577
 201 013c 015C63E6 		.word	-429695999
 202 0140 F4516B6B 		.word	1802195444
 203 0144 62616C1C 		.word	476864866
 204 0148 D8306585 		.word	-2056965928
 205 014c 4E0062F2 		.word	-228458418
 206 0150 ED95066C 		.word	1812370925
 207 0154 7BA5011B 		.word	453092731
 208 0158 C1F40882 		.word	-2113342271
 209 015c 57C40FF5 		.word	-183516073
 210 0160 C6D9B065 		.word	1706088902
 211 0164 50E9B712 		.word	314042704
 212 0168 EAB8BE8B 		.word	-1950435094
 213 016c 7C88B9FC 		.word	-54949764
 214 0170 DF1DDD62 		.word	1658658271
 215 0174 492DDA15 		.word	366619977
 216 0178 F37CD38C 		.word	-1932296973
 217 017c 654CD4FB 		.word	-69972891
 218 0180 5861B24D 		.word	1303535960
 219 0184 CE51B53A 		.word	984961486
 220 0188 7400BCA3 		.word	-1547960204
 221 018c E230BBD4 		.word	-725929758
 222 0190 41A5DF4A 		.word	1256170817
 223 0194 D795D83D 		.word	1037604311
 224 0198 6DC4D1A4 		.word	-1529756563
 225 019c FBF4D6D3 		.word	-740887301
 226 01a0 6AE96943 		.word	1131014506
 227 01a4 FCD96E34 		.word	879679996
 228 01a8 468867AD 		.word	-1385723834
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIlPHje.s 			page 5


 229 01ac D0B860DA 		.word	-631195440
 230 01b0 732D0444 		.word	1141124467
 231 01b4 E51D0333 		.word	855842277
 232 01b8 5F4C0AAA 		.word	-1442165665
 233 01bc C97C0DDD 		.word	-586318647
 234 01c0 3C710550 		.word	1342533948
 235 01c4 AA410227 		.word	654459306
 236 01c8 10100BBE 		.word	-1106571248
 237 01cc 86200CC9 		.word	-921952122
 238 01d0 25B56857 		.word	1466479909
 239 01d4 B3856F20 		.word	544179635
 240 01d8 09D466B9 		.word	-1184443383
 241 01dc 9FE461CE 		.word	-832445281
 242 01e0 0EF9DE5E 		.word	1591671054
 243 01e4 98C9D929 		.word	702138776
 244 01e8 2298D0B0 		.word	-1328506846
 245 01ec B4A8D7C7 		.word	-942167884
 246 01f0 173DB359 		.word	1504918807
 247 01f4 810DB42E 		.word	783551873
 248 01f8 3B5CBDB7 		.word	-1212326853
 249 01fc AD6CBAC0 		.word	-1061524307
 250 0200 2083B8ED 		.word	-306674912
 251 0204 B6B3BF9A 		.word	-1698712650
 252 0208 0CE2B603 		.word	62317068
 253 020c 9AD2B174 		.word	1957810842
 254 0210 3947D5EA 		.word	-355121351
 255 0214 AF77D29D 		.word	-1647151185
 256 0218 1526DB04 		.word	81470997
 257 021c 8316DC73 		.word	1943803523
 258 0220 120B63E3 		.word	-480048366
 259 0224 843B6494 		.word	-1805370492
 260 0228 3E6A6D0D 		.word	225274430
 261 022c A85A6A7A 		.word	2053790376
 262 0230 0BCF0EE4 		.word	-468791541
 263 0234 9DFF0993 		.word	-1828061283
 264 0238 27AE000A 		.word	167816743
 265 023c B19E077D 		.word	2097651377
 266 0240 44930FF0 		.word	-267414716
 267 0244 D2A30887 		.word	-2029476910
 268 0248 68F2011E 		.word	503444072
 269 024c FEC20669 		.word	1762050814
 270 0250 5D5762F7 		.word	-144550051
 271 0254 CB676580 		.word	-2140837941
 272 0258 71366C19 		.word	426522225
 273 025c E7066B6E 		.word	1852507879
 274 0260 761BD4FE 		.word	-19653770
 275 0264 E02BD389 		.word	-1982649376
 276 0268 5A7ADA10 		.word	282753626
 277 026c CC4ADD67 		.word	1742555852
 278 0270 6FDFB9F9 		.word	-105259153
 279 0274 F9EFBE8E 		.word	-1900089351
 280 0278 43BEB717 		.word	397917763
 281 027c D58EB060 		.word	1622183637
 282 0280 E8A3D6D6 		.word	-690576408
 283 0284 7E93D1A1 		.word	-1580100738
 284 0288 C4C2D838 		.word	953729732
 285 028c 52F2DF4F 		.word	1340076626
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIlPHje.s 			page 6


 286 0290 F167BBD1 		.word	-776247311
 287 0294 6757BCA6 		.word	-1497606297
 288 0298 DD06B53F 		.word	1068828381
 289 029c 4B36B248 		.word	1219638859
 290 02a0 DA2B0DD8 		.word	-670225446
 291 02a4 4C1B0AAF 		.word	-1358292148
 292 02a8 F64A0336 		.word	906185462
 293 02ac 607A0441 		.word	1090812512
 294 02b0 C3EF60DF 		.word	-547295293
 295 02b4 55DF67A8 		.word	-1469587627
 296 02b8 EF8E6E31 		.word	829329135
 297 02bc 79BE6946 		.word	1181335161
 298 02c0 8CB361CB 		.word	-882789492
 299 02c4 1A8366BC 		.word	-1134132454
 300 02c8 A0D26F25 		.word	628085408
 301 02cc 36E26852 		.word	1382605366
 302 02d0 95770CCC 		.word	-871598187
 303 02d4 03470BBB 		.word	-1156888829
 304 02d8 B9160222 		.word	570562233
 305 02dc 2F260555 		.word	1426400815
 306 02e0 BE3BBAC5 		.word	-977650754
 307 02e4 280BBDB2 		.word	-1296233688
 308 02e8 925AB42B 		.word	733239954
 309 02ec 046AB35C 		.word	1555261956
 310 02f0 A7FFD7C2 		.word	-1026031705
 311 02f4 31CFD0B5 		.word	-1244606671
 312 02f8 8B9ED92C 		.word	752459403
 313 02fc 1DAEDE5B 		.word	1541320221
 314 0300 B0C2649B 		.word	-1687895376
 315 0304 26F263EC 		.word	-328994266
 316 0308 9CA36A75 		.word	1969922972
 317 030c 0A936D02 		.word	40735498
 318 0310 A906099C 		.word	-1677130071
 319 0314 3F360EEB 		.word	-351390145
 320 0318 85670772 		.word	1913087877
 321 031c 13570005 		.word	83908371
 322 0320 824ABF95 		.word	-1782625662
 323 0324 147AB8E2 		.word	-491226604
 324 0328 AE2BB17B 		.word	2075208622
 325 032c 381BB60C 		.word	213261112
 326 0330 9B8ED292 		.word	-1831694693
 327 0334 0DBED5E5 		.word	-438977011
 328 0338 B7EFDC7C 		.word	2094854071
 329 033c 21DFDB0B 		.word	198958881
 330 0340 D4D2D386 		.word	-2032938284
 331 0344 42E2D4F1 		.word	-237706686
 332 0348 F8B3DD68 		.word	1759359992
 333 034c 6E83DA1F 		.word	534414190
 334 0350 CD16BE81 		.word	-2118248755
 335 0354 5B26B9F6 		.word	-155638181
 336 0358 E177B06F 		.word	1873836001
 337 035c 7747B718 		.word	414664567
 338 0360 E65A0888 		.word	-2012718362
 339 0364 706A0FFF 		.word	-15766928
 340 0368 CA3B0666 		.word	1711684554
 341 036c 5C0B0111 		.word	285281116
 342 0370 FF9E658F 		.word	-1889165569
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIlPHje.s 			page 7


 343 0374 69AE62F8 		.word	-127750551
 344 0378 D3FF6B61 		.word	1634467795
 345 037c 45CF6C16 		.word	376229701
 346 0380 78E20AA0 		.word	-1609899400
 347 0384 EED20DD7 		.word	-686959890
 348 0388 5483044E 		.word	1308918612
 349 038c C2B30339 		.word	956543938
 350 0390 612667A7 		.word	-1486412191
 351 0394 F71660D0 		.word	-799009033
 352 0398 4D476949 		.word	1231636301
 353 039c DB776E3E 		.word	1047427035
 354 03a0 4A6AD1AE 		.word	-1362007478
 355 03a4 DC5AD6D9 		.word	-640263460
 356 03a8 660BDF40 		.word	1088359270
 357 03ac F03BD837 		.word	936918000
 358 03b0 53AEBCA9 		.word	-1447252397
 359 03b4 C59EBBDE 		.word	-558129467
 360 03b8 7FCFB247 		.word	1202900863
 361 03bc E9FFB530 		.word	817233897
 362 03c0 1CF2BDBD 		.word	-1111625188
 363 03c4 8AC2BACA 		.word	-893730166
 364 03c8 3093B353 		.word	1404277552
 365 03cc A6A3B424 		.word	615818150
 366 03d0 0536D0BA 		.word	-1160759803
 367 03d4 9306D7CD 		.word	-841546093
 368 03d8 2957DE54 		.word	1423857449
 369 03dc BF67D923 		.word	601450431
 370 03e0 2E7A66B3 		.word	-1285129682
 371 03e4 B84A61C4 		.word	-1000256840
 372 03e8 021B685D 		.word	1567103746
 373 03ec 942B6F2A 		.word	711928724
 374 03f0 37BE0BB4 		.word	-1274298825
 375 03f4 A18E0CC3 		.word	-1022587231
 376 03f8 1BDF055A 		.word	1510334235
 377 03fc 8DEF022D 		.word	755167117
 378              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
