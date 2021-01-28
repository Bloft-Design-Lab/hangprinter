ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 1


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
  13              		.file	"OutputMemory.cpp"
  14              		.text
  15              		.section	.text._ZN12OutputBuffer6AppendEPS_,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN12OutputBuffer6AppendEPS_
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN12OutputBuffer6AppendEPS_, %function
  24              	_ZN12OutputBuffer6AppendEPS_:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 79B1     		cbz	r1, .L1
  29 0002 4368     		ldr	r3, [r0, #4]
  30 0004 1960     		str	r1, [r3]
  31 0006 4A68     		ldr	r2, [r1, #4]
  32 0008 4260     		str	r2, [r0, #4]
  33 000a 91F81531 		ldrb	r3, [r1, #277]	@ zero_extendqisi2
  34 000e 4BB9     		cbnz	r3, .L12
  35              	.L3:
  36 0010 0368     		ldr	r3, [r0]
  37 0012 9942     		cmp	r1, r3
  38 0014 01D1     		bne	.L4
  39 0016 04E0     		b	.L1
  40              	.L13:
  41 0018 4268     		ldr	r2, [r0, #4]
  42              	.L4:
  43 001a 5A60     		str	r2, [r3, #4]
  44 001c 1B68     		ldr	r3, [r3]
  45 001e 9942     		cmp	r1, r3
  46 0020 FAD1     		bne	.L13
  47              	.L1:
  48 0022 7047     		bx	lr
  49              	.L12:
  50 0024 0123     		movs	r3, #1
  51 0026 80F81531 		strb	r3, [r0, #277]
  52 002a F1E7     		b	.L3
  53              		.size	_ZN12OutputBuffer6AppendEPS_, .-_ZN12OutputBuffer6AppendEPS_
  54              		.section	.text._ZN12OutputBuffer18IncreaseReferencesEj,"ax",%progbits
  55              		.align	1
  56              		.p2align 2,,3
  57              		.global	_ZN12OutputBuffer18IncreaseReferencesEj
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 2


  58              		.syntax unified
  59              		.thumb
  60              		.thumb_func
  61              		.fpu fpv4-sp-d16
  62              		.type	_ZN12OutputBuffer18IncreaseReferencesEj, %function
  63              	_ZN12OutputBuffer18IncreaseReferencesEj:
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66 0000 01B9     		cbnz	r1, .L21
  67 0002 7047     		bx	lr
  68              	.L21:
  69 0004 38B5     		push	{r3, r4, r5, lr}
  70 0006 0446     		mov	r4, r0
  71 0008 0D46     		mov	r5, r1
  72 000a FFF7FEFF 		bl	vTaskSuspendAll
  73 000e 0122     		movs	r2, #1
  74              	.L16:
  75 0010 D4F81831 		ldr	r3, [r4, #280]
  76 0014 84F81421 		strb	r2, [r4, #276]
  77 0018 2B44     		add	r3, r3, r5
  78 001a C4F81831 		str	r3, [r4, #280]
  79 001e 2468     		ldr	r4, [r4]
  80 0020 002C     		cmp	r4, #0
  81 0022 F5D1     		bne	.L16
  82 0024 BDE83840 		pop	{r3, r4, r5, lr}
  83 0028 FFF7FEBF 		b	xTaskResumeAll
  84              		.size	_ZN12OutputBuffer18IncreaseReferencesEj, .-_ZN12OutputBuffer18IncreaseReferencesEj
  85              		.section	.text._ZNK12OutputBuffer6LengthEv,"ax",%progbits
  86              		.align	1
  87              		.p2align 2,,3
  88              		.global	_ZNK12OutputBuffer6LengthEv
  89              		.syntax unified
  90              		.thumb
  91              		.thumb_func
  92              		.fpu fpv4-sp-d16
  93              		.type	_ZNK12OutputBuffer6LengthEv, %function
  94              	_ZNK12OutputBuffer6LengthEv:
  95              		@ args = 0, pretend = 0, frame = 0
  96              		@ frame_needed = 0, uses_anonymous_args = 0
  97              		@ link register save eliminated.
  98 0000 0346     		mov	r3, r0
  99 0002 0020     		movs	r0, #0
 100              	.L23:
 101 0004 D3F80C21 		ldr	r2, [r3, #268]
 102 0008 1B68     		ldr	r3, [r3]
 103 000a 1044     		add	r0, r0, r2
 104 000c 002B     		cmp	r3, #0
 105 000e F9D1     		bne	.L23
 106 0010 7047     		bx	lr
 107              		.size	_ZNK12OutputBuffer6LengthEv, .-_ZNK12OutputBuffer6LengthEv
 108 0012 00BF     		.section	.text._ZN12OutputBufferixEj,"ax",%progbits
 109              		.align	1
 110              		.p2align 2,,3
 111              		.global	_ZN12OutputBufferixEj
 112              		.syntax unified
 113              		.thumb
 114              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 3


 115              		.fpu fpv4-sp-d16
 116              		.type	_ZN12OutputBufferixEj, %function
 117              	_ZN12OutputBufferixEj:
 118              		@ args = 0, pretend = 0, frame = 0
 119              		@ frame_needed = 0, uses_anonymous_args = 0
 120              		@ link register save eliminated.
 121 0000 01E0     		b	.L29
 122              	.L27:
 123 0002 0068     		ldr	r0, [r0]
 124 0004 C91A     		subs	r1, r1, r3
 125              	.L29:
 126 0006 D0F80C31 		ldr	r3, [r0, #268]
 127 000a 9942     		cmp	r1, r3
 128 000c F9D8     		bhi	.L27
 129 000e 0C31     		adds	r1, r1, #12
 130 0010 0844     		add	r0, r0, r1
 131 0012 7047     		bx	lr
 132              		.size	_ZN12OutputBufferixEj, .-_ZN12OutputBufferixEj
 133              		.section	.text._ZNK12OutputBufferixEj,"ax",%progbits
 134              		.align	1
 135              		.p2align 2,,3
 136              		.global	_ZNK12OutputBufferixEj
 137              		.syntax unified
 138              		.thumb
 139              		.thumb_func
 140              		.fpu fpv4-sp-d16
 141              		.type	_ZNK12OutputBufferixEj, %function
 142              	_ZNK12OutputBufferixEj:
 143              		@ args = 0, pretend = 0, frame = 0
 144              		@ frame_needed = 0, uses_anonymous_args = 0
 145              		@ link register save eliminated.
 146 0000 01E0     		b	.L34
 147              	.L32:
 148 0002 0068     		ldr	r0, [r0]
 149 0004 C91A     		subs	r1, r1, r3
 150              	.L34:
 151 0006 D0F80C31 		ldr	r3, [r0, #268]
 152 000a 9942     		cmp	r1, r3
 153 000c F9D8     		bhi	.L32
 154 000e 0844     		add	r0, r0, r1
 155 0010 007B     		ldrb	r0, [r0, #12]	@ zero_extendqisi2
 156 0012 7047     		bx	lr
 157              		.size	_ZNK12OutputBufferixEj, .-_ZNK12OutputBufferixEj
 158              		.section	.text._ZN12OutputBuffer4ReadEj,"ax",%progbits
 159              		.align	1
 160              		.p2align 2,,3
 161              		.global	_ZN12OutputBuffer4ReadEj
 162              		.syntax unified
 163              		.thumb
 164              		.thumb_func
 165              		.fpu fpv4-sp-d16
 166              		.type	_ZN12OutputBuffer4ReadEj, %function
 167              	_ZN12OutputBuffer4ReadEj:
 168              		@ args = 0, pretend = 0, frame = 0
 169              		@ frame_needed = 0, uses_anonymous_args = 0
 170              		@ link register save eliminated.
 171 0000 D0F81031 		ldr	r3, [r0, #272]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 4


 172 0004 00F10C02 		add	r2, r0, #12
 173 0008 1944     		add	r1, r1, r3
 174 000a C0F81011 		str	r1, [r0, #272]
 175 000e D018     		adds	r0, r2, r3
 176 0010 7047     		bx	lr
 177              		.size	_ZN12OutputBuffer4ReadEj, .-_ZN12OutputBuffer4ReadEj
 178 0012 00BF     		.section	.text._ZNK12OutputBuffer11WriteToFileER8FileData,"ax",%progbits
 179              		.align	1
 180              		.p2align 2,,3
 181              		.global	_ZNK12OutputBuffer11WriteToFileER8FileData
 182              		.syntax unified
 183              		.thumb
 184              		.thumb_func
 185              		.fpu fpv4-sp-d16
 186              		.type	_ZNK12OutputBuffer11WriteToFileER8FileData, %function
 187              	_ZNK12OutputBuffer11WriteToFileER8FileData:
 188              		@ args = 0, pretend = 0, frame = 0
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 190 0000 38B5     		push	{r3, r4, r5, lr}
 191 0002 0446     		mov	r4, r0
 192 0004 0D46     		mov	r5, r1
 193 0006 0020     		movs	r0, #0
 194 0008 01E0     		b	.L39
 195              	.L37:
 196 000a 2468     		ldr	r4, [r4]
 197 000c ACB1     		cbz	r4, .L48
 198              	.L39:
 199 000e D4F80C21 		ldr	r2, [r4, #268]
 200 0012 002A     		cmp	r2, #0
 201 0014 F9D0     		beq	.L37
 202 0016 04F10C01 		add	r1, r4, #12
 203 001a 2868     		ldr	r0, [r5]
 204 001c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 205 0020 60B1     		cbz	r0, .L38
 206 0022 D4F80C31 		ldr	r3, [r4, #268]
 207 0026 2344     		add	r3, r3, r4
 208 0028 2468     		ldr	r4, [r4]
 209 002a D87A     		ldrb	r0, [r3, #11]	@ zero_extendqisi2
 210 002c A0F10A00 		sub	r0, #10
 211 0030 B0FA80F0 		clz	r0, r0
 212 0034 4009     		lsrs	r0, r0, #5
 213 0036 002C     		cmp	r4, #0
 214 0038 E9D1     		bne	.L39
 215              	.L48:
 216 003a 00B1     		cbz	r0, .L49
 217              	.L38:
 218 003c 38BD     		pop	{r3, r4, r5, pc}
 219              	.L49:
 220 003e 2868     		ldr	r0, [r5]
 221 0040 0A21     		movs	r1, #10
 222 0042 BDE83840 		pop	{r3, r4, r5, lr}
 223 0046 FFF7FEBF 		b	_ZN9FileStore5WriteEc
 224              		.size	_ZNK12OutputBuffer11WriteToFileER8FileData, .-_ZNK12OutputBuffer11WriteToFileER8FileData
 225 004a 00BF     		.section	.text._ZN12OutputBuffer4InitEv,"ax",%progbits
 226              		.align	1
 227              		.p2align 2,,3
 228              		.global	_ZN12OutputBuffer4InitEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 5


 229              		.syntax unified
 230              		.thumb
 231              		.thumb_func
 232              		.fpu fpv4-sp-d16
 233              		.type	_ZN12OutputBuffer4InitEv, %function
 234              	_ZN12OutputBuffer4InitEv:
 235              		@ args = 0, pretend = 0, frame = 0
 236              		@ frame_needed = 0, uses_anonymous_args = 0
 237 0000 70B5     		push	{r4, r5, r6, lr}
 238 0002 074D     		ldr	r5, .L54
 239 0004 0023     		movs	r3, #0
 240 0006 2B60     		str	r3, [r5]
 241 0008 1424     		movs	r4, #20
 242              	.L51:
 243 000a 4FF48E70 		mov	r0, #284
 244 000e 2E68     		ldr	r6, [r5]
 245 0010 FFF7FEFF 		bl	_Znwj
 246 0014 013C     		subs	r4, r4, #1
 247 0016 2860     		str	r0, [r5]
 248 0018 0660     		str	r6, [r0]
 249 001a F6D1     		bne	.L51
 250 001c 70BD     		pop	{r4, r5, r6, pc}
 251              	.L55:
 252 001e 00BF     		.align	2
 253              	.L54:
 254 0020 00000000 		.word	.LANCHOR0
 255              		.size	_ZN12OutputBuffer4InitEv, .-_ZN12OutputBuffer4InitEv
 256              		.section	.text._ZN12OutputBuffer8AllocateERPS_,"ax",%progbits
 257              		.align	1
 258              		.p2align 2,,3
 259              		.global	_ZN12OutputBuffer8AllocateERPS_
 260              		.syntax unified
 261              		.thumb
 262              		.thumb_func
 263              		.fpu fpv4-sp-d16
 264              		.type	_ZN12OutputBuffer8AllocateERPS_, %function
 265              	_ZN12OutputBuffer8AllocateERPS_:
 266              		@ args = 0, pretend = 0, frame = 0
 267              		@ frame_needed = 0, uses_anonymous_args = 0
 268 0000 38B5     		push	{r3, r4, r5, lr}
 269 0002 0546     		mov	r5, r0
 270 0004 FFF7FEFF 		bl	vTaskSuspendAll
 271 0008 1B4A     		ldr	r2, .L61
 272 000a 1468     		ldr	r4, [r2]
 273 000c 2C60     		str	r4, [r5]
 274 000e 34B3     		cbz	r4, .L57
 275 0010 2168     		ldr	r1, [r4]
 276 0012 1A4B     		ldr	r3, .L61+4
 277 0014 1160     		str	r1, [r2]
 278 0016 1A68     		ldr	r2, [r3]
 279 0018 1949     		ldr	r1, .L61+8
 280 001a 0132     		adds	r2, r2, #1
 281 001c 1A60     		str	r2, [r3]
 282 001e 1868     		ldr	r0, [r3]
 283 0020 0A68     		ldr	r2, [r1]
 284 0022 9042     		cmp	r0, r2
 285 0024 88BF     		it	hi
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 6


 286 0026 1B68     		ldrhi	r3, [r3]
 287 0028 2A68     		ldr	r2, [r5]
 288 002a 88BF     		it	hi
 289 002c 0B60     		strhi	r3, [r1]
 290 002e 0023     		movs	r3, #0
 291 0030 1360     		str	r3, [r2]
 292 0032 2A68     		ldr	r2, [r5]
 293 0034 5260     		str	r2, [r2, #4]
 294 0036 2A68     		ldr	r2, [r5]
 295 0038 C2F81031 		str	r3, [r2, #272]
 296 003c 2A68     		ldr	r2, [r5]
 297 003e C2F80C31 		str	r3, [r2, #268]
 298 0042 2A68     		ldr	r2, [r5]
 299 0044 0124     		movs	r4, #1
 300 0046 C2F81841 		str	r4, [r2, #280]
 301 004a 2A68     		ldr	r2, [r5]
 302 004c 82F81431 		strb	r3, [r2, #276]
 303 0050 2A68     		ldr	r2, [r5]
 304 0052 82F81531 		strb	r3, [r2, #277]
 305 0056 FFF7FEFF 		bl	xTaskResumeAll
 306 005a 2046     		mov	r0, r4
 307 005c 38BD     		pop	{r3, r4, r5, pc}
 308              	.L57:
 309 005e FFF7FEFF 		bl	xTaskResumeAll
 310 0062 084B     		ldr	r3, .L61+12
 311 0064 5A68     		ldr	r2, [r3, #4]	@ unaligned
 312 0066 D2F8FC30 		ldr	r3, [r2, #252]
 313 006a 43F00403 		orr	r3, r3, #4
 314 006e C2F8FC30 		str	r3, [r2, #252]
 315 0072 2046     		mov	r0, r4
 316 0074 38BD     		pop	{r3, r4, r5, pc}
 317              	.L62:
 318 0076 00BF     		.align	2
 319              	.L61:
 320 0078 00000000 		.word	.LANCHOR0
 321 007c 00000000 		.word	.LANCHOR1
 322 0080 00000000 		.word	.LANCHOR2
 323 0084 00000000 		.word	reprap
 324              		.size	_ZN12OutputBuffer8AllocateERPS_, .-_ZN12OutputBuffer8AllocateERPS_
 325              		.section	.text._ZN12OutputBuffer3catEPKcj,"ax",%progbits
 326              		.align	1
 327              		.p2align 2,,3
 328              		.global	_ZN12OutputBuffer3catEPKcj
 329              		.syntax unified
 330              		.thumb
 331              		.thumb_func
 332              		.fpu fpv4-sp-d16
 333              		.type	_ZN12OutputBuffer3catEPKcj, %function
 334              	_ZN12OutputBuffer3catEPKcj:
 335              		@ args = 0, pretend = 0, frame = 8
 336              		@ frame_needed = 0, uses_anonymous_args = 0
 337 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 338 0004 82B0     		sub	sp, sp, #8
 339 0006 002A     		cmp	r2, #0
 340 0008 3ED0     		beq	.L71
 341 000a 1646     		mov	r6, r2
 342 000c 0F46     		mov	r7, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 7


 343 000e 8046     		mov	r8, r0
 344 0010 0025     		movs	r5, #0
 345 0012 15E0     		b	.L70
 346              	.L65:
 347 0014 741B     		subs	r4, r6, r5
 348 0016 C0F58072 		rsb	r2, r0, #256
 349 001a 9442     		cmp	r4, r2
 350 001c 28BF     		it	cs
 351 001e 1446     		movcs	r4, r2
 352 0020 0C33     		adds	r3, r3, #12
 353 0022 2246     		mov	r2, r4
 354 0024 1844     		add	r0, r0, r3
 355 0026 7919     		adds	r1, r7, r5
 356 0028 FFF7FEFF 		bl	memcpy
 357 002c D8F80420 		ldr	r2, [r8, #4]
 358 0030 D2F80C31 		ldr	r3, [r2, #268]
 359 0034 2544     		add	r5, r5, r4
 360 0036 AE42     		cmp	r6, r5
 361 0038 1C44     		add	r4, r4, r3
 362 003a C2F80C41 		str	r4, [r2, #268]
 363 003e 24D9     		bls	.L63
 364              	.L70:
 365 0040 D8F80430 		ldr	r3, [r8, #4]
 366 0044 D3F80C01 		ldr	r0, [r3, #268]
 367 0048 B0F5807F 		cmp	r0, #256
 368 004c E2D1     		bne	.L65
 369 004e 01A8     		add	r0, sp, #4
 370 0050 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 371 0054 E8B1     		cbz	r0, .L74
 372 0056 019B     		ldr	r3, [sp, #4]
 373 0058 D8F81821 		ldr	r2, [r8, #280]
 374 005c C3F81821 		str	r2, [r3, #280]
 375 0060 D8F80420 		ldr	r2, [r8, #4]
 376 0064 1360     		str	r3, [r2]
 377 0066 0199     		ldr	r1, [sp, #4]
 378 0068 D8F80020 		ldr	r2, [r8]
 379 006c 4B68     		ldr	r3, [r1, #4]
 380 006e C8F80430 		str	r3, [r8, #4]
 381 0072 9142     		cmp	r1, r2
 382 0074 05D0     		beq	.L67
 383              	.L69:
 384 0076 5360     		str	r3, [r2, #4]
 385 0078 1268     		ldr	r2, [r2]
 386 007a D8F80430 		ldr	r3, [r8, #4]
 387 007e 9142     		cmp	r1, r2
 388 0080 F9D1     		bne	.L69
 389              	.L67:
 390 0082 D3F80C01 		ldr	r0, [r3, #268]
 391 0086 C5E7     		b	.L65
 392              	.L71:
 393 0088 1546     		mov	r5, r2
 394              	.L63:
 395 008a 2846     		mov	r0, r5
 396 008c 02B0     		add	sp, sp, #8
 397              		@ sp needed
 398 008e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 399              	.L74:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 8


 400 0092 0123     		movs	r3, #1
 401 0094 88F81531 		strb	r3, [r8, #277]
 402 0098 F7E7     		b	.L63
 403              		.size	_ZN12OutputBuffer3catEPKcj, .-_ZN12OutputBuffer3catEPKcj
 404 009a 00BF     		.section	.text._ZN12OutputBuffer3catEPKc,"ax",%progbits
 405              		.align	1
 406              		.p2align 2,,3
 407              		.global	_ZN12OutputBuffer3catEPKc
 408              		.syntax unified
 409              		.thumb
 410              		.thumb_func
 411              		.fpu fpv4-sp-d16
 412              		.type	_ZN12OutputBuffer3catEPKc, %function
 413              	_ZN12OutputBuffer3catEPKc:
 414              		@ args = 0, pretend = 0, frame = 0
 415              		@ frame_needed = 0, uses_anonymous_args = 0
 416 0000 38B5     		push	{r3, r4, r5, lr}
 417 0002 0546     		mov	r5, r0
 418 0004 0846     		mov	r0, r1
 419 0006 0C46     		mov	r4, r1
 420 0008 FFF7FEFF 		bl	strlen
 421 000c 2146     		mov	r1, r4
 422 000e 0246     		mov	r2, r0
 423 0010 2846     		mov	r0, r5
 424 0012 BDE83840 		pop	{r3, r4, r5, lr}
 425 0016 FFF7FEBF 		b	_ZN12OutputBuffer3catEPKcj
 426              		.size	_ZN12OutputBuffer3catEPKc, .-_ZN12OutputBuffer3catEPKc
 427 001a 00BF     		.section	.text._ZN12OutputBuffer7vprintfEPKcSt9__va_list,"ax",%progbits
 428              		.align	1
 429              		.p2align 2,,3
 430              		.global	_ZN12OutputBuffer7vprintfEPKcSt9__va_list
 431              		.syntax unified
 432              		.thumb
 433              		.thumb_func
 434              		.fpu fpv4-sp-d16
 435              		.type	_ZN12OutputBuffer7vprintfEPKcSt9__va_list, %function
 436              	_ZN12OutputBuffer7vprintfEPKcSt9__va_list:
 437              		@ args = 0, pretend = 0, frame = 1024
 438              		@ frame_needed = 0, uses_anonymous_args = 0
 439 0000 10B5     		push	{r4, lr}
 440 0002 ADF5806D 		sub	sp, sp, #1024
 441 0006 1346     		mov	r3, r2
 442 0008 0446     		mov	r4, r0
 443 000a 0A46     		mov	r2, r1
 444 000c 6846     		mov	r0, sp
 445 000e 4FF48061 		mov	r1, #1024
 446 0012 FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
 447 0016 6846     		mov	r0, sp
 448 0018 FFF7FEFF 		bl	strlen
 449 001c 6946     		mov	r1, sp
 450 001e 0246     		mov	r2, r0
 451 0020 2046     		mov	r0, r4
 452 0022 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKcj
 453 0026 0DF5806D 		add	sp, sp, #1024
 454              		@ sp needed
 455 002a 10BD     		pop	{r4, pc}
 456              		.size	_ZN12OutputBuffer7vprintfEPKcSt9__va_list, .-_ZN12OutputBuffer7vprintfEPKcSt9__va_list
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 9


 457              		.section	.text._ZN12OutputBuffer4catfEPKcz,"ax",%progbits
 458              		.align	1
 459              		.p2align 2,,3
 460              		.global	_ZN12OutputBuffer4catfEPKcz
 461              		.syntax unified
 462              		.thumb
 463              		.thumb_func
 464              		.fpu fpv4-sp-d16
 465              		.type	_ZN12OutputBuffer4catfEPKcz, %function
 466              	_ZN12OutputBuffer4catfEPKcz:
 467              		@ args = 4, pretend = 12, frame = 1032
 468              		@ frame_needed = 0, uses_anonymous_args = 1
 469 0000 0EB4     		push	{r1, r2, r3}
 470 0002 10B5     		push	{r4, lr}
 471 0004 ADF20C4D 		subw	sp, sp, #1036
 472 0008 0DF21443 		addw	r3, sp, #1044
 473 000c 0446     		mov	r4, r0
 474 000e 53F8042B 		ldr	r2, [r3], #4
 475 0012 0193     		str	r3, [sp, #4]
 476 0014 4FF48061 		mov	r1, #1024
 477 0018 02A8     		add	r0, sp, #8
 478 001a FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
 479 001e 0023     		movs	r3, #0
 480 0020 02A8     		add	r0, sp, #8
 481 0022 8DF80734 		strb	r3, [sp, #1031]
 482 0026 FFF7FEFF 		bl	strlen
 483 002a 02A9     		add	r1, sp, #8
 484 002c 0246     		mov	r2, r0
 485 002e 2046     		mov	r0, r4
 486 0030 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKcj
 487 0034 0DF20C4D 		addw	sp, sp, #1036
 488              		@ sp needed
 489 0038 BDE81040 		pop	{r4, lr}
 490 003c 03B0     		add	sp, sp, #12
 491 003e 7047     		bx	lr
 492              		.size	_ZN12OutputBuffer4catfEPKcz, .-_ZN12OutputBuffer4catfEPKcz
 493              		.section	.text._ZN12OutputBuffer3catER9StringRef,"ax",%progbits
 494              		.align	1
 495              		.p2align 2,,3
 496              		.global	_ZN12OutputBuffer3catER9StringRef
 497              		.syntax unified
 498              		.thumb
 499              		.thumb_func
 500              		.fpu fpv4-sp-d16
 501              		.type	_ZN12OutputBuffer3catER9StringRef, %function
 502              	_ZN12OutputBuffer3catER9StringRef:
 503              		@ args = 0, pretend = 0, frame = 0
 504              		@ frame_needed = 0, uses_anonymous_args = 0
 505 0000 38B5     		push	{r3, r4, r5, lr}
 506 0002 0446     		mov	r4, r0
 507 0004 0846     		mov	r0, r1
 508 0006 0D68     		ldr	r5, [r1]
 509 0008 FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 510 000c 2946     		mov	r1, r5
 511 000e 0246     		mov	r2, r0
 512 0010 2046     		mov	r0, r4
 513 0012 BDE83840 		pop	{r3, r4, r5, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 10


 514 0016 FFF7FEBF 		b	_ZN12OutputBuffer3catEPKcj
 515              		.size	_ZN12OutputBuffer3catER9StringRef, .-_ZN12OutputBuffer3catER9StringRef
 516 001a 00BF     		.section	.text._ZN12OutputBuffer12GetBytesLeftEPKS_,"ax",%progbits
 517              		.align	1
 518              		.p2align 2,,3
 519              		.global	_ZN12OutputBuffer12GetBytesLeftEPKS_
 520              		.syntax unified
 521              		.thumb
 522              		.thumb_func
 523              		.fpu fpv4-sp-d16
 524              		.type	_ZN12OutputBuffer12GetBytesLeftEPKS_, %function
 525              	_ZN12OutputBuffer12GetBytesLeftEPKS_:
 526              		@ args = 0, pretend = 0, frame = 0
 527              		@ frame_needed = 0, uses_anonymous_args = 0
 528              		@ link register save eliminated.
 529 0000 084B     		ldr	r3, .L85
 530 0002 4268     		ldr	r2, [r0, #4]
 531 0004 1B68     		ldr	r3, [r3]
 532 0006 D2F80C01 		ldr	r0, [r2, #268]
 533 000a C3F11402 		rsb	r2, r3, #20
 534 000e 032A     		cmp	r2, #3
 535 0010 C0F58070 		rsb	r0, r0, #256
 536 0014 04D9     		bls	.L83
 537 0016 C3F18073 		rsb	r3, r3, #16777216
 538 001a 1033     		adds	r3, r3, #16
 539 001c 00EB0320 		add	r0, r0, r3, lsl #8
 540              	.L83:
 541 0020 7047     		bx	lr
 542              	.L86:
 543 0022 00BF     		.align	2
 544              	.L85:
 545 0024 00000000 		.word	.LANCHOR1
 546              		.size	_ZN12OutputBuffer12GetBytesLeftEPKS_, .-_ZN12OutputBuffer12GetBytesLeftEPKS_
 547              		.section	.text._ZN12OutputBuffer7ReleaseEPS_,"ax",%progbits
 548              		.align	1
 549              		.p2align 2,,3
 550              		.global	_ZN12OutputBuffer7ReleaseEPS_
 551              		.syntax unified
 552              		.thumb
 553              		.thumb_func
 554              		.fpu fpv4-sp-d16
 555              		.type	_ZN12OutputBuffer7ReleaseEPS_, %function
 556              	_ZN12OutputBuffer7ReleaseEPS_:
 557              		@ args = 0, pretend = 0, frame = 0
 558              		@ frame_needed = 0, uses_anonymous_args = 0
 559 0000 38B5     		push	{r3, r4, r5, lr}
 560 0002 0446     		mov	r4, r0
 561 0004 FFF7FEFF 		bl	vTaskSuspendAll
 562 0008 D4F81831 		ldr	r3, [r4, #280]
 563 000c 2568     		ldr	r5, [r4]
 564 000e 012B     		cmp	r3, #1
 565 0010 0BD9     		bls	.L88
 566 0012 D4F81831 		ldr	r3, [r4, #280]
 567 0016 0022     		movs	r2, #0
 568 0018 013B     		subs	r3, r3, #1
 569 001a C4F81831 		str	r3, [r4, #280]
 570 001e C4F81021 		str	r2, [r4, #272]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 11


 571 0022 FFF7FEFF 		bl	xTaskResumeAll
 572 0026 2846     		mov	r0, r5
 573 0028 38BD     		pop	{r3, r4, r5, pc}
 574              	.L88:
 575 002a 064B     		ldr	r3, .L91
 576 002c 064A     		ldr	r2, .L91+4
 577 002e 1968     		ldr	r1, [r3]
 578 0030 2160     		str	r1, [r4]
 579 0032 1C60     		str	r4, [r3]
 580 0034 1368     		ldr	r3, [r2]
 581 0036 013B     		subs	r3, r3, #1
 582 0038 1360     		str	r3, [r2]
 583 003a FFF7FEFF 		bl	xTaskResumeAll
 584 003e 2846     		mov	r0, r5
 585 0040 38BD     		pop	{r3, r4, r5, pc}
 586              	.L92:
 587 0042 00BF     		.align	2
 588              	.L91:
 589 0044 00000000 		.word	.LANCHOR0
 590 0048 00000000 		.word	.LANCHOR1
 591              		.size	_ZN12OutputBuffer7ReleaseEPS_, .-_ZN12OutputBuffer7ReleaseEPS_
 592              		.section	.text._ZN12OutputBuffer8TruncateEPS_j,"ax",%progbits
 593              		.align	1
 594              		.p2align 2,,3
 595              		.global	_ZN12OutputBuffer8TruncateEPS_j
 596              		.syntax unified
 597              		.thumb
 598              		.thumb_func
 599              		.fpu fpv4-sp-d16
 600              		.type	_ZN12OutputBuffer8TruncateEPS_j, %function
 601              	_ZN12OutputBuffer8TruncateEPS_j:
 602              		@ args = 0, pretend = 0, frame = 0
 603              		@ frame_needed = 0, uses_anonymous_args = 0
 604 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 605 0002 0546     		mov	r5, r0
 606 0004 F8B1     		cbz	r0, .L102
 607 0006 0068     		ldr	r0, [r0]
 608 0008 E8B1     		cbz	r0, .L102
 609 000a 95F81461 		ldrb	r6, [r5, #276]	@ zero_extendqisi2
 610 000e 0F46     		mov	r7, r1
 611 0010 CEB9     		cbnz	r6, .L102
 612              	.L98:
 613 0012 2C46     		mov	r4, r5
 614 0014 01E0     		b	.L95
 615              	.L103:
 616 0016 0446     		mov	r4, r0
 617 0018 1846     		mov	r0, r3
 618              	.L95:
 619 001a 0368     		ldr	r3, [r0]
 620 001c 002B     		cmp	r3, #0
 621 001e FAD1     		bne	.L103
 622 0020 2360     		str	r3, [r4]
 623 0022 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 624 0026 AC42     		cmp	r4, r5
 625 0028 06F58076 		add	r6, r6, #256
 626 002c 0ED0     		beq	.L96
 627 002e BE42     		cmp	r6, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 12


 628 0030 2868     		ldr	r0, [r5]
 629 0032 EED3     		bcc	.L98
 630 0034 6C60     		str	r4, [r5, #4]
 631 0036 20B1     		cbz	r0, .L93
 632              	.L108:
 633 0038 0546     		mov	r5, r0
 634 003a 0068     		ldr	r0, [r0]
 635              	.L99:
 636 003c 6C60     		str	r4, [r5, #4]
 637 003e 0028     		cmp	r0, #0
 638 0040 FAD1     		bne	.L108
 639              	.L93:
 640 0042 3046     		mov	r0, r6
 641 0044 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 642              	.L102:
 643 0046 0026     		movs	r6, #0
 644 0048 3046     		mov	r0, r6
 645 004a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 646              	.L96:
 647 004c 2068     		ldr	r0, [r4]
 648 004e F5E7     		b	.L99
 649              		.size	_ZN12OutputBuffer8TruncateEPS_j, .-_ZN12OutputBuffer8TruncateEPS_j
 650              		.section	.text._ZN12OutputBuffer4copyEc,"ax",%progbits
 651              		.align	1
 652              		.p2align 2,,3
 653              		.global	_ZN12OutputBuffer4copyEc
 654              		.syntax unified
 655              		.thumb
 656              		.thumb_func
 657              		.fpu fpv4-sp-d16
 658              		.type	_ZN12OutputBuffer4copyEc, %function
 659              	_ZN12OutputBuffer4copyEc:
 660              		@ args = 0, pretend = 0, frame = 0
 661              		@ frame_needed = 0, uses_anonymous_args = 0
 662 0000 38B5     		push	{r3, r4, r5, lr}
 663 0002 0368     		ldr	r3, [r0]
 664 0004 0446     		mov	r4, r0
 665 0006 0D46     		mov	r5, r1
 666 0008 23B9     		cbnz	r3, .L121
 667 000a 07E0     		b	.L110
 668              	.L112:
 669 000c 2068     		ldr	r0, [r4]
 670 000e FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 671 0012 2060     		str	r0, [r4]
 672              	.L121:
 673 0014 2368     		ldr	r3, [r4]
 674 0016 002B     		cmp	r3, #0
 675 0018 F8D1     		bne	.L112
 676 001a 6460     		str	r4, [r4, #4]
 677              	.L110:
 678 001c 0120     		movs	r0, #1
 679 001e 2573     		strb	r5, [r4, #12]
 680 0020 C4F80C01 		str	r0, [r4, #268]
 681 0024 38BD     		pop	{r3, r4, r5, pc}
 682              		.size	_ZN12OutputBuffer4copyEc, .-_ZN12OutputBuffer4copyEc
 683 0026 00BF     		.section	.text._ZN12OutputBuffer3catEc.part.5,"ax",%progbits
 684              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 13


 685              		.p2align 2,,3
 686              		.syntax unified
 687              		.thumb
 688              		.thumb_func
 689              		.fpu fpv4-sp-d16
 690              		.type	_ZN12OutputBuffer3catEc.part.5, %function
 691              	_ZN12OutputBuffer3catEc.part.5:
 692              		@ args = 0, pretend = 0, frame = 8
 693              		@ frame_needed = 0, uses_anonymous_args = 0
 694 0000 30B5     		push	{r4, r5, lr}
 695 0002 83B0     		sub	sp, sp, #12
 696 0004 0446     		mov	r4, r0
 697 0006 01A8     		add	r0, sp, #4
 698 0008 0D46     		mov	r5, r1
 699 000a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 700 000e 20B9     		cbnz	r0, .L123
 701 0010 0123     		movs	r3, #1
 702 0012 84F81531 		strb	r3, [r4, #277]
 703 0016 03B0     		add	sp, sp, #12
 704              		@ sp needed
 705 0018 30BD     		pop	{r4, r5, pc}
 706              	.L123:
 707 001a 0198     		ldr	r0, [sp, #4]
 708 001c D4F81831 		ldr	r3, [r4, #280]
 709 0020 C0F81831 		str	r3, [r0, #280]
 710 0024 2946     		mov	r1, r5
 711 0026 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEc
 712 002a 6368     		ldr	r3, [r4, #4]
 713 002c 019A     		ldr	r2, [sp, #4]
 714 002e 1A60     		str	r2, [r3]
 715 0030 019B     		ldr	r3, [sp, #4]
 716 0032 9C42     		cmp	r4, r3
 717 0034 03D0     		beq	.L125
 718              	.L126:
 719 0036 6360     		str	r3, [r4, #4]
 720 0038 2468     		ldr	r4, [r4]
 721 003a 9C42     		cmp	r4, r3
 722 003c FBD1     		bne	.L126
 723              	.L125:
 724 003e 0120     		movs	r0, #1
 725 0040 03B0     		add	sp, sp, #12
 726              		@ sp needed
 727 0042 30BD     		pop	{r4, r5, pc}
 728              		.size	_ZN12OutputBuffer3catEc.part.5, .-_ZN12OutputBuffer3catEc.part.5
 729              		.section	.text._ZN12OutputBuffer3catEc,"ax",%progbits
 730              		.align	1
 731              		.p2align 2,,3
 732              		.global	_ZN12OutputBuffer3catEc
 733              		.syntax unified
 734              		.thumb
 735              		.thumb_func
 736              		.fpu fpv4-sp-d16
 737              		.type	_ZN12OutputBuffer3catEc, %function
 738              	_ZN12OutputBuffer3catEc:
 739              		@ args = 0, pretend = 0, frame = 0
 740              		@ frame_needed = 0, uses_anonymous_args = 0
 741              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 14


 742 0000 4268     		ldr	r2, [r0, #4]
 743 0002 D2F80C31 		ldr	r3, [r2, #268]
 744 0006 B3F5807F 		cmp	r3, #256
 745 000a 0AD0     		beq	.L133
 746 000c 10B4     		push	{r4}
 747 000e 0C46     		mov	r4, r1
 748 0010 D118     		adds	r1, r2, r3
 749 0012 0133     		adds	r3, r3, #1
 750 0014 C2F80C31 		str	r3, [r2, #268]
 751 0018 0C73     		strb	r4, [r1, #12]
 752 001a 0120     		movs	r0, #1
 753 001c 5DF8044B 		ldr	r4, [sp], #4
 754 0020 7047     		bx	lr
 755              	.L133:
 756 0022 FFF7FEBF 		b	_ZN12OutputBuffer3catEc.part.5
 757              		.size	_ZN12OutputBuffer3catEc, .-_ZN12OutputBuffer3catEc
 758 0026 00BF     		.section	.text._ZN12OutputBuffer12EncodeStringEPKcjbbb,"ax",%progbits
 759              		.align	1
 760              		.p2align 2,,3
 761              		.global	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 762              		.syntax unified
 763              		.thumb
 764              		.thumb_func
 765              		.fpu fpv4-sp-d16
 766              		.type	_ZN12OutputBuffer12EncodeStringEPKcjbbb, %function
 767              	_ZN12OutputBuffer12EncodeStringEPKcjbbb:
 768              		@ args = 8, pretend = 0, frame = 8
 769              		@ frame_needed = 0, uses_anonymous_args = 0
 770 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 771 0004 83B0     		sub	sp, sp, #12
 772 0006 8846     		mov	r8, r1
 773 0008 9DF830A0 		ldrb	r10, [sp, #48]	@ zero_extendqisi2
 774 000c 9DF83440 		ldrb	r4, [sp, #52]	@ zero_extendqisi2
 775 0010 0193     		str	r3, [sp, #4]
 776 0012 9146     		mov	r9, r2
 777 0014 0746     		mov	r7, r0
 778 0016 BAF1000F 		cmp	r10, #0
 779 001a 00F08680 		beq	.L160
 780 001e 4268     		ldr	r2, [r0, #4]
 781 0020 D2F80C31 		ldr	r3, [r2, #268]
 782 0024 B3F5807F 		cmp	r3, #256
 783 0028 00F09E80 		beq	.L188
 784 002c D118     		adds	r1, r2, r3
 785 002e 2220     		movs	r0, #34
 786 0030 0133     		adds	r3, r3, #1
 787 0032 C2F80C31 		str	r3, [r2, #268]
 788 0036 0125     		movs	r5, #1
 789 0038 0873     		strb	r0, [r1, #12]
 790              	.L135:
 791 003a 74B1     		cbz	r4, .L137
 792 003c 7A68     		ldr	r2, [r7, #4]
 793 003e D2F80C31 		ldr	r3, [r2, #268]
 794 0042 B3F5807F 		cmp	r3, #256
 795 0046 00F08980 		beq	.L189
 796 004a D118     		adds	r1, r2, r3
 797 004c 2A24     		movs	r4, #42
 798 004e 0133     		adds	r3, r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 15


 799 0050 0120     		movs	r0, #1
 800 0052 C2F80C31 		str	r3, [r2, #268]
 801 0056 0544     		add	r5, r5, r0
 802 0058 0C73     		strb	r4, [r1, #12]
 803              	.L137:
 804 005a B9F1000F 		cmp	r9, #0
 805 005e 4FD0     		beq	.L140
 806 0060 98F80040 		ldrb	r4, [r8]	@ zero_extendqisi2
 807 0064 08F10106 		add	r6, r8, #1
 808 0068 002C     		cmp	r4, #0
 809 006a 49D0     		beq	.L140
 810 006c 4FF05C0B 		mov	fp, #92
 811 0070 26E0     		b	.L141
 812              	.L191:
 813 0072 092C     		cmp	r4, #9
 814 0074 6AD0     		beq	.L161
 815 0076 0A2C     		cmp	r4, #10
 816 0078 30D1     		bne	.L143
 817 007a 6E24     		movs	r4, #110
 818              	.L146:
 819 007c B1F5807F 		cmp	r1, #256
 820 0080 5FD0     		beq	.L190
 821              	.L149:
 822 0082 02EB010C 		add	ip, r2, r1
 823 0086 0131     		adds	r1, r1, #1
 824 0088 C2F80C11 		str	r1, [r2, #268]
 825 008c 0120     		movs	r0, #1
 826 008e 8CF80CB0 		strb	fp, [ip, #12]
 827              	.L150:
 828 0092 7968     		ldr	r1, [r7, #4]
 829 0094 D1F80C21 		ldr	r2, [r1, #268]
 830 0098 B2F5807F 		cmp	r2, #256
 831 009c 0544     		add	r5, r5, r0
 832 009e 46D0     		beq	.L187
 833 00a0 01EB020C 		add	ip, r1, r2
 834 00a4 0132     		adds	r2, r2, #1
 835 00a6 C1F80C21 		str	r2, [r1, #268]
 836 00aa 0120     		movs	r0, #1
 837 00ac 8CF80C40 		strb	r4, [ip, #12]
 838              	.L155:
 839 00b0 16F8014B 		ldrb	r4, [r6], #1	@ zero_extendqisi2
 840 00b4 A6EB0802 		sub	r2, r6, r8
 841 00b8 9145     		cmp	r9, r2
 842 00ba 0544     		add	r5, r5, r0
 843 00bc 20D3     		bcc	.L140
 844              	.L156:
 845 00be FCB1     		cbz	r4, .L140
 846              	.L141:
 847 00c0 1F2C     		cmp	r4, #31
 848 00c2 01D8     		bhi	.L142
 849 00c4 019B     		ldr	r3, [sp, #4]
 850 00c6 DBB1     		cbz	r3, .L140
 851              	.L142:
 852 00c8 7A68     		ldr	r2, [r7, #4]
 853 00ca 0D2C     		cmp	r4, #13
 854 00cc D2F80C11 		ldr	r1, [r2, #268]
 855 00d0 32D0     		beq	.L144
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 16


 856 00d2 CED9     		bls	.L191
 857 00d4 222C     		cmp	r4, #34
 858 00d6 D1D0     		beq	.L146
 859 00d8 5C2C     		cmp	r4, #92
 860 00da CFD0     		beq	.L146
 861              	.L143:
 862 00dc B1F5807F 		cmp	r1, #256
 863 00e0 25D0     		beq	.L187
 864 00e2 02EB010C 		add	ip, r2, r1
 865 00e6 0131     		adds	r1, r1, #1
 866 00e8 C2F80C11 		str	r1, [r2, #268]
 867 00ec 8CF80C40 		strb	r4, [ip, #12]
 868 00f0 16F8014B 		ldrb	r4, [r6], #1	@ zero_extendqisi2
 869 00f4 A6EB0802 		sub	r2, r6, r8
 870 00f8 0120     		movs	r0, #1
 871 00fa 9145     		cmp	r9, r2
 872 00fc 0544     		add	r5, r5, r0
 873 00fe DED2     		bcs	.L156
 874              	.L140:
 875 0100 BAF1000F 		cmp	r10, #0
 876 0104 0DD0     		beq	.L134
 877 0106 7A68     		ldr	r2, [r7, #4]
 878 0108 D2F80C31 		ldr	r3, [r2, #268]
 879 010c B3F5807F 		cmp	r3, #256
 880 0110 1ED0     		beq	.L192
 881 0112 D118     		adds	r1, r2, r3
 882 0114 2224     		movs	r4, #34
 883 0116 0133     		adds	r3, r3, #1
 884 0118 0120     		movs	r0, #1
 885 011a C2F80C31 		str	r3, [r2, #268]
 886 011e 0544     		add	r5, r5, r0
 887 0120 0C73     		strb	r4, [r1, #12]
 888              	.L134:
 889 0122 2846     		mov	r0, r5
 890 0124 03B0     		add	sp, sp, #12
 891              		@ sp needed
 892 0126 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 893              	.L160:
 894 012a 5546     		mov	r5, r10
 895 012c 85E7     		b	.L135
 896              	.L187:
 897 012e 2146     		mov	r1, r4
 898 0130 3846     		mov	r0, r7
 899 0132 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.5
 900 0136 BBE7     		b	.L155
 901              	.L144:
 902 0138 B1F5807F 		cmp	r1, #256
 903 013c 4FF07204 		mov	r4, #114
 904 0140 9FD1     		bne	.L149
 905              	.L190:
 906 0142 5C21     		movs	r1, #92
 907 0144 3846     		mov	r0, r7
 908 0146 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.5
 909 014a A2E7     		b	.L150
 910              	.L161:
 911 014c 7424     		movs	r4, #116
 912 014e 95E7     		b	.L146
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 17


 913              	.L192:
 914 0150 3846     		mov	r0, r7
 915 0152 2221     		movs	r1, #34
 916 0154 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.5
 917 0158 0544     		add	r5, r5, r0
 918 015a E2E7     		b	.L134
 919              	.L189:
 920 015c 2A21     		movs	r1, #42
 921 015e 3846     		mov	r0, r7
 922 0160 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.5
 923 0164 0544     		add	r5, r5, r0
 924 0166 78E7     		b	.L137
 925              	.L188:
 926 0168 2221     		movs	r1, #34
 927 016a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.5
 928 016e 0546     		mov	r5, r0
 929 0170 63E7     		b	.L135
 930              		.size	_ZN12OutputBuffer12EncodeStringEPKcjbbb, .-_ZN12OutputBuffer12EncodeStringEPKcjbbb
 931 0172 00BF     		.section	.text._ZN12OutputBuffer12EncodeStringERK9StringRefbb,"ax",%progbits
 932              		.align	1
 933              		.p2align 2,,3
 934              		.global	_ZN12OutputBuffer12EncodeStringERK9StringRefbb
 935              		.syntax unified
 936              		.thumb
 937              		.thumb_func
 938              		.fpu fpv4-sp-d16
 939              		.type	_ZN12OutputBuffer12EncodeStringERK9StringRefbb, %function
 940              	_ZN12OutputBuffer12EncodeStringERK9StringRefbb:
 941              		@ args = 0, pretend = 0, frame = 0
 942              		@ frame_needed = 0, uses_anonymous_args = 0
 943 0000 10B5     		push	{r4, lr}
 944 0002 D1E90012 		ldrd	r1, r2, [r1]
 945 0006 82B0     		sub	sp, sp, #8
 946 0008 0024     		movs	r4, #0
 947 000a 0194     		str	r4, [sp, #4]
 948 000c 0124     		movs	r4, #1
 949 000e 013A     		subs	r2, r2, #1
 950 0010 0094     		str	r4, [sp]
 951 0012 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 952 0016 02B0     		add	sp, sp, #8
 953              		@ sp needed
 954 0018 10BD     		pop	{r4, pc}
 955              		.size	_ZN12OutputBuffer12EncodeStringERK9StringRefbb, .-_ZN12OutputBuffer12EncodeStringERK9StringR
 956 001a 00BF     		.section	.text._ZN12OutputBuffer11EncodeReplyEPS_b,"ax",%progbits
 957              		.align	1
 958              		.p2align 2,,3
 959              		.global	_ZN12OutputBuffer11EncodeReplyEPS_b
 960              		.syntax unified
 961              		.thumb
 962              		.thumb_func
 963              		.fpu fpv4-sp-d16
 964              		.type	_ZN12OutputBuffer11EncodeReplyEPS_b, %function
 965              	_ZN12OutputBuffer11EncodeReplyEPS_b:
 966              		@ args = 0, pretend = 0, frame = 0
 967              		@ frame_needed = 0, uses_anonymous_args = 0
 968 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 969 0004 0C46     		mov	r4, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 18


 970 0006 4168     		ldr	r1, [r0, #4]
 971 0008 D1F80C31 		ldr	r3, [r1, #268]
 972 000c B3F5807F 		cmp	r3, #256
 973 0010 82B0     		sub	sp, sp, #8
 974 0012 0746     		mov	r7, r0
 975 0014 9046     		mov	r8, r2
 976 0016 2AD0     		beq	.L207
 977 0018 CA18     		adds	r2, r1, r3
 978 001a 2220     		movs	r0, #34
 979 001c 0133     		adds	r3, r3, #1
 980 001e C1F80C31 		str	r3, [r1, #268]
 981 0022 0125     		movs	r5, #1
 982 0024 1073     		strb	r0, [r2, #12]
 983              	.L199:
 984 0026 8CB1     		cbz	r4, .L197
 985 0028 0026     		movs	r6, #0
 986              	.L198:
 987 002a D4F80C21 		ldr	r2, [r4, #268]
 988 002e 04F10C01 		add	r1, r4, #12
 989 0032 4346     		mov	r3, r8
 990 0034 CDE90066 		strd	r6, r6, [sp]
 991 0038 3846     		mov	r0, r7
 992 003a FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 993 003e 0544     		add	r5, r5, r0
 994 0040 2046     		mov	r0, r4
 995 0042 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 996 0046 0446     		mov	r4, r0
 997 0048 0028     		cmp	r0, #0
 998 004a EED1     		bne	.L198
 999              	.L197:
 1000 004c 7A68     		ldr	r2, [r7, #4]
 1001 004e D2F80C31 		ldr	r3, [r2, #268]
 1002 0052 B3F5807F 		cmp	r3, #256
 1003 0056 0FD0     		beq	.L208
 1004 0058 D118     		adds	r1, r2, r3
 1005 005a 0120     		movs	r0, #1
 1006 005c 0133     		adds	r3, r3, #1
 1007 005e 2224     		movs	r4, #34
 1008 0060 2844     		add	r0, r0, r5
 1009 0062 C2F80C31 		str	r3, [r2, #268]
 1010 0066 0C73     		strb	r4, [r1, #12]
 1011 0068 02B0     		add	sp, sp, #8
 1012              		@ sp needed
 1013 006a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1014              	.L207:
 1015 006e 2221     		movs	r1, #34
 1016 0070 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.5
 1017 0074 0546     		mov	r5, r0
 1018 0076 D6E7     		b	.L199
 1019              	.L208:
 1020 0078 3846     		mov	r0, r7
 1021 007a 2221     		movs	r1, #34
 1022 007c FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.5
 1023 0080 2844     		add	r0, r0, r5
 1024 0082 02B0     		add	sp, sp, #8
 1025              		@ sp needed
 1026 0084 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 19


 1027              		.size	_ZN12OutputBuffer11EncodeReplyEPS_b, .-_ZN12OutputBuffer11EncodeReplyEPS_b
 1028              		.section	.text._ZN12OutputBuffer4copyEPKcj,"ax",%progbits
 1029              		.align	1
 1030              		.p2align 2,,3
 1031              		.global	_ZN12OutputBuffer4copyEPKcj
 1032              		.syntax unified
 1033              		.thumb
 1034              		.thumb_func
 1035              		.fpu fpv4-sp-d16
 1036              		.type	_ZN12OutputBuffer4copyEPKcj, %function
 1037              	_ZN12OutputBuffer4copyEPKcj:
 1038              		@ args = 0, pretend = 0, frame = 0
 1039              		@ frame_needed = 0, uses_anonymous_args = 0
 1040 0000 70B5     		push	{r4, r5, r6, lr}
 1041 0002 0368     		ldr	r3, [r0]
 1042 0004 0446     		mov	r4, r0
 1043 0006 0D46     		mov	r5, r1
 1044 0008 1646     		mov	r6, r2
 1045 000a 23B9     		cbnz	r3, .L221
 1046 000c 07E0     		b	.L210
 1047              	.L212:
 1048 000e 2068     		ldr	r0, [r4]
 1049 0010 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1050 0014 2060     		str	r0, [r4]
 1051              	.L221:
 1052 0016 2368     		ldr	r3, [r4]
 1053 0018 002B     		cmp	r3, #0
 1054 001a F8D1     		bne	.L212
 1055 001c 6460     		str	r4, [r4, #4]
 1056              	.L210:
 1057 001e 0023     		movs	r3, #0
 1058 0020 C4F80C31 		str	r3, [r4, #268]
 1059 0024 3246     		mov	r2, r6
 1060 0026 2946     		mov	r1, r5
 1061 0028 2046     		mov	r0, r4
 1062 002a BDE87040 		pop	{r4, r5, r6, lr}
 1063 002e FFF7FEBF 		b	_ZN12OutputBuffer3catEPKcj
 1064              		.size	_ZN12OutputBuffer4copyEPKcj, .-_ZN12OutputBuffer4copyEPKcj
 1065 0032 00BF     		.section	.text._ZN12OutputBuffer4copyEPKc,"ax",%progbits
 1066              		.align	1
 1067              		.p2align 2,,3
 1068              		.global	_ZN12OutputBuffer4copyEPKc
 1069              		.syntax unified
 1070              		.thumb
 1071              		.thumb_func
 1072              		.fpu fpv4-sp-d16
 1073              		.type	_ZN12OutputBuffer4copyEPKc, %function
 1074              	_ZN12OutputBuffer4copyEPKc:
 1075              		@ args = 0, pretend = 0, frame = 0
 1076              		@ frame_needed = 0, uses_anonymous_args = 0
 1077 0000 38B5     		push	{r3, r4, r5, lr}
 1078 0002 0546     		mov	r5, r0
 1079 0004 0846     		mov	r0, r1
 1080 0006 0C46     		mov	r4, r1
 1081 0008 FFF7FEFF 		bl	strlen
 1082 000c 2146     		mov	r1, r4
 1083 000e 0246     		mov	r2, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 20


 1084 0010 2846     		mov	r0, r5
 1085 0012 BDE83840 		pop	{r3, r4, r5, lr}
 1086 0016 FFF7FEBF 		b	_ZN12OutputBuffer4copyEPKcj
 1087              		.size	_ZN12OutputBuffer4copyEPKc, .-_ZN12OutputBuffer4copyEPKc
 1088 001a 00BF     		.section	.text._ZN12OutputBuffer6printfEPKcz,"ax",%progbits
 1089              		.align	1
 1090              		.p2align 2,,3
 1091              		.global	_ZN12OutputBuffer6printfEPKcz
 1092              		.syntax unified
 1093              		.thumb
 1094              		.thumb_func
 1095              		.fpu fpv4-sp-d16
 1096              		.type	_ZN12OutputBuffer6printfEPKcz, %function
 1097              	_ZN12OutputBuffer6printfEPKcz:
 1098              		@ args = 4, pretend = 12, frame = 1032
 1099              		@ frame_needed = 0, uses_anonymous_args = 1
 1100 0000 0EB4     		push	{r1, r2, r3}
 1101 0002 10B5     		push	{r4, lr}
 1102 0004 ADF20C4D 		subw	sp, sp, #1036
 1103 0008 0DF21443 		addw	r3, sp, #1044
 1104 000c 0446     		mov	r4, r0
 1105 000e 53F8042B 		ldr	r2, [r3], #4
 1106 0012 0193     		str	r3, [sp, #4]
 1107 0014 4FF48061 		mov	r1, #1024
 1108 0018 02A8     		add	r0, sp, #8
 1109 001a FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
 1110 001e 02A8     		add	r0, sp, #8
 1111 0020 FFF7FEFF 		bl	strlen
 1112 0024 02A9     		add	r1, sp, #8
 1113 0026 0246     		mov	r2, r0
 1114 0028 2046     		mov	r0, r4
 1115 002a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKcj
 1116 002e 0DF20C4D 		addw	sp, sp, #1036
 1117              		@ sp needed
 1118 0032 BDE81040 		pop	{r4, lr}
 1119 0036 03B0     		add	sp, sp, #12
 1120 0038 7047     		bx	lr
 1121              		.size	_ZN12OutputBuffer6printfEPKcz, .-_ZN12OutputBuffer6printfEPKcz
 1122 003a 00BF     		.section	.text._ZN12OutputBuffer10ReleaseAllERVPS_,"ax",%progbits
 1123              		.align	1
 1124              		.p2align 2,,3
 1125              		.global	_ZN12OutputBuffer10ReleaseAllERVPS_
 1126              		.syntax unified
 1127              		.thumb
 1128              		.thumb_func
 1129              		.fpu fpv4-sp-d16
 1130              		.type	_ZN12OutputBuffer10ReleaseAllERVPS_, %function
 1131              	_ZN12OutputBuffer10ReleaseAllERVPS_:
 1132              		@ args = 0, pretend = 0, frame = 0
 1133              		@ frame_needed = 0, uses_anonymous_args = 0
 1134 0000 0368     		ldr	r3, [r0]
 1135 0002 4BB1     		cbz	r3, .L234
 1136 0004 10B5     		push	{r4, lr}
 1137 0006 0446     		mov	r4, r0
 1138              	.L228:
 1139 0008 2068     		ldr	r0, [r4]
 1140 000a FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 21


 1141 000e 2060     		str	r0, [r4]
 1142 0010 2368     		ldr	r3, [r4]
 1143 0012 002B     		cmp	r3, #0
 1144 0014 F8D1     		bne	.L228
 1145 0016 10BD     		pop	{r4, pc}
 1146              	.L234:
 1147 0018 7047     		bx	lr
 1148              		.size	_ZN12OutputBuffer10ReleaseAllERVPS_, .-_ZN12OutputBuffer10ReleaseAllERVPS_
 1149 001a 00BF     		.section	.text._ZN12OutputBuffer11DiagnosticsE11MessageType,"ax",%progbits
 1150              		.align	1
 1151              		.p2align 2,,3
 1152              		.global	_ZN12OutputBuffer11DiagnosticsE11MessageType
 1153              		.syntax unified
 1154              		.thumb
 1155              		.thumb_func
 1156              		.fpu fpv4-sp-d16
 1157              		.type	_ZN12OutputBuffer11DiagnosticsE11MessageType, %function
 1158              	_ZN12OutputBuffer11DiagnosticsE11MessageType:
 1159              		@ args = 0, pretend = 0, frame = 0
 1160              		@ frame_needed = 0, uses_anonymous_args = 0
 1161 0000 10B5     		push	{r4, lr}
 1162 0002 0849     		ldr	r1, .L239
 1163 0004 084B     		ldr	r3, .L239+4
 1164 0006 094A     		ldr	r2, .L239+8
 1165 0008 4C68     		ldr	r4, [r1, #4]
 1166 000a 1B68     		ldr	r3, [r3]
 1167 000c 1268     		ldr	r2, [r2]
 1168 000e 82B0     		sub	sp, sp, #8
 1169 0010 0146     		mov	r1, r0
 1170 0012 0192     		str	r2, [sp, #4]
 1171 0014 1422     		movs	r2, #20
 1172 0016 0092     		str	r2, [sp]
 1173 0018 2046     		mov	r0, r4
 1174 001a 054A     		ldr	r2, .L239+12
 1175 001c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1176 0020 02B0     		add	sp, sp, #8
 1177              		@ sp needed
 1178 0022 10BD     		pop	{r4, pc}
 1179              	.L240:
 1180              		.align	2
 1181              	.L239:
 1182 0024 00000000 		.word	reprap
 1183 0028 00000000 		.word	.LANCHOR1
 1184 002c 00000000 		.word	.LANCHOR2
 1185 0030 00000000 		.word	.LC0
 1186              		.size	_ZN12OutputBuffer11DiagnosticsE11MessageType, .-_ZN12OutputBuffer11DiagnosticsE11MessageType
 1187              		.section	.text._ZNV11OutputStack4PushEP12OutputBuffer,"ax",%progbits
 1188              		.align	1
 1189              		.p2align 2,,3
 1190              		.global	_ZNV11OutputStack4PushEP12OutputBuffer
 1191              		.syntax unified
 1192              		.thumb
 1193              		.thumb_func
 1194              		.fpu fpv4-sp-d16
 1195              		.type	_ZNV11OutputStack4PushEP12OutputBuffer, %function
 1196              	_ZNV11OutputStack4PushEP12OutputBuffer:
 1197              		@ args = 0, pretend = 0, frame = 8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 22


 1198              		@ frame_needed = 0, uses_anonymous_args = 0
 1199 0000 30B5     		push	{r4, r5, lr}
 1200 0002 83B0     		sub	sp, sp, #12
 1201 0004 0191     		str	r1, [sp, #4]
 1202 0006 C9B1     		cbz	r1, .L241
 1203 0008 0546     		mov	r5, r0
 1204 000a 0C46     		mov	r4, r1
 1205 000c FFF7FEFF 		bl	vTaskSuspendAll
 1206 0010 2B68     		ldr	r3, [r5]
 1207 0012 032B     		cmp	r3, #3
 1208 0014 14D9     		bls	.L254
 1209 0016 FFF7FEFF 		bl	xTaskResumeAll
 1210 001a 019B     		ldr	r3, [sp, #4]
 1211 001c 33B1     		cbz	r3, .L244
 1212              	.L245:
 1213 001e 0198     		ldr	r0, [sp, #4]
 1214 0020 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1215 0024 0190     		str	r0, [sp, #4]
 1216 0026 019B     		ldr	r3, [sp, #4]
 1217 0028 002B     		cmp	r3, #0
 1218 002a F8D1     		bne	.L245
 1219              	.L244:
 1220 002c 0B4B     		ldr	r3, .L255
 1221 002e 5A68     		ldr	r2, [r3, #4]
 1222 0030 D2F8FC30 		ldr	r3, [r2, #252]
 1223 0034 43F00803 		orr	r3, r3, #8
 1224 0038 C2F8FC30 		str	r3, [r2, #252]
 1225              	.L241:
 1226 003c 03B0     		add	sp, sp, #12
 1227              		@ sp needed
 1228 003e 30BD     		pop	{r4, r5, pc}
 1229              	.L254:
 1230 0040 FFF7FEFF 		bl	millis
 1231 0044 A060     		str	r0, [r4, #8]
 1232 0046 2B68     		ldr	r3, [r5]
 1233 0048 05EB8302 		add	r2, r5, r3, lsl #2
 1234 004c 0133     		adds	r3, r3, #1
 1235 004e 2B60     		str	r3, [r5]
 1236 0050 5460     		str	r4, [r2, #4]
 1237 0052 FFF7FEFF 		bl	xTaskResumeAll
 1238 0056 03B0     		add	sp, sp, #12
 1239              		@ sp needed
 1240 0058 30BD     		pop	{r4, r5, pc}
 1241              	.L256:
 1242 005a 00BF     		.align	2
 1243              	.L255:
 1244 005c 00000000 		.word	reprap
 1245              		.size	_ZNV11OutputStack4PushEP12OutputBuffer, .-_ZNV11OutputStack4PushEP12OutputBuffer
 1246              		.section	.text._ZNV11OutputStack3PopEv,"ax",%progbits
 1247              		.align	1
 1248              		.p2align 2,,3
 1249              		.global	_ZNV11OutputStack3PopEv
 1250              		.syntax unified
 1251              		.thumb
 1252              		.thumb_func
 1253              		.fpu fpv4-sp-d16
 1254              		.type	_ZNV11OutputStack3PopEv, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 23


 1255              	_ZNV11OutputStack3PopEv:
 1256              		@ args = 0, pretend = 0, frame = 0
 1257              		@ frame_needed = 0, uses_anonymous_args = 0
 1258 0000 38B5     		push	{r3, r4, r5, lr}
 1259 0002 0446     		mov	r4, r0
 1260 0004 FFF7FEFF 		bl	vTaskSuspendAll
 1261 0008 2568     		ldr	r5, [r4]
 1262 000a 85B1     		cbz	r5, .L258
 1263 000c 6568     		ldr	r5, [r4, #4]
 1264 000e 2368     		ldr	r3, [r4]
 1265 0010 012B     		cmp	r3, #1
 1266 0012 09D9     		bls	.L259
 1267 0014 0123     		movs	r3, #1
 1268              	.L260:
 1269 0016 04EB8302 		add	r2, r4, r3, lsl #2
 1270 001a 5268     		ldr	r2, [r2, #4]
 1271 001c 44F82320 		str	r2, [r4, r3, lsl #2]
 1272 0020 2268     		ldr	r2, [r4]
 1273 0022 0133     		adds	r3, r3, #1
 1274 0024 9A42     		cmp	r2, r3
 1275 0026 F6D8     		bhi	.L260
 1276              	.L259:
 1277 0028 2368     		ldr	r3, [r4]
 1278 002a 013B     		subs	r3, r3, #1
 1279 002c 2360     		str	r3, [r4]
 1280              	.L258:
 1281 002e FFF7FEFF 		bl	xTaskResumeAll
 1282 0032 2846     		mov	r0, r5
 1283 0034 38BD     		pop	{r3, r4, r5, pc}
 1284              		.size	_ZNV11OutputStack3PopEv, .-_ZNV11OutputStack3PopEv
 1285 0036 00BF     		.section	.text._ZNVK11OutputStack12GetFirstItemEv,"ax",%progbits
 1286              		.align	1
 1287              		.p2align 2,,3
 1288              		.global	_ZNVK11OutputStack12GetFirstItemEv
 1289              		.syntax unified
 1290              		.thumb
 1291              		.thumb_func
 1292              		.fpu fpv4-sp-d16
 1293              		.type	_ZNVK11OutputStack12GetFirstItemEv, %function
 1294              	_ZNVK11OutputStack12GetFirstItemEv:
 1295              		@ args = 0, pretend = 0, frame = 0
 1296              		@ frame_needed = 0, uses_anonymous_args = 0
 1297              		@ link register save eliminated.
 1298 0000 0368     		ldr	r3, [r0]
 1299 0002 0BB1     		cbz	r3, .L266
 1300 0004 4068     		ldr	r0, [r0, #4]
 1301 0006 7047     		bx	lr
 1302              	.L266:
 1303 0008 1846     		mov	r0, r3
 1304 000a 7047     		bx	lr
 1305              		.size	_ZNVK11OutputStack12GetFirstItemEv, .-_ZNVK11OutputStack12GetFirstItemEv
 1306              		.section	.text._ZNV11OutputStack12SetFirstItemEP12OutputBuffer,"ax",%progbits
 1307              		.align	1
 1308              		.p2align 2,,3
 1309              		.global	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer
 1310              		.syntax unified
 1311              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 24


 1312              		.thumb_func
 1313              		.fpu fpv4-sp-d16
 1314              		.type	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer, %function
 1315              	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer:
 1316              		@ args = 0, pretend = 0, frame = 0
 1317              		@ frame_needed = 0, uses_anonymous_args = 0
 1318 0000 39B1     		cbz	r1, .L271
 1319 0002 0346     		mov	r3, r0
 1320 0004 10B5     		push	{r4, lr}
 1321 0006 5960     		str	r1, [r3, #4]
 1322 0008 0C46     		mov	r4, r1
 1323 000a FFF7FEFF 		bl	millis
 1324 000e A060     		str	r0, [r4, #8]
 1325 0010 10BD     		pop	{r4, pc}
 1326              	.L271:
 1327 0012 FFF7FEBF 		b	_ZNV11OutputStack3PopEv
 1328              		.size	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer, .-_ZNV11OutputStack12SetFirstItemEP12Output
 1329 0016 00BF     		.section	.text._ZNVK11OutputStack11GetLastItemEv,"ax",%progbits
 1330              		.align	1
 1331              		.p2align 2,,3
 1332              		.global	_ZNVK11OutputStack11GetLastItemEv
 1333              		.syntax unified
 1334              		.thumb
 1335              		.thumb_func
 1336              		.fpu fpv4-sp-d16
 1337              		.type	_ZNVK11OutputStack11GetLastItemEv, %function
 1338              	_ZNVK11OutputStack11GetLastItemEv:
 1339              		@ args = 0, pretend = 0, frame = 0
 1340              		@ frame_needed = 0, uses_anonymous_args = 0
 1341              		@ link register save eliminated.
 1342 0000 0368     		ldr	r3, [r0]
 1343 0002 2BB1     		cbz	r3, .L274
 1344 0004 0368     		ldr	r3, [r0]
 1345 0006 013B     		subs	r3, r3, #1
 1346 0008 00EB8300 		add	r0, r0, r3, lsl #2
 1347 000c 4068     		ldr	r0, [r0, #4]
 1348 000e 7047     		bx	lr
 1349              	.L274:
 1350 0010 1846     		mov	r0, r3
 1351 0012 7047     		bx	lr
 1352              		.size	_ZNVK11OutputStack11GetLastItemEv, .-_ZNVK11OutputStack11GetLastItemEv
 1353              		.section	.text._ZNVK11OutputStack10DataLengthEv,"ax",%progbits
 1354              		.align	1
 1355              		.p2align 2,,3
 1356              		.global	_ZNVK11OutputStack10DataLengthEv
 1357              		.syntax unified
 1358              		.thumb
 1359              		.thumb_func
 1360              		.fpu fpv4-sp-d16
 1361              		.type	_ZNVK11OutputStack10DataLengthEv, %function
 1362              	_ZNVK11OutputStack10DataLengthEv:
 1363              		@ args = 0, pretend = 0, frame = 0
 1364              		@ frame_needed = 0, uses_anonymous_args = 0
 1365 0000 70B5     		push	{r4, r5, r6, lr}
 1366 0002 0646     		mov	r6, r0
 1367 0004 FFF7FEFF 		bl	vTaskSuspendAll
 1368 0008 3568     		ldr	r5, [r6]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 25


 1369 000a 8DB1     		cbz	r5, .L276
 1370 000c 0024     		movs	r4, #0
 1371 000e 2546     		mov	r5, r4
 1372              	.L279:
 1373 0010 06EB8403 		add	r3, r6, r4, lsl #2
 1374 0014 5B68     		ldr	r3, [r3, #4]
 1375 0016 3BB1     		cbz	r3, .L277
 1376 0018 0022     		movs	r2, #0
 1377              	.L278:
 1378 001a D3F80C11 		ldr	r1, [r3, #268]
 1379 001e 1B68     		ldr	r3, [r3]
 1380 0020 0A44     		add	r2, r2, r1
 1381 0022 002B     		cmp	r3, #0
 1382 0024 F9D1     		bne	.L278
 1383 0026 1544     		add	r5, r5, r2
 1384              	.L277:
 1385 0028 3368     		ldr	r3, [r6]
 1386 002a 0134     		adds	r4, r4, #1
 1387 002c A342     		cmp	r3, r4
 1388 002e EFD8     		bhi	.L279
 1389              	.L276:
 1390 0030 FFF7FEFF 		bl	xTaskResumeAll
 1391 0034 2846     		mov	r0, r5
 1392 0036 70BD     		pop	{r4, r5, r6, pc}
 1393              		.size	_ZNVK11OutputStack10DataLengthEv, .-_ZNVK11OutputStack10DataLengthEv
 1394              		.section	.text._ZNV11OutputStack6AppendERVS_,"ax",%progbits
 1395              		.align	1
 1396              		.p2align 2,,3
 1397              		.global	_ZNV11OutputStack6AppendERVS_
 1398              		.syntax unified
 1399              		.thumb
 1400              		.thumb_func
 1401              		.fpu fpv4-sp-d16
 1402              		.type	_ZNV11OutputStack6AppendERVS_, %function
 1403              	_ZNV11OutputStack6AppendERVS_:
 1404              		@ args = 0, pretend = 0, frame = 0
 1405              		@ frame_needed = 0, uses_anonymous_args = 0
 1406 0000 0B68     		ldr	r3, [r1]
 1407 0002 002B     		cmp	r3, #0
 1408 0004 31D0     		beq	.L305
 1409 0006 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1410 000a 0646     		mov	r6, r0
 1411 000c 0F46     		mov	r7, r1
 1412 000e DFF85C80 		ldr	r8, .L310
 1413 0012 0025     		movs	r5, #0
 1414 0014 0CE0     		b	.L295
 1415              	.L309:
 1416 0016 07EB8503 		add	r3, r7, r5, lsl #2
 1417 001a 5968     		ldr	r1, [r3, #4]
 1418 001c 3368     		ldr	r3, [r6]
 1419 001e 06EB8302 		add	r2, r6, r3, lsl #2
 1420 0022 0133     		adds	r3, r3, #1
 1421 0024 3360     		str	r3, [r6]
 1422 0026 5160     		str	r1, [r2, #4]
 1423              	.L292:
 1424 0028 3B68     		ldr	r3, [r7]
 1425 002a 0135     		adds	r5, r5, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 26


 1426 002c AB42     		cmp	r3, r5
 1427 002e 1AD9     		bls	.L308
 1428              	.L295:
 1429 0030 3368     		ldr	r3, [r6]
 1430 0032 032B     		cmp	r3, #3
 1431 0034 EFD9     		bls	.L309
 1432 0036 D8F80420 		ldr	r2, [r8, #4]
 1433 003a D2F8FC30 		ldr	r3, [r2, #252]
 1434 003e 07EB8504 		add	r4, r7, r5, lsl #2
 1435 0042 43F00803 		orr	r3, r3, #8
 1436 0046 C2F8FC30 		str	r3, [r2, #252]
 1437 004a 6368     		ldr	r3, [r4, #4]
 1438 004c 002B     		cmp	r3, #0
 1439 004e EBD0     		beq	.L292
 1440              	.L294:
 1441 0050 6068     		ldr	r0, [r4, #4]
 1442 0052 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1443 0056 6060     		str	r0, [r4, #4]
 1444 0058 6368     		ldr	r3, [r4, #4]
 1445 005a 002B     		cmp	r3, #0
 1446 005c F8D1     		bne	.L294
 1447 005e 3B68     		ldr	r3, [r7]
 1448 0060 0135     		adds	r5, r5, #1
 1449 0062 AB42     		cmp	r3, r5
 1450 0064 E4D8     		bhi	.L295
 1451              	.L308:
 1452 0066 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1453              	.L305:
 1454 006a 7047     		bx	lr
 1455              	.L311:
 1456              		.align	2
 1457              	.L310:
 1458 006c 00000000 		.word	reprap
 1459              		.size	_ZNV11OutputStack6AppendERVS_, .-_ZNV11OutputStack6AppendERVS_
 1460              		.section	.text._ZNV11OutputStack18IncreaseReferencesEj,"ax",%progbits
 1461              		.align	1
 1462              		.p2align 2,,3
 1463              		.global	_ZNV11OutputStack18IncreaseReferencesEj
 1464              		.syntax unified
 1465              		.thumb
 1466              		.thumb_func
 1467              		.fpu fpv4-sp-d16
 1468              		.type	_ZNV11OutputStack18IncreaseReferencesEj, %function
 1469              	_ZNV11OutputStack18IncreaseReferencesEj:
 1470              		@ args = 0, pretend = 0, frame = 0
 1471              		@ frame_needed = 0, uses_anonymous_args = 0
 1472 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1473 0004 0746     		mov	r7, r0
 1474 0006 0E46     		mov	r6, r1
 1475 0008 FFF7FEFF 		bl	vTaskSuspendAll
 1476 000c 3B68     		ldr	r3, [r7]
 1477 000e FBB1     		cbz	r3, .L313
 1478 0010 0025     		movs	r5, #0
 1479 0012 4FF00108 		mov	r8, #1
 1480 0016 03E0     		b	.L317
 1481              	.L314:
 1482 0018 3B68     		ldr	r3, [r7]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 27


 1483 001a 0135     		adds	r5, r5, #1
 1484 001c AB42     		cmp	r3, r5
 1485 001e 17D9     		bls	.L313
 1486              	.L317:
 1487 0020 07EB8503 		add	r3, r7, r5, lsl #2
 1488 0024 5C68     		ldr	r4, [r3, #4]
 1489 0026 002E     		cmp	r6, #0
 1490 0028 F6D0     		beq	.L314
 1491 002a FFF7FEFF 		bl	vTaskSuspendAll
 1492 002e 4CB1     		cbz	r4, .L315
 1493              	.L316:
 1494 0030 D4F81831 		ldr	r3, [r4, #280]
 1495 0034 84F81481 		strb	r8, [r4, #276]
 1496 0038 3344     		add	r3, r3, r6
 1497 003a C4F81831 		str	r3, [r4, #280]
 1498 003e 2468     		ldr	r4, [r4]
 1499 0040 002C     		cmp	r4, #0
 1500 0042 F5D1     		bne	.L316
 1501              	.L315:
 1502 0044 FFF7FEFF 		bl	xTaskResumeAll
 1503 0048 3B68     		ldr	r3, [r7]
 1504 004a 0135     		adds	r5, r5, #1
 1505 004c AB42     		cmp	r3, r5
 1506 004e E7D8     		bhi	.L317
 1507              	.L313:
 1508 0050 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 1509 0054 FFF7FEBF 		b	xTaskResumeAll
 1510              		.size	_ZNV11OutputStack18IncreaseReferencesEj, .-_ZNV11OutputStack18IncreaseReferencesEj
 1511              		.section	.text._ZNV11OutputStack10ReleaseAllEv,"ax",%progbits
 1512              		.align	1
 1513              		.p2align 2,,3
 1514              		.global	_ZNV11OutputStack10ReleaseAllEv
 1515              		.syntax unified
 1516              		.thumb
 1517              		.thumb_func
 1518              		.fpu fpv4-sp-d16
 1519              		.type	_ZNV11OutputStack10ReleaseAllEv, %function
 1520              	_ZNV11OutputStack10ReleaseAllEv:
 1521              		@ args = 0, pretend = 0, frame = 0
 1522              		@ frame_needed = 0, uses_anonymous_args = 0
 1523 0000 0368     		ldr	r3, [r0]
 1524 0002 70B5     		push	{r4, r5, r6, lr}
 1525 0004 0646     		mov	r6, r0
 1526 0006 7BB1     		cbz	r3, .L331
 1527 0008 0025     		movs	r5, #0
 1528              	.L334:
 1529 000a 06EB8504 		add	r4, r6, r5, lsl #2
 1530 000e 6368     		ldr	r3, [r4, #4]
 1531 0010 33B1     		cbz	r3, .L332
 1532              	.L333:
 1533 0012 6068     		ldr	r0, [r4, #4]
 1534 0014 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1535 0018 6060     		str	r0, [r4, #4]
 1536 001a 6368     		ldr	r3, [r4, #4]
 1537 001c 002B     		cmp	r3, #0
 1538 001e F8D1     		bne	.L333
 1539              	.L332:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccO4YnEA.s 			page 28


 1540 0020 3368     		ldr	r3, [r6]
 1541 0022 0135     		adds	r5, r5, #1
 1542 0024 AB42     		cmp	r3, r5
 1543 0026 F0D8     		bhi	.L334
 1544              	.L331:
 1545 0028 0023     		movs	r3, #0
 1546 002a 3360     		str	r3, [r6]
 1547 002c 70BD     		pop	{r4, r5, r6, pc}
 1548              		.size	_ZNV11OutputStack10ReleaseAllEv, .-_ZNV11OutputStack10ReleaseAllEv
 1549              		.global	_ZN12OutputBuffer20maxUsedOutputBuffersE
 1550              		.global	_ZN12OutputBuffer17usedOutputBuffersE
 1551              		.global	_ZN12OutputBuffer17freeOutputBuffersE
 1552 002e 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1553              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1554              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1555              	_ZL28cpu_irq_prev_interrupt_state:
 1556 0000 00       		.space	1
 1557              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1558              		.align	2
 1559              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1560              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1561              	_ZL32cpu_irq_critical_section_counter:
 1562 0000 00000000 		.space	4
 1563              		.section	.bss._ZN12OutputBuffer17freeOutputBuffersE,"aw",%nobits
 1564              		.align	2
 1565              		.set	.LANCHOR0,. + 0
 1566              		.type	_ZN12OutputBuffer17freeOutputBuffersE, %object
 1567              		.size	_ZN12OutputBuffer17freeOutputBuffersE, 4
 1568              	_ZN12OutputBuffer17freeOutputBuffersE:
 1569 0000 00000000 		.space	4
 1570              		.section	.bss._ZN12OutputBuffer17usedOutputBuffersE,"aw",%nobits
 1571              		.align	2
 1572              		.set	.LANCHOR1,. + 0
 1573              		.type	_ZN12OutputBuffer17usedOutputBuffersE, %object
 1574              		.size	_ZN12OutputBuffer17usedOutputBuffersE, 4
 1575              	_ZN12OutputBuffer17usedOutputBuffersE:
 1576 0000 00000000 		.space	4
 1577              		.section	.bss._ZN12OutputBuffer20maxUsedOutputBuffersE,"aw",%nobits
 1578              		.align	2
 1579              		.set	.LANCHOR2,. + 0
 1580              		.type	_ZN12OutputBuffer20maxUsedOutputBuffersE, %object
 1581              		.size	_ZN12OutputBuffer20maxUsedOutputBuffersE, 4
 1582              	_ZN12OutputBuffer20maxUsedOutputBuffersE:
 1583 0000 00000000 		.space	4
 1584              		.section	.rodata._ZN12OutputBuffer11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 1585              		.align	2
 1586              	.LC0:
 1587 0000 55736564 		.ascii	"Used output buffers: %d of %d (%d max)\012\000"
 1587      206F7574 
 1587      70757420 
 1587      62756666 
 1587      6572733A 
 1588              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
