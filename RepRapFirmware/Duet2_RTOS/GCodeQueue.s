ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZNwo1f.s 			page 1


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
  13              		.file	"GCodeQueue.cpp"
  14              		.text
  15              		.section	.text._ZN10GCodeQueueC2Ev,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_ZN10GCodeQueueC2Ev
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN10GCodeQueueC2Ev, %function
  24              	_ZN10GCodeQueueC2Ev:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 38B5     		push	{r3, r4, r5, lr}
  28 0002 0023     		movs	r3, #0
  29 0004 C0E90033 		strd	r3, r3, [r0]
  30 0008 0546     		mov	r5, r0
  31 000a 1024     		movs	r4, #16
  32              	.L2:
  33 000c 4C20     		movs	r0, #76
  34 000e FFF7FEFF 		bl	_Znwj
  35 0012 2B68     		ldr	r3, [r5]
  36 0014 0360     		str	r3, [r0]
  37 0016 013C     		subs	r4, r4, #1
  38 0018 2860     		str	r0, [r5]
  39 001a F7D1     		bne	.L2
  40 001c 2846     		mov	r0, r5
  41 001e 38BD     		pop	{r3, r4, r5, pc}
  42              		.size	_ZN10GCodeQueueC2Ev, .-_ZN10GCodeQueueC2Ev
  43              		.global	_ZN10GCodeQueueC1Ev
  44              		.thumb_set _ZN10GCodeQueueC1Ev,_ZN10GCodeQueueC2Ev
  45              		.section	.text._ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer,"ax",%progbits
  46              		.align	1
  47              		.p2align 2,,3
  48              		.global	_ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu fpv4-sp-d16
  53              		.type	_ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer, %function
  54              	_ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer:
  55              		@ args = 0, pretend = 0, frame = 8
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57 0000 2A4B     		ldr	r3, .L49
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZNwo1f.s 			page 2


  58 0002 DB68     		ldr	r3, [r3, #12]	@ unaligned
  59 0004 D3F8802A 		ldr	r2, [r3, #2688]
  60 0008 D3F87C1A 		ldr	r1, [r3, #2684]
  61 000c 9142     		cmp	r1, r2
  62 000e 30D0     		beq	.L15
  63 0010 30B5     		push	{r4, r5, lr}
  64 0012 90F85420 		ldrb	r2, [r0, #84]	@ zero_extendqisi2
  65 0016 472A     		cmp	r2, #71
  66 0018 83B0     		sub	sp, sp, #12
  67 001a 24D0     		beq	.L8
  68 001c 4D2A     		cmp	r2, #77
  69 001e 25D1     		bne	.L18
  70 0020 826C     		ldr	r2, [r0, #72]
  71 0022 752A     		cmp	r2, #117
  72 0024 30D0     		beq	.L10
  73 0026 26DD     		ble	.L45
  74 0028 B2F58C7F 		cmp	r2, #280
  75 002c 2CD0     		beq	.L10
  76 002e 35DD     		ble	.L46
  77 0030 B2F5967F 		cmp	r2, #300
  78 0034 28D0     		beq	.L10
  79 0036 B2F5D27F 		cmp	r2, #420
  80 003a 25D0     		beq	.L10
  81 003c 40F22311 		movw	r1, #291
  82 0040 8A42     		cmp	r2, r1
  83 0042 13D1     		bne	.L18
  84 0044 0124     		movs	r4, #1
  85 0046 0025     		movs	r5, #0
  86 0048 0DF10303 		add	r3, sp, #3
  87 004c 01AA     		add	r2, sp, #4
  88 004e 5321     		movs	r1, #83
  89 0050 8DF80350 		strb	r5, [sp, #3]
  90 0054 0194     		str	r4, [sp, #4]
  91 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
  92 005a 0198     		ldr	r0, [sp, #4]
  93 005c A042     		cmp	r0, r4
  94 005e CCBF     		ite	gt
  95 0060 0020     		movgt	r0, #0
  96 0062 0120     		movle	r0, #1
  97 0064 03E0     		b	.L7
  98              	.L8:
  99 0066 836C     		ldr	r3, [r0, #72]
 100 0068 0A2B     		cmp	r3, #10
 101 006a 0FD0     		beq	.L47
 102              	.L18:
 103 006c 0020     		movs	r0, #0
 104              	.L7:
 105 006e 03B0     		add	sp, sp, #12
 106              		@ sp needed
 107 0070 30BD     		pop	{r4, r5, pc}
 108              	.L15:
 109 0072 0020     		movs	r0, #0
 110 0074 7047     		bx	lr
 111              	.L45:
 112 0076 2A2A     		cmp	r2, #42
 113 0078 06D0     		beq	.L10
 114 007a 0BDD     		ble	.L48
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZNwo1f.s 			page 3


 115 007c 682A     		cmp	r2, #104
 116 007e 03D0     		beq	.L10
 117 0080 F4DB     		blt	.L18
 118 0082 6A3A     		subs	r2, r2, #106
 119 0084 012A     		cmp	r2, #1
 120 0086 F1D8     		bhi	.L18
 121              	.L10:
 122 0088 0120     		movs	r0, #1
 123 008a F0E7     		b	.L7
 124              	.L47:
 125 008c 5021     		movs	r1, #80
 126 008e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 127 0092 ECE7     		b	.L7
 128              	.L48:
 129 0094 033A     		subs	r2, r2, #3
 130 0096 022A     		cmp	r2, #2
 131 0098 E8D8     		bhi	.L18
 132 009a F5E7     		b	.L10
 133              	.L46:
 134 009c 8C2A     		cmp	r2, #140
 135 009e E5DB     		blt	.L18
 136 00a0 8D2A     		cmp	r2, #141
 137 00a2 F1DD     		ble	.L10
 138 00a4 902A     		cmp	r2, #144
 139 00a6 E1D1     		bne	.L18
 140 00a8 EEE7     		b	.L10
 141              	.L50:
 142 00aa 00BF     		.align	2
 143              	.L49:
 144 00ac 00000000 		.word	reprap
 145              		.size	_ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer, .-_ZN10GCodeQueue15ShouldQueueCodeER11GCode
 146              		.section	.text._ZN10GCodeQueue10FillBufferEP11GCodeBuffer,"ax",%progbits
 147              		.align	1
 148              		.p2align 2,,3
 149              		.global	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer
 150              		.syntax unified
 151              		.thumb
 152              		.thumb_func
 153              		.fpu fpv4-sp-d16
 154              		.type	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer, %function
 155              	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer:
 156              		@ args = 0, pretend = 0, frame = 0
 157              		@ frame_needed = 0, uses_anonymous_args = 0
 158 0000 38B5     		push	{r3, r4, r5, lr}
 159 0002 4468     		ldr	r4, [r0, #4]
 160 0004 34B1     		cbz	r4, .L54
 161 0006 0C4B     		ldr	r3, .L57
 162 0008 626C     		ldr	r2, [r4, #68]
 163 000a DB68     		ldr	r3, [r3, #12]
 164 000c D3F8803A 		ldr	r3, [r3, #2688]
 165 0010 9A42     		cmp	r2, r3
 166 0012 01D9     		bls	.L56
 167              	.L54:
 168 0014 0020     		movs	r0, #0
 169 0016 38BD     		pop	{r3, r4, r5, pc}
 170              	.L56:
 171 0018 A36C     		ldr	r3, [r4, #72]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZNwo1f.s 			page 4


 172 001a 8B63     		str	r3, [r1, #56]
 173 001c 0546     		mov	r5, r0
 174 001e 0846     		mov	r0, r1
 175 0020 211D     		adds	r1, r4, #4
 176 0022 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKc
 177 0026 D5E90032 		ldrd	r3, r2, [r5]
 178 002a 1268     		ldr	r2, [r2]
 179 002c 6A60     		str	r2, [r5, #4]
 180 002e 2360     		str	r3, [r4]
 181 0030 0120     		movs	r0, #1
 182 0032 2C60     		str	r4, [r5]
 183 0034 38BD     		pop	{r3, r4, r5, pc}
 184              	.L58:
 185 0036 00BF     		.align	2
 186              	.L57:
 187 0038 00000000 		.word	reprap
 188              		.size	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer, .-_ZN10GCodeQueue10FillBufferEP11GCodeBuffer
 189              		.section	.text._ZNK10GCodeQueue6IsIdleEv,"ax",%progbits
 190              		.align	1
 191              		.p2align 2,,3
 192              		.global	_ZNK10GCodeQueue6IsIdleEv
 193              		.syntax unified
 194              		.thumb
 195              		.thumb_func
 196              		.fpu fpv4-sp-d16
 197              		.type	_ZNK10GCodeQueue6IsIdleEv, %function
 198              	_ZNK10GCodeQueue6IsIdleEv:
 199              		@ args = 0, pretend = 0, frame = 0
 200              		@ frame_needed = 0, uses_anonymous_args = 0
 201              		@ link register save eliminated.
 202 0000 4368     		ldr	r3, [r0, #4]
 203 0002 4BB1     		cbz	r3, .L61
 204 0004 054A     		ldr	r2, .L62
 205 0006 586C     		ldr	r0, [r3, #68]
 206 0008 D368     		ldr	r3, [r2, #12]
 207 000a D3F8803A 		ldr	r3, [r3, #2688]
 208 000e 9842     		cmp	r0, r3
 209 0010 94BF     		ite	ls
 210 0012 0020     		movls	r0, #0
 211 0014 0120     		movhi	r0, #1
 212 0016 7047     		bx	lr
 213              	.L61:
 214 0018 0120     		movs	r0, #1
 215 001a 7047     		bx	lr
 216              	.L63:
 217              		.align	2
 218              	.L62:
 219 001c 00000000 		.word	reprap
 220              		.size	_ZNK10GCodeQueue6IsIdleEv, .-_ZNK10GCodeQueue6IsIdleEv
 221              		.section	.text._ZN10GCodeQueue12PurgeEntriesEv,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	_ZN10GCodeQueue12PurgeEntriesEv
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZNwo1f.s 			page 5


 229              		.type	_ZN10GCodeQueue12PurgeEntriesEv, %function
 230              	_ZN10GCodeQueue12PurgeEntriesEv:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233              		@ link register save eliminated.
 234 0000 4368     		ldr	r3, [r0, #4]
 235 0002 CBB1     		cbz	r3, .L77
 236 0004 70B4     		push	{r4, r5, r6}
 237 0006 0025     		movs	r5, #0
 238 0008 0C4E     		ldr	r6, .L82
 239 000a 06E0     		b	.L66
 240              	.L81:
 241 000c 0168     		ldr	r1, [r0]
 242 000e 1960     		str	r1, [r3]
 243 0010 0360     		str	r3, [r0]
 244 0012 7DB1     		cbz	r5, .L80
 245 0014 2A60     		str	r2, [r5]
 246              	.L67:
 247 0016 1346     		mov	r3, r2
 248 0018 52B1     		cbz	r2, .L64
 249              	.L66:
 250 001a F268     		ldr	r2, [r6, #12]
 251 001c 5C6C     		ldr	r4, [r3, #68]
 252 001e D2F87C1A 		ldr	r1, [r2, #2684]
 253 0022 1A68     		ldr	r2, [r3]
 254 0024 8C42     		cmp	r4, r1
 255 0026 F1D8     		bhi	.L81
 256 0028 1D46     		mov	r5, r3
 257 002a 1346     		mov	r3, r2
 258 002c 002A     		cmp	r2, #0
 259 002e F4D1     		bne	.L66
 260              	.L64:
 261 0030 70BC     		pop	{r4, r5, r6}
 262 0032 7047     		bx	lr
 263              	.L80:
 264 0034 4260     		str	r2, [r0, #4]
 265 0036 EEE7     		b	.L67
 266              	.L77:
 267 0038 7047     		bx	lr
 268              	.L83:
 269 003a 00BF     		.align	2
 270              	.L82:
 271 003c 00000000 		.word	reprap
 272              		.size	_ZN10GCodeQueue12PurgeEntriesEv, .-_ZN10GCodeQueue12PurgeEntriesEv
 273              		.section	.text._ZN10GCodeQueue5ClearEv,"ax",%progbits
 274              		.align	1
 275              		.p2align 2,,3
 276              		.global	_ZN10GCodeQueue5ClearEv
 277              		.syntax unified
 278              		.thumb
 279              		.thumb_func
 280              		.fpu fpv4-sp-d16
 281              		.type	_ZN10GCodeQueue5ClearEv, %function
 282              	_ZN10GCodeQueue5ClearEv:
 283              		@ args = 0, pretend = 0, frame = 0
 284              		@ frame_needed = 0, uses_anonymous_args = 0
 285              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZNwo1f.s 			page 6


 286 0000 4368     		ldr	r3, [r0, #4]
 287 0002 53B1     		cbz	r3, .L84
 288 0004 0168     		ldr	r1, [r0]
 289 0006 00E0     		b	.L86
 290              	.L87:
 291 0008 1346     		mov	r3, r2
 292              	.L86:
 293 000a 1A68     		ldr	r2, [r3]
 294 000c 4260     		str	r2, [r0, #4]
 295 000e 1960     		str	r1, [r3]
 296 0010 4268     		ldr	r2, [r0, #4]
 297 0012 0360     		str	r3, [r0]
 298 0014 1946     		mov	r1, r3
 299 0016 002A     		cmp	r2, #0
 300 0018 F6D1     		bne	.L87
 301              	.L84:
 302 001a 7047     		bx	lr
 303              		.size	_ZN10GCodeQueue5ClearEv, .-_ZN10GCodeQueue5ClearEv
 304              		.section	.text._ZN10GCodeQueue11DiagnosticsE11MessageType,"ax",%progbits
 305              		.align	1
 306              		.p2align 2,,3
 307              		.global	_ZN10GCodeQueue11DiagnosticsE11MessageType
 308              		.syntax unified
 309              		.thumb
 310              		.thumb_func
 311              		.fpu fpv4-sp-d16
 312              		.type	_ZN10GCodeQueue11DiagnosticsE11MessageType, %function
 313              	_ZN10GCodeQueue11DiagnosticsE11MessageType:
 314              		@ args = 0, pretend = 0, frame = 0
 315              		@ frame_needed = 0, uses_anonymous_args = 0
 316 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 317 0004 144B     		ldr	r3, .L101
 318 0006 4768     		ldr	r7, [r0, #4]
 319 0008 144D     		ldr	r5, .L101+4
 320 000a 154E     		ldr	r6, .L101+8
 321 000c 154A     		ldr	r2, .L101+12
 322 000e 0446     		mov	r4, r0
 323 0010 002F     		cmp	r7, #0
 324 0012 18BF     		it	ne
 325 0014 2B46     		movne	r3, r5
 326 0016 82B0     		sub	sp, sp, #8
 327 0018 7068     		ldr	r0, [r6, #4]
 328 001a 0F46     		mov	r7, r1
 329 001c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 330 0020 6468     		ldr	r4, [r4, #4]
 331 0022 B4B1     		cbz	r4, .L91
 332 0024 DFF84480 		ldr	r8, .L101+20
 333 0028 0025     		movs	r5, #0
 334              	.L94:
 335 002a 636C     		ldr	r3, [r4, #68]
 336 002c 0093     		str	r3, [sp]
 337 002e 7068     		ldr	r0, [r6, #4]
 338 0030 231D     		adds	r3, r4, #4
 339 0032 4246     		mov	r2, r8
 340 0034 3946     		mov	r1, r7
 341 0036 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 342 003a 2468     		ldr	r4, [r4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZNwo1f.s 			page 7


 343 003c 0135     		adds	r5, r5, #1
 344 003e 002C     		cmp	r4, #0
 345 0040 F3D1     		bne	.L94
 346 0042 1024     		movs	r4, #16
 347 0044 7068     		ldr	r0, [r6, #4]
 348 0046 084A     		ldr	r2, .L101+16
 349 0048 0094     		str	r4, [sp]
 350 004a 2B46     		mov	r3, r5
 351 004c 3946     		mov	r1, r7
 352 004e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 353              	.L91:
 354 0052 02B0     		add	sp, sp, #8
 355              		@ sp needed
 356 0054 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 357              	.L102:
 358              		.align	2
 359              	.L101:
 360 0058 00000000 		.word	.LC0
 361 005c 08000000 		.word	.LC1
 362 0060 00000000 		.word	reprap
 363 0064 14000000 		.word	.LC2
 364 0068 44000000 		.word	.LC4
 365 006c 28000000 		.word	.LC3
 366              		.size	_ZN10GCodeQueue11DiagnosticsE11MessageType, .-_ZN10GCodeQueue11DiagnosticsE11MessageType
 367              		.section	.text._ZN10QueuedCode10AssignFromER11GCodeBuffer,"ax",%progbits
 368              		.align	1
 369              		.p2align 2,,3
 370              		.global	_ZN10QueuedCode10AssignFromER11GCodeBuffer
 371              		.syntax unified
 372              		.thumb
 373              		.thumb_func
 374              		.fpu fpv4-sp-d16
 375              		.type	_ZN10QueuedCode10AssignFromER11GCodeBuffer, %function
 376              	_ZN10QueuedCode10AssignFromER11GCodeBuffer:
 377              		@ args = 0, pretend = 0, frame = 0
 378              		@ frame_needed = 0, uses_anonymous_args = 0
 379 0000 38B5     		push	{r3, r4, r5, lr}
 380 0002 8B6B     		ldr	r3, [r1, #56]
 381 0004 8364     		str	r3, [r0, #72]
 382 0006 0B69     		ldr	r3, [r1, #16]
 383 0008 8C69     		ldr	r4, [r1, #24]
 384 000a E41A     		subs	r4, r4, r3
 385 000c 3C2C     		cmp	r4, #60
 386 000e 28BF     		it	cs
 387 0010 3C24     		movcs	r4, #60
 388 0012 0546     		mov	r5, r0
 389 0014 5531     		adds	r1, r1, #85
 390 0016 1944     		add	r1, r1, r3
 391 0018 2246     		mov	r2, r4
 392 001a 0430     		adds	r0, r0, #4
 393 001c 2C44     		add	r4, r4, r5
 394 001e FFF7FEFF 		bl	memcpy
 395 0022 0023     		movs	r3, #0
 396 0024 2371     		strb	r3, [r4, #4]
 397 0026 38BD     		pop	{r3, r4, r5, pc}
 398              		.size	_ZN10QueuedCode10AssignFromER11GCodeBuffer, .-_ZN10QueuedCode10AssignFromER11GCodeBuffer
 399              		.section	.text._ZN10GCodeQueue9QueueCodeER11GCodeBuffer,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZNwo1f.s 			page 8


 400              		.align	1
 401              		.p2align 2,,3
 402              		.global	_ZN10GCodeQueue9QueueCodeER11GCodeBuffer
 403              		.syntax unified
 404              		.thumb
 405              		.thumb_func
 406              		.fpu fpv4-sp-d16
 407              		.type	_ZN10GCodeQueue9QueueCodeER11GCodeBuffer, %function
 408              	_ZN10GCodeQueue9QueueCodeER11GCodeBuffer:
 409              		@ args = 0, pretend = 0, frame = 0
 410              		@ frame_needed = 0, uses_anonymous_args = 0
 411 0000 38B5     		push	{r3, r4, r5, lr}
 412 0002 0468     		ldr	r4, [r0]
 413 0004 24B1     		cbz	r4, .L110
 414 0006 8B69     		ldr	r3, [r1, #24]
 415 0008 0A69     		ldr	r2, [r1, #16]
 416 000a 9B1A     		subs	r3, r3, r2
 417 000c 3C2B     		cmp	r3, #60
 418 000e 01D9     		bls	.L114
 419              	.L110:
 420 0010 0020     		movs	r0, #0
 421 0012 38BD     		pop	{r3, r4, r5, pc}
 422              	.L114:
 423 0014 2368     		ldr	r3, [r4]
 424 0016 0360     		str	r3, [r0]
 425 0018 0546     		mov	r5, r0
 426 001a 2046     		mov	r0, r4
 427 001c FFF7FEFF 		bl	_ZN10QueuedCode10AssignFromER11GCodeBuffer
 428 0020 094B     		ldr	r3, .L115
 429 0022 DA68     		ldr	r2, [r3, #12]
 430 0024 0023     		movs	r3, #0
 431 0026 D2F87C2A 		ldr	r2, [r2, #2684]
 432 002a 6264     		str	r2, [r4, #68]
 433 002c 2360     		str	r3, [r4]
 434 002e 6A68     		ldr	r2, [r5, #4]
 435 0030 1AB9     		cbnz	r2, .L108
 436 0032 6C60     		str	r4, [r5, #4]
 437 0034 0120     		movs	r0, #1
 438 0036 38BD     		pop	{r3, r4, r5, pc}
 439              	.L111:
 440 0038 1A46     		mov	r2, r3
 441              	.L108:
 442 003a 1368     		ldr	r3, [r2]
 443 003c 002B     		cmp	r3, #0
 444 003e FBD1     		bne	.L111
 445 0040 1460     		str	r4, [r2]
 446 0042 0120     		movs	r0, #1
 447 0044 38BD     		pop	{r3, r4, r5, pc}
 448              	.L116:
 449 0046 00BF     		.align	2
 450              	.L115:
 451 0048 00000000 		.word	reprap
 452              		.size	_ZN10GCodeQueue9QueueCodeER11GCodeBuffer, .-_ZN10GCodeQueue9QueueCodeER11GCodeBuffer
 453              		.section	.text._ZN10QueuedCode8AssignToEP11GCodeBuffer,"ax",%progbits
 454              		.align	1
 455              		.p2align 2,,3
 456              		.global	_ZN10QueuedCode8AssignToEP11GCodeBuffer
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZNwo1f.s 			page 9


 457              		.syntax unified
 458              		.thumb
 459              		.thumb_func
 460              		.fpu fpv4-sp-d16
 461              		.type	_ZN10QueuedCode8AssignToEP11GCodeBuffer, %function
 462              	_ZN10QueuedCode8AssignToEP11GCodeBuffer:
 463              		@ args = 0, pretend = 0, frame = 0
 464              		@ frame_needed = 0, uses_anonymous_args = 0
 465              		@ link register save eliminated.
 466 0000 0B46     		mov	r3, r1
 467 0002 826C     		ldr	r2, [r0, #72]
 468 0004 8A63     		str	r2, [r1, #56]
 469 0006 011D     		adds	r1, r0, #4
 470 0008 1846     		mov	r0, r3
 471 000a FFF7FEBF 		b	_ZN11GCodeBuffer3PutEPKc
 472              		.size	_ZN10QueuedCode8AssignToEP11GCodeBuffer, .-_ZN10QueuedCode8AssignToEP11GCodeBuffer
 473 000e 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 474              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 475              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 476              	_ZL28cpu_irq_prev_interrupt_state:
 477 0000 00       		.space	1
 478              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 479              		.align	2
 480              		.type	_ZL32cpu_irq_critical_section_counter, %object
 481              		.size	_ZL32cpu_irq_critical_section_counter, 4
 482              	_ZL32cpu_irq_critical_section_counter:
 483 0000 00000000 		.space	4
 484              		.section	.rodata._ZN10GCodeQueue11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 485              		.align	2
 486              	.LC0:
 487 0000 656D7074 		.ascii	"empty.\000"
 487      792E00
 488 0007 00       		.space	1
 489              	.LC1:
 490 0008 6E6F7420 		.ascii	"not empty:\000"
 490      656D7074 
 490      793A00
 491 0013 00       		.space	1
 492              	.LC2:
 493 0014 436F6465 		.ascii	"Code queue is %s\012\000"
 493      20717565 
 493      75652069 
 493      73202573 
 493      0A00
 494 0026 0000     		.space	2
 495              	.LC3:
 496 0028 51756575 		.ascii	"Queued '%s' for move %lu\012\000"
 496      65642027 
 496      25732720 
 496      666F7220 
 496      6D6F7665 
 497 0042 0000     		.space	2
 498              	.LC4:
 499 0044 2564206F 		.ascii	"%d of %d codes have been queued.\012\000"
 499      66202564 
 499      20636F64 
 499      65732068 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccZNwo1f.s 			page 10


 499      61766520 
 500              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
