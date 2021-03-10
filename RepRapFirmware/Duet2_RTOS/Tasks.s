ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 1


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
  13              		.file	"Tasks.cpp"
  14              		.text
  15              		.section	.text.MainTask,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	MainTask
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	MainTask, %function
  24              	MainTask:
  25              		@ Volatile: function does not return.
  26              		@ args = 0, pretend = 0, frame = 0
  27              		@ frame_needed = 0, uses_anonymous_args = 0
  28 0000 08B5     		push	{r3, lr}
  29 0002 0A49     		ldr	r1, .L5
  30 0004 0A48     		ldr	r0, .L5+4
  31 0006 0B4C     		ldr	r4, .L5+8
  32 0008 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
  33 000c 0A49     		ldr	r1, .L5+12
  34 000e 0B48     		ldr	r0, .L5+16
  35 0010 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
  36 0014 0A48     		ldr	r0, .L5+20
  37 0016 0B49     		ldr	r1, .L5+24
  38 0018 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
  39 001c 2046     		mov	r0, r4
  40 001e FFF7FEFF 		bl	_ZN6RepRap4InitEv
  41              	.L2:
  42 0022 2046     		mov	r0, r4
  43 0024 FFF7FEFF 		bl	_ZN6RepRap4SpinEv
  44 0028 FBE7     		b	.L2
  45              	.L6:
  46 002a 00BF     		.align	2
  47              	.L5:
  48 002c 00000000 		.word	.LC0
  49 0030 00000000 		.word	.LANCHOR0
  50 0034 00000000 		.word	reprap
  51 0038 08000000 		.word	.LC1
  52 003c 00000000 		.word	.LANCHOR1
  53 0040 00000000 		.word	.LANCHOR2
  54 0044 0C000000 		.word	.LC2
  55              		.size	MainTask, .-MainTask
  56              		.section	.text.vApplicationGetIdleTaskMemory,"ax",%progbits
  57              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 2


  58              		.p2align 2,,3
  59              		.global	vApplicationGetIdleTaskMemory
  60              		.syntax unified
  61              		.thumb
  62              		.thumb_func
  63              		.fpu fpv4-sp-d16
  64              		.type	vApplicationGetIdleTaskMemory, %function
  65              	vApplicationGetIdleTaskMemory:
  66              		@ args = 0, pretend = 0, frame = 0
  67              		@ frame_needed = 0, uses_anonymous_args = 0
  68              		@ link register save eliminated.
  69 0000 30B4     		push	{r4, r5}
  70 0002 054B     		ldr	r3, .L9
  71 0004 3C24     		movs	r4, #60
  72 0006 03F10805 		add	r5, r3, #8
  73 000a 6033     		adds	r3, r3, #96
  74 000c 0560     		str	r5, [r0]
  75 000e 0B60     		str	r3, [r1]
  76 0010 1460     		str	r4, [r2]
  77 0012 30BC     		pop	{r4, r5}
  78 0014 7047     		bx	lr
  79              	.L10:
  80 0016 00BF     		.align	2
  81              	.L9:
  82 0018 00000000 		.word	.LANCHOR3
  83              		.size	vApplicationGetIdleTaskMemory, .-vApplicationGetIdleTaskMemory
  84              		.section	.text.__malloc_lock,"ax",%progbits
  85              		.align	1
  86              		.p2align 2,,3
  87              		.global	__malloc_lock
  88              		.syntax unified
  89              		.thumb
  90              		.thumb_func
  91              		.fpu fpv4-sp-d16
  92              		.type	__malloc_lock, %function
  93              	__malloc_lock:
  94              		@ args = 0, pretend = 0, frame = 0
  95              		@ frame_needed = 0, uses_anonymous_args = 0
  96 0000 08B5     		push	{r3, lr}
  97 0002 FFF7FEFF 		bl	xTaskGetSchedulerState
  98 0006 0228     		cmp	r0, #2
  99 0008 00D0     		beq	.L14
 100 000a 08BD     		pop	{r3, pc}
 101              	.L14:
 102 000c 4FF0FF31 		mov	r1, #-1
 103 0010 0248     		ldr	r0, .L15
 104 0012 BDE80840 		pop	{r3, lr}
 105 0016 FFF7FEBF 		b	_ZNK5Mutex4TakeEm
 106              	.L16:
 107 001a 00BF     		.align	2
 108              	.L15:
 109 001c 00000000 		.word	.LANCHOR0
 110              		.size	__malloc_lock, .-__malloc_lock
 111              		.section	.text.__malloc_unlock,"ax",%progbits
 112              		.align	1
 113              		.p2align 2,,3
 114              		.global	__malloc_unlock
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 3


 115              		.syntax unified
 116              		.thumb
 117              		.thumb_func
 118              		.fpu fpv4-sp-d16
 119              		.type	__malloc_unlock, %function
 120              	__malloc_unlock:
 121              		@ args = 0, pretend = 0, frame = 0
 122              		@ frame_needed = 0, uses_anonymous_args = 0
 123 0000 08B5     		push	{r3, lr}
 124 0002 FFF7FEFF 		bl	xTaskGetSchedulerState
 125 0006 0228     		cmp	r0, #2
 126 0008 00D0     		beq	.L20
 127 000a 08BD     		pop	{r3, pc}
 128              	.L20:
 129 000c 0248     		ldr	r0, .L21
 130 000e BDE80840 		pop	{r3, lr}
 131 0012 FFF7FEBF 		b	_ZNK5Mutex7ReleaseEv
 132              	.L22:
 133 0016 00BF     		.align	2
 134              	.L21:
 135 0018 00000000 		.word	.LANCHOR0
 136              		.size	__malloc_unlock, .-__malloc_unlock
 137              		.section	.text.AppMain,"ax",%progbits
 138              		.align	1
 139              		.p2align 2,,3
 140              		.global	AppMain
 141              		.syntax unified
 142              		.thumb
 143              		.thumb_func
 144              		.fpu fpv4-sp-d16
 145              		.type	AppMain, %function
 146              	AppMain:
 147              		@ args = 0, pretend = 0, frame = 8
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 150 0002 0020     		movs	r0, #0
 151 0004 87B0     		sub	sp, sp, #28
 152 0006 FFF7FEFF 		bl	sbrk
 153 000a 6A46     		mov	r2, sp
 154 000c 00F11003 		add	r3, r0, #16
 155 0010 9A42     		cmp	r2, r3
 156 0012 06D9     		bls	.L24
 157 0014 ADF11002 		sub	r2, sp, #16
 158 0018 A523     		movs	r3, #165
 159              	.L25:
 160 001a 00F8013B 		strb	r3, [r0], #1
 161 001e 9042     		cmp	r0, r2
 162 0020 FBD1     		bne	.L25
 163              	.L24:
 164 0022 1A4A     		ldr	r2, .L28
 165 0024 1A49     		ldr	r1, .L28+4
 166 0026 5369     		ldr	r3, [r2, #20]
 167 0028 1A4E     		ldr	r6, .L28+8
 168 002a 1B48     		ldr	r0, .L28+12
 169 002c 1B4C     		ldr	r4, .L28+16
 170 002e 1C4D     		ldr	r5, .L28+20
 171 0030 43F01003 		orr	r3, r3, #16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 4


 172 0034 5361     		str	r3, [r2, #20]
 173 0036 8860     		str	r0, [r1, #8]
 174 0038 05A8     		add	r0, sp, #20
 175 003a FFF7FEFF 		bl	cmcc_get_config_defaults
 176 003e 0127     		movs	r7, #1
 177 0040 05A9     		add	r1, sp, #20
 178 0042 3046     		mov	r0, r6
 179 0044 FFF7FEFF 		bl	cmcc_init
 180 0048 3762     		str	r7, [r6, #32]
 181 004a 3046     		mov	r0, r6
 182 004c 154E     		ldr	r6, .L28+24
 183 004e FFF7FEFF 		bl	cmcc_enable
 184 0052 04F15803 		add	r3, r4, #88
 185 0056 CDE90134 		strd	r3, r4, [sp, #4]
 186 005a 2A68     		ldr	r2, [r5]
 187 005c 0097     		str	r7, [sp]
 188 005e 06F10803 		add	r3, r6, #8
 189 0062 1149     		ldr	r1, .L28+28
 190 0064 3360     		str	r3, [r6]
 191 0066 7260     		str	r2, [r6, #4]
 192 0068 0023     		movs	r3, #0
 193 006a 4FF4FF62 		mov	r2, #2040
 194 006e 0F48     		ldr	r0, .L28+32
 195 0070 2E60     		str	r6, [r5]
 196 0072 FFF7FEFF 		bl	xTaskCreateStatic
 197 0076 2A68     		ldr	r2, [r5]
 198 0078 A4F10803 		sub	r3, r4, #8
 199 007c 44E90242 		strd	r4, r2, [r4, #-8]
 200 0080 2B60     		str	r3, [r5]
 201 0082 FFF7FEFF 		bl	vTaskStartScheduler
 202 0086 07B0     		add	sp, sp, #28
 203              		@ sp needed
 204 0088 F0BD     		pop	{r4, r5, r6, r7, pc}
 205              	.L29:
 206 008a 00BF     		.align	2
 207              	.L28:
 208 008c 00ED00E0 		.word	-536810240
 209 0090 00180E40 		.word	1074665472
 210 0094 00400C40 		.word	1074544640
 211 0098 010000A5 		.word	-1526726655
 212 009c 08000000 		.word	_ZL8mainTask+8
 213 00a0 00000000 		.word	_ZN8TaskBase8taskListE
 214 00a4 00000000 		.word	.LANCHOR3
 215 00a8 00000000 		.word	.LC3
 216 00ac 00000000 		.word	MainTask
 217              		.size	AppMain, .-AppMain
 218              		.section	.text._ZN5Tasks15GetNeverUsedRamEv,"ax",%progbits
 219              		.align	1
 220              		.p2align 2,,3
 221              		.global	_ZN5Tasks15GetNeverUsedRamEv
 222              		.syntax unified
 223              		.thumb
 224              		.thumb_func
 225              		.fpu fpv4-sp-d16
 226              		.type	_ZN5Tasks15GetNeverUsedRamEv, %function
 227              	_ZN5Tasks15GetNeverUsedRamEv:
 228              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 5


 229              		@ frame_needed = 0, uses_anonymous_args = 0
 230 0000 10B5     		push	{r4, lr}
 231 0002 0020     		movs	r0, #0
 232 0004 FFF7FEFF 		bl	sbrk
 233 0008 0B4C     		ldr	r4, .L41
 234 000a A042     		cmp	r0, r4
 235 000c 11D2     		bcs	.L36
 236 000e 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 237 0010 A52B     		cmp	r3, #165
 238 0012 08BF     		it	eq
 239 0014 431C     		addeq	r3, r0, #1
 240 0016 04D0     		beq	.L33
 241 0018 0BE0     		b	.L36
 242              	.L34:
 243 001a 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 244 001c A529     		cmp	r1, #165
 245 001e 06D1     		bne	.L40
 246 0020 1346     		mov	r3, r2
 247              	.L33:
 248 0022 9C42     		cmp	r4, r3
 249 0024 03F10102 		add	r2, r3, #1
 250 0028 F7D1     		bne	.L34
 251 002a 201A     		subs	r0, r4, r0
 252 002c 10BD     		pop	{r4, pc}
 253              	.L40:
 254 002e 181A     		subs	r0, r3, r0
 255 0030 10BD     		pop	{r4, pc}
 256              	.L36:
 257 0032 0020     		movs	r0, #0
 258 0034 10BD     		pop	{r4, pc}
 259              	.L42:
 260 0036 00BF     		.align	2
 261              	.L41:
 262 0038 00000000 		.word	_estack
 263              		.size	_ZN5Tasks15GetNeverUsedRamEv, .-_ZN5Tasks15GetNeverUsedRamEv
 264              		.section	.text._ZN5Tasks11DiagnosticsE11MessageType,"ax",%progbits
 265              		.align	1
 266              		.p2align 2,,3
 267              		.global	_ZN5Tasks11DiagnosticsE11MessageType
 268              		.syntax unified
 269              		.thumb
 270              		.thumb_func
 271              		.fpu fpv4-sp-d16
 272              		.type	_ZN5Tasks11DiagnosticsE11MessageType, %function
 273              	_ZN5Tasks11DiagnosticsE11MessageType:
 274              		@ args = 0, pretend = 0, frame = 40
 275              		@ frame_needed = 0, uses_anonymous_args = 0
 276 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 277 0004 4B4B     		ldr	r3, .L76
 278 0006 4C4A     		ldr	r2, .L76+4
 279 0008 5D68     		ldr	r5, [r3, #4]
 280 000a 8DB0     		sub	sp, sp, #52
 281 000c 0646     		mov	r6, r0
 282 000e 0146     		mov	r1, r0
 283 0010 2846     		mov	r0, r5
 284 0012 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 285 0016 3146     		mov	r1, r6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 6


 286 0018 484B     		ldr	r3, .L76+8
 287 001a 494A     		ldr	r2, .L76+12
 288 001c 2846     		mov	r0, r5
 289 001e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 290 0022 02A8     		add	r0, sp, #8
 291 0024 FFF7FEFF 		bl	mallinfo
 292 0028 DDE90932 		ldrd	r3, r2, [sp, #36]
 293 002c 2846     		mov	r0, r5
 294 002e 0092     		str	r2, [sp]
 295 0030 3146     		mov	r1, r6
 296 0032 444A     		ldr	r2, .L76+16
 297 0034 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 298 0038 0020     		movs	r0, #0
 299 003a FFF7FEFF 		bl	sbrk
 300 003e 424B     		ldr	r3, .L76+20
 301 0040 9842     		cmp	r0, r3
 302 0042 74D2     		bcs	.L55
 303 0044 0278     		ldrb	r2, [r0]	@ zero_extendqisi2
 304 0046 A52A     		cmp	r2, #165
 305 0048 08BF     		it	eq
 306 004a 421C     		addeq	r2, r0, #1
 307 004c 04D0     		beq	.L47
 308 004e 6EE0     		b	.L55
 309              	.L48:
 310 0050 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 311 0052 A52C     		cmp	r4, #165
 312 0054 69D1     		bne	.L74
 313 0056 0A46     		mov	r2, r1
 314              	.L47:
 315 0058 9A42     		cmp	r2, r3
 316 005a 02F10101 		add	r1, r2, #1
 317 005e F7D1     		bne	.L48
 318 0060 1C1A     		subs	r4, r3, r0
 319 0062 1A46     		mov	r2, r3
 320              	.L45:
 321 0064 9B1A     		subs	r3, r3, r2
 322 0066 3146     		mov	r1, r6
 323 0068 384A     		ldr	r2, .L76+24
 324 006a 2846     		mov	r0, r5
 325 006c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 326 0070 2346     		mov	r3, r4
 327 0072 374A     		ldr	r2, .L76+28
 328 0074 3146     		mov	r1, r6
 329 0076 2846     		mov	r0, r5
 330 0078 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 331 007c 354A     		ldr	r2, .L76+32
 332 007e 3146     		mov	r1, r6
 333 0080 2846     		mov	r0, r5
 334 0082 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 335 0086 344B     		ldr	r3, .L76+36
 336 0088 1C68     		ldr	r4, [r3]
 337 008a 3CB3     		cbz	r4, .L49
 338 008c 334F     		ldr	r7, .L76+40
 339 008e DFF8E880 		ldr	r8, .L76+68
 340 0092 DFF8E890 		ldr	r9, .L76+72
 341 0096 15E0     		b	.L51
 342              	.L75:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 7


 343 0098 012B     		cmp	r3, #1
 344 009a 3148     		ldr	r0, .L76+44
 345 009c 314A     		ldr	r2, .L76+48
 346 009e 40D0     		beq	.L58
 347 00a0 022B     		cmp	r3, #2
 348 00a2 40D0     		beq	.L59
 349 00a4 032B     		cmp	r3, #3
 350 00a6 08BF     		it	eq
 351 00a8 1046     		moveq	r0, r2
 352              	.L50:
 353 00aa BDF82810 		ldrh	r1, [sp, #40]
 354 00ae 0090     		str	r0, [sp]
 355 00b0 8900     		lsls	r1, r1, #2
 356 00b2 0191     		str	r1, [sp, #4]
 357 00b4 2C4A     		ldr	r2, .L76+52
 358 00b6 039B     		ldr	r3, [sp, #12]
 359 00b8 3146     		mov	r1, r6
 360 00ba 2846     		mov	r0, r5
 361 00bc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 362 00c0 6468     		ldr	r4, [r4, #4]
 363 00c2 5CB1     		cbz	r4, .L49
 364              	.L51:
 365 00c4 0523     		movs	r3, #5
 366 00c6 0122     		movs	r2, #1
 367 00c8 02A9     		add	r1, sp, #8
 368 00ca 2068     		ldr	r0, [r4]
 369 00cc FFF7FEFF 		bl	vTaskGetInfo
 370 00d0 9DF81430 		ldrb	r3, [sp, #20]	@ zero_extendqisi2
 371 00d4 002B     		cmp	r3, #0
 372 00d6 DFD1     		bne	.L75
 373 00d8 3846     		mov	r0, r7
 374 00da E6E7     		b	.L50
 375              	.L49:
 376 00dc 234A     		ldr	r2, .L76+56
 377 00de 3146     		mov	r1, r6
 378 00e0 2846     		mov	r0, r5
 379 00e2 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 380 00e6 224B     		ldr	r3, .L76+60
 381 00e8 1C68     		ldr	r4, [r3]
 382 00ea 94B1     		cbz	r4, .L52
 383 00ec DFF89080 		ldr	r8, .L76+76
 384              	.L54:
 385 00f0 2046     		mov	r0, r4
 386 00f2 FFF7FEFF 		bl	_ZNK5Mutex9GetHolderEv
 387 00f6 48B1     		cbz	r0, .L53
 388 00f8 A768     		ldr	r7, [r4, #8]
 389 00fa FFF7FEFF 		bl	pcTaskGetName
 390 00fe 3B46     		mov	r3, r7
 391 0100 0090     		str	r0, [sp]
 392 0102 4246     		mov	r2, r8
 393 0104 3146     		mov	r1, r6
 394 0106 2846     		mov	r0, r5
 395 0108 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 396              	.L53:
 397 010c 6468     		ldr	r4, [r4, #4]
 398 010e 002C     		cmp	r4, #0
 399 0110 EED1     		bne	.L54
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 8


 400              	.L52:
 401 0112 3146     		mov	r1, r6
 402 0114 2846     		mov	r0, r5
 403 0116 174A     		ldr	r2, .L76+64
 404 0118 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 405 011c 0DB0     		add	sp, sp, #52
 406              		@ sp needed
 407 011e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 408              	.L58:
 409 0122 4046     		mov	r0, r8
 410 0124 C1E7     		b	.L50
 411              	.L59:
 412 0126 4846     		mov	r0, r9
 413 0128 BFE7     		b	.L50
 414              	.L74:
 415 012a 141A     		subs	r4, r2, r0
 416 012c 9AE7     		b	.L45
 417              	.L55:
 418 012e 0246     		mov	r2, r0
 419 0130 0024     		movs	r4, #0
 420 0132 97E7     		b	.L45
 421              	.L77:
 422              		.align	2
 423              	.L76:
 424 0134 00000000 		.word	reprap
 425 0138 2C000000 		.word	.LC9
 426 013c 000000E0 		.word	_end-536870912
 427 0140 3C000000 		.word	.LC10
 428 0144 4C000000 		.word	.LC11
 429 0148 00000000 		.word	_estack
 430 014c 74000000 		.word	.LC12
 431 0150 94000000 		.word	.LC13
 432 0154 AC000000 		.word	.LC14
 433 0158 00000000 		.word	_ZN8TaskBase8taskListE
 434 015c 08000000 		.word	.LC5
 435 0160 18000000 		.word	.LC7
 436 0164 20000000 		.word	.LC8
 437 0168 B4000000 		.word	.LC15
 438 016c C0000000 		.word	.LC16
 439 0170 00000000 		.word	_ZN5Mutex9mutexListE
 440 0174 D8000000 		.word	.LC18
 441 0178 00000000 		.word	.LC4
 442 017c 10000000 		.word	.LC6
 443 0180 D0000000 		.word	.LC17
 444              		.size	_ZN5Tasks11DiagnosticsE11MessageType, .-_ZN5Tasks11DiagnosticsE11MessageType
 445              		.section	.text._ZN5Tasks11GetSpiMutexEv,"ax",%progbits
 446              		.align	1
 447              		.p2align 2,,3
 448              		.global	_ZN5Tasks11GetSpiMutexEv
 449              		.syntax unified
 450              		.thumb
 451              		.thumb_func
 452              		.fpu fpv4-sp-d16
 453              		.type	_ZN5Tasks11GetSpiMutexEv, %function
 454              	_ZN5Tasks11GetSpiMutexEv:
 455              		@ args = 0, pretend = 0, frame = 0
 456              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 9


 457              		@ link register save eliminated.
 458 0000 0048     		ldr	r0, .L79
 459 0002 7047     		bx	lr
 460              	.L80:
 461              		.align	2
 462              	.L79:
 463 0004 00000000 		.word	.LANCHOR1
 464              		.size	_ZN5Tasks11GetSpiMutexEv, .-_ZN5Tasks11GetSpiMutexEv
 465              		.section	.text._ZN5Tasks11GetI2CMutexEv,"ax",%progbits
 466              		.align	1
 467              		.p2align 2,,3
 468              		.global	_ZN5Tasks11GetI2CMutexEv
 469              		.syntax unified
 470              		.thumb
 471              		.thumb_func
 472              		.fpu fpv4-sp-d16
 473              		.type	_ZN5Tasks11GetI2CMutexEv, %function
 474              	_ZN5Tasks11GetI2CMutexEv:
 475              		@ args = 0, pretend = 0, frame = 0
 476              		@ frame_needed = 0, uses_anonymous_args = 0
 477              		@ link register save eliminated.
 478 0000 0048     		ldr	r0, .L82
 479 0002 7047     		bx	lr
 480              	.L83:
 481              		.align	2
 482              	.L82:
 483 0004 00000000 		.word	.LANCHOR2
 484              		.size	_ZN5Tasks11GetI2CMutexEv, .-_ZN5Tasks11GetI2CMutexEv
 485              		.section	.text.sysTickHook,"ax",%progbits
 486              		.align	1
 487              		.p2align 2,,3
 488              		.global	sysTickHook
 489              		.syntax unified
 490              		.thumb
 491              		.thumb_func
 492              		.fpu fpv4-sp-d16
 493              		.type	sysTickHook, %function
 494              	sysTickHook:
 495              		@ args = 0, pretend = 0, frame = 0
 496              		@ frame_needed = 0, uses_anonymous_args = 0
 497              		@ link register save eliminated.
 498 0000 0148     		ldr	r0, .L85
 499 0002 FFF7FEBF 		b	_ZN6RepRap4TickEv
 500              	.L86:
 501 0006 00BF     		.align	2
 502              	.L85:
 503 0008 00000000 		.word	reprap
 504              		.size	sysTickHook, .-sysTickHook
 505              		.section	.text.hardFaultDispatcher,"ax",%progbits
 506              		.align	1
 507              		.p2align 2,,3
 508              		.global	hardFaultDispatcher
 509              		.syntax unified
 510              		.thumb
 511              		.thumb_func
 512              		.fpu fpv4-sp-d16
 513              		.type	hardFaultDispatcher, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 10


 514              	hardFaultDispatcher:
 515              		@ args = 0, pretend = 0, frame = 0
 516              		@ frame_needed = 0, uses_anonymous_args = 0
 517              		@ link register save eliminated.
 518 0000 034B     		ldr	r3, .L88
 519 0002 00F11402 		add	r2, r0, #20
 520 0006 3021     		movs	r1, #48
 521 0008 5868     		ldr	r0, [r3, #4]
 522 000a FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 523              	.L89:
 524 000e 00BF     		.align	2
 525              	.L88:
 526 0010 00000000 		.word	reprap
 527              		.size	hardFaultDispatcher, .-hardFaultDispatcher
 528              		.section	.text.HardFault_Handler,"ax",%progbits
 529              		.align	1
 530              		.p2align 2,,3
 531              		.global	HardFault_Handler
 532              		.syntax unified
 533              		.thumb
 534              		.thumb_func
 535              		.fpu fpv4-sp-d16
 536              		.type	HardFault_Handler, %function
 537              	HardFault_Handler:
 538              		@ Naked Function: prologue and epilogue provided by programmer.
 539              		@ args = 0, pretend = 0, frame = 0
 540              		@ frame_needed = 0, uses_anonymous_args = 0
 541              		.syntax unified
 542              	@ 305 "../src/Tasks.cpp" 1
 543 0000 1EF0040F 		 tst lr, #4                                                
 544 0004 0CBF     	 ite eq                                                    
 545 0006 EFF30880 	 mrseq r0, msp                                             
 546 000a EFF30980 	 mrsne r0, psp                                             
 547 000e DFF80420 	 ldr r2, handler_hf_address_const                          
 548 0012 1047     	 bx r2                                                     
 549 0014 00000000 	 handler_hf_address_const: .word hardFaultDispatcher       
 550              	
 551              	@ 0 "" 2
 552              		.thumb
 553              		.syntax unified
 554              		.size	HardFault_Handler, .-HardFault_Handler
 555              		.section	.text.wdtFaultDispatcher,"ax",%progbits
 556              		.align	1
 557              		.p2align 2,,3
 558              		.global	wdtFaultDispatcher
 559              		.syntax unified
 560              		.thumb
 561              		.thumb_func
 562              		.fpu fpv4-sp-d16
 563              		.type	wdtFaultDispatcher, %function
 564              	wdtFaultDispatcher:
 565              		@ args = 0, pretend = 0, frame = 0
 566              		@ frame_needed = 0, uses_anonymous_args = 0
 567              		@ link register save eliminated.
 568 0000 034B     		ldr	r3, .L92
 569 0002 00F11402 		add	r2, r0, #20
 570 0006 5021     		movs	r1, #80
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 11


 571 0008 5868     		ldr	r0, [r3, #4]
 572 000a FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 573              	.L93:
 574 000e 00BF     		.align	2
 575              	.L92:
 576 0010 00000000 		.word	reprap
 577              		.size	wdtFaultDispatcher, .-wdtFaultDispatcher
 578              		.section	.text.WDT_Handler,"ax",%progbits
 579              		.align	1
 580              		.p2align 2,,3
 581              		.global	WDT_Handler
 582              		.syntax unified
 583              		.thumb
 584              		.thumb_func
 585              		.fpu fpv4-sp-d16
 586              		.type	WDT_Handler, %function
 587              	WDT_Handler:
 588              		@ Naked Function: prologue and epilogue provided by programmer.
 589              		@ args = 0, pretend = 0, frame = 0
 590              		@ frame_needed = 0, uses_anonymous_args = 0
 591              		.syntax unified
 592              	@ 325 "../src/Tasks.cpp" 1
 593 0000 1EF0040F 		 tst lr, #4                                                
 594 0004 0CBF     	 ite eq                                                    
 595 0006 EFF30880 	 mrseq r0, msp                                             
 596 000a EFF30980 	 mrsne r0, psp                                             
 597 000e DFF80420 	 ldr r2, handler_wdt_address_const                         
 598 0012 1047     	 bx r2                                                     
 599 0014 00000000 	 handler_wdt_address_const: .word wdtFaultDispatcher       
 600              	
 601              	@ 0 "" 2
 602              		.thumb
 603              		.syntax unified
 604              		.size	WDT_Handler, .-WDT_Handler
 605              		.section	.text.otherFaultDispatcher,"ax",%progbits
 606              		.align	1
 607              		.p2align 2,,3
 608              		.global	otherFaultDispatcher
 609              		.syntax unified
 610              		.thumb
 611              		.thumb_func
 612              		.fpu fpv4-sp-d16
 613              		.type	otherFaultDispatcher, %function
 614              	otherFaultDispatcher:
 615              		@ args = 0, pretend = 0, frame = 0
 616              		@ frame_needed = 0, uses_anonymous_args = 0
 617              		@ link register save eliminated.
 618 0000 034B     		ldr	r3, .L96
 619 0002 00F11402 		add	r2, r0, #20
 620 0006 7021     		movs	r1, #112
 621 0008 5868     		ldr	r0, [r3, #4]
 622 000a FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 623              	.L97:
 624 000e 00BF     		.align	2
 625              	.L96:
 626 0010 00000000 		.word	reprap
 627              		.size	otherFaultDispatcher, .-otherFaultDispatcher
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 12


 628              		.section	.text.OtherFault_Handler,"ax",%progbits
 629              		.align	1
 630              		.p2align 2,,3
 631              		.global	OtherFault_Handler
 632              		.syntax unified
 633              		.thumb
 634              		.thumb_func
 635              		.fpu fpv4-sp-d16
 636              		.type	OtherFault_Handler, %function
 637              	OtherFault_Handler:
 638              		@ Naked Function: prologue and epilogue provided by programmer.
 639              		@ args = 0, pretend = 0, frame = 0
 640              		@ frame_needed = 0, uses_anonymous_args = 0
 641              		.syntax unified
 642              	@ 347 "../src/Tasks.cpp" 1
 643 0000 1EF0040F 		 tst lr, #4                                                
 644 0004 0CBF     	 ite eq                                                    
 645 0006 EFF30880 	 mrseq r0, msp                                             
 646 000a EFF30980 	 mrsne r0, psp                                             
 647 000e DFF80420 	 ldr r2, handler_oflt_address_const                        
 648 0012 1047     	 bx r2                                                     
 649 0014 00000000 	 handler_oflt_address_const: .word otherFaultDispatcher    
 650              	
 651              	@ 0 "" 2
 652              		.thumb
 653              		.syntax unified
 654              		.size	OtherFault_Handler, .-OtherFault_Handler
 655              		.global	DebugMon_Handler
 656              		.thumb_set DebugMon_Handler,OtherFault_Handler
 657              		.section	.text.NMI_Handler,"ax",%progbits
 658              		.align	1
 659              		.p2align 2,,3
 660              		.global	NMI_Handler
 661              		.syntax unified
 662              		.thumb
 663              		.thumb_func
 664              		.fpu fpv4-sp-d16
 665              		.type	NMI_Handler, %function
 666              	NMI_Handler:
 667              		@ args = 0, pretend = 0, frame = 0
 668              		@ frame_needed = 0, uses_anonymous_args = 0
 669              		@ link register save eliminated.
 670 0000 024B     		ldr	r3, .L100
 671 0002 0022     		movs	r2, #0
 672 0004 5868     		ldr	r0, [r3, #4]
 673 0006 2021     		movs	r1, #32
 674 0008 FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 675              	.L101:
 676              		.align	2
 677              	.L100:
 678 000c 00000000 		.word	reprap
 679              		.size	NMI_Handler, .-NMI_Handler
 680              		.section	.text.UsageFault_Handler,"ax",%progbits
 681              		.align	1
 682              		.p2align 2,,3
 683              		.global	UsageFault_Handler
 684              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 13


 685              		.thumb
 686              		.thumb_func
 687              		.fpu fpv4-sp-d16
 688              		.type	UsageFault_Handler, %function
 689              	UsageFault_Handler:
 690              		@ args = 0, pretend = 0, frame = 0
 691              		@ frame_needed = 0, uses_anonymous_args = 0
 692              		@ link register save eliminated.
 693 0000 024B     		ldr	r3, .L103
 694 0002 0022     		movs	r2, #0
 695 0004 5868     		ldr	r0, [r3, #4]
 696 0006 6021     		movs	r1, #96
 697 0008 FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 698              	.L104:
 699              		.align	2
 700              	.L103:
 701 000c 00000000 		.word	reprap
 702              		.size	UsageFault_Handler, .-UsageFault_Handler
 703              		.section	.text.stackOverflowDispatcher,"ax",%progbits
 704              		.align	1
 705              		.p2align 2,,3
 706              		.global	stackOverflowDispatcher
 707              		.syntax unified
 708              		.thumb
 709              		.thumb_func
 710              		.fpu fpv4-sp-d16
 711              		.type	stackOverflowDispatcher, %function
 712              	stackOverflowDispatcher:
 713              		@ args = 0, pretend = 0, frame = 0
 714              		@ frame_needed = 0, uses_anonymous_args = 0
 715              		@ link register save eliminated.
 716 0000 024B     		ldr	r3, .L106
 717 0002 0246     		mov	r2, r0
 718 0004 8021     		movs	r1, #128
 719 0006 5868     		ldr	r0, [r3, #4]
 720 0008 FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 721              	.L107:
 722              		.align	2
 723              	.L106:
 724 000c 00000000 		.word	reprap
 725              		.size	stackOverflowDispatcher, .-stackOverflowDispatcher
 726              		.section	.text.vApplicationStackOverflowHook,"ax",%progbits
 727              		.align	1
 728              		.p2align 2,,3
 729              		.global	vApplicationStackOverflowHook
 730              		.syntax unified
 731              		.thumb
 732              		.thumb_func
 733              		.fpu fpv4-sp-d16
 734              		.type	vApplicationStackOverflowHook, %function
 735              	vApplicationStackOverflowHook:
 736              		@ Naked Function: prologue and epilogue provided by programmer.
 737              		@ args = 0, pretend = 0, frame = 0
 738              		@ frame_needed = 0, uses_anonymous_args = 0
 739              		.syntax unified
 740              	@ 375 "../src/Tasks.cpp" 1
 741 0000 03B5     		 push {r0, r1, lr}											
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 14


 742 0002 6846     	 mov r0, sp												
 743 0004 004A     	 ldr r2, handler_sovf_address_const                        
 744 0006 1047     	 bx r2                                                     
 745 0008 00000000 	 handler_sovf_address_const: .word stackOverflowDispatcher 
 746              	
 747              	@ 0 "" 2
 748              		.thumb
 749              		.syntax unified
 750              		.size	vApplicationStackOverflowHook, .-vApplicationStackOverflowHook
 751              		.section	.text.assertCalledDispatcher,"ax",%progbits
 752              		.align	1
 753              		.p2align 2,,3
 754              		.global	assertCalledDispatcher
 755              		.syntax unified
 756              		.thumb
 757              		.thumb_func
 758              		.fpu fpv4-sp-d16
 759              		.type	assertCalledDispatcher, %function
 760              	assertCalledDispatcher:
 761              		@ args = 0, pretend = 0, frame = 0
 762              		@ frame_needed = 0, uses_anonymous_args = 0
 763              		@ link register save eliminated.
 764 0000 024B     		ldr	r3, .L110
 765 0002 0246     		mov	r2, r0
 766 0004 9021     		movs	r1, #144
 767 0006 5868     		ldr	r0, [r3, #4]
 768 0008 FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 769              	.L111:
 770              		.align	2
 771              	.L110:
 772 000c 00000000 		.word	reprap
 773              		.size	assertCalledDispatcher, .-assertCalledDispatcher
 774              		.section	.text.vAssertCalled,"ax",%progbits
 775              		.align	1
 776              		.p2align 2,,3
 777              		.global	vAssertCalled
 778              		.syntax unified
 779              		.thumb
 780              		.thumb_func
 781              		.fpu fpv4-sp-d16
 782              		.type	vAssertCalled, %function
 783              	vAssertCalled:
 784              		@ Naked Function: prologue and epilogue provided by programmer.
 785              		@ args = 0, pretend = 0, frame = 0
 786              		@ frame_needed = 0, uses_anonymous_args = 0
 787              		.syntax unified
 788              	@ 393 "../src/Tasks.cpp" 1
 789 0000 03B5     		 push {r0, r1, lr}											
 790 0002 6846     	 mov r0, sp												
 791 0004 004A     	 ldr r2, handler_asrt_address_const                        
 792 0006 1047     	 bx r2                                                     
 793 0008 00000000 	 handler_asrt_address_const: .word assertCalledDispatcher  
 794              	
 795              	@ 0 "" 2
 796              		.thumb
 797              		.syntax unified
 798              		.size	vAssertCalled, .-vAssertCalled
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 15


 799              		.section	.text.startup._GLOBAL__sub_I_vApplicationGetIdleTaskMemory,"ax",%progbits
 800              		.align	1
 801              		.p2align 2,,3
 802              		.syntax unified
 803              		.thumb
 804              		.thumb_func
 805              		.fpu fpv4-sp-d16
 806              		.type	_GLOBAL__sub_I_vApplicationGetIdleTaskMemory, %function
 807              	_GLOBAL__sub_I_vApplicationGetIdleTaskMemory:
 808              		@ args = 0, pretend = 0, frame = 0
 809              		@ frame_needed = 0, uses_anonymous_args = 0
 810              		@ link register save eliminated.
 811 0000 30B4     		push	{r4, r5}
 812 0002 0648     		ldr	r0, .L115
 813 0004 0649     		ldr	r1, .L115+4
 814 0006 074A     		ldr	r2, .L115+8
 815 0008 074D     		ldr	r5, .L115+12
 816 000a 084C     		ldr	r4, .L115+16
 817 000c 0023     		movs	r3, #0
 818 000e 0360     		str	r3, [r0]
 819 0010 0B60     		str	r3, [r1]
 820 0012 1360     		str	r3, [r2]
 821 0014 2B60     		str	r3, [r5]
 822 0016 2360     		str	r3, [r4]
 823 0018 30BC     		pop	{r4, r5}
 824 001a 7047     		bx	lr
 825              	.L116:
 826              		.align	2
 827              	.L115:
 828 001c 00000000 		.word	.LANCHOR1
 829 0020 00000000 		.word	.LANCHOR2
 830 0024 00000000 		.word	.LANCHOR0
 831 0028 00000000 		.word	.LANCHOR3
 832 002c 00000000 		.word	_ZL8mainTask
 833              		.size	_GLOBAL__sub_I_vApplicationGetIdleTaskMemory, .-_GLOBAL__sub_I_vApplicationGetIdleTaskMemory
 834              		.section	.init_array,"aw",%init_array
 835              		.align	2
 836 0000 00000000 		.word	_GLOBAL__sub_I_vApplicationGetIdleTaskMemory(target1)
 837              		.section	.bss._ZL11mallocMutex,"aw",%nobits
 838              		.align	2
 839              		.set	.LANCHOR0,. + 0
 840              		.type	_ZL11mallocMutex, %object
 841              		.size	_ZL11mallocMutex, 96
 842              	_ZL11mallocMutex:
 843 0000 00000000 		.space	96
 843      00000000 
 843      00000000 
 843      00000000 
 843      00000000 
 844              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 845              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 846              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 847              	_ZL28cpu_irq_prev_interrupt_state:
 848 0000 00       		.space	1
 849              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 850              		.align	2
 851              		.type	_ZL32cpu_irq_critical_section_counter, %object
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 16


 852              		.size	_ZL32cpu_irq_critical_section_counter, 4
 853              	_ZL32cpu_irq_critical_section_counter:
 854 0000 00000000 		.space	4
 855              		.section	.bss._ZL8i2cMutex,"aw",%nobits
 856              		.align	2
 857              		.set	.LANCHOR2,. + 0
 858              		.type	_ZL8i2cMutex, %object
 859              		.size	_ZL8i2cMutex, 96
 860              	_ZL8i2cMutex:
 861 0000 00000000 		.space	96
 861      00000000 
 861      00000000 
 861      00000000 
 861      00000000 
 862              		.section	.bss._ZL8idleTask,"aw",%nobits
 863              		.align	2
 864              		.set	.LANCHOR3,. + 0
 865              		.type	_ZL8idleTask, %object
 866              		.size	_ZL8idleTask, 336
 867              	_ZL8idleTask:
 868 0000 00000000 		.space	336
 868      00000000 
 868      00000000 
 868      00000000 
 868      00000000 
 869              		.section	.bss._ZL8mainTask,"aw",%nobits
 870              		.align	2
 871              		.type	_ZL8mainTask, %object
 872              		.size	_ZL8mainTask, 8256
 873              	_ZL8mainTask:
 874 0000 00000000 		.space	8256
 874      00000000 
 874      00000000 
 874      00000000 
 874      00000000 
 875              		.section	.bss._ZL8spiMutex,"aw",%nobits
 876              		.align	2
 877              		.set	.LANCHOR1,. + 0
 878              		.type	_ZL8spiMutex, %object
 879              		.size	_ZL8spiMutex, 96
 880              	_ZL8spiMutex:
 881 0000 00000000 		.space	96
 881      00000000 
 881      00000000 
 881      00000000 
 881      00000000 
 882              		.section	.rodata.AppMain.str1.4,"aMS",%progbits,1
 883              		.align	2
 884              	.LC3:
 885 0000 4D41494E 		.ascii	"MAIN\000"
 885      00
 886              		.section	.rodata.MainTask.str1.4,"aMS",%progbits,1
 887              		.align	2
 888              	.LC0:
 889 0000 4D616C6C 		.ascii	"Malloc\000"
 889      6F6300
 890 0007 00       		.space	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 17


 891              	.LC1:
 892 0008 53504900 		.ascii	"SPI\000"
 893              	.LC2:
 894 000c 49324300 		.ascii	"I2C\000"
 895              		.section	.rodata._ZN5Tasks11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 896              		.align	2
 897              	.LC4:
 898 0000 72656164 		.ascii	"ready\000"
 898      7900
 899 0006 0000     		.space	2
 900              	.LC5:
 901 0008 72756E6E 		.ascii	"running\000"
 901      696E6700 
 902              	.LC6:
 903 0010 626C6F63 		.ascii	"blocked\000"
 903      6B656400 
 904              	.LC7:
 905 0018 696E7661 		.ascii	"invalid\000"
 905      6C696400 
 906              	.LC8:
 907 0020 73757370 		.ascii	"suspended\000"
 907      656E6465 
 907      6400
 908 002a 0000     		.space	2
 909              	.LC9:
 910 002c 3D3D3D20 		.ascii	"=== RTOS ===\012\000"
 910      52544F53 
 910      203D3D3D 
 910      0A00
 911 003a 0000     		.space	2
 912              	.LC10:
 913 003c 53746174 		.ascii	"Static ram: %d\012\000"
 913      69632072 
 913      616D3A20 
 913      25640A00 
 914              	.LC11:
 915 004c 44796E61 		.ascii	"Dynamic ram: %d of which %d recycled\012\000"
 915      6D696320 
 915      72616D3A 
 915      20256420 
 915      6F662077 
 916 0072 0000     		.space	2
 917              	.LC12:
 918 0074 45786365 		.ascii	"Exception stack ram used: %lu\012\000"
 918      7074696F 
 918      6E207374 
 918      61636B20 
 918      72616D20 
 919 0093 00       		.space	1
 920              	.LC13:
 921 0094 4E657665 		.ascii	"Never used ram: %lu\012\000"
 921      72207573 
 921      65642072 
 921      616D3A20 
 921      256C750A 
 922 00a9 000000   		.space	3
 923              	.LC14:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccSwCKTy.s 			page 18


 924 00ac 5461736B 		.ascii	"Tasks:\000"
 924      733A00
 925 00b3 00       		.space	1
 926              	.LC15:
 927 00b4 20257328 		.ascii	" %s(%s,%u)\000"
 927      25732C25 
 927      752900
 928 00bf 00       		.space	1
 929              	.LC16:
 930 00c0 0A4F776E 		.ascii	"\012Owned mutexes:\000"
 930      6564206D 
 930      75746578 
 930      65733A00 
 931              	.LC17:
 932 00d0 20257328 		.ascii	" %s(%s)\000"
 932      25732900 
 933              	.LC18:
 934 00d8 0A00     		.ascii	"\012\000"
 935              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
