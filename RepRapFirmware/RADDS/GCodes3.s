ARM GAS  /tmp/ccC1SnVE.s 			page 1


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
  11              		.file	"GCodes3.cpp"
  12              		.section	.text._ZNK10Kinematics16AxesAssumedHomedEm,"axG",%progbits,_ZNK10Kinematics16AxesAssumedH
  13              		.align	1
  14              		.p2align 2,,3
  15              		.weak	_ZNK10Kinematics16AxesAssumedHomedEm
  16              		.syntax unified
  17              		.thumb
  18              		.thumb_func
  19              		.fpu softvfp
  20              		.type	_ZNK10Kinematics16AxesAssumedHomedEm, %function
  21              	_ZNK10Kinematics16AxesAssumedHomedEm:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0846     		mov	r0, r1
  26 0002 7047     		bx	lr
  27              		.size	_ZNK10Kinematics16AxesAssumedHomedEm, .-_ZNK10Kinematics16AxesAssumedHomedEm
  28              		.global	__aeabi_f2d
  29              		.section	.text._ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef,"ax",%progbits
  30              		.align	1
  31              		.p2align 2,,3
  32              		.global	_ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu softvfp
  37              		.type	_ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef, %function
  38              	_ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef:
  39              		@ args = 0, pretend = 0, frame = 64
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  42 0004 0E46     		mov	r6, r1
  43 0006 97B0     		sub	sp, sp, #92
  44 0008 8046     		mov	r8, r0
  45 000a 5421     		movs	r1, #84
  46 000c 3046     		mov	r0, r6
  47 000e 9346     		mov	fp, r2
  48 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
  49 0014 8146     		mov	r9, r0
  50 0016 0028     		cmp	r0, #0
  51 0018 6DD1     		bne	.L23
  52 001a D8F80000 		ldr	r0, [r8]
  53 001e 90F894A0 		ldrb	r10, [r0, #148]	@ zero_extendqisi2
  54              	.L6:
  55 0022 5146     		mov	r1, r10
  56 0024 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
  57 0028 0546     		mov	r5, r0
ARM GAS  /tmp/ccC1SnVE.s 			page 2


  58 002a 4FF0000E 		mov	lr, #0
  59 002e 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
  60 0030 0AAC     		add	r4, sp, #40
  61 0032 0FC4     		stmia	r4!, {r0, r1, r2, r3}
  62 0034 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
  63 0036 0FC4     		stmia	r4!, {r0, r1, r2, r3}
  64 0038 16AF     		add	r7, sp, #88
  65 003a 07F839ED 		strb	lr, [r7, #-57]!
  66 003e 95E80F00 		ldm	r5, {r0, r1, r2, r3}
  67 0042 84E80F00 		stm	r4, {r0, r1, r2, r3}
  68 0046 3B46     		mov	r3, r7
  69 0048 0BAA     		add	r2, sp, #44
  70 004a 98F87212 		ldrb	r1, [r8, #626]	@ zero_extendqisi2
  71 004e 3046     		mov	r0, r6
  72 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
  73 0054 3B46     		mov	r3, r7
  74 0056 0CAA     		add	r2, sp, #48
  75 0058 98F87312 		ldrb	r1, [r8, #627]	@ zero_extendqisi2
  76 005c 3046     		mov	r0, r6
  77 005e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
  78 0062 3B46     		mov	r3, r7
  79 0064 0DAA     		add	r2, sp, #52
  80 0066 98F87412 		ldrb	r1, [r8, #628]	@ zero_extendqisi2
  81 006a 3046     		mov	r0, r6
  82 006c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
  83 0070 5021     		movs	r1, #80
  84 0072 3046     		mov	r0, r6
  85 0074 3B46     		mov	r3, r7
  86 0076 0AAA     		add	r2, sp, #40
  87 0078 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
  88 007c 4321     		movs	r1, #67
  89 007e 3046     		mov	r0, r6
  90 0080 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
  91 0084 0028     		cmp	r0, #0
  92 0086 4FD1     		bne	.L24
  93              	.L7:
  94 0088 9DF81F30 		ldrb	r3, [sp, #31]	@ zero_extendqisi2
  95 008c 002B     		cmp	r3, #0
  96 008e 3DD1     		bne	.L25
  97 0090 B9F1000F 		cmp	r9, #0
  98 0094 17D1     		bne	.L26
  99 0096 D8F80000 		ldr	r0, [r8]
 100 009a FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 101 009e 09AA     		add	r2, sp, #36
 102 00a0 0446     		mov	r4, r0
 103 00a2 08A9     		add	r1, sp, #32
 104 00a4 D8F80000 		ldr	r0, [r8]
 105 00a8 FFF7FEFF 		bl	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 106 00ac 0128     		cmp	r0, #1
 107 00ae 63D0     		beq	.L12
 108 00b0 0228     		cmp	r0, #2
 109 00b2 58D0     		beq	.L13
 110 00b4 2246     		mov	r2, r4
 111 00b6 5846     		mov	r0, fp
 112 00b8 3349     		ldr	r1, .L28
 113 00ba FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 114              	.L14:
ARM GAS  /tmp/ccC1SnVE.s 			page 3


 115 00be 0120     		movs	r0, #1
 116 00c0 17B0     		add	sp, sp, #92
 117              		@ sp needed
 118 00c2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 119              	.L26:
 120 00c6 0C98     		ldr	r0, [sp, #48]	@ float
 121 00c8 FFF7FEFF 		bl	__aeabi_f2d
 122 00cc CDE90401 		strd	r0, [sp, #16]
 123 00d0 0B98     		ldr	r0, [sp, #44]	@ float
 124 00d2 FFF7FEFF 		bl	__aeabi_f2d
 125 00d6 CDE90201 		strd	r0, [sp, #8]
 126 00da 0D98     		ldr	r0, [sp, #52]	@ float
 127 00dc FFF7FEFF 		bl	__aeabi_f2d
 128 00e0 0A9A     		ldr	r2, [sp, #40]
 129 00e2 CDE90001 		strd	r0, [sp]
 130 00e6 5846     		mov	r0, fp
 131 00e8 2849     		ldr	r1, .L28+4
 132 00ea FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 133 00ee 0120     		movs	r0, #1
 134              	.L5:
 135 00f0 17B0     		add	sp, sp, #92
 136              		@ sp needed
 137 00f2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 138              	.L23:
 139 00f6 3046     		mov	r0, r6
 140 00f8 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 141 00fc 431E     		subs	r3, r0, #1
 142 00fe 092B     		cmp	r3, #9
 143 0100 23D8     		bhi	.L27
 144 0102 5FFA80FA 		uxtb	r10, r0
 145 0106 D8F80000 		ldr	r0, [r8]
 146 010a 8AE7     		b	.L6
 147              	.L25:
 148 010c 3146     		mov	r1, r6
 149 010e 4046     		mov	r0, r8
 150 0110 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 151 0114 0028     		cmp	r0, #0
 152 0116 EBD0     		beq	.L5
 153 0118 D8F80000 		ldr	r0, [r8]
 154 011c 0AAA     		add	r2, sp, #40
 155 011e 5146     		mov	r1, r10
 156 0120 FFF7FEFF 		bl	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe
 157 0124 0120     		movs	r0, #1
 158 0126 E3E7     		b	.L5
 159              	.L24:
 160 0128 3046     		mov	r0, r6
 161 012a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 162 012e 0123     		movs	r3, #1
 163 0130 0F90     		str	r0, [sp, #60]	@ float
 164 0132 5321     		movs	r1, #83
 165 0134 3046     		mov	r0, r6
 166 0136 8DF81F30 		strb	r3, [sp, #31]
 167 013a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 168 013e 60B1     		cbz	r0, .L8
 169 0140 3046     		mov	r0, r6
 170 0142 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 171 0146 0E90     		str	r0, [sp, #56]	@ float
ARM GAS  /tmp/ccC1SnVE.s 			page 4


 172 0148 9EE7     		b	.L7
 173              	.L27:
 174 014a 5846     		mov	r0, fp
 175 014c 1049     		ldr	r1, .L28+8
 176 014e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 177 0152 0220     		movs	r0, #2
 178 0154 17B0     		add	sp, sp, #92
 179              		@ sp needed
 180 0156 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 181              	.L8:
 182 015a D8F80000 		ldr	r0, [r8]
 183 015e FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 184 0162 0E90     		str	r0, [sp, #56]	@ float
 185 0164 90E7     		b	.L7
 186              	.L13:
 187 0166 0999     		ldr	r1, [sp, #36]
 188 0168 089B     		ldr	r3, [sp, #32]
 189 016a 0091     		str	r1, [sp]
 190 016c 2246     		mov	r2, r4
 191 016e 5846     		mov	r0, fp
 192 0170 0849     		ldr	r1, .L28+12
 193 0172 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 194 0176 A2E7     		b	.L14
 195              	.L12:
 196 0178 2246     		mov	r2, r4
 197 017a 5846     		mov	r0, fp
 198 017c 089B     		ldr	r3, [sp, #32]
 199 017e 0649     		ldr	r1, .L28+16
 200 0180 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 201 0184 9BE7     		b	.L14
 202              	.L29:
 203 0186 00BF     		.align	2
 204              	.L28:
 205 0188 64000000 		.word	.LC5
 206 018c 18000000 		.word	.LC2
 207 0190 00000000 		.word	.LC1
 208 0194 58000000 		.word	.LC4
 209 0198 50000000 		.word	.LC3
 210              		.size	_ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef, .-_ZN6GCodes14SetPrintZProbeER11GCode
 211              		.section	.text._ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef,"ax",%progbits
 212              		.align	1
 213              		.p2align 2,,3
 214              		.global	_ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef
 215              		.syntax unified
 216              		.thumb
 217              		.thumb_func
 218              		.fpu softvfp
 219              		.type	_ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef, %function
 220              	_ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef:
 221              		@ args = 0, pretend = 0, frame = 0
 222              		@ frame_needed = 0, uses_anonymous_args = 0
 223 0000 70B5     		push	{r4, r5, r6, lr}
 224 0002 0C46     		mov	r4, r1
 225 0004 0646     		mov	r6, r0
 226 0006 5321     		movs	r1, #83
 227 0008 2046     		mov	r0, r4
 228 000a 1546     		mov	r5, r2
ARM GAS  /tmp/ccC1SnVE.s 			page 5


 229 000c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 230 0010 40B9     		cbnz	r0, .L36
 231 0012 4FF4B671 		mov	r1, #364
 232              	.L31:
 233 0016 3046     		mov	r0, r6
 234 0018 2246     		mov	r2, r4
 235 001a 3144     		add	r1, r1, r6
 236 001c FFF7FEFF 		bl	_ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer
 237 0020 0120     		movs	r0, #1
 238 0022 70BD     		pop	{r4, r5, r6, pc}
 239              	.L36:
 240 0024 2046     		mov	r0, r4
 241 0026 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 242 002a 0228     		cmp	r0, #2
 243 002c 05D9     		bls	.L37
 244 002e 2846     		mov	r0, r5
 245 0030 0549     		ldr	r1, .L38
 246 0032 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 247 0036 0220     		movs	r0, #2
 248 0038 70BD     		pop	{r4, r5, r6, pc}
 249              	.L37:
 250 003a 2C21     		movs	r1, #44
 251 003c 01FB00F1 		mul	r1, r1, r0
 252 0040 01F5B671 		add	r1, r1, #364
 253 0044 E7E7     		b	.L31
 254              	.L39:
 255 0046 00BF     		.align	2
 256              	.L38:
 257 0048 00000000 		.word	.LC6
 258              		.size	_ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef, .-_ZN6GCodes12SavePositionER11GCodeBuff
 259              		.global	__aeabi_fmul
 260              		.section	.text._ZN6GCodes12SetPositionsER11GCodeBuffer,"ax",%progbits
 261              		.align	1
 262              		.p2align 2,,3
 263              		.global	_ZN6GCodes12SetPositionsER11GCodeBuffer
 264              		.syntax unified
 265              		.thumb
 266              		.thumb_func
 267              		.fpu softvfp
 268              		.type	_ZN6GCodes12SetPositionsER11GCodeBuffer, %function
 269              	_ZN6GCodes12SetPositionsER11GCodeBuffer:
 270              		@ args = 0, pretend = 0, frame = 0
 271              		@ frame_needed = 0, uses_anonymous_args = 0
 272 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 273 0004 D0F8FC41 		ldr	r4, [r0, #508]
 274 0008 82B0     		sub	sp, sp, #8
 275 000a 0546     		mov	r5, r0
 276 000c 0F46     		mov	r7, r1
 277 000e 002C     		cmp	r4, #0
 278 0010 42D0     		beq	.L41
 279 0012 4FF00008 		mov	r8, #0
 280 0016 4FF00109 		mov	r9, #1
 281 001a 4446     		mov	r4, r8
 282 001c 00F18406 		add	r6, r0, #132
 283 0020 06E0     		b	.L46
 284              	.L42:
 285 0022 D5F8FC31 		ldr	r3, [r5, #508]
ARM GAS  /tmp/ccC1SnVE.s 			page 6


 286 0026 0134     		adds	r4, r4, #1
 287 0028 A342     		cmp	r3, r4
 288 002a 06F10406 		add	r6, r6, #4
 289 002e 1FD9     		bls	.L67
 290              	.L46:
 291 0030 2B19     		adds	r3, r5, r4
 292 0032 93F87212 		ldrb	r1, [r3, #626]	@ zero_extendqisi2
 293 0036 3846     		mov	r0, r7
 294 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 295 003c 0028     		cmp	r0, #0
 296 003e F0D0     		beq	.L42
 297 0040 3846     		mov	r0, r7
 298 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 299 0046 8246     		mov	r10, r0
 300 0048 B8F1000F 		cmp	r8, #0
 301 004c 1CD0     		beq	.L43
 302              	.L44:
 303 004e 09FA04F3 		lsl	r3, r9, r4
 304 0052 D5F83C02 		ldr	r0, [r5, #572]	@ float
 305 0056 5146     		mov	r1, r10
 306 0058 48EA0308 		orr	r8, r8, r3
 307 005c FFF7FEFF 		bl	__aeabi_fmul
 308 0060 D5F8FC31 		ldr	r3, [r5, #508]
 309 0064 0134     		adds	r4, r4, #1
 310 0066 A342     		cmp	r3, r4
 311 0068 3060     		str	r0, [r6]	@ float
 312 006a 06F10406 		add	r6, r6, #4
 313 006e DFD8     		bhi	.L46
 314              	.L67:
 315 0070 4521     		movs	r1, #69
 316 0072 3846     		mov	r0, r7
 317 0074 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 318 0078 A8B9     		cbnz	r0, .L51
 319 007a B8F1000F 		cmp	r8, #0
 320 007e 1FD1     		bne	.L48
 321              	.L52:
 322 0080 0120     		movs	r0, #1
 323              	.L64:
 324 0082 02B0     		add	sp, sp, #8
 325              		@ sp needed
 326 0084 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 327              	.L43:
 328 0088 3946     		mov	r1, r7
 329 008a 2846     		mov	r0, r5
 330 008c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 331 0090 0028     		cmp	r0, #0
 332 0092 DCD1     		bne	.L44
 333 0094 4046     		mov	r0, r8
 334 0096 F4E7     		b	.L64
 335              	.L41:
 336 0098 4521     		movs	r1, #69
 337 009a 3846     		mov	r0, r7
 338 009c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 339 00a0 0028     		cmp	r0, #0
 340 00a2 EDD0     		beq	.L52
 341 00a4 A046     		mov	r8, r4
 342              	.L51:
ARM GAS  /tmp/ccC1SnVE.s 			page 7


 343 00a6 3846     		mov	r0, r7
 344 00a8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 345 00ac 0146     		mov	r1, r0
 346 00ae D5F83C02 		ldr	r0, [r5, #572]	@ float
 347 00b2 FFF7FEFF 		bl	__aeabi_fmul
 348 00b6 C5F81C02 		str	r0, [r5, #540]	@ float
 349 00ba B8F1000F 		cmp	r8, #0
 350 00be DFD0     		beq	.L52
 351              	.L48:
 352 00c0 05F1A004 		add	r4, r5, #160
 353 00c4 05F18407 		add	r7, r5, #132
 354 00c8 3946     		mov	r1, r7
 355 00ca 2246     		mov	r2, r4
 356 00cc 0023     		movs	r3, #0
 357 00ce 2846     		mov	r0, r5
 358 00d0 FFF7FEFF 		bl	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 359 00d4 4FF0000E 		mov	lr, #0
 360 00d8 0123     		movs	r3, #1
 361 00da 184E     		ldr	r6, .L70
 362 00dc D5F8FC21 		ldr	r2, [r5, #508]
 363 00e0 B168     		ldr	r1, [r6, #8]	@ unaligned
 364 00e2 9340     		lsls	r3, r3, r2
 365 00e4 D1F8FC04 		ldr	r0, [r1, #1276]
 366 00e8 013B     		subs	r3, r3, #1
 367 00ea 0168     		ldr	r1, [r0]
 368 00ec CDF800E0 		str	lr, [sp]
 369 00f0 D1F82890 		ldr	r9, [r1, #40]
 370 00f4 2146     		mov	r1, r4
 371 00f6 C847     		blx	r9
 372 00f8 B0B9     		cbnz	r0, .L68
 373              	.L49:
 374 00fa 0122     		movs	r2, #1
 375 00fc B068     		ldr	r0, [r6, #8]
 376 00fe 2146     		mov	r1, r4
 377 0100 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 378 0104 B368     		ldr	r3, [r6, #8]
 379 0106 0E4A     		ldr	r2, .L70+4
 380 0108 D3F8FC04 		ldr	r0, [r3, #1276]
 381 010c 0368     		ldr	r3, [r0]
 382 010e 1B6D     		ldr	r3, [r3, #80]
 383 0110 9342     		cmp	r3, r2
 384 0112 0FD1     		bne	.L69
 385              	.L50:
 386 0114 0120     		movs	r0, #1
 387 0116 D5F88032 		ldr	r3, [r5, #640]
 388 011a 43EA0803 		orr	r3, r3, r8
 389 011e C5F88032 		str	r3, [r5, #640]
 390 0122 02B0     		add	sp, sp, #8
 391              		@ sp needed
 392 0124 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 393              	.L68:
 394 0128 3A46     		mov	r2, r7
 395 012a 2146     		mov	r1, r4
 396 012c 2846     		mov	r0, r5
 397 012e FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 398 0132 E2E7     		b	.L49
 399              	.L69:
ARM GAS  /tmp/ccC1SnVE.s 			page 8


 400 0134 4146     		mov	r1, r8
 401 0136 9847     		blx	r3
 402 0138 8046     		mov	r8, r0
 403 013a EBE7     		b	.L50
 404              	.L71:
 405              		.align	2
 406              	.L70:
 407 013c 00000000 		.word	reprap
 408 0140 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 409              		.size	_ZN6GCodes12SetPositionsER11GCodeBuffer, .-_ZN6GCodes12SetPositionsER11GCodeBuffer
 410              		.global	__aeabi_fdiv
 411              		.section	.text._ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef,"ax",%progbits
 412              		.align	1
 413              		.p2align 2,,3
 414              		.global	_ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef
 415              		.syntax unified
 416              		.thumb
 417              		.thumb_func
 418              		.fpu softvfp
 419              		.type	_ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef, %function
 420              	_ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef:
 421              		@ args = 0, pretend = 0, frame = 0
 422              		@ frame_needed = 0, uses_anonymous_args = 0
 423 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 424 0004 D0F8FC31 		ldr	r3, [r0, #508]
 425 0008 82B0     		sub	sp, sp, #8
 426 000a 0546     		mov	r5, r0
 427 000c 9046     		mov	r8, r2
 428 000e 63B3     		cbz	r3, .L78
 429 0010 0024     		movs	r4, #0
 430 0012 8946     		mov	r9, r1
 431 0014 A246     		mov	r10, r4
 432 0016 00F51176 		add	r6, r0, #580
 433 001a 04E0     		b	.L77
 434              	.L76:
 435 001c D5F8FC31 		ldr	r3, [r5, #508]
 436 0020 0436     		adds	r6, r6, #4
 437 0022 A342     		cmp	r3, r4
 438 0024 1AD9     		bls	.L93
 439              	.L77:
 440 0026 2B19     		adds	r3, r5, r4
 441 0028 93F87212 		ldrb	r1, [r3, #626]	@ zero_extendqisi2
 442 002c 4846     		mov	r0, r9
 443 002e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 444 0032 0134     		adds	r4, r4, #1
 445 0034 0746     		mov	r7, r0
 446 0036 0028     		cmp	r0, #0
 447 0038 F0D0     		beq	.L76
 448 003a 4846     		mov	r0, r9
 449 003c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 450 0040 D5F83C12 		ldr	r1, [r5, #572]	@ float
 451 0044 FFF7FEFF 		bl	__aeabi_fmul
 452 0048 D5F8FC31 		ldr	r3, [r5, #508]
 453 004c 00F10040 		add	r0, r0, #-2147483648
 454 0050 A342     		cmp	r3, r4
 455 0052 3060     		str	r0, [r6]	@ float
 456 0054 BA46     		mov	r10, r7
ARM GAS  /tmp/ccC1SnVE.s 			page 9


 457 0056 06F10406 		add	r6, r6, #4
 458 005a E4D8     		bhi	.L77
 459              	.L93:
 460 005c BAF1000F 		cmp	r10, #0
 461 0060 03D0     		beq	.L78
 462              	.L86:
 463 0062 0120     		movs	r0, #1
 464 0064 02B0     		add	sp, sp, #8
 465              		@ sp needed
 466 0066 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 467              	.L78:
 468 006a 1549     		ldr	r1, .L94
 469 006c 4046     		mov	r0, r8
 470 006e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 471 0072 D5F8FC31 		ldr	r3, [r5, #508]
 472 0076 002B     		cmp	r3, #0
 473 0078 F3D0     		beq	.L86
 474 007a 0024     		movs	r4, #0
 475 007c DFF84490 		ldr	r9, .L94+4
 476 0080 05F27227 		addw	r7, r5, #626
 477 0084 05F51176 		add	r6, r5, #580
 478              	.L79:
 479 0088 D5F83C12 		ldr	r1, [r5, #572]	@ float
 480 008c 56F8040B 		ldr	r0, [r6], #4	@ float
 481 0090 FFF7FEFF 		bl	__aeabi_fdiv
 482 0094 FFF7FEFF 		bl	__aeabi_f2d
 483 0098 01F10043 		add	r3, r1, #-2147483648
 484 009c 1946     		mov	r1, r3
 485 009e 17F8012B 		ldrb	r2, [r7], #1	@ zero_extendqisi2
 486 00a2 CDE90001 		strd	r0, [sp]
 487 00a6 4946     		mov	r1, r9
 488 00a8 4046     		mov	r0, r8
 489 00aa FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 490 00ae D5F8FC31 		ldr	r3, [r5, #508]
 491 00b2 0134     		adds	r4, r4, #1
 492 00b4 A342     		cmp	r3, r4
 493 00b6 E7D8     		bhi	.L79
 494 00b8 0120     		movs	r0, #1
 495 00ba 02B0     		add	sp, sp, #8
 496              		@ sp needed
 497 00bc BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 498              	.L95:
 499              		.align	2
 500              	.L94:
 501 00c0 00000000 		.word	.LC7
 502 00c4 10000000 		.word	.LC8
 503              		.size	_ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef, .-_ZN6GCodes10OffsetAxesER11GCodeBufferRK
 504              		.global	__aeabi_fcmpgt
 505              		.global	__aeabi_fsub
 506              		.global	__aeabi_fadd
 507              		.section	.text._ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef,"ax",%progbits
 508              		.align	1
 509              		.p2align 2,,3
 510              		.global	_ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef
 511              		.syntax unified
 512              		.thumb
 513              		.thumb_func
ARM GAS  /tmp/ccC1SnVE.s 			page 10


 514              		.fpu softvfp
 515              		.type	_ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef, %function
 516              	_ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef:
 517              		@ args = 0, pretend = 0, frame = 32
 518              		@ frame_needed = 0, uses_anonymous_args = 0
 519 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 520 0004 0D46     		mov	r5, r1
 521 0006 8CB0     		sub	sp, sp, #48
 522 0008 0746     		mov	r7, r0
 523 000a 5021     		movs	r1, #80
 524 000c 2846     		mov	r0, r5
 525 000e 1646     		mov	r6, r2
 526 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 527 0014 38B1     		cbz	r0, .L97
 528 0016 3046     		mov	r0, r6
 529 0018 7349     		ldr	r1, .L119
 530 001a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 531 001e 0220     		movs	r0, #2
 532              	.L114:
 533 0020 0CB0     		add	sp, sp, #48
 534              		@ sp needed
 535 0022 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 536              	.L97:
 537 0026 0446     		mov	r4, r0
 538 0028 2946     		mov	r1, r5
 539 002a 3846     		mov	r0, r7
 540 002c FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 541 0030 0028     		cmp	r0, #0
 542 0032 F5D0     		beq	.L114
 543 0034 6D4B     		ldr	r3, .L119+4
 544 0036 04AA     		add	r2, sp, #16
 545 0038 0DF12808 		add	r8, sp, #40
 546 003c 93E80300 		ldm	r3, {r0, r1}
 547 0040 0192     		str	r2, [sp, #4]
 548 0042 0294     		str	r4, [sp, #8]
 549 0044 0096     		str	r6, [sp]
 550 0046 06AB     		add	r3, sp, #24
 551 0048 88E80300 		stm	r8, {r0, r1}
 552 004c 0222     		movs	r2, #2
 553 004e 5821     		movs	r1, #88
 554 0050 2846     		mov	r0, r5
 555 0052 8DF81040 		strb	r4, [sp, #16]
 556 0056 8DF81140 		strb	r4, [sp, #17]
 557 005a 8DF81240 		strb	r4, [sp, #18]
 558 005e 8DF81340 		strb	r4, [sp, #19]
 559 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 560 0066 18B1     		cbz	r0, .L118
 561              	.L117:
 562 0068 0220     		movs	r0, #2
 563 006a 0CB0     		add	sp, sp, #48
 564              		@ sp needed
 565 006c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 566              	.L118:
 567 0070 0DF11102 		add	r2, sp, #17
 568 0074 0290     		str	r0, [sp, #8]
 569 0076 0192     		str	r2, [sp, #4]
 570 0078 0096     		str	r6, [sp]
ARM GAS  /tmp/ccC1SnVE.s 			page 11


 571 007a 08AB     		add	r3, sp, #32
 572 007c 0222     		movs	r2, #2
 573 007e 5921     		movs	r1, #89
 574 0080 2846     		mov	r0, r5
 575 0082 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 576 0086 0028     		cmp	r0, #0
 577 0088 EED1     		bne	.L117
 578 008a 0122     		movs	r2, #1
 579 008c 0DF11303 		add	r3, sp, #19
 580 0090 0292     		str	r2, [sp, #8]
 581 0092 0193     		str	r3, [sp, #4]
 582 0094 0096     		str	r6, [sp]
 583 0096 4346     		mov	r3, r8
 584 0098 0222     		movs	r2, #2
 585 009a 5321     		movs	r1, #83
 586 009c 2846     		mov	r0, r5
 587 009e FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 588 00a2 0028     		cmp	r0, #0
 589 00a4 E0D1     		bne	.L117
 590 00a6 524C     		ldr	r4, .L119+8
 591 00a8 0DF11203 		add	r3, sp, #18
 592 00ac 2846     		mov	r0, r5
 593 00ae 05AA     		add	r2, sp, #20
 594 00b0 5221     		movs	r1, #82
 595 00b2 0594     		str	r4, [sp, #20]	@ float
 596 00b4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 597 00b8 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 598 00bc FBB9     		cbnz	r3, .L101
 599 00be 9DF81130 		ldrb	r3, [sp, #17]	@ zero_extendqisi2
 600 00c2 B3B9     		cbnz	r3, .L102
 601 00c4 9DF81230 		ldrb	r3, [sp, #18]	@ zero_extendqisi2
 602 00c8 002B     		cmp	r3, #0
 603 00ca 41D1     		bne	.L103
 604 00cc 9DF81330 		ldrb	r3, [sp, #19]	@ zero_extendqisi2
 605 00d0 002B     		cmp	r3, #0
 606 00d2 7CD1     		bne	.L104
 607 00d4 97F8F832 		ldrb	r3, [r7, #760]	@ zero_extendqisi2
 608 00d8 002B     		cmp	r3, #0
 609 00da 69D0     		beq	.L105
 610 00dc 4549     		ldr	r1, .L119+12
 611 00de 3046     		mov	r0, r6
 612 00e0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 613 00e4 07F53370 		add	r0, r7, #716
 614 00e8 3146     		mov	r1, r6
 615 00ea FFF7FEFF 		bl	_ZNK14GridDefinition15PrintParametersERK9StringRef
 616 00ee 0120     		movs	r0, #1
 617 00f0 96E7     		b	.L114
 618              	.L102:
 619 00f2 3046     		mov	r0, r6
 620 00f4 4049     		ldr	r1, .L119+16
 621 00f6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 622 00fa 0220     		movs	r0, #2
 623 00fc 90E7     		b	.L114
 624              	.L101:
 625 00fe 9DF81130 		ldrb	r3, [sp, #17]	@ zero_extendqisi2
 626 0102 002B     		cmp	r3, #0
 627 0104 F5D0     		beq	.L102
ARM GAS  /tmp/ccC1SnVE.s 			page 12


 628              	.L108:
 629 0106 07F53377 		add	r7, r7, #716
 630 010a CDF80080 		str	r8, [sp]
 631 010e 08AA     		add	r2, sp, #32
 632 0110 06A9     		add	r1, sp, #24
 633 0112 3846     		mov	r0, r7
 634 0114 059B     		ldr	r3, [sp, #20]	@ float
 635 0116 FFF7FEFF 		bl	_ZN14GridDefinition3SetEPKfS1_fS1_
 636 011a 0028     		cmp	r0, #0
 637 011c 55D1     		bne	.L112
 638 011e 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 639 0122 002B     		cmp	r3, #0
 640 0124 4AD0     		beq	.L109
 641 0126 0699     		ldr	r1, [sp, #24]	@ float
 642 0128 0798     		ldr	r0, [sp, #28]	@ float
 643 012a FFF7FEFF 		bl	__aeabi_fsub
 644 012e 0899     		ldr	r1, [sp, #32]	@ float
 645 0130 0546     		mov	r5, r0
 646 0132 0998     		ldr	r0, [sp, #36]	@ float
 647 0134 FFF7FEFF 		bl	__aeabi_fsub
 648 0138 0446     		mov	r4, r0
 649              	.L110:
 650 013a 3049     		ldr	r1, .L119+20
 651 013c 3046     		mov	r0, r6
 652 013e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 653 0142 3346     		mov	r3, r6
 654 0144 2246     		mov	r2, r4
 655 0146 2946     		mov	r1, r5
 656 0148 3846     		mov	r0, r7
 657 014a FFF7FEFF 		bl	_ZNK14GridDefinition10PrintErrorEffRK9StringRef
 658 014e 8BE7     		b	.L117
 659              	.L103:
 660 0150 059C     		ldr	r4, [sp, #20]	@ float
 661 0152 0021     		movs	r1, #0
 662 0154 2046     		mov	r0, r4
 663 0156 FFF7FEFF 		bl	__aeabi_fcmpgt
 664 015a 0028     		cmp	r0, #0
 665 015c 3DD0     		beq	.L115
 666 015e 2046     		mov	r0, r4
 667 0160 2749     		ldr	r1, .L119+24
 668 0162 FFF7FEFF 		bl	__aeabi_fsub
 669 0166 0A9C     		ldr	r4, [sp, #40]	@ float
 670 0168 0546     		mov	r5, r0
 671 016a 2146     		mov	r1, r4
 672 016c FFF7FEFF 		bl	__aeabi_fdiv
 673 0170 FFF7FEFF 		bl	floorf
 674 0174 0146     		mov	r1, r0
 675 0176 2046     		mov	r0, r4
 676 0178 FFF7FEFF 		bl	__aeabi_fmul
 677 017c 2049     		ldr	r1, .L119+24
 678 017e 00F10043 		add	r3, r0, #-2147483648
 679 0182 0693     		str	r3, [sp, #24]	@ float
 680 0184 FFF7FEFF 		bl	__aeabi_fadd
 681 0188 0B9C     		ldr	r4, [sp, #44]	@ float
 682 018a 0790     		str	r0, [sp, #28]	@ float
 683 018c 2146     		mov	r1, r4
 684 018e 2846     		mov	r0, r5
ARM GAS  /tmp/ccC1SnVE.s 			page 13


 685 0190 FFF7FEFF 		bl	__aeabi_fdiv
 686 0194 FFF7FEFF 		bl	floorf
 687 0198 0146     		mov	r1, r0
 688 019a 2046     		mov	r0, r4
 689 019c FFF7FEFF 		bl	__aeabi_fmul
 690 01a0 1749     		ldr	r1, .L119+24
 691 01a2 00F10043 		add	r3, r0, #-2147483648
 692 01a6 0893     		str	r3, [sp, #32]	@ float
 693 01a8 FFF7FEFF 		bl	__aeabi_fadd
 694 01ac 0990     		str	r0, [sp, #36]	@ float
 695 01ae AAE7     		b	.L108
 696              	.L105:
 697 01b0 3046     		mov	r0, r6
 698 01b2 1449     		ldr	r1, .L119+28
 699 01b4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 700 01b8 0120     		movs	r0, #1
 701 01ba 31E7     		b	.L114
 702              	.L109:
 703 01bc 0599     		ldr	r1, [sp, #20]	@ float
 704 01be 0846     		mov	r0, r1
 705 01c0 FFF7FEFF 		bl	__aeabi_fadd
 706 01c4 0446     		mov	r4, r0
 707 01c6 0546     		mov	r5, r0
 708 01c8 B7E7     		b	.L110
 709              	.L112:
 710 01ca 0120     		movs	r0, #1
 711 01cc 28E7     		b	.L114
 712              	.L104:
 713 01ce 3046     		mov	r0, r6
 714 01d0 0D49     		ldr	r1, .L119+32
 715 01d2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 716 01d6 0220     		movs	r0, #2
 717 01d8 22E7     		b	.L114
 718              	.L115:
 719 01da 3046     		mov	r0, r6
 720 01dc 0B49     		ldr	r1, .L119+36
 721 01de FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 722 01e2 0220     		movs	r0, #2
 723 01e4 1CE7     		b	.L114
 724              	.L120:
 725 01e6 00BF     		.align	2
 726              	.L119:
 727 01e8 00000000 		.word	.LC9
 728 01ec 00000000 		.word	.LANCHOR0
 729 01f0 000080BF 		.word	-1082130432
 730 01f4 4C000000 		.word	.LC10
 731 01f8 68000000 		.word	.LC12
 732 01fc 00010000 		.word	.LC15
 733 0200 CDCCCC3D 		.word	1036831949
 734 0204 54000000 		.word	.LC11
 735 0208 94000000 		.word	.LC13
 736 020c C4000000 		.word	.LC14
 737              		.size	_ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef, .-_ZN6GCodes10DefineGridER11GCodeBufferRK
 738              		.section	.text._ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b,"ax",%progbits
 739              		.align	1
 740              		.p2align 2,,3
 741              		.global	_ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b
ARM GAS  /tmp/ccC1SnVE.s 			page 14


 742              		.syntax unified
 743              		.thumb
 744              		.thumb_func
 745              		.fpu softvfp
 746              		.type	_ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b, %function
 747              	_ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b:
 748              		@ args = 4, pretend = 0, frame = 8
 749              		@ frame_needed = 0, uses_anonymous_args = 0
 750 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 751 0004 314D     		ldr	r5, .L129
 752 0006 0C46     		mov	r4, r1
 753 0008 E969     		ldr	r1, [r5, #28]
 754 000a 9846     		mov	r8, r3
 755 000c 0B7B     		ldrb	r3, [r1, #12]	@ zero_extendqisi2
 756 000e 85B0     		sub	sp, sp, #20
 757 0010 1746     		mov	r7, r2
 758 0012 9DF83890 		ldrb	r9, [sp, #56]	@ zero_extendqisi2
 759 0016 3BB1     		cbz	r3, .L122
 760 0018 1046     		mov	r0, r2
 761 001a 2D49     		ldr	r1, .L129+4
 762 001c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 763 0020 0220     		movs	r0, #2
 764 0022 05B0     		add	sp, sp, #20
 765              		@ sp needed
 766 0024 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 767              	.L122:
 768 0028 D8F80010 		ldr	r1, [r8]
 769 002c 0646     		mov	r6, r0
 770 002e FFF7FEFF 		bl	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef
 771 0032 18B9     		cbnz	r0, .L127
 772 0034 0220     		movs	r0, #2
 773 0036 05B0     		add	sp, sp, #20
 774              		@ sp needed
 775 0038 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 776              	.L127:
 777 003c 96F830A3 		ldrb	r10, [r6, #816]	@ zero_extendqisi2
 778 0040 BAF1000F 		cmp	r10, #0
 779 0044 20D0     		beq	.L128
 780              	.L124:
 781 0046 0124     		movs	r4, #1
 782 0048 0023     		movs	r3, #0
 783 004a 2146     		mov	r1, r4
 784 004c C6F82C33 		str	r3, [r6, #812]	@ float
 785 0050 A868     		ldr	r0, [r5, #8]
 786 0052 86F83293 		strb	r9, [r6, #818]
 787 0056 86F83143 		strb	r4, [r6, #817]
 788 005a 86F83043 		strb	r4, [r6, #816]
 789 005e FFF7FEFF 		bl	_ZN4Move8SimulateEh
 790 0062 E869     		ldr	r0, [r5, #28]
 791 0064 D8F80010 		ldr	r1, [r8]
 792 0068 FFF7FEFF 		bl	_ZN12PrintMonitor13StartingPrintEPKc
 793 006c 2146     		mov	r1, r4
 794 006e 3046     		mov	r0, r6
 795 0070 FFF7FEFF 		bl	_ZN6GCodes13StartPrintingEb
 796 0074 D8F80020 		ldr	r2, [r8]
 797 0078 3846     		mov	r0, r7
 798 007a 1649     		ldr	r1, .L129+8
ARM GAS  /tmp/ccC1SnVE.s 			page 15


 799 007c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 800 0080 2046     		mov	r0, r4
 801 0082 05B0     		add	sp, sp, #20
 802              		@ sp needed
 803 0084 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 804              	.L128:
 805 0088 0123     		movs	r3, #1
 806 008a D6F8FC11 		ldr	r1, [r6, #508]
 807 008e D6F88022 		ldr	r2, [r6, #640]
 808 0092 8B40     		lsls	r3, r3, r1
 809 0094 013B     		subs	r3, r3, #1
 810 0096 C6F88032 		str	r3, [r6, #640]
 811 009a C6F83C21 		str	r2, [r6, #316]
 812 009e 2846     		mov	r0, r5
 813 00a0 D5F808B0 		ldr	fp, [r5, #8]
 814 00a4 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 815 00a8 0390     		str	r0, [sp, #12]
 816 00aa 2846     		mov	r0, r5
 817 00ac FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 818 00b0 039B     		ldr	r3, [sp, #12]
 819 00b2 0090     		str	r0, [sp]
 820 00b4 5246     		mov	r2, r10
 821 00b6 5846     		mov	r0, fp
 822 00b8 06F5A071 		add	r1, r6, #320
 823 00bc FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 824 00c0 A368     		ldr	r3, [r4, #8]
 825 00c2 5B68     		ldr	r3, [r3, #4]	@ float
 826 00c4 C6F85831 		str	r3, [r6, #344]	@ float
 827 00c8 BDE7     		b	.L124
 828              	.L130:
 829 00ca 00BF     		.align	2
 830              	.L129:
 831 00cc 00000000 		.word	reprap
 832 00d0 00000000 		.word	.LC16
 833 00d4 30000000 		.word	.LC17
 834              		.size	_ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b, .-_ZN6GCodes12SimulateFileER11GCode
 835              		.section	.text._ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm,"ax",%progbits
 836              		.align	1
 837              		.p2align 2,,3
 838              		.global	_ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm
 839              		.syntax unified
 840              		.thumb
 841              		.thumb_func
 842              		.fpu softvfp
 843              		.type	_ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm, %function
 844              	_ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm:
 845              		@ args = 0, pretend = 0, frame = 0
 846              		@ frame_needed = 0, uses_anonymous_args = 0
 847 0000 90F83023 		ldrb	r2, [r0, #816]	@ zero_extendqisi2
 848 0004 9A42     		cmp	r2, r3
 849 0006 22D0     		beq	.L136
 850 0008 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 851 000c 82B0     		sub	sp, sp, #8
 852 000e 0446     		mov	r4, r0
 853 0010 0E46     		mov	r6, r1
 854 0012 1D46     		mov	r5, r3
 855 0014 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
ARM GAS  /tmp/ccC1SnVE.s 			page 16


 856 0018 B0B1     		cbz	r0, .L132
 857 001a 002D     		cmp	r5, #0
 858 001c 3BD0     		beq	.L144
 859 001e 94F83083 		ldrb	r8, [r4, #816]	@ zero_extendqisi2
 860 0022 B8F1000F 		cmp	r8, #0
 861 0026 14D0     		beq	.L139
 862 0028 1E4F     		ldr	r7, .L145
 863              	.L135:
 864 002a 0023     		movs	r3, #0
 865 002c C4F82C33 		str	r3, [r4, #812]	@ float
 866              	.L134:
 867 0030 0023     		movs	r3, #0
 868 0032 E9B2     		uxtb	r1, r5
 869 0034 B868     		ldr	r0, [r7, #8]
 870 0036 84F83013 		strb	r1, [r4, #816]
 871 003a 84F83233 		strb	r3, [r4, #818]
 872 003e 84F83133 		strb	r3, [r4, #817]
 873 0042 FFF7FEFF 		bl	_ZN4Move8SimulateEh
 874 0046 0120     		movs	r0, #1
 875              	.L132:
 876 0048 02B0     		add	sp, sp, #8
 877              		@ sp needed
 878 004a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 879              	.L136:
 880 004e 0120     		movs	r0, #1
 881 0050 7047     		bx	lr
 882              	.L139:
 883 0052 0123     		movs	r3, #1
 884 0054 D4F8FC11 		ldr	r1, [r4, #508]
 885 0058 D4F88022 		ldr	r2, [r4, #640]
 886 005c 8B40     		lsls	r3, r3, r1
 887 005e 114F     		ldr	r7, .L145
 888 0060 013B     		subs	r3, r3, #1
 889 0062 C4F88032 		str	r3, [r4, #640]
 890 0066 C4F83C21 		str	r2, [r4, #316]
 891 006a 3846     		mov	r0, r7
 892 006c D7F80890 		ldr	r9, [r7, #8]
 893 0070 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 894 0074 8246     		mov	r10, r0
 895 0076 3846     		mov	r0, r7
 896 0078 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 897 007c 5346     		mov	r3, r10
 898 007e 0090     		str	r0, [sp]
 899 0080 4246     		mov	r2, r8
 900 0082 4846     		mov	r0, r9
 901 0084 04F5A071 		add	r1, r4, #320
 902 0088 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 903 008c B368     		ldr	r3, [r6, #8]
 904 008e 5B68     		ldr	r3, [r3, #4]	@ float
 905 0090 C4F85831 		str	r3, [r4, #344]	@ float
 906 0094 C9E7     		b	.L135
 907              	.L144:
 908 0096 3146     		mov	r1, r6
 909 0098 2046     		mov	r0, r4
 910 009a FFF7FEFF 		bl	_ZN6GCodes13EndSimulationEP11GCodeBuffer
 911 009e 014F     		ldr	r7, .L145
 912 00a0 C6E7     		b	.L134
ARM GAS  /tmp/ccC1SnVE.s 			page 17


 913              	.L146:
 914 00a2 00BF     		.align	2
 915              	.L145:
 916 00a4 00000000 		.word	reprap
 917              		.size	_ZN6GCodes20ChangeSimulationModeER11GCodeBufferRK9StringRefm, .-_ZN6GCodes20ChangeSimulation
 918              		.global	__aeabi_f2iz
 919              		.section	.text._ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef,"ax",%progbits
 920              		.align	1
 921              		.p2align 2,,3
 922              		.global	_ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef
 923              		.syntax unified
 924              		.thumb
 925              		.thumb_func
 926              		.fpu softvfp
 927              		.type	_ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef, %function
 928              	_ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef:
 929              		@ args = 0, pretend = 0, frame = 64
 930              		@ frame_needed = 0, uses_anonymous_args = 0
 931 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 932 0004 0F46     		mov	r7, r1
 933 0006 0023     		movs	r3, #0
 934 0008 9BB0     		sub	sp, sp, #108
 935 000a 8046     		mov	r8, r0
 936 000c 5021     		movs	r1, #80
 937 000e 3846     		mov	r0, r7
 938 0010 1546     		mov	r5, r2
 939 0012 8DF83730 		strb	r3, [sp, #55]
 940 0016 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 941 001a 8146     		mov	r9, r0
 942 001c 0028     		cmp	r0, #0
 943 001e 40F0E180 		bne	.L182
 944              	.L148:
 945 0022 D8F80000 		ldr	r0, [r8]
 946 0026 0EAC     		add	r4, sp, #56
 947 0028 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 948 002c FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 949 0030 0646     		mov	r6, r0
 950 0032 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 951 0034 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 952 0036 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 953 0038 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 954 003a 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 955 003e 84E80F00 		stm	r4, {r0, r1, r2, r3}
 956 0042 4821     		movs	r1, #72
 957 0044 3846     		mov	r0, r7
 958 0046 0DF13703 		add	r3, sp, #55
 959 004a 14AA     		add	r2, sp, #80
 960 004c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 961 0050 4621     		movs	r1, #70
 962 0052 3846     		mov	r0, r7
 963 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 964 0058 0028     		cmp	r0, #0
 965 005a 40F0B880 		bne	.L183
 966              	.L149:
 967 005e 5421     		movs	r1, #84
 968 0060 3846     		mov	r0, r7
 969 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  /tmp/ccC1SnVE.s 			page 18


 970 0066 0028     		cmp	r0, #0
 971 0068 40F0A680 		bne	.L184
 972              	.L150:
 973 006c 4921     		movs	r1, #73
 974 006e 3846     		mov	r0, r7
 975 0070 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 976 0074 0028     		cmp	r0, #0
 977 0076 40F09380 		bne	.L185
 978              	.L151:
 979 007a 4221     		movs	r1, #66
 980 007c 3846     		mov	r0, r7
 981 007e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 982 0082 0028     		cmp	r0, #0
 983 0084 7ED1     		bne	.L186
 984              	.L152:
 985 0086 0DF13703 		add	r3, sp, #55
 986 008a 17AA     		add	r2, sp, #92
 987 008c 5221     		movs	r1, #82
 988 008e 3846     		mov	r0, r7
 989 0090 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 990 0094 5321     		movs	r1, #83
 991 0096 3846     		mov	r0, r7
 992 0098 0DF13703 		add	r3, sp, #55
 993 009c 18AA     		add	r2, sp, #96
 994 009e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 995 00a2 4121     		movs	r1, #65
 996 00a4 3846     		mov	r0, r7
 997 00a6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 998 00aa 0028     		cmp	r0, #0
 999 00ac 50D1     		bne	.L187
 1000 00ae 9DF83730 		ldrb	r3, [sp, #55]	@ zero_extendqisi2
 1001 00b2 002B     		cmp	r3, #0
 1002 00b4 54D1     		bne	.L154
 1003 00b6 B9F1000F 		cmp	r9, #0
 1004 00ba 45D1     		bne	.L174
 1005              	.L161:
 1006 00bc D8F80020 		ldr	r2, [r8]
 1007 00c0 504B     		ldr	r3, .L188
 1008 00c2 92F89420 		ldrb	r2, [r2, #148]	@ zero_extendqisi2
 1009 00c6 9DF86510 		ldrb	r1, [sp, #101]	@ zero_extendqisi2
 1010 00ca 4F4C     		ldr	r4, .L188+4
 1011 00cc 1498     		ldr	r0, [sp, #80]	@ float
 1012 00ce 0B92     		str	r2, [sp, #44]
 1013 00d0 0029     		cmp	r1, #0
 1014 00d2 08BF     		it	eq
 1015 00d4 1C46     		moveq	r4, r3
 1016 00d6 FFF7FEFF 		bl	__aeabi_f2d
 1017 00da 8046     		mov	r8, r0
 1018 00dc 8946     		mov	r9, r1
 1019 00de 1598     		ldr	r0, [sp, #84]	@ float
 1020 00e0 4A49     		ldr	r1, .L188+8
 1021 00e2 FFF7FEFF 		bl	__aeabi_fmul
 1022 00e6 FFF7FEFF 		bl	__aeabi_f2iz
 1023 00ea 4849     		ldr	r1, .L188+8
 1024 00ec 8246     		mov	r10, r0
 1025 00ee 1698     		ldr	r0, [sp, #88]	@ float
 1026 00f0 FFF7FEFF 		bl	__aeabi_fmul
ARM GAS  /tmp/ccC1SnVE.s 			page 19


 1027 00f4 FFF7FEFF 		bl	__aeabi_f2iz
 1028 00f8 8346     		mov	fp, r0
 1029 00fa 1798     		ldr	r0, [sp, #92]	@ float
 1030 00fc FFF7FEFF 		bl	__aeabi_f2d
 1031 0100 9DF866E0 		ldrb	lr, [sp, #102]	@ zero_extendqisi2
 1032 0104 0F46     		mov	r7, r1
 1033 0106 424B     		ldr	r3, .L188+12
 1034 0108 4249     		ldr	r1, .L188+16
 1035 010a 0646     		mov	r6, r0
 1036 010c BEF1000F 		cmp	lr, #0
 1037 0110 08BF     		it	eq
 1038 0112 0B46     		moveq	r3, r1
 1039 0114 1898     		ldr	r0, [sp, #96]	@ float
 1040 0116 0A93     		str	r3, [sp, #40]
 1041 0118 FFF7FEFF 		bl	__aeabi_f2d
 1042 011c 0A9B     		ldr	r3, [sp, #40]
 1043 011e 9DF864E0 		ldrb	lr, [sp, #100]	@ zero_extendqisi2
 1044 0122 CDE90801 		strd	r0, [sp, #32]
 1045 0126 0693     		str	r3, [sp, #24]
 1046 0128 CDE90089 		strd	r8, [sp]
 1047 012c 2346     		mov	r3, r4
 1048 012e 0B9A     		ldr	r2, [sp, #44]
 1049 0130 CDE90467 		strd	r6, [sp, #16]
 1050 0134 CDF80CB0 		str	fp, [sp, #12]
 1051 0138 CDF808A0 		str	r10, [sp, #8]
 1052 013c 2846     		mov	r0, r5
 1053 013e CDF81CE0 		str	lr, [sp, #28]
 1054 0142 3549     		ldr	r1, .L188+20
 1055 0144 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1056              	.L174:
 1057 0148 0120     		movs	r0, #1
 1058 014a 1BB0     		add	sp, sp, #108
 1059              		@ sp needed
 1060 014c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1061              	.L187:
 1062 0150 3846     		mov	r0, r7
 1063 0152 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 1064 0156 0123     		movs	r3, #1
 1065 0158 8DF86400 		strb	r0, [sp, #100]
 1066 015c 8DF83730 		strb	r3, [sp, #55]
 1067              	.L154:
 1068 0160 D8F80000 		ldr	r0, [r8]
 1069 0164 0EAA     		add	r2, sp, #56
 1070 0166 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 1071 016a FFF7FEFF 		bl	_ZN8Platform19SetZProbeParametersE10ZProbeTypeRK6ZProbe
 1072 016e B9F1000F 		cmp	r9, #0
 1073 0172 E9D1     		bne	.L174
 1074 0174 9DF83730 		ldrb	r3, [sp, #55]	@ zero_extendqisi2
 1075 0178 002B     		cmp	r3, #0
 1076 017a 9FD0     		beq	.L161
 1077 017c 0120     		movs	r0, #1
 1078 017e 1BB0     		add	sp, sp, #108
 1079              		@ sp needed
 1080 0180 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1081              	.L186:
 1082 0184 3846     		mov	r0, r7
 1083 0186 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
ARM GAS  /tmp/ccC1SnVE.s 			page 20


 1084 018a A0F10100 		sub	r0, #1
 1085 018e B0FA80F0 		clz	r0, r0
 1086 0192 0123     		movs	r3, #1
 1087 0194 4009     		lsrs	r0, r0, #5
 1088 0196 8DF86600 		strb	r0, [sp, #102]
 1089 019a 8DF83730 		strb	r3, [sp, #55]
 1090 019e 72E7     		b	.L152
 1091              	.L185:
 1092 01a0 3846     		mov	r0, r7
 1093 01a2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1094 01a6 0030     		adds	r0, r0, #0
 1095 01a8 18BF     		it	ne
 1096 01aa 0120     		movne	r0, #1
 1097 01ac 0123     		movs	r3, #1
 1098 01ae 8DF86500 		strb	r0, [sp, #101]
 1099 01b2 8DF83730 		strb	r3, [sp, #55]
 1100 01b6 60E7     		b	.L151
 1101              	.L184:
 1102 01b8 3846     		mov	r0, r7
 1103 01ba FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1104 01be 1749     		ldr	r1, .L188+24
 1105 01c0 FFF7FEFF 		bl	__aeabi_fmul
 1106 01c4 0123     		movs	r3, #1
 1107 01c6 1690     		str	r0, [sp, #88]	@ float
 1108 01c8 8DF83730 		strb	r3, [sp, #55]
 1109 01cc 4EE7     		b	.L150
 1110              	.L183:
 1111 01ce 3846     		mov	r0, r7
 1112 01d0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1113 01d4 1149     		ldr	r1, .L188+24
 1114 01d6 FFF7FEFF 		bl	__aeabi_fmul
 1115 01da 0123     		movs	r3, #1
 1116 01dc 1590     		str	r0, [sp, #84]	@ float
 1117 01de 8DF83730 		strb	r3, [sp, #55]
 1118 01e2 3CE7     		b	.L149
 1119              	.L182:
 1120 01e4 3846     		mov	r0, r7
 1121 01e6 D8F80040 		ldr	r4, [r8]
 1122 01ea FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1123 01ee 0146     		mov	r1, r0
 1124 01f0 2046     		mov	r0, r4
 1125 01f2 FFF7FEFF 		bl	_ZN8Platform13SetZProbeTypeEj
 1126 01f6 6422     		movs	r2, #100
 1127 01f8 3946     		mov	r1, r7
 1128 01fa 4046     		mov	r0, r8
 1129 01fc FFF7FEFF 		bl	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 1130 0200 0FE7     		b	.L148
 1131              	.L189:
 1132 0202 00BF     		.align	2
 1133              	.L188:
 1134 0204 04000000 		.word	.LC19
 1135 0208 00000000 		.word	.LC18
 1136 020c 00007042 		.word	1114636288
 1137 0210 08000000 		.word	.LC20
 1138 0214 14000000 		.word	.LC21
 1139 0218 1C000000 		.word	.LC22
 1140 021c 8988883C 		.word	1015580809
ARM GAS  /tmp/ccC1SnVE.s 			page 21


 1141              		.size	_ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef, .-_ZN6GCodes17SetOrReportZProbeER1
 1142              		.section	.text._ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi,"ax",%progbits
 1143              		.align	1
 1144              		.p2align 2,,3
 1145              		.global	_ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi
 1146              		.syntax unified
 1147              		.thumb
 1148              		.thumb_func
 1149              		.fpu softvfp
 1150              		.type	_ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi, %function
 1151              	_ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi:
 1152              		@ args = 0, pretend = 0, frame = 40
 1153              		@ frame_needed = 0, uses_anonymous_args = 0
 1154 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1155 0004 0C46     		mov	r4, r1
 1156 0006 8BB0     		sub	sp, sp, #44
 1157 0008 0646     		mov	r6, r0
 1158 000a 5421     		movs	r1, #84
 1159 000c 2046     		mov	r0, r4
 1160 000e 1546     		mov	r5, r2
 1161 0010 9846     		mov	r8, r3
 1162 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1163 0016 38B9     		cbnz	r0, .L238
 1164 0018 2846     		mov	r0, r5
 1165 001a 8749     		ldr	r1, .L246
 1166 001c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1167 0020 0220     		movs	r0, #2
 1168              	.L230:
 1169 0022 0BB0     		add	sp, sp, #44
 1170              		@ sp needed
 1171 0024 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1172              	.L238:
 1173 0028 2046     		mov	r0, r4
 1174 002a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1175 002e 0928     		cmp	r0, #9
 1176 0030 0746     		mov	r7, r0
 1177 0032 3DD8     		bhi	.L192
 1178 0034 40F24623 		movw	r3, #582
 1179 0038 9845     		cmp	r8, r3
 1180 003a 41D0     		beq	.L239
 1181 003c 4321     		movs	r1, #67
 1182 003e 2046     		mov	r0, r4
 1183 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1184 0044 0028     		cmp	r0, #0
 1185 0046 5AD1     		bne	.L240
 1186 0048 4FEA4709 		lsl	r9, r7, #1
 1187 004c 09EB0703 		add	r3, r9, r7
 1188 0050 9B00     		lsls	r3, r3, #2
 1189 0052 03F55372 		add	r2, r3, #844
 1190 0056 B158     		ldr	r1, [r6, r2]
 1191 0058 3244     		add	r2, r2, r6
 1192 005a 0029     		cmp	r1, #0
 1193 005c 48D0     		beq	.L241
 1194              	.L235:
 1195 005e 5321     		movs	r1, #83
 1196 0060 2046     		mov	r0, r4
 1197 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  /tmp/ccC1SnVE.s 			page 22


 1198 0066 0028     		cmp	r0, #0
 1199 0068 5AD1     		bne	.L202
 1200 006a 3A46     		mov	r2, r7
 1201 006c 4F44     		add	r7, r7, r9
 1202 006e 06EB8707 		add	r7, r6, r7, lsl #2
 1203 0072 7249     		ldr	r1, .L246+4
 1204 0074 2846     		mov	r0, r5
 1205 0076 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1206 007a D7F84C23 		ldr	r2, [r7, #844]
 1207 007e 2946     		mov	r1, r5
 1208 0080 3046     		mov	r0, r6
 1209 0082 FFF7FEFF 		bl	_ZN6GCodes12ListTriggersERK9StringRefm
 1210 0086 6E49     		ldr	r1, .L246+8
 1211 0088 2846     		mov	r0, r5
 1212 008a FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1213 008e 3046     		mov	r0, r6
 1214 0090 D7F85023 		ldr	r2, [r7, #848]
 1215 0094 2946     		mov	r1, r5
 1216 0096 FFF7FEFF 		bl	_ZN6GCodes12ListTriggersERK9StringRefm
 1217 009a 6A49     		ldr	r1, .L246+12
 1218 009c 2846     		mov	r0, r5
 1219 009e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1220 00a2 97F85443 		ldrb	r4, [r7, #852]	@ zero_extendqisi2
 1221 00a6 012C     		cmp	r4, #1
 1222 00a8 00F0AB80 		beq	.L242
 1223              	.L236:
 1224 00ac 0120     		movs	r0, #1
 1225 00ae B8E7     		b	.L230
 1226              	.L192:
 1227 00b0 2846     		mov	r0, r5
 1228 00b2 6549     		ldr	r1, .L246+16
 1229 00b4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1230 00b8 0220     		movs	r0, #2
 1231 00ba 0BB0     		add	sp, sp, #44
 1232              		@ sp needed
 1233 00bc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1234              	.L239:
 1235 00c0 3068     		ldr	r0, [r6]
 1236 00c2 FFF7FEFF 		bl	_ZNK8Platform19GetAllEndstopStatesEv
 1237 00c6 07EB4703 		add	r3, r7, r7, lsl #1
 1238 00ca 06EB8303 		add	r3, r6, r3, lsl #2
 1239 00ce D3F84C23 		ldr	r2, [r3, #844]
 1240 00d2 1042     		tst	r0, r2
 1241 00d4 03D1     		bne	.L194
 1242 00d6 D3F85033 		ldr	r3, [r3, #848]
 1243 00da 8343     		bics	r3, r3, r0
 1244 00dc E6D0     		beq	.L236
 1245              	.L194:
 1246 00de 0120     		movs	r0, #1
 1247 00e0 D6F8C833 		ldr	r3, [r6, #968]
 1248 00e4 00FA07F7 		lsl	r7, r0, r7
 1249 00e8 3B43     		orrs	r3, r3, r7
 1250 00ea C6F8C833 		str	r3, [r6, #968]
 1251 00ee 98E7     		b	.L230
 1252              	.L241:
 1253 00f0 5268     		ldr	r2, [r2, #4]
 1254 00f2 002A     		cmp	r2, #0
ARM GAS  /tmp/ccC1SnVE.s 			page 23


 1255 00f4 B3D1     		bne	.L235
 1256 00f6 3344     		add	r3, r3, r6
 1257 00f8 83F85423 		strb	r2, [r3, #852]
 1258 00fc AFE7     		b	.L235
 1259              	.L240:
 1260 00fe 2046     		mov	r0, r4
 1261 0100 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1262 0104 4FEA4709 		lsl	r9, r7, #1
 1263 0108 09EB0703 		add	r3, r9, r7
 1264 010c 06EB8303 		add	r3, r6, r3, lsl #2
 1265 0110 83F85403 		strb	r0, [r3, #852]
 1266 0114 5321     		movs	r1, #83
 1267 0116 2046     		mov	r0, r4
 1268 0118 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1269 011c 0028     		cmp	r0, #0
 1270 011e C5D0     		beq	.L236
 1271              	.L202:
 1272 0120 2046     		mov	r0, r4
 1273 0122 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1274 0126 D6F8F831 		ldr	r3, [r6, #504]
 1275 012a 0190     		str	r0, [sp, #4]
 1276 012c 002B     		cmp	r3, #0
 1277 012e 00F08180 		beq	.L243
 1278 0132 4FF0000A 		mov	r10, #0
 1279 0136 4FF0010B 		mov	fp, #1
 1280 013a D046     		mov	r8, r10
 1281 013c 06F27225 		addw	r5, r6, #626
 1282              	.L205:
 1283 0140 15F8011B 		ldrb	r1, [r5], #1	@ zero_extendqisi2
 1284 0144 2046     		mov	r0, r4
 1285 0146 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1286 014a 18B1     		cbz	r0, .L204
 1287 014c 0BFA08F2 		lsl	r2, fp, r8
 1288 0150 4AEA020A 		orr	r10, r10, r2
 1289              	.L204:
 1290 0154 D6F8F821 		ldr	r2, [r6, #504]
 1291 0158 08F10108 		add	r8, r8, #1
 1292 015c 4245     		cmp	r2, r8
 1293 015e EFD8     		bhi	.L205
 1294              	.L198:
 1295 0160 4521     		movs	r1, #69
 1296 0162 2046     		mov	r0, r4
 1297 0164 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1298 0168 70B9     		cbnz	r0, .L244
 1299              	.L206:
 1300 016a 019B     		ldr	r3, [sp, #4]
 1301 016c 002B     		cmp	r3, #0
 1302 016e 3DD0     		beq	.L211
 1303 0170 012B     		cmp	r3, #1
 1304 0172 30D0     		beq	.L212
 1305 0174 0133     		adds	r3, r3, #1
 1306 0176 23D0     		beq	.L245
 1307 0178 3068     		ldr	r0, [r6]
 1308 017a 344A     		ldr	r2, .L246+20
 1309 017c 40F2B511 		movw	r1, #437
 1310 0180 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1311 0184 0120     		movs	r0, #1
ARM GAS  /tmp/ccC1SnVE.s 			page 24


 1312 0186 4CE7     		b	.L230
 1313              	.L244:
 1314 0188 0623     		movs	r3, #6
 1315 018a 0AAA     		add	r2, sp, #40
 1316 018c 42F81C3D 		str	r3, [r2, #-28]!
 1317 0190 04A9     		add	r1, sp, #16
 1318 0192 2046     		mov	r0, r4
 1319 0194 0023     		movs	r3, #0
 1320 0196 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1321 019a 0399     		ldr	r1, [sp, #12]
 1322 019c 0029     		cmp	r1, #0
 1323 019e E4D0     		beq	.L206
 1324 01a0 0120     		movs	r0, #1
 1325 01a2 04AA     		add	r2, sp, #16
 1326 01a4 02EB8101 		add	r1, r2, r1, lsl #2
 1327              	.L209:
 1328 01a8 52F8043B 		ldr	r3, [r2], #4
 1329 01ac 052B     		cmp	r3, #5
 1330 01ae 04D8     		bhi	.L208
 1331 01b0 0333     		adds	r3, r3, #3
 1332 01b2 00FA03F3 		lsl	r3, r0, r3
 1333 01b6 4AEA030A 		orr	r10, r10, r3
 1334              	.L208:
 1335 01ba 9142     		cmp	r1, r2
 1336 01bc F4D1     		bne	.L209
 1337 01be D4E7     		b	.L206
 1338              	.L245:
 1339 01c0 BAF1000F 		cmp	r10, #0
 1340 01c4 23D1     		bne	.L214
 1341 01c6 4F44     		add	r7, r7, r9
 1342 01c8 06EB8706 		add	r6, r6, r7, lsl #2
 1343 01cc C6F850A3 		str	r10, [r6, #848]
 1344 01d0 C6F84CA3 		str	r10, [r6, #844]
 1345 01d4 6AE7     		b	.L236
 1346              	.L212:
 1347 01d6 4F44     		add	r7, r7, r9
 1348 01d8 06EB8706 		add	r6, r6, r7, lsl #2
 1349 01dc D6F84C33 		ldr	r3, [r6, #844]
 1350 01e0 0198     		ldr	r0, [sp, #4]
 1351 01e2 43EA0A03 		orr	r3, r3, r10
 1352 01e6 C6F84C33 		str	r3, [r6, #844]
 1353 01ea 1AE7     		b	.L230
 1354              	.L211:
 1355 01ec 4F44     		add	r7, r7, r9
 1356 01ee 06EB8706 		add	r6, r6, r7, lsl #2
 1357 01f2 D6F85033 		ldr	r3, [r6, #848]
 1358 01f6 0120     		movs	r0, #1
 1359 01f8 43EA0A03 		orr	r3, r3, r10
 1360 01fc C6F85033 		str	r3, [r6, #848]
 1361 0200 0FE7     		b	.L230
 1362              	.L242:
 1363 0202 2846     		mov	r0, r5
 1364 0204 1249     		ldr	r1, .L246+24
 1365 0206 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1366 020a 2046     		mov	r0, r4
 1367 020c 09E7     		b	.L230
 1368              	.L214:
ARM GAS  /tmp/ccC1SnVE.s 			page 25


 1369 020e 6FEA0A0A 		mvn	r10, r10
 1370 0212 4F44     		add	r7, r7, r9
 1371 0214 06EB8706 		add	r6, r6, r7, lsl #2
 1372 0218 D6F84C23 		ldr	r2, [r6, #844]
 1373 021c D6F85033 		ldr	r3, [r6, #848]
 1374 0220 02EA0A02 		and	r2, r2, r10
 1375 0224 03EA0A03 		and	r3, r3, r10
 1376 0228 C6F84C23 		str	r2, [r6, #844]
 1377 022c C6F85033 		str	r3, [r6, #848]
 1378 0230 0120     		movs	r0, #1
 1379 0232 F6E6     		b	.L230
 1380              	.L243:
 1381 0234 9A46     		mov	r10, r3
 1382 0236 93E7     		b	.L198
 1383              	.L247:
 1384              		.align	2
 1385              	.L246:
 1386 0238 AC000000 		.word	.LC29
 1387 023c 24000000 		.word	.LC24
 1388 0240 4C000000 		.word	.LC25
 1389 0244 64000000 		.word	.LC26
 1390 0248 90000000 		.word	.LC28
 1391 024c 00000000 		.word	.LC23
 1392 0250 74000000 		.word	.LC27
 1393              		.size	_ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi, .-_ZN6GCodes23CheckOrConfig
 1394              		.section	.text._ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef,"ax",%progbits
 1395              		.align	1
 1396              		.p2align 2,,3
 1397              		.global	_ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef
 1398              		.syntax unified
 1399              		.thumb
 1400              		.thumb_func
 1401              		.fpu softvfp
 1402              		.type	_ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef, %function
 1403              	_ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef:
 1404              		@ args = 0, pretend = 0, frame = 48
 1405              		@ frame_needed = 0, uses_anonymous_args = 0
 1406 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1407 0004 8DB0     		sub	sp, sp, #52
 1408 0006 0092     		str	r2, [sp]
 1409 0008 0446     		mov	r4, r0
 1410 000a 8846     		mov	r8, r1
 1411 000c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 1412 0010 0028     		cmp	r0, #0
 1413 0012 00F0C180 		beq	.L293
 1414 0016 4FF00009 		mov	r9, #0
 1415 001a B14D     		ldr	r5, .L340
 1416 001c 4F46     		mov	r7, r9
 1417 001e C346     		mov	fp, r8
 1418 0020 5826     		movs	r6, #88
 1419 0022 A046     		mov	r8, r4
 1420 0024 4FF0040A 		mov	r10, #4
 1421 0028 8146     		mov	r9, r0
 1422 002a 2C46     		mov	r4, r5
 1423 002c 03E0     		b	.L268
 1424              	.L250:
 1425 002e 14F8016F 		ldrb	r6, [r4, #1]!	@ zero_extendqisi2
ARM GAS  /tmp/ccC1SnVE.s 			page 26


 1426 0032 002E     		cmp	r6, #0
 1427 0034 49D0     		beq	.L329
 1428              	.L268:
 1429 0036 3146     		mov	r1, r6
 1430 0038 5846     		mov	r0, fp
 1431 003a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1432 003e 0546     		mov	r5, r0
 1433 0040 0028     		cmp	r0, #0
 1434 0042 F4D0     		beq	.L250
 1435 0044 0CAA     		add	r2, sp, #48
 1436 0046 06AF     		add	r7, sp, #24
 1437 0048 5846     		mov	r0, fp
 1438 004a 42F824AD 		str	r10, [r2, #-36]!
 1439 004e 3946     		mov	r1, r7
 1440 0050 0023     		movs	r3, #0
 1441 0052 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1442 0056 0398     		ldr	r0, [sp, #12]
 1443 0058 0490     		str	r0, [sp, #16]
 1444 005a C8B1     		cbz	r0, .L251
 1445 005c 3946     		mov	r1, r7
 1446 005e 0123     		movs	r3, #1
 1447 0060 4FF0000C 		mov	ip, #0
 1448 0064 04E0     		b	.L252
 1449              	.L331:
 1450 0066 8342     		cmp	r3, r0
 1451 0068 8EF80320 		strb	r2, [lr, #3]
 1452 006c 0CD2     		bcs	.L330
 1453              	.L256:
 1454 006e 0133     		adds	r3, r3, #1
 1455              	.L252:
 1456 0070 51F8042B 		ldr	r2, [r1], #4
 1457 0074 0DF1100E 		add	lr, sp, #16
 1458 0078 082A     		cmp	r2, #8
 1459 007a 9E44     		add	lr, lr, r3
 1460 007c F3D9     		bls	.L331
 1461 007e 8342     		cmp	r3, r0
 1462 0080 80F0B280 		bcs	.L319
 1463 0084 AC46     		mov	ip, r5
 1464 0086 F2E7     		b	.L256
 1465              	.L330:
 1466 0088 BCF1000F 		cmp	ip, #0
 1467 008c 40F0AC80 		bne	.L319
 1468              	.L251:
 1469 0090 D8F8F801 		ldr	r0, [r8, #504]
 1470 0094 0028     		cmp	r0, #0
 1471 0096 00F0C580 		beq	.L332
 1472 009a 98F87232 		ldrb	r3, [r8, #626]	@ zero_extendqisi2
 1473 009e B342     		cmp	r3, r6
 1474 00a0 00F0C380 		beq	.L333
 1475 00a4 0023     		movs	r3, #0
 1476 00a6 08F27322 		addw	r2, r8, #627
 1477 00aa 04E0     		b	.L261
 1478              	.L262:
 1479 00ac 12F8011B 		ldrb	r1, [r2], #1	@ zero_extendqisi2
 1480 00b0 3B46     		mov	r3, r7
 1481 00b2 B142     		cmp	r1, r6
 1482 00b4 43D0     		beq	.L334
ARM GAS  /tmp/ccC1SnVE.s 			page 27


 1483              	.L261:
 1484 00b6 5F1C     		adds	r7, r3, #1
 1485 00b8 8742     		cmp	r7, r0
 1486 00ba F7D1     		bne	.L262
 1487 00bc 0528     		cmp	r0, #5
 1488 00be 5AD9     		bls	.L335
 1489              	.L264:
 1490 00c0 2F46     		mov	r7, r5
 1491              	.L338:
 1492 00c2 14F8016F 		ldrb	r6, [r4, #1]!	@ zero_extendqisi2
 1493 00c6 002E     		cmp	r6, #0
 1494 00c8 B5D1     		bne	.L268
 1495              	.L329:
 1496 00ca 4446     		mov	r4, r8
 1497 00cc D846     		mov	r8, fp
 1498 00ce 4521     		movs	r1, #69
 1499 00d0 4046     		mov	r0, r8
 1500 00d2 CB46     		mov	fp, r9
 1501 00d4 B946     		mov	r9, r7
 1502 00d6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1503 00da 0028     		cmp	r0, #0
 1504 00dc 5FD0     		beq	.L336
 1505 00de D4F8F831 		ldr	r3, [r4, #504]
 1506 00e2 0CAA     		add	r2, sp, #48
 1507 00e4 C3F10903 		rsb	r3, r3, #9
 1508 00e8 0DF11809 		add	r9, sp, #24
 1509 00ec 42F8203D 		str	r3, [r2, #-32]!
 1510 00f0 4946     		mov	r1, r9
 1511 00f2 3346     		mov	r3, r6
 1512 00f4 4046     		mov	r0, r8
 1513 00f6 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1514 00fa 049B     		ldr	r3, [sp, #16]
 1515 00fc C4F80032 		str	r3, [r4, #512]
 1516 0100 002B     		cmp	r3, #0
 1517 0102 58D0     		beq	.L274
 1518              	.L290:
 1519 0104 0025     		movs	r5, #0
 1520 0106 03E0     		b	.L272
 1521              	.L296:
 1522 0108 0135     		adds	r5, r5, #1
 1523 010a AB42     		cmp	r3, r5
 1524 010c 5E46     		mov	r6, fp
 1525 010e 0CD9     		bls	.L337
 1526              	.L272:
 1527 0110 59F8042B 		ldr	r2, [r9], #4
 1528 0114 082A     		cmp	r2, #8
 1529 0116 F7D8     		bhi	.L296
 1530 0118 2946     		mov	r1, r5
 1531 011a D2B2     		uxtb	r2, r2
 1532 011c 2068     		ldr	r0, [r4]
 1533 011e FFF7FEFF 		bl	_ZN8Platform17SetExtruderDriverEjh
 1534 0122 049B     		ldr	r3, [sp, #16]
 1535 0124 0135     		adds	r5, r5, #1
 1536 0126 AB42     		cmp	r3, r5
 1537 0128 F2D8     		bhi	.L272
 1538              	.L337:
 1539 012a 002E     		cmp	r6, #0
ARM GAS  /tmp/ccC1SnVE.s 			page 28


 1540 012c 43D0     		beq	.L274
 1541              	.L267:
 1542 012e 0098     		ldr	r0, [sp]
 1543 0130 6C49     		ldr	r1, .L340+4
 1544 0132 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1545 0136 0220     		movs	r0, #2
 1546 0138 0DB0     		add	sp, sp, #52
 1547              		@ sp needed
 1548 013a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1549              	.L334:
 1550 013e 052F     		cmp	r7, #5
 1551 0140 BED8     		bhi	.L264
 1552              	.L258:
 1553 0142 694B     		ldr	r3, .L340+8
 1554 0144 0122     		movs	r2, #1
 1555 0146 9868     		ldr	r0, [r3, #8]
 1556 0148 08F1A001 		add	r1, r8, #160
 1557 014c FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 1558 0150 3946     		mov	r1, r7
 1559 0152 04AA     		add	r2, sp, #16
 1560 0154 D8F80000 		ldr	r0, [r8]
 1561 0158 FFF7FEFF 		bl	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig
 1562 015c D8F8F821 		ldr	r2, [r8, #504]
 1563 0160 D8F80032 		ldr	r3, [r8, #512]
 1564 0164 2F46     		mov	r7, r5
 1565 0166 1344     		add	r3, r3, r2
 1566 0168 092B     		cmp	r3, #9
 1567 016a 84BF     		itt	hi
 1568 016c C2F10902 		rsbhi	r2, r2, #9
 1569 0170 C8F80022 		strhi	r2, [r8, #512]
 1570 0174 A5E7     		b	.L338
 1571              	.L335:
 1572 0176 0233     		adds	r3, r3, #2
 1573              	.L253:
 1574 0178 08EB0701 		add	r1, r8, r7
 1575 017c 81F87262 		strb	r6, [r1, #626]
 1576 0180 0021     		movs	r1, #0
 1577 0182 08EB8702 		add	r2, r8, r7, lsl #2
 1578 0186 C2F8A010 		str	r1, [r2, #160]	@ float
 1579 018a C2F88410 		str	r1, [r2, #132]	@ float
 1580 018e C8F8F831 		str	r3, [r8, #504]
 1581 0192 C8F8FC31 		str	r3, [r8, #508]
 1582 0196 D4E7     		b	.L258
 1583              	.L293:
 1584              	.L317:
 1585 0198 0DB0     		add	sp, sp, #52
 1586              		@ sp needed
 1587 019a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1588              	.L336:
 1589 019e 5021     		movs	r1, #80
 1590 01a0 4046     		mov	r0, r8
 1591 01a2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1592 01a6 60B9     		cbnz	r0, .L291
 1593 01a8 B9F1000F 		cmp	r9, #0
 1594 01ac 3FD0     		beq	.L339
 1595              	.L322:
 1596 01ae 0120     		movs	r0, #1
ARM GAS  /tmp/ccC1SnVE.s 			page 29


 1597 01b0 0DB0     		add	sp, sp, #52
 1598              		@ sp needed
 1599 01b2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1600              	.L274:
 1601 01b6 5021     		movs	r1, #80
 1602 01b8 4046     		mov	r0, r8
 1603 01ba FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1604 01be 0028     		cmp	r0, #0
 1605 01c0 F5D0     		beq	.L322
 1606              	.L291:
 1607 01c2 4046     		mov	r0, r8
 1608 01c4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1609 01c8 0228     		cmp	r0, #2
 1610 01ca 07DD     		ble	.L276
 1611 01cc D4F8F831 		ldr	r3, [r4, #504]
 1612 01d0 8342     		cmp	r3, r0
 1613 01d2 03D3     		bcc	.L276
 1614 01d4 C4F8FC01 		str	r0, [r4, #508]
 1615 01d8 0120     		movs	r0, #1
 1616 01da DDE7     		b	.L317
 1617              	.L276:
 1618 01dc 0098     		ldr	r0, [sp]
 1619 01de 4349     		ldr	r1, .L340+12
 1620 01e0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1621 01e4 0220     		movs	r0, #2
 1622 01e6 D7E7     		b	.L317
 1623              	.L319:
 1624 01e8 4446     		mov	r4, r8
 1625 01ea D846     		mov	r8, fp
 1626 01ec 4521     		movs	r1, #69
 1627 01ee 4046     		mov	r0, r8
 1628 01f0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1629 01f4 CB46     		mov	fp, r9
 1630 01f6 0646     		mov	r6, r0
 1631 01f8 B946     		mov	r9, r7
 1632 01fa 0028     		cmp	r0, #0
 1633 01fc 97D0     		beq	.L267
 1634 01fe D4F8F811 		ldr	r1, [r4, #504]
 1635 0202 0CAA     		add	r2, sp, #48
 1636 0204 C1F10901 		rsb	r1, r1, #9
 1637 0208 0023     		movs	r3, #0
 1638 020a 42F8201D 		str	r1, [r2, #-32]!
 1639 020e 4046     		mov	r0, r8
 1640 0210 3946     		mov	r1, r7
 1641 0212 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 1642 0216 049B     		ldr	r3, [sp, #16]
 1643 0218 C4F80032 		str	r3, [r4, #512]
 1644 021c 002B     		cmp	r3, #0
 1645 021e 7FF471AF 		bne	.L290
 1646 0222 84E7     		b	.L267
 1647              	.L332:
 1648 0224 0746     		mov	r7, r0
 1649 0226 0123     		movs	r3, #1
 1650 0228 A6E7     		b	.L253
 1651              	.L333:
 1652 022a 0027     		movs	r7, #0
 1653 022c 89E7     		b	.L258
ARM GAS  /tmp/ccC1SnVE.s 			page 30


 1654              	.L339:
 1655 022e 3049     		ldr	r1, .L340+16
 1656 0230 0098     		ldr	r0, [sp]
 1657 0232 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1658 0236 D4F8F831 		ldr	r3, [r4, #504]
 1659 023a 83B3     		cbz	r3, .L282
 1660 023c 4FF4067B 		mov	fp, #536
 1661 0240 4D46     		mov	r5, r9
 1662 0242 CDF804B0 		str	fp, [sp, #4]
 1663 0246 DFF8AC90 		ldr	r9, .L340+20
 1664 024a DDF800B0 		ldr	fp, [sp]
 1665 024e 04F2722A 		addw	r10, r4, #626
 1666              	.L283:
 1667 0252 2021     		movs	r1, #32
 1668 0254 5846     		mov	r0, fp
 1669 0256 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1670 025a 2768     		ldr	r7, [r4]
 1671 025c 07EBC508 		add	r8, r7, r5, lsl #3
 1672 0260 D8F81432 		ldr	r3, [r8, #532]
 1673 0264 8BB1     		cbz	r3, .L284
 1674 0266 0026     		movs	r6, #0
 1675 0268 019B     		ldr	r3, [sp, #4]
 1676 026a 9AF80020 		ldrb	r2, [r10]	@ zero_extendqisi2
 1677 026e 1F44     		add	r7, r7, r3
 1678              	.L285:
 1679 0270 17F8013B 		ldrb	r3, [r7], #1	@ zero_extendqisi2
 1680 0274 4946     		mov	r1, r9
 1681 0276 5846     		mov	r0, fp
 1682 0278 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1683 027c D8F81432 		ldr	r3, [r8, #532]
 1684 0280 0136     		adds	r6, r6, #1
 1685 0282 B342     		cmp	r3, r6
 1686 0284 4FF03A02 		mov	r2, #58
 1687 0288 F2D8     		bhi	.L285
 1688              	.L284:
 1689 028a 019A     		ldr	r2, [sp, #4]
 1690 028c D4F8F831 		ldr	r3, [r4, #504]
 1691 0290 0135     		adds	r5, r5, #1
 1692 0292 0832     		adds	r2, r2, #8
 1693 0294 AB42     		cmp	r3, r5
 1694 0296 0AF1010A 		add	r10, r10, #1
 1695 029a 0192     		str	r2, [sp, #4]
 1696 029c D9D8     		bhi	.L283
 1697              	.L282:
 1698 029e 009F     		ldr	r7, [sp]
 1699 02a0 2021     		movs	r1, #32
 1700 02a2 3846     		mov	r0, r7
 1701 02a4 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1702 02a8 D4F80032 		ldr	r3, [r4, #512]
 1703 02ac 8BB1     		cbz	r3, .L279
 1704 02ae 0025     		movs	r5, #0
 1705 02b0 4522     		movs	r2, #69
 1706 02b2 104E     		ldr	r6, .L340+20
 1707              	.L286:
 1708 02b4 2368     		ldr	r3, [r4]
 1709 02b6 3146     		mov	r1, r6
 1710 02b8 2B44     		add	r3, r3, r5
ARM GAS  /tmp/ccC1SnVE.s 			page 31


 1711 02ba 93F84432 		ldrb	r3, [r3, #580]	@ zero_extendqisi2
 1712 02be 3846     		mov	r0, r7
 1713 02c0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1714 02c4 D4F80032 		ldr	r3, [r4, #512]
 1715 02c8 0135     		adds	r5, r5, #1
 1716 02ca AB42     		cmp	r3, r5
 1717 02cc 4FF03A02 		mov	r2, #58
 1718 02d0 F0D8     		bhi	.L286
 1719              	.L279:
 1720 02d2 D4F8FC21 		ldr	r2, [r4, #508]
 1721 02d6 0098     		ldr	r0, [sp]
 1722 02d8 0749     		ldr	r1, .L340+24
 1723 02da FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1724 02de 66E7     		b	.L322
 1725              	.L341:
 1726              		.align	2
 1727              	.L340:
 1728 02e0 00000000 		.word	.LC30
 1729 02e4 0C000000 		.word	.LC31
 1730 02e8 00000000 		.word	reprap
 1731 02ec 24000000 		.word	.LC32
 1732 02f0 44000000 		.word	.LC33
 1733 02f4 58000000 		.word	.LC34
 1734 02f8 60000000 		.word	.LC35
 1735              		.size	_ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef, .-_ZN6GCodes14DoDriveMappingER11GCode
 1736              		.section	.text._ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef,"ax",%progbits
 1737              		.align	1
 1738              		.p2align 2,,3
 1739              		.global	_ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef
 1740              		.syntax unified
 1741              		.thumb
 1742              		.thumb_func
 1743              		.fpu softvfp
 1744              		.type	_ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef, %function
 1745              	_ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef:
 1746              		@ args = 0, pretend = 0, frame = 8
 1747              		@ frame_needed = 0, uses_anonymous_args = 0
 1748 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1749 0004 7F4B     		ldr	r3, .L380
 1750 0006 83B0     		sub	sp, sp, #12
 1751 0008 DB6A     		ldr	r3, [r3, #44]
 1752 000a 9346     		mov	fp, r2
 1753 000c 002B     		cmp	r3, #0
 1754 000e 00F0E980 		beq	.L375
 1755 0012 0446     		mov	r4, r0
 1756 0014 0E46     		mov	r6, r1
 1757 0016 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 1758 001a 0028     		cmp	r0, #0
 1759 001c 00F08E80 		beq	.L344
 1760 0020 D4F8F831 		ldr	r3, [r4, #504]
 1761 0024 002B     		cmp	r3, #0
 1762 0026 00F08880 		beq	.L362
 1763 002a 0025     		movs	r5, #0
 1764 002c 0027     		movs	r7, #0
 1765 002e 04F27229 		addw	r9, r4, #626
 1766 0032 04F1A008 		add	r8, r4, #160
 1767 0036 CDF804B0 		str	fp, [sp, #4]
ARM GAS  /tmp/ccC1SnVE.s 			page 32


 1768 003a 06E0     		b	.L363
 1769              	.L346:
 1770 003c D4F8F831 		ldr	r3, [r4, #504]
 1771 0040 0135     		adds	r5, r5, #1
 1772 0042 AB42     		cmp	r3, r5
 1773 0044 08F10408 		add	r8, r8, #4
 1774 0048 77D9     		bls	.L362
 1775              	.L363:
 1776 004a 19F8011B 		ldrb	r1, [r9], #1	@ zero_extendqisi2
 1777 004e 3046     		mov	r0, r6
 1778 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1779 0054 0028     		cmp	r0, #0
 1780 0056 F1D0     		beq	.L346
 1781 0058 4521     		movs	r1, #69
 1782 005a 3046     		mov	r0, r6
 1783 005c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1784 0060 0028     		cmp	r0, #0
 1785 0062 7CD1     		bne	.L376
 1786 0064 2346     		mov	r3, r4
 1787 0066 4FF0030E 		mov	lr, #3
 1788 006a 53F8840F 		ldr	r0, [r3, #132]!	@ unaligned
 1789 006e D4F8F421 		ldr	r2, [r4, #500]
 1790 0072 5968     		ldr	r1, [r3, #4]	@ unaligned
 1791 0074 D3F808A0 		ldr	r10, [r3, #8]	@ unaligned
 1792 0078 D3F80CC0 		ldr	ip, [r3, #12]	@ unaligned
 1793 007c 1060     		str	r0, [r2]	@ unaligned
 1794 007e 5160     		str	r1, [r2, #4]	@ unaligned
 1795 0080 C2F808A0 		str	r10, [r2, #8]	@ unaligned
 1796 0084 C2F80CC0 		str	ip, [r2, #12]	@ unaligned
 1797 0088 1869     		ldr	r0, [r3, #16]	@ unaligned
 1798 008a 5969     		ldr	r1, [r3, #20]	@ unaligned
 1799 008c 1061     		str	r0, [r2, #16]	@ unaligned
 1800 008e 5161     		str	r1, [r2, #20]	@ unaligned
 1801 0090 84F8F8E0 		strb	lr, [r4, #248]
 1802              	.L349:
 1803 0094 0123     		movs	r3, #1
 1804 0096 AB40     		lsls	r3, r3, r5
 1805 0098 C4F8F430 		str	r3, [r4, #244]
 1806              	.L351:
 1807 009c 0120     		movs	r0, #1
 1808 009e 0221     		movs	r1, #2
 1809 00a0 4FF0FF32 		mov	r2, #-1
 1810 00a4 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 1811 00a8 C4F8EC00 		str	r0, [r4, #236]
 1812 00ac 03F0FD03 		and	r3, r3, #253
 1813 00b0 6FF38203 		bfc	r3, #2, #1
 1814 00b4 C4F8F010 		str	r1, [r4, #240]
 1815 00b8 84F8F930 		strb	r3, [r4, #249]
 1816 00bc C4F8E420 		str	r2, [r4, #228]
 1817 00c0 5221     		movs	r1, #82
 1818 00c2 3046     		mov	r0, r6
 1819 00c4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1820 00c8 0028     		cmp	r0, #0
 1821 00ca 3AD0     		beq	.L352
 1822 00cc 3046     		mov	r0, r6
 1823 00ce FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1824 00d2 0146     		mov	r1, r0
ARM GAS  /tmp/ccC1SnVE.s 			page 33


 1825 00d4 D8F80000 		ldr	r0, [r8]	@ float
 1826 00d8 FFF7FEFF 		bl	__aeabi_fadd
 1827 00dc C8F80000 		str	r0, [r8]	@ float
 1828              	.L353:
 1829 00e0 D4F8F831 		ldr	r3, [r4, #504]
 1830 00e4 082B     		cmp	r3, #8
 1831 00e6 08D8     		bhi	.L359
 1832 00e8 2833     		adds	r3, r3, #40
 1833 00ea 04EB8303 		add	r3, r4, r3, lsl #2
 1834 00ee 04F1C402 		add	r2, r4, #196
 1835              	.L360:
 1836 00f2 43F8047B 		str	r7, [r3], #4	@ float
 1837 00f6 9A42     		cmp	r2, r3
 1838 00f8 FBD1     		bne	.L360
 1839              	.L359:
 1840 00fa 94F8F930 		ldrb	r3, [r4, #249]	@ zero_extendqisi2
 1841 00fe 4621     		movs	r1, #70
 1842 0100 6FF3C303 		bfc	r3, #3, #1
 1843 0104 84F8F930 		strb	r3, [r4, #249]
 1844 0108 3046     		mov	r0, r6
 1845 010a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1846 010e 0028     		cmp	r0, #0
 1847 0110 50D1     		bne	.L377
 1848 0112 B368     		ldr	r3, [r6, #8]
 1849 0114 5868     		ldr	r0, [r3, #4]	@ float
 1850              	.L361:
 1851 0116 0122     		movs	r2, #1
 1852 0118 C4F8DC00 		str	r0, [r4, #220]	@ float
 1853 011c C4F80021 		str	r2, [r4, #256]
 1854              		.syntax unified
 1855              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1856 0120 BFF35F8F 		dmb
 1857              	@ 0 "" 2
 1858              		.thumb
 1859              		.syntax unified
 1860 0124 0321     		movs	r1, #3
 1861 0126 C4F8FC20 		str	r2, [r4, #252]
 1862 012a 1975     		strb	r1, [r3, #20]
 1863 012c D4F8F831 		ldr	r3, [r4, #504]
 1864 0130 0135     		adds	r5, r5, #1
 1865 0132 AB42     		cmp	r3, r5
 1866 0134 08F10408 		add	r8, r8, #4
 1867 0138 87D8     		bhi	.L363
 1868              	.L362:
 1869 013a 0120     		movs	r0, #1
 1870              	.L344:
 1871 013c 03B0     		add	sp, sp, #12
 1872              		@ sp needed
 1873 013e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1874              	.L352:
 1875 0142 5321     		movs	r1, #83
 1876 0144 3046     		mov	r0, r6
 1877 0146 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1878 014a 0028     		cmp	r0, #0
 1879 014c 3FD1     		bne	.L378
 1880              	.L354:
 1881 014e 2368     		ldr	r3, [r4]
ARM GAS  /tmp/ccC1SnVE.s 			page 34


 1882 0150 03EB8503 		add	r3, r3, r5, lsl #2
 1883 0154 D3F84434 		ldr	r3, [r3, #1092]	@ float
 1884              	.L355:
 1885 0158 C8F80030 		str	r3, [r8]	@ float
 1886 015c C0E7     		b	.L353
 1887              	.L376:
 1888 015e 3046     		mov	r0, r6
 1889 0160 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1890 0164 0928     		cmp	r0, #9
 1891 0166 45DC     		bgt	.L379
 1892 0168 2346     		mov	r3, r4
 1893 016a 4FF0030C 		mov	ip, #3
 1894 016e 53F884EF 		ldr	lr, [r3, #132]!	@ unaligned
 1895 0172 D4F8F421 		ldr	r2, [r4, #500]
 1896 0176 5968     		ldr	r1, [r3, #4]	@ unaligned
 1897 0178 D3F808B0 		ldr	fp, [r3, #8]	@ unaligned
 1898 017c D3F80CA0 		ldr	r10, [r3, #12]	@ unaligned
 1899 0180 C2F800E0 		str	lr, [r2]	@ unaligned
 1900 0184 5160     		str	r1, [r2, #4]	@ unaligned
 1901 0186 C2F808B0 		str	fp, [r2, #8]	@ unaligned
 1902 018a C2F80CA0 		str	r10, [r2, #12]	@ unaligned
 1903 018e D3F810E0 		ldr	lr, [r3, #16]	@ unaligned
 1904 0192 5969     		ldr	r1, [r3, #20]	@ unaligned
 1905 0194 0028     		cmp	r0, #0
 1906 0196 C2F810E0 		str	lr, [r2, #16]	@ unaligned
 1907 019a 5161     		str	r1, [r2, #20]	@ unaligned
 1908 019c 84F8F8C0 		strb	ip, [r4, #248]
 1909 01a0 FFF678AF 		blt	.L349
 1910 01a4 0123     		movs	r3, #1
 1911 01a6 03FA00F0 		lsl	r0, r3, r0
 1912 01aa 40F08050 		orr	r0, r0, #268435456
 1913 01ae C4F8F400 		str	r0, [r4, #244]
 1914 01b2 73E7     		b	.L351
 1915              	.L377:
 1916 01b4 3046     		mov	r0, r6
 1917 01b6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1918 01ba D4F83C12 		ldr	r1, [r4, #572]	@ float
 1919 01be FFF7FEFF 		bl	__aeabi_fmul
 1920 01c2 1149     		ldr	r1, .L380+4
 1921 01c4 FFF7FEFF 		bl	__aeabi_fmul
 1922 01c8 B368     		ldr	r3, [r6, #8]
 1923 01ca 5860     		str	r0, [r3, #4]	@ float
 1924 01cc A3E7     		b	.L361
 1925              	.L378:
 1926 01ce 3046     		mov	r0, r6
 1927 01d0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1928 01d4 0028     		cmp	r0, #0
 1929 01d6 BADD     		ble	.L354
 1930 01d8 2368     		ldr	r3, [r4]
 1931 01da 03EB8503 		add	r3, r3, r5, lsl #2
 1932 01de D3F85C34 		ldr	r3, [r3, #1116]	@ float
 1933 01e2 B9E7     		b	.L355
 1934              	.L375:
 1935 01e4 1046     		mov	r0, r2
 1936 01e6 0949     		ldr	r1, .L380+8
 1937 01e8 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1938 01ec 0220     		movs	r0, #2
ARM GAS  /tmp/ccC1SnVE.s 			page 35


 1939 01ee 03B0     		add	sp, sp, #12
 1940              		@ sp needed
 1941 01f0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1942              	.L379:
 1943 01f4 DDF804B0 		ldr	fp, [sp, #4]
 1944 01f8 0549     		ldr	r1, .L380+12
 1945 01fa 5846     		mov	r0, fp
 1946 01fc FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1947 0200 0220     		movs	r0, #2
 1948 0202 9BE7     		b	.L344
 1949              	.L381:
 1950              		.align	2
 1951              	.L380:
 1952 0204 00000000 		.word	reprap
 1953 0208 8988883C 		.word	1015580809
 1954 020c 00000000 		.word	.LC36
 1955 0210 14000000 		.word	.LC37
 1956              		.size	_ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef, .-_ZN6GCodes9ProbeToolER11GCodeBufferRK9Str
 1957              		.section	.text._ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef,"ax",%progbits
 1958              		.align	1
 1959              		.p2align 2,,3
 1960              		.global	_ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef
 1961              		.syntax unified
 1962              		.thumb
 1963              		.thumb_func
 1964              		.fpu softvfp
 1965              		.type	_ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef, %function
 1966              	_ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef:
 1967              		@ args = 0, pretend = 0, frame = 64
 1968              		@ frame_needed = 0, uses_anonymous_args = 0
 1969 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1970 0004 0646     		mov	r6, r0
 1971 0006 94B0     		sub	sp, sp, #80
 1972 0008 0068     		ldr	r0, [r0]
 1973 000a 0C46     		mov	r4, r1
 1974 000c 1746     		mov	r7, r2
 1975 000e FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
 1976 0012 0BA9     		add	r1, sp, #44
 1977 0014 0490     		str	r0, [sp, #16]
 1978 0016 04A8     		add	r0, sp, #16
 1979 0018 FFF7FEFF 		bl	gmtime_r
 1980 001c 2046     		mov	r0, r4
 1981 001e 5021     		movs	r1, #80
 1982 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1983 0024 0028     		cmp	r0, #0
 1984 0026 35D0     		beq	.L383
 1985 0028 0022     		movs	r2, #0
 1986 002a 0D23     		movs	r3, #13
 1987 002c 14AD     		add	r5, sp, #80
 1988 002e 0DF11408 		add	r8, sp, #20
 1989 0032 05F8342D 		strb	r2, [r5, #-52]!
 1990 0036 4146     		mov	r1, r8
 1991 0038 2046     		mov	r0, r4
 1992 003a 0595     		str	r5, [sp, #20]
 1993 003c 0693     		str	r3, [sp, #24]
 1994 003e FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 1995 0042 0BAA     		add	r2, sp, #44
ARM GAS  /tmp/ccC1SnVE.s 			page 36


 1996 0044 2846     		mov	r0, r5
 1997 0046 2D49     		ldr	r1, .L405
 1998 0048 FFF7FEFF 		bl	strptime
 1999 004c 0028     		cmp	r0, #0
 2000 004e 45D0     		beq	.L401
 2001 0050 5321     		movs	r1, #83
 2002 0052 2046     		mov	r0, r4
 2003 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2004 0058 80B1     		cbz	r0, .L386
 2005              	.L390:
 2006 005a 0022     		movs	r2, #0
 2007 005c 0D23     		movs	r3, #13
 2008 005e 4146     		mov	r1, r8
 2009 0060 2046     		mov	r0, r4
 2010 0062 8DF81C20 		strb	r2, [sp, #28]
 2011 0066 0595     		str	r5, [sp, #20]
 2012 0068 0693     		str	r3, [sp, #24]
 2013 006a FFF7FEFF 		bl	_ZN11GCodeBuffer23GetPossiblyQuotedStringERK9StringRef
 2014 006e 0BAA     		add	r2, sp, #44
 2015 0070 2846     		mov	r0, r5
 2016 0072 2349     		ldr	r1, .L405+4
 2017 0074 FFF7FEFF 		bl	strptime
 2018 0078 0028     		cmp	r0, #0
 2019 007a 35D0     		beq	.L402
 2020              	.L386:
 2021 007c 0BA8     		add	r0, sp, #44
 2022 007e 3468     		ldr	r4, [r6]
 2023 0080 FFF7FEFF 		bl	mktime
 2024 0084 0146     		mov	r1, r0
 2025 0086 2046     		mov	r0, r4
 2026 0088 FFF7FEFF 		bl	_ZN8Platform11SetDateTimeEl
 2027 008c 0120     		movs	r0, #1
 2028              	.L396:
 2029 008e 14B0     		add	sp, sp, #80
 2030              		@ sp needed
 2031 0090 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2032              	.L383:
 2033 0094 5321     		movs	r1, #83
 2034 0096 2046     		mov	r0, r4
 2035 0098 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2036 009c 50BB     		cbnz	r0, .L403
 2037 009e 3068     		ldr	r0, [r6]
 2038 00a0 FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 2039 00a4 38B9     		cbnz	r0, .L404
 2040 00a6 3846     		mov	r0, r7
 2041 00a8 1649     		ldr	r1, .L405+8
 2042 00aa FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2043 00ae 0120     		movs	r0, #1
 2044 00b0 14B0     		add	sp, sp, #80
 2045              		@ sp needed
 2046 00b2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2047              	.L404:
 2048 00b6 0E99     		ldr	r1, [sp, #56]
 2049 00b8 0F9B     		ldr	r3, [sp, #60]
 2050 00ba 109A     		ldr	r2, [sp, #64]
 2051 00bc 0B9E     		ldr	r6, [sp, #44]
 2052 00be 0C9D     		ldr	r5, [sp, #48]
ARM GAS  /tmp/ccC1SnVE.s 			page 37


 2053 00c0 0D9C     		ldr	r4, [sp, #52]
 2054 00c2 3846     		mov	r0, r7
 2055 00c4 8DE87200 		stm	sp, {r1, r4, r5, r6}
 2056 00c8 0133     		adds	r3, r3, #1
 2057 00ca 02F26C72 		addw	r2, r2, #1900
 2058 00ce 0E49     		ldr	r1, .L405+12
 2059 00d0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2060 00d4 0120     		movs	r0, #1
 2061 00d6 14B0     		add	sp, sp, #80
 2062              		@ sp needed
 2063 00d8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2064              	.L401:
 2065 00dc 3846     		mov	r0, r7
 2066 00de 0B49     		ldr	r1, .L405+16
 2067 00e0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2068 00e4 0220     		movs	r0, #2
 2069 00e6 D2E7     		b	.L396
 2070              	.L402:
 2071 00e8 3846     		mov	r0, r7
 2072 00ea 0949     		ldr	r1, .L405+20
 2073 00ec FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2074 00f0 0220     		movs	r0, #2
 2075 00f2 CCE7     		b	.L396
 2076              	.L403:
 2077 00f4 07AD     		add	r5, sp, #28
 2078 00f6 0DF11408 		add	r8, sp, #20
 2079 00fa AEE7     		b	.L390
 2080              	.L406:
 2081              		.align	2
 2082              	.L405:
 2083 00fc 00000000 		.word	.LC38
 2084 0100 20000000 		.word	.LC40
 2085 0104 78000000 		.word	.LC43
 2086 0108 40000000 		.word	.LC42
 2087 010c 0C000000 		.word	.LC39
 2088 0110 2C000000 		.word	.LC41
 2089              		.size	_ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef, .-_ZN6GCodes11SetDateTimeER11GCodeBuffer
 2090              		.section	.text._ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef,"ax",%progbits
 2091              		.align	1
 2092              		.p2align 2,,3
 2093              		.global	_ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef
 2094              		.syntax unified
 2095              		.thumb
 2096              		.thumb_func
 2097              		.fpu softvfp
 2098              		.type	_ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef, %function
 2099              	_ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef:
 2100              		@ args = 0, pretend = 0, frame = 16
 2101              		@ frame_needed = 0, uses_anonymous_args = 0
 2102 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2103 0004 84B0     		sub	sp, sp, #16
 2104 0006 1546     		mov	r5, r2
 2105 0008 0446     		mov	r4, r0
 2106 000a 0E46     		mov	r6, r1
 2107 000c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2108 0010 18B9     		cbnz	r0, .L408
 2109              	.L411:
ARM GAS  /tmp/ccC1SnVE.s 			page 38


 2110 0012 0020     		movs	r0, #0
 2111              	.L429:
 2112 0014 04B0     		add	sp, sp, #16
 2113              		@ sp needed
 2114 0016 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2115              	.L408:
 2116 001a 2F4B     		ldr	r3, .L438
 2117 001c 0121     		movs	r1, #1
 2118 001e D868     		ldr	r0, [r3, #12]
 2119 0020 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 2120 0024 2046     		mov	r0, r4
 2121 0026 FFF7FEFF 		bl	_ZN6GCodes13DisableDrivesEv
 2122 002a 94F8CC73 		ldrb	r7, [r4, #972]	@ zero_extendqisi2
 2123 002e 87BB     		cbnz	r7, .L421
 2124 0030 5321     		movs	r1, #83
 2125 0032 3046     		mov	r0, r6
 2126 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2127 0038 60B9     		cbnz	r0, .L435
 2128 003a 0123     		movs	r3, #1
 2129 003c 84F8CC33 		strb	r3, [r4, #972]
 2130              	.L420:
 2131 0040 2946     		mov	r1, r5
 2132 0042 2068     		ldr	r0, [r4]
 2133 0044 FFF7FEFF 		bl	_ZN8Platform32CheckFirmwareUpdatePrerequisitesERK9StringRef
 2134 0048 0346     		mov	r3, r0
 2135 004a 10BB     		cbnz	r0, .L421
 2136 004c 0220     		movs	r0, #2
 2137 004e 84F8CC33 		strb	r3, [r4, #972]
 2138 0052 DFE7     		b	.L429
 2139              	.L435:
 2140 0054 0323     		movs	r3, #3
 2141 0056 04AA     		add	r2, sp, #16
 2142 0058 0DF10408 		add	r8, sp, #4
 2143 005c 42F8103D 		str	r3, [r2, #-16]!
 2144 0060 3046     		mov	r0, r6
 2145 0062 3B46     		mov	r3, r7
 2146 0064 4146     		mov	r1, r8
 2147 0066 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 2148 006a 0098     		ldr	r0, [sp]
 2149 006c 70B3     		cbz	r0, .L436
 2150 006e 019A     		ldr	r2, [sp, #4]
 2151 0070 1ABB     		cbnz	r2, .L416
 2152 0072 1346     		mov	r3, r2
 2153 0074 94F8CC13 		ldrb	r1, [r4, #972]	@ zero_extendqisi2
 2154 0078 02E0     		b	.L418
 2155              	.L419:
 2156 007a 58F82320 		ldr	r2, [r8, r3, lsl #2]
 2157 007e D2B9     		cbnz	r2, .L437
 2158              	.L418:
 2159 0080 0133     		adds	r3, r3, #1
 2160 0082 8342     		cmp	r3, r0
 2161 0084 41F00101 		orr	r1, r1, #1
 2162 0088 F7D1     		bne	.L419
 2163 008a 84F8CC13 		strb	r1, [r4, #972]
 2164              	.L415:
 2165 008e CB07     		lsls	r3, r1, #31
 2166 0090 D6D4     		bmi	.L420
ARM GAS  /tmp/ccC1SnVE.s 			page 39


 2167              	.L421:
 2168 0092 0125     		movs	r5, #1
 2169 0094 2046     		mov	r0, r4
 2170 0096 84F8CD53 		strb	r5, [r4, #973]
 2171 009a 4FF47A72 		mov	r2, #1000
 2172 009e 3146     		mov	r1, r6
 2173 00a0 FFF7FEFF 		bl	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 2174 00a4 0028     		cmp	r0, #0
 2175 00a6 B4D0     		beq	.L411
 2176 00a8 1422     		movs	r2, #20
 2177 00aa 2846     		mov	r0, r5
 2178 00ac B368     		ldr	r3, [r6, #8]
 2179 00ae 1A75     		strb	r2, [r3, #20]
 2180 00b0 04B0     		add	sp, sp, #16
 2181              		@ sp needed
 2182 00b2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2183              	.L437:
 2184 00b6 84F8CC13 		strb	r1, [r4, #972]
 2185              	.L416:
 2186 00ba 2846     		mov	r0, r5
 2187 00bc 0749     		ldr	r1, .L438+4
 2188 00be FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2189 00c2 0023     		movs	r3, #0
 2190 00c4 0220     		movs	r0, #2
 2191 00c6 84F8CC33 		strb	r3, [r4, #972]
 2192 00ca A3E7     		b	.L429
 2193              	.L436:
 2194 00cc 94F8CC13 		ldrb	r1, [r4, #972]	@ zero_extendqisi2
 2195 00d0 0120     		movs	r0, #1
 2196 00d2 0029     		cmp	r1, #0
 2197 00d4 9ED0     		beq	.L429
 2198 00d6 DAE7     		b	.L415
 2199              	.L439:
 2200              		.align	2
 2201              	.L438:
 2202 00d8 00000000 		.word	reprap
 2203 00dc 00000000 		.word	.LC44
 2204              		.size	_ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef, .-_ZN6GCodes14UpdateFirmwareER11GCode
 2205              		.section	.text._ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef,"ax",%progbits
 2206              		.align	1
 2207              		.p2align 2,,3
 2208              		.global	_ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef
 2209              		.syntax unified
 2210              		.thumb
 2211              		.thumb_func
 2212              		.fpu softvfp
 2213              		.type	_ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef, %function
 2214              	_ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef:
 2215              		@ args = 0, pretend = 0, frame = 0
 2216              		@ frame_needed = 0, uses_anonymous_args = 0
 2217 0000 08B5     		push	{r3, lr}
 2218 0002 1046     		mov	r0, r2
 2219 0004 0249     		ldr	r1, .L442
 2220 0006 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2221 000a 0220     		movs	r0, #2
 2222 000c 08BD     		pop	{r3, pc}
 2223              	.L443:
ARM GAS  /tmp/ccC1SnVE.s 			page 40


 2224 000e 00BF     		.align	2
 2225              	.L442:
 2226 0010 00000000 		.word	.LC45
 2227              		.size	_ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef, .-_ZN6GCodes7SendI2cER11GCodeBufferRK9StringR
 2228              		.section	.text._ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef,"ax",%progbits
 2229              		.align	1
 2230              		.p2align 2,,3
 2231              		.global	_ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef
 2232              		.syntax unified
 2233              		.thumb
 2234              		.thumb_func
 2235              		.fpu softvfp
 2236              		.type	_ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef, %function
 2237              	_ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef:
 2238              		@ args = 0, pretend = 0, frame = 0
 2239              		@ frame_needed = 0, uses_anonymous_args = 0
 2240 0000 08B5     		push	{r3, lr}
 2241 0002 1046     		mov	r0, r2
 2242 0004 0249     		ldr	r1, .L446
 2243 0006 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2244 000a 0220     		movs	r0, #2
 2245 000c 08BD     		pop	{r3, pc}
 2246              	.L447:
 2247 000e 00BF     		.align	2
 2248              	.L446:
 2249 0010 00000000 		.word	.LC45
 2250              		.size	_ZN6GCodes10ReceiveI2cER11GCodeBufferRK9StringRef, .-_ZN6GCodes10ReceiveI2cER11GCodeBufferRK
 2251              		.section	.rodata
 2252              		.align	2
 2253              		.set	.LANCHOR0,. + 0
 2254              	.LC0:
 2255 0000 0000A041 		.word	1101004800
 2256 0004 0000A041 		.word	1101004800
 2257              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2258              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2259              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2260              	_ZL28cpu_irq_prev_interrupt_state:
 2261 0000 00       		.space	1
 2262              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2263              		.align	2
 2264              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2265              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2266              	_ZL32cpu_irq_critical_section_counter:
 2267 0000 00000000 		.space	4
 2268              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 2269              		.align	2
 2270              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 2271              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 2272              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 2273 0000 00000000 		.space	4
 2274              		.section	.rodata._ZN6GCodes10DefineGridER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 2275              		.align	2
 2276              	.LC9:
 2277 0000 4572726F 		.ascii	"Error: M557 P parameter is no longer supported. Use"
 2277      723A204D 
 2277      35353720 
 2277      50207061 
ARM GAS  /tmp/ccC1SnVE.s 			page 41


 2277      72616D65 
 2278 0033 20612062 		.ascii	" a bed.g file instead.\012\000"
 2278      65642E67 
 2278      2066696C 
 2278      6520696E 
 2278      73746561 
 2279 004b 00       		.space	1
 2280              	.LC10:
 2281 004c 47726964 		.ascii	"Grid: \000"
 2281      3A2000
 2282 0053 00       		.space	1
 2283              	.LC11:
 2284 0054 47726964 		.ascii	"Grid is not defined\000"
 2284      20697320 
 2284      6E6F7420 
 2284      64656669 
 2284      6E656400 
 2285              	.LC12:
 2286 0068 73706563 		.ascii	"specify both or neither of X and Y in M577\000"
 2286      69667920 
 2286      626F7468 
 2286      206F7220 
 2286      6E656974 
 2287 0093 00       		.space	1
 2288              	.LC13:
 2289 0094 73706563 		.ascii	"specify at least radius or X,Y ranges in M577\000"
 2289      69667920 
 2289      6174206C 
 2289      65617374 
 2289      20726164 
 2290 00c2 0000     		.space	2
 2291              	.LC14:
 2292 00c4 4D353737 		.ascii	"M577 radius must be positive unless X and Y are spe"
 2292      20726164 
 2292      69757320 
 2292      6D757374 
 2292      20626520 
 2293 00f7 63696669 		.ascii	"cified\000"
 2293      656400
 2294 00fe 0000     		.space	2
 2295              	.LC15:
 2296 0100 62616420 		.ascii	"bad grid definition: \000"
 2296      67726964 
 2296      20646566 
 2296      696E6974 
 2296      696F6E3A 
 2297              		.section	.rodata._ZN6GCodes10OffsetAxesER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 2298              		.align	2
 2299              	.LC7:
 2300 0000 41786973 		.ascii	"Axis offsets:\000"
 2300      206F6666 
 2300      73657473 
 2300      3A00
 2301 000e 0000     		.space	2
 2302              	.LC8:
 2303 0010 20256325 		.ascii	" %c%.2f\000"
 2303      2E326600 
ARM GAS  /tmp/ccC1SnVE.s 			page 42


 2304              		.section	.rodata._ZN6GCodes11SetDateTimeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 2305              		.align	2
 2306              	.LC38:
 2307 0000 25592D25 		.ascii	"%Y-%m-%d\000"
 2307      6D2D2564 
 2307      00
 2308 0009 000000   		.space	3
 2309              	.LC39:
 2310 000c 496E7661 		.ascii	"Invalid date format\000"
 2310      6C696420 
 2310      64617465 
 2310      20666F72 
 2310      6D617400 
 2311              	.LC40:
 2312 0020 25483A25 		.ascii	"%H:%M:%S\000"
 2312      4D3A2553 
 2312      00
 2313 0029 000000   		.space	3
 2314              	.LC41:
 2315 002c 496E7661 		.ascii	"Invalid time format\000"
 2315      6C696420 
 2315      74696D65 
 2315      20666F72 
 2315      6D617400 
 2316              	.LC42:
 2317 0040 43757272 		.ascii	"Current date and time: %04u-%02u-%02u %02u:%02u:%02"
 2317      656E7420 
 2317      64617465 
 2317      20616E64 
 2317      2074696D 
 2318 0073 7500     		.ascii	"u\000"
 2319 0075 000000   		.space	3
 2320              	.LC43:
 2321 0078 436C6F63 		.ascii	"Clock has not been set\000"
 2321      6B206861 
 2321      73206E6F 
 2321      74206265 
 2321      656E2073 
 2322              		.section	.rodata._ZN6GCodes12SavePositionER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 2323              		.align	2
 2324              	.LC6:
 2325 0000 42616420 		.ascii	"Bad restore point number\000"
 2325      72657374 
 2325      6F726520 
 2325      706F696E 
 2325      74206E75 
 2326              		.section	.rodata._ZN6GCodes12SimulateFileER11GCodeBufferRK9StringRefS4_b.str1.4,"aMS",%progbits,1
 2327              		.align	2
 2328              	.LC16:
 2329 0000 63616E6E 		.ascii	"cannot simulate while a file is being printed\000"
 2329      6F742073 
 2329      696D756C 
 2329      61746520 
 2329      7768696C 
 2330 002e 0000     		.space	2
 2331              	.LC17:
 2332 0030 53696D75 		.ascii	"Simulating print of file %s\000"
ARM GAS  /tmp/ccC1SnVE.s 			page 43


 2332      6C617469 
 2332      6E672070 
 2332      72696E74 
 2332      206F6620 
 2333              		.section	.rodata._ZN6GCodes14DoDriveMappingER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 2334              		.align	2
 2335              	.LC30:
 2336 0000 58595A55 		.ascii	"XYZUVWABCD\000"
 2336      56574142 
 2336      434400
 2337 000b 00       		.space	1
 2338              	.LC31:
 2339 000c 496E7661 		.ascii	"Invalid driver number\000"
 2339      6C696420 
 2339      64726976 
 2339      6572206E 
 2339      756D6265 
 2340 0022 0000     		.space	2
 2341              	.LC32:
 2342 0024 496E7661 		.ascii	"Invalid number of visible axes\000"
 2342      6C696420 
 2342      6E756D62 
 2342      6572206F 
 2342      66207669 
 2343 0043 00       		.space	1
 2344              	.LC33:
 2345 0044 44726976 		.ascii	"Driver assignments:\000"
 2345      65722061 
 2345      73736967 
 2345      6E6D656E 
 2345      74733A00 
 2346              	.LC34:
 2347 0058 25632575 		.ascii	"%c%u\000"
 2347      00
 2348 005d 000000   		.space	3
 2349              	.LC35:
 2350 0060 2C202575 		.ascii	", %u axes visible\000"
 2350      20617865 
 2350      73207669 
 2350      7369626C 
 2350      6500
 2351              		.section	.rodata._ZN6GCodes14SetPrintZProbeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 2352              		.align	2
 2353              	.LC1:
 2354 0000 496E7661 		.ascii	"Invalid Z probe type\000"
 2354      6C696420 
 2354      5A207072 
 2354      6F626520 
 2354      74797065 
 2355 0015 000000   		.space	3
 2356              	.LC2:
 2357 0018 54687265 		.ascii	"Threshold %li, trigger height %.2f, offsets X%.1f Y"
 2357      73686F6C 
 2357      6420256C 
 2357      692C2074 
 2357      72696767 
 2358 004b 252E3166 		.ascii	"%.1f\000"
ARM GAS  /tmp/ccC1SnVE.s 			page 44


 2358      00
 2359              	.LC3:
 2360 0050 25642028 		.ascii	"%d (%d)\000"
 2360      25642900 
 2361              	.LC4:
 2362 0058 25642028 		.ascii	"%d (%d, %d)\000"
 2362      25642C20 
 2362      25642900 
 2363              	.LC5:
 2364 0064 256400   		.ascii	"%d\000"
 2365              		.section	.rodata._ZN6GCodes14UpdateFirmwareER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 2366              		.align	2
 2367              	.LC44:
 2368 0000 496E7661 		.ascii	"Invalid module number '%lu'\012\000"
 2368      6C696420 
 2368      6D6F6475 
 2368      6C65206E 
 2368      756D6265 
 2369              		.section	.rodata._ZN6GCodes17SetOrReportZProbeER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 2370              		.align	2
 2371              	.LC18:
 2372 0000 79657300 		.ascii	"yes\000"
 2373              	.LC19:
 2374 0004 6E6F00   		.ascii	"no\000"
 2375 0007 00       		.space	1
 2376              	.LC20:
 2377 0008 73757370 		.ascii	"suspended\000"
 2377      656E6465 
 2377      6400
 2378 0012 0000     		.space	2
 2379              	.LC21:
 2380 0014 6E6F726D 		.ascii	"normal\000"
 2380      616C00
 2381 001b 00       		.space	1
 2382              	.LC22:
 2383 001c 5A205072 		.ascii	"Z Probe type %u, invert %s, dive height %.1fmm, pro"
 2383      6F626520 
 2383      74797065 
 2383      2025752C 
 2383      20696E76 
 2384 004f 62652073 		.ascii	"be speed %dmm/min, travel speed %dmm/min, recovery "
 2384      70656564 
 2384      2025646D 
 2384      6D2F6D69 
 2384      6E2C2074 
 2385 0082 74696D65 		.ascii	"time %.2f sec, heaters %s, max taps %u, max diff %."
 2385      20252E32 
 2385      66207365 
 2385      632C2068 
 2385      65617465 
 2386 00b5 326600   		.ascii	"2f\000"
 2387              		.section	.rodata._ZN6GCodes23CheckOrConfigureTriggerER11GCodeBufferRK9StringRefi.str1.4,"aMS",%pro
 2388              		.align	2
 2389              	.LC23:
 2390 0000 42616420 		.ascii	"Bad S parameter in M581 command\012\000"
 2390      53207061 
 2390      72616D65 
ARM GAS  /tmp/ccC1SnVE.s 			page 45


 2390      74657220 
 2390      696E204D 
 2391 0021 000000   		.space	3
 2392              	.LC24:
 2393 0024 54726967 		.ascii	"Trigger %u fires on a rising edge on \000"
 2393      67657220 
 2393      25752066 
 2393      69726573 
 2393      206F6E20 
 2394 004a 0000     		.space	2
 2395              	.LC25:
 2396 004c 206F7220 		.ascii	" or a falling edge on \000"
 2396      61206661 
 2396      6C6C696E 
 2396      67206564 
 2396      6765206F 
 2397 0063 00       		.space	1
 2398              	.LC26:
 2399 0064 20656E64 		.ascii	" endstop inputs\000"
 2399      73746F70 
 2399      20696E70 
 2399      75747300 
 2400              	.LC27:
 2401 0074 20776865 		.ascii	" when printing from SD card\000"
 2401      6E207072 
 2401      696E7469 
 2401      6E672066 
 2401      726F6D20 
 2402              	.LC28:
 2403 0090 54726967 		.ascii	"Trigger number out of range\000"
 2403      67657220 
 2403      6E756D62 
 2403      6572206F 
 2403      7574206F 
 2404              	.LC29:
 2405 00ac 4D697373 		.ascii	"Missing T parameter\000"
 2405      696E6720 
 2405      54207061 
 2405      72616D65 
 2405      74657200 
 2406              		.section	.rodata._ZN6GCodes7SendI2cER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 2407              		.align	2
 2408              	.LC45:
 2409 0000 49324320 		.ascii	"I2C not available\000"
 2409      6E6F7420 
 2409      61766169 
 2409      6C61626C 
 2409      6500
 2410              		.section	.rodata._ZN6GCodes9ProbeToolER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 2411              		.align	2
 2412              	.LC36:
 2413 0000 4E6F2074 		.ascii	"No tool selected!\000"
 2413      6F6F6C20 
 2413      73656C65 
 2413      63746564 
 2413      2100
 2414 0012 0000     		.space	2
ARM GAS  /tmp/ccC1SnVE.s 			page 46


 2415              	.LC37:
 2416 0014 496E7661 		.ascii	"Invalid endstop number\000"
 2416      6C696420 
 2416      656E6473 
 2416      746F7020 
 2416      6E756D62 
 2417              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
