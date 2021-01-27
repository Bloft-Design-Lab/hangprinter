ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 1


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
  14              		.text
  15              		.global	__aeabi_ul2f
  16              		.section	.text._ZNK12PrintMonitor16GetPrintDurationEv.part.3,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZNK12PrintMonitor16GetPrintDurationEv.part.3, %function
  24              	_ZNK12PrintMonitor16GetPrintDurationEv.part.3:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  28 0002 0446     		mov	r4, r0
  29 0004 D0E90801 		ldrd	r0, [r0, #32]
  30 0008 50EA0103 		orrs	r3, r0, r1
  31 000c 12D0     		beq	.L5
  32              	.L2:
  33 000e D4E90467 		ldrd	r6, [r4, #16]
  34 0012 D4E90A23 		ldrd	r2, [r4, #40]
  35 0016 801B     		subs	r0, r0, r6
  36 0018 61EB0701 		sbc	r1, r1, r7
  37 001c 801A     		subs	r0, r0, r2
  38 001e 61EB0301 		sbc	r1, r1, r3
  39 0022 FFF7FEFF 		bl	__aeabi_ul2f
  40 0026 9FED050A 		vldr.32	s0, .L6
  41 002a 07EE900A 		vmov	s15, r0
  42 002e 27EE800A 		vmul.f32	s0, s15, s0
  43 0032 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  44              	.L5:
  45 0034 FFF7FEFF 		bl	millis64
  46 0038 E9E7     		b	.L2
  47              	.L7:
  48 003a 00BF     		.align	2
  49              	.L6:
  50 003c 6F12833A 		.word	981668463
  51              		.size	_ZNK12PrintMonitor16GetPrintDurationEv.part.3, .-_ZNK12PrintMonitor16GetPrintDurationEv.part
  52              		.section	.text._ZN12PrintMonitorC2ER8PlatformR6GCodes,"ax",%progbits
  53              		.align	1
  54              		.p2align 2,,3
  55              		.global	_ZN12PrintMonitorC2ER8PlatformR6GCodes
  56              		.syntax unified
  57              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 2


  58              		.thumb_func
  59              		.fpu fpv4-sp-d16
  60              		.type	_ZN12PrintMonitorC2ER8PlatformR6GCodes, %function
  61              	_ZN12PrintMonitorC2ER8PlatformR6GCodes:
  62              		@ args = 0, pretend = 0, frame = 0
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64              		@ link register save eliminated.
  65 0000 D0B4     		push	{r4, r6, r7}
  66 0002 0024     		movs	r4, #0
  67 0004 0026     		movs	r6, #0
  68 0006 0027     		movs	r7, #0
  69 0008 0160     		str	r1, [r0]
  70 000a 0021     		movs	r1, #0
  71 000c C0E90467 		strd	r6, [r0, #16]
  72 0010 C0E90867 		strd	r6, [r0, #32]
  73 0014 C0E90A67 		strd	r6, [r0, #40]
  74 0018 4463     		str	r4, [r0, #52]	@ float
  75 001a 8463     		str	r4, [r0, #56]	@ float
  76 001c C463     		str	r4, [r0, #60]	@ float
  77 001e 0464     		str	r4, [r0, #64]	@ float
  78 0020 4464     		str	r4, [r0, #68]	@ float
  79 0022 8464     		str	r4, [r0, #72]	@ float
  80 0024 C464     		str	r4, [r0, #76]	@ float
  81 0026 C0F89040 		str	r4, [r0, #144]	@ float
  82 002a 4260     		str	r2, [r0, #4]
  83 002c 0173     		strb	r1, [r0, #12]
  84 002e 4173     		strb	r1, [r0, #13]
  85 0030 0163     		str	r1, [r0, #48]
  86 0032 0165     		str	r1, [r0, #80]
  87 0034 80F89410 		strb	r1, [r0, #148]
  88 0038 80F8E610 		strb	r1, [r0, #230]
  89 003c 80F82011 		strb	r1, [r0, #288]
  90 0040 D0BC     		pop	{r4, r6, r7}
  91 0042 7047     		bx	lr
  92              		.size	_ZN12PrintMonitorC2ER8PlatformR6GCodes, .-_ZN12PrintMonitorC2ER8PlatformR6GCodes
  93              		.global	_ZN12PrintMonitorC1ER8PlatformR6GCodes
  94              		.thumb_set _ZN12PrintMonitorC1ER8PlatformR6GCodes,_ZN12PrintMonitorC2ER8PlatformR6GCodes
  95              		.section	.text._ZN12PrintMonitor4InitEv,"ax",%progbits
  96              		.align	1
  97              		.p2align 2,,3
  98              		.global	_ZN12PrintMonitor4InitEv
  99              		.syntax unified
 100              		.thumb
 101              		.thumb_func
 102              		.fpu fpv4-sp-d16
 103              		.type	_ZN12PrintMonitor4InitEv, %function
 104              	_ZN12PrintMonitor4InitEv:
 105              		@ args = 0, pretend = 0, frame = 0
 106              		@ frame_needed = 0, uses_anonymous_args = 0
 107 0000 10B5     		push	{r4, lr}
 108 0002 0446     		mov	r4, r0
 109 0004 FFF7FEFF 		bl	millis
 110 0008 A060     		str	r0, [r4, #8]
 111 000a 10BD     		pop	{r4, pc}
 112              		.size	_ZN12PrintMonitor4InitEv, .-_ZN12PrintMonitor4InitEv
 113              		.global	__aeabi_f2d
 114              		.section	.text._ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 3


 115              		.align	1
 116              		.p2align 2,,3
 117              		.global	_ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu fpv4-sp-d16
 122              		.type	_ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer, %function
 123              	_ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer:
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 127 0004 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 128 0008 87B0     		sub	sp, sp, #28
 129 000a 23B9     		cbnz	r3, .L13
 130              	.L15:
 131 000c 0024     		movs	r4, #0
 132 000e 2046     		mov	r0, r4
 133 0010 07B0     		add	sp, sp, #28
 134              		@ sp needed
 135 0012 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 136              	.L13:
 137 0016 0546     		mov	r5, r0
 138 0018 0846     		mov	r0, r1
 139 001a 0E46     		mov	r6, r1
 140 001c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 141 0020 0446     		mov	r4, r0
 142 0022 0028     		cmp	r0, #0
 143 0024 F2D0     		beq	.L15
 144 0026 D5F8A800 		ldr	r0, [r5, #168]	@ float
 145 002a D5F89880 		ldr	r8, [r5, #152]
 146 002e 3768     		ldr	r7, [r6]
 147 0030 FFF7FEFF 		bl	__aeabi_f2d
 148 0034 CDE90401 		strd	r0, [sp, #16]
 149 0038 D5F8AC00 		ldr	r0, [r5, #172]	@ float
 150 003c FFF7FEFF 		bl	__aeabi_f2d
 151 0040 CDE90201 		strd	r0, [sp, #8]
 152 0044 D5F8B000 		ldr	r0, [r5, #176]	@ float
 153 0048 FFF7FEFF 		bl	__aeabi_f2d
 154 004c 4246     		mov	r2, r8
 155 004e CDE90001 		strd	r0, [sp]
 156 0052 3846     		mov	r0, r7
 157 0054 2A49     		ldr	r1, .L28
 158 0056 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 159 005a D5F8E030 		ldr	r3, [r5, #224]
 160 005e 002B     		cmp	r3, #0
 161 0060 41D0     		beq	.L26
 162 0062 DFF8A8A0 		ldr	r10, .L28+12
 163 0066 05F1B409 		add	r9, r5, #180
 164 006a 0027     		movs	r7, #0
 165 006c 4FF05B08 		mov	r8, #91
 166              	.L18:
 167 0070 59F8040B 		ldr	r0, [r9], #4	@ float
 168 0074 D6F800B0 		ldr	fp, [r6]
 169 0078 FFF7FEFF 		bl	__aeabi_f2d
 170 007c 4246     		mov	r2, r8
 171 007e CDE90001 		strd	r0, [sp]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 4


 172 0082 5846     		mov	r0, fp
 173 0084 5146     		mov	r1, r10
 174 0086 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 175 008a D5F8E030 		ldr	r3, [r5, #224]
 176 008e 0137     		adds	r7, r7, #1
 177 0090 BB42     		cmp	r3, r7
 178 0092 4FF02C08 		mov	r8, #44
 179 0096 EBD8     		bhi	.L18
 180              	.L17:
 181 0098 1A49     		ldr	r1, .L28+4
 182 009a 3068     		ldr	r0, [r6]
 183 009c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 184 00a0 0122     		movs	r2, #1
 185 00a2 0023     		movs	r3, #0
 186 00a4 3068     		ldr	r0, [r6]
 187 00a6 05F1E601 		add	r1, r5, #230
 188 00aa CDE90023 		strd	r2, r3, [sp]
 189 00ae 3222     		movs	r2, #50
 190 00b0 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 191 00b4 2A7B     		ldrb	r2, [r5, #12]	@ zero_extendqisi2
 192 00b6 3768     		ldr	r7, [r6]
 193 00b8 D2B9     		cbnz	r2, .L27
 194              	.L19:
 195 00ba 3846     		mov	r0, r7
 196 00bc 1249     		ldr	r1, .L28+8
 197 00be FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 198 00c2 0023     		movs	r3, #0
 199 00c4 0122     		movs	r2, #1
 200 00c6 3068     		ldr	r0, [r6]
 201 00c8 05F59071 		add	r1, r5, #288
 202 00cc CDE90023 		strd	r2, r3, [sp]
 203 00d0 7822     		movs	r2, #120
 204 00d2 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbbb
 205 00d6 3068     		ldr	r0, [r6]
 206 00d8 7D21     		movs	r1, #125
 207 00da FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 208 00de 2046     		mov	r0, r4
 209 00e0 07B0     		add	sp, sp, #28
 210              		@ sp needed
 211 00e2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 212              	.L26:
 213 00e6 5B21     		movs	r1, #91
 214 00e8 3068     		ldr	r0, [r6]
 215 00ea FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 216 00ee D3E7     		b	.L17
 217              	.L27:
 218 00f0 2846     		mov	r0, r5
 219 00f2 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.3
 220 00f6 FDEEC07A 		vcvt.s32.f32	s15, s0
 221 00fa 17EE902A 		vmov	r2, s15	@ int
 222 00fe DCE7     		b	.L19
 223              	.L29:
 224              		.align	2
 225              	.L28:
 226 0100 00000000 		.word	.LC0
 227 0104 64000000 		.word	.LC2
 228 0108 78000000 		.word	.LC3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 5


 229 010c 5C000000 		.word	.LC1
 230              		.size	_ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer, .-_ZNK12PrintMonitor27GetP
 231              		.section	.text._ZNK12PrintMonitor21GetFirstLayerDurationEv,"ax",%progbits
 232              		.align	1
 233              		.p2align 2,,3
 234              		.global	_ZNK12PrintMonitor21GetFirstLayerDurationEv
 235              		.syntax unified
 236              		.thumb
 237              		.thumb_func
 238              		.fpu fpv4-sp-d16
 239              		.type	_ZNK12PrintMonitor21GetFirstLayerDurationEv, %function
 240              	_ZNK12PrintMonitor21GetFirstLayerDurationEv:
 241              		@ args = 0, pretend = 0, frame = 0
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243 0000 90ED0E0A 		vldr.32	s0, [r0, #56]
 244 0004 B5EEC00A 		vcmpe.f32	s0, #0
 245 0008 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 246 000c 00DD     		ble	.L39
 247 000e 7047     		bx	lr
 248              	.L39:
 249 0010 026B     		ldr	r2, [r0, #48]
 250 0012 10B5     		push	{r4, lr}
 251 0014 0446     		mov	r4, r0
 252 0016 5AB1     		cbz	r2, .L33
 253 0018 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 254 001a 33B9     		cbnz	r3, .L40
 255 001c 9FED060A 		vldr.32	s0, .L41
 256              	.L32:
 257 0020 D4ED0D7A 		vldr.32	s15, [r4, #52]
 258 0024 30EE670A 		vsub.f32	s0, s0, s15
 259 0028 10BD     		pop	{r4, pc}
 260              	.L40:
 261 002a FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.3
 262 002e F7E7     		b	.L32
 263              	.L33:
 264 0030 9FED010A 		vldr.32	s0, .L41
 265 0034 10BD     		pop	{r4, pc}
 266              	.L42:
 267 0036 00BF     		.align	2
 268              	.L41:
 269 0038 00000000 		.word	0
 270              		.size	_ZNK12PrintMonitor21GetFirstLayerDurationEv, .-_ZNK12PrintMonitor21GetFirstLayerDurationEv
 271              		.section	.text._ZNK12PrintMonitor17GetWarmUpDurationEv,"ax",%progbits
 272              		.align	1
 273              		.p2align 2,,3
 274              		.global	_ZNK12PrintMonitor17GetWarmUpDurationEv
 275              		.syntax unified
 276              		.thumb
 277              		.thumb_func
 278              		.fpu fpv4-sp-d16
 279              		.type	_ZNK12PrintMonitor17GetWarmUpDurationEv, %function
 280              	_ZNK12PrintMonitor17GetWarmUpDurationEv:
 281              		@ args = 0, pretend = 0, frame = 0
 282              		@ frame_needed = 0, uses_anonymous_args = 0
 283 0000 10B5     		push	{r4, lr}
 284 0002 2DED028B 		vpush.64	{d8}
 285 0006 437B     		ldrb	r3, [r0, #13]	@ zero_extendqisi2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 6


 286 0008 90ED0D8A 		vldr.32	s16, [r0, #52]
 287 000c 23B9     		cbnz	r3, .L49
 288 000e B0EE480A 		vmov.f32	s0, s16
 289 0012 BDEC028B 		vldm	sp!, {d8}
 290 0016 10BD     		pop	{r4, pc}
 291              	.L49:
 292 0018 0446     		mov	r4, r0
 293 001a FFF7FEFF 		bl	millis64
 294 001e D4E90623 		ldrd	r2, [r4, #24]
 295 0022 801A     		subs	r0, r0, r2
 296 0024 61EB0301 		sbc	r1, r1, r3
 297 0028 FFF7FEFF 		bl	__aeabi_ul2f
 298 002c DFED057A 		vldr.32	s15, .L50
 299 0030 07EE100A 		vmov	s14, r0
 300 0034 A7EE278A 		vfma.f32	s16, s14, s15
 301 0038 B0EE480A 		vmov.f32	s0, s16
 302 003c BDEC028B 		vldm	sp!, {d8}
 303 0040 10BD     		pop	{r4, pc}
 304              	.L51:
 305 0042 00BF     		.align	2
 306              	.L50:
 307 0044 6F12833A 		.word	981668463
 308              		.size	_ZNK12PrintMonitor17GetWarmUpDurationEv, .-_ZNK12PrintMonitor17GetWarmUpDurationEv
 309              		.section	.text._ZN12PrintMonitor13StartingPrintEPKc,"ax",%progbits
 310              		.align	1
 311              		.p2align 2,,3
 312              		.global	_ZN12PrintMonitor13StartingPrintEPKc
 313              		.syntax unified
 314              		.thumb
 315              		.thumb_func
 316              		.fpu fpv4-sp-d16
 317              		.type	_ZN12PrintMonitor13StartingPrintEPKc, %function
 318              	_ZN12PrintMonitor13StartingPrintEPKc:
 319              		@ args = 0, pretend = 0, frame = 8
 320              		@ frame_needed = 0, uses_anonymous_args = 0
 321 0000 70B5     		push	{r4, r5, r6, lr}
 322 0002 0368     		ldr	r3, [r0]
 323 0004 84B0     		sub	sp, sp, #16
 324 0006 0446     		mov	r4, r0
 325 0008 D3F8DC0B 		ldr	r0, [r3, #3036]
 326 000c 0D46     		mov	r5, r1
 327 000e 0026     		movs	r6, #0
 328 0010 04F19803 		add	r3, r4, #152
 329 0014 2A46     		mov	r2, r5
 330 0016 0949     		ldr	r1, .L54
 331 0018 0096     		str	r6, [sp]
 332 001a 00F5C060 		add	r0, r0, #1536
 333 001e FFF7FEFF 		bl	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob
 334 0022 04F59072 		add	r2, r4, #288
 335 0026 84F89400 		strb	r0, [r4, #148]
 336 002a 7923     		movs	r3, #121
 337 002c 2946     		mov	r1, r5
 338 002e 02A8     		add	r0, sp, #8
 339 0030 CDE90223 		strd	r2, r3, [sp, #8]
 340 0034 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 341 0038 04B0     		add	sp, sp, #16
 342              		@ sp needed
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 7


 343 003a 70BD     		pop	{r4, r5, r6, pc}
 344              	.L55:
 345              		.align	2
 346              	.L54:
 347 003c 00000000 		.word	.LC4
 348              		.size	_ZN12PrintMonitor13StartingPrintEPKc, .-_ZN12PrintMonitor13StartingPrintEPKc
 349              		.section	.text._ZN12PrintMonitor12StartedPrintEv,"ax",%progbits
 350              		.align	1
 351              		.p2align 2,,3
 352              		.global	_ZN12PrintMonitor12StartedPrintEv
 353              		.syntax unified
 354              		.thumb
 355              		.thumb_func
 356              		.fpu fpv4-sp-d16
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
 368 0010 C4E90401 		strd	r0, [r4, #16]
 369 0014 0023     		movs	r3, #0
 370 0016 6363     		str	r3, [r4, #52]	@ float
 371 0018 10BD     		pop	{r4, pc}
 372              		.size	_ZN12PrintMonitor12StartedPrintEv, .-_ZN12PrintMonitor12StartedPrintEv
 373              		.section	.text._ZN12PrintMonitor18FirstLayerCompleteEv,"ax",%progbits
 374              		.align	1
 375              		.p2align 2,,3
 376              		.global	_ZN12PrintMonitor18FirstLayerCompleteEv
 377              		.syntax unified
 378              		.thumb
 379              		.thumb_func
 380              		.fpu fpv4-sp-d16
 381              		.type	_ZN12PrintMonitor18FirstLayerCompleteEv, %function
 382              	_ZN12PrintMonitor18FirstLayerCompleteEv:
 383              		@ args = 0, pretend = 0, frame = 0
 384              		@ frame_needed = 0, uses_anonymous_args = 0
 385 0000 10B5     		push	{r4, lr}
 386 0002 4368     		ldr	r3, [r0, #4]
 387 0004 027B     		ldrb	r2, [r0, #12]	@ zero_extendqisi2
 388 0006 D3F8B413 		ldr	r1, [r3, #948]	@ float
 389 000a C163     		str	r1, [r0, #60]	@ float
 390 000c 0446     		mov	r4, r0
 391 000e 92BB     		cbnz	r2, .L67
 392 0010 9FED1B0A 		vldr.32	s0, .L69
 393              	.L59:
 394 0014 D4ED0D7A 		vldr.32	s15, [r4, #52]
 395 0018 30EE670A 		vsub.f32	s0, s0, s15
 396 001c 1846     		mov	r0, r3
 397 001e 84ED0E0A 		vstr.32	s0, [r4, #56]
 398 0022 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 399 0026 D4ED2A7A 		vldr.32	s15, [r4, #168]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 8


 400 002a 84ED100A 		vstr.32	s0, [r4, #64]
 401 002e F5EEC07A 		vcmpe.f32	s15, #0
 402 0032 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 403 0036 06DD     		ble	.L58
 404 0038 94ED2C0A 		vldr.32	s0, [r4, #176]
 405 003c F4EEC07A 		vcmpe.f32	s15, s0
 406 0040 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 407 0044 00D4     		bmi	.L68
 408              	.L58:
 409 0046 10BD     		pop	{r4, pc}
 410              	.L68:
 411 0048 94ED2B7A 		vldr.32	s14, [r4, #172]
 412 004c 30EE470A 		vsub.f32	s0, s0, s14
 413 0050 80EE270A 		vdiv.f32	s0, s0, s15
 414 0054 FFF7FEFF 		bl	lrintf
 415 0058 94ED0E7A 		vldr.32	s14, [r4, #56]
 416 005c 07EE900A 		vmov	s15, r0	@ int
 417 0060 F5EE006A 		vmov.f32	s13, #2.5e-1
 418 0064 F8EE677A 		vcvt.f32.u32	s15, s15
 419 0068 27EE267A 		vmul.f32	s14, s14, s13
 420 006c 67EE877A 		vmul.f32	s15, s15, s14
 421 0070 C4ED247A 		vstr.32	s15, [r4, #144]
 422 0074 10BD     		pop	{r4, pc}
 423              	.L67:
 424 0076 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.3
 425 007a 6368     		ldr	r3, [r4, #4]
 426 007c CAE7     		b	.L59
 427              	.L70:
 428 007e 00BF     		.align	2
 429              	.L69:
 430 0080 00000000 		.word	0
 431              		.size	_ZN12PrintMonitor18FirstLayerCompleteEv, .-_ZN12PrintMonitor18FirstLayerCompleteEv
 432              		.section	.text._ZN12PrintMonitor13LayerCompleteEv,"ax",%progbits
 433              		.align	1
 434              		.p2align 2,,3
 435              		.global	_ZN12PrintMonitor13LayerCompleteEv
 436              		.syntax unified
 437              		.thumb
 438              		.thumb_func
 439              		.fpu fpv4-sp-d16
 440              		.type	_ZN12PrintMonitor13LayerCompleteEv, %function
 441              	_ZN12PrintMonitor13LayerCompleteEv:
 442              		@ args = 0, pretend = 0, frame = 0
 443              		@ frame_needed = 0, uses_anonymous_args = 0
 444 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 445 0002 2DED028B 		vpush.64	{d8}
 446 0006 056D     		ldr	r5, [r0, #80]
 447 0008 4668     		ldr	r6, [r0, #4]
 448 000a 077B     		ldrb	r7, [r0, #12]	@ zero_extendqisi2
 449 000c 96EDED8A 		vldr.32	s16, [r6, #948]
 450 0010 042D     		cmp	r5, #4
 451 0012 0446     		mov	r4, r0
 452 0014 1FD8     		bhi	.L72
 453 0016 002D     		cmp	r5, #0
 454 0018 79D1     		bne	.L73
 455 001a D0ED0F7A 		vldr.32	s15, [r0, #60]
 456 001e 78EE677A 		vsub.f32	s15, s16, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 9


 457 0022 C0ED1A7A 		vstr.32	s15, [r0, #104]
 458 0026 002F     		cmp	r7, #0
 459 0028 40F08D80 		bne	.L101
 460 002c 9FED550A 		vldr.32	s0, .L105
 461              	.L74:
 462 0030 D4ED0D7A 		vldr.32	s15, [r4, #52]
 463 0034 30EE670A 		vsub.f32	s0, s0, s15
 464 0038 04EB8503 		add	r3, r4, r5, lsl #2
 465 003c 83ED150A 		vstr.32	s0, [r3, #84]
 466              	.L75:
 467 0040 3046     		mov	r0, r6
 468 0042 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 469 0046 04EB8505 		add	r5, r4, r5, lsl #2
 470 004a 85ED1F0A 		vstr.32	s0, [r5, #124]
 471 004e 236D     		ldr	r3, [r4, #80]
 472 0050 0133     		adds	r3, r3, #1
 473 0052 2365     		str	r3, [r4, #80]
 474 0054 20E0     		b	.L77
 475              	.L72:
 476 0056 00F15403 		add	r3, r0, #84
 477 005a 6430     		adds	r0, r0, #100
 478              	.L78:
 479 005c 5A68     		ldr	r2, [r3, #4]	@ float
 480 005e 43F8042B 		str	r2, [r3], #4	@ float
 481 0062 5969     		ldr	r1, [r3, #20]	@ float
 482 0064 9A6A     		ldr	r2, [r3, #40]	@ float
 483 0066 1961     		str	r1, [r3, #16]	@ float
 484 0068 8342     		cmp	r3, r0
 485 006a 5A62     		str	r2, [r3, #36]	@ float
 486 006c F6D1     		bne	.L78
 487 006e 002F     		cmp	r7, #0
 488 0070 64D1     		bne	.L102
 489 0072 9FED440A 		vldr.32	s0, .L105
 490              	.L79:
 491 0076 94ED117A 		vldr.32	s14, [r4, #68]
 492 007a D4ED127A 		vldr.32	s15, [r4, #72]
 493 007e 30EE470A 		vsub.f32	s0, s0, s14
 494 0082 78EE677A 		vsub.f32	s15, s16, s15
 495 0086 3046     		mov	r0, r6
 496 0088 84ED190A 		vstr.32	s0, [r4, #100]
 497 008c C4ED1E7A 		vstr.32	s15, [r4, #120]
 498 0090 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 499 0094 84ED230A 		vstr.32	s0, [r4, #140]
 500              	.L77:
 501 0098 94ED2A7A 		vldr.32	s14, [r4, #168]
 502 009c 84ED128A 		vstr.32	s16, [r4, #72]
 503 00a0 B5EEC07A 		vcmpe.f32	s14, #0
 504 00a4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 505 00a8 2EDD     		ble	.L71
 506 00aa 94ED2C0A 		vldr.32	s0, [r4, #176]
 507 00ae B4EEC07A 		vcmpe.f32	s14, s0
 508 00b2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 509 00b6 27D5     		bpl	.L71
 510 00b8 226D     		ldr	r2, [r4, #80]
 511 00ba 042A     		cmp	r2, #4
 512 00bc 3BD8     		bhi	.L91
 513 00be 94ED0E8A 		vldr.32	s16, [r4, #56]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 10


 514 00c2 F5EE007A 		vmov.f32	s15, #2.5e-1
 515 00c6 28EE278A 		vmul.f32	s16, s16, s15
 516 00ca 002A     		cmp	r2, #0
 517 00cc 45D0     		beq	.L84
 518              	.L83:
 519 00ce 04F15403 		add	r3, r4, #84
 520 00d2 03EB8201 		add	r1, r3, r2, lsl #2
 521              	.L85:
 522 00d6 F3EC017A 		vldmia.32	r3!, {s15}
 523 00da 9942     		cmp	r1, r3
 524 00dc 38EE278A 		vadd.f32	s16, s16, s15
 525 00e0 F9D1     		bne	.L85
 526 00e2 052A     		cmp	r2, #5
 527 00e4 39D1     		bne	.L84
 528 00e6 F1EE048A 		vmov.f32	s17, #5.0e+0
 529              	.L86:
 530 00ea D4ED2B7A 		vldr.32	s15, [r4, #172]
 531 00ee 30EE670A 		vsub.f32	s0, s0, s15
 532 00f2 80EE070A 		vdiv.f32	s0, s0, s14
 533 00f6 FFF7FEFF 		bl	lrintf
 534 00fa 236B     		ldr	r3, [r4, #48]
 535 00fc 0130     		adds	r0, r0, #1
 536 00fe 8342     		cmp	r3, r0
 537 0100 31D3     		bcc	.L103
 538 0102 214B     		ldr	r3, .L105+4
 539 0104 C4F89030 		str	r3, [r4, #144]	@ float
 540              	.L71:
 541 0108 BDEC028B 		vldm	sp!, {d8}
 542 010c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 543              	.L73:
 544 010e D0ED127A 		vldr.32	s15, [r0, #72]
 545 0112 78EE677A 		vsub.f32	s15, s16, s15
 546 0116 00EB8503 		add	r3, r0, r5, lsl #2
 547 011a C3ED1A7A 		vstr.32	s15, [r3, #104]
 548 011e BFB9     		cbnz	r7, .L104
 549 0120 9FED180A 		vldr.32	s0, .L105
 550              	.L76:
 551 0124 D4ED117A 		vldr.32	s15, [r4, #68]
 552 0128 30EE670A 		vsub.f32	s0, s0, s15
 553 012c 04EB8503 		add	r3, r4, r5, lsl #2
 554 0130 83ED150A 		vstr.32	s0, [r3, #84]
 555 0134 84E7     		b	.L75
 556              	.L91:
 557 0136 9FED138A 		vldr.32	s16, .L105
 558 013a C8E7     		b	.L83
 559              	.L102:
 560 013c 2046     		mov	r0, r4
 561 013e FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.3
 562 0142 6668     		ldr	r6, [r4, #4]
 563 0144 97E7     		b	.L79
 564              	.L101:
 565 0146 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.3
 566 014a 256D     		ldr	r5, [r4, #80]
 567 014c 6668     		ldr	r6, [r4, #4]
 568 014e 6FE7     		b	.L74
 569              	.L104:
 570 0150 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 11


 571 0154 256D     		ldr	r5, [r4, #80]
 572 0156 6668     		ldr	r6, [r4, #4]
 573 0158 E4E7     		b	.L76
 574              	.L84:
 575 015a 0132     		adds	r2, r2, #1
 576 015c 07EE902A 		vmov	s15, r2	@ int
 577 0160 F8EEE78A 		vcvt.f32.s32	s17, s15
 578 0164 C1E7     		b	.L86
 579              	.L103:
 580 0166 88EE287A 		vdiv.f32	s14, s16, s17
 581 016a C31A     		subs	r3, r0, r3
 582 016c 07EE903A 		vmov	s15, r3	@ int
 583 0170 F8EE677A 		vcvt.f32.u32	s15, s15
 584 0174 67EE877A 		vmul.f32	s15, s15, s14
 585 0178 C4ED247A 		vstr.32	s15, [r4, #144]
 586 017c BDEC028B 		vldm	sp!, {d8}
 587 0180 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 588              	.L106:
 589 0182 00BF     		.align	2
 590              	.L105:
 591 0184 00000000 		.word	0
 592 0188 CDCCCC3D 		.word	1036831949
 593              		.size	_ZN12PrintMonitor13LayerCompleteEv, .-_ZN12PrintMonitor13LayerCompleteEv
 594              		.section	.text._ZN12PrintMonitor4SpinEv,"ax",%progbits
 595              		.align	1
 596              		.p2align 2,,3
 597              		.global	_ZN12PrintMonitor4SpinEv
 598              		.syntax unified
 599              		.thumb
 600              		.thumb_func
 601              		.fpu fpv4-sp-d16
 602              		.type	_ZN12PrintMonitor4SpinEv, %function
 603              	_ZN12PrintMonitor4SpinEv:
 604              		@ args = 0, pretend = 0, frame = 8
 605              		@ frame_needed = 0, uses_anonymous_args = 0
 606 0000 2DE9F048 		push	{r4, r5, r6, r7, fp, lr}
 607 0004 90F82031 		ldrb	r3, [r0, #288]	@ zero_extendqisi2
 608 0008 84B0     		sub	sp, sp, #16
 609 000a 0646     		mov	r6, r0
 610 000c 13B1     		cbz	r3, .L111
 611 000e 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 612 0012 53B1     		cbz	r3, .L151
 613              	.L111:
 614 0014 7068     		ldr	r0, [r6, #4]
 615 0016 FFF7FEFF 		bl	_ZNK6GCodes9IsRunningEv
 616 001a E0B9     		cbnz	r0, .L152
 617              	.L146:
 618 001c D6E90823 		ldrd	r2, [r6, #32]
 619 0020 1343     		orrs	r3, r2, r3
 620 0022 52D0     		beq	.L153
 621              	.L107:
 622 0024 04B0     		add	sp, sp, #16
 623              		@ sp needed
 624 0026 BDE8F088 		pop	{r4, r5, r6, r7, fp, pc}
 625              	.L151:
 626 002a 0268     		ldr	r2, [r0]
 627 002c 6849     		ldr	r1, .L158
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 12


 628 002e D2F8DC0B 		ldr	r0, [r2, #3036]
 629 0032 0093     		str	r3, [sp]
 630 0034 00F5C060 		add	r0, r0, #1536
 631 0038 06F19803 		add	r3, r6, #152
 632 003c 06F59072 		add	r2, r6, #288
 633 0040 FFF7FEFF 		bl	_ZN14FileInfoParser11GetFileInfoEPKcS1_R13GCodeFileInfob
 634 0044 86F89400 		strb	r0, [r6, #148]
 635 0048 0028     		cmp	r0, #0
 636 004a EBD0     		beq	.L107
 637 004c 7068     		ldr	r0, [r6, #4]
 638 004e FFF7FEFF 		bl	_ZNK6GCodes9IsRunningEv
 639 0052 0028     		cmp	r0, #0
 640 0054 E2D0     		beq	.L146
 641              	.L152:
 642 0056 FFF7FEFF 		bl	millis
 643 005a 337B     		ldrb	r3, [r6, #12]	@ zero_extendqisi2
 644 005c 0746     		mov	r7, r0
 645 005e 002B     		cmp	r3, #0
 646 0060 E0D0     		beq	.L107
 647 0062 B368     		ldr	r3, [r6, #8]
 648 0064 C31A     		subs	r3, r0, r3
 649 0066 C82B     		cmp	r3, #200
 650 0068 DCD9     		bls	.L107
 651 006a D6E90823 		ldrd	r2, [r6, #32]
 652 006e 1343     		orrs	r3, r2, r3
 653 0070 3BD1     		bne	.L154
 654              	.L114:
 655 0072 7068     		ldr	r0, [r6, #4]
 656 0074 FFF7FEFF 		bl	_ZNK6GCodes11IsHeatingUpEv
 657 0078 737B     		ldrb	r3, [r6, #13]	@ zero_extendqisi2
 658 007a 68BB     		cbnz	r0, .L155
 659 007c 002B     		cmp	r3, #0
 660 007e 46D1     		bne	.L156
 661              	.L117:
 662 0080 03A9     		add	r1, sp, #12
 663 0082 7068     		ldr	r0, [r6, #4]
 664 0084 FFF7FEFF 		bl	_ZNK6GCodes21GetLastPrintingHeightERf
 665 0088 E8B1     		cbz	r0, .L116
 666 008a 336B     		ldr	r3, [r6, #48]
 667 008c 002B     		cmp	r3, #0
 668 008e 53D1     		bne	.L120
 669 0090 D6ED2B7A 		vldr.32	s15, [r6, #172]
 670 0094 F5EE407A 		vcmp.f32	s15, #0
 671 0098 0123     		movs	r3, #1
 672 009a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 673 009e 3363     		str	r3, [r6, #48]
 674 00a0 11D1     		bne	.L116
 675 00a2 3368     		ldr	r3, [r6]
 676 00a4 9DED037A 		vldr.32	s14, [sp, #12]
 677 00a8 03F6F833 		addw	r3, r3, #3064
 678 00ac D3ED007A 		vldr.32	s15, [r3]
 679 00b0 F7EE086A 		vmov.f32	s13, #1.5e+0
 680 00b4 67EEA67A 		vmul.f32	s15, s15, s13
 681 00b8 F4EEC77A 		vcmpe.f32	s15, s14
 682 00bc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 683 00c0 01DD     		ble	.L116
 684 00c2 86ED2B7A 		vstr.32	s14, [r6, #172]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 13


 685              	.L116:
 686 00c6 B760     		str	r7, [r6, #8]
 687 00c8 ACE7     		b	.L107
 688              	.L153:
 689 00ca FFF7FEFF 		bl	millis64
 690 00ce C6E90801 		strd	r0, [r6, #32]
 691 00d2 04B0     		add	sp, sp, #16
 692              		@ sp needed
 693 00d4 BDE8F088 		pop	{r4, r5, r6, r7, fp, pc}
 694              	.L155:
 695 00d8 002B     		cmp	r3, #0
 696 00da F4D1     		bne	.L116
 697 00dc 0123     		movs	r3, #1
 698 00de 7373     		strb	r3, [r6, #13]
 699 00e0 FFF7FEFF 		bl	millis64
 700 00e4 C6E90601 		strd	r0, [r6, #24]
 701 00e8 EDE7     		b	.L116
 702              	.L154:
 703 00ea FFF7FEFF 		bl	millis64
 704 00ee D6E90A23 		ldrd	r2, [r6, #40]
 705 00f2 D6E90845 		ldrd	r4, [r6, #32]
 706 00f6 121B     		subs	r2, r2, r4
 707 00f8 63EB0503 		sbc	r3, r3, r5
 708 00fc 1218     		adds	r2, r2, r0
 709 00fe 4B41     		adcs	r3, r3, r1
 710 0100 0020     		movs	r0, #0
 711 0102 0021     		movs	r1, #0
 712 0104 C6E90A23 		strd	r2, [r6, #40]
 713 0108 C6E90801 		strd	r0, [r6, #32]
 714 010c B1E7     		b	.L114
 715              	.L156:
 716 010e 7073     		strb	r0, [r6, #13]
 717 0110 FFF7FEFF 		bl	millis64
 718 0114 D6E90623 		ldrd	r2, [r6, #24]
 719 0118 801A     		subs	r0, r0, r2
 720 011a 61EB0301 		sbc	r1, r1, r3
 721 011e FFF7FEFF 		bl	__aeabi_ul2f
 722 0122 D6ED0D7A 		vldr.32	s15, [r6, #52]
 723 0126 9FED2B7A 		vldr.32	s14, .L158+4
 724 012a 06EE900A 		vmov	s13, r0
 725 012e E6EE877A 		vfma.f32	s15, s13, s14
 726 0132 C6ED0D7A 		vstr.32	s15, [r6, #52]
 727 0136 A3E7     		b	.L117
 728              	.L120:
 729 0138 012B     		cmp	r3, #1
 730 013a 9DED037A 		vldr.32	s14, [sp, #12]
 731 013e 2AD0     		beq	.L157
 732 0140 D6ED137A 		vldr.32	s15, [r6, #76]
 733 0144 DFED246A 		vldr.32	s13, .L158+8
 734 0148 77EEA67A 		vadd.f32	s15, s15, s13
 735 014c F4EEC77A 		vcmpe.f32	s15, s14
 736 0150 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 737 0154 B7D5     		bpl	.L116
 738 0156 3046     		mov	r0, r6
 739 0158 FFF7FEFF 		bl	_ZN12PrintMonitor13LayerCompleteEv
 740 015c D6ED2A6A 		vldr.32	s13, [r6, #168]
 741 0160 336B     		ldr	r3, [r6, #48]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 14


 742 0162 F5EEC06A 		vcmpe.f32	s13, #0
 743 0166 5A1C     		adds	r2, r3, #1
 744 0168 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 745 016c 3263     		str	r2, [r6, #48]
 746 016e 2CDD     		ble	.L147
 747 0170 07EE903A 		vmov	s15, r3	@ int
 748 0174 96ED2B7A 		vldr.32	s14, [r6, #172]
 749 0178 F8EE677A 		vcvt.f32.u32	s15, s15
 750 017c A6EEA77A 		vfma.f32	s14, s13, s15
 751 0180 F0EE477A 		vmov.f32	s15, s14
 752              	.L129:
 753 0184 337B     		ldrb	r3, [r6, #12]	@ zero_extendqisi2
 754 0186 C6ED137A 		vstr.32	s15, [r6, #76]
 755 018a D3B9     		cbnz	r3, .L149
 756              	.L132:
 757 018c 9FED130A 		vldr.32	s0, .L158+12
 758              	.L130:
 759 0190 86ED110A 		vstr.32	s0, [r6, #68]
 760 0194 97E7     		b	.L116
 761              	.L157:
 762 0196 D6ED2B7A 		vldr.32	s15, [r6, #172]
 763 019a DFED0F6A 		vldr.32	s13, .L158+8
 764 019e 77EEA67A 		vadd.f32	s15, s15, s13
 765 01a2 F4EEC77A 		vcmpe.f32	s15, s14
 766 01a6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 767 01aa 8CD5     		bpl	.L116
 768 01ac 3046     		mov	r0, r6
 769 01ae FFF7FEFF 		bl	_ZN12PrintMonitor18FirstLayerCompleteEv
 770 01b2 336B     		ldr	r3, [r6, #48]
 771 01b4 327B     		ldrb	r2, [r6, #12]	@ zero_extendqisi2
 772 01b6 0399     		ldr	r1, [sp, #12]	@ float
 773 01b8 F164     		str	r1, [r6, #76]	@ float
 774 01ba 0133     		adds	r3, r3, #1
 775 01bc 3363     		str	r3, [r6, #48]
 776 01be 002A     		cmp	r2, #0
 777 01c0 E4D0     		beq	.L132
 778              	.L149:
 779 01c2 3046     		mov	r0, r6
 780 01c4 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.3
 781 01c8 E2E7     		b	.L130
 782              	.L147:
 783 01ca DDED037A 		vldr.32	s15, [sp, #12]
 784 01ce D9E7     		b	.L129
 785              	.L159:
 786              		.align	2
 787              	.L158:
 788 01d0 00000000 		.word	.LC4
 789 01d4 6F12833A 		.word	981668463
 790 01d8 8FC2753C 		.word	1014350479
 791 01dc 00000000 		.word	0
 792              		.size	_ZN12PrintMonitor4SpinEv, .-_ZN12PrintMonitor4SpinEv
 793              		.section	.text._ZN12PrintMonitor12StoppedPrintEv,"ax",%progbits
 794              		.align	1
 795              		.p2align 2,,3
 796              		.global	_ZN12PrintMonitor12StoppedPrintEv
 797              		.syntax unified
 798              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 15


 799              		.thumb_func
 800              		.fpu fpv4-sp-d16
 801              		.type	_ZN12PrintMonitor12StoppedPrintEv, %function
 802              	_ZN12PrintMonitor12StoppedPrintEv:
 803              		@ args = 0, pretend = 0, frame = 0
 804              		@ frame_needed = 0, uses_anonymous_args = 0
 805              		@ link register save eliminated.
 806 0000 0022     		movs	r2, #0
 807 0002 0023     		movs	r3, #0
 808 0004 C0E90A23 		strd	r2, [r0, #40]
 809 0008 C0E90823 		strd	r2, [r0, #32]
 810 000c C0E90423 		strd	r2, [r0, #16]
 811 0010 0023     		movs	r3, #0
 812 0012 80F89420 		strb	r2, [r0, #148]
 813 0016 4273     		strb	r2, [r0, #13]
 814 0018 0273     		strb	r2, [r0, #12]
 815 001a 0265     		str	r2, [r0, #80]
 816 001c 0263     		str	r2, [r0, #48]
 817 001e 0364     		str	r3, [r0, #64]	@ float
 818 0020 C363     		str	r3, [r0, #60]	@ float
 819 0022 8363     		str	r3, [r0, #56]	@ float
 820 0024 4363     		str	r3, [r0, #52]	@ float
 821 0026 C0F89030 		str	r3, [r0, #144]	@ float
 822 002a C364     		str	r3, [r0, #76]	@ float
 823 002c 8364     		str	r3, [r0, #72]	@ float
 824 002e 4364     		str	r3, [r0, #68]	@ float
 825 0030 7047     		bx	lr
 826              		.size	_ZN12PrintMonitor12StoppedPrintEv, .-_ZN12PrintMonitor12StoppedPrintEv
 827 0032 00BF     		.section	.text._ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod,"ax",%progbits
 828              		.align	1
 829              		.p2align 2,,3
 830              		.global	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 831              		.syntax unified
 832              		.thumb
 833              		.thumb_func
 834              		.fpu fpv4-sp-d16
 835              		.type	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod, %function
 836              	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod:
 837              		@ args = 0, pretend = 0, frame = 0
 838              		@ frame_needed = 0, uses_anonymous_args = 0
 839 0000 38B5     		push	{r3, r4, r5, lr}
 840 0002 2DED028B 		vpush.64	{d8}
 841 0006 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 842 000a B3B3     		cbz	r3, .L208
 843 000c 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 844 000e 0446     		mov	r4, r0
 845 0010 0D46     		mov	r5, r1
 846 0012 BBBB     		cbnz	r3, .L213
 847 0014 9FED7D0A 		vldr.32	s0, .L217
 848              	.L164:
 849 0018 94ED0D8A 		vldr.32	s16, [r4, #52]
 850 001c 012D     		cmp	r5, #1
 851 001e 30EE488A 		vsub.f32	s16, s0, s16
 852 0022 1DD0     		beq	.L165
 853 0024 31D3     		bcc	.L166
 854 0026 022D     		cmp	r5, #2
 855 0028 27D1     		bne	.L208
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 16


 856 002a 94ED248A 		vldr.32	s16, [r4, #144]
 857 002e B5EEC08A 		vcmpe.f32	s16, #0
 858 0032 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 859 0036 20DD     		ble	.L208
 860 0038 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 861 003a 002B     		cmp	r3, #0
 862 003c 40F0A580 		bne	.L214
 863 0040 9FED720A 		vldr.32	s0, .L217
 864              	.L186:
 865 0044 D4ED117A 		vldr.32	s15, [r4, #68]
 866 0048 30EE670A 		vsub.f32	s0, s0, s15
 867 004c 38EE400A 		vsub.f32	s0, s16, s0
 868 0050 B5EEC00A 		vcmpe.f32	s0, #0
 869 0054 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 870 0058 11DC     		bgt	.L161
 871              	.L169:
 872 005a 9FED6D0A 		vldr.32	s0, .L217+4
 873 005e 0EE0     		b	.L161
 874              	.L165:
 875 0060 6068     		ldr	r0, [r4, #4]
 876 0062 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 877 0066 DFED6B7A 		vldr.32	s15, .L217+8
 878 006a B4EEE70A 		vcmpe.f32	s0, s15
 879 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 880 0072 02D4     		bmi	.L208
 881 0074 637B     		ldrb	r3, [r4, #13]	@ zero_extendqisi2
 882 0076 002B     		cmp	r3, #0
 883 0078 5DD0     		beq	.L215
 884              	.L208:
 885 007a 9FED640A 		vldr.32	s0, .L217
 886              	.L161:
 887 007e BDEC028B 		vldm	sp!, {d8}
 888 0082 38BD     		pop	{r3, r4, r5, pc}
 889              	.L213:
 890 0084 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.3
 891 0088 C6E7     		b	.L164
 892              	.L166:
 893 008a 236B     		ldr	r3, [r4, #48]
 894 008c 002B     		cmp	r3, #0
 895 008e F4D0     		beq	.L208
 896 0090 D4F8E030 		ldr	r3, [r4, #224]
 897 0094 002B     		cmp	r3, #0
 898 0096 F0D0     		beq	.L208
 899 0098 5F4B     		ldr	r3, .L217+12
 900 009a 5B69     		ldr	r3, [r3, #20]	@ unaligned
 901 009c D3F85C33 		ldr	r3, [r3, #860]
 902 00a0 D3F10C03 		rsbs	r3, r3, #12
 903 00a4 E9D0     		beq	.L208
 904 00a6 04EB8303 		add	r3, r4, r3, lsl #2
 905 00aa DFED587A 		vldr.32	s15, .L217
 906 00ae 03F1B402 		add	r2, r3, #180
 907 00b2 04F1B403 		add	r3, r4, #180
 908              	.L176:
 909 00b6 B3EC017A 		vldmia.32	r3!, {s14}
 910 00ba 9A42     		cmp	r2, r3
 911 00bc 77EE877A 		vadd.f32	s15, s15, s14
 912 00c0 F9D1     		bne	.L176
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 17


 913 00c2 F5EEC07A 		vcmpe.f32	s15, #0
 914 00c6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 915 00ca D6DD     		ble	.L208
 916 00cc 6368     		ldr	r3, [r4, #4]
 917 00ce 9FED537A 		vldr.32	s14, .L217+16
 918 00d2 D3EDED6A 		vldr.32	s13, [r3, #948]
 919 00d6 27EE877A 		vmul.f32	s14, s15, s14
 920 00da B4EEE67A 		vcmpe.f32	s14, s13
 921 00de F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 922 00e2 CAD5     		bpl	.L208
 923 00e4 F4EEE67A 		vcmpe.f32	s15, s13
 924 00e8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 925 00ec B5D9     		bls	.L169
 926 00ee 226D     		ldr	r2, [r4, #80]
 927 00f0 77EEE67A 		vsub.f32	s15, s15, s13
 928 00f4 002A     		cmp	r2, #0
 929 00f6 71D0     		beq	.L179
 930 00f8 04F15403 		add	r3, r4, #84
 931 00fc 9FED437A 		vldr.32	s14, .L217
 932 0100 6834     		adds	r4, r4, #104
 933 0102 03EB8201 		add	r1, r3, r2, lsl #2
 934              	.L180:
 935 0106 F3EC015A 		vldmia.32	r3!, {s11}
 936 010a B4EC015A 		vldmia.32	r4!, {s10}
 937 010e 85EE256A 		vdiv.f32	s12, s10, s11
 938 0112 9942     		cmp	r1, r3
 939 0114 37EE067A 		vadd.f32	s14, s14, s12
 940 0118 F5D1     		bne	.L180
 941 011a 06EE102A 		vmov	s12, r2	@ int
 942 011e B8EEC66A 		vcvt.f32.s32	s12, s12
 943 0122 C7EE065A 		vdiv.f32	s11, s14, s12
 944              	.L181:
 945 0126 F5EE405A 		vcmp.f32	s11, #0
 946 012a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 947 012e 61D0     		beq	.L182
 948 0130 87EEA50A 		vdiv.f32	s0, s15, s11
 949 0134 A3E7     		b	.L161
 950              	.L215:
 951 0136 F7EE007A 		vmov.f32	s15, #1.0e+0
 952 013a B4EE670A 		vcmp.f32	s0, s15
 953 013e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 954 0142 8AD0     		beq	.L169
 955 0144 236D     		ldr	r3, [r4, #80]
 956 0146 93BB     		cbnz	r3, .L170
 957 0148 D4ED0E7A 		vldr.32	s15, [r4, #56]
 958 014c 94ED107A 		vldr.32	s14, [r4, #64]
 959              	.L171:
 960 0150 DFED306A 		vldr.32	s13, .L217+8
 961 0154 B4EEE67A 		vcmpe.f32	s14, s13
 962 0158 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 963 015c 19D5     		bpl	.L209
 964 015e B7EE007A 		vmov.f32	s14, #1.0e+0
 965 0162 C7EE007A 		vdiv.f32	s15, s14, s0
 966 0166 B0EE480A 		vmov.f32	s0, s16
 967 016a 97EE880A 		vfnms.f32	s0, s15, s16
 968 016e B4EE400A 		vcmp.f32	s0, s0
 969 0172 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 18


 970 0176 82D6     		bvs	.L161
 971              	.L212:
 972 0178 DFED257A 		vldr.32	s15, .L217+4
 973 017c B4EEE70A 		vcmpe.f32	s0, s15
 974 0180 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 975 0184 3FF77BAF 		bgt	.L161
 976 0188 67E7     		b	.L169
 977              	.L214:
 978 018a 2046     		mov	r0, r4
 979 018c FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.3
 980 0190 58E7     		b	.L186
 981              	.L209:
 982 0192 F7EE006A 		vmov.f32	s13, #1.0e+0
 983 0196 36EEC00A 		vsub.f32	s0, s13, s0
 984 019a 60EE277A 		vmul.f32	s15, s0, s15
 985 019e 87EE870A 		vdiv.f32	s0, s15, s14
 986 01a2 B4EE400A 		vcmp.f32	s0, s0
 987 01a6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 988 01aa E5D7     		bvc	.L212
 989 01ac 67E7     		b	.L161
 990              	.L170:
 991 01ae 012B     		cmp	r3, #1
 992 01b0 94ED1F7A 		vldr.32	s14, [r4, #124]
 993 01b4 23D0     		beq	.L216
 994 01b6 DFED157A 		vldr.32	s15, .L217
 995 01ba 2946     		mov	r1, r5
 996 01bc 04F15802 		add	r2, r4, #88
 997              	.L173:
 998 01c0 F2EC016A 		vldmia.32	r2!, {s13}
 999 01c4 0131     		adds	r1, r1, #1
 1000 01c6 8B42     		cmp	r3, r1
 1001 01c8 77EEA67A 		vadd.f32	s15, s15, s13
 1002 01cc F8D8     		bhi	.L173
 1003 01ce 04EB8303 		add	r3, r4, r3, lsl #2
 1004 01d2 D3ED1E6A 		vldr.32	s13, [r3, #120]
 1005 01d6 36EEC77A 		vsub.f32	s14, s13, s14
 1006 01da B9E7     		b	.L171
 1007              	.L179:
 1008 01dc 94ED0E7A 		vldr.32	s14, [r4, #56]
 1009 01e0 B5EEC07A 		vcmpe.f32	s14, #0
 1010 01e4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1011 01e8 04DD     		ble	.L182
 1012 01ea 94ED0F6A 		vldr.32	s12, [r4, #60]
 1013 01ee C6EE075A 		vdiv.f32	s11, s12, s14
 1014 01f2 98E7     		b	.L181
 1015              	.L182:
 1016 01f4 68EE277A 		vmul.f32	s15, s16, s15
 1017 01f8 87EEA60A 		vdiv.f32	s0, s15, s13
 1018 01fc 3FE7     		b	.L161
 1019              	.L216:
 1020 01fe D4ED106A 		vldr.32	s13, [r4, #64]
 1021 0202 D4ED157A 		vldr.32	s15, [r4, #84]
 1022 0206 37EE667A 		vsub.f32	s14, s14, s13
 1023 020a A1E7     		b	.L171
 1024              	.L218:
 1025              		.align	2
 1026              	.L217:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 19


 1027 020c 00000000 		.word	0
 1028 0210 CDCCCC3D 		.word	1036831949
 1029 0214 6F12833A 		.word	981668463
 1030 0218 00000000 		.word	reprap
 1031 021c 0AD7233C 		.word	1008981770
 1032              		.size	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod, .-_ZNK12PrintMonitor16Estimate
 1033              		.section	.text._ZNK12PrintMonitor16GetPrintDurationEv,"ax",%progbits
 1034              		.align	1
 1035              		.p2align 2,,3
 1036              		.global	_ZNK12PrintMonitor16GetPrintDurationEv
 1037              		.syntax unified
 1038              		.thumb
 1039              		.thumb_func
 1040              		.fpu fpv4-sp-d16
 1041              		.type	_ZNK12PrintMonitor16GetPrintDurationEv, %function
 1042              	_ZNK12PrintMonitor16GetPrintDurationEv:
 1043              		@ args = 0, pretend = 0, frame = 0
 1044              		@ frame_needed = 0, uses_anonymous_args = 0
 1045              		@ link register save eliminated.
 1046 0000 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 1047 0002 0BB1     		cbz	r3, .L220
 1048 0004 FFF7FEBF 		b	_ZNK12PrintMonitor16GetPrintDurationEv.part.3
 1049              	.L220:
 1050 0008 9FED010A 		vldr.32	s0, .L221
 1051 000c 7047     		bx	lr
 1052              	.L222:
 1053 000e 00BF     		.align	2
 1054              	.L221:
 1055 0010 00000000 		.word	0
 1056              		.size	_ZNK12PrintMonitor16GetPrintDurationEv, .-_ZNK12PrintMonitor16GetPrintDurationEv
 1057              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1058              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1059              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1060              	_ZL28cpu_irq_prev_interrupt_state:
 1061 0000 00       		.space	1
 1062              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1063              		.align	2
 1064              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1065              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1066              	_ZL32cpu_irq_critical_section_counter:
 1067 0000 00000000 		.space	4
 1068              		.section	.rodata._ZN12PrintMonitor13StartingPrintEPKc.str1.4,"aMS",%progbits,1
 1069              		.align	2
 1070              	.LC4:
 1071 0000 303A2F67 		.ascii	"0:/gcodes/\000"
 1071      636F6465 
 1071      732F00
 1072              		.section	.rodata._ZNK12PrintMonitor27GetPrintingFileInfoResponseERP12OutputBuffer.str1.4,"aMS",%pr
 1073              		.align	2
 1074              	.LC0:
 1075 0000 7B226572 		.ascii	"{\"err\":0,\"size\":%lu,\"height\":%.2f,\"firstLaye"
 1075      72223A30 
 1075      2C227369 
 1075      7A65223A 
 1075      256C752C 
 1076 002c 72486569 		.ascii	"rHeight\":%.2f,\"layerHeight\":%.2f,\"filament\":\000"
 1076      67687422 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccIjr4Ev.s 			page 20


 1076      3A252E32 
 1076      662C226C 
 1076      61796572 
 1077 0059 000000   		.space	3
 1078              	.LC1:
 1079 005c 2563252E 		.ascii	"%c%.1f\000"
 1079      316600
 1080 0063 00       		.space	1
 1081              	.LC2:
 1082 0064 5D2C2267 		.ascii	"],\"generatedBy\":\000"
 1082      656E6572 
 1082      61746564 
 1082      4279223A 
 1082      00
 1083 0075 000000   		.space	3
 1084              	.LC3:
 1085 0078 2C227072 		.ascii	",\"printDuration\":%d,\"fileName\":\000"
 1085      696E7444 
 1085      75726174 
 1085      696F6E22 
 1085      3A25642C 
 1086              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
