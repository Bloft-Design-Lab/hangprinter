ARM GAS  /tmp/cceqf8P1.s 			page 1


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
  14              		.section	.text._ZN10GCodeQueueC2Ev,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.global	_ZN10GCodeQueueC2Ev
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN10GCodeQueueC2Ev, %function
  23              	_ZN10GCodeQueueC2Ev:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 38B5     		push	{r3, r4, r5, lr}
  27 0002 0023     		movs	r3, #0
  28 0004 C0E90033 		strd	r3, r3, [r0]
  29 0008 0546     		mov	r5, r0
  30 000a 0824     		movs	r4, #8
  31              	.L2:
  32 000c B020     		movs	r0, #176
  33 000e FFF7FEFF 		bl	_Znwj
  34 0012 2B68     		ldr	r3, [r5]
  35 0014 0360     		str	r3, [r0]
  36 0016 013C     		subs	r4, r4, #1
  37 0018 2860     		str	r0, [r5]
  38 001a F7D1     		bne	.L2
  39 001c 2846     		mov	r0, r5
  40 001e 38BD     		pop	{r3, r4, r5, pc}
  41              		.size	_ZN10GCodeQueueC2Ev, .-_ZN10GCodeQueueC2Ev
  42              		.global	_ZN10GCodeQueueC1Ev
  43              		.thumb_set _ZN10GCodeQueueC1Ev,_ZN10GCodeQueueC2Ev
  44              		.section	.text._ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer,"ax",%progbits
  45              		.align	1
  46              		.p2align 2,,3
  47              		.global	_ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu fpv4-sp-d16
  52              		.type	_ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer, %function
  53              	_ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer:
  54              		@ args = 0, pretend = 0, frame = 8
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56 0000 30B5     		push	{r4, r5, lr}
  57 0002 90F84C20 		ldrb	r2, [r0, #76]	@ zero_extendqisi2
ARM GAS  /tmp/cceqf8P1.s 			page 2


  58 0006 472A     		cmp	r2, #71
  59 0008 83B0     		sub	sp, sp, #12
  60 000a 25D0     		beq	.L8
  61 000c 4D2A     		cmp	r2, #77
  62 000e 26D1     		bne	.L17
  63 0010 036C     		ldr	r3, [r0, #64]
  64 0012 752B     		cmp	r3, #117
  65 0014 30D0     		beq	.L10
  66 0016 32DD     		ble	.L41
  67 0018 B3F58C7F 		cmp	r3, #280
  68 001c 2CD0     		beq	.L10
  69 001e 25DD     		ble	.L42
  70 0020 B3F5967F 		cmp	r3, #300
  71 0024 28D0     		beq	.L10
  72 0026 B3F5D27F 		cmp	r3, #420
  73 002a 25D0     		beq	.L10
  74 002c 40F22312 		movw	r2, #291
  75 0030 9342     		cmp	r3, r2
  76 0032 14D1     		bne	.L17
  77 0034 0124     		movs	r4, #1
  78 0036 0025     		movs	r5, #0
  79 0038 0DF10303 		add	r3, sp, #3
  80 003c 01AA     		add	r2, sp, #4
  81 003e 5321     		movs	r1, #83
  82 0040 8DF80350 		strb	r5, [sp, #3]
  83 0044 0194     		str	r4, [sp, #4]
  84 0046 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
  85 004a 0198     		ldr	r0, [sp, #4]
  86 004c A042     		cmp	r0, r4
  87 004e CCBF     		ite	gt
  88 0050 0020     		movgt	r0, #0
  89 0052 0120     		movle	r0, #1
  90 0054 03B0     		add	sp, sp, #12
  91              		@ sp needed
  92 0056 30BD     		pop	{r4, r5, pc}
  93              	.L8:
  94 0058 036C     		ldr	r3, [r0, #64]
  95 005a 0A2B     		cmp	r3, #10
  96 005c 02D0     		beq	.L43
  97              	.L17:
  98 005e 0020     		movs	r0, #0
  99              	.L7:
 100 0060 03B0     		add	sp, sp, #12
 101              		@ sp needed
 102 0062 30BD     		pop	{r4, r5, pc}
 103              	.L43:
 104 0064 5021     		movs	r1, #80
 105 0066 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 106 006a F9E7     		b	.L7
 107              	.L42:
 108 006c 8C2B     		cmp	r3, #140
 109 006e F6DB     		blt	.L17
 110 0070 8D2B     		cmp	r3, #141
 111 0072 01DD     		ble	.L10
 112 0074 902B     		cmp	r3, #144
 113 0076 F2D1     		bne	.L17
 114              	.L10:
ARM GAS  /tmp/cceqf8P1.s 			page 3


 115 0078 0120     		movs	r0, #1
 116 007a 03B0     		add	sp, sp, #12
 117              		@ sp needed
 118 007c 30BD     		pop	{r4, r5, pc}
 119              	.L41:
 120 007e 2A2B     		cmp	r3, #42
 121 0080 FAD0     		beq	.L10
 122 0082 06DD     		ble	.L44
 123 0084 682B     		cmp	r3, #104
 124 0086 F7D0     		beq	.L10
 125 0088 E9DB     		blt	.L17
 126 008a 6A3B     		subs	r3, r3, #106
 127 008c 012B     		cmp	r3, #1
 128 008e E6D8     		bhi	.L17
 129 0090 F2E7     		b	.L10
 130              	.L44:
 131 0092 033B     		subs	r3, r3, #3
 132 0094 022B     		cmp	r3, #2
 133 0096 E2D8     		bhi	.L17
 134 0098 EEE7     		b	.L10
 135              		.size	_ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer, .-_ZN10GCodeQueue15ShouldQueueCodeER11GCode
 136 009a 00BF     		.section	.text._ZN10GCodeQueue9QueueCodeER11GCodeBuffer,"ax",%progbits
 137              		.align	1
 138              		.p2align 2,,3
 139              		.global	_ZN10GCodeQueue9QueueCodeER11GCodeBuffer
 140              		.syntax unified
 141              		.thumb
 142              		.thumb_func
 143              		.fpu fpv4-sp-d16
 144              		.type	_ZN10GCodeQueue9QueueCodeER11GCodeBuffer, %function
 145              	_ZN10GCodeQueue9QueueCodeER11GCodeBuffer:
 146              		@ args = 0, pretend = 0, frame = 168
 147              		@ frame_needed = 0, uses_anonymous_args = 0
 148 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 149 0004 2A4F     		ldr	r7, .L62
 150 0006 BB68     		ldr	r3, [r7, #8]	@ unaligned
 151 0008 D3F8609A 		ldr	r9, [r3, #2656]
 152 000c D3F8643A 		ldr	r3, [r3, #2660]
 153 0010 9945     		cmp	r9, r3
 154 0012 AAB0     		sub	sp, sp, #168
 155 0014 2DD0     		beq	.L52
 156 0016 0468     		ldr	r4, [r0]
 157 0018 8846     		mov	r8, r1
 158 001a 0546     		mov	r5, r0
 159 001c 7CB3     		cbz	r4, .L60
 160 001e 4FF0010A 		mov	r10, #1
 161              	.L47:
 162 0022 2368     		ldr	r3, [r4]
 163 0024 2B60     		str	r3, [r5]
 164 0026 D8F83030 		ldr	r3, [r8, #48]
 165 002a C4F8AC30 		str	r3, [r4, #172]
 166 002e A122     		movs	r2, #161
 167 0030 08F14D01 		add	r1, r8, #77
 168 0034 201D     		adds	r0, r4, #4
 169 0036 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 170 003a 0023     		movs	r3, #0
 171 003c C4F8A890 		str	r9, [r4, #168]
ARM GAS  /tmp/cceqf8P1.s 			page 4


 172 0040 2360     		str	r3, [r4]
 173 0042 6A68     		ldr	r2, [r5, #4]
 174 0044 82B9     		cbnz	r2, .L48
 175 0046 6C60     		str	r4, [r5, #4]
 176              	.L49:
 177 0048 BAF1000F 		cmp	r10, #0
 178 004c 07D1     		bne	.L46
 179 004e BB6C     		ldr	r3, [r7, #72]
 180 0050 1B07     		lsls	r3, r3, #28
 181 0052 27D4     		bmi	.L61
 182              	.L51:
 183 0054 3246     		mov	r2, r6
 184 0056 4046     		mov	r0, r8
 185 0058 01A9     		add	r1, sp, #4
 186 005a FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKcj
 187              	.L46:
 188 005e 5046     		mov	r0, r10
 189 0060 2AB0     		add	sp, sp, #168
 190              		@ sp needed
 191 0062 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 192              	.L54:
 193 0066 1A46     		mov	r2, r3
 194              	.L48:
 195 0068 1368     		ldr	r3, [r2]
 196 006a 002B     		cmp	r3, #0
 197 006c FBD1     		bne	.L54
 198 006e 1460     		str	r4, [r2]
 199 0070 EAE7     		b	.L49
 200              	.L52:
 201 0072 4FF0000A 		mov	r10, #0
 202 0076 5046     		mov	r0, r10
 203 0078 2AB0     		add	sp, sp, #168
 204              		@ sp needed
 205 007a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 206              	.L60:
 207 007e 4468     		ldr	r4, [r0, #4]
 208 0080 0434     		adds	r4, r4, #4
 209 0082 2046     		mov	r0, r4
 210 0084 FFF7FEFF 		bl	strlen
 211 0088 2146     		mov	r1, r4
 212 008a A122     		movs	r2, #161
 213 008c 461C     		adds	r6, r0, #1
 214 008e 01A8     		add	r0, sp, #4
 215 0090 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 216 0094 6C68     		ldr	r4, [r5, #4]
 217 0096 0023     		movs	r3, #0
 218 0098 2268     		ldr	r2, [r4]
 219 009a 6A60     		str	r2, [r5, #4]
 220 009c 9A46     		mov	r10, r3
 221 009e 2360     		str	r3, [r4]
 222 00a0 2C60     		str	r4, [r5]
 223 00a2 BEE7     		b	.L47
 224              	.L61:
 225 00a4 3868     		ldr	r0, [r7]
 226 00a6 034A     		ldr	r2, .L62+4
 227 00a8 0221     		movs	r1, #2
 228 00aa FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
ARM GAS  /tmp/cceqf8P1.s 			page 5


 229 00ae D1E7     		b	.L51
 230              	.L63:
 231              		.align	2
 232              	.L62:
 233 00b0 00000000 		.word	reprap
 234 00b4 00000000 		.word	.LC0
 235              		.size	_ZN10GCodeQueue9QueueCodeER11GCodeBuffer, .-_ZN10GCodeQueue9QueueCodeER11GCodeBuffer
 236              		.section	.text._ZN10GCodeQueue10FillBufferEP11GCodeBuffer,"ax",%progbits
 237              		.align	1
 238              		.p2align 2,,3
 239              		.global	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer
 240              		.syntax unified
 241              		.thumb
 242              		.thumb_func
 243              		.fpu fpv4-sp-d16
 244              		.type	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer, %function
 245              	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer:
 246              		@ args = 0, pretend = 0, frame = 0
 247              		@ frame_needed = 0, uses_anonymous_args = 0
 248 0000 38B5     		push	{r3, r4, r5, lr}
 249 0002 4468     		ldr	r4, [r0, #4]
 250 0004 3CB1     		cbz	r4, .L67
 251 0006 0D4B     		ldr	r3, .L70
 252 0008 D4F8A820 		ldr	r2, [r4, #168]
 253 000c 9B68     		ldr	r3, [r3, #8]
 254 000e D3F8643A 		ldr	r3, [r3, #2660]
 255 0012 9A42     		cmp	r2, r3
 256 0014 01D9     		bls	.L69
 257              	.L67:
 258 0016 0020     		movs	r0, #0
 259 0018 38BD     		pop	{r3, r4, r5, pc}
 260              	.L69:
 261 001a D4F8AC30 		ldr	r3, [r4, #172]
 262 001e 0B63     		str	r3, [r1, #48]
 263 0020 0546     		mov	r5, r0
 264 0022 0846     		mov	r0, r1
 265 0024 211D     		adds	r1, r4, #4
 266 0026 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKc
 267 002a D5E90032 		ldrd	r3, r2, [r5]
 268 002e 1268     		ldr	r2, [r2]
 269 0030 6A60     		str	r2, [r5, #4]
 270 0032 2360     		str	r3, [r4]
 271 0034 0120     		movs	r0, #1
 272 0036 2C60     		str	r4, [r5]
 273 0038 38BD     		pop	{r3, r4, r5, pc}
 274              	.L71:
 275 003a 00BF     		.align	2
 276              	.L70:
 277 003c 00000000 		.word	reprap
 278              		.size	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer, .-_ZN10GCodeQueue10FillBufferEP11GCodeBuffer
 279              		.section	.text._ZNK10GCodeQueue6IsIdleEv,"ax",%progbits
 280              		.align	1
 281              		.p2align 2,,3
 282              		.global	_ZNK10GCodeQueue6IsIdleEv
 283              		.syntax unified
 284              		.thumb
 285              		.thumb_func
ARM GAS  /tmp/cceqf8P1.s 			page 6


 286              		.fpu fpv4-sp-d16
 287              		.type	_ZNK10GCodeQueue6IsIdleEv, %function
 288              	_ZNK10GCodeQueue6IsIdleEv:
 289              		@ args = 0, pretend = 0, frame = 0
 290              		@ frame_needed = 0, uses_anonymous_args = 0
 291              		@ link register save eliminated.
 292 0000 4368     		ldr	r3, [r0, #4]
 293 0002 53B1     		cbz	r3, .L74
 294 0004 064A     		ldr	r2, .L75
 295 0006 D3F8A800 		ldr	r0, [r3, #168]
 296 000a 9368     		ldr	r3, [r2, #8]
 297 000c D3F8643A 		ldr	r3, [r3, #2660]
 298 0010 9842     		cmp	r0, r3
 299 0012 94BF     		ite	ls
 300 0014 0020     		movls	r0, #0
 301 0016 0120     		movhi	r0, #1
 302 0018 7047     		bx	lr
 303              	.L74:
 304 001a 0120     		movs	r0, #1
 305 001c 7047     		bx	lr
 306              	.L76:
 307 001e 00BF     		.align	2
 308              	.L75:
 309 0020 00000000 		.word	reprap
 310              		.size	_ZNK10GCodeQueue6IsIdleEv, .-_ZNK10GCodeQueue6IsIdleEv
 311              		.section	.text._ZN10GCodeQueue12PurgeEntriesEv,"ax",%progbits
 312              		.align	1
 313              		.p2align 2,,3
 314              		.global	_ZN10GCodeQueue12PurgeEntriesEv
 315              		.syntax unified
 316              		.thumb
 317              		.thumb_func
 318              		.fpu fpv4-sp-d16
 319              		.type	_ZN10GCodeQueue12PurgeEntriesEv, %function
 320              	_ZN10GCodeQueue12PurgeEntriesEv:
 321              		@ args = 0, pretend = 0, frame = 0
 322              		@ frame_needed = 0, uses_anonymous_args = 0
 323              		@ link register save eliminated.
 324 0000 4368     		ldr	r3, [r0, #4]
 325 0002 D3B1     		cbz	r3, .L90
 326 0004 70B4     		push	{r4, r5, r6}
 327 0006 0025     		movs	r5, #0
 328 0008 0C4E     		ldr	r6, .L95
 329 000a 06E0     		b	.L79
 330              	.L94:
 331 000c 0168     		ldr	r1, [r0]
 332 000e 1960     		str	r1, [r3]
 333 0010 0360     		str	r3, [r0]
 334 0012 85B1     		cbz	r5, .L93
 335 0014 2A60     		str	r2, [r5]
 336              	.L80:
 337 0016 1346     		mov	r3, r2
 338 0018 5AB1     		cbz	r2, .L77
 339              	.L79:
 340 001a B268     		ldr	r2, [r6, #8]
 341 001c D3F8A840 		ldr	r4, [r3, #168]
 342 0020 D2F8601A 		ldr	r1, [r2, #2656]
ARM GAS  /tmp/cceqf8P1.s 			page 7


 343 0024 1A68     		ldr	r2, [r3]
 344 0026 8C42     		cmp	r4, r1
 345 0028 F0D8     		bhi	.L94
 346 002a 1D46     		mov	r5, r3
 347 002c 1346     		mov	r3, r2
 348 002e 002A     		cmp	r2, #0
 349 0030 F3D1     		bne	.L79
 350              	.L77:
 351 0032 70BC     		pop	{r4, r5, r6}
 352 0034 7047     		bx	lr
 353              	.L93:
 354 0036 4260     		str	r2, [r0, #4]
 355 0038 EDE7     		b	.L80
 356              	.L90:
 357 003a 7047     		bx	lr
 358              	.L96:
 359              		.align	2
 360              	.L95:
 361 003c 00000000 		.word	reprap
 362              		.size	_ZN10GCodeQueue12PurgeEntriesEv, .-_ZN10GCodeQueue12PurgeEntriesEv
 363              		.section	.text._ZN10GCodeQueue5ClearEv,"ax",%progbits
 364              		.align	1
 365              		.p2align 2,,3
 366              		.global	_ZN10GCodeQueue5ClearEv
 367              		.syntax unified
 368              		.thumb
 369              		.thumb_func
 370              		.fpu fpv4-sp-d16
 371              		.type	_ZN10GCodeQueue5ClearEv, %function
 372              	_ZN10GCodeQueue5ClearEv:
 373              		@ args = 0, pretend = 0, frame = 0
 374              		@ frame_needed = 0, uses_anonymous_args = 0
 375              		@ link register save eliminated.
 376 0000 4368     		ldr	r3, [r0, #4]
 377 0002 53B1     		cbz	r3, .L97
 378 0004 0168     		ldr	r1, [r0]
 379 0006 00E0     		b	.L99
 380              	.L100:
 381 0008 1346     		mov	r3, r2
 382              	.L99:
 383 000a 1A68     		ldr	r2, [r3]
 384 000c 4260     		str	r2, [r0, #4]
 385 000e 1960     		str	r1, [r3]
 386 0010 4268     		ldr	r2, [r0, #4]
 387 0012 0360     		str	r3, [r0]
 388 0014 1946     		mov	r1, r3
 389 0016 002A     		cmp	r2, #0
 390 0018 F6D1     		bne	.L100
 391              	.L97:
 392 001a 7047     		bx	lr
 393              		.size	_ZN10GCodeQueue5ClearEv, .-_ZN10GCodeQueue5ClearEv
 394              		.section	.text._ZN10GCodeQueue11DiagnosticsE11MessageType,"ax",%progbits
 395              		.align	1
 396              		.p2align 2,,3
 397              		.global	_ZN10GCodeQueue11DiagnosticsE11MessageType
 398              		.syntax unified
 399              		.thumb
ARM GAS  /tmp/cceqf8P1.s 			page 8


 400              		.thumb_func
 401              		.fpu fpv4-sp-d16
 402              		.type	_ZN10GCodeQueue11DiagnosticsE11MessageType, %function
 403              	_ZN10GCodeQueue11DiagnosticsE11MessageType:
 404              		@ args = 0, pretend = 0, frame = 0
 405              		@ frame_needed = 0, uses_anonymous_args = 0
 406 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 407 0004 154B     		ldr	r3, .L114
 408 0006 4768     		ldr	r7, [r0, #4]
 409 0008 154D     		ldr	r5, .L114+4
 410 000a 164E     		ldr	r6, .L114+8
 411 000c 164A     		ldr	r2, .L114+12
 412 000e 0446     		mov	r4, r0
 413 0010 002F     		cmp	r7, #0
 414 0012 18BF     		it	ne
 415 0014 2B46     		movne	r3, r5
 416 0016 82B0     		sub	sp, sp, #8
 417 0018 3068     		ldr	r0, [r6]
 418 001a 0F46     		mov	r7, r1
 419 001c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 420 0020 6468     		ldr	r4, [r4, #4]
 421 0022 BCB1     		cbz	r4, .L104
 422 0024 DFF84880 		ldr	r8, .L114+20
 423 0028 0025     		movs	r5, #0
 424              	.L107:
 425 002a D4F8A830 		ldr	r3, [r4, #168]
 426 002e 0093     		str	r3, [sp]
 427 0030 3068     		ldr	r0, [r6]
 428 0032 231D     		adds	r3, r4, #4
 429 0034 4246     		mov	r2, r8
 430 0036 3946     		mov	r1, r7
 431 0038 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 432 003c 2468     		ldr	r4, [r4]
 433 003e 0135     		adds	r5, r5, #1
 434 0040 002C     		cmp	r4, #0
 435 0042 F2D1     		bne	.L107
 436 0044 0824     		movs	r4, #8
 437 0046 3068     		ldr	r0, [r6]
 438 0048 084A     		ldr	r2, .L114+16
 439 004a 0094     		str	r4, [sp]
 440 004c 2B46     		mov	r3, r5
 441 004e 3946     		mov	r1, r7
 442 0050 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 443              	.L104:
 444 0054 02B0     		add	sp, sp, #8
 445              		@ sp needed
 446 0056 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 447              	.L115:
 448 005a 00BF     		.align	2
 449              	.L114:
 450 005c 00000000 		.word	.LC1
 451 0060 08000000 		.word	.LC2
 452 0064 00000000 		.word	reprap
 453 0068 14000000 		.word	.LC3
 454 006c 44000000 		.word	.LC5
 455 0070 28000000 		.word	.LC4
 456              		.size	_ZN10GCodeQueue11DiagnosticsE11MessageType, .-_ZN10GCodeQueue11DiagnosticsE11MessageType
ARM GAS  /tmp/cceqf8P1.s 			page 9


 457              		.section	.text._ZN10QueuedCode10AssignFromER11GCodeBuffer,"ax",%progbits
 458              		.align	1
 459              		.p2align 2,,3
 460              		.global	_ZN10QueuedCode10AssignFromER11GCodeBuffer
 461              		.syntax unified
 462              		.thumb
 463              		.thumb_func
 464              		.fpu fpv4-sp-d16
 465              		.type	_ZN10QueuedCode10AssignFromER11GCodeBuffer, %function
 466              	_ZN10QueuedCode10AssignFromER11GCodeBuffer:
 467              		@ args = 0, pretend = 0, frame = 0
 468              		@ frame_needed = 0, uses_anonymous_args = 0
 469              		@ link register save eliminated.
 470 0000 0B6B     		ldr	r3, [r1, #48]
 471 0002 C0F8AC30 		str	r3, [r0, #172]
 472 0006 4D31     		adds	r1, r1, #77
 473 0008 0430     		adds	r0, r0, #4
 474 000a A122     		movs	r2, #161
 475 000c FFF7FEBF 		b	_Z11SafeStrncpyPcPKcj
 476              		.size	_ZN10QueuedCode10AssignFromER11GCodeBuffer, .-_ZN10QueuedCode10AssignFromER11GCodeBuffer
 477              		.section	.text._ZN10QueuedCode8AssignToEP11GCodeBuffer,"ax",%progbits
 478              		.align	1
 479              		.p2align 2,,3
 480              		.global	_ZN10QueuedCode8AssignToEP11GCodeBuffer
 481              		.syntax unified
 482              		.thumb
 483              		.thumb_func
 484              		.fpu fpv4-sp-d16
 485              		.type	_ZN10QueuedCode8AssignToEP11GCodeBuffer, %function
 486              	_ZN10QueuedCode8AssignToEP11GCodeBuffer:
 487              		@ args = 0, pretend = 0, frame = 0
 488              		@ frame_needed = 0, uses_anonymous_args = 0
 489              		@ link register save eliminated.
 490 0000 0B46     		mov	r3, r1
 491 0002 D0F8AC20 		ldr	r2, [r0, #172]
 492 0006 0A63     		str	r2, [r1, #48]
 493 0008 011D     		adds	r1, r0, #4
 494 000a 1846     		mov	r0, r3
 495 000c FFF7FEBF 		b	_ZN11GCodeBuffer3PutEPKc
 496              		.size	_ZN10QueuedCode8AssignToEP11GCodeBuffer, .-_ZN10QueuedCode8AssignToEP11GCodeBuffer
 497              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 498              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 499              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 500              	_ZL28cpu_irq_prev_interrupt_state:
 501 0000 00       		.space	1
 502              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 503              		.align	2
 504              		.type	_ZL32cpu_irq_critical_section_counter, %object
 505              		.size	_ZL32cpu_irq_critical_section_counter, 4
 506              	_ZL32cpu_irq_critical_section_counter:
 507 0000 00000000 		.space	4
 508              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 509              		.align	2
 510              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 511              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 512              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 513 0000 00000000 		.space	4
ARM GAS  /tmp/cceqf8P1.s 			page 10


 514              		.section	.rodata._ZN10GCodeQueue11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 515              		.align	2
 516              	.LC1:
 517 0000 656D7074 		.ascii	"empty.\000"
 517      792E00
 518 0007 00       		.space	1
 519              	.LC2:
 520 0008 6E6F7420 		.ascii	"not empty:\000"
 520      656D7074 
 520      793A00
 521 0013 00       		.space	1
 522              	.LC3:
 523 0014 436F6465 		.ascii	"Code queue is %s\012\000"
 523      20717565 
 523      75652069 
 523      73202573 
 523      0A00
 524 0026 0000     		.space	2
 525              	.LC4:
 526 0028 51756575 		.ascii	"Queued '%s' for move %lu\012\000"
 526      65642027 
 526      25732720 
 526      666F7220 
 526      6D6F7665 
 527 0042 0000     		.space	2
 528              	.LC5:
 529 0044 2564206F 		.ascii	"%d of %d codes have been queued.\012\000"
 529      66202564 
 529      20636F64 
 529      65732068 
 529      61766520 
 530              		.section	.rodata._ZN10GCodeQueue9QueueCodeER11GCodeBuffer.str1.4,"aMS",%progbits,1
 531              		.align	2
 532              	.LC0:
 533 0000 28737761 		.ascii	"(swap) \000"
 533      70292000 
 534              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
