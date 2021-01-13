ARM GAS  /tmp/ccCMXCzU.s 			page 1


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
  11              		.file	"OutputMemory.cpp"
  12              		.section	.text._ZN12OutputBuffer7ReleaseEPS_.part.5,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	_ZN12OutputBuffer7ReleaseEPS_.part.5, %function
  20              	_ZN12OutputBuffer7ReleaseEPS_.part.5:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23              		@ link register save eliminated.
  24 0000 044B     		ldr	r3, .L2
  25 0002 054A     		ldr	r2, .L2+4
  26 0004 1968     		ldr	r1, [r3]
  27 0006 0160     		str	r1, [r0]
  28 0008 1860     		str	r0, [r3]
  29 000a 1368     		ldr	r3, [r2]
  30 000c 013B     		subs	r3, r3, #1
  31 000e 1360     		str	r3, [r2]
  32 0010 7047     		bx	lr
  33              	.L3:
  34 0012 00BF     		.align	2
  35              	.L2:
  36 0014 00000000 		.word	.LANCHOR0
  37 0018 00000000 		.word	.LANCHOR1
  38              		.size	_ZN12OutputBuffer7ReleaseEPS_.part.5, .-_ZN12OutputBuffer7ReleaseEPS_.part.5
  39              		.section	.text._ZN12OutputBuffer6AppendEPS_,"ax",%progbits
  40              		.align	1
  41              		.p2align 2,,3
  42              		.global	_ZN12OutputBuffer6AppendEPS_
  43              		.syntax unified
  44              		.thumb
  45              		.thumb_func
  46              		.fpu softvfp
  47              		.type	_ZN12OutputBuffer6AppendEPS_, %function
  48              	_ZN12OutputBuffer6AppendEPS_:
  49              		@ args = 0, pretend = 0, frame = 0
  50              		@ frame_needed = 0, uses_anonymous_args = 0
  51              		@ link register save eliminated.
  52 0000 89B1     		cbz	r1, .L16
  53 0002 10B4     		push	{r4}
  54 0004 4A68     		ldr	r2, [r1, #4]
  55 0006 4468     		ldr	r4, [r0, #4]
  56 0008 91F81531 		ldrb	r3, [r1, #277]	@ zero_extendqisi2
  57 000c 2160     		str	r1, [r4]
ARM GAS  /tmp/ccCMXCzU.s 			page 2


  58 000e 4260     		str	r2, [r0, #4]
  59 0010 53B9     		cbnz	r3, .L18
  60              	.L6:
  61 0012 0368     		ldr	r3, [r0]
  62 0014 9942     		cmp	r1, r3
  63 0016 01D1     		bne	.L8
  64 0018 04E0     		b	.L4
  65              	.L19:
  66 001a 4268     		ldr	r2, [r0, #4]
  67              	.L8:
  68 001c 5A60     		str	r2, [r3, #4]
  69 001e 1B68     		ldr	r3, [r3]
  70 0020 9942     		cmp	r1, r3
  71 0022 FAD1     		bne	.L19
  72              	.L4:
  73 0024 10BC     		pop	{r4}
  74              	.L16:
  75 0026 7047     		bx	lr
  76              	.L18:
  77 0028 0123     		movs	r3, #1
  78 002a 80F81531 		strb	r3, [r0, #277]
  79 002e F0E7     		b	.L6
  80              		.size	_ZN12OutputBuffer6AppendEPS_, .-_ZN12OutputBuffer6AppendEPS_
  81              		.section	.text._ZN12OutputBuffer18IncreaseReferencesEj,"ax",%progbits
  82              		.align	1
  83              		.p2align 2,,3
  84              		.global	_ZN12OutputBuffer18IncreaseReferencesEj
  85              		.syntax unified
  86              		.thumb
  87              		.thumb_func
  88              		.fpu softvfp
  89              		.type	_ZN12OutputBuffer18IncreaseReferencesEj, %function
  90              	_ZN12OutputBuffer18IncreaseReferencesEj:
  91              		@ args = 0, pretend = 0, frame = 0
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93              		@ link register save eliminated.
  94 0000 51B1     		cbz	r1, .L20
  95 0002 0122     		movs	r2, #1
  96              	.L23:
  97 0004 D0F81831 		ldr	r3, [r0, #280]
  98 0008 80F81421 		strb	r2, [r0, #276]
  99 000c 0B44     		add	r3, r3, r1
 100 000e C0F81831 		str	r3, [r0, #280]
 101 0012 0068     		ldr	r0, [r0]
 102 0014 0028     		cmp	r0, #0
 103 0016 F5D1     		bne	.L23
 104              	.L20:
 105 0018 7047     		bx	lr
 106              		.size	_ZN12OutputBuffer18IncreaseReferencesEj, .-_ZN12OutputBuffer18IncreaseReferencesEj
 107 001a 00BF     		.section	.text._ZNK12OutputBuffer6LengthEv,"ax",%progbits
 108              		.align	1
 109              		.p2align 2,,3
 110              		.global	_ZNK12OutputBuffer6LengthEv
 111              		.syntax unified
 112              		.thumb
 113              		.thumb_func
 114              		.fpu softvfp
ARM GAS  /tmp/ccCMXCzU.s 			page 3


 115              		.type	_ZNK12OutputBuffer6LengthEv, %function
 116              	_ZNK12OutputBuffer6LengthEv:
 117              		@ args = 0, pretend = 0, frame = 0
 118              		@ frame_needed = 0, uses_anonymous_args = 0
 119              		@ link register save eliminated.
 120 0000 0346     		mov	r3, r0
 121 0002 0020     		movs	r0, #0
 122              	.L28:
 123 0004 D3F80C21 		ldr	r2, [r3, #268]
 124 0008 1B68     		ldr	r3, [r3]
 125 000a 1044     		add	r0, r0, r2
 126 000c 002B     		cmp	r3, #0
 127 000e F9D1     		bne	.L28
 128 0010 7047     		bx	lr
 129              		.size	_ZNK12OutputBuffer6LengthEv, .-_ZNK12OutputBuffer6LengthEv
 130 0012 00BF     		.section	.text._ZN12OutputBufferixEj,"ax",%progbits
 131              		.align	1
 132              		.p2align 2,,3
 133              		.global	_ZN12OutputBufferixEj
 134              		.syntax unified
 135              		.thumb
 136              		.thumb_func
 137              		.fpu softvfp
 138              		.type	_ZN12OutputBufferixEj, %function
 139              	_ZN12OutputBufferixEj:
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 0, uses_anonymous_args = 0
 142              		@ link register save eliminated.
 143 0000 01E0     		b	.L35
 144              	.L32:
 145 0002 0068     		ldr	r0, [r0]
 146 0004 C91A     		subs	r1, r1, r3
 147              	.L35:
 148 0006 D0F80C31 		ldr	r3, [r0, #268]
 149 000a 9942     		cmp	r1, r3
 150 000c F9D8     		bhi	.L32
 151 000e 0C31     		adds	r1, r1, #12
 152 0010 0844     		add	r0, r0, r1
 153 0012 7047     		bx	lr
 154              		.size	_ZN12OutputBufferixEj, .-_ZN12OutputBufferixEj
 155              		.section	.text._ZNK12OutputBufferixEj,"ax",%progbits
 156              		.align	1
 157              		.p2align 2,,3
 158              		.global	_ZNK12OutputBufferixEj
 159              		.syntax unified
 160              		.thumb
 161              		.thumb_func
 162              		.fpu softvfp
 163              		.type	_ZNK12OutputBufferixEj, %function
 164              	_ZNK12OutputBufferixEj:
 165              		@ args = 0, pretend = 0, frame = 0
 166              		@ frame_needed = 0, uses_anonymous_args = 0
 167              		@ link register save eliminated.
 168 0000 01E0     		b	.L41
 169              	.L38:
 170 0002 0068     		ldr	r0, [r0]
 171 0004 C91A     		subs	r1, r1, r3
ARM GAS  /tmp/ccCMXCzU.s 			page 4


 172              	.L41:
 173 0006 D0F80C31 		ldr	r3, [r0, #268]
 174 000a 9942     		cmp	r1, r3
 175 000c F9D8     		bhi	.L38
 176 000e 0844     		add	r0, r0, r1
 177 0010 007B     		ldrb	r0, [r0, #12]	@ zero_extendqisi2
 178 0012 7047     		bx	lr
 179              		.size	_ZNK12OutputBufferixEj, .-_ZNK12OutputBufferixEj
 180              		.section	.text._ZN12OutputBuffer4ReadEj,"ax",%progbits
 181              		.align	1
 182              		.p2align 2,,3
 183              		.global	_ZN12OutputBuffer4ReadEj
 184              		.syntax unified
 185              		.thumb
 186              		.thumb_func
 187              		.fpu softvfp
 188              		.type	_ZN12OutputBuffer4ReadEj, %function
 189              	_ZN12OutputBuffer4ReadEj:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192              		@ link register save eliminated.
 193 0000 D0F81031 		ldr	r3, [r0, #272]
 194 0004 00F10C02 		add	r2, r0, #12
 195 0008 1944     		add	r1, r1, r3
 196 000a C0F81011 		str	r1, [r0, #272]
 197 000e D018     		adds	r0, r2, r3
 198 0010 7047     		bx	lr
 199              		.size	_ZN12OutputBuffer4ReadEj, .-_ZN12OutputBuffer4ReadEj
 200 0012 00BF     		.section	.text._ZNK12OutputBuffer11WriteToFileER8FileData,"ax",%progbits
 201              		.align	1
 202              		.p2align 2,,3
 203              		.global	_ZNK12OutputBuffer11WriteToFileER8FileData
 204              		.syntax unified
 205              		.thumb
 206              		.thumb_func
 207              		.fpu softvfp
 208              		.type	_ZNK12OutputBuffer11WriteToFileER8FileData, %function
 209              	_ZNK12OutputBuffer11WriteToFileER8FileData:
 210              		@ args = 0, pretend = 0, frame = 0
 211              		@ frame_needed = 0, uses_anonymous_args = 0
 212 0000 38B5     		push	{r3, r4, r5, lr}
 213 0002 0446     		mov	r4, r0
 214 0004 0D46     		mov	r5, r1
 215 0006 0020     		movs	r0, #0
 216 0008 01E0     		b	.L46
 217              	.L44:
 218 000a 2468     		ldr	r4, [r4]
 219 000c ACB1     		cbz	r4, .L55
 220              	.L46:
 221 000e D4F80C21 		ldr	r2, [r4, #268]
 222 0012 002A     		cmp	r2, #0
 223 0014 F9D0     		beq	.L44
 224 0016 04F10C01 		add	r1, r4, #12
 225 001a 2868     		ldr	r0, [r5]
 226 001c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 227 0020 60B1     		cbz	r0, .L45
 228 0022 D4F80C31 		ldr	r3, [r4, #268]
ARM GAS  /tmp/ccCMXCzU.s 			page 5


 229 0026 2344     		add	r3, r3, r4
 230 0028 D87A     		ldrb	r0, [r3, #11]	@ zero_extendqisi2
 231 002a 2468     		ldr	r4, [r4]
 232 002c A0F10A00 		sub	r0, #10
 233 0030 B0FA80F0 		clz	r0, r0
 234 0034 4009     		lsrs	r0, r0, #5
 235 0036 002C     		cmp	r4, #0
 236 0038 E9D1     		bne	.L46
 237              	.L55:
 238 003a 00B1     		cbz	r0, .L56
 239              	.L45:
 240 003c 38BD     		pop	{r3, r4, r5, pc}
 241              	.L56:
 242 003e 2868     		ldr	r0, [r5]
 243 0040 0A21     		movs	r1, #10
 244 0042 BDE83840 		pop	{r3, r4, r5, lr}
 245 0046 FFF7FEBF 		b	_ZN9FileStore5WriteEc
 246              		.size	_ZNK12OutputBuffer11WriteToFileER8FileData, .-_ZNK12OutputBuffer11WriteToFileER8FileData
 247 004a 00BF     		.section	.text._ZN12OutputBuffer4InitEv,"ax",%progbits
 248              		.align	1
 249              		.p2align 2,,3
 250              		.global	_ZN12OutputBuffer4InitEv
 251              		.syntax unified
 252              		.thumb
 253              		.thumb_func
 254              		.fpu softvfp
 255              		.type	_ZN12OutputBuffer4InitEv, %function
 256              	_ZN12OutputBuffer4InitEv:
 257              		@ args = 0, pretend = 0, frame = 0
 258              		@ frame_needed = 0, uses_anonymous_args = 0
 259 0000 0023     		movs	r3, #0
 260 0002 70B5     		push	{r4, r5, r6, lr}
 261 0004 1024     		movs	r4, #16
 262 0006 064D     		ldr	r5, .L61
 263 0008 2B60     		str	r3, [r5]
 264              	.L58:
 265 000a 4FF48E70 		mov	r0, #284
 266 000e 2E68     		ldr	r6, [r5]
 267 0010 FFF7FEFF 		bl	_Znwj
 268 0014 013C     		subs	r4, r4, #1
 269 0016 0660     		str	r6, [r0]
 270 0018 2860     		str	r0, [r5]
 271 001a F6D1     		bne	.L58
 272 001c 70BD     		pop	{r4, r5, r6, pc}
 273              	.L62:
 274 001e 00BF     		.align	2
 275              	.L61:
 276 0020 00000000 		.word	.LANCHOR0
 277              		.size	_ZN12OutputBuffer4InitEv, .-_ZN12OutputBuffer4InitEv
 278              		.section	.text._ZN12OutputBuffer8AllocateERPS_,"ax",%progbits
 279              		.align	1
 280              		.p2align 2,,3
 281              		.global	_ZN12OutputBuffer8AllocateERPS_
 282              		.syntax unified
 283              		.thumb
 284              		.thumb_func
 285              		.fpu softvfp
ARM GAS  /tmp/ccCMXCzU.s 			page 6


 286              		.type	_ZN12OutputBuffer8AllocateERPS_, %function
 287              	_ZN12OutputBuffer8AllocateERPS_:
 288              		@ args = 0, pretend = 0, frame = 0
 289              		@ frame_needed = 0, uses_anonymous_args = 0
 290              		@ link register save eliminated.
 291 0000 184A     		ldr	r2, .L71
 292 0002 1368     		ldr	r3, [r2]
 293 0004 0360     		str	r3, [r0]
 294 0006 1BB3     		cbz	r3, .L64
 295 0008 1968     		ldr	r1, [r3]
 296 000a 174B     		ldr	r3, .L71+4
 297 000c 10B4     		push	{r4}
 298 000e 1160     		str	r1, [r2]
 299 0010 1A68     		ldr	r2, [r3]
 300 0012 1649     		ldr	r1, .L71+8
 301 0014 0132     		adds	r2, r2, #1
 302 0016 1A60     		str	r2, [r3]
 303 0018 1C68     		ldr	r4, [r3]
 304 001a 0A68     		ldr	r2, [r1]
 305 001c 9442     		cmp	r4, r2
 306 001e 88BF     		it	hi
 307 0020 1B68     		ldrhi	r3, [r3]
 308 0022 4FF00104 		mov	r4, #1
 309 0026 88BF     		it	hi
 310 0028 0B60     		strhi	r3, [r1]
 311 002a 0021     		movs	r1, #0
 312 002c 0268     		ldr	r2, [r0]
 313 002e 1160     		str	r1, [r2]
 314 0030 0268     		ldr	r2, [r0]
 315 0032 5260     		str	r2, [r2, #4]
 316 0034 0268     		ldr	r2, [r0]
 317 0036 2046     		mov	r0, r4
 318 0038 C2F81841 		str	r4, [r2, #280]
 319 003c C2F81011 		str	r1, [r2, #272]
 320 0040 C2F80C11 		str	r1, [r2, #268]
 321 0044 82F81411 		strb	r1, [r2, #276]
 322 0048 82F81511 		strb	r1, [r2, #277]
 323 004c 10BC     		pop	{r4}
 324 004e 7047     		bx	lr
 325              	.L64:
 326 0050 074A     		ldr	r2, .L71+12
 327 0052 1846     		mov	r0, r3
 328 0054 1168     		ldr	r1, [r2]	@ unaligned
 329 0056 D1F8AC20 		ldr	r2, [r1, #172]
 330 005a 42F00402 		orr	r2, r2, #4
 331 005e C1F8AC20 		str	r2, [r1, #172]
 332 0062 7047     		bx	lr
 333              	.L72:
 334              		.align	2
 335              	.L71:
 336 0064 00000000 		.word	.LANCHOR0
 337 0068 00000000 		.word	.LANCHOR1
 338 006c 00000000 		.word	.LANCHOR2
 339 0070 00000000 		.word	reprap
 340              		.size	_ZN12OutputBuffer8AllocateERPS_, .-_ZN12OutputBuffer8AllocateERPS_
 341              		.section	.text._ZN12OutputBuffer3catEPKcj,"ax",%progbits
 342              		.align	1
ARM GAS  /tmp/ccCMXCzU.s 			page 7


 343              		.p2align 2,,3
 344              		.global	_ZN12OutputBuffer3catEPKcj
 345              		.syntax unified
 346              		.thumb
 347              		.thumb_func
 348              		.fpu softvfp
 349              		.type	_ZN12OutputBuffer3catEPKcj, %function
 350              	_ZN12OutputBuffer3catEPKcj:
 351              		@ args = 0, pretend = 0, frame = 8
 352              		@ frame_needed = 0, uses_anonymous_args = 0
 353 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 354 0004 82B0     		sub	sp, sp, #8
 355 0006 002A     		cmp	r2, #0
 356 0008 3CD0     		beq	.L81
 357 000a 4368     		ldr	r3, [r0, #4]
 358 000c 8046     		mov	r8, r0
 359 000e 1646     		mov	r6, r2
 360 0010 0F46     		mov	r7, r1
 361 0012 0025     		movs	r5, #0
 362 0014 D3F80C01 		ldr	r0, [r3, #268]
 363 0018 15E0     		b	.L80
 364              	.L75:
 365 001a 741B     		subs	r4, r6, r5
 366 001c C0F58072 		rsb	r2, r0, #256
 367 0020 9442     		cmp	r4, r2
 368 0022 28BF     		it	cs
 369 0024 1446     		movcs	r4, r2
 370 0026 0C33     		adds	r3, r3, #12
 371 0028 1844     		add	r0, r0, r3
 372 002a 7919     		adds	r1, r7, r5
 373 002c 2246     		mov	r2, r4
 374 002e FFF7FEFF 		bl	memcpy
 375 0032 D8F80430 		ldr	r3, [r8, #4]
 376 0036 2544     		add	r5, r5, r4
 377 0038 D3F80C01 		ldr	r0, [r3, #268]
 378 003c AE42     		cmp	r6, r5
 379 003e 2044     		add	r0, r0, r4
 380 0040 C3F80C01 		str	r0, [r3, #268]
 381 0044 1FD9     		bls	.L73
 382              	.L80:
 383 0046 B0F5807F 		cmp	r0, #256
 384 004a E6D1     		bne	.L75
 385 004c 01A8     		add	r0, sp, #4
 386 004e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 387 0052 E0B1     		cbz	r0, .L84
 388 0054 0199     		ldr	r1, [sp, #4]
 389 0056 D8F80430 		ldr	r3, [r8, #4]
 390 005a D8F81821 		ldr	r2, [r8, #280]
 391 005e C1F81821 		str	r2, [r1, #280]
 392 0062 1960     		str	r1, [r3]
 393 0064 D8F80020 		ldr	r2, [r8]
 394 0068 4B68     		ldr	r3, [r1, #4]
 395 006a 9142     		cmp	r1, r2
 396 006c C8F80430 		str	r3, [r8, #4]
 397 0070 05D0     		beq	.L77
 398              	.L79:
 399 0072 5360     		str	r3, [r2, #4]
ARM GAS  /tmp/ccCMXCzU.s 			page 8


 400 0074 1268     		ldr	r2, [r2]
 401 0076 D8F80430 		ldr	r3, [r8, #4]
 402 007a 9142     		cmp	r1, r2
 403 007c F9D1     		bne	.L79
 404              	.L77:
 405 007e D3F80C01 		ldr	r0, [r3, #268]
 406 0082 CAE7     		b	.L75
 407              	.L81:
 408 0084 1546     		mov	r5, r2
 409              	.L73:
 410 0086 2846     		mov	r0, r5
 411 0088 02B0     		add	sp, sp, #8
 412              		@ sp needed
 413 008a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 414              	.L84:
 415 008e 0123     		movs	r3, #1
 416 0090 2846     		mov	r0, r5
 417 0092 88F81531 		strb	r3, [r8, #277]
 418 0096 02B0     		add	sp, sp, #8
 419              		@ sp needed
 420 0098 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 421              		.size	_ZN12OutputBuffer3catEPKcj, .-_ZN12OutputBuffer3catEPKcj
 422              		.section	.text._ZN12OutputBuffer3catEPKc,"ax",%progbits
 423              		.align	1
 424              		.p2align 2,,3
 425              		.global	_ZN12OutputBuffer3catEPKc
 426              		.syntax unified
 427              		.thumb
 428              		.thumb_func
 429              		.fpu softvfp
 430              		.type	_ZN12OutputBuffer3catEPKc, %function
 431              	_ZN12OutputBuffer3catEPKc:
 432              		@ args = 0, pretend = 0, frame = 0
 433              		@ frame_needed = 0, uses_anonymous_args = 0
 434 0000 38B5     		push	{r3, r4, r5, lr}
 435 0002 0546     		mov	r5, r0
 436 0004 0846     		mov	r0, r1
 437 0006 0C46     		mov	r4, r1
 438 0008 FFF7FEFF 		bl	strlen
 439 000c 2146     		mov	r1, r4
 440 000e 0246     		mov	r2, r0
 441 0010 2846     		mov	r0, r5
 442 0012 BDE83840 		pop	{r3, r4, r5, lr}
 443 0016 FFF7FEBF 		b	_ZN12OutputBuffer3catEPKcj
 444              		.size	_ZN12OutputBuffer3catEPKc, .-_ZN12OutputBuffer3catEPKc
 445 001a 00BF     		.section	.text._ZN12OutputBuffer7vprintfEPKcSt9__va_list,"ax",%progbits
 446              		.align	1
 447              		.p2align 2,,3
 448              		.global	_ZN12OutputBuffer7vprintfEPKcSt9__va_list
 449              		.syntax unified
 450              		.thumb
 451              		.thumb_func
 452              		.fpu softvfp
 453              		.type	_ZN12OutputBuffer7vprintfEPKcSt9__va_list, %function
 454              	_ZN12OutputBuffer7vprintfEPKcSt9__va_list:
 455              		@ args = 0, pretend = 0, frame = 256
 456              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccCMXCzU.s 			page 9


 457 0000 10B5     		push	{r4, lr}
 458 0002 C0B0     		sub	sp, sp, #256
 459 0004 1346     		mov	r3, r2
 460 0006 0446     		mov	r4, r0
 461 0008 0A46     		mov	r2, r1
 462 000a 6846     		mov	r0, sp
 463 000c 4FF48071 		mov	r1, #256
 464 0010 FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
 465 0014 6846     		mov	r0, sp
 466 0016 FFF7FEFF 		bl	strlen
 467 001a 6946     		mov	r1, sp
 468 001c 0246     		mov	r2, r0
 469 001e 2046     		mov	r0, r4
 470 0020 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKcj
 471 0024 40B0     		add	sp, sp, #256
 472              		@ sp needed
 473 0026 10BD     		pop	{r4, pc}
 474              		.size	_ZN12OutputBuffer7vprintfEPKcSt9__va_list, .-_ZN12OutputBuffer7vprintfEPKcSt9__va_list
 475              		.section	.text._ZN12OutputBuffer4catfEPKcz,"ax",%progbits
 476              		.align	1
 477              		.p2align 2,,3
 478              		.global	_ZN12OutputBuffer4catfEPKcz
 479              		.syntax unified
 480              		.thumb
 481              		.thumb_func
 482              		.fpu softvfp
 483              		.type	_ZN12OutputBuffer4catfEPKcz, %function
 484              	_ZN12OutputBuffer4catfEPKcz:
 485              		@ args = 4, pretend = 12, frame = 264
 486              		@ frame_needed = 0, uses_anonymous_args = 1
 487 0000 0EB4     		push	{r1, r2, r3}
 488 0002 30B5     		push	{r4, r5, lr}
 489 0004 C2B0     		sub	sp, sp, #264
 490 0006 45AC     		add	r4, sp, #276
 491 0008 54F8042B 		ldr	r2, [r4], #4
 492 000c 0546     		mov	r5, r0
 493 000e 2346     		mov	r3, r4
 494 0010 4FF48071 		mov	r1, #256
 495 0014 02A8     		add	r0, sp, #8
 496 0016 0194     		str	r4, [sp, #4]
 497 0018 FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
 498 001c 0023     		movs	r3, #0
 499 001e 02A8     		add	r0, sp, #8
 500 0020 8DF80731 		strb	r3, [sp, #263]
 501 0024 FFF7FEFF 		bl	strlen
 502 0028 02A9     		add	r1, sp, #8
 503 002a 0246     		mov	r2, r0
 504 002c 2846     		mov	r0, r5
 505 002e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKcj
 506 0032 42B0     		add	sp, sp, #264
 507              		@ sp needed
 508 0034 BDE83040 		pop	{r4, r5, lr}
 509 0038 03B0     		add	sp, sp, #12
 510 003a 7047     		bx	lr
 511              		.size	_ZN12OutputBuffer4catfEPKcz, .-_ZN12OutputBuffer4catfEPKcz
 512              		.section	.text._ZN12OutputBuffer3catER9StringRef,"ax",%progbits
 513              		.align	1
ARM GAS  /tmp/ccCMXCzU.s 			page 10


 514              		.p2align 2,,3
 515              		.global	_ZN12OutputBuffer3catER9StringRef
 516              		.syntax unified
 517              		.thumb
 518              		.thumb_func
 519              		.fpu softvfp
 520              		.type	_ZN12OutputBuffer3catER9StringRef, %function
 521              	_ZN12OutputBuffer3catER9StringRef:
 522              		@ args = 0, pretend = 0, frame = 0
 523              		@ frame_needed = 0, uses_anonymous_args = 0
 524 0000 38B5     		push	{r3, r4, r5, lr}
 525 0002 0446     		mov	r4, r0
 526 0004 0846     		mov	r0, r1
 527 0006 0D68     		ldr	r5, [r1]
 528 0008 FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 529 000c 2946     		mov	r1, r5
 530 000e 0246     		mov	r2, r0
 531 0010 2046     		mov	r0, r4
 532 0012 BDE83840 		pop	{r3, r4, r5, lr}
 533 0016 FFF7FEBF 		b	_ZN12OutputBuffer3catEPKcj
 534              		.size	_ZN12OutputBuffer3catER9StringRef, .-_ZN12OutputBuffer3catER9StringRef
 535 001a 00BF     		.section	.text._ZN12OutputBuffer12GetBytesLeftEPKS_,"ax",%progbits
 536              		.align	1
 537              		.p2align 2,,3
 538              		.global	_ZN12OutputBuffer12GetBytesLeftEPKS_
 539              		.syntax unified
 540              		.thumb
 541              		.thumb_func
 542              		.fpu softvfp
 543              		.type	_ZN12OutputBuffer12GetBytesLeftEPKS_, %function
 544              	_ZN12OutputBuffer12GetBytesLeftEPKS_:
 545              		@ args = 0, pretend = 0, frame = 0
 546              		@ frame_needed = 0, uses_anonymous_args = 0
 547              		@ link register save eliminated.
 548 0000 084B     		ldr	r3, .L96
 549 0002 4268     		ldr	r2, [r0, #4]
 550 0004 1B68     		ldr	r3, [r3]
 551 0006 D2F80C01 		ldr	r0, [r2, #268]
 552 000a C3F11002 		rsb	r2, r3, #16
 553 000e 012A     		cmp	r2, #1
 554 0010 C0F58070 		rsb	r0, r0, #256
 555 0014 04D9     		bls	.L93
 556 0016 C3F18073 		rsb	r3, r3, #16777216
 557 001a 0E33     		adds	r3, r3, #14
 558 001c 00EB0320 		add	r0, r0, r3, lsl #8
 559              	.L93:
 560 0020 7047     		bx	lr
 561              	.L97:
 562 0022 00BF     		.align	2
 563              	.L96:
 564 0024 00000000 		.word	.LANCHOR1
 565              		.size	_ZN12OutputBuffer12GetBytesLeftEPKS_, .-_ZN12OutputBuffer12GetBytesLeftEPKS_
 566              		.section	.text._ZN12OutputBuffer8TruncateEPS_j,"ax",%progbits
 567              		.align	1
 568              		.p2align 2,,3
 569              		.global	_ZN12OutputBuffer8TruncateEPS_j
 570              		.syntax unified
ARM GAS  /tmp/ccCMXCzU.s 			page 11


 571              		.thumb
 572              		.thumb_func
 573              		.fpu softvfp
 574              		.type	_ZN12OutputBuffer8TruncateEPS_j, %function
 575              	_ZN12OutputBuffer8TruncateEPS_j:
 576              		@ args = 0, pretend = 0, frame = 0
 577              		@ frame_needed = 0, uses_anonymous_args = 0
 578 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 579 0002 0546     		mov	r5, r0
 580 0004 30B3     		cbz	r0, .L109
 581 0006 0068     		ldr	r0, [r0]
 582 0008 20B3     		cbz	r0, .L109
 583 000a 95F81461 		ldrb	r6, [r5, #276]	@ zero_extendqisi2
 584 000e 0F46     		mov	r7, r1
 585 0010 06BB     		cbnz	r6, .L109
 586              	.L106:
 587 0012 2C46     		mov	r4, r5
 588 0014 01E0     		b	.L100
 589              	.L110:
 590 0016 0446     		mov	r4, r0
 591 0018 1846     		mov	r0, r3
 592              	.L100:
 593 001a 0368     		ldr	r3, [r0]
 594 001c 002B     		cmp	r3, #0
 595 001e FAD1     		bne	.L110
 596 0020 D0F81821 		ldr	r2, [r0, #280]
 597 0024 2360     		str	r3, [r4]
 598 0026 012A     		cmp	r2, #1
 599 0028 17D9     		bls	.L101
 600 002a D0F81821 		ldr	r2, [r0, #280]
 601 002e C0F81031 		str	r3, [r0, #272]
 602 0032 013A     		subs	r2, r2, #1
 603 0034 C0F81821 		str	r2, [r0, #280]
 604              	.L102:
 605 0038 AC42     		cmp	r4, r5
 606 003a 06F58076 		add	r6, r6, #256
 607 003e 03D0     		beq	.L104
 608 0040 BE42     		cmp	r6, r7
 609 0042 01D2     		bcs	.L104
 610 0044 2868     		ldr	r0, [r5]
 611 0046 E4E7     		b	.L106
 612              	.L104:
 613 0048 6C60     		str	r4, [r5, #4]
 614 004a 2D68     		ldr	r5, [r5]
 615 004c 002D     		cmp	r5, #0
 616 004e FBD1     		bne	.L104
 617 0050 3046     		mov	r0, r6
 618 0052 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 619              	.L109:
 620 0054 0026     		movs	r6, #0
 621 0056 3046     		mov	r0, r6
 622 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 623              	.L101:
 624 005a FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_.part.5
 625 005e EBE7     		b	.L102
 626              		.size	_ZN12OutputBuffer8TruncateEPS_j, .-_ZN12OutputBuffer8TruncateEPS_j
 627              		.section	.text._ZN12OutputBuffer7ReleaseEPS_,"ax",%progbits
ARM GAS  /tmp/ccCMXCzU.s 			page 12


 628              		.align	1
 629              		.p2align 2,,3
 630              		.global	_ZN12OutputBuffer7ReleaseEPS_
 631              		.syntax unified
 632              		.thumb
 633              		.thumb_func
 634              		.fpu softvfp
 635              		.type	_ZN12OutputBuffer7ReleaseEPS_, %function
 636              	_ZN12OutputBuffer7ReleaseEPS_:
 637              		@ args = 0, pretend = 0, frame = 0
 638              		@ frame_needed = 0, uses_anonymous_args = 0
 639 0000 D0F81821 		ldr	r2, [r0, #280]
 640 0004 10B5     		push	{r4, lr}
 641 0006 012A     		cmp	r2, #1
 642 0008 0468     		ldr	r4, [r0]
 643 000a 09D9     		bls	.L114
 644 000c 0021     		movs	r1, #0
 645 000e D0F81821 		ldr	r2, [r0, #280]
 646 0012 C0F81011 		str	r1, [r0, #272]
 647 0016 013A     		subs	r2, r2, #1
 648 0018 C0F81821 		str	r2, [r0, #280]
 649 001c 2046     		mov	r0, r4
 650 001e 10BD     		pop	{r4, pc}
 651              	.L114:
 652 0020 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_.part.5
 653 0024 2046     		mov	r0, r4
 654 0026 10BD     		pop	{r4, pc}
 655              		.size	_ZN12OutputBuffer7ReleaseEPS_, .-_ZN12OutputBuffer7ReleaseEPS_
 656              		.section	.text._ZN12OutputBuffer10ReleaseAllERVPS_,"ax",%progbits
 657              		.align	1
 658              		.p2align 2,,3
 659              		.global	_ZN12OutputBuffer10ReleaseAllERVPS_
 660              		.syntax unified
 661              		.thumb
 662              		.thumb_func
 663              		.fpu softvfp
 664              		.type	_ZN12OutputBuffer10ReleaseAllERVPS_, %function
 665              	_ZN12OutputBuffer10ReleaseAllERVPS_:
 666              		@ args = 0, pretend = 0, frame = 0
 667              		@ frame_needed = 0, uses_anonymous_args = 0
 668 0000 0368     		ldr	r3, [r0]
 669 0002 D3B1     		cbz	r3, .L125
 670 0004 70B5     		push	{r4, r5, r6, lr}
 671 0006 0446     		mov	r4, r0
 672 0008 0026     		movs	r6, #0
 673 000a 09E0     		b	.L122
 674              	.L129:
 675 000c D0F81831 		ldr	r3, [r0, #280]
 676 0010 C0F81061 		str	r6, [r0, #272]
 677 0014 013B     		subs	r3, r3, #1
 678 0016 C0F81831 		str	r3, [r0, #280]
 679 001a 2560     		str	r5, [r4]
 680 001c 2368     		ldr	r3, [r4]
 681 001e 5BB1     		cbz	r3, .L128
 682              	.L122:
 683 0020 2068     		ldr	r0, [r4]
 684 0022 D0F81831 		ldr	r3, [r0, #280]
ARM GAS  /tmp/ccCMXCzU.s 			page 13


 685 0026 0568     		ldr	r5, [r0]
 686 0028 012B     		cmp	r3, #1
 687 002a EFD8     		bhi	.L129
 688 002c FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_.part.5
 689 0030 2560     		str	r5, [r4]
 690 0032 2368     		ldr	r3, [r4]
 691 0034 002B     		cmp	r3, #0
 692 0036 F3D1     		bne	.L122
 693              	.L128:
 694 0038 70BD     		pop	{r4, r5, r6, pc}
 695              	.L125:
 696 003a 7047     		bx	lr
 697              		.size	_ZN12OutputBuffer10ReleaseAllERVPS_, .-_ZN12OutputBuffer10ReleaseAllERVPS_
 698              		.section	.text._ZN12OutputBuffer4copyEc,"ax",%progbits
 699              		.align	1
 700              		.p2align 2,,3
 701              		.global	_ZN12OutputBuffer4copyEc
 702              		.syntax unified
 703              		.thumb
 704              		.thumb_func
 705              		.fpu softvfp
 706              		.type	_ZN12OutputBuffer4copyEc, %function
 707              	_ZN12OutputBuffer4copyEc:
 708              		@ args = 0, pretend = 0, frame = 0
 709              		@ frame_needed = 0, uses_anonymous_args = 0
 710 0000 38B5     		push	{r3, r4, r5, lr}
 711 0002 0368     		ldr	r3, [r0]
 712 0004 0446     		mov	r4, r0
 713 0006 0D46     		mov	r5, r1
 714 0008 13B1     		cbz	r3, .L131
 715 000a FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 716 000e 6460     		str	r4, [r4, #4]
 717              	.L131:
 718 0010 0120     		movs	r0, #1
 719 0012 2573     		strb	r5, [r4, #12]
 720 0014 C4F80C01 		str	r0, [r4, #268]
 721 0018 38BD     		pop	{r3, r4, r5, pc}
 722              		.size	_ZN12OutputBuffer4copyEc, .-_ZN12OutputBuffer4copyEc
 723 001a 00BF     		.section	.text._ZN12OutputBuffer3catEc.part.6,"ax",%progbits
 724              		.align	1
 725              		.p2align 2,,3
 726              		.syntax unified
 727              		.thumb
 728              		.thumb_func
 729              		.fpu softvfp
 730              		.type	_ZN12OutputBuffer3catEc.part.6, %function
 731              	_ZN12OutputBuffer3catEc.part.6:
 732              		@ args = 0, pretend = 0, frame = 8
 733              		@ frame_needed = 0, uses_anonymous_args = 0
 734 0000 70B5     		push	{r4, r5, r6, lr}
 735 0002 82B0     		sub	sp, sp, #8
 736 0004 0446     		mov	r4, r0
 737 0006 01A8     		add	r0, sp, #4
 738 0008 0E46     		mov	r6, r1
 739 000a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 740 000e D0B1     		cbz	r0, .L145
 741 0010 019D     		ldr	r5, [sp, #4]
ARM GAS  /tmp/ccCMXCzU.s 			page 14


 742 0012 D4F81821 		ldr	r2, [r4, #280]
 743 0016 2B68     		ldr	r3, [r5]
 744 0018 C5F81821 		str	r2, [r5, #280]
 745 001c C3B1     		cbz	r3, .L143
 746 001e 2846     		mov	r0, r5
 747 0020 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 748 0024 019B     		ldr	r3, [sp, #4]
 749 0026 6D60     		str	r5, [r5, #4]
 750              	.L139:
 751 0028 0121     		movs	r1, #1
 752 002a 2E73     		strb	r6, [r5, #12]
 753 002c 6268     		ldr	r2, [r4, #4]
 754 002e 9C42     		cmp	r4, r3
 755 0030 C5F80C11 		str	r1, [r5, #268]
 756 0034 1360     		str	r3, [r2]
 757 0036 03D0     		beq	.L141
 758              	.L142:
 759 0038 6360     		str	r3, [r4, #4]
 760 003a 2468     		ldr	r4, [r4]
 761 003c 9C42     		cmp	r4, r3
 762 003e FBD1     		bne	.L142
 763              	.L141:
 764 0040 0120     		movs	r0, #1
 765 0042 02B0     		add	sp, sp, #8
 766              		@ sp needed
 767 0044 70BD     		pop	{r4, r5, r6, pc}
 768              	.L145:
 769 0046 0123     		movs	r3, #1
 770 0048 84F81531 		strb	r3, [r4, #277]
 771 004c 02B0     		add	sp, sp, #8
 772              		@ sp needed
 773 004e 70BD     		pop	{r4, r5, r6, pc}
 774              	.L143:
 775 0050 2B46     		mov	r3, r5
 776 0052 E9E7     		b	.L139
 777              		.size	_ZN12OutputBuffer3catEc.part.6, .-_ZN12OutputBuffer3catEc.part.6
 778              		.section	.text._ZN12OutputBuffer3catEc,"ax",%progbits
 779              		.align	1
 780              		.p2align 2,,3
 781              		.global	_ZN12OutputBuffer3catEc
 782              		.syntax unified
 783              		.thumb
 784              		.thumb_func
 785              		.fpu softvfp
 786              		.type	_ZN12OutputBuffer3catEc, %function
 787              	_ZN12OutputBuffer3catEc:
 788              		@ args = 0, pretend = 0, frame = 0
 789              		@ frame_needed = 0, uses_anonymous_args = 0
 790              		@ link register save eliminated.
 791 0000 4268     		ldr	r2, [r0, #4]
 792 0002 D2F80C31 		ldr	r3, [r2, #268]
 793 0006 B3F5807F 		cmp	r3, #256
 794 000a 09D0     		beq	.L150
 795 000c 10B4     		push	{r4}
 796 000e 0C46     		mov	r4, r1
 797 0010 591C     		adds	r1, r3, #1
 798 0012 1344     		add	r3, r3, r2
ARM GAS  /tmp/ccCMXCzU.s 			page 15


 799 0014 C2F80C11 		str	r1, [r2, #268]
 800 0018 1C73     		strb	r4, [r3, #12]
 801 001a 0120     		movs	r0, #1
 802 001c 10BC     		pop	{r4}
 803 001e 7047     		bx	lr
 804              	.L150:
 805 0020 FFF7FEBF 		b	_ZN12OutputBuffer3catEc.part.6
 806              		.size	_ZN12OutputBuffer3catEc, .-_ZN12OutputBuffer3catEc
 807              		.section	.text._ZN12OutputBuffer12EncodeStringEPKcjbbb,"ax",%progbits
 808              		.align	1
 809              		.p2align 2,,3
 810              		.global	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 811              		.syntax unified
 812              		.thumb
 813              		.thumb_func
 814              		.fpu softvfp
 815              		.type	_ZN12OutputBuffer12EncodeStringEPKcjbbb, %function
 816              	_ZN12OutputBuffer12EncodeStringEPKcjbbb:
 817              		@ args = 8, pretend = 0, frame = 8
 818              		@ frame_needed = 0, uses_anonymous_args = 0
 819 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 820 0004 83B0     		sub	sp, sp, #12
 821 0006 9DF830A0 		ldrb	r10, [sp, #48]	@ zero_extendqisi2
 822 000a 8946     		mov	r9, r1
 823 000c 9046     		mov	r8, r2
 824 000e 9B46     		mov	fp, r3
 825 0010 0746     		mov	r7, r0
 826 0012 9DF83440 		ldrb	r4, [sp, #52]	@ zero_extendqisi2
 827 0016 BAF1000F 		cmp	r10, #0
 828 001a 69D0     		beq	.L180
 829 001c 4268     		ldr	r2, [r0, #4]
 830 001e 2221     		movs	r1, #34
 831 0020 D2F80C31 		ldr	r3, [r2, #268]
 832 0024 B3F5807F 		cmp	r3, #256
 833 0028 00F0A380 		beq	.L211
 834 002c 0126     		movs	r6, #1
 835 002e 581C     		adds	r0, r3, #1
 836 0030 1344     		add	r3, r3, r2
 837 0032 C2F80C01 		str	r0, [r2, #268]
 838 0036 1973     		strb	r1, [r3, #12]
 839              	.L152:
 840 0038 74B1     		cbz	r4, .L154
 841 003a 7A68     		ldr	r2, [r7, #4]
 842 003c 2A21     		movs	r1, #42
 843 003e D2F80C31 		ldr	r3, [r2, #268]
 844 0042 B3F5807F 		cmp	r3, #256
 845 0046 00F08F80 		beq	.L212
 846 004a 0120     		movs	r0, #1
 847 004c 1C18     		adds	r4, r3, r0
 848 004e 1344     		add	r3, r3, r2
 849 0050 C2F80C41 		str	r4, [r2, #268]
 850 0054 0644     		add	r6, r6, r0
 851 0056 1973     		strb	r1, [r3, #12]
 852              	.L154:
 853 0058 B8F1000F 		cmp	r8, #0
 854 005c 33D0     		beq	.L157
 855 005e 99F80040 		ldrb	r4, [r9]	@ zero_extendqisi2
ARM GAS  /tmp/ccCMXCzU.s 			page 16


 856 0062 84B3     		cbz	r4, .L157
 857 0064 0125     		movs	r5, #1
 858 0066 5C23     		movs	r3, #92
 859              	.L159:
 860 0068 1F2C     		cmp	r4, #31
 861 006a 02DC     		bgt	.L160
 862 006c BBF1000F 		cmp	fp, #0
 863 0070 29D0     		beq	.L157
 864              	.L160:
 865 0072 0D2C     		cmp	r4, #13
 866 0074 6ED0     		beq	.L162
 867 0076 3DD8     		bhi	.L163
 868 0078 092C     		cmp	r4, #9
 869 007a 4ED0     		beq	.L181
 870 007c 0A2C     		cmp	r4, #10
 871 007e 3DD1     		bne	.L161
 872 0080 6E24     		movs	r4, #110
 873              	.L164:
 874 0082 7968     		ldr	r1, [r7, #4]
 875 0084 D1F80C21 		ldr	r2, [r1, #268]
 876 0088 B2F5807F 		cmp	r2, #256
 877 008c 4CD0     		beq	.L213
 878              	.L206:
 879 008e 4FF0010E 		mov	lr, #1
 880 0092 02EB0E00 		add	r0, r2, lr
 881 0096 B0F5807F 		cmp	r0, #256
 882 009a 0A44     		add	r2, r2, r1
 883 009c C1F80C01 		str	r0, [r1, #268]
 884 00a0 7644     		add	r6, r6, lr
 885 00a2 1373     		strb	r3, [r2, #12]
 886 00a4 4ED0     		beq	.L214
 887              	.L168:
 888 00a6 4FF0010E 		mov	lr, #1
 889 00aa 0A18     		adds	r2, r1, r0
 890 00ac 00EB0E0C 		add	ip, r0, lr
 891 00b0 C1F80CC1 		str	ip, [r1, #268]
 892 00b4 1473     		strb	r4, [r2, #12]
 893              	.L169:
 894 00b6 7644     		add	r6, r6, lr
 895              	.L170:
 896 00b8 19F80540 		ldrb	r4, [r9, r5]	@ zero_extendqisi2
 897 00bc 0135     		adds	r5, r5, #1
 898 00be A845     		cmp	r8, r5
 899 00c0 01D3     		bcc	.L157
 900 00c2 002C     		cmp	r4, #0
 901 00c4 D0D1     		bne	.L159
 902              	.L157:
 903 00c6 BAF1000F 		cmp	r10, #0
 904 00ca 0DD0     		beq	.L151
 905 00cc 7A68     		ldr	r2, [r7, #4]
 906 00ce D2F80C31 		ldr	r3, [r2, #268]
 907 00d2 B3F5807F 		cmp	r3, #256
 908 00d6 50D0     		beq	.L215
 909 00d8 0120     		movs	r0, #1
 910 00da 2221     		movs	r1, #34
 911 00dc 1C18     		adds	r4, r3, r0
 912 00de 1344     		add	r3, r3, r2
ARM GAS  /tmp/ccCMXCzU.s 			page 17


 913 00e0 C2F80C41 		str	r4, [r2, #268]
 914 00e4 1973     		strb	r1, [r3, #12]
 915              	.L175:
 916 00e6 0644     		add	r6, r6, r0
 917              	.L151:
 918 00e8 3046     		mov	r0, r6
 919 00ea 03B0     		add	sp, sp, #12
 920              		@ sp needed
 921 00ec BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 922              	.L180:
 923 00f0 5646     		mov	r6, r10
 924 00f2 A1E7     		b	.L152
 925              	.L163:
 926 00f4 222C     		cmp	r4, #34
 927 00f6 C4D0     		beq	.L164
 928 00f8 5C2C     		cmp	r4, #92
 929 00fa C2D0     		beq	.L164
 930              	.L161:
 931 00fc 7968     		ldr	r1, [r7, #4]
 932 00fe D1F80C21 		ldr	r2, [r1, #268]
 933 0102 B2F5807F 		cmp	r2, #256
 934 0106 27D0     		beq	.L216
 935 0108 0120     		movs	r0, #1
 936 010a 02EB000E 		add	lr, r2, r0
 937 010e 0A44     		add	r2, r2, r1
 938 0110 C1F80CE1 		str	lr, [r1, #268]
 939 0114 0644     		add	r6, r6, r0
 940 0116 1473     		strb	r4, [r2, #12]
 941 0118 CEE7     		b	.L170
 942              	.L181:
 943 011a 7968     		ldr	r1, [r7, #4]
 944 011c 7424     		movs	r4, #116
 945 011e D1F80C21 		ldr	r2, [r1, #268]
 946 0122 B2F5807F 		cmp	r2, #256
 947 0126 B2D1     		bne	.L206
 948              	.L213:
 949 0128 5C21     		movs	r1, #92
 950 012a 3846     		mov	r0, r7
 951 012c 0193     		str	r3, [sp, #4]
 952 012e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.6
 953 0132 8646     		mov	lr, r0
 954 0134 7968     		ldr	r1, [r7, #4]
 955 0136 019B     		ldr	r3, [sp, #4]
 956 0138 D1F80C01 		ldr	r0, [r1, #268]
 957 013c 7644     		add	r6, r6, lr
 958 013e B0F5807F 		cmp	r0, #256
 959 0142 B0D1     		bne	.L168
 960              	.L214:
 961 0144 2146     		mov	r1, r4
 962 0146 3846     		mov	r0, r7
 963 0148 0193     		str	r3, [sp, #4]
 964 014a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.6
 965 014e 019B     		ldr	r3, [sp, #4]
 966 0150 8646     		mov	lr, r0
 967 0152 B0E7     		b	.L169
 968              	.L162:
 969 0154 7224     		movs	r4, #114
ARM GAS  /tmp/ccCMXCzU.s 			page 18


 970 0156 94E7     		b	.L164
 971              	.L216:
 972 0158 2146     		mov	r1, r4
 973 015a 3846     		mov	r0, r7
 974 015c 0193     		str	r3, [sp, #4]
 975 015e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.6
 976 0162 019B     		ldr	r3, [sp, #4]
 977 0164 0644     		add	r6, r6, r0
 978 0166 A7E7     		b	.L170
 979              	.L212:
 980 0168 3846     		mov	r0, r7
 981 016a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.6
 982 016e 0644     		add	r6, r6, r0
 983 0170 72E7     		b	.L154
 984              	.L211:
 985 0172 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.6
 986 0176 0646     		mov	r6, r0
 987 0178 5EE7     		b	.L152
 988              	.L215:
 989 017a 3846     		mov	r0, r7
 990 017c 2221     		movs	r1, #34
 991 017e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.6
 992 0182 B0E7     		b	.L175
 993              		.size	_ZN12OutputBuffer12EncodeStringEPKcjbbb, .-_ZN12OutputBuffer12EncodeStringEPKcjbbb
 994              		.section	.text._ZN12OutputBuffer12EncodeStringERK9StringRefbb,"ax",%progbits
 995              		.align	1
 996              		.p2align 2,,3
 997              		.global	_ZN12OutputBuffer12EncodeStringERK9StringRefbb
 998              		.syntax unified
 999              		.thumb
 1000              		.thumb_func
 1001              		.fpu softvfp
 1002              		.type	_ZN12OutputBuffer12EncodeStringERK9StringRefbb, %function
 1003              	_ZN12OutputBuffer12EncodeStringERK9StringRefbb:
 1004              		@ args = 0, pretend = 0, frame = 0
 1005              		@ frame_needed = 0, uses_anonymous_args = 0
 1006 0000 30B5     		push	{r4, r5, lr}
 1007 0002 06C9     		ldm	r1, {r1, r2}
 1008 0004 0025     		movs	r5, #0
 1009 0006 0124     		movs	r4, #1
 1010 0008 83B0     		sub	sp, sp, #12
 1011 000a 013A     		subs	r2, r2, #1
 1012 000c 8DE83000 		stm	sp, {r4, r5}
 1013 0010 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 1014 0014 03B0     		add	sp, sp, #12
 1015              		@ sp needed
 1016 0016 30BD     		pop	{r4, r5, pc}
 1017              		.size	_ZN12OutputBuffer12EncodeStringERK9StringRefbb, .-_ZN12OutputBuffer12EncodeStringERK9StringR
 1018              		.section	.text._ZN12OutputBuffer11EncodeReplyEPS_b,"ax",%progbits
 1019              		.align	1
 1020              		.p2align 2,,3
 1021              		.global	_ZN12OutputBuffer11EncodeReplyEPS_b
 1022              		.syntax unified
 1023              		.thumb
 1024              		.thumb_func
 1025              		.fpu softvfp
 1026              		.type	_ZN12OutputBuffer11EncodeReplyEPS_b, %function
ARM GAS  /tmp/ccCMXCzU.s 			page 19


 1027              	_ZN12OutputBuffer11EncodeReplyEPS_b:
 1028              		@ args = 0, pretend = 0, frame = 0
 1029              		@ frame_needed = 0, uses_anonymous_args = 0
 1030 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1031 0004 4568     		ldr	r5, [r0, #4]
 1032 0006 83B0     		sub	sp, sp, #12
 1033 0008 D5F80C31 		ldr	r3, [r5, #268]
 1034 000c 8046     		mov	r8, r0
 1035 000e B3F5807F 		cmp	r3, #256
 1036 0012 0C46     		mov	r4, r1
 1037 0014 9146     		mov	r9, r2
 1038 0016 3AD0     		beq	.L237
 1039 0018 2222     		movs	r2, #34
 1040 001a 0126     		movs	r6, #1
 1041 001c 591C     		adds	r1, r3, #1
 1042 001e 2B44     		add	r3, r3, r5
 1043 0020 C5F80C11 		str	r1, [r5, #268]
 1044 0024 1A73     		strb	r2, [r3, #12]
 1045              	.L223:
 1046 0026 0025     		movs	r5, #0
 1047 0028 4CB9     		cbnz	r4, .L224
 1048 002a 1EE0     		b	.L221
 1049              	.L238:
 1050 002c D4F81831 		ldr	r3, [r4, #280]
 1051 0030 C4F81051 		str	r5, [r4, #272]
 1052 0034 013B     		subs	r3, r3, #1
 1053 0036 C4F81831 		str	r3, [r4, #280]
 1054 003a 3C46     		mov	r4, r7
 1055 003c AFB1     		cbz	r7, .L221
 1056              	.L224:
 1057 003e D4F80C21 		ldr	r2, [r4, #268]
 1058 0042 4B46     		mov	r3, r9
 1059 0044 0195     		str	r5, [sp, #4]
 1060 0046 0095     		str	r5, [sp]
 1061 0048 04F10C01 		add	r1, r4, #12
 1062 004c 4046     		mov	r0, r8
 1063 004e FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 1064 0052 D4F81831 		ldr	r3, [r4, #280]
 1065 0056 0644     		add	r6, r6, r0
 1066 0058 012B     		cmp	r3, #1
 1067 005a 2768     		ldr	r7, [r4]
 1068 005c E6D8     		bhi	.L238
 1069 005e 2046     		mov	r0, r4
 1070 0060 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_.part.5
 1071 0064 3C46     		mov	r4, r7
 1072 0066 002F     		cmp	r7, #0
 1073 0068 E9D1     		bne	.L224
 1074              	.L221:
 1075 006a D8F80420 		ldr	r2, [r8, #4]
 1076 006e D2F80C31 		ldr	r3, [r2, #268]
 1077 0072 B3F5807F 		cmp	r3, #256
 1078 0076 0FD0     		beq	.L239
 1079 0078 0120     		movs	r0, #1
 1080 007a 2221     		movs	r1, #34
 1081 007c 1C18     		adds	r4, r3, r0
 1082 007e 1344     		add	r3, r3, r2
 1083 0080 C2F80C41 		str	r4, [r2, #268]
ARM GAS  /tmp/ccCMXCzU.s 			page 20


 1084 0084 1973     		strb	r1, [r3, #12]
 1085              	.L228:
 1086 0086 3044     		add	r0, r0, r6
 1087 0088 03B0     		add	sp, sp, #12
 1088              		@ sp needed
 1089 008a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1090              	.L237:
 1091 008e 2221     		movs	r1, #34
 1092 0090 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.6
 1093 0094 0646     		mov	r6, r0
 1094 0096 C6E7     		b	.L223
 1095              	.L239:
 1096 0098 4046     		mov	r0, r8
 1097 009a 2221     		movs	r1, #34
 1098 009c FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.6
 1099 00a0 F1E7     		b	.L228
 1100              		.size	_ZN12OutputBuffer11EncodeReplyEPS_b, .-_ZN12OutputBuffer11EncodeReplyEPS_b
 1101 00a2 00BF     		.section	.text._ZN12OutputBuffer4copyEPKcj,"ax",%progbits
 1102              		.align	1
 1103              		.p2align 2,,3
 1104              		.global	_ZN12OutputBuffer4copyEPKcj
 1105              		.syntax unified
 1106              		.thumb
 1107              		.thumb_func
 1108              		.fpu softvfp
 1109              		.type	_ZN12OutputBuffer4copyEPKcj, %function
 1110              	_ZN12OutputBuffer4copyEPKcj:
 1111              		@ args = 0, pretend = 0, frame = 0
 1112              		@ frame_needed = 0, uses_anonymous_args = 0
 1113 0000 0368     		ldr	r3, [r0]
 1114 0002 70B5     		push	{r4, r5, r6, lr}
 1115 0004 0446     		mov	r4, r0
 1116 0006 0D46     		mov	r5, r1
 1117 0008 1646     		mov	r6, r2
 1118 000a 13B1     		cbz	r3, .L241
 1119 000c FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 1120 0010 6460     		str	r4, [r4, #4]
 1121              	.L241:
 1122 0012 0023     		movs	r3, #0
 1123 0014 3246     		mov	r2, r6
 1124 0016 2946     		mov	r1, r5
 1125 0018 C4F80C31 		str	r3, [r4, #268]
 1126 001c 2046     		mov	r0, r4
 1127 001e BDE87040 		pop	{r4, r5, r6, lr}
 1128 0022 FFF7FEBF 		b	_ZN12OutputBuffer3catEPKcj
 1129              		.size	_ZN12OutputBuffer4copyEPKcj, .-_ZN12OutputBuffer4copyEPKcj
 1130 0026 00BF     		.section	.text._ZN12OutputBuffer4copyEPKc,"ax",%progbits
 1131              		.align	1
 1132              		.p2align 2,,3
 1133              		.global	_ZN12OutputBuffer4copyEPKc
 1134              		.syntax unified
 1135              		.thumb
 1136              		.thumb_func
 1137              		.fpu softvfp
 1138              		.type	_ZN12OutputBuffer4copyEPKc, %function
 1139              	_ZN12OutputBuffer4copyEPKc:
 1140              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccCMXCzU.s 			page 21


 1141              		@ frame_needed = 0, uses_anonymous_args = 0
 1142 0000 38B5     		push	{r3, r4, r5, lr}
 1143 0002 0546     		mov	r5, r0
 1144 0004 0846     		mov	r0, r1
 1145 0006 0C46     		mov	r4, r1
 1146 0008 FFF7FEFF 		bl	strlen
 1147 000c 2146     		mov	r1, r4
 1148 000e 0246     		mov	r2, r0
 1149 0010 2846     		mov	r0, r5
 1150 0012 BDE83840 		pop	{r3, r4, r5, lr}
 1151 0016 FFF7FEBF 		b	_ZN12OutputBuffer4copyEPKcj
 1152              		.size	_ZN12OutputBuffer4copyEPKc, .-_ZN12OutputBuffer4copyEPKc
 1153 001a 00BF     		.section	.text._ZN12OutputBuffer6printfEPKcz,"ax",%progbits
 1154              		.align	1
 1155              		.p2align 2,,3
 1156              		.global	_ZN12OutputBuffer6printfEPKcz
 1157              		.syntax unified
 1158              		.thumb
 1159              		.thumb_func
 1160              		.fpu softvfp
 1161              		.type	_ZN12OutputBuffer6printfEPKcz, %function
 1162              	_ZN12OutputBuffer6printfEPKcz:
 1163              		@ args = 4, pretend = 12, frame = 264
 1164              		@ frame_needed = 0, uses_anonymous_args = 1
 1165 0000 0EB4     		push	{r1, r2, r3}
 1166 0002 30B5     		push	{r4, r5, lr}
 1167 0004 C2B0     		sub	sp, sp, #264
 1168 0006 45AC     		add	r4, sp, #276
 1169 0008 54F8042B 		ldr	r2, [r4], #4
 1170 000c 0546     		mov	r5, r0
 1171 000e 2346     		mov	r3, r4
 1172 0010 4FF48071 		mov	r1, #256
 1173 0014 02A8     		add	r0, sp, #8
 1174 0016 0194     		str	r4, [sp, #4]
 1175 0018 FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
 1176 001c 02A8     		add	r0, sp, #8
 1177 001e FFF7FEFF 		bl	strlen
 1178 0022 02A9     		add	r1, sp, #8
 1179 0024 0246     		mov	r2, r0
 1180 0026 2846     		mov	r0, r5
 1181 0028 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKcj
 1182 002c 42B0     		add	sp, sp, #264
 1183              		@ sp needed
 1184 002e BDE83040 		pop	{r4, r5, lr}
 1185 0032 03B0     		add	sp, sp, #12
 1186 0034 7047     		bx	lr
 1187              		.size	_ZN12OutputBuffer6printfEPKcz, .-_ZN12OutputBuffer6printfEPKcz
 1188 0036 00BF     		.section	.text._ZN12OutputBuffer11DiagnosticsE11MessageType,"ax",%progbits
 1189              		.align	1
 1190              		.p2align 2,,3
 1191              		.global	_ZN12OutputBuffer11DiagnosticsE11MessageType
 1192              		.syntax unified
 1193              		.thumb
 1194              		.thumb_func
 1195              		.fpu softvfp
 1196              		.type	_ZN12OutputBuffer11DiagnosticsE11MessageType, %function
 1197              	_ZN12OutputBuffer11DiagnosticsE11MessageType:
ARM GAS  /tmp/ccCMXCzU.s 			page 22


 1198              		@ args = 0, pretend = 0, frame = 0
 1199              		@ frame_needed = 0, uses_anonymous_args = 0
 1200 0000 1022     		movs	r2, #16
 1201 0002 30B5     		push	{r4, r5, lr}
 1202 0004 0749     		ldr	r1, .L252
 1203 0006 084B     		ldr	r3, .L252+4
 1204 0008 084C     		ldr	r4, .L252+8
 1205 000a 1B68     		ldr	r3, [r3]
 1206 000c 2468     		ldr	r4, [r4]
 1207 000e 0D68     		ldr	r5, [r1]
 1208 0010 83B0     		sub	sp, sp, #12
 1209 0012 0146     		mov	r1, r0
 1210 0014 0092     		str	r2, [sp]
 1211 0016 0195     		str	r5, [sp, #4]
 1212 0018 2046     		mov	r0, r4
 1213 001a 054A     		ldr	r2, .L252+12
 1214 001c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1215 0020 03B0     		add	sp, sp, #12
 1216              		@ sp needed
 1217 0022 30BD     		pop	{r4, r5, pc}
 1218              	.L253:
 1219              		.align	2
 1220              	.L252:
 1221 0024 00000000 		.word	.LANCHOR2
 1222 0028 00000000 		.word	.LANCHOR1
 1223 002c 00000000 		.word	reprap
 1224 0030 00000000 		.word	.LC0
 1225              		.size	_ZN12OutputBuffer11DiagnosticsE11MessageType, .-_ZN12OutputBuffer11DiagnosticsE11MessageType
 1226              		.section	.text._ZNV11OutputStack4PushEP12OutputBuffer,"ax",%progbits
 1227              		.align	1
 1228              		.p2align 2,,3
 1229              		.global	_ZNV11OutputStack4PushEP12OutputBuffer
 1230              		.syntax unified
 1231              		.thumb
 1232              		.thumb_func
 1233              		.fpu softvfp
 1234              		.type	_ZNV11OutputStack4PushEP12OutputBuffer, %function
 1235              	_ZNV11OutputStack4PushEP12OutputBuffer:
 1236              		@ args = 0, pretend = 0, frame = 8
 1237              		@ frame_needed = 0, uses_anonymous_args = 0
 1238 0000 30B5     		push	{r4, r5, lr}
 1239 0002 83B0     		sub	sp, sp, #12
 1240 0004 0191     		str	r1, [sp, #4]
 1241 0006 79B1     		cbz	r1, .L254
 1242 0008 0368     		ldr	r3, [r0]
 1243 000a 0D46     		mov	r5, r1
 1244 000c 032B     		cmp	r3, #3
 1245 000e 0446     		mov	r4, r0
 1246 0010 0CD9     		bls	.L261
 1247 0012 01A8     		add	r0, sp, #4
 1248 0014 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 1249 0018 0A4B     		ldr	r3, .L262
 1250 001a 1A68     		ldr	r2, [r3]
 1251 001c D2F8AC30 		ldr	r3, [r2, #172]
 1252 0020 43F00803 		orr	r3, r3, #8
 1253 0024 C2F8AC30 		str	r3, [r2, #172]
 1254              	.L254:
ARM GAS  /tmp/ccCMXCzU.s 			page 23


 1255 0028 03B0     		add	sp, sp, #12
 1256              		@ sp needed
 1257 002a 30BD     		pop	{r4, r5, pc}
 1258              	.L261:
 1259 002c FFF7FEFF 		bl	millis
 1260 0030 2368     		ldr	r3, [r4]
 1261 0032 019A     		ldr	r2, [sp, #4]
 1262 0034 591C     		adds	r1, r3, #1
 1263 0036 04EB8303 		add	r3, r4, r3, lsl #2
 1264 003a A860     		str	r0, [r5, #8]
 1265 003c 2160     		str	r1, [r4]
 1266 003e 5A60     		str	r2, [r3, #4]
 1267 0040 03B0     		add	sp, sp, #12
 1268              		@ sp needed
 1269 0042 30BD     		pop	{r4, r5, pc}
 1270              	.L263:
 1271              		.align	2
 1272              	.L262:
 1273 0044 00000000 		.word	reprap
 1274              		.size	_ZNV11OutputStack4PushEP12OutputBuffer, .-_ZNV11OutputStack4PushEP12OutputBuffer
 1275              		.section	.text._ZNV11OutputStack3PopEv,"ax",%progbits
 1276              		.align	1
 1277              		.p2align 2,,3
 1278              		.global	_ZNV11OutputStack3PopEv
 1279              		.syntax unified
 1280              		.thumb
 1281              		.thumb_func
 1282              		.fpu softvfp
 1283              		.type	_ZNV11OutputStack3PopEv, %function
 1284              	_ZNV11OutputStack3PopEv:
 1285              		@ args = 0, pretend = 0, frame = 0
 1286              		@ frame_needed = 0, uses_anonymous_args = 0
 1287              		@ link register save eliminated.
 1288 0000 0246     		mov	r2, r0
 1289 0002 0068     		ldr	r0, [r0]
 1290 0004 A0B1     		cbz	r0, .L275
 1291 0006 5068     		ldr	r0, [r2, #4]
 1292 0008 1368     		ldr	r3, [r2]
 1293 000a 012B     		cmp	r3, #1
 1294 000c 11D9     		bls	.L278
 1295 000e 0123     		movs	r3, #1
 1296 0010 10B4     		push	{r4}
 1297              	.L267:
 1298 0012 02EB8301 		add	r1, r2, r3, lsl #2
 1299 0016 4C68     		ldr	r4, [r1, #4]
 1300 0018 591E     		subs	r1, r3, #1
 1301 001a 02EB8101 		add	r1, r2, r1, lsl #2
 1302 001e 4C60     		str	r4, [r1, #4]
 1303 0020 1168     		ldr	r1, [r2]
 1304 0022 0133     		adds	r3, r3, #1
 1305 0024 9942     		cmp	r1, r3
 1306 0026 F4D8     		bhi	.L267
 1307 0028 1368     		ldr	r3, [r2]
 1308 002a 10BC     		pop	{r4}
 1309 002c 013B     		subs	r3, r3, #1
 1310 002e 1360     		str	r3, [r2]
 1311              	.L275:
ARM GAS  /tmp/ccCMXCzU.s 			page 24


 1312 0030 7047     		bx	lr
 1313              	.L278:
 1314 0032 1368     		ldr	r3, [r2]
 1315 0034 013B     		subs	r3, r3, #1
 1316 0036 1360     		str	r3, [r2]
 1317 0038 7047     		bx	lr
 1318              		.size	_ZNV11OutputStack3PopEv, .-_ZNV11OutputStack3PopEv
 1319 003a 00BF     		.section	.text._ZNVK11OutputStack12GetFirstItemEv,"ax",%progbits
 1320              		.align	1
 1321              		.p2align 2,,3
 1322              		.global	_ZNVK11OutputStack12GetFirstItemEv
 1323              		.syntax unified
 1324              		.thumb
 1325              		.thumb_func
 1326              		.fpu softvfp
 1327              		.type	_ZNVK11OutputStack12GetFirstItemEv, %function
 1328              	_ZNVK11OutputStack12GetFirstItemEv:
 1329              		@ args = 0, pretend = 0, frame = 0
 1330              		@ frame_needed = 0, uses_anonymous_args = 0
 1331              		@ link register save eliminated.
 1332 0000 0368     		ldr	r3, [r0]
 1333 0002 0BB1     		cbz	r3, .L281
 1334 0004 4068     		ldr	r0, [r0, #4]
 1335 0006 7047     		bx	lr
 1336              	.L281:
 1337 0008 1846     		mov	r0, r3
 1338 000a 7047     		bx	lr
 1339              		.size	_ZNVK11OutputStack12GetFirstItemEv, .-_ZNVK11OutputStack12GetFirstItemEv
 1340              		.section	.text._ZNV11OutputStack12SetFirstItemEP12OutputBuffer,"ax",%progbits
 1341              		.align	1
 1342              		.p2align 2,,3
 1343              		.global	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer
 1344              		.syntax unified
 1345              		.thumb
 1346              		.thumb_func
 1347              		.fpu softvfp
 1348              		.type	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer, %function
 1349              	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer:
 1350              		@ args = 0, pretend = 0, frame = 0
 1351              		@ frame_needed = 0, uses_anonymous_args = 0
 1352 0000 31B1     		cbz	r1, .L295
 1353 0002 10B5     		push	{r4, lr}
 1354 0004 4160     		str	r1, [r0, #4]
 1355 0006 0C46     		mov	r4, r1
 1356 0008 FFF7FEFF 		bl	millis
 1357 000c A060     		str	r0, [r4, #8]
 1358 000e 10BD     		pop	{r4, pc}
 1359              	.L295:
 1360 0010 0368     		ldr	r3, [r0]
 1361 0012 9BB1     		cbz	r3, .L293
 1362 0014 4368     		ldr	r3, [r0, #4]
 1363 0016 0368     		ldr	r3, [r0]
 1364 0018 012B     		cmp	r3, #1
 1365 001a 0BD9     		bls	.L287
 1366 001c 0123     		movs	r3, #1
 1367              	.L286:
 1368 001e 00EB8302 		add	r2, r0, r3, lsl #2
ARM GAS  /tmp/ccCMXCzU.s 			page 25


 1369 0022 5168     		ldr	r1, [r2, #4]
 1370 0024 5A1E     		subs	r2, r3, #1
 1371 0026 00EB8202 		add	r2, r0, r2, lsl #2
 1372 002a 5160     		str	r1, [r2, #4]
 1373 002c 0268     		ldr	r2, [r0]
 1374 002e 0133     		adds	r3, r3, #1
 1375 0030 9A42     		cmp	r2, r3
 1376 0032 F4D8     		bhi	.L286
 1377              	.L287:
 1378 0034 0368     		ldr	r3, [r0]
 1379 0036 013B     		subs	r3, r3, #1
 1380 0038 0360     		str	r3, [r0]
 1381 003a 7047     		bx	lr
 1382              	.L293:
 1383 003c 7047     		bx	lr
 1384              		.size	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer, .-_ZNV11OutputStack12SetFirstItemEP12Output
 1385 003e 00BF     		.section	.text._ZNVK11OutputStack11GetLastItemEv,"ax",%progbits
 1386              		.align	1
 1387              		.p2align 2,,3
 1388              		.global	_ZNVK11OutputStack11GetLastItemEv
 1389              		.syntax unified
 1390              		.thumb
 1391              		.thumb_func
 1392              		.fpu softvfp
 1393              		.type	_ZNVK11OutputStack11GetLastItemEv, %function
 1394              	_ZNVK11OutputStack11GetLastItemEv:
 1395              		@ args = 0, pretend = 0, frame = 0
 1396              		@ frame_needed = 0, uses_anonymous_args = 0
 1397              		@ link register save eliminated.
 1398 0000 0368     		ldr	r3, [r0]
 1399 0002 2BB1     		cbz	r3, .L298
 1400 0004 0368     		ldr	r3, [r0]
 1401 0006 013B     		subs	r3, r3, #1
 1402 0008 00EB8300 		add	r0, r0, r3, lsl #2
 1403 000c 4068     		ldr	r0, [r0, #4]
 1404 000e 7047     		bx	lr
 1405              	.L298:
 1406 0010 1846     		mov	r0, r3
 1407 0012 7047     		bx	lr
 1408              		.size	_ZNVK11OutputStack11GetLastItemEv, .-_ZNVK11OutputStack11GetLastItemEv
 1409              		.section	.text._ZNVK11OutputStack10DataLengthEv,"ax",%progbits
 1410              		.align	1
 1411              		.p2align 2,,3
 1412              		.global	_ZNVK11OutputStack10DataLengthEv
 1413              		.syntax unified
 1414              		.thumb
 1415              		.thumb_func
 1416              		.fpu softvfp
 1417              		.type	_ZNVK11OutputStack10DataLengthEv, %function
 1418              	_ZNVK11OutputStack10DataLengthEv:
 1419              		@ args = 0, pretend = 0, frame = 0
 1420              		@ frame_needed = 0, uses_anonymous_args = 0
 1421              		@ link register save eliminated.
 1422 0000 30B4     		push	{r4, r5}
 1423 0002 0546     		mov	r5, r0
 1424 0004 0068     		ldr	r0, [r0]
 1425 0006 88B1     		cbz	r0, .L299
ARM GAS  /tmp/ccCMXCzU.s 			page 26


 1426 0008 0024     		movs	r4, #0
 1427 000a 2046     		mov	r0, r4
 1428              	.L303:
 1429 000c 05EB8403 		add	r3, r5, r4, lsl #2
 1430 0010 5B68     		ldr	r3, [r3, #4]
 1431 0012 6BB1     		cbz	r3, .L304
 1432 0014 0022     		movs	r2, #0
 1433              	.L302:
 1434 0016 D3F80C11 		ldr	r1, [r3, #268]
 1435 001a 1B68     		ldr	r3, [r3]
 1436 001c 0A44     		add	r2, r2, r1
 1437 001e 002B     		cmp	r3, #0
 1438 0020 F9D1     		bne	.L302
 1439 0022 2B68     		ldr	r3, [r5]
 1440 0024 0134     		adds	r4, r4, #1
 1441 0026 A342     		cmp	r3, r4
 1442 0028 1044     		add	r0, r0, r2
 1443 002a EFD8     		bhi	.L303
 1444              	.L299:
 1445 002c 30BC     		pop	{r4, r5}
 1446 002e 7047     		bx	lr
 1447              	.L304:
 1448 0030 1A46     		mov	r2, r3
 1449 0032 2B68     		ldr	r3, [r5]
 1450 0034 0134     		adds	r4, r4, #1
 1451 0036 A342     		cmp	r3, r4
 1452 0038 1044     		add	r0, r0, r2
 1453 003a E7D8     		bhi	.L303
 1454 003c F6E7     		b	.L299
 1455              		.size	_ZNVK11OutputStack10DataLengthEv, .-_ZNVK11OutputStack10DataLengthEv
 1456 003e 00BF     		.section	.text._ZNV11OutputStack6AppendERVS_,"ax",%progbits
 1457              		.align	1
 1458              		.p2align 2,,3
 1459              		.global	_ZNV11OutputStack6AppendERVS_
 1460              		.syntax unified
 1461              		.thumb
 1462              		.thumb_func
 1463              		.fpu softvfp
 1464              		.type	_ZNV11OutputStack6AppendERVS_, %function
 1465              	_ZNV11OutputStack6AppendERVS_:
 1466              		@ args = 0, pretend = 0, frame = 0
 1467              		@ frame_needed = 0, uses_anonymous_args = 0
 1468 0000 0B68     		ldr	r3, [r1]
 1469 0002 73B3     		cbz	r3, .L319
 1470 0004 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1471 0008 0546     		mov	r5, r0
 1472 000a 0E46     		mov	r6, r1
 1473 000c 0124     		movs	r4, #1
 1474 000e DFF85480 		ldr	r8, .L324
 1475 0012 0F1D     		adds	r7, r1, #4
 1476 0014 0CE0     		b	.L315
 1477              	.L323:
 1478 0016 2146     		mov	r1, r4
 1479 0018 2A68     		ldr	r2, [r5]
 1480 001a 0134     		adds	r4, r4, #1
 1481 001c 501C     		adds	r0, r2, #1
 1482 001e 2860     		str	r0, [r5]
ARM GAS  /tmp/ccCMXCzU.s 			page 27


 1483 0020 5B68     		ldr	r3, [r3, #4]
 1484 0022 05EB8202 		add	r2, r5, r2, lsl #2
 1485 0026 5360     		str	r3, [r2, #4]
 1486 0028 3368     		ldr	r3, [r6]
 1487 002a 0437     		adds	r7, r7, #4
 1488 002c 8B42     		cmp	r3, r1
 1489 002e 16D9     		bls	.L322
 1490              	.L315:
 1491 0030 2A68     		ldr	r2, [r5]
 1492 0032 631E     		subs	r3, r4, #1
 1493 0034 032A     		cmp	r2, #3
 1494 0036 06EB8303 		add	r3, r6, r3, lsl #2
 1495 003a ECD9     		bls	.L323
 1496 003c D8F80020 		ldr	r2, [r8]
 1497 0040 3846     		mov	r0, r7
 1498 0042 D2F8AC30 		ldr	r3, [r2, #172]
 1499 0046 0437     		adds	r7, r7, #4
 1500 0048 43F00803 		orr	r3, r3, #8
 1501 004c C2F8AC30 		str	r3, [r2, #172]
 1502 0050 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 1503 0054 2146     		mov	r1, r4
 1504 0056 3368     		ldr	r3, [r6]
 1505 0058 0134     		adds	r4, r4, #1
 1506 005a 8B42     		cmp	r3, r1
 1507 005c E8D8     		bhi	.L315
 1508              	.L322:
 1509 005e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1510              	.L319:
 1511 0062 7047     		bx	lr
 1512              	.L325:
 1513              		.align	2
 1514              	.L324:
 1515 0064 00000000 		.word	reprap
 1516              		.size	_ZNV11OutputStack6AppendERVS_, .-_ZNV11OutputStack6AppendERVS_
 1517              		.section	.text._ZNV11OutputStack18IncreaseReferencesEj,"ax",%progbits
 1518              		.align	1
 1519              		.p2align 2,,3
 1520              		.global	_ZNV11OutputStack18IncreaseReferencesEj
 1521              		.syntax unified
 1522              		.thumb
 1523              		.thumb_func
 1524              		.fpu softvfp
 1525              		.type	_ZNV11OutputStack18IncreaseReferencesEj, %function
 1526              	_ZNV11OutputStack18IncreaseReferencesEj:
 1527              		@ args = 0, pretend = 0, frame = 0
 1528              		@ frame_needed = 0, uses_anonymous_args = 0
 1529              		@ link register save eliminated.
 1530 0000 0368     		ldr	r3, [r0]
 1531 0002 5BB1     		cbz	r3, .L344
 1532 0004 30B4     		push	{r4, r5}
 1533 0006 0024     		movs	r4, #0
 1534 0008 0125     		movs	r5, #1
 1535              	.L329:
 1536 000a 00EB8403 		add	r3, r0, r4, lsl #2
 1537 000e 5B68     		ldr	r3, [r3, #4]
 1538 0010 29B9     		cbnz	r1, .L345
 1539              	.L331:
ARM GAS  /tmp/ccCMXCzU.s 			page 28


 1540 0012 0368     		ldr	r3, [r0]
 1541 0014 0134     		adds	r4, r4, #1
 1542 0016 A342     		cmp	r3, r4
 1543 0018 F7D8     		bhi	.L329
 1544 001a 30BC     		pop	{r4, r5}
 1545              	.L344:
 1546 001c 7047     		bx	lr
 1547              	.L345:
 1548 001e 002B     		cmp	r3, #0
 1549 0020 F7D0     		beq	.L331
 1550 0022 D3F81821 		ldr	r2, [r3, #280]
 1551 0026 83F81451 		strb	r5, [r3, #276]
 1552 002a 0A44     		add	r2, r2, r1
 1553 002c C3F81821 		str	r2, [r3, #280]
 1554 0030 1B68     		ldr	r3, [r3]
 1555 0032 F4E7     		b	.L345
 1556              		.size	_ZNV11OutputStack18IncreaseReferencesEj, .-_ZNV11OutputStack18IncreaseReferencesEj
 1557              		.section	.text._ZNV11OutputStack10ReleaseAllEv,"ax",%progbits
 1558              		.align	1
 1559              		.p2align 2,,3
 1560              		.global	_ZNV11OutputStack10ReleaseAllEv
 1561              		.syntax unified
 1562              		.thumb
 1563              		.thumb_func
 1564              		.fpu softvfp
 1565              		.type	_ZNV11OutputStack10ReleaseAllEv, %function
 1566              	_ZNV11OutputStack10ReleaseAllEv:
 1567              		@ args = 0, pretend = 0, frame = 0
 1568              		@ frame_needed = 0, uses_anonymous_args = 0
 1569 0000 0368     		ldr	r3, [r0]
 1570 0002 70B5     		push	{r4, r5, r6, lr}
 1571 0004 0646     		mov	r6, r0
 1572 0006 5BB1     		cbz	r3, .L350
 1573 0008 0023     		movs	r3, #0
 1574 000a 051D     		adds	r5, r0, #4
 1575              	.L349:
 1576 000c 2846     		mov	r0, r5
 1577 000e 5C1C     		adds	r4, r3, #1
 1578 0010 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 1579 0014 3268     		ldr	r2, [r6]
 1580 0016 2346     		mov	r3, r4
 1581 0018 9442     		cmp	r4, r2
 1582 001a 05F10405 		add	r5, r5, #4
 1583 001e F5D3     		bcc	.L349
 1584              	.L350:
 1585 0020 0023     		movs	r3, #0
 1586 0022 3360     		str	r3, [r6]
 1587 0024 70BD     		pop	{r4, r5, r6, pc}
 1588              		.size	_ZNV11OutputStack10ReleaseAllEv, .-_ZNV11OutputStack10ReleaseAllEv
 1589              		.global	_ZN12OutputBuffer20maxUsedOutputBuffersE
 1590              		.global	_ZN12OutputBuffer17usedOutputBuffersE
 1591              		.global	_ZN12OutputBuffer17freeOutputBuffersE
 1592 0026 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1593              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1594              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1595              	_ZL28cpu_irq_prev_interrupt_state:
 1596 0000 00       		.space	1
ARM GAS  /tmp/ccCMXCzU.s 			page 29


 1597              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1598              		.align	2
 1599              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1600              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1601              	_ZL32cpu_irq_critical_section_counter:
 1602 0000 00000000 		.space	4
 1603              		.section	.bss._ZN12OutputBuffer17freeOutputBuffersE,"aw",%nobits
 1604              		.align	2
 1605              		.set	.LANCHOR0,. + 0
 1606              		.type	_ZN12OutputBuffer17freeOutputBuffersE, %object
 1607              		.size	_ZN12OutputBuffer17freeOutputBuffersE, 4
 1608              	_ZN12OutputBuffer17freeOutputBuffersE:
 1609 0000 00000000 		.space	4
 1610              		.section	.bss._ZN12OutputBuffer17usedOutputBuffersE,"aw",%nobits
 1611              		.align	2
 1612              		.set	.LANCHOR1,. + 0
 1613              		.type	_ZN12OutputBuffer17usedOutputBuffersE, %object
 1614              		.size	_ZN12OutputBuffer17usedOutputBuffersE, 4
 1615              	_ZN12OutputBuffer17usedOutputBuffersE:
 1616 0000 00000000 		.space	4
 1617              		.section	.bss._ZN12OutputBuffer20maxUsedOutputBuffersE,"aw",%nobits
 1618              		.align	2
 1619              		.set	.LANCHOR2,. + 0
 1620              		.type	_ZN12OutputBuffer20maxUsedOutputBuffersE, %object
 1621              		.size	_ZN12OutputBuffer20maxUsedOutputBuffersE, 4
 1622              	_ZN12OutputBuffer20maxUsedOutputBuffersE:
 1623 0000 00000000 		.space	4
 1624              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1625              		.align	2
 1626              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1627              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1628              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1629 0000 00000000 		.space	4
 1630              		.section	.rodata._ZN12OutputBuffer11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 1631              		.align	2
 1632              	.LC0:
 1633 0000 55736564 		.ascii	"Used output buffers: %d of %d (%d max)\012\000"
 1633      206F7574 
 1633      70757420 
 1633      62756666 
 1633      6572733A 
 1634              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
