ARM GAS  /tmp/ccabAxam.s 			page 1


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
  11              		.file	"GCodeQueue.cpp"
  12              		.section	.text._ZN10GCodeQueueC2Ev,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.global	_ZN10GCodeQueueC2Ev
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZN10GCodeQueueC2Ev, %function
  21              	_ZN10GCodeQueueC2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 38B5     		push	{r3, r4, r5, lr}
  25 0002 0023     		movs	r3, #0
  26 0004 0546     		mov	r5, r0
  27 0006 0824     		movs	r4, #8
  28 0008 0360     		str	r3, [r0]
  29 000a 4360     		str	r3, [r0, #4]
  30              	.L2:
  31 000c 7420     		movs	r0, #116
  32 000e FFF7FEFF 		bl	_Znwj
  33 0012 2B68     		ldr	r3, [r5]
  34 0014 013C     		subs	r4, r4, #1
  35 0016 2860     		str	r0, [r5]
  36 0018 0360     		str	r3, [r0]
  37 001a F7D1     		bne	.L2
  38 001c 2846     		mov	r0, r5
  39 001e 38BD     		pop	{r3, r4, r5, pc}
  40              		.size	_ZN10GCodeQueueC2Ev, .-_ZN10GCodeQueueC2Ev
  41              		.global	_ZN10GCodeQueueC1Ev
  42              		.thumb_set _ZN10GCodeQueueC1Ev,_ZN10GCodeQueueC2Ev
  43              		.section	.text._ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer,"ax",%progbits
  44              		.align	1
  45              		.p2align 2,,3
  46              		.global	_ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer
  47              		.syntax unified
  48              		.thumb
  49              		.thumb_func
  50              		.fpu softvfp
  51              		.type	_ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer, %function
  52              	_ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer:
  53              		@ args = 0, pretend = 0, frame = 8
  54              		@ frame_needed = 0, uses_anonymous_args = 0
  55 0000 30B5     		push	{r4, r5, lr}
  56 0002 90F84C20 		ldrb	r2, [r0, #76]	@ zero_extendqisi2
  57 0006 83B0     		sub	sp, sp, #12
ARM GAS  /tmp/ccabAxam.s 			page 2


  58 0008 472A     		cmp	r2, #71
  59 000a 25D0     		beq	.L8
  60 000c 4D2A     		cmp	r2, #77
  61 000e 26D1     		bne	.L16
  62 0010 036C     		ldr	r3, [r0, #64]
  63 0012 752B     		cmp	r3, #117
  64 0014 30D0     		beq	.L17
  65 0016 32DD     		ble	.L41
  66 0018 B3F58C7F 		cmp	r3, #280
  67 001c 2CD0     		beq	.L17
  68 001e 25DD     		ble	.L42
  69 0020 B3F5967F 		cmp	r3, #300
  70 0024 28D0     		beq	.L17
  71 0026 B3F5D27F 		cmp	r3, #420
  72 002a 25D0     		beq	.L17
  73 002c 40F22312 		movw	r2, #291
  74 0030 9342     		cmp	r3, r2
  75 0032 14D1     		bne	.L16
  76 0034 0124     		movs	r4, #1
  77 0036 0025     		movs	r5, #0
  78 0038 0DF10303 		add	r3, sp, #3
  79 003c 01AA     		add	r2, sp, #4
  80 003e 5321     		movs	r1, #83
  81 0040 8DF80350 		strb	r5, [sp, #3]
  82 0044 0194     		str	r4, [sp, #4]
  83 0046 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
  84 004a 0198     		ldr	r0, [sp, #4]
  85 004c A042     		cmp	r0, r4
  86 004e CCBF     		ite	gt
  87 0050 0020     		movgt	r0, #0
  88 0052 0120     		movle	r0, #1
  89 0054 03B0     		add	sp, sp, #12
  90              		@ sp needed
  91 0056 30BD     		pop	{r4, r5, pc}
  92              	.L8:
  93 0058 036C     		ldr	r3, [r0, #64]
  94 005a 0A2B     		cmp	r3, #10
  95 005c 02D0     		beq	.L43
  96              	.L16:
  97 005e 0020     		movs	r0, #0
  98              	.L7:
  99 0060 03B0     		add	sp, sp, #12
 100              		@ sp needed
 101 0062 30BD     		pop	{r4, r5, pc}
 102              	.L43:
 103 0064 5021     		movs	r1, #80
 104 0066 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 105 006a F9E7     		b	.L7
 106              	.L42:
 107 006c 8C2B     		cmp	r3, #140
 108 006e F6DB     		blt	.L16
 109 0070 8D2B     		cmp	r3, #141
 110 0072 01DD     		ble	.L17
 111 0074 902B     		cmp	r3, #144
 112 0076 F2D1     		bne	.L16
 113              	.L17:
 114 0078 0120     		movs	r0, #1
ARM GAS  /tmp/ccabAxam.s 			page 3


 115 007a 03B0     		add	sp, sp, #12
 116              		@ sp needed
 117 007c 30BD     		pop	{r4, r5, pc}
 118              	.L41:
 119 007e 2A2B     		cmp	r3, #42
 120 0080 FAD0     		beq	.L17
 121 0082 06DD     		ble	.L44
 122 0084 682B     		cmp	r3, #104
 123 0086 F7D0     		beq	.L17
 124 0088 E9DB     		blt	.L16
 125 008a 6A3B     		subs	r3, r3, #106
 126 008c 012B     		cmp	r3, #1
 127 008e E6D8     		bhi	.L16
 128 0090 F2E7     		b	.L17
 129              	.L44:
 130 0092 033B     		subs	r3, r3, #3
 131 0094 022B     		cmp	r3, #2
 132 0096 E2D8     		bhi	.L16
 133 0098 EEE7     		b	.L17
 134              		.size	_ZN10GCodeQueue15ShouldQueueCodeER11GCodeBuffer, .-_ZN10GCodeQueue15ShouldQueueCodeER11GCode
 135 009a 00BF     		.section	.text._ZN10GCodeQueue9QueueCodeER11GCodeBuffer,"ax",%progbits
 136              		.align	1
 137              		.p2align 2,,3
 138              		.global	_ZN10GCodeQueue9QueueCodeER11GCodeBuffer
 139              		.syntax unified
 140              		.thumb
 141              		.thumb_func
 142              		.fpu softvfp
 143              		.type	_ZN10GCodeQueue9QueueCodeER11GCodeBuffer, %function
 144              	_ZN10GCodeQueue9QueueCodeER11GCodeBuffer:
 145              		@ args = 0, pretend = 0, frame = 104
 146              		@ frame_needed = 0, uses_anonymous_args = 0
 147 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 148 0004 2D4F     		ldr	r7, .L63
 149 0006 9AB0     		sub	sp, sp, #104
 150 0008 BB68     		ldr	r3, [r7, #8]	@ unaligned
 151 000a D3F80485 		ldr	r8, [r3, #1284]
 152 000e D3F80835 		ldr	r3, [r3, #1288]
 153 0012 9845     		cmp	r8, r3
 154 0014 2CD0     		beq	.L54
 155 0016 0468     		ldr	r4, [r0]
 156 0018 8946     		mov	r9, r1
 157 001a 0546     		mov	r5, r0
 158 001c 002C     		cmp	r4, #0
 159 001e 38D0     		beq	.L47
 160 0020 4FF0010A 		mov	r10, #1
 161 0024 2268     		ldr	r2, [r4]
 162              	.L48:
 163 0026 D9F83030 		ldr	r3, [r9, #48]
 164 002a 09F14D01 		add	r1, r9, #77
 165 002e 2A60     		str	r2, [r5]
 166 0030 201D     		adds	r0, r4, #4
 167 0032 6522     		movs	r2, #101
 168 0034 2367     		str	r3, [r4, #112]
 169 0036 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 170 003a 0023     		movs	r3, #0
 171 003c 6A68     		ldr	r2, [r5, #4]
ARM GAS  /tmp/ccabAxam.s 			page 4


 172 003e C4F86C80 		str	r8, [r4, #108]
 173 0042 2360     		str	r3, [r4]
 174 0044 0AB9     		cbnz	r2, .L51
 175 0046 19E0     		b	.L60
 176              	.L55:
 177 0048 1A46     		mov	r2, r3
 178              	.L51:
 179 004a 1368     		ldr	r3, [r2]
 180 004c 002B     		cmp	r3, #0
 181 004e FBD1     		bne	.L55
 182 0050 1460     		str	r4, [r2]
 183 0052 BAF1000F 		cmp	r10, #0
 184 0056 07D1     		bne	.L46
 185              	.L62:
 186 0058 7B6C     		ldr	r3, [r7, #68]
 187 005a 1B07     		lsls	r3, r3, #28
 188 005c 13D4     		bmi	.L61
 189              	.L53:
 190 005e 3246     		mov	r2, r6
 191 0060 4846     		mov	r0, r9
 192 0062 6946     		mov	r1, sp
 193 0064 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKcj
 194              	.L46:
 195 0068 5046     		mov	r0, r10
 196 006a 1AB0     		add	sp, sp, #104
 197              		@ sp needed
 198 006c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 199              	.L54:
 200 0070 4FF0000A 		mov	r10, #0
 201 0074 5046     		mov	r0, r10
 202 0076 1AB0     		add	sp, sp, #104
 203              		@ sp needed
 204 0078 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 205              	.L60:
 206 007c 6C60     		str	r4, [r5, #4]
 207 007e BAF1000F 		cmp	r10, #0
 208 0082 F1D1     		bne	.L46
 209 0084 E8E7     		b	.L62
 210              	.L61:
 211 0086 3868     		ldr	r0, [r7]
 212 0088 0D4A     		ldr	r2, .L63+4
 213 008a 0221     		movs	r1, #2
 214 008c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 215 0090 E5E7     		b	.L53
 216              	.L47:
 217 0092 4668     		ldr	r6, [r0, #4]
 218 0094 4FF0000A 		mov	r10, #0
 219 0098 0436     		adds	r6, r6, #4
 220 009a 3046     		mov	r0, r6
 221 009c FFF7FEFF 		bl	strlen
 222 00a0 3146     		mov	r1, r6
 223 00a2 6522     		movs	r2, #101
 224 00a4 461C     		adds	r6, r0, #1
 225 00a6 6846     		mov	r0, sp
 226 00a8 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 227 00ac 6B68     		ldr	r3, [r5, #4]
 228 00ae 2246     		mov	r2, r4
ARM GAS  /tmp/ccabAxam.s 			page 5


 229 00b0 1968     		ldr	r1, [r3]
 230 00b2 6960     		str	r1, [r5, #4]
 231 00b4 1C60     		str	r4, [r3]
 232 00b6 1C46     		mov	r4, r3
 233 00b8 B5E7     		b	.L48
 234              	.L64:
 235 00ba 00BF     		.align	2
 236              	.L63:
 237 00bc 00000000 		.word	reprap
 238 00c0 00000000 		.word	.LC0
 239              		.size	_ZN10GCodeQueue9QueueCodeER11GCodeBuffer, .-_ZN10GCodeQueue9QueueCodeER11GCodeBuffer
 240              		.section	.text._ZN10GCodeQueue10FillBufferEP11GCodeBuffer,"ax",%progbits
 241              		.align	1
 242              		.p2align 2,,3
 243              		.global	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer
 244              		.syntax unified
 245              		.thumb
 246              		.thumb_func
 247              		.fpu softvfp
 248              		.type	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer, %function
 249              	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer:
 250              		@ args = 0, pretend = 0, frame = 0
 251              		@ frame_needed = 0, uses_anonymous_args = 0
 252 0000 38B5     		push	{r3, r4, r5, lr}
 253 0002 4468     		ldr	r4, [r0, #4]
 254 0004 34B1     		cbz	r4, .L71
 255 0006 0C4B     		ldr	r3, .L72
 256 0008 E26E     		ldr	r2, [r4, #108]
 257 000a 9B68     		ldr	r3, [r3, #8]
 258 000c D3F80835 		ldr	r3, [r3, #1288]
 259 0010 9A42     		cmp	r2, r3
 260 0012 01D9     		bls	.L67
 261              	.L71:
 262 0014 0020     		movs	r0, #0
 263 0016 38BD     		pop	{r3, r4, r5, pc}
 264              	.L67:
 265 0018 0546     		mov	r5, r0
 266 001a 236F     		ldr	r3, [r4, #112]
 267 001c 0846     		mov	r0, r1
 268 001e 0B63     		str	r3, [r1, #48]
 269 0020 211D     		adds	r1, r4, #4
 270 0022 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKc
 271 0026 6A68     		ldr	r2, [r5, #4]
 272 0028 2B68     		ldr	r3, [r5]
 273 002a 1268     		ldr	r2, [r2]
 274 002c 0120     		movs	r0, #1
 275 002e 6A60     		str	r2, [r5, #4]
 276 0030 2360     		str	r3, [r4]
 277 0032 2C60     		str	r4, [r5]
 278 0034 38BD     		pop	{r3, r4, r5, pc}
 279              	.L73:
 280 0036 00BF     		.align	2
 281              	.L72:
 282 0038 00000000 		.word	reprap
 283              		.size	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer, .-_ZN10GCodeQueue10FillBufferEP11GCodeBuffer
 284              		.section	.text._ZNK10GCodeQueue6IsIdleEv,"ax",%progbits
 285              		.align	1
ARM GAS  /tmp/ccabAxam.s 			page 6


 286              		.p2align 2,,3
 287              		.global	_ZNK10GCodeQueue6IsIdleEv
 288              		.syntax unified
 289              		.thumb
 290              		.thumb_func
 291              		.fpu softvfp
 292              		.type	_ZNK10GCodeQueue6IsIdleEv, %function
 293              	_ZNK10GCodeQueue6IsIdleEv:
 294              		@ args = 0, pretend = 0, frame = 0
 295              		@ frame_needed = 0, uses_anonymous_args = 0
 296              		@ link register save eliminated.
 297 0000 4368     		ldr	r3, [r0, #4]
 298 0002 4BB1     		cbz	r3, .L76
 299 0004 054A     		ldr	r2, .L77
 300 0006 D86E     		ldr	r0, [r3, #108]
 301 0008 9368     		ldr	r3, [r2, #8]
 302 000a D3F80835 		ldr	r3, [r3, #1288]
 303 000e 9842     		cmp	r0, r3
 304 0010 94BF     		ite	ls
 305 0012 0020     		movls	r0, #0
 306 0014 0120     		movhi	r0, #1
 307 0016 7047     		bx	lr
 308              	.L76:
 309 0018 0120     		movs	r0, #1
 310 001a 7047     		bx	lr
 311              	.L78:
 312              		.align	2
 313              	.L77:
 314 001c 00000000 		.word	reprap
 315              		.size	_ZNK10GCodeQueue6IsIdleEv, .-_ZNK10GCodeQueue6IsIdleEv
 316              		.section	.text._ZN10GCodeQueue12PurgeEntriesEv,"ax",%progbits
 317              		.align	1
 318              		.p2align 2,,3
 319              		.global	_ZN10GCodeQueue12PurgeEntriesEv
 320              		.syntax unified
 321              		.thumb
 322              		.thumb_func
 323              		.fpu softvfp
 324              		.type	_ZN10GCodeQueue12PurgeEntriesEv, %function
 325              	_ZN10GCodeQueue12PurgeEntriesEv:
 326              		@ args = 0, pretend = 0, frame = 0
 327              		@ frame_needed = 0, uses_anonymous_args = 0
 328              		@ link register save eliminated.
 329 0000 4368     		ldr	r3, [r0, #4]
 330 0002 93B1     		cbz	r3, .L95
 331 0004 0021     		movs	r1, #0
 332 0006 0E4A     		ldr	r2, .L97
 333 0008 30B4     		push	{r4, r5}
 334 000a 9268     		ldr	r2, [r2, #8]
 335 000c D2F80445 		ldr	r4, [r2, #1284]
 336              	.L81:
 337 0010 DA6E     		ldr	r2, [r3, #108]
 338 0012 9442     		cmp	r4, r2
 339 0014 0AD2     		bcs	.L82
 340 0016 0568     		ldr	r5, [r0]
 341 0018 1A68     		ldr	r2, [r3]
 342 001a 1D60     		str	r5, [r3]
ARM GAS  /tmp/ccabAxam.s 			page 7


 343 001c 0360     		str	r3, [r0]
 344 001e 51B1     		cbz	r1, .L96
 345 0020 1346     		mov	r3, r2
 346 0022 0A60     		str	r2, [r1]
 347 0024 002B     		cmp	r3, #0
 348 0026 F3D1     		bne	.L81
 349              	.L79:
 350 0028 30BC     		pop	{r4, r5}
 351              	.L95:
 352 002a 7047     		bx	lr
 353              	.L82:
 354 002c 1946     		mov	r1, r3
 355 002e 1B68     		ldr	r3, [r3]
 356 0030 002B     		cmp	r3, #0
 357 0032 EDD1     		bne	.L81
 358 0034 F8E7     		b	.L79
 359              	.L96:
 360 0036 1346     		mov	r3, r2
 361 0038 4260     		str	r2, [r0, #4]
 362 003a 002B     		cmp	r3, #0
 363 003c E8D1     		bne	.L81
 364 003e F3E7     		b	.L79
 365              	.L98:
 366              		.align	2
 367              	.L97:
 368 0040 00000000 		.word	reprap
 369              		.size	_ZN10GCodeQueue12PurgeEntriesEv, .-_ZN10GCodeQueue12PurgeEntriesEv
 370              		.section	.text._ZN10GCodeQueue5ClearEv,"ax",%progbits
 371              		.align	1
 372              		.p2align 2,,3
 373              		.global	_ZN10GCodeQueue5ClearEv
 374              		.syntax unified
 375              		.thumb
 376              		.thumb_func
 377              		.fpu softvfp
 378              		.type	_ZN10GCodeQueue5ClearEv, %function
 379              	_ZN10GCodeQueue5ClearEv:
 380              		@ args = 0, pretend = 0, frame = 0
 381              		@ frame_needed = 0, uses_anonymous_args = 0
 382              		@ link register save eliminated.
 383 0000 4368     		ldr	r3, [r0, #4]
 384 0002 4BB1     		cbz	r3, .L99
 385 0004 0168     		ldr	r1, [r0]
 386 0006 00E0     		b	.L102
 387              	.L106:
 388 0008 1346     		mov	r3, r2
 389              	.L102:
 390 000a 1A68     		ldr	r2, [r3]
 391 000c 4260     		str	r2, [r0, #4]
 392 000e 1960     		str	r1, [r3]
 393 0010 0360     		str	r3, [r0]
 394 0012 1946     		mov	r1, r3
 395 0014 002A     		cmp	r2, #0
 396 0016 F7D1     		bne	.L106
 397              	.L99:
 398 0018 7047     		bx	lr
 399              		.size	_ZN10GCodeQueue5ClearEv, .-_ZN10GCodeQueue5ClearEv
ARM GAS  /tmp/ccabAxam.s 			page 8


 400 001a 00BF     		.section	.text._ZN10GCodeQueue11DiagnosticsE11MessageType,"ax",%progbits
 401              		.align	1
 402              		.p2align 2,,3
 403              		.global	_ZN10GCodeQueue11DiagnosticsE11MessageType
 404              		.syntax unified
 405              		.thumb
 406              		.thumb_func
 407              		.fpu softvfp
 408              		.type	_ZN10GCodeQueue11DiagnosticsE11MessageType, %function
 409              	_ZN10GCodeQueue11DiagnosticsE11MessageType:
 410              		@ args = 0, pretend = 0, frame = 0
 411              		@ frame_needed = 0, uses_anonymous_args = 0
 412 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 413 0004 0446     		mov	r4, r0
 414 0006 144A     		ldr	r2, .L117
 415 0008 4068     		ldr	r0, [r0, #4]
 416 000a 144B     		ldr	r3, .L117+4
 417 000c 144E     		ldr	r6, .L117+8
 418 000e 0028     		cmp	r0, #0
 419 0010 18BF     		it	ne
 420 0012 1346     		movne	r3, r2
 421 0014 82B0     		sub	sp, sp, #8
 422 0016 3068     		ldr	r0, [r6]
 423 0018 124A     		ldr	r2, .L117+12
 424 001a 0F46     		mov	r7, r1
 425 001c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 426 0020 6468     		ldr	r4, [r4, #4]
 427 0022 B4B1     		cbz	r4, .L107
 428 0024 0025     		movs	r5, #0
 429 0026 DFF84480 		ldr	r8, .L117+20
 430              	.L110:
 431 002a E36E     		ldr	r3, [r4, #108]
 432 002c 3068     		ldr	r0, [r6]
 433 002e 0093     		str	r3, [sp]
 434 0030 4246     		mov	r2, r8
 435 0032 231D     		adds	r3, r4, #4
 436 0034 3946     		mov	r1, r7
 437 0036 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 438 003a 2468     		ldr	r4, [r4]
 439 003c 0135     		adds	r5, r5, #1
 440 003e 002C     		cmp	r4, #0
 441 0040 F3D1     		bne	.L110
 442 0042 0822     		movs	r2, #8
 443 0044 3068     		ldr	r0, [r6]
 444 0046 0092     		str	r2, [sp]
 445 0048 2B46     		mov	r3, r5
 446 004a 3946     		mov	r1, r7
 447 004c 064A     		ldr	r2, .L117+16
 448 004e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 449              	.L107:
 450 0052 02B0     		add	sp, sp, #8
 451              		@ sp needed
 452 0054 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 453              	.L118:
 454              		.align	2
 455              	.L117:
 456 0058 08000000 		.word	.LC2
ARM GAS  /tmp/ccabAxam.s 			page 9


 457 005c 00000000 		.word	.LC1
 458 0060 00000000 		.word	reprap
 459 0064 14000000 		.word	.LC3
 460 0068 44000000 		.word	.LC5
 461 006c 28000000 		.word	.LC4
 462              		.size	_ZN10GCodeQueue11DiagnosticsE11MessageType, .-_ZN10GCodeQueue11DiagnosticsE11MessageType
 463              		.section	.text._ZN10QueuedCode10AssignFromER11GCodeBuffer,"ax",%progbits
 464              		.align	1
 465              		.p2align 2,,3
 466              		.global	_ZN10QueuedCode10AssignFromER11GCodeBuffer
 467              		.syntax unified
 468              		.thumb
 469              		.thumb_func
 470              		.fpu softvfp
 471              		.type	_ZN10QueuedCode10AssignFromER11GCodeBuffer, %function
 472              	_ZN10QueuedCode10AssignFromER11GCodeBuffer:
 473              		@ args = 0, pretend = 0, frame = 0
 474              		@ frame_needed = 0, uses_anonymous_args = 0
 475              		@ link register save eliminated.
 476 0000 0B6B     		ldr	r3, [r1, #48]
 477 0002 0430     		adds	r0, r0, #4
 478 0004 C366     		str	r3, [r0, #108]
 479 0006 4D31     		adds	r1, r1, #77
 480 0008 6522     		movs	r2, #101
 481 000a FFF7FEBF 		b	_Z11SafeStrncpyPcPKcj
 482              		.size	_ZN10QueuedCode10AssignFromER11GCodeBuffer, .-_ZN10QueuedCode10AssignFromER11GCodeBuffer
 483 000e 00BF     		.section	.text._ZN10QueuedCode8AssignToEP11GCodeBuffer,"ax",%progbits
 484              		.align	1
 485              		.p2align 2,,3
 486              		.global	_ZN10QueuedCode8AssignToEP11GCodeBuffer
 487              		.syntax unified
 488              		.thumb
 489              		.thumb_func
 490              		.fpu softvfp
 491              		.type	_ZN10QueuedCode8AssignToEP11GCodeBuffer, %function
 492              	_ZN10QueuedCode8AssignToEP11GCodeBuffer:
 493              		@ args = 0, pretend = 0, frame = 0
 494              		@ frame_needed = 0, uses_anonymous_args = 0
 495              		@ link register save eliminated.
 496 0000 0B46     		mov	r3, r1
 497 0002 026F     		ldr	r2, [r0, #112]
 498 0004 011D     		adds	r1, r0, #4
 499 0006 1A63     		str	r2, [r3, #48]
 500 0008 1846     		mov	r0, r3
 501 000a FFF7FEBF 		b	_ZN11GCodeBuffer3PutEPKc
 502              		.size	_ZN10QueuedCode8AssignToEP11GCodeBuffer, .-_ZN10QueuedCode8AssignToEP11GCodeBuffer
 503 000e 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 504              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 505              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 506              	_ZL28cpu_irq_prev_interrupt_state:
 507 0000 00       		.space	1
 508              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 509              		.align	2
 510              		.type	_ZL32cpu_irq_critical_section_counter, %object
 511              		.size	_ZL32cpu_irq_critical_section_counter, 4
 512              	_ZL32cpu_irq_critical_section_counter:
 513 0000 00000000 		.space	4
ARM GAS  /tmp/ccabAxam.s 			page 10


 514              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 515              		.align	2
 516              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 517              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 518              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 519 0000 00000000 		.space	4
 520              		.section	.rodata._ZN10GCodeQueue11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 521              		.align	2
 522              	.LC1:
 523 0000 656D7074 		.ascii	"empty.\000"
 523      792E00
 524 0007 00       		.space	1
 525              	.LC2:
 526 0008 6E6F7420 		.ascii	"not empty:\000"
 526      656D7074 
 526      793A00
 527 0013 00       		.space	1
 528              	.LC3:
 529 0014 436F6465 		.ascii	"Code queue is %s\012\000"
 529      20717565 
 529      75652069 
 529      73202573 
 529      0A00
 530 0026 0000     		.space	2
 531              	.LC4:
 532 0028 51756575 		.ascii	"Queued '%s' for move %lu\012\000"
 532      65642027 
 532      25732720 
 532      666F7220 
 532      6D6F7665 
 533 0042 0000     		.space	2
 534              	.LC5:
 535 0044 2564206F 		.ascii	"%d of %d codes have been queued.\012\000"
 535      66202564 
 535      20636F64 
 535      65732068 
 535      61766520 
 536              		.section	.rodata._ZN10GCodeQueue9QueueCodeER11GCodeBuffer.str1.4,"aMS",%progbits,1
 537              		.align	2
 538              	.LC0:
 539 0000 28737761 		.ascii	"(swap) \000"
 539      70292000 
 540              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
