ARM GAS  /tmp/ccuadTPt.s 			page 1


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
  12              		.file	"DueFlashStorage.cpp"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  17              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  18              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  19              	_ZL28cpu_irq_prev_interrupt_state:
  20 0000 00       		.space	1
  21              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  22              		.align	2
  23              		.type	_ZL32cpu_irq_critical_section_counter, %object
  24              		.size	_ZL32cpu_irq_critical_section_counter, 4
  25              	_ZL32cpu_irq_critical_section_counter:
  26 0000 00000000 		.space	4
  27              		.text
  28              	.Letext0:
  29              		.file 1 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
  30              		.file 2 "/usr/include/newlib/machine/_default_types.h"
  31              		.file 3 "/usr/include/newlib/sys/_stdint.h"
  32              		.file 4 "/usr/include/newlib/stdint.h"
  33              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
  34              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
  35              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/pio.
  36              		.file 8 "/usr/include/newlib/sys/lock.h"
  37              		.file 9 "/usr/include/newlib/sys/_types.h"
  38              		.file 10 "/usr/include/newlib/sys/reent.h"
  39              		.file 11 "/usr/include/newlib/c++/6.3.1/cstdlib"
  40              		.file 12 "/usr/include/newlib/c++/6.3.1/cmath"
  41              		.file 13 "/usr/include/newlib/c++/6.3.1/cstdint"
  42              		.file 14 "/usr/include/newlib/c++/6.3.1/cstddef"
  43              		.file 15 "/usr/include/newlib/c++/6.3.1/cstring"
  44              		.file 16 "/usr/include/newlib/c++/6.3.1/arm-none-eabi/thumb/v7e-m/fpv5/hard/bits/c++config.h"
  45              		.file 17 "/usr/include/newlib/stdlib.h"
  46              		.file 18 "/usr/include/newlib/c++/6.3.1/stdlib.h"
  47              		.file 19 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
  48              		.file 20 "/usr/include/newlib/math.h"
  49              		.file 21 "/usr/include/newlib/c++/6.3.1/math.h"
  50              		.file 22 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pio/pio.h"
  51              		.file 23 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/Core.h"
  52              		.file 24 "/usr/include/newlib/ctype.h"
  53              		.file 25 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/RingBuffer.h"
  54              		.file 26 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/UARTClass.h"
  55              		.file 27 "/usr/include/newlib/time.h"
  56              		.file 28 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/variant.h"
  57              		.file 29 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/USB/USBSerial.h"
ARM GAS  /tmp/ccuadTPt.s 			page 2


  58              		.file 30 "/usr/include/newlib/string.h"
  59              		.file 31 "<built-in>"
  60              		.file 32 "/home/torbjorn/eclipse-workspace/CoreNG/cores/arduino/Print.h"
  61              		.section	.debug_info,"",%progbits
  62              	.Ldebug_info0:
  63 0000 971A0000 		.4byte	0x1a97
  64 0004 0400     		.2byte	0x4
  65 0006 00000000 		.4byte	.Ldebug_abbrev0
  66 000a 04       		.byte	0x4
  67 000b 01       		.uleb128 0x1
  68 000c A50C0000 		.4byte	.LASF409
  69 0010 04       		.byte	0x4
  70 0011 5F0B0000 		.4byte	.LASF410
  71 0015 AB0F0000 		.4byte	.LASF411
  72 0019 00000000 		.4byte	.Ldebug_line0
  73 001d 02       		.uleb128 0x2
  74 001e 04       		.byte	0x4
  75 001f 05       		.byte	0x5
  76 0020 696E7400 		.ascii	"int\000"
  77 0024 03       		.uleb128 0x3
  78 0025 35050000 		.4byte	.LASF5
  79 0029 01       		.byte	0x1
  80 002a D8       		.byte	0xd8
  81 002b 34000000 		.4byte	0x34
  82 002f 04       		.uleb128 0x4
  83 0030 24000000 		.4byte	0x24
  84 0034 05       		.uleb128 0x5
  85 0035 04       		.byte	0x4
  86 0036 07       		.byte	0x7
  87 0037 29010000 		.4byte	.LASF0
  88 003b 06       		.uleb128 0x6
  89 003c 10       		.byte	0x10
  90 003d 01       		.byte	0x1
  91 003e AA01     		.2byte	0x1aa
  92 0040 EE030000 		.4byte	.LASF412
  93 0044 63000000 		.4byte	0x63
  94 0048 07       		.uleb128 0x7
  95 0049 D8030000 		.4byte	.LASF1
  96 004d 01       		.byte	0x1
  97 004e AB01     		.2byte	0x1ab
  98 0050 63000000 		.4byte	0x63
  99 0054 00       		.byte	0
 100 0055 07       		.uleb128 0x7
 101 0056 A7030000 		.4byte	.LASF2
 102 005a 01       		.byte	0x1
 103 005b AC01     		.2byte	0x1ac
 104 005d 6A000000 		.4byte	0x6a
 105 0061 08       		.byte	0x8
 106 0062 00       		.byte	0
 107 0063 05       		.uleb128 0x5
 108 0064 08       		.byte	0x8
 109 0065 05       		.byte	0x5
 110 0066 79080000 		.4byte	.LASF3
 111 006a 05       		.uleb128 0x5
 112 006b 08       		.byte	0x8
 113 006c 04       		.byte	0x4
 114 006d 990A0000 		.4byte	.LASF4
ARM GAS  /tmp/ccuadTPt.s 			page 3


 115 0071 08       		.uleb128 0x8
 116 0072 7C020000 		.4byte	.LASF6
 117 0076 01       		.byte	0x1
 118 0077 AD01     		.2byte	0x1ad
 119 0079 3B000000 		.4byte	0x3b
 120 007d 09       		.uleb128 0x9
 121 007e EE0E0000 		.4byte	.LASF413
 122 0082 03       		.uleb128 0x3
 123 0083 450A0000 		.4byte	.LASF7
 124 0087 02       		.byte	0x2
 125 0088 1B       		.byte	0x1b
 126 0089 8D000000 		.4byte	0x8d
 127 008d 05       		.uleb128 0x5
 128 008e 01       		.byte	0x1
 129 008f 06       		.byte	0x6
 130 0090 50100000 		.4byte	.LASF8
 131 0094 03       		.uleb128 0x3
 132 0095 6C0C0000 		.4byte	.LASF9
 133 0099 02       		.byte	0x2
 134 009a 1D       		.byte	0x1d
 135 009b 9F000000 		.4byte	0x9f
 136 009f 05       		.uleb128 0x5
 137 00a0 01       		.byte	0x1
 138 00a1 08       		.byte	0x8
 139 00a2 7A0E0000 		.4byte	.LASF10
 140 00a6 03       		.uleb128 0x3
 141 00a7 E7080000 		.4byte	.LASF11
 142 00ab 02       		.byte	0x2
 143 00ac 29       		.byte	0x29
 144 00ad B1000000 		.4byte	0xb1
 145 00b1 05       		.uleb128 0x5
 146 00b2 02       		.byte	0x2
 147 00b3 05       		.byte	0x5
 148 00b4 900B0000 		.4byte	.LASF12
 149 00b8 03       		.uleb128 0x3
 150 00b9 60060000 		.4byte	.LASF13
 151 00bd 02       		.byte	0x2
 152 00be 2B       		.byte	0x2b
 153 00bf C3000000 		.4byte	0xc3
 154 00c3 05       		.uleb128 0x5
 155 00c4 02       		.byte	0x2
 156 00c5 07       		.byte	0x7
 157 00c6 75100000 		.4byte	.LASF14
 158 00ca 03       		.uleb128 0x3
 159 00cb 8B010000 		.4byte	.LASF15
 160 00cf 02       		.byte	0x2
 161 00d0 3F       		.byte	0x3f
 162 00d1 D5000000 		.4byte	0xd5
 163 00d5 05       		.uleb128 0x5
 164 00d6 04       		.byte	0x4
 165 00d7 05       		.byte	0x5
 166 00d8 21000000 		.4byte	.LASF16
 167 00dc 03       		.uleb128 0x3
 168 00dd 7E040000 		.4byte	.LASF17
 169 00e1 02       		.byte	0x2
 170 00e2 41       		.byte	0x41
 171 00e3 E7000000 		.4byte	0xe7
ARM GAS  /tmp/ccuadTPt.s 			page 4


 172 00e7 05       		.uleb128 0x5
 173 00e8 04       		.byte	0x4
 174 00e9 07       		.byte	0x7
 175 00ea FF090000 		.4byte	.LASF18
 176 00ee 03       		.uleb128 0x3
 177 00ef 850A0000 		.4byte	.LASF19
 178 00f3 02       		.byte	0x2
 179 00f4 59       		.byte	0x59
 180 00f5 63000000 		.4byte	0x63
 181 00f9 03       		.uleb128 0x3
 182 00fa FE050000 		.4byte	.LASF20
 183 00fe 02       		.byte	0x2
 184 00ff 5B       		.byte	0x5b
 185 0100 04010000 		.4byte	0x104
 186 0104 05       		.uleb128 0x5
 187 0105 08       		.byte	0x8
 188 0106 07       		.byte	0x7
 189 0107 31040000 		.4byte	.LASF21
 190 010b 03       		.uleb128 0x3
 191 010c 8B0D0000 		.4byte	.LASF22
 192 0110 02       		.byte	0x2
 193 0111 78       		.byte	0x78
 194 0112 8D000000 		.4byte	0x8d
 195 0116 03       		.uleb128 0x3
 196 0117 2B0B0000 		.4byte	.LASF23
 197 011b 02       		.byte	0x2
 198 011c 7A       		.byte	0x7a
 199 011d 9F000000 		.4byte	0x9f
 200 0121 03       		.uleb128 0x3
 201 0122 73090000 		.4byte	.LASF24
 202 0126 02       		.byte	0x2
 203 0127 92       		.byte	0x92
 204 0128 B1000000 		.4byte	0xb1
 205 012c 03       		.uleb128 0x3
 206 012d 59020000 		.4byte	.LASF25
 207 0131 02       		.byte	0x2
 208 0132 94       		.byte	0x94
 209 0133 C3000000 		.4byte	0xc3
 210 0137 03       		.uleb128 0x3
 211 0138 1F020000 		.4byte	.LASF26
 212 013c 02       		.byte	0x2
 213 013d A8       		.byte	0xa8
 214 013e D5000000 		.4byte	0xd5
 215 0142 03       		.uleb128 0x3
 216 0143 BE050000 		.4byte	.LASF27
 217 0147 02       		.byte	0x2
 218 0148 AA       		.byte	0xaa
 219 0149 E7000000 		.4byte	0xe7
 220 014d 03       		.uleb128 0x3
 221 014e 130B0000 		.4byte	.LASF28
 222 0152 02       		.byte	0x2
 223 0153 BA       		.byte	0xba
 224 0154 63000000 		.4byte	0x63
 225 0158 03       		.uleb128 0x3
 226 0159 34000000 		.4byte	.LASF29
 227 015d 02       		.byte	0x2
 228 015e BC       		.byte	0xbc
ARM GAS  /tmp/ccuadTPt.s 			page 5


 229 015f 04010000 		.4byte	0x104
 230 0163 03       		.uleb128 0x3
 231 0164 9F020000 		.4byte	.LASF30
 232 0168 02       		.byte	0x2
 233 0169 C8       		.byte	0xc8
 234 016a 1D000000 		.4byte	0x1d
 235 016e 03       		.uleb128 0x3
 236 016f 98040000 		.4byte	.LASF31
 237 0173 02       		.byte	0x2
 238 0174 CA       		.byte	0xca
 239 0175 34000000 		.4byte	0x34
 240 0179 03       		.uleb128 0x3
 241 017a F8090000 		.4byte	.LASF32
 242 017e 03       		.byte	0x3
 243 017f 14       		.byte	0x14
 244 0180 82000000 		.4byte	0x82
 245 0184 03       		.uleb128 0x3
 246 0185 C7070000 		.4byte	.LASF33
 247 0189 03       		.byte	0x3
 248 018a 18       		.byte	0x18
 249 018b 94000000 		.4byte	0x94
 250 018f 04       		.uleb128 0x4
 251 0190 84010000 		.4byte	0x184
 252 0194 03       		.uleb128 0x3
 253 0195 DD0B0000 		.4byte	.LASF34
 254 0199 03       		.byte	0x3
 255 019a 20       		.byte	0x20
 256 019b A6000000 		.4byte	0xa6
 257 019f 03       		.uleb128 0x3
 258 01a0 AE0A0000 		.4byte	.LASF35
 259 01a4 03       		.byte	0x3
 260 01a5 24       		.byte	0x24
 261 01a6 B8000000 		.4byte	0xb8
 262 01aa 03       		.uleb128 0x3
 263 01ab 2E0E0000 		.4byte	.LASF36
 264 01af 03       		.byte	0x3
 265 01b0 2C       		.byte	0x2c
 266 01b1 CA000000 		.4byte	0xca
 267 01b5 0A       		.uleb128 0xa
 268 01b6 AA010000 		.4byte	0x1aa
 269 01ba 03       		.uleb128 0x3
 270 01bb 4A030000 		.4byte	.LASF37
 271 01bf 03       		.byte	0x3
 272 01c0 30       		.byte	0x30
 273 01c1 DC000000 		.4byte	0xdc
 274 01c5 0A       		.uleb128 0xa
 275 01c6 BA010000 		.4byte	0x1ba
 276 01ca 04       		.uleb128 0x4
 277 01cb BA010000 		.4byte	0x1ba
 278 01cf 03       		.uleb128 0x3
 279 01d0 50050000 		.4byte	.LASF38
 280 01d4 03       		.byte	0x3
 281 01d5 38       		.byte	0x38
 282 01d6 EE000000 		.4byte	0xee
 283 01da 03       		.uleb128 0x3
 284 01db A20F0000 		.4byte	.LASF39
 285 01df 03       		.byte	0x3
ARM GAS  /tmp/ccuadTPt.s 			page 6


 286 01e0 3C       		.byte	0x3c
 287 01e1 F9000000 		.4byte	0xf9
 288 01e5 03       		.uleb128 0x3
 289 01e6 A50A0000 		.4byte	.LASF40
 290 01ea 03       		.byte	0x3
 291 01eb 43       		.byte	0x43
 292 01ec 63010000 		.4byte	0x163
 293 01f0 03       		.uleb128 0x3
 294 01f1 9A0D0000 		.4byte	.LASF41
 295 01f5 03       		.byte	0x3
 296 01f6 48       		.byte	0x48
 297 01f7 6E010000 		.4byte	0x16e
 298 01fb 03       		.uleb128 0x3
 299 01fc 43050000 		.4byte	.LASF42
 300 0200 04       		.byte	0x4
 301 0201 15       		.byte	0x15
 302 0202 0B010000 		.4byte	0x10b
 303 0206 03       		.uleb128 0x3
 304 0207 CC080000 		.4byte	.LASF43
 305 020b 04       		.byte	0x4
 306 020c 16       		.byte	0x16
 307 020d 16010000 		.4byte	0x116
 308 0211 03       		.uleb128 0x3
 309 0212 19040000 		.4byte	.LASF44
 310 0216 04       		.byte	0x4
 311 0217 1B       		.byte	0x1b
 312 0218 21010000 		.4byte	0x121
 313 021c 03       		.uleb128 0x3
 314 021d ED100000 		.4byte	.LASF45
 315 0221 04       		.byte	0x4
 316 0222 1C       		.byte	0x1c
 317 0223 2C010000 		.4byte	0x12c
 318 0227 03       		.uleb128 0x3
 319 0228 360E0000 		.4byte	.LASF46
 320 022c 04       		.byte	0x4
 321 022d 21       		.byte	0x21
 322 022e 37010000 		.4byte	0x137
 323 0232 03       		.uleb128 0x3
 324 0233 7C0D0000 		.4byte	.LASF47
 325 0237 04       		.byte	0x4
 326 0238 22       		.byte	0x22
 327 0239 42010000 		.4byte	0x142
 328 023d 03       		.uleb128 0x3
 329 023e 6A050000 		.4byte	.LASF48
 330 0242 04       		.byte	0x4
 331 0243 27       		.byte	0x27
 332 0244 4D010000 		.4byte	0x14d
 333 0248 03       		.uleb128 0x3
 334 0249 DC040000 		.4byte	.LASF49
 335 024d 04       		.byte	0x4
 336 024e 28       		.byte	0x28
 337 024f 58010000 		.4byte	0x158
 338 0253 03       		.uleb128 0x3
 339 0254 15090000 		.4byte	.LASF50
 340 0258 04       		.byte	0x4
 341 0259 33       		.byte	0x33
 342 025a 1D000000 		.4byte	0x1d
ARM GAS  /tmp/ccuadTPt.s 			page 7


 343 025e 03       		.uleb128 0x3
 344 025f 070F0000 		.4byte	.LASF51
 345 0263 04       		.byte	0x4
 346 0264 34       		.byte	0x34
 347 0265 34000000 		.4byte	0x34
 348 0269 03       		.uleb128 0x3
 349 026a 7E010000 		.4byte	.LASF52
 350 026e 04       		.byte	0x4
 351 026f 3D       		.byte	0x3d
 352 0270 1D000000 		.4byte	0x1d
 353 0274 03       		.uleb128 0x3
 354 0275 13000000 		.4byte	.LASF53
 355 0279 04       		.byte	0x4
 356 027a 3E       		.byte	0x3e
 357 027b 34000000 		.4byte	0x34
 358 027f 03       		.uleb128 0x3
 359 0280 3B0B0000 		.4byte	.LASF54
 360 0284 04       		.byte	0x4
 361 0285 47       		.byte	0x47
 362 0286 1D000000 		.4byte	0x1d
 363 028a 03       		.uleb128 0x3
 364 028b D7090000 		.4byte	.LASF55
 365 028f 04       		.byte	0x4
 366 0290 48       		.byte	0x48
 367 0291 34000000 		.4byte	0x34
 368 0295 03       		.uleb128 0x3
 369 0296 11030000 		.4byte	.LASF56
 370 029a 04       		.byte	0x4
 371 029b 51       		.byte	0x51
 372 029c 63000000 		.4byte	0x63
 373 02a0 03       		.uleb128 0x3
 374 02a1 70010000 		.4byte	.LASF57
 375 02a5 04       		.byte	0x4
 376 02a6 52       		.byte	0x52
 377 02a7 04010000 		.4byte	0x104
 378 02ab 03       		.uleb128 0x3
 379 02ac 5D010000 		.4byte	.LASF58
 380 02b0 04       		.byte	0x4
 381 02b1 82       		.byte	0x82
 382 02b2 63000000 		.4byte	0x63
 383 02b6 03       		.uleb128 0x3
 384 02b7 27040000 		.4byte	.LASF59
 385 02bb 04       		.byte	0x4
 386 02bc 8B       		.byte	0x8b
 387 02bd 04010000 		.4byte	0x104
 388 02c1 0B       		.uleb128 0xb
 389 02c2 04       		.byte	0x4
 390 02c3 05       		.uleb128 0x5
 391 02c4 04       		.byte	0x4
 392 02c5 07       		.byte	0x7
 393 02c6 0C090000 		.4byte	.LASF60
 394 02ca 0C       		.uleb128 0xc
 395 02cb C5010000 		.4byte	0x1c5
 396 02cf DA020000 		.4byte	0x2da
 397 02d3 0D       		.uleb128 0xd
 398 02d4 C3020000 		.4byte	0x2c3
 399 02d8 01       		.byte	0x1
ARM GAS  /tmp/ccuadTPt.s 			page 8


 400 02d9 00       		.byte	0
 401 02da 0A       		.uleb128 0xa
 402 02db CA020000 		.4byte	0x2ca
 403 02df 0C       		.uleb128 0xc
 404 02e0 C5010000 		.4byte	0x1c5
 405 02e4 EF020000 		.4byte	0x2ef
 406 02e8 0D       		.uleb128 0xd
 407 02e9 C3020000 		.4byte	0x2c3
 408 02ed 04       		.byte	0x4
 409 02ee 00       		.byte	0
 410 02ef 0A       		.uleb128 0xa
 411 02f0 DF020000 		.4byte	0x2df
 412 02f4 0E       		.uleb128 0xe
 413 02f5 C00B0000 		.4byte	.LASF61
 414 02f9 05       		.byte	0x5
 415 02fa 6508     		.2byte	0x865
 416 02fc B5010000 		.4byte	0x1b5
 417 0300 0F       		.uleb128 0xf
 418 0301 58000000 		.4byte	.LASF62
 419 0305 06       		.byte	0x6
 420 0306 3A       		.byte	0x3a
 421 0307 BA010000 		.4byte	0x1ba
 422 030b 0C       		.uleb128 0xc
 423 030c C5010000 		.4byte	0x1c5
 424 0310 1B030000 		.4byte	0x31b
 425 0314 0D       		.uleb128 0xd
 426 0315 C3020000 		.4byte	0x2c3
 427 0319 00       		.byte	0
 428 031a 00       		.byte	0
 429 031b 0A       		.uleb128 0xa
 430 031c 0B030000 		.4byte	0x30b
 431 0320 0C       		.uleb128 0xc
 432 0321 C5010000 		.4byte	0x1c5
 433 0325 30030000 		.4byte	0x330
 434 0329 0D       		.uleb128 0xd
 435 032a C3020000 		.4byte	0x2c3
 436 032e 0C       		.byte	0xc
 437 032f 00       		.byte	0
 438 0330 0A       		.uleb128 0xa
 439 0331 20030000 		.4byte	0x320
 440 0335 10       		.uleb128 0x10
 441 0336 6801     		.2byte	0x168
 442 0338 07       		.byte	0x7
 443 0339 38       		.byte	0x38
 444 033a 270C0000 		.4byte	.LASF414
 445 033e 7D060000 		.4byte	0x67d
 446 0342 11       		.uleb128 0x11
 447 0343 B4000000 		.4byte	.LASF63
 448 0347 07       		.byte	0x7
 449 0348 39       		.byte	0x39
 450 0349 C5010000 		.4byte	0x1c5
 451 034d 00       		.byte	0
 452 034e 11       		.uleb128 0x11
 453 034f 66100000 		.4byte	.LASF64
 454 0353 07       		.byte	0x7
 455 0354 3A       		.byte	0x3a
 456 0355 C5010000 		.4byte	0x1c5
ARM GAS  /tmp/ccuadTPt.s 			page 9


 457 0359 04       		.byte	0x4
 458 035a 11       		.uleb128 0x11
 459 035b 440E0000 		.4byte	.LASF65
 460 035f 07       		.byte	0x7
 461 0360 3B       		.byte	0x3b
 462 0361 C5010000 		.4byte	0x1c5
 463 0365 08       		.byte	0x8
 464 0366 11       		.uleb128 0x11
 465 0367 550B0000 		.4byte	.LASF66
 466 036b 07       		.byte	0x7
 467 036c 3C       		.byte	0x3c
 468 036d 1B030000 		.4byte	0x31b
 469 0371 0C       		.byte	0xc
 470 0372 11       		.uleb128 0x11
 471 0373 71080000 		.4byte	.LASF67
 472 0377 07       		.byte	0x7
 473 0378 3D       		.byte	0x3d
 474 0379 C5010000 		.4byte	0x1c5
 475 037d 10       		.byte	0x10
 476 037e 11       		.uleb128 0x11
 477 037f C2010000 		.4byte	.LASF68
 478 0383 07       		.byte	0x7
 479 0384 3E       		.byte	0x3e
 480 0385 C5010000 		.4byte	0x1c5
 481 0389 14       		.byte	0x14
 482 038a 11       		.uleb128 0x11
 483 038b DE060000 		.4byte	.LASF69
 484 038f 07       		.byte	0x7
 485 0390 3F       		.byte	0x3f
 486 0391 C5010000 		.4byte	0x1c5
 487 0395 18       		.byte	0x18
 488 0396 11       		.uleb128 0x11
 489 0397 9B090000 		.4byte	.LASF70
 490 039b 07       		.byte	0x7
 491 039c 40       		.byte	0x40
 492 039d 1B030000 		.4byte	0x31b
 493 03a1 1C       		.byte	0x1c
 494 03a2 11       		.uleb128 0x11
 495 03a3 1A080000 		.4byte	.LASF71
 496 03a7 07       		.byte	0x7
 497 03a8 41       		.byte	0x41
 498 03a9 C5010000 		.4byte	0x1c5
 499 03ad 20       		.byte	0x20
 500 03ae 11       		.uleb128 0x11
 501 03af C6060000 		.4byte	.LASF72
 502 03b3 07       		.byte	0x7
 503 03b4 42       		.byte	0x42
 504 03b5 C5010000 		.4byte	0x1c5
 505 03b9 24       		.byte	0x24
 506 03ba 11       		.uleb128 0x11
 507 03bb 70060000 		.4byte	.LASF73
 508 03bf 07       		.byte	0x7
 509 03c0 43       		.byte	0x43
 510 03c1 C5010000 		.4byte	0x1c5
 511 03c5 28       		.byte	0x28
 512 03c6 11       		.uleb128 0x11
 513 03c7 A5090000 		.4byte	.LASF74
ARM GAS  /tmp/ccuadTPt.s 			page 10


 514 03cb 07       		.byte	0x7
 515 03cc 44       		.byte	0x44
 516 03cd 1B030000 		.4byte	0x31b
 517 03d1 2C       		.byte	0x2c
 518 03d2 11       		.uleb128 0x11
 519 03d3 BA040000 		.4byte	.LASF75
 520 03d7 07       		.byte	0x7
 521 03d8 45       		.byte	0x45
 522 03d9 C5010000 		.4byte	0x1c5
 523 03dd 30       		.byte	0x30
 524 03de 11       		.uleb128 0x11
 525 03df B8080000 		.4byte	.LASF76
 526 03e3 07       		.byte	0x7
 527 03e4 46       		.byte	0x46
 528 03e5 C5010000 		.4byte	0x1c5
 529 03e9 34       		.byte	0x34
 530 03ea 11       		.uleb128 0x11
 531 03eb D9000000 		.4byte	.LASF77
 532 03ef 07       		.byte	0x7
 533 03f0 47       		.byte	0x47
 534 03f1 C5010000 		.4byte	0x1c5
 535 03f5 38       		.byte	0x38
 536 03f6 11       		.uleb128 0x11
 537 03f7 F0060000 		.4byte	.LASF78
 538 03fb 07       		.byte	0x7
 539 03fc 48       		.byte	0x48
 540 03fd C5010000 		.4byte	0x1c5
 541 0401 3C       		.byte	0x3c
 542 0402 11       		.uleb128 0x11
 543 0403 DA010000 		.4byte	.LASF79
 544 0407 07       		.byte	0x7
 545 0408 49       		.byte	0x49
 546 0409 C5010000 		.4byte	0x1c5
 547 040d 40       		.byte	0x40
 548 040e 11       		.uleb128 0x11
 549 040f BC000000 		.4byte	.LASF80
 550 0413 07       		.byte	0x7
 551 0414 4A       		.byte	0x4a
 552 0415 C5010000 		.4byte	0x1c5
 553 0419 44       		.byte	0x44
 554 041a 11       		.uleb128 0x11
 555 041b C50A0000 		.4byte	.LASF81
 556 041f 07       		.byte	0x7
 557 0420 4B       		.byte	0x4b
 558 0421 C5010000 		.4byte	0x1c5
 559 0425 48       		.byte	0x48
 560 0426 11       		.uleb128 0x11
 561 0427 8E000000 		.4byte	.LASF82
 562 042b 07       		.byte	0x7
 563 042c 4C       		.byte	0x4c
 564 042d C5010000 		.4byte	0x1c5
 565 0431 4C       		.byte	0x4c
 566 0432 11       		.uleb128 0x11
 567 0433 5D110000 		.4byte	.LASF83
 568 0437 07       		.byte	0x7
 569 0438 4D       		.byte	0x4d
 570 0439 C5010000 		.4byte	0x1c5
ARM GAS  /tmp/ccuadTPt.s 			page 11


 571 043d 50       		.byte	0x50
 572 043e 11       		.uleb128 0x11
 573 043f 90100000 		.4byte	.LASF84
 574 0443 07       		.byte	0x7
 575 0444 4E       		.byte	0x4e
 576 0445 C5010000 		.4byte	0x1c5
 577 0449 54       		.byte	0x54
 578 044a 11       		.uleb128 0x11
 579 044b 2F100000 		.4byte	.LASF85
 580 044f 07       		.byte	0x7
 581 0450 4F       		.byte	0x4f
 582 0451 C5010000 		.4byte	0x1c5
 583 0455 58       		.byte	0x58
 584 0456 11       		.uleb128 0x11
 585 0457 860B0000 		.4byte	.LASF86
 586 045b 07       		.byte	0x7
 587 045c 50       		.byte	0x50
 588 045d 1B030000 		.4byte	0x31b
 589 0461 5C       		.byte	0x5c
 590 0462 11       		.uleb128 0x11
 591 0463 79060000 		.4byte	.LASF87
 592 0467 07       		.byte	0x7
 593 0468 51       		.byte	0x51
 594 0469 C5010000 		.4byte	0x1c5
 595 046d 60       		.byte	0x60
 596 046e 11       		.uleb128 0x11
 597 046f E3070000 		.4byte	.LASF88
 598 0473 07       		.byte	0x7
 599 0474 52       		.byte	0x52
 600 0475 C5010000 		.4byte	0x1c5
 601 0479 64       		.byte	0x64
 602 047a 11       		.uleb128 0x11
 603 047b 460F0000 		.4byte	.LASF89
 604 047f 07       		.byte	0x7
 605 0480 53       		.byte	0x53
 606 0481 C5010000 		.4byte	0x1c5
 607 0485 68       		.byte	0x68
 608 0486 11       		.uleb128 0x11
 609 0487 B8090000 		.4byte	.LASF90
 610 048b 07       		.byte	0x7
 611 048c 54       		.byte	0x54
 612 048d 1B030000 		.4byte	0x31b
 613 0491 6C       		.byte	0x6c
 614 0492 11       		.uleb128 0x11
 615 0493 09060000 		.4byte	.LASF91
 616 0497 07       		.byte	0x7
 617 0498 55       		.byte	0x55
 618 0499 DA020000 		.4byte	0x2da
 619 049d 70       		.byte	0x70
 620 049e 11       		.uleb128 0x11
 621 049f C2090000 		.4byte	.LASF92
 622 04a3 07       		.byte	0x7
 623 04a4 56       		.byte	0x56
 624 04a5 DA020000 		.4byte	0x2da
 625 04a9 78       		.byte	0x78
 626 04aa 11       		.uleb128 0x11
 627 04ab C1080000 		.4byte	.LASF93
ARM GAS  /tmp/ccuadTPt.s 			page 12


 628 04af 07       		.byte	0x7
 629 04b0 57       		.byte	0x57
 630 04b1 C5010000 		.4byte	0x1c5
 631 04b5 80       		.byte	0x80
 632 04b6 11       		.uleb128 0x11
 633 04b7 FA0A0000 		.4byte	.LASF94
 634 04bb 07       		.byte	0x7
 635 04bc 58       		.byte	0x58
 636 04bd C5010000 		.4byte	0x1c5
 637 04c1 84       		.byte	0x84
 638 04c2 11       		.uleb128 0x11
 639 04c3 EA0B0000 		.4byte	.LASF95
 640 04c7 07       		.byte	0x7
 641 04c8 59       		.byte	0x59
 642 04c9 C5010000 		.4byte	0x1c5
 643 04cd 88       		.byte	0x88
 644 04ce 11       		.uleb128 0x11
 645 04cf 54110000 		.4byte	.LASF96
 646 04d3 07       		.byte	0x7
 647 04d4 5A       		.byte	0x5a
 648 04d5 C5010000 		.4byte	0x1c5
 649 04d9 8C       		.byte	0x8c
 650 04da 11       		.uleb128 0x11
 651 04db 220F0000 		.4byte	.LASF97
 652 04df 07       		.byte	0x7
 653 04e0 5B       		.byte	0x5b
 654 04e1 C5010000 		.4byte	0x1c5
 655 04e5 90       		.byte	0x90
 656 04e6 11       		.uleb128 0x11
 657 04e7 9E100000 		.4byte	.LASF98
 658 04eb 07       		.byte	0x7
 659 04ec 5C       		.byte	0x5c
 660 04ed C5010000 		.4byte	0x1c5
 661 04f1 94       		.byte	0x94
 662 04f2 11       		.uleb128 0x11
 663 04f3 C90E0000 		.4byte	.LASF99
 664 04f7 07       		.byte	0x7
 665 04f8 5D       		.byte	0x5d
 666 04f9 C5010000 		.4byte	0x1c5
 667 04fd 98       		.byte	0x98
 668 04fe 11       		.uleb128 0x11
 669 04ff 2A000000 		.4byte	.LASF100
 670 0503 07       		.byte	0x7
 671 0504 5E       		.byte	0x5e
 672 0505 1B030000 		.4byte	0x31b
 673 0509 9C       		.byte	0x9c
 674 050a 11       		.uleb128 0x11
 675 050b 9A0B0000 		.4byte	.LASF101
 676 050f 07       		.byte	0x7
 677 0510 5F       		.byte	0x5f
 678 0511 C5010000 		.4byte	0x1c5
 679 0515 A0       		.byte	0xa0
 680 0516 11       		.uleb128 0x11
 681 0517 680A0000 		.4byte	.LASF102
 682 051b 07       		.byte	0x7
 683 051c 60       		.byte	0x60
 684 051d C5010000 		.4byte	0x1c5
ARM GAS  /tmp/ccuadTPt.s 			page 13


 685 0521 A4       		.byte	0xa4
 686 0522 11       		.uleb128 0x11
 687 0523 3C0A0000 		.4byte	.LASF103
 688 0527 07       		.byte	0x7
 689 0528 61       		.byte	0x61
 690 0529 C5010000 		.4byte	0x1c5
 691 052d A8       		.byte	0xa8
 692 052e 11       		.uleb128 0x11
 693 052f A30B0000 		.4byte	.LASF104
 694 0533 07       		.byte	0x7
 695 0534 62       		.byte	0x62
 696 0535 1B030000 		.4byte	0x31b
 697 0539 AC       		.byte	0xac
 698 053a 11       		.uleb128 0x11
 699 053b B60B0000 		.4byte	.LASF105
 700 053f 07       		.byte	0x7
 701 0540 63       		.byte	0x63
 702 0541 C5010000 		.4byte	0x1c5
 703 0545 B0       		.byte	0xb0
 704 0546 11       		.uleb128 0x11
 705 0547 8F0A0000 		.4byte	.LASF106
 706 054b 07       		.byte	0x7
 707 054c 64       		.byte	0x64
 708 054d C5010000 		.4byte	0x1c5
 709 0551 B4       		.byte	0xb4
 710 0552 11       		.uleb128 0x11
 711 0553 34110000 		.4byte	.LASF107
 712 0557 07       		.byte	0x7
 713 0558 65       		.byte	0x65
 714 0559 C5010000 		.4byte	0x1c5
 715 055d B8       		.byte	0xb8
 716 055e 11       		.uleb128 0x11
 717 055f E5090000 		.4byte	.LASF108
 718 0563 07       		.byte	0x7
 719 0564 66       		.byte	0x66
 720 0565 1B030000 		.4byte	0x31b
 721 0569 BC       		.byte	0xbc
 722 056a 11       		.uleb128 0x11
 723 056b E2000000 		.4byte	.LASF109
 724 056f 07       		.byte	0x7
 725 0570 67       		.byte	0x67
 726 0571 C5010000 		.4byte	0x1c5
 727 0575 C0       		.byte	0xc0
 728 0576 11       		.uleb128 0x11
 729 0577 BB030000 		.4byte	.LASF110
 730 057b 07       		.byte	0x7
 731 057c 68       		.byte	0x68
 732 057d C5010000 		.4byte	0x1c5
 733 0581 C4       		.byte	0xc4
 734 0582 11       		.uleb128 0x11
 735 0583 F3070000 		.4byte	.LASF111
 736 0587 07       		.byte	0x7
 737 0588 69       		.byte	0x69
 738 0589 C5010000 		.4byte	0x1c5
 739 058d C8       		.byte	0xc8
 740 058e 11       		.uleb128 0x11
 741 058f 880E0000 		.4byte	.LASF112
ARM GAS  /tmp/ccuadTPt.s 			page 14


 742 0593 07       		.byte	0x7
 743 0594 6A       		.byte	0x6a
 744 0595 1B030000 		.4byte	0x31b
 745 0599 CC       		.byte	0xcc
 746 059a 11       		.uleb128 0x11
 747 059b B6070000 		.4byte	.LASF113
 748 059f 07       		.byte	0x7
 749 05a0 6B       		.byte	0x6b
 750 05a1 C5010000 		.4byte	0x1c5
 751 05a5 D0       		.byte	0xd0
 752 05a6 11       		.uleb128 0x11
 753 05a7 F50B0000 		.4byte	.LASF114
 754 05ab 07       		.byte	0x7
 755 05ac 6C       		.byte	0x6c
 756 05ad C5010000 		.4byte	0x1c5
 757 05b1 D4       		.byte	0xd4
 758 05b2 11       		.uleb128 0x11
 759 05b3 4F090000 		.4byte	.LASF115
 760 05b7 07       		.byte	0x7
 761 05b8 6D       		.byte	0x6d
 762 05b9 C5010000 		.4byte	0x1c5
 763 05bd D8       		.byte	0xd8
 764 05be 11       		.uleb128 0x11
 765 05bf 930E0000 		.4byte	.LASF116
 766 05c3 07       		.byte	0x7
 767 05c4 6E       		.byte	0x6e
 768 05c5 1B030000 		.4byte	0x31b
 769 05c9 DC       		.byte	0xdc
 770 05ca 11       		.uleb128 0x11
 771 05cb 2A050000 		.4byte	.LASF117
 772 05cf 07       		.byte	0x7
 773 05d0 6F       		.byte	0x6f
 774 05d1 C5010000 		.4byte	0x1c5
 775 05d5 E0       		.byte	0xe0
 776 05d6 11       		.uleb128 0x11
 777 05d7 AB000000 		.4byte	.LASF118
 778 05db 07       		.byte	0x7
 779 05dc 70       		.byte	0x70
 780 05dd C5010000 		.4byte	0x1c5
 781 05e1 E4       		.byte	0xe4
 782 05e2 11       		.uleb128 0x11
 783 05e3 6D070000 		.4byte	.LASF119
 784 05e7 07       		.byte	0x7
 785 05e8 71       		.byte	0x71
 786 05e9 C5010000 		.4byte	0x1c5
 787 05ed E8       		.byte	0xe8
 788 05ee 11       		.uleb128 0x11
 789 05ef 9E0E0000 		.4byte	.LASF120
 790 05f3 07       		.byte	0x7
 791 05f4 72       		.byte	0x72
 792 05f5 EF020000 		.4byte	0x2ef
 793 05f9 EC       		.byte	0xec
 794 05fa 12       		.uleb128 0x12
 795 05fb 0D040000 		.4byte	.LASF121
 796 05ff 07       		.byte	0x7
 797 0600 73       		.byte	0x73
 798 0601 C5010000 		.4byte	0x1c5
ARM GAS  /tmp/ccuadTPt.s 			page 15


 799 0605 0001     		.2byte	0x100
 800 0607 12       		.uleb128 0x12
 801 0608 A90E0000 		.4byte	.LASF122
 802 060c 07       		.byte	0x7
 803 060d 74       		.byte	0x74
 804 060e EF020000 		.4byte	0x2ef
 805 0612 0401     		.2byte	0x104
 806 0614 12       		.uleb128 0x12
 807 0615 D1040000 		.4byte	.LASF123
 808 0619 07       		.byte	0x7
 809 061a 75       		.byte	0x75
 810 061b C5010000 		.4byte	0x1c5
 811 061f 1801     		.2byte	0x118
 812 0621 12       		.uleb128 0x12
 813 0622 B40E0000 		.4byte	.LASF124
 814 0626 07       		.byte	0x7
 815 0627 76       		.byte	0x76
 816 0628 30030000 		.4byte	0x330
 817 062c 1C01     		.2byte	0x11c
 818 062e 12       		.uleb128 0x12
 819 062f CD0A0000 		.4byte	.LASF125
 820 0633 07       		.byte	0x7
 821 0634 77       		.byte	0x77
 822 0635 C5010000 		.4byte	0x1c5
 823 0639 5001     		.2byte	0x150
 824 063b 12       		.uleb128 0x12
 825 063c CF060000 		.4byte	.LASF126
 826 0640 07       		.byte	0x7
 827 0641 78       		.byte	0x78
 828 0642 C5010000 		.4byte	0x1c5
 829 0646 5401     		.2byte	0x154
 830 0648 12       		.uleb128 0x12
 831 0649 5C100000 		.4byte	.LASF127
 832 064d 07       		.byte	0x7
 833 064e 79       		.byte	0x79
 834 064f C5010000 		.4byte	0x1c5
 835 0653 5801     		.2byte	0x158
 836 0655 12       		.uleb128 0x12
 837 0656 B2100000 		.4byte	.LASF128
 838 065a 07       		.byte	0x7
 839 065b 7A       		.byte	0x7a
 840 065c C5010000 		.4byte	0x1c5
 841 0660 5C01     		.2byte	0x15c
 842 0662 12       		.uleb128 0x12
 843 0663 60050000 		.4byte	.LASF129
 844 0667 07       		.byte	0x7
 845 0668 7B       		.byte	0x7b
 846 0669 C5010000 		.4byte	0x1c5
 847 066d 6001     		.2byte	0x160
 848 066f 12       		.uleb128 0x12
 849 0670 E6020000 		.4byte	.LASF130
 850 0674 07       		.byte	0x7
 851 0675 7C       		.byte	0x7c
 852 0676 C5010000 		.4byte	0x1c5
 853 067a 6401     		.2byte	0x164
 854 067c 00       		.byte	0
 855 067d 13       		.uleb128 0x13
ARM GAS  /tmp/ccuadTPt.s 			page 16


 856 067e 50696F00 		.ascii	"Pio\000"
 857 0682 07       		.byte	0x7
 858 0683 7D       		.byte	0x7d
 859 0684 35030000 		.4byte	0x335
 860 0688 03       		.uleb128 0x3
 861 0689 89090000 		.4byte	.LASF131
 862 068d 08       		.byte	0x8
 863 068e 07       		.byte	0x7
 864 068f 1D000000 		.4byte	0x1d
 865 0693 03       		.uleb128 0x3
 866 0694 E6100000 		.4byte	.LASF132
 867 0698 09       		.byte	0x9
 868 0699 2C       		.byte	0x2c
 869 069a D5000000 		.4byte	0xd5
 870 069e 03       		.uleb128 0x3
 871 069f AA020000 		.4byte	.LASF133
 872 06a3 09       		.byte	0x9
 873 06a4 72       		.byte	0x72
 874 06a5 D5000000 		.4byte	0xd5
 875 06a9 08       		.uleb128 0x8
 876 06aa 210E0000 		.4byte	.LASF134
 877 06ae 01       		.byte	0x1
 878 06af 6501     		.2byte	0x165
 879 06b1 34000000 		.4byte	0x34
 880 06b5 14       		.uleb128 0x14
 881 06b6 08       		.byte	0x8
 882 06b7 09       		.byte	0x9
 883 06b8 A4       		.byte	0xa4
 884 06b9 82060000 		.4byte	.LASF243
 885 06bd F9060000 		.4byte	0x6f9
 886 06c1 15       		.uleb128 0x15
 887 06c2 04       		.byte	0x4
 888 06c3 09       		.byte	0x9
 889 06c4 A7       		.byte	0xa7
 890 06c5 E0060000 		.4byte	0x6e0
 891 06c9 16       		.uleb128 0x16
 892 06ca C1070000 		.4byte	.LASF135
 893 06ce 09       		.byte	0x9
 894 06cf A8       		.byte	0xa8
 895 06d0 A9060000 		.4byte	0x6a9
 896 06d4 16       		.uleb128 0x16
 897 06d5 160C0000 		.4byte	.LASF136
 898 06d9 09       		.byte	0x9
 899 06da A9       		.byte	0xa9
 900 06db F9060000 		.4byte	0x6f9
 901 06df 00       		.byte	0
 902 06e0 11       		.uleb128 0x11
 903 06e1 82030000 		.4byte	.LASF137
 904 06e5 09       		.byte	0x9
 905 06e6 A5       		.byte	0xa5
 906 06e7 1D000000 		.4byte	0x1d
 907 06eb 00       		.byte	0
 908 06ec 11       		.uleb128 0x11
 909 06ed 50060000 		.4byte	.LASF138
 910 06f1 09       		.byte	0x9
 911 06f2 AA       		.byte	0xaa
 912 06f3 C1060000 		.4byte	0x6c1
ARM GAS  /tmp/ccuadTPt.s 			page 17


 913 06f7 04       		.byte	0x4
 914 06f8 00       		.byte	0
 915 06f9 0C       		.uleb128 0xc
 916 06fa 9F000000 		.4byte	0x9f
 917 06fe 09070000 		.4byte	0x709
 918 0702 0D       		.uleb128 0xd
 919 0703 C3020000 		.4byte	0x2c3
 920 0707 03       		.byte	0x3
 921 0708 00       		.byte	0
 922 0709 03       		.uleb128 0x3
 923 070a 5A090000 		.4byte	.LASF139
 924 070e 09       		.byte	0x9
 925 070f AB       		.byte	0xab
 926 0710 B5060000 		.4byte	0x6b5
 927 0714 03       		.uleb128 0x3
 928 0715 AF090000 		.4byte	.LASF140
 929 0719 09       		.byte	0x9
 930 071a AF       		.byte	0xaf
 931 071b 88060000 		.4byte	0x688
 932 071f 03       		.uleb128 0x3
 933 0720 6F020000 		.4byte	.LASF141
 934 0724 0A       		.byte	0xa
 935 0725 16       		.byte	0x16
 936 0726 E7000000 		.4byte	0xe7
 937 072a 17       		.uleb128 0x17
 938 072b F0020000 		.4byte	.LASF146
 939 072f 18       		.byte	0x18
 940 0730 0A       		.byte	0xa
 941 0731 2D       		.byte	0x2d
 942 0732 7D070000 		.4byte	0x77d
 943 0736 11       		.uleb128 0x11
 944 0737 E6050000 		.4byte	.LASF142
 945 073b 0A       		.byte	0xa
 946 073c 2F       		.byte	0x2f
 947 073d 7D070000 		.4byte	0x77d
 948 0741 00       		.byte	0
 949 0742 18       		.uleb128 0x18
 950 0743 5F6B00   		.ascii	"_k\000"
 951 0746 0A       		.byte	0xa
 952 0747 30       		.byte	0x30
 953 0748 1D000000 		.4byte	0x1d
 954 074c 04       		.byte	0x4
 955 074d 11       		.uleb128 0x11
 956 074e 830C0000 		.4byte	.LASF143
 957 0752 0A       		.byte	0xa
 958 0753 30       		.byte	0x30
 959 0754 1D000000 		.4byte	0x1d
 960 0758 08       		.byte	0x8
 961 0759 11       		.uleb128 0x11
 962 075a 07050000 		.4byte	.LASF144
 963 075e 0A       		.byte	0xa
 964 075f 30       		.byte	0x30
 965 0760 1D000000 		.4byte	0x1d
 966 0764 0C       		.byte	0xc
 967 0765 11       		.uleb128 0x11
 968 0766 6C040000 		.4byte	.LASF145
 969 076a 0A       		.byte	0xa
ARM GAS  /tmp/ccuadTPt.s 			page 18


 970 076b 30       		.byte	0x30
 971 076c 1D000000 		.4byte	0x1d
 972 0770 10       		.byte	0x10
 973 0771 18       		.uleb128 0x18
 974 0772 5F7800   		.ascii	"_x\000"
 975 0775 0A       		.byte	0xa
 976 0776 31       		.byte	0x31
 977 0777 83070000 		.4byte	0x783
 978 077b 14       		.byte	0x14
 979 077c 00       		.byte	0
 980 077d 19       		.uleb128 0x19
 981 077e 04       		.byte	0x4
 982 077f 2A070000 		.4byte	0x72a
 983 0783 0C       		.uleb128 0xc
 984 0784 1F070000 		.4byte	0x71f
 985 0788 93070000 		.4byte	0x793
 986 078c 0D       		.uleb128 0xd
 987 078d C3020000 		.4byte	0x2c3
 988 0791 00       		.byte	0
 989 0792 00       		.byte	0
 990 0793 17       		.uleb128 0x17
 991 0794 A40D0000 		.4byte	.LASF147
 992 0798 24       		.byte	0x24
 993 0799 0A       		.byte	0xa
 994 079a 35       		.byte	0x35
 995 079b 0C080000 		.4byte	0x80c
 996 079f 11       		.uleb128 0x11
 997 07a0 0E010000 		.4byte	.LASF148
 998 07a4 0A       		.byte	0xa
 999 07a5 37       		.byte	0x37
 1000 07a6 1D000000 		.4byte	0x1d
 1001 07aa 00       		.byte	0
 1002 07ab 11       		.uleb128 0x11
 1003 07ac C3030000 		.4byte	.LASF149
 1004 07b0 0A       		.byte	0xa
 1005 07b1 38       		.byte	0x38
 1006 07b2 1D000000 		.4byte	0x1d
 1007 07b6 04       		.byte	0x4
 1008 07b7 11       		.uleb128 0x11
 1009 07b8 5D030000 		.4byte	.LASF150
 1010 07bc 0A       		.byte	0xa
 1011 07bd 39       		.byte	0x39
 1012 07be 1D000000 		.4byte	0x1d
 1013 07c2 08       		.byte	0x8
 1014 07c3 11       		.uleb128 0x11
 1015 07c4 E6060000 		.4byte	.LASF151
 1016 07c8 0A       		.byte	0xa
 1017 07c9 3A       		.byte	0x3a
 1018 07ca 1D000000 		.4byte	0x1d
 1019 07ce 0C       		.byte	0xc
 1020 07cf 11       		.uleb128 0x11
 1021 07d0 7C0A0000 		.4byte	.LASF152
 1022 07d4 0A       		.byte	0xa
 1023 07d5 3B       		.byte	0x3b
 1024 07d6 1D000000 		.4byte	0x1d
 1025 07da 10       		.byte	0x10
 1026 07db 11       		.uleb128 0x11
ARM GAS  /tmp/ccuadTPt.s 			page 19


 1027 07dc E50A0000 		.4byte	.LASF153
 1028 07e0 0A       		.byte	0xa
 1029 07e1 3C       		.byte	0x3c
 1030 07e2 1D000000 		.4byte	0x1d
 1031 07e6 14       		.byte	0x14
 1032 07e7 11       		.uleb128 0x11
 1033 07e8 07030000 		.4byte	.LASF154
 1034 07ec 0A       		.byte	0xa
 1035 07ed 3D       		.byte	0x3d
 1036 07ee 1D000000 		.4byte	0x1d
 1037 07f2 18       		.byte	0x18
 1038 07f3 11       		.uleb128 0x11
 1039 07f4 99050000 		.4byte	.LASF155
 1040 07f8 0A       		.byte	0xa
 1041 07f9 3E       		.byte	0x3e
 1042 07fa 1D000000 		.4byte	0x1d
 1043 07fe 1C       		.byte	0x1c
 1044 07ff 11       		.uleb128 0x11
 1045 0800 CC090000 		.4byte	.LASF156
 1046 0804 0A       		.byte	0xa
 1047 0805 3F       		.byte	0x3f
 1048 0806 1D000000 		.4byte	0x1d
 1049 080a 20       		.byte	0x20
 1050 080b 00       		.byte	0
 1051 080c 1A       		.uleb128 0x1a
 1052 080d 96000000 		.4byte	.LASF157
 1053 0811 0801     		.2byte	0x108
 1054 0813 0A       		.byte	0xa
 1055 0814 48       		.byte	0x48
 1056 0815 4C080000 		.4byte	0x84c
 1057 0819 11       		.uleb128 0x11
 1058 081a 48100000 		.4byte	.LASF158
 1059 081e 0A       		.byte	0xa
 1060 081f 49       		.byte	0x49
 1061 0820 4C080000 		.4byte	0x84c
 1062 0824 00       		.byte	0
 1063 0825 11       		.uleb128 0x11
 1064 0826 4C0E0000 		.4byte	.LASF159
 1065 082a 0A       		.byte	0xa
 1066 082b 4A       		.byte	0x4a
 1067 082c 4C080000 		.4byte	0x84c
 1068 0830 80       		.byte	0x80
 1069 0831 12       		.uleb128 0x12
 1070 0832 BC100000 		.4byte	.LASF160
 1071 0836 0A       		.byte	0xa
 1072 0837 4C       		.byte	0x4c
 1073 0838 1F070000 		.4byte	0x71f
 1074 083c 0001     		.2byte	0x100
 1075 083e 12       		.uleb128 0x12
 1076 083f 2C110000 		.4byte	.LASF161
 1077 0843 0A       		.byte	0xa
 1078 0844 4F       		.byte	0x4f
 1079 0845 1F070000 		.4byte	0x71f
 1080 0849 0401     		.2byte	0x104
 1081 084b 00       		.byte	0
 1082 084c 0C       		.uleb128 0xc
 1083 084d C1020000 		.4byte	0x2c1
ARM GAS  /tmp/ccuadTPt.s 			page 20


 1084 0851 5C080000 		.4byte	0x85c
 1085 0855 0D       		.uleb128 0xd
 1086 0856 C3020000 		.4byte	0x2c3
 1087 085a 1F       		.byte	0x1f
 1088 085b 00       		.byte	0
 1089 085c 1A       		.uleb128 0x1a
 1090 085d 230B0000 		.4byte	.LASF162
 1091 0861 9001     		.2byte	0x190
 1092 0863 0A       		.byte	0xa
 1093 0864 5B       		.byte	0x5b
 1094 0865 9A080000 		.4byte	0x89a
 1095 0869 11       		.uleb128 0x11
 1096 086a E6050000 		.4byte	.LASF142
 1097 086e 0A       		.byte	0xa
 1098 086f 5C       		.byte	0x5c
 1099 0870 9A080000 		.4byte	0x89a
 1100 0874 00       		.byte	0
 1101 0875 11       		.uleb128 0x11
 1102 0876 AF050000 		.4byte	.LASF163
 1103 087a 0A       		.byte	0xa
 1104 087b 5D       		.byte	0x5d
 1105 087c 1D000000 		.4byte	0x1d
 1106 0880 04       		.byte	0x4
 1107 0881 11       		.uleb128 0x11
 1108 0882 B2020000 		.4byte	.LASF164
 1109 0886 0A       		.byte	0xa
 1110 0887 5F       		.byte	0x5f
 1111 0888 A0080000 		.4byte	0x8a0
 1112 088c 08       		.byte	0x8
 1113 088d 11       		.uleb128 0x11
 1114 088e 96000000 		.4byte	.LASF157
 1115 0892 0A       		.byte	0xa
 1116 0893 60       		.byte	0x60
 1117 0894 0C080000 		.4byte	0x80c
 1118 0898 88       		.byte	0x88
 1119 0899 00       		.byte	0
 1120 089a 19       		.uleb128 0x19
 1121 089b 04       		.byte	0x4
 1122 089c 5C080000 		.4byte	0x85c
 1123 08a0 0C       		.uleb128 0xc
 1124 08a1 B0080000 		.4byte	0x8b0
 1125 08a5 B0080000 		.4byte	0x8b0
 1126 08a9 0D       		.uleb128 0xd
 1127 08aa C3020000 		.4byte	0x2c3
 1128 08ae 1F       		.byte	0x1f
 1129 08af 00       		.byte	0
 1130 08b0 19       		.uleb128 0x19
 1131 08b1 04       		.byte	0x4
 1132 08b2 B6080000 		.4byte	0x8b6
 1133 08b6 1B       		.uleb128 0x1b
 1134 08b7 17       		.uleb128 0x17
 1135 08b8 6D0F0000 		.4byte	.LASF165
 1136 08bc 08       		.byte	0x8
 1137 08bd 0A       		.byte	0xa
 1138 08be 73       		.byte	0x73
 1139 08bf DC080000 		.4byte	0x8dc
 1140 08c3 11       		.uleb128 0x11
ARM GAS  /tmp/ccuadTPt.s 			page 21


 1141 08c4 8D080000 		.4byte	.LASF166
 1142 08c8 0A       		.byte	0xa
 1143 08c9 74       		.byte	0x74
 1144 08ca DC080000 		.4byte	0x8dc
 1145 08ce 00       		.byte	0
 1146 08cf 11       		.uleb128 0x11
 1147 08d0 C5100000 		.4byte	.LASF167
 1148 08d4 0A       		.byte	0xa
 1149 08d5 75       		.byte	0x75
 1150 08d6 1D000000 		.4byte	0x1d
 1151 08da 04       		.byte	0x4
 1152 08db 00       		.byte	0
 1153 08dc 19       		.uleb128 0x19
 1154 08dd 04       		.byte	0x4
 1155 08de 9F000000 		.4byte	0x9f
 1156 08e2 17       		.uleb128 0x17
 1157 08e3 64040000 		.4byte	.LASF168
 1158 08e7 68       		.byte	0x68
 1159 08e8 0A       		.byte	0xa
 1160 08e9 B3       		.byte	0xb3
 1161 08ea 0C0A0000 		.4byte	0xa0c
 1162 08ee 18       		.uleb128 0x18
 1163 08ef 5F7000   		.ascii	"_p\000"
 1164 08f2 0A       		.byte	0xa
 1165 08f3 B4       		.byte	0xb4
 1166 08f4 DC080000 		.4byte	0x8dc
 1167 08f8 00       		.byte	0
 1168 08f9 18       		.uleb128 0x18
 1169 08fa 5F7200   		.ascii	"_r\000"
 1170 08fd 0A       		.byte	0xa
 1171 08fe B5       		.byte	0xb5
 1172 08ff 1D000000 		.4byte	0x1d
 1173 0903 04       		.byte	0x4
 1174 0904 18       		.uleb128 0x18
 1175 0905 5F7700   		.ascii	"_w\000"
 1176 0908 0A       		.byte	0xa
 1177 0909 B6       		.byte	0xb6
 1178 090a 1D000000 		.4byte	0x1d
 1179 090e 08       		.byte	0x8
 1180 090f 11       		.uleb128 0x11
 1181 0910 56010000 		.4byte	.LASF169
 1182 0914 0A       		.byte	0xa
 1183 0915 B7       		.byte	0xb7
 1184 0916 B1000000 		.4byte	0xb1
 1185 091a 0C       		.byte	0xc
 1186 091b 11       		.uleb128 0x11
 1187 091c 340C0000 		.4byte	.LASF170
 1188 0920 0A       		.byte	0xa
 1189 0921 B8       		.byte	0xb8
 1190 0922 B1000000 		.4byte	0xb1
 1191 0926 0E       		.byte	0xe
 1192 0927 18       		.uleb128 0x18
 1193 0928 5F626600 		.ascii	"_bf\000"
 1194 092c 0A       		.byte	0xa
 1195 092d B9       		.byte	0xb9
 1196 092e B7080000 		.4byte	0x8b7
 1197 0932 10       		.byte	0x10
ARM GAS  /tmp/ccuadTPt.s 			page 22


 1198 0933 11       		.uleb128 0x11
 1199 0934 4D010000 		.4byte	.LASF171
 1200 0938 0A       		.byte	0xa
 1201 0939 BA       		.byte	0xba
 1202 093a 1D000000 		.4byte	0x1d
 1203 093e 18       		.byte	0x18
 1204 093f 11       		.uleb128 0x11
 1205 0940 B7020000 		.4byte	.LASF172
 1206 0944 0A       		.byte	0xa
 1207 0945 C1       		.byte	0xc1
 1208 0946 C1020000 		.4byte	0x2c1
 1209 094a 1C       		.byte	0x1c
 1210 094b 11       		.uleb128 0x11
 1211 094c 53020000 		.4byte	.LASF173
 1212 0950 0A       		.byte	0xa
 1213 0951 C3       		.byte	0xc3
 1214 0952 C00C0000 		.4byte	0xcc0
 1215 0956 20       		.byte	0x20
 1216 0957 11       		.uleb128 0x11
 1217 0958 BE0A0000 		.4byte	.LASF174
 1218 095c 0A       		.byte	0xa
 1219 095d C5       		.byte	0xc5
 1220 095e EA0C0000 		.4byte	0xcea
 1221 0962 24       		.byte	0x24
 1222 0963 11       		.uleb128 0x11
 1223 0964 44110000 		.4byte	.LASF175
 1224 0968 0A       		.byte	0xa
 1225 0969 C8       		.byte	0xc8
 1226 096a 0E0D0000 		.4byte	0xd0e
 1227 096e 28       		.byte	0x28
 1228 096f 11       		.uleb128 0x11
 1229 0970 EC070000 		.4byte	.LASF176
 1230 0974 0A       		.byte	0xa
 1231 0975 C9       		.byte	0xc9
 1232 0976 280D0000 		.4byte	0xd28
 1233 097a 2C       		.byte	0x2c
 1234 097b 18       		.uleb128 0x18
 1235 097c 5F756200 		.ascii	"_ub\000"
 1236 0980 0A       		.byte	0xa
 1237 0981 CC       		.byte	0xcc
 1238 0982 B7080000 		.4byte	0x8b7
 1239 0986 30       		.byte	0x30
 1240 0987 18       		.uleb128 0x18
 1241 0988 5F757000 		.ascii	"_up\000"
 1242 098c 0A       		.byte	0xa
 1243 098d CD       		.byte	0xcd
 1244 098e DC080000 		.4byte	0x8dc
 1245 0992 38       		.byte	0x38
 1246 0993 18       		.uleb128 0x18
 1247 0994 5F757200 		.ascii	"_ur\000"
 1248 0998 0A       		.byte	0xa
 1249 0999 CE       		.byte	0xce
 1250 099a 1D000000 		.4byte	0x1d
 1251 099e 3C       		.byte	0x3c
 1252 099f 11       		.uleb128 0x11
 1253 09a0 CB040000 		.4byte	.LASF177
 1254 09a4 0A       		.byte	0xa
ARM GAS  /tmp/ccuadTPt.s 			page 23


 1255 09a5 D1       		.byte	0xd1
 1256 09a6 2E0D0000 		.4byte	0xd2e
 1257 09aa 40       		.byte	0x40
 1258 09ab 11       		.uleb128 0x11
 1259 09ac FC100000 		.4byte	.LASF178
 1260 09b0 0A       		.byte	0xa
 1261 09b1 D2       		.byte	0xd2
 1262 09b2 3E0D0000 		.4byte	0xd3e
 1263 09b6 43       		.byte	0x43
 1264 09b7 18       		.uleb128 0x18
 1265 09b8 5F6C6200 		.ascii	"_lb\000"
 1266 09bc 0A       		.byte	0xa
 1267 09bd D5       		.byte	0xd5
 1268 09be B7080000 		.4byte	0x8b7
 1269 09c2 44       		.byte	0x44
 1270 09c3 11       		.uleb128 0x11
 1271 09c4 64070000 		.4byte	.LASF179
 1272 09c8 0A       		.byte	0xa
 1273 09c9 D8       		.byte	0xd8
 1274 09ca 1D000000 		.4byte	0x1d
 1275 09ce 4C       		.byte	0x4c
 1276 09cf 11       		.uleb128 0x11
 1277 09d0 C3040000 		.4byte	.LASF180
 1278 09d4 0A       		.byte	0xa
 1279 09d5 D9       		.byte	0xd9
 1280 09d6 93060000 		.4byte	0x693
 1281 09da 50       		.byte	0x50
 1282 09db 11       		.uleb128 0x11
 1283 09dc 100C0000 		.4byte	.LASF181
 1284 09e0 0A       		.byte	0xa
 1285 09e1 DC       		.byte	0xdc
 1286 09e2 2A0A0000 		.4byte	0xa2a
 1287 09e6 54       		.byte	0x54
 1288 09e7 11       		.uleb128 0x11
 1289 09e8 A90D0000 		.4byte	.LASF182
 1290 09ec 0A       		.byte	0xa
 1291 09ed E0       		.byte	0xe0
 1292 09ee 14070000 		.4byte	0x714
 1293 09f2 58       		.byte	0x58
 1294 09f3 11       		.uleb128 0x11
 1295 09f4 38020000 		.4byte	.LASF183
 1296 09f8 0A       		.byte	0xa
 1297 09f9 E2       		.byte	0xe2
 1298 09fa 09070000 		.4byte	0x709
 1299 09fe 5C       		.byte	0x5c
 1300 09ff 11       		.uleb128 0x11
 1301 0a00 24110000 		.4byte	.LASF184
 1302 0a04 0A       		.byte	0xa
 1303 0a05 E3       		.byte	0xe3
 1304 0a06 1D000000 		.4byte	0x1d
 1305 0a0a 64       		.byte	0x64
 1306 0a0b 00       		.byte	0
 1307 0a0c 1C       		.uleb128 0x1c
 1308 0a0d 1D000000 		.4byte	0x1d
 1309 0a11 2A0A0000 		.4byte	0xa2a
 1310 0a15 1D       		.uleb128 0x1d
 1311 0a16 2A0A0000 		.4byte	0xa2a
ARM GAS  /tmp/ccuadTPt.s 			page 24


 1312 0a1a 1D       		.uleb128 0x1d
 1313 0a1b C1020000 		.4byte	0x2c1
 1314 0a1f 1D       		.uleb128 0x1d
 1315 0a20 AE0C0000 		.4byte	0xcae
 1316 0a24 1D       		.uleb128 0x1d
 1317 0a25 1D000000 		.4byte	0x1d
 1318 0a29 00       		.byte	0
 1319 0a2a 19       		.uleb128 0x19
 1320 0a2b 04       		.byte	0x4
 1321 0a2c 350A0000 		.4byte	0xa35
 1322 0a30 04       		.uleb128 0x4
 1323 0a31 2A0A0000 		.4byte	0xa2a
 1324 0a35 1E       		.uleb128 0x1e
 1325 0a36 6E100000 		.4byte	.LASF185
 1326 0a3a 2804     		.2byte	0x428
 1327 0a3c 0A       		.byte	0xa
 1328 0a3d 3802     		.2byte	0x238
 1329 0a3f AE0C0000 		.4byte	0xcae
 1330 0a43 1F       		.uleb128 0x1f
 1331 0a44 F0       		.byte	0xf0
 1332 0a45 0A       		.byte	0xa
 1333 0a46 5602     		.2byte	0x256
 1334 0a48 8A0B0000 		.4byte	0xb8a
 1335 0a4c 20       		.uleb128 0x20
 1336 0a4d D0       		.byte	0xd0
 1337 0a4e 0A       		.byte	0xa
 1338 0a4f 5802     		.2byte	0x258
 1339 0a51 4D0B0000 		.4byte	0xb4d
 1340 0a55 07       		.uleb128 0x7
 1341 0a56 02110000 		.4byte	.LASF186
 1342 0a5a 0A       		.byte	0xa
 1343 0a5b 5902     		.2byte	0x259
 1344 0a5d 34000000 		.4byte	0x34
 1345 0a61 00       		.byte	0
 1346 0a62 07       		.uleb128 0x7
 1347 0a63 FC0F0000 		.4byte	.LASF187
 1348 0a67 0A       		.byte	0xa
 1349 0a68 5A02     		.2byte	0x25a
 1350 0a6a AE0C0000 		.4byte	0xcae
 1351 0a6e 04       		.byte	0x4
 1352 0a6f 07       		.uleb128 0x7
 1353 0a70 48040000 		.4byte	.LASF188
 1354 0a74 0A       		.byte	0xa
 1355 0a75 5B02     		.2byte	0x25b
 1356 0a77 E00D0000 		.4byte	0xde0
 1357 0a7b 08       		.byte	0x8
 1358 0a7c 07       		.uleb128 0x7
 1359 0a7d 550C0000 		.4byte	.LASF189
 1360 0a81 0A       		.byte	0xa
 1361 0a82 5C02     		.2byte	0x25c
 1362 0a84 93070000 		.4byte	0x793
 1363 0a88 24       		.byte	0x24
 1364 0a89 07       		.uleb128 0x7
 1365 0a8a D60A0000 		.4byte	.LASF190
 1366 0a8e 0A       		.byte	0xa
 1367 0a8f 5D02     		.2byte	0x25d
 1368 0a91 1D000000 		.4byte	0x1d
ARM GAS  /tmp/ccuadTPt.s 			page 25


 1369 0a95 48       		.byte	0x48
 1370 0a96 07       		.uleb128 0x7
 1371 0a97 EF0A0000 		.4byte	.LASF191
 1372 0a9b 0A       		.byte	0xa
 1373 0a9c 5E02     		.2byte	0x25e
 1374 0a9e 04010000 		.4byte	0x104
 1375 0aa2 50       		.byte	0x50
 1376 0aa3 07       		.uleb128 0x7
 1377 0aa4 6A020000 		.4byte	.LASF192
 1378 0aa8 0A       		.byte	0xa
 1379 0aa9 5F02     		.2byte	0x25f
 1380 0aab 9B0D0000 		.4byte	0xd9b
 1381 0aaf 58       		.byte	0x58
 1382 0ab0 07       		.uleb128 0x7
 1383 0ab1 B9060000 		.4byte	.LASF193
 1384 0ab5 0A       		.byte	0xa
 1385 0ab6 6002     		.2byte	0x260
 1386 0ab8 09070000 		.4byte	0x709
 1387 0abc 68       		.byte	0x68
 1388 0abd 07       		.uleb128 0x7
 1389 0abe 09100000 		.4byte	.LASF194
 1390 0ac2 0A       		.byte	0xa
 1391 0ac3 6102     		.2byte	0x261
 1392 0ac5 09070000 		.4byte	0x709
 1393 0ac9 70       		.byte	0x70
 1394 0aca 07       		.uleb128 0x7
 1395 0acb C4000000 		.4byte	.LASF195
 1396 0acf 0A       		.byte	0xa
 1397 0ad0 6202     		.2byte	0x262
 1398 0ad2 09070000 		.4byte	0x709
 1399 0ad6 78       		.byte	0x78
 1400 0ad7 07       		.uleb128 0x7
 1401 0ad8 7A0F0000 		.4byte	.LASF196
 1402 0adc 0A       		.byte	0xa
 1403 0add 6302     		.2byte	0x263
 1404 0adf F00D0000 		.4byte	0xdf0
 1405 0ae3 80       		.byte	0x80
 1406 0ae4 07       		.uleb128 0x7
 1407 0ae5 17010000 		.4byte	.LASF197
 1408 0ae9 0A       		.byte	0xa
 1409 0aea 6402     		.2byte	0x264
 1410 0aec 000E0000 		.4byte	0xe00
 1411 0af0 88       		.byte	0x88
 1412 0af1 07       		.uleb128 0x7
 1413 0af2 EF0F0000 		.4byte	.LASF198
 1414 0af6 0A       		.byte	0xa
 1415 0af7 6502     		.2byte	0x265
 1416 0af9 1D000000 		.4byte	0x1d
 1417 0afd A0       		.byte	0xa0
 1418 0afe 07       		.uleb128 0x7
 1419 0aff 140F0000 		.4byte	.LASF199
 1420 0b03 0A       		.byte	0xa
 1421 0b04 6602     		.2byte	0x266
 1422 0b06 09070000 		.4byte	0x709
 1423 0b0a A4       		.byte	0xa4
 1424 0b0b 07       		.uleb128 0x7
 1425 0b0c 03070000 		.4byte	.LASF200
ARM GAS  /tmp/ccuadTPt.s 			page 26


 1426 0b10 0A       		.byte	0xa
 1427 0b11 6702     		.2byte	0x267
 1428 0b13 09070000 		.4byte	0x709
 1429 0b17 AC       		.byte	0xac
 1430 0b18 07       		.uleb128 0x7
 1431 0b19 FC030000 		.4byte	.LASF201
 1432 0b1d 0A       		.byte	0xa
 1433 0b1e 6802     		.2byte	0x268
 1434 0b20 09070000 		.4byte	0x709
 1435 0b24 B4       		.byte	0xb4
 1436 0b25 07       		.uleb128 0x7
 1437 0b26 88020000 		.4byte	.LASF202
 1438 0b2a 0A       		.byte	0xa
 1439 0b2b 6902     		.2byte	0x269
 1440 0b2d 09070000 		.4byte	0x709
 1441 0b31 BC       		.byte	0xbc
 1442 0b32 07       		.uleb128 0x7
 1443 0b33 A8060000 		.4byte	.LASF203
 1444 0b37 0A       		.byte	0xa
 1445 0b38 6A02     		.2byte	0x26a
 1446 0b3a 09070000 		.4byte	0x709
 1447 0b3e C4       		.byte	0xc4
 1448 0b3f 07       		.uleb128 0x7
 1449 0b40 110A0000 		.4byte	.LASF204
 1450 0b44 0A       		.byte	0xa
 1451 0b45 6B02     		.2byte	0x26b
 1452 0b47 1D000000 		.4byte	0x1d
 1453 0b4b CC       		.byte	0xcc
 1454 0b4c 00       		.byte	0
 1455 0b4d 20       		.uleb128 0x20
 1456 0b4e F0       		.byte	0xf0
 1457 0b4f 0A       		.byte	0xa
 1458 0b50 7102     		.2byte	0x271
 1459 0b52 710B0000 		.4byte	0xb71
 1460 0b56 07       		.uleb128 0x7
 1461 0b57 E7030000 		.4byte	.LASF205
 1462 0b5b 0A       		.byte	0xa
 1463 0b5c 7302     		.2byte	0x273
 1464 0b5e 100E0000 		.4byte	0xe10
 1465 0b62 00       		.byte	0
 1466 0b63 07       		.uleb128 0x7
 1467 0b64 6E110000 		.4byte	.LASF206
 1468 0b68 0A       		.byte	0xa
 1469 0b69 7402     		.2byte	0x274
 1470 0b6b 200E0000 		.4byte	0xe20
 1471 0b6f 78       		.byte	0x78
 1472 0b70 00       		.byte	0
 1473 0b71 21       		.uleb128 0x21
 1474 0b72 6E100000 		.4byte	.LASF185
 1475 0b76 0A       		.byte	0xa
 1476 0b77 6C02     		.2byte	0x26c
 1477 0b79 4C0A0000 		.4byte	0xa4c
 1478 0b7d 21       		.uleb128 0x21
 1479 0b7e 640C0000 		.4byte	.LASF207
 1480 0b82 0A       		.byte	0xa
 1481 0b83 7502     		.2byte	0x275
 1482 0b85 4D0B0000 		.4byte	0xb4d
ARM GAS  /tmp/ccuadTPt.s 			page 27


 1483 0b89 00       		.byte	0
 1484 0b8a 07       		.uleb128 0x7
 1485 0b8b 95010000 		.4byte	.LASF208
 1486 0b8f 0A       		.byte	0xa
 1487 0b90 3A02     		.2byte	0x23a
 1488 0b92 1D000000 		.4byte	0x1d
 1489 0b96 00       		.byte	0
 1490 0b97 07       		.uleb128 0x7
 1491 0b98 6E030000 		.4byte	.LASF209
 1492 0b9c 0A       		.byte	0xa
 1493 0b9d 3F02     		.2byte	0x23f
 1494 0b9f 950D0000 		.4byte	0xd95
 1495 0ba3 04       		.byte	0x4
 1496 0ba4 07       		.uleb128 0x7
 1497 0ba5 97020000 		.4byte	.LASF210
 1498 0ba9 0A       		.byte	0xa
 1499 0baa 3F02     		.2byte	0x23f
 1500 0bac 950D0000 		.4byte	0xd95
 1501 0bb0 08       		.byte	0x8
 1502 0bb1 07       		.uleb128 0x7
 1503 0bb2 66110000 		.4byte	.LASF211
 1504 0bb6 0A       		.byte	0xa
 1505 0bb7 3F02     		.2byte	0x23f
 1506 0bb9 950D0000 		.4byte	0xd95
 1507 0bbd 0C       		.byte	0xc
 1508 0bbe 07       		.uleb128 0x7
 1509 0bbf AA050000 		.4byte	.LASF212
 1510 0bc3 0A       		.byte	0xa
 1511 0bc4 4102     		.2byte	0x241
 1512 0bc6 1D000000 		.4byte	0x1d
 1513 0bca 10       		.byte	0x10
 1514 0bcb 07       		.uleb128 0x7
 1515 0bcc FC040000 		.4byte	.LASF213
 1516 0bd0 0A       		.byte	0xa
 1517 0bd1 4202     		.2byte	0x242
 1518 0bd3 300E0000 		.4byte	0xe30
 1519 0bd7 14       		.byte	0x14
 1520 0bd8 07       		.uleb128 0x7
 1521 0bd9 930C0000 		.4byte	.LASF214
 1522 0bdd 0A       		.byte	0xa
 1523 0bde 4402     		.2byte	0x244
 1524 0be0 1D000000 		.4byte	0x1d
 1525 0be4 30       		.byte	0x30
 1526 0be5 07       		.uleb128 0x7
 1527 0be6 000C0000 		.4byte	.LASF215
 1528 0bea 0A       		.byte	0xa
 1529 0beb 4502     		.2byte	0x245
 1530 0bed E40C0000 		.4byte	0xce4
 1531 0bf1 34       		.byte	0x34
 1532 0bf2 07       		.uleb128 0x7
 1533 0bf3 02080000 		.4byte	.LASF216
 1534 0bf7 0A       		.byte	0xa
 1535 0bf8 4702     		.2byte	0x247
 1536 0bfa 1D000000 		.4byte	0x1d
 1537 0bfe 38       		.byte	0x38
 1538 0bff 07       		.uleb128 0x7
 1539 0c00 26090000 		.4byte	.LASF217
ARM GAS  /tmp/ccuadTPt.s 			page 28


 1540 0c04 0A       		.byte	0xa
 1541 0c05 4902     		.2byte	0x249
 1542 0c07 4B0E0000 		.4byte	0xe4b
 1543 0c0b 3C       		.byte	0x3c
 1544 0c0c 07       		.uleb128 0x7
 1545 0c0d 26030000 		.4byte	.LASF218
 1546 0c11 0A       		.byte	0xa
 1547 0c12 4C02     		.2byte	0x24c
 1548 0c14 7D070000 		.4byte	0x77d
 1549 0c18 40       		.byte	0x40
 1550 0c19 07       		.uleb128 0x7
 1551 0c1a 88070000 		.4byte	.LASF219
 1552 0c1e 0A       		.byte	0xa
 1553 0c1f 4D02     		.2byte	0x24d
 1554 0c21 1D000000 		.4byte	0x1d
 1555 0c25 44       		.byte	0x44
 1556 0c26 07       		.uleb128 0x7
 1557 0c27 6B060000 		.4byte	.LASF220
 1558 0c2b 0A       		.byte	0xa
 1559 0c2c 4E02     		.2byte	0x24e
 1560 0c2e 7D070000 		.4byte	0x77d
 1561 0c32 48       		.byte	0x48
 1562 0c33 07       		.uleb128 0x7
 1563 0c34 0F110000 		.4byte	.LASF221
 1564 0c38 0A       		.byte	0xa
 1565 0c39 4F02     		.2byte	0x24f
 1566 0c3b 510E0000 		.4byte	0xe51
 1567 0c3f 4C       		.byte	0x4c
 1568 0c40 07       		.uleb128 0x7
 1569 0c41 7B0C0000 		.4byte	.LASF222
 1570 0c45 0A       		.byte	0xa
 1571 0c46 5202     		.2byte	0x252
 1572 0c48 1D000000 		.4byte	0x1d
 1573 0c4c 50       		.byte	0x50
 1574 0c4d 07       		.uleb128 0x7
 1575 0c4e 720E0000 		.4byte	.LASF223
 1576 0c52 0A       		.byte	0xa
 1577 0c53 5302     		.2byte	0x253
 1578 0c55 AE0C0000 		.4byte	0xcae
 1579 0c59 54       		.byte	0x54
 1580 0c5a 07       		.uleb128 0x7
 1581 0c5b 760C0000 		.4byte	.LASF224
 1582 0c5f 0A       		.byte	0xa
 1583 0c60 7602     		.2byte	0x276
 1584 0c62 430A0000 		.4byte	0xa43
 1585 0c66 58       		.byte	0x58
 1586 0c67 22       		.uleb128 0x22
 1587 0c68 230B0000 		.4byte	.LASF162
 1588 0c6c 0A       		.byte	0xa
 1589 0c6d 7A02     		.2byte	0x27a
 1590 0c6f 9A080000 		.4byte	0x89a
 1591 0c73 4801     		.2byte	0x148
 1592 0c75 22       		.uleb128 0x22
 1593 0c76 12070000 		.4byte	.LASF225
 1594 0c7a 0A       		.byte	0xa
 1595 0c7b 7B02     		.2byte	0x27b
 1596 0c7d 5C080000 		.4byte	0x85c
ARM GAS  /tmp/ccuadTPt.s 			page 29


 1597 0c81 4C01     		.2byte	0x14c
 1598 0c83 22       		.uleb128 0x22
 1599 0c84 F9060000 		.4byte	.LASF226
 1600 0c88 0A       		.byte	0xa
 1601 0c89 7F02     		.2byte	0x27f
 1602 0c8b 620E0000 		.4byte	0xe62
 1603 0c8f DC02     		.2byte	0x2dc
 1604 0c91 22       		.uleb128 0x22
 1605 0c92 E70F0000 		.4byte	.LASF227
 1606 0c96 0A       		.byte	0xa
 1607 0c97 8402     		.2byte	0x284
 1608 0c99 5A0D0000 		.4byte	0xd5a
 1609 0c9d E002     		.2byte	0x2e0
 1610 0c9f 22       		.uleb128 0x22
 1611 0ca0 E50B0000 		.4byte	.LASF228
 1612 0ca4 0A       		.byte	0xa
 1613 0ca5 8502     		.2byte	0x285
 1614 0ca7 6E0E0000 		.4byte	0xe6e
 1615 0cab EC02     		.2byte	0x2ec
 1616 0cad 00       		.byte	0
 1617 0cae 19       		.uleb128 0x19
 1618 0caf 04       		.byte	0x4
 1619 0cb0 B40C0000 		.4byte	0xcb4
 1620 0cb4 05       		.uleb128 0x5
 1621 0cb5 01       		.byte	0x1
 1622 0cb6 08       		.byte	0x8
 1623 0cb7 D9060000 		.4byte	.LASF229
 1624 0cbb 04       		.uleb128 0x4
 1625 0cbc B40C0000 		.4byte	0xcb4
 1626 0cc0 19       		.uleb128 0x19
 1627 0cc1 04       		.byte	0x4
 1628 0cc2 0C0A0000 		.4byte	0xa0c
 1629 0cc6 1C       		.uleb128 0x1c
 1630 0cc7 1D000000 		.4byte	0x1d
 1631 0ccb E40C0000 		.4byte	0xce4
 1632 0ccf 1D       		.uleb128 0x1d
 1633 0cd0 2A0A0000 		.4byte	0xa2a
 1634 0cd4 1D       		.uleb128 0x1d
 1635 0cd5 C1020000 		.4byte	0x2c1
 1636 0cd9 1D       		.uleb128 0x1d
 1637 0cda E40C0000 		.4byte	0xce4
 1638 0cde 1D       		.uleb128 0x1d
 1639 0cdf 1D000000 		.4byte	0x1d
 1640 0ce3 00       		.byte	0
 1641 0ce4 19       		.uleb128 0x19
 1642 0ce5 04       		.byte	0x4
 1643 0ce6 BB0C0000 		.4byte	0xcbb
 1644 0cea 19       		.uleb128 0x19
 1645 0ceb 04       		.byte	0x4
 1646 0cec C60C0000 		.4byte	0xcc6
 1647 0cf0 1C       		.uleb128 0x1c
 1648 0cf1 9E060000 		.4byte	0x69e
 1649 0cf5 0E0D0000 		.4byte	0xd0e
 1650 0cf9 1D       		.uleb128 0x1d
 1651 0cfa 2A0A0000 		.4byte	0xa2a
 1652 0cfe 1D       		.uleb128 0x1d
 1653 0cff C1020000 		.4byte	0x2c1
ARM GAS  /tmp/ccuadTPt.s 			page 30


 1654 0d03 1D       		.uleb128 0x1d
 1655 0d04 9E060000 		.4byte	0x69e
 1656 0d08 1D       		.uleb128 0x1d
 1657 0d09 1D000000 		.4byte	0x1d
 1658 0d0d 00       		.byte	0
 1659 0d0e 19       		.uleb128 0x19
 1660 0d0f 04       		.byte	0x4
 1661 0d10 F00C0000 		.4byte	0xcf0
 1662 0d14 1C       		.uleb128 0x1c
 1663 0d15 1D000000 		.4byte	0x1d
 1664 0d19 280D0000 		.4byte	0xd28
 1665 0d1d 1D       		.uleb128 0x1d
 1666 0d1e 2A0A0000 		.4byte	0xa2a
 1667 0d22 1D       		.uleb128 0x1d
 1668 0d23 C1020000 		.4byte	0x2c1
 1669 0d27 00       		.byte	0
 1670 0d28 19       		.uleb128 0x19
 1671 0d29 04       		.byte	0x4
 1672 0d2a 140D0000 		.4byte	0xd14
 1673 0d2e 0C       		.uleb128 0xc
 1674 0d2f 9F000000 		.4byte	0x9f
 1675 0d33 3E0D0000 		.4byte	0xd3e
 1676 0d37 0D       		.uleb128 0xd
 1677 0d38 C3020000 		.4byte	0x2c3
 1678 0d3c 02       		.byte	0x2
 1679 0d3d 00       		.byte	0
 1680 0d3e 0C       		.uleb128 0xc
 1681 0d3f 9F000000 		.4byte	0x9f
 1682 0d43 4E0D0000 		.4byte	0xd4e
 1683 0d47 0D       		.uleb128 0xd
 1684 0d48 C3020000 		.4byte	0x2c3
 1685 0d4c 00       		.byte	0
 1686 0d4d 00       		.byte	0
 1687 0d4e 08       		.uleb128 0x8
 1688 0d4f A4040000 		.4byte	.LASF230
 1689 0d53 0A       		.byte	0xa
 1690 0d54 1D01     		.2byte	0x11d
 1691 0d56 E2080000 		.4byte	0x8e2
 1692 0d5a 23       		.uleb128 0x23
 1693 0d5b 9C0F0000 		.4byte	.LASF231
 1694 0d5f 0C       		.byte	0xc
 1695 0d60 0A       		.byte	0xa
 1696 0d61 2101     		.2byte	0x121
 1697 0d63 8F0D0000 		.4byte	0xd8f
 1698 0d67 07       		.uleb128 0x7
 1699 0d68 E6050000 		.4byte	.LASF142
 1700 0d6c 0A       		.byte	0xa
 1701 0d6d 2301     		.2byte	0x123
 1702 0d6f 8F0D0000 		.4byte	0xd8f
 1703 0d73 00       		.byte	0
 1704 0d74 07       		.uleb128 0x7
 1705 0d75 1A0E0000 		.4byte	.LASF232
 1706 0d79 0A       		.byte	0xa
 1707 0d7a 2401     		.2byte	0x124
 1708 0d7c 1D000000 		.4byte	0x1d
 1709 0d80 04       		.byte	0x4
 1710 0d81 07       		.uleb128 0x7
ARM GAS  /tmp/ccuadTPt.s 			page 31


 1711 0d82 77110000 		.4byte	.LASF233
 1712 0d86 0A       		.byte	0xa
 1713 0d87 2501     		.2byte	0x125
 1714 0d89 950D0000 		.4byte	0xd95
 1715 0d8d 08       		.byte	0x8
 1716 0d8e 00       		.byte	0
 1717 0d8f 19       		.uleb128 0x19
 1718 0d90 04       		.byte	0x4
 1719 0d91 5A0D0000 		.4byte	0xd5a
 1720 0d95 19       		.uleb128 0x19
 1721 0d96 04       		.byte	0x4
 1722 0d97 4E0D0000 		.4byte	0xd4e
 1723 0d9b 23       		.uleb128 0x23
 1724 0d9c 89040000 		.4byte	.LASF234
 1725 0da0 0E       		.byte	0xe
 1726 0da1 0A       		.byte	0xa
 1727 0da2 3D01     		.2byte	0x13d
 1728 0da4 D00D0000 		.4byte	0xdd0
 1729 0da8 07       		.uleb128 0x7
 1730 0da9 3E110000 		.4byte	.LASF235
 1731 0dad 0A       		.byte	0xa
 1732 0dae 3E01     		.2byte	0x13e
 1733 0db0 D00D0000 		.4byte	0xdd0
 1734 0db4 00       		.byte	0
 1735 0db5 07       		.uleb128 0x7
 1736 0db6 9F080000 		.4byte	.LASF236
 1737 0dba 0A       		.byte	0xa
 1738 0dbb 3F01     		.2byte	0x13f
 1739 0dbd D00D0000 		.4byte	0xdd0
 1740 0dc1 06       		.byte	0x6
 1741 0dc2 07       		.uleb128 0x7
 1742 0dc3 A5080000 		.4byte	.LASF237
 1743 0dc7 0A       		.byte	0xa
 1744 0dc8 4001     		.2byte	0x140
 1745 0dca C3000000 		.4byte	0xc3
 1746 0dce 0C       		.byte	0xc
 1747 0dcf 00       		.byte	0
 1748 0dd0 0C       		.uleb128 0xc
 1749 0dd1 C3000000 		.4byte	0xc3
 1750 0dd5 E00D0000 		.4byte	0xde0
 1751 0dd9 0D       		.uleb128 0xd
 1752 0dda C3020000 		.4byte	0x2c3
 1753 0dde 02       		.byte	0x2
 1754 0ddf 00       		.byte	0
 1755 0de0 0C       		.uleb128 0xc
 1756 0de1 B40C0000 		.4byte	0xcb4
 1757 0de5 F00D0000 		.4byte	0xdf0
 1758 0de9 0D       		.uleb128 0xd
 1759 0dea C3020000 		.4byte	0x2c3
 1760 0dee 19       		.byte	0x19
 1761 0def 00       		.byte	0
 1762 0df0 0C       		.uleb128 0xc
 1763 0df1 B40C0000 		.4byte	0xcb4
 1764 0df5 000E0000 		.4byte	0xe00
 1765 0df9 0D       		.uleb128 0xd
 1766 0dfa C3020000 		.4byte	0x2c3
 1767 0dfe 07       		.byte	0x7
ARM GAS  /tmp/ccuadTPt.s 			page 32


 1768 0dff 00       		.byte	0
 1769 0e00 0C       		.uleb128 0xc
 1770 0e01 B40C0000 		.4byte	0xcb4
 1771 0e05 100E0000 		.4byte	0xe10
 1772 0e09 0D       		.uleb128 0xd
 1773 0e0a C3020000 		.4byte	0x2c3
 1774 0e0e 17       		.byte	0x17
 1775 0e0f 00       		.byte	0
 1776 0e10 0C       		.uleb128 0xc
 1777 0e11 DC080000 		.4byte	0x8dc
 1778 0e15 200E0000 		.4byte	0xe20
 1779 0e19 0D       		.uleb128 0xd
 1780 0e1a C3020000 		.4byte	0x2c3
 1781 0e1e 1D       		.byte	0x1d
 1782 0e1f 00       		.byte	0
 1783 0e20 0C       		.uleb128 0xc
 1784 0e21 34000000 		.4byte	0x34
 1785 0e25 300E0000 		.4byte	0xe30
 1786 0e29 0D       		.uleb128 0xd
 1787 0e2a C3020000 		.4byte	0x2c3
 1788 0e2e 1D       		.byte	0x1d
 1789 0e2f 00       		.byte	0
 1790 0e30 0C       		.uleb128 0xc
 1791 0e31 B40C0000 		.4byte	0xcb4
 1792 0e35 400E0000 		.4byte	0xe40
 1793 0e39 0D       		.uleb128 0xd
 1794 0e3a C3020000 		.4byte	0x2c3
 1795 0e3e 18       		.byte	0x18
 1796 0e3f 00       		.byte	0
 1797 0e40 24       		.uleb128 0x24
 1798 0e41 4B0E0000 		.4byte	0xe4b
 1799 0e45 1D       		.uleb128 0x1d
 1800 0e46 2A0A0000 		.4byte	0xa2a
 1801 0e4a 00       		.byte	0
 1802 0e4b 19       		.uleb128 0x19
 1803 0e4c 04       		.byte	0x4
 1804 0e4d 400E0000 		.4byte	0xe40
 1805 0e51 19       		.uleb128 0x19
 1806 0e52 04       		.byte	0x4
 1807 0e53 7D070000 		.4byte	0x77d
 1808 0e57 24       		.uleb128 0x24
 1809 0e58 620E0000 		.4byte	0xe62
 1810 0e5c 1D       		.uleb128 0x1d
 1811 0e5d 1D000000 		.4byte	0x1d
 1812 0e61 00       		.byte	0
 1813 0e62 19       		.uleb128 0x19
 1814 0e63 04       		.byte	0x4
 1815 0e64 680E0000 		.4byte	0xe68
 1816 0e68 19       		.uleb128 0x19
 1817 0e69 04       		.byte	0x4
 1818 0e6a 570E0000 		.4byte	0xe57
 1819 0e6e 0C       		.uleb128 0xc
 1820 0e6f 4E0D0000 		.4byte	0xd4e
 1821 0e73 7E0E0000 		.4byte	0xe7e
 1822 0e77 0D       		.uleb128 0xd
 1823 0e78 C3020000 		.4byte	0x2c3
 1824 0e7c 02       		.byte	0x2
ARM GAS  /tmp/ccuadTPt.s 			page 33


 1825 0e7d 00       		.byte	0
 1826 0e7e 0E       		.uleb128 0xe
 1827 0e7f CC030000 		.4byte	.LASF238
 1828 0e83 0A       		.byte	0xa
 1829 0e84 FD02     		.2byte	0x2fd
 1830 0e86 2A0A0000 		.4byte	0xa2a
 1831 0e8a 0E       		.uleb128 0xe
 1832 0e8b BF020000 		.4byte	.LASF239
 1833 0e8f 0A       		.byte	0xa
 1834 0e90 FE02     		.2byte	0x2fe
 1835 0e92 300A0000 		.4byte	0xa30
 1836 0e96 25       		.uleb128 0x25
 1837 0e97 73746400 		.ascii	"std\000"
 1838 0e9b 1F       		.byte	0x1f
 1839 0e9c 00       		.byte	0
 1840 0e9d B9100000 		.4byte	0x10b9
 1841 0ea1 26       		.uleb128 0x26
 1842 0ea2 DF080000 		.4byte	.LASF242
 1843 0ea6 10       		.byte	0x10
 1844 0ea7 DF       		.byte	0xdf
 1845 0ea8 27       		.uleb128 0x27
 1846 0ea9 10       		.byte	0x10
 1847 0eaa DF       		.byte	0xdf
 1848 0eab A10E0000 		.4byte	0xea1
 1849 0eaf 28       		.uleb128 0x28
 1850 0eb0 0B       		.byte	0xb
 1851 0eb1 7C       		.byte	0x7c
 1852 0eb2 43110000 		.4byte	0x1143
 1853 0eb6 28       		.uleb128 0x28
 1854 0eb7 0B       		.byte	0xb
 1855 0eb8 7D       		.byte	0x7d
 1856 0eb9 73110000 		.4byte	0x1173
 1857 0ebd 28       		.uleb128 0x28
 1858 0ebe 0B       		.byte	0xb
 1859 0ebf 81       		.byte	0x81
 1860 0ec0 E5110000 		.4byte	0x11e5
 1861 0ec4 28       		.uleb128 0x28
 1862 0ec5 0B       		.byte	0xb
 1863 0ec6 87       		.byte	0x87
 1864 0ec7 FA110000 		.4byte	0x11fa
 1865 0ecb 28       		.uleb128 0x28
 1866 0ecc 0B       		.byte	0xb
 1867 0ecd 88       		.byte	0x88
 1868 0ece 16120000 		.4byte	0x1216
 1869 0ed2 28       		.uleb128 0x28
 1870 0ed3 0B       		.byte	0xb
 1871 0ed4 89       		.byte	0x89
 1872 0ed5 2B120000 		.4byte	0x122b
 1873 0ed9 28       		.uleb128 0x28
 1874 0eda 0B       		.byte	0xb
 1875 0edb 8A       		.byte	0x8a
 1876 0edc 40120000 		.4byte	0x1240
 1877 0ee0 28       		.uleb128 0x28
 1878 0ee1 0B       		.byte	0xb
 1879 0ee2 8C       		.byte	0x8c
 1880 0ee3 69120000 		.4byte	0x1269
 1881 0ee7 28       		.uleb128 0x28
ARM GAS  /tmp/ccuadTPt.s 			page 34


 1882 0ee8 0B       		.byte	0xb
 1883 0ee9 8F       		.byte	0x8f
 1884 0eea 83120000 		.4byte	0x1283
 1885 0eee 28       		.uleb128 0x28
 1886 0eef 0B       		.byte	0xb
 1887 0ef0 91       		.byte	0x91
 1888 0ef1 98120000 		.4byte	0x1298
 1889 0ef5 28       		.uleb128 0x28
 1890 0ef6 0B       		.byte	0xb
 1891 0ef7 94       		.byte	0x94
 1892 0ef8 B2120000 		.4byte	0x12b2
 1893 0efc 28       		.uleb128 0x28
 1894 0efd 0B       		.byte	0xb
 1895 0efe 95       		.byte	0x95
 1896 0eff CC120000 		.4byte	0x12cc
 1897 0f03 28       		.uleb128 0x28
 1898 0f04 0B       		.byte	0xb
 1899 0f05 96       		.byte	0x96
 1900 0f06 FD120000 		.4byte	0x12fd
 1901 0f0a 28       		.uleb128 0x28
 1902 0f0b 0B       		.byte	0xb
 1903 0f0c 98       		.byte	0x98
 1904 0f0d 1C130000 		.4byte	0x131c
 1905 0f11 28       		.uleb128 0x28
 1906 0f12 0B       		.byte	0xb
 1907 0f13 9E       		.byte	0x9e
 1908 0f14 3C130000 		.4byte	0x133c
 1909 0f18 28       		.uleb128 0x28
 1910 0f19 0B       		.byte	0xb
 1911 0f1a A0       		.byte	0xa0
 1912 0f1b 47130000 		.4byte	0x1347
 1913 0f1f 28       		.uleb128 0x28
 1914 0f20 0B       		.byte	0xb
 1915 0f21 A1       		.byte	0xa1
 1916 0f22 58130000 		.4byte	0x1358
 1917 0f26 28       		.uleb128 0x28
 1918 0f27 0B       		.byte	0xb
 1919 0f28 A2       		.byte	0xa2
 1920 0f29 78130000 		.4byte	0x1378
 1921 0f2d 28       		.uleb128 0x28
 1922 0f2e 0B       		.byte	0xb
 1923 0f2f A3       		.byte	0xa3
 1924 0f30 97130000 		.4byte	0x1397
 1925 0f34 28       		.uleb128 0x28
 1926 0f35 0B       		.byte	0xb
 1927 0f36 A4       		.byte	0xa4
 1928 0f37 B6130000 		.4byte	0x13b6
 1929 0f3b 28       		.uleb128 0x28
 1930 0f3c 0B       		.byte	0xb
 1931 0f3d A6       		.byte	0xa6
 1932 0f3e CB130000 		.4byte	0x13cb
 1933 0f42 28       		.uleb128 0x28
 1934 0f43 0B       		.byte	0xb
 1935 0f44 A7       		.byte	0xa7
 1936 0f45 F0130000 		.4byte	0x13f0
 1937 0f49 29       		.uleb128 0x29
 1938 0f4a 0B       		.byte	0xb
ARM GAS  /tmp/ccuadTPt.s 			page 35


 1939 0f4b 0401     		.2byte	0x104
 1940 0f4d A3110000 		.4byte	0x11a3
 1941 0f51 29       		.uleb128 0x29
 1942 0f52 0B       		.byte	0xb
 1943 0f53 0901     		.2byte	0x109
 1944 0f55 03110000 		.4byte	0x1103
 1945 0f59 29       		.uleb128 0x29
 1946 0f5a 0B       		.byte	0xb
 1947 0f5b 0A01     		.2byte	0x10a
 1948 0f5d 0A140000 		.4byte	0x140a
 1949 0f61 29       		.uleb128 0x29
 1950 0f62 0B       		.byte	0xb
 1951 0f63 0C01     		.2byte	0x10c
 1952 0f65 24140000 		.4byte	0x1424
 1953 0f69 29       		.uleb128 0x29
 1954 0f6a 0B       		.byte	0xb
 1955 0f6b 0D01     		.2byte	0x10d
 1956 0f6d 77140000 		.4byte	0x1477
 1957 0f71 29       		.uleb128 0x29
 1958 0f72 0B       		.byte	0xb
 1959 0f73 0E01     		.2byte	0x10e
 1960 0f75 39140000 		.4byte	0x1439
 1961 0f79 29       		.uleb128 0x29
 1962 0f7a 0B       		.byte	0xb
 1963 0f7b 0F01     		.2byte	0x10f
 1964 0f7d 58140000 		.4byte	0x1458
 1965 0f81 29       		.uleb128 0x29
 1966 0f82 0B       		.byte	0xb
 1967 0f83 1001     		.2byte	0x110
 1968 0f85 98140000 		.4byte	0x1498
 1969 0f89 2A       		.uleb128 0x2a
 1970 0f8a 61627300 		.ascii	"abs\000"
 1971 0f8e 0B       		.byte	0xb
 1972 0f8f B4       		.byte	0xb4
 1973 0f90 53030000 		.4byte	.LASF415
 1974 0f94 63000000 		.4byte	0x63
 1975 0f98 A20F0000 		.4byte	0xfa2
 1976 0f9c 1D       		.uleb128 0x1d
 1977 0f9d 63000000 		.4byte	0x63
 1978 0fa1 00       		.byte	0
 1979 0fa2 29       		.uleb128 0x29
 1980 0fa3 0C       		.byte	0xc
 1981 0fa4 4D04     		.2byte	0x44d
 1982 0fa6 98150000 		.4byte	0x1598
 1983 0faa 29       		.uleb128 0x29
 1984 0fab 0C       		.byte	0xc
 1985 0fac 4E04     		.2byte	0x44e
 1986 0fae 8D150000 		.4byte	0x158d
 1987 0fb2 2B       		.uleb128 0x2b
 1988 0fb3 77020000 		.4byte	.LASF240
 1989 0fb7 0C       		.byte	0xc
 1990 0fb8 9301     		.2byte	0x193
 1991 0fba 71040000 		.4byte	.LASF416
 1992 0fbe 6A000000 		.4byte	0x6a
 1993 0fc2 D10F0000 		.4byte	0xfd1
 1994 0fc6 1D       		.uleb128 0x1d
 1995 0fc7 6A000000 		.4byte	0x6a
ARM GAS  /tmp/ccuadTPt.s 			page 36


 1996 0fcb 1D       		.uleb128 0x1d
 1997 0fcc D9150000 		.4byte	0x15d9
 1998 0fd0 00       		.byte	0
 1999 0fd1 28       		.uleb128 0x28
 2000 0fd2 0D       		.byte	0xd
 2001 0fd3 30       		.byte	0x30
 2002 0fd4 79010000 		.4byte	0x179
 2003 0fd8 28       		.uleb128 0x28
 2004 0fd9 0D       		.byte	0xd
 2005 0fda 31       		.byte	0x31
 2006 0fdb 94010000 		.4byte	0x194
 2007 0fdf 28       		.uleb128 0x28
 2008 0fe0 0D       		.byte	0xd
 2009 0fe1 32       		.byte	0x32
 2010 0fe2 AA010000 		.4byte	0x1aa
 2011 0fe6 28       		.uleb128 0x28
 2012 0fe7 0D       		.byte	0xd
 2013 0fe8 33       		.byte	0x33
 2014 0fe9 CF010000 		.4byte	0x1cf
 2015 0fed 28       		.uleb128 0x28
 2016 0fee 0D       		.byte	0xd
 2017 0fef 35       		.byte	0x35
 2018 0ff0 53020000 		.4byte	0x253
 2019 0ff4 28       		.uleb128 0x28
 2020 0ff5 0D       		.byte	0xd
 2021 0ff6 36       		.byte	0x36
 2022 0ff7 69020000 		.4byte	0x269
 2023 0ffb 28       		.uleb128 0x28
 2024 0ffc 0D       		.byte	0xd
 2025 0ffd 37       		.byte	0x37
 2026 0ffe 7F020000 		.4byte	0x27f
 2027 1002 28       		.uleb128 0x28
 2028 1003 0D       		.byte	0xd
 2029 1004 38       		.byte	0x38
 2030 1005 95020000 		.4byte	0x295
 2031 1009 28       		.uleb128 0x28
 2032 100a 0D       		.byte	0xd
 2033 100b 3A       		.byte	0x3a
 2034 100c FB010000 		.4byte	0x1fb
 2035 1010 28       		.uleb128 0x28
 2036 1011 0D       		.byte	0xd
 2037 1012 3B       		.byte	0x3b
 2038 1013 11020000 		.4byte	0x211
 2039 1017 28       		.uleb128 0x28
 2040 1018 0D       		.byte	0xd
 2041 1019 3C       		.byte	0x3c
 2042 101a 27020000 		.4byte	0x227
 2043 101e 28       		.uleb128 0x28
 2044 101f 0D       		.byte	0xd
 2045 1020 3D       		.byte	0x3d
 2046 1021 3D020000 		.4byte	0x23d
 2047 1025 28       		.uleb128 0x28
 2048 1026 0D       		.byte	0xd
 2049 1027 3F       		.byte	0x3f
 2050 1028 AB020000 		.4byte	0x2ab
 2051 102c 28       		.uleb128 0x28
 2052 102d 0D       		.byte	0xd
ARM GAS  /tmp/ccuadTPt.s 			page 37


 2053 102e 40       		.byte	0x40
 2054 102f E5010000 		.4byte	0x1e5
 2055 1033 28       		.uleb128 0x28
 2056 1034 0D       		.byte	0xd
 2057 1035 42       		.byte	0x42
 2058 1036 84010000 		.4byte	0x184
 2059 103a 28       		.uleb128 0x28
 2060 103b 0D       		.byte	0xd
 2061 103c 43       		.byte	0x43
 2062 103d 9F010000 		.4byte	0x19f
 2063 1041 28       		.uleb128 0x28
 2064 1042 0D       		.byte	0xd
 2065 1043 44       		.byte	0x44
 2066 1044 BA010000 		.4byte	0x1ba
 2067 1048 28       		.uleb128 0x28
 2068 1049 0D       		.byte	0xd
 2069 104a 45       		.byte	0x45
 2070 104b DA010000 		.4byte	0x1da
 2071 104f 28       		.uleb128 0x28
 2072 1050 0D       		.byte	0xd
 2073 1051 47       		.byte	0x47
 2074 1052 5E020000 		.4byte	0x25e
 2075 1056 28       		.uleb128 0x28
 2076 1057 0D       		.byte	0xd
 2077 1058 48       		.byte	0x48
 2078 1059 74020000 		.4byte	0x274
 2079 105d 28       		.uleb128 0x28
 2080 105e 0D       		.byte	0xd
 2081 105f 49       		.byte	0x49
 2082 1060 8A020000 		.4byte	0x28a
 2083 1064 28       		.uleb128 0x28
 2084 1065 0D       		.byte	0xd
 2085 1066 4A       		.byte	0x4a
 2086 1067 A0020000 		.4byte	0x2a0
 2087 106b 28       		.uleb128 0x28
 2088 106c 0D       		.byte	0xd
 2089 106d 4C       		.byte	0x4c
 2090 106e 06020000 		.4byte	0x206
 2091 1072 28       		.uleb128 0x28
 2092 1073 0D       		.byte	0xd
 2093 1074 4D       		.byte	0x4d
 2094 1075 1C020000 		.4byte	0x21c
 2095 1079 28       		.uleb128 0x28
 2096 107a 0D       		.byte	0xd
 2097 107b 4E       		.byte	0x4e
 2098 107c 32020000 		.4byte	0x232
 2099 1080 28       		.uleb128 0x28
 2100 1081 0D       		.byte	0xd
 2101 1082 4F       		.byte	0x4f
 2102 1083 48020000 		.4byte	0x248
 2103 1087 28       		.uleb128 0x28
 2104 1088 0D       		.byte	0xd
 2105 1089 51       		.byte	0x51
 2106 108a B6020000 		.4byte	0x2b6
 2107 108e 28       		.uleb128 0x28
 2108 108f 0D       		.byte	0xd
 2109 1090 52       		.byte	0x52
ARM GAS  /tmp/ccuadTPt.s 			page 38


 2110 1091 F0010000 		.4byte	0x1f0
 2111 1095 28       		.uleb128 0x28
 2112 1096 0E       		.byte	0xe
 2113 1097 38       		.byte	0x38
 2114 1098 71000000 		.4byte	0x71
 2115 109c 28       		.uleb128 0x28
 2116 109d 0F       		.byte	0xf
 2117 109e 52       		.byte	0x52
 2118 109f 361A0000 		.4byte	0x1a36
 2119 10a3 28       		.uleb128 0x28
 2120 10a4 0F       		.byte	0xf
 2121 10a5 55       		.byte	0x55
 2122 10a6 501A0000 		.4byte	0x1a50
 2123 10aa 28       		.uleb128 0x28
 2124 10ab 0F       		.byte	0xf
 2125 10ac 5B       		.byte	0x5b
 2126 10ad 651A0000 		.4byte	0x1a65
 2127 10b1 28       		.uleb128 0x28
 2128 10b2 0F       		.byte	0xf
 2129 10b3 5C       		.byte	0x5c
 2130 10b4 7F1A0000 		.4byte	0x1a7f
 2131 10b8 00       		.byte	0
 2132 10b9 2C       		.uleb128 0x2c
 2133 10ba 36010000 		.4byte	.LASF241
 2134 10be 10       		.byte	0x10
 2135 10bf E1       		.byte	0xe1
 2136 10c0 1E110000 		.4byte	0x111e
 2137 10c4 26       		.uleb128 0x26
 2138 10c5 DF080000 		.4byte	.LASF242
 2139 10c9 10       		.byte	0x10
 2140 10ca E3       		.byte	0xe3
 2141 10cb 27       		.uleb128 0x27
 2142 10cc 10       		.byte	0x10
 2143 10cd E3       		.byte	0xe3
 2144 10ce C4100000 		.4byte	0x10c4
 2145 10d2 28       		.uleb128 0x28
 2146 10d3 0B       		.byte	0xb
 2147 10d4 DC       		.byte	0xdc
 2148 10d5 A3110000 		.4byte	0x11a3
 2149 10d9 28       		.uleb128 0x28
 2150 10da 0B       		.byte	0xb
 2151 10db EC       		.byte	0xec
 2152 10dc 0A140000 		.4byte	0x140a
 2153 10e0 28       		.uleb128 0x28
 2154 10e1 0B       		.byte	0xb
 2155 10e2 F7       		.byte	0xf7
 2156 10e3 24140000 		.4byte	0x1424
 2157 10e7 28       		.uleb128 0x28
 2158 10e8 0B       		.byte	0xb
 2159 10e9 F8       		.byte	0xf8
 2160 10ea 39140000 		.4byte	0x1439
 2161 10ee 28       		.uleb128 0x28
 2162 10ef 0B       		.byte	0xb
 2163 10f0 F9       		.byte	0xf9
 2164 10f1 58140000 		.4byte	0x1458
 2165 10f5 28       		.uleb128 0x28
 2166 10f6 0B       		.byte	0xb
ARM GAS  /tmp/ccuadTPt.s 			page 39


 2167 10f7 FB       		.byte	0xfb
 2168 10f8 77140000 		.4byte	0x1477
 2169 10fc 28       		.uleb128 0x28
 2170 10fd 0B       		.byte	0xb
 2171 10fe FC       		.byte	0xfc
 2172 10ff 98140000 		.4byte	0x1498
 2173 1103 2D       		.uleb128 0x2d
 2174 1104 64697600 		.ascii	"div\000"
 2175 1108 0B       		.byte	0xb
 2176 1109 E9       		.byte	0xe9
 2177 110a 0A020000 		.4byte	.LASF417
 2178 110e A3110000 		.4byte	0x11a3
 2179 1112 1D       		.uleb128 0x1d
 2180 1113 63000000 		.4byte	0x63
 2181 1117 1D       		.uleb128 0x1d
 2182 1118 63000000 		.4byte	0x63
 2183 111c 00       		.byte	0
 2184 111d 00       		.byte	0
 2185 111e 14       		.uleb128 0x14
 2186 111f 08       		.byte	0x8
 2187 1120 11       		.byte	0x11
 2188 1121 20       		.byte	0x20
 2189 1122 D2000000 		.4byte	.LASF244
 2190 1126 43110000 		.4byte	0x1143
 2191 112a 11       		.uleb128 0x11
 2192 112b DE070000 		.4byte	.LASF245
 2193 112f 11       		.byte	0x11
 2194 1130 21       		.byte	0x21
 2195 1131 1D000000 		.4byte	0x1d
 2196 1135 00       		.byte	0
 2197 1136 18       		.uleb128 0x18
 2198 1137 72656D00 		.ascii	"rem\000"
 2199 113b 11       		.byte	0x11
 2200 113c 22       		.byte	0x22
 2201 113d 1D000000 		.4byte	0x1d
 2202 1141 04       		.byte	0x4
 2203 1142 00       		.byte	0
 2204 1143 03       		.uleb128 0x3
 2205 1144 740F0000 		.4byte	.LASF246
 2206 1148 11       		.byte	0x11
 2207 1149 23       		.byte	0x23
 2208 114a 1E110000 		.4byte	0x111e
 2209 114e 14       		.uleb128 0x14
 2210 114f 08       		.byte	0x8
 2211 1150 11       		.byte	0x11
 2212 1151 26       		.byte	0x26
 2213 1152 2C0C0000 		.4byte	.LASF247
 2214 1156 73110000 		.4byte	0x1173
 2215 115a 11       		.uleb128 0x11
 2216 115b DE070000 		.4byte	.LASF245
 2217 115f 11       		.byte	0x11
 2218 1160 27       		.byte	0x27
 2219 1161 D5000000 		.4byte	0xd5
 2220 1165 00       		.byte	0
 2221 1166 18       		.uleb128 0x18
 2222 1167 72656D00 		.ascii	"rem\000"
 2223 116b 11       		.byte	0x11
ARM GAS  /tmp/ccuadTPt.s 			page 40


 2224 116c 28       		.byte	0x28
 2225 116d D5000000 		.4byte	0xd5
 2226 1171 04       		.byte	0x4
 2227 1172 00       		.byte	0
 2228 1173 03       		.uleb128 0x3
 2229 1174 DF0D0000 		.4byte	.LASF248
 2230 1178 11       		.byte	0x11
 2231 1179 29       		.byte	0x29
 2232 117a 4E110000 		.4byte	0x114e
 2233 117e 14       		.uleb128 0x14
 2234 117f 10       		.byte	0x10
 2235 1180 11       		.byte	0x11
 2236 1181 2D       		.byte	0x2d
 2237 1182 26100000 		.4byte	.LASF249
 2238 1186 A3110000 		.4byte	0x11a3
 2239 118a 11       		.uleb128 0x11
 2240 118b DE070000 		.4byte	.LASF245
 2241 118f 11       		.byte	0x11
 2242 1190 2E       		.byte	0x2e
 2243 1191 63000000 		.4byte	0x63
 2244 1195 00       		.byte	0
 2245 1196 18       		.uleb128 0x18
 2246 1197 72656D00 		.ascii	"rem\000"
 2247 119b 11       		.byte	0x11
 2248 119c 2F       		.byte	0x2f
 2249 119d 63000000 		.4byte	0x63
 2250 11a1 08       		.byte	0x8
 2251 11a2 00       		.byte	0
 2252 11a3 03       		.uleb128 0x3
 2253 11a4 88100000 		.4byte	.LASF250
 2254 11a8 11       		.byte	0x11
 2255 11a9 30       		.byte	0x30
 2256 11aa 7E110000 		.4byte	0x117e
 2257 11ae 03       		.uleb128 0x3
 2258 11af 65090000 		.4byte	.LASF251
 2259 11b3 11       		.byte	0x11
 2260 11b4 35       		.byte	0x35
 2261 11b5 B9110000 		.4byte	0x11b9
 2262 11b9 19       		.uleb128 0x19
 2263 11ba 04       		.byte	0x4
 2264 11bb BF110000 		.4byte	0x11bf
 2265 11bf 1C       		.uleb128 0x1c
 2266 11c0 1D000000 		.4byte	0x1d
 2267 11c4 D3110000 		.4byte	0x11d3
 2268 11c8 1D       		.uleb128 0x1d
 2269 11c9 D3110000 		.4byte	0x11d3
 2270 11cd 1D       		.uleb128 0x1d
 2271 11ce D3110000 		.4byte	0x11d3
 2272 11d2 00       		.byte	0
 2273 11d3 19       		.uleb128 0x19
 2274 11d4 04       		.byte	0x4
 2275 11d5 D9110000 		.4byte	0x11d9
 2276 11d9 2E       		.uleb128 0x2e
 2277 11da 0F       		.uleb128 0xf
 2278 11db BF0E0000 		.4byte	.LASF252
 2279 11df 11       		.byte	0x11
 2280 11e0 5F       		.byte	0x5f
ARM GAS  /tmp/ccuadTPt.s 			page 41


 2281 11e1 AE0C0000 		.4byte	0xcae
 2282 11e5 2F       		.uleb128 0x2f
 2283 11e6 B70A0000 		.4byte	.LASF253
 2284 11ea 11       		.byte	0x11
 2285 11eb 48       		.byte	0x48
 2286 11ec 1D000000 		.4byte	0x1d
 2287 11f0 FA110000 		.4byte	0x11fa
 2288 11f4 1D       		.uleb128 0x1d
 2289 11f5 B0080000 		.4byte	0x8b0
 2290 11f9 00       		.byte	0
 2291 11fa 2F       		.uleb128 0x2f
 2292 11fb 99100000 		.4byte	.LASF254
 2293 11ff 11       		.byte	0x11
 2294 1200 49       		.byte	0x49
 2295 1201 0F120000 		.4byte	0x120f
 2296 1205 0F120000 		.4byte	0x120f
 2297 1209 1D       		.uleb128 0x1d
 2298 120a E40C0000 		.4byte	0xce4
 2299 120e 00       		.byte	0
 2300 120f 05       		.uleb128 0x5
 2301 1210 08       		.byte	0x8
 2302 1211 04       		.byte	0x4
 2303 1212 CB100000 		.4byte	.LASF255
 2304 1216 2F       		.uleb128 0x2f
 2305 1217 A8100000 		.4byte	.LASF256
 2306 121b 11       		.byte	0x11
 2307 121c 4D       		.byte	0x4d
 2308 121d 1D000000 		.4byte	0x1d
 2309 1221 2B120000 		.4byte	0x122b
 2310 1225 1D       		.uleb128 0x1d
 2311 1226 E40C0000 		.4byte	0xce4
 2312 122a 00       		.byte	0
 2313 122b 2F       		.uleb128 0x2f
 2314 122c AD100000 		.4byte	.LASF257
 2315 1230 11       		.byte	0x11
 2316 1231 4F       		.byte	0x4f
 2317 1232 D5000000 		.4byte	0xd5
 2318 1236 40120000 		.4byte	0x1240
 2319 123a 1D       		.uleb128 0x1d
 2320 123b E40C0000 		.4byte	0xce4
 2321 123f 00       		.byte	0
 2322 1240 2F       		.uleb128 0x2f
 2323 1241 CF050000 		.4byte	.LASF258
 2324 1245 11       		.byte	0x11
 2325 1246 51       		.byte	0x51
 2326 1247 C1020000 		.4byte	0x2c1
 2327 124b 69120000 		.4byte	0x1269
 2328 124f 1D       		.uleb128 0x1d
 2329 1250 D3110000 		.4byte	0x11d3
 2330 1254 1D       		.uleb128 0x1d
 2331 1255 D3110000 		.4byte	0x11d3
 2332 1259 1D       		.uleb128 0x1d
 2333 125a 24000000 		.4byte	0x24
 2334 125e 1D       		.uleb128 0x1d
 2335 125f 24000000 		.4byte	0x24
 2336 1263 1D       		.uleb128 0x1d
 2337 1264 AE110000 		.4byte	0x11ae
ARM GAS  /tmp/ccuadTPt.s 			page 42


 2338 1268 00       		.byte	0
 2339 1269 30       		.uleb128 0x30
 2340 126a 64697600 		.ascii	"div\000"
 2341 126e 11       		.byte	0x11
 2342 126f 57       		.byte	0x57
 2343 1270 43110000 		.4byte	0x1143
 2344 1274 83120000 		.4byte	0x1283
 2345 1278 1D       		.uleb128 0x1d
 2346 1279 1D000000 		.4byte	0x1d
 2347 127d 1D       		.uleb128 0x1d
 2348 127e 1D000000 		.4byte	0x1d
 2349 1282 00       		.byte	0
 2350 1283 2F       		.uleb128 0x2f
 2351 1284 00000000 		.4byte	.LASF259
 2352 1288 11       		.byte	0x11
 2353 1289 5A       		.byte	0x5a
 2354 128a AE0C0000 		.4byte	0xcae
 2355 128e 98120000 		.4byte	0x1298
 2356 1292 1D       		.uleb128 0x1d
 2357 1293 E40C0000 		.4byte	0xce4
 2358 1297 00       		.byte	0
 2359 1298 2F       		.uleb128 0x2f
 2360 1299 21090000 		.4byte	.LASF260
 2361 129d 11       		.byte	0x11
 2362 129e 63       		.byte	0x63
 2363 129f 73110000 		.4byte	0x1173
 2364 12a3 B2120000 		.4byte	0x12b2
 2365 12a7 1D       		.uleb128 0x1d
 2366 12a8 D5000000 		.4byte	0xd5
 2367 12ac 1D       		.uleb128 0x1d
 2368 12ad D5000000 		.4byte	0xd5
 2369 12b1 00       		.byte	0
 2370 12b2 2F       		.uleb128 0x2f
 2371 12b3 23010000 		.4byte	.LASF261
 2372 12b7 11       		.byte	0x11
 2373 12b8 65       		.byte	0x65
 2374 12b9 1D000000 		.4byte	0x1d
 2375 12bd CC120000 		.4byte	0x12cc
 2376 12c1 1D       		.uleb128 0x1d
 2377 12c2 E40C0000 		.4byte	0xce4
 2378 12c6 1D       		.uleb128 0x1d
 2379 12c7 24000000 		.4byte	0x24
 2380 12cb 00       		.byte	0
 2381 12cc 2F       		.uleb128 0x2f
 2382 12cd AD0B0000 		.4byte	.LASF262
 2383 12d1 11       		.byte	0x11
 2384 12d2 6B       		.byte	0x6b
 2385 12d3 24000000 		.4byte	0x24
 2386 12d7 EB120000 		.4byte	0x12eb
 2387 12db 1D       		.uleb128 0x1d
 2388 12dc EB120000 		.4byte	0x12eb
 2389 12e0 1D       		.uleb128 0x1d
 2390 12e1 E40C0000 		.4byte	0xce4
 2391 12e5 1D       		.uleb128 0x1d
 2392 12e6 24000000 		.4byte	0x24
 2393 12ea 00       		.byte	0
 2394 12eb 19       		.uleb128 0x19
ARM GAS  /tmp/ccuadTPt.s 			page 43


 2395 12ec 04       		.byte	0x4
 2396 12ed F1120000 		.4byte	0x12f1
 2397 12f1 05       		.uleb128 0x5
 2398 12f2 04       		.byte	0x4
 2399 12f3 07       		.byte	0x7
 2400 12f4 9C010000 		.4byte	.LASF263
 2401 12f8 04       		.uleb128 0x4
 2402 12f9 F1120000 		.4byte	0x12f1
 2403 12fd 2F       		.uleb128 0x2f
 2404 12fe 67030000 		.4byte	.LASF264
 2405 1302 11       		.byte	0x11
 2406 1303 67       		.byte	0x67
 2407 1304 1D000000 		.4byte	0x1d
 2408 1308 1C130000 		.4byte	0x131c
 2409 130c 1D       		.uleb128 0x1d
 2410 130d EB120000 		.4byte	0x12eb
 2411 1311 1D       		.uleb128 0x1d
 2412 1312 E40C0000 		.4byte	0xce4
 2413 1316 1D       		.uleb128 0x1d
 2414 1317 24000000 		.4byte	0x24
 2415 131b 00       		.byte	0
 2416 131c 31       		.uleb128 0x31
 2417 131d 7D110000 		.4byte	.LASF265
 2418 1321 11       		.byte	0x11
 2419 1322 87       		.byte	0x87
 2420 1323 3C130000 		.4byte	0x133c
 2421 1327 1D       		.uleb128 0x1d
 2422 1328 C1020000 		.4byte	0x2c1
 2423 132c 1D       		.uleb128 0x1d
 2424 132d 24000000 		.4byte	0x24
 2425 1331 1D       		.uleb128 0x1d
 2426 1332 24000000 		.4byte	0x24
 2427 1336 1D       		.uleb128 0x1d
 2428 1337 AE110000 		.4byte	0x11ae
 2429 133b 00       		.byte	0
 2430 133c 32       		.uleb128 0x32
 2431 133d 68000000 		.4byte	.LASF418
 2432 1341 11       		.byte	0x11
 2433 1342 88       		.byte	0x88
 2434 1343 1D000000 		.4byte	0x1d
 2435 1347 31       		.uleb128 0x31
 2436 1348 83090000 		.4byte	.LASF266
 2437 134c 11       		.byte	0x11
 2438 134d 93       		.byte	0x93
 2439 134e 58130000 		.4byte	0x1358
 2440 1352 1D       		.uleb128 0x1d
 2441 1353 34000000 		.4byte	0x34
 2442 1357 00       		.byte	0
 2443 1358 2F       		.uleb128 0x2f
 2444 1359 3C050000 		.4byte	.LASF267
 2445 135d 11       		.byte	0x11
 2446 135e 94       		.byte	0x94
 2447 135f 0F120000 		.4byte	0x120f
 2448 1363 72130000 		.4byte	0x1372
 2449 1367 1D       		.uleb128 0x1d
 2450 1368 E40C0000 		.4byte	0xce4
 2451 136c 1D       		.uleb128 0x1d
ARM GAS  /tmp/ccuadTPt.s 			page 44


 2452 136d 72130000 		.4byte	0x1372
 2453 1371 00       		.byte	0
 2454 1372 19       		.uleb128 0x19
 2455 1373 04       		.byte	0x4
 2456 1374 AE0C0000 		.4byte	0xcae
 2457 1378 2F       		.uleb128 0x2f
 2458 1379 A3050000 		.4byte	.LASF268
 2459 137d 11       		.byte	0x11
 2460 137e 9F       		.byte	0x9f
 2461 137f D5000000 		.4byte	0xd5
 2462 1383 97130000 		.4byte	0x1397
 2463 1387 1D       		.uleb128 0x1d
 2464 1388 E40C0000 		.4byte	0xce4
 2465 138c 1D       		.uleb128 0x1d
 2466 138d 72130000 		.4byte	0x1372
 2467 1391 1D       		.uleb128 0x1d
 2468 1392 1D000000 		.4byte	0x1d
 2469 1396 00       		.byte	0
 2470 1397 2F       		.uleb128 0x2f
 2471 1398 D70D0000 		.4byte	.LASF269
 2472 139c 11       		.byte	0x11
 2473 139d A1       		.byte	0xa1
 2474 139e E7000000 		.4byte	0xe7
 2475 13a2 B6130000 		.4byte	0x13b6
 2476 13a6 1D       		.uleb128 0x1d
 2477 13a7 E40C0000 		.4byte	0xce4
 2478 13ab 1D       		.uleb128 0x1d
 2479 13ac 72130000 		.4byte	0x1372
 2480 13b0 1D       		.uleb128 0x1d
 2481 13b1 1D000000 		.4byte	0x1d
 2482 13b5 00       		.byte	0
 2483 13b6 2F       		.uleb128 0x2f
 2484 13b7 A4000000 		.4byte	.LASF270
 2485 13bb 11       		.byte	0x11
 2486 13bc A4       		.byte	0xa4
 2487 13bd 1D000000 		.4byte	0x1d
 2488 13c1 CB130000 		.4byte	0x13cb
 2489 13c5 1D       		.uleb128 0x1d
 2490 13c6 E40C0000 		.4byte	0xce4
 2491 13ca 00       		.byte	0
 2492 13cb 2F       		.uleb128 0x2f
 2493 13cc 2C0F0000 		.4byte	.LASF271
 2494 13d0 11       		.byte	0x11
 2495 13d1 6D       		.byte	0x6d
 2496 13d2 24000000 		.4byte	0x24
 2497 13d6 EA130000 		.4byte	0x13ea
 2498 13da 1D       		.uleb128 0x1d
 2499 13db AE0C0000 		.4byte	0xcae
 2500 13df 1D       		.uleb128 0x1d
 2501 13e0 EA130000 		.4byte	0x13ea
 2502 13e4 1D       		.uleb128 0x1d
 2503 13e5 24000000 		.4byte	0x24
 2504 13e9 00       		.byte	0
 2505 13ea 19       		.uleb128 0x19
 2506 13eb 04       		.byte	0x4
 2507 13ec F8120000 		.4byte	0x12f8
 2508 13f0 2F       		.uleb128 0x2f
ARM GAS  /tmp/ccuadTPt.s 			page 45


 2509 13f1 91040000 		.4byte	.LASF272
 2510 13f5 11       		.byte	0x11
 2511 13f6 69       		.byte	0x69
 2512 13f7 1D000000 		.4byte	0x1d
 2513 13fb 0A140000 		.4byte	0x140a
 2514 13ff 1D       		.uleb128 0x1d
 2515 1400 AE0C0000 		.4byte	0xcae
 2516 1404 1D       		.uleb128 0x1d
 2517 1405 F1120000 		.4byte	0x12f1
 2518 1409 00       		.byte	0
 2519 140a 2F       		.uleb128 0x2f
 2520 140b EB040000 		.4byte	.LASF273
 2521 140f 11       		.byte	0x11
 2522 1410 F1       		.byte	0xf1
 2523 1411 A3110000 		.4byte	0x11a3
 2524 1415 24140000 		.4byte	0x1424
 2525 1419 1D       		.uleb128 0x1d
 2526 141a 63000000 		.4byte	0x63
 2527 141e 1D       		.uleb128 0x1d
 2528 141f 63000000 		.4byte	0x63
 2529 1423 00       		.byte	0
 2530 1424 2F       		.uleb128 0x2f
 2531 1425 23080000 		.4byte	.LASF274
 2532 1429 11       		.byte	0x11
 2533 142a EC       		.byte	0xec
 2534 142b 63000000 		.4byte	0x63
 2535 142f 39140000 		.4byte	0x1439
 2536 1433 1D       		.uleb128 0x1d
 2537 1434 E40C0000 		.4byte	0xce4
 2538 1438 00       		.byte	0
 2539 1439 2F       		.uleb128 0x2f
 2540 143a 2E030000 		.4byte	.LASF275
 2541 143e 11       		.byte	0x11
 2542 143f F2       		.byte	0xf2
 2543 1440 63000000 		.4byte	0x63
 2544 1444 58140000 		.4byte	0x1458
 2545 1448 1D       		.uleb128 0x1d
 2546 1449 E40C0000 		.4byte	0xce4
 2547 144d 1D       		.uleb128 0x1d
 2548 144e 72130000 		.4byte	0x1372
 2549 1452 1D       		.uleb128 0x1d
 2550 1453 1D000000 		.4byte	0x1d
 2551 1457 00       		.byte	0
 2552 1458 2F       		.uleb128 0x2f
 2553 1459 4A020000 		.4byte	.LASF276
 2554 145d 11       		.byte	0x11
 2555 145e F6       		.byte	0xf6
 2556 145f 04010000 		.4byte	0x104
 2557 1463 77140000 		.4byte	0x1477
 2558 1467 1D       		.uleb128 0x1d
 2559 1468 E40C0000 		.4byte	0xce4
 2560 146c 1D       		.uleb128 0x1d
 2561 146d 72130000 		.4byte	0x1372
 2562 1471 1D       		.uleb128 0x1d
 2563 1472 1D000000 		.4byte	0x1d
 2564 1476 00       		.byte	0
 2565 1477 2F       		.uleb128 0x2f
ARM GAS  /tmp/ccuadTPt.s 			page 46


 2566 1478 000F0000 		.4byte	.LASF277
 2567 147c 11       		.byte	0x11
 2568 147d 97       		.byte	0x97
 2569 147e 91140000 		.4byte	0x1491
 2570 1482 91140000 		.4byte	0x1491
 2571 1486 1D       		.uleb128 0x1d
 2572 1487 E40C0000 		.4byte	0xce4
 2573 148b 1D       		.uleb128 0x1d
 2574 148c 72130000 		.4byte	0x1372
 2575 1490 00       		.byte	0
 2576 1491 05       		.uleb128 0x5
 2577 1492 04       		.byte	0x4
 2578 1493 04       		.byte	0x4
 2579 1494 280E0000 		.4byte	.LASF278
 2580 1498 33       		.uleb128 0x33
 2581 1499 1E030000 		.4byte	.LASF279
 2582 149d 11       		.byte	0x11
 2583 149e 2801     		.2byte	0x128
 2584 14a0 6A000000 		.4byte	0x6a
 2585 14a4 B3140000 		.4byte	0x14b3
 2586 14a8 1D       		.uleb128 0x1d
 2587 14a9 E40C0000 		.4byte	0xce4
 2588 14ad 1D       		.uleb128 0x1d
 2589 14ae 72130000 		.4byte	0x1372
 2590 14b2 00       		.byte	0
 2591 14b3 28       		.uleb128 0x28
 2592 14b4 12       		.byte	0x12
 2593 14b5 27       		.byte	0x27
 2594 14b6 E5110000 		.4byte	0x11e5
 2595 14ba 28       		.uleb128 0x28
 2596 14bb 12       		.byte	0x12
 2597 14bc 33       		.byte	0x33
 2598 14bd 43110000 		.4byte	0x1143
 2599 14c1 28       		.uleb128 0x28
 2600 14c2 12       		.byte	0x12
 2601 14c3 34       		.byte	0x34
 2602 14c4 73110000 		.4byte	0x1173
 2603 14c8 28       		.uleb128 0x28
 2604 14c9 12       		.byte	0x12
 2605 14ca 36       		.byte	0x36
 2606 14cb 890F0000 		.4byte	0xf89
 2607 14cf 28       		.uleb128 0x28
 2608 14d0 12       		.byte	0x12
 2609 14d1 37       		.byte	0x37
 2610 14d2 FA110000 		.4byte	0x11fa
 2611 14d6 28       		.uleb128 0x28
 2612 14d7 12       		.byte	0x12
 2613 14d8 38       		.byte	0x38
 2614 14d9 16120000 		.4byte	0x1216
 2615 14dd 28       		.uleb128 0x28
 2616 14de 12       		.byte	0x12
 2617 14df 39       		.byte	0x39
 2618 14e0 2B120000 		.4byte	0x122b
 2619 14e4 28       		.uleb128 0x28
 2620 14e5 12       		.byte	0x12
 2621 14e6 3A       		.byte	0x3a
 2622 14e7 40120000 		.4byte	0x1240
ARM GAS  /tmp/ccuadTPt.s 			page 47


 2623 14eb 28       		.uleb128 0x28
 2624 14ec 12       		.byte	0x12
 2625 14ed 3C       		.byte	0x3c
 2626 14ee 03110000 		.4byte	0x1103
 2627 14f2 28       		.uleb128 0x28
 2628 14f3 12       		.byte	0x12
 2629 14f4 3E       		.byte	0x3e
 2630 14f5 83120000 		.4byte	0x1283
 2631 14f9 28       		.uleb128 0x28
 2632 14fa 12       		.byte	0x12
 2633 14fb 40       		.byte	0x40
 2634 14fc 98120000 		.4byte	0x1298
 2635 1500 28       		.uleb128 0x28
 2636 1501 12       		.byte	0x12
 2637 1502 43       		.byte	0x43
 2638 1503 B2120000 		.4byte	0x12b2
 2639 1507 28       		.uleb128 0x28
 2640 1508 12       		.byte	0x12
 2641 1509 44       		.byte	0x44
 2642 150a CC120000 		.4byte	0x12cc
 2643 150e 28       		.uleb128 0x28
 2644 150f 12       		.byte	0x12
 2645 1510 45       		.byte	0x45
 2646 1511 FD120000 		.4byte	0x12fd
 2647 1515 28       		.uleb128 0x28
 2648 1516 12       		.byte	0x12
 2649 1517 47       		.byte	0x47
 2650 1518 1C130000 		.4byte	0x131c
 2651 151c 28       		.uleb128 0x28
 2652 151d 12       		.byte	0x12
 2653 151e 48       		.byte	0x48
 2654 151f 3C130000 		.4byte	0x133c
 2655 1523 28       		.uleb128 0x28
 2656 1524 12       		.byte	0x12
 2657 1525 4A       		.byte	0x4a
 2658 1526 47130000 		.4byte	0x1347
 2659 152a 28       		.uleb128 0x28
 2660 152b 12       		.byte	0x12
 2661 152c 4B       		.byte	0x4b
 2662 152d 58130000 		.4byte	0x1358
 2663 1531 28       		.uleb128 0x28
 2664 1532 12       		.byte	0x12
 2665 1533 4C       		.byte	0x4c
 2666 1534 78130000 		.4byte	0x1378
 2667 1538 28       		.uleb128 0x28
 2668 1539 12       		.byte	0x12
 2669 153a 4D       		.byte	0x4d
 2670 153b 97130000 		.4byte	0x1397
 2671 153f 28       		.uleb128 0x28
 2672 1540 12       		.byte	0x12
 2673 1541 4E       		.byte	0x4e
 2674 1542 B6130000 		.4byte	0x13b6
 2675 1546 28       		.uleb128 0x28
 2676 1547 12       		.byte	0x12
 2677 1548 50       		.byte	0x50
 2678 1549 CB130000 		.4byte	0x13cb
 2679 154d 28       		.uleb128 0x28
ARM GAS  /tmp/ccuadTPt.s 			page 48


 2680 154e 12       		.byte	0x12
 2681 154f 51       		.byte	0x51
 2682 1550 F0130000 		.4byte	0x13f0
 2683 1554 0F       		.uleb128 0xf
 2684 1555 D2020000 		.4byte	.LASF280
 2685 1559 13       		.byte	0x13
 2686 155a 8F       		.byte	0x8f
 2687 155b 66150000 		.4byte	0x1566
 2688 155f 05       		.uleb128 0x5
 2689 1560 01       		.byte	0x1
 2690 1561 02       		.byte	0x2
 2691 1562 DA080000 		.4byte	.LASF281
 2692 1566 0A       		.uleb128 0xa
 2693 1567 5F150000 		.4byte	0x155f
 2694 156b 34       		.uleb128 0x34
 2695 156c F90D0000 		.4byte	.LASF282
 2696 1570 13       		.byte	0x13
 2697 1571 94       		.byte	0x94
 2698 1572 C5010000 		.4byte	0x1c5
 2699 1576 05       		.uleb128 0x5
 2700 1577 03       		.byte	0x3
 2701 1578 00000000 		.4byte	_ZL32cpu_irq_critical_section_counter
 2702 157c 34       		.uleb128 0x34
 2703 157d 0D050000 		.4byte	.LASF283
 2704 1581 13       		.byte	0x13
 2705 1582 95       		.byte	0x95
 2706 1583 66150000 		.4byte	0x1566
 2707 1587 05       		.uleb128 0x5
 2708 1588 03       		.byte	0x3
 2709 1589 00000000 		.4byte	_ZL28cpu_irq_prev_interrupt_state
 2710 158d 03       		.uleb128 0x3
 2711 158e 8F060000 		.4byte	.LASF284
 2712 1592 14       		.byte	0x14
 2713 1593 AD       		.byte	0xad
 2714 1594 91140000 		.4byte	0x1491
 2715 1598 03       		.uleb128 0x3
 2716 1599 EA000000 		.4byte	.LASF285
 2717 159d 14       		.byte	0x14
 2718 159e AE       		.byte	0xae
 2719 159f 0F120000 		.4byte	0x120f
 2720 15a3 35       		.uleb128 0x35
 2721 15a4 350F0000 		.4byte	.LASF291
 2722 15a8 01       		.byte	0x1
 2723 15a9 8D000000 		.4byte	0x8d
 2724 15ad 14       		.byte	0x14
 2725 15ae 9902     		.2byte	0x299
 2726 15b0 CD150000 		.4byte	0x15cd
 2727 15b4 36       		.uleb128 0x36
 2728 15b5 3A0C0000 		.4byte	.LASF286
 2729 15b9 7F       		.sleb128 -1
 2730 15ba 37       		.uleb128 0x37
 2731 15bb AA080000 		.4byte	.LASF287
 2732 15bf 00       		.byte	0
 2733 15c0 37       		.uleb128 0x37
 2734 15c1 6D000000 		.4byte	.LASF288
 2735 15c5 01       		.byte	0x1
 2736 15c6 37       		.uleb128 0x37
ARM GAS  /tmp/ccuadTPt.s 			page 49


 2737 15c7 AB040000 		.4byte	.LASF289
 2738 15cb 02       		.byte	0x2
 2739 15cc 00       		.byte	0
 2740 15cd 0E       		.uleb128 0xe
 2741 15ce 3F090000 		.4byte	.LASF290
 2742 15d2 14       		.byte	0x14
 2743 15d3 A402     		.2byte	0x2a4
 2744 15d5 A3150000 		.4byte	0x15a3
 2745 15d9 19       		.uleb128 0x19
 2746 15da 04       		.byte	0x4
 2747 15db 6A000000 		.4byte	0x6a
 2748 15df 28       		.uleb128 0x28
 2749 15e0 15       		.byte	0x15
 2750 15e1 36       		.byte	0x36
 2751 15e2 B20F0000 		.4byte	0xfb2
 2752 15e6 38       		.uleb128 0x38
 2753 15e7 4A110000 		.4byte	.LASF292
 2754 15eb 04       		.byte	0x4
 2755 15ec 34000000 		.4byte	0x34
 2756 15f0 16       		.byte	0x16
 2757 15f1 50       		.byte	0x50
 2758 15f2 3C160000 		.4byte	0x163c
 2759 15f6 37       		.uleb128 0x37
 2760 15f7 050B0000 		.4byte	.LASF293
 2761 15fb 00       		.byte	0
 2762 15fc 39       		.uleb128 0x39
 2763 15fd 36070000 		.4byte	.LASF294
 2764 1601 00000008 		.4byte	0x8000000
 2765 1605 39       		.uleb128 0x39
 2766 1606 43070000 		.4byte	.LASF295
 2767 160a 00000010 		.4byte	0x10000000
 2768 160e 39       		.uleb128 0x39
 2769 160f 50070000 		.4byte	.LASF296
 2770 1613 00000018 		.4byte	0x18000000
 2771 1617 39       		.uleb128 0x39
 2772 1618 0D080000 		.4byte	.LASF297
 2773 161c 00000020 		.4byte	0x20000000
 2774 1620 39       		.uleb128 0x39
 2775 1621 7C000000 		.4byte	.LASF298
 2776 1625 00000028 		.4byte	0x28000000
 2777 1629 39       		.uleb128 0x39
 2778 162a 78050000 		.4byte	.LASF299
 2779 162e 00000030 		.4byte	0x30000000
 2780 1632 39       		.uleb128 0x39
 2781 1633 85050000 		.4byte	.LASF300
 2782 1637 00000038 		.4byte	0x38000000
 2783 163b 00       		.byte	0
 2784 163c 03       		.uleb128 0x3
 2785 163d F1040000 		.4byte	.LASF301
 2786 1641 16       		.byte	0x16
 2787 1642 5B       		.byte	0x5b
 2788 1643 E6150000 		.4byte	0x15e6
 2789 1647 13       		.uleb128 0x13
 2790 1648 50696E00 		.ascii	"Pin\000"
 2791 164c 17       		.byte	0x17
 2792 164d 38       		.byte	0x38
 2793 164e 84010000 		.4byte	0x184
ARM GAS  /tmp/ccuadTPt.s 			page 50


 2794 1652 04       		.uleb128 0x4
 2795 1653 47160000 		.4byte	0x1647
 2796 1657 3A       		.uleb128 0x3a
 2797 1658 06090000 		.4byte	.LASF302
 2798 165c 17       		.byte	0x17
 2799 165d 39       		.byte	0x39
 2800 165e 52160000 		.4byte	0x1652
 2801 1662 7F       		.sleb128 -1
 2802 1663 38       		.uleb128 0x38
 2803 1664 DA0F0000 		.4byte	.LASF303
 2804 1668 01       		.byte	0x1
 2805 1669 8D000000 		.4byte	0x8d
 2806 166d 17       		.byte	0x17
 2807 166e 4E       		.byte	0x4e
 2808 166f AA160000 		.4byte	0x16aa
 2809 1673 36       		.uleb128 0x36
 2810 1674 19110000 		.4byte	.LASF304
 2811 1678 7F       		.sleb128 -1
 2812 1679 37       		.uleb128 0x37
 2813 167a CA010000 		.4byte	.LASF305
 2814 167e 00       		.byte	0
 2815 167f 37       		.uleb128 0x37
 2816 1680 D2010000 		.4byte	.LASF306
 2817 1684 01       		.byte	0x1
 2818 1685 37       		.uleb128 0x37
 2819 1686 D2100000 		.4byte	.LASF307
 2820 168a 02       		.byte	0x2
 2821 168b 37       		.uleb128 0x37
 2822 168c E2010000 		.4byte	.LASF308
 2823 1690 03       		.byte	0x3
 2824 1691 37       		.uleb128 0x37
 2825 1692 EA010000 		.4byte	.LASF309
 2826 1696 04       		.byte	0x4
 2827 1697 37       		.uleb128 0x37
 2828 1698 F2010000 		.4byte	.LASF310
 2829 169c 05       		.byte	0x5
 2830 169d 37       		.uleb128 0x37
 2831 169e FA010000 		.4byte	.LASF311
 2832 16a2 06       		.byte	0x6
 2833 16a3 37       		.uleb128 0x37
 2834 16a4 02020000 		.4byte	.LASF312
 2835 16a8 07       		.byte	0x7
 2836 16a9 00       		.byte	0
 2837 16aa 03       		.uleb128 0x3
 2838 16ab 07000000 		.4byte	.LASF313
 2839 16af 17       		.byte	0x17
 2840 16b0 59       		.byte	0x59
 2841 16b1 63160000 		.4byte	0x1663
 2842 16b5 38       		.uleb128 0x38
 2843 16b6 5C0A0000 		.4byte	.LASF314
 2844 16ba 01       		.byte	0x1
 2845 16bb 8D000000 		.4byte	0x8d
 2846 16bf 17       		.byte	0x17
 2847 16c0 5C       		.byte	0x5c
 2848 16c1 38170000 		.4byte	0x1738
 2849 16c5 36       		.uleb128 0x36
 2850 16c6 480C0000 		.4byte	.LASF315
ARM GAS  /tmp/ccuadTPt.s 			page 51


 2851 16ca 7F       		.sleb128 -1
 2852 16cb 37       		.uleb128 0x37
 2853 16cc AF0D0000 		.4byte	.LASF316
 2854 16d0 00       		.byte	0
 2855 16d1 37       		.uleb128 0x37
 2856 16d2 D30E0000 		.4byte	.LASF317
 2857 16d6 01       		.byte	0x1
 2858 16d7 37       		.uleb128 0x37
 2859 16d8 B80D0000 		.4byte	.LASF318
 2860 16dc 02       		.byte	0x2
 2861 16dd 37       		.uleb128 0x37
 2862 16de DC0E0000 		.4byte	.LASF319
 2863 16e2 03       		.byte	0x3
 2864 16e3 37       		.uleb128 0x37
 2865 16e4 C10D0000 		.4byte	.LASF320
 2866 16e8 04       		.byte	0x4
 2867 16e9 37       		.uleb128 0x37
 2868 16ea E50E0000 		.4byte	.LASF321
 2869 16ee 05       		.byte	0x5
 2870 16ef 37       		.uleb128 0x37
 2871 16f0 1B070000 		.4byte	.LASF322
 2872 16f4 06       		.byte	0x6
 2873 16f5 37       		.uleb128 0x37
 2874 16f6 4C080000 		.4byte	.LASF323
 2875 16fa 07       		.byte	0x7
 2876 16fb 37       		.uleb128 0x37
 2877 16fc 24070000 		.4byte	.LASF324
 2878 1700 08       		.byte	0x8
 2879 1701 37       		.uleb128 0x37
 2880 1702 55080000 		.4byte	.LASF325
 2881 1706 09       		.byte	0x9
 2882 1707 37       		.uleb128 0x37
 2883 1708 2D070000 		.4byte	.LASF326
 2884 170c 0A       		.byte	0xa
 2885 170d 37       		.uleb128 0x37
 2886 170e 5E080000 		.4byte	.LASF327
 2887 1712 0B       		.byte	0xb
 2888 1713 37       		.uleb128 0x37
 2889 1714 F3000000 		.4byte	.LASF328
 2890 1718 0C       		.byte	0xc
 2891 1719 37       		.uleb128 0x37
 2892 171a 2F020000 		.4byte	.LASF329
 2893 171e 0D       		.byte	0xd
 2894 171f 37       		.uleb128 0x37
 2895 1720 FC000000 		.4byte	.LASF330
 2896 1724 0E       		.byte	0xe
 2897 1725 37       		.uleb128 0x37
 2898 1726 EF090000 		.4byte	.LASF331
 2899 172a 0F       		.byte	0xf
 2900 172b 37       		.uleb128 0x37
 2901 172c 05010000 		.4byte	.LASF332
 2902 1730 10       		.byte	0x10
 2903 1731 37       		.uleb128 0x37
 2904 1732 41020000 		.4byte	.LASF333
 2905 1736 11       		.byte	0x11
 2906 1737 00       		.byte	0
 2907 1738 03       		.uleb128 0x3
ARM GAS  /tmp/ccuadTPt.s 			page 52


 2908 1739 710A0000 		.4byte	.LASF334
 2909 173d 17       		.byte	0x17
 2910 173e 71       		.byte	0x71
 2911 173f B5160000 		.4byte	0x16b5
 2912 1743 38       		.uleb128 0x38
 2913 1744 36030000 		.4byte	.LASF335
 2914 1748 01       		.byte	0x1
 2915 1749 8D000000 		.4byte	0x8d
 2916 174d 17       		.byte	0x17
 2917 174e 7E       		.byte	0x7e
 2918 174f 26180000 		.4byte	0x1826
 2919 1753 36       		.uleb128 0x36
 2920 1754 DF050000 		.4byte	.LASF336
 2921 1758 7F       		.sleb128 -1
 2922 1759 37       		.uleb128 0x37
 2923 175a 33080000 		.4byte	.LASF337
 2924 175e 00       		.byte	0
 2925 175f 37       		.uleb128 0x37
 2926 1760 38080000 		.4byte	.LASF338
 2927 1764 01       		.byte	0x1
 2928 1765 37       		.uleb128 0x37
 2929 1766 3D080000 		.4byte	.LASF339
 2930 176a 02       		.byte	0x2
 2931 176b 37       		.uleb128 0x37
 2932 176c 42080000 		.4byte	.LASF340
 2933 1770 03       		.byte	0x3
 2934 1771 37       		.uleb128 0x37
 2935 1772 47080000 		.4byte	.LASF341
 2936 1776 04       		.byte	0x4
 2937 1777 37       		.uleb128 0x37
 2938 1778 9D030000 		.4byte	.LASF342
 2939 177c 05       		.byte	0x5
 2940 177d 37       		.uleb128 0x37
 2941 177e A2030000 		.4byte	.LASF343
 2942 1782 06       		.byte	0x6
 2943 1783 37       		.uleb128 0x37
 2944 1784 B6030000 		.4byte	.LASF344
 2945 1788 07       		.byte	0x7
 2946 1789 37       		.uleb128 0x37
 2947 178a 67080000 		.4byte	.LASF345
 2948 178e 08       		.byte	0x8
 2949 178f 37       		.uleb128 0x37
 2950 1790 6C080000 		.4byte	.LASF346
 2951 1794 09       		.byte	0x9
 2952 1795 37       		.uleb128 0x37
 2953 1796 14060000 		.4byte	.LASF347
 2954 179a 0A       		.byte	0xa
 2955 179b 37       		.uleb128 0x37
 2956 179c 1A060000 		.4byte	.LASF348
 2957 17a0 0B       		.byte	0xb
 2958 17a1 37       		.uleb128 0x37
 2959 17a2 20060000 		.4byte	.LASF349
 2960 17a6 0C       		.byte	0xc
 2961 17a7 37       		.uleb128 0x37
 2962 17a8 26060000 		.4byte	.LASF350
 2963 17ac 0D       		.byte	0xd
 2964 17ad 37       		.uleb128 0x37
ARM GAS  /tmp/ccuadTPt.s 			page 53


 2965 17ae 2C060000 		.4byte	.LASF351
 2966 17b2 0E       		.byte	0xe
 2967 17b3 37       		.uleb128 0x37
 2968 17b4 32060000 		.4byte	.LASF352
 2969 17b8 0F       		.byte	0xf
 2970 17b9 37       		.uleb128 0x37
 2971 17ba 38060000 		.4byte	.LASF353
 2972 17be 10       		.byte	0x10
 2973 17bf 37       		.uleb128 0x37
 2974 17c0 3E060000 		.4byte	.LASF354
 2975 17c4 11       		.byte	0x11
 2976 17c5 37       		.uleb128 0x37
 2977 17c6 44060000 		.4byte	.LASF355
 2978 17ca 12       		.byte	0x12
 2979 17cb 37       		.uleb128 0x37
 2980 17cc 4A060000 		.4byte	.LASF356
 2981 17d0 13       		.byte	0x13
 2982 17d1 37       		.uleb128 0x37
 2983 17d2 76070000 		.4byte	.LASF357
 2984 17d6 14       		.byte	0x14
 2985 17d7 37       		.uleb128 0x37
 2986 17d8 7C070000 		.4byte	.LASF358
 2987 17dc 15       		.byte	0x15
 2988 17dd 37       		.uleb128 0x37
 2989 17de 82070000 		.4byte	.LASF359
 2990 17e2 16       		.byte	0x16
 2991 17e3 37       		.uleb128 0x37
 2992 17e4 FC070000 		.4byte	.LASF360
 2993 17e8 17       		.byte	0x17
 2994 17e9 37       		.uleb128 0x37
 2995 17ea 92070000 		.4byte	.LASF361
 2996 17ee 18       		.byte	0x18
 2997 17ef 37       		.uleb128 0x37
 2998 17f0 98070000 		.4byte	.LASF362
 2999 17f4 19       		.byte	0x19
 3000 17f5 37       		.uleb128 0x37
 3001 17f6 9E070000 		.4byte	.LASF363
 3002 17fa 1A       		.byte	0x1a
 3003 17fb 37       		.uleb128 0x37
 3004 17fc A4070000 		.4byte	.LASF364
 3005 1800 1B       		.byte	0x1b
 3006 1801 37       		.uleb128 0x37
 3007 1802 AA070000 		.4byte	.LASF365
 3008 1806 1C       		.byte	0x1c
 3009 1807 37       		.uleb128 0x37
 3010 1808 B0070000 		.4byte	.LASF366
 3011 180c 1D       		.byte	0x1d
 3012 180d 37       		.uleb128 0x37
 3013 180e 93080000 		.4byte	.LASF367
 3014 1812 1E       		.byte	0x1e
 3015 1813 37       		.uleb128 0x37
 3016 1814 99080000 		.4byte	.LASF368
 3017 1818 1F       		.byte	0x1f
 3018 1819 3B       		.uleb128 0x3b
 3019 181a 44413000 		.ascii	"DA0\000"
 3020 181e 20       		.byte	0x20
 3021 181f 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccuadTPt.s 			page 54


 3022 1820 44413100 		.ascii	"DA1\000"
 3023 1824 21       		.byte	0x21
 3024 1825 00       		.byte	0
 3025 1826 17       		.uleb128 0x17
 3026 1827 30090000 		.4byte	.LASF369
 3027 182b 1C       		.byte	0x1c
 3028 182c 17       		.byte	0x17
 3029 182d AF       		.byte	0xaf
 3030 182e 9F180000 		.4byte	0x189f
 3031 1832 11       		.uleb128 0x11
 3032 1833 D70B0000 		.4byte	.LASF370
 3033 1837 17       		.byte	0x17
 3034 1838 B1       		.byte	0xb1
 3035 1839 A4180000 		.4byte	0x18a4
 3036 183d 00       		.byte	0
 3037 183e 11       		.uleb128 0x11
 3038 183f A4010000 		.4byte	.LASF371
 3039 1843 17       		.byte	0x17
 3040 1844 B2       		.byte	0xb2
 3041 1845 BA010000 		.4byte	0x1ba
 3042 1849 04       		.byte	0x4
 3043 184a 11       		.uleb128 0x11
 3044 184b F8020000 		.4byte	.LASF372
 3045 184f 17       		.byte	0x17
 3046 1850 B3       		.byte	0xb3
 3047 1851 BA010000 		.4byte	0x1ba
 3048 1855 08       		.byte	0x8
 3049 1856 11       		.uleb128 0x11
 3050 1857 320A0000 		.4byte	.LASF373
 3051 185b 17       		.byte	0x17
 3052 185c B4       		.byte	0xb4
 3053 185d 3C160000 		.4byte	0x163c
 3054 1861 0C       		.byte	0xc
 3055 1862 11       		.uleb128 0x11
 3056 1863 45000000 		.4byte	.LASF374
 3057 1867 17       		.byte	0x17
 3058 1868 B5       		.byte	0xb5
 3059 1869 BA010000 		.4byte	0x1ba
 3060 186d 10       		.byte	0x10
 3061 186e 11       		.uleb128 0x11
 3062 186f 4F0F0000 		.4byte	.LASF375
 3063 1873 17       		.byte	0x17
 3064 1874 B6       		.byte	0xb6
 3065 1875 BA010000 		.4byte	0x1ba
 3066 1879 14       		.byte	0x14
 3067 187a 11       		.uleb128 0x11
 3068 187b 8A030000 		.4byte	.LASF376
 3069 187f 17       		.byte	0x17
 3070 1880 B7       		.byte	0xb7
 3071 1881 43170000 		.4byte	0x1743
 3072 1885 18       		.byte	0x18
 3073 1886 11       		.uleb128 0x11
 3074 1887 480B0000 		.4byte	.LASF377
 3075 188b 17       		.byte	0x17
 3076 188c B8       		.byte	0xb8
 3077 188d AA160000 		.4byte	0x16aa
 3078 1891 19       		.byte	0x19
ARM GAS  /tmp/ccuadTPt.s 			page 55


 3079 1892 11       		.uleb128 0x11
 3080 1893 DA100000 		.4byte	.LASF378
 3081 1897 17       		.byte	0x17
 3082 1898 B9       		.byte	0xb9
 3083 1899 38170000 		.4byte	0x1738
 3084 189d 1A       		.byte	0x1a
 3085 189e 00       		.byte	0
 3086 189f 04       		.uleb128 0x4
 3087 18a0 26180000 		.4byte	0x1826
 3088 18a4 19       		.uleb128 0x19
 3089 18a5 04       		.byte	0x4
 3090 18a6 7D060000 		.4byte	0x67d
 3091 18aa 0C       		.uleb128 0xc
 3092 18ab 9F180000 		.4byte	0x189f
 3093 18af B5180000 		.4byte	0x18b5
 3094 18b3 3C       		.uleb128 0x3c
 3095 18b4 00       		.byte	0
 3096 18b5 0F       		.uleb128 0xf
 3097 18b6 EC050000 		.4byte	.LASF379
 3098 18ba 17       		.byte	0x17
 3099 18bb BD       		.byte	0xbd
 3100 18bc AA180000 		.4byte	0x18aa
 3101 18c0 0F       		.uleb128 0xf
 3102 18c1 4E0A0000 		.4byte	.LASF380
 3103 18c5 18       		.byte	0x18
 3104 18c6 2E       		.byte	0x2e
 3105 18c7 E40C0000 		.4byte	0xce4
 3106 18cb 0C       		.uleb128 0xc
 3107 18cc BB0C0000 		.4byte	0xcbb
 3108 18d0 D6180000 		.4byte	0x18d6
 3109 18d4 3C       		.uleb128 0x3c
 3110 18d5 00       		.byte	0
 3111 18d6 0F       		.uleb128 0xf
 3112 18d7 86000000 		.4byte	.LASF381
 3113 18db 18       		.byte	0x18
 3114 18dc 6E       		.byte	0x6e
 3115 18dd CB180000 		.4byte	0x18cb
 3116 18e1 3D       		.uleb128 0x3d
 3117 18e2 580E0000 		.4byte	.LASF383
 3118 18e6 0F190000 		.4byte	0x190f
 3119 18ea 3E       		.uleb128 0x3e
 3120 18eb 87080000 		.4byte	.LASF419
 3121 18ef 20       		.byte	0x20
 3122 18f0 3B       		.byte	0x3b
 3123 18f1 F1080000 		.4byte	.LASF420
 3124 18f5 24000000 		.4byte	0x24
 3125 18f9 01       		.byte	0x1
 3126 18fa FE180000 		.4byte	0x18fe
 3127 18fe 3F       		.uleb128 0x3f
 3128 18ff 0F190000 		.4byte	0x190f
 3129 1903 1D       		.uleb128 0x1d
 3130 1904 E40C0000 		.4byte	0xce4
 3131 1908 1D       		.uleb128 0x1d
 3132 1909 24000000 		.4byte	0x24
 3133 190d 00       		.byte	0
 3134 190e 00       		.byte	0
 3135 190f 19       		.uleb128 0x19
ARM GAS  /tmp/ccuadTPt.s 			page 56


 3136 1910 04       		.byte	0x4
 3137 1911 E1180000 		.4byte	0x18e1
 3138 1915 40       		.uleb128 0x40
 3139 1916 E60D0000 		.4byte	.LASF382
 3140 191a 19       		.byte	0x19
 3141 191b 1D       		.byte	0x1d
 3142 191c 2F000000 		.4byte	0x2f
 3143 1920 0002     		.2byte	0x200
 3144 1922 3D       		.uleb128 0x3d
 3145 1923 CD0B0000 		.4byte	.LASF384
 3146 1927 33190000 		.4byte	0x1933
 3147 192b 28       		.uleb128 0x28
 3148 192c 1A       		.byte	0x1a
 3149 192d 26       		.byte	0x26
 3150 192e EA180000 		.4byte	0x18ea
 3151 1932 00       		.byte	0
 3152 1933 0F       		.uleb128 0xf
 3153 1934 29080000 		.4byte	.LASF385
 3154 1938 1B       		.byte	0x1b
 3155 1939 8B       		.byte	0x8b
 3156 193a D5000000 		.4byte	0xd5
 3157 193e 0F       		.uleb128 0xf
 3158 193f 1D0C0000 		.4byte	.LASF386
 3159 1943 1B       		.byte	0x1b
 3160 1944 8C       		.byte	0x8c
 3161 1945 1D000000 		.4byte	0x1d
 3162 1949 0C       		.uleb128 0xc
 3163 194a AE0C0000 		.4byte	0xcae
 3164 194e 59190000 		.4byte	0x1959
 3165 1952 0D       		.uleb128 0xd
 3166 1953 C3020000 		.4byte	0x2c3
 3167 1957 01       		.byte	0x1
 3168 1958 00       		.byte	0
 3169 1959 0F       		.uleb128 0xf
 3170 195a 8B0C0000 		.4byte	.LASF387
 3171 195e 1B       		.byte	0x1b
 3172 195f 8F       		.byte	0x8f
 3173 1960 49190000 		.4byte	0x1949
 3174 1964 41       		.uleb128 0x41
 3175 1965 1A0A0000 		.4byte	.LASF388
 3176 1969 1C       		.byte	0x1c
 3177 196a 5C       		.byte	0x5c
 3178 196b 8F010000 		.4byte	0x18f
 3179 196f 38       		.byte	0x38
 3180 1970 41       		.uleb128 0x41
 3181 1971 CF070000 		.4byte	.LASF389
 3182 1975 1C       		.byte	0x1c
 3183 1976 5D       		.byte	0x5d
 3184 1977 8F010000 		.4byte	0x18f
 3185 197b 05       		.byte	0x5
 3186 197c 41       		.uleb128 0x41
 3187 197d 55040000 		.4byte	.LASF390
 3188 1981 1C       		.byte	0x1c
 3189 1982 5E       		.byte	0x5e
 3190 1983 8F010000 		.4byte	0x18f
 3191 1987 06       		.byte	0x6
 3192 1988 41       		.uleb128 0x41
ARM GAS  /tmp/ccuadTPt.s 			page 57


 3193 1989 260A0000 		.4byte	.LASF391
 3194 198d 1C       		.byte	0x1c
 3195 198e 60       		.byte	0x60
 3196 198f 8F010000 		.4byte	0x18f
 3197 1993 39       		.byte	0x39
 3198 1994 41       		.uleb128 0x41
 3199 1995 AA010000 		.4byte	.LASF392
 3200 1999 1C       		.byte	0x1c
 3201 199a 61       		.byte	0x61
 3202 199b 8F010000 		.4byte	0x18f
 3203 199f 03       		.byte	0x3
 3204 19a0 41       		.uleb128 0x41
 3205 19a1 17100000 		.4byte	.LASF393
 3206 19a5 1C       		.byte	0x1c
 3207 19a6 62       		.byte	0x62
 3208 19a7 8F010000 		.4byte	0x18f
 3209 19ab 04       		.byte	0x4
 3210 19ac 41       		.uleb128 0x41
 3211 19ad 97060000 		.4byte	.LASF394
 3212 19b1 1C       		.byte	0x1c
 3213 19b2 69       		.byte	0x69
 3214 19b3 8F010000 		.4byte	0x18f
 3215 19b7 33       		.byte	0x33
 3216 19b8 41       		.uleb128 0x41
 3217 19b9 38100000 		.4byte	.LASF395
 3218 19bd 1C       		.byte	0x1c
 3219 19be 6A       		.byte	0x6a
 3220 19bf 8F010000 		.4byte	0x18f
 3221 19c3 34       		.byte	0x34
 3222 19c4 41       		.uleb128 0x41
 3223 19c5 840F0000 		.4byte	.LASF396
 3224 19c9 1C       		.byte	0x1c
 3225 19ca 6D       		.byte	0x6d
 3226 19cb 8F010000 		.4byte	0x18f
 3227 19cf 35       		.byte	0x35
 3228 19d0 41       		.uleb128 0x41
 3229 19d1 5E0E0000 		.4byte	.LASF397
 3230 19d5 1C       		.byte	0x1c
 3231 19d6 6E       		.byte	0x6e
 3232 19d7 8F010000 		.4byte	0x18f
 3233 19db 36       		.byte	0x36
 3234 19dc 41       		.uleb128 0x41
 3235 19dd 5E0F0000 		.4byte	.LASF398
 3236 19e1 1C       		.byte	0x1c
 3237 19e2 6F       		.byte	0x6f
 3238 19e3 8F010000 		.4byte	0x18f
 3239 19e7 37       		.byte	0x37
 3240 19e8 41       		.uleb128 0x41
 3241 19e9 75030000 		.4byte	.LASF399
 3242 19ed 1C       		.byte	0x1c
 3243 19ee 71       		.byte	0x71
 3244 19ef CA010000 		.4byte	0x1ca
 3245 19f3 32       		.byte	0x32
 3246 19f4 42       		.uleb128 0x42
 3247 19f5 CA0D0000 		.4byte	.LASF400
 3248 19f9 1C       		.byte	0x1c
 3249 19fa 73       		.byte	0x73
ARM GAS  /tmp/ccuadTPt.s 			page 58


 3250 19fb CA010000 		.4byte	0x1ca
 3251 19ff 58466100 		.4byte	0x614658
 3252 1a03 40       		.uleb128 0x40
 3253 1a04 40010000 		.4byte	.LASF401
 3254 1a08 1C       		.byte	0x1c
 3255 1a09 74       		.byte	0x74
 3256 1a0a CA010000 		.4byte	0x1ca
 3257 1a0e 4661     		.2byte	0x6146
 3258 1a10 0F       		.uleb128 0xf
 3259 1a11 5D070000 		.4byte	.LASF402
 3260 1a15 1C       		.byte	0x1c
 3261 1a16 80       		.byte	0x80
 3262 1a17 22190000 		.4byte	0x1922
 3263 1a1b 0F       		.uleb128 0xf
 3264 1a1c D7050000 		.4byte	.LASF403
 3265 1a20 1C       		.byte	0x1c
 3266 1a21 81       		.byte	0x81
 3267 1a22 22190000 		.4byte	0x1922
 3268 1a26 43       		.uleb128 0x43
 3269 1a27 66010000 		.4byte	.LASF421
 3270 1a2b 0F       		.uleb128 0xf
 3271 1a2c B4050000 		.4byte	.LASF404
 3272 1a30 1D       		.byte	0x1d
 3273 1a31 30       		.byte	0x30
 3274 1a32 261A0000 		.4byte	0x1a26
 3275 1a36 2F       		.uleb128 0x2f
 3276 1a37 58060000 		.4byte	.LASF405
 3277 1a3b 1E       		.byte	0x1e
 3278 1a3c 1D       		.byte	0x1d
 3279 1a3d 1D000000 		.4byte	0x1d
 3280 1a41 501A0000 		.4byte	0x1a50
 3281 1a45 1D       		.uleb128 0x1d
 3282 1a46 E40C0000 		.4byte	0xce4
 3283 1a4a 1D       		.uleb128 0x1d
 3284 1a4b E40C0000 		.4byte	0xce4
 3285 1a4f 00       		.byte	0
 3286 1a50 2F       		.uleb128 0x2f
 3287 1a51 B9010000 		.4byte	.LASF406
 3288 1a55 1E       		.byte	0x1e
 3289 1a56 20       		.byte	0x20
 3290 1a57 AE0C0000 		.4byte	0xcae
 3291 1a5b 651A0000 		.4byte	0x1a65
 3292 1a5f 1D       		.uleb128 0x1d
 3293 1a60 1D000000 		.4byte	0x1d
 3294 1a64 00       		.byte	0
 3295 1a65 2F       		.uleb128 0x2f
 3296 1a66 92050000 		.4byte	.LASF407
 3297 1a6a 1E       		.byte	0x1e
 3298 1a6b 2A       		.byte	0x2a
 3299 1a6c AE0C0000 		.4byte	0xcae
 3300 1a70 7F1A0000 		.4byte	0x1a7f
 3301 1a74 1D       		.uleb128 0x1d
 3302 1a75 AE0C0000 		.4byte	0xcae
 3303 1a79 1D       		.uleb128 0x1d
 3304 1a7a E40C0000 		.4byte	0xce4
 3305 1a7e 00       		.byte	0
 3306 1a7f 44       		.uleb128 0x44
ARM GAS  /tmp/ccuadTPt.s 			page 59


 3307 1a80 58050000 		.4byte	.LASF408
 3308 1a84 1E       		.byte	0x1e
 3309 1a85 2C       		.byte	0x2c
 3310 1a86 24000000 		.4byte	0x24
 3311 1a8a 1D       		.uleb128 0x1d
 3312 1a8b AE0C0000 		.4byte	0xcae
 3313 1a8f 1D       		.uleb128 0x1d
 3314 1a90 E40C0000 		.4byte	0xce4
 3315 1a94 1D       		.uleb128 0x1d
 3316 1a95 24000000 		.4byte	0x24
 3317 1a99 00       		.byte	0
 3318 1a9a 00       		.byte	0
 3319              		.section	.debug_abbrev,"",%progbits
 3320              	.Ldebug_abbrev0:
 3321 0000 01       		.uleb128 0x1
 3322 0001 11       		.uleb128 0x11
 3323 0002 01       		.byte	0x1
 3324 0003 25       		.uleb128 0x25
 3325 0004 0E       		.uleb128 0xe
 3326 0005 13       		.uleb128 0x13
 3327 0006 0B       		.uleb128 0xb
 3328 0007 03       		.uleb128 0x3
 3329 0008 0E       		.uleb128 0xe
 3330 0009 1B       		.uleb128 0x1b
 3331 000a 0E       		.uleb128 0xe
 3332 000b 10       		.uleb128 0x10
 3333 000c 17       		.uleb128 0x17
 3334 000d 00       		.byte	0
 3335 000e 00       		.byte	0
 3336 000f 02       		.uleb128 0x2
 3337 0010 24       		.uleb128 0x24
 3338 0011 00       		.byte	0
 3339 0012 0B       		.uleb128 0xb
 3340 0013 0B       		.uleb128 0xb
 3341 0014 3E       		.uleb128 0x3e
 3342 0015 0B       		.uleb128 0xb
 3343 0016 03       		.uleb128 0x3
 3344 0017 08       		.uleb128 0x8
 3345 0018 00       		.byte	0
 3346 0019 00       		.byte	0
 3347 001a 03       		.uleb128 0x3
 3348 001b 16       		.uleb128 0x16
 3349 001c 00       		.byte	0
 3350 001d 03       		.uleb128 0x3
 3351 001e 0E       		.uleb128 0xe
 3352 001f 3A       		.uleb128 0x3a
 3353 0020 0B       		.uleb128 0xb
 3354 0021 3B       		.uleb128 0x3b
 3355 0022 0B       		.uleb128 0xb
 3356 0023 49       		.uleb128 0x49
 3357 0024 13       		.uleb128 0x13
 3358 0025 00       		.byte	0
 3359 0026 00       		.byte	0
 3360 0027 04       		.uleb128 0x4
 3361 0028 26       		.uleb128 0x26
 3362 0029 00       		.byte	0
 3363 002a 49       		.uleb128 0x49
ARM GAS  /tmp/ccuadTPt.s 			page 60


 3364 002b 13       		.uleb128 0x13
 3365 002c 00       		.byte	0
 3366 002d 00       		.byte	0
 3367 002e 05       		.uleb128 0x5
 3368 002f 24       		.uleb128 0x24
 3369 0030 00       		.byte	0
 3370 0031 0B       		.uleb128 0xb
 3371 0032 0B       		.uleb128 0xb
 3372 0033 3E       		.uleb128 0x3e
 3373 0034 0B       		.uleb128 0xb
 3374 0035 03       		.uleb128 0x3
 3375 0036 0E       		.uleb128 0xe
 3376 0037 00       		.byte	0
 3377 0038 00       		.byte	0
 3378 0039 06       		.uleb128 0x6
 3379 003a 13       		.uleb128 0x13
 3380 003b 01       		.byte	0x1
 3381 003c 0B       		.uleb128 0xb
 3382 003d 0B       		.uleb128 0xb
 3383 003e 3A       		.uleb128 0x3a
 3384 003f 0B       		.uleb128 0xb
 3385 0040 3B       		.uleb128 0x3b
 3386 0041 05       		.uleb128 0x5
 3387 0042 6E       		.uleb128 0x6e
 3388 0043 0E       		.uleb128 0xe
 3389 0044 01       		.uleb128 0x1
 3390 0045 13       		.uleb128 0x13
 3391 0046 00       		.byte	0
 3392 0047 00       		.byte	0
 3393 0048 07       		.uleb128 0x7
 3394 0049 0D       		.uleb128 0xd
 3395 004a 00       		.byte	0
 3396 004b 03       		.uleb128 0x3
 3397 004c 0E       		.uleb128 0xe
 3398 004d 3A       		.uleb128 0x3a
 3399 004e 0B       		.uleb128 0xb
 3400 004f 3B       		.uleb128 0x3b
 3401 0050 05       		.uleb128 0x5
 3402 0051 49       		.uleb128 0x49
 3403 0052 13       		.uleb128 0x13
 3404 0053 38       		.uleb128 0x38
 3405 0054 0B       		.uleb128 0xb
 3406 0055 00       		.byte	0
 3407 0056 00       		.byte	0
 3408 0057 08       		.uleb128 0x8
 3409 0058 16       		.uleb128 0x16
 3410 0059 00       		.byte	0
 3411 005a 03       		.uleb128 0x3
 3412 005b 0E       		.uleb128 0xe
 3413 005c 3A       		.uleb128 0x3a
 3414 005d 0B       		.uleb128 0xb
 3415 005e 3B       		.uleb128 0x3b
 3416 005f 05       		.uleb128 0x5
 3417 0060 49       		.uleb128 0x49
 3418 0061 13       		.uleb128 0x13
 3419 0062 00       		.byte	0
 3420 0063 00       		.byte	0
ARM GAS  /tmp/ccuadTPt.s 			page 61


 3421 0064 09       		.uleb128 0x9
 3422 0065 3B       		.uleb128 0x3b
 3423 0066 00       		.byte	0
 3424 0067 03       		.uleb128 0x3
 3425 0068 0E       		.uleb128 0xe
 3426 0069 00       		.byte	0
 3427 006a 00       		.byte	0
 3428 006b 0A       		.uleb128 0xa
 3429 006c 35       		.uleb128 0x35
 3430 006d 00       		.byte	0
 3431 006e 49       		.uleb128 0x49
 3432 006f 13       		.uleb128 0x13
 3433 0070 00       		.byte	0
 3434 0071 00       		.byte	0
 3435 0072 0B       		.uleb128 0xb
 3436 0073 0F       		.uleb128 0xf
 3437 0074 00       		.byte	0
 3438 0075 0B       		.uleb128 0xb
 3439 0076 0B       		.uleb128 0xb
 3440 0077 00       		.byte	0
 3441 0078 00       		.byte	0
 3442 0079 0C       		.uleb128 0xc
 3443 007a 01       		.uleb128 0x1
 3444 007b 01       		.byte	0x1
 3445 007c 49       		.uleb128 0x49
 3446 007d 13       		.uleb128 0x13
 3447 007e 01       		.uleb128 0x1
 3448 007f 13       		.uleb128 0x13
 3449 0080 00       		.byte	0
 3450 0081 00       		.byte	0
 3451 0082 0D       		.uleb128 0xd
 3452 0083 21       		.uleb128 0x21
 3453 0084 00       		.byte	0
 3454 0085 49       		.uleb128 0x49
 3455 0086 13       		.uleb128 0x13
 3456 0087 2F       		.uleb128 0x2f
 3457 0088 0B       		.uleb128 0xb
 3458 0089 00       		.byte	0
 3459 008a 00       		.byte	0
 3460 008b 0E       		.uleb128 0xe
 3461 008c 34       		.uleb128 0x34
 3462 008d 00       		.byte	0
 3463 008e 03       		.uleb128 0x3
 3464 008f 0E       		.uleb128 0xe
 3465 0090 3A       		.uleb128 0x3a
 3466 0091 0B       		.uleb128 0xb
 3467 0092 3B       		.uleb128 0x3b
 3468 0093 05       		.uleb128 0x5
 3469 0094 49       		.uleb128 0x49
 3470 0095 13       		.uleb128 0x13
 3471 0096 3F       		.uleb128 0x3f
 3472 0097 19       		.uleb128 0x19
 3473 0098 3C       		.uleb128 0x3c
 3474 0099 19       		.uleb128 0x19
 3475 009a 00       		.byte	0
 3476 009b 00       		.byte	0
 3477 009c 0F       		.uleb128 0xf
ARM GAS  /tmp/ccuadTPt.s 			page 62


 3478 009d 34       		.uleb128 0x34
 3479 009e 00       		.byte	0
 3480 009f 03       		.uleb128 0x3
 3481 00a0 0E       		.uleb128 0xe
 3482 00a1 3A       		.uleb128 0x3a
 3483 00a2 0B       		.uleb128 0xb
 3484 00a3 3B       		.uleb128 0x3b
 3485 00a4 0B       		.uleb128 0xb
 3486 00a5 49       		.uleb128 0x49
 3487 00a6 13       		.uleb128 0x13
 3488 00a7 3F       		.uleb128 0x3f
 3489 00a8 19       		.uleb128 0x19
 3490 00a9 3C       		.uleb128 0x3c
 3491 00aa 19       		.uleb128 0x19
 3492 00ab 00       		.byte	0
 3493 00ac 00       		.byte	0
 3494 00ad 10       		.uleb128 0x10
 3495 00ae 13       		.uleb128 0x13
 3496 00af 01       		.byte	0x1
 3497 00b0 0B       		.uleb128 0xb
 3498 00b1 05       		.uleb128 0x5
 3499 00b2 3A       		.uleb128 0x3a
 3500 00b3 0B       		.uleb128 0xb
 3501 00b4 3B       		.uleb128 0x3b
 3502 00b5 0B       		.uleb128 0xb
 3503 00b6 6E       		.uleb128 0x6e
 3504 00b7 0E       		.uleb128 0xe
 3505 00b8 01       		.uleb128 0x1
 3506 00b9 13       		.uleb128 0x13
 3507 00ba 00       		.byte	0
 3508 00bb 00       		.byte	0
 3509 00bc 11       		.uleb128 0x11
 3510 00bd 0D       		.uleb128 0xd
 3511 00be 00       		.byte	0
 3512 00bf 03       		.uleb128 0x3
 3513 00c0 0E       		.uleb128 0xe
 3514 00c1 3A       		.uleb128 0x3a
 3515 00c2 0B       		.uleb128 0xb
 3516 00c3 3B       		.uleb128 0x3b
 3517 00c4 0B       		.uleb128 0xb
 3518 00c5 49       		.uleb128 0x49
 3519 00c6 13       		.uleb128 0x13
 3520 00c7 38       		.uleb128 0x38
 3521 00c8 0B       		.uleb128 0xb
 3522 00c9 00       		.byte	0
 3523 00ca 00       		.byte	0
 3524 00cb 12       		.uleb128 0x12
 3525 00cc 0D       		.uleb128 0xd
 3526 00cd 00       		.byte	0
 3527 00ce 03       		.uleb128 0x3
 3528 00cf 0E       		.uleb128 0xe
 3529 00d0 3A       		.uleb128 0x3a
 3530 00d1 0B       		.uleb128 0xb
 3531 00d2 3B       		.uleb128 0x3b
 3532 00d3 0B       		.uleb128 0xb
 3533 00d4 49       		.uleb128 0x49
 3534 00d5 13       		.uleb128 0x13
ARM GAS  /tmp/ccuadTPt.s 			page 63


 3535 00d6 38       		.uleb128 0x38
 3536 00d7 05       		.uleb128 0x5
 3537 00d8 00       		.byte	0
 3538 00d9 00       		.byte	0
 3539 00da 13       		.uleb128 0x13
 3540 00db 16       		.uleb128 0x16
 3541 00dc 00       		.byte	0
 3542 00dd 03       		.uleb128 0x3
 3543 00de 08       		.uleb128 0x8
 3544 00df 3A       		.uleb128 0x3a
 3545 00e0 0B       		.uleb128 0xb
 3546 00e1 3B       		.uleb128 0x3b
 3547 00e2 0B       		.uleb128 0xb
 3548 00e3 49       		.uleb128 0x49
 3549 00e4 13       		.uleb128 0x13
 3550 00e5 00       		.byte	0
 3551 00e6 00       		.byte	0
 3552 00e7 14       		.uleb128 0x14
 3553 00e8 13       		.uleb128 0x13
 3554 00e9 01       		.byte	0x1
 3555 00ea 0B       		.uleb128 0xb
 3556 00eb 0B       		.uleb128 0xb
 3557 00ec 3A       		.uleb128 0x3a
 3558 00ed 0B       		.uleb128 0xb
 3559 00ee 3B       		.uleb128 0x3b
 3560 00ef 0B       		.uleb128 0xb
 3561 00f0 6E       		.uleb128 0x6e
 3562 00f1 0E       		.uleb128 0xe
 3563 00f2 01       		.uleb128 0x1
 3564 00f3 13       		.uleb128 0x13
 3565 00f4 00       		.byte	0
 3566 00f5 00       		.byte	0
 3567 00f6 15       		.uleb128 0x15
 3568 00f7 17       		.uleb128 0x17
 3569 00f8 01       		.byte	0x1
 3570 00f9 0B       		.uleb128 0xb
 3571 00fa 0B       		.uleb128 0xb
 3572 00fb 3A       		.uleb128 0x3a
 3573 00fc 0B       		.uleb128 0xb
 3574 00fd 3B       		.uleb128 0x3b
 3575 00fe 0B       		.uleb128 0xb
 3576 00ff 01       		.uleb128 0x1
 3577 0100 13       		.uleb128 0x13
 3578 0101 00       		.byte	0
 3579 0102 00       		.byte	0
 3580 0103 16       		.uleb128 0x16
 3581 0104 0D       		.uleb128 0xd
 3582 0105 00       		.byte	0
 3583 0106 03       		.uleb128 0x3
 3584 0107 0E       		.uleb128 0xe
 3585 0108 3A       		.uleb128 0x3a
 3586 0109 0B       		.uleb128 0xb
 3587 010a 3B       		.uleb128 0x3b
 3588 010b 0B       		.uleb128 0xb
 3589 010c 49       		.uleb128 0x49
 3590 010d 13       		.uleb128 0x13
 3591 010e 00       		.byte	0
ARM GAS  /tmp/ccuadTPt.s 			page 64


 3592 010f 00       		.byte	0
 3593 0110 17       		.uleb128 0x17
 3594 0111 13       		.uleb128 0x13
 3595 0112 01       		.byte	0x1
 3596 0113 03       		.uleb128 0x3
 3597 0114 0E       		.uleb128 0xe
 3598 0115 0B       		.uleb128 0xb
 3599 0116 0B       		.uleb128 0xb
 3600 0117 3A       		.uleb128 0x3a
 3601 0118 0B       		.uleb128 0xb
 3602 0119 3B       		.uleb128 0x3b
 3603 011a 0B       		.uleb128 0xb
 3604 011b 01       		.uleb128 0x1
 3605 011c 13       		.uleb128 0x13
 3606 011d 00       		.byte	0
 3607 011e 00       		.byte	0
 3608 011f 18       		.uleb128 0x18
 3609 0120 0D       		.uleb128 0xd
 3610 0121 00       		.byte	0
 3611 0122 03       		.uleb128 0x3
 3612 0123 08       		.uleb128 0x8
 3613 0124 3A       		.uleb128 0x3a
 3614 0125 0B       		.uleb128 0xb
 3615 0126 3B       		.uleb128 0x3b
 3616 0127 0B       		.uleb128 0xb
 3617 0128 49       		.uleb128 0x49
 3618 0129 13       		.uleb128 0x13
 3619 012a 38       		.uleb128 0x38
 3620 012b 0B       		.uleb128 0xb
 3621 012c 00       		.byte	0
 3622 012d 00       		.byte	0
 3623 012e 19       		.uleb128 0x19
 3624 012f 0F       		.uleb128 0xf
 3625 0130 00       		.byte	0
 3626 0131 0B       		.uleb128 0xb
 3627 0132 0B       		.uleb128 0xb
 3628 0133 49       		.uleb128 0x49
 3629 0134 13       		.uleb128 0x13
 3630 0135 00       		.byte	0
 3631 0136 00       		.byte	0
 3632 0137 1A       		.uleb128 0x1a
 3633 0138 13       		.uleb128 0x13
 3634 0139 01       		.byte	0x1
 3635 013a 03       		.uleb128 0x3
 3636 013b 0E       		.uleb128 0xe
 3637 013c 0B       		.uleb128 0xb
 3638 013d 05       		.uleb128 0x5
 3639 013e 3A       		.uleb128 0x3a
 3640 013f 0B       		.uleb128 0xb
 3641 0140 3B       		.uleb128 0x3b
 3642 0141 0B       		.uleb128 0xb
 3643 0142 01       		.uleb128 0x1
 3644 0143 13       		.uleb128 0x13
 3645 0144 00       		.byte	0
 3646 0145 00       		.byte	0
 3647 0146 1B       		.uleb128 0x1b
 3648 0147 15       		.uleb128 0x15
ARM GAS  /tmp/ccuadTPt.s 			page 65


 3649 0148 00       		.byte	0
 3650 0149 00       		.byte	0
 3651 014a 00       		.byte	0
 3652 014b 1C       		.uleb128 0x1c
 3653 014c 15       		.uleb128 0x15
 3654 014d 01       		.byte	0x1
 3655 014e 49       		.uleb128 0x49
 3656 014f 13       		.uleb128 0x13
 3657 0150 01       		.uleb128 0x1
 3658 0151 13       		.uleb128 0x13
 3659 0152 00       		.byte	0
 3660 0153 00       		.byte	0
 3661 0154 1D       		.uleb128 0x1d
 3662 0155 05       		.uleb128 0x5
 3663 0156 00       		.byte	0
 3664 0157 49       		.uleb128 0x49
 3665 0158 13       		.uleb128 0x13
 3666 0159 00       		.byte	0
 3667 015a 00       		.byte	0
 3668 015b 1E       		.uleb128 0x1e
 3669 015c 13       		.uleb128 0x13
 3670 015d 01       		.byte	0x1
 3671 015e 03       		.uleb128 0x3
 3672 015f 0E       		.uleb128 0xe
 3673 0160 0B       		.uleb128 0xb
 3674 0161 05       		.uleb128 0x5
 3675 0162 3A       		.uleb128 0x3a
 3676 0163 0B       		.uleb128 0xb
 3677 0164 3B       		.uleb128 0x3b
 3678 0165 05       		.uleb128 0x5
 3679 0166 01       		.uleb128 0x1
 3680 0167 13       		.uleb128 0x13
 3681 0168 00       		.byte	0
 3682 0169 00       		.byte	0
 3683 016a 1F       		.uleb128 0x1f
 3684 016b 17       		.uleb128 0x17
 3685 016c 01       		.byte	0x1
 3686 016d 0B       		.uleb128 0xb
 3687 016e 0B       		.uleb128 0xb
 3688 016f 3A       		.uleb128 0x3a
 3689 0170 0B       		.uleb128 0xb
 3690 0171 3B       		.uleb128 0x3b
 3691 0172 05       		.uleb128 0x5
 3692 0173 01       		.uleb128 0x1
 3693 0174 13       		.uleb128 0x13
 3694 0175 00       		.byte	0
 3695 0176 00       		.byte	0
 3696 0177 20       		.uleb128 0x20
 3697 0178 13       		.uleb128 0x13
 3698 0179 01       		.byte	0x1
 3699 017a 0B       		.uleb128 0xb
 3700 017b 0B       		.uleb128 0xb
 3701 017c 3A       		.uleb128 0x3a
 3702 017d 0B       		.uleb128 0xb
 3703 017e 3B       		.uleb128 0x3b
 3704 017f 05       		.uleb128 0x5
 3705 0180 01       		.uleb128 0x1
ARM GAS  /tmp/ccuadTPt.s 			page 66


 3706 0181 13       		.uleb128 0x13
 3707 0182 00       		.byte	0
 3708 0183 00       		.byte	0
 3709 0184 21       		.uleb128 0x21
 3710 0185 0D       		.uleb128 0xd
 3711 0186 00       		.byte	0
 3712 0187 03       		.uleb128 0x3
 3713 0188 0E       		.uleb128 0xe
 3714 0189 3A       		.uleb128 0x3a
 3715 018a 0B       		.uleb128 0xb
 3716 018b 3B       		.uleb128 0x3b
 3717 018c 05       		.uleb128 0x5
 3718 018d 49       		.uleb128 0x49
 3719 018e 13       		.uleb128 0x13
 3720 018f 00       		.byte	0
 3721 0190 00       		.byte	0
 3722 0191 22       		.uleb128 0x22
 3723 0192 0D       		.uleb128 0xd
 3724 0193 00       		.byte	0
 3725 0194 03       		.uleb128 0x3
 3726 0195 0E       		.uleb128 0xe
 3727 0196 3A       		.uleb128 0x3a
 3728 0197 0B       		.uleb128 0xb
 3729 0198 3B       		.uleb128 0x3b
 3730 0199 05       		.uleb128 0x5
 3731 019a 49       		.uleb128 0x49
 3732 019b 13       		.uleb128 0x13
 3733 019c 38       		.uleb128 0x38
 3734 019d 05       		.uleb128 0x5
 3735 019e 00       		.byte	0
 3736 019f 00       		.byte	0
 3737 01a0 23       		.uleb128 0x23
 3738 01a1 13       		.uleb128 0x13
 3739 01a2 01       		.byte	0x1
 3740 01a3 03       		.uleb128 0x3
 3741 01a4 0E       		.uleb128 0xe
 3742 01a5 0B       		.uleb128 0xb
 3743 01a6 0B       		.uleb128 0xb
 3744 01a7 3A       		.uleb128 0x3a
 3745 01a8 0B       		.uleb128 0xb
 3746 01a9 3B       		.uleb128 0x3b
 3747 01aa 05       		.uleb128 0x5
 3748 01ab 01       		.uleb128 0x1
 3749 01ac 13       		.uleb128 0x13
 3750 01ad 00       		.byte	0
 3751 01ae 00       		.byte	0
 3752 01af 24       		.uleb128 0x24
 3753 01b0 15       		.uleb128 0x15
 3754 01b1 01       		.byte	0x1
 3755 01b2 01       		.uleb128 0x1
 3756 01b3 13       		.uleb128 0x13
 3757 01b4 00       		.byte	0
 3758 01b5 00       		.byte	0
 3759 01b6 25       		.uleb128 0x25
 3760 01b7 39       		.uleb128 0x39
 3761 01b8 01       		.byte	0x1
 3762 01b9 03       		.uleb128 0x3
ARM GAS  /tmp/ccuadTPt.s 			page 67


 3763 01ba 08       		.uleb128 0x8
 3764 01bb 3A       		.uleb128 0x3a
 3765 01bc 0B       		.uleb128 0xb
 3766 01bd 3B       		.uleb128 0x3b
 3767 01be 0B       		.uleb128 0xb
 3768 01bf 01       		.uleb128 0x1
 3769 01c0 13       		.uleb128 0x13
 3770 01c1 00       		.byte	0
 3771 01c2 00       		.byte	0
 3772 01c3 26       		.uleb128 0x26
 3773 01c4 39       		.uleb128 0x39
 3774 01c5 00       		.byte	0
 3775 01c6 03       		.uleb128 0x3
 3776 01c7 0E       		.uleb128 0xe
 3777 01c8 3A       		.uleb128 0x3a
 3778 01c9 0B       		.uleb128 0xb
 3779 01ca 3B       		.uleb128 0x3b
 3780 01cb 0B       		.uleb128 0xb
 3781 01cc 00       		.byte	0
 3782 01cd 00       		.byte	0
 3783 01ce 27       		.uleb128 0x27
 3784 01cf 3A       		.uleb128 0x3a
 3785 01d0 00       		.byte	0
 3786 01d1 3A       		.uleb128 0x3a
 3787 01d2 0B       		.uleb128 0xb
 3788 01d3 3B       		.uleb128 0x3b
 3789 01d4 0B       		.uleb128 0xb
 3790 01d5 18       		.uleb128 0x18
 3791 01d6 13       		.uleb128 0x13
 3792 01d7 00       		.byte	0
 3793 01d8 00       		.byte	0
 3794 01d9 28       		.uleb128 0x28
 3795 01da 08       		.uleb128 0x8
 3796 01db 00       		.byte	0
 3797 01dc 3A       		.uleb128 0x3a
 3798 01dd 0B       		.uleb128 0xb
 3799 01de 3B       		.uleb128 0x3b
 3800 01df 0B       		.uleb128 0xb
 3801 01e0 18       		.uleb128 0x18
 3802 01e1 13       		.uleb128 0x13
 3803 01e2 00       		.byte	0
 3804 01e3 00       		.byte	0
 3805 01e4 29       		.uleb128 0x29
 3806 01e5 08       		.uleb128 0x8
 3807 01e6 00       		.byte	0
 3808 01e7 3A       		.uleb128 0x3a
 3809 01e8 0B       		.uleb128 0xb
 3810 01e9 3B       		.uleb128 0x3b
 3811 01ea 05       		.uleb128 0x5
 3812 01eb 18       		.uleb128 0x18
 3813 01ec 13       		.uleb128 0x13
 3814 01ed 00       		.byte	0
 3815 01ee 00       		.byte	0
 3816 01ef 2A       		.uleb128 0x2a
 3817 01f0 2E       		.uleb128 0x2e
 3818 01f1 01       		.byte	0x1
 3819 01f2 3F       		.uleb128 0x3f
ARM GAS  /tmp/ccuadTPt.s 			page 68


 3820 01f3 19       		.uleb128 0x19
 3821 01f4 03       		.uleb128 0x3
 3822 01f5 08       		.uleb128 0x8
 3823 01f6 3A       		.uleb128 0x3a
 3824 01f7 0B       		.uleb128 0xb
 3825 01f8 3B       		.uleb128 0x3b
 3826 01f9 0B       		.uleb128 0xb
 3827 01fa 6E       		.uleb128 0x6e
 3828 01fb 0E       		.uleb128 0xe
 3829 01fc 49       		.uleb128 0x49
 3830 01fd 13       		.uleb128 0x13
 3831 01fe 3C       		.uleb128 0x3c
 3832 01ff 19       		.uleb128 0x19
 3833 0200 01       		.uleb128 0x1
 3834 0201 13       		.uleb128 0x13
 3835 0202 00       		.byte	0
 3836 0203 00       		.byte	0
 3837 0204 2B       		.uleb128 0x2b
 3838 0205 2E       		.uleb128 0x2e
 3839 0206 01       		.byte	0x1
 3840 0207 3F       		.uleb128 0x3f
 3841 0208 19       		.uleb128 0x19
 3842 0209 03       		.uleb128 0x3
 3843 020a 0E       		.uleb128 0xe
 3844 020b 3A       		.uleb128 0x3a
 3845 020c 0B       		.uleb128 0xb
 3846 020d 3B       		.uleb128 0x3b
 3847 020e 05       		.uleb128 0x5
 3848 020f 6E       		.uleb128 0x6e
 3849 0210 0E       		.uleb128 0xe
 3850 0211 49       		.uleb128 0x49
 3851 0212 13       		.uleb128 0x13
 3852 0213 3C       		.uleb128 0x3c
 3853 0214 19       		.uleb128 0x19
 3854 0215 01       		.uleb128 0x1
 3855 0216 13       		.uleb128 0x13
 3856 0217 00       		.byte	0
 3857 0218 00       		.byte	0
 3858 0219 2C       		.uleb128 0x2c
 3859 021a 39       		.uleb128 0x39
 3860 021b 01       		.byte	0x1
 3861 021c 03       		.uleb128 0x3
 3862 021d 0E       		.uleb128 0xe
 3863 021e 3A       		.uleb128 0x3a
 3864 021f 0B       		.uleb128 0xb
 3865 0220 3B       		.uleb128 0x3b
 3866 0221 0B       		.uleb128 0xb
 3867 0222 01       		.uleb128 0x1
 3868 0223 13       		.uleb128 0x13
 3869 0224 00       		.byte	0
 3870 0225 00       		.byte	0
 3871 0226 2D       		.uleb128 0x2d
 3872 0227 2E       		.uleb128 0x2e
 3873 0228 01       		.byte	0x1
 3874 0229 3F       		.uleb128 0x3f
 3875 022a 19       		.uleb128 0x19
 3876 022b 03       		.uleb128 0x3
ARM GAS  /tmp/ccuadTPt.s 			page 69


 3877 022c 08       		.uleb128 0x8
 3878 022d 3A       		.uleb128 0x3a
 3879 022e 0B       		.uleb128 0xb
 3880 022f 3B       		.uleb128 0x3b
 3881 0230 0B       		.uleb128 0xb
 3882 0231 6E       		.uleb128 0x6e
 3883 0232 0E       		.uleb128 0xe
 3884 0233 49       		.uleb128 0x49
 3885 0234 13       		.uleb128 0x13
 3886 0235 3C       		.uleb128 0x3c
 3887 0236 19       		.uleb128 0x19
 3888 0237 00       		.byte	0
 3889 0238 00       		.byte	0
 3890 0239 2E       		.uleb128 0x2e
 3891 023a 26       		.uleb128 0x26
 3892 023b 00       		.byte	0
 3893 023c 00       		.byte	0
 3894 023d 00       		.byte	0
 3895 023e 2F       		.uleb128 0x2f
 3896 023f 2E       		.uleb128 0x2e
 3897 0240 01       		.byte	0x1
 3898 0241 3F       		.uleb128 0x3f
 3899 0242 19       		.uleb128 0x19
 3900 0243 03       		.uleb128 0x3
 3901 0244 0E       		.uleb128 0xe
 3902 0245 3A       		.uleb128 0x3a
 3903 0246 0B       		.uleb128 0xb
 3904 0247 3B       		.uleb128 0x3b
 3905 0248 0B       		.uleb128 0xb
 3906 0249 49       		.uleb128 0x49
 3907 024a 13       		.uleb128 0x13
 3908 024b 3C       		.uleb128 0x3c
 3909 024c 19       		.uleb128 0x19
 3910 024d 01       		.uleb128 0x1
 3911 024e 13       		.uleb128 0x13
 3912 024f 00       		.byte	0
 3913 0250 00       		.byte	0
 3914 0251 30       		.uleb128 0x30
 3915 0252 2E       		.uleb128 0x2e
 3916 0253 01       		.byte	0x1
 3917 0254 3F       		.uleb128 0x3f
 3918 0255 19       		.uleb128 0x19
 3919 0256 03       		.uleb128 0x3
 3920 0257 08       		.uleb128 0x8
 3921 0258 3A       		.uleb128 0x3a
 3922 0259 0B       		.uleb128 0xb
 3923 025a 3B       		.uleb128 0x3b
 3924 025b 0B       		.uleb128 0xb
 3925 025c 49       		.uleb128 0x49
 3926 025d 13       		.uleb128 0x13
 3927 025e 3C       		.uleb128 0x3c
 3928 025f 19       		.uleb128 0x19
 3929 0260 01       		.uleb128 0x1
 3930 0261 13       		.uleb128 0x13
 3931 0262 00       		.byte	0
 3932 0263 00       		.byte	0
 3933 0264 31       		.uleb128 0x31
ARM GAS  /tmp/ccuadTPt.s 			page 70


 3934 0265 2E       		.uleb128 0x2e
 3935 0266 01       		.byte	0x1
 3936 0267 3F       		.uleb128 0x3f
 3937 0268 19       		.uleb128 0x19
 3938 0269 03       		.uleb128 0x3
 3939 026a 0E       		.uleb128 0xe
 3940 026b 3A       		.uleb128 0x3a
 3941 026c 0B       		.uleb128 0xb
 3942 026d 3B       		.uleb128 0x3b
 3943 026e 0B       		.uleb128 0xb
 3944 026f 3C       		.uleb128 0x3c
 3945 0270 19       		.uleb128 0x19
 3946 0271 01       		.uleb128 0x1
 3947 0272 13       		.uleb128 0x13
 3948 0273 00       		.byte	0
 3949 0274 00       		.byte	0
 3950 0275 32       		.uleb128 0x32
 3951 0276 2E       		.uleb128 0x2e
 3952 0277 00       		.byte	0
 3953 0278 3F       		.uleb128 0x3f
 3954 0279 19       		.uleb128 0x19
 3955 027a 03       		.uleb128 0x3
 3956 027b 0E       		.uleb128 0xe
 3957 027c 3A       		.uleb128 0x3a
 3958 027d 0B       		.uleb128 0xb
 3959 027e 3B       		.uleb128 0x3b
 3960 027f 0B       		.uleb128 0xb
 3961 0280 49       		.uleb128 0x49
 3962 0281 13       		.uleb128 0x13
 3963 0282 3C       		.uleb128 0x3c
 3964 0283 19       		.uleb128 0x19
 3965 0284 00       		.byte	0
 3966 0285 00       		.byte	0
 3967 0286 33       		.uleb128 0x33
 3968 0287 2E       		.uleb128 0x2e
 3969 0288 01       		.byte	0x1
 3970 0289 3F       		.uleb128 0x3f
 3971 028a 19       		.uleb128 0x19
 3972 028b 03       		.uleb128 0x3
 3973 028c 0E       		.uleb128 0xe
 3974 028d 3A       		.uleb128 0x3a
 3975 028e 0B       		.uleb128 0xb
 3976 028f 3B       		.uleb128 0x3b
 3977 0290 05       		.uleb128 0x5
 3978 0291 49       		.uleb128 0x49
 3979 0292 13       		.uleb128 0x13
 3980 0293 3C       		.uleb128 0x3c
 3981 0294 19       		.uleb128 0x19
 3982 0295 01       		.uleb128 0x1
 3983 0296 13       		.uleb128 0x13
 3984 0297 00       		.byte	0
 3985 0298 00       		.byte	0
 3986 0299 34       		.uleb128 0x34
 3987 029a 34       		.uleb128 0x34
 3988 029b 00       		.byte	0
 3989 029c 03       		.uleb128 0x3
 3990 029d 0E       		.uleb128 0xe
ARM GAS  /tmp/ccuadTPt.s 			page 71


 3991 029e 3A       		.uleb128 0x3a
 3992 029f 0B       		.uleb128 0xb
 3993 02a0 3B       		.uleb128 0x3b
 3994 02a1 0B       		.uleb128 0xb
 3995 02a2 49       		.uleb128 0x49
 3996 02a3 13       		.uleb128 0x13
 3997 02a4 02       		.uleb128 0x2
 3998 02a5 18       		.uleb128 0x18
 3999 02a6 00       		.byte	0
 4000 02a7 00       		.byte	0
 4001 02a8 35       		.uleb128 0x35
 4002 02a9 04       		.uleb128 0x4
 4003 02aa 01       		.byte	0x1
 4004 02ab 03       		.uleb128 0x3
 4005 02ac 0E       		.uleb128 0xe
 4006 02ad 0B       		.uleb128 0xb
 4007 02ae 0B       		.uleb128 0xb
 4008 02af 49       		.uleb128 0x49
 4009 02b0 13       		.uleb128 0x13
 4010 02b1 3A       		.uleb128 0x3a
 4011 02b2 0B       		.uleb128 0xb
 4012 02b3 3B       		.uleb128 0x3b
 4013 02b4 05       		.uleb128 0x5
 4014 02b5 01       		.uleb128 0x1
 4015 02b6 13       		.uleb128 0x13
 4016 02b7 00       		.byte	0
 4017 02b8 00       		.byte	0
 4018 02b9 36       		.uleb128 0x36
 4019 02ba 28       		.uleb128 0x28
 4020 02bb 00       		.byte	0
 4021 02bc 03       		.uleb128 0x3
 4022 02bd 0E       		.uleb128 0xe
 4023 02be 1C       		.uleb128 0x1c
 4024 02bf 0D       		.uleb128 0xd
 4025 02c0 00       		.byte	0
 4026 02c1 00       		.byte	0
 4027 02c2 37       		.uleb128 0x37
 4028 02c3 28       		.uleb128 0x28
 4029 02c4 00       		.byte	0
 4030 02c5 03       		.uleb128 0x3
 4031 02c6 0E       		.uleb128 0xe
 4032 02c7 1C       		.uleb128 0x1c
 4033 02c8 0B       		.uleb128 0xb
 4034 02c9 00       		.byte	0
 4035 02ca 00       		.byte	0
 4036 02cb 38       		.uleb128 0x38
 4037 02cc 04       		.uleb128 0x4
 4038 02cd 01       		.byte	0x1
 4039 02ce 03       		.uleb128 0x3
 4040 02cf 0E       		.uleb128 0xe
 4041 02d0 0B       		.uleb128 0xb
 4042 02d1 0B       		.uleb128 0xb
 4043 02d2 49       		.uleb128 0x49
 4044 02d3 13       		.uleb128 0x13
 4045 02d4 3A       		.uleb128 0x3a
 4046 02d5 0B       		.uleb128 0xb
 4047 02d6 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccuadTPt.s 			page 72


 4048 02d7 0B       		.uleb128 0xb
 4049 02d8 01       		.uleb128 0x1
 4050 02d9 13       		.uleb128 0x13
 4051 02da 00       		.byte	0
 4052 02db 00       		.byte	0
 4053 02dc 39       		.uleb128 0x39
 4054 02dd 28       		.uleb128 0x28
 4055 02de 00       		.byte	0
 4056 02df 03       		.uleb128 0x3
 4057 02e0 0E       		.uleb128 0xe
 4058 02e1 1C       		.uleb128 0x1c
 4059 02e2 06       		.uleb128 0x6
 4060 02e3 00       		.byte	0
 4061 02e4 00       		.byte	0
 4062 02e5 3A       		.uleb128 0x3a
 4063 02e6 34       		.uleb128 0x34
 4064 02e7 00       		.byte	0
 4065 02e8 03       		.uleb128 0x3
 4066 02e9 0E       		.uleb128 0xe
 4067 02ea 3A       		.uleb128 0x3a
 4068 02eb 0B       		.uleb128 0xb
 4069 02ec 3B       		.uleb128 0x3b
 4070 02ed 0B       		.uleb128 0xb
 4071 02ee 49       		.uleb128 0x49
 4072 02ef 13       		.uleb128 0x13
 4073 02f0 1C       		.uleb128 0x1c
 4074 02f1 0D       		.uleb128 0xd
 4075 02f2 00       		.byte	0
 4076 02f3 00       		.byte	0
 4077 02f4 3B       		.uleb128 0x3b
 4078 02f5 28       		.uleb128 0x28
 4079 02f6 00       		.byte	0
 4080 02f7 03       		.uleb128 0x3
 4081 02f8 08       		.uleb128 0x8
 4082 02f9 1C       		.uleb128 0x1c
 4083 02fa 0B       		.uleb128 0xb
 4084 02fb 00       		.byte	0
 4085 02fc 00       		.byte	0
 4086 02fd 3C       		.uleb128 0x3c
 4087 02fe 21       		.uleb128 0x21
 4088 02ff 00       		.byte	0
 4089 0300 00       		.byte	0
 4090 0301 00       		.byte	0
 4091 0302 3D       		.uleb128 0x3d
 4092 0303 02       		.uleb128 0x2
 4093 0304 01       		.byte	0x1
 4094 0305 03       		.uleb128 0x3
 4095 0306 0E       		.uleb128 0xe
 4096 0307 3C       		.uleb128 0x3c
 4097 0308 19       		.uleb128 0x19
 4098 0309 01       		.uleb128 0x1
 4099 030a 13       		.uleb128 0x13
 4100 030b 00       		.byte	0
 4101 030c 00       		.byte	0
 4102 030d 3E       		.uleb128 0x3e
 4103 030e 2E       		.uleb128 0x2e
 4104 030f 01       		.byte	0x1
ARM GAS  /tmp/ccuadTPt.s 			page 73


 4105 0310 3F       		.uleb128 0x3f
 4106 0311 19       		.uleb128 0x19
 4107 0312 03       		.uleb128 0x3
 4108 0313 0E       		.uleb128 0xe
 4109 0314 3A       		.uleb128 0x3a
 4110 0315 0B       		.uleb128 0xb
 4111 0316 3B       		.uleb128 0x3b
 4112 0317 0B       		.uleb128 0xb
 4113 0318 6E       		.uleb128 0x6e
 4114 0319 0E       		.uleb128 0xe
 4115 031a 49       		.uleb128 0x49
 4116 031b 13       		.uleb128 0x13
 4117 031c 32       		.uleb128 0x32
 4118 031d 0B       		.uleb128 0xb
 4119 031e 3C       		.uleb128 0x3c
 4120 031f 19       		.uleb128 0x19
 4121 0320 64       		.uleb128 0x64
 4122 0321 13       		.uleb128 0x13
 4123 0322 00       		.byte	0
 4124 0323 00       		.byte	0
 4125 0324 3F       		.uleb128 0x3f
 4126 0325 05       		.uleb128 0x5
 4127 0326 00       		.byte	0
 4128 0327 49       		.uleb128 0x49
 4129 0328 13       		.uleb128 0x13
 4130 0329 34       		.uleb128 0x34
 4131 032a 19       		.uleb128 0x19
 4132 032b 00       		.byte	0
 4133 032c 00       		.byte	0
 4134 032d 40       		.uleb128 0x40
 4135 032e 34       		.uleb128 0x34
 4136 032f 00       		.byte	0
 4137 0330 03       		.uleb128 0x3
 4138 0331 0E       		.uleb128 0xe
 4139 0332 3A       		.uleb128 0x3a
 4140 0333 0B       		.uleb128 0xb
 4141 0334 3B       		.uleb128 0x3b
 4142 0335 0B       		.uleb128 0xb
 4143 0336 49       		.uleb128 0x49
 4144 0337 13       		.uleb128 0x13
 4145 0338 1C       		.uleb128 0x1c
 4146 0339 05       		.uleb128 0x5
 4147 033a 00       		.byte	0
 4148 033b 00       		.byte	0
 4149 033c 41       		.uleb128 0x41
 4150 033d 34       		.uleb128 0x34
 4151 033e 00       		.byte	0
 4152 033f 03       		.uleb128 0x3
 4153 0340 0E       		.uleb128 0xe
 4154 0341 3A       		.uleb128 0x3a
 4155 0342 0B       		.uleb128 0xb
 4156 0343 3B       		.uleb128 0x3b
 4157 0344 0B       		.uleb128 0xb
 4158 0345 49       		.uleb128 0x49
 4159 0346 13       		.uleb128 0x13
 4160 0347 1C       		.uleb128 0x1c
 4161 0348 0B       		.uleb128 0xb
ARM GAS  /tmp/ccuadTPt.s 			page 74


 4162 0349 00       		.byte	0
 4163 034a 00       		.byte	0
 4164 034b 42       		.uleb128 0x42
 4165 034c 34       		.uleb128 0x34
 4166 034d 00       		.byte	0
 4167 034e 03       		.uleb128 0x3
 4168 034f 0E       		.uleb128 0xe
 4169 0350 3A       		.uleb128 0x3a
 4170 0351 0B       		.uleb128 0xb
 4171 0352 3B       		.uleb128 0x3b
 4172 0353 0B       		.uleb128 0xb
 4173 0354 49       		.uleb128 0x49
 4174 0355 13       		.uleb128 0x13
 4175 0356 1C       		.uleb128 0x1c
 4176 0357 06       		.uleb128 0x6
 4177 0358 00       		.byte	0
 4178 0359 00       		.byte	0
 4179 035a 43       		.uleb128 0x43
 4180 035b 02       		.uleb128 0x2
 4181 035c 00       		.byte	0
 4182 035d 03       		.uleb128 0x3
 4183 035e 0E       		.uleb128 0xe
 4184 035f 3C       		.uleb128 0x3c
 4185 0360 19       		.uleb128 0x19
 4186 0361 00       		.byte	0
 4187 0362 00       		.byte	0
 4188 0363 44       		.uleb128 0x44
 4189 0364 2E       		.uleb128 0x2e
 4190 0365 01       		.byte	0x1
 4191 0366 3F       		.uleb128 0x3f
 4192 0367 19       		.uleb128 0x19
 4193 0368 03       		.uleb128 0x3
 4194 0369 0E       		.uleb128 0xe
 4195 036a 3A       		.uleb128 0x3a
 4196 036b 0B       		.uleb128 0xb
 4197 036c 3B       		.uleb128 0x3b
 4198 036d 0B       		.uleb128 0xb
 4199 036e 49       		.uleb128 0x49
 4200 036f 13       		.uleb128 0x13
 4201 0370 3C       		.uleb128 0x3c
 4202 0371 19       		.uleb128 0x19
 4203 0372 00       		.byte	0
 4204 0373 00       		.byte	0
 4205 0374 00       		.byte	0
 4206              		.section	.debug_aranges,"",%progbits
 4207 0000 14000000 		.4byte	0x14
 4208 0004 0200     		.2byte	0x2
 4209 0006 00000000 		.4byte	.Ldebug_info0
 4210 000a 04       		.byte	0x4
 4211 000b 00       		.byte	0
 4212 000c 0000     		.2byte	0
 4213 000e 0000     		.2byte	0
 4214 0010 00000000 		.4byte	0
 4215 0014 00000000 		.4byte	0
 4216              		.section	.debug_line,"",%progbits
 4217              	.Ldebug_line0:
 4218 0000 44040000 		.section	.debug_str,"MS",%progbits,1
ARM GAS  /tmp/ccuadTPt.s 			page 75


 4218      02003E04 
 4218      00000201 
 4218      FB0E0D00 
 4218      01010101 
 4219              	.LASF259:
 4220 0000 67657465 		.ascii	"getenv\000"
 4220      6E7600
 4221              	.LASF313:
 4222 0007 4550574D 		.ascii	"EPWMChannel\000"
 4222      4368616E 
 4222      6E656C00 
 4223              	.LASF53:
 4224 0013 75696E74 		.ascii	"uint_fast16_t\000"
 4224      5F666173 
 4224      7431365F 
 4224      7400
 4225              	.LASF16:
 4226 0021 6C6F6E67 		.ascii	"long int\000"
 4226      20696E74 
 4226      00
 4227              	.LASF100:
 4228 002a 52657365 		.ascii	"Reserved7\000"
 4228      72766564 
 4228      3700
 4229              	.LASF29:
 4230 0034 5F5F7569 		.ascii	"__uint_least64_t\000"
 4230      6E745F6C 
 4230      65617374 
 4230      36345F74 
 4230      00
 4231              	.LASF374:
 4232 0045 756C5069 		.ascii	"ulPinConfiguration\000"
 4232      6E436F6E 
 4232      66696775 
 4232      72617469 
 4232      6F6E00
 4233              	.LASF62:
 4234 0058 53797374 		.ascii	"SystemCoreClock\000"
 4234      656D436F 
 4234      7265436C 
 4234      6F636B00 
 4235              	.LASF418:
 4236 0068 72616E64 		.ascii	"rand\000"
 4236      00
 4237              	.LASF288:
 4238 006d 5F5F6664 		.ascii	"__fdlibm_xopen\000"
 4238      6C69626D 
 4238      5F786F70 
 4238      656E00
 4239              	.LASF298:
 4240 007c 50494F5F 		.ascii	"PIO_INPUT\000"
 4240      494E5055 
 4240      5400
 4241              	.LASF381:
 4242 0086 5F637479 		.ascii	"_ctype_\000"
 4242      70655F00 
 4243              	.LASF82:
ARM GAS  /tmp/ccuadTPt.s 			page 76


 4244 008e 50494F5F 		.ascii	"PIO_ISR\000"
 4244      49535200 
 4245              	.LASF157:
 4246 0096 5F6F6E5F 		.ascii	"_on_exit_args\000"
 4246      65786974 
 4246      5F617267 
 4246      7300
 4247              	.LASF270:
 4248 00a4 73797374 		.ascii	"system\000"
 4248      656D00
 4249              	.LASF118:
 4250 00ab 50494F5F 		.ascii	"PIO_WPMR\000"
 4250      57504D52 
 4250      00
 4251              	.LASF63:
 4252 00b4 50494F5F 		.ascii	"PIO_PER\000"
 4252      50455200 
 4253              	.LASF80:
 4254 00bc 50494F5F 		.ascii	"PIO_IDR\000"
 4254      49445200 
 4255              	.LASF195:
 4256 00c4 5F776374 		.ascii	"_wctomb_state\000"
 4256      6F6D625F 
 4256      73746174 
 4256      6500
 4257              	.LASF244:
 4258 00d2 35646976 		.ascii	"5div_t\000"
 4258      5F7400
 4259              	.LASF77:
 4260 00d9 50494F5F 		.ascii	"PIO_ODSR\000"
 4260      4F445352 
 4260      00
 4261              	.LASF109:
 4262 00e2 50494F5F 		.ascii	"PIO_ESR\000"
 4262      45535200 
 4263              	.LASF285:
 4264 00ea 646F7562 		.ascii	"double_t\000"
 4264      6C655F74 
 4264      00
 4265              	.LASF328:
 4266 00f3 5443325F 		.ascii	"TC2_CHA6\000"
 4266      43484136 
 4266      00
 4267              	.LASF330:
 4268 00fc 5443325F 		.ascii	"TC2_CHA7\000"
 4268      43484137 
 4268      00
 4269              	.LASF332:
 4270 0105 5443325F 		.ascii	"TC2_CHA8\000"
 4270      43484138 
 4270      00
 4271              	.LASF148:
 4272 010e 5F5F746D 		.ascii	"__tm_sec\000"
 4272      5F736563 
 4272      00
 4273              	.LASF197:
 4274 0117 5F736967 		.ascii	"_signal_buf\000"
ARM GAS  /tmp/ccuadTPt.s 			page 77


 4274      6E616C5F 
 4274      62756600 
 4275              	.LASF261:
 4276 0123 6D626C65 		.ascii	"mblen\000"
 4276      6E00
 4277              	.LASF0:
 4278 0129 756E7369 		.ascii	"unsigned int\000"
 4278      676E6564 
 4278      20696E74 
 4278      00
 4279              	.LASF241:
 4280 0136 5F5F676E 		.ascii	"__gnu_cxx\000"
 4280      755F6378 
 4280      7800
 4281              	.LASF401:
 4282 0140 50776D53 		.ascii	"PwmSlowClock\000"
 4282      6C6F7743 
 4282      6C6F636B 
 4282      00
 4283              	.LASF171:
 4284 014d 5F6C6266 		.ascii	"_lbfsize\000"
 4284      73697A65 
 4284      00
 4285              	.LASF169:
 4286 0156 5F666C61 		.ascii	"_flags\000"
 4286      677300
 4287              	.LASF58:
 4288 015d 696E746D 		.ascii	"intmax_t\000"
 4288      61785F74 
 4288      00
 4289              	.LASF421:
 4290 0166 53657269 		.ascii	"SerialCDC\000"
 4290      616C4344 
 4290      4300
 4291              	.LASF57:
 4292 0170 75696E74 		.ascii	"uint_fast64_t\000"
 4292      5F666173 
 4292      7436345F 
 4292      7400
 4293              	.LASF52:
 4294 017e 696E745F 		.ascii	"int_fast16_t\000"
 4294      66617374 
 4294      31365F74 
 4294      00
 4295              	.LASF15:
 4296 018b 5F5F696E 		.ascii	"__int32_t\000"
 4296      7433325F 
 4296      7400
 4297              	.LASF208:
 4298 0195 5F657272 		.ascii	"_errno\000"
 4298      6E6F00
 4299              	.LASF263:
 4300 019c 77636861 		.ascii	"wchar_t\000"
 4300      725F7400 
 4301              	.LASF371:
 4302 01a4 756C5069 		.ascii	"ulPin\000"
 4302      6E00
ARM GAS  /tmp/ccuadTPt.s 			page 78


 4303              	.LASF392:
 4304 01aa 4150494E 		.ascii	"APIN_UART1_RXD\000"
 4304      5F554152 
 4304      54315F52 
 4304      584400
 4305              	.LASF406:
 4306 01b9 73747265 		.ascii	"strerror\000"
 4306      72726F72 
 4306      00
 4307              	.LASF68:
 4308 01c2 50494F5F 		.ascii	"PIO_ODR\000"
 4308      4F445200 
 4309              	.LASF305:
 4310 01ca 50574D5F 		.ascii	"PWM_CH0\000"
 4310      43483000 
 4311              	.LASF306:
 4312 01d2 50574D5F 		.ascii	"PWM_CH1\000"
 4312      43483100 
 4313              	.LASF79:
 4314 01da 50494F5F 		.ascii	"PIO_IER\000"
 4314      49455200 
 4315              	.LASF308:
 4316 01e2 50574D5F 		.ascii	"PWM_CH3\000"
 4316      43483300 
 4317              	.LASF309:
 4318 01ea 50574D5F 		.ascii	"PWM_CH4\000"
 4318      43483400 
 4319              	.LASF310:
 4320 01f2 50574D5F 		.ascii	"PWM_CH5\000"
 4320      43483500 
 4321              	.LASF311:
 4322 01fa 50574D5F 		.ascii	"PWM_CH6\000"
 4322      43483600 
 4323              	.LASF312:
 4324 0202 50574D5F 		.ascii	"PWM_CH7\000"
 4324      43483700 
 4325              	.LASF417:
 4326 020a 5F5A4E39 		.ascii	"_ZN9__gnu_cxx3divExx\000"
 4326      5F5F676E 
 4326      755F6378 
 4326      78336469 
 4326      76457878 
 4327              	.LASF26:
 4328 021f 5F5F696E 		.ascii	"__int_least32_t\000"
 4328      745F6C65 
 4328      61737433 
 4328      325F7400 
 4329              	.LASF329:
 4330 022f 5443325F 		.ascii	"TC2_CHB6\000"
 4330      43484236 
 4330      00
 4331              	.LASF183:
 4332 0238 5F6D6273 		.ascii	"_mbstate\000"
 4332      74617465 
 4332      00
 4333              	.LASF333:
 4334 0241 5443325F 		.ascii	"TC2_CHB8\000"
ARM GAS  /tmp/ccuadTPt.s 			page 79


 4334      43484238 
 4334      00
 4335              	.LASF276:
 4336 024a 73747274 		.ascii	"strtoull\000"
 4336      6F756C6C 
 4336      00
 4337              	.LASF173:
 4338 0253 5F726561 		.ascii	"_read\000"
 4338      6400
 4339              	.LASF25:
 4340 0259 5F5F7569 		.ascii	"__uint_least16_t\000"
 4340      6E745F6C 
 4340      65617374 
 4340      31365F74 
 4340      00
 4341              	.LASF192:
 4342 026a 5F723438 		.ascii	"_r48\000"
 4342      00
 4343              	.LASF141:
 4344 026f 5F5F554C 		.ascii	"__ULong\000"
 4344      6F6E6700 
 4345              	.LASF240:
 4346 0277 6D6F6466 		.ascii	"modf\000"
 4346      00
 4347              	.LASF6:
 4348 027c 6D61785F 		.ascii	"max_align_t\000"
 4348      616C6967 
 4348      6E5F7400 
 4349              	.LASF202:
 4350 0288 5F776372 		.ascii	"_wcrtomb_state\000"
 4350      746F6D62 
 4350      5F737461 
 4350      746500
 4351              	.LASF210:
 4352 0297 5F737464 		.ascii	"_stdout\000"
 4352      6F757400 
 4353              	.LASF30:
 4354 029f 5F5F696E 		.ascii	"__intptr_t\000"
 4354      74707472 
 4354      5F7400
 4355              	.LASF133:
 4356 02aa 5F66706F 		.ascii	"_fpos_t\000"
 4356      735F7400 
 4357              	.LASF164:
 4358 02b2 5F666E73 		.ascii	"_fns\000"
 4358      00
 4359              	.LASF172:
 4360 02b7 5F636F6F 		.ascii	"_cookie\000"
 4360      6B696500 
 4361              	.LASF239:
 4362 02bf 5F676C6F 		.ascii	"_global_impure_ptr\000"
 4362      62616C5F 
 4362      696D7075 
 4362      72655F70 
 4362      747200
 4363              	.LASF280:
 4364 02d2 675F696E 		.ascii	"g_interrupt_enabled\000"
ARM GAS  /tmp/ccuadTPt.s 			page 80


 4364      74657272 
 4364      7570745F 
 4364      656E6162 
 4364      6C656400 
 4365              	.LASF130:
 4366 02e6 50494F5F 		.ascii	"PIO_PCRHR\000"
 4366      50435248 
 4366      5200
 4367              	.LASF146:
 4368 02f0 5F426967 		.ascii	"_Bigint\000"
 4368      696E7400 
 4369              	.LASF372:
 4370 02f8 756C5065 		.ascii	"ulPeripheralId\000"
 4370      72697068 
 4370      6572616C 
 4370      496400
 4371              	.LASF154:
 4372 0307 5F5F746D 		.ascii	"__tm_wday\000"
 4372      5F776461 
 4372      7900
 4373              	.LASF56:
 4374 0311 696E745F 		.ascii	"int_fast64_t\000"
 4374      66617374 
 4374      36345F74 
 4374      00
 4375              	.LASF279:
 4376 031e 73747274 		.ascii	"strtold\000"
 4376      6F6C6400 
 4377              	.LASF218:
 4378 0326 5F726573 		.ascii	"_result\000"
 4378      756C7400 
 4379              	.LASF275:
 4380 032e 73747274 		.ascii	"strtoll\000"
 4380      6F6C6C00 
 4381              	.LASF335:
 4382 0336 416E616C 		.ascii	"AnalogChannelNumber\000"
 4382      6F674368 
 4382      616E6E65 
 4382      6C4E756D 
 4382      62657200 
 4383              	.LASF37:
 4384 034a 75696E74 		.ascii	"uint32_t\000"
 4384      33325F74 
 4384      00
 4385              	.LASF415:
 4386 0353 5F5A5374 		.ascii	"_ZSt3absx\000"
 4386      33616273 
 4386      7800
 4387              	.LASF150:
 4388 035d 5F5F746D 		.ascii	"__tm_hour\000"
 4388      5F686F75 
 4388      7200
 4389              	.LASF264:
 4390 0367 6D62746F 		.ascii	"mbtowc\000"
 4390      776300
 4391              	.LASF209:
 4392 036e 5F737464 		.ascii	"_stdin\000"
ARM GAS  /tmp/ccuadTPt.s 			page 81


 4392      696E00
 4393              	.LASF399:
 4394 0375 4D617850 		.ascii	"MaxPinNumber\000"
 4394      696E4E75 
 4394      6D626572 
 4394      00
 4395              	.LASF137:
 4396 0382 5F5F636F 		.ascii	"__count\000"
 4396      756E7400 
 4397              	.LASF376:
 4398 038a 756C4144 		.ascii	"ulADCChannelNumber\000"
 4398      43436861 
 4398      6E6E656C 
 4398      4E756D62 
 4398      657200
 4399              	.LASF342:
 4400 039d 41444335 		.ascii	"ADC5\000"
 4400      00
 4401              	.LASF343:
 4402 03a2 41444336 		.ascii	"ADC6\000"
 4402      00
 4403              	.LASF2:
 4404 03a7 5F5F6D61 		.ascii	"__max_align_ld\000"
 4404      785F616C 
 4404      69676E5F 
 4404      6C6400
 4405              	.LASF344:
 4406 03b6 41444337 		.ascii	"ADC7\000"
 4406      00
 4407              	.LASF110:
 4408 03bb 50494F5F 		.ascii	"PIO_LSR\000"
 4408      4C535200 
 4409              	.LASF149:
 4410 03c3 5F5F746D 		.ascii	"__tm_min\000"
 4410      5F6D696E 
 4410      00
 4411              	.LASF238:
 4412 03cc 5F696D70 		.ascii	"_impure_ptr\000"
 4412      7572655F 
 4412      70747200 
 4413              	.LASF1:
 4414 03d8 5F5F6D61 		.ascii	"__max_align_ll\000"
 4414      785F616C 
 4414      69676E5F 
 4414      6C6C00
 4415              	.LASF205:
 4416 03e7 5F6E6578 		.ascii	"_nextf\000"
 4416      746600
 4417              	.LASF412:
 4418 03ee 31316D61 		.ascii	"11max_align_t\000"
 4418      785F616C 
 4418      69676E5F 
 4418      7400
 4419              	.LASF201:
 4420 03fc 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 4420      72746F77 
 4420      63735F73 
ARM GAS  /tmp/ccuadTPt.s 			page 82


 4420      74617465 
 4420      00
 4421              	.LASF121:
 4422 040d 50494F5F 		.ascii	"PIO_SCHMITT\000"
 4422      5343484D 
 4422      49545400 
 4423              	.LASF44:
 4424 0419 696E745F 		.ascii	"int_least16_t\000"
 4424      6C656173 
 4424      7431365F 
 4424      7400
 4425              	.LASF59:
 4426 0427 75696E74 		.ascii	"uintmax_t\000"
 4426      6D61785F 
 4426      7400
 4427              	.LASF21:
 4428 0431 6C6F6E67 		.ascii	"long long unsigned int\000"
 4428      206C6F6E 
 4428      6720756E 
 4428      7369676E 
 4428      65642069 
 4429              	.LASF188:
 4430 0448 5F617363 		.ascii	"_asctime_buf\000"
 4430      74696D65 
 4430      5F627566 
 4430      00
 4431              	.LASF390:
 4432 0455 4150494E 		.ascii	"APIN_UART0_TXD\000"
 4432      5F554152 
 4432      54305F54 
 4432      584400
 4433              	.LASF168:
 4434 0464 5F5F7346 		.ascii	"__sFILE\000"
 4434      494C4500 
 4435              	.LASF145:
 4436 046c 5F776473 		.ascii	"_wds\000"
 4436      00
 4437              	.LASF416:
 4438 0471 5F5A5374 		.ascii	"_ZSt4modfePe\000"
 4438      346D6F64 
 4438      66655065 
 4438      00
 4439              	.LASF17:
 4440 047e 5F5F7569 		.ascii	"__uint32_t\000"
 4440      6E743332 
 4440      5F7400
 4441              	.LASF234:
 4442 0489 5F72616E 		.ascii	"_rand48\000"
 4442      64343800 
 4443              	.LASF272:
 4444 0491 7763746F 		.ascii	"wctomb\000"
 4444      6D6200
 4445              	.LASF31:
 4446 0498 5F5F7569 		.ascii	"__uintptr_t\000"
 4446      6E747074 
 4446      725F7400 
 4447              	.LASF230:
ARM GAS  /tmp/ccuadTPt.s 			page 83


 4448 04a4 5F5F4649 		.ascii	"__FILE\000"
 4448      4C4500
 4449              	.LASF289:
 4450 04ab 5F5F6664 		.ascii	"__fdlibm_posix\000"
 4450      6C69626D 
 4450      5F706F73 
 4450      697800
 4451              	.LASF75:
 4452 04ba 50494F5F 		.ascii	"PIO_SODR\000"
 4452      534F4452 
 4452      00
 4453              	.LASF180:
 4454 04c3 5F6F6666 		.ascii	"_offset\000"
 4454      73657400 
 4455              	.LASF177:
 4456 04cb 5F756275 		.ascii	"_ubuf\000"
 4456      6600
 4457              	.LASF123:
 4458 04d1 50494F5F 		.ascii	"PIO_DRIVER\000"
 4458      44524956 
 4458      455200
 4459              	.LASF49:
 4460 04dc 75696E74 		.ascii	"uint_least64_t\000"
 4460      5F6C6561 
 4460      73743634 
 4460      5F7400
 4461              	.LASF273:
 4462 04eb 6C6C6469 		.ascii	"lldiv\000"
 4462      7600
 4463              	.LASF301:
 4464 04f1 70696F5F 		.ascii	"pio_type_t\000"
 4464      74797065 
 4464      5F7400
 4465              	.LASF213:
 4466 04fc 5F656D65 		.ascii	"_emergency\000"
 4466      7267656E 
 4466      637900
 4467              	.LASF144:
 4468 0507 5F736967 		.ascii	"_sign\000"
 4468      6E00
 4469              	.LASF283:
 4470 050d 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 4470      6972715F 
 4470      70726576 
 4470      5F696E74 
 4470      65727275 
 4471              	.LASF117:
 4472 052a 50494F5F 		.ascii	"PIO_LOCKSR\000"
 4472      4C4F434B 
 4472      535200
 4473              	.LASF5:
 4474 0535 73697A65 		.ascii	"size_t\000"
 4474      5F7400
 4475              	.LASF267:
 4476 053c 73747274 		.ascii	"strtod\000"
 4476      6F6400
 4477              	.LASF42:
ARM GAS  /tmp/ccuadTPt.s 			page 84


 4478 0543 696E745F 		.ascii	"int_least8_t\000"
 4478      6C656173 
 4478      74385F74 
 4478      00
 4479              	.LASF38:
 4480 0550 696E7436 		.ascii	"int64_t\000"
 4480      345F7400 
 4481              	.LASF408:
 4482 0558 73747278 		.ascii	"strxfrm\000"
 4482      66726D00 
 4483              	.LASF129:
 4484 0560 50494F5F 		.ascii	"PIO_PCISR\000"
 4484      50434953 
 4484      5200
 4485              	.LASF48:
 4486 056a 696E745F 		.ascii	"int_least64_t\000"
 4486      6C656173 
 4486      7436345F 
 4486      7400
 4487              	.LASF299:
 4488 0578 50494F5F 		.ascii	"PIO_OUTPUT_0\000"
 4488      4F555450 
 4488      55545F30 
 4488      00
 4489              	.LASF300:
 4490 0585 50494F5F 		.ascii	"PIO_OUTPUT_1\000"
 4490      4F555450 
 4490      55545F31 
 4490      00
 4491              	.LASF407:
 4492 0592 73747274 		.ascii	"strtok\000"
 4492      6F6B00
 4493              	.LASF155:
 4494 0599 5F5F746D 		.ascii	"__tm_yday\000"
 4494      5F796461 
 4494      7900
 4495              	.LASF268:
 4496 05a3 73747274 		.ascii	"strtol\000"
 4496      6F6C00
 4497              	.LASF212:
 4498 05aa 5F696E63 		.ascii	"_inc\000"
 4498      00
 4499              	.LASF163:
 4500 05af 5F696E64 		.ascii	"_ind\000"
 4500      00
 4501              	.LASF404:
 4502 05b4 53657269 		.ascii	"SerialUSB\000"
 4502      616C5553 
 4502      4200
 4503              	.LASF27:
 4504 05be 5F5F7569 		.ascii	"__uint_least32_t\000"
 4504      6E745F6C 
 4504      65617374 
 4504      33325F74 
 4504      00
 4505              	.LASF258:
 4506 05cf 62736561 		.ascii	"bsearch\000"
ARM GAS  /tmp/ccuadTPt.s 			page 85


 4506      72636800 
 4507              	.LASF403:
 4508 05d7 53657269 		.ascii	"Serial1\000"
 4508      616C3100 
 4509              	.LASF336:
 4510 05df 4E4F5F41 		.ascii	"NO_ADC\000"
 4510      444300
 4511              	.LASF142:
 4512 05e6 5F6E6578 		.ascii	"_next\000"
 4512      7400
 4513              	.LASF379:
 4514 05ec 675F4150 		.ascii	"g_APinDescription\000"
 4514      696E4465 
 4514      73637269 
 4514      7074696F 
 4514      6E00
 4515              	.LASF20:
 4516 05fe 5F5F7569 		.ascii	"__uint64_t\000"
 4516      6E743634 
 4516      5F7400
 4517              	.LASF91:
 4518 0609 50494F5F 		.ascii	"PIO_ABCDSR\000"
 4518      41424344 
 4518      535200
 4519              	.LASF347:
 4520 0614 41444331 		.ascii	"ADC10\000"
 4520      3000
 4521              	.LASF348:
 4522 061a 41444331 		.ascii	"ADC11\000"
 4522      3100
 4523              	.LASF349:
 4524 0620 41444331 		.ascii	"ADC12\000"
 4524      3200
 4525              	.LASF350:
 4526 0626 41444331 		.ascii	"ADC13\000"
 4526      3300
 4527              	.LASF351:
 4528 062c 41444331 		.ascii	"ADC14\000"
 4528      3400
 4529              	.LASF352:
 4530 0632 41444331 		.ascii	"ADC15\000"
 4530      3500
 4531              	.LASF353:
 4532 0638 41444331 		.ascii	"ADC16\000"
 4532      3600
 4533              	.LASF354:
 4534 063e 41444331 		.ascii	"ADC17\000"
 4534      3700
 4535              	.LASF355:
 4536 0644 41444331 		.ascii	"ADC18\000"
 4536      3800
 4537              	.LASF356:
 4538 064a 41444331 		.ascii	"ADC19\000"
 4538      3900
 4539              	.LASF138:
 4540 0650 5F5F7661 		.ascii	"__value\000"
 4540      6C756500 
ARM GAS  /tmp/ccuadTPt.s 			page 86


 4541              	.LASF405:
 4542 0658 73747263 		.ascii	"strcoll\000"
 4542      6F6C6C00 
 4543              	.LASF13:
 4544 0660 5F5F7569 		.ascii	"__uint16_t\000"
 4544      6E743136 
 4544      5F7400
 4545              	.LASF220:
 4546 066b 5F703573 		.ascii	"_p5s\000"
 4546      00
 4547              	.LASF73:
 4548 0670 50494F5F 		.ascii	"PIO_IFSR\000"
 4548      49465352 
 4548      00
 4549              	.LASF87:
 4550 0679 50494F5F 		.ascii	"PIO_PUDR\000"
 4550      50554452 
 4550      00
 4551              	.LASF243:
 4552 0682 31305F6D 		.ascii	"10_mbstate_t\000"
 4552      62737461 
 4552      74655F74 
 4552      00
 4553              	.LASF284:
 4554 068f 666C6F61 		.ascii	"float_t\000"
 4554      745F7400 
 4555              	.LASF394:
 4556 0697 4150494E 		.ascii	"APIN_HSMCI_CLOCK\000"
 4556      5F48534D 
 4556      43495F43 
 4556      4C4F434B 
 4556      00
 4557              	.LASF203:
 4558 06a8 5F776373 		.ascii	"_wcsrtombs_state\000"
 4558      72746F6D 
 4558      62735F73 
 4558      74617465 
 4558      00
 4559              	.LASF193:
 4560 06b9 5F6D626C 		.ascii	"_mblen_state\000"
 4560      656E5F73 
 4560      74617465 
 4560      00
 4561              	.LASF72:
 4562 06c6 50494F5F 		.ascii	"PIO_IFDR\000"
 4562      49464452 
 4562      00
 4563              	.LASF126:
 4564 06cf 50494F5F 		.ascii	"PIO_PCIER\000"
 4564      50434945 
 4564      5200
 4565              	.LASF229:
 4566 06d9 63686172 		.ascii	"char\000"
 4566      00
 4567              	.LASF69:
 4568 06de 50494F5F 		.ascii	"PIO_OSR\000"
 4568      4F535200 
ARM GAS  /tmp/ccuadTPt.s 			page 87


 4569              	.LASF151:
 4570 06e6 5F5F746D 		.ascii	"__tm_mday\000"
 4570      5F6D6461 
 4570      7900
 4571              	.LASF78:
 4572 06f0 50494F5F 		.ascii	"PIO_PDSR\000"
 4572      50445352 
 4572      00
 4573              	.LASF226:
 4574 06f9 5F736967 		.ascii	"_sig_func\000"
 4574      5F66756E 
 4574      6300
 4575              	.LASF200:
 4576 0703 5F6D6272 		.ascii	"_mbrtowc_state\000"
 4576      746F7763 
 4576      5F737461 
 4576      746500
 4577              	.LASF225:
 4578 0712 5F617465 		.ascii	"_atexit0\000"
 4578      78697430 
 4578      00
 4579              	.LASF322:
 4580 071b 5443315F 		.ascii	"TC1_CHA3\000"
 4580      43484133 
 4580      00
 4581              	.LASF324:
 4582 0724 5443315F 		.ascii	"TC1_CHA4\000"
 4582      43484134 
 4582      00
 4583              	.LASF326:
 4584 072d 5443315F 		.ascii	"TC1_CHA5\000"
 4584      43484135 
 4584      00
 4585              	.LASF294:
 4586 0736 50494F5F 		.ascii	"PIO_PERIPH_A\000"
 4586      50455249 
 4586      50485F41 
 4586      00
 4587              	.LASF295:
 4588 0743 50494F5F 		.ascii	"PIO_PERIPH_B\000"
 4588      50455249 
 4588      50485F42 
 4588      00
 4589              	.LASF296:
 4590 0750 50494F5F 		.ascii	"PIO_PERIPH_C\000"
 4590      50455249 
 4590      50485F43 
 4590      00
 4591              	.LASF402:
 4592 075d 53657269 		.ascii	"Serial\000"
 4592      616C00
 4593              	.LASF179:
 4594 0764 5F626C6B 		.ascii	"_blksize\000"
 4594      73697A65 
 4594      00
 4595              	.LASF119:
 4596 076d 50494F5F 		.ascii	"PIO_WPSR\000"
ARM GAS  /tmp/ccuadTPt.s 			page 88


 4596      57505352 
 4596      00
 4597              	.LASF357:
 4598 0776 41444332 		.ascii	"ADC20\000"
 4598      3000
 4599              	.LASF358:
 4600 077c 41444332 		.ascii	"ADC21\000"
 4600      3100
 4601              	.LASF359:
 4602 0782 41444332 		.ascii	"ADC22\000"
 4602      3200
 4603              	.LASF219:
 4604 0788 5F726573 		.ascii	"_result_k\000"
 4604      756C745F 
 4604      6B00
 4605              	.LASF361:
 4606 0792 41444332 		.ascii	"ADC24\000"
 4606      3400
 4607              	.LASF362:
 4608 0798 41444332 		.ascii	"ADC25\000"
 4608      3500
 4609              	.LASF363:
 4610 079e 41444332 		.ascii	"ADC26\000"
 4610      3600
 4611              	.LASF364:
 4612 07a4 41444332 		.ascii	"ADC27\000"
 4612      3700
 4613              	.LASF365:
 4614 07aa 41444332 		.ascii	"ADC28\000"
 4614      3800
 4615              	.LASF366:
 4616 07b0 41444332 		.ascii	"ADC29\000"
 4616      3900
 4617              	.LASF113:
 4618 07b6 50494F5F 		.ascii	"PIO_FELLSR\000"
 4618      46454C4C 
 4618      535200
 4619              	.LASF135:
 4620 07c1 5F5F7763 		.ascii	"__wch\000"
 4620      6800
 4621              	.LASF33:
 4622 07c7 75696E74 		.ascii	"uint8_t\000"
 4622      385F7400 
 4623              	.LASF389:
 4624 07cf 4150494E 		.ascii	"APIN_UART0_RXD\000"
 4624      5F554152 
 4624      54305F52 
 4624      584400
 4625              	.LASF245:
 4626 07de 71756F74 		.ascii	"quot\000"
 4626      00
 4627              	.LASF88:
 4628 07e3 50494F5F 		.ascii	"PIO_PUER\000"
 4628      50554552 
 4628      00
 4629              	.LASF176:
 4630 07ec 5F636C6F 		.ascii	"_close\000"
ARM GAS  /tmp/ccuadTPt.s 			page 89


 4630      736500
 4631              	.LASF111:
 4632 07f3 50494F5F 		.ascii	"PIO_ELSR\000"
 4632      454C5352 
 4632      00
 4633              	.LASF360:
 4634 07fc 41444332 		.ascii	"ADC23\000"
 4634      3300
 4635              	.LASF216:
 4636 0802 5F5F7364 		.ascii	"__sdidinit\000"
 4636      6964696E 
 4636      697400
 4637              	.LASF297:
 4638 080d 50494F5F 		.ascii	"PIO_PERIPH_D\000"
 4638      50455249 
 4638      50485F44 
 4638      00
 4639              	.LASF71:
 4640 081a 50494F5F 		.ascii	"PIO_IFER\000"
 4640      49464552 
 4640      00
 4641              	.LASF274:
 4642 0823 61746F6C 		.ascii	"atoll\000"
 4642      6C00
 4643              	.LASF385:
 4644 0829 5F74696D 		.ascii	"_timezone\000"
 4644      657A6F6E 
 4644      6500
 4645              	.LASF337:
 4646 0833 41444330 		.ascii	"ADC0\000"
 4646      00
 4647              	.LASF338:
 4648 0838 41444331 		.ascii	"ADC1\000"
 4648      00
 4649              	.LASF339:
 4650 083d 41444332 		.ascii	"ADC2\000"
 4650      00
 4651              	.LASF340:
 4652 0842 41444333 		.ascii	"ADC3\000"
 4652      00
 4653              	.LASF341:
 4654 0847 41444334 		.ascii	"ADC4\000"
 4654      00
 4655              	.LASF323:
 4656 084c 5443315F 		.ascii	"TC1_CHB3\000"
 4656      43484233 
 4656      00
 4657              	.LASF325:
 4658 0855 5443315F 		.ascii	"TC1_CHB4\000"
 4658      43484234 
 4658      00
 4659              	.LASF327:
 4660 085e 5443315F 		.ascii	"TC1_CHB5\000"
 4660      43484235 
 4660      00
 4661              	.LASF345:
 4662 0867 41444338 		.ascii	"ADC8\000"
ARM GAS  /tmp/ccuadTPt.s 			page 90


 4662      00
 4663              	.LASF346:
 4664 086c 41444339 		.ascii	"ADC9\000"
 4664      00
 4665              	.LASF67:
 4666 0871 50494F5F 		.ascii	"PIO_OER\000"
 4666      4F455200 
 4667              	.LASF3:
 4668 0879 6C6F6E67 		.ascii	"long long int\000"
 4668      206C6F6E 
 4668      6720696E 
 4668      7400
 4669              	.LASF419:
 4670 0887 77726974 		.ascii	"write\000"
 4670      6500
 4671              	.LASF166:
 4672 088d 5F626173 		.ascii	"_base\000"
 4672      6500
 4673              	.LASF367:
 4674 0893 41444333 		.ascii	"ADC30\000"
 4674      3000
 4675              	.LASF368:
 4676 0899 41444333 		.ascii	"ADC31\000"
 4676      3100
 4677              	.LASF236:
 4678 089f 5F6D756C 		.ascii	"_mult\000"
 4678      7400
 4679              	.LASF237:
 4680 08a5 5F616464 		.ascii	"_add\000"
 4680      00
 4681              	.LASF287:
 4682 08aa 5F5F6664 		.ascii	"__fdlibm_svid\000"
 4682      6C69626D 
 4682      5F737669 
 4682      6400
 4683              	.LASF76:
 4684 08b8 50494F5F 		.ascii	"PIO_CODR\000"
 4684      434F4452 
 4684      00
 4685              	.LASF93:
 4686 08c1 50494F5F 		.ascii	"PIO_IFSCDR\000"
 4686      49465343 
 4686      445200
 4687              	.LASF43:
 4688 08cc 75696E74 		.ascii	"uint_least8_t\000"
 4688      5F6C6561 
 4688      7374385F 
 4688      7400
 4689              	.LASF281:
 4690 08da 626F6F6C 		.ascii	"bool\000"
 4690      00
 4691              	.LASF242:
 4692 08df 5F5F6378 		.ascii	"__cxx11\000"
 4692      78313100 
 4693              	.LASF11:
 4694 08e7 5F5F696E 		.ascii	"__int16_t\000"
 4694      7431365F 
ARM GAS  /tmp/ccuadTPt.s 			page 91


 4694      7400
 4695              	.LASF420:
 4696 08f1 5F5A4E35 		.ascii	"_ZN5Print5writeEPKcj\000"
 4696      5072696E 
 4696      74357772 
 4696      69746545 
 4696      504B636A 
 4697              	.LASF302:
 4698 0906 4E6F5069 		.ascii	"NoPin\000"
 4698      6E00
 4699              	.LASF60:
 4700 090c 73697A65 		.ascii	"sizetype\000"
 4700      74797065 
 4700      00
 4701              	.LASF50:
 4702 0915 696E745F 		.ascii	"int_fast8_t\000"
 4702      66617374 
 4702      385F7400 
 4703              	.LASF260:
 4704 0921 6C646976 		.ascii	"ldiv\000"
 4704      00
 4705              	.LASF217:
 4706 0926 5F5F636C 		.ascii	"__cleanup\000"
 4706      65616E75 
 4706      7000
 4707              	.LASF369:
 4708 0930 50696E44 		.ascii	"PinDescription\000"
 4708      65736372 
 4708      69707469 
 4708      6F6E00
 4709              	.LASF290:
 4710 093f 5F5F6664 		.ascii	"__fdlib_version\000"
 4710      6C69625F 
 4710      76657273 
 4710      696F6E00 
 4711              	.LASF115:
 4712 094f 50494F5F 		.ascii	"PIO_FRLHSR\000"
 4712      46524C48 
 4712      535200
 4713              	.LASF139:
 4714 095a 5F6D6273 		.ascii	"_mbstate_t\000"
 4714      74617465 
 4714      5F7400
 4715              	.LASF251:
 4716 0965 5F5F636F 		.ascii	"__compar_fn_t\000"
 4716      6D706172 
 4716      5F666E5F 
 4716      7400
 4717              	.LASF24:
 4718 0973 5F5F696E 		.ascii	"__int_least16_t\000"
 4718      745F6C65 
 4718      61737431 
 4718      365F7400 
 4719              	.LASF266:
 4720 0983 7372616E 		.ascii	"srand\000"
 4720      6400
 4721              	.LASF131:
ARM GAS  /tmp/ccuadTPt.s 			page 92


 4722 0989 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 4722      4B5F5245 
 4722      43555253 
 4722      4956455F 
 4722      5400
 4723              	.LASF70:
 4724 099b 52657365 		.ascii	"Reserved2\000"
 4724      72766564 
 4724      3200
 4725              	.LASF74:
 4726 09a5 52657365 		.ascii	"Reserved3\000"
 4726      72766564 
 4726      3300
 4727              	.LASF140:
 4728 09af 5F666C6F 		.ascii	"_flock_t\000"
 4728      636B5F74 
 4728      00
 4729              	.LASF90:
 4730 09b8 52657365 		.ascii	"Reserved5\000"
 4730      72766564 
 4730      3500
 4731              	.LASF92:
 4732 09c2 52657365 		.ascii	"Reserved6\000"
 4732      72766564 
 4732      3600
 4733              	.LASF156:
 4734 09cc 5F5F746D 		.ascii	"__tm_isdst\000"
 4734      5F697364 
 4734      737400
 4735              	.LASF55:
 4736 09d7 75696E74 		.ascii	"uint_fast32_t\000"
 4736      5F666173 
 4736      7433325F 
 4736      7400
 4737              	.LASF108:
 4738 09e5 52657365 		.ascii	"Reserved9\000"
 4738      72766564 
 4738      3900
 4739              	.LASF331:
 4740 09ef 5443325F 		.ascii	"TC2_CHB7\000"
 4740      43484237 
 4740      00
 4741              	.LASF32:
 4742 09f8 696E7438 		.ascii	"int8_t\000"
 4742      5F7400
 4743              	.LASF18:
 4744 09ff 6C6F6E67 		.ascii	"long unsigned int\000"
 4744      20756E73 
 4744      69676E65 
 4744      6420696E 
 4744      7400
 4745              	.LASF204:
 4746 0a11 5F685F65 		.ascii	"_h_errno\000"
 4746      72726E6F 
 4746      00
 4747              	.LASF388:
 4748 0a1a 4150494E 		.ascii	"APINS_UART0\000"
ARM GAS  /tmp/ccuadTPt.s 			page 93


 4748      535F5541 
 4748      52543000 
 4749              	.LASF391:
 4750 0a26 4150494E 		.ascii	"APINS_UART1\000"
 4750      535F5541 
 4750      52543100 
 4751              	.LASF373:
 4752 0a32 756C5069 		.ascii	"ulPinType\000"
 4752      6E547970 
 4752      6500
 4753              	.LASF103:
 4754 0a3c 50494F5F 		.ascii	"PIO_OWSR\000"
 4754      4F575352 
 4754      00
 4755              	.LASF7:
 4756 0a45 5F5F696E 		.ascii	"__int8_t\000"
 4756      74385F74 
 4756      00
 4757              	.LASF380:
 4758 0a4e 5F5F6374 		.ascii	"__ctype_ptr__\000"
 4758      7970655F 
 4758      7074725F 
 4758      5F00
 4759              	.LASF314:
 4760 0a5c 5F455443 		.ascii	"_ETCChannel\000"
 4760      4368616E 
 4760      6E656C00 
 4761              	.LASF102:
 4762 0a68 50494F5F 		.ascii	"PIO_OWDR\000"
 4762      4F574452 
 4762      00
 4763              	.LASF334:
 4764 0a71 45544343 		.ascii	"ETCChannel\000"
 4764      68616E6E 
 4764      656C00
 4765              	.LASF152:
 4766 0a7c 5F5F746D 		.ascii	"__tm_mon\000"
 4766      5F6D6F6E 
 4766      00
 4767              	.LASF19:
 4768 0a85 5F5F696E 		.ascii	"__int64_t\000"
 4768      7436345F 
 4768      7400
 4769              	.LASF106:
 4770 0a8f 50494F5F 		.ascii	"PIO_AIMDR\000"
 4770      41494D44 
 4770      5200
 4771              	.LASF4:
 4772 0a99 6C6F6E67 		.ascii	"long double\000"
 4772      20646F75 
 4772      626C6500 
 4773              	.LASF40:
 4774 0aa5 696E7470 		.ascii	"intptr_t\000"
 4774      74725F74 
 4774      00
 4775              	.LASF35:
 4776 0aae 75696E74 		.ascii	"uint16_t\000"
ARM GAS  /tmp/ccuadTPt.s 			page 94


 4776      31365F74 
 4776      00
 4777              	.LASF253:
 4778 0ab7 61746578 		.ascii	"atexit\000"
 4778      697400
 4779              	.LASF174:
 4780 0abe 5F777269 		.ascii	"_write\000"
 4780      746500
 4781              	.LASF81:
 4782 0ac5 50494F5F 		.ascii	"PIO_IMR\000"
 4782      494D5200 
 4783              	.LASF125:
 4784 0acd 50494F5F 		.ascii	"PIO_PCMR\000"
 4784      50434D52 
 4784      00
 4785              	.LASF190:
 4786 0ad6 5F67616D 		.ascii	"_gamma_signgam\000"
 4786      6D615F73 
 4786      69676E67 
 4786      616D00
 4787              	.LASF153:
 4788 0ae5 5F5F746D 		.ascii	"__tm_year\000"
 4788      5F796561 
 4788      7200
 4789              	.LASF191:
 4790 0aef 5F72616E 		.ascii	"_rand_next\000"
 4790      645F6E65 
 4790      787400
 4791              	.LASF94:
 4792 0afa 50494F5F 		.ascii	"PIO_IFSCER\000"
 4792      49465343 
 4792      455200
 4793              	.LASF293:
 4794 0b05 50494F5F 		.ascii	"PIO_NOT_A_PIN\000"
 4794      4E4F545F 
 4794      415F5049 
 4794      4E00
 4795              	.LASF28:
 4796 0b13 5F5F696E 		.ascii	"__int_least64_t\000"
 4796      745F6C65 
 4796      61737436 
 4796      345F7400 
 4797              	.LASF162:
 4798 0b23 5F617465 		.ascii	"_atexit\000"
 4798      78697400 
 4799              	.LASF23:
 4800 0b2b 5F5F7569 		.ascii	"__uint_least8_t\000"
 4800      6E745F6C 
 4800      65617374 
 4800      385F7400 
 4801              	.LASF54:
 4802 0b3b 696E745F 		.ascii	"int_fast32_t\000"
 4802      66617374 
 4802      33325F74 
 4802      00
 4803              	.LASF377:
 4804 0b48 756C5057 		.ascii	"ulPWMChannel\000"
ARM GAS  /tmp/ccuadTPt.s 			page 95


 4804      4D436861 
 4804      6E6E656C 
 4804      00
 4805              	.LASF66:
 4806 0b55 52657365 		.ascii	"Reserved1\000"
 4806      72766564 
 4806      3100
 4807              	.LASF410:
 4808 0b5f 2E2E2F6C 		.ascii	"../libraries/Flash/DueFlashStorage.cpp\000"
 4808      69627261 
 4808      72696573 
 4808      2F466C61 
 4808      73682F44 
 4809              	.LASF86:
 4810 0b86 52657365 		.ascii	"Reserved4\000"
 4810      72766564 
 4810      3400
 4811              	.LASF12:
 4812 0b90 73686F72 		.ascii	"short int\000"
 4812      7420696E 
 4812      7400
 4813              	.LASF101:
 4814 0b9a 50494F5F 		.ascii	"PIO_OWER\000"
 4814      4F574552 
 4814      00
 4815              	.LASF104:
 4816 0ba3 52657365 		.ascii	"Reserved8\000"
 4816      72766564 
 4816      3800
 4817              	.LASF262:
 4818 0bad 6D627374 		.ascii	"mbstowcs\000"
 4818      6F776373 
 4818      00
 4819              	.LASF105:
 4820 0bb6 50494F5F 		.ascii	"PIO_AIMER\000"
 4820      41494D45 
 4820      5200
 4821              	.LASF61:
 4822 0bc0 49544D5F 		.ascii	"ITM_RxBuffer\000"
 4822      52784275 
 4822      66666572 
 4822      00
 4823              	.LASF384:
 4824 0bcd 55415254 		.ascii	"UARTClass\000"
 4824      436C6173 
 4824      7300
 4825              	.LASF370:
 4826 0bd7 70506F72 		.ascii	"pPort\000"
 4826      7400
 4827              	.LASF34:
 4828 0bdd 696E7431 		.ascii	"int16_t\000"
 4828      365F7400 
 4829              	.LASF228:
 4830 0be5 5F5F7366 		.ascii	"__sf\000"
 4830      00
 4831              	.LASF95:
 4832 0bea 50494F5F 		.ascii	"PIO_IFSCSR\000"
ARM GAS  /tmp/ccuadTPt.s 			page 96


 4832      49465343 
 4832      535200
 4833              	.LASF114:
 4834 0bf5 50494F5F 		.ascii	"PIO_REHLSR\000"
 4834      5245484C 
 4834      535200
 4835              	.LASF215:
 4836 0c00 5F637572 		.ascii	"_current_locale\000"
 4836      72656E74 
 4836      5F6C6F63 
 4836      616C6500 
 4837              	.LASF181:
 4838 0c10 5F646174 		.ascii	"_data\000"
 4838      6100
 4839              	.LASF136:
 4840 0c16 5F5F7763 		.ascii	"__wchb\000"
 4840      686200
 4841              	.LASF386:
 4842 0c1d 5F646179 		.ascii	"_daylight\000"
 4842      6C696768 
 4842      7400
 4843              	.LASF414:
 4844 0c27 3350696F 		.ascii	"3Pio\000"
 4844      00
 4845              	.LASF247:
 4846 0c2c 366C6469 		.ascii	"6ldiv_t\000"
 4846      765F7400 
 4847              	.LASF170:
 4848 0c34 5F66696C 		.ascii	"_file\000"
 4848      6500
 4849              	.LASF286:
 4850 0c3a 5F5F6664 		.ascii	"__fdlibm_ieee\000"
 4850      6C69626D 
 4850      5F696565 
 4850      6500
 4851              	.LASF315:
 4852 0c48 4E4F545F 		.ascii	"NOT_ON_TIMER\000"
 4852      4F4E5F54 
 4852      494D4552 
 4852      00
 4853              	.LASF189:
 4854 0c55 5F6C6F63 		.ascii	"_localtime_buf\000"
 4854      616C7469 
 4854      6D655F62 
 4854      756600
 4855              	.LASF207:
 4856 0c64 5F756E75 		.ascii	"_unused\000"
 4856      73656400 
 4857              	.LASF9:
 4858 0c6c 5F5F7569 		.ascii	"__uint8_t\000"
 4858      6E74385F 
 4858      7400
 4859              	.LASF224:
 4860 0c76 5F6E6577 		.ascii	"_new\000"
 4860      00
 4861              	.LASF222:
 4862 0c7b 5F637674 		.ascii	"_cvtlen\000"
ARM GAS  /tmp/ccuadTPt.s 			page 97


 4862      6C656E00 
 4863              	.LASF143:
 4864 0c83 5F6D6178 		.ascii	"_maxwds\000"
 4864      77647300 
 4865              	.LASF387:
 4866 0c8b 5F747A6E 		.ascii	"_tzname\000"
 4866      616D6500 
 4867              	.LASF214:
 4868 0c93 5F637572 		.ascii	"_current_category\000"
 4868      72656E74 
 4868      5F636174 
 4868      65676F72 
 4868      7900
 4869              	.LASF409:
 4870 0ca5 474E5520 		.ascii	"GNU C++14 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -m"
 4870      432B2B31 
 4870      3420362E 
 4870      332E3120 
 4870      32303137 
 4871 0cd8 6670753D 		.ascii	"fpu=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu++14 -"
 4871      66707635 
 4871      2D643136 
 4871      202D6D66 
 4871      6C6F6174 
 4872 0d0b 6666756E 		.ascii	"ffunction-sections -fdata-sections -fno-threadsafe-"
 4872      6374696F 
 4872      6E2D7365 
 4872      6374696F 
 4872      6E73202D 
 4873 0d3e 73746174 		.ascii	"statics -fno-rtti -fno-exceptions -fsingle-precisio"
 4873      69637320 
 4873      2D666E6F 
 4873      2D727474 
 4873      69202D66 
 4874 0d71 6E2D636F 		.ascii	"n-constant\000"
 4874      6E737461 
 4874      6E7400
 4875              	.LASF47:
 4876 0d7c 75696E74 		.ascii	"uint_least32_t\000"
 4876      5F6C6561 
 4876      73743332 
 4876      5F7400
 4877              	.LASF22:
 4878 0d8b 5F5F696E 		.ascii	"__int_least8_t\000"
 4878      745F6C65 
 4878      61737438 
 4878      5F7400
 4879              	.LASF41:
 4880 0d9a 75696E74 		.ascii	"uintptr_t\000"
 4880      7074725F 
 4880      7400
 4881              	.LASF147:
 4882 0da4 5F5F746D 		.ascii	"__tm\000"
 4882      00
 4883              	.LASF182:
 4884 0da9 5F6C6F63 		.ascii	"_lock\000"
 4884      6B00
ARM GAS  /tmp/ccuadTPt.s 			page 98


 4885              	.LASF316:
 4886 0daf 5443305F 		.ascii	"TC0_CHA0\000"
 4886      43484130 
 4886      00
 4887              	.LASF318:
 4888 0db8 5443305F 		.ascii	"TC0_CHA1\000"
 4888      43484131 
 4888      00
 4889              	.LASF320:
 4890 0dc1 5443305F 		.ascii	"TC0_CHA2\000"
 4890      43484132 
 4890      00
 4891              	.LASF400:
 4892 0dca 50776D46 		.ascii	"PwmFastClock\000"
 4892      61737443 
 4892      6C6F636B 
 4892      00
 4893              	.LASF269:
 4894 0dd7 73747274 		.ascii	"strtoul\000"
 4894      6F756C00 
 4895              	.LASF248:
 4896 0ddf 6C646976 		.ascii	"ldiv_t\000"
 4896      5F7400
 4897              	.LASF382:
 4898 0de6 53455249 		.ascii	"SERIAL_BUFFER_SIZE\000"
 4898      414C5F42 
 4898      55464645 
 4898      525F5349 
 4898      5A4500
 4899              	.LASF282:
 4900 0df9 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 4900      6972715F 
 4900      63726974 
 4900      6963616C 
 4900      5F736563 
 4901              	.LASF232:
 4902 0e1a 5F6E696F 		.ascii	"_niobs\000"
 4902      627300
 4903              	.LASF134:
 4904 0e21 77696E74 		.ascii	"wint_t\000"
 4904      5F7400
 4905              	.LASF278:
 4906 0e28 666C6F61 		.ascii	"float\000"
 4906      7400
 4907              	.LASF36:
 4908 0e2e 696E7433 		.ascii	"int32_t\000"
 4908      325F7400 
 4909              	.LASF46:
 4910 0e36 696E745F 		.ascii	"int_least32_t\000"
 4910      6C656173 
 4910      7433325F 
 4910      7400
 4911              	.LASF65:
 4912 0e44 50494F5F 		.ascii	"PIO_PSR\000"
 4912      50535200 
 4913              	.LASF159:
 4914 0e4c 5F64736F 		.ascii	"_dso_handle\000"
ARM GAS  /tmp/ccuadTPt.s 			page 99


 4914      5F68616E 
 4914      646C6500 
 4915              	.LASF383:
 4916 0e58 5072696E 		.ascii	"Print\000"
 4916      7400
 4917              	.LASF397:
 4918 0e5e 4150494E 		.ascii	"APIN_GMAC_PHY_RESET\000"
 4918      5F474D41 
 4918      435F5048 
 4918      595F5245 
 4918      53455400 
 4919              	.LASF223:
 4920 0e72 5F637674 		.ascii	"_cvtbuf\000"
 4920      62756600 
 4921              	.LASF10:
 4922 0e7a 756E7369 		.ascii	"unsigned char\000"
 4922      676E6564 
 4922      20636861 
 4922      7200
 4923              	.LASF112:
 4924 0e88 52657365 		.ascii	"Reserved10\000"
 4924      72766564 
 4924      313000
 4925              	.LASF116:
 4926 0e93 52657365 		.ascii	"Reserved11\000"
 4926      72766564 
 4926      313100
 4927              	.LASF120:
 4928 0e9e 52657365 		.ascii	"Reserved12\000"
 4928      72766564 
 4928      313200
 4929              	.LASF122:
 4930 0ea9 52657365 		.ascii	"Reserved13\000"
 4930      72766564 
 4930      313300
 4931              	.LASF124:
 4932 0eb4 52657365 		.ascii	"Reserved14\000"
 4932      72766564 
 4932      313400
 4933              	.LASF252:
 4934 0ebf 7375626F 		.ascii	"suboptarg\000"
 4934      70746172 
 4934      6700
 4935              	.LASF99:
 4936 0ec9 50494F5F 		.ascii	"PIO_PPDSR\000"
 4936      50504453 
 4936      5200
 4937              	.LASF317:
 4938 0ed3 5443305F 		.ascii	"TC0_CHB0\000"
 4938      43484230 
 4938      00
 4939              	.LASF319:
 4940 0edc 5443305F 		.ascii	"TC0_CHB1\000"
 4940      43484231 
 4940      00
 4941              	.LASF321:
 4942 0ee5 5443305F 		.ascii	"TC0_CHB2\000"
ARM GAS  /tmp/ccuadTPt.s 			page 100


 4942      43484232 
 4942      00
 4943              	.LASF413:
 4944 0eee 6465636C 		.ascii	"decltype(nullptr)\000"
 4944      74797065 
 4944      286E756C 
 4944      6C707472 
 4944      2900
 4945              	.LASF277:
 4946 0f00 73747274 		.ascii	"strtof\000"
 4946      6F6600
 4947              	.LASF51:
 4948 0f07 75696E74 		.ascii	"uint_fast8_t\000"
 4948      5F666173 
 4948      74385F74 
 4948      00
 4949              	.LASF199:
 4950 0f14 5F6D6272 		.ascii	"_mbrlen_state\000"
 4950      6C656E5F 
 4950      73746174 
 4950      6500
 4951              	.LASF97:
 4952 0f22 50494F5F 		.ascii	"PIO_PPDDR\000"
 4952      50504444 
 4952      5200
 4953              	.LASF271:
 4954 0f2c 77637374 		.ascii	"wcstombs\000"
 4954      6F6D6273 
 4954      00
 4955              	.LASF291:
 4956 0f35 5F5F6664 		.ascii	"__fdlibm_version\000"
 4956      6C69626D 
 4956      5F766572 
 4956      73696F6E 
 4956      00
 4957              	.LASF89:
 4958 0f46 50494F5F 		.ascii	"PIO_PUSR\000"
 4958      50555352 
 4958      00
 4959              	.LASF375:
 4960 0f4f 756C5069 		.ascii	"ulPinAttribute\000"
 4960      6E417474 
 4960      72696275 
 4960      746500
 4961              	.LASF398:
 4962 0f5e 4150494E 		.ascii	"APINS_GMAC_PHY\000"
 4962      535F474D 
 4962      41435F50 
 4962      485900
 4963              	.LASF165:
 4964 0f6d 5F5F7362 		.ascii	"__sbuf\000"
 4964      756600
 4965              	.LASF246:
 4966 0f74 6469765F 		.ascii	"div_t\000"
 4966      7400
 4967              	.LASF196:
 4968 0f7a 5F6C3634 		.ascii	"_l64a_buf\000"
ARM GAS  /tmp/ccuadTPt.s 			page 101


 4968      615F6275 
 4968      6600
 4969              	.LASF396:
 4970 0f84 4150494E 		.ascii	"APIN_GMAC_PHY_INTERRUPT\000"
 4970      5F474D41 
 4970      435F5048 
 4970      595F494E 
 4970      54455252 
 4971              	.LASF231:
 4972 0f9c 5F676C75 		.ascii	"_glue\000"
 4972      6500
 4973              	.LASF39:
 4974 0fa2 75696E74 		.ascii	"uint64_t\000"
 4974      36345F74 
 4974      00
 4975              	.LASF411:
 4976 0fab 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 4976      652F746F 
 4976      72626A6F 
 4976      726E2F65 
 4976      636C6970 
 4977              	.LASF303:
 4978 0fda 5F455057 		.ascii	"_EPWMChannel\000"
 4978      4D436861 
 4978      6E6E656C 
 4978      00
 4979              	.LASF227:
 4980 0fe7 5F5F7367 		.ascii	"__sglue\000"
 4980      6C756500 
 4981              	.LASF198:
 4982 0fef 5F676574 		.ascii	"_getdate_err\000"
 4982      64617465 
 4982      5F657272 
 4982      00
 4983              	.LASF187:
 4984 0ffc 5F737472 		.ascii	"_strtok_last\000"
 4984      746F6B5F 
 4984      6C617374 
 4984      00
 4985              	.LASF194:
 4986 1009 5F6D6274 		.ascii	"_mbtowc_state\000"
 4986      6F77635F 
 4986      73746174 
 4986      6500
 4987              	.LASF393:
 4988 1017 4150494E 		.ascii	"APIN_UART1_TXD\000"
 4988      5F554152 
 4988      54315F54 
 4988      584400
 4989              	.LASF249:
 4990 1026 376C6C64 		.ascii	"7lldiv_t\000"
 4990      69765F74 
 4990      00
 4991              	.LASF85:
 4992 102f 50494F5F 		.ascii	"PIO_MDSR\000"
 4992      4D445352 
 4992      00
ARM GAS  /tmp/ccuadTPt.s 			page 102


 4993              	.LASF395:
 4994 1038 4150494E 		.ascii	"APIN_HSMCI_DATA\000"
 4994      5F48534D 
 4994      43495F44 
 4994      41544100 
 4995              	.LASF158:
 4996 1048 5F666E61 		.ascii	"_fnargs\000"
 4996      72677300 
 4997              	.LASF8:
 4998 1050 7369676E 		.ascii	"signed char\000"
 4998      65642063 
 4998      68617200 
 4999              	.LASF127:
 5000 105c 50494F5F 		.ascii	"PIO_PCIDR\000"
 5000      50434944 
 5000      5200
 5001              	.LASF64:
 5002 1066 50494F5F 		.ascii	"PIO_PDR\000"
 5002      50445200 
 5003              	.LASF185:
 5004 106e 5F726565 		.ascii	"_reent\000"
 5004      6E7400
 5005              	.LASF14:
 5006 1075 73686F72 		.ascii	"short unsigned int\000"
 5006      7420756E 
 5006      7369676E 
 5006      65642069 
 5006      6E7400
 5007              	.LASF250:
 5008 1088 6C6C6469 		.ascii	"lldiv_t\000"
 5008      765F7400 
 5009              	.LASF84:
 5010 1090 50494F5F 		.ascii	"PIO_MDDR\000"
 5010      4D444452 
 5010      00
 5011              	.LASF254:
 5012 1099 61746F66 		.ascii	"atof\000"
 5012      00
 5013              	.LASF98:
 5014 109e 50494F5F 		.ascii	"PIO_PPDER\000"
 5014      50504445 
 5014      5200
 5015              	.LASF256:
 5016 10a8 61746F69 		.ascii	"atoi\000"
 5016      00
 5017              	.LASF257:
 5018 10ad 61746F6C 		.ascii	"atol\000"
 5018      00
 5019              	.LASF128:
 5020 10b2 50494F5F 		.ascii	"PIO_PCIMR\000"
 5020      5043494D 
 5020      5200
 5021              	.LASF160:
 5022 10bc 5F666E74 		.ascii	"_fntypes\000"
 5022      79706573 
 5022      00
 5023              	.LASF167:
ARM GAS  /tmp/ccuadTPt.s 			page 103


 5024 10c5 5F73697A 		.ascii	"_size\000"
 5024      6500
 5025              	.LASF255:
 5026 10cb 646F7562 		.ascii	"double\000"
 5026      6C6500
 5027              	.LASF307:
 5028 10d2 50574D5F 		.ascii	"PWM_CH2\000"
 5028      43483200 
 5029              	.LASF378:
 5030 10da 756C5443 		.ascii	"ulTCChannel\000"
 5030      4368616E 
 5030      6E656C00 
 5031              	.LASF132:
 5032 10e6 5F6F6666 		.ascii	"_off_t\000"
 5032      5F7400
 5033              	.LASF45:
 5034 10ed 75696E74 		.ascii	"uint_least16_t\000"
 5034      5F6C6561 
 5034      73743136 
 5034      5F7400
 5035              	.LASF178:
 5036 10fc 5F6E6275 		.ascii	"_nbuf\000"
 5036      6600
 5037              	.LASF186:
 5038 1102 5F756E75 		.ascii	"_unused_rand\000"
 5038      7365645F 
 5038      72616E64 
 5038      00
 5039              	.LASF221:
 5040 110f 5F667265 		.ascii	"_freelist\000"
 5040      656C6973 
 5040      7400
 5041              	.LASF304:
 5042 1119 4E4F545F 		.ascii	"NOT_ON_PWM\000"
 5042      4F4E5F50 
 5042      574D00
 5043              	.LASF184:
 5044 1124 5F666C61 		.ascii	"_flags2\000"
 5044      67733200 
 5045              	.LASF161:
 5046 112c 5F69735F 		.ascii	"_is_cxa\000"
 5046      63786100 
 5047              	.LASF107:
 5048 1134 50494F5F 		.ascii	"PIO_AIMMR\000"
 5048      41494D4D 
 5048      5200
 5049              	.LASF235:
 5050 113e 5F736565 		.ascii	"_seed\000"
 5050      6400
 5051              	.LASF175:
 5052 1144 5F736565 		.ascii	"_seek\000"
 5052      6B00
 5053              	.LASF292:
 5054 114a 5F70696F 		.ascii	"_pio_type\000"
 5054      5F747970 
 5054      6500
 5055              	.LASF96:
ARM GAS  /tmp/ccuadTPt.s 			page 104


 5056 1154 50494F5F 		.ascii	"PIO_SCDR\000"
 5056      53434452 
 5056      00
 5057              	.LASF83:
 5058 115d 50494F5F 		.ascii	"PIO_MDER\000"
 5058      4D444552 
 5058      00
 5059              	.LASF211:
 5060 1166 5F737464 		.ascii	"_stderr\000"
 5060      65727200 
 5061              	.LASF206:
 5062 116e 5F6E6D61 		.ascii	"_nmalloc\000"
 5062      6C6C6F63 
 5062      00
 5063              	.LASF233:
 5064 1177 5F696F62 		.ascii	"_iobs\000"
 5064      7300
 5065              	.LASF265:
 5066 117d 71736F72 		.ascii	"qsort\000"
 5066      7400
 5067              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
