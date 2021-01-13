ARM GAS  /tmp/ccJRi9N9.s 			page 1


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
  13              		.file	"GCodes.cpp"
  14              		.section	.text._ZNK10Kinematics26WriteCalibrationParametersEP9FileStore,"axG",%progbits,_ZNK10Kine
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, %function
  23              	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0120     		movs	r0, #1
  28 0002 7047     		bx	lr
  29              		.size	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK10Kinematics26WriteCalibrati
  30              		.section	.text._ZNK10Kinematics15MustBeHomedAxesEmb,"axG",%progbits,_ZNK10Kinematics15MustBeHomedA
  31              		.align	1
  32              		.p2align 2,,3
  33              		.weak	_ZNK10Kinematics15MustBeHomedAxesEmb
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_ZNK10Kinematics15MustBeHomedAxesEmb, %function
  39              	_ZNK10Kinematics15MustBeHomedAxesEmb:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 002A     		cmp	r2, #0
  44 0002 14BF     		ite	ne
  45 0004 0846     		movne	r0, r1
  46 0006 0020     		moveq	r0, #0
  47 0008 7047     		bx	lr
  48              		.size	_ZNK10Kinematics15MustBeHomedAxesEmb, .-_ZNK10Kinematics15MustBeHomedAxesEmb
  49 000a 00BF     		.section	.text._ZN6GCodes4PushER11GCodeBuffer.part.57,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.syntax unified
  53              		.thumb
  54              		.thumb_func
  55              		.fpu fpv4-sp-d16
  56              		.type	_ZN6GCodes4PushER11GCodeBuffer.part.57, %function
  57              	_ZN6GCodes4PushER11GCodeBuffer.part.57:
ARM GAS  /tmp/ccJRi9N9.s 			page 2


  58              		@ args = 0, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60              		@ link register save eliminated.
  61 0000 0068     		ldr	r0, [r0]
  62 0002 024A     		ldr	r2, .L7
  63 0004 40F2B511 		movw	r1, #437
  64 0008 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
  65              	.L8:
  66              		.align	2
  67              	.L7:
  68 000c 00000000 		.word	.LC0
  69              		.size	_ZN6GCodes4PushER11GCodeBuffer.part.57, .-_ZN6GCodes4PushER11GCodeBuffer.part.57
  70              		.global	__aeabi_f2d
  71              		.section	.text._ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.64,"ax",%progbits
  72              		.align	1
  73              		.p2align 2,,3
  74              		.syntax unified
  75              		.thumb
  76              		.thumb_func
  77              		.fpu fpv4-sp-d16
  78              		.type	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.64, %function
  79              	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.64:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  83 0004 2DED028B 		vpush.64	{d8}
  84 0008 85B0     		sub	sp, sp, #20
  85 000a 8B46     		mov	fp, r1
  86 000c 1446     		mov	r4, r2
  87 000e 8146     		mov	r9, r0
  88 0010 FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
  89 0014 0028     		cmp	r0, #0
  90 0016 44D1     		bne	.L23
  91              	.L10:
  92 0018 002C     		cmp	r4, #0
  93 001a 3DD0     		beq	.L11
  94 001c DBF89C20 		ldr	r2, [fp, #156]
  95 0020 2249     		ldr	r1, .L24
  96 0022 4846     		mov	r0, r9
  97 0024 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
  98              	.L12:
  99 0028 214A     		ldr	r2, .L24+4
 100 002a DBF89830 		ldr	r3, [fp, #152]
 101 002e D668     		ldr	r6, [r2, #12]	@ unaligned
 102 0030 6BB3     		cbz	r3, .L9
 103 0032 6FF0B808 		mvn	r8, #184
 104 0036 DFF880A0 		ldr	r10, .L24+12
 105 003a A8EB0B08 		sub	r8, r8, fp
 106 003e 0BF1B904 		add	r4, fp, #185
 107 0042 3A27     		movs	r7, #58
 108              	.L14:
 109 0044 14F9015B 		ldrsb	r5, [r4], #1
 110 0048 3046     		mov	r0, r6
 111 004a 2946     		mov	r1, r5
 112 004c FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 113 0050 2946     		mov	r1, r5
 114 0052 3046     		mov	r0, r6
ARM GAS  /tmp/ccJRi9N9.s 			page 3


 115 0054 B0EE408A 		vmov.f32	s16, s0
 116 0058 FFF7FEFF 		bl	_ZNK4Heat20GetTargetTemperatureEa
 117 005c 10EE100A 		vmov	r0, s0
 118 0060 FFF7FEFF 		bl	__aeabi_f2d
 119 0064 CDE90201 		strd	r0, [sp, #8]
 120 0068 18EE100A 		vmov	r0, s16
 121 006c FFF7FEFF 		bl	__aeabi_f2d
 122 0070 3A46     		mov	r2, r7
 123 0072 CDE90001 		strd	r0, [sp]
 124 0076 5146     		mov	r1, r10
 125 0078 4846     		mov	r0, r9
 126 007a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 127 007e DBF89820 		ldr	r2, [fp, #152]
 128 0082 08EB0403 		add	r3, r8, r4
 129 0086 9A42     		cmp	r2, r3
 130 0088 4FF02007 		mov	r7, #32
 131 008c DAD8     		bhi	.L14
 132              	.L9:
 133 008e 05B0     		add	sp, sp, #20
 134              		@ sp needed
 135 0090 BDEC028B 		vldm	sp!, {d8}
 136 0094 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 137              	.L11:
 138 0098 0649     		ldr	r1, .L24+8
 139 009a 4846     		mov	r0, r9
 140 009c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 141 00a0 C2E7     		b	.L12
 142              	.L23:
 143 00a2 2021     		movs	r1, #32
 144 00a4 4846     		mov	r0, r9
 145 00a6 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 146 00aa B5E7     		b	.L10
 147              	.L25:
 148              		.align	2
 149              	.L24:
 150 00ac 00000000 		.word	.LC1
 151 00b0 00000000 		.word	reprap
 152 00b4 04000000 		.word	.LC2
 153 00b8 08000000 		.word	.LC3
 154              		.size	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.64, .-_ZNK6GCodes22ReportToolT
 155              		.section	.text._ZN6GCodes7RawMove11SetDefaultsEv,"ax",%progbits
 156              		.align	1
 157              		.p2align 2,,3
 158              		.global	_ZN6GCodes7RawMove11SetDefaultsEv
 159              		.syntax unified
 160              		.thumb
 161              		.thumb_func
 162              		.fpu fpv4-sp-d16
 163              		.type	_ZN6GCodes7RawMove11SetDefaultsEv, %function
 164              	_ZN6GCodes7RawMove11SetDefaultsEv:
 165              		@ args = 0, pretend = 0, frame = 0
 166              		@ frame_needed = 0, uses_anonymous_args = 0
 167              		@ link register save eliminated.
 168 0000 30B4     		push	{r4, r5}
 169 0002 90F87330 		ldrb	r3, [r0, #115]	@ zero_extendqisi2
 170 0006 0022     		movs	r2, #0
 171 0008 03F0CF03 		and	r3, r3, #207
ARM GAS  /tmp/ccJRi9N9.s 			page 4


 172 000c 4FF0FF35 		mov	r5, #-1
 173 0010 0124     		movs	r4, #1
 174 0012 62F34103 		bfi	r3, r2, #1, #1
 175 0016 0221     		movs	r1, #2
 176 0018 C565     		str	r5, [r0, #92]
 177 001a C0E91941 		strd	r4, r1, [r0, #100]
 178 001e 80F87220 		strb	r2, [r0, #114]
 179 0022 80F87330 		strb	r3, [r0, #115]
 180 0026 C266     		str	r2, [r0, #108]
 181 0028 30BC     		pop	{r4, r5}
 182 002a 7047     		bx	lr
 183              		.size	_ZN6GCodes7RawMove11SetDefaultsEv, .-_ZN6GCodes7RawMove11SetDefaultsEv
 184              		.section	.text._ZN6GCodesC2ER8Platform,"ax",%progbits
 185              		.align	1
 186              		.p2align 2,,3
 187              		.global	_ZN6GCodesC2ER8Platform
 188              		.syntax unified
 189              		.thumb
 190              		.thumb_func
 191              		.fpu fpv4-sp-d16
 192              		.type	_ZN6GCodesC2ER8Platform, %function
 193              	_ZN6GCodesC2ER8Platform:
 194              		@ args = 0, pretend = 0, frame = 0
 195              		@ frame_needed = 0, uses_anonymous_args = 0
 196 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 197 0002 0346     		mov	r3, r0
 198 0004 0446     		mov	r4, r0
 199 0006 43F8181B 		str	r1, [r3], #24
 200 000a 00F11C05 		add	r5, r0, #28
 201 000e 04F12C01 		add	r1, r4, #44
 202 0012 04F13002 		add	r2, r4, #48
 203 0016 00F12007 		add	r7, r0, #32
 204 001a 00F12406 		add	r6, r0, #36
 205 001e A363     		str	r3, [r4, #56]
 206 0020 E563     		str	r5, [r4, #60]
 207 0022 04F13403 		add	r3, r4, #52
 208 0026 0025     		movs	r5, #0
 209 0028 2830     		adds	r0, r0, #40
 210 002a C4E91201 		strd	r0, r1, [r4, #72]
 211 002e C4E91423 		strd	r2, r3, [r4, #80]
 212 0032 C4E91076 		strd	r7, r6, [r4, #64]
 213 0036 84F8A850 		strb	r5, [r4, #168]
 214 003a 84F8A950 		strb	r5, [r4, #169]
 215 003e C4F8B050 		str	r5, [r4, #176]
 216 0042 04F5D070 		add	r0, r4, #416
 217 0046 FFF7FEFF 		bl	_ZN12RestorePointC1Ev
 218 004a 04F50677 		add	r7, r4, #536
 219 004e 04F5EE70 		add	r0, r4, #476
 220 0052 FFF7FEFF 		bl	_ZN12RestorePointC1Ev
 221 0056 04F51576 		add	r6, r4, #596
 222 005a 3846     		mov	r0, r7
 223 005c FFF7FEFF 		bl	_ZN12RestorePointC1Ev
 224 0060 3046     		mov	r0, r6
 225 0062 FFF7FEFF 		bl	_ZN12RestorePointC1Ev
 226 0066 C4F89462 		str	r6, [r4, #660]
 227 006a C4F84454 		str	r5, [r4, #1092]
 228 006e C4F89072 		str	r7, [r4, #656]
ARM GAS  /tmp/ccJRi9N9.s 			page 5


 229 0072 04F2F440 		addw	r0, r4, #1268
 230 0076 FFF7FEFF 		bl	_ZN14GridDefinitionC1Ev
 231 007a 84F8F555 		strb	r5, [r4, #1525]
 232 007e C4F8FC55 		str	r5, [r4, #1532]
 233 0082 C4F87C56 		str	r5, [r4, #1660]
 234 0086 4FF48A70 		mov	r0, #276
 235 008a FFF7FEFF 		bl	_Znwj
 236 008e 0646     		mov	r6, r0
 237 0090 FFF7FEFF 		bl	_ZN17NetworkGCodeInputC1Ev
 238 0094 6660     		str	r6, [r4, #4]
 239 0096 4FF48A70 		mov	r0, #276
 240 009a FFF7FEFF 		bl	_Znwj
 241 009e 0646     		mov	r6, r0
 242 00a0 FFF7FEFF 		bl	_ZN17NetworkGCodeInputC1Ev
 243 00a4 A660     		str	r6, [r4, #8]
 244 00a6 4FF48A70 		mov	r0, #276
 245 00aa FFF7FEFF 		bl	_Znwj
 246 00ae 0646     		mov	r6, r0
 247 00b0 FFF7FEFF 		bl	_ZN17RegularGCodeInputC2Ev
 248 00b4 3B4B     		ldr	r3, .L30
 249 00b6 E660     		str	r6, [r4, #12]
 250 00b8 C6F81051 		str	r5, [r6, #272]
 251 00bc 3360     		str	r3, [r6]
 252 00be 0820     		movs	r0, #8
 253 00c0 FFF7FEFF 		bl	_Znwj
 254 00c4 0346     		mov	r3, r0
 255 00c6 384A     		ldr	r2, .L30+4
 256 00c8 384E     		ldr	r6, .L30+8
 257 00ca 4260     		str	r2, [r0, #4]
 258 00cc 2061     		str	r0, [r4, #16]
 259 00ce 1E60     		str	r6, [r3]
 260 00d0 0820     		movs	r0, #8
 261 00d2 FFF7FEFF 		bl	_Znwj
 262 00d6 0346     		mov	r3, r0
 263 00d8 354A     		ldr	r2, .L30+12
 264 00da 0660     		str	r6, [r0]
 265 00dc 6061     		str	r0, [r4, #20]
 266 00de 5A60     		str	r2, [r3, #4]
 267 00e0 F420     		movs	r0, #244
 268 00e2 FFF7FEFF 		bl	_Znwj
 269 00e6 2B46     		mov	r3, r5
 270 00e8 1022     		movs	r2, #16
 271 00ea 3249     		ldr	r1, .L30+16
 272 00ec 0646     		mov	r6, r0
 273 00ee FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 274 00f2 A36B     		ldr	r3, [r4, #56]
 275 00f4 F420     		movs	r0, #244
 276 00f6 1E60     		str	r6, [r3]
 277 00f8 FFF7FEFF 		bl	_Znwj
 278 00fc 2022     		movs	r2, #32
 279 00fe 2E49     		ldr	r1, .L30+20
 280 0100 0123     		movs	r3, #1
 281 0102 0646     		mov	r6, r0
 282 0104 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 283 0108 E36B     		ldr	r3, [r4, #60]
 284 010a F420     		movs	r0, #244
 285 010c 1E60     		str	r6, [r3]
ARM GAS  /tmp/ccJRi9N9.s 			page 6


 286 010e FFF7FEFF 		bl	_Znwj
 287 0112 3522     		movs	r2, #53
 288 0114 2949     		ldr	r1, .L30+24
 289 0116 0123     		movs	r3, #1
 290 0118 0646     		mov	r6, r0
 291 011a FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 292 011e 236C     		ldr	r3, [r4, #64]
 293 0120 F420     		movs	r0, #244
 294 0122 1E60     		str	r6, [r3]
 295 0124 FFF7FEFF 		bl	_Znwj
 296 0128 0123     		movs	r3, #1
 297 012a 1A46     		mov	r2, r3
 298 012c 2449     		ldr	r1, .L30+28
 299 012e 0646     		mov	r6, r0
 300 0130 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 301 0134 636C     		ldr	r3, [r4, #68]
 302 0136 F420     		movs	r0, #244
 303 0138 1E60     		str	r6, [r3]
 304 013a FFF7FEFF 		bl	_Znwj
 305 013e 2B46     		mov	r3, r5
 306 0140 0422     		movs	r2, #4
 307 0142 2049     		ldr	r1, .L30+32
 308 0144 0646     		mov	r6, r0
 309 0146 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 310 014a A36C     		ldr	r3, [r4, #72]
 311 014c F420     		movs	r0, #244
 312 014e 1E60     		str	r6, [r3]
 313 0150 FFF7FEFF 		bl	_Znwj
 314 0154 2B46     		mov	r3, r5
 315 0156 3522     		movs	r2, #53
 316 0158 1B49     		ldr	r1, .L30+36
 317 015a 0646     		mov	r6, r0
 318 015c FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 319 0160 E36C     		ldr	r3, [r4, #76]
 320 0162 F420     		movs	r0, #244
 321 0164 1E60     		str	r6, [r3]
 322 0166 FFF7FEFF 		bl	_Znwj
 323 016a 2B46     		mov	r3, r5
 324 016c 3522     		movs	r2, #53
 325 016e 1749     		ldr	r1, .L30+40
 326 0170 0646     		mov	r6, r0
 327 0172 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 328 0176 236D     		ldr	r3, [r4, #80]
 329 0178 F420     		movs	r0, #244
 330 017a 1E60     		str	r6, [r3]
 331 017c FFF7FEFF 		bl	_Znwj
 332 0180 3522     		movs	r2, #53
 333 0182 1349     		ldr	r1, .L30+44
 334 0184 2B46     		mov	r3, r5
 335 0186 0646     		mov	r6, r0
 336 0188 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 337 018c 636D     		ldr	r3, [r4, #84]
 338 018e 0820     		movs	r0, #8
 339 0190 1E60     		str	r6, [r3]
 340 0192 FFF7FEFF 		bl	_Znwj
 341 0196 0546     		mov	r5, r0
 342 0198 FFF7FEFF 		bl	_ZN10GCodeQueueC1Ev
ARM GAS  /tmp/ccJRi9N9.s 			page 7


 343 019c C4F8F855 		str	r5, [r4, #1528]
 344 01a0 2046     		mov	r0, r4
 345 01a2 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 346              	.L31:
 347              		.align	2
 348              	.L30:
 349 01a4 08000000 		.word	_ZTV14FileGCodeInput+8
 350 01a8 00000000 		.word	SerialUSB
 351 01ac 08000000 		.word	_ZTV16StreamGCodeInput+8
 352 01b0 00000000 		.word	Serial
 353 01b4 00000000 		.word	.LC4
 354 01b8 08000000 		.word	.LC5
 355 01bc 10000000 		.word	.LC6
 356 01c0 18000000 		.word	.LC7
 357 01c4 20000000 		.word	.LC8
 358 01c8 24000000 		.word	.LC9
 359 01cc 2C000000 		.word	.LC10
 360 01d0 34000000 		.word	.LC11
 361              		.size	_ZN6GCodesC2ER8Platform, .-_ZN6GCodesC2ER8Platform
 362              		.global	_ZN6GCodesC1ER8Platform
 363              		.thumb_set _ZN6GCodesC1ER8Platform,_ZN6GCodesC2ER8Platform
 364              		.section	.text._ZN6GCodes4ExitEv,"ax",%progbits
 365              		.align	1
 366              		.p2align 2,,3
 367              		.global	_ZN6GCodes4ExitEv
 368              		.syntax unified
 369              		.thumb
 370              		.thumb_func
 371              		.fpu fpv4-sp-d16
 372              		.type	_ZN6GCodes4ExitEv, %function
 373              	_ZN6GCodes4ExitEv:
 374              		@ args = 0, pretend = 0, frame = 0
 375              		@ frame_needed = 0, uses_anonymous_args = 0
 376              		@ link register save eliminated.
 377 0000 0023     		movs	r3, #0
 378 0002 80F8A930 		strb	r3, [r0, #169]
 379 0006 7047     		bx	lr
 380              		.size	_ZN6GCodes4ExitEv, .-_ZN6GCodes4ExitEv
 381              		.section	.text._ZNK6GCodes14DoingFileMacroEv,"ax",%progbits
 382              		.align	1
 383              		.p2align 2,,3
 384              		.global	_ZNK6GCodes14DoingFileMacroEv
 385              		.syntax unified
 386              		.thumb
 387              		.thumb_func
 388              		.fpu fpv4-sp-d16
 389              		.type	_ZNK6GCodes14DoingFileMacroEv, %function
 390              	_ZNK6GCodes14DoingFileMacroEv:
 391              		@ args = 0, pretend = 0, frame = 0
 392              		@ frame_needed = 0, uses_anonymous_args = 0
 393 0000 38B5     		push	{r3, r4, r5, lr}
 394 0002 00F13805 		add	r5, r0, #56
 395 0006 00F11804 		add	r4, r0, #24
 396 000a 01E0     		b	.L35
 397              	.L38:
 398 000c A542     		cmp	r5, r4
 399 000e 05D0     		beq	.L34
ARM GAS  /tmp/ccJRi9N9.s 			page 8


 400              	.L35:
 401 0010 54F8040B 		ldr	r0, [r4], #4
 402 0014 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 403 0018 0028     		cmp	r0, #0
 404 001a F7D0     		beq	.L38
 405              	.L34:
 406 001c 38BD     		pop	{r3, r4, r5, pc}
 407              		.size	_ZNK6GCodes14DoingFileMacroEv, .-_ZNK6GCodes14DoingFileMacroEv
 408              		.section	.text._ZNK6GCodes21FractionOfFilePrintedEv,"ax",%progbits
 409              		.align	1
 410              		.p2align 2,,3
 411              		.global	_ZNK6GCodes21FractionOfFilePrintedEv
 412              		.syntax unified
 413              		.thumb
 414              		.thumb_func
 415              		.fpu fpv4-sp-d16
 416              		.type	_ZNK6GCodes21FractionOfFilePrintedEv, %function
 417              	_ZNK6GCodes21FractionOfFilePrintedEv:
 418              		@ args = 0, pretend = 0, frame = 8
 419              		@ frame_needed = 0, uses_anonymous_args = 0
 420 0000 30B5     		push	{r4, r5, lr}
 421 0002 036C     		ldr	r3, [r0, #64]
 422 0004 83B0     		sub	sp, sp, #12
 423 0006 0446     		mov	r4, r0
 424 0008 1868     		ldr	r0, [r3]
 425 000a FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 426 000e 0546     		mov	r5, r0
 427 0010 8068     		ldr	r0, [r0, #8]
 428 0012 E8B1     		cbz	r0, .L42
 429 0014 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 430 0018 0190     		str	r0, [sp, #4]
 431 001a 18B9     		cbnz	r0, .L46
 432 001c 9FED110A 		vldr.32	s0, .L48
 433 0020 03B0     		add	sp, sp, #12
 434              		@ sp needed
 435 0022 30BD     		pop	{r4, r5, pc}
 436              	.L46:
 437 0024 236C     		ldr	r3, [r4, #64]
 438 0026 1868     		ldr	r0, [r3]
 439 0028 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 440 002c A0B1     		cbz	r0, .L47
 441 002e 0024     		movs	r4, #0
 442              	.L41:
 443 0030 A868     		ldr	r0, [r5, #8]
 444 0032 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 445 0036 001B     		subs	r0, r0, r4
 446 0038 07EE900A 		vmov	s15, r0	@ int
 447 003c B8EE677A 		vcvt.f32.u32	s14, s15
 448 0040 DDED017A 		vldr.32	s15, [sp, #4]	@ int
 449 0044 F8EE677A 		vcvt.f32.u32	s15, s15
 450 0048 87EE270A 		vdiv.f32	s0, s14, s15
 451 004c 03B0     		add	sp, sp, #12
 452              		@ sp needed
 453 004e 30BD     		pop	{r4, r5, pc}
 454              	.L42:
 455 0050 BFEE000A 		vmov.f32	s0, #-1.0e+0
 456 0054 03B0     		add	sp, sp, #12
ARM GAS  /tmp/ccJRi9N9.s 			page 9


 457              		@ sp needed
 458 0056 30BD     		pop	{r4, r5, pc}
 459              	.L47:
 460 0058 E068     		ldr	r0, [r4, #12]
 461 005a 0368     		ldr	r3, [r0]
 462 005c 9B68     		ldr	r3, [r3, #8]
 463 005e 9847     		blx	r3
 464 0060 0446     		mov	r4, r0
 465 0062 E5E7     		b	.L41
 466              	.L49:
 467              		.align	2
 468              	.L48:
 469 0064 00000000 		.word	0
 470              		.size	_ZNK6GCodes21FractionOfFilePrintedEv, .-_ZNK6GCodes21FractionOfFilePrintedEv
 471              		.section	.text._ZNK6GCodes15GetFilePositionEv,"ax",%progbits
 472              		.align	1
 473              		.p2align 2,,3
 474              		.global	_ZNK6GCodes15GetFilePositionEv
 475              		.syntax unified
 476              		.thumb
 477              		.thumb_func
 478              		.fpu fpv4-sp-d16
 479              		.type	_ZNK6GCodes15GetFilePositionEv, %function
 480              	_ZNK6GCodes15GetFilePositionEv:
 481              		@ args = 0, pretend = 0, frame = 0
 482              		@ frame_needed = 0, uses_anonymous_args = 0
 483 0000 38B5     		push	{r3, r4, r5, lr}
 484 0002 036C     		ldr	r3, [r0, #64]
 485 0004 0446     		mov	r4, r0
 486 0006 1868     		ldr	r0, [r3]
 487 0008 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 488 000c 0546     		mov	r5, r0
 489 000e 8068     		ldr	r0, [r0, #8]
 490 0010 48B1     		cbz	r0, .L50
 491 0012 236C     		ldr	r3, [r4, #64]
 492 0014 1868     		ldr	r0, [r3]
 493 0016 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 494 001a 28B1     		cbz	r0, .L56
 495 001c 0024     		movs	r4, #0
 496              	.L52:
 497 001e A868     		ldr	r0, [r5, #8]
 498 0020 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 499 0024 001B     		subs	r0, r0, r4
 500              	.L50:
 501 0026 38BD     		pop	{r3, r4, r5, pc}
 502              	.L56:
 503 0028 E068     		ldr	r0, [r4, #12]
 504 002a 0368     		ldr	r3, [r0]
 505 002c 9B68     		ldr	r3, [r3, #8]
 506 002e 9847     		blx	r3
 507 0030 0446     		mov	r4, r0
 508 0032 F4E7     		b	.L52
 509              		.size	_ZNK6GCodes15GetFilePositionEv, .-_ZNK6GCodes15GetFilePositionEv
 510              		.section	.text._ZNK6GCodes12IsDaemonBusyEv,"ax",%progbits
 511              		.align	1
 512              		.p2align 2,,3
 513              		.global	_ZNK6GCodes12IsDaemonBusyEv
ARM GAS  /tmp/ccJRi9N9.s 			page 10


 514              		.syntax unified
 515              		.thumb
 516              		.thumb_func
 517              		.fpu fpv4-sp-d16
 518              		.type	_ZNK6GCodes12IsDaemonBusyEv, %function
 519              	_ZNK6GCodes12IsDaemonBusyEv:
 520              		@ args = 0, pretend = 0, frame = 0
 521              		@ frame_needed = 0, uses_anonymous_args = 0
 522              		@ link register save eliminated.
 523 0000 C36C     		ldr	r3, [r0, #76]
 524 0002 1B68     		ldr	r3, [r3]
 525 0004 9B68     		ldr	r3, [r3, #8]
 526 0006 9868     		ldr	r0, [r3, #8]
 527 0008 0030     		adds	r0, r0, #0
 528 000a 18BF     		it	ne
 529 000c 0120     		movne	r0, #1
 530 000e 7047     		bx	lr
 531              		.size	_ZNK6GCodes12IsDaemonBusyEv, .-_ZNK6GCodes12IsDaemonBusyEv
 532              		.section	.text._ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer,"ax",%progbits
 533              		.align	1
 534              		.p2align 2,,3
 535              		.global	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer
 536              		.syntax unified
 537              		.thumb
 538              		.thumb_func
 539              		.fpu fpv4-sp-d16
 540              		.type	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer, %function
 541              	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer:
 542              		@ args = 0, pretend = 0, frame = 0
 543              		@ frame_needed = 0, uses_anonymous_args = 0
 544              		@ link register save eliminated.
 545 0000 70B4     		push	{r4, r5, r6}
 546 0002 00F11805 		add	r5, r0, #24
 547 0006 3830     		adds	r0, r0, #56
 548              	.L59:
 549 0008 55F8043B 		ldr	r3, [r5], #4
 550 000c 8A68     		ldr	r2, [r1, #8]
 551 000e 9B68     		ldr	r3, [r3, #8]
 552 0010 167E     		ldrb	r6, [r2, #24]	@ zero_extendqisi2
 553 0012 1C7E     		ldrb	r4, [r3, #24]	@ zero_extendqisi2
 554 0014 66F30004 		bfi	r4, r6, #0, #1
 555 0018 1C76     		strb	r4, [r3, #24]
 556 001a 147E     		ldrb	r4, [r2, #24]	@ zero_extendqisi2
 557 001c 1E7E     		ldrb	r6, [r3, #24]	@ zero_extendqisi2
 558 001e C4F34004 		ubfx	r4, r4, #1, #1
 559 0022 64F34106 		bfi	r6, r4, #1, #1
 560 0026 1E76     		strb	r6, [r3, #24]
 561 0028 5268     		ldr	r2, [r2, #4]	@ float
 562 002a 5A60     		str	r2, [r3, #4]	@ float
 563 002c 8542     		cmp	r5, r0
 564 002e EBD1     		bne	.L59
 565 0030 70BC     		pop	{r4, r5, r6}
 566 0032 7047     		bx	lr
 567              		.size	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer, .-_ZN6GCodes21CopyConfigFinalValuesER11GCo
 568              		.section	.text._ZN6GCodes14InitialiseTapsEv,"ax",%progbits
 569              		.align	1
 570              		.p2align 2,,3
ARM GAS  /tmp/ccJRi9N9.s 			page 11


 571              		.global	_ZN6GCodes14InitialiseTapsEv
 572              		.syntax unified
 573              		.thumb
 574              		.thumb_func
 575              		.fpu fpv4-sp-d16
 576              		.type	_ZN6GCodes14InitialiseTapsEv, %function
 577              	_ZN6GCodes14InitialiseTapsEv:
 578              		@ args = 0, pretend = 0, frame = 0
 579              		@ frame_needed = 0, uses_anonymous_args = 0
 580              		@ link register save eliminated.
 581 0000 30B4     		push	{r4, r5}
 582 0002 00F5A761 		add	r1, r0, #1336
 583 0006 00F23C53 		addw	r3, r0, #1340
 584 000a 0024     		movs	r4, #0
 585 000c 0025     		movs	r5, #0
 586 000e 034A     		ldr	r2, .L64
 587 0010 80F85355 		strb	r5, [r0, #1363]
 588 0014 0C60     		str	r4, [r1]	@ float
 589 0016 1A60     		str	r2, [r3]	@ float
 590 0018 30BC     		pop	{r4, r5}
 591 001a 7047     		bx	lr
 592              	.L65:
 593              		.align	2
 594              	.L64:
 595 001c 00007A44 		.word	1148846080
 596              		.size	_ZN6GCodes14InitialiseTapsEv, .-_ZN6GCodes14InitialiseTapsEv
 597              		.section	.text._ZN6GCodes13FilamentErrorEj20FilamentSensorStatus,"ax",%progbits
 598              		.align	1
 599              		.p2align 2,,3
 600              		.global	_ZN6GCodes13FilamentErrorEj20FilamentSensorStatus
 601              		.syntax unified
 602              		.thumb
 603              		.thumb_func
 604              		.fpu fpv4-sp-d16
 605              		.type	_ZN6GCodes13FilamentErrorEj20FilamentSensorStatus, %function
 606              	_ZN6GCodes13FilamentErrorEj20FilamentSensorStatus:
 607              		@ args = 0, pretend = 0, frame = 0
 608              		@ frame_needed = 0, uses_anonymous_args = 0
 609              		@ link register save eliminated.
 610 0000 90F86436 		ldrb	r3, [r0, #1636]	@ zero_extendqisi2
 611 0004 1BB9     		cbnz	r3, .L66
 612 0006 C0F86816 		str	r1, [r0, #1640]
 613 000a 80F86426 		strb	r2, [r0, #1636]
 614              	.L66:
 615 000e 7047     		bx	lr
 616              		.size	_ZN6GCodes13FilamentErrorEj20FilamentSensorStatus, .-_ZN6GCodes13FilamentErrorEj20FilamentSe
 617              		.section	.text._ZNK6GCodes9IsPausingEv,"ax",%progbits
 618              		.align	1
 619              		.p2align 2,,3
 620              		.global	_ZNK6GCodes9IsPausingEv
 621              		.syntax unified
 622              		.thumb
 623              		.thumb_func
 624              		.fpu fpv4-sp-d16
 625              		.type	_ZNK6GCodes9IsPausingEv, %function
 626              	_ZNK6GCodes9IsPausingEv:
 627              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccJRi9N9.s 			page 12


 628              		@ frame_needed = 0, uses_anonymous_args = 0
 629 0000 10B5     		push	{r4, lr}
 630 0002 036C     		ldr	r3, [r0, #64]
 631 0004 0446     		mov	r4, r0
 632 0006 1868     		ldr	r0, [r3]
 633 0008 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 634 000c 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 635 000e 0F3B     		subs	r3, r3, #15
 636 0010 012B     		cmp	r3, #1
 637 0012 16D9     		bls	.L71
 638 0014 E36C     		ldr	r3, [r4, #76]
 639 0016 1868     		ldr	r0, [r3]
 640 0018 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 641 001c 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 642 001e 0F3B     		subs	r3, r3, #15
 643 0020 012B     		cmp	r3, #1
 644 0022 0ED9     		bls	.L71
 645 0024 636D     		ldr	r3, [r4, #84]
 646 0026 1868     		ldr	r0, [r3]
 647 0028 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 648 002c 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 649 002e A0F10F03 		sub	r3, r0, #15
 650 0032 012B     		cmp	r3, #1
 651 0034 05D9     		bls	.L71
 652 0036 A0F12F00 		sub	r0, #47
 653 003a B0FA80F0 		clz	r0, r0
 654 003e 4009     		lsrs	r0, r0, #5
 655 0040 10BD     		pop	{r4, pc}
 656              	.L71:
 657 0042 0120     		movs	r0, #1
 658 0044 10BD     		pop	{r4, pc}
 659              		.size	_ZNK6GCodes9IsPausingEv, .-_ZNK6GCodes9IsPausingEv
 660 0046 00BF     		.section	.text._ZNK6GCodes8IsPausedEv,"ax",%progbits
 661              		.align	1
 662              		.p2align 2,,3
 663              		.global	_ZNK6GCodes8IsPausedEv
 664              		.syntax unified
 665              		.thumb
 666              		.thumb_func
 667              		.fpu fpv4-sp-d16
 668              		.type	_ZNK6GCodes8IsPausedEv, %function
 669              	_ZNK6GCodes8IsPausedEv:
 670              		@ args = 0, pretend = 0, frame = 0
 671              		@ frame_needed = 0, uses_anonymous_args = 0
 672 0000 90F8AA20 		ldrb	r2, [r0, #170]	@ zero_extendqisi2
 673 0004 0AB9     		cbnz	r2, .L74
 674 0006 0020     		movs	r0, #0
 675 0008 7047     		bx	lr
 676              	.L74:
 677 000a 10B5     		push	{r4, lr}
 678 000c 0446     		mov	r4, r0
 679 000e FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
 680 0012 08B1     		cbz	r0, .L80
 681 0014 0020     		movs	r0, #0
 682 0016 10BD     		pop	{r4, pc}
 683              	.L80:
 684 0018 236C     		ldr	r3, [r4, #64]
ARM GAS  /tmp/ccJRi9N9.s 			page 13


 685 001a 1868     		ldr	r0, [r3]
 686 001c FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 687 0020 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 688 0022 1138     		subs	r0, r0, #17
 689 0024 0228     		cmp	r0, #2
 690 0026 94BF     		ite	ls
 691 0028 0020     		movls	r0, #0
 692 002a 0120     		movhi	r0, #1
 693 002c 10BD     		pop	{r4, pc}
 694              		.size	_ZNK6GCodes8IsPausedEv, .-_ZNK6GCodes8IsPausedEv
 695 002e 00BF     		.section	.text._ZNK6GCodes10IsResumingEv,"ax",%progbits
 696              		.align	1
 697              		.p2align 2,,3
 698              		.global	_ZNK6GCodes10IsResumingEv
 699              		.syntax unified
 700              		.thumb
 701              		.thumb_func
 702              		.fpu fpv4-sp-d16
 703              		.type	_ZNK6GCodes10IsResumingEv, %function
 704              	_ZNK6GCodes10IsResumingEv:
 705              		@ args = 0, pretend = 0, frame = 0
 706              		@ frame_needed = 0, uses_anonymous_args = 0
 707 0000 08B5     		push	{r3, lr}
 708 0002 036C     		ldr	r3, [r0, #64]
 709 0004 1868     		ldr	r0, [r3]
 710 0006 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 711 000a 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 712 000c 1138     		subs	r0, r0, #17
 713 000e 0228     		cmp	r0, #2
 714 0010 8CBF     		ite	hi
 715 0012 0020     		movhi	r0, #0
 716 0014 0120     		movls	r0, #1
 717 0016 08BD     		pop	{r3, pc}
 718              		.size	_ZNK6GCodes10IsResumingEv, .-_ZNK6GCodes10IsResumingEv
 719              		.section	.text._ZNK6GCodes9IsRunningEv,"ax",%progbits
 720              		.align	1
 721              		.p2align 2,,3
 722              		.global	_ZNK6GCodes9IsRunningEv
 723              		.syntax unified
 724              		.thumb
 725              		.thumb_func
 726              		.fpu fpv4-sp-d16
 727              		.type	_ZNK6GCodes9IsRunningEv, %function
 728              	_ZNK6GCodes9IsRunningEv:
 729              		@ args = 0, pretend = 0, frame = 0
 730              		@ frame_needed = 0, uses_anonymous_args = 0
 731 0000 10B5     		push	{r4, lr}
 732 0002 0446     		mov	r4, r0
 733 0004 FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 734 0008 08B1     		cbz	r0, .L84
 735              	.L86:
 736 000a 0020     		movs	r0, #0
 737 000c 10BD     		pop	{r4, pc}
 738              	.L84:
 739 000e 2046     		mov	r0, r4
 740 0010 FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
 741 0014 0028     		cmp	r0, #0
ARM GAS  /tmp/ccJRi9N9.s 			page 14


 742 0016 F8D1     		bne	.L86
 743 0018 236C     		ldr	r3, [r4, #64]
 744 001a 1868     		ldr	r0, [r3]
 745 001c FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 746 0020 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 747 0022 1138     		subs	r0, r0, #17
 748 0024 0228     		cmp	r0, #2
 749 0026 94BF     		ite	ls
 750 0028 0020     		movls	r0, #0
 751 002a 0120     		movhi	r0, #1
 752 002c 10BD     		pop	{r4, pc}
 753              		.size	_ZNK6GCodes9IsRunningEv, .-_ZNK6GCodes9IsRunningEv
 754 002e 00BF     		.section	.text._ZNK6GCodes16IsReallyPrintingEv.part.56,"ax",%progbits
 755              		.align	1
 756              		.p2align 2,,3
 757              		.syntax unified
 758              		.thumb
 759              		.thumb_func
 760              		.fpu fpv4-sp-d16
 761              		.type	_ZNK6GCodes16IsReallyPrintingEv.part.56, %function
 762              	_ZNK6GCodes16IsReallyPrintingEv.part.56:
 763              		@ args = 0, pretend = 0, frame = 0
 764              		@ frame_needed = 0, uses_anonymous_args = 0
 765              		@ link register save eliminated.
 766 0000 FFF7FEBF 		b	_ZNK6GCodes9IsRunningEv
 767              		.size	_ZNK6GCodes16IsReallyPrintingEv.part.56, .-_ZNK6GCodes16IsReallyPrintingEv.part.56
 768              		.section	.text._ZNK6GCodes16IsReallyPrintingEv,"ax",%progbits
 769              		.align	1
 770              		.p2align 2,,3
 771              		.global	_ZNK6GCodes16IsReallyPrintingEv
 772              		.syntax unified
 773              		.thumb
 774              		.thumb_func
 775              		.fpu fpv4-sp-d16
 776              		.type	_ZNK6GCodes16IsReallyPrintingEv, %function
 777              	_ZNK6GCodes16IsReallyPrintingEv:
 778              		@ args = 0, pretend = 0, frame = 0
 779              		@ frame_needed = 0, uses_anonymous_args = 0
 780              		@ link register save eliminated.
 781 0000 034B     		ldr	r3, .L92
 782 0002 DB69     		ldr	r3, [r3, #28]
 783 0004 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 784 0006 0BB9     		cbnz	r3, .L91
 785 0008 1846     		mov	r0, r3
 786 000a 7047     		bx	lr
 787              	.L91:
 788 000c FFF7FEBF 		b	_ZNK6GCodes16IsReallyPrintingEv.part.56
 789              	.L93:
 790              		.align	2
 791              	.L92:
 792 0010 00000000 		.word	reprap
 793              		.size	_ZNK6GCodes16IsReallyPrintingEv, .-_ZNK6GCodes16IsReallyPrintingEv
 794              		.section	.text._ZNK6GCodes11IsHeatingUpEv,"ax",%progbits
 795              		.align	1
 796              		.p2align 2,,3
 797              		.global	_ZNK6GCodes11IsHeatingUpEv
 798              		.syntax unified
ARM GAS  /tmp/ccJRi9N9.s 			page 15


 799              		.thumb
 800              		.thumb_func
 801              		.fpu fpv4-sp-d16
 802              		.type	_ZNK6GCodes11IsHeatingUpEv, %function
 803              	_ZNK6GCodes11IsHeatingUpEv:
 804              		@ args = 0, pretend = 0, frame = 0
 805              		@ frame_needed = 0, uses_anonymous_args = 0
 806              		@ link register save eliminated.
 807 0000 036C     		ldr	r3, [r0, #64]
 808 0002 1B68     		ldr	r3, [r3]
 809 0004 93F82820 		ldrb	r2, [r3, #40]	@ zero_extendqisi2
 810 0008 092A     		cmp	r2, #9
 811 000a 01D0     		beq	.L100
 812              	.L97:
 813 000c 0020     		movs	r0, #0
 814 000e 7047     		bx	lr
 815              	.L100:
 816 0010 93F84C20 		ldrb	r2, [r3, #76]	@ zero_extendqisi2
 817 0014 4D2A     		cmp	r2, #77
 818 0016 F9D1     		bne	.L97
 819 0018 186C     		ldr	r0, [r3, #64]
 820 001a 6D28     		cmp	r0, #109
 821 001c 07D0     		beq	.L99
 822 001e 7428     		cmp	r0, #116
 823 0020 05D0     		beq	.L99
 824 0022 BE38     		subs	r0, r0, #190
 825 0024 0128     		cmp	r0, #1
 826 0026 8CBF     		ite	hi
 827 0028 0020     		movhi	r0, #0
 828 002a 0120     		movls	r0, #1
 829 002c 7047     		bx	lr
 830              	.L99:
 831 002e 0120     		movs	r0, #1
 832 0030 7047     		bx	lr
 833              		.size	_ZNK6GCodes11IsHeatingUpEv, .-_ZNK6GCodes11IsHeatingUpEv
 834 0032 00BF     		.section	.text._ZN6GCodes16LowVoltageResumeEv,"ax",%progbits
 835              		.align	1
 836              		.p2align 2,,3
 837              		.global	_ZN6GCodes16LowVoltageResumeEv
 838              		.syntax unified
 839              		.thumb
 840              		.thumb_func
 841              		.fpu fpv4-sp-d16
 842              		.type	_ZN6GCodes16LowVoltageResumeEv, %function
 843              	_ZN6GCodes16LowVoltageResumeEv:
 844              		@ args = 0, pretend = 0, frame = 0
 845              		@ frame_needed = 0, uses_anonymous_args = 0
 846 0000 10B5     		push	{r4, lr}
 847 0002 084B     		ldr	r3, .L110
 848 0004 0446     		mov	r4, r0
 849 0006 0021     		movs	r1, #0
 850 0008 D868     		ldr	r0, [r3, #12]
 851 000a FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 852 000e 94F8AA30 		ldrb	r3, [r4, #170]	@ zero_extendqisi2
 853 0012 2BB1     		cbz	r3, .L102
 854 0014 94F8AE30 		ldrb	r3, [r4, #174]	@ zero_extendqisi2
 855 0018 13B1     		cbz	r3, .L102
ARM GAS  /tmp/ccJRi9N9.s 			page 16


 856 001a 0023     		movs	r3, #0
 857 001c 84F8AE30 		strb	r3, [r4, #174]
 858              	.L102:
 859 0020 0120     		movs	r0, #1
 860 0022 10BD     		pop	{r4, pc}
 861              	.L111:
 862              		.align	2
 863              	.L110:
 864 0024 00000000 		.word	reprap
 865              		.size	_ZN6GCodes16LowVoltageResumeEv, .-_ZN6GCodes16LowVoltageResumeEv
 866              		.section	.text._ZN6GCodes21SetMachineAxisLettersEPKch,"ax",%progbits
 867              		.align	1
 868              		.p2align 2,,3
 869              		.global	_ZN6GCodes21SetMachineAxisLettersEPKch
 870              		.syntax unified
 871              		.thumb
 872              		.thumb_func
 873              		.fpu fpv4-sp-d16
 874              		.type	_ZN6GCodes21SetMachineAxisLettersEPKch, %function
 875              	_ZN6GCodes21SetMachineAxisLettersEPKch:
 876              		@ args = 0, pretend = 0, frame = 0
 877              		@ frame_needed = 0, uses_anonymous_args = 0
 878              		@ link register save eliminated.
 879 0000 0023     		movs	r3, #0
 880 0002 092A     		cmp	r2, #9
 881 0004 10B4     		push	{r4}
 882 0006 C0F86434 		str	r3, [r0, #1124]	@ unaligned
 883 000a C0F86834 		str	r3, [r0, #1128]	@ unaligned
 884 000e A0F86C34 		strh	r3, [r0, #1132]	@ unaligned
 885 0012 1346     		mov	r3, r2
 886 0014 28BF     		it	cs
 887 0016 0923     		movcs	r3, #9
 888 0018 42B1     		cbz	r2, .L112
 889 001a CA18     		adds	r2, r1, r3
 890 001c 00F26340 		addw	r0, r0, #1123
 891              	.L114:
 892 0020 11F8013B 		ldrb	r3, [r1], #1	@ zero_extendqisi2
 893 0024 00F8013F 		strb	r3, [r0, #1]!
 894 0028 9142     		cmp	r1, r2
 895 002a F9D1     		bne	.L114
 896              	.L112:
 897 002c 5DF8044B 		ldr	r4, [sp], #4
 898 0030 7047     		bx	lr
 899              		.size	_ZN6GCodes21SetMachineAxisLettersEPKch, .-_ZN6GCodes21SetMachineAxisLettersEPKch
 900 0032 00BF     		.section	.text._ZN6GCodes14SaveResumeInfoEb,"ax",%progbits
 901              		.align	1
 902              		.p2align 2,,3
 903              		.global	_ZN6GCodes14SaveResumeInfoEb
 904              		.syntax unified
 905              		.thumb
 906              		.thumb_func
 907              		.fpu fpv4-sp-d16
 908              		.type	_ZN6GCodes14SaveResumeInfoEb, %function
 909              	_ZN6GCodes14SaveResumeInfoEb:
 910              		@ args = 0, pretend = 0, frame = 224
 911              		@ frame_needed = 0, uses_anonymous_args = 0
 912 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
ARM GAS  /tmp/ccJRi9N9.s 			page 17


 913 0004 AF4F     		ldr	r7, .L189
 914 0006 FD69     		ldr	r5, [r7, #28]
 915 0008 2A7B     		ldrb	r2, [r5, #12]	@ zero_extendqisi2
 916 000a BCB0     		sub	sp, sp, #240
 917 000c 12B9     		cbnz	r2, .L186
 918              	.L120:
 919 000e 3CB0     		add	sp, sp, #240
 920              		@ sp needed
 921 0010 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 922              	.L186:
 923 0014 0368     		ldr	r3, [r0]
 924 0016 AC4A     		ldr	r2, .L189+4
 925 0018 8846     		mov	r8, r1
 926 001a 0446     		mov	r4, r0
 927 001c AB49     		ldr	r1, .L189+8
 928 001e D3F8B409 		ldr	r0, [r3, #2484]
 929 0022 0123     		movs	r3, #1
 930 0024 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 931 0028 05F59075 		add	r5, r5, #288
 932 002c 0646     		mov	r6, r0
 933 002e 0028     		cmp	r0, #0
 934 0030 54D0     		beq	.L187
 935 0032 3CA9     		add	r1, sp, #240
 936 0034 0020     		movs	r0, #0
 937 0036 01F8CC0D 		strb	r0, [r1, #-204]!
 938 003a A54A     		ldr	r2, .L189+12
 939 003c A54B     		ldr	r3, .L189+16
 940 003e 0791     		str	r1, [sp, #28]
 941 0040 8045     		cmp	r8, r0
 942 0042 08BF     		it	eq
 943 0044 1346     		moveq	r3, r2
 944 0046 4FF0C90C 		mov	ip, #201
 945 004a 07A8     		add	r0, sp, #28
 946 004c 2A46     		mov	r2, r5
 947 004e A249     		ldr	r1, .L189+20
 948 0050 CDF820C0 		str	ip, [sp, #32]
 949 0054 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 950 0058 2068     		ldr	r0, [r4]
 951 005a FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 952 005e 18BB     		cbnz	r0, .L188
 953              	.L124:
 954 0060 0A21     		movs	r1, #10
 955 0062 07A8     		add	r0, sp, #28
 956 0064 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 957 0068 0799     		ldr	r1, [sp, #28]
 958 006a 3046     		mov	r0, r6
 959 006c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 960 0070 28B1     		cbz	r0, .L127
 961 0072 3146     		mov	r1, r6
 962 0074 F868     		ldr	r0, [r7, #12]
 963 0076 FFF7FEFF 		bl	_ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore
 964 007a 0028     		cmp	r0, #0
 965 007c 36D1     		bne	.L125
 966              	.L127:
 967 007e 3046     		mov	r0, r6
 968 0080 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 969              	.L126:
ARM GAS  /tmp/ccJRi9N9.s 			page 18


 970 0084 2368     		ldr	r3, [r4]
 971 0086 904A     		ldr	r2, .L189+4
 972 0088 D3F8B409 		ldr	r0, [r3, #2484]
 973 008c 8F49     		ldr	r1, .L189+8
 974 008e 0123     		movs	r3, #1
 975 0090 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 976 0094 2068     		ldr	r0, [r4]
 977 0096 8C4B     		ldr	r3, .L189+4
 978 0098 904A     		ldr	r2, .L189+24
 979 009a 40F2B511 		movw	r1, #437
 980 009e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 981 00a2 3CB0     		add	sp, sp, #240
 982              		@ sp needed
 983 00a4 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 984              	.L188:
 985 00a8 2068     		ldr	r0, [r4]
 986 00aa FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
 987 00ae 3CAB     		add	r3, sp, #240
 988 00b0 63E93801 		strd	r0, [r3, #-224]!
 989 00b4 1846     		mov	r0, r3
 990 00b6 FFF7FEFF 		bl	gmtime
 991 00ba 4368     		ldr	r3, [r0, #4]
 992 00bc 8849     		ldr	r1, .L189+28
 993 00be D0E904C2 		ldrd	ip, r2, [r0, #16]
 994 00c2 0293     		str	r3, [sp, #8]
 995 00c4 8368     		ldr	r3, [r0, #8]
 996 00c6 0193     		str	r3, [sp, #4]
 997 00c8 C068     		ldr	r0, [r0, #12]
 998 00ca 0090     		str	r0, [sp]
 999 00cc 0CF10103 		add	r3, ip, #1
 1000 00d0 02F26C72 		addw	r2, r2, #1900
 1001 00d4 07A8     		add	r0, sp, #28
 1002 00d6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1003 00da C1E7     		b	.L124
 1004              	.L187:
 1005 00dc 2068     		ldr	r0, [r4]
 1006 00de 7A4B     		ldr	r3, .L189+4
 1007 00e0 804A     		ldr	r2, .L189+32
 1008 00e2 40F2B511 		movw	r1, #437
 1009 00e6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1010 00ea 90E7     		b	.L120
 1011              	.L125:
 1012 00ec 3146     		mov	r1, r6
 1013 00ee 7548     		ldr	r0, .L189
 1014 00f0 FFF7FEFF 		bl	_ZNK6RepRap17WriteToolSettingsEP9FileStore
 1015 00f4 0028     		cmp	r0, #0
 1016 00f6 C2D0     		beq	.L127
 1017 00f8 B868     		ldr	r0, [r7, #8]
 1018 00fa 3146     		mov	r1, r6
 1019 00fc FFF7FEFF 		bl	_ZNK4Move19WriteResumeSettingsEP9FileStore
 1020 0100 0028     		cmp	r0, #0
 1021 0102 BCD0     		beq	.L127
 1022 0104 7849     		ldr	r1, .L189+36
 1023 0106 794A     		ldr	r2, .L189+40
 1024 0108 07A8     		add	r0, sp, #28
 1025 010a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1026 010e 0799     		ldr	r1, [sp, #28]
ARM GAS  /tmp/ccJRi9N9.s 			page 19


 1027 0110 3046     		mov	r0, r6
 1028 0112 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1029 0116 0028     		cmp	r0, #0
 1030 0118 B1D0     		beq	.L127
 1031 011a 3146     		mov	r1, r6
 1032 011c 2068     		ldr	r0, [r4]
 1033 011e FFF7FEFF 		bl	_ZNK8Platform16WriteFanSettingsEP9FileStore
 1034 0122 0028     		cmp	r0, #0
 1035 0124 ABD0     		beq	.L127
 1036 0126 04F29C43 		addw	r3, r4, #1180
 1037 012a 1868     		ldr	r0, [r3]	@ float
 1038 012c FFF7FEFF 		bl	__aeabi_f2d
 1039 0130 0246     		mov	r2, r0
 1040 0132 0B46     		mov	r3, r1
 1041 0134 07A8     		add	r0, sp, #28
 1042 0136 6E49     		ldr	r1, .L189+44
 1043 0138 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1044 013c 0799     		ldr	r1, [sp, #28]
 1045 013e 3046     		mov	r0, r6
 1046 0140 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1047 0144 0028     		cmp	r0, #0
 1048 0146 9AD0     		beq	.L127
 1049 0148 04F59E63 		add	r3, r4, #1264
 1050 014c 1868     		ldr	r0, [r3]	@ float
 1051 014e FFF7FEFF 		bl	__aeabi_f2d
 1052 0152 0246     		mov	r2, r0
 1053 0154 0B46     		mov	r3, r1
 1054 0156 07A8     		add	r0, sp, #28
 1055 0158 6649     		ldr	r1, .L189+48
 1056 015a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1057 015e 0799     		ldr	r1, [sp, #28]
 1058 0160 3046     		mov	r0, r6
 1059 0162 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1060 0166 0028     		cmp	r0, #0
 1061 0168 89D0     		beq	.L127
 1062 016a 236C     		ldr	r3, [r4, #64]
 1063 016c 1868     		ldr	r0, [r3]
 1064 016e FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 1065 0172 037E     		ldrb	r3, [r0, #24]	@ zero_extendqisi2
 1066 0174 5B06     		lsls	r3, r3, #25
 1067 0176 00F1D980 		bmi	.L128
 1068              	.L133:
 1069 017a D4F8C802 		ldr	r0, [r4, #712]	@ float
 1070 017e FFF7FEFF 		bl	__aeabi_f2d
 1071 0182 236C     		ldr	r3, [r4, #64]
 1072 0184 8046     		mov	r8, r0
 1073 0186 1868     		ldr	r0, [r3]
 1074 0188 8946     		mov	r9, r1
 1075 018a FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 1076 018e 027E     		ldrb	r2, [r0, #24]	@ zero_extendqisi2
 1077 0190 594B     		ldr	r3, .L189+52
 1078 0192 5A49     		ldr	r1, .L189+56
 1079 0194 12F0010F 		tst	r2, #1
 1080 0198 08BF     		it	eq
 1081 019a 1946     		moveq	r1, r3
 1082 019c 0091     		str	r1, [sp]
 1083 019e 4246     		mov	r2, r8
ARM GAS  /tmp/ccJRi9N9.s 			page 20


 1084 01a0 5749     		ldr	r1, .L189+60
 1085 01a2 4B46     		mov	r3, r9
 1086 01a4 07A8     		add	r0, sp, #28
 1087 01a6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1088 01aa 0799     		ldr	r1, [sp, #28]
 1089 01ac 3046     		mov	r0, r6
 1090 01ae FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1091 01b2 0028     		cmp	r0, #0
 1092 01b4 3FF463AF 		beq	.L127
 1093 01b8 D4F89032 		ldr	r3, [r4, #656]
 1094 01bc D86A     		ldr	r0, [r3, #44]	@ float
 1095 01be 1F6B     		ldr	r7, [r3, #48]
 1096 01c0 FFF7FEFF 		bl	__aeabi_f2d
 1097 01c4 3B46     		mov	r3, r7
 1098 01c6 CDE90001 		strd	r0, [sp]
 1099 01ca 2A46     		mov	r2, r5
 1100 01cc 4D49     		ldr	r1, .L189+64
 1101 01ce 07A8     		add	r0, sp, #28
 1102 01d0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1103 01d4 0799     		ldr	r1, [sp, #28]
 1104 01d6 3046     		mov	r0, r6
 1105 01d8 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1106 01dc 0028     		cmp	r0, #0
 1107 01de 3FF44EAF 		beq	.L127
 1108 01e2 D4F89032 		ldr	r3, [r4, #656]
 1109 01e6 93ED027A 		vldr.32	s14, [r3, #8]
 1110 01ea F0EE007A 		vmov.f32	s15, #2.0e+0
 1111 01ee 77EE277A 		vadd.f32	s15, s14, s15
 1112 01f2 17EE900A 		vmov	r0, s15
 1113 01f6 FFF7FEFF 		bl	__aeabi_f2d
 1114 01fa 0246     		mov	r2, r0
 1115 01fc 0B46     		mov	r3, r1
 1116 01fe 07A8     		add	r0, sp, #28
 1117 0200 4149     		ldr	r1, .L189+68
 1118 0202 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1119 0206 4149     		ldr	r1, .L189+72
 1120 0208 07A8     		add	r0, sp, #28
 1121 020a FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1122 020e D4F89C22 		ldr	r2, [r4, #668]
 1123 0212 D4F89032 		ldr	r3, [r4, #656]
 1124 0216 DAB1     		cbz	r2, .L136
 1125 0218 3D4F     		ldr	r7, .L189+76
 1126 021a 0025     		movs	r5, #0
 1127              	.L137:
 1128 021c 022D     		cmp	r5, #2
 1129 021e 03EB8500 		add	r0, r3, r5, lsl #2
 1130 0222 04EB0501 		add	r1, r4, r5
 1131 0226 05F10105 		add	r5, r5, #1
 1132 022a 0FD0     		beq	.L135
 1133 022c 0068     		ldr	r0, [r0]	@ float
 1134 022e 91F85A84 		ldrb	r8, [r1, #1114]	@ zero_extendqisi2
 1135 0232 FFF7FEFF 		bl	__aeabi_f2d
 1136 0236 4246     		mov	r2, r8
 1137 0238 CDE90001 		strd	r0, [sp]
 1138 023c 3946     		mov	r1, r7
 1139 023e 07A8     		add	r0, sp, #28
 1140 0240 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
ARM GAS  /tmp/ccJRi9N9.s 			page 21


 1141 0244 D4F89032 		ldr	r3, [r4, #656]
 1142 0248 D4F89C22 		ldr	r2, [r4, #668]
 1143              	.L135:
 1144 024c AA42     		cmp	r2, r5
 1145 024e E5D8     		bhi	.L137
 1146              	.L136:
 1147 0250 9868     		ldr	r0, [r3, #8]	@ float
 1148 0252 FFF7FEFF 		bl	__aeabi_f2d
 1149 0256 0246     		mov	r2, r0
 1150 0258 0B46     		mov	r3, r1
 1151 025a 07A8     		add	r0, sp, #28
 1152 025c 2D49     		ldr	r1, .L189+80
 1153 025e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1154 0262 D4F89032 		ldr	r3, [r4, #656]
 1155 0266 DFED2C7A 		vldr.32	s15, .L189+84
 1156 026a 93ED097A 		vldr.32	s14, [r3, #36]
 1157 026e 67EE277A 		vmul.f32	s15, s14, s15
 1158 0272 17EE900A 		vmov	r0, s15
 1159 0276 FFF7FEFF 		bl	__aeabi_f2d
 1160 027a 0246     		mov	r2, r0
 1161 027c 0B46     		mov	r3, r1
 1162 027e 07A8     		add	r0, sp, #28
 1163 0280 2649     		ldr	r1, .L189+88
 1164 0282 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1165 0286 D4F89032 		ldr	r3, [r4, #656]
 1166 028a 2549     		ldr	r1, .L189+92
 1167 028c 9A8E     		ldrh	r2, [r3, #52]
 1168 028e 07A8     		add	r0, sp, #28
 1169 0290 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1170 0294 2349     		ldr	r1, .L189+96
 1171 0296 07A8     		add	r0, sp, #28
 1172 0298 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1173 029c 0799     		ldr	r1, [sp, #28]
 1174 029e 3046     		mov	r0, r6
 1175 02a0 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1176 02a4 0546     		mov	r5, r0
 1177 02a6 3046     		mov	r0, r6
 1178 02a8 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1179 02ac 0028     		cmp	r0, #0
 1180 02ae 3FF4E9AE 		beq	.L126
 1181 02b2 002D     		cmp	r5, #0
 1182 02b4 3FF4E6AE 		beq	.L126
 1183 02b8 2068     		ldr	r0, [r4]
 1184 02ba 1B4A     		ldr	r2, .L189+100
 1185 02bc B521     		movs	r1, #181
 1186 02be FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1187 02c2 A4E6     		b	.L120
 1188              	.L190:
 1189              		.align	2
 1190              	.L189:
 1191 02c4 00000000 		.word	reprap
 1192 02c8 28000000 		.word	.LC16
 1193 02cc 34000000 		.word	.LC17
 1194 02d0 10000000 		.word	.LC13
 1195 02d4 00000000 		.word	.LC12
 1196 02d8 58000000 		.word	.LC19
 1197 02dc 94010000 		.word	.LC37
ARM GAS  /tmp/ccJRi9N9.s 			page 22


 1198 02e0 7C000000 		.word	.LC20
 1199 02e4 3C000000 		.word	.LC18
 1200 02e8 B4000000 		.word	.LC22
 1201 02ec 9C000000 		.word	.LC21
 1202 02f0 C0000000 		.word	.LC23
 1203 02f4 CC000000 		.word	.LC24
 1204 02f8 24000000 		.word	.LC15
 1205 02fc 20000000 		.word	.LC14
 1206 0300 F0000000 		.word	.LC27
 1207 0304 00010000 		.word	.LC28
 1208 0308 18010000 		.word	.LC29
 1209 030c 28010000 		.word	.LC30
 1210 0310 34010000 		.word	.LC31
 1211 0314 3C010000 		.word	.LC32
 1212 0318 00007042 		.word	1114636288
 1213 031c 50010000 		.word	.LC33
 1214 0320 5C010000 		.word	.LC34
 1215 0324 64010000 		.word	.LC35
 1216 0328 6C010000 		.word	.LC36
 1217              	.L128:
 1218 032c 1549     		ldr	r1, .L191
 1219 032e 07A8     		add	r0, sp, #28
 1220 0330 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1221 0334 D4F8A032 		ldr	r3, [r4, #672]
 1222 0338 C3B1     		cbz	r3, .L131
 1223 033a DFF84CA0 		ldr	r10, .L191+4
 1224 033e 04F2CC49 		addw	r9, r4, #1228
 1225 0342 0027     		movs	r7, #0
 1226 0344 4FF04408 		mov	r8, #68
 1227              	.L132:
 1228 0348 59F8040B 		ldr	r0, [r9], #4	@ float
 1229 034c FFF7FEFF 		bl	__aeabi_f2d
 1230 0350 4246     		mov	r2, r8
 1231 0352 CDE90001 		strd	r0, [sp]
 1232 0356 5146     		mov	r1, r10
 1233 0358 07A8     		add	r0, sp, #28
 1234 035a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1235 035e D4F8A032 		ldr	r3, [r4, #672]
 1236 0362 0137     		adds	r7, r7, #1
 1237 0364 BB42     		cmp	r3, r7
 1238 0366 4FF03A08 		mov	r8, #58
 1239 036a EDD8     		bhi	.L132
 1240              	.L131:
 1241 036c 0A21     		movs	r1, #10
 1242 036e 07A8     		add	r0, sp, #28
 1243 0370 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1244 0374 0799     		ldr	r1, [sp, #28]
 1245 0376 3046     		mov	r0, r6
 1246 0378 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1247 037c 0028     		cmp	r0, #0
 1248 037e 3FF47EAE 		beq	.L127
 1249 0382 FAE6     		b	.L133
 1250              	.L192:
 1251              		.align	2
 1252              	.L191:
 1253 0384 E0000000 		.word	.LC25
 1254 0388 E8000000 		.word	.LC26
ARM GAS  /tmp/ccJRi9N9.s 			page 23


 1255              		.size	_ZN6GCodes14SaveResumeInfoEb, .-_ZN6GCodes14SaveResumeInfoEb
 1256              		.section	.text._ZN6GCodes11DiagnosticsE11MessageType,"ax",%progbits
 1257              		.align	1
 1258              		.p2align 2,,3
 1259              		.global	_ZN6GCodes11DiagnosticsE11MessageType
 1260              		.syntax unified
 1261              		.thumb
 1262              		.thumb_func
 1263              		.fpu fpv4-sp-d16
 1264              		.type	_ZN6GCodes11DiagnosticsE11MessageType, %function
 1265              	_ZN6GCodes11DiagnosticsE11MessageType:
 1266              		@ args = 0, pretend = 0, frame = 0
 1267              		@ frame_needed = 0, uses_anonymous_args = 0
 1268 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1269 0002 0646     		mov	r6, r0
 1270 0004 83B0     		sub	sp, sp, #12
 1271 0006 0D46     		mov	r5, r1
 1272 0008 0068     		ldr	r0, [r0]
 1273 000a 194A     		ldr	r2, .L199
 1274 000c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1275 0010 184A     		ldr	r2, .L199+4
 1276 0012 D6F85031 		ldr	r3, [r6, #336]
 1277 0016 3068     		ldr	r0, [r6]
 1278 0018 2946     		mov	r1, r5
 1279 001a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1280 001e 164B     		ldr	r3, .L199+8
 1281 0020 3468     		ldr	r4, [r6]
 1282 0022 1F68     		ldr	r7, [r3]
 1283 0024 FFF7FEFF 		bl	_ZN17GCodeMachineState11GetNumInUseEv
 1284 0028 3B46     		mov	r3, r7
 1285 002a 0090     		str	r0, [sp]
 1286 002c 2946     		mov	r1, r5
 1287 002e 2046     		mov	r0, r4
 1288 0030 124A     		ldr	r2, .L199+12
 1289 0032 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1290 0036 F36D     		ldr	r3, [r6, #92]
 1291 0038 3068     		ldr	r0, [r6]
 1292 003a BBB1     		cbz	r3, .L196
 1293 003c DB68     		ldr	r3, [r3, #12]
 1294              	.L194:
 1295 003e 104A     		ldr	r2, .L199+16
 1296 0040 2946     		mov	r1, r5
 1297 0042 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1298 0046 06F11804 		add	r4, r6, #24
 1299 004a 06F13807 		add	r7, r6, #56
 1300              	.L195:
 1301 004e 54F8040B 		ldr	r0, [r4], #4
 1302 0052 2946     		mov	r1, r5
 1303 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer11DiagnosticsE11MessageType
 1304 0058 BC42     		cmp	r4, r7
 1305 005a F8D1     		bne	.L195
 1306 005c D6F8F805 		ldr	r0, [r6, #1528]
 1307 0060 2946     		mov	r1, r5
 1308 0062 03B0     		add	sp, sp, #12
 1309              		@ sp needed
 1310 0064 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 1311 0068 FFF7FEBF 		b	_ZN10GCodeQueue11DiagnosticsE11MessageType
ARM GAS  /tmp/ccJRi9N9.s 			page 24


 1312              	.L196:
 1313 006c 054B     		ldr	r3, .L199+20
 1314 006e E6E7     		b	.L194
 1315              	.L200:
 1316              		.align	2
 1317              	.L199:
 1318 0070 08000000 		.word	.LC39
 1319 0074 18000000 		.word	.LC40
 1320 0078 00000000 		.word	_ZN17GCodeMachineState12numAllocatedE
 1321 007c 2C000000 		.word	.LC41
 1322 0080 54000000 		.word	.LC42
 1323 0084 00000000 		.word	.LC38
 1324              		.size	_ZN6GCodes11DiagnosticsE11MessageType, .-_ZN6GCodes11DiagnosticsE11MessageType
 1325              		.section	.text._ZN6GCodes4PushER11GCodeBuffer,"ax",%progbits
 1326              		.align	1
 1327              		.p2align 2,,3
 1328              		.global	_ZN6GCodes4PushER11GCodeBuffer
 1329              		.syntax unified
 1330              		.thumb
 1331              		.thumb_func
 1332              		.fpu fpv4-sp-d16
 1333              		.type	_ZN6GCodes4PushER11GCodeBuffer, %function
 1334              	_ZN6GCodes4PushER11GCodeBuffer:
 1335              		@ args = 0, pretend = 0, frame = 0
 1336              		@ frame_needed = 0, uses_anonymous_args = 0
 1337 0000 38B5     		push	{r3, r4, r5, lr}
 1338 0002 0546     		mov	r5, r0
 1339 0004 0846     		mov	r0, r1
 1340 0006 FFF7FEFF 		bl	_ZN11GCodeBuffer9PushStateEv
 1341 000a 0446     		mov	r4, r0
 1342 000c 10B9     		cbnz	r0, .L202
 1343 000e 2846     		mov	r0, r5
 1344 0010 FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer.part.57
 1345              	.L202:
 1346 0014 2046     		mov	r0, r4
 1347 0016 38BD     		pop	{r3, r4, r5, pc}
 1348              		.size	_ZN6GCodes4PushER11GCodeBuffer, .-_ZN6GCodes4PushER11GCodeBuffer
 1349              		.section	.text._ZN6GCodes3PopER11GCodeBuffer,"ax",%progbits
 1350              		.align	1
 1351              		.p2align 2,,3
 1352              		.global	_ZN6GCodes3PopER11GCodeBuffer
 1353              		.syntax unified
 1354              		.thumb
 1355              		.thumb_func
 1356              		.fpu fpv4-sp-d16
 1357              		.type	_ZN6GCodes3PopER11GCodeBuffer, %function
 1358              	_ZN6GCodes3PopER11GCodeBuffer:
 1359              		@ args = 0, pretend = 0, frame = 0
 1360              		@ frame_needed = 0, uses_anonymous_args = 0
 1361 0000 10B5     		push	{r4, lr}
 1362 0002 0446     		mov	r4, r0
 1363 0004 0846     		mov	r0, r1
 1364 0006 FFF7FEFF 		bl	_ZN11GCodeBuffer8PopStateEv
 1365 000a 00B1     		cbz	r0, .L207
 1366 000c 10BD     		pop	{r4, pc}
 1367              	.L207:
 1368 000e 2068     		ldr	r0, [r4]
ARM GAS  /tmp/ccJRi9N9.s 			page 25


 1369 0010 034A     		ldr	r2, .L208
 1370 0012 40F2B511 		movw	r1, #437
 1371 0016 BDE81040 		pop	{r4, lr}
 1372 001a FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 1373              	.L209:
 1374 001e 00BF     		.align	2
 1375              	.L208:
 1376 0020 00000000 		.word	.LC43
 1377              		.size	_ZN6GCodes3PopER11GCodeBuffer, .-_ZN6GCodes3PopER11GCodeBuffer
 1378              		.section	.text._ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer,"ax",%progbits
 1379              		.align	1
 1380              		.p2align 2,,3
 1381              		.global	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer
 1382              		.syntax unified
 1383              		.thumb
 1384              		.thumb_func
 1385              		.fpu fpv4-sp-d16
 1386              		.type	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer, %function
 1387              	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer:
 1388              		@ args = 0, pretend = 0, frame = 40
 1389              		@ frame_needed = 0, uses_anonymous_args = 0
 1390 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1391 0004 90F84F31 		ldrb	r3, [r0, #335]	@ zero_extendqisi2
 1392 0008 13F01002 		ands	r2, r3, #16
 1393 000c 8AB0     		sub	sp, sp, #40
 1394 000e 0446     		mov	r4, r0
 1395 0010 0D46     		mov	r5, r1
 1396 0012 02D1     		bne	.L211
 1397 0014 90F8A810 		ldrb	r1, [r0, #168]	@ zero_extendqisi2
 1398 0018 69BB     		cbnz	r1, .L212
 1399              	.L211:
 1400 001a 4621     		movs	r1, #70
 1401 001c 2846     		mov	r0, r5
 1402 001e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1403 0022 80BB     		cbnz	r0, .L259
 1404              	.L213:
 1405 0024 AA68     		ldr	r2, [r5, #8]
 1406 0026 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 1407 002a 5268     		ldr	r2, [r2, #4]	@ float
 1408 002c C4F83021 		str	r2, [r4, #304]	@ float
 1409 0030 43F02003 		orr	r3, r3, #32
 1410 0034 84F84F31 		strb	r3, [r4, #335]
 1411              	.L216:
 1412 0038 D4F89832 		ldr	r3, [r4, #664]
 1413 003c 0B2B     		cmp	r3, #11
 1414 003e 09D8     		bhi	.L217
 1415 0040 3733     		adds	r3, r3, #55
 1416 0042 0021     		movs	r1, #0
 1417 0044 04EB8303 		add	r3, r4, r3, lsl #2
 1418 0048 04F58672 		add	r2, r4, #268
 1419              	.L218:
 1420 004c 43F8041B 		str	r1, [r3], #4	@ float
 1421 0050 9342     		cmp	r3, r2
 1422 0052 FBD1     		bne	.L218
 1423              	.L217:
 1424 0054 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 1425 0058 D4F8C822 		ldr	r2, [r4, #712]	@ float
ARM GAS  /tmp/ccJRi9N9.s 			page 26


 1426 005c C4F83421 		str	r2, [r4, #308]	@ float
 1427 0060 6FF3C303 		bfc	r3, #3, #1
 1428 0064 D906     		lsls	r1, r3, #27
 1429 0066 84F84F31 		strb	r3, [r4, #335]
 1430 006a 1FD4     		bmi	.L219
 1431              	.L221:
 1432 006c 0126     		movs	r6, #1
 1433              	.L220:
 1434 006e 3046     		mov	r0, r6
 1435 0070 0AB0     		add	sp, sp, #40
 1436              		@ sp needed
 1437 0072 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1438              	.L212:
 1439 0076 7D49     		ldr	r1, .L263
 1440 0078 C0F83011 		str	r1, [r0, #304]	@ float
 1441 007c 62F34513 		bfi	r3, r2, #5, #1
 1442 0080 80F84F31 		strb	r3, [r0, #335]
 1443 0084 D8E7     		b	.L216
 1444              	.L259:
 1445 0086 2846     		mov	r0, r5
 1446 0088 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1447 008c D4EDBD7A 		vldr.32	s15, [r4, #756]
 1448 0090 94F84E31 		ldrb	r3, [r4, #334]	@ zero_extendqisi2
 1449 0094 60EE277A 		vmul.f32	s15, s0, s15
 1450 0098 002B     		cmp	r3, #0
 1451 009a 78D0     		beq	.L260
 1452 009c 9FED740A 		vldr.32	s0, .L263+4
 1453 00a0 67EE807A 		vmul.f32	s15, s15, s0
 1454              	.L215:
 1455 00a4 AB68     		ldr	r3, [r5, #8]
 1456 00a6 C3ED017A 		vstr.32	s15, [r3, #4]
 1457 00aa BBE7     		b	.L213
 1458              	.L219:
 1459 00ac 4521     		movs	r1, #69
 1460 00ae 2846     		mov	r0, r5
 1461 00b0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1462 00b4 0646     		mov	r6, r0
 1463 00b6 0028     		cmp	r0, #0
 1464 00b8 D8D0     		beq	.L221
 1465 00ba 6E4B     		ldr	r3, .L263+8
 1466 00bc 1F6B     		ldr	r7, [r3, #48]
 1467 00be 002F     		cmp	r7, #0
 1468 00c0 6CD0     		beq	.L261
 1469 00c2 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 1470 00c6 43F00803 		orr	r3, r3, #8
 1471 00ca 84F84F31 		strb	r3, [r4, #335]
 1472 00ce D7F89480 		ldr	r8, [r7, #148]
 1473 00d2 B8F1000F 		cmp	r8, #0
 1474 00d6 C9D0     		beq	.L221
 1475 00d8 0AAA     		add	r2, sp, #40
 1476 00da 0023     		movs	r3, #0
 1477 00dc 42F8288D 		str	r8, [r2, #-40]!
 1478 00e0 01A9     		add	r1, sp, #4
 1479 00e2 2846     		mov	r0, r5
 1480 00e4 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 1481 00e8 009B     		ldr	r3, [sp]
 1482 00ea 012B     		cmp	r3, #1
ARM GAS  /tmp/ccJRi9N9.s 			page 27


 1483 00ec AB68     		ldr	r3, [r5, #8]
 1484 00ee 5AD0     		beq	.L262
 1485 00f0 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 1486 00f2 DB07     		lsls	r3, r3, #31
 1487 00f4 40F1B280 		bpl	.L232
 1488 00f8 07EB0803 		add	r3, r7, r8
 1489 00fc 94EDBD6A 		vldr.32	s12, [r4, #756]
 1490 0100 B033     		adds	r3, r3, #176
 1491 0102 01AA     		add	r2, sp, #4
 1492 0104 B037     		adds	r7, r7, #176
 1493              	.L239:
 1494 0106 F2EC017A 		vldmia.32	r2!, {s15}
 1495 010a 67EE867A 		vmul.f32	s15, s15, s12
 1496 010e F5EE407A 		vcmp.f32	s15, #0
 1497 0112 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1498 0116 36D0     		beq	.L234
 1499 0118 3978     		ldrb	r1, [r7]	@ zero_extendqisi2
 1500 011a A868     		ldr	r0, [r5, #8]
 1501 011c 04EB810C 		add	ip, r4, r1, lsl #2
 1502 0120 007E     		ldrb	r0, [r0, #24]	@ zero_extendqisi2
 1503 0122 9CEDB37A 		vldr.32	s14, [ip, #716]
 1504 0126 0CF2CC48 		addw	r8, ip, #1228
 1505 012a D8ED006A 		vldr.32	s13, [r8]
 1506 012e 4006     		lsls	r0, r0, #25
 1507 0130 48BF     		it	mi
 1508 0132 67EEA67A 		vmulmi.f32	s15, s15, s13
 1509 0136 0CF5956E 		add	lr, ip, #1192
 1510 013a 37EE277A 		vadd.f32	s14, s14, s15
 1511 013e 8CEDB37A 		vstr.32	s14, [ip, #716]
 1512 0142 94F8AD00 		ldrb	r0, [r4, #173]	@ zero_extendqisi2
 1513 0146 28B9     		cbnz	r0, .L236
 1514 0148 94EDBC7A 		vldr.32	s14, [r4, #752]
 1515 014c 37EE277A 		vadd.f32	s14, s14, s15
 1516 0150 84EDBC7A 		vstr.32	s14, [r4, #752]
 1517              	.L236:
 1518 0154 9EED007A 		vldr.32	s14, [lr]
 1519 0158 D4F89802 		ldr	r0, [r4, #664]
 1520 015c 67EE877A 		vmul.f32	s15, s15, s14
 1521 0160 0144     		add	r1, r1, r0
 1522 0162 67EEA67A 		vmul.f32	s15, s15, s13
 1523 0166 04EB8100 		add	r0, r4, r1, lsl #2
 1524 016a C0ED377A 		vstr.32	s15, [r0, #220]
 1525 016e 94F84EC1 		ldrb	ip, [r4, #334]	@ zero_extendqisi2
 1526 0172 BCF1010F 		cmp	ip, #1
 1527 0176 06D1     		bne	.L234
 1528 0178 D4F84801 		ldr	r0, [r4, #328]
 1529 017c 0CFA01F1 		lsl	r1, ip, r1
 1530 0180 0143     		orrs	r1, r1, r0
 1531 0182 C4F84811 		str	r1, [r4, #328]
 1532              	.L234:
 1533 0186 0137     		adds	r7, r7, #1
 1534 0188 BB42     		cmp	r3, r7
 1535 018a BCD1     		bne	.L239
 1536 018c 6FE7     		b	.L220
 1537              	.L260:
 1538 018e 04F2A443 		addw	r3, r4, #1188
 1539 0192 93ED000A 		vldr.32	s0, [r3]
ARM GAS  /tmp/ccJRi9N9.s 			page 28


 1540 0196 67EE807A 		vmul.f32	s15, s15, s0
 1541 019a 83E7     		b	.L215
 1542              	.L261:
 1543 019c 0123     		movs	r3, #1
 1544 019e 3E46     		mov	r6, r7
 1545 01a0 84F88736 		strb	r3, [r4, #1671]
 1546 01a4 63E7     		b	.L220
 1547              	.L262:
 1548 01a6 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 1549 01a8 DDED016A 		vldr.32	s13, [sp, #4]
 1550 01ac D4EDBD7A 		vldr.32	s15, [r4, #756]
 1551 01b0 DA07     		lsls	r2, r3, #31
 1552 01b2 66EEA76A 		vmul.f32	s13, s13, s15
 1553 01b6 05D4     		bmi	.L224
 1554 01b8 D4EDB27A 		vldr.32	s15, [r4, #712]
 1555 01bc C4EDB26A 		vstr.32	s13, [r4, #712]
 1556 01c0 76EEE76A 		vsub.f32	s13, s13, s15
 1557              	.L224:
 1558 01c4 07F13003 		add	r3, r7, #48
 1559 01c8 03EB8808 		add	r8, r3, r8, lsl #2
 1560 01cc B037     		adds	r7, r7, #176
 1561              	.L230:
 1562 01ce F3EC017A 		vldmia.32	r3!, {s15}
 1563 01d2 67EEA67A 		vmul.f32	s15, s15, s13
 1564 01d6 F5EE407A 		vcmp.f32	s15, #0
 1565 01da F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1566 01de 38D0     		beq	.L226
 1567 01e0 A968     		ldr	r1, [r5, #8]
 1568 01e2 3A78     		ldrb	r2, [r7]	@ zero_extendqisi2
 1569 01e4 91F818E0 		ldrb	lr, [r1, #24]	@ zero_extendqisi2
 1570 01e8 02F59970 		add	r0, r2, #306
 1571 01ec 1EF0400F 		tst	lr, #64
 1572 01f0 04EB8000 		add	r0, r4, r0, lsl #2
 1573 01f4 18BF     		it	ne
 1574 01f6 90ED017A 		vldrne.32	s14, [r0, #4]
 1575 01fa 04EB8201 		add	r1, r4, r2, lsl #2
 1576 01fe 18BF     		it	ne
 1577 0200 67EE877A 		vmulne.f32	s15, s15, s14
 1578 0204 91EDB37A 		vldr.32	s14, [r1, #716]
 1579 0208 37EE277A 		vadd.f32	s14, s14, s15
 1580 020c 01F5956C 		add	ip, r1, #1192
 1581 0210 81EDB37A 		vstr.32	s14, [r1, #716]
 1582 0214 94F8AD10 		ldrb	r1, [r4, #173]	@ zero_extendqisi2
 1583 0218 29B9     		cbnz	r1, .L228
 1584 021a 94EDBC7A 		vldr.32	s14, [r4, #752]
 1585 021e 37EE277A 		vadd.f32	s14, s14, s15
 1586 0222 84EDBC7A 		vstr.32	s14, [r4, #752]
 1587              	.L228:
 1588 0226 D4F89812 		ldr	r1, [r4, #664]
 1589 022a 9CED007A 		vldr.32	s14, [ip]
 1590 022e 0A44     		add	r2, r2, r1
 1591 0230 67EE277A 		vmul.f32	s15, s14, s15
 1592 0234 04EB8201 		add	r1, r4, r2, lsl #2
 1593 0238 C1ED377A 		vstr.32	s15, [r1, #220]
 1594 023c 94F84E01 		ldrb	r0, [r4, #334]	@ zero_extendqisi2
 1595 0240 0128     		cmp	r0, #1
 1596 0242 06D1     		bne	.L226
ARM GAS  /tmp/ccJRi9N9.s 			page 29


 1597 0244 D4F84811 		ldr	r1, [r4, #328]
 1598 0248 00FA02F2 		lsl	r2, r0, r2
 1599 024c 0A43     		orrs	r2, r2, r1
 1600 024e C4F84821 		str	r2, [r4, #328]
 1601              	.L226:
 1602 0252 9845     		cmp	r8, r3
 1603 0254 07F10107 		add	r7, r7, #1
 1604 0258 B9D1     		bne	.L230
 1605 025a 08E7     		b	.L220
 1606              	.L232:
 1607 025c 2068     		ldr	r0, [r4]
 1608 025e 064A     		ldr	r2, .L263+12
 1609 0260 40F2B511 		movw	r1, #437
 1610 0264 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1611 0268 01E7     		b	.L220
 1612              	.L264:
 1613 026a 00BF     		.align	2
 1614              	.L263:
 1615 026c 00A08C46 		.word	1183621120
 1616 0270 8988883C 		.word	1015580809
 1617 0274 00000000 		.word	reprap
 1618 0278 00000000 		.word	.LC44
 1619              		.size	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer, .-_ZN6GCodes33LoadExtrusionAnd
 1620              		.section	.text._ZN6GCodes20CheckEnoughAxesHomedEm,"ax",%progbits
 1621              		.align	1
 1622              		.p2align 2,,3
 1623              		.global	_ZN6GCodes20CheckEnoughAxesHomedEm
 1624              		.syntax unified
 1625              		.thumb
 1626              		.thumb_func
 1627              		.fpu fpv4-sp-d16
 1628              		.type	_ZN6GCodes20CheckEnoughAxesHomedEm, %function
 1629              	_ZN6GCodes20CheckEnoughAxesHomedEm:
 1630              		@ args = 0, pretend = 0, frame = 0
 1631              		@ frame_needed = 0, uses_anonymous_args = 0
 1632 0000 70B5     		push	{r4, r5, r6, lr}
 1633 0002 0E4B     		ldr	r3, .L269
 1634 0004 0E4E     		ldr	r6, .L269+4
 1635 0006 9B68     		ldr	r3, [r3, #8]
 1636 0008 90F86F24 		ldrb	r2, [r0, #1135]	@ zero_extendqisi2
 1637 000c D3F8585A 		ldr	r5, [r3, #2648]
 1638 0010 2B68     		ldr	r3, [r5]
 1639 0012 9B6D     		ldr	r3, [r3, #88]
 1640 0014 B342     		cmp	r3, r6
 1641 0016 0446     		mov	r4, r0
 1642 0018 0CD1     		bne	.L266
 1643 001a 002A     		cmp	r2, #0
 1644 001c 0846     		mov	r0, r1
 1645 001e 14BF     		ite	ne
 1646 0020 0846     		movne	r0, r1
 1647 0022 0020     		moveq	r0, #0
 1648              	.L267:
 1649 0024 D4F87434 		ldr	r3, [r4, #1140]
 1650 0028 30EA0303 		bics	r3, r0, r3
 1651 002c 14BF     		ite	ne
 1652 002e 0120     		movne	r0, #1
 1653 0030 0020     		moveq	r0, #0
ARM GAS  /tmp/ccJRi9N9.s 			page 30


 1654 0032 70BD     		pop	{r4, r5, r6, pc}
 1655              	.L266:
 1656 0034 2846     		mov	r0, r5
 1657 0036 9847     		blx	r3
 1658 0038 F4E7     		b	.L267
 1659              	.L270:
 1660 003a 00BF     		.align	2
 1661              	.L269:
 1662 003c 00000000 		.word	reprap
 1663 0040 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 1664              		.size	_ZN6GCodes20CheckEnoughAxesHomedEm, .-_ZN6GCodes20CheckEnoughAxesHomedEm
 1665              		.section	.text._ZN6GCodes12FinaliseMoveER11GCodeBuffer,"ax",%progbits
 1666              		.align	1
 1667              		.p2align 2,,3
 1668              		.global	_ZN6GCodes12FinaliseMoveER11GCodeBuffer
 1669              		.syntax unified
 1670              		.thumb
 1671              		.thumb_func
 1672              		.fpu fpv4-sp-d16
 1673              		.type	_ZN6GCodes12FinaliseMoveER11GCodeBuffer, %function
 1674              	_ZN6GCodes12FinaliseMoveER11GCodeBuffer:
 1675              		@ args = 0, pretend = 0, frame = 0
 1676              		@ frame_needed = 0, uses_anonymous_args = 0
 1677 0000 70B5     		push	{r4, r5, r6, lr}
 1678 0002 2DED028B 		vpush.64	{d8}
 1679 0006 D0F84831 		ldr	r3, [r0, #328]
 1680 000a 0446     		mov	r4, r0
 1681 000c 0E46     		mov	r6, r1
 1682 000e 002B     		cmp	r3, #0
 1683 0010 44D1     		bne	.L280
 1684 0012 90F89821 		ldrb	r2, [r0, #408]	@ zero_extendqisi2
 1685 0016 82F00102 		eor	r2, r2, #1
 1686              	.L272:
 1687 001a 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 1688 001e 216C     		ldr	r1, [r4, #64]
 1689 0020 62F38203 		bfi	r3, r2, #2, #1
 1690 0024 84F84F31 		strb	r3, [r4, #335]
 1691 0028 0B68     		ldr	r3, [r1]
 1692 002a B342     		cmp	r3, r6
 1693 002c 5AD0     		beq	.L284
 1694 002e 4FF0FF30 		mov	r0, #-1
 1695              	.L273:
 1696 0032 D4F85451 		ldr	r5, [r4, #340]
 1697 0036 C4F83801 		str	r0, [r4, #312]
 1698 003a 012D     		cmp	r5, #1
 1699 003c 4CD9     		bls	.L274
 1700 003e 0123     		movs	r3, #1
 1701 0040 84F89931 		strb	r3, [r4, #409]
 1702 0044 B368     		ldr	r3, [r6, #8]
 1703 0046 0222     		movs	r2, #2
 1704 0048 1A75     		strb	r2, [r3, #20]
 1705 004a D4F89832 		ldr	r3, [r4, #664]
 1706 004e D4F85451 		ldr	r5, [r4, #340]
 1707 0052 0B2B     		cmp	r3, #11
 1708 0054 10D8     		bhi	.L276
 1709 0056 07EE905A 		vmov	s15, r5	@ int
 1710 005a 3733     		adds	r3, r3, #55
ARM GAS  /tmp/ccJRi9N9.s 			page 31


 1711 005c F8EE676A 		vcvt.f32.u32	s13, s15
 1712 0060 04EB8303 		add	r3, r4, r3, lsl #2
 1713 0064 04F58672 		add	r2, r4, #268
 1714              	.L277:
 1715 0068 93ED007A 		vldr.32	s14, [r3]
 1716 006c C7EE267A 		vdiv.f32	s15, s14, s13
 1717 0070 E3EC017A 		vstmia.32	r3!, {s15}
 1718 0074 9342     		cmp	r3, r2
 1719 0076 F7D1     		bne	.L277
 1720              	.L276:
 1721 0078 D4ED587A 		vldr.32	s15, [r4, #352]
 1722 007c F5EE407A 		vcmp.f32	s15, #0
 1723 0080 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1724 0084 0CD1     		bne	.L285
 1725              	.L278:
 1726 0086 C4F85851 		str	r5, [r4, #344]
 1727 008a C4ED597A 		vstr.32	s15, [r4, #356]
 1728              		.syntax unified
 1729              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1730 008e BFF35F8F 		dmb
 1731              	@ 0 "" 2
 1732              		.thumb
 1733              		.syntax unified
 1734 0092 C4F85051 		str	r5, [r4, #336]
 1735 0096 BDEC028B 		vldm	sp!, {d8}
 1736 009a 70BD     		pop	{r4, r5, r6, pc}
 1737              	.L280:
 1738 009c 0022     		movs	r2, #0
 1739 009e BCE7     		b	.L272
 1740              	.L285:
 1741 00a0 07EE105A 		vmov	s14, r5	@ int
 1742 00a4 B8EE478A 		vcvt.f32.u32	s16, s14
 1743 00a8 28EE278A 		vmul.f32	s16, s16, s15
 1744 00ac B0EE480A 		vmov.f32	s0, s16
 1745 00b0 FFF7FEFF 		bl	floorf
 1746 00b4 FCEEC07A 		vcvt.u32.f32	s15, s0
 1747 00b8 17EE903A 		vmov	r3, s15	@ int
 1748 00bc 78EE407A 		vsub.f32	s15, s16, s0
 1749 00c0 EB1A     		subs	r3, r5, r3
 1750 00c2 C4ED597A 		vstr.32	s15, [r4, #356]
 1751 00c6 C4F85831 		str	r3, [r4, #344]
 1752              		.syntax unified
 1753              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 1754 00ca BFF35F8F 		dmb
 1755              	@ 0 "" 2
 1756              		.thumb
 1757              		.syntax unified
 1758 00ce C4F85051 		str	r5, [r4, #336]
 1759 00d2 BDEC028B 		vldm	sp!, {d8}
 1760 00d6 70BD     		pop	{r4, r5, r6, pc}
 1761              	.L274:
 1762 00d8 0023     		movs	r3, #0
 1763 00da D4ED587A 		vldr.32	s15, [r4, #352]
 1764 00de 84F89931 		strb	r3, [r4, #409]
 1765 00e2 D0E7     		b	.L278
 1766              	.L284:
 1767 00e4 E068     		ldr	r0, [r4, #12]
ARM GAS  /tmp/ccJRi9N9.s 			page 32


 1768 00e6 0368     		ldr	r3, [r0]
 1769 00e8 9B68     		ldr	r3, [r3, #8]
 1770 00ea 9847     		blx	r3
 1771 00ec 0146     		mov	r1, r0
 1772 00ee 3046     		mov	r0, r6
 1773 00f0 FFF7FEFF 		bl	_ZNK11GCodeBuffer15GetFilePositionEj
 1774 00f4 9DE7     		b	.L273
 1775              		.size	_ZN6GCodes12FinaliseMoveER11GCodeBuffer, .-_ZN6GCodes12FinaliseMoveER11GCodeBuffer
 1776 00f6 00BF     		.section	.text._ZN6GCodes8ReadMoveERNS_7RawMoveE,"ax",%progbits
 1777              		.align	1
 1778              		.p2align 2,,3
 1779              		.global	_ZN6GCodes8ReadMoveERNS_7RawMoveE
 1780              		.syntax unified
 1781              		.thumb
 1782              		.thumb_func
 1783              		.fpu fpv4-sp-d16
 1784              		.type	_ZN6GCodes8ReadMoveERNS_7RawMoveE, %function
 1785              	_ZN6GCodes8ReadMoveERNS_7RawMoveE:
 1786              		@ args = 0, pretend = 0, frame = 0
 1787              		@ frame_needed = 0, uses_anonymous_args = 0
 1788 0000 D0F85031 		ldr	r3, [r0, #336]
 1789 0004 002B     		cmp	r3, #0
 1790 0006 5ED0     		beq	.L307
 1791 0008 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1792 000c 0F46     		mov	r7, r1
 1793 000e 0446     		mov	r4, r0
 1794 0010 00F1DC05 		add	r5, r0, #220
 1795 0014 2946     		mov	r1, r5
 1796 0016 82B0     		sub	sp, sp, #8
 1797 0018 7422     		movs	r2, #116
 1798 001a 3846     		mov	r0, r7
 1799 001c FFF7FEFF 		bl	memcpy
 1800 0020 D4F85011 		ldr	r1, [r4, #336]
 1801 0024 0129     		cmp	r1, #1
 1802 0026 6FD0     		beq	.L332
 1803 0028 94F89831 		ldrb	r3, [r4, #408]	@ zero_extendqisi2
 1804 002c 002B     		cmp	r3, #0
 1805 002e 40F09280 		bne	.L333
 1806              	.L292:
 1807 0032 D4F89C22 		ldr	r2, [r4, #668]
 1808 0036 002A     		cmp	r2, #0
 1809 0038 49D0     		beq	.L293
 1810 003a B846     		mov	r8, r7
 1811 003c 0026     		movs	r6, #0
 1812 003e FBB1     		cbz	r3, .L294
 1813              	.L335:
 1814 0040 022E     		cmp	r6, #2
 1815 0042 1DD0     		beq	.L294
 1816 0044 D4F84431 		ldr	r3, [r4, #324]
 1817 0048 F340     		lsrs	r3, r3, r6
 1818 004a DA07     		lsls	r2, r3, #31
 1819 004c 29D5     		bpl	.L295
 1820 004e 94ED640A 		vldr.32	s0, [r4, #400]
 1821 0052 FFF7FEFF 		bl	sinf
 1822 0056 94ED637A 		vldr.32	s14, [r4, #396]
 1823 005a D5ED237A 		vldr.32	s15, [r5, #140]
 1824 005e E7EE007A 		vfma.f32	s15, s14, s0
ARM GAS  /tmp/ccJRi9N9.s 			page 33


 1825 0062 C5ED0C7A 		vstr.32	s15, [r5, #48]
 1826              	.L296:
 1827 0066 E8EC017A 		vstmia.32	r8!, {s15}
 1828 006a D4F89C22 		ldr	r2, [r4, #668]
 1829 006e 0136     		adds	r6, r6, #1
 1830 0070 B242     		cmp	r2, r6
 1831 0072 05F10405 		add	r5, r5, #4
 1832 0076 28D9     		bls	.L334
 1833 0078 94F89831 		ldrb	r3, [r4, #408]	@ zero_extendqisi2
 1834 007c 002B     		cmp	r3, #0
 1835 007e DFD1     		bne	.L335
 1836              	.L294:
 1837 0080 95ED0C6A 		vldr.32	s12, [r5, #48]
 1838 0084 D4ED547A 		vldr.32	s15, [r4, #336]	@ int
 1839 0088 D5ED006A 		vldr.32	s13, [r5]
 1840 008c B8EE677A 		vcvt.f32.u32	s14, s15
 1841 0090 76EEC66A 		vsub.f32	s13, s13, s12
 1842 0094 C6EE877A 		vdiv.f32	s15, s13, s14
 1843 0098 77EE867A 		vadd.f32	s15, s15, s12
 1844 009c C5ED0C7A 		vstr.32	s15, [r5, #48]
 1845 00a0 E1E7     		b	.L296
 1846              	.L295:
 1847 00a2 D4F84031 		ldr	r3, [r4, #320]
 1848 00a6 F340     		lsrs	r3, r3, r6
 1849 00a8 DB07     		lsls	r3, r3, #31
 1850 00aa E9D5     		bpl	.L294
 1851 00ac 94ED640A 		vldr.32	s0, [r4, #400]
 1852 00b0 FFF7FEFF 		bl	cosf
 1853 00b4 94ED637A 		vldr.32	s14, [r4, #396]
 1854 00b8 D5ED237A 		vldr.32	s15, [r5, #140]
 1855 00bc E7EE007A 		vfma.f32	s15, s14, s0
 1856 00c0 C5ED0C7A 		vstr.32	s15, [r5, #48]
 1857 00c4 CFE7     		b	.L296
 1858              	.L307:
 1859 00c6 1846     		mov	r0, r3
 1860 00c8 7047     		bx	lr
 1861              	.L334:
 1862 00ca D4F85011 		ldr	r1, [r4, #336]
 1863              	.L293:
 1864 00ce D4F85831 		ldr	r3, [r4, #344]
 1865 00d2 8B42     		cmp	r3, r1
 1866 00d4 48D3     		bcc	.L336
 1867 00d6 94F86E04 		ldrb	r0, [r4, #1134]	@ zero_extendqisi2
 1868 00da 0028     		cmp	r0, #0
 1869 00dc 4BD1     		bne	.L337
 1870              	.L301:
 1871 00de 8B42     		cmp	r3, r1
 1872 00e0 7BD0     		beq	.L338
 1873              	.L304:
 1874 00e2 0139     		subs	r1, r1, #1
 1875 00e4 07EE901A 		vmov	s15, r1	@ int
 1876 00e8 F8EE676A 		vcvt.f32.u32	s13, s15
 1877 00ec D4ED557A 		vldr.32	s15, [r4, #340]	@ int
 1878 00f0 C4F85011 		str	r1, [r4, #336]
 1879 00f4 F8EE677A 		vcvt.f32.u32	s15, s15
 1880 00f8 0120     		movs	r0, #1
 1881 00fa 86EEA77A 		vdiv.f32	s14, s13, s15
ARM GAS  /tmp/ccJRi9N9.s 			page 34


 1882 00fe 87ED187A 		vstr.32	s14, [r7, #96]
 1883              	.L287:
 1884 0102 02B0     		add	sp, sp, #8
 1885              		@ sp needed
 1886 0104 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1887              	.L332:
 1888 0108 D4F85831 		ldr	r3, [r4, #344]
 1889 010c 012B     		cmp	r3, #1
 1890 010e 45D0     		beq	.L339
 1891              	.L289:
 1892 0110 0023     		movs	r3, #0
 1893 0112 3B66     		str	r3, [r7, #96]	@ float
 1894 0114 94F89831 		ldrb	r3, [r4, #408]	@ zero_extendqisi2
 1895 0118 2BB1     		cbz	r3, .L291
 1896 011a 97F87330 		ldrb	r3, [r7, #115]	@ zero_extendqisi2
 1897 011e 43F00403 		orr	r3, r3, #4
 1898 0122 87F87330 		strb	r3, [r7, #115]
 1899              	.L291:
 1900 0126 94F84F21 		ldrb	r2, [r4, #335]	@ zero_extendqisi2
 1901 012a 0023     		movs	r3, #0
 1902 012c 0021     		movs	r1, #0
 1903 012e 63F30002 		bfi	r2, r3, #0, #1
 1904 0132 0120     		movs	r0, #1
 1905 0134 84F84F21 		strb	r2, [r4, #335]
 1906 0138 C4F85031 		str	r3, [r4, #336]
 1907 013c 84F89931 		strb	r3, [r4, #409]
 1908 0140 84F89831 		strb	r3, [r4, #408]
 1909 0144 C4F84831 		str	r3, [r4, #328]
 1910 0148 84F84E31 		strb	r3, [r4, #334]
 1911 014c C4F86011 		str	r1, [r4, #352]	@ float
 1912 0150 02B0     		add	sp, sp, #8
 1913              		@ sp needed
 1914 0152 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1915              	.L333:
 1916 0156 D4ED647A 		vldr.32	s15, [r4, #400]
 1917 015a 94ED657A 		vldr.32	s14, [r4, #404]
 1918 015e 77EE877A 		vadd.f32	s15, s15, s14
 1919 0162 C4ED647A 		vstr.32	s15, [r4, #400]
 1920 0166 64E7     		b	.L292
 1921              	.L336:
 1922 0168 0139     		subs	r1, r1, #1
 1923 016a 0020     		movs	r0, #0
 1924 016c C4F85011 		str	r1, [r4, #336]
 1925 0170 02B0     		add	sp, sp, #8
 1926              		@ sp needed
 1927 0172 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1928              	.L337:
 1929 0176 2F49     		ldr	r1, .L341
 1930 0178 D4F87434 		ldr	r3, [r4, #1140]
 1931 017c 8968     		ldr	r1, [r1, #8]
 1932 017e D1F8580A 		ldr	r0, [r1, #2648]
 1933 0182 0125     		movs	r5, #1
 1934 0184 0168     		ldr	r1, [r0]
 1935 0186 0095     		str	r5, [sp]
 1936 0188 8D6A     		ldr	r5, [r1, #40]
 1937 018a 3946     		mov	r1, r7
 1938 018c A847     		blx	r5
ARM GAS  /tmp/ccJRi9N9.s 			page 35


 1939 018e 0028     		cmp	r0, #0
 1940 0190 46D1     		bne	.L302
 1941 0192 D4F85831 		ldr	r3, [r4, #344]
 1942 0196 D4F85011 		ldr	r1, [r4, #336]
 1943 019a A0E7     		b	.L301
 1944              	.L339:
 1945 019c D4ED597A 		vldr.32	s15, [r4, #356]
 1946 01a0 F5EE407A 		vcmp.f32	s15, #0
 1947 01a4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1948 01a8 B2D0     		beq	.L289
 1949 01aa D4F89832 		ldr	r3, [r4, #664]
 1950 01ae 0B2B     		cmp	r3, #11
 1951 01b0 AED8     		bhi	.L289
 1952 01b2 07EB8303 		add	r3, r7, r3, lsl #2
 1953 01b6 07F13002 		add	r2, r7, #48
 1954 01ba F7EE006A 		vmov.f32	s13, #1.0e+0
 1955 01be 01E0     		b	.L290
 1956              	.L340:
 1957 01c0 D4ED597A 		vldr.32	s15, [r4, #356]
 1958              	.L290:
 1959 01c4 93ED007A 		vldr.32	s14, [r3]
 1960 01c8 76EEE77A 		vsub.f32	s15, s13, s15
 1961 01cc 67EE877A 		vmul.f32	s15, s15, s14
 1962 01d0 E3EC017A 		vstmia.32	r3!, {s15}
 1963 01d4 9A42     		cmp	r2, r3
 1964 01d6 F3D1     		bne	.L340
 1965 01d8 9AE7     		b	.L289
 1966              	.L338:
 1967 01da D4ED597A 		vldr.32	s15, [r4, #356]
 1968 01de F5EE407A 		vcmp.f32	s15, #0
 1969 01e2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1970 01e6 3FF47CAF 		beq	.L304
 1971 01ea D4F89832 		ldr	r3, [r4, #664]
 1972 01ee 0B2B     		cmp	r3, #11
 1973 01f0 3FF677AF 		bhi	.L304
 1974 01f4 07EB8303 		add	r3, r7, r3, lsl #2
 1975 01f8 07F13002 		add	r2, r7, #48
 1976 01fc F7EE006A 		vmov.f32	s13, #1.0e+0
 1977 0200 01E0     		b	.L306
 1978              	.L305:
 1979 0202 D4ED597A 		vldr.32	s15, [r4, #356]
 1980              	.L306:
 1981 0206 93ED007A 		vldr.32	s14, [r3]
 1982 020a 76EEE77A 		vsub.f32	s15, s13, s15
 1983 020e 67EE877A 		vmul.f32	s15, s15, s14
 1984 0212 E3EC017A 		vstmia.32	r3!, {s15}
 1985 0216 9A42     		cmp	r2, r3
 1986 0218 F3D1     		bne	.L305
 1987 021a D4F85011 		ldr	r1, [r4, #336]
 1988 021e 60E7     		b	.L304
 1989              	.L302:
 1990 0220 0020     		movs	r0, #0
 1991 0222 0223     		movs	r3, #2
 1992 0224 84F89931 		strb	r3, [r4, #409]
 1993 0228 84F89801 		strb	r0, [r4, #408]
 1994 022c C4F85001 		str	r0, [r4, #336]
 1995 0230 67E7     		b	.L287
ARM GAS  /tmp/ccJRi9N9.s 			page 36


 1996              	.L342:
 1997 0232 00BF     		.align	2
 1998              	.L341:
 1999 0234 00000000 		.word	reprap
 2000              		.size	_ZN6GCodes8ReadMoveERNS_7RawMoveE, .-_ZN6GCodes8ReadMoveERNS_7RawMoveE
 2001              		.section	.text._ZN6GCodes9ClearMoveEv,"ax",%progbits
 2002              		.align	1
 2003              		.p2align 2,,3
 2004              		.global	_ZN6GCodes9ClearMoveEv
 2005              		.syntax unified
 2006              		.thumb
 2007              		.thumb_func
 2008              		.fpu fpv4-sp-d16
 2009              		.type	_ZN6GCodes9ClearMoveEv, %function
 2010              	_ZN6GCodes9ClearMoveEv:
 2011              		@ args = 0, pretend = 0, frame = 0
 2012              		@ frame_needed = 0, uses_anonymous_args = 0
 2013              		@ link register save eliminated.
 2014 0000 90F84F21 		ldrb	r2, [r0, #335]	@ zero_extendqisi2
 2015 0004 0023     		movs	r3, #0
 2016 0006 0021     		movs	r1, #0
 2017 0008 63F30002 		bfi	r2, r3, #0, #1
 2018 000c C0F85031 		str	r3, [r0, #336]
 2019 0010 80F84F21 		strb	r2, [r0, #335]
 2020 0014 80F89931 		strb	r3, [r0, #409]
 2021 0018 80F89831 		strb	r3, [r0, #408]
 2022 001c C0F84831 		str	r3, [r0, #328]
 2023 0020 80F84E31 		strb	r3, [r0, #334]
 2024 0024 C0F86011 		str	r1, [r0, #352]	@ float
 2025 0028 7047     		bx	lr
 2026              		.size	_ZN6GCodes9ClearMoveEv, .-_ZN6GCodes9ClearMoveEv
 2027 002a 00BF     		.section	.text._ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi,"ax",%progbits
 2028              		.align	1
 2029              		.p2align 2,,3
 2030              		.global	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2031              		.syntax unified
 2032              		.thumb
 2033              		.thumb_func
 2034              		.fpu fpv4-sp-d16
 2035              		.type	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi, %function
 2036              	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi:
 2037              		@ args = 4, pretend = 0, frame = 0
 2038              		@ frame_needed = 0, uses_anonymous_args = 0
 2039 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2040 0004 0646     		mov	r6, r0
 2041 0006 0068     		ldr	r0, [r0]
 2042 0008 0D46     		mov	r5, r1
 2043 000a 1C46     		mov	r4, r3
 2044 000c 2C49     		ldr	r1, .L360
 2045 000e D0F8B409 		ldr	r0, [r0, #2484]
 2046 0012 0023     		movs	r3, #0
 2047 0014 9046     		mov	r8, r2
 2048 0016 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2049 001a 0028     		cmp	r0, #0
 2050 001c 3BD0     		beq	.L357
 2051 001e 0746     		mov	r7, r0
 2052 0020 2846     		mov	r0, r5
ARM GAS  /tmp/ccJRi9N9.s 			page 37


 2053 0022 FFF7FEFF 		bl	_ZN11GCodeBuffer9PushStateEv
 2054 0026 0028     		cmp	r0, #0
 2055 0028 39D0     		beq	.L358
 2056 002a AC68     		ldr	r4, [r5, #8]
 2057 002c A068     		ldr	r0, [r4, #8]
 2058 002e 08B1     		cbz	r0, .L350
 2059 0030 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2060              	.L350:
 2061 0034 A760     		str	r7, [r4, #8]
 2062 0036 A968     		ldr	r1, [r5, #8]
 2063 0038 F068     		ldr	r0, [r6, #12]
 2064 003a 0831     		adds	r1, r1, #8
 2065 003c FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 2066 0040 AA68     		ldr	r2, [r5, #8]
 2067 0042 0698     		ldr	r0, [sp, #24]
 2068 0044 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 2069 0046 43F00403 		orr	r3, r3, #4
 2070 004a 1376     		strb	r3, [r2, #24]
 2071 004c AA68     		ldr	r2, [r5, #8]
 2072 004e 40F2F513 		movw	r3, #501
 2073 0052 C31A     		subs	r3, r0, r3
 2074 0054 117E     		ldrb	r1, [r2, #24]	@ zero_extendqisi2
 2075 0056 B3FA83F3 		clz	r3, r3
 2076 005a 5B09     		lsrs	r3, r3, #5
 2077 005c 63F30411 		bfi	r1, r3, #4, #1
 2078 0060 1176     		strb	r1, [r2, #24]
 2079 0062 AB68     		ldr	r3, [r5, #8]
 2080 0064 A0F5FB71 		sub	r1, r0, #502
 2081 0068 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 2082 006a B1FA81F1 		clz	r1, r1
 2083 006e 4909     		lsrs	r1, r1, #5
 2084 0070 61F34512 		bfi	r2, r1, #5, #1
 2085 0074 6228     		cmp	r0, #98
 2086 0076 1A76     		strb	r2, [r3, #24]
 2087 0078 04D0     		beq	.L348
 2088 007a AA68     		ldr	r2, [r5, #8]
 2089 007c 537E     		ldrb	r3, [r2, #25]	@ zero_extendqisi2
 2090 007e 43F00103 		orr	r3, r3, #1
 2091 0082 5376     		strb	r3, [r2, #25]
 2092              	.L348:
 2093 0084 AB68     		ldr	r3, [r5, #8]
 2094 0086 0022     		movs	r2, #0
 2095 0088 2846     		mov	r0, r5
 2096 008a 1A75     		strb	r2, [r3, #20]
 2097 008c FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 2098 0090 0120     		movs	r0, #1
 2099 0092 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2100              	.L357:
 2101 0096 44B9     		cbnz	r4, .L359
 2102 0098 2046     		mov	r0, r4
 2103 009a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2104              	.L358:
 2105 009e 3046     		mov	r0, r6
 2106 00a0 FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer.part.57
 2107 00a4 0120     		movs	r0, #1
 2108 00a6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2109              	.L359:
ARM GAS  /tmp/ccJRi9N9.s 			page 38


 2110 00aa 3068     		ldr	r0, [r6]
 2111 00ac 054A     		ldr	r2, .L360+4
 2112 00ae 4346     		mov	r3, r8
 2113 00b0 40F2B521 		movw	r1, #693
 2114 00b4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2115 00b8 2046     		mov	r0, r4
 2116 00ba BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2117              	.L361:
 2118 00be 00BF     		.align	2
 2119              	.L360:
 2120 00c0 34000000 		.word	.LC17
 2121 00c4 00000000 		.word	.LC45
 2122              		.size	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi, .-_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2123              		.section	.text._ZN6GCodes13RunConfigFileEPKc,"ax",%progbits
 2124              		.align	1
 2125              		.p2align 2,,3
 2126              		.global	_ZN6GCodes13RunConfigFileEPKc
 2127              		.syntax unified
 2128              		.thumb
 2129              		.thumb_func
 2130              		.fpu fpv4-sp-d16
 2131              		.type	_ZN6GCodes13RunConfigFileEPKc, %function
 2132              	_ZN6GCodes13RunConfigFileEPKc:
 2133              		@ args = 0, pretend = 0, frame = 0
 2134              		@ frame_needed = 0, uses_anonymous_args = 0
 2135 0000 30B5     		push	{r4, r5, lr}
 2136 0002 C26C     		ldr	r2, [r0, #76]
 2137 0004 83B0     		sub	sp, sp, #12
 2138 0006 1568     		ldr	r5, [r2]
 2139 0008 0023     		movs	r3, #0
 2140 000a 0A46     		mov	r2, r1
 2141 000c 0093     		str	r3, [sp]
 2142 000e 2946     		mov	r1, r5
 2143 0010 0446     		mov	r4, r0
 2144 0012 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2145 0016 84F8AC00 		strb	r0, [r4, #172]
 2146 001a 03B0     		add	sp, sp, #12
 2147              		@ sp needed
 2148 001c 30BD     		pop	{r4, r5, pc}
 2149              		.size	_ZN6GCodes13RunConfigFileEPKc, .-_ZN6GCodes13RunConfigFileEPKc
 2150 001e 00BF     		.section	.text._ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer,"ax",%progbits
 2151              		.align	1
 2152              		.p2align 2,,3
 2153              		.global	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer
 2154              		.syntax unified
 2155              		.thumb
 2156              		.thumb_func
 2157              		.fpu fpv4-sp-d16
 2158              		.type	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer, %function
 2159              	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer:
 2160              		@ args = 0, pretend = 0, frame = 0
 2161              		@ frame_needed = 0, uses_anonymous_args = 0
 2162 0000 70B5     		push	{r4, r5, r6, lr}
 2163 0002 0546     		mov	r5, r0
 2164 0004 0846     		mov	r0, r1
 2165 0006 0C46     		mov	r4, r1
 2166 0008 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
ARM GAS  /tmp/ccJRi9N9.s 			page 39


 2167 000c 00B9     		cbnz	r0, .L371
 2168 000e 70BD     		pop	{r4, r5, r6, pc}
 2169              	.L371:
 2170 0010 A668     		ldr	r6, [r4, #8]
 2171 0012 E868     		ldr	r0, [r5, #12]
 2172 0014 06F10801 		add	r1, r6, #8
 2173 0018 FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 2174 001c B068     		ldr	r0, [r6, #8]
 2175 001e 18B1     		cbz	r0, .L366
 2176 0020 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2177 0024 0023     		movs	r3, #0
 2178 0026 B360     		str	r3, [r6, #8]
 2179              	.L366:
 2180 0028 2046     		mov	r0, r4
 2181 002a FFF7FEFF 		bl	_ZN11GCodeBuffer8PopStateEv
 2182 002e 2046     		mov	r0, r4
 2183 0030 BDE87040 		pop	{r4, r5, r6, lr}
 2184 0034 FFF7FEBF 		b	_ZN11GCodeBuffer4InitEv
 2185              		.size	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer, .-_ZN6GCodes21FileMacroCyclesReturnER11GCo
 2186              		.section	.text._ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef,"ax",%progbits
 2187              		.align	1
 2188              		.p2align 2,,3
 2189              		.global	_ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef
 2190              		.syntax unified
 2191              		.thumb
 2192              		.thumb_func
 2193              		.fpu fpv4-sp-d16
 2194              		.type	_ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef, %function
 2195              	_ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef:
 2196              		@ args = 0, pretend = 0, frame = 8
 2197              		@ frame_needed = 0, uses_anonymous_args = 0
 2198 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2199 0002 2DED048B 		vpush.64	{d8, d9}
 2200 0006 0D46     		mov	r5, r1
 2201 0008 85B0     		sub	sp, sp, #20
 2202 000a 0446     		mov	r4, r0
 2203 000c 5321     		movs	r1, #83
 2204 000e 2846     		mov	r0, r5
 2205 0010 1646     		mov	r6, r2
 2206 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2207 0016 0028     		cmp	r0, #0
 2208 0018 6ED1     		bne	.L404
 2209 001a 6FF00200 		mvn	r0, #2
 2210              	.L373:
 2211 001e 04AB     		add	r3, sp, #16
 2212 0020 0022     		movs	r2, #0
 2213 0022 03F8012D 		strb	r2, [r3, #-1]!
 2214 0026 4FF0FF32 		mov	r2, #-1
 2215 002a C4F82805 		str	r0, [r4, #1320]
 2216 002e C4F82425 		str	r2, [r4, #1316]
 2217 0032 5021     		movs	r1, #80
 2218 0034 04F22452 		addw	r2, r4, #1316
 2219 0038 2846     		mov	r0, r5
 2220 003a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 2221 003e 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 2222 0042 002B     		cmp	r3, #0
 2223 0044 41D0     		beq	.L374
ARM GAS  /tmp/ccJRi9N9.s 			page 40


 2224 0046 D4F82435 		ldr	r3, [r4, #1316]
 2225 004a 1F2B     		cmp	r3, #31
 2226 004c 58D8     		bhi	.L405
 2227 004e 94F85A14 		ldrb	r1, [r4, #1114]	@ zero_extendqisi2
 2228 0052 2846     		mov	r0, r5
 2229 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2230 0058 0028     		cmp	r0, #0
 2231 005a 40F08380 		bne	.L406
 2232 005e D4ED2D8A 		vldr.32	s17, [r4, #180]
 2233              	.L378:
 2234 0062 94F85B14 		ldrb	r1, [r4, #1115]	@ zero_extendqisi2
 2235 0066 2846     		mov	r0, r5
 2236 0068 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2237 006c 0028     		cmp	r0, #0
 2238 006e 73D1     		bne	.L407
 2239 0070 94ED2E9A 		vldr.32	s18, [r4, #184]
 2240              	.L380:
 2241 0074 94F85C14 		ldrb	r1, [r4, #1116]	@ zero_extendqisi2
 2242 0078 2846     		mov	r0, r5
 2243 007a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2244 007e 0028     		cmp	r0, #0
 2245 0080 64D1     		bne	.L408
 2246 0082 94ED2F8A 		vldr.32	s16, [r4, #188]
 2247              	.L382:
 2248 0086 3A4F     		ldr	r7, .L411
 2249 0088 D4F82415 		ldr	r1, [r4, #1316]
 2250 008c B868     		ldr	r0, [r7, #8]
 2251 008e F0EE490A 		vmov.f32	s1, s18
 2252 0092 B0EE680A 		vmov.f32	s0, s17
 2253 0096 FFF7FEFF 		bl	_ZN4Move18SetXYBedProbePointEjff
 2254 009a DFED367A 		vldr.32	s15, .L411+4
 2255 009e B4EEE78A 		vcmpe.f32	s16, s15
 2256 00a2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2257 00a6 3CDC     		bgt	.L409
 2258 00a8 AB68     		ldr	r3, [r5, #8]
 2259 00aa 2122     		movs	r2, #33
 2260 00ac 1A75     		strb	r2, [r3, #20]
 2261 00ae 2368     		ldr	r3, [r4]
 2262 00b0 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 2263 00b4 23B1     		cbz	r3, .L403
 2264 00b6 092B     		cmp	r3, #9
 2265 00b8 02D0     		beq	.L403
 2266 00ba 94F85135 		ldrb	r3, [r4, #1361]	@ zero_extendqisi2
 2267 00be 43B3     		cbz	r3, .L410
 2268              	.L403:
 2269 00c0 0120     		movs	r0, #1
 2270              	.L376:
 2271 00c2 05B0     		add	sp, sp, #20
 2272              		@ sp needed
 2273 00c4 BDEC048B 		vldm	sp!, {d8-d9}
 2274 00c8 F0BD     		pop	{r4, r5, r6, r7, pc}
 2275              	.L374:
 2276 00ca 84F85335 		strb	r3, [r4, #1363]
 2277 00ce 04F5A762 		add	r2, r4, #1336
 2278 00d2 04F23C53 		addw	r3, r4, #1340
 2279 00d6 0020     		movs	r0, #0
 2280 00d8 2749     		ldr	r1, .L411+8
ARM GAS  /tmp/ccJRi9N9.s 			page 41


 2281 00da 1060     		str	r0, [r2]	@ float
 2282 00dc 1960     		str	r1, [r3]	@ float
 2283 00de AB68     		ldr	r3, [r5, #8]
 2284 00e0 2322     		movs	r2, #35
 2285 00e2 1A75     		strb	r2, [r3, #20]
 2286 00e4 2368     		ldr	r3, [r4]
 2287 00e6 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 2288 00ea 002B     		cmp	r3, #0
 2289 00ec E8D0     		beq	.L403
 2290 00ee 94F85135 		ldrb	r3, [r4, #1361]	@ zero_extendqisi2
 2291 00f2 002B     		cmp	r3, #0
 2292 00f4 E4D1     		bne	.L403
 2293 00f6 0CE0     		b	.L410
 2294              	.L404:
 2295 00f8 2846     		mov	r0, r5
 2296 00fa FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2297 00fe 8EE7     		b	.L373
 2298              	.L405:
 2299 0100 3046     		mov	r0, r6
 2300 0102 1E49     		ldr	r1, .L411+12
 2301 0104 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2302 0108 0220     		movs	r0, #2
 2303 010a 05B0     		add	sp, sp, #20
 2304              		@ sp needed
 2305 010c BDEC048B 		vldm	sp!, {d8-d9}
 2306 0110 F0BD     		pop	{r4, r5, r6, r7, pc}
 2307              	.L410:
 2308 0112 0023     		movs	r3, #0
 2309 0114 2946     		mov	r1, r5
 2310 0116 2046     		mov	r0, r4
 2311 0118 0093     		str	r3, [sp]
 2312 011a 194A     		ldr	r2, .L411+16
 2313 011c FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2314 0120 CEE7     		b	.L403
 2315              	.L409:
 2316 0122 0023     		movs	r3, #0
 2317 0124 1A46     		mov	r2, r3
 2318 0126 D4F82415 		ldr	r1, [r4, #1316]
 2319 012a B868     		ldr	r0, [r7, #8]
 2320 012c B0EE480A 		vmov.f32	s0, s16
 2321 0130 FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 2322 0134 D4F82815 		ldr	r1, [r4, #1320]
 2323 0138 4B1C     		adds	r3, r1, #1
 2324 013a C1DB     		blt	.L403
 2325 013c 3246     		mov	r2, r6
 2326 013e B868     		ldr	r0, [r7, #8]
 2327 0140 FFF7FEFF 		bl	_ZN4Move18FinishedBedProbingEiRK9StringRef
 2328 0144 0028     		cmp	r0, #0
 2329 0146 BBD0     		beq	.L403
 2330 0148 0220     		movs	r0, #2
 2331 014a BAE7     		b	.L376
 2332              	.L408:
 2333 014c 2846     		mov	r0, r5
 2334 014e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2335 0152 B0EE408A 		vmov.f32	s16, s0
 2336 0156 96E7     		b	.L382
 2337              	.L407:
ARM GAS  /tmp/ccJRi9N9.s 			page 42


 2338 0158 2846     		mov	r0, r5
 2339 015a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2340 015e B0EE409A 		vmov.f32	s18, s0
 2341 0162 87E7     		b	.L380
 2342              	.L406:
 2343 0164 2846     		mov	r0, r5
 2344 0166 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2345 016a F0EE408A 		vmov.f32	s17, s0
 2346 016e 78E7     		b	.L378
 2347              	.L412:
 2348              		.align	2
 2349              	.L411:
 2350 0170 00000000 		.word	reprap
 2351 0174 003C1CC6 		.word	3323739136
 2352 0178 00007A44 		.word	1148846080
 2353 017c 00000000 		.word	.LC46
 2354 0180 24000000 		.word	.LC47
 2355              		.size	_ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef, .-_ZN6GCodes10ExecuteG30ER11GCodeBufferRK
 2356              		.section	.text._ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer,"ax",%progbits
 2357              		.align	1
 2358              		.p2align 2,,3
 2359              		.global	_ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer
 2360              		.syntax unified
 2361              		.thumb
 2362              		.thumb_func
 2363              		.fpu fpv4-sp-d16
 2364              		.type	_ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer, %function
 2365              	_ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer:
 2366              		@ args = 0, pretend = 0, frame = 0
 2367              		@ frame_needed = 0, uses_anonymous_args = 0
 2368              		@ link register save eliminated.
 2369 0000 8B8E     		ldrh	r3, [r1, #52]
 2370 0002 352B     		cmp	r3, #53
 2371 0004 05D1     		bne	.L414
 2372 0006 90F98436 		ldrsb	r3, [r0, #1668]
 2373 000a 002B     		cmp	r3, #0
 2374 000c ACBF     		ite	ge
 2375 000e 0423     		movge	r3, #4
 2376 0010 1023     		movlt	r3, #16
 2377              	.L414:
 2378 0012 1846     		mov	r0, r3
 2379 0014 7047     		bx	lr
 2380              		.size	_ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer, .-_ZNK6GCodes19GetMessageBoxDeviceER11GCode
 2381 0016 00BF     		.section	.text._ZN6GCodes13DoManualProbeER11GCodeBuffer,"ax",%progbits
 2382              		.align	1
 2383              		.p2align 2,,3
 2384              		.global	_ZN6GCodes13DoManualProbeER11GCodeBuffer
 2385              		.syntax unified
 2386              		.thumb
 2387              		.thumb_func
 2388              		.fpu fpv4-sp-d16
 2389              		.type	_ZN6GCodes13DoManualProbeER11GCodeBuffer, %function
 2390              	_ZN6GCodes13DoManualProbeER11GCodeBuffer:
 2391              		@ args = 0, pretend = 0, frame = 0
 2392              		@ frame_needed = 0, uses_anonymous_args = 0
 2393 0000 70B5     		push	{r4, r5, r6, lr}
 2394 0002 0646     		mov	r6, r0
ARM GAS  /tmp/ccJRi9N9.s 			page 43


 2395 0004 82B0     		sub	sp, sp, #8
 2396 0006 0846     		mov	r0, r1
 2397 0008 0C46     		mov	r4, r1
 2398 000a FFF7FEFF 		bl	_ZN11GCodeBuffer9PushStateEv
 2399 000e D8B1     		cbz	r0, .L424
 2400 0010 A568     		ldr	r5, [r4, #8]
 2401 0012 A868     		ldr	r0, [r5, #8]
 2402 0014 20B1     		cbz	r0, .L420
 2403 0016 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2404 001a 0023     		movs	r3, #0
 2405 001c AB60     		str	r3, [r5, #8]
 2406 001e A568     		ldr	r5, [r4, #8]
 2407              	.L420:
 2408 0020 6B7E     		ldrb	r3, [r5, #25]	@ zero_extendqisi2
 2409 0022 43F00203 		orr	r3, r3, #2
 2410 0026 6B76     		strb	r3, [r5, #25]
 2411 0028 A18E     		ldrh	r1, [r4, #52]
 2412 002a 3529     		cmp	r1, #53
 2413 002c 12D0     		beq	.L425
 2414              	.L418:
 2415 002e 0224     		movs	r4, #2
 2416 0030 0425     		movs	r5, #4
 2417 0032 3068     		ldr	r0, [r6]
 2418 0034 9FED0B0A 		vldr.32	s0, .L426
 2419 0038 0B4B     		ldr	r3, .L426+4
 2420 003a 0C4A     		ldr	r2, .L426+8
 2421 003c CDE90045 		strd	r4, r5, [sp]
 2422 0040 FFF7FEFF 		bl	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm
 2423 0044 02B0     		add	sp, sp, #8
 2424              		@ sp needed
 2425 0046 70BD     		pop	{r4, r5, r6, pc}
 2426              	.L424:
 2427 0048 3046     		mov	r0, r6
 2428 004a 02B0     		add	sp, sp, #8
 2429              		@ sp needed
 2430 004c BDE87040 		pop	{r4, r5, r6, lr}
 2431 0050 FFF7FEBF 		b	_ZN6GCodes4PushER11GCodeBuffer.part.57
 2432              	.L425:
 2433 0054 96F98436 		ldrsb	r3, [r6, #1668]
 2434 0058 002B     		cmp	r3, #0
 2435 005a B4BF     		ite	lt
 2436 005c 1021     		movlt	r1, #16
 2437 005e 0421     		movge	r1, #4
 2438 0060 E5E7     		b	.L418
 2439              	.L427:
 2440 0062 00BF     		.align	2
 2441              	.L426:
 2442 0064 00000000 		.word	0
 2443 0068 00000000 		.word	.LC48
 2444 006c 14000000 		.word	.LC49
 2445              		.size	_ZN6GCodes13DoManualProbeER11GCodeBuffer, .-_ZN6GCodes13DoManualProbeER11GCodeBuffer
 2446              		.section	.text._ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef,"ax",%progbits
 2447              		.align	1
 2448              		.p2align 2,,3
 2449              		.global	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef
 2450              		.syntax unified
 2451              		.thumb
ARM GAS  /tmp/ccJRi9N9.s 			page 44


 2452              		.thumb_func
 2453              		.fpu fpv4-sp-d16
 2454              		.type	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef, %function
 2455              	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef:
 2456              		@ args = 0, pretend = 0, frame = 136
 2457              		@ frame_needed = 0, uses_anonymous_args = 0
 2458 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2459 0002 A3B0     		sub	sp, sp, #140
 2460 0004 0024     		movs	r4, #0
 2461 0006 0DF10303 		add	r3, sp, #3
 2462 000a 8DF80C40 		strb	r4, [sp, #12]
 2463 000e 8DF80340 		strb	r4, [sp, #3]
 2464 0012 0646     		mov	r6, r0
 2465 0014 1746     		mov	r7, r2
 2466 0016 0846     		mov	r0, r1
 2467 0018 01AA     		add	r2, sp, #4
 2468 001a 7925     		movs	r5, #121
 2469 001c 5021     		movs	r1, #80
 2470 001e 03AC     		add	r4, sp, #12
 2471 0020 CDE90145 		strd	r4, r5, [sp, #4]
 2472 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 2473 0028 9DF80330 		ldrb	r3, [sp, #3]	@ zero_extendqisi2
 2474 002c 5BB3     		cbz	r3, .L434
 2475              	.L429:
 2476 002e 3368     		ldr	r3, [r6]
 2477 0030 1D49     		ldr	r1, .L437
 2478 0032 D3F8B409 		ldr	r0, [r3, #2484]
 2479 0036 03AA     		add	r2, sp, #12
 2480 0038 0123     		movs	r3, #1
 2481 003a FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2482 003e 0446     		mov	r4, r0
 2483 0040 48B3     		cbz	r0, .L435
 2484 0042 1A4B     		ldr	r3, .L437+4
 2485 0044 0146     		mov	r1, r0
 2486 0046 9868     		ldr	r0, [r3, #8]
 2487 0048 FFF7FEFF 		bl	_ZNK4Move19SaveHeightMapToFileEP9FileStore
 2488 004c 0546     		mov	r5, r0
 2489 004e 2046     		mov	r0, r4
 2490 0050 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2491 0054 3DB9     		cbnz	r5, .L436
 2492 0056 03AA     		add	r2, sp, #12
 2493 0058 3846     		mov	r0, r7
 2494 005a 1549     		ldr	r1, .L437+8
 2495 005c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2496 0060 2846     		mov	r0, r5
 2497 0062 23B0     		add	sp, sp, #140
 2498              		@ sp needed
 2499 0064 F0BD     		pop	{r4, r5, r6, r7, pc}
 2500              	.L436:
 2501 0066 3368     		ldr	r3, [r6]
 2502 0068 0F49     		ldr	r1, .L437
 2503 006a D3F8B409 		ldr	r0, [r3, #2484]
 2504 006e 03AA     		add	r2, sp, #12
 2505 0070 0023     		movs	r3, #0
 2506 0072 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 2507 0076 03AA     		add	r2, sp, #12
 2508 0078 3846     		mov	r0, r7
ARM GAS  /tmp/ccJRi9N9.s 			page 45


 2509 007a 0E49     		ldr	r1, .L437+12
 2510 007c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2511 0080 2846     		mov	r0, r5
 2512 0082 23B0     		add	sp, sp, #140
 2513              		@ sp needed
 2514 0084 F0BD     		pop	{r4, r5, r6, r7, pc}
 2515              	.L434:
 2516 0086 03AB     		add	r3, sp, #12
 2517 0088 01A8     		add	r0, sp, #4
 2518 008a 0B49     		ldr	r1, .L437+16
 2519 008c CDE90135 		strd	r3, r5, [sp, #4]
 2520 0090 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2521 0094 CBE7     		b	.L429
 2522              	.L435:
 2523 0096 03AA     		add	r2, sp, #12
 2524 0098 3846     		mov	r0, r7
 2525 009a 0849     		ldr	r1, .L437+20
 2526 009c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2527 00a0 0125     		movs	r5, #1
 2528 00a2 2846     		mov	r0, r5
 2529 00a4 23B0     		add	sp, sp, #140
 2530              		@ sp needed
 2531 00a6 F0BD     		pop	{r4, r5, r6, r7, pc}
 2532              	.L438:
 2533              		.align	2
 2534              	.L437:
 2535 00a8 34000000 		.word	.LC17
 2536 00ac 00000000 		.word	reprap
 2537 00b0 5C000000 		.word	.LC53
 2538 00b4 34000000 		.word	.LC52
 2539 00b8 00000000 		.word	.LC50
 2540 00bc 10000000 		.word	.LC51
 2541              		.size	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef, .-_ZNK6GCodes13SaveHeightMapER11GCode
 2542              		.section	.text._ZNK6GCodes21GetCurrentCoordinatesERK9StringRef,"ax",%progbits
 2543              		.align	1
 2544              		.p2align 2,,3
 2545              		.global	_ZNK6GCodes21GetCurrentCoordinatesERK9StringRef
 2546              		.syntax unified
 2547              		.thumb
 2548              		.thumb_func
 2549              		.fpu fpv4-sp-d16
 2550              		.type	_ZNK6GCodes21GetCurrentCoordinatesERK9StringRef, %function
 2551              	_ZNK6GCodes21GetCurrentCoordinatesERK9StringRef:
 2552              		@ args = 0, pretend = 0, frame = 48
 2553              		@ frame_needed = 0, uses_anonymous_args = 0
 2554 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2555 0004 4C4F     		ldr	r7, .L474
 2556 0006 8EB0     		sub	sp, sp, #56
 2557 0008 0446     		mov	r4, r0
 2558 000a 3846     		mov	r0, r7
 2559 000c 0E46     		mov	r6, r1
 2560 000e BD68     		ldr	r5, [r7, #8]
 2561 0010 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 2562 0014 8046     		mov	r8, r0
 2563 0016 3846     		mov	r0, r7
 2564 0018 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 2565 001c 4246     		mov	r2, r8
ARM GAS  /tmp/ccJRi9N9.s 			page 46


 2566 001e 0346     		mov	r3, r0
 2567 0020 02A9     		add	r1, sp, #8
 2568 0022 2846     		mov	r0, r5
 2569 0024 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 2570 0028 3B6B     		ldr	r3, [r7, #48]
 2571 002a 83B1     		cbz	r3, .L440
 2572 002c D4F89C12 		ldr	r1, [r4, #668]
 2573 0030 69B1     		cbz	r1, .L440
 2574 0032 0C33     		adds	r3, r3, #12
 2575 0034 03EB8101 		add	r1, r3, r1, lsl #2
 2576 0038 02AA     		add	r2, sp, #8
 2577              	.L441:
 2578 003a B3EC017A 		vldmia.32	r3!, {s14}
 2579 003e D2ED007A 		vldr.32	s15, [r2]
 2580 0042 77EE877A 		vadd.f32	s15, s15, s14
 2581 0046 8B42     		cmp	r3, r1
 2582 0048 E2EC017A 		vstmia.32	r2!, {s15}
 2583 004c F5D1     		bne	.L441
 2584              	.L440:
 2585 004e 3368     		ldr	r3, [r6]
 2586 0050 0022     		movs	r2, #0
 2587 0052 1A70     		strb	r2, [r3]
 2588 0054 D4F89C32 		ldr	r3, [r4, #668]
 2589 0058 DBB1     		cbz	r3, .L442
 2590 005a DFF8E890 		ldr	r9, .L474+12
 2591 005e 04F25945 		addw	r5, r4, #1113
 2592 0062 04F1B408 		add	r8, r4, #180
 2593              	.L443:
 2594 0066 B8EC010A 		vldmia.32	r8!, {s0}
 2595 006a 95F801A0 		ldrb	r10, [r5, #1]	@ zero_extendqisi2
 2596 006e FFF7FEFF 		bl	_Z7HideNanf
 2597 0072 5246     		mov	r2, r10
 2598 0074 8DED000B 		vstr.64	d0, [sp]
 2599 0078 4946     		mov	r1, r9
 2600 007a 3046     		mov	r0, r6
 2601 007c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2602 0080 A5F58B63 		sub	r3, r5, #1112
 2603 0084 D4F89C22 		ldr	r2, [r4, #668]
 2604 0088 1B1B     		subs	r3, r3, r4
 2605 008a 9A42     		cmp	r2, r3
 2606 008c 05F10105 		add	r5, r5, #1
 2607 0090 E9D8     		bhi	.L443
 2608              	.L442:
 2609 0092 D4F89852 		ldr	r5, [r4, #664]
 2610 0096 0B2D     		cmp	r5, #11
 2611 0098 18D8     		bhi	.L444
 2612 009a 02AB     		add	r3, sp, #8
 2613 009c DFF8A8A0 		ldr	r10, .L474+16
 2614 00a0 03EB8509 		add	r9, r3, r5, lsl #2
 2615 00a4 2A46     		mov	r2, r5
 2616 00a6 01E0     		b	.L445
 2617              	.L473:
 2618 00a8 D4F89822 		ldr	r2, [r4, #664]
 2619              	.L445:
 2620 00ac 59F8040B 		ldr	r0, [r9], #4	@ float
 2621 00b0 A5EB0208 		sub	r8, r5, r2
 2622 00b4 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/ccJRi9N9.s 			page 47


 2623 00b8 0135     		adds	r5, r5, #1
 2624 00ba CDE90001 		strd	r0, [sp]
 2625 00be 4246     		mov	r2, r8
 2626 00c0 5146     		mov	r1, r10
 2627 00c2 3046     		mov	r0, r6
 2628 00c4 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2629 00c8 0C2D     		cmp	r5, #12
 2630 00ca EDD1     		bne	.L473
 2631              	.L444:
 2632 00cc 1B49     		ldr	r1, .L474+4
 2633 00ce 3046     		mov	r0, r6
 2634 00d0 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2635 00d4 D4F89C32 		ldr	r3, [r4, #668]
 2636 00d8 8BB1     		cbz	r3, .L446
 2637 00da DFF87080 		ldr	r8, .L474+20
 2638 00de 0025     		movs	r5, #0
 2639              	.L447:
 2640 00e0 BB68     		ldr	r3, [r7, #8]
 2641 00e2 05F12002 		add	r2, r5, #32
 2642 00e6 03EB8203 		add	r3, r3, r2, lsl #2
 2643 00ea 4146     		mov	r1, r8
 2644 00ec 5A68     		ldr	r2, [r3, #4]
 2645 00ee 3046     		mov	r0, r6
 2646 00f0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2647 00f4 D4F89C32 		ldr	r3, [r4, #668]
 2648 00f8 0135     		adds	r5, r5, #1
 2649 00fa AB42     		cmp	r3, r5
 2650 00fc F0D8     		bhi	.L447
 2651              	.L446:
 2652 00fe 1049     		ldr	r1, .L474+8
 2653 0100 3046     		mov	r0, r6
 2654 0102 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2655 0106 D4F89C32 		ldr	r3, [r4, #668]
 2656 010a 93B1     		cbz	r3, .L439
 2657 010c DFF84080 		ldr	r8, .L474+24
 2658 0110 02AF     		add	r7, sp, #8
 2659 0112 0025     		movs	r5, #0
 2660              	.L449:
 2661 0114 B7EC010A 		vldmia.32	r7!, {s0}
 2662 0118 FFF7FEFF 		bl	_Z7HideNanf
 2663 011c 4146     		mov	r1, r8
 2664 011e 53EC102B 		vmov	r2, r3, d0
 2665 0122 3046     		mov	r0, r6
 2666 0124 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2667 0128 D4F89C32 		ldr	r3, [r4, #668]
 2668 012c 0135     		adds	r5, r5, #1
 2669 012e AB42     		cmp	r3, r5
 2670 0130 F0D8     		bhi	.L449
 2671              	.L439:
 2672 0132 0EB0     		add	sp, sp, #56
 2673              		@ sp needed
 2674 0134 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2675              	.L475:
 2676              		.align	2
 2677              	.L474:
 2678 0138 00000000 		.word	reprap
 2679 013c 18000000 		.word	.LC56
ARM GAS  /tmp/ccJRi9N9.s 			page 48


 2680 0140 28000000 		.word	.LC58
 2681 0144 00000000 		.word	.LC54
 2682 0148 0C000000 		.word	.LC55
 2683 014c 20000000 		.word	.LC57
 2684 0150 34000000 		.word	.LC59
 2685              		.size	_ZNK6GCodes21GetCurrentCoordinatesERK9StringRef, .-_ZNK6GCodes21GetCurrentCoordinatesERK9Str
 2686              		.section	.text._ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_mbm,"ax",%progbits
 2687              		.align	1
 2688              		.p2align 2,,3
 2689              		.global	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_mbm
 2690              		.syntax unified
 2691              		.thumb
 2692              		.thumb_func
 2693              		.fpu fpv4-sp-d16
 2694              		.type	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_mbm, %function
 2695              	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_mbm:
 2696              		@ args = 12, pretend = 0, frame = 0
 2697              		@ frame_needed = 0, uses_anonymous_args = 0
 2698 0000 2DE9F846 		push	{r3, r4, r5, r6, r7, r9, r10, lr}
 2699 0004 1746     		mov	r7, r2
 2700 0006 0268     		ldr	r2, [r0]
 2701 0008 9DF824A0 		ldrb	r10, [sp, #36]	@ zero_extendqisi2
 2702 000c 0446     		mov	r4, r0
 2703 000e 9946     		mov	r9, r3
 2704 0010 D2F8B409 		ldr	r0, [r2, #2484]
 2705 0014 0E46     		mov	r6, r1
 2706 0016 1A46     		mov	r2, r3
 2707 0018 3946     		mov	r1, r7
 2708 001a 0123     		movs	r3, #1
 2709 001c FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2710 0020 0023     		movs	r3, #0
 2711 0022 089A     		ldr	r2, [sp, #32]
 2712 0024 C4F85024 		str	r2, [r4, #1104]
 2713 0028 C4F84C04 		str	r0, [r4, #1100]
 2714 002c 84F85834 		strb	r3, [r4, #1112]
 2715 0030 38B1     		cbz	r0, .L480
 2716 0032 0A9B     		ldr	r3, [sp, #40]
 2717 0034 7364     		str	r3, [r6, #68]
 2718 0036 86F8F1A0 		strb	r10, [r6, #241]
 2719 003a F762     		str	r7, [r6, #44]
 2720 003c 0120     		movs	r0, #1
 2721 003e BDE8F886 		pop	{r3, r4, r5, r6, r7, r9, r10, pc}
 2722              	.L480:
 2723 0042 0546     		mov	r5, r0
 2724 0044 4B46     		mov	r3, r9
 2725 0046 2068     		ldr	r0, [r4]
 2726 0048 034A     		ldr	r2, .L481
 2727 004a 40F2B511 		movw	r1, #437
 2728 004e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2729 0052 2846     		mov	r0, r5
 2730 0054 BDE8F886 		pop	{r3, r4, r5, r6, r7, r9, r10, pc}
 2731              	.L482:
 2732              		.align	2
 2733              	.L481:
 2734 0058 00000000 		.word	.LC60
 2735              		.size	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_mbm, .-_ZN6GCodes15OpenFileToWriteER11GCodeB
 2736              		.section	.text._ZN6GCodes16QueueFileToPrintEPKcRK9StringRef,"ax",%progbits
ARM GAS  /tmp/ccJRi9N9.s 			page 49


 2737              		.align	1
 2738              		.p2align 2,,3
 2739              		.global	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef
 2740              		.syntax unified
 2741              		.thumb
 2742              		.thumb_func
 2743              		.fpu fpv4-sp-d16
 2744              		.type	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef, %function
 2745              	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef:
 2746              		@ args = 0, pretend = 0, frame = 0
 2747              		@ frame_needed = 0, uses_anonymous_args = 0
 2748 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2749 0002 0368     		ldr	r3, [r0]
 2750 0004 0E46     		mov	r6, r1
 2751 0006 0446     		mov	r4, r0
 2752 0008 1E49     		ldr	r1, .L493
 2753 000a D3F8B409 		ldr	r0, [r3, #2484]
 2754 000e 1746     		mov	r7, r2
 2755 0010 0023     		movs	r3, #0
 2756 0012 3246     		mov	r2, r6
 2757 0014 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2758 0018 0546     		mov	r5, r0
 2759 001a 58B3     		cbz	r0, .L484
 2760 001c 236C     		ldr	r3, [r4, #64]
 2761 001e 1B68     		ldr	r3, [r3]
 2762 0020 0022     		movs	r2, #0
 2763 0022 1A63     		str	r2, [r3, #48]
 2764 0024 236C     		ldr	r3, [r4, #64]
 2765 0026 1B68     		ldr	r3, [r3]
 2766 0028 9B68     		ldr	r3, [r3, #8]
 2767 002a 187E     		ldrb	r0, [r3, #24]	@ zero_extendqisi2
 2768 002c 0021     		movs	r1, #0
 2769 002e 62F38610 		bfi	r0, r2, #6, #1
 2770 0032 1876     		strb	r0, [r3, #24]
 2771 0034 0A46     		mov	r2, r1	@ float
 2772 0036 C4F8C812 		str	r1, [r4, #712]	@ float
 2773 003a 04F53373 		add	r3, r4, #716
 2774 003e 04F53C71 		add	r1, r4, #752
 2775              	.L485:
 2776 0042 43F8042B 		str	r2, [r3], #4	@ float
 2777 0046 8B42     		cmp	r3, r1
 2778 0048 FBD1     		bne	.L485
 2779 004a 0F4B     		ldr	r3, .L493+4
 2780 004c C4F8F022 		str	r2, [r4, #752]	@ float
 2781 0050 9868     		ldr	r0, [r3, #8]
 2782 0052 FFF7FEFF 		bl	_ZN4Move22ResetExtruderPositionsEv
 2783 0056 D4F84404 		ldr	r0, [r4, #1092]
 2784 005a 08B1     		cbz	r0, .L486
 2785 005c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2786              	.L486:
 2787 0060 0022     		movs	r2, #0
 2788 0062 0023     		movs	r3, #0
 2789 0064 C4F85C21 		str	r2, [r4, #348]	@ float
 2790 0068 C4F84834 		str	r3, [r4, #1096]
 2791 006c C4F84454 		str	r5, [r4, #1092]
 2792 0070 0120     		movs	r0, #1
 2793 0072 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  /tmp/ccJRi9N9.s 			page 50


 2794              	.L484:
 2795 0074 3246     		mov	r2, r6
 2796 0076 3846     		mov	r0, r7
 2797 0078 0449     		ldr	r1, .L493+8
 2798 007a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2799 007e 2846     		mov	r0, r5
 2800 0080 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2801              	.L494:
 2802 0082 00BF     		.align	2
 2803              	.L493:
 2804 0084 00000000 		.word	.LC61
 2805 0088 00000000 		.word	reprap
 2806 008c 0C000000 		.word	.LC62
 2807              		.size	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef, .-_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef
 2808              		.section	.text._ZN6GCodes13StartPrintingEb,"ax",%progbits
 2809              		.align	1
 2810              		.p2align 2,,3
 2811              		.global	_ZN6GCodes13StartPrintingEb
 2812              		.syntax unified
 2813              		.thumb
 2814              		.thumb_func
 2815              		.fpu fpv4-sp-d16
 2816              		.type	_ZN6GCodes13StartPrintingEb, %function
 2817              	_ZN6GCodes13StartPrintingEb:
 2818              		@ args = 0, pretend = 0, frame = 0
 2819              		@ frame_needed = 0, uses_anonymous_args = 0
 2820 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2821 0004 036C     		ldr	r3, [r0, #64]
 2822 0006 82B0     		sub	sp, sp, #8
 2823 0008 0446     		mov	r4, r0
 2824 000a 1868     		ldr	r0, [r3]
 2825 000c 0E46     		mov	r6, r1
 2826 000e FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 2827 0012 0546     		mov	r5, r0
 2828 0014 8068     		ldr	r0, [r0, #8]
 2829 0016 18B1     		cbz	r0, .L496
 2830 0018 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2831 001c 0023     		movs	r3, #0
 2832 001e AB60     		str	r3, [r5, #8]
 2833              	.L496:
 2834 0020 D4F84434 		ldr	r3, [r4, #1092]
 2835 0024 AB60     		str	r3, [r5, #8]
 2836 0026 236C     		ldr	r3, [r4, #64]
 2837 0028 D4F80C80 		ldr	r8, [r4, #12]
 2838 002c 1868     		ldr	r0, [r3]
 2839 002e 164D     		ldr	r5, .L509
 2840 0030 0027     		movs	r7, #0
 2841 0032 C4F84474 		str	r7, [r4, #1092]
 2842 0036 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 2843 003a 00F10801 		add	r1, r0, #8
 2844 003e 4046     		mov	r0, r8
 2845 0040 FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 2846 0044 E869     		ldr	r0, [r5, #28]
 2847 0046 84F86476 		strb	r7, [r4, #1636]
 2848 004a FFF7FEFF 		bl	_ZN12PrintMonitor12StartedPrintEv
 2849 004e E969     		ldr	r1, [r5, #28]
 2850 0050 94F85875 		ldrb	r7, [r4, #1368]	@ zero_extendqisi2
ARM GAS  /tmp/ccJRi9N9.s 			page 51


 2851 0054 0D4A     		ldr	r2, .L509+4
 2852 0056 0E4D     		ldr	r5, .L509+8
 2853 0058 0B7B     		ldrb	r3, [r1, #12]	@ zero_extendqisi2
 2854 005a 2068     		ldr	r0, [r4]
 2855 005c 002F     		cmp	r7, #0
 2856 005e 18BF     		it	ne
 2857 0060 2A46     		movne	r2, r5
 2858 0062 0BB1     		cbz	r3, .L498
 2859 0064 01F59073 		add	r3, r1, #288
 2860              	.L498:
 2861 0068 8021     		movs	r1, #128
 2862 006a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2863 006e 3EB1     		cbz	r6, .L495
 2864 0070 236C     		ldr	r3, [r4, #64]
 2865 0072 084A     		ldr	r2, .L509+12
 2866 0074 1968     		ldr	r1, [r3]
 2867 0076 0023     		movs	r3, #0
 2868 0078 2046     		mov	r0, r4
 2869 007a 0093     		str	r3, [sp]
 2870 007c FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2871              	.L495:
 2872 0080 02B0     		add	sp, sp, #8
 2873              		@ sp needed
 2874 0082 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2875              	.L510:
 2876 0086 00BF     		.align	2
 2877              	.L509:
 2878 0088 00000000 		.word	reprap
 2879 008c 00000000 		.word	.LC63
 2880 0090 1C000000 		.word	.LC64
 2881 0094 44000000 		.word	.LC65
 2882              		.size	_ZN6GCodes13StartPrintingEb, .-_ZN6GCodes13StartPrintingEb
 2883              		.section	.text._ZN6GCodes11DoDwellTimeER11GCodeBufferm,"ax",%progbits
 2884              		.align	1
 2885              		.p2align 2,,3
 2886              		.global	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 2887              		.syntax unified
 2888              		.thumb
 2889              		.thumb_func
 2890              		.fpu fpv4-sp-d16
 2891              		.type	_ZN6GCodes11DoDwellTimeER11GCodeBufferm, %function
 2892              	_ZN6GCodes11DoDwellTimeER11GCodeBufferm:
 2893              		@ args = 0, pretend = 0, frame = 0
 2894              		@ frame_needed = 0, uses_anonymous_args = 0
 2895 0000 38B5     		push	{r3, r4, r5, lr}
 2896 0002 0C46     		mov	r4, r1
 2897 0004 1546     		mov	r5, r2
 2898 0006 FFF7FEFF 		bl	millis
 2899 000a 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 2900 000c 3BB1     		cbz	r3, .L512
 2901 000e 2368     		ldr	r3, [r4]
 2902 0010 C01A     		subs	r0, r0, r3
 2903 0012 A842     		cmp	r0, r5
 2904 0014 08D3     		bcc	.L514
 2905 0016 0023     		movs	r3, #0
 2906 0018 2371     		strb	r3, [r4, #4]
 2907 001a 0120     		movs	r0, #1
ARM GAS  /tmp/ccJRi9N9.s 			page 52


 2908 001c 38BD     		pop	{r3, r4, r5, pc}
 2909              	.L512:
 2910 001e 0122     		movs	r2, #1
 2911 0020 2060     		str	r0, [r4]
 2912 0022 2271     		strb	r2, [r4, #4]
 2913 0024 1846     		mov	r0, r3
 2914 0026 38BD     		pop	{r3, r4, r5, pc}
 2915              	.L514:
 2916 0028 0020     		movs	r0, #0
 2917 002a 38BD     		pop	{r3, r4, r5, pc}
 2918              		.size	_ZN6GCodes11DoDwellTimeER11GCodeBufferm, .-_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 2919              		.section	.text._ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef,"ax",%progbits
 2920              		.align	1
 2921              		.p2align 2,,3
 2922              		.global	_ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef
 2923              		.syntax unified
 2924              		.thumb
 2925              		.thumb_func
 2926              		.fpu fpv4-sp-d16
 2927              		.type	_ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef, %function
 2928              	_ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef:
 2929              		@ args = 0, pretend = 0, frame = 152
 2930              		@ frame_needed = 0, uses_anonymous_args = 0
 2931 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2932 0004 0C46     		mov	r4, r1
 2933 0006 ADB0     		sub	sp, sp, #180
 2934 0008 0746     		mov	r7, r0
 2935 000a 5021     		movs	r1, #80
 2936 000c 2046     		mov	r0, r4
 2937 000e 9046     		mov	r8, r2
 2938 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2939 0014 0546     		mov	r5, r0
 2940 0016 50B9     		cbnz	r0, .L517
 2941 0018 5321     		movs	r1, #83
 2942 001a 2046     		mov	r0, r4
 2943 001c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2944 0020 0028     		cmp	r0, #0
 2945 0022 72D1     		bne	.L518
 2946              	.L568:
 2947 0024 0025     		movs	r5, #0
 2948              	.L553:
 2949 0026 2846     		mov	r0, r5
 2950 0028 2DB0     		add	sp, sp, #180
 2951              		@ sp needed
 2952 002a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2953              	.L517:
 2954 002e 2046     		mov	r0, r4
 2955 0030 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2956 0034 B0F1000A 		subs	r10, r0, #0
 2957 0038 6FDB     		blt	.L569
 2958 003a 0023     		movs	r3, #0
 2959 003c 5321     		movs	r1, #83
 2960 003e 2046     		mov	r0, r4
 2961 0040 8DF84430 		strb	r3, [sp, #68]
 2962 0044 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2963 0048 0646     		mov	r6, r0
 2964 004a 58B1     		cbz	r0, .L521
ARM GAS  /tmp/ccJRi9N9.s 			page 53


 2965 004c 11AA     		add	r2, sp, #68
 2966 004e 2123     		movs	r3, #33
 2967 0050 23A9     		add	r1, sp, #140
 2968 0052 2046     		mov	r0, r4
 2969 0054 2392     		str	r2, [sp, #140]
 2970 0056 2493     		str	r3, [sp, #144]
 2971 0058 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 2972 005c 0028     		cmp	r0, #0
 2973 005e 00F0D480 		beq	.L570
 2974 0062 0646     		mov	r6, r0
 2975              	.L521:
 2976 0064 D7F8A032 		ldr	r3, [r7, #672]
 2977 0068 0693     		str	r3, [sp, #24]
 2978 006a 4421     		movs	r1, #68
 2979 006c 2046     		mov	r0, r4
 2980 006e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2981 0072 8446     		mov	ip, r0
 2982 0074 0028     		cmp	r0, #0
 2983 0076 58D1     		bne	.L571
 2984 0078 0690     		str	r0, [sp, #24]
 2985              	.L523:
 2986 007a 0823     		movs	r3, #8
 2987 007c 4821     		movs	r1, #72
 2988 007e 2046     		mov	r0, r4
 2989 0080 0793     		str	r3, [sp, #28]
 2990 0082 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2991 0086 8446     		mov	ip, r0
 2992 0088 0028     		cmp	r0, #0
 2993 008a 40F08F80 		bne	.L572
 2994 008e 0790     		str	r0, [sp, #28]
 2995              	.L525:
 2996 0090 5821     		movs	r1, #88
 2997 0092 2046     		mov	r0, r4
 2998 0094 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2999 0098 0028     		cmp	r0, #0
 3000 009a 4ED1     		bne	.L573
 3001 009c 5921     		movs	r1, #89
 3002 009e 2046     		mov	r0, r4
 3003 00a0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3004 00a4 0028     		cmp	r0, #0
 3005 00a6 40F08980 		bne	.L574
 3006 00aa 4621     		movs	r1, #70
 3007 00ac 2046     		mov	r0, r4
 3008 00ae FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3009 00b2 0028     		cmp	r0, #0
 3010 00b4 40F0B880 		bne	.L575
 3011 00b8 002E     		cmp	r6, #0
 3012 00ba 00F0D780 		beq	.L540
 3013 00be 4FF00109 		mov	r9, #1
 3014 00c2 4C46     		mov	r4, r9
 3015 00c4 0227     		movs	r7, #2
 3016              	.L539:
 3017 00c6 5146     		mov	r1, r10
 3018 00c8 7148     		ldr	r0, .L577
 3019 00ca FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 3020 00ce 0146     		mov	r1, r0
 3021 00d0 6F48     		ldr	r0, .L577
ARM GAS  /tmp/ccJRi9N9.s 			page 54


 3022 00d2 FFF7FEFF 		bl	_ZN6RepRap10DeleteToolEP4Tool
 3023 00d6 DDE90632 		ldrd	r3, r2, [sp, #24]
 3024 00da 012B     		cmp	r3, #1
 3025 00dc 02D1     		bne	.L542
 3026 00de 012A     		cmp	r2, #1
 3027 00e0 00F09980 		beq	.L576
 3028              	.L542:
 3029 00e4 09A9     		add	r1, sp, #36
 3030 00e6 0192     		str	r2, [sp, #4]
 3031 00e8 0091     		str	r1, [sp]
 3032 00ea CDE90448 		strd	r4, r8, [sp, #16]
 3033 00ee CDE90297 		strd	r9, r7, [sp, #8]
 3034 00f2 5046     		mov	r0, r10
 3035 00f4 1AAA     		add	r2, sp, #104
 3036 00f6 11A9     		add	r1, sp, #68
 3037 00f8 FFF7FEFF 		bl	_ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef
 3038 00fc 0028     		cmp	r0, #0
 3039 00fe 92D0     		beq	.L553
 3040 0100 0146     		mov	r1, r0
 3041 0102 6348     		ldr	r0, .L577
 3042 0104 FFF7FEFF 		bl	_ZN6RepRap7AddToolEP4Tool
 3043 0108 8CE7     		b	.L568
 3044              	.L518:
 3045 010a 2046     		mov	r0, r4
 3046 010c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3047 0110 2063     		str	r0, [r4, #48]
 3048 0112 2846     		mov	r0, r5
 3049 0114 2DB0     		add	sp, sp, #180
 3050              		@ sp needed
 3051 0116 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3052              	.L569:
 3053 011a 4046     		mov	r0, r8
 3054 011c 5D49     		ldr	r1, .L577+4
 3055 011e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3056 0122 2846     		mov	r0, r5
 3057 0124 2DB0     		add	sp, sp, #180
 3058              		@ sp needed
 3059 0126 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3060              	.L571:
 3061 012a 0023     		movs	r3, #0
 3062 012c 06AA     		add	r2, sp, #24
 3063 012e 1AA9     		add	r1, sp, #104
 3064 0130 2046     		mov	r0, r4
 3065 0132 6646     		mov	r6, ip
 3066 0134 FFF7FEFF 		bl	_ZN11GCodeBuffer11GetIntArrayEPlRjb
 3067 0138 9FE7     		b	.L523
 3068              	.L573:
 3069 013a 0DF1B00B 		add	fp, sp, #176
 3070 013e D7F89C32 		ldr	r3, [r7, #668]
 3071 0142 4BF8903D 		str	r3, [fp, #-144]!
 3072 0146 23AE     		add	r6, sp, #140
 3073 0148 3146     		mov	r1, r6
 3074 014a 5A46     		mov	r2, fp
 3075 014c 0023     		movs	r3, #0
 3076 014e 2046     		mov	r0, r4
 3077 0150 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 3078 0154 0899     		ldr	r1, [sp, #32]
ARM GAS  /tmp/ccJRi9N9.s 			page 55


 3079 0156 0029     		cmp	r1, #0
 3080 0158 00F09780 		beq	.L548
 3081 015c 06EB8101 		add	r1, r6, r1, lsl #2
 3082 0160 3246     		mov	r2, r6
 3083 0162 4FF00009 		mov	r9, #0
 3084 0166 0120     		movs	r0, #1
 3085              	.L529:
 3086 0168 52F8043B 		ldr	r3, [r2], #4
 3087 016c 1F2B     		cmp	r3, #31
 3088 016e 9CBF     		itt	ls
 3089 0170 00FA03F3 		lslls	r3, r0, r3
 3090 0174 49EA0309 		orrls	r9, r9, r3
 3091 0178 8A42     		cmp	r2, r1
 3092 017a F5D1     		bne	.L529
 3093              	.L527:
 3094 017c D7F89C22 		ldr	r2, [r7, #668]
 3095 0180 4FF0FF33 		mov	r3, #-1
 3096 0184 9340     		lsls	r3, r3, r2
 3097 0186 5921     		movs	r1, #89
 3098 0188 2046     		mov	r0, r4
 3099 018a 29EA0309 		bic	r9, r9, r3
 3100 018e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3101 0192 C0B9     		cbnz	r0, .L544
 3102 0194 0227     		movs	r7, #2
 3103              	.L530:
 3104 0196 17EA090F 		tst	r7, r9
 3105 019a 6ED0     		beq	.L534
 3106 019c 4046     		mov	r0, r8
 3107 019e 3E49     		ldr	r1, .L577+8
 3108 01a0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3109 01a4 2846     		mov	r0, r5
 3110 01a6 2DB0     		add	sp, sp, #180
 3111              		@ sp needed
 3112 01a8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3113              	.L572:
 3114 01ac 0023     		movs	r3, #0
 3115 01ae 07AA     		add	r2, sp, #28
 3116 01b0 09A9     		add	r1, sp, #36
 3117 01b2 2046     		mov	r0, r4
 3118 01b4 6646     		mov	r6, ip
 3119 01b6 FFF7FEFF 		bl	_ZN11GCodeBuffer11GetIntArrayEPlRjb
 3120 01ba 69E7     		b	.L525
 3121              	.L574:
 3122 01bc 4FF00109 		mov	r9, #1
 3123 01c0 23AE     		add	r6, sp, #140
 3124 01c2 0DF1200B 		add	fp, sp, #32
 3125              	.L544:
 3126 01c6 D7F89C32 		ldr	r3, [r7, #668]
 3127 01ca 0893     		str	r3, [sp, #32]
 3128 01cc 2046     		mov	r0, r4
 3129 01ce 0023     		movs	r3, #0
 3130 01d0 5A46     		mov	r2, fp
 3131 01d2 3146     		mov	r1, r6
 3132 01d4 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 3133 01d8 0898     		ldr	r0, [sp, #32]
 3134 01da 70B1     		cbz	r0, .L531
 3135 01dc 06EB8001 		add	r1, r6, r0, lsl #2
ARM GAS  /tmp/ccJRi9N9.s 			page 56


 3136 01e0 3246     		mov	r2, r6
 3137 01e2 0020     		movs	r0, #0
 3138 01e4 4FF0010C 		mov	ip, #1
 3139              	.L533:
 3140 01e8 52F8043B 		ldr	r3, [r2], #4
 3141 01ec 1F2B     		cmp	r3, #31
 3142 01ee 9CBF     		itt	ls
 3143 01f0 0CFA03F3 		lslls	r3, ip, r3
 3144 01f4 1843     		orrls	r0, r0, r3
 3145 01f6 9142     		cmp	r1, r2
 3146 01f8 F6D1     		bne	.L533
 3147              	.L531:
 3148 01fa D7F89C32 		ldr	r3, [r7, #668]
 3149 01fe 4FF0FF37 		mov	r7, #-1
 3150 0202 9F40     		lsls	r7, r7, r3
 3151 0204 20EA0707 		bic	r7, r0, r7
 3152 0208 C5E7     		b	.L530
 3153              	.L570:
 3154 020a 4046     		mov	r0, r8
 3155 020c 2349     		ldr	r1, .L577+12
 3156 020e 3546     		mov	r5, r6
 3157 0210 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3158 0214 07E7     		b	.L553
 3159              	.L576:
 3160 0216 1A99     		ldr	r1, [sp, #104]
 3161 0218 0131     		adds	r1, r1, #1
 3162 021a 7FF463AF 		bne	.L542
 3163 021e 0999     		ldr	r1, [sp, #36]
 3164 0220 0131     		adds	r1, r1, #1
 3165 0222 7FF45FAF 		bne	.L542
 3166 0226 FDE6     		b	.L568
 3167              	.L575:
 3168 0228 0227     		movs	r7, #2
 3169 022a 4FF00109 		mov	r9, #1
 3170 022e 23AE     		add	r6, sp, #140
 3171 0230 0DF1200B 		add	fp, sp, #32
 3172              	.L546:
 3173 0234 2046     		mov	r0, r4
 3174 0236 5A46     		mov	r2, fp
 3175 0238 0924     		movs	r4, #9
 3176 023a 0023     		movs	r3, #0
 3177 023c 3146     		mov	r1, r6
 3178 023e 0894     		str	r4, [sp, #32]
 3179 0240 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 3180 0244 089C     		ldr	r4, [sp, #32]
 3181 0246 002C     		cmp	r4, #0
 3182 0248 3FF43DAF 		beq	.L539
 3183 024c 06EB8402 		add	r2, r6, r4, lsl #2
 3184 0250 0121     		movs	r1, #1
 3185 0252 0024     		movs	r4, #0
 3186              	.L538:
 3187 0254 56F8043B 		ldr	r3, [r6], #4
 3188 0258 1F2B     		cmp	r3, #31
 3189 025a 9CBF     		itt	ls
 3190 025c 01FA03F3 		lslls	r3, r1, r3
 3191 0260 1C43     		orrls	r4, r4, r3
 3192 0262 B242     		cmp	r2, r6
ARM GAS  /tmp/ccJRi9N9.s 			page 57


 3193 0264 F6D1     		bne	.L538
 3194 0266 C4F30804 		ubfx	r4, r4, #0, #9
 3195 026a 2CE7     		b	.L539
 3196              	.L540:
 3197 026c 4246     		mov	r2, r8
 3198 026e 5146     		mov	r1, r10
 3199 0270 0748     		ldr	r0, .L577
 3200 0272 3546     		mov	r5, r6
 3201 0274 FFF7FEFF 		bl	_ZNK6RepRap9PrintToolEiRK9StringRef
 3202 0278 D5E6     		b	.L553
 3203              	.L534:
 3204 027a 4621     		movs	r1, #70
 3205 027c 2046     		mov	r0, r4
 3206 027e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3207 0282 0028     		cmp	r0, #0
 3208 0284 D6D1     		bne	.L546
 3209 0286 0124     		movs	r4, #1
 3210 0288 1DE7     		b	.L539
 3211              	.L548:
 3212 028a 8946     		mov	r9, r1
 3213 028c 76E7     		b	.L527
 3214              	.L578:
 3215 028e 00BF     		.align	2
 3216              	.L577:
 3217 0290 00000000 		.word	reprap
 3218 0294 00000000 		.word	.LC66
 3219 0298 34000000 		.word	.LC68
 3220 029c 20000000 		.word	.LC67
 3221              		.size	_ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef, .-_ZN6GCodes10ManageToolER11GCodeBufferRK
 3222              		.section	.text._ZN6GCodes13DisableDrivesEv,"ax",%progbits
 3223              		.align	1
 3224              		.p2align 2,,3
 3225              		.global	_ZN6GCodes13DisableDrivesEv
 3226              		.syntax unified
 3227              		.thumb
 3228              		.thumb_func
 3229              		.fpu fpv4-sp-d16
 3230              		.type	_ZN6GCodes13DisableDrivesEv, %function
 3231              	_ZN6GCodes13DisableDrivesEv:
 3232              		@ args = 0, pretend = 0, frame = 0
 3233              		@ frame_needed = 0, uses_anonymous_args = 0
 3234 0000 38B5     		push	{r3, r4, r5, lr}
 3235 0002 0546     		mov	r5, r0
 3236 0004 0024     		movs	r4, #0
 3237              	.L580:
 3238 0006 2146     		mov	r1, r4
 3239 0008 2868     		ldr	r0, [r5]
 3240 000a 0134     		adds	r4, r4, #1
 3241 000c FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 3242 0010 0C2C     		cmp	r4, #12
 3243 0012 F8D1     		bne	.L580
 3244 0014 0023     		movs	r3, #0
 3245 0016 C5F87434 		str	r3, [r5, #1140]
 3246 001a 38BD     		pop	{r3, r4, r5, pc}
 3247              		.size	_ZN6GCodes13DisableDrivesEv, .-_ZN6GCodes13DisableDrivesEv
 3248              		.section	.text._ZNK6GCodes19ChangeMicrosteppingEjjb,"ax",%progbits
 3249              		.align	1
ARM GAS  /tmp/ccJRi9N9.s 			page 58


 3250              		.p2align 2,,3
 3251              		.global	_ZNK6GCodes19ChangeMicrosteppingEjjb
 3252              		.syntax unified
 3253              		.thumb
 3254              		.thumb_func
 3255              		.fpu fpv4-sp-d16
 3256              		.type	_ZNK6GCodes19ChangeMicrosteppingEjjb, %function
 3257              	_ZNK6GCodes19ChangeMicrosteppingEjjb:
 3258              		@ args = 0, pretend = 0, frame = 16
 3259              		@ frame_needed = 0, uses_anonymous_args = 0
 3260 0000 70B5     		push	{r4, r5, r6, lr}
 3261 0002 84B0     		sub	sp, sp, #16
 3262 0004 0446     		mov	r4, r0
 3263 0006 0092     		str	r2, [sp]
 3264 0008 0068     		ldr	r0, [r0]
 3265 000a 0DF10F02 		add	r2, sp, #15
 3266 000e 1E46     		mov	r6, r3
 3267 0010 0D46     		mov	r5, r1
 3268 0012 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 3269 0016 3346     		mov	r3, r6
 3270 0018 0190     		str	r0, [sp, #4]
 3271 001a 009A     		ldr	r2, [sp]
 3272 001c 2068     		ldr	r0, [r4]
 3273 001e 2946     		mov	r1, r5
 3274 0020 FFF7FEFF 		bl	_ZN8Platform16SetMicrosteppingEjib
 3275 0024 00B3     		cbz	r0, .L584
 3276 0026 2168     		ldr	r1, [r4]
 3277 0028 DDED007A 		vldr.32	s15, [sp]	@ int
 3278 002c DDED016A 		vldr.32	s13, [sp, #4]	@ int
 3279 0030 01EB8501 		add	r1, r1, r5, lsl #2
 3280 0034 91ED6A7A 		vldr.32	s14, [r1, #424]
 3281 0038 F8EE677A 		vcvt.f32.u32	s15, s15
 3282 003c F8EE666A 		vcvt.f32.u32	s13, s13
 3283 0040 67EE877A 		vmul.f32	s15, s15, s14
 3284 0044 87EEA67A 		vdiv.f32	s14, s15, s13
 3285 0048 B4EE477A 		vcmp.f32	s14, s14
 3286 004c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3287 0050 08D6     		bvs	.L585
 3288 0052 F7EE007A 		vmov.f32	s15, #1.0e+0
 3289 0056 B4EEE77A 		vcmpe.f32	s14, s15
 3290 005a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3291 005e D8BF     		it	le
 3292 0060 B0EE677A 		vmovle.f32	s14, s15
 3293              	.L585:
 3294 0064 81ED6A7A 		vstr.32	s14, [r1, #424]
 3295              	.L584:
 3296 0068 04B0     		add	sp, sp, #16
 3297              		@ sp needed
 3298 006a 70BD     		pop	{r4, r5, r6, pc}
 3299              		.size	_ZNK6GCodes19ChangeMicrosteppingEjjb, .-_ZNK6GCodes19ChangeMicrosteppingEjjb
 3300              		.section	.text._ZN6GCodes17SetMappedFanSpeedEv,"ax",%progbits
 3301              		.align	1
 3302              		.p2align 2,,3
 3303              		.global	_ZN6GCodes17SetMappedFanSpeedEv
 3304              		.syntax unified
 3305              		.thumb
 3306              		.thumb_func
ARM GAS  /tmp/ccJRi9N9.s 			page 59


 3307              		.fpu fpv4-sp-d16
 3308              		.type	_ZN6GCodes17SetMappedFanSpeedEv, %function
 3309              	_ZN6GCodes17SetMappedFanSpeedEv:
 3310              		@ args = 0, pretend = 0, frame = 0
 3311              		@ frame_needed = 0, uses_anonymous_args = 0
 3312 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3313 0002 124B     		ldr	r3, .L601
 3314 0004 196B     		ldr	r1, [r3, #48]
 3315 0006 B9B1     		cbz	r1, .L599
 3316 0008 0646     		mov	r6, r0
 3317 000a D1F8AC50 		ldr	r5, [r1, #172]
 3318 000e 0024     		movs	r4, #0
 3319 0010 00F29C47 		addw	r7, r0, #1180
 3320 0014 02E0     		b	.L593
 3321              	.L592:
 3322 0016 0134     		adds	r4, r4, #1
 3323 0018 092C     		cmp	r4, #9
 3324 001a 0CD0     		beq	.L600
 3325              	.L593:
 3326 001c 25FA04F3 		lsr	r3, r5, r4
 3327 0020 DB07     		lsls	r3, r3, #31
 3328 0022 F8D5     		bpl	.L592
 3329 0024 2146     		mov	r1, r4
 3330 0026 97ED000A 		vldr.32	s0, [r7]
 3331 002a 3068     		ldr	r0, [r6]
 3332 002c 0134     		adds	r4, r4, #1
 3333 002e FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 3334 0032 092C     		cmp	r4, #9
 3335 0034 F2D1     		bne	.L593
 3336              	.L600:
 3337 0036 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3338              	.L599:
 3339 0038 00F29C43 		addw	r3, r0, #1180
 3340 003c 93ED000A 		vldr.32	s0, [r3]
 3341 0040 0068     		ldr	r0, [r0]
 3342 0042 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3343 0046 FFF7FEBF 		b	_ZN8Platform11SetFanValueEjf
 3344              	.L602:
 3345 004a 00BF     		.align	2
 3346              	.L601:
 3347 004c 00000000 		.word	reprap
 3348              		.size	_ZN6GCodes17SetMappedFanSpeedEv, .-_ZN6GCodes17SetMappedFanSpeedEv
 3349              		.section	.text._ZN6GCodes17SetMappedFanSpeedEf,"ax",%progbits
 3350              		.align	1
 3351              		.p2align 2,,3
 3352              		.global	_ZN6GCodes17SetMappedFanSpeedEf
 3353              		.syntax unified
 3354              		.thumb
 3355              		.thumb_func
 3356              		.fpu fpv4-sp-d16
 3357              		.type	_ZN6GCodes17SetMappedFanSpeedEf, %function
 3358              	_ZN6GCodes17SetMappedFanSpeedEf:
 3359              		@ args = 0, pretend = 0, frame = 0
 3360              		@ frame_needed = 0, uses_anonymous_args = 0
 3361              		@ link register save eliminated.
 3362 0000 00F29C43 		addw	r3, r0, #1180
 3363 0004 83ED000A 		vstr.32	s0, [r3]
ARM GAS  /tmp/ccJRi9N9.s 			page 60


 3364 0008 FFF7FEBF 		b	_ZN6GCodes17SetMappedFanSpeedEv
 3365              		.size	_ZN6GCodes17SetMappedFanSpeedEf, .-_ZN6GCodes17SetMappedFanSpeedEf
 3366              		.section	.text._ZN6GCodes13SaveFanSpeedsEv,"ax",%progbits
 3367              		.align	1
 3368              		.p2align 2,,3
 3369              		.global	_ZN6GCodes13SaveFanSpeedsEv
 3370              		.syntax unified
 3371              		.thumb
 3372              		.thumb_func
 3373              		.fpu fpv4-sp-d16
 3374              		.type	_ZN6GCodes13SaveFanSpeedsEv, %function
 3375              	_ZN6GCodes13SaveFanSpeedsEv:
 3376              		@ args = 0, pretend = 0, frame = 0
 3377              		@ frame_needed = 0, uses_anonymous_args = 0
 3378 0000 70B5     		push	{r4, r5, r6, lr}
 3379 0002 0646     		mov	r6, r0
 3380 0004 00F58F65 		add	r5, r0, #1144
 3381 0008 0024     		movs	r4, #0
 3382              	.L605:
 3383 000a 2146     		mov	r1, r4
 3384 000c 3068     		ldr	r0, [r6]
 3385 000e FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 3386 0012 0134     		adds	r4, r4, #1
 3387 0014 092C     		cmp	r4, #9
 3388 0016 A5EC010A 		vstmia.32	r5!, {s0}
 3389 001a F6D1     		bne	.L605
 3390 001c 06F29C43 		addw	r3, r6, #1180
 3391 0020 06F59466 		add	r6, r6, #1184
 3392 0024 1B68     		ldr	r3, [r3]	@ float
 3393 0026 3360     		str	r3, [r6]	@ float
 3394 0028 70BD     		pop	{r4, r5, r6, pc}
 3395              		.size	_ZN6GCodes13SaveFanSpeedsEv, .-_ZN6GCodes13SaveFanSpeedsEv
 3396 002a 00BF     		.section	.text._ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc,"ax",%progbits
 3397              		.align	1
 3398              		.p2align 2,,3
 3399              		.global	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 3400              		.syntax unified
 3401              		.thumb
 3402              		.thumb_func
 3403              		.fpu fpv4-sp-d16
 3404              		.type	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc, %function
 3405              	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc:
 3406              		@ args = 0, pretend = 0, frame = 8
 3407              		@ frame_needed = 0, uses_anonymous_args = 0
 3408 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 3409 0002 8C68     		ldr	r4, [r1, #8]
 3410 0004 247E     		ldrb	r4, [r4, #24]	@ zero_extendqisi2
 3411 0006 6407     		lsls	r4, r4, #29
 3412 0008 85B0     		sub	sp, sp, #20
 3413 000a 24D4     		bmi	.L609
 3414 000c 046C     		ldr	r4, [r0, #64]
 3415 000e 2468     		ldr	r4, [r4]
 3416 0010 8C42     		cmp	r4, r1
 3417 0012 20D0     		beq	.L609
 3418              	.L610:
 3419 0014 846C     		ldr	r4, [r0, #72]
 3420 0016 D0F800C0 		ldr	ip, [r0]
ARM GAS  /tmp/ccJRi9N9.s 			page 61


 3421 001a 2468     		ldr	r4, [r4]
 3422 001c 8C42     		cmp	r4, r1
 3423 001e 44D0     		beq	.L659
 3424 0020 1D46     		mov	r5, r3
 3425 0022 436C     		ldr	r3, [r0, #68]
 3426 0024 1B68     		ldr	r3, [r3]
 3427 0026 9942     		cmp	r1, r3
 3428 0028 1746     		mov	r7, r2
 3429 002a 0646     		mov	r6, r0
 3430 002c 0C46     		mov	r4, r1
 3431 002e 17D0     		beq	.L613
 3432 0030 C36B     		ldr	r3, [r0, #60]
 3433 0032 1B68     		ldr	r3, [r3]
 3434 0034 9942     		cmp	r1, r3
 3435 0036 13D0     		beq	.L613
 3436 0038 898E     		ldrh	r1, [r1, #52]
 3437              	.L614:
 3438 003a 022F     		cmp	r7, #2
 3439 003c 4BD0     		beq	.L660
 3440 003e 032F     		cmp	r7, #3
 3441 0040 08BF     		it	eq
 3442 0042 41F40071 		orreq	r1, r1, #512
 3443              	.L625:
 3444 0046 474A     		ldr	r2, .L664
 3445 0048 2B46     		mov	r3, r5
 3446 004a 6046     		mov	r0, ip
 3447              	.L658:
 3448 004c 05B0     		add	sp, sp, #20
 3449              		@ sp needed
 3450 004e BDE8F040 		pop	{r4, r5, r6, r7, lr}
 3451 0052 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 3452              	.L609:
 3453 0056 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 3454 0058 002C     		cmp	r4, #0
 3455 005a DBD1     		bne	.L610
 3456              	.L608:
 3457 005c 05B0     		add	sp, sp, #20
 3458              		@ sp needed
 3459 005e F0BD     		pop	{r4, r5, r6, r7, pc}
 3460              	.L613:
 3461 0060 6046     		mov	r0, ip
 3462 0062 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 3463 0066 94F84C30 		ldrb	r3, [r4, #76]	@ zero_extendqisi2
 3464 006a A18E     		ldrh	r1, [r4, #52]
 3465 006c 4D2B     		cmp	r3, #77
 3466 006e 06D0     		beq	.L661
 3467 0070 0528     		cmp	r0, #5
 3468 0072 43D8     		bhi	.L637
 3469 0074 DFE800F0 		tbb	[pc, r0]
 3470              	.L634:
 3471 0078 58       		.byte	(.L618-.L634)/2
 3472 0079 58       		.byte	(.L618-.L634)/2
 3473 007a 28       		.byte	(.L644-.L634)/2
 3474 007b 17       		.byte	(.L640-.L634)/2
 3475 007c 26       		.byte	(.L641-.L634)/2
 3476 007d 0F       		.byte	(.L647-.L634)/2
 3477              		.p2align 1
ARM GAS  /tmp/ccJRi9N9.s 			page 62


 3478              	.L661:
 3479 007e 226C     		ldr	r2, [r4, #64]
 3480 0080 40F2E633 		movw	r3, #998
 3481 0084 9A42     		cmp	r2, r3
 3482 0086 3BD0     		beq	.L662
 3483 0088 0528     		cmp	r0, #5
 3484 008a 37D8     		bhi	.L637
 3485 008c DFE800F0 		tbb	[pc, r0]
 3486              	.L639:
 3487 0090 4C       		.byte	(.L618-.L639)/2
 3488 0091 4C       		.byte	(.L618-.L639)/2
 3489 0092 26       		.byte	(.L646-.L639)/2
 3490 0093 0B       		.byte	(.L640-.L639)/2
 3491 0094 1A       		.byte	(.L641-.L639)/2
 3492 0095 03       		.byte	(.L647-.L639)/2
 3493              		.p2align 1
 3494              	.L647:
 3495 0096 344B     		ldr	r3, .L664+4
 3496              	.L621:
 3497 0098 3068     		ldr	r0, [r6]
 3498 009a 344A     		ldr	r2, .L664+8
 3499 009c 05B0     		add	sp, sp, #20
 3500              		@ sp needed
 3501 009e BDE8F040 		pop	{r4, r5, r6, r7, lr}
 3502 00a2 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 3503              	.L640:
 3504 00a6 324B     		ldr	r3, .L664+12
 3505 00a8 F6E7     		b	.L621
 3506              	.L659:
 3507 00aa 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 3508 00ac A2F17B02 		sub	r2, #123
 3509 00b0 B2FA82F2 		clz	r2, r2
 3510 00b4 6046     		mov	r0, ip
 3511 00b6 5209     		lsrs	r2, r2, #5
 3512 00b8 1946     		mov	r1, r3
 3513 00ba 05B0     		add	sp, sp, #20
 3514              		@ sp needed
 3515 00bc BDE8F040 		pop	{r4, r5, r6, r7, lr}
 3516 00c0 FFF7FEBF 		b	_ZN8Platform14AppendAuxReplyEPKcb
 3517              	.L641:
 3518 00c4 2B4B     		ldr	r3, .L664+16
 3519 00c6 E7E7     		b	.L621
 3520              	.L644:
 3521 00c8 2B4F     		ldr	r7, .L664+20
 3522              	.L628:
 3523 00ca 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 3524 00cc 7ABB     		cbnz	r2, .L656
 3525 00ce 3068     		ldr	r0, [r6]
 3526              	.L629:
 3527 00d0 244A     		ldr	r2, .L664
 3528 00d2 3B46     		mov	r3, r7
 3529 00d4 BAE7     		b	.L658
 3530              	.L660:
 3531 00d6 41F48071 		orr	r1, r1, #256
 3532 00da B4E7     		b	.L625
 3533              	.L646:
 3534 00dc 264F     		ldr	r7, .L664+20
ARM GAS  /tmp/ccJRi9N9.s 			page 63


 3535              	.L620:
 3536 00de 1C2A     		cmp	r2, #28
 3537 00e0 39D0     		beq	.L663
 3538 00e2 692A     		cmp	r2, #105
 3539 00e4 03D0     		beq	.L627
 3540 00e6 40F2E633 		movw	r3, #998
 3541 00ea 9A42     		cmp	r2, r3
 3542 00ec EDD1     		bne	.L628
 3543              	.L627:
 3544 00ee 3068     		ldr	r0, [r6]
 3545 00f0 224A     		ldr	r2, .L664+24
 3546 00f2 0095     		str	r5, [sp]
 3547 00f4 3B46     		mov	r3, r7
 3548 00f6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3549 00fa AFE7     		b	.L608
 3550              	.L637:
 3551 00fc 204B     		ldr	r3, .L664+28
 3552 00fe CBE7     		b	.L621
 3553              	.L662:
 3554 0100 0528     		cmp	r0, #5
 3555 0102 FBD8     		bhi	.L637
 3556 0104 01A3     		adr	r3, .L619
 3557 0106 53F820F0 		ldr	pc, [r3, r0, lsl #2]
 3558 010a 00BF     		.p2align 2
 3559              	.L619:
 3560 010c 29010000 		.word	.L618+1
 3561 0110 29010000 		.word	.L618+1
 3562 0114 25010000 		.word	.L642+1
 3563 0118 A7000000 		.word	.L640+1
 3564 011c C5000000 		.word	.L641+1
 3565 0120 97000000 		.word	.L647+1
 3566              		.p2align 1
 3567              	.L642:
 3568 0124 174F     		ldr	r7, .L664+32
 3569 0126 DAE7     		b	.L620
 3570              	.L618:
 3571 0128 D6F800C0 		ldr	ip, [r6]
 3572 012c 85E7     		b	.L614
 3573              	.L656:
 3574 012e 2046     		mov	r0, r4
 3575 0130 0391     		str	r1, [sp, #12]
 3576 0132 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 3577 0136 0399     		ldr	r1, [sp, #12]
 3578 0138 30B1     		cbz	r0, .L630
 3579 013a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 3580 013c 3068     		ldr	r0, [r6]
 3581 013e 002B     		cmp	r3, #0
 3582 0140 C6D0     		beq	.L629
 3583 0142 2B46     		mov	r3, r5
 3584 0144 074A     		ldr	r2, .L664
 3585 0146 81E7     		b	.L658
 3586              	.L630:
 3587 0148 3068     		ldr	r0, [r6]
 3588 014a 0F4A     		ldr	r2, .L664+36
 3589 014c 0097     		str	r7, [sp]
 3590 014e 2B46     		mov	r3, r5
 3591 0150 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
ARM GAS  /tmp/ccJRi9N9.s 			page 64


 3592 0154 82E7     		b	.L608
 3593              	.L663:
 3594 0156 3068     		ldr	r0, [r6]
 3595 0158 0B4A     		ldr	r2, .L664+36
 3596 015a 0095     		str	r5, [sp]
 3597 015c 3B46     		mov	r3, r7
 3598 015e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3599 0162 7BE7     		b	.L608
 3600              	.L665:
 3601              		.align	2
 3602              	.L664:
 3603 0164 30000000 		.word	.LC75
 3604 0168 1C000000 		.word	.LC73
 3605 016c 44000000 		.word	.LC78
 3606 0170 08000000 		.word	.LC71
 3607 0174 10000000 		.word	.LC72
 3608 0178 04000000 		.word	.LC70
 3609 017c 3C000000 		.word	.LC77
 3610 0180 28000000 		.word	.LC74
 3611 0184 00000000 		.word	.LC69
 3612 0188 34000000 		.word	.LC76
 3613              		.size	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc, .-_ZN6GCodes11HandleReplyER11GCodeBu
 3614              		.section	.text._ZN6GCodes11FinishWriteER11GCodeBuffer,"ax",%progbits
 3615              		.align	1
 3616              		.p2align 2,,3
 3617              		.global	_ZN6GCodes11FinishWriteER11GCodeBuffer
 3618              		.syntax unified
 3619              		.thumb
 3620              		.thumb_func
 3621              		.fpu fpv4-sp-d16
 3622              		.type	_ZN6GCodes11FinishWriteER11GCodeBuffer, %function
 3623              	_ZN6GCodes11FinishWriteER11GCodeBuffer:
 3624              		@ args = 0, pretend = 0, frame = 0
 3625              		@ frame_needed = 0, uses_anonymous_args = 0
 3626 0000 70B5     		push	{r4, r5, r6, lr}
 3627 0002 0446     		mov	r4, r0
 3628 0004 D0F84C04 		ldr	r0, [r0, #1100]
 3629 0008 0D46     		mov	r5, r1
 3630 000a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 3631 000e D4F84C34 		ldr	r3, [r4, #1100]
 3632 0012 6A6C     		ldr	r2, [r5, #68]
 3633 0014 5B6B     		ldr	r3, [r3, #52]
 3634 0016 DB43     		mvns	r3, r3
 3635 0018 9342     		cmp	r3, r2
 3636 001a 00D0     		beq	.L667
 3637 001c A2B9     		cbnz	r2, .L669
 3638              	.L667:
 3639 001e 2068     		ldr	r0, [r4]
 3640 0020 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 3641 0024 094B     		ldr	r3, .L672
 3642 0026 0A4A     		ldr	r2, .L672+4
 3643 0028 0228     		cmp	r0, #2
 3644 002a 18BF     		it	ne
 3645 002c 1346     		movne	r3, r2
 3646              	.L668:
 3647 002e 0022     		movs	r2, #0
 3648 0030 C4F84C24 		str	r2, [r4, #1100]
ARM GAS  /tmp/ccJRi9N9.s 			page 65


 3649 0034 2946     		mov	r1, r5
 3650 0036 85F8F120 		strb	r2, [r5, #241]
 3651 003a EA62     		str	r2, [r5, #44]
 3652 003c 2046     		mov	r0, r4
 3653 003e 0122     		movs	r2, #1
 3654 0040 BDE87040 		pop	{r4, r5, r6, lr}
 3655 0044 FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 3656              	.L669:
 3657 0048 024B     		ldr	r3, .L672+8
 3658 004a F0E7     		b	.L668
 3659              	.L673:
 3660              		.align	2
 3661              	.L672:
 3662 004c 28000000 		.word	.LC81
 3663 0050 24000000 		.word	.LC80
 3664 0054 00000000 		.word	.LC79
 3665              		.size	_ZN6GCodes11FinishWriteER11GCodeBuffer, .-_ZN6GCodes11FinishWriteER11GCodeBuffer
 3666              		.section	.text._ZN6GCodes15WriteHTMLToFileER11GCodeBufferc,"ax",%progbits
 3667              		.align	1
 3668              		.p2align 2,,3
 3669              		.global	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc
 3670              		.syntax unified
 3671              		.thumb
 3672              		.thumb_func
 3673              		.fpu fpv4-sp-d16
 3674              		.type	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc, %function
 3675              	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc:
 3676              		@ args = 0, pretend = 0, frame = 0
 3677              		@ frame_needed = 0, uses_anonymous_args = 0
 3678 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3679 0002 0446     		mov	r4, r0
 3680 0004 D0F84C04 		ldr	r0, [r0, #1100]
 3681 0008 0028     		cmp	r0, #0
 3682 000a 3FD0     		beq	.L690
 3683 000c 1646     		mov	r6, r2
 3684 000e D4F85434 		ldr	r3, [r4, #1108]
 3685 0012 94F85824 		ldrb	r2, [r4, #1112]	@ zero_extendqisi2
 3686 0016 0F46     		mov	r7, r1
 3687 0018 995C     		ldrb	r1, [r3, r2]	@ zero_extendqisi2
 3688 001a B142     		cmp	r1, r6
 3689 001c 1BD0     		beq	.L691
 3690              	.L676:
 3691 001e 9AB1     		cbz	r2, .L679
 3692 0020 0025     		movs	r5, #0
 3693 0022 03E0     		b	.L681
 3694              	.L692:
 3695 0024 D4F84C04 		ldr	r0, [r4, #1100]
 3696 0028 D4F85434 		ldr	r3, [r4, #1108]
 3697              	.L681:
 3698 002c 595D     		ldrb	r1, [r3, r5]	@ zero_extendqisi2
 3699 002e FFF7FEFF 		bl	_ZN9FileStore5WriteEc
 3700 0032 0135     		adds	r5, r5, #1
 3701 0034 94F85834 		ldrb	r3, [r4, #1112]	@ zero_extendqisi2
 3702 0038 EDB2     		uxtb	r5, r5
 3703 003a AB42     		cmp	r3, r5
 3704 003c F2D8     		bhi	.L692
 3705 003e 0023     		movs	r3, #0
ARM GAS  /tmp/ccJRi9N9.s 			page 66


 3706 0040 D4F84C04 		ldr	r0, [r4, #1100]
 3707 0044 84F85834 		strb	r3, [r4, #1112]
 3708              	.L679:
 3709 0048 3146     		mov	r1, r6
 3710 004a FFF7FEFF 		bl	_ZN9FileStore5WriteEc
 3711 004e D4F85034 		ldr	r3, [r4, #1104]
 3712 0052 93B9     		cbnz	r3, .L693
 3713              	.L674:
 3714 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3715              	.L691:
 3716 0056 D4F85014 		ldr	r1, [r4, #1104]
 3717 005a 0029     		cmp	r1, #0
 3718 005c DFD1     		bne	.L676
 3719 005e 0132     		adds	r2, r2, #1
 3720 0060 94F85934 		ldrb	r3, [r4, #1113]	@ zero_extendqisi2
 3721 0064 D2B2     		uxtb	r2, r2
 3722 0066 9342     		cmp	r3, r2
 3723 0068 84F85824 		strb	r2, [r4, #1112]
 3724 006c F2D8     		bhi	.L674
 3725              	.L677:
 3726 006e 3946     		mov	r1, r7
 3727 0070 2046     		mov	r0, r4
 3728 0072 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3729 0076 FFF7FEBF 		b	_ZN6GCodes11FinishWriteER11GCodeBuffer
 3730              	.L693:
 3731 007a D4F84C04 		ldr	r0, [r4, #1100]
 3732 007e FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 3733 0082 D4F85034 		ldr	r3, [r4, #1104]
 3734 0086 9842     		cmp	r0, r3
 3735 0088 F1D2     		bcs	.L677
 3736 008a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3737              	.L690:
 3738 008c 2068     		ldr	r0, [r4]
 3739 008e 034A     		ldr	r2, .L694
 3740 0090 40F2B511 		movw	r1, #437
 3741 0094 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3742 0098 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 3743              	.L695:
 3744              		.align	2
 3745              	.L694:
 3746 009c 00000000 		.word	.LC82
 3747              		.size	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc, .-_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc
 3748              		.section	.text._ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer,"ax",%progbits
 3749              		.align	1
 3750              		.p2align 2,,3
 3751              		.global	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 3752              		.syntax unified
 3753              		.thumb
 3754              		.thumb_func
 3755              		.fpu fpv4-sp-d16
 3756              		.type	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer, %function
 3757              	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer:
 3758              		@ args = 0, pretend = 0, frame = 8
 3759              		@ frame_needed = 0, uses_anonymous_args = 0
 3760 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3761 0004 82B0     		sub	sp, sp, #8
 3762 0006 0193     		str	r3, [sp, #4]
ARM GAS  /tmp/ccJRi9N9.s 			page 67


 3763 0008 FBB1     		cbz	r3, .L696
 3764 000a 1E46     		mov	r6, r3
 3765 000c 836C     		ldr	r3, [r0, #72]
 3766 000e D0F80080 		ldr	r8, [r0]
 3767 0012 1B68     		ldr	r3, [r3]
 3768 0014 8B42     		cmp	r3, r1
 3769 0016 1746     		mov	r7, r2
 3770 0018 0D46     		mov	r5, r1
 3771 001a 0446     		mov	r4, r0
 3772 001c 44D0     		beq	.L749
 3773 001e 436C     		ldr	r3, [r0, #68]
 3774 0020 1B68     		ldr	r3, [r3]
 3775 0022 8B42     		cmp	r3, r1
 3776 0024 14D0     		beq	.L699
 3777 0026 C36B     		ldr	r3, [r0, #60]
 3778 0028 1B68     		ldr	r3, [r3]
 3779 002a 8B42     		cmp	r3, r1
 3780 002c 10D0     		beq	.L699
 3781 002e 8E8E     		ldrh	r6, [r1, #52]
 3782              	.L700:
 3783 0030 37B1     		cbz	r7, .L710
 3784 0032 4046     		mov	r0, r8
 3785 0034 5E4A     		ldr	r2, .L755
 3786 0036 3146     		mov	r1, r6
 3787 0038 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3788 003c D4F80080 		ldr	r8, [r4]
 3789              	.L710:
 3790 0040 019A     		ldr	r2, [sp, #4]
 3791 0042 3146     		mov	r1, r6
 3792 0044 4046     		mov	r0, r8
 3793 0046 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 3794              	.L696:
 3795 004a 02B0     		add	sp, sp, #8
 3796              		@ sp needed
 3797 004c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3798              	.L699:
 3799 0050 4046     		mov	r0, r8
 3800 0052 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 3801 0056 95F84C30 		ldrb	r3, [r5, #76]	@ zero_extendqisi2
 3802 005a AE8E     		ldrh	r6, [r5, #52]
 3803 005c 4D2B     		cmp	r3, #77
 3804 005e 06D0     		beq	.L750
 3805 0060 0528     		cmp	r0, #5
 3806 0062 32D8     		bhi	.L724
 3807 0064 DFE800F0 		tbb	[pc, r0]
 3808              	.L726:
 3809 0068 7E       		.byte	(.L704-.L726)/2
 3810 0069 7E       		.byte	(.L704-.L726)/2
 3811 006a 33       		.byte	(.L733-.L726)/2
 3812 006b 1C       		.byte	(.L727-.L726)/2
 3813 006c 1E       		.byte	(.L728-.L726)/2
 3814 006d 0F       		.byte	(.L734-.L726)/2
 3815              		.p2align 1
 3816              	.L750:
 3817 006e 2B6C     		ldr	r3, [r5, #64]
 3818 0070 40F2E632 		movw	r2, #998
 3819 0074 9342     		cmp	r3, r2
ARM GAS  /tmp/ccJRi9N9.s 			page 68


 3820 0076 61D0     		beq	.L751
 3821 0078 0528     		cmp	r0, #5
 3822 007a 26D8     		bhi	.L724
 3823 007c DFE800F0 		tbb	[pc, r0]
 3824              	.L721:
 3825 0080 72       		.byte	(.L704-.L721)/2
 3826 0081 72       		.byte	(.L704-.L721)/2
 3827 0082 43       		.byte	(.L731-.L721)/2
 3828 0083 10       		.byte	(.L727-.L721)/2
 3829 0084 12       		.byte	(.L728-.L721)/2
 3830 0085 03       		.byte	(.L734-.L721)/2
 3831              		.p2align 1
 3832              	.L734:
 3833 0086 4B4D     		ldr	r5, .L755+4
 3834              	.L707:
 3835 0088 01A8     		add	r0, sp, #4
 3836 008a FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3837 008e 2B46     		mov	r3, r5
 3838 0090 3146     		mov	r1, r6
 3839 0092 2068     		ldr	r0, [r4]
 3840 0094 484A     		ldr	r2, .L755+8
 3841 0096 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3842 009a 02B0     		add	sp, sp, #8
 3843              		@ sp needed
 3844 009c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3845              	.L727:
 3846 00a0 464D     		ldr	r5, .L755+12
 3847 00a2 F1E7     		b	.L707
 3848              	.L728:
 3849 00a4 464D     		ldr	r5, .L755+16
 3850 00a6 EFE7     		b	.L707
 3851              	.L749:
 3852 00a8 0021     		movs	r1, #0
 3853 00aa 3046     		mov	r0, r6
 3854 00ac FFF7FEFF 		bl	_ZN12OutputBufferixEj
 3855 00b0 0278     		ldrb	r2, [r0]	@ zero_extendqisi2
 3856 00b2 A2F17B02 		sub	r2, #123
 3857 00b6 B2FA82F2 		clz	r2, r2
 3858 00ba 3146     		mov	r1, r6
 3859 00bc 5209     		lsrs	r2, r2, #5
 3860 00be 4046     		mov	r0, r8
 3861 00c0 FFF7FEFF 		bl	_ZN8Platform14AppendAuxReplyEP12OutputBufferb
 3862 00c4 02B0     		add	sp, sp, #8
 3863              		@ sp needed
 3864 00c6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3865              	.L724:
 3866 00ca 3E4D     		ldr	r5, .L755+20
 3867 00cc DCE7     		b	.L707
 3868              	.L733:
 3869 00ce 3E4F     		ldr	r7, .L755+24
 3870              	.L714:
 3871 00d0 0198     		ldr	r0, [sp, #4]
 3872 00d2 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 3873 00d6 20B1     		cbz	r0, .L718
 3874 00d8 2846     		mov	r0, r5
 3875 00da FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 3876 00de 0028     		cmp	r0, #0
ARM GAS  /tmp/ccJRi9N9.s 			page 69


 3877 00e0 43D0     		beq	.L752
 3878              	.L718:
 3879 00e2 0198     		ldr	r0, [sp, #4]
 3880 00e4 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 3881 00e8 10BB     		cbnz	r0, .L748
 3882 00ea 01A8     		add	r0, sp, #4
 3883 00ec FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3884              	.L746:
 3885 00f0 3A46     		mov	r2, r7
 3886 00f2 3146     		mov	r1, r6
 3887 00f4 2068     		ldr	r0, [r4]
 3888 00f6 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3889 00fa 3146     		mov	r1, r6
 3890 00fc 2068     		ldr	r0, [r4]
 3891 00fe 334A     		ldr	r2, .L755+28
 3892 0100 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3893 0104 A1E7     		b	.L696
 3894              	.L731:
 3895 0106 304F     		ldr	r7, .L755+24
 3896              	.L706:
 3897 0108 142B     		cmp	r3, #20
 3898 010a 39D0     		beq	.L753
 3899 010c 1C2B     		cmp	r3, #28
 3900 010e 47D0     		beq	.L754
 3901 0110 692B     		cmp	r3, #105
 3902 0112 03D0     		beq	.L713
 3903 0114 40F2E632 		movw	r2, #998
 3904 0118 9342     		cmp	r3, r2
 3905 011a D9D1     		bne	.L714
 3906              	.L713:
 3907 011c 3A46     		mov	r2, r7
 3908 011e 3146     		mov	r1, r6
 3909 0120 2068     		ldr	r0, [r4]
 3910 0122 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3911 0126 2A4A     		ldr	r2, .L755+32
 3912              	.L747:
 3913 0128 2068     		ldr	r0, [r4]
 3914 012a 3146     		mov	r1, r6
 3915 012c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3916              	.L748:
 3917 0130 3146     		mov	r1, r6
 3918 0132 2068     		ldr	r0, [r4]
 3919 0134 019A     		ldr	r2, [sp, #4]
 3920 0136 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 3921 013a 86E7     		b	.L696
 3922              	.L751:
 3923 013c 0528     		cmp	r0, #5
 3924 013e C4D8     		bhi	.L724
 3925 0140 01A2     		adr	r2, .L705
 3926 0142 52F820F0 		ldr	pc, [r2, r0, lsl #2]
 3927 0146 00BF     		.p2align 2
 3928              	.L705:
 3929 0148 65010000 		.word	.L704+1
 3930 014c 65010000 		.word	.L704+1
 3931 0150 61010000 		.word	.L729+1
 3932 0154 A1000000 		.word	.L727+1
 3933 0158 A5000000 		.word	.L728+1
ARM GAS  /tmp/ccJRi9N9.s 			page 70


 3934 015c 87000000 		.word	.L734+1
 3935              		.p2align 1
 3936              	.L729:
 3937 0160 1C4F     		ldr	r7, .L755+36
 3938 0162 D1E7     		b	.L706
 3939              	.L704:
 3940 0164 D4F80080 		ldr	r8, [r4]
 3941 0168 62E7     		b	.L700
 3942              	.L752:
 3943 016a 019A     		ldr	r2, [sp, #4]
 3944 016c 2068     		ldr	r0, [r4]
 3945 016e 3146     		mov	r1, r6
 3946 0170 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 3947 0174 154A     		ldr	r2, .L755+28
 3948 0176 2068     		ldr	r0, [r4]
 3949 0178 3146     		mov	r1, r6
 3950 017a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3951 017e B7E7     		b	.L746
 3952              	.L753:
 3953 0180 2068     		ldr	r0, [r4]
 3954 0182 154A     		ldr	r2, .L755+40
 3955 0184 3146     		mov	r1, r6
 3956 0186 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3957 018a 019A     		ldr	r2, [sp, #4]
 3958 018c 2068     		ldr	r0, [r4]
 3959 018e 3146     		mov	r1, r6
 3960 0190 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 3961 0194 114A     		ldr	r2, .L755+44
 3962 0196 2068     		ldr	r0, [r4]
 3963 0198 3146     		mov	r1, r6
 3964 019a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3965 019e A7E7     		b	.L746
 3966              	.L754:
 3967 01a0 3A46     		mov	r2, r7
 3968 01a2 3146     		mov	r1, r6
 3969 01a4 2068     		ldr	r0, [r4]
 3970 01a6 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3971 01aa 084A     		ldr	r2, .L755+28
 3972 01ac BCE7     		b	.L747
 3973              	.L756:
 3974 01ae 00BF     		.align	2
 3975              	.L755:
 3976 01b0 00000000 		.word	.LC83
 3977 01b4 1C000000 		.word	.LC73
 3978 01b8 44000000 		.word	.LC78
 3979 01bc 08000000 		.word	.LC71
 3980 01c0 10000000 		.word	.LC72
 3981 01c4 28000000 		.word	.LC74
 3982 01c8 04000000 		.word	.LC70
 3983 01cc 2C000000 		.word	.LC86
 3984 01d0 30000000 		.word	.LC87
 3985 01d4 00000000 		.word	.LC69
 3986 01d8 08000000 		.word	.LC84
 3987 01dc 1C000000 		.word	.LC85
 3988              		.size	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer, .-_ZN6GCodes11HandleReplyER11GCodeBu
 3989              		.section	.text._ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef,"ax",%progbits
 3990              		.align	1
ARM GAS  /tmp/ccJRi9N9.s 			page 71


 3991              		.p2align 2,,3
 3992              		.global	_ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef
 3993              		.syntax unified
 3994              		.thumb
 3995              		.thumb_func
 3996              		.fpu fpv4-sp-d16
 3997              		.type	_ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef, %function
 3998              	_ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef:
 3999              		@ args = 0, pretend = 0, frame = 0
 4000              		@ frame_needed = 0, uses_anonymous_args = 0
 4001 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 4002 0004 0846     		mov	r0, r1
 4003 0006 86B0     		sub	sp, sp, #24
 4004 0008 0C46     		mov	r4, r1
 4005 000a 5021     		movs	r1, #80
 4006 000c 9046     		mov	r8, r2
 4007 000e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4008 0012 40BB     		cbnz	r0, .L800
 4009 0014 4821     		movs	r1, #72
 4010 0016 2046     		mov	r0, r4
 4011 0018 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4012 001c 18BB     		cbnz	r0, .L800
 4013 001e 0126     		movs	r6, #1
 4014 0020 3146     		mov	r1, r6
 4015              	.L760:
 4016 0022 744B     		ldr	r3, .L808
 4017 0024 D868     		ldr	r0, [r3, #12]
 4018 0026 FFF7FEFF 		bl	_ZNK4Heat22AccessHeaterProtectionEj
 4019 002a 5021     		movs	r1, #80
 4020 002c 0746     		mov	r7, r0
 4021 002e 2046     		mov	r0, r4
 4022 0030 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4023 0034 0028     		cmp	r0, #0
 4024 0036 6CD1     		bne	.L762
 4025              	.L764:
 4026 0038 0025     		movs	r5, #0
 4027              	.L763:
 4028 003a 5821     		movs	r1, #88
 4029 003c 2046     		mov	r0, r4
 4030 003e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4031 0042 8146     		mov	r9, r0
 4032 0044 30B3     		cbz	r0, .L766
 4033 0046 2046     		mov	r0, r4
 4034 0048 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4035 004c 0828     		cmp	r0, #8
 4036 004e 1FD9     		bls	.L767
 4037 0050 A0F16403 		sub	r3, r0, #100
 4038 0054 092B     		cmp	r3, #9
 4039 0056 1BD9     		bls	.L767
 4040 0058 0246     		mov	r2, r0
 4041 005a 6749     		ldr	r1, .L808+4
 4042 005c 4046     		mov	r0, r8
 4043 005e 4D46     		mov	r5, r9
 4044 0060 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4045 0064 73E0     		b	.L761
 4046              	.L800:
 4047 0066 2046     		mov	r0, r4
ARM GAS  /tmp/ccJRi9N9.s 			page 72


 4048 0068 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4049 006c 0728     		cmp	r0, #7
 4050 006e 0646     		mov	r6, r0
 4051 0070 0146     		mov	r1, r0
 4052 0072 D6D9     		bls	.L760
 4053 0074 A0F16403 		sub	r3, r0, #100
 4054 0078 072B     		cmp	r3, #7
 4055 007a D2D9     		bls	.L760
 4056 007c 0246     		mov	r2, r0
 4057 007e 5F49     		ldr	r1, .L808+8
 4058 0080 4046     		mov	r0, r8
 4059 0082 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4060 0086 0125     		movs	r5, #1
 4061 0088 2846     		mov	r0, r5
 4062 008a 06B0     		add	sp, sp, #24
 4063              		@ sp needed
 4064 008c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4065              	.L767:
 4066 0090 7872     		strb	r0, [r7, #9]
 4067 0092 4D46     		mov	r5, r9
 4068              	.L766:
 4069 0094 4121     		movs	r1, #65
 4070 0096 2046     		mov	r0, r4
 4071 0098 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4072 009c 8146     		mov	r9, r0
 4073 009e 0028     		cmp	r0, #0
 4074 00a0 59D1     		bne	.L802
 4075 00a2 4321     		movs	r1, #67
 4076 00a4 2046     		mov	r0, r4
 4077 00a6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4078 00aa 0028     		cmp	r0, #0
 4079 00ac 42D1     		bne	.L803
 4080              	.L770:
 4081 00ae 5321     		movs	r1, #83
 4082 00b0 2046     		mov	r0, r4
 4083 00b2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4084 00b6 0028     		cmp	r0, #0
 4085 00b8 5CD1     		bne	.L772
 4086 00ba 002D     		cmp	r5, #0
 4087 00bc 46D1     		bne	.L801
 4088 00be 97F90840 		ldrsb	r4, [r7, #8]
 4089 00c2 002C     		cmp	r4, #0
 4090 00c4 C0F28F80 		blt	.L804
 4091 00c8 BB7A     		ldrb	r3, [r7, #10]	@ zero_extendqisi2
 4092 00ca 022B     		cmp	r3, #2
 4093 00cc 96BF     		itet	ls
 4094 00ce 4C4A     		ldrls	r2, .L808+12
 4095 00d0 DFF834A1 		ldrhi	r10, .L808+20
 4096 00d4 52F823A0 		ldrls	r10, [r2, r3, lsl #2]
 4097 00d8 FA7A     		ldrb	r2, [r7, #11]	@ zero_extendqisi2
 4098 00da 002A     		cmp	r2, #0
 4099 00dc 7AD0     		beq	.L786
 4100 00de 494B     		ldr	r3, .L808+16
 4101 00e0 4949     		ldr	r1, .L808+20
 4102 00e2 012A     		cmp	r2, #1
 4103 00e4 0CBF     		ite	eq
 4104 00e6 9946     		moveq	r9, r3
ARM GAS  /tmp/ccJRi9N9.s 			page 73


 4105 00e8 8946     		movne	r9, r1
 4106              	.L782:
 4107 00ea 7868     		ldr	r0, [r7, #4]	@ float
 4108 00ec FFF7FEFF 		bl	__aeabi_f2d
 4109 00f0 CDE901A9 		strd	r10, r9, [sp, #4]
 4110 00f4 CDE90401 		strd	r0, [sp, #16]
 4111 00f8 97F90930 		ldrsb	r3, [r7, #9]
 4112 00fc 0093     		str	r3, [sp]
 4113 00fe 3246     		mov	r2, r6
 4114 0100 2346     		mov	r3, r4
 4115 0102 4046     		mov	r0, r8
 4116 0104 4149     		ldr	r1, .L808+24
 4117 0106 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4118 010a 2846     		mov	r0, r5
 4119 010c 06B0     		add	sp, sp, #24
 4120              		@ sp needed
 4121 010e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4122              	.L762:
 4123 0112 4821     		movs	r1, #72
 4124 0114 2046     		mov	r0, r4
 4125 0116 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4126 011a 0546     		mov	r5, r0
 4127 011c 0028     		cmp	r0, #0
 4128 011e 8BD0     		beq	.L764
 4129 0120 2046     		mov	r0, r4
 4130 0122 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4131 0126 0828     		cmp	r0, #8
 4132 0128 57DC     		bgt	.L805
 4133 012a 41B2     		sxtb	r1, r0
 4134 012c 3846     		mov	r0, r7
 4135 012e FFF7FEFF 		bl	_ZN16HeaterProtection9SetHeaterEa
 4136 0132 82E7     		b	.L763
 4137              	.L803:
 4138 0134 2046     		mov	r0, r4
 4139 0136 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4140 013a 0128     		cmp	r0, #1
 4141 013c 0546     		mov	r5, r0
 4142 013e 2DD8     		bhi	.L806
 4143 0140 FD72     		strb	r5, [r7, #11]
 4144 0142 5321     		movs	r1, #83
 4145 0144 2046     		mov	r0, r4
 4146 0146 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4147 014a 98B9     		cbnz	r0, .L772
 4148              	.L801:
 4149 014c 0025     		movs	r5, #0
 4150              	.L761:
 4151 014e 2846     		mov	r0, r5
 4152 0150 06B0     		add	sp, sp, #24
 4153              		@ sp needed
 4154 0152 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4155              	.L802:
 4156 0156 2046     		mov	r0, r4
 4157 0158 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4158 015c 0228     		cmp	r0, #2
 4159 015e 0546     		mov	r5, r0
 4160 0160 29D8     		bhi	.L807
 4161              	.L769:
ARM GAS  /tmp/ccJRi9N9.s 			page 74


 4162 0162 BD72     		strb	r5, [r7, #10]
 4163 0164 4321     		movs	r1, #67
 4164 0166 2046     		mov	r0, r4
 4165 0168 4D46     		mov	r5, r9
 4166 016a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4167 016e 0028     		cmp	r0, #0
 4168 0170 9DD0     		beq	.L770
 4169 0172 DFE7     		b	.L803
 4170              	.L772:
 4171 0174 2046     		mov	r0, r4
 4172 0176 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4173 017a FAEE047A 		vmov.f32	s15, #-1.0e+1
 4174 017e B4EEE70A 		vcmpe.f32	s0, s15
 4175 0182 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4176 0186 1CD9     		bls	.L773
 4177 0188 DFED217A 		vldr.32	s15, .L808+28
 4178 018c B4EEE70A 		vcmpe.f32	s0, s15
 4179 0190 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4180 0194 15DA     		bge	.L773
 4181 0196 87ED010A 		vstr.32	s0, [r7, #4]
 4182 019a D7E7     		b	.L801
 4183              	.L806:
 4184 019c 0246     		mov	r2, r0
 4185 019e 1D49     		ldr	r1, .L808+32
 4186 01a0 4046     		mov	r0, r8
 4187 01a2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4188 01a6 FD72     		strb	r5, [r7, #11]
 4189 01a8 5321     		movs	r1, #83
 4190 01aa 2046     		mov	r0, r4
 4191 01ac FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4192 01b0 0028     		cmp	r0, #0
 4193 01b2 CBD0     		beq	.L801
 4194 01b4 DEE7     		b	.L772
 4195              	.L807:
 4196 01b6 0246     		mov	r2, r0
 4197 01b8 1749     		ldr	r1, .L808+36
 4198 01ba 4046     		mov	r0, r8
 4199 01bc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4200 01c0 CFE7     		b	.L769
 4201              	.L773:
 4202 01c2 4046     		mov	r0, r8
 4203 01c4 1549     		ldr	r1, .L808+40
 4204 01c6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4205 01ca 0125     		movs	r5, #1
 4206 01cc 2846     		mov	r0, r5
 4207 01ce 06B0     		add	sp, sp, #24
 4208              		@ sp needed
 4209 01d0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4210              	.L786:
 4211 01d4 DFF84C90 		ldr	r9, .L808+48
 4212 01d8 87E7     		b	.L782
 4213              	.L805:
 4214 01da 0246     		mov	r2, r0
 4215 01dc 0649     		ldr	r1, .L808+4
 4216 01de 4046     		mov	r0, r8
 4217 01e0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4218 01e4 B3E7     		b	.L761
ARM GAS  /tmp/ccJRi9N9.s 			page 75


 4219              	.L804:
 4220 01e6 3246     		mov	r2, r6
 4221 01e8 4046     		mov	r0, r8
 4222 01ea 0D49     		ldr	r1, .L808+44
 4223 01ec FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4224 01f0 ADE7     		b	.L761
 4225              	.L809:
 4226 01f2 00BF     		.align	2
 4227              	.L808:
 4228 01f4 00000000 		.word	reprap
 4229 01f8 44000000 		.word	.LC92
 4230 01fc 20000000 		.word	.LC91
 4231 0200 00000000 		.word	.LANCHOR0
 4232 0204 14000000 		.word	.LC90
 4233 0208 00000000 		.word	.LC88
 4234 020c 00010000 		.word	.LC97
 4235 0210 0000FA44 		.word	1157234688
 4236 0214 88000000 		.word	.LC94
 4237 0218 60000000 		.word	.LC93
 4238 021c B0000000 		.word	.LC95
 4239 0220 CC000000 		.word	.LC96
 4240 0224 0C000000 		.word	.LC89
 4241              		.size	_ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef, .-_ZN6GCodes19SetHeaterProtectio
 4242              		.section	.text._ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef,"ax",%progbits
 4243              		.align	1
 4244              		.p2align 2,,3
 4245              		.global	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef
 4246              		.syntax unified
 4247              		.thumb
 4248              		.thumb_func
 4249              		.fpu fpv4-sp-d16
 4250              		.type	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef, %function
 4251              	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef:
 4252              		@ args = 0, pretend = 0, frame = 16
 4253              		@ frame_needed = 0, uses_anonymous_args = 0
 4254 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 4255 0004 0846     		mov	r0, r1
 4256 0006 8BB0     		sub	sp, sp, #44
 4257 0008 0C46     		mov	r4, r1
 4258 000a 4821     		movs	r1, #72
 4259 000c 1546     		mov	r5, r2
 4260 000e 1F46     		mov	r7, r3
 4261 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4262 0014 0028     		cmp	r0, #0
 4263 0016 4BD1     		bne	.L821
 4264              	.L811:
 4265 0018 072D     		cmp	r5, #7
 4266 001a 02D9     		bls	.L822
 4267              	.L810:
 4268 001c 0BB0     		add	sp, sp, #44
 4269              		@ sp needed
 4270 001e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4271              	.L822:
 4272 0022 DFF8D090 		ldr	r9, .L825+12
 4273 0026 D9F80C30 		ldr	r3, [r9, #12]
 4274 002a 03EB8503 		add	r3, r3, r5, lsl #2
 4275 002e 0AAE     		add	r6, sp, #40
ARM GAS  /tmp/ccJRi9N9.s 			page 76


 4276 0030 D3F84480 		ldr	r8, [r3, #68]
 4277 0034 0021     		movs	r1, #0
 4278 0036 08F13000 		add	r0, r8, #48
 4279 003a FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
 4280 003e 0023     		movs	r3, #0
 4281 0040 06F80D3D 		strb	r3, [r6, #-13]!
 4282 0044 07AA     		add	r2, sp, #28
 4283 0046 3346     		mov	r3, r6
 4284 0048 5021     		movs	r1, #80
 4285 004a 2046     		mov	r0, r4
 4286 004c 8DED070A 		vstr.32	s0, [sp, #28]
 4287 0050 CDED080A 		vstr.32	s1, [sp, #32]
 4288 0054 8DED091A 		vstr.32	s2, [sp, #36]
 4289 0058 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4290 005c 3346     		mov	r3, r6
 4291 005e 08AA     		add	r2, sp, #32
 4292 0060 4921     		movs	r1, #73
 4293 0062 2046     		mov	r0, r4
 4294 0064 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4295 0068 3346     		mov	r3, r6
 4296 006a 2046     		mov	r0, r4
 4297 006c 09AA     		add	r2, sp, #36
 4298 006e 4421     		movs	r1, #68
 4299 0070 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4300 0074 9DF81B30 		ldrb	r3, [sp, #27]	@ zero_extendqisi2
 4301 0078 2BBB     		cbnz	r3, .L823
 4302 007a 98F84730 		ldrb	r3, [r8, #71]	@ zero_extendqisi2
 4303 007e E3B1     		cbz	r3, .L824
 4304 0080 98F84930 		ldrb	r3, [r8, #73]	@ zero_extendqisi2
 4305 0084 43B3     		cbz	r3, .L816
 4306 0086 0998     		ldr	r0, [sp, #36]	@ float
 4307 0088 FFF7FEFF 		bl	__aeabi_f2d
 4308 008c CDE90401 		strd	r0, [sp, #16]
 4309 0090 0898     		ldr	r0, [sp, #32]	@ float
 4310 0092 FFF7FEFF 		bl	__aeabi_f2d
 4311 0096 CDE90201 		strd	r0, [sp, #8]
 4312 009a 0798     		ldr	r0, [sp, #28]	@ float
 4313 009c FFF7FEFF 		bl	__aeabi_f2d
 4314 00a0 2A46     		mov	r2, r5
 4315 00a2 CDE90001 		strd	r0, [sp]
 4316 00a6 3846     		mov	r0, r7
 4317 00a8 0F49     		ldr	r1, .L825
 4318 00aa FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4319 00ae B5E7     		b	.L810
 4320              	.L821:
 4321 00b0 2046     		mov	r0, r4
 4322 00b2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4323 00b6 0546     		mov	r5, r0
 4324 00b8 AEE7     		b	.L811
 4325              	.L824:
 4326 00ba 2A46     		mov	r2, r5
 4327 00bc 3846     		mov	r0, r7
 4328 00be 0B49     		ldr	r1, .L825+4
 4329 00c0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4330 00c4 AAE7     		b	.L810
 4331              	.L823:
 4332 00c6 07AA     		add	r2, sp, #28
ARM GAS  /tmp/ccJRi9N9.s 			page 77


 4333 00c8 2946     		mov	r1, r5
 4334 00ca D9F80C00 		ldr	r0, [r9, #12]
 4335 00ce FFF7FEFF 		bl	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters
 4336 00d2 0BB0     		add	sp, sp, #44
 4337              		@ sp needed
 4338 00d4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4339              	.L816:
 4340 00d8 3846     		mov	r0, r7
 4341 00da 2B46     		mov	r3, r5
 4342 00dc 2A46     		mov	r2, r5
 4343 00de 0449     		ldr	r1, .L825+8
 4344 00e0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4345 00e4 9AE7     		b	.L810
 4346              	.L826:
 4347 00e6 00BF     		.align	2
 4348              	.L825:
 4349 00e8 20000000 		.word	.LC99
 4350 00ec 00000000 		.word	.LC98
 4351 00f0 40000000 		.word	.LC100
 4352 00f4 00000000 		.word	reprap
 4353              		.size	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef, .-_ZN6GCodes16SetPidParametersER11
 4354              		.section	.text._ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef,"ax",%progbits
 4355              		.align	1
 4356              		.p2align 2,,3
 4357              		.global	_ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef
 4358              		.syntax unified
 4359              		.thumb
 4360              		.thumb_func
 4361              		.fpu fpv4-sp-d16
 4362              		.type	_ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef, %function
 4363              	_ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef:
 4364              		@ args = 0, pretend = 0, frame = 8
 4365              		@ frame_needed = 0, uses_anonymous_args = 0
 4366 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 4367 0004 0846     		mov	r0, r1
 4368 0006 84B0     		sub	sp, sp, #16
 4369 0008 0C46     		mov	r4, r1
 4370 000a 5021     		movs	r1, #80
 4371 000c 1646     		mov	r6, r2
 4372 000e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4373 0012 18B9     		cbnz	r0, .L843
 4374 0014 0120     		movs	r0, #1
 4375              	.L828:
 4376 0016 04B0     		add	sp, sp, #16
 4377              		@ sp needed
 4378 0018 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4379              	.L843:
 4380 001c 2046     		mov	r0, r4
 4381 001e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4382 0022 0728     		cmp	r0, #7
 4383 0024 0546     		mov	r5, r0
 4384 0026 03D9     		bls	.L829
 4385 0028 A0F16403 		sub	r3, r0, #100
 4386 002c 092B     		cmp	r3, #9
 4387 002e 50D8     		bhi	.L830
 4388              	.L829:
 4389 0030 2B4B     		ldr	r3, .L844
ARM GAS  /tmp/ccJRi9N9.s 			page 78


 4390 0032 D3F80C80 		ldr	r8, [r3, #12]
 4391 0036 2946     		mov	r1, r5
 4392 0038 4046     		mov	r0, r8
 4393 003a FFF7FEFF 		bl	_ZNK4Heat16GetHeaterChannelEj
 4394 003e 4FF0000C 		mov	ip, #0
 4395 0042 0746     		mov	r7, r0
 4396 0044 0DF10B03 		add	r3, sp, #11
 4397 0048 03AA     		add	r2, sp, #12
 4398 004a 5821     		movs	r1, #88
 4399 004c 2046     		mov	r0, r4
 4400 004e 0397     		str	r7, [sp, #12]
 4401 0050 8DF80BC0 		strb	ip, [sp, #11]
 4402 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 4403 0058 9DF80B30 		ldrb	r3, [sp, #11]	@ zero_extendqisi2
 4404 005c 5BB9     		cbnz	r3, .L831
 4405 005e 002F     		cmp	r7, #0
 4406 0060 09DA     		bge	.L831
 4407 0062 072D     		cmp	r5, #7
 4408 0064 2EDC     		bgt	.L832
 4409 0066 5221     		movs	r1, #82
 4410 0068 2046     		mov	r0, r4
 4411 006a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4412 006e E8B1     		cbz	r0, .L833
 4413              	.L835:
 4414 0070 0395     		str	r5, [sp, #12]
 4415 0072 2A46     		mov	r2, r5
 4416 0074 00E0     		b	.L834
 4417              	.L831:
 4418 0076 039A     		ldr	r2, [sp, #12]
 4419              	.L834:
 4420 0078 9742     		cmp	r7, r2
 4421 007a 0CD0     		beq	.L837
 4422 007c 2946     		mov	r1, r5
 4423 007e 4046     		mov	r0, r8
 4424 0080 FFF7FEFF 		bl	_ZN4Heat16SetHeaterChannelEji
 4425 0084 38B1     		cbz	r0, .L837
 4426 0086 2B46     		mov	r3, r5
 4427 0088 3046     		mov	r0, r6
 4428 008a 039A     		ldr	r2, [sp, #12]
 4429 008c 1549     		ldr	r1, .L844+4
 4430 008e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4431 0092 0220     		movs	r0, #2
 4432 0094 BFE7     		b	.L828
 4433              	.L837:
 4434 0096 0096     		str	r6, [sp]
 4435 0098 2346     		mov	r3, r4
 4436 009a 2A46     		mov	r2, r5
 4437 009c 4046     		mov	r0, r8
 4438 009e 40F23111 		movw	r1, #305
 4439 00a2 FFF7FEFF 		bl	_ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef
 4440 00a6 04B0     		add	sp, sp, #16
 4441              		@ sp needed
 4442 00a8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4443              	.L833:
 4444 00ac 5421     		movs	r1, #84
 4445 00ae 2046     		mov	r0, r4
 4446 00b0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  /tmp/ccJRi9N9.s 			page 79


 4447 00b4 0028     		cmp	r0, #0
 4448 00b6 DBD1     		bne	.L835
 4449 00b8 4221     		movs	r1, #66
 4450 00ba 2046     		mov	r0, r4
 4451 00bc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4452 00c0 0028     		cmp	r0, #0
 4453 00c2 D5D1     		bne	.L835
 4454              	.L832:
 4455 00c4 2A46     		mov	r2, r5
 4456 00c6 3046     		mov	r0, r6
 4457 00c8 0749     		ldr	r1, .L844+8
 4458 00ca FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4459 00ce 0220     		movs	r0, #2
 4460 00d0 A1E7     		b	.L828
 4461              	.L830:
 4462 00d2 0246     		mov	r2, r0
 4463 00d4 0549     		ldr	r1, .L844+12
 4464 00d6 3046     		mov	r0, r6
 4465 00d8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4466 00dc 0220     		movs	r0, #2
 4467 00de 9AE7     		b	.L828
 4468              	.L845:
 4469              		.align	2
 4470              	.L844:
 4471 00e0 00000000 		.word	reprap
 4472 00e4 1C000000 		.word	.LC102
 4473 00e8 00000000 		.word	.LC101
 4474 00ec 4C000000 		.word	.LC103
 4475              		.size	_ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef, .-_ZN6GCodes19SetHeaterParameter
 4476              		.section	.text._ZN6GCodes14SetToolHeatersEP4Toolfb,"ax",%progbits
 4477              		.align	1
 4478              		.p2align 2,,3
 4479              		.global	_ZN6GCodes14SetToolHeatersEP4Toolfb
 4480              		.syntax unified
 4481              		.thumb
 4482              		.thumb_func
 4483              		.fpu fpv4-sp-d16
 4484              		.type	_ZN6GCodes14SetToolHeatersEP4Toolfb, %function
 4485              	_ZN6GCodes14SetToolHeatersEP4Toolfb:
 4486              		@ args = 0, pretend = 0, frame = 0
 4487              		@ frame_needed = 0, uses_anonymous_args = 0
 4488 0000 11B3     		cbz	r1, .L860
 4489 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 4490 0004 D1F89830 		ldr	r3, [r1, #152]
 4491 0008 EBB1     		cbz	r3, .L846
 4492 000a 0D46     		mov	r5, r1
 4493 000c 1746     		mov	r7, r2
 4494 000e 10EE106A 		vmov	r6, s0
 4495 0012 0024     		movs	r4, #0
 4496 0014 04E0     		b	.L850
 4497              	.L849:
 4498 0016 D5F89830 		ldr	r3, [r5, #152]
 4499 001a 0134     		adds	r4, r4, #1
 4500 001c A342     		cmp	r3, r4
 4501 001e 12D9     		bls	.L846
 4502              	.L850:
 4503 0020 00EE106A 		vmov	s0, r6
ARM GAS  /tmp/ccJRi9N9.s 			page 80


 4504 0024 2146     		mov	r1, r4
 4505 0026 2846     		mov	r0, r5
 4506 0028 FFF7FEFF 		bl	_ZN4Tool30SetToolHeaterActiveTemperatureEjf
 4507 002c 002F     		cmp	r7, #0
 4508 002e F2D0     		beq	.L849
 4509 0030 2146     		mov	r1, r4
 4510 0032 00EE106A 		vmov	s0, r6
 4511 0036 2846     		mov	r0, r5
 4512 0038 FFF7FEFF 		bl	_ZN4Tool31SetToolHeaterStandbyTemperatureEjf
 4513 003c D5F89830 		ldr	r3, [r5, #152]
 4514 0040 0134     		adds	r4, r4, #1
 4515 0042 A342     		cmp	r3, r4
 4516 0044 ECD8     		bhi	.L850
 4517              	.L846:
 4518 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 4519              	.L860:
 4520 0048 0068     		ldr	r0, [r0]
 4521 004a 024A     		ldr	r2, .L861
 4522 004c 40F2B511 		movw	r1, #437
 4523 0050 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 4524              	.L862:
 4525              		.align	2
 4526              	.L861:
 4527 0054 00000000 		.word	.LC104
 4528              		.size	_ZN6GCodes14SetToolHeatersEP4Toolfb, .-_ZN6GCodes14SetToolHeatersEP4Toolfb
 4529              		.section	.text._ZN6GCodes15RetractFilamentER11GCodeBufferb,"ax",%progbits
 4530              		.align	1
 4531              		.p2align 2,,3
 4532              		.global	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 4533              		.syntax unified
 4534              		.thumb
 4535              		.thumb_func
 4536              		.fpu fpv4-sp-d16
 4537              		.type	_ZN6GCodes15RetractFilamentER11GCodeBufferb, %function
 4538              	_ZN6GCodes15RetractFilamentER11GCodeBufferb:
 4539              		@ args = 0, pretend = 0, frame = 0
 4540              		@ frame_needed = 0, uses_anonymous_args = 0
 4541 0000 90F87035 		ldrb	r3, [r0, #1392]	@ zero_extendqisi2
 4542 0004 9342     		cmp	r3, r2
 4543 0006 00F0BA80 		beq	.L883
 4544 000a 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4545 000e 00F25C57 		addw	r7, r0, #1372
 4546 0012 D7ED007A 		vldr.32	s15, [r7]
 4547 0016 F5EE407A 		vcmp.f32	s15, #0
 4548 001a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4549 001e 83B0     		sub	sp, sp, #12
 4550 0020 07D0     		beq	.L908
 4551              	.L865:
 4552 0022 C36D     		ldr	r3, [r0, #92]
 4553 0024 9942     		cmp	r1, r3
 4554 0026 21D0     		beq	.L866
 4555 0028 D3B1     		cbz	r3, .L867
 4556              	.L868:
 4557 002a 0020     		movs	r0, #0
 4558              	.L864:
 4559 002c 03B0     		add	sp, sp, #12
 4560              		@ sp needed
ARM GAS  /tmp/ccJRi9N9.s 			page 81


 4561 002e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4562              	.L908:
 4563 0032 00F26C53 		addw	r3, r0, #1388
 4564 0036 D3ED007A 		vldr.32	s15, [r3]
 4565 003a F5EE407A 		vcmp.f32	s15, #0
 4566 003e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4567 0042 EED1     		bne	.L865
 4568 0044 42B9     		cbnz	r2, .L885
 4569 0046 00F5AC63 		add	r3, r0, #1376
 4570 004a D3ED007A 		vldr.32	s15, [r3]
 4571 004e F5EE407A 		vcmp.f32	s15, #0
 4572 0052 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4573 0056 E4D1     		bne	.L865
 4574              	.L885:
 4575 0058 0120     		movs	r0, #1
 4576 005a 03B0     		add	sp, sp, #12
 4577              		@ sp needed
 4578 005c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4579              	.L867:
 4580 0060 C165     		str	r1, [r0, #92]
 4581 0062 8C68     		ldr	r4, [r1, #8]
 4582 0064 E368     		ldr	r3, [r4, #12]
 4583 0066 43F00103 		orr	r3, r3, #1
 4584 006a E360     		str	r3, [r4, #12]
 4585              	.L866:
 4586 006c D0F850B1 		ldr	fp, [r0, #336]
 4587 0070 BBF1000F 		cmp	fp, #0
 4588 0074 D9D1     		bne	.L868
 4589 0076 DFF8E481 		ldr	r8, .L910
 4590 007a 0446     		mov	r4, r0
 4591 007c 4046     		mov	r0, r8
 4592 007e 0E46     		mov	r6, r1
 4593 0080 1546     		mov	r5, r2
 4594 0082 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 4595 0086 8246     		mov	r10, r0
 4596 0088 4046     		mov	r0, r8
 4597 008a FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 4598 008e 8146     		mov	r9, r0
 4599 0090 5346     		mov	r3, r10
 4600 0092 D8F80800 		ldr	r0, [r8, #8]
 4601 0096 CDF80090 		str	r9, [sp]
 4602 009a 5A46     		mov	r2, fp
 4603 009c 04F1DC01 		add	r1, r4, #220
 4604 00a0 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 4605 00a4 D4F89832 		ldr	r3, [r4, #664]
 4606 00a8 0B2B     		cmp	r3, #11
 4607 00aa 09D8     		bhi	.L869
 4608 00ac 3733     		adds	r3, r3, #55
 4609 00ae 0021     		movs	r1, #0
 4610 00b0 04EB8303 		add	r3, r4, r3, lsl #2
 4611 00b4 04F58672 		add	r2, r4, #268
 4612              	.L870:
 4613 00b8 43F8041B 		str	r1, [r3], #4	@ float
 4614 00bc 9342     		cmp	r3, r2
 4615 00be FBD1     		bne	.L870
 4616              	.L869:
 4617 00c0 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
ARM GAS  /tmp/ccJRi9N9.s 			page 82


 4618 00c4 226C     		ldr	r2, [r4, #64]
 4619 00c6 03F0CD03 		and	r3, r3, #205
 4620 00ca 0021     		movs	r1, #0
 4621 00cc 43F00103 		orr	r3, r3, #1
 4622 00d0 84F84E11 		strb	r1, [r4, #334]
 4623 00d4 84F84F31 		strb	r3, [r4, #335]
 4624 00d8 1368     		ldr	r3, [r2]
 4625 00da C4F84811 		str	r1, [r4, #328]
 4626 00de 4FF0FF30 		mov	r0, #-1
 4627 00e2 0121     		movs	r1, #1
 4628 00e4 0222     		movs	r2, #2
 4629 00e6 B342     		cmp	r3, r6
 4630 00e8 C4F83801 		str	r0, [r4, #312]
 4631 00ec C4F84011 		str	r1, [r4, #320]
 4632 00f0 C4F84421 		str	r2, [r4, #324]
 4633 00f4 73D0     		beq	.L909
 4634              	.L871:
 4635 00f6 C4F83801 		str	r0, [r4, #312]
 4636 00fa C4F840A1 		str	r10, [r4, #320]
 4637 00fe C4F84491 		str	r9, [r4, #324]
 4638 0102 002D     		cmp	r5, #0
 4639 0104 3DD0     		beq	.L872
 4640 0106 D8F83010 		ldr	r1, [r8, #48]
 4641 010a 59B3     		cbz	r1, .L873
 4642 010c D1F89430 		ldr	r3, [r1, #148]
 4643 0110 B3B1     		cbz	r3, .L874
 4644 0112 D7ED007A 		vldr.32	s15, [r7]
 4645 0116 D4F89872 		ldr	r7, [r4, #664]
 4646 011a F1EE677A 		vneg.f32	s15, s15
 4647 011e 01F1AF02 		add	r2, r1, #175
 4648              	.L875:
 4649 0122 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 4650 0124 3B44     		add	r3, r3, r7
 4651 0126 04EB8303 		add	r3, r4, r3, lsl #2
 4652 012a C3ED377A 		vstr.32	s15, [r3, #220]
 4653 012e D1F89400 		ldr	r0, [r1, #148]
 4654 0132 A2F1AE03 		sub	r3, r2, #174
 4655 0136 5B1A     		subs	r3, r3, r1
 4656 0138 8342     		cmp	r3, r0
 4657 013a 02F10102 		add	r2, r2, #1
 4658 013e F0D3     		bcc	.L875
 4659              	.L874:
 4660 0140 04F26453 		addw	r3, r4, #1380
 4661 0144 94F84F21 		ldrb	r2, [r4, #335]	@ zero_extendqisi2
 4662 0148 1968     		ldr	r1, [r3]	@ float
 4663 014a C4F83011 		str	r1, [r4, #304]	@ float
 4664 014e 6FF38202 		bfc	r2, #2, #1
 4665 0152 0123     		movs	r3, #1
 4666 0154 84F84F21 		strb	r2, [r4, #335]
 4667 0158 C4F85431 		str	r3, [r4, #340]
 4668              		.syntax unified
 4669              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 4670 015c BFF35F8F 		dmb
 4671              	@ 0 "" 2
 4672              		.thumb
 4673              		.syntax unified
 4674 0160 C4F85031 		str	r3, [r4, #336]
ARM GAS  /tmp/ccJRi9N9.s 			page 83


 4675              	.L873:
 4676 0164 04F26C53 		addw	r3, r4, #1388
 4677 0168 D3ED007A 		vldr.32	s15, [r3]
 4678 016c F5EEC07A 		vcmpe.f32	s15, #0
 4679 0170 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4680 0174 2FDD     		ble	.L877
 4681 0176 B368     		ldr	r3, [r6, #8]
 4682 0178 2B22     		movs	r2, #43
 4683 017a 1A75     		strb	r2, [r3, #20]
 4684 017c 2BE0     		b	.L877
 4685              	.L883:
 4686 017e 0120     		movs	r0, #1
 4687 0180 7047     		bx	lr
 4688              	.L872:
 4689 0182 04F26C53 		addw	r3, r4, #1388
 4690 0186 D3ED007A 		vldr.32	s15, [r3]
 4691 018a F5EEC07A 		vcmpe.f32	s15, #0
 4692 018e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4693 0192 4FF00003 		mov	r3, #0
 4694 0196 2BDD     		ble	.L903
 4695 0198 D4ED397A 		vldr.32	s15, [r4, #228]
 4696 019c 94ED367A 		vldr.32	s14, [r4, #216]
 4697 01a0 94F84F21 		ldrb	r2, [r4, #335]	@ zero_extendqisi2
 4698 01a4 2168     		ldr	r1, [r4]
 4699 01a6 77EEC77A 		vsub.f32	s15, s15, s14
 4700 01aa D1F84811 		ldr	r1, [r1, #328]	@ float
 4701 01ae C4F8D830 		str	r3, [r4, #216]	@ float
 4702 01b2 65F38202 		bfi	r2, r5, #2, #1
 4703 01b6 0123     		movs	r3, #1
 4704 01b8 C4F83011 		str	r1, [r4, #304]	@ float
 4705 01bc C4ED397A 		vstr.32	s15, [r4, #228]
 4706 01c0 84F84F21 		strb	r2, [r4, #335]
 4707 01c4 C4F85431 		str	r3, [r4, #340]
 4708              		.syntax unified
 4709              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 4710 01c8 BFF35F8F 		dmb
 4711              	@ 0 "" 2
 4712              		.thumb
 4713              		.syntax unified
 4714 01cc C4F85031 		str	r3, [r4, #336]
 4715 01d0 B368     		ldr	r3, [r6, #8]
 4716 01d2 2C22     		movs	r2, #44
 4717 01d4 1A75     		strb	r2, [r3, #20]
 4718              	.L877:
 4719 01d6 84F87055 		strb	r5, [r4, #1392]
 4720 01da 0120     		movs	r0, #1
 4721 01dc 26E7     		b	.L864
 4722              	.L909:
 4723 01de E068     		ldr	r0, [r4, #12]
 4724 01e0 0368     		ldr	r3, [r0]
 4725 01e2 9B68     		ldr	r3, [r3, #8]
 4726 01e4 9847     		blx	r3
 4727 01e6 0146     		mov	r1, r0
 4728 01e8 3046     		mov	r0, r6
 4729 01ea FFF7FEFF 		bl	_ZNK11GCodeBuffer15GetFilePositionEj
 4730 01ee 82E7     		b	.L871
 4731              	.L903:
ARM GAS  /tmp/ccJRi9N9.s 			page 84


 4732 01f0 D8F83010 		ldr	r1, [r8, #48]
 4733 01f4 0029     		cmp	r1, #0
 4734 01f6 EED0     		beq	.L877
 4735 01f8 D1F89430 		ldr	r3, [r1, #148]
 4736 01fc D3B1     		cbz	r3, .L881
 4737 01fe 04F5AC63 		add	r3, r4, #1376
 4738 0202 93ED007A 		vldr.32	s14, [r3]
 4739 0206 D7ED007A 		vldr.32	s15, [r7]
 4740 020a D4F89862 		ldr	r6, [r4, #664]
 4741 020e 77EE877A 		vadd.f32	s15, s15, s14
 4742 0212 01F1AF02 		add	r2, r1, #175
 4743              	.L882:
 4744 0216 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 4745 0218 3344     		add	r3, r3, r6
 4746 021a 04EB8303 		add	r3, r4, r3, lsl #2
 4747 021e C3ED377A 		vstr.32	s15, [r3, #220]
 4748 0222 D1F89400 		ldr	r0, [r1, #148]
 4749 0226 A2F1AE03 		sub	r3, r2, #174
 4750 022a 5B1A     		subs	r3, r3, r1
 4751 022c 9842     		cmp	r0, r3
 4752 022e 02F10102 		add	r2, r2, #1
 4753 0232 F0D8     		bhi	.L882
 4754              	.L881:
 4755 0234 04F5AD62 		add	r2, r4, #1384
 4756 0238 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 4757 023c 1168     		ldr	r1, [r2]	@ float
 4758 023e C4F83011 		str	r1, [r4, #304]	@ float
 4759 0242 43F00403 		orr	r3, r3, #4
 4760 0246 0122     		movs	r2, #1
 4761 0248 84F84F31 		strb	r3, [r4, #335]
 4762 024c C4F85421 		str	r2, [r4, #340]
 4763              		.syntax unified
 4764              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 4765 0250 BFF35F8F 		dmb
 4766              	@ 0 "" 2
 4767              		.thumb
 4768              		.syntax unified
 4769 0254 C4F85021 		str	r2, [r4, #336]
 4770 0258 BDE7     		b	.L877
 4771              	.L911:
 4772 025a 00BF     		.align	2
 4773              	.L910:
 4774 025c 00000000 		.word	reprap
 4775              		.size	_ZN6GCodes15RetractFilamentER11GCodeBufferb, .-_ZN6GCodes15RetractFilamentER11GCodeBufferb
 4776              		.section	.text._ZNK6GCodes26GetRawExtruderTotalByDriveEj,"ax",%progbits
 4777              		.align	1
 4778              		.p2align 2,,3
 4779              		.global	_ZNK6GCodes26GetRawExtruderTotalByDriveEj
 4780              		.syntax unified
 4781              		.thumb
 4782              		.thumb_func
 4783              		.fpu fpv4-sp-d16
 4784              		.type	_ZNK6GCodes26GetRawExtruderTotalByDriveEj, %function
 4785              	_ZNK6GCodes26GetRawExtruderTotalByDriveEj:
 4786              		@ args = 0, pretend = 0, frame = 0
 4787              		@ frame_needed = 0, uses_anonymous_args = 0
 4788              		@ link register save eliminated.
ARM GAS  /tmp/ccJRi9N9.s 			page 85


 4789 0000 D0F8A032 		ldr	r3, [r0, #672]
 4790 0004 8B42     		cmp	r3, r1
 4791 0006 86BF     		itte	hi
 4792 0008 00EB8100 		addhi	r0, r0, r1, lsl #2
 4793 000c 90EDB30A 		vldrhi.32	s0, [r0, #716]
 4794 0010 9FED010A 		vldrls.32	s0, .L915
 4795 0014 7047     		bx	lr
 4796              	.L916:
 4797 0016 00BF     		.align	2
 4798              	.L915:
 4799 0018 00000000 		.word	0
 4800              		.size	_ZNK6GCodes26GetRawExtruderTotalByDriveEj, .-_ZNK6GCodes26GetRawExtruderTotalByDriveEj
 4801              		.section	.text._ZNK6GCodes15IsCodeQueueIdleEv,"ax",%progbits
 4802              		.align	1
 4803              		.p2align 2,,3
 4804              		.global	_ZNK6GCodes15IsCodeQueueIdleEv
 4805              		.syntax unified
 4806              		.thumb
 4807              		.thumb_func
 4808              		.fpu fpv4-sp-d16
 4809              		.type	_ZNK6GCodes15IsCodeQueueIdleEv, %function
 4810              	_ZNK6GCodes15IsCodeQueueIdleEv:
 4811              		@ args = 0, pretend = 0, frame = 0
 4812              		@ frame_needed = 0, uses_anonymous_args = 0
 4813              		@ link register save eliminated.
 4814 0000 036D     		ldr	r3, [r0, #80]
 4815 0002 1B68     		ldr	r3, [r3]
 4816 0004 93F82830 		ldrb	r3, [r3, #40]	@ zero_extendqisi2
 4817 0008 083B     		subs	r3, r3, #8
 4818 000a 012B     		cmp	r3, #1
 4819 000c 03D9     		bls	.L918
 4820 000e D0F8F805 		ldr	r0, [r0, #1528]
 4821 0012 FFF7FEBF 		b	_ZNK10GCodeQueue6IsIdleEv
 4822              	.L918:
 4823 0016 0020     		movs	r0, #0
 4824 0018 7047     		bx	lr
 4825              		.size	_ZNK6GCodes15IsCodeQueueIdleEv, .-_ZNK6GCodes15IsCodeQueueIdleEv
 4826 001a 00BF     		.section	.text._ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb,"ax",%progbits
 4827              		.align	1
 4828              		.p2align 2,,3
 4829              		.global	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb
 4830              		.syntax unified
 4831              		.thumb
 4832              		.thumb_func
 4833              		.fpu fpv4-sp-d16
 4834              		.type	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb, %function
 4835              	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb:
 4836              		@ args = 0, pretend = 0, frame = 0
 4837              		@ frame_needed = 0, uses_anonymous_args = 0
 4838 0000 09B3     		cbz	r1, .L934
 4839 0002 D1F89830 		ldr	r3, [r1, #152]
 4840 0006 F3B1     		cbz	r3, .L934
 4841 0008 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 4842 000c 6FF0B807 		mvn	r7, #184
 4843 0010 0D46     		mov	r5, r1
 4844 0012 1646     		mov	r6, r2
 4845 0014 DFF83480 		ldr	r8, .L940
ARM GAS  /tmp/ccJRi9N9.s 			page 86


 4846 0018 7F1A     		subs	r7, r7, r1
 4847 001a 01F1B904 		add	r4, r1, #185
 4848 001e 03E0     		b	.L922
 4849              	.L939:
 4850 0020 D5F89810 		ldr	r1, [r5, #152]
 4851 0024 9942     		cmp	r1, r3
 4852 0026 0BD9     		bls	.L938
 4853              	.L922:
 4854 0028 14F9011B 		ldrsb	r1, [r4], #1
 4855 002c D8F80C00 		ldr	r0, [r8, #12]
 4856 0030 3246     		mov	r2, r6
 4857 0032 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 4858 0036 3B19     		adds	r3, r7, r4
 4859 0038 0028     		cmp	r0, #0
 4860 003a F1D1     		bne	.L939
 4861 003c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4862              	.L938:
 4863 0040 0120     		movs	r0, #1
 4864 0042 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4865              	.L934:
 4866 0046 0120     		movs	r0, #1
 4867 0048 7047     		bx	lr
 4868              	.L941:
 4869 004a 00BF     		.align	2
 4870              	.L940:
 4871 004c 00000000 		.word	reprap
 4872              		.size	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb, .-_ZNK6GCodes28ToolHeatersAtSetTemperatu
 4873              		.section	.text._ZN6GCodes18SetMachinePositionEPKfb,"ax",%progbits
 4874              		.align	1
 4875              		.p2align 2,,3
 4876              		.global	_ZN6GCodes18SetMachinePositionEPKfb
 4877              		.syntax unified
 4878              		.thumb
 4879              		.thumb_func
 4880              		.fpu fpv4-sp-d16
 4881              		.type	_ZN6GCodes18SetMachinePositionEPKfb, %function
 4882              	_ZN6GCodes18SetMachinePositionEPKfb:
 4883              		@ args = 0, pretend = 0, frame = 0
 4884              		@ frame_needed = 0, uses_anonymous_args = 0
 4885              		@ link register save eliminated.
 4886 0000 10B4     		push	{r4}
 4887 0002 044B     		ldr	r3, .L944
 4888 0004 0C68     		ldr	r4, [r1]	@ unaligned
 4889 0006 C0F8DC40 		str	r4, [r0, #220]	@ unaligned
 4890 000a 5DF8044B 		ldr	r4, [sp], #4
 4891 000e 9868     		ldr	r0, [r3, #8]
 4892 0010 FFF7FEBF 		b	_ZN4Move14SetNewPositionEPKfb
 4893              	.L945:
 4894              		.align	2
 4895              	.L944:
 4896 0014 00000000 		.word	reprap
 4897              		.size	_ZN6GCodes18SetMachinePositionEPKfb, .-_ZN6GCodes18SetMachinePositionEPKfb
 4898              		.section	.text._ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer,"ax",%progbits
 4899              		.align	1
 4900              		.p2align 2,,3
 4901              		.global	_ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer
 4902              		.syntax unified
ARM GAS  /tmp/ccJRi9N9.s 			page 87


 4903              		.thumb
 4904              		.thumb_func
 4905              		.fpu fpv4-sp-d16
 4906              		.type	_ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer, %function
 4907              	_ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer:
 4908              		@ args = 0, pretend = 0, frame = 0
 4909              		@ frame_needed = 0, uses_anonymous_args = 0
 4910              		@ link register save eliminated.
 4911 0000 D0F89C32 		ldr	r3, [r0, #668]
 4912 0004 70B4     		push	{r4, r5, r6}
 4913 0006 63B1     		cbz	r3, .L947
 4914 0008 00F1B405 		add	r5, r0, #180
 4915 000c 0C46     		mov	r4, r1
 4916 000e 0023     		movs	r3, #0
 4917              	.L948:
 4918 0010 55F8046B 		ldr	r6, [r5], #4	@ float
 4919 0014 44F8046B 		str	r6, [r4], #4	@ float
 4920 0018 D0F89C62 		ldr	r6, [r0, #668]
 4921 001c 0133     		adds	r3, r3, #1
 4922 001e 9E42     		cmp	r6, r3
 4923 0020 F6D8     		bhi	.L948
 4924              	.L947:
 4925 0022 9368     		ldr	r3, [r2, #8]
 4926 0024 5B68     		ldr	r3, [r3, #4]	@ float
 4927 0026 4B62     		str	r3, [r1, #36]	@ float
 4928 0028 D0F8C832 		ldr	r3, [r0, #712]	@ float
 4929 002c 8B62     		str	r3, [r1, #40]	@ float
 4930 002e B0F84C31 		ldrh	r3, [r0, #332]
 4931 0032 8B86     		strh	r3, [r1, #52]	@ movhi
 4932 0034 70BC     		pop	{r4, r5, r6}
 4933 0036 7047     		bx	lr
 4934              		.size	_ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer, .-_ZNK6GCodes12SavePositionER12Res
 4935              		.section	.text._ZN6GCodes15RestorePositionERK12RestorePointP11GCodeBuffer,"ax",%progbits
 4936              		.align	1
 4937              		.p2align 2,,3
 4938              		.global	_ZN6GCodes15RestorePositionERK12RestorePointP11GCodeBuffer
 4939              		.syntax unified
 4940              		.thumb
 4941              		.thumb_func
 4942              		.fpu fpv4-sp-d16
 4943              		.type	_ZN6GCodes15RestorePositionERK12RestorePointP11GCodeBuffer, %function
 4944              	_ZN6GCodes15RestorePositionERK12RestorePointP11GCodeBuffer:
 4945              		@ args = 0, pretend = 0, frame = 0
 4946              		@ frame_needed = 0, uses_anonymous_args = 0
 4947              		@ link register save eliminated.
 4948 0000 70B4     		push	{r4, r5, r6}
 4949 0002 D0F89C62 		ldr	r6, [r0, #668]
 4950 0006 56B1     		cbz	r6, .L955
 4951 0008 01EB8606 		add	r6, r1, r6, lsl #2
 4952 000c 0B46     		mov	r3, r1
 4953 000e 00F1B404 		add	r4, r0, #180
 4954              	.L956:
 4955 0012 53F8045B 		ldr	r5, [r3], #4	@ float
 4956 0016 44F8045B 		str	r5, [r4], #4	@ float
 4957 001a B342     		cmp	r3, r6
 4958 001c F9D1     		bne	.L956
 4959              	.L955:
ARM GAS  /tmp/ccJRi9N9.s 			page 88


 4960 001e 12B1     		cbz	r2, .L957
 4961 0020 9368     		ldr	r3, [r2, #8]
 4962 0022 4A6A     		ldr	r2, [r1, #36]	@ float
 4963 0024 5A60     		str	r2, [r3, #4]	@ float
 4964              	.L957:
 4965 0026 8B8E     		ldrh	r3, [r1, #52]
 4966 0028 A0F84C31 		strh	r3, [r0, #332]	@ movhi
 4967 002c 70BC     		pop	{r4, r5, r6}
 4968 002e 7047     		bx	lr
 4969              		.size	_ZN6GCodes15RestorePositionERK12RestorePointP11GCodeBuffer, .-_ZN6GCodes15RestorePositionERK
 4970              		.section	.text._ZN6GCodes19ToolOffsetTransformEPKfPfm,"ax",%progbits
 4971              		.align	1
 4972              		.p2align 2,,3
 4973              		.global	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 4974              		.syntax unified
 4975              		.thumb
 4976              		.thumb_func
 4977              		.fpu fpv4-sp-d16
 4978              		.type	_ZN6GCodes19ToolOffsetTransformEPKfPfm, %function
 4979              	_ZN6GCodes19ToolOffsetTransformEPKfPfm:
 4980              		@ args = 0, pretend = 0, frame = 0
 4981              		@ frame_needed = 0, uses_anonymous_args = 0
 4982 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4983 0004 414C     		ldr	r4, .L991
 4984 0006 D0F89CC2 		ldr	ip, [r0, #668]
 4985 000a 256B     		ldr	r5, [r4, #48]
 4986 000c 002D     		cmp	r5, #0
 4987 000e 5FD0     		beq	.L989
 4988 0010 D5E92889 		ldrd	r8, r9, [r5, #160]
 4989 0014 BCF1000F 		cmp	ip, #0
 4990 0018 40D0     		beq	.L968
 4991 001a 0C35     		adds	r5, r5, #12
 4992 001c C9F3400A 		ubfx	r10, r9, #1, #1
 4993 0020 00F52977 		add	r7, r0, #676
 4994 0024 1646     		mov	r6, r2
 4995 0026 0024     		movs	r4, #0
 4996 0028 01F1040B 		add	fp, r1, #4
 4997 002c 08F0010E 		and	lr, r8, #1
 4998              	.L976:
 4999 0030 002C     		cmp	r4, #0
 5000 0032 43D1     		bne	.L970
 5001 0034 BEF1000F 		cmp	lr, #0
 5002 0038 27D0     		beq	.L972
 5003              	.L971:
 5004 003a D0F8FCC2 		ldr	ip, [r0, #764]
 5005 003e 95ED007A 		vldr.32	s14, [r5]
 5006 0042 0CEBCC0C 		add	ip, ip, ip, lsl #3
 5007 0046 A444     		add	ip, ip, r4
 5008 0048 00EB8C0C 		add	ip, r0, ip, lsl #2
 5009 004c DCEDC07A 		vldr.32	s15, [ip, #768]
 5010 0050 23FA04FC 		lsr	ip, r3, r4
 5011 0054 1CF0010F 		tst	ip, #1
 5012 0058 77EEC77A 		vsub.f32	s15, s15, s14
 5013 005c 09D1     		bne	.L975
 5014 005e 28FA04FC 		lsr	ip, r8, r4
 5015 0062 1CF0010F 		tst	ip, #1
 5016 0066 2FD1     		bne	.L977
ARM GAS  /tmp/ccJRi9N9.s 			page 89


 5017 0068 29FA04FC 		lsr	ip, r9, r4
 5018 006c 1CF0010F 		tst	ip, #1
 5019 0070 2CD1     		bne	.L990
 5020              	.L975:
 5021 0072 01EB840C 		add	ip, r1, r4, lsl #2
 5022              	.L974:
 5023 0076 DCED006A 		vldr.32	s13, [ip]
 5024 007a 97ED007A 		vldr.32	s14, [r7]
 5025 007e E6EE877A 		vfma.f32	s15, s13, s14
 5026 0082 C6ED007A 		vstr.32	s15, [r6]
 5027 0086 D0F89CC2 		ldr	ip, [r0, #668]
 5028              	.L972:
 5029 008a 0134     		adds	r4, r4, #1
 5030 008c A445     		cmp	ip, r4
 5031 008e 07F10407 		add	r7, r7, #4
 5032 0092 06F10406 		add	r6, r6, #4
 5033 0096 05F10405 		add	r5, r5, #4
 5034 009a C9D8     		bhi	.L976
 5035              	.L968:
 5036 009c 00F59E63 		add	r3, r0, #1264
 5037 00a0 D3ED006A 		vldr.32	s13, [r3]
 5038 00a4 90ED367A 		vldr.32	s14, [r0, #216]
 5039 00a8 D2ED027A 		vldr.32	s15, [r2, #8]
 5040 00ac 37EE267A 		vadd.f32	s14, s14, s13
 5041 00b0 77EE877A 		vadd.f32	s15, s15, s14
 5042 00b4 C2ED027A 		vstr.32	s15, [r2, #8]
 5043 00b8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5044              	.L970:
 5045 00bc 012C     		cmp	r4, #1
 5046 00be BCD1     		bne	.L971
 5047 00c0 BAF1000F 		cmp	r10, #0
 5048 00c4 E1D0     		beq	.L972
 5049 00c6 B8E7     		b	.L971
 5050              	.L977:
 5051 00c8 8C46     		mov	ip, r1
 5052 00ca D4E7     		b	.L974
 5053              	.L990:
 5054 00cc DC46     		mov	ip, fp
 5055 00ce D2E7     		b	.L974
 5056              	.L989:
 5057 00d0 BCF1000F 		cmp	ip, #0
 5058 00d4 E2D0     		beq	.L968
 5059 00d6 00F52976 		add	r6, r0, #676
 5060 00da 1446     		mov	r4, r2
 5061              	.L969:
 5062 00dc D0F8FC32 		ldr	r3, [r0, #764]
 5063 00e0 F1EC016A 		vldmia.32	r1!, {s13}
 5064 00e4 B6EC017A 		vldmia.32	r6!, {s14}
 5065 00e8 03EBC303 		add	r3, r3, r3, lsl #3
 5066 00ec 2B44     		add	r3, r3, r5
 5067 00ee 00EB8303 		add	r3, r0, r3, lsl #2
 5068 00f2 D3EDC07A 		vldr.32	s15, [r3, #768]
 5069 00f6 E6EE877A 		vfma.f32	s15, s13, s14
 5070 00fa 0135     		adds	r5, r5, #1
 5071 00fc E4EC017A 		vstmia.32	r4!, {s15}
 5072 0100 D0F89C32 		ldr	r3, [r0, #668]
 5073 0104 AB42     		cmp	r3, r5
ARM GAS  /tmp/ccJRi9N9.s 			page 90


 5074 0106 E9D8     		bhi	.L969
 5075 0108 C8E7     		b	.L968
 5076              	.L992:
 5077 010a 00BF     		.align	2
 5078              	.L991:
 5079 010c 00000000 		.word	reprap
 5080              		.size	_ZN6GCodes19ToolOffsetTransformEPKfPfm, .-_ZN6GCodes19ToolOffsetTransformEPKfPfm
 5081              		.section	.text._ZN6GCodes13EndSimulationEP11GCodeBuffer,"ax",%progbits
 5082              		.align	1
 5083              		.p2align 2,,3
 5084              		.global	_ZN6GCodes13EndSimulationEP11GCodeBuffer
 5085              		.syntax unified
 5086              		.thumb
 5087              		.thumb_func
 5088              		.fpu fpv4-sp-d16
 5089              		.type	_ZN6GCodes13EndSimulationEP11GCodeBuffer, %function
 5090              	_ZN6GCodes13EndSimulationEP11GCodeBuffer:
 5091              		@ args = 0, pretend = 0, frame = 0
 5092              		@ frame_needed = 0, uses_anonymous_args = 0
 5093 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 5094 0002 D0F89C52 		ldr	r5, [r0, #668]
 5095 0006 0F46     		mov	r7, r1
 5096 0008 0446     		mov	r4, r0
 5097 000a 00F1B401 		add	r1, r0, #180
 5098 000e 00F5D076 		add	r6, r0, #416
 5099 0012 4DB1     		cbz	r5, .L994
 5100 0014 01EB8505 		add	r5, r1, r5, lsl #2
 5101 0018 0B46     		mov	r3, r1
 5102 001a 3246     		mov	r2, r6
 5103              	.L995:
 5104 001c 52F8040B 		ldr	r0, [r2], #4	@ float
 5105 0020 43F8040B 		str	r0, [r3], #4	@ float
 5106 0024 AB42     		cmp	r3, r5
 5107 0026 F9D1     		bne	.L995
 5108              	.L994:
 5109 0028 1FB1     		cbz	r7, .L996
 5110 002a BB68     		ldr	r3, [r7, #8]
 5111 002c D4F8C421 		ldr	r2, [r4, #452]	@ float
 5112 0030 5A60     		str	r2, [r3, #4]	@ float
 5113              	.L996:
 5114 0032 B4F8D431 		ldrh	r3, [r4, #468]
 5115 0036 A4F84C31 		strh	r3, [r4, #332]	@ movhi
 5116 003a 04F1DC02 		add	r2, r4, #220
 5117 003e 0023     		movs	r3, #0
 5118 0040 2046     		mov	r0, r4
 5119 0042 FFF7FEFF 		bl	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 5120 0046 054B     		ldr	r3, .L1005
 5121 0048 3146     		mov	r1, r6
 5122 004a 9868     		ldr	r0, [r3, #8]
 5123 004c 0122     		movs	r2, #1
 5124 004e FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 5125 0052 D4F89C31 		ldr	r3, [r4, #412]
 5126 0056 C4F87434 		str	r3, [r4, #1140]
 5127 005a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5128              	.L1006:
 5129              		.align	2
 5130              	.L1005:
ARM GAS  /tmp/ccJRi9N9.s 			page 91


 5131 005c 00000000 		.word	reprap
 5132              		.size	_ZN6GCodes13EndSimulationEP11GCodeBuffer, .-_ZN6GCodes13EndSimulationEP11GCodeBuffer
 5133              		.section	.text._ZN6GCodes26ToolOffsetInverseTransformEPKfPf,"ax",%progbits
 5134              		.align	1
 5135              		.p2align 2,,3
 5136              		.global	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5137              		.syntax unified
 5138              		.thumb
 5139              		.thumb_func
 5140              		.fpu fpv4-sp-d16
 5141              		.type	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf, %function
 5142              	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf:
 5143              		@ args = 0, pretend = 0, frame = 0
 5144              		@ frame_needed = 0, uses_anonymous_args = 0
 5145 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 5146 0004 504E     		ldr	r6, .L1035
 5147 0006 356B     		ldr	r5, [r6, #48]
 5148 0008 0446     		mov	r4, r0
 5149 000a 0F46     		mov	r7, r1
 5150 000c 9046     		mov	r8, r2
 5151 000e 002D     		cmp	r5, #0
 5152 0010 7AD0     		beq	.L1034
 5153 0012 3046     		mov	r0, r6
 5154 0014 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 5155 0018 8146     		mov	r9, r0
 5156 001a 3046     		mov	r0, r6
 5157 001c FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 5158 0020 D4F89C32 		ldr	r3, [r4, #668]
 5159 0024 002B     		cmp	r3, #0
 5160 0026 5BD0     		beq	.L1010
 5161 0028 9FED486A 		vldr.32	s12, .L1035+4
 5162 002c 0026     		movs	r6, #0
 5163 002e 3946     		mov	r1, r7
 5164 0030 F0EE465A 		vmov.f32	s11, s12
 5165 0034 0C35     		adds	r5, r5, #12
 5166 0036 3246     		mov	r2, r6
 5167 0038 B646     		mov	lr, r6
 5168 003a C446     		mov	ip, r8
 5169 003c 04F52977 		add	r7, r4, #676
 5170              	.L1015:
 5171 0040 D4F8FC32 		ldr	r3, [r4, #764]
 5172 0044 F5EC016A 		vldmia.32	r5!, {s13}
 5173 0048 B1EC017A 		vldmia.32	r1!, {s14}
 5174 004c 03EBC303 		add	r3, r3, r3, lsl #3
 5175 0050 3344     		add	r3, r3, r6
 5176 0052 04EB8303 		add	r3, r4, r3, lsl #2
 5177 0056 D3EDC07A 		vldr.32	s15, [r3, #768]
 5178 005a 37EE267A 		vadd.f32	s14, s14, s13
 5179 005e 29FA06F3 		lsr	r3, r9, r6
 5180 0062 13F0010F 		tst	r3, #1
 5181 0066 20FA06FA 		lsr	r10, r0, r6
 5182 006a 77EEE67A 		vsub.f32	s15, s15, s13
 5183 006e ACEC017A 		vstmia.32	ip!, {s14}
 5184 0072 06F10106 		add	r6, r6, #1
 5185 0076 0BD0     		beq	.L1013
 5186 0078 11ED015A 		vldr.32	s10, [r1, #-4]
 5187 007c D7ED006A 		vldr.32	s13, [r7]
ARM GAS  /tmp/ccJRi9N9.s 			page 92


 5188 0080 85EE267A 		vdiv.f32	s14, s10, s13
 5189 0084 0EF1010E 		add	lr, lr, #1
 5190 0088 37EE677A 		vsub.f32	s14, s14, s15
 5191 008c 75EE875A 		vadd.f32	s11, s11, s14
 5192              	.L1013:
 5193 0090 1AF0010F 		tst	r10, #1
 5194 0094 0AD0     		beq	.L1014
 5195 0096 11ED015A 		vldr.32	s10, [r1, #-4]
 5196 009a D7ED006A 		vldr.32	s13, [r7]
 5197 009e 85EE267A 		vdiv.f32	s14, s10, s13
 5198 00a2 0132     		adds	r2, r2, #1
 5199 00a4 77EE677A 		vsub.f32	s15, s14, s15
 5200 00a8 36EE276A 		vadd.f32	s12, s12, s15
 5201              	.L1014:
 5202 00ac D4F89C32 		ldr	r3, [r4, #668]
 5203 00b0 B342     		cmp	r3, r6
 5204 00b2 07F10407 		add	r7, r7, #4
 5205 00b6 C3D8     		bhi	.L1015
 5206 00b8 BEF1000F 		cmp	lr, #0
 5207 00bc 07D0     		beq	.L1016
 5208 00be 07EE90EA 		vmov	s15, lr	@ int
 5209 00c2 F8EE677A 		vcvt.f32.u32	s15, s15
 5210 00c6 85EEA77A 		vdiv.f32	s14, s11, s15
 5211 00ca 88ED007A 		vstr.32	s14, [r8]
 5212              	.L1016:
 5213 00ce 3AB1     		cbz	r2, .L1010
 5214 00d0 07EE902A 		vmov	s15, r2	@ int
 5215 00d4 F8EE677A 		vcvt.f32.u32	s15, s15
 5216 00d8 86EE277A 		vdiv.f32	s14, s12, s15
 5217 00dc 88ED017A 		vstr.32	s14, [r8, #4]
 5218              	.L1010:
 5219 00e0 04F59E63 		add	r3, r4, #1264
 5220 00e4 D3ED006A 		vldr.32	s13, [r3]
 5221 00e8 94ED367A 		vldr.32	s14, [r4, #216]
 5222 00ec 94EDAB6A 		vldr.32	s12, [r4, #684]
 5223 00f0 D8ED027A 		vldr.32	s15, [r8, #8]
 5224 00f4 37EE267A 		vadd.f32	s14, s14, s13
 5225 00f8 C7EE066A 		vdiv.f32	s13, s14, s12
 5226 00fc 77EEE67A 		vsub.f32	s15, s15, s13
 5227 0100 C8ED027A 		vstr.32	s15, [r8, #8]
 5228 0104 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 5229              	.L1034:
 5230 0108 D0F89C32 		ldr	r3, [r0, #668]
 5231 010c 002B     		cmp	r3, #0
 5232 010e E7D0     		beq	.L1010
 5233 0110 00F52970 		add	r0, r0, #676
 5234              	.L1012:
 5235 0114 D4F8FC32 		ldr	r3, [r4, #764]
 5236 0118 F1EC017A 		vldmia.32	r1!, {s15}
 5237 011c F0EC016A 		vldmia.32	r0!, {s13}
 5238 0120 03EBC303 		add	r3, r3, r3, lsl #3
 5239 0124 2B44     		add	r3, r3, r5
 5240 0126 04EB8303 		add	r3, r4, r3, lsl #2
 5241 012a 93EDC07A 		vldr.32	s14, [r3, #768]
 5242 012e 77EEC77A 		vsub.f32	s15, s15, s14
 5243 0132 0135     		adds	r5, r5, #1
 5244 0134 87EEA67A 		vdiv.f32	s14, s15, s13
ARM GAS  /tmp/ccJRi9N9.s 			page 93


 5245 0138 A2EC017A 		vstmia.32	r2!, {s14}
 5246 013c D4F89C32 		ldr	r3, [r4, #668]
 5247 0140 AB42     		cmp	r3, r5
 5248 0142 E7D8     		bhi	.L1012
 5249 0144 CCE7     		b	.L1010
 5250              	.L1036:
 5251 0146 00BF     		.align	2
 5252              	.L1035:
 5253 0148 00000000 		.word	reprap
 5254 014c 00000000 		.word	0
 5255              		.size	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf, .-_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5256              		.section	.text._ZN6GCodes5ResetEv,"ax",%progbits
 5257              		.align	1
 5258              		.p2align 2,,3
 5259              		.global	_ZN6GCodes5ResetEv
 5260              		.syntax unified
 5261              		.thumb
 5262              		.thumb_func
 5263              		.fpu fpv4-sp-d16
 5264              		.type	_ZN6GCodes5ResetEv, %function
 5265              	_ZN6GCodes5ResetEv:
 5266              		@ args = 0, pretend = 0, frame = 0
 5267              		@ frame_needed = 0, uses_anonymous_args = 0
 5268 0000 70B5     		push	{r4, r5, r6, lr}
 5269 0002 836B     		ldr	r3, [r0, #56]
 5270 0004 0446     		mov	r4, r0
 5271 0006 1868     		ldr	r0, [r3]
 5272 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5273 000c E36B     		ldr	r3, [r4, #60]
 5274 000e 1868     		ldr	r0, [r3]
 5275 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5276 0014 236C     		ldr	r3, [r4, #64]
 5277 0016 1868     		ldr	r0, [r3]
 5278 0018 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5279 001c 636C     		ldr	r3, [r4, #68]
 5280 001e 1868     		ldr	r0, [r3]
 5281 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5282 0024 A36C     		ldr	r3, [r4, #72]
 5283 0026 1868     		ldr	r0, [r3]
 5284 0028 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5285 002c A36C     		ldr	r3, [r4, #72]
 5286 002e 1B68     		ldr	r3, [r3]
 5287 0030 0122     		movs	r2, #1
 5288 0032 83F8EE20 		strb	r2, [r3, #238]
 5289 0036 E36C     		ldr	r3, [r4, #76]
 5290 0038 1868     		ldr	r0, [r3]
 5291 003a FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5292 003e 236D     		ldr	r3, [r4, #80]
 5293 0040 1868     		ldr	r0, [r3]
 5294 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5295 0046 636D     		ldr	r3, [r4, #84]
 5296 0048 1868     		ldr	r0, [r3]
 5297 004a FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5298 004e D4F84404 		ldr	r0, [r4, #1092]
 5299 0052 0025     		movs	r5, #0
 5300 0054 A565     		str	r5, [r4, #88]
 5301 0056 18B1     		cbz	r0, .L1038
ARM GAS  /tmp/ccJRi9N9.s 			page 94


 5302 0058 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 5303 005c C4F84454 		str	r5, [r4, #1092]
 5304              	.L1038:
 5305 0060 04F2A443 		addw	r3, r4, #1188
 5306 0064 5949     		ldr	r1, .L1057
 5307 0066 0020     		movs	r0, #0
 5308 0068 04F2CC42 		addw	r2, r4, #1228
 5309 006c C4F84C04 		str	r0, [r4, #1100]
 5310 0070 1960     		str	r1, [r3]	@ float
 5311 0072 1046     		mov	r0, r2
 5312 0074 04F59563 		add	r3, r4, #1192
 5313 0078 4FF07E51 		mov	r1, #1065353216
 5314              	.L1039:
 5315 007c 42F8041B 		str	r1, [r2], #4	@ float
 5316 0080 43F8041B 		str	r1, [r3], #4	@ float
 5317 0084 8342     		cmp	r3, r0
 5318 0086 F9D1     		bne	.L1039
 5319 0088 0021     		movs	r1, #0
 5320 008a 04F52972 		add	r2, r4, #676
 5321 008e 04F53276 		add	r6, r4, #712
 5322 0092 4FF07E55 		mov	r5, #1065353216
 5323              	.L1041:
 5324 0096 1046     		mov	r0, r2
 5325 0098 A2F52973 		sub	r3, r2, #676
 5326 009c 40F8045B 		str	r5, [r0], #4	@ float
 5327 00a0 A2F5B072 		sub	r2, r2, #352
 5328              	.L1040:
 5329 00a4 C3F80013 		str	r1, [r3, #768]	@ float
 5330 00a8 2433     		adds	r3, r3, #36
 5331 00aa 9342     		cmp	r3, r2
 5332 00ac FAD1     		bne	.L1040
 5333 00ae B042     		cmp	r0, r6
 5334 00b0 0246     		mov	r2, r0
 5335 00b2 F0D1     		bne	.L1041
 5336 00b4 0023     		movs	r3, #0
 5337 00b6 04F1DC05 		add	r5, r4, #220
 5338 00ba C4F8FC32 		str	r3, [r4, #764]
 5339 00be 0022     		movs	r2, #0
 5340 00c0 2B46     		mov	r3, r5
 5341 00c2 04F58671 		add	r1, r4, #268
 5342              	.L1042:
 5343 00c6 43F8042B 		str	r2, [r3], #4	@ float
 5344 00ca 8B42     		cmp	r3, r1
 5345 00cc FBD1     		bne	.L1042
 5346 00ce 94F84F11 		ldrb	r1, [r4, #335]	@ zero_extendqisi2
 5347 00d2 3F48     		ldr	r0, .L1057+4
 5348 00d4 C4F86021 		str	r2, [r4, #352]	@ float
 5349 00d8 0023     		movs	r3, #0
 5350 00da 63F30001 		bfi	r1, r3, #0, #1
 5351 00de 84F84F11 		strb	r1, [r4, #335]
 5352 00e2 04F59E61 		add	r1, r4, #1264
 5353 00e6 C4F85031 		str	r3, [r4, #336]
 5354 00ea 84F89931 		strb	r3, [r4, #409]
 5355 00ee 84F89831 		strb	r3, [r4, #408]
 5356 00f2 C4F84831 		str	r3, [r4, #328]
 5357 00f6 84F84E31 		strb	r3, [r4, #334]
 5358 00fa 8068     		ldr	r0, [r0, #8]
ARM GAS  /tmp/ccJRi9N9.s 			page 95


 5359 00fc 0A60     		str	r2, [r1]	@ float
 5360 00fe 0126     		movs	r6, #1
 5361 0100 0221     		movs	r1, #2
 5362 0102 C4F83421 		str	r2, [r4, #308]	@ float
 5363 0106 C4F84061 		str	r6, [r4, #320]
 5364 010a C4F84411 		str	r1, [r4, #324]
 5365 010e A4F84C31 		strh	r3, [r4, #332]	@ movhi
 5366 0112 D0F8580A 		ldr	r0, [r0, #2648]
 5367 0116 D4F89C12 		ldr	r1, [r4, #668]
 5368 011a 0368     		ldr	r3, [r0]
 5369 011c 2A46     		mov	r2, r5
 5370 011e 1B6B     		ldr	r3, [r3, #48]
 5371 0120 9847     		blx	r3
 5372 0122 2946     		mov	r1, r5
 5373 0124 04F1B402 		add	r2, r4, #180
 5374 0128 2046     		mov	r0, r4
 5375 012a FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5376 012e 04F52476 		add	r6, r4, #656
 5377 0132 04F5EE75 		add	r5, r4, #476
 5378              	.L1043:
 5379 0136 2846     		mov	r0, r5
 5380 0138 3C35     		adds	r5, r5, #60
 5381 013a FFF7FEFF 		bl	_ZN12RestorePoint4InitEv
 5382 013e AE42     		cmp	r6, r5
 5383 0140 F9D1     		bne	.L1043
 5384 0142 04F5B063 		add	r3, r4, #1408
 5385 0146 04F5BF62 		add	r2, r4, #1528
 5386 014a 0025     		movs	r5, #0
 5387              	.L1044:
 5388 014c 03F8045C 		strb	r5, [r3, #-4]
 5389 0150 43E90355 		strd	r5, r5, [r3, #-12]
 5390 0154 0C33     		adds	r3, r3, #12
 5391 0156 9342     		cmp	r3, r2
 5392 0158 F8D1     		bne	.L1044
 5393 015a 04F25452 		addw	r2, r4, #1364
 5394 015e 0021     		movs	r1, #0
 5395 0160 4FF0FF33 		mov	r3, #-1
 5396 0164 C4F8F055 		str	r5, [r4, #1520]
 5397 0168 84F85855 		strb	r5, [r4, #1368]
 5398 016c 84F85A55 		strb	r5, [r4, #1370]
 5399 0170 84F85955 		strb	r5, [r4, #1369]
 5400 0174 1160     		str	r1, [r2]	@ float
 5401 0176 2068     		ldr	r0, [r4]
 5402 0178 C4F83831 		str	r3, [r4, #312]
 5403 017c 84F8AA50 		strb	r5, [r4, #170]
 5404 0180 84F8AE50 		strb	r5, [r4, #174]
 5405 0184 84F8AD50 		strb	r5, [r4, #173]
 5406 0188 84F85055 		strb	r5, [r4, #1360]
 5407 018c 84F8AB50 		strb	r5, [r4, #171]
 5408 0190 84F85155 		strb	r5, [r4, #1361]
 5409 0194 FFF7FEFF 		bl	_ZNK8Platform19GetAllEndstopStatesEv
 5410 0198 84F8F455 		strb	r5, [r4, #1524]
 5411 019c C4F8EC05 		str	r0, [r4, #1516]
 5412 01a0 84F86456 		strb	r5, [r4, #1636]
 5413 01a4 D4F8F805 		ldr	r0, [r4, #1528]
 5414 01a8 FFF7FEFF 		bl	_ZN10GCodeQueue5ClearEv
 5415 01ac 84F88756 		strb	r5, [r4, #1671]
ARM GAS  /tmp/ccJRi9N9.s 			page 96


 5416 01b0 84F88556 		strb	r5, [r4, #1669]
 5417 01b4 84F88656 		strb	r5, [r4, #1670]
 5418 01b8 04F15803 		add	r3, r4, #88
 5419 01bc 0022     		movs	r2, #0
 5420 01be A434     		adds	r4, r4, #164
 5421              	.L1045:
 5422 01c0 43F8042F 		str	r2, [r3, #4]!
 5423 01c4 9C42     		cmp	r4, r3
 5424 01c6 FBD1     		bne	.L1045
 5425 01c8 70BD     		pop	{r4, r5, r6, pc}
 5426              	.L1058:
 5427 01ca 00BF     		.align	2
 5428              	.L1057:
 5429 01cc 8988883C 		.word	1015580809
 5430 01d0 00000000 		.word	reprap
 5431              		.size	_ZN6GCodes5ResetEv, .-_ZN6GCodes5ResetEv
 5432              		.section	.text._ZN6GCodes4InitEv,"ax",%progbits
 5433              		.align	1
 5434              		.p2align 2,,3
 5435              		.global	_ZN6GCodes4InitEv
 5436              		.syntax unified
 5437              		.thumb
 5438              		.thumb_func
 5439              		.fpu fpv4-sp-d16
 5440              		.type	_ZN6GCodes4InitEv, %function
 5441              	_ZN6GCodes4InitEv:
 5442              		@ args = 0, pretend = 0, frame = 0
 5443              		@ frame_needed = 0, uses_anonymous_args = 0
 5444 0000 0922     		movs	r2, #9
 5445 0002 70B5     		push	{r4, r5, r6, lr}
 5446 0004 0023     		movs	r3, #0
 5447 0006 45F65811 		movw	r1, #22872
 5448 000a C0F8A022 		str	r2, [r0, #672]
 5449 000e 0325     		movs	r5, #3
 5450 0010 5A22     		movs	r2, #90
 5451 0012 0446     		mov	r4, r0
 5452 0014 C0F85C34 		str	r3, [r0, #1116]	@ unaligned
 5453 0018 C0F86634 		str	r3, [r0, #1126]	@ unaligned
 5454 001c C0F86034 		str	r3, [r0, #1120]	@ unaligned
 5455 0020 C0F86A34 		str	r3, [r0, #1130]	@ unaligned
 5456 0024 A0F85A14 		strh	r1, [r0, #1114]	@ movhi
 5457 0028 A0F86414 		strh	r1, [r0, #1124]	@ movhi
 5458 002c 80F85C24 		strb	r2, [r0, #1116]
 5459 0030 80F86624 		strb	r2, [r0, #1126]
 5460 0034 C0F89852 		str	r5, [r0, #664]
 5461 0038 C0F89C52 		str	r5, [r0, #668]
 5462 003c FFF7FEFF 		bl	_ZN6GCodes5ResetEv
 5463 0040 0023     		movs	r3, #0
 5464 0042 324A     		ldr	r2, .L1065
 5465 0044 C4F8F032 		str	r3, [r4, #752]	@ float
 5466 0048 4FF07E50 		mov	r0, #1065353216
 5467 004c 1946     		mov	r1, r3	@ float
 5468 004e C4F8F822 		str	r2, [r4, #760]	@ float
 5469 0052 C4F8C832 		str	r3, [r4, #712]	@ float
 5470 0056 C4F8F402 		str	r0, [r4, #756]	@ float
 5471 005a 04F53373 		add	r3, r4, #716
 5472 005e 04F53C72 		add	r2, r4, #752
ARM GAS  /tmp/ccJRi9N9.s 			page 97


 5473              	.L1060:
 5474 0062 43F8041B 		str	r1, [r3], #4	@ float
 5475 0066 9342     		cmp	r3, r2
 5476 0068 FBD1     		bne	.L1060
 5477 006a 294B     		ldr	r3, .L1065+4
 5478 006c C4F85434 		str	r3, [r4, #1108]
 5479 0070 0121     		movs	r1, #1
 5480 0072 0023     		movs	r3, #0
 5481 0074 4FF48050 		mov	r0, #4096
 5482 0078 84F8AC30 		strb	r3, [r4, #172]
 5483 007c 84F88836 		strb	r3, [r4, #1672]
 5484 0080 84F8AD30 		strb	r3, [r4, #173]
 5485 0084 C4F85034 		str	r3, [r4, #1104]
 5486 0088 C4F87434 		str	r3, [r4, #1140]
 5487 008c 84F8A910 		strb	r1, [r4, #169]
 5488 0090 84F86F14 		strb	r1, [r4, #1135]
 5489 0094 84F86E14 		strb	r1, [r4, #1134]
 5490 0098 0022     		movs	r2, #0
 5491 009a A4F85804 		strh	r0, [r4, #1112]	@ movhi
 5492 009e 04F58F63 		add	r3, r4, #1144
 5493 00a2 04F29C41 		addw	r1, r4, #1180
 5494              	.L1061:
 5495 00a6 43F8042B 		str	r2, [r3], #4	@ float
 5496 00aa 9942     		cmp	r1, r3
 5497 00ac FBD1     		bne	.L1061
 5498 00ae 04F59463 		add	r3, r4, #1184
 5499 00b2 1848     		ldr	r0, .L1065+8
 5500 00b4 1A60     		str	r2, [r3]	@ float
 5501 00b6 04F25C53 		addw	r3, r4, #1372
 5502 00ba 0A60     		str	r2, [r1]	@ float
 5503 00bc 4FF08041 		mov	r1, #1073741824
 5504 00c0 1960     		str	r1, [r3]	@ float
 5505 00c2 04F5AC61 		add	r1, r4, #1376
 5506 00c6 04F26C53 		addw	r3, r4, #1388
 5507 00ca 0A60     		str	r2, [r1]	@ float
 5508 00cc 04F5AD61 		add	r1, r4, #1384
 5509 00d0 1A60     		str	r2, [r3]	@ float
 5510 00d2 04F26456 		addw	r6, r4, #1380
 5511 00d6 C4F8D820 		str	r2, [r4, #216]	@ float
 5512 00da 04F26C62 		addw	r2, r4, #1644
 5513 00de 0860     		str	r0, [r1]	@ float
 5514 00e0 0023     		movs	r3, #0
 5515 00e2 FF21     		movs	r1, #255
 5516 00e4 0C4D     		ldr	r5, .L1065+12
 5517 00e6 3060     		str	r0, [r6]	@ float
 5518 00e8 84F87035 		strb	r3, [r4, #1392]
 5519 00ec 84F88416 		strb	r1, [r4, #1668]
 5520 00f0 1560     		str	r5, [r2]	@ float
 5521 00f2 0A49     		ldr	r1, .L1065+16
 5522 00f4 626C     		ldr	r2, [r4, #68]
 5523 00f6 0A48     		ldr	r0, .L1065+20
 5524 00f8 84F87036 		strb	r3, [r4, #1648]
 5525 00fc C4F87436 		str	r3, [r4, #1652]
 5526 0100 C4F87806 		str	r0, [r4, #1656]
 5527 0104 8B69     		ldr	r3, [r1, #24]
 5528 0106 1268     		ldr	r2, [r2]
 5529 0108 1A60     		str	r2, [r3]
ARM GAS  /tmp/ccJRi9N9.s 			page 98


 5530 010a 70BD     		pop	{r4, r5, r6, pc}
 5531              	.L1066:
 5532              		.align	2
 5533              	.L1065:
 5534 010c CDCC4C3E 		.word	1045220557
 5535 0110 00000000 		.word	.LC105
 5536 0114 56558541 		.word	1099257174
 5537 0118 00007F43 		.word	1132396544
 5538 011c 00000000 		.word	reprap
 5539 0120 C0270900 		.word	600000
 5540              		.size	_ZN6GCodes4InitEv, .-_ZN6GCodes4InitEv
 5541              		.section	.text._ZN6GCodes15DoEmergencyStopEv,"ax",%progbits
 5542              		.align	1
 5543              		.p2align 2,,3
 5544              		.global	_ZN6GCodes15DoEmergencyStopEv
 5545              		.syntax unified
 5546              		.thumb
 5547              		.thumb_func
 5548              		.fpu fpv4-sp-d16
 5549              		.type	_ZN6GCodes15DoEmergencyStopEv, %function
 5550              	_ZN6GCodes15DoEmergencyStopEv:
 5551              		@ args = 0, pretend = 0, frame = 0
 5552              		@ frame_needed = 0, uses_anonymous_args = 0
 5553 0000 10B5     		push	{r4, lr}
 5554 0002 0446     		mov	r4, r0
 5555 0004 0648     		ldr	r0, .L1069
 5556 0006 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 5557 000a 2046     		mov	r0, r4
 5558 000c FFF7FEFF 		bl	_ZN6GCodes5ResetEv
 5559 0010 2068     		ldr	r0, [r4]
 5560 0012 044A     		ldr	r2, .L1069+4
 5561 0014 3521     		movs	r1, #53
 5562 0016 BDE81040 		pop	{r4, lr}
 5563 001a FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 5564              	.L1070:
 5565 001e 00BF     		.align	2
 5566              	.L1069:
 5567 0020 00000000 		.word	reprap
 5568 0024 00000000 		.word	.LC106
 5569              		.size	_ZN6GCodes15DoEmergencyStopEv, .-_ZN6GCodes15DoEmergencyStopEv
 5570              		.section	.text._ZN6GCodes15ClearBedMappingEv,"ax",%progbits
 5571              		.align	1
 5572              		.p2align 2,,3
 5573              		.global	_ZN6GCodes15ClearBedMappingEv
 5574              		.syntax unified
 5575              		.thumb
 5576              		.thumb_func
 5577              		.fpu fpv4-sp-d16
 5578              		.type	_ZN6GCodes15ClearBedMappingEv, %function
 5579              	_ZN6GCodes15ClearBedMappingEv:
 5580              		@ args = 0, pretend = 0, frame = 0
 5581              		@ frame_needed = 0, uses_anonymous_args = 0
 5582 0000 10B5     		push	{r4, lr}
 5583 0002 074B     		ldr	r3, .L1073
 5584 0004 0446     		mov	r4, r0
 5585 0006 9868     		ldr	r0, [r3, #8]
 5586 0008 FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
ARM GAS  /tmp/ccJRi9N9.s 			page 99


 5587 000c 04F1B402 		add	r2, r4, #180
 5588 0010 04F1DC01 		add	r1, r4, #220
 5589 0014 2046     		mov	r0, r4
 5590 0016 BDE81040 		pop	{r4, lr}
 5591 001a FFF7FEBF 		b	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5592              	.L1074:
 5593 001e 00BF     		.align	2
 5594              	.L1073:
 5595 0020 00000000 		.word	reprap
 5596              		.size	_ZN6GCodes15ClearBedMappingEv, .-_ZN6GCodes15ClearBedMappingEv
 5597              		.section	.text._ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef,"ax",%progbits
 5598              		.align	1
 5599              		.p2align 2,,3
 5600              		.global	_ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef
 5601              		.syntax unified
 5602              		.thumb
 5603              		.thumb_func
 5604              		.fpu fpv4-sp-d16
 5605              		.type	_ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef, %function
 5606              	_ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef:
 5607              		@ args = 0, pretend = 0, frame = 0
 5608              		@ frame_needed = 0, uses_anonymous_args = 0
 5609 0000 70B5     		push	{r4, r5, r6, lr}
 5610 0002 90F82035 		ldrb	r3, [r0, #1312]	@ zero_extendqisi2
 5611 0006 82B0     		sub	sp, sp, #8
 5612 0008 002B     		cmp	r3, #0
 5613 000a 38D0     		beq	.L1083
 5614 000c D0F89C32 		ldr	r3, [r0, #668]
 5615 0010 0125     		movs	r5, #1
 5616 0012 0E46     		mov	r6, r1
 5617 0014 05FA03F3 		lsl	r3, r5, r3
 5618 0018 D0F87414 		ldr	r1, [r0, #1140]
 5619 001c 013B     		subs	r3, r3, #1
 5620 001e 8B43     		bics	r3, r3, r1
 5621 0020 0446     		mov	r4, r0
 5622 0022 22D1     		bne	.L1084
 5623 0024 194B     		ldr	r3, .L1085
 5624 0026 9868     		ldr	r0, [r3, #8]
 5625 0028 04F2F441 		addw	r1, r4, #1268
 5626 002c FC30     		adds	r0, r0, #252
 5627 002e FFF7FEFF 		bl	_ZN9HeightMap7SetGridERK14GridDefinition
 5628 0032 2046     		mov	r0, r4
 5629 0034 FFF7FEFF 		bl	_ZN6GCodes15ClearBedMappingEv
 5630 0038 0023     		movs	r3, #0
 5631 003a C4F84C35 		str	r3, [r4, #1356]
 5632 003e C4F84835 		str	r3, [r4, #1352]
 5633 0042 B368     		ldr	r3, [r6, #8]
 5634 0044 1822     		movs	r2, #24
 5635 0046 1A75     		strb	r2, [r3, #20]
 5636 0048 2368     		ldr	r3, [r4]
 5637 004a 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 5638 004e 9BB1     		cbz	r3, .L1081
 5639 0050 092B     		cmp	r3, #9
 5640 0052 11D0     		beq	.L1081
 5641 0054 94F85135 		ldrb	r3, [r4, #1361]	@ zero_extendqisi2
 5642 0058 73B9     		cbnz	r3, .L1081
 5643 005a 0093     		str	r3, [sp]
ARM GAS  /tmp/ccJRi9N9.s 			page 100


 5644 005c 3146     		mov	r1, r6
 5645 005e 2046     		mov	r0, r4
 5646 0060 0B4A     		ldr	r2, .L1085+4
 5647 0062 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 5648 0066 2846     		mov	r0, r5
 5649 0068 04E0     		b	.L1077
 5650              	.L1084:
 5651 006a 1046     		mov	r0, r2
 5652 006c 0949     		ldr	r1, .L1085+8
 5653 006e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5654 0072 0220     		movs	r0, #2
 5655              	.L1077:
 5656 0074 02B0     		add	sp, sp, #8
 5657              		@ sp needed
 5658 0076 70BD     		pop	{r4, r5, r6, pc}
 5659              	.L1081:
 5660 0078 2846     		mov	r0, r5
 5661 007a 02B0     		add	sp, sp, #8
 5662              		@ sp needed
 5663 007c 70BD     		pop	{r4, r5, r6, pc}
 5664              	.L1083:
 5665 007e 1046     		mov	r0, r2
 5666 0080 0549     		ldr	r1, .L1085+12
 5667 0082 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5668 0086 0220     		movs	r0, #2
 5669 0088 02B0     		add	sp, sp, #8
 5670              		@ sp needed
 5671 008a 70BD     		pop	{r4, r5, r6, pc}
 5672              	.L1086:
 5673              		.align	2
 5674              	.L1085:
 5675 008c 00000000 		.word	reprap
 5676 0090 24000000 		.word	.LC47
 5677 0094 28000000 		.word	.LC108
 5678 0098 00000000 		.word	.LC107
 5679              		.size	_ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef, .-_ZN6GCodes9ProbeGridER11GCodeBufferRK9Str
 5680              		.section	.text._ZN6GCodes25UpdateCurrentUserPositionEv,"ax",%progbits
 5681              		.align	1
 5682              		.p2align 2,,3
 5683              		.global	_ZN6GCodes25UpdateCurrentUserPositionEv
 5684              		.syntax unified
 5685              		.thumb
 5686              		.thumb_func
 5687              		.fpu fpv4-sp-d16
 5688              		.type	_ZN6GCodes25UpdateCurrentUserPositionEv, %function
 5689              	_ZN6GCodes25UpdateCurrentUserPositionEv:
 5690              		@ args = 0, pretend = 0, frame = 0
 5691              		@ frame_needed = 0, uses_anonymous_args = 0
 5692 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 5693 0002 0E4D     		ldr	r5, .L1089
 5694 0004 83B0     		sub	sp, sp, #12
 5695 0006 0446     		mov	r4, r0
 5696 0008 2846     		mov	r0, r5
 5697 000a AE68     		ldr	r6, [r5, #8]
 5698 000c FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 5699 0010 0746     		mov	r7, r0
 5700 0012 2846     		mov	r0, r5
ARM GAS  /tmp/ccJRi9N9.s 			page 101


 5701 0014 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 5702 0018 04F1DC05 		add	r5, r4, #220
 5703 001c 0090     		str	r0, [sp]
 5704 001e 2946     		mov	r1, r5
 5705 0020 3046     		mov	r0, r6
 5706 0022 3B46     		mov	r3, r7
 5707 0024 0022     		movs	r2, #0
 5708 0026 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 5709 002a 2946     		mov	r1, r5
 5710 002c 04F1B402 		add	r2, r4, #180
 5711 0030 2046     		mov	r0, r4
 5712 0032 03B0     		add	sp, sp, #12
 5713              		@ sp needed
 5714 0034 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 5715 0038 FFF7FEBF 		b	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5716              	.L1090:
 5717              		.align	2
 5718              	.L1089:
 5719 003c 00000000 		.word	reprap
 5720              		.size	_ZN6GCodes25UpdateCurrentUserPositionEv, .-_ZN6GCodes25UpdateCurrentUserPositionEv
 5721              		.section	.text._ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer,"ax",%progbits
 5722              		.align	1
 5723              		.p2align 2,,3
 5724              		.global	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5725              		.syntax unified
 5726              		.thumb
 5727              		.thumb_func
 5728              		.fpu fpv4-sp-d16
 5729              		.type	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer, %function
 5730              	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer:
 5731              		@ args = 0, pretend = 0, frame = 0
 5732              		@ frame_needed = 0, uses_anonymous_args = 0
 5733 0000 C36D     		ldr	r3, [r0, #92]
 5734 0002 9942     		cmp	r1, r3
 5735 0004 08D0     		beq	.L1092
 5736 0006 0BB1     		cbz	r3, .L1093
 5737              	.L1097:
 5738 0008 0020     		movs	r0, #0
 5739 000a 7047     		bx	lr
 5740              	.L1093:
 5741 000c C165     		str	r1, [r0, #92]
 5742 000e 8A68     		ldr	r2, [r1, #8]
 5743 0010 D368     		ldr	r3, [r2, #12]
 5744 0012 43F00103 		orr	r3, r3, #1
 5745 0016 D360     		str	r3, [r2, #12]
 5746              	.L1092:
 5747 0018 D0F85031 		ldr	r3, [r0, #336]
 5748 001c 002B     		cmp	r3, #0
 5749 001e F3D1     		bne	.L1097
 5750 0020 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 5751 0024 184E     		ldr	r6, .L1101
 5752 0026 B568     		ldr	r5, [r6, #8]
 5753 0028 AB68     		ldr	r3, [r5, #8]
 5754 002a 6A68     		ldr	r2, [r5, #4]
 5755 002c 9342     		cmp	r3, r2
 5756 002e 82B0     		sub	sp, sp, #8
 5757 0030 03D0     		beq	.L1100
ARM GAS  /tmp/ccJRi9N9.s 			page 102


 5758              	.L1095:
 5759 0032 0020     		movs	r0, #0
 5760              	.L1094:
 5761 0034 02B0     		add	sp, sp, #8
 5762              		@ sp needed
 5763 0036 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 5764              	.L1100:
 5765 003a 1B7A     		ldrb	r3, [r3, #8]	@ zero_extendqisi2
 5766 003c 002B     		cmp	r3, #0
 5767 003e F8D1     		bne	.L1095
 5768 0040 2F68     		ldr	r7, [r5]
 5769 0042 002F     		cmp	r7, #0
 5770 0044 F5D1     		bne	.L1095
 5771 0046 0446     		mov	r4, r0
 5772 0048 3046     		mov	r0, r6
 5773 004a FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 5774 004e 8046     		mov	r8, r0
 5775 0050 3046     		mov	r0, r6
 5776 0052 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 5777 0056 04F1DC06 		add	r6, r4, #220
 5778 005a 4346     		mov	r3, r8
 5779 005c 0090     		str	r0, [sp]
 5780 005e 3A46     		mov	r2, r7
 5781 0060 2846     		mov	r0, r5
 5782 0062 3146     		mov	r1, r6
 5783 0064 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 5784 0068 D4F89C22 		ldr	r2, [r4, #668]
 5785 006c 3146     		mov	r1, r6
 5786 006e 9200     		lsls	r2, r2, #2
 5787 0070 04F58670 		add	r0, r4, #268
 5788 0074 FFF7FEFF 		bl	memcpy
 5789 0078 2046     		mov	r0, r4
 5790 007a 3146     		mov	r1, r6
 5791 007c 04F1B402 		add	r2, r4, #180
 5792 0080 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5793 0084 0120     		movs	r0, #1
 5794 0086 D5E7     		b	.L1094
 5795              	.L1102:
 5796              		.align	2
 5797              	.L1101:
 5798 0088 00000000 		.word	reprap
 5799              		.size	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer, .-_ZN6GCodes32LockMovementAndW
 5800              		.section	.text._ZN6GCodes7DoDwellER11GCodeBuffer,"ax",%progbits
 5801              		.align	1
 5802              		.p2align 2,,3
 5803              		.global	_ZN6GCodes7DoDwellER11GCodeBuffer
 5804              		.syntax unified
 5805              		.thumb
 5806              		.thumb_func
 5807              		.fpu fpv4-sp-d16
 5808              		.type	_ZN6GCodes7DoDwellER11GCodeBuffer, %function
 5809              	_ZN6GCodes7DoDwellER11GCodeBuffer:
 5810              		@ args = 0, pretend = 0, frame = 0
 5811              		@ frame_needed = 0, uses_anonymous_args = 0
 5812 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 5813 0002 0D46     		mov	r5, r1
 5814 0004 0646     		mov	r6, r0
ARM GAS  /tmp/ccJRi9N9.s 			page 103


 5815 0006 5321     		movs	r1, #83
 5816 0008 2846     		mov	r0, r5
 5817 000a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5818 000e 78B3     		cbz	r0, .L1104
 5819 0010 2846     		mov	r0, r5
 5820 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5821 0016 DFED1F7A 		vldr.32	s15, .L1115
 5822 001a 20EE270A 		vmul.f32	s0, s0, s15
 5823 001e FDEEC07A 		vcvt.s32.f32	s15, s0
 5824 0022 17EE904A 		vmov	r4, s15	@ int
 5825              	.L1105:
 5826 0026 002C     		cmp	r4, #0
 5827 0028 20DD     		ble	.L1114
 5828 002a 2946     		mov	r1, r5
 5829 002c 3046     		mov	r0, r6
 5830 002e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5831 0032 40B3     		cbz	r0, .L1112
 5832 0034 96F85875 		ldrb	r7, [r6, #1368]	@ zero_extendqisi2
 5833 0038 7FB1     		cbz	r7, .L1110
 5834 003a 06EE904A 		vmov	s13, r4	@ int
 5835 003e 06F25456 		addw	r6, r6, #1364
 5836 0042 D6ED007A 		vldr.32	s15, [r6]
 5837 0046 9FED147A 		vldr.32	s14, .L1115+4
 5838 004a B8EEE60A 		vcvt.f32.s32	s0, s13
 5839 004e 0120     		movs	r0, #1
 5840 0050 E0EE077A 		vfma.f32	s15, s0, s14
 5841 0054 C6ED007A 		vstr.32	s15, [r6]
 5842 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5843              	.L1110:
 5844 005a FFF7FEFF 		bl	millis
 5845 005e 2B79     		ldrb	r3, [r5, #4]	@ zero_extendqisi2
 5846 0060 9BB1     		cbz	r3, .L1111
 5847 0062 2B68     		ldr	r3, [r5]
 5848 0064 C01A     		subs	r0, r0, r3
 5849 0066 8442     		cmp	r4, r0
 5850 0068 0DD8     		bhi	.L1112
 5851 006a 2F71     		strb	r7, [r5, #4]
 5852              	.L1114:
 5853 006c 0120     		movs	r0, #1
 5854 006e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5855              	.L1104:
 5856 0070 5021     		movs	r1, #80
 5857 0072 2846     		mov	r0, r5
 5858 0074 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5859 0078 0028     		cmp	r0, #0
 5860 007a F7D0     		beq	.L1114
 5861 007c 2846     		mov	r0, r5
 5862 007e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5863 0082 0446     		mov	r4, r0
 5864 0084 CFE7     		b	.L1105
 5865              	.L1112:
 5866 0086 0020     		movs	r0, #0
 5867 0088 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5868              	.L1111:
 5869 008a 0122     		movs	r2, #1
 5870 008c 2860     		str	r0, [r5]
 5871 008e 2A71     		strb	r2, [r5, #4]
ARM GAS  /tmp/ccJRi9N9.s 			page 104


 5872 0090 1846     		mov	r0, r3
 5873 0092 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5874              	.L1116:
 5875              		.align	2
 5876              	.L1115:
 5877 0094 00007A44 		.word	1148846080
 5878 0098 6F12833A 		.word	981668463
 5879              		.size	_ZN6GCodes7DoDwellER11GCodeBuffer, .-_ZN6GCodes7DoDwellER11GCodeBuffer
 5880              		.section	.text._ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef,"ax",%progbits
 5881              		.align	1
 5882              		.p2align 2,,3
 5883              		.global	_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef
 5884              		.syntax unified
 5885              		.thumb
 5886              		.thumb_func
 5887              		.fpu fpv4-sp-d16
 5888              		.type	_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef, %function
 5889              	_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef:
 5890              		@ args = 0, pretend = 0, frame = 0
 5891              		@ frame_needed = 0, uses_anonymous_args = 0
 5892 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 5893 0004 0446     		mov	r4, r0
 5894 0006 0F46     		mov	r7, r1
 5895 0008 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5896 000c 40B3     		cbz	r0, .L1118
 5897 000e D4F89832 		ldr	r3, [r4, #664]
 5898 0012 0025     		movs	r5, #0
 5899 0014 C4F87054 		str	r5, [r4, #1136]
 5900 0018 23B3     		cbz	r3, .L1123
 5901 001a 04F25946 		addw	r6, r4, #1113
 5902 001e 4FF00108 		mov	r8, #1
 5903              	.L1122:
 5904 0022 16F8011F 		ldrb	r1, [r6, #1]!	@ zero_extendqisi2
 5905 0026 3846     		mov	r0, r7
 5906 0028 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5907 002c 60B1     		cbz	r0, .L1121
 5908 002e D4F87024 		ldr	r2, [r4, #1136]
 5909 0032 D4F87434 		ldr	r3, [r4, #1140]
 5910 0036 08FA05F1 		lsl	r1, r8, r5
 5911 003a 0A43     		orrs	r2, r2, r1
 5912 003c 23EA0103 		bic	r3, r3, r1
 5913 0040 C4F87024 		str	r2, [r4, #1136]
 5914 0044 C4F87434 		str	r3, [r4, #1140]
 5915              	.L1121:
 5916 0048 D4F89832 		ldr	r3, [r4, #664]
 5917 004c 0135     		adds	r5, r5, #1
 5918 004e AB42     		cmp	r3, r5
 5919 0050 E7D8     		bhi	.L1122
 5920 0052 D4F87034 		ldr	r3, [r4, #1136]
 5921 0056 2BB1     		cbz	r3, .L1123
 5922              	.L1120:
 5923 0058 BB68     		ldr	r3, [r7, #8]
 5924 005a 0422     		movs	r2, #4
 5925 005c 1A75     		strb	r2, [r3, #20]
 5926 005e 0120     		movs	r0, #1
 5927              	.L1118:
 5928 0060 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  /tmp/ccJRi9N9.s 			page 105


 5929              	.L1123:
 5930 0064 D4F89C22 		ldr	r2, [r4, #668]
 5931 0068 0123     		movs	r3, #1
 5932 006a 9340     		lsls	r3, r3, r2
 5933 006c 013B     		subs	r3, r3, #1
 5934 006e 0022     		movs	r2, #0
 5935 0070 C4F87034 		str	r3, [r4, #1136]
 5936 0074 C4F87424 		str	r2, [r4, #1140]
 5937 0078 EEE7     		b	.L1120
 5938              		.size	_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef, .-_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef
 5939 007a 00BF     		.section	.text._ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef,"ax",%progbits
 5940              		.align	1
 5941              		.p2align 2,,3
 5942              		.global	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef
 5943              		.syntax unified
 5944              		.thumb
 5945              		.thumb_func
 5946              		.fpu fpv4-sp-d16
 5947              		.type	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef, %function
 5948              	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef:
 5949              		@ args = 0, pretend = 0, frame = 48
 5950              		@ frame_needed = 0, uses_anonymous_args = 0
 5951 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 5952 0004 0D46     		mov	r5, r1
 5953 0006 8FB0     		sub	sp, sp, #60
 5954 0008 0646     		mov	r6, r0
 5955 000a 5021     		movs	r1, #80
 5956 000c 2846     		mov	r0, r5
 5957 000e 0292     		str	r2, [sp, #8]
 5958 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5959 0014 0028     		cmp	r0, #0
 5960 0016 40F09480 		bne	.L1188
 5961 001a 844B     		ldr	r3, .L1194
 5962 001c D3F83090 		ldr	r9, [r3, #48]
 5963 0020 B9F1000F 		cmp	r9, #0
 5964 0024 00F0D080 		beq	.L1189
 5965              	.L1135:
 5966 0028 D6F89C32 		ldr	r3, [r6, #668]
 5967 002c 83B3     		cbz	r3, .L1137
 5968 002e 6FF48B67 		mvn	r7, #1112
 5969 0032 BF1B     		subs	r7, r7, r6
 5970 0034 06F25944 		addw	r4, r6, #1113
 5971 0038 4FF0000A 		mov	r10, #0
 5972              	.L1140:
 5973 003c 04EB0708 		add	r8, r4, r7
 5974 0040 2846     		mov	r0, r5
 5975 0042 14F8011F 		ldrb	r1, [r4, #1]!	@ zero_extendqisi2
 5976 0046 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5977 004a 8346     		mov	fp, r0
 5978 004c B8B1     		cbz	r0, .L1138
 5979 004e F26D     		ldr	r2, [r6, #92]
 5980 0050 9542     		cmp	r5, r2
 5981 0052 2846     		mov	r0, r5
 5982 0054 08D0     		beq	.L1139
 5983 0056 002A     		cmp	r2, #0
 5984 0058 40F08780 		bne	.L1153
 5985 005c F565     		str	r5, [r6, #92]
ARM GAS  /tmp/ccJRi9N9.s 			page 106


 5986 005e A968     		ldr	r1, [r5, #8]
 5987 0060 CA68     		ldr	r2, [r1, #12]
 5988 0062 42F00102 		orr	r2, r2, #1
 5989 0066 CA60     		str	r2, [r1, #12]
 5990              	.L1139:
 5991 0068 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5992 006c AA68     		ldr	r2, [r5, #8]
 5993 006e 127E     		ldrb	r2, [r2, #24]	@ zero_extendqisi2
 5994 0070 4146     		mov	r1, r8
 5995 0072 C2F30012 		ubfx	r2, r2, #4, #1
 5996 0076 4846     		mov	r0, r9
 5997 0078 FFF7FEFF 		bl	_ZN4Tool9SetOffsetEjfb
 5998 007c DA46     		mov	r10, fp
 5999              	.L1138:
 6000 007e D6F89C22 		ldr	r2, [r6, #668]
 6001 0082 E319     		adds	r3, r4, r7
 6002 0084 9A42     		cmp	r2, r3
 6003 0086 D9D8     		bhi	.L1140
 6004 0088 BAF1000F 		cmp	r10, #0
 6005 008c 40F08980 		bne	.L1190
 6006              	.L1137:
 6007 0090 D9F89830 		ldr	r3, [r9, #152]
 6008 0094 0593     		str	r3, [sp, #20]
 6009 0096 002B     		cmp	r3, #0
 6010 0098 6BD1     		bne	.L1191
 6011              	.L1152:
 6012 009a D9F89C20 		ldr	r2, [r9, #156]
 6013 009e 6449     		ldr	r1, .L1194+4
 6014 00a0 0298     		ldr	r0, [sp, #8]
 6015 00a2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6016 00a6 D6F89C32 		ldr	r3, [r6, #668]
 6017 00aa D3B1     		cbz	r3, .L1149
 6018 00ac 614F     		ldr	r7, .L1194+8
 6019 00ae 06F25944 		addw	r4, r6, #1113
 6020 00b2 09F10C05 		add	r5, r9, #12
 6021              	.L1150:
 6022 00b6 55F8040B 		ldr	r0, [r5], #4	@ float
 6023 00ba 94F80180 		ldrb	r8, [r4, #1]	@ zero_extendqisi2
 6024 00be FFF7FEFF 		bl	__aeabi_f2d
 6025 00c2 4246     		mov	r2, r8
 6026 00c4 CDE90001 		strd	r0, [sp]
 6027 00c8 3946     		mov	r1, r7
 6028 00ca 0298     		ldr	r0, [sp, #8]
 6029 00cc FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6030 00d0 A4F58B63 		sub	r3, r4, #1112
 6031 00d4 D6F89C22 		ldr	r2, [r6, #668]
 6032 00d8 9B1B     		subs	r3, r3, r6
 6033 00da 9A42     		cmp	r2, r3
 6034 00dc 04F10104 		add	r4, r4, #1
 6035 00e0 E9D8     		bhi	.L1150
 6036              	.L1149:
 6037 00e2 059B     		ldr	r3, [sp, #20]
 6038 00e4 002B     		cmp	r3, #0
 6039 00e6 58D0     		beq	.L1147
 6040 00e8 5349     		ldr	r1, .L1194+12
 6041 00ea 0298     		ldr	r0, [sp, #8]
 6042 00ec FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
ARM GAS  /tmp/ccJRi9N9.s 			page 107


 6043 00f0 059B     		ldr	r3, [sp, #20]
 6044 00f2 002B     		cmp	r3, #0
 6045 00f4 51D0     		beq	.L1147
 6046 00f6 514D     		ldr	r5, .L1194+16
 6047 00f8 0024     		movs	r4, #0
 6048              	.L1151:
 6049 00fa 2146     		mov	r1, r4
 6050 00fc 4846     		mov	r0, r9
 6051 00fe FFF7FEFF 		bl	_ZNK4Tool30GetToolHeaterActiveTemperatureEj
 6052 0102 2146     		mov	r1, r4
 6053 0104 4846     		mov	r0, r9
 6054 0106 10EE106A 		vmov	r6, s0
 6055 010a FFF7FEFF 		bl	_ZNK4Tool31GetToolHeaterStandbyTemperatureEj
 6056 010e 3046     		mov	r0, r6	@ float
 6057 0110 8DED030A 		vstr.32	s0, [sp, #12]	@ int
 6058 0114 FFF7FEFF 		bl	__aeabi_f2d
 6059 0118 9DED030A 		vldr.32	s0, [sp, #12]	@ int
 6060 011c 0646     		mov	r6, r0
 6061 011e 10EE100A 		vmov	r0, s0
 6062 0122 0F46     		mov	r7, r1
 6063 0124 FFF7FEFF 		bl	__aeabi_f2d
 6064 0128 3B46     		mov	r3, r7
 6065 012a CDE90001 		strd	r0, [sp]
 6066 012e 3246     		mov	r2, r6
 6067 0130 2946     		mov	r1, r5
 6068 0132 0298     		ldr	r0, [sp, #8]
 6069 0134 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6070 0138 059B     		ldr	r3, [sp, #20]
 6071 013a 0134     		adds	r4, r4, #1
 6072 013c A342     		cmp	r3, r4
 6073 013e DCD8     		bhi	.L1151
 6074 0140 2BE0     		b	.L1147
 6075              	.L1188:
 6076 0142 2846     		mov	r0, r5
 6077 0144 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6078 0148 2C6B     		ldr	r4, [r5, #48]
 6079 014a 0444     		add	r4, r4, r0
 6080 014c 2146     		mov	r1, r4
 6081 014e 3748     		ldr	r0, .L1194
 6082 0150 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 6083 0154 8146     		mov	r9, r0
 6084 0156 0028     		cmp	r0, #0
 6085 0158 7FF466AF 		bne	.L1135
 6086 015c 2246     		mov	r2, r4
 6087 015e 0298     		ldr	r0, [sp, #8]
 6088 0160 3749     		ldr	r1, .L1194+20
 6089 0162 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6090 0166 0220     		movs	r0, #2
 6091 0168 00E0     		b	.L1186
 6092              	.L1153:
 6093 016a 0020     		movs	r0, #0
 6094              	.L1186:
 6095 016c 0FB0     		add	sp, sp, #60
 6096              		@ sp needed
 6097 016e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6098              	.L1191:
 6099 0172 4FF0000A 		mov	r10, #0
ARM GAS  /tmp/ccJRi9N9.s 			page 108


 6100              	.L1141:
 6101 0176 5221     		movs	r1, #82
 6102 0178 2846     		mov	r0, r5
 6103 017a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6104 017e 0746     		mov	r7, r0
 6105 0180 18B1     		cbz	r0, .L1142
 6106 0182 96F85845 		ldrb	r4, [r6, #1368]	@ zero_extendqisi2
 6107 0186 002C     		cmp	r4, #0
 6108 0188 39D0     		beq	.L1192
 6109              	.L1142:
 6110 018a 5321     		movs	r1, #83
 6111 018c 2846     		mov	r0, r5
 6112 018e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6113 0192 98B1     		cbz	r0, .L1145
 6114 0194 96F85845 		ldrb	r4, [r6, #1368]	@ zero_extendqisi2
 6115 0198 E4B1     		cbz	r4, .L1193
 6116              	.L1147:
 6117 019a 0120     		movs	r0, #1
 6118 019c 0FB0     		add	sp, sp, #60
 6119              		@ sp needed
 6120 019e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6121              	.L1190:
 6122 01a2 06F1B402 		add	r2, r6, #180
 6123 01a6 06F1DC01 		add	r1, r6, #220
 6124 01aa 3046     		mov	r0, r6
 6125 01ac FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 6126 01b0 D9F89830 		ldr	r3, [r9, #152]
 6127 01b4 0593     		str	r3, [sp, #20]
 6128 01b6 002B     		cmp	r3, #0
 6129 01b8 EFD0     		beq	.L1147
 6130 01ba DCE7     		b	.L1141
 6131              	.L1145:
 6132 01bc BAF1000F 		cmp	r10, #0
 6133 01c0 EBD1     		bne	.L1147
 6134 01c2 002F     		cmp	r7, #0
 6135 01c4 E9D1     		bne	.L1147
 6136 01c6 68E7     		b	.L1152
 6137              	.L1189:
 6138 01c8 0298     		ldr	r0, [sp, #8]
 6139 01ca 1E49     		ldr	r1, .L1194+24
 6140 01cc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6141 01d0 0220     		movs	r0, #2
 6142 01d2 CBE7     		b	.L1186
 6143              	.L1193:
 6144 01d4 0123     		movs	r3, #1
 6145 01d6 2846     		mov	r0, r5
 6146 01d8 06A9     		add	r1, sp, #24
 6147 01da 05AA     		add	r2, sp, #20
 6148 01dc FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6149 01e0 059B     		ldr	r3, [sp, #20]
 6150 01e2 002B     		cmp	r3, #0
 6151 01e4 D9D0     		beq	.L1147
 6152 01e6 06AD     		add	r5, sp, #24
 6153              	.L1148:
 6154 01e8 2146     		mov	r1, r4
 6155 01ea B5EC010A 		vldmia.32	r5!, {s0}
 6156 01ee 4846     		mov	r0, r9
ARM GAS  /tmp/ccJRi9N9.s 			page 109


 6157 01f0 FFF7FEFF 		bl	_ZN4Tool30SetToolHeaterActiveTemperatureEjf
 6158 01f4 059B     		ldr	r3, [sp, #20]
 6159 01f6 0134     		adds	r4, r4, #1
 6160 01f8 A342     		cmp	r3, r4
 6161 01fa F5D8     		bhi	.L1148
 6162 01fc CDE7     		b	.L1147
 6163              	.L1192:
 6164 01fe 0123     		movs	r3, #1
 6165 0200 06A9     		add	r1, sp, #24
 6166 0202 05AA     		add	r2, sp, #20
 6167 0204 2846     		mov	r0, r5
 6168 0206 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6169 020a 059B     		ldr	r3, [sp, #20]
 6170 020c 002B     		cmp	r3, #0
 6171 020e BCD0     		beq	.L1142
 6172 0210 0DF11808 		add	r8, sp, #24
 6173              	.L1144:
 6174 0214 2146     		mov	r1, r4
 6175 0216 B8EC010A 		vldmia.32	r8!, {s0}
 6176 021a 4846     		mov	r0, r9
 6177 021c FFF7FEFF 		bl	_ZN4Tool31SetToolHeaterStandbyTemperatureEjf
 6178 0220 059B     		ldr	r3, [sp, #20]
 6179 0222 0134     		adds	r4, r4, #1
 6180 0224 A342     		cmp	r3, r4
 6181 0226 F5D8     		bhi	.L1144
 6182 0228 AFE7     		b	.L1142
 6183              	.L1195:
 6184 022a 00BF     		.align	2
 6185              	.L1194:
 6186 022c 00000000 		.word	reprap
 6187 0230 90000000 		.word	.LC111
 6188 0234 34010000 		.word	.LC31
 6189 0238 A4000000 		.word	.LC112
 6190 023c C8000000 		.word	.LC113
 6191 0240 00000000 		.word	.LC109
 6192 0244 4C000000 		.word	.LC110
 6193              		.size	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef, .-_ZN6GCodes18SetOrReportOffsetsE
 6194              		.section	.text._ZN6GCodes16DoEmergencyPauseEv,"ax",%progbits
 6195              		.align	1
 6196              		.p2align 2,,3
 6197              		.global	_ZN6GCodes16DoEmergencyPauseEv
 6198              		.syntax unified
 6199              		.thumb
 6200              		.thumb_func
 6201              		.fpu fpv4-sp-d16
 6202              		.type	_ZN6GCodes16DoEmergencyPauseEv, %function
 6203              	_ZN6GCodes16DoEmergencyPauseEv:
 6204              		@ args = 0, pretend = 0, frame = 0
 6205              		@ frame_needed = 0, uses_anonymous_args = 0
 6206 0000 436D     		ldr	r3, [r0, #84]
 6207 0002 1968     		ldr	r1, [r3]
 6208 0004 8B68     		ldr	r3, [r1, #8]
 6209 0006 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 6210 0008 002B     		cmp	r3, #0
 6211 000a 40F09780 		bne	.L1208
 6212 000e 91F82820 		ldrb	r2, [r1, #40]	@ zero_extendqisi2
 6213 0012 083A     		subs	r2, r2, #8
ARM GAS  /tmp/ccJRi9N9.s 			page 110


 6214 0014 012A     		cmp	r2, #1
 6215 0016 40F29180 		bls	.L1208
 6216 001a 70B5     		push	{r4, r5, r6, lr}
 6217 001c C36D     		ldr	r3, [r0, #92]
 6218 001e 9942     		cmp	r1, r3
 6219 0020 09D0     		beq	.L1198
 6220 0022 3BB1     		cbz	r3, .L1199
 6221 0024 9B68     		ldr	r3, [r3, #8]
 6222              	.L1200:
 6223 0026 DA68     		ldr	r2, [r3, #12]
 6224 0028 22F00102 		bic	r2, r2, #1
 6225 002c DA60     		str	r2, [r3, #12]
 6226 002e 1B68     		ldr	r3, [r3]
 6227 0030 002B     		cmp	r3, #0
 6228 0032 F8D1     		bne	.L1200
 6229              	.L1199:
 6230 0034 C165     		str	r1, [r0, #92]
 6231              	.L1198:
 6232 0036 624B     		ldr	r3, .L1231
 6233 0038 D0F89012 		ldr	r1, [r0, #656]
 6234 003c 0446     		mov	r4, r0
 6235 003e 9868     		ldr	r0, [r3, #8]
 6236 0040 FFF7FEFF 		bl	_ZN4Move13LowPowerPauseER12RestorePoint
 6237 0044 0546     		mov	r5, r0
 6238 0046 0028     		cmp	r0, #0
 6239 0048 40F09D80 		bne	.L1230
 6240 004c D4F85031 		ldr	r3, [r4, #336]
 6241 0050 002B     		cmp	r3, #0
 6242 0052 75D0     		beq	.L1204
 6243 0054 D4F83831 		ldr	r3, [r4, #312]
 6244 0058 0133     		adds	r3, r3, #1
 6245 005a 71D0     		beq	.L1204
 6246 005c 04F1B402 		add	r2, r4, #180
 6247 0060 04F58671 		add	r1, r4, #268
 6248 0064 2046     		mov	r0, r4
 6249 0066 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 6250 006a D4F89032 		ldr	r3, [r4, #656]
 6251 006e D4F83011 		ldr	r1, [r4, #304]	@ float
 6252 0072 5962     		str	r1, [r3, #36]	@ float
 6253 0074 D4F89032 		ldr	r3, [r4, #656]
 6254 0078 D4F83411 		ldr	r1, [r4, #308]	@ float
 6255 007c 9962     		str	r1, [r3, #40]	@ float
 6256 007e D4F89032 		ldr	r3, [r4, #656]
 6257 0082 D4F83811 		ldr	r1, [r4, #312]
 6258 0086 1963     		str	r1, [r3, #48]
 6259 0088 D4F85031 		ldr	r3, [r4, #336]
 6260 008c D4F85401 		ldr	r0, [r4, #340]
 6261 0090 D4F89012 		ldr	r1, [r4, #656]
 6262 0094 C31A     		subs	r3, r0, r3
 6263 0096 07EE903A 		vmov	s15, r3	@ int
 6264 009a 07EE100A 		vmov	s14, r0	@ int
 6265 009e F8EE677A 		vcvt.f32.u32	s15, s15
 6266 00a2 B8EE477A 		vcvt.f32.u32	s14, s14
 6267 00a6 0022     		movs	r2, #0
 6268 00a8 C7EE876A 		vdiv.f32	s13, s15, s14
 6269 00ac C1ED0B6A 		vstr.32	s13, [r1, #44]
 6270 00b0 D4F89032 		ldr	r3, [r4, #656]
ARM GAS  /tmp/ccJRi9N9.s 			page 111


 6271 00b4 B4F84C11 		ldrh	r1, [r4, #332]
 6272 00b8 9986     		strh	r1, [r3, #52]	@ movhi
 6273 00ba 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 6274 00be C4F85051 		str	r5, [r4, #336]
 6275 00c2 65F30003 		bfi	r3, r5, #0, #1
 6276 00c6 84F89951 		strb	r5, [r4, #409]
 6277 00ca 84F89851 		strb	r5, [r4, #408]
 6278 00ce C4F84851 		str	r5, [r4, #328]
 6279 00d2 84F84E51 		strb	r5, [r4, #334]
 6280 00d6 84F84F31 		strb	r3, [r4, #335]
 6281 00da C4F86021 		str	r2, [r4, #352]	@ float
 6282              	.L1205:
 6283 00de D4F89C32 		ldr	r3, [r4, #668]
 6284 00e2 73B1     		cbz	r3, .L1202
 6285 00e4 04F1B401 		add	r1, r4, #180
 6286 00e8 0023     		movs	r3, #0
 6287              	.L1206:
 6288 00ea D4F89022 		ldr	r2, [r4, #656]
 6289 00ee 51F8040B 		ldr	r0, [r1], #4	@ float
 6290 00f2 02EB8302 		add	r2, r2, r3, lsl #2
 6291 00f6 0133     		adds	r3, r3, #1
 6292 00f8 1060     		str	r0, [r2]	@ float
 6293 00fa D4F89C22 		ldr	r2, [r4, #668]
 6294 00fe 9A42     		cmp	r2, r3
 6295 0100 F3D8     		bhi	.L1206
 6296              	.L1202:
 6297 0102 04F58F66 		add	r6, r4, #1144
 6298 0106 0025     		movs	r5, #0
 6299              	.L1207:
 6300 0108 2946     		mov	r1, r5
 6301 010a 2068     		ldr	r0, [r4]
 6302 010c FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 6303 0110 0135     		adds	r5, r5, #1
 6304 0112 092D     		cmp	r5, #9
 6305 0114 A6EC010A 		vstmia.32	r6!, {s0}
 6306 0118 F6D1     		bne	.L1207
 6307 011a 04F29C43 		addw	r3, r4, #1180
 6308 011e 2848     		ldr	r0, .L1231
 6309 0120 1A68     		ldr	r2, [r3]	@ float
 6310 0122 04F59463 		add	r3, r4, #1184
 6311 0126 1A60     		str	r2, [r3]	@ float
 6312 0128 D4F89052 		ldr	r5, [r4, #656]
 6313 012c FFF7FEFF 		bl	_ZNK6RepRap20GetCurrentToolNumberEv
 6314 0130 0123     		movs	r3, #1
 6315 0132 A863     		str	r0, [r5, #56]
 6316 0134 84F8AA30 		strb	r3, [r4, #170]
 6317 0138 1846     		mov	r0, r3
 6318 013a 70BD     		pop	{r4, r5, r6, pc}
 6319              	.L1208:
 6320 013c 0020     		movs	r0, #0
 6321 013e 7047     		bx	lr
 6322              	.L1204:
 6323 0140 226C     		ldr	r2, [r4, #64]
 6324 0142 D4F89032 		ldr	r3, [r4, #656]
 6325 0146 1268     		ldr	r2, [r2]
 6326 0148 9268     		ldr	r2, [r2, #8]
 6327 014a 5268     		ldr	r2, [r2, #4]	@ float
ARM GAS  /tmp/ccJRi9N9.s 			page 112


 6328 014c 5A62     		str	r2, [r3, #36]	@ float
 6329 014e D4F89032 		ldr	r3, [r4, #656]
 6330 0152 D4F8C822 		ldr	r2, [r4, #712]	@ float
 6331 0156 9A62     		str	r2, [r3, #40]	@ float
 6332 0158 E068     		ldr	r0, [r4, #12]
 6333 015a 226C     		ldr	r2, [r4, #64]
 6334 015c 0368     		ldr	r3, [r0]
 6335 015e 1568     		ldr	r5, [r2]
 6336 0160 9B68     		ldr	r3, [r3, #8]
 6337 0162 9847     		blx	r3
 6338 0164 0146     		mov	r1, r0
 6339 0166 2846     		mov	r0, r5
 6340 0168 D4F89052 		ldr	r5, [r4, #656]
 6341 016c FFF7FEFF 		bl	_ZNK11GCodeBuffer15GetFilePositionEj
 6342 0170 2863     		str	r0, [r5, #48]
 6343 0172 D4F89032 		ldr	r3, [r4, #656]
 6344 0176 0022     		movs	r2, #0
 6345 0178 DA62     		str	r2, [r3, #44]	@ float
 6346 017a D4F89032 		ldr	r3, [r4, #656]
 6347 017e B4F84C21 		ldrh	r2, [r4, #332]
 6348 0182 9A86     		strh	r2, [r3, #52]	@ movhi
 6349 0184 ABE7     		b	.L1205
 6350              	.L1230:
 6351 0186 04F1B402 		add	r2, r4, #180
 6352 018a D4F89012 		ldr	r1, [r4, #656]
 6353 018e 2046     		mov	r0, r4
 6354 0190 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 6355 0194 94F84F21 		ldrb	r2, [r4, #335]	@ zero_extendqisi2
 6356 0198 0023     		movs	r3, #0
 6357 019a 0021     		movs	r1, #0
 6358 019c 63F30002 		bfi	r2, r3, #0, #1
 6359 01a0 84F84F21 		strb	r2, [r4, #335]
 6360 01a4 C4F85031 		str	r3, [r4, #336]
 6361 01a8 84F89931 		strb	r3, [r4, #409]
 6362 01ac 84F89831 		strb	r3, [r4, #408]
 6363 01b0 C4F84831 		str	r3, [r4, #328]
 6364 01b4 84F84E31 		strb	r3, [r4, #334]
 6365 01b8 C4F86011 		str	r1, [r4, #352]	@ float
 6366 01bc 8FE7     		b	.L1205
 6367              	.L1232:
 6368 01be 00BF     		.align	2
 6369              	.L1231:
 6370 01c0 00000000 		.word	reprap
 6371              		.size	_ZN6GCodes16DoEmergencyPauseEv, .-_ZN6GCodes16DoEmergencyPauseEv
 6372              		.section	.text._ZN6GCodes15LowVoltagePauseEv,"ax",%progbits
 6373              		.align	1
 6374              		.p2align 2,,3
 6375              		.global	_ZN6GCodes15LowVoltagePauseEv
 6376              		.syntax unified
 6377              		.thumb
 6378              		.thumb_func
 6379              		.fpu fpv4-sp-d16
 6380              		.type	_ZN6GCodes15LowVoltagePauseEv, %function
 6381              	_ZN6GCodes15LowVoltagePauseEv:
 6382              		@ args = 0, pretend = 0, frame = 0
 6383              		@ frame_needed = 0, uses_anonymous_args = 0
 6384 0000 38B5     		push	{r3, r4, r5, lr}
ARM GAS  /tmp/ccJRi9N9.s 			page 113


 6385 0002 90F85835 		ldrb	r3, [r0, #1368]	@ zero_extendqisi2
 6386 0006 13B1     		cbz	r3, .L1234
 6387              	.L1237:
 6388 0008 0125     		movs	r5, #1
 6389              	.L1235:
 6390 000a 2846     		mov	r0, r5
 6391 000c 38BD     		pop	{r3, r4, r5, pc}
 6392              	.L1234:
 6393 000e 1A4D     		ldr	r5, .L1250
 6394 0010 0446     		mov	r4, r0
 6395 0012 0121     		movs	r1, #1
 6396 0014 E868     		ldr	r0, [r5, #12]
 6397 0016 FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 6398 001a 236C     		ldr	r3, [r4, #64]
 6399 001c 1868     		ldr	r0, [r3]
 6400 001e FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 6401 0022 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 6402 0024 113B     		subs	r3, r3, #17
 6403 0026 022B     		cmp	r3, #2
 6404 0028 02D8     		bhi	.L1236
 6405              	.L1238:
 6406 002a 0025     		movs	r5, #0
 6407 002c 2846     		mov	r0, r5
 6408 002e 38BD     		pop	{r3, r4, r5, pc}
 6409              	.L1236:
 6410 0030 2046     		mov	r0, r4
 6411 0032 FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
 6412 0036 0028     		cmp	r0, #0
 6413 0038 E6D1     		bne	.L1237
 6414 003a 2046     		mov	r0, r4
 6415 003c FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 6416 0040 0028     		cmp	r0, #0
 6417 0042 E1D1     		bne	.L1237
 6418 0044 EB69     		ldr	r3, [r5, #28]
 6419 0046 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 6420 0048 002B     		cmp	r3, #0
 6421 004a DDD0     		beq	.L1237
 6422 004c 2046     		mov	r0, r4
 6423 004e FFF7FEFF 		bl	_ZN6GCodes16DoEmergencyPauseEv
 6424 0052 0546     		mov	r5, r0
 6425 0054 0028     		cmp	r0, #0
 6426 0056 E8D0     		beq	.L1238
 6427 0058 636D     		ldr	r3, [r4, #84]
 6428 005a D4F8B010 		ldr	r1, [r4, #176]
 6429 005e 1868     		ldr	r0, [r3]
 6430 0060 19B1     		cbz	r1, .L1239
 6431 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKc
 6432 0066 636D     		ldr	r3, [r4, #84]
 6433 0068 1868     		ldr	r0, [r3]
 6434              	.L1239:
 6435 006a 8268     		ldr	r2, [r0, #8]
 6436 006c 2F21     		movs	r1, #47
 6437 006e 0123     		movs	r3, #1
 6438 0070 1175     		strb	r1, [r2, #20]
 6439 0072 84F8AE30 		strb	r3, [r4, #174]
 6440 0076 C8E7     		b	.L1235
 6441              	.L1251:
ARM GAS  /tmp/ccJRi9N9.s 			page 114


 6442              		.align	2
 6443              	.L1250:
 6444 0078 00000000 		.word	reprap
 6445              		.size	_ZN6GCodes15LowVoltagePauseEv, .-_ZN6GCodes15LowVoltagePauseEv
 6446              		.section	.text._ZN6GCodes13ReHomeOnStallEm,"ax",%progbits
 6447              		.align	1
 6448              		.p2align 2,,3
 6449              		.global	_ZN6GCodes13ReHomeOnStallEm
 6450              		.syntax unified
 6451              		.thumb
 6452              		.thumb_func
 6453              		.fpu fpv4-sp-d16
 6454              		.type	_ZN6GCodes13ReHomeOnStallEm, %function
 6455              	_ZN6GCodes13ReHomeOnStallEm:
 6456              		@ args = 0, pretend = 0, frame = 0
 6457              		@ frame_needed = 0, uses_anonymous_args = 0
 6458 0000 30B5     		push	{r4, r5, lr}
 6459 0002 114B     		ldr	r3, .L1263
 6460 0004 DB69     		ldr	r3, [r3, #28]
 6461 0006 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 6462 0008 83B0     		sub	sp, sp, #12
 6463 000a 1BB9     		cbnz	r3, .L1253
 6464              	.L1255:
 6465 000c 0124     		movs	r4, #1
 6466              	.L1254:
 6467 000e 2046     		mov	r0, r4
 6468 0010 03B0     		add	sp, sp, #12
 6469              		@ sp needed
 6470 0012 30BD     		pop	{r4, r5, pc}
 6471              	.L1253:
 6472 0014 0546     		mov	r5, r0
 6473 0016 FFF7FEFF 		bl	_ZNK6GCodes16IsReallyPrintingEv.part.56
 6474 001a 0028     		cmp	r0, #0
 6475 001c F6D0     		beq	.L1255
 6476 001e 2846     		mov	r0, r5
 6477 0020 FFF7FEFF 		bl	_ZN6GCodes16DoEmergencyPauseEv
 6478 0024 0446     		mov	r4, r0
 6479 0026 0028     		cmp	r0, #0
 6480 0028 F1D0     		beq	.L1254
 6481 002a 6B6D     		ldr	r3, [r5, #84]
 6482 002c 074A     		ldr	r2, .L1263+4
 6483 002e 1B68     		ldr	r3, [r3]
 6484 0030 9B68     		ldr	r3, [r3, #8]
 6485 0032 1121     		movs	r1, #17
 6486 0034 1975     		strb	r1, [r3, #20]
 6487 0036 6B6D     		ldr	r3, [r5, #84]
 6488 0038 1968     		ldr	r1, [r3]
 6489 003a 0023     		movs	r3, #0
 6490 003c 0093     		str	r3, [sp]
 6491 003e 2846     		mov	r0, r5
 6492 0040 0123     		movs	r3, #1
 6493 0042 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 6494 0046 E2E7     		b	.L1254
 6495              	.L1264:
 6496              		.align	2
 6497              	.L1263:
 6498 0048 00000000 		.word	reprap
ARM GAS  /tmp/ccJRi9N9.s 			page 115


 6499 004c 00000000 		.word	.LC114
 6500              		.size	_ZN6GCodes13ReHomeOnStallEm, .-_ZN6GCodes13ReHomeOnStallEm
 6501              		.section	.text._ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef,"ax",%progbits
 6502              		.align	1
 6503              		.p2align 2,,3
 6504              		.global	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef
 6505              		.syntax unified
 6506              		.thumb
 6507              		.thumb_func
 6508              		.fpu fpv4-sp-d16
 6509              		.type	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef, %function
 6510              	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef:
 6511              		@ args = 0, pretend = 0, frame = 136
 6512              		@ frame_needed = 0, uses_anonymous_args = 0
 6513 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 6514 0004 0C46     		mov	r4, r1
 6515 0006 A5B0     		sub	sp, sp, #148
 6516 0008 1646     		mov	r6, r2
 6517 000a 8046     		mov	r8, r0
 6518 000c FFF7FEFF 		bl	_ZN6GCodes15ClearBedMappingEv
 6519 0010 2046     		mov	r0, r4
 6520 0012 0024     		movs	r4, #0
 6521 0014 0DF10B03 		add	r3, sp, #11
 6522 0018 8DF81440 		strb	r4, [sp, #20]
 6523 001c 8DF80B40 		strb	r4, [sp, #11]
 6524 0020 7925     		movs	r5, #121
 6525 0022 03AA     		add	r2, sp, #12
 6526 0024 5021     		movs	r1, #80
 6527 0026 05AC     		add	r4, sp, #20
 6528 0028 CDE90345 		strd	r4, r5, [sp, #12]
 6529 002c FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 6530 0030 9DF80B30 		ldrb	r3, [sp, #11]	@ zero_extendqisi2
 6531 0034 2BB3     		cbz	r3, .L1271
 6532              	.L1266:
 6533 0036 D8F80030 		ldr	r3, [r8]
 6534 003a 2949     		ldr	r1, .L1274
 6535 003c D3F8B409 		ldr	r0, [r3, #2484]
 6536 0040 05AA     		add	r2, sp, #20
 6537 0042 0023     		movs	r3, #0
 6538 0044 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 6539 0048 0446     		mov	r4, r0
 6540 004a 0028     		cmp	r0, #0
 6541 004c 3ED0     		beq	.L1272
 6542 004e 254D     		ldr	r5, .L1274+4
 6543 0050 2549     		ldr	r1, .L1274+8
 6544 0052 05AA     		add	r2, sp, #20
 6545 0054 3046     		mov	r0, r6
 6546 0056 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6547 005a 2146     		mov	r1, r4
 6548 005c 3246     		mov	r2, r6
 6549 005e A868     		ldr	r0, [r5, #8]
 6550 0060 FFF7FEFF 		bl	_ZN4Move21LoadHeightMapFromFileEP9FileStoreRK9StringRef
 6551 0064 0746     		mov	r7, r0
 6552 0066 2046     		mov	r0, r4
 6553 0068 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6554 006c 87F00101 		eor	r1, r7, #1
 6555 0070 C9B2     		uxtb	r1, r1
ARM GAS  /tmp/ccJRi9N9.s 			page 116


 6556 0072 A868     		ldr	r0, [r5, #8]
 6557 0074 FFF7FEFF 		bl	_ZN4Move7UseMeshEb
 6558 0078 5FB1     		cbz	r7, .L1273
 6559 007a 0220     		movs	r0, #2
 6560 007c 25B0     		add	sp, sp, #148
 6561              		@ sp needed
 6562 007e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 6563              	.L1271:
 6564 0082 05AB     		add	r3, sp, #20
 6565 0084 03A8     		add	r0, sp, #12
 6566 0086 1949     		ldr	r1, .L1274+12
 6567 0088 CDE90335 		strd	r3, r5, [sp, #12]
 6568 008c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6569 0090 D1E7     		b	.L1266
 6570              	.L1273:
 6571 0092 3368     		ldr	r3, [r6]
 6572 0094 2846     		mov	r0, r5
 6573 0096 1F70     		strb	r7, [r3]
 6574 0098 AE68     		ldr	r6, [r5, #8]
 6575 009a FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 6576 009e 8146     		mov	r9, r0
 6577 00a0 2846     		mov	r0, r5
 6578 00a2 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 6579 00a6 08F1DC04 		add	r4, r8, #220
 6580 00aa 0090     		str	r0, [sp]
 6581 00ac 4B46     		mov	r3, r9
 6582 00ae 3046     		mov	r0, r6
 6583 00b0 3A46     		mov	r2, r7
 6584 00b2 2146     		mov	r1, r4
 6585 00b4 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 6586 00b8 4046     		mov	r0, r8
 6587 00ba 2146     		mov	r1, r4
 6588 00bc 08F1B402 		add	r2, r8, #180
 6589 00c0 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 6590 00c4 0120     		movs	r0, #1
 6591 00c6 25B0     		add	sp, sp, #148
 6592              		@ sp needed
 6593 00c8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 6594              	.L1272:
 6595 00cc 05AA     		add	r2, sp, #20
 6596 00ce 3046     		mov	r0, r6
 6597 00d0 0749     		ldr	r1, .L1274+16
 6598 00d2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6599 00d6 0220     		movs	r0, #2
 6600 00d8 25B0     		add	sp, sp, #148
 6601              		@ sp needed
 6602 00da BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 6603              	.L1275:
 6604 00de 00BF     		.align	2
 6605              	.L1274:
 6606 00e0 34000000 		.word	.LC17
 6607 00e4 00000000 		.word	reprap
 6608 00e8 20000000 		.word	.LC116
 6609 00ec 00000000 		.word	.LC50
 6610 00f0 00000000 		.word	.LC115
 6611              		.size	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef, .-_ZN6GCodes13LoadHeightMapER11GCodeBu
 6612              		.section	.text._ZN6GCodes22TranslateEndStopResultE10EndStopHit,"ax",%progbits
ARM GAS  /tmp/ccJRi9N9.s 			page 117


 6613              		.align	1
 6614              		.p2align 2,,3
 6615              		.global	_ZN6GCodes22TranslateEndStopResultE10EndStopHit
 6616              		.syntax unified
 6617              		.thumb
 6618              		.thumb_func
 6619              		.fpu fpv4-sp-d16
 6620              		.type	_ZN6GCodes22TranslateEndStopResultE10EndStopHit, %function
 6621              	_ZN6GCodes22TranslateEndStopResultE10EndStopHit:
 6622              		@ args = 0, pretend = 0, frame = 0
 6623              		@ frame_needed = 0, uses_anonymous_args = 0
 6624              		@ link register save eliminated.
 6625 0000 0139     		subs	r1, r1, #1
 6626 0002 0229     		cmp	r1, #2
 6627 0004 9ABF     		itte	ls
 6628 0006 024B     		ldrls	r3, .L1279
 6629 0008 53F82100 		ldrls	r0, [r3, r1, lsl #2]
 6630 000c 0148     		ldrhi	r0, .L1279+4
 6631 000e 7047     		bx	lr
 6632              	.L1280:
 6633              		.align	2
 6634              	.L1279:
 6635 0010 00000000 		.word	.LANCHOR1
 6636 0014 00000000 		.word	.LC117
 6637              		.size	_ZN6GCodes22TranslateEndStopResultE10EndStopHit, .-_ZN6GCodes22TranslateEndStopResultE10EndS
 6638              		.section	.text._ZN6GCodes12ListTriggersERK9StringRefm,"ax",%progbits
 6639              		.align	1
 6640              		.p2align 2,,3
 6641              		.global	_ZN6GCodes12ListTriggersERK9StringRefm
 6642              		.syntax unified
 6643              		.thumb
 6644              		.thumb_func
 6645              		.fpu fpv4-sp-d16
 6646              		.type	_ZN6GCodes12ListTriggersERK9StringRefm, %function
 6647              	_ZN6GCodes12ListTriggersERK9StringRefm:
 6648              		@ args = 0, pretend = 0, frame = 0
 6649              		@ frame_needed = 0, uses_anonymous_args = 0
 6650 0000 BAB3     		cbz	r2, .L1297
 6651 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6652 0006 0024     		movs	r4, #0
 6653 0008 1546     		mov	r5, r2
 6654 000a 0F46     		mov	r7, r1
 6655 000c 0646     		mov	r6, r0
 6656 000e DFF87080 		ldr	r8, .L1301+4
 6657 0012 2246     		mov	r2, r4
 6658 0014 0BE0     		b	.L1282
 6659              	.L1284:
 6660 0016 D6F89C32 		ldr	r3, [r6, #668]
 6661 001a A342     		cmp	r3, r4
 6662 001c 15D8     		bhi	.L1298
 6663              	.L1285:
 6664 001e D6F89822 		ldr	r2, [r6, #664]
 6665 0022 A242     		cmp	r2, r4
 6666 0024 1ED9     		bls	.L1299
 6667 0026 0122     		movs	r2, #1
 6668              	.L1283:
 6669 0028 0134     		adds	r4, r4, #1
ARM GAS  /tmp/ccJRi9N9.s 			page 118


 6670 002a 0C2C     		cmp	r4, #12
 6671 002c 18D0     		beq	.L1300
 6672              	.L1282:
 6673 002e 25FA04F3 		lsr	r3, r5, r4
 6674 0032 DB07     		lsls	r3, r3, #31
 6675 0034 F8D5     		bpl	.L1283
 6676 0036 002A     		cmp	r2, #0
 6677 0038 EDD0     		beq	.L1284
 6678 003a 2021     		movs	r1, #32
 6679 003c 3846     		mov	r0, r7
 6680 003e FFF7FEFF 		bl	_ZNK9StringRef3catEc
 6681 0042 D6F89C32 		ldr	r3, [r6, #668]
 6682 0046 A342     		cmp	r3, r4
 6683 0048 E9D9     		bls	.L1285
 6684              	.L1298:
 6685 004a 3319     		adds	r3, r6, r4
 6686 004c 3846     		mov	r0, r7
 6687 004e 93F85A14 		ldrb	r1, [r3, #1114]	@ zero_extendqisi2
 6688 0052 0134     		adds	r4, r4, #1
 6689 0054 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 6690 0058 0C2C     		cmp	r4, #12
 6691 005a 4FF00102 		mov	r2, #1
 6692 005e E6D1     		bne	.L1282
 6693              	.L1300:
 6694 0060 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6695              	.L1299:
 6696 0064 A21A     		subs	r2, r4, r2
 6697 0066 4146     		mov	r1, r8
 6698 0068 3846     		mov	r0, r7
 6699 006a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6700 006e 0122     		movs	r2, #1
 6701 0070 DAE7     		b	.L1283
 6702              	.L1297:
 6703 0072 0846     		mov	r0, r1
 6704 0074 0149     		ldr	r1, .L1301
 6705 0076 FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 6706              	.L1302:
 6707 007a 00BF     		.align	2
 6708              	.L1301:
 6709 007c 00000000 		.word	.LC118
 6710 0080 08000000 		.word	.LC119
 6711              		.size	_ZN6GCodes12ListTriggersERK9StringRefm, .-_ZN6GCodes12ListTriggersERK9StringRefm
 6712              		.section	.text._ZN6GCodes9StartHashEPKc,"ax",%progbits
 6713              		.align	1
 6714              		.p2align 2,,3
 6715              		.global	_ZN6GCodes9StartHashEPKc
 6716              		.syntax unified
 6717              		.thumb
 6718              		.thumb_func
 6719              		.fpu fpv4-sp-d16
 6720              		.type	_ZN6GCodes9StartHashEPKc, %function
 6721              	_ZN6GCodes9StartHashEPKc:
 6722              		@ args = 0, pretend = 0, frame = 0
 6723              		@ frame_needed = 0, uses_anonymous_args = 0
 6724 0000 10B5     		push	{r4, lr}
 6725 0002 0368     		ldr	r3, [r0]
 6726 0004 0446     		mov	r4, r0
ARM GAS  /tmp/ccJRi9N9.s 			page 119


 6727 0006 0A46     		mov	r2, r1
 6728 0008 D3F8B409 		ldr	r0, [r3, #2484]
 6729 000c 0649     		ldr	r1, .L1307
 6730 000e 0023     		movs	r3, #0
 6731 0010 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 6732 0014 C4F8FC05 		str	r0, [r4, #1532]
 6733 0018 20B1     		cbz	r0, .L1304
 6734 001a 04F5C060 		add	r0, r4, #1536
 6735 001e FFF7FEFF 		bl	SHA1Reset
 6736 0022 0120     		movs	r0, #1
 6737              	.L1304:
 6738 0024 10BD     		pop	{r4, pc}
 6739              	.L1308:
 6740 0026 00BF     		.align	2
 6741              	.L1307:
 6742 0028 00000000 		.word	.LC120
 6743              		.size	_ZN6GCodes9StartHashEPKc, .-_ZN6GCodes9StartHashEPKc
 6744              		.section	.text._ZN6GCodes11AdvanceHashERK9StringRef,"ax",%progbits
 6745              		.align	1
 6746              		.p2align 2,,3
 6747              		.global	_ZN6GCodes11AdvanceHashERK9StringRef
 6748              		.syntax unified
 6749              		.thumb
 6750              		.thumb_func
 6751              		.fpu fpv4-sp-d16
 6752              		.type	_ZN6GCodes11AdvanceHashERK9StringRef, %function
 6753              	_ZN6GCodes11AdvanceHashERK9StringRef:
 6754              		@ args = 0, pretend = 0, frame = 128
 6755              		@ frame_needed = 0, uses_anonymous_args = 0
 6756 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6757 0004 A0B0     		sub	sp, sp, #128
 6758 0006 0546     		mov	r5, r0
 6759 0008 0F46     		mov	r7, r1
 6760 000a D0F8FC05 		ldr	r0, [r0, #1532]
 6761 000e 6946     		mov	r1, sp
 6762 0010 8022     		movs	r2, #128
 6763 0012 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 6764 0016 431C     		adds	r3, r0, #1
 6765 0018 18D0     		beq	.L1310
 6766 001a 0646     		mov	r6, r0
 6767 001c 05F5C064 		add	r4, r5, #1536
 6768 0020 6946     		mov	r1, sp
 6769 0022 2046     		mov	r0, r4
 6770 0024 3246     		mov	r2, r6
 6771 0026 FFF7FEFF 		bl	SHA1Input
 6772 002a 802E     		cmp	r6, #128
 6773 002c 19D0     		beq	.L1313
 6774 002e 2046     		mov	r0, r4
 6775 0030 FFF7FEFF 		bl	SHA1Result
 6776 0034 DFF83480 		ldr	r8, .L1316
 6777 0038 05F21466 		addw	r6, r5, #1556
 6778              	.L1312:
 6779 003c 54F8042B 		ldr	r2, [r4], #4
 6780 0040 4146     		mov	r1, r8
 6781 0042 3846     		mov	r0, r7
 6782 0044 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6783 0048 B442     		cmp	r4, r6
ARM GAS  /tmp/ccJRi9N9.s 			page 120


 6784 004a F7D1     		bne	.L1312
 6785              	.L1310:
 6786 004c D5F8FC05 		ldr	r0, [r5, #1532]
 6787 0050 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6788 0054 0023     		movs	r3, #0
 6789 0056 0120     		movs	r0, #1
 6790 0058 C5F8FC35 		str	r3, [r5, #1532]
 6791 005c 20B0     		add	sp, sp, #128
 6792              		@ sp needed
 6793 005e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6794              	.L1313:
 6795 0062 0020     		movs	r0, #0
 6796 0064 20B0     		add	sp, sp, #128
 6797              		@ sp needed
 6798 0066 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6799              	.L1317:
 6800 006a 00BF     		.align	2
 6801              	.L1316:
 6802 006c 00000000 		.word	.LC121
 6803              		.size	_ZN6GCodes11AdvanceHashERK9StringRef, .-_ZN6GCodes11AdvanceHashERK9StringRef
 6804              		.section	.text._ZNK6GCodes15AllAxesAreHomedEv,"ax",%progbits
 6805              		.align	1
 6806              		.p2align 2,,3
 6807              		.global	_ZNK6GCodes15AllAxesAreHomedEv
 6808              		.syntax unified
 6809              		.thumb
 6810              		.thumb_func
 6811              		.fpu fpv4-sp-d16
 6812              		.type	_ZNK6GCodes15AllAxesAreHomedEv, %function
 6813              	_ZNK6GCodes15AllAxesAreHomedEv:
 6814              		@ args = 0, pretend = 0, frame = 0
 6815              		@ frame_needed = 0, uses_anonymous_args = 0
 6816              		@ link register save eliminated.
 6817 0000 D0F89C12 		ldr	r1, [r0, #668]
 6818 0004 D0F87424 		ldr	r2, [r0, #1140]
 6819 0008 0123     		movs	r3, #1
 6820 000a 8B40     		lsls	r3, r3, r1
 6821 000c 013B     		subs	r3, r3, #1
 6822 000e 9343     		bics	r3, r3, r2
 6823 0010 0CBF     		ite	eq
 6824 0012 0120     		moveq	r0, #1
 6825 0014 0020     		movne	r0, #0
 6826 0016 7047     		bx	lr
 6827              		.size	_ZNK6GCodes15AllAxesAreHomedEv, .-_ZNK6GCodes15AllAxesAreHomedEv
 6828              		.section	.text._ZN6GCodes18SetAllAxesNotHomedEv,"ax",%progbits
 6829              		.align	1
 6830              		.p2align 2,,3
 6831              		.global	_ZN6GCodes18SetAllAxesNotHomedEv
 6832              		.syntax unified
 6833              		.thumb
 6834              		.thumb_func
 6835              		.fpu fpv4-sp-d16
 6836              		.type	_ZN6GCodes18SetAllAxesNotHomedEv, %function
 6837              	_ZN6GCodes18SetAllAxesNotHomedEv:
 6838              		@ args = 0, pretend = 0, frame = 0
 6839              		@ frame_needed = 0, uses_anonymous_args = 0
 6840              		@ link register save eliminated.
ARM GAS  /tmp/ccJRi9N9.s 			page 121


 6841 0000 0023     		movs	r3, #0
 6842 0002 C0F87434 		str	r3, [r0, #1140]
 6843 0006 7047     		bx	lr
 6844              		.size	_ZN6GCodes18SetAllAxesNotHomedEv, .-_ZN6GCodes18SetAllAxesNotHomedEv
 6845              		.section	.text._ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef,"ax",%progbits
 6846              		.align	1
 6847              		.p2align 2,,3
 6848              		.global	_ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef
 6849              		.syntax unified
 6850              		.thumb
 6851              		.thumb_func
 6852              		.fpu fpv4-sp-d16
 6853              		.type	_ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef, %function
 6854              	_ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef:
 6855              		@ args = 0, pretend = 0, frame = 0
 6856              		@ frame_needed = 0, uses_anonymous_args = 0
 6857 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6858 0004 0368     		ldr	r3, [r0]
 6859 0006 0446     		mov	r4, r0
 6860 0008 0F46     		mov	r7, r1
 6861 000a D3F8B409 		ldr	r0, [r3, #2484]
 6862 000e 3749     		ldr	r1, .L1349
 6863 0010 1646     		mov	r6, r2
 6864 0012 0123     		movs	r3, #1
 6865 0014 364A     		ldr	r2, .L1349+4
 6866 0016 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 6867 001a 0028     		cmp	r0, #0
 6868 001c 52D0     		beq	.L1345
 6869 001e 3549     		ldr	r1, .L1349+8
 6870 0020 0546     		mov	r5, r0
 6871 0022 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 6872 0026 90B9     		cbnz	r0, .L1346
 6873              	.L1323:
 6874 0028 2846     		mov	r0, r5
 6875 002a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6876              	.L1328:
 6877 002e 304A     		ldr	r2, .L1349+4
 6878 0030 3149     		ldr	r1, .L1349+12
 6879 0032 3046     		mov	r0, r6
 6880 0034 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6881 0038 2368     		ldr	r3, [r4]
 6882 003a 2D4A     		ldr	r2, .L1349+4
 6883 003c D3F8B409 		ldr	r0, [r3, #2484]
 6884 0040 2A49     		ldr	r1, .L1349
 6885 0042 0023     		movs	r3, #0
 6886 0044 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 6887 0048 0220     		movs	r0, #2
 6888              	.L1343:
 6889 004a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6890              	.L1346:
 6891 004e DFF8B080 		ldr	r8, .L1349+20
 6892 0052 2A4A     		ldr	r2, .L1349+16
 6893 0054 D8F80830 		ldr	r3, [r8, #8]
 6894 0058 D3F8580A 		ldr	r0, [r3, #2648]
 6895 005c 0368     		ldr	r3, [r0]
 6896 005e DB69     		ldr	r3, [r3, #28]
 6897 0060 9342     		cmp	r3, r2
ARM GAS  /tmp/ccJRi9N9.s 			page 122


 6898 0062 3DD1     		bne	.L1324
 6899              	.L1326:
 6900 0064 D8F80C00 		ldr	r0, [r8, #12]
 6901 0068 2946     		mov	r1, r5
 6902 006a FFF7FEFF 		bl	_ZNK4Heat20WriteModelParametersEP9FileStore
 6903 006e 0028     		cmp	r0, #0
 6904 0070 DAD0     		beq	.L1323
 6905 0072 5021     		movs	r1, #80
 6906 0074 3846     		mov	r0, r7
 6907 0076 D4F80080 		ldr	r8, [r4]
 6908 007a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6909 007e C0B9     		cbnz	r0, .L1347
 6910              	.L1327:
 6911 0080 0246     		mov	r2, r0
 6912 0082 2946     		mov	r1, r5
 6913 0084 4046     		mov	r0, r8
 6914 0086 FFF7FEFF 		bl	_ZNK8Platform23WritePlatformParametersEP9FileStoreb
 6915 008a 0028     		cmp	r0, #0
 6916 008c CCD0     		beq	.L1323
 6917 008e 2946     		mov	r1, r5
 6918 0090 1B48     		ldr	r0, .L1349+20
 6919 0092 FFF7FEFF 		bl	_ZNK6RepRap19WriteToolParametersEP9FileStore
 6920 0096 0746     		mov	r7, r0
 6921 0098 2846     		mov	r0, r5
 6922 009a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6923 009e 0028     		cmp	r0, #0
 6924 00a0 C5D0     		beq	.L1328
 6925 00a2 002F     		cmp	r7, #0
 6926 00a4 C3D0     		beq	.L1328
 6927 00a6 94F88836 		ldrb	r3, [r4, #1672]	@ zero_extendqisi2
 6928 00aa 9BB1     		cbz	r3, .L1348
 6929 00ac 0120     		movs	r0, #1
 6930 00ae BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6931              	.L1347:
 6932 00b2 3846     		mov	r0, r7
 6933 00b4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6934 00b8 A0F11F00 		sub	r0, #31
 6935 00bc B0FA80F0 		clz	r0, r0
 6936 00c0 4009     		lsrs	r0, r0, #5
 6937 00c2 DDE7     		b	.L1327
 6938              	.L1345:
 6939 00c4 3046     		mov	r0, r6
 6940 00c6 0A4A     		ldr	r2, .L1349+4
 6941 00c8 0E49     		ldr	r1, .L1349+24
 6942 00ca FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6943 00ce 0220     		movs	r0, #2
 6944 00d0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6945              	.L1348:
 6946 00d4 3046     		mov	r0, r6
 6947 00d6 0C49     		ldr	r1, .L1349+28
 6948 00d8 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6949 00dc 0320     		movs	r0, #3
 6950 00de B4E7     		b	.L1343
 6951              	.L1324:
 6952 00e0 2946     		mov	r1, r5
 6953 00e2 9847     		blx	r3
 6954 00e4 0028     		cmp	r0, #0
ARM GAS  /tmp/ccJRi9N9.s 			page 123


 6955 00e6 BDD1     		bne	.L1326
 6956 00e8 9EE7     		b	.L1323
 6957              	.L1350:
 6958 00ea 00BF     		.align	2
 6959              	.L1349:
 6960 00ec 34000000 		.word	.LC17
 6961 00f0 00000000 		.word	.LC122
 6962 00f4 14000000 		.word	.LC123
 6963 00f8 48000000 		.word	.LC124
 6964 00fc 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 6965 0100 00000000 		.word	reprap
 6966 0104 3C000000 		.word	.LC18
 6967 0108 60000000 		.word	.LC125
 6968              		.size	_ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef, .-_ZNK6GCodes23WriteConfigO
 6969              		.section	.text._ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb,"ax",%progbits
 6970              		.align	1
 6971              		.p2align 2,,3
 6972              		.global	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb
 6973              		.syntax unified
 6974              		.thumb
 6975              		.thumb_func
 6976              		.fpu fpv4-sp-d16
 6977              		.type	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb, %function
 6978              	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb:
 6979              		@ args = 0, pretend = 0, frame = 0
 6980              		@ frame_needed = 0, uses_anonymous_args = 0
 6981              		@ link register save eliminated.
 6982 0000 0846     		mov	r0, r1
 6983 0002 1146     		mov	r1, r2
 6984 0004 12B1     		cbz	r2, .L1351
 6985 0006 D2F89820 		ldr	r2, [r2, #152]
 6986 000a 02B9     		cbnz	r2, .L1359
 6987              	.L1351:
 6988 000c 7047     		bx	lr
 6989              	.L1359:
 6990 000e 1A46     		mov	r2, r3
 6991 0010 FFF7FEBF 		b	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.64
 6992              		.size	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb, .-_ZNK6GCodes22ReportToolTemperatu
 6993              		.section	.text._ZNK6GCodes25GenerateTemperatureReportERK9StringRef,"ax",%progbits
 6994              		.align	1
 6995              		.p2align 2,,3
 6996              		.global	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef
 6997              		.syntax unified
 6998              		.thumb
 6999              		.thumb_func
 7000              		.fpu fpv4-sp-d16
 7001              		.type	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef, %function
 7002              	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef:
 7003              		@ args = 0, pretend = 0, frame = 8
 7004              		@ frame_needed = 0, uses_anonymous_args = 0
 7005 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 7006 0004 7A4E     		ldr	r6, .L1401
 7007 0006 336B     		ldr	r3, [r6, #48]
 7008 0008 F568     		ldr	r5, [r6, #12]
 7009 000a 85B0     		sub	sp, sp, #20
 7010 000c 0C46     		mov	r4, r1
 7011 000e 23B1     		cbz	r3, .L1361
ARM GAS  /tmp/ccJRi9N9.s 			page 124


 7012 0010 D3F89820 		ldr	r2, [r3, #152]
 7013 0014 002A     		cmp	r2, #0
 7014 0016 40F08780 		bne	.L1396
 7015              	.L1361:
 7016 001a F66A     		ldr	r6, [r6, #44]
 7017 001c 16B9     		cbnz	r6, .L1364
 7018 001e 0DE0     		b	.L1362
 7019              	.L1363:
 7020 0020 3668     		ldr	r6, [r6]
 7021 0022 5EB1     		cbz	r6, .L1362
 7022              	.L1364:
 7023 0024 D6F89830 		ldr	r3, [r6, #152]
 7024 0028 002B     		cmp	r3, #0
 7025 002a F9D0     		beq	.L1363
 7026 002c 3146     		mov	r1, r6
 7027 002e 0122     		movs	r2, #1
 7028 0030 2046     		mov	r0, r4
 7029 0032 FFF7FEFF 		bl	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.64
 7030 0036 3668     		ldr	r6, [r6]
 7031 0038 002E     		cmp	r6, #0
 7032 003a F3D1     		bne	.L1364
 7033              	.L1362:
 7034 003c 05F1D106 		add	r6, r5, #209
 7035 0040 DFF8BCA1 		ldr	r10, .L1401+16
 7036 0044 16F9017F 		ldrsb	r7, [r6, #1]!
 7037 0048 DFF8ACB1 		ldr	fp, .L1401+8
 7038 004c 0023     		movs	r3, #0
 7039 004e 002F     		cmp	r7, #0
 7040 0050 1A46     		mov	r2, r3
 7041 0052 5146     		mov	r1, r10
 7042 0054 2046     		mov	r0, r4
 7043 0056 2FDB     		blt	.L1371
 7044              	.L1366:
 7045 0058 5F1C     		adds	r7, r3, #1
 7046 005a 002B     		cmp	r3, #0
 7047 005c 6AD0     		beq	.L1397
 7048 005e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7049 0062 96F90080 		ldrsb	r8, [r6]
 7050 0066 2846     		mov	r0, r5
 7051 0068 4146     		mov	r1, r8
 7052 006a FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 7053 006e 4146     		mov	r1, r8
 7054 0070 2846     		mov	r0, r5
 7055 0072 10EE109A 		vmov	r9, s0
 7056 0076 FFF7FEFF 		bl	_ZNK4Heat20GetTargetTemperatureEa
 7057 007a 4846     		mov	r0, r9	@ float
 7058 007c 8DED030A 		vstr.32	s0, [sp, #12]	@ int
 7059 0080 FFF7FEFF 		bl	__aeabi_f2d
 7060 0084 9DED030A 		vldr.32	s0, [sp, #12]	@ int
 7061 0088 8046     		mov	r8, r0
 7062 008a 10EE100A 		vmov	r0, s0
 7063 008e 8946     		mov	r9, r1
 7064 0090 FFF7FEFF 		bl	__aeabi_f2d
 7065 0094 4246     		mov	r2, r8
 7066 0096 CDE90001 		strd	r0, [sp]
 7067 009a 4B46     		mov	r3, r9
 7068 009c 5946     		mov	r1, fp
ARM GAS  /tmp/ccJRi9N9.s 			page 125


 7069 009e 2046     		mov	r0, r4
 7070 00a0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7071 00a4 042F     		cmp	r7, #4
 7072 00a6 07D0     		beq	.L1371
 7073 00a8 3B46     		mov	r3, r7
 7074              	.L1400:
 7075 00aa 16F9017F 		ldrsb	r7, [r6, #1]!
 7076 00ae 002F     		cmp	r7, #0
 7077 00b0 1A46     		mov	r2, r3
 7078 00b2 5146     		mov	r1, r10
 7079 00b4 2046     		mov	r0, r4
 7080 00b6 CFDA     		bge	.L1366
 7081              	.L1371:
 7082 00b8 DFF848B1 		ldr	fp, .L1401+20
 7083 00bc DFF838A1 		ldr	r10, .L1401+8
 7084 00c0 05F1D506 		add	r6, r5, #213
 7085 00c4 0027     		movs	r7, #0
 7086              	.L1367:
 7087 00c6 16F9013F 		ldrsb	r3, [r6, #1]!
 7088 00ca 002B     		cmp	r3, #0
 7089 00cc 07F10107 		add	r7, r7, #1
 7090 00d0 27DB     		blt	.L1360
 7091 00d2 012F     		cmp	r7, #1
 7092 00d4 5DD0     		beq	.L1398
 7093 00d6 0122     		movs	r2, #1
 7094 00d8 4649     		ldr	r1, .L1401+4
 7095 00da 2046     		mov	r0, r4
 7096 00dc FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7097 00e0 96F90060 		ldrsb	r6, [r6]
 7098 00e4 2846     		mov	r0, r5
 7099 00e6 3146     		mov	r1, r6
 7100 00e8 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 7101 00ec 3146     		mov	r1, r6
 7102 00ee 2846     		mov	r0, r5
 7103 00f0 10EE107A 		vmov	r7, s0
 7104 00f4 FFF7FEFF 		bl	_ZNK4Heat20GetTargetTemperatureEa
 7105 00f8 3846     		mov	r0, r7	@ float
 7106 00fa 8DED030A 		vstr.32	s0, [sp, #12]	@ int
 7107 00fe FFF7FEFF 		bl	__aeabi_f2d
 7108 0102 9DED030A 		vldr.32	s0, [sp, #12]	@ int
 7109 0106 0646     		mov	r6, r0
 7110 0108 10EE100A 		vmov	r0, s0
 7111 010c 0F46     		mov	r7, r1
 7112 010e FFF7FEFF 		bl	__aeabi_f2d
 7113 0112 3246     		mov	r2, r6
 7114 0114 CDE90001 		strd	r0, [sp]
 7115 0118 3B46     		mov	r3, r7
 7116 011a 2046     		mov	r0, r4
 7117 011c 3649     		ldr	r1, .L1401+8
 7118 011e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7119              	.L1360:
 7120 0122 05B0     		add	sp, sp, #20
 7121              		@ sp needed
 7122 0124 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 7123              	.L1396:
 7124 0128 1946     		mov	r1, r3
 7125 012a 0022     		movs	r2, #0
ARM GAS  /tmp/ccJRi9N9.s 			page 126


 7126 012c 2046     		mov	r0, r4
 7127 012e FFF7FEFF 		bl	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.64
 7128 0132 72E7     		b	.L1361
 7129              	.L1397:
 7130 0134 FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 7131 0138 30BB     		cbnz	r0, .L1399
 7132              	.L1369:
 7133 013a 3049     		ldr	r1, .L1401+12
 7134 013c 2046     		mov	r0, r4
 7135 013e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 7136 0142 96F90080 		ldrsb	r8, [r6]
 7137 0146 2846     		mov	r0, r5
 7138 0148 4146     		mov	r1, r8
 7139 014a FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 7140 014e 4146     		mov	r1, r8
 7141 0150 2846     		mov	r0, r5
 7142 0152 10EE109A 		vmov	r9, s0
 7143 0156 FFF7FEFF 		bl	_ZNK4Heat20GetTargetTemperatureEa
 7144 015a 4846     		mov	r0, r9	@ float
 7145 015c 8DED030A 		vstr.32	s0, [sp, #12]	@ int
 7146 0160 FFF7FEFF 		bl	__aeabi_f2d
 7147 0164 9DED030A 		vldr.32	s0, [sp, #12]	@ int
 7148 0168 8046     		mov	r8, r0
 7149 016a 10EE100A 		vmov	r0, s0
 7150 016e 8946     		mov	r9, r1
 7151 0170 FFF7FEFF 		bl	__aeabi_f2d
 7152 0174 4B46     		mov	r3, r9
 7153 0176 CDE90001 		strd	r0, [sp]
 7154 017a 4246     		mov	r2, r8
 7155 017c 5946     		mov	r1, fp
 7156 017e 2046     		mov	r0, r4
 7157 0180 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7158 0184 3B46     		mov	r3, r7
 7159 0186 90E7     		b	.L1400
 7160              	.L1399:
 7161 0188 2021     		movs	r1, #32
 7162 018a 2046     		mov	r0, r4
 7163 018c FFF7FEFF 		bl	_ZNK9StringRef3catEc
 7164 0190 D3E7     		b	.L1369
 7165              	.L1398:
 7166 0192 2046     		mov	r0, r4
 7167 0194 FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 7168 0198 18B1     		cbz	r0, .L1374
 7169 019a 2021     		movs	r1, #32
 7170 019c 2046     		mov	r0, r4
 7171 019e FFF7FEFF 		bl	_ZNK9StringRef3catEc
 7172              	.L1374:
 7173 01a2 5946     		mov	r1, fp
 7174 01a4 2046     		mov	r0, r4
 7175 01a6 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 7176 01aa 96F90080 		ldrsb	r8, [r6]
 7177 01ae 2846     		mov	r0, r5
 7178 01b0 4146     		mov	r1, r8
 7179 01b2 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 7180 01b6 4146     		mov	r1, r8
 7181 01b8 2846     		mov	r0, r5
 7182 01ba 10EE109A 		vmov	r9, s0
ARM GAS  /tmp/ccJRi9N9.s 			page 127


 7183 01be FFF7FEFF 		bl	_ZNK4Heat20GetTargetTemperatureEa
 7184 01c2 4846     		mov	r0, r9	@ float
 7185 01c4 8DED030A 		vstr.32	s0, [sp, #12]	@ int
 7186 01c8 FFF7FEFF 		bl	__aeabi_f2d
 7187 01cc 9DED030A 		vldr.32	s0, [sp, #12]	@ int
 7188 01d0 8046     		mov	r8, r0
 7189 01d2 10EE100A 		vmov	r0, s0
 7190 01d6 8946     		mov	r9, r1
 7191 01d8 FFF7FEFF 		bl	__aeabi_f2d
 7192 01dc 4246     		mov	r2, r8
 7193 01de CDE90001 		strd	r0, [sp]
 7194 01e2 4B46     		mov	r3, r9
 7195 01e4 5146     		mov	r1, r10
 7196 01e6 2046     		mov	r0, r4
 7197 01e8 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7198 01ec 6BE7     		b	.L1367
 7199              	.L1402:
 7200 01ee 00BF     		.align	2
 7201              	.L1401:
 7202 01f0 00000000 		.word	reprap
 7203 01f4 1C000000 		.word	.LC130
 7204 01f8 04000000 		.word	.LC127
 7205 01fc 00000000 		.word	.LC126
 7206 0200 10000000 		.word	.LC128
 7207 0204 18000000 		.word	.LC129
 7208              		.size	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef, .-_ZNK6GCodes25GenerateTemperatureRepor
 7209              		.section	.text._ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource,"ax",%progbits
 7210              		.align	1
 7211              		.p2align 2,,3
 7212              		.global	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource
 7213              		.syntax unified
 7214              		.thumb
 7215              		.thumb_func
 7216              		.fpu fpv4-sp-d16
 7217              		.type	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource, %function
 7218              	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource:
 7219              		@ args = 0, pretend = 0, frame = 8
 7220              		@ frame_needed = 0, uses_anonymous_args = 0
 7221 0000 00B5     		push	{lr}
 7222 0002 83B0     		sub	sp, sp, #12
 7223 0004 0020     		movs	r0, #0
 7224 0006 0190     		str	r0, [sp, #4]
 7225 0008 0529     		cmp	r1, #5
 7226 000a 26D8     		bhi	.L1410
 7227 000c DFE801F0 		tbb	[pc, r1]
 7228              	.L1406:
 7229 0010 1E       		.byte	(.L1405-.L1406)/2
 7230 0011 1E       		.byte	(.L1405-.L1406)/2
 7231 0012 16       		.byte	(.L1407-.L1406)/2
 7232 0013 16       		.byte	(.L1407-.L1406)/2
 7233 0014 16       		.byte	(.L1407-.L1406)/2
 7234 0015 03       		.byte	(.L1408-.L1406)/2
 7235              		.p2align 1
 7236              	.L1408:
 7237 0016 1248     		ldr	r0, .L1418
 7238 0018 FFF7FEFF 		bl	_ZN6RepRap17GetConfigResponseEv
 7239 001c 0190     		str	r0, [sp, #4]
ARM GAS  /tmp/ccJRi9N9.s 			page 128


 7240              	.L1409:
 7241 001e 50B1     		cbz	r0, .L1403
 7242 0020 0A21     		movs	r1, #10
 7243 0022 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 7244 0026 0198     		ldr	r0, [sp, #4]
 7245 0028 90F81531 		ldrb	r3, [r0, #277]	@ zero_extendqisi2
 7246 002c 1BB1     		cbz	r3, .L1403
 7247 002e 01A8     		add	r0, sp, #4
 7248 0030 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 7249 0034 0198     		ldr	r0, [sp, #4]
 7250              	.L1403:
 7251 0036 03B0     		add	sp, sp, #12
 7252              		@ sp needed
 7253 0038 5DF804FB 		ldr	pc, [sp], #4
 7254              	.L1407:
 7255 003c 0139     		subs	r1, r1, #1
 7256 003e C9B2     		uxtb	r1, r1
 7257 0040 1A46     		mov	r2, r3
 7258 0042 0748     		ldr	r0, .L1418
 7259 0044 FFF7FEFF 		bl	_ZN6RepRap17GetStatusResponseEh14ResponseSource
 7260 0048 0190     		str	r0, [sp, #4]
 7261 004a E8E7     		b	.L1409
 7262              	.L1405:
 7263 004c 0231     		adds	r1, r1, #2
 7264 004e C9B2     		uxtb	r1, r1
 7265 0050 0348     		ldr	r0, .L1418
 7266 0052 FFF7FEFF 		bl	_ZN6RepRap23GetLegacyStatusResponseEhi
 7267 0056 0190     		str	r0, [sp, #4]
 7268 0058 E1E7     		b	.L1409
 7269              	.L1410:
 7270 005a 0020     		movs	r0, #0
 7271 005c EBE7     		b	.L1403
 7272              	.L1419:
 7273 005e 00BF     		.align	2
 7274              	.L1418:
 7275 0060 00000000 		.word	reprap
 7276              		.size	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource, .-_ZNK6GCodes26GenerateJsonStatu
 7277              		.section	.text._ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef,"ax",%progbits
 7278              		.align	1
 7279              		.p2align 2,,3
 7280              		.global	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef
 7281              		.syntax unified
 7282              		.thumb
 7283              		.thumb_func
 7284              		.fpu fpv4-sp-d16
 7285              		.type	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef, %function
 7286              	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef:
 7287              		@ args = 0, pretend = 0, frame = 0
 7288              		@ frame_needed = 0, uses_anonymous_args = 0
 7289 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 7290 0002 0C46     		mov	r4, r1
 7291 0004 0646     		mov	r6, r0
 7292 0006 1746     		mov	r7, r2
 7293 0008 FFF7FEFF 		bl	millis
 7294 000c 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 7295 000e 0546     		mov	r5, r0
 7296 0010 2BB1     		cbz	r3, .L1421
ARM GAS  /tmp/ccJRi9N9.s 			page 129


 7297 0012 2368     		ldr	r3, [r4]
 7298 0014 C31A     		subs	r3, r0, r3
 7299 0016 B3F57A7F 		cmp	r3, #1000
 7300 001a 04D2     		bcs	.L1432
 7301 001c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 7302              	.L1421:
 7303 001e 0123     		movs	r3, #1
 7304 0020 2060     		str	r0, [r4]
 7305 0022 2371     		strb	r3, [r4, #4]
 7306 0024 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 7307              	.L1432:
 7308 0026 3068     		ldr	r0, [r6]
 7309 0028 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 7310 002c 0228     		cmp	r0, #2
 7311 002e 11D0     		beq	.L1433
 7312              	.L1423:
 7313 0030 96F98416 		ldrsb	r1, [r6, #1668]
 7314 0034 0029     		cmp	r1, #0
 7315 0036 0BDB     		blt	.L1426
 7316 0038 0123     		movs	r3, #1
 7317 003a 4FF0FF32 		mov	r2, #-1
 7318 003e 3046     		mov	r0, r6
 7319 0040 FFF7FEFF 		bl	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource
 7320 0044 20B1     		cbz	r0, .L1426
 7321 0046 0146     		mov	r1, r0
 7322 0048 0122     		movs	r2, #1
 7323 004a 3068     		ldr	r0, [r6]
 7324 004c FFF7FEFF 		bl	_ZN8Platform14AppendAuxReplyEP12OutputBufferb
 7325              	.L1426:
 7326 0050 2560     		str	r5, [r4]
 7327 0052 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 7328              	.L1433:
 7329 0054 736C     		ldr	r3, [r6, #68]
 7330 0056 1B68     		ldr	r3, [r3]
 7331 0058 A342     		cmp	r3, r4
 7332 005a 03D0     		beq	.L1424
 7333 005c F36B     		ldr	r3, [r6, #60]
 7334 005e 1B68     		ldr	r3, [r3]
 7335 0060 A342     		cmp	r3, r4
 7336 0062 E5D1     		bne	.L1423
 7337              	.L1424:
 7338 0064 3946     		mov	r1, r7
 7339 0066 3046     		mov	r0, r6
 7340 0068 FFF7FEFF 		bl	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef
 7341 006c 0A21     		movs	r1, #10
 7342 006e 3846     		mov	r0, r7
 7343 0070 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 7344 0074 3A68     		ldr	r2, [r7]
 7345 0076 3068     		ldr	r0, [r6]
 7346 0078 0121     		movs	r1, #1
 7347 007a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 7348 007e D7E7     		b	.L1423
 7349              		.size	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef, .-_ZNK6GCodes14CheckReportDueER11GCo
 7350              		.section	.text._ZN6GCodes12LockResourceERK11GCodeBufferj,"ax",%progbits
 7351              		.align	1
 7352              		.p2align 2,,3
 7353              		.global	_ZN6GCodes12LockResourceERK11GCodeBufferj
ARM GAS  /tmp/ccJRi9N9.s 			page 130


 7354              		.syntax unified
 7355              		.thumb
 7356              		.thumb_func
 7357              		.fpu fpv4-sp-d16
 7358              		.type	_ZN6GCodes12LockResourceERK11GCodeBufferj, %function
 7359              	_ZN6GCodes12LockResourceERK11GCodeBufferj:
 7360              		@ args = 0, pretend = 0, frame = 0
 7361              		@ frame_needed = 0, uses_anonymous_args = 0
 7362              		@ link register save eliminated.
 7363 0000 00EB8200 		add	r0, r0, r2, lsl #2
 7364 0004 C36D     		ldr	r3, [r0, #92]
 7365 0006 8B42     		cmp	r3, r1
 7366 0008 0BD0     		beq	.L1436
 7367 000a 0BB1     		cbz	r3, .L1438
 7368 000c 0020     		movs	r0, #0
 7369 000e 7047     		bx	lr
 7370              	.L1438:
 7371 0010 C165     		str	r1, [r0, #92]
 7372 0012 8968     		ldr	r1, [r1, #8]
 7373 0014 0120     		movs	r0, #1
 7374 0016 CB68     		ldr	r3, [r1, #12]
 7375 0018 00FA02F2 		lsl	r2, r0, r2
 7376 001c 1A43     		orrs	r2, r2, r3
 7377 001e CA60     		str	r2, [r1, #12]
 7378 0020 7047     		bx	lr
 7379              	.L1436:
 7380 0022 0120     		movs	r0, #1
 7381 0024 7047     		bx	lr
 7382              		.size	_ZN6GCodes12LockResourceERK11GCodeBufferj, .-_ZN6GCodes12LockResourceERK11GCodeBufferj
 7383 0026 00BF     		.section	.text._ZN6GCodes12GrabResourceERK11GCodeBufferj,"ax",%progbits
 7384              		.align	1
 7385              		.p2align 2,,3
 7386              		.global	_ZN6GCodes12GrabResourceERK11GCodeBufferj
 7387              		.syntax unified
 7388              		.thumb
 7389              		.thumb_func
 7390              		.fpu fpv4-sp-d16
 7391              		.type	_ZN6GCodes12GrabResourceERK11GCodeBufferj, %function
 7392              	_ZN6GCodes12GrabResourceERK11GCodeBufferj:
 7393              		@ args = 0, pretend = 0, frame = 0
 7394              		@ frame_needed = 0, uses_anonymous_args = 0
 7395              		@ link register save eliminated.
 7396 0000 00EB8200 		add	r0, r0, r2, lsl #2
 7397 0004 C36D     		ldr	r3, [r0, #92]
 7398 0006 8B42     		cmp	r3, r1
 7399 0008 0FD0     		beq	.L1448
 7400 000a 7BB1     		cbz	r3, .L1449
 7401 000c 10B4     		push	{r4}
 7402 000e 0124     		movs	r4, #1
 7403 0010 9440     		lsls	r4, r4, r2
 7404 0012 9B68     		ldr	r3, [r3, #8]
 7405 0014 E443     		mvns	r4, r4
 7406              	.L1442:
 7407 0016 DA68     		ldr	r2, [r3, #12]
 7408 0018 2240     		ands	r2, r2, r4
 7409 001a DA60     		str	r2, [r3, #12]
 7410 001c 1B68     		ldr	r3, [r3]
ARM GAS  /tmp/ccJRi9N9.s 			page 131


 7411 001e 002B     		cmp	r3, #0
 7412 0020 F9D1     		bne	.L1442
 7413 0022 C165     		str	r1, [r0, #92]
 7414 0024 5DF8044B 		ldr	r4, [sp], #4
 7415 0028 7047     		bx	lr
 7416              	.L1448:
 7417 002a 7047     		bx	lr
 7418              	.L1449:
 7419 002c C165     		str	r1, [r0, #92]
 7420 002e 7047     		bx	lr
 7421              		.size	_ZN6GCodes12GrabResourceERK11GCodeBufferj, .-_ZN6GCodes12GrabResourceERK11GCodeBufferj
 7422              		.section	.text._ZN6GCodes10LockHeaterERK11GCodeBufferi,"ax",%progbits
 7423              		.align	1
 7424              		.p2align 2,,3
 7425              		.global	_ZN6GCodes10LockHeaterERK11GCodeBufferi
 7426              		.syntax unified
 7427              		.thumb
 7428              		.thumb_func
 7429              		.fpu fpv4-sp-d16
 7430              		.type	_ZN6GCodes10LockHeaterERK11GCodeBufferi, %function
 7431              	_ZN6GCodes10LockHeaterERK11GCodeBufferi:
 7432              		@ args = 0, pretend = 0, frame = 0
 7433              		@ frame_needed = 0, uses_anonymous_args = 0
 7434              		@ link register save eliminated.
 7435 0000 072A     		cmp	r2, #7
 7436 0002 08D8     		bhi	.L1455
 7437 0004 00EB8200 		add	r0, r0, r2, lsl #2
 7438 0008 0232     		adds	r2, r2, #2
 7439 000a 436E     		ldr	r3, [r0, #100]
 7440 000c 9942     		cmp	r1, r3
 7441 000e 02D0     		beq	.L1455
 7442 0010 1BB1     		cbz	r3, .L1457
 7443 0012 0020     		movs	r0, #0
 7444 0014 7047     		bx	lr
 7445              	.L1455:
 7446 0016 0120     		movs	r0, #1
 7447 0018 7047     		bx	lr
 7448              	.L1457:
 7449 001a 4166     		str	r1, [r0, #100]
 7450 001c 8968     		ldr	r1, [r1, #8]
 7451 001e 0120     		movs	r0, #1
 7452 0020 CB68     		ldr	r3, [r1, #12]
 7453 0022 00FA02F2 		lsl	r2, r0, r2
 7454 0026 1A43     		orrs	r2, r2, r3
 7455 0028 CA60     		str	r2, [r1, #12]
 7456 002a 7047     		bx	lr
 7457              		.size	_ZN6GCodes10LockHeaterERK11GCodeBufferi, .-_ZN6GCodes10LockHeaterERK11GCodeBufferi
 7458              		.section	.text._ZN6GCodes7LockFanERK11GCodeBufferi,"ax",%progbits
 7459              		.align	1
 7460              		.p2align 2,,3
 7461              		.global	_ZN6GCodes7LockFanERK11GCodeBufferi
 7462              		.syntax unified
 7463              		.thumb
 7464              		.thumb_func
 7465              		.fpu fpv4-sp-d16
 7466              		.type	_ZN6GCodes7LockFanERK11GCodeBufferi, %function
 7467              	_ZN6GCodes7LockFanERK11GCodeBufferi:
ARM GAS  /tmp/ccJRi9N9.s 			page 132


 7468              		@ args = 0, pretend = 0, frame = 0
 7469              		@ frame_needed = 0, uses_anonymous_args = 0
 7470              		@ link register save eliminated.
 7471 0000 082A     		cmp	r2, #8
 7472 0002 09D8     		bhi	.L1461
 7473 0004 00EB8200 		add	r0, r0, r2, lsl #2
 7474 0008 0A32     		adds	r2, r2, #10
 7475 000a D0F88430 		ldr	r3, [r0, #132]
 7476 000e 9942     		cmp	r1, r3
 7477 0010 02D0     		beq	.L1461
 7478 0012 1BB1     		cbz	r3, .L1463
 7479 0014 0020     		movs	r0, #0
 7480 0016 7047     		bx	lr
 7481              	.L1461:
 7482 0018 0120     		movs	r0, #1
 7483 001a 7047     		bx	lr
 7484              	.L1463:
 7485 001c C0F88410 		str	r1, [r0, #132]
 7486 0020 8968     		ldr	r1, [r1, #8]
 7487 0022 0120     		movs	r0, #1
 7488 0024 CB68     		ldr	r3, [r1, #12]
 7489 0026 00FA02F2 		lsl	r2, r0, r2
 7490 002a 1A43     		orrs	r2, r2, r3
 7491 002c CA60     		str	r2, [r1, #12]
 7492 002e 7047     		bx	lr
 7493              		.size	_ZN6GCodes7LockFanERK11GCodeBufferi, .-_ZN6GCodes7LockFanERK11GCodeBufferi
 7494              		.section	.text._ZN6GCodes14LockFileSystemERK11GCodeBuffer,"ax",%progbits
 7495              		.align	1
 7496              		.p2align 2,,3
 7497              		.global	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 7498              		.syntax unified
 7499              		.thumb
 7500              		.thumb_func
 7501              		.fpu fpv4-sp-d16
 7502              		.type	_ZN6GCodes14LockFileSystemERK11GCodeBuffer, %function
 7503              	_ZN6GCodes14LockFileSystemERK11GCodeBuffer:
 7504              		@ args = 0, pretend = 0, frame = 0
 7505              		@ frame_needed = 0, uses_anonymous_args = 0
 7506              		@ link register save eliminated.
 7507 0000 036E     		ldr	r3, [r0, #96]
 7508 0002 9942     		cmp	r1, r3
 7509 0004 02D0     		beq	.L1466
 7510 0006 1BB1     		cbz	r3, .L1468
 7511 0008 0020     		movs	r0, #0
 7512 000a 7047     		bx	lr
 7513              	.L1466:
 7514 000c 0120     		movs	r0, #1
 7515 000e 7047     		bx	lr
 7516              	.L1468:
 7517 0010 0166     		str	r1, [r0, #96]
 7518 0012 8A68     		ldr	r2, [r1, #8]
 7519 0014 D368     		ldr	r3, [r2, #12]
 7520 0016 43F00203 		orr	r3, r3, #2
 7521 001a D360     		str	r3, [r2, #12]
 7522 001c 0120     		movs	r0, #1
 7523 001e 7047     		bx	lr
 7524              		.size	_ZN6GCodes14LockFileSystemERK11GCodeBuffer, .-_ZN6GCodes14LockFileSystemERK11GCodeBuffer
ARM GAS  /tmp/ccJRi9N9.s 			page 133


 7525              		.section	.text._ZN6GCodes12LockMovementERK11GCodeBuffer,"ax",%progbits
 7526              		.align	1
 7527              		.p2align 2,,3
 7528              		.global	_ZN6GCodes12LockMovementERK11GCodeBuffer
 7529              		.syntax unified
 7530              		.thumb
 7531              		.thumb_func
 7532              		.fpu fpv4-sp-d16
 7533              		.type	_ZN6GCodes12LockMovementERK11GCodeBuffer, %function
 7534              	_ZN6GCodes12LockMovementERK11GCodeBuffer:
 7535              		@ args = 0, pretend = 0, frame = 0
 7536              		@ frame_needed = 0, uses_anonymous_args = 0
 7537              		@ link register save eliminated.
 7538 0000 C36D     		ldr	r3, [r0, #92]
 7539 0002 9942     		cmp	r1, r3
 7540 0004 02D0     		beq	.L1471
 7541 0006 1BB1     		cbz	r3, .L1473
 7542 0008 0020     		movs	r0, #0
 7543 000a 7047     		bx	lr
 7544              	.L1471:
 7545 000c 0120     		movs	r0, #1
 7546 000e 7047     		bx	lr
 7547              	.L1473:
 7548 0010 C165     		str	r1, [r0, #92]
 7549 0012 8A68     		ldr	r2, [r1, #8]
 7550 0014 D368     		ldr	r3, [r2, #12]
 7551 0016 43F00103 		orr	r3, r3, #1
 7552 001a D360     		str	r3, [r2, #12]
 7553 001c 0120     		movs	r0, #1
 7554 001e 7047     		bx	lr
 7555              		.size	_ZN6GCodes12LockMovementERK11GCodeBuffer, .-_ZN6GCodes12LockMovementERK11GCodeBuffer
 7556              		.section	.text._ZN6GCodes12GrabMovementERK11GCodeBuffer,"ax",%progbits
 7557              		.align	1
 7558              		.p2align 2,,3
 7559              		.global	_ZN6GCodes12GrabMovementERK11GCodeBuffer
 7560              		.syntax unified
 7561              		.thumb
 7562              		.thumb_func
 7563              		.fpu fpv4-sp-d16
 7564              		.type	_ZN6GCodes12GrabMovementERK11GCodeBuffer, %function
 7565              	_ZN6GCodes12GrabMovementERK11GCodeBuffer:
 7566              		@ args = 0, pretend = 0, frame = 0
 7567              		@ frame_needed = 0, uses_anonymous_args = 0
 7568              		@ link register save eliminated.
 7569 0000 C36D     		ldr	r3, [r0, #92]
 7570 0002 9942     		cmp	r1, r3
 7571 0004 09D0     		beq	.L1474
 7572 0006 3BB1     		cbz	r3, .L1476
 7573 0008 9B68     		ldr	r3, [r3, #8]
 7574              	.L1477:
 7575 000a DA68     		ldr	r2, [r3, #12]
 7576 000c 22F00102 		bic	r2, r2, #1
 7577 0010 DA60     		str	r2, [r3, #12]
 7578 0012 1B68     		ldr	r3, [r3]
 7579 0014 002B     		cmp	r3, #0
 7580 0016 F8D1     		bne	.L1477
 7581              	.L1476:
ARM GAS  /tmp/ccJRi9N9.s 			page 134


 7582 0018 C165     		str	r1, [r0, #92]
 7583              	.L1474:
 7584 001a 7047     		bx	lr
 7585              		.size	_ZN6GCodes12GrabMovementERK11GCodeBuffer, .-_ZN6GCodes12GrabMovementERK11GCodeBuffer
 7586              		.section	.text._ZN6GCodes9UnlockAllERK11GCodeBuffer,"ax",%progbits
 7587              		.align	1
 7588              		.p2align 2,,3
 7589              		.global	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7590              		.syntax unified
 7591              		.thumb
 7592              		.thumb_func
 7593              		.fpu fpv4-sp-d16
 7594              		.type	_ZN6GCodes9UnlockAllERK11GCodeBuffer, %function
 7595              	_ZN6GCodes9UnlockAllERK11GCodeBuffer:
 7596              		@ args = 0, pretend = 0, frame = 0
 7597              		@ frame_needed = 0, uses_anonymous_args = 0
 7598              		@ link register save eliminated.
 7599 0000 8B68     		ldr	r3, [r1, #8]
 7600 0002 F0B4     		push	{r4, r5, r6, r7}
 7601 0004 1C68     		ldr	r4, [r3]
 7602 0006 04B1     		cbz	r4, .L1483
 7603 0008 E468     		ldr	r4, [r4, #12]
 7604              	.L1483:
 7605 000a 5830     		adds	r0, r0, #88
 7606 000c 0023     		movs	r3, #0
 7607 000e 0127     		movs	r7, #1
 7608 0010 02E0     		b	.L1485
 7609              	.L1484:
 7610 0012 0133     		adds	r3, r3, #1
 7611 0014 132B     		cmp	r3, #19
 7612 0016 13D0     		beq	.L1489
 7613              	.L1485:
 7614 0018 50F8042F 		ldr	r2, [r0, #4]!
 7615 001c 8A42     		cmp	r2, r1
 7616 001e F8D1     		bne	.L1484
 7617 0020 24FA03F2 		lsr	r2, r4, r3
 7618 0024 12F00102 		ands	r2, r2, #1
 7619 0028 F3D1     		bne	.L1484
 7620 002a 0260     		str	r2, [r0]
 7621 002c 8D68     		ldr	r5, [r1, #8]
 7622 002e EA68     		ldr	r2, [r5, #12]
 7623 0030 07FA03F6 		lsl	r6, r7, r3
 7624 0034 0133     		adds	r3, r3, #1
 7625 0036 22EA0602 		bic	r2, r2, r6
 7626 003a 132B     		cmp	r3, #19
 7627 003c EA60     		str	r2, [r5, #12]
 7628 003e EBD1     		bne	.L1485
 7629              	.L1489:
 7630 0040 F0BC     		pop	{r4, r5, r6, r7}
 7631 0042 7047     		bx	lr
 7632              		.size	_ZN6GCodes9UnlockAllERK11GCodeBuffer, .-_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7633              		.section	.text._ZN6GCodes9StopPrintE15StopPrintReason,"ax",%progbits
 7634              		.align	1
 7635              		.p2align 2,,3
 7636              		.global	_ZN6GCodes9StopPrintE15StopPrintReason
 7637              		.syntax unified
 7638              		.thumb
ARM GAS  /tmp/ccJRi9N9.s 			page 135


 7639              		.thumb_func
 7640              		.fpu fpv4-sp-d16
 7641              		.type	_ZN6GCodes9StopPrintE15StopPrintReason, %function
 7642              	_ZN6GCodes9StopPrintE15StopPrintReason:
 7643              		@ args = 0, pretend = 0, frame = 0
 7644              		@ frame_needed = 0, uses_anonymous_args = 0
 7645 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 7646 0004 2DED028B 		vpush.64	{d8}
 7647 0008 0025     		movs	r5, #0
 7648 000a 036C     		ldr	r3, [r0, #64]
 7649 000c C0F85051 		str	r5, [r0, #336]
 7650 0010 80F8AB50 		strb	r5, [r0, #171]
 7651 0014 80F8AA50 		strb	r5, [r0, #170]
 7652 0018 84B0     		sub	sp, sp, #16
 7653 001a 0446     		mov	r4, r0
 7654 001c 1868     		ldr	r0, [r3]
 7655 001e 0F46     		mov	r7, r1
 7656 0020 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 7657 0024 00F10801 		add	r1, r0, #8
 7658 0028 0646     		mov	r6, r0
 7659 002a E068     		ldr	r0, [r4, #12]
 7660 002c FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 7661 0030 236C     		ldr	r3, [r4, #64]
 7662 0032 1868     		ldr	r0, [r3]
 7663 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 7664 0038 B068     		ldr	r0, [r6, #8]
 7665 003a 10B1     		cbz	r0, .L1491
 7666 003c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 7667 0040 B560     		str	r5, [r6, #8]
 7668              	.L1491:
 7669 0042 8B4E     		ldr	r6, .L1523
 7670 0044 B368     		ldr	r3, [r6, #8]
 7671 0046 0022     		movs	r2, #0
 7672 0048 C3F8642A 		str	r2, [r3, #2660]
 7673 004c C3F8602A 		str	r2, [r3, #2656]
 7674 0050 D4F8F805 		ldr	r0, [r4, #1528]
 7675 0054 FFF7FEFF 		bl	_ZN10GCodeQueue5ClearEv
 7676 0058 236C     		ldr	r3, [r4, #64]
 7677 005a 2046     		mov	r0, r4
 7678 005c 1968     		ldr	r1, [r3]
 7679 005e FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7680 0062 F069     		ldr	r0, [r6, #28]
 7681 0064 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 7682 0066 002B     		cmp	r3, #0
 7683 0068 43D0     		beq	.L1492
 7684 006a 94F85935 		ldrb	r3, [r4, #1369]	@ zero_extendqisi2
 7685 006e 00F59075 		add	r5, r0, #288
 7686 0072 002B     		cmp	r3, #0
 7687 0074 42D1     		bne	.L1506
 7688 0076 022F     		cmp	r7, #2
 7689 0078 00F08D80 		beq	.L1521
 7690              	.L1499:
 7691 007c 2068     		ldr	r0, [r4]
 7692 007e FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 7693 0082 0228     		cmp	r0, #2
 7694 0084 00F0E880 		beq	.L1508
 7695              	.L1503:
ARM GAS  /tmp/ccJRi9N9.s 			page 136


 7696 0088 F069     		ldr	r0, [r6, #28]
 7697 008a FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 7698 008e DFED797A 		vldr.32	s15, .L1523+4
 7699 0092 80EE270A 		vdiv.f32	s0, s0, s15
 7700 0096 FFF7FEFF 		bl	lrintf
 7701 009a 0246     		mov	r2, r0
 7702 009c 0146     		mov	r1, r0
 7703 009e 2068     		ldr	r0, [r4]
 7704 00a0 002F     		cmp	r7, #0
 7705 00a2 40F0A780 		bne	.L1505
 7706 00a6 744B     		ldr	r3, .L1523+8
 7707 00a8 0095     		str	r5, [sp]
 7708 00aa A3FB0213 		umull	r1, r3, r3, r2
 7709 00ae 5B09     		lsrs	r3, r3, #5
 7710 00b0 C3EB0311 		rsb	r1, r3, r3, lsl #4
 7711 00b4 A2EB8102 		sub	r2, r2, r1, lsl #2
 7712 00b8 CDE90132 		strd	r3, r2, [sp, #4]
 7713 00bc B521     		movs	r1, #181
 7714 00be 6F4B     		ldr	r3, .L1523+12
 7715 00c0 6F4A     		ldr	r2, .L1523+16
 7716 00c2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7717 00c6 94F85835 		ldrb	r3, [r4, #1368]	@ zero_extendqisi2
 7718 00ca 3BB9     		cbnz	r3, .L1520
 7719 00cc 2368     		ldr	r3, [r4]
 7720 00ce 6D4A     		ldr	r2, .L1523+20
 7721 00d0 D3F8B409 		ldr	r0, [r3, #2484]
 7722 00d4 6C49     		ldr	r1, .L1523+24
 7723 00d6 0123     		movs	r3, #1
 7724 00d8 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 7725              	.L1520:
 7726 00dc F069     		ldr	r0, [r6, #28]
 7727              	.L1498:
 7728 00de 0023     		movs	r3, #0
 7729 00e0 84F85A35 		strb	r3, [r4, #1370]
 7730 00e4 04B0     		add	sp, sp, #16
 7731              		@ sp needed
 7732 00e6 BDEC028B 		vldm	sp!, {d8}
 7733 00ea BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 7734 00ee FFF7FEBF 		b	_ZN12PrintMonitor12StoppedPrintEv
 7735              	.L1492:
 7736 00f2 94F85935 		ldrb	r3, [r4, #1369]	@ zero_extendqisi2
 7737 00f6 002B     		cmp	r3, #0
 7738 00f8 F1D0     		beq	.L1498
 7739 00fa 644D     		ldr	r5, .L1523+28
 7740              	.L1506:
 7741 00fc B068     		ldr	r0, [r6, #8]
 7742 00fe 94F85A85 		ldrb	r8, [r4, #1370]	@ zero_extendqisi2
 7743 0102 D0ED0A7A 		vldr.32	s15, [r0, #40]
 7744 0106 04F25453 		addw	r3, r4, #1364
 7745 010a 93ED008A 		vldr.32	s16, [r3]
 7746 010e 38EE278A 		vadd.f32	s16, s16, s15
 7747 0112 B8F1000F 		cmp	r8, #0
 7748 0116 18D0     		beq	.L1494
 7749 0118 002F     		cmp	r7, #0
 7750 011a 7DD0     		beq	.L1522
 7751 011c 0027     		movs	r7, #0
 7752 011e 3946     		mov	r1, r7
ARM GAS  /tmp/ccJRi9N9.s 			page 137


 7753 0120 84F85975 		strb	r7, [r4, #1369]
 7754 0124 84F85875 		strb	r7, [r4, #1368]
 7755 0128 FFF7FEFF 		bl	_ZN4Move8SimulateEh
 7756 012c 3946     		mov	r1, r7
 7757 012e 2046     		mov	r0, r4
 7758 0130 FFF7FEFF 		bl	_ZN6GCodes13EndSimulationEP11GCodeBuffer
 7759 0134 9FED4F0A 		vldr.32	s0, .L1523+4
 7760 0138 88EE000A 		vdiv.f32	s0, s16, s0
 7761 013c FFF7FEFF 		bl	lrintf
 7762 0140 0346     		mov	r3, r0
 7763              	.L1497:
 7764 0142 4D49     		ldr	r1, .L1523+8
 7765 0144 2068     		ldr	r0, [r4]
 7766 0146 524A     		ldr	r2, .L1523+32
 7767 0148 16E0     		b	.L1519
 7768              	.L1494:
 7769 014a 4146     		mov	r1, r8
 7770 014c 84F85985 		strb	r8, [r4, #1369]
 7771 0150 84F85885 		strb	r8, [r4, #1368]
 7772 0154 FFF7FEFF 		bl	_ZN4Move8SimulateEh
 7773 0158 4146     		mov	r1, r8
 7774 015a 2046     		mov	r0, r4
 7775 015c FFF7FEFF 		bl	_ZN6GCodes13EndSimulationEP11GCodeBuffer
 7776 0160 9FED440A 		vldr.32	s0, .L1523+4
 7777 0164 88EE000A 		vdiv.f32	s0, s16, s0
 7778 0168 FFF7FEFF 		bl	lrintf
 7779 016c 0346     		mov	r3, r0
 7780 016e 002F     		cmp	r7, #0
 7781 0170 E7D1     		bne	.L1497
 7782              	.L1496:
 7783 0172 4149     		ldr	r1, .L1523+8
 7784 0174 2068     		ldr	r0, [r4]
 7785 0176 474A     		ldr	r2, .L1523+36
 7786              	.L1519:
 7787 0178 A1FB0371 		umull	r7, r1, r1, r3
 7788 017c 4909     		lsrs	r1, r1, #5
 7789 017e C1EB0117 		rsb	r7, r1, r1, lsl #4
 7790 0182 A3EB8707 		sub	r7, r3, r7, lsl #2
 7791 0186 CDE90017 		strd	r1, r7, [sp]
 7792 018a 2B46     		mov	r3, r5
 7793 018c B521     		movs	r1, #181
 7794 018e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7795 0192 F069     		ldr	r0, [r6, #28]
 7796 0194 A3E7     		b	.L1498
 7797              	.L1521:
 7798 0196 0121     		movs	r1, #1
 7799 0198 F068     		ldr	r0, [r6, #12]
 7800 019a FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 7801 019e 94F8A830 		ldrb	r3, [r4, #168]	@ zero_extendqisi2
 7802 01a2 012B     		cmp	r3, #1
 7803 01a4 5ED0     		beq	.L1500
 7804 01a6 022B     		cmp	r3, #2
 7805 01a8 7FF468AF 		bne	.L1499
 7806 01ac 2068     		ldr	r0, [r4]
 7807 01ae 00F60420 		addw	r0, r0, #2564
 7808 01b2 FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 7809 01b6 2068     		ldr	r0, [r4]
ARM GAS  /tmp/ccJRi9N9.s 			page 138


 7810 01b8 00F62420 		addw	r0, r0, #2596
 7811 01bc FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 7812 01c0 2068     		ldr	r0, [r4]
 7813 01c2 00F64420 		addw	r0, r0, #2628
 7814 01c6 FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 7815 01ca 2068     		ldr	r0, [r4]
 7816 01cc 00F66420 		addw	r0, r0, #2660
 7817 01d0 FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 7818              	.L1502:
 7819 01d4 2068     		ldr	r0, [r4]
 7820 01d6 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 7821 01da 0228     		cmp	r0, #2
 7822 01dc 3CD0     		beq	.L1508
 7823 01de F069     		ldr	r0, [r6, #28]
 7824 01e0 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 7825 01e4 DFED237A 		vldr.32	s15, .L1523+4
 7826 01e8 80EE270A 		vdiv.f32	s0, s0, s15
 7827 01ec FFF7FEFF 		bl	lrintf
 7828 01f0 0146     		mov	r1, r0
 7829 01f2 2068     		ldr	r0, [r4]
 7830              	.L1505:
 7831 01f4 204B     		ldr	r3, .L1523+8
 7832 01f6 0095     		str	r5, [sp]
 7833 01f8 A3FB0123 		umull	r2, r3, r3, r1
 7834 01fc 5B09     		lsrs	r3, r3, #5
 7835 01fe C3EB0312 		rsb	r2, r3, r3, lsl #4
 7836 0202 A1EB8201 		sub	r1, r1, r2, lsl #2
 7837 0206 CDE90131 		strd	r3, r1, [sp, #4]
 7838 020a 1D4A     		ldr	r2, .L1523+16
 7839 020c 224B     		ldr	r3, .L1523+40
 7840 020e B521     		movs	r1, #181
 7841 0210 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7842 0214 F069     		ldr	r0, [r6, #28]
 7843 0216 62E7     		b	.L1498
 7844              	.L1522:
 7845 0218 2368     		ldr	r3, [r4]
 7846 021a B0EE480A 		vmov.f32	s0, s16
 7847 021e D3F8B489 		ldr	r8, [r3, #2484]
 7848 0222 FFF7FEFF 		bl	lrintf
 7849 0226 2946     		mov	r1, r5
 7850 0228 0246     		mov	r2, r0
 7851 022a 4046     		mov	r0, r8
 7852 022c FFF7FEFF 		bl	_ZN11MassStorage20RecordSimulationTimeEPKcm
 7853 0230 3946     		mov	r1, r7
 7854 0232 B068     		ldr	r0, [r6, #8]
 7855 0234 84F85975 		strb	r7, [r4, #1369]
 7856 0238 84F85875 		strb	r7, [r4, #1368]
 7857 023c FFF7FEFF 		bl	_ZN4Move8SimulateEh
 7858 0240 3946     		mov	r1, r7
 7859 0242 2046     		mov	r0, r4
 7860 0244 FFF7FEFF 		bl	_ZN6GCodes13EndSimulationEP11GCodeBuffer
 7861 0248 9FED0A0A 		vldr.32	s0, .L1523+4
 7862 024c 88EE000A 		vdiv.f32	s0, s16, s0
 7863 0250 FFF7FEFF 		bl	lrintf
 7864 0254 0346     		mov	r3, r0
 7865 0256 8CE7     		b	.L1496
 7866              	.L1508:
ARM GAS  /tmp/ccJRi9N9.s 			page 139


 7867 0258 104A     		ldr	r2, .L1523+44
 7868 025a 2068     		ldr	r0, [r4]
 7869 025c 0121     		movs	r1, #1
 7870 025e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 7871 0262 11E7     		b	.L1503
 7872              	.L1500:
 7873 0264 9FED0E0A 		vldr.32	s0, .L1523+48
 7874 0268 2068     		ldr	r0, [r4]
 7875 026a FFF7FEFF 		bl	_ZN8Platform11SetLaserPwmEf
 7876 026e B1E7     		b	.L1502
 7877              	.L1524:
 7878              		.align	2
 7879              	.L1523:
 7880 0270 00000000 		.word	reprap
 7881 0274 00007042 		.word	1114636288
 7882 0278 89888888 		.word	-2004318071
 7883 027c 94000000 		.word	.LC135
 7884 0280 A0000000 		.word	.LC136
 7885 0284 28000000 		.word	.LC16
 7886 0288 34000000 		.word	.LC17
 7887 028c 00000000 		.word	.LC131
 7888 0290 40000000 		.word	.LC133
 7889 0294 0C000000 		.word	.LC132
 7890 0298 D0000000 		.word	.LC137
 7891 029c 80000000 		.word	.LC134
 7892 02a0 00000000 		.word	0
 7893              		.size	_ZN6GCodes9StopPrintE15StopPrintReason, .-_ZN6GCodes9StopPrintE15StopPrintReason
 7894              		.section	.text._ZN6GCodes10AbortPrintER11GCodeBuffer,"ax",%progbits
 7895              		.align	1
 7896              		.p2align 2,,3
 7897              		.global	_ZN6GCodes10AbortPrintER11GCodeBuffer
 7898              		.syntax unified
 7899              		.thumb
 7900              		.thumb_func
 7901              		.fpu fpv4-sp-d16
 7902              		.type	_ZN6GCodes10AbortPrintER11GCodeBuffer, %function
 7903              	_ZN6GCodes10AbortPrintER11GCodeBuffer:
 7904              		@ args = 0, pretend = 0, frame = 0
 7905              		@ frame_needed = 0, uses_anonymous_args = 0
 7906 0000 38B5     		push	{r3, r4, r5, lr}
 7907 0002 0446     		mov	r4, r0
 7908 0004 0D46     		mov	r5, r1
 7909 0006 0846     		mov	r0, r1
 7910 0008 E168     		ldr	r1, [r4, #12]
 7911 000a FFF7FEFF 		bl	_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput
 7912 000e 236C     		ldr	r3, [r4, #64]
 7913 0010 1B68     		ldr	r3, [r3]
 7914 0012 AB42     		cmp	r3, r5
 7915 0014 00D0     		beq	.L1528
 7916 0016 38BD     		pop	{r3, r4, r5, pc}
 7917              	.L1528:
 7918 0018 2046     		mov	r0, r4
 7919 001a 0221     		movs	r1, #2
 7920 001c BDE83840 		pop	{r3, r4, r5, lr}
 7921 0020 FFF7FEBF 		b	_ZN6GCodes9StopPrintE15StopPrintReason
 7922              		.size	_ZN6GCodes10AbortPrintER11GCodeBuffer, .-_ZN6GCodes10AbortPrintER11GCodeBuffer
 7923              		.section	.text._ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef,"ax",%progbits
ARM GAS  /tmp/ccJRi9N9.s 			page 140


 7924              		.align	1
 7925              		.p2align 2,,3
 7926              		.global	_ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef
 7927              		.syntax unified
 7928              		.thumb
 7929              		.thumb_func
 7930              		.fpu fpv4-sp-d16
 7931              		.type	_ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef, %function
 7932              	_ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef:
 7933              		@ args = 0, pretend = 0, frame = 0
 7934              		@ frame_needed = 0, uses_anonymous_args = 0
 7935 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 7936 0004 8E68     		ldr	r6, [r1, #8]
 7937 0006 06F10807 		add	r7, r6, #8
 7938 000a 0C46     		mov	r4, r1
 7939 000c 0546     		mov	r5, r0
 7940 000e 3946     		mov	r1, r7
 7941 0010 C068     		ldr	r0, [r0, #12]
 7942 0012 9046     		mov	r8, r2
 7943 0014 FFF7FEFF 		bl	_ZN14FileGCodeInput12ReadFromFileER8FileData
 7944 0018 0128     		cmp	r0, #1
 7945 001a 08D0     		beq	.L1531
 7946 001c 68D3     		bcc	.L1532
 7947 001e 0228     		cmp	r0, #2
 7948 0020 64D1     		bne	.L1529
 7949 0022 2146     		mov	r1, r4
 7950 0024 2846     		mov	r0, r5
 7951 0026 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 7952 002a FFF7FEBF 		b	_ZN6GCodes10AbortPrintER11GCodeBuffer
 7953              	.L1531:
 7954 002e 236A     		ldr	r3, [r4, #32]
 7955 0030 2BB1     		cbz	r3, .L1535
 7956 0032 0A21     		movs	r1, #10
 7957 0034 2046     		mov	r0, r4
 7958 0036 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 7959 003a 0028     		cmp	r0, #0
 7960 003c 5FD1     		bne	.L1565
 7961              	.L1535:
 7962 003e 2046     		mov	r0, r4
 7963 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 7964 0044 A368     		ldr	r3, [r4, #8]
 7965 0046 D3F80080 		ldr	r8, [r3]
 7966 004a B8F1000F 		cmp	r8, #0
 7967 004e 61D0     		beq	.L1566
 7968 0050 E868     		ldr	r0, [r5, #12]
 7969 0052 3946     		mov	r1, r7
 7970 0054 FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 7971 0058 B068     		ldr	r0, [r6, #8]
 7972 005a 18B1     		cbz	r0, .L1538
 7973 005c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 7974 0060 0023     		movs	r3, #0
 7975 0062 B360     		str	r3, [r6, #8]
 7976              	.L1538:
 7977 0064 95F8AC30 		ldrb	r3, [r5, #172]	@ zero_extendqisi2
 7978 0068 D3B1     		cbz	r3, .L1539
 7979 006a 05F11800 		add	r0, r5, #24
 7980 006e 05F13807 		add	r7, r5, #56
ARM GAS  /tmp/ccJRi9N9.s 			page 141


 7981              	.L1540:
 7982 0072 50F8043B 		ldr	r3, [r0], #4
 7983 0076 A268     		ldr	r2, [r4, #8]
 7984 0078 9B68     		ldr	r3, [r3, #8]
 7985 007a 167E     		ldrb	r6, [r2, #24]	@ zero_extendqisi2
 7986 007c 197E     		ldrb	r1, [r3, #24]	@ zero_extendqisi2
 7987 007e 66F30001 		bfi	r1, r6, #0, #1
 7988 0082 1976     		strb	r1, [r3, #24]
 7989 0084 117E     		ldrb	r1, [r2, #24]	@ zero_extendqisi2
 7990 0086 1E7E     		ldrb	r6, [r3, #24]	@ zero_extendqisi2
 7991 0088 C1F34001 		ubfx	r1, r1, #1, #1
 7992 008c 61F34106 		bfi	r6, r1, #1, #1
 7993 0090 1E76     		strb	r6, [r3, #24]
 7994 0092 5268     		ldr	r2, [r2, #4]	@ float
 7995 0094 5A60     		str	r2, [r3, #4]	@ float
 7996 0096 B842     		cmp	r0, r7
 7997 0098 EBD1     		bne	.L1540
 7998 009a 0023     		movs	r3, #0
 7999 009c 85F8AC30 		strb	r3, [r5, #172]
 8000              	.L1539:
 8001 00a0 2046     		mov	r0, r4
 8002 00a2 FFF7FEFF 		bl	_ZN11GCodeBuffer8PopStateEv
 8003 00a6 0028     		cmp	r0, #0
 8004 00a8 4DD0     		beq	.L1567
 8005              	.L1541:
 8006 00aa 2046     		mov	r0, r4
 8007 00ac FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 8008 00b0 A368     		ldr	r3, [r4, #8]
 8009 00b2 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 8010 00b4 D3B9     		cbnz	r3, .L1529
 8011 00b6 2146     		mov	r1, r4
 8012 00b8 2846     		mov	r0, r5
 8013 00ba FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 8014 00be 254B     		ldr	r3, .L1568
 8015 00c0 0122     		movs	r2, #1
 8016 00c2 2846     		mov	r0, r5
 8017 00c4 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 8018 00c8 95F8AB30 		ldrb	r3, [r5, #171]	@ zero_extendqisi2
 8019 00cc 73B1     		cbz	r3, .L1529
 8020 00ce 2B6C     		ldr	r3, [r5, #64]
 8021 00d0 1B68     		ldr	r3, [r3]
 8022 00d2 A342     		cmp	r3, r4
 8023 00d4 0AD1     		bne	.L1529
 8024 00d6 2046     		mov	r0, r4
 8025 00d8 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 8026 00dc 0646     		mov	r6, r0
 8027 00de 28B9     		cbnz	r0, .L1529
 8028 00e0 2046     		mov	r0, r4
 8029 00e2 1D49     		ldr	r1, .L1568+4
 8030 00e4 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKc
 8031 00e8 85F8AB60 		strb	r6, [r5, #171]
 8032              	.L1529:
 8033 00ec BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 8034              	.L1532:
 8035 00f0 E868     		ldr	r0, [r5, #12]
 8036 00f2 0368     		ldr	r3, [r0]
 8037 00f4 2146     		mov	r1, r4
ARM GAS  /tmp/ccJRi9N9.s 			page 142


 8038 00f6 5B68     		ldr	r3, [r3, #4]
 8039 00f8 9847     		blx	r3
 8040 00fa 0028     		cmp	r0, #0
 8041 00fc F6D0     		beq	.L1529
 8042              	.L1565:
 8043 00fe 2146     		mov	r1, r4
 8044 0100 4246     		mov	r2, r8
 8045 0102 2846     		mov	r0, r5
 8046 0104 FFF7FEFF 		bl	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef
 8047 0108 0146     		mov	r1, r0
 8048 010a 2046     		mov	r0, r4
 8049 010c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 8050 0110 FFF7FEBF 		b	_ZN11GCodeBuffer11SetFinishedEb
 8051              	.L1566:
 8052 0114 2146     		mov	r1, r4
 8053 0116 2846     		mov	r0, r5
 8054 0118 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8055 011c 0028     		cmp	r0, #0
 8056 011e E5D0     		beq	.L1529
 8057 0120 2B6D     		ldr	r3, [r5, #80]
 8058 0122 1B68     		ldr	r3, [r3]
 8059 0124 93F82830 		ldrb	r3, [r3, #40]	@ zero_extendqisi2
 8060 0128 083B     		subs	r3, r3, #8
 8061 012a 012B     		cmp	r3, #1
 8062 012c DED9     		bls	.L1529
 8063 012e D5F8F805 		ldr	r0, [r5, #1528]
 8064 0132 FFF7FEFF 		bl	_ZNK10GCodeQueue6IsIdleEv
 8065 0136 0028     		cmp	r0, #0
 8066 0138 D8D0     		beq	.L1529
 8067 013a 4146     		mov	r1, r8
 8068 013c 2846     		mov	r0, r5
 8069 013e BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 8070 0142 FFF7FEBF 		b	_ZN6GCodes9StopPrintE15StopPrintReason
 8071              	.L1567:
 8072 0146 054A     		ldr	r2, .L1568+8
 8073 0148 2868     		ldr	r0, [r5]
 8074 014a 40F2B511 		movw	r1, #437
 8075 014e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8076 0152 AAE7     		b	.L1541
 8077              	.L1569:
 8078              		.align	2
 8079              	.L1568:
 8080 0154 24000000 		.word	.LC80
 8081 0158 00000000 		.word	.LC138
 8082 015c 00000000 		.word	.LC43
 8083              		.size	_ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef, .-_ZN6GCodes11DoFilePrintER11GCodeBuffer
 8084              		.section	.text._ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef,"ax",%progbits
 8085              		.align	1
 8086              		.p2align 2,,3
 8087              		.global	_ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef
 8088              		.syntax unified
 8089              		.thumb
 8090              		.thumb_func
 8091              		.fpu fpv4-sp-d16
 8092              		.type	_ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef, %function
 8093              	_ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef:
 8094              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccJRi9N9.s 			page 143


 8095              		@ frame_needed = 0, uses_anonymous_args = 0
 8096 0000 70B5     		push	{r4, r5, r6, lr}
 8097 0002 0C46     		mov	r4, r1
 8098 0004 1646     		mov	r6, r2
 8099 0006 0546     		mov	r5, r0
 8100 0008 FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 8101 000c 18B1     		cbz	r0, .L1571
 8102 000e 2B6C     		ldr	r3, [r5, #64]
 8103 0010 1968     		ldr	r1, [r3]
 8104 0012 A142     		cmp	r1, r4
 8105 0014 2ED0     		beq	.L1592
 8106              	.L1571:
 8107 0016 94F82830 		ldrb	r3, [r4, #40]	@ zero_extendqisi2
 8108 001a 083B     		subs	r3, r3, #8
 8109 001c 012B     		cmp	r3, #1
 8110 001e 1ED9     		bls	.L1572
 8111 0020 A368     		ldr	r3, [r4, #8]
 8112 0022 9B68     		ldr	r3, [r3, #8]
 8113 0024 A3B9     		cbnz	r3, .L1593
 8114 0026 2B6D     		ldr	r3, [r5, #80]
 8115 0028 1B68     		ldr	r3, [r3]
 8116 002a 9C42     		cmp	r4, r3
 8117 002c 41D0     		beq	.L1594
 8118 002e AB6B     		ldr	r3, [r5, #56]
 8119 0030 1B68     		ldr	r3, [r3]
 8120 0032 9C42     		cmp	r4, r3
 8121 0034 23D0     		beq	.L1595
 8122 0036 EB6B     		ldr	r3, [r5, #60]
 8123 0038 1B68     		ldr	r3, [r3]
 8124 003a 9C42     		cmp	r4, r3
 8125 003c 40D0     		beq	.L1596
 8126 003e 6B6C     		ldr	r3, [r5, #68]
 8127 0040 1B68     		ldr	r3, [r3]
 8128 0042 9C42     		cmp	r4, r3
 8129 0044 2ED0     		beq	.L1597
 8130              	.L1578:
 8131 0046 AB6C     		ldr	r3, [r5, #72]
 8132 0048 1B68     		ldr	r3, [r3]
 8133 004a 9C42     		cmp	r4, r3
 8134 004c 1ED0     		beq	.L1598
 8135              	.L1570:
 8136 004e 70BD     		pop	{r4, r5, r6, pc}
 8137              	.L1593:
 8138 0050 3246     		mov	r2, r6
 8139 0052 2146     		mov	r1, r4
 8140 0054 2846     		mov	r0, r5
 8141 0056 BDE87040 		pop	{r4, r5, r6, lr}
 8142 005a FFF7FEBF 		b	_ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef
 8143              	.L1572:
 8144 005e 2146     		mov	r1, r4
 8145 0060 3246     		mov	r2, r6
 8146 0062 2846     		mov	r0, r5
 8147 0064 FFF7FEFF 		bl	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef
 8148 0068 0146     		mov	r1, r0
 8149 006a 2046     		mov	r0, r4
 8150 006c BDE87040 		pop	{r4, r5, r6, lr}
 8151 0070 FFF7FEBF 		b	_ZN11GCodeBuffer11SetFinishedEb
ARM GAS  /tmp/ccJRi9N9.s 			page 144


 8152              	.L1592:
 8153 0074 2846     		mov	r0, r5
 8154 0076 BDE87040 		pop	{r4, r5, r6, lr}
 8155 007a FFF7FEBF 		b	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 8156              	.L1595:
 8157 007e 6868     		ldr	r0, [r5, #4]
 8158              	.L1591:
 8159 0080 0368     		ldr	r3, [r0]
 8160 0082 2146     		mov	r1, r4
 8161 0084 5B68     		ldr	r3, [r3, #4]
 8162 0086 BDE87040 		pop	{r4, r5, r6, lr}
 8163 008a 1847     		bx	r3
 8164              	.L1598:
 8165 008c 6869     		ldr	r0, [r5, #20]
 8166 008e 0368     		ldr	r3, [r0]
 8167 0090 2146     		mov	r1, r4
 8168 0092 5B68     		ldr	r3, [r3, #4]
 8169 0094 9847     		blx	r3
 8170 0096 0028     		cmp	r0, #0
 8171 0098 D9D0     		beq	.L1570
 8172 009a 2B68     		ldr	r3, [r5]
 8173 009c 0122     		movs	r2, #1
 8174 009e 83F89829 		strb	r2, [r3, #2456]
 8175 00a2 70BD     		pop	{r4, r5, r6, pc}
 8176              	.L1597:
 8177 00a4 074B     		ldr	r3, .L1599
 8178 00a6 9B69     		ldr	r3, [r3, #24]
 8179 00a8 1B69     		ldr	r3, [r3, #16]
 8180 00aa 002B     		cmp	r3, #0
 8181 00ac CBD1     		bne	.L1578
 8182 00ae 2869     		ldr	r0, [r5, #16]
 8183 00b0 E6E7     		b	.L1591
 8184              	.L1594:
 8185 00b2 2146     		mov	r1, r4
 8186 00b4 D5F8F805 		ldr	r0, [r5, #1528]
 8187 00b8 BDE87040 		pop	{r4, r5, r6, lr}
 8188 00bc FFF7FEBF 		b	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer
 8189              	.L1596:
 8190 00c0 A868     		ldr	r0, [r5, #8]
 8191 00c2 DDE7     		b	.L1591
 8192              	.L1600:
 8193              		.align	2
 8194              	.L1599:
 8195 00c4 00000000 		.word	reprap
 8196              		.size	_ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef, .-_ZN6GCodes14StartNextGCodeER11GCode
 8197              		.section	.text._ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc,"ax",%progbits
 8198              		.align	1
 8199              		.p2align 2,,3
 8200              		.global	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 8201              		.syntax unified
 8202              		.thumb
 8203              		.thumb_func
 8204              		.fpu fpv4-sp-d16
 8205              		.type	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc, %function
 8206              	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc:
 8207              		@ args = 0, pretend = 0, frame = 0
 8208              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccJRi9N9.s 			page 145


 8209 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 8210 0004 026C     		ldr	r2, [r0, #64]
 8211 0006 D0F89062 		ldr	r6, [r0, #656]
 8212 000a 1268     		ldr	r2, [r2]
 8213 000c 8A42     		cmp	r2, r1
 8214 000e 82B0     		sub	sp, sp, #8
 8215 0010 0446     		mov	r4, r0
 8216 0012 0F46     		mov	r7, r1
 8217 0014 9846     		mov	r8, r3
 8218 0016 00F08A80 		beq	.L1639
 8219 001a 9368     		ldr	r3, [r2, #8]
 8220 001c 8D4D     		ldr	r5, .L1645
 8221 001e 5B68     		ldr	r3, [r3, #4]	@ float
 8222 0020 7362     		str	r3, [r6, #36]	@ float
 8223 0022 A868     		ldr	r0, [r5, #8]
 8224 0024 D4F89012 		ldr	r1, [r4, #656]
 8225 0028 FFF7FEFF 		bl	_ZN4Move10PausePrintER12RestorePoint
 8226 002c 0646     		mov	r6, r0
 8227 002e 0028     		cmp	r0, #0
 8228 0030 40F0B080 		bne	.L1640
 8229 0034 D4F85021 		ldr	r2, [r4, #336]
 8230 0038 D4F89032 		ldr	r3, [r4, #656]
 8231 003c 002A     		cmp	r2, #0
 8232 003e 40F0CE80 		bne	.L1641
 8233 0042 216C     		ldr	r1, [r4, #64]
 8234 0044 0968     		ldr	r1, [r1]
 8235 0046 8968     		ldr	r1, [r1, #8]
 8236 0048 4968     		ldr	r1, [r1, #4]	@ float
 8237 004a 5962     		str	r1, [r3, #36]	@ float
 8238 004c D4F89032 		ldr	r3, [r4, #656]
 8239 0050 D4F8C812 		ldr	r1, [r4, #712]	@ float
 8240 0054 9962     		str	r1, [r3, #40]	@ float
 8241 0056 D4F89032 		ldr	r3, [r4, #656]
 8242 005a 0022     		movs	r2, #0
 8243 005c DA62     		str	r2, [r3, #44]	@ float
 8244 005e E068     		ldr	r0, [r4, #12]
 8245 0060 226C     		ldr	r2, [r4, #64]
 8246 0062 0368     		ldr	r3, [r0]
 8247 0064 1668     		ldr	r6, [r2]
 8248 0066 9B68     		ldr	r3, [r3, #8]
 8249 0068 9847     		blx	r3
 8250 006a 0146     		mov	r1, r0
 8251 006c 3046     		mov	r0, r6
 8252 006e D4F89062 		ldr	r6, [r4, #656]
 8253 0072 FFF7FEFF 		bl	_ZNK11GCodeBuffer15GetFilePositionEj
 8254 0076 3063     		str	r0, [r6, #48]
 8255 0078 D4F89032 		ldr	r3, [r4, #656]
 8256 007c B4F84C21 		ldrh	r2, [r4, #332]
 8257 0080 9A86     		strh	r2, [r3, #52]	@ movhi
 8258              	.L1607:
 8259 0082 D4F89C32 		ldr	r3, [r4, #668]
 8260 0086 73B1     		cbz	r3, .L1609
 8261 0088 04F1B401 		add	r1, r4, #180
 8262 008c 0023     		movs	r3, #0
 8263              	.L1611:
 8264 008e D4F89022 		ldr	r2, [r4, #656]
 8265 0092 51F8040B 		ldr	r0, [r1], #4	@ float
ARM GAS  /tmp/ccJRi9N9.s 			page 146


 8266 0096 02EB8302 		add	r2, r2, r3, lsl #2
 8267 009a 0133     		adds	r3, r3, #1
 8268 009c 1060     		str	r0, [r2]	@ float
 8269 009e D4F89C22 		ldr	r2, [r4, #668]
 8270 00a2 9A42     		cmp	r2, r3
 8271 00a4 F3D8     		bhi	.L1611
 8272              	.L1609:
 8273 00a6 236C     		ldr	r3, [r4, #64]
 8274 00a8 1B68     		ldr	r3, [r3]
 8275 00aa 9E68     		ldr	r6, [r3, #8]
 8276 00ac B368     		ldr	r3, [r6, #8]
 8277 00ae 23B1     		cbz	r3, .L1612
 8278 00b0 D4F89032 		ldr	r3, [r4, #656]
 8279 00b4 1B6B     		ldr	r3, [r3, #48]
 8280 00b6 0133     		adds	r3, r3, #1
 8281 00b8 57D1     		bne	.L1642
 8282              	.L1612:
 8283 00ba D4F8F805 		ldr	r0, [r4, #1528]
 8284 00be FFF7FEFF 		bl	_ZN10GCodeQueue12PurgeEntriesEv
 8285 00c2 AB6C     		ldr	r3, [r5, #72]
 8286 00c4 1B07     		lsls	r3, r3, #28
 8287 00c6 00F18180 		bmi	.L1643
 8288              	.L1605:
 8289 00ca 04F58F66 		add	r6, r4, #1144
 8290 00ce 0025     		movs	r5, #0
 8291              	.L1613:
 8292 00d0 2946     		mov	r1, r5
 8293 00d2 2068     		ldr	r0, [r4]
 8294 00d4 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 8295 00d8 0135     		adds	r5, r5, #1
 8296 00da 092D     		cmp	r5, #9
 8297 00dc A6EC010A 		vstmia.32	r6!, {s0}
 8298 00e0 F6D1     		bne	.L1613
 8299 00e2 04F29C43 		addw	r3, r4, #1180
 8300 00e6 5B48     		ldr	r0, .L1645
 8301 00e8 1A68     		ldr	r2, [r3]	@ float
 8302 00ea 04F59463 		add	r3, r4, #1184
 8303 00ee 1A60     		str	r2, [r3]	@ float
 8304 00f0 D4F89052 		ldr	r5, [r4, #656]
 8305 00f4 FFF7FEFF 		bl	_ZNK6RepRap20GetCurrentToolNumberEv
 8306 00f8 A863     		str	r0, [r5, #56]
 8307 00fa 94F85815 		ldrb	r1, [r4, #1368]	@ zero_extendqisi2
 8308 00fe 81B3     		cbz	r1, .L1644
 8309              	.L1614:
 8310 0100 BA68     		ldr	r2, [r7, #8]
 8311 0102 0F21     		movs	r1, #15
 8312 0104 0123     		movs	r3, #1
 8313 0106 1175     		strb	r1, [r2, #20]
 8314 0108 84F8AA30 		strb	r3, [r4, #170]
 8315 010c B8F1000F 		cmp	r8, #0
 8316 0110 0AD0     		beq	.L1601
 8317 0112 2068     		ldr	r0, [r4]
 8318 0114 0093     		str	r3, [sp]
 8319 0116 0023     		movs	r3, #0
 8320 0118 0193     		str	r3, [sp, #4]
 8321 011a 4246     		mov	r2, r8
 8322 011c 9FED4E0A 		vldr.32	s0, .L1645+4
ARM GAS  /tmp/ccJRi9N9.s 			page 147


 8323 0120 4E4B     		ldr	r3, .L1645+8
 8324 0122 3521     		movs	r1, #53
 8325 0124 FFF7FEFF 		bl	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm
 8326              	.L1601:
 8327 0128 02B0     		add	sp, sp, #8
 8328              		@ sp needed
 8329 012a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 8330              	.L1639:
 8331 012e D0F89C32 		ldr	r3, [r0, #668]
 8332 0132 63B1     		cbz	r3, .L1603
 8333 0134 00F1B401 		add	r1, r0, #180
 8334 0138 3246     		mov	r2, r6
 8335 013a 0023     		movs	r3, #0
 8336              	.L1604:
 8337 013c 51F8040B 		ldr	r0, [r1], #4	@ float
 8338 0140 42F8040B 		str	r0, [r2], #4	@ float
 8339 0144 D4F89C02 		ldr	r0, [r4, #668]
 8340 0148 0133     		adds	r3, r3, #1
 8341 014a 8342     		cmp	r3, r0
 8342 014c F6D3     		bcc	.L1604
 8343              	.L1603:
 8344 014e BB68     		ldr	r3, [r7, #8]
 8345 0150 5B68     		ldr	r3, [r3, #4]	@ float
 8346 0152 7362     		str	r3, [r6, #36]	@ float
 8347 0154 D4F8C832 		ldr	r3, [r4, #712]	@ float
 8348 0158 B362     		str	r3, [r6, #40]	@ float
 8349 015a B4F84C31 		ldrh	r3, [r4, #332]
 8350 015e B386     		strh	r3, [r6, #52]	@ movhi
 8351 0160 B3E7     		b	.L1605
 8352              	.L1644:
 8353 0162 2046     		mov	r0, r4
 8354 0164 FFF7FEFF 		bl	_ZN6GCodes14SaveResumeInfoEb
 8355 0168 CAE7     		b	.L1614
 8356              	.L1642:
 8357 016a 06F10801 		add	r1, r6, #8
 8358 016e E068     		ldr	r0, [r4, #12]
 8359 0170 FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 8360 0174 D4F89032 		ldr	r3, [r4, #656]
 8361 0178 B068     		ldr	r0, [r6, #8]
 8362 017a 196B     		ldr	r1, [r3, #48]
 8363 017c FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 8364 0180 236C     		ldr	r3, [r4, #64]
 8365 0182 1868     		ldr	r0, [r3]
 8366 0184 FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 8367 0188 236C     		ldr	r3, [r4, #64]
 8368 018a 2046     		mov	r0, r4
 8369 018c 1968     		ldr	r1, [r3]
 8370 018e FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 8371 0192 92E7     		b	.L1612
 8372              	.L1640:
 8373 0194 04F1B402 		add	r2, r4, #180
 8374 0198 D4F89012 		ldr	r1, [r4, #656]
 8375 019c 2046     		mov	r0, r4
 8376 019e FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 8377 01a2 94F84F21 		ldrb	r2, [r4, #335]	@ zero_extendqisi2
 8378 01a6 0023     		movs	r3, #0
 8379 01a8 0021     		movs	r1, #0
ARM GAS  /tmp/ccJRi9N9.s 			page 148


 8380 01aa 63F30002 		bfi	r2, r3, #0, #1
 8381 01ae 84F84F21 		strb	r2, [r4, #335]
 8382 01b2 C4F85031 		str	r3, [r4, #336]
 8383 01b6 84F89931 		strb	r3, [r4, #409]
 8384 01ba 84F89831 		strb	r3, [r4, #408]
 8385 01be C4F84831 		str	r3, [r4, #328]
 8386 01c2 84F84E31 		strb	r3, [r4, #334]
 8387 01c6 C4F86011 		str	r1, [r4, #352]	@ float
 8388 01ca 5AE7     		b	.L1607
 8389              	.L1643:
 8390 01cc D4F89032 		ldr	r3, [r4, #656]
 8391 01d0 234A     		ldr	r2, .L1645+12
 8392 01d2 1B6B     		ldr	r3, [r3, #48]
 8393 01d4 2068     		ldr	r0, [r4]
 8394 01d6 3521     		movs	r1, #53
 8395 01d8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8396 01dc 75E7     		b	.L1605
 8397              	.L1641:
 8398 01de D4F83421 		ldr	r2, [r4, #308]	@ float
 8399 01e2 9A62     		str	r2, [r3, #40]	@ float
 8400 01e4 D4F89032 		ldr	r3, [r4, #656]
 8401 01e8 D4F83821 		ldr	r2, [r4, #312]
 8402 01ec 1A63     		str	r2, [r3, #48]
 8403 01ee D4F89032 		ldr	r3, [r4, #656]
 8404 01f2 D4F83021 		ldr	r2, [r4, #304]	@ float
 8405 01f6 5A62     		str	r2, [r3, #36]	@ float
 8406 01f8 D4F85411 		ldr	r1, [r4, #340]
 8407 01fc D4F85021 		ldr	r2, [r4, #336]
 8408 0200 D4F89032 		ldr	r3, [r4, #656]
 8409 0204 8A1A     		subs	r2, r1, r2
 8410 0206 07EE902A 		vmov	s15, r2	@ int
 8411 020a 07EE101A 		vmov	s14, r1	@ int
 8412 020e F8EE677A 		vcvt.f32.u32	s15, s15
 8413 0212 B8EE477A 		vcvt.f32.u32	s14, s14
 8414 0216 04F1B402 		add	r2, r4, #180
 8415 021a C7EE876A 		vdiv.f32	s13, s15, s14
 8416 021e 2046     		mov	r0, r4
 8417 0220 C3ED0B6A 		vstr.32	s13, [r3, #44]
 8418 0224 D4F89012 		ldr	r1, [r4, #656]
 8419 0228 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 8420 022c 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 8421 0230 C4F85061 		str	r6, [r4, #336]
 8422 0234 0022     		movs	r2, #0
 8423 0236 66F30003 		bfi	r3, r6, #0, #1
 8424 023a 84F89961 		strb	r6, [r4, #409]
 8425 023e 84F89861 		strb	r6, [r4, #408]
 8426 0242 C4F84861 		str	r6, [r4, #328]
 8427 0246 84F84E61 		strb	r6, [r4, #334]
 8428 024a 84F84F31 		strb	r3, [r4, #335]
 8429 024e C4F86021 		str	r2, [r4, #352]	@ float
 8430 0252 16E7     		b	.L1607
 8431              	.L1646:
 8432              		.align	2
 8433              	.L1645:
 8434 0254 00000000 		.word	reprap
 8435 0258 00000000 		.word	0
 8436 025c 20000000 		.word	.LC140
ARM GAS  /tmp/ccJRi9N9.s 			page 149


 8437 0260 00000000 		.word	.LC139
 8438              		.size	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc, .-_ZN6GCodes7DoPauseER11GCodeBuffer11Paus
 8439              		.section	.text.hot._ZN6GCodes14DoStraightMoveER11GCodeBufferb,"ax",%progbits
 8440              		.align	1
 8441              		.p2align 2,,3
 8442              		.global	_ZN6GCodes14DoStraightMoveER11GCodeBufferb
 8443              		.syntax unified
 8444              		.thumb
 8445              		.thumb_func
 8446              		.fpu fpv4-sp-d16
 8447              		.type	_ZN6GCodes14DoStraightMoveER11GCodeBufferb, %function
 8448              	_ZN6GCodes14DoStraightMoveER11GCodeBufferb:
 8449              		@ args = 0, pretend = 0, frame = 8
 8450              		@ frame_needed = 0, uses_anonymous_args = 0
 8451 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 8452 0004 2DED028B 		vpush.64	{d8}
 8453 0008 90F84F31 		ldrb	r3, [r0, #335]	@ zero_extendqisi2
 8454 000c 0446     		mov	r4, r0
 8455 000e 85B0     		sub	sp, sp, #20
 8456 0010 62F30413 		bfi	r3, r2, #4, #1
 8457 0014 0025     		movs	r5, #0
 8458 0016 84F84F31 		strb	r3, [r4, #335]
 8459 001a CD48     		ldr	r0, .L1736
 8460 001c C4F84851 		str	r5, [r4, #328]
 8461 0020 84F84E51 		strb	r5, [r4, #334]
 8462 0024 0E46     		mov	r6, r1
 8463 0026 0392     		str	r2, [sp, #12]
 8464 0028 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 8465 002c C4F84001 		str	r0, [r4, #320]
 8466 0030 C748     		ldr	r0, .L1736
 8467 0032 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 8468 0036 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 8469 003a C4F84401 		str	r0, [r4, #324]
 8470 003e 65F34103 		bfi	r3, r5, #1, #1
 8471 0042 C4F88056 		str	r5, [r4, #1664]
 8472 0046 84F84F31 		strb	r3, [r4, #335]
 8473 004a 3046     		mov	r0, r6
 8474 004c 5321     		movs	r1, #83
 8475 004e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8476 0052 0028     		cmp	r0, #0
 8477 0054 40F0FA80 		bne	.L1648
 8478              	.L1721:
 8479 0058 94F84E31 		ldrb	r3, [r4, #334]	@ zero_extendqisi2
 8480              	.L1649:
 8481 005c 33B9     		cbnz	r3, .L1651
 8482 005e 5221     		movs	r1, #82
 8483 0060 3046     		mov	r0, r6
 8484 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8485 0066 0028     		cmp	r0, #0
 8486 0068 40F02581 		bne	.L1723
 8487              	.L1651:
 8488 006c 5021     		movs	r1, #80
 8489 006e 3046     		mov	r0, r6
 8490 0070 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8491 0074 0028     		cmp	r0, #0
 8492 0076 40F00D81 		bne	.L1655
 8493 007a 8146     		mov	r9, r0
ARM GAS  /tmp/ccJRi9N9.s 			page 150


 8494              	.L1656:
 8495 007c 94F84E51 		ldrb	r5, [r4, #334]	@ zero_extendqisi2
 8496 0080 04F1DC03 		add	r3, r4, #220
 8497 0084 0293     		str	r3, [sp, #8]
 8498 0086 002D     		cmp	r5, #0
 8499 0088 40F0F280 		bne	.L1724
 8500              	.L1657:
 8501 008c D4F89C22 		ldr	r2, [r4, #668]
 8502 0090 0299     		ldr	r1, [sp, #8]
 8503 0092 9200     		lsls	r2, r2, #2
 8504 0094 04F58670 		add	r0, r4, #268
 8505 0098 FFF7FEFF 		bl	memcpy
 8506 009c D4F89C32 		ldr	r3, [r4, #668]
 8507 00a0 94ED2D8A 		vldr.32	s16, [r4, #180]
 8508 00a4 D4ED2E8A 		vldr.32	s17, [r4, #184]
 8509 00a8 002B     		cmp	r3, #0
 8510 00aa 00F08381 		beq	.L1686
 8511 00ae 4FF00008 		mov	r8, #0
 8512 00b2 C346     		mov	fp, r8
 8513 00b4 04F25947 		addw	r7, r4, #1113
 8514 00b8 04F1B405 		add	r5, r4, #180
 8515 00bc 4FF0010A 		mov	r10, #1
 8516 00c0 11E0     		b	.L1666
 8517              	.L1725:
 8518 00c2 B368     		ldr	r3, [r6, #8]
 8519 00c4 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 8520 00c6 9B07     		lsls	r3, r3, #30
 8521 00c8 44BF     		itt	mi
 8522 00ca D5ED0A7A 		vldrmi.32	s15, [r5, #40]
 8523 00ce 37EE800A 		vaddmi.f32	s0, s15, s0
 8524 00d2 85ED0A0A 		vstr.32	s0, [r5, #40]
 8525              	.L1659:
 8526 00d6 D4F89C32 		ldr	r3, [r4, #668]
 8527 00da 0BF1010B 		add	fp, fp, #1
 8528 00de 5B45     		cmp	r3, fp
 8529 00e0 05F10405 		add	r5, r5, #4
 8530 00e4 37D9     		bls	.L1658
 8531              	.L1666:
 8532 00e6 17F8011F 		ldrb	r1, [r7, #1]!	@ zero_extendqisi2
 8533 00ea 3046     		mov	r0, r6
 8534 00ec FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8535 00f0 0028     		cmp	r0, #0
 8536 00f2 F0D0     		beq	.L1659
 8537 00f4 94F84E31 		ldrb	r3, [r4, #334]	@ zero_extendqisi2
 8538 00f8 5BB1     		cbz	r3, .L1660
 8539 00fa B368     		ldr	r3, [r6, #8]
 8540 00fc 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 8541 00fe 9A07     		lsls	r2, r3, #30
 8542 0100 07D4     		bmi	.L1660
 8543 0102 934B     		ldr	r3, .L1736
 8544 0104 9B68     		ldr	r3, [r3, #8]
 8545 0106 D3F8583A 		ldr	r3, [r3, #2648]
 8546 010a 9B7B     		ldrb	r3, [r3, #14]	@ zero_extendqisi2
 8547 010c 032B     		cmp	r3, #3
 8548 010e 00F04981 		beq	.L1687
 8549              	.L1660:
 8550 0112 0AFA0BF3 		lsl	r3, r10, fp
ARM GAS  /tmp/ccJRi9N9.s 			page 151


 8551 0116 3046     		mov	r0, r6
 8552 0118 48EA0308 		orr	r8, r8, r3
 8553 011c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8554 0120 D4EDBD7A 		vldr.32	s15, [r4, #756]
 8555 0124 94F84E31 		ldrb	r3, [r4, #334]	@ zero_extendqisi2
 8556 0128 20EE270A 		vmul.f32	s0, s0, s15
 8557 012c 002B     		cmp	r3, #0
 8558 012e C8D1     		bne	.L1725
 8559 0130 B9F1000F 		cmp	r9, #0
 8560 0134 58D0     		beq	.L1663
 8561 0136 09EB8B03 		add	r3, r9, fp, lsl #2
 8562 013a D3ED007A 		vldr.32	s15, [r3]
 8563 013e 37EE800A 		vadd.f32	s0, s15, s0
 8564 0142 0BF1010B 		add	fp, fp, #1
 8565 0146 85ED000A 		vstr.32	s0, [r5]
 8566 014a D4F89C32 		ldr	r3, [r4, #668]
 8567 014e 5B45     		cmp	r3, fp
 8568 0150 05F10405 		add	r5, r5, #4
 8569 0154 C7D8     		bhi	.L1666
 8570              	.L1658:
 8571 0156 94F84E31 		ldrb	r3, [r4, #334]	@ zero_extendqisi2
 8572 015a 002B     		cmp	r3, #0
 8573 015c 5BD1     		bne	.L1667
 8574 015e 94F85035 		ldrb	r3, [r4, #1360]	@ zero_extendqisi2
 8575 0162 002B     		cmp	r3, #0
 8576 0164 00F0F880 		beq	.L1726
 8577              	.L1669:
 8578 0168 3146     		mov	r1, r6
 8579 016a 2046     		mov	r0, r4
 8580 016c FFF7FEFF 		bl	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer
 8581 0170 94F84E31 		ldrb	r3, [r4, #334]	@ zero_extendqisi2
 8582 0174 002B     		cmp	r3, #0
 8583 0176 40F01F81 		bne	.L1727
 8584 017a B8F1000F 		cmp	r8, #0
 8585 017e 00F0D280 		beq	.L1684
 8586 0182 04F1B407 		add	r7, r4, #180
 8587 0186 4346     		mov	r3, r8
 8588 0188 029A     		ldr	r2, [sp, #8]
 8589 018a 3946     		mov	r1, r7
 8590 018c 2046     		mov	r0, r4
 8591 018e FFF7FEFF 		bl	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 8592 0192 94F85025 		ldrb	r2, [r4, #1360]	@ zero_extendqisi2
 8593 0196 D4F87434 		ldr	r3, [r4, #1140]
 8594 019a 0AB1     		cbz	r2, .L1677
 8595 019c 23F00403 		bic	r3, r3, #4
 8596              	.L1677:
 8597 01a0 6B4D     		ldr	r5, .L1736
 8598 01a2 94F86E24 		ldrb	r2, [r4, #1134]	@ zero_extendqisi2
 8599 01a6 A868     		ldr	r0, [r5, #8]
 8600 01a8 94F84F11 		ldrb	r1, [r4, #335]	@ zero_extendqisi2
 8601 01ac 002A     		cmp	r2, #0
 8602 01ae 00F09F80 		beq	.L1678
 8603 01b2 D0F8580A 		ldr	r0, [r0, #2648]
 8604 01b6 D4F89C22 		ldr	r2, [r4, #668]
 8605 01ba D0F800C0 		ldr	ip, [r0]
 8606 01be C1F30011 		ubfx	r1, r1, #4, #1
 8607 01c2 0091     		str	r1, [sp]
ARM GAS  /tmp/ccJRi9N9.s 			page 152


 8608 01c4 DCF82890 		ldr	r9, [ip, #40]
 8609 01c8 0299     		ldr	r1, [sp, #8]
 8610 01ca C847     		blx	r9
 8611 01cc 0028     		cmp	r0, #0
 8612 01ce 00F08C80 		beq	.L1722
 8613 01d2 94F8A830 		ldrb	r3, [r4, #168]	@ zero_extendqisi2
 8614 01d6 002B     		cmp	r3, #0
 8615 01d8 00F08280 		beq	.L1728
 8616 01dc 5D48     		ldr	r0, .L1736+4
 8617              	.L1647:
 8618 01de 05B0     		add	sp, sp, #20
 8619              		@ sp needed
 8620 01e0 BDEC028B 		vldm	sp!, {d8}
 8621 01e4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 8622              	.L1663:
 8623 01e8 B268     		ldr	r2, [r6, #8]
 8624 01ea 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 8625 01ec 9807     		lsls	r0, r3, #30
 8626 01ee 26D4     		bmi	.L1729
 8627 01f0 1906     		lsls	r1, r3, #24
 8628 01f2 02D4     		bmi	.L1665
 8629 01f4 537E     		ldrb	r3, [r2, #25]	@ zero_extendqisi2
 8630 01f6 DA07     		lsls	r2, r3, #31
 8631 01f8 6FD5     		bpl	.L1730
 8632              	.L1665:
 8633 01fa D4F8FC32 		ldr	r3, [r4, #764]
 8634 01fe 03EBC303 		add	r3, r3, r3, lsl #3
 8635 0202 5B44     		add	r3, r3, fp
 8636 0204 04EB8303 		add	r3, r4, r3, lsl #2
 8637 0208 D3EDC07A 		vldr.32	s15, [r3, #768]
 8638 020c 70EE677A 		vsub.f32	s15, s0, s15
 8639 0210 C5ED007A 		vstr.32	s15, [r5]
 8640 0214 5FE7     		b	.L1659
 8641              	.L1667:
 8642 0216 012B     		cmp	r3, #1
 8643 0218 00F0B580 		beq	.L1673
 8644 021c 032B     		cmp	r3, #3
 8645 021e A3D1     		bne	.L1669
 8646 0220 D4F89812 		ldr	r1, [r4, #664]
 8647 0224 D4F84821 		ldr	r2, [r4, #328]
 8648 0228 4FF0FF33 		mov	r3, #-1
 8649 022c 8B40     		lsls	r3, r3, r1
 8650 022e 28EA0303 		bic	r3, r8, r3
 8651 0232 1343     		orrs	r3, r3, r2
 8652 0234 C4F84831 		str	r3, [r4, #328]
 8653 0238 C4F88036 		str	r3, [r4, #1664]
 8654 023c 94E7     		b	.L1669
 8655              	.L1729:
 8656 023e D5ED007A 		vldr.32	s15, [r5]
 8657 0242 77EE807A 		vadd.f32	s15, s15, s0
 8658 0246 C5ED007A 		vstr.32	s15, [r5]
 8659 024a 44E7     		b	.L1659
 8660              	.L1648:
 8661 024c 3046     		mov	r0, r6
 8662 024e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8663 0252 431E     		subs	r3, r0, #1
 8664 0254 022B     		cmp	r3, #2
ARM GAS  /tmp/ccJRi9N9.s 			page 153


 8665 0256 25D9     		bls	.L1731
 8666 0258 6328     		cmp	r0, #99
 8667 025a 7FF4FDAE 		bne	.L1721
 8668 025e D4F84821 		ldr	r2, [r4, #328]
 8669 0262 94F84E31 		ldrb	r3, [r4, #334]	@ zero_extendqisi2
 8670 0266 42F00052 		orr	r2, r2, #536870912
 8671 026a C4F84821 		str	r2, [r4, #328]
 8672 026e F5E6     		b	.L1649
 8673              	.L1724:
 8674 0270 374F     		ldr	r7, .L1736
 8675 0272 3846     		mov	r0, r7
 8676 0274 D7F80880 		ldr	r8, [r7, #8]
 8677 0278 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 8678 027c 8246     		mov	r10, r0
 8679 027e 3846     		mov	r0, r7
 8680 0280 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 8681 0284 5346     		mov	r3, r10
 8682 0286 0090     		str	r0, [sp]
 8683 0288 2A46     		mov	r2, r5
 8684 028a 4046     		mov	r0, r8
 8685 028c 0299     		ldr	r1, [sp, #8]
 8686 028e FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 8687 0292 FBE6     		b	.L1657
 8688              	.L1655:
 8689 0294 3046     		mov	r0, r6
 8690 0296 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8691 029a 4FF00009 		mov	r9, #0
 8692 029e A4F84C01 		strh	r0, [r4, #332]	@ movhi
 8693 02a2 EBE6     		b	.L1656
 8694              	.L1731:
 8695 02a4 0122     		movs	r2, #1
 8696 02a6 0223     		movs	r3, #2
 8697 02a8 84F84E01 		strb	r0, [r4, #334]
 8698 02ac C4F84021 		str	r2, [r4, #320]
 8699 02b0 C4F84431 		str	r3, [r4, #324]
 8700 02b4 DAE6     		b	.L1651
 8701              	.L1723:
 8702 02b6 3046     		mov	r0, r6
 8703 02b8 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8704 02bc 0228     		cmp	r0, #2
 8705 02be 77D8     		bhi	.L1732
 8706 02c0 C0EB0010 		rsb	r0, r0, r0, lsl #4
 8707 02c4 8300     		lsls	r3, r0, #2
 8708 02c6 E218     		adds	r2, r4, r3
 8709 02c8 03F5EE73 		add	r3, r3, #476
 8710 02cc B2F81022 		ldrh	r2, [r2, #528]
 8711 02d0 A4F84C21 		strh	r2, [r4, #332]	@ movhi
 8712 02d4 04EB0309 		add	r9, r4, r3
 8713 02d8 D0E6     		b	.L1656
 8714              	.L1730:
 8715 02da 85ED000A 		vstr.32	s0, [r5]
 8716 02de FAE6     		b	.L1659
 8717              	.L1728:
 8718 02e0 3A46     		mov	r2, r7
 8719 02e2 0299     		ldr	r1, [sp, #8]
 8720 02e4 2046     		mov	r0, r4
 8721 02e6 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
ARM GAS  /tmp/ccJRi9N9.s 			page 154


 8722              	.L1722:
 8723 02ea A868     		ldr	r0, [r5, #8]
 8724 02ec 94F84F11 		ldrb	r1, [r4, #335]	@ zero_extendqisi2
 8725              	.L1678:
 8726 02f0 11F00801 		ands	r1, r1, #8
 8727 02f4 04D0     		beq	.L1680
 8728 02f6 38F00403 		bics	r3, r8, #4
 8729 02fa 14BF     		ite	ne
 8730 02fc 0121     		movne	r1, #1
 8731 02fe 0021     		moveq	r1, #0
 8732              	.L1680:
 8733 0300 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 8734 0304 61F34103 		bfi	r3, r1, #1, #1
 8735 0308 84F84F31 		strb	r3, [r4, #335]
 8736 030c D0F8585A 		ldr	r5, [r0, #2648]
 8737 0310 2B7B     		ldrb	r3, [r5, #12]	@ zero_extendqisi2
 8738 0312 1BB1     		cbz	r3, .L1681
 8739 0314 94F85835 		ldrb	r3, [r4, #1368]	@ zero_extendqisi2
 8740 0318 012B     		cmp	r3, #1
 8741 031a 53D1     		bne	.L1733
 8742              	.L1681:
 8743 031c 90F84C3A 		ldrb	r3, [r0, #2636]	@ zero_extendqisi2
 8744 0320 002B     		cmp	r3, #0
 8745 0322 40F09080 		bne	.L1734
 8746              	.L1684:
 8747 0326 0123     		movs	r3, #1
 8748 0328 C4F85431 		str	r3, [r4, #340]
 8749              	.L1675:
 8750 032c 0025     		movs	r5, #0
 8751 032e 3146     		mov	r1, r6
 8752 0330 2046     		mov	r0, r4
 8753 0332 84F89851 		strb	r5, [r4, #408]
 8754 0336 FFF7FEFF 		bl	_ZN6GCodes12FinaliseMoveER11GCodeBuffer
 8755 033a 2046     		mov	r0, r4
 8756 033c 3146     		mov	r1, r6
 8757 033e FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 8758 0342 2846     		mov	r0, r5
 8759 0344 05B0     		add	sp, sp, #20
 8760              		@ sp needed
 8761 0346 BDEC028B 		vldm	sp!, {d8}
 8762 034a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 8763              	.L1737:
 8764 034e 00BF     		.align	2
 8765              	.L1736:
 8766 0350 00000000 		.word	reprap
 8767 0354 94000000 		.word	.LC144
 8768              	.L1726:
 8769 0358 464B     		ldr	r3, .L1738
 8770 035a 4749     		ldr	r1, .L1738+4
 8771 035c 9B68     		ldr	r3, [r3, #8]
 8772 035e 94F86F24 		ldrb	r2, [r4, #1135]	@ zero_extendqisi2
 8773 0362 D3F8580A 		ldr	r0, [r3, #2648]
 8774 0366 0368     		ldr	r3, [r0]
 8775 0368 9B6D     		ldr	r3, [r3, #88]
 8776 036a 8B42     		cmp	r3, r1
 8777 036c 7CD1     		bne	.L1670
 8778 036e 002A     		cmp	r2, #0
ARM GAS  /tmp/ccJRi9N9.s 			page 155


 8779 0370 3FF4FAAE 		beq	.L1669
 8780 0374 4046     		mov	r0, r8
 8781              	.L1671:
 8782 0376 D4F87434 		ldr	r3, [r4, #1140]
 8783 037a 30EA0303 		bics	r3, r0, r3
 8784 037e 3FF4F3AE 		beq	.L1669
 8785 0382 3E48     		ldr	r0, .L1738+8
 8786 0384 2BE7     		b	.L1647
 8787              	.L1673:
 8788 0386 D4F89812 		ldr	r1, [r4, #664]
 8789 038a D4F84821 		ldr	r2, [r4, #328]
 8790 038e 4FF0FF33 		mov	r3, #-1
 8791 0392 8B40     		lsls	r3, r3, r1
 8792 0394 28EA0303 		bic	r3, r8, r3
 8793 0398 42F08042 		orr	r2, r2, #1073741824
 8794 039c 1343     		orrs	r3, r3, r2
 8795 039e C4F84831 		str	r3, [r4, #328]
 8796 03a2 E1E6     		b	.L1669
 8797              	.L1687:
 8798 03a4 3648     		ldr	r0, .L1738+12
 8799 03a6 05B0     		add	sp, sp, #20
 8800              		@ sp needed
 8801 03a8 BDEC028B 		vldm	sp!, {d8}
 8802 03ac BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 8803              	.L1732:
 8804 03b0 3448     		ldr	r0, .L1738+16
 8805 03b2 14E7     		b	.L1647
 8806              	.L1686:
 8807 03b4 9846     		mov	r8, r3
 8808 03b6 CEE6     		b	.L1658
 8809              	.L1727:
 8810 03b8 0123     		movs	r3, #1
 8811 03ba C4F85431 		str	r3, [r4, #340]
 8812 03be B268     		ldr	r2, [r6, #8]
 8813 03c0 1375     		strb	r3, [r2, #20]
 8814 03c2 B3E7     		b	.L1675
 8815              	.L1733:
 8816 03c4 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 8817 03c8 1B07     		lsls	r3, r3, #28
 8818 03ca 04D4     		bmi	.L1682
 8819 03cc 039B     		ldr	r3, [sp, #12]
 8820 03ce 13B9     		cbnz	r3, .L1682
 8821 03d0 6B7B     		ldrb	r3, [r5, #13]	@ zero_extendqisi2
 8822 03d2 002B     		cmp	r3, #0
 8823 03d4 A2D1     		bne	.L1681
 8824              	.L1682:
 8825 03d6 D4ED2E7A 		vldr.32	s15, [r4, #184]
 8826 03da 94ED2D7A 		vldr.32	s14, [r4, #180]
 8827 03de 77EEE88A 		vsub.f32	s17, s15, s17
 8828 03e2 37EE488A 		vsub.f32	s16, s14, s16
 8829 03e6 68EEA88A 		vmul.f32	s17, s17, s17
 8830 03ea B0EE680A 		vmov.f32	s0, s17
 8831 03ee A8EE080A 		vfma.f32	s0, s16, s16
 8832 03f2 B5EE400A 		vcmp.f32	s0, #0
 8833 03f6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8834 03fa F1EEC08A 		vsqrt.f32	s17, s0
 8835 03fe 36D4     		bmi	.L1735
ARM GAS  /tmp/ccJRi9N9.s 			page 156


 8836              	.L1683:
 8837 0400 95ED020A 		vldr.32	s0, [r5, #8]
 8838 0404 88EE800A 		vdiv.f32	s0, s17, s0
 8839 0408 FFF7FEFF 		bl	rintf
 8840 040c 94ED4C7A 		vldr.32	s14, [r4, #304]
 8841 0410 D5ED017A 		vldr.32	s15, [r5, #4]
 8842 0414 B0EE408A 		vmov.f32	s16, s0
 8843 0418 88EE870A 		vdiv.f32	s0, s17, s14
 8844 041c 20EE270A 		vmul.f32	s0, s0, s15
 8845 0420 FFF7FEFF 		bl	rintf
 8846 0424 FDEEC87A 		vcvt.s32.f32	s15, s16
 8847 0428 BDEEC00A 		vcvt.s32.f32	s0, s0
 8848 042c 17EE903A 		vmov	r3, s15	@ int
 8849 0430 10EE102A 		vmov	r2, s0	@ int
 8850 0434 9342     		cmp	r3, r2
 8851 0436 A8BF     		it	ge
 8852 0438 1346     		movge	r3, r2
 8853 043a 012B     		cmp	r3, #1
 8854 043c B8BF     		it	lt
 8855 043e 0123     		movlt	r3, #1
 8856 0440 C4F85431 		str	r3, [r4, #340]
 8857 0444 72E7     		b	.L1675
 8858              	.L1734:
 8859 0446 D4ED2E0A 		vldr.32	s1, [r4, #184]
 8860 044a 94ED2D0A 		vldr.32	s0, [r4, #180]
 8861 044e FC30     		adds	r0, r0, #252
 8862 0450 70EEE80A 		vsub.f32	s1, s1, s17
 8863 0454 30EE480A 		vsub.f32	s0, s0, s16
 8864 0458 FFF7FEFF 		bl	_ZNK9HeightMap18GetMinimumSegmentsEff
 8865 045c 0028     		cmp	r0, #0
 8866 045e 08BF     		it	eq
 8867 0460 0120     		moveq	r0, #1
 8868 0462 C4F85401 		str	r0, [r4, #340]
 8869 0466 61E7     		b	.L1675
 8870              	.L1670:
 8871 0468 4146     		mov	r1, r8
 8872 046a 9847     		blx	r3
 8873 046c 83E7     		b	.L1671
 8874              	.L1735:
 8875 046e FFF7FEFF 		bl	sqrtf
 8876 0472 C5E7     		b	.L1683
 8877              	.L1739:
 8878              		.align	2
 8879              	.L1738:
 8880 0474 00000000 		.word	reprap
 8881 0478 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 8882 047c 20000000 		.word	.LC142
 8883 0480 40000000 		.word	.LC143
 8884 0484 00000000 		.word	.LC141
 8885              		.size	_ZN6GCodes14DoStraightMoveER11GCodeBufferb, .-_ZN6GCodes14DoStraightMoveER11GCodeBufferb
 8886              		.section	.text._ZN6GCodes9DoArcMoveER11GCodeBufferb,"ax",%progbits
 8887              		.align	1
 8888              		.p2align 2,,3
 8889              		.global	_ZN6GCodes9DoArcMoveER11GCodeBufferb
 8890              		.syntax unified
 8891              		.thumb
 8892              		.thumb_func
ARM GAS  /tmp/ccJRi9N9.s 			page 157


 8893              		.fpu fpv4-sp-d16
 8894              		.type	_ZN6GCodes9DoArcMoveER11GCodeBufferb, %function
 8895              	_ZN6GCodes9DoArcMoveER11GCodeBufferb:
 8896              		@ args = 0, pretend = 0, frame = 8
 8897              		@ frame_needed = 0, uses_anonymous_args = 0
 8898 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 8899 0004 2DED068B 		vpush.64	{d8, d9, d10}
 8900 0008 0D46     		mov	r5, r1
 8901 000a 85B0     		sub	sp, sp, #20
 8902 000c 0446     		mov	r4, r0
 8903 000e 5821     		movs	r1, #88
 8904 0010 2846     		mov	r0, r5
 8905 0012 0292     		str	r2, [sp, #8]
 8906 0014 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8907 0018 0646     		mov	r6, r0
 8908 001a 0028     		cmp	r0, #0
 8909 001c 40F0EC80 		bne	.L1802
 8910 0020 D4ED2D8A 		vldr.32	s17, [r4, #180]
 8911              	.L1742:
 8912 0024 5921     		movs	r1, #89
 8913 0026 2846     		mov	r0, r5
 8914 0028 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8915 002c 0746     		mov	r7, r0
 8916 002e 0028     		cmp	r0, #0
 8917 0030 40F0D980 		bne	.L1803
 8918 0034 94ED2E8A 		vldr.32	s16, [r4, #184]
 8919              	.L1744:
 8920 0038 4921     		movs	r1, #73
 8921 003a 2846     		mov	r0, r5
 8922 003c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8923 0040 0746     		mov	r7, r0
 8924 0042 0028     		cmp	r0, #0
 8925 0044 40F0C780 		bne	.L1804
 8926 0048 9FEDC49A 		vldr.32	s18, .L1810
 8927              	.L1745:
 8928 004c 4A21     		movs	r1, #74
 8929 004e 2846     		mov	r0, r5
 8930 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8931 0054 0028     		cmp	r0, #0
 8932 0056 40F0A180 		bne	.L1805
 8933 005a 16B9     		cbnz	r6, .L1779
 8934 005c 002F     		cmp	r7, #0
 8935 005e 40F0A180 		bne	.L1747
 8936              	.L1779:
 8937 0062 DFEDBE9A 		vldr.32	s19, .L1810
 8938              	.L1748:
 8939 0066 D4F89C22 		ldr	r2, [r4, #668]
 8940 006a 04F58673 		add	r3, r4, #268
 8941 006e 04F1DC09 		add	r9, r4, #220
 8942 0072 9200     		lsls	r2, r2, #2
 8943 0074 1846     		mov	r0, r3
 8944 0076 4946     		mov	r1, r9
 8945 0078 0393     		str	r3, [sp, #12]
 8946 007a FFF7FEFF 		bl	memcpy
 8947 007e AA68     		ldr	r2, [r5, #8]
 8948 0080 94ED2DAA 		vldr.32	s20, [r4, #180]
 8949 0084 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
ARM GAS  /tmp/ccJRi9N9.s 			page 158


 8950 0086 D4ED2EAA 		vldr.32	s21, [r4, #184]
 8951 008a 13F00208 		ands	r8, r3, #2
 8952 008e 68D0     		beq	.L1750
 8953 0090 7AEE288A 		vadd.f32	s17, s20, s17
 8954 0094 3AEE888A 		vadd.f32	s16, s21, s16
 8955 0098 C4ED2D8A 		vstr.32	s17, [r4, #180]
 8956 009c 84ED2E8A 		vstr.32	s16, [r4, #184]
 8957              	.L1751:
 8958 00a0 D4F89C32 		ldr	r3, [r4, #668]
 8959 00a4 022B     		cmp	r3, #2
 8960 00a6 77D9     		bls	.L1780
 8961              	.L1806:
 8962 00a8 04F25C46 		addw	r6, r4, #1116
 8963 00ac 4FF0020B 		mov	fp, #2
 8964 00b0 0327     		movs	r7, #3
 8965 00b2 4FF0010A 		mov	r10, #1
 8966 00b6 05E0     		b	.L1758
 8967              	.L1755:
 8968 00b8 D4F89C22 		ldr	r2, [r4, #668]
 8969 00bc 0BF1010B 		add	fp, fp, #1
 8970 00c0 5A45     		cmp	r2, fp
 8971 00c2 21D9     		bls	.L1754
 8972              	.L1758:
 8973 00c4 16F8011B 		ldrb	r1, [r6], #1	@ zero_extendqisi2
 8974 00c8 2846     		mov	r0, r5
 8975 00ca FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8976 00ce 0028     		cmp	r0, #0
 8977 00d0 F2D0     		beq	.L1755
 8978 00d2 2846     		mov	r0, r5
 8979 00d4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8980 00d8 D4EDBD7A 		vldr.32	s15, [r4, #756]
 8981 00dc 04EB8B02 		add	r2, r4, fp, lsl #2
 8982 00e0 20EE270A 		vmul.f32	s0, s0, s15
 8983 00e4 B8F1000F 		cmp	r8, #0
 8984 00e8 62D0     		beq	.L1756
 8985 00ea D2ED2D7A 		vldr.32	s15, [r2, #180]
 8986 00ee 37EE800A 		vadd.f32	s0, s15, s0
 8987 00f2 82ED2D0A 		vstr.32	s0, [r2, #180]
 8988              	.L1757:
 8989 00f6 0AFA0BF2 		lsl	r2, r10, fp
 8990 00fa 1743     		orrs	r7, r7, r2
 8991 00fc D4F89C22 		ldr	r2, [r4, #668]
 8992 0100 0BF1010B 		add	fp, fp, #1
 8993 0104 5A45     		cmp	r2, fp
 8994 0106 DDD8     		bhi	.L1758
 8995              	.L1754:
 8996 0108 954E     		ldr	r6, .L1810+4
 8997 010a 9649     		ldr	r1, .L1810+8
 8998 010c B368     		ldr	r3, [r6, #8]
 8999 010e 94F86F24 		ldrb	r2, [r4, #1135]	@ zero_extendqisi2
 9000 0112 D3F8580A 		ldr	r0, [r3, #2648]
 9001 0116 0368     		ldr	r3, [r0]
 9002 0118 9B6D     		ldr	r3, [r3, #88]
 9003 011a 8B42     		cmp	r3, r1
 9004 011c 4DD1     		bne	.L1759
 9005 011e 002A     		cmp	r2, #0
 9006 0120 4ED1     		bne	.L1760
ARM GAS  /tmp/ccJRi9N9.s 			page 159


 9007              	.L1763:
 9008 0122 0023     		movs	r3, #0
 9009 0124 4A46     		mov	r2, r9
 9010 0126 04F1B401 		add	r1, r4, #180
 9011 012a 2046     		mov	r0, r4
 9012 012c FFF7FEFF 		bl	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 9013 0130 94F86E34 		ldrb	r3, [r4, #1134]	@ zero_extendqisi2
 9014 0134 002B     		cmp	r3, #0
 9015 0136 71D0     		beq	.L1762
 9016 0138 B268     		ldr	r2, [r6, #8]
 9017 013a D4F87434 		ldr	r3, [r4, #1140]
 9018 013e D2F8580A 		ldr	r0, [r2, #2648]
 9019 0142 D4F89C22 		ldr	r2, [r4, #668]
 9020 0146 0668     		ldr	r6, [r0]
 9021 0148 0121     		movs	r1, #1
 9022 014a 0091     		str	r1, [sp]
 9023 014c B66A     		ldr	r6, [r6, #40]
 9024 014e 4946     		mov	r1, r9
 9025 0150 B047     		blx	r6
 9026 0152 0028     		cmp	r0, #0
 9027 0154 62D0     		beq	.L1762
 9028 0156 8448     		ldr	r0, .L1810+12
 9029 0158 05B0     		add	sp, sp, #20
 9030              		@ sp needed
 9031 015a BDEC068B 		vldm	sp!, {d8-d10}
 9032 015e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 9033              	.L1750:
 9034 0162 1E06     		lsls	r6, r3, #24
 9035 0164 02D4     		bmi	.L1752
 9036 0166 537E     		ldrb	r3, [r2, #25]	@ zero_extendqisi2
 9037 0168 D807     		lsls	r0, r3, #31
 9038 016a 4DD5     		bpl	.L1753
 9039              	.L1752:
 9040 016c D4F8FC32 		ldr	r3, [r4, #764]
 9041 0170 03EBC303 		add	r3, r3, r3, lsl #3
 9042 0174 04EB8303 		add	r3, r4, r3, lsl #2
 9043 0178 D3EDC07A 		vldr.32	s15, [r3, #768]
 9044 017c 78EEE78A 		vsub.f32	s17, s17, s15
 9045 0180 C4ED2D8A 		vstr.32	s17, [r4, #180]
 9046 0184 D3EDC17A 		vldr.32	s15, [r3, #772]
 9047 0188 D4F89C32 		ldr	r3, [r4, #668]
 9048 018c 38EE678A 		vsub.f32	s16, s16, s15
 9049 0190 022B     		cmp	r3, #2
 9050 0192 84ED2E8A 		vstr.32	s16, [r4, #184]
 9051 0196 87D8     		bhi	.L1806
 9052              	.L1780:
 9053 0198 0327     		movs	r7, #3
 9054 019a B5E7     		b	.L1754
 9055              	.L1805:
 9056 019c 2846     		mov	r0, r5
 9057 019e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9058 01a2 B6BB     		cbnz	r6, .L1807
 9059              	.L1747:
 9060 01a4 7148     		ldr	r0, .L1810+16
 9061              	.L1740:
 9062 01a6 05B0     		add	sp, sp, #20
 9063              		@ sp needed
ARM GAS  /tmp/ccJRi9N9.s 			page 160


 9064 01a8 BDEC068B 		vldm	sp!, {d8-d10}
 9065 01ac BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 9066              	.L1756:
 9067 01b0 04EB8B02 		add	r2, r4, fp, lsl #2
 9068 01b4 82ED2D0A 		vstr.32	s0, [r2, #180]
 9069 01b8 9DE7     		b	.L1757
 9070              	.L1759:
 9071 01ba 3946     		mov	r1, r7
 9072 01bc 9847     		blx	r3
 9073 01be 0746     		mov	r7, r0
 9074              	.L1760:
 9075 01c0 D4F87434 		ldr	r3, [r4, #1140]
 9076 01c4 37EA0303 		bics	r3, r7, r3
 9077 01c8 ABD0     		beq	.L1763
 9078 01ca 6948     		ldr	r0, .L1810+20
 9079 01cc 05B0     		add	sp, sp, #20
 9080              		@ sp needed
 9081 01ce BDEC068B 		vldm	sp!, {d8-d10}
 9082 01d2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 9083              	.L1804:
 9084 01d6 2846     		mov	r0, r5
 9085 01d8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9086 01dc 94EDBD9A 		vldr.32	s18, [r4, #756]
 9087 01e0 20EE099A 		vmul.f32	s18, s0, s18
 9088 01e4 32E7     		b	.L1745
 9089              	.L1803:
 9090 01e6 2846     		mov	r0, r5
 9091 01e8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9092 01ec 94EDBD8A 		vldr.32	s16, [r4, #756]
 9093 01f0 3E46     		mov	r6, r7
 9094 01f2 20EE088A 		vmul.f32	s16, s0, s16
 9095 01f6 1FE7     		b	.L1744
 9096              	.L1802:
 9097 01f8 2846     		mov	r0, r5
 9098 01fa FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9099 01fe D4EDBD8A 		vldr.32	s17, [r4, #756]
 9100 0202 60EE288A 		vmul.f32	s17, s0, s17
 9101 0206 0DE7     		b	.L1742
 9102              	.L1753:
 9103 0208 C4ED2D8A 		vstr.32	s17, [r4, #180]
 9104 020c 84ED2E8A 		vstr.32	s16, [r4, #184]
 9105 0210 46E7     		b	.L1751
 9106              	.L1807:
 9107 0212 D4EDBD9A 		vldr.32	s19, [r4, #756]
 9108 0216 60EE299A 		vmul.f32	s19, s0, s19
 9109 021a 24E7     		b	.L1748
 9110              	.L1762:
 9111 021c D4ED2D0A 		vldr.32	s1, [r4, #180]
 9112 0220 94ED2E0A 		vldr.32	s0, [r4, #184]
 9113 0224 3AEE09AA 		vadd.f32	s20, s20, s18
 9114 0228 7AEEA9AA 		vadd.f32	s21, s21, s19
 9115 022c 70EECA0A 		vsub.f32	s1, s1, s20
 9116 0230 30EE6A0A 		vsub.f32	s0, s0, s21
 9117 0234 FFF7FEFF 		bl	atan2f
 9118 0238 0026     		movs	r6, #0
 9119 023a C4F84861 		str	r6, [r4, #328]
 9120 023e 84F84E61 		strb	r6, [r4, #334]
ARM GAS  /tmp/ccJRi9N9.s 			page 161


 9121 0242 4748     		ldr	r0, .L1810+4
 9122 0244 B0EE408A 		vmov.f32	s16, s0
 9123 0248 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 9124 024c C4F84001 		str	r0, [r4, #320]
 9125 0250 4348     		ldr	r0, .L1810+4
 9126 0252 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 9127 0256 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 9128 025a D4F89C72 		ldr	r7, [r4, #668]
 9129 025e C4F84401 		str	r0, [r4, #324]
 9130 0262 43F01003 		orr	r3, r3, #16
 9131 0266 84F84F31 		strb	r3, [r4, #335]
 9132 026a F7B1     		cbz	r7, .L1764
 9133 026c D4F840C1 		ldr	ip, [r4, #320]
 9134 0270 039B     		ldr	r3, [sp, #12]
 9135 0272 3246     		mov	r2, r6
 9136 0274 0AE0     		b	.L1768
 9137              	.L1808:
 9138 0276 D3ED007A 		vldr.32	s15, [r3]
 9139 027a 77EE897A 		vadd.f32	s15, s15, s18
 9140 027e C3ED177A 		vstr.32	s15, [r3, #92]
 9141              	.L1767:
 9142 0282 0132     		adds	r2, r2, #1
 9143 0284 BA42     		cmp	r2, r7
 9144 0286 03F10403 		add	r3, r3, #4
 9145 028a 0ED0     		beq	.L1764
 9146              	.L1768:
 9147 028c 2CFA02F1 		lsr	r1, ip, r2
 9148 0290 C907     		lsls	r1, r1, #31
 9149 0292 20FA02F6 		lsr	r6, r0, r2
 9150 0296 EED4     		bmi	.L1808
 9151 0298 F107     		lsls	r1, r6, #31
 9152 029a F2D5     		bpl	.L1767
 9153 029c D3ED007A 		vldr.32	s15, [r3]
 9154 02a0 77EEA97A 		vadd.f32	s15, s15, s19
 9155 02a4 C3ED177A 		vstr.32	s15, [r3, #92]
 9156 02a8 EBE7     		b	.L1767
 9157              	.L1764:
 9158 02aa 2946     		mov	r1, r5
 9159 02ac 2046     		mov	r0, r4
 9160 02ae FFF7FEFF 		bl	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer
 9161 02b2 29EEA90A 		vmul.f32	s0, s19, s19
 9162 02b6 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 9163 02ba A9EE090A 		vfma.f32	s0, s18, s18
 9164 02be C3F3C002 		ubfx	r2, r3, #3, #1
 9165 02c2 62F34103 		bfi	r3, r2, #1, #1
 9166 02c6 84F84F31 		strb	r3, [r4, #335]
 9167 02ca B5EE400A 		vcmp.f32	s0, #0
 9168 02ce F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9169 02d2 F1EEC08A 		vsqrt.f32	s17, s0
 9170 02d6 00F19780 		bmi	.L1809
 9171              	.L1769:
 9172 02da C4ED638A 		vstr.32	s17, [r4, #396]
 9173 02de F1EE490A 		vneg.f32	s1, s18
 9174 02e2 B1EE690A 		vneg.f32	s0, s19
 9175 02e6 FFF7FEFF 		bl	atan2f
 9176 02ea 029B     		ldr	r3, [sp, #8]
 9177 02ec 84ED640A 		vstr.32	s0, [r4, #400]
ARM GAS  /tmp/ccJRi9N9.s 			page 162


 9178 02f0 002B     		cmp	r3, #0
 9179 02f2 43D0     		beq	.L1770
 9180 02f4 30EE480A 		vsub.f32	s0, s0, s16
 9181 02f8 B5EEC00A 		vcmpe.f32	s0, #0
 9182 02fc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9183 0300 43D4     		bmi	.L1771
 9184 0302 94ED637A 		vldr.32	s14, [r4, #396]
 9185 0306 94EDBE6A 		vldr.32	s12, [r4, #760]
 9186 030a DFED1B6A 		vldr.32	s13, .L1810+28
 9187 030e 20EE077A 		vmul.f32	s14, s0, s14
 9188 0312 C7EE067A 		vdiv.f32	s15, s14, s12
 9189 0316 77EEA67A 		vadd.f32	s15, s15, s13
 9190 031a FCEEE77A 		vcvt.u32.f32	s15, s15
 9191 031e 17EE903A 		vmov	r3, s15	@ int
 9192 0322 012B     		cmp	r3, #1
 9193 0324 38BF     		it	cc
 9194 0326 0123     		movcc	r3, #1
 9195 0328 07EE903A 		vmov	s15, r3	@ int
 9196 032c B8EE677A 		vcvt.f32.u32	s14, s15
 9197 0330 C4F85431 		str	r3, [r4, #340]
 9198 0334 C0EE077A 		vdiv.f32	s15, s0, s14
 9199              	.L1775:
 9200 0338 F1EE677A 		vneg.f32	s15, s15
 9201              	.L1801:
 9202 033c 0123     		movs	r3, #1
 9203 033e C4ED657A 		vstr.32	s15, [r4, #404]
 9204 0342 84F89831 		strb	r3, [r4, #408]
 9205 0346 2946     		mov	r1, r5
 9206 0348 2046     		mov	r0, r4
 9207 034a FFF7FEFF 		bl	_ZN6GCodes12FinaliseMoveER11GCodeBuffer
 9208 034e 2046     		mov	r0, r4
 9209 0350 2946     		mov	r1, r5
 9210 0352 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 9211 0356 0020     		movs	r0, #0
 9212 0358 25E7     		b	.L1740
 9213              	.L1811:
 9214 035a 00BF     		.align	2
 9215              	.L1810:
 9216 035c 00000000 		.word	0
 9217 0360 00000000 		.word	reprap
 9218 0364 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 9219 0368 3C000000 		.word	.LC147
 9220 036c 00000000 		.word	.LC145
 9221 0370 1C000000 		.word	.LC146
 9222 0374 DB0FC940 		.word	1086918619
 9223 0378 CDCC4C3F 		.word	1061997773
 9224              	.L1770:
 9225 037c 38EE400A 		vsub.f32	s0, s16, s0
 9226 0380 B5EEC00A 		vcmpe.f32	s0, #0
 9227 0384 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9228 0388 22D5     		bpl	.L1799
 9229              	.L1771:
 9230 038a 5FED067A 		vldr.32	s15, .L1810+24
 9231 038e 94ED637A 		vldr.32	s14, [r4, #396]
 9232 0392 94EDBE6A 		vldr.32	s12, [r4, #760]
 9233 0396 5FED086A 		vldr.32	s13, .L1810+28
 9234 039a 30EE270A 		vadd.f32	s0, s0, s15
ARM GAS  /tmp/ccJRi9N9.s 			page 163


 9235 039e 20EE077A 		vmul.f32	s14, s0, s14
 9236 03a2 C7EE067A 		vdiv.f32	s15, s14, s12
 9237 03a6 77EEA67A 		vadd.f32	s15, s15, s13
 9238 03aa FCEEE77A 		vcvt.u32.f32	s15, s15
 9239 03ae 17EE903A 		vmov	r3, s15	@ int
 9240 03b2 012B     		cmp	r3, #1
 9241 03b4 38BF     		it	cc
 9242 03b6 0123     		movcc	r3, #1
 9243 03b8 07EE903A 		vmov	s15, r3	@ int
 9244 03bc C4F85431 		str	r3, [r4, #340]
 9245 03c0 B8EE677A 		vcvt.f32.u32	s14, s15
 9246 03c4 029B     		ldr	r3, [sp, #8]
 9247 03c6 C0EE077A 		vdiv.f32	s15, s0, s14
 9248 03ca 002B     		cmp	r3, #0
 9249 03cc B6D0     		beq	.L1801
 9250 03ce B3E7     		b	.L1775
 9251              	.L1799:
 9252 03d0 94ED637A 		vldr.32	s14, [r4, #396]
 9253 03d4 94EDBE6A 		vldr.32	s12, [r4, #760]
 9254 03d8 5FED196A 		vldr.32	s13, .L1810+28
 9255 03dc 20EE077A 		vmul.f32	s14, s0, s14
 9256 03e0 C7EE067A 		vdiv.f32	s15, s14, s12
 9257 03e4 77EEA67A 		vadd.f32	s15, s15, s13
 9258 03e8 FCEEE77A 		vcvt.u32.f32	s15, s15
 9259 03ec 17EE903A 		vmov	r3, s15	@ int
 9260 03f0 012B     		cmp	r3, #1
 9261 03f2 38BF     		it	cc
 9262 03f4 0123     		movcc	r3, #1
 9263 03f6 07EE903A 		vmov	s15, r3	@ int
 9264 03fa B8EE677A 		vcvt.f32.u32	s14, s15
 9265 03fe C4F85431 		str	r3, [r4, #340]
 9266 0402 C0EE077A 		vdiv.f32	s15, s0, s14
 9267 0406 99E7     		b	.L1801
 9268              	.L1809:
 9269 0408 FFF7FEFF 		bl	sqrtf
 9270 040c 65E7     		b	.L1769
 9271              		.size	_ZN6GCodes9DoArcMoveER11GCodeBufferb, .-_ZN6GCodes9DoArcMoveER11GCodeBufferb
 9272 040e 00BF     		.section	.text._ZNK6GCodes10AppendAxesERK9StringRefm,"ax",%progbits
 9273              		.align	1
 9274              		.p2align 2,,3
 9275              		.global	_ZNK6GCodes10AppendAxesERK9StringRefm
 9276              		.syntax unified
 9277              		.thumb
 9278              		.thumb_func
 9279              		.fpu fpv4-sp-d16
 9280              		.type	_ZNK6GCodes10AppendAxesERK9StringRefm, %function
 9281              	_ZNK6GCodes10AppendAxesERK9StringRefm:
 9282              		@ args = 0, pretend = 0, frame = 0
 9283              		@ frame_needed = 0, uses_anonymous_args = 0
 9284 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 9285 0004 D0F89C52 		ldr	r5, [r0, #668]
 9286 0008 B5B1     		cbz	r5, .L1812
 9287 000a 1646     		mov	r6, r2
 9288 000c 8846     		mov	r8, r1
 9289 000e 0746     		mov	r7, r0
 9290 0010 0024     		movs	r4, #0
 9291 0012 02E0     		b	.L1815
ARM GAS  /tmp/ccJRi9N9.s 			page 164


 9292              	.L1814:
 9293 0014 0134     		adds	r4, r4, #1
 9294 0016 A542     		cmp	r5, r4
 9295 0018 0ED9     		bls	.L1812
 9296              	.L1815:
 9297 001a 26FA04F3 		lsr	r3, r6, r4
 9298 001e DB07     		lsls	r3, r3, #31
 9299 0020 F8D5     		bpl	.L1814
 9300 0022 3B19     		adds	r3, r7, r4
 9301 0024 4046     		mov	r0, r8
 9302 0026 93F85A14 		ldrb	r1, [r3, #1114]	@ zero_extendqisi2
 9303 002a FFF7FEFF 		bl	_ZNK9StringRef3catEc
 9304 002e D7F89C52 		ldr	r5, [r7, #668]
 9305 0032 0134     		adds	r4, r4, #1
 9306 0034 A542     		cmp	r5, r4
 9307 0036 F0D8     		bhi	.L1815
 9308              	.L1812:
 9309 0038 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 9310              		.size	_ZNK6GCodes10AppendAxesERK9StringRefm, .-_ZNK6GCodes10AppendAxesERK9StringRefm
 9311              		.section	.text._ZNK6GCodes20GetMachineModeStringEv,"ax",%progbits
 9312              		.align	1
 9313              		.p2align 2,,3
 9314              		.global	_ZNK6GCodes20GetMachineModeStringEv
 9315              		.syntax unified
 9316              		.thumb
 9317              		.thumb_func
 9318              		.fpu fpv4-sp-d16
 9319              		.type	_ZNK6GCodes20GetMachineModeStringEv, %function
 9320              	_ZNK6GCodes20GetMachineModeStringEv:
 9321              		@ args = 0, pretend = 0, frame = 0
 9322              		@ frame_needed = 0, uses_anonymous_args = 0
 9323              		@ link register save eliminated.
 9324 0000 90F8A830 		ldrb	r3, [r0, #168]	@ zero_extendqisi2
 9325 0004 022B     		cmp	r3, #2
 9326 0006 9ABF     		itte	ls
 9327 0008 024A     		ldrls	r2, .L1827
 9328 000a 52F82300 		ldrls	r0, [r2, r3, lsl #2]
 9329 000e 0248     		ldrhi	r0, .L1827+4
 9330 0010 7047     		bx	lr
 9331              	.L1828:
 9332 0012 00BF     		.align	2
 9333              	.L1827:
 9334 0014 00000000 		.word	.LANCHOR2
 9335 0018 00000000 		.word	.LC148
 9336              		.size	_ZNK6GCodes20GetMachineModeStringEv, .-_ZNK6GCodes20GetMachineModeStringEv
 9337              		.section	.text._ZN6GCodes17HandleHeaterFaultEi,"ax",%progbits
 9338              		.align	1
 9339              		.p2align 2,,3
 9340              		.global	_ZN6GCodes17HandleHeaterFaultEi
 9341              		.syntax unified
 9342              		.thumb
 9343              		.thumb_func
 9344              		.fpu fpv4-sp-d16
 9345              		.type	_ZN6GCodes17HandleHeaterFaultEi, %function
 9346              	_ZN6GCodes17HandleHeaterFaultEi:
 9347              		@ args = 0, pretend = 0, frame = 0
 9348              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccJRi9N9.s 			page 165


 9349 0000 90F87036 		ldrb	r3, [r0, #1648]	@ zero_extendqisi2
 9350 0004 03B1     		cbz	r3, .L1840
 9351 0006 7047     		bx	lr
 9352              	.L1840:
 9353 0008 10B5     		push	{r4, lr}
 9354 000a 036C     		ldr	r3, [r0, #64]
 9355 000c 0446     		mov	r4, r0
 9356 000e 1868     		ldr	r0, [r3]
 9357 0010 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 9358 0014 8368     		ldr	r3, [r0, #8]
 9359 0016 33B1     		cbz	r3, .L1829
 9360 0018 0123     		movs	r3, #1
 9361 001a 84F87036 		strb	r3, [r4, #1648]
 9362 001e FFF7FEFF 		bl	millis
 9363 0022 C4F87406 		str	r0, [r4, #1652]
 9364              	.L1829:
 9365 0026 10BD     		pop	{r4, pc}
 9366              		.size	_ZN6GCodes17HandleHeaterFaultEi, .-_ZN6GCodes17HandleHeaterFaultEi
 9367              		.section	.text._ZN6GCodes16CheckHeaterFaultEv,"ax",%progbits
 9368              		.align	1
 9369              		.p2align 2,,3
 9370              		.global	_ZN6GCodes16CheckHeaterFaultEv
 9371              		.syntax unified
 9372              		.thumb
 9373              		.thumb_func
 9374              		.fpu fpv4-sp-d16
 9375              		.type	_ZN6GCodes16CheckHeaterFaultEv, %function
 9376              	_ZN6GCodes16CheckHeaterFaultEv:
 9377              		@ args = 0, pretend = 0, frame = 0
 9378              		@ frame_needed = 0, uses_anonymous_args = 0
 9379 0000 38B5     		push	{r3, r4, r5, lr}
 9380 0002 90F87036 		ldrb	r3, [r0, #1648]	@ zero_extendqisi2
 9381 0006 022B     		cmp	r3, #2
 9382 0008 0446     		mov	r4, r0
 9383 000a 31D0     		beq	.L1843
 9384 000c 032B     		cmp	r3, #3
 9385 000e 5CD0     		beq	.L1844
 9386 0010 012B     		cmp	r3, #1
 9387 0012 00D0     		beq	.L1863
 9388              	.L1841:
 9389 0014 38BD     		pop	{r3, r4, r5, pc}
 9390              	.L1863:
 9391 0016 354D     		ldr	r5, .L1864
 9392 0018 EB69     		ldr	r3, [r5, #28]
 9393 001a 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 9394 001c 002B     		cmp	r3, #0
 9395 001e 49D0     		beq	.L1846
 9396 0020 FFF7FEFF 		bl	_ZNK6GCodes16IsReallyPrintingEv.part.56
 9397 0024 0028     		cmp	r0, #0
 9398 0026 45D0     		beq	.L1846
 9399 0028 636D     		ldr	r3, [r4, #84]
 9400 002a 1B68     		ldr	r3, [r3]
 9401 002c 9A68     		ldr	r2, [r3, #8]
 9402 002e 127D     		ldrb	r2, [r2, #20]	@ zero_extendqisi2
 9403 0030 002A     		cmp	r2, #0
 9404 0032 3FD1     		bne	.L1846
 9405 0034 93F82820 		ldrb	r2, [r3, #40]	@ zero_extendqisi2
ARM GAS  /tmp/ccJRi9N9.s 			page 166


 9406 0038 083A     		subs	r2, r2, #8
 9407 003a 012A     		cmp	r2, #1
 9408 003c 3AD9     		bls	.L1846
 9409 003e E26D     		ldr	r2, [r4, #92]
 9410 0040 9342     		cmp	r3, r2
 9411 0042 07D0     		beq	.L1847
 9412 0044 002A     		cmp	r2, #0
 9413 0046 35D1     		bne	.L1846
 9414 0048 E365     		str	r3, [r4, #92]
 9415 004a 9A68     		ldr	r2, [r3, #8]
 9416 004c D368     		ldr	r3, [r2, #12]
 9417 004e 43F00103 		orr	r3, r3, #1
 9418 0052 D360     		str	r3, [r2, #12]
 9419              	.L1847:
 9420 0054 E868     		ldr	r0, [r5, #12]
 9421 0056 0021     		movs	r1, #0
 9422 0058 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 9423 005c 626D     		ldr	r2, [r4, #84]
 9424 005e 244B     		ldr	r3, .L1864+4
 9425 0060 1168     		ldr	r1, [r2]
 9426 0062 2046     		mov	r0, r4
 9427 0064 0322     		movs	r2, #3
 9428 0066 FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 9429              	.L1862:
 9430 006a 0223     		movs	r3, #2
 9431 006c 84F87036 		strb	r3, [r4, #1648]
 9432              	.L1843:
 9433 0070 FFF7FEFF 		bl	millis
 9434 0074 D4F87436 		ldr	r3, [r4, #1652]
 9435 0078 D4F87826 		ldr	r2, [r4, #1656]
 9436 007c C01A     		subs	r0, r0, r3
 9437 007e 9042     		cmp	r0, r2
 9438 0080 C8D3     		bcc	.L1841
 9439 0082 0221     		movs	r1, #2
 9440 0084 2046     		mov	r0, r4
 9441 0086 FFF7FEFF 		bl	_ZN6GCodes9StopPrintE15StopPrintReason
 9442 008a 184B     		ldr	r3, .L1864
 9443 008c 0121     		movs	r1, #1
 9444 008e D868     		ldr	r0, [r3, #12]
 9445 0090 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 9446 0094 D4F87836 		ldr	r3, [r4, #1656]
 9447 0098 1649     		ldr	r1, .L1864+8
 9448 009a 174A     		ldr	r2, .L1864+12
 9449 009c 2068     		ldr	r0, [r4]
 9450 009e A1FB0313 		umull	r1, r3, r1, r3
 9451 00a2 9B09     		lsrs	r3, r3, #6
 9452 00a4 40F2B511 		movw	r1, #437
 9453 00a8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9454 00ac 0323     		movs	r3, #3
 9455 00ae 84F87036 		strb	r3, [r4, #1648]
 9456 00b2 38BD     		pop	{r3, r4, r5, pc}
 9457              	.L1846:
 9458 00b4 2046     		mov	r0, r4
 9459 00b6 FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
 9460 00ba 0028     		cmp	r0, #0
 9461 00bc D5D1     		bne	.L1862
 9462 00be 2046     		mov	r0, r4
ARM GAS  /tmp/ccJRi9N9.s 			page 167


 9463 00c0 FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 9464 00c4 0028     		cmp	r0, #0
 9465 00c6 D0D1     		bne	.L1862
 9466 00c8 D2E7     		b	.L1843
 9467              	.L1844:
 9468 00ca FFF7FEFF 		bl	millis
 9469 00ce D4F87436 		ldr	r3, [r4, #1652]
 9470 00d2 C01A     		subs	r0, r0, r3
 9471 00d4 B0F5FA6F 		cmp	r0, #2000
 9472 00d8 9CD3     		bcc	.L1841
 9473 00da 0021     		movs	r1, #0
 9474 00dc 2068     		ldr	r0, [r4]
 9475 00de FFF7FEFF 		bl	_ZN8Platform11AtxPowerOffEb
 9476 00e2 0423     		movs	r3, #4
 9477 00e4 84F87036 		strb	r3, [r4, #1648]
 9478 00e8 38BD     		pop	{r3, r4, r5, pc}
 9479              	.L1865:
 9480 00ea 00BF     		.align	2
 9481              	.L1864:
 9482 00ec 00000000 		.word	reprap
 9483 00f0 00000000 		.word	.LC149
 9484 00f4 D34D6210 		.word	274877907
 9485 00f8 10000000 		.word	.LC150
 9486              		.size	_ZN6GCodes16CheckHeaterFaultEv, .-_ZN6GCodes16CheckHeaterFaultEv
 9487              		.section	.text._ZNK6GCodes14GetSpeedFactorEv,"ax",%progbits
 9488              		.align	1
 9489              		.p2align 2,,3
 9490              		.global	_ZNK6GCodes14GetSpeedFactorEv
 9491              		.syntax unified
 9492              		.thumb
 9493              		.thumb_func
 9494              		.fpu fpv4-sp-d16
 9495              		.type	_ZNK6GCodes14GetSpeedFactorEv, %function
 9496              	_ZNK6GCodes14GetSpeedFactorEv:
 9497              		@ args = 0, pretend = 0, frame = 0
 9498              		@ frame_needed = 0, uses_anonymous_args = 0
 9499              		@ link register save eliminated.
 9500 0000 00F2A440 		addw	r0, r0, #1188
 9501 0004 90ED000A 		vldr.32	s0, [r0]
 9502 0008 DFED027A 		vldr.32	s15, .L1867
 9503 000c 20EE270A 		vmul.f32	s0, s0, s15
 9504 0010 7047     		bx	lr
 9505              	.L1868:
 9506 0012 00BF     		.align	2
 9507              	.L1867:
 9508 0014 00007042 		.word	1114636288
 9509              		.size	_ZNK6GCodes14GetSpeedFactorEv, .-_ZNK6GCodes14GetSpeedFactorEv
 9510              		.section	.text._ZN6GCodes14SetSpeedFactorEf,"ax",%progbits
 9511              		.align	1
 9512              		.p2align 2,,3
 9513              		.global	_ZN6GCodes14SetSpeedFactorEf
 9514              		.syntax unified
 9515              		.thumb
 9516              		.thumb_func
 9517              		.fpu fpv4-sp-d16
 9518              		.type	_ZN6GCodes14SetSpeedFactorEf, %function
 9519              	_ZN6GCodes14SetSpeedFactorEf:
ARM GAS  /tmp/ccJRi9N9.s 			page 168


 9520              		@ args = 0, pretend = 0, frame = 0
 9521              		@ frame_needed = 0, uses_anonymous_args = 0
 9522              		@ link register save eliminated.
 9523 0000 B4EE400A 		vcmp.f32	s0, s0
 9524 0004 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9525 0008 1BD6     		bvs	.L1873
 9526 000a F1EE047A 		vmov.f32	s15, #5.0e+0
 9527 000e B4EEE70A 		vcmpe.f32	s0, s15
 9528 0012 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9529 0016 0DD5     		bpl	.L1876
 9530 0018 DFED0E7A 		vldr.32	s15, .L1877
 9531 001c B4EEE70A 		vcmpe.f32	s0, s15
 9532 0020 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9533 0024 0DDC     		bgt	.L1873
 9534 0026 DFED0C7A 		vldr.32	s15, .L1877+4
 9535 002a 00F2A440 		addw	r0, r0, #1188
 9536 002e C0ED007A 		vstr.32	s15, [r0]
 9537 0032 7047     		bx	lr
 9538              	.L1876:
 9539 0034 DFED097A 		vldr.32	s15, .L1877+8
 9540 0038 00F2A440 		addw	r0, r0, #1188
 9541 003c C0ED007A 		vstr.32	s15, [r0]
 9542 0040 7047     		bx	lr
 9543              	.L1873:
 9544 0042 9FED077A 		vldr.32	s14, .L1877+12
 9545 0046 C0EE077A 		vdiv.f32	s15, s0, s14
 9546 004a 00F2A440 		addw	r0, r0, #1188
 9547 004e C0ED007A 		vstr.32	s15, [r0]
 9548 0052 7047     		bx	lr
 9549              	.L1878:
 9550              		.align	2
 9551              	.L1877:
 9552 0054 CDCCCC3D 		.word	1036831949
 9553 0058 0E74DA3A 		.word	987395086
 9554 005c ABAAAA3D 		.word	1034594987
 9555 0060 00007042 		.word	1114636288
 9556              		.size	_ZN6GCodes14SetSpeedFactorEf, .-_ZN6GCodes14SetSpeedFactorEf
 9557              		.section	.text._ZN6GCodes18GetExtrusionFactorEj,"ax",%progbits
 9558              		.align	1
 9559              		.p2align 2,,3
 9560              		.global	_ZN6GCodes18GetExtrusionFactorEj
 9561              		.syntax unified
 9562              		.thumb
 9563              		.thumb_func
 9564              		.fpu fpv4-sp-d16
 9565              		.type	_ZN6GCodes18GetExtrusionFactorEj, %function
 9566              	_ZN6GCodes18GetExtrusionFactorEj:
 9567              		@ args = 0, pretend = 0, frame = 0
 9568              		@ frame_needed = 0, uses_anonymous_args = 0
 9569              		@ link register save eliminated.
 9570 0000 D0F8A032 		ldr	r3, [r0, #672]
 9571 0004 8B42     		cmp	r3, r1
 9572 0006 83BF     		ittte	hi
 9573 0008 01F59571 		addhi	r1, r1, #298
 9574 000c 00EB8100 		addhi	r0, r0, r1, lsl #2
 9575 0010 90ED000A 		vldrhi.32	s0, [r0]
 9576 0014 9FED010A 		vldrls.32	s0, .L1882
ARM GAS  /tmp/ccJRi9N9.s 			page 169


 9577 0018 7047     		bx	lr
 9578              	.L1883:
 9579 001a 00BF     		.align	2
 9580              	.L1882:
 9581 001c 00000000 		.word	0
 9582              		.size	_ZN6GCodes18GetExtrusionFactorEj, .-_ZN6GCodes18GetExtrusionFactorEj
 9583              		.section	.text._ZN6GCodes18SetExtrusionFactorEjf,"ax",%progbits
 9584              		.align	1
 9585              		.p2align 2,,3
 9586              		.global	_ZN6GCodes18SetExtrusionFactorEjf
 9587              		.syntax unified
 9588              		.thumb
 9589              		.thumb_func
 9590              		.fpu fpv4-sp-d16
 9591              		.type	_ZN6GCodes18SetExtrusionFactorEjf, %function
 9592              	_ZN6GCodes18SetExtrusionFactorEjf:
 9593              		@ args = 0, pretend = 0, frame = 0
 9594              		@ frame_needed = 0, uses_anonymous_args = 0
 9595              		@ link register save eliminated.
 9596 0000 D0F8A032 		ldr	r3, [r0, #672]
 9597 0004 8B42     		cmp	r3, r1
 9598 0006 18D9     		bls	.L1884
 9599 0008 B4EE400A 		vcmp.f32	s0, s0
 9600 000c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9601 0010 0DD6     		bvs	.L1886
 9602 0012 F0EE007A 		vmov.f32	s15, #2.0e+0
 9603 0016 B4EEE70A 		vcmpe.f32	s0, s15
 9604 001a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9605 001e 0DD5     		bpl	.L1890
 9606 0020 B5EEC00A 		vcmpe.f32	s0, #0
 9607 0024 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9608 0028 01DC     		bgt	.L1886
 9609 002a 9FED060A 		vldr.32	s0, .L1891
 9610              	.L1886:
 9611 002e 01F59571 		add	r1, r1, #298
 9612 0032 00EB8100 		add	r0, r0, r1, lsl #2
 9613 0036 80ED000A 		vstr.32	s0, [r0]
 9614              	.L1884:
 9615 003a 7047     		bx	lr
 9616              	.L1890:
 9617 003c B0EE670A 		vmov.f32	s0, s15
 9618 0040 F5E7     		b	.L1886
 9619              	.L1892:
 9620 0042 00BF     		.align	2
 9621              	.L1891:
 9622 0044 00000000 		.word	0
 9623              		.size	_ZN6GCodes18SetExtrusionFactorEjf, .-_ZN6GCodes18SetExtrusionFactorEjf
 9624              		.section	.text._ZN6StringILj50EE6printfEPKcz,"axG",%progbits,_ZN6StringILj50EE6printfEPKcz,comdat
 9625              		.align	1
 9626              		.p2align 2,,3
 9627              		.weak	_ZN6StringILj50EE6printfEPKcz
 9628              		.syntax unified
 9629              		.thumb
 9630              		.thumb_func
 9631              		.fpu fpv4-sp-d16
 9632              		.type	_ZN6StringILj50EE6printfEPKcz, %function
 9633              	_ZN6StringILj50EE6printfEPKcz:
ARM GAS  /tmp/ccJRi9N9.s 			page 170


 9634              		@ args = 4, pretend = 12, frame = 16
 9635              		@ frame_needed = 0, uses_anonymous_args = 1
 9636 0000 0EB4     		push	{r1, r2, r3}
 9637 0002 00B5     		push	{lr}
 9638 0004 84B0     		sub	sp, sp, #16
 9639 0006 05AA     		add	r2, sp, #20
 9640 0008 0290     		str	r0, [sp, #8]
 9641 000a 52F8041B 		ldr	r1, [r2], #4
 9642 000e 0192     		str	r2, [sp, #4]
 9643 0010 3323     		movs	r3, #51
 9644 0012 02A8     		add	r0, sp, #8
 9645 0014 0393     		str	r3, [sp, #12]
 9646 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 9647 001a 04B0     		add	sp, sp, #16
 9648              		@ sp needed
 9649 001c 5DF804EB 		ldr	lr, [sp], #4
 9650 0020 03B0     		add	sp, sp, #12
 9651 0022 7047     		bx	lr
 9652              		.size	_ZN6StringILj50EE6printfEPKcz, .-_ZN6StringILj50EE6printfEPKcz
 9653              		.section	.text._ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef,"ax",%progbits
 9654              		.align	1
 9655              		.p2align 2,,3
 9656              		.global	_ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef
 9657              		.syntax unified
 9658              		.thumb
 9659              		.thumb_func
 9660              		.fpu fpv4-sp-d16
 9661              		.type	_ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef, %function
 9662              	_ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef:
 9663              		@ args = 0, pretend = 0, frame = 64
 9664              		@ frame_needed = 0, uses_anonymous_args = 0
 9665 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 9666 0004 2DED028B 		vpush.64	{d8}
 9667 0008 0446     		mov	r4, r0
 9668 000a 8868     		ldr	r0, [r1, #8]
 9669 000c 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 9670 000e 013B     		subs	r3, r3, #1
 9671 0010 95B0     		sub	sp, sp, #84
 9672 0012 0D46     		mov	r5, r1
 9673 0014 1646     		mov	r6, r2
 9674 0016 2E2B     		cmp	r3, #46
 9675 0018 00F29887 		bhi	.L1896
 9676 001c DFE813F0 		tbh	[pc, r3, lsl #1]
 9677              	.L1898:
 9678 0020 3D02     		.2byte	(.L1897-.L1898)/2
 9679 0022 1302     		.2byte	(.L1899-.L1898)/2
 9680 0024 D901     		.2byte	(.L1900-.L1898)/2
 9681 0026 D101     		.2byte	(.L1901-.L1898)/2
 9682 0028 B701     		.2byte	(.L1902-.L1898)/2
 9683 002a 4005     		.2byte	(.L1903-.L1898)/2
 9684 002c FC04     		.2byte	(.L1904-.L1898)/2
 9685 002e 7A06     		.2byte	(.L1905-.L1898)/2
 9686 0030 0903     		.2byte	(.L1906-.L1898)/2
 9687 0032 4005     		.2byte	(.L1903-.L1898)/2
 9688 0034 FC04     		.2byte	(.L1904-.L1898)/2
 9689 0036 7A06     		.2byte	(.L1905-.L1898)/2
 9690 0038 0903     		.2byte	(.L1906-.L1898)/2
ARM GAS  /tmp/ccJRi9N9.s 			page 171


 9691 003a 6307     		.2byte	(.L1907-.L1898)/2
 9692 003c 3E04     		.2byte	(.L1908-.L1898)/2
 9693 003e BD05     		.2byte	(.L1909-.L1898)/2
 9694 0040 FA00     		.2byte	(.L1910-.L1898)/2
 9695 0042 FA00     		.2byte	(.L1910-.L1898)/2
 9696 0044 C700     		.2byte	(.L1911-.L1898)/2
 9697 0046 AF00     		.2byte	(.L1912-.L1898)/2
 9698 0048 A300     		.2byte	(.L1913-.L1898)/2
 9699 004a 6804     		.2byte	(.L1914-.L1898)/2
 9700 004c 6804     		.2byte	(.L1914-.L1898)/2
 9701 004e 5706     		.2byte	(.L1915-.L1898)/2
 9702 0050 7D00     		.2byte	(.L1926-.L1898)/2
 9703 0052 8E00     		.2byte	(.L1927-.L1898)/2
 9704 0054 5101     		.2byte	(.L1918-.L1898)/2
 9705 0056 DF02     		.2byte	(.L1919-.L1898)/2
 9706 0058 2F00     		.2byte	(.L1930-.L1898)/2
 9707 005a 7002     		.2byte	(.L1921-.L1898)/2
 9708 005c 2303     		.2byte	(.L1922-.L1898)/2
 9709 005e 3707     		.2byte	(.L1923-.L1898)/2
 9710 0060 2F00     		.2byte	(.L1930-.L1898)/2
 9711 0062 3C03     		.2byte	(.L1925-.L1898)/2
 9712 0064 7D00     		.2byte	(.L1926-.L1898)/2
 9713 0066 8E00     		.2byte	(.L1927-.L1898)/2
 9714 0068 9304     		.2byte	(.L1928-.L1898)/2
 9715 006a 8603     		.2byte	(.L1929-.L1898)/2
 9716 006c 2F00     		.2byte	(.L1930-.L1898)/2
 9717 006e B106     		.2byte	(.L1931-.L1898)/2
 9718 0070 1307     		.2byte	(.L1932-.L1898)/2
 9719 0072 9405     		.2byte	(.L1933-.L1898)/2
 9720 0074 D703     		.2byte	(.L1934-.L1898)/2
 9721 0076 DA05     		.2byte	(.L1935-.L1898)/2
 9722 0078 A501     		.2byte	(.L1936-.L1898)/2
 9723 007a 2907     		.2byte	(.L1937-.L1898)/2
 9724 007c CB02     		.2byte	(.L1938-.L1898)/2
 9725              		.p2align 1
 9726              	.L1930:
 9727 007e 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 9728 0082 2068     		ldr	r0, [r4]
 9729 0084 0022     		movs	r2, #0
 9730 0086 03F0CF03 		and	r3, r3, #207
 9731 008a 62F34103 		bfi	r3, r2, #1, #1
 9732 008e 84F84F31 		strb	r3, [r4, #335]
 9733 0092 4FF0FF33 		mov	r3, #-1
 9734 0096 0127     		movs	r7, #1
 9735 0098 C4F83831 		str	r3, [r4, #312]
 9736 009c 0223     		movs	r3, #2
 9737 009e 84F84E21 		strb	r2, [r4, #334]
 9738 00a2 C4F84821 		str	r2, [r4, #328]
 9739 00a6 C4F84431 		str	r3, [r4, #324]
 9740 00aa C4F84071 		str	r7, [r4, #320]
 9741 00ae FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 9742 00b2 2068     		ldr	r0, [r4]
 9743 00b4 84ED390A 		vstr.32	s0, [r4, #228]
 9744 00b8 FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 9745 00bc C4F85471 		str	r7, [r4, #340]
 9746 00c0 84ED4C0A 		vstr.32	s0, [r4, #304]
 9747              	.L2239:
ARM GAS  /tmp/ccJRi9N9.s 			page 172


 9748              		.syntax unified
 9749              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 9750 00c4 BFF35F8F 		dmb
 9751              	@ 0 "" 2
 9752              		.thumb
 9753              		.syntax unified
 9754 00c8 C4F85071 		str	r7, [r4, #336]
 9755 00cc AA68     		ldr	r2, [r5, #8]
 9756 00ce 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 9757 00d0 3B44     		add	r3, r3, r7
 9758 00d2 1375     		strb	r3, [r2, #20]
 9759 00d4 AA68     		ldr	r2, [r5, #8]
 9760              	.L1945:
 9761 00d6 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 9762 00d8 23B1     		cbz	r3, .L2253
 9763              	.L1895:
 9764 00da 15B0     		add	sp, sp, #84
 9765              		@ sp needed
 9766 00dc BDEC028B 		vldm	sp!, {d8}
 9767 00e0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 9768              	.L2253:
 9769 00e4 2B71     		strb	r3, [r5, #4]
 9770 00e6 2946     		mov	r1, r5
 9771 00e8 2046     		mov	r0, r4
 9772 00ea FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 9773              	.L2109:
 9774 00ee AB68     		ldr	r3, [r5, #8]
 9775 00f0 1969     		ldr	r1, [r3, #16]
 9776 00f2 81B1     		cbz	r1, .L2124
 9777 00f4 3046     		mov	r0, r6
 9778 00f6 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9779 00fa AB68     		ldr	r3, [r5, #8]
 9780 00fc 0022     		movs	r2, #0
 9781 00fe 1A61     		str	r2, [r3, #16]
 9782 0100 0222     		movs	r2, #2
 9783              	.L2106:
 9784 0102 3368     		ldr	r3, [r6]
 9785 0104 2946     		mov	r1, r5
 9786 0106 2046     		mov	r0, r4
 9787 0108 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 9788 010c 15B0     		add	sp, sp, #84
 9789              		@ sp needed
 9790 010e BDEC028B 		vldm	sp!, {d8}
 9791 0112 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 9792              	.L2124:
 9793 0116 0122     		movs	r2, #1
 9794 0118 F3E7     		b	.L2106
 9795              	.L1926:
 9796 011a 2046     		mov	r0, r4
 9797 011c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 9798 0120 AA68     		ldr	r2, [r5, #8]
 9799 0122 0028     		cmp	r0, #0
 9800 0124 D7D0     		beq	.L1945
 9801 0126 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 9802 0128 0133     		adds	r3, r3, #1
 9803 012a 1375     		strb	r3, [r2, #20]
 9804 012c 2368     		ldr	r3, [r4]
ARM GAS  /tmp/ccJRi9N9.s 			page 173


 9805 012e 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 9806 0132 092B     		cmp	r3, #9
 9807 0134 00F0F887 		beq	.L2048
 9808              	.L1939:
 9809 0138 AA68     		ldr	r2, [r5, #8]
 9810 013a CCE7     		b	.L1945
 9811              	.L1927:
 9812 013c 2046     		mov	r0, r4
 9813 013e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 9814 0142 0028     		cmp	r0, #0
 9815 0144 F8D0     		beq	.L1939
 9816 0146 FFF7FEFF 		bl	millis
 9817 014a 2368     		ldr	r3, [r4]
 9818 014c C4F84005 		str	r0, [r4, #1344]
 9819 0150 93F89410 		ldrb	r1, [r3, #148]	@ zero_extendqisi2
 9820 0154 0029     		cmp	r1, #0
 9821 0156 40F0D887 		bne	.L2254
 9822              	.L2230:
 9823 015a AA68     		ldr	r2, [r5, #8]
 9824 015c 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 9825 015e 0133     		adds	r3, r3, #1
 9826 0160 1375     		strb	r3, [r2, #20]
 9827 0162 AA68     		ldr	r2, [r5, #8]
 9828 0164 B7E7     		b	.L1945
 9829              	.L1913:
 9830 0166 94F8F435 		ldrb	r3, [r4, #1524]	@ zero_extendqisi2
 9831 016a DF07     		lsls	r7, r3, #31
 9832 016c 00F17887 		bmi	.L2255
 9833              	.L1998:
 9834 0170 0023     		movs	r3, #0
 9835 0172 84F8F535 		strb	r3, [r4, #1525]
 9836 0176 AA68     		ldr	r2, [r5, #8]
 9837 0178 1375     		strb	r3, [r2, #20]
 9838 017a AA68     		ldr	r2, [r5, #8]
 9839 017c ABE7     		b	.L1945
 9840              	.L1912:
 9841 017e FFF7FEFF 		bl	_ZN15FirmwareUpdater7IsReadyEv
 9842 0182 0028     		cmp	r0, #0
 9843 0184 D8D0     		beq	.L1939
 9844 0186 94F8F435 		ldrb	r3, [r4, #1524]	@ zero_extendqisi2
 9845 018a C3F34000 		ubfx	r0, r3, #1, #1
 9846 018e 0028     		cmp	r0, #0
 9847 0190 41F02481 		bne	.L1996
 9848 0194 5907     		lsls	r1, r3, #29
 9849 0196 01F12081 		bmi	.L2118
 9850 019a 1A07     		lsls	r2, r3, #28
 9851 019c 48BF     		it	mi
 9852 019e 0320     		movmi	r0, #3
 9853 01a0 01F11C81 		bmi	.L1996
 9854 01a4 AB68     		ldr	r3, [r5, #8]
 9855 01a6 1522     		movs	r2, #21
 9856 01a8 1A75     		strb	r2, [r3, #20]
 9857 01aa AA68     		ldr	r2, [r5, #8]
 9858 01ac 93E7     		b	.L1945
 9859              	.L1911:
 9860 01ae 2046     		mov	r0, r4
 9861 01b0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
ARM GAS  /tmp/ccJRi9N9.s 			page 174


 9862 01b4 0028     		cmp	r0, #0
 9863 01b6 BFD0     		beq	.L1939
 9864 01b8 04F58F68 		add	r8, r4, #1144
 9865 01bc 0027     		movs	r7, #0
 9866              	.L1994:
 9867 01be 3946     		mov	r1, r7
 9868 01c0 B8EC010A 		vldmia.32	r8!, {s0}
 9869 01c4 2068     		ldr	r0, [r4]
 9870 01c6 0137     		adds	r7, r7, #1
 9871 01c8 FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 9872 01cc 092F     		cmp	r7, #9
 9873 01ce F6D1     		bne	.L1994
 9874 01d0 D4F89032 		ldr	r3, [r4, #656]
 9875 01d4 226C     		ldr	r2, [r4, #64]
 9876 01d6 986A     		ldr	r0, [r3, #40]	@ float
 9877 01d8 C4F8C802 		str	r0, [r4, #712]	@ float
 9878 01dc 986A     		ldr	r0, [r3, #40]	@ float
 9879 01de C4F83401 		str	r0, [r4, #308]	@ float
 9880 01e2 1068     		ldr	r0, [r2]
 9881 01e4 5A6A     		ldr	r2, [r3, #36]	@ float
 9882 01e6 8368     		ldr	r3, [r0, #8]
 9883 01e8 BF49     		ldr	r1, .L2274
 9884 01ea 5A60     		str	r2, [r3, #4]	@ float
 9885 01ec D4F89032 		ldr	r3, [r4, #656]
 9886 01f0 0027     		movs	r7, #0
 9887 01f2 DB6A     		ldr	r3, [r3, #44]	@ float
 9888 01f4 C4F86031 		str	r3, [r4, #352]	@ float
 9889 01f8 84F8AA70 		strb	r7, [r4, #170]
 9890 01fc 3046     		mov	r0, r6
 9891 01fe FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 9892 0202 BA4A     		ldr	r2, .L2274+4
 9893 0204 2068     		ldr	r0, [r4]
 9894 0206 8021     		movs	r1, #128
 9895 0208 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 9896 020c AB68     		ldr	r3, [r5, #8]
 9897 020e 1F75     		strb	r7, [r3, #20]
 9898 0210 AA68     		ldr	r2, [r5, #8]
 9899 0212 60E7     		b	.L1945
 9900              	.L1910:
 9901 0214 2046     		mov	r0, r4
 9902 0216 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 9903 021a 0028     		cmp	r0, #0
 9904 021c 8CD0     		beq	.L1939
 9905 021e D4F89C72 		ldr	r7, [r4, #668]
 9906 0222 94ED396A 		vldr.32	s12, [r4, #228]
 9907 0226 002F     		cmp	r7, #0
 9908 0228 01F01081 		beq	.L2256
 9909 022c D4F89032 		ldr	r3, [r4, #656]
 9910 0230 04F1B401 		add	r1, r4, #180
 9911 0234 03EB8707 		add	r7, r3, r7, lsl #2
 9912 0238 0A46     		mov	r2, r1
 9913              	.L1987:
 9914 023a 53F8040B 		ldr	r0, [r3], #4	@ float
 9915 023e 42F8040B 		str	r0, [r2], #4	@ float
 9916 0242 9F42     		cmp	r7, r3
 9917 0244 F9D1     		bne	.L1987
 9918              	.L1986:
ARM GAS  /tmp/ccJRi9N9.s 			page 175


 9919 0246 0023     		movs	r3, #0
 9920 0248 04F1DC02 		add	r2, r4, #220
 9921 024c 2046     		mov	r0, r4
 9922 024e FFF7FEFF 		bl	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 9923 0252 D4F89832 		ldr	r3, [r4, #664]
 9924 0256 0B2B     		cmp	r3, #11
 9925 0258 09D8     		bhi	.L1988
 9926 025a 3733     		adds	r3, r3, #55
 9927 025c 0021     		movs	r1, #0
 9928 025e 04EB8303 		add	r3, r4, r3, lsl #2
 9929 0262 04F58672 		add	r2, r4, #268
 9930              	.L1989:
 9931 0266 43F8041B 		str	r1, [r3], #4	@ float
 9932 026a 9A42     		cmp	r2, r3
 9933 026c FBD1     		bne	.L1989
 9934              	.L1988:
 9935 026e 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 9936 0272 9F48     		ldr	r0, .L2274+8
 9937 0274 C4F83001 		str	r0, [r4, #304]	@ float
 9938 0278 0022     		movs	r2, #0
 9939 027a 03F0CF03 		and	r3, r3, #207
 9940 027e 62F34103 		bfi	r3, r2, #1, #1
 9941 0282 84F84E21 		strb	r2, [r4, #334]
 9942 0286 84F84F31 		strb	r3, [r4, #335]
 9943 028a C4F84821 		str	r2, [r4, #328]
 9944 028e 0223     		movs	r3, #2
 9945 0290 0122     		movs	r2, #1
 9946 0292 4FF0FF31 		mov	r1, #-1
 9947 0296 C4F84021 		str	r2, [r4, #320]
 9948 029a C4F83811 		str	r1, [r4, #312]
 9949 029e C4F84431 		str	r3, [r4, #324]
 9950 02a2 AB68     		ldr	r3, [r5, #8]
 9951 02a4 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 9952 02a6 112A     		cmp	r2, #17
 9953 02a8 00F05D87 		beq	.L2257
 9954              	.L1990:
 9955 02ac 1322     		movs	r2, #19
 9956 02ae 1A75     		strb	r2, [r3, #20]
 9957              	.L1992:
 9958 02b0 0123     		movs	r3, #1
 9959 02b2 C4F85431 		str	r3, [r4, #340]
 9960              		.syntax unified
 9961              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 9962 02b6 BFF35F8F 		dmb
 9963              	@ 0 "" 2
 9964              		.thumb
 9965              		.syntax unified
 9966 02ba C4F85031 		str	r3, [r4, #336]
 9967 02be AA68     		ldr	r2, [r5, #8]
 9968 02c0 09E7     		b	.L1945
 9969              	.L1918:
 9970 02c2 FFF7FEFF 		bl	millis
 9971 02c6 D4F84035 		ldr	r3, [r4, #1344]
 9972 02ca 2268     		ldr	r2, [r4]
 9973 02cc C71A     		subs	r7, r0, r3
 9974 02ce 92F89410 		ldrb	r1, [r2, #148]	@ zero_extendqisi2
 9975 02d2 1046     		mov	r0, r2
ARM GAS  /tmp/ccJRi9N9.s 			page 176


 9976 02d4 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 9977 02d8 9FED867A 		vldr.32	s14, .L2274+12
 9978 02dc D0ED097A 		vldr.32	s15, [r0, #36]
 9979 02e0 67EE877A 		vmul.f32	s15, s15, s14
 9980 02e4 FCEEE77A 		vcvt.u32.f32	s15, s15
 9981 02e8 17EE903A 		vmov	r3, s15	@ int
 9982 02ec 9F42     		cmp	r7, r3
 9983 02ee FFF423AF 		bcc	.L1939
 9984 02f2 2068     		ldr	r0, [r4]
 9985 02f4 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 9986 02f8 002B     		cmp	r3, #0
 9987 02fa 00F05186 		beq	.L2237
 9988 02fe FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 9989 0302 0128     		cmp	r0, #1
 9990 0304 01F07580 		beq	.L2258
 9991 0308 0027     		movs	r7, #0
 9992 030a 84F84475 		strb	r7, [r4, #1348]
 9993 030e 0121     		movs	r1, #1
 9994 0310 2068     		ldr	r0, [r4]
 9995 0312 FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 9996 0316 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 9997 031a 84F84E71 		strb	r7, [r4, #334]
 9998 031e 03F0CF03 		and	r3, r3, #207
 9999 0322 67F34103 		bfi	r3, r7, #1, #1
 10000 0326 4FF0FF31 		mov	r1, #-1
 10001 032a 0222     		movs	r2, #2
 10002 032c 0127     		movs	r7, #1
 10003 032e 84F84F31 		strb	r3, [r4, #335]
 10004 0332 4FF00043 		mov	r3, #-2147483648
 10005 0336 C4F84831 		str	r3, [r4, #328]
 10006 033a C4F83811 		str	r1, [r4, #312]
 10007 033e C4F84421 		str	r2, [r4, #324]
 10008 0342 2068     		ldr	r0, [r4]
 10009 0344 C4F84071 		str	r7, [r4, #320]
 10010 0348 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
 10011 034c 2068     		ldr	r0, [r4]
 10012 034e B1EE400A 		vneg.f32	s0, s0
 10013 0352 84ED390A 		vstr.32	s0, [r4, #228]
 10014 0356 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 10015 035a FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 10016 035e C369     		ldr	r3, [r0, #28]	@ float
 10017 0360 C4F83031 		str	r3, [r4, #304]	@ float
 10018 0364 C4F85471 		str	r7, [r4, #340]
 10019 0368 ACE6     		b	.L2239
 10020              	.L1936:
 10021 036a 634F     		ldr	r7, .L2274+16
 10022 036c 3A6B     		ldr	r2, [r7, #48]
 10023 036e 52B1     		cbz	r2, .L2102
 10024 0370 04F28968 		addw	r8, r4, #1673
 10025 0374 5068     		ldr	r0, [r2, #4]
 10026 0376 4146     		mov	r1, r8
 10027 0378 FFF7FEFF 		bl	_ZN8Filament4LoadEPKc
 10028 037c BB6C     		ldr	r3, [r7, #72]
 10029 037e 1A07     		lsls	r2, r3, #28
 10030 0380 00F1E986 		bmi	.L2101
 10031              	.L2248:
 10032 0384 A868     		ldr	r0, [r5, #8]
ARM GAS  /tmp/ccJRi9N9.s 			page 177


 10033              	.L2102:
 10034 0386 0023     		movs	r3, #0
 10035              	.L2234:
 10036 0388 0375     		strb	r3, [r0, #20]
 10037 038a AA68     		ldr	r2, [r5, #8]
 10038 038c A3E6     		b	.L1945
 10039              	.L1902:
 10040 038e 2046     		mov	r0, r4
 10041 0390 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10042 0394 0028     		cmp	r0, #0
 10043 0396 3FF4CFAE 		beq	.L1939
 10044 039a D4F87034 		ldr	r3, [r4, #1136]
 10045 039e D4F87424 		ldr	r2, [r4, #1140]
 10046 03a2 13EA0207 		ands	r7, r3, r2
 10047 03a6 00F0EF86 		beq	.L2259
 10048 03aa 23EA0203 		bic	r3, r3, r2
 10049 03ae C4F87034 		str	r3, [r4, #1136]
 10050 03b2 002B     		cmp	r3, #0
 10051 03b4 AB68     		ldr	r3, [r5, #8]
 10052 03b6 14BF     		ite	ne
 10053 03b8 0422     		movne	r2, #4
 10054 03ba 0022     		moveq	r2, #0
 10055 03bc 1A75     		strb	r2, [r3, #20]
 10056 03be AA68     		ldr	r2, [r5, #8]
 10057 03c0 89E6     		b	.L1945
 10058              	.L1901:
 10059 03c2 D4F87014 		ldr	r1, [r4, #1136]
 10060 03c6 0029     		cmp	r1, #0
 10061 03c8 40F01E86 		bne	.L1956
 10062 03cc 0175     		strb	r1, [r0, #20]
 10063 03ce AA68     		ldr	r2, [r5, #8]
 10064 03d0 81E6     		b	.L1945
 10065              	.L1900:
 10066 03d2 2046     		mov	r0, r4
 10067 03d4 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10068 03d8 0028     		cmp	r0, #0
 10069 03da 3FF4ADAE 		beq	.L1939
 10070 03de 464B     		ldr	r3, .L2274+16
 10071 03e0 D3F83090 		ldr	r9, [r3, #48]
 10072 03e4 B9F1000F 		cmp	r9, #0
 10073 03e8 00F0F480 		beq	.L2233
 10074 03ec D4F89832 		ldr	r3, [r4, #664]
 10075 03f0 002B     		cmp	r3, #0
 10076 03f2 00F0EF80 		beq	.L2233
 10077 03f6 04F25948 		addw	r8, r4, #1113
 10078 03fa 0027     		movs	r7, #0
 10079 03fc 05E0     		b	.L1955
 10080              	.L1953:
 10081 03fe D4F89832 		ldr	r3, [r4, #664]
 10082 0402 0137     		adds	r7, r7, #1
 10083 0404 BB42     		cmp	r3, r7
 10084 0406 40F2E580 		bls	.L2233
 10085              	.L1955:
 10086 040a 18F8011F 		ldrb	r1, [r8, #1]!	@ zero_extendqisi2
 10087 040e 2846     		mov	r0, r5
 10088 0410 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 10089 0414 0028     		cmp	r0, #0
ARM GAS  /tmp/ccJRi9N9.s 			page 178


 10090 0416 F2D0     		beq	.L1953
 10091 0418 D4F89432 		ldr	r3, [r4, #660]
 10092 041c 04EB8702 		add	r2, r4, r7, lsl #2
 10093 0420 03EB8703 		add	r3, r3, r7, lsl #2
 10094 0424 D2ED2D7A 		vldr.32	s15, [r2, #180]
 10095 0428 93ED008A 		vldr.32	s16, [r3]
 10096 042c 2846     		mov	r0, r5
 10097 042e 38EE678A 		vsub.f32	s16, s16, s15
 10098 0432 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 10099 0436 3946     		mov	r1, r7
 10100 0438 38EE000A 		vadd.f32	s0, s16, s0
 10101 043c 4846     		mov	r0, r9
 10102 043e 0122     		movs	r2, #1
 10103 0440 FFF7FEFF 		bl	_ZN4Tool9SetOffsetEjfb
 10104 0444 C6E0     		b	.L2233
 10105              	.L1899:
 10106 0446 94F89931 		ldrb	r3, [r4, #409]	@ zero_extendqisi2
 10107 044a 002B     		cmp	r3, #0
 10108 044c 9CD0     		beq	.L2234
 10109 044e 022B     		cmp	r3, #2
 10110 0450 7FF443AE 		bne	.L1895
 10111 0454 2046     		mov	r0, r4
 10112 0456 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10113 045a 0028     		cmp	r0, #0
 10114 045c 3FF46CAE 		beq	.L1939
 10115 0460 2649     		ldr	r1, .L2274+20
 10116 0462 3046     		mov	r0, r6
 10117 0464 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 10118 0468 AB68     		ldr	r3, [r5, #8]
 10119 046a 0022     		movs	r2, #0
 10120 046c 1A75     		strb	r2, [r3, #20]
 10121 046e 94F8A830 		ldrb	r3, [r4, #168]	@ zero_extendqisi2
 10122 0472 1BB1     		cbz	r3, .L1950
 10123 0474 2946     		mov	r1, r5
 10124 0476 2046     		mov	r0, r4
 10125 0478 FFF7FEFF 		bl	_ZN6GCodes10AbortPrintER11GCodeBuffer
 10126              	.L1950:
 10127 047c AB68     		ldr	r3, [r5, #8]
 10128 047e 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 10129 0480 002B     		cmp	r3, #0
 10130 0482 7FF42AAE 		bne	.L1895
 10131 0486 2B71     		strb	r3, [r5, #4]
 10132 0488 2946     		mov	r1, r5
 10133 048a 2046     		mov	r0, r4
 10134 048c FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 10135              	.L2105:
 10136 0490 AB68     		ldr	r3, [r5, #8]
 10137 0492 0022     		movs	r2, #0
 10138 0494 1A61     		str	r2, [r3, #16]
 10139 0496 0222     		movs	r2, #2
 10140 0498 33E6     		b	.L2106
 10141              	.L1897:
 10142 049a 2046     		mov	r0, r4
 10143 049c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10144 04a0 0028     		cmp	r0, #0
 10145 04a2 3FF449AE 		beq	.L1939
 10146 04a6 D4F89822 		ldr	r2, [r4, #664]
ARM GAS  /tmp/ccJRi9N9.s 			page 179


 10147 04aa 002A     		cmp	r2, #0
 10148 04ac 00F09280 		beq	.L2233
 10149 04b0 0027     		movs	r7, #0
 10150 04b2 03E0     		b	.L1944
 10151              	.L1941:
 10152 04b4 0137     		adds	r7, r7, #1
 10153 04b6 BA42     		cmp	r2, r7
 10154 04b8 40F28C80 		bls	.L2233
 10155              	.L1944:
 10156 04bc D4F88036 		ldr	r3, [r4, #1664]
 10157 04c0 FB40     		lsrs	r3, r3, r7
 10158 04c2 D807     		lsls	r0, r3, #31
 10159 04c4 F6D5     		bpl	.L1941
 10160 04c6 06AA     		add	r2, sp, #24
 10161 04c8 07AB     		add	r3, sp, #28
 10162 04ca 3946     		mov	r1, r7
 10163 04cc 2068     		ldr	r0, [r4]
 10164 04ce FFF7FEFF 		bl	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType
 10165 04d2 069A     		ldr	r2, [sp, #24]
 10166 04d4 022A     		cmp	r2, #2
 10167 04d6 00F03186 		beq	.L2260
 10168 04da 012A     		cmp	r2, #1
 10169 04dc 00F08486 		beq	.L2216
 10170              	.L2224:
 10171 04e0 D4F89822 		ldr	r2, [r4, #664]
 10172 04e4 E6E7     		b	.L1941
 10173              	.L2275:
 10174 04e6 00BF     		.align	2
 10175              	.L2274:
 10176 04e8 D4000000 		.word	.LC161
 10177 04ec E8000000 		.word	.LC162
 10178 04f0 01004842 		.word	1112014849
 10179 04f4 00007A44 		.word	1148846080
 10180 04f8 00000000 		.word	reprap
 10181 04fc 00000000 		.word	.LC151
 10182              	.L1921:
 10183 0500 2046     		mov	r0, r4
 10184 0502 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10185 0506 0028     		cmp	r0, #0
 10186 0508 3FF416AE 		beq	.L1939
 10187 050c 2068     		ldr	r0, [r4]
 10188 050e 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 10189 0512 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 10190 0516 94F85325 		ldrb	r2, [r4, #1363]	@ zero_extendqisi2
 10191 051a 012A     		cmp	r2, #1
 10192 051c 40F2B386 		bls	.L2029
 10193 0520 04F5A668 		add	r8, r4, #1328
 10194 0524 04F23457 		addw	r7, r4, #1332
 10195 0528 04F23C53 		addw	r3, r4, #1340
 10196 052c 98ED000A 		vldr.32	s0, [r8]
 10197 0530 D7ED007A 		vldr.32	s15, [r7]
 10198 0534 93ED007A 		vldr.32	s14, [r3]
 10199 0538 70EE677A 		vsub.f32	s15, s0, s15
 10200 053c B4EE477A 		vcmp.f32	s14, s14
 10201 0540 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 10202 0544 F0EEE77A 		vabs.f32	s15, s15
 10203 0548 81F10D80 		bvs	.L2119
ARM GAS  /tmp/ccJRi9N9.s 			page 180


 10204 054c B4EE677A 		vcmp.f32	s14, s15
 10205 0550 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 10206 0554 48BF     		it	mi
 10207 0556 F0EE477A 		vmovmi.f32	s15, s14
 10208              	.L2030:
 10209 055a C3ED007A 		vstr.32	s15, [r3]
 10210 055e 90F82C30 		ldrb	r3, [r0, #44]	@ zero_extendqisi2
 10211 0562 012B     		cmp	r3, #1
 10212 0564 40F23586 		bls	.L2032
 10213 0568 90ED0A7A 		vldr.32	s14, [r0, #40]
 10214 056c B4EEE77A 		vcmpe.f32	s14, s15
 10215 0570 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 10216 0574 80F22D86 		bge	.L2032
 10217 0578 9A42     		cmp	r2, r3
 10218 057a C0F08C86 		bcc	.L2033
 10219 057e D64A     		ldr	r2, .L2276
 10220 0580 2068     		ldr	r0, [r4]
 10221 0582 40F2B511 		movw	r1, #437
 10222 0586 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 10223              	.L2056:
 10224 058a AB68     		ldr	r3, [r5, #8]
 10225 058c 0022     		movs	r2, #0
 10226 058e 1A75     		strb	r2, [r3, #20]
 10227 0590 2368     		ldr	r3, [r4]
 10228 0592 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 10229 0596 002B     		cmp	r3, #0
 10230 0598 3FF4CEAD 		beq	.L1939
 10231              	.L2080:
 10232 059c 94F85135 		ldrb	r3, [r4, #1361]	@ zero_extendqisi2
 10233 05a0 002B     		cmp	r3, #0
 10234 05a2 7FF4C9AD 		bne	.L1939
 10235              	.L2232:
 10236 05a6 CD4A     		ldr	r2, .L2276+4
 10237 05a8 0093     		str	r3, [sp]
 10238 05aa 2946     		mov	r1, r5
 10239 05ac 2046     		mov	r0, r4
 10240 05ae FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 10241 05b2 AA68     		ldr	r2, [r5, #8]
 10242 05b4 8FE5     		b	.L1945
 10243              	.L1938:
 10244 05b6 91F82830 		ldrb	r3, [r1, #40]	@ zero_extendqisi2
 10245 05ba 083B     		subs	r3, r3, #8
 10246 05bc 012B     		cmp	r3, #1
 10247 05be 40F2D584 		bls	.L2104
 10248 05c2 0121     		movs	r1, #1
 10249 05c4 2046     		mov	r0, r4
 10250 05c6 FFF7FEFF 		bl	_ZN6GCodes14SaveResumeInfoEb
 10251 05ca C54A     		ldr	r2, .L2276+8
 10252 05cc 2068     		ldr	r0, [r4]
 10253 05ce B521     		movs	r1, #181
 10254              	.L2231:
 10255 05d0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 10256              	.L2233:
 10257 05d4 AB68     		ldr	r3, [r5, #8]
 10258 05d6 0022     		movs	r2, #0
 10259              	.L2228:
 10260 05d8 1A75     		strb	r2, [r3, #20]
ARM GAS  /tmp/ccJRi9N9.s 			page 181


 10261 05da AA68     		ldr	r2, [r5, #8]
 10262 05dc 7BE5     		b	.L1945
 10263              	.L1919:
 10264 05de 2046     		mov	r0, r4
 10265 05e0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10266 05e4 0028     		cmp	r0, #0
 10267 05e6 3FF4A7AD 		beq	.L1939
 10268 05ea 94F85335 		ldrb	r3, [r4, #1363]	@ zero_extendqisi2
 10269 05ee BD4A     		ldr	r2, .L2276+12
 10270 05f0 0133     		adds	r3, r3, #1
 10271 05f2 0027     		movs	r7, #0
 10272 05f4 84F85335 		strb	r3, [r4, #1363]
 10273 05f8 D068     		ldr	r0, [r2, #12]
 10274 05fa 84F85075 		strb	r7, [r4, #1360]
 10275 05fe 3946     		mov	r1, r7
 10276 0600 FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 10277 0604 2068     		ldr	r0, [r4]
 10278 0606 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 10279 060a 002B     		cmp	r3, #0
 10280 060c 40F0B086 		bne	.L2022
 10281 0610 04F5A663 		add	r3, r4, #1328
 10282 0614 D4F8E420 		ldr	r2, [r4, #228]	@ float
 10283 0618 1A60     		str	r2, [r3]	@ float
 10284              	.L2065:
 10285 061a AA68     		ldr	r2, [r5, #8]
 10286 061c 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10287 061e 0133     		adds	r3, r3, #1
 10288 0620 1375     		strb	r3, [r2, #20]
 10289 0622 2368     		ldr	r3, [r4]
 10290 0624 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 10291 0628 092B     		cmp	r3, #9
 10292 062a 7FF485AD 		bne	.L1939
 10293 062e 0023     		movs	r3, #0
 10294 0630 B9E7     		b	.L2232
 10295              	.L1906:
 10296 0632 2046     		mov	r0, r4
 10297 0634 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10298 0638 0028     		cmp	r0, #0
 10299 063a 3FF47DAD 		beq	.L1939
 10300 063e D4F89432 		ldr	r3, [r4, #660]
 10301 0642 9A68     		ldr	r2, [r3, #8]	@ float
 10302 0644 C4F8BC20 		str	r2, [r4, #188]	@ float
 10303 0648 596A     		ldr	r1, [r3, #36]	@ float
 10304 064a AB68     		ldr	r3, [r5, #8]
 10305 064c 0022     		movs	r2, #0
 10306 064e 5960     		str	r1, [r3, #4]	@ float
 10307 0650 84F8AD20 		strb	r2, [r4, #173]
 10308 0654 AB68     		ldr	r3, [r5, #8]
 10309 0656 197D     		ldrb	r1, [r3, #20]	@ zero_extendqisi2
 10310 0658 0929     		cmp	r1, #9
 10311 065a BDD0     		beq	.L2228
 10312 065c 2946     		mov	r1, r5
 10313 065e 2046     		mov	r0, r4
 10314 0660 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 10315 0664 79E5     		b	.L2230
 10316              	.L1922:
 10317 0666 D4F84C35 		ldr	r3, [r4, #1356]
ARM GAS  /tmp/ccJRi9N9.s 			page 182


 10318 066a 9E4A     		ldr	r2, .L2276+12
 10319 066c D807     		lsls	r0, r3, #31
 10320 066e 9168     		ldr	r1, [r2, #8]
 10321 0670 D4F84825 		ldr	r2, [r4, #1352]
 10322 0674 40F18584 		bpl	.L2037
 10323 0678 002A     		cmp	r2, #0
 10324 067a 00F0B384 		beq	.L2225
 10325 067e 013A     		subs	r2, r2, #1
 10326 0680 C4F84825 		str	r2, [r4, #1352]
 10327              	.L2039:
 10328 0684 D1F81C11 		ldr	r1, [r1, #284]
 10329 0688 AA68     		ldr	r2, [r5, #8]
 10330 068a 9942     		cmp	r1, r3
 10331 068c 00F0D083 		beq	.L2251
 10332 0690 1823     		movs	r3, #24
 10333 0692 1375     		strb	r3, [r2, #20]
 10334 0694 AA68     		ldr	r2, [r5, #8]
 10335 0696 1EE5     		b	.L1945
 10336              	.L1925:
 10337 0698 2046     		mov	r0, r4
 10338 069a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10339 069e 0028     		cmp	r0, #0
 10340 06a0 3FF44AAD 		beq	.L1939
 10341 06a4 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 10342 06a8 8E4A     		ldr	r2, .L2276+12
 10343 06aa D4F82415 		ldr	r1, [r4, #1316]
 10344 06ae 9068     		ldr	r0, [r2, #8]
 10345 06b0 0027     		movs	r7, #0
 10346 06b2 03F0CF03 		and	r3, r3, #207
 10347 06b6 67F34103 		bfi	r3, r7, #1, #1
 10348 06ba 4FF0FF3C 		mov	ip, #-1
 10349 06be 4FF00108 		mov	r8, #1
 10350 06c2 0222     		movs	r2, #2
 10351 06c4 84F84F31 		strb	r3, [r4, #335]
 10352 06c8 84F84E71 		strb	r7, [r4, #334]
 10353 06cc C4F84871 		str	r7, [r4, #328]
 10354 06d0 C4F838C1 		str	ip, [r4, #312]
 10355 06d4 C4F84081 		str	r8, [r4, #320]
 10356 06d8 04F1E003 		add	r3, r4, #224
 10357 06dc CDF80080 		str	r8, [sp]
 10358 06e0 C4F84421 		str	r2, [r4, #324]
 10359 06e4 04F1DC02 		add	r2, r4, #220
 10360 06e8 FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 10361 06ec 2068     		ldr	r0, [r4]
 10362              	.L2238:
 10363 06ee FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 10364 06f2 2068     		ldr	r0, [r4]
 10365 06f4 84ED390A 		vstr.32	s0, [r4, #228]
 10366 06f8 FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 10367 06fc C4F85481 		str	r8, [r4, #340]
 10368 0700 84ED4C0A 		vstr.32	s0, [r4, #304]
 10369              		.syntax unified
 10370              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 10371 0704 BFF35F8F 		dmb
 10372              	@ 0 "" 2
 10373              		.thumb
 10374              		.syntax unified
ARM GAS  /tmp/ccJRi9N9.s 			page 183


 10375 0708 04F5A762 		add	r2, r4, #1336
 10376 070c 04F23C53 		addw	r3, r4, #1340
 10377 0710 0020     		movs	r0, #0
 10378 0712 7549     		ldr	r1, .L2276+16
 10379 0714 C4F85081 		str	r8, [r4, #336]
 10380 0718 84F85375 		strb	r7, [r4, #1363]
 10381 071c 1060     		str	r0, [r2]	@ float
 10382 071e 1960     		str	r1, [r3]	@ float
 10383 0720 AA68     		ldr	r2, [r5, #8]
 10384 0722 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10385 0724 4344     		add	r3, r3, r8
 10386 0726 1375     		strb	r3, [r2, #20]
 10387 0728 AA68     		ldr	r2, [r5, #8]
 10388 072a D4E4     		b	.L1945
 10389              	.L1929:
 10390 072c 2046     		mov	r0, r4
 10391 072e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10392 0732 0028     		cmp	r0, #0
 10393 0734 3FF400AD 		beq	.L1939
 10394 0738 6A4F     		ldr	r7, .L2276+12
 10395 073a 0021     		movs	r1, #0
 10396 073c F868     		ldr	r0, [r7, #12]
 10397 073e FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 10398 0742 94F85335 		ldrb	r3, [r4, #1363]	@ zero_extendqisi2
 10399 0746 2068     		ldr	r0, [r4]
 10400 0748 0133     		adds	r3, r3, #1
 10401 074a 4FF00008 		mov	r8, #0
 10402 074e 84F85335 		strb	r3, [r4, #1363]
 10403 0752 84F85085 		strb	r8, [r4, #1360]
 10404 0756 84F85285 		strb	r8, [r4, #1362]
 10405 075a 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 10406 075e 002B     		cmp	r3, #0
 10407 0760 40F0C185 		bne	.L2062
 10408 0764 04F5A668 		add	r8, r4, #1328
 10409 0768 D4F8E430 		ldr	r3, [r4, #228]	@ float
 10410 076c C8F80030 		str	r3, [r8]	@ float
 10411              	.L2063:
 10412 0770 D4F82435 		ldr	r3, [r4, #1316]
 10413 0774 002B     		cmp	r3, #0
 10414 0776 BFF650AF 		bge	.L2065
 10415 077a D4F82835 		ldr	r3, [r4, #1320]
 10416 077e 0233     		adds	r3, r3, #2
 10417 0780 80F0CE86 		bcs	.L2261
 10418 0784 94F85335 		ldrb	r3, [r4, #1363]	@ zero_extendqisi2
 10419 0788 012B     		cmp	r3, #1
 10420 078a 7FF446AF 		bne	.L2065
 10421 078e 94F852A5 		ldrb	r10, [r4, #1362]	@ zero_extendqisi2
 10422 0792 BAF1000F 		cmp	r10, #0
 10423 0796 7FF440AF 		bne	.L2065
 10424 079a 2068     		ldr	r0, [r4]
 10425 079c FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
 10426 07a0 04F1DC09 		add	r9, r4, #220
 10427 07a4 84ED390A 		vstr.32	s0, [r4, #228]
 10428 07a8 5246     		mov	r2, r10
 10429 07aa 4946     		mov	r1, r9
 10430 07ac B868     		ldr	r0, [r7, #8]
 10431 07ae FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
ARM GAS  /tmp/ccJRi9N9.s 			page 184


 10432 07b2 4946     		mov	r1, r9
 10433 07b4 B868     		ldr	r0, [r7, #8]
 10434 07b6 FFF7FEFF 		bl	_ZN4Move18SetZeroHeightErrorEPKf
 10435 07ba 0023     		movs	r3, #0
 10436 07bc C8F80030 		str	r3, [r8]	@ float
 10437 07c0 D4F87434 		ldr	r3, [r4, #1140]
 10438 07c4 43F00403 		orr	r3, r3, #4
 10439 07c8 C4F87434 		str	r3, [r4, #1140]
 10440 07cc 25E7     		b	.L2065
 10441              	.L1934:
 10442 07ce D4F85071 		ldr	r7, [r4, #336]
 10443 07d2 002F     		cmp	r7, #0
 10444 07d4 7FF481AC 		bne	.L1895
 10445 07d8 DFF80881 		ldr	r8, .L2276+12
 10446 07dc 4046     		mov	r0, r8
 10447 07de FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 10448 07e2 8146     		mov	r9, r0
 10449 07e4 4046     		mov	r0, r8
 10450 07e6 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 10451 07ea D8F80820 		ldr	r2, [r8, #8]
 10452 07ee 0090     		str	r0, [sp]
 10453 07f0 4B46     		mov	r3, r9
 10454 07f2 1046     		mov	r0, r2
 10455 07f4 04F1DC01 		add	r1, r4, #220
 10456 07f8 3A46     		mov	r2, r7
 10457 07fa 04F26C57 		addw	r7, r4, #1388
 10458 07fe FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 10459 0802 97ED007A 		vldr.32	s14, [r7]
 10460 0806 D4ED397A 		vldr.32	s15, [r4, #228]
 10461 080a D4F89832 		ldr	r3, [r4, #664]
 10462 080e 77EE877A 		vadd.f32	s15, s15, s14
 10463 0812 0B2B     		cmp	r3, #11
 10464 0814 C4ED397A 		vstr.32	s15, [r4, #228]
 10465 0818 09D8     		bhi	.L2089
 10466 081a 3733     		adds	r3, r3, #55
 10467 081c 0021     		movs	r1, #0
 10468 081e 04EB8303 		add	r3, r4, r3, lsl #2
 10469 0822 04F58672 		add	r2, r4, #268
 10470              	.L2090:
 10471 0826 43F8041B 		str	r1, [r3], #4	@ float
 10472 082a 9A42     		cmp	r2, r3
 10473 082c FBD1     		bne	.L2090
 10474              	.L2089:
 10475 082e 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 10476 0832 2168     		ldr	r1, [r4]
 10477 0834 0022     		movs	r2, #0
 10478 0836 03F0CF03 		and	r3, r3, #207
 10479 083a 62F34103 		bfi	r3, r2, #1, #1
 10480 083e 84F84F31 		strb	r3, [r4, #335]
 10481 0842 0123     		movs	r3, #1
 10482 0844 C4F84031 		str	r3, [r4, #320]
 10483 0848 4FF0FF30 		mov	r0, #-1
 10484 084c 0223     		movs	r3, #2
 10485 084e 84F84E21 		strb	r2, [r4, #334]
 10486 0852 C4F84431 		str	r3, [r4, #324]
 10487 0856 C4F84821 		str	r2, [r4, #328]
 10488 085a C4F83801 		str	r0, [r4, #312]
ARM GAS  /tmp/ccJRi9N9.s 			page 185


 10489 085e D1F84821 		ldr	r2, [r1, #328]	@ float
 10490 0862 236C     		ldr	r3, [r4, #64]
 10491 0864 C4F83021 		str	r2, [r4, #304]	@ float
 10492 0868 1B68     		ldr	r3, [r3]
 10493 086a AB42     		cmp	r3, r5
 10494 086c 00F0F785 		beq	.L2262
 10495              	.L2091:
 10496 0870 94F84F21 		ldrb	r2, [r4, #335]	@ zero_extendqisi2
 10497 0874 C4F83801 		str	r0, [r4, #312]
 10498 0878 6FF38202 		bfc	r2, #2, #1
 10499 087c 0123     		movs	r3, #1
 10500 087e 84ED367A 		vstr.32	s14, [r4, #216]
 10501 0882 84F84F21 		strb	r2, [r4, #335]
 10502 0886 C4F85431 		str	r3, [r4, #340]
 10503              		.syntax unified
 10504              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 10505 088a BFF35F8F 		dmb
 10506              	@ 0 "" 2
 10507              		.thumb
 10508              		.syntax unified
 10509 088e C4F85031 		str	r3, [r4, #336]
 10510 0892 AB68     		ldr	r3, [r5, #8]
 10511 0894 0022     		movs	r2, #0
 10512 0896 1A75     		strb	r2, [r3, #20]
 10513 0898 AA68     		ldr	r2, [r5, #8]
 10514 089a 1CE4     		b	.L1945
 10515              	.L1908:
 10516 089c 2046     		mov	r0, r4
 10517 089e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10518 08a2 0028     		cmp	r0, #0
 10519 08a4 3FF448AC 		beq	.L1939
 10520 08a8 AB68     		ldr	r3, [r5, #8]
 10521 08aa 1022     		movs	r2, #16
 10522 08ac 1A75     		strb	r2, [r3, #20]
 10523 08ae D4F89C22 		ldr	r2, [r4, #668]
 10524 08b2 D4F87414 		ldr	r1, [r4, #1140]
 10525 08b6 0123     		movs	r3, #1
 10526 08b8 03FA02F2 		lsl	r2, r3, r2
 10527 08bc 013A     		subs	r2, r2, #1
 10528 08be 8A43     		bics	r2, r2, r1
 10529 08c0 7FF43AAC 		bne	.L1939
 10530 08c4 0022     		movs	r2, #0
 10531 08c6 0092     		str	r2, [sp]
 10532 08c8 2946     		mov	r1, r5
 10533 08ca 084A     		ldr	r2, .L2276+20
 10534 08cc 2046     		mov	r0, r4
 10535 08ce FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 10536 08d2 AA68     		ldr	r2, [r5, #8]
 10537 08d4 FFF7FFBB 		b	.L1945
 10538              	.L2277:
 10539              		.align	2
 10540              	.L2276:
 10541 08d8 B8010000 		.word	.LC167
 10542 08dc 78010000 		.word	.LC165
 10543 08e0 CC020000 		.word	.LC175
 10544 08e4 00000000 		.word	reprap
 10545 08e8 00007A44 		.word	1148846080
ARM GAS  /tmp/ccJRi9N9.s 			page 186


 10546 08ec B8000000 		.word	.LC159
 10547              	.L1914:
 10548 08f0 4821     		movs	r1, #72
 10549 08f2 2846     		mov	r0, r5
 10550 08f4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 10551 08f8 0028     		cmp	r0, #0
 10552 08fa 40F0B983 		bne	.L1999
 10553              	.L2002:
 10554 08fe AE4F     		ldr	r7, .L2278
 10555 0900 3B6B     		ldr	r3, [r7, #48]
 10556 0902 4BB1     		cbz	r3, .L2001
 10557 0904 94F85825 		ldrb	r2, [r4, #1368]	@ zero_extendqisi2
 10558 0908 D3F89C10 		ldr	r1, [r3, #156]
 10559 090c 0032     		adds	r2, r2, #0
 10560 090e 18BF     		it	ne
 10561 0910 0122     		movne	r2, #1
 10562 0912 3846     		mov	r0, r7
 10563 0914 FFF7FEFF 		bl	_ZN6RepRap11StandbyToolEib
 10564              	.L2001:
 10565 0918 F868     		ldr	r0, [r7, #12]
 10566 091a 0121     		movs	r1, #1
 10567 091c FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 10568              	.L2003:
 10569 0920 AB68     		ldr	r3, [r5, #8]
 10570 0922 2068     		ldr	r0, [r4]
 10571 0924 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 10572 0926 172B     		cmp	r3, #23
 10573 0928 40F05883 		bne	.L2004
 10574 092c 0027     		movs	r7, #0
 10575 092e 00E0     		b	.L2006
 10576              	.L2263:
 10577 0930 2068     		ldr	r0, [r4]
 10578              	.L2006:
 10579 0932 3946     		mov	r1, r7
 10580 0934 0137     		adds	r7, r7, #1
 10581 0936 FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 10582 093a 0C2F     		cmp	r7, #12
 10583 093c F8D1     		bne	.L2263
 10584 093e 0023     		movs	r3, #0
 10585 0940 C4F87434 		str	r3, [r4, #1140]
 10586 0944 46E6     		b	.L2233
 10587              	.L1928:
 10588 0946 FFF7FEFF 		bl	millis
 10589 094a D4F84035 		ldr	r3, [r4, #1344]
 10590 094e 2268     		ldr	r2, [r4]
 10591 0950 C71A     		subs	r7, r0, r3
 10592 0952 92F89410 		ldrb	r1, [r2, #148]	@ zero_extendqisi2
 10593 0956 1046     		mov	r0, r2
 10594 0958 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 10595 095c 9FED977A 		vldr.32	s14, .L2278+4
 10596 0960 D0ED097A 		vldr.32	s15, [r0, #36]
 10597 0964 67EE877A 		vmul.f32	s15, s15, s14
 10598 0968 FCEEE77A 		vcvt.u32.f32	s15, s15
 10599 096c 17EE903A 		vmov	r3, s15	@ int
 10600 0970 9F42     		cmp	r7, r3
 10601 0972 FFF4E1AB 		bcc	.L1939
 10602 0976 2068     		ldr	r0, [r4]
ARM GAS  /tmp/ccJRi9N9.s 			page 187


 10603 0978 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 10604 097c 002B     		cmp	r3, #0
 10605 097e 00F00F83 		beq	.L2237
 10606 0982 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 10607 0986 0128     		cmp	r0, #1
 10608 0988 0746     		mov	r7, r0
 10609 098a 00F03F85 		beq	.L2264
 10610 098e 0027     		movs	r7, #0
 10611 0990 84F84475 		strb	r7, [r4, #1348]
 10612 0994 0121     		movs	r1, #1
 10613 0996 2068     		ldr	r0, [r4]
 10614 0998 FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 10615 099c 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 10616 09a0 D4F87424 		ldr	r2, [r4, #1140]
 10617 09a4 84F84E71 		strb	r7, [r4, #334]
 10618 09a8 03F0CF03 		and	r3, r3, #207
 10619 09ac 67F34103 		bfi	r3, r7, #1, #1
 10620 09b0 4FF0FF37 		mov	r7, #-1
 10621 09b4 0120     		movs	r0, #1
 10622 09b6 84F84F31 		strb	r3, [r4, #335]
 10623 09ba 0221     		movs	r1, #2
 10624 09bc C4F83871 		str	r7, [r4, #312]
 10625 09c0 4FF00043 		mov	r3, #-2147483648
 10626 09c4 5707     		lsls	r7, r2, #29
 10627 09c6 C4F84001 		str	r0, [r4, #320]
 10628 09ca C4F84411 		str	r1, [r4, #324]
 10629 09ce C4F84831 		str	r3, [r4, #328]
 10630 09d2 2068     		ldr	r0, [r4]
 10631 09d4 00F14F85 		bmi	.L2265
 10632 09d8 00F5E562 		add	r2, r0, #1832
 10633 09dc 00F24C73 		addw	r3, r0, #1868
 10634 09e0 92ED000A 		vldr.32	s0, [r2]
 10635 09e4 93ED007A 		vldr.32	s14, [r3]
 10636 09e8 DFED757A 		vldr.32	s15, .L2278+8
 10637 09ec 30EE470A 		vsub.f32	s0, s0, s14
 10638 09f0 20EE270A 		vmul.f32	s0, s0, s15
 10639              	.L2060:
 10640 09f4 84ED390A 		vstr.32	s0, [r4, #228]
 10641 09f8 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 10642 09fc FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 10643 0a00 0123     		movs	r3, #1
 10644 0a02 C269     		ldr	r2, [r0, #28]	@ float
 10645 0a04 C4F83021 		str	r2, [r4, #304]	@ float
 10646 0a08 C4F85431 		str	r3, [r4, #340]
 10647              		.syntax unified
 10648              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 10649 0a0c BFF35F8F 		dmb
 10650              	@ 0 "" 2
 10651              		.thumb
 10652              		.syntax unified
 10653 0a10 C4F85031 		str	r3, [r4, #336]
 10654 0a14 FFF7A1BB 		b	.L2230
 10655              	.L1904:
 10656 0a18 2046     		mov	r0, r4
 10657 0a1a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10658 0a1e 0028     		cmp	r0, #0
 10659 0a20 3FF48AAB 		beq	.L1939
ARM GAS  /tmp/ccJRi9N9.s 			page 188


 10660 0a24 6448     		ldr	r0, .L2278
 10661 0a26 036B     		ldr	r3, [r0, #48]
 10662 0a28 43B1     		cbz	r3, .L1972
 10663 0a2a 94F85825 		ldrb	r2, [r4, #1368]	@ zero_extendqisi2
 10664 0a2e D3F89C10 		ldr	r1, [r3, #156]
 10665 0a32 0032     		adds	r2, r2, #0
 10666 0a34 18BF     		it	ne
 10667 0a36 0122     		movne	r2, #1
 10668 0a38 FFF7FEFF 		bl	_ZN6RepRap11StandbyToolEib
 10669              	.L1972:
 10670 0a3c AA68     		ldr	r2, [r5, #8]
 10671 0a3e 5E48     		ldr	r0, .L2278
 10672 0a40 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10673 0a42 0133     		adds	r3, r3, #1
 10674 0a44 1375     		strb	r3, [r2, #20]
 10675 0a46 AB68     		ldr	r3, [r5, #8]
 10676 0a48 B3F91610 		ldrsh	r1, [r3, #22]
 10677 0a4c FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 10678 0a50 0028     		cmp	r0, #0
 10679 0a52 3FF471AB 		beq	.L1939
 10680 0a56 D4F89C02 		ldr	r0, [r4, #668]
 10681 0a5a D4F87414 		ldr	r1, [r4, #1140]
 10682 0a5e AA68     		ldr	r2, [r5, #8]
 10683 0a60 0123     		movs	r3, #1
 10684 0a62 8340     		lsls	r3, r3, r0
 10685 0a64 013B     		subs	r3, r3, #1
 10686 0a66 8B43     		bics	r3, r3, r1
 10687 0a68 7FF435AB 		bne	.L1945
 10688 0a6c 537D     		ldrb	r3, [r2, #21]	@ zero_extendqisi2
 10689 0a6e 9F07     		lsls	r7, r3, #30
 10690 0a70 7FF531AB 		bpl	.L1945
 10691 0a74 14AF     		add	r7, sp, #80
 10692 0a76 4FF00008 		mov	r8, #0
 10693 0a7a 07F8348D 		strb	r8, [r7, #-52]!
 10694 0a7e 5149     		ldr	r1, .L2278+12
 10695              	.L2236:
 10696 0a80 B2F91620 		ldrsh	r2, [r2, #22]
 10697              	.L2235:
 10698 0a84 3846     		mov	r0, r7
 10699 0a86 FFF7FEFF 		bl	_ZN6StringILj50EE6printfEPKcz
 10700 0a8a 3A46     		mov	r2, r7
 10701 0a8c CDF80080 		str	r8, [sp]
 10702 0a90 4346     		mov	r3, r8
 10703 0a92 2946     		mov	r1, r5
 10704 0a94 2046     		mov	r0, r4
 10705 0a96 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 10706 0a9a AA68     		ldr	r2, [r5, #8]
 10707 0a9c FFF71BBB 		b	.L1945
 10708              	.L1903:
 10709 0aa0 0123     		movs	r3, #1
 10710 0aa2 84F8AD30 		strb	r3, [r4, #173]
 10711 0aa6 04F58F68 		add	r8, r4, #1144
 10712 0aaa 0027     		movs	r7, #0
 10713              	.L1969:
 10714 0aac 3946     		mov	r1, r7
 10715 0aae 2068     		ldr	r0, [r4]
 10716 0ab0 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
ARM GAS  /tmp/ccJRi9N9.s 			page 189


 10717 0ab4 0137     		adds	r7, r7, #1
 10718 0ab6 092F     		cmp	r7, #9
 10719 0ab8 A8EC010A 		vstmia.32	r8!, {s0}
 10720 0abc F6D1     		bne	.L1969
 10721 0abe 04F29C43 		addw	r3, r4, #1180
 10722 0ac2 04F1D401 		add	r1, r4, #212
 10723 0ac6 1A68     		ldr	r2, [r3]	@ float
 10724 0ac8 04F59463 		add	r3, r4, #1184
 10725 0acc 1A60     		str	r2, [r3]	@ float
 10726 0ace D4F89422 		ldr	r2, [r4, #660]
 10727 0ad2 04F1B403 		add	r3, r4, #180
 10728              	.L1970:
 10729 0ad6 D3F800C0 		ldr	ip, [r3]	@ unaligned
 10730 0ada 5F68     		ldr	r7, [r3, #4]	@ unaligned
 10731 0adc 9868     		ldr	r0, [r3, #8]	@ unaligned
 10732 0ade D3F80CE0 		ldr	lr, [r3, #12]	@ unaligned
 10733 0ae2 C2F80CE0 		str	lr, [r2, #12]	@ unaligned
 10734 0ae6 1033     		adds	r3, r3, #16
 10735 0ae8 8B42     		cmp	r3, r1
 10736 0aea C2F800C0 		str	ip, [r2]	@ unaligned
 10737 0aee 5760     		str	r7, [r2, #4]	@ unaligned
 10738 0af0 9060     		str	r0, [r2, #8]	@ unaligned
 10739 0af2 02F11002 		add	r2, r2, #16
 10740 0af6 EED1     		bne	.L1970
 10741 0af8 1B68     		ldr	r3, [r3]	@ unaligned
 10742 0afa 1360     		str	r3, [r2]	@ unaligned
 10743 0afc AA68     		ldr	r2, [r5, #8]
 10744 0afe D4F89432 		ldr	r3, [r4, #660]
 10745 0b02 5268     		ldr	r2, [r2, #4]	@ float
 10746 0b04 5A62     		str	r2, [r3, #36]	@ float
 10747 0b06 AA68     		ldr	r2, [r5, #8]
 10748 0b08 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10749 0b0a 0133     		adds	r3, r3, #1
 10750 0b0c 1375     		strb	r3, [r2, #20]
 10751 0b0e AA68     		ldr	r2, [r5, #8]
 10752 0b10 537D     		ldrb	r3, [r2, #21]	@ zero_extendqisi2
 10753 0b12 DB07     		lsls	r3, r3, #31
 10754 0b14 7FF5DFAA 		bpl	.L1945
 10755 0b18 274B     		ldr	r3, .L2278
 10756 0b1a 186B     		ldr	r0, [r3, #48]
 10757 0b1c 0028     		cmp	r0, #0
 10758 0b1e 3FF4DAAA 		beq	.L1945
 10759 0b22 D4F89C72 		ldr	r7, [r4, #668]
 10760 0b26 D4F87414 		ldr	r1, [r4, #1140]
 10761 0b2a 0123     		movs	r3, #1
 10762 0b2c BB40     		lsls	r3, r3, r7
 10763 0b2e 013B     		subs	r3, r3, #1
 10764 0b30 8B43     		bics	r3, r3, r1
 10765 0b32 7FF4D0AA 		bne	.L1945
 10766 0b36 14AF     		add	r7, sp, #80
 10767 0b38 4FF00008 		mov	r8, #0
 10768 0b3c 07F8348D 		strb	r8, [r7, #-52]!
 10769 0b40 2149     		ldr	r1, .L2278+16
 10770 0b42 D0F89C20 		ldr	r2, [r0, #156]
 10771 0b46 9DE7     		b	.L2235
 10772              	.L1933:
 10773 0b48 D4F82835 		ldr	r3, [r4, #1320]
ARM GAS  /tmp/ccJRi9N9.s 			page 190


 10774 0b4c 0233     		adds	r3, r3, #2
 10775 0b4e 40F03882 		bne	.L2084
 10776 0b52 194B     		ldr	r3, .L2278
 10777 0b54 186B     		ldr	r0, [r3, #48]
 10778 0b56 0028     		cmp	r0, #0
 10779 0b58 00F05083 		beq	.L2266
 10780 0b5c 04F5A663 		add	r3, r4, #1328
 10781 0b60 93ED000A 		vldr.32	s0, [r3]
 10782 0b64 D0ED057A 		vldr.32	s15, [r0, #20]
 10783 0b68 0122     		movs	r2, #1
 10784 0b6a 30EE270A 		vadd.f32	s0, s0, s15
 10785 0b6e 0221     		movs	r1, #2
 10786 0b70 FFF7FEFF 		bl	_ZN4Tool9SetOffsetEjfb
 10787              	.L2247:
 10788 0b74 0027     		movs	r7, #0
 10789              	.L2086:
 10790 0b76 AB68     		ldr	r3, [r5, #8]
 10791 0b78 0022     		movs	r2, #0
 10792 0b7a 1A75     		strb	r2, [r3, #20]
 10793              	.L2227:
 10794 0b7c AB68     		ldr	r3, [r5, #8]
 10795 0b7e 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 10796 0b80 002B     		cmp	r3, #0
 10797 0b82 7FF4AAAA 		bne	.L1895
 10798 0b86 2B71     		strb	r3, [r5, #4]
 10799 0b88 2946     		mov	r1, r5
 10800 0b8a 2046     		mov	r0, r4
 10801 0b8c FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 10802 0b90 002F     		cmp	r7, #0
 10803 0b92 7FF47DAC 		bne	.L2105
 10804 0b96 FFF7AABA 		b	.L2109
 10805              	.L1909:
 10806 0b9a 2046     		mov	r0, r4
 10807 0b9c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10808 0ba0 0028     		cmp	r0, #0
 10809 0ba2 3FF4C9AA 		beq	.L1939
 10810 0ba6 0949     		ldr	r1, .L2278+20
 10811 0ba8 3046     		mov	r0, r6
 10812 0baa FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 10813 0bae 084A     		ldr	r2, .L2278+24
 10814 0bb0 2068     		ldr	r0, [r4]
 10815 0bb2 8021     		movs	r1, #128
 10816 0bb4 0CE5     		b	.L2231
 10817              	.L2279:
 10818 0bb6 00BF     		.align	2
 10819              	.L2278:
 10820 0bb8 00000000 		.word	reprap
 10821 0bbc 00007A44 		.word	1148846080
 10822 0bc0 CDCC8CBF 		.word	3213675725
 10823 0bc4 A0000000 		.word	.LC157
 10824 0bc8 94000000 		.word	.LC156
 10825 0bcc 20000000 		.word	.LC140
 10826 0bd0 C0000000 		.word	.LC160
 10827              	.L1935:
 10828 0bd4 D4F85081 		ldr	r8, [r4, #336]
 10829 0bd8 B8F1000F 		cmp	r8, #0
 10830 0bdc 7FF47DAA 		bne	.L1895
ARM GAS  /tmp/ccJRi9N9.s 			page 191


 10831 0be0 DFF80C94 		ldr	r9, .L2280
 10832 0be4 D9F83070 		ldr	r7, [r9, #48]
 10833 0be8 002F     		cmp	r7, #0
 10834 0bea 3FF4CCAB 		beq	.L2102
 10835 0bee 4846     		mov	r0, r9
 10836 0bf0 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 10837 0bf4 8246     		mov	r10, r0
 10838 0bf6 4846     		mov	r0, r9
 10839 0bf8 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 10840 0bfc D9F80820 		ldr	r2, [r9, #8]
 10841 0c00 0090     		str	r0, [sp]
 10842 0c02 5346     		mov	r3, r10
 10843 0c04 1046     		mov	r0, r2
 10844 0c06 04F1DC01 		add	r1, r4, #220
 10845 0c0a 4246     		mov	r2, r8
 10846 0c0c FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 10847 0c10 D4F89802 		ldr	r0, [r4, #664]
 10848 0c14 0B28     		cmp	r0, #11
 10849 0c16 0AD8     		bhi	.L2096
 10850 0c18 00F13703 		add	r3, r0, #55
 10851 0c1c 0021     		movs	r1, #0
 10852 0c1e 04EB8303 		add	r3, r4, r3, lsl #2
 10853 0c22 04F58672 		add	r2, r4, #268
 10854              	.L2097:
 10855 0c26 43F8041B 		str	r1, [r3], #4	@ float
 10856 0c2a 9A42     		cmp	r2, r3
 10857 0c2c FBD1     		bne	.L2097
 10858              	.L2096:
 10859 0c2e D7F89430 		ldr	r3, [r7, #148]
 10860 0c32 D3B1     		cbz	r3, .L2095
 10861 0c34 04F25C52 		addw	r2, r4, #1372
 10862 0c38 04F5AC63 		add	r3, r4, #1376
 10863 0c3c D2ED007A 		vldr.32	s15, [r2]
 10864 0c40 93ED007A 		vldr.32	s14, [r3]
 10865 0c44 77EE877A 		vadd.f32	s15, s15, s14
 10866 0c48 07F1AF02 		add	r2, r7, #175
 10867              	.L2098:
 10868 0c4c 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 10869 0c4e 0344     		add	r3, r3, r0
 10870 0c50 04EB8303 		add	r3, r4, r3, lsl #2
 10871 0c54 C3ED377A 		vstr.32	s15, [r3, #220]
 10872 0c58 D7F89410 		ldr	r1, [r7, #148]
 10873 0c5c A2F1AE03 		sub	r3, r2, #174
 10874 0c60 DB1B     		subs	r3, r3, r7
 10875 0c62 9942     		cmp	r1, r3
 10876 0c64 02F10102 		add	r2, r2, #1
 10877 0c68 F0D8     		bhi	.L2098
 10878              	.L2095:
 10879 0c6a 0023     		movs	r3, #0
 10880 0c6c 0222     		movs	r2, #2
 10881 0c6e 84F84E31 		strb	r3, [r4, #334]
 10882 0c72 0121     		movs	r1, #1
 10883 0c74 C4F84831 		str	r3, [r4, #328]
 10884 0c78 C4F84421 		str	r2, [r4, #324]
 10885 0c7c 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 10886 0c80 C4F84011 		str	r1, [r4, #320]
 10887 0c84 4FF0FF30 		mov	r0, #-1
ARM GAS  /tmp/ccJRi9N9.s 			page 192


 10888 0c88 04F5AD62 		add	r2, r4, #1384
 10889 0c8c C4F83801 		str	r0, [r4, #312]
 10890 0c90 1268     		ldr	r2, [r2]	@ float
 10891 0c92 C4F83021 		str	r2, [r4, #304]	@ float
 10892 0c96 03F0CD03 		and	r3, r3, #205
 10893 0c9a 0B43     		orrs	r3, r3, r1
 10894 0c9c 226C     		ldr	r2, [r4, #64]
 10895 0c9e 84F84F31 		strb	r3, [r4, #335]
 10896 0ca2 1368     		ldr	r3, [r2]
 10897 0ca4 AB42     		cmp	r3, r5
 10898 0ca6 00F02F84 		beq	.L2267
 10899              	.L2099:
 10900 0caa 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 10901 0cae C4F83801 		str	r0, [r4, #312]
 10902 0cb2 43F00403 		orr	r3, r3, #4
 10903 0cb6 0122     		movs	r2, #1
 10904 0cb8 84F84F31 		strb	r3, [r4, #335]
 10905 0cbc C4F85421 		str	r2, [r4, #340]
 10906              		.syntax unified
 10907              	@ 456 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 10908 0cc0 BFF35F8F 		dmb
 10909              	@ 0 "" 2
 10910              		.thumb
 10911              		.syntax unified
 10912 0cc4 C4F85021 		str	r2, [r4, #336]
 10913 0cc8 A868     		ldr	r0, [r5, #8]
 10914 0cca FFF75CBB 		b	.L2102
 10915              	.L1915:
 10916 0cce C84B     		ldr	r3, .L2280
 10917 0cd0 D4F84815 		ldr	r1, [r4, #1352]
 10918 0cd4 D3F80880 		ldr	r8, [r3, #8]
 10919 0cd8 08F1FC07 		add	r7, r8, #252
 10920 0cdc 3846     		mov	r0, r7
 10921 0cde FFF7FEFF 		bl	_ZNK14GridDefinition14GetXCoordinateEj
 10922 0ce2 3846     		mov	r0, r7
 10923 0ce4 D4F84C15 		ldr	r1, [r4, #1356]
 10924 0ce8 B0EE408A 		vmov.f32	s16, s0
 10925 0cec FFF7FEFF 		bl	_ZNK14GridDefinition14GetYCoordinateEj
 10926 0cf0 3846     		mov	r0, r7
 10927 0cf2 F0EE408A 		vmov.f32	s17, s0
 10928 0cf6 F0EE400A 		vmov.f32	s1, s0
 10929 0cfa B0EE480A 		vmov.f32	s0, s16
 10930 0cfe FFF7FEFF 		bl	_ZNK14GridDefinition10IsInRadiusEff
 10931 0d02 0028     		cmp	r0, #0
 10932 0d04 40F0BB81 		bne	.L2268
 10933 0d08 AB68     		ldr	r3, [r5, #8]
 10934 0d0a 1F22     		movs	r2, #31
 10935 0d0c 1A75     		strb	r2, [r3, #20]
 10936 0d0e AA68     		ldr	r2, [r5, #8]
 10937 0d10 FFF7E1B9 		b	.L1945
 10938              	.L1905:
 10939 0d14 2046     		mov	r0, r4
 10940 0d16 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10941 0d1a 0028     		cmp	r0, #0
 10942 0d1c 3FF40CAA 		beq	.L1939
 10943 0d20 94F85825 		ldrb	r2, [r4, #1368]	@ zero_extendqisi2
 10944 0d24 AB68     		ldr	r3, [r5, #8]
ARM GAS  /tmp/ccJRi9N9.s 			page 193


 10945 0d26 B248     		ldr	r0, .L2280
 10946 0d28 B3F91610 		ldrsh	r1, [r3, #22]
 10947 0d2c 0032     		adds	r2, r2, #0
 10948 0d2e 18BF     		it	ne
 10949 0d30 0122     		movne	r2, #1
 10950 0d32 FFF7FEFF 		bl	_ZN6RepRap10SelectToolEib
 10951 0d36 2046     		mov	r0, r4
 10952 0d38 FFF7FEFF 		bl	_ZN6GCodes25UpdateCurrentUserPositionEv
 10953 0d3c AA68     		ldr	r2, [r5, #8]
 10954 0d3e 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10955 0d40 0133     		adds	r3, r3, #1
 10956 0d42 1375     		strb	r3, [r2, #20]
 10957 0d44 D4F89C12 		ldr	r1, [r4, #668]
 10958 0d48 D4F87424 		ldr	r2, [r4, #1140]
 10959 0d4c 0123     		movs	r3, #1
 10960 0d4e 8B40     		lsls	r3, r3, r1
 10961 0d50 013B     		subs	r3, r3, #1
 10962 0d52 9343     		bics	r3, r3, r2
 10963 0d54 7FF4F0A9 		bne	.L1939
 10964 0d58 AB68     		ldr	r3, [r5, #8]
 10965 0d5a A548     		ldr	r0, .L2280
 10966 0d5c B3F91610 		ldrsh	r1, [r3, #22]
 10967 0d60 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 10968 0d64 AA68     		ldr	r2, [r5, #8]
 10969 0d66 0028     		cmp	r0, #0
 10970 0d68 3FF4B5A9 		beq	.L1945
 10971 0d6c 537D     		ldrb	r3, [r2, #21]	@ zero_extendqisi2
 10972 0d6e 5807     		lsls	r0, r3, #29
 10973 0d70 7FF5B1A9 		bpl	.L1945
 10974 0d74 14AF     		add	r7, sp, #80
 10975 0d76 4FF00008 		mov	r8, #0
 10976 0d7a 07F8348D 		strb	r8, [r7, #-52]!
 10977 0d7e 9D49     		ldr	r1, .L2280+4
 10978 0d80 7EE6     		b	.L2236
 10979              	.L1931:
 10980 0d82 2046     		mov	r0, r4
 10981 0d84 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10982 0d88 0028     		cmp	r0, #0
 10983 0d8a 3FF4D5A9 		beq	.L1939
 10984 0d8e 2068     		ldr	r0, [r4]
 10985 0d90 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 10986 0d94 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 10987 0d98 94F85325 		ldrb	r2, [r4, #1363]	@ zero_extendqisi2
 10988 0d9c 012A     		cmp	r2, #1
 10989 0d9e 40F28782 		bls	.L2071
 10990 0da2 04F5A668 		add	r8, r4, #1328
 10991 0da6 04F23457 		addw	r7, r4, #1332
 10992 0daa 04F23C53 		addw	r3, r4, #1340
 10993 0dae D8ED007A 		vldr.32	s15, [r8]
 10994 0db2 97ED000A 		vldr.32	s0, [r7]
 10995 0db6 D3ED006A 		vldr.32	s13, [r3]
 10996 0dba 37EEC07A 		vsub.f32	s14, s15, s0
 10997 0dbe F4EE666A 		vcmp.f32	s13, s13
 10998 0dc2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 10999 0dc6 B0EEC77A 		vabs.f32	s14, s14
 11000 0dca 80F1D083 		bvs	.L2120
 11001 0dce F4EE476A 		vcmp.f32	s13, s14
ARM GAS  /tmp/ccJRi9N9.s 			page 194


 11002 0dd2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 11003 0dd6 48BF     		it	mi
 11004 0dd8 B0EE667A 		vmovmi.f32	s14, s13
 11005              	.L2072:
 11006 0ddc 83ED007A 		vstr.32	s14, [r3]
 11007 0de0 94F85235 		ldrb	r3, [r4, #1362]	@ zero_extendqisi2
 11008 0de4 7BB9     		cbnz	r3, .L2074
 11009 0de6 90F82C30 		ldrb	r3, [r0, #44]	@ zero_extendqisi2
 11010 0dea 012B     		cmp	r3, #1
 11011 0dec 0BD9     		bls	.L2074
 11012 0dee D0ED0A7A 		vldr.32	s15, [r0, #40]
 11013 0df2 B4EEE77A 		vcmpe.f32	s14, s15
 11014 0df6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 11015 0dfa 00F29C83 		bhi	.L2269
 11016 0dfe D8ED007A 		vldr.32	s15, [r8]
 11017 0e02 97ED000A 		vldr.32	s0, [r7]
 11018              	.L2074:
 11019 0e06 77EE807A 		vadd.f32	s15, s15, s0
 11020 0e0a B6EE000A 		vmov.f32	s0, #5.0e-1
 11021 0e0e 27EE800A 		vmul.f32	s0, s15, s0
 11022 0e12 88ED000A 		vstr.32	s0, [r8]
 11023              	.L2077:
 11024 0e16 D4F82415 		ldr	r1, [r4, #1316]
 11025 0e1a 754F     		ldr	r7, .L2280
 11026 0e1c 0029     		cmp	r1, #0
 11027 0e1e B868     		ldr	r0, [r7, #8]
 11028 0e20 C0F27982 		blt	.L2078
 11029 0e24 94F85235 		ldrb	r3, [r4, #1362]	@ zero_extendqisi2
 11030 0e28 0122     		movs	r2, #1
 11031 0e2a FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 11032              	.L2079:
 11033 0e2e AA68     		ldr	r2, [r5, #8]
 11034              	.L2251:
 11035 0e30 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 11036 0e32 0133     		adds	r3, r3, #1
 11037 0e34 1375     		strb	r3, [r2, #20]
 11038 0e36 2368     		ldr	r3, [r4]
 11039 0e38 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 11040 0e3c 002B     		cmp	r3, #0
 11041 0e3e 7FF4ADAB 		bne	.L2080
 11042 0e42 FFF779B9 		b	.L1939
 11043              	.L1932:
 11044 0e46 2046     		mov	r0, r4
 11045 0e48 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 11046 0e4c 0746     		mov	r7, r0
 11047 0e4e 0028     		cmp	r0, #0
 11048 0e50 3FF491AE 		beq	.L2086
 11049 0e54 D4F82815 		ldr	r1, [r4, #1320]
 11050 0e58 0129     		cmp	r1, #1
 11051 0e5a 00F0A382 		beq	.L2270
 11052 0e5e 481C     		adds	r0, r1, #1
 11053 0e60 FFF688AE 		blt	.L2247
 11054 0e64 624B     		ldr	r3, .L2280
 11055 0e66 3246     		mov	r2, r6
 11056 0e68 9868     		ldr	r0, [r3, #8]
 11057 0e6a FFF7FEFF 		bl	_ZN4Move18FinishedBedProbingEiRK9StringRef
 11058 0e6e 0746     		mov	r7, r0
ARM GAS  /tmp/ccJRi9N9.s 			page 195


 11059 0e70 81E6     		b	.L2086
 11060              	.L1937:
 11061 0e72 5F4F     		ldr	r7, .L2280
 11062 0e74 3B6B     		ldr	r3, [r7, #48]
 11063 0e76 002B     		cmp	r3, #0
 11064 0e78 3FF485AA 		beq	.L2102
 11065 0e7c BA6C     		ldr	r2, [r7, #72]
 11066 0e7e 5868     		ldr	r0, [r3, #4]
 11067 0e80 1307     		lsls	r3, r2, #28
 11068 0e82 00F13881 		bmi	.L2271
 11069              	.L2103:
 11070 0e86 FFF7FEFF 		bl	_ZN8Filament6UnloadEv
 11071 0e8a FFF77BBA 		b	.L2248
 11072              	.L1923:
 11073 0e8e DFF86081 		ldr	r8, .L2280
 11074 0e92 D8F80800 		ldr	r0, [r8, #8]
 11075 0e96 07AA     		add	r2, sp, #28
 11076 0e98 FC30     		adds	r0, r0, #252
 11077 0e9a 06A9     		add	r1, sp, #24
 11078 0e9c FFF7FEFF 		bl	_ZNK9HeightMap13GetStatisticsERfS0_
 11079 0ea0 0328     		cmp	r0, #3
 11080 0ea2 0746     		mov	r7, r0
 11081 0ea4 76D9     		bls	.L2044
 11082 0ea6 0798     		ldr	r0, [sp, #28]	@ float
 11083 0ea8 FFF7FEFF 		bl	__aeabi_f2d
 11084 0eac CDE90201 		strd	r0, [sp, #8]
 11085 0eb0 0698     		ldr	r0, [sp, #24]	@ float
 11086 0eb2 FFF7FEFF 		bl	__aeabi_f2d
 11087 0eb6 3A46     		mov	r2, r7
 11088 0eb8 CDE90001 		strd	r0, [sp]
 11089 0ebc 4E49     		ldr	r1, .L2280+8
 11090 0ebe 3046     		mov	r0, r6
 11091 0ec0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 11092 0ec4 2946     		mov	r1, r5
 11093 0ec6 3246     		mov	r2, r6
 11094 0ec8 2046     		mov	r0, r4
 11095 0eca FFF7FEFF 		bl	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef
 11096 0ece 0746     		mov	r7, r0
 11097 0ed0 D8F80800 		ldr	r0, [r8, #8]
 11098 0ed4 FC30     		adds	r0, r0, #252
 11099 0ed6 FFF7FEFF 		bl	_ZN9HeightMap18ExtrapolateMissingEv
 11100 0eda D8F80800 		ldr	r0, [r8, #8]
 11101 0ede 0121     		movs	r1, #1
 11102 0ee0 FFF7FEFF 		bl	_ZN4Move7UseMeshEb
 11103 0ee4 47E6     		b	.L2086
 11104              	.L1907:
 11105 0ee6 94F88636 		ldrb	r3, [r4, #1670]	@ zero_extendqisi2
 11106 0eea ABBB     		cbnz	r3, .L1979
 11107 0eec 94F85835 		ldrb	r3, [r4, #1368]	@ zero_extendqisi2
 11108 0ef0 93BB     		cbnz	r3, .L1979
 11109 0ef2 3F4F     		ldr	r7, .L2280
 11110 0ef4 D7F83090 		ldr	r9, [r7, #48]
 11111 0ef8 B9F1000F 		cmp	r9, #0
 11112 0efc 2CD0     		beq	.L1979
 11113 0efe D9F89830 		ldr	r3, [r9, #152]
 11114 0f02 4BB3     		cbz	r3, .L1979
 11115 0f04 90F818B0 		ldrb	fp, [r0, #24]	@ zero_extendqisi2
ARM GAS  /tmp/ccJRi9N9.s 			page 196


 11116 0f08 6FF0B80A 		mvn	r10, #184
 11117 0f0c CBF3C00B 		ubfx	fp, fp, #3, #1
 11118 0f10 AAEB090A 		sub	r10, r10, r9
 11119 0f14 09F1B908 		add	r8, r9, #185
 11120 0f18 03E0     		b	.L1981
 11121              	.L2272:
 11122 0f1a D9F89820 		ldr	r2, [r9, #152]
 11123 0f1e 9A42     		cmp	r2, r3
 11124 0f20 1AD9     		bls	.L1979
 11125              	.L1981:
 11126 0f22 18F9011B 		ldrsb	r1, [r8], #1
 11127 0f26 F868     		ldr	r0, [r7, #12]
 11128 0f28 5A46     		mov	r2, fp
 11129 0f2a FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 11130 0f2e 0AEB0803 		add	r3, r10, r8
 11131 0f32 0028     		cmp	r0, #0
 11132 0f34 F1D1     		bne	.L2272
 11133 0f36 3246     		mov	r2, r6
 11134 0f38 2946     		mov	r1, r5
 11135 0f3a 2046     		mov	r0, r4
 11136 0f3c FFF7FEFF 		bl	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef
 11137 0f40 0123     		movs	r3, #1
 11138 0f42 84F88536 		strb	r3, [r4, #1669]
 11139 0f46 AA68     		ldr	r2, [r5, #8]
 11140 0f48 FFF7C5B8 		b	.L1945
 11141              	.L1896:
 11142 0f4c 2B4A     		ldr	r2, .L2280+12
 11143 0f4e 2068     		ldr	r0, [r4]
 11144 0f50 40F2B511 		movw	r1, #437
 11145 0f54 FFF73CBB 		b	.L2231
 11146              	.L1979:
 11147 0f58 0023     		movs	r3, #0
 11148 0f5a 84F88536 		strb	r3, [r4, #1669]
 11149 0f5e 84F88636 		strb	r3, [r4, #1670]
 11150 0f62 AA68     		ldr	r2, [r5, #8]
 11151 0f64 1375     		strb	r3, [r2, #20]
 11152 0f66 AA68     		ldr	r2, [r5, #8]
 11153 0f68 FFF7B5B8 		b	.L1945
 11154              	.L2104:
 11155 0f6c 3246     		mov	r2, r6
 11156 0f6e 2046     		mov	r0, r4
 11157 0f70 FFF7FEFF 		bl	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef
 11158 0f74 0146     		mov	r1, r0
 11159 0f76 2846     		mov	r0, r5
 11160 0f78 FFF7FEFF 		bl	_ZN11GCodeBuffer11SetFinishedEb
 11161 0f7c AA68     		ldr	r2, [r5, #8]
 11162 0f7e FFF7AAB8 		b	.L1945
 11163              	.L2037:
 11164 0f82 D1F81801 		ldr	r0, [r1, #280]
 11165 0f86 0132     		adds	r2, r2, #1
 11166 0f88 8242     		cmp	r2, r0
 11167 0f8a 2BD0     		beq	.L2225
 11168 0f8c C4F84825 		str	r2, [r4, #1352]
 11169 0f90 FFF778BB 		b	.L2039
 11170              	.L2044:
 11171 0f94 1A49     		ldr	r1, .L2280+16
 11172 0f96 3046     		mov	r0, r6
ARM GAS  /tmp/ccJRi9N9.s 			page 197


 11173 0f98 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 11174 0f9c 0127     		movs	r7, #1
 11175 0f9e EAE5     		b	.L2086
 11176              	.L2237:
 11177 0fa0 2946     		mov	r1, r5
 11178 0fa2 2046     		mov	r0, r4
 11179 0fa4 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 11180 0fa8 AA68     		ldr	r2, [r5, #8]
 11181 0faa 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 11182 0fac 0120     		movs	r0, #1
 11183 0fae 0133     		adds	r3, r3, #1
 11184 0fb0 1375     		strb	r3, [r2, #20]
 11185 0fb2 84F85005 		strb	r0, [r4, #1360]
 11186 0fb6 2046     		mov	r0, r4
 11187 0fb8 FFF7FEFF 		bl	_ZN6GCodes13DoManualProbeER11GCodeBuffer
 11188 0fbc AA68     		ldr	r2, [r5, #8]
 11189 0fbe FFF78AB8 		b	.L1945
 11190              	.L2084:
 11191 0fc2 04F22C53 		addw	r3, r4, #1324
 11192 0fc6 0027     		movs	r7, #0
 11193 0fc8 1868     		ldr	r0, [r3]	@ float
 11194 0fca FFF7FEFF 		bl	__aeabi_f2d
 11195 0fce 0246     		mov	r2, r0
 11196 0fd0 0B46     		mov	r3, r1
 11197 0fd2 3046     		mov	r0, r6
 11198 0fd4 0B49     		ldr	r1, .L2280+20
 11199 0fd6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 11200 0fda CCE5     		b	.L2086
 11201              	.L2004:
 11202 0fdc FFF7FEFF 		bl	_ZN8Platform14SetDriversIdleEv
 11203 0fe0 FFF7F8BA 		b	.L2233
 11204              	.L2225:
 11205 0fe4 0133     		adds	r3, r3, #1
 11206 0fe6 C4F84C35 		str	r3, [r4, #1356]
 11207 0fea FFF74BBB 		b	.L2039
 11208              	.L2281:
 11209 0fee 00BF     		.align	2
 11210              	.L2280:
 11211 0ff0 00000000 		.word	reprap
 11212 0ff4 AC000000 		.word	.LC158
 11213 0ff8 DC010000 		.word	.LC168
 11214 0ffc F4020000 		.word	.LC176
 11215 1000 10020000 		.word	.LC169
 11216 1004 84020000 		.word	.LC172
 11217              	.L1956:
 11218 1008 CE4A     		ldr	r2, .L2282
 11219 100a D4F89C32 		ldr	r3, [r4, #668]
 11220 100e 9068     		ldr	r0, [r2, #8]
 11221 1010 D4F87424 		ldr	r2, [r4, #1140]
 11222 1014 D0F8580A 		ldr	r0, [r0, #2648]
 11223 1018 0DF11C0C 		add	ip, sp, #28
 11224 101c 0768     		ldr	r7, [r0]
 11225 101e CDF800C0 		str	ip, [sp]
 11226 1022 7F6C     		ldr	r7, [r7, #68]
 11227 1024 B847     		blx	r7
 11228 1026 8046     		mov	r8, r0
 11229 1028 0028     		cmp	r0, #0
ARM GAS  /tmp/ccJRi9N9.s 			page 198


 11230 102a 00F0EF80 		beq	.L2273
 11231 102e AB68     		ldr	r3, [r5, #8]
 11232 1030 0522     		movs	r2, #5
 11233 1032 0027     		movs	r7, #0
 11234 1034 1A75     		strb	r2, [r3, #20]
 11235 1036 2946     		mov	r1, r5
 11236 1038 0246     		mov	r2, r0
 11237 103a 3B46     		mov	r3, r7
 11238 103c 0097     		str	r7, [sp]
 11239 103e 2046     		mov	r0, r4
 11240 1040 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 11241 1044 8146     		mov	r9, r0
 11242 1046 0028     		cmp	r0, #0
 11243 1048 7FF498AD 		bne	.L2227
 11244 104c 4246     		mov	r2, r8
 11245 104e BE49     		ldr	r1, .L2282+4
 11246 1050 3046     		mov	r0, r6
 11247 1052 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 11248 1056 AB68     		ldr	r3, [r5, #8]
 11249 1058 0127     		movs	r7, #1
 11250 105a 83F81490 		strb	r9, [r3, #20]
 11251 105e 8DE5     		b	.L2227
 11252              	.L2255:
 11253 1060 0023     		movs	r3, #0
 11254 1062 84F8F435 		strb	r3, [r4, #1524]
 11255 1066 2068     		ldr	r0, [r4]
 11256 1068 FFF7FEFF 		bl	_ZN8Platform14UpdateFirmwareEv
 11257 106c FFF780B8 		b	.L1998
 11258              	.L1999:
 11259 1070 2846     		mov	r0, r5
 11260 1072 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 11261 1076 0028     		cmp	r0, #0
 11262 1078 3FF752AC 		bgt	.L2003
 11263 107c 3FE4     		b	.L2002
 11264              	.L2268:
 11265 107e 4046     		mov	r0, r8
 11266 1080 F0EE680A 		vmov.f32	s1, s17
 11267 1084 B0EE480A 		vmov.f32	s0, s16
 11268 1088 FFF7FEFF 		bl	_ZNK4Move22IsAccessibleProbePointEff
 11269 108c 0028     		cmp	r0, #0
 11270 108e 00F08380 		beq	.L2009
 11271 1092 94F84F31 		ldrb	r3, [r4, #335]	@ zero_extendqisi2
 11272 1096 2068     		ldr	r0, [r4]
 11273 1098 0027     		movs	r7, #0
 11274 109a 03F0CF03 		and	r3, r3, #207
 11275 109e 67F34103 		bfi	r3, r7, #1, #1
 11276 10a2 4FF0FF32 		mov	r2, #-1
 11277 10a6 84F84F31 		strb	r3, [r4, #335]
 11278 10aa 4FF00108 		mov	r8, #1
 11279 10ae 0223     		movs	r3, #2
 11280 10b0 C4F83821 		str	r2, [r4, #312]
 11281 10b4 C4F84431 		str	r3, [r4, #324]
 11282 10b8 84F84E71 		strb	r7, [r4, #334]
 11283 10bc C4F84871 		str	r7, [r4, #328]
 11284 10c0 C4F84081 		str	r8, [r4, #320]
 11285 10c4 90F89410 		ldrb	r1, [r0, #148]	@ zero_extendqisi2
 11286 10c8 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
ARM GAS  /tmp/ccJRi9N9.s 			page 199


 11287 10cc D0ED017A 		vldr.32	s15, [r0, #4]
 11288 10d0 2368     		ldr	r3, [r4]
 11289 10d2 38EE678A 		vsub.f32	s16, s16, s15
 11290 10d6 1846     		mov	r0, r3
 11291 10d8 84ED378A 		vstr.32	s16, [r4, #220]
 11292 10dc 93F89410 		ldrb	r1, [r3, #148]	@ zero_extendqisi2
 11293 10e0 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 11294 10e4 D0ED027A 		vldr.32	s15, [r0, #8]
 11295 10e8 2068     		ldr	r0, [r4]
 11296 10ea 78EEE78A 		vsub.f32	s17, s17, s15
 11297 10ee C4ED388A 		vstr.32	s17, [r4, #224]
 11298 10f2 FFF7FCBA 		b	.L2238
 11299              	.L2271:
 11300 10f6 00F10803 		add	r3, r0, #8
 11301 10fa 944A     		ldr	r2, .L2282+8
 11302 10fc 2068     		ldr	r0, [r4]
 11303 10fe B521     		movs	r1, #181
 11304 1100 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 11305 1104 3B6B     		ldr	r3, [r7, #48]
 11306 1106 5868     		ldr	r0, [r3, #4]
 11307 1108 BDE6     		b	.L2103
 11308              	.L2254:
 11309 110a 1846     		mov	r0, r3
 11310 110c FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 11311 1110 90F82E30 		ldrb	r3, [r0, #46]	@ zero_extendqisi2
 11312 1114 002B     		cmp	r3, #0
 11313 1116 3FF420A8 		beq	.L2230
 11314 111a 8A4B     		ldr	r3, .L2282
 11315 111c 0121     		movs	r1, #1
 11316 111e D868     		ldr	r0, [r3, #12]
 11317 1120 FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 11318 1124 FFF719B8 		b	.L2230
 11319              	.L2048:
 11320 1128 0023     		movs	r3, #0
 11321 112a 894A     		ldr	r2, .L2282+12
 11322 112c 0093     		str	r3, [sp]
 11323 112e 2946     		mov	r1, r5
 11324 1130 2046     		mov	r0, r4
 11325 1132 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 11326 1136 AA68     		ldr	r2, [r5, #8]
 11327 1138 FEF7CDBF 		b	.L1945
 11328              	.L2260:
 11329 113c 04EB8703 		add	r3, r4, r7, lsl #2
 11330 1140 0122     		movs	r2, #1
 11331 1142 93ED370A 		vldr.32	s0, [r3, #220]
 11332 1146 2068     		ldr	r0, [r4]
 11333 1148 3946     		mov	r1, r7
 11334 114a FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 11335 114e D4F89822 		ldr	r2, [r4, #664]
 11336 1152 FFF7AFB9 		b	.L1941
 11337              	.L2101:
 11338 1156 4346     		mov	r3, r8
 11339 1158 7E4A     		ldr	r2, .L2282+16
 11340 115a 2068     		ldr	r0, [r4]
 11341 115c B521     		movs	r1, #181
 11342 115e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 11343 1162 FFF70FB9 		b	.L2248
ARM GAS  /tmp/ccJRi9N9.s 			page 200


 11344              	.L2257:
 11345 1166 D4F89022 		ldr	r2, [r4, #656]
 11346 116a D2ED027A 		vldr.32	s15, [r2, #8]
 11347 116e F4EEC67A 		vcmpe.f32	s15, s12
 11348 1172 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 11349 1176 7FF599A8 		bpl	.L1990
 11350 117a 84ED396A 		vstr.32	s12, [r4, #228]
 11351 117e AB68     		ldr	r3, [r5, #8]
 11352 1180 1222     		movs	r2, #18
 11353 1182 1A75     		strb	r2, [r3, #20]
 11354 1184 FFF794B8 		b	.L1992
 11355              	.L2259:
 11356 1188 7349     		ldr	r1, .L2282+20
 11357 118a 3046     		mov	r0, r6
 11358 118c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 11359 1190 AB68     		ldr	r3, [r5, #8]
 11360 1192 1F75     		strb	r7, [r3, #20]
 11361 1194 FFF772B9 		b	.L1950
 11362              	.L2009:
 11363 1198 18EE900A 		vmov	r0, s17
 11364 119c FFF7FEFF 		bl	__aeabi_f2d
 11365 11a0 CDE90201 		strd	r0, [sp, #8]
 11366 11a4 18EE100A 		vmov	r0, s16
 11367 11a8 FFF7FEFF 		bl	__aeabi_f2d
 11368 11ac 2368     		ldr	r3, [r4]
 11369 11ae 6B4A     		ldr	r2, .L2282+24
 11370 11b0 CDE90001 		strd	r0, [sp]
 11371 11b4 1846     		mov	r0, r3
 11372 11b6 40F2B521 		movw	r1, #693
 11373 11ba FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 11374 11be AB68     		ldr	r3, [r5, #8]
 11375 11c0 1F22     		movs	r2, #31
 11376 11c2 1A75     		strb	r2, [r3, #20]
 11377 11c4 AA68     		ldr	r2, [r5, #8]
 11378 11c6 FEF786BF 		b	.L1945
 11379              	.L2220:
 11380 11ca 04F5A663 		add	r3, r4, #1328
 11381 11ce 93ED000A 		vldr.32	s0, [r3]
 11382              	.L2032:
 11383 11d2 5C4B     		ldr	r3, .L2282
 11384 11d4 D4F84C25 		ldr	r2, [r4, #1356]
 11385 11d8 9868     		ldr	r0, [r3, #8]
 11386 11da D4F84815 		ldr	r1, [r4, #1352]
 11387 11de FC30     		adds	r0, r0, #252
 11388 11e0 FFF7FEFF 		bl	_ZN9HeightMap13SetGridHeightEjjf
 11389 11e4 FEF7B9BF 		b	.L2230
 11390              	.L2216:
 11391 11e8 04EB8703 		add	r3, r4, r7, lsl #2
 11392 11ec 93ED370A 		vldr.32	s0, [r3, #220]
 11393 11f0 2068     		ldr	r0, [r4]
 11394 11f2 3946     		mov	r1, r7
 11395 11f4 FFF7FEFF 		bl	_ZN8Platform14SetAxisMinimumEjfb
 11396 11f8 FFF772B9 		b	.L2224
 11397              	.L2266:
 11398 11fc 584A     		ldr	r2, .L2282+28
 11399 11fe 2068     		ldr	r0, [r4]
 11400 1200 40F2B511 		movw	r1, #437
ARM GAS  /tmp/ccJRi9N9.s 			page 201


 11401 1204 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11402 1208 0127     		movs	r7, #1
 11403 120a B4E4     		b	.L2086
 11404              	.L2273:
 11405 120c 5549     		ldr	r1, .L2282+32
 11406 120e 3046     		mov	r0, r6
 11407 1210 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 11408 1214 D4F89C32 		ldr	r3, [r4, #668]
 11409 1218 079F     		ldr	r7, [sp, #28]
 11410 121a 23B9     		cbnz	r3, .L1960
 11411 121c 11E0     		b	.L1958
 11412              	.L1959:
 11413 121e 08F10108 		add	r8, r8, #1
 11414 1222 4345     		cmp	r3, r8
 11415 1224 0DD9     		bls	.L1958
 11416              	.L1960:
 11417 1226 27FA08F2 		lsr	r2, r7, r8
 11418 122a D107     		lsls	r1, r2, #31
 11419 122c F7D5     		bpl	.L1959
 11420 122e 04EB0803 		add	r3, r4, r8
 11421 1232 3046     		mov	r0, r6
 11422 1234 93F85A14 		ldrb	r1, [r3, #1114]	@ zero_extendqisi2
 11423 1238 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 11424 123c D4F89C32 		ldr	r3, [r4, #668]
 11425 1240 EDE7     		b	.L1959
 11426              	.L1958:
 11427 1242 4949     		ldr	r1, .L2282+36
 11428 1244 3046     		mov	r0, r6
 11429 1246 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 11430 124a D4F89C32 		ldr	r3, [r4, #668]
 11431 124e D4F87084 		ldr	r8, [r4, #1136]
 11432 1252 8BB1     		cbz	r3, .L1961
 11433 1254 0027     		movs	r7, #0
 11434 1256 02E0     		b	.L1963
 11435              	.L1962:
 11436 1258 0137     		adds	r7, r7, #1
 11437 125a BB42     		cmp	r3, r7
 11438 125c 0CD9     		bls	.L1961
 11439              	.L1963:
 11440 125e 28FA07F2 		lsr	r2, r8, r7
 11441 1262 D207     		lsls	r2, r2, #31
 11442 1264 F8D5     		bpl	.L1962
 11443 1266 E319     		adds	r3, r4, r7
 11444 1268 3046     		mov	r0, r6
 11445 126a 93F85A14 		ldrb	r1, [r3, #1114]	@ zero_extendqisi2
 11446 126e FFF7FEFF 		bl	_ZNK9StringRef3catEc
 11447 1272 D4F89C32 		ldr	r3, [r4, #668]
 11448 1276 EFE7     		b	.L1962
 11449              	.L1961:
 11450 1278 0023     		movs	r3, #0
 11451 127a C4F87034 		str	r3, [r4, #1136]
 11452 127e AA68     		ldr	r2, [r5, #8]
 11453 1280 0127     		movs	r7, #1
 11454 1282 1375     		strb	r3, [r2, #20]
 11455 1284 7AE4     		b	.L2227
 11456              	.L2029:
 11457 1286 90F82C30 		ldrb	r3, [r0, #44]	@ zero_extendqisi2
ARM GAS  /tmp/ccJRi9N9.s 			page 202


 11458 128a 012B     		cmp	r3, #1
 11459 128c 9DD9     		bls	.L2220
 11460 128e 04F5A668 		add	r8, r4, #1328
 11461 1292 04F23457 		addw	r7, r4, #1332
 11462              	.L2033:
 11463 1296 FFF7FEFF 		bl	millis
 11464 129a C4F84005 		str	r0, [r4, #1344]
 11465 129e D8F80030 		ldr	r3, [r8]	@ float
 11466 12a2 3B60     		str	r3, [r7]	@ float
 11467 12a4 AB68     		ldr	r3, [r5, #8]
 11468 12a6 1922     		movs	r2, #25
 11469 12a8 1A75     		strb	r2, [r3, #20]
 11470 12aa AA68     		ldr	r2, [r5, #8]
 11471 12ac FEF713BF 		b	.L1945
 11472              	.L2071:
 11473 12b0 94F85235 		ldrb	r3, [r4, #1362]	@ zero_extendqisi2
 11474 12b4 002B     		cmp	r3, #0
 11475 12b6 40F0CD80 		bne	.L2112
 11476 12ba 90F82C30 		ldrb	r3, [r0, #44]	@ zero_extendqisi2
 11477 12be 012B     		cmp	r3, #1
 11478 12c0 40F2C880 		bls	.L2112
 11479 12c4 04F5A668 		add	r8, r4, #1328
 11480 12c8 04F23457 		addw	r7, r4, #1332
 11481              	.L2113:
 11482 12cc D8F80030 		ldr	r3, [r8]	@ float
 11483 12d0 3B60     		str	r3, [r7]	@ float
 11484 12d2 FFF7FEFF 		bl	millis
 11485 12d6 C4F84005 		str	r0, [r4, #1344]
 11486 12da AB68     		ldr	r3, [r5, #8]
 11487 12dc 2322     		movs	r2, #35
 11488 12de 1A75     		strb	r2, [r3, #20]
 11489 12e0 AA68     		ldr	r2, [r5, #8]
 11490 12e2 FEF7F8BE 		b	.L1945
 11491              	.L2062:
 11492 12e6 4146     		mov	r1, r8
 11493 12e8 FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 11494 12ec 94F84435 		ldrb	r3, [r4, #1348]	@ zero_extendqisi2
 11495 12f0 002B     		cmp	r3, #0
 11496 12f2 40F0C780 		bne	.L2064
 11497 12f6 1D4A     		ldr	r2, .L2282+40
 11498 12f8 2068     		ldr	r0, [r4]
 11499 12fa 40F2B511 		movw	r1, #437
 11500 12fe 04F5A668 		add	r8, r4, #1328
 11501 1302 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11502 1306 0022     		movs	r2, #0
 11503 1308 0123     		movs	r3, #1
 11504 130a C8F80020 		str	r2, [r8]	@ float
 11505 130e 84F85235 		strb	r3, [r4, #1362]
 11506 1312 FFF72DBA 		b	.L2063
 11507              	.L2078:
 11508 1316 D4ED397A 		vldr.32	s15, [r4, #228]
 11509 131a 37EEC00A 		vsub.f32	s0, s15, s0
 11510 131e 04F1DC08 		add	r8, r4, #220
 11511 1322 84ED390A 		vstr.32	s0, [r4, #228]
 11512 1326 4146     		mov	r1, r8
 11513 1328 0022     		movs	r2, #0
 11514 132a FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
ARM GAS  /tmp/ccJRi9N9.s 			page 203


 11515 132e 4146     		mov	r1, r8
 11516 1330 B868     		ldr	r0, [r7, #8]
 11517 1332 FFF7FEFF 		bl	_ZN4Move18SetZeroHeightErrorEPKf
 11518 1336 4146     		mov	r1, r8
 11519 1338 04F1B402 		add	r2, r4, #180
 11520 133c 2046     		mov	r0, r4
 11521 133e FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 11522 1342 74E5     		b	.L2079
 11523              	.L2283:
 11524              		.align	2
 11525              	.L2282:
 11526 1344 00000000 		.word	reprap
 11527 1348 68000000 		.word	.LC154
 11528 134c B4020000 		.word	.LC174
 11529 1350 24000000 		.word	.LC47
 11530 1354 A0020000 		.word	.LC173
 11531 1358 84000000 		.word	.LC155
 11532 135c FC000000 		.word	.LC163
 11533 1360 5C020000 		.word	.LC171
 11534 1364 38000000 		.word	.LC152
 11535 1368 50000000 		.word	.LC153
 11536 136c 88010000 		.word	.LC166
 11537              	.L2022:
 11538 1370 3946     		mov	r1, r7
 11539 1372 FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 11540 1376 94F84435 		ldrb	r3, [r4, #1348]	@ zero_extendqisi2
 11541 137a 03F0FF07 		and	r7, r3, #255
 11542 137e 002B     		cmp	r3, #0
 11543 1380 40F0AD80 		bne	.L2024
 11544 1384 7B4A     		ldr	r2, .L2284
 11545 1386 2068     		ldr	r0, [r4]
 11546 1388 40F2B511 		movw	r1, #437
 11547 138c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11548 1390 AB68     		ldr	r3, [r5, #8]
 11549 1392 1F75     		strb	r7, [r3, #20]
 11550 1394 2368     		ldr	r3, [r4]
 11551 1396 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 11552 139a 002B     		cmp	r3, #0
 11553 139c 7FF4FEA8 		bne	.L2080
 11554 13a0 FEF7CABE 		b	.L1939
 11555              	.L2270:
 11556 13a4 04F5A663 		add	r3, r4, #1328
 11557 13a8 93ED007A 		vldr.32	s14, [r3]
 11558 13ac D4ED397A 		vldr.32	s15, [r4, #228]
 11559 13b0 714B     		ldr	r3, .L2284+4
 11560 13b2 77EEC77A 		vsub.f32	s15, s15, s14
 11561 13b6 04F1DC07 		add	r7, r4, #220
 11562 13ba 9868     		ldr	r0, [r3, #8]
 11563 13bc C4ED397A 		vstr.32	s15, [r4, #228]
 11564 13c0 3946     		mov	r1, r7
 11565 13c2 0022     		movs	r2, #0
 11566 13c4 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 11567 13c8 3946     		mov	r1, r7
 11568 13ca 04F1B402 		add	r2, r4, #180
 11569 13ce 2046     		mov	r0, r4
 11570 13d0 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 11571 13d4 0027     		movs	r7, #0
ARM GAS  /tmp/ccJRi9N9.s 			page 204


 11572 13d6 FFF7CEBB 		b	.L2086
 11573              	.L2118:
 11574 13da 0220     		movs	r0, #2
 11575              	.L1996:
 11576 13dc 0122     		movs	r2, #1
 11577 13de 8240     		lsls	r2, r2, r0
 11578 13e0 23EA0203 		bic	r3, r3, r2
 11579 13e4 84F8F435 		strb	r3, [r4, #1524]
 11580 13e8 FFF7FEFF 		bl	_ZN15FirmwareUpdater12UpdateModuleEj
 11581 13ec AA68     		ldr	r2, [r5, #8]
 11582 13ee FEF772BE 		b	.L1945
 11583              	.L2258:
 11584 13f2 614B     		ldr	r3, .L2284+4
 11585 13f4 0021     		movs	r1, #0
 11586 13f6 D868     		ldr	r0, [r3, #12]
 11587 13f8 FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 11588 13fc 5F4A     		ldr	r2, .L2284+8
 11589 13fe 2068     		ldr	r0, [r4]
 11590 1400 40F2B511 		movw	r1, #437
 11591 1404 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11592 1408 FFF7BFB8 		b	.L2056
 11593              	.L2264:
 11594 140c DFF86891 		ldr	r9, .L2284+4
 11595 1410 0021     		movs	r1, #0
 11596 1412 D9F80C00 		ldr	r0, [r9, #12]
 11597 1416 FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 11598 141a 594A     		ldr	r2, .L2284+12
 11599 141c 2068     		ldr	r0, [r4]
 11600 141e 40F2B511 		movw	r1, #437
 11601 1422 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11602 1426 D4F82485 		ldr	r8, [r4, #1316]
 11603 142a B8F1000F 		cmp	r8, #0
 11604 142e FFF6ACA8 		blt	.L2056
 11605 1432 D9F80890 		ldr	r9, [r9, #8]
 11606 1436 2068     		ldr	r0, [r4]
 11607 1438 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
 11608 143c 3B46     		mov	r3, r7
 11609 143e 3A46     		mov	r2, r7
 11610 1440 4146     		mov	r1, r8
 11611 1442 4846     		mov	r0, r9
 11612 1444 FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 11613 1448 FFF79FB8 		b	.L2056
 11614              	.L2256:
 11615 144c 04F1B401 		add	r1, r4, #180
 11616 1450 FEF7F9BE 		b	.L1986
 11617              	.L2112:
 11618 1454 04F5A663 		add	r3, r4, #1328
 11619 1458 93ED000A 		vldr.32	s0, [r3]
 11620 145c DBE4     		b	.L2077
 11621              	.L2262:
 11622 145e E068     		ldr	r0, [r4, #12]
 11623 1460 0368     		ldr	r3, [r0]
 11624 1462 9B68     		ldr	r3, [r3, #8]
 11625 1464 9847     		blx	r3
 11626 1466 0146     		mov	r1, r0
 11627 1468 2846     		mov	r0, r5
 11628 146a FFF7FEFF 		bl	_ZNK11GCodeBuffer15GetFilePositionEj
ARM GAS  /tmp/ccJRi9N9.s 			page 205


 11629 146e 97ED007A 		vldr.32	s14, [r7]
 11630 1472 FFF7FDB9 		b	.L2091
 11631              	.L2265:
 11632 1476 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
 11633 147a 2068     		ldr	r0, [r4]
 11634 147c B1EE400A 		vneg.f32	s0, s0
 11635 1480 FFF7B8BA 		b	.L2060
 11636              	.L2064:
 11637 1484 4FF0000C 		mov	ip, #0
 11638 1488 0DF11703 		add	r3, sp, #23
 11639 148c 06AA     		add	r2, sp, #24
 11640 148e 4821     		movs	r1, #72
 11641 1490 2846     		mov	r0, r5
 11642 1492 CDF818C0 		str	ip, [sp, #24]	@ float
 11643 1496 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 11644 149a 4246     		mov	r2, r8
 11645 149c 07A9     		add	r1, sp, #28
 11646 149e B868     		ldr	r0, [r7, #8]
 11647 14a0 FFF7FEFF 		bl	_ZNK4Move25GetCurrentMachinePositionEPfb
 11648 14a4 DDED067A 		vldr.32	s15, [sp, #24]
 11649 14a8 9DED098A 		vldr.32	s16, [sp, #36]
 11650 14ac 38EE678A 		vsub.f32	s16, s16, s15
 11651 14b0 04F22C53 		addw	r3, r4, #1324
 11652 14b4 83ED008A 		vstr.32	s16, [r3]
 11653 14b8 2068     		ldr	r0, [r4]
 11654 14ba FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
 11655 14be 38EE400A 		vsub.f32	s0, s16, s0
 11656 14c2 04F5A668 		add	r8, r4, #1328
 11657 14c6 88ED000A 		vstr.32	s0, [r8]
 11658 14ca 04F5A763 		add	r3, r4, #1336
 11659 14ce D3ED007A 		vldr.32	s15, [r3]
 11660 14d2 37EE800A 		vadd.f32	s0, s15, s0
 11661 14d6 83ED000A 		vstr.32	s0, [r3]
 11662 14da FFF749B9 		b	.L2063
 11663              	.L2024:
 11664 14de 2068     		ldr	r0, [r4]
 11665 14e0 94ED398A 		vldr.32	s16, [r4, #228]
 11666 14e4 FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
 11667 14e8 38EE400A 		vsub.f32	s0, s16, s0
 11668 14ec 04F5A663 		add	r3, r4, #1328
 11669 14f0 83ED000A 		vstr.32	s0, [r3]
 11670 14f4 04F5A763 		add	r3, r4, #1336
 11671 14f8 D3ED007A 		vldr.32	s15, [r3]
 11672 14fc 37EE800A 		vadd.f32	s0, s15, s0
 11673 1500 83ED000A 		vstr.32	s0, [r3]
 11674 1504 FFF789B8 		b	.L2065
 11675              	.L2267:
 11676 1508 AB68     		ldr	r3, [r5, #8]
 11677 150a 9868     		ldr	r0, [r3, #8]
 11678 150c FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 11679 1510 0746     		mov	r7, r0
 11680 1512 E068     		ldr	r0, [r4, #12]
 11681 1514 0368     		ldr	r3, [r0]
 11682 1516 9B68     		ldr	r3, [r3, #8]
 11683 1518 9847     		blx	r3
 11684 151a 381A     		subs	r0, r7, r0
 11685 151c FFF7C5BB 		b	.L2099
ARM GAS  /tmp/ccJRi9N9.s 			page 206


 11686              	.L2261:
 11687 1520 AB68     		ldr	r3, [r5, #8]
 11688 1522 2A22     		movs	r2, #42
 11689 1524 1A75     		strb	r2, [r3, #20]
 11690 1526 2368     		ldr	r3, [r4]
 11691 1528 93F89430 		ldrb	r3, [r3, #148]	@ zero_extendqisi2
 11692 152c 002B     		cmp	r3, #0
 11693 152e 7FF435A8 		bne	.L2080
 11694 1532 FEF701BE 		b	.L1939
 11695              	.L2269:
 11696 1536 9A42     		cmp	r2, r3
 11697 1538 FFF4C8AE 		bcc	.L2113
 11698 153c 114A     		ldr	r2, .L2284+16
 11699 153e 2068     		ldr	r0, [r4]
 11700 1540 40F2B521 		movw	r1, #693
 11701 1544 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11702 1548 94F85335 		ldrb	r3, [r4, #1363]	@ zero_extendqisi2
 11703 154c 07EE903A 		vmov	s15, r3	@ int
 11704 1550 04F5A763 		add	r3, r4, #1336
 11705 1554 93ED007A 		vldr.32	s14, [r3]
 11706 1558 F8EEE77A 		vcvt.f32.s32	s15, s15
 11707 155c 87EE270A 		vdiv.f32	s0, s14, s15
 11708 1560 88ED000A 		vstr.32	s0, [r8]
 11709 1564 57E4     		b	.L2077
 11710              	.L2119:
 11711 1566 F0EE477A 		vmov.f32	s15, s14
 11712 156a FEF7F6BF 		b	.L2030
 11713              	.L2120:
 11714 156e B0EE667A 		vmov.f32	s14, s13
 11715 1572 33E4     		b	.L2072
 11716              	.L2285:
 11717              		.align	2
 11718              	.L2284:
 11719 1574 88010000 		.word	.LC166
 11720 1578 00000000 		.word	reprap
 11721 157c 40010000 		.word	.LC164
 11722 1580 28020000 		.word	.LC170
 11723 1584 B8010000 		.word	.LC167
 11724              		.size	_ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef, .-_ZN6GCodes15RunStateMachineER11GCo
 11725              		.section	.text._ZN6GCodes16WriteGCodeToFileER11GCodeBuffer,"ax",%progbits
 11726              		.align	1
 11727              		.p2align 2,,3
 11728              		.global	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer
 11729              		.syntax unified
 11730              		.thumb
 11731              		.thumb_func
 11732              		.fpu fpv4-sp-d16
 11733              		.type	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer, %function
 11734              	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer:
 11735              		@ args = 0, pretend = 0, frame = 56
 11736              		@ frame_needed = 0, uses_anonymous_args = 0
 11737 0000 70B5     		push	{r4, r5, r6, lr}
 11738 0002 0546     		mov	r5, r0
 11739 0004 D0F84C04 		ldr	r0, [r0, #1100]
 11740 0008 8EB0     		sub	sp, sp, #56
 11741 000a 0028     		cmp	r0, #0
 11742 000c 3BD0     		beq	.L2295
ARM GAS  /tmp/ccJRi9N9.s 			page 207


 11743 000e 91F84C30 		ldrb	r3, [r1, #76]	@ zero_extendqisi2
 11744 0012 4D2B     		cmp	r3, #77
 11745 0014 0C46     		mov	r4, r1
 11746 0016 12D0     		beq	.L2296
 11747 0018 472B     		cmp	r3, #71
 11748 001a 27D0     		beq	.L2297
 11749              	.L2290:
 11750 001c 04F14D01 		add	r1, r4, #77
 11751 0020 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 11752 0024 0A21     		movs	r1, #10
 11753 0026 D5F84C04 		ldr	r0, [r5, #1100]
 11754 002a FFF7FEFF 		bl	_ZN9FileStore5WriteEc
 11755 002e 2146     		mov	r1, r4
 11756 0030 2846     		mov	r0, r5
 11757 0032 224B     		ldr	r3, .L2298
 11758 0034 0122     		movs	r2, #1
 11759 0036 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 11760              	.L2286:
 11761 003a 0EB0     		add	sp, sp, #56
 11762              		@ sp needed
 11763 003c 70BD     		pop	{r4, r5, r6, pc}
 11764              	.L2296:
 11765 003e 0B6C     		ldr	r3, [r1, #64]
 11766 0040 1D2B     		cmp	r3, #29
 11767 0042 EBD1     		bne	.L2290
 11768 0044 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 11769 0048 0023     		movs	r3, #0
 11770 004a C5F84C34 		str	r3, [r5, #1100]
 11771 004e E362     		str	r3, [r4, #44]
 11772 0050 2868     		ldr	r0, [r5]
 11773 0052 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 11774 0056 194A     		ldr	r2, .L2298
 11775 0058 194B     		ldr	r3, .L2298+4
 11776 005a 2146     		mov	r1, r4
 11777 005c 0228     		cmp	r0, #2
 11778 005e 18BF     		it	ne
 11779 0060 1346     		movne	r3, r2
 11780 0062 0122     		movs	r2, #1
 11781 0064 2846     		mov	r0, r5
 11782 0066 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 11783 006a E6E7     		b	.L2286
 11784              	.L2297:
 11785 006c 0A6C     		ldr	r2, [r1, #64]
 11786 006e 40F2E633 		movw	r3, #998
 11787 0072 9A42     		cmp	r2, r3
 11788 0074 D2D1     		bne	.L2290
 11789 0076 5021     		movs	r1, #80
 11790 0078 2046     		mov	r0, r4
 11791 007a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 11792 007e 50B9     		cbnz	r0, .L2292
 11793 0080 D5F84C04 		ldr	r0, [r5, #1100]
 11794 0084 CAE7     		b	.L2290
 11795              	.L2295:
 11796 0086 2868     		ldr	r0, [r5]
 11797 0088 0E4A     		ldr	r2, .L2298+8
 11798 008a 40F2B511 		movw	r1, #437
 11799 008e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
ARM GAS  /tmp/ccJRi9N9.s 			page 208


 11800 0092 0EB0     		add	sp, sp, #56
 11801              		@ sp needed
 11802 0094 70BD     		pop	{r4, r5, r6, pc}
 11803              	.L2292:
 11804 0096 0EAE     		add	r6, sp, #56
 11805 0098 0023     		movs	r3, #0
 11806 009a 2046     		mov	r0, r4
 11807 009c 06F8343D 		strb	r3, [r6, #-52]!
 11808 00a0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 11809 00a4 0849     		ldr	r1, .L2298+12
 11810 00a6 0246     		mov	r2, r0
 11811 00a8 3046     		mov	r0, r6
 11812 00aa FFF7FEFF 		bl	_ZN6StringILj50EE6printfEPKcz
 11813 00ae 3346     		mov	r3, r6
 11814 00b0 2146     		mov	r1, r4
 11815 00b2 2846     		mov	r0, r5
 11816 00b4 0122     		movs	r2, #1
 11817 00b6 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 11818 00ba BEE7     		b	.L2286
 11819              	.L2299:
 11820              		.align	2
 11821              	.L2298:
 11822 00bc 24000000 		.word	.LC80
 11823 00c0 28000000 		.word	.LC81
 11824 00c4 00000000 		.word	.LC82
 11825 00c8 00000000 		.word	.LC177
 11826              		.size	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer, .-_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer
 11827              		.section	.text._ZN6StringILj25EE6printfEPKcz,"axG",%progbits,_ZN6StringILj25EE6printfEPKcz,comdat
 11828              		.align	1
 11829              		.p2align 2,,3
 11830              		.weak	_ZN6StringILj25EE6printfEPKcz
 11831              		.syntax unified
 11832              		.thumb
 11833              		.thumb_func
 11834              		.fpu fpv4-sp-d16
 11835              		.type	_ZN6StringILj25EE6printfEPKcz, %function
 11836              	_ZN6StringILj25EE6printfEPKcz:
 11837              		@ args = 4, pretend = 12, frame = 16
 11838              		@ frame_needed = 0, uses_anonymous_args = 1
 11839 0000 0EB4     		push	{r1, r2, r3}
 11840 0002 00B5     		push	{lr}
 11841 0004 84B0     		sub	sp, sp, #16
 11842 0006 05AA     		add	r2, sp, #20
 11843 0008 0290     		str	r0, [sp, #8]
 11844 000a 52F8041B 		ldr	r1, [r2], #4
 11845 000e 0192     		str	r2, [sp, #4]
 11846 0010 1A23     		movs	r3, #26
 11847 0012 02A8     		add	r0, sp, #8
 11848 0014 0393     		str	r3, [sp, #12]
 11849 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 11850 001a 04B0     		add	sp, sp, #16
 11851              		@ sp needed
 11852 001c 5DF804EB 		ldr	lr, [sp], #4
 11853 0020 03B0     		add	sp, sp, #12
 11854 0022 7047     		bx	lr
 11855              		.size	_ZN6StringILj25EE6printfEPKcz, .-_ZN6StringILj25EE6printfEPKcz
 11856              		.section	.text._ZN6GCodes13CheckTriggersEv,"ax",%progbits
ARM GAS  /tmp/ccJRi9N9.s 			page 209


 11857              		.align	1
 11858              		.p2align 2,,3
 11859              		.global	_ZN6GCodes13CheckTriggersEv
 11860              		.syntax unified
 11861              		.thumb
 11862              		.thumb_func
 11863              		.fpu fpv4-sp-d16
 11864              		.type	_ZN6GCodes13CheckTriggersEv, %function
 11865              	_ZN6GCodes13CheckTriggersEv:
 11866              		@ args = 0, pretend = 0, frame = 32
 11867              		@ frame_needed = 0, uses_anonymous_args = 0
 11868 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 11869 0002 0446     		mov	r4, r0
 11870 0004 8BB0     		sub	sp, sp, #44
 11871 0006 0068     		ldr	r0, [r0]
 11872 0008 D4F8EC55 		ldr	r5, [r4, #1516]
 11873 000c FFF7FEFF 		bl	_ZNK8Platform19GetAllEndstopStatesEv
 11874 0010 4E4B     		ldr	r3, .L2337
 11875 0012 C4F8EC05 		str	r0, [r4, #1516]
 11876 0016 D3F81CC0 		ldr	ip, [r3, #28]
 11877 001a 20EA0506 		bic	r6, r0, r5
 11878 001e 2146     		mov	r1, r4
 11879 0020 25EA0000 		bic	r0, r5, r0
 11880 0024 0023     		movs	r3, #0
 11881 0026 0A22     		movs	r2, #10
 11882 0028 0127     		movs	r7, #1
 11883 002a 0FE0     		b	.L2307
 11884              	.L2334:
 11885 002c 012D     		cmp	r5, #1
 11886 002e 22D0     		beq	.L2332
 11887              	.L2304:
 11888 0030 9A42     		cmp	r2, r3
 11889 0032 01F10C01 		add	r1, r1, #12
 11890 0036 06D9     		bls	.L2306
 11891 0038 D4F8F055 		ldr	r5, [r4, #1520]
 11892 003c DD40     		lsrs	r5, r5, r3
 11893 003e 15F0010F 		tst	r5, #1
 11894 0042 18BF     		it	ne
 11895 0044 1A46     		movne	r2, r3
 11896              	.L2306:
 11897 0046 0133     		adds	r3, r3, #1
 11898 0048 0A2B     		cmp	r3, #10
 11899 004a 21D0     		beq	.L2333
 11900              	.L2307:
 11901 004c D1F87455 		ldr	r5, [r1, #1396]
 11902 0050 2E42     		tst	r6, r5
 11903 0052 03D1     		bne	.L2303
 11904 0054 D1F87855 		ldr	r5, [r1, #1400]
 11905 0058 2842     		tst	r0, r5
 11906 005a E9D0     		beq	.L2304
 11907              	.L2303:
 11908 005c 91F87C55 		ldrb	r5, [r1, #1404]	@ zero_extendqisi2
 11909 0060 002D     		cmp	r5, #0
 11910 0062 E3D1     		bne	.L2334
 11911 0064 D4F8F055 		ldr	r5, [r4, #1520]
 11912 0068 07FA03FE 		lsl	lr, r7, r3
 11913 006c 45EA0E05 		orr	r5, r5, lr
ARM GAS  /tmp/ccJRi9N9.s 			page 210


 11914 0070 C4F8F055 		str	r5, [r4, #1520]
 11915 0074 DCE7     		b	.L2304
 11916              	.L2332:
 11917 0076 9CF80C50 		ldrb	r5, [ip, #12]	@ zero_extendqisi2
 11918 007a 002D     		cmp	r5, #0
 11919 007c D8D0     		beq	.L2304
 11920 007e D4F8F055 		ldr	r5, [r4, #1520]
 11921 0082 07FA03FE 		lsl	lr, r7, r3
 11922 0086 45EA0E05 		orr	r5, r5, lr
 11923 008a C4F8F055 		str	r5, [r4, #1520]
 11924 008e CFE7     		b	.L2304
 11925              	.L2333:
 11926 0090 42B1     		cbz	r2, .L2335
 11927 0092 0A2A     		cmp	r2, #10
 11928 0094 04D0     		beq	.L2302
 11929 0096 E36C     		ldr	r3, [r4, #76]
 11930 0098 1B68     		ldr	r3, [r3]
 11931 009a 9B68     		ldr	r3, [r3, #8]
 11932 009c 9968     		ldr	r1, [r3, #8]
 11933 009e 61B1     		cbz	r1, .L2336
 11934              	.L2302:
 11935 00a0 0BB0     		add	sp, sp, #44
 11936              		@ sp needed
 11937 00a2 F0BD     		pop	{r4, r5, r6, r7, pc}
 11938              	.L2335:
 11939 00a4 D4F8F035 		ldr	r3, [r4, #1520]
 11940 00a8 23F00103 		bic	r3, r3, #1
 11941 00ac C4F8F035 		str	r3, [r4, #1520]
 11942 00b0 2046     		mov	r0, r4
 11943 00b2 FFF7FEFF 		bl	_ZN6GCodes15DoEmergencyStopEv
 11944 00b6 0BB0     		add	sp, sp, #44
 11945              		@ sp needed
 11946 00b8 F0BD     		pop	{r4, r5, r6, r7, pc}
 11947              	.L2336:
 11948 00ba 1D7D     		ldrb	r5, [r3, #20]	@ zero_extendqisi2
 11949 00bc 002D     		cmp	r5, #0
 11950 00be EFD1     		bne	.L2302
 11951 00c0 012A     		cmp	r2, #1
 11952 00c2 09D1     		bne	.L2312
 11953 00c4 9CF80C30 		ldrb	r3, [ip, #12]	@ zero_extendqisi2
 11954 00c8 FBB9     		cbnz	r3, .L2313
 11955              	.L2314:
 11956 00ca D4F8F035 		ldr	r3, [r4, #1520]
 11957 00ce 23F00203 		bic	r3, r3, #2
 11958 00d2 C4F8F035 		str	r3, [r4, #1520]
 11959 00d6 E3E7     		b	.L2302
 11960              	.L2312:
 11961 00d8 0AAE     		add	r6, sp, #40
 11962 00da D4F8F015 		ldr	r1, [r4, #1520]
 11963 00de 06F81C5D 		strb	r5, [r6, #-28]!
 11964 00e2 0127     		movs	r7, #1
 11965 00e4 07FA02F3 		lsl	r3, r7, r2
 11966 00e8 21EA0301 		bic	r1, r1, r3
 11967 00ec C4F8F015 		str	r1, [r4, #1520]
 11968 00f0 3046     		mov	r0, r6
 11969 00f2 1749     		ldr	r1, .L2337+4
 11970 00f4 FFF7FEFF 		bl	_ZN6StringILj25EE6printfEPKcz
ARM GAS  /tmp/ccJRi9N9.s 			page 211


 11971 00f8 E36C     		ldr	r3, [r4, #76]
 11972 00fa 3246     		mov	r2, r6
 11973 00fc 1968     		ldr	r1, [r3]
 11974 00fe 0095     		str	r5, [sp]
 11975 0100 3B46     		mov	r3, r7
 11976 0102 2046     		mov	r0, r4
 11977 0104 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 11978 0108 CAE7     		b	.L2302
 11979              	.L2313:
 11980 010a 2046     		mov	r0, r4
 11981 010c FFF7FEFF 		bl	_ZNK6GCodes16IsReallyPrintingEv.part.56
 11982 0110 0028     		cmp	r0, #0
 11983 0112 DAD0     		beq	.L2314
 11984 0114 E36C     		ldr	r3, [r4, #76]
 11985 0116 E16D     		ldr	r1, [r4, #92]
 11986 0118 1B68     		ldr	r3, [r3]
 11987 011a 8B42     		cmp	r3, r1
 11988 011c 09D0     		beq	.L2315
 11989 011e 0029     		cmp	r1, #0
 11990 0120 BED1     		bne	.L2302
 11991 0122 E365     		str	r3, [r4, #92]
 11992 0124 9A68     		ldr	r2, [r3, #8]
 11993 0126 D368     		ldr	r3, [r2, #12]
 11994 0128 43F00103 		orr	r3, r3, #1
 11995 012c D360     		str	r3, [r2, #12]
 11996 012e E36C     		ldr	r3, [r4, #76]
 11997 0130 1968     		ldr	r1, [r3]
 11998              	.L2315:
 11999 0132 D4F8F025 		ldr	r2, [r4, #1520]
 12000 0136 074B     		ldr	r3, .L2337+8
 12001 0138 22F00202 		bic	r2, r2, #2
 12002 013c C4F8F025 		str	r2, [r4, #1520]
 12003 0140 2046     		mov	r0, r4
 12004 0142 0222     		movs	r2, #2
 12005 0144 FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 12006 0148 AAE7     		b	.L2302
 12007              	.L2338:
 12008 014a 00BF     		.align	2
 12009              	.L2337:
 12010 014c 00000000 		.word	reprap
 12011 0150 24000000 		.word	.LC179
 12012 0154 00000000 		.word	.LC178
 12013              		.size	_ZN6GCodes13CheckTriggersEv, .-_ZN6GCodes13CheckTriggersEv
 12014              		.section	.text._ZN6StringILj100EE6printfEPKcz,"axG",%progbits,_ZN6StringILj100EE6printfEPKcz,comda
 12015              		.align	1
 12016              		.p2align 2,,3
 12017              		.weak	_ZN6StringILj100EE6printfEPKcz
 12018              		.syntax unified
 12019              		.thumb
 12020              		.thumb_func
 12021              		.fpu fpv4-sp-d16
 12022              		.type	_ZN6StringILj100EE6printfEPKcz, %function
 12023              	_ZN6StringILj100EE6printfEPKcz:
 12024              		@ args = 4, pretend = 12, frame = 16
 12025              		@ frame_needed = 0, uses_anonymous_args = 1
 12026 0000 0EB4     		push	{r1, r2, r3}
 12027 0002 00B5     		push	{lr}
ARM GAS  /tmp/ccJRi9N9.s 			page 212


 12028 0004 84B0     		sub	sp, sp, #16
 12029 0006 05AA     		add	r2, sp, #20
 12030 0008 0290     		str	r0, [sp, #8]
 12031 000a 52F8041B 		ldr	r1, [r2], #4
 12032 000e 0192     		str	r2, [sp, #4]
 12033 0010 6523     		movs	r3, #101
 12034 0012 02A8     		add	r0, sp, #8
 12035 0014 0393     		str	r3, [sp, #12]
 12036 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 12037 001a 04B0     		add	sp, sp, #16
 12038              		@ sp needed
 12039 001c 5DF804EB 		ldr	lr, [sp], #4
 12040 0020 03B0     		add	sp, sp, #12
 12041 0022 7047     		bx	lr
 12042              		.size	_ZN6StringILj100EE6printfEPKcz, .-_ZN6StringILj100EE6printfEPKcz
 12043              		.section	.text._ZN6GCodes13CheckFilamentEv,"ax",%progbits
 12044              		.align	1
 12045              		.p2align 2,,3
 12046              		.global	_ZN6GCodes13CheckFilamentEv
 12047              		.syntax unified
 12048              		.thumb
 12049              		.thumb_func
 12050              		.fpu fpv4-sp-d16
 12051              		.type	_ZN6GCodes13CheckFilamentEv, %function
 12052              	_ZN6GCodes13CheckFilamentEv:
 12053              		@ args = 0, pretend = 0, frame = 104
 12054              		@ frame_needed = 0, uses_anonymous_args = 0
 12055 0000 90F86426 		ldrb	r2, [r0, #1636]	@ zero_extendqisi2
 12056 0004 1AB1     		cbz	r2, .L2353
 12057 0006 1F4A     		ldr	r2, .L2357
 12058 0008 D269     		ldr	r2, [r2, #28]
 12059 000a 127B     		ldrb	r2, [r2, #12]	@ zero_extendqisi2
 12060 000c 02B9     		cbnz	r2, .L2356
 12061              	.L2353:
 12062 000e 7047     		bx	lr
 12063              	.L2356:
 12064 0010 F0B5     		push	{r4, r5, r6, r7, lr}
 12065 0012 9BB0     		sub	sp, sp, #108
 12066 0014 0446     		mov	r4, r0
 12067 0016 FFF7FEFF 		bl	_ZNK6GCodes16IsReallyPrintingEv.part.56
 12068 001a 88B3     		cbz	r0, .L2341
 12069 001c 636D     		ldr	r3, [r4, #84]
 12070 001e 1B68     		ldr	r3, [r3]
 12071 0020 9A68     		ldr	r2, [r3, #8]
 12072 0022 127D     		ldrb	r2, [r2, #20]	@ zero_extendqisi2
 12073 0024 62BB     		cbnz	r2, .L2341
 12074 0026 93F82820 		ldrb	r2, [r3, #40]	@ zero_extendqisi2
 12075 002a 083A     		subs	r2, r2, #8
 12076 002c 012A     		cmp	r2, #1
 12077 002e 27D9     		bls	.L2341
 12078 0030 E26D     		ldr	r2, [r4, #92]
 12079 0032 9342     		cmp	r3, r2
 12080 0034 06D0     		beq	.L2345
 12081 0036 1ABB     		cbnz	r2, .L2341
 12082 0038 E365     		str	r3, [r4, #92]
 12083 003a 9A68     		ldr	r2, [r3, #8]
 12084 003c D368     		ldr	r3, [r2, #12]
ARM GAS  /tmp/ccJRi9N9.s 			page 213


 12085 003e 43F00103 		orr	r3, r3, #1
 12086 0042 D360     		str	r3, [r2, #12]
 12087              	.L2345:
 12088 0044 1AAD     		add	r5, sp, #104
 12089 0046 0026     		movs	r6, #0
 12090 0048 94F86406 		ldrb	r0, [r4, #1636]	@ zero_extendqisi2
 12091 004c 05F8686D 		strb	r6, [r5, #-104]!
 12092 0050 D4F86876 		ldr	r7, [r4, #1640]
 12093 0054 FFF7FEFF 		bl	_ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus
 12094 0058 3A46     		mov	r2, r7
 12095 005a 0346     		mov	r3, r0
 12096 005c 0A49     		ldr	r1, .L2357+4
 12097 005e 2846     		mov	r0, r5
 12098 0060 FFF7FEFF 		bl	_ZN6StringILj100EE6printfEPKcz
 12099 0064 626D     		ldr	r2, [r4, #84]
 12100 0066 2046     		mov	r0, r4
 12101 0068 1168     		ldr	r1, [r2]
 12102 006a 2B46     		mov	r3, r5
 12103 006c 0422     		movs	r2, #4
 12104 006e FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 12105 0072 84F86466 		strb	r6, [r4, #1636]
 12106 0076 2A46     		mov	r2, r5
 12107 0078 2068     		ldr	r0, [r4]
 12108 007a 8021     		movs	r1, #128
 12109 007c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 12110              	.L2341:
 12111 0080 1BB0     		add	sp, sp, #108
 12112              		@ sp needed
 12113 0082 F0BD     		pop	{r4, r5, r6, r7, pc}
 12114              	.L2358:
 12115              		.align	2
 12116              	.L2357:
 12117 0084 00000000 		.word	reprap
 12118 0088 00000000 		.word	.LC180
 12119              		.size	_ZN6GCodes13CheckFilamentEv, .-_ZN6GCodes13CheckFilamentEv
 12120              		.section	.text._ZN6GCodes4SpinEv,"ax",%progbits
 12121              		.align	1
 12122              		.p2align 2,,3
 12123              		.global	_ZN6GCodes4SpinEv
 12124              		.syntax unified
 12125              		.thumb
 12126              		.thumb_func
 12127              		.fpu fpv4-sp-d16
 12128              		.type	_ZN6GCodes4SpinEv, %function
 12129              	_ZN6GCodes4SpinEv:
 12130              		@ args = 0, pretend = 0, frame = 2064
 12131              		@ frame_needed = 0, uses_anonymous_args = 0
 12132 0000 90F8A930 		ldrb	r3, [r0, #169]	@ zero_extendqisi2
 12133 0004 03B9     		cbnz	r3, .L2380
 12134 0006 7047     		bx	lr
 12135              	.L2380:
 12136 0008 70B5     		push	{r4, r5, r6, lr}
 12137 000a 0446     		mov	r4, r0
 12138 000c ADF5016D 		sub	sp, sp, #2064
 12139 0010 FFF7FEFF 		bl	_ZN6GCodes13CheckTriggersEv
 12140 0014 2046     		mov	r0, r4
 12141 0016 FFF7FEFF 		bl	_ZN6GCodes16CheckHeaterFaultEv
ARM GAS  /tmp/ccJRi9N9.s 			page 214


 12142 001a 2046     		mov	r0, r4
 12143 001c FFF7FEFF 		bl	_ZN6GCodes13CheckFilamentEv
 12144 0020 636D     		ldr	r3, [r4, #84]
 12145 0022 1D68     		ldr	r5, [r3]
 12146 0024 AB68     		ldr	r3, [r5, #8]
 12147 0026 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 12148 0028 3AB9     		cbnz	r2, .L2361
 12149 002a 95F82820 		ldrb	r2, [r5, #40]	@ zero_extendqisi2
 12150 002e 083A     		subs	r2, r2, #8
 12151 0030 012A     		cmp	r2, #1
 12152 0032 02D9     		bls	.L2361
 12153 0034 9A68     		ldr	r2, [r3, #8]
 12154 0036 002A     		cmp	r2, #0
 12155 0038 44D0     		beq	.L2381
 12156              	.L2361:
 12157 003a 0023     		movs	r3, #0
 12158 003c 8DF80C30 		strb	r3, [sp, #12]
 12159 0040 AB68     		ldr	r3, [r5, #8]
 12160 0042 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 12161 0044 9ABB     		cbnz	r2, .L2363
 12162 0046 5E7E     		ldrb	r6, [r3, #25]	@ zero_extendqisi2
 12163 0048 7207     		lsls	r2, r6, #29
 12164 004a 23D4     		bmi	.L2382
 12165 004c 03A8     		add	r0, sp, #12
 12166 004e 40F60103 		movw	r3, #2049
 12167 0052 0190     		str	r0, [sp, #4]
 12168 0054 2946     		mov	r1, r5
 12169 0056 01AA     		add	r2, sp, #4
 12170 0058 2046     		mov	r0, r4
 12171 005a 0293     		str	r3, [sp, #8]
 12172 005c FFF7FEFF 		bl	_ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef
 12173              	.L2365:
 12174 0060 FFF7FEFF 		bl	millis
 12175 0064 D4F87C36 		ldr	r3, [r4, #1660]
 12176 0068 C31A     		subs	r3, r0, r3
 12177 006a B3F57A6F 		cmp	r3, #4000
 12178 006e 0546     		mov	r5, r0
 12179 0070 0DD3     		bcc	.L2359
 12180 0072 94F88736 		ldrb	r3, [r4, #1671]	@ zero_extendqisi2
 12181 0076 53B1     		cbz	r3, .L2359
 12182 0078 1A4A     		ldr	r2, .L2384
 12183 007a 2068     		ldr	r0, [r4]
 12184 007c 40F2B511 		movw	r1, #437
 12185 0080 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 12186 0084 0023     		movs	r3, #0
 12187 0086 C4F87C56 		str	r5, [r4, #1660]
 12188 008a 84F88736 		strb	r3, [r4, #1671]
 12189              	.L2359:
 12190 008e 0DF5016D 		add	sp, sp, #2064
 12191              		@ sp needed
 12192 0092 70BD     		pop	{r4, r5, r6, pc}
 12193              	.L2382:
 12194 0094 2846     		mov	r0, r5
 12195 0096 FFF7FEFF 		bl	_ZN11GCodeBuffer8PopStateEv
 12196 009a 3307     		lsls	r3, r6, #28
 12197 009c E0D5     		bpl	.L2365
 12198 009e AB68     		ldr	r3, [r5, #8]
ARM GAS  /tmp/ccJRi9N9.s 			page 215


 12199 00a0 1B68     		ldr	r3, [r3]
 12200 00a2 CBB1     		cbz	r3, .L2383
 12201 00a4 2946     		mov	r1, r5
 12202 00a6 2046     		mov	r0, r4
 12203 00a8 FFF7FEFF 		bl	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer
 12204 00ac D8E7     		b	.L2365
 12205              	.L2363:
 12206 00ae 03A8     		add	r0, sp, #12
 12207 00b0 40F60103 		movw	r3, #2049
 12208 00b4 0190     		str	r0, [sp, #4]
 12209 00b6 2946     		mov	r1, r5
 12210 00b8 01AA     		add	r2, sp, #4
 12211 00ba 2046     		mov	r0, r4
 12212 00bc 0293     		str	r3, [sp, #8]
 12213 00be FFF7FEFF 		bl	_ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef
 12214 00c2 CDE7     		b	.L2365
 12215              	.L2381:
 12216 00c4 A36D     		ldr	r3, [r4, #88]
 12217 00c6 991D     		adds	r1, r3, #6
 12218 00c8 0133     		adds	r3, r3, #1
 12219 00ca 072B     		cmp	r3, #7
 12220 00cc 08BF     		it	eq
 12221 00ce 1346     		moveq	r3, r2
 12222 00d0 54F82150 		ldr	r5, [r4, r1, lsl #2]
 12223 00d4 A365     		str	r3, [r4, #88]
 12224 00d6 B0E7     		b	.L2361
 12225              	.L2383:
 12226 00d8 0121     		movs	r1, #1
 12227 00da 2046     		mov	r0, r4
 12228 00dc FFF7FEFF 		bl	_ZN6GCodes9StopPrintE15StopPrintReason
 12229 00e0 BEE7     		b	.L2365
 12230              	.L2385:
 12231 00e2 00BF     		.align	2
 12232              	.L2384:
 12233 00e4 00000000 		.word	.LC181
 12234              		.size	_ZN6GCodes4SpinEv, .-_ZN6GCodes4SpinEv
 12235              		.section	.text._ZN6GCodes12PauseOnStallEm,"ax",%progbits
 12236              		.align	1
 12237              		.p2align 2,,3
 12238              		.global	_ZN6GCodes12PauseOnStallEm
 12239              		.syntax unified
 12240              		.thumb
 12241              		.thumb_func
 12242              		.fpu fpv4-sp-d16
 12243              		.type	_ZN6GCodes12PauseOnStallEm, %function
 12244              	_ZN6GCodes12PauseOnStallEm:
 12245              		@ args = 0, pretend = 0, frame = 112
 12246              		@ frame_needed = 0, uses_anonymous_args = 0
 12247 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 12248 0002 234B     		ldr	r3, .L2399
 12249 0004 DB69     		ldr	r3, [r3, #28]
 12250 0006 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 12251 0008 9DB0     		sub	sp, sp, #116
 12252 000a 1BB9     		cbnz	r3, .L2387
 12253              	.L2389:
 12254 000c 0124     		movs	r4, #1
 12255              	.L2388:
ARM GAS  /tmp/ccJRi9N9.s 			page 216


 12256 000e 2046     		mov	r0, r4
 12257 0010 1DB0     		add	sp, sp, #116
 12258              		@ sp needed
 12259 0012 F0BD     		pop	{r4, r5, r6, r7, pc}
 12260              	.L2387:
 12261 0014 0646     		mov	r6, r0
 12262 0016 0D46     		mov	r5, r1
 12263 0018 FFF7FEFF 		bl	_ZNK6GCodes16IsReallyPrintingEv.part.56
 12264 001c 0446     		mov	r4, r0
 12265 001e 0028     		cmp	r0, #0
 12266 0020 F4D0     		beq	.L2389
 12267 0022 736D     		ldr	r3, [r6, #84]
 12268 0024 1B68     		ldr	r3, [r3]
 12269 0026 9A68     		ldr	r2, [r3, #8]
 12270 0028 127D     		ldrb	r2, [r2, #20]	@ zero_extendqisi2
 12271 002a 52B9     		cbnz	r2, .L2391
 12272 002c 93F82810 		ldrb	r1, [r3, #40]	@ zero_extendqisi2
 12273 0030 0839     		subs	r1, r1, #8
 12274 0032 0129     		cmp	r1, #1
 12275 0034 05D9     		bls	.L2391
 12276 0036 F16D     		ldr	r1, [r6, #92]
 12277 0038 8B42     		cmp	r3, r1
 12278 003a 0CD0     		beq	.L2390
 12279 003c 29B1     		cbz	r1, .L2398
 12280 003e 1446     		mov	r4, r2
 12281 0040 E5E7     		b	.L2388
 12282              	.L2391:
 12283 0042 0024     		movs	r4, #0
 12284 0044 2046     		mov	r0, r4
 12285 0046 1DB0     		add	sp, sp, #116
 12286              		@ sp needed
 12287 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 12288              	.L2398:
 12289 004a F365     		str	r3, [r6, #92]
 12290 004c 9A68     		ldr	r2, [r3, #8]
 12291 004e D368     		ldr	r3, [r2, #12]
 12292 0050 43F00103 		orr	r3, r3, #1
 12293 0054 D360     		str	r3, [r2, #12]
 12294              	.L2390:
 12295 0056 1CAF     		add	r7, sp, #112
 12296 0058 0023     		movs	r3, #0
 12297 005a 07F8683D 		strb	r3, [r7, #-104]!
 12298 005e 0D49     		ldr	r1, .L2399+4
 12299 0060 3846     		mov	r0, r7
 12300 0062 FFF7FEFF 		bl	_ZN6StringILj100EE6printfEPKcz
 12301 0066 2946     		mov	r1, r5
 12302 0068 6523     		movs	r3, #101
 12303 006a 6846     		mov	r0, sp
 12304 006c CDE90073 		strd	r7, r3, [sp]
 12305 0070 FFF7FEFF 		bl	_Z11ListDriversRK9StringRefm
 12306 0074 726D     		ldr	r2, [r6, #84]
 12307 0076 3046     		mov	r0, r6
 12308 0078 1168     		ldr	r1, [r2]
 12309 007a 3B46     		mov	r3, r7
 12310 007c 0522     		movs	r2, #5
 12311 007e FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 12312 0082 3A46     		mov	r2, r7
ARM GAS  /tmp/ccJRi9N9.s 			page 217


 12313 0084 3068     		ldr	r0, [r6]
 12314 0086 8021     		movs	r1, #128
 12315 0088 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 12316 008c BFE7     		b	.L2388
 12317              	.L2400:
 12318 008e 00BF     		.align	2
 12319              	.L2399:
 12320 0090 00000000 		.word	reprap
 12321 0094 00000000 		.word	.LC182
 12322              		.size	_ZN6GCodes12PauseOnStallEm, .-_ZN6GCodes12PauseOnStallEm
 12323              		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
 12324              		.align	1
 12325              		.p2align 2,,3
 12326              		.weak	_ZN6StringILj220EE6printfEPKcz
 12327              		.syntax unified
 12328              		.thumb
 12329              		.thumb_func
 12330              		.fpu fpv4-sp-d16
 12331              		.type	_ZN6StringILj220EE6printfEPKcz, %function
 12332              	_ZN6StringILj220EE6printfEPKcz:
 12333              		@ args = 4, pretend = 12, frame = 16
 12334              		@ frame_needed = 0, uses_anonymous_args = 1
 12335 0000 0EB4     		push	{r1, r2, r3}
 12336 0002 00B5     		push	{lr}
 12337 0004 84B0     		sub	sp, sp, #16
 12338 0006 05AA     		add	r2, sp, #20
 12339 0008 0290     		str	r0, [sp, #8]
 12340 000a 52F8041B 		ldr	r1, [r2], #4
 12341 000e 0192     		str	r2, [sp, #4]
 12342 0010 DD23     		movs	r3, #221
 12343 0012 02A8     		add	r0, sp, #8
 12344 0014 0393     		str	r3, [sp, #12]
 12345 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 12346 001a 04B0     		add	sp, sp, #16
 12347              		@ sp needed
 12348 001c 5DF804EB 		ldr	lr, [sp], #4
 12349 0020 03B0     		add	sp, sp, #12
 12350 0022 7047     		bx	lr
 12351              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 12352              		.section	.text._ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef,"ax",%progbits
 12353              		.align	1
 12354              		.p2align 2,,3
 12355              		.global	_ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef
 12356              		.syntax unified
 12357              		.thumb
 12358              		.thumb_func
 12359              		.fpu fpv4-sp-d16
 12360              		.type	_ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef, %function
 12361              	_ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef:
 12362              		@ args = 0, pretend = 0, frame = 264
 12363              		@ frame_needed = 0, uses_anonymous_args = 0
 12364 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 12365 0004 4B4B     		ldr	r3, .L2426
 12366 0006 1C6B     		ldr	r4, [r3, #48]
 12367 0008 C4B0     		sub	sp, sp, #272
 12368 000a 1646     		mov	r6, r2
 12369 000c 002C     		cmp	r4, #0
ARM GAS  /tmp/ccJRi9N9.s 			page 218


 12370 000e 39D0     		beq	.L2422
 12371 0010 6368     		ldr	r3, [r4, #4]
 12372 0012 7BB3     		cbz	r3, .L2423
 12373 0014 0D46     		mov	r5, r1
 12374 0016 8046     		mov	r8, r0
 12375 0018 5321     		movs	r1, #83
 12376 001a 2846     		mov	r0, r5
 12377 001c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 12378 0020 98B9     		cbnz	r0, .L2424
 12379 0022 6268     		ldr	r2, [r4, #4]
 12380 0024 137A     		ldrb	r3, [r2, #8]	@ zero_extendqisi2
 12381 0026 3BB9     		cbnz	r3, .L2425
 12382 0028 3046     		mov	r0, r6
 12383 002a 4349     		ldr	r1, .L2426+4
 12384 002c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 12385              	.L2421:
 12386 0030 0120     		movs	r0, #1
 12387              	.L2405:
 12388 0032 44B0     		add	sp, sp, #272
 12389              		@ sp needed
 12390 0034 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 12391              	.L2425:
 12392 0038 0832     		adds	r2, r2, #8
 12393 003a 3046     		mov	r0, r6
 12394 003c 3F49     		ldr	r1, .L2426+8
 12395 003e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 12396 0042 0120     		movs	r0, #1
 12397 0044 44B0     		add	sp, sp, #272
 12398              		@ sp needed
 12399 0046 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 12400              	.L2424:
 12401 004a 03AF     		add	r7, sp, #12
 12402 004c 0022     		movs	r2, #0
 12403 004e 2123     		movs	r3, #33
 12404 0050 0CA9     		add	r1, sp, #48
 12405 0052 2846     		mov	r0, r5
 12406 0054 0C97     		str	r7, [sp, #48]
 12407 0056 3A70     		strb	r2, [r7]
 12408 0058 0D93     		str	r3, [sp, #52]
 12409 005a FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 12410 005e 08B1     		cbz	r0, .L2408
 12411 0060 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 12412 0062 ABB9     		cbnz	r3, .L2409
 12413              	.L2408:
 12414 0064 3046     		mov	r0, r6
 12415 0066 3649     		ldr	r1, .L2426+12
 12416 0068 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12417 006c 0220     		movs	r0, #2
 12418 006e 44B0     		add	sp, sp, #272
 12419              		@ sp needed
 12420 0070 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 12421              	.L2423:
 12422 0074 1046     		mov	r0, r2
 12423 0076 3349     		ldr	r1, .L2426+16
 12424 0078 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12425 007c 0220     		movs	r0, #2
 12426 007e 44B0     		add	sp, sp, #272
ARM GAS  /tmp/ccJRi9N9.s 			page 219


 12427              		@ sp needed
 12428 0080 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 12429              	.L2422:
 12430 0084 1046     		mov	r0, r2
 12431 0086 3049     		ldr	r1, .L2426+20
 12432 0088 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12433 008c 0220     		movs	r0, #2
 12434 008e D0E7     		b	.L2405
 12435              	.L2409:
 12436 0090 2E49     		ldr	r1, .L2426+24
 12437 0092 3846     		mov	r0, r7
 12438 0094 FFF7FEFF 		bl	_Z14StringContainsPKcS0_
 12439 0098 0028     		cmp	r0, #0
 12440 009a 05DB     		blt	.L2411
 12441 009c 3046     		mov	r0, r6
 12442 009e 2C49     		ldr	r1, .L2426+28
 12443 00a0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12444 00a4 0220     		movs	r0, #2
 12445 00a6 C4E7     		b	.L2405
 12446              	.L2411:
 12447 00a8 6168     		ldr	r1, [r4, #4]
 12448 00aa 3846     		mov	r0, r7
 12449 00ac 0831     		adds	r1, r1, #8
 12450 00ae FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 12451 00b2 0028     		cmp	r0, #0
 12452 00b4 BCD1     		bne	.L2421
 12453 00b6 6368     		ldr	r3, [r4, #4]
 12454 00b8 1B7A     		ldrb	r3, [r3, #8]	@ zero_extendqisi2
 12455 00ba 2BB1     		cbz	r3, .L2412
 12456 00bc 3046     		mov	r0, r6
 12457 00be 2549     		ldr	r1, .L2426+32
 12458 00c0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12459 00c4 0220     		movs	r0, #2
 12460 00c6 B4E7     		b	.L2405
 12461              	.L2412:
 12462 00c8 D8F80030 		ldr	r3, [r8]
 12463 00cc 2249     		ldr	r1, .L2426+36
 12464 00ce D3F8B409 		ldr	r0, [r3, #2484]
 12465 00d2 3A46     		mov	r2, r7
 12466 00d4 FFF7FEFF 		bl	_ZN11MassStorage15DirectoryExistsEPKcS1_
 12467 00d8 28B9     		cbnz	r0, .L2413
 12468 00da 3046     		mov	r0, r6
 12469 00dc 1F49     		ldr	r1, .L2426+40
 12470 00de FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12471 00e2 0220     		movs	r0, #2
 12472 00e4 A5E7     		b	.L2405
 12473              	.L2413:
 12474 00e6 3846     		mov	r0, r7
 12475 00e8 FFF7FEFF 		bl	_ZN8Filament7IsInUseEPKc
 12476 00ec 28B1     		cbz	r0, .L2414
 12477 00ee 3046     		mov	r0, r6
 12478 00f0 1B49     		ldr	r1, .L2426+44
 12479 00f2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12480 00f6 0220     		movs	r0, #2
 12481 00f8 9BE7     		b	.L2405
 12482              	.L2414:
 12483 00fa 2022     		movs	r2, #32
ARM GAS  /tmp/ccJRi9N9.s 			page 220


 12484 00fc 3946     		mov	r1, r7
 12485 00fe 08F28960 		addw	r0, r8, #1673
 12486 0102 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 12487 0106 AC68     		ldr	r4, [r5, #8]
 12488 0108 1648     		ldr	r0, .L2426+48
 12489 010a 134A     		ldr	r2, .L2426+36
 12490 010c 1649     		ldr	r1, .L2426+52
 12491 010e 2D26     		movs	r6, #45
 12492 0110 2675     		strb	r6, [r4, #20]
 12493 0112 3B46     		mov	r3, r7
 12494 0114 0024     		movs	r4, #0
 12495 0116 0090     		str	r0, [sp]
 12496 0118 0CA8     		add	r0, sp, #48
 12497 011a 8DF83040 		strb	r4, [sp, #48]
 12498 011e FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 12499 0122 0094     		str	r4, [sp]
 12500 0124 0CAA     		add	r2, sp, #48
 12501 0126 2946     		mov	r1, r5
 12502 0128 4046     		mov	r0, r8
 12503 012a 0123     		movs	r3, #1
 12504 012c FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12505 0130 0120     		movs	r0, #1
 12506 0132 7EE7     		b	.L2405
 12507              	.L2427:
 12508              		.align	2
 12509              	.L2426:
 12510 0134 00000000 		.word	reprap
 12511 0138 88010000 		.word	.LC195
 12512 013c 5C010000 		.word	.LC194
 12513 0140 50000000 		.word	.LC185
 12514 0144 14000000 		.word	.LC184
 12515 0148 00000000 		.word	.LC183
 12516 014c 68000000 		.word	.LC186
 12517 0150 6C000000 		.word	.LC187
 12518 0154 94000000 		.word	.LC188
 12519 0158 D8000000 		.word	.LC189
 12520 015c E8000000 		.word	.LC190
 12521 0160 14010000 		.word	.LC191
 12522 0164 54010000 		.word	.LC193
 12523 0168 4C010000 		.word	.LC192
 12524              		.size	_ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef, .-_ZN6GCodes12LoadFilamentER11GCodeBuff
 12525              		.section	.text._ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef,"ax",%progbits
 12526              		.align	1
 12527              		.p2align 2,,3
 12528              		.global	_ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef
 12529              		.syntax unified
 12530              		.thumb
 12531              		.thumb_func
 12532              		.fpu fpv4-sp-d16
 12533              		.type	_ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef, %function
 12534              	_ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef:
 12535              		@ args = 0, pretend = 0, frame = 224
 12536              		@ frame_needed = 0, uses_anonymous_args = 0
 12537 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 12538 0002 1A4B     		ldr	r3, .L2437
 12539 0004 1B6B     		ldr	r3, [r3, #48]
 12540 0006 BBB0     		sub	sp, sp, #236
ARM GAS  /tmp/ccJRi9N9.s 			page 221


 12541 0008 23B3     		cbz	r3, .L2434
 12542 000a 0C46     		mov	r4, r1
 12543 000c 5968     		ldr	r1, [r3, #4]
 12544 000e 39B3     		cbz	r1, .L2435
 12545 0010 0A7A     		ldrb	r2, [r1, #8]	@ zero_extendqisi2
 12546 0012 12B9     		cbnz	r2, .L2436
 12547 0014 0120     		movs	r0, #1
 12548              	.L2430:
 12549 0016 3BB0     		add	sp, sp, #236
 12550              		@ sp needed
 12551 0018 F0BD     		pop	{r4, r5, r6, r7, pc}
 12552              	.L2436:
 12553 001a A768     		ldr	r7, [r4, #8]
 12554 001c 144A     		ldr	r2, .L2437+4
 12555 001e 1549     		ldr	r1, .L2437+8
 12556 0020 3AAD     		add	r5, sp, #232
 12557 0022 4FF02E0C 		mov	ip, #46
 12558 0026 87F814C0 		strb	ip, [r7, #20]
 12559 002a 0027     		movs	r7, #0
 12560 002c 05F8E07D 		strb	r7, [r5, #-224]!
 12561 0030 5B68     		ldr	r3, [r3, #4]
 12562 0032 0646     		mov	r6, r0
 12563 0034 1048     		ldr	r0, .L2437+12
 12564 0036 0090     		str	r0, [sp]
 12565 0038 0833     		adds	r3, r3, #8
 12566 003a 2846     		mov	r0, r5
 12567 003c FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 12568 0040 2A46     		mov	r2, r5
 12569 0042 0097     		str	r7, [sp]
 12570 0044 2146     		mov	r1, r4
 12571 0046 3046     		mov	r0, r6
 12572 0048 0123     		movs	r3, #1
 12573 004a FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12574 004e 0120     		movs	r0, #1
 12575 0050 3BB0     		add	sp, sp, #236
 12576              		@ sp needed
 12577 0052 F0BD     		pop	{r4, r5, r6, r7, pc}
 12578              	.L2434:
 12579 0054 1046     		mov	r0, r2
 12580 0056 0949     		ldr	r1, .L2437+16
 12581 0058 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12582 005c 0220     		movs	r0, #2
 12583 005e DAE7     		b	.L2430
 12584              	.L2435:
 12585 0060 1046     		mov	r0, r2
 12586 0062 0749     		ldr	r1, .L2437+20
 12587 0064 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12588 0068 0220     		movs	r0, #2
 12589 006a D4E7     		b	.L2430
 12590              	.L2438:
 12591              		.align	2
 12592              	.L2437:
 12593 006c 00000000 		.word	reprap
 12594 0070 D8000000 		.word	.LC189
 12595 0074 4C010000 		.word	.LC192
 12596 0078 34000000 		.word	.LC197
 12597 007c 00000000 		.word	.LC183
ARM GAS  /tmp/ccJRi9N9.s 			page 222


 12598 0080 00000000 		.word	.LC196
 12599              		.size	_ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef, .-_ZN6GCodes14UnloadFilamentER11GCode
 12600              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 12601              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 12602              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 12603              	_ZL28cpu_irq_prev_interrupt_state:
 12604 0000 00       		.space	1
 12605              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 12606              		.align	2
 12607              		.type	_ZL32cpu_irq_critical_section_counter, %object
 12608              		.size	_ZL32cpu_irq_critical_section_counter, 4
 12609              	_ZL32cpu_irq_critical_section_counter:
 12610 0000 00000000 		.space	4
 12611              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 12612              		.align	2
 12613              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 12614              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 12615              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 12616 0000 00000000 		.space	4
 12617              		.section	.rodata.CSWTCH.699,"a",%progbits
 12618              		.align	2
 12619              		.set	.LANCHOR0,. + 0
 12620              		.type	CSWTCH.699, %object
 12621              		.size	CSWTCH.699, 12
 12622              	CSWTCH.699:
 12623 0000 34000000 		.word	.LC204
 12624 0004 4C000000 		.word	.LC205
 12625 0008 64000000 		.word	.LC206
 12626              		.section	.rodata.CSWTCH.710,"a",%progbits
 12627              		.align	2
 12628              		.set	.LANCHOR1,. + 0
 12629              		.type	CSWTCH.710, %object
 12630              		.size	CSWTCH.710, 12
 12631              	CSWTCH.710:
 12632 0000 10000000 		.word	.LC201
 12633 0004 1C000000 		.word	.LC202
 12634 0008 28000000 		.word	.LC203
 12635              		.section	.rodata.CSWTCH.722,"a",%progbits
 12636              		.align	2
 12637              		.set	.LANCHOR2,. + 0
 12638              		.type	CSWTCH.722, %object
 12639              		.size	CSWTCH.722, 12
 12640              	CSWTCH.722:
 12641 0000 00000000 		.word	.LC198
 12642 0004 04000000 		.word	.LC199
 12643 0008 0C000000 		.word	.LC200
 12644              		.section	.rodata._ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 12645              		.align	2
 12646              	.LC46:
 12647 0000 5A207072 		.ascii	"Z probe point index out of range\000"
 12647      6F626520 
 12647      706F696E 
 12647      7420696E 
 12647      64657820 
 12648 0021 000000   		.space	3
 12649              	.LC47:
 12650 0024 6465706C 		.ascii	"deployprobe.g\000"
ARM GAS  /tmp/ccJRi9N9.s 			page 223


 12650      6F797072 
 12650      6F62652E 
 12650      6700
 12651              		.section	.rodata._ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 12652              		.align	2
 12653              	.LC66:
 12654 0000 546F6F6C 		.ascii	"Tool number must be positive\000"
 12654      206E756D 
 12654      62657220 
 12654      6D757374 
 12654      20626520 
 12655 001d 000000   		.space	3
 12656              	.LC67:
 12657 0020 496E7661 		.ascii	"Invalid tool name\000"
 12657      6C696420 
 12657      746F6F6C 
 12657      206E616D 
 12657      6500
 12658 0032 0000     		.space	2
 12659              	.LC68:
 12660 0034 43616E6E 		.ascii	"Cannot map both X and Y to the same axis\000"
 12660      6F74206D 
 12660      61702062 
 12660      6F746820 
 12660      5820616E 
 12661              		.section	.rodata._ZN6GCodes11AdvanceHashERK9StringRef.str1.4,"aMS",%progbits,1
 12662              		.align	2
 12663              	.LC121:
 12664 0000 256C7800 		.ascii	"%lx\000"
 12665              		.section	.rodata._ZN6GCodes11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 12666              		.align	2
 12667              	.LC38:
 12668 0000 6E756C6C 		.ascii	"null\000"
 12668      00
 12669 0005 000000   		.space	3
 12670              	.LC39:
 12671 0008 3D3D3D20 		.ascii	"=== GCodes ===\012\000"
 12671      47436F64 
 12671      6573203D 
 12671      3D3D0A00 
 12672              	.LC40:
 12673 0018 5365676D 		.ascii	"Segments left: %u\012\000"
 12673      656E7473 
 12673      206C6566 
 12673      743A2025 
 12673      750A00
 12674 002b 00       		.space	1
 12675              	.LC41:
 12676 002c 53746163 		.ascii	"Stack records: %u allocated, %u in use\012\000"
 12676      6B207265 
 12676      636F7264 
 12676      733A2025 
 12676      7520616C 
 12677              	.LC42:
 12678 0054 4D6F7665 		.ascii	"Movement lock held by %s\012\000"
 12678      6D656E74 
 12678      206C6F63 
ARM GAS  /tmp/ccJRi9N9.s 			page 224


 12678      6B206865 
 12678      6C642062 
 12679              		.section	.rodata._ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi.str1.4,"aMS",%progbits,1
 12680              		.align	2
 12681              	.LC45:
 12682 0000 4D616372 		.ascii	"Macro file %s not found.\012\000"
 12682      6F206669 
 12682      6C652025 
 12682      73206E6F 
 12682      7420666F 
 12683              		.section	.rodata._ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 12684              		.align	2
 12685              	.LC138:
 12686 0000 4D323236 		.ascii	"M226\000"
 12686      00
 12687              		.section	.rodata._ZN6GCodes11FinishWriteER11GCodeBuffer.str1.4,"aMS",%progbits,1
 12688              		.align	2
 12689              	.LC79:
 12690 0000 4572726F 		.ascii	"Error: CRC32 checksum doesn't match\000"
 12690      723A2043 
 12690      52433332 
 12690      20636865 
 12690      636B7375 
 12691              	.LC80:
 12692 0024 00       		.ascii	"\000"
 12693 0025 000000   		.space	3
 12694              	.LC81:
 12695 0028 446F6E65 		.ascii	"Done saving file.\000"
 12695      20736176 
 12695      696E6720 
 12695      66696C65 
 12695      2E00
 12696              		.section	.rodata._ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc.str1.4,"aMS",%progbits,1
 12697              		.align	2
 12698              	.LC69:
 12699 0000 72732000 		.ascii	"rs \000"
 12700              	.LC70:
 12701 0004 6F6B00   		.ascii	"ok\000"
 12702 0007 00       		.space	1
 12703              	.LC71:
 12704 0008 74656163 		.ascii	"teacup\000"
 12704      757000
 12705 000f 00       		.space	1
 12706              	.LC72:
 12707 0010 73707269 		.ascii	"sprinter\000"
 12707      6E746572 
 12707      00
 12708 0019 000000   		.space	3
 12709              	.LC73:
 12710 001c 72657065 		.ascii	"repetier\000"
 12710      74696572 
 12710      00
 12711 0025 000000   		.space	3
 12712              	.LC74:
 12713 0028 756E6B6E 		.ascii	"unknown\000"
 12713      6F776E00 
 12714              	.LC75:
ARM GAS  /tmp/ccJRi9N9.s 			page 225


 12715 0030 25730A00 		.ascii	"%s\012\000"
 12716              	.LC76:
 12717 0034 25730A25 		.ascii	"%s\012%s\012\000"
 12717      730A00
 12718 003b 00       		.space	1
 12719              	.LC77:
 12720 003c 25732025 		.ascii	"%s %s\012\000"
 12720      730A00
 12721 0043 00       		.space	1
 12722              	.LC78:
 12723 0044 456D756C 		.ascii	"Emulation of %s is not yet supported.\012\000"
 12723      6174696F 
 12723      6E206F66 
 12723      20257320 
 12723      6973206E 
 12724              		.section	.rodata._ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer.str1.4,"aMS",%progbits,1
 12725              		.align	2
 12726              	.LC83:
 12727 0000 4572726F 		.ascii	"Error: \000"
 12727      723A2000 
 12728              	.LC84:
 12729 0008 42656769 		.ascii	"Begin file list\012\000"
 12729      6E206669 
 12729      6C65206C 
 12729      6973740A 
 12729      00
 12730 0019 000000   		.space	3
 12731              	.LC85:
 12732 001c 456E6420 		.ascii	"End file list\012\000"
 12732      66696C65 
 12732      206C6973 
 12732      740A00
 12733 002b 00       		.space	1
 12734              	.LC86:
 12735 002c 0A00     		.ascii	"\012\000"
 12736 002e 0000     		.space	2
 12737              	.LC87:
 12738 0030 2000     		.ascii	" \000"
 12739              		.section	.rodata._ZN6GCodes12ListTriggersERK9StringRefm.str1.4,"aMS",%progbits,1
 12740              		.align	2
 12741              	.LC118:
 12742 0000 286E6F6E 		.ascii	"(none)\000"
 12742      652900
 12743 0007 00       		.space	1
 12744              	.LC119:
 12745 0008 45256400 		.ascii	"E%d\000"
 12746              		.section	.rodata._ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 12747              		.align	2
 12748              	.LC183:
 12749 0000 4E6F2074 		.ascii	"No tool selected\000"
 12749      6F6F6C20 
 12749      73656C65 
 12749      63746564 
 12749      00
 12750 0011 000000   		.space	3
 12751              	.LC184:
 12752 0014 4C6F6164 		.ascii	"Loading filament into the selected tool is not supp"
ARM GAS  /tmp/ccJRi9N9.s 			page 226


 12752      696E6720 
 12752      66696C61 
 12752      6D656E74 
 12752      20696E74 
 12753 0047 6F727465 		.ascii	"orted\000"
 12753      6400
 12754 004d 000000   		.space	3
 12755              	.LC185:
 12756 0050 496E7661 		.ascii	"Invalid filament name\000"
 12756      6C696420 
 12756      66696C61 
 12756      6D656E74 
 12756      206E616D 
 12757 0066 0000     		.space	2
 12758              	.LC186:
 12759 0068 2C00     		.ascii	",\000"
 12760 006a 0000     		.space	2
 12761              	.LC187:
 12762 006c 46696C61 		.ascii	"Filament names must not contain commas\000"
 12762      6D656E74 
 12762      206E616D 
 12762      6573206D 
 12762      75737420 
 12763 0093 00       		.space	1
 12764              	.LC188:
 12765 0094 556E6C6F 		.ascii	"Unload the current filament before you attempt to l"
 12765      61642074 
 12765      68652063 
 12765      75727265 
 12765      6E742066 
 12766 00c7 6F616420 		.ascii	"oad another one\000"
 12766      616E6F74 
 12766      68657220 
 12766      6F6E6500 
 12767 00d7 00       		.space	1
 12768              	.LC189:
 12769 00d8 303A2F66 		.ascii	"0:/filaments/\000"
 12769      696C616D 
 12769      656E7473 
 12769      2F00
 12770 00e6 0000     		.space	2
 12771              	.LC190:
 12772 00e8 46696C61 		.ascii	"Filament configuration directory not found\000"
 12772      6D656E74 
 12772      20636F6E 
 12772      66696775 
 12772      72617469 
 12773 0113 00       		.space	1
 12774              	.LC191:
 12775 0114 4F6E6520 		.ascii	"One filament type can be only assigned to a single "
 12775      66696C61 
 12775      6D656E74 
 12775      20747970 
 12775      65206361 
 12776 0147 746F6F6C 		.ascii	"tool\000"
 12776      00
 12777              	.LC192:
ARM GAS  /tmp/ccJRi9N9.s 			page 227


 12778 014c 25732573 		.ascii	"%s%s/%s\000"
 12778      2F257300 
 12779              	.LC193:
 12780 0154 6C6F6164 		.ascii	"load.g\000"
 12780      2E6700
 12781 015b 00       		.space	1
 12782              	.LC194:
 12783 015c 4C6F6164 		.ascii	"Loaded filament in the selected tool: %s\000"
 12783      65642066 
 12783      696C616D 
 12783      656E7420 
 12783      696E2074 
 12784 0185 000000   		.space	3
 12785              	.LC195:
 12786 0188 4E6F2066 		.ascii	"No filament loaded in the selected tool\000"
 12786      696C616D 
 12786      656E7420 
 12786      6C6F6164 
 12786      65642069 
 12787              		.section	.rodata._ZN6GCodes12PauseOnStallEm.str1.4,"aMS",%progbits,1
 12788              		.align	2
 12789              	.LC182:
 12790 0000 5374616C 		.ascii	"Stall detected on driver(s)\000"
 12790      6C206465 
 12790      74656374 
 12790      6564206F 
 12790      6E206472 
 12791              		.section	.rodata._ZN6GCodes13CheckFilamentEv.str1.4,"aMS",%progbits,1
 12792              		.align	2
 12793              	.LC180:
 12794 0000 45787472 		.ascii	"Extruder %u reports %s\000"
 12794      75646572 
 12794      20257520 
 12794      7265706F 
 12794      72747320 
 12795              		.section	.rodata._ZN6GCodes13CheckTriggersEv.str1.4,"aMS",%progbits,1
 12796              		.align	2
 12797              	.LC178:
 12798 0000 5072696E 		.ascii	"Print paused by external trigger\000"
 12798      74207061 
 12798      75736564 
 12798      20627920 
 12798      65787465 
 12799 0021 000000   		.space	3
 12800              	.LC179:
 12801 0024 303A2F73 		.ascii	"0:/sys/trigger%u.g\000"
 12801      79732F74 
 12801      72696767 
 12801      65722575 
 12801      2E6700
 12802              		.section	.rodata._ZN6GCodes13DoManualProbeER11GCodeBuffer.str1.4,"aMS",%progbits,1
 12803              		.align	2
 12804              	.LC48:
 12805 0000 4D616E75 		.ascii	"Manual bed probing\000"
 12805      616C2062 
 12805      65642070 
 12805      726F6269 
ARM GAS  /tmp/ccJRi9N9.s 			page 228


 12805      6E6700
 12806 0013 00       		.space	1
 12807              	.LC49:
 12808 0014 41646A75 		.ascii	"Adjust height until the nozzle just touches the bed"
 12808      73742068 
 12808      65696768 
 12808      7420756E 
 12808      74696C20 
 12809 0047 2C207468 		.ascii	", then press OK\000"
 12809      656E2070 
 12809      72657373 
 12809      204F4B00 
 12810              		.section	.rodata._ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 12811              		.align	2
 12812              	.LC115:
 12813 0000 48656967 		.ascii	"Height map file %s not found\000"
 12813      6874206D 
 12813      61702066 
 12813      696C6520 
 12813      2573206E 
 12814 001d 000000   		.space	3
 12815              	.LC116:
 12816 0020 4661696C 		.ascii	"Failed to load height map from file %s: \000"
 12816      65642074 
 12816      6F206C6F 
 12816      61642068 
 12816      65696768 
 12817              		.section	.rodata._ZN6GCodes13ReHomeOnStallEm.str1.4,"aMS",%progbits,1
 12818              		.align	2
 12819              	.LC114:
 12820 0000 7265686F 		.ascii	"rehome.g\000"
 12820      6D652E67 
 12820      00
 12821              		.section	.rodata._ZN6GCodes13StartPrintingEb.str1.4,"aMS",%progbits,1
 12822              		.align	2
 12823              	.LC63:
 12824 0000 53746172 		.ascii	"Started printing file %s\012\000"
 12824      74656420 
 12824      7072696E 
 12824      74696E67 
 12824      2066696C 
 12825 001a 0000     		.space	2
 12826              	.LC64:
 12827 001c 53746172 		.ascii	"Started simulating printing file %s\012\000"
 12827      74656420 
 12827      73696D75 
 12827      6C617469 
 12827      6E672070 
 12828 0041 000000   		.space	3
 12829              	.LC65:
 12830 0044 73746172 		.ascii	"start.g\000"
 12830      742E6700 
 12831              		.section	.rodata._ZN6GCodes14DoStraightMoveER11GCodeBufferb.str1.4,"aMS",%progbits,1
 12832              		.align	2
 12833              	.LC141:
 12834 0000 47302F47 		.ascii	"G0/G1: bad restore point number\000"
 12834      313A2062 
ARM GAS  /tmp/ccJRi9N9.s 			page 229


 12834      61642072 
 12834      6573746F 
 12834      72652070 
 12835              	.LC142:
 12836 0020 47302F47 		.ascii	"G0/G1: insufficient axes homed\000"
 12836      313A2069 
 12836      6E737566 
 12836      66696369 
 12836      656E7420 
 12837 003f 00       		.space	1
 12838              	.LC143:
 12839 0040 47302F47 		.ascii	"G0/G1: attempt to move individual motors of a delta"
 12839      313A2061 
 12839      7474656D 
 12839      70742074 
 12839      6F206D6F 
 12840 0073 206D6163 		.ascii	" machine to absolute positions\000"
 12840      68696E65 
 12840      20746F20 
 12840      6162736F 
 12840      6C757465 
 12841 0092 0000     		.space	2
 12842              	.LC144:
 12843 0094 47302F47 		.ascii	"G0/G1: outside machine limits\000"
 12843      313A206F 
 12843      75747369 
 12843      6465206D 
 12843      61636869 
 12844              		.section	.rodata._ZN6GCodes14SaveResumeInfoEb.str1.4,"aMS",%progbits,1
 12845              		.align	2
 12846              	.LC12:
 12847 0000 706F7765 		.ascii	"power failure\000"
 12847      72206661 
 12847      696C7572 
 12847      6500
 12848 000e 0000     		.space	2
 12849              	.LC13:
 12850 0010 7072696E 		.ascii	"print paused\000"
 12850      74207061 
 12850      75736564 
 12850      00
 12851 001d 000000   		.space	3
 12852              	.LC14:
 12853 0020 4D383300 		.ascii	"M83\000"
 12854              	.LC15:
 12855 0024 4D383200 		.ascii	"M82\000"
 12856              	.LC16:
 12857 0028 72657375 		.ascii	"resurrect.g\000"
 12857      72726563 
 12857      742E6700 
 12858              	.LC17:
 12859 0034 303A2F73 		.ascii	"0:/sys/\000"
 12859      79732F00 
 12860              	.LC18:
 12861 003c 4661696C 		.ascii	"Failed to create file %s\000"
 12861      65642074 
 12861      6F206372 
ARM GAS  /tmp/ccJRi9N9.s 			page 230


 12861      65617465 
 12861      2066696C 
 12862 0055 000000   		.space	3
 12863              	.LC19:
 12864 0058 3B204669 		.ascii	"; File \"%s\" resume print after %s\000"
 12864      6C652022 
 12864      25732220 
 12864      72657375 
 12864      6D652070 
 12865 007a 0000     		.space	2
 12866              	.LC20:
 12867 007c 20617420 		.ascii	" at %04u-%02u-%02u %02u:%02u\000"
 12867      25303475 
 12867      2D253032 
 12867      752D2530 
 12867      32752025 
 12868 0099 000000   		.space	3
 12869              	.LC21:
 12870 009c 72657375 		.ascii	"resurrect-prologue.g\000"
 12870      72726563 
 12870      742D7072 
 12870      6F6C6F67 
 12870      75652E67 
 12871 00b1 000000   		.space	3
 12872              	.LC22:
 12873 00b4 4D393820 		.ascii	"M98 P%s\012\000"
 12873      5025730A 
 12873      00
 12874 00bd 000000   		.space	3
 12875              	.LC23:
 12876 00c0 4D313036 		.ascii	"M106 S%.2f\012\000"
 12876      2053252E 
 12876      32660A00 
 12877              	.LC24:
 12878 00cc 4D313136 		.ascii	"M116\012M290 S%.3f\012\000"
 12878      0A4D3239 
 12878      30205325 
 12878      2E33660A 
 12878      00
 12879 00dd 000000   		.space	3
 12880              	.LC25:
 12881 00e0 4D323030 		.ascii	"M200 \000"
 12881      2000
 12882 00e6 0000     		.space	2
 12883              	.LC26:
 12884 00e8 2563252E 		.ascii	"%c%.03f\000"
 12884      30336600 
 12885              	.LC27:
 12886 00f0 47393220 		.ascii	"G92 E%.5f\012%s\012\000"
 12886      45252E35 
 12886      660A2573 
 12886      0A00
 12887 00fe 0000     		.space	2
 12888              	.LC28:
 12889 0100 4D323320 		.ascii	"M23 %s\012M26 S%lu P%.3f\012\000"
 12889      25730A4D 
 12889      32362053 
ARM GAS  /tmp/ccJRi9N9.s 			page 231


 12889      256C7520 
 12889      50252E33 
 12890 0117 00       		.space	1
 12891              	.LC29:
 12892 0118 47302046 		.ascii	"G0 F6000 Z%.3f\012\000"
 12892      36303030 
 12892      205A252E 
 12892      33660A00 
 12893              	.LC30:
 12894 0128 47302046 		.ascii	"G0 F6000\000"
 12894      36303030 
 12894      00
 12895 0131 000000   		.space	3
 12896              	.LC31:
 12897 0134 20256325 		.ascii	" %c%.2f\000"
 12897      2E326600 
 12898              	.LC32:
 12899 013c 0A473020 		.ascii	"\012G0 F6000 Z%.3f\012\000"
 12899      46363030 
 12899      30205A25 
 12899      2E33660A 
 12899      00
 12900 014d 000000   		.space	3
 12901              	.LC33:
 12902 0150 47312046 		.ascii	"G1 F%.1f\000"
 12902      252E3166 
 12902      00
 12903 0159 000000   		.space	3
 12904              	.LC34:
 12905 015c 20502575 		.ascii	" P%u\000"
 12905      00
 12906 0161 000000   		.space	3
 12907              	.LC35:
 12908 0164 0A4D3234 		.ascii	"\012M24\012\000"
 12908      0A00
 12909 016a 0000     		.space	2
 12910              	.LC36:
 12911 016c 52657375 		.ascii	"Resume-after-power-fail state saved\012\000"
 12911      6D652D61 
 12911      66746572 
 12911      2D706F77 
 12911      65722D66 
 12912 0191 000000   		.space	3
 12913              	.LC37:
 12914 0194 4661696C 		.ascii	"Failed to write or close file %s\012\000"
 12914      65642074 
 12914      6F207772 
 12914      69746520 
 12914      6F722063 
 12915              		.section	.rodata._ZN6GCodes14SetToolHeatersEP4Toolfb.str1.4,"aMS",%progbits,1
 12916              		.align	2
 12917              	.LC104:
 12918 0000 53657474 		.ascii	"Setting temperature: no tool selected.\012\000"
 12918      696E6720 
 12918      74656D70 
 12918      65726174 
 12918      7572653A 
ARM GAS  /tmp/ccJRi9N9.s 			page 232


 12919              		.section	.rodata._ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 12920              		.align	2
 12921              	.LC196:
 12922 0000 556E6C6F 		.ascii	"Unloading filament from this tool is not supported\000"
 12922      6164696E 
 12922      67206669 
 12922      6C616D65 
 12922      6E742066 
 12923 0033 00       		.space	1
 12924              	.LC197:
 12925 0034 756E6C6F 		.ascii	"unload.g\000"
 12925      61642E67 
 12925      00
 12926              		.section	.rodata._ZN6GCodes15DoEmergencyStopEv.str1.4,"aMS",%progbits,1
 12927              		.align	2
 12928              	.LC106:
 12929 0000 456D6572 		.ascii	"Emergency Stop! Reset the controller to continue.\000"
 12929      67656E63 
 12929      79205374 
 12929      6F702120 
 12929      52657365 
 12930              		.section	.rodata._ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_mbm.str1.4,"aMS",%progbits,1
 12931              		.align	2
 12932              	.LC60:
 12933 0000 4661696C 		.ascii	"Failed to open GCode file \"%s\" for writing.\012\000"
 12933      65642074 
 12933      6F206F70 
 12933      656E2047 
 12933      436F6465 
 12934              		.section	.rodata._ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 12935              		.align	2
 12936              	.LC151:
 12937 0000 47312F47 		.ascii	"G1/G2/G3: intermediate position outside machine lim"
 12937      322F4733 
 12937      3A20696E 
 12937      7465726D 
 12937      65646961 
 12938 0033 69747300 		.ascii	"its\000"
 12939 0037 00       		.space	1
 12940              	.LC152:
 12941 0038 4D757374 		.ascii	"Must home these axes:\000"
 12941      20686F6D 
 12941      65207468 
 12941      65736520 
 12941      61786573 
 12942 004e 0000     		.space	2
 12943              	.LC153:
 12944 0050 20626566 		.ascii	" before homing these:\000"
 12944      6F726520 
 12944      686F6D69 
 12944      6E672074 
 12944      68657365 
 12945 0066 0000     		.space	2
 12946              	.LC154:
 12947 0068 486F6D69 		.ascii	"Homing file %s not found\000"
 12947      6E672066 
 12947      696C6520 
ARM GAS  /tmp/ccJRi9N9.s 			page 233


 12947      2573206E 
 12947      6F742066 
 12948 0081 000000   		.space	3
 12949              	.LC155:
 12950 0084 486F6D69 		.ascii	"Homing failed\000"
 12950      6E672066 
 12950      61696C65 
 12950      6400
 12951 0092 0000     		.space	2
 12952              	.LC156:
 12953 0094 74667265 		.ascii	"tfree%d.g\000"
 12953      6525642E 
 12953      6700
 12954 009e 0000     		.space	2
 12955              	.LC157:
 12956 00a0 74707265 		.ascii	"tpre%d.g\000"
 12956      25642E67 
 12956      00
 12957 00a9 000000   		.space	3
 12958              	.LC158:
 12959 00ac 74706F73 		.ascii	"tpost%d.g\000"
 12959      7425642E 
 12959      6700
 12960 00b6 0000     		.space	2
 12961              	.LC159:
 12962 00b8 70617573 		.ascii	"pause.g\000"
 12962      652E6700 
 12963              	.LC160:
 12964 00c0 5072696E 		.ascii	"Printing paused\012\000"
 12964      74696E67 
 12964      20706175 
 12964      7365640A 
 12964      00
 12965 00d1 000000   		.space	3
 12966              	.LC161:
 12967 00d4 5072696E 		.ascii	"Printing resumed\000"
 12967      74696E67 
 12967      20726573 
 12967      756D6564 
 12967      00
 12968 00e5 000000   		.space	3
 12969              	.LC162:
 12970 00e8 5072696E 		.ascii	"Printing resumed\012\000"
 12970      74696E67 
 12970      20726573 
 12970      756D6564 
 12970      0A00
 12971 00fa 0000     		.space	2
 12972              	.LC163:
 12973 00fc 536B6970 		.ascii	"Skipping grid point (%.1f, %.1f) because Z probe ca"
 12973      70696E67 
 12973      20677269 
 12973      6420706F 
 12973      696E7420 
 12974 012f 6E6E6F74 		.ascii	"nnot reach it\012\000"
 12974      20726561 
 12974      63682069 
ARM GAS  /tmp/ccJRi9N9.s 			page 234


 12974      740A00
 12975 013e 0000     		.space	2
 12976              	.LC164:
 12977 0140 5A207072 		.ascii	"Z probe already triggered before probing move start"
 12977      6F626520 
 12977      616C7265 
 12977      61647920 
 12977      74726967 
 12978 0173 656400   		.ascii	"ed\000"
 12979 0176 0000     		.space	2
 12980              	.LC165:
 12981 0178 72657472 		.ascii	"retractprobe.g\000"
 12981      61637470 
 12981      726F6265 
 12981      2E6700
 12982 0187 00       		.space	1
 12983              	.LC166:
 12984 0188 5A207072 		.ascii	"Z probe was not triggered during probing move\012\000"
 12984      6F626520 
 12984      77617320 
 12984      6E6F7420 
 12984      74726967 
 12985 01b7 00       		.space	1
 12986              	.LC167:
 12987 01b8 5A207072 		.ascii	"Z probe readings not consistent\012\000"
 12987      6F626520 
 12987      72656164 
 12987      696E6773 
 12987      206E6F74 
 12988 01d9 000000   		.space	3
 12989              	.LC168:
 12990 01dc 256C7520 		.ascii	"%lu points probed, mean error %.3f, deviation %.3f\012"
 12990      706F696E 
 12990      74732070 
 12990      726F6265 
 12990      642C206D 
 12991 020f 00       		.ascii	"\000"
 12992              	.LC169:
 12993 0210 546F6F20 		.ascii	"Too few points probed\000"
 12993      66657720 
 12993      706F696E 
 12993      74732070 
 12993      726F6265 
 12994 0226 0000     		.space	2
 12995              	.LC170:
 12996 0228 5A207072 		.ascii	"Z probe already triggered at start of probing move\012"
 12996      6F626520 
 12996      616C7265 
 12996      61647920 
 12996      74726967 
 12997 025b 00       		.ascii	"\000"
 12998              	.LC171:
 12999 025c 47333020 		.ascii	"G30 S-2 commanded with no tool selected\000"
 12999      532D3220 
 12999      636F6D6D 
 12999      616E6465 
 12999      64207769 
ARM GAS  /tmp/ccJRi9N9.s 			page 235


 13000              	.LC172:
 13001 0284 53746F70 		.ascii	"Stopped at height %.3f mm\000"
 13001      70656420 
 13001      61742068 
 13001      65696768 
 13001      7420252E 
 13002 029e 0000     		.space	2
 13003              	.LC173:
 13004 02a0 46696C61 		.ascii	"Filament %s loaded\000"
 13004      6D656E74 
 13004      20257320 
 13004      6C6F6164 
 13004      656400
 13005 02b3 00       		.space	1
 13006              	.LC174:
 13007 02b4 46696C61 		.ascii	"Filament %s unloaded\000"
 13007      6D656E74 
 13007      20257320 
 13007      756E6C6F 
 13007      61646564 
 13008 02c9 000000   		.space	3
 13009              	.LC175:
 13010 02cc 5072696E 		.ascii	"Print auto-paused due to low voltage\012\000"
 13010      74206175 
 13010      746F2D70 
 13010      61757365 
 13010      64206475 
 13011 02f2 0000     		.space	2
 13012              	.LC176:
 13013 02f4 556E6465 		.ascii	"Undefined GCodeState\012\000"
 13013      66696E65 
 13013      64204743 
 13013      6F646553 
 13013      74617465 
 13014              		.section	.rodata._ZN6GCodes15WriteHTMLToFileER11GCodeBufferc.str1.4,"aMS",%progbits,1
 13015              		.align	2
 13016              	.LC82:
 13017 0000 41747465 		.ascii	"Attempt to write to a null file.\012\000"
 13017      6D707420 
 13017      746F2077 
 13017      72697465 
 13017      20746F20 
 13018              		.section	.rodata._ZN6GCodes16CheckHeaterFaultEv.str1.4,"aMS",%progbits,1
 13019              		.align	2
 13020              	.LC149:
 13021 0000 48656174 		.ascii	"Heater fault\000"
 13021      65722066 
 13021      61756C74 
 13021      00
 13022 000d 000000   		.space	3
 13023              	.LC150:
 13024 0010 53687574 		.ascii	"Shutting down due to un-cleared heater fault after "
 13024      74696E67 
 13024      20646F77 
 13024      6E206475 
 13024      6520746F 
 13025 0043 256C7520 		.ascii	"%lu seconds\012\000"
ARM GAS  /tmp/ccJRi9N9.s 			page 236


 13025      7365636F 
 13025      6E64730A 
 13025      00
 13026              		.section	.rodata._ZN6GCodes16QueueFileToPrintEPKcRK9StringRef.str1.4,"aMS",%progbits,1
 13027              		.align	2
 13028              	.LC61:
 13029 0000 303A2F67 		.ascii	"0:/gcodes/\000"
 13029      636F6465 
 13029      732F00
 13030 000b 00       		.space	1
 13031              	.LC62:
 13032 000c 47436F64 		.ascii	"GCode file \"%s\" not found\012\000"
 13032      65206669 
 13032      6C652022 
 13032      25732220 
 13032      6E6F7420 
 13033              		.section	.rodata._ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef.str1.4,"aMS",%progbits,1
 13034              		.align	2
 13035              	.LC98:
 13036 0000 48656174 		.ascii	"Heater %d is in bang-bang mode\000"
 13036      65722025 
 13036      64206973 
 13036      20696E20 
 13036      62616E67 
 13037 001f 00       		.space	1
 13038              	.LC99:
 13039 0020 48656174 		.ascii	"Heater %d P:%.1f I:%.3f D:%.1f\000"
 13039      65722025 
 13039      6420503A 
 13039      252E3166 
 13039      20493A25 
 13040 003f 00       		.space	1
 13041              	.LC100:
 13042 0040 48656174 		.ascii	"Heater %d uses model-derived PID parameters. Use M3"
 13042      65722025 
 13042      64207573 
 13042      6573206D 
 13042      6F64656C 
 13043 0073 30372048 		.ascii	"07 H%d to view them\000"
 13043      25642074 
 13043      6F207669 
 13043      65772074 
 13043      68656D00 
 13044              		.section	.rodata._ZN6GCodes16WriteGCodeToFileER11GCodeBuffer.str1.4,"aMS",%progbits,1
 13045              		.align	2
 13046              	.LC177:
 13047 0000 256C690A 		.ascii	"%li\012\000"
 13047      00
 13048              		.section	.rodata._ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,
 13049              		.align	2
 13050              	.LC109:
 13051 0000 41747465 		.ascii	"Attempt to set/report offsets and temperatures for "
 13051      6D707420 
 13051      746F2073 
 13051      65742F72 
 13051      65706F72 
 13052 0033 6E6F6E2D 		.ascii	"non-existent tool: %d\000"
ARM GAS  /tmp/ccJRi9N9.s 			page 237


 13052      65786973 
 13052      74656E74 
 13052      20746F6F 
 13052      6C3A2025 
 13053 0049 000000   		.space	3
 13054              	.LC110:
 13055 004c 41747465 		.ascii	"Attempt to set/report offsets and temperatures for "
 13055      6D707420 
 13055      746F2073 
 13055      65742F72 
 13055      65706F72 
 13056 007f 6E6F2073 		.ascii	"no selected tool\000"
 13056      656C6563 
 13056      74656420 
 13056      746F6F6C 
 13056      00
 13057              	.LC111:
 13058 0090 546F6F6C 		.ascii	"Tool %d offsets:\000"
 13058      20256420 
 13058      6F666673 
 13058      6574733A 
 13058      00
 13059 00a1 000000   		.space	3
 13060              	.LC112:
 13061 00a4 2C206163 		.ascii	", active/standby temperature(s):\000"
 13061      74697665 
 13061      2F737461 
 13061      6E646279 
 13061      2074656D 
 13062 00c5 000000   		.space	3
 13063              	.LC113:
 13064 00c8 20252E31 		.ascii	" %.1f/%.1f\000"
 13064      662F252E 
 13064      316600
 13065              		.section	.rodata._ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits
 13066              		.align	2
 13067              	.LC101:
 13068 0000 68656174 		.ascii	"heater %d is not configured\000"
 13068      65722025 
 13068      64206973 
 13068      206E6F74 
 13068      20636F6E 
 13069              	.LC102:
 13070 001c 756E6162 		.ascii	"unable to use sensor channel %li on heater %d\000"
 13070      6C652074 
 13070      6F207573 
 13070      65207365 
 13070      6E736F72 
 13071 004a 0000     		.space	2
 13072              	.LC103:
 13073 004c 68656174 		.ascii	"heater number %d is out of range\000"
 13073      6572206E 
 13073      756D6265 
 13073      72202564 
 13073      20697320 
 13074              		.section	.rodata._ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits
 13075              		.align	2
ARM GAS  /tmp/ccJRi9N9.s 			page 238


 13076              	.LC88:
 13077 0000 28756E64 		.ascii	"(undefined)\000"
 13077      6566696E 
 13077      65642900 
 13078              	.LC89:
 13079 000c 65786365 		.ascii	"exceeds\000"
 13079      65647300 
 13080              	.LC90:
 13081 0014 66616C6C 		.ascii	"falls below\000"
 13081      73206265 
 13081      6C6F7700 
 13082              	.LC91:
 13083 0020 496E7661 		.ascii	"Invalid heater protection item '%d'\000"
 13083      6C696420 
 13083      68656174 
 13083      65722070 
 13083      726F7465 
 13084              	.LC92:
 13085 0044 496E7661 		.ascii	"Invalid heater number '%d'\000"
 13085      6C696420 
 13085      68656174 
 13085      6572206E 
 13085      756D6265 
 13086 005f 00       		.space	1
 13087              	.LC93:
 13088 0060 496E7661 		.ascii	"Invalid heater protection action '%d'\000"
 13088      6C696420 
 13088      68656174 
 13088      65722070 
 13088      726F7465 
 13089 0086 0000     		.space	2
 13090              	.LC94:
 13091 0088 496E7661 		.ascii	"Invalid heater protection trigger '%d'\000"
 13091      6C696420 
 13091      68656174 
 13091      65722070 
 13091      726F7465 
 13092 00af 00       		.space	1
 13093              	.LC95:
 13094 00b0 496E7661 		.ascii	"Invalid temperature limit\000"
 13094      6C696420 
 13094      74656D70 
 13094      65726174 
 13094      75726520 
 13095 00ca 0000     		.space	2
 13096              	.LC96:
 13097 00cc 54656D70 		.ascii	"Temperature protection item %d is not configured\000"
 13097      65726174 
 13097      75726520 
 13097      70726F74 
 13097      65637469 
 13098 00fd 000000   		.space	3
 13099              	.LC97:
 13100 0100 54656D70 		.ascii	"Temperature protection item %d is configured for he"
 13100      65726174 
 13100      75726520 
 13100      70726F74 
ARM GAS  /tmp/ccJRi9N9.s 			page 239


 13100      65637469 
 13101 0133 61746572 		.ascii	"ater %d and supervises heater %d to %s if the tempe"
 13101      20256420 
 13101      616E6420 
 13101      73757065 
 13101      72766973 
 13102 0166 72617475 		.ascii	"rature %s %.1f\302\260C\000"
 13102      72652025 
 13102      7320252E 
 13102      3166C2B0 
 13102      4300
 13103              		.section	.rodata._ZN6GCodes22TranslateEndStopResultE10EndStopHit.str1.4,"aMS",%progbits,1
 13104              		.align	2
 13105              	.LC117:
 13106 0000 6E6F7420 		.ascii	"not stopped\000"
 13106      73746F70 
 13106      70656400 
 13107              		.section	.rodata._ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer.str1.4,"aMS",%progbi
 13108              		.align	2
 13109              	.LC44:
 13110 0000 4D756C74 		.ascii	"Multiple E parameters in G1 commands are not suppor"
 13110      69706C65 
 13110      20452070 
 13110      6172616D 
 13110      65746572 
 13111 0033 74656420 		.ascii	"ted in absolute extrusion mode\012\000"
 13111      696E2061 
 13111      62736F6C 
 13111      75746520 
 13111      65787472 
 13112              		.section	.rodata._ZN6GCodes3PopER11GCodeBuffer.str1.4,"aMS",%progbits,1
 13113              		.align	2
 13114              	.LC43:
 13115 0000 506F7028 		.ascii	"Pop(): stack underflow!\012\000"
 13115      293A2073 
 13115      7461636B 
 13115      20756E64 
 13115      6572666C 
 13116              		.section	.rodata._ZN6GCodes4InitEv.str1.4,"aMS",%progbits,1
 13117              		.align	2
 13118              	.LC105:
 13119 0000 3C212D2D 		.ascii	"<!-- **EoF** -->\000"
 13119      202A2A45 
 13119      6F462A2A 
 13119      202D2D3E 
 13119      00
 13120              		.section	.rodata._ZN6GCodes4PushER11GCodeBuffer.part.57.str1.4,"aMS",%progbits,1
 13121              		.align	2
 13122              	.LC0:
 13123 0000 50757368 		.ascii	"Push(): stack overflow!\012\000"
 13123      28293A20 
 13123      73746163 
 13123      6B206F76 
 13123      6572666C 
 13124              		.section	.rodata._ZN6GCodes4SpinEv.str1.4,"aMS",%progbits,1
 13125              		.align	2
 13126              	.LC181:
ARM GAS  /tmp/ccJRi9N9.s 			page 240


 13127 0000 41747465 		.ascii	"Attempting to extrude with no tool selected.\012\000"
 13127      6D707469 
 13127      6E672074 
 13127      6F206578 
 13127      74727564 
 13128              		.section	.rodata._ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc.str1.4,"aMS",%progbits,1
 13129              		.align	2
 13130              	.LC139:
 13131 0000 50617573 		.ascii	"Paused print, file offset=%lu\012\000"
 13131      65642070 
 13131      72696E74 
 13131      2C206669 
 13131      6C65206F 
 13132 001f 00       		.space	1
 13133              	.LC140:
 13134 0020 5072696E 		.ascii	"Printing paused\000"
 13134      74696E67 
 13134      20706175 
 13134      73656400 
 13135              		.section	.rodata._ZN6GCodes9DoArcMoveER11GCodeBufferb.str1.4,"aMS",%progbits,1
 13136              		.align	2
 13137              	.LC145:
 13138 0000 47322F47 		.ascii	"G2/G3: missing parameter\000"
 13138      333A206D 
 13138      69737369 
 13138      6E672070 
 13138      6172616D 
 13139 0019 000000   		.space	3
 13140              	.LC146:
 13141 001c 47322F47 		.ascii	"G2/G3: insufficient axes homed\000"
 13141      333A2069 
 13141      6E737566 
 13141      66696369 
 13141      656E7420 
 13142 003b 00       		.space	1
 13143              	.LC147:
 13144 003c 47322F47 		.ascii	"G2/G3: outside machine limits\000"
 13144      333A206F 
 13144      75747369 
 13144      6465206D 
 13144      61636869 
 13145              		.section	.rodata._ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 13146              		.align	2
 13147              	.LC107:
 13148 0000 4E6F2076 		.ascii	"No valid grid defined for bed probing\000"
 13148      616C6964 
 13148      20677269 
 13148      64206465 
 13148      66696E65 
 13149 0026 0000     		.space	2
 13150              	.LC108:
 13151 0028 4D757374 		.ascii	"Must home printer before bed probing\000"
 13151      20686F6D 
 13151      65207072 
 13151      696E7465 
 13151      72206265 
 13152              		.section	.rodata._ZN6GCodes9StartHashEPKc.str1.4,"aMS",%progbits,1
ARM GAS  /tmp/ccJRi9N9.s 			page 241


 13153              		.align	2
 13154              	.LC120:
 13155 0000 303A00   		.ascii	"0:\000"
 13156              		.section	.rodata._ZN6GCodes9StopPrintE15StopPrintReason.str1.4,"aMS",%progbits,1
 13157              		.align	2
 13158              	.LC131:
 13159 0000 28756E6B 		.ascii	"(unknown)\000"
 13159      6E6F776E 
 13159      2900
 13160 000a 0000     		.space	2
 13161              	.LC132:
 13162 000c 46696C65 		.ascii	"File %s will print in %luh %lum plus heating time\012"
 13162      20257320 
 13162      77696C6C 
 13162      20707269 
 13162      6E742069 
 13163 003e 00       		.ascii	"\000"
 13164 003f 00       		.space	1
 13165              	.LC133:
 13166 0040 43616E63 		.ascii	"Cancelled simulating file %s after %luh %lum simula"
 13166      656C6C65 
 13166      64207369 
 13166      6D756C61 
 13166      74696E67 
 13167 0073 74656420 		.ascii	"ted time\012\000"
 13167      74696D65 
 13167      0A00
 13168 007d 000000   		.space	3
 13169              	.LC134:
 13170 0080 446F6E65 		.ascii	"Done printing file\012\000"
 13170      20707269 
 13170      6E74696E 
 13170      67206669 
 13170      6C650A00 
 13171              	.LC135:
 13172 0094 46696E69 		.ascii	"Finished\000"
 13172      73686564 
 13172      00
 13173 009d 000000   		.space	3
 13174              	.LC136:
 13175 00a0 25732070 		.ascii	"%s printing file %s, print time was %luh %lum\012\000"
 13175      72696E74 
 13175      696E6720 
 13175      66696C65 
 13175      2025732C 
 13176 00cf 00       		.space	1
 13177              	.LC137:
 13178 00d0 43616E63 		.ascii	"Cancelled\000"
 13178      656C6C65 
 13178      6400
 13179              		.section	.rodata._ZN6GCodesC2ER8Platform.str1.4,"aMS",%progbits,1
 13180              		.align	2
 13181              	.LC4:
 13182 0000 68747470 		.ascii	"http\000"
 13182      00
 13183 0005 000000   		.space	3
 13184              	.LC5:
ARM GAS  /tmp/ccJRi9N9.s 			page 242


 13185 0008 74656C6E 		.ascii	"telnet\000"
 13185      657400
 13186 000f 00       		.space	1
 13187              	.LC6:
 13188 0010 66696C65 		.ascii	"file\000"
 13188      00
 13189 0015 000000   		.space	3
 13190              	.LC7:
 13191 0018 73657269 		.ascii	"serial\000"
 13191      616C00
 13192 001f 00       		.space	1
 13193              	.LC8:
 13194 0020 61757800 		.ascii	"aux\000"
 13195              	.LC9:
 13196 0024 6461656D 		.ascii	"daemon\000"
 13196      6F6E00
 13197 002b 00       		.space	1
 13198              	.LC10:
 13199 002c 71756575 		.ascii	"queue\000"
 13199      6500
 13200 0032 0000     		.space	2
 13201              	.LC11:
 13202 0034 6175746F 		.ascii	"autopause\000"
 13202      70617573 
 13202      6500
 13203              		.section	.rodata._ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 13204              		.align	2
 13205              	.LC50:
 13206 0000 68656967 		.ascii	"heightmap.csv\000"
 13206      68746D61 
 13206      702E6373 
 13206      7600
 13207 000e 0000     		.space	2
 13208              	.LC51:
 13209 0010 4661696C 		.ascii	"Failed to create height map file %s\000"
 13209      65642074 
 13209      6F206372 
 13209      65617465 
 13209      20686569 
 13210              	.LC52:
 13211 0034 4661696C 		.ascii	"Failed to save height map to file %s\000"
 13211      65642074 
 13211      6F207361 
 13211      76652068 
 13211      65696768 
 13212 0059 000000   		.space	3
 13213              	.LC53:
 13214 005c 48656967 		.ascii	"Height map saved to file %s\000"
 13214      6874206D 
 13214      61702073 
 13214      61766564 
 13214      20746F20 
 13215              		.section	.rodata._ZNK6GCodes20GetMachineModeStringEv.str1.4,"aMS",%progbits,1
 13216              		.align	2
 13217              	.LC148:
 13218 0000 556E6B6E 		.ascii	"Unknown\000"
 13218      6F776E00 
ARM GAS  /tmp/ccJRi9N9.s 			page 243


 13219              		.section	.rodata._ZNK6GCodes21GetCurrentCoordinatesERK9StringRef.str1.4,"aMS",%progbits,1
 13220              		.align	2
 13221              	.LC54:
 13222 0000 25633A25 		.ascii	"%c:%.3f \000"
 13222      2E336620 
 13222      00
 13223 0009 000000   		.space	3
 13224              	.LC55:
 13225 000c 4525753A 		.ascii	"E%u:%.1f \000"
 13225      252E3166 
 13225      2000
 13226 0016 0000     		.space	2
 13227              	.LC56:
 13228 0018 20436F75 		.ascii	" Count\000"
 13228      6E7400
 13229 001f 00       		.space	1
 13230              	.LC57:
 13231 0020 20256C69 		.ascii	" %li\000"
 13231      00
 13232 0025 000000   		.space	3
 13233              	.LC58:
 13234 0028 204D6163 		.ascii	" Machine\000"
 13234      68696E65 
 13234      00
 13235 0031 000000   		.space	3
 13236              	.LC59:
 13237 0034 20252E33 		.ascii	" %.3f\000"
 13237      6600
 13238              		.section	.rodata._ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.64.str1.4,"aMS",%pr
 13239              		.align	2
 13240              	.LC1:
 13241 0000 54257500 		.ascii	"T%u\000"
 13242              	.LC2:
 13243 0004 5400     		.ascii	"T\000"
 13244 0006 0000     		.space	2
 13245              	.LC3:
 13246 0008 2563252E 		.ascii	"%c%.1f /%.1f\000"
 13246      3166202F 
 13246      252E3166 
 13246      00
 13247              		.section	.rodata._ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef.str1.4,"aMS",%pro
 13248              		.align	2
 13249              	.LC122:
 13250 0000 636F6E66 		.ascii	"config-override.g\000"
 13250      69672D6F 
 13250      76657272 
 13250      6964652E 
 13250      6700
 13251 0012 0000     		.space	2
 13252              	.LC123:
 13253 0014 3B205468 		.ascii	"; This is a system-generated file - do not edit\012"
 13253      69732069 
 13253      73206120 
 13253      73797374 
 13253      656D2D67 
 13254 0044 00       		.ascii	"\000"
 13255 0045 000000   		.space	3
ARM GAS  /tmp/ccJRi9N9.s 			page 244


 13256              	.LC124:
 13257 0048 4661696C 		.ascii	"Failed to write file %s\000"
 13257      65642074 
 13257      6F207772 
 13257      69746520 
 13257      66696C65 
 13258              	.LC125:
 13259 0060 4E6F204D 		.ascii	"No M501 command was executed in config.g\000"
 13259      35303120 
 13259      636F6D6D 
 13259      616E6420 
 13259      77617320 
 13260              		.section	.rodata._ZNK6GCodes25GenerateTemperatureReportERK9StringRef.str1.4,"aMS",%progbits,1
 13261              		.align	2
 13262              	.LC126:
 13263 0000 423A00   		.ascii	"B:\000"
 13264 0003 00       		.space	1
 13265              	.LC127:
 13266 0004 252E3166 		.ascii	"%.1f /%.1f\000"
 13266      202F252E 
 13266      316600
 13267 000f 00       		.space	1
 13268              	.LC128:
 13269 0010 20422575 		.ascii	" B%u:\000"
 13269      3A00
 13270 0016 0000     		.space	2
 13271              	.LC129:
 13272 0018 433A00   		.ascii	"C:\000"
 13273 001b 00       		.space	1
 13274              	.LC130:
 13275 001c 20432575 		.ascii	" C%u:\000"
 13275      3A00
 13276              		.section	.rodata.str1.4,"aMS",%progbits,1
 13277              		.align	2
 13278              	.LC198:
 13279 0000 46464600 		.ascii	"FFF\000"
 13280              	.LC199:
 13281 0004 4C617365 		.ascii	"Laser\000"
 13281      7200
 13282 000a 0000     		.space	2
 13283              	.LC200:
 13284 000c 434E4300 		.ascii	"CNC\000"
 13285              	.LC201:
 13286 0010 6174206D 		.ascii	"at min stop\000"
 13286      696E2073 
 13286      746F7000 
 13287              	.LC202:
 13288 001c 6174206D 		.ascii	"at max stop\000"
 13288      61782073 
 13288      746F7000 
 13289              	.LC203:
 13290 0028 6E656172 		.ascii	"near stop\000"
 13290      2073746F 
 13290      7000
 13291 0032 0000     		.space	2
 13292              	.LC204:
 13293 0034 67656E65 		.ascii	"generate a heater fault\000"
ARM GAS  /tmp/ccJRi9N9.s 			page 245


 13293      72617465 
 13293      20612068 
 13293      65617465 
 13293      72206661 
 13294              	.LC205:
 13295 004c 7065726D 		.ascii	"permanently switch off\000"
 13295      616E656E 
 13295      746C7920 
 13295      73776974 
 13295      6368206F 
 13296 0063 00       		.space	1
 13297              	.LC206:
 13298 0064 74656D70 		.ascii	"temporarily switch off\000"
 13298      6F726172 
 13298      696C7920 
 13298      73776974 
 13298      6368206F 
 13299              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
