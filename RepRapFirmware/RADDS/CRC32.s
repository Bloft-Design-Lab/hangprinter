ARM GAS  /tmp/ccTma4gj.s 			page 1


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
  11              		.file	"CRC32.cpp"
  12              		.section	.text._ZN5CRC32C2Ev,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN5CRC32C2Ev
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN5CRC32C2Ev, %function
  21              	_ZN5CRC32C2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 4FF0FF33 		mov	r3, #-1
  26 0004 0360     		str	r3, [r0]
  27 0006 7047     		bx	lr
  28              		.size	_ZN5CRC32C2Ev, .-_ZN5CRC32C2Ev
  29              		.global	_ZN5CRC32C1Ev
  30              		.thumb_set _ZN5CRC32C1Ev,_ZN5CRC32C2Ev
  31              		.section	.text._ZN5CRC326UpdateEc,"ax",%progbits
  32              		.align	1
  33              		.p2align 2,,3
  34              		.global	_ZN5CRC326UpdateEc
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu softvfp
  39              		.type	_ZN5CRC326UpdateEc, %function
  40              	_ZN5CRC326UpdateEc:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43              		@ link register save eliminated.
  44 0000 0268     		ldr	r2, [r0]
  45 0002 044B     		ldr	r3, .L3
  46 0004 5140     		eors	r1, r1, r2
  47 0006 C9B2     		uxtb	r1, r1
  48 0008 53F82130 		ldr	r3, [r3, r1, lsl #2]
  49 000c 83EA1223 		eor	r3, r3, r2, lsr #8
  50 0010 0360     		str	r3, [r0]
  51 0012 7047     		bx	lr
  52              	.L4:
  53              		.align	2
  54              	.L3:
  55 0014 00000000 		.word	.LANCHOR0
  56              		.size	_ZN5CRC326UpdateEc, .-_ZN5CRC326UpdateEc
  57              		.section	.text._ZN5CRC326UpdateEPKcj,"ax",%progbits
ARM GAS  /tmp/ccTma4gj.s 			page 2


  58              		.align	1
  59              		.p2align 2,,3
  60              		.global	_ZN5CRC326UpdateEPKcj
  61              		.syntax unified
  62              		.thumb
  63              		.thumb_func
  64              		.fpu softvfp
  65              		.type	_ZN5CRC326UpdateEPKcj, %function
  66              	_ZN5CRC326UpdateEPKcj:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69              		@ link register save eliminated.
  70 0000 7AB1     		cbz	r2, .L14
  71 0002 30B4     		push	{r4, r5}
  72 0004 0468     		ldr	r4, [r0]
  73 0006 074D     		ldr	r5, .L16
  74 0008 0A44     		add	r2, r2, r1
  75              	.L8:
  76 000a 11F8013B 		ldrb	r3, [r1], #1	@ zero_extendqisi2
  77 000e 6340     		eors	r3, r3, r4
  78 0010 DBB2     		uxtb	r3, r3
  79 0012 55F82330 		ldr	r3, [r5, r3, lsl #2]
  80 0016 8A42     		cmp	r2, r1
  81 0018 83EA1424 		eor	r4, r3, r4, lsr #8
  82 001c 0460     		str	r4, [r0]
  83 001e F4D1     		bne	.L8
  84 0020 30BC     		pop	{r4, r5}
  85              	.L14:
  86 0022 7047     		bx	lr
  87              	.L17:
  88              		.align	2
  89              	.L16:
  90 0024 00000000 		.word	.LANCHOR0
  91              		.size	_ZN5CRC326UpdateEPKcj, .-_ZN5CRC326UpdateEPKcj
  92              		.section	.text._ZN5CRC325ResetEv,"ax",%progbits
  93              		.align	1
  94              		.p2align 2,,3
  95              		.global	_ZN5CRC325ResetEv
  96              		.syntax unified
  97              		.thumb
  98              		.thumb_func
  99              		.fpu softvfp
 100              		.type	_ZN5CRC325ResetEv, %function
 101              	_ZN5CRC325ResetEv:
 102              		@ args = 0, pretend = 0, frame = 0
 103              		@ frame_needed = 0, uses_anonymous_args = 0
 104              		@ link register save eliminated.
 105 0000 4FF0FF33 		mov	r3, #-1
 106 0004 0360     		str	r3, [r0]
 107 0006 7047     		bx	lr
 108              		.size	_ZN5CRC325ResetEv, .-_ZN5CRC325ResetEv
 109              		.global	_ZN5CRC3210CRC_32_TABE
 110              		.section	.rodata._ZN5CRC3210CRC_32_TABE,"a",%progbits
 111              		.align	2
 112              		.set	.LANCHOR0,. + 0
 113              		.type	_ZN5CRC3210CRC_32_TABE, %object
 114              		.size	_ZN5CRC3210CRC_32_TABE, 1024
ARM GAS  /tmp/ccTma4gj.s 			page 3


 115              	_ZN5CRC3210CRC_32_TABE:
 116 0000 00000000 		.word	0
 117 0004 96300777 		.word	1996959894
 118 0008 2C610EEE 		.word	-301047508
 119 000c BA510999 		.word	-1727442502
 120 0010 19C46D07 		.word	124634137
 121 0014 8FF46A70 		.word	1886057615
 122 0018 35A563E9 		.word	-379345611
 123 001c A395649E 		.word	-1637575261
 124 0020 3288DB0E 		.word	249268274
 125 0024 A4B8DC79 		.word	2044508324
 126 0028 1EE9D5E0 		.word	-522852066
 127 002c 88D9D297 		.word	-1747789432
 128 0030 2B4CB609 		.word	162941995
 129 0034 BD7CB17E 		.word	2125561021
 130 0038 072DB8E7 		.word	-407360249
 131 003c 911DBF90 		.word	-1866523247
 132 0040 6410B71D 		.word	498536548
 133 0044 F220B06A 		.word	1789927666
 134 0048 4871B9F3 		.word	-205950648
 135 004c DE41BE84 		.word	-2067906082
 136 0050 7DD4DA1A 		.word	450548861
 137 0054 EBE4DD6D 		.word	1843258603
 138 0058 51B5D4F4 		.word	-187386543
 139 005c C785D383 		.word	-2083289657
 140 0060 56986C13 		.word	325883990
 141 0064 C0A86B64 		.word	1684777152
 142 0068 7AF962FD 		.word	-43845254
 143 006c ECC9658A 		.word	-1973040660
 144 0070 4F5C0114 		.word	335633487
 145 0074 D96C0663 		.word	1661365465
 146 0078 633D0FFA 		.word	-99664541
 147 007c F50D088D 		.word	-1928851979
 148 0080 C8206E3B 		.word	997073096
 149 0084 5E10694C 		.word	1281953886
 150 0088 E44160D5 		.word	-715111964
 151 008c 727167A2 		.word	-1570279054
 152 0090 D1E4033C 		.word	1006888145
 153 0094 47D4044B 		.word	1258607687
 154 0098 FD850DD2 		.word	-770865667
 155 009c 6BB50AA5 		.word	-1526024853
 156 00a0 FAA8B535 		.word	901097722
 157 00a4 6C98B242 		.word	1119000684
 158 00a8 D6C9BBDB 		.word	-608450090
 159 00ac 40F9BCAC 		.word	-1396901568
 160 00b0 E36CD832 		.word	853044451
 161 00b4 755CDF45 		.word	1172266101
 162 00b8 CF0DD6DC 		.word	-589951537
 163 00bc 593DD1AB 		.word	-1412350631
 164 00c0 AC30D926 		.word	651767980
 165 00c4 3A00DE51 		.word	1373503546
 166 00c8 8051D7C8 		.word	-925412992
 167 00cc 1661D0BF 		.word	-1076862698
 168 00d0 B5F4B421 		.word	565507253
 169 00d4 23C4B356 		.word	1454621731
 170 00d8 9995BACF 		.word	-809855591
 171 00dc 0FA5BDB8 		.word	-1195530993
ARM GAS  /tmp/ccTma4gj.s 			page 4


 172 00e0 9EB80228 		.word	671266974
 173 00e4 0888055F 		.word	1594198024
 174 00e8 B2D90CC6 		.word	-972236366
 175 00ec 24E90BB1 		.word	-1324619484
 176 00f0 877C6F2F 		.word	795835527
 177 00f4 114C6858 		.word	1483230225
 178 00f8 AB1D61C1 		.word	-1050600021
 179 00fc 3D2D66B6 		.word	-1234817731
 180 0100 9041DC76 		.word	1994146192
 181 0104 0671DB01 		.word	31158534
 182 0108 BC20D298 		.word	-1731059524
 183 010c 2A10D5EF 		.word	-271249366
 184 0110 8985B171 		.word	1907459465
 185 0114 1FB5B606 		.word	112637215
 186 0118 A5E4BF9F 		.word	-1614814043
 187 011c 33D4B8E8 		.word	-390540237
 188 0120 A2C90778 		.word	2013776290
 189 0124 34F9000F 		.word	251722036
 190 0128 8EA80996 		.word	-1777751922
 191 012c 18980EE1 		.word	-519137256
 192 0130 BB0D6A7F 		.word	2137656763
 193 0134 2D3D6D08 		.word	141376813
 194 0138 976C6491 		.word	-1855689577
 195 013c 015C63E6 		.word	-429695999
 196 0140 F4516B6B 		.word	1802195444
 197 0144 62616C1C 		.word	476864866
 198 0148 D8306585 		.word	-2056965928
 199 014c 4E0062F2 		.word	-228458418
 200 0150 ED95066C 		.word	1812370925
 201 0154 7BA5011B 		.word	453092731
 202 0158 C1F40882 		.word	-2113342271
 203 015c 57C40FF5 		.word	-183516073
 204 0160 C6D9B065 		.word	1706088902
 205 0164 50E9B712 		.word	314042704
 206 0168 EAB8BE8B 		.word	-1950435094
 207 016c 7C88B9FC 		.word	-54949764
 208 0170 DF1DDD62 		.word	1658658271
 209 0174 492DDA15 		.word	366619977
 210 0178 F37CD38C 		.word	-1932296973
 211 017c 654CD4FB 		.word	-69972891
 212 0180 5861B24D 		.word	1303535960
 213 0184 CE51B53A 		.word	984961486
 214 0188 7400BCA3 		.word	-1547960204
 215 018c E230BBD4 		.word	-725929758
 216 0190 41A5DF4A 		.word	1256170817
 217 0194 D795D83D 		.word	1037604311
 218 0198 6DC4D1A4 		.word	-1529756563
 219 019c FBF4D6D3 		.word	-740887301
 220 01a0 6AE96943 		.word	1131014506
 221 01a4 FCD96E34 		.word	879679996
 222 01a8 468867AD 		.word	-1385723834
 223 01ac D0B860DA 		.word	-631195440
 224 01b0 732D0444 		.word	1141124467
 225 01b4 E51D0333 		.word	855842277
 226 01b8 5F4C0AAA 		.word	-1442165665
 227 01bc C97C0DDD 		.word	-586318647
 228 01c0 3C710550 		.word	1342533948
ARM GAS  /tmp/ccTma4gj.s 			page 5


 229 01c4 AA410227 		.word	654459306
 230 01c8 10100BBE 		.word	-1106571248
 231 01cc 86200CC9 		.word	-921952122
 232 01d0 25B56857 		.word	1466479909
 233 01d4 B3856F20 		.word	544179635
 234 01d8 09D466B9 		.word	-1184443383
 235 01dc 9FE461CE 		.word	-832445281
 236 01e0 0EF9DE5E 		.word	1591671054
 237 01e4 98C9D929 		.word	702138776
 238 01e8 2298D0B0 		.word	-1328506846
 239 01ec B4A8D7C7 		.word	-942167884
 240 01f0 173DB359 		.word	1504918807
 241 01f4 810DB42E 		.word	783551873
 242 01f8 3B5CBDB7 		.word	-1212326853
 243 01fc AD6CBAC0 		.word	-1061524307
 244 0200 2083B8ED 		.word	-306674912
 245 0204 B6B3BF9A 		.word	-1698712650
 246 0208 0CE2B603 		.word	62317068
 247 020c 9AD2B174 		.word	1957810842
 248 0210 3947D5EA 		.word	-355121351
 249 0214 AF77D29D 		.word	-1647151185
 250 0218 1526DB04 		.word	81470997
 251 021c 8316DC73 		.word	1943803523
 252 0220 120B63E3 		.word	-480048366
 253 0224 843B6494 		.word	-1805370492
 254 0228 3E6A6D0D 		.word	225274430
 255 022c A85A6A7A 		.word	2053790376
 256 0230 0BCF0EE4 		.word	-468791541
 257 0234 9DFF0993 		.word	-1828061283
 258 0238 27AE000A 		.word	167816743
 259 023c B19E077D 		.word	2097651377
 260 0240 44930FF0 		.word	-267414716
 261 0244 D2A30887 		.word	-2029476910
 262 0248 68F2011E 		.word	503444072
 263 024c FEC20669 		.word	1762050814
 264 0250 5D5762F7 		.word	-144550051
 265 0254 CB676580 		.word	-2140837941
 266 0258 71366C19 		.word	426522225
 267 025c E7066B6E 		.word	1852507879
 268 0260 761BD4FE 		.word	-19653770
 269 0264 E02BD389 		.word	-1982649376
 270 0268 5A7ADA10 		.word	282753626
 271 026c CC4ADD67 		.word	1742555852
 272 0270 6FDFB9F9 		.word	-105259153
 273 0274 F9EFBE8E 		.word	-1900089351
 274 0278 43BEB717 		.word	397917763
 275 027c D58EB060 		.word	1622183637
 276 0280 E8A3D6D6 		.word	-690576408
 277 0284 7E93D1A1 		.word	-1580100738
 278 0288 C4C2D838 		.word	953729732
 279 028c 52F2DF4F 		.word	1340076626
 280 0290 F167BBD1 		.word	-776247311
 281 0294 6757BCA6 		.word	-1497606297
 282 0298 DD06B53F 		.word	1068828381
 283 029c 4B36B248 		.word	1219638859
 284 02a0 DA2B0DD8 		.word	-670225446
 285 02a4 4C1B0AAF 		.word	-1358292148
ARM GAS  /tmp/ccTma4gj.s 			page 6


 286 02a8 F64A0336 		.word	906185462
 287 02ac 607A0441 		.word	1090812512
 288 02b0 C3EF60DF 		.word	-547295293
 289 02b4 55DF67A8 		.word	-1469587627
 290 02b8 EF8E6E31 		.word	829329135
 291 02bc 79BE6946 		.word	1181335161
 292 02c0 8CB361CB 		.word	-882789492
 293 02c4 1A8366BC 		.word	-1134132454
 294 02c8 A0D26F25 		.word	628085408
 295 02cc 36E26852 		.word	1382605366
 296 02d0 95770CCC 		.word	-871598187
 297 02d4 03470BBB 		.word	-1156888829
 298 02d8 B9160222 		.word	570562233
 299 02dc 2F260555 		.word	1426400815
 300 02e0 BE3BBAC5 		.word	-977650754
 301 02e4 280BBDB2 		.word	-1296233688
 302 02e8 925AB42B 		.word	733239954
 303 02ec 046AB35C 		.word	1555261956
 304 02f0 A7FFD7C2 		.word	-1026031705
 305 02f4 31CFD0B5 		.word	-1244606671
 306 02f8 8B9ED92C 		.word	752459403
 307 02fc 1DAEDE5B 		.word	1541320221
 308 0300 B0C2649B 		.word	-1687895376
 309 0304 26F263EC 		.word	-328994266
 310 0308 9CA36A75 		.word	1969922972
 311 030c 0A936D02 		.word	40735498
 312 0310 A906099C 		.word	-1677130071
 313 0314 3F360EEB 		.word	-351390145
 314 0318 85670772 		.word	1913087877
 315 031c 13570005 		.word	83908371
 316 0320 824ABF95 		.word	-1782625662
 317 0324 147AB8E2 		.word	-491226604
 318 0328 AE2BB17B 		.word	2075208622
 319 032c 381BB60C 		.word	213261112
 320 0330 9B8ED292 		.word	-1831694693
 321 0334 0DBED5E5 		.word	-438977011
 322 0338 B7EFDC7C 		.word	2094854071
 323 033c 21DFDB0B 		.word	198958881
 324 0340 D4D2D386 		.word	-2032938284
 325 0344 42E2D4F1 		.word	-237706686
 326 0348 F8B3DD68 		.word	1759359992
 327 034c 6E83DA1F 		.word	534414190
 328 0350 CD16BE81 		.word	-2118248755
 329 0354 5B26B9F6 		.word	-155638181
 330 0358 E177B06F 		.word	1873836001
 331 035c 7747B718 		.word	414664567
 332 0360 E65A0888 		.word	-2012718362
 333 0364 706A0FFF 		.word	-15766928
 334 0368 CA3B0666 		.word	1711684554
 335 036c 5C0B0111 		.word	285281116
 336 0370 FF9E658F 		.word	-1889165569
 337 0374 69AE62F8 		.word	-127750551
 338 0378 D3FF6B61 		.word	1634467795
 339 037c 45CF6C16 		.word	376229701
 340 0380 78E20AA0 		.word	-1609899400
 341 0384 EED20DD7 		.word	-686959890
 342 0388 5483044E 		.word	1308918612
ARM GAS  /tmp/ccTma4gj.s 			page 7


 343 038c C2B30339 		.word	956543938
 344 0390 612667A7 		.word	-1486412191
 345 0394 F71660D0 		.word	-799009033
 346 0398 4D476949 		.word	1231636301
 347 039c DB776E3E 		.word	1047427035
 348 03a0 4A6AD1AE 		.word	-1362007478
 349 03a4 DC5AD6D9 		.word	-640263460
 350 03a8 660BDF40 		.word	1088359270
 351 03ac F03BD837 		.word	936918000
 352 03b0 53AEBCA9 		.word	-1447252397
 353 03b4 C59EBBDE 		.word	-558129467
 354 03b8 7FCFB247 		.word	1202900863
 355 03bc E9FFB530 		.word	817233897
 356 03c0 1CF2BDBD 		.word	-1111625188
 357 03c4 8AC2BACA 		.word	-893730166
 358 03c8 3093B353 		.word	1404277552
 359 03cc A6A3B424 		.word	615818150
 360 03d0 0536D0BA 		.word	-1160759803
 361 03d4 9306D7CD 		.word	-841546093
 362 03d8 2957DE54 		.word	1423857449
 363 03dc BF67D923 		.word	601450431
 364 03e0 2E7A66B3 		.word	-1285129682
 365 03e4 B84A61C4 		.word	-1000256840
 366 03e8 021B685D 		.word	1567103746
 367 03ec 942B6F2A 		.word	711928724
 368 03f0 37BE0BB4 		.word	-1274298825
 369 03f4 A18E0CC3 		.word	-1022587231
 370 03f8 1BDF055A 		.word	1510334235
 371 03fc 8DEF022D 		.word	755167117
 372              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
