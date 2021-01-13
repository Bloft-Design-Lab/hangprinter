ARM GAS  /tmp/ccsdiHny.s 			page 1


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
  11              		.file	"PrintMonitor.cpp"
  12              		.global	__aeabi_ul2f
  13              		.global	__aeabi_fmul
  14              		.section	.text._ZNK12PrintMonitor16GetPrintDurationEv.part.4,"ax",%progbits
  15              		.align	1
  16              		.p2align 2,,3
  17              		.syntax unified
  18              		.thumb
  19              		.thumb_func
  20              		.fpu softvfp
  21              		.type	_ZNK12PrintMonitor16GetPrintDurationEv.part.4, %function
  22              	_ZNK12PrintMonitor16GetPrintDurationEv.part.4:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 D0B5     		push	{r4, r6, r7, lr}
  26 0002 0446     		mov	r4, r0
  27 0004 00F12001 		add	r1, r0, #32
  28 0008 D1E90001 		ldrd	r0, [r1]
  29 000c 50EA0103 		orrs	r3, r0, r1
  30 0010 0FD0     		beq	.L5
  31              	.L2:
  32 0012 D4E90467 		ldrd	r6, [r4, #16]
  33 0016 D4E90A23 		ldrd	r2, [r4, #40]
  34 001a 801B     		subs	r0, r0, r6
  35 001c 61EB0701 		sbc	r1, r1, r7
  36 0020 801A     		subs	r0, r0, r2
  37 0022 61EB0301 		sbc	r1, r1, r3
  38 0026 FFF7FEFF 		bl	__aeabi_ul2f
  39 002a 0349     		ldr	r1, .L6
  40 002c FFF7FEFF 		bl	__aeabi_fmul
  41 0030 D0BD     		pop	{r4, r6, r7, pc}
  42              	.L5:
  43 0032 FFF7FEFF 		bl	millis64
  44 0036 ECE7     		b	.L2
  45              	.L7:
  46              		.align	2
  47              	.L6:
  48 0038 6F12833A 		.word	981668463
  49              		.size	_ZNK12PrintMonitor16GetPrintDurationEv.part.4, .-_ZNK12PrintMonitor16GetPrintDurationEv.part
  50              		.section	.text._ZN12PrintMonitorC2ER8PlatformR6GCodes,"ax",%progbits
  51              		.align	1
  52              		.p2align 2,,3
  53              		.global	_ZN12PrintMonitorC2ER8PlatformR6GCodes
  54              		.syntax unified
  55              		.thumb
  56              		.thumb_func
  57              		.fpu softvfp
ARM GAS  /tmp/ccsdiHny.s 			page 2


  58              		.type	_ZN12PrintMonitorC2ER8PlatformR6GCodes, %function
  59              	_ZN12PrintMonitorC2ER8PlatformR6GCodes:
  60              		@ args = 0, pretend = 0, frame = 0
  61              		@ frame_needed = 0, uses_anonymous_args = 0
  62              		@ link register save eliminated.
  63 0000 F0B4     		push	{r4, r5, r6, r7}
  64 0002 0024     		movs	r4, #0
  65 0004 0025     		movs	r5, #0
  66 0006 0026     		movs	r6, #0
  67 0008 0027     		movs	r7, #0
  68 000a 0573     		strb	r5, [r0, #12]
  69 000c 4573     		strb	r5, [r0, #13]
  70 000e 0563     		str	r5, [r0, #48]
  71 0010 0565     		str	r5, [r0, #80]
  72 0012 80F89450 		strb	r5, [r0, #148]
  73 0016 80F8D250 		strb	r5, [r0, #210]
  74 001a 80F80851 		strb	r5, [r0, #264]
  75 001e C0E90467 		strd	r6, [r0, #16]
  76 0022 C0E90867 		strd	r6, [r0, #32]
  77 0026 C0E90A67 		strd	r6, [r0, #40]
  78 002a 4463     		str	r4, [r0, #52]	@ float
  79 002c 8463     		str	r4, [r0, #56]	@ float
  80 002e C463     		str	r4, [r0, #60]	@ float
  81 0030 0464     		str	r4, [r0, #64]	@ float
  82 0032 4464     		str	r4, [r0, #68]	@ float
  83 0034 8464     		str	r4, [r0, #72]	@ float
  84 0036 C464     		str	r4, [r0, #76]	@ float
  85 0038 C0F89040 		str	r4, [r0, #144]	@ float
  86 003c 80E80600 		stm	r0, {r1, r2}
  87 0040 F0BC     		pop	{r4, r5, r6, r7}
  88 0042 7047     		bx	lr
  89              		.size	_ZN12PrintMonitorC2ER8PlatformR6GCodes, .-_ZN12PrintMonitorC2ER8PlatformR6GCodes
  90              		.global	_ZN12PrintMonitorC1ER8PlatformR6GCodes
  91              		.thumb_set _ZN12PrintMonitorC1ER8PlatformR6GCodes,_ZN12PrintMonitorC2ER8PlatformR6GCodes
  92              		.section	.text._ZN12PrintMonitor4InitEv,"ax",%progbits
  93              		.align	1
  94              		.p2align 2,,3
  95              		.global	_ZN12PrintMonitor4InitEv
  96              		.syntax unified
  97              		.thumb
  98              		.thumb_func
  99              		.fpu softvfp
 100              		.type	_ZN12PrintMonitor4InitEv, %function
 101              	_ZN12PrintMonitor4InitEv:
 102              		@ args = 0, pretend = 0, frame = 0
 103              		@ frame_needed = 0, uses_anonymous_args = 0
 104 0000 10B5     		push	{r4, lr}
 105 0002 0446     		mov	r4, r0
 106 0004 FFF7FEFF 		bl	millis
 107 0008 A060     		str	r0, [r4, #8]
 108 000a 10BD     		pop	{r4, pc}
 109              		.size	_ZN12PrintMonitor4InitEv, .-_ZN12PrintMonitor4InitEv
 110              		.global	__aeabi_f2d
 111              		.global	__aeabi_f2iz
 112              		.section	.text._ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer,"ax",%progbits
 113              		.align	1
 114              		.p2align 2,,3
ARM GAS  /tmp/ccsdiHny.s 			page 3


 115              		.global	_ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer
 116              		.syntax unified
 117              		.thumb
 118              		.thumb_func
 119              		.fpu softvfp
 120              		.type	_ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer, %function
 121              	_ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer:
 122              		@ args = 0, pretend = 0, frame = 0
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 125 0004 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 126 0008 86B0     		sub	sp, sp, #24
 127 000a 2BB9     		cbnz	r3, .L13
 128              	.L16:
 129 000c 4FF00009 		mov	r9, #0
 130 0010 4846     		mov	r0, r9
 131 0012 06B0     		add	sp, sp, #24
 132              		@ sp needed
 133 0014 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 134              	.L13:
 135 0018 0446     		mov	r4, r0
 136 001a 0846     		mov	r0, r1
 137 001c 0D46     		mov	r5, r1
 138 001e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 139 0022 8146     		mov	r9, r0
 140 0024 0028     		cmp	r0, #0
 141 0026 F1D0     		beq	.L16
 142 0028 D4F8A000 		ldr	r0, [r4, #160]	@ float
 143 002c FFF7FEFF 		bl	__aeabi_f2d
 144 0030 CDE90401 		strd	r0, [sp, #16]
 145 0034 D4F8A400 		ldr	r0, [r4, #164]	@ float
 146 0038 FFF7FEFF 		bl	__aeabi_f2d
 147 003c CDE90201 		strd	r0, [sp, #8]
 148 0040 D4F8A800 		ldr	r0, [r4, #168]	@ float
 149 0044 FFF7FEFF 		bl	__aeabi_f2d
 150 0048 2B68     		ldr	r3, [r5]
 151 004a D4F89820 		ldr	r2, [r4, #152]
 152 004e CDE90001 		strd	r0, [sp]
 153 0052 1846     		mov	r0, r3
 154 0054 2949     		ldr	r1, .L30
 155 0056 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 156 005a D4F8CC30 		ldr	r3, [r4, #204]
 157 005e 002B     		cmp	r3, #0
 158 0060 40D0     		beq	.L28
 159 0062 0026     		movs	r6, #0
 160 0064 4FF05B08 		mov	r8, #91
 161 0068 DFF89CA0 		ldr	r10, .L30+12
 162 006c 04F1AC07 		add	r7, r4, #172
 163              	.L18:
 164 0070 57F8040B 		ldr	r0, [r7], #4	@ float
 165 0074 FFF7FEFF 		bl	__aeabi_f2d
 166 0078 2B68     		ldr	r3, [r5]
 167 007a 4246     		mov	r2, r8
 168 007c CDE90001 		strd	r0, [sp]
 169 0080 1846     		mov	r0, r3
 170 0082 5146     		mov	r1, r10
 171 0084 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
ARM GAS  /tmp/ccsdiHny.s 			page 4


 172 0088 D4F8CC30 		ldr	r3, [r4, #204]
 173 008c 0136     		adds	r6, r6, #1
 174 008e B342     		cmp	r3, r6
 175 0090 4FF02C08 		mov	r8, #44
 176 0094 ECD8     		bhi	.L18
 177              	.L17:
 178 0096 1A49     		ldr	r1, .L30+4
 179 0098 2868     		ldr	r0, [r5]
 180 009a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 181 009e 0023     		movs	r3, #0
 182 00a0 0122     		movs	r2, #1
 183 00a2 2868     		ldr	r0, [r5]
 184 00a4 04F1D201 		add	r1, r4, #210
 185 00a8 8DE80C00 		stm	sp, {r2, r3}
 186 00ac 3222     		movs	r2, #50
 187 00ae FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 188 00b2 227B     		ldrb	r2, [r4, #12]	@ zero_extendqisi2
 189 00b4 2E68     		ldr	r6, [r5]
 190 00b6 D2B9     		cbnz	r2, .L29
 191              	.L19:
 192 00b8 3046     		mov	r0, r6
 193 00ba 1249     		ldr	r1, .L30+8
 194 00bc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 195 00c0 0023     		movs	r3, #0
 196 00c2 0122     		movs	r2, #1
 197 00c4 2868     		ldr	r0, [r5]
 198 00c6 04F58471 		add	r1, r4, #264
 199 00ca 8DE80C00 		stm	sp, {r2, r3}
 200 00ce 6422     		movs	r2, #100
 201 00d0 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 202 00d4 2868     		ldr	r0, [r5]
 203 00d6 7D21     		movs	r1, #125
 204 00d8 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 205 00dc 4846     		mov	r0, r9
 206 00de 06B0     		add	sp, sp, #24
 207              		@ sp needed
 208 00e0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 209              	.L28:
 210 00e4 5B21     		movs	r1, #91
 211 00e6 2868     		ldr	r0, [r5]
 212 00e8 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 213 00ec D3E7     		b	.L17
 214              	.L29:
 215 00ee 2046     		mov	r0, r4
 216 00f0 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 217 00f4 FFF7FEFF 		bl	__aeabi_f2iz
 218 00f8 0246     		mov	r2, r0
 219 00fa DDE7     		b	.L19
 220              	.L31:
 221              		.align	2
 222              	.L30:
 223 00fc 3C000000 		.word	.LC3
 224 0100 08000000 		.word	.LC1
 225 0104 1C000000 		.word	.LC2
 226 0108 00000000 		.word	.LC0
 227              		.size	_ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer, .-_ZNK12PrintMonitor27GetP
 228              		.global	__aeabi_fcmpgt
ARM GAS  /tmp/ccsdiHny.s 			page 5


 229              		.global	__aeabi_fsub
 230              		.section	.text._ZNK12PrintMonitor21GetFirstLayerDurationEv,"ax",%progbits
 231              		.align	1
 232              		.p2align 2,,3
 233              		.global	_ZNK12PrintMonitor21GetFirstLayerDurationEv
 234              		.syntax unified
 235              		.thumb
 236              		.thumb_func
 237              		.fpu softvfp
 238              		.type	_ZNK12PrintMonitor21GetFirstLayerDurationEv, %function
 239              	_ZNK12PrintMonitor21GetFirstLayerDurationEv:
 240              		@ args = 0, pretend = 0, frame = 0
 241              		@ frame_needed = 0, uses_anonymous_args = 0
 242 0000 38B5     		push	{r3, r4, r5, lr}
 243 0002 846B     		ldr	r4, [r0, #56]	@ float
 244 0004 0546     		mov	r5, r0
 245 0006 0021     		movs	r1, #0
 246 0008 2046     		mov	r0, r4
 247 000a FFF7FEFF 		bl	__aeabi_fcmpgt
 248 000e 08B1     		cbz	r0, .L38
 249 0010 2046     		mov	r0, r4
 250 0012 38BD     		pop	{r3, r4, r5, pc}
 251              	.L38:
 252 0014 2B6B     		ldr	r3, [r5, #48]
 253 0016 63B1     		cbz	r3, .L35
 254 0018 2B7B     		ldrb	r3, [r5, #12]	@ zero_extendqisi2
 255 001a 33B9     		cbnz	r3, .L39
 256 001c 0020     		movs	r0, #0
 257              	.L34:
 258 001e 696B     		ldr	r1, [r5, #52]	@ float
 259 0020 FFF7FEFF 		bl	__aeabi_fsub
 260 0024 0446     		mov	r4, r0
 261 0026 2046     		mov	r0, r4
 262 0028 38BD     		pop	{r3, r4, r5, pc}
 263              	.L39:
 264 002a 2846     		mov	r0, r5
 265 002c FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 266 0030 F5E7     		b	.L34
 267              	.L35:
 268 0032 0024     		movs	r4, #0
 269 0034 2046     		mov	r0, r4
 270 0036 38BD     		pop	{r3, r4, r5, pc}
 271              		.size	_ZNK12PrintMonitor21GetFirstLayerDurationEv, .-_ZNK12PrintMonitor21GetFirstLayerDurationEv
 272              		.global	__aeabi_fadd
 273              		.section	.text._ZNK12PrintMonitor17GetWarmUpDurationEv,"ax",%progbits
 274              		.align	1
 275              		.p2align 2,,3
 276              		.global	_ZNK12PrintMonitor17GetWarmUpDurationEv
 277              		.syntax unified
 278              		.thumb
 279              		.thumb_func
 280              		.fpu softvfp
 281              		.type	_ZNK12PrintMonitor17GetWarmUpDurationEv, %function
 282              	_ZNK12PrintMonitor17GetWarmUpDurationEv:
 283              		@ args = 0, pretend = 0, frame = 0
 284              		@ frame_needed = 0, uses_anonymous_args = 0
 285 0000 38B5     		push	{r3, r4, r5, lr}
ARM GAS  /tmp/ccsdiHny.s 			page 6


 286 0002 437B     		ldrb	r3, [r0, #13]	@ zero_extendqisi2
 287 0004 0BB9     		cbnz	r3, .L44
 288 0006 406B     		ldr	r0, [r0, #52]	@ float
 289 0008 38BD     		pop	{r3, r4, r5, pc}
 290              	.L44:
 291 000a 0446     		mov	r4, r0
 292 000c 456B     		ldr	r5, [r0, #52]	@ float
 293 000e FFF7FEFF 		bl	millis64
 294 0012 D4E90623 		ldrd	r2, [r4, #24]
 295 0016 801A     		subs	r0, r0, r2
 296 0018 61EB0301 		sbc	r1, r1, r3
 297 001c FFF7FEFF 		bl	__aeabi_ul2f
 298 0020 0349     		ldr	r1, .L45
 299 0022 FFF7FEFF 		bl	__aeabi_fmul
 300 0026 2946     		mov	r1, r5
 301 0028 FFF7FEFF 		bl	__aeabi_fadd
 302 002c 38BD     		pop	{r3, r4, r5, pc}
 303              	.L46:
 304 002e 00BF     		.align	2
 305              	.L45:
 306 0030 6F12833A 		.word	981668463
 307              		.size	_ZNK12PrintMonitor17GetWarmUpDurationEv, .-_ZNK12PrintMonitor17GetWarmUpDurationEv
 308              		.section	.text._ZN12PrintMonitor13StartingPrintEPKc,"ax",%progbits
 309              		.align	1
 310              		.p2align 2,,3
 311              		.global	_ZN12PrintMonitor13StartingPrintEPKc
 312              		.syntax unified
 313              		.thumb
 314              		.thumb_func
 315              		.fpu softvfp
 316              		.type	_ZN12PrintMonitor13StartingPrintEPKc, %function
 317              	_ZN12PrintMonitor13StartingPrintEPKc:
 318              		@ args = 0, pretend = 0, frame = 8
 319              		@ frame_needed = 0, uses_anonymous_args = 0
 320 0000 30B5     		push	{r4, r5, lr}
 321 0002 0D46     		mov	r5, r1
 322 0004 0021     		movs	r1, #0
 323 0006 0268     		ldr	r2, [r0]
 324 0008 0446     		mov	r4, r0
 325 000a 00F19803 		add	r3, r0, #152
 326 000e D2F86805 		ldr	r0, [r2, #1384]
 327 0012 85B0     		sub	sp, sp, #20
 328 0014 2A46     		mov	r2, r5
 329 0016 0091     		str	r1, [sp]
 330 0018 00F59160 		add	r0, r0, #1160
 331 001c 0749     		ldr	r1, .L49
 332 001e FFF7FEFF 		bl	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob
 333 0022 6523     		movs	r3, #101
 334 0024 84F89400 		strb	r0, [r4, #148]
 335 0028 2946     		mov	r1, r5
 336 002a 04F58474 		add	r4, r4, #264
 337 002e 02A8     		add	r0, sp, #8
 338 0030 0294     		str	r4, [sp, #8]
 339 0032 0393     		str	r3, [sp, #12]
 340 0034 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 341 0038 05B0     		add	sp, sp, #20
 342              		@ sp needed
ARM GAS  /tmp/ccsdiHny.s 			page 7


 343 003a 30BD     		pop	{r4, r5, pc}
 344              	.L50:
 345              		.align	2
 346              	.L49:
 347 003c 00000000 		.word	.LC4
 348              		.size	_ZN12PrintMonitor13StartingPrintEPKc, .-_ZN12PrintMonitor13StartingPrintEPKc
 349              		.section	.text._ZN12PrintMonitor12StartedPrintEv,"ax",%progbits
 350              		.align	1
 351              		.p2align 2,,3
 352              		.global	_ZN12PrintMonitor12StartedPrintEv
 353              		.syntax unified
 354              		.thumb
 355              		.thumb_func
 356              		.fpu softvfp
 357              		.type	_ZN12PrintMonitor12StartedPrintEv, %function
 358              	_ZN12PrintMonitor12StartedPrintEv:
 359              		@ args = 0, pretend = 0, frame = 0
 360              		@ frame_needed = 0, uses_anonymous_args = 0
 361 0000 0023     		movs	r3, #0
 362 0002 0122     		movs	r2, #1
 363 0004 10B5     		push	{r4, lr}
 364 0006 4373     		strb	r3, [r0, #13]
 365 0008 0273     		strb	r2, [r0, #12]
 366 000a 0446     		mov	r4, r0
 367 000c FFF7FEFF 		bl	millis64
 368 0010 0023     		movs	r3, #0
 369 0012 C4E90401 		strd	r0, [r4, #16]
 370 0016 6363     		str	r3, [r4, #52]	@ float
 371 0018 10BD     		pop	{r4, pc}
 372              		.size	_ZN12PrintMonitor12StartedPrintEv, .-_ZN12PrintMonitor12StartedPrintEv
 373              		.global	__aeabi_fcmplt
 374              		.global	__aeabi_fdiv
 375              		.global	__aeabi_ui2f
 376 001a 00BF     		.section	.text._ZN12PrintMonitor18FirstLayerCompleteEv,"ax",%progbits
 377              		.align	1
 378              		.p2align 2,,3
 379              		.global	_ZN12PrintMonitor18FirstLayerCompleteEv
 380              		.syntax unified
 381              		.thumb
 382              		.thumb_func
 383              		.fpu softvfp
 384              		.type	_ZN12PrintMonitor18FirstLayerCompleteEv, %function
 385              	_ZN12PrintMonitor18FirstLayerCompleteEv:
 386              		@ args = 0, pretend = 0, frame = 0
 387              		@ frame_needed = 0, uses_anonymous_args = 0
 388 0000 70B5     		push	{r4, r5, r6, lr}
 389 0002 4568     		ldr	r5, [r0, #4]
 390 0004 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 391 0006 D5F83822 		ldr	r2, [r5, #568]	@ float
 392 000a 0446     		mov	r4, r0
 393 000c C263     		str	r2, [r0, #60]	@ float
 394 000e 83BB     		cbnz	r3, .L62
 395 0010 0020     		movs	r0, #0
 396              	.L54:
 397 0012 616B     		ldr	r1, [r4, #52]	@ float
 398 0014 FFF7FEFF 		bl	__aeabi_fsub
 399 0018 A063     		str	r0, [r4, #56]	@ float
ARM GAS  /tmp/ccsdiHny.s 			page 8


 400 001a 2846     		mov	r0, r5
 401 001c FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 402 0020 D4F8A050 		ldr	r5, [r4, #160]	@ float
 403 0024 2064     		str	r0, [r4, #64]	@ float
 404 0026 0021     		movs	r1, #0
 405 0028 2846     		mov	r0, r5
 406 002a FFF7FEFF 		bl	__aeabi_fcmpgt
 407 002e 30B1     		cbz	r0, .L53
 408 0030 D4F8A860 		ldr	r6, [r4, #168]	@ float
 409 0034 2846     		mov	r0, r5
 410 0036 3146     		mov	r1, r6
 411 0038 FFF7FEFF 		bl	__aeabi_fcmplt
 412 003c 00B9     		cbnz	r0, .L63
 413              	.L53:
 414 003e 70BD     		pop	{r4, r5, r6, pc}
 415              	.L63:
 416 0040 D4F8A410 		ldr	r1, [r4, #164]	@ float
 417 0044 3046     		mov	r0, r6
 418 0046 FFF7FEFF 		bl	__aeabi_fsub
 419 004a 2946     		mov	r1, r5
 420 004c FFF7FEFF 		bl	__aeabi_fdiv
 421 0050 FFF7FEFF 		bl	lrintf
 422 0054 FFF7FEFF 		bl	__aeabi_ui2f
 423 0058 4FF07A51 		mov	r1, #1048576000
 424 005c 0546     		mov	r5, r0
 425 005e A06B     		ldr	r0, [r4, #56]	@ float
 426 0060 FFF7FEFF 		bl	__aeabi_fmul
 427 0064 0146     		mov	r1, r0
 428 0066 2846     		mov	r0, r5
 429 0068 FFF7FEFF 		bl	__aeabi_fmul
 430 006c C4F89000 		str	r0, [r4, #144]	@ float
 431 0070 70BD     		pop	{r4, r5, r6, pc}
 432              	.L62:
 433 0072 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 434 0076 6568     		ldr	r5, [r4, #4]
 435 0078 CBE7     		b	.L54
 436              		.size	_ZN12PrintMonitor18FirstLayerCompleteEv, .-_ZN12PrintMonitor18FirstLayerCompleteEv
 437 007a 00BF     		.section	.text._ZN12PrintMonitor13LayerCompleteEv,"ax",%progbits
 438              		.align	1
 439              		.p2align 2,,3
 440              		.global	_ZN12PrintMonitor13LayerCompleteEv
 441              		.syntax unified
 442              		.thumb
 443              		.thumb_func
 444              		.fpu softvfp
 445              		.type	_ZN12PrintMonitor13LayerCompleteEv, %function
 446              	_ZN12PrintMonitor13LayerCompleteEv:
 447              		@ args = 0, pretend = 0, frame = 0
 448              		@ frame_needed = 0, uses_anonymous_args = 0
 449 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 450 0004 056D     		ldr	r5, [r0, #80]
 451 0006 4768     		ldr	r7, [r0, #4]
 452 0008 042D     		cmp	r5, #4
 453 000a 0446     		mov	r4, r0
 454 000c D7F83862 		ldr	r6, [r7, #568]	@ float
 455 0010 19D8     		bhi	.L65
 456 0012 002D     		cmp	r5, #0
ARM GAS  /tmp/ccsdiHny.s 			page 9


 457 0014 7BD1     		bne	.L66
 458 0016 C16B     		ldr	r1, [r0, #60]	@ float
 459 0018 3046     		mov	r0, r6
 460 001a FFF7FEFF 		bl	__aeabi_fsub
 461 001e 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 462 0020 A066     		str	r0, [r4, #104]	@ float
 463 0022 002B     		cmp	r3, #0
 464 0024 40F09780 		bne	.L94
 465 0028 0020     		movs	r0, #0
 466              	.L67:
 467 002a 616B     		ldr	r1, [r4, #52]	@ float
 468 002c FFF7FEFF 		bl	__aeabi_fsub
 469 0030 6065     		str	r0, [r4, #84]	@ float
 470              	.L68:
 471 0032 3846     		mov	r0, r7
 472 0034 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 473 0038 236D     		ldr	r3, [r4, #80]
 474 003a 04EB8505 		add	r5, r4, r5, lsl #2
 475 003e 0133     		adds	r3, r3, #1
 476 0040 E867     		str	r0, [r5, #124]	@ float
 477 0042 2365     		str	r3, [r4, #80]
 478 0044 1DE0     		b	.L70
 479              	.L65:
 480 0046 00F15403 		add	r3, r0, #84
 481 004a 6430     		adds	r0, r0, #100
 482              	.L71:
 483 004c 5A68     		ldr	r2, [r3, #4]	@ float
 484 004e 43F8042B 		str	r2, [r3], #4	@ float
 485 0052 5969     		ldr	r1, [r3, #20]	@ float
 486 0054 9A6A     		ldr	r2, [r3, #40]	@ float
 487 0056 8342     		cmp	r3, r0
 488 0058 1961     		str	r1, [r3, #16]	@ float
 489 005a 5A62     		str	r2, [r3, #36]	@ float
 490 005c F6D1     		bne	.L71
 491 005e 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 492 0060 002B     		cmp	r3, #0
 493 0062 6DD1     		bne	.L95
 494 0064 0020     		movs	r0, #0
 495              	.L72:
 496 0066 616C     		ldr	r1, [r4, #68]	@ float
 497 0068 FFF7FEFF 		bl	__aeabi_fsub
 498 006c A16C     		ldr	r1, [r4, #72]	@ float
 499 006e 6066     		str	r0, [r4, #100]	@ float
 500 0070 3046     		mov	r0, r6
 501 0072 FFF7FEFF 		bl	__aeabi_fsub
 502 0076 A067     		str	r0, [r4, #120]	@ float
 503 0078 3846     		mov	r0, r7
 504 007a FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 505 007e C4F88C00 		str	r0, [r4, #140]	@ float
 506              	.L70:
 507 0082 D4F8A080 		ldr	r8, [r4, #160]	@ float
 508 0086 A664     		str	r6, [r4, #72]	@ float
 509 0088 4046     		mov	r0, r8
 510 008a 0021     		movs	r1, #0
 511 008c FFF7FEFF 		bl	__aeabi_fcmpgt
 512 0090 0028     		cmp	r0, #0
 513 0092 3AD0     		beq	.L64
ARM GAS  /tmp/ccsdiHny.s 			page 10


 514 0094 D4F8A8A0 		ldr	r10, [r4, #168]	@ float
 515 0098 4046     		mov	r0, r8
 516 009a 5146     		mov	r1, r10
 517 009c FFF7FEFF 		bl	__aeabi_fcmplt
 518 00a0 98B3     		cbz	r0, .L64
 519 00a2 D4F85090 		ldr	r9, [r4, #80]
 520 00a6 B9F1040F 		cmp	r9, #4
 521 00aa 47D8     		bhi	.L85
 522 00ac 4FF07A51 		mov	r1, #1048576000
 523 00b0 A06B     		ldr	r0, [r4, #56]	@ float
 524 00b2 FFF7FEFF 		bl	__aeabi_fmul
 525 00b6 0646     		mov	r6, r0
 526 00b8 B9F1000F 		cmp	r9, #0
 527 00bc 38D0     		beq	.L77
 528              	.L76:
 529 00be 09F11507 		add	r7, r9, #21
 530 00c2 04EB8707 		add	r7, r4, r7, lsl #2
 531 00c6 04F15405 		add	r5, r4, #84
 532              	.L78:
 533 00ca 55F8041B 		ldr	r1, [r5], #4	@ float
 534 00ce 3046     		mov	r0, r6
 535 00d0 FFF7FEFF 		bl	__aeabi_fadd
 536 00d4 AF42     		cmp	r7, r5
 537 00d6 0646     		mov	r6, r0
 538 00d8 F7D1     		bne	.L78
 539 00da B9F1040F 		cmp	r9, #4
 540 00de 27D9     		bls	.L77
 541 00e0 4846     		mov	r0, r9
 542 00e2 FFF7FEFF 		bl	__aeabi_ui2f
 543 00e6 0546     		mov	r5, r0
 544              	.L80:
 545 00e8 D4F8A410 		ldr	r1, [r4, #164]	@ float
 546 00ec 5046     		mov	r0, r10
 547 00ee FFF7FEFF 		bl	__aeabi_fsub
 548 00f2 4146     		mov	r1, r8
 549 00f4 FFF7FEFF 		bl	__aeabi_fdiv
 550 00f8 FFF7FEFF 		bl	lrintf
 551 00fc 236B     		ldr	r3, [r4, #48]
 552 00fe 0130     		adds	r0, r0, #1
 553 0100 9842     		cmp	r0, r3
 554 0102 2ED8     		bhi	.L96
 555 0104 1F4B     		ldr	r3, .L98
 556 0106 C4F89030 		str	r3, [r4, #144]	@ float
 557              	.L64:
 558 010a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 559              	.L66:
 560 010e 816C     		ldr	r1, [r0, #72]	@ float
 561 0110 3046     		mov	r0, r6
 562 0112 FFF7FEFF 		bl	__aeabi_fsub
 563 0116 04EB8508 		add	r8, r4, r5, lsl #2
 564 011a C8F86800 		str	r0, [r8, #104]	@ float
 565 011e 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 566 0120 9BB9     		cbnz	r3, .L97
 567 0122 0020     		movs	r0, #0
 568              	.L69:
 569 0124 616C     		ldr	r1, [r4, #68]	@ float
 570 0126 FFF7FEFF 		bl	__aeabi_fsub
ARM GAS  /tmp/ccsdiHny.s 			page 11


 571 012a C8F85400 		str	r0, [r8, #84]	@ float
 572 012e 80E7     		b	.L68
 573              	.L77:
 574 0130 09F10100 		add	r0, r9, #1
 575 0134 FFF7FEFF 		bl	__aeabi_ui2f
 576 0138 0546     		mov	r5, r0
 577 013a D5E7     		b	.L80
 578              	.L85:
 579 013c 0026     		movs	r6, #0
 580 013e BEE7     		b	.L76
 581              	.L95:
 582 0140 2046     		mov	r0, r4
 583 0142 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 584 0146 6768     		ldr	r7, [r4, #4]
 585 0148 8DE7     		b	.L72
 586              	.L97:
 587 014a 2046     		mov	r0, r4
 588 014c FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 589 0150 256D     		ldr	r5, [r4, #80]
 590 0152 6768     		ldr	r7, [r4, #4]
 591 0154 E6E7     		b	.L69
 592              	.L94:
 593 0156 2046     		mov	r0, r4
 594 0158 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 595 015c 256D     		ldr	r5, [r4, #80]
 596 015e 6768     		ldr	r7, [r4, #4]
 597 0160 63E7     		b	.L67
 598              	.L96:
 599 0162 C01A     		subs	r0, r0, r3
 600 0164 FFF7FEFF 		bl	__aeabi_ui2f
 601 0168 2946     		mov	r1, r5
 602 016a 0746     		mov	r7, r0
 603 016c 3046     		mov	r0, r6
 604 016e FFF7FEFF 		bl	__aeabi_fdiv
 605 0172 0146     		mov	r1, r0
 606 0174 3846     		mov	r0, r7
 607 0176 FFF7FEFF 		bl	__aeabi_fmul
 608 017a C4F89000 		str	r0, [r4, #144]	@ float
 609 017e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 610              	.L99:
 611 0182 00BF     		.align	2
 612              	.L98:
 613 0184 CDCCCC3D 		.word	1036831949
 614              		.size	_ZN12PrintMonitor13LayerCompleteEv, .-_ZN12PrintMonitor13LayerCompleteEv
 615              		.global	__aeabi_fcmpeq
 616              		.section	.text._ZN12PrintMonitor4SpinEv,"ax",%progbits
 617              		.align	1
 618              		.p2align 2,,3
 619              		.global	_ZN12PrintMonitor4SpinEv
 620              		.syntax unified
 621              		.thumb
 622              		.thumb_func
 623              		.fpu softvfp
 624              		.type	_ZN12PrintMonitor4SpinEv, %function
 625              	_ZN12PrintMonitor4SpinEv:
 626              		@ args = 0, pretend = 0, frame = 40
 627              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccsdiHny.s 			page 12


 628 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 629 0004 90F80831 		ldrb	r3, [r0, #264]	@ zero_extendqisi2
 630 0008 8DB0     		sub	sp, sp, #52
 631 000a 0646     		mov	r6, r0
 632 000c 13B1     		cbz	r3, .L104
 633 000e 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 634 0012 51B1     		cbz	r1, .L154
 635              	.L104:
 636 0014 7068     		ldr	r0, [r6, #4]
 637 0016 FFF7FEFF 		bl	_ZNK6GCodes9IsRunningEv
 638 001a E0B9     		cbnz	r0, .L155
 639              	.L143:
 640 001c D6E90823 		ldrd	r2, [r6, #32]
 641 0020 1343     		orrs	r3, r2, r3
 642 0022 31D0     		beq	.L156
 643              	.L100:
 644 0024 0DB0     		add	sp, sp, #52
 645              		@ sp needed
 646 0026 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 647              	.L154:
 648 002a 0268     		ldr	r2, [r0]
 649 002c 00F19803 		add	r3, r0, #152
 650 0030 D2F86805 		ldr	r0, [r2, #1384]
 651 0034 0091     		str	r1, [sp]
 652 0036 06F58472 		add	r2, r6, #264
 653 003a 00F59160 		add	r0, r0, #1160
 654 003e 6B49     		ldr	r1, .L162
 655 0040 FFF7FEFF 		bl	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob
 656 0044 86F89400 		strb	r0, [r6, #148]
 657 0048 0028     		cmp	r0, #0
 658 004a EBD0     		beq	.L100
 659 004c 7068     		ldr	r0, [r6, #4]
 660 004e FFF7FEFF 		bl	_ZNK6GCodes9IsRunningEv
 661 0052 0028     		cmp	r0, #0
 662 0054 E2D0     		beq	.L143
 663              	.L155:
 664 0056 FFF7FEFF 		bl	millis
 665 005a 337B     		ldrb	r3, [r6, #12]	@ zero_extendqisi2
 666 005c 0746     		mov	r7, r0
 667 005e 002B     		cmp	r3, #0
 668 0060 E0D0     		beq	.L100
 669 0062 B368     		ldr	r3, [r6, #8]
 670 0064 C31A     		subs	r3, r0, r3
 671 0066 C82B     		cmp	r3, #200
 672 0068 DCD9     		bls	.L100
 673 006a D6E90823 		ldrd	r2, [r6, #32]
 674 006e 1343     		orrs	r3, r2, r3
 675 0070 49D1     		bne	.L157
 676              	.L129:
 677 0072 7068     		ldr	r0, [r6, #4]
 678 0074 FFF7FEFF 		bl	_ZNK6GCodes11IsHeatingUpEv
 679 0078 737B     		ldrb	r3, [r6, #13]	@ zero_extendqisi2
 680 007a 60B1     		cbz	r0, .L110
 681 007c 002B     		cmp	r3, #0
 682 007e 69D0     		beq	.L158
 683              	.L112:
 684 0080 B760     		str	r7, [r6, #8]
ARM GAS  /tmp/ccsdiHny.s 			page 13


 685 0082 0DB0     		add	sp, sp, #52
 686              		@ sp needed
 687 0084 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 688              	.L156:
 689 0088 FFF7FEFF 		bl	millis64
 690 008c C6E90801 		strd	r0, [r6, #32]
 691 0090 0DB0     		add	sp, sp, #52
 692              		@ sp needed
 693 0092 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 694              	.L110:
 695 0096 002B     		cmp	r3, #0
 696 0098 49D1     		bne	.L159
 697              	.L113:
 698 009a 7068     		ldr	r0, [r6, #4]
 699 009c FFF7FEFF 		bl	_ZNK6GCodes14DoingFileMacroEv
 700 00a0 0028     		cmp	r0, #0
 701 00a2 EDD1     		bne	.L112
 702 00a4 524C     		ldr	r4, .L162+4
 703 00a6 A068     		ldr	r0, [r4, #8]	@ unaligned
 704 00a8 FFF7FEFF 		bl	_ZNK4Move11IsExtrudingEv
 705 00ac 0028     		cmp	r0, #0
 706 00ae E7D0     		beq	.L112
 707 00b0 2046     		mov	r0, r4
 708 00b2 A568     		ldr	r5, [r4, #8]
 709 00b4 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 710 00b8 8046     		mov	r8, r0
 711 00ba 2046     		mov	r0, r4
 712 00bc FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 713 00c0 4246     		mov	r2, r8
 714 00c2 0346     		mov	r3, r0
 715 00c4 03A9     		add	r1, sp, #12
 716 00c6 2846     		mov	r0, r5
 717 00c8 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 718 00cc 336B     		ldr	r3, [r6, #48]
 719 00ce 002B     		cmp	r3, #0
 720 00d0 47D1     		bne	.L160
 721 00d2 0123     		movs	r3, #1
 722 00d4 0021     		movs	r1, #0
 723 00d6 3363     		str	r3, [r6, #48]
 724 00d8 D6F8A400 		ldr	r0, [r6, #164]	@ float
 725 00dc FFF7FEFF 		bl	__aeabi_fcmpeq
 726 00e0 0028     		cmp	r0, #0
 727 00e2 CDD0     		beq	.L112
 728 00e4 3368     		ldr	r3, [r6]
 729 00e6 4FF07F51 		mov	r1, #1069547520
 730 00ea D3F88005 		ldr	r0, [r3, #1408]	@ float
 731 00ee FFF7FEFF 		bl	__aeabi_fmul
 732 00f2 059C     		ldr	r4, [sp, #20]	@ float
 733 00f4 0146     		mov	r1, r0
 734 00f6 2046     		mov	r0, r4
 735 00f8 FFF7FEFF 		bl	__aeabi_fcmplt
 736 00fc 0028     		cmp	r0, #0
 737 00fe BFD0     		beq	.L112
 738 0100 C6F8A440 		str	r4, [r6, #164]	@ float
 739 0104 BCE7     		b	.L112
 740              	.L157:
 741 0106 FFF7FEFF 		bl	millis64
ARM GAS  /tmp/ccsdiHny.s 			page 14


 742 010a D6E90A23 		ldrd	r2, [r6, #40]
 743 010e D6E90845 		ldrd	r4, [r6, #32]
 744 0112 4FF00008 		mov	r8, #0
 745 0116 4FF00009 		mov	r9, #0
 746 011a 121B     		subs	r2, r2, r4
 747 011c 63EB0503 		sbc	r3, r3, r5
 748 0120 1218     		adds	r2, r2, r0
 749 0122 4B41     		adcs	r3, r3, r1
 750 0124 C6E90889 		strd	r8, [r6, #32]
 751 0128 C6E90A23 		strd	r2, [r6, #40]
 752 012c A1E7     		b	.L129
 753              	.L159:
 754 012e 7073     		strb	r0, [r6, #13]
 755 0130 FFF7FEFF 		bl	millis64
 756 0134 D6E90623 		ldrd	r2, [r6, #24]
 757 0138 801A     		subs	r0, r0, r2
 758 013a 61EB0301 		sbc	r1, r1, r3
 759 013e FFF7FEFF 		bl	__aeabi_ul2f
 760 0142 2C49     		ldr	r1, .L162+8
 761 0144 FFF7FEFF 		bl	__aeabi_fmul
 762 0148 0146     		mov	r1, r0
 763 014a 706B     		ldr	r0, [r6, #52]	@ float
 764 014c FFF7FEFF 		bl	__aeabi_fadd
 765 0150 7063     		str	r0, [r6, #52]	@ float
 766 0152 A2E7     		b	.L113
 767              	.L158:
 768 0154 0123     		movs	r3, #1
 769 0156 7373     		strb	r3, [r6, #13]
 770 0158 FFF7FEFF 		bl	millis64
 771 015c C6E90601 		strd	r0, [r6, #24]
 772 0160 8EE7     		b	.L112
 773              	.L160:
 774 0162 012B     		cmp	r3, #1
 775 0164 2449     		ldr	r1, .L162+12
 776 0166 25D0     		beq	.L161
 777 0168 F06C     		ldr	r0, [r6, #76]	@ float
 778 016a FFF7FEFF 		bl	__aeabi_fadd
 779 016e 0146     		mov	r1, r0
 780 0170 0598     		ldr	r0, [sp, #20]	@ float
 781 0172 FFF7FEFF 		bl	__aeabi_fcmpgt
 782 0176 0028     		cmp	r0, #0
 783 0178 82D0     		beq	.L112
 784 017a 3046     		mov	r0, r6
 785 017c FFF7FEFF 		bl	_ZN12PrintMonitor13LayerCompleteEv
 786 0180 356B     		ldr	r5, [r6, #48]
 787 0182 D6F8A040 		ldr	r4, [r6, #160]	@ float
 788 0186 6B1C     		adds	r3, r5, #1
 789 0188 3363     		str	r3, [r6, #48]
 790 018a 2046     		mov	r0, r4
 791 018c 0021     		movs	r1, #0
 792 018e FFF7FEFF 		bl	__aeabi_fcmpgt
 793 0192 48B3     		cbz	r0, .L145
 794 0194 2846     		mov	r0, r5
 795 0196 FFF7FEFF 		bl	__aeabi_ui2f
 796 019a 2146     		mov	r1, r4
 797 019c FFF7FEFF 		bl	__aeabi_fmul
 798 01a0 D6F8A410 		ldr	r1, [r6, #164]	@ float
ARM GAS  /tmp/ccsdiHny.s 			page 15


 799 01a4 FFF7FEFF 		bl	__aeabi_fadd
 800              	.L126:
 801 01a8 337B     		ldrb	r3, [r6, #12]	@ zero_extendqisi2
 802 01aa F064     		str	r0, [r6, #76]	@ float
 803 01ac C3B9     		cbnz	r3, .L148
 804              	.L133:
 805 01ae 0020     		movs	r0, #0
 806              	.L127:
 807 01b0 7064     		str	r0, [r6, #68]	@ float
 808 01b2 65E7     		b	.L112
 809              	.L161:
 810 01b4 D6F8A400 		ldr	r0, [r6, #164]	@ float
 811 01b8 FFF7FEFF 		bl	__aeabi_fadd
 812 01bc 0146     		mov	r1, r0
 813 01be 0598     		ldr	r0, [sp, #20]	@ float
 814 01c0 FFF7FEFF 		bl	__aeabi_fcmpgt
 815 01c4 0028     		cmp	r0, #0
 816 01c6 3FF45BAF 		beq	.L112
 817 01ca 3046     		mov	r0, r6
 818 01cc FFF7FEFF 		bl	_ZN12PrintMonitor18FirstLayerCompleteEv
 819 01d0 336B     		ldr	r3, [r6, #48]
 820 01d2 0599     		ldr	r1, [sp, #20]	@ float
 821 01d4 327B     		ldrb	r2, [r6, #12]	@ zero_extendqisi2
 822 01d6 0133     		adds	r3, r3, #1
 823 01d8 3363     		str	r3, [r6, #48]
 824 01da F164     		str	r1, [r6, #76]	@ float
 825 01dc 002A     		cmp	r2, #0
 826 01de E6D0     		beq	.L133
 827              	.L148:
 828 01e0 3046     		mov	r0, r6
 829 01e2 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 830 01e6 E3E7     		b	.L127
 831              	.L145:
 832 01e8 0598     		ldr	r0, [sp, #20]	@ float
 833 01ea DDE7     		b	.L126
 834              	.L163:
 835              		.align	2
 836              	.L162:
 837 01ec 00000000 		.word	.LC4
 838 01f0 00000000 		.word	reprap
 839 01f4 6F12833A 		.word	981668463
 840 01f8 8FC2753C 		.word	1014350479
 841              		.size	_ZN12PrintMonitor4SpinEv, .-_ZN12PrintMonitor4SpinEv
 842              		.section	.text._ZN12PrintMonitor12StoppedPrintEv,"ax",%progbits
 843              		.align	1
 844              		.p2align 2,,3
 845              		.global	_ZN12PrintMonitor12StoppedPrintEv
 846              		.syntax unified
 847              		.thumb
 848              		.thumb_func
 849              		.fpu softvfp
 850              		.type	_ZN12PrintMonitor12StoppedPrintEv, %function
 851              	_ZN12PrintMonitor12StoppedPrintEv:
 852              		@ args = 0, pretend = 0, frame = 0
 853              		@ frame_needed = 0, uses_anonymous_args = 0
 854              		@ link register save eliminated.
 855 0000 0023     		movs	r3, #0
ARM GAS  /tmp/ccsdiHny.s 			page 16


 856 0002 0022     		movs	r2, #0
 857 0004 30B4     		push	{r4, r5}
 858 0006 0024     		movs	r4, #0
 859 0008 0025     		movs	r5, #0
 860 000a 80F89420 		strb	r2, [r0, #148]
 861 000e C0E90A45 		strd	r4, [r0, #40]
 862 0012 C0E90845 		strd	r4, [r0, #32]
 863 0016 C0E90445 		strd	r4, [r0, #16]
 864 001a 30BC     		pop	{r4, r5}
 865 001c 4273     		strb	r2, [r0, #13]
 866 001e 0273     		strb	r2, [r0, #12]
 867 0020 0265     		str	r2, [r0, #80]
 868 0022 0263     		str	r2, [r0, #48]
 869 0024 0364     		str	r3, [r0, #64]	@ float
 870 0026 C363     		str	r3, [r0, #60]	@ float
 871 0028 8363     		str	r3, [r0, #56]	@ float
 872 002a 4363     		str	r3, [r0, #52]	@ float
 873 002c C0F89030 		str	r3, [r0, #144]	@ float
 874 0030 C364     		str	r3, [r0, #76]	@ float
 875 0032 8364     		str	r3, [r0, #72]	@ float
 876 0034 4364     		str	r3, [r0, #68]	@ float
 877 0036 7047     		bx	lr
 878              		.size	_ZN12PrintMonitor12StoppedPrintEv, .-_ZN12PrintMonitor12StoppedPrintEv
 879              		.global	__aeabi_fcmpun
 880              		.global	__aeabi_fcmple
 881              		.section	.text._ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod,"ax",%progbits
 882              		.align	1
 883              		.p2align 2,,3
 884              		.global	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 885              		.syntax unified
 886              		.thumb
 887              		.thumb_func
 888              		.fpu softvfp
 889              		.type	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod, %function
 890              	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod:
 891              		@ args = 0, pretend = 0, frame = 0
 892              		@ frame_needed = 0, uses_anonymous_args = 0
 893 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 894 0004 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 895 0008 002B     		cmp	r3, #0
 896 000a 33D0     		beq	.L216
 897 000c 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 898 000e 0446     		mov	r4, r0
 899 0010 0D46     		mov	r5, r1
 900 0012 002B     		cmp	r3, #0
 901 0014 32D1     		bne	.L223
 902 0016 0020     		movs	r0, #0
 903 0018 616B     		ldr	r1, [r4, #52]	@ float
 904 001a FFF7FEFF 		bl	__aeabi_fsub
 905 001e 012D     		cmp	r5, #1
 906 0020 0746     		mov	r7, r0
 907 0022 33D0     		beq	.L170
 908              	.L226:
 909 0024 1BD3     		bcc	.L171
 910 0026 022D     		cmp	r5, #2
 911 0028 24D1     		bne	.L216
 912 002a D4F89050 		ldr	r5, [r4, #144]	@ float
ARM GAS  /tmp/ccsdiHny.s 			page 17


 913 002e 0021     		movs	r1, #0
 914 0030 2846     		mov	r0, r5
 915 0032 FFF7FEFF 		bl	__aeabi_fcmpgt
 916 0036 E8B1     		cbz	r0, .L216
 917 0038 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 918 003a 002B     		cmp	r3, #0
 919 003c 40F0B880 		bne	.L224
 920 0040 0020     		movs	r0, #0
 921              	.L194:
 922 0042 616C     		ldr	r1, [r4, #68]	@ float
 923 0044 FFF7FEFF 		bl	__aeabi_fsub
 924 0048 0146     		mov	r1, r0
 925 004a 2846     		mov	r0, r5
 926 004c FFF7FEFF 		bl	__aeabi_fsub
 927 0050 0021     		movs	r1, #0
 928 0052 0446     		mov	r4, r0
 929 0054 FFF7FEFF 		bl	__aeabi_fcmpgt
 930 0058 68B9     		cbnz	r0, .L166
 931              	.L174:
 932 005a 7D4C     		ldr	r4, .L228
 933 005c 0BE0     		b	.L166
 934              	.L171:
 935 005e 236B     		ldr	r3, [r4, #48]
 936 0060 43B1     		cbz	r3, .L216
 937 0062 D4F8CC30 		ldr	r3, [r4, #204]
 938 0066 2BB1     		cbz	r3, .L216
 939 0068 7A4B     		ldr	r3, .L228+4
 940 006a 1B69     		ldr	r3, [r3, #16]
 941 006c D3F8F831 		ldr	r3, [r3, #504]
 942 0070 092B     		cmp	r3, #9
 943 0072 45D1     		bne	.L225
 944              	.L216:
 945 0074 0024     		movs	r4, #0
 946              	.L166:
 947 0076 2046     		mov	r0, r4
 948 0078 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 949              	.L223:
 950 007c FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 951 0080 616B     		ldr	r1, [r4, #52]	@ float
 952 0082 FFF7FEFF 		bl	__aeabi_fsub
 953 0086 012D     		cmp	r5, #1
 954 0088 0746     		mov	r7, r0
 955 008a CBD1     		bne	.L226
 956              	.L170:
 957 008c 6068     		ldr	r0, [r4, #4]
 958 008e FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 959 0092 7149     		ldr	r1, .L228+8
 960 0094 0646     		mov	r6, r0
 961 0096 FFF7FEFF 		bl	__aeabi_fcmplt
 962 009a 0028     		cmp	r0, #0
 963 009c EAD1     		bne	.L216
 964 009e 637B     		ldrb	r3, [r4, #13]	@ zero_extendqisi2
 965 00a0 002B     		cmp	r3, #0
 966 00a2 E7D1     		bne	.L216
 967 00a4 4FF07E51 		mov	r1, #1065353216
 968 00a8 3046     		mov	r0, r6
 969 00aa FFF7FEFF 		bl	__aeabi_fcmpeq
ARM GAS  /tmp/ccsdiHny.s 			page 18


 970 00ae 0028     		cmp	r0, #0
 971 00b0 D3D1     		bne	.L174
 972 00b2 D4F85080 		ldr	r8, [r4, #80]
 973 00b6 B8F1000F 		cmp	r8, #0
 974 00ba 40F08E80 		bne	.L175
 975 00be D4F83890 		ldr	r9, [r4, #56]	@ float
 976 00c2 256C     		ldr	r5, [r4, #64]	@ float
 977              	.L176:
 978 00c4 6449     		ldr	r1, .L228+8
 979 00c6 2846     		mov	r0, r5
 980 00c8 FFF7FEFF 		bl	__aeabi_fcmplt
 981 00cc 3146     		mov	r1, r6
 982 00ce 0028     		cmp	r0, #0
 983 00d0 72D0     		beq	.L217
 984 00d2 4FF07E50 		mov	r0, #1065353216
 985 00d6 FFF7FEFF 		bl	__aeabi_fdiv
 986 00da 3946     		mov	r1, r7
 987 00dc FFF7FEFF 		bl	__aeabi_fmul
 988 00e0 3946     		mov	r1, r7
 989 00e2 FFF7FEFF 		bl	__aeabi_fsub
 990 00e6 0146     		mov	r1, r0
 991 00e8 0446     		mov	r4, r0
 992 00ea FFF7FEFF 		bl	__aeabi_fcmpun
 993 00ee 0028     		cmp	r0, #0
 994 00f0 C1D1     		bne	.L166
 995              	.L219:
 996 00f2 5749     		ldr	r1, .L228
 997 00f4 2046     		mov	r0, r4
 998 00f6 FFF7FEFF 		bl	__aeabi_fcmpgt
 999 00fa 0028     		cmp	r0, #0
 1000 00fc ADD0     		beq	.L174
 1001 00fe BAE7     		b	.L166
 1002              	.L225:
 1003 0100 0026     		movs	r6, #0
 1004 0102 C3F13408 		rsb	r8, r3, #52
 1005 0106 04EB8808 		add	r8, r4, r8, lsl #2
 1006 010a 04F1AC05 		add	r5, r4, #172
 1007              	.L183:
 1008 010e 55F8041B 		ldr	r1, [r5], #4	@ float
 1009 0112 3046     		mov	r0, r6
 1010 0114 FFF7FEFF 		bl	__aeabi_fadd
 1011 0118 A845     		cmp	r8, r5
 1012 011a 0646     		mov	r6, r0
 1013 011c F7D1     		bne	.L183
 1014 011e 0021     		movs	r1, #0
 1015 0120 FFF7FEFF 		bl	__aeabi_fcmpgt
 1016 0124 0028     		cmp	r0, #0
 1017 0126 A5D0     		beq	.L216
 1018 0128 6368     		ldr	r3, [r4, #4]
 1019 012a 4C49     		ldr	r1, .L228+12
 1020 012c D3F83852 		ldr	r5, [r3, #568]	@ float
 1021 0130 3046     		mov	r0, r6
 1022 0132 FFF7FEFF 		bl	__aeabi_fmul
 1023 0136 2946     		mov	r1, r5
 1024 0138 FFF7FEFF 		bl	__aeabi_fcmplt
 1025 013c 0028     		cmp	r0, #0
 1026 013e 99D0     		beq	.L216
ARM GAS  /tmp/ccsdiHny.s 			page 19


 1027 0140 2946     		mov	r1, r5
 1028 0142 3046     		mov	r0, r6
 1029 0144 FFF7FEFF 		bl	__aeabi_fcmple
 1030 0148 0028     		cmp	r0, #0
 1031 014a 86D1     		bne	.L174
 1032 014c D4F850B0 		ldr	fp, [r4, #80]
 1033 0150 BBF1000F 		cmp	fp, #0
 1034 0154 5AD0     		beq	.L186
 1035 0156 4FF00009 		mov	r9, #0
 1036 015a 0BF1150A 		add	r10, fp, #21
 1037 015e 04EB8A0A 		add	r10, r4, r10, lsl #2
 1038 0162 04F15408 		add	r8, r4, #84
 1039 0166 6834     		adds	r4, r4, #104
 1040              	.L187:
 1041 0168 58F8041B 		ldr	r1, [r8], #4	@ float
 1042 016c 54F8040B 		ldr	r0, [r4], #4	@ float
 1043 0170 FFF7FEFF 		bl	__aeabi_fdiv
 1044 0174 0146     		mov	r1, r0
 1045 0176 4846     		mov	r0, r9
 1046 0178 FFF7FEFF 		bl	__aeabi_fadd
 1047 017c C245     		cmp	r10, r8
 1048 017e 8146     		mov	r9, r0
 1049 0180 F2D1     		bne	.L187
 1050 0182 5846     		mov	r0, fp
 1051 0184 FFF7FEFF 		bl	__aeabi_ui2f
 1052 0188 0146     		mov	r1, r0
 1053 018a 4846     		mov	r0, r9
 1054 018c FFF7FEFF 		bl	__aeabi_fdiv
 1055 0190 0446     		mov	r4, r0
 1056              	.L188:
 1057 0192 0021     		movs	r1, #0
 1058 0194 2046     		mov	r0, r4
 1059 0196 FFF7FEFF 		bl	__aeabi_fcmpeq
 1060 019a 0028     		cmp	r0, #0
 1061 019c 43D1     		bne	.L189
 1062 019e 2946     		mov	r1, r5
 1063 01a0 3046     		mov	r0, r6
 1064 01a2 FFF7FEFF 		bl	__aeabi_fsub
 1065 01a6 2146     		mov	r1, r4
 1066 01a8 FFF7FEFF 		bl	__aeabi_fdiv
 1067 01ac 0446     		mov	r4, r0
 1068 01ae 62E7     		b	.L166
 1069              	.L224:
 1070 01b0 2046     		mov	r0, r4
 1071 01b2 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 1072 01b6 44E7     		b	.L194
 1073              	.L217:
 1074 01b8 4FF07E50 		mov	r0, #1065353216
 1075 01bc FFF7FEFF 		bl	__aeabi_fsub
 1076 01c0 4946     		mov	r1, r9
 1077 01c2 FFF7FEFF 		bl	__aeabi_fmul
 1078 01c6 2946     		mov	r1, r5
 1079 01c8 FFF7FEFF 		bl	__aeabi_fdiv
 1080 01cc 0146     		mov	r1, r0
 1081 01ce 0446     		mov	r4, r0
 1082 01d0 FFF7FEFF 		bl	__aeabi_fcmpun
 1083 01d4 0028     		cmp	r0, #0
ARM GAS  /tmp/ccsdiHny.s 			page 20


 1084 01d6 8CD0     		beq	.L219
 1085 01d8 4DE7     		b	.L166
 1086              	.L175:
 1087 01da B8F1010F 		cmp	r8, #1
 1088 01de 2ED0     		beq	.L227
 1089 01e0 4FF00009 		mov	r9, #0
 1090 01e4 04F1580A 		add	r10, r4, #88
 1091              	.L178:
 1092 01e8 4846     		mov	r0, r9
 1093 01ea 5AF8041B 		ldr	r1, [r10], #4	@ float
 1094 01ee FFF7FEFF 		bl	__aeabi_fadd
 1095 01f2 0135     		adds	r5, r5, #1
 1096 01f4 A845     		cmp	r8, r5
 1097 01f6 8146     		mov	r9, r0
 1098 01f8 F6D8     		bhi	.L178
 1099 01fa 04EB8808 		add	r8, r4, r8, lsl #2
 1100 01fe D8F87800 		ldr	r0, [r8, #120]	@ float
 1101 0202 E16F     		ldr	r1, [r4, #124]	@ float
 1102 0204 FFF7FEFF 		bl	__aeabi_fsub
 1103 0208 0546     		mov	r5, r0
 1104 020a 5BE7     		b	.L176
 1105              	.L186:
 1106 020c D4F83880 		ldr	r8, [r4, #56]	@ float
 1107 0210 0021     		movs	r1, #0
 1108 0212 4046     		mov	r0, r8
 1109 0214 FFF7FEFF 		bl	__aeabi_fcmpgt
 1110 0218 28B1     		cbz	r0, .L189
 1111 021a E06B     		ldr	r0, [r4, #60]	@ float
 1112 021c 4146     		mov	r1, r8
 1113 021e FFF7FEFF 		bl	__aeabi_fdiv
 1114 0222 0446     		mov	r4, r0
 1115 0224 B5E7     		b	.L188
 1116              	.L189:
 1117 0226 2946     		mov	r1, r5
 1118 0228 3046     		mov	r0, r6
 1119 022a FFF7FEFF 		bl	__aeabi_fsub
 1120 022e 3946     		mov	r1, r7
 1121 0230 FFF7FEFF 		bl	__aeabi_fmul
 1122 0234 2946     		mov	r1, r5
 1123 0236 FFF7FEFF 		bl	__aeabi_fdiv
 1124 023a 0446     		mov	r4, r0
 1125 023c 1BE7     		b	.L166
 1126              	.L227:
 1127 023e 216C     		ldr	r1, [r4, #64]	@ float
 1128 0240 E06F     		ldr	r0, [r4, #124]	@ float
 1129 0242 FFF7FEFF 		bl	__aeabi_fsub
 1130 0246 D4F85490 		ldr	r9, [r4, #84]	@ float
 1131 024a 0546     		mov	r5, r0
 1132 024c 3AE7     		b	.L176
 1133              	.L229:
 1134 024e 00BF     		.align	2
 1135              	.L228:
 1136 0250 CDCCCC3D 		.word	1036831949
 1137 0254 00000000 		.word	reprap
 1138 0258 6F12833A 		.word	981668463
 1139 025c 0AD7233C 		.word	1008981770
 1140              		.size	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod, .-_ZNK12PrintMonitor16Estimate
ARM GAS  /tmp/ccsdiHny.s 			page 21


 1141              		.section	.text._ZNK12PrintMonitor16GetPrintDurationEv,"ax",%progbits
 1142              		.align	1
 1143              		.p2align 2,,3
 1144              		.global	_ZNK12PrintMonitor16GetPrintDurationEv
 1145              		.syntax unified
 1146              		.thumb
 1147              		.thumb_func
 1148              		.fpu softvfp
 1149              		.type	_ZNK12PrintMonitor16GetPrintDurationEv, %function
 1150              	_ZNK12PrintMonitor16GetPrintDurationEv:
 1151              		@ args = 0, pretend = 0, frame = 0
 1152              		@ frame_needed = 0, uses_anonymous_args = 0
 1153              		@ link register save eliminated.
 1154 0000 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 1155 0002 0BB1     		cbz	r3, .L231
 1156 0004 FFF7FEBF 		b	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 1157              	.L231:
 1158 0008 0020     		movs	r0, #0
 1159 000a 7047     		bx	lr
 1160              		.size	_ZNK12PrintMonitor16GetPrintDurationEv, .-_ZNK12PrintMonitor16GetPrintDurationEv
 1161              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1162              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1163              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1164              	_ZL28cpu_irq_prev_interrupt_state:
 1165 0000 00       		.space	1
 1166              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1167              		.align	2
 1168              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1169              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1170              	_ZL32cpu_irq_critical_section_counter:
 1171 0000 00000000 		.space	4
 1172              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1173              		.align	2
 1174              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1175              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1176              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1177 0000 00000000 		.space	4
 1178              		.section	.rodata._ZN12PrintMonitor13StartingPrintEPKc.str1.4,"aMS",%progbits,1
 1179              		.align	2
 1180              	.LC4:
 1181 0000 303A2F67 		.ascii	"0:/gcodes/\000"
 1181      636F6465 
 1181      732F00
 1182              		.section	.rodata._ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer.str1.4,"aMS",%pr
 1183              		.align	2
 1184              	.LC0:
 1185 0000 2563252E 		.ascii	"%c%.1f\000"
 1185      316600
 1186 0007 00       		.space	1
 1187              	.LC1:
 1188 0008 5D2C2267 		.ascii	"],\"generatedBy\":\000"
 1188      656E6572 
 1188      61746564 
 1188      4279223A 
 1188      00
 1189 0019 000000   		.space	3
 1190              	.LC2:
ARM GAS  /tmp/ccsdiHny.s 			page 22


 1191 001c 2C227072 		.ascii	",\"printDuration\":%d,\"fileName\":\000"
 1191      696E7444 
 1191      75726174 
 1191      696F6E22 
 1191      3A25642C 
 1192              	.LC3:
 1193 003c 7B226572 		.ascii	"{\"err\":0,\"size\":%lu,\"height\":%.2f,\"firstLaye"
 1193      72223A30 
 1193      2C227369 
 1193      7A65223A 
 1193      256C752C 
 1194 0068 72486569 		.ascii	"rHeight\":%.2f,\"layerHeight\":%.2f,\"filament\":\000"
 1194      67687422 
 1194      3A252E32 
 1194      662C226C 
 1194      61796572 
 1195              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
