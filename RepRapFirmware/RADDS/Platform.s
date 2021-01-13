ARM GAS  /tmp/cclDCdxf.s 			page 1


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
  11              		.file	"Platform.cpp"
  12              		.section	.text._ZL12FanInterrupt17CallbackParameter,"ax",%progbits
  13              		.align	1
  14              		.p2align 2,,3
  15              		.syntax unified
  16              		.thumb
  17              		.thumb_func
  18              		.fpu softvfp
  19              		.type	_ZL12FanInterrupt17CallbackParameter, %function
  20              	_ZL12FanInterrupt17CallbackParameter:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23              		@ link register save eliminated.
  24 0000 094A     		ldr	r2, .L9
  25 0002 1368     		ldr	r3, [r2]
  26 0004 0133     		adds	r3, r3, #1
  27 0006 202B     		cmp	r3, #32
  28 0008 1360     		str	r3, [r2]
  29 000a 0BD1     		bne	.L7
  30 000c 30B4     		push	{r4, r5}
  31 000e 0024     		movs	r4, #0
  32 0010 064B     		ldr	r3, .L9+4
  33 0012 0749     		ldr	r1, .L9+8
  34 0014 1869     		ldr	r0, [r3, #16]
  35 0016 0B68     		ldr	r3, [r1]
  36 0018 064D     		ldr	r5, .L9+12
  37 001a C31A     		subs	r3, r0, r3
  38 001c 2B60     		str	r3, [r5]
  39 001e 0860     		str	r0, [r1]
  40 0020 1460     		str	r4, [r2]
  41 0022 30BC     		pop	{r4, r5}
  42              	.L7:
  43 0024 7047     		bx	lr
  44              	.L10:
  45 0026 00BF     		.align	2
  46              	.L9:
  47 0028 00000000 		.word	.LANCHOR0
  48 002c 00400840 		.word	1074282496
  49 0030 00000000 		.word	.LANCHOR1
  50 0034 00000000 		.word	.LANCHOR2
  51              		.size	_ZL12FanInterrupt17CallbackParameter, .-_ZL12FanInterrupt17CallbackParameter
  52              		.section	.text._ZN8Platform13DisableDriverEj.part.18,"ax",%progbits
  53              		.align	1
  54              		.p2align 2,,3
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  /tmp/cclDCdxf.s 			page 2


  58              		.fpu softvfp
  59              		.type	_ZN8Platform13DisableDriverEj.part.18, %function
  60              	_ZN8Platform13DisableDriverEj.part.18:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63 0000 10B5     		push	{r4, lr}
  64 0002 4418     		adds	r4, r0, r1
  65 0004 94F9C230 		ldrsb	r3, [r4, #194]
  66 0008 054A     		ldr	r2, .L13
  67 000a 002B     		cmp	r3, #0
  68 000c 505C     		ldrb	r0, [r2, r1]	@ zero_extendqisi2
  69 000e CCBF     		ite	gt
  70 0010 0021     		movgt	r1, #0
  71 0012 0121     		movle	r1, #1
  72 0014 FFF7FEFF 		bl	digitalWrite
  73 0018 0023     		movs	r3, #0
  74 001a 84F8B030 		strb	r3, [r4, #176]
  75 001e 10BD     		pop	{r4, pc}
  76              	.L14:
  77              		.align	2
  78              	.L13:
  79 0020 00000000 		.word	.LANCHOR3
  80              		.size	_ZN8Platform13DisableDriverEj.part.18, .-_ZN8Platform13DisableDriverEj.part.18
  81              		.section	.text._ZN8Platform12EnableDriverEj.part.19,"ax",%progbits
  82              		.align	1
  83              		.p2align 2,,3
  84              		.syntax unified
  85              		.thumb
  86              		.thumb_func
  87              		.fpu softvfp
  88              		.type	_ZN8Platform12EnableDriverEj.part.19, %function
  89              	_ZN8Platform12EnableDriverEj.part.19:
  90              		@ args = 0, pretend = 0, frame = 0
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92              		@ link register save eliminated.
  93 0000 0222     		movs	r2, #2
  94 0002 0B46     		mov	r3, r1
  95 0004 0844     		add	r0, r0, r1
  96 0006 80F8B020 		strb	r2, [r0, #176]
  97 000a 0829     		cmp	r1, #8
  98 000c 90F9C210 		ldrsb	r1, [r0, #194]
  99 0010 98BF     		it	ls
 100 0012 90F8B020 		ldrbls	r2, [r0, #176]	@ zero_extendqisi2
 101 0016 044A     		ldr	r2, .L17
 102 0018 0029     		cmp	r1, #0
 103 001a D4BF     		ite	le
 104 001c 0021     		movle	r1, #0
 105 001e 0121     		movgt	r1, #1
 106 0020 D05C     		ldrb	r0, [r2, r3]	@ zero_extendqisi2
 107 0022 FFF7FEBF 		b	digitalWrite
 108              	.L18:
 109 0026 00BF     		.align	2
 110              	.L17:
 111 0028 00000000 		.word	.LANCHOR3
 112              		.size	_ZN8Platform12EnableDriverEj.part.19, .-_ZN8Platform12EnableDriverEj.part.19
 113              		.section	.text._ZN8Platform14AppendAuxReplyEPKcb.part.21,"ax",%progbits
 114              		.align	1
ARM GAS  /tmp/cclDCdxf.s 			page 3


 115              		.p2align 2,,3
 116              		.syntax unified
 117              		.thumb
 118              		.thumb_func
 119              		.fpu softvfp
 120              		.type	_ZN8Platform14AppendAuxReplyEPKcb.part.21, %function
 121              	_ZN8Platform14AppendAuxReplyEPKcb.part.21:
 122              		@ args = 0, pretend = 0, frame = 16
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124 0000 70B5     		push	{r4, r5, r6, lr}
 125 0002 0446     		mov	r4, r0
 126 0004 1546     		mov	r5, r2
 127 0006 84B0     		sub	sp, sp, #16
 128 0008 0E46     		mov	r6, r1
 129 000a 02A8     		add	r0, sp, #8
 130 000c 04F5A861 		add	r1, r4, #1344
 131 0010 4FF0FF32 		mov	r2, #-1
 132 0014 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 133 0018 7DB9     		cbnz	r5, .L32
 134 001a D4F84405 		ldr	r0, [r4, #1348]
 135 001e D8B1     		cbz	r0, .L33
 136              	.L23:
 137 0020 D4F84835 		ldr	r3, [r4, #1352]
 138 0024 3146     		mov	r1, r6
 139 0026 0133     		adds	r3, r3, #1
 140 0028 C4F84835 		str	r3, [r4, #1352]
 141 002c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 142              	.L22:
 143 0030 02A8     		add	r0, sp, #8
 144 0032 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 145 0036 04B0     		add	sp, sp, #16
 146              		@ sp needed
 147 0038 70BD     		pop	{r4, r5, r6, pc}
 148              	.L32:
 149 003a 01A8     		add	r0, sp, #4
 150 003c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 151 0040 0028     		cmp	r0, #0
 152 0042 F5D0     		beq	.L22
 153 0044 3146     		mov	r1, r6
 154 0046 0198     		ldr	r0, [sp, #4]
 155 0048 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 156 004c 04F22C50 		addw	r0, r4, #1324
 157 0050 0199     		ldr	r1, [sp, #4]
 158 0052 FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 159 0056 EBE7     		b	.L22
 160              	.L33:
 161 0058 04F24450 		addw	r0, r4, #1348
 162 005c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 163 0060 0028     		cmp	r0, #0
 164 0062 E5D0     		beq	.L22
 165 0064 D4F84405 		ldr	r0, [r4, #1348]
 166 0068 DAE7     		b	.L23
 167              		.size	_ZN8Platform14AppendAuxReplyEPKcb.part.21, .-_ZN8Platform14AppendAuxReplyEPKcb.part.21
 168 006a 00BF     		.section	.text._ZN8Platform11AtxPowerOffEb.part.22,"ax",%progbits
 169              		.align	1
 170              		.p2align 2,,3
 171              		.syntax unified
ARM GAS  /tmp/cclDCdxf.s 			page 4


 172              		.thumb
 173              		.thumb_func
 174              		.fpu softvfp
 175              		.type	_ZN8Platform11AtxPowerOffEb.part.22, %function
 176              	_ZN8Platform11AtxPowerOffEb.part.22:
 177              		@ args = 0, pretend = 0, frame = 0
 178              		@ frame_needed = 0, uses_anonymous_args = 0
 179 0000 0022     		movs	r2, #0
 180 0002 0368     		ldr	r3, [r0]
 181 0004 80F82026 		strb	r2, [r0, #1568]
 182 0008 8BB1     		cbz	r3, .L40
 183 000a 10B5     		push	{r4, lr}
 184 000c 0446     		mov	r4, r0
 185 000e 0A4A     		ldr	r2, .L43
 186 0010 1846     		mov	r0, r3
 187 0012 D4F88815 		ldr	r1, [r4, #1416]
 188 0016 FFF7FEFF 		bl	_ZN6Logger10LogMessageElPKc
 189 001a 2068     		ldr	r0, [r4]
 190 001c 0121     		movs	r1, #1
 191 001e FFF7FEFF 		bl	_ZN6Logger5FlushEb
 192 0022 BDE81040 		pop	{r4, lr}
 193 0026 0021     		movs	r1, #0
 194 0028 2820     		movs	r0, #40
 195 002a FFF7FEBF 		b	_ZN6IoPort12WriteDigitalEhb
 196              	.L40:
 197 002e 0021     		movs	r1, #0
 198 0030 2820     		movs	r0, #40
 199 0032 FFF7FEBF 		b	_ZN6IoPort12WriteDigitalEhb
 200              	.L44:
 201 0036 00BF     		.align	2
 202              	.L43:
 203 0038 00000000 		.word	.LC7
 204              		.size	_ZN8Platform11AtxPowerOffEb.part.22, .-_ZN8Platform11AtxPowerOffEb.part.22
 205              		.section	.text.UrgentInit,"ax",%progbits
 206              		.align	1
 207              		.p2align 2,,3
 208              		.global	UrgentInit
 209              		.syntax unified
 210              		.thumb
 211              		.thumb_func
 212              		.fpu softvfp
 213              		.type	UrgentInit, %function
 214              	UrgentInit:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217              		@ link register save eliminated.
 218 0000 7047     		bx	lr
 219              		.size	UrgentInit, .-UrgentInit
 220 0002 00BF     		.section	.text._ZN8PlatformC2Ev,"ax",%progbits
 221              		.align	1
 222              		.p2align 2,,3
 223              		.global	_ZN8PlatformC2Ev
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu softvfp
 228              		.type	_ZN8PlatformC2Ev, %function
ARM GAS  /tmp/cclDCdxf.s 			page 5


 229              	_ZN8PlatformC2Ev:
 230              		@ args = 0, pretend = 0, frame = 0
 231              		@ frame_needed = 0, uses_anonymous_args = 0
 232 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 233 0004 0025     		movs	r5, #0
 234 0006 0123     		movs	r3, #1
 235 0008 0560     		str	r5, [r0]
 236 000a 80F8A730 		strb	r3, [r0, #167]
 237 000e 80F8A850 		strb	r5, [r0, #168]
 238 0012 C0F8AC50 		str	r5, [r0, #172]
 239 0016 0446     		mov	r4, r0
 240 0018 00F52C70 		add	r0, r0, #688
 241 001c FFF7FEFF 		bl	_ZN16ZProbeProgrammerC1Ev
 242              		.syntax unified
 243              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 244 0020 EFF31086 		MRS r6, primask
 245              	@ 0 "" 2
 246              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 247 0024 72B6     		cpsid i
 248              	@ 0 "" 2
 249              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 250 0026 BFF35F8F 		dmb
 251              	@ 0 "" 2
 252              		.thumb
 253              		.syntax unified
 254 002a 2B46     		mov	r3, r5
 255 002c 2946     		mov	r1, r5
 256 002e 4A48     		ldr	r0, .L61
 257 0030 0570     		strb	r5, [r0]
 258 0032 C4F8F052 		str	r5, [r4, #752]
 259 0036 C4F8EC52 		str	r5, [r4, #748]
 260 003a 84F8F452 		strb	r5, [r4, #756]
 261              	.L47:
 262 003e 04EB4302 		add	r2, r4, r3, lsl #1
 263 0042 0133     		adds	r3, r3, #1
 264 0044 082B     		cmp	r3, #8
 265 0046 A2F8DC12 		strh	r1, [r2, #732]	@ movhi
 266 004a F8D1     		bne	.L47
 267 004c 26B9     		cbnz	r6, .L48
 268 004e 0123     		movs	r3, #1
 269 0050 0370     		strb	r3, [r0]
 270              		.syntax unified
 271              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 272 0052 BFF35F8F 		dmb
 273              	@ 0 "" 2
 274              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 275 0056 62B6     		cpsie i
 276              	@ 0 "" 2
 277              		.thumb
 278              		.syntax unified
 279              	.L48:
 280              		.syntax unified
 281              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 282 0058 EFF31085 		MRS r5, primask
 283              	@ 0 "" 2
 284              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 285 005c 72B6     		cpsid i
ARM GAS  /tmp/cclDCdxf.s 			page 6


 286              	@ 0 "" 2
 287              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 288 005e BFF35F8F 		dmb
 289              	@ 0 "" 2
 290              		.thumb
 291              		.syntax unified
 292 0062 0022     		movs	r2, #0
 293 0064 1346     		mov	r3, r2
 294 0066 1146     		mov	r1, r2
 295 0068 0270     		strb	r2, [r0]
 296 006a C4F80C23 		str	r2, [r4, #780]
 297 006e C4F80823 		str	r2, [r4, #776]
 298 0072 84F81023 		strb	r2, [r4, #784]
 299              	.L49:
 300 0076 04EB4302 		add	r2, r4, r3, lsl #1
 301 007a 0133     		adds	r3, r3, #1
 302 007c 082B     		cmp	r3, #8
 303 007e A2F8F812 		strh	r1, [r2, #760]	@ movhi
 304 0082 F8D1     		bne	.L49
 305 0084 25B9     		cbnz	r5, .L50
 306 0086 0123     		movs	r3, #1
 307 0088 0370     		strb	r3, [r0]
 308              		.syntax unified
 309              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 310 008a BFF35F8F 		dmb
 311              	@ 0 "" 2
 312              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 313 008e 62B6     		cpsie i
 314              	@ 0 "" 2
 315              		.thumb
 316              		.syntax unified
 317              	.L50:
 318 0090 0021     		movs	r1, #0
 319 0092 0127     		movs	r7, #1
 320 0094 04F54572 		add	r2, r4, #788
 321 0098 04F24446 		addw	r6, r4, #1092
 322              	.L53:
 323              		.syntax unified
 324              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 325 009c EFF31085 		MRS r5, primask
 326              	@ 0 "" 2
 327              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 328 00a0 72B6     		cpsid i
 329              	@ 0 "" 2
 330              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 331 00a2 BFF35F8F 		dmb
 332              	@ 0 "" 2
 333              		.thumb
 334              		.syntax unified
 335 00a6 0023     		movs	r3, #0
 336 00a8 0170     		strb	r1, [r0]
 337 00aa 5164     		str	r1, [r2, #68]
 338 00ac 1164     		str	r1, [r2, #64]
 339 00ae 82F84810 		strb	r1, [r2, #72]
 340              	.L51:
 341 00b2 22F81310 		strh	r1, [r2, r3, lsl #1]	@ movhi
 342 00b6 0133     		adds	r3, r3, #1
ARM GAS  /tmp/cclDCdxf.s 			page 7


 343 00b8 202B     		cmp	r3, #32
 344 00ba FAD1     		bne	.L51
 345 00bc 1DB9     		cbnz	r5, .L52
 346 00be 0770     		strb	r7, [r0]
 347              		.syntax unified
 348              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 349 00c0 BFF35F8F 		dmb
 350              	@ 0 "" 2
 351              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 352 00c4 62B6     		cpsie i
 353              	@ 0 "" 2
 354              		.thumb
 355              		.syntax unified
 356              	.L52:
 357 00c6 4C32     		adds	r2, r2, #76
 358 00c8 B242     		cmp	r2, r6
 359 00ca E7D1     		bne	.L53
 360 00cc 0023     		movs	r3, #0
 361 00ce 0026     		movs	r6, #0
 362 00d0 1F46     		mov	r7, r3
 363 00d2 DFF88890 		ldr	r9, .L61+4
 364 00d6 C4F81C35 		str	r3, [r4, #1308]
 365 00da C4F82C35 		str	r3, [r4, #1324]
 366 00de C4F84035 		str	r3, [r4, #1344]
 367 00e2 C4F84435 		str	r3, [r4, #1348]
 368 00e6 C4F85035 		str	r3, [r4, #1360]
 369 00ea C4F86435 		str	r3, [r4, #1380]
 370 00ee 84F87135 		strb	r3, [r4, #1393]
 371 00f2 C4F87835 		str	r3, [r4, #1400]
 372 00f6 C4F88435 		str	r3, [r4, #1412]
 373 00fa 04F5B265 		add	r5, r4, #1424
 374 00fe 04F5C268 		add	r8, r4, #1552
 375              	.L54:
 376 0102 2846     		mov	r0, r5
 377 0104 FFF7FEFF 		bl	_ZN7PwmPortC1Ev
 378 0108 A81D     		adds	r0, r5, #6
 379 010a FFF7FEFF 		bl	_ZN7PwmPortC1Ev
 380 010e 4FF0FF33 		mov	r3, #-1
 381 0112 2F73     		strb	r7, [r5, #12]
 382 0114 2E61     		str	r6, [r5, #16]	@ float
 383 0116 6E61     		str	r6, [r5, #20]	@ float
 384 0118 C5F81890 		str	r9, [r5, #24]	@ float
 385 011c EB61     		str	r3, [r5, #28]
 386 011e 2035     		adds	r5, r5, #32
 387 0120 4545     		cmp	r5, r8
 388 0122 EED1     		bne	.L54
 389 0124 04F21460 		addw	r0, r4, #1556
 390 0128 FFF7FEFF 		bl	_ZN7PwmPortC1Ev
 391 012c 04F21A60 		addw	r0, r4, #1562
 392 0130 FFF7FEFF 		bl	_ZN7PwmPortC1Ev
 393 0134 84F86576 		strb	r7, [r4, #1637]
 394 0138 84F86676 		strb	r7, [r4, #1638]
 395 013c 4FF44460 		mov	r0, #3136
 396 0140 FFF7FEFF 		bl	_Znwj
 397 0144 0546     		mov	r5, r0
 398 0146 2146     		mov	r1, r4
 399 0148 FFF7FEFF 		bl	_ZN11MassStorageC1EP8Platform
ARM GAS  /tmp/cclDCdxf.s 			page 8


 400 014c C4F86855 		str	r5, [r4, #1384]
 401 0150 2046     		mov	r0, r4
 402 0152 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 403              	.L62:
 404 0156 00BF     		.align	2
 405              	.L61:
 406 0158 00000000 		.word	g_interrupt_enabled
 407 015c 00401C46 		.word	1176256512
 408              		.size	_ZN8PlatformC2Ev, .-_ZN8PlatformC2Ev
 409              		.global	_ZN8PlatformC1Ev
 410              		.thumb_set _ZN8PlatformC1Ev,_ZN8PlatformC2Ev
 411              		.section	.text._ZN8Platform17SetZProbeDefaultsEv,"ax",%progbits
 412              		.align	1
 413              		.p2align 2,,3
 414              		.global	_ZN8Platform17SetZProbeDefaultsEv
 415              		.syntax unified
 416              		.thumb
 417              		.thumb_func
 418              		.fpu softvfp
 419              		.type	_ZN8Platform17SetZProbeDefaultsEv, %function
 420              	_ZN8Platform17SetZProbeDefaultsEv:
 421              		@ args = 0, pretend = 0, frame = 0
 422              		@ frame_needed = 0, uses_anonymous_args = 0
 423 0000 38B5     		push	{r3, r4, r5, lr}
 424 0002 0446     		mov	r4, r0
 425 0004 084D     		ldr	r5, .L65
 426 0006 0430     		adds	r0, r0, #4
 427 0008 0021     		movs	r1, #0
 428 000a FFF7FEFF 		bl	_ZN6ZProbe4InitEf
 429 000e 04F13400 		add	r0, r4, #52
 430 0012 2946     		mov	r1, r5
 431 0014 FFF7FEFF 		bl	_ZN6ZProbe4InitEf
 432 0018 2946     		mov	r1, r5
 433 001a 04F16400 		add	r0, r4, #100
 434 001e BDE83840 		pop	{r3, r4, r5, lr}
 435 0022 FFF7FEBF 		b	_ZN6ZProbe4InitEf
 436              	.L66:
 437 0026 00BF     		.align	2
 438              	.L65:
 439 0028 3333333F 		.word	1060320051
 440              		.size	_ZN8Platform17SetZProbeDefaultsEv, .-_ZN8Platform17SetZProbeDefaultsEv
 441              		.section	.text._ZN8Platform10InitZProbeEv,"ax",%progbits
 442              		.align	1
 443              		.p2align 2,,3
 444              		.global	_ZN8Platform10InitZProbeEv
 445              		.syntax unified
 446              		.thumb
 447              		.thumb_func
 448              		.fpu softvfp
 449              		.type	_ZN8Platform10InitZProbeEv, %function
 450              	_ZN8Platform10InitZProbeEv:
 451              		@ args = 0, pretend = 0, frame = 0
 452              		@ frame_needed = 0, uses_anonymous_args = 0
 453 0000 38B5     		push	{r3, r4, r5, lr}
 454 0002 0446     		mov	r4, r0
 455              		.syntax unified
 456              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
ARM GAS  /tmp/cclDCdxf.s 			page 9


 457 0004 EFF31085 		MRS r5, primask
 458              	@ 0 "" 2
 459              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 460 0008 72B6     		cpsid i
 461              	@ 0 "" 2
 462              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 463 000a BFF35F8F 		dmb
 464              	@ 0 "" 2
 465              		.thumb
 466              		.syntax unified
 467 000e 0022     		movs	r2, #0
 468 0010 1346     		mov	r3, r2
 469 0012 1146     		mov	r1, r2
 470 0014 4F48     		ldr	r0, .L84
 471 0016 0270     		strb	r2, [r0]
 472 0018 C4F8F022 		str	r2, [r4, #752]
 473 001c C4F8EC22 		str	r2, [r4, #748]
 474 0020 84F8F422 		strb	r2, [r4, #756]
 475              	.L68:
 476 0024 04EB4302 		add	r2, r4, r3, lsl #1
 477 0028 0133     		adds	r3, r3, #1
 478 002a 082B     		cmp	r3, #8
 479 002c A2F8DC12 		strh	r1, [r2, #732]	@ movhi
 480 0030 F8D1     		bne	.L68
 481 0032 25B9     		cbnz	r5, .L69
 482 0034 0123     		movs	r3, #1
 483 0036 0370     		strb	r3, [r0]
 484              		.syntax unified
 485              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 486 0038 BFF35F8F 		dmb
 487              	@ 0 "" 2
 488              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 489 003c 62B6     		cpsie i
 490              	@ 0 "" 2
 491              		.thumb
 492              		.syntax unified
 493              	.L69:
 494              		.syntax unified
 495              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 496 003e EFF31085 		MRS r5, primask
 497              	@ 0 "" 2
 498              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 499 0042 72B6     		cpsid i
 500              	@ 0 "" 2
 501              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 502 0044 BFF35F8F 		dmb
 503              	@ 0 "" 2
 504              		.thumb
 505              		.syntax unified
 506 0048 0022     		movs	r2, #0
 507 004a 1346     		mov	r3, r2
 508 004c 1146     		mov	r1, r2
 509 004e 0270     		strb	r2, [r0]
 510 0050 C4F80C23 		str	r2, [r4, #780]
 511 0054 C4F80823 		str	r2, [r4, #776]
 512 0058 84F81023 		strb	r2, [r4, #784]
 513              	.L70:
ARM GAS  /tmp/cclDCdxf.s 			page 10


 514 005c 04EB4302 		add	r2, r4, r3, lsl #1
 515 0060 0133     		adds	r3, r3, #1
 516 0062 082B     		cmp	r3, #8
 517 0064 A2F8F812 		strh	r1, [r2, #760]	@ movhi
 518 0068 F8D1     		bne	.L70
 519 006a 25B9     		cbnz	r5, .L71
 520 006c 0123     		movs	r3, #1
 521 006e 0370     		strb	r3, [r0]
 522              		.syntax unified
 523              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 524 0070 BFF35F8F 		dmb
 525              	@ 0 "" 2
 526              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 527 0074 62B6     		cpsie i
 528              	@ 0 "" 2
 529              		.thumb
 530              		.syntax unified
 531              	.L71:
 532 0076 2222     		movs	r2, #34
 533 0078 94F89430 		ldrb	r3, [r4, #148]	@ zero_extendqisi2
 534 007c 84F8AD22 		strb	r2, [r4, #685]
 535 0080 013B     		subs	r3, r3, #1
 536 0082 062B     		cmp	r3, #6
 537 0084 5BD8     		bhi	.L72
 538 0086 DFE803F0 		tbb	[pc, r3]
 539              	.L74:
 540 008a 14       		.byte	(.L73-.L74)/2
 541 008b 14       		.byte	(.L73-.L74)/2
 542 008c 47       		.byte	(.L75-.L74)/2
 543 008d 27       		.byte	(.L76-.L74)/2
 544 008e 5A       		.byte	(.L72-.L74)/2
 545 008f 37       		.byte	(.L77-.L74)/2
 546 0090 04       		.byte	(.L78-.L74)/2
 547 0091 00       		.p2align 1
 548              	.L78:
 549 0092 0021     		movs	r1, #0
 550 0094 94F97005 		ldrsb	r0, [r4, #1392]
 551 0098 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 552 009c 0022     		movs	r2, #0
 553 009e 0121     		movs	r1, #1
 554 00a0 94F8AC02 		ldrb	r0, [r4, #684]	@ zero_extendqisi2
 555 00a4 FFF7FEFF 		bl	pinModeDuet
 556 00a8 0022     		movs	r2, #0
 557 00aa 94F8CD00 		ldrb	r0, [r4, #205]	@ zero_extendqisi2
 558 00ae 1146     		mov	r1, r2
 559 00b0 3BE0     		b	.L82
 560              	.L73:
 561 00b2 94F97005 		ldrsb	r0, [r4, #1392]
 562 00b6 0121     		movs	r1, #1
 563 00b8 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 564 00bc 94F8AC02 		ldrb	r0, [r4, #684]	@ zero_extendqisi2
 565 00c0 0022     		movs	r2, #0
 566 00c2 0521     		movs	r1, #5
 567 00c4 FFF7FEFF 		bl	pinModeDuet
 568 00c8 94F8AD02 		ldrb	r0, [r4, #685]	@ zero_extendqisi2
 569 00cc 0022     		movs	r2, #0
 570 00ce BDE83840 		pop	{r3, r4, r5, lr}
ARM GAS  /tmp/cclDCdxf.s 			page 11


 571 00d2 0421     		movs	r1, #4
 572 00d4 FFF7FEBF 		b	pinModeDuet
 573              	.L76:
 574 00d8 0021     		movs	r1, #0
 575 00da 94F97005 		ldrsb	r0, [r4, #1392]
 576 00de FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 577 00e2 0022     		movs	r2, #0
 578 00e4 0121     		movs	r1, #1
 579 00e6 94F8AC02 		ldrb	r0, [r4, #684]	@ zero_extendqisi2
 580 00ea FFF7FEFF 		bl	pinModeDuet
 581 00ee 0022     		movs	r2, #0
 582 00f0 94F8CE00 		ldrb	r0, [r4, #206]	@ zero_extendqisi2
 583 00f4 1146     		mov	r1, r2
 584 00f6 18E0     		b	.L82
 585              	.L77:
 586 00f8 0021     		movs	r1, #0
 587 00fa 94F97005 		ldrsb	r0, [r4, #1392]
 588 00fe FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 589 0102 0022     		movs	r2, #0
 590 0104 0121     		movs	r1, #1
 591 0106 94F8AC02 		ldrb	r0, [r4, #684]	@ zero_extendqisi2
 592 010a FFF7FEFF 		bl	pinModeDuet
 593 010e 0022     		movs	r2, #0
 594 0110 94F8CF00 		ldrb	r0, [r4, #207]	@ zero_extendqisi2
 595 0114 1146     		mov	r1, r2
 596 0116 08E0     		b	.L82
 597              	.L75:
 598 0118 0121     		movs	r1, #1
 599 011a 94F97005 		ldrsb	r0, [r4, #1392]
 600 011e FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 601 0122 0022     		movs	r2, #0
 602 0124 0521     		movs	r1, #5
 603 0126 94F8AC02 		ldrb	r0, [r4, #684]	@ zero_extendqisi2
 604              	.L82:
 605 012a FFF7FEFF 		bl	pinModeDuet
 606 012e 94F8AD02 		ldrb	r0, [r4, #685]	@ zero_extendqisi2
 607 0132 0022     		movs	r2, #0
 608 0134 BDE83840 		pop	{r3, r4, r5, lr}
 609 0138 0321     		movs	r1, #3
 610 013a FFF7FEBF 		b	pinModeDuet
 611              	.L72:
 612 013e 0021     		movs	r1, #0
 613 0140 94F97005 		ldrsb	r0, [r4, #1392]
 614 0144 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 615 0148 0022     		movs	r2, #0
 616 014a 0121     		movs	r1, #1
 617 014c 94F8AC02 		ldrb	r0, [r4, #684]	@ zero_extendqisi2
 618 0150 EBE7     		b	.L82
 619              	.L85:
 620 0152 00BF     		.align	2
 621              	.L84:
 622 0154 00000000 		.word	g_interrupt_enabled
 623              		.size	_ZN8Platform10InitZProbeEv, .-_ZN8Platform10InitZProbeEv
 624              		.section	.text._ZNK8Platform16GetZProbeReadingEv,"ax",%progbits
 625              		.align	1
 626              		.p2align 2,,3
 627              		.global	_ZNK8Platform16GetZProbeReadingEv
ARM GAS  /tmp/cclDCdxf.s 			page 12


 628              		.syntax unified
 629              		.thumb
 630              		.thumb_func
 631              		.fpu softvfp
 632              		.type	_ZNK8Platform16GetZProbeReadingEv, %function
 633              	_ZNK8Platform16GetZProbeReadingEv:
 634              		@ args = 0, pretend = 0, frame = 0
 635              		@ frame_needed = 0, uses_anonymous_args = 0
 636 0000 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 637 0004 10B5     		push	{r4, lr}
 638 0006 082B     		cmp	r3, #8
 639 0008 0446     		mov	r4, r0
 640 000a 13D0     		beq	.L87
 641 000c 90F8F422 		ldrb	r2, [r0, #756]	@ zero_extendqisi2
 642 0010 02F0FF00 		and	r0, r2, #255
 643 0014 CAB1     		cbz	r2, .L88
 644 0016 94F81023 		ldrb	r2, [r4, #784]	@ zero_extendqisi2
 645 001a 02F0FF00 		and	r0, r2, #255
 646 001e A2B1     		cbz	r2, .L88
 647 0020 5A1E     		subs	r2, r3, #1
 648 0022 092A     		cmp	r2, #9
 649 0024 39D8     		bhi	.L104
 650 0026 DFE802F0 		tbb	[pc, r2]
 651              	.L100:
 652 002a 1A       		.byte	(.L90-.L100)/2
 653 002b 2B       		.byte	(.L92-.L100)/2
 654 002c 1A       		.byte	(.L90-.L100)/2
 655 002d 1A       		.byte	(.L90-.L100)/2
 656 002e 1A       		.byte	(.L90-.L100)/2
 657 002f 1A       		.byte	(.L90-.L100)/2
 658 0030 1A       		.byte	(.L90-.L100)/2
 659 0031 38       		.byte	(.L104-.L100)/2
 660 0032 1A       		.byte	(.L90-.L100)/2
 661 0033 35       		.byte	(.L105-.L100)/2
 662              		.p2align 1
 663              	.L87:
 664 0034 90F8AC02 		ldrb	r0, [r0, #684]	@ zero_extendqisi2
 665 0038 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 666 003c 0028     		cmp	r0, #0
 667 003e 0CBF     		ite	eq
 668 0040 0020     		moveq	r0, #0
 669 0042 4FF47A70 		movne	r0, #1000
 670 0046 94F89430 		ldrb	r3, [r4, #148]	@ zero_extendqisi2
 671              	.L88:
 672 004a 0A2B     		cmp	r3, #10
 673 004c 0DD9     		bls	.L101
 674              	.L96:
 675 004e 0434     		adds	r4, r4, #4
 676              	.L98:
 677 0050 94F82D30 		ldrb	r3, [r4, #45]	@ zero_extendqisi2
 678 0054 13B1     		cbz	r3, .L86
 679 0056 C0F57A70 		rsb	r0, r0, #1000
 680 005a 10BD     		pop	{r4, pc}
 681              	.L86:
 682 005c 10BD     		pop	{r4, pc}
 683              	.L90:
 684 005e D4F8F022 		ldr	r2, [r4, #752]
ARM GAS  /tmp/cclDCdxf.s 			page 13


 685 0062 D4F80C03 		ldr	r0, [r4, #780]
 686 0066 1044     		add	r0, r0, r2
 687 0068 8009     		lsrs	r0, r0, #6
 688              	.L101:
 689 006a 0122     		movs	r2, #1
 690 006c 40F22671 		movw	r1, #1830
 691 0070 02FA03F3 		lsl	r3, r2, r3
 692 0074 0B42     		tst	r3, r1
 693 0076 0BD1     		bne	.L94
 694 0078 1B07     		lsls	r3, r3, #28
 695 007a E8D5     		bpl	.L96
 696 007c 6434     		adds	r4, r4, #100
 697 007e E7E7     		b	.L98
 698              	.L92:
 699 0080 D4F8F002 		ldr	r0, [r4, #752]
 700 0084 D4F80C33 		ldr	r3, [r4, #780]
 701 0088 C01A     		subs	r0, r0, r3
 702 008a 48BF     		it	mi
 703 008c 1F30     		addmi	r0, r0, #31
 704 008e 4011     		asrs	r0, r0, #5
 705              	.L94:
 706 0090 3434     		adds	r4, r4, #52
 707 0092 DDE7     		b	.L98
 708              	.L105:
 709 0094 4FF47A70 		mov	r0, #1000
 710 0098 E7E7     		b	.L101
 711              	.L104:
 712 009a 0020     		movs	r0, #0
 713 009c 10BD     		pop	{r4, pc}
 714              		.size	_ZNK8Platform16GetZProbeReadingEv, .-_ZNK8Platform16GetZProbeReadingEv
 715 009e 00BF     		.section	.text._ZN8Platform24GetZProbeSecondaryValuesERiS0_,"ax",%progbits
 716              		.align	1
 717              		.p2align 2,,3
 718              		.global	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 719              		.syntax unified
 720              		.thumb
 721              		.thumb_func
 722              		.fpu softvfp
 723              		.type	_ZN8Platform24GetZProbeSecondaryValuesERiS0_, %function
 724              	_ZN8Platform24GetZProbeSecondaryValuesERiS0_:
 725              		@ args = 0, pretend = 0, frame = 0
 726              		@ frame_needed = 0, uses_anonymous_args = 0
 727              		@ link register save eliminated.
 728 0000 90F8F422 		ldrb	r2, [r0, #756]	@ zero_extendqisi2
 729 0004 62B1     		cbz	r2, .L116
 730 0006 90F81023 		ldrb	r2, [r0, #784]	@ zero_extendqisi2
 731 000a 4AB1     		cbz	r2, .L116
 732 000c 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 733 0010 022B     		cmp	r3, #2
 734 0012 05D1     		bne	.L116
 735 0014 D0F8F032 		ldr	r3, [r0, #752]
 736 0018 0120     		movs	r0, #1
 737 001a 5B09     		lsrs	r3, r3, #5
 738 001c 0B60     		str	r3, [r1]
 739 001e 7047     		bx	lr
 740              	.L116:
 741 0020 0020     		movs	r0, #0
ARM GAS  /tmp/cclDCdxf.s 			page 14


 742 0022 7047     		bx	lr
 743              		.size	_ZN8Platform24GetZProbeSecondaryValuesERiS0_, .-_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 744              		.section	.text._ZN8Platform20GetZProbeTemperatureEv,"ax",%progbits
 745              		.align	1
 746              		.p2align 2,,3
 747              		.global	_ZN8Platform20GetZProbeTemperatureEv
 748              		.syntax unified
 749              		.thumb
 750              		.thumb_func
 751              		.fpu softvfp
 752              		.type	_ZN8Platform20GetZProbeTemperatureEv, %function
 753              	_ZN8Platform20GetZProbeTemperatureEv:
 754              		@ args = 0, pretend = 0, frame = 8
 755              		@ frame_needed = 0, uses_anonymous_args = 0
 756 0000 0A4B     		ldr	r3, .L125
 757 0002 D868     		ldr	r0, [r3, #12]	@ unaligned
 758 0004 90F98210 		ldrsb	r1, [r0, #130]
 759 0008 0029     		cmp	r1, #0
 760 000a 0CDB     		blt	.L120
 761 000c 00B5     		push	{lr}
 762 000e 83B0     		sub	sp, sp, #12
 763 0010 0DF10702 		add	r2, sp, #7
 764 0014 FFF7FEFF 		bl	_ZN4Heat14GetTemperatureEjR16TemperatureError
 765 0018 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 766 001c 03B1     		cbz	r3, .L117
 767 001e 0448     		ldr	r0, .L125+4
 768              	.L117:
 769 0020 03B0     		add	sp, sp, #12
 770              		@ sp needed
 771 0022 5DF804FB 		ldr	pc, [sp], #4
 772              	.L120:
 773 0026 0248     		ldr	r0, .L125+4
 774 0028 7047     		bx	lr
 775              	.L126:
 776 002a 00BF     		.align	2
 777              	.L125:
 778 002c 00000000 		.word	reprap
 779 0030 0000C841 		.word	1103626240
 780              		.size	_ZN8Platform20GetZProbeTemperatureEv, .-_ZN8Platform20GetZProbeTemperatureEv
 781              		.section	.text._ZN8Platform16ZProbeStopHeightEv,"ax",%progbits
 782              		.align	1
 783              		.p2align 2,,3
 784              		.global	_ZN8Platform16ZProbeStopHeightEv
 785              		.syntax unified
 786              		.thumb
 787              		.thumb_func
 788              		.fpu softvfp
 789              		.type	_ZN8Platform16ZProbeStopHeightEv, %function
 790              	_ZN8Platform16ZProbeStopHeightEv:
 791              		@ args = 0, pretend = 0, frame = 0
 792              		@ frame_needed = 0, uses_anonymous_args = 0
 793 0000 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 794 0004 10B5     		push	{r4, lr}
 795 0006 0A2B     		cmp	r3, #10
 796 0008 08D8     		bhi	.L128
 797 000a 0122     		movs	r2, #1
 798 000c 40F22671 		movw	r1, #1830
ARM GAS  /tmp/cclDCdxf.s 			page 15


 799 0010 02FA03F3 		lsl	r3, r2, r3
 800 0014 0B42     		tst	r3, r1
 801 0016 0AD1     		bne	.L129
 802 0018 1B07     		lsls	r3, r3, #28
 803 001a 0BD4     		bmi	.L134
 804              	.L128:
 805 001c 041D     		adds	r4, r0, #4
 806              	.L131:
 807 001e FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 808 0022 0146     		mov	r1, r0
 809 0024 2046     		mov	r0, r4
 810 0026 BDE81040 		pop	{r4, lr}
 811 002a FFF7FEBF 		b	_ZNK6ZProbe13GetStopHeightEf
 812              	.L129:
 813 002e 00F13404 		add	r4, r0, #52
 814 0032 F4E7     		b	.L131
 815              	.L134:
 816 0034 00F16404 		add	r4, r0, #100
 817 0038 F1E7     		b	.L131
 818              		.size	_ZN8Platform16ZProbeStopHeightEv, .-_ZN8Platform16ZProbeStopHeightEv
 819 003a 00BF     		.section	.text._ZNK8Platform19GetZProbeDiveHeightEv,"ax",%progbits
 820              		.align	1
 821              		.p2align 2,,3
 822              		.global	_ZNK8Platform19GetZProbeDiveHeightEv
 823              		.syntax unified
 824              		.thumb
 825              		.thumb_func
 826              		.fpu softvfp
 827              		.type	_ZNK8Platform19GetZProbeDiveHeightEv, %function
 828              	_ZNK8Platform19GetZProbeDiveHeightEv:
 829              		@ args = 0, pretend = 0, frame = 0
 830              		@ frame_needed = 0, uses_anonymous_args = 0
 831              		@ link register save eliminated.
 832 0000 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 833 0004 0A2B     		cmp	r3, #10
 834 0006 08D8     		bhi	.L136
 835 0008 0122     		movs	r2, #1
 836 000a 40F22671 		movw	r1, #1830
 837 000e 02FA03F3 		lsl	r3, r2, r3
 838 0012 0B42     		tst	r3, r1
 839 0014 04D1     		bne	.L137
 840 0016 1B07     		lsls	r3, r3, #28
 841 0018 05D4     		bmi	.L141
 842              	.L136:
 843 001a 0430     		adds	r0, r0, #4
 844 001c 8069     		ldr	r0, [r0, #24]	@ float
 845 001e 7047     		bx	lr
 846              	.L137:
 847 0020 3430     		adds	r0, r0, #52
 848 0022 8069     		ldr	r0, [r0, #24]	@ float
 849 0024 7047     		bx	lr
 850              	.L141:
 851 0026 6430     		adds	r0, r0, #100
 852 0028 8069     		ldr	r0, [r0, #24]	@ float
 853 002a 7047     		bx	lr
 854              		.size	_ZNK8Platform19GetZProbeDiveHeightEv, .-_ZNK8Platform19GetZProbeDiveHeightEv
 855              		.global	__aeabi_fcmpun
ARM GAS  /tmp/cclDCdxf.s 			page 16


 856              		.global	__aeabi_fadd
 857              		.global	__aeabi_fcmpgt
 858              		.section	.text._ZN8Platform23GetZProbeStartingHeightEv,"ax",%progbits
 859              		.align	1
 860              		.p2align 2,,3
 861              		.global	_ZN8Platform23GetZProbeStartingHeightEv
 862              		.syntax unified
 863              		.thumb
 864              		.thumb_func
 865              		.fpu softvfp
 866              		.type	_ZN8Platform23GetZProbeStartingHeightEv, %function
 867              	_ZN8Platform23GetZProbeStartingHeightEv:
 868              		@ args = 0, pretend = 0, frame = 0
 869              		@ frame_needed = 0, uses_anonymous_args = 0
 870 0000 38B5     		push	{r3, r4, r5, lr}
 871 0002 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 872 0006 0A2B     		cmp	r3, #10
 873 0008 08D8     		bhi	.L143
 874 000a 0122     		movs	r2, #1
 875 000c 40F22671 		movw	r1, #1830
 876 0010 02FA03F3 		lsl	r3, r2, r3
 877 0014 0B42     		tst	r3, r1
 878 0016 19D1     		bne	.L144
 879 0018 1B07     		lsls	r3, r3, #28
 880 001a 1AD4     		bmi	.L145
 881              	.L143:
 882 001c 041D     		adds	r4, r0, #4
 883              	.L146:
 884 001e A569     		ldr	r5, [r4, #24]	@ float
 885 0020 FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 886 0024 0146     		mov	r1, r0
 887 0026 2046     		mov	r0, r4
 888 0028 FFF7FEFF 		bl	_ZNK6ZProbe13GetStopHeightEf
 889 002c 0146     		mov	r1, r0
 890 002e 0446     		mov	r4, r0
 891 0030 FFF7FEFF 		bl	__aeabi_fcmpun
 892 0034 28B9     		cbnz	r0, .L149
 893 0036 0021     		movs	r1, #0
 894 0038 2046     		mov	r0, r4
 895 003a FFF7FEFF 		bl	__aeabi_fcmpgt
 896 003e 00B9     		cbnz	r0, .L149
 897 0040 0024     		movs	r4, #0
 898              	.L149:
 899 0042 2946     		mov	r1, r5
 900 0044 2046     		mov	r0, r4
 901 0046 FFF7FEFF 		bl	__aeabi_fadd
 902 004a 38BD     		pop	{r3, r4, r5, pc}
 903              	.L144:
 904 004c 00F13404 		add	r4, r0, #52
 905 0050 E5E7     		b	.L146
 906              	.L145:
 907 0052 00F16404 		add	r4, r0, #100
 908 0056 E2E7     		b	.L146
 909              		.size	_ZN8Platform23GetZProbeStartingHeightEv, .-_ZN8Platform23GetZProbeStartingHeightEv
 910              		.section	.text._ZNK8Platform20GetZProbeTravelSpeedEv,"ax",%progbits
 911              		.align	1
 912              		.p2align 2,,3
ARM GAS  /tmp/cclDCdxf.s 			page 17


 913              		.global	_ZNK8Platform20GetZProbeTravelSpeedEv
 914              		.syntax unified
 915              		.thumb
 916              		.thumb_func
 917              		.fpu softvfp
 918              		.type	_ZNK8Platform20GetZProbeTravelSpeedEv, %function
 919              	_ZNK8Platform20GetZProbeTravelSpeedEv:
 920              		@ args = 0, pretend = 0, frame = 0
 921              		@ frame_needed = 0, uses_anonymous_args = 0
 922              		@ link register save eliminated.
 923 0000 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 924 0004 0A2B     		cmp	r3, #10
 925 0006 08D8     		bhi	.L154
 926 0008 0122     		movs	r2, #1
 927 000a 40F22671 		movw	r1, #1830
 928 000e 02FA03F3 		lsl	r3, r2, r3
 929 0012 0B42     		tst	r3, r1
 930 0014 04D1     		bne	.L155
 931 0016 1B07     		lsls	r3, r3, #28
 932 0018 05D4     		bmi	.L159
 933              	.L154:
 934 001a 0430     		adds	r0, r0, #4
 935 001c 006A     		ldr	r0, [r0, #32]	@ float
 936 001e 7047     		bx	lr
 937              	.L155:
 938 0020 3430     		adds	r0, r0, #52
 939 0022 006A     		ldr	r0, [r0, #32]	@ float
 940 0024 7047     		bx	lr
 941              	.L159:
 942 0026 6430     		adds	r0, r0, #100
 943 0028 006A     		ldr	r0, [r0, #32]	@ float
 944 002a 7047     		bx	lr
 945              		.size	_ZNK8Platform20GetZProbeTravelSpeedEv, .-_ZNK8Platform20GetZProbeTravelSpeedEv
 946              		.section	.text._ZN8Platform13SetZProbeTypeEj,"ax",%progbits
 947              		.align	1
 948              		.p2align 2,,3
 949              		.global	_ZN8Platform13SetZProbeTypeEj
 950              		.syntax unified
 951              		.thumb
 952              		.thumb_func
 953              		.fpu softvfp
 954              		.type	_ZN8Platform13SetZProbeTypeEj, %function
 955              	_ZN8Platform13SetZProbeTypeEj:
 956              		@ args = 0, pretend = 0, frame = 0
 957              		@ frame_needed = 0, uses_anonymous_args = 0
 958              		@ link register save eliminated.
 959 0000 0A29     		cmp	r1, #10
 960 0002 88BF     		it	hi
 961 0004 0021     		movhi	r1, #0
 962 0006 80F89410 		strb	r1, [r0, #148]
 963 000a FFF7FEBF 		b	_ZN8Platform10InitZProbeEv
 964              		.size	_ZN8Platform13SetZProbeTypeEj, .-_ZN8Platform13SetZProbeTypeEj
 965 000e 00BF     		.section	.text._ZN8Platform10SetProbingEb,"ax",%progbits
 966              		.align	1
 967              		.p2align 2,,3
 968              		.global	_ZN8Platform10SetProbingEb
 969              		.syntax unified
ARM GAS  /tmp/cclDCdxf.s 			page 18


 970              		.thumb
 971              		.thumb_func
 972              		.fpu softvfp
 973              		.type	_ZN8Platform10SetProbingEb, %function
 974              	_ZN8Platform10SetProbingEb:
 975              		@ args = 0, pretend = 0, frame = 0
 976              		@ frame_needed = 0, uses_anonymous_args = 0
 977              		@ link register save eliminated.
 978 0000 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 979 0004 032B     		cmp	r3, #3
 980 0006 00D8     		bhi	.L164
 981 0008 7047     		bx	lr
 982              	.L164:
 983 000a 90F8AD02 		ldrb	r0, [r0, #685]	@ zero_extendqisi2
 984 000e FFF7FEBF 		b	digitalWrite
 985              		.size	_ZN8Platform10SetProbingEb, .-_ZN8Platform10SetProbingEb
 986 0012 00BF     		.section	.text._ZNK8Platform19GetZProbeParametersE10ZProbeType,"ax",%progbits
 987              		.align	1
 988              		.p2align 2,,3
 989              		.global	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 990              		.syntax unified
 991              		.thumb
 992              		.thumb_func
 993              		.fpu softvfp
 994              		.type	_ZNK8Platform19GetZProbeParametersE10ZProbeType, %function
 995              	_ZNK8Platform19GetZProbeParametersE10ZProbeType:
 996              		@ args = 0, pretend = 0, frame = 0
 997              		@ frame_needed = 0, uses_anonymous_args = 0
 998              		@ link register save eliminated.
 999 0000 0A29     		cmp	r1, #10
 1000 0002 08D8     		bhi	.L166
 1001 0004 0123     		movs	r3, #1
 1002 0006 40F22672 		movw	r2, #1830
 1003 000a 03FA01F1 		lsl	r1, r3, r1
 1004 000e 1142     		tst	r1, r2
 1005 0010 03D1     		bne	.L167
 1006 0012 0B07     		lsls	r3, r1, #28
 1007 0014 03D4     		bmi	.L171
 1008              	.L166:
 1009 0016 0430     		adds	r0, r0, #4
 1010 0018 7047     		bx	lr
 1011              	.L167:
 1012 001a 3430     		adds	r0, r0, #52
 1013 001c 7047     		bx	lr
 1014              	.L171:
 1015 001e 6430     		adds	r0, r0, #100
 1016 0020 7047     		bx	lr
 1017              		.size	_ZNK8Platform19GetZProbeParametersE10ZProbeType, .-_ZNK8Platform19GetZProbeParametersE10ZPro
 1018 0022 00BF     		.section	.text._ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe,"ax",%progbits
 1019              		.align	1
 1020              		.p2align 2,,3
 1021              		.global	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe
 1022              		.syntax unified
 1023              		.thumb
 1024              		.thumb_func
 1025              		.fpu softvfp
 1026              		.type	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe, %function
ARM GAS  /tmp/cclDCdxf.s 			page 19


 1027              	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe:
 1028              		@ args = 0, pretend = 0, frame = 0
 1029              		@ frame_needed = 0, uses_anonymous_args = 0
 1030              		@ link register save eliminated.
 1031 0000 0A29     		cmp	r1, #10
 1032 0002 30B4     		push	{r4, r5}
 1033 0004 08D8     		bhi	.L173
 1034 0006 0123     		movs	r3, #1
 1035 0008 40F22674 		movw	r4, #1830
 1036 000c 03FA01F1 		lsl	r1, r3, r1
 1037 0010 2142     		tst	r1, r4
 1038 0012 0DD1     		bne	.L174
 1039 0014 0B07     		lsls	r3, r1, #28
 1040 0016 0FD4     		bmi	.L180
 1041              	.L173:
 1042 0018 1546     		mov	r5, r2
 1043 001a 041D     		adds	r4, r0, #4
 1044              	.L178:
 1045 001c 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1046 001e 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1047 0020 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1048 0022 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1049 0024 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 1050 0028 84E80F00 		stm	r4, {r0, r1, r2, r3}
 1051 002c 30BC     		pop	{r4, r5}
 1052 002e 7047     		bx	lr
 1053              	.L174:
 1054 0030 1546     		mov	r5, r2
 1055 0032 00F13404 		add	r4, r0, #52
 1056 0036 F1E7     		b	.L178
 1057              	.L180:
 1058 0038 1546     		mov	r5, r2
 1059 003a 00F16404 		add	r4, r0, #100
 1060 003e EDE7     		b	.L178
 1061              		.size	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe, .-_ZN8Platform19SetZProbeParameters
 1062              		.section	.text._ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef,"ax",%progbits
 1063              		.align	1
 1064              		.p2align 2,,3
 1065              		.global	_ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef
 1066              		.syntax unified
 1067              		.thumb
 1068              		.thumb_func
 1069              		.fpu softvfp
 1070              		.type	_ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef, %function
 1071              	_ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef:
 1072              		@ args = 0, pretend = 0, frame = 40
 1073              		@ frame_needed = 0, uses_anonymous_args = 0
 1074 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1075 0002 0D46     		mov	r5, r1
 1076 0004 8BB0     		sub	sp, sp, #44
 1077 0006 0746     		mov	r7, r0
 1078 0008 5321     		movs	r1, #83
 1079 000a 2846     		mov	r0, r5
 1080 000c 1646     		mov	r6, r2
 1081 000e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1082 0012 10B3     		cbz	r0, .L182
 1083 0014 0823     		movs	r3, #8
ARM GAS  /tmp/cclDCdxf.s 			page 20


 1084 0016 0AAA     		add	r2, sp, #40
 1085 0018 42F8243D 		str	r3, [r2, #-36]!
 1086 001c 0DEB0301 		add	r1, sp, r3
 1087 0020 0446     		mov	r4, r0
 1088 0022 0023     		movs	r3, #0
 1089 0024 2846     		mov	r0, r5
 1090 0026 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1091 002a 019A     		ldr	r2, [sp, #4]
 1092 002c AAB1     		cbz	r2, .L182
 1093 002e 029B     		ldr	r3, [sp, #8]
 1094 0030 FF2B     		cmp	r3, #255
 1095 0032 1AD8     		bhi	.L184
 1096 0034 0023     		movs	r3, #0
 1097 0036 03A9     		add	r1, sp, #12
 1098 0038 03E0     		b	.L186
 1099              	.L188:
 1100 003a 51F8040B 		ldr	r0, [r1], #4
 1101 003e FF28     		cmp	r0, #255
 1102 0040 13D8     		bhi	.L184
 1103              	.L186:
 1104 0042 0133     		adds	r3, r3, #1
 1105 0044 9A42     		cmp	r2, r3
 1106 0046 F8D1     		bne	.L188
 1107 0048 0024     		movs	r4, #0
 1108 004a 07F52C70 		add	r0, r7, #688
 1109 004e 02A9     		add	r1, sp, #8
 1110 0050 FFF7FEFF 		bl	_ZN16ZProbeProgrammer11SendProgramEPKmj
 1111 0054 2046     		mov	r0, r4
 1112 0056 0BB0     		add	sp, sp, #44
 1113              		@ sp needed
 1114 0058 F0BD     		pop	{r4, r5, r6, r7, pc}
 1115              	.L182:
 1116 005a 0124     		movs	r4, #1
 1117 005c 3046     		mov	r0, r6
 1118 005e 0649     		ldr	r1, .L199
 1119 0060 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1120 0064 2046     		mov	r0, r4
 1121 0066 0BB0     		add	sp, sp, #44
 1122              		@ sp needed
 1123 0068 F0BD     		pop	{r4, r5, r6, r7, pc}
 1124              	.L184:
 1125 006a 3046     		mov	r0, r6
 1126 006c 0349     		ldr	r1, .L199+4
 1127 006e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1128 0072 2046     		mov	r0, r4
 1129 0074 0BB0     		add	sp, sp, #44
 1130              		@ sp needed
 1131 0076 F0BD     		pop	{r4, r5, r6, r7, pc}
 1132              	.L200:
 1133              		.align	2
 1134              	.L199:
 1135 0078 24000000 		.word	.LC9
 1136 007c 00000000 		.word	.LC8
 1137              		.size	_ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef, .-_ZN8Platform13ProgramZProbeER11GCo
 1138              		.section	.text._ZNK8Platform17SetZProbeModStateEb,"ax",%progbits
 1139              		.align	1
 1140              		.p2align 2,,3
ARM GAS  /tmp/cclDCdxf.s 			page 21


 1141              		.global	_ZNK8Platform17SetZProbeModStateEb
 1142              		.syntax unified
 1143              		.thumb
 1144              		.thumb_func
 1145              		.fpu softvfp
 1146              		.type	_ZNK8Platform17SetZProbeModStateEb, %function
 1147              	_ZNK8Platform17SetZProbeModStateEb:
 1148              		@ args = 0, pretend = 0, frame = 0
 1149              		@ frame_needed = 0, uses_anonymous_args = 0
 1150              		@ link register save eliminated.
 1151 0000 90F8AD02 		ldrb	r0, [r0, #685]	@ zero_extendqisi2
 1152 0004 FFF7FEBF 		b	_ZN6IoPort12WriteDigitalEhb
 1153              		.size	_ZNK8Platform17SetZProbeModStateEb, .-_ZNK8Platform17SetZProbeModStateEb
 1154              		.section	.text._ZNK8Platform16HomingZWithProbeEv,"ax",%progbits
 1155              		.align	1
 1156              		.p2align 2,,3
 1157              		.global	_ZNK8Platform16HomingZWithProbeEv
 1158              		.syntax unified
 1159              		.thumb
 1160              		.thumb_func
 1161              		.fpu softvfp
 1162              		.type	_ZNK8Platform16HomingZWithProbeEv, %function
 1163              	_ZNK8Platform16HomingZWithProbeEv:
 1164              		@ args = 0, pretend = 0, frame = 0
 1165              		@ frame_needed = 0, uses_anonymous_args = 0
 1166              		@ link register save eliminated.
 1167 0000 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 1168 0004 4BB1     		cbz	r3, .L204
 1169 0006 D0F89C34 		ldr	r3, [r0, #1180]
 1170 000a 022B     		cmp	r3, #2
 1171 000c 07D0     		beq	.L205
 1172 000e D0F88404 		ldr	r0, [r0, #1156]
 1173 0012 B0FA80F0 		clz	r0, r0
 1174 0016 4009     		lsrs	r0, r0, #5
 1175 0018 7047     		bx	lr
 1176              	.L204:
 1177 001a 1846     		mov	r0, r3
 1178 001c 7047     		bx	lr
 1179              	.L205:
 1180 001e 0120     		movs	r0, #1
 1181 0020 7047     		bx	lr
 1182              		.size	_ZNK8Platform16HomingZWithProbeEv, .-_ZNK8Platform16HomingZWithProbeEv
 1183 0022 00BF     		.section	.text._ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef,"ax",%progbits
 1184              		.align	1
 1185              		.p2align 2,,3
 1186              		.global	_ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef
 1187              		.syntax unified
 1188              		.thumb
 1189              		.thumb_func
 1190              		.fpu softvfp
 1191              		.type	_ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef, %function
 1192              	_ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef:
 1193              		@ args = 0, pretend = 0, frame = 8
 1194              		@ frame_needed = 0, uses_anonymous_args = 0
 1195 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1196 0002 0023     		movs	r3, #0
 1197 0004 83B0     		sub	sp, sp, #12
ARM GAS  /tmp/cclDCdxf.s 			page 22


 1198 0006 0546     		mov	r5, r0
 1199 0008 0E46     		mov	r6, r1
 1200 000a D0F86805 		ldr	r0, [r0, #1384]
 1201 000e 1A4A     		ldr	r2, .L213
 1202 0010 1A49     		ldr	r1, .L213+4
 1203 0012 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 1204 0016 0446     		mov	r4, r0
 1205 0018 30B3     		cbz	r0, .L212
 1206 001a 0422     		movs	r2, #4
 1207 001c 0DEB0201 		add	r1, sp, r2
 1208 0020 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1209 0024 0746     		mov	r7, r0
 1210 0026 2046     		mov	r0, r4
 1211 0028 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1212 002c 042F     		cmp	r7, #4
 1213 002e 03D1     		bne	.L209
 1214 0030 134B     		ldr	r3, .L213+8
 1215 0032 019A     		ldr	r2, [sp, #4]
 1216 0034 9A42     		cmp	r2, r3
 1217 0036 08D0     		beq	.L210
 1218              	.L209:
 1219 0038 3046     		mov	r0, r6
 1220 003a 0F4A     		ldr	r2, .L213
 1221 003c 1149     		ldr	r1, .L213+12
 1222 003e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1223 0042 0024     		movs	r4, #0
 1224              	.L208:
 1225 0044 2046     		mov	r0, r4
 1226 0046 03B0     		add	sp, sp, #12
 1227              		@ sp needed
 1228 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 1229              	.L210:
 1230 004a D5F86805 		ldr	r0, [r5, #1384]
 1231 004e 0E4A     		ldr	r2, .L213+16
 1232 0050 0A49     		ldr	r1, .L213+4
 1233 0052 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 1234 0056 0446     		mov	r4, r0
 1235 0058 0028     		cmp	r0, #0
 1236 005a F3D1     		bne	.L208
 1237 005c 3046     		mov	r0, r6
 1238 005e 0A4A     		ldr	r2, .L213+16
 1239 0060 0A49     		ldr	r1, .L213+20
 1240 0062 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1241 0066 EDE7     		b	.L208
 1242              	.L212:
 1243 0068 3046     		mov	r0, r6
 1244 006a 034A     		ldr	r2, .L213
 1245 006c 0849     		ldr	r1, .L213+24
 1246 006e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1247 0072 2046     		mov	r0, r4
 1248 0074 03B0     		add	sp, sp, #12
 1249              		@ sp needed
 1250 0076 F0BD     		pop	{r4, r5, r6, r7, pc}
 1251              	.L214:
 1252              		.align	2
 1253              	.L213:
 1254 0078 00000000 		.word	.LC10
ARM GAS  /tmp/cclDCdxf.s 			page 23


 1255 007c 1C000000 		.word	.LC11
 1256 0080 00800820 		.word	537427968
 1257 0084 44000000 		.word	.LC13
 1258 0088 7C000000 		.word	.LC14
 1259 008c 8C000000 		.word	.LC15
 1260 0090 24000000 		.word	.LC12
 1261              		.size	_ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef, .-_ZN8Platform32CheckFirmwareUp
 1262              		.section	.text._ZNK8Platform9EmulatingEv,"ax",%progbits
 1263              		.align	1
 1264              		.p2align 2,,3
 1265              		.global	_ZNK8Platform9EmulatingEv
 1266              		.syntax unified
 1267              		.thumb
 1268              		.thumb_func
 1269              		.fpu softvfp
 1270              		.type	_ZNK8Platform9EmulatingEv, %function
 1271              	_ZNK8Platform9EmulatingEv:
 1272              		@ args = 0, pretend = 0, frame = 0
 1273              		@ frame_needed = 0, uses_anonymous_args = 0
 1274              		@ link register save eliminated.
 1275 0000 90F8A900 		ldrb	r0, [r0, #169]	@ zero_extendqisi2
 1276 0004 0128     		cmp	r0, #1
 1277 0006 08BF     		it	eq
 1278 0008 0020     		moveq	r0, #0
 1279 000a 7047     		bx	lr
 1280              		.size	_ZNK8Platform9EmulatingEv, .-_ZNK8Platform9EmulatingEv
 1281              		.section	.text._ZN8Platform20UpdateNetworkAddressEPhPKh,"ax",%progbits
 1282              		.align	1
 1283              		.p2align 2,,3
 1284              		.global	_ZN8Platform20UpdateNetworkAddressEPhPKh
 1285              		.syntax unified
 1286              		.thumb
 1287              		.thumb_func
 1288              		.fpu softvfp
 1289              		.type	_ZN8Platform20UpdateNetworkAddressEPhPKh, %function
 1290              	_ZN8Platform20UpdateNetworkAddressEPhPKh:
 1291              		@ args = 0, pretend = 0, frame = 0
 1292              		@ frame_needed = 0, uses_anonymous_args = 0
 1293              		@ link register save eliminated.
 1294 0000 531E     		subs	r3, r2, #1
 1295 0002 0139     		subs	r1, r1, #1
 1296 0004 0332     		adds	r2, r2, #3
 1297              	.L219:
 1298 0006 13F8010F 		ldrb	r0, [r3, #1]!	@ zero_extendqisi2
 1299 000a 9342     		cmp	r3, r2
 1300 000c 01F8010F 		strb	r0, [r1, #1]!
 1301 0010 F9D1     		bne	.L219
 1302 0012 7047     		bx	lr
 1303              		.size	_ZN8Platform20UpdateNetworkAddressEPhPKh, .-_ZN8Platform20UpdateNetworkAddressEPhPKh
 1304              		.section	.text._ZN8Platform12SetIPAddressEPh,"ax",%progbits
 1305              		.align	1
 1306              		.p2align 2,,3
 1307              		.global	_ZN8Platform12SetIPAddressEPh
 1308              		.syntax unified
 1309              		.thumb
 1310              		.thumb_func
 1311              		.fpu softvfp
ARM GAS  /tmp/cclDCdxf.s 			page 24


 1312              		.type	_ZN8Platform12SetIPAddressEPh, %function
 1313              	_ZN8Platform12SetIPAddressEPh:
 1314              		@ args = 0, pretend = 0, frame = 0
 1315              		@ frame_needed = 0, uses_anonymous_args = 0
 1316              		@ link register save eliminated.
 1317 0000 4B1E     		subs	r3, r1, #1
 1318 0002 9430     		adds	r0, r0, #148
 1319 0004 0331     		adds	r1, r1, #3
 1320              	.L222:
 1321 0006 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 1322 000a 8B42     		cmp	r3, r1
 1323 000c 00F8012F 		strb	r2, [r0, #1]!
 1324 0010 F9D1     		bne	.L222
 1325 0012 7047     		bx	lr
 1326              		.size	_ZN8Platform12SetIPAddressEPh, .-_ZN8Platform12SetIPAddressEPh
 1327              		.section	.text._ZN8Platform10SetGateWayEPh,"ax",%progbits
 1328              		.align	1
 1329              		.p2align 2,,3
 1330              		.global	_ZN8Platform10SetGateWayEPh
 1331              		.syntax unified
 1332              		.thumb
 1333              		.thumb_func
 1334              		.fpu softvfp
 1335              		.type	_ZN8Platform10SetGateWayEPh, %function
 1336              	_ZN8Platform10SetGateWayEPh:
 1337              		@ args = 0, pretend = 0, frame = 0
 1338              		@ frame_needed = 0, uses_anonymous_args = 0
 1339              		@ link register save eliminated.
 1340 0000 4B1E     		subs	r3, r1, #1
 1341 0002 9C30     		adds	r0, r0, #156
 1342 0004 0331     		adds	r1, r1, #3
 1343              	.L225:
 1344 0006 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 1345 000a 8B42     		cmp	r3, r1
 1346 000c 00F8012F 		strb	r2, [r0, #1]!
 1347 0010 F9D1     		bne	.L225
 1348 0012 7047     		bx	lr
 1349              		.size	_ZN8Platform10SetGateWayEPh, .-_ZN8Platform10SetGateWayEPh
 1350              		.section	.text._ZN8Platform10SetNetMaskEPh,"ax",%progbits
 1351              		.align	1
 1352              		.p2align 2,,3
 1353              		.global	_ZN8Platform10SetNetMaskEPh
 1354              		.syntax unified
 1355              		.thumb
 1356              		.thumb_func
 1357              		.fpu softvfp
 1358              		.type	_ZN8Platform10SetNetMaskEPh, %function
 1359              	_ZN8Platform10SetNetMaskEPh:
 1360              		@ args = 0, pretend = 0, frame = 0
 1361              		@ frame_needed = 0, uses_anonymous_args = 0
 1362              		@ link register save eliminated.
 1363 0000 4B1E     		subs	r3, r1, #1
 1364 0002 9830     		adds	r0, r0, #152
 1365 0004 0331     		adds	r1, r1, #3
 1366              	.L228:
 1367 0006 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 1368 000a 8B42     		cmp	r3, r1
ARM GAS  /tmp/cclDCdxf.s 			page 25


 1369 000c 00F8012F 		strb	r2, [r0, #1]!
 1370 0010 F9D1     		bne	.L228
 1371 0012 7047     		bx	lr
 1372              		.size	_ZN8Platform10SetNetMaskEPh, .-_ZN8Platform10SetNetMaskEPh
 1373              		.section	.text._ZNK8Platform16WriteFanSettingsEP9FileStore,"ax",%progbits
 1374              		.align	1
 1375              		.p2align 2,,3
 1376              		.global	_ZNK8Platform16WriteFanSettingsEP9FileStore
 1377              		.syntax unified
 1378              		.thumb
 1379              		.thumb_func
 1380              		.fpu softvfp
 1381              		.type	_ZNK8Platform16WriteFanSettingsEP9FileStore, %function
 1382              	_ZNK8Platform16WriteFanSettingsEP9FileStore:
 1383              		@ args = 0, pretend = 0, frame = 0
 1384              		@ frame_needed = 0, uses_anonymous_args = 0
 1385 0000 38B5     		push	{r3, r4, r5, lr}
 1386 0002 0022     		movs	r2, #0
 1387 0004 0446     		mov	r4, r0
 1388 0006 00F59860 		add	r0, r0, #1216
 1389 000a 0D46     		mov	r5, r1
 1390 000c FFF7FEFF 		bl	_ZNK3Fan13WriteSettingsEP9FileStorej
 1391 0010 38B1     		cbz	r0, .L231
 1392 0012 2946     		mov	r1, r5
 1393 0014 04F2EC40 		addw	r0, r4, #1260
 1394 0018 0122     		movs	r2, #1
 1395 001a BDE83840 		pop	{r3, r4, r5, lr}
 1396 001e FFF7FEBF 		b	_ZNK3Fan13WriteSettingsEP9FileStorej
 1397              	.L231:
 1398 0022 38BD     		pop	{r3, r4, r5, pc}
 1399              		.size	_ZNK8Platform16WriteFanSettingsEP9FileStore, .-_ZNK8Platform16WriteFanSettingsEP9FileStore
 1400              		.section	.text._ZN8Platform20InitialiseInterruptsEv,"ax",%progbits
 1401              		.align	1
 1402              		.p2align 2,,3
 1403              		.global	_ZN8Platform20InitialiseInterruptsEv
 1404              		.syntax unified
 1405              		.thumb
 1406              		.thumb_func
 1407              		.fpu softvfp
 1408              		.type	_ZN8Platform20InitialiseInterruptsEv, %function
 1409              	_ZN8Platform20InitialiseInterruptsEv:
 1410              		@ args = 0, pretend = 0, frame = 0
 1411              		@ frame_needed = 0, uses_anonymous_args = 0
 1412 0000 1023     		movs	r3, #16
 1413 0002 3021     		movs	r1, #48
 1414 0004 70B5     		push	{r4, r5, r6, lr}
 1415 0006 254A     		ldr	r2, .L239
 1416 0008 254C     		ldr	r4, .L239+4
 1417 000a 82F82310 		strb	r1, [r2, #35]
 1418 000e 254E     		ldr	r6, .L239+8
 1419 0010 84F80833 		strb	r3, [r4, #776]
 1420 0014 0546     		mov	r5, r0
 1421 0016 0020     		movs	r0, #0
 1422 0018 FFF7FEFF 		bl	pmc_set_writeprotect
 1423 001c 1E20     		movs	r0, #30
 1424 001e FFF7FEFF 		bl	pmc_enable_periph_clk
 1425 0022 48F20342 		movw	r2, #33795
ARM GAS  /tmp/cclDCdxf.s 			page 26


 1426 0026 3046     		mov	r0, r6
 1427 0028 0021     		movs	r1, #0
 1428 002a FFF7FEFF 		bl	tc_init
 1429 002e 4FF0FF33 		mov	r3, #-1
 1430 0032 3046     		mov	r0, r6
 1431 0034 B362     		str	r3, [r6, #40]
 1432 0036 0021     		movs	r1, #0
 1433 0038 FFF7FEFF 		bl	tc_start
 1434 003c 0021     		movs	r1, #0
 1435 003e 3046     		mov	r0, r6
 1436 0040 FFF7FEFF 		bl	tc_get_status
 1437 0044 4023     		movs	r3, #64
 1438 0046 6020     		movs	r0, #96
 1439 0048 4FF08041 		mov	r1, #1073741824
 1440 004c 7022     		movs	r2, #112
 1441 004e 84F81E03 		strb	r0, [r4, #798]
 1442 0052 2160     		str	r1, [r4]
 1443 0054 84F80B33 		strb	r3, [r4, #779]
 1444 0058 84F80C33 		strb	r3, [r4, #780]
 1445 005c 84F80D33 		strb	r3, [r4, #781]
 1446 0060 84F80E33 		strb	r3, [r4, #782]
 1447 0064 84F82823 		strb	r2, [r4, #808]
 1448 0068 95F81805 		ldrb	r0, [r5, #1304]	@ zero_extendqisi2
 1449 006c FF28     		cmp	r0, #255
 1450 006e 04D0     		beq	.L234
 1451 0070 0023     		movs	r3, #0
 1452 0072 0422     		movs	r2, #4
 1453 0074 0C49     		ldr	r1, .L239+12
 1454 0076 FFF7FEFF 		bl	_Z15attachInterruptmPFv17CallbackParameterE13InterruptModeS_
 1455              	.L234:
 1456 007a 0022     		movs	r2, #0
 1457 007c 4FF48073 		mov	r3, #256
 1458 0080 85F87125 		strb	r2, [r5, #1393]
 1459 0084 C5F87425 		str	r2, [r5, #1396]
 1460 0088 4FF40051 		mov	r1, #8192
 1461 008c 1A46     		mov	r2, r3
 1462 008e 0748     		ldr	r0, .L239+16
 1463 0090 FFF7FEFF 		bl	wdt_init
 1464 0094 0123     		movs	r3, #1
 1465 0096 85F8A830 		strb	r3, [r5, #168]
 1466 009a 70BD     		pop	{r4, r5, r6, pc}
 1467              	.L240:
 1468              		.align	2
 1469              	.L239:
 1470 009c 00ED00E0 		.word	-536810240
 1471 00a0 00E100E0 		.word	-536813312
 1472 00a4 00400840 		.word	1074282496
 1473 00a8 00000000 		.word	_ZL12FanInterrupt17CallbackParameter
 1474 00ac 501A0E40 		.word	1074666064
 1475              		.size	_ZN8Platform20InitialiseInterruptsEv, .-_ZN8Platform20InitialiseInterruptsEv
 1476              		.section	.text._ZN8Platform9SetHeaterEjft,"ax",%progbits
 1477              		.align	1
 1478              		.p2align 2,,3
 1479              		.global	_ZN8Platform9SetHeaterEjft
 1480              		.syntax unified
 1481              		.thumb
 1482              		.thumb_func
ARM GAS  /tmp/cclDCdxf.s 			page 27


 1483              		.fpu softvfp
 1484              		.type	_ZN8Platform9SetHeaterEjft, %function
 1485              	_ZN8Platform9SetHeaterEjft:
 1486              		@ args = 0, pretend = 0, frame = 0
 1487              		@ frame_needed = 0, uses_anonymous_args = 0
 1488 0000 38B5     		push	{r3, r4, r5, lr}
 1489 0002 4418     		adds	r4, r0, r1
 1490 0004 94F8B004 		ldrb	r0, [r4, #1200]	@ zero_extendqisi2
 1491 0008 FF28     		cmp	r0, #255
 1492 000a 1FD0     		beq	.L241
 1493 000c 1546     		mov	r5, r2
 1494 000e 2BB1     		cbz	r3, .L246
 1495 0010 1A46     		mov	r2, r3
 1496 0012 2946     		mov	r1, r5
 1497 0014 BDE83840 		pop	{r3, r4, r5, lr}
 1498 0018 FFF7FEBF 		b	_ZN6IoPort11WriteAnalogEhft
 1499              	.L246:
 1500 001c 0C4B     		ldr	r3, .L247
 1501 001e 49B2     		sxtb	r1, r1
 1502 0020 D868     		ldr	r0, [r3, #12]
 1503 0022 FFF7FEFF 		bl	_ZNK4Heat20IsBedOrChamberHeaterEa
 1504 0026 40B1     		cbz	r0, .L244
 1505 0028 0A23     		movs	r3, #10
 1506 002a 94F8B004 		ldrb	r0, [r4, #1200]	@ zero_extendqisi2
 1507 002e 1A46     		mov	r2, r3
 1508 0030 2946     		mov	r1, r5
 1509 0032 BDE83840 		pop	{r3, r4, r5, lr}
 1510 0036 FFF7FEBF 		b	_ZN6IoPort11WriteAnalogEhft
 1511              	.L244:
 1512 003a FA23     		movs	r3, #250
 1513 003c 94F8B004 		ldrb	r0, [r4, #1200]	@ zero_extendqisi2
 1514 0040 1A46     		mov	r2, r3
 1515 0042 2946     		mov	r1, r5
 1516 0044 BDE83840 		pop	{r3, r4, r5, lr}
 1517 0048 FFF7FEBF 		b	_ZN6IoPort11WriteAnalogEhft
 1518              	.L241:
 1519 004c 38BD     		pop	{r3, r4, r5, pc}
 1520              	.L248:
 1521 004e 00BF     		.align	2
 1522              	.L247:
 1523 0050 00000000 		.word	reprap
 1524              		.size	_ZN8Platform9SetHeaterEjft, .-_ZN8Platform9SetHeaterEjft
 1525              		.section	.text._ZN8Platform23UpdateConfiguredHeatersEv,"ax",%progbits
 1526              		.align	1
 1527              		.p2align 2,,3
 1528              		.global	_ZN8Platform23UpdateConfiguredHeatersEv
 1529              		.syntax unified
 1530              		.thumb
 1531              		.thumb_func
 1532              		.fpu softvfp
 1533              		.type	_ZN8Platform23UpdateConfiguredHeatersEv, %function
 1534              	_ZN8Platform23UpdateConfiguredHeatersEv:
 1535              		@ args = 0, pretend = 0, frame = 0
 1536              		@ frame_needed = 0, uses_anonymous_args = 0
 1537 0000 0022     		movs	r2, #0
 1538 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1539 0004 1A4B     		ldr	r3, .L260
ARM GAS  /tmp/cclDCdxf.s 			page 28


 1540 0006 C0F8B824 		str	r2, [r0, #1208]
 1541 000a DB68     		ldr	r3, [r3, #12]
 1542 000c 0546     		mov	r5, r0
 1543 000e 93F98210 		ldrsb	r1, [r3, #130]
 1544 0012 9142     		cmp	r1, r2
 1545 0014 03DB     		blt	.L250
 1546 0016 0122     		movs	r2, #1
 1547 0018 8A40     		lsls	r2, r2, r1
 1548 001a C0F8B824 		str	r2, [r0, #1208]
 1549              	.L250:
 1550 001e 93F98300 		ldrsb	r0, [r3, #131]
 1551 0022 0028     		cmp	r0, #0
 1552 0024 06DB     		blt	.L251
 1553 0026 0121     		movs	r1, #1
 1554 0028 D5F8B824 		ldr	r2, [r5, #1208]
 1555 002c 8140     		lsls	r1, r1, r0
 1556 002e 0A43     		orrs	r2, r2, r1
 1557 0030 C5F8B824 		str	r2, [r5, #1208]
 1558              	.L251:
 1559 0034 93F98410 		ldrsb	r1, [r3, #132]
 1560 0038 0029     		cmp	r1, #0
 1561 003a 06DB     		blt	.L252
 1562 003c 0122     		movs	r2, #1
 1563 003e D5F8B834 		ldr	r3, [r5, #1208]
 1564 0042 8A40     		lsls	r2, r2, r1
 1565 0044 1343     		orrs	r3, r3, r2
 1566 0046 C5F8B834 		str	r3, [r5, #1208]
 1567              	.L252:
 1568 004a 0024     		movs	r4, #0
 1569 004c 0127     		movs	r7, #1
 1570 004e 084E     		ldr	r6, .L260
 1571              	.L254:
 1572 0050 61B2     		sxtb	r1, r4
 1573 0052 3046     		mov	r0, r6
 1574 0054 FFF7FEFF 		bl	_ZNK6RepRap22IsHeaterAssignedToToolEa
 1575 0058 30B1     		cbz	r0, .L253
 1576 005a D5F8B834 		ldr	r3, [r5, #1208]
 1577 005e 07FA04F2 		lsl	r2, r7, r4
 1578 0062 1343     		orrs	r3, r3, r2
 1579 0064 C5F8B834 		str	r3, [r5, #1208]
 1580              	.L253:
 1581 0068 0134     		adds	r4, r4, #1
 1582 006a 042C     		cmp	r4, #4
 1583 006c F0D1     		bne	.L254
 1584 006e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1585              	.L261:
 1586              		.align	2
 1587              	.L260:
 1588 0070 00000000 		.word	reprap
 1589              		.size	_ZN8Platform23UpdateConfiguredHeatersEv, .-_ZN8Platform23UpdateConfiguredHeatersEv
 1590              		.section	.text._ZNK8Platform17EndStopInputStateEj,"ax",%progbits
 1591              		.align	1
 1592              		.p2align 2,,3
 1593              		.global	_ZNK8Platform17EndStopInputStateEj
 1594              		.syntax unified
 1595              		.thumb
 1596              		.thumb_func
ARM GAS  /tmp/cclDCdxf.s 			page 29


 1597              		.fpu softvfp
 1598              		.type	_ZNK8Platform17EndStopInputStateEj, %function
 1599              	_ZNK8Platform17EndStopInputStateEj:
 1600              		@ args = 0, pretend = 0, frame = 0
 1601              		@ frame_needed = 0, uses_anonymous_args = 0
 1602              		@ link register save eliminated.
 1603 0000 0144     		add	r1, r1, r0
 1604 0002 91F8CB00 		ldrb	r0, [r1, #203]	@ zero_extendqisi2
 1605 0006 FF28     		cmp	r0, #255
 1606 0008 01D0     		beq	.L263
 1607 000a FFF7FEBF 		b	_ZN6IoPort7ReadPinEh
 1608              	.L263:
 1609 000e 0020     		movs	r0, #0
 1610 0010 7047     		bx	lr
 1611              		.size	_ZNK8Platform17EndStopInputStateEj, .-_ZNK8Platform17EndStopInputStateEj
 1612 0012 00BF     		.section	.text._ZNK8Platform19GetAllEndstopStatesEv,"ax",%progbits
 1613              		.align	1
 1614              		.p2align 2,,3
 1615              		.global	_ZNK8Platform19GetAllEndstopStatesEv
 1616              		.syntax unified
 1617              		.thumb
 1618              		.thumb_func
 1619              		.fpu softvfp
 1620              		.type	_ZNK8Platform19GetAllEndstopStatesEv, %function
 1621              	_ZNK8Platform19GetAllEndstopStatesEv:
 1622              		@ args = 0, pretend = 0, frame = 0
 1623              		@ frame_needed = 0, uses_anonymous_args = 0
 1624 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1625 0002 0024     		movs	r4, #0
 1626 0004 0127     		movs	r7, #1
 1627 0006 2646     		mov	r6, r4
 1628 0008 00F1CA05 		add	r5, r0, #202
 1629              	.L267:
 1630 000c 15F8010F 		ldrb	r0, [r5, #1]!	@ zero_extendqisi2
 1631 0010 FF28     		cmp	r0, #255
 1632 0012 05D0     		beq	.L265
 1633 0014 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 1634 0018 07FA04F3 		lsl	r3, r7, r4
 1635 001c 00B1     		cbz	r0, .L265
 1636 001e 1E43     		orrs	r6, r6, r3
 1637              	.L265:
 1638 0020 0134     		adds	r4, r4, #1
 1639 0022 092C     		cmp	r4, #9
 1640 0024 F2D1     		bne	.L267
 1641 0026 3046     		mov	r0, r6
 1642 0028 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1643              		.size	_ZNK8Platform19GetAllEndstopStatesEv, .-_ZNK8Platform19GetAllEndstopStatesEv
 1644 002a 00BF     		.section	.text._ZNK8Platform15GetZProbeResultEv,"ax",%progbits
 1645              		.align	1
 1646              		.p2align 2,,3
 1647              		.global	_ZNK8Platform15GetZProbeResultEv
 1648              		.syntax unified
 1649              		.thumb
 1650              		.thumb_func
 1651              		.fpu softvfp
 1652              		.type	_ZNK8Platform15GetZProbeResultEv, %function
 1653              	_ZNK8Platform15GetZProbeResultEv:
ARM GAS  /tmp/cclDCdxf.s 			page 30


 1654              		@ args = 0, pretend = 0, frame = 0
 1655              		@ frame_needed = 0, uses_anonymous_args = 0
 1656 0000 10B5     		push	{r4, lr}
 1657 0002 0446     		mov	r4, r0
 1658 0004 FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 1659 0008 94F89430 		ldrb	r3, [r4, #148]	@ zero_extendqisi2
 1660 000c 0A2B     		cmp	r3, #10
 1661 000e 08D8     		bhi	.L276
 1662 0010 0122     		movs	r2, #1
 1663 0012 40F22671 		movw	r1, #1830
 1664 0016 02FA03F3 		lsl	r3, r2, r3
 1665 001a 0B42     		tst	r3, r1
 1666 001c 0FD1     		bne	.L277
 1667 001e 1B07     		lsls	r3, r3, #28
 1668 0020 13D4     		bmi	.L278
 1669              	.L276:
 1670 0022 0434     		adds	r4, r4, #4
 1671              	.L279:
 1672 0024 2368     		ldr	r3, [r4]
 1673 0026 9842     		cmp	r0, r3
 1674 0028 0DDA     		bge	.L281
 1675              	.L284:
 1676 002a 00EB8000 		add	r0, r0, r0, lsl #2
 1677 002e 03EBC303 		add	r3, r3, r3, lsl #3
 1678 0032 B3EB400F 		cmp	r3, r0, lsl #1
 1679 0036 D4BF     		ite	le
 1680 0038 0320     		movle	r0, #3
 1681 003a 0020     		movgt	r0, #0
 1682 003c 10BD     		pop	{r4, pc}
 1683              	.L277:
 1684 003e 3434     		adds	r4, r4, #52
 1685 0040 2368     		ldr	r3, [r4]
 1686 0042 9842     		cmp	r0, r3
 1687 0044 F1DB     		blt	.L284
 1688              	.L281:
 1689 0046 0120     		movs	r0, #1
 1690 0048 10BD     		pop	{r4, pc}
 1691              	.L278:
 1692 004a 6434     		adds	r4, r4, #100
 1693 004c EAE7     		b	.L279
 1694              		.size	_ZNK8Platform15GetZProbeResultEv, .-_ZNK8Platform15GetZProbeResultEv
 1695 004e 00BF     		.section	.text._ZNK8Platform7StoppedEj,"ax",%progbits
 1696              		.align	1
 1697              		.p2align 2,,3
 1698              		.global	_ZNK8Platform7StoppedEj
 1699              		.syntax unified
 1700              		.thumb
 1701              		.thumb_func
 1702              		.fpu softvfp
 1703              		.type	_ZNK8Platform7StoppedEj, %function
 1704              	_ZNK8Platform7StoppedEj:
 1705              		@ args = 0, pretend = 0, frame = 0
 1706              		@ frame_needed = 0, uses_anonymous_args = 0
 1707 0000 194A     		ldr	r2, .L321
 1708 0002 1269     		ldr	r2, [r2, #16]
 1709 0004 D2F8F821 		ldr	r2, [r2, #504]
 1710 0008 8A42     		cmp	r2, r1
ARM GAS  /tmp/cclDCdxf.s 			page 31


 1711 000a 0BD9     		bls	.L317
 1712 000c 10B5     		push	{r4, lr}
 1713 000e 00EB8104 		add	r4, r0, r1, lsl #2
 1714 0012 D4F89424 		ldr	r2, [r4, #1172]
 1715 0016 012A     		cmp	r2, #1
 1716 0018 06D0     		beq	.L288
 1717 001a 022A     		cmp	r2, #2
 1718 001c 1DD0     		beq	.L289
 1719 001e 92B1     		cbz	r2, .L319
 1720              	.L311:
 1721 0020 0020     		movs	r0, #0
 1722              	.L285:
 1723 0022 10BD     		pop	{r4, pc}
 1724              	.L317:
 1725 0024 0020     		movs	r0, #0
 1726 0026 7047     		bx	lr
 1727              	.L288:
 1728 0028 0144     		add	r1, r1, r0
 1729 002a 91F8CB00 		ldrb	r0, [r1, #203]	@ zero_extendqisi2
 1730 002e FF28     		cmp	r0, #255
 1731 0030 F6D0     		beq	.L311
 1732 0032 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 1733 0036 0028     		cmp	r0, #0
 1734 0038 F2D0     		beq	.L311
 1735              	.L315:
 1736 003a D4F87C34 		ldr	r3, [r4, #1148]
 1737 003e 022B     		cmp	r3, #2
 1738 0040 10D0     		beq	.L320
 1739 0042 0120     		movs	r0, #1
 1740 0044 10BD     		pop	{r4, pc}
 1741              	.L319:
 1742 0046 0144     		add	r1, r1, r0
 1743 0048 91F8CB00 		ldrb	r0, [r1, #203]	@ zero_extendqisi2
 1744 004c FF28     		cmp	r0, #255
 1745 004e E7D0     		beq	.L311
 1746 0050 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 1747 0054 0028     		cmp	r0, #0
 1748 0056 F0D0     		beq	.L315
 1749 0058 E2E7     		b	.L311
 1750              	.L289:
 1751 005a FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 1752 005e 0128     		cmp	r0, #1
 1753 0060 DFD1     		bne	.L285
 1754 0062 EAE7     		b	.L315
 1755              	.L320:
 1756 0064 0220     		movs	r0, #2
 1757 0066 10BD     		pop	{r4, pc}
 1758              	.L322:
 1759              		.align	2
 1760              	.L321:
 1761 0068 00000000 		.word	reprap
 1762              		.size	_ZNK8Platform7StoppedEj, .-_ZNK8Platform7StoppedEj
 1763              		.section	.text._ZN8Platform12SetDirectionEjb,"ax",%progbits
 1764              		.align	1
 1765              		.p2align 2,,3
 1766              		.global	_ZN8Platform12SetDirectionEjb
 1767              		.syntax unified
ARM GAS  /tmp/cclDCdxf.s 			page 32


 1768              		.thumb
 1769              		.thumb_func
 1770              		.fpu softvfp
 1771              		.type	_ZN8Platform12SetDirectionEjb, %function
 1772              	_ZN8Platform12SetDirectionEjb:
 1773              		@ args = 0, pretend = 0, frame = 0
 1774              		@ frame_needed = 0, uses_anonymous_args = 0
 1775 0000 00EB8103 		add	r3, r0, r1, lsl #2
 1776 0004 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1777 0008 D3F84C72 		ldr	r7, [r3, #588]
 1778 000c D0F8A432 		ldr	r3, [r0, #676]
 1779 0010 0646     		mov	r6, r0
 1780 0012 1F40     		ands	r7, r7, r3
 1781 0014 9046     		mov	r8, r2
 1782 0016 08D0     		beq	.L324
 1783 0018 2A4B     		ldr	r3, .L351
 1784 001a D0F8A052 		ldr	r5, [r0, #672]
 1785 001e 1C68     		ldr	r4, [r3]
 1786 0020 2948     		ldr	r0, .L351+4
 1787              	.L325:
 1788 0022 0369     		ldr	r3, [r0, #16]
 1789 0024 1B1B     		subs	r3, r3, r4
 1790 0026 AB42     		cmp	r3, r5
 1791 0028 FBD3     		bcc	.L325
 1792              	.L324:
 1793 002a 284B     		ldr	r3, .L351+8
 1794 002c 1B69     		ldr	r3, [r3, #16]
 1795 002e D3F8F831 		ldr	r3, [r3, #504]
 1796 0032 9942     		cmp	r1, r3
 1797 0034 18D2     		bcs	.L326
 1798 0036 06EBC10A 		add	r10, r6, r1, lsl #3
 1799 003a DAF81422 		ldr	r2, [r10, #532]
 1800 003e 62B1     		cbz	r2, .L328
 1801 0040 0024     		movs	r4, #0
 1802 0042 4331     		adds	r1, r1, #67
 1803 0044 DFF88C90 		ldr	r9, .L351+16
 1804 0048 06EBC105 		add	r5, r6, r1, lsl #3
 1805              	.L333:
 1806 004c 15F8013B 		ldrb	r3, [r5], #1	@ zero_extendqisi2
 1807 0050 082B     		cmp	r3, #8
 1808 0052 23D9     		bls	.L350
 1809              	.L329:
 1810 0054 0134     		adds	r4, r4, #1
 1811 0056 A242     		cmp	r2, r4
 1812 0058 F8D8     		bhi	.L333
 1813              	.L328:
 1814 005a 1FB1     		cbz	r7, .L323
 1815 005c 1A4A     		ldr	r2, .L351+4
 1816 005e 1C4B     		ldr	r3, .L351+12
 1817 0060 1269     		ldr	r2, [r2, #16]
 1818 0062 1A60     		str	r2, [r3]
 1819              	.L323:
 1820 0064 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1821              	.L326:
 1822 0068 0829     		cmp	r1, #8
 1823 006a 06D8     		bhi	.L334
 1824 006c CB1A     		subs	r3, r1, r3
ARM GAS  /tmp/cclDCdxf.s 			page 33


 1825 006e 3344     		add	r3, r3, r6
 1826 0070 93F84432 		ldrb	r3, [r3, #580]	@ zero_extendqisi2
 1827 0074 082B     		cmp	r3, #8
 1828 0076 F0D8     		bhi	.L328
 1829 0078 03E0     		b	.L349
 1830              	.L334:
 1831 007a 1129     		cmp	r1, #17
 1832 007c EDD8     		bhi	.L328
 1833 007e 0939     		subs	r1, r1, #9
 1834 0080 CBB2     		uxtb	r3, r1
 1835              	.L349:
 1836 0082 1E44     		add	r6, r6, r3
 1837 0084 96F8B910 		ldrb	r1, [r6, #185]	@ zero_extendqisi2
 1838 0088 B8F1000F 		cmp	r8, #0
 1839 008c 01D1     		bne	.L338
 1840 008e 81F00101 		eor	r1, r1, #1
 1841              	.L338:
 1842 0092 104A     		ldr	r2, .L351+16
 1843 0094 D05C     		ldrb	r0, [r2, r3]	@ zero_extendqisi2
 1844 0096 FFF7FEFF 		bl	digitalWrite
 1845 009a DEE7     		b	.L328
 1846              	.L350:
 1847 009c F218     		adds	r2, r6, r3
 1848 009e B8F1000F 		cmp	r8, #0
 1849 00a2 08D0     		beq	.L330
 1850 00a4 92F8B910 		ldrb	r1, [r2, #185]	@ zero_extendqisi2
 1851              	.L331:
 1852 00a8 19F80300 		ldrb	r0, [r9, r3]	@ zero_extendqisi2
 1853 00ac FFF7FEFF 		bl	digitalWrite
 1854 00b0 DAF81422 		ldr	r2, [r10, #532]
 1855 00b4 CEE7     		b	.L329
 1856              	.L330:
 1857 00b6 F218     		adds	r2, r6, r3
 1858 00b8 92F8B910 		ldrb	r1, [r2, #185]	@ zero_extendqisi2
 1859 00bc 81F00101 		eor	r1, r1, #1
 1860 00c0 F2E7     		b	.L331
 1861              	.L352:
 1862 00c2 00BF     		.align	2
 1863              	.L351:
 1864 00c4 00000000 		.word	_ZN3DDA15lastStepLowTimeE
 1865 00c8 00400840 		.word	1074282496
 1866 00cc 00000000 		.word	reprap
 1867 00d0 00000000 		.word	_ZN3DDA17lastDirChangeTimeE
 1868 00d4 00000000 		.word	.LANCHOR4
 1869              		.size	_ZN8Platform12SetDirectionEjb, .-_ZN8Platform12SetDirectionEjb
 1870              		.section	.text._ZN8Platform12EnableDriverEj,"ax",%progbits
 1871              		.align	1
 1872              		.p2align 2,,3
 1873              		.global	_ZN8Platform12EnableDriverEj
 1874              		.syntax unified
 1875              		.thumb
 1876              		.thumb_func
 1877              		.fpu softvfp
 1878              		.type	_ZN8Platform12EnableDriverEj, %function
 1879              	_ZN8Platform12EnableDriverEj:
 1880              		@ args = 0, pretend = 0, frame = 0
 1881              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cclDCdxf.s 			page 34


 1882              		@ link register save eliminated.
 1883 0000 0829     		cmp	r1, #8
 1884 0002 0346     		mov	r3, r0
 1885 0004 00D9     		bls	.L356
 1886              	.L353:
 1887 0006 7047     		bx	lr
 1888              	.L356:
 1889 0008 0B44     		add	r3, r3, r1
 1890 000a 93F8B030 		ldrb	r3, [r3, #176]	@ zero_extendqisi2
 1891 000e 022B     		cmp	r3, #2
 1892 0010 F9D0     		beq	.L353
 1893 0012 FFF7FEBF 		b	_ZN8Platform12EnableDriverEj.part.19
 1894              		.size	_ZN8Platform12EnableDriverEj, .-_ZN8Platform12EnableDriverEj
 1895 0016 00BF     		.section	.text._ZN8Platform13DisableDriverEj,"ax",%progbits
 1896              		.align	1
 1897              		.p2align 2,,3
 1898              		.global	_ZN8Platform13DisableDriverEj
 1899              		.syntax unified
 1900              		.thumb
 1901              		.thumb_func
 1902              		.fpu softvfp
 1903              		.type	_ZN8Platform13DisableDriverEj, %function
 1904              	_ZN8Platform13DisableDriverEj:
 1905              		@ args = 0, pretend = 0, frame = 0
 1906              		@ frame_needed = 0, uses_anonymous_args = 0
 1907              		@ link register save eliminated.
 1908 0000 0829     		cmp	r1, #8
 1909 0002 00D9     		bls	.L359
 1910 0004 7047     		bx	lr
 1911              	.L359:
 1912 0006 FFF7FEBF 		b	_ZN8Platform13DisableDriverEj.part.18
 1913              		.size	_ZN8Platform13DisableDriverEj, .-_ZN8Platform13DisableDriverEj
 1914 000a 00BF     		.section	.text._ZN8Platform11EnableDriveEj,"ax",%progbits
 1915              		.align	1
 1916              		.p2align 2,,3
 1917              		.global	_ZN8Platform11EnableDriveEj
 1918              		.syntax unified
 1919              		.thumb
 1920              		.thumb_func
 1921              		.fpu softvfp
 1922              		.type	_ZN8Platform11EnableDriveEj, %function
 1923              	_ZN8Platform11EnableDriveEj:
 1924              		@ args = 0, pretend = 0, frame = 0
 1925              		@ frame_needed = 0, uses_anonymous_args = 0
 1926 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1927 0002 1B4B     		ldr	r3, .L372
 1928 0004 0646     		mov	r6, r0
 1929 0006 1B69     		ldr	r3, [r3, #16]
 1930 0008 D3F8F831 		ldr	r3, [r3, #504]
 1931 000c 8B42     		cmp	r3, r1
 1932 000e 1CD9     		bls	.L361
 1933 0010 00EBC107 		add	r7, r0, r1, lsl #3
 1934 0014 D7F81432 		ldr	r3, [r7, #532]
 1935 0018 FBB1     		cbz	r3, .L360
 1936 001a 0025     		movs	r5, #0
 1937 001c 01F14304 		add	r4, r1, #67
 1938 0020 00EBC404 		add	r4, r0, r4, lsl #3
ARM GAS  /tmp/cclDCdxf.s 			page 35


 1939              	.L367:
 1940 0024 14F8011B 		ldrb	r1, [r4], #1	@ zero_extendqisi2
 1941 0028 0829     		cmp	r1, #8
 1942 002a 06EB0102 		add	r2, r6, r1
 1943 002e 08D8     		bhi	.L364
 1944 0030 92F8B020 		ldrb	r2, [r2, #176]	@ zero_extendqisi2
 1945 0034 022A     		cmp	r2, #2
 1946 0036 04D0     		beq	.L364
 1947 0038 3046     		mov	r0, r6
 1948 003a FFF7FEFF 		bl	_ZN8Platform12EnableDriverEj.part.19
 1949 003e D7F81432 		ldr	r3, [r7, #532]
 1950              	.L364:
 1951 0042 0135     		adds	r5, r5, #1
 1952 0044 AB42     		cmp	r3, r5
 1953 0046 EDD8     		bhi	.L367
 1954 0048 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1955              	.L361:
 1956 004a 0829     		cmp	r1, #8
 1957 004c 05D8     		bhi	.L360
 1958 004e C91A     		subs	r1, r1, r3
 1959 0050 0144     		add	r1, r1, r0
 1960 0052 91F84412 		ldrb	r1, [r1, #580]	@ zero_extendqisi2
 1961 0056 0829     		cmp	r1, #8
 1962 0058 00D9     		bls	.L370
 1963              	.L360:
 1964 005a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1965              	.L370:
 1966 005c 0E44     		add	r6, r6, r1
 1967 005e 96F8B030 		ldrb	r3, [r6, #176]	@ zero_extendqisi2
 1968 0062 022B     		cmp	r3, #2
 1969 0064 03D0     		beq	.L371
 1970 0066 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 1971 006a FFF7FEBF 		b	_ZN8Platform12EnableDriverEj.part.19
 1972              	.L371:
 1973 006e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1974              	.L373:
 1975              		.align	2
 1976              	.L372:
 1977 0070 00000000 		.word	reprap
 1978              		.size	_ZN8Platform11EnableDriveEj, .-_ZN8Platform11EnableDriveEj
 1979              		.section	.text._ZN8Platform12DisableDriveEj,"ax",%progbits
 1980              		.align	1
 1981              		.p2align 2,,3
 1982              		.global	_ZN8Platform12DisableDriveEj
 1983              		.syntax unified
 1984              		.thumb
 1985              		.thumb_func
 1986              		.fpu softvfp
 1987              		.type	_ZN8Platform12DisableDriveEj, %function
 1988              	_ZN8Platform12DisableDriveEj:
 1989              		@ args = 0, pretend = 0, frame = 0
 1990              		@ frame_needed = 0, uses_anonymous_args = 0
 1991 0000 164A     		ldr	r2, .L384
 1992 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1993 0004 1269     		ldr	r2, [r2, #16]
 1994 0006 0646     		mov	r6, r0
 1995 0008 D2F8F821 		ldr	r2, [r2, #504]
ARM GAS  /tmp/cclDCdxf.s 			page 36


 1996 000c 8A42     		cmp	r2, r1
 1997 000e 11D9     		bls	.L375
 1998 0010 00EBC107 		add	r7, r0, r1, lsl #3
 1999 0014 D7F81422 		ldr	r2, [r7, #532]
 2000 0018 A2B1     		cbz	r2, .L374
 2001 001a 0025     		movs	r5, #0
 2002 001c 01F14304 		add	r4, r1, #67
 2003 0020 00EBC404 		add	r4, r0, r4, lsl #3
 2004              	.L380:
 2005 0024 14F8011B 		ldrb	r1, [r4], #1	@ zero_extendqisi2
 2006 0028 0135     		adds	r5, r5, #1
 2007 002a 0829     		cmp	r1, #8
 2008 002c 0BD9     		bls	.L382
 2009              	.L378:
 2010 002e AA42     		cmp	r2, r5
 2011 0030 F8D8     		bhi	.L380
 2012 0032 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2013              	.L375:
 2014 0034 0829     		cmp	r1, #8
 2015 0036 05D8     		bhi	.L374
 2016 0038 891A     		subs	r1, r1, r2
 2017 003a 0144     		add	r1, r1, r0
 2018 003c 91F84412 		ldrb	r1, [r1, #580]	@ zero_extendqisi2
 2019 0040 0829     		cmp	r1, #8
 2020 0042 06D9     		bls	.L383
 2021              	.L374:
 2022 0044 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2023              	.L382:
 2024 0046 3046     		mov	r0, r6
 2025 0048 FFF7FEFF 		bl	_ZN8Platform13DisableDriverEj.part.18
 2026 004c D7F81422 		ldr	r2, [r7, #532]
 2027 0050 EDE7     		b	.L378
 2028              	.L383:
 2029 0052 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 2030 0056 FFF7FEBF 		b	_ZN8Platform13DisableDriverEj.part.18
 2031              	.L385:
 2032 005a 00BF     		.align	2
 2033              	.L384:
 2034 005c 00000000 		.word	reprap
 2035              		.size	_ZN8Platform12DisableDriveEj, .-_ZN8Platform12DisableDriveEj
 2036              		.section	.text._ZN8Platform16DisableAllDrivesEv,"ax",%progbits
 2037              		.align	1
 2038              		.p2align 2,,3
 2039              		.global	_ZN8Platform16DisableAllDrivesEv
 2040              		.syntax unified
 2041              		.thumb
 2042              		.thumb_func
 2043              		.fpu softvfp
 2044              		.type	_ZN8Platform16DisableAllDrivesEv, %function
 2045              	_ZN8Platform16DisableAllDrivesEv:
 2046              		@ args = 0, pretend = 0, frame = 0
 2047              		@ frame_needed = 0, uses_anonymous_args = 0
 2048 0000 38B5     		push	{r3, r4, r5, lr}
 2049 0002 0546     		mov	r5, r0
 2050 0004 0024     		movs	r4, #0
 2051              	.L387:
 2052 0006 2B19     		adds	r3, r5, r4
ARM GAS  /tmp/cclDCdxf.s 			page 37


 2053 0008 2146     		mov	r1, r4
 2054 000a 2846     		mov	r0, r5
 2055 000c 0134     		adds	r4, r4, #1
 2056 000e 93F8B030 		ldrb	r3, [r3, #176]	@ zero_extendqisi2
 2057 0012 FFF7FEFF 		bl	_ZN8Platform13DisableDriverEj.part.18
 2058 0016 092C     		cmp	r4, #9
 2059 0018 F5D1     		bne	.L387
 2060 001a 38BD     		pop	{r3, r4, r5, pc}
 2061              		.size	_ZN8Platform16DisableAllDrivesEv, .-_ZN8Platform16DisableAllDrivesEv
 2062              		.section	.text._ZN8Platform14SetDriversIdleEv,"ax",%progbits
 2063              		.align	1
 2064              		.p2align 2,,3
 2065              		.global	_ZN8Platform14SetDriversIdleEv
 2066              		.syntax unified
 2067              		.thumb
 2068              		.thumb_func
 2069              		.fpu softvfp
 2070              		.type	_ZN8Platform14SetDriversIdleEv, %function
 2071              	_ZN8Platform14SetDriversIdleEv:
 2072              		@ args = 0, pretend = 0, frame = 0
 2073              		@ frame_needed = 0, uses_anonymous_args = 0
 2074              		@ link register save eliminated.
 2075 0000 10B4     		push	{r4}
 2076 0002 0023     		movs	r3, #0
 2077 0004 0124     		movs	r4, #1
 2078              	.L392:
 2079 0006 C218     		adds	r2, r0, r3
 2080 0008 92F8B010 		ldrb	r1, [r2, #176]	@ zero_extendqisi2
 2081 000c 0133     		adds	r3, r3, #1
 2082 000e 0229     		cmp	r1, #2
 2083 0010 04BF     		itt	eq
 2084 0012 82F8B040 		strbeq	r4, [r2, #176]
 2085 0016 92F8B020 		ldrbeq	r2, [r2, #176]	@ zero_extendqisi2
 2086 001a 092B     		cmp	r3, #9
 2087 001c F3D1     		bne	.L392
 2088 001e 10BC     		pop	{r4}
 2089 0020 7047     		bx	lr
 2090              		.size	_ZN8Platform14SetDriversIdleEv, .-_ZN8Platform14SetDriversIdleEv
 2091              		.global	__aeabi_fmul
 2092 0022 00BF     		.section	.text._ZN8Platform16SetDriverCurrentEjfi,"ax",%progbits
 2093              		.align	1
 2094              		.p2align 2,,3
 2095              		.global	_ZN8Platform16SetDriverCurrentEjfi
 2096              		.syntax unified
 2097              		.thumb
 2098              		.thumb_func
 2099              		.fpu softvfp
 2100              		.type	_ZN8Platform16SetDriverCurrentEjfi, %function
 2101              	_ZN8Platform16SetDriverCurrentEjfi:
 2102              		@ args = 0, pretend = 0, frame = 0
 2103              		@ frame_needed = 0, uses_anonymous_args = 0
 2104 0000 0829     		cmp	r1, #8
 2105 0002 1ED8     		bhi	.L401
 2106 0004 38B5     		push	{r3, r4, r5, lr}
 2107 0006 0D46     		mov	r5, r1
 2108 0008 40F28A31 		movw	r1, #906
 2109 000c 8B42     		cmp	r3, r1
ARM GAS  /tmp/cclDCdxf.s 			page 38


 2110 000e 0446     		mov	r4, r0
 2111 0010 0FD0     		beq	.L398
 2112 0012 40F29131 		movw	r1, #913
 2113 0016 8B42     		cmp	r3, r1
 2114 0018 07D1     		bne	.L397
 2115 001a 1046     		mov	r0, r2
 2116 001c 0949     		ldr	r1, .L404
 2117 001e FFF7FEFF 		bl	__aeabi_fmul
 2118 0022 05F17C03 		add	r3, r5, #124
 2119 0026 44F82300 		str	r0, [r4, r3, lsl #2]	@ float
 2120              	.L397:
 2121 002a 2C44     		add	r4, r4, r5
 2122 002c 94F8B030 		ldrb	r3, [r4, #176]	@ zero_extendqisi2
 2123 0030 38BD     		pop	{r3, r4, r5, pc}
 2124              	.L398:
 2125 0032 00EB8503 		add	r3, r0, r5, lsl #2
 2126 0036 2C44     		add	r4, r4, r5
 2127 0038 C3F8CC21 		str	r2, [r3, #460]	@ float
 2128 003c 94F8B030 		ldrb	r3, [r4, #176]	@ zero_extendqisi2
 2129 0040 38BD     		pop	{r3, r4, r5, pc}
 2130              	.L401:
 2131 0042 7047     		bx	lr
 2132              	.L405:
 2133              		.align	2
 2134              	.L404:
 2135 0044 0AD7233C 		.word	1008981770
 2136              		.size	_ZN8Platform16SetDriverCurrentEjfi, .-_ZN8Platform16SetDriverCurrentEjfi
 2137              		.section	.text._ZN8Platform15SetMotorCurrentEjfi,"ax",%progbits
 2138              		.align	1
 2139              		.p2align 2,,3
 2140              		.global	_ZN8Platform15SetMotorCurrentEjfi
 2141              		.syntax unified
 2142              		.thumb
 2143              		.thumb_func
 2144              		.fpu softvfp
 2145              		.type	_ZN8Platform15SetMotorCurrentEjfi, %function
 2146              	_ZN8Platform15SetMotorCurrentEjfi:
 2147              		@ args = 0, pretend = 0, frame = 8
 2148              		@ frame_needed = 0, uses_anonymous_args = 0
 2149 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2150 0004 304C     		ldr	r4, .L421
 2151 0006 0646     		mov	r6, r0
 2152 0008 2069     		ldr	r0, [r4, #16]
 2153 000a 82B0     		sub	sp, sp, #8
 2154 000c D0F8F801 		ldr	r0, [r0, #504]
 2155 0010 8842     		cmp	r0, r1
 2156 0012 1AD9     		bls	.L407
 2157 0014 06EBC100 		add	r0, r6, r1, lsl #3
 2158 0018 D0F81402 		ldr	r0, [r0, #532]
 2159 001c 90B1     		cbz	r0, .L406
 2160 001e 40F28A37 		movw	r7, #906
 2161 0022 40F29138 		movw	r8, #913
 2162 0026 01F14304 		add	r4, r1, #67
 2163 002a E400     		lsls	r4, r4, #3
 2164 002c 00EB0409 		add	r9, r0, r4
 2165 0030 DFF898A0 		ldr	r10, .L421+4
 2166 0034 B144     		add	r9, r9, r6
ARM GAS  /tmp/cclDCdxf.s 			page 39


 2167 0036 3444     		add	r4, r4, r6
 2168              	.L415:
 2169 0038 14F8015B 		ldrb	r5, [r4], #1	@ zero_extendqisi2
 2170 003c 082D     		cmp	r5, #8
 2171 003e 22D9     		bls	.L420
 2172              	.L410:
 2173 0040 4C45     		cmp	r4, r9
 2174 0042 F9D1     		bne	.L415
 2175              	.L406:
 2176 0044 02B0     		add	sp, sp, #8
 2177              		@ sp needed
 2178 0046 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2179              	.L407:
 2180 004a 0829     		cmp	r1, #8
 2181 004c FAD8     		bhi	.L406
 2182 004e 091A     		subs	r1, r1, r0
 2183 0050 3144     		add	r1, r1, r6
 2184 0052 91F84442 		ldrb	r4, [r1, #580]	@ zero_extendqisi2
 2185 0056 082C     		cmp	r4, #8
 2186 0058 F4D8     		bhi	.L406
 2187 005a 40F28A31 		movw	r1, #906
 2188 005e 8B42     		cmp	r3, r1
 2189 0060 2DD0     		beq	.L417
 2190 0062 40F29131 		movw	r1, #913
 2191 0066 8B42     		cmp	r3, r1
 2192 0068 07D1     		bne	.L416
 2193 006a 1046     		mov	r0, r2
 2194 006c 1749     		ldr	r1, .L421+4
 2195 006e FFF7FEFF 		bl	__aeabi_fmul
 2196 0072 04F17C03 		add	r3, r4, #124
 2197 0076 46F82300 		str	r0, [r6, r3, lsl #2]	@ float
 2198              	.L416:
 2199 007a 2644     		add	r6, r6, r4
 2200 007c 96F8B030 		ldrb	r3, [r6, #176]	@ zero_extendqisi2
 2201 0080 02B0     		add	sp, sp, #8
 2202              		@ sp needed
 2203 0082 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2204              	.L420:
 2205 0086 BB42     		cmp	r3, r7
 2206 0088 11D0     		beq	.L412
 2207 008a 4345     		cmp	r3, r8
 2208 008c 0BD1     		bne	.L411
 2209 008e 5146     		mov	r1, r10
 2210 0090 1046     		mov	r0, r2
 2211 0092 0193     		str	r3, [sp, #4]
 2212 0094 0092     		str	r2, [sp]
 2213 0096 FFF7FEFF 		bl	__aeabi_fmul
 2214 009a 9DE80C00 		ldm	sp, {r2, r3}
 2215 009e 05F17C01 		add	r1, r5, #124
 2216 00a2 46F82100 		str	r0, [r6, r1, lsl #2]	@ float
 2217              	.L411:
 2218 00a6 3544     		add	r5, r5, r6
 2219 00a8 95F8B010 		ldrb	r1, [r5, #176]	@ zero_extendqisi2
 2220 00ac C8E7     		b	.L410
 2221              	.L412:
 2222 00ae 06EB8501 		add	r1, r6, r5, lsl #2
 2223 00b2 3544     		add	r5, r5, r6
ARM GAS  /tmp/cclDCdxf.s 			page 40


 2224 00b4 C1F8CC21 		str	r2, [r1, #460]	@ float
 2225 00b8 95F8B010 		ldrb	r1, [r5, #176]	@ zero_extendqisi2
 2226 00bc C0E7     		b	.L410
 2227              	.L417:
 2228 00be 06EB8403 		add	r3, r6, r4, lsl #2
 2229 00c2 C3F8CC21 		str	r2, [r3, #460]	@ float
 2230 00c6 D8E7     		b	.L416
 2231              	.L422:
 2232              		.align	2
 2233              	.L421:
 2234 00c8 00000000 		.word	reprap
 2235 00cc 0AD7233C 		.word	1008981770
 2236              		.size	_ZN8Platform15SetMotorCurrentEjfi, .-_ZN8Platform15SetMotorCurrentEjfi
 2237              		.section	.text._ZN8Platform18UpdateMotorCurrentEj,"ax",%progbits
 2238              		.align	1
 2239              		.p2align 2,,3
 2240              		.global	_ZN8Platform18UpdateMotorCurrentEj
 2241              		.syntax unified
 2242              		.thumb
 2243              		.thumb_func
 2244              		.fpu softvfp
 2245              		.type	_ZN8Platform18UpdateMotorCurrentEj, %function
 2246              	_ZN8Platform18UpdateMotorCurrentEj:
 2247              		@ args = 0, pretend = 0, frame = 0
 2248              		@ frame_needed = 0, uses_anonymous_args = 0
 2249              		@ link register save eliminated.
 2250 0000 0829     		cmp	r1, #8
 2251 0002 9CBF     		itt	ls
 2252 0004 4018     		addls	r0, r0, r1
 2253 0006 90F8B030 		ldrbls	r3, [r0, #176]	@ zero_extendqisi2
 2254 000a 7047     		bx	lr
 2255              		.size	_ZN8Platform18UpdateMotorCurrentEj, .-_ZN8Platform18UpdateMotorCurrentEj
 2256              		.section	.text._ZNK8Platform15GetMotorCurrentEji,"ax",%progbits
 2257              		.align	1
 2258              		.p2align 2,,3
 2259              		.global	_ZNK8Platform15GetMotorCurrentEji
 2260              		.syntax unified
 2261              		.thumb
 2262              		.thumb_func
 2263              		.fpu softvfp
 2264              		.type	_ZNK8Platform15GetMotorCurrentEji, %function
 2265              	_ZNK8Platform15GetMotorCurrentEji:
 2266              		@ args = 0, pretend = 0, frame = 0
 2267              		@ frame_needed = 0, uses_anonymous_args = 0
 2268 0000 0829     		cmp	r1, #8
 2269 0002 23D8     		bhi	.L431
 2270 0004 08B5     		push	{r3, lr}
 2271 0006 154B     		ldr	r3, .L441
 2272 0008 1B69     		ldr	r3, [r3, #16]
 2273 000a D3F8F831 		ldr	r3, [r3, #504]
 2274 000e 9942     		cmp	r1, r3
 2275 0010 14D3     		bcc	.L439
 2276 0012 C91A     		subs	r1, r1, r3
 2277 0014 0144     		add	r1, r1, r0
 2278 0016 91F84432 		ldrb	r3, [r1, #580]	@ zero_extendqisi2
 2279 001a 082B     		cmp	r3, #8
 2280 001c 14D8     		bhi	.L434
ARM GAS  /tmp/cclDCdxf.s 			page 41


 2281              	.L440:
 2282 001e 40F28A31 		movw	r1, #906
 2283 0022 8A42     		cmp	r2, r1
 2284 0024 14D0     		beq	.L429
 2285 0026 40F29131 		movw	r1, #913
 2286 002a 8A42     		cmp	r2, r1
 2287 002c 0CD1     		bne	.L434
 2288 002e 7C33     		adds	r3, r3, #124
 2289 0030 50F82300 		ldr	r0, [r0, r3, lsl #2]	@ float
 2290 0034 0A49     		ldr	r1, .L441+4
 2291 0036 FFF7FEFF 		bl	__aeabi_fmul
 2292 003a 08BD     		pop	{r3, pc}
 2293              	.L439:
 2294 003c 00EBC101 		add	r1, r0, r1, lsl #3
 2295 0040 91F81832 		ldrb	r3, [r1, #536]	@ zero_extendqisi2
 2296 0044 082B     		cmp	r3, #8
 2297 0046 EAD9     		bls	.L440
 2298              	.L434:
 2299 0048 0020     		movs	r0, #0
 2300 004a 08BD     		pop	{r3, pc}
 2301              	.L431:
 2302 004c 0020     		movs	r0, #0
 2303 004e 7047     		bx	lr
 2304              	.L429:
 2305 0050 00EB8300 		add	r0, r0, r3, lsl #2
 2306 0054 D0F8CC01 		ldr	r0, [r0, #460]	@ float
 2307 0058 08BD     		pop	{r3, pc}
 2308              	.L442:
 2309 005a 00BF     		.align	2
 2310              	.L441:
 2311 005c 00000000 		.word	reprap
 2312 0060 0000C842 		.word	1120403456
 2313              		.size	_ZNK8Platform15GetMotorCurrentEji, .-_ZNK8Platform15GetMotorCurrentEji
 2314              		.section	.text._ZN8Platform20SetIdleCurrentFactorEf,"ax",%progbits
 2315              		.align	1
 2316              		.p2align 2,,3
 2317              		.global	_ZN8Platform20SetIdleCurrentFactorEf
 2318              		.syntax unified
 2319              		.thumb
 2320              		.thumb_func
 2321              		.fpu softvfp
 2322              		.type	_ZN8Platform20SetIdleCurrentFactorEf, %function
 2323              	_ZN8Platform20SetIdleCurrentFactorEf:
 2324              		@ args = 0, pretend = 0, frame = 0
 2325              		@ frame_needed = 0, uses_anonymous_args = 0
 2326              		@ link register save eliminated.
 2327 0000 0023     		movs	r3, #0
 2328 0002 C0F8A812 		str	r1, [r0, #680]	@ float
 2329              	.L445:
 2330 0006 C218     		adds	r2, r0, r3
 2331 0008 92F8B010 		ldrb	r1, [r2, #176]	@ zero_extendqisi2
 2332 000c 0133     		adds	r3, r3, #1
 2333 000e 0129     		cmp	r1, #1
 2334 0010 08BF     		it	eq
 2335 0012 92F8B020 		ldrbeq	r2, [r2, #176]	@ zero_extendqisi2
 2336 0016 092B     		cmp	r3, #9
 2337 0018 F5D1     		bne	.L445
ARM GAS  /tmp/cclDCdxf.s 			page 42


 2338 001a 7047     		bx	lr
 2339              		.size	_ZN8Platform20SetIdleCurrentFactorEf, .-_ZN8Platform20SetIdleCurrentFactorEf
 2340              		.section	.text._ZN8Platform22SetDriverMicrosteppingEjji,"ax",%progbits
 2341              		.align	1
 2342              		.p2align 2,,3
 2343              		.global	_ZN8Platform22SetDriverMicrosteppingEjji
 2344              		.syntax unified
 2345              		.thumb
 2346              		.thumb_func
 2347              		.fpu softvfp
 2348              		.type	_ZN8Platform22SetDriverMicrosteppingEjji, %function
 2349              	_ZN8Platform22SetDriverMicrosteppingEjji:
 2350              		@ args = 0, pretend = 0, frame = 0
 2351              		@ frame_needed = 0, uses_anonymous_args = 0
 2352              		@ link register save eliminated.
 2353 0000 0829     		cmp	r1, #8
 2354 0002 9DBF     		ittte	ls
 2355 0004 A2F11000 		subls	r0, r2, #16
 2356 0008 B0FA80F0 		clzls	r0, r0
 2357 000c 4009     		lsrls	r0, r0, #5
 2358 000e 0020     		movhi	r0, #0
 2359 0010 7047     		bx	lr
 2360              		.size	_ZN8Platform22SetDriverMicrosteppingEjji, .-_ZN8Platform22SetDriverMicrosteppingEjji
 2361 0012 00BF     		.section	.text._ZN8Platform16SetMicrosteppingEjib,"ax",%progbits
 2362              		.align	1
 2363              		.p2align 2,,3
 2364              		.global	_ZN8Platform16SetMicrosteppingEjib
 2365              		.syntax unified
 2366              		.thumb
 2367              		.thumb_func
 2368              		.fpu softvfp
 2369              		.type	_ZN8Platform16SetMicrosteppingEjib, %function
 2370              	_ZN8Platform16SetMicrosteppingEjib:
 2371              		@ args = 0, pretend = 0, frame = 0
 2372              		@ frame_needed = 0, uses_anonymous_args = 0
 2373              		@ link register save eliminated.
 2374 0000 1A4B     		ldr	r3, .L463
 2375 0002 30B4     		push	{r4, r5}
 2376 0004 1B69     		ldr	r3, [r3, #16]
 2377 0006 D3F8F831 		ldr	r3, [r3, #504]
 2378 000a 9942     		cmp	r1, r3
 2379 000c 17D2     		bcs	.L451
 2380 000e 00EBC103 		add	r3, r0, r1, lsl #3
 2381 0012 D3F81452 		ldr	r5, [r3, #532]
 2382 0016 0124     		movs	r4, #1
 2383 0018 75B1     		cbz	r5, .L452
 2384 001a 01F14303 		add	r3, r1, #67
 2385 001e DB00     		lsls	r3, r3, #3
 2386 0020 1D44     		add	r5, r5, r3
 2387 0022 0544     		add	r5, r5, r0
 2388 0024 0344     		add	r3, r3, r0
 2389              	.L454:
 2390 0026 13F8011B 		ldrb	r1, [r3], #1	@ zero_extendqisi2
 2391 002a 0829     		cmp	r1, #8
 2392 002c 1BD8     		bhi	.L456
 2393 002e 102A     		cmp	r2, #16
 2394 0030 18BF     		it	ne
ARM GAS  /tmp/cclDCdxf.s 			page 43


 2395 0032 0024     		movne	r4, #0
 2396              	.L453:
 2397 0034 AB42     		cmp	r3, r5
 2398 0036 F6D1     		bne	.L454
 2399              	.L452:
 2400 0038 2046     		mov	r0, r4
 2401 003a 30BC     		pop	{r4, r5}
 2402 003c 7047     		bx	lr
 2403              	.L451:
 2404 003e 0829     		cmp	r1, #8
 2405 0040 0DD8     		bhi	.L458
 2406 0042 C91A     		subs	r1, r1, r3
 2407 0044 0144     		add	r1, r1, r0
 2408 0046 91F84432 		ldrb	r3, [r1, #580]	@ zero_extendqisi2
 2409 004a 082B     		cmp	r3, #8
 2410 004c 07D8     		bhi	.L458
 2411 004e A2F11004 		sub	r4, r2, #16
 2412 0052 B4FA84F4 		clz	r4, r4
 2413 0056 6409     		lsrs	r4, r4, #5
 2414 0058 2046     		mov	r0, r4
 2415 005a 30BC     		pop	{r4, r5}
 2416 005c 7047     		bx	lr
 2417              	.L458:
 2418 005e 0024     		movs	r4, #0
 2419 0060 2046     		mov	r0, r4
 2420 0062 30BC     		pop	{r4, r5}
 2421 0064 7047     		bx	lr
 2422              	.L456:
 2423 0066 0024     		movs	r4, #0
 2424 0068 E4E7     		b	.L453
 2425              	.L464:
 2426 006a 00BF     		.align	2
 2427              	.L463:
 2428 006c 00000000 		.word	reprap
 2429              		.size	_ZN8Platform16SetMicrosteppingEjib, .-_ZN8Platform16SetMicrosteppingEjib
 2430              		.section	.text._ZNK8Platform22GetDriverMicrosteppingEjRb,"ax",%progbits
 2431              		.align	1
 2432              		.p2align 2,,3
 2433              		.global	_ZNK8Platform22GetDriverMicrosteppingEjRb
 2434              		.syntax unified
 2435              		.thumb
 2436              		.thumb_func
 2437              		.fpu softvfp
 2438              		.type	_ZNK8Platform22GetDriverMicrosteppingEjRb, %function
 2439              	_ZNK8Platform22GetDriverMicrosteppingEjRb:
 2440              		@ args = 0, pretend = 0, frame = 0
 2441              		@ frame_needed = 0, uses_anonymous_args = 0
 2442              		@ link register save eliminated.
 2443 0000 0023     		movs	r3, #0
 2444 0002 1020     		movs	r0, #16
 2445 0004 1370     		strb	r3, [r2]
 2446 0006 7047     		bx	lr
 2447              		.size	_ZNK8Platform22GetDriverMicrosteppingEjRb, .-_ZNK8Platform22GetDriverMicrosteppingEjRb
 2448              		.section	.text._ZNK8Platform16GetMicrosteppingEjRb,"ax",%progbits
 2449              		.align	1
 2450              		.p2align 2,,3
 2451              		.global	_ZNK8Platform16GetMicrosteppingEjRb
ARM GAS  /tmp/cclDCdxf.s 			page 44


 2452              		.syntax unified
 2453              		.thumb
 2454              		.thumb_func
 2455              		.fpu softvfp
 2456              		.type	_ZNK8Platform16GetMicrosteppingEjRb, %function
 2457              	_ZNK8Platform16GetMicrosteppingEjRb:
 2458              		@ args = 0, pretend = 0, frame = 0
 2459              		@ frame_needed = 0, uses_anonymous_args = 0
 2460              		@ link register save eliminated.
 2461 0000 0023     		movs	r3, #0
 2462 0002 1020     		movs	r0, #16
 2463 0004 1370     		strb	r3, [r2]
 2464 0006 7047     		bx	lr
 2465              		.size	_ZNK8Platform16GetMicrosteppingEjRb, .-_ZNK8Platform16GetMicrosteppingEjRb
 2466              		.section	.text._ZN8Platform14SetEnableValueEja,"ax",%progbits
 2467              		.align	1
 2468              		.p2align 2,,3
 2469              		.global	_ZN8Platform14SetEnableValueEja
 2470              		.syntax unified
 2471              		.thumb
 2472              		.thumb_func
 2473              		.fpu softvfp
 2474              		.type	_ZN8Platform14SetEnableValueEja, %function
 2475              	_ZN8Platform14SetEnableValueEja:
 2476              		@ args = 0, pretend = 0, frame = 0
 2477              		@ frame_needed = 0, uses_anonymous_args = 0
 2478              		@ link register save eliminated.
 2479 0000 10B4     		push	{r4}
 2480 0002 0829     		cmp	r1, #8
 2481 0004 00EB0104 		add	r4, r0, r1
 2482 0008 84F8C220 		strb	r2, [r4, #194]
 2483 000c 01D9     		bls	.L470
 2484 000e 10BC     		pop	{r4}
 2485 0010 7047     		bx	lr
 2486              	.L470:
 2487 0012 10BC     		pop	{r4}
 2488 0014 FFF7FEBF 		b	_ZN8Platform13DisableDriverEj.part.18
 2489              		.size	_ZN8Platform14SetEnableValueEja, .-_ZN8Platform14SetEnableValueEja
 2490              		.section	.text._ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig,"ax",%progbits
 2491              		.align	1
 2492              		.p2align 2,,3
 2493              		.global	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig
 2494              		.syntax unified
 2495              		.thumb
 2496              		.thumb_func
 2497              		.fpu softvfp
 2498              		.type	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig, %function
 2499              	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig:
 2500              		@ args = 0, pretend = 0, frame = 0
 2501              		@ frame_needed = 0, uses_anonymous_args = 0
 2502 0000 00EBC103 		add	r3, r0, r1, lsl #3
 2503 0004 03F50573 		add	r3, r3, #532
 2504 0008 F0B5     		push	{r4, r5, r6, r7, lr}
 2505 000a 0546     		mov	r5, r0
 2506 000c 0E46     		mov	r6, r1
 2507 000e 92E80300 		ldm	r2, {r0, r1}
 2508 0012 83E80300 		stm	r3, {r0, r1}
ARM GAS  /tmp/cclDCdxf.s 			page 45


 2509 0016 1068     		ldr	r0, [r2]
 2510 0018 18B3     		cbz	r0, .L476
 2511 001a 0024     		movs	r4, #0
 2512 001c 0430     		adds	r0, r0, #4
 2513 001e DFF858E0 		ldr	lr, .L481+8
 2514 0022 1349     		ldr	r1, .L481
 2515 0024 134F     		ldr	r7, .L481+4
 2516 0026 1044     		add	r0, r0, r2
 2517 0028 0432     		adds	r2, r2, #4
 2518              	.L475:
 2519 002a 12F8013B 		ldrb	r3, [r2], #1	@ zero_extendqisi2
 2520 002e 082B     		cmp	r3, #8
 2521 0030 13D8     		bhi	.L477
 2522 0032 1EF80330 		ldrb	r3, [lr, r3]	@ zero_extendqisi2
 2523 0036 C3EBC303 		rsb	r3, r3, r3, lsl #3
 2524 003a 51F823C0 		ldr	ip, [r1, r3, lsl #2]
 2525 003e 01EB8303 		add	r3, r1, r3, lsl #2
 2526 0042 BC45     		cmp	ip, r7
 2527 0044 5B68     		ldr	r3, [r3, #4]
 2528 0046 0AD0     		beq	.L480
 2529              	.L473:
 2530 0048 9042     		cmp	r0, r2
 2531 004a 44EA0304 		orr	r4, r4, r3
 2532 004e ECD1     		bne	.L475
 2533 0050 05EB8605 		add	r5, r5, r6, lsl #2
 2534 0054 C5F84C42 		str	r4, [r5, #588]
 2535 0058 F0BD     		pop	{r4, r5, r6, r7, pc}
 2536              	.L477:
 2537 005a 0023     		movs	r3, #0
 2538 005c F4E7     		b	.L473
 2539              	.L480:
 2540 005e 5B00     		lsls	r3, r3, #1
 2541 0060 F2E7     		b	.L473
 2542              	.L476:
 2543 0062 0446     		mov	r4, r0
 2544 0064 05EB8605 		add	r5, r5, r6, lsl #2
 2545 0068 C5F84C42 		str	r4, [r5, #588]
 2546 006c F0BD     		pop	{r4, r5, r6, r7, pc}
 2547              	.L482:
 2548 006e 00BF     		.align	2
 2549              	.L481:
 2550 0070 00000000 		.word	g_APinDescription
 2551 0074 00120E40 		.word	1074663936
 2552 0078 00000000 		.word	.LANCHOR5
 2553              		.size	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig, .-_ZN8Platform20SetAxisDriversCon
 2554              		.section	.text._ZN8Platform17SetExtruderDriverEjh,"ax",%progbits
 2555              		.align	1
 2556              		.p2align 2,,3
 2557              		.global	_ZN8Platform17SetExtruderDriverEjh
 2558              		.syntax unified
 2559              		.thumb
 2560              		.thumb_func
 2561              		.fpu softvfp
 2562              		.type	_ZN8Platform17SetExtruderDriverEjh, %function
 2563              	_ZN8Platform17SetExtruderDriverEjh:
 2564              		@ args = 0, pretend = 0, frame = 0
 2565              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cclDCdxf.s 			page 46


 2566              		@ link register save eliminated.
 2567 0000 124B     		ldr	r3, .L488
 2568 0002 30B4     		push	{r4, r5}
 2569 0004 1B69     		ldr	r3, [r3, #16]
 2570 0006 4418     		adds	r4, r0, r1
 2571 0008 84F84422 		strb	r2, [r4, #580]
 2572 000c D3F8F831 		ldr	r3, [r3, #504]
 2573 0010 082A     		cmp	r2, #8
 2574 0012 1944     		add	r1, r1, r3
 2575 0014 12D8     		bhi	.L486
 2576 0016 0E4B     		ldr	r3, .L488+4
 2577 0018 0E4C     		ldr	r4, .L488+8
 2578 001a 9B5C     		ldrb	r3, [r3, r2]	@ zero_extendqisi2
 2579 001c 0E4A     		ldr	r2, .L488+12
 2580 001e C3EBC303 		rsb	r3, r3, r3, lsl #3
 2581 0022 9B00     		lsls	r3, r3, #2
 2582 0024 E558     		ldr	r5, [r4, r3]
 2583 0026 2344     		add	r3, r3, r4
 2584 0028 5B68     		ldr	r3, [r3, #4]
 2585 002a 9542     		cmp	r5, r2
 2586 002c 08BF     		it	eq
 2587 002e 5B00     		lsleq	r3, r3, #1
 2588 0030 00EB8100 		add	r0, r0, r1, lsl #2
 2589 0034 C0F84C32 		str	r3, [r0, #588]
 2590 0038 30BC     		pop	{r4, r5}
 2591 003a 7047     		bx	lr
 2592              	.L486:
 2593 003c 0023     		movs	r3, #0
 2594 003e 30BC     		pop	{r4, r5}
 2595 0040 00EB8100 		add	r0, r0, r1, lsl #2
 2596 0044 C0F84C32 		str	r3, [r0, #588]
 2597 0048 7047     		bx	lr
 2598              	.L489:
 2599 004a 00BF     		.align	2
 2600              	.L488:
 2601 004c 00000000 		.word	reprap
 2602 0050 00000000 		.word	.LANCHOR5
 2603 0054 00000000 		.word	g_APinDescription
 2604 0058 00120E40 		.word	1074663936
 2605              		.size	_ZN8Platform17SetExtruderDriverEjh, .-_ZN8Platform17SetExtruderDriverEjh
 2606              		.global	__aeabi_f2uiz
 2607              		.section	.text._ZN8Platform19SetDriverStepTimingEjPKf,"ax",%progbits
 2608              		.align	1
 2609              		.p2align 2,,3
 2610              		.global	_ZN8Platform19SetDriverStepTimingEjPKf
 2611              		.syntax unified
 2612              		.thumb
 2613              		.thumb_func
 2614              		.fpu softvfp
 2615              		.type	_ZN8Platform19SetDriverStepTimingEjPKf, %function
 2616              	_ZN8Platform19SetDriverStepTimingEjPKf:
 2617              		@ args = 0, pretend = 0, frame = 0
 2618              		@ frame_needed = 0, uses_anonymous_args = 0
 2619 0000 0829     		cmp	r1, #8
 2620 0002 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2621 0006 0F46     		mov	r7, r1
 2622 0008 8146     		mov	r9, r0
ARM GAS  /tmp/cclDCdxf.s 			page 47


 2623 000a 59D8     		bhi	.L502
 2624 000c 2F49     		ldr	r1, .L508
 2625 000e 3048     		ldr	r0, .L508+4
 2626 0010 C95D     		ldrb	r1, [r1, r7]	@ zero_extendqisi2
 2627 0012 304C     		ldr	r4, .L508+8
 2628 0014 C1EBC101 		rsb	r1, r1, r1, lsl #3
 2629 0018 8900     		lsls	r1, r1, #2
 2630 001a 4558     		ldr	r5, [r0, r1]
 2631 001c 0144     		add	r1, r1, r0
 2632 001e 4868     		ldr	r0, [r1, #4]
 2633 0020 A542     		cmp	r5, r4
 2634 0022 0CBF     		ite	eq
 2635 0024 6FEA4000 		mvneq	r0, r0, lsl #1
 2636 0028 C043     		mvnne	r0, r0
 2637              	.L491:
 2638 002a D9F8A412 		ldr	r1, [r9, #676]
 2639 002e 09F52574 		add	r4, r9, #660
 2640 0032 0840     		ands	r0, r0, r1
 2641 0034 C9F8A402 		str	r0, [r9, #676]
 2642 0038 0028     		cmp	r0, #0
 2643 003a 39D0     		beq	.L493
 2644 003c 09F52976 		add	r6, r9, #676
 2645              	.L495:
 2646 0040 DFF89C80 		ldr	r8, .L508+20
 2647 0044 DFF89CB0 		ldr	fp, .L508+24
 2648 0048 151F     		subs	r5, r2, #4
 2649              	.L494:
 2650 004a 55F804AF 		ldr	r10, [r5, #4]!	@ float
 2651 004e 4146     		mov	r1, r8
 2652 0050 5046     		mov	r0, r10
 2653 0052 FFF7FEFF 		bl	__aeabi_fcmpgt
 2654 0056 20B3     		cbz	r0, .L498
 2655 0058 082F     		cmp	r7, #8
 2656 005a 27D8     		bhi	.L503
 2657 005c 1B4B     		ldr	r3, .L508
 2658 005e 1C49     		ldr	r1, .L508+4
 2659 0060 DB5D     		ldrb	r3, [r3, r7]	@ zero_extendqisi2
 2660 0062 1B4A     		ldr	r2, .L508+4
 2661 0064 C3EBC303 		rsb	r3, r3, r3, lsl #3
 2662 0068 52F82320 		ldr	r2, [r2, r3, lsl #2]
 2663 006c 01EB8303 		add	r3, r1, r3, lsl #2
 2664 0070 1849     		ldr	r1, .L508+8
 2665 0072 5B68     		ldr	r3, [r3, #4]
 2666 0074 8A42     		cmp	r2, r1
 2667 0076 26D0     		beq	.L507
 2668              	.L499:
 2669 0078 D9F8A422 		ldr	r2, [r9, #676]
 2670 007c 5946     		mov	r1, fp
 2671 007e 1343     		orrs	r3, r3, r2
 2672 0080 C9F8A432 		str	r3, [r9, #676]
 2673 0084 5046     		mov	r0, r10
 2674 0086 FFF7FEFF 		bl	__aeabi_fmul
 2675 008a 1349     		ldr	r1, .L508+12
 2676 008c FFF7FEFF 		bl	__aeabi_fmul
 2677 0090 1249     		ldr	r1, .L508+16
 2678 0092 FFF7FEFF 		bl	__aeabi_fadd
 2679 0096 FFF7FEFF 		bl	__aeabi_f2uiz
ARM GAS  /tmp/cclDCdxf.s 			page 48


 2680 009a 2368     		ldr	r3, [r4]
 2681 009c 9842     		cmp	r0, r3
 2682 009e 88BF     		it	hi
 2683 00a0 2060     		strhi	r0, [r4]
 2684              	.L498:
 2685 00a2 0434     		adds	r4, r4, #4
 2686 00a4 B442     		cmp	r4, r6
 2687 00a6 D0D1     		bne	.L494
 2688 00a8 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2689              	.L503:
 2690 00ac 0023     		movs	r3, #0
 2691 00ae E3E7     		b	.L499
 2692              	.L493:
 2693 00b0 2146     		mov	r1, r4
 2694 00b2 09F52976 		add	r6, r9, #676
 2695              	.L496:
 2696 00b6 41F8040B 		str	r0, [r1], #4
 2697 00ba 8E42     		cmp	r6, r1
 2698 00bc FBD1     		bne	.L496
 2699 00be BFE7     		b	.L495
 2700              	.L502:
 2701 00c0 4FF0FF30 		mov	r0, #-1
 2702 00c4 B1E7     		b	.L491
 2703              	.L507:
 2704 00c6 5B00     		lsls	r3, r3, #1
 2705 00c8 D6E7     		b	.L499
 2706              	.L509:
 2707 00ca 00BF     		.align	2
 2708              	.L508:
 2709 00cc 00000000 		.word	.LANCHOR5
 2710 00d0 00000000 		.word	g_APinDescription
 2711 00d4 00120E40 		.word	1074663936
 2712 00d8 BD378635 		.word	897988541
 2713 00dc A4707D3F 		.word	1065185444
 2714 00e0 CDCC4C3E 		.word	1045220557
 2715 00e4 A0372049 		.word	1226848160
 2716              		.size	_ZN8Platform19SetDriverStepTimingEjPKf, .-_ZN8Platform19SetDriverStepTimingEjPKf
 2717              		.global	__aeabi_ui2f
 2718              		.global	__aeabi_fdiv
 2719              		.section	.text._ZNK8Platform19GetDriverStepTimingEjPf,"ax",%progbits
 2720              		.align	1
 2721              		.p2align 2,,3
 2722              		.global	_ZNK8Platform19GetDriverStepTimingEjPf
 2723              		.syntax unified
 2724              		.thumb
 2725              		.thumb_func
 2726              		.fpu softvfp
 2727              		.type	_ZNK8Platform19GetDriverStepTimingEjPf, %function
 2728              	_ZNK8Platform19GetDriverStepTimingEjPf:
 2729              		@ args = 0, pretend = 0, frame = 0
 2730              		@ frame_needed = 0, uses_anonymous_args = 0
 2731 0000 0829     		cmp	r1, #8
 2732 0002 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2733 0006 30D8     		bhi	.L515
 2734 0008 194B     		ldr	r3, .L519
 2735 000a 1A4C     		ldr	r4, .L519+4
 2736 000c 595C     		ldrb	r1, [r3, r1]	@ zero_extendqisi2
ARM GAS  /tmp/cclDCdxf.s 			page 49


 2737 000e 1A4D     		ldr	r5, .L519+8
 2738 0010 C1EBC101 		rsb	r1, r1, r1, lsl #3
 2739 0014 8900     		lsls	r1, r1, #2
 2740 0016 6658     		ldr	r6, [r4, r1]
 2741 0018 2144     		add	r1, r1, r4
 2742 001a D0F8A432 		ldr	r3, [r0, #676]
 2743 001e 4968     		ldr	r1, [r1, #4]
 2744 0020 AE42     		cmp	r6, r5
 2745 0022 0CBF     		ite	eq
 2746 0024 03EA410A 		andeq	r10, r3, r1, lsl #1
 2747 0028 03EA010A 		andne	r10, r3, r1
 2748              	.L511:
 2749 002c 4FF00009 		mov	r9, #0
 2750 0030 DFF84C80 		ldr	r8, .L519+16
 2751 0034 114F     		ldr	r7, .L519+12
 2752 0036 151F     		subs	r5, r2, #4
 2753 0038 00F52574 		add	r4, r0, #660
 2754 003c 00F52976 		add	r6, r0, #676
 2755              	.L514:
 2756 0040 BAF1000F 		cmp	r10, #0
 2757 0044 0FD0     		beq	.L516
 2758 0046 2068     		ldr	r0, [r4]
 2759 0048 FFF7FEFF 		bl	__aeabi_ui2f
 2760 004c 4146     		mov	r1, r8
 2761 004e FFF7FEFF 		bl	__aeabi_fmul
 2762 0052 3946     		mov	r1, r7
 2763 0054 FFF7FEFF 		bl	__aeabi_fdiv
 2764              	.L513:
 2765 0058 0434     		adds	r4, r4, #4
 2766 005a B442     		cmp	r4, r6
 2767 005c 45F8040F 		str	r0, [r5, #4]!	@ float
 2768 0060 EED1     		bne	.L514
 2769 0062 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2770              	.L516:
 2771 0066 4846     		mov	r0, r9
 2772 0068 F6E7     		b	.L513
 2773              	.L515:
 2774 006a 4FF0000A 		mov	r10, #0
 2775 006e DDE7     		b	.L511
 2776              	.L520:
 2777              		.align	2
 2778              	.L519:
 2779 0070 00000000 		.word	.LANCHOR5
 2780 0074 00000000 		.word	g_APinDescription
 2781 0078 00120E40 		.word	1074663936
 2782 007c A0372049 		.word	1226848160
 2783 0080 00247449 		.word	1232348160
 2784              		.size	_ZNK8Platform19GetDriverStepTimingEjPf, .-_ZNK8Platform19GetDriverStepTimingEjPf
 2785              		.section	.text._ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb,"ax",%progbits
 2786              		.align	1
 2787              		.p2align 2,,3
 2788              		.global	_ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb
 2789              		.syntax unified
 2790              		.thumb
 2791              		.thumb_func
 2792              		.fpu softvfp
 2793              		.type	_ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb, %function
ARM GAS  /tmp/cclDCdxf.s 			page 50


 2794              	_ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb:
 2795              		@ args = 8, pretend = 0, frame = 0
 2796              		@ frame_needed = 0, uses_anonymous_args = 0
 2797 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2798 0004 012A     		cmp	r2, #1
 2799 0006 069D     		ldr	r5, [sp, #24]
 2800 0008 079E     		ldr	r6, [sp, #28]
 2801 000a 09D9     		bls	.L527
 2802 000c 2846     		mov	r0, r5
 2803 000e 0123     		movs	r3, #1
 2804 0010 0849     		ldr	r1, .L528
 2805 0012 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2806 0016 0123     		movs	r3, #1
 2807 0018 0020     		movs	r0, #0
 2808 001a 3370     		strb	r3, [r6]
 2809 001c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2810              	.L527:
 2811 0020 2C27     		movs	r7, #44
 2812 0022 07FB0200 		mla	r0, r7, r2, r0
 2813 0026 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 2814 002a 00F59860 		add	r0, r0, #1216
 2815 002e FFF7FEBF 		b	_ZN3Fan9ConfigureEjiR11GCodeBufferRK9StringRefRb
 2816              	.L529:
 2817 0032 00BF     		.align	2
 2818              	.L528:
 2819 0034 00000000 		.word	.LC16
 2820              		.size	_ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb, .-_ZN8Platform12ConfigureFanEjiR1
 2821              		.section	.text._ZNK8Platform11GetFanValueEj,"ax",%progbits
 2822              		.align	1
 2823              		.p2align 2,,3
 2824              		.global	_ZNK8Platform11GetFanValueEj
 2825              		.syntax unified
 2826              		.thumb
 2827              		.thumb_func
 2828              		.fpu softvfp
 2829              		.type	_ZNK8Platform11GetFanValueEj, %function
 2830              	_ZNK8Platform11GetFanValueEj:
 2831              		@ args = 0, pretend = 0, frame = 0
 2832              		@ frame_needed = 0, uses_anonymous_args = 0
 2833              		@ link register save eliminated.
 2834 0000 0129     		cmp	r1, #1
 2835 0002 9DBF     		ittte	ls
 2836 0004 2C23     		movls	r3, #44
 2837 0006 03FB0101 		mlals	r1, r3, r1, r0
 2838 000a D1F8C004 		ldrls	r0, [r1, #1216]	@ float
 2839 000e 0148     		ldrhi	r0, .L533
 2840 0010 7047     		bx	lr
 2841              	.L534:
 2842 0012 00BF     		.align	2
 2843              	.L533:
 2844 0014 000080BF 		.word	-1082130432
 2845              		.size	_ZNK8Platform11GetFanValueEj, .-_ZNK8Platform11GetFanValueEj
 2846              		.section	.text._ZN8Platform11SetFanValueEjf,"ax",%progbits
 2847              		.align	1
 2848              		.p2align 2,,3
 2849              		.global	_ZN8Platform11SetFanValueEjf
 2850              		.syntax unified
ARM GAS  /tmp/cclDCdxf.s 			page 51


 2851              		.thumb
 2852              		.thumb_func
 2853              		.fpu softvfp
 2854              		.type	_ZN8Platform11SetFanValueEjf, %function
 2855              	_ZN8Platform11SetFanValueEjf:
 2856              		@ args = 0, pretend = 0, frame = 0
 2857              		@ frame_needed = 0, uses_anonymous_args = 0
 2858              		@ link register save eliminated.
 2859 0000 0129     		cmp	r1, #1
 2860 0002 00D9     		bls	.L537
 2861 0004 7047     		bx	lr
 2862              	.L537:
 2863 0006 2C23     		movs	r3, #44
 2864 0008 03FB0100 		mla	r0, r3, r1, r0
 2865 000c 1146     		mov	r1, r2
 2866 000e 00F59860 		add	r0, r0, #1216
 2867 0012 FFF7FEBF 		b	_ZN3Fan6SetPwmEf
 2868              		.size	_ZN8Platform11SetFanValueEjf, .-_ZN8Platform11SetFanValueEjf
 2869 0016 00BF     		.section	.text._ZNK8Platform17IsFanControllableEj,"ax",%progbits
 2870              		.align	1
 2871              		.p2align 2,,3
 2872              		.global	_ZNK8Platform17IsFanControllableEj
 2873              		.syntax unified
 2874              		.thumb
 2875              		.thumb_func
 2876              		.fpu softvfp
 2877              		.type	_ZNK8Platform17IsFanControllableEj, %function
 2878              	_ZNK8Platform17IsFanControllableEj:
 2879              		@ args = 0, pretend = 0, frame = 0
 2880              		@ frame_needed = 0, uses_anonymous_args = 0
 2881              		@ link register save eliminated.
 2882 0000 0129     		cmp	r1, #1
 2883 0002 01D9     		bls	.L545
 2884              	.L541:
 2885 0004 0020     		movs	r0, #0
 2886              	.L539:
 2887 0006 7047     		bx	lr
 2888              	.L545:
 2889 0008 2C23     		movs	r3, #44
 2890 000a 03FB01F1 		mul	r1, r3, r1
 2891 000e 01F59863 		add	r3, r1, #1216
 2892 0012 0344     		add	r3, r3, r0
 2893 0014 1A6A     		ldr	r2, [r3, #32]
 2894 0016 002A     		cmp	r2, #0
 2895 0018 F4D1     		bne	.L541
 2896 001a 0844     		add	r0, r0, r1
 2897 001c 90F8E704 		ldrb	r0, [r0, #1255]	@ zero_extendqisi2
 2898 0020 0028     		cmp	r0, #0
 2899 0022 F0D0     		beq	.L539
 2900 0024 93F82600 		ldrb	r0, [r3, #38]	@ zero_extendqisi2
 2901 0028 FF38     		subs	r0, r0, #255
 2902 002a 18BF     		it	ne
 2903 002c 0120     		movne	r0, #1
 2904 002e 7047     		bx	lr
 2905              		.size	_ZNK8Platform17IsFanControllableEj, .-_ZNK8Platform17IsFanControllableEj
 2906              		.section	.text._ZNK8Platform9GetFanRPMEv,"ax",%progbits
 2907              		.align	1
ARM GAS  /tmp/cclDCdxf.s 			page 52


 2908              		.p2align 2,,3
 2909              		.global	_ZNK8Platform9GetFanRPMEv
 2910              		.syntax unified
 2911              		.thumb
 2912              		.thumb_func
 2913              		.fpu softvfp
 2914              		.type	_ZNK8Platform9GetFanRPMEv, %function
 2915              	_ZNK8Platform9GetFanRPMEv:
 2916              		@ args = 0, pretend = 0, frame = 0
 2917              		@ frame_needed = 0, uses_anonymous_args = 0
 2918 0000 0A4A     		ldr	r2, .L551
 2919 0002 08B5     		push	{r3, lr}
 2920 0004 1368     		ldr	r3, [r2]
 2921 0006 7BB1     		cbz	r3, .L549
 2922 0008 0949     		ldr	r1, .L551+4
 2923 000a 0A4B     		ldr	r3, .L551+8
 2924 000c 1B69     		ldr	r3, [r3, #16]
 2925 000e 0868     		ldr	r0, [r1]
 2926 0010 0949     		ldr	r1, .L551+12
 2927 0012 1B1A     		subs	r3, r3, r0
 2928 0014 8B42     		cmp	r3, r1
 2929 0016 07D8     		bhi	.L549
 2930 0018 1068     		ldr	r0, [r2]
 2931 001a FFF7FEFF 		bl	__aeabi_ui2f
 2932 001e 0146     		mov	r1, r0
 2933 0020 0648     		ldr	r0, .L551+16
 2934 0022 FFF7FEFF 		bl	__aeabi_fdiv
 2935 0026 08BD     		pop	{r3, pc}
 2936              	.L549:
 2937 0028 0020     		movs	r0, #0
 2938 002a 08BD     		pop	{r3, pc}
 2939              	.L552:
 2940              		.align	2
 2941              	.L551:
 2942 002c 00000000 		.word	.LANCHOR2
 2943 0030 00000000 		.word	.LANCHOR1
 2944 0034 00400840 		.word	1074282496
 2945 0038 6D0A1E00 		.word	1968749
 2946 003c 7053704C 		.word	1282429808
 2947              		.size	_ZNK8Platform9GetFanRPMEv, .-_ZNK8Platform9GetFanRPMEv
 2948              		.section	.text._ZNK8Platform20FansHardwareInvertedEj,"ax",%progbits
 2949              		.align	1
 2950              		.p2align 2,,3
 2951              		.global	_ZNK8Platform20FansHardwareInvertedEj
 2952              		.syntax unified
 2953              		.thumb
 2954              		.thumb_func
 2955              		.fpu softvfp
 2956              		.type	_ZNK8Platform20FansHardwareInvertedEj, %function
 2957              	_ZNK8Platform20FansHardwareInvertedEj:
 2958              		@ args = 0, pretend = 0, frame = 0
 2959              		@ frame_needed = 0, uses_anonymous_args = 0
 2960              		@ link register save eliminated.
 2961 0000 0020     		movs	r0, #0
 2962 0002 7047     		bx	lr
 2963              		.size	_ZNK8Platform20FansHardwareInvertedEj, .-_ZNK8Platform20FansHardwareInvertedEj
 2964              		.section	.text._ZN8Platform8InitFansEv,"ax",%progbits
ARM GAS  /tmp/cclDCdxf.s 			page 53


 2965              		.align	1
 2966              		.p2align 2,,3
 2967              		.global	_ZN8Platform8InitFansEv
 2968              		.syntax unified
 2969              		.thumb
 2970              		.thumb_func
 2971              		.fpu softvfp
 2972              		.type	_ZN8Platform8InitFansEv, %function
 2973              	_ZN8Platform8InitFansEv:
 2974              		@ args = 0, pretend = 0, frame = 0
 2975              		@ frame_needed = 0, uses_anonymous_args = 0
 2976 0000 38B5     		push	{r3, r4, r5, lr}
 2977 0002 0446     		mov	r4, r0
 2978 0004 0022     		movs	r2, #0
 2979 0006 04F2EC45 		addw	r5, r4, #1260
 2980 000a 00F59860 		add	r0, r0, #1216
 2981 000e 0921     		movs	r1, #9
 2982 0010 FFF7FEFF 		bl	_ZN3Fan4InitEhb
 2983 0014 0022     		movs	r2, #0
 2984 0016 2846     		mov	r0, r5
 2985 0018 0821     		movs	r1, #8
 2986 001a FFF7FEFF 		bl	_ZN3Fan4InitEhb
 2987 001e 2846     		mov	r0, r5
 2988 0020 0E21     		movs	r1, #14
 2989 0022 FFF7FEFF 		bl	_ZN3Fan19SetHeatersMonitoredEm
 2990 0026 2846     		mov	r0, r5
 2991 0028 4FF07E51 		mov	r1, #1065353216
 2992 002c FFF7FEFF 		bl	_ZN3Fan6SetPwmEf
 2993 0030 1920     		movs	r0, #25
 2994 0032 84F81805 		strb	r0, [r4, #1304]
 2995 0036 40F2DC52 		movw	r2, #1500
 2996 003a BDE83840 		pop	{r3, r4, r5, lr}
 2997 003e 0121     		movs	r1, #1
 2998 0040 FFF7FEBF 		b	pinModeDuet
 2999              		.size	_ZN8Platform8InitFansEv, .-_ZN8Platform8InitFansEv
 3000              		.section	.text._ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType,"ax",%pr
 3001              		.align	1
 3002              		.p2align 2,,3
 3003              		.global	_ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType
 3004              		.syntax unified
 3005              		.thumb
 3006              		.thumb_func
 3007              		.fpu softvfp
 3008              		.type	_ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType, %function
 3009              	_ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType:
 3010              		@ args = 0, pretend = 0, frame = 0
 3011              		@ frame_needed = 0, uses_anonymous_args = 0
 3012              		@ link register save eliminated.
 3013 0000 00EB8101 		add	r1, r0, r1, lsl #2
 3014 0004 C1F87C24 		str	r2, [r1, #1148]
 3015 0008 C1F89434 		str	r3, [r1, #1172]
 3016 000c 7047     		bx	lr
 3017              		.size	_ZN8Platform23SetEndStopConfigurationEj15EndStopPosition16EndStopInputType, .-_ZN8Platform23
 3018 000e 00BF     		.section	.text._ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType,"ax",
 3019              		.align	1
 3020              		.p2align 2,,3
 3021              		.global	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType
ARM GAS  /tmp/cclDCdxf.s 			page 54


 3022              		.syntax unified
 3023              		.thumb
 3024              		.thumb_func
 3025              		.fpu softvfp
 3026              		.type	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType, %function
 3027              	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType:
 3028              		@ args = 0, pretend = 0, frame = 0
 3029              		@ frame_needed = 0, uses_anonymous_args = 0
 3030              		@ link register save eliminated.
 3031 0000 00EB8101 		add	r1, r0, r1, lsl #2
 3032 0004 D1F87C04 		ldr	r0, [r1, #1148]
 3033 0008 1060     		str	r0, [r2]
 3034 000a D1F89424 		ldr	r2, [r1, #1172]
 3035 000e 1A60     		str	r2, [r3]
 3036 0010 7047     		bx	lr
 3037              		.size	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType, .-_ZNK8Platfo
 3038 0012 00BF     		.section	.text._ZN8Platform14AppendAuxReplyEPKcb,"ax",%progbits
 3039              		.align	1
 3040              		.p2align 2,,3
 3041              		.global	_ZN8Platform14AppendAuxReplyEPKcb
 3042              		.syntax unified
 3043              		.thumb
 3044              		.thumb_func
 3045              		.fpu softvfp
 3046              		.type	_ZN8Platform14AppendAuxReplyEPKcb, %function
 3047              	_ZN8Platform14AppendAuxReplyEPKcb:
 3048              		@ args = 0, pretend = 0, frame = 0
 3049              		@ frame_needed = 0, uses_anonymous_args = 0
 3050              		@ link register save eliminated.
 3051 0000 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 3052 0002 03B9     		cbnz	r3, .L569
 3053 0004 7047     		bx	lr
 3054              	.L569:
 3055 0006 90F84C35 		ldrb	r3, [r0, #1356]	@ zero_extendqisi2
 3056 000a 10B4     		push	{r4}
 3057 000c 13B1     		cbz	r3, .L558
 3058 000e 10BC     		pop	{r4}
 3059 0010 FFF7FEBF 		b	_ZN8Platform14AppendAuxReplyEPKcb.part.21
 3060              	.L558:
 3061 0014 10BC     		pop	{r4}
 3062 0016 7047     		bx	lr
 3063              		.size	_ZN8Platform14AppendAuxReplyEPKcb, .-_ZN8Platform14AppendAuxReplyEPKcb
 3064              		.section	.text._ZN8Platform14AppendAuxReplyEP12OutputBufferb,"ax",%progbits
 3065              		.align	1
 3066              		.p2align 2,,3
 3067              		.global	_ZN8Platform14AppendAuxReplyEP12OutputBufferb
 3068              		.syntax unified
 3069              		.thumb
 3070              		.thumb_func
 3071              		.fpu softvfp
 3072              		.type	_ZN8Platform14AppendAuxReplyEP12OutputBufferb, %function
 3073              	_ZN8Platform14AppendAuxReplyEP12OutputBufferb:
 3074              		@ args = 0, pretend = 0, frame = 16
 3075              		@ frame_needed = 0, uses_anonymous_args = 0
 3076 0000 30B5     		push	{r4, r5, lr}
 3077 0002 85B0     		sub	sp, sp, #20
 3078 0004 0191     		str	r1, [sp, #4]
ARM GAS  /tmp/cclDCdxf.s 			page 55


 3079 0006 29B1     		cbz	r1, .L571
 3080 0008 0446     		mov	r4, r0
 3081 000a 0846     		mov	r0, r1
 3082 000c 1546     		mov	r5, r2
 3083 000e FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 3084 0012 20B9     		cbnz	r0, .L587
 3085              	.L571:
 3086 0014 01A8     		add	r0, sp, #4
 3087 0016 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3088 001a 05B0     		add	sp, sp, #20
 3089              		@ sp needed
 3090 001c 30BD     		pop	{r4, r5, pc}
 3091              	.L587:
 3092 001e 94F84C35 		ldrb	r3, [r4, #1356]	@ zero_extendqisi2
 3093 0022 002B     		cmp	r3, #0
 3094 0024 F6D0     		beq	.L571
 3095 0026 02A8     		add	r0, sp, #8
 3096 0028 4FF0FF32 		mov	r2, #-1
 3097 002c 04F5A861 		add	r1, r4, #1344
 3098 0030 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 3099 0034 7DB9     		cbnz	r5, .L588
 3100 0036 D4F84835 		ldr	r3, [r4, #1352]
 3101 003a D4F84405 		ldr	r0, [r4, #1348]
 3102 003e 0133     		adds	r3, r3, #1
 3103 0040 C4F84835 		str	r3, [r4, #1352]
 3104 0044 68B1     		cbz	r0, .L589
 3105 0046 0199     		ldr	r1, [sp, #4]
 3106 0048 FFF7FEFF 		bl	_ZN12OutputBuffer6AppendEPS_
 3107              	.L573:
 3108 004c 02A8     		add	r0, sp, #8
 3109 004e FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3110 0052 05B0     		add	sp, sp, #20
 3111              		@ sp needed
 3112 0054 30BD     		pop	{r4, r5, pc}
 3113              	.L588:
 3114 0056 04F22C50 		addw	r0, r4, #1324
 3115 005a 0199     		ldr	r1, [sp, #4]
 3116 005c FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 3117 0060 F4E7     		b	.L573
 3118              	.L589:
 3119 0062 019B     		ldr	r3, [sp, #4]
 3120 0064 C4F84435 		str	r3, [r4, #1348]
 3121 0068 F0E7     		b	.L573
 3122              		.size	_ZN8Platform14AppendAuxReplyEP12OutputBufferb, .-_ZN8Platform14AppendAuxReplyEP12OutputBuffe
 3123 006a 00BF     		.section	.text._ZN8Platform7MessageE11MessageTypeP12OutputBuffer,"ax",%progbits
 3124              		.align	1
 3125              		.p2align 2,,3
 3126              		.global	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 3127              		.syntax unified
 3128              		.thumb
 3129              		.thumb_func
 3130              		.fpu softvfp
 3131              		.type	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer, %function
 3132              	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer:
 3133              		@ args = 0, pretend = 0, frame = 16
 3134              		@ frame_needed = 0, uses_anonymous_args = 0
 3135 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
ARM GAS  /tmp/cclDCdxf.s 			page 56


 3136 0004 0B06     		lsls	r3, r1, #24
 3137 0006 85B0     		sub	sp, sp, #20
 3138 0008 0C46     		mov	r4, r1
 3139 000a 0546     		mov	r5, r0
 3140 000c 0192     		str	r2, [sp, #4]
 3141 000e 05D5     		bpl	.L591
 3142 0010 0068     		ldr	r0, [r0]
 3143 0012 18B1     		cbz	r0, .L591
 3144 0014 D5F88815 		ldr	r1, [r5, #1416]
 3145 0018 FFF7FEFF 		bl	_ZN6Logger10LogMessageElP12OutputBuffer
 3146              	.L591:
 3147 001c 14F00C09 		ands	r9, r4, #12
 3148 0020 14BF     		ite	ne
 3149 0022 0121     		movne	r1, #1
 3150 0024 0021     		moveq	r1, #0
 3151 0026 14F00306 		ands	r6, r4, #3
 3152 002a 18BF     		it	ne
 3153 002c 0131     		addne	r1, r1, #1
 3154 002e 14F01008 		ands	r8, r4, #16
 3155 0032 15D0     		beq	.L593
 3156 0034 14F02007 		ands	r7, r4, #32
 3157 0038 01F10101 		add	r1, r1, #1
 3158 003c 00D0     		beq	.L595
 3159              	.L594:
 3160 003e 0131     		adds	r1, r1, #1
 3161              	.L595:
 3162 0040 0139     		subs	r1, r1, #1
 3163 0042 0198     		ldr	r0, [sp, #4]
 3164 0044 FFF7FEFF 		bl	_ZN12OutputBuffer18IncreaseReferencesEj
 3165 0048 B9F1000F 		cmp	r9, #0
 3166 004c 29D1     		bne	.L627
 3167 004e B8F1000F 		cmp	r8, #0
 3168 0052 39D1     		bne	.L628
 3169              	.L600:
 3170 0054 002F     		cmp	r7, #0
 3171 0056 3ED1     		bne	.L629
 3172              	.L601:
 3173 0058 6EB9     		cbnz	r6, .L630
 3174              	.L590:
 3175 005a 05B0     		add	sp, sp, #20
 3176              		@ sp needed
 3177 005c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3178              	.L593:
 3179 0060 14F02007 		ands	r7, r4, #32
 3180 0064 EBD1     		bne	.L594
 3181 0066 0029     		cmp	r1, #0
 3182 0068 EAD1     		bne	.L595
 3183 006a 01A8     		add	r0, sp, #4
 3184 006c FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3185 0070 05B0     		add	sp, sp, #20
 3186              		@ sp needed
 3187 0072 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3188              	.L630:
 3189 0076 02A8     		add	r0, sp, #8
 3190 0078 4FF0FF32 		mov	r2, #-1
 3191 007c 05F26451 		addw	r1, r5, #1380
 3192 0080 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
ARM GAS  /tmp/cclDCdxf.s 			page 57


 3193 0084 1A48     		ldr	r0, .L632
 3194 0086 FFF7FEFF 		bl	_ZNK9SerialCDCcvbEv
 3195 008a 60B3     		cbz	r0, .L631
 3196 008c 05F5AA60 		add	r0, r5, #1360
 3197 0090 0199     		ldr	r1, [sp, #4]
 3198 0092 FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 3199              	.L603:
 3200 0096 02A8     		add	r0, sp, #8
 3201 0098 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 3202 009c 05B0     		add	sp, sp, #20
 3203              		@ sp needed
 3204 009e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3205              	.L627:
 3206 00a2 DDF80490 		ldr	r9, [sp, #4]
 3207 00a6 0021     		movs	r1, #0
 3208 00a8 4846     		mov	r0, r9
 3209 00aa FFF7FEFF 		bl	_ZN12OutputBufferixEj
 3210 00ae 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 3211 00b0 4946     		mov	r1, r9
 3212 00b2 7B2B     		cmp	r3, #123
 3213 00b4 14BF     		ite	ne
 3214 00b6 C4F38022 		ubfxne	r2, r4, #10, #1
 3215 00ba 0122     		moveq	r2, #1
 3216 00bc 2846     		mov	r0, r5
 3217 00be FFF7FEFF 		bl	_ZN8Platform14AppendAuxReplyEP12OutputBufferb
 3218 00c2 B8F1000F 		cmp	r8, #0
 3219 00c6 C5D0     		beq	.L600
 3220              	.L628:
 3221 00c8 0A4B     		ldr	r3, .L632+4
 3222 00ca 0199     		ldr	r1, [sp, #4]
 3223 00cc 5868     		ldr	r0, [r3, #4]
 3224 00ce FFF7FEFF 		bl	_ZN7Network20HandleHttpGCodeReplyEP12OutputBuffer
 3225 00d2 002F     		cmp	r7, #0
 3226 00d4 C0D0     		beq	.L601
 3227              	.L629:
 3228 00d6 074B     		ldr	r3, .L632+4
 3229 00d8 0199     		ldr	r1, [sp, #4]
 3230 00da 5868     		ldr	r0, [r3, #4]
 3231 00dc FFF7FEFF 		bl	_ZN7Network22HandleTelnetGCodeReplyEP12OutputBuffer
 3232 00e0 002E     		cmp	r6, #0
 3233 00e2 BAD0     		beq	.L590
 3234 00e4 C7E7     		b	.L630
 3235              	.L631:
 3236 00e6 01A8     		add	r0, sp, #4
 3237 00e8 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3238 00ec D3E7     		b	.L603
 3239              	.L633:
 3240 00ee 00BF     		.align	2
 3241              	.L632:
 3242 00f0 00000000 		.word	SerialUSB
 3243 00f4 00000000 		.word	reprap
 3244              		.size	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer, .-_ZN8Platform7MessageE11MessageTypeP12Ou
 3245              		.section	.text._ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef,"ax",%progbits
 3246              		.align	1
 3247              		.p2align 2,,3
 3248              		.global	_ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef
 3249              		.syntax unified
ARM GAS  /tmp/cclDCdxf.s 			page 58


 3250              		.thumb
 3251              		.thumb_func
 3252              		.fpu softvfp
 3253              		.type	_ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef, %function
 3254              	_ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef:
 3255              		@ args = 0, pretend = 0, frame = 112
 3256              		@ frame_needed = 0, uses_anonymous_args = 0
 3257 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3258 0004 0E46     		mov	r6, r1
 3259 0006 9CB0     		sub	sp, sp, #112
 3260 0008 0546     		mov	r5, r0
 3261 000a 5321     		movs	r1, #83
 3262 000c 3046     		mov	r0, r6
 3263 000e 1746     		mov	r7, r2
 3264 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3265 0014 60B3     		cbz	r0, .L635
 3266 0016 2868     		ldr	r0, [r5]
 3267 0018 18B1     		cbz	r0, .L636
 3268 001a D5F88815 		ldr	r1, [r5, #1416]
 3269 001e FFF7FEFF 		bl	_ZN6Logger4StopEl
 3270              	.L636:
 3271 0022 3046     		mov	r0, r6
 3272 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3273 0028 0028     		cmp	r0, #0
 3274 002a 37DD     		ble	.L643
 3275 002c 2868     		ldr	r0, [r5]
 3276 002e 0028     		cmp	r0, #0
 3277 0030 3DD0     		beq	.L650
 3278 0032 D5F88815 		ldr	r1, [r5, #1416]
 3279 0036 FFF7FEFF 		bl	_ZN6Logger4StopEl
 3280              	.L639:
 3281 003a 6522     		movs	r2, #101
 3282 003c 02AB     		add	r3, sp, #8
 3283 003e 5021     		movs	r1, #80
 3284 0040 3046     		mov	r0, r6
 3285 0042 0192     		str	r2, [sp, #4]
 3286 0044 0093     		str	r3, [sp]
 3287 0046 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3288 004a E846     		mov	r8, sp
 3289 004c 0446     		mov	r4, r0
 3290 004e 00B3     		cbz	r0, .L640
 3291 0050 3046     		mov	r0, r6
 3292 0052 6946     		mov	r1, sp
 3293 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 3294 0058 20B3     		cbz	r0, .L651
 3295              	.L641:
 3296 005a 0024     		movs	r4, #0
 3297 005c 2868     		ldr	r0, [r5]
 3298 005e 4246     		mov	r2, r8
 3299 0060 D5F88815 		ldr	r1, [r5, #1416]
 3300 0064 FFF7FEFF 		bl	_ZN6Logger5StartElRK9StringRef
 3301 0068 2046     		mov	r0, r4
 3302 006a 1CB0     		add	sp, sp, #112
 3303              		@ sp needed
 3304 006c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3305              	.L635:
 3306 0070 2B68     		ldr	r3, [r5]
ARM GAS  /tmp/cclDCdxf.s 			page 59


 3307 0072 0446     		mov	r4, r0
 3308 0074 A3B1     		cbz	r3, .L644
 3309 0076 1968     		ldr	r1, [r3]
 3310 0078 114A     		ldr	r2, .L652
 3311 007a 124B     		ldr	r3, .L652+4
 3312 007c 0029     		cmp	r1, #0
 3313 007e 18BF     		it	ne
 3314 0080 1A46     		movne	r2, r3
 3315              	.L642:
 3316 0082 3846     		mov	r0, r7
 3317 0084 1049     		ldr	r1, .L652+8
 3318 0086 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3319              	.L637:
 3320 008a 2046     		mov	r0, r4
 3321 008c 1CB0     		add	sp, sp, #112
 3322              		@ sp needed
 3323 008e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3324              	.L640:
 3325 0092 6846     		mov	r0, sp
 3326 0094 0D49     		ldr	r1, .L652+12
 3327 0096 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3328 009a DEE7     		b	.L641
 3329              	.L643:
 3330 009c 0024     		movs	r4, #0
 3331 009e F4E7     		b	.L637
 3332              	.L644:
 3333 00a0 074A     		ldr	r2, .L652
 3334 00a2 EEE7     		b	.L642
 3335              	.L651:
 3336 00a4 3846     		mov	r0, r7
 3337 00a6 0A49     		ldr	r1, .L652+16
 3338 00a8 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3339 00ac EDE7     		b	.L637
 3340              	.L650:
 3341 00ae 1020     		movs	r0, #16
 3342 00b0 FFF7FEFF 		bl	_Znwj
 3343 00b4 0446     		mov	r4, r0
 3344 00b6 FFF7FEFF 		bl	_ZN6LoggerC1Ev
 3345 00ba 2C60     		str	r4, [r5]
 3346 00bc BDE7     		b	.L639
 3347              	.L653:
 3348 00be 00BF     		.align	2
 3349              	.L652:
 3350 00c0 08000000 		.word	.LC18
 3351 00c4 00000000 		.word	.LC17
 3352 00c8 48000000 		.word	.LC21
 3353 00cc 38000000 		.word	.LC20
 3354 00d0 14000000 		.word	.LC19
 3355              		.size	_ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef, .-_ZN8Platform16ConfigureLoggingE
 3356              		.section	.text._ZN8Platform11StopLoggingEv,"ax",%progbits
 3357              		.align	1
 3358              		.p2align 2,,3
 3359              		.global	_ZN8Platform11StopLoggingEv
 3360              		.syntax unified
 3361              		.thumb
 3362              		.thumb_func
 3363              		.fpu softvfp
ARM GAS  /tmp/cclDCdxf.s 			page 60


 3364              		.type	_ZN8Platform11StopLoggingEv, %function
 3365              	_ZN8Platform11StopLoggingEv:
 3366              		@ args = 0, pretend = 0, frame = 0
 3367              		@ frame_needed = 0, uses_anonymous_args = 0
 3368              		@ link register save eliminated.
 3369 0000 0368     		ldr	r3, [r0]
 3370 0002 23B1     		cbz	r3, .L654
 3371 0004 D0F88815 		ldr	r1, [r0, #1416]
 3372 0008 1846     		mov	r0, r3
 3373 000a FFF7FEBF 		b	_ZN6Logger4StopEl
 3374              	.L654:
 3375 000e 7047     		bx	lr
 3376              		.size	_ZN8Platform11StopLoggingEv, .-_ZN8Platform11StopLoggingEv
 3377              		.section	.text._ZNK8Platform8AtxPowerEv,"ax",%progbits
 3378              		.align	1
 3379              		.p2align 2,,3
 3380              		.global	_ZNK8Platform8AtxPowerEv
 3381              		.syntax unified
 3382              		.thumb
 3383              		.thumb_func
 3384              		.fpu softvfp
 3385              		.type	_ZNK8Platform8AtxPowerEv, %function
 3386              	_ZNK8Platform8AtxPowerEv:
 3387              		@ args = 0, pretend = 0, frame = 0
 3388              		@ frame_needed = 0, uses_anonymous_args = 0
 3389              		@ link register save eliminated.
 3390 0000 2820     		movs	r0, #40
 3391 0002 FFF7FEBF 		b	_ZN6IoPort7ReadPinEh
 3392              		.size	_ZNK8Platform8AtxPowerEv, .-_ZNK8Platform8AtxPowerEv
 3393 0006 00BF     		.section	.text._ZN8Platform10AtxPowerOnEv,"ax",%progbits
 3394              		.align	1
 3395              		.p2align 2,,3
 3396              		.global	_ZN8Platform10AtxPowerOnEv
 3397              		.syntax unified
 3398              		.thumb
 3399              		.thumb_func
 3400              		.fpu softvfp
 3401              		.type	_ZN8Platform10AtxPowerOnEv, %function
 3402              	_ZN8Platform10AtxPowerOnEv:
 3403              		@ args = 0, pretend = 0, frame = 0
 3404              		@ frame_needed = 0, uses_anonymous_args = 0
 3405              		@ link register save eliminated.
 3406 0000 0023     		movs	r3, #0
 3407 0002 0121     		movs	r1, #1
 3408 0004 80F82036 		strb	r3, [r0, #1568]
 3409 0008 2820     		movs	r0, #40
 3410 000a FFF7FEBF 		b	_ZN6IoPort12WriteDigitalEhb
 3411              		.size	_ZN8Platform10AtxPowerOnEv, .-_ZN8Platform10AtxPowerOnEv
 3412 000e 00BF     		.section	.text._ZN8Platform11AtxPowerOffEb,"ax",%progbits
 3413              		.align	1
 3414              		.p2align 2,,3
 3415              		.global	_ZN8Platform11AtxPowerOffEb
 3416              		.syntax unified
 3417              		.thumb
 3418              		.thumb_func
 3419              		.fpu softvfp
 3420              		.type	_ZN8Platform11AtxPowerOffEb, %function
ARM GAS  /tmp/cclDCdxf.s 			page 61


 3421              	_ZN8Platform11AtxPowerOffEb:
 3422              		@ args = 0, pretend = 0, frame = 0
 3423              		@ frame_needed = 0, uses_anonymous_args = 0
 3424              		@ link register save eliminated.
 3425 0000 80F82016 		strb	r1, [r0, #1568]
 3426 0004 09B9     		cbnz	r1, .L658
 3427 0006 FFF7FEBF 		b	_ZN8Platform11AtxPowerOffEb.part.22
 3428              	.L658:
 3429 000a 7047     		bx	lr
 3430              		.size	_ZN8Platform11AtxPowerOffEb, .-_ZN8Platform11AtxPowerOffEb
 3431              		.section	.text._ZN8Platform18SetPressureAdvanceEjf,"ax",%progbits
 3432              		.align	1
 3433              		.p2align 2,,3
 3434              		.global	_ZN8Platform18SetPressureAdvanceEjf
 3435              		.syntax unified
 3436              		.thumb
 3437              		.thumb_func
 3438              		.fpu softvfp
 3439              		.type	_ZN8Platform18SetPressureAdvanceEjf, %function
 3440              	_ZN8Platform18SetPressureAdvanceEjf:
 3441              		@ args = 0, pretend = 0, frame = 0
 3442              		@ frame_needed = 0, uses_anonymous_args = 0
 3443              		@ link register save eliminated.
 3444 0000 0529     		cmp	r1, #5
 3445 0002 9CBF     		itt	ls
 3446 0004 00EB8100 		addls	r0, r0, r1, lsl #2
 3447 0008 C0F86C21 		strls	r2, [r0, #364]	@ float
 3448 000c 7047     		bx	lr
 3449              		.size	_ZN8Platform18SetPressureAdvanceEjf, .-_ZN8Platform18SetPressureAdvanceEjf
 3450 000e 00BF     		.section	.text._ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_,"ax",%progbits
 3451              		.align	1
 3452              		.p2align 2,,3
 3453              		.global	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_
 3454              		.syntax unified
 3455              		.thumb
 3456              		.thumb_func
 3457              		.fpu softvfp
 3458              		.type	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_, %function
 3459              	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_:
 3460              		@ args = 4, pretend = 0, frame = 0
 3461              		@ frame_needed = 0, uses_anonymous_args = 0
 3462              		@ link register save eliminated.
 3463 0000 0529     		cmp	r1, #5
 3464 0002 0FD8     		bhi	.L664
 3465 0004 00EB8101 		add	r1, r0, r1, lsl #2
 3466 0008 10B4     		push	{r4}
 3467 000a D1F88441 		ldr	r4, [r1, #388]	@ float
 3468 000e 0120     		movs	r0, #1
 3469 0010 1460     		str	r4, [r2]	@ float
 3470 0012 D1F89C21 		ldr	r2, [r1, #412]	@ float
 3471 0016 1A60     		str	r2, [r3]	@ float
 3472 0018 D1F8B431 		ldr	r3, [r1, #436]	@ float
 3473 001c 019A     		ldr	r2, [sp, #4]
 3474 001e 10BC     		pop	{r4}
 3475 0020 1360     		str	r3, [r2]	@ float
 3476 0022 7047     		bx	lr
 3477              	.L664:
ARM GAS  /tmp/cclDCdxf.s 			page 62


 3478 0024 0020     		movs	r0, #0
 3479 0026 7047     		bx	lr
 3480              		.size	_ZNK8Platform24GetExtrusionCoefficientsEjRfS0_S0_, .-_ZNK8Platform24GetExtrusionCoefficients
 3481              		.section	.text._ZN8Platform21SetNonlinearExtrusionEjfff,"ax",%progbits
 3482              		.align	1
 3483              		.p2align 2,,3
 3484              		.global	_ZN8Platform21SetNonlinearExtrusionEjfff
 3485              		.syntax unified
 3486              		.thumb
 3487              		.thumb_func
 3488              		.fpu softvfp
 3489              		.type	_ZN8Platform21SetNonlinearExtrusionEjfff, %function
 3490              	_ZN8Platform21SetNonlinearExtrusionEjfff:
 3491              		@ args = 4, pretend = 0, frame = 0
 3492              		@ frame_needed = 0, uses_anonymous_args = 0
 3493 0000 0529     		cmp	r1, #5
 3494 0002 12D8     		bhi	.L674
 3495 0004 70B5     		push	{r4, r5, r6, lr}
 3496 0006 00EB8104 		add	r4, r0, r1, lsl #2
 3497 000a D4F8B401 		ldr	r0, [r4, #436]	@ float
 3498 000e 0021     		movs	r1, #0
 3499 0010 1D46     		mov	r5, r3
 3500 0012 1646     		mov	r6, r2
 3501 0014 FFF7FEFF 		bl	__aeabi_fcmpgt
 3502 0018 30B1     		cbz	r0, .L669
 3503 001a 049B     		ldr	r3, [sp, #16]	@ float
 3504 001c C4F88461 		str	r6, [r4, #388]	@ float
 3505 0020 C4F8B431 		str	r3, [r4, #436]	@ float
 3506 0024 C4F89C51 		str	r5, [r4, #412]	@ float
 3507              	.L669:
 3508 0028 70BD     		pop	{r4, r5, r6, pc}
 3509              	.L674:
 3510 002a 7047     		bx	lr
 3511              		.size	_ZN8Platform21SetNonlinearExtrusionEjfff, .-_ZN8Platform21SetNonlinearExtrusionEjfff
 3512              		.section	.text._ZNK8Platform11GetBaudRateEj,"ax",%progbits
 3513              		.align	1
 3514              		.p2align 2,,3
 3515              		.global	_ZNK8Platform11GetBaudRateEj
 3516              		.syntax unified
 3517              		.thumb
 3518              		.thumb_func
 3519              		.fpu softvfp
 3520              		.type	_ZNK8Platform11GetBaudRateEj, %function
 3521              	_ZNK8Platform11GetBaudRateEj:
 3522              		@ args = 0, pretend = 0, frame = 0
 3523              		@ frame_needed = 0, uses_anonymous_args = 0
 3524              		@ link register save eliminated.
 3525 0000 0129     		cmp	r1, #1
 3526 0002 9ABF     		itte	ls
 3527 0004 01F5A471 		addls	r1, r1, #328
 3528 0008 50F82100 		ldrls	r0, [r0, r1, lsl #2]
 3529 000c 0020     		movhi	r0, #0
 3530 000e 7047     		bx	lr
 3531              		.size	_ZNK8Platform11GetBaudRateEj, .-_ZNK8Platform11GetBaudRateEj
 3532              		.section	.text._ZNK8Platform18GetCommsPropertiesEj,"ax",%progbits
 3533              		.align	1
 3534              		.p2align 2,,3
ARM GAS  /tmp/cclDCdxf.s 			page 63


 3535              		.global	_ZNK8Platform18GetCommsPropertiesEj
 3536              		.syntax unified
 3537              		.thumb
 3538              		.thumb_func
 3539              		.fpu softvfp
 3540              		.type	_ZNK8Platform18GetCommsPropertiesEj, %function
 3541              	_ZNK8Platform18GetCommsPropertiesEj:
 3542              		@ args = 0, pretend = 0, frame = 0
 3543              		@ frame_needed = 0, uses_anonymous_args = 0
 3544              		@ link register save eliminated.
 3545 0000 0129     		cmp	r1, #1
 3546 0002 9ABF     		itte	ls
 3547 0004 0918     		addls	r1, r1, r0
 3548 0006 91F82805 		ldrbls	r0, [r1, #1320]	@ zero_extendqisi2
 3549 000a 0020     		movhi	r0, #0
 3550 000c 7047     		bx	lr
 3551              		.size	_ZNK8Platform18GetCommsPropertiesEj, .-_ZNK8Platform18GetCommsPropertiesEj
 3552 000e 00BF     		.section	.text._ZN8Platform12SetBoardTypeE9BoardType,"ax",%progbits
 3553              		.align	1
 3554              		.p2align 2,,3
 3555              		.global	_ZN8Platform12SetBoardTypeE9BoardType
 3556              		.syntax unified
 3557              		.thumb
 3558              		.thumb_func
 3559              		.fpu softvfp
 3560              		.type	_ZN8Platform12SetBoardTypeE9BoardType, %function
 3561              	_ZN8Platform12SetBoardTypeE9BoardType:
 3562              		@ args = 0, pretend = 0, frame = 0
 3563              		@ frame_needed = 0, uses_anonymous_args = 0
 3564 0000 31B9     		cbnz	r1, .L684
 3565 0002 0123     		movs	r3, #1
 3566 0004 80F8A730 		strb	r3, [r0, #167]
 3567 0008 90F8A830 		ldrb	r3, [r0, #168]	@ zero_extendqisi2
 3568 000c 33B9     		cbnz	r3, .L690
 3569              	.L683:
 3570 000e 7047     		bx	lr
 3571              	.L684:
 3572 0010 90F8A830 		ldrb	r3, [r0, #168]	@ zero_extendqisi2
 3573 0014 80F8A710 		strb	r1, [r0, #167]
 3574 0018 002B     		cmp	r3, #0
 3575 001a F8D0     		beq	.L683
 3576              	.L690:
 3577 001c 10B5     		push	{r4, lr}
 3578 001e 0446     		mov	r4, r0
 3579 0020 FFF7FEFF 		bl	_ZN8Platform10InitZProbeEv
 3580 0024 2046     		mov	r0, r4
 3581 0026 BDE81040 		pop	{r4, lr}
 3582 002a FFF7FEBF 		b	_ZN8Platform8InitFansEv
 3583              		.size	_ZN8Platform12SetBoardTypeE9BoardType, .-_ZN8Platform12SetBoardTypeE9BoardType
 3584 002e 00BF     		.section	.text._ZNK8Platform20GetElectronicsStringEv,"ax",%progbits
 3585              		.align	1
 3586              		.p2align 2,,3
 3587              		.global	_ZNK8Platform20GetElectronicsStringEv
 3588              		.syntax unified
 3589              		.thumb
 3590              		.thumb_func
 3591              		.fpu softvfp
ARM GAS  /tmp/cclDCdxf.s 			page 64


 3592              		.type	_ZNK8Platform20GetElectronicsStringEv, %function
 3593              	_ZNK8Platform20GetElectronicsStringEv:
 3594              		@ args = 0, pretend = 0, frame = 0
 3595              		@ frame_needed = 0, uses_anonymous_args = 0
 3596              		@ link register save eliminated.
 3597 0000 90F8A700 		ldrb	r0, [r0, #167]	@ zero_extendqisi2
 3598 0004 034A     		ldr	r2, .L695
 3599 0006 044B     		ldr	r3, .L695+4
 3600 0008 0128     		cmp	r0, #1
 3601 000a 0CBF     		ite	eq
 3602 000c 1046     		moveq	r0, r2
 3603 000e 1846     		movne	r0, r3
 3604 0010 7047     		bx	lr
 3605              	.L696:
 3606 0012 00BF     		.align	2
 3607              	.L695:
 3608 0014 00000000 		.word	.LC22
 3609 0018 0C000000 		.word	.LC23
 3610              		.size	_ZNK8Platform20GetElectronicsStringEv, .-_ZNK8Platform20GetElectronicsStringEv
 3611              		.section	.text._ZNK8Platform14GetBoardStringEv,"ax",%progbits
 3612              		.align	1
 3613              		.p2align 2,,3
 3614              		.global	_ZNK8Platform14GetBoardStringEv
 3615              		.syntax unified
 3616              		.thumb
 3617              		.thumb_func
 3618              		.fpu softvfp
 3619              		.type	_ZNK8Platform14GetBoardStringEv, %function
 3620              	_ZNK8Platform14GetBoardStringEv:
 3621              		@ args = 0, pretend = 0, frame = 0
 3622              		@ frame_needed = 0, uses_anonymous_args = 0
 3623              		@ link register save eliminated.
 3624 0000 90F8A700 		ldrb	r0, [r0, #167]	@ zero_extendqisi2
 3625 0004 034A     		ldr	r2, .L701
 3626 0006 044B     		ldr	r3, .L701+4
 3627 0008 0128     		cmp	r0, #1
 3628 000a 0CBF     		ite	eq
 3629 000c 1046     		moveq	r0, r2
 3630 000e 1846     		movne	r0, r3
 3631 0010 7047     		bx	lr
 3632              	.L702:
 3633 0012 00BF     		.align	2
 3634              	.L701:
 3635 0014 00000000 		.word	.LC24
 3636 0018 08000000 		.word	.LC25
 3637              		.size	_ZNK8Platform14GetBoardStringEv, .-_ZNK8Platform14GetBoardStringEv
 3638              		.section	.text._ZN8Platform14GetFirmwarePinEt9PinAccessRhRb,"ax",%progbits
 3639              		.align	1
 3640              		.p2align 2,,3
 3641              		.global	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb
 3642              		.syntax unified
 3643              		.thumb
 3644              		.thumb_func
 3645              		.fpu softvfp
 3646              		.type	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb, %function
 3647              	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb:
 3648              		@ args = 4, pretend = 0, frame = 0
ARM GAS  /tmp/cclDCdxf.s 			page 65


 3649              		@ frame_needed = 0, uses_anonymous_args = 0
 3650 0000 70B5     		push	{r4, r5, r6, lr}
 3651 0002 FF25     		movs	r5, #255
 3652 0004 0024     		movs	r4, #0
 3653 0006 049E     		ldr	r6, [sp, #16]
 3654 0008 0329     		cmp	r1, #3
 3655 000a 1D70     		strb	r5, [r3]
 3656 000c 3470     		strb	r4, [r6]
 3657 000e 1DDC     		bgt	.L704
 3658 0010 2E4C     		ldr	r4, .L729
 3659 0012 E468     		ldr	r4, [r4, #12]
 3660 0014 04EB8104 		add	r4, r4, r1, lsl #2
 3661 0018 646A     		ldr	r4, [r4, #36]
 3662 001a 94F84640 		ldrb	r4, [r4, #70]	@ zero_extendqisi2
 3663 001e 44B3     		cbz	r4, .L725
 3664              	.L723:
 3665 0020 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 3666              	.L706:
 3667 0022 FF2C     		cmp	r4, #255
 3668 0024 23D0     		beq	.L712
 3669 0026 012A     		cmp	r2, #1
 3670 0028 2BD0     		beq	.L726
 3671 002a 023A     		subs	r2, r2, #2
 3672 002c 012A     		cmp	r2, #1
 3673 002e 37D9     		bls	.L727
 3674 0030 4518     		adds	r5, r0, r1
 3675              	.L724:
 3676 0032 0126     		movs	r6, #1
 3677              	.L710:
 3678 0034 95F92136 		ldrsb	r3, [r5, #1569]
 3679 0038 B342     		cmp	r3, r6
 3680 003a 20D0     		beq	.L718
 3681 003c 2046     		mov	r0, r4
 3682 003e 3146     		mov	r1, r6
 3683 0040 FFF7FEFF 		bl	_ZN6IoPort10SetPinModeEh7PinMode
 3684 0044 85F82166 		strb	r6, [r5, #1569]
 3685 0048 0120     		movs	r0, #1
 3686 004a 70BD     		pop	{r4, r5, r6, pc}
 3687              	.L704:
 3688 004c A1F11404 		sub	r4, r1, #20
 3689 0050 A5B2     		uxth	r5, r4
 3690 0052 012D     		cmp	r5, #1
 3691 0054 29D9     		bls	.L728
 3692 0056 A1F12804 		sub	r4, r1, #40
 3693 005a 082C     		cmp	r4, #8
 3694 005c 16D8     		bhi	.L709
 3695 005e 002A     		cmp	r2, #0
 3696 0060 DED1     		bne	.L723
 3697 0062 4518     		adds	r5, r0, r1
 3698 0064 95F8A340 		ldrb	r4, [r5, #163]	@ zero_extendqisi2
 3699 0068 FF2C     		cmp	r4, #255
 3700 006a 1C70     		strb	r4, [r3]
 3701 006c E1D1     		bne	.L724
 3702              	.L712:
 3703 006e 0020     		movs	r0, #0
 3704 0070 70BD     		pop	{r4, r5, r6, pc}
 3705              	.L725:
ARM GAS  /tmp/cclDCdxf.s 			page 66


 3706 0072 4518     		adds	r5, r0, r1
 3707 0074 95F8B054 		ldrb	r5, [r5, #1200]	@ zero_extendqisi2
 3708 0078 1D70     		strb	r5, [r3]
 3709 007a 3470     		strb	r4, [r6]
 3710 007c D0E7     		b	.L723
 3711              	.L718:
 3712 007e 0120     		movs	r0, #1
 3713 0080 70BD     		pop	{r4, r5, r6, pc}
 3714              	.L726:
 3715 0082 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 3716 0084 4518     		adds	r5, r0, r1
 3717 0086 DBB1     		cbz	r3, .L715
 3718 0088 0426     		movs	r6, #4
 3719 008a D3E7     		b	.L710
 3720              	.L709:
 3721 008c A1F13C04 		sub	r4, r1, #60
 3722 0090 072C     		cmp	r4, #7
 3723 0092 C5D8     		bhi	.L723
 3724 0094 0E4C     		ldr	r4, .L729+4
 3725 0096 0C44     		add	r4, r4, r1
 3726 0098 14F83C4C 		ldrb	r4, [r4, #-60]	@ zero_extendqisi2
 3727 009c 1C70     		strb	r4, [r3]
 3728 009e C0E7     		b	.L706
 3729              	.L727:
 3730 00a0 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 3731 00a2 7BB1     		cbz	r3, .L717
 3732 00a4 4518     		adds	r5, r0, r1
 3733 00a6 0826     		movs	r6, #8
 3734 00a8 C4E7     		b	.L710
 3735              	.L728:
 3736 00aa 2C25     		movs	r5, #44
 3737 00ac 05FB0405 		mla	r5, r5, r4, r0
 3738 00b0 95F8E654 		ldrb	r5, [r5, #1254]	@ zero_extendqisi2
 3739 00b4 FF2D     		cmp	r5, #255
 3740 00b6 B3D1     		bne	.L723
 3741 00b8 064D     		ldr	r5, .L729+8
 3742 00ba 2C5D     		ldrb	r4, [r5, r4]	@ zero_extendqisi2
 3743 00bc 1C70     		strb	r4, [r3]
 3744 00be B0E7     		b	.L706
 3745              	.L715:
 3746 00c0 0326     		movs	r6, #3
 3747 00c2 B7E7     		b	.L710
 3748              	.L717:
 3749 00c4 0726     		movs	r6, #7
 3750 00c6 4518     		adds	r5, r0, r1
 3751 00c8 B4E7     		b	.L710
 3752              	.L730:
 3753 00ca 00BF     		.align	2
 3754              	.L729:
 3755 00cc 00000000 		.word	reprap
 3756 00d0 00000000 		.word	.LANCHOR7
 3757 00d4 00000000 		.word	.LANCHOR6
 3758              		.size	_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb, .-_ZN8Platform14GetFirmwarePinEt9PinAccessRhRb
 3759              		.section	.text._ZN8Platform28SetExtrusionAncilliaryPwmPinEtb,"ax",%progbits
 3760              		.align	1
 3761              		.p2align 2,,3
 3762              		.global	_ZN8Platform28SetExtrusionAncilliaryPwmPinEtb
ARM GAS  /tmp/cclDCdxf.s 			page 67


 3763              		.syntax unified
 3764              		.thumb
 3765              		.thumb_func
 3766              		.fpu softvfp
 3767              		.type	_ZN8Platform28SetExtrusionAncilliaryPwmPinEtb, %function
 3768              	_ZN8Platform28SetExtrusionAncilliaryPwmPinEtb:
 3769              		@ args = 0, pretend = 0, frame = 0
 3770              		@ frame_needed = 0, uses_anonymous_args = 0
 3771              		@ link register save eliminated.
 3772 0000 1346     		mov	r3, r2
 3773 0002 00F21460 		addw	r0, r0, #1556
 3774 0006 0222     		movs	r2, #2
 3775 0008 FFF7FEBF 		b	_ZN6IoPort3SetEt9PinAccessb
 3776              		.size	_ZN8Platform28SetExtrusionAncilliaryPwmPinEtb, .-_ZN8Platform28SetExtrusionAncilliaryPwmPinE
 3777              		.section	.text._ZN8Platform11SetLaserPwmEf,"ax",%progbits
 3778              		.align	1
 3779              		.p2align 2,,3
 3780              		.global	_ZN8Platform11SetLaserPwmEf
 3781              		.syntax unified
 3782              		.thumb
 3783              		.thumb_func
 3784              		.fpu softvfp
 3785              		.type	_ZN8Platform11SetLaserPwmEf, %function
 3786              	_ZN8Platform11SetLaserPwmEf:
 3787              		@ args = 0, pretend = 0, frame = 0
 3788              		@ frame_needed = 0, uses_anonymous_args = 0
 3789              		@ link register save eliminated.
 3790 0000 00F21A60 		addw	r0, r0, #1562
 3791 0004 FFF7FEBF 		b	_ZNK7PwmPort11WriteAnalogEf
 3792              		.size	_ZN8Platform11SetLaserPwmEf, .-_ZN8Platform11SetLaserPwmEf
 3793              		.section	.text._ZN8Platform11SetLaserPinEtb,"ax",%progbits
 3794              		.align	1
 3795              		.p2align 2,,3
 3796              		.global	_ZN8Platform11SetLaserPinEtb
 3797              		.syntax unified
 3798              		.thumb
 3799              		.thumb_func
 3800              		.fpu softvfp
 3801              		.type	_ZN8Platform11SetLaserPinEtb, %function
 3802              	_ZN8Platform11SetLaserPinEtb:
 3803              		@ args = 0, pretend = 0, frame = 0
 3804              		@ frame_needed = 0, uses_anonymous_args = 0
 3805              		@ link register save eliminated.
 3806 0000 1346     		mov	r3, r2
 3807 0002 00F21A60 		addw	r0, r0, #1562
 3808 0006 0222     		movs	r2, #2
 3809 0008 FFF7FEBF 		b	_ZN6IoPort3SetEt9PinAccessb
 3810              		.size	_ZN8Platform11SetLaserPinEtb, .-_ZN8Platform11SetLaserPinEtb
 3811              		.section	.text._ZN8Platform20SetLaserPwmFrequencyEf,"ax",%progbits
 3812              		.align	1
 3813              		.p2align 2,,3
 3814              		.global	_ZN8Platform20SetLaserPwmFrequencyEf
 3815              		.syntax unified
 3816              		.thumb
 3817              		.thumb_func
 3818              		.fpu softvfp
 3819              		.type	_ZN8Platform20SetLaserPwmFrequencyEf, %function
ARM GAS  /tmp/cclDCdxf.s 			page 68


 3820              	_ZN8Platform20SetLaserPwmFrequencyEf:
 3821              		@ args = 0, pretend = 0, frame = 0
 3822              		@ frame_needed = 0, uses_anonymous_args = 0
 3823              		@ link register save eliminated.
 3824 0000 00F21A60 		addw	r0, r0, #1562
 3825 0004 FFF7FEBF 		b	_ZN7PwmPort12SetFrequencyEf
 3826              		.size	_ZN8Platform20SetLaserPwmFrequencyEf, .-_ZN8Platform20SetLaserPwmFrequencyEf
 3827              		.section	.text._ZNK8Platform13GetEndstopPinEi,"ax",%progbits
 3828              		.align	1
 3829              		.p2align 2,,3
 3830              		.global	_ZNK8Platform13GetEndstopPinEi
 3831              		.syntax unified
 3832              		.thumb
 3833              		.thumb_func
 3834              		.fpu softvfp
 3835              		.type	_ZNK8Platform13GetEndstopPinEi, %function
 3836              	_ZNK8Platform13GetEndstopPinEi:
 3837              		@ args = 0, pretend = 0, frame = 0
 3838              		@ frame_needed = 0, uses_anonymous_args = 0
 3839              		@ link register save eliminated.
 3840 0000 0829     		cmp	r1, #8
 3841 0002 9ABF     		itte	ls
 3842 0004 0918     		addls	r1, r1, r0
 3843 0006 91F8CB00 		ldrbls	r0, [r1, #203]	@ zero_extendqisi2
 3844 000a FF20     		movhi	r0, #255
 3845 000c 7047     		bx	lr
 3846              		.size	_ZNK8Platform13GetEndstopPinEi, .-_ZNK8Platform13GetEndstopPinEi
 3847 000e 00BF     		.section	.text._ZN8Platform14SetAxisMaximumEjfb,"ax",%progbits
 3848              		.align	1
 3849              		.p2align 2,,3
 3850              		.global	_ZN8Platform14SetAxisMaximumEjfb
 3851              		.syntax unified
 3852              		.thumb
 3853              		.thumb_func
 3854              		.fpu softvfp
 3855              		.type	_ZN8Platform14SetAxisMaximumEjfb, %function
 3856              	_ZN8Platform14SetAxisMaximumEjfb:
 3857              		@ args = 0, pretend = 0, frame = 0
 3858              		@ frame_needed = 0, uses_anonymous_args = 0
 3859              		@ link register save eliminated.
 3860 0000 10B4     		push	{r4}
 3861 0002 00EB8104 		add	r4, r0, r1, lsl #2
 3862 0006 C4F84424 		str	r2, [r4, #1092]	@ float
 3863 000a 3BB1     		cbz	r3, .L738
 3864 000c 0122     		movs	r2, #1
 3865 000e D0F87834 		ldr	r3, [r0, #1144]
 3866 0012 02FA01F1 		lsl	r1, r2, r1
 3867 0016 0B43     		orrs	r3, r3, r1
 3868 0018 C0F87834 		str	r3, [r0, #1144]
 3869              	.L738:
 3870 001c 10BC     		pop	{r4}
 3871 001e 7047     		bx	lr
 3872              		.size	_ZN8Platform14SetAxisMaximumEjfb, .-_ZN8Platform14SetAxisMaximumEjfb
 3873              		.section	.text._ZN8Platform14SetAxisMinimumEjfb,"ax",%progbits
 3874              		.align	1
 3875              		.p2align 2,,3
 3876              		.global	_ZN8Platform14SetAxisMinimumEjfb
ARM GAS  /tmp/cclDCdxf.s 			page 69


 3877              		.syntax unified
 3878              		.thumb
 3879              		.thumb_func
 3880              		.fpu softvfp
 3881              		.type	_ZN8Platform14SetAxisMinimumEjfb, %function
 3882              	_ZN8Platform14SetAxisMinimumEjfb:
 3883              		@ args = 0, pretend = 0, frame = 0
 3884              		@ frame_needed = 0, uses_anonymous_args = 0
 3885              		@ link register save eliminated.
 3886 0000 10B4     		push	{r4}
 3887 0002 00EB8104 		add	r4, r0, r1, lsl #2
 3888 0006 C4F85C24 		str	r2, [r4, #1116]	@ float
 3889 000a 3BB1     		cbz	r3, .L744
 3890 000c 0122     		movs	r2, #1
 3891 000e D0F87434 		ldr	r3, [r0, #1140]
 3892 0012 02FA01F1 		lsl	r1, r2, r1
 3893 0016 0B43     		orrs	r3, r3, r1
 3894 0018 C0F87434 		str	r3, [r0, #1140]
 3895              	.L744:
 3896 001c 10BC     		pop	{r4}
 3897 001e 7047     		bx	lr
 3898              		.size	_ZN8Platform14SetAxisMinimumEjfb, .-_ZN8Platform14SetAxisMinimumEjfb
 3899              		.section	.text._ZNK8Platform13IsDateTimeSetEv,"ax",%progbits
 3900              		.align	1
 3901              		.p2align 2,,3
 3902              		.global	_ZNK8Platform13IsDateTimeSetEv
 3903              		.syntax unified
 3904              		.thumb
 3905              		.thumb_func
 3906              		.fpu softvfp
 3907              		.type	_ZNK8Platform13IsDateTimeSetEv, %function
 3908              	_ZNK8Platform13IsDateTimeSetEv:
 3909              		@ args = 0, pretend = 0, frame = 0
 3910              		@ frame_needed = 0, uses_anonymous_args = 0
 3911              		@ link register save eliminated.
 3912 0000 D0F88805 		ldr	r0, [r0, #1416]
 3913 0004 0030     		adds	r0, r0, #0
 3914 0006 18BF     		it	ne
 3915 0008 0120     		movne	r0, #1
 3916 000a 7047     		bx	lr
 3917              		.size	_ZNK8Platform13IsDateTimeSetEv, .-_ZNK8Platform13IsDateTimeSetEv
 3918              		.section	.text._ZNK8Platform11GetDateTimeEv,"ax",%progbits
 3919              		.align	1
 3920              		.p2align 2,,3
 3921              		.global	_ZNK8Platform11GetDateTimeEv
 3922              		.syntax unified
 3923              		.thumb
 3924              		.thumb_func
 3925              		.fpu softvfp
 3926              		.type	_ZNK8Platform11GetDateTimeEv, %function
 3927              	_ZNK8Platform11GetDateTimeEv:
 3928              		@ args = 0, pretend = 0, frame = 0
 3929              		@ frame_needed = 0, uses_anonymous_args = 0
 3930              		@ link register save eliminated.
 3931 0000 D0F88805 		ldr	r0, [r0, #1416]
 3932 0004 7047     		bx	lr
 3933              		.size	_ZNK8Platform11GetDateTimeEv, .-_ZNK8Platform11GetDateTimeEv
ARM GAS  /tmp/cclDCdxf.s 			page 70


 3934 0006 00BF     		.section	.text._ZN8Platform7InitI2cEv,"ax",%progbits
 3935              		.align	1
 3936              		.p2align 2,,3
 3937              		.global	_ZN8Platform7InitI2cEv
 3938              		.syntax unified
 3939              		.thumb
 3940              		.thumb_func
 3941              		.fpu softvfp
 3942              		.type	_ZN8Platform7InitI2cEv, %function
 3943              	_ZN8Platform7InitI2cEv:
 3944              		@ args = 0, pretend = 0, frame = 0
 3945              		@ frame_needed = 0, uses_anonymous_args = 0
 3946              		@ link register save eliminated.
 3947 0000 7047     		bx	lr
 3948              		.size	_ZN8Platform7InitI2cEv, .-_ZN8Platform7InitI2cEv
 3949 0002 00BF     		.section	.text.hot.TC3_Handler,"ax",%progbits
 3950              		.align	1
 3951              		.p2align 2,,3
 3952              		.global	TC3_Handler
 3953              		.syntax unified
 3954              		.thumb
 3955              		.thumb_func
 3956              		.fpu softvfp
 3957              		.type	TC3_Handler, %function
 3958              	TC3_Handler:
 3959              		@ args = 0, pretend = 0, frame = 0
 3960              		@ frame_needed = 0, uses_anonymous_args = 0
 3961 0000 38B5     		push	{r3, r4, r5, lr}
 3962 0002 0D4B     		ldr	r3, .L768
 3963 0004 1D6A     		ldr	r5, [r3, #32]
 3964 0006 DA6A     		ldr	r2, [r3, #44]
 3965 0008 1540     		ands	r5, r5, r2
 3966 000a 6A07     		lsls	r2, r5, #29
 3967 000c 0AD5     		bpl	.L757
 3968 000e 0421     		movs	r1, #4
 3969 0010 0A4A     		ldr	r2, .L768+4
 3970 0012 9962     		str	r1, [r3, #40]
 3971 0014 9468     		ldr	r4, [r2, #8]
 3972 0016 2368     		ldr	r3, [r4]
 3973 0018 23B1     		cbz	r3, .L757
 3974              	.L761:
 3975 001a 2068     		ldr	r0, [r4]
 3976 001c FFF7FEFF 		bl	_ZN3DDA4StepEv
 3977 0020 0028     		cmp	r0, #0
 3978 0022 FAD1     		bne	.L761
 3979              	.L757:
 3980 0024 2B07     		lsls	r3, r5, #28
 3981 0026 00D4     		bmi	.L767
 3982 0028 38BD     		pop	{r3, r4, r5, pc}
 3983              	.L767:
 3984 002a 0822     		movs	r2, #8
 3985 002c 024B     		ldr	r3, .L768
 3986 002e 9A62     		str	r2, [r3, #40]
 3987 0030 BDE83840 		pop	{r3, r4, r5, lr}
 3988 0034 FFF7FEBF 		b	_ZN9SoftTimer9InterruptEv
 3989              	.L769:
 3990              		.align	2
ARM GAS  /tmp/cclDCdxf.s 			page 71


 3991              	.L768:
 3992 0038 00400840 		.word	1074282496
 3993 003c 00000000 		.word	reprap
 3994              		.size	TC3_Handler, .-TC3_Handler
 3995              		.section	.text.hot._ZN8Platform21ScheduleStepInterruptEm,"ax",%progbits
 3996              		.align	1
 3997              		.p2align 2,,3
 3998              		.global	_ZN8Platform21ScheduleStepInterruptEm
 3999              		.syntax unified
 4000              		.thumb
 4001              		.thumb_func
 4002              		.fpu softvfp
 4003              		.type	_ZN8Platform21ScheduleStepInterruptEm, %function
 4004              	_ZN8Platform21ScheduleStepInterruptEm:
 4005              		@ args = 0, pretend = 0, frame = 0
 4006              		@ frame_needed = 0, uses_anonymous_args = 0
 4007              		@ link register save eliminated.
 4008 0000 30B4     		push	{r4, r5}
 4009              		.syntax unified
 4010              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 4011 0002 EFF31085 		MRS r5, primask
 4012              	@ 0 "" 2
 4013              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 4014 0006 72B6     		cpsid i
 4015              	@ 0 "" 2
 4016              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 4017 0008 BFF35F8F 		dmb
 4018              	@ 0 "" 2
 4019              		.thumb
 4020              		.syntax unified
 4021 000c 0023     		movs	r3, #0
 4022 000e 104C     		ldr	r4, .L778
 4023 0010 1049     		ldr	r1, .L778+4
 4024 0012 2370     		strb	r3, [r4]
 4025 0014 0A69     		ldr	r2, [r1, #16]
 4026 0016 821A     		subs	r2, r0, r2
 4027 0018 032A     		cmp	r2, #3
 4028 001a 03DC     		bgt	.L771
 4029 001c 0120     		movs	r0, #1
 4030 001e 85B1     		cbz	r5, .L776
 4031 0020 30BC     		pop	{r4, r5}
 4032 0022 7047     		bx	lr
 4033              	.L771:
 4034 0024 0422     		movs	r2, #4
 4035 0026 4861     		str	r0, [r1, #20]
 4036 0028 4A62     		str	r2, [r1, #36]
 4037 002a 15B1     		cbz	r5, .L777
 4038 002c 30BC     		pop	{r4, r5}
 4039 002e 1846     		mov	r0, r3
 4040 0030 7047     		bx	lr
 4041              	.L777:
 4042 0032 0123     		movs	r3, #1
 4043 0034 2370     		strb	r3, [r4]
 4044              		.syntax unified
 4045              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 4046 0036 BFF35F8F 		dmb
 4047              	@ 0 "" 2
ARM GAS  /tmp/cclDCdxf.s 			page 72


 4048              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 4049 003a 62B6     		cpsie i
 4050              	@ 0 "" 2
 4051              		.thumb
 4052              		.syntax unified
 4053 003c 2846     		mov	r0, r5
 4054 003e 30BC     		pop	{r4, r5}
 4055 0040 7047     		bx	lr
 4056              	.L776:
 4057 0042 2070     		strb	r0, [r4]
 4058              		.syntax unified
 4059              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 4060 0044 BFF35F8F 		dmb
 4061              	@ 0 "" 2
 4062              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 4063 0048 62B6     		cpsie i
 4064              	@ 0 "" 2
 4065              		.thumb
 4066              		.syntax unified
 4067 004a 30BC     		pop	{r4, r5}
 4068 004c 7047     		bx	lr
 4069              	.L779:
 4070 004e 00BF     		.align	2
 4071              	.L778:
 4072 0050 00000000 		.word	g_interrupt_enabled
 4073 0054 00400840 		.word	1074282496
 4074              		.size	_ZN8Platform21ScheduleStepInterruptEm, .-_ZN8Platform21ScheduleStepInterruptEm
 4075              		.section	.text._ZN8Platform20DisableStepInterruptEv,"ax",%progbits
 4076              		.align	1
 4077              		.p2align 2,,3
 4078              		.global	_ZN8Platform20DisableStepInterruptEv
 4079              		.syntax unified
 4080              		.thumb
 4081              		.thumb_func
 4082              		.fpu softvfp
 4083              		.type	_ZN8Platform20DisableStepInterruptEv, %function
 4084              	_ZN8Platform20DisableStepInterruptEv:
 4085              		@ args = 0, pretend = 0, frame = 0
 4086              		@ frame_needed = 0, uses_anonymous_args = 0
 4087              		@ link register save eliminated.
 4088 0000 0422     		movs	r2, #4
 4089 0002 014B     		ldr	r3, .L781
 4090 0004 9A62     		str	r2, [r3, #40]
 4091 0006 7047     		bx	lr
 4092              	.L782:
 4093              		.align	2
 4094              	.L781:
 4095 0008 00400840 		.word	1074282496
 4096              		.size	_ZN8Platform20DisableStepInterruptEv, .-_ZN8Platform20DisableStepInterruptEv
 4097              		.section	.text._ZN8Platform26ScheduleSoftTimerInterruptEm,"ax",%progbits
 4098              		.align	1
 4099              		.p2align 2,,3
 4100              		.global	_ZN8Platform26ScheduleSoftTimerInterruptEm
 4101              		.syntax unified
 4102              		.thumb
 4103              		.thumb_func
 4104              		.fpu softvfp
ARM GAS  /tmp/cclDCdxf.s 			page 73


 4105              		.type	_ZN8Platform26ScheduleSoftTimerInterruptEm, %function
 4106              	_ZN8Platform26ScheduleSoftTimerInterruptEm:
 4107              		@ args = 0, pretend = 0, frame = 0
 4108              		@ frame_needed = 0, uses_anonymous_args = 0
 4109              		@ link register save eliminated.
 4110 0000 30B4     		push	{r4, r5}
 4111              		.syntax unified
 4112              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 4113 0002 EFF31085 		MRS r5, primask
 4114              	@ 0 "" 2
 4115              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 4116 0006 72B6     		cpsid i
 4117              	@ 0 "" 2
 4118              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 4119 0008 BFF35F8F 		dmb
 4120              	@ 0 "" 2
 4121              		.thumb
 4122              		.syntax unified
 4123 000c 0023     		movs	r3, #0
 4124 000e 104C     		ldr	r4, .L791
 4125 0010 1049     		ldr	r1, .L791+4
 4126 0012 2370     		strb	r3, [r4]
 4127 0014 0A69     		ldr	r2, [r1, #16]
 4128 0016 821A     		subs	r2, r0, r2
 4129 0018 032A     		cmp	r2, #3
 4130 001a 03DC     		bgt	.L784
 4131 001c 0120     		movs	r0, #1
 4132 001e 85B1     		cbz	r5, .L789
 4133 0020 30BC     		pop	{r4, r5}
 4134 0022 7047     		bx	lr
 4135              	.L784:
 4136 0024 0822     		movs	r2, #8
 4137 0026 8861     		str	r0, [r1, #24]
 4138 0028 4A62     		str	r2, [r1, #36]
 4139 002a 15B1     		cbz	r5, .L790
 4140 002c 30BC     		pop	{r4, r5}
 4141 002e 1846     		mov	r0, r3
 4142 0030 7047     		bx	lr
 4143              	.L790:
 4144 0032 0123     		movs	r3, #1
 4145 0034 2370     		strb	r3, [r4]
 4146              		.syntax unified
 4147              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 4148 0036 BFF35F8F 		dmb
 4149              	@ 0 "" 2
 4150              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 4151 003a 62B6     		cpsie i
 4152              	@ 0 "" 2
 4153              		.thumb
 4154              		.syntax unified
 4155 003c 2846     		mov	r0, r5
 4156 003e 30BC     		pop	{r4, r5}
 4157 0040 7047     		bx	lr
 4158              	.L789:
 4159 0042 2070     		strb	r0, [r4]
 4160              		.syntax unified
 4161              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
ARM GAS  /tmp/cclDCdxf.s 			page 74


 4162 0044 BFF35F8F 		dmb
 4163              	@ 0 "" 2
 4164              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 4165 0048 62B6     		cpsie i
 4166              	@ 0 "" 2
 4167              		.thumb
 4168              		.syntax unified
 4169 004a 30BC     		pop	{r4, r5}
 4170 004c 7047     		bx	lr
 4171              	.L792:
 4172 004e 00BF     		.align	2
 4173              	.L791:
 4174 0050 00000000 		.word	g_interrupt_enabled
 4175 0054 00400840 		.word	1074282496
 4176              		.size	_ZN8Platform26ScheduleSoftTimerInterruptEm, .-_ZN8Platform26ScheduleSoftTimerInterruptEm
 4177              		.section	.text._ZN8Platform25DisableSoftTimerInterruptEv,"ax",%progbits
 4178              		.align	1
 4179              		.p2align 2,,3
 4180              		.global	_ZN8Platform25DisableSoftTimerInterruptEv
 4181              		.syntax unified
 4182              		.thumb
 4183              		.thumb_func
 4184              		.fpu softvfp
 4185              		.type	_ZN8Platform25DisableSoftTimerInterruptEv, %function
 4186              	_ZN8Platform25DisableSoftTimerInterruptEv:
 4187              		@ args = 0, pretend = 0, frame = 0
 4188              		@ frame_needed = 0, uses_anonymous_args = 0
 4189              		@ link register save eliminated.
 4190 0000 0822     		movs	r2, #8
 4191 0002 014B     		ldr	r3, .L794
 4192 0004 9A62     		str	r2, [r3, #40]
 4193 0006 7047     		bx	lr
 4194              	.L795:
 4195              		.align	2
 4196              	.L794:
 4197 0008 00400840 		.word	1074282496
 4198              		.size	_ZN8Platform25DisableSoftTimerInterruptEv, .-_ZN8Platform25DisableSoftTimerInterruptEv
 4199              		.section	.text.hot._ZN8Platform4TickEv,"ax",%progbits
 4200              		.align	1
 4201              		.p2align 2,,3
 4202              		.global	_ZN8Platform4TickEv
 4203              		.syntax unified
 4204              		.thumb
 4205              		.thumb_func
 4206              		.fpu softvfp
 4207              		.type	_ZN8Platform4TickEv, %function
 4208              	_ZN8Platform4TickEv:
 4209              		@ args = 0, pretend = 0, frame = 0
 4210              		@ frame_needed = 0, uses_anonymous_args = 0
 4211 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 4212 0002 90F87135 		ldrb	r3, [r0, #1393]	@ zero_extendqisi2
 4213 0006 0446     		mov	r4, r0
 4214 0008 013B     		subs	r3, r3, #1
 4215 000a 032B     		cmp	r3, #3
 4216 000c 00F2A180 		bhi	.L797
 4217 0010 DFE803F0 		tbb	[pc, r3]
 4218              	.L799:
ARM GAS  /tmp/cclDCdxf.s 			page 75


 4219 0014 24       		.byte	(.L798-.L799)/2
 4220 0015 13       		.byte	(.L800-.L799)/2
 4221 0016 24       		.byte	(.L798-.L799)/2
 4222 0017 02       		.byte	(.L801-.L799)/2
 4223              		.p2align 1
 4224              	.L801:
 4225 0018 90F89420 		ldrb	r2, [r0, #148]	@ zero_extendqisi2
 4226 001c 531E     		subs	r3, r2, #1
 4227 001e 082B     		cmp	r3, #8
 4228 0020 00F28D81 		bhi	.L855
 4229 0024 DFE813F0 		tbh	[pc, r3, lsl #1]
 4230              	.L841:
 4231 0028 EB00     		.2byte	(.L840-.L841)/2
 4232 002a EB00     		.2byte	(.L840-.L841)/2
 4233 002c EB00     		.2byte	(.L840-.L841)/2
 4234 002e 0C01     		.2byte	(.L842-.L841)/2
 4235 0030 1601     		.2byte	(.L843-.L841)/2
 4236 0032 4401     		.2byte	(.L844-.L841)/2
 4237 0034 4B01     		.2byte	(.L845-.L841)/2
 4238 0036 1601     		.2byte	(.L843-.L841)/2
 4239 0038 1601     		.2byte	(.L843-.L841)/2
 4240              		.p2align 1
 4241              	.L800:
 4242 003a 90F89450 		ldrb	r5, [r0, #148]	@ zero_extendqisi2
 4243 003e 6B1E     		subs	r3, r5, #1
 4244 0040 082B     		cmp	r3, #8
 4245 0042 00F28081 		bhi	.L854
 4246 0046 DFE813F0 		tbh	[pc, r3, lsl #1]
 4247              	.L826:
 4248 004a 0C01     		.2byte	(.L825-.L826)/2
 4249 004c 0C01     		.2byte	(.L825-.L826)/2
 4250 004e 0C01     		.2byte	(.L825-.L826)/2
 4251 0050 1801     		.2byte	(.L827-.L826)/2
 4252 0052 2B01     		.2byte	(.L828-.L826)/2
 4253 0054 5200     		.2byte	(.L829-.L826)/2
 4254 0056 2301     		.2byte	(.L830-.L826)/2
 4255 0058 2B01     		.2byte	(.L828-.L826)/2
 4256 005a 2B01     		.2byte	(.L828-.L826)/2
 4257              		.p2align 1
 4258              	.L798:
 4259 005c D0F87455 		ldr	r5, [r0, #1396]
 4260 0060 2626     		movs	r6, #38
 4261 0062 4319     		adds	r3, r0, r5
 4262 0064 93F96C05 		ldrsb	r0, [r3, #1388]
 4263 0068 FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 4264 006c 4C23     		movs	r3, #76
 4265 006e 03FB0543 		mla	r3, r3, r5, r4
 4266 0072 D3F85813 		ldr	r1, [r3, #856]
 4267 0076 D3F85423 		ldr	r2, [r3, #852]
 4268 007a 06FB0525 		mla	r5, r6, r5, r2
 4269 007e 04EB4505 		add	r5, r4, r5, lsl #1
 4270 0082 B5F81463 		ldrh	r6, [r5, #788]
 4271 0086 0132     		adds	r2, r2, #1
 4272 0088 891B     		subs	r1, r1, r6
 4273 008a 0144     		add	r1, r1, r0
 4274 008c 202A     		cmp	r2, #32
 4275 008e C3F85813 		str	r1, [r3, #856]
ARM GAS  /tmp/cclDCdxf.s 			page 76


 4276 0092 A5F81403 		strh	r0, [r5, #788]	@ movhi
 4277 0096 C3F85423 		str	r2, [r3, #852]
 4278 009a 00F08680 		beq	.L863
 4279              	.L803:
 4280 009e 0122     		movs	r2, #1
 4281 00a0 D4F87435 		ldr	r3, [r4, #1396]
 4282 00a4 D4F8B814 		ldr	r1, [r4, #1208]
 4283 00a8 9A40     		lsls	r2, r2, r3
 4284 00aa 0A42     		tst	r2, r1
 4285 00ac 5ED1     		bne	.L864
 4286              	.L804:
 4287 00ae 0133     		adds	r3, r3, #1
 4288 00b0 042B     		cmp	r3, #4
 4289 00b2 08BF     		it	eq
 4290 00b4 0023     		moveq	r3, #0
 4291 00b6 C4F87435 		str	r3, [r4, #1396]
 4292 00ba 94F89430 		ldrb	r3, [r4, #148]	@ zero_extendqisi2
 4293 00be 022B     		cmp	r3, #2
 4294 00c0 3CD0     		beq	.L838
 4295 00c2 94F87125 		ldrb	r2, [r4, #1393]	@ zero_extendqisi2
 4296 00c6 013B     		subs	r3, r3, #1
 4297 00c8 012A     		cmp	r2, #1
 4298 00ca 0CBF     		ite	eq
 4299 00cc 04F53776 		addeq	r6, r4, #732
 4300 00d0 04F53E76 		addne	r6, r4, #760
 4301 00d4 082B     		cmp	r3, #8
 4302 00d6 76D8     		bhi	.L853
 4303 00d8 DFE813F0 		tbh	[pc, r3, lsl #1]
 4304              	.L814:
 4305 00dc 0201     		.2byte	(.L813-.L814)/2
 4306 00de 0201     		.2byte	(.L813-.L814)/2
 4307 00e0 0201     		.2byte	(.L813-.L814)/2
 4308 00e2 6E00     		.2byte	(.L815-.L814)/2
 4309 00e4 0C01     		.2byte	(.L816-.L814)/2
 4310 00e6 1401     		.2byte	(.L817-.L814)/2
 4311 00e8 F800     		.2byte	(.L818-.L814)/2
 4312 00ea 0C01     		.2byte	(.L816-.L814)/2
 4313 00ec 0C01     		.2byte	(.L816-.L814)/2
 4314              		.p2align 1
 4315              	.L829:
 4316 00ee 90F8CF00 		ldrb	r0, [r0, #207]	@ zero_extendqisi2
 4317 00f2 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 4318 00f6 0028     		cmp	r0, #0
 4319 00f8 00F0C680 		beq	.L835
 4320              	.L861:
 4321 00fc 4FF47A61 		mov	r1, #4000
 4322 0100 0846     		mov	r0, r1
 4323 0102 94F89450 		ldrb	r5, [r4, #148]	@ zero_extendqisi2
 4324              	.L824:
 4325 0106 D4F8EC22 		ldr	r2, [r4, #748]
 4326 010a D4F8F032 		ldr	r3, [r4, #752]
 4327 010e 04EB4206 		add	r6, r4, r2, lsl #1
 4328 0112 B6F8DC72 		ldrh	r7, [r6, #732]
 4329 0116 0132     		adds	r2, r2, #1
 4330 0118 DB1B     		subs	r3, r3, r7
 4331 011a 0B44     		add	r3, r3, r1
 4332 011c 082A     		cmp	r2, #8
ARM GAS  /tmp/cclDCdxf.s 			page 77


 4333 011e C4F8F032 		str	r3, [r4, #752]
 4334 0122 A6F8DC02 		strh	r0, [r6, #732]	@ movhi
 4335 0126 00F0F880 		beq	.L836
 4336 012a C4F8EC22 		str	r2, [r4, #748]
 4337              	.L837:
 4338 012e 022D     		cmp	r5, #2
 4339 0130 04D1     		bne	.L838
 4340 0132 0021     		movs	r1, #0
 4341 0134 94F8AD02 		ldrb	r0, [r4, #685]	@ zero_extendqisi2
 4342 0138 FFF7FEFF 		bl	digitalWrite
 4343              	.L838:
 4344 013c 94F87135 		ldrb	r3, [r4, #1393]	@ zero_extendqisi2
 4345 0140 4FF0FF30 		mov	r0, #-1
 4346 0144 0133     		adds	r3, r3, #1
 4347 0146 84F87135 		strb	r3, [r4, #1393]
 4348 014a BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 4349 014e FFF7FEBF 		b	_Z23AnalogInStartConversionm
 4350              	.L797:
 4351 0152 90F89420 		ldrb	r2, [r0, #148]	@ zero_extendqisi2
 4352              	.L802:
 4353 0156 022A     		cmp	r2, #2
 4354 0158 4BD0     		beq	.L865
 4355              	.L852:
 4356 015a 0123     		movs	r3, #1
 4357 015c 84F87135 		strb	r3, [r4, #1393]
 4358 0160 4FF0FF30 		mov	r0, #-1
 4359 0164 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 4360 0168 FFF7FEBF 		b	_Z23AnalogInStartConversionm
 4361              	.L864:
 4362 016c FFF7FEFF 		bl	millis
 4363 0170 774B     		ldr	r3, .L868
 4364 0172 0546     		mov	r5, r0
 4365 0174 D4F87415 		ldr	r1, [r4, #1396]
 4366 0178 D868     		ldr	r0, [r3, #12]
 4367 017a FFF7FEFF 		bl	_ZNK4Heat17GetLastSampleTimeEj
 4368 017e 41F28833 		movw	r3, #5000
 4369 0182 281A     		subs	r0, r5, r0
 4370 0184 9842     		cmp	r0, r3
 4371 0186 40F2C580 		bls	.L866
 4372 018a 0023     		movs	r3, #0
 4373 018c 0022     		movs	r2, #0
 4374 018e D4F87415 		ldr	r1, [r4, #1396]
 4375 0192 2046     		mov	r0, r4
 4376 0194 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjft
 4377 0198 D4F8AC20 		ldr	r2, [r4, #172]
 4378 019c D4F87435 		ldr	r3, [r4, #1396]
 4379 01a0 42F00102 		orr	r2, r2, #1
 4380 01a4 C4F8AC20 		str	r2, [r4, #172]
 4381 01a8 81E7     		b	.L804
 4382              	.L863:
 4383 01aa 0021     		movs	r1, #0
 4384 01ac 0122     		movs	r2, #1
 4385 01ae C3F85413 		str	r1, [r3, #852]
 4386 01b2 83F85C23 		strb	r2, [r3, #860]
 4387 01b6 72E7     		b	.L803
 4388              	.L815:
 4389 01b8 94F8CE00 		ldrb	r0, [r4, #206]	@ zero_extendqisi2
ARM GAS  /tmp/cclDCdxf.s 			page 78


 4390 01bc FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 4391 01c0 0028     		cmp	r0, #0
 4392 01c2 00F08A80 		beq	.L820
 4393              	.L853:
 4394 01c6 4FF47A61 		mov	r1, #4000
 4395 01ca 0846     		mov	r0, r1
 4396              	.L812:
 4397 01cc 3269     		ldr	r2, [r6, #16]
 4398 01ce 7369     		ldr	r3, [r6, #20]
 4399 01d0 36F81270 		ldrh	r7, [r6, r2, lsl #1]
 4400 01d4 551C     		adds	r5, r2, #1
 4401 01d6 DB1B     		subs	r3, r3, r7
 4402 01d8 0B44     		add	r3, r3, r1
 4403 01da 082D     		cmp	r5, #8
 4404 01dc 7361     		str	r3, [r6, #20]
 4405 01de 26F81200 		strh	r0, [r6, r2, lsl #1]	@ movhi
 4406 01e2 01D0     		beq	.L821
 4407 01e4 3561     		str	r5, [r6, #16]
 4408 01e6 A9E7     		b	.L838
 4409              	.L821:
 4410 01e8 0022     		movs	r2, #0
 4411 01ea 0123     		movs	r3, #1
 4412 01ec 3261     		str	r2, [r6, #16]
 4413 01ee 3376     		strb	r3, [r6, #24]
 4414 01f0 A4E7     		b	.L838
 4415              	.L865:
 4416 01f2 0121     		movs	r1, #1
 4417 01f4 94F8AD02 		ldrb	r0, [r4, #685]	@ zero_extendqisi2
 4418 01f8 FFF7FEFF 		bl	digitalWrite
 4419 01fc ADE7     		b	.L852
 4420              	.L840:
 4421 01fe 90F97005 		ldrsb	r0, [r0, #1392]
 4422 0202 FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 4423 0206 B0F57A6F 		cmp	r0, #4000
 4424 020a C0F29480 		blt	.L867
 4425              	.L862:
 4426 020e 4FF47A65 		mov	r5, #4000
 4427 0212 2846     		mov	r0, r5
 4428 0214 94F89420 		ldrb	r2, [r4, #148]	@ zero_extendqisi2
 4429              	.L839:
 4430 0218 D4F80813 		ldr	r1, [r4, #776]
 4431 021c D4F80C33 		ldr	r3, [r4, #780]
 4432 0220 04EB4106 		add	r6, r4, r1, lsl #1
 4433 0224 B6F8F872 		ldrh	r7, [r6, #760]
 4434 0228 0131     		adds	r1, r1, #1
 4435 022a DB1B     		subs	r3, r3, r7
 4436 022c 2B44     		add	r3, r3, r5
 4437 022e 0829     		cmp	r1, #8
 4438 0230 C4F80C33 		str	r3, [r4, #780]
 4439 0234 A6F8F802 		strh	r0, [r6, #760]	@ movhi
 4440 0238 76D0     		beq	.L851
 4441 023a C4F80813 		str	r1, [r4, #776]
 4442 023e 8AE7     		b	.L802
 4443              	.L842:
 4444 0240 90F8CE00 		ldrb	r0, [r0, #206]	@ zero_extendqisi2
 4445 0244 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 4446 0248 0028     		cmp	r0, #0
ARM GAS  /tmp/cclDCdxf.s 			page 79


 4447 024a E0D1     		bne	.L862
 4448              	.L850:
 4449 024c 0546     		mov	r5, r0
 4450 024e 94F89420 		ldrb	r2, [r4, #148]	@ zero_extendqisi2
 4451 0252 E1E7     		b	.L839
 4452              	.L843:
 4453 0254 90F8AC02 		ldrb	r0, [r0, #684]	@ zero_extendqisi2
 4454 0258 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 4455 025c 0028     		cmp	r0, #0
 4456 025e D6D1     		bne	.L862
 4457 0260 F4E7     		b	.L850
 4458              	.L825:
 4459 0262 90F97005 		ldrsb	r0, [r0, #1392]
 4460 0266 FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 4461 026a B0F57A6F 		cmp	r0, #4000
 4462 026e BFF645AF 		bge	.L861
 4463 0272 94F89450 		ldrb	r5, [r4, #148]	@ zero_extendqisi2
 4464 0276 0146     		mov	r1, r0
 4465 0278 45E7     		b	.L824
 4466              	.L827:
 4467 027a 90F8CE00 		ldrb	r0, [r0, #206]	@ zero_extendqisi2
 4468 027e FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 4469 0282 0028     		cmp	r0, #0
 4470 0284 7FF43AAF 		bne	.L861
 4471              	.L835:
 4472 0288 0146     		mov	r1, r0
 4473 028a 94F89450 		ldrb	r5, [r4, #148]	@ zero_extendqisi2
 4474 028e 3AE7     		b	.L824
 4475              	.L830:
 4476 0290 90F8CD00 		ldrb	r0, [r0, #205]	@ zero_extendqisi2
 4477 0294 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 4478 0298 0028     		cmp	r0, #0
 4479 029a 7FF42FAF 		bne	.L861
 4480 029e F3E7     		b	.L835
 4481              	.L828:
 4482 02a0 90F8AC02 		ldrb	r0, [r0, #684]	@ zero_extendqisi2
 4483 02a4 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 4484 02a8 0028     		cmp	r0, #0
 4485 02aa 7FF427AF 		bne	.L861
 4486 02ae EBE7     		b	.L835
 4487              	.L844:
 4488 02b0 90F8CF00 		ldrb	r0, [r0, #207]	@ zero_extendqisi2
 4489 02b4 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 4490 02b8 0028     		cmp	r0, #0
 4491 02ba A8D1     		bne	.L862
 4492 02bc C6E7     		b	.L850
 4493              	.L845:
 4494 02be 90F8CD00 		ldrb	r0, [r0, #205]	@ zero_extendqisi2
 4495 02c2 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 4496 02c6 0028     		cmp	r0, #0
 4497 02c8 A1D1     		bne	.L862
 4498 02ca BFE7     		b	.L850
 4499              	.L818:
 4500 02cc 94F8CD00 		ldrb	r0, [r4, #205]	@ zero_extendqisi2
 4501 02d0 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 4502 02d4 0028     		cmp	r0, #0
 4503 02d6 7FF476AF 		bne	.L853
ARM GAS  /tmp/cclDCdxf.s 			page 80


 4504              	.L820:
 4505 02da 0021     		movs	r1, #0
 4506 02dc 0846     		mov	r0, r1
 4507 02de 75E7     		b	.L812
 4508              	.L813:
 4509 02e0 94F97005 		ldrsb	r0, [r4, #1392]
 4510 02e4 FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 4511 02e8 B0F57A6F 		cmp	r0, #4000
 4512 02ec BFF66BAF 		bge	.L853
 4513 02f0 0146     		mov	r1, r0
 4514 02f2 6BE7     		b	.L812
 4515              	.L816:
 4516 02f4 94F8AC02 		ldrb	r0, [r4, #684]	@ zero_extendqisi2
 4517 02f8 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 4518 02fc 0028     		cmp	r0, #0
 4519 02fe 7FF462AF 		bne	.L853
 4520 0302 EAE7     		b	.L820
 4521              	.L817:
 4522 0304 94F8CF00 		ldrb	r0, [r4, #207]	@ zero_extendqisi2
 4523 0308 FFF7FEFF 		bl	_ZN6IoPort7ReadPinEh
 4524 030c 0028     		cmp	r0, #0
 4525 030e 7FF45AAF 		bne	.L853
 4526 0312 E2E7     		b	.L820
 4527              	.L866:
 4528 0314 D4F87435 		ldr	r3, [r4, #1396]
 4529 0318 C9E6     		b	.L804
 4530              	.L836:
 4531 031a 0022     		movs	r2, #0
 4532 031c 0123     		movs	r3, #1
 4533 031e C4F8EC22 		str	r2, [r4, #748]
 4534 0322 84F8F432 		strb	r3, [r4, #756]
 4535 0326 02E7     		b	.L837
 4536              	.L851:
 4537 0328 0021     		movs	r1, #0
 4538 032a 0123     		movs	r3, #1
 4539 032c C4F80813 		str	r1, [r4, #776]
 4540 0330 84F81033 		strb	r3, [r4, #784]
 4541 0334 0FE7     		b	.L802
 4542              	.L867:
 4543 0336 0546     		mov	r5, r0
 4544 0338 94F89420 		ldrb	r2, [r4, #148]	@ zero_extendqisi2
 4545 033c 6CE7     		b	.L839
 4546              	.L855:
 4547 033e 4FF47A65 		mov	r5, #4000
 4548 0342 2846     		mov	r0, r5
 4549 0344 68E7     		b	.L839
 4550              	.L854:
 4551 0346 4FF47A61 		mov	r1, #4000
 4552 034a 0846     		mov	r0, r1
 4553 034c DBE6     		b	.L824
 4554              	.L869:
 4555 034e 00BF     		.align	2
 4556              	.L868:
 4557 0350 00000000 		.word	reprap
 4558              		.size	_ZN8Platform4TickEv, .-_ZN8Platform4TickEv
 4559              		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
 4560              		.align	1
ARM GAS  /tmp/cclDCdxf.s 			page 81


 4561              		.p2align 2,,3
 4562              		.weak	_ZN6StringILj220EE6printfEPKcz
 4563              		.syntax unified
 4564              		.thumb
 4565              		.thumb_func
 4566              		.fpu softvfp
 4567              		.type	_ZN6StringILj220EE6printfEPKcz, %function
 4568              	_ZN6StringILj220EE6printfEPKcz:
 4569              		@ args = 4, pretend = 12, frame = 16
 4570              		@ frame_needed = 0, uses_anonymous_args = 1
 4571 0000 0EB4     		push	{r1, r2, r3}
 4572 0002 10B5     		push	{r4, lr}
 4573 0004 DD24     		movs	r4, #221
 4574 0006 85B0     		sub	sp, sp, #20
 4575 0008 07AB     		add	r3, sp, #28
 4576 000a 53F8041B 		ldr	r1, [r3], #4
 4577 000e 0290     		str	r0, [sp, #8]
 4578 0010 1A46     		mov	r2, r3
 4579 0012 02A8     		add	r0, sp, #8
 4580 0014 0193     		str	r3, [sp, #4]
 4581 0016 0394     		str	r4, [sp, #12]
 4582 0018 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 4583 001c 05B0     		add	sp, sp, #20
 4584              		@ sp needed
 4585 001e BDE81040 		pop	{r4, lr}
 4586 0022 03B0     		add	sp, sp, #12
 4587 0024 7047     		bx	lr
 4588              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 4589 0026 00BF     		.section	.text._ZN6StringILj220EE4catfEPKcz,"axG",%progbits,_ZN6StringILj220EE4catfEPKcz,comdat
 4590              		.align	1
 4591              		.p2align 2,,3
 4592              		.weak	_ZN6StringILj220EE4catfEPKcz
 4593              		.syntax unified
 4594              		.thumb
 4595              		.thumb_func
 4596              		.fpu softvfp
 4597              		.type	_ZN6StringILj220EE4catfEPKcz, %function
 4598              	_ZN6StringILj220EE4catfEPKcz:
 4599              		@ args = 4, pretend = 12, frame = 16
 4600              		@ frame_needed = 0, uses_anonymous_args = 1
 4601 0000 0EB4     		push	{r1, r2, r3}
 4602 0002 10B5     		push	{r4, lr}
 4603 0004 DD24     		movs	r4, #221
 4604 0006 85B0     		sub	sp, sp, #20
 4605 0008 07AB     		add	r3, sp, #28
 4606 000a 53F8041B 		ldr	r1, [r3], #4
 4607 000e 0290     		str	r0, [sp, #8]
 4608 0010 1A46     		mov	r2, r3
 4609 0012 02A8     		add	r0, sp, #8
 4610 0014 0193     		str	r3, [sp, #4]
 4611 0016 0394     		str	r4, [sp, #12]
 4612 0018 FFF7FEFF 		bl	_ZNK9StringRef5vcatfEPKcSt9__va_list
 4613 001c 05B0     		add	sp, sp, #20
 4614              		@ sp needed
 4615 001e BDE81040 		pop	{r4, lr}
 4616 0022 03B0     		add	sp, sp, #12
 4617 0024 7047     		bx	lr
ARM GAS  /tmp/cclDCdxf.s 			page 82


 4618              		.size	_ZN6StringILj220EE4catfEPKcz, .-_ZN6StringILj220EE4catfEPKcz
 4619              		.global	__aeabi_f2d
 4620 0026 00BF     		.section	.text._ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.25,"ax",%progbits
 4621              		.align	1
 4622              		.p2align 2,,3
 4623              		.syntax unified
 4624              		.thumb
 4625              		.thumb_func
 4626              		.fpu softvfp
 4627              		.type	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.25, %function
 4628              	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.25:
 4629              		@ args = 0, pretend = 0, frame = 232
 4630              		@ frame_needed = 0, uses_anonymous_args = 0
 4631 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4632 0004 0024     		movs	r4, #0
 4633 0006 BDB0     		sub	sp, sp, #244
 4634 0008 3CAD     		add	r5, sp, #240
 4635 000a 05F8E04D 		strb	r4, [r5, #-224]!
 4636 000e 8146     		mov	r9, r0
 4637 0010 0E46     		mov	r6, r1
 4638 0012 9046     		mov	r8, r2
 4639 0014 2846     		mov	r0, r5
 4640 0016 1A46     		mov	r2, r3
 4641 0018 1749     		ldr	r1, .L883
 4642 001a FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 4643 001e DFF860A0 		ldr	r10, .L883+8
 4644 0022 164F     		ldr	r7, .L883+4
 4645 0024 02E0     		b	.L876
 4646              	.L875:
 4647 0026 0134     		adds	r4, r4, #1
 4648 0028 062C     		cmp	r4, #6
 4649 002a 16D0     		beq	.L882
 4650              	.L876:
 4651 002c 26FA04F3 		lsr	r3, r6, r4
 4652 0030 DB07     		lsls	r3, r3, #31
 4653 0032 F8D5     		bpl	.L875
 4654 0034 DAF81030 		ldr	r3, [r10, #16]
 4655 0038 58F82400 		ldr	r0, [r8, r4, lsl #2]	@ float
 4656 003c 2344     		add	r3, r3, r4
 4657 003e 93F872B2 		ldrb	fp, [r3, #626]	@ zero_extendqisi2
 4658 0042 FFF7FEFF 		bl	__aeabi_f2d
 4659 0046 0134     		adds	r4, r4, #1
 4660 0048 CDE90001 		strd	r0, [sp]
 4661 004c 5A46     		mov	r2, fp
 4662 004e 3946     		mov	r1, r7
 4663 0050 2846     		mov	r0, r5
 4664 0052 FFF7FEFF 		bl	_ZN6StringILj220EE4catfEPKcz
 4665 0056 062C     		cmp	r4, #6
 4666 0058 E8D1     		bne	.L876
 4667              	.L882:
 4668 005a DD23     		movs	r3, #221
 4669 005c 0A21     		movs	r1, #10
 4670 005e 02A8     		add	r0, sp, #8
 4671 0060 0393     		str	r3, [sp, #12]
 4672 0062 0295     		str	r5, [sp, #8]
 4673 0064 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 4674 0068 2946     		mov	r1, r5
ARM GAS  /tmp/cclDCdxf.s 			page 83


 4675 006a 4846     		mov	r0, r9
 4676 006c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 4677 0070 3DB0     		add	sp, sp, #244
 4678              		@ sp needed
 4679 0072 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4680              	.L884:
 4681 0076 00BF     		.align	2
 4682              	.L883:
 4683 0078 00000000 		.word	.LC26
 4684 007c 0C000000 		.word	.LC27
 4685 0080 00000000 		.word	reprap
 4686              		.size	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.25, .-_ZN8Platform15WriteAxisLimitsEP9Fi
 4687              		.section	.text._ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi,"ax",%progbits
 4688              		.align	1
 4689              		.p2align 2,,3
 4690              		.global	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi
 4691              		.syntax unified
 4692              		.thumb
 4693              		.thumb_func
 4694              		.fpu softvfp
 4695              		.type	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi, %function
 4696              	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi:
 4697              		@ args = 0, pretend = 0, frame = 0
 4698              		@ frame_needed = 0, uses_anonymous_args = 0
 4699              		@ link register save eliminated.
 4700 0000 09B9     		cbnz	r1, .L887
 4701 0002 0120     		movs	r0, #1
 4702 0004 7047     		bx	lr
 4703              	.L887:
 4704 0006 FFF7FEBF 		b	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.25
 4705              		.size	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi, .-_ZN8Platform15WriteAxisLimitsEP9FileStorem
 4706 000a 00BF     		.section	.text._ZNK8Platform23WritePlatformParametersEP9FileStoreb,"ax",%progbits
 4707              		.align	1
 4708              		.p2align 2,,3
 4709              		.global	_ZNK8Platform23WritePlatformParametersEP9FileStoreb
 4710              		.syntax unified
 4711              		.thumb
 4712              		.thumb_func
 4713              		.fpu softvfp
 4714              		.type	_ZNK8Platform23WritePlatformParametersEP9FileStoreb, %function
 4715              	_ZNK8Platform23WritePlatformParametersEP9FileStoreb:
 4716              		@ args = 0, pretend = 0, frame = 0
 4717              		@ frame_needed = 0, uses_anonymous_args = 0
 4718 0000 D0F87434 		ldr	r3, [r0, #1140]
 4719 0004 70B5     		push	{r4, r5, r6, lr}
 4720 0006 0446     		mov	r4, r0
 4721 0008 0D46     		mov	r5, r1
 4722 000a 1646     		mov	r6, r2
 4723 000c 13B9     		cbnz	r3, .L889
 4724 000e D0F87834 		ldr	r3, [r0, #1144]
 4725 0012 53B1     		cbz	r3, .L894
 4726              	.L889:
 4727 0014 1E49     		ldr	r1, .L914
 4728 0016 2846     		mov	r0, r5
 4729 0018 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 4730 001c 80B1     		cbz	r0, .L897
 4731 001e D4F87414 		ldr	r1, [r4, #1140]
ARM GAS  /tmp/cclDCdxf.s 			page 84


 4732 0022 61BB     		cbnz	r1, .L893
 4733              	.L896:
 4734 0024 D4F87814 		ldr	r1, [r4, #1144]
 4735 0028 11B9     		cbnz	r1, .L913
 4736              	.L894:
 4737 002a 5EB9     		cbnz	r6, .L890
 4738 002c 0120     		movs	r0, #1
 4739 002e 70BD     		pop	{r4, r5, r6, pc}
 4740              	.L913:
 4741 0030 0023     		movs	r3, #0
 4742 0032 04F24442 		addw	r2, r4, #1092
 4743 0036 2846     		mov	r0, r5
 4744 0038 FFF7FEFF 		bl	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.25
 4745 003c 0028     		cmp	r0, #0
 4746 003e F4D1     		bne	.L894
 4747              	.L897:
 4748 0040 0020     		movs	r0, #0
 4749 0042 70BD     		pop	{r4, r5, r6, pc}
 4750              	.L890:
 4751 0044 1349     		ldr	r1, .L914+4
 4752 0046 2846     		mov	r0, r5
 4753 0048 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 4754 004c 0028     		cmp	r0, #0
 4755 004e F7D0     		beq	.L897
 4756 0050 0122     		movs	r2, #1
 4757 0052 2946     		mov	r1, r5
 4758 0054 04F13400 		add	r0, r4, #52
 4759 0058 FFF7FEFF 		bl	_ZNK6ZProbe15WriteParametersEP9FileStorej
 4760 005c 0028     		cmp	r0, #0
 4761 005e EFD0     		beq	.L897
 4762 0060 0322     		movs	r2, #3
 4763 0062 2946     		mov	r1, r5
 4764 0064 04F16400 		add	r0, r4, #100
 4765 0068 FFF7FEFF 		bl	_ZNK6ZProbe15WriteParametersEP9FileStorej
 4766 006c 0028     		cmp	r0, #0
 4767 006e E7D0     		beq	.L897
 4768 0070 2946     		mov	r1, r5
 4769 0072 201D     		adds	r0, r4, #4
 4770 0074 0422     		movs	r2, #4
 4771 0076 BDE87040 		pop	{r4, r5, r6, lr}
 4772 007a FFF7FEBF 		b	_ZNK6ZProbe15WriteParametersEP9FileStorej
 4773              	.L893:
 4774 007e 0123     		movs	r3, #1
 4775 0080 04F25C42 		addw	r2, r4, #1116
 4776 0084 2846     		mov	r0, r5
 4777 0086 FFF7FEFF 		bl	_ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.25
 4778 008a 0028     		cmp	r0, #0
 4779 008c CAD1     		bne	.L896
 4780 008e D7E7     		b	.L897
 4781              	.L915:
 4782              		.align	2
 4783              	.L914:
 4784 0090 00000000 		.word	.LC28
 4785 0094 18000000 		.word	.LC29
 4786              		.size	_ZNK8Platform23WritePlatformParametersEP9FileStoreb, .-_ZNK8Platform23WritePlatformParameter
 4787              		.section	.text._ZN8Platform4InitEv,"ax",%progbits
 4788              		.align	1
ARM GAS  /tmp/cclDCdxf.s 			page 85


 4789              		.p2align 2,,3
 4790              		.global	_ZN8Platform4InitEv
 4791              		.syntax unified
 4792              		.thumb
 4793              		.thumb_func
 4794              		.fpu softvfp
 4795              		.type	_ZN8Platform4InitEv, %function
 4796              	_ZN8Platform4InitEv:
 4797              		@ args = 0, pretend = 0, frame = 16
 4798              		@ frame_needed = 0, uses_anonymous_args = 0
 4799 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4800 0004 0446     		mov	r4, r0
 4801 0006 0022     		movs	r2, #0
 4802 0008 0321     		movs	r1, #3
 4803 000a 85B0     		sub	sp, sp, #20
 4804 000c 2820     		movs	r0, #40
 4805 000e FFF7FEFF 		bl	pinModeDuet
 4806 0012 0021     		movs	r1, #0
 4807 0014 0122     		movs	r2, #1
 4808 0016 94F8A830 		ldrb	r3, [r4, #168]	@ zero_extendqisi2
 4809 001a 84F82016 		strb	r1, [r4, #1568]
 4810 001e 84F8A720 		strb	r2, [r4, #167]
 4811 0022 002B     		cmp	r3, #0
 4812 0024 40F01782 		bne	.L950
 4813              	.L917:
 4814 0028 4FF46142 		mov	r2, #57600
 4815 002c 0123     		movs	r3, #1
 4816 002e 0025     		movs	r5, #0
 4817 0030 4FF4E131 		mov	r1, #115200
 4818 0034 C4F82425 		str	r2, [r4, #1316]
 4819 0038 84F82935 		strb	r3, [r4, #1321]
 4820 003c C4F88855 		str	r5, [r4, #1416]
 4821 0040 84F82855 		strb	r5, [r4, #1320]
 4822 0044 C4F82015 		str	r1, [r4, #1312]
 4823 0048 04F26450 		addw	r0, r4, #1380
 4824 004c 7249     		ldr	r1, .L952
 4825 004e FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 4826 0052 7249     		ldr	r1, .L952+4
 4827 0054 04F5A860 		add	r0, r4, #1344
 4828 0058 FFF7FEFF 		bl	_ZN5Mutex6CreateEPKc
 4829 005c 84F84C55 		strb	r5, [r4, #1356]
 4830 0060 C4F84855 		str	r5, [r4, #1352]
 4831 0064 D4F82015 		ldr	r1, [r4, #1312]
 4832 0068 6D48     		ldr	r0, .L952+8
 4833 006a FFF7FEFF 		bl	_ZN9SerialCDC5beginEm
 4834 006e D4F82415 		ldr	r1, [r4, #1316]
 4835 0072 6C48     		ldr	r0, .L952+12
 4836 0074 FFF7FEFF 		bl	_ZN10USARTClass5beginEm
 4837 0078 0223     		movs	r3, #2
 4838 007a D4F86805 		ldr	r0, [r4, #1384]
 4839 007e 84F8A930 		strb	r3, [r4, #169]
 4840 0082 FFF7FEFF 		bl	_ZN11MassStorage4InitEv
 4841 0086 6848     		ldr	r0, .L952+16
 4842 0088 6849     		ldr	r1, .L952+20
 4843 008a 694A     		ldr	r2, .L952+24
 4844 008c 694B     		ldr	r3, .L952+28
 4845 008e 0668     		ldr	r6, [r0]
ARM GAS  /tmp/cclDCdxf.s 			page 86


 4846 0090 0D68     		ldr	r5, [r1]
 4847 0092 1268     		ldr	r2, [r2]
 4848 0094 03CB     		ldmia	r3!, {r0, r1}
 4849 0096 684F     		ldr	r7, .L952+32
 4850 0098 93F800E0 		ldrb	lr, [r3]	@ zero_extendqisi2
 4851 009c C4F89560 		str	r6, [r4, #149]	@ unaligned
 4852 00a0 C4F89950 		str	r5, [r4, #153]	@ unaligned
 4853 00a4 C4F89D20 		str	r2, [r4, #157]	@ unaligned
 4854 00a8 C4F8CB00 		str	r0, [r4, #203]	@ unaligned
 4855 00ac 07F1200C 		add	ip, r7, #32
 4856 00b0 84F8D3E0 		strb	lr, [r4, #211]
 4857 00b4 C4F8CF10 		str	r1, [r4, #207]	@ unaligned
 4858 00b8 04F1D406 		add	r6, r4, #212
 4859              	.L918:
 4860 00bc 3D46     		mov	r5, r7
 4861 00be 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 4862 00c0 6545     		cmp	r5, ip
 4863 00c2 3060     		str	r0, [r6]	@ unaligned
 4864 00c4 7160     		str	r1, [r6, #4]	@ unaligned
 4865 00c6 B260     		str	r2, [r6, #8]	@ unaligned
 4866 00c8 F360     		str	r3, [r6, #12]	@ unaligned
 4867 00ca 07F11007 		add	r7, r7, #16
 4868 00ce 06F11006 		add	r6, r6, #16
 4869 00d2 F3D1     		bne	.L918
 4870 00d4 3868     		ldr	r0, [r7]
 4871 00d6 594F     		ldr	r7, .L952+36
 4872 00d8 3060     		str	r0, [r6]	@ unaligned
 4873 00da 07F1200E 		add	lr, r7, #32
 4874 00de 04F1F806 		add	r6, r4, #248
 4875              	.L919:
 4876 00e2 3D46     		mov	r5, r7
 4877 00e4 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 4878 00e6 7545     		cmp	r5, lr
 4879 00e8 3060     		str	r0, [r6]	@ unaligned
 4880 00ea 7160     		str	r1, [r6, #4]	@ unaligned
 4881 00ec B260     		str	r2, [r6, #8]	@ unaligned
 4882 00ee F360     		str	r3, [r6, #12]	@ unaligned
 4883 00f0 07F11007 		add	r7, r7, #16
 4884 00f4 06F11006 		add	r6, r6, #16
 4885 00f8 F3D1     		bne	.L919
 4886 00fa 3868     		ldr	r0, [r7]
 4887 00fc 504F     		ldr	r7, .L952+40
 4888 00fe 3060     		str	r0, [r6]	@ unaligned
 4889 0100 07F1200E 		add	lr, r7, #32
 4890 0104 04F59275 		add	r5, r4, #292
 4891              	.L920:
 4892 0108 3E46     		mov	r6, r7
 4893 010a 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 4894 010c 7645     		cmp	r6, lr
 4895 010e 2860     		str	r0, [r5]	@ unaligned
 4896 0110 6960     		str	r1, [r5, #4]	@ unaligned
 4897 0112 AA60     		str	r2, [r5, #8]	@ unaligned
 4898 0114 EB60     		str	r3, [r5, #12]	@ unaligned
 4899 0116 07F11007 		add	r7, r7, #16
 4900 011a 05F11005 		add	r5, r5, #16
 4901 011e F3D1     		bne	.L920
 4902 0120 3868     		ldr	r0, [r7]
ARM GAS  /tmp/cclDCdxf.s 			page 87


 4903 0122 484F     		ldr	r7, .L952+44
 4904 0124 2860     		str	r0, [r5]	@ unaligned
 4905 0126 07F1200E 		add	lr, r7, #32
 4906 012a 04F5A475 		add	r5, r4, #328
 4907              	.L921:
 4908 012e 3E46     		mov	r6, r7
 4909 0130 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 4910 0132 7645     		cmp	r6, lr
 4911 0134 2860     		str	r0, [r5]	@ unaligned
 4912 0136 6960     		str	r1, [r5, #4]	@ unaligned
 4913 0138 AA60     		str	r2, [r5, #8]	@ unaligned
 4914 013a EB60     		str	r3, [r5, #12]	@ unaligned
 4915 013c 07F11007 		add	r7, r7, #16
 4916 0140 05F11005 		add	r5, r5, #16
 4917 0144 F3D1     		bne	.L921
 4918 0146 3B22     		movs	r2, #59
 4919 0148 4FF00008 		mov	r8, #0
 4920 014c 3E4B     		ldr	r3, .L952+48
 4921 014e 3868     		ldr	r0, [r7]
 4922 0150 DFF80C91 		ldr	r9, .L952+72
 4923 0154 2860     		str	r0, [r5]	@ unaligned
 4924 0156 84F8AC22 		strb	r2, [r4, #684]
 4925 015a 1046     		mov	r0, r2
 4926 015c C4F82031 		str	r3, [r4, #288]	@ float
 4927 0160 C4F81C31 		str	r3, [r4, #284]	@ float
 4928 0164 84F89480 		strb	r8, [r4, #148]
 4929 0168 FFF7FEFF 		bl	_Z15PinToAdcChannelm
 4930 016c 84F87005 		strb	r0, [r4, #1392]
 4931 0170 2046     		mov	r0, r4
 4932 0172 FFF7FEFF 		bl	_ZN8Platform17SetZProbeDefaultsEv
 4933 0176 354E     		ldr	r6, .L952+52
 4934 0178 2046     		mov	r0, r4
 4935 017a 354D     		ldr	r5, .L952+56
 4936 017c FFF7FEFF 		bl	_ZN8Platform10InitZProbeEv
 4937 0180 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 4938 0182 04F25C4E 		addw	lr, r4, #1116
 4939 0186 C4F84404 		str	r0, [r4, #1092]	@ unaligned
 4940 018a C4F84814 		str	r1, [r4, #1096]	@ unaligned
 4941 018e C4F84C24 		str	r2, [r4, #1100]	@ unaligned
 4942 0192 C4F85034 		str	r3, [r4, #1104]	@ unaligned
 4943 0196 03CE     		ldmia	r6!, {r0, r1}
 4944 0198 C4F85404 		str	r0, [r4, #1108]	@ unaligned
 4945 019c C4F85814 		str	r1, [r4, #1112]	@ unaligned
 4946 01a0 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 4947 01a2 C4F85C04 		str	r0, [r4, #1116]	@ unaligned
 4948 01a6 CEF80410 		str	r1, [lr, #4]	@ unaligned
 4949 01aa CEF80820 		str	r2, [lr, #8]	@ unaligned
 4950 01ae CEF80C30 		str	r3, [lr, #12]	@ unaligned
 4951 01b2 03CD     		ldmia	r5!, {r0, r1}
 4952 01b4 CEF81000 		str	r0, [lr, #16]	@ unaligned
 4953 01b8 CEF81410 		str	r1, [lr, #20]	@ unaligned
 4954 01bc 0E20     		movs	r0, #14
 4955 01be C4F87484 		str	r8, [r4, #1140]
 4956 01c2 C4F87884 		str	r8, [r4, #1144]
 4957 01c6 C4F8A892 		str	r9, [r4, #680]	@ float
 4958 01ca 0121     		movs	r1, #1
 4959 01cc FFF7FEFF 		bl	setPullup
ARM GAS  /tmp/cclDCdxf.s 			page 88


 4960 01d0 0121     		movs	r1, #1
 4961 01d2 0E20     		movs	r0, #14
 4962 01d4 FFF7FEFF 		bl	setPullup
 4963 01d8 1A23     		movs	r3, #26
 4964 01da 0193     		str	r3, [sp, #4]
 4965 01dc 1723     		movs	r3, #23
 4966 01de 4FF0FF32 		mov	r2, #-1
 4967 01e2 1C4E     		ldr	r6, .L952+60
 4968 01e4 1C49     		ldr	r1, .L952+64
 4969 01e6 DFF87CE0 		ldr	lr, .L952+76
 4970 01ea 1C48     		ldr	r0, .L952+68
 4971 01ec 0293     		str	r3, [sp, #8]
 4972 01ee 4746     		mov	r7, r8
 4973 01f0 CEF8A420 		str	r2, [lr, #164]
 4974 01f4 A346     		mov	fp, r4
 4975 01f6 C6F8A420 		str	r2, [r6, #164]
 4976 01fa 1825     		movs	r5, #24
 4977 01fc C1F8A420 		str	r2, [r1, #164]
 4978 0200 0123     		movs	r3, #1
 4979 0202 C0F8A420 		str	r2, [r0, #164]
 4980 0206 DFF860A0 		ldr	r10, .L952+80
 4981 020a 04F1B809 		add	r9, r4, #184
 4982 020e 04F5E478 		add	r8, r4, #456
 4983 0212 029E     		ldr	r6, [sp, #8]
 4984 0214 0394     		str	r4, [sp, #12]
 4985 0216 2EE0     		b	.L926
 4986              	.L953:
 4987              		.align	2
 4988              	.L952:
 4989 0218 00000000 		.word	.LC30
 4990 021c 04000000 		.word	.LC31
 4991 0220 00000000 		.word	SerialUSB
 4992 0224 00000000 		.word	Serial1
 4993 0228 00000000 		.word	_ZL16DefaultIpAddress
 4994 022c 00000000 		.word	_ZL14DefaultNetMask
 4995 0230 00000000 		.word	.LANCHOR8
 4996 0234 00000000 		.word	.LANCHOR9
 4997 0238 00000000 		.word	.LANCHOR10
 4998 023c 00000000 		.word	.LANCHOR11
 4999 0240 00000000 		.word	.LANCHOR12
 5000 0244 00000000 		.word	.LANCHOR13
 5001 0248 00401C46 		.word	1176256512
 5002 024c 00000000 		.word	.LANCHOR14
 5003 0250 00000000 		.word	.LANCHOR15
 5004 0254 00100E40 		.word	1074663424
 5005 0258 00120E40 		.word	1074663936
 5006 025c 00140E40 		.word	1074664448
 5007 0260 9A99993E 		.word	1050253722
 5008 0264 000E0E40 		.word	1074662912
 5009 0268 00000000 		.word	g_APinDescription
 5010              	.L951:
 5011 026c 7B5C     		ldrb	r3, [r7, r1]	@ zero_extendqisi2
 5012 026e 3E5C     		ldrb	r6, [r7, r0]	@ zero_extendqisi2
 5013 0270 0193     		str	r3, [sp, #4]
 5014 0272 BD5C     		ldrb	r5, [r7, r2]	@ zero_extendqisi2
 5015 0274 029B     		ldr	r3, [sp, #8]
 5016              	.L926:
ARM GAS  /tmp/cclDCdxf.s 			page 89


 5017 0276 4FF00001 		mov	r1, #0
 5018 027a EC00     		lsls	r4, r5, #3
 5019 027c 621B     		subs	r2, r4, r5
 5020 027e 052F     		cmp	r7, #5
 5021 0280 89F80A10 		strb	r1, [r9, #10]
 5022 0284 09F8013F 		strb	r3, [r9, #1]!
 5023 0288 0AEB8201 		add	r1, r10, r2, lsl #2
 5024 028c 07D8     		bhi	.L922
 5025 028e CBF81432 		str	r3, [fp, #532]
 5026 0292 8BF81872 		strb	r7, [fp, #536]
 5027 0296 C8F8B432 		str	r3, [r8, #692]
 5028 029a C8F8CC32 		str	r3, [r8, #716]
 5029              	.L922:
 5030 029e 5AF82220 		ldr	r2, [r10, r2, lsl #2]
 5031 02a2 7048     		ldr	r0, .L954
 5032 02a4 4968     		ldr	r1, [r1, #4]
 5033 02a6 8242     		cmp	r2, r0
 5034 02a8 08BF     		it	eq
 5035 02aa 4900     		lsleq	r1, r1, #1
 5036 02ac C8F8A810 		str	r1, [r8, #168]
 5037 02b0 C8F88410 		str	r1, [r8, #132]
 5038 02b4 0022     		movs	r2, #0
 5039 02b6 0321     		movs	r1, #3
 5040 02b8 2846     		mov	r0, r5
 5041 02ba 0293     		str	r3, [sp, #8]
 5042 02bc FFF7FEFF 		bl	pinModeDuet
 5043 02c0 3046     		mov	r0, r6
 5044 02c2 0022     		movs	r2, #0
 5045 02c4 0321     		movs	r1, #3
 5046 02c6 FFF7FEFF 		bl	pinModeDuet
 5047 02ca 0198     		ldr	r0, [sp, #4]
 5048 02cc 0022     		movs	r2, #0
 5049 02ce 0421     		movs	r1, #4
 5050 02d0 FFF7FEFF 		bl	pinModeDuet
 5051 02d4 641B     		subs	r4, r4, r5
 5052 02d6 039B     		ldr	r3, [sp, #12]
 5053 02d8 0AEB8402 		add	r2, r10, r4, lsl #2
 5054 02dc 5068     		ldr	r0, [r2, #4]
 5055 02de DA19     		adds	r2, r3, r7
 5056 02e0 0023     		movs	r3, #0
 5057 02e2 5AF82410 		ldr	r1, [r10, r4, lsl #2]
 5058 02e6 0137     		adds	r7, r7, #1
 5059 02e8 C1F8A000 		str	r0, [r1, #160]
 5060 02ec 48F8043F 		str	r3, [r8, #4]!	@ float
 5061 02f0 4FF07E53 		mov	r3, #1065353216
 5062 02f4 C8F82430 		str	r3, [r8, #36]	@ float
 5063 02f8 4FF00003 		mov	r3, #0
 5064 02fc 82F8B030 		strb	r3, [r2, #176]
 5065 0300 99F81200 		ldrb	r0, [r9, #18]	@ zero_extendqisi2
 5066 0304 0121     		movs	r1, #1
 5067 0306 FFF7FEFF 		bl	setPullup
 5068 030a 092F     		cmp	r7, #9
 5069 030c 0BF1080B 		add	fp, fp, #8
 5070 0310 5548     		ldr	r0, .L954+4
 5071 0312 5649     		ldr	r1, .L954+8
 5072 0314 564A     		ldr	r2, .L954+12
 5073 0316 A9D1     		bne	.L951
ARM GAS  /tmp/cclDCdxf.s 			page 90


 5074 0318 0020     		movs	r0, #0
 5075 031a 039C     		ldr	r4, [sp, #12]
 5076 031c 04F52972 		add	r2, r4, #676
 5077 0320 04F52573 		add	r3, r4, #660
 5078              	.L927:
 5079 0324 43F8040B 		str	r0, [r3], #4
 5080 0328 9A42     		cmp	r2, r3
 5081 032a FBD1     		bne	.L927
 5082 032c 0322     		movs	r2, #3
 5083 032e 0021     		movs	r1, #0
 5084 0330 504E     		ldr	r6, .L954+16
 5085 0332 C4F8A402 		str	r0, [r4, #676]
 5086 0336 04F5B673 		add	r3, r4, #364
 5087 033a 04F51170 		add	r0, r4, #580
 5088              	.L928:
 5089 033e 551C     		adds	r5, r2, #1
 5090 0340 00F8012B 		strb	r2, [r0], #1
 5091 0344 EAB2     		uxtb	r2, r5
 5092 0346 43F8041B 		str	r1, [r3], #4	@ float
 5093 034a 092A     		cmp	r2, #9
 5094 034c D962     		str	r1, [r3, #44]	@ float
 5095 034e 5961     		str	r1, [r3, #20]	@ float
 5096 0350 5E64     		str	r6, [r3, #68]	@ float
 5097 0352 F4D1     		bne	.L928
 5098 0354 0125     		movs	r5, #1
 5099 0356 4FF4FA73 		mov	r3, #500
 5100 035a 474E     		ldr	r6, .L954+20
 5101 035c 4748     		ldr	r0, .L954+24
 5102 035e 484A     		ldr	r2, .L954+28
 5103 0360 0068     		ldr	r0, [r0]
 5104 0362 1288     		ldrh	r2, [r2]
 5105 0364 3668     		ldr	r6, [r6]
 5106 0366 C4F81016 		str	r1, [r4, #1552]	@ float
 5107 036a C4F8B004 		str	r0, [r4, #1200]	@ unaligned
 5108 036e 2946     		mov	r1, r5
 5109 0370 A4F8B424 		strh	r2, [r4, #1204]	@ unaligned
 5110 0374 C4F8B854 		str	r5, [r4, #1208]
 5111 0378 C4F8BC34 		str	r3, [r4, #1212]
 5112 037c 2620     		movs	r0, #38
 5113 037e C4F8AC64 		str	r6, [r4, #1196]	@ unaligned
 5114 0382 FFF7FEFF 		bl	setPullup
 5115 0386 2946     		mov	r1, r5
 5116 0388 2420     		movs	r0, #36
 5117 038a FFF7FEFF 		bl	setPullup
 5118 038e 04F2AC45 		addw	r5, r4, #1196
 5119 0392 04F59667 		add	r7, r4, #1200
 5120              	.L930:
 5121 0396 2879     		ldrb	r0, [r5, #4]	@ zero_extendqisi2
 5122 0398 2E46     		mov	r6, r5
 5123 039a FF28     		cmp	r0, #255
 5124 039c 03D0     		beq	.L929
 5125 039e 0022     		movs	r2, #0
 5126 03a0 0421     		movs	r1, #4
 5127 03a2 FFF7FEFF 		bl	pinModeDuet
 5128              	.L929:
 5129 03a6 15F8010B 		ldrb	r0, [r5], #1	@ zero_extendqisi2
 5130 03aa 0022     		movs	r2, #0
ARM GAS  /tmp/cclDCdxf.s 			page 91


 5131 03ac 0521     		movs	r1, #5
 5132 03ae FFF7FEFF 		bl	pinModeDuet
 5133 03b2 3078     		ldrb	r0, [r6]	@ zero_extendqisi2
 5134 03b4 FFF7FEFF 		bl	_Z15PinToAdcChannelm
 5135 03b8 BD42     		cmp	r5, r7
 5136 03ba 85F8BF00 		strb	r0, [r5, #191]
 5137 03be EAD1     		bne	.L930
 5138 03c0 4FF00009 		mov	r9, #0
 5139 03c4 4C27     		movs	r7, #76
 5140 03c6 4D46     		mov	r5, r9
 5141 03c8 4FF00108 		mov	r8, #1
 5142 03cc 2D4E     		ldr	r6, .L954+32
 5143 03ce 04F26C5A 		addw	r10, r4, #1388
 5144              	.L933:
 5145              		.syntax unified
 5146              	@ 470 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 5147 03d2 EFF31080 		MRS r0, primask
 5148              	@ 0 "" 2
 5149              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 5150 03d6 72B6     		cpsid i
 5151              	@ 0 "" 2
 5152              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 5153 03d8 BFF35F8F 		dmb
 5154              	@ 0 "" 2
 5155              		.thumb
 5156              		.syntax unified
 5157 03dc 2621     		movs	r1, #38
 5158 03de 0022     		movs	r2, #0
 5159 03e0 07FB0943 		mla	r3, r7, r9, r4
 5160 03e4 01FB09F1 		mul	r1, r1, r9
 5161 03e8 3570     		strb	r5, [r6]
 5162 03ea C3F85853 		str	r5, [r3, #856]
 5163 03ee C3F85453 		str	r5, [r3, #852]
 5164 03f2 83F85C53 		strb	r5, [r3, #860]
 5165              	.L931:
 5166 03f6 8B18     		adds	r3, r1, r2
 5167 03f8 03F5C473 		add	r3, r3, #392
 5168 03fc 0132     		adds	r2, r2, #1
 5169 03fe 04EB4303 		add	r3, r4, r3, lsl #1
 5170 0402 202A     		cmp	r2, #32
 5171 0404 9D80     		strh	r5, [r3, #4]	@ movhi
 5172 0406 F6D1     		bne	.L931
 5173 0408 20B9     		cbnz	r0, .L932
 5174 040a 86F80080 		strb	r8, [r6]
 5175              		.syntax unified
 5176              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 5177 040e BFF35F8F 		dmb
 5178              	@ 0 "" 2
 5179              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 5180 0412 62B6     		cpsie i
 5181              	@ 0 "" 2
 5182              		.thumb
 5183              		.syntax unified
 5184              	.L932:
 5185 0414 09F10109 		add	r9, r9, #1
 5186 0418 0121     		movs	r1, #1
 5187 041a 1AF9010B 		ldrsb	r0, [r10], #1
ARM GAS  /tmp/cclDCdxf.s 			page 92


 5188 041e FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 5189 0422 B9F1040F 		cmp	r9, #4
 5190 0426 D4D1     		bne	.L933
 5191 0428 2046     		mov	r0, r4
 5192 042a FFF7FEFF 		bl	_ZN8Platform8InitFansEv
 5193 042e 4FF07C52 		mov	r2, #1056964608
 5194 0432 154B     		ldr	r3, .L954+36
 5195 0434 C4F88025 		str	r2, [r4, #1408]	@ float
 5196 0438 C4F87C35 		str	r3, [r4, #1404]	@ float
 5197 043c 4422     		movs	r2, #68
 5198 043e 4FF0FF31 		mov	r1, #-1
 5199 0442 04F22160 		addw	r0, r4, #1569
 5200 0446 FFF7FEFF 		bl	memset
 5201 044a 2046     		mov	r0, r4
 5202 044c 05B0     		add	sp, sp, #20
 5203              		@ sp needed
 5204 044e BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 5205 0452 FFF7FEBF 		b	_ZN8Platform20InitialiseInterruptsEv
 5206              	.L950:
 5207 0456 2046     		mov	r0, r4
 5208 0458 FFF7FEFF 		bl	_ZN8Platform10InitZProbeEv
 5209 045c 2046     		mov	r0, r4
 5210 045e FFF7FEFF 		bl	_ZN8Platform8InitFansEv
 5211 0462 E1E5     		b	.L917
 5212              	.L955:
 5213              		.align	2
 5214              	.L954:
 5215 0464 00120E40 		.word	1074663936
 5216 0468 00000000 		.word	.LANCHOR4
 5217 046c 00000000 		.word	.LANCHOR3
 5218 0470 00000000 		.word	.LANCHOR5
 5219 0474 CDCC4C3E 		.word	1045220557
 5220 0478 00000000 		.word	.LANCHOR16
 5221 047c 00000000 		.word	.LANCHOR17
 5222 0480 00000000 		.word	.LANCHOR18
 5223 0484 00000000 		.word	g_interrupt_enabled
 5224 0488 0000E03F 		.word	1071644672
 5225              		.size	_ZN8Platform4InitEv, .-_ZN8Platform4InitEv
 5226              		.section	.text._ZN8Platform4ExitEv,"ax",%progbits
 5227              		.align	1
 5228              		.p2align 2,,3
 5229              		.global	_ZN8Platform4ExitEv
 5230              		.syntax unified
 5231              		.thumb
 5232              		.thumb_func
 5233              		.fpu softvfp
 5234              		.type	_ZN8Platform4ExitEv, %function
 5235              	_ZN8Platform4ExitEv:
 5236              		@ args = 0, pretend = 0, frame = 0
 5237              		@ frame_needed = 0, uses_anonymous_args = 0
 5238 0000 10B5     		push	{r4, lr}
 5239 0002 0446     		mov	r4, r0
 5240 0004 0068     		ldr	r0, [r0]
 5241 0006 18B1     		cbz	r0, .L957
 5242 0008 D4F88815 		ldr	r1, [r4, #1416]
 5243 000c FFF7FEFF 		bl	_ZN6Logger4StopEl
 5244              	.L957:
ARM GAS  /tmp/cclDCdxf.s 			page 93


 5245 0010 D4F86805 		ldr	r0, [r4, #1384]
 5246 0014 FFF7FEFF 		bl	_ZN11MassStorage13CloseAllFilesEv
 5247 0018 D4F84405 		ldr	r0, [r4, #1348]
 5248 001c 28B1     		cbz	r0, .L959
 5249              	.L960:
 5250 001e FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 5251 0022 C4F84405 		str	r0, [r4, #1348]
 5252 0026 0028     		cmp	r0, #0
 5253 0028 F9D1     		bne	.L960
 5254              	.L959:
 5255 002a 0023     		movs	r3, #0
 5256 002c 0448     		ldr	r0, .L968
 5257 002e 84F8A830 		strb	r3, [r4, #168]
 5258 0032 FFF7FEFF 		bl	_ZN9SerialCDC3endEv
 5259 0036 BDE81040 		pop	{r4, lr}
 5260 003a 0248     		ldr	r0, .L968+4
 5261 003c FFF7FEBF 		b	_ZN9UARTClass3endEv
 5262              	.L969:
 5263              		.align	2
 5264              	.L968:
 5265 0040 00000000 		.word	SerialUSB
 5266 0044 00000000 		.word	Serial1
 5267              		.size	_ZN8Platform4ExitEv, .-_ZN8Platform4ExitEv
 5268              		.section	.text._ZN8Platform12ResetChannelEj,"ax",%progbits
 5269              		.align	1
 5270              		.p2align 2,,3
 5271              		.global	_ZN8Platform12ResetChannelEj
 5272              		.syntax unified
 5273              		.thumb
 5274              		.thumb_func
 5275              		.fpu softvfp
 5276              		.type	_ZN8Platform12ResetChannelEj, %function
 5277              	_ZN8Platform12ResetChannelEj:
 5278              		@ args = 0, pretend = 0, frame = 0
 5279              		@ frame_needed = 0, uses_anonymous_args = 0
 5280 0000 10B5     		push	{r4, lr}
 5281 0002 0446     		mov	r4, r0
 5282 0004 61B1     		cbz	r1, .L972
 5283 0006 0129     		cmp	r1, #1
 5284 0008 09D1     		bne	.L976
 5285 000a 0A48     		ldr	r0, .L977
 5286 000c FFF7FEFF 		bl	_ZN9UARTClass3endEv
 5287 0010 D4F82415 		ldr	r1, [r4, #1316]
 5288 0014 0748     		ldr	r0, .L977
 5289 0016 BDE81040 		pop	{r4, lr}
 5290 001a FFF7FEBF 		b	_ZN10USARTClass5beginEm
 5291              	.L976:
 5292 001e 10BD     		pop	{r4, pc}
 5293              	.L972:
 5294 0020 0548     		ldr	r0, .L977+4
 5295 0022 FFF7FEFF 		bl	_ZN9SerialCDC3endEv
 5296 0026 D4F82015 		ldr	r1, [r4, #1312]
 5297 002a 0348     		ldr	r0, .L977+4
 5298 002c BDE81040 		pop	{r4, lr}
 5299 0030 FFF7FEBF 		b	_ZN9SerialCDC5beginEm
 5300              	.L978:
 5301              		.align	2
ARM GAS  /tmp/cclDCdxf.s 			page 94


 5302              	.L977:
 5303 0034 00000000 		.word	Serial1
 5304 0038 00000000 		.word	SerialUSB
 5305              		.size	_ZN8Platform12ResetChannelEj, .-_ZN8Platform12ResetChannelEj
 5306              		.section	.text._ZN8Platform11SetBaudRateEjm,"ax",%progbits
 5307              		.align	1
 5308              		.p2align 2,,3
 5309              		.global	_ZN8Platform11SetBaudRateEjm
 5310              		.syntax unified
 5311              		.thumb
 5312              		.thumb_func
 5313              		.fpu softvfp
 5314              		.type	_ZN8Platform11SetBaudRateEjm, %function
 5315              	_ZN8Platform11SetBaudRateEjm:
 5316              		@ args = 0, pretend = 0, frame = 0
 5317              		@ frame_needed = 0, uses_anonymous_args = 0
 5318              		@ link register save eliminated.
 5319 0000 0129     		cmp	r1, #1
 5320 0002 00D9     		bls	.L984
 5321 0004 7047     		bx	lr
 5322              	.L984:
 5323 0006 10B4     		push	{r4}
 5324 0008 01F5A473 		add	r3, r1, #328
 5325 000c 40F82320 		str	r2, [r0, r3, lsl #2]
 5326 0010 10BC     		pop	{r4}
 5327 0012 FFF7FEBF 		b	_ZN8Platform12ResetChannelEj
 5328              		.size	_ZN8Platform11SetBaudRateEjm, .-_ZN8Platform11SetBaudRateEjm
 5329 0016 00BF     		.section	.text._ZN8Platform18SetCommsPropertiesEjm,"ax",%progbits
 5330              		.align	1
 5331              		.p2align 2,,3
 5332              		.global	_ZN8Platform18SetCommsPropertiesEjm
 5333              		.syntax unified
 5334              		.thumb
 5335              		.thumb_func
 5336              		.fpu softvfp
 5337              		.type	_ZN8Platform18SetCommsPropertiesEjm, %function
 5338              	_ZN8Platform18SetCommsPropertiesEjm:
 5339              		@ args = 0, pretend = 0, frame = 0
 5340              		@ frame_needed = 0, uses_anonymous_args = 0
 5341              		@ link register save eliminated.
 5342 0000 0129     		cmp	r1, #1
 5343 0002 00D9     		bls	.L990
 5344 0004 7047     		bx	lr
 5345              	.L990:
 5346 0006 0B46     		mov	r3, r1
 5347 0008 0344     		add	r3, r3, r0
 5348 000a 10B4     		push	{r4}
 5349 000c 83F82825 		strb	r2, [r3, #1320]
 5350 0010 10BC     		pop	{r4}
 5351 0012 FFF7FEBF 		b	_ZN8Platform12ResetChannelEj
 5352              		.size	_ZN8Platform18SetCommsPropertiesEjm, .-_ZN8Platform18SetCommsPropertiesEjm
 5353 0016 00BF     		.section	.text._ZN8Platform13SoftwareResetEtPKm,"ax",%progbits
 5354              		.align	1
 5355              		.p2align 2,,3
 5356              		.global	_ZN8Platform13SoftwareResetEtPKm
 5357              		.syntax unified
 5358              		.thumb
ARM GAS  /tmp/cclDCdxf.s 			page 95


 5359              		.thumb_func
 5360              		.fpu softvfp
 5361              		.type	_ZN8Platform13SoftwareResetEtPKm, %function
 5362              	_ZN8Platform13SoftwareResetEtPKm:
 5363              		@ args = 0, pretend = 0, frame = 512
 5364              		@ frame_needed = 0, uses_anonymous_args = 0
 5365 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 5366 0002 0646     		mov	r6, r0
 5367 0004 ADF5017D 		sub	sp, sp, #516
 5368 0008 0C46     		mov	r4, r1
 5369 000a 1546     		mov	r5, r2
 5370              		.syntax unified
 5371              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 5372 000c 72B6     		cpsid i
 5373              	@ 0 "" 2
 5374              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 5375 000e BFF35F8F 		dmb
 5376              	@ 0 "" 2
 5377              		.thumb
 5378              		.syntax unified
 5379 0012 0022     		movs	r2, #0
 5380 0014 414B     		ldr	r3, .L1025
 5381 0016 4248     		ldr	r0, .L1025+4
 5382 0018 1A70     		strb	r2, [r3]
 5383 001a FFF7FEFF 		bl	wdt_restart
 5384 001e 102C     		cmp	r4, #16
 5385 0020 79D0     		beq	.L1021
 5386 0022 002C     		cmp	r4, #0
 5387 0024 69D1     		bne	.L1022
 5388              	.L994:
 5389 0026 3F4B     		ldr	r3, .L1025+8
 5390 0028 3F4A     		ldr	r2, .L1025+12
 5391 002a 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 5392 002c 92F83A10 		ldrb	r1, [r2, #58]	@ zero_extendqisi2
 5393 0030 5B01     		lsls	r3, r3, #5
 5394 0032 96F86526 		ldrb	r2, [r6, #1637]	@ zero_extendqisi2
 5395 0036 DBB2     		uxtb	r3, r3
 5396 0038 0C43     		orrs	r4, r4, r1
 5397 003a 1C43     		orrs	r4, r4, r3
 5398 003c 22B1     		cbz	r2, .L996
 5399 003e 6FEA4444 		mvn	r4, r4, lsl #17
 5400 0042 6FEA5444 		mvn	r4, r4, lsr #17
 5401 0046 A4B2     		uxth	r4, r4
 5402              	.L996:
 5403 0048 0427     		movs	r7, #4
 5404 004a 6946     		mov	r1, sp
 5405 004c 4FF40072 		mov	r2, #512
 5406 0050 0020     		movs	r0, #0
 5407 0052 FFF7FEFF 		bl	_ZN15DueFlashStorage4readEmPvm
 5408 0056 7FA9     		add	r1, sp, #508
 5409              	.L1006:
 5410 0058 A1F1800E 		sub	lr, r1, #128
 5411 005c 7346     		mov	r3, lr
 5412 005e 781E     		subs	r0, r7, #1
 5413 0060 01E0     		b	.L999
 5414              	.L1024:
 5415 0062 9942     		cmp	r1, r3
ARM GAS  /tmp/cclDCdxf.s 			page 96


 5416 0064 42D0     		beq	.L1023
 5417              	.L999:
 5418 0066 53F8042F 		ldr	r2, [r3, #4]!
 5419 006a 0132     		adds	r2, r2, #1
 5420 006c F9D0     		beq	.L1024
 5421 006e 042F     		cmp	r7, #4
 5422 0070 41D1     		bne	.L1007
 5423 0072 4FF40072 		mov	r2, #512
 5424 0076 FF21     		movs	r1, #255
 5425 0078 6846     		mov	r0, sp
 5426 007a FFF7FEFF 		bl	memset
 5427 007e 0020     		movs	r0, #0
 5428              	.L1000:
 5429 0080 47F60852 		movw	r2, #32008
 5430 0084 D6F88835 		ldr	r3, [r6, #1416]
 5431 0088 C701     		lsls	r7, r0, #7
 5432 008a 0DEB0706 		add	r6, sp, r7
 5433 008e F361     		str	r3, [r6, #28]
 5434 0090 7480     		strh	r4, [r6, #2]	@ movhi
 5435 0092 2DF80720 		strh	r2, [sp, r7]	@ movhi
 5436 0096 FFF7FEFF 		bl	_ZN5Tasks15GetNeverUsedRamEv
 5437 009a 244B     		ldr	r3, .L1025+16
 5438 009c 7060     		str	r0, [r6, #4]
 5439 009e DA6A     		ldr	r2, [r3, #44]
 5440 00a0 B260     		str	r2, [r6, #8]
 5441 00a2 9A6A     		ldr	r2, [r3, #40]
 5442 00a4 F260     		str	r2, [r6, #12]
 5443 00a6 5A68     		ldr	r2, [r3, #4]
 5444 00a8 3261     		str	r2, [r6, #16]
 5445 00aa 9B6B     		ldr	r3, [r3, #56]
 5446 00ac 7361     		str	r3, [r6, #20]
 5447 00ae 85B1     		cbz	r5, .L1003
 5448 00b0 07F11C03 		add	r3, r7, #28
 5449 00b4 1E48     		ldr	r0, .L1025+20
 5450 00b6 6B44     		add	r3, r3, sp
 5451 00b8 B561     		str	r5, [r6, #24]
 5452 00ba 05F16001 		add	r1, r5, #96
 5453              	.L1004:
 5454 00be 8542     		cmp	r5, r0
 5455 00c0 2CBF     		ite	cs
 5456 00c2 4FF0FF32 		movcs	r2, #-1
 5457 00c6 2A68     		ldrcc	r2, [r5]
 5458 00c8 0435     		adds	r5, r5, #4
 5459 00ca 8D42     		cmp	r5, r1
 5460 00cc 43F8042F 		str	r2, [r3, #4]!
 5461 00d0 F5D1     		bne	.L1004
 5462              	.L1003:
 5463 00d2 6946     		mov	r1, sp
 5464 00d4 4FF40072 		mov	r2, #512
 5465 00d8 0020     		movs	r0, #0
 5466 00da FFF7FEFF 		bl	_ZN15DueFlashStorage5writeEmPKvm
 5467              	.L993:
 5468 00de 4FF02542 		mov	r2, #-1526726656
 5469 00e2 144B     		ldr	r3, .L1025+24
 5470 00e4 9A60     		str	r2, [r3, #8]
 5471 00e6 FFF7FEFF 		bl	Reset
 5472              	.L1005:
ARM GAS  /tmp/cclDCdxf.s 			page 97


 5473 00ea FEE7     		b	.L1005
 5474              	.L1023:
 5475 00ec 7146     		mov	r1, lr
 5476 00ee 0028     		cmp	r0, #0
 5477 00f0 C6D0     		beq	.L1000
 5478 00f2 0746     		mov	r7, r0
 5479 00f4 B0E7     		b	.L1006
 5480              	.L1007:
 5481 00f6 3846     		mov	r0, r7
 5482 00f8 C2E7     		b	.L1000
 5483              	.L1022:
 5484 00fa 0F48     		ldr	r0, .L1025+28
 5485 00fc FFF7FEFF 		bl	_ZNK9SerialCDC8canWriteEv
 5486 0100 08B9     		cbnz	r0, .L995
 5487 0102 44F48044 		orr	r4, r4, #16384
 5488              	.L995:
 5489 0106 0D48     		ldr	r0, .L1025+32
 5490 0108 FFF7FEFF 		bl	_ZNK9UARTClass8canWriteEv
 5491 010c 0028     		cmp	r0, #0
 5492 010e 8AD1     		bne	.L994
 5493 0110 44F40064 		orr	r4, r4, #2048
 5494 0114 87E7     		b	.L994
 5495              	.L1021:
 5496 0116 FFF7FEFF 		bl	EraseAndReset
 5497 011a E0E7     		b	.L993
 5498              	.L1026:
 5499              		.align	2
 5500              	.L1025:
 5501 011c 00000000 		.word	g_interrupt_enabled
 5502 0120 501A0E40 		.word	1074666064
 5503 0124 00000000 		.word	.LANCHOR19
 5504 0128 00000000 		.word	reprap
 5505 012c 00ED00E0 		.word	-536810240
 5506 0130 00000000 		.word	_estack
 5507 0134 001A0E40 		.word	1074665984
 5508 0138 00000000 		.word	SerialUSB
 5509 013c 00000000 		.word	Serial1
 5510              		.size	_ZN8Platform13SoftwareResetEtPKm, .-_ZN8Platform13SoftwareResetEtPKm
 5511              		.section	.text._ZN8Platform16FlushAuxMessagesEv,"ax",%progbits
 5512              		.align	1
 5513              		.p2align 2,,3
 5514              		.global	_ZN8Platform16FlushAuxMessagesEv
 5515              		.syntax unified
 5516              		.thumb
 5517              		.thumb_func
 5518              		.fpu softvfp
 5519              		.type	_ZN8Platform16FlushAuxMessagesEv, %function
 5520              	_ZN8Platform16FlushAuxMessagesEv:
 5521              		@ args = 0, pretend = 0, frame = 8
 5522              		@ frame_needed = 0, uses_anonymous_args = 0
 5523 0000 70B5     		push	{r4, r5, r6, lr}
 5524 0002 82B0     		sub	sp, sp, #8
 5525 0004 00F5A861 		add	r1, r0, #1344
 5526 0008 00F22C54 		addw	r4, r0, #1324
 5527 000c 4FF0FF32 		mov	r2, #-1
 5528 0010 6846     		mov	r0, sp
 5529 0012 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
ARM GAS  /tmp/cclDCdxf.s 			page 98


 5530 0016 2046     		mov	r0, r4
 5531 0018 FFF7FEFF 		bl	_ZNVK11OutputStack12GetFirstItemEv
 5532 001c 70B1     		cbz	r0, .L1029
 5533 001e 0546     		mov	r5, r0
 5534 0020 1848     		ldr	r0, .L1038
 5535 0022 FFF7FEFF 		bl	_ZNK9UARTClass8canWriteEv
 5536 0026 D5F80C31 		ldr	r3, [r5, #268]
 5537 002a D5F81021 		ldr	r2, [r5, #272]
 5538 002e 9E1A     		subs	r6, r3, r2
 5539 0030 8642     		cmp	r6, r0
 5540 0032 28BF     		it	cs
 5541 0034 0646     		movcs	r6, r0
 5542 0036 6EB9     		cbnz	r6, .L1036
 5543 0038 9A42     		cmp	r2, r3
 5544 003a 1AD0     		beq	.L1037
 5545              	.L1029:
 5546 003c 2046     		mov	r0, r4
 5547 003e FFF7FEFF 		bl	_ZNVK11OutputStack12GetFirstItemEv
 5548 0042 0446     		mov	r4, r0
 5549 0044 6846     		mov	r0, sp
 5550 0046 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 5551 004a 201C     		adds	r0, r4, #0
 5552 004c 18BF     		it	ne
 5553 004e 0120     		movne	r0, #1
 5554 0050 02B0     		add	sp, sp, #8
 5555              		@ sp needed
 5556 0052 70BD     		pop	{r4, r5, r6, pc}
 5557              	.L1036:
 5558 0054 3146     		mov	r1, r6
 5559 0056 2846     		mov	r0, r5
 5560 0058 FFF7FEFF 		bl	_ZN12OutputBuffer4ReadEj
 5561 005c 3246     		mov	r2, r6
 5562 005e 0146     		mov	r1, r0
 5563 0060 0848     		ldr	r0, .L1038
 5564 0062 FFF7FEFF 		bl	_ZN9UARTClass5writeEPKhj
 5565 0066 D5F80C31 		ldr	r3, [r5, #268]
 5566 006a D5F81021 		ldr	r2, [r5, #272]
 5567 006e 9A42     		cmp	r2, r3
 5568 0070 E4D1     		bne	.L1029
 5569              	.L1037:
 5570 0072 2846     		mov	r0, r5
 5571 0074 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 5572 0078 0146     		mov	r1, r0
 5573 007a 2046     		mov	r0, r4
 5574 007c FFF7FEFF 		bl	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer
 5575 0080 DCE7     		b	.L1029
 5576              	.L1039:
 5577 0082 00BF     		.align	2
 5578              	.L1038:
 5579 0084 00000000 		.word	Serial1
 5580              		.size	_ZN8Platform16FlushAuxMessagesEv, .-_ZN8Platform16FlushAuxMessagesEv
 5581              		.section	.text._ZN8Platform14SendAuxMessageEPKc,"ax",%progbits
 5582              		.align	1
 5583              		.p2align 2,,3
 5584              		.global	_ZN8Platform14SendAuxMessageEPKc
 5585              		.syntax unified
 5586              		.thumb
ARM GAS  /tmp/cclDCdxf.s 			page 99


 5587              		.thumb_func
 5588              		.fpu softvfp
 5589              		.type	_ZN8Platform14SendAuxMessageEPKc, %function
 5590              	_ZN8Platform14SendAuxMessageEPKc:
 5591              		@ args = 0, pretend = 0, frame = 8
 5592              		@ frame_needed = 0, uses_anonymous_args = 0
 5593 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 5594 0002 85B0     		sub	sp, sp, #20
 5595 0004 0446     		mov	r4, r0
 5596 0006 03A8     		add	r0, sp, #12
 5597 0008 0D46     		mov	r5, r1
 5598 000a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 5599 000e E0B1     		cbz	r0, .L1040
 5600 0010 0F49     		ldr	r1, .L1046
 5601 0012 0398     		ldr	r0, [sp, #12]
 5602 0014 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 5603 0018 2846     		mov	r0, r5
 5604 001a FFF7FEFF 		bl	strlen
 5605 001e 0127     		movs	r7, #1
 5606 0020 0023     		movs	r3, #0
 5607 0022 039E     		ldr	r6, [sp, #12]
 5608 0024 0246     		mov	r2, r0
 5609 0026 0193     		str	r3, [sp, #4]
 5610 0028 2946     		mov	r1, r5
 5611 002a 0097     		str	r7, [sp]
 5612 002c 3046     		mov	r0, r6
 5613 002e FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 5614 0032 0849     		ldr	r1, .L1046+4
 5615 0034 0398     		ldr	r0, [sp, #12]
 5616 0036 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 5617 003a 04F22C50 		addw	r0, r4, #1324
 5618 003e 0399     		ldr	r1, [sp, #12]
 5619 0040 FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 5620 0044 2046     		mov	r0, r4
 5621 0046 FFF7FEFF 		bl	_ZN8Platform16FlushAuxMessagesEv
 5622              	.L1040:
 5623 004a 05B0     		add	sp, sp, #20
 5624              		@ sp needed
 5625 004c F0BD     		pop	{r4, r5, r6, r7, pc}
 5626              	.L1047:
 5627 004e 00BF     		.align	2
 5628              	.L1046:
 5629 0050 00000000 		.word	.LC32
 5630 0054 0C000000 		.word	.LC33
 5631              		.size	_ZN8Platform14SendAuxMessageEPKc, .-_ZN8Platform14SendAuxMessageEPKc
 5632              		.section	.text._ZN8Platform10RawMessageE11MessageTypePKc,"ax",%progbits
 5633              		.align	1
 5634              		.p2align 2,,3
 5635              		.global	_ZN8Platform10RawMessageE11MessageTypePKc
 5636              		.syntax unified
 5637              		.thumb
 5638              		.thumb_func
 5639              		.fpu softvfp
 5640              		.type	_ZN8Platform10RawMessageE11MessageTypePKc, %function
 5641              	_ZN8Platform10RawMessageE11MessageTypePKc:
 5642              		@ args = 0, pretend = 0, frame = 16
 5643              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/cclDCdxf.s 			page 100


 5644 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 5645 0004 0F06     		lsls	r7, r1, #24
 5646 0006 84B0     		sub	sp, sp, #16
 5647 0008 0C46     		mov	r4, r1
 5648 000a 0646     		mov	r6, r0
 5649 000c 1546     		mov	r5, r2
 5650 000e 05D5     		bpl	.L1049
 5651 0010 0068     		ldr	r0, [r0]
 5652 0012 18B1     		cbz	r0, .L1049
 5653 0014 D6F88815 		ldr	r1, [r6, #1416]
 5654 0018 FFF7FEFF 		bl	_ZN6Logger10LogMessageElPKc
 5655              	.L1049:
 5656 001c 2007     		lsls	r0, r4, #28
 5657 001e 2CD4     		bmi	.L1090
 5658 0020 6107     		lsls	r1, r4, #29
 5659 0022 04D5     		bpl	.L1051
 5660 0024 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 5661 0026 7B2B     		cmp	r3, #123
 5662 0028 5FD0     		beq	.L1062
 5663 002a 002B     		cmp	r3, #0
 5664 002c 52D1     		bne	.L1091
 5665              	.L1051:
 5666 002e A207     		lsls	r2, r4, #30
 5667 0030 29D4     		bmi	.L1092
 5668              	.L1054:
 5669 0032 E307     		lsls	r3, r4, #31
 5670 0034 02D4     		bmi	.L1093
 5671 0036 04B0     		add	sp, sp, #16
 5672              		@ sp needed
 5673 0038 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 5674              	.L1093:
 5675 003c 02AF     		add	r7, sp, #8
 5676 003e 06F26451 		addw	r1, r6, #1380
 5677 0042 4FF0FF32 		mov	r2, #-1
 5678 0046 3846     		mov	r0, r7
 5679 0048 06F5AA66 		add	r6, r6, #1360
 5680 004c FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 5681 0050 3046     		mov	r0, r6
 5682 0052 FFF7FEFF 		bl	_ZNVK11OutputStack11GetLastItemEv
 5683 0056 0190     		str	r0, [sp, #4]
 5684 0058 10B1     		cbz	r0, .L1058
 5685 005a 90F81431 		ldrb	r3, [r0, #276]	@ zero_extendqisi2
 5686 005e 43B1     		cbz	r3, .L1059
 5687              	.L1058:
 5688 0060 01A8     		add	r0, sp, #4
 5689 0062 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 5690 0066 10B3     		cbz	r0, .L1089
 5691 0068 3046     		mov	r0, r6
 5692 006a 0199     		ldr	r1, [sp, #4]
 5693 006c FFF7FEFF 		bl	_ZNV11OutputStack4PushEP12OutputBuffer
 5694 0070 0198     		ldr	r0, [sp, #4]
 5695              	.L1059:
 5696 0072 2946     		mov	r1, r5
 5697 0074 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 5698 0078 19E0     		b	.L1089
 5699              	.L1090:
 5700 007a 2946     		mov	r1, r5
ARM GAS  /tmp/cclDCdxf.s 			page 101


 5701 007c 3046     		mov	r0, r6
 5702 007e FFF7FEFF 		bl	_ZN8Platform14SendAuxMessageEPKc
 5703 0082 A207     		lsls	r2, r4, #30
 5704 0084 D5D5     		bpl	.L1054
 5705              	.L1092:
 5706 0086 02AF     		add	r7, sp, #8
 5707 0088 06F26451 		addw	r1, r6, #1380
 5708 008c 4FF0FF32 		mov	r2, #-1
 5709 0090 3846     		mov	r0, r7
 5710 0092 FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 5711 0096 2846     		mov	r0, r5
 5712 0098 FFF7FEFF 		bl	strlen
 5713 009c 0446     		mov	r4, r0
 5714 009e 144E     		ldr	r6, .L1095
 5715 00a0 DFF85080 		ldr	r8, .L1095+4
 5716              	.L1056:
 5717 00a4 3046     		mov	r0, r6
 5718 00a6 FFF7FEFF 		bl	_ZNK9SerialCDCcvbEv
 5719 00aa 00B1     		cbz	r0, .L1089
 5720 00ac 2CB9     		cbnz	r4, .L1094
 5721              	.L1089:
 5722 00ae 3846     		mov	r0, r7
 5723 00b0 FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 5724 00b4 04B0     		add	sp, sp, #16
 5725              		@ sp needed
 5726 00b6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 5727              	.L1094:
 5728 00ba 4046     		mov	r0, r8
 5729 00bc FFF7FEFF 		bl	_ZNK6RepRap19SpinTimeoutImminentEv
 5730 00c0 0028     		cmp	r0, #0
 5731 00c2 F4D1     		bne	.L1089
 5732 00c4 2246     		mov	r2, r4
 5733 00c6 2946     		mov	r1, r5
 5734 00c8 3046     		mov	r0, r6
 5735 00ca FFF7FEFF 		bl	_ZN9SerialCDC5writeEPKhj
 5736 00ce 241A     		subs	r4, r4, r0
 5737 00d0 0544     		add	r5, r5, r0
 5738 00d2 E7E7     		b	.L1056
 5739              	.L1091:
 5740 00d4 C4F38022 		ubfx	r2, r4, #10, #1
 5741              	.L1052:
 5742 00d8 96F84C35 		ldrb	r3, [r6, #1356]	@ zero_extendqisi2
 5743 00dc 002B     		cmp	r3, #0
 5744 00de A6D0     		beq	.L1051
 5745 00e0 2946     		mov	r1, r5
 5746 00e2 3046     		mov	r0, r6
 5747 00e4 FFF7FEFF 		bl	_ZN8Platform14AppendAuxReplyEPKcb.part.21
 5748 00e8 A1E7     		b	.L1051
 5749              	.L1062:
 5750 00ea 0122     		movs	r2, #1
 5751 00ec F4E7     		b	.L1052
 5752              	.L1096:
 5753 00ee 00BF     		.align	2
 5754              	.L1095:
 5755 00f0 00000000 		.word	SerialUSB
 5756 00f4 00000000 		.word	reprap
 5757              		.size	_ZN8Platform10RawMessageE11MessageTypePKc, .-_ZN8Platform10RawMessageE11MessageTypePKc
ARM GAS  /tmp/cclDCdxf.s 			page 102


 5758              		.section	.text._ZN8Platform8MessageFE11MessageTypePKcSt9__va_list,"ax",%progbits
 5759              		.align	1
 5760              		.p2align 2,,3
 5761              		.global	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list
 5762              		.syntax unified
 5763              		.thumb
 5764              		.thumb_func
 5765              		.fpu softvfp
 5766              		.type	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list, %function
 5767              	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list:
 5768              		@ args = 0, pretend = 0, frame = 272
 5769              		@ frame_needed = 0, uses_anonymous_args = 0
 5770 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 5771 0004 0C46     		mov	r4, r1
 5772 0006 0021     		movs	r1, #0
 5773 0008 C5B0     		sub	sp, sp, #276
 5774 000a 03AD     		add	r5, sp, #12
 5775 000c 1746     		mov	r7, r2
 5776 000e E205     		lsls	r2, r4, #23
 5777 0010 0646     		mov	r6, r0
 5778 0012 9846     		mov	r8, r3
 5779 0014 2970     		strb	r1, [r5]
 5780 0016 25D4     		bmi	.L1103
 5781 0018 A305     		lsls	r3, r4, #22
 5782 001a 11D4     		bmi	.L1104
 5783 001c 40F20113 		movw	r3, #257
 5784 0020 4246     		mov	r2, r8
 5785 0022 3946     		mov	r1, r7
 5786 0024 01A8     		add	r0, sp, #4
 5787 0026 0293     		str	r3, [sp, #8]
 5788 0028 0195     		str	r5, [sp, #4]
 5789 002a FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 5790              	.L1099:
 5791 002e 24F44071 		bic	r1, r4, #768
 5792 0032 2A46     		mov	r2, r5
 5793 0034 3046     		mov	r0, r6
 5794 0036 FFF7FEFF 		bl	_ZN8Platform10RawMessageE11MessageTypePKc
 5795 003a 45B0     		add	sp, sp, #276
 5796              		@ sp needed
 5797 003c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 5798              	.L1104:
 5799 0040 40F20119 		movw	r9, #257
 5800 0044 0A49     		ldr	r1, .L1105
 5801 0046 01A8     		add	r0, sp, #4
 5802              	.L1102:
 5803 0048 CDF80890 		str	r9, [sp, #8]
 5804 004c 0195     		str	r5, [sp, #4]
 5805 004e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5806 0052 01A8     		add	r0, sp, #4
 5807 0054 4246     		mov	r2, r8
 5808 0056 3946     		mov	r1, r7
 5809 0058 CDF80890 		str	r9, [sp, #8]
 5810 005c 0195     		str	r5, [sp, #4]
 5811 005e FFF7FEFF 		bl	_ZNK9StringRef5vcatfEPKcSt9__va_list
 5812 0062 E4E7     		b	.L1099
 5813              	.L1103:
 5814 0064 40F20119 		movw	r9, #257
ARM GAS  /tmp/cclDCdxf.s 			page 103


 5815 0068 01A8     		add	r0, sp, #4
 5816 006a 0249     		ldr	r1, .L1105+4
 5817 006c ECE7     		b	.L1102
 5818              	.L1106:
 5819 006e 00BF     		.align	2
 5820              	.L1105:
 5821 0070 08000000 		.word	.LC35
 5822 0074 00000000 		.word	.LC34
 5823              		.size	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list, .-_ZN8Platform8MessageFE11MessageTypePKc
 5824              		.section	.text._ZN8Platform8MessageFE11MessageTypePKcz,"ax",%progbits
 5825              		.align	1
 5826              		.p2align 2,,3
 5827              		.global	_ZN8Platform8MessageFE11MessageTypePKcz
 5828              		.syntax unified
 5829              		.thumb
 5830              		.thumb_func
 5831              		.fpu softvfp
 5832              		.type	_ZN8Platform8MessageFE11MessageTypePKcz, %function
 5833              	_ZN8Platform8MessageFE11MessageTypePKcz:
 5834              		@ args = 4, pretend = 8, frame = 8
 5835              		@ frame_needed = 0, uses_anonymous_args = 1
 5836 0000 0CB4     		push	{r2, r3}
 5837 0002 10B5     		push	{r4, lr}
 5838 0004 82B0     		sub	sp, sp, #8
 5839 0006 04AC     		add	r4, sp, #16
 5840 0008 54F8042B 		ldr	r2, [r4], #4
 5841 000c 2346     		mov	r3, r4
 5842 000e 0194     		str	r4, [sp, #4]
 5843 0010 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list
 5844 0014 02B0     		add	sp, sp, #8
 5845              		@ sp needed
 5846 0016 BDE81040 		pop	{r4, lr}
 5847 001a 02B0     		add	sp, sp, #8
 5848 001c 7047     		bx	lr
 5849              		.size	_ZN8Platform8MessageFE11MessageTypePKcz, .-_ZN8Platform8MessageFE11MessageTypePKcz
 5850 001e 00BF     		.section	.text._ZN8Platform4BeepEii,"ax",%progbits
 5851              		.align	1
 5852              		.p2align 2,,3
 5853              		.global	_ZN8Platform4BeepEii
 5854              		.syntax unified
 5855              		.thumb
 5856              		.thumb_func
 5857              		.fpu softvfp
 5858              		.type	_ZN8Platform4BeepEii, %function
 5859              	_ZN8Platform4BeepEii:
 5860              		@ args = 0, pretend = 0, frame = 0
 5861              		@ frame_needed = 0, uses_anonymous_args = 0
 5862 0000 00B5     		push	{lr}
 5863 0002 83B0     		sub	sp, sp, #12
 5864 0004 0092     		str	r2, [sp]
 5865 0006 0B46     		mov	r3, r1
 5866 0008 034A     		ldr	r2, .L1111
 5867 000a 0421     		movs	r1, #4
 5868 000c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5869 0010 03B0     		add	sp, sp, #12
 5870              		@ sp needed
 5871 0012 5DF804FB 		ldr	pc, [sp], #4
ARM GAS  /tmp/cclDCdxf.s 			page 104


 5872              	.L1112:
 5873 0016 00BF     		.align	2
 5874              	.L1111:
 5875 0018 00000000 		.word	.LC36
 5876              		.size	_ZN8Platform4BeepEii, .-_ZN8Platform4BeepEii
 5877              		.global	__aeabi_uldivmod
 5878              		.section	.text._ZN8Platform11SetDateTimeEl,"ax",%progbits
 5879              		.align	1
 5880              		.p2align 2,,3
 5881              		.global	_ZN8Platform11SetDateTimeEl
 5882              		.syntax unified
 5883              		.thumb
 5884              		.thumb_func
 5885              		.fpu softvfp
 5886              		.type	_ZN8Platform11SetDateTimeEl, %function
 5887              	_ZN8Platform11SetDateTimeEl:
 5888              		@ args = 0, pretend = 0, frame = 48
 5889              		@ frame_needed = 0, uses_anonymous_args = 0
 5890 0000 70B5     		push	{r4, r5, r6, lr}
 5891 0002 8EB0     		sub	sp, sp, #56
 5892 0004 0391     		str	r1, [sp, #12]
 5893 0006 0446     		mov	r4, r0
 5894 0008 05A9     		add	r1, sp, #20
 5895 000a 03A8     		add	r0, sp, #12
 5896 000c FFF7FEFF 		bl	gmtime_r
 5897 0010 0028     		cmp	r0, #0
 5898 0012 14BF     		ite	ne
 5899 0014 0125     		movne	r5, #1
 5900 0016 0025     		moveq	r5, #0
 5901 0018 27D0     		beq	.L1114
 5902 001a 039B     		ldr	r3, [sp, #12]
 5903 001c 144E     		ldr	r6, .L1119
 5904 001e C4F88835 		str	r3, [r4, #1416]
 5905 0022 FFF7FEFF 		bl	millis64
 5906 0026 4FF47A72 		mov	r2, #1000
 5907 002a 0023     		movs	r3, #0
 5908 002c FFF7FEFF 		bl	__aeabi_uldivmod
 5909 0030 4FF46162 		mov	r2, #3600
 5910 0034 0F4B     		ldr	r3, .L1119+4
 5911 0036 A3FB0013 		umull	r1, r3, r3, r0
 5912 003a DB0A     		lsrs	r3, r3, #11
 5913 003c 02FB1302 		mls	r2, r2, r3, r0
 5914 0040 A6FB00E1 		umull	lr, r1, r6, r0
 5915 0044 A6FB0262 		umull	r6, r2, r6, r2
 5916 0048 4909     		lsrs	r1, r1, #5
 5917 004a C1EB0111 		rsb	r1, r1, r1, lsl #4
 5918 004e A0EB8100 		sub	r0, r0, r1, lsl #2
 5919 0052 5209     		lsrs	r2, r2, #5
 5920 0054 0092     		str	r2, [sp]
 5921 0056 0190     		str	r0, [sp, #4]
 5922 0058 074A     		ldr	r2, .L1119+8
 5923 005a 8021     		movs	r1, #128
 5924 005c 2046     		mov	r0, r4
 5925 005e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5926 0062 FFF7FEFF 		bl	millis
 5927 0066 C4F88C05 		str	r0, [r4, #1420]
 5928              	.L1114:
ARM GAS  /tmp/cclDCdxf.s 			page 105


 5929 006a 2846     		mov	r0, r5
 5930 006c 0EB0     		add	sp, sp, #56
 5931              		@ sp needed
 5932 006e 70BD     		pop	{r4, r5, r6, pc}
 5933              	.L1120:
 5934              		.align	2
 5935              	.L1119:
 5936 0070 89888888 		.word	-2004318071
 5937 0074 C5B3A291 		.word	-1851608123
 5938 0078 00000000 		.word	.LC37
 5939              		.size	_ZN8Platform11SetDateTimeEl, .-_ZN8Platform11SetDateTimeEl
 5940              		.section	.text._ZN8Platform7MessageE11MessageTypePKc,"ax",%progbits
 5941              		.align	1
 5942              		.p2align 2,,3
 5943              		.global	_ZN8Platform7MessageE11MessageTypePKc
 5944              		.syntax unified
 5945              		.thumb
 5946              		.thumb_func
 5947              		.fpu softvfp
 5948              		.type	_ZN8Platform7MessageE11MessageTypePKc, %function
 5949              	_ZN8Platform7MessageE11MessageTypePKc:
 5950              		@ args = 0, pretend = 0, frame = 272
 5951              		@ frame_needed = 0, uses_anonymous_args = 0
 5952 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 5953 0004 11F4407F 		tst	r1, #768
 5954 0008 C4B0     		sub	sp, sp, #272
 5955 000a 1DD0     		beq	.L1127
 5956 000c 0C46     		mov	r4, r1
 5957 000e 0023     		movs	r3, #0
 5958 0010 9046     		mov	r8, r2
 5959 0012 40F20116 		movw	r6, #257
 5960 0016 0746     		mov	r7, r0
 5961 0018 0E4A     		ldr	r2, .L1128
 5962 001a 14F4807F 		tst	r4, #256
 5963 001e 0E49     		ldr	r1, .L1128+4
 5964 0020 03AD     		add	r5, sp, #12
 5965 0022 18BF     		it	ne
 5966 0024 1146     		movne	r1, r2
 5967 0026 01A8     		add	r0, sp, #4
 5968 0028 8DF80C30 		strb	r3, [sp, #12]
 5969 002c 0195     		str	r5, [sp, #4]
 5970 002e 0296     		str	r6, [sp, #8]
 5971 0030 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5972 0034 4146     		mov	r1, r8
 5973 0036 01A8     		add	r0, sp, #4
 5974 0038 0195     		str	r5, [sp, #4]
 5975 003a 0296     		str	r6, [sp, #8]
 5976 003c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 5977 0040 2A46     		mov	r2, r5
 5978 0042 3846     		mov	r0, r7
 5979 0044 24F44071 		bic	r1, r4, #768
 5980              	.L1127:
 5981 0048 FFF7FEFF 		bl	_ZN8Platform10RawMessageE11MessageTypePKc
 5982 004c 44B0     		add	sp, sp, #272
 5983              		@ sp needed
 5984 004e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 5985              	.L1129:
ARM GAS  /tmp/cclDCdxf.s 			page 106


 5986 0052 00BF     		.align	2
 5987              	.L1128:
 5988 0054 00000000 		.word	.LC34
 5989 0058 08000000 		.word	.LC35
 5990              		.size	_ZN8Platform7MessageE11MessageTypePKc, .-_ZN8Platform7MessageE11MessageTypePKc
 5991              		.section	.text._ZN8Platform12SetEmulatingE13Compatibility,"ax",%progbits
 5992              		.align	1
 5993              		.p2align 2,,3
 5994              		.global	_ZN8Platform12SetEmulatingE13Compatibility
 5995              		.syntax unified
 5996              		.thumb
 5997              		.thumb_func
 5998              		.fpu softvfp
 5999              		.type	_ZN8Platform12SetEmulatingE13Compatibility, %function
 6000              	_ZN8Platform12SetEmulatingE13Compatibility:
 6001              		@ args = 0, pretend = 0, frame = 0
 6002              		@ frame_needed = 0, uses_anonymous_args = 0
 6003              		@ link register save eliminated.
 6004 0000 0229     		cmp	r1, #2
 6005 0002 05D8     		bhi	.L1133
 6006 0004 0129     		cmp	r1, #1
 6007 0006 08BF     		it	eq
 6008 0008 0021     		moveq	r1, #0
 6009 000a 80F8A910 		strb	r1, [r0, #169]
 6010 000e 7047     		bx	lr
 6011              	.L1133:
 6012 0010 024A     		ldr	r2, .L1134
 6013 0012 40F2B511 		movw	r1, #437
 6014 0016 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 6015              	.L1135:
 6016 001a 00BF     		.align	2
 6017              	.L1134:
 6018 001c 00000000 		.word	.LC38
 6019              		.size	_ZN8Platform12SetEmulatingE13Compatibility, .-_ZN8Platform12SetEmulatingE13Compatibility
 6020              		.section	.text._ZN8Platform11DiagnosticsE11MessageType,"ax",%progbits
 6021              		.align	1
 6022              		.p2align 2,,3
 6023              		.global	_ZN8Platform11DiagnosticsE11MessageType
 6024              		.syntax unified
 6025              		.thumb
 6026              		.thumb_func
 6027              		.fpu softvfp
 6028              		.type	_ZN8Platform11DiagnosticsE11MessageType, %function
 6029              	_ZN8Platform11DiagnosticsE11MessageType:
 6030              		@ args = 0, pretend = 0, frame = 776
 6031              		@ frame_needed = 0, uses_anonymous_args = 0
 6032 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6033 0004 AC4A     		ldr	r2, .L1177
 6034 0006 ADF5497D 		sub	sp, sp, #804
 6035 000a 0446     		mov	r4, r0
 6036 000c 0F46     		mov	r7, r1
 6037 000e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6038 0012 FFF7FEFF 		bl	millis64
 6039 0016 4FF47A72 		mov	r2, #1000
 6040 001a 0023     		movs	r3, #0
 6041 001c FFF7FEFF 		bl	__aeabi_uldivmod
 6042 0020 0DF12009 		add	r9, sp, #32
ARM GAS  /tmp/cclDCdxf.s 			page 107


 6043 0024 4D46     		mov	r5, r9
 6044 0026 8046     		mov	r8, r0
 6045 0028 4FF4616E 		mov	lr, #3600
 6046 002c A34B     		ldr	r3, .L1177+4
 6047 002e A44E     		ldr	r6, .L1177+8
 6048 0030 A3FB003C 		umull	r3, ip, r3, r0
 6049 0034 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 6050 0036 4FEADC2C 		lsr	ip, ip, #11
 6051 003a 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 6052 003c 0EFB1C8E 		mls	lr, lr, ip, r8
 6053 0040 DFF8DCA2 		ldr	r10, .L1177+104
 6054 0044 AAFB083B 		umull	r3, fp, r10, r8
 6055 0048 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 6056 004c 85E80F00 		stm	r5, {r0, r1, r2, r3}
 6057 0050 AAFB0E3E 		umull	r3, lr, r10, lr
 6058 0054 9B4B     		ldr	r3, .L1177+12
 6059 0056 2046     		mov	r0, r4
 6060 0058 1A68     		ldr	r2, [r3]
 6061 005a 4FEA5B13 		lsr	r3, fp, #5
 6062 005e C2F30222 		ubfx	r2, r2, #8, #3
 6063 0062 59F82210 		ldr	r1, [r9, r2, lsl #2]
 6064 0066 C3EB0313 		rsb	r3, r3, r3, lsl #4
 6065 006a 4FEA5E12 		lsr	r2, lr, #5
 6066 006e A8EB8303 		sub	r3, r8, r3, lsl #2
 6067 0072 8DE80C00 		stm	sp, {r2, r3}
 6068 0076 0291     		str	r1, [sp, #8]
 6069 0078 6346     		mov	r3, ip
 6070 007a 3946     		mov	r1, r7
 6071 007c 924A     		ldr	r2, .L1177+16
 6072 007e 48AD     		add	r5, sp, #288
 6073 0080 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6074 0084 4FF40072 		mov	r2, #512
 6075 0088 0021     		movs	r1, #0
 6076 008a 2846     		mov	r0, r5
 6077 008c FFF7FEFF 		bl	memset
 6078 0090 4FF40072 		mov	r2, #512
 6079 0094 2946     		mov	r1, r5
 6080 0096 0020     		movs	r0, #0
 6081 0098 FFF7FEFF 		bl	_ZN15DueFlashStorage4readEmPvm
 6082 009c 4FF00309 		mov	r9, #3
 6083 00a0 4FF6FF72 		movw	r2, #65535
 6084              	.L1137:
 6085 00a4 4FEAC916 		lsl	r6, r9, #7
 6086 00a8 AB5B     		ldrh	r3, [r5, r6]
 6087 00aa 9342     		cmp	r3, r2
 6088 00ac 5AD1     		bne	.L1175
 6089 00ae 19F1FF39 		adds	r9, r9, #-1
 6090 00b2 F7D2     		bcs	.L1137
 6091              	.L1138:
 6092 00b4 854A     		ldr	r2, .L1177+20
 6093 00b6 3946     		mov	r1, r7
 6094 00b8 2046     		mov	r0, r4
 6095 00ba FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6096              	.L1147:
 6097 00be D4F8AC30 		ldr	r3, [r4, #172]
 6098 00c2 834A     		ldr	r2, .L1177+24
 6099 00c4 3946     		mov	r1, r7
ARM GAS  /tmp/cclDCdxf.s 			page 108


 6100 00c6 2046     		mov	r0, r4
 6101 00c8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6102 00cc D4F86805 		ldr	r0, [r4, #1384]
 6103 00d0 FFF7FEFF 		bl	_ZNK11MassStorage15GetNumFreeFilesEv
 6104 00d4 7F4A     		ldr	r2, .L1177+28
 6105 00d6 0346     		mov	r3, r0
 6106 00d8 3946     		mov	r1, r7
 6107 00da 2046     		mov	r0, r4
 6108 00dc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6109 00e0 0021     		movs	r1, #0
 6110 00e2 D4F86805 		ldr	r0, [r4, #1384]
 6111 00e6 FFF7FEFF 		bl	_ZNK11MassStorage14IsCardDetectedEj
 6112 00ea 7B49     		ldr	r1, .L1177+32
 6113 00ec 7B4B     		ldr	r3, .L1177+36
 6114 00ee 7C4A     		ldr	r2, .L1177+40
 6115 00f0 0028     		cmp	r0, #0
 6116 00f2 18BF     		it	ne
 6117 00f4 0B46     		movne	r3, r1
 6118 00f6 3946     		mov	r1, r7
 6119 00f8 2046     		mov	r0, r4
 6120 00fa FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6121 00fe FFF7FEFF 		bl	_ZN9FileStore27GetAndClearLongestWriteTimeEv
 6122 0102 FFF7FEFF 		bl	__aeabi_f2d
 6123 0106 774A     		ldr	r2, .L1177+44
 6124 0108 CDE90001 		strd	r0, [sp]
 6125 010c 3946     		mov	r1, r7
 6126 010e 2046     		mov	r0, r4
 6127 0110 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6128 0114 3946     		mov	r1, r7
 6129 0116 2046     		mov	r0, r4
 6130 0118 734A     		ldr	r2, .L1177+48
 6131 011a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6132 011e 2946     		mov	r1, r5
 6133 0120 04F5B160 		add	r0, r4, #1416
 6134 0124 FFF7FEFF 		bl	gmtime_r
 6135 0128 0028     		cmp	r0, #0
 6136 012a 00F09180 		beq	.L1149
 6137 012e A868     		ldr	r0, [r5, #8]
 6138 0130 6A69     		ldr	r2, [r5, #20]
 6139 0132 2B69     		ldr	r3, [r5, #16]
 6140 0134 6968     		ldr	r1, [r5, #4]
 6141 0136 2E68     		ldr	r6, [r5]
 6142 0138 0290     		str	r0, [sp, #8]
 6143 013a ED68     		ldr	r5, [r5, #12]
 6144 013c 0133     		adds	r3, r3, #1
 6145 013e 0093     		str	r3, [sp]
 6146 0140 0391     		str	r1, [sp, #12]
 6147 0142 02F26C73 		addw	r3, r2, #1900
 6148 0146 2046     		mov	r0, r4
 6149 0148 0496     		str	r6, [sp, #16]
 6150 014a 0195     		str	r5, [sp, #4]
 6151 014c 674A     		ldr	r2, .L1177+52
 6152 014e 3946     		mov	r1, r7
 6153 0150 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6154              	.L1150:
 6155 0154 3946     		mov	r1, r7
 6156 0156 6648     		ldr	r0, .L1177+56
ARM GAS  /tmp/cclDCdxf.s 			page 109


 6157 0158 FFF7FEFF 		bl	_ZN6RepRap6TimingE11MessageType
 6158 015c 0DF5497D 		add	sp, sp, #804
 6159              		@ sp needed
 6160 0160 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6161              	.L1175:
 6162 0164 47F60852 		movw	r2, #32008
 6163 0168 9342     		cmp	r3, r2
 6164 016a A3D1     		bne	.L1138
 6165 016c AB19     		adds	r3, r5, r6
 6166 016e 5B88     		ldrh	r3, [r3, #2]
 6167 0170 13F0F003 		ands	r3, r3, #240
 6168 0174 72D1     		bne	.L1176
 6169 0176 DFF8ACA1 		ldr	r10, .L1177+108
 6170              	.L1141:
 6171 017a 0022     		movs	r2, #0
 6172 017c AB19     		adds	r3, r5, r6
 6173 017e DB69     		ldr	r3, [r3, #28]
 6174 0180 8DF84020 		strb	r2, [sp, #64]
 6175 0184 002B     		cmp	r3, #0
 6176 0186 7CD0     		beq	.L1142
 6177 0188 06A8     		add	r0, sp, #24
 6178 018a 0693     		str	r3, [sp, #24]
 6179 018c FFF7FEFF 		bl	gmtime
 6180 0190 4168     		ldr	r1, [r0, #4]
 6181 0192 0369     		ldr	r3, [r0, #16]
 6182 0194 4269     		ldr	r2, [r0, #20]
 6183 0196 0291     		str	r1, [sp, #8]
 6184 0198 8168     		ldr	r1, [r0, #8]
 6185 019a 0133     		adds	r3, r3, #1
 6186 019c 0191     		str	r1, [sp, #4]
 6187 019e C168     		ldr	r1, [r0, #12]
 6188 01a0 02F26C72 		addw	r2, r2, #1900
 6189 01a4 0091     		str	r1, [sp]
 6190 01a6 10A8     		add	r0, sp, #64
 6191 01a8 5249     		ldr	r1, .L1177+60
 6192 01aa FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 6193              	.L1143:
 6194 01ae 05EB0608 		add	r8, r5, r6
 6195 01b2 B8F80230 		ldrh	r3, [r8, #2]
 6196 01b6 5049     		ldr	r1, .L1177+64
 6197 01b8 13F4004F 		tst	r3, #32768
 6198 01bc 4F4A     		ldr	r2, .L1177+68
 6199 01be 08BF     		it	eq
 6200 01c0 0A46     		moveq	r2, r1
 6201 01c2 4F49     		ldr	r1, .L1177+72
 6202 01c4 03F00F03 		and	r3, r3, #15
 6203 01c8 51F82310 		ldr	r1, [r1, r3, lsl #2]
 6204 01cc D8F80430 		ldr	r3, [r8, #4]
 6205 01d0 2046     		mov	r0, r4
 6206 01d2 8DE80404 		stm	sp, {r2, r10}
 6207 01d6 0291     		str	r1, [sp, #8]
 6208 01d8 0393     		str	r3, [sp, #12]
 6209 01da 4A4A     		ldr	r2, .L1177+76
 6210 01dc 10AB     		add	r3, sp, #64
 6211 01de 3946     		mov	r1, r7
 6212 01e0 CDF81090 		str	r9, [sp, #16]
 6213 01e4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
ARM GAS  /tmp/cclDCdxf.s 			page 110


 6214 01e8 D8F81800 		ldr	r0, [r8, #24]
 6215 01ec D8F81410 		ldr	r1, [r8, #20]
 6216 01f0 D8F81020 		ldr	r2, [r8, #16]
 6217 01f4 B8F80230 		ldrh	r3, [r8, #2]
 6218 01f8 0490     		str	r0, [sp, #16]
 6219 01fa D8F80800 		ldr	r0, [r8, #8]
 6220 01fe 0391     		str	r1, [sp, #12]
 6221 0200 0292     		str	r2, [sp, #8]
 6222 0202 D8F80C20 		ldr	r2, [r8, #12]
 6223 0206 3946     		mov	r1, r7
 6224 0208 8DE80500 		stm	sp, {r0, r2}
 6225 020c 3E4A     		ldr	r2, .L1177+80
 6226 020e 2046     		mov	r0, r4
 6227 0210 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6228 0214 D8F81830 		ldr	r3, [r8, #24]
 6229 0218 0133     		adds	r3, r3, #1
 6230 021a 3FF450AF 		beq	.L1147
 6231 021e 0023     		movs	r3, #0
 6232 0220 06F11C08 		add	r8, r6, #28
 6233 0224 DFF80091 		ldr	r9, .L1177+112
 6234 0228 7C36     		adds	r6, r6, #124
 6235 022a 8DF84030 		strb	r3, [sp, #64]
 6236 022e A844     		add	r8, r8, r5
 6237 0230 2E44     		add	r6, r6, r5
 6238              	.L1146:
 6239 0232 58F8042F 		ldr	r2, [r8, #4]!
 6240 0236 4946     		mov	r1, r9
 6241 0238 10A8     		add	r0, sp, #64
 6242 023a FFF7FEFF 		bl	_ZN6StringILj220EE4catfEPKcz
 6243 023e B045     		cmp	r8, r6
 6244 0240 F7D1     		bne	.L1146
 6245 0242 10AB     		add	r3, sp, #64
 6246 0244 314A     		ldr	r2, .L1177+84
 6247 0246 3946     		mov	r1, r7
 6248 0248 2046     		mov	r0, r4
 6249 024a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6250 024e 36E7     		b	.L1147
 6251              	.L1149:
 6252 0250 2046     		mov	r0, r4
 6253 0252 2F4A     		ldr	r2, .L1177+88
 6254 0254 3946     		mov	r1, r7
 6255 0256 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6256 025a 7BE7     		b	.L1150
 6257              	.L1176:
 6258 025c 202B     		cmp	r3, #32
 6259 025e 1CD0     		beq	.L1153
 6260 0260 302B     		cmp	r3, #48
 6261 0262 1DD0     		beq	.L1154
 6262 0264 402B     		cmp	r3, #64
 6263 0266 15D0     		beq	.L1155
 6264 0268 502B     		cmp	r3, #80
 6265 026a 1CD0     		beq	.L1156
 6266 026c 702B     		cmp	r3, #112
 6267 026e 1DD0     		beq	.L1157
 6268 0270 802B     		cmp	r3, #128
 6269 0272 1ED0     		beq	.L1158
 6270 0274 2749     		ldr	r1, .L1177+92
ARM GAS  /tmp/cclDCdxf.s 			page 111


 6271 0276 284A     		ldr	r2, .L1177+96
 6272 0278 902B     		cmp	r3, #144
 6273 027a 0CBF     		ite	eq
 6274 027c 8A46     		moveq	r10, r1
 6275 027e 9246     		movne	r10, r2
 6276 0280 7BE7     		b	.L1141
 6277              	.L1142:
 6278 0282 DD23     		movs	r3, #221
 6279 0284 06A8     		add	r0, sp, #24
 6280 0286 0793     		str	r3, [sp, #28]
 6281 0288 2449     		ldr	r1, .L1177+100
 6282 028a 10AB     		add	r3, sp, #64
 6283 028c 0693     		str	r3, [sp, #24]
 6284 028e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6285 0292 8CE7     		b	.L1143
 6286              	.L1155:
 6287 0294 DFF894A0 		ldr	r10, .L1177+116
 6288 0298 6FE7     		b	.L1141
 6289              	.L1153:
 6290 029a DFF894A0 		ldr	r10, .L1177+120
 6291 029e 6CE7     		b	.L1141
 6292              	.L1154:
 6293 02a0 DFF890A0 		ldr	r10, .L1177+124
 6294 02a4 69E7     		b	.L1141
 6295              	.L1156:
 6296 02a6 DFF890A0 		ldr	r10, .L1177+128
 6297 02aa 66E7     		b	.L1141
 6298              	.L1157:
 6299 02ac DFF88CA0 		ldr	r10, .L1177+132
 6300 02b0 63E7     		b	.L1141
 6301              	.L1158:
 6302 02b2 DFF88CA0 		ldr	r10, .L1177+136
 6303 02b6 60E7     		b	.L1141
 6304              	.L1178:
 6305              		.align	2
 6306              	.L1177:
 6307 02b8 A4000000 		.word	.LC52
 6308 02bc C5B3A291 		.word	-1851608123
 6309 02c0 00000000 		.word	.LANCHOR20
 6310 02c4 041A0E40 		.word	1074665988
 6311 02c8 B8000000 		.word	.LC54
 6312 02cc E4010000 		.word	.LC61
 6313 02d0 10020000 		.word	.LC62
 6314 02d4 24020000 		.word	.LC63
 6315 02d8 88000000 		.word	.LC50
 6316 02dc 94000000 		.word	.LC51
 6317 02e0 3C020000 		.word	.LC64
 6318 02e4 4C020000 		.word	.LC65
 6319 02e8 78020000 		.word	.LC66
 6320 02ec 84020000 		.word	.LC67
 6321 02f0 00000000 		.word	reprap
 6322 02f4 E4000000 		.word	.LC55
 6323 02f8 84000000 		.word	.LC49
 6324 02fc 78000000 		.word	.LC48
 6325 0300 00000000 		.word	moduleName
 6326 0304 10010000 		.word	.LC57
 6327 0308 70010000 		.word	.LC58
ARM GAS  /tmp/cclDCdxf.s 			page 112


 6328 030c D8010000 		.word	.LC60
 6329 0310 A4020000 		.word	.LC68
 6330 0314 64000000 		.word	.LC47
 6331 0318 5C000000 		.word	.LC46
 6332 031c 00010000 		.word	.LC56
 6333 0320 89888888 		.word	-2004318071
 6334 0324 04000000 		.word	.LC40
 6335 0328 D0010000 		.word	.LC59
 6336 032c 18000000 		.word	.LC42
 6337 0330 00000000 		.word	.LC39
 6338 0334 0C000000 		.word	.LC41
 6339 0338 2C000000 		.word	.LC43
 6340 033c 40000000 		.word	.LC44
 6341 0340 4C000000 		.word	.LC45
 6342              		.size	_ZN8Platform11DiagnosticsE11MessageType, .-_ZN8Platform11DiagnosticsE11MessageType
 6343              		.global	__aeabi_ui2d
 6344              		.global	__aeabi_ddiv
 6345              		.section	.text._ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi,"ax",%progbits
 6346              		.align	1
 6347              		.p2align 2,,3
 6348              		.global	_ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi
 6349              		.syntax unified
 6350              		.thumb
 6351              		.thumb_func
 6352              		.fpu softvfp
 6353              		.type	_ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi, %function
 6354              	_ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi:
 6355              		@ args = 0, pretend = 0, frame = 8
 6356              		@ frame_needed = 0, uses_anonymous_args = 0
 6357 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6358 0004 40F2EA34 		movw	r4, #1002
 6359 0008 A342     		cmp	r3, r4
 6360 000a 89B0     		sub	sp, sp, #36
 6361 000c 00F0E580 		beq	.L1181
 6362 0010 0792     		str	r2, [sp, #28]
 6363 0012 0446     		mov	r4, r0
 6364 0014 0A46     		mov	r2, r1
 6365 0016 16DD     		ble	.L1205
 6366 0018 B3F57B7F 		cmp	r3, #1004
 6367 001c 00F0CD80 		beq	.L1188
 6368 0020 C0F2E480 		blt	.L1189
 6369 0024 40F2ED32 		movw	r2, #1005
 6370 0028 9342     		cmp	r3, r2
 6371 002a 23D0     		beq	.L1190
 6372 002c 40F2EE32 		movw	r2, #1006
 6373 0030 9342     		cmp	r3, r2
 6374 0032 04D1     		bne	.L1180
 6375 0034 0122     		movs	r2, #1
 6376 0036 7C4B     		ldr	r3, .L1207+24
 6377 0038 80F86526 		strb	r2, [r0, #1637]
 6378 003c 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 6379              	.L1180:
 6380 003e 0020     		movs	r0, #0
 6381 0040 09B0     		add	sp, sp, #36
 6382              		@ sp needed
 6383 0042 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6384              	.L1205:
ARM GAS  /tmp/cclDCdxf.s 			page 113


 6385 0046 642B     		cmp	r3, #100
 6386 0048 00F0C180 		beq	.L1183
 6387 004c 40F39C80 		ble	.L1206
 6388 0050 662B     		cmp	r3, #102
 6389 0052 1FD0     		beq	.L1186
 6390 0054 40F2E932 		movw	r2, #1001
 6391 0058 9342     		cmp	r3, r2
 6392 005a F0D1     		bne	.L1180
 6393 005c 0123     		movs	r3, #1
 6394 005e 80F86536 		strb	r3, [r0, #1637]
 6395 0062 0020     		movs	r0, #0
 6396 0064 714A     		ldr	r2, .L1207+28
 6397 0066 1368     		ldr	r3, [r2]
 6398 0068 23F00203 		bic	r3, r3, #2
 6399 006c 1360     		str	r3, [r2]
 6400 006e 09B0     		add	sp, sp, #36
 6401              		@ sp needed
 6402 0070 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6403              	.L1190:
 6404 0074 0123     		movs	r3, #1
 6405 0076 6E4A     		ldr	r2, .L1207+32
 6406 0078 80F86536 		strb	r3, [r0, #1637]
 6407 007c 5369     		ldr	r3, [r2, #20]
 6408 007e 43F00803 		orr	r3, r3, #8
 6409 0082 5361     		str	r3, [r2, #20]
 6410              		.syntax unified
 6411              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 6412 0084 BFF35F8F 		dmb
 6413              	@ 0 "" 2
 6414              		.thumb
 6415              		.syntax unified
 6416 0088 0020     		movs	r0, #0
 6417 008a 6A4B     		ldr	r3, .L1207+36
 6418 008c 5B78     		ldrb	r3, [r3, #1]	@ zero_extendqisi2
 6419 008e 09B0     		add	sp, sp, #36
 6420              		@ sp needed
 6421 0090 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6422              	.L1186:
 6423 0094 0126     		movs	r6, #1
 6424 0096 0FF27819 		adr	r9, .L1207
 6425 009a D9E90089 		ldrd	r8, [r9]
 6426 009e 5EA5     		adr	r5, .L1207+8
 6427 00a0 D5E90045 		ldrd	r4, [r5]
 6428 00a4 4FF0000B 		mov	fp, #0
 6429 00a8 DFF8A8A1 		ldr	r10, .L1207+68
 6430              	.L1195:
 6431 00ac 08FB09F3 		mul	r3, r8, r9
 6432 00b0 A8FB0801 		umull	r0, r1, r8, r8
 6433 00b4 01EB4301 		add	r1, r1, r3, lsl #1
 6434 00b8 DAF81070 		ldr	r7, [r10, #16]
 6435 00bc FFF7FEFF 		bl	_Z7isqrt64y
 6436 00c0 4045     		cmp	r0, r8
 6437 00c2 18BF     		it	ne
 6438 00c4 0026     		movne	r6, #0
 6439 00c6 18F10108 		adds	r8, r8, #1
 6440 00ca 49F10009 		adc	r9, r9, #0
 6441 00ce DAF81030 		ldr	r3, [r10, #16]
ARM GAS  /tmp/cclDCdxf.s 			page 114


 6442 00d2 A945     		cmp	r9, r5
 6443 00d4 A3EB0703 		sub	r3, r3, r7
 6444 00d8 08BF     		it	eq
 6445 00da A045     		cmpeq	r8, r4
 6446 00dc 9B44     		add	fp, fp, r3
 6447 00de E5D1     		bne	.L1195
 6448 00e0 4AF2C544 		movw	r4, #42181
 6449 00e4 0025     		movs	r5, #0
 6450 00e6 0127     		movs	r7, #1
 6451 00e8 4FF0000A 		mov	r10, #0
 6452 00ec B146     		mov	r9, r6
 6453 00ee DFF86481 		ldr	r8, .L1207+68
 6454              	.L1197:
 6455 00f2 04FB05F3 		mul	r3, r4, r5
 6456 00f6 A4FB0401 		umull	r0, r1, r4, r4
 6457 00fa 01EB4301 		add	r1, r1, r3, lsl #1
 6458 00fe D8F81060 		ldr	r6, [r8, #16]
 6459 0102 FFF7FEFF 		bl	_Z7isqrt64y
 6460 0106 D8F81030 		ldr	r3, [r8, #16]
 6461 010a 4AF22952 		movw	r2, #42281
 6462 010e 9B1B     		subs	r3, r3, r6
 6463 0110 9A44     		add	r10, r10, r3
 6464 0112 0023     		movs	r3, #0
 6465 0114 A042     		cmp	r0, r4
 6466 0116 18BF     		it	ne
 6467 0118 0027     		movne	r7, #0
 6468 011a 0134     		adds	r4, r4, #1
 6469 011c 45F10005 		adc	r5, r5, #0
 6470 0120 9D42     		cmp	r5, r3
 6471 0122 08BF     		it	eq
 6472 0124 9442     		cmpeq	r4, r2
 6473 0126 E4D1     		bne	.L1197
 6474 0128 42F21078 		movw	r8, #10000
 6475 012c 08FB0BF0 		mul	r0, r8, fp
 6476 0130 FFF7FEFF 		bl	__aeabi_ui2d
 6477 0134 3AA3     		adr	r3, .L1207+16
 6478 0136 D3E90023 		ldrd	r2, [r3]
 6479 013a FFF7FEFF 		bl	__aeabi_ddiv
 6480 013e 0446     		mov	r4, r0
 6481 0140 08FB0AF0 		mul	r0, r8, r10
 6482 0144 0D46     		mov	r5, r1
 6483 0146 FFF7FEFF 		bl	__aeabi_ui2d
 6484 014a 35A3     		adr	r3, .L1207+16
 6485 014c D3E90023 		ldrd	r2, [r3]
 6486 0150 FFF7FEFF 		bl	__aeabi_ddiv
 6487 0154 DFF80081 		ldr	r8, .L1207+72
 6488 0158 374B     		ldr	r3, .L1207+40
 6489 015a CDE90201 		strd	r0, [sp, #8]
 6490 015e B9F1000F 		cmp	r9, #0
 6491 0162 14BF     		ite	ne
 6492 0164 4646     		movne	r6, r8
 6493 0166 1E46     		moveq	r6, r3
 6494 0168 002F     		cmp	r7, #0
 6495 016a 14BF     		ite	ne
 6496 016c 4746     		movne	r7, r8
 6497 016e 1F46     		moveq	r7, r3
 6498 0170 2246     		mov	r2, r4
ARM GAS  /tmp/cclDCdxf.s 			page 115


 6499 0172 2B46     		mov	r3, r5
 6500 0174 0798     		ldr	r0, [sp, #28]
 6501 0176 0096     		str	r6, [sp]
 6502 0178 0497     		str	r7, [sp, #16]
 6503 017a 3049     		ldr	r1, .L1207+44
 6504 017c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6505 0180 0020     		movs	r0, #0
 6506 0182 09B0     		add	sp, sp, #36
 6507              		@ sp needed
 6508 0184 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6509              	.L1206:
 6510 0188 012B     		cmp	r3, #1
 6511 018a 7FF458AF 		bne	.L1180
 6512 018e 0021     		movs	r1, #0
 6513 0190 D0F86805 		ldr	r0, [r0, #1384]
 6514 0194 958E     		ldrh	r5, [r2, #52]
 6515 0196 FFF7FEFF 		bl	_ZNK11MassStorage14IsCardDetectedEj
 6516 019a 88BB     		cbnz	r0, .L1192
 6517 019c 284A     		ldr	r2, .L1207+48
 6518 019e 45F48071 		orr	r1, r5, #256
 6519 01a2 2046     		mov	r0, r4
 6520 01a4 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6521 01a8 264A     		ldr	r2, .L1207+52
 6522              	.L1193:
 6523 01aa 2046     		mov	r0, r4
 6524 01ac 2946     		mov	r1, r5
 6525 01ae FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6526 01b2 0020     		movs	r0, #0
 6527 01b4 09B0     		add	sp, sp, #36
 6528              		@ sp needed
 6529 01b6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6530              	.L1188:
 6531 01ba 0120     		movs	r0, #1
 6532 01bc 0021     		movs	r1, #0
 6533 01be 84F86506 		strb	r0, [r4, #1637]
 6534 01c2 FFF7FEFF 		bl	_ZN6RepRap8DoDivideEmm
 6535 01c6 0020     		movs	r0, #0
 6536 01c8 09B0     		add	sp, sp, #36
 6537              		@ sp needed
 6538 01ca BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6539              	.L1183:
 6540 01ce FFF7FEFF 		bl	_ZN3DDA10PrintMovesEv
 6541 01d2 0020     		movs	r0, #0
 6542 01d4 09B0     		add	sp, sp, #36
 6543              		@ sp needed
 6544 01d6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6545              	.L1181:
 6546 01da 0122     		movs	r2, #1
 6547 01dc C0F87835 		str	r3, [r0, #1400]
 6548 01e0 80F86526 		strb	r2, [r0, #1637]
 6549 01e4 0020     		movs	r0, #0
 6550 01e6 09B0     		add	sp, sp, #36
 6551              		@ sp needed
 6552 01e8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6553              	.L1189:
 6554 01ec 0123     		movs	r3, #1
 6555 01ee 1648     		ldr	r0, .L1207+56
ARM GAS  /tmp/cclDCdxf.s 			page 116


 6556 01f0 84F86536 		strb	r3, [r4, #1637]
 6557 01f4 FFF7FEFF 		bl	debugPrintf
 6558 01f8 0020     		movs	r0, #0
 6559 01fa 09B0     		add	sp, sp, #36
 6560              		@ sp needed
 6561 01fc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6562              	.L1192:
 6563 0200 124A     		ldr	r2, .L1207+60
 6564 0202 2946     		mov	r1, r5
 6565 0204 2046     		mov	r0, r4
 6566 0206 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6567 020a 114A     		ldr	r2, .L1207+64
 6568 020c CDE7     		b	.L1193
 6569              	.L1208:
 6570 020e 00BF     		.align	3
 6571              	.L1207:
 6572 0210 3DAC6572 		.word	1919265853
 6573 0214 00000000 		.word	0
 6574 0218 A1AC6572 		.word	1919265953
 6575 021c 00000000 		.word	0
 6576 0220 00000000 		.word	0
 6577 0224 F4062441 		.word	1092880116
 6578 0228 00002020 		.word	538968064
 6579 022c 10E000E0 		.word	-536813552
 6580 0230 00ED00E0 		.word	-536810240
 6581 0234 00000000 		.word	.LANCHOR21
 6582 0238 40000000 		.word	.LC72
 6583 023c 8C000000 		.word	.LC76
 6584 0240 48000000 		.word	.LC73
 6585 0244 00000000 		.word	.LC69
 6586 0248 78000000 		.word	.LC75
 6587 024c 60000000 		.word	.LC74
 6588 0250 28000000 		.word	.LC70
 6589 0254 00400840 		.word	1074282496
 6590 0258 3C000000 		.word	.LC71
 6591              		.size	_ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi, .-_ZN8Platform14DiagnosticTestER11
 6592              		.section	.text._ZN8Platform9SendAlertE11MessageTypePKcS2_ifm,"ax",%progbits
 6593              		.align	1
 6594              		.p2align 2,,3
 6595              		.global	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm
 6596              		.syntax unified
 6597              		.thumb
 6598              		.thumb_func
 6599              		.fpu softvfp
 6600              		.type	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm, %function
 6601              	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm:
 6602              		@ args = 12, pretend = 0, frame = 0
 6603              		@ frame_needed = 0, uses_anonymous_args = 0
 6604 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6605 0004 11F0140F 		tst	r1, #20
 6606 0008 82B0     		sub	sp, sp, #8
 6607 000a 9046     		mov	r8, r2
 6608 000c 1E46     		mov	r6, r3
 6609 000e 0C46     		mov	r4, r1
 6610 0010 0746     		mov	r7, r0
 6611 0012 089D     		ldr	r5, [sp, #32]
 6612 0014 099B     		ldr	r3, [sp, #36]	@ float
ARM GAS  /tmp/cclDCdxf.s 			page 117


 6613 0016 0A9A     		ldr	r2, [sp, #40]
 6614 0018 11D1     		bne	.L1224
 6615              	.L1210:
 6616 001a 14F02104 		ands	r4, r4, #33
 6617 001e 0BD0     		beq	.L1209
 6618 0020 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 6619 0022 ABB9     		cbnz	r3, .L1225
 6620              	.L1213:
 6621 0024 4346     		mov	r3, r8
 6622 0026 144A     		ldr	r2, .L1228
 6623 0028 2146     		mov	r1, r4
 6624 002a 3846     		mov	r0, r7
 6625 002c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6626 0030 022D     		cmp	r5, #2
 6627 0032 1CD0     		beq	.L1226
 6628 0034 032D     		cmp	r5, #3
 6629 0036 12D0     		beq	.L1227
 6630              	.L1209:
 6631 0038 02B0     		add	sp, sp, #8
 6632              		@ sp needed
 6633 003a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6634              	.L1224:
 6635 003e 0192     		str	r2, [sp, #4]
 6636 0040 0093     		str	r3, [sp]	@ float
 6637 0042 3246     		mov	r2, r6
 6638 0044 2B46     		mov	r3, r5
 6639 0046 4146     		mov	r1, r8
 6640 0048 0C48     		ldr	r0, .L1228+4
 6641 004a FFF7FEFF 		bl	_ZN6RepRap8SetAlertEPKcS1_ifm
 6642 004e E4E7     		b	.L1210
 6643              	.L1225:
 6644 0050 3346     		mov	r3, r6
 6645 0052 0B4A     		ldr	r2, .L1228+8
 6646 0054 2146     		mov	r1, r4
 6647 0056 3846     		mov	r0, r7
 6648 0058 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6649 005c E2E7     		b	.L1213
 6650              	.L1227:
 6651 005e 2146     		mov	r1, r4
 6652 0060 3846     		mov	r0, r7
 6653 0062 084A     		ldr	r2, .L1228+12
 6654              	.L1223:
 6655 0064 02B0     		add	sp, sp, #8
 6656              		@ sp needed
 6657 0066 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 6658 006a FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 6659              	.L1226:
 6660 006e 2146     		mov	r1, r4
 6661 0070 3846     		mov	r0, r7
 6662 0072 054A     		ldr	r2, .L1228+16
 6663 0074 F6E7     		b	.L1223
 6664              	.L1229:
 6665 0076 00BF     		.align	2
 6666              	.L1228:
 6667 0078 08000000 		.word	.LC78
 6668 007c 00000000 		.word	reprap
 6669 0080 00000000 		.word	.LC77
ARM GAS  /tmp/cclDCdxf.s 			page 118


 6670 0084 24000000 		.word	.LC80
 6671 0088 0C000000 		.word	.LC79
 6672              		.size	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm, .-_ZN8Platform9SendAlertE11MessageTypePKcS2_i
 6673              		.section	.text._ZN8Platform13FlushMessagesEv,"ax",%progbits
 6674              		.align	1
 6675              		.p2align 2,,3
 6676              		.global	_ZN8Platform13FlushMessagesEv
 6677              		.syntax unified
 6678              		.thumb
 6679              		.thumb_func
 6680              		.fpu softvfp
 6681              		.type	_ZN8Platform13FlushMessagesEv, %function
 6682              	_ZN8Platform13FlushMessagesEv:
 6683              		@ args = 0, pretend = 0, frame = 16
 6684              		@ frame_needed = 0, uses_anonymous_args = 0
 6685 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 6686 0002 85B0     		sub	sp, sp, #20
 6687 0004 0446     		mov	r4, r0
 6688 0006 FFF7FEFF 		bl	_ZN8Platform16FlushAuxMessagesEv
 6689 000a 04F26451 		addw	r1, r4, #1380
 6690 000e 4FF0FF32 		mov	r2, #-1
 6691 0012 0546     		mov	r5, r0
 6692 0014 04F5AA64 		add	r4, r4, #1360
 6693 0018 02A8     		add	r0, sp, #8
 6694 001a FFF7FEFF 		bl	_ZN11MutexLockerC1ERK5Mutexm
 6695 001e 2046     		mov	r0, r4
 6696 0020 FFF7FEFF 		bl	_ZNVK11OutputStack12GetFirstItemEv
 6697 0024 0190     		str	r0, [sp, #4]
 6698 0026 18B3     		cbz	r0, .L1232
 6699 0028 2448     		ldr	r0, .L1246
 6700 002a FFF7FEFF 		bl	_ZNK9SerialCDCcvbEv
 6701 002e 60B3     		cbz	r0, .L1244
 6702 0030 2248     		ldr	r0, .L1246
 6703 0032 FFF7FEFF 		bl	_ZNK9SerialCDC8canWriteEv
 6704 0036 019E     		ldr	r6, [sp, #4]
 6705 0038 D6F80C21 		ldr	r2, [r6, #268]
 6706 003c D6F81031 		ldr	r3, [r6, #272]
 6707 0040 D71A     		subs	r7, r2, r3
 6708 0042 8742     		cmp	r7, r0
 6709 0044 28BF     		it	cs
 6710 0046 0746     		movcs	r7, r0
 6711 0048 4FBB     		cbnz	r7, .L1245
 6712              	.L1234:
 6713 004a 9A42     		cmp	r2, r3
 6714 004c 07D0     		beq	.L1235
 6715 004e FFF7FEFF 		bl	millis
 6716 0052 B368     		ldr	r3, [r6, #8]
 6717 0054 C01A     		subs	r0, r0, r3
 6718 0056 B0F57A7F 		cmp	r0, #1000
 6719 005a 09D9     		bls	.L1232
 6720 005c 019E     		ldr	r6, [sp, #4]
 6721              	.L1235:
 6722 005e 3046     		mov	r0, r6
 6723 0060 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 6724 0064 0346     		mov	r3, r0
 6725 0066 2046     		mov	r0, r4
 6726 0068 1946     		mov	r1, r3
ARM GAS  /tmp/cclDCdxf.s 			page 119


 6727 006a 0193     		str	r3, [sp, #4]
 6728 006c FFF7FEFF 		bl	_ZNV11OutputStack12SetFirstItemEP12OutputBuffer
 6729              	.L1232:
 6730 0070 2046     		mov	r0, r4
 6731 0072 FFF7FEFF 		bl	_ZNVK11OutputStack12GetFirstItemEv
 6732 0076 0446     		mov	r4, r0
 6733 0078 02A8     		add	r0, sp, #8
 6734 007a FFF7FEFF 		bl	_ZN11MutexLockerD1Ev
 6735 007e 5DB9     		cbnz	r5, .L1238
 6736 0080 201C     		adds	r0, r4, #0
 6737 0082 18BF     		it	ne
 6738 0084 0120     		movne	r0, #1
 6739 0086 05B0     		add	sp, sp, #20
 6740              		@ sp needed
 6741 0088 F0BD     		pop	{r4, r5, r6, r7, pc}
 6742              	.L1244:
 6743 008a 01A8     		add	r0, sp, #4
 6744 008c FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 6745 0090 2046     		mov	r0, r4
 6746 0092 FFF7FEFF 		bl	_ZNV11OutputStack3PopEv
 6747 0096 EBE7     		b	.L1232
 6748              	.L1238:
 6749 0098 0120     		movs	r0, #1
 6750 009a 05B0     		add	sp, sp, #20
 6751              		@ sp needed
 6752 009c F0BD     		pop	{r4, r5, r6, r7, pc}
 6753              	.L1245:
 6754 009e 3046     		mov	r0, r6
 6755 00a0 3946     		mov	r1, r7
 6756 00a2 FFF7FEFF 		bl	_ZN12OutputBuffer4ReadEj
 6757 00a6 3A46     		mov	r2, r7
 6758 00a8 0146     		mov	r1, r0
 6759 00aa 0448     		ldr	r0, .L1246
 6760 00ac FFF7FEFF 		bl	_ZN9SerialCDC5writeEPKhj
 6761 00b0 019E     		ldr	r6, [sp, #4]
 6762 00b2 D6F80C21 		ldr	r2, [r6, #268]
 6763 00b6 D6F81031 		ldr	r3, [r6, #272]
 6764 00ba C6E7     		b	.L1234
 6765              	.L1247:
 6766              		.align	2
 6767              	.L1246:
 6768 00bc 00000000 		.word	SerialUSB
 6769              		.size	_ZN8Platform13FlushMessagesEv, .-_ZN8Platform13FlushMessagesEv
 6770              		.section	.text._ZN8Platform14UpdateFirmwareEv,"ax",%progbits
 6771              		.align	1
 6772              		.p2align 2,,3
 6773              		.global	_ZN8Platform14UpdateFirmwareEv
 6774              		.syntax unified
 6775              		.thumb
 6776              		.thumb_func
 6777              		.fpu softvfp
 6778              		.type	_ZN8Platform14UpdateFirmwareEv, %function
 6779              	_ZN8Platform14UpdateFirmwareEv:
 6780              		@ args = 0, pretend = 0, frame = 256
 6781              		@ frame_needed = 0, uses_anonymous_args = 0
 6782 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6783 0004 0023     		movs	r3, #0
ARM GAS  /tmp/cclDCdxf.s 			page 120


 6784 0006 C3B0     		sub	sp, sp, #268
 6785 0008 8246     		mov	r10, r0
 6786 000a 8D4A     		ldr	r2, .L1279
 6787 000c D0F86805 		ldr	r0, [r0, #1384]
 6788 0010 8C49     		ldr	r1, .L1279+4
 6789 0012 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 6790 0016 0028     		cmp	r0, #0
 6791 0018 00F00081 		beq	.L1275
 6792 001c 8046     		mov	r8, r0
 6793 001e 8A48     		ldr	r0, .L1279+8
 6794 0020 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 6795 0024 4FF47024 		mov	r4, #983040
 6796 0028 884E     		ldr	r6, .L1279+12
 6797 002a 894F     		ldr	r7, .L1279+16
 6798 002c DFF86492 		ldr	r9, .L1279+84
 6799 0030 DFF864B2 		ldr	fp, .L1279+88
 6800 0034 16E0     		b	.L1256
 6801              	.L1263:
 6802 0036 4B46     		mov	r3, r9
 6803              	.L1253:
 6804 0038 0122     		movs	r2, #1
 6805 003a 3A70     		strb	r2, [r7]
 6806              		.syntax unified
 6807              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 6808 003c BFF35F8F 		dmb
 6809              	@ 0 "" 2
 6810              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 6811 0040 62B6     		cpsie i
 6812              	@ 0 "" 2
 6813              		.thumb
 6814              		.syntax unified
 6815 0042 0028     		cmp	r0, #0
 6816 0044 47D1     		bne	.L1276
 6817              	.L1254:
 6818 0046 2A46     		mov	r2, r5
 6819 0048 02A9     		add	r1, sp, #8
 6820 004a 2046     		mov	r0, r4
 6821 004c FFF7FEFF 		bl	memcmp
 6822 0050 0028     		cmp	r0, #0
 6823 0052 40F0D980 		bne	.L1277
 6824 0056 7F4B     		ldr	r3, .L1279+20
 6825 0058 04F58074 		add	r4, r4, #256
 6826 005c 9C42     		cmp	r4, r3
 6827 005e 06F58076 		add	r6, r6, #256
 6828 0062 68D0     		beq	.L1278
 6829              	.L1256:
 6830 0064 4FF48072 		mov	r2, #256
 6831 0068 02A9     		add	r1, sp, #8
 6832 006a 4046     		mov	r0, r8
 6833 006c FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 6834 0070 051E     		subs	r5, r0, #0
 6835 0072 3BDD     		ble	.L1251
 6836 0074 B5F5807F 		cmp	r5, #256
 6837 0078 06D0     		beq	.L1252
 6838 007a 02AB     		add	r3, sp, #8
 6839 007c C5F58072 		rsb	r2, r5, #256
 6840 0080 0021     		movs	r1, #0
ARM GAS  /tmp/cclDCdxf.s 			page 121


 6841 0082 5819     		adds	r0, r3, r5
 6842 0084 FFF7FEFF 		bl	memset
 6843              	.L1252:
 6844              		.syntax unified
 6845              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 6846 0088 72B6     		cpsid i
 6847              	@ 0 "" 2
 6848              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 6849 008a BFF35F8F 		dmb
 6850              	@ 0 "" 2
 6851              		.thumb
 6852              		.syntax unified
 6853 008e 4FF0000E 		mov	lr, #0
 6854 0092 3146     		mov	r1, r6
 6855 0094 2046     		mov	r0, r4
 6856 0096 7346     		mov	r3, lr
 6857 0098 7246     		mov	r2, lr
 6858 009a 87F800E0 		strb	lr, [r7]
 6859 009e FFF7FEFF 		bl	flash_unlock
 6860 00a2 0028     		cmp	r0, #0
 6861 00a4 C7D1     		bne	.L1263
 6862 00a6 0123     		movs	r3, #1
 6863 00a8 4FF48072 		mov	r2, #256
 6864 00ac 02A9     		add	r1, sp, #8
 6865 00ae 2046     		mov	r0, r4
 6866 00b0 FFF7FEFF 		bl	flash_write
 6867 00b4 0028     		cmp	r0, #0
 6868 00b6 40F0C080 		bne	.L1264
 6869 00ba 0346     		mov	r3, r0
 6870 00bc 0246     		mov	r2, r0
 6871 00be 3146     		mov	r1, r6
 6872 00c0 2046     		mov	r0, r4
 6873 00c2 FFF7FEFF 		bl	flash_lock
 6874 00c6 0122     		movs	r2, #1
 6875 00c8 5B46     		mov	r3, fp
 6876 00ca 3A70     		strb	r2, [r7]
 6877              		.syntax unified
 6878              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 6879 00cc BFF35F8F 		dmb
 6880              	@ 0 "" 2
 6881              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 6882 00d0 62B6     		cpsie i
 6883              	@ 0 "" 2
 6884              		.thumb
 6885              		.syntax unified
 6886 00d2 0028     		cmp	r0, #0
 6887 00d4 B7D0     		beq	.L1254
 6888              	.L1276:
 6889 00d6 8DE81100 		stm	sp, {r0, r4}
 6890 00da 5F4A     		ldr	r2, .L1279+24
 6891 00dc 5046     		mov	r0, r10
 6892 00de 40F20911 		movw	r1, #265
 6893 00e2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6894 00e6 43B0     		add	sp, sp, #268
 6895              		@ sp needed
 6896 00e8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6897              	.L1251:
ARM GAS  /tmp/cclDCdxf.s 			page 122


 6898 00ec 0025     		movs	r5, #0
 6899 00ee 0295     		str	r5, [sp, #8]
 6900              		.syntax unified
 6901              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 6902 00f0 72B6     		cpsid i
 6903              	@ 0 "" 2
 6904              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 6905 00f2 BFF35F8F 		dmb
 6906              	@ 0 "" 2
 6907              		.thumb
 6908              		.syntax unified
 6909 00f6 2B46     		mov	r3, r5
 6910 00f8 2A46     		mov	r2, r5
 6911 00fa 3146     		mov	r1, r6
 6912 00fc 2046     		mov	r0, r4
 6913 00fe 3D70     		strb	r5, [r7]
 6914 0100 FFF7FEFF 		bl	flash_unlock
 6915 0104 02A9     		add	r1, sp, #8
 6916 0106 2046     		mov	r0, r4
 6917 0108 0123     		movs	r3, #1
 6918 010a 4FF48072 		mov	r2, #256
 6919 010e FFF7FEFF 		bl	flash_write
 6920 0112 2B46     		mov	r3, r5
 6921 0114 2A46     		mov	r2, r5
 6922 0116 3146     		mov	r1, r6
 6923 0118 2046     		mov	r0, r4
 6924 011a FFF7FEFF 		bl	flash_lock
 6925 011e 0123     		movs	r3, #1
 6926 0120 3B70     		strb	r3, [r7]
 6927              		.syntax unified
 6928              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 6929 0122 BFF35F8F 		dmb
 6930              	@ 0 "" 2
 6931              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 6932 0126 62B6     		cpsie i
 6933              	@ 0 "" 2
 6934              		.thumb
 6935              		.syntax unified
 6936 0128 4A4B     		ldr	r3, .L1279+20
 6937 012a 04F58074 		add	r4, r4, #256
 6938 012e 9C42     		cmp	r4, r3
 6939 0130 06F58076 		add	r6, r6, #256
 6940 0134 96D1     		bne	.L1256
 6941              	.L1278:
 6942 0136 4046     		mov	r0, r8
 6943 0138 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6944 013c 474A     		ldr	r2, .L1279+28
 6945 013e 0421     		movs	r1, #4
 6946 0140 5046     		mov	r0, r10
 6947 0142 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6948 0146 464A     		ldr	r2, .L1279+32
 6949 0148 0121     		movs	r1, #1
 6950 014a 5046     		mov	r0, r10
 6951 014c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6952 0150 FFF7FEFF 		bl	millis
 6953 0154 0446     		mov	r4, r0
 6954              	.L1259:
ARM GAS  /tmp/cclDCdxf.s 			page 123


 6955 0156 5046     		mov	r0, r10
 6956 0158 FFF7FEFF 		bl	_ZN8Platform13FlushMessagesEv
 6957 015c 0028     		cmp	r0, #0
 6958 015e 65D1     		bne	.L1257
 6959              	.L1260:
 6960 0160 3948     		ldr	r0, .L1279+8
 6961 0162 FFF7FEFF 		bl	_ZN6RepRap4ExitEv
 6962 0166 0422     		movs	r2, #4
 6963 0168 3E4B     		ldr	r3, .L1279+36
 6964 016a 1A60     		str	r2, [r3]
 6965              		.syntax unified
 6966              	@ 330 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 6967 016c 72B6     		cpsid i
 6968              	@ 0 "" 2
 6969              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 6970 016e BFF35F8F 		dmb
 6971              	@ 0 "" 2
 6972              		.thumb
 6973              		.syntax unified
 6974 0172 0023     		movs	r3, #0
 6975 0174 4FF0FF31 		mov	r1, #-1
 6976 0178 3B70     		strb	r3, [r7]
 6977              	.L1258:
 6978 017a 9A00     		lsls	r2, r3, #2
 6979 017c 02F16042 		add	r2, r2, #-536870912
 6980 0180 0133     		adds	r3, r3, #1
 6981 0182 02F56142 		add	r2, r2, #57600
 6982 0186 082B     		cmp	r3, #8
 6983 0188 C2F88010 		str	r1, [r2, #128]
 6984 018c C2F88011 		str	r1, [r2, #384]
 6985 0190 F3D1     		bne	.L1258
 6986 0192 4FF47023 		mov	r3, #983040
 6987 0196 344A     		ldr	r2, .L1279+40
 6988 0198 1D68     		ldr	r5, [r3]
 6989 019a 344B     		ldr	r3, .L1279+44
 6990 019c 5164     		str	r1, [r2, #68]
 6991 019e 344E     		ldr	r6, .L1279+48
 6992 01a0 344C     		ldr	r4, .L1279+52
 6993 01a2 3548     		ldr	r0, .L1279+56
 6994 01a4 05F12002 		add	r2, r5, #32
 6995 01a8 9A42     		cmp	r2, r3
 6996 01aa 7164     		str	r1, [r6, #68]
 6997 01ac 6164     		str	r1, [r4, #68]
 6998 01ae 4164     		str	r1, [r0, #68]
 6999 01b0 0AD8     		bhi	.L1261
 7000 01b2 324C     		ldr	r4, .L1279+60
 7001 01b4 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 7002 01b6 2860     		str	r0, [r5]	@ unaligned
 7003 01b8 6960     		str	r1, [r5, #4]	@ unaligned
 7004 01ba AA60     		str	r2, [r5, #8]	@ unaligned
 7005 01bc EB60     		str	r3, [r5, #12]	@ unaligned
 7006 01be 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 7007 01c0 2861     		str	r0, [r5, #16]	@ unaligned
 7008 01c2 6961     		str	r1, [r5, #20]	@ unaligned
 7009 01c4 AA61     		str	r2, [r5, #24]	@ unaligned
 7010 01c6 EB61     		str	r3, [r5, #28]	@ unaligned
 7011              	.L1261:
ARM GAS  /tmp/cclDCdxf.s 			page 124


 7012 01c8 2D48     		ldr	r0, .L1279+64
 7013 01ca FFF7FEFF 		bl	wdt_restart
 7014              		.syntax unified
 7015              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 7016 01ce BFF34F8F 		dsb
 7017              	@ 0 "" 2
 7018              	@ 434 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 7019 01d2 BFF36F8F 		isb
 7020              	@ 0 "" 2
 7021              		.thumb
 7022              		.syntax unified
 7023 01d6 4FF47022 		mov	r2, #983040
 7024 01da 2A4B     		ldr	r3, .L1279+68
 7025 01dc 9A60     		str	r2, [r3, #8]
 7026              		.syntax unified
 7027              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 7028 01de BFF34F8F 		dsb
 7029              	@ 0 "" 2
 7030              	@ 434 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 7031 01e2 BFF36F8F 		isb
 7032              	@ 0 "" 2
 7033              		.thumb
 7034              		.syntax unified
 7035 01e6 0123     		movs	r3, #1
 7036 01e8 3B70     		strb	r3, [r7]
 7037              		.syntax unified
 7038              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 7039 01ea BFF35F8F 		dmb
 7040              	@ 0 "" 2
 7041              	@ 319 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmFunc.h" 1
 7042 01ee 62B6     		cpsie i
 7043              	@ 0 "" 2
 7044              	@ 1097 "../src/Platform.cpp" 1
 7045 01f0 1346     		mov r3, r2
 7046              	@ 0 "" 2
 7047              	@ 1105 "../src/Platform.cpp" 1
 7048 01f2 D3F800D0 		ldr sp, [r3]
 7049              	@ 0 "" 2
 7050              	@ 1107 "../src/Platform.cpp" 1
 7051 01f6 BFF36F8F 		isb
 7052              	@ 0 "" 2
 7053              	@ 1108 "../src/Platform.cpp" 1
 7054 01fa 5968     		ldr r1, [r3, #4]
 7055              	@ 0 "" 2
 7056              	@ 1109 "../src/Platform.cpp" 1
 7057 01fc 41F00101 		orr r1, r1, #1
 7058              	@ 0 "" 2
 7059              	@ 1110 "../src/Platform.cpp" 1
 7060 0200 0847     		bx r1
 7061              	@ 0 "" 2
 7062              		.thumb
 7063              		.syntax unified
 7064 0202 43B0     		add	sp, sp, #268
 7065              		@ sp needed
 7066 0204 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 7067              	.L1277:
 7068 0208 2346     		mov	r3, r4
ARM GAS  /tmp/cclDCdxf.s 			page 125


 7069 020a 5046     		mov	r0, r10
 7070 020c 1E4A     		ldr	r2, .L1279+72
 7071 020e 40F20911 		movw	r1, #265
 7072 0212 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7073 0216 43B0     		add	sp, sp, #268
 7074              		@ sp needed
 7075 0218 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 7076              	.L1275:
 7077 021c 5046     		mov	r0, r10
 7078 021e 1B4A     		ldr	r2, .L1279+76
 7079 0220 0921     		movs	r1, #9
 7080 0222 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7081 0226 43B0     		add	sp, sp, #268
 7082              		@ sp needed
 7083 0228 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 7084              	.L1257:
 7085 022c FFF7FEFF 		bl	millis
 7086 0230 001B     		subs	r0, r0, r4
 7087 0232 B0F5FA6F 		cmp	r0, #2000
 7088 0236 8ED3     		bcc	.L1259
 7089 0238 92E7     		b	.L1260
 7090              	.L1264:
 7091 023a 154B     		ldr	r3, .L1279+80
 7092 023c FCE6     		b	.L1253
 7093              	.L1280:
 7094 023e 00BF     		.align	2
 7095              	.L1279:
 7096 0240 7C000000 		.word	.LC14
 7097 0244 1C000000 		.word	.LC11
 7098 0248 00000000 		.word	reprap
 7099 024c FF000F00 		.word	983295
 7100 0250 00000000 		.word	g_interrupt_enabled
 7101 0254 00FC0F00 		.word	1047552
 7102 0258 28000000 		.word	.LC85
 7103 025c 88000000 		.word	.LC87
 7104 0260 A0000000 		.word	.LC88
 7105 0264 10E000E0 		.word	-536813552
 7106 0268 000E0E40 		.word	1074662912
 7107 026c 00800820 		.word	537427968
 7108 0270 00100E40 		.word	1074663424
 7109 0274 00120E40 		.word	1074663936
 7110 0278 00140E40 		.word	1074664448
 7111 027c FC000000 		.word	.LC89
 7112 0280 501A0E40 		.word	1074666064
 7113 0284 00ED00E0 		.word	-536810240
 7114 0288 54000000 		.word	.LC86
 7115 028c 18000000 		.word	.LC84
 7116 0290 10000000 		.word	.LC83
 7117 0294 00000000 		.word	.LC81
 7118 0298 08000000 		.word	.LC82
 7119              		.size	_ZN8Platform14UpdateFirmwareEv, .-_ZN8Platform14UpdateFirmwareEv
 7120              		.section	.text._ZN8Platform4SpinEv,"ax",%progbits
 7121              		.align	1
 7122              		.p2align 2,,3
 7123              		.global	_ZN8Platform4SpinEv
 7124              		.syntax unified
 7125              		.thumb
ARM GAS  /tmp/cclDCdxf.s 			page 126


 7126              		.thumb_func
 7127              		.fpu softvfp
 7128              		.type	_ZN8Platform4SpinEv, %function
 7129              	_ZN8Platform4SpinEv:
 7130              		@ args = 0, pretend = 0, frame = 0
 7131              		@ frame_needed = 0, uses_anonymous_args = 0
 7132 0000 38B5     		push	{r3, r4, r5, lr}
 7133 0002 90F8A830 		ldrb	r3, [r0, #168]	@ zero_extendqisi2
 7134 0006 03B9     		cbnz	r3, .L1302
 7135              	.L1281:
 7136 0008 38BD     		pop	{r3, r4, r5, pc}
 7137              	.L1302:
 7138 000a 0446     		mov	r4, r0
 7139 000c D0F86805 		ldr	r0, [r0, #1384]
 7140 0010 FFF7FEFF 		bl	_ZN11MassStorage4SpinEv
 7141 0014 2046     		mov	r0, r4
 7142 0016 FFF7FEFF 		bl	_ZN8Platform13FlushMessagesEv
 7143 001a 40F2EA33 		movw	r3, #1002
 7144 001e D4F87825 		ldr	r2, [r4, #1400]
 7145 0022 9A42     		cmp	r2, r3
 7146 0024 00D1     		bne	.L1284
 7147              	.L1300:
 7148 0026 FEE7     		b	.L1300
 7149              	.L1284:
 7150 0028 FFF7FEFF 		bl	millis
 7151 002c D4F88825 		ldr	r2, [r4, #1416]
 7152 0030 62B1     		cbz	r2, .L1286
 7153 0032 D4F88C35 		ldr	r3, [r4, #1420]
 7154 0036 C11A     		subs	r1, r0, r3
 7155 0038 B1F57A7F 		cmp	r1, #1000
 7156 003c 06D3     		bcc	.L1286
 7157 003e 0132     		adds	r2, r2, #1
 7158 0040 03F57A73 		add	r3, r3, #1000
 7159 0044 C4F88825 		str	r2, [r4, #1416]
 7160 0048 C4F88C35 		str	r3, [r4, #1420]
 7161              	.L1286:
 7162 004c D4F81C35 		ldr	r3, [r4, #1308]
 7163 0050 C31A     		subs	r3, r0, r3
 7164 0052 B3F5FA7F 		cmp	r3, #500
 7165 0056 14D3     		bcc	.L1288
 7166 0058 C4F81C05 		str	r0, [r4, #1308]
 7167 005c 04F59860 		add	r0, r4, #1216
 7168 0060 FFF7FEFF 		bl	_ZN3Fan5CheckEv
 7169 0064 0546     		mov	r5, r0
 7170 0066 04F2EC40 		addw	r0, r4, #1260
 7171 006a FFF7FEFF 		bl	_ZN3Fan5CheckEv
 7172 006e 40B9     		cbnz	r0, .L1288
 7173 0070 94F82036 		ldrb	r3, [r4, #1568]	@ zero_extendqisi2
 7174 0074 2BB1     		cbz	r3, .L1288
 7175 0076 25B9     		cbnz	r5, .L1288
 7176 0078 84F82056 		strb	r5, [r4, #1568]
 7177 007c 2046     		mov	r0, r4
 7178 007e FFF7FEFF 		bl	_ZN8Platform11AtxPowerOffEb.part.22
 7179              	.L1288:
 7180 0082 2068     		ldr	r0, [r4]
 7181 0084 0028     		cmp	r0, #0
 7182 0086 BFD0     		beq	.L1281
ARM GAS  /tmp/cclDCdxf.s 			page 127


 7183 0088 BDE83840 		pop	{r3, r4, r5, lr}
 7184 008c 0021     		movs	r1, #0
 7185 008e FFF7FEBF 		b	_ZN6Logger5FlushEb
 7186              		.size	_ZN8Platform4SpinEv, .-_ZN8Platform4SpinEv
 7187              		.global	_ZN8Platform22softwareResetDebugInfoE
 7188              		.set	_ZL16DefaultIpAddress,_ZL14DefaultGateway
 7189              		.set	_ZL14DefaultNetMask,_ZL14DefaultGateway
 7190 0092 00BF     		.section	.rodata
 7191              		.align	2
 7192              		.set	.LANCHOR20,. + 0
 7193              	.LC53:
 7194 0000 00000000 		.word	.LC0
 7195 0004 0C000000 		.word	.LC1
 7196 0008 14000000 		.word	.LC2
 7197 000c 20000000 		.word	.LC3
 7198 0010 2C000000 		.word	.LC4
 7199 0014 3C000000 		.word	.LC5
 7200 0018 3C000000 		.word	.LC5
 7201 001c 3C000000 		.word	.LC5
 7202              		.section	.bss._ZL11fanInterval,"aw",%nobits
 7203              		.align	2
 7204              		.set	.LANCHOR2,. + 0
 7205              		.type	_ZL11fanInterval, %object
 7206              		.size	_ZL11fanInterval, 4
 7207              	_ZL11fanInterval:
 7208 0000 00000000 		.space	4
 7209              		.section	.bss._ZL16fanLastResetTime,"aw",%nobits
 7210              		.align	2
 7211              		.set	.LANCHOR1,. + 0
 7212              		.type	_ZL16fanLastResetTime, %object
 7213              		.size	_ZL16fanLastResetTime, 4
 7214              	_ZL16fanLastResetTime:
 7215 0000 00000000 		.space	4
 7216              		.section	.bss._ZL17fanInterruptCount,"aw",%nobits
 7217              		.align	2
 7218              		.set	.LANCHOR0,. + 0
 7219              		.type	_ZL17fanInterruptCount, %object
 7220              		.size	_ZL17fanInterruptCount, 4
 7221              	_ZL17fanInterruptCount:
 7222 0000 00000000 		.space	4
 7223              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 7224              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 7225              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 7226              	_ZL28cpu_irq_prev_interrupt_state:
 7227 0000 00       		.space	1
 7228              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 7229              		.align	2
 7230              		.type	_ZL32cpu_irq_critical_section_counter, %object
 7231              		.size	_ZL32cpu_irq_critical_section_counter, 4
 7232              	_ZL32cpu_irq_critical_section_counter:
 7233 0000 00000000 		.space	4
 7234              		.section	.bss._ZN8Platform22softwareResetDebugInfoE,"aw",%nobits
 7235              		.set	.LANCHOR19,. + 0
 7236              		.type	_ZN8Platform22softwareResetDebugInfoE, %object
 7237              		.size	_ZN8Platform22softwareResetDebugInfoE, 1
 7238              	_ZN8Platform22softwareResetDebugInfoE:
 7239 0000 00       		.space	1
ARM GAS  /tmp/cclDCdxf.s 			page 128


 7240              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 7241              		.align	2
 7242              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 7243              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 7244              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 7245 0000 00000000 		.space	4
 7246              		.section	.rodata._ZL11AXIS_MAXIMA,"a",%progbits
 7247              		.align	2
 7248              		.set	.LANCHOR14,. + 0
 7249              		.type	_ZL11AXIS_MAXIMA, %object
 7250              		.size	_ZL11AXIS_MAXIMA, 24
 7251              	_ZL11AXIS_MAXIMA:
 7252 0000 00006643 		.word	1130758144
 7253 0004 00005243 		.word	1129447424
 7254 0008 00004843 		.word	1128792064
 7255 000c 00000000 		.word	0
 7256 0010 00000000 		.word	0
 7257 0014 00000000 		.word	0
 7258              		.section	.rodata._ZL11AXIS_MINIMA,"a",%progbits
 7259              		.align	2
 7260              		.set	.LANCHOR15,. + 0
 7261              		.type	_ZL11AXIS_MINIMA, %object
 7262              		.size	_ZL11AXIS_MINIMA, 24
 7263              	_ZL11AXIS_MINIMA:
 7264 0000 00000000 		.space	24
 7264      00000000 
 7264      00000000 
 7264      00000000 
 7264      00000000 
 7265              		.section	.rodata._ZL11ENABLE_PINS,"a",%progbits
 7266              		.align	2
 7267              		.set	.LANCHOR3,. + 0
 7268              		.type	_ZL11ENABLE_PINS, %object
 7269              		.size	_ZL11ENABLE_PINS, 9
 7270              	_ZL11ENABLE_PINS:
 7271 0000 1A       		.byte	26
 7272 0001 16       		.byte	22
 7273 0002 0F       		.byte	15
 7274 0003 3E       		.byte	62
 7275 0004 41       		.byte	65
 7276 0005 31       		.byte	49
 7277 0006 25       		.byte	37
 7278 0007 1F       		.byte	31
 7279 0008 44       		.byte	68
 7280              		.section	.rodata._ZL11INSTANT_DVS,"a",%progbits
 7281              		.align	2
 7282              		.set	.LANCHOR13,. + 0
 7283              		.type	_ZL11INSTANT_DVS, %object
 7284              		.size	_ZL11INSTANT_DVS, 36
 7285              	_ZL11INSTANT_DVS:
 7286 0000 00007041 		.word	1097859072
 7287 0004 00007041 		.word	1097859072
 7288 0008 CDCC4C3E 		.word	1045220557
 7289 000c 00000040 		.word	1073741824
 7290 0010 00000040 		.word	1073741824
 7291 0014 00000040 		.word	1073741824
 7292 0018 00000040 		.word	1073741824
ARM GAS  /tmp/cclDCdxf.s 			page 129


 7293 001c 00000040 		.word	1073741824
 7294 0020 00000040 		.word	1073741824
 7295              		.section	.rodata._ZL12HEAT_ON_PINS,"a",%progbits
 7296              		.align	2
 7297              		.set	.LANCHOR17,. + 0
 7298              		.type	_ZL12HEAT_ON_PINS, %object
 7299              		.size	_ZL12HEAT_ON_PINS, 4
 7300              	_ZL12HEAT_ON_PINS:
 7301 0000 07       		.byte	7
 7302 0001 0D       		.byte	13
 7303 0002 0C       		.byte	12
 7304 0003 0B       		.byte	11
 7305              		.section	.rodata._ZL13ACCELERATIONS,"a",%progbits
 7306              		.align	2
 7307              		.set	.LANCHOR11,. + 0
 7308              		.type	_ZL13ACCELERATIONS, %object
 7309              		.size	_ZL13ACCELERATIONS, 36
 7310              	_ZL13ACCELERATIONS:
 7311 0000 0000FA43 		.word	1140457472
 7312 0004 0000FA43 		.word	1140457472
 7313 0008 0000A041 		.word	1101004800
 7314 000c 00007A43 		.word	1132068864
 7315 0010 00007A43 		.word	1132068864
 7316 0014 00007A43 		.word	1132068864
 7317 0018 00007A43 		.word	1132068864
 7318 001c 00007A43 		.word	1132068864
 7319 0020 00007A43 		.word	1132068864
 7320              		.section	.rodata._ZL13END_STOP_PINS,"a",%progbits
 7321              		.align	2
 7322              		.set	.LANCHOR9,. + 0
 7323              		.type	_ZL13END_STOP_PINS, %object
 7324              		.size	_ZL13END_STOP_PINS, 9
 7325              	_ZL13END_STOP_PINS:
 7326 0000 1C       		.byte	28
 7327 0001 1E       		.byte	30
 7328 0002 20       		.byte	32
 7329 0003 27       		.byte	39
 7330 0004 FF       		.byte	-1
 7331 0005 FF       		.byte	-1
 7332 0006 FF       		.byte	-1
 7333 0007 FF       		.byte	-1
 7334 0008 00       		.space	1
 7335              		.section	.rodata._ZL13MAX_FEEDRATES,"a",%progbits
 7336              		.align	2
 7337              		.set	.LANCHOR10,. + 0
 7338              		.type	_ZL13MAX_FEEDRATES, %object
 7339              		.size	_ZL13MAX_FEEDRATES, 36
 7340              	_ZL13MAX_FEEDRATES:
 7341 0000 0000C842 		.word	1120403456
 7342 0004 0000C842 		.word	1120403456
 7343 0008 00004040 		.word	1077936128
 7344 000c 0000A041 		.word	1101004800
 7345 0010 0000A041 		.word	1101004800
 7346 0014 0000A041 		.word	1101004800
 7347 0018 0000A041 		.word	1101004800
 7348 001c 0000A041 		.word	1101004800
 7349 0020 0000A041 		.word	1101004800
ARM GAS  /tmp/cclDCdxf.s 			page 130


 7350              		.section	.rodata._ZL13SpecialPinMap,"a",%progbits
 7351              		.align	2
 7352              		.set	.LANCHOR7,. + 0
 7353              		.type	_ZL13SpecialPinMap, %object
 7354              		.size	_ZL13SpecialPinMap, 8
 7355              	_ZL13SpecialPinMap:
 7356 0000 05       		.byte	5
 7357 0001 06       		.byte	6
 7358 0002 3A       		.byte	58
 7359 0003 3B       		.byte	59
 7360 0004 46       		.byte	70
 7361 0005 47       		.byte	71
 7362 0006 48       		.byte	72
 7363 0007 49       		.byte	73
 7364              		.section	.rodata._ZL14DIRECTION_PINS,"a",%progbits
 7365              		.align	2
 7366              		.set	.LANCHOR4,. + 0
 7367              		.type	_ZL14DIRECTION_PINS, %object
 7368              		.size	_ZL14DIRECTION_PINS, 9
 7369              	_ZL14DIRECTION_PINS:
 7370 0000 17       		.byte	23
 7371 0001 10       		.byte	16
 7372 0002 03       		.byte	3
 7373 0003 3C       		.byte	60
 7374 0004 3F       		.byte	63
 7375 0005 35       		.byte	53
 7376 0006 21       		.byte	33
 7377 0007 1B       		.byte	27
 7378 0008 42       		.byte	66
 7379              		.section	.rodata._ZL14DefaultGateway,"a",%progbits
 7380              		.align	2
 7381              		.set	.LANCHOR8,. + 0
 7382              		.type	_ZL14DefaultGateway, %object
 7383              		.size	_ZL14DefaultGateway, 4
 7384              	_ZL14DefaultGateway:
 7385 0000 00000000 		.space	4
 7386              		.section	.rodata._ZL15TEMP_SENSE_PINS,"a",%progbits
 7387              		.align	2
 7388              		.set	.LANCHOR16,. + 0
 7389              		.type	_ZL15TEMP_SENSE_PINS, %object
 7390              		.size	_ZL15TEMP_SENSE_PINS, 4
 7391              	_ZL15TEMP_SENSE_PINS:
 7392 0000 04       		.byte	4
 7393 0001 00       		.byte	0
 7394 0002 01       		.byte	1
 7395 0003 02       		.byte	2
 7396              		.section	.rodata._ZL16COOLING_FAN_PINS,"a",%progbits
 7397              		.align	2
 7398              		.set	.LANCHOR6,. + 0
 7399              		.type	_ZL16COOLING_FAN_PINS, %object
 7400              		.size	_ZL16COOLING_FAN_PINS, 2
 7401              	_ZL16COOLING_FAN_PINS:
 7402 0000 09       		.byte	9
 7403 0001 08       		.byte	8
 7404              		.section	.rodata._ZL19SpiTempSensorCsPins,"a",%progbits
 7405              		.align	2
 7406              		.set	.LANCHOR18,. + 0
ARM GAS  /tmp/cclDCdxf.s 			page 131


 7407              		.type	_ZL19SpiTempSensorCsPins, %object
 7408              		.size	_ZL19SpiTempSensorCsPins, 2
 7409              	_ZL19SpiTempSensorCsPins:
 7410 0000 26       		.byte	38
 7411 0001 24       		.byte	36
 7412              		.section	.rodata._ZL20DRIVE_STEPS_PER_UNIT,"a",%progbits
 7413              		.align	2
 7414              		.set	.LANCHOR12,. + 0
 7415              		.type	_ZL20DRIVE_STEPS_PER_UNIT, %object
 7416              		.size	_ZL20DRIVE_STEPS_PER_UNIT, 36
 7417              	_ZL20DRIVE_STEPS_PER_UNIT:
 7418 0000 5EFAAE42 		.word	1118763614
 7419 0004 5EFAAE42 		.word	1118763614
 7420 0008 00007A45 		.word	1165623296
 7421 000c 0000D243 		.word	1137836032
 7422 0010 0000D243 		.word	1137836032
 7423 0014 0000D243 		.word	1137836032
 7424 0018 0000D243 		.word	1137836032
 7425 001c 0000D243 		.word	1137836032
 7426 0020 0000D243 		.word	1137836032
 7427              		.section	.rodata._ZL9STEP_PINS,"a",%progbits
 7428              		.align	2
 7429              		.set	.LANCHOR5,. + 0
 7430              		.type	_ZL9STEP_PINS, %object
 7431              		.size	_ZL9STEP_PINS, 9
 7432              	_ZL9STEP_PINS:
 7433 0000 18       		.byte	24
 7434 0001 11       		.byte	17
 7435 0002 02       		.byte	2
 7436 0003 3D       		.byte	61
 7437 0004 40       		.byte	64
 7438 0005 33       		.byte	51
 7439 0006 23       		.byte	35
 7440 0007 1D       		.byte	29
 7441 0008 43       		.byte	67
 7442              		.section	.rodata._ZN8Platform11AtxPowerOffEb.part.22.str1.4,"aMS",%progbits,1
 7443              		.align	2
 7444              	.LC7:
 7445 0000 506F7765 		.ascii	"Power off commanded\000"
 7445      72206F66 
 7445      6620636F 
 7445      6D6D616E 
 7445      64656400 
 7446              		.section	.rodata._ZN8Platform11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 7447              		.align	2
 7448              	.LC39:
 7449 0000 4E4D4900 		.ascii	"NMI\000"
 7450              	.LC40:
 7451 0004 55736572 		.ascii	"User\000"
 7451      00
 7452 0009 000000   		.space	3
 7453              	.LC41:
 7454 000c 48617264 		.ascii	"Hard fault\000"
 7454      20666175 
 7454      6C7400
 7455 0017 00       		.space	1
 7456              	.LC42:
ARM GAS  /tmp/cclDCdxf.s 			page 132


 7457 0018 53747563 		.ascii	"Stuck in spin loop\000"
 7457      6B20696E 
 7457      20737069 
 7457      6E206C6F 
 7457      6F7000
 7458 002b 00       		.space	1
 7459              	.LC43:
 7460 002c 57617463 		.ascii	"Watchdog timeout\000"
 7460      68646F67 
 7460      2074696D 
 7460      656F7574 
 7460      00
 7461 003d 000000   		.space	3
 7462              	.LC44:
 7463 0040 4F746865 		.ascii	"Other fault\000"
 7463      72206661 
 7463      756C7400 
 7464              	.LC45:
 7465 004c 53746163 		.ascii	"Stack overflow\000"
 7465      6B206F76 
 7465      6572666C 
 7465      6F7700
 7466 005b 00       		.space	1
 7467              	.LC46:
 7468 005c 556E6B6E 		.ascii	"Unknown\000"
 7468      6F776E00 
 7469              	.LC47:
 7470 0064 41737365 		.ascii	"Assertion failed\000"
 7470      7274696F 
 7470      6E206661 
 7470      696C6564 
 7470      00
 7471 0075 000000   		.space	3
 7472              	.LC48:
 7473 0078 64656C69 		.ascii	"deliberate \000"
 7473      62657261 
 7473      74652000 
 7474              	.LC49:
 7475 0084 00       		.ascii	"\000"
 7476 0085 000000   		.space	3
 7477              	.LC50:
 7478 0088 64657465 		.ascii	"detected\000"
 7478      63746564 
 7478      00
 7479 0091 000000   		.space	3
 7480              	.LC51:
 7481 0094 6E6F7420 		.ascii	"not detected\000"
 7481      64657465 
 7481      63746564 
 7481      00
 7482 00a1 000000   		.space	3
 7483              	.LC52:
 7484 00a4 3D3D3D20 		.ascii	"=== Platform ===\012\000"
 7484      506C6174 
 7484      666F726D 
 7484      203D3D3D 
 7484      0A00
ARM GAS  /tmp/cclDCdxf.s 			page 133


 7485 00b6 0000     		.space	2
 7486              	.LC54:
 7487 00b8 4C617374 		.ascii	"Last reset %02d:%02d:%02d ago, cause: %s\012\000"
 7487      20726573 
 7487      65742025 
 7487      3032643A 
 7487      25303264 
 7488 00e2 0000     		.space	2
 7489              	.LC55:
 7490 00e4 61742025 		.ascii	"at %04u-%02u-%02u %02u:%02u\000"
 7490      3034752D 
 7490      25303275 
 7490      2D253032 
 7490      75202530 
 7491              	.LC56:
 7492 0100 74696D65 		.ascii	"time unknown\000"
 7492      20756E6B 
 7492      6E6F776E 
 7492      00
 7493 010d 000000   		.space	3
 7494              	.LC57:
 7495 0110 4C617374 		.ascii	"Last software reset %s, reason: %s%s, spinning modu"
 7495      20736F66 
 7495      74776172 
 7495      65207265 
 7495      73657420 
 7496 0143 6C652025 		.ascii	"le %s, available RAM %lu bytes (slot %d)\012\000"
 7496      732C2061 
 7496      7661696C 
 7496      61626C65 
 7496      2052414D 
 7497 016d 000000   		.space	3
 7498              	.LC58:
 7499 0170 536F6674 		.ascii	"Software reset code 0x%04x HFSR 0x%08lx, CFSR 0x%08"
 7499      77617265 
 7499      20726573 
 7499      65742063 
 7499      6F646520 
 7500 01a3 6C782C20 		.ascii	"lx, ICSR 0x%08lx, BFAR 0x%08lx, SP 0x%08lx\012\000"
 7500      49435352 
 7500      20307825 
 7500      30386C78 
 7500      2C204246 
 7501 01cf 00       		.space	1
 7502              	.LC59:
 7503 01d0 20253038 		.ascii	" %08lx\000"
 7503      6C7800
 7504 01d7 00       		.space	1
 7505              	.LC60:
 7506 01d8 53746163 		.ascii	"Stack:%s\012\000"
 7506      6B3A2573 
 7506      0A00
 7507 01e2 0000     		.space	2
 7508              	.LC61:
 7509 01e4 4C617374 		.ascii	"Last software reset details not available\012\000"
 7509      20736F66 
 7509      74776172 
ARM GAS  /tmp/cclDCdxf.s 			page 134


 7509      65207265 
 7509      73657420 
 7510 020f 00       		.space	1
 7511              	.LC62:
 7512 0210 4572726F 		.ascii	"Error status: %lu\012\000"
 7512      72207374 
 7512      61747573 
 7512      3A20256C 
 7512      750A00
 7513 0223 00       		.space	1
 7514              	.LC63:
 7515 0224 46726565 		.ascii	"Free file entries: %u\012\000"
 7515      2066696C 
 7515      6520656E 
 7515      74726965 
 7515      733A2025 
 7516 023b 00       		.space	1
 7517              	.LC64:
 7518 023c 53442063 		.ascii	"SD card 0 %s\012\000"
 7518      61726420 
 7518      30202573 
 7518      0A00
 7519 024a 0000     		.space	2
 7520              	.LC65:
 7521 024c 53442063 		.ascii	"SD card longest block write time: %.1fms\012\000"
 7521      61726420 
 7521      6C6F6E67 
 7521      65737420 
 7521      626C6F63 
 7522 0276 0000     		.space	2
 7523              	.LC66:
 7524 0278 44617465 		.ascii	"Date/time: \000"
 7524      2F74696D 
 7524      653A2000 
 7525              	.LC67:
 7526 0284 25303475 		.ascii	"%04u-%02u-%02u %02u:%02u:%02u\012\000"
 7526      2D253032 
 7526      752D2530 
 7526      32752025 
 7526      3032753A 
 7527 02a3 00       		.space	1
 7528              	.LC68:
 7529 02a4 6E6F7420 		.ascii	"not set\012\000"
 7529      7365740A 
 7529      00
 7530              		.section	.rodata._ZN8Platform11SetDateTimeEl.str1.4,"aMS",%progbits,1
 7531              		.align	2
 7532              	.LC37:
 7533 0000 44617465 		.ascii	"Date and time set at power up + %02lu:%02lu:%02lu\012"
 7533      20616E64 
 7533      2074696D 
 7533      65207365 
 7533      74206174 
 7534 0032 00       		.ascii	"\000"
 7535              		.section	.rodata._ZN8Platform12ConfigureFanEjiR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%progbits,
 7536              		.align	2
 7537              	.LC16:
ARM GAS  /tmp/cclDCdxf.s 			page 135


 7538 0000 46616E20 		.ascii	"Fan number %d is invalid, must be between 0 and %u\000"
 7538      6E756D62 
 7538      65722025 
 7538      64206973 
 7538      20696E76 
 7539              		.section	.rodata._ZN8Platform12SetEmulatingE13Compatibility.str1.4,"aMS",%progbits,1
 7540              		.align	2
 7541              	.LC38:
 7542 0000 41747465 		.ascii	"Attempt to emulate unsupported firmware.\012\000"
 7542      6D707420 
 7542      746F2065 
 7542      6D756C61 
 7542      74652075 
 7543              		.section	.rodata._ZN8Platform13ProgramZProbeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 7544              		.align	2
 7545              	.LC8:
 7546 0000 4F757420 		.ascii	"Out of range value in program bytes\000"
 7546      6F662072 
 7546      616E6765 
 7546      2076616C 
 7546      75652069 
 7547              	.LC9:
 7548 0024 4E6F2070 		.ascii	"No program bytes provided\000"
 7548      726F6772 
 7548      616D2062 
 7548      79746573 
 7548      2070726F 
 7549              		.section	.rodata._ZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefi.str1.4,"aMS",%progbits,1
 7550              		.align	2
 7551              	.LC69:
 7552 0000 2A2A2A2A 		.ascii	"***** ONE OR MORE CHECKS FAILED *****\012\000"
 7552      2A204F4E 
 7552      45204F52 
 7552      204D4F52 
 7552      45204348 
 7553 0027 00       		.space	1
 7554              	.LC70:
 7555 0028 416C6C20 		.ascii	"All checks passed\012\000"
 7555      63686563 
 7555      6B732070 
 7555      61737365 
 7555      640A00
 7556 003b 00       		.space	1
 7557              	.LC71:
 7558 003c 6F6B00   		.ascii	"ok\000"
 7559 003f 00       		.space	1
 7560              	.LC72:
 7561 0040 4552524F 		.ascii	"ERROR\000"
 7561      5200
 7562 0046 0000     		.space	2
 7563              	.LC73:
 7564 0048 53442063 		.ascii	"SD card 0 not detected\012\000"
 7564      61726420 
 7564      30206E6F 
 7564      74206465 
 7564      74656374 
 7565              	.LC74:
ARM GAS  /tmp/cclDCdxf.s 			page 136


 7566 0060 53442063 		.ascii	"SD card interface OK\012\000"
 7566      61726420 
 7566      696E7465 
 7566      72666163 
 7566      65204F4B 
 7567 0076 0000     		.space	2
 7568              	.LC75:
 7569 0078 44696167 		.ascii	"Diagnostic Test\012\000"
 7569      6E6F7374 
 7569      69632054 
 7569      6573740A 
 7569      00
 7570 0089 000000   		.space	3
 7571              	.LC76:
 7572 008c 53717561 		.ascii	"Square roots: 62-bit %.2fus %s, 32-bit %.2fus %s\012"
 7572      72652072 
 7572      6F6F7473 
 7572      3A203632 
 7572      2D626974 
 7573 00bd 00       		.ascii	"\000"
 7574              		.section	.rodata._ZN8Platform14SendAuxMessageEPKc.str1.4,"aMS",%progbits,1
 7575              		.align	2
 7576              	.LC32:
 7577 0000 7B226D65 		.ascii	"{\"message\":\000"
 7577      73736167 
 7577      65223A00 
 7578              	.LC33:
 7579 000c 7D0A00   		.ascii	"}\012\000"
 7580              		.section	.rodata._ZN8Platform14UpdateFirmwareEv.str1.4,"aMS",%progbits,1
 7581              		.align	2
 7582              	.LC81:
 7583 0000 756E6C6F 		.ascii	"unlock\000"
 7583      636B00
 7584 0007 00       		.space	1
 7585              	.LC82:
 7586 0008 6C6F636B 		.ascii	"lock\000"
 7586      00
 7587 000d 000000   		.space	3
 7588              	.LC83:
 7589 0010 77726974 		.ascii	"write\000"
 7589      6500
 7590 0016 0000     		.space	2
 7591              	.LC84:
 7592 0018 49415020 		.ascii	"IAP not found\012\000"
 7592      6E6F7420 
 7592      666F756E 
 7592      640A00
 7593 0027 00       		.space	1
 7594              	.LC85:
 7595 0028 666C6173 		.ascii	"flash %s failed, code=%lu, address=0x%08lx\012\000"
 7595      68202573 
 7595      20666169 
 7595      6C65642C 
 7595      20636F64 
 7596              	.LC86:
 7597 0054 76657269 		.ascii	"verify during flash write failed, address=0x%08lx\012"
 7597      66792064 
ARM GAS  /tmp/cclDCdxf.s 			page 137


 7597      7572696E 
 7597      6720666C 
 7597      61736820 
 7598 0086 00       		.ascii	"\000"
 7599 0087 00       		.space	1
 7600              	.LC87:
 7601 0088 55706461 		.ascii	"Updating main firmware\012\000"
 7601      74696E67 
 7601      206D6169 
 7601      6E206669 
 7601      726D7761 
 7602              	.LC88:
 7603 00a0 53687574 		.ascii	"Shutting down USB interface to update main firmware"
 7603      74696E67 
 7603      20646F77 
 7603      6E205553 
 7603      4220696E 
 7604 00d3 2E205472 		.ascii	". Try reconnecting after 30 seconds.\012\000"
 7604      79207265 
 7604      636F6E6E 
 7604      65637469 
 7604      6E672061 
 7605 00f9 000000   		.space	3
 7606              	.LC89:
 7607 00fc 303A2F73 		.ascii	"0:/sys/RepRapFirmware-RADDS.bin\000"
 7607      79732F52 
 7607      65705261 
 7607      70466972 
 7607      6D776172 
 7608              		.section	.rodata._ZN8Platform15WriteAxisLimitsEP9FileStoremPKfi.part.25.str1.4,"aMS",%progbits,1
 7609              		.align	2
 7610              	.LC26:
 7611 0000 4D323038 		.ascii	"M208 S%d\000"
 7611      20532564 
 7611      00
 7612 0009 000000   		.space	3
 7613              	.LC27:
 7614 000c 20256325 		.ascii	" %c%.2f\000"
 7614      2E326600 
 7615              		.section	.rodata._ZN8Platform16ConfigureLoggingER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,
 7616              		.align	2
 7617              	.LC17:
 7618 0000 656E6162 		.ascii	"enabled\000"
 7618      6C656400 
 7619              	.LC18:
 7620 0008 64697361 		.ascii	"disabled\000"
 7620      626C6564 
 7620      00
 7621 0011 000000   		.space	3
 7622              	.LC19:
 7623 0014 4D697373 		.ascii	"Missing filename in M929 command\000"
 7623      696E6720 
 7623      66696C65 
 7623      6E616D65 
 7623      20696E20 
 7624 0035 000000   		.space	3
 7625              	.LC20:
ARM GAS  /tmp/cclDCdxf.s 			page 138


 7626 0038 6576656E 		.ascii	"eventlog.txt\000"
 7626      746C6F67 
 7626      2E747874 
 7626      00
 7627 0045 000000   		.space	3
 7628              	.LC21:
 7629 0048 4576656E 		.ascii	"Event logging is %s\000"
 7629      74206C6F 
 7629      6767696E 
 7629      67206973 
 7629      20257300 
 7630              		.section	.rodata._ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef.str1.4,"aMS",%progbit
 7631              		.align	2
 7632              	.LC10:
 7633 0000 52657052 		.ascii	"RepRapFirmware-RADDS.bin\000"
 7633      61704669 
 7633      726D7761 
 7633      72652D52 
 7633      41444453 
 7634 0019 000000   		.space	3
 7635              	.LC11:
 7636 001c 303A2F73 		.ascii	"0:/sys/\000"
 7636      79732F00 
 7637              	.LC12:
 7638 0024 4669726D 		.ascii	"Firmware binary \"%s\" not found\000"
 7638      77617265 
 7638      2062696E 
 7638      61727920 
 7638      22257322 
 7639 0043 00       		.space	1
 7640              	.LC13:
 7641 0044 4669726D 		.ascii	"Firmware binary \"%s\" is not valid for this electr"
 7641      77617265 
 7641      2062696E 
 7641      61727920 
 7641      22257322 
 7642 0075 6F6E6963 		.ascii	"onics\000"
 7642      7300
 7643 007b 00       		.space	1
 7644              	.LC14:
 7645 007c 69617072 		.ascii	"iapradds.bin\000"
 7645      61646473 
 7645      2E62696E 
 7645      00
 7646 0089 000000   		.space	3
 7647              	.LC15:
 7648 008c 496E2D61 		.ascii	"In-application programming binary \"%s\" not found\000"
 7648      70706C69 
 7648      63617469 
 7648      6F6E2070 
 7648      726F6772 
 7649              		.section	.rodata._ZN8Platform4BeepEii.str1.4,"aMS",%progbits,1
 7650              		.align	2
 7651              	.LC36:
 7652 0000 7B226265 		.ascii	"{\"beep_freq\":%d,\"beep_length\":%d}\012\000"
 7652      65705F66 
 7652      72657122 
ARM GAS  /tmp/cclDCdxf.s 			page 139


 7652      3A25642C 
 7652      22626565 
 7653              		.section	.rodata._ZN8Platform4InitEv.str1.4,"aMS",%progbits,1
 7654              		.align	2
 7655              	.LC30:
 7656 0000 55534200 		.ascii	"USB\000"
 7657              	.LC31:
 7658 0004 41757800 		.ascii	"Aux\000"
 7659              		.section	.rodata._ZN8Platform8MessageFE11MessageTypePKcSt9__va_list.str1.4,"aMS",%progbits,1
 7660              		.align	2
 7661              	.LC34:
 7662 0000 4572726F 		.ascii	"Error: \000"
 7662      723A2000 
 7663              	.LC35:
 7664 0008 5761726E 		.ascii	"Warning: \000"
 7664      696E673A 
 7664      2000
 7665              		.section	.rodata._ZN8Platform9SendAlertE11MessageTypePKcS2_ifm.str1.4,"aMS",%progbits,1
 7666              		.align	2
 7667              	.LC77:
 7668 0000 2D202573 		.ascii	"- %s -\012\000"
 7668      202D0A00 
 7669              	.LC78:
 7670 0008 25730A00 		.ascii	"%s\012\000"
 7671              	.LC79:
 7672 000c 53656E64 		.ascii	"Send M292 to continue\012\000"
 7672      204D3239 
 7672      3220746F 
 7672      20636F6E 
 7672      74696E75 
 7673 0023 00       		.space	1
 7674              	.LC80:
 7675 0024 53656E64 		.ascii	"Send M292 to continue or M292 P1 to cancel\012\000"
 7675      204D3239 
 7675      3220746F 
 7675      20636F6E 
 7675      74696E75 
 7676              		.section	.rodata._ZNK8Platform14GetBoardStringEv.str1.4,"aMS",%progbits,1
 7677              		.align	2
 7678              	.LC24:
 7679 0000 72616464 		.ascii	"radds15\000"
 7679      73313500 
 7680              	.LC25:
 7681 0008 756E6B6E 		.ascii	"unknown\000"
 7681      6F776E00 
 7682              		.section	.rodata._ZNK8Platform20GetElectronicsStringEv.str1.4,"aMS",%progbits,1
 7683              		.align	2
 7684              	.LC22:
 7685 0000 52414444 		.ascii	"RADDS 1.5\000"
 7685      5320312E 
 7685      3500
 7686 000a 0000     		.space	2
 7687              	.LC23:
 7688 000c 556E6964 		.ascii	"Unidentified\000"
 7688      656E7469 
 7688      66696564 
 7688      00
ARM GAS  /tmp/cclDCdxf.s 			page 140


 7689              		.section	.rodata._ZNK8Platform23WritePlatformParametersEP9FileStoreb.str1.4,"aMS",%progbits,1
 7690              		.align	2
 7691              	.LC28:
 7692 0000 3B205072 		.ascii	"; Probed axis limits\012\000"
 7692      6F626564 
 7692      20617869 
 7692      73206C69 
 7692      6D697473 
 7693 0016 0000     		.space	2
 7694              	.LC29:
 7695 0018 3B205A20 		.ascii	"; Z probe parameters\012\000"
 7695      70726F62 
 7695      65207061 
 7695      72616D65 
 7695      74657273 
 7696              		.section	.rodata._ZZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefiE5dummy,"a",%progbits
 7697              		.align	2
 7698              		.set	.LANCHOR21,. + 0
 7699              		.type	_ZZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefiE5dummy, %object
 7700              		.size	_ZZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefiE5dummy, 8
 7701              	_ZZN8Platform14DiagnosticTestER11GCodeBufferRK9StringRefiE5dummy:
 7702 0000 00000000 		.space	8
 7702      00000000 
 7703              		.section	.rodata.str1.4,"aMS",%progbits,1
 7704              		.align	2
 7705              	.LC0:
 7706 0000 706F7765 		.ascii	"power up\000"
 7706      72207570 
 7706      00
 7707 0009 000000   		.space	3
 7708              	.LC1:
 7709 000c 6261636B 		.ascii	"backup\000"
 7709      757000
 7710 0013 00       		.space	1
 7711              	.LC2:
 7712 0014 77617463 		.ascii	"watchdog\000"
 7712      68646F67 
 7712      00
 7713 001d 000000   		.space	3
 7714              	.LC3:
 7715 0020 736F6674 		.ascii	"software\000"
 7715      77617265 
 7715      00
 7716 0029 000000   		.space	3
 7717              	.LC4:
 7718 002c 72657365 		.ascii	"reset button\000"
 7718      74206275 
 7718      74746F6E 
 7718      00
 7719 0039 000000   		.space	3
 7720              	.LC5:
 7721 003c 3F00     		.ascii	"?\000"
 7722              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
