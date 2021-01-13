ARM GAS  /tmp/ccm30Ddy.s 			page 1


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
  13              		.file	"timers.c"
  14              		.section	.text.prvCheckForValidListAndQueue,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	prvCheckForValidListAndQueue, %function
  22              	prvCheckForValidListAndQueue:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  26 0002 134C     		ldr	r4, .L11
  27 0004 83B0     		sub	sp, sp, #12
  28 0006 FFF7FEFF 		bl	vPortEnterCritical
  29 000a 2568     		ldr	r5, [r4]
  30 000c 25B1     		cbz	r5, .L10
  31              	.L3:
  32 000e 03B0     		add	sp, sp, #12
  33              		@ sp needed
  34 0010 BDE8F040 		pop	{r4, r5, r6, r7, lr}
  35 0014 FFF7FEBF 		b	vPortExitCritical
  36              	.L10:
  37 0018 0E4F     		ldr	r7, .L11+4
  38 001a 0F4E     		ldr	r6, .L11+8
  39 001c 3846     		mov	r0, r7
  40 001e FFF7FEFF 		bl	vListInitialise
  41 0022 3046     		mov	r0, r6
  42 0024 FFF7FEFF 		bl	vListInitialise
  43 0028 0C49     		ldr	r1, .L11+12
  44 002a DFF840E0 		ldr	lr, .L11+28
  45 002e 0095     		str	r5, [sp]
  46 0030 0B4B     		ldr	r3, .L11+16
  47 0032 0F60     		str	r7, [r1]
  48 0034 0B4A     		ldr	r2, .L11+20
  49 0036 CEF80060 		str	r6, [lr]
  50 003a 1021     		movs	r1, #16
  51 003c 0520     		movs	r0, #5
  52 003e FFF7FEFF 		bl	xQueueGenericCreateStatic
  53 0042 2060     		str	r0, [r4]
  54 0044 0028     		cmp	r0, #0
  55 0046 E2D0     		beq	.L3
  56 0048 0749     		ldr	r1, .L11+24
  57 004a FFF7FEFF 		bl	vQueueAddToRegistry
ARM GAS  /tmp/ccm30Ddy.s 			page 2


  58 004e DEE7     		b	.L3
  59              	.L12:
  60              		.align	2
  61              	.L11:
  62 0050 00000000 		.word	.LANCHOR0
  63 0054 00000000 		.word	.LANCHOR1
  64 0058 00000000 		.word	.LANCHOR2
  65 005c 00000000 		.word	.LANCHOR3
  66 0060 00000000 		.word	.LANCHOR5
  67 0064 00000000 		.word	.LANCHOR6
  68 0068 00000000 		.word	.LC0
  69 006c 00000000 		.word	.LANCHOR4
  70              		.size	prvCheckForValidListAndQueue, .-prvCheckForValidListAndQueue
  71              		.section	.text.prvInsertTimerInActiveList,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu fpv4-sp-d16
  78              		.type	prvInsertTimerInActiveList, %function
  79              	prvInsertTimerInActiveList:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82 0000 9142     		cmp	r1, r2
  83 0002 08B5     		push	{r3, lr}
  84 0004 0061     		str	r0, [r0, #16]
  85 0006 4160     		str	r1, [r0, #4]
  86 0008 05D8     		bhi	.L14
  87 000a 8169     		ldr	r1, [r0, #24]
  88 000c D21A     		subs	r2, r2, r3
  89 000e 8A42     		cmp	r2, r1
  90 0010 0CD3     		bcc	.L20
  91              	.L18:
  92 0012 0120     		movs	r0, #1
  93 0014 08BD     		pop	{r3, pc}
  94              	.L14:
  95 0016 9A42     		cmp	r2, r3
  96 0018 01D2     		bcs	.L16
  97 001a 9942     		cmp	r1, r3
  98 001c F9D2     		bcs	.L18
  99              	.L16:
 100 001e 074B     		ldr	r3, .L21
 101 0020 011D     		adds	r1, r0, #4
 102 0022 1868     		ldr	r0, [r3]
 103 0024 FFF7FEFF 		bl	vListInsert
 104 0028 0020     		movs	r0, #0
 105 002a 08BD     		pop	{r3, pc}
 106              	.L20:
 107 002c 044B     		ldr	r3, .L21+4
 108 002e 011D     		adds	r1, r0, #4
 109 0030 1868     		ldr	r0, [r3]
 110 0032 FFF7FEFF 		bl	vListInsert
 111 0036 0020     		movs	r0, #0
 112 0038 08BD     		pop	{r3, pc}
 113              	.L22:
 114 003a 00BF     		.align	2
ARM GAS  /tmp/ccm30Ddy.s 			page 3


 115              	.L21:
 116 003c 00000000 		.word	.LANCHOR3
 117 0040 00000000 		.word	.LANCHOR4
 118              		.size	prvInsertTimerInActiveList, .-prvInsertTimerInActiveList
 119              		.section	.text.xTimerCreateTimerTask,"ax",%progbits
 120              		.align	1
 121              		.p2align 2,,3
 122              		.global	xTimerCreateTimerTask
 123              		.syntax unified
 124              		.thumb
 125              		.thumb_func
 126              		.fpu fpv4-sp-d16
 127              		.type	xTimerCreateTimerTask, %function
 128              	xTimerCreateTimerTask:
 129              		@ args = 0, pretend = 0, frame = 16
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131 0000 10B5     		push	{r4, lr}
 132 0002 88B0     		sub	sp, sp, #32
 133 0004 FFF7FEFF 		bl	prvCheckForValidListAndQueue
 134 0008 134B     		ldr	r3, .L31
 135 000a 1B68     		ldr	r3, [r3]
 136 000c E3B1     		cbz	r3, .L26
 137 000e 0024     		movs	r4, #0
 138 0010 07AA     		add	r2, sp, #28
 139 0012 06A9     		add	r1, sp, #24
 140 0014 05A8     		add	r0, sp, #20
 141 0016 0594     		str	r4, [sp, #20]
 142 0018 0694     		str	r4, [sp, #24]
 143 001a FFF7FEFF 		bl	vApplicationGetTimerTaskMemory
 144 001e 059B     		ldr	r3, [sp, #20]
 145 0020 0698     		ldr	r0, [sp, #24]
 146 0022 0293     		str	r3, [sp, #8]
 147 0024 0221     		movs	r1, #2
 148 0026 2346     		mov	r3, r4
 149 0028 0190     		str	r0, [sp, #4]
 150 002a 0091     		str	r1, [sp]
 151 002c 079A     		ldr	r2, [sp, #28]
 152 002e 0B49     		ldr	r1, .L31+4
 153 0030 0B48     		ldr	r0, .L31+8
 154 0032 FFF7FEFF 		bl	xTaskCreateStatic
 155 0036 0B4B     		ldr	r3, .L31+12
 156 0038 A042     		cmp	r0, r4
 157 003a 1860     		str	r0, [r3]
 158 003c 14BF     		ite	ne
 159 003e 0120     		movne	r0, #1
 160 0040 2046     		moveq	r0, r4
 161 0042 01D0     		beq	.L26
 162 0044 08B0     		add	sp, sp, #32
 163              		@ sp needed
 164 0046 10BD     		pop	{r4, pc}
 165              	.L26:
 166 0048 0749     		ldr	r1, .L31+16
 167 004a 4FF48870 		mov	r0, #272
 168 004e FFF7FEFF 		bl	vAssertCalled
 169 0052 0020     		movs	r0, #0
 170 0054 08B0     		add	sp, sp, #32
 171              		@ sp needed
ARM GAS  /tmp/ccm30Ddy.s 			page 4


 172 0056 10BD     		pop	{r4, pc}
 173              	.L32:
 174              		.align	2
 175              	.L31:
 176 0058 00000000 		.word	.LANCHOR0
 177 005c 10000000 		.word	.LC2
 178 0060 00000000 		.word	prvTimerTask
 179 0064 00000000 		.word	.LANCHOR7
 180 0068 00000000 		.word	.LC1
 181              		.size	xTimerCreateTimerTask, .-xTimerCreateTimerTask
 182              		.section	.text.xTimerCreateStatic,"ax",%progbits
 183              		.align	1
 184              		.p2align 2,,3
 185              		.global	xTimerCreateStatic
 186              		.syntax unified
 187              		.thumb
 188              		.thumb_func
 189              		.fpu fpv4-sp-d16
 190              		.type	xTimerCreateStatic, %function
 191              	xTimerCreateStatic:
 192              		@ args = 8, pretend = 0, frame = 8
 193              		@ frame_needed = 0, uses_anonymous_args = 0
 194 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 195 0004 83B0     		sub	sp, sp, #12
 196 0006 2C24     		movs	r4, #44
 197 0008 0194     		str	r4, [sp, #4]
 198 000a 019E     		ldr	r6, [sp, #4]
 199 000c 0B9C     		ldr	r4, [sp, #44]
 200 000e 2C2E     		cmp	r6, #44
 201 0010 0746     		mov	r7, r0
 202 0012 0D46     		mov	r5, r1
 203 0014 9046     		mov	r8, r2
 204 0016 9946     		mov	r9, r3
 205 0018 04D0     		beq	.L34
 206 001a 1249     		ldr	r1, .L47
 207 001c 4FF4A370 		mov	r0, #326
 208 0020 FFF7FEFF 		bl	vAssertCalled
 209              	.L34:
 210 0024 BCB1     		cbz	r4, .L45
 211 0026 85B1     		cbz	r5, .L46
 212              	.L38:
 213 0028 FFF7FEFF 		bl	prvCheckForValidListAndQueue
 214 002c 0A9B     		ldr	r3, [sp, #40]
 215 002e 2760     		str	r7, [r4]
 216 0030 A561     		str	r5, [r4, #24]
 217 0032 C4F81C80 		str	r8, [r4, #28]
 218 0036 C4F82090 		str	r9, [r4, #32]
 219 003a 6362     		str	r3, [r4, #36]
 220 003c 201D     		adds	r0, r4, #4
 221 003e FFF7FEFF 		bl	vListInitialiseItem
 222              	.L42:
 223 0042 2046     		mov	r0, r4
 224 0044 03B0     		add	sp, sp, #12
 225              		@ sp needed
 226 0046 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 227              	.L46:
 228 004a 0649     		ldr	r1, .L47
ARM GAS  /tmp/ccm30Ddy.s 			page 5


 229 004c 40F26910 		movw	r0, #361
 230 0050 FFF7FEFF 		bl	vAssertCalled
 231 0054 E8E7     		b	.L38
 232              	.L45:
 233 0056 0349     		ldr	r1, .L47
 234 0058 40F24B10 		movw	r0, #331
 235 005c FFF7FEFF 		bl	vAssertCalled
 236 0060 EFE7     		b	.L42
 237              	.L48:
 238 0062 00BF     		.align	2
 239              	.L47:
 240 0064 00000000 		.word	.LC1
 241              		.size	xTimerCreateStatic, .-xTimerCreateStatic
 242              		.section	.text.xTimerGenericCommand,"ax",%progbits
 243              		.align	1
 244              		.p2align 2,,3
 245              		.global	xTimerGenericCommand
 246              		.syntax unified
 247              		.thumb
 248              		.thumb_func
 249              		.fpu fpv4-sp-d16
 250              		.type	xTimerGenericCommand, %function
 251              	xTimerGenericCommand:
 252              		@ args = 4, pretend = 0, frame = 24
 253              		@ frame_needed = 0, uses_anonymous_args = 0
 254 0000 70B5     		push	{r4, r5, r6, lr}
 255 0002 0D46     		mov	r5, r1
 256 0004 86B0     		sub	sp, sp, #24
 257 0006 0446     		mov	r4, r0
 258 0008 10B3     		cbz	r0, .L56
 259              	.L50:
 260 000a 164E     		ldr	r6, .L58
 261 000c 3068     		ldr	r0, [r6]
 262 000e 70B1     		cbz	r0, .L49
 263 0010 052D     		cmp	r5, #5
 264 0012 0295     		str	r5, [sp, #8]
 265 0014 0392     		str	r2, [sp, #12]
 266 0016 0494     		str	r4, [sp, #16]
 267 0018 0BDC     		bgt	.L52
 268 001a FFF7FEFF 		bl	xTaskGetSchedulerState
 269 001e 0228     		cmp	r0, #2
 270 0020 0ED0     		beq	.L57
 271 0022 0023     		movs	r3, #0
 272 0024 3068     		ldr	r0, [r6]
 273 0026 1A46     		mov	r2, r3
 274 0028 02A9     		add	r1, sp, #8
 275 002a FFF7FEFF 		bl	xQueueGenericSend
 276              	.L49:
 277 002e 06B0     		add	sp, sp, #24
 278              		@ sp needed
 279 0030 70BD     		pop	{r4, r5, r6, pc}
 280              	.L52:
 281 0032 1A46     		mov	r2, r3
 282 0034 02A9     		add	r1, sp, #8
 283 0036 0023     		movs	r3, #0
 284 0038 FFF7FEFF 		bl	xQueueGenericSendFromISR
 285 003c 06B0     		add	sp, sp, #24
ARM GAS  /tmp/ccm30Ddy.s 			page 6


 286              		@ sp needed
 287 003e 70BD     		pop	{r4, r5, r6, pc}
 288              	.L57:
 289 0040 3068     		ldr	r0, [r6]
 290 0042 0A9A     		ldr	r2, [sp, #40]
 291 0044 0023     		movs	r3, #0
 292 0046 02A9     		add	r1, sp, #8
 293 0048 FFF7FEFF 		bl	xQueueGenericSend
 294 004c 06B0     		add	sp, sp, #24
 295              		@ sp needed
 296 004e 70BD     		pop	{r4, r5, r6, pc}
 297              	.L56:
 298 0050 0549     		ldr	r1, .L58+4
 299 0052 40F28310 		movw	r0, #387
 300 0056 8DE80C00 		stm	sp, {r2, r3}
 301 005a FFF7FEFF 		bl	vAssertCalled
 302 005e 9DE80C00 		ldm	sp, {r2, r3}
 303 0062 D2E7     		b	.L50
 304              	.L59:
 305              		.align	2
 306              	.L58:
 307 0064 00000000 		.word	.LANCHOR0
 308 0068 00000000 		.word	.LC1
 309              		.size	xTimerGenericCommand, .-xTimerGenericCommand
 310              		.section	.text.prvSwitchTimerLists,"ax",%progbits
 311              		.align	1
 312              		.p2align 2,,3
 313              		.syntax unified
 314              		.thumb
 315              		.thumb_func
 316              		.fpu fpv4-sp-d16
 317              		.type	prvSwitchTimerLists, %function
 318              	prvSwitchTimerLists:
 319              		@ args = 0, pretend = 0, frame = 0
 320              		@ frame_needed = 0, uses_anonymous_args = 0
 321 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 322 0004 1D4D     		ldr	r5, .L69
 323 0006 DFF87C80 		ldr	r8, .L69+8
 324 000a 82B0     		sub	sp, sp, #8
 325 000c 4FF0000A 		mov	r10, #0
 326 0010 0DE0     		b	.L62
 327              	.L65:
 328 0012 DB68     		ldr	r3, [r3, #12]
 329 0014 DC68     		ldr	r4, [r3, #12]
 330 0016 1F68     		ldr	r7, [r3]
 331 0018 04F10409 		add	r9, r4, #4
 332 001c 4846     		mov	r0, r9
 333 001e FFF7FEFF 		bl	uxListRemove
 334 0022 636A     		ldr	r3, [r4, #36]
 335 0024 2046     		mov	r0, r4
 336 0026 9847     		blx	r3
 337 0028 E369     		ldr	r3, [r4, #28]
 338 002a 012B     		cmp	r3, #1
 339 002c 0AD0     		beq	.L68
 340              	.L62:
 341 002e 2B68     		ldr	r3, [r5]
 342 0030 1A68     		ldr	r2, [r3]
ARM GAS  /tmp/ccm30Ddy.s 			page 7


 343 0032 002A     		cmp	r2, #0
 344 0034 EDD1     		bne	.L65
 345 0036 124A     		ldr	r2, .L69+4
 346 0038 1168     		ldr	r1, [r2]
 347 003a 2960     		str	r1, [r5]
 348 003c 1360     		str	r3, [r2]
 349 003e 02B0     		add	sp, sp, #8
 350              		@ sp needed
 351 0040 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 352              	.L68:
 353 0044 A669     		ldr	r6, [r4, #24]
 354 0046 3E44     		add	r6, r6, r7
 355 0048 0023     		movs	r3, #0
 356 004a B742     		cmp	r7, r6
 357 004c 1946     		mov	r1, r3
 358 004e 3A46     		mov	r2, r7
 359 0050 2046     		mov	r0, r4
 360 0052 06D2     		bcs	.L63
 361 0054 6660     		str	r6, [r4, #4]
 362 0056 2461     		str	r4, [r4, #16]
 363 0058 2868     		ldr	r0, [r5]
 364 005a 4946     		mov	r1, r9
 365 005c FFF7FEFF 		bl	vListInsert
 366 0060 E5E7     		b	.L62
 367              	.L63:
 368 0062 CDF800A0 		str	r10, [sp]
 369 0066 FFF7FEFF 		bl	xTimerGenericCommand
 370 006a 0028     		cmp	r0, #0
 371 006c DFD1     		bne	.L62
 372 006e 4146     		mov	r1, r8
 373 0070 40F26F30 		movw	r0, #879
 374 0074 FFF7FEFF 		bl	vAssertCalled
 375 0078 D9E7     		b	.L62
 376              	.L70:
 377 007a 00BF     		.align	2
 378              	.L69:
 379 007c 00000000 		.word	.LANCHOR3
 380 0080 00000000 		.word	.LANCHOR4
 381 0084 00000000 		.word	.LC1
 382              		.size	prvSwitchTimerLists, .-prvSwitchTimerLists
 383              		.section	.text.prvTimerTask,"ax",%progbits
 384              		.align	1
 385              		.p2align 2,,3
 386              		.syntax unified
 387              		.thumb
 388              		.thumb_func
 389              		.fpu fpv4-sp-d16
 390              		.type	prvTimerTask, %function
 391              	prvTimerTask:
 392              		@ args = 0, pretend = 0, frame = 16
 393              		@ frame_needed = 0, uses_anonymous_args = 0
 394 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 395 0004 664F     		ldr	r7, .L106
 396 0006 674E     		ldr	r6, .L106+4
 397 0008 674D     		ldr	r5, .L106+8
 398 000a DFF8A891 		ldr	r9, .L106+20
 399 000e 87B0     		sub	sp, sp, #28
ARM GAS  /tmp/ccm30Ddy.s 			page 8


 400 0010 4FF00108 		mov	r8, #1
 401              	.L92:
 402 0014 3B68     		ldr	r3, [r7]
 403 0016 1C68     		ldr	r4, [r3]
 404 0018 002C     		cmp	r4, #0
 405 001a 69D0     		beq	.L72
 406 001c DB68     		ldr	r3, [r3, #12]
 407 001e 1C68     		ldr	r4, [r3]
 408 0020 FFF7FEFF 		bl	vTaskSuspendAll
 409 0024 FFF7FEFF 		bl	xTaskGetTickCount
 410 0028 3368     		ldr	r3, [r6]
 411 002a 9842     		cmp	r0, r3
 412 002c 8246     		mov	r10, r0
 413 002e 70D3     		bcc	.L94
 414 0030 8442     		cmp	r4, r0
 415 0032 3060     		str	r0, [r6]
 416 0034 77D9     		bls	.L96
 417 0036 0022     		movs	r2, #0
 418              	.L93:
 419 0038 A4EB0A01 		sub	r1, r4, r10
 420 003c 2868     		ldr	r0, [r5]
 421 003e FFF7FEFF 		bl	vQueueWaitForMessageRestricted
 422 0042 FFF7FEFF 		bl	xTaskResumeAll
 423 0046 38B9     		cbnz	r0, .L83
 424 0048 584B     		ldr	r3, .L106+12
 425 004a 4FF08052 		mov	r2, #268435456
 426 004e 1A60     		str	r2, [r3]
 427              		.syntax unified
 428              	@ 583 "../src/timers.c" 1
 429 0050 BFF34F8F 		dsb
 430              	@ 0 "" 2
 431              	@ 583 "../src/timers.c" 1
 432 0054 BFF36F8F 		isb
 433              	@ 0 "" 2
 434              		.thumb
 435              		.syntax unified
 436              	.L83:
 437 0058 0022     		movs	r2, #0
 438 005a 02A9     		add	r1, sp, #8
 439 005c 2868     		ldr	r0, [r5]
 440 005e FFF7FEFF 		bl	xQueueReceive
 441 0062 0028     		cmp	r0, #0
 442 0064 D6D0     		beq	.L92
 443 0066 029B     		ldr	r3, [sp, #8]
 444 0068 002B     		cmp	r3, #0
 445 006a 39DB     		blt	.L79
 446              	.L82:
 447 006c 049C     		ldr	r4, [sp, #16]
 448 006e 6369     		ldr	r3, [r4, #20]
 449 0070 13B1     		cbz	r3, .L81
 450 0072 201D     		adds	r0, r4, #4
 451 0074 FFF7FEFF 		bl	uxListRemove
 452              	.L81:
 453 0078 FFF7FEFF 		bl	xTaskGetTickCount
 454 007c 3368     		ldr	r3, [r6]
 455 007e 9842     		cmp	r0, r3
 456 0080 8246     		mov	r10, r0
ARM GAS  /tmp/ccm30Ddy.s 			page 9


 457 0082 4DD3     		bcc	.L104
 458              	.L84:
 459 0084 029B     		ldr	r3, [sp, #8]
 460 0086 C6F800A0 		str	r10, [r6]
 461 008a 092B     		cmp	r3, #9
 462 008c E4D8     		bhi	.L83
 463 008e 08FA03F3 		lsl	r3, r8, r3
 464 0092 13F4047B 		ands	fp, r3, #528
 465 0096 72D1     		bne	.L86
 466 0098 13F0C70F 		tst	r3, #199
 467 009c DCD0     		beq	.L83
 468 009e 039B     		ldr	r3, [sp, #12]
 469 00a0 A169     		ldr	r1, [r4, #24]
 470 00a2 5246     		mov	r2, r10
 471 00a4 1944     		add	r1, r1, r3
 472 00a6 2046     		mov	r0, r4
 473 00a8 FFF7FEFF 		bl	prvInsertTimerInActiveList
 474 00ac 0028     		cmp	r0, #0
 475 00ae D3D0     		beq	.L83
 476 00b0 636A     		ldr	r3, [r4, #36]
 477 00b2 2046     		mov	r0, r4
 478 00b4 9847     		blx	r3
 479 00b6 E369     		ldr	r3, [r4, #28]
 480 00b8 012B     		cmp	r3, #1
 481 00ba CDD1     		bne	.L83
 482 00bc A369     		ldr	r3, [r4, #24]
 483 00be 039A     		ldr	r2, [sp, #12]
 484 00c0 CDF800B0 		str	fp, [sp]
 485 00c4 1A44     		add	r2, r2, r3
 486 00c6 2046     		mov	r0, r4
 487 00c8 5B46     		mov	r3, fp
 488 00ca 5946     		mov	r1, fp
 489 00cc FFF7FEFF 		bl	xTimerGenericCommand
 490 00d0 0028     		cmp	r0, #0
 491 00d2 C1D1     		bne	.L83
 492 00d4 3649     		ldr	r1, .L106+16
 493 00d6 40F2FE20 		movw	r0, #766
 494 00da FFF7FEFF 		bl	vAssertCalled
 495 00de BBE7     		b	.L83
 496              	.L79:
 497 00e0 039B     		ldr	r3, [sp, #12]
 498 00e2 0599     		ldr	r1, [sp, #20]
 499 00e4 0498     		ldr	r0, [sp, #16]
 500 00e6 9847     		blx	r3
 501 00e8 029B     		ldr	r3, [sp, #8]
 502 00ea 002B     		cmp	r3, #0
 503 00ec B4DB     		blt	.L83
 504 00ee BDE7     		b	.L82
 505              	.L72:
 506 00f0 FFF7FEFF 		bl	vTaskSuspendAll
 507 00f4 FFF7FEFF 		bl	xTaskGetTickCount
 508 00f8 3368     		ldr	r3, [r6]
 509 00fa 8342     		cmp	r3, r0
 510 00fc 8246     		mov	r10, r0
 511 00fe 08D8     		bhi	.L94
 512 0100 D9F80030 		ldr	r3, [r9]
 513 0104 C6F800A0 		str	r10, [r6]
ARM GAS  /tmp/ccm30Ddy.s 			page 10


 514 0108 1A68     		ldr	r2, [r3]
 515 010a B2FA82F2 		clz	r2, r2
 516 010e 5209     		lsrs	r2, r2, #5
 517 0110 92E7     		b	.L93
 518              	.L94:
 519 0112 FFF7FEFF 		bl	prvSwitchTimerLists
 520 0116 C6F800A0 		str	r10, [r6]
 521 011a FFF7FEFF 		bl	xTaskResumeAll
 522 011e 9BE7     		b	.L83
 523              	.L104:
 524 0120 FFF7FEFF 		bl	prvSwitchTimerLists
 525 0124 AEE7     		b	.L84
 526              	.L96:
 527 0126 FFF7FEFF 		bl	xTaskResumeAll
 528 012a 3B68     		ldr	r3, [r7]
 529 012c DB68     		ldr	r3, [r3, #12]
 530 012e D3F80CB0 		ldr	fp, [r3, #12]
 531 0132 0BF10400 		add	r0, fp, #4
 532 0136 FFF7FEFF 		bl	uxListRemove
 533 013a DBF81C30 		ldr	r3, [fp, #28]
 534 013e 012B     		cmp	r3, #1
 535 0140 04D0     		beq	.L105
 536              	.L76:
 537 0142 DBF82430 		ldr	r3, [fp, #36]
 538 0146 5846     		mov	r0, fp
 539 0148 9847     		blx	r3
 540 014a 85E7     		b	.L83
 541              	.L105:
 542 014c DBF81810 		ldr	r1, [fp, #24]
 543 0150 5246     		mov	r2, r10
 544 0152 2144     		add	r1, r1, r4
 545 0154 2346     		mov	r3, r4
 546 0156 5846     		mov	r0, fp
 547 0158 FFF7FEFF 		bl	prvInsertTimerInActiveList
 548 015c 0028     		cmp	r0, #0
 549 015e F0D0     		beq	.L76
 550 0160 0023     		movs	r3, #0
 551 0162 0093     		str	r3, [sp]
 552 0164 2246     		mov	r2, r4
 553 0166 1946     		mov	r1, r3
 554 0168 5846     		mov	r0, fp
 555 016a FFF7FEFF 		bl	xTimerGenericCommand
 556 016e 0028     		cmp	r0, #0
 557 0170 E7D1     		bne	.L76
 558 0172 0F49     		ldr	r1, .L106+16
 559 0174 40F2E510 		movw	r0, #485
 560 0178 FFF7FEFF 		bl	vAssertCalled
 561 017c E1E7     		b	.L76
 562              	.L86:
 563 017e 0399     		ldr	r1, [sp, #12]
 564 0180 A161     		str	r1, [r4, #24]
 565 0182 29B9     		cbnz	r1, .L90
 566 0184 0A49     		ldr	r1, .L106+16
 567 0186 40F21530 		movw	r0, #789
 568 018a FFF7FEFF 		bl	vAssertCalled
 569 018e A169     		ldr	r1, [r4, #24]
 570              	.L90:
ARM GAS  /tmp/ccm30Ddy.s 			page 11


 571 0190 5144     		add	r1, r1, r10
 572 0192 2046     		mov	r0, r4
 573 0194 5346     		mov	r3, r10
 574 0196 5246     		mov	r2, r10
 575 0198 FFF7FEFF 		bl	prvInsertTimerInActiveList
 576 019c 5CE7     		b	.L83
 577              	.L107:
 578 019e 00BF     		.align	2
 579              	.L106:
 580 01a0 00000000 		.word	.LANCHOR3
 581 01a4 00000000 		.word	.LANCHOR8
 582 01a8 00000000 		.word	.LANCHOR0
 583 01ac 04ED00E0 		.word	-536810236
 584 01b0 00000000 		.word	.LC1
 585 01b4 00000000 		.word	.LANCHOR4
 586              		.size	prvTimerTask, .-prvTimerTask
 587              		.section	.text.xTimerGetTimerDaemonTaskHandle,"ax",%progbits
 588              		.align	1
 589              		.p2align 2,,3
 590              		.global	xTimerGetTimerDaemonTaskHandle
 591              		.syntax unified
 592              		.thumb
 593              		.thumb_func
 594              		.fpu fpv4-sp-d16
 595              		.type	xTimerGetTimerDaemonTaskHandle, %function
 596              	xTimerGetTimerDaemonTaskHandle:
 597              		@ args = 0, pretend = 0, frame = 0
 598              		@ frame_needed = 0, uses_anonymous_args = 0
 599 0000 10B5     		push	{r4, lr}
 600 0002 054C     		ldr	r4, .L112
 601 0004 2068     		ldr	r0, [r4]
 602 0006 00B1     		cbz	r0, .L111
 603 0008 10BD     		pop	{r4, pc}
 604              	.L111:
 605 000a 0449     		ldr	r1, .L112+4
 606 000c 40F2AD10 		movw	r0, #429
 607 0010 FFF7FEFF 		bl	vAssertCalled
 608 0014 2068     		ldr	r0, [r4]
 609 0016 10BD     		pop	{r4, pc}
 610              	.L113:
 611              		.align	2
 612              	.L112:
 613 0018 00000000 		.word	.LANCHOR7
 614 001c 00000000 		.word	.LC1
 615              		.size	xTimerGetTimerDaemonTaskHandle, .-xTimerGetTimerDaemonTaskHandle
 616              		.section	.text.xTimerGetPeriod,"ax",%progbits
 617              		.align	1
 618              		.p2align 2,,3
 619              		.global	xTimerGetPeriod
 620              		.syntax unified
 621              		.thumb
 622              		.thumb_func
 623              		.fpu fpv4-sp-d16
 624              		.type	xTimerGetPeriod, %function
 625              	xTimerGetPeriod:
 626              		@ args = 0, pretend = 0, frame = 0
 627              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccm30Ddy.s 			page 12


 628 0000 10B5     		push	{r4, lr}
 629 0002 0446     		mov	r4, r0
 630 0004 08B1     		cbz	r0, .L117
 631 0006 A069     		ldr	r0, [r4, #24]
 632 0008 10BD     		pop	{r4, pc}
 633              	.L117:
 634 000a 0349     		ldr	r1, .L118
 635 000c 4FF4DB70 		mov	r0, #438
 636 0010 FFF7FEFF 		bl	vAssertCalled
 637 0014 A069     		ldr	r0, [r4, #24]
 638 0016 10BD     		pop	{r4, pc}
 639              	.L119:
 640              		.align	2
 641              	.L118:
 642 0018 00000000 		.word	.LC1
 643              		.size	xTimerGetPeriod, .-xTimerGetPeriod
 644              		.section	.text.xTimerGetExpiryTime,"ax",%progbits
 645              		.align	1
 646              		.p2align 2,,3
 647              		.global	xTimerGetExpiryTime
 648              		.syntax unified
 649              		.thumb
 650              		.thumb_func
 651              		.fpu fpv4-sp-d16
 652              		.type	xTimerGetExpiryTime, %function
 653              	xTimerGetExpiryTime:
 654              		@ args = 0, pretend = 0, frame = 0
 655              		@ frame_needed = 0, uses_anonymous_args = 0
 656 0000 10B5     		push	{r4, lr}
 657 0002 0446     		mov	r4, r0
 658 0004 08B1     		cbz	r0, .L123
 659 0006 6068     		ldr	r0, [r4, #4]
 660 0008 10BD     		pop	{r4, pc}
 661              	.L123:
 662 000a 0349     		ldr	r1, .L124
 663 000c 4FF4E070 		mov	r0, #448
 664 0010 FFF7FEFF 		bl	vAssertCalled
 665 0014 6068     		ldr	r0, [r4, #4]
 666 0016 10BD     		pop	{r4, pc}
 667              	.L125:
 668              		.align	2
 669              	.L124:
 670 0018 00000000 		.word	.LC1
 671              		.size	xTimerGetExpiryTime, .-xTimerGetExpiryTime
 672              		.section	.text.pcTimerGetName,"ax",%progbits
 673              		.align	1
 674              		.p2align 2,,3
 675              		.global	pcTimerGetName
 676              		.syntax unified
 677              		.thumb
 678              		.thumb_func
 679              		.fpu fpv4-sp-d16
 680              		.type	pcTimerGetName, %function
 681              	pcTimerGetName:
 682              		@ args = 0, pretend = 0, frame = 0
 683              		@ frame_needed = 0, uses_anonymous_args = 0
 684 0000 10B5     		push	{r4, lr}
ARM GAS  /tmp/ccm30Ddy.s 			page 13


 685 0002 0446     		mov	r4, r0
 686 0004 08B1     		cbz	r0, .L129
 687 0006 2068     		ldr	r0, [r4]
 688 0008 10BD     		pop	{r4, pc}
 689              	.L129:
 690 000a 0349     		ldr	r1, .L130
 691 000c 4FF4E570 		mov	r0, #458
 692 0010 FFF7FEFF 		bl	vAssertCalled
 693 0014 2068     		ldr	r0, [r4]
 694 0016 10BD     		pop	{r4, pc}
 695              	.L131:
 696              		.align	2
 697              	.L130:
 698 0018 00000000 		.word	.LC1
 699              		.size	pcTimerGetName, .-pcTimerGetName
 700              		.section	.text.xTimerIsTimerActive,"ax",%progbits
 701              		.align	1
 702              		.p2align 2,,3
 703              		.global	xTimerIsTimerActive
 704              		.syntax unified
 705              		.thumb
 706              		.thumb_func
 707              		.fpu fpv4-sp-d16
 708              		.type	xTimerIsTimerActive, %function
 709              	xTimerIsTimerActive:
 710              		@ args = 0, pretend = 0, frame = 0
 711              		@ frame_needed = 0, uses_anonymous_args = 0
 712 0000 10B5     		push	{r4, lr}
 713 0002 0446     		mov	r4, r0
 714 0004 48B1     		cbz	r0, .L135
 715              	.L133:
 716 0006 FFF7FEFF 		bl	vPortEnterCritical
 717 000a 6469     		ldr	r4, [r4, #20]
 718 000c 0034     		adds	r4, r4, #0
 719 000e 18BF     		it	ne
 720 0010 0124     		movne	r4, #1
 721 0012 FFF7FEFF 		bl	vPortExitCritical
 722 0016 2046     		mov	r0, r4
 723 0018 10BD     		pop	{r4, pc}
 724              	.L135:
 725 001a 0349     		ldr	r1, .L136
 726 001c 40F2B730 		movw	r0, #951
 727 0020 FFF7FEFF 		bl	vAssertCalled
 728 0024 EFE7     		b	.L133
 729              	.L137:
 730 0026 00BF     		.align	2
 731              	.L136:
 732 0028 00000000 		.word	.LC1
 733              		.size	xTimerIsTimerActive, .-xTimerIsTimerActive
 734              		.section	.text.pvTimerGetTimerID,"ax",%progbits
 735              		.align	1
 736              		.p2align 2,,3
 737              		.global	pvTimerGetTimerID
 738              		.syntax unified
 739              		.thumb
 740              		.thumb_func
 741              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccm30Ddy.s 			page 14


 742              		.type	pvTimerGetTimerID, %function
 743              	pvTimerGetTimerID:
 744              		@ args = 0, pretend = 0, frame = 0
 745              		@ frame_needed = 0, uses_anonymous_args = 0
 746 0000 10B5     		push	{r4, lr}
 747 0002 0446     		mov	r4, r0
 748 0004 30B1     		cbz	r0, .L141
 749              	.L139:
 750 0006 FFF7FEFF 		bl	vPortEnterCritical
 751 000a 246A     		ldr	r4, [r4, #32]
 752 000c FFF7FEFF 		bl	vPortExitCritical
 753 0010 2046     		mov	r0, r4
 754 0012 10BD     		pop	{r4, pc}
 755              	.L141:
 756 0014 0249     		ldr	r1, .L142
 757 0016 4FF47370 		mov	r0, #972
 758 001a FFF7FEFF 		bl	vAssertCalled
 759 001e F2E7     		b	.L139
 760              	.L143:
 761              		.align	2
 762              	.L142:
 763 0020 00000000 		.word	.LC1
 764              		.size	pvTimerGetTimerID, .-pvTimerGetTimerID
 765              		.section	.text.vTimerSetTimerID,"ax",%progbits
 766              		.align	1
 767              		.p2align 2,,3
 768              		.global	vTimerSetTimerID
 769              		.syntax unified
 770              		.thumb
 771              		.thumb_func
 772              		.fpu fpv4-sp-d16
 773              		.type	vTimerSetTimerID, %function
 774              	vTimerSetTimerID:
 775              		@ args = 0, pretend = 0, frame = 0
 776              		@ frame_needed = 0, uses_anonymous_args = 0
 777 0000 38B5     		push	{r3, r4, r5, lr}
 778 0002 0D46     		mov	r5, r1
 779 0004 0446     		mov	r4, r0
 780 0006 30B1     		cbz	r0, .L147
 781 0008 FFF7FEFF 		bl	vPortEnterCritical
 782 000c 2562     		str	r5, [r4, #32]
 783 000e BDE83840 		pop	{r3, r4, r5, lr}
 784 0012 FFF7FEBF 		b	vPortExitCritical
 785              	.L147:
 786 0016 0649     		ldr	r1, .L148
 787 0018 4FF47770 		mov	r0, #988
 788 001c FFF7FEFF 		bl	vAssertCalled
 789 0020 FFF7FEFF 		bl	vPortEnterCritical
 790 0024 2562     		str	r5, [r4, #32]
 791 0026 BDE83840 		pop	{r3, r4, r5, lr}
 792 002a FFF7FEBF 		b	vPortExitCritical
 793              	.L149:
 794 002e 00BF     		.align	2
 795              	.L148:
 796 0030 00000000 		.word	.LC1
 797              		.size	vTimerSetTimerID, .-vTimerSetTimerID
 798              		.section	.text.xTimerPendFunctionCallFromISR,"ax",%progbits
ARM GAS  /tmp/ccm30Ddy.s 			page 15


 799              		.align	1
 800              		.p2align 2,,3
 801              		.global	xTimerPendFunctionCallFromISR
 802              		.syntax unified
 803              		.thumb
 804              		.thumb_func
 805              		.fpu fpv4-sp-d16
 806              		.type	xTimerPendFunctionCallFromISR, %function
 807              	xTimerPendFunctionCallFromISR:
 808              		@ args = 0, pretend = 0, frame = 16
 809              		@ frame_needed = 0, uses_anonymous_args = 0
 810 0000 10B5     		push	{r4, lr}
 811 0002 084C     		ldr	r4, .L152
 812 0004 84B0     		sub	sp, sp, #16
 813 0006 0190     		str	r0, [sp, #4]
 814 0008 0291     		str	r1, [sp, #8]
 815 000a 0392     		str	r2, [sp, #12]
 816 000c 2068     		ldr	r0, [r4]
 817 000e 1A46     		mov	r2, r3
 818 0010 6FF00104 		mvn	r4, #1
 819 0014 0023     		movs	r3, #0
 820 0016 6946     		mov	r1, sp
 821 0018 0094     		str	r4, [sp]
 822 001a FFF7FEFF 		bl	xQueueGenericSendFromISR
 823 001e 04B0     		add	sp, sp, #16
 824              		@ sp needed
 825 0020 10BD     		pop	{r4, pc}
 826              	.L153:
 827 0022 00BF     		.align	2
 828              	.L152:
 829 0024 00000000 		.word	.LANCHOR0
 830              		.size	xTimerPendFunctionCallFromISR, .-xTimerPendFunctionCallFromISR
 831              		.section	.text.xTimerPendFunctionCall,"ax",%progbits
 832              		.align	1
 833              		.p2align 2,,3
 834              		.global	xTimerPendFunctionCall
 835              		.syntax unified
 836              		.thumb
 837              		.thumb_func
 838              		.fpu fpv4-sp-d16
 839              		.type	xTimerPendFunctionCall, %function
 840              	xTimerPendFunctionCall:
 841              		@ args = 0, pretend = 0, frame = 24
 842              		@ frame_needed = 0, uses_anonymous_args = 0
 843 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 844 0004 0F4D     		ldr	r5, .L158
 845 0006 2C68     		ldr	r4, [r5]
 846 0008 86B0     		sub	sp, sp, #24
 847 000a 8046     		mov	r8, r0
 848 000c 0F46     		mov	r7, r1
 849 000e 1646     		mov	r6, r2
 850 0010 7CB1     		cbz	r4, .L157
 851              	.L155:
 852 0012 1A46     		mov	r2, r3
 853 0014 2046     		mov	r0, r4
 854 0016 0023     		movs	r3, #0
 855 0018 4FF0FF34 		mov	r4, #-1
ARM GAS  /tmp/ccm30Ddy.s 			page 16


 856 001c 02A9     		add	r1, sp, #8
 857 001e CDF80C80 		str	r8, [sp, #12]
 858 0022 0497     		str	r7, [sp, #16]
 859 0024 0596     		str	r6, [sp, #20]
 860 0026 0294     		str	r4, [sp, #8]
 861 0028 FFF7FEFF 		bl	xQueueGenericSend
 862 002c 06B0     		add	sp, sp, #24
 863              		@ sp needed
 864 002e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 865              	.L157:
 866 0032 0549     		ldr	r1, .L158+4
 867 0034 0193     		str	r3, [sp, #4]
 868 0036 4FF48160 		mov	r0, #1032
 869 003a FFF7FEFF 		bl	vAssertCalled
 870 003e 2C68     		ldr	r4, [r5]
 871 0040 019B     		ldr	r3, [sp, #4]
 872 0042 E6E7     		b	.L155
 873              	.L159:
 874              		.align	2
 875              	.L158:
 876 0044 00000000 		.word	.LANCHOR0
 877 0048 00000000 		.word	.LC1
 878              		.size	xTimerPendFunctionCall, .-xTimerPendFunctionCall
 879              		.section	.text.uxTimerGetTimerNumber,"ax",%progbits
 880              		.align	1
 881              		.p2align 2,,3
 882              		.global	uxTimerGetTimerNumber
 883              		.syntax unified
 884              		.thumb
 885              		.thumb_func
 886              		.fpu fpv4-sp-d16
 887              		.type	uxTimerGetTimerNumber, %function
 888              	uxTimerGetTimerNumber:
 889              		@ args = 0, pretend = 0, frame = 0
 890              		@ frame_needed = 0, uses_anonymous_args = 0
 891              		@ link register save eliminated.
 892 0000 806A     		ldr	r0, [r0, #40]
 893 0002 7047     		bx	lr
 894              		.size	uxTimerGetTimerNumber, .-uxTimerGetTimerNumber
 895              		.section	.text.vTimerSetTimerNumber,"ax",%progbits
 896              		.align	1
 897              		.p2align 2,,3
 898              		.global	vTimerSetTimerNumber
 899              		.syntax unified
 900              		.thumb
 901              		.thumb_func
 902              		.fpu fpv4-sp-d16
 903              		.type	vTimerSetTimerNumber, %function
 904              	vTimerSetTimerNumber:
 905              		@ args = 0, pretend = 0, frame = 0
 906              		@ frame_needed = 0, uses_anonymous_args = 0
 907              		@ link register save eliminated.
 908 0000 8162     		str	r1, [r0, #40]
 909 0002 7047     		bx	lr
 910              		.size	vTimerSetTimerNumber, .-vTimerSetTimerNumber
 911              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 912              		.align	2
ARM GAS  /tmp/ccm30Ddy.s 			page 17


 913              		.type	cpu_irq_critical_section_counter, %object
 914              		.size	cpu_irq_critical_section_counter, 4
 915              	cpu_irq_critical_section_counter:
 916 0000 00000000 		.space	4
 917              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 918              		.type	cpu_irq_prev_interrupt_state, %object
 919              		.size	cpu_irq_prev_interrupt_state, 1
 920              	cpu_irq_prev_interrupt_state:
 921 0000 00       		.space	1
 922              		.section	.bss.pxCurrentTimerList,"aw",%nobits
 923              		.align	2
 924              		.set	.LANCHOR3,. + 0
 925              		.type	pxCurrentTimerList, %object
 926              		.size	pxCurrentTimerList, 4
 927              	pxCurrentTimerList:
 928 0000 00000000 		.space	4
 929              		.section	.bss.pxOverflowTimerList,"aw",%nobits
 930              		.align	2
 931              		.set	.LANCHOR4,. + 0
 932              		.type	pxOverflowTimerList, %object
 933              		.size	pxOverflowTimerList, 4
 934              	pxOverflowTimerList:
 935 0000 00000000 		.space	4
 936              		.section	.bss.ucStaticTimerQueueStorage.10612,"aw",%nobits
 937              		.align	2
 938              		.set	.LANCHOR6,. + 0
 939              		.type	ucStaticTimerQueueStorage.10612, %object
 940              		.size	ucStaticTimerQueueStorage.10612, 80
 941              	ucStaticTimerQueueStorage.10612:
 942 0000 00000000 		.space	80
 942      00000000 
 942      00000000 
 942      00000000 
 942      00000000 
 943              		.section	.bss.xActiveTimerList1,"aw",%nobits
 944              		.align	2
 945              		.set	.LANCHOR1,. + 0
 946              		.type	xActiveTimerList1, %object
 947              		.size	xActiveTimerList1, 20
 948              	xActiveTimerList1:
 949 0000 00000000 		.space	20
 949      00000000 
 949      00000000 
 949      00000000 
 949      00000000 
 950              		.section	.bss.xActiveTimerList2,"aw",%nobits
 951              		.align	2
 952              		.set	.LANCHOR2,. + 0
 953              		.type	xActiveTimerList2, %object
 954              		.size	xActiveTimerList2, 20
 955              	xActiveTimerList2:
 956 0000 00000000 		.space	20
 956      00000000 
 956      00000000 
 956      00000000 
 956      00000000 
 957              		.section	.bss.xLastTime.10565,"aw",%nobits
ARM GAS  /tmp/ccm30Ddy.s 			page 18


 958              		.align	2
 959              		.set	.LANCHOR8,. + 0
 960              		.type	xLastTime.10565, %object
 961              		.size	xLastTime.10565, 4
 962              	xLastTime.10565:
 963 0000 00000000 		.space	4
 964              		.section	.bss.xStaticTimerQueue.10611,"aw",%nobits
 965              		.align	2
 966              		.set	.LANCHOR5,. + 0
 967              		.type	xStaticTimerQueue.10611, %object
 968              		.size	xStaticTimerQueue.10611, 84
 969              	xStaticTimerQueue.10611:
 970 0000 00000000 		.space	84
 970      00000000 
 970      00000000 
 970      00000000 
 970      00000000 
 971              		.section	.bss.xTimerQueue,"aw",%nobits
 972              		.align	2
 973              		.set	.LANCHOR0,. + 0
 974              		.type	xTimerQueue, %object
 975              		.size	xTimerQueue, 4
 976              	xTimerQueue:
 977 0000 00000000 		.space	4
 978              		.section	.bss.xTimerTaskHandle,"aw",%nobits
 979              		.align	2
 980              		.set	.LANCHOR7,. + 0
 981              		.type	xTimerTaskHandle, %object
 982              		.size	xTimerTaskHandle, 4
 983              	xTimerTaskHandle:
 984 0000 00000000 		.space	4
 985              		.section	.rodata.prvCheckForValidListAndQueue.str1.4,"aMS",%progbits,1
 986              		.align	2
 987              	.LC0:
 988 0000 546D7251 		.ascii	"TmrQ\000"
 988      00
 989              		.section	.rodata.xTimerCreateTimerTask.str1.4,"aMS",%progbits,1
 990              		.align	2
 991              	.LC1:
 992 0000 2E2E2F73 		.ascii	"../src/timers.c\000"
 992      72632F74 
 992      696D6572 
 992      732E6300 
 993              	.LC2:
 994 0010 546D7220 		.ascii	"Tmr Svc\000"
 994      53766300 
 995              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
