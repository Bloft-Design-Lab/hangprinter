ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 1


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
  13              		.file	"tasks.c"
  14              		.text
  15              		.section	.text.prvIdleTask,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	prvIdleTask, %function
  23              	prvIdleTask:
  24              		@ Volatile: function does not return.
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 064A     		ldr	r2, .L6
  29 0002 0748     		ldr	r0, .L6+4
  30 0004 4FF08051 		mov	r1, #268435456
  31              	.L2:
  32 0008 1368     		ldr	r3, [r2]
  33 000a 012B     		cmp	r3, #1
  34 000c FCD9     		bls	.L2
  35 000e 0160     		str	r1, [r0]
  36              		.syntax unified
  37              	@ 3266 "../src/tasks.c" 1
  38 0010 BFF34F8F 		dsb
  39              	@ 0 "" 2
  40              	@ 3266 "../src/tasks.c" 1
  41 0014 BFF36F8F 		isb
  42              	@ 0 "" 2
  43              		.thumb
  44              		.syntax unified
  45 0018 F6E7     		b	.L2
  46              	.L7:
  47 001a 00BF     		.align	2
  48              	.L6:
  49 001c 00000000 		.word	.LANCHOR0
  50 0020 04ED00E0 		.word	-536810236
  51              		.size	prvIdleTask, .-prvIdleTask
  52              		.section	.text.prvResetNextTaskUnblockTime.part.0,"ax",%progbits
  53              		.align	1
  54              		.p2align 2,,3
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 2


  58              		.fpu fpv4-sp-d16
  59              		.type	prvResetNextTaskUnblockTime.part.0, %function
  60              	prvResetNextTaskUnblockTime.part.0:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63              		@ link register save eliminated.
  64 0000 034A     		ldr	r2, .L9
  65 0002 044B     		ldr	r3, .L9+4
  66 0004 1268     		ldr	r2, [r2]
  67 0006 D268     		ldr	r2, [r2, #12]
  68 0008 D268     		ldr	r2, [r2, #12]
  69 000a 5268     		ldr	r2, [r2, #4]
  70 000c 1A60     		str	r2, [r3]
  71 000e 7047     		bx	lr
  72              	.L10:
  73              		.align	2
  74              	.L9:
  75 0010 00000000 		.word	.LANCHOR1
  76 0014 00000000 		.word	.LANCHOR2
  77              		.size	prvResetNextTaskUnblockTime.part.0, .-prvResetNextTaskUnblockTime.part.0
  78              		.section	.text.prvTaskIsTaskSuspended,"ax",%progbits
  79              		.align	1
  80              		.p2align 2,,3
  81              		.syntax unified
  82              		.thumb
  83              		.thumb_func
  84              		.fpu fpv4-sp-d16
  85              		.type	prvTaskIsTaskSuspended, %function
  86              	prvTaskIsTaskSuspended:
  87              		@ args = 0, pretend = 0, frame = 0
  88              		@ frame_needed = 0, uses_anonymous_args = 0
  89 0000 10B5     		push	{r4, lr}
  90 0002 0446     		mov	r4, r0
  91 0004 68B1     		cbz	r0, .L17
  92              	.L12:
  93 0006 0A4B     		ldr	r3, .L19
  94 0008 6269     		ldr	r2, [r4, #20]
  95 000a 9A42     		cmp	r2, r3
  96 000c 01D0     		beq	.L18
  97              	.L15:
  98 000e 0020     		movs	r0, #0
  99 0010 10BD     		pop	{r4, pc}
 100              	.L18:
 101 0012 A06A     		ldr	r0, [r4, #40]
 102 0014 074B     		ldr	r3, .L19+4
 103 0016 9842     		cmp	r0, r3
 104 0018 F9D0     		beq	.L15
 105 001a B0FA80F0 		clz	r0, r0
 106 001e 4009     		lsrs	r0, r0, #5
 107 0020 10BD     		pop	{r4, pc}
 108              	.L17:
 109 0022 0549     		ldr	r1, .L19+8
 110 0024 40F2CC60 		movw	r0, #1740
 111 0028 FFF7FEFF 		bl	vAssertCalled
 112 002c EBE7     		b	.L12
 113              	.L20:
 114 002e 00BF     		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 3


 115              	.L19:
 116 0030 00000000 		.word	.LANCHOR3
 117 0034 00000000 		.word	.LANCHOR4
 118 0038 00000000 		.word	.LC0
 119              		.size	prvTaskIsTaskSuspended, .-prvTaskIsTaskSuspended
 120              		.section	.text.prvAddCurrentTaskToDelayedList,"ax",%progbits
 121              		.align	1
 122              		.p2align 2,,3
 123              		.syntax unified
 124              		.thumb
 125              		.thumb_func
 126              		.fpu fpv4-sp-d16
 127              		.type	prvAddCurrentTaskToDelayedList, %function
 128              	prvAddCurrentTaskToDelayedList:
 129              		@ args = 0, pretend = 0, frame = 0
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 132 0002 1B4B     		ldr	r3, .L34
 133 0004 1B4E     		ldr	r6, .L34+4
 134 0006 1C68     		ldr	r4, [r3]
 135 0008 3368     		ldr	r3, [r6]
 136 000a 0546     		mov	r5, r0
 137 000c 181D     		adds	r0, r3, #4
 138 000e 0F46     		mov	r7, r1
 139 0010 FFF7FEFF 		bl	uxListRemove
 140 0014 40B9     		cbnz	r0, .L22
 141 0016 3368     		ldr	r3, [r6]
 142 0018 1749     		ldr	r1, .L34+8
 143 001a D86A     		ldr	r0, [r3, #44]
 144 001c 0B68     		ldr	r3, [r1]
 145 001e 0122     		movs	r2, #1
 146 0020 8240     		lsls	r2, r2, r0
 147 0022 23EA0203 		bic	r3, r3, r2
 148 0026 0B60     		str	r3, [r1]
 149              	.L22:
 150 0028 6B1C     		adds	r3, r5, #1
 151 002a 17D0     		beq	.L32
 152              	.L23:
 153 002c 3368     		ldr	r3, [r6]
 154 002e 6419     		adds	r4, r4, r5
 155 0030 5C60     		str	r4, [r3, #4]
 156 0032 0BD2     		bcs	.L33
 157 0034 114B     		ldr	r3, .L34+12
 158 0036 1868     		ldr	r0, [r3]
 159 0038 3168     		ldr	r1, [r6]
 160 003a 0431     		adds	r1, r1, #4
 161 003c FFF7FEFF 		bl	vListInsert
 162 0040 0F4B     		ldr	r3, .L34+16
 163 0042 1A68     		ldr	r2, [r3]
 164 0044 A242     		cmp	r2, r4
 165 0046 88BF     		it	hi
 166 0048 1C60     		strhi	r4, [r3]
 167 004a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 168              	.L33:
 169 004c 0D4B     		ldr	r3, .L34+20
 170 004e 1868     		ldr	r0, [r3]
 171 0050 3168     		ldr	r1, [r6]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 4


 172 0052 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 173 0056 0431     		adds	r1, r1, #4
 174 0058 FFF7FEBF 		b	vListInsert
 175              	.L32:
 176 005c 002F     		cmp	r7, #0
 177 005e E5D0     		beq	.L23
 178 0060 3168     		ldr	r1, [r6]
 179 0062 0948     		ldr	r0, .L34+24
 180 0064 0431     		adds	r1, r1, #4
 181 0066 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 182 006a FFF7FEBF 		b	vListInsertEnd
 183              	.L35:
 184 006e 00BF     		.align	2
 185              	.L34:
 186 0070 00000000 		.word	.LANCHOR5
 187 0074 00000000 		.word	.LANCHOR6
 188 0078 00000000 		.word	.LANCHOR7
 189 007c 00000000 		.word	.LANCHOR1
 190 0080 00000000 		.word	.LANCHOR2
 191 0084 00000000 		.word	.LANCHOR8
 192 0088 00000000 		.word	.LANCHOR3
 193              		.size	prvAddCurrentTaskToDelayedList, .-prvAddCurrentTaskToDelayedList
 194              		.section	.text.vTaskSwitchContext.part.6,"ax",%progbits
 195              		.align	1
 196              		.p2align 2,,3
 197              		.syntax unified
 198              		.thumb
 199              		.thumb_func
 200              		.fpu fpv4-sp-d16
 201              		.type	vTaskSwitchContext.part.6, %function
 202              	vTaskSwitchContext.part.6:
 203              		@ args = 0, pretend = 0, frame = 0
 204              		@ frame_needed = 0, uses_anonymous_args = 0
 205 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 206 0002 1F4B     		ldr	r3, .L47
 207 0004 1F4F     		ldr	r7, .L47+4
 208 0006 0022     		movs	r2, #0
 209 0008 1A60     		str	r2, [r3]
 210 000a 3B68     		ldr	r3, [r7]
 211 000c 1B6B     		ldr	r3, [r3, #48]
 212 000e 1A68     		ldr	r2, [r3]
 213 0010 B2F1A53F 		cmp	r2, #-1515870811
 214 0014 03D1     		bne	.L37
 215 0016 5A68     		ldr	r2, [r3, #4]
 216 0018 B2F1A53F 		cmp	r2, #-1515870811
 217 001c 26D0     		beq	.L45
 218              	.L37:
 219 001e 3868     		ldr	r0, [r7]
 220 0020 3968     		ldr	r1, [r7]
 221 0022 3431     		adds	r1, r1, #52
 222 0024 FFF7FEFF 		bl	vApplicationStackOverflowHook
 223              	.L38:
 224 0028 174B     		ldr	r3, .L47+8
 225 002a 1C68     		ldr	r4, [r3]
 226              		.syntax unified
 227              	@ 135 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 228 002c B4FA84F4 		clz r4, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 5


 229              	@ 0 "" 2
 230              		.thumb
 231              		.syntax unified
 232 0030 E4B2     		uxtb	r4, r4
 233 0032 C4F11F05 		rsb	r5, r4, #31
 234 0036 AC00     		lsls	r4, r5, #2
 235 0038 6319     		adds	r3, r4, r5
 236 003a 9B00     		lsls	r3, r3, #2
 237 003c 134E     		ldr	r6, .L47+12
 238 003e F358     		ldr	r3, [r6, r3]
 239 0040 73B1     		cbz	r3, .L46
 240              	.L39:
 241 0042 2C44     		add	r4, r4, r5
 242 0044 A400     		lsls	r4, r4, #2
 243 0046 3219     		adds	r2, r6, r4
 244 0048 0834     		adds	r4, r4, #8
 245 004a 5368     		ldr	r3, [r2, #4]
 246 004c 5B68     		ldr	r3, [r3, #4]
 247 004e 5360     		str	r3, [r2, #4]
 248 0050 3444     		add	r4, r4, r6
 249 0052 A342     		cmp	r3, r4
 250 0054 04BF     		itt	eq
 251 0056 5B68     		ldreq	r3, [r3, #4]
 252 0058 5360     		streq	r3, [r2, #4]
 253 005a DB68     		ldr	r3, [r3, #12]
 254 005c 3B60     		str	r3, [r7]
 255 005e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 256              	.L46:
 257 0060 0B49     		ldr	r1, .L47+16
 258 0062 4FF43560 		mov	r0, #2896
 259 0066 FFF7FEFF 		bl	vAssertCalled
 260 006a EAE7     		b	.L39
 261              	.L45:
 262 006c 9A68     		ldr	r2, [r3, #8]
 263 006e B2F1A53F 		cmp	r2, #-1515870811
 264 0072 D4D1     		bne	.L37
 265 0074 DB68     		ldr	r3, [r3, #12]
 266 0076 B3F1A53F 		cmp	r3, #-1515870811
 267 007a D0D1     		bne	.L37
 268 007c D4E7     		b	.L38
 269              	.L48:
 270 007e 00BF     		.align	2
 271              	.L47:
 272 0080 00000000 		.word	.LANCHOR9
 273 0084 00000000 		.word	.LANCHOR6
 274 0088 00000000 		.word	.LANCHOR7
 275 008c 00000000 		.word	.LANCHOR0
 276 0090 00000000 		.word	.LC0
 277              		.size	vTaskSwitchContext.part.6, .-vTaskSwitchContext.part.6
 278              		.section	.text.xTaskCreateStatic,"ax",%progbits
 279              		.align	1
 280              		.p2align 2,,3
 281              		.global	xTaskCreateStatic
 282              		.syntax unified
 283              		.thumb
 284              		.thumb_func
 285              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 6


 286              		.type	xTaskCreateStatic, %function
 287              	xTaskCreateStatic:
 288              		@ args = 12, pretend = 0, frame = 8
 289              		@ frame_needed = 0, uses_anonymous_args = 0
 290 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 291 0004 82B0     		sub	sp, sp, #8
 292 0006 DDE90B84 		ldrd	r8, r4, [sp, #44]
 293 000a 0646     		mov	r6, r0
 294 000c 0D46     		mov	r5, r1
 295 000e 9146     		mov	r9, r2
 296 0010 1F46     		mov	r7, r3
 297 0012 B8F1000F 		cmp	r8, #0
 298 0016 00F0A680 		beq	.L73
 299              	.L50:
 300 001a 002C     		cmp	r4, #0
 301 001c 00F08F80 		beq	.L74
 302 0020 5823     		movs	r3, #88
 303 0022 0193     		str	r3, [sp, #4]
 304 0024 019B     		ldr	r3, [sp, #4]
 305 0026 582B     		cmp	r3, #88
 306 0028 04D0     		beq	.L61
 307 002a 6849     		ldr	r1, .L77
 308 002c 40F25920 		movw	r0, #601
 309 0030 FFF7FEFF 		bl	vAssertCalled
 310              	.L61:
 311 0034 B8F1000F 		cmp	r8, #0
 312 0038 03D1     		bne	.L75
 313              	.L54:
 314 003a 0020     		movs	r0, #0
 315 003c 02B0     		add	sp, sp, #8
 316              		@ sp needed
 317 003e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 318              	.L75:
 319 0042 4FEA8909 		lsl	r9, r9, #2
 320 0046 4A46     		mov	r2, r9
 321 0048 C4F83080 		str	r8, [r4, #48]
 322 004c 4046     		mov	r0, r8
 323 004e A521     		movs	r1, #165
 324 0050 FFF7FEFF 		bl	memset
 325 0054 236B     		ldr	r3, [r4, #48]
 326 0056 A9F10409 		sub	r9, r9, #4
 327 005a 9944     		add	r9, r9, r3
 328 005c 29F00709 		bic	r9, r9, #7
 329 0060 6B1E     		subs	r3, r5, #1
 330 0062 04F13302 		add	r2, r4, #51
 331 0066 0935     		adds	r5, r5, #9
 332              	.L56:
 333 0068 13F8010F 		ldrb	r0, [r3, #1]!	@ zero_extendqisi2
 334 006c 02F8010F 		strb	r0, [r2, #1]!
 335 0070 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 336 0072 08B1     		cbz	r0, .L55
 337 0074 AB42     		cmp	r3, r5
 338 0076 F7D1     		bne	.L56
 339              	.L55:
 340 0078 0A9D     		ldr	r5, [sp, #40]
 341 007a 042D     		cmp	r5, #4
 342 007c 28BF     		it	cs
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 7


 343 007e 0425     		movcs	r5, #4
 344 0080 4FF0000A 		mov	r10, #0
 345 0084 04F10408 		add	r8, r4, #4
 346 0088 E562     		str	r5, [r4, #44]
 347 008a A564     		str	r5, [r4, #72]
 348 008c 4046     		mov	r0, r8
 349 008e 84F83DA0 		strb	r10, [r4, #61]
 350 0092 C4F84CA0 		str	r10, [r4, #76]
 351 0096 FFF7FEFF 		bl	vListInitialiseItem
 352 009a C5F10505 		rsb	r5, r5, #5
 353 009e 04F11800 		add	r0, r4, #24
 354 00a2 FFF7FEFF 		bl	vListInitialiseItem
 355 00a6 3A46     		mov	r2, r7
 356 00a8 3146     		mov	r1, r6
 357 00aa C4F850A0 		str	r10, [r4, #80]
 358 00ae A561     		str	r5, [r4, #24]
 359 00b0 2461     		str	r4, [r4, #16]
 360 00b2 84F854A0 		strb	r10, [r4, #84]
 361 00b6 6462     		str	r4, [r4, #36]
 362 00b8 4846     		mov	r0, r9
 363 00ba FFF7FEFF 		bl	pxPortInitialiseStack
 364 00be 2060     		str	r0, [r4]
 365 00c0 FFF7FEFF 		bl	vPortEnterCritical
 366 00c4 424A     		ldr	r2, .L77+4
 367 00c6 434E     		ldr	r6, .L77+8
 368 00c8 1368     		ldr	r3, [r2]
 369 00ca 0133     		adds	r3, r3, #1
 370 00cc 1360     		str	r3, [r2]
 371 00ce 3368     		ldr	r3, [r6]
 372 00d0 002B     		cmp	r3, #0
 373 00d2 4ED0     		beq	.L76
 374 00d4 404F     		ldr	r7, .L77+12
 375 00d6 E36A     		ldr	r3, [r4, #44]
 376 00d8 3A68     		ldr	r2, [r7]
 377 00da 22B9     		cbnz	r2, .L59
 378 00dc 3268     		ldr	r2, [r6]
 379 00de D26A     		ldr	r2, [r2, #44]
 380 00e0 9342     		cmp	r3, r2
 381 00e2 28BF     		it	cs
 382 00e4 3460     		strcs	r4, [r6]
 383              	.L59:
 384 00e6 3D4A     		ldr	r2, .L77+16
 385 00e8 DFF820C1 		ldr	ip, .L77+64
 386 00ec 1568     		ldr	r5, [r2]
 387 00ee DCF800E0 		ldr	lr, [ip]
 388 00f2 3B48     		ldr	r0, .L77+20
 389 00f4 0135     		adds	r5, r5, #1
 390 00f6 1560     		str	r5, [r2]
 391 00f8 0122     		movs	r2, #1
 392 00fa 9A40     		lsls	r2, r2, r3
 393 00fc 03EB8303 		add	r3, r3, r3, lsl #2
 394 0100 42EA0E02 		orr	r2, r2, lr
 395 0104 00EB8300 		add	r0, r0, r3, lsl #2
 396 0108 4146     		mov	r1, r8
 397 010a 2564     		str	r5, [r4, #64]
 398 010c CCF80020 		str	r2, [ip]
 399 0110 FFF7FEFF 		bl	vListInsertEnd
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 8


 400 0114 FFF7FEFF 		bl	vPortExitCritical
 401 0118 3B68     		ldr	r3, [r7]
 402 011a 03B3     		cbz	r3, .L72
 403 011c 3268     		ldr	r2, [r6]
 404 011e E36A     		ldr	r3, [r4, #44]
 405 0120 D26A     		ldr	r2, [r2, #44]
 406 0122 9A42     		cmp	r2, r3
 407 0124 1BD2     		bcs	.L72
 408 0126 2F4B     		ldr	r3, .L77+24
 409 0128 4FF08052 		mov	r2, #268435456
 410 012c 1A60     		str	r2, [r3]
 411              		.syntax unified
 412              	@ 1096 "../src/tasks.c" 1
 413 012e BFF34F8F 		dsb
 414              	@ 0 "" 2
 415              	@ 1096 "../src/tasks.c" 1
 416 0132 BFF36F8F 		isb
 417              	@ 0 "" 2
 418              		.thumb
 419              		.syntax unified
 420 0136 2046     		mov	r0, r4
 421 0138 02B0     		add	sp, sp, #8
 422              		@ sp needed
 423 013a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 424              	.L74:
 425 013e 2349     		ldr	r1, .L77
 426 0140 40F25120 		movw	r0, #593
 427 0144 FFF7FEFF 		bl	vAssertCalled
 428 0148 5823     		movs	r3, #88
 429 014a 0193     		str	r3, [sp, #4]
 430 014c 019B     		ldr	r3, [sp, #4]
 431 014e 582B     		cmp	r3, #88
 432 0150 3FF473AF 		beq	.L54
 433 0154 1D49     		ldr	r1, .L77
 434 0156 40F25920 		movw	r0, #601
 435 015a FFF7FEFF 		bl	vAssertCalled
 436              	.L72:
 437 015e 2046     		mov	r0, r4
 438 0160 02B0     		add	sp, sp, #8
 439              		@ sp needed
 440 0162 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 441              	.L73:
 442 0166 1949     		ldr	r1, .L77
 443 0168 4FF41470 		mov	r0, #592
 444 016c FFF7FEFF 		bl	vAssertCalled
 445 0170 53E7     		b	.L50
 446              	.L76:
 447 0172 3460     		str	r4, [r6]
 448 0174 1368     		ldr	r3, [r2]
 449 0176 012B     		cmp	r3, #1
 450 0178 02D0     		beq	.L58
 451 017a E36A     		ldr	r3, [r4, #44]
 452 017c 164F     		ldr	r7, .L77+12
 453 017e B2E7     		b	.L59
 454              	.L58:
 455 0180 1748     		ldr	r0, .L77+20
 456 0182 DFF88C90 		ldr	r9, .L77+68
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 9


 457 0186 184D     		ldr	r5, .L77+28
 458 0188 134F     		ldr	r7, .L77+12
 459 018a FFF7FEFF 		bl	vListInitialise
 460 018e 1748     		ldr	r0, .L77+32
 461 0190 FFF7FEFF 		bl	vListInitialise
 462 0194 1648     		ldr	r0, .L77+36
 463 0196 FFF7FEFF 		bl	vListInitialise
 464 019a 1648     		ldr	r0, .L77+40
 465 019c FFF7FEFF 		bl	vListInitialise
 466 01a0 1548     		ldr	r0, .L77+44
 467 01a2 FFF7FEFF 		bl	vListInitialise
 468 01a6 4846     		mov	r0, r9
 469 01a8 FFF7FEFF 		bl	vListInitialise
 470 01ac 2846     		mov	r0, r5
 471 01ae FFF7FEFF 		bl	vListInitialise
 472 01b2 1248     		ldr	r0, .L77+48
 473 01b4 FFF7FEFF 		bl	vListInitialise
 474 01b8 1148     		ldr	r0, .L77+52
 475 01ba FFF7FEFF 		bl	vListInitialise
 476 01be 114B     		ldr	r3, .L77+56
 477 01c0 114A     		ldr	r2, .L77+60
 478 01c2 C2F80090 		str	r9, [r2]
 479 01c6 1D60     		str	r5, [r3]
 480 01c8 E36A     		ldr	r3, [r4, #44]
 481 01ca 8CE7     		b	.L59
 482              	.L78:
 483              		.align	2
 484              	.L77:
 485 01cc 00000000 		.word	.LC0
 486 01d0 00000000 		.word	.LANCHOR10
 487 01d4 00000000 		.word	.LANCHOR6
 488 01d8 00000000 		.word	.LANCHOR13
 489 01dc 00000000 		.word	.LANCHOR14
 490 01e0 00000000 		.word	.LANCHOR0
 491 01e4 04ED00E0 		.word	-536810236
 492 01e8 00000000 		.word	.LANCHOR12
 493 01ec 14000000 		.word	.LANCHOR0+20
 494 01f0 28000000 		.word	.LANCHOR0+40
 495 01f4 3C000000 		.word	.LANCHOR0+60
 496 01f8 50000000 		.word	.LANCHOR0+80
 497 01fc 00000000 		.word	.LANCHOR4
 498 0200 00000000 		.word	.LANCHOR3
 499 0204 00000000 		.word	.LANCHOR8
 500 0208 00000000 		.word	.LANCHOR1
 501 020c 00000000 		.word	.LANCHOR7
 502 0210 00000000 		.word	.LANCHOR11
 503              		.size	xTaskCreateStatic, .-xTaskCreateStatic
 504              		.section	.text.eTaskGetState,"ax",%progbits
 505              		.align	1
 506              		.p2align 2,,3
 507              		.global	eTaskGetState
 508              		.syntax unified
 509              		.thumb
 510              		.thumb_func
 511              		.fpu fpv4-sp-d16
 512              		.type	eTaskGetState, %function
 513              	eTaskGetState:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 10


 514              		@ args = 0, pretend = 0, frame = 0
 515              		@ frame_needed = 0, uses_anonymous_args = 0
 516 0000 38B5     		push	{r3, r4, r5, lr}
 517 0002 0446     		mov	r4, r0
 518 0004 C8B1     		cbz	r0, .L88
 519              	.L80:
 520 0006 134B     		ldr	r3, .L90
 521 0008 1B68     		ldr	r3, [r3]
 522 000a A342     		cmp	r3, r4
 523 000c 11D0     		beq	.L82
 524 000e FFF7FEFF 		bl	vPortEnterCritical
 525 0012 6569     		ldr	r5, [r4, #20]
 526 0014 FFF7FEFF 		bl	vPortExitCritical
 527 0018 0F4B     		ldr	r3, .L90+4
 528 001a 1B68     		ldr	r3, [r3]
 529 001c 9D42     		cmp	r5, r3
 530 001e 0AD0     		beq	.L84
 531 0020 0E4B     		ldr	r3, .L90+8
 532 0022 1B68     		ldr	r3, [r3]
 533 0024 9D42     		cmp	r5, r3
 534 0026 06D0     		beq	.L84
 535 0028 0D4B     		ldr	r3, .L90+12
 536 002a 9D42     		cmp	r5, r3
 537 002c 0BD0     		beq	.L89
 538 002e 0120     		movs	r0, #1
 539 0030 38BD     		pop	{r3, r4, r5, pc}
 540              	.L82:
 541 0032 0020     		movs	r0, #0
 542 0034 38BD     		pop	{r3, r4, r5, pc}
 543              	.L84:
 544 0036 0220     		movs	r0, #2
 545 0038 38BD     		pop	{r3, r4, r5, pc}
 546              	.L88:
 547 003a 0A49     		ldr	r1, .L90+16
 548 003c 40F23B50 		movw	r0, #1339
 549 0040 FFF7FEFF 		bl	vAssertCalled
 550 0044 DFE7     		b	.L80
 551              	.L89:
 552 0046 A36A     		ldr	r3, [r4, #40]
 553 0048 002B     		cmp	r3, #0
 554 004a 14BF     		ite	ne
 555 004c 0220     		movne	r0, #2
 556 004e 0320     		moveq	r0, #3
 557 0050 38BD     		pop	{r3, r4, r5, pc}
 558              	.L91:
 559 0052 00BF     		.align	2
 560              	.L90:
 561 0054 00000000 		.word	.LANCHOR6
 562 0058 00000000 		.word	.LANCHOR1
 563 005c 00000000 		.word	.LANCHOR8
 564 0060 00000000 		.word	.LANCHOR3
 565 0064 00000000 		.word	.LC0
 566              		.size	eTaskGetState, .-eTaskGetState
 567              		.section	.text.uxTaskPriorityGet,"ax",%progbits
 568              		.align	1
 569              		.p2align 2,,3
 570              		.global	uxTaskPriorityGet
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 11


 571              		.syntax unified
 572              		.thumb
 573              		.thumb_func
 574              		.fpu fpv4-sp-d16
 575              		.type	uxTaskPriorityGet, %function
 576              	uxTaskPriorityGet:
 577              		@ args = 0, pretend = 0, frame = 0
 578              		@ frame_needed = 0, uses_anonymous_args = 0
 579 0000 10B5     		push	{r4, lr}
 580 0002 0446     		mov	r4, r0
 581 0004 FFF7FEFF 		bl	vPortEnterCritical
 582 0008 0CB9     		cbnz	r4, .L93
 583 000a 034B     		ldr	r3, .L95
 584 000c 1C68     		ldr	r4, [r3]
 585              	.L93:
 586 000e E46A     		ldr	r4, [r4, #44]
 587 0010 FFF7FEFF 		bl	vPortExitCritical
 588 0014 2046     		mov	r0, r4
 589 0016 10BD     		pop	{r4, pc}
 590              	.L96:
 591              		.align	2
 592              	.L95:
 593 0018 00000000 		.word	.LANCHOR6
 594              		.size	uxTaskPriorityGet, .-uxTaskPriorityGet
 595              		.section	.text.uxTaskPriorityGetFromISR,"ax",%progbits
 596              		.align	1
 597              		.p2align 2,,3
 598              		.global	uxTaskPriorityGetFromISR
 599              		.syntax unified
 600              		.thumb
 601              		.thumb_func
 602              		.fpu fpv4-sp-d16
 603              		.type	uxTaskPriorityGetFromISR, %function
 604              	uxTaskPriorityGetFromISR:
 605              		@ args = 0, pretend = 0, frame = 0
 606              		@ frame_needed = 0, uses_anonymous_args = 0
 607 0000 10B5     		push	{r4, lr}
 608 0002 0446     		mov	r4, r0
 609 0004 FFF7FEFF 		bl	vPortValidateInterruptPriority
 610              		.syntax unified
 611              	@ 212 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 612 0008 EFF31183 			mrs r3, basepri											
 613 000c 4FF05002 		mov r2, #80												
 614 0010 82F31188 		msr basepri, r2											
 615 0014 BFF36F8F 		isb														
 616 0018 BFF34F8F 		dsb														
 617              	
 618              	@ 0 "" 2
 619              		.thumb
 620              		.syntax unified
 621 001c 0CB9     		cbnz	r4, .L98
 622 001e 034A     		ldr	r2, .L100
 623 0020 1468     		ldr	r4, [r2]
 624              	.L98:
 625 0022 E06A     		ldr	r0, [r4, #44]
 626              		.syntax unified
 627              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 12


 628 0024 83F31188 			msr basepri, r3	
 629              	@ 0 "" 2
 630              		.thumb
 631              		.syntax unified
 632 0028 10BD     		pop	{r4, pc}
 633              	.L101:
 634 002a 00BF     		.align	2
 635              	.L100:
 636 002c 00000000 		.word	.LANCHOR6
 637              		.size	uxTaskPriorityGetFromISR, .-uxTaskPriorityGetFromISR
 638              		.section	.text.vTaskPrioritySet,"ax",%progbits
 639              		.align	1
 640              		.p2align 2,,3
 641              		.global	vTaskPrioritySet
 642              		.syntax unified
 643              		.thumb
 644              		.thumb_func
 645              		.fpu fpv4-sp-d16
 646              		.type	vTaskPrioritySet, %function
 647              	vTaskPrioritySet:
 648              		@ args = 0, pretend = 0, frame = 0
 649              		@ frame_needed = 0, uses_anonymous_args = 0
 650 0000 0429     		cmp	r1, #4
 651 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 652 0006 0446     		mov	r4, r0
 653 0008 53D8     		bhi	.L122
 654 000a 0D46     		mov	r5, r1
 655 000c FFF7FEFF 		bl	vPortEnterCritical
 656 0010 002C     		cmp	r4, #0
 657 0012 58D0     		beq	.L123
 658              	.L104:
 659 0014 A36C     		ldr	r3, [r4, #72]
 660 0016 9D42     		cmp	r5, r3
 661 0018 47D0     		beq	.L106
 662 001a 2D4A     		ldr	r2, .L124
 663 001c 09D9     		bls	.L107
 664 001e 1168     		ldr	r1, [r2]
 665 0020 A142     		cmp	r1, r4
 666 0022 53D0     		beq	.L114
 667 0024 1268     		ldr	r2, [r2]
 668 0026 D76A     		ldr	r7, [r2, #44]
 669 0028 AF42     		cmp	r7, r5
 670 002a 8CBF     		ite	hi
 671 002c 0027     		movhi	r7, #0
 672 002e 0127     		movls	r7, #1
 673 0030 04E0     		b	.L108
 674              	.L107:
 675 0032 1768     		ldr	r7, [r2]
 676 0034 3F1B     		subs	r7, r7, r4
 677 0036 B7FA87F7 		clz	r7, r7
 678 003a 7F09     		lsrs	r7, r7, #5
 679              	.L108:
 680 003c E66A     		ldr	r6, [r4, #44]
 681 003e A564     		str	r5, [r4, #72]
 682 0040 B342     		cmp	r3, r6
 683 0042 A369     		ldr	r3, [r4, #24]
 684 0044 08BF     		it	eq
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 13


 685 0046 E562     		streq	r5, [r4, #44]
 686 0048 002B     		cmp	r3, #0
 687 004a A4BF     		itt	ge
 688 004c C5F10505 		rsbge	r5, r5, #5
 689 0050 A561     		strge	r5, [r4, #24]
 690 0052 204D     		ldr	r5, .L124+4
 691 0054 6269     		ldr	r2, [r4, #20]
 692 0056 06EB8603 		add	r3, r6, r6, lsl #2
 693 005a 05EB8303 		add	r3, r5, r3, lsl #2
 694 005e 9A42     		cmp	r2, r3
 695 0060 1AD1     		bne	.L111
 696 0062 04F10408 		add	r8, r4, #4
 697 0066 4046     		mov	r0, r8
 698 0068 FFF7FEFF 		bl	uxListRemove
 699 006c 1A4A     		ldr	r2, .L124+8
 700 006e 30B9     		cbnz	r0, .L112
 701 0070 1368     		ldr	r3, [r2]
 702 0072 0121     		movs	r1, #1
 703 0074 01FA06F6 		lsl	r6, r1, r6
 704 0078 23EA0606 		bic	r6, r3, r6
 705 007c 1660     		str	r6, [r2]
 706              	.L112:
 707 007e E06A     		ldr	r0, [r4, #44]
 708 0080 1468     		ldr	r4, [r2]
 709 0082 0123     		movs	r3, #1
 710 0084 8340     		lsls	r3, r3, r0
 711 0086 00EB8000 		add	r0, r0, r0, lsl #2
 712 008a 2343     		orrs	r3, r3, r4
 713 008c 4146     		mov	r1, r8
 714 008e 05EB8000 		add	r0, r5, r0, lsl #2
 715 0092 1360     		str	r3, [r2]
 716 0094 FFF7FEFF 		bl	vListInsertEnd
 717              	.L111:
 718 0098 3FB1     		cbz	r7, .L106
 719 009a 104B     		ldr	r3, .L124+12
 720 009c 4FF08052 		mov	r2, #268435456
 721 00a0 1A60     		str	r2, [r3]
 722              		.syntax unified
 723              	@ 1610 "../src/tasks.c" 1
 724 00a2 BFF34F8F 		dsb
 725              	@ 0 "" 2
 726              	@ 1610 "../src/tasks.c" 1
 727 00a6 BFF36F8F 		isb
 728              	@ 0 "" 2
 729              		.thumb
 730              		.syntax unified
 731              	.L106:
 732 00aa BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 733 00ae FFF7FEBF 		b	vPortExitCritical
 734              	.L122:
 735 00b2 0B49     		ldr	r1, .L124+16
 736 00b4 4FF4B860 		mov	r0, #1472
 737 00b8 FFF7FEFF 		bl	vAssertCalled
 738 00bc 0425     		movs	r5, #4
 739 00be FFF7FEFF 		bl	vPortEnterCritical
 740 00c2 002C     		cmp	r4, #0
 741 00c4 A6D1     		bne	.L104
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 14


 742              	.L123:
 743 00c6 024B     		ldr	r3, .L124
 744 00c8 1C68     		ldr	r4, [r3]
 745 00ca A3E7     		b	.L104
 746              	.L114:
 747 00cc 0027     		movs	r7, #0
 748 00ce B5E7     		b	.L108
 749              	.L125:
 750              		.align	2
 751              	.L124:
 752 00d0 00000000 		.word	.LANCHOR6
 753 00d4 00000000 		.word	.LANCHOR0
 754 00d8 00000000 		.word	.LANCHOR7
 755 00dc 04ED00E0 		.word	-536810236
 756 00e0 00000000 		.word	.LC0
 757              		.size	vTaskPrioritySet, .-vTaskPrioritySet
 758              		.section	.text.vTaskSuspend,"ax",%progbits
 759              		.align	1
 760              		.p2align 2,,3
 761              		.global	vTaskSuspend
 762              		.syntax unified
 763              		.thumb
 764              		.thumb_func
 765              		.fpu fpv4-sp-d16
 766              		.type	vTaskSuspend, %function
 767              	vTaskSuspend:
 768              		@ args = 0, pretend = 0, frame = 0
 769              		@ frame_needed = 0, uses_anonymous_args = 0
 770 0000 70B5     		push	{r4, r5, r6, lr}
 771 0002 0446     		mov	r4, r0
 772 0004 354E     		ldr	r6, .L155
 773 0006 FFF7FEFF 		bl	vPortEnterCritical
 774 000a 002C     		cmp	r4, #0
 775 000c 4ED0     		beq	.L149
 776              	.L127:
 777 000e 251D     		adds	r5, r4, #4
 778 0010 2846     		mov	r0, r5
 779 0012 FFF7FEFF 		bl	uxListRemove
 780 0016 30B9     		cbnz	r0, .L128
 781 0018 E26A     		ldr	r2, [r4, #44]
 782 001a 3149     		ldr	r1, .L155+4
 783 001c 02EB8203 		add	r3, r2, r2, lsl #2
 784 0020 9B00     		lsls	r3, r3, #2
 785 0022 CB58     		ldr	r3, [r1, r3]
 786 0024 63B3     		cbz	r3, .L151
 787              	.L128:
 788 0026 A36A     		ldr	r3, [r4, #40]
 789 0028 1BB1     		cbz	r3, .L129
 790 002a 04F11800 		add	r0, r4, #24
 791 002e FFF7FEFF 		bl	uxListRemove
 792              	.L129:
 793 0032 2946     		mov	r1, r5
 794 0034 2B48     		ldr	r0, .L155+8
 795 0036 2C4D     		ldr	r5, .L155+12
 796 0038 FFF7FEFF 		bl	vListInsertEnd
 797 003c 94F85430 		ldrb	r3, [r4, #84]	@ zero_extendqisi2
 798 0040 012B     		cmp	r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 15


 799 0042 04BF     		itt	eq
 800 0044 0023     		moveq	r3, #0
 801 0046 84F85430 		strbeq	r3, [r4, #84]
 802 004a FFF7FEFF 		bl	vPortExitCritical
 803 004e 2B68     		ldr	r3, [r5]
 804 0050 FBB9     		cbnz	r3, .L152
 805              	.L131:
 806 0052 3368     		ldr	r3, [r6]
 807 0054 A342     		cmp	r3, r4
 808 0056 00D0     		beq	.L153
 809 0058 70BD     		pop	{r4, r5, r6, pc}
 810              	.L153:
 811 005a 2B68     		ldr	r3, [r5]
 812 005c 43B3     		cbz	r3, .L135
 813 005e 234B     		ldr	r3, .L155+16
 814 0060 1B68     		ldr	r3, [r3]
 815 0062 23B1     		cbz	r3, .L136
 816 0064 2249     		ldr	r1, .L155+20
 817 0066 40F2A260 		movw	r0, #1698
 818 006a FFF7FEFF 		bl	vAssertCalled
 819              	.L136:
 820 006e 214B     		ldr	r3, .L155+24
 821 0070 4FF08052 		mov	r2, #268435456
 822 0074 1A60     		str	r2, [r3]
 823              		.syntax unified
 824              	@ 1699 "../src/tasks.c" 1
 825 0076 BFF34F8F 		dsb
 826              	@ 0 "" 2
 827              	@ 1699 "../src/tasks.c" 1
 828 007a BFF36F8F 		isb
 829              	@ 0 "" 2
 830              		.thumb
 831              		.syntax unified
 832 007e 70BD     		pop	{r4, r5, r6, pc}
 833              	.L151:
 834 0080 1D48     		ldr	r0, .L155+28
 835 0082 0121     		movs	r1, #1
 836 0084 0368     		ldr	r3, [r0]
 837 0086 01FA02F2 		lsl	r2, r1, r2
 838 008a 23EA0202 		bic	r2, r3, r2
 839 008e 0260     		str	r2, [r0]
 840 0090 C9E7     		b	.L128
 841              	.L152:
 842 0092 FFF7FEFF 		bl	vPortEnterCritical
 843 0096 194B     		ldr	r3, .L155+32
 844 0098 1B68     		ldr	r3, [r3]
 845 009a 1B68     		ldr	r3, [r3]
 846 009c ABB9     		cbnz	r3, .L132
 847 009e 184B     		ldr	r3, .L155+36
 848 00a0 4FF0FF32 		mov	r2, #-1
 849 00a4 1A60     		str	r2, [r3]
 850              	.L133:
 851 00a6 FFF7FEFF 		bl	vPortExitCritical
 852 00aa D2E7     		b	.L131
 853              	.L149:
 854 00ac 3468     		ldr	r4, [r6]
 855 00ae AEE7     		b	.L127
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 16


 856              	.L135:
 857 00b0 0C49     		ldr	r1, .L155+8
 858 00b2 144A     		ldr	r2, .L155+40
 859 00b4 0968     		ldr	r1, [r1]
 860 00b6 1268     		ldr	r2, [r2]
 861 00b8 9142     		cmp	r1, r2
 862 00ba 09D0     		beq	.L154
 863 00bc 0B4B     		ldr	r3, .L155+16
 864 00be 1B68     		ldr	r3, [r3]
 865 00c0 43B1     		cbz	r3, .L138
 866 00c2 114B     		ldr	r3, .L155+44
 867 00c4 0122     		movs	r2, #1
 868 00c6 1A60     		str	r2, [r3]
 869 00c8 70BD     		pop	{r4, r5, r6, pc}
 870              	.L132:
 871 00ca FFF7FEFF 		bl	prvResetNextTaskUnblockTime.part.0
 872 00ce EAE7     		b	.L133
 873              	.L154:
 874 00d0 3360     		str	r3, [r6]
 875 00d2 70BD     		pop	{r4, r5, r6, pc}
 876              	.L138:
 877 00d4 BDE87040 		pop	{r4, r5, r6, lr}
 878 00d8 FFF7FEBF 		b	vTaskSwitchContext.part.6
 879              	.L156:
 880              		.align	2
 881              	.L155:
 882 00dc 00000000 		.word	.LANCHOR6
 883 00e0 00000000 		.word	.LANCHOR0
 884 00e4 00000000 		.word	.LANCHOR3
 885 00e8 00000000 		.word	.LANCHOR13
 886 00ec 00000000 		.word	.LANCHOR15
 887 00f0 00000000 		.word	.LC0
 888 00f4 04ED00E0 		.word	-536810236
 889 00f8 00000000 		.word	.LANCHOR7
 890 00fc 00000000 		.word	.LANCHOR1
 891 0100 00000000 		.word	.LANCHOR2
 892 0104 00000000 		.word	.LANCHOR10
 893 0108 00000000 		.word	.LANCHOR9
 894              		.size	vTaskSuspend, .-vTaskSuspend
 895              		.section	.text.vTaskResume,"ax",%progbits
 896              		.align	1
 897              		.p2align 2,,3
 898              		.global	vTaskResume
 899              		.syntax unified
 900              		.thumb
 901              		.thumb_func
 902              		.fpu fpv4-sp-d16
 903              		.type	vTaskResume, %function
 904              	vTaskResume:
 905              		@ args = 0, pretend = 0, frame = 0
 906              		@ frame_needed = 0, uses_anonymous_args = 0
 907 0000 80B1     		cbz	r0, .L166
 908 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 909 0004 1B4D     		ldr	r5, .L169
 910 0006 2B68     		ldr	r3, [r5]
 911 0008 8342     		cmp	r3, r0
 912 000a 0AD0     		beq	.L167
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 17


 913 000c 0446     		mov	r4, r0
 914 000e FFF7FEFF 		bl	vPortEnterCritical
 915 0012 2046     		mov	r0, r4
 916 0014 FFF7FEFF 		bl	prvTaskIsTaskSuspended
 917 0018 48B9     		cbnz	r0, .L168
 918              	.L160:
 919 001a BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 920 001e FFF7FEBF 		b	vPortExitCritical
 921              	.L167:
 922 0022 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 923              	.L166:
 924 0024 1449     		ldr	r1, .L169+4
 925 0026 40F2F660 		movw	r0, #1782
 926 002a FFF7FEBF 		b	vAssertCalled
 927              	.L168:
 928 002e 271D     		adds	r7, r4, #4
 929 0030 124E     		ldr	r6, .L169+8
 930 0032 3846     		mov	r0, r7
 931 0034 FFF7FEFF 		bl	uxListRemove
 932 0038 E26A     		ldr	r2, [r4, #44]
 933 003a D6F800C0 		ldr	ip, [r6]
 934 003e 1048     		ldr	r0, .L169+12
 935 0040 0123     		movs	r3, #1
 936 0042 9340     		lsls	r3, r3, r2
 937 0044 02EB8202 		add	r2, r2, r2, lsl #2
 938 0048 43EA0C03 		orr	r3, r3, ip
 939 004c 00EB8200 		add	r0, r0, r2, lsl #2
 940 0050 3946     		mov	r1, r7
 941 0052 3360     		str	r3, [r6]
 942 0054 FFF7FEFF 		bl	vListInsertEnd
 943 0058 2B68     		ldr	r3, [r5]
 944 005a E26A     		ldr	r2, [r4, #44]
 945 005c DB6A     		ldr	r3, [r3, #44]
 946 005e 9A42     		cmp	r2, r3
 947 0060 DBD3     		bcc	.L160
 948 0062 084B     		ldr	r3, .L169+16
 949 0064 4FF08052 		mov	r2, #268435456
 950 0068 1A60     		str	r2, [r3]
 951              		.syntax unified
 952              	@ 1805 "../src/tasks.c" 1
 953 006a BFF34F8F 		dsb
 954              	@ 0 "" 2
 955              	@ 1805 "../src/tasks.c" 1
 956 006e BFF36F8F 		isb
 957              	@ 0 "" 2
 958              		.thumb
 959              		.syntax unified
 960 0072 D2E7     		b	.L160
 961              	.L170:
 962              		.align	2
 963              	.L169:
 964 0074 00000000 		.word	.LANCHOR6
 965 0078 00000000 		.word	.LC0
 966 007c 00000000 		.word	.LANCHOR7
 967 0080 00000000 		.word	.LANCHOR0
 968 0084 04ED00E0 		.word	-536810236
 969              		.size	vTaskResume, .-vTaskResume
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 18


 970              		.section	.text.xTaskResumeFromISR,"ax",%progbits
 971              		.align	1
 972              		.p2align 2,,3
 973              		.global	xTaskResumeFromISR
 974              		.syntax unified
 975              		.thumb
 976              		.thumb_func
 977              		.fpu fpv4-sp-d16
 978              		.type	xTaskResumeFromISR, %function
 979              	xTaskResumeFromISR:
 980              		@ args = 0, pretend = 0, frame = 0
 981              		@ frame_needed = 0, uses_anonymous_args = 0
 982 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 983 0004 0546     		mov	r5, r0
 984 0006 0028     		cmp	r0, #0
 985 0008 44D0     		beq	.L177
 986              	.L172:
 987 000a FFF7FEFF 		bl	vPortValidateInterruptPriority
 988              		.syntax unified
 989              	@ 212 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 990 000e EFF31186 			mrs r6, basepri											
 991 0012 4FF05003 		mov r3, #80												
 992 0016 83F31188 		msr basepri, r3											
 993 001a BFF36F8F 		isb														
 994 001e BFF34F8F 		dsb														
 995              	
 996              	@ 0 "" 2
 997              		.thumb
 998              		.syntax unified
 999 0022 2846     		mov	r0, r5
 1000 0024 FFF7FEFF 		bl	prvTaskIsTaskSuspended
 1001 0028 18B3     		cbz	r0, .L175
 1002 002a 1D4B     		ldr	r3, .L178
 1003 002c 1B68     		ldr	r3, [r3]
 1004 002e 33BB     		cbnz	r3, .L174
 1005 0030 1C4B     		ldr	r3, .L178+4
 1006 0032 EC6A     		ldr	r4, [r5, #44]
 1007 0034 1B68     		ldr	r3, [r3]
 1008 0036 1C4F     		ldr	r7, .L178+8
 1009 0038 DB6A     		ldr	r3, [r3, #44]
 1010 003a 05F10408 		add	r8, r5, #4
 1011 003e 9C42     		cmp	r4, r3
 1012 0040 4046     		mov	r0, r8
 1013 0042 34BF     		ite	cc
 1014 0044 0024     		movcc	r4, #0
 1015 0046 0124     		movcs	r4, #1
 1016 0048 FFF7FEFF 		bl	uxListRemove
 1017 004c EA6A     		ldr	r2, [r5, #44]
 1018 004e 1748     		ldr	r0, .L178+12
 1019 0050 3D68     		ldr	r5, [r7]
 1020 0052 0123     		movs	r3, #1
 1021 0054 9340     		lsls	r3, r3, r2
 1022 0056 02EB8202 		add	r2, r2, r2, lsl #2
 1023 005a 2B43     		orrs	r3, r3, r5
 1024 005c 4146     		mov	r1, r8
 1025 005e 00EB8200 		add	r0, r0, r2, lsl #2
 1026 0062 3B60     		str	r3, [r7]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 19


 1027 0064 FFF7FEFF 		bl	vListInsertEnd
 1028              		.syntax unified
 1029              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 1030 0068 86F31188 			msr basepri, r6	
 1031              	@ 0 "" 2
 1032              		.thumb
 1033              		.syntax unified
 1034 006c 2046     		mov	r0, r4
 1035 006e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1036              	.L175:
 1037 0072 0446     		mov	r4, r0
 1038              		.syntax unified
 1039              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 1040 0074 86F31188 			msr basepri, r6	
 1041              	@ 0 "" 2
 1042              		.thumb
 1043              		.syntax unified
 1044 0078 2046     		mov	r0, r4
 1045 007a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1046              	.L174:
 1047 007e 05F11801 		add	r1, r5, #24
 1048 0082 0B48     		ldr	r0, .L178+16
 1049 0084 FFF7FEFF 		bl	vListInsertEnd
 1050 0088 0024     		movs	r4, #0
 1051              		.syntax unified
 1052              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 1053 008a 86F31188 			msr basepri, r6	
 1054              	@ 0 "" 2
 1055              		.thumb
 1056              		.syntax unified
 1057 008e 2046     		mov	r0, r4
 1058 0090 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1059              	.L177:
 1060 0094 0749     		ldr	r1, .L178+20
 1061 0096 40F22D70 		movw	r0, #1837
 1062 009a FFF7FEFF 		bl	vAssertCalled
 1063 009e B4E7     		b	.L172
 1064              	.L179:
 1065              		.align	2
 1066              	.L178:
 1067 00a0 00000000 		.word	.LANCHOR15
 1068 00a4 00000000 		.word	.LANCHOR6
 1069 00a8 00000000 		.word	.LANCHOR7
 1070 00ac 00000000 		.word	.LANCHOR0
 1071 00b0 00000000 		.word	.LANCHOR4
 1072 00b4 00000000 		.word	.LC0
 1073              		.size	xTaskResumeFromISR, .-xTaskResumeFromISR
 1074              		.section	.text.vTaskStartScheduler,"ax",%progbits
 1075              		.align	1
 1076              		.p2align 2,,3
 1077              		.global	vTaskStartScheduler
 1078              		.syntax unified
 1079              		.thumb
 1080              		.thumb_func
 1081              		.fpu fpv4-sp-d16
 1082              		.type	vTaskStartScheduler, %function
 1083              	vTaskStartScheduler:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 20


 1084              		@ args = 0, pretend = 0, frame = 16
 1085              		@ frame_needed = 0, uses_anonymous_args = 0
 1086 0000 30B5     		push	{r4, r5, lr}
 1087 0002 89B0     		sub	sp, sp, #36
 1088 0004 0024     		movs	r4, #0
 1089 0006 07AA     		add	r2, sp, #28
 1090 0008 06A9     		add	r1, sp, #24
 1091 000a 05A8     		add	r0, sp, #20
 1092 000c CDE90544 		strd	r4, r4, [sp, #20]
 1093 0010 FFF7FEFF 		bl	vApplicationGetIdleTaskMemory
 1094 0014 05A8     		add	r0, sp, #20
 1095 0016 07C8     		ldm	r0, {r0, r1, r2}
 1096 0018 2346     		mov	r3, r4
 1097 001a CDE90110 		strd	r1, r0, [sp, #4]
 1098 001e 0094     		str	r4, [sp]
 1099 0020 0C49     		ldr	r1, .L187
 1100 0022 0D48     		ldr	r0, .L187+4
 1101 0024 FFF7FEFF 		bl	xTaskCreateStatic
 1102 0028 90B1     		cbz	r0, .L180
 1103              		.syntax unified
 1104              	@ 196 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 1105 002a 4FF05003 			mov r3, #80												
 1106 002e 83F31188 		msr basepri, r3											
 1107 0032 BFF36F8F 		isb														
 1108 0036 BFF34F8F 		dsb														
 1109              	
 1110              	@ 0 "" 2
 1111              		.thumb
 1112              		.syntax unified
 1113 003a 0848     		ldr	r0, .L187+8
 1114 003c 084A     		ldr	r2, .L187+12
 1115 003e 094B     		ldr	r3, .L187+16
 1116 0040 4FF0FF35 		mov	r5, #-1
 1117 0044 0121     		movs	r1, #1
 1118 0046 0560     		str	r5, [r0]
 1119 0048 1160     		str	r1, [r2]
 1120 004a 1C60     		str	r4, [r3]
 1121 004c FFF7FEFF 		bl	xPortStartScheduler
 1122              	.L180:
 1123 0050 09B0     		add	sp, sp, #36
 1124              		@ sp needed
 1125 0052 30BD     		pop	{r4, r5, pc}
 1126              	.L188:
 1127              		.align	2
 1128              	.L187:
 1129 0054 00000000 		.word	.LC1
 1130 0058 00000000 		.word	prvIdleTask
 1131 005c 00000000 		.word	.LANCHOR2
 1132 0060 00000000 		.word	.LANCHOR13
 1133 0064 00000000 		.word	.LANCHOR5
 1134              		.size	vTaskStartScheduler, .-vTaskStartScheduler
 1135              		.section	.text.vTaskEndScheduler,"ax",%progbits
 1136              		.align	1
 1137              		.p2align 2,,3
 1138              		.global	vTaskEndScheduler
 1139              		.syntax unified
 1140              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 21


 1141              		.thumb_func
 1142              		.fpu fpv4-sp-d16
 1143              		.type	vTaskEndScheduler, %function
 1144              	vTaskEndScheduler:
 1145              		@ args = 0, pretend = 0, frame = 0
 1146              		@ frame_needed = 0, uses_anonymous_args = 0
 1147              		@ link register save eliminated.
 1148              		.syntax unified
 1149              	@ 196 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 1150 0000 4FF05003 			mov r3, #80												
 1151 0004 83F31188 		msr basepri, r3											
 1152 0008 BFF36F8F 		isb														
 1153 000c BFF34F8F 		dsb														
 1154              	
 1155              	@ 0 "" 2
 1156              		.thumb
 1157              		.syntax unified
 1158 0010 024B     		ldr	r3, .L190
 1159 0012 0022     		movs	r2, #0
 1160 0014 1A60     		str	r2, [r3]
 1161 0016 FFF7FEBF 		b	vPortEndScheduler
 1162              	.L191:
 1163 001a 00BF     		.align	2
 1164              	.L190:
 1165 001c 00000000 		.word	.LANCHOR13
 1166              		.size	vTaskEndScheduler, .-vTaskEndScheduler
 1167              		.section	.text.vTaskSuspendAll,"ax",%progbits
 1168              		.align	1
 1169              		.p2align 2,,3
 1170              		.global	vTaskSuspendAll
 1171              		.syntax unified
 1172              		.thumb
 1173              		.thumb_func
 1174              		.fpu fpv4-sp-d16
 1175              		.type	vTaskSuspendAll, %function
 1176              	vTaskSuspendAll:
 1177              		@ args = 0, pretend = 0, frame = 0
 1178              		@ frame_needed = 0, uses_anonymous_args = 0
 1179              		@ link register save eliminated.
 1180 0000 024A     		ldr	r2, .L193
 1181 0002 1368     		ldr	r3, [r2]
 1182 0004 0133     		adds	r3, r3, #1
 1183 0006 1360     		str	r3, [r2]
 1184 0008 7047     		bx	lr
 1185              	.L194:
 1186 000a 00BF     		.align	2
 1187              	.L193:
 1188 000c 00000000 		.word	.LANCHOR15
 1189              		.size	vTaskSuspendAll, .-vTaskSuspendAll
 1190              		.section	.text.xTaskGetTickCount,"ax",%progbits
 1191              		.align	1
 1192              		.p2align 2,,3
 1193              		.global	xTaskGetTickCount
 1194              		.syntax unified
 1195              		.thumb
 1196              		.thumb_func
 1197              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 22


 1198              		.type	xTaskGetTickCount, %function
 1199              	xTaskGetTickCount:
 1200              		@ args = 0, pretend = 0, frame = 0
 1201              		@ frame_needed = 0, uses_anonymous_args = 0
 1202              		@ link register save eliminated.
 1203 0000 014B     		ldr	r3, .L196
 1204 0002 1868     		ldr	r0, [r3]
 1205 0004 7047     		bx	lr
 1206              	.L197:
 1207 0006 00BF     		.align	2
 1208              	.L196:
 1209 0008 00000000 		.word	.LANCHOR5
 1210              		.size	xTaskGetTickCount, .-xTaskGetTickCount
 1211              		.section	.text.xTaskGetTickCountFromISR,"ax",%progbits
 1212              		.align	1
 1213              		.p2align 2,,3
 1214              		.global	xTaskGetTickCountFromISR
 1215              		.syntax unified
 1216              		.thumb
 1217              		.thumb_func
 1218              		.fpu fpv4-sp-d16
 1219              		.type	xTaskGetTickCountFromISR, %function
 1220              	xTaskGetTickCountFromISR:
 1221              		@ args = 0, pretend = 0, frame = 0
 1222              		@ frame_needed = 0, uses_anonymous_args = 0
 1223 0000 08B5     		push	{r3, lr}
 1224 0002 FFF7FEFF 		bl	vPortValidateInterruptPriority
 1225 0006 014B     		ldr	r3, .L200
 1226 0008 1868     		ldr	r0, [r3]
 1227 000a 08BD     		pop	{r3, pc}
 1228              	.L201:
 1229              		.align	2
 1230              	.L200:
 1231 000c 00000000 		.word	.LANCHOR5
 1232              		.size	xTaskGetTickCountFromISR, .-xTaskGetTickCountFromISR
 1233              		.section	.text.uxTaskGetNumberOfTasks,"ax",%progbits
 1234              		.align	1
 1235              		.p2align 2,,3
 1236              		.global	uxTaskGetNumberOfTasks
 1237              		.syntax unified
 1238              		.thumb
 1239              		.thumb_func
 1240              		.fpu fpv4-sp-d16
 1241              		.type	uxTaskGetNumberOfTasks, %function
 1242              	uxTaskGetNumberOfTasks:
 1243              		@ args = 0, pretend = 0, frame = 0
 1244              		@ frame_needed = 0, uses_anonymous_args = 0
 1245              		@ link register save eliminated.
 1246 0000 014B     		ldr	r3, .L203
 1247 0002 1868     		ldr	r0, [r3]
 1248 0004 7047     		bx	lr
 1249              	.L204:
 1250 0006 00BF     		.align	2
 1251              	.L203:
 1252 0008 00000000 		.word	.LANCHOR10
 1253              		.size	uxTaskGetNumberOfTasks, .-uxTaskGetNumberOfTasks
 1254              		.section	.text.pcTaskGetName,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 23


 1255              		.align	1
 1256              		.p2align 2,,3
 1257              		.global	pcTaskGetName
 1258              		.syntax unified
 1259              		.thumb
 1260              		.thumb_func
 1261              		.fpu fpv4-sp-d16
 1262              		.type	pcTaskGetName, %function
 1263              	pcTaskGetName:
 1264              		@ args = 0, pretend = 0, frame = 0
 1265              		@ frame_needed = 0, uses_anonymous_args = 0
 1266 0000 10B5     		push	{r4, lr}
 1267 0002 0446     		mov	r4, r0
 1268 0004 10B1     		cbz	r0, .L208
 1269              	.L206:
 1270 0006 04F13400 		add	r0, r4, #52
 1271 000a 10BD     		pop	{r4, pc}
 1272              	.L208:
 1273 000c 054B     		ldr	r3, .L209
 1274 000e 1C68     		ldr	r4, [r3]
 1275 0010 002C     		cmp	r4, #0
 1276 0012 F8D1     		bne	.L206
 1277 0014 0449     		ldr	r1, .L209+4
 1278 0016 40F6E400 		movw	r0, #2276
 1279 001a FFF7FEFF 		bl	vAssertCalled
 1280 001e 04F13400 		add	r0, r4, #52
 1281 0022 10BD     		pop	{r4, pc}
 1282              	.L210:
 1283              		.align	2
 1284              	.L209:
 1285 0024 00000000 		.word	.LANCHOR6
 1286 0028 00000000 		.word	.LC0
 1287              		.size	pcTaskGetName, .-pcTaskGetName
 1288              		.section	.text.xTaskIncrementTick,"ax",%progbits
 1289              		.align	1
 1290              		.p2align 2,,3
 1291              		.global	xTaskIncrementTick
 1292              		.syntax unified
 1293              		.thumb
 1294              		.thumb_func
 1295              		.fpu fpv4-sp-d16
 1296              		.type	xTaskIncrementTick, %function
 1297              	xTaskIncrementTick:
 1298              		@ args = 0, pretend = 0, frame = 8
 1299              		@ frame_needed = 0, uses_anonymous_args = 0
 1300 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1301 0004 4D4B     		ldr	r3, .L242
 1302 0006 1B68     		ldr	r3, [r3]
 1303 0008 83B0     		sub	sp, sp, #12
 1304 000a 002B     		cmp	r3, #0
 1305 000c 7ED1     		bne	.L212
 1306 000e 4C4B     		ldr	r3, .L242+4
 1307 0010 1E68     		ldr	r6, [r3]
 1308 0012 0136     		adds	r6, r6, #1
 1309 0014 1E60     		str	r6, [r3]
 1310 0016 16B3     		cbz	r6, .L235
 1311              	.L237:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 24


 1312 0018 4A4B     		ldr	r3, .L242+8
 1313 001a 0193     		str	r3, [sp, #4]
 1314 001c 019B     		ldr	r3, [sp, #4]
 1315 001e 1B68     		ldr	r3, [r3]
 1316 0020 B342     		cmp	r3, r6
 1317 0022 38D9     		bls	.L225
 1318              	.L240:
 1319 0024 DFF83C81 		ldr	r8, .L242+40
 1320 0028 DFF83C91 		ldr	r9, .L242+44
 1321 002c 0024     		movs	r4, #0
 1322              	.L217:
 1323 002e D9F80030 		ldr	r3, [r9]
 1324 0032 4549     		ldr	r1, .L242+12
 1325 0034 DB6A     		ldr	r3, [r3, #44]
 1326 0036 03EB8303 		add	r3, r3, r3, lsl #2
 1327 003a 9B00     		lsls	r3, r3, #2
 1328 003c 58F80320 		ldr	r2, [r8, r3]
 1329 0040 0B68     		ldr	r3, [r1]
 1330 0042 022A     		cmp	r2, #2
 1331 0044 28BF     		it	cs
 1332 0046 0124     		movcs	r4, #1
 1333 0048 002B     		cmp	r3, #0
 1334 004a 67D0     		beq	.L238
 1335              	.L223:
 1336 004c 3F4B     		ldr	r3, .L242+16
 1337 004e 1B68     		ldr	r3, [r3]
 1338 0050 002B     		cmp	r3, #0
 1339 0052 0CBF     		ite	eq
 1340 0054 2046     		moveq	r0, r4
 1341 0056 0120     		movne	r0, #1
 1342 0058 03B0     		add	sp, sp, #12
 1343              		@ sp needed
 1344 005a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1345              	.L235:
 1346 005e 3C4D     		ldr	r5, .L242+20
 1347 0060 2B68     		ldr	r3, [r5]
 1348 0062 1B68     		ldr	r3, [r3]
 1349 0064 002B     		cmp	r3, #0
 1350 0066 62D1     		bne	.L239
 1351              	.L214:
 1352 0068 3A4B     		ldr	r3, .L242+24
 1353 006a 2968     		ldr	r1, [r5]
 1354 006c 3A4A     		ldr	r2, .L242+28
 1355 006e 1868     		ldr	r0, [r3]
 1356 0070 2860     		str	r0, [r5]
 1357 0072 1960     		str	r1, [r3]
 1358 0074 1368     		ldr	r3, [r2]
 1359 0076 0133     		adds	r3, r3, #1
 1360 0078 1360     		str	r3, [r2]
 1361 007a 2B68     		ldr	r3, [r5]
 1362 007c 1B68     		ldr	r3, [r3]
 1363 007e 002B     		cmp	r3, #0
 1364 0080 52D1     		bne	.L215
 1365 0082 304B     		ldr	r3, .L242+8
 1366 0084 0193     		str	r3, [sp, #4]
 1367 0086 1A46     		mov	r2, r3
 1368 0088 4FF0FF33 		mov	r3, #-1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 25


 1369 008c 1360     		str	r3, [r2]
 1370 008e 019B     		ldr	r3, [sp, #4]
 1371 0090 1B68     		ldr	r3, [r3]
 1372 0092 B342     		cmp	r3, r6
 1373 0094 C6D8     		bhi	.L240
 1374              	.L225:
 1375 0096 2E4D     		ldr	r5, .L242+20
 1376 0098 DFF8C880 		ldr	r8, .L242+40
 1377 009c DFF8C890 		ldr	r9, .L242+44
 1378 00a0 2E4F     		ldr	r7, .L242+32
 1379 00a2 0024     		movs	r4, #0
 1380 00a4 29E0     		b	.L216
 1381              	.L218:
 1382 00a6 2B68     		ldr	r3, [r5]
 1383 00a8 DB68     		ldr	r3, [r3, #12]
 1384 00aa D3F80CB0 		ldr	fp, [r3, #12]
 1385 00ae DBF80420 		ldr	r2, [fp, #4]
 1386 00b2 0BF1040A 		add	r10, fp, #4
 1387 00b6 9642     		cmp	r6, r2
 1388 00b8 5046     		mov	r0, r10
 1389 00ba 32D3     		bcc	.L241
 1390 00bc FFF7FEFF 		bl	uxListRemove
 1391 00c0 DBF82820 		ldr	r2, [fp, #40]
 1392 00c4 0BF11800 		add	r0, fp, #24
 1393 00c8 0AB1     		cbz	r2, .L220
 1394 00ca FFF7FEFF 		bl	uxListRemove
 1395              	.L220:
 1396 00ce DBF82C00 		ldr	r0, [fp, #44]
 1397 00d2 3B68     		ldr	r3, [r7]
 1398 00d4 0122     		movs	r2, #1
 1399 00d6 8240     		lsls	r2, r2, r0
 1400 00d8 00EB8000 		add	r0, r0, r0, lsl #2
 1401 00dc 1A43     		orrs	r2, r2, r3
 1402 00de 5146     		mov	r1, r10
 1403 00e0 08EB8000 		add	r0, r8, r0, lsl #2
 1404 00e4 3A60     		str	r2, [r7]
 1405 00e6 FFF7FEFF 		bl	vListInsertEnd
 1406 00ea D9F80010 		ldr	r1, [r9]
 1407 00ee DBF82C20 		ldr	r2, [fp, #44]
 1408 00f2 CB6A     		ldr	r3, [r1, #44]
 1409 00f4 9A42     		cmp	r2, r3
 1410 00f6 28BF     		it	cs
 1411 00f8 0124     		movcs	r4, #1
 1412              	.L216:
 1413 00fa 2B68     		ldr	r3, [r5]
 1414 00fc 1B68     		ldr	r3, [r3]
 1415 00fe 002B     		cmp	r3, #0
 1416 0100 D1D1     		bne	.L218
 1417 0102 019A     		ldr	r2, [sp, #4]
 1418 0104 4FF0FF33 		mov	r3, #-1
 1419 0108 1360     		str	r3, [r2]
 1420 010a 90E7     		b	.L217
 1421              	.L212:
 1422 010c 0E4A     		ldr	r2, .L242+12
 1423 010e 1368     		ldr	r3, [r2]
 1424 0110 0133     		adds	r3, r3, #1
 1425 0112 1360     		str	r3, [r2]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 26


 1426 0114 0024     		movs	r4, #0
 1427 0116 FFF7FEFF 		bl	vApplicationTickHook
 1428 011a 97E7     		b	.L223
 1429              	.L238:
 1430 011c FFF7FEFF 		bl	vApplicationTickHook
 1431 0120 94E7     		b	.L223
 1432              	.L241:
 1433 0122 019B     		ldr	r3, [sp, #4]
 1434 0124 1A60     		str	r2, [r3]
 1435 0126 82E7     		b	.L217
 1436              	.L215:
 1437 0128 FFF7FEFF 		bl	prvResetNextTaskUnblockTime.part.0
 1438 012c 74E7     		b	.L237
 1439              	.L239:
 1440 012e 0C49     		ldr	r1, .L242+36
 1441 0130 40F63320 		movw	r0, #2611
 1442 0134 FFF7FEFF 		bl	vAssertCalled
 1443 0138 96E7     		b	.L214
 1444              	.L243:
 1445 013a 00BF     		.align	2
 1446              	.L242:
 1447 013c 00000000 		.word	.LANCHOR15
 1448 0140 00000000 		.word	.LANCHOR5
 1449 0144 00000000 		.word	.LANCHOR2
 1450 0148 00000000 		.word	.LANCHOR17
 1451 014c 00000000 		.word	.LANCHOR9
 1452 0150 00000000 		.word	.LANCHOR1
 1453 0154 00000000 		.word	.LANCHOR8
 1454 0158 00000000 		.word	.LANCHOR16
 1455 015c 00000000 		.word	.LANCHOR7
 1456 0160 00000000 		.word	.LC0
 1457 0164 00000000 		.word	.LANCHOR0
 1458 0168 00000000 		.word	.LANCHOR6
 1459              		.size	xTaskIncrementTick, .-xTaskIncrementTick
 1460              		.section	.text.xTaskResumeAll,"ax",%progbits
 1461              		.align	1
 1462              		.p2align 2,,3
 1463              		.global	xTaskResumeAll
 1464              		.syntax unified
 1465              		.thumb
 1466              		.thumb_func
 1467              		.fpu fpv4-sp-d16
 1468              		.type	xTaskResumeAll, %function
 1469              	xTaskResumeAll:
 1470              		@ args = 0, pretend = 0, frame = 0
 1471              		@ frame_needed = 0, uses_anonymous_args = 0
 1472 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1473 0004 3B4C     		ldr	r4, .L274
 1474 0006 2368     		ldr	r3, [r4]
 1475 0008 002B     		cmp	r3, #0
 1476 000a 69D0     		beq	.L272
 1477              	.L245:
 1478 000c FFF7FEFF 		bl	vPortEnterCritical
 1479 0010 2368     		ldr	r3, [r4]
 1480 0012 013B     		subs	r3, r3, #1
 1481 0014 2360     		str	r3, [r4]
 1482 0016 2468     		ldr	r4, [r4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 27


 1483 0018 002C     		cmp	r4, #0
 1484 001a 5BD1     		bne	.L249
 1485 001c 364B     		ldr	r3, .L274+4
 1486 001e 1B68     		ldr	r3, [r3]
 1487 0020 002B     		cmp	r3, #0
 1488 0022 57D0     		beq	.L249
 1489 0024 DFF8ECA0 		ldr	r10, .L274+32
 1490 0028 DFF8ECB0 		ldr	fp, .L274+36
 1491 002c 334F     		ldr	r7, .L274+8
 1492 002e DFF8EC90 		ldr	r9, .L274+40
 1493 0032 DFF8EC80 		ldr	r8, .L274+44
 1494              	.L248:
 1495 0036 DBF80030 		ldr	r3, [fp]
 1496 003a 0126     		movs	r6, #1
 1497 003c 23B3     		cbz	r3, .L273
 1498              	.L251:
 1499 003e DBF80C30 		ldr	r3, [fp, #12]
 1500 0042 DC68     		ldr	r4, [r3, #12]
 1501 0044 251D     		adds	r5, r4, #4
 1502 0046 04F11800 		add	r0, r4, #24
 1503 004a FFF7FEFF 		bl	uxListRemove
 1504 004e 2846     		mov	r0, r5
 1505 0050 FFF7FEFF 		bl	uxListRemove
 1506 0054 E06A     		ldr	r0, [r4, #44]
 1507 0056 3A68     		ldr	r2, [r7]
 1508 0058 06FA00F3 		lsl	r3, r6, r0
 1509 005c 00EB8000 		add	r0, r0, r0, lsl #2
 1510 0060 1343     		orrs	r3, r3, r2
 1511 0062 2946     		mov	r1, r5
 1512 0064 09EB8000 		add	r0, r9, r0, lsl #2
 1513 0068 3B60     		str	r3, [r7]
 1514 006a FFF7FEFF 		bl	vListInsertEnd
 1515 006e D8F80030 		ldr	r3, [r8]
 1516 0072 E26A     		ldr	r2, [r4, #44]
 1517 0074 DB6A     		ldr	r3, [r3, #44]
 1518 0076 9A42     		cmp	r2, r3
 1519 0078 DDD3     		bcc	.L248
 1520 007a CAF80060 		str	r6, [r10]
 1521 007e DBF80030 		ldr	r3, [fp]
 1522 0082 0126     		movs	r6, #1
 1523 0084 002B     		cmp	r3, #0
 1524 0086 DAD1     		bne	.L251
 1525              	.L273:
 1526 0088 3CB1     		cbz	r4, .L252
 1527 008a 1D4B     		ldr	r3, .L274+12
 1528 008c 1B68     		ldr	r3, [r3]
 1529 008e 1B68     		ldr	r3, [r3]
 1530 0090 63BB     		cbnz	r3, .L253
 1531 0092 1C4B     		ldr	r3, .L274+16
 1532 0094 4FF0FF32 		mov	r2, #-1
 1533 0098 1A60     		str	r2, [r3]
 1534              	.L252:
 1535 009a 1B4D     		ldr	r5, .L274+20
 1536 009c 2C68     		ldr	r4, [r5]
 1537 009e 44B1     		cbz	r4, .L254
 1538 00a0 0126     		movs	r6, #1
 1539              	.L256:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 28


 1540 00a2 FFF7FEFF 		bl	xTaskIncrementTick
 1541 00a6 08B1     		cbz	r0, .L255
 1542 00a8 CAF80060 		str	r6, [r10]
 1543              	.L255:
 1544 00ac 013C     		subs	r4, r4, #1
 1545 00ae F8D1     		bne	.L256
 1546 00b0 2C60     		str	r4, [r5]
 1547              	.L254:
 1548 00b2 DAF80030 		ldr	r3, [r10]
 1549 00b6 6BB1     		cbz	r3, .L249
 1550 00b8 144B     		ldr	r3, .L274+24
 1551 00ba 4FF08052 		mov	r2, #268435456
 1552 00be 1A60     		str	r2, [r3]
 1553              		.syntax unified
 1554              	@ 2196 "../src/tasks.c" 1
 1555 00c0 BFF34F8F 		dsb
 1556              	@ 0 "" 2
 1557              	@ 2196 "../src/tasks.c" 1
 1558 00c4 BFF36F8F 		isb
 1559              	@ 0 "" 2
 1560              		.thumb
 1561              		.syntax unified
 1562 00c8 0124     		movs	r4, #1
 1563 00ca FFF7FEFF 		bl	vPortExitCritical
 1564 00ce 2046     		mov	r0, r4
 1565 00d0 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1566              	.L249:
 1567 00d4 0024     		movs	r4, #0
 1568 00d6 FFF7FEFF 		bl	vPortExitCritical
 1569 00da 2046     		mov	r0, r4
 1570 00dc BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1571              	.L272:
 1572 00e0 0B49     		ldr	r1, .L274+28
 1573 00e2 4FF40460 		mov	r0, #2112
 1574 00e6 FFF7FEFF 		bl	vAssertCalled
 1575 00ea 8FE7     		b	.L245
 1576              	.L253:
 1577 00ec FFF7FEFF 		bl	prvResetNextTaskUnblockTime.part.0
 1578 00f0 D3E7     		b	.L252
 1579              	.L275:
 1580 00f2 00BF     		.align	2
 1581              	.L274:
 1582 00f4 00000000 		.word	.LANCHOR15
 1583 00f8 00000000 		.word	.LANCHOR10
 1584 00fc 00000000 		.word	.LANCHOR7
 1585 0100 00000000 		.word	.LANCHOR1
 1586 0104 00000000 		.word	.LANCHOR2
 1587 0108 00000000 		.word	.LANCHOR17
 1588 010c 04ED00E0 		.word	-536810236
 1589 0110 00000000 		.word	.LC0
 1590 0114 00000000 		.word	.LANCHOR9
 1591 0118 00000000 		.word	.LANCHOR4
 1592 011c 00000000 		.word	.LANCHOR0
 1593 0120 00000000 		.word	.LANCHOR6
 1594              		.size	xTaskResumeAll, .-xTaskResumeAll
 1595              		.section	.text.vTaskDelayUntil,"ax",%progbits
 1596              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 29


 1597              		.p2align 2,,3
 1598              		.global	vTaskDelayUntil
 1599              		.syntax unified
 1600              		.thumb
 1601              		.thumb_func
 1602              		.fpu fpv4-sp-d16
 1603              		.type	vTaskDelayUntil, %function
 1604              	vTaskDelayUntil:
 1605              		@ args = 0, pretend = 0, frame = 0
 1606              		@ frame_needed = 0, uses_anonymous_args = 0
 1607 0000 70B5     		push	{r4, r5, r6, lr}
 1608 0002 0C46     		mov	r4, r1
 1609 0004 0546     		mov	r5, r0
 1610 0006 0028     		cmp	r0, #0
 1611 0008 31D0     		beq	.L295
 1612              	.L277:
 1613 000a 54B3     		cbz	r4, .L296
 1614              	.L278:
 1615 000c 1B4E     		ldr	r6, .L298
 1616 000e 3368     		ldr	r3, [r6]
 1617 0010 0BBB     		cbnz	r3, .L297
 1618              	.L279:
 1619 0012 3268     		ldr	r2, [r6]
 1620 0014 1A49     		ldr	r1, .L298+4
 1621 0016 2B68     		ldr	r3, [r5]
 1622 0018 0132     		adds	r2, r2, #1
 1623 001a 3260     		str	r2, [r6]
 1624 001c 0868     		ldr	r0, [r1]
 1625 001e 1C19     		adds	r4, r3, r4
 1626 0020 2CBF     		ite	cs
 1627 0022 0122     		movcs	r2, #1
 1628 0024 0022     		movcc	r2, #0
 1629 0026 8342     		cmp	r3, r0
 1630 0028 2C60     		str	r4, [r5]
 1631 002a 0CD9     		bls	.L282
 1632 002c 62B9     		cbnz	r2, .L294
 1633              	.L284:
 1634 002e FFF7FEFF 		bl	xTaskResumeAll
 1635 0032 38B9     		cbnz	r0, .L276
 1636 0034 134B     		ldr	r3, .L298+8
 1637 0036 4FF08052 		mov	r2, #268435456
 1638 003a 1A60     		str	r2, [r3]
 1639              		.syntax unified
 1640              	@ 1275 "../src/tasks.c" 1
 1641 003c BFF34F8F 		dsb
 1642              	@ 0 "" 2
 1643              	@ 1275 "../src/tasks.c" 1
 1644 0040 BFF36F8F 		isb
 1645              	@ 0 "" 2
 1646              		.thumb
 1647              		.syntax unified
 1648              	.L276:
 1649 0044 70BD     		pop	{r4, r5, r6, pc}
 1650              	.L282:
 1651 0046 0AB9     		cbnz	r2, .L286
 1652              	.L294:
 1653 0048 A042     		cmp	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 30


 1654 004a F0D2     		bcs	.L284
 1655              	.L286:
 1656 004c 201A     		subs	r0, r4, r0
 1657 004e 0021     		movs	r1, #0
 1658 0050 FFF7FEFF 		bl	prvAddCurrentTaskToDelayedList
 1659 0054 EBE7     		b	.L284
 1660              	.L297:
 1661 0056 0C49     		ldr	r1, .L298+12
 1662 0058 40F2BB40 		movw	r0, #1211
 1663 005c FFF7FEFF 		bl	vAssertCalled
 1664 0060 D7E7     		b	.L279
 1665              	.L296:
 1666 0062 0949     		ldr	r1, .L298+12
 1667 0064 40F2BA40 		movw	r0, #1210
 1668 0068 FFF7FEFF 		bl	vAssertCalled
 1669 006c CEE7     		b	.L278
 1670              	.L295:
 1671 006e 0649     		ldr	r1, .L298+12
 1672 0070 40F2B940 		movw	r0, #1209
 1673 0074 FFF7FEFF 		bl	vAssertCalled
 1674 0078 C7E7     		b	.L277
 1675              	.L299:
 1676 007a 00BF     		.align	2
 1677              	.L298:
 1678 007c 00000000 		.word	.LANCHOR15
 1679 0080 00000000 		.word	.LANCHOR5
 1680 0084 04ED00E0 		.word	-536810236
 1681 0088 00000000 		.word	.LC0
 1682              		.size	vTaskDelayUntil, .-vTaskDelayUntil
 1683              		.section	.text.vTaskDelay,"ax",%progbits
 1684              		.align	1
 1685              		.p2align 2,,3
 1686              		.global	vTaskDelay
 1687              		.syntax unified
 1688              		.thumb
 1689              		.thumb_func
 1690              		.fpu fpv4-sp-d16
 1691              		.type	vTaskDelay, %function
 1692              	vTaskDelay:
 1693              		@ args = 0, pretend = 0, frame = 0
 1694              		@ frame_needed = 0, uses_anonymous_args = 0
 1695 0000 38B5     		push	{r3, r4, r5, lr}
 1696 0002 68B1     		cbz	r0, .L304
 1697 0004 0E4D     		ldr	r5, .L313
 1698 0006 2B68     		ldr	r3, [r5]
 1699 0008 0446     		mov	r4, r0
 1700 000a 93B9     		cbnz	r3, .L312
 1701              	.L303:
 1702 000c 2B68     		ldr	r3, [r5]
 1703 000e 2046     		mov	r0, r4
 1704 0010 0133     		adds	r3, r3, #1
 1705 0012 0021     		movs	r1, #0
 1706 0014 2B60     		str	r3, [r5]
 1707 0016 FFF7FEFF 		bl	prvAddCurrentTaskToDelayedList
 1708 001a FFF7FEFF 		bl	xTaskResumeAll
 1709 001e 38B9     		cbnz	r0, .L300
 1710              	.L304:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 31


 1711 0020 084B     		ldr	r3, .L313+4
 1712 0022 4FF08052 		mov	r2, #268435456
 1713 0026 1A60     		str	r2, [r3]
 1714              		.syntax unified
 1715              	@ 1320 "../src/tasks.c" 1
 1716 0028 BFF34F8F 		dsb
 1717              	@ 0 "" 2
 1718              	@ 1320 "../src/tasks.c" 1
 1719 002c BFF36F8F 		isb
 1720              	@ 0 "" 2
 1721              		.thumb
 1722              		.syntax unified
 1723              	.L300:
 1724 0030 38BD     		pop	{r3, r4, r5, pc}
 1725              	.L312:
 1726 0032 0549     		ldr	r1, .L313+8
 1727 0034 40F20F50 		movw	r0, #1295
 1728 0038 FFF7FEFF 		bl	vAssertCalled
 1729 003c E6E7     		b	.L303
 1730              	.L314:
 1731 003e 00BF     		.align	2
 1732              	.L313:
 1733 0040 00000000 		.word	.LANCHOR15
 1734 0044 04ED00E0 		.word	-536810236
 1735 0048 00000000 		.word	.LC0
 1736              		.size	vTaskDelay, .-vTaskDelay
 1737              		.section	.text.vTaskSwitchContext,"ax",%progbits
 1738              		.align	1
 1739              		.p2align 2,,3
 1740              		.global	vTaskSwitchContext
 1741              		.syntax unified
 1742              		.thumb
 1743              		.thumb_func
 1744              		.fpu fpv4-sp-d16
 1745              		.type	vTaskSwitchContext, %function
 1746              	vTaskSwitchContext:
 1747              		@ args = 0, pretend = 0, frame = 0
 1748              		@ frame_needed = 0, uses_anonymous_args = 0
 1749              		@ link register save eliminated.
 1750 0000 044B     		ldr	r3, .L320
 1751 0002 1B68     		ldr	r3, [r3]
 1752 0004 0BB9     		cbnz	r3, .L319
 1753 0006 FFF7FEBF 		b	vTaskSwitchContext.part.6
 1754              	.L319:
 1755 000a 034B     		ldr	r3, .L320+4
 1756 000c 0122     		movs	r2, #1
 1757 000e 1A60     		str	r2, [r3]
 1758 0010 7047     		bx	lr
 1759              	.L321:
 1760 0012 00BF     		.align	2
 1761              	.L320:
 1762 0014 00000000 		.word	.LANCHOR15
 1763 0018 00000000 		.word	.LANCHOR9
 1764              		.size	vTaskSwitchContext, .-vTaskSwitchContext
 1765              		.section	.text.vTaskPlaceOnEventList,"ax",%progbits
 1766              		.align	1
 1767              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 32


 1768              		.global	vTaskPlaceOnEventList
 1769              		.syntax unified
 1770              		.thumb
 1771              		.thumb_func
 1772              		.fpu fpv4-sp-d16
 1773              		.type	vTaskPlaceOnEventList, %function
 1774              	vTaskPlaceOnEventList:
 1775              		@ args = 0, pretend = 0, frame = 0
 1776              		@ frame_needed = 0, uses_anonymous_args = 0
 1777 0000 38B5     		push	{r3, r4, r5, lr}
 1778 0002 0D46     		mov	r5, r1
 1779 0004 0446     		mov	r4, r0
 1780 0006 58B1     		cbz	r0, .L325
 1781              	.L323:
 1782 0008 084B     		ldr	r3, .L326
 1783 000a 1968     		ldr	r1, [r3]
 1784 000c 2046     		mov	r0, r4
 1785 000e 1831     		adds	r1, r1, #24
 1786 0010 FFF7FEFF 		bl	vListInsert
 1787 0014 2846     		mov	r0, r5
 1788 0016 0121     		movs	r1, #1
 1789 0018 BDE83840 		pop	{r3, r4, r5, lr}
 1790 001c FFF7FEBF 		b	prvAddCurrentTaskToDelayedList
 1791              	.L325:
 1792 0020 0349     		ldr	r1, .L326+4
 1793 0022 4FF43660 		mov	r0, #2912
 1794 0026 FFF7FEFF 		bl	vAssertCalled
 1795 002a EDE7     		b	.L323
 1796              	.L327:
 1797              		.align	2
 1798              	.L326:
 1799 002c 00000000 		.word	.LANCHOR6
 1800 0030 00000000 		.word	.LC0
 1801              		.size	vTaskPlaceOnEventList, .-vTaskPlaceOnEventList
 1802              		.section	.text.vTaskPlaceOnUnorderedEventList,"ax",%progbits
 1803              		.align	1
 1804              		.p2align 2,,3
 1805              		.global	vTaskPlaceOnUnorderedEventList
 1806              		.syntax unified
 1807              		.thumb
 1808              		.thumb_func
 1809              		.fpu fpv4-sp-d16
 1810              		.type	vTaskPlaceOnUnorderedEventList, %function
 1811              	vTaskPlaceOnUnorderedEventList:
 1812              		@ args = 0, pretend = 0, frame = 0
 1813              		@ frame_needed = 0, uses_anonymous_args = 0
 1814 0000 70B5     		push	{r4, r5, r6, lr}
 1815 0002 0C46     		mov	r4, r1
 1816 0004 1646     		mov	r6, r2
 1817 0006 0546     		mov	r5, r0
 1818 0008 B8B1     		cbz	r0, .L332
 1819              	.L329:
 1820 000a 0F4B     		ldr	r3, .L333
 1821 000c 1B68     		ldr	r3, [r3]
 1822 000e 23B9     		cbnz	r3, .L330
 1823 0010 0E49     		ldr	r1, .L333+4
 1824 0012 40F67530 		movw	r0, #2933
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 33


 1825 0016 FFF7FEFF 		bl	vAssertCalled
 1826              	.L330:
 1827 001a 0D4B     		ldr	r3, .L333+8
 1828 001c 1A68     		ldr	r2, [r3]
 1829 001e 1968     		ldr	r1, [r3]
 1830 0020 44F00044 		orr	r4, r4, #-2147483648
 1831 0024 2846     		mov	r0, r5
 1832 0026 9461     		str	r4, [r2, #24]
 1833 0028 1831     		adds	r1, r1, #24
 1834 002a FFF7FEFF 		bl	vListInsertEnd
 1835 002e 3046     		mov	r0, r6
 1836 0030 0121     		movs	r1, #1
 1837 0032 BDE87040 		pop	{r4, r5, r6, lr}
 1838 0036 FFF7FEBF 		b	prvAddCurrentTaskToDelayedList
 1839              	.L332:
 1840 003a 0449     		ldr	r1, .L333+4
 1841 003c 40F67130 		movw	r0, #2929
 1842 0040 FFF7FEFF 		bl	vAssertCalled
 1843 0044 E1E7     		b	.L329
 1844              	.L334:
 1845 0046 00BF     		.align	2
 1846              	.L333:
 1847 0048 00000000 		.word	.LANCHOR15
 1848 004c 00000000 		.word	.LC0
 1849 0050 00000000 		.word	.LANCHOR6
 1850              		.size	vTaskPlaceOnUnorderedEventList, .-vTaskPlaceOnUnorderedEventList
 1851              		.section	.text.xTaskRemoveFromEventList,"ax",%progbits
 1852              		.align	1
 1853              		.p2align 2,,3
 1854              		.global	xTaskRemoveFromEventList
 1855              		.syntax unified
 1856              		.thumb
 1857              		.thumb_func
 1858              		.fpu fpv4-sp-d16
 1859              		.type	xTaskRemoveFromEventList, %function
 1860              	xTaskRemoveFromEventList:
 1861              		@ args = 0, pretend = 0, frame = 0
 1862              		@ frame_needed = 0, uses_anonymous_args = 0
 1863 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1864 0002 C368     		ldr	r3, [r0, #12]
 1865 0004 DC68     		ldr	r4, [r3, #12]
 1866 0006 54B3     		cbz	r4, .L342
 1867              	.L336:
 1868 0008 04F11805 		add	r5, r4, #24
 1869 000c 2846     		mov	r0, r5
 1870 000e FFF7FEFF 		bl	uxListRemove
 1871 0012 164B     		ldr	r3, .L343
 1872 0014 1B68     		ldr	r3, [r3]
 1873 0016 EBB9     		cbnz	r3, .L337
 1874 0018 261D     		adds	r6, r4, #4
 1875 001a 154D     		ldr	r5, .L343+4
 1876 001c 3046     		mov	r0, r6
 1877 001e FFF7FEFF 		bl	uxListRemove
 1878 0022 E26A     		ldr	r2, [r4, #44]
 1879 0024 2F68     		ldr	r7, [r5]
 1880 0026 1348     		ldr	r0, .L343+8
 1881 0028 0123     		movs	r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 34


 1882 002a 9340     		lsls	r3, r3, r2
 1883 002c 02EB8202 		add	r2, r2, r2, lsl #2
 1884 0030 3B43     		orrs	r3, r3, r7
 1885 0032 3146     		mov	r1, r6
 1886 0034 00EB8200 		add	r0, r0, r2, lsl #2
 1887 0038 2B60     		str	r3, [r5]
 1888 003a FFF7FEFF 		bl	vListInsertEnd
 1889              	.L338:
 1890 003e 0E4B     		ldr	r3, .L343+12
 1891 0040 E26A     		ldr	r2, [r4, #44]
 1892 0042 1B68     		ldr	r3, [r3]
 1893 0044 DB6A     		ldr	r3, [r3, #44]
 1894 0046 9A42     		cmp	r2, r3
 1895 0048 83BF     		ittte	hi
 1896 004a 0C4B     		ldrhi	r3, .L343+16
 1897 004c 0120     		movhi	r0, #1
 1898 004e 1860     		strhi	r0, [r3]
 1899 0050 0020     		movls	r0, #0
 1900 0052 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1901              	.L337:
 1902 0054 2946     		mov	r1, r5
 1903 0056 0A48     		ldr	r0, .L343+20
 1904 0058 FFF7FEFF 		bl	vListInsertEnd
 1905 005c EFE7     		b	.L338
 1906              	.L342:
 1907 005e 0949     		ldr	r1, .L343+24
 1908 0060 40F6BB30 		movw	r0, #3003
 1909 0064 FFF7FEFF 		bl	vAssertCalled
 1910 0068 CEE7     		b	.L336
 1911              	.L344:
 1912 006a 00BF     		.align	2
 1913              	.L343:
 1914 006c 00000000 		.word	.LANCHOR15
 1915 0070 00000000 		.word	.LANCHOR7
 1916 0074 00000000 		.word	.LANCHOR0
 1917 0078 00000000 		.word	.LANCHOR6
 1918 007c 00000000 		.word	.LANCHOR9
 1919 0080 00000000 		.word	.LANCHOR4
 1920 0084 00000000 		.word	.LC0
 1921              		.size	xTaskRemoveFromEventList, .-xTaskRemoveFromEventList
 1922              		.section	.text.vTaskRemoveFromUnorderedEventList,"ax",%progbits
 1923              		.align	1
 1924              		.p2align 2,,3
 1925              		.global	vTaskRemoveFromUnorderedEventList
 1926              		.syntax unified
 1927              		.thumb
 1928              		.thumb_func
 1929              		.fpu fpv4-sp-d16
 1930              		.type	vTaskRemoveFromUnorderedEventList, %function
 1931              	vTaskRemoveFromUnorderedEventList:
 1932              		@ args = 0, pretend = 0, frame = 0
 1933              		@ frame_needed = 0, uses_anonymous_args = 0
 1934 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1935 0002 1E4B     		ldr	r3, .L352
 1936 0004 1B68     		ldr	r3, [r3]
 1937 0006 0546     		mov	r5, r0
 1938 0008 0E46     		mov	r6, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 35


 1939 000a 33B3     		cbz	r3, .L350
 1940 000c EC68     		ldr	r4, [r5, #12]
 1941 000e 46F00046 		orr	r6, r6, #-2147483648
 1942 0012 2E60     		str	r6, [r5]
 1943 0014 64B3     		cbz	r4, .L351
 1944              	.L347:
 1945 0016 2846     		mov	r0, r5
 1946 0018 261D     		adds	r6, r4, #4
 1947 001a FFF7FEFF 		bl	uxListRemove
 1948 001e 184D     		ldr	r5, .L352+4
 1949 0020 3046     		mov	r0, r6
 1950 0022 FFF7FEFF 		bl	uxListRemove
 1951 0026 E36A     		ldr	r3, [r4, #44]
 1952 0028 D5F800C0 		ldr	ip, [r5]
 1953 002c 1548     		ldr	r0, .L352+8
 1954 002e 0127     		movs	r7, #1
 1955 0030 07FA03F2 		lsl	r2, r7, r3
 1956 0034 03EB8303 		add	r3, r3, r3, lsl #2
 1957 0038 42EA0C02 		orr	r2, r2, ip
 1958 003c 00EB8300 		add	r0, r0, r3, lsl #2
 1959 0040 3146     		mov	r1, r6
 1960 0042 2A60     		str	r2, [r5]
 1961 0044 FFF7FEFF 		bl	vListInsertEnd
 1962 0048 0F4B     		ldr	r3, .L352+12
 1963 004a E26A     		ldr	r2, [r4, #44]
 1964 004c 1B68     		ldr	r3, [r3]
 1965 004e DB6A     		ldr	r3, [r3, #44]
 1966 0050 9A42     		cmp	r2, r3
 1967 0052 84BF     		itt	hi
 1968 0054 0D4B     		ldrhi	r3, .L352+16
 1969 0056 1F60     		strhi	r7, [r3]
 1970 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1971              	.L350:
 1972 005a 0D49     		ldr	r1, .L352+20
 1973 005c 40F6F230 		movw	r0, #3058
 1974 0060 FFF7FEFF 		bl	vAssertCalled
 1975 0064 EC68     		ldr	r4, [r5, #12]
 1976 0066 46F00046 		orr	r6, r6, #-2147483648
 1977 006a 2E60     		str	r6, [r5]
 1978 006c 002C     		cmp	r4, #0
 1979 006e D2D1     		bne	.L347
 1980              	.L351:
 1981 0070 0749     		ldr	r1, .L352+20
 1982 0072 40F6FA30 		movw	r0, #3066
 1983 0076 FFF7FEFF 		bl	vAssertCalled
 1984 007a CCE7     		b	.L347
 1985              	.L353:
 1986              		.align	2
 1987              	.L352:
 1988 007c 00000000 		.word	.LANCHOR15
 1989 0080 00000000 		.word	.LANCHOR7
 1990 0084 00000000 		.word	.LANCHOR0
 1991 0088 00000000 		.word	.LANCHOR6
 1992 008c 00000000 		.word	.LANCHOR9
 1993 0090 00000000 		.word	.LC0
 1994              		.size	vTaskRemoveFromUnorderedEventList, .-vTaskRemoveFromUnorderedEventList
 1995              		.section	.text.vTaskSetTimeOutState,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 36


 1996              		.align	1
 1997              		.p2align 2,,3
 1998              		.global	vTaskSetTimeOutState
 1999              		.syntax unified
 2000              		.thumb
 2001              		.thumb_func
 2002              		.fpu fpv4-sp-d16
 2003              		.type	vTaskSetTimeOutState, %function
 2004              	vTaskSetTimeOutState:
 2005              		@ args = 0, pretend = 0, frame = 0
 2006              		@ frame_needed = 0, uses_anonymous_args = 0
 2007 0000 10B5     		push	{r4, lr}
 2008 0002 0446     		mov	r4, r0
 2009 0004 58B1     		cbz	r0, .L357
 2010              	.L355:
 2011 0006 FFF7FEFF 		bl	vPortEnterCritical
 2012 000a 084A     		ldr	r2, .L358
 2013 000c 084B     		ldr	r3, .L358+4
 2014 000e 1268     		ldr	r2, [r2]
 2015 0010 1B68     		ldr	r3, [r3]
 2016 0012 C4E90023 		strd	r2, r3, [r4]
 2017 0016 BDE81040 		pop	{r4, lr}
 2018 001a FFF7FEBF 		b	vPortExitCritical
 2019              	.L357:
 2020 001e 0549     		ldr	r1, .L358+8
 2021 0020 4FF44160 		mov	r0, #3088
 2022 0024 FFF7FEFF 		bl	vAssertCalled
 2023 0028 EDE7     		b	.L355
 2024              	.L359:
 2025 002a 00BF     		.align	2
 2026              	.L358:
 2027 002c 00000000 		.word	.LANCHOR16
 2028 0030 00000000 		.word	.LANCHOR5
 2029 0034 00000000 		.word	.LC0
 2030              		.size	vTaskSetTimeOutState, .-vTaskSetTimeOutState
 2031              		.section	.text.vTaskInternalSetTimeOutState,"ax",%progbits
 2032              		.align	1
 2033              		.p2align 2,,3
 2034              		.global	vTaskInternalSetTimeOutState
 2035              		.syntax unified
 2036              		.thumb
 2037              		.thumb_func
 2038              		.fpu fpv4-sp-d16
 2039              		.type	vTaskInternalSetTimeOutState, %function
 2040              	vTaskInternalSetTimeOutState:
 2041              		@ args = 0, pretend = 0, frame = 0
 2042              		@ frame_needed = 0, uses_anonymous_args = 0
 2043              		@ link register save eliminated.
 2044 0000 034A     		ldr	r2, .L361
 2045 0002 044B     		ldr	r3, .L361+4
 2046 0004 1268     		ldr	r2, [r2]
 2047 0006 1B68     		ldr	r3, [r3]
 2048 0008 C0E90023 		strd	r2, r3, [r0]
 2049 000c 7047     		bx	lr
 2050              	.L362:
 2051 000e 00BF     		.align	2
 2052              	.L361:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 37


 2053 0010 00000000 		.word	.LANCHOR16
 2054 0014 00000000 		.word	.LANCHOR5
 2055              		.size	vTaskInternalSetTimeOutState, .-vTaskInternalSetTimeOutState
 2056              		.section	.text.xTaskCheckForTimeOut,"ax",%progbits
 2057              		.align	1
 2058              		.p2align 2,,3
 2059              		.global	xTaskCheckForTimeOut
 2060              		.syntax unified
 2061              		.thumb
 2062              		.thumb_func
 2063              		.fpu fpv4-sp-d16
 2064              		.type	xTaskCheckForTimeOut, %function
 2065              	xTaskCheckForTimeOut:
 2066              		@ args = 0, pretend = 0, frame = 0
 2067              		@ frame_needed = 0, uses_anonymous_args = 0
 2068 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2069 0002 0D46     		mov	r5, r1
 2070 0004 0446     		mov	r4, r0
 2071 0006 90B3     		cbz	r0, .L372
 2072 0008 002D     		cmp	r5, #0
 2073 000a 37D0     		beq	.L373
 2074              	.L365:
 2075 000c FFF7FEFF 		bl	vPortEnterCritical
 2076 0010 2B68     		ldr	r3, [r5]
 2077 0012 1D49     		ldr	r1, .L375
 2078 0014 581C     		adds	r0, r3, #1
 2079 0016 0A68     		ldr	r2, [r1]
 2080 0018 13D0     		beq	.L369
 2081 001a DFF874C0 		ldr	ip, .L375+8
 2082 001e D4E90060 		ldrd	r6, r0, [r4]
 2083 0022 DCF80070 		ldr	r7, [ip]
 2084 0026 BE42     		cmp	r6, r7
 2085 0028 01D0     		beq	.L367
 2086 002a 9042     		cmp	r0, r2
 2087 002c 1AD9     		bls	.L370
 2088              	.L367:
 2089 002e 121A     		subs	r2, r2, r0
 2090 0030 9342     		cmp	r3, r2
 2091 0032 0BD8     		bhi	.L374
 2092 0034 0023     		movs	r3, #0
 2093 0036 2B60     		str	r3, [r5]
 2094 0038 0125     		movs	r5, #1
 2095 003a FFF7FEFF 		bl	vPortExitCritical
 2096 003e 2846     		mov	r0, r5
 2097 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2098              	.L369:
 2099 0042 0025     		movs	r5, #0
 2100 0044 FFF7FEFF 		bl	vPortExitCritical
 2101 0048 2846     		mov	r0, r5
 2102 004a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2103              	.L374:
 2104 004c DCF80000 		ldr	r0, [ip]
 2105 0050 9B1A     		subs	r3, r3, r2
 2106 0052 0A68     		ldr	r2, [r1]
 2107 0054 2B60     		str	r3, [r5]
 2108 0056 C4E90002 		strd	r0, r2, [r4]
 2109 005a 0025     		movs	r5, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 38


 2110 005c FFF7FEFF 		bl	vPortExitCritical
 2111 0060 2846     		mov	r0, r5
 2112 0062 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2113              	.L370:
 2114 0064 0125     		movs	r5, #1
 2115 0066 FFF7FEFF 		bl	vPortExitCritical
 2116 006a 2846     		mov	r0, r5
 2117 006c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2118              	.L372:
 2119 006e 0749     		ldr	r1, .L375+4
 2120 0070 40F62640 		movw	r0, #3110
 2121 0074 FFF7FEFF 		bl	vAssertCalled
 2122 0078 002D     		cmp	r5, #0
 2123 007a C7D1     		bne	.L365
 2124              	.L373:
 2125 007c 0349     		ldr	r1, .L375+4
 2126 007e 40F62740 		movw	r0, #3111
 2127 0082 FFF7FEFF 		bl	vAssertCalled
 2128 0086 C1E7     		b	.L365
 2129              	.L376:
 2130              		.align	2
 2131              	.L375:
 2132 0088 00000000 		.word	.LANCHOR5
 2133 008c 00000000 		.word	.LC0
 2134 0090 00000000 		.word	.LANCHOR16
 2135              		.size	xTaskCheckForTimeOut, .-xTaskCheckForTimeOut
 2136              		.section	.text.vTaskMissedYield,"ax",%progbits
 2137              		.align	1
 2138              		.p2align 2,,3
 2139              		.global	vTaskMissedYield
 2140              		.syntax unified
 2141              		.thumb
 2142              		.thumb_func
 2143              		.fpu fpv4-sp-d16
 2144              		.type	vTaskMissedYield, %function
 2145              	vTaskMissedYield:
 2146              		@ args = 0, pretend = 0, frame = 0
 2147              		@ frame_needed = 0, uses_anonymous_args = 0
 2148              		@ link register save eliminated.
 2149 0000 014B     		ldr	r3, .L378
 2150 0002 0122     		movs	r2, #1
 2151 0004 1A60     		str	r2, [r3]
 2152 0006 7047     		bx	lr
 2153              	.L379:
 2154              		.align	2
 2155              	.L378:
 2156 0008 00000000 		.word	.LANCHOR9
 2157              		.size	vTaskMissedYield, .-vTaskMissedYield
 2158              		.section	.text.uxTaskGetTaskNumber,"ax",%progbits
 2159              		.align	1
 2160              		.p2align 2,,3
 2161              		.global	uxTaskGetTaskNumber
 2162              		.syntax unified
 2163              		.thumb
 2164              		.thumb_func
 2165              		.fpu fpv4-sp-d16
 2166              		.type	uxTaskGetTaskNumber, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 39


 2167              	uxTaskGetTaskNumber:
 2168              		@ args = 0, pretend = 0, frame = 0
 2169              		@ frame_needed = 0, uses_anonymous_args = 0
 2170              		@ link register save eliminated.
 2171 0000 00B1     		cbz	r0, .L380
 2172 0002 406C     		ldr	r0, [r0, #68]
 2173              	.L380:
 2174 0004 7047     		bx	lr
 2175              		.size	uxTaskGetTaskNumber, .-uxTaskGetTaskNumber
 2176 0006 00BF     		.section	.text.vTaskSetTaskNumber,"ax",%progbits
 2177              		.align	1
 2178              		.p2align 2,,3
 2179              		.global	vTaskSetTaskNumber
 2180              		.syntax unified
 2181              		.thumb
 2182              		.thumb_func
 2183              		.fpu fpv4-sp-d16
 2184              		.type	vTaskSetTaskNumber, %function
 2185              	vTaskSetTaskNumber:
 2186              		@ args = 0, pretend = 0, frame = 0
 2187              		@ frame_needed = 0, uses_anonymous_args = 0
 2188              		@ link register save eliminated.
 2189 0000 00B1     		cbz	r0, .L383
 2190 0002 4164     		str	r1, [r0, #68]
 2191              	.L383:
 2192 0004 7047     		bx	lr
 2193              		.size	vTaskSetTaskNumber, .-vTaskSetTaskNumber
 2194 0006 00BF     		.section	.text.vTaskGetInfo,"ax",%progbits
 2195              		.align	1
 2196              		.p2align 2,,3
 2197              		.global	vTaskGetInfo
 2198              		.syntax unified
 2199              		.thumb
 2200              		.thumb_func
 2201              		.fpu fpv4-sp-d16
 2202              		.type	vTaskGetInfo, %function
 2203              	vTaskGetInfo:
 2204              		@ args = 0, pretend = 0, frame = 0
 2205              		@ frame_needed = 0, uses_anonymous_args = 0
 2206 0000 70B5     		push	{r4, r5, r6, lr}
 2207 0002 0C46     		mov	r4, r1
 2208 0004 1646     		mov	r6, r2
 2209 0006 48B3     		cbz	r0, .L406
 2210 0008 0546     		mov	r5, r0
 2211              	.L389:
 2212 000a 05F13401 		add	r1, r5, #52
 2213 000e EA6A     		ldr	r2, [r5, #44]
 2214 0010 6160     		str	r1, [r4, #4]
 2215 0012 296B     		ldr	r1, [r5, #48]
 2216 0014 2261     		str	r2, [r4, #16]
 2217 0016 2A6C     		ldr	r2, [r5, #64]
 2218 0018 E161     		str	r1, [r4, #28]
 2219 001a A96C     		ldr	r1, [r5, #72]
 2220 001c A260     		str	r2, [r4, #8]
 2221 001e 052B     		cmp	r3, #5
 2222 0020 4FF00002 		mov	r2, #0
 2223 0024 2560     		str	r5, [r4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 40


 2224 0026 C4E90512 		strd	r1, r2, [r4, #20]
 2225 002a 1CD0     		beq	.L390
 2226 002c 1749     		ldr	r1, .L409
 2227 002e 0968     		ldr	r1, [r1]
 2228 0030 A942     		cmp	r1, r5
 2229 0032 16D0     		beq	.L407
 2230 0034 032B     		cmp	r3, #3
 2231 0036 2373     		strb	r3, [r4, #12]
 2232 0038 1AD0     		beq	.L408
 2233              	.L392:
 2234 003a 6EB1     		cbz	r6, .L394
 2235 003c 296B     		ldr	r1, [r5, #48]
 2236 003e 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 2237 0040 A52B     		cmp	r3, #165
 2238 0042 20D1     		bne	.L398
 2239 0044 4B1C     		adds	r3, r1, #1
 2240              	.L396:
 2241 0046 581A     		subs	r0, r3, r1
 2242 0048 13F8012B 		ldrb	r2, [r3], #1	@ zero_extendqisi2
 2243 004c A52A     		cmp	r2, #165
 2244 004e FAD0     		beq	.L396
 2245 0050 C0F38F00 		ubfx	r0, r0, #2, #16
 2246              	.L395:
 2247 0054 2084     		strh	r0, [r4, #32]	@ movhi
 2248 0056 70BD     		pop	{r4, r5, r6, pc}
 2249              	.L394:
 2250 0058 2684     		strh	r6, [r4, #32]	@ movhi
 2251 005a 70BD     		pop	{r4, r5, r6, pc}
 2252              	.L406:
 2253 005c 0B4A     		ldr	r2, .L409
 2254 005e 1568     		ldr	r5, [r2]
 2255 0060 D3E7     		b	.L389
 2256              	.L407:
 2257 0062 2273     		strb	r2, [r4, #12]
 2258 0064 E9E7     		b	.L392
 2259              	.L390:
 2260 0066 2846     		mov	r0, r5
 2261 0068 FFF7FEFF 		bl	eTaskGetState
 2262 006c 2073     		strb	r0, [r4, #12]
 2263 006e E4E7     		b	.L392
 2264              	.L408:
 2265 0070 074A     		ldr	r2, .L409+4
 2266 0072 A96A     		ldr	r1, [r5, #40]
 2267 0074 1368     		ldr	r3, [r2]
 2268 0076 0133     		adds	r3, r3, #1
 2269 0078 1360     		str	r3, [r2]
 2270 007a 09B1     		cbz	r1, .L393
 2271 007c 0223     		movs	r3, #2
 2272 007e 2373     		strb	r3, [r4, #12]
 2273              	.L393:
 2274 0080 FFF7FEFF 		bl	xTaskResumeAll
 2275 0084 D9E7     		b	.L392
 2276              	.L398:
 2277 0086 0020     		movs	r0, #0
 2278 0088 E4E7     		b	.L395
 2279              	.L410:
 2280 008a 00BF     		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 41


 2281              	.L409:
 2282 008c 00000000 		.word	.LANCHOR6
 2283 0090 00000000 		.word	.LANCHOR15
 2284              		.size	vTaskGetInfo, .-vTaskGetInfo
 2285              		.section	.text.prvListTasksWithinSingleList.part.7,"ax",%progbits
 2286              		.align	1
 2287              		.p2align 2,,3
 2288              		.syntax unified
 2289              		.thumb
 2290              		.thumb_func
 2291              		.fpu fpv4-sp-d16
 2292              		.type	prvListTasksWithinSingleList.part.7, %function
 2293              	prvListTasksWithinSingleList.part.7:
 2294              		@ args = 0, pretend = 0, frame = 0
 2295              		@ frame_needed = 0, uses_anonymous_args = 0
 2296 0000 4B68     		ldr	r3, [r1, #4]
 2297 0002 5B68     		ldr	r3, [r3, #4]
 2298 0004 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2299 0008 01F10808 		add	r8, r1, #8
 2300 000c 4345     		cmp	r3, r8
 2301 000e 4B60     		str	r3, [r1, #4]
 2302 0010 08BF     		it	eq
 2303 0012 CB68     		ldreq	r3, [r1, #12]
 2304 0014 0E46     		mov	r6, r1
 2305 0016 9246     		mov	r10, r2
 2306 0018 D3F80C90 		ldr	r9, [r3, #12]
 2307 001c 0546     		mov	r5, r0
 2308 001e 0027     		movs	r7, #0
 2309 0020 00E0     		b	.L415
 2310              	.L417:
 2311 0022 7368     		ldr	r3, [r6, #4]
 2312              	.L415:
 2313 0024 5C68     		ldr	r4, [r3, #4]
 2314 0026 7460     		str	r4, [r6, #4]
 2315 0028 A045     		cmp	r8, r4
 2316 002a 04BF     		itt	eq
 2317 002c F468     		ldreq	r4, [r6, #12]
 2318 002e 7460     		streq	r4, [r6, #4]
 2319 0030 E468     		ldr	r4, [r4, #12]
 2320 0032 2946     		mov	r1, r5
 2321 0034 0122     		movs	r2, #1
 2322 0036 5346     		mov	r3, r10
 2323 0038 2046     		mov	r0, r4
 2324 003a 1744     		add	r7, r7, r2
 2325 003c FFF7FEFF 		bl	vTaskGetInfo
 2326 0040 A145     		cmp	r9, r4
 2327 0042 05F12405 		add	r5, r5, #36
 2328 0046 ECD1     		bne	.L417
 2329 0048 3846     		mov	r0, r7
 2330 004a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2331              		.size	prvListTasksWithinSingleList.part.7, .-prvListTasksWithinSingleList.part.7
 2332 004e 00BF     		.section	.text.uxTaskGetSystemState,"ax",%progbits
 2333              		.align	1
 2334              		.p2align 2,,3
 2335              		.global	uxTaskGetSystemState
 2336              		.syntax unified
 2337              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 42


 2338              		.thumb_func
 2339              		.fpu fpv4-sp-d16
 2340              		.type	uxTaskGetSystemState, %function
 2341              	uxTaskGetSystemState:
 2342              		@ args = 0, pretend = 0, frame = 0
 2343              		@ frame_needed = 0, uses_anonymous_args = 0
 2344 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2345 0004 2F4C     		ldr	r4, .L449
 2346 0006 304D     		ldr	r5, .L449+4
 2347 0008 2368     		ldr	r3, [r4]
 2348 000a 0133     		adds	r3, r3, #1
 2349 000c 2360     		str	r3, [r4]
 2350 000e 2B68     		ldr	r3, [r5]
 2351 0010 8B42     		cmp	r3, r1
 2352 0012 30D8     		bhi	.L425
 2353 0014 0025     		movs	r5, #0
 2354 0016 2D4E     		ldr	r6, .L449+8
 2355 0018 1746     		mov	r7, r2
 2356 001a 8046     		mov	r8, r0
 2357 001c 2A46     		mov	r2, r5
 2358 001e 0524     		movs	r4, #5
 2359              	.L421:
 2360 0020 013C     		subs	r4, r4, #1
 2361 0022 04EB8401 		add	r1, r4, r4, lsl #2
 2362 0026 5019     		adds	r0, r2, r5
 2363 0028 56F82130 		ldr	r3, [r6, r1, lsl #2]
 2364 002c 08EB8000 		add	r0, r8, r0, lsl #2
 2365 0030 06EB8101 		add	r1, r6, r1, lsl #2
 2366 0034 A3B9     		cbnz	r3, .L443
 2367 0036 002C     		cmp	r4, #0
 2368 0038 F2D1     		bne	.L421
 2369              	.L447:
 2370 003a 254B     		ldr	r3, .L449+12
 2371 003c 1968     		ldr	r1, [r3]
 2372 003e 0B68     		ldr	r3, [r1]
 2373 0040 33BB     		cbnz	r3, .L444
 2374 0042 244B     		ldr	r3, .L449+16
 2375 0044 1968     		ldr	r1, [r3]
 2376 0046 0B68     		ldr	r3, [r1]
 2377 0048 7BBB     		cbnz	r3, .L445
 2378              	.L423:
 2379 004a 2349     		ldr	r1, .L449+20
 2380 004c 0B68     		ldr	r3, [r1]
 2381 004e C3B9     		cbnz	r3, .L446
 2382              	.L424:
 2383 0050 0FB1     		cbz	r7, .L419
 2384              	.L448:
 2385 0052 0023     		movs	r3, #0
 2386 0054 3B60     		str	r3, [r7]
 2387              	.L419:
 2388 0056 FFF7FEFF 		bl	xTaskResumeAll
 2389 005a 2846     		mov	r0, r5
 2390 005c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2391              	.L443:
 2392 0060 0122     		movs	r2, #1
 2393 0062 FFF7FEFF 		bl	prvListTasksWithinSingleList.part.7
 2394 0066 0544     		add	r5, r5, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 43


 2395 0068 EA00     		lsls	r2, r5, #3
 2396 006a 5019     		adds	r0, r2, r5
 2397 006c 08EB8000 		add	r0, r8, r0, lsl #2
 2398 0070 002C     		cmp	r4, #0
 2399 0072 D5D1     		bne	.L421
 2400 0074 E1E7     		b	.L447
 2401              	.L425:
 2402 0076 0025     		movs	r5, #0
 2403 0078 FFF7FEFF 		bl	xTaskResumeAll
 2404 007c 2846     		mov	r0, r5
 2405 007e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2406              	.L446:
 2407 0082 0322     		movs	r2, #3
 2408 0084 FFF7FEFF 		bl	prvListTasksWithinSingleList.part.7
 2409 0088 0544     		add	r5, r5, r0
 2410 008a 002F     		cmp	r7, #0
 2411 008c E1D1     		bne	.L448
 2412 008e E2E7     		b	.L419
 2413              	.L444:
 2414 0090 0222     		movs	r2, #2
 2415 0092 FFF7FEFF 		bl	prvListTasksWithinSingleList.part.7
 2416 0096 0F4B     		ldr	r3, .L449+16
 2417 0098 1968     		ldr	r1, [r3]
 2418 009a 0544     		add	r5, r5, r0
 2419 009c 0B68     		ldr	r3, [r1]
 2420 009e 05EBC500 		add	r0, r5, r5, lsl #3
 2421 00a2 08EB8000 		add	r0, r8, r0, lsl #2
 2422 00a6 002B     		cmp	r3, #0
 2423 00a8 CFD0     		beq	.L423
 2424              	.L445:
 2425 00aa 0222     		movs	r2, #2
 2426 00ac FFF7FEFF 		bl	prvListTasksWithinSingleList.part.7
 2427 00b0 0949     		ldr	r1, .L449+20
 2428 00b2 0544     		add	r5, r5, r0
 2429 00b4 0B68     		ldr	r3, [r1]
 2430 00b6 05EBC500 		add	r0, r5, r5, lsl #3
 2431 00ba 08EB8000 		add	r0, r8, r0, lsl #2
 2432 00be 002B     		cmp	r3, #0
 2433 00c0 C6D0     		beq	.L424
 2434 00c2 DEE7     		b	.L446
 2435              	.L450:
 2436              		.align	2
 2437              	.L449:
 2438 00c4 00000000 		.word	.LANCHOR15
 2439 00c8 00000000 		.word	.LANCHOR10
 2440 00cc 00000000 		.word	.LANCHOR0
 2441 00d0 00000000 		.word	.LANCHOR1
 2442 00d4 00000000 		.word	.LANCHOR8
 2443 00d8 00000000 		.word	.LANCHOR3
 2444              		.size	uxTaskGetSystemState, .-uxTaskGetSystemState
 2445              		.section	.text.uxTaskGetStackHighWaterMark,"ax",%progbits
 2446              		.align	1
 2447              		.p2align 2,,3
 2448              		.global	uxTaskGetStackHighWaterMark
 2449              		.syntax unified
 2450              		.thumb
 2451              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 44


 2452              		.fpu fpv4-sp-d16
 2453              		.type	uxTaskGetStackHighWaterMark, %function
 2454              	uxTaskGetStackHighWaterMark:
 2455              		@ args = 0, pretend = 0, frame = 0
 2456              		@ frame_needed = 0, uses_anonymous_args = 0
 2457              		@ link register save eliminated.
 2458 0000 60B1     		cbz	r0, .L458
 2459 0002 016B     		ldr	r1, [r0, #48]
 2460 0004 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 2461 0006 A52B     		cmp	r3, #165
 2462 0008 0ED1     		bne	.L455
 2463              	.L459:
 2464 000a 4B1C     		adds	r3, r1, #1
 2465              	.L454:
 2466 000c 581A     		subs	r0, r3, r1
 2467 000e 13F8012B 		ldrb	r2, [r3], #1	@ zero_extendqisi2
 2468 0012 A52A     		cmp	r2, #165
 2469 0014 FAD0     		beq	.L454
 2470 0016 C0F38F00 		ubfx	r0, r0, #2, #16
 2471 001a 7047     		bx	lr
 2472              	.L458:
 2473 001c 034B     		ldr	r3, .L460
 2474 001e 1868     		ldr	r0, [r3]
 2475 0020 016B     		ldr	r1, [r0, #48]
 2476 0022 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 2477 0024 A52B     		cmp	r3, #165
 2478 0026 F0D0     		beq	.L459
 2479              	.L455:
 2480 0028 0020     		movs	r0, #0
 2481 002a 7047     		bx	lr
 2482              	.L461:
 2483              		.align	2
 2484              	.L460:
 2485 002c 00000000 		.word	.LANCHOR6
 2486              		.size	uxTaskGetStackHighWaterMark, .-uxTaskGetStackHighWaterMark
 2487              		.section	.text.xTaskGetCurrentTaskHandle,"ax",%progbits
 2488              		.align	1
 2489              		.p2align 2,,3
 2490              		.global	xTaskGetCurrentTaskHandle
 2491              		.syntax unified
 2492              		.thumb
 2493              		.thumb_func
 2494              		.fpu fpv4-sp-d16
 2495              		.type	xTaskGetCurrentTaskHandle, %function
 2496              	xTaskGetCurrentTaskHandle:
 2497              		@ args = 0, pretend = 0, frame = 0
 2498              		@ frame_needed = 0, uses_anonymous_args = 0
 2499              		@ link register save eliminated.
 2500 0000 014B     		ldr	r3, .L463
 2501 0002 1868     		ldr	r0, [r3]
 2502 0004 7047     		bx	lr
 2503              	.L464:
 2504 0006 00BF     		.align	2
 2505              	.L463:
 2506 0008 00000000 		.word	.LANCHOR6
 2507              		.size	xTaskGetCurrentTaskHandle, .-xTaskGetCurrentTaskHandle
 2508              		.section	.text.xTaskGetSchedulerState,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 45


 2509              		.align	1
 2510              		.p2align 2,,3
 2511              		.global	xTaskGetSchedulerState
 2512              		.syntax unified
 2513              		.thumb
 2514              		.thumb_func
 2515              		.fpu fpv4-sp-d16
 2516              		.type	xTaskGetSchedulerState, %function
 2517              	xTaskGetSchedulerState:
 2518              		@ args = 0, pretend = 0, frame = 0
 2519              		@ frame_needed = 0, uses_anonymous_args = 0
 2520              		@ link register save eliminated.
 2521 0000 054B     		ldr	r3, .L469
 2522 0002 1B68     		ldr	r3, [r3]
 2523 0004 33B1     		cbz	r3, .L467
 2524 0006 054B     		ldr	r3, .L469+4
 2525 0008 1B68     		ldr	r3, [r3]
 2526 000a 002B     		cmp	r3, #0
 2527 000c 0CBF     		ite	eq
 2528 000e 0220     		moveq	r0, #2
 2529 0010 0020     		movne	r0, #0
 2530 0012 7047     		bx	lr
 2531              	.L467:
 2532 0014 0120     		movs	r0, #1
 2533 0016 7047     		bx	lr
 2534              	.L470:
 2535              		.align	2
 2536              	.L469:
 2537 0018 00000000 		.word	.LANCHOR13
 2538 001c 00000000 		.word	.LANCHOR15
 2539              		.size	xTaskGetSchedulerState, .-xTaskGetSchedulerState
 2540              		.section	.text.xTaskPriorityInherit,"ax",%progbits
 2541              		.align	1
 2542              		.p2align 2,,3
 2543              		.global	xTaskPriorityInherit
 2544              		.syntax unified
 2545              		.thumb
 2546              		.thumb_func
 2547              		.fpu fpv4-sp-d16
 2548              		.type	xTaskPriorityInherit, %function
 2549              	xTaskPriorityInherit:
 2550              		@ args = 0, pretend = 0, frame = 0
 2551              		@ frame_needed = 0, uses_anonymous_args = 0
 2552 0000 18B3     		cbz	r0, .L482
 2553 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2554 0004 264C     		ldr	r4, .L487
 2555 0006 C36A     		ldr	r3, [r0, #44]
 2556 0008 2268     		ldr	r2, [r4]
 2557 000a D26A     		ldr	r2, [r2, #44]
 2558 000c 9342     		cmp	r3, r2
 2559 000e 14D2     		bcs	.L473
 2560 0010 8269     		ldr	r2, [r0, #24]
 2561 0012 002A     		cmp	r2, #0
 2562 0014 04DB     		blt	.L474
 2563 0016 2268     		ldr	r2, [r4]
 2564 0018 D26A     		ldr	r2, [r2, #44]
 2565 001a C2F10502 		rsb	r2, r2, #5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 46


 2566 001e 8261     		str	r2, [r0, #24]
 2567              	.L474:
 2568 0020 204D     		ldr	r5, .L487+4
 2569 0022 4269     		ldr	r2, [r0, #20]
 2570 0024 03EB8303 		add	r3, r3, r3, lsl #2
 2571 0028 05EB8303 		add	r3, r5, r3, lsl #2
 2572 002c 9A42     		cmp	r2, r3
 2573 002e 0DD0     		beq	.L485
 2574 0030 2368     		ldr	r3, [r4]
 2575 0032 DB6A     		ldr	r3, [r3, #44]
 2576 0034 C362     		str	r3, [r0, #44]
 2577 0036 0120     		movs	r0, #1
 2578 0038 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2579              	.L473:
 2580 003a 2368     		ldr	r3, [r4]
 2581 003c 806C     		ldr	r0, [r0, #72]
 2582 003e DB6A     		ldr	r3, [r3, #44]
 2583 0040 9842     		cmp	r0, r3
 2584 0042 2CBF     		ite	cs
 2585 0044 0020     		movcs	r0, #0
 2586 0046 0120     		movcc	r0, #1
 2587 0048 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2588              	.L482:
 2589 004a 7047     		bx	lr
 2590              	.L485:
 2591 004c 071D     		adds	r7, r0, #4
 2592 004e 0646     		mov	r6, r0
 2593 0050 3846     		mov	r0, r7
 2594 0052 FFF7FEFF 		bl	uxListRemove
 2595 0056 08BB     		cbnz	r0, .L486
 2596 0058 F16A     		ldr	r1, [r6, #44]
 2597 005a 134A     		ldr	r2, .L487+8
 2598 005c 01EB8103 		add	r3, r1, r1, lsl #2
 2599 0060 9B00     		lsls	r3, r3, #2
 2600 0062 EB58     		ldr	r3, [r5, r3]
 2601 0064 33B9     		cbnz	r3, .L477
 2602 0066 1368     		ldr	r3, [r2]
 2603 0068 0120     		movs	r0, #1
 2604 006a 00FA01F1 		lsl	r1, r0, r1
 2605 006e 23EA0101 		bic	r1, r3, r1
 2606 0072 1160     		str	r1, [r2]
 2607              	.L477:
 2608 0074 2368     		ldr	r3, [r4]
 2609 0076 D2F800C0 		ldr	ip, [r2]
 2610 007a D86A     		ldr	r0, [r3, #44]
 2611 007c F062     		str	r0, [r6, #44]
 2612 007e 0124     		movs	r4, #1
 2613 0080 04FA00F3 		lsl	r3, r4, r0
 2614 0084 00EB8000 		add	r0, r0, r0, lsl #2
 2615 0088 05EB8000 		add	r0, r5, r0, lsl #2
 2616 008c 43EA0C03 		orr	r3, r3, ip
 2617 0090 3946     		mov	r1, r7
 2618 0092 1360     		str	r3, [r2]
 2619 0094 FFF7FEFF 		bl	vListInsertEnd
 2620 0098 2046     		mov	r0, r4
 2621 009a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2622              	.L486:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 47


 2623 009c 024A     		ldr	r2, .L487+8
 2624 009e E9E7     		b	.L477
 2625              	.L488:
 2626              		.align	2
 2627              	.L487:
 2628 00a0 00000000 		.word	.LANCHOR6
 2629 00a4 00000000 		.word	.LANCHOR0
 2630 00a8 00000000 		.word	.LANCHOR7
 2631              		.size	xTaskPriorityInherit, .-xTaskPriorityInherit
 2632              		.section	.text.xTaskPriorityDisinherit,"ax",%progbits
 2633              		.align	1
 2634              		.p2align 2,,3
 2635              		.global	xTaskPriorityDisinherit
 2636              		.syntax unified
 2637              		.thumb
 2638              		.thumb_func
 2639              		.fpu fpv4-sp-d16
 2640              		.type	xTaskPriorityDisinherit, %function
 2641              	xTaskPriorityDisinherit:
 2642              		@ args = 0, pretend = 0, frame = 0
 2643              		@ frame_needed = 0, uses_anonymous_args = 0
 2644 0000 E0B1     		cbz	r0, .L503
 2645 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2646 0004 264B     		ldr	r3, .L506
 2647 0006 1B68     		ldr	r3, [r3]
 2648 0008 8342     		cmp	r3, r0
 2649 000a 0446     		mov	r4, r0
 2650 000c 04D0     		beq	.L492
 2651 000e 2549     		ldr	r1, .L506+4
 2652 0010 40F63B70 		movw	r0, #3899
 2653 0014 FFF7FEFF 		bl	vAssertCalled
 2654              	.L492:
 2655 0018 E36C     		ldr	r3, [r4, #76]
 2656 001a 43B1     		cbz	r3, .L504
 2657              	.L493:
 2658 001c E16A     		ldr	r1, [r4, #44]
 2659 001e A26C     		ldr	r2, [r4, #72]
 2660 0020 013B     		subs	r3, r3, #1
 2661 0022 9142     		cmp	r1, r2
 2662 0024 E364     		str	r3, [r4, #76]
 2663 0026 00D0     		beq	.L494
 2664 0028 53B1     		cbz	r3, .L505
 2665              	.L494:
 2666 002a 0020     		movs	r0, #0
 2667 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2668              	.L504:
 2669 002e 1D49     		ldr	r1, .L506+4
 2670 0030 40F63C70 		movw	r0, #3900
 2671 0034 FFF7FEFF 		bl	vAssertCalled
 2672 0038 E36C     		ldr	r3, [r4, #76]
 2673 003a EFE7     		b	.L493
 2674              	.L503:
 2675 003c 0020     		movs	r0, #0
 2676 003e 7047     		bx	lr
 2677              	.L505:
 2678 0040 271D     		adds	r7, r4, #4
 2679 0042 3846     		mov	r0, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 48


 2680 0044 FFF7FEFF 		bl	uxListRemove
 2681 0048 C0B1     		cbz	r0, .L498
 2682 004a 1748     		ldr	r0, .L506+8
 2683 004c 174E     		ldr	r6, .L506+12
 2684              	.L495:
 2685 004e A36C     		ldr	r3, [r4, #72]
 2686 0050 D6F800E0 		ldr	lr, [r6]
 2687 0054 E362     		str	r3, [r4, #44]
 2688 0056 0125     		movs	r5, #1
 2689 0058 C3F1050C 		rsb	ip, r3, #5
 2690 005c 05FA03F2 		lsl	r2, r5, r3
 2691 0060 03EB8303 		add	r3, r3, r3, lsl #2
 2692 0064 42EA0E02 		orr	r2, r2, lr
 2693 0068 00EB8300 		add	r0, r0, r3, lsl #2
 2694 006c 3946     		mov	r1, r7
 2695 006e C4F818C0 		str	ip, [r4, #24]
 2696 0072 3260     		str	r2, [r6]
 2697 0074 FFF7FEFF 		bl	vListInsertEnd
 2698 0078 2846     		mov	r0, r5
 2699 007a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2700              	.L498:
 2701 007c E26A     		ldr	r2, [r4, #44]
 2702 007e 0A48     		ldr	r0, .L506+8
 2703 0080 0A4E     		ldr	r6, .L506+12
 2704 0082 02EB8203 		add	r3, r2, r2, lsl #2
 2705 0086 9B00     		lsls	r3, r3, #2
 2706 0088 C358     		ldr	r3, [r0, r3]
 2707 008a 002B     		cmp	r3, #0
 2708 008c DFD1     		bne	.L495
 2709 008e 3368     		ldr	r3, [r6]
 2710 0090 0121     		movs	r1, #1
 2711 0092 01FA02F2 		lsl	r2, r1, r2
 2712 0096 23EA0202 		bic	r2, r3, r2
 2713 009a 3260     		str	r2, [r6]
 2714 009c D7E7     		b	.L495
 2715              	.L507:
 2716 009e 00BF     		.align	2
 2717              	.L506:
 2718 00a0 00000000 		.word	.LANCHOR6
 2719 00a4 00000000 		.word	.LC0
 2720 00a8 00000000 		.word	.LANCHOR0
 2721 00ac 00000000 		.word	.LANCHOR7
 2722              		.size	xTaskPriorityDisinherit, .-xTaskPriorityDisinherit
 2723              		.section	.text.vTaskPriorityDisinheritAfterTimeout,"ax",%progbits
 2724              		.align	1
 2725              		.p2align 2,,3
 2726              		.global	vTaskPriorityDisinheritAfterTimeout
 2727              		.syntax unified
 2728              		.thumb
 2729              		.thumb_func
 2730              		.fpu fpv4-sp-d16
 2731              		.type	vTaskPriorityDisinheritAfterTimeout, %function
 2732              	vTaskPriorityDisinheritAfterTimeout:
 2733              		@ args = 0, pretend = 0, frame = 0
 2734              		@ frame_needed = 0, uses_anonymous_args = 0
 2735 0000 A8B1     		cbz	r0, .L520
 2736 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 49


 2737 0004 C36C     		ldr	r3, [r0, #76]
 2738 0006 0446     		mov	r4, r0
 2739 0008 0D46     		mov	r5, r1
 2740 000a 53B1     		cbz	r3, .L523
 2741              	.L511:
 2742 000c A16C     		ldr	r1, [r4, #72]
 2743 000e E36A     		ldr	r3, [r4, #44]
 2744 0010 8D42     		cmp	r5, r1
 2745 0012 38BF     		it	cc
 2746 0014 0D46     		movcc	r5, r1
 2747 0016 AB42     		cmp	r3, r5
 2748 0018 02D0     		beq	.L508
 2749 001a E26C     		ldr	r2, [r4, #76]
 2750 001c 012A     		cmp	r2, #1
 2751 001e 07D0     		beq	.L524
 2752              	.L508:
 2753 0020 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2754              	.L523:
 2755 0022 2249     		ldr	r1, .L526
 2756 0024 40F68A70 		movw	r0, #3978
 2757 0028 FFF7FEFF 		bl	vAssertCalled
 2758 002c EEE7     		b	.L511
 2759              	.L520:
 2760 002e 7047     		bx	lr
 2761              	.L524:
 2762 0030 1F4A     		ldr	r2, .L526+4
 2763 0032 1268     		ldr	r2, [r2]
 2764 0034 A242     		cmp	r2, r4
 2765 0036 23D0     		beq	.L525
 2766              	.L513:
 2767 0038 A269     		ldr	r2, [r4, #24]
 2768 003a E562     		str	r5, [r4, #44]
 2769 003c 002A     		cmp	r2, #0
 2770 003e A4BF     		itt	ge
 2771 0040 C5F10505 		rsbge	r5, r5, #5
 2772 0044 A561     		strge	r5, [r4, #24]
 2773 0046 1B4D     		ldr	r5, .L526+8
 2774 0048 6269     		ldr	r2, [r4, #20]
 2775 004a 03EB8303 		add	r3, r3, r3, lsl #2
 2776 004e 05EB8303 		add	r3, r5, r3, lsl #2
 2777 0052 9A42     		cmp	r2, r3
 2778 0054 E4D1     		bne	.L508
 2779 0056 271D     		adds	r7, r4, #4
 2780 0058 3846     		mov	r0, r7
 2781 005a FFF7FEFF 		bl	uxListRemove
 2782 005e E36A     		ldr	r3, [r4, #44]
 2783 0060 A8B1     		cbz	r0, .L515
 2784 0062 0122     		movs	r2, #1
 2785 0064 144E     		ldr	r6, .L526+12
 2786 0066 9A40     		lsls	r2, r2, r3
 2787 0068 9800     		lsls	r0, r3, #2
 2788              	.L516:
 2789 006a 3468     		ldr	r4, [r6]
 2790 006c 1844     		add	r0, r0, r3
 2791 006e 2243     		orrs	r2, r2, r4
 2792 0070 05EB8000 		add	r0, r5, r0, lsl #2
 2793 0074 3946     		mov	r1, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 50


 2794 0076 3260     		str	r2, [r6]
 2795 0078 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 2796 007c FFF7FEBF 		b	vListInsertEnd
 2797              	.L525:
 2798 0080 0A49     		ldr	r1, .L526
 2799 0082 40F6A570 		movw	r0, #4005
 2800 0086 FFF7FEFF 		bl	vAssertCalled
 2801 008a E36A     		ldr	r3, [r4, #44]
 2802 008c D4E7     		b	.L513
 2803              	.L515:
 2804 008e 9800     		lsls	r0, r3, #2
 2805 0090 C118     		adds	r1, r0, r3
 2806 0092 8900     		lsls	r1, r1, #2
 2807 0094 0122     		movs	r2, #1
 2808 0096 6958     		ldr	r1, [r5, r1]
 2809 0098 074E     		ldr	r6, .L526+12
 2810 009a 9A40     		lsls	r2, r2, r3
 2811 009c 0029     		cmp	r1, #0
 2812 009e E4D1     		bne	.L516
 2813 00a0 3168     		ldr	r1, [r6]
 2814 00a2 21EA0201 		bic	r1, r1, r2
 2815 00a6 3160     		str	r1, [r6]
 2816 00a8 DFE7     		b	.L516
 2817              	.L527:
 2818 00aa 00BF     		.align	2
 2819              	.L526:
 2820 00ac 00000000 		.word	.LC0
 2821 00b0 00000000 		.word	.LANCHOR6
 2822 00b4 00000000 		.word	.LANCHOR0
 2823 00b8 00000000 		.word	.LANCHOR7
 2824              		.size	vTaskPriorityDisinheritAfterTimeout, .-vTaskPriorityDisinheritAfterTimeout
 2825              		.section	.text.uxTaskResetEventItemValue,"ax",%progbits
 2826              		.align	1
 2827              		.p2align 2,,3
 2828              		.global	uxTaskResetEventItemValue
 2829              		.syntax unified
 2830              		.thumb
 2831              		.thumb_func
 2832              		.fpu fpv4-sp-d16
 2833              		.type	uxTaskResetEventItemValue, %function
 2834              	uxTaskResetEventItemValue:
 2835              		@ args = 0, pretend = 0, frame = 0
 2836              		@ frame_needed = 0, uses_anonymous_args = 0
 2837              		@ link register save eliminated.
 2838 0000 044A     		ldr	r2, .L529
 2839 0002 1168     		ldr	r1, [r2]
 2840 0004 1368     		ldr	r3, [r2]
 2841 0006 1268     		ldr	r2, [r2]
 2842 0008 DB6A     		ldr	r3, [r3, #44]
 2843 000a 8869     		ldr	r0, [r1, #24]
 2844 000c C3F10503 		rsb	r3, r3, #5
 2845 0010 9361     		str	r3, [r2, #24]
 2846 0012 7047     		bx	lr
 2847              	.L530:
 2848              		.align	2
 2849              	.L529:
 2850 0014 00000000 		.word	.LANCHOR6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 51


 2851              		.size	uxTaskResetEventItemValue, .-uxTaskResetEventItemValue
 2852              		.section	.text.pvTaskIncrementMutexHeldCount,"ax",%progbits
 2853              		.align	1
 2854              		.p2align 2,,3
 2855              		.global	pvTaskIncrementMutexHeldCount
 2856              		.syntax unified
 2857              		.thumb
 2858              		.thumb_func
 2859              		.fpu fpv4-sp-d16
 2860              		.type	pvTaskIncrementMutexHeldCount, %function
 2861              	pvTaskIncrementMutexHeldCount:
 2862              		@ args = 0, pretend = 0, frame = 0
 2863              		@ frame_needed = 0, uses_anonymous_args = 0
 2864              		@ link register save eliminated.
 2865 0000 044B     		ldr	r3, .L536
 2866 0002 1A68     		ldr	r2, [r3]
 2867 0004 1AB1     		cbz	r2, .L532
 2868 0006 1968     		ldr	r1, [r3]
 2869 0008 CA6C     		ldr	r2, [r1, #76]
 2870 000a 0132     		adds	r2, r2, #1
 2871 000c CA64     		str	r2, [r1, #76]
 2872              	.L532:
 2873 000e 1868     		ldr	r0, [r3]
 2874 0010 7047     		bx	lr
 2875              	.L537:
 2876 0012 00BF     		.align	2
 2877              	.L536:
 2878 0014 00000000 		.word	.LANCHOR6
 2879              		.size	pvTaskIncrementMutexHeldCount, .-pvTaskIncrementMutexHeldCount
 2880              		.section	.text.ulTaskNotifyTake,"ax",%progbits
 2881              		.align	1
 2882              		.p2align 2,,3
 2883              		.global	ulTaskNotifyTake
 2884              		.syntax unified
 2885              		.thumb
 2886              		.thumb_func
 2887              		.fpu fpv4-sp-d16
 2888              		.type	ulTaskNotifyTake, %function
 2889              	ulTaskNotifyTake:
 2890              		@ args = 0, pretend = 0, frame = 0
 2891              		@ frame_needed = 0, uses_anonymous_args = 0
 2892 0000 70B5     		push	{r4, r5, r6, lr}
 2893 0002 174C     		ldr	r4, .L553
 2894 0004 0646     		mov	r6, r0
 2895 0006 0D46     		mov	r5, r1
 2896 0008 FFF7FEFF 		bl	vPortEnterCritical
 2897 000c 2368     		ldr	r3, [r4]
 2898 000e 1B6D     		ldr	r3, [r3, #80]
 2899 0010 23B9     		cbnz	r3, .L540
 2900 0012 2368     		ldr	r3, [r4]
 2901 0014 0121     		movs	r1, #1
 2902 0016 83F85410 		strb	r1, [r3, #84]
 2903 001a ADB9     		cbnz	r5, .L551
 2904              	.L540:
 2905 001c FFF7FEFF 		bl	vPortExitCritical
 2906 0020 FFF7FEFF 		bl	vPortEnterCritical
 2907 0024 2368     		ldr	r3, [r4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 52


 2908 0026 1D6D     		ldr	r5, [r3, #80]
 2909 0028 1DB1     		cbz	r5, .L542
 2910 002a 2368     		ldr	r3, [r4]
 2911 002c 4EB9     		cbnz	r6, .L552
 2912 002e 6A1E     		subs	r2, r5, #1
 2913 0030 1A65     		str	r2, [r3, #80]
 2914              	.L542:
 2915 0032 2368     		ldr	r3, [r4]
 2916 0034 0022     		movs	r2, #0
 2917 0036 83F85420 		strb	r2, [r3, #84]
 2918 003a FFF7FEFF 		bl	vPortExitCritical
 2919 003e 2846     		mov	r0, r5
 2920 0040 70BD     		pop	{r4, r5, r6, pc}
 2921              	.L552:
 2922 0042 0022     		movs	r2, #0
 2923 0044 1A65     		str	r2, [r3, #80]
 2924 0046 F4E7     		b	.L542
 2925              	.L551:
 2926 0048 2846     		mov	r0, r5
 2927 004a FFF7FEFF 		bl	prvAddCurrentTaskToDelayedList
 2928 004e 054B     		ldr	r3, .L553+4
 2929 0050 4FF08052 		mov	r2, #268435456
 2930 0054 1A60     		str	r2, [r3]
 2931              		.syntax unified
 2932              	@ 4433 "../src/tasks.c" 1
 2933 0056 BFF34F8F 		dsb
 2934              	@ 0 "" 2
 2935              	@ 4433 "../src/tasks.c" 1
 2936 005a BFF36F8F 		isb
 2937              	@ 0 "" 2
 2938              		.thumb
 2939              		.syntax unified
 2940 005e DDE7     		b	.L540
 2941              	.L554:
 2942              		.align	2
 2943              	.L553:
 2944 0060 00000000 		.word	.LANCHOR6
 2945 0064 04ED00E0 		.word	-536810236
 2946              		.size	ulTaskNotifyTake, .-ulTaskNotifyTake
 2947              		.section	.text.xTaskNotifyWait,"ax",%progbits
 2948              		.align	1
 2949              		.p2align 2,,3
 2950              		.global	xTaskNotifyWait
 2951              		.syntax unified
 2952              		.thumb
 2953              		.thumb_func
 2954              		.fpu fpv4-sp-d16
 2955              		.type	xTaskNotifyWait, %function
 2956              	xTaskNotifyWait:
 2957              		@ args = 0, pretend = 0, frame = 0
 2958              		@ frame_needed = 0, uses_anonymous_args = 0
 2959 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2960 0004 1F4C     		ldr	r4, .L571
 2961 0006 1546     		mov	r5, r2
 2962 0008 8046     		mov	r8, r0
 2963 000a 0E46     		mov	r6, r1
 2964 000c 1F46     		mov	r7, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 53


 2965 000e FFF7FEFF 		bl	vPortEnterCritical
 2966 0012 2268     		ldr	r2, [r4]
 2967 0014 92F85420 		ldrb	r2, [r2, #84]	@ zero_extendqisi2
 2968 0018 022A     		cmp	r2, #2
 2969 001a 09D0     		beq	.L557
 2970 001c 2168     		ldr	r1, [r4]
 2971 001e 0A6D     		ldr	r2, [r1, #80]
 2972 0020 22EA0802 		bic	r2, r2, r8
 2973 0024 0A65     		str	r2, [r1, #80]
 2974 0026 2368     		ldr	r3, [r4]
 2975 0028 0121     		movs	r1, #1
 2976 002a 83F85410 		strb	r1, [r3, #84]
 2977 002e B7B9     		cbnz	r7, .L569
 2978              	.L557:
 2979 0030 FFF7FEFF 		bl	vPortExitCritical
 2980 0034 FFF7FEFF 		bl	vPortEnterCritical
 2981 0038 15B1     		cbz	r5, .L559
 2982 003a 2368     		ldr	r3, [r4]
 2983 003c 1B6D     		ldr	r3, [r3, #80]
 2984 003e 2B60     		str	r3, [r5]
 2985              	.L559:
 2986 0040 2368     		ldr	r3, [r4]
 2987 0042 93F85430 		ldrb	r3, [r3, #84]	@ zero_extendqisi2
 2988 0046 022B     		cmp	r3, #2
 2989 0048 15D0     		beq	.L570
 2990 004a 0025     		movs	r5, #0
 2991              	.L560:
 2992 004c 2368     		ldr	r3, [r4]
 2993 004e 0022     		movs	r2, #0
 2994 0050 83F85420 		strb	r2, [r3, #84]
 2995 0054 FFF7FEFF 		bl	vPortExitCritical
 2996 0058 2846     		mov	r0, r5
 2997 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2998              	.L569:
 2999 005e 3846     		mov	r0, r7
 3000 0060 FFF7FEFF 		bl	prvAddCurrentTaskToDelayedList
 3001 0064 084B     		ldr	r3, .L571+4
 3002 0066 4FF08052 		mov	r2, #268435456
 3003 006a 1A60     		str	r2, [r3]
 3004              		.syntax unified
 3005              	@ 4506 "../src/tasks.c" 1
 3006 006c BFF34F8F 		dsb
 3007              	@ 0 "" 2
 3008              	@ 4506 "../src/tasks.c" 1
 3009 0070 BFF36F8F 		isb
 3010              	@ 0 "" 2
 3011              		.thumb
 3012              		.syntax unified
 3013 0074 DCE7     		b	.L557
 3014              	.L570:
 3015 0076 2268     		ldr	r2, [r4]
 3016 0078 136D     		ldr	r3, [r2, #80]
 3017 007a 23EA0606 		bic	r6, r3, r6
 3018 007e 1665     		str	r6, [r2, #80]
 3019 0080 0125     		movs	r5, #1
 3020 0082 E3E7     		b	.L560
 3021              	.L572:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 54


 3022              		.align	2
 3023              	.L571:
 3024 0084 00000000 		.word	.LANCHOR6
 3025 0088 04ED00E0 		.word	-536810236
 3026              		.size	xTaskNotifyWait, .-xTaskNotifyWait
 3027              		.section	.text.xTaskGenericNotify,"ax",%progbits
 3028              		.align	1
 3029              		.p2align 2,,3
 3030              		.global	xTaskGenericNotify
 3031              		.syntax unified
 3032              		.thumb
 3033              		.thumb_func
 3034              		.fpu fpv4-sp-d16
 3035              		.type	xTaskGenericNotify, %function
 3036              	xTaskGenericNotify:
 3037              		@ args = 0, pretend = 0, frame = 0
 3038              		@ frame_needed = 0, uses_anonymous_args = 0
 3039 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3040 0002 0F46     		mov	r7, r1
 3041 0004 1646     		mov	r6, r2
 3042 0006 1D46     		mov	r5, r3
 3043 0008 0446     		mov	r4, r0
 3044 000a 0028     		cmp	r0, #0
 3045 000c 4FD0     		beq	.L596
 3046              	.L574:
 3047 000e FFF7FEFF 		bl	vPortEnterCritical
 3048 0012 0DB1     		cbz	r5, .L575
 3049 0014 236D     		ldr	r3, [r4, #80]
 3050 0016 2B60     		str	r3, [r5]
 3051              	.L575:
 3052 0018 94F85450 		ldrb	r5, [r4, #84]	@ zero_extendqisi2
 3053 001c 0223     		movs	r3, #2
 3054 001e 721E     		subs	r2, r6, #1
 3055 0020 EDB2     		uxtb	r5, r5
 3056 0022 84F85430 		strb	r3, [r4, #84]
 3057 0026 032A     		cmp	r2, #3
 3058 0028 06D8     		bhi	.L576
 3059 002a DFE802F0 		tbb	[pc, r2]
 3060              	.L578:
 3061 002e 3A       		.byte	(.L577-.L578)/2
 3062 002f 0C       		.byte	(.L579-.L578)/2
 3063 0030 04       		.byte	(.L594-.L578)/2
 3064 0031 02       		.byte	(.L581-.L578)/2
 3065              		.p2align 1
 3066              	.L581:
 3067 0032 022D     		cmp	r5, #2
 3068 0034 39D0     		beq	.L586
 3069              	.L594:
 3070 0036 2765     		str	r7, [r4, #80]
 3071              	.L576:
 3072 0038 012D     		cmp	r5, #1
 3073 003a 0AD0     		beq	.L583
 3074              	.L595:
 3075 003c 0124     		movs	r4, #1
 3076              	.L582:
 3077 003e FFF7FEFF 		bl	vPortExitCritical
 3078 0042 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 55


 3079 0044 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3080              	.L579:
 3081 0046 236D     		ldr	r3, [r4, #80]
 3082 0048 012D     		cmp	r5, #1
 3083 004a 03F10103 		add	r3, r3, #1
 3084 004e 2365     		str	r3, [r4, #80]
 3085 0050 F4D1     		bne	.L595
 3086              	.L583:
 3087 0052 261D     		adds	r6, r4, #4
 3088 0054 3046     		mov	r0, r6
 3089 0056 FFF7FEFF 		bl	uxListRemove
 3090 005a 184A     		ldr	r2, .L597
 3091 005c E36A     		ldr	r3, [r4, #44]
 3092 005e 1768     		ldr	r7, [r2]
 3093 0060 1748     		ldr	r0, .L597+4
 3094 0062 9D40     		lsls	r5, r5, r3
 3095 0064 03EB8303 		add	r3, r3, r3, lsl #2
 3096 0068 00EB8300 		add	r0, r0, r3, lsl #2
 3097 006c 3146     		mov	r1, r6
 3098 006e 3D43     		orrs	r5, r5, r7
 3099 0070 1560     		str	r5, [r2]
 3100 0072 FFF7FEFF 		bl	vListInsertEnd
 3101 0076 A36A     		ldr	r3, [r4, #40]
 3102 0078 23B1     		cbz	r3, .L584
 3103 007a 1249     		ldr	r1, .L597+8
 3104 007c 41F20E20 		movw	r0, #4622
 3105 0080 FFF7FEFF 		bl	vAssertCalled
 3106              	.L584:
 3107 0084 104B     		ldr	r3, .L597+12
 3108 0086 E26A     		ldr	r2, [r4, #44]
 3109 0088 1B68     		ldr	r3, [r3]
 3110 008a DB6A     		ldr	r3, [r3, #44]
 3111 008c 9A42     		cmp	r2, r3
 3112 008e D5D9     		bls	.L595
 3113 0090 0E4B     		ldr	r3, .L597+16
 3114 0092 4FF08052 		mov	r2, #268435456
 3115 0096 1A60     		str	r2, [r3]
 3116              		.syntax unified
 3117              	@ 4644 "../src/tasks.c" 1
 3118 0098 BFF34F8F 		dsb
 3119              	@ 0 "" 2
 3120              	@ 4644 "../src/tasks.c" 1
 3121 009c BFF36F8F 		isb
 3122              	@ 0 "" 2
 3123              		.thumb
 3124              		.syntax unified
 3125 00a0 CCE7     		b	.L595
 3126              	.L577:
 3127 00a2 236D     		ldr	r3, [r4, #80]
 3128 00a4 1F43     		orrs	r7, r7, r3
 3129 00a6 2765     		str	r7, [r4, #80]
 3130 00a8 C6E7     		b	.L576
 3131              	.L586:
 3132 00aa 0024     		movs	r4, #0
 3133 00ac C7E7     		b	.L582
 3134              	.L596:
 3135 00ae 0549     		ldr	r1, .L597+8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 56


 3136 00b0 41F2D610 		movw	r0, #4566
 3137 00b4 FFF7FEFF 		bl	vAssertCalled
 3138 00b8 A9E7     		b	.L574
 3139              	.L598:
 3140 00ba 00BF     		.align	2
 3141              	.L597:
 3142 00bc 00000000 		.word	.LANCHOR7
 3143 00c0 00000000 		.word	.LANCHOR0
 3144 00c4 00000000 		.word	.LC0
 3145 00c8 00000000 		.word	.LANCHOR6
 3146 00cc 04ED00E0 		.word	-536810236
 3147              		.size	xTaskGenericNotify, .-xTaskGenericNotify
 3148              		.section	.text.xTaskGenericNotifyFromISR,"ax",%progbits
 3149              		.align	1
 3150              		.p2align 2,,3
 3151              		.global	xTaskGenericNotifyFromISR
 3152              		.syntax unified
 3153              		.thumb
 3154              		.thumb_func
 3155              		.fpu fpv4-sp-d16
 3156              		.type	xTaskGenericNotifyFromISR, %function
 3157              	xTaskGenericNotifyFromISR:
 3158              		@ args = 4, pretend = 0, frame = 0
 3159              		@ frame_needed = 0, uses_anonymous_args = 0
 3160 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3161 0004 8846     		mov	r8, r1
 3162 0006 1546     		mov	r5, r2
 3163 0008 1E46     		mov	r6, r3
 3164 000a 0446     		mov	r4, r0
 3165 000c 0028     		cmp	r0, #0
 3166 000e 67D0     		beq	.L625
 3167              	.L600:
 3168 0010 FFF7FEFF 		bl	vPortValidateInterruptPriority
 3169              		.syntax unified
 3170              	@ 212 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 3171 0014 EFF31187 			mrs r7, basepri											
 3172 0018 4FF05003 		mov r3, #80												
 3173 001c 83F31188 		msr basepri, r3											
 3174 0020 BFF36F8F 		isb														
 3175 0024 BFF34F8F 		dsb														
 3176              	
 3177              	@ 0 "" 2
 3178              		.thumb
 3179              		.syntax unified
 3180 0028 0EB1     		cbz	r6, .L601
 3181 002a 236D     		ldr	r3, [r4, #80]
 3182 002c 3360     		str	r3, [r6]
 3183              	.L601:
 3184 002e 94F85430 		ldrb	r3, [r4, #84]	@ zero_extendqisi2
 3185 0032 0221     		movs	r1, #2
 3186 0034 6A1E     		subs	r2, r5, #1
 3187 0036 DBB2     		uxtb	r3, r3
 3188 0038 84F85410 		strb	r1, [r4, #84]
 3189 003c 032A     		cmp	r2, #3
 3190 003e 07D8     		bhi	.L602
 3191 0040 DFE802F0 		tbb	[pc, r2]
 3192              	.L604:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 57


 3193 0044 31       		.byte	(.L603-.L604)/2
 3194 0045 0D       		.byte	(.L605-.L604)/2
 3195 0046 04       		.byte	(.L623-.L604)/2
 3196 0047 02       		.byte	(.L607-.L604)/2
 3197              		.p2align 1
 3198              	.L607:
 3199 0048 022B     		cmp	r3, #2
 3200 004a 47D0     		beq	.L615
 3201              	.L623:
 3202 004c C4F85080 		str	r8, [r4, #80]
 3203              	.L602:
 3204 0050 012B     		cmp	r3, #1
 3205 0052 0AD0     		beq	.L609
 3206              	.L613:
 3207 0054 0120     		movs	r0, #1
 3208              	.L608:
 3209              		.syntax unified
 3210              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 3211 0056 87F31188 			msr basepri, r7	
 3212              	@ 0 "" 2
 3213              		.thumb
 3214              		.syntax unified
 3215 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3216              	.L605:
 3217 005e 226D     		ldr	r2, [r4, #80]
 3218 0060 012B     		cmp	r3, #1
 3219 0062 02F10102 		add	r2, r2, #1
 3220 0066 2265     		str	r2, [r4, #80]
 3221 0068 F4D1     		bne	.L613
 3222              	.L609:
 3223 006a A36A     		ldr	r3, [r4, #40]
 3224 006c 23B1     		cbz	r3, .L610
 3225 006e 1F49     		ldr	r1, .L627
 3226 0070 41F28820 		movw	r0, #4744
 3227 0074 FFF7FEFF 		bl	vAssertCalled
 3228              	.L610:
 3229 0078 1D4B     		ldr	r3, .L627+4
 3230 007a 1B68     		ldr	r3, [r3]
 3231 007c C3B1     		cbz	r3, .L626
 3232 007e 04F11801 		add	r1, r4, #24
 3233 0082 1C48     		ldr	r0, .L627+8
 3234 0084 FFF7FEFF 		bl	vListInsertEnd
 3235              	.L612:
 3236 0088 1B4B     		ldr	r3, .L627+12
 3237 008a E26A     		ldr	r2, [r4, #44]
 3238 008c 1B68     		ldr	r3, [r3]
 3239 008e DB6A     		ldr	r3, [r3, #44]
 3240 0090 9A42     		cmp	r2, r3
 3241 0092 DFD9     		bls	.L613
 3242 0094 069B     		ldr	r3, [sp, #24]
 3243 0096 03B9     		cbnz	r3, .L624
 3244 0098 184B     		ldr	r3, .L627+16
 3245              	.L624:
 3246 009a 0120     		movs	r0, #1
 3247 009c 1860     		str	r0, [r3]
 3248              		.syntax unified
 3249              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 58


 3250 009e 87F31188 			msr basepri, r7	
 3251              	@ 0 "" 2
 3252              		.thumb
 3253              		.syntax unified
 3254 00a2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3255              	.L603:
 3256 00a6 226D     		ldr	r2, [r4, #80]
 3257 00a8 42EA0802 		orr	r2, r2, r8
 3258 00ac 2265     		str	r2, [r4, #80]
 3259 00ae CFE7     		b	.L602
 3260              	.L626:
 3261 00b0 261D     		adds	r6, r4, #4
 3262 00b2 134D     		ldr	r5, .L627+20
 3263 00b4 3046     		mov	r0, r6
 3264 00b6 FFF7FEFF 		bl	uxListRemove
 3265 00ba E26A     		ldr	r2, [r4, #44]
 3266 00bc D5F800C0 		ldr	ip, [r5]
 3267 00c0 1048     		ldr	r0, .L627+24
 3268 00c2 0123     		movs	r3, #1
 3269 00c4 9340     		lsls	r3, r3, r2
 3270 00c6 02EB8202 		add	r2, r2, r2, lsl #2
 3271 00ca 43EA0C03 		orr	r3, r3, ip
 3272 00ce 3146     		mov	r1, r6
 3273 00d0 00EB8200 		add	r0, r0, r2, lsl #2
 3274 00d4 2B60     		str	r3, [r5]
 3275 00d6 FFF7FEFF 		bl	vListInsertEnd
 3276 00da D5E7     		b	.L612
 3277              	.L615:
 3278 00dc 0020     		movs	r0, #0
 3279 00de BAE7     		b	.L608
 3280              	.L625:
 3281 00e0 0249     		ldr	r1, .L627
 3282 00e2 41F24120 		movw	r0, #4673
 3283 00e6 FFF7FEFF 		bl	vAssertCalled
 3284 00ea 91E7     		b	.L600
 3285              	.L628:
 3286              		.align	2
 3287              	.L627:
 3288 00ec 00000000 		.word	.LC0
 3289 00f0 00000000 		.word	.LANCHOR15
 3290 00f4 00000000 		.word	.LANCHOR4
 3291 00f8 00000000 		.word	.LANCHOR6
 3292 00fc 00000000 		.word	.LANCHOR9
 3293 0100 00000000 		.word	.LANCHOR7
 3294 0104 00000000 		.word	.LANCHOR0
 3295              		.size	xTaskGenericNotifyFromISR, .-xTaskGenericNotifyFromISR
 3296              		.section	.text.vTaskNotifyGiveFromISR,"ax",%progbits
 3297              		.align	1
 3298              		.p2align 2,,3
 3299              		.global	vTaskNotifyGiveFromISR
 3300              		.syntax unified
 3301              		.thumb
 3302              		.thumb_func
 3303              		.fpu fpv4-sp-d16
 3304              		.type	vTaskNotifyGiveFromISR, %function
 3305              	vTaskNotifyGiveFromISR:
 3306              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 59


 3307              		@ frame_needed = 0, uses_anonymous_args = 0
 3308 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3309 0004 0E46     		mov	r6, r1
 3310 0006 0446     		mov	r4, r0
 3311 0008 0028     		cmp	r0, #0
 3312 000a 4DD0     		beq	.L642
 3313              	.L630:
 3314 000c FFF7FEFF 		bl	vPortValidateInterruptPriority
 3315              		.syntax unified
 3316              	@ 212 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 3317 0010 EFF31185 			mrs r5, basepri											
 3318 0014 4FF05003 		mov r3, #80												
 3319 0018 83F31188 		msr basepri, r3											
 3320 001c BFF36F8F 		isb														
 3321 0020 BFF34F8F 		dsb														
 3322              	
 3323              	@ 0 "" 2
 3324              		.thumb
 3325              		.syntax unified
 3326 0024 0223     		movs	r3, #2
 3327 0026 94F85420 		ldrb	r2, [r4, #84]	@ zero_extendqisi2
 3328 002a 84F85430 		strb	r3, [r4, #84]
 3329 002e 236D     		ldr	r3, [r4, #80]
 3330 0030 012A     		cmp	r2, #1
 3331 0032 03F10103 		add	r3, r3, #1
 3332 0036 2365     		str	r3, [r4, #80]
 3333 0038 03D0     		beq	.L643
 3334              	.L632:
 3335              		.syntax unified
 3336              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 3337 003a 85F31188 			msr basepri, r5	
 3338              	@ 0 "" 2
 3339              		.thumb
 3340              		.syntax unified
 3341 003e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3342              	.L643:
 3343 0042 A36A     		ldr	r3, [r4, #40]
 3344 0044 23B1     		cbz	r3, .L633
 3345 0046 1D49     		ldr	r1, .L645
 3346 0048 41F2E220 		movw	r0, #4834
 3347 004c FFF7FEFF 		bl	vAssertCalled
 3348              	.L633:
 3349 0050 1B4B     		ldr	r3, .L645+4
 3350 0052 1B68     		ldr	r3, [r3]
 3351 0054 8BB1     		cbz	r3, .L644
 3352 0056 04F11801 		add	r1, r4, #24
 3353 005a 1A48     		ldr	r0, .L645+8
 3354 005c FFF7FEFF 		bl	vListInsertEnd
 3355              	.L635:
 3356 0060 194B     		ldr	r3, .L645+12
 3357 0062 E26A     		ldr	r2, [r4, #44]
 3358 0064 1B68     		ldr	r3, [r3]
 3359 0066 DB6A     		ldr	r3, [r3, #44]
 3360 0068 9A42     		cmp	r2, r3
 3361 006a E6D9     		bls	.L632
 3362 006c 16B3     		cbz	r6, .L637
 3363 006e 0123     		movs	r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 60


 3364 0070 3360     		str	r3, [r6]
 3365              		.syntax unified
 3366              	@ 230 "C:\Eclipse\Firmware\FreeRTOS\src\portable\GCC\ARM_CM4F/portmacro.h" 1
 3367 0072 85F31188 			msr basepri, r5	
 3368              	@ 0 "" 2
 3369              		.thumb
 3370              		.syntax unified
 3371 0076 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3372              	.L644:
 3373 007a 04F10408 		add	r8, r4, #4
 3374 007e 134F     		ldr	r7, .L645+16
 3375 0080 4046     		mov	r0, r8
 3376 0082 FFF7FEFF 		bl	uxListRemove
 3377 0086 E26A     		ldr	r2, [r4, #44]
 3378 0088 D7F800C0 		ldr	ip, [r7]
 3379 008c 1048     		ldr	r0, .L645+20
 3380 008e 0123     		movs	r3, #1
 3381 0090 9340     		lsls	r3, r3, r2
 3382 0092 02EB8202 		add	r2, r2, r2, lsl #2
 3383 0096 43EA0C03 		orr	r3, r3, ip
 3384 009a 4146     		mov	r1, r8
 3385 009c 00EB8200 		add	r0, r0, r2, lsl #2
 3386 00a0 3B60     		str	r3, [r7]
 3387 00a2 FFF7FEFF 		bl	vListInsertEnd
 3388 00a6 DBE7     		b	.L635
 3389              	.L642:
 3390 00a8 0449     		ldr	r1, .L645
 3391 00aa 41F2BC20 		movw	r0, #4796
 3392 00ae FFF7FEFF 		bl	vAssertCalled
 3393 00b2 ABE7     		b	.L630
 3394              	.L637:
 3395 00b4 074B     		ldr	r3, .L645+24
 3396 00b6 0122     		movs	r2, #1
 3397 00b8 1A60     		str	r2, [r3]
 3398 00ba BEE7     		b	.L632
 3399              	.L646:
 3400              		.align	2
 3401              	.L645:
 3402 00bc 00000000 		.word	.LC0
 3403 00c0 00000000 		.word	.LANCHOR15
 3404 00c4 00000000 		.word	.LANCHOR4
 3405 00c8 00000000 		.word	.LANCHOR6
 3406 00cc 00000000 		.word	.LANCHOR7
 3407 00d0 00000000 		.word	.LANCHOR0
 3408 00d4 00000000 		.word	.LANCHOR9
 3409              		.size	vTaskNotifyGiveFromISR, .-vTaskNotifyGiveFromISR
 3410              		.section	.text.xTaskNotifyStateClear,"ax",%progbits
 3411              		.align	1
 3412              		.p2align 2,,3
 3413              		.global	xTaskNotifyStateClear
 3414              		.syntax unified
 3415              		.thumb
 3416              		.thumb_func
 3417              		.fpu fpv4-sp-d16
 3418              		.type	xTaskNotifyStateClear, %function
 3419              	xTaskNotifyStateClear:
 3420              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 61


 3421              		@ frame_needed = 0, uses_anonymous_args = 0
 3422 0000 10B5     		push	{r4, lr}
 3423 0002 78B1     		cbz	r0, .L653
 3424 0004 0446     		mov	r4, r0
 3425              	.L648:
 3426 0006 FFF7FEFF 		bl	vPortEnterCritical
 3427 000a 94F85430 		ldrb	r3, [r4, #84]	@ zero_extendqisi2
 3428 000e 022B     		cmp	r3, #2
 3429 0010 05BF     		ittet	eq
 3430 0012 0023     		moveq	r3, #0
 3431 0014 84F85430 		strbeq	r3, [r4, #84]
 3432 0018 0024     		movne	r4, #0
 3433 001a 0124     		moveq	r4, #1
 3434 001c FFF7FEFF 		bl	vPortExitCritical
 3435 0020 2046     		mov	r0, r4
 3436 0022 10BD     		pop	{r4, pc}
 3437              	.L653:
 3438 0024 014B     		ldr	r3, .L654
 3439 0026 1C68     		ldr	r4, [r3]
 3440 0028 EDE7     		b	.L648
 3441              	.L655:
 3442 002a 00BF     		.align	2
 3443              	.L654:
 3444 002c 00000000 		.word	.LANCHOR6
 3445              		.size	xTaskNotifyStateClear, .-xTaskNotifyStateClear
 3446              		.global	pxCurrentTCB
 3447              		.section	.bss.pxCurrentTCB,"aw",%nobits
 3448              		.align	2
 3449              		.set	.LANCHOR6,. + 0
 3450              		.type	pxCurrentTCB, %object
 3451              		.size	pxCurrentTCB, 4
 3452              	pxCurrentTCB:
 3453 0000 00000000 		.space	4
 3454              		.section	.bss.pxDelayedTaskList,"aw",%nobits
 3455              		.align	2
 3456              		.set	.LANCHOR1,. + 0
 3457              		.type	pxDelayedTaskList, %object
 3458              		.size	pxDelayedTaskList, 4
 3459              	pxDelayedTaskList:
 3460 0000 00000000 		.space	4
 3461              		.section	.bss.pxOverflowDelayedTaskList,"aw",%nobits
 3462              		.align	2
 3463              		.set	.LANCHOR8,. + 0
 3464              		.type	pxOverflowDelayedTaskList, %object
 3465              		.size	pxOverflowDelayedTaskList, 4
 3466              	pxOverflowDelayedTaskList:
 3467 0000 00000000 		.space	4
 3468              		.section	.bss.pxReadyTasksLists,"aw",%nobits
 3469              		.align	2
 3470              		.set	.LANCHOR0,. + 0
 3471              		.type	pxReadyTasksLists, %object
 3472              		.size	pxReadyTasksLists, 100
 3473              	pxReadyTasksLists:
 3474 0000 00000000 		.space	100
 3474      00000000 
 3474      00000000 
 3474      00000000 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 62


 3474      00000000 
 3475              		.section	.bss.uxCurrentNumberOfTasks,"aw",%nobits
 3476              		.align	2
 3477              		.set	.LANCHOR10,. + 0
 3478              		.type	uxCurrentNumberOfTasks, %object
 3479              		.size	uxCurrentNumberOfTasks, 4
 3480              	uxCurrentNumberOfTasks:
 3481 0000 00000000 		.space	4
 3482              		.section	.bss.uxPendedTicks,"aw",%nobits
 3483              		.align	2
 3484              		.set	.LANCHOR17,. + 0
 3485              		.type	uxPendedTicks, %object
 3486              		.size	uxPendedTicks, 4
 3487              	uxPendedTicks:
 3488 0000 00000000 		.space	4
 3489              		.section	.bss.uxSchedulerSuspended,"aw",%nobits
 3490              		.align	2
 3491              		.set	.LANCHOR15,. + 0
 3492              		.type	uxSchedulerSuspended, %object
 3493              		.size	uxSchedulerSuspended, 4
 3494              	uxSchedulerSuspended:
 3495 0000 00000000 		.space	4
 3496              		.section	.bss.uxTaskNumber,"aw",%nobits
 3497              		.align	2
 3498              		.set	.LANCHOR14,. + 0
 3499              		.type	uxTaskNumber, %object
 3500              		.size	uxTaskNumber, 4
 3501              	uxTaskNumber:
 3502 0000 00000000 		.space	4
 3503              		.section	.bss.uxTopReadyPriority,"aw",%nobits
 3504              		.align	2
 3505              		.set	.LANCHOR7,. + 0
 3506              		.type	uxTopReadyPriority, %object
 3507              		.size	uxTopReadyPriority, 4
 3508              	uxTopReadyPriority:
 3509 0000 00000000 		.space	4
 3510              		.section	.bss.xDelayedTaskList1,"aw",%nobits
 3511              		.align	2
 3512              		.set	.LANCHOR11,. + 0
 3513              		.type	xDelayedTaskList1, %object
 3514              		.size	xDelayedTaskList1, 20
 3515              	xDelayedTaskList1:
 3516 0000 00000000 		.space	20
 3516      00000000 
 3516      00000000 
 3516      00000000 
 3516      00000000 
 3517              		.section	.bss.xDelayedTaskList2,"aw",%nobits
 3518              		.align	2
 3519              		.set	.LANCHOR12,. + 0
 3520              		.type	xDelayedTaskList2, %object
 3521              		.size	xDelayedTaskList2, 20
 3522              	xDelayedTaskList2:
 3523 0000 00000000 		.space	20
 3523      00000000 
 3523      00000000 
 3523      00000000 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 63


 3523      00000000 
 3524              		.section	.bss.xNextTaskUnblockTime,"aw",%nobits
 3525              		.align	2
 3526              		.set	.LANCHOR2,. + 0
 3527              		.type	xNextTaskUnblockTime, %object
 3528              		.size	xNextTaskUnblockTime, 4
 3529              	xNextTaskUnblockTime:
 3530 0000 00000000 		.space	4
 3531              		.section	.bss.xNumOfOverflows,"aw",%nobits
 3532              		.align	2
 3533              		.set	.LANCHOR16,. + 0
 3534              		.type	xNumOfOverflows, %object
 3535              		.size	xNumOfOverflows, 4
 3536              	xNumOfOverflows:
 3537 0000 00000000 		.space	4
 3538              		.section	.bss.xPendingReadyList,"aw",%nobits
 3539              		.align	2
 3540              		.set	.LANCHOR4,. + 0
 3541              		.type	xPendingReadyList, %object
 3542              		.size	xPendingReadyList, 20
 3543              	xPendingReadyList:
 3544 0000 00000000 		.space	20
 3544      00000000 
 3544      00000000 
 3544      00000000 
 3544      00000000 
 3545              		.section	.bss.xSchedulerRunning,"aw",%nobits
 3546              		.align	2
 3547              		.set	.LANCHOR13,. + 0
 3548              		.type	xSchedulerRunning, %object
 3549              		.size	xSchedulerRunning, 4
 3550              	xSchedulerRunning:
 3551 0000 00000000 		.space	4
 3552              		.section	.bss.xSuspendedTaskList,"aw",%nobits
 3553              		.align	2
 3554              		.set	.LANCHOR3,. + 0
 3555              		.type	xSuspendedTaskList, %object
 3556              		.size	xSuspendedTaskList, 20
 3557              	xSuspendedTaskList:
 3558 0000 00000000 		.space	20
 3558      00000000 
 3558      00000000 
 3558      00000000 
 3558      00000000 
 3559              		.section	.bss.xTickCount,"aw",%nobits
 3560              		.align	2
 3561              		.set	.LANCHOR5,. + 0
 3562              		.type	xTickCount, %object
 3563              		.size	xTickCount, 4
 3564              	xTickCount:
 3565 0000 00000000 		.space	4
 3566              		.section	.bss.xYieldPending,"aw",%nobits
 3567              		.align	2
 3568              		.set	.LANCHOR9,. + 0
 3569              		.type	xYieldPending, %object
 3570              		.size	xYieldPending, 4
 3571              	xYieldPending:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccrlpi4H.s 			page 64


 3572 0000 00000000 		.space	4
 3573              		.section	.rodata.prvTaskIsTaskSuspended.str1.4,"aMS",%progbits,1
 3574              		.align	2
 3575              	.LC0:
 3576 0000 2E2E2F73 		.ascii	"../src/tasks.c\000"
 3576      72632F74 
 3576      61736B73 
 3576      2E6300
 3577              		.section	.rodata.vTaskStartScheduler.str1.4,"aMS",%progbits,1
 3578              		.align	2
 3579              	.LC1:
 3580 0000 49444C45 		.ascii	"IDLE\000"
 3580      00
 3581              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
