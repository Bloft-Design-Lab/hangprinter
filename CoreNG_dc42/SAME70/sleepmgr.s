ARM GAS  /tmp/ccpornqy.s 			page 1


   1              		.cpu cortex-m7
   2              		.eabi_attribute 28, 1
   3              		.eabi_attribute 20, 1
   4              		.eabi_attribute 21, 1
   5              		.eabi_attribute 23, 3
   6              		.eabi_attribute 24, 1
   7              		.eabi_attribute 25, 1
   8              		.eabi_attribute 26, 1
   9              		.eabi_attribute 30, 2
  10              		.eabi_attribute 34, 1
  11              		.eabi_attribute 18, 4
  12              		.file	"sleepmgr.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
  17              		.align	2
  18              		.type	cpu_irq_critical_section_counter, %object
  19              		.size	cpu_irq_critical_section_counter, 4
  20              	cpu_irq_critical_section_counter:
  21 0000 00000000 		.space	4
  22              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
  23              		.type	cpu_irq_prev_interrupt_state, %object
  24              		.size	cpu_irq_prev_interrupt_state, 1
  25              	cpu_irq_prev_interrupt_state:
  26 0000 00       		.space	1
  27              		.text
  28              	.Letext0:
  29              		.file 1 "/usr/include/newlib/machine/_default_types.h"
  30              		.file 2 "/usr/include/newlib/sys/_stdint.h"
  31              		.file 3 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
  32              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
  33              		.file 5 "/usr/include/newlib/sys/lock.h"
  34              		.file 6 "/usr/include/newlib/sys/_types.h"
  35              		.file 7 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
  36              		.file 8 "/usr/include/newlib/sys/reent.h"
  37              		.file 9 "/usr/include/newlib/stdlib.h"
  38              		.file 10 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
  39              		.section	.debug_info,"",%progbits
  40              	.Ldebug_info0:
  41 0000 12090000 		.4byte	0x912
  42 0004 0400     		.2byte	0x4
  43 0006 00000000 		.4byte	.Ldebug_abbrev0
  44 000a 04       		.byte	0x4
  45 000b 01       		.uleb128 0x1
  46 000c AD020000 		.4byte	.LASF132
  47 0010 0C       		.byte	0xc
  48 0011 26000000 		.4byte	.LASF133
  49 0015 05050000 		.4byte	.LASF134
  50 0019 00000000 		.4byte	.Ldebug_line0
  51 001d 02       		.uleb128 0x2
  52 001e 04       		.byte	0x4
  53 001f 05       		.byte	0x5
  54 0020 696E7400 		.ascii	"int\000"
  55 0024 03       		.uleb128 0x3
  56 0025 04       		.byte	0x4
  57 0026 07       		.byte	0x7
ARM GAS  /tmp/ccpornqy.s 			page 2


  58 0027 BF040000 		.4byte	.LASF0
  59 002b 03       		.uleb128 0x3
  60 002c 01       		.byte	0x1
  61 002d 06       		.byte	0x6
  62 002e FD000000 		.4byte	.LASF1
  63 0032 03       		.uleb128 0x3
  64 0033 01       		.byte	0x1
  65 0034 08       		.byte	0x8
  66 0035 CA030000 		.4byte	.LASF2
  67 0039 03       		.uleb128 0x3
  68 003a 02       		.byte	0x2
  69 003b 05       		.byte	0x5
  70 003c 0C000000 		.4byte	.LASF3
  71 0040 03       		.uleb128 0x3
  72 0041 02       		.byte	0x2
  73 0042 07       		.byte	0x7
  74 0043 F2040000 		.4byte	.LASF4
  75 0047 04       		.uleb128 0x4
  76 0048 CC040000 		.4byte	.LASF6
  77 004c 01       		.byte	0x1
  78 004d 3F       		.byte	0x3f
  79 004e 52000000 		.4byte	0x52
  80 0052 03       		.uleb128 0x3
  81 0053 04       		.byte	0x4
  82 0054 05       		.byte	0x5
  83 0055 53010000 		.4byte	.LASF5
  84 0059 04       		.uleb128 0x4
  85 005a C5010000 		.4byte	.LASF7
  86 005e 01       		.byte	0x1
  87 005f 41       		.byte	0x41
  88 0060 64000000 		.4byte	0x64
  89 0064 03       		.uleb128 0x3
  90 0065 04       		.byte	0x4
  91 0066 07       		.byte	0x7
  92 0067 24020000 		.4byte	.LASF8
  93 006b 03       		.uleb128 0x3
  94 006c 08       		.byte	0x8
  95 006d 05       		.byte	0x5
  96 006e 7C010000 		.4byte	.LASF9
  97 0072 03       		.uleb128 0x3
  98 0073 08       		.byte	0x8
  99 0074 07       		.byte	0x7
 100 0075 0F010000 		.4byte	.LASF10
 101 0079 04       		.uleb128 0x4
 102 007a C2030000 		.4byte	.LASF11
 103 007e 02       		.byte	0x2
 104 007f 2C       		.byte	0x2c
 105 0080 47000000 		.4byte	0x47
 106 0084 05       		.uleb128 0x5
 107 0085 79000000 		.4byte	0x79
 108 0089 04       		.uleb128 0x4
 109 008a 66050000 		.4byte	.LASF12
 110 008e 02       		.byte	0x2
 111 008f 30       		.byte	0x30
 112 0090 59000000 		.4byte	0x59
 113 0094 05       		.uleb128 0x5
 114 0095 89000000 		.4byte	0x89
ARM GAS  /tmp/ccpornqy.s 			page 3


 115 0099 06       		.uleb128 0x6
 116 009a 04       		.byte	0x4
 117 009b 03       		.uleb128 0x3
 118 009c 04       		.byte	0x4
 119 009d 07       		.byte	0x7
 120 009e A4020000 		.4byte	.LASF13
 121 00a2 07       		.uleb128 0x7
 122 00a3 BC000000 		.4byte	.LASF14
 123 00a7 03       		.byte	0x3
 124 00a8 6508     		.2byte	0x865
 125 00aa 84000000 		.4byte	0x84
 126 00ae 08       		.uleb128 0x8
 127 00af 04020000 		.4byte	.LASF15
 128 00b3 04       		.byte	0x4
 129 00b4 3A       		.byte	0x3a
 130 00b5 89000000 		.4byte	0x89
 131 00b9 04       		.uleb128 0x4
 132 00ba A4030000 		.4byte	.LASF16
 133 00be 05       		.byte	0x5
 134 00bf 07       		.byte	0x7
 135 00c0 1D000000 		.4byte	0x1d
 136 00c4 04       		.uleb128 0x4
 137 00c5 EF000000 		.4byte	.LASF17
 138 00c9 06       		.byte	0x6
 139 00ca 2C       		.byte	0x2c
 140 00cb 52000000 		.4byte	0x52
 141 00cf 04       		.uleb128 0x4
 142 00d0 9C040000 		.4byte	.LASF18
 143 00d4 06       		.byte	0x6
 144 00d5 72       		.byte	0x72
 145 00d6 52000000 		.4byte	0x52
 146 00da 09       		.uleb128 0x9
 147 00db 83030000 		.4byte	.LASF19
 148 00df 07       		.byte	0x7
 149 00e0 6501     		.2byte	0x165
 150 00e2 24000000 		.4byte	0x24
 151 00e6 0A       		.uleb128 0xa
 152 00e7 04       		.byte	0x4
 153 00e8 06       		.byte	0x6
 154 00e9 A6       		.byte	0xa6
 155 00ea 05010000 		.4byte	0x105
 156 00ee 0B       		.uleb128 0xb
 157 00ef 75020000 		.4byte	.LASF20
 158 00f3 06       		.byte	0x6
 159 00f4 A8       		.byte	0xa8
 160 00f5 DA000000 		.4byte	0xda
 161 00f9 0B       		.uleb128 0xb
 162 00fa FD010000 		.4byte	.LASF21
 163 00fe 06       		.byte	0x6
 164 00ff A9       		.byte	0xa9
 165 0100 05010000 		.4byte	0x105
 166 0104 00       		.byte	0
 167 0105 0C       		.uleb128 0xc
 168 0106 32000000 		.4byte	0x32
 169 010a 15010000 		.4byte	0x115
 170 010e 0D       		.uleb128 0xd
 171 010f 9B000000 		.4byte	0x9b
ARM GAS  /tmp/ccpornqy.s 			page 4


 172 0113 03       		.byte	0x3
 173 0114 00       		.byte	0
 174 0115 0E       		.uleb128 0xe
 175 0116 08       		.byte	0x8
 176 0117 06       		.byte	0x6
 177 0118 A3       		.byte	0xa3
 178 0119 36010000 		.4byte	0x136
 179 011d 0F       		.uleb128 0xf
 180 011e 7C040000 		.4byte	.LASF22
 181 0122 06       		.byte	0x6
 182 0123 A5       		.byte	0xa5
 183 0124 1D000000 		.4byte	0x1d
 184 0128 00       		.byte	0
 185 0129 0F       		.uleb128 0xf
 186 012a 84040000 		.4byte	.LASF23
 187 012e 06       		.byte	0x6
 188 012f AA       		.byte	0xaa
 189 0130 E6000000 		.4byte	0xe6
 190 0134 04       		.byte	0x4
 191 0135 00       		.byte	0
 192 0136 04       		.uleb128 0x4
 193 0137 1A040000 		.4byte	.LASF24
 194 013b 06       		.byte	0x6
 195 013c AB       		.byte	0xab
 196 013d 15010000 		.4byte	0x115
 197 0141 04       		.uleb128 0x4
 198 0142 E7030000 		.4byte	.LASF25
 199 0146 06       		.byte	0x6
 200 0147 AF       		.byte	0xaf
 201 0148 B9000000 		.4byte	0xb9
 202 014c 04       		.uleb128 0x4
 203 014d 34050000 		.4byte	.LASF26
 204 0151 08       		.byte	0x8
 205 0152 16       		.byte	0x16
 206 0153 64000000 		.4byte	0x64
 207 0157 10       		.uleb128 0x10
 208 0158 EA010000 		.4byte	.LASF31
 209 015c 18       		.byte	0x18
 210 015d 08       		.byte	0x8
 211 015e 2D       		.byte	0x2d
 212 015f AA010000 		.4byte	0x1aa
 213 0163 0F       		.uleb128 0xf
 214 0164 D6040000 		.4byte	.LASF27
 215 0168 08       		.byte	0x8
 216 0169 2F       		.byte	0x2f
 217 016a AA010000 		.4byte	0x1aa
 218 016e 00       		.byte	0
 219 016f 11       		.uleb128 0x11
 220 0170 5F6B00   		.ascii	"_k\000"
 221 0173 08       		.byte	0x8
 222 0174 30       		.byte	0x30
 223 0175 1D000000 		.4byte	0x1d
 224 0179 04       		.byte	0x4
 225 017a 0F       		.uleb128 0xf
 226 017b 67040000 		.4byte	.LASF28
 227 017f 08       		.byte	0x8
 228 0180 30       		.byte	0x30
ARM GAS  /tmp/ccpornqy.s 			page 5


 229 0181 1D000000 		.4byte	0x1d
 230 0185 08       		.byte	0x8
 231 0186 0F       		.uleb128 0xf
 232 0187 D0010000 		.4byte	.LASF29
 233 018b 08       		.byte	0x8
 234 018c 30       		.byte	0x30
 235 018d 1D000000 		.4byte	0x1d
 236 0191 0C       		.byte	0xc
 237 0192 0F       		.uleb128 0xf
 238 0193 7C050000 		.4byte	.LASF30
 239 0197 08       		.byte	0x8
 240 0198 30       		.byte	0x30
 241 0199 1D000000 		.4byte	0x1d
 242 019d 10       		.byte	0x10
 243 019e 11       		.uleb128 0x11
 244 019f 5F7800   		.ascii	"_x\000"
 245 01a2 08       		.byte	0x8
 246 01a3 31       		.byte	0x31
 247 01a4 B0010000 		.4byte	0x1b0
 248 01a8 14       		.byte	0x14
 249 01a9 00       		.byte	0
 250 01aa 12       		.uleb128 0x12
 251 01ab 04       		.byte	0x4
 252 01ac 57010000 		.4byte	0x157
 253 01b0 0C       		.uleb128 0xc
 254 01b1 4C010000 		.4byte	0x14c
 255 01b5 C0010000 		.4byte	0x1c0
 256 01b9 0D       		.uleb128 0xd
 257 01ba 9B000000 		.4byte	0x9b
 258 01be 00       		.byte	0
 259 01bf 00       		.byte	0
 260 01c0 10       		.uleb128 0x10
 261 01c1 F8010000 		.4byte	.LASF32
 262 01c5 24       		.byte	0x24
 263 01c6 08       		.byte	0x8
 264 01c7 35       		.byte	0x35
 265 01c8 39020000 		.4byte	0x239
 266 01cc 0F       		.uleb128 0xf
 267 01cd E6000000 		.4byte	.LASF33
 268 01d1 08       		.byte	0x8
 269 01d2 37       		.byte	0x37
 270 01d3 1D000000 		.4byte	0x1d
 271 01d7 00       		.byte	0
 272 01d8 0F       		.uleb128 0xf
 273 01d9 ED050000 		.4byte	.LASF34
 274 01dd 08       		.byte	0x8
 275 01de 38       		.byte	0x38
 276 01df 1D000000 		.4byte	0x1d
 277 01e3 04       		.byte	0x4
 278 01e4 0F       		.uleb128 0xf
 279 01e5 26010000 		.4byte	.LASF35
 280 01e9 08       		.byte	0x8
 281 01ea 39       		.byte	0x39
 282 01eb 1D000000 		.4byte	0x1d
 283 01ef 08       		.byte	0x8
 284 01f0 0F       		.uleb128 0xf
 285 01f1 0E060000 		.4byte	.LASF36
ARM GAS  /tmp/ccpornqy.s 			page 6


 286 01f5 08       		.byte	0x8
 287 01f6 3A       		.byte	0x3a
 288 01f7 1D000000 		.4byte	0x1d
 289 01fb 0C       		.byte	0xc
 290 01fc 0F       		.uleb128 0xf
 291 01fd 4E030000 		.4byte	.LASF37
 292 0201 08       		.byte	0x8
 293 0202 3B       		.byte	0x3b
 294 0203 1D000000 		.4byte	0x1d
 295 0207 10       		.byte	0x10
 296 0208 0F       		.uleb128 0xf
 297 0209 9A020000 		.4byte	.LASF38
 298 020d 08       		.byte	0x8
 299 020e 3C       		.byte	0x3c
 300 020f 1D000000 		.4byte	0x1d
 301 0213 14       		.byte	0x14
 302 0214 0F       		.uleb128 0xf
 303 0215 92040000 		.4byte	.LASF39
 304 0219 08       		.byte	0x8
 305 021a 3D       		.byte	0x3d
 306 021b 1D000000 		.4byte	0x1d
 307 021f 18       		.byte	0x18
 308 0220 0F       		.uleb128 0xf
 309 0221 F0030000 		.4byte	.LASF40
 310 0225 08       		.byte	0x8
 311 0226 3E       		.byte	0x3e
 312 0227 1D000000 		.4byte	0x1d
 313 022b 1C       		.byte	0x1c
 314 022c 0F       		.uleb128 0xf
 315 022d D3050000 		.4byte	.LASF41
 316 0231 08       		.byte	0x8
 317 0232 3F       		.byte	0x3f
 318 0233 1D000000 		.4byte	0x1d
 319 0237 20       		.byte	0x20
 320 0238 00       		.byte	0
 321 0239 13       		.uleb128 0x13
 322 023a 35010000 		.4byte	.LASF42
 323 023e 0801     		.2byte	0x108
 324 0240 08       		.byte	0x8
 325 0241 48       		.byte	0x48
 326 0242 79020000 		.4byte	0x279
 327 0246 0F       		.uleb128 0xf
 328 0247 16000000 		.4byte	.LASF43
 329 024b 08       		.byte	0x8
 330 024c 49       		.byte	0x49
 331 024d 79020000 		.4byte	0x279
 332 0251 00       		.byte	0
 333 0252 0F       		.uleb128 0xf
 334 0253 00000000 		.4byte	.LASF44
 335 0257 08       		.byte	0x8
 336 0258 4A       		.byte	0x4a
 337 0259 79020000 		.4byte	0x279
 338 025d 80       		.byte	0x80
 339 025e 14       		.uleb128 0x14
 340 025f E9040000 		.4byte	.LASF45
 341 0263 08       		.byte	0x8
 342 0264 4C       		.byte	0x4c
ARM GAS  /tmp/ccpornqy.s 			page 7


 343 0265 4C010000 		.4byte	0x14c
 344 0269 0001     		.2byte	0x100
 345 026b 14       		.uleb128 0x14
 346 026c 63010000 		.4byte	.LASF46
 347 0270 08       		.byte	0x8
 348 0271 4F       		.byte	0x4f
 349 0272 4C010000 		.4byte	0x14c
 350 0276 0401     		.2byte	0x104
 351 0278 00       		.byte	0
 352 0279 0C       		.uleb128 0xc
 353 027a 99000000 		.4byte	0x99
 354 027e 89020000 		.4byte	0x289
 355 0282 0D       		.uleb128 0xd
 356 0283 9B000000 		.4byte	0x9b
 357 0287 1F       		.byte	0x1f
 358 0288 00       		.byte	0
 359 0289 13       		.uleb128 0x13
 360 028a 57030000 		.4byte	.LASF47
 361 028e 9001     		.2byte	0x190
 362 0290 08       		.byte	0x8
 363 0291 5B       		.byte	0x5b
 364 0292 C7020000 		.4byte	0x2c7
 365 0296 0F       		.uleb128 0xf
 366 0297 D6040000 		.4byte	.LASF27
 367 029b 08       		.byte	0x8
 368 029c 5C       		.byte	0x5c
 369 029d C7020000 		.4byte	0x2c7
 370 02a1 00       		.byte	0
 371 02a2 0F       		.uleb128 0xf
 372 02a3 48040000 		.4byte	.LASF48
 373 02a7 08       		.byte	0x8
 374 02a8 5D       		.byte	0x5d
 375 02a9 1D000000 		.4byte	0x1d
 376 02ad 04       		.byte	0x4
 377 02ae 0F       		.uleb128 0xf
 378 02af C0010000 		.4byte	.LASF49
 379 02b3 08       		.byte	0x8
 380 02b4 5F       		.byte	0x5f
 381 02b5 CD020000 		.4byte	0x2cd
 382 02b9 08       		.byte	0x8
 383 02ba 0F       		.uleb128 0xf
 384 02bb 35010000 		.4byte	.LASF42
 385 02bf 08       		.byte	0x8
 386 02c0 60       		.byte	0x60
 387 02c1 39020000 		.4byte	0x239
 388 02c5 88       		.byte	0x88
 389 02c6 00       		.byte	0
 390 02c7 12       		.uleb128 0x12
 391 02c8 04       		.byte	0x4
 392 02c9 89020000 		.4byte	0x289
 393 02cd 0C       		.uleb128 0xc
 394 02ce DD020000 		.4byte	0x2dd
 395 02d2 DD020000 		.4byte	0x2dd
 396 02d6 0D       		.uleb128 0xd
 397 02d7 9B000000 		.4byte	0x9b
 398 02db 1F       		.byte	0x1f
 399 02dc 00       		.byte	0
ARM GAS  /tmp/ccpornqy.s 			page 8


 400 02dd 12       		.uleb128 0x12
 401 02de 04       		.byte	0x4
 402 02df E3020000 		.4byte	0x2e3
 403 02e3 15       		.uleb128 0x15
 404 02e4 10       		.uleb128 0x10
 405 02e5 FA030000 		.4byte	.LASF50
 406 02e9 08       		.byte	0x8
 407 02ea 08       		.byte	0x8
 408 02eb 73       		.byte	0x73
 409 02ec 09030000 		.4byte	0x309
 410 02f0 0F       		.uleb128 0xf
 411 02f1 B6030000 		.4byte	.LASF51
 412 02f5 08       		.byte	0x8
 413 02f6 74       		.byte	0x74
 414 02f7 09030000 		.4byte	0x309
 415 02fb 00       		.byte	0
 416 02fc 0F       		.uleb128 0xf
 417 02fd B9040000 		.4byte	.LASF52
 418 0301 08       		.byte	0x8
 419 0302 75       		.byte	0x75
 420 0303 1D000000 		.4byte	0x1d
 421 0307 04       		.byte	0x4
 422 0308 00       		.byte	0
 423 0309 12       		.uleb128 0x12
 424 030a 04       		.byte	0x4
 425 030b 32000000 		.4byte	0x32
 426 030f 10       		.uleb128 0x10
 427 0310 25040000 		.4byte	.LASF53
 428 0314 68       		.byte	0x68
 429 0315 08       		.byte	0x8
 430 0316 B3       		.byte	0xb3
 431 0317 39040000 		.4byte	0x439
 432 031b 11       		.uleb128 0x11
 433 031c 5F7000   		.ascii	"_p\000"
 434 031f 08       		.byte	0x8
 435 0320 B4       		.byte	0xb4
 436 0321 09030000 		.4byte	0x309
 437 0325 00       		.byte	0
 438 0326 11       		.uleb128 0x11
 439 0327 5F7200   		.ascii	"_r\000"
 440 032a 08       		.byte	0x8
 441 032b B5       		.byte	0xb5
 442 032c 1D000000 		.4byte	0x1d
 443 0330 04       		.byte	0x4
 444 0331 11       		.uleb128 0x11
 445 0332 5F7700   		.ascii	"_w\000"
 446 0335 08       		.byte	0x8
 447 0336 B6       		.byte	0xb6
 448 0337 1D000000 		.4byte	0x1d
 449 033b 08       		.byte	0x8
 450 033c 0F       		.uleb128 0xf
 451 033d 5C010000 		.4byte	.LASF54
 452 0341 08       		.byte	0x8
 453 0342 B7       		.byte	0xb7
 454 0343 39000000 		.4byte	0x39
 455 0347 0C       		.byte	0xc
 456 0348 0F       		.uleb128 0xf
ARM GAS  /tmp/ccpornqy.s 			page 9


 457 0349 36020000 		.4byte	.LASF55
 458 034d 08       		.byte	0x8
 459 034e B8       		.byte	0xb8
 460 034f 39000000 		.4byte	0x39
 461 0353 0E       		.byte	0xe
 462 0354 11       		.uleb128 0x11
 463 0355 5F626600 		.ascii	"_bf\000"
 464 0359 08       		.byte	0x8
 465 035a B9       		.byte	0xb9
 466 035b E4020000 		.4byte	0x2e4
 467 035f 10       		.byte	0x10
 468 0360 0F       		.uleb128 0xf
 469 0361 B3000000 		.4byte	.LASF56
 470 0365 08       		.byte	0x8
 471 0366 BA       		.byte	0xba
 472 0367 1D000000 		.4byte	0x1d
 473 036b 18       		.byte	0x18
 474 036c 0F       		.uleb128 0xf
 475 036d 43010000 		.4byte	.LASF57
 476 0371 08       		.byte	0x8
 477 0372 C1       		.byte	0xc1
 478 0373 99000000 		.4byte	0x99
 479 0377 1C       		.byte	0x1c
 480 0378 0F       		.uleb128 0xf
 481 0379 F2010000 		.4byte	.LASF58
 482 037d 08       		.byte	0x8
 483 037e C3       		.byte	0xc3
 484 037f A6050000 		.4byte	0x5a6
 485 0383 20       		.byte	0x20
 486 0384 0F       		.uleb128 0xf
 487 0385 93020000 		.4byte	.LASF59
 488 0389 08       		.byte	0x8
 489 038a C5       		.byte	0xc5
 490 038b D0050000 		.4byte	0x5d0
 491 038f 24       		.byte	0x24
 492 0390 0F       		.uleb128 0xf
 493 0391 8C040000 		.4byte	.LASF60
 494 0395 08       		.byte	0x8
 495 0396 C8       		.byte	0xc8
 496 0397 F4050000 		.4byte	0x5f4
 497 039b 28       		.byte	0x28
 498 039c 0F       		.uleb128 0xf
 499 039d F6000000 		.4byte	.LASF61
 500 03a1 08       		.byte	0x8
 501 03a2 C9       		.byte	0xc9
 502 03a3 0E060000 		.4byte	0x60e
 503 03a7 2C       		.byte	0x2c
 504 03a8 11       		.uleb128 0x11
 505 03a9 5F756200 		.ascii	"_ub\000"
 506 03ad 08       		.byte	0x8
 507 03ae CC       		.byte	0xcc
 508 03af E4020000 		.4byte	0x2e4
 509 03b3 30       		.byte	0x30
 510 03b4 11       		.uleb128 0x11
 511 03b5 5F757000 		.ascii	"_up\000"
 512 03b9 08       		.byte	0x8
 513 03ba CD       		.byte	0xcd
ARM GAS  /tmp/ccpornqy.s 			page 10


 514 03bb 09030000 		.4byte	0x309
 515 03bf 38       		.byte	0x38
 516 03c0 11       		.uleb128 0x11
 517 03c1 5F757200 		.ascii	"_ur\000"
 518 03c5 08       		.byte	0x8
 519 03c6 CE       		.byte	0xce
 520 03c7 1D000000 		.4byte	0x1d
 521 03cb 3C       		.byte	0x3c
 522 03cc 0F       		.uleb128 0xf
 523 03cd 09010000 		.4byte	.LASF62
 524 03d1 08       		.byte	0x8
 525 03d2 D1       		.byte	0xd1
 526 03d3 14060000 		.4byte	0x614
 527 03d7 40       		.byte	0x40
 528 03d8 0F       		.uleb128 0xf
 529 03d9 C5050000 		.4byte	.LASF63
 530 03dd 08       		.byte	0x8
 531 03de D2       		.byte	0xd2
 532 03df 24060000 		.4byte	0x624
 533 03e3 43       		.byte	0x43
 534 03e4 11       		.uleb128 0x11
 535 03e5 5F6C6200 		.ascii	"_lb\000"
 536 03e9 08       		.byte	0x8
 537 03ea D5       		.byte	0xd5
 538 03eb E4020000 		.4byte	0x2e4
 539 03ef 44       		.byte	0x44
 540 03f0 0F       		.uleb128 0xf
 541 03f1 B0040000 		.4byte	.LASF64
 542 03f5 08       		.byte	0x8
 543 03f6 D8       		.byte	0xd8
 544 03f7 1D000000 		.4byte	0x1d
 545 03fb 4C       		.byte	0x4c
 546 03fc 0F       		.uleb128 0xf
 547 03fd 99010000 		.4byte	.LASF65
 548 0401 08       		.byte	0x8
 549 0402 D9       		.byte	0xd9
 550 0403 C4000000 		.4byte	0xc4
 551 0407 50       		.byte	0x50
 552 0408 0F       		.uleb128 0xf
 553 0409 3C020000 		.4byte	.LASF66
 554 040d 08       		.byte	0x8
 555 040e DC       		.byte	0xdc
 556 040f 57040000 		.4byte	0x457
 557 0413 54       		.byte	0x54
 558 0414 0F       		.uleb128 0xf
 559 0415 87020000 		.4byte	.LASF67
 560 0419 08       		.byte	0x8
 561 041a E0       		.byte	0xe0
 562 041b 41010000 		.4byte	0x141
 563 041f 58       		.byte	0x58
 564 0420 0F       		.uleb128 0xf
 565 0421 2D040000 		.4byte	.LASF68
 566 0425 08       		.byte	0x8
 567 0426 E2       		.byte	0xe2
 568 0427 36010000 		.4byte	0x136
 569 042b 5C       		.byte	0x5c
 570 042c 0F       		.uleb128 0xf
ARM GAS  /tmp/ccpornqy.s 			page 11


 571 042d 01040000 		.4byte	.LASF69
 572 0431 08       		.byte	0x8
 573 0432 E3       		.byte	0xe3
 574 0433 1D000000 		.4byte	0x1d
 575 0437 64       		.byte	0x64
 576 0438 00       		.byte	0
 577 0439 16       		.uleb128 0x16
 578 043a 1D000000 		.4byte	0x1d
 579 043e 57040000 		.4byte	0x457
 580 0442 17       		.uleb128 0x17
 581 0443 57040000 		.4byte	0x457
 582 0447 17       		.uleb128 0x17
 583 0448 99000000 		.4byte	0x99
 584 044c 17       		.uleb128 0x17
 585 044d 94050000 		.4byte	0x594
 586 0451 17       		.uleb128 0x17
 587 0452 1D000000 		.4byte	0x1d
 588 0456 00       		.byte	0
 589 0457 12       		.uleb128 0x12
 590 0458 04       		.byte	0x4
 591 0459 62040000 		.4byte	0x462
 592 045d 18       		.uleb128 0x18
 593 045e 57040000 		.4byte	0x457
 594 0462 19       		.uleb128 0x19
 595 0463 6F040000 		.4byte	.LASF70
 596 0467 2804     		.2byte	0x428
 597 0469 08       		.byte	0x8
 598 046a 3802     		.2byte	0x238
 599 046c 94050000 		.4byte	0x594
 600 0470 1A       		.uleb128 0x1a
 601 0471 A4040000 		.4byte	.LASF71
 602 0475 08       		.byte	0x8
 603 0476 3A02     		.2byte	0x23a
 604 0478 1D000000 		.4byte	0x1d
 605 047c 00       		.byte	0
 606 047d 1A       		.uleb128 0x1a
 607 047e 6B010000 		.4byte	.LASF72
 608 0482 08       		.byte	0x8
 609 0483 3F02     		.2byte	0x23f
 610 0485 7B060000 		.4byte	0x67b
 611 0489 04       		.byte	0x4
 612 048a 1A       		.uleb128 0x1a
 613 048b 14020000 		.4byte	.LASF73
 614 048f 08       		.byte	0x8
 615 0490 3F02     		.2byte	0x23f
 616 0492 7B060000 		.4byte	0x67b
 617 0496 08       		.byte	0x8
 618 0497 1A       		.uleb128 0x1a
 619 0498 E2010000 		.4byte	.LASF74
 620 049c 08       		.byte	0x8
 621 049d 3F02     		.2byte	0x23f
 622 049f 7B060000 		.4byte	0x67b
 623 04a3 0C       		.byte	0xc
 624 04a4 1A       		.uleb128 0x1a
 625 04a5 43040000 		.4byte	.LASF75
 626 04a9 08       		.byte	0x8
 627 04aa 4102     		.2byte	0x241
ARM GAS  /tmp/ccpornqy.s 			page 12


 628 04ac 1D000000 		.4byte	0x1d
 629 04b0 10       		.byte	0x10
 630 04b1 1A       		.uleb128 0x1a
 631 04b2 55000000 		.4byte	.LASF76
 632 04b6 08       		.byte	0x8
 633 04b7 4202     		.2byte	0x242
 634 04b9 5D080000 		.4byte	0x85d
 635 04bd 14       		.byte	0x14
 636 04be 1A       		.uleb128 0x1a
 637 04bf 54050000 		.4byte	.LASF77
 638 04c3 08       		.byte	0x8
 639 04c4 4402     		.2byte	0x244
 640 04c6 1D000000 		.4byte	0x1d
 641 04ca 30       		.byte	0x30
 642 04cb 1A       		.uleb128 0x1a
 643 04cc 4D040000 		.4byte	.LASF78
 644 04d0 08       		.byte	0x8
 645 04d1 4502     		.2byte	0x245
 646 04d3 CA050000 		.4byte	0x5ca
 647 04d7 34       		.byte	0x34
 648 04d8 1A       		.uleb128 0x1a
 649 04d9 69030000 		.4byte	.LASF79
 650 04dd 08       		.byte	0x8
 651 04de 4702     		.2byte	0x247
 652 04e0 1D000000 		.4byte	0x1d
 653 04e4 38       		.byte	0x38
 654 04e5 1A       		.uleb128 0x1a
 655 04e6 5D040000 		.4byte	.LASF80
 656 04ea 08       		.byte	0x8
 657 04eb 4902     		.2byte	0x249
 658 04ed 78080000 		.4byte	0x878
 659 04f1 3C       		.byte	0x3c
 660 04f2 1A       		.uleb128 0x1a
 661 04f3 6D020000 		.4byte	.LASF81
 662 04f7 08       		.byte	0x8
 663 04f8 4C02     		.2byte	0x24c
 664 04fa AA010000 		.4byte	0x1aa
 665 04fe 40       		.byte	0x40
 666 04ff 1A       		.uleb128 0x1a
 667 0500 72010000 		.4byte	.LASF82
 668 0504 08       		.byte	0x8
 669 0505 4D02     		.2byte	0x24d
 670 0507 1D000000 		.4byte	0x1d
 671 050b 44       		.byte	0x44
 672 050c 1A       		.uleb128 0x1a
 673 050d 09060000 		.4byte	.LASF83
 674 0511 08       		.byte	0x8
 675 0512 4E02     		.2byte	0x24e
 676 0514 AA010000 		.4byte	0x1aa
 677 0518 48       		.byte	0x48
 678 0519 1A       		.uleb128 0x1a
 679 051a 09040000 		.4byte	.LASF84
 680 051e 08       		.byte	0x8
 681 051f 4F02     		.2byte	0x24f
 682 0521 7E080000 		.4byte	0x87e
 683 0525 4C       		.byte	0x4c
 684 0526 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccpornqy.s 			page 13


 685 0527 1C020000 		.4byte	.LASF85
 686 052b 08       		.byte	0x8
 687 052c 5202     		.2byte	0x252
 688 052e 1D000000 		.4byte	0x1d
 689 0532 50       		.byte	0x50
 690 0533 1A       		.uleb128 0x1a
 691 0534 91010000 		.4byte	.LASF86
 692 0538 08       		.byte	0x8
 693 0539 5302     		.2byte	0x253
 694 053b 94050000 		.4byte	0x594
 695 053f 54       		.byte	0x54
 696 0540 1A       		.uleb128 0x1a
 697 0541 82020000 		.4byte	.LASF87
 698 0545 08       		.byte	0x8
 699 0546 7602     		.2byte	0x276
 700 0548 3B080000 		.4byte	0x83b
 701 054c 58       		.byte	0x58
 702 054d 1B       		.uleb128 0x1b
 703 054e 57030000 		.4byte	.LASF47
 704 0552 08       		.byte	0x8
 705 0553 7A02     		.2byte	0x27a
 706 0555 C7020000 		.4byte	0x2c7
 707 0559 4801     		.2byte	0x148
 708 055b 1B       		.uleb128 0x1b
 709 055c 6D000000 		.4byte	.LASF88
 710 0560 08       		.byte	0x8
 711 0561 7B02     		.2byte	0x27b
 712 0563 89020000 		.4byte	0x289
 713 0567 4C01     		.2byte	0x14c
 714 0569 1B       		.uleb128 0x1b
 715 056a 9A050000 		.4byte	.LASF89
 716 056e 08       		.byte	0x8
 717 056f 7F02     		.2byte	0x27f
 718 0571 8F080000 		.4byte	0x88f
 719 0575 DC02     		.2byte	0x2dc
 720 0577 1B       		.uleb128 0x1b
 721 0578 4B010000 		.4byte	.LASF90
 722 057c 08       		.byte	0x8
 723 057d 8402     		.2byte	0x284
 724 057f 40060000 		.4byte	0x640
 725 0583 E002     		.2byte	0x2e0
 726 0585 1B       		.uleb128 0x1b
 727 0586 30010000 		.4byte	.LASF91
 728 058a 08       		.byte	0x8
 729 058b 8502     		.2byte	0x285
 730 058d 9B080000 		.4byte	0x89b
 731 0591 EC02     		.2byte	0x2ec
 732 0593 00       		.byte	0
 733 0594 12       		.uleb128 0x12
 734 0595 04       		.byte	0x4
 735 0596 9A050000 		.4byte	0x59a
 736 059a 03       		.uleb128 0x3
 737 059b 01       		.byte	0x1
 738 059c 08       		.byte	0x8
 739 059d AB040000 		.4byte	.LASF92
 740 05a1 18       		.uleb128 0x18
 741 05a2 9A050000 		.4byte	0x59a
ARM GAS  /tmp/ccpornqy.s 			page 14


 742 05a6 12       		.uleb128 0x12
 743 05a7 04       		.byte	0x4
 744 05a8 39040000 		.4byte	0x439
 745 05ac 16       		.uleb128 0x16
 746 05ad 1D000000 		.4byte	0x1d
 747 05b1 CA050000 		.4byte	0x5ca
 748 05b5 17       		.uleb128 0x17
 749 05b6 57040000 		.4byte	0x457
 750 05ba 17       		.uleb128 0x17
 751 05bb 99000000 		.4byte	0x99
 752 05bf 17       		.uleb128 0x17
 753 05c0 CA050000 		.4byte	0x5ca
 754 05c4 17       		.uleb128 0x17
 755 05c5 1D000000 		.4byte	0x1d
 756 05c9 00       		.byte	0
 757 05ca 12       		.uleb128 0x12
 758 05cb 04       		.byte	0x4
 759 05cc A1050000 		.4byte	0x5a1
 760 05d0 12       		.uleb128 0x12
 761 05d1 04       		.byte	0x4
 762 05d2 AC050000 		.4byte	0x5ac
 763 05d6 16       		.uleb128 0x16
 764 05d7 CF000000 		.4byte	0xcf
 765 05db F4050000 		.4byte	0x5f4
 766 05df 17       		.uleb128 0x17
 767 05e0 57040000 		.4byte	0x457
 768 05e4 17       		.uleb128 0x17
 769 05e5 99000000 		.4byte	0x99
 770 05e9 17       		.uleb128 0x17
 771 05ea CF000000 		.4byte	0xcf
 772 05ee 17       		.uleb128 0x17
 773 05ef 1D000000 		.4byte	0x1d
 774 05f3 00       		.byte	0
 775 05f4 12       		.uleb128 0x12
 776 05f5 04       		.byte	0x4
 777 05f6 D6050000 		.4byte	0x5d6
 778 05fa 16       		.uleb128 0x16
 779 05fb 1D000000 		.4byte	0x1d
 780 05ff 0E060000 		.4byte	0x60e
 781 0603 17       		.uleb128 0x17
 782 0604 57040000 		.4byte	0x457
 783 0608 17       		.uleb128 0x17
 784 0609 99000000 		.4byte	0x99
 785 060d 00       		.byte	0
 786 060e 12       		.uleb128 0x12
 787 060f 04       		.byte	0x4
 788 0610 FA050000 		.4byte	0x5fa
 789 0614 0C       		.uleb128 0xc
 790 0615 32000000 		.4byte	0x32
 791 0619 24060000 		.4byte	0x624
 792 061d 0D       		.uleb128 0xd
 793 061e 9B000000 		.4byte	0x9b
 794 0622 02       		.byte	0x2
 795 0623 00       		.byte	0
 796 0624 0C       		.uleb128 0xc
 797 0625 32000000 		.4byte	0x32
 798 0629 34060000 		.4byte	0x634
ARM GAS  /tmp/ccpornqy.s 			page 15


 799 062d 0D       		.uleb128 0xd
 800 062e 9B000000 		.4byte	0x9b
 801 0632 00       		.byte	0
 802 0633 00       		.byte	0
 803 0634 09       		.uleb128 0x9
 804 0635 13040000 		.4byte	.LASF93
 805 0639 08       		.byte	0x8
 806 063a 1D01     		.2byte	0x11d
 807 063c 0F030000 		.4byte	0x30f
 808 0640 1C       		.uleb128 0x1c
 809 0641 81050000 		.4byte	.LASF94
 810 0645 0C       		.byte	0xc
 811 0646 08       		.byte	0x8
 812 0647 2101     		.2byte	0x121
 813 0649 75060000 		.4byte	0x675
 814 064d 1A       		.uleb128 0x1a
 815 064e D6040000 		.4byte	.LASF27
 816 0652 08       		.byte	0x8
 817 0653 2301     		.2byte	0x123
 818 0655 75060000 		.4byte	0x675
 819 0659 00       		.byte	0
 820 065a 1A       		.uleb128 0x1a
 821 065b 42020000 		.4byte	.LASF95
 822 065f 08       		.byte	0x8
 823 0660 2401     		.2byte	0x124
 824 0662 1D000000 		.4byte	0x1d
 825 0666 04       		.byte	0x4
 826 0667 1A       		.uleb128 0x1a
 827 0668 D8030000 		.4byte	.LASF96
 828 066c 08       		.byte	0x8
 829 066d 2501     		.2byte	0x125
 830 066f 7B060000 		.4byte	0x67b
 831 0673 08       		.byte	0x8
 832 0674 00       		.byte	0
 833 0675 12       		.uleb128 0x12
 834 0676 04       		.byte	0x4
 835 0677 40060000 		.4byte	0x640
 836 067b 12       		.uleb128 0x12
 837 067c 04       		.byte	0x4
 838 067d 34060000 		.4byte	0x634
 839 0681 1C       		.uleb128 0x1c
 840 0682 1E000000 		.4byte	.LASF97
 841 0686 0E       		.byte	0xe
 842 0687 08       		.byte	0x8
 843 0688 3D01     		.2byte	0x13d
 844 068a B6060000 		.4byte	0x6b6
 845 068e 1A       		.uleb128 0x1a
 846 068f 76040000 		.4byte	.LASF98
 847 0693 08       		.byte	0x8
 848 0694 3E01     		.2byte	0x13e
 849 0696 B6060000 		.4byte	0x6b6
 850 069a 00       		.byte	0
 851 069b 1A       		.uleb128 0x1a
 852 069c 8D020000 		.4byte	.LASF99
 853 06a0 08       		.byte	0x8
 854 06a1 3F01     		.2byte	0x13f
 855 06a3 B6060000 		.4byte	0x6b6
ARM GAS  /tmp/ccpornqy.s 			page 16


 856 06a7 06       		.byte	0x6
 857 06a8 1A       		.uleb128 0x1a
 858 06a9 3C050000 		.4byte	.LASF100
 859 06ad 08       		.byte	0x8
 860 06ae 4001     		.2byte	0x140
 861 06b0 40000000 		.4byte	0x40
 862 06b4 0C       		.byte	0xc
 863 06b5 00       		.byte	0
 864 06b6 0C       		.uleb128 0xc
 865 06b7 40000000 		.4byte	0x40
 866 06bb C6060000 		.4byte	0x6c6
 867 06bf 0D       		.uleb128 0xd
 868 06c0 9B000000 		.4byte	0x9b
 869 06c4 02       		.byte	0x2
 870 06c5 00       		.byte	0
 871 06c6 1D       		.uleb128 0x1d
 872 06c7 D0       		.byte	0xd0
 873 06c8 08       		.byte	0x8
 874 06c9 5702     		.2byte	0x257
 875 06cb C7070000 		.4byte	0x7c7
 876 06cf 1A       		.uleb128 0x1a
 877 06d0 6F050000 		.4byte	.LASF101
 878 06d4 08       		.byte	0x8
 879 06d5 5902     		.2byte	0x259
 880 06d7 24000000 		.4byte	0x24
 881 06db 00       		.byte	0
 882 06dc 1A       		.uleb128 0x1a
 883 06dd DC040000 		.4byte	.LASF102
 884 06e1 08       		.byte	0x8
 885 06e2 5A02     		.2byte	0x25a
 886 06e4 94050000 		.4byte	0x594
 887 06e8 04       		.byte	0x4
 888 06e9 1A       		.uleb128 0x1a
 889 06ea 60020000 		.4byte	.LASF103
 890 06ee 08       		.byte	0x8
 891 06ef 5B02     		.2byte	0x25b
 892 06f1 C7070000 		.4byte	0x7c7
 893 06f5 08       		.byte	0x8
 894 06f6 1A       		.uleb128 0x1a
 895 06f7 DE050000 		.4byte	.LASF104
 896 06fb 08       		.byte	0x8
 897 06fc 5C02     		.2byte	0x25c
 898 06fe C0010000 		.4byte	0x1c0
 899 0702 24       		.byte	0x24
 900 0703 1A       		.uleb128 0x1a
 901 0704 74030000 		.4byte	.LASF105
 902 0708 08       		.byte	0x8
 903 0709 5D02     		.2byte	0x25d
 904 070b 1D000000 		.4byte	0x1d
 905 070f 48       		.byte	0x48
 906 0710 1A       		.uleb128 0x1a
 907 0711 49020000 		.4byte	.LASF106
 908 0715 08       		.byte	0x8
 909 0716 5E02     		.2byte	0x25e
 910 0718 72000000 		.4byte	0x72
 911 071c 50       		.byte	0x50
 912 071d 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccpornqy.s 			page 17


 913 071e F6050000 		.4byte	.LASF107
 914 0722 08       		.byte	0x8
 915 0723 5F02     		.2byte	0x25f
 916 0725 81060000 		.4byte	0x681
 917 0729 58       		.byte	0x58
 918 072a 1A       		.uleb128 0x1a
 919 072b 36040000 		.4byte	.LASF108
 920 072f 08       		.byte	0x8
 921 0730 6002     		.2byte	0x260
 922 0732 36010000 		.4byte	0x136
 923 0736 68       		.byte	0x68
 924 0737 1A       		.uleb128 0x1a
 925 0738 FB050000 		.4byte	.LASF109
 926 073c 08       		.byte	0x8
 927 073d 6102     		.2byte	0x261
 928 073f 36010000 		.4byte	0x136
 929 0743 70       		.byte	0x70
 930 0744 1A       		.uleb128 0x1a
 931 0745 D8000000 		.4byte	.LASF110
 932 0749 08       		.byte	0x8
 933 074a 6202     		.2byte	0x262
 934 074c 36010000 		.4byte	0x136
 935 0750 78       		.byte	0x78
 936 0751 1A       		.uleb128 0x1a
 937 0752 90050000 		.4byte	.LASF111
 938 0756 08       		.byte	0x8
 939 0757 6302     		.2byte	0x263
 940 0759 D7070000 		.4byte	0x7d7
 941 075d 80       		.byte	0x80
 942 075e 1A       		.uleb128 0x1a
 943 075f 54020000 		.4byte	.LASF112
 944 0763 08       		.byte	0x8
 945 0764 6402     		.2byte	0x264
 946 0766 E7070000 		.4byte	0x7e7
 947 076a 88       		.byte	0x88
 948 076b 1A       		.uleb128 0x1a
 949 076c 60000000 		.4byte	.LASF113
 950 0770 08       		.byte	0x8
 951 0771 6502     		.2byte	0x265
 952 0773 1D000000 		.4byte	0x1d
 953 0777 A0       		.byte	0xa0
 954 0778 1A       		.uleb128 0x1a
 955 0779 B2010000 		.4byte	.LASF114
 956 077d 08       		.byte	0x8
 957 077e 6602     		.2byte	0x266
 958 0780 36010000 		.4byte	0x136
 959 0784 A4       		.byte	0xa4
 960 0785 1A       		.uleb128 0x1a
 961 0786 C9000000 		.4byte	.LASF115
 962 078a 08       		.byte	0x8
 963 078b 6702     		.2byte	0x267
 964 078d 36010000 		.4byte	0x136
 965 0791 AC       		.byte	0xac
 966 0792 1A       		.uleb128 0x1a
 967 0793 A1010000 		.4byte	.LASF116
 968 0797 08       		.byte	0x8
 969 0798 6802     		.2byte	0x268
ARM GAS  /tmp/ccpornqy.s 			page 18


 970 079a 36010000 		.4byte	0x136
 971 079e B4       		.byte	0xb4
 972 079f 1A       		.uleb128 0x1a
 973 07a0 76000000 		.4byte	.LASF117
 974 07a4 08       		.byte	0x8
 975 07a5 6902     		.2byte	0x269
 976 07a7 36010000 		.4byte	0x136
 977 07ab BC       		.byte	0xbc
 978 07ac 1A       		.uleb128 0x1a
 979 07ad 85000000 		.4byte	.LASF118
 980 07b1 08       		.byte	0x8
 981 07b2 6A02     		.2byte	0x26a
 982 07b4 36010000 		.4byte	0x136
 983 07b8 C4       		.byte	0xc4
 984 07b9 1A       		.uleb128 0x1a
 985 07ba DE030000 		.4byte	.LASF119
 986 07be 08       		.byte	0x8
 987 07bf 6B02     		.2byte	0x26b
 988 07c1 1D000000 		.4byte	0x1d
 989 07c5 CC       		.byte	0xcc
 990 07c6 00       		.byte	0
 991 07c7 0C       		.uleb128 0xc
 992 07c8 9A050000 		.4byte	0x59a
 993 07cc D7070000 		.4byte	0x7d7
 994 07d0 0D       		.uleb128 0xd
 995 07d1 9B000000 		.4byte	0x9b
 996 07d5 19       		.byte	0x19
 997 07d6 00       		.byte	0
 998 07d7 0C       		.uleb128 0xc
 999 07d8 9A050000 		.4byte	0x59a
 1000 07dc E7070000 		.4byte	0x7e7
 1001 07e0 0D       		.uleb128 0xd
 1002 07e1 9B000000 		.4byte	0x9b
 1003 07e5 07       		.byte	0x7
 1004 07e6 00       		.byte	0
 1005 07e7 0C       		.uleb128 0xc
 1006 07e8 9A050000 		.4byte	0x59a
 1007 07ec F7070000 		.4byte	0x7f7
 1008 07f0 0D       		.uleb128 0xd
 1009 07f1 9B000000 		.4byte	0x9b
 1010 07f5 17       		.byte	0x17
 1011 07f6 00       		.byte	0
 1012 07f7 1D       		.uleb128 0x1d
 1013 07f8 F0       		.byte	0xf0
 1014 07f9 08       		.byte	0x8
 1015 07fa 7002     		.2byte	0x270
 1016 07fc 1B080000 		.4byte	0x81b
 1017 0800 1A       		.uleb128 0x1a
 1018 0801 7B020000 		.4byte	.LASF120
 1019 0805 08       		.byte	0x8
 1020 0806 7302     		.2byte	0x273
 1021 0808 1B080000 		.4byte	0x81b
 1022 080c 00       		.byte	0
 1023 080d 1A       		.uleb128 0x1a
 1024 080e 87050000 		.4byte	.LASF121
 1025 0812 08       		.byte	0x8
 1026 0813 7402     		.2byte	0x274
ARM GAS  /tmp/ccpornqy.s 			page 19


 1027 0815 2B080000 		.4byte	0x82b
 1028 0819 78       		.byte	0x78
 1029 081a 00       		.byte	0
 1030 081b 0C       		.uleb128 0xc
 1031 081c 09030000 		.4byte	0x309
 1032 0820 2B080000 		.4byte	0x82b
 1033 0824 0D       		.uleb128 0xd
 1034 0825 9B000000 		.4byte	0x9b
 1035 0829 1D       		.byte	0x1d
 1036 082a 00       		.byte	0
 1037 082b 0C       		.uleb128 0xc
 1038 082c 24000000 		.4byte	0x24
 1039 0830 3B080000 		.4byte	0x83b
 1040 0834 0D       		.uleb128 0xd
 1041 0835 9B000000 		.4byte	0x9b
 1042 0839 1D       		.byte	0x1d
 1043 083a 00       		.byte	0
 1044 083b 1E       		.uleb128 0x1e
 1045 083c F0       		.byte	0xf0
 1046 083d 08       		.byte	0x8
 1047 083e 5502     		.2byte	0x255
 1048 0840 5D080000 		.4byte	0x85d
 1049 0844 1F       		.uleb128 0x1f
 1050 0845 6F040000 		.4byte	.LASF70
 1051 0849 08       		.byte	0x8
 1052 084a 6C02     		.2byte	0x26c
 1053 084c C6060000 		.4byte	0x6c6
 1054 0850 1F       		.uleb128 0x1f
 1055 0851 CB050000 		.4byte	.LASF122
 1056 0855 08       		.byte	0x8
 1057 0856 7502     		.2byte	0x275
 1058 0858 F7070000 		.4byte	0x7f7
 1059 085c 00       		.byte	0
 1060 085d 0C       		.uleb128 0xc
 1061 085e 9A050000 		.4byte	0x59a
 1062 0862 6D080000 		.4byte	0x86d
 1063 0866 0D       		.uleb128 0xd
 1064 0867 9B000000 		.4byte	0x9b
 1065 086b 18       		.byte	0x18
 1066 086c 00       		.byte	0
 1067 086d 20       		.uleb128 0x20
 1068 086e 78080000 		.4byte	0x878
 1069 0872 17       		.uleb128 0x17
 1070 0873 57040000 		.4byte	0x457
 1071 0877 00       		.byte	0
 1072 0878 12       		.uleb128 0x12
 1073 0879 04       		.byte	0x4
 1074 087a 6D080000 		.4byte	0x86d
 1075 087e 12       		.uleb128 0x12
 1076 087f 04       		.byte	0x4
 1077 0880 AA010000 		.4byte	0x1aa
 1078 0884 20       		.uleb128 0x20
 1079 0885 8F080000 		.4byte	0x88f
 1080 0889 17       		.uleb128 0x17
 1081 088a 1D000000 		.4byte	0x1d
 1082 088e 00       		.byte	0
 1083 088f 12       		.uleb128 0x12
ARM GAS  /tmp/ccpornqy.s 			page 20


 1084 0890 04       		.byte	0x4
 1085 0891 95080000 		.4byte	0x895
 1086 0895 12       		.uleb128 0x12
 1087 0896 04       		.byte	0x4
 1088 0897 84080000 		.4byte	0x884
 1089 089b 0C       		.uleb128 0xc
 1090 089c 34060000 		.4byte	0x634
 1091 08a0 AB080000 		.4byte	0x8ab
 1092 08a4 0D       		.uleb128 0xd
 1093 08a5 9B000000 		.4byte	0x9b
 1094 08a9 02       		.byte	0x2
 1095 08aa 00       		.byte	0
 1096 08ab 07       		.uleb128 0x7
 1097 08ac D6010000 		.4byte	.LASF123
 1098 08b0 08       		.byte	0x8
 1099 08b1 FD02     		.2byte	0x2fd
 1100 08b3 57040000 		.4byte	0x457
 1101 08b7 07       		.uleb128 0x7
 1102 08b8 41050000 		.4byte	.LASF124
 1103 08bc 08       		.byte	0x8
 1104 08bd FE02     		.2byte	0x2fe
 1105 08bf 5D040000 		.4byte	0x45d
 1106 08c3 08       		.uleb128 0x8
 1107 08c4 5F030000 		.4byte	.LASF125
 1108 08c8 09       		.byte	0x9
 1109 08c9 5F       		.byte	0x5f
 1110 08ca 94050000 		.4byte	0x594
 1111 08ce 08       		.uleb128 0x8
 1112 08cf 90030000 		.4byte	.LASF126
 1113 08d3 0A       		.byte	0xa
 1114 08d4 8F       		.byte	0x8f
 1115 08d5 E0080000 		.4byte	0x8e0
 1116 08d9 03       		.uleb128 0x3
 1117 08da 01       		.byte	0x1
 1118 08db 02       		.byte	0x2
 1119 08dc BC030000 		.4byte	.LASF127
 1120 08e0 05       		.uleb128 0x5
 1121 08e1 D9080000 		.4byte	0x8d9
 1122 08e5 21       		.uleb128 0x21
 1123 08e6 A4050000 		.4byte	.LASF128
 1124 08ea 0A       		.byte	0xa
 1125 08eb 94       		.byte	0x94
 1126 08ec 94000000 		.4byte	0x94
 1127 08f0 05       		.uleb128 0x5
 1128 08f1 03       		.byte	0x3
 1129 08f2 00000000 		.4byte	cpu_irq_critical_section_counter
 1130 08f6 21       		.uleb128 0x21
 1131 08f7 96000000 		.4byte	.LASF129
 1132 08fb 0A       		.byte	0xa
 1133 08fc 95       		.byte	0x95
 1134 08fd E0080000 		.4byte	0x8e0
 1135 0901 05       		.uleb128 0x5
 1136 0902 03       		.byte	0x3
 1137 0903 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1138 0907 03       		.uleb128 0x3
 1139 0908 04       		.byte	0x4
 1140 0909 04       		.byte	0x4
ARM GAS  /tmp/ccpornqy.s 			page 21


 1141 090a 8A030000 		.4byte	.LASF130
 1142 090e 03       		.uleb128 0x3
 1143 090f 08       		.byte	0x8
 1144 0910 04       		.byte	0x4
 1145 0911 8A010000 		.4byte	.LASF131
 1146 0915 00       		.byte	0
 1147              		.section	.debug_abbrev,"",%progbits
 1148              	.Ldebug_abbrev0:
 1149 0000 01       		.uleb128 0x1
 1150 0001 11       		.uleb128 0x11
 1151 0002 01       		.byte	0x1
 1152 0003 25       		.uleb128 0x25
 1153 0004 0E       		.uleb128 0xe
 1154 0005 13       		.uleb128 0x13
 1155 0006 0B       		.uleb128 0xb
 1156 0007 03       		.uleb128 0x3
 1157 0008 0E       		.uleb128 0xe
 1158 0009 1B       		.uleb128 0x1b
 1159 000a 0E       		.uleb128 0xe
 1160 000b 10       		.uleb128 0x10
 1161 000c 17       		.uleb128 0x17
 1162 000d 00       		.byte	0
 1163 000e 00       		.byte	0
 1164 000f 02       		.uleb128 0x2
 1165 0010 24       		.uleb128 0x24
 1166 0011 00       		.byte	0
 1167 0012 0B       		.uleb128 0xb
 1168 0013 0B       		.uleb128 0xb
 1169 0014 3E       		.uleb128 0x3e
 1170 0015 0B       		.uleb128 0xb
 1171 0016 03       		.uleb128 0x3
 1172 0017 08       		.uleb128 0x8
 1173 0018 00       		.byte	0
 1174 0019 00       		.byte	0
 1175 001a 03       		.uleb128 0x3
 1176 001b 24       		.uleb128 0x24
 1177 001c 00       		.byte	0
 1178 001d 0B       		.uleb128 0xb
 1179 001e 0B       		.uleb128 0xb
 1180 001f 3E       		.uleb128 0x3e
 1181 0020 0B       		.uleb128 0xb
 1182 0021 03       		.uleb128 0x3
 1183 0022 0E       		.uleb128 0xe
 1184 0023 00       		.byte	0
 1185 0024 00       		.byte	0
 1186 0025 04       		.uleb128 0x4
 1187 0026 16       		.uleb128 0x16
 1188 0027 00       		.byte	0
 1189 0028 03       		.uleb128 0x3
 1190 0029 0E       		.uleb128 0xe
 1191 002a 3A       		.uleb128 0x3a
 1192 002b 0B       		.uleb128 0xb
 1193 002c 3B       		.uleb128 0x3b
 1194 002d 0B       		.uleb128 0xb
 1195 002e 49       		.uleb128 0x49
 1196 002f 13       		.uleb128 0x13
 1197 0030 00       		.byte	0
ARM GAS  /tmp/ccpornqy.s 			page 22


 1198 0031 00       		.byte	0
 1199 0032 05       		.uleb128 0x5
 1200 0033 35       		.uleb128 0x35
 1201 0034 00       		.byte	0
 1202 0035 49       		.uleb128 0x49
 1203 0036 13       		.uleb128 0x13
 1204 0037 00       		.byte	0
 1205 0038 00       		.byte	0
 1206 0039 06       		.uleb128 0x6
 1207 003a 0F       		.uleb128 0xf
 1208 003b 00       		.byte	0
 1209 003c 0B       		.uleb128 0xb
 1210 003d 0B       		.uleb128 0xb
 1211 003e 00       		.byte	0
 1212 003f 00       		.byte	0
 1213 0040 07       		.uleb128 0x7
 1214 0041 34       		.uleb128 0x34
 1215 0042 00       		.byte	0
 1216 0043 03       		.uleb128 0x3
 1217 0044 0E       		.uleb128 0xe
 1218 0045 3A       		.uleb128 0x3a
 1219 0046 0B       		.uleb128 0xb
 1220 0047 3B       		.uleb128 0x3b
 1221 0048 05       		.uleb128 0x5
 1222 0049 49       		.uleb128 0x49
 1223 004a 13       		.uleb128 0x13
 1224 004b 3F       		.uleb128 0x3f
 1225 004c 19       		.uleb128 0x19
 1226 004d 3C       		.uleb128 0x3c
 1227 004e 19       		.uleb128 0x19
 1228 004f 00       		.byte	0
 1229 0050 00       		.byte	0
 1230 0051 08       		.uleb128 0x8
 1231 0052 34       		.uleb128 0x34
 1232 0053 00       		.byte	0
 1233 0054 03       		.uleb128 0x3
 1234 0055 0E       		.uleb128 0xe
 1235 0056 3A       		.uleb128 0x3a
 1236 0057 0B       		.uleb128 0xb
 1237 0058 3B       		.uleb128 0x3b
 1238 0059 0B       		.uleb128 0xb
 1239 005a 49       		.uleb128 0x49
 1240 005b 13       		.uleb128 0x13
 1241 005c 3F       		.uleb128 0x3f
 1242 005d 19       		.uleb128 0x19
 1243 005e 3C       		.uleb128 0x3c
 1244 005f 19       		.uleb128 0x19
 1245 0060 00       		.byte	0
 1246 0061 00       		.byte	0
 1247 0062 09       		.uleb128 0x9
 1248 0063 16       		.uleb128 0x16
 1249 0064 00       		.byte	0
 1250 0065 03       		.uleb128 0x3
 1251 0066 0E       		.uleb128 0xe
 1252 0067 3A       		.uleb128 0x3a
 1253 0068 0B       		.uleb128 0xb
 1254 0069 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccpornqy.s 			page 23


 1255 006a 05       		.uleb128 0x5
 1256 006b 49       		.uleb128 0x49
 1257 006c 13       		.uleb128 0x13
 1258 006d 00       		.byte	0
 1259 006e 00       		.byte	0
 1260 006f 0A       		.uleb128 0xa
 1261 0070 17       		.uleb128 0x17
 1262 0071 01       		.byte	0x1
 1263 0072 0B       		.uleb128 0xb
 1264 0073 0B       		.uleb128 0xb
 1265 0074 3A       		.uleb128 0x3a
 1266 0075 0B       		.uleb128 0xb
 1267 0076 3B       		.uleb128 0x3b
 1268 0077 0B       		.uleb128 0xb
 1269 0078 01       		.uleb128 0x1
 1270 0079 13       		.uleb128 0x13
 1271 007a 00       		.byte	0
 1272 007b 00       		.byte	0
 1273 007c 0B       		.uleb128 0xb
 1274 007d 0D       		.uleb128 0xd
 1275 007e 00       		.byte	0
 1276 007f 03       		.uleb128 0x3
 1277 0080 0E       		.uleb128 0xe
 1278 0081 3A       		.uleb128 0x3a
 1279 0082 0B       		.uleb128 0xb
 1280 0083 3B       		.uleb128 0x3b
 1281 0084 0B       		.uleb128 0xb
 1282 0085 49       		.uleb128 0x49
 1283 0086 13       		.uleb128 0x13
 1284 0087 00       		.byte	0
 1285 0088 00       		.byte	0
 1286 0089 0C       		.uleb128 0xc
 1287 008a 01       		.uleb128 0x1
 1288 008b 01       		.byte	0x1
 1289 008c 49       		.uleb128 0x49
 1290 008d 13       		.uleb128 0x13
 1291 008e 01       		.uleb128 0x1
 1292 008f 13       		.uleb128 0x13
 1293 0090 00       		.byte	0
 1294 0091 00       		.byte	0
 1295 0092 0D       		.uleb128 0xd
 1296 0093 21       		.uleb128 0x21
 1297 0094 00       		.byte	0
 1298 0095 49       		.uleb128 0x49
 1299 0096 13       		.uleb128 0x13
 1300 0097 2F       		.uleb128 0x2f
 1301 0098 0B       		.uleb128 0xb
 1302 0099 00       		.byte	0
 1303 009a 00       		.byte	0
 1304 009b 0E       		.uleb128 0xe
 1305 009c 13       		.uleb128 0x13
 1306 009d 01       		.byte	0x1
 1307 009e 0B       		.uleb128 0xb
 1308 009f 0B       		.uleb128 0xb
 1309 00a0 3A       		.uleb128 0x3a
 1310 00a1 0B       		.uleb128 0xb
 1311 00a2 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccpornqy.s 			page 24


 1312 00a3 0B       		.uleb128 0xb
 1313 00a4 01       		.uleb128 0x1
 1314 00a5 13       		.uleb128 0x13
 1315 00a6 00       		.byte	0
 1316 00a7 00       		.byte	0
 1317 00a8 0F       		.uleb128 0xf
 1318 00a9 0D       		.uleb128 0xd
 1319 00aa 00       		.byte	0
 1320 00ab 03       		.uleb128 0x3
 1321 00ac 0E       		.uleb128 0xe
 1322 00ad 3A       		.uleb128 0x3a
 1323 00ae 0B       		.uleb128 0xb
 1324 00af 3B       		.uleb128 0x3b
 1325 00b0 0B       		.uleb128 0xb
 1326 00b1 49       		.uleb128 0x49
 1327 00b2 13       		.uleb128 0x13
 1328 00b3 38       		.uleb128 0x38
 1329 00b4 0B       		.uleb128 0xb
 1330 00b5 00       		.byte	0
 1331 00b6 00       		.byte	0
 1332 00b7 10       		.uleb128 0x10
 1333 00b8 13       		.uleb128 0x13
 1334 00b9 01       		.byte	0x1
 1335 00ba 03       		.uleb128 0x3
 1336 00bb 0E       		.uleb128 0xe
 1337 00bc 0B       		.uleb128 0xb
 1338 00bd 0B       		.uleb128 0xb
 1339 00be 3A       		.uleb128 0x3a
 1340 00bf 0B       		.uleb128 0xb
 1341 00c0 3B       		.uleb128 0x3b
 1342 00c1 0B       		.uleb128 0xb
 1343 00c2 01       		.uleb128 0x1
 1344 00c3 13       		.uleb128 0x13
 1345 00c4 00       		.byte	0
 1346 00c5 00       		.byte	0
 1347 00c6 11       		.uleb128 0x11
 1348 00c7 0D       		.uleb128 0xd
 1349 00c8 00       		.byte	0
 1350 00c9 03       		.uleb128 0x3
 1351 00ca 08       		.uleb128 0x8
 1352 00cb 3A       		.uleb128 0x3a
 1353 00cc 0B       		.uleb128 0xb
 1354 00cd 3B       		.uleb128 0x3b
 1355 00ce 0B       		.uleb128 0xb
 1356 00cf 49       		.uleb128 0x49
 1357 00d0 13       		.uleb128 0x13
 1358 00d1 38       		.uleb128 0x38
 1359 00d2 0B       		.uleb128 0xb
 1360 00d3 00       		.byte	0
 1361 00d4 00       		.byte	0
 1362 00d5 12       		.uleb128 0x12
 1363 00d6 0F       		.uleb128 0xf
 1364 00d7 00       		.byte	0
 1365 00d8 0B       		.uleb128 0xb
 1366 00d9 0B       		.uleb128 0xb
 1367 00da 49       		.uleb128 0x49
 1368 00db 13       		.uleb128 0x13
ARM GAS  /tmp/ccpornqy.s 			page 25


 1369 00dc 00       		.byte	0
 1370 00dd 00       		.byte	0
 1371 00de 13       		.uleb128 0x13
 1372 00df 13       		.uleb128 0x13
 1373 00e0 01       		.byte	0x1
 1374 00e1 03       		.uleb128 0x3
 1375 00e2 0E       		.uleb128 0xe
 1376 00e3 0B       		.uleb128 0xb
 1377 00e4 05       		.uleb128 0x5
 1378 00e5 3A       		.uleb128 0x3a
 1379 00e6 0B       		.uleb128 0xb
 1380 00e7 3B       		.uleb128 0x3b
 1381 00e8 0B       		.uleb128 0xb
 1382 00e9 01       		.uleb128 0x1
 1383 00ea 13       		.uleb128 0x13
 1384 00eb 00       		.byte	0
 1385 00ec 00       		.byte	0
 1386 00ed 14       		.uleb128 0x14
 1387 00ee 0D       		.uleb128 0xd
 1388 00ef 00       		.byte	0
 1389 00f0 03       		.uleb128 0x3
 1390 00f1 0E       		.uleb128 0xe
 1391 00f2 3A       		.uleb128 0x3a
 1392 00f3 0B       		.uleb128 0xb
 1393 00f4 3B       		.uleb128 0x3b
 1394 00f5 0B       		.uleb128 0xb
 1395 00f6 49       		.uleb128 0x49
 1396 00f7 13       		.uleb128 0x13
 1397 00f8 38       		.uleb128 0x38
 1398 00f9 05       		.uleb128 0x5
 1399 00fa 00       		.byte	0
 1400 00fb 00       		.byte	0
 1401 00fc 15       		.uleb128 0x15
 1402 00fd 15       		.uleb128 0x15
 1403 00fe 00       		.byte	0
 1404 00ff 27       		.uleb128 0x27
 1405 0100 19       		.uleb128 0x19
 1406 0101 00       		.byte	0
 1407 0102 00       		.byte	0
 1408 0103 16       		.uleb128 0x16
 1409 0104 15       		.uleb128 0x15
 1410 0105 01       		.byte	0x1
 1411 0106 27       		.uleb128 0x27
 1412 0107 19       		.uleb128 0x19
 1413 0108 49       		.uleb128 0x49
 1414 0109 13       		.uleb128 0x13
 1415 010a 01       		.uleb128 0x1
 1416 010b 13       		.uleb128 0x13
 1417 010c 00       		.byte	0
 1418 010d 00       		.byte	0
 1419 010e 17       		.uleb128 0x17
 1420 010f 05       		.uleb128 0x5
 1421 0110 00       		.byte	0
 1422 0111 49       		.uleb128 0x49
 1423 0112 13       		.uleb128 0x13
 1424 0113 00       		.byte	0
 1425 0114 00       		.byte	0
ARM GAS  /tmp/ccpornqy.s 			page 26


 1426 0115 18       		.uleb128 0x18
 1427 0116 26       		.uleb128 0x26
 1428 0117 00       		.byte	0
 1429 0118 49       		.uleb128 0x49
 1430 0119 13       		.uleb128 0x13
 1431 011a 00       		.byte	0
 1432 011b 00       		.byte	0
 1433 011c 19       		.uleb128 0x19
 1434 011d 13       		.uleb128 0x13
 1435 011e 01       		.byte	0x1
 1436 011f 03       		.uleb128 0x3
 1437 0120 0E       		.uleb128 0xe
 1438 0121 0B       		.uleb128 0xb
 1439 0122 05       		.uleb128 0x5
 1440 0123 3A       		.uleb128 0x3a
 1441 0124 0B       		.uleb128 0xb
 1442 0125 3B       		.uleb128 0x3b
 1443 0126 05       		.uleb128 0x5
 1444 0127 01       		.uleb128 0x1
 1445 0128 13       		.uleb128 0x13
 1446 0129 00       		.byte	0
 1447 012a 00       		.byte	0
 1448 012b 1A       		.uleb128 0x1a
 1449 012c 0D       		.uleb128 0xd
 1450 012d 00       		.byte	0
 1451 012e 03       		.uleb128 0x3
 1452 012f 0E       		.uleb128 0xe
 1453 0130 3A       		.uleb128 0x3a
 1454 0131 0B       		.uleb128 0xb
 1455 0132 3B       		.uleb128 0x3b
 1456 0133 05       		.uleb128 0x5
 1457 0134 49       		.uleb128 0x49
 1458 0135 13       		.uleb128 0x13
 1459 0136 38       		.uleb128 0x38
 1460 0137 0B       		.uleb128 0xb
 1461 0138 00       		.byte	0
 1462 0139 00       		.byte	0
 1463 013a 1B       		.uleb128 0x1b
 1464 013b 0D       		.uleb128 0xd
 1465 013c 00       		.byte	0
 1466 013d 03       		.uleb128 0x3
 1467 013e 0E       		.uleb128 0xe
 1468 013f 3A       		.uleb128 0x3a
 1469 0140 0B       		.uleb128 0xb
 1470 0141 3B       		.uleb128 0x3b
 1471 0142 05       		.uleb128 0x5
 1472 0143 49       		.uleb128 0x49
 1473 0144 13       		.uleb128 0x13
 1474 0145 38       		.uleb128 0x38
 1475 0146 05       		.uleb128 0x5
 1476 0147 00       		.byte	0
 1477 0148 00       		.byte	0
 1478 0149 1C       		.uleb128 0x1c
 1479 014a 13       		.uleb128 0x13
 1480 014b 01       		.byte	0x1
 1481 014c 03       		.uleb128 0x3
 1482 014d 0E       		.uleb128 0xe
ARM GAS  /tmp/ccpornqy.s 			page 27


 1483 014e 0B       		.uleb128 0xb
 1484 014f 0B       		.uleb128 0xb
 1485 0150 3A       		.uleb128 0x3a
 1486 0151 0B       		.uleb128 0xb
 1487 0152 3B       		.uleb128 0x3b
 1488 0153 05       		.uleb128 0x5
 1489 0154 01       		.uleb128 0x1
 1490 0155 13       		.uleb128 0x13
 1491 0156 00       		.byte	0
 1492 0157 00       		.byte	0
 1493 0158 1D       		.uleb128 0x1d
 1494 0159 13       		.uleb128 0x13
 1495 015a 01       		.byte	0x1
 1496 015b 0B       		.uleb128 0xb
 1497 015c 0B       		.uleb128 0xb
 1498 015d 3A       		.uleb128 0x3a
 1499 015e 0B       		.uleb128 0xb
 1500 015f 3B       		.uleb128 0x3b
 1501 0160 05       		.uleb128 0x5
 1502 0161 01       		.uleb128 0x1
 1503 0162 13       		.uleb128 0x13
 1504 0163 00       		.byte	0
 1505 0164 00       		.byte	0
 1506 0165 1E       		.uleb128 0x1e
 1507 0166 17       		.uleb128 0x17
 1508 0167 01       		.byte	0x1
 1509 0168 0B       		.uleb128 0xb
 1510 0169 0B       		.uleb128 0xb
 1511 016a 3A       		.uleb128 0x3a
 1512 016b 0B       		.uleb128 0xb
 1513 016c 3B       		.uleb128 0x3b
 1514 016d 05       		.uleb128 0x5
 1515 016e 01       		.uleb128 0x1
 1516 016f 13       		.uleb128 0x13
 1517 0170 00       		.byte	0
 1518 0171 00       		.byte	0
 1519 0172 1F       		.uleb128 0x1f
 1520 0173 0D       		.uleb128 0xd
 1521 0174 00       		.byte	0
 1522 0175 03       		.uleb128 0x3
 1523 0176 0E       		.uleb128 0xe
 1524 0177 3A       		.uleb128 0x3a
 1525 0178 0B       		.uleb128 0xb
 1526 0179 3B       		.uleb128 0x3b
 1527 017a 05       		.uleb128 0x5
 1528 017b 49       		.uleb128 0x49
 1529 017c 13       		.uleb128 0x13
 1530 017d 00       		.byte	0
 1531 017e 00       		.byte	0
 1532 017f 20       		.uleb128 0x20
 1533 0180 15       		.uleb128 0x15
 1534 0181 01       		.byte	0x1
 1535 0182 27       		.uleb128 0x27
 1536 0183 19       		.uleb128 0x19
 1537 0184 01       		.uleb128 0x1
 1538 0185 13       		.uleb128 0x13
 1539 0186 00       		.byte	0
ARM GAS  /tmp/ccpornqy.s 			page 28


 1540 0187 00       		.byte	0
 1541 0188 21       		.uleb128 0x21
 1542 0189 34       		.uleb128 0x34
 1543 018a 00       		.byte	0
 1544 018b 03       		.uleb128 0x3
 1545 018c 0E       		.uleb128 0xe
 1546 018d 3A       		.uleb128 0x3a
 1547 018e 0B       		.uleb128 0xb
 1548 018f 3B       		.uleb128 0x3b
 1549 0190 0B       		.uleb128 0xb
 1550 0191 49       		.uleb128 0x49
 1551 0192 13       		.uleb128 0x13
 1552 0193 02       		.uleb128 0x2
 1553 0194 18       		.uleb128 0x18
 1554 0195 00       		.byte	0
 1555 0196 00       		.byte	0
 1556 0197 00       		.byte	0
 1557              		.section	.debug_aranges,"",%progbits
 1558 0000 14000000 		.4byte	0x14
 1559 0004 0200     		.2byte	0x2
 1560 0006 00000000 		.4byte	.Ldebug_info0
 1561 000a 04       		.byte	0x4
 1562 000b 00       		.byte	0
 1563 000c 0000     		.2byte	0
 1564 000e 0000     		.2byte	0
 1565 0010 00000000 		.4byte	0
 1566 0014 00000000 		.4byte	0
 1567              		.section	.debug_line,"",%progbits
 1568              	.Ldebug_line0:
 1569 0000 DD010000 		.section	.debug_str,"MS",%progbits,1
 1569      0200D701 
 1569      00000201 
 1569      FB0E0D00 
 1569      01010101 
 1570              	.LASF44:
 1571 0000 5F64736F 		.ascii	"_dso_handle\000"
 1571      5F68616E 
 1571      646C6500 
 1572              	.LASF3:
 1573 000c 73686F72 		.ascii	"short int\000"
 1573      7420696E 
 1573      7400
 1574              	.LASF43:
 1575 0016 5F666E61 		.ascii	"_fnargs\000"
 1575      72677300 
 1576              	.LASF97:
 1577 001e 5F72616E 		.ascii	"_rand48\000"
 1577      64343800 
 1578              	.LASF133:
 1579 0026 2E2E2F61 		.ascii	"../asf/common/services/sleepmgr/sam/sleepmgr.c\000"
 1579      73662F63 
 1579      6F6D6D6F 
 1579      6E2F7365 
 1579      72766963 
 1580              	.LASF76:
 1581 0055 5F656D65 		.ascii	"_emergency\000"
 1581      7267656E 
ARM GAS  /tmp/ccpornqy.s 			page 29


 1581      637900
 1582              	.LASF113:
 1583 0060 5F676574 		.ascii	"_getdate_err\000"
 1583      64617465 
 1583      5F657272 
 1583      00
 1584              	.LASF88:
 1585 006d 5F617465 		.ascii	"_atexit0\000"
 1585      78697430 
 1585      00
 1586              	.LASF117:
 1587 0076 5F776372 		.ascii	"_wcrtomb_state\000"
 1587      746F6D62 
 1587      5F737461 
 1587      746500
 1588              	.LASF118:
 1589 0085 5F776373 		.ascii	"_wcsrtombs_state\000"
 1589      72746F6D 
 1589      62735F73 
 1589      74617465 
 1589      00
 1590              	.LASF129:
 1591 0096 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 1591      6972715F 
 1591      70726576 
 1591      5F696E74 
 1591      65727275 
 1592              	.LASF56:
 1593 00b3 5F6C6266 		.ascii	"_lbfsize\000"
 1593      73697A65 
 1593      00
 1594              	.LASF14:
 1595 00bc 49544D5F 		.ascii	"ITM_RxBuffer\000"
 1595      52784275 
 1595      66666572 
 1595      00
 1596              	.LASF115:
 1597 00c9 5F6D6272 		.ascii	"_mbrtowc_state\000"
 1597      746F7763 
 1597      5F737461 
 1597      746500
 1598              	.LASF110:
 1599 00d8 5F776374 		.ascii	"_wctomb_state\000"
 1599      6F6D625F 
 1599      73746174 
 1599      6500
 1600              	.LASF33:
 1601 00e6 5F5F746D 		.ascii	"__tm_sec\000"
 1601      5F736563 
 1601      00
 1602              	.LASF17:
 1603 00ef 5F6F6666 		.ascii	"_off_t\000"
 1603      5F7400
 1604              	.LASF61:
 1605 00f6 5F636C6F 		.ascii	"_close\000"
 1605      736500
 1606              	.LASF1:
ARM GAS  /tmp/ccpornqy.s 			page 30


 1607 00fd 7369676E 		.ascii	"signed char\000"
 1607      65642063 
 1607      68617200 
 1608              	.LASF62:
 1609 0109 5F756275 		.ascii	"_ubuf\000"
 1609      6600
 1610              	.LASF10:
 1611 010f 6C6F6E67 		.ascii	"long long unsigned int\000"
 1611      206C6F6E 
 1611      6720756E 
 1611      7369676E 
 1611      65642069 
 1612              	.LASF35:
 1613 0126 5F5F746D 		.ascii	"__tm_hour\000"
 1613      5F686F75 
 1613      7200
 1614              	.LASF91:
 1615 0130 5F5F7366 		.ascii	"__sf\000"
 1615      00
 1616              	.LASF42:
 1617 0135 5F6F6E5F 		.ascii	"_on_exit_args\000"
 1617      65786974 
 1617      5F617267 
 1617      7300
 1618              	.LASF57:
 1619 0143 5F636F6F 		.ascii	"_cookie\000"
 1619      6B696500 
 1620              	.LASF90:
 1621 014b 5F5F7367 		.ascii	"__sglue\000"
 1621      6C756500 
 1622              	.LASF5:
 1623 0153 6C6F6E67 		.ascii	"long int\000"
 1623      20696E74 
 1623      00
 1624              	.LASF54:
 1625 015c 5F666C61 		.ascii	"_flags\000"
 1625      677300
 1626              	.LASF46:
 1627 0163 5F69735F 		.ascii	"_is_cxa\000"
 1627      63786100 
 1628              	.LASF72:
 1629 016b 5F737464 		.ascii	"_stdin\000"
 1629      696E00
 1630              	.LASF82:
 1631 0172 5F726573 		.ascii	"_result_k\000"
 1631      756C745F 
 1631      6B00
 1632              	.LASF9:
 1633 017c 6C6F6E67 		.ascii	"long long int\000"
 1633      206C6F6E 
 1633      6720696E 
 1633      7400
 1634              	.LASF131:
 1635 018a 646F7562 		.ascii	"double\000"
 1635      6C6500
 1636              	.LASF86:
 1637 0191 5F637674 		.ascii	"_cvtbuf\000"
ARM GAS  /tmp/ccpornqy.s 			page 31


 1637      62756600 
 1638              	.LASF65:
 1639 0199 5F6F6666 		.ascii	"_offset\000"
 1639      73657400 
 1640              	.LASF116:
 1641 01a1 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 1641      72746F77 
 1641      63735F73 
 1641      74617465 
 1641      00
 1642              	.LASF114:
 1643 01b2 5F6D6272 		.ascii	"_mbrlen_state\000"
 1643      6C656E5F 
 1643      73746174 
 1643      6500
 1644              	.LASF49:
 1645 01c0 5F666E73 		.ascii	"_fns\000"
 1645      00
 1646              	.LASF7:
 1647 01c5 5F5F7569 		.ascii	"__uint32_t\000"
 1647      6E743332 
 1647      5F7400
 1648              	.LASF29:
 1649 01d0 5F736967 		.ascii	"_sign\000"
 1649      6E00
 1650              	.LASF123:
 1651 01d6 5F696D70 		.ascii	"_impure_ptr\000"
 1651      7572655F 
 1651      70747200 
 1652              	.LASF74:
 1653 01e2 5F737464 		.ascii	"_stderr\000"
 1653      65727200 
 1654              	.LASF31:
 1655 01ea 5F426967 		.ascii	"_Bigint\000"
 1655      696E7400 
 1656              	.LASF58:
 1657 01f2 5F726561 		.ascii	"_read\000"
 1657      6400
 1658              	.LASF32:
 1659 01f8 5F5F746D 		.ascii	"__tm\000"
 1659      00
 1660              	.LASF21:
 1661 01fd 5F5F7763 		.ascii	"__wchb\000"
 1661      686200
 1662              	.LASF15:
 1663 0204 53797374 		.ascii	"SystemCoreClock\000"
 1663      656D436F 
 1663      7265436C 
 1663      6F636B00 
 1664              	.LASF73:
 1665 0214 5F737464 		.ascii	"_stdout\000"
 1665      6F757400 
 1666              	.LASF85:
 1667 021c 5F637674 		.ascii	"_cvtlen\000"
 1667      6C656E00 
 1668              	.LASF8:
 1669 0224 6C6F6E67 		.ascii	"long unsigned int\000"
ARM GAS  /tmp/ccpornqy.s 			page 32


 1669      20756E73 
 1669      69676E65 
 1669      6420696E 
 1669      7400
 1670              	.LASF55:
 1671 0236 5F66696C 		.ascii	"_file\000"
 1671      6500
 1672              	.LASF66:
 1673 023c 5F646174 		.ascii	"_data\000"
 1673      6100
 1674              	.LASF95:
 1675 0242 5F6E696F 		.ascii	"_niobs\000"
 1675      627300
 1676              	.LASF106:
 1677 0249 5F72616E 		.ascii	"_rand_next\000"
 1677      645F6E65 
 1677      787400
 1678              	.LASF112:
 1679 0254 5F736967 		.ascii	"_signal_buf\000"
 1679      6E616C5F 
 1679      62756600 
 1680              	.LASF103:
 1681 0260 5F617363 		.ascii	"_asctime_buf\000"
 1681      74696D65 
 1681      5F627566 
 1681      00
 1682              	.LASF81:
 1683 026d 5F726573 		.ascii	"_result\000"
 1683      756C7400 
 1684              	.LASF20:
 1685 0275 5F5F7763 		.ascii	"__wch\000"
 1685      6800
 1686              	.LASF120:
 1687 027b 5F6E6578 		.ascii	"_nextf\000"
 1687      746600
 1688              	.LASF87:
 1689 0282 5F6E6577 		.ascii	"_new\000"
 1689      00
 1690              	.LASF67:
 1691 0287 5F6C6F63 		.ascii	"_lock\000"
 1691      6B00
 1692              	.LASF99:
 1693 028d 5F6D756C 		.ascii	"_mult\000"
 1693      7400
 1694              	.LASF59:
 1695 0293 5F777269 		.ascii	"_write\000"
 1695      746500
 1696              	.LASF38:
 1697 029a 5F5F746D 		.ascii	"__tm_year\000"
 1697      5F796561 
 1697      7200
 1698              	.LASF13:
 1699 02a4 73697A65 		.ascii	"sizetype\000"
 1699      74797065 
 1699      00
 1700              	.LASF132:
 1701 02ad 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
ARM GAS  /tmp/ccpornqy.s 			page 33


 1701      43393920 
 1701      362E332E 
 1701      31203230 
 1701      31373036 
 1702 02e0 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 1702      76352D64 
 1702      3136202D 
 1702      6D666C6F 
 1702      61742D61 
 1703 0313 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 1703      6E2D7365 
 1703      6374696F 
 1703      6E73202D 
 1703      66646174 
 1704 0346 6F6E7374 		.ascii	"onstant\000"
 1704      616E7400 
 1705              	.LASF37:
 1706 034e 5F5F746D 		.ascii	"__tm_mon\000"
 1706      5F6D6F6E 
 1706      00
 1707              	.LASF47:
 1708 0357 5F617465 		.ascii	"_atexit\000"
 1708      78697400 
 1709              	.LASF125:
 1710 035f 7375626F 		.ascii	"suboptarg\000"
 1710      70746172 
 1710      6700
 1711              	.LASF79:
 1712 0369 5F5F7364 		.ascii	"__sdidinit\000"
 1712      6964696E 
 1712      697400
 1713              	.LASF105:
 1714 0374 5F67616D 		.ascii	"_gamma_signgam\000"
 1714      6D615F73 
 1714      69676E67 
 1714      616D00
 1715              	.LASF19:
 1716 0383 77696E74 		.ascii	"wint_t\000"
 1716      5F7400
 1717              	.LASF130:
 1718 038a 666C6F61 		.ascii	"float\000"
 1718      7400
 1719              	.LASF126:
 1720 0390 675F696E 		.ascii	"g_interrupt_enabled\000"
 1720      74657272 
 1720      7570745F 
 1720      656E6162 
 1720      6C656400 
 1721              	.LASF16:
 1722 03a4 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 1722      4B5F5245 
 1722      43555253 
 1722      4956455F 
 1722      5400
 1723              	.LASF51:
 1724 03b6 5F626173 		.ascii	"_base\000"
 1724      6500
ARM GAS  /tmp/ccpornqy.s 			page 34


 1725              	.LASF127:
 1726 03bc 5F426F6F 		.ascii	"_Bool\000"
 1726      6C00
 1727              	.LASF11:
 1728 03c2 696E7433 		.ascii	"int32_t\000"
 1728      325F7400 
 1729              	.LASF2:
 1730 03ca 756E7369 		.ascii	"unsigned char\000"
 1730      676E6564 
 1730      20636861 
 1730      7200
 1731              	.LASF96:
 1732 03d8 5F696F62 		.ascii	"_iobs\000"
 1732      7300
 1733              	.LASF119:
 1734 03de 5F685F65 		.ascii	"_h_errno\000"
 1734      72726E6F 
 1734      00
 1735              	.LASF25:
 1736 03e7 5F666C6F 		.ascii	"_flock_t\000"
 1736      636B5F74 
 1736      00
 1737              	.LASF40:
 1738 03f0 5F5F746D 		.ascii	"__tm_yday\000"
 1738      5F796461 
 1738      7900
 1739              	.LASF50:
 1740 03fa 5F5F7362 		.ascii	"__sbuf\000"
 1740      756600
 1741              	.LASF69:
 1742 0401 5F666C61 		.ascii	"_flags2\000"
 1742      67733200 
 1743              	.LASF84:
 1744 0409 5F667265 		.ascii	"_freelist\000"
 1744      656C6973 
 1744      7400
 1745              	.LASF93:
 1746 0413 5F5F4649 		.ascii	"__FILE\000"
 1746      4C4500
 1747              	.LASF24:
 1748 041a 5F6D6273 		.ascii	"_mbstate_t\000"
 1748      74617465 
 1748      5F7400
 1749              	.LASF53:
 1750 0425 5F5F7346 		.ascii	"__sFILE\000"
 1750      494C4500 
 1751              	.LASF68:
 1752 042d 5F6D6273 		.ascii	"_mbstate\000"
 1752      74617465 
 1752      00
 1753              	.LASF108:
 1754 0436 5F6D626C 		.ascii	"_mblen_state\000"
 1754      656E5F73 
 1754      74617465 
 1754      00
 1755              	.LASF75:
 1756 0443 5F696E63 		.ascii	"_inc\000"
ARM GAS  /tmp/ccpornqy.s 			page 35


 1756      00
 1757              	.LASF48:
 1758 0448 5F696E64 		.ascii	"_ind\000"
 1758      00
 1759              	.LASF78:
 1760 044d 5F637572 		.ascii	"_current_locale\000"
 1760      72656E74 
 1760      5F6C6F63 
 1760      616C6500 
 1761              	.LASF80:
 1762 045d 5F5F636C 		.ascii	"__cleanup\000"
 1762      65616E75 
 1762      7000
 1763              	.LASF28:
 1764 0467 5F6D6178 		.ascii	"_maxwds\000"
 1764      77647300 
 1765              	.LASF70:
 1766 046f 5F726565 		.ascii	"_reent\000"
 1766      6E7400
 1767              	.LASF98:
 1768 0476 5F736565 		.ascii	"_seed\000"
 1768      6400
 1769              	.LASF22:
 1770 047c 5F5F636F 		.ascii	"__count\000"
 1770      756E7400 
 1771              	.LASF23:
 1772 0484 5F5F7661 		.ascii	"__value\000"
 1772      6C756500 
 1773              	.LASF60:
 1774 048c 5F736565 		.ascii	"_seek\000"
 1774      6B00
 1775              	.LASF39:
 1776 0492 5F5F746D 		.ascii	"__tm_wday\000"
 1776      5F776461 
 1776      7900
 1777              	.LASF18:
 1778 049c 5F66706F 		.ascii	"_fpos_t\000"
 1778      735F7400 
 1779              	.LASF71:
 1780 04a4 5F657272 		.ascii	"_errno\000"
 1780      6E6F00
 1781              	.LASF92:
 1782 04ab 63686172 		.ascii	"char\000"
 1782      00
 1783              	.LASF64:
 1784 04b0 5F626C6B 		.ascii	"_blksize\000"
 1784      73697A65 
 1784      00
 1785              	.LASF52:
 1786 04b9 5F73697A 		.ascii	"_size\000"
 1786      6500
 1787              	.LASF0:
 1788 04bf 756E7369 		.ascii	"unsigned int\000"
 1788      676E6564 
 1788      20696E74 
 1788      00
 1789              	.LASF6:
ARM GAS  /tmp/ccpornqy.s 			page 36


 1790 04cc 5F5F696E 		.ascii	"__int32_t\000"
 1790      7433325F 
 1790      7400
 1791              	.LASF27:
 1792 04d6 5F6E6578 		.ascii	"_next\000"
 1792      7400
 1793              	.LASF102:
 1794 04dc 5F737472 		.ascii	"_strtok_last\000"
 1794      746F6B5F 
 1794      6C617374 
 1794      00
 1795              	.LASF45:
 1796 04e9 5F666E74 		.ascii	"_fntypes\000"
 1796      79706573 
 1796      00
 1797              	.LASF4:
 1798 04f2 73686F72 		.ascii	"short unsigned int\000"
 1798      7420756E 
 1798      7369676E 
 1798      65642069 
 1798      6E7400
 1799              	.LASF134:
 1800 0505 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 1800      652F746F 
 1800      72626A6F 
 1800      726E2F65 
 1800      636C6970 
 1801              	.LASF26:
 1802 0534 5F5F554C 		.ascii	"__ULong\000"
 1802      6F6E6700 
 1803              	.LASF100:
 1804 053c 5F616464 		.ascii	"_add\000"
 1804      00
 1805              	.LASF124:
 1806 0541 5F676C6F 		.ascii	"_global_impure_ptr\000"
 1806      62616C5F 
 1806      696D7075 
 1806      72655F70 
 1806      747200
 1807              	.LASF77:
 1808 0554 5F637572 		.ascii	"_current_category\000"
 1808      72656E74 
 1808      5F636174 
 1808      65676F72 
 1808      7900
 1809              	.LASF12:
 1810 0566 75696E74 		.ascii	"uint32_t\000"
 1810      33325F74 
 1810      00
 1811              	.LASF101:
 1812 056f 5F756E75 		.ascii	"_unused_rand\000"
 1812      7365645F 
 1812      72616E64 
 1812      00
 1813              	.LASF30:
 1814 057c 5F776473 		.ascii	"_wds\000"
 1814      00
ARM GAS  /tmp/ccpornqy.s 			page 37


 1815              	.LASF94:
 1816 0581 5F676C75 		.ascii	"_glue\000"
 1816      6500
 1817              	.LASF121:
 1818 0587 5F6E6D61 		.ascii	"_nmalloc\000"
 1818      6C6C6F63 
 1818      00
 1819              	.LASF111:
 1820 0590 5F6C3634 		.ascii	"_l64a_buf\000"
 1820      615F6275 
 1820      6600
 1821              	.LASF89:
 1822 059a 5F736967 		.ascii	"_sig_func\000"
 1822      5F66756E 
 1822      6300
 1823              	.LASF128:
 1824 05a4 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 1824      6972715F 
 1824      63726974 
 1824      6963616C 
 1824      5F736563 
 1825              	.LASF63:
 1826 05c5 5F6E6275 		.ascii	"_nbuf\000"
 1826      6600
 1827              	.LASF122:
 1828 05cb 5F756E75 		.ascii	"_unused\000"
 1828      73656400 
 1829              	.LASF41:
 1830 05d3 5F5F746D 		.ascii	"__tm_isdst\000"
 1830      5F697364 
 1830      737400
 1831              	.LASF104:
 1832 05de 5F6C6F63 		.ascii	"_localtime_buf\000"
 1832      616C7469 
 1832      6D655F62 
 1832      756600
 1833              	.LASF34:
 1834 05ed 5F5F746D 		.ascii	"__tm_min\000"
 1834      5F6D696E 
 1834      00
 1835              	.LASF107:
 1836 05f6 5F723438 		.ascii	"_r48\000"
 1836      00
 1837              	.LASF109:
 1838 05fb 5F6D6274 		.ascii	"_mbtowc_state\000"
 1838      6F77635F 
 1838      73746174 
 1838      6500
 1839              	.LASF83:
 1840 0609 5F703573 		.ascii	"_p5s\000"
 1840      00
 1841              	.LASF36:
 1842 060e 5F5F746D 		.ascii	"__tm_mday\000"
 1842      5F6D6461 
 1842      7900
 1843              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
