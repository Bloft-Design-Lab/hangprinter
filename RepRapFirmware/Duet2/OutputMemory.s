ARM GAS  /tmp/cc0vfZ5B.s 			page 1


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
  14              		.section	.text._ZN12OutputBuffer7ReleaseEPS_.part.5,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu fpv4-sp-d16
  21              		.type	_ZN12OutputBuffer7ReleaseEPS_.part.5, %function
  22              	_ZN12OutputBuffer7ReleaseEPS_.part.5:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 044B     		ldr	r3, .L3
  27 0002 054A     		ldr	r2, .L3+4
  28 0004 1968     		ldr	r1, [r3]
  29 0006 0160     		str	r1, [r0]
  30 0008 1860     		str	r0, [r3]
  31 000a 1368     		ldr	r3, [r2]
  32 000c 013B     		subs	r3, r3, #1
  33 000e 1360     		str	r3, [r2]
  34 0010 7047     		bx	lr
  35              	.L4:
  36 0012 00BF     		.align	2
  37              	.L3:
  38 0014 00000000 		.word	.LANCHOR0
  39 0018 00000000 		.word	.LANCHOR1
  40              		.size	_ZN12OutputBuffer7ReleaseEPS_.part.5, .-_ZN12OutputBuffer7ReleaseEPS_.part.5
  41              		.section	.text._ZN12OutputBuffer6AppendEPS_,"ax",%progbits
  42              		.align	1
  43              		.p2align 2,,3
  44              		.global	_ZN12OutputBuffer6AppendEPS_
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu fpv4-sp-d16
  49              		.type	_ZN12OutputBuffer6AppendEPS_, %function
  50              	_ZN12OutputBuffer6AppendEPS_:
  51              		@ args = 0, pretend = 0, frame = 0
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53              		@ link register save eliminated.
  54 0000 79B1     		cbz	r1, .L5
  55 0002 4368     		ldr	r3, [r0, #4]
  56 0004 1960     		str	r1, [r3]
  57 0006 4A68     		ldr	r2, [r1, #4]
ARM GAS  /tmp/cc0vfZ5B.s 			page 2


  58 0008 4260     		str	r2, [r0, #4]
  59 000a 91F81531 		ldrb	r3, [r1, #277]	@ zero_extendqisi2
  60 000e 4BB9     		cbnz	r3, .L15
  61              	.L7:
  62 0010 0368     		ldr	r3, [r0]
  63 0012 9942     		cmp	r1, r3
  64 0014 01D1     		bne	.L8
  65 0016 04E0     		b	.L5
  66              	.L16:
  67 0018 4268     		ldr	r2, [r0, #4]
  68              	.L8:
  69 001a 5A60     		str	r2, [r3, #4]
  70 001c 1B68     		ldr	r3, [r3]
  71 001e 9942     		cmp	r1, r3
  72 0020 FAD1     		bne	.L16
  73              	.L5:
  74 0022 7047     		bx	lr
  75              	.L15:
  76 0024 0123     		movs	r3, #1
  77 0026 80F81531 		strb	r3, [r0, #277]
  78 002a F1E7     		b	.L7
  79              		.size	_ZN12OutputBuffer6AppendEPS_, .-_ZN12OutputBuffer6AppendEPS_
  80              		.section	.text._ZN12OutputBuffer18IncreaseReferencesEj,"ax",%progbits
  81              		.align	1
  82              		.p2align 2,,3
  83              		.global	_ZN12OutputBuffer18IncreaseReferencesEj
  84              		.syntax unified
  85              		.thumb
  86              		.thumb_func
  87              		.fpu fpv4-sp-d16
  88              		.type	_ZN12OutputBuffer18IncreaseReferencesEj, %function
  89              	_ZN12OutputBuffer18IncreaseReferencesEj:
  90              		@ args = 0, pretend = 0, frame = 0
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92              		@ link register save eliminated.
  93 0000 51B1     		cbz	r1, .L17
  94 0002 0122     		movs	r2, #1
  95              	.L19:
  96 0004 D0F81831 		ldr	r3, [r0, #280]
  97 0008 80F81421 		strb	r2, [r0, #276]
  98 000c 0B44     		add	r3, r3, r1
  99 000e C0F81831 		str	r3, [r0, #280]
 100 0012 0068     		ldr	r0, [r0]
 101 0014 0028     		cmp	r0, #0
 102 0016 F5D1     		bne	.L19
 103              	.L17:
 104 0018 7047     		bx	lr
 105              		.size	_ZN12OutputBuffer18IncreaseReferencesEj, .-_ZN12OutputBuffer18IncreaseReferencesEj
 106 001a 00BF     		.section	.text._ZNK12OutputBuffer6LengthEv,"ax",%progbits
 107              		.align	1
 108              		.p2align 2,,3
 109              		.global	_ZNK12OutputBuffer6LengthEv
 110              		.syntax unified
 111              		.thumb
 112              		.thumb_func
 113              		.fpu fpv4-sp-d16
 114              		.type	_ZNK12OutputBuffer6LengthEv, %function
ARM GAS  /tmp/cc0vfZ5B.s 			page 3


 115              	_ZNK12OutputBuffer6LengthEv:
 116              		@ args = 0, pretend = 0, frame = 0
 117              		@ frame_needed = 0, uses_anonymous_args = 0
 118              		@ link register save eliminated.
 119 0000 0346     		mov	r3, r0
 120 0002 0020     		movs	r0, #0
 121              	.L25:
 122 0004 D3F80C21 		ldr	r2, [r3, #268]
 123 0008 1B68     		ldr	r3, [r3]
 124 000a 1044     		add	r0, r0, r2
 125 000c 002B     		cmp	r3, #0
 126 000e F9D1     		bne	.L25
 127 0010 7047     		bx	lr
 128              		.size	_ZNK12OutputBuffer6LengthEv, .-_ZNK12OutputBuffer6LengthEv
 129 0012 00BF     		.section	.text._ZN12OutputBufferixEj,"ax",%progbits
 130              		.align	1
 131              		.p2align 2,,3
 132              		.global	_ZN12OutputBufferixEj
 133              		.syntax unified
 134              		.thumb
 135              		.thumb_func
 136              		.fpu fpv4-sp-d16
 137              		.type	_ZN12OutputBufferixEj, %function
 138              	_ZN12OutputBufferixEj:
 139              		@ args = 0, pretend = 0, frame = 0
 140              		@ frame_needed = 0, uses_anonymous_args = 0
 141              		@ link register save eliminated.
 142 0000 01E0     		b	.L31
 143              	.L29:
 144 0002 0068     		ldr	r0, [r0]
 145 0004 C91A     		subs	r1, r1, r3
 146              	.L31:
 147 0006 D0F80C31 		ldr	r3, [r0, #268]
 148 000a 9942     		cmp	r1, r3
 149 000c F9D8     		bhi	.L29
 150 000e 0C31     		adds	r1, r1, #12
 151 0010 0844     		add	r0, r0, r1
 152 0012 7047     		bx	lr
 153              		.size	_ZN12OutputBufferixEj, .-_ZN12OutputBufferixEj
 154              		.section	.text._ZNK12OutputBufferixEj,"ax",%progbits
 155              		.align	1
 156              		.p2align 2,,3
 157              		.global	_ZNK12OutputBufferixEj
 158              		.syntax unified
 159              		.thumb
 160              		.thumb_func
 161              		.fpu fpv4-sp-d16
 162              		.type	_ZNK12OutputBufferixEj, %function
 163              	_ZNK12OutputBufferixEj:
 164              		@ args = 0, pretend = 0, frame = 0
 165              		@ frame_needed = 0, uses_anonymous_args = 0
 166              		@ link register save eliminated.
 167 0000 01E0     		b	.L36
 168              	.L34:
 169 0002 0068     		ldr	r0, [r0]
 170 0004 C91A     		subs	r1, r1, r3
 171              	.L36:
ARM GAS  /tmp/cc0vfZ5B.s 			page 4


 172 0006 D0F80C31 		ldr	r3, [r0, #268]
 173 000a 9942     		cmp	r1, r3
 174 000c F9D8     		bhi	.L34
 175 000e 0844     		add	r0, r0, r1
 176 0010 007B     		ldrb	r0, [r0, #12]	@ zero_extendqisi2
 177 0012 7047     		bx	lr
 178              		.size	_ZNK12OutputBufferixEj, .-_ZNK12OutputBufferixEj
 179              		.section	.text._ZN12OutputBuffer4ReadEj,"ax",%progbits
 180              		.align	1
 181              		.p2align 2,,3
 182              		.global	_ZN12OutputBuffer4ReadEj
 183              		.syntax unified
 184              		.thumb
 185              		.thumb_func
 186              		.fpu fpv4-sp-d16
 187              		.type	_ZN12OutputBuffer4ReadEj, %function
 188              	_ZN12OutputBuffer4ReadEj:
 189              		@ args = 0, pretend = 0, frame = 0
 190              		@ frame_needed = 0, uses_anonymous_args = 0
 191              		@ link register save eliminated.
 192 0000 D0F81031 		ldr	r3, [r0, #272]
 193 0004 00F10C02 		add	r2, r0, #12
 194 0008 1944     		add	r1, r1, r3
 195 000a C0F81011 		str	r1, [r0, #272]
 196 000e D018     		adds	r0, r2, r3
 197 0010 7047     		bx	lr
 198              		.size	_ZN12OutputBuffer4ReadEj, .-_ZN12OutputBuffer4ReadEj
 199 0012 00BF     		.section	.text._ZNK12OutputBuffer11WriteToFileER8FileData,"ax",%progbits
 200              		.align	1
 201              		.p2align 2,,3
 202              		.global	_ZNK12OutputBuffer11WriteToFileER8FileData
 203              		.syntax unified
 204              		.thumb
 205              		.thumb_func
 206              		.fpu fpv4-sp-d16
 207              		.type	_ZNK12OutputBuffer11WriteToFileER8FileData, %function
 208              	_ZNK12OutputBuffer11WriteToFileER8FileData:
 209              		@ args = 0, pretend = 0, frame = 0
 210              		@ frame_needed = 0, uses_anonymous_args = 0
 211 0000 38B5     		push	{r3, r4, r5, lr}
 212 0002 0446     		mov	r4, r0
 213 0004 0D46     		mov	r5, r1
 214 0006 0020     		movs	r0, #0
 215 0008 01E0     		b	.L41
 216              	.L39:
 217 000a 2468     		ldr	r4, [r4]
 218 000c ACB1     		cbz	r4, .L50
 219              	.L41:
 220 000e D4F80C21 		ldr	r2, [r4, #268]
 221 0012 002A     		cmp	r2, #0
 222 0014 F9D0     		beq	.L39
 223 0016 04F10C01 		add	r1, r4, #12
 224 001a 2868     		ldr	r0, [r5]
 225 001c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 226 0020 60B1     		cbz	r0, .L40
 227 0022 D4F80C31 		ldr	r3, [r4, #268]
 228 0026 2344     		add	r3, r3, r4
ARM GAS  /tmp/cc0vfZ5B.s 			page 5


 229 0028 2468     		ldr	r4, [r4]
 230 002a D87A     		ldrb	r0, [r3, #11]	@ zero_extendqisi2
 231 002c A0F10A00 		sub	r0, #10
 232 0030 B0FA80F0 		clz	r0, r0
 233 0034 4009     		lsrs	r0, r0, #5
 234 0036 002C     		cmp	r4, #0
 235 0038 E9D1     		bne	.L41
 236              	.L50:
 237 003a 00B1     		cbz	r0, .L51
 238              	.L40:
 239 003c 38BD     		pop	{r3, r4, r5, pc}
 240              	.L51:
 241 003e 2868     		ldr	r0, [r5]
 242 0040 0A21     		movs	r1, #10
 243 0042 BDE83840 		pop	{r3, r4, r5, lr}
 244 0046 FFF7FEBF 		b	_ZN9FileStore5WriteEc
 245              		.size	_ZNK12OutputBuffer11WriteToFileER8FileData, .-_ZNK12OutputBuffer11WriteToFileER8FileData
 246 004a 00BF     		.section	.text._ZN12OutputBuffer4InitEv,"ax",%progbits
 247              		.align	1
 248              		.p2align 2,,3
 249              		.global	_ZN12OutputBuffer4InitEv
 250              		.syntax unified
 251              		.thumb
 252              		.thumb_func
 253              		.fpu fpv4-sp-d16
 254              		.type	_ZN12OutputBuffer4InitEv, %function
 255              	_ZN12OutputBuffer4InitEv:
 256              		@ args = 0, pretend = 0, frame = 0
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258 0000 70B5     		push	{r4, r5, r6, lr}
 259 0002 074D     		ldr	r5, .L56
 260 0004 0023     		movs	r3, #0
 261 0006 2B60     		str	r3, [r5]
 262 0008 1424     		movs	r4, #20
 263              	.L53:
 264 000a 4FF48E70 		mov	r0, #284
 265 000e 2E68     		ldr	r6, [r5]
 266 0010 FFF7FEFF 		bl	_Znwj
 267 0014 013C     		subs	r4, r4, #1
 268 0016 2860     		str	r0, [r5]
 269 0018 0660     		str	r6, [r0]
 270 001a F6D1     		bne	.L53
 271 001c 70BD     		pop	{r4, r5, r6, pc}
 272              	.L57:
 273 001e 00BF     		.align	2
 274              	.L56:
 275 0020 00000000 		.word	.LANCHOR0
 276              		.size	_ZN12OutputBuffer4InitEv, .-_ZN12OutputBuffer4InitEv
 277              		.section	.text._ZN12OutputBuffer8AllocateERPS_,"ax",%progbits
 278              		.align	1
 279              		.p2align 2,,3
 280              		.global	_ZN12OutputBuffer8AllocateERPS_
 281              		.syntax unified
 282              		.thumb
 283              		.thumb_func
 284              		.fpu fpv4-sp-d16
 285              		.type	_ZN12OutputBuffer8AllocateERPS_, %function
ARM GAS  /tmp/cc0vfZ5B.s 			page 6


 286              	_ZN12OutputBuffer8AllocateERPS_:
 287              		@ args = 0, pretend = 0, frame = 0
 288              		@ frame_needed = 0, uses_anonymous_args = 0
 289              		@ link register save eliminated.
 290 0000 1A4A     		ldr	r2, .L66
 291 0002 1368     		ldr	r3, [r2]
 292 0004 0360     		str	r3, [r0]
 293 0006 33B3     		cbz	r3, .L59
 294 0008 10B4     		push	{r4}
 295 000a 1968     		ldr	r1, [r3]
 296 000c 184B     		ldr	r3, .L66+4
 297 000e 1160     		str	r1, [r2]
 298 0010 1A68     		ldr	r2, [r3]
 299 0012 1849     		ldr	r1, .L66+8
 300 0014 0132     		adds	r2, r2, #1
 301 0016 1A60     		str	r2, [r3]
 302 0018 1C68     		ldr	r4, [r3]
 303 001a 0A68     		ldr	r2, [r1]
 304 001c 9442     		cmp	r4, r2
 305 001e 84BF     		itt	hi
 306 0020 1B68     		ldrhi	r3, [r3]
 307 0022 0B60     		strhi	r3, [r1]
 308 0024 0368     		ldr	r3, [r0]
 309 0026 0022     		movs	r2, #0
 310 0028 1A60     		str	r2, [r3]
 311 002a 0368     		ldr	r3, [r0]
 312 002c 5B60     		str	r3, [r3, #4]
 313 002e 0368     		ldr	r3, [r0]
 314 0030 C3F81021 		str	r2, [r3, #272]
 315 0034 0368     		ldr	r3, [r0]
 316 0036 C3F80C21 		str	r2, [r3, #268]
 317 003a 0168     		ldr	r1, [r0]
 318 003c 0123     		movs	r3, #1
 319 003e C1F81831 		str	r3, [r1, #280]
 320 0042 0168     		ldr	r1, [r0]
 321 0044 81F81421 		strb	r2, [r1, #276]
 322 0048 0168     		ldr	r1, [r0]
 323 004a 81F81521 		strb	r2, [r1, #277]
 324 004e 1846     		mov	r0, r3
 325 0050 5DF8044B 		ldr	r4, [sp], #4
 326 0054 7047     		bx	lr
 327              	.L59:
 328 0056 084A     		ldr	r2, .L66+12
 329 0058 1168     		ldr	r1, [r2]	@ unaligned
 330 005a D1F8C020 		ldr	r2, [r1, #192]
 331 005e 42F00402 		orr	r2, r2, #4
 332 0062 1846     		mov	r0, r3
 333 0064 C1F8C020 		str	r2, [r1, #192]
 334 0068 7047     		bx	lr
 335              	.L67:
 336 006a 00BF     		.align	2
 337              	.L66:
 338 006c 00000000 		.word	.LANCHOR0
 339 0070 00000000 		.word	.LANCHOR1
 340 0074 00000000 		.word	.LANCHOR2
 341 0078 00000000 		.word	reprap
 342              		.size	_ZN12OutputBuffer8AllocateERPS_, .-_ZN12OutputBuffer8AllocateERPS_
ARM GAS  /tmp/cc0vfZ5B.s 			page 7


 343              		.section	.text._ZN12OutputBuffer3catEPKcj,"ax",%progbits
 344              		.align	1
 345              		.p2align 2,,3
 346              		.global	_ZN12OutputBuffer3catEPKcj
 347              		.syntax unified
 348              		.thumb
 349              		.thumb_func
 350              		.fpu fpv4-sp-d16
 351              		.type	_ZN12OutputBuffer3catEPKcj, %function
 352              	_ZN12OutputBuffer3catEPKcj:
 353              		@ args = 0, pretend = 0, frame = 8
 354              		@ frame_needed = 0, uses_anonymous_args = 0
 355 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 356 0004 82B0     		sub	sp, sp, #8
 357 0006 002A     		cmp	r2, #0
 358 0008 3ED0     		beq	.L76
 359 000a 1646     		mov	r6, r2
 360 000c 0F46     		mov	r7, r1
 361 000e 8046     		mov	r8, r0
 362 0010 0025     		movs	r5, #0
 363 0012 15E0     		b	.L75
 364              	.L70:
 365 0014 741B     		subs	r4, r6, r5
 366 0016 C0F58072 		rsb	r2, r0, #256
 367 001a 9442     		cmp	r4, r2
 368 001c 28BF     		it	cs
 369 001e 1446     		movcs	r4, r2
 370 0020 0C33     		adds	r3, r3, #12
 371 0022 2246     		mov	r2, r4
 372 0024 1844     		add	r0, r0, r3
 373 0026 7919     		adds	r1, r7, r5
 374 0028 FFF7FEFF 		bl	memcpy
 375 002c D8F80420 		ldr	r2, [r8, #4]
 376 0030 D2F80C31 		ldr	r3, [r2, #268]
 377 0034 2544     		add	r5, r5, r4
 378 0036 AE42     		cmp	r6, r5
 379 0038 1C44     		add	r4, r4, r3
 380 003a C2F80C41 		str	r4, [r2, #268]
 381 003e 24D9     		bls	.L68
 382              	.L75:
 383 0040 D8F80430 		ldr	r3, [r8, #4]
 384 0044 D3F80C01 		ldr	r0, [r3, #268]
 385 0048 B0F5807F 		cmp	r0, #256
 386 004c E2D1     		bne	.L70
 387 004e 01A8     		add	r0, sp, #4
 388 0050 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 389 0054 E8B1     		cbz	r0, .L79
 390 0056 019B     		ldr	r3, [sp, #4]
 391 0058 D8F81821 		ldr	r2, [r8, #280]
 392 005c C3F81821 		str	r2, [r3, #280]
 393 0060 D8F80420 		ldr	r2, [r8, #4]
 394 0064 1360     		str	r3, [r2]
 395 0066 0199     		ldr	r1, [sp, #4]
 396 0068 D8F80020 		ldr	r2, [r8]
 397 006c 4B68     		ldr	r3, [r1, #4]
 398 006e C8F80430 		str	r3, [r8, #4]
 399 0072 9142     		cmp	r1, r2
ARM GAS  /tmp/cc0vfZ5B.s 			page 8


 400 0074 05D0     		beq	.L72
 401              	.L74:
 402 0076 5360     		str	r3, [r2, #4]
 403 0078 1268     		ldr	r2, [r2]
 404 007a D8F80430 		ldr	r3, [r8, #4]
 405 007e 9142     		cmp	r1, r2
 406 0080 F9D1     		bne	.L74
 407              	.L72:
 408 0082 D3F80C01 		ldr	r0, [r3, #268]
 409 0086 C5E7     		b	.L70
 410              	.L76:
 411 0088 1546     		mov	r5, r2
 412              	.L68:
 413 008a 2846     		mov	r0, r5
 414 008c 02B0     		add	sp, sp, #8
 415              		@ sp needed
 416 008e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 417              	.L79:
 418 0092 0123     		movs	r3, #1
 419 0094 88F81531 		strb	r3, [r8, #277]
 420 0098 F7E7     		b	.L68
 421              		.size	_ZN12OutputBuffer3catEPKcj, .-_ZN12OutputBuffer3catEPKcj
 422 009a 00BF     		.section	.text._ZN12OutputBuffer3catEPKc,"ax",%progbits
 423              		.align	1
 424              		.p2align 2,,3
 425              		.global	_ZN12OutputBuffer3catEPKc
 426              		.syntax unified
 427              		.thumb
 428              		.thumb_func
 429              		.fpu fpv4-sp-d16
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
 452              		.fpu fpv4-sp-d16
 453              		.type	_ZN12OutputBuffer7vprintfEPKcSt9__va_list, %function
 454              	_ZN12OutputBuffer7vprintfEPKcSt9__va_list:
 455              		@ args = 0, pretend = 0, frame = 1024
 456              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cc0vfZ5B.s 			page 9


 457 0000 10B5     		push	{r4, lr}
 458 0002 ADF5806D 		sub	sp, sp, #1024
 459 0006 1346     		mov	r3, r2
 460 0008 0446     		mov	r4, r0
 461 000a 0A46     		mov	r2, r1
 462 000c 6846     		mov	r0, sp
 463 000e 4FF48061 		mov	r1, #1024
 464 0012 FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
 465 0016 6846     		mov	r0, sp
 466 0018 FFF7FEFF 		bl	strlen
 467 001c 6946     		mov	r1, sp
 468 001e 0246     		mov	r2, r0
 469 0020 2046     		mov	r0, r4
 470 0022 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKcj
 471 0026 0DF5806D 		add	sp, sp, #1024
 472              		@ sp needed
 473 002a 10BD     		pop	{r4, pc}
 474              		.size	_ZN12OutputBuffer7vprintfEPKcSt9__va_list, .-_ZN12OutputBuffer7vprintfEPKcSt9__va_list
 475              		.section	.text._ZN12OutputBuffer4catfEPKcz,"ax",%progbits
 476              		.align	1
 477              		.p2align 2,,3
 478              		.global	_ZN12OutputBuffer4catfEPKcz
 479              		.syntax unified
 480              		.thumb
 481              		.thumb_func
 482              		.fpu fpv4-sp-d16
 483              		.type	_ZN12OutputBuffer4catfEPKcz, %function
 484              	_ZN12OutputBuffer4catfEPKcz:
 485              		@ args = 4, pretend = 12, frame = 1032
 486              		@ frame_needed = 0, uses_anonymous_args = 1
 487 0000 0EB4     		push	{r1, r2, r3}
 488 0002 10B5     		push	{r4, lr}
 489 0004 ADF20C4D 		subw	sp, sp, #1036
 490 0008 0DF21443 		addw	r3, sp, #1044
 491 000c 0446     		mov	r4, r0
 492 000e 53F8042B 		ldr	r2, [r3], #4
 493 0012 0193     		str	r3, [sp, #4]
 494 0014 4FF48061 		mov	r1, #1024
 495 0018 02A8     		add	r0, sp, #8
 496 001a FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
 497 001e 0023     		movs	r3, #0
 498 0020 02A8     		add	r0, sp, #8
 499 0022 8DF80734 		strb	r3, [sp, #1031]
 500 0026 FFF7FEFF 		bl	strlen
 501 002a 02A9     		add	r1, sp, #8
 502 002c 0246     		mov	r2, r0
 503 002e 2046     		mov	r0, r4
 504 0030 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKcj
 505 0034 0DF20C4D 		addw	sp, sp, #1036
 506              		@ sp needed
 507 0038 BDE81040 		pop	{r4, lr}
 508 003c 03B0     		add	sp, sp, #12
 509 003e 7047     		bx	lr
 510              		.size	_ZN12OutputBuffer4catfEPKcz, .-_ZN12OutputBuffer4catfEPKcz
 511              		.section	.text._ZN12OutputBuffer3catER9StringRef,"ax",%progbits
 512              		.align	1
 513              		.p2align 2,,3
ARM GAS  /tmp/cc0vfZ5B.s 			page 10


 514              		.global	_ZN12OutputBuffer3catER9StringRef
 515              		.syntax unified
 516              		.thumb
 517              		.thumb_func
 518              		.fpu fpv4-sp-d16
 519              		.type	_ZN12OutputBuffer3catER9StringRef, %function
 520              	_ZN12OutputBuffer3catER9StringRef:
 521              		@ args = 0, pretend = 0, frame = 0
 522              		@ frame_needed = 0, uses_anonymous_args = 0
 523 0000 38B5     		push	{r3, r4, r5, lr}
 524 0002 0446     		mov	r4, r0
 525 0004 0846     		mov	r0, r1
 526 0006 0D68     		ldr	r5, [r1]
 527 0008 FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 528 000c 2946     		mov	r1, r5
 529 000e 0246     		mov	r2, r0
 530 0010 2046     		mov	r0, r4
 531 0012 BDE83840 		pop	{r3, r4, r5, lr}
 532 0016 FFF7FEBF 		b	_ZN12OutputBuffer3catEPKcj
 533              		.size	_ZN12OutputBuffer3catER9StringRef, .-_ZN12OutputBuffer3catER9StringRef
 534 001a 00BF     		.section	.text._ZN12OutputBuffer12GetBytesLeftEPKS_,"ax",%progbits
 535              		.align	1
 536              		.p2align 2,,3
 537              		.global	_ZN12OutputBuffer12GetBytesLeftEPKS_
 538              		.syntax unified
 539              		.thumb
 540              		.thumb_func
 541              		.fpu fpv4-sp-d16
 542              		.type	_ZN12OutputBuffer12GetBytesLeftEPKS_, %function
 543              	_ZN12OutputBuffer12GetBytesLeftEPKS_:
 544              		@ args = 0, pretend = 0, frame = 0
 545              		@ frame_needed = 0, uses_anonymous_args = 0
 546              		@ link register save eliminated.
 547 0000 084B     		ldr	r3, .L90
 548 0002 4268     		ldr	r2, [r0, #4]
 549 0004 1B68     		ldr	r3, [r3]
 550 0006 D2F80C01 		ldr	r0, [r2, #268]
 551 000a C3F11402 		rsb	r2, r3, #20
 552 000e 032A     		cmp	r2, #3
 553 0010 C0F58070 		rsb	r0, r0, #256
 554 0014 04D9     		bls	.L88
 555 0016 C3F18073 		rsb	r3, r3, #16777216
 556 001a 1033     		adds	r3, r3, #16
 557 001c 00EB0320 		add	r0, r0, r3, lsl #8
 558              	.L88:
 559 0020 7047     		bx	lr
 560              	.L91:
 561 0022 00BF     		.align	2
 562              	.L90:
 563 0024 00000000 		.word	.LANCHOR1
 564              		.size	_ZN12OutputBuffer12GetBytesLeftEPKS_, .-_ZN12OutputBuffer12GetBytesLeftEPKS_
 565              		.section	.text._ZN12OutputBuffer8TruncateEPS_j,"ax",%progbits
 566              		.align	1
 567              		.p2align 2,,3
 568              		.global	_ZN12OutputBuffer8TruncateEPS_j
 569              		.syntax unified
 570              		.thumb
ARM GAS  /tmp/cc0vfZ5B.s 			page 11


 571              		.thumb_func
 572              		.fpu fpv4-sp-d16
 573              		.type	_ZN12OutputBuffer8TruncateEPS_j, %function
 574              	_ZN12OutputBuffer8TruncateEPS_j:
 575              		@ args = 0, pretend = 0, frame = 0
 576              		@ frame_needed = 0, uses_anonymous_args = 0
 577 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 578 0002 0546     		mov	r5, r0
 579 0004 40B3     		cbz	r0, .L102
 580 0006 0068     		ldr	r0, [r0]
 581 0008 30B3     		cbz	r0, .L102
 582 000a 95F81461 		ldrb	r6, [r5, #276]	@ zero_extendqisi2
 583 000e 0F46     		mov	r7, r1
 584 0010 16BB     		cbnz	r6, .L102
 585              	.L98:
 586 0012 2C46     		mov	r4, r5
 587 0014 01E0     		b	.L94
 588              	.L103:
 589 0016 0446     		mov	r4, r0
 590 0018 1846     		mov	r0, r3
 591              	.L94:
 592 001a 0368     		ldr	r3, [r0]
 593 001c 002B     		cmp	r3, #0
 594 001e FAD1     		bne	.L103
 595 0020 2360     		str	r3, [r4]
 596 0022 D0F81821 		ldr	r2, [r0, #280]
 597 0026 012A     		cmp	r2, #1
 598 0028 19D9     		bls	.L95
 599 002a D0F81821 		ldr	r2, [r0, #280]
 600 002e C0F81031 		str	r3, [r0, #272]
 601 0032 013A     		subs	r2, r2, #1
 602 0034 C0F81821 		str	r2, [r0, #280]
 603              	.L96:
 604 0038 AC42     		cmp	r4, r5
 605 003a 06F58076 		add	r6, r6, #256
 606 003e 2868     		ldr	r0, [r5]
 607 0040 05D0     		beq	.L99
 608 0042 BE42     		cmp	r6, r7
 609 0044 E5D3     		bcc	.L98
 610 0046 6C60     		str	r4, [r5, #4]
 611 0048 20B1     		cbz	r0, .L92
 612              	.L109:
 613 004a 0546     		mov	r5, r0
 614 004c 0068     		ldr	r0, [r0]
 615              	.L99:
 616 004e 6C60     		str	r4, [r5, #4]
 617 0050 0028     		cmp	r0, #0
 618 0052 FAD1     		bne	.L109
 619              	.L92:
 620 0054 3046     		mov	r0, r6
 621 0056 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 622              	.L102:
 623 0058 0026     		movs	r6, #0
 624 005a 3046     		mov	r0, r6
 625 005c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 626              	.L95:
 627 005e FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_.part.5
ARM GAS  /tmp/cc0vfZ5B.s 			page 12


 628 0062 E9E7     		b	.L96
 629              		.size	_ZN12OutputBuffer8TruncateEPS_j, .-_ZN12OutputBuffer8TruncateEPS_j
 630              		.section	.text._ZN12OutputBuffer7ReleaseEPS_,"ax",%progbits
 631              		.align	1
 632              		.p2align 2,,3
 633              		.global	_ZN12OutputBuffer7ReleaseEPS_
 634              		.syntax unified
 635              		.thumb
 636              		.thumb_func
 637              		.fpu fpv4-sp-d16
 638              		.type	_ZN12OutputBuffer7ReleaseEPS_, %function
 639              	_ZN12OutputBuffer7ReleaseEPS_:
 640              		@ args = 0, pretend = 0, frame = 0
 641              		@ frame_needed = 0, uses_anonymous_args = 0
 642 0000 10B5     		push	{r4, lr}
 643 0002 D0F81821 		ldr	r2, [r0, #280]
 644 0006 0468     		ldr	r4, [r0]
 645 0008 012A     		cmp	r2, #1
 646 000a 09D9     		bls	.L111
 647 000c D0F81821 		ldr	r2, [r0, #280]
 648 0010 0021     		movs	r1, #0
 649 0012 013A     		subs	r2, r2, #1
 650 0014 C0F81821 		str	r2, [r0, #280]
 651 0018 C0F81011 		str	r1, [r0, #272]
 652 001c 2046     		mov	r0, r4
 653 001e 10BD     		pop	{r4, pc}
 654              	.L111:
 655 0020 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_.part.5
 656 0024 2046     		mov	r0, r4
 657 0026 10BD     		pop	{r4, pc}
 658              		.size	_ZN12OutputBuffer7ReleaseEPS_, .-_ZN12OutputBuffer7ReleaseEPS_
 659              		.section	.text._ZN12OutputBuffer10ReleaseAllERVPS_,"ax",%progbits
 660              		.align	1
 661              		.p2align 2,,3
 662              		.global	_ZN12OutputBuffer10ReleaseAllERVPS_
 663              		.syntax unified
 664              		.thumb
 665              		.thumb_func
 666              		.fpu fpv4-sp-d16
 667              		.type	_ZN12OutputBuffer10ReleaseAllERVPS_, %function
 668              	_ZN12OutputBuffer10ReleaseAllERVPS_:
 669              		@ args = 0, pretend = 0, frame = 0
 670              		@ frame_needed = 0, uses_anonymous_args = 0
 671 0000 0368     		ldr	r3, [r0]
 672 0002 D3B1     		cbz	r3, .L124
 673 0004 70B5     		push	{r4, r5, r6, lr}
 674 0006 0446     		mov	r4, r0
 675 0008 0026     		movs	r6, #0
 676 000a 09E0     		b	.L118
 677              	.L128:
 678 000c D0F81831 		ldr	r3, [r0, #280]
 679 0010 C0F81061 		str	r6, [r0, #272]
 680 0014 013B     		subs	r3, r3, #1
 681 0016 C0F81831 		str	r3, [r0, #280]
 682 001a 2560     		str	r5, [r4]
 683 001c 2368     		ldr	r3, [r4]
 684 001e 5BB1     		cbz	r3, .L127
ARM GAS  /tmp/cc0vfZ5B.s 			page 13


 685              	.L118:
 686 0020 2068     		ldr	r0, [r4]
 687 0022 D0F81831 		ldr	r3, [r0, #280]
 688 0026 0568     		ldr	r5, [r0]
 689 0028 012B     		cmp	r3, #1
 690 002a EFD8     		bhi	.L128
 691 002c FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_.part.5
 692 0030 2560     		str	r5, [r4]
 693 0032 2368     		ldr	r3, [r4]
 694 0034 002B     		cmp	r3, #0
 695 0036 F3D1     		bne	.L118
 696              	.L127:
 697 0038 70BD     		pop	{r4, r5, r6, pc}
 698              	.L124:
 699 003a 7047     		bx	lr
 700              		.size	_ZN12OutputBuffer10ReleaseAllERVPS_, .-_ZN12OutputBuffer10ReleaseAllERVPS_
 701              		.section	.text._ZN12OutputBuffer4copyEc,"ax",%progbits
 702              		.align	1
 703              		.p2align 2,,3
 704              		.global	_ZN12OutputBuffer4copyEc
 705              		.syntax unified
 706              		.thumb
 707              		.thumb_func
 708              		.fpu fpv4-sp-d16
 709              		.type	_ZN12OutputBuffer4copyEc, %function
 710              	_ZN12OutputBuffer4copyEc:
 711              		@ args = 0, pretend = 0, frame = 0
 712              		@ frame_needed = 0, uses_anonymous_args = 0
 713 0000 38B5     		push	{r3, r4, r5, lr}
 714 0002 0368     		ldr	r3, [r0]
 715 0004 0446     		mov	r4, r0
 716 0006 0D46     		mov	r5, r1
 717 0008 13B1     		cbz	r3, .L130
 718 000a FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 719 000e 6460     		str	r4, [r4, #4]
 720              	.L130:
 721 0010 0120     		movs	r0, #1
 722 0012 2573     		strb	r5, [r4, #12]
 723 0014 C4F80C01 		str	r0, [r4, #268]
 724 0018 38BD     		pop	{r3, r4, r5, pc}
 725              		.size	_ZN12OutputBuffer4copyEc, .-_ZN12OutputBuffer4copyEc
 726 001a 00BF     		.section	.text._ZN12OutputBuffer3catEc.part.6,"ax",%progbits
 727              		.align	1
 728              		.p2align 2,,3
 729              		.syntax unified
 730              		.thumb
 731              		.thumb_func
 732              		.fpu fpv4-sp-d16
 733              		.type	_ZN12OutputBuffer3catEc.part.6, %function
 734              	_ZN12OutputBuffer3catEc.part.6:
 735              		@ args = 0, pretend = 0, frame = 8
 736              		@ frame_needed = 0, uses_anonymous_args = 0
 737 0000 70B5     		push	{r4, r5, r6, lr}
 738 0002 82B0     		sub	sp, sp, #8
 739 0004 0446     		mov	r4, r0
 740 0006 01A8     		add	r0, sp, #4
 741 0008 0E46     		mov	r6, r1
ARM GAS  /tmp/cc0vfZ5B.s 			page 14


 742 000a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 743 000e E8B1     		cbz	r0, .L144
 744 0010 019D     		ldr	r5, [sp, #4]
 745 0012 D4F81821 		ldr	r2, [r4, #280]
 746 0016 2B68     		ldr	r3, [r5]
 747 0018 C5F81821 		str	r2, [r5, #280]
 748 001c A3B1     		cbz	r3, .L141
 749 001e 2846     		mov	r0, r5
 750 0020 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 751 0024 019A     		ldr	r2, [sp, #4]
 752 0026 6D60     		str	r5, [r5, #4]
 753              	.L138:
 754 0028 0123     		movs	r3, #1
 755 002a 2E73     		strb	r6, [r5, #12]
 756 002c C5F80C31 		str	r3, [r5, #268]
 757 0030 6368     		ldr	r3, [r4, #4]
 758 0032 1A60     		str	r2, [r3]
 759 0034 019B     		ldr	r3, [sp, #4]
 760 0036 9C42     		cmp	r4, r3
 761 0038 03D0     		beq	.L139
 762              	.L140:
 763 003a 6360     		str	r3, [r4, #4]
 764 003c 2468     		ldr	r4, [r4]
 765 003e 9C42     		cmp	r4, r3
 766 0040 FBD1     		bne	.L140
 767              	.L139:
 768 0042 0120     		movs	r0, #1
 769 0044 02B0     		add	sp, sp, #8
 770              		@ sp needed
 771 0046 70BD     		pop	{r4, r5, r6, pc}
 772              	.L141:
 773 0048 2A46     		mov	r2, r5
 774 004a EDE7     		b	.L138
 775              	.L144:
 776 004c 0123     		movs	r3, #1
 777 004e 84F81531 		strb	r3, [r4, #277]
 778 0052 02B0     		add	sp, sp, #8
 779              		@ sp needed
 780 0054 70BD     		pop	{r4, r5, r6, pc}
 781              		.size	_ZN12OutputBuffer3catEc.part.6, .-_ZN12OutputBuffer3catEc.part.6
 782 0056 00BF     		.section	.text._ZN12OutputBuffer3catEc,"ax",%progbits
 783              		.align	1
 784              		.p2align 2,,3
 785              		.global	_ZN12OutputBuffer3catEc
 786              		.syntax unified
 787              		.thumb
 788              		.thumb_func
 789              		.fpu fpv4-sp-d16
 790              		.type	_ZN12OutputBuffer3catEc, %function
 791              	_ZN12OutputBuffer3catEc:
 792              		@ args = 0, pretend = 0, frame = 0
 793              		@ frame_needed = 0, uses_anonymous_args = 0
 794              		@ link register save eliminated.
 795 0000 4268     		ldr	r2, [r0, #4]
 796 0002 D2F80C31 		ldr	r3, [r2, #268]
 797 0006 B3F5807F 		cmp	r3, #256
 798 000a 0AD0     		beq	.L149
ARM GAS  /tmp/cc0vfZ5B.s 			page 15


 799 000c 10B4     		push	{r4}
 800 000e 0C46     		mov	r4, r1
 801 0010 D118     		adds	r1, r2, r3
 802 0012 0133     		adds	r3, r3, #1
 803 0014 C2F80C31 		str	r3, [r2, #268]
 804 0018 0C73     		strb	r4, [r1, #12]
 805 001a 0120     		movs	r0, #1
 806 001c 5DF8044B 		ldr	r4, [sp], #4
 807 0020 7047     		bx	lr
 808              	.L149:
 809 0022 FFF7FEBF 		b	_ZN12OutputBuffer3catEc.part.6
 810              		.size	_ZN12OutputBuffer3catEc, .-_ZN12OutputBuffer3catEc
 811 0026 00BF     		.section	.text._ZN12OutputBuffer12EncodeStringEPKcjbbb,"ax",%progbits
 812              		.align	1
 813              		.p2align 2,,3
 814              		.global	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 815              		.syntax unified
 816              		.thumb
 817              		.thumb_func
 818              		.fpu fpv4-sp-d16
 819              		.type	_ZN12OutputBuffer12EncodeStringEPKcjbbb, %function
 820              	_ZN12OutputBuffer12EncodeStringEPKcjbbb:
 821              		@ args = 8, pretend = 0, frame = 8
 822              		@ frame_needed = 0, uses_anonymous_args = 0
 823 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 824 0004 83B0     		sub	sp, sp, #12
 825 0006 8846     		mov	r8, r1
 826 0008 9DF830A0 		ldrb	r10, [sp, #48]	@ zero_extendqisi2
 827 000c 9DF83440 		ldrb	r4, [sp, #52]	@ zero_extendqisi2
 828 0010 0193     		str	r3, [sp, #4]
 829 0012 9146     		mov	r9, r2
 830 0014 0746     		mov	r7, r0
 831 0016 BAF1000F 		cmp	r10, #0
 832 001a 00F08680 		beq	.L176
 833 001e 4268     		ldr	r2, [r0, #4]
 834 0020 D2F80C31 		ldr	r3, [r2, #268]
 835 0024 B3F5807F 		cmp	r3, #256
 836 0028 00F09E80 		beq	.L204
 837 002c D118     		adds	r1, r2, r3
 838 002e 2220     		movs	r0, #34
 839 0030 0133     		adds	r3, r3, #1
 840 0032 C2F80C31 		str	r3, [r2, #268]
 841 0036 0125     		movs	r5, #1
 842 0038 0873     		strb	r0, [r1, #12]
 843              	.L151:
 844 003a 74B1     		cbz	r4, .L153
 845 003c 7A68     		ldr	r2, [r7, #4]
 846 003e D2F80C31 		ldr	r3, [r2, #268]
 847 0042 B3F5807F 		cmp	r3, #256
 848 0046 00F08980 		beq	.L205
 849 004a D118     		adds	r1, r2, r3
 850 004c 2A24     		movs	r4, #42
 851 004e 0133     		adds	r3, r3, #1
 852 0050 0120     		movs	r0, #1
 853 0052 C2F80C31 		str	r3, [r2, #268]
 854 0056 0544     		add	r5, r5, r0
 855 0058 0C73     		strb	r4, [r1, #12]
ARM GAS  /tmp/cc0vfZ5B.s 			page 16


 856              	.L153:
 857 005a B9F1000F 		cmp	r9, #0
 858 005e 4FD0     		beq	.L156
 859 0060 98F80040 		ldrb	r4, [r8]	@ zero_extendqisi2
 860 0064 08F10106 		add	r6, r8, #1
 861 0068 002C     		cmp	r4, #0
 862 006a 49D0     		beq	.L156
 863 006c 4FF05C0B 		mov	fp, #92
 864 0070 26E0     		b	.L157
 865              	.L207:
 866 0072 092C     		cmp	r4, #9
 867 0074 6AD0     		beq	.L177
 868 0076 0A2C     		cmp	r4, #10
 869 0078 30D1     		bne	.L159
 870 007a 6E24     		movs	r4, #110
 871              	.L162:
 872 007c B1F5807F 		cmp	r1, #256
 873 0080 5FD0     		beq	.L206
 874              	.L165:
 875 0082 02EB010C 		add	ip, r2, r1
 876 0086 0131     		adds	r1, r1, #1
 877 0088 C2F80C11 		str	r1, [r2, #268]
 878 008c 0120     		movs	r0, #1
 879 008e 8CF80CB0 		strb	fp, [ip, #12]
 880              	.L166:
 881 0092 7968     		ldr	r1, [r7, #4]
 882 0094 D1F80C21 		ldr	r2, [r1, #268]
 883 0098 B2F5807F 		cmp	r2, #256
 884 009c 0544     		add	r5, r5, r0
 885 009e 46D0     		beq	.L203
 886 00a0 01EB020C 		add	ip, r1, r2
 887 00a4 0132     		adds	r2, r2, #1
 888 00a6 C1F80C21 		str	r2, [r1, #268]
 889 00aa 0120     		movs	r0, #1
 890 00ac 8CF80C40 		strb	r4, [ip, #12]
 891              	.L171:
 892 00b0 16F8014B 		ldrb	r4, [r6], #1	@ zero_extendqisi2
 893 00b4 A6EB0802 		sub	r2, r6, r8
 894 00b8 9145     		cmp	r9, r2
 895 00ba 0544     		add	r5, r5, r0
 896 00bc 20D3     		bcc	.L156
 897              	.L172:
 898 00be FCB1     		cbz	r4, .L156
 899              	.L157:
 900 00c0 1F2C     		cmp	r4, #31
 901 00c2 01D8     		bhi	.L158
 902 00c4 019B     		ldr	r3, [sp, #4]
 903 00c6 DBB1     		cbz	r3, .L156
 904              	.L158:
 905 00c8 7A68     		ldr	r2, [r7, #4]
 906 00ca 0D2C     		cmp	r4, #13
 907 00cc D2F80C11 		ldr	r1, [r2, #268]
 908 00d0 32D0     		beq	.L160
 909 00d2 CED9     		bls	.L207
 910 00d4 222C     		cmp	r4, #34
 911 00d6 D1D0     		beq	.L162
 912 00d8 5C2C     		cmp	r4, #92
ARM GAS  /tmp/cc0vfZ5B.s 			page 17


 913 00da CFD0     		beq	.L162
 914              	.L159:
 915 00dc B1F5807F 		cmp	r1, #256
 916 00e0 25D0     		beq	.L203
 917 00e2 02EB010C 		add	ip, r2, r1
 918 00e6 0131     		adds	r1, r1, #1
 919 00e8 C2F80C11 		str	r1, [r2, #268]
 920 00ec 8CF80C40 		strb	r4, [ip, #12]
 921 00f0 16F8014B 		ldrb	r4, [r6], #1	@ zero_extendqisi2
 922 00f4 A6EB0802 		sub	r2, r6, r8
 923 00f8 0120     		movs	r0, #1
 924 00fa 9145     		cmp	r9, r2
 925 00fc 0544     		add	r5, r5, r0
 926 00fe DED2     		bcs	.L172
 927              	.L156:
 928 0100 BAF1000F 		cmp	r10, #0
 929 0104 0DD0     		beq	.L150
 930 0106 7A68     		ldr	r2, [r7, #4]
 931 0108 D2F80C31 		ldr	r3, [r2, #268]
 932 010c B3F5807F 		cmp	r3, #256
 933 0110 1ED0     		beq	.L208
 934 0112 D118     		adds	r1, r2, r3
 935 0114 2224     		movs	r4, #34
 936 0116 0133     		adds	r3, r3, #1
 937 0118 0120     		movs	r0, #1
 938 011a C2F80C31 		str	r3, [r2, #268]
 939 011e 0544     		add	r5, r5, r0
 940 0120 0C73     		strb	r4, [r1, #12]
 941              	.L150:
 942 0122 2846     		mov	r0, r5
 943 0124 03B0     		add	sp, sp, #12
 944              		@ sp needed
 945 0126 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 946              	.L176:
 947 012a 5546     		mov	r5, r10
 948 012c 85E7     		b	.L151
 949              	.L203:
 950 012e 2146     		mov	r1, r4
 951 0130 3846     		mov	r0, r7
 952 0132 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.6
 953 0136 BBE7     		b	.L171
 954              	.L160:
 955 0138 B1F5807F 		cmp	r1, #256
 956 013c 4FF07204 		mov	r4, #114
 957 0140 9FD1     		bne	.L165
 958              	.L206:
 959 0142 5C21     		movs	r1, #92
 960 0144 3846     		mov	r0, r7
 961 0146 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.6
 962 014a A2E7     		b	.L166
 963              	.L177:
 964 014c 7424     		movs	r4, #116
 965 014e 95E7     		b	.L162
 966              	.L208:
 967 0150 3846     		mov	r0, r7
 968 0152 2221     		movs	r1, #34
 969 0154 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.6
ARM GAS  /tmp/cc0vfZ5B.s 			page 18


 970 0158 0544     		add	r5, r5, r0
 971 015a E2E7     		b	.L150
 972              	.L205:
 973 015c 2A21     		movs	r1, #42
 974 015e 3846     		mov	r0, r7
 975 0160 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.6
 976 0164 0544     		add	r5, r5, r0
 977 0166 78E7     		b	.L153
 978              	.L204:
 979 0168 2221     		movs	r1, #34
 980 016a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.6
 981 016e 0546     		mov	r5, r0
 982 0170 63E7     		b	.L151
 983              		.size	_ZN12OutputBuffer12EncodeStringEPKcjbbb, .-_ZN12OutputBuffer12EncodeStringEPKcjbbb
 984 0172 00BF     		.section	.text._ZN12OutputBuffer12EncodeStringERK9StringRefbb,"ax",%progbits
 985              		.align	1
 986              		.p2align 2,,3
 987              		.global	_ZN12OutputBuffer12EncodeStringERK9StringRefbb
 988              		.syntax unified
 989              		.thumb
 990              		.thumb_func
 991              		.fpu fpv4-sp-d16
 992              		.type	_ZN12OutputBuffer12EncodeStringERK9StringRefbb, %function
 993              	_ZN12OutputBuffer12EncodeStringERK9StringRefbb:
 994              		@ args = 0, pretend = 0, frame = 0
 995              		@ frame_needed = 0, uses_anonymous_args = 0
 996 0000 10B5     		push	{r4, lr}
 997 0002 D1E90012 		ldrd	r1, r2, [r1]
 998 0006 82B0     		sub	sp, sp, #8
 999 0008 0024     		movs	r4, #0
 1000 000a 0194     		str	r4, [sp, #4]
 1001 000c 0124     		movs	r4, #1
 1002 000e 013A     		subs	r2, r2, #1
 1003 0010 0094     		str	r4, [sp]
 1004 0012 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 1005 0016 02B0     		add	sp, sp, #8
 1006              		@ sp needed
 1007 0018 10BD     		pop	{r4, pc}
 1008              		.size	_ZN12OutputBuffer12EncodeStringERK9StringRefbb, .-_ZN12OutputBuffer12EncodeStringERK9StringR
 1009 001a 00BF     		.section	.text._ZN12OutputBuffer11EncodeReplyEPS_b,"ax",%progbits
 1010              		.align	1
 1011              		.p2align 2,,3
 1012              		.global	_ZN12OutputBuffer11EncodeReplyEPS_b
 1013              		.syntax unified
 1014              		.thumb
 1015              		.thumb_func
 1016              		.fpu fpv4-sp-d16
 1017              		.type	_ZN12OutputBuffer11EncodeReplyEPS_b, %function
 1018              	_ZN12OutputBuffer11EncodeReplyEPS_b:
 1019              		@ args = 0, pretend = 0, frame = 0
 1020              		@ frame_needed = 0, uses_anonymous_args = 0
 1021 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1022 0004 0C46     		mov	r4, r1
 1023 0006 4168     		ldr	r1, [r0, #4]
 1024 0008 D1F80C31 		ldr	r3, [r1, #268]
 1025 000c B3F5807F 		cmp	r3, #256
 1026 0010 83B0     		sub	sp, sp, #12
ARM GAS  /tmp/cc0vfZ5B.s 			page 19


 1027 0012 8046     		mov	r8, r0
 1028 0014 9146     		mov	r9, r2
 1029 0016 3AD0     		beq	.L227
 1030 0018 CA18     		adds	r2, r1, r3
 1031 001a 2220     		movs	r0, #34
 1032 001c 0133     		adds	r3, r3, #1
 1033 001e C1F80C31 		str	r3, [r1, #268]
 1034 0022 0126     		movs	r6, #1
 1035 0024 1073     		strb	r0, [r2, #12]
 1036              	.L215:
 1037 0026 04B3     		cbz	r4, .L213
 1038 0028 0025     		movs	r5, #0
 1039 002a 08E0     		b	.L214
 1040              	.L228:
 1041 002c D4F81831 		ldr	r3, [r4, #280]
 1042 0030 C4F81051 		str	r5, [r4, #272]
 1043 0034 013B     		subs	r3, r3, #1
 1044 0036 C4F81831 		str	r3, [r4, #280]
 1045 003a 3C46     		mov	r4, r7
 1046 003c AFB1     		cbz	r7, .L213
 1047              	.L214:
 1048 003e D4F80C21 		ldr	r2, [r4, #268]
 1049 0042 4B46     		mov	r3, r9
 1050 0044 CDE90055 		strd	r5, r5, [sp]
 1051 0048 04F10C01 		add	r1, r4, #12
 1052 004c 4046     		mov	r0, r8
 1053 004e FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 1054 0052 D4F81831 		ldr	r3, [r4, #280]
 1055 0056 2768     		ldr	r7, [r4]
 1056 0058 012B     		cmp	r3, #1
 1057 005a 0644     		add	r6, r6, r0
 1058 005c E6D8     		bhi	.L228
 1059 005e 2046     		mov	r0, r4
 1060 0060 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_.part.5
 1061 0064 3C46     		mov	r4, r7
 1062 0066 002F     		cmp	r7, #0
 1063 0068 E9D1     		bne	.L214
 1064              	.L213:
 1065 006a D8F80420 		ldr	r2, [r8, #4]
 1066 006e D2F80C31 		ldr	r3, [r2, #268]
 1067 0072 B3F5807F 		cmp	r3, #256
 1068 0076 0FD0     		beq	.L229
 1069 0078 D118     		adds	r1, r2, r3
 1070 007a 0120     		movs	r0, #1
 1071 007c 0133     		adds	r3, r3, #1
 1072 007e 2224     		movs	r4, #34
 1073 0080 3044     		add	r0, r0, r6
 1074 0082 C2F80C31 		str	r3, [r2, #268]
 1075 0086 0C73     		strb	r4, [r1, #12]
 1076 0088 03B0     		add	sp, sp, #12
 1077              		@ sp needed
 1078 008a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1079              	.L227:
 1080 008e 2221     		movs	r1, #34
 1081 0090 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.6
 1082 0094 0646     		mov	r6, r0
 1083 0096 C6E7     		b	.L215
ARM GAS  /tmp/cc0vfZ5B.s 			page 20


 1084              	.L229:
 1085 0098 4046     		mov	r0, r8
 1086 009a 2221     		movs	r1, #34
 1087 009c FFF7FEFF 		bl	_ZN12OutputBuffer3catEc.part.6
 1088 00a0 3044     		add	r0, r0, r6
 1089 00a2 03B0     		add	sp, sp, #12
 1090              		@ sp needed
 1091 00a4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1092              		.size	_ZN12OutputBuffer11EncodeReplyEPS_b, .-_ZN12OutputBuffer11EncodeReplyEPS_b
 1093              		.section	.text._ZN12OutputBuffer4copyEPKcj,"ax",%progbits
 1094              		.align	1
 1095              		.p2align 2,,3
 1096              		.global	_ZN12OutputBuffer4copyEPKcj
 1097              		.syntax unified
 1098              		.thumb
 1099              		.thumb_func
 1100              		.fpu fpv4-sp-d16
 1101              		.type	_ZN12OutputBuffer4copyEPKcj, %function
 1102              	_ZN12OutputBuffer4copyEPKcj:
 1103              		@ args = 0, pretend = 0, frame = 0
 1104              		@ frame_needed = 0, uses_anonymous_args = 0
 1105 0000 70B5     		push	{r4, r5, r6, lr}
 1106 0002 0368     		ldr	r3, [r0]
 1107 0004 0446     		mov	r4, r0
 1108 0006 0D46     		mov	r5, r1
 1109 0008 1646     		mov	r6, r2
 1110 000a 13B1     		cbz	r3, .L231
 1111 000c FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 1112 0010 6460     		str	r4, [r4, #4]
 1113              	.L231:
 1114 0012 0023     		movs	r3, #0
 1115 0014 C4F80C31 		str	r3, [r4, #268]
 1116 0018 3246     		mov	r2, r6
 1117 001a 2946     		mov	r1, r5
 1118 001c 2046     		mov	r0, r4
 1119 001e BDE87040 		pop	{r4, r5, r6, lr}
 1120 0022 FFF7FEBF 		b	_ZN12OutputBuffer3catEPKcj
 1121              		.size	_ZN12OutputBuffer4copyEPKcj, .-_ZN12OutputBuffer4copyEPKcj
 1122 0026 00BF     		.section	.text._ZN12OutputBuffer4copyEPKc,"ax",%progbits
 1123              		.align	1
 1124              		.p2align 2,,3
 1125              		.global	_ZN12OutputBuffer4copyEPKc
 1126              		.syntax unified
 1127              		.thumb
 1128              		.thumb_func
 1129              		.fpu fpv4-sp-d16
 1130              		.type	_ZN12OutputBuffer4copyEPKc, %function
 1131              	_ZN12OutputBuffer4copyEPKc:
 1132              		@ args = 0, pretend = 0, frame = 0
 1133              		@ frame_needed = 0, uses_anonymous_args = 0
 1134 0000 38B5     		push	{r3, r4, r5, lr}
 1135 0002 0546     		mov	r5, r0
 1136 0004 0846     		mov	r0, r1
 1137 0006 0C46     		mov	r4, r1
 1138 0008 FFF7FEFF 		bl	strlen
 1139 000c 2146     		mov	r1, r4
 1140 000e 0246     		mov	r2, r0
ARM GAS  /tmp/cc0vfZ5B.s 			page 21


 1141 0010 2846     		mov	r0, r5
 1142 0012 BDE83840 		pop	{r3, r4, r5, lr}
 1143 0016 FFF7FEBF 		b	_ZN12OutputBuffer4copyEPKcj
 1144              		.size	_ZN12OutputBuffer4copyEPKc, .-_ZN12OutputBuffer4copyEPKc
 1145 001a 00BF     		.section	.text._ZN12OutputBuffer6printfEPKcz,"ax",%progbits
 1146              		.align	1
 1147              		.p2align 2,,3
 1148              		.global	_ZN12OutputBuffer6printfEPKcz
 1149              		.syntax unified
 1150              		.thumb
 1151              		.thumb_func
 1152              		.fpu fpv4-sp-d16
 1153              		.type	_ZN12OutputBuffer6printfEPKcz, %function
 1154              	_ZN12OutputBuffer6printfEPKcz:
 1155              		@ args = 4, pretend = 12, frame = 1032
 1156              		@ frame_needed = 0, uses_anonymous_args = 1
 1157 0000 0EB4     		push	{r1, r2, r3}
 1158 0002 10B5     		push	{r4, lr}
 1159 0004 ADF20C4D 		subw	sp, sp, #1036
 1160 0008 0DF21443 		addw	r3, sp, #1044
 1161 000c 0446     		mov	r4, r0
 1162 000e 53F8042B 		ldr	r2, [r3], #4
 1163 0012 0193     		str	r3, [sp, #4]
 1164 0014 4FF48061 		mov	r1, #1024
 1165 0018 02A8     		add	r0, sp, #8
 1166 001a FFF7FEFF 		bl	_Z13SafeVsnprintfPcjPKcSt9__va_list
 1167 001e 02A8     		add	r0, sp, #8
 1168 0020 FFF7FEFF 		bl	strlen
 1169 0024 02A9     		add	r1, sp, #8
 1170 0026 0246     		mov	r2, r0
 1171 0028 2046     		mov	r0, r4
 1172 002a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKcj
 1173 002e 0DF20C4D 		addw	sp, sp, #1036
 1174              		@ sp needed
 1175 0032 BDE81040 		pop	{r4, lr}
 1176 0036 03B0     		add	sp, sp, #12
 1177 0038 7047     		bx	lr
 1178              		.size	_ZN12OutputBuffer6printfEPKcz, .-_ZN12OutputBuffer6printfEPKcz
 1179 003a 00BF     		.section	.text._ZN12OutputBuffer11DiagnosticsE11MessageType,"ax",%progbits
 1180              		.align	1
 1181              		.p2align 2,,3
 1182              		.global	_ZN12OutputBuffer11DiagnosticsE11MessageType
 1183              		.syntax unified
 1184              		.thumb
 1185              		.thumb_func
 1186              		.fpu fpv4-sp-d16
 1187              		.type	_ZN12OutputBuffer11DiagnosticsE11MessageType, %function
 1188              	_ZN12OutputBuffer11DiagnosticsE11MessageType:
 1189              		@ args = 0, pretend = 0, frame = 0
 1190              		@ frame_needed = 0, uses_anonymous_args = 0
 1191 0000 10B5     		push	{r4, lr}
 1192 0002 0849     		ldr	r1, .L242
 1193 0004 084B     		ldr	r3, .L242+4
 1194 0006 094A     		ldr	r2, .L242+8
 1195 0008 0C68     		ldr	r4, [r1]
 1196 000a 1B68     		ldr	r3, [r3]
 1197 000c 1268     		ldr	r2, [r2]
ARM GAS  /tmp/cc0vfZ5B.s 			page 22


 1198 000e 82B0     		sub	sp, sp, #8
 1199 0010 0146     		mov	r1, r0
 1200 0012 0192     		str	r2, [sp, #4]
 1201 0014 1422     		movs	r2, #20
 1202 0016 0092     		str	r2, [sp]
 1203 0018 2046     		mov	r0, r4
 1204 001a 054A     		ldr	r2, .L242+12
 1205 001c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1206 0020 02B0     		add	sp, sp, #8
 1207              		@ sp needed
 1208 0022 10BD     		pop	{r4, pc}
 1209              	.L243:
 1210              		.align	2
 1211              	.L242:
 1212 0024 00000000 		.word	reprap
 1213 0028 00000000 		.word	.LANCHOR1
 1214 002c 00000000 		.word	.LANCHOR2
 1215 0030 00000000 		.word	.LC0
 1216              		.size	_ZN12OutputBuffer11DiagnosticsE11MessageType, .-_ZN12OutputBuffer11DiagnosticsE11MessageType
 1217              		.section	.text._ZNV11OutputStack4PushEP12OutputBuffer,"ax",%progbits
 1218              		.align	1
 1219              		.p2align 2,,3
 1220              		.global	_ZNV11OutputStack4PushEP12OutputBuffer
 1221              		.syntax unified
 1222              		.thumb
 1223              		.thumb_func
 1224              		.fpu fpv4-sp-d16
 1225              		.type	_ZNV11OutputStack4PushEP12OutputBuffer, %function
 1226              	_ZNV11OutputStack4PushEP12OutputBuffer:
 1227              		@ args = 0, pretend = 0, frame = 8
 1228              		@ frame_needed = 0, uses_anonymous_args = 0
 1229 0000 30B5     		push	{r4, r5, lr}
 1230 0002 83B0     		sub	sp, sp, #12
 1231 0004 0191     		str	r1, [sp, #4]
 1232 0006 79B1     		cbz	r1, .L244
 1233 0008 0368     		ldr	r3, [r0]
 1234 000a 032B     		cmp	r3, #3
 1235 000c 0D46     		mov	r5, r1
 1236 000e 0446     		mov	r4, r0
 1237 0010 0CD9     		bls	.L251
 1238 0012 01A8     		add	r0, sp, #4
 1239 0014 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 1240 0018 0A4B     		ldr	r3, .L252
 1241 001a 1A68     		ldr	r2, [r3]
 1242 001c D2F8C030 		ldr	r3, [r2, #192]
 1243 0020 43F00803 		orr	r3, r3, #8
 1244 0024 C2F8C030 		str	r3, [r2, #192]
 1245              	.L244:
 1246 0028 03B0     		add	sp, sp, #12
 1247              		@ sp needed
 1248 002a 30BD     		pop	{r4, r5, pc}
 1249              	.L251:
 1250 002c FFF7FEFF 		bl	millis
 1251 0030 A860     		str	r0, [r5, #8]
 1252 0032 2368     		ldr	r3, [r4]
 1253 0034 0199     		ldr	r1, [sp, #4]
 1254 0036 04EB8302 		add	r2, r4, r3, lsl #2
ARM GAS  /tmp/cc0vfZ5B.s 			page 23


 1255 003a 0133     		adds	r3, r3, #1
 1256 003c 2360     		str	r3, [r4]
 1257 003e 5160     		str	r1, [r2, #4]
 1258 0040 03B0     		add	sp, sp, #12
 1259              		@ sp needed
 1260 0042 30BD     		pop	{r4, r5, pc}
 1261              	.L253:
 1262              		.align	2
 1263              	.L252:
 1264 0044 00000000 		.word	reprap
 1265              		.size	_ZNV11OutputStack4PushEP12OutputBuffer, .-_ZNV11OutputStack4PushEP12OutputBuffer
 1266              		.section	.text._ZNV11OutputStack3PopEv,"ax",%progbits
 1267              		.align	1
 1268              		.p2align 2,,3
 1269              		.global	_ZNV11OutputStack3PopEv
 1270              		.syntax unified
 1271              		.thumb
 1272              		.thumb_func
 1273              		.fpu fpv4-sp-d16
 1274              		.type	_ZNV11OutputStack3PopEv, %function
 1275              	_ZNV11OutputStack3PopEv:
 1276              		@ args = 0, pretend = 0, frame = 0
 1277              		@ frame_needed = 0, uses_anonymous_args = 0
 1278              		@ link register save eliminated.
 1279 0000 0246     		mov	r2, r0
 1280 0002 0068     		ldr	r0, [r0]
 1281 0004 80B1     		cbz	r0, .L254
 1282 0006 5068     		ldr	r0, [r2, #4]
 1283 0008 1368     		ldr	r3, [r2]
 1284 000a 012B     		cmp	r3, #1
 1285 000c 09D9     		bls	.L256
 1286 000e 0123     		movs	r3, #1
 1287              	.L257:
 1288 0010 02EB8301 		add	r1, r2, r3, lsl #2
 1289 0014 4968     		ldr	r1, [r1, #4]
 1290 0016 42F82310 		str	r1, [r2, r3, lsl #2]
 1291 001a 1168     		ldr	r1, [r2]
 1292 001c 0133     		adds	r3, r3, #1
 1293 001e 9942     		cmp	r1, r3
 1294 0020 F6D8     		bhi	.L257
 1295              	.L256:
 1296 0022 1368     		ldr	r3, [r2]
 1297 0024 013B     		subs	r3, r3, #1
 1298 0026 1360     		str	r3, [r2]
 1299              	.L254:
 1300 0028 7047     		bx	lr
 1301              		.size	_ZNV11OutputStack3PopEv, .-_ZNV11OutputStack3PopEv
 1302 002a 00BF     		.section	.text._ZNVK11OutputStack12GetFirstItemEv,"ax",%progbits
 1303              		.align	1
 1304              		.p2align 2,,3
 1305              		.global	_ZNVK11OutputStack12GetFirstItemEv
 1306              		.syntax unified
 1307              		.thumb
 1308              		.thumb_func
 1309              		.fpu fpv4-sp-d16
 1310              		.type	_ZNVK11OutputStack12GetFirstItemEv, %function
 1311              	_ZNVK11OutputStack12GetFirstItemEv:
ARM GAS  /tmp/cc0vfZ5B.s 			page 24


 1312              		@ args = 0, pretend = 0, frame = 0
 1313              		@ frame_needed = 0, uses_anonymous_args = 0
 1314              		@ link register save eliminated.
 1315 0000 0368     		ldr	r3, [r0]
 1316 0002 0BB1     		cbz	r3, .L262
 1317 0004 4068     		ldr	r0, [r0, #4]
 1318 0006 7047     		bx	lr
 1319              	.L262:
 1320 0008 1846     		mov	r0, r3
 1321 000a 7047     		bx	lr
 1322              		.size	_ZNVK11OutputStack12GetFirstItemEv, .-_ZNVK11OutputStack12GetFirstItemEv
 1323              		.section	.text._ZNV11OutputStack12SetFirstItemEP12OutputBuffer,"ax",%progbits
 1324              		.align	1
 1325              		.p2align 2,,3
 1326              		.global	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer
 1327              		.syntax unified
 1328              		.thumb
 1329              		.thumb_func
 1330              		.fpu fpv4-sp-d16
 1331              		.type	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer, %function
 1332              	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer:
 1333              		@ args = 0, pretend = 0, frame = 0
 1334              		@ frame_needed = 0, uses_anonymous_args = 0
 1335 0000 31B1     		cbz	r1, .L275
 1336 0002 10B5     		push	{r4, lr}
 1337 0004 4160     		str	r1, [r0, #4]
 1338 0006 0C46     		mov	r4, r1
 1339 0008 FFF7FEFF 		bl	millis
 1340 000c A060     		str	r0, [r4, #8]
 1341 000e 10BD     		pop	{r4, pc}
 1342              	.L275:
 1343 0010 0368     		ldr	r3, [r0]
 1344 0012 8BB1     		cbz	r3, .L273
 1345 0014 4368     		ldr	r3, [r0, #4]
 1346 0016 0368     		ldr	r3, [r0]
 1347 0018 012B     		cmp	r3, #1
 1348 001a 09D9     		bls	.L266
 1349 001c 0123     		movs	r3, #1
 1350              	.L267:
 1351 001e 00EB8302 		add	r2, r0, r3, lsl #2
 1352 0022 5268     		ldr	r2, [r2, #4]
 1353 0024 40F82320 		str	r2, [r0, r3, lsl #2]
 1354 0028 0268     		ldr	r2, [r0]
 1355 002a 0133     		adds	r3, r3, #1
 1356 002c 9A42     		cmp	r2, r3
 1357 002e F6D8     		bhi	.L267
 1358              	.L266:
 1359 0030 0368     		ldr	r3, [r0]
 1360 0032 013B     		subs	r3, r3, #1
 1361 0034 0360     		str	r3, [r0]
 1362 0036 7047     		bx	lr
 1363              	.L273:
 1364 0038 7047     		bx	lr
 1365              		.size	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer, .-_ZNV11OutputStack12SetFirstItemEP12Output
 1366 003a 00BF     		.section	.text._ZNVK11OutputStack11GetLastItemEv,"ax",%progbits
 1367              		.align	1
 1368              		.p2align 2,,3
ARM GAS  /tmp/cc0vfZ5B.s 			page 25


 1369              		.global	_ZNVK11OutputStack11GetLastItemEv
 1370              		.syntax unified
 1371              		.thumb
 1372              		.thumb_func
 1373              		.fpu fpv4-sp-d16
 1374              		.type	_ZNVK11OutputStack11GetLastItemEv, %function
 1375              	_ZNVK11OutputStack11GetLastItemEv:
 1376              		@ args = 0, pretend = 0, frame = 0
 1377              		@ frame_needed = 0, uses_anonymous_args = 0
 1378              		@ link register save eliminated.
 1379 0000 0368     		ldr	r3, [r0]
 1380 0002 2BB1     		cbz	r3, .L278
 1381 0004 0368     		ldr	r3, [r0]
 1382 0006 013B     		subs	r3, r3, #1
 1383 0008 00EB8300 		add	r0, r0, r3, lsl #2
 1384 000c 4068     		ldr	r0, [r0, #4]
 1385 000e 7047     		bx	lr
 1386              	.L278:
 1387 0010 1846     		mov	r0, r3
 1388 0012 7047     		bx	lr
 1389              		.size	_ZNVK11OutputStack11GetLastItemEv, .-_ZNVK11OutputStack11GetLastItemEv
 1390              		.section	.text._ZNVK11OutputStack10DataLengthEv,"ax",%progbits
 1391              		.align	1
 1392              		.p2align 2,,3
 1393              		.global	_ZNVK11OutputStack10DataLengthEv
 1394              		.syntax unified
 1395              		.thumb
 1396              		.thumb_func
 1397              		.fpu fpv4-sp-d16
 1398              		.type	_ZNVK11OutputStack10DataLengthEv, %function
 1399              	_ZNVK11OutputStack10DataLengthEv:
 1400              		@ args = 0, pretend = 0, frame = 0
 1401              		@ frame_needed = 0, uses_anonymous_args = 0
 1402              		@ link register save eliminated.
 1403 0000 30B4     		push	{r4, r5}
 1404 0002 0546     		mov	r5, r0
 1405 0004 0068     		ldr	r0, [r0]
 1406 0006 88B1     		cbz	r0, .L279
 1407 0008 0024     		movs	r4, #0
 1408 000a 2046     		mov	r0, r4
 1409              	.L283:
 1410 000c 05EB8403 		add	r3, r5, r4, lsl #2
 1411 0010 5B68     		ldr	r3, [r3, #4]
 1412 0012 3BB1     		cbz	r3, .L281
 1413 0014 0022     		movs	r2, #0
 1414              	.L282:
 1415 0016 D3F80C11 		ldr	r1, [r3, #268]
 1416 001a 1B68     		ldr	r3, [r3]
 1417 001c 0A44     		add	r2, r2, r1
 1418 001e 002B     		cmp	r3, #0
 1419 0020 F9D1     		bne	.L282
 1420 0022 1044     		add	r0, r0, r2
 1421              	.L281:
 1422 0024 2B68     		ldr	r3, [r5]
 1423 0026 0134     		adds	r4, r4, #1
 1424 0028 A342     		cmp	r3, r4
 1425 002a EFD8     		bhi	.L283
ARM GAS  /tmp/cc0vfZ5B.s 			page 26


 1426              	.L279:
 1427 002c 30BC     		pop	{r4, r5}
 1428 002e 7047     		bx	lr
 1429              		.size	_ZNVK11OutputStack10DataLengthEv, .-_ZNVK11OutputStack10DataLengthEv
 1430              		.section	.text._ZNV11OutputStack6AppendERVS_,"ax",%progbits
 1431              		.align	1
 1432              		.p2align 2,,3
 1433              		.global	_ZNV11OutputStack6AppendERVS_
 1434              		.syntax unified
 1435              		.thumb
 1436              		.thumb_func
 1437              		.fpu fpv4-sp-d16
 1438              		.type	_ZNV11OutputStack6AppendERVS_, %function
 1439              	_ZNV11OutputStack6AppendERVS_:
 1440              		@ args = 0, pretend = 0, frame = 0
 1441              		@ frame_needed = 0, uses_anonymous_args = 0
 1442 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1443 0002 0B68     		ldr	r3, [r1]
 1444 0004 ABB1     		cbz	r3, .L293
 1445 0006 114F     		ldr	r7, .L303
 1446 0008 0546     		mov	r5, r0
 1447 000a 0E46     		mov	r6, r1
 1448 000c 0023     		movs	r3, #0
 1449              	.L297:
 1450 000e 2A68     		ldr	r2, [r5]
 1451 0010 032A     		cmp	r2, #3
 1452 0012 06EB8301 		add	r1, r6, r3, lsl #2
 1453 0016 03F10104 		add	r4, r3, #1
 1454 001a 0BD8     		bhi	.L295
 1455 001c 2B68     		ldr	r3, [r5]
 1456 001e 5A1C     		adds	r2, r3, #1
 1457 0020 2A60     		str	r2, [r5]
 1458 0022 05EB8303 		add	r3, r5, r3, lsl #2
 1459 0026 4A68     		ldr	r2, [r1, #4]
 1460 0028 5A60     		str	r2, [r3, #4]
 1461              	.L296:
 1462 002a 3268     		ldr	r2, [r6]
 1463 002c A242     		cmp	r2, r4
 1464 002e 2346     		mov	r3, r4
 1465 0030 EDD8     		bhi	.L297
 1466              	.L293:
 1467 0032 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1468              	.L295:
 1469 0034 3A68     		ldr	r2, [r7]
 1470 0036 D2F8C030 		ldr	r3, [r2, #192]
 1471 003a 43F00803 		orr	r3, r3, #8
 1472 003e C2F8C030 		str	r3, [r2, #192]
 1473 0042 06EB8400 		add	r0, r6, r4, lsl #2
 1474 0046 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 1475 004a EEE7     		b	.L296
 1476              	.L304:
 1477              		.align	2
 1478              	.L303:
 1479 004c 00000000 		.word	reprap
 1480              		.size	_ZNV11OutputStack6AppendERVS_, .-_ZNV11OutputStack6AppendERVS_
 1481              		.section	.text._ZNV11OutputStack18IncreaseReferencesEj,"ax",%progbits
 1482              		.align	1
ARM GAS  /tmp/cc0vfZ5B.s 			page 27


 1483              		.p2align 2,,3
 1484              		.global	_ZNV11OutputStack18IncreaseReferencesEj
 1485              		.syntax unified
 1486              		.thumb
 1487              		.thumb_func
 1488              		.fpu fpv4-sp-d16
 1489              		.type	_ZNV11OutputStack18IncreaseReferencesEj, %function
 1490              	_ZNV11OutputStack18IncreaseReferencesEj:
 1491              		@ args = 0, pretend = 0, frame = 0
 1492              		@ frame_needed = 0, uses_anonymous_args = 0
 1493              		@ link register save eliminated.
 1494 0000 0368     		ldr	r3, [r0]
 1495 0002 CBB1     		cbz	r3, .L322
 1496 0004 30B4     		push	{r4, r5}
 1497 0006 0024     		movs	r4, #0
 1498 0008 0125     		movs	r5, #1
 1499 000a 03E0     		b	.L309
 1500              	.L307:
 1501 000c 0368     		ldr	r3, [r0]
 1502 000e 0134     		adds	r4, r4, #1
 1503 0010 A342     		cmp	r3, r4
 1504 0012 0FD9     		bls	.L326
 1505              	.L309:
 1506 0014 00EB8403 		add	r3, r0, r4, lsl #2
 1507 0018 5B68     		ldr	r3, [r3, #4]
 1508 001a 0029     		cmp	r1, #0
 1509 001c F6D0     		beq	.L307
 1510              	.L325:
 1511 001e 002B     		cmp	r3, #0
 1512 0020 F4D0     		beq	.L307
 1513 0022 D3F81821 		ldr	r2, [r3, #280]
 1514 0026 83F81451 		strb	r5, [r3, #276]
 1515 002a 0A44     		add	r2, r2, r1
 1516 002c C3F81821 		str	r2, [r3, #280]
 1517 0030 1B68     		ldr	r3, [r3]
 1518 0032 F4E7     		b	.L325
 1519              	.L326:
 1520 0034 30BC     		pop	{r4, r5}
 1521 0036 7047     		bx	lr
 1522              	.L322:
 1523 0038 7047     		bx	lr
 1524              		.size	_ZNV11OutputStack18IncreaseReferencesEj, .-_ZNV11OutputStack18IncreaseReferencesEj
 1525 003a 00BF     		.section	.text._ZNV11OutputStack10ReleaseAllEv,"ax",%progbits
 1526              		.align	1
 1527              		.p2align 2,,3
 1528              		.global	_ZNV11OutputStack10ReleaseAllEv
 1529              		.syntax unified
 1530              		.thumb
 1531              		.thumb_func
 1532              		.fpu fpv4-sp-d16
 1533              		.type	_ZNV11OutputStack10ReleaseAllEv, %function
 1534              	_ZNV11OutputStack10ReleaseAllEv:
 1535              		@ args = 0, pretend = 0, frame = 0
 1536              		@ frame_needed = 0, uses_anonymous_args = 0
 1537 0000 0368     		ldr	r3, [r0]
 1538 0002 70B5     		push	{r4, r5, r6, lr}
 1539 0004 0646     		mov	r6, r0
ARM GAS  /tmp/cc0vfZ5B.s 			page 28


 1540 0006 53B1     		cbz	r3, .L328
 1541 0008 051D     		adds	r5, r0, #4
 1542 000a 0024     		movs	r4, #0
 1543              	.L329:
 1544 000c 2846     		mov	r0, r5
 1545 000e FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 1546 0012 3368     		ldr	r3, [r6]
 1547 0014 0134     		adds	r4, r4, #1
 1548 0016 A342     		cmp	r3, r4
 1549 0018 05F10405 		add	r5, r5, #4
 1550 001c F6D8     		bhi	.L329
 1551              	.L328:
 1552 001e 0023     		movs	r3, #0
 1553 0020 3360     		str	r3, [r6]
 1554 0022 70BD     		pop	{r4, r5, r6, pc}
 1555              		.size	_ZNV11OutputStack10ReleaseAllEv, .-_ZNV11OutputStack10ReleaseAllEv
 1556              		.global	_ZN12OutputBuffer20maxUsedOutputBuffersE
 1557              		.global	_ZN12OutputBuffer17usedOutputBuffersE
 1558              		.global	_ZN12OutputBuffer17freeOutputBuffersE
 1559              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1560              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1561              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1562              	_ZL28cpu_irq_prev_interrupt_state:
 1563 0000 00       		.space	1
 1564              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1565              		.align	2
 1566              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1567              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1568              	_ZL32cpu_irq_critical_section_counter:
 1569 0000 00000000 		.space	4
 1570              		.section	.bss._ZN12OutputBuffer17freeOutputBuffersE,"aw",%nobits
 1571              		.align	2
 1572              		.set	.LANCHOR0,. + 0
 1573              		.type	_ZN12OutputBuffer17freeOutputBuffersE, %object
 1574              		.size	_ZN12OutputBuffer17freeOutputBuffersE, 4
 1575              	_ZN12OutputBuffer17freeOutputBuffersE:
 1576 0000 00000000 		.space	4
 1577              		.section	.bss._ZN12OutputBuffer17usedOutputBuffersE,"aw",%nobits
 1578              		.align	2
 1579              		.set	.LANCHOR1,. + 0
 1580              		.type	_ZN12OutputBuffer17usedOutputBuffersE, %object
 1581              		.size	_ZN12OutputBuffer17usedOutputBuffersE, 4
 1582              	_ZN12OutputBuffer17usedOutputBuffersE:
 1583 0000 00000000 		.space	4
 1584              		.section	.bss._ZN12OutputBuffer20maxUsedOutputBuffersE,"aw",%nobits
 1585              		.align	2
 1586              		.set	.LANCHOR2,. + 0
 1587              		.type	_ZN12OutputBuffer20maxUsedOutputBuffersE, %object
 1588              		.size	_ZN12OutputBuffer20maxUsedOutputBuffersE, 4
 1589              	_ZN12OutputBuffer20maxUsedOutputBuffersE:
 1590 0000 00000000 		.space	4
 1591              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1592              		.align	2
 1593              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1594              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1595              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1596 0000 00000000 		.space	4
ARM GAS  /tmp/cc0vfZ5B.s 			page 29


 1597              		.section	.rodata._ZN12OutputBuffer11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 1598              		.align	2
 1599              	.LC0:
 1600 0000 55736564 		.ascii	"Used output buffers: %d of %d (%d max)\012\000"
 1600      206F7574 
 1600      70757420 
 1600      62756666 
 1600      6572733A 
 1601              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
