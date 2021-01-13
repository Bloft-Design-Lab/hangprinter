ARM GAS  /tmp/cc6qWudY.s 			page 1


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
  13              		.file	"PrintMonitor.cpp"
  14              		.global	__aeabi_ul2f
  15              		.section	.text._ZNK12PrintMonitor16GetPrintDurationEv.part.4,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK12PrintMonitor16GetPrintDurationEv.part.4, %function
  23              	_ZNK12PrintMonitor16GetPrintDurationEv.part.4:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  27 0002 0446     		mov	r4, r0
  28 0004 D0E90801 		ldrd	r0, [r0, #32]
  29 0008 50EA0103 		orrs	r3, r0, r1
  30 000c 12D0     		beq	.L5
  31              	.L2:
  32 000e D4E90467 		ldrd	r6, [r4, #16]
  33 0012 D4E90A23 		ldrd	r2, [r4, #40]
  34 0016 801B     		subs	r0, r0, r6
  35 0018 61EB0701 		sbc	r1, r1, r7
  36 001c 801A     		subs	r0, r0, r2
  37 001e 61EB0301 		sbc	r1, r1, r3
  38 0022 FFF7FEFF 		bl	__aeabi_ul2f
  39 0026 9FED050A 		vldr.32	s0, .L6
  40 002a 07EE900A 		vmov	s15, r0
  41 002e 27EE800A 		vmul.f32	s0, s15, s0
  42 0032 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  43              	.L5:
  44 0034 FFF7FEFF 		bl	millis64
  45 0038 E9E7     		b	.L2
  46              	.L7:
  47 003a 00BF     		.align	2
  48              	.L6:
  49 003c 6F12833A 		.word	981668463
  50              		.size	_ZNK12PrintMonitor16GetPrintDurationEv.part.4, .-_ZNK12PrintMonitor16GetPrintDurationEv.part
  51              		.section	.text._ZN12PrintMonitorC2ER8PlatformR6GCodes,"ax",%progbits
  52              		.align	1
  53              		.p2align 2,,3
  54              		.global	_ZN12PrintMonitorC2ER8PlatformR6GCodes
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  /tmp/cc6qWudY.s 			page 2


  58              		.fpu fpv4-sp-d16
  59              		.type	_ZN12PrintMonitorC2ER8PlatformR6GCodes, %function
  60              	_ZN12PrintMonitorC2ER8PlatformR6GCodes:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63              		@ link register save eliminated.
  64 0000 D0B4     		push	{r4, r6, r7}
  65 0002 0024     		movs	r4, #0
  66 0004 0026     		movs	r6, #0
  67 0006 0027     		movs	r7, #0
  68 0008 0160     		str	r1, [r0]
  69 000a 0021     		movs	r1, #0
  70 000c C0E90467 		strd	r6, [r0, #16]
  71 0010 C0E90867 		strd	r6, [r0, #32]
  72 0014 C0E90A67 		strd	r6, [r0, #40]
  73 0018 4463     		str	r4, [r0, #52]	@ float
  74 001a 8463     		str	r4, [r0, #56]	@ float
  75 001c C463     		str	r4, [r0, #60]	@ float
  76 001e 0464     		str	r4, [r0, #64]	@ float
  77 0020 4464     		str	r4, [r0, #68]	@ float
  78 0022 8464     		str	r4, [r0, #72]	@ float
  79 0024 C464     		str	r4, [r0, #76]	@ float
  80 0026 C0F89040 		str	r4, [r0, #144]	@ float
  81 002a 4260     		str	r2, [r0, #4]
  82 002c 0173     		strb	r1, [r0, #12]
  83 002e 4173     		strb	r1, [r0, #13]
  84 0030 0163     		str	r1, [r0, #48]
  85 0032 0165     		str	r1, [r0, #80]
  86 0034 80F89410 		strb	r1, [r0, #148]
  87 0038 80F8E610 		strb	r1, [r0, #230]
  88 003c 80F82011 		strb	r1, [r0, #288]
  89 0040 D0BC     		pop	{r4, r6, r7}
  90 0042 7047     		bx	lr
  91              		.size	_ZN12PrintMonitorC2ER8PlatformR6GCodes, .-_ZN12PrintMonitorC2ER8PlatformR6GCodes
  92              		.global	_ZN12PrintMonitorC1ER8PlatformR6GCodes
  93              		.thumb_set _ZN12PrintMonitorC1ER8PlatformR6GCodes,_ZN12PrintMonitorC2ER8PlatformR6GCodes
  94              		.section	.text._ZN12PrintMonitor4InitEv,"ax",%progbits
  95              		.align	1
  96              		.p2align 2,,3
  97              		.global	_ZN12PrintMonitor4InitEv
  98              		.syntax unified
  99              		.thumb
 100              		.thumb_func
 101              		.fpu fpv4-sp-d16
 102              		.type	_ZN12PrintMonitor4InitEv, %function
 103              	_ZN12PrintMonitor4InitEv:
 104              		@ args = 0, pretend = 0, frame = 0
 105              		@ frame_needed = 0, uses_anonymous_args = 0
 106 0000 10B5     		push	{r4, lr}
 107 0002 0446     		mov	r4, r0
 108 0004 FFF7FEFF 		bl	millis
 109 0008 A060     		str	r0, [r4, #8]
 110 000a 10BD     		pop	{r4, pc}
 111              		.size	_ZN12PrintMonitor4InitEv, .-_ZN12PrintMonitor4InitEv
 112              		.global	__aeabi_f2d
 113              		.section	.text._ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer,"ax",%progbits
 114              		.align	1
ARM GAS  /tmp/cc6qWudY.s 			page 3


 115              		.p2align 2,,3
 116              		.global	_ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer
 117              		.syntax unified
 118              		.thumb
 119              		.thumb_func
 120              		.fpu fpv4-sp-d16
 121              		.type	_ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer, %function
 122              	_ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer:
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 126 0004 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 127 0008 87B0     		sub	sp, sp, #28
 128 000a 23B9     		cbnz	r3, .L13
 129              	.L15:
 130 000c 0024     		movs	r4, #0
 131 000e 2046     		mov	r0, r4
 132 0010 07B0     		add	sp, sp, #28
 133              		@ sp needed
 134 0012 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 135              	.L13:
 136 0016 0546     		mov	r5, r0
 137 0018 0846     		mov	r0, r1
 138 001a 0E46     		mov	r6, r1
 139 001c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 140 0020 0446     		mov	r4, r0
 141 0022 0028     		cmp	r0, #0
 142 0024 F2D0     		beq	.L15
 143 0026 D5F8A800 		ldr	r0, [r5, #168]	@ float
 144 002a D5F89880 		ldr	r8, [r5, #152]
 145 002e 3768     		ldr	r7, [r6]
 146 0030 FFF7FEFF 		bl	__aeabi_f2d
 147 0034 CDE90401 		strd	r0, [sp, #16]
 148 0038 D5F8AC00 		ldr	r0, [r5, #172]	@ float
 149 003c FFF7FEFF 		bl	__aeabi_f2d
 150 0040 CDE90201 		strd	r0, [sp, #8]
 151 0044 D5F8B000 		ldr	r0, [r5, #176]	@ float
 152 0048 FFF7FEFF 		bl	__aeabi_f2d
 153 004c 4246     		mov	r2, r8
 154 004e CDE90001 		strd	r0, [sp]
 155 0052 3846     		mov	r0, r7
 156 0054 2A49     		ldr	r1, .L28
 157 0056 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 158 005a D5F8E030 		ldr	r3, [r5, #224]
 159 005e 002B     		cmp	r3, #0
 160 0060 41D0     		beq	.L26
 161 0062 DFF8A8A0 		ldr	r10, .L28+12
 162 0066 05F1B409 		add	r9, r5, #180
 163 006a 0027     		movs	r7, #0
 164 006c 4FF05B08 		mov	r8, #91
 165              	.L18:
 166 0070 59F8040B 		ldr	r0, [r9], #4	@ float
 167 0074 D6F800B0 		ldr	fp, [r6]
 168 0078 FFF7FEFF 		bl	__aeabi_f2d
 169 007c 4246     		mov	r2, r8
 170 007e CDE90001 		strd	r0, [sp]
 171 0082 5846     		mov	r0, fp
ARM GAS  /tmp/cc6qWudY.s 			page 4


 172 0084 5146     		mov	r1, r10
 173 0086 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 174 008a D5F8E030 		ldr	r3, [r5, #224]
 175 008e 0137     		adds	r7, r7, #1
 176 0090 BB42     		cmp	r3, r7
 177 0092 4FF02C08 		mov	r8, #44
 178 0096 EBD8     		bhi	.L18
 179              	.L17:
 180 0098 1A49     		ldr	r1, .L28+4
 181 009a 3068     		ldr	r0, [r6]
 182 009c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 183 00a0 0122     		movs	r2, #1
 184 00a2 0023     		movs	r3, #0
 185 00a4 3068     		ldr	r0, [r6]
 186 00a6 05F1E601 		add	r1, r5, #230
 187 00aa CDE90023 		strd	r2, r3, [sp]
 188 00ae 3222     		movs	r2, #50
 189 00b0 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 190 00b4 2A7B     		ldrb	r2, [r5, #12]	@ zero_extendqisi2
 191 00b6 3768     		ldr	r7, [r6]
 192 00b8 D2B9     		cbnz	r2, .L27
 193              	.L19:
 194 00ba 3846     		mov	r0, r7
 195 00bc 1249     		ldr	r1, .L28+8
 196 00be FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 197 00c2 0023     		movs	r3, #0
 198 00c4 0122     		movs	r2, #1
 199 00c6 3068     		ldr	r0, [r6]
 200 00c8 05F59071 		add	r1, r5, #288
 201 00cc CDE90023 		strd	r2, r3, [sp]
 202 00d0 7822     		movs	r2, #120
 203 00d2 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 204 00d6 3068     		ldr	r0, [r6]
 205 00d8 7D21     		movs	r1, #125
 206 00da FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 207 00de 2046     		mov	r0, r4
 208 00e0 07B0     		add	sp, sp, #28
 209              		@ sp needed
 210 00e2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 211              	.L26:
 212 00e6 5B21     		movs	r1, #91
 213 00e8 3068     		ldr	r0, [r6]
 214 00ea FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 215 00ee D3E7     		b	.L17
 216              	.L27:
 217 00f0 2846     		mov	r0, r5
 218 00f2 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 219 00f6 FDEEC07A 		vcvt.s32.f32	s15, s0
 220 00fa 17EE902A 		vmov	r2, s15	@ int
 221 00fe DCE7     		b	.L19
 222              	.L29:
 223              		.align	2
 224              	.L28:
 225 0100 00000000 		.word	.LC0
 226 0104 64000000 		.word	.LC2
 227 0108 78000000 		.word	.LC3
 228 010c 5C000000 		.word	.LC1
ARM GAS  /tmp/cc6qWudY.s 			page 5


 229              		.size	_ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer, .-_ZNK12PrintMonitor27GetP
 230              		.section	.text._ZNK12PrintMonitor21GetFirstLayerDurationEv,"ax",%progbits
 231              		.align	1
 232              		.p2align 2,,3
 233              		.global	_ZNK12PrintMonitor21GetFirstLayerDurationEv
 234              		.syntax unified
 235              		.thumb
 236              		.thumb_func
 237              		.fpu fpv4-sp-d16
 238              		.type	_ZNK12PrintMonitor21GetFirstLayerDurationEv, %function
 239              	_ZNK12PrintMonitor21GetFirstLayerDurationEv:
 240              		@ args = 0, pretend = 0, frame = 0
 241              		@ frame_needed = 0, uses_anonymous_args = 0
 242 0000 90ED0E0A 		vldr.32	s0, [r0, #56]
 243 0004 B5EEC00A 		vcmpe.f32	s0, #0
 244 0008 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 245 000c 00DD     		ble	.L39
 246 000e 7047     		bx	lr
 247              	.L39:
 248 0010 026B     		ldr	r2, [r0, #48]
 249 0012 10B5     		push	{r4, lr}
 250 0014 0446     		mov	r4, r0
 251 0016 5AB1     		cbz	r2, .L33
 252 0018 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 253 001a 33B9     		cbnz	r3, .L40
 254 001c 9FED060A 		vldr.32	s0, .L41
 255              	.L32:
 256 0020 D4ED0D7A 		vldr.32	s15, [r4, #52]
 257 0024 30EE670A 		vsub.f32	s0, s0, s15
 258 0028 10BD     		pop	{r4, pc}
 259              	.L40:
 260 002a FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 261 002e F7E7     		b	.L32
 262              	.L33:
 263 0030 9FED010A 		vldr.32	s0, .L41
 264 0034 10BD     		pop	{r4, pc}
 265              	.L42:
 266 0036 00BF     		.align	2
 267              	.L41:
 268 0038 00000000 		.word	0
 269              		.size	_ZNK12PrintMonitor21GetFirstLayerDurationEv, .-_ZNK12PrintMonitor21GetFirstLayerDurationEv
 270              		.section	.text._ZNK12PrintMonitor17GetWarmUpDurationEv,"ax",%progbits
 271              		.align	1
 272              		.p2align 2,,3
 273              		.global	_ZNK12PrintMonitor17GetWarmUpDurationEv
 274              		.syntax unified
 275              		.thumb
 276              		.thumb_func
 277              		.fpu fpv4-sp-d16
 278              		.type	_ZNK12PrintMonitor17GetWarmUpDurationEv, %function
 279              	_ZNK12PrintMonitor17GetWarmUpDurationEv:
 280              		@ args = 0, pretend = 0, frame = 0
 281              		@ frame_needed = 0, uses_anonymous_args = 0
 282 0000 10B5     		push	{r4, lr}
 283 0002 2DED028B 		vpush.64	{d8}
 284 0006 437B     		ldrb	r3, [r0, #13]	@ zero_extendqisi2
 285 0008 90ED0D8A 		vldr.32	s16, [r0, #52]
ARM GAS  /tmp/cc6qWudY.s 			page 6


 286 000c 23B9     		cbnz	r3, .L49
 287 000e B0EE480A 		vmov.f32	s0, s16
 288 0012 BDEC028B 		vldm	sp!, {d8}
 289 0016 10BD     		pop	{r4, pc}
 290              	.L49:
 291 0018 0446     		mov	r4, r0
 292 001a FFF7FEFF 		bl	millis64
 293 001e D4E90623 		ldrd	r2, [r4, #24]
 294 0022 801A     		subs	r0, r0, r2
 295 0024 61EB0301 		sbc	r1, r1, r3
 296 0028 FFF7FEFF 		bl	__aeabi_ul2f
 297 002c DFED057A 		vldr.32	s15, .L50
 298 0030 07EE100A 		vmov	s14, r0
 299 0034 A7EE278A 		vfma.f32	s16, s14, s15
 300 0038 B0EE480A 		vmov.f32	s0, s16
 301 003c BDEC028B 		vldm	sp!, {d8}
 302 0040 10BD     		pop	{r4, pc}
 303              	.L51:
 304 0042 00BF     		.align	2
 305              	.L50:
 306 0044 6F12833A 		.word	981668463
 307              		.size	_ZNK12PrintMonitor17GetWarmUpDurationEv, .-_ZNK12PrintMonitor17GetWarmUpDurationEv
 308              		.section	.text._ZN12PrintMonitor13StartingPrintEPKc,"ax",%progbits
 309              		.align	1
 310              		.p2align 2,,3
 311              		.global	_ZN12PrintMonitor13StartingPrintEPKc
 312              		.syntax unified
 313              		.thumb
 314              		.thumb_func
 315              		.fpu fpv4-sp-d16
 316              		.type	_ZN12PrintMonitor13StartingPrintEPKc, %function
 317              	_ZN12PrintMonitor13StartingPrintEPKc:
 318              		@ args = 0, pretend = 0, frame = 8
 319              		@ frame_needed = 0, uses_anonymous_args = 0
 320 0000 70B5     		push	{r4, r5, r6, lr}
 321 0002 0368     		ldr	r3, [r0]
 322 0004 84B0     		sub	sp, sp, #16
 323 0006 0446     		mov	r4, r0
 324 0008 D3F8B409 		ldr	r0, [r3, #2484]
 325 000c 0D46     		mov	r5, r1
 326 000e 0026     		movs	r6, #0
 327 0010 04F19803 		add	r3, r4, #152
 328 0014 2A46     		mov	r2, r5
 329 0016 0949     		ldr	r1, .L54
 330 0018 0096     		str	r6, [sp]
 331 001a 00F59160 		add	r0, r0, #1160
 332 001e FFF7FEFF 		bl	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob
 333 0022 04F59072 		add	r2, r4, #288
 334 0026 84F89400 		strb	r0, [r4, #148]
 335 002a 7923     		movs	r3, #121
 336 002c 2946     		mov	r1, r5
 337 002e 02A8     		add	r0, sp, #8
 338 0030 CDE90223 		strd	r2, r3, [sp, #8]
 339 0034 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 340 0038 04B0     		add	sp, sp, #16
 341              		@ sp needed
 342 003a 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  /tmp/cc6qWudY.s 			page 7


 343              	.L55:
 344              		.align	2
 345              	.L54:
 346 003c 00000000 		.word	.LC4
 347              		.size	_ZN12PrintMonitor13StartingPrintEPKc, .-_ZN12PrintMonitor13StartingPrintEPKc
 348              		.section	.text._ZN12PrintMonitor12StartedPrintEv,"ax",%progbits
 349              		.align	1
 350              		.p2align 2,,3
 351              		.global	_ZN12PrintMonitor12StartedPrintEv
 352              		.syntax unified
 353              		.thumb
 354              		.thumb_func
 355              		.fpu fpv4-sp-d16
 356              		.type	_ZN12PrintMonitor12StartedPrintEv, %function
 357              	_ZN12PrintMonitor12StartedPrintEv:
 358              		@ args = 0, pretend = 0, frame = 0
 359              		@ frame_needed = 0, uses_anonymous_args = 0
 360 0000 0023     		movs	r3, #0
 361 0002 0122     		movs	r2, #1
 362 0004 10B5     		push	{r4, lr}
 363 0006 4373     		strb	r3, [r0, #13]
 364 0008 0273     		strb	r2, [r0, #12]
 365 000a 0446     		mov	r4, r0
 366 000c FFF7FEFF 		bl	millis64
 367 0010 C4E90401 		strd	r0, [r4, #16]
 368 0014 0023     		movs	r3, #0
 369 0016 6363     		str	r3, [r4, #52]	@ float
 370 0018 10BD     		pop	{r4, pc}
 371              		.size	_ZN12PrintMonitor12StartedPrintEv, .-_ZN12PrintMonitor12StartedPrintEv
 372 001a 00BF     		.section	.text._ZN12PrintMonitor18FirstLayerCompleteEv,"ax",%progbits
 373              		.align	1
 374              		.p2align 2,,3
 375              		.global	_ZN12PrintMonitor18FirstLayerCompleteEv
 376              		.syntax unified
 377              		.thumb
 378              		.thumb_func
 379              		.fpu fpv4-sp-d16
 380              		.type	_ZN12PrintMonitor18FirstLayerCompleteEv, %function
 381              	_ZN12PrintMonitor18FirstLayerCompleteEv:
 382              		@ args = 0, pretend = 0, frame = 0
 383              		@ frame_needed = 0, uses_anonymous_args = 0
 384 0000 10B5     		push	{r4, lr}
 385 0002 4368     		ldr	r3, [r0, #4]
 386 0004 027B     		ldrb	r2, [r0, #12]	@ zero_extendqisi2
 387 0006 D3F8F012 		ldr	r1, [r3, #752]	@ float
 388 000a C163     		str	r1, [r0, #60]	@ float
 389 000c 0446     		mov	r4, r0
 390 000e 92BB     		cbnz	r2, .L67
 391 0010 9FED1B0A 		vldr.32	s0, .L69
 392              	.L59:
 393 0014 D4ED0D7A 		vldr.32	s15, [r4, #52]
 394 0018 30EE670A 		vsub.f32	s0, s0, s15
 395 001c 1846     		mov	r0, r3
 396 001e 84ED0E0A 		vstr.32	s0, [r4, #56]
 397 0022 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 398 0026 D4ED2A7A 		vldr.32	s15, [r4, #168]
 399 002a 84ED100A 		vstr.32	s0, [r4, #64]
ARM GAS  /tmp/cc6qWudY.s 			page 8


 400 002e F5EEC07A 		vcmpe.f32	s15, #0
 401 0032 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 402 0036 06DD     		ble	.L58
 403 0038 94ED2C0A 		vldr.32	s0, [r4, #176]
 404 003c F4EEC07A 		vcmpe.f32	s15, s0
 405 0040 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 406 0044 00D4     		bmi	.L68
 407              	.L58:
 408 0046 10BD     		pop	{r4, pc}
 409              	.L68:
 410 0048 94ED2B7A 		vldr.32	s14, [r4, #172]
 411 004c 30EE470A 		vsub.f32	s0, s0, s14
 412 0050 80EE270A 		vdiv.f32	s0, s0, s15
 413 0054 FFF7FEFF 		bl	lrintf
 414 0058 94ED0E7A 		vldr.32	s14, [r4, #56]
 415 005c 07EE900A 		vmov	s15, r0	@ int
 416 0060 F5EE006A 		vmov.f32	s13, #2.5e-1
 417 0064 F8EE677A 		vcvt.f32.u32	s15, s15
 418 0068 27EE267A 		vmul.f32	s14, s14, s13
 419 006c 67EE877A 		vmul.f32	s15, s15, s14
 420 0070 C4ED247A 		vstr.32	s15, [r4, #144]
 421 0074 10BD     		pop	{r4, pc}
 422              	.L67:
 423 0076 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 424 007a 6368     		ldr	r3, [r4, #4]
 425 007c CAE7     		b	.L59
 426              	.L70:
 427 007e 00BF     		.align	2
 428              	.L69:
 429 0080 00000000 		.word	0
 430              		.size	_ZN12PrintMonitor18FirstLayerCompleteEv, .-_ZN12PrintMonitor18FirstLayerCompleteEv
 431              		.section	.text._ZN12PrintMonitor13LayerCompleteEv,"ax",%progbits
 432              		.align	1
 433              		.p2align 2,,3
 434              		.global	_ZN12PrintMonitor13LayerCompleteEv
 435              		.syntax unified
 436              		.thumb
 437              		.thumb_func
 438              		.fpu fpv4-sp-d16
 439              		.type	_ZN12PrintMonitor13LayerCompleteEv, %function
 440              	_ZN12PrintMonitor13LayerCompleteEv:
 441              		@ args = 0, pretend = 0, frame = 0
 442              		@ frame_needed = 0, uses_anonymous_args = 0
 443 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 444 0002 2DED028B 		vpush.64	{d8}
 445 0006 056D     		ldr	r5, [r0, #80]
 446 0008 4668     		ldr	r6, [r0, #4]
 447 000a 077B     		ldrb	r7, [r0, #12]	@ zero_extendqisi2
 448 000c 96EDBC8A 		vldr.32	s16, [r6, #752]
 449 0010 042D     		cmp	r5, #4
 450 0012 0446     		mov	r4, r0
 451 0014 1FD8     		bhi	.L72
 452 0016 002D     		cmp	r5, #0
 453 0018 79D1     		bne	.L73
 454 001a D0ED0F7A 		vldr.32	s15, [r0, #60]
 455 001e 78EE677A 		vsub.f32	s15, s16, s15
 456 0022 C0ED1A7A 		vstr.32	s15, [r0, #104]
ARM GAS  /tmp/cc6qWudY.s 			page 9


 457 0026 002F     		cmp	r7, #0
 458 0028 40F08D80 		bne	.L101
 459 002c 9FED550A 		vldr.32	s0, .L105
 460              	.L74:
 461 0030 D4ED0D7A 		vldr.32	s15, [r4, #52]
 462 0034 30EE670A 		vsub.f32	s0, s0, s15
 463 0038 04EB8503 		add	r3, r4, r5, lsl #2
 464 003c 83ED150A 		vstr.32	s0, [r3, #84]
 465              	.L75:
 466 0040 3046     		mov	r0, r6
 467 0042 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 468 0046 04EB8505 		add	r5, r4, r5, lsl #2
 469 004a 85ED1F0A 		vstr.32	s0, [r5, #124]
 470 004e 236D     		ldr	r3, [r4, #80]
 471 0050 0133     		adds	r3, r3, #1
 472 0052 2365     		str	r3, [r4, #80]
 473 0054 20E0     		b	.L77
 474              	.L72:
 475 0056 00F15403 		add	r3, r0, #84
 476 005a 6430     		adds	r0, r0, #100
 477              	.L78:
 478 005c 5A68     		ldr	r2, [r3, #4]	@ float
 479 005e 43F8042B 		str	r2, [r3], #4	@ float
 480 0062 5969     		ldr	r1, [r3, #20]	@ float
 481 0064 9A6A     		ldr	r2, [r3, #40]	@ float
 482 0066 1961     		str	r1, [r3, #16]	@ float
 483 0068 8342     		cmp	r3, r0
 484 006a 5A62     		str	r2, [r3, #36]	@ float
 485 006c F6D1     		bne	.L78
 486 006e 002F     		cmp	r7, #0
 487 0070 64D1     		bne	.L102
 488 0072 9FED440A 		vldr.32	s0, .L105
 489              	.L79:
 490 0076 94ED117A 		vldr.32	s14, [r4, #68]
 491 007a D4ED127A 		vldr.32	s15, [r4, #72]
 492 007e 30EE470A 		vsub.f32	s0, s0, s14
 493 0082 78EE677A 		vsub.f32	s15, s16, s15
 494 0086 3046     		mov	r0, r6
 495 0088 84ED190A 		vstr.32	s0, [r4, #100]
 496 008c C4ED1E7A 		vstr.32	s15, [r4, #120]
 497 0090 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 498 0094 84ED230A 		vstr.32	s0, [r4, #140]
 499              	.L77:
 500 0098 94ED2A7A 		vldr.32	s14, [r4, #168]
 501 009c 84ED128A 		vstr.32	s16, [r4, #72]
 502 00a0 B5EEC07A 		vcmpe.f32	s14, #0
 503 00a4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 504 00a8 2EDD     		ble	.L71
 505 00aa 94ED2C0A 		vldr.32	s0, [r4, #176]
 506 00ae B4EEC07A 		vcmpe.f32	s14, s0
 507 00b2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 508 00b6 27D5     		bpl	.L71
 509 00b8 226D     		ldr	r2, [r4, #80]
 510 00ba 042A     		cmp	r2, #4
 511 00bc 3BD8     		bhi	.L91
 512 00be 94ED0E8A 		vldr.32	s16, [r4, #56]
 513 00c2 F5EE007A 		vmov.f32	s15, #2.5e-1
ARM GAS  /tmp/cc6qWudY.s 			page 10


 514 00c6 28EE278A 		vmul.f32	s16, s16, s15
 515 00ca 002A     		cmp	r2, #0
 516 00cc 45D0     		beq	.L84
 517              	.L83:
 518 00ce 04F15403 		add	r3, r4, #84
 519 00d2 03EB8201 		add	r1, r3, r2, lsl #2
 520              	.L85:
 521 00d6 F3EC017A 		vldmia.32	r3!, {s15}
 522 00da 9942     		cmp	r1, r3
 523 00dc 38EE278A 		vadd.f32	s16, s16, s15
 524 00e0 F9D1     		bne	.L85
 525 00e2 052A     		cmp	r2, #5
 526 00e4 39D1     		bne	.L84
 527 00e6 F1EE048A 		vmov.f32	s17, #5.0e+0
 528              	.L86:
 529 00ea D4ED2B7A 		vldr.32	s15, [r4, #172]
 530 00ee 30EE670A 		vsub.f32	s0, s0, s15
 531 00f2 80EE070A 		vdiv.f32	s0, s0, s14
 532 00f6 FFF7FEFF 		bl	lrintf
 533 00fa 236B     		ldr	r3, [r4, #48]
 534 00fc 0130     		adds	r0, r0, #1
 535 00fe 8342     		cmp	r3, r0
 536 0100 31D3     		bcc	.L103
 537 0102 214B     		ldr	r3, .L105+4
 538 0104 C4F89030 		str	r3, [r4, #144]	@ float
 539              	.L71:
 540 0108 BDEC028B 		vldm	sp!, {d8}
 541 010c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 542              	.L73:
 543 010e D0ED127A 		vldr.32	s15, [r0, #72]
 544 0112 78EE677A 		vsub.f32	s15, s16, s15
 545 0116 00EB8503 		add	r3, r0, r5, lsl #2
 546 011a C3ED1A7A 		vstr.32	s15, [r3, #104]
 547 011e BFB9     		cbnz	r7, .L104
 548 0120 9FED180A 		vldr.32	s0, .L105
 549              	.L76:
 550 0124 D4ED117A 		vldr.32	s15, [r4, #68]
 551 0128 30EE670A 		vsub.f32	s0, s0, s15
 552 012c 04EB8503 		add	r3, r4, r5, lsl #2
 553 0130 83ED150A 		vstr.32	s0, [r3, #84]
 554 0134 84E7     		b	.L75
 555              	.L91:
 556 0136 9FED138A 		vldr.32	s16, .L105
 557 013a C8E7     		b	.L83
 558              	.L102:
 559 013c 2046     		mov	r0, r4
 560 013e FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 561 0142 6668     		ldr	r6, [r4, #4]
 562 0144 97E7     		b	.L79
 563              	.L101:
 564 0146 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 565 014a 256D     		ldr	r5, [r4, #80]
 566 014c 6668     		ldr	r6, [r4, #4]
 567 014e 6FE7     		b	.L74
 568              	.L104:
 569 0150 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 570 0154 256D     		ldr	r5, [r4, #80]
ARM GAS  /tmp/cc6qWudY.s 			page 11


 571 0156 6668     		ldr	r6, [r4, #4]
 572 0158 E4E7     		b	.L76
 573              	.L84:
 574 015a 0132     		adds	r2, r2, #1
 575 015c 07EE902A 		vmov	s15, r2	@ int
 576 0160 F8EEE78A 		vcvt.f32.s32	s17, s15
 577 0164 C1E7     		b	.L86
 578              	.L103:
 579 0166 88EE287A 		vdiv.f32	s14, s16, s17
 580 016a C31A     		subs	r3, r0, r3
 581 016c 07EE903A 		vmov	s15, r3	@ int
 582 0170 F8EE677A 		vcvt.f32.u32	s15, s15
 583 0174 67EE877A 		vmul.f32	s15, s15, s14
 584 0178 C4ED247A 		vstr.32	s15, [r4, #144]
 585 017c BDEC028B 		vldm	sp!, {d8}
 586 0180 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 587              	.L106:
 588 0182 00BF     		.align	2
 589              	.L105:
 590 0184 00000000 		.word	0
 591 0188 CDCCCC3D 		.word	1036831949
 592              		.size	_ZN12PrintMonitor13LayerCompleteEv, .-_ZN12PrintMonitor13LayerCompleteEv
 593              		.section	.text._ZN12PrintMonitor4SpinEv,"ax",%progbits
 594              		.align	1
 595              		.p2align 2,,3
 596              		.global	_ZN12PrintMonitor4SpinEv
 597              		.syntax unified
 598              		.thumb
 599              		.thumb_func
 600              		.fpu fpv4-sp-d16
 601              		.type	_ZN12PrintMonitor4SpinEv, %function
 602              	_ZN12PrintMonitor4SpinEv:
 603              		@ args = 0, pretend = 0, frame = 48
 604              		@ frame_needed = 0, uses_anonymous_args = 0
 605 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 606 0004 90F82031 		ldrb	r3, [r0, #288]	@ zero_extendqisi2
 607 0008 8FB0     		sub	sp, sp, #60
 608 000a 0646     		mov	r6, r0
 609 000c 13B1     		cbz	r3, .L111
 610 000e 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 611 0012 53B1     		cbz	r3, .L156
 612              	.L111:
 613 0014 7068     		ldr	r0, [r6, #4]
 614 0016 FFF7FEFF 		bl	_ZNK6GCodes9IsRunningEv
 615 001a E0B9     		cbnz	r0, .L157
 616              	.L151:
 617 001c D6E90823 		ldrd	r2, [r6, #32]
 618 0020 1343     		orrs	r3, r2, r3
 619 0022 33D0     		beq	.L158
 620              	.L107:
 621 0024 0FB0     		add	sp, sp, #60
 622              		@ sp needed
 623 0026 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 624              	.L156:
 625 002a 0268     		ldr	r2, [r0]
 626 002c 7149     		ldr	r1, .L164
 627 002e D2F8B409 		ldr	r0, [r2, #2484]
ARM GAS  /tmp/cc6qWudY.s 			page 12


 628 0032 0093     		str	r3, [sp]
 629 0034 00F59160 		add	r0, r0, #1160
 630 0038 06F19803 		add	r3, r6, #152
 631 003c 06F59072 		add	r2, r6, #288
 632 0040 FFF7FEFF 		bl	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob
 633 0044 86F89400 		strb	r0, [r6, #148]
 634 0048 0028     		cmp	r0, #0
 635 004a EBD0     		beq	.L107
 636 004c 7068     		ldr	r0, [r6, #4]
 637 004e FFF7FEFF 		bl	_ZNK6GCodes9IsRunningEv
 638 0052 0028     		cmp	r0, #0
 639 0054 E2D0     		beq	.L151
 640              	.L157:
 641 0056 FFF7FEFF 		bl	millis
 642 005a 337B     		ldrb	r3, [r6, #12]	@ zero_extendqisi2
 643 005c 0746     		mov	r7, r0
 644 005e 002B     		cmp	r3, #0
 645 0060 E0D0     		beq	.L107
 646 0062 B368     		ldr	r3, [r6, #8]
 647 0064 C31A     		subs	r3, r0, r3
 648 0066 C82B     		cmp	r3, #200
 649 0068 DCD9     		bls	.L107
 650 006a D6E90823 		ldrd	r2, [r6, #32]
 651 006e 1343     		orrs	r3, r2, r3
 652 0070 1CD1     		bne	.L159
 653              	.L114:
 654 0072 7068     		ldr	r0, [r6, #4]
 655 0074 FFF7FEFF 		bl	_ZNK6GCodes11IsHeatingUpEv
 656 0078 737B     		ldrb	r3, [r6, #13]	@ zero_extendqisi2
 657 007a 70B9     		cbnz	r0, .L160
 658 007c 002B     		cmp	r3, #0
 659 007e 59D1     		bne	.L161
 660              	.L118:
 661 0080 7068     		ldr	r0, [r6, #4]
 662 0082 FFF7FEFF 		bl	_ZNK6GCodes14DoingFileMacroEv
 663 0086 18B3     		cbz	r0, .L162
 664              	.L117:
 665 0088 B760     		str	r7, [r6, #8]
 666 008a CBE7     		b	.L107
 667              	.L158:
 668 008c FFF7FEFF 		bl	millis64
 669 0090 C6E90801 		strd	r0, [r6, #32]
 670 0094 0FB0     		add	sp, sp, #60
 671              		@ sp needed
 672 0096 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 673              	.L160:
 674 009a 002B     		cmp	r3, #0
 675 009c F4D1     		bne	.L117
 676 009e 0123     		movs	r3, #1
 677 00a0 7373     		strb	r3, [r6, #13]
 678 00a2 FFF7FEFF 		bl	millis64
 679 00a6 C6E90601 		strd	r0, [r6, #24]
 680 00aa EDE7     		b	.L117
 681              	.L159:
 682 00ac FFF7FEFF 		bl	millis64
 683 00b0 D6E90A23 		ldrd	r2, [r6, #40]
 684 00b4 D6E90845 		ldrd	r4, [r6, #32]
ARM GAS  /tmp/cc6qWudY.s 			page 13


 685 00b8 121B     		subs	r2, r2, r4
 686 00ba 63EB0503 		sbc	r3, r3, r5
 687 00be 1218     		adds	r2, r2, r0
 688 00c0 4B41     		adcs	r3, r3, r1
 689 00c2 0020     		movs	r0, #0
 690 00c4 0021     		movs	r1, #0
 691 00c6 C6E90A23 		strd	r2, [r6, #40]
 692 00ca C6E90801 		strd	r0, [r6, #32]
 693 00ce D0E7     		b	.L114
 694              	.L162:
 695 00d0 494C     		ldr	r4, .L164+4
 696 00d2 A068     		ldr	r0, [r4, #8]	@ unaligned
 697 00d4 FFF7FEFF 		bl	_ZNK4Move11IsExtrudingEv
 698 00d8 0028     		cmp	r0, #0
 699 00da D5D0     		beq	.L117
 700 00dc 2046     		mov	r0, r4
 701 00de A568     		ldr	r5, [r4, #8]
 702 00e0 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 703 00e4 8046     		mov	r8, r0
 704 00e6 2046     		mov	r0, r4
 705 00e8 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 706 00ec 4246     		mov	r2, r8
 707 00ee 0346     		mov	r3, r0
 708 00f0 02A9     		add	r1, sp, #8
 709 00f2 2846     		mov	r0, r5
 710 00f4 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 711 00f8 336B     		ldr	r3, [r6, #48]
 712 00fa 83BB     		cbnz	r3, .L120
 713 00fc D6ED2B7A 		vldr.32	s15, [r6, #172]
 714 0100 F5EE407A 		vcmp.f32	s15, #0
 715 0104 0123     		movs	r3, #1
 716 0106 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 717 010a 3363     		str	r3, [r6, #48]
 718 010c BCD1     		bne	.L117
 719 010e 3368     		ldr	r3, [r6]
 720 0110 9DED047A 		vldr.32	s14, [sp, #16]
 721 0114 03F51D63 		add	r3, r3, #2512
 722 0118 D3ED007A 		vldr.32	s15, [r3]
 723 011c F7EE086A 		vmov.f32	s13, #1.5e+0
 724 0120 67EEA67A 		vmul.f32	s15, s15, s13
 725 0124 B4EEE77A 		vcmpe.f32	s14, s15
 726 0128 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 727 012c ACD5     		bpl	.L117
 728 012e 86ED2B7A 		vstr.32	s14, [r6, #172]
 729 0132 A9E7     		b	.L117
 730              	.L161:
 731 0134 7073     		strb	r0, [r6, #13]
 732 0136 FFF7FEFF 		bl	millis64
 733 013a D6E90623 		ldrd	r2, [r6, #24]
 734 013e 801A     		subs	r0, r0, r2
 735 0140 61EB0301 		sbc	r1, r1, r3
 736 0144 FFF7FEFF 		bl	__aeabi_ul2f
 737 0148 D6ED0D7A 		vldr.32	s15, [r6, #52]
 738 014c 9FED2B7A 		vldr.32	s14, .L164+8
 739 0150 06EE900A 		vmov	s13, r0
 740 0154 E6EE877A 		vfma.f32	s15, s13, s14
 741 0158 C6ED0D7A 		vstr.32	s15, [r6, #52]
ARM GAS  /tmp/cc6qWudY.s 			page 14


 742 015c 90E7     		b	.L118
 743              	.L120:
 744 015e 012B     		cmp	r3, #1
 745 0160 DDED047A 		vldr.32	s15, [sp, #16]
 746 0164 28D0     		beq	.L163
 747 0166 96ED137A 		vldr.32	s14, [r6, #76]
 748 016a DFED256A 		vldr.32	s13, .L164+12
 749 016e 37EE267A 		vadd.f32	s14, s14, s13
 750 0172 B4EEE77A 		vcmpe.f32	s14, s15
 751 0176 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 752 017a 85D5     		bpl	.L117
 753 017c 3046     		mov	r0, r6
 754 017e FFF7FEFF 		bl	_ZN12PrintMonitor13LayerCompleteEv
 755 0182 D6ED2A6A 		vldr.32	s13, [r6, #168]
 756 0186 336B     		ldr	r3, [r6, #48]
 757 0188 F5EEC06A 		vcmpe.f32	s13, #0
 758 018c 5A1C     		adds	r2, r3, #1
 759 018e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 760 0192 3263     		str	r2, [r6, #48]
 761 0194 2BDD     		ble	.L152
 762 0196 07EE903A 		vmov	s15, r3	@ int
 763 019a B8EE677A 		vcvt.f32.u32	s14, s15
 764 019e D6ED2B7A 		vldr.32	s15, [r6, #172]
 765 01a2 E6EE877A 		vfma.f32	s15, s13, s14
 766              	.L131:
 767 01a6 337B     		ldrb	r3, [r6, #12]	@ zero_extendqisi2
 768 01a8 C6ED137A 		vstr.32	s15, [r6, #76]
 769 01ac DBB9     		cbnz	r3, .L154
 770              	.L134:
 771 01ae 9FED150A 		vldr.32	s0, .L164+16
 772              	.L132:
 773 01b2 86ED110A 		vstr.32	s0, [r6, #68]
 774 01b6 67E7     		b	.L117
 775              	.L163:
 776 01b8 96ED2B7A 		vldr.32	s14, [r6, #172]
 777 01bc DFED106A 		vldr.32	s13, .L164+12
 778 01c0 37EE267A 		vadd.f32	s14, s14, s13
 779 01c4 B4EEE77A 		vcmpe.f32	s14, s15
 780 01c8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 781 01cc 7FF55CAF 		bpl	.L117
 782 01d0 3046     		mov	r0, r6
 783 01d2 FFF7FEFF 		bl	_ZN12PrintMonitor18FirstLayerCompleteEv
 784 01d6 336B     		ldr	r3, [r6, #48]
 785 01d8 327B     		ldrb	r2, [r6, #12]	@ zero_extendqisi2
 786 01da 0499     		ldr	r1, [sp, #16]	@ float
 787 01dc F164     		str	r1, [r6, #76]	@ float
 788 01de 0133     		adds	r3, r3, #1
 789 01e0 3363     		str	r3, [r6, #48]
 790 01e2 002A     		cmp	r2, #0
 791 01e4 E3D0     		beq	.L134
 792              	.L154:
 793 01e6 3046     		mov	r0, r6
 794 01e8 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 795 01ec E1E7     		b	.L132
 796              	.L152:
 797 01ee DDED047A 		vldr.32	s15, [sp, #16]
 798 01f2 D8E7     		b	.L131
ARM GAS  /tmp/cc6qWudY.s 			page 15


 799              	.L165:
 800              		.align	2
 801              	.L164:
 802 01f4 00000000 		.word	.LC4
 803 01f8 00000000 		.word	reprap
 804 01fc 6F12833A 		.word	981668463
 805 0200 8FC2753C 		.word	1014350479
 806 0204 00000000 		.word	0
 807              		.size	_ZN12PrintMonitor4SpinEv, .-_ZN12PrintMonitor4SpinEv
 808              		.section	.text._ZN12PrintMonitor12StoppedPrintEv,"ax",%progbits
 809              		.align	1
 810              		.p2align 2,,3
 811              		.global	_ZN12PrintMonitor12StoppedPrintEv
 812              		.syntax unified
 813              		.thumb
 814              		.thumb_func
 815              		.fpu fpv4-sp-d16
 816              		.type	_ZN12PrintMonitor12StoppedPrintEv, %function
 817              	_ZN12PrintMonitor12StoppedPrintEv:
 818              		@ args = 0, pretend = 0, frame = 0
 819              		@ frame_needed = 0, uses_anonymous_args = 0
 820              		@ link register save eliminated.
 821 0000 0022     		movs	r2, #0
 822 0002 0023     		movs	r3, #0
 823 0004 C0E90A23 		strd	r2, [r0, #40]
 824 0008 C0E90823 		strd	r2, [r0, #32]
 825 000c C0E90423 		strd	r2, [r0, #16]
 826 0010 0023     		movs	r3, #0
 827 0012 80F89420 		strb	r2, [r0, #148]
 828 0016 4273     		strb	r2, [r0, #13]
 829 0018 0273     		strb	r2, [r0, #12]
 830 001a 0265     		str	r2, [r0, #80]
 831 001c 0263     		str	r2, [r0, #48]
 832 001e 0364     		str	r3, [r0, #64]	@ float
 833 0020 C363     		str	r3, [r0, #60]	@ float
 834 0022 8363     		str	r3, [r0, #56]	@ float
 835 0024 4363     		str	r3, [r0, #52]	@ float
 836 0026 C0F89030 		str	r3, [r0, #144]	@ float
 837 002a C364     		str	r3, [r0, #76]	@ float
 838 002c 8364     		str	r3, [r0, #72]	@ float
 839 002e 4364     		str	r3, [r0, #68]	@ float
 840 0030 7047     		bx	lr
 841              		.size	_ZN12PrintMonitor12StoppedPrintEv, .-_ZN12PrintMonitor12StoppedPrintEv
 842 0032 00BF     		.section	.text._ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod,"ax",%progbits
 843              		.align	1
 844              		.p2align 2,,3
 845              		.global	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 846              		.syntax unified
 847              		.thumb
 848              		.thumb_func
 849              		.fpu fpv4-sp-d16
 850              		.type	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod, %function
 851              	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod:
 852              		@ args = 0, pretend = 0, frame = 0
 853              		@ frame_needed = 0, uses_anonymous_args = 0
 854 0000 38B5     		push	{r3, r4, r5, lr}
 855 0002 2DED028B 		vpush.64	{d8}
ARM GAS  /tmp/cc6qWudY.s 			page 16


 856 0006 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 857 000a B3B3     		cbz	r3, .L214
 858 000c 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 859 000e 0446     		mov	r4, r0
 860 0010 0D46     		mov	r5, r1
 861 0012 BBBB     		cbnz	r3, .L219
 862 0014 9FED7D0A 		vldr.32	s0, .L223
 863              	.L170:
 864 0018 94ED0D8A 		vldr.32	s16, [r4, #52]
 865 001c 012D     		cmp	r5, #1
 866 001e 30EE488A 		vsub.f32	s16, s0, s16
 867 0022 1DD0     		beq	.L171
 868 0024 31D3     		bcc	.L172
 869 0026 022D     		cmp	r5, #2
 870 0028 27D1     		bne	.L214
 871 002a 94ED248A 		vldr.32	s16, [r4, #144]
 872 002e B5EEC08A 		vcmpe.f32	s16, #0
 873 0032 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 874 0036 20DD     		ble	.L214
 875 0038 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 876 003a 002B     		cmp	r3, #0
 877 003c 40F0A580 		bne	.L220
 878 0040 9FED720A 		vldr.32	s0, .L223
 879              	.L192:
 880 0044 D4ED117A 		vldr.32	s15, [r4, #68]
 881 0048 30EE670A 		vsub.f32	s0, s0, s15
 882 004c 38EE400A 		vsub.f32	s0, s16, s0
 883 0050 B5EEC00A 		vcmpe.f32	s0, #0
 884 0054 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 885 0058 11DC     		bgt	.L167
 886              	.L175:
 887 005a 9FED6D0A 		vldr.32	s0, .L223+4
 888 005e 0EE0     		b	.L167
 889              	.L171:
 890 0060 6068     		ldr	r0, [r4, #4]
 891 0062 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 892 0066 DFED6B7A 		vldr.32	s15, .L223+8
 893 006a B4EEE70A 		vcmpe.f32	s0, s15
 894 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 895 0072 02D4     		bmi	.L214
 896 0074 637B     		ldrb	r3, [r4, #13]	@ zero_extendqisi2
 897 0076 002B     		cmp	r3, #0
 898 0078 5DD0     		beq	.L221
 899              	.L214:
 900 007a 9FED640A 		vldr.32	s0, .L223
 901              	.L167:
 902 007e BDEC028B 		vldm	sp!, {d8}
 903 0082 38BD     		pop	{r3, r4, r5, pc}
 904              	.L219:
 905 0084 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 906 0088 C6E7     		b	.L170
 907              	.L172:
 908 008a 236B     		ldr	r3, [r4, #48]
 909 008c 002B     		cmp	r3, #0
 910 008e F4D0     		beq	.L214
 911 0090 D4F8E030 		ldr	r3, [r4, #224]
 912 0094 002B     		cmp	r3, #0
ARM GAS  /tmp/cc6qWudY.s 			page 17


 913 0096 F0D0     		beq	.L214
 914 0098 5F4B     		ldr	r3, .L223+12
 915 009a 1B69     		ldr	r3, [r3, #16]
 916 009c D3F89832 		ldr	r3, [r3, #664]
 917 00a0 D3F10C03 		rsbs	r3, r3, #12
 918 00a4 E9D0     		beq	.L214
 919 00a6 04EB8303 		add	r3, r4, r3, lsl #2
 920 00aa DFED587A 		vldr.32	s15, .L223
 921 00ae 03F1B402 		add	r2, r3, #180
 922 00b2 04F1B403 		add	r3, r4, #180
 923              	.L182:
 924 00b6 B3EC017A 		vldmia.32	r3!, {s14}
 925 00ba 9A42     		cmp	r2, r3
 926 00bc 77EE877A 		vadd.f32	s15, s15, s14
 927 00c0 F9D1     		bne	.L182
 928 00c2 F5EEC07A 		vcmpe.f32	s15, #0
 929 00c6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 930 00ca D6DD     		ble	.L214
 931 00cc 6368     		ldr	r3, [r4, #4]
 932 00ce 9FED537A 		vldr.32	s14, .L223+16
 933 00d2 D3EDBC6A 		vldr.32	s13, [r3, #752]
 934 00d6 27EE877A 		vmul.f32	s14, s15, s14
 935 00da B4EEE67A 		vcmpe.f32	s14, s13
 936 00de F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 937 00e2 CAD5     		bpl	.L214
 938 00e4 F4EEE67A 		vcmpe.f32	s15, s13
 939 00e8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 940 00ec B5D9     		bls	.L175
 941 00ee 226D     		ldr	r2, [r4, #80]
 942 00f0 77EEE67A 		vsub.f32	s15, s15, s13
 943 00f4 002A     		cmp	r2, #0
 944 00f6 71D0     		beq	.L185
 945 00f8 04F15403 		add	r3, r4, #84
 946 00fc 9FED437A 		vldr.32	s14, .L223
 947 0100 6834     		adds	r4, r4, #104
 948 0102 03EB8201 		add	r1, r3, r2, lsl #2
 949              	.L186:
 950 0106 F3EC015A 		vldmia.32	r3!, {s11}
 951 010a B4EC015A 		vldmia.32	r4!, {s10}
 952 010e 85EE256A 		vdiv.f32	s12, s10, s11
 953 0112 9942     		cmp	r1, r3
 954 0114 37EE067A 		vadd.f32	s14, s14, s12
 955 0118 F5D1     		bne	.L186
 956 011a 06EE102A 		vmov	s12, r2	@ int
 957 011e B8EEC66A 		vcvt.f32.s32	s12, s12
 958 0122 C7EE065A 		vdiv.f32	s11, s14, s12
 959              	.L187:
 960 0126 F5EE405A 		vcmp.f32	s11, #0
 961 012a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 962 012e 61D0     		beq	.L188
 963 0130 87EEA50A 		vdiv.f32	s0, s15, s11
 964 0134 A3E7     		b	.L167
 965              	.L221:
 966 0136 F7EE007A 		vmov.f32	s15, #1.0e+0
 967 013a B4EE670A 		vcmp.f32	s0, s15
 968 013e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 969 0142 8AD0     		beq	.L175
ARM GAS  /tmp/cc6qWudY.s 			page 18


 970 0144 236D     		ldr	r3, [r4, #80]
 971 0146 93BB     		cbnz	r3, .L176
 972 0148 D4ED0E7A 		vldr.32	s15, [r4, #56]
 973 014c 94ED107A 		vldr.32	s14, [r4, #64]
 974              	.L177:
 975 0150 DFED306A 		vldr.32	s13, .L223+8
 976 0154 B4EEE67A 		vcmpe.f32	s14, s13
 977 0158 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 978 015c 19D5     		bpl	.L215
 979 015e B7EE007A 		vmov.f32	s14, #1.0e+0
 980 0162 C7EE007A 		vdiv.f32	s15, s14, s0
 981 0166 B0EE480A 		vmov.f32	s0, s16
 982 016a 97EE880A 		vfnms.f32	s0, s15, s16
 983 016e B4EE400A 		vcmp.f32	s0, s0
 984 0172 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 985 0176 82D6     		bvs	.L167
 986              	.L218:
 987 0178 DFED257A 		vldr.32	s15, .L223+4
 988 017c B4EEE70A 		vcmpe.f32	s0, s15
 989 0180 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 990 0184 3FF77BAF 		bgt	.L167
 991 0188 67E7     		b	.L175
 992              	.L220:
 993 018a 2046     		mov	r0, r4
 994 018c FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 995 0190 58E7     		b	.L192
 996              	.L215:
 997 0192 F7EE006A 		vmov.f32	s13, #1.0e+0
 998 0196 36EEC00A 		vsub.f32	s0, s13, s0
 999 019a 60EE277A 		vmul.f32	s15, s0, s15
 1000 019e 87EE870A 		vdiv.f32	s0, s15, s14
 1001 01a2 B4EE400A 		vcmp.f32	s0, s0
 1002 01a6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1003 01aa E5D7     		bvc	.L218
 1004 01ac 67E7     		b	.L167
 1005              	.L176:
 1006 01ae 012B     		cmp	r3, #1
 1007 01b0 94ED1F7A 		vldr.32	s14, [r4, #124]
 1008 01b4 23D0     		beq	.L222
 1009 01b6 DFED157A 		vldr.32	s15, .L223
 1010 01ba 2946     		mov	r1, r5
 1011 01bc 04F15802 		add	r2, r4, #88
 1012              	.L179:
 1013 01c0 F2EC016A 		vldmia.32	r2!, {s13}
 1014 01c4 0131     		adds	r1, r1, #1
 1015 01c6 8B42     		cmp	r3, r1
 1016 01c8 77EEA67A 		vadd.f32	s15, s15, s13
 1017 01cc F8D8     		bhi	.L179
 1018 01ce 04EB8303 		add	r3, r4, r3, lsl #2
 1019 01d2 D3ED1E6A 		vldr.32	s13, [r3, #120]
 1020 01d6 36EEC77A 		vsub.f32	s14, s13, s14
 1021 01da B9E7     		b	.L177
 1022              	.L185:
 1023 01dc 94ED0E7A 		vldr.32	s14, [r4, #56]
 1024 01e0 B5EEC07A 		vcmpe.f32	s14, #0
 1025 01e4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1026 01e8 04DD     		ble	.L188
ARM GAS  /tmp/cc6qWudY.s 			page 19


 1027 01ea 94ED0F6A 		vldr.32	s12, [r4, #60]
 1028 01ee C6EE075A 		vdiv.f32	s11, s12, s14
 1029 01f2 98E7     		b	.L187
 1030              	.L188:
 1031 01f4 68EE277A 		vmul.f32	s15, s16, s15
 1032 01f8 87EEA60A 		vdiv.f32	s0, s15, s13
 1033 01fc 3FE7     		b	.L167
 1034              	.L222:
 1035 01fe D4ED106A 		vldr.32	s13, [r4, #64]
 1036 0202 D4ED157A 		vldr.32	s15, [r4, #84]
 1037 0206 37EE667A 		vsub.f32	s14, s14, s13
 1038 020a A1E7     		b	.L177
 1039              	.L224:
 1040              		.align	2
 1041              	.L223:
 1042 020c 00000000 		.word	0
 1043 0210 CDCCCC3D 		.word	1036831949
 1044 0214 6F12833A 		.word	981668463
 1045 0218 00000000 		.word	reprap
 1046 021c 0AD7233C 		.word	1008981770
 1047              		.size	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod, .-_ZNK12PrintMonitor16Estimate
 1048              		.section	.text._ZNK12PrintMonitor16GetPrintDurationEv,"ax",%progbits
 1049              		.align	1
 1050              		.p2align 2,,3
 1051              		.global	_ZNK12PrintMonitor16GetPrintDurationEv
 1052              		.syntax unified
 1053              		.thumb
 1054              		.thumb_func
 1055              		.fpu fpv4-sp-d16
 1056              		.type	_ZNK12PrintMonitor16GetPrintDurationEv, %function
 1057              	_ZNK12PrintMonitor16GetPrintDurationEv:
 1058              		@ args = 0, pretend = 0, frame = 0
 1059              		@ frame_needed = 0, uses_anonymous_args = 0
 1060              		@ link register save eliminated.
 1061 0000 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 1062 0002 0BB1     		cbz	r3, .L226
 1063 0004 FFF7FEBF 		b	_ZNK12PrintMonitor16GetPrintDurationEv.part.4
 1064              	.L226:
 1065 0008 9FED010A 		vldr.32	s0, .L227
 1066 000c 7047     		bx	lr
 1067              	.L228:
 1068 000e 00BF     		.align	2
 1069              	.L227:
 1070 0010 00000000 		.word	0
 1071              		.size	_ZNK12PrintMonitor16GetPrintDurationEv, .-_ZNK12PrintMonitor16GetPrintDurationEv
 1072              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1073              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1074              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1075              	_ZL28cpu_irq_prev_interrupt_state:
 1076 0000 00       		.space	1
 1077              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1078              		.align	2
 1079              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1080              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1081              	_ZL32cpu_irq_critical_section_counter:
 1082 0000 00000000 		.space	4
 1083              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
ARM GAS  /tmp/cc6qWudY.s 			page 20


 1084              		.align	2
 1085              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1086              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1087              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1088 0000 00000000 		.space	4
 1089              		.section	.rodata._ZN12PrintMonitor13StartingPrintEPKc.str1.4,"aMS",%progbits,1
 1090              		.align	2
 1091              	.LC4:
 1092 0000 303A2F67 		.ascii	"0:/gcodes/\000"
 1092      636F6465 
 1092      732F00
 1093              		.section	.rodata._ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer.str1.4,"aMS",%pr
 1094              		.align	2
 1095              	.LC0:
 1096 0000 7B226572 		.ascii	"{\"err\":0,\"size\":%lu,\"height\":%.2f,\"firstLaye"
 1096      72223A30 
 1096      2C227369 
 1096      7A65223A 
 1096      256C752C 
 1097 002c 72486569 		.ascii	"rHeight\":%.2f,\"layerHeight\":%.2f,\"filament\":\000"
 1097      67687422 
 1097      3A252E32 
 1097      662C226C 
 1097      61796572 
 1098 0059 000000   		.space	3
 1099              	.LC1:
 1100 005c 2563252E 		.ascii	"%c%.1f\000"
 1100      316600
 1101 0063 00       		.space	1
 1102              	.LC2:
 1103 0064 5D2C2267 		.ascii	"],\"generatedBy\":\000"
 1103      656E6572 
 1103      61746564 
 1103      4279223A 
 1103      00
 1104 0075 000000   		.space	3
 1105              	.LC3:
 1106 0078 2C227072 		.ascii	",\"printDuration\":%d,\"fileName\":\000"
 1106      696E7444 
 1106      75726174 
 1106      696F6E22 
 1106      3A25642C 
 1107              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
