ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 1


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
  14              		.text
  15              		.section	.text._ZNK10Kinematics26WriteCalibrationParametersEP9FileStore,"axG",%progbits,_ZNK10Kine
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, %function
  24              	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0120     		movs	r0, #1
  29 0002 7047     		bx	lr
  30              		.size	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK10Kinematics26WriteCalibrati
  31              		.section	.text._ZNK10Kinematics15MustBeHomedAxesEmb,"axG",%progbits,_ZNK10Kinematics15MustBeHomedA
  32              		.align	1
  33              		.p2align 2,,3
  34              		.weak	_ZNK10Kinematics15MustBeHomedAxesEmb
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	_ZNK10Kinematics15MustBeHomedAxesEmb, %function
  40              	_ZNK10Kinematics15MustBeHomedAxesEmb:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43              		@ link register save eliminated.
  44 0000 002A     		cmp	r2, #0
  45 0002 14BF     		ite	ne
  46 0004 0846     		movne	r0, r1
  47 0006 0020     		moveq	r0, #0
  48 0008 7047     		bx	lr
  49              		.size	_ZNK10Kinematics15MustBeHomedAxesEmb, .-_ZNK10Kinematics15MustBeHomedAxesEmb
  50 000a 00BF     		.section	.text._ZN6GCodesUlP11ObjectModelE_4_FUNES1_,"ax",%progbits
  51              		.align	1
  52              		.p2align 2,,3
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu fpv4-sp-d16
  57              		.type	_ZN6GCodesUlP11ObjectModelE_4_FUNES1_, %function
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 2


  58              	_ZN6GCodesUlP11ObjectModelE_4_FUNES1_:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61              		@ link register save eliminated.
  62 0000 00F25C50 		addw	r0, r0, #1372
  63 0004 7047     		bx	lr
  64              		.size	_ZN6GCodesUlP11ObjectModelE_4_FUNES1_, .-_ZN6GCodesUlP11ObjectModelE_4_FUNES1_
  65 0006 00BF     		.section	.text._ZNK6GCodes19GetObjectModelTableERj,"ax",%progbits
  66              		.align	1
  67              		.p2align 2,,3
  68              		.global	_ZNK6GCodes19GetObjectModelTableERj
  69              		.syntax unified
  70              		.thumb
  71              		.thumb_func
  72              		.fpu fpv4-sp-d16
  73              		.type	_ZNK6GCodes19GetObjectModelTableERj, %function
  74              	_ZNK6GCodes19GetObjectModelTableERj:
  75              		@ args = 0, pretend = 0, frame = 0
  76              		@ frame_needed = 0, uses_anonymous_args = 0
  77              		@ link register save eliminated.
  78 0000 0123     		movs	r3, #1
  79 0002 0B60     		str	r3, [r1]
  80 0004 0048     		ldr	r0, .L8
  81 0006 7047     		bx	lr
  82              	.L9:
  83              		.align	2
  84              	.L8:
  85 0008 00000000 		.word	.LANCHOR0
  86              		.size	_ZNK6GCodes19GetObjectModelTableERj, .-_ZNK6GCodes19GetObjectModelTableERj
  87              		.section	.text._ZN6GCodes20CommandEmergencyStopEP9UARTClass,"ax",%progbits
  88              		.align	1
  89              		.p2align 2,,3
  90              		.global	_ZN6GCodes20CommandEmergencyStopEP9UARTClass
  91              		.syntax unified
  92              		.thumb
  93              		.thumb_func
  94              		.fpu fpv4-sp-d16
  95              		.type	_ZN6GCodes20CommandEmergencyStopEP9UARTClass, %function
  96              	_ZN6GCodes20CommandEmergencyStopEP9UARTClass:
  97              		@ args = 0, pretend = 0, frame = 0
  98              		@ frame_needed = 0, uses_anonymous_args = 0
  99              		@ link register save eliminated.
 100 0000 014B     		ldr	r3, .L11
 101 0002 0122     		movs	r2, #1
 102 0004 1A70     		strb	r2, [r3]
 103 0006 7047     		bx	lr
 104              	.L12:
 105              		.align	2
 106              	.L11:
 107 0008 00000000 		.word	.LANCHOR1
 108              		.size	_ZN6GCodes20CommandEmergencyStopEP9UARTClass, .-_ZN6GCodes20CommandEmergencyStopEP9UARTClass
 109              		.section	.text._ZN6GCodes4PushER11GCodeBuffer.part.55,"ax",%progbits
 110              		.align	1
 111              		.p2align 2,,3
 112              		.syntax unified
 113              		.thumb
 114              		.thumb_func
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 3


 115              		.fpu fpv4-sp-d16
 116              		.type	_ZN6GCodes4PushER11GCodeBuffer.part.55, %function
 117              	_ZN6GCodes4PushER11GCodeBuffer.part.55:
 118              		@ args = 0, pretend = 0, frame = 0
 119              		@ frame_needed = 0, uses_anonymous_args = 0
 120              		@ link register save eliminated.
 121 0000 4068     		ldr	r0, [r0, #4]
 122 0002 024A     		ldr	r2, .L14
 123 0004 40F2B511 		movw	r1, #437
 124 0008 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 125              	.L15:
 126              		.align	2
 127              	.L14:
 128 000c 00000000 		.word	.LC0
 129              		.size	_ZN6GCodes4PushER11GCodeBuffer.part.55, .-_ZN6GCodes4PushER11GCodeBuffer.part.55
 130              		.global	__aeabi_f2d
 131              		.section	.text._ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.61,"ax",%progbits
 132              		.align	1
 133              		.p2align 2,,3
 134              		.syntax unified
 135              		.thumb
 136              		.thumb_func
 137              		.fpu fpv4-sp-d16
 138              		.type	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.61, %function
 139              	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.61:
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 0, uses_anonymous_args = 0
 142 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 143 0004 2DED028B 		vpush.64	{d8}
 144 0008 85B0     		sub	sp, sp, #20
 145 000a 8B46     		mov	fp, r1
 146 000c 1446     		mov	r4, r2
 147 000e 8146     		mov	r9, r0
 148 0010 FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 149 0014 0028     		cmp	r0, #0
 150 0016 44D1     		bne	.L30
 151              	.L17:
 152 0018 002C     		cmp	r4, #0
 153 001a 3DD0     		beq	.L18
 154 001c DBF89C20 		ldr	r2, [fp, #156]
 155 0020 2249     		ldr	r1, .L31
 156 0022 4846     		mov	r0, r9
 157 0024 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 158              	.L19:
 159 0028 214A     		ldr	r2, .L31+4
 160 002a DBF89830 		ldr	r3, [fp, #152]
 161 002e 1669     		ldr	r6, [r2, #16]	@ unaligned
 162 0030 6BB3     		cbz	r3, .L16
 163 0032 6FF0B808 		mvn	r8, #184
 164 0036 DFF880A0 		ldr	r10, .L31+12
 165 003a A8EB0B08 		sub	r8, r8, fp
 166 003e 0BF1B904 		add	r4, fp, #185
 167 0042 3A27     		movs	r7, #58
 168              	.L21:
 169 0044 14F9015B 		ldrsb	r5, [r4], #1
 170 0048 3046     		mov	r0, r6
 171 004a 2946     		mov	r1, r5
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 4


 172 004c FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 173 0050 2946     		mov	r1, r5
 174 0052 3046     		mov	r0, r6
 175 0054 B0EE408A 		vmov.f32	s16, s0
 176 0058 FFF7FEFF 		bl	_ZNK4Heat20GetTargetTemperatureEa
 177 005c 10EE100A 		vmov	r0, s0
 178 0060 FFF7FEFF 		bl	__aeabi_f2d
 179 0064 CDE90201 		strd	r0, [sp, #8]
 180 0068 18EE100A 		vmov	r0, s16
 181 006c FFF7FEFF 		bl	__aeabi_f2d
 182 0070 3A46     		mov	r2, r7
 183 0072 CDE90001 		strd	r0, [sp]
 184 0076 5146     		mov	r1, r10
 185 0078 4846     		mov	r0, r9
 186 007a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 187 007e DBF89820 		ldr	r2, [fp, #152]
 188 0082 08EB0403 		add	r3, r8, r4
 189 0086 9A42     		cmp	r2, r3
 190 0088 4FF02007 		mov	r7, #32
 191 008c DAD8     		bhi	.L21
 192              	.L16:
 193 008e 05B0     		add	sp, sp, #20
 194              		@ sp needed
 195 0090 BDEC028B 		vldm	sp!, {d8}
 196 0094 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 197              	.L18:
 198 0098 0649     		ldr	r1, .L31+8
 199 009a 4846     		mov	r0, r9
 200 009c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 201 00a0 C2E7     		b	.L19
 202              	.L30:
 203 00a2 2021     		movs	r1, #32
 204 00a4 4846     		mov	r0, r9
 205 00a6 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 206 00aa B5E7     		b	.L17
 207              	.L32:
 208              		.align	2
 209              	.L31:
 210 00ac 00000000 		.word	.LC1
 211 00b0 00000000 		.word	reprap
 212 00b4 04000000 		.word	.LC2
 213 00b8 08000000 		.word	.LC3
 214              		.size	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.61, .-_ZNK6GCodes22ReportToolT
 215              		.section	.text._ZN6GCodes7RawMove11SetDefaultsEv,"ax",%progbits
 216              		.align	1
 217              		.p2align 2,,3
 218              		.global	_ZN6GCodes7RawMove11SetDefaultsEv
 219              		.syntax unified
 220              		.thumb
 221              		.thumb_func
 222              		.fpu fpv4-sp-d16
 223              		.type	_ZN6GCodes7RawMove11SetDefaultsEv, %function
 224              	_ZN6GCodes7RawMove11SetDefaultsEv:
 225              		@ args = 0, pretend = 0, frame = 0
 226              		@ frame_needed = 0, uses_anonymous_args = 0
 227              		@ link register save eliminated.
 228 0000 30B4     		push	{r4, r5}
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 5


 229 0002 90F87330 		ldrb	r3, [r0, #115]	@ zero_extendqisi2
 230 0006 0022     		movs	r2, #0
 231 0008 03F0CF03 		and	r3, r3, #207
 232 000c 4FF0FF35 		mov	r5, #-1
 233 0010 0124     		movs	r4, #1
 234 0012 62F34103 		bfi	r3, r2, #1, #1
 235 0016 0221     		movs	r1, #2
 236 0018 C565     		str	r5, [r0, #92]
 237 001a C0E91941 		strd	r4, r1, [r0, #100]
 238 001e 80F87220 		strb	r2, [r0, #114]
 239 0022 80F87330 		strb	r3, [r0, #115]
 240 0026 C266     		str	r2, [r0, #108]
 241 0028 30BC     		pop	{r4, r5}
 242 002a 7047     		bx	lr
 243              		.size	_ZN6GCodes7RawMove11SetDefaultsEv, .-_ZN6GCodes7RawMove11SetDefaultsEv
 244              		.section	.text._ZN6GCodesC2ER8Platform,"ax",%progbits
 245              		.align	1
 246              		.p2align 2,,3
 247              		.global	_ZN6GCodesC2ER8Platform
 248              		.syntax unified
 249              		.thumb
 250              		.thumb_func
 251              		.fpu fpv4-sp-d16
 252              		.type	_ZN6GCodesC2ER8Platform, %function
 253              	_ZN6GCodesC2ER8Platform:
 254              		@ args = 0, pretend = 0, frame = 0
 255              		@ frame_needed = 0, uses_anonymous_args = 0
 256 0000 70B5     		push	{r4, r5, r6, lr}
 257 0002 0446     		mov	r4, r0
 258 0004 0D46     		mov	r5, r1
 259 0006 FFF7FEFF 		bl	_ZN11ObjectModelC2Ev
 260 000a 644B     		ldr	r3, .L39
 261 000c 6560     		str	r5, [r4, #4]
 262 000e 04F12000 		add	r0, r4, #32
 263 0012 04F11C05 		add	r5, r4, #28
 264 0016 04F12401 		add	r1, r4, #36
 265 001a 04F12802 		add	r2, r4, #40
 266 001e 2360     		str	r3, [r4]
 267 0020 04F12C03 		add	r3, r4, #44
 268 0024 2564     		str	r5, [r4, #64]
 269 0026 6064     		str	r0, [r4, #68]
 270 0028 04F13005 		add	r5, r4, #48
 271 002c 04F13400 		add	r0, r4, #52
 272 0030 A164     		str	r1, [r4, #72]
 273 0032 E264     		str	r2, [r4, #76]
 274 0034 04F13801 		add	r1, r4, #56
 275 0038 04F13C02 		add	r2, r4, #60
 276 003c 2365     		str	r3, [r4, #80]
 277 003e 0023     		movs	r3, #0
 278 0040 C4E91550 		strd	r5, r0, [r4, #84]
 279 0044 C4E91712 		strd	r1, r2, [r4, #92]
 280 0048 84F8B430 		strb	r3, [r4, #180]
 281 004c 84F8B530 		strb	r3, [r4, #181]
 282 0050 C4F8BC30 		str	r3, [r4, #188]
 283 0054 04F5D870 		add	r0, r4, #432
 284 0058 FFF7FEFF 		bl	_ZN12RestorePointC1Ev
 285 005c 04F5F675 		add	r5, r4, #492
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 6


 286 0060 04F55576 		add	r6, r4, #852
 287              	.L36:
 288 0064 2846     		mov	r0, r5
 289 0066 3C35     		adds	r5, r5, #60
 290 0068 FFF7FEFF 		bl	_ZN12RestorePointC1Ev
 291 006c AE42     		cmp	r6, r5
 292 006e F9D1     		bne	.L36
 293 0070 0025     		movs	r5, #0
 294 0072 04F50A72 		add	r2, r4, #552
 295 0076 04F51973 		add	r3, r4, #612
 296 007a C4F85423 		str	r2, [r4, #852]
 297 007e C4F85833 		str	r3, [r4, #856]
 298 0082 C4F80855 		str	r5, [r4, #1288]
 299 0086 04F2AC50 		addw	r0, r4, #1452
 300 008a FFF7FEFF 		bl	_ZN14GridDefinitionC1Ev
 301 008e 84F8B556 		strb	r5, [r4, #1717]
 302 0092 C4F8BC56 		str	r5, [r4, #1724]
 303 0096 C4F83C57 		str	r5, [r4, #1852]
 304 009a 4FF48A70 		mov	r0, #276
 305 009e FFF7FEFF 		bl	_Znwj
 306 00a2 0646     		mov	r6, r0
 307 00a4 FFF7FEFF 		bl	_ZN17RegularGCodeInputC2Ev
 308 00a8 3D4B     		ldr	r3, .L39+4
 309 00aa A660     		str	r6, [r4, #8]
 310 00ac C6F81051 		str	r5, [r6, #272]
 311 00b0 3360     		str	r3, [r6]
 312 00b2 FC20     		movs	r0, #252
 313 00b4 FFF7FEFF 		bl	_Znwj
 314 00b8 3522     		movs	r2, #53
 315 00ba 3A49     		ldr	r1, .L39+8
 316 00bc 0123     		movs	r3, #1
 317 00be 0646     		mov	r6, r0
 318 00c0 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 319 00c4 A36C     		ldr	r3, [r4, #72]
 320 00c6 0820     		movs	r0, #8
 321 00c8 1E60     		str	r6, [r3]
 322 00ca FFF7FEFF 		bl	_Znwj
 323 00ce 0346     		mov	r3, r0
 324 00d0 3549     		ldr	r1, .L39+12
 325 00d2 364A     		ldr	r2, .L39+16
 326 00d4 0160     		str	r1, [r0]
 327 00d6 E060     		str	r0, [r4, #12]
 328 00d8 5A60     		str	r2, [r3, #4]
 329 00da FC20     		movs	r0, #252
 330 00dc FFF7FEFF 		bl	_Znwj
 331 00e0 0123     		movs	r3, #1
 332 00e2 1A46     		mov	r2, r3
 333 00e4 3249     		ldr	r1, .L39+20
 334 00e6 0646     		mov	r6, r0
 335 00e8 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 336 00ec E36C     		ldr	r3, [r4, #76]
 337 00ee 4FF4B870 		mov	r0, #368
 338 00f2 1E60     		str	r6, [r3]
 339 00f4 FFF7FEFF 		bl	_Znwj
 340 00f8 0646     		mov	r6, r0
 341 00fa FFF7FEFF 		bl	_ZN17NetworkGCodeInputC1Ev
 342 00fe 2661     		str	r6, [r4, #16]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 7


 343 0100 FC20     		movs	r0, #252
 344 0102 FFF7FEFF 		bl	_Znwj
 345 0106 1022     		movs	r2, #16
 346 0108 2A49     		ldr	r1, .L39+24
 347 010a 2B46     		mov	r3, r5
 348 010c 0646     		mov	r6, r0
 349 010e FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 350 0112 236C     		ldr	r3, [r4, #64]
 351 0114 4FF4B870 		mov	r0, #368
 352 0118 1E60     		str	r6, [r3]
 353 011a FFF7FEFF 		bl	_Znwj
 354 011e 0646     		mov	r6, r0
 355 0120 FFF7FEFF 		bl	_ZN17NetworkGCodeInputC1Ev
 356 0124 6661     		str	r6, [r4, #20]
 357 0126 FC20     		movs	r0, #252
 358 0128 FFF7FEFF 		bl	_Znwj
 359 012c 2022     		movs	r2, #32
 360 012e 2249     		ldr	r1, .L39+28
 361 0130 0123     		movs	r3, #1
 362 0132 0646     		mov	r6, r0
 363 0134 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 364 0138 636C     		ldr	r3, [r4, #68]
 365 013a 1E60     		str	r6, [r3]
 366 013c 236D     		ldr	r3, [r4, #80]
 367 013e FC20     		movs	r0, #252
 368 0140 1D60     		str	r5, [r3]
 369 0142 FFF7FEFF 		bl	_Znwj
 370 0146 2B46     		mov	r3, r5
 371 0148 3522     		movs	r2, #53
 372 014a 1C49     		ldr	r1, .L39+32
 373 014c 0646     		mov	r6, r0
 374 014e FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 375 0152 636D     		ldr	r3, [r4, #84]
 376 0154 1E60     		str	r6, [r3]
 377 0156 E36D     		ldr	r3, [r4, #92]
 378 0158 FC20     		movs	r0, #252
 379 015a 1D60     		str	r5, [r3]
 380 015c FFF7FEFF 		bl	_Znwj
 381 0160 2B46     		mov	r3, r5
 382 0162 3522     		movs	r2, #53
 383 0164 1649     		ldr	r1, .L39+36
 384 0166 0646     		mov	r6, r0
 385 0168 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 386 016c A36D     		ldr	r3, [r4, #88]
 387 016e FC20     		movs	r0, #252
 388 0170 1E60     		str	r6, [r3]
 389 0172 FFF7FEFF 		bl	_Znwj
 390 0176 3522     		movs	r2, #53
 391 0178 1249     		ldr	r1, .L39+40
 392 017a 2B46     		mov	r3, r5
 393 017c 0646     		mov	r6, r0
 394 017e FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 395 0182 236E     		ldr	r3, [r4, #96]
 396 0184 0820     		movs	r0, #8
 397 0186 1E60     		str	r6, [r3]
 398 0188 FFF7FEFF 		bl	_Znwj
 399 018c 0546     		mov	r5, r0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 8


 400 018e FFF7FEFF 		bl	_ZN10GCodeQueueC1Ev
 401 0192 C4F8B856 		str	r5, [r4, #1720]
 402 0196 2046     		mov	r0, r4
 403 0198 70BD     		pop	{r4, r5, r6, pc}
 404              	.L40:
 405 019a 00BF     		.align	2
 406              	.L39:
 407 019c 08000000 		.word	.LANCHOR2+8
 408 01a0 08000000 		.word	_ZTV14FileGCodeInput+8
 409 01a4 00000000 		.word	.LC4
 410 01a8 08000000 		.word	_ZTV16StreamGCodeInput+8
 411 01ac 00000000 		.word	SerialUSB
 412 01b0 08000000 		.word	.LC5
 413 01b4 10000000 		.word	.LC6
 414 01b8 18000000 		.word	.LC7
 415 01bc 20000000 		.word	.LC8
 416 01c0 28000000 		.word	.LC9
 417 01c4 30000000 		.word	.LC10
 418              		.size	_ZN6GCodesC2ER8Platform, .-_ZN6GCodesC2ER8Platform
 419              		.global	_ZN6GCodesC1ER8Platform
 420              		.thumb_set _ZN6GCodesC1ER8Platform,_ZN6GCodesC2ER8Platform
 421              		.section	.text._ZN6GCodes4ExitEv,"ax",%progbits
 422              		.align	1
 423              		.p2align 2,,3
 424              		.global	_ZN6GCodes4ExitEv
 425              		.syntax unified
 426              		.thumb
 427              		.thumb_func
 428              		.fpu fpv4-sp-d16
 429              		.type	_ZN6GCodes4ExitEv, %function
 430              	_ZN6GCodes4ExitEv:
 431              		@ args = 0, pretend = 0, frame = 0
 432              		@ frame_needed = 0, uses_anonymous_args = 0
 433              		@ link register save eliminated.
 434 0000 0023     		movs	r3, #0
 435 0002 80F8B530 		strb	r3, [r0, #181]
 436 0006 7047     		bx	lr
 437              		.size	_ZN6GCodes4ExitEv, .-_ZN6GCodes4ExitEv
 438              		.section	.text._ZNK6GCodes14DoingFileMacroEv,"ax",%progbits
 439              		.align	1
 440              		.p2align 2,,3
 441              		.global	_ZNK6GCodes14DoingFileMacroEv
 442              		.syntax unified
 443              		.thumb
 444              		.thumb_func
 445              		.fpu fpv4-sp-d16
 446              		.type	_ZNK6GCodes14DoingFileMacroEv, %function
 447              	_ZNK6GCodes14DoingFileMacroEv:
 448              		@ args = 0, pretend = 0, frame = 0
 449              		@ frame_needed = 0, uses_anonymous_args = 0
 450 0000 38B5     		push	{r3, r4, r5, lr}
 451 0002 00F14005 		add	r5, r0, #64
 452 0006 00F11C04 		add	r4, r0, #28
 453              	.L45:
 454 000a 54F8043B 		ldr	r3, [r4], #4
 455 000e 1846     		mov	r0, r3
 456 0010 13B1     		cbz	r3, .L46
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 9


 457 0012 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 458 0016 10B9     		cbnz	r0, .L44
 459              	.L46:
 460 0018 A542     		cmp	r5, r4
 461 001a F6D1     		bne	.L45
 462 001c 0020     		movs	r0, #0
 463              	.L44:
 464 001e 38BD     		pop	{r3, r4, r5, pc}
 465              		.size	_ZNK6GCodes14DoingFileMacroEv, .-_ZNK6GCodes14DoingFileMacroEv
 466              		.section	.text._ZNK6GCodes21FractionOfFilePrintedEv,"ax",%progbits
 467              		.align	1
 468              		.p2align 2,,3
 469              		.global	_ZNK6GCodes21FractionOfFilePrintedEv
 470              		.syntax unified
 471              		.thumb
 472              		.thumb_func
 473              		.fpu fpv4-sp-d16
 474              		.type	_ZNK6GCodes21FractionOfFilePrintedEv, %function
 475              	_ZNK6GCodes21FractionOfFilePrintedEv:
 476              		@ args = 0, pretend = 0, frame = 8
 477              		@ frame_needed = 0, uses_anonymous_args = 0
 478 0000 30B5     		push	{r4, r5, lr}
 479 0002 836C     		ldr	r3, [r0, #72]
 480 0004 83B0     		sub	sp, sp, #12
 481 0006 0446     		mov	r4, r0
 482 0008 1868     		ldr	r0, [r3]
 483 000a FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 484 000e 0546     		mov	r5, r0
 485 0010 8068     		ldr	r0, [r0, #8]
 486 0012 E8B1     		cbz	r0, .L55
 487 0014 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 488 0018 0190     		str	r0, [sp, #4]
 489 001a 18B9     		cbnz	r0, .L59
 490 001c 9FED110A 		vldr.32	s0, .L61
 491 0020 03B0     		add	sp, sp, #12
 492              		@ sp needed
 493 0022 30BD     		pop	{r4, r5, pc}
 494              	.L59:
 495 0024 A36C     		ldr	r3, [r4, #72]
 496 0026 1868     		ldr	r0, [r3]
 497 0028 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 498 002c A0B1     		cbz	r0, .L60
 499 002e 0024     		movs	r4, #0
 500              	.L54:
 501 0030 A868     		ldr	r0, [r5, #8]
 502 0032 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 503 0036 001B     		subs	r0, r0, r4
 504 0038 07EE900A 		vmov	s15, r0	@ int
 505 003c B8EE677A 		vcvt.f32.u32	s14, s15
 506 0040 DDED017A 		vldr.32	s15, [sp, #4]	@ int
 507 0044 F8EE677A 		vcvt.f32.u32	s15, s15
 508 0048 87EE270A 		vdiv.f32	s0, s14, s15
 509 004c 03B0     		add	sp, sp, #12
 510              		@ sp needed
 511 004e 30BD     		pop	{r4, r5, pc}
 512              	.L55:
 513 0050 BFEE000A 		vmov.f32	s0, #-1.0e+0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 10


 514 0054 03B0     		add	sp, sp, #12
 515              		@ sp needed
 516 0056 30BD     		pop	{r4, r5, pc}
 517              	.L60:
 518 0058 A068     		ldr	r0, [r4, #8]
 519 005a 0368     		ldr	r3, [r0]
 520 005c 9B68     		ldr	r3, [r3, #8]
 521 005e 9847     		blx	r3
 522 0060 0446     		mov	r4, r0
 523 0062 E5E7     		b	.L54
 524              	.L62:
 525              		.align	2
 526              	.L61:
 527 0064 00000000 		.word	0
 528              		.size	_ZNK6GCodes21FractionOfFilePrintedEv, .-_ZNK6GCodes21FractionOfFilePrintedEv
 529              		.section	.text._ZNK6GCodes15GetFilePositionEv,"ax",%progbits
 530              		.align	1
 531              		.p2align 2,,3
 532              		.global	_ZNK6GCodes15GetFilePositionEv
 533              		.syntax unified
 534              		.thumb
 535              		.thumb_func
 536              		.fpu fpv4-sp-d16
 537              		.type	_ZNK6GCodes15GetFilePositionEv, %function
 538              	_ZNK6GCodes15GetFilePositionEv:
 539              		@ args = 0, pretend = 0, frame = 0
 540              		@ frame_needed = 0, uses_anonymous_args = 0
 541 0000 38B5     		push	{r3, r4, r5, lr}
 542 0002 836C     		ldr	r3, [r0, #72]
 543 0004 0446     		mov	r4, r0
 544 0006 1868     		ldr	r0, [r3]
 545 0008 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 546 000c 0546     		mov	r5, r0
 547 000e 8068     		ldr	r0, [r0, #8]
 548 0010 48B1     		cbz	r0, .L63
 549 0012 A36C     		ldr	r3, [r4, #72]
 550 0014 1868     		ldr	r0, [r3]
 551 0016 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 552 001a 28B1     		cbz	r0, .L69
 553 001c 0024     		movs	r4, #0
 554              	.L65:
 555 001e A868     		ldr	r0, [r5, #8]
 556 0020 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 557 0024 001B     		subs	r0, r0, r4
 558              	.L63:
 559 0026 38BD     		pop	{r3, r4, r5, pc}
 560              	.L69:
 561 0028 A068     		ldr	r0, [r4, #8]
 562 002a 0368     		ldr	r3, [r0]
 563 002c 9B68     		ldr	r3, [r3, #8]
 564 002e 9847     		blx	r3
 565 0030 0446     		mov	r4, r0
 566 0032 F4E7     		b	.L65
 567              		.size	_ZNK6GCodes15GetFilePositionEv, .-_ZNK6GCodes15GetFilePositionEv
 568              		.section	.text._ZNK6GCodes12IsDaemonBusyEv,"ax",%progbits
 569              		.align	1
 570              		.p2align 2,,3
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 11


 571              		.global	_ZNK6GCodes12IsDaemonBusyEv
 572              		.syntax unified
 573              		.thumb
 574              		.thumb_func
 575              		.fpu fpv4-sp-d16
 576              		.type	_ZNK6GCodes12IsDaemonBusyEv, %function
 577              	_ZNK6GCodes12IsDaemonBusyEv:
 578              		@ args = 0, pretend = 0, frame = 0
 579              		@ frame_needed = 0, uses_anonymous_args = 0
 580              		@ link register save eliminated.
 581 0000 436D     		ldr	r3, [r0, #84]
 582 0002 1B68     		ldr	r3, [r3]
 583 0004 9B68     		ldr	r3, [r3, #8]
 584 0006 9868     		ldr	r0, [r3, #8]
 585 0008 0030     		adds	r0, r0, #0
 586 000a 18BF     		it	ne
 587 000c 0120     		movne	r0, #1
 588 000e 7047     		bx	lr
 589              		.size	_ZNK6GCodes12IsDaemonBusyEv, .-_ZNK6GCodes12IsDaemonBusyEv
 590              		.section	.text._ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer,"ax",%progbits
 591              		.align	1
 592              		.p2align 2,,3
 593              		.global	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer
 594              		.syntax unified
 595              		.thumb
 596              		.thumb_func
 597              		.fpu fpv4-sp-d16
 598              		.type	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer, %function
 599              	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer:
 600              		@ args = 0, pretend = 0, frame = 0
 601              		@ frame_needed = 0, uses_anonymous_args = 0
 602              		@ link register save eliminated.
 603 0000 00F11802 		add	r2, r0, #24
 604 0004 3C30     		adds	r0, r0, #60
 605              	.L79:
 606 0006 52F8043F 		ldr	r3, [r2, #4]!
 607 000a D3B1     		cbz	r3, .L84
 608 000c 70B4     		push	{r4, r5, r6}
 609              	.L80:
 610 000e 8C68     		ldr	r4, [r1, #8]
 611 0010 9B68     		ldr	r3, [r3, #8]
 612 0012 267E     		ldrb	r6, [r4, #24]	@ zero_extendqisi2
 613 0014 1D7E     		ldrb	r5, [r3, #24]	@ zero_extendqisi2
 614 0016 66F30005 		bfi	r5, r6, #0, #1
 615 001a 1D76     		strb	r5, [r3, #24]
 616 001c 257E     		ldrb	r5, [r4, #24]	@ zero_extendqisi2
 617 001e 1E7E     		ldrb	r6, [r3, #24]	@ zero_extendqisi2
 618 0020 C5F34005 		ubfx	r5, r5, #1, #1
 619 0024 65F34106 		bfi	r6, r5, #1, #1
 620 0028 1E76     		strb	r6, [r3, #24]
 621 002a 6468     		ldr	r4, [r4, #4]	@ float
 622 002c 5C60     		str	r4, [r3, #4]	@ float
 623 002e 8242     		cmp	r2, r0
 624 0030 05D0     		beq	.L85
 625              	.L73:
 626 0032 52F8043F 		ldr	r3, [r2, #4]!
 627 0036 002B     		cmp	r3, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 12


 628 0038 E9D1     		bne	.L80
 629 003a 8242     		cmp	r2, r0
 630 003c F9D1     		bne	.L73
 631              	.L85:
 632 003e 70BC     		pop	{r4, r5, r6}
 633 0040 7047     		bx	lr
 634              	.L84:
 635 0042 8242     		cmp	r2, r0
 636 0044 DFD1     		bne	.L79
 637 0046 7047     		bx	lr
 638              		.size	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer, .-_ZN6GCodes21CopyConfigFinalValuesER11GCo
 639              		.section	.text._ZN6GCodes14InitialiseTapsEv,"ax",%progbits
 640              		.align	1
 641              		.p2align 2,,3
 642              		.global	_ZN6GCodes14InitialiseTapsEv
 643              		.syntax unified
 644              		.thumb
 645              		.thumb_func
 646              		.fpu fpv4-sp-d16
 647              		.type	_ZN6GCodes14InitialiseTapsEv, %function
 648              	_ZN6GCodes14InitialiseTapsEv:
 649              		@ args = 0, pretend = 0, frame = 0
 650              		@ frame_needed = 0, uses_anonymous_args = 0
 651              		@ link register save eliminated.
 652 0000 30B4     		push	{r4, r5}
 653 0002 00F5BF61 		add	r1, r0, #1528
 654 0006 00F2FC53 		addw	r3, r0, #1532
 655 000a 0024     		movs	r4, #0
 656 000c 0025     		movs	r5, #0
 657 000e 034A     		ldr	r2, .L88
 658 0010 80F81356 		strb	r5, [r0, #1555]
 659 0014 0C60     		str	r4, [r1]	@ float
 660 0016 1A60     		str	r2, [r3]	@ float
 661 0018 30BC     		pop	{r4, r5}
 662 001a 7047     		bx	lr
 663              	.L89:
 664              		.align	2
 665              	.L88:
 666 001c 00007A44 		.word	1148846080
 667              		.size	_ZN6GCodes14InitialiseTapsEv, .-_ZN6GCodes14InitialiseTapsEv
 668              		.section	.text._ZN6GCodes13FilamentErrorEj20FilamentSensorStatus,"ax",%progbits
 669              		.align	1
 670              		.p2align 2,,3
 671              		.global	_ZN6GCodes13FilamentErrorEj20FilamentSensorStatus
 672              		.syntax unified
 673              		.thumb
 674              		.thumb_func
 675              		.fpu fpv4-sp-d16
 676              		.type	_ZN6GCodes13FilamentErrorEj20FilamentSensorStatus, %function
 677              	_ZN6GCodes13FilamentErrorEj20FilamentSensorStatus:
 678              		@ args = 0, pretend = 0, frame = 0
 679              		@ frame_needed = 0, uses_anonymous_args = 0
 680              		@ link register save eliminated.
 681 0000 90F82437 		ldrb	r3, [r0, #1828]	@ zero_extendqisi2
 682 0004 1BB9     		cbnz	r3, .L90
 683 0006 C0F82817 		str	r1, [r0, #1832]
 684 000a 80F82427 		strb	r2, [r0, #1828]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 13


 685              	.L90:
 686 000e 7047     		bx	lr
 687              		.size	_ZN6GCodes13FilamentErrorEj20FilamentSensorStatus, .-_ZN6GCodes13FilamentErrorEj20FilamentSe
 688              		.section	.text._ZNK6GCodes9IsPausingEv,"ax",%progbits
 689              		.align	1
 690              		.p2align 2,,3
 691              		.global	_ZNK6GCodes9IsPausingEv
 692              		.syntax unified
 693              		.thumb
 694              		.thumb_func
 695              		.fpu fpv4-sp-d16
 696              		.type	_ZNK6GCodes9IsPausingEv, %function
 697              	_ZNK6GCodes9IsPausingEv:
 698              		@ args = 0, pretend = 0, frame = 0
 699              		@ frame_needed = 0, uses_anonymous_args = 0
 700 0000 10B5     		push	{r4, lr}
 701 0002 836C     		ldr	r3, [r0, #72]
 702 0004 0446     		mov	r4, r0
 703 0006 1868     		ldr	r0, [r3]
 704 0008 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 705 000c 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 706 000e 0F3B     		subs	r3, r3, #15
 707 0010 032B     		cmp	r3, #3
 708 0012 01D8     		bhi	.L93
 709              	.L95:
 710 0014 0120     		movs	r0, #1
 711 0016 10BD     		pop	{r4, pc}
 712              	.L93:
 713 0018 636D     		ldr	r3, [r4, #84]
 714 001a 1868     		ldr	r0, [r3]
 715 001c FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 716 0020 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 717 0022 0F3B     		subs	r3, r3, #15
 718 0024 032B     		cmp	r3, #3
 719 0026 F5D9     		bls	.L95
 720 0028 236E     		ldr	r3, [r4, #96]
 721 002a 1868     		ldr	r0, [r3]
 722 002c FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 723 0030 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 724 0032 A0F10F03 		sub	r3, r0, #15
 725 0036 032B     		cmp	r3, #3
 726 0038 ECD9     		bls	.L95
 727 003a A0F13100 		sub	r0, #49
 728 003e B0FA80F0 		clz	r0, r0
 729 0042 4009     		lsrs	r0, r0, #5
 730 0044 10BD     		pop	{r4, pc}
 731              		.size	_ZNK6GCodes9IsPausingEv, .-_ZNK6GCodes9IsPausingEv
 732 0046 00BF     		.section	.text._ZNK6GCodes8IsPausedEv,"ax",%progbits
 733              		.align	1
 734              		.p2align 2,,3
 735              		.global	_ZNK6GCodes8IsPausedEv
 736              		.syntax unified
 737              		.thumb
 738              		.thumb_func
 739              		.fpu fpv4-sp-d16
 740              		.type	_ZNK6GCodes8IsPausedEv, %function
 741              	_ZNK6GCodes8IsPausedEv:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 14


 742              		@ args = 0, pretend = 0, frame = 0
 743              		@ frame_needed = 0, uses_anonymous_args = 0
 744 0000 90F8B620 		ldrb	r2, [r0, #182]	@ zero_extendqisi2
 745 0004 0AB9     		cbnz	r2, .L98
 746 0006 0020     		movs	r0, #0
 747 0008 7047     		bx	lr
 748              	.L98:
 749 000a 10B5     		push	{r4, lr}
 750 000c 0446     		mov	r4, r0
 751 000e FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
 752 0012 08B1     		cbz	r0, .L104
 753 0014 0020     		movs	r0, #0
 754 0016 10BD     		pop	{r4, pc}
 755              	.L104:
 756 0018 A36C     		ldr	r3, [r4, #72]
 757 001a 1868     		ldr	r0, [r3]
 758 001c FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 759 0020 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 760 0022 1338     		subs	r0, r0, #19
 761 0024 0228     		cmp	r0, #2
 762 0026 94BF     		ite	ls
 763 0028 0020     		movls	r0, #0
 764 002a 0120     		movhi	r0, #1
 765 002c 10BD     		pop	{r4, pc}
 766              		.size	_ZNK6GCodes8IsPausedEv, .-_ZNK6GCodes8IsPausedEv
 767 002e 00BF     		.section	.text._ZNK6GCodes10IsResumingEv,"ax",%progbits
 768              		.align	1
 769              		.p2align 2,,3
 770              		.global	_ZNK6GCodes10IsResumingEv
 771              		.syntax unified
 772              		.thumb
 773              		.thumb_func
 774              		.fpu fpv4-sp-d16
 775              		.type	_ZNK6GCodes10IsResumingEv, %function
 776              	_ZNK6GCodes10IsResumingEv:
 777              		@ args = 0, pretend = 0, frame = 0
 778              		@ frame_needed = 0, uses_anonymous_args = 0
 779 0000 08B5     		push	{r3, lr}
 780 0002 836C     		ldr	r3, [r0, #72]
 781 0004 1868     		ldr	r0, [r3]
 782 0006 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 783 000a 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 784 000c 1338     		subs	r0, r0, #19
 785 000e 0228     		cmp	r0, #2
 786 0010 8CBF     		ite	hi
 787 0012 0020     		movhi	r0, #0
 788 0014 0120     		movls	r0, #1
 789 0016 08BD     		pop	{r3, pc}
 790              		.size	_ZNK6GCodes10IsResumingEv, .-_ZNK6GCodes10IsResumingEv
 791              		.section	.text._ZNK6GCodes9IsRunningEv,"ax",%progbits
 792              		.align	1
 793              		.p2align 2,,3
 794              		.global	_ZNK6GCodes9IsRunningEv
 795              		.syntax unified
 796              		.thumb
 797              		.thumb_func
 798              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 15


 799              		.type	_ZNK6GCodes9IsRunningEv, %function
 800              	_ZNK6GCodes9IsRunningEv:
 801              		@ args = 0, pretend = 0, frame = 0
 802              		@ frame_needed = 0, uses_anonymous_args = 0
 803 0000 10B5     		push	{r4, lr}
 804 0002 0446     		mov	r4, r0
 805 0004 FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 806 0008 08B1     		cbz	r0, .L108
 807              	.L110:
 808 000a 0020     		movs	r0, #0
 809 000c 10BD     		pop	{r4, pc}
 810              	.L108:
 811 000e 2046     		mov	r0, r4
 812 0010 FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
 813 0014 0028     		cmp	r0, #0
 814 0016 F8D1     		bne	.L110
 815 0018 A36C     		ldr	r3, [r4, #72]
 816 001a 1868     		ldr	r0, [r3]
 817 001c FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 818 0020 007D     		ldrb	r0, [r0, #20]	@ zero_extendqisi2
 819 0022 1338     		subs	r0, r0, #19
 820 0024 0228     		cmp	r0, #2
 821 0026 94BF     		ite	ls
 822 0028 0020     		movls	r0, #0
 823 002a 0120     		movhi	r0, #1
 824 002c 10BD     		pop	{r4, pc}
 825              		.size	_ZNK6GCodes9IsRunningEv, .-_ZNK6GCodes9IsRunningEv
 826 002e 00BF     		.section	.text._ZNK6GCodes16IsReallyPrintingEv.part.54,"ax",%progbits
 827              		.align	1
 828              		.p2align 2,,3
 829              		.syntax unified
 830              		.thumb
 831              		.thumb_func
 832              		.fpu fpv4-sp-d16
 833              		.type	_ZNK6GCodes16IsReallyPrintingEv.part.54, %function
 834              	_ZNK6GCodes16IsReallyPrintingEv.part.54:
 835              		@ args = 0, pretend = 0, frame = 0
 836              		@ frame_needed = 0, uses_anonymous_args = 0
 837              		@ link register save eliminated.
 838 0000 FFF7FEBF 		b	_ZNK6GCodes9IsRunningEv
 839              		.size	_ZNK6GCodes16IsReallyPrintingEv.part.54, .-_ZNK6GCodes16IsReallyPrintingEv.part.54
 840              		.section	.text._ZNK6GCodes16IsReallyPrintingEv,"ax",%progbits
 841              		.align	1
 842              		.p2align 2,,3
 843              		.global	_ZNK6GCodes16IsReallyPrintingEv
 844              		.syntax unified
 845              		.thumb
 846              		.thumb_func
 847              		.fpu fpv4-sp-d16
 848              		.type	_ZNK6GCodes16IsReallyPrintingEv, %function
 849              	_ZNK6GCodes16IsReallyPrintingEv:
 850              		@ args = 0, pretend = 0, frame = 0
 851              		@ frame_needed = 0, uses_anonymous_args = 0
 852              		@ link register save eliminated.
 853 0000 034B     		ldr	r3, .L116
 854 0002 1B6A     		ldr	r3, [r3, #32]
 855 0004 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 16


 856 0006 0BB9     		cbnz	r3, .L115
 857 0008 1846     		mov	r0, r3
 858 000a 7047     		bx	lr
 859              	.L115:
 860 000c FFF7FEBF 		b	_ZNK6GCodes16IsReallyPrintingEv.part.54
 861              	.L117:
 862              		.align	2
 863              	.L116:
 864 0010 00000000 		.word	reprap
 865              		.size	_ZNK6GCodes16IsReallyPrintingEv, .-_ZNK6GCodes16IsReallyPrintingEv
 866              		.section	.text._ZNK6GCodes11IsHeatingUpEv,"ax",%progbits
 867              		.align	1
 868              		.p2align 2,,3
 869              		.global	_ZNK6GCodes11IsHeatingUpEv
 870              		.syntax unified
 871              		.thumb
 872              		.thumb_func
 873              		.fpu fpv4-sp-d16
 874              		.type	_ZNK6GCodes11IsHeatingUpEv, %function
 875              	_ZNK6GCodes11IsHeatingUpEv:
 876              		@ args = 0, pretend = 0, frame = 0
 877              		@ frame_needed = 0, uses_anonymous_args = 0
 878              		@ link register save eliminated.
 879 0000 836C     		ldr	r3, [r0, #72]
 880 0002 1B68     		ldr	r3, [r3]
 881 0004 93F82820 		ldrb	r2, [r3, #40]	@ zero_extendqisi2
 882 0008 092A     		cmp	r2, #9
 883 000a 01D0     		beq	.L124
 884              	.L121:
 885 000c 0020     		movs	r0, #0
 886 000e 7047     		bx	lr
 887              	.L124:
 888 0010 93F85420 		ldrb	r2, [r3, #84]	@ zero_extendqisi2
 889 0014 4D2A     		cmp	r2, #77
 890 0016 F9D1     		bne	.L121
 891 0018 986C     		ldr	r0, [r3, #72]
 892 001a 6D28     		cmp	r0, #109
 893 001c 07D0     		beq	.L123
 894 001e 7428     		cmp	r0, #116
 895 0020 05D0     		beq	.L123
 896 0022 BE38     		subs	r0, r0, #190
 897 0024 0128     		cmp	r0, #1
 898 0026 8CBF     		ite	hi
 899 0028 0020     		movhi	r0, #0
 900 002a 0120     		movls	r0, #1
 901 002c 7047     		bx	lr
 902              	.L123:
 903 002e 0120     		movs	r0, #1
 904 0030 7047     		bx	lr
 905              		.size	_ZNK6GCodes11IsHeatingUpEv, .-_ZNK6GCodes11IsHeatingUpEv
 906 0032 00BF     		.section	.text._ZN6GCodes16LowVoltageResumeEv,"ax",%progbits
 907              		.align	1
 908              		.p2align 2,,3
 909              		.global	_ZN6GCodes16LowVoltageResumeEv
 910              		.syntax unified
 911              		.thumb
 912              		.thumb_func
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 17


 913              		.fpu fpv4-sp-d16
 914              		.type	_ZN6GCodes16LowVoltageResumeEv, %function
 915              	_ZN6GCodes16LowVoltageResumeEv:
 916              		@ args = 0, pretend = 0, frame = 0
 917              		@ frame_needed = 0, uses_anonymous_args = 0
 918 0000 10B5     		push	{r4, lr}
 919 0002 084B     		ldr	r3, .L134
 920 0004 0446     		mov	r4, r0
 921 0006 0021     		movs	r1, #0
 922 0008 1869     		ldr	r0, [r3, #16]
 923 000a FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 924 000e 94F8B630 		ldrb	r3, [r4, #182]	@ zero_extendqisi2
 925 0012 2BB1     		cbz	r3, .L126
 926 0014 94F8BB30 		ldrb	r3, [r4, #187]	@ zero_extendqisi2
 927 0018 13B1     		cbz	r3, .L126
 928 001a 0023     		movs	r3, #0
 929 001c 84F8BB30 		strb	r3, [r4, #187]
 930              	.L126:
 931 0020 0120     		movs	r0, #1
 932 0022 10BD     		pop	{r4, pc}
 933              	.L135:
 934              		.align	2
 935              	.L134:
 936 0024 00000000 		.word	reprap
 937              		.size	_ZN6GCodes16LowVoltageResumeEv, .-_ZN6GCodes16LowVoltageResumeEv
 938              		.section	.text._ZN6GCodes21SetMachineAxisLettersEPKch,"ax",%progbits
 939              		.align	1
 940              		.p2align 2,,3
 941              		.global	_ZN6GCodes21SetMachineAxisLettersEPKch
 942              		.syntax unified
 943              		.thumb
 944              		.thumb_func
 945              		.fpu fpv4-sp-d16
 946              		.type	_ZN6GCodes21SetMachineAxisLettersEPKch, %function
 947              	_ZN6GCodes21SetMachineAxisLettersEPKch:
 948              		@ args = 0, pretend = 0, frame = 0
 949              		@ frame_needed = 0, uses_anonymous_args = 0
 950              		@ link register save eliminated.
 951 0000 0023     		movs	r3, #0
 952 0002 092A     		cmp	r2, #9
 953 0004 10B4     		push	{r4}
 954 0006 C0F81A35 		str	r3, [r0, #1306]	@ unaligned
 955 000a C0F81E35 		str	r3, [r0, #1310]	@ unaligned
 956 000e A0F82235 		strh	r3, [r0, #1314]	@ unaligned
 957 0012 1346     		mov	r3, r2
 958 0014 28BF     		it	cs
 959 0016 0923     		movcs	r3, #9
 960 0018 42B1     		cbz	r2, .L136
 961 001a CA18     		adds	r2, r1, r3
 962 001c 00F21950 		addw	r0, r0, #1305
 963              	.L138:
 964 0020 11F8013B 		ldrb	r3, [r1], #1	@ zero_extendqisi2
 965 0024 00F8013F 		strb	r3, [r0, #1]!
 966 0028 9142     		cmp	r1, r2
 967 002a F9D1     		bne	.L138
 968              	.L136:
 969 002c 5DF8044B 		ldr	r4, [sp], #4
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 18


 970 0030 7047     		bx	lr
 971              		.size	_ZN6GCodes21SetMachineAxisLettersEPKch, .-_ZN6GCodes21SetMachineAxisLettersEPKch
 972 0032 00BF     		.section	.text._ZN6GCodes14SaveResumeInfoEb,"ax",%progbits
 973              		.align	1
 974              		.p2align 2,,3
 975              		.global	_ZN6GCodes14SaveResumeInfoEb
 976              		.syntax unified
 977              		.thumb
 978              		.thumb_func
 979              		.fpu fpv4-sp-d16
 980              		.type	_ZN6GCodes14SaveResumeInfoEb, %function
 981              	_ZN6GCodes14SaveResumeInfoEb:
 982              		@ args = 0, pretend = 0, frame = 224
 983              		@ frame_needed = 0, uses_anonymous_args = 0
 984 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 985 0004 334F     		ldr	r7, .L229
 986 0006 3D6A     		ldr	r5, [r7, #32]
 987 0008 2A7B     		ldrb	r2, [r5, #12]	@ zero_extendqisi2
 988 000a BCB0     		sub	sp, sp, #240
 989 000c 12B9     		cbnz	r2, .L225
 990              	.L144:
 991 000e 3CB0     		add	sp, sp, #240
 992              		@ sp needed
 993 0010 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 994              	.L225:
 995 0014 4368     		ldr	r3, [r0, #4]
 996 0016 304A     		ldr	r2, .L229+4
 997 0018 8846     		mov	r8, r1
 998 001a 0446     		mov	r4, r0
 999 001c 2F49     		ldr	r1, .L229+8
 1000 001e D3F8DC0B 		ldr	r0, [r3, #3036]
 1001 0022 0123     		movs	r3, #1
 1002 0024 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 1003 0028 05F59075 		add	r5, r5, #288
 1004 002c 0646     		mov	r6, r0
 1005 002e 0028     		cmp	r0, #0
 1006 0030 00F08681 		beq	.L226
 1007 0034 3CA9     		add	r1, sp, #240
 1008 0036 0020     		movs	r0, #0
 1009 0038 01F8CC0D 		strb	r0, [r1, #-204]!
 1010 003c 284A     		ldr	r2, .L229+12
 1011 003e 294B     		ldr	r3, .L229+16
 1012 0040 0791     		str	r1, [sp, #28]
 1013 0042 8045     		cmp	r8, r0
 1014 0044 08BF     		it	eq
 1015 0046 1346     		moveq	r3, r2
 1016 0048 4FF0C90C 		mov	ip, #201
 1017 004c 07A8     		add	r0, sp, #28
 1018 004e 2A46     		mov	r2, r5
 1019 0050 2549     		ldr	r1, .L229+20
 1020 0052 CDF820C0 		str	ip, [sp, #32]
 1021 0056 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1022 005a 6068     		ldr	r0, [r4, #4]
 1023 005c FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 1024 0060 F0B9     		cbnz	r0, .L227
 1025              	.L148:
 1026 0062 0A21     		movs	r1, #10
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 19


 1027 0064 07A8     		add	r0, sp, #28
 1028 0066 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1029 006a 0799     		ldr	r1, [sp, #28]
 1030 006c 3046     		mov	r0, r6
 1031 006e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1032 0072 0028     		cmp	r0, #0
 1033 0074 3ED1     		bne	.L228
 1034              	.L149:
 1035 0076 3046     		mov	r0, r6
 1036 0078 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1037              	.L164:
 1038 007c 6368     		ldr	r3, [r4, #4]
 1039 007e 164A     		ldr	r2, .L229+4
 1040 0080 D3F8DC0B 		ldr	r0, [r3, #3036]
 1041 0084 1549     		ldr	r1, .L229+8
 1042 0086 0123     		movs	r3, #1
 1043 0088 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 1044 008c 6068     		ldr	r0, [r4, #4]
 1045 008e 124B     		ldr	r3, .L229+4
 1046 0090 164A     		ldr	r2, .L229+24
 1047 0092 40F2B511 		movw	r1, #437
 1048 0096 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1049 009a 3CB0     		add	sp, sp, #240
 1050              		@ sp needed
 1051 009c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1052              	.L227:
 1053 00a0 6068     		ldr	r0, [r4, #4]
 1054 00a2 FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
 1055 00a6 3CAB     		add	r3, sp, #240
 1056 00a8 63E93801 		strd	r0, [r3, #-224]!
 1057 00ac 1846     		mov	r0, r3
 1058 00ae FFF7FEFF 		bl	gmtime
 1059 00b2 4368     		ldr	r3, [r0, #4]
 1060 00b4 0E49     		ldr	r1, .L229+28
 1061 00b6 D0E904C2 		ldrd	ip, r2, [r0, #16]
 1062 00ba 0293     		str	r3, [sp, #8]
 1063 00bc 8368     		ldr	r3, [r0, #8]
 1064 00be 0193     		str	r3, [sp, #4]
 1065 00c0 C068     		ldr	r0, [r0, #12]
 1066 00c2 0090     		str	r0, [sp]
 1067 00c4 0CF10103 		add	r3, ip, #1
 1068 00c8 02F26C72 		addw	r2, r2, #1900
 1069 00cc 07A8     		add	r0, sp, #28
 1070 00ce FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1071 00d2 C6E7     		b	.L148
 1072              	.L230:
 1073              		.align	2
 1074              	.L229:
 1075 00d4 00000000 		.word	reprap
 1076 00d8 28000000 		.word	.LC15
 1077 00dc 34000000 		.word	.LC16
 1078 00e0 10000000 		.word	.LC12
 1079 00e4 00000000 		.word	.LC11
 1080 00e8 58000000 		.word	.LC18
 1081 00ec A0010000 		.word	.LC38
 1082 00f0 7C000000 		.word	.LC19
 1083              	.L228:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 20


 1084 00f4 3146     		mov	r1, r6
 1085 00f6 3869     		ldr	r0, [r7, #16]
 1086 00f8 FFF7FEFF 		bl	_ZNK4Heat30WriteBedAndChamberTempSettingsEP9FileStore
 1087 00fc 0028     		cmp	r0, #0
 1088 00fe BAD0     		beq	.L149
 1089 0100 3146     		mov	r1, r6
 1090 0102 A948     		ldr	r0, .L231
 1091 0104 FFF7FEFF 		bl	_ZNK6RepRap17WriteToolSettingsEP9FileStore
 1092 0108 0028     		cmp	r0, #0
 1093 010a B4D0     		beq	.L149
 1094 010c F868     		ldr	r0, [r7, #12]
 1095 010e 3146     		mov	r1, r6
 1096 0110 FFF7FEFF 		bl	_ZNK4Move19WriteResumeSettingsEP9FileStore
 1097 0114 0028     		cmp	r0, #0
 1098 0116 AED0     		beq	.L149
 1099 0118 A449     		ldr	r1, .L231+4
 1100 011a 07A8     		add	r0, sp, #28
 1101 011c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 1102 0120 D4F86033 		ldr	r3, [r4, #864]
 1103 0124 CBB1     		cbz	r3, .L150
 1104 0126 DFF8B092 		ldr	r9, .L231+48
 1105 012a 04F20F58 		addw	r8, r4, #1295
 1106 012e 0027     		movs	r7, #0
 1107              	.L151:
 1108 0130 D4F85433 		ldr	r3, [r4, #852]
 1109 0134 18F801AF 		ldrb	r10, [r8, #1]!	@ zero_extendqisi2
 1110 0138 03EB8703 		add	r3, r3, r7, lsl #2
 1111 013c 0137     		adds	r7, r7, #1
 1112 013e 1868     		ldr	r0, [r3]	@ float
 1113 0140 FFF7FEFF 		bl	__aeabi_f2d
 1114 0144 5246     		mov	r2, r10
 1115 0146 CDE90001 		strd	r0, [sp]
 1116 014a 4946     		mov	r1, r9
 1117 014c 07A8     		add	r0, sp, #28
 1118 014e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1119 0152 D4F86033 		ldr	r3, [r4, #864]
 1120 0156 BB42     		cmp	r3, r7
 1121 0158 EAD8     		bhi	.L151
 1122              	.L150:
 1123 015a 0A21     		movs	r1, #10
 1124 015c 07A8     		add	r0, sp, #28
 1125 015e FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1126 0162 0799     		ldr	r1, [sp, #28]
 1127 0164 3046     		mov	r0, r6
 1128 0166 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1129 016a 0028     		cmp	r0, #0
 1130 016c 83D0     		beq	.L149
 1131 016e 9049     		ldr	r1, .L231+8
 1132 0170 904A     		ldr	r2, .L231+12
 1133 0172 07A8     		add	r0, sp, #28
 1134 0174 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1135 0178 0799     		ldr	r1, [sp, #28]
 1136 017a 3046     		mov	r0, r6
 1137 017c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1138 0180 0028     		cmp	r0, #0
 1139 0182 3FF478AF 		beq	.L149
 1140 0186 3146     		mov	r1, r6
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 21


 1141 0188 6068     		ldr	r0, [r4, #4]
 1142 018a FFF7FEFF 		bl	_ZNK8Platform16WriteFanSettingsEP9FileStore
 1143 018e 0028     		cmp	r0, #0
 1144 0190 3FF471AF 		beq	.L149
 1145 0194 04F25453 		addw	r3, r4, #1364
 1146 0198 1868     		ldr	r0, [r3]	@ float
 1147 019a FFF7FEFF 		bl	__aeabi_f2d
 1148 019e 0246     		mov	r2, r0
 1149 01a0 0B46     		mov	r3, r1
 1150 01a2 07A8     		add	r0, sp, #28
 1151 01a4 8449     		ldr	r1, .L231+16
 1152 01a6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1153 01aa 0799     		ldr	r1, [sp, #28]
 1154 01ac 3046     		mov	r0, r6
 1155 01ae FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1156 01b2 0028     		cmp	r0, #0
 1157 01b4 3FF45FAF 		beq	.L149
 1158 01b8 04F5B563 		add	r3, r4, #1448
 1159 01bc 1868     		ldr	r0, [r3]	@ float
 1160 01be FFF7FEFF 		bl	__aeabi_f2d
 1161 01c2 0246     		mov	r2, r0
 1162 01c4 0B46     		mov	r3, r1
 1163 01c6 07A8     		add	r0, sp, #28
 1164 01c8 7C49     		ldr	r1, .L231+20
 1165 01ca FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1166 01ce 0799     		ldr	r1, [sp, #28]
 1167 01d0 3046     		mov	r0, r6
 1168 01d2 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1169 01d6 0028     		cmp	r0, #0
 1170 01d8 3FF44DAF 		beq	.L149
 1171 01dc A36C     		ldr	r3, [r4, #72]
 1172 01de 1868     		ldr	r0, [r3]
 1173 01e0 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 1174 01e4 037E     		ldrb	r3, [r0, #24]	@ zero_extendqisi2
 1175 01e6 5B06     		lsls	r3, r3, #25
 1176 01e8 00F1B280 		bmi	.L152
 1177              	.L157:
 1178 01ec D4F88C03 		ldr	r0, [r4, #908]	@ float
 1179 01f0 FFF7FEFF 		bl	__aeabi_f2d
 1180 01f4 A36C     		ldr	r3, [r4, #72]
 1181 01f6 8046     		mov	r8, r0
 1182 01f8 1868     		ldr	r0, [r3]
 1183 01fa 8946     		mov	r9, r1
 1184 01fc FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 1185 0200 027E     		ldrb	r2, [r0, #24]	@ zero_extendqisi2
 1186 0202 6F4B     		ldr	r3, .L231+24
 1187 0204 6F49     		ldr	r1, .L231+28
 1188 0206 12F0010F 		tst	r2, #1
 1189 020a 08BF     		it	eq
 1190 020c 1946     		moveq	r1, r3
 1191 020e 0091     		str	r1, [sp]
 1192 0210 4246     		mov	r2, r8
 1193 0212 6D49     		ldr	r1, .L231+32
 1194 0214 4B46     		mov	r3, r9
 1195 0216 07A8     		add	r0, sp, #28
 1196 0218 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1197 021c 0799     		ldr	r1, [sp, #28]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 22


 1198 021e 3046     		mov	r0, r6
 1199 0220 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1200 0224 0028     		cmp	r0, #0
 1201 0226 3FF426AF 		beq	.L149
 1202 022a D4F85433 		ldr	r3, [r4, #852]
 1203 022e D86A     		ldr	r0, [r3, #44]	@ float
 1204 0230 1F6B     		ldr	r7, [r3, #48]
 1205 0232 FFF7FEFF 		bl	__aeabi_f2d
 1206 0236 3B46     		mov	r3, r7
 1207 0238 CDE90001 		strd	r0, [sp]
 1208 023c 2A46     		mov	r2, r5
 1209 023e 6349     		ldr	r1, .L231+36
 1210 0240 07A8     		add	r0, sp, #28
 1211 0242 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1212 0246 0799     		ldr	r1, [sp, #28]
 1213 0248 3046     		mov	r0, r6
 1214 024a FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1215 024e 0028     		cmp	r0, #0
 1216 0250 3FF411AF 		beq	.L149
 1217 0254 D4F85433 		ldr	r3, [r4, #852]
 1218 0258 93ED027A 		vldr.32	s14, [r3, #8]
 1219 025c F0EE007A 		vmov.f32	s15, #2.0e+0
 1220 0260 77EE277A 		vadd.f32	s15, s14, s15
 1221 0264 17EE900A 		vmov	r0, s15
 1222 0268 FFF7FEFF 		bl	__aeabi_f2d
 1223 026c 0246     		mov	r2, r0
 1224 026e 0B46     		mov	r3, r1
 1225 0270 07A8     		add	r0, sp, #28
 1226 0272 5749     		ldr	r1, .L231+40
 1227 0274 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1228 0278 5649     		ldr	r1, .L231+44
 1229 027a 07A8     		add	r0, sp, #28
 1230 027c FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1231 0280 D4F86023 		ldr	r2, [r4, #864]
 1232 0284 D4F85433 		ldr	r3, [r4, #852]
 1233 0288 DAB1     		cbz	r2, .L160
 1234 028a 534F     		ldr	r7, .L231+48
 1235 028c 0025     		movs	r5, #0
 1236              	.L161:
 1237 028e 022D     		cmp	r5, #2
 1238 0290 03EB8500 		add	r0, r3, r5, lsl #2
 1239 0294 04EB0501 		add	r1, r4, r5
 1240 0298 05F10105 		add	r5, r5, #1
 1241 029c 0FD0     		beq	.L159
 1242 029e 0068     		ldr	r0, [r0]	@ float
 1243 02a0 91F81085 		ldrb	r8, [r1, #1296]	@ zero_extendqisi2
 1244 02a4 FFF7FEFF 		bl	__aeabi_f2d
 1245 02a8 4246     		mov	r2, r8
 1246 02aa CDE90001 		strd	r0, [sp]
 1247 02ae 3946     		mov	r1, r7
 1248 02b0 07A8     		add	r0, sp, #28
 1249 02b2 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1250 02b6 D4F85433 		ldr	r3, [r4, #852]
 1251 02ba D4F86023 		ldr	r2, [r4, #864]
 1252              	.L159:
 1253 02be AA42     		cmp	r2, r5
 1254 02c0 E5D8     		bhi	.L161
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 23


 1255              	.L160:
 1256 02c2 9868     		ldr	r0, [r3, #8]	@ float
 1257 02c4 FFF7FEFF 		bl	__aeabi_f2d
 1258 02c8 0246     		mov	r2, r0
 1259 02ca 0B46     		mov	r3, r1
 1260 02cc 07A8     		add	r0, sp, #28
 1261 02ce 4349     		ldr	r1, .L231+52
 1262 02d0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1263 02d4 D4F85433 		ldr	r3, [r4, #852]
 1264 02d8 DFED417A 		vldr.32	s15, .L231+56
 1265 02dc 93ED097A 		vldr.32	s14, [r3, #36]
 1266 02e0 67EE277A 		vmul.f32	s15, s14, s15
 1267 02e4 17EE900A 		vmov	r0, s15
 1268 02e8 FFF7FEFF 		bl	__aeabi_f2d
 1269 02ec 0246     		mov	r2, r0
 1270 02ee 0B46     		mov	r3, r1
 1271 02f0 07A8     		add	r0, sp, #28
 1272 02f2 3C49     		ldr	r1, .L231+60
 1273 02f4 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1274 02f8 94F8B430 		ldrb	r3, [r4, #180]	@ zero_extendqisi2
 1275 02fc 012B     		cmp	r3, #1
 1276 02fe D4F85433 		ldr	r3, [r4, #852]
 1277 0302 0CBF     		ite	eq
 1278 0304 3849     		ldreq	r1, .L231+64
 1279 0306 3949     		ldrne	r1, .L231+68
 1280 0308 1A8F     		ldrh	r2, [r3, #56]
 1281 030a 07A8     		add	r0, sp, #28
 1282 030c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1283 0310 3749     		ldr	r1, .L231+72
 1284 0312 07A8     		add	r0, sp, #28
 1285 0314 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 1286 0318 0799     		ldr	r1, [sp, #28]
 1287 031a 3046     		mov	r0, r6
 1288 031c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1289 0320 0546     		mov	r5, r0
 1290 0322 3046     		mov	r0, r6
 1291 0324 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1292 0328 0028     		cmp	r0, #0
 1293 032a 3FF4A7AE 		beq	.L164
 1294 032e 002D     		cmp	r5, #0
 1295 0330 3FF4A4AE 		beq	.L164
 1296 0334 6068     		ldr	r0, [r4, #4]
 1297 0336 2F4A     		ldr	r2, .L231+76
 1298 0338 B521     		movs	r1, #181
 1299 033a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1300 033e 66E6     		b	.L144
 1301              	.L226:
 1302 0340 6068     		ldr	r0, [r4, #4]
 1303 0342 2D4B     		ldr	r3, .L231+80
 1304 0344 2D4A     		ldr	r2, .L231+84
 1305 0346 40F2B511 		movw	r1, #437
 1306 034a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1307 034e 5EE6     		b	.L144
 1308              	.L152:
 1309 0350 2B49     		ldr	r1, .L231+88
 1310 0352 07A8     		add	r0, sp, #28
 1311 0354 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 24


 1312 0358 D4F86433 		ldr	r3, [r4, #868]
 1313 035c C3B1     		cbz	r3, .L155
 1314 035e DFF8A4A0 		ldr	r10, .L231+92
 1315 0362 04F28459 		addw	r9, r4, #1412
 1316 0366 0027     		movs	r7, #0
 1317 0368 4FF04408 		mov	r8, #68
 1318              	.L156:
 1319 036c 59F8040B 		ldr	r0, [r9], #4	@ float
 1320 0370 FFF7FEFF 		bl	__aeabi_f2d
 1321 0374 4246     		mov	r2, r8
 1322 0376 CDE90001 		strd	r0, [sp]
 1323 037a 5146     		mov	r1, r10
 1324 037c 07A8     		add	r0, sp, #28
 1325 037e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 1326 0382 D4F86433 		ldr	r3, [r4, #868]
 1327 0386 0137     		adds	r7, r7, #1
 1328 0388 BB42     		cmp	r3, r7
 1329 038a 4FF03A08 		mov	r8, #58
 1330 038e EDD8     		bhi	.L156
 1331              	.L155:
 1332 0390 0A21     		movs	r1, #10
 1333 0392 07A8     		add	r0, sp, #28
 1334 0394 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 1335 0398 0799     		ldr	r1, [sp, #28]
 1336 039a 3046     		mov	r0, r6
 1337 039c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1338 03a0 0028     		cmp	r0, #0
 1339 03a2 3FF468AE 		beq	.L149
 1340 03a6 21E7     		b	.L157
 1341              	.L232:
 1342              		.align	2
 1343              	.L231:
 1344 03a8 00000000 		.word	reprap
 1345 03ac 9C000000 		.word	.LC20
 1346 03b0 C0000000 		.word	.LC23
 1347 03b4 A8000000 		.word	.LC22
 1348 03b8 CC000000 		.word	.LC24
 1349 03bc D8000000 		.word	.LC25
 1350 03c0 24000000 		.word	.LC14
 1351 03c4 20000000 		.word	.LC13
 1352 03c8 FC000000 		.word	.LC28
 1353 03cc 0C010000 		.word	.LC29
 1354 03d0 24010000 		.word	.LC30
 1355 03d4 34010000 		.word	.LC31
 1356 03d8 A0000000 		.word	.LC21
 1357 03dc 40010000 		.word	.LC32
 1358 03e0 00007042 		.word	1114636288
 1359 03e4 54010000 		.word	.LC33
 1360 03e8 60010000 		.word	.LC34
 1361 03ec 68010000 		.word	.LC35
 1362 03f0 70010000 		.word	.LC36
 1363 03f4 78010000 		.word	.LC37
 1364 03f8 28000000 		.word	.LC15
 1365 03fc 3C000000 		.word	.LC17
 1366 0400 EC000000 		.word	.LC26
 1367 0404 F4000000 		.word	.LC27
 1368              		.size	_ZN6GCodes14SaveResumeInfoEb, .-_ZN6GCodes14SaveResumeInfoEb
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 25


 1369              		.section	.text._ZN6GCodes11DiagnosticsE11MessageType,"ax",%progbits
 1370              		.align	1
 1371              		.p2align 2,,3
 1372              		.global	_ZN6GCodes11DiagnosticsE11MessageType
 1373              		.syntax unified
 1374              		.thumb
 1375              		.thumb_func
 1376              		.fpu fpv4-sp-d16
 1377              		.type	_ZN6GCodes11DiagnosticsE11MessageType, %function
 1378              	_ZN6GCodes11DiagnosticsE11MessageType:
 1379              		@ args = 0, pretend = 0, frame = 0
 1380              		@ frame_needed = 0, uses_anonymous_args = 0
 1381 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1382 0002 0646     		mov	r6, r0
 1383 0004 83B0     		sub	sp, sp, #12
 1384 0006 0D46     		mov	r5, r1
 1385 0008 4068     		ldr	r0, [r0, #4]
 1386 000a 1A4A     		ldr	r2, .L243
 1387 000c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1388 0010 194A     		ldr	r2, .L243+4
 1389 0012 D6F86031 		ldr	r3, [r6, #352]
 1390 0016 7068     		ldr	r0, [r6, #4]
 1391 0018 2946     		mov	r1, r5
 1392 001a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1393 001e 174B     		ldr	r3, .L243+8
 1394 0020 7468     		ldr	r4, [r6, #4]
 1395 0022 1F68     		ldr	r7, [r3]
 1396 0024 FFF7FEFF 		bl	_ZN17GCodeMachineState11GetNumInUseEv
 1397 0028 3B46     		mov	r3, r7
 1398 002a 0090     		str	r0, [sp]
 1399 002c 2946     		mov	r1, r5
 1400 002e 2046     		mov	r0, r4
 1401 0030 134A     		ldr	r2, .L243+12
 1402 0032 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1403 0036 B36E     		ldr	r3, [r6, #104]
 1404 0038 7068     		ldr	r0, [r6, #4]
 1405 003a CBB1     		cbz	r3, .L237
 1406 003c DB68     		ldr	r3, [r3, #12]
 1407              	.L234:
 1408 003e 114A     		ldr	r2, .L243+16
 1409 0040 2946     		mov	r1, r5
 1410 0042 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1411 0046 06F11804 		add	r4, r6, #24
 1412 004a 06F13C07 		add	r7, r6, #60
 1413              	.L236:
 1414 004e 54F8043F 		ldr	r3, [r4, #4]!
 1415 0052 2946     		mov	r1, r5
 1416 0054 1846     		mov	r0, r3
 1417 0056 0BB1     		cbz	r3, .L235
 1418 0058 FFF7FEFF 		bl	_ZN11GCodeBuffer11DiagnosticsE11MessageType
 1419              	.L235:
 1420 005c BC42     		cmp	r4, r7
 1421 005e F6D1     		bne	.L236
 1422 0060 D6F8B806 		ldr	r0, [r6, #1720]
 1423 0064 2946     		mov	r1, r5
 1424 0066 03B0     		add	sp, sp, #12
 1425              		@ sp needed
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 26


 1426 0068 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 1427 006c FFF7FEBF 		b	_ZN10GCodeQueue11DiagnosticsE11MessageType
 1428              	.L237:
 1429 0070 054B     		ldr	r3, .L243+20
 1430 0072 E4E7     		b	.L234
 1431              	.L244:
 1432              		.align	2
 1433              	.L243:
 1434 0074 08000000 		.word	.LC40
 1435 0078 18000000 		.word	.LC41
 1436 007c 00000000 		.word	_ZN17GCodeMachineState12numAllocatedE
 1437 0080 2C000000 		.word	.LC42
 1438 0084 54000000 		.word	.LC43
 1439 0088 00000000 		.word	.LC39
 1440              		.size	_ZN6GCodes11DiagnosticsE11MessageType, .-_ZN6GCodes11DiagnosticsE11MessageType
 1441              		.section	.text._ZN6GCodes4PushER11GCodeBuffer,"ax",%progbits
 1442              		.align	1
 1443              		.p2align 2,,3
 1444              		.global	_ZN6GCodes4PushER11GCodeBuffer
 1445              		.syntax unified
 1446              		.thumb
 1447              		.thumb_func
 1448              		.fpu fpv4-sp-d16
 1449              		.type	_ZN6GCodes4PushER11GCodeBuffer, %function
 1450              	_ZN6GCodes4PushER11GCodeBuffer:
 1451              		@ args = 0, pretend = 0, frame = 0
 1452              		@ frame_needed = 0, uses_anonymous_args = 0
 1453 0000 38B5     		push	{r3, r4, r5, lr}
 1454 0002 0546     		mov	r5, r0
 1455 0004 0846     		mov	r0, r1
 1456 0006 FFF7FEFF 		bl	_ZN11GCodeBuffer9PushStateEv
 1457 000a 0446     		mov	r4, r0
 1458 000c 10B9     		cbnz	r0, .L246
 1459 000e 2846     		mov	r0, r5
 1460 0010 FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer.part.55
 1461              	.L246:
 1462 0014 2046     		mov	r0, r4
 1463 0016 38BD     		pop	{r3, r4, r5, pc}
 1464              		.size	_ZN6GCodes4PushER11GCodeBuffer, .-_ZN6GCodes4PushER11GCodeBuffer
 1465              		.section	.text._ZN6GCodes3PopER11GCodeBuffer,"ax",%progbits
 1466              		.align	1
 1467              		.p2align 2,,3
 1468              		.global	_ZN6GCodes3PopER11GCodeBuffer
 1469              		.syntax unified
 1470              		.thumb
 1471              		.thumb_func
 1472              		.fpu fpv4-sp-d16
 1473              		.type	_ZN6GCodes3PopER11GCodeBuffer, %function
 1474              	_ZN6GCodes3PopER11GCodeBuffer:
 1475              		@ args = 0, pretend = 0, frame = 0
 1476              		@ frame_needed = 0, uses_anonymous_args = 0
 1477 0000 10B5     		push	{r4, lr}
 1478 0002 0446     		mov	r4, r0
 1479 0004 0846     		mov	r0, r1
 1480 0006 FFF7FEFF 		bl	_ZN11GCodeBuffer8PopStateEv
 1481 000a 00B1     		cbz	r0, .L251
 1482 000c 10BD     		pop	{r4, pc}
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 27


 1483              	.L251:
 1484 000e 6068     		ldr	r0, [r4, #4]
 1485 0010 034A     		ldr	r2, .L252
 1486 0012 40F2B511 		movw	r1, #437
 1487 0016 BDE81040 		pop	{r4, lr}
 1488 001a FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 1489              	.L253:
 1490 001e 00BF     		.align	2
 1491              	.L252:
 1492 0020 00000000 		.word	.LC44
 1493              		.size	_ZN6GCodes3PopER11GCodeBuffer, .-_ZN6GCodes3PopER11GCodeBuffer
 1494              		.section	.text._ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer,"ax",%progbits
 1495              		.align	1
 1496              		.p2align 2,,3
 1497              		.global	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer
 1498              		.syntax unified
 1499              		.thumb
 1500              		.thumb_func
 1501              		.fpu fpv4-sp-d16
 1502              		.type	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer, %function
 1503              	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer:
 1504              		@ args = 0, pretend = 0, frame = 40
 1505              		@ frame_needed = 0, uses_anonymous_args = 0
 1506 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1507 0004 90F85F31 		ldrb	r3, [r0, #351]	@ zero_extendqisi2
 1508 0008 13F01002 		ands	r2, r3, #16
 1509 000c 8AB0     		sub	sp, sp, #40
 1510 000e 0446     		mov	r4, r0
 1511 0010 0D46     		mov	r5, r1
 1512 0012 03D1     		bne	.L255
 1513 0014 90F8B410 		ldrb	r1, [r0, #180]	@ zero_extendqisi2
 1514 0018 0029     		cmp	r1, #0
 1515 001a 42D1     		bne	.L256
 1516              	.L255:
 1517 001c 4621     		movs	r1, #70
 1518 001e 2846     		mov	r0, r5
 1519 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1520 0024 0028     		cmp	r0, #0
 1521 0026 44D1     		bne	.L303
 1522              	.L257:
 1523 0028 AA68     		ldr	r2, [r5, #8]
 1524 002a 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 1525 002e 5268     		ldr	r2, [r2, #4]	@ float
 1526 0030 C4F84021 		str	r2, [r4, #320]	@ float
 1527 0034 43F02003 		orr	r3, r3, #32
 1528 0038 84F85F31 		strb	r3, [r4, #351]
 1529              	.L260:
 1530 003c D4F85C33 		ldr	r3, [r4, #860]
 1531 0040 0B2B     		cmp	r3, #11
 1532 0042 09D8     		bhi	.L261
 1533 0044 3B33     		adds	r3, r3, #59
 1534 0046 0021     		movs	r1, #0
 1535 0048 04EB8303 		add	r3, r4, r3, lsl #2
 1536 004c 04F58E72 		add	r2, r4, #284
 1537              	.L262:
 1538 0050 43F8041B 		str	r1, [r3], #4	@ float
 1539 0054 9342     		cmp	r3, r2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 28


 1540 0056 FBD1     		bne	.L262
 1541              	.L261:
 1542 0058 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 1543 005c D4F88C23 		ldr	r2, [r4, #908]	@ float
 1544 0060 C4F84421 		str	r2, [r4, #324]	@ float
 1545 0064 6FF3C303 		bfc	r3, #3, #1
 1546 0068 84F85F31 		strb	r3, [r4, #351]
 1547 006c 4521     		movs	r1, #69
 1548 006e 2846     		mov	r0, r5
 1549 0070 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1550 0074 0746     		mov	r7, r0
 1551 0076 78B1     		cbz	r0, .L266
 1552 0078 884B     		ldr	r3, .L310
 1553 007a D3F8EC60 		ldr	r6, [r3, #236]
 1554 007e 002E     		cmp	r6, #0
 1555 0080 7AD0     		beq	.L304
 1556 0082 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 1557 0086 43F00803 		orr	r3, r3, #8
 1558 008a 84F85F31 		strb	r3, [r4, #351]
 1559 008e D6F89480 		ldr	r8, [r6, #148]
 1560 0092 B8F1000F 		cmp	r8, #0
 1561 0096 1FD1     		bne	.L305
 1562              	.L266:
 1563 0098 0127     		movs	r7, #1
 1564              	.L286:
 1565 009a 3846     		mov	r0, r7
 1566 009c 0AB0     		add	sp, sp, #40
 1567              		@ sp needed
 1568 009e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1569              	.L256:
 1570 00a2 7F49     		ldr	r1, .L310+4
 1571 00a4 C0F84011 		str	r1, [r0, #320]	@ float
 1572 00a8 62F34513 		bfi	r3, r2, #5, #1
 1573 00ac 80F85F31 		strb	r3, [r0, #351]
 1574 00b0 C4E7     		b	.L260
 1575              	.L303:
 1576 00b2 2846     		mov	r0, r5
 1577 00b4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1578 00b8 D4EDEE7A 		vldr.32	s15, [r4, #952]
 1579 00bc 94F85E31 		ldrb	r3, [r4, #350]	@ zero_extendqisi2
 1580 00c0 60EE277A 		vmul.f32	s15, s0, s15
 1581 00c4 002B     		cmp	r3, #0
 1582 00c6 5FD0     		beq	.L306
 1583 00c8 9FED760A 		vldr.32	s0, .L310+8
 1584 00cc 67EE807A 		vmul.f32	s15, s15, s0
 1585              	.L259:
 1586 00d0 AB68     		ldr	r3, [r5, #8]
 1587 00d2 C3ED017A 		vstr.32	s15, [r3, #4]
 1588 00d6 A7E7     		b	.L257
 1589              	.L305:
 1590 00d8 0AAA     		add	r2, sp, #40
 1591 00da 0023     		movs	r3, #0
 1592 00dc 42F8288D 		str	r8, [r2, #-40]!
 1593 00e0 01A9     		add	r1, sp, #4
 1594 00e2 2846     		mov	r0, r5
 1595 00e4 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 1596 00e8 009B     		ldr	r3, [sp]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 29


 1597 00ea 012B     		cmp	r3, #1
 1598 00ec AB68     		ldr	r3, [r5, #8]
 1599 00ee 6AD0     		beq	.L307
 1600 00f0 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 1601 00f2 DB07     		lsls	r3, r3, #31
 1602 00f4 40F1CA80 		bpl	.L277
 1603 00f8 06EB0802 		add	r2, r6, r8
 1604 00fc D4EDEE5A 		vldr.32	s11, [r4, #952]
 1605 0100 B032     		adds	r2, r2, #176
 1606 0102 01A9     		add	r1, sp, #4
 1607 0104 B036     		adds	r6, r6, #176
 1608              	.L285:
 1609 0106 F1EC017A 		vldmia.32	r1!, {s15}
 1610 010a 67EEA57A 		vmul.f32	s15, s15, s11
 1611 010e F5EE407A 		vcmp.f32	s15, #0
 1612 0112 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1613 0116 2BD0     		beq	.L279
 1614 0118 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 1615 011a A868     		ldr	r0, [r5, #8]
 1616 011c 04EB830C 		add	ip, r4, r3, lsl #2
 1617 0120 007E     		ldrb	r0, [r0, #24]	@ zero_extendqisi2
 1618 0122 DCEDE46A 		vldr.32	s13, [ip, #912]
 1619 0126 0CF28458 		addw	r8, ip, #1412
 1620 012a 98ED006A 		vldr.32	s12, [r8]
 1621 012e 4006     		lsls	r0, r0, #25
 1622 0130 48BF     		it	mi
 1623 0132 67EE867A 		vmulmi.f32	s15, s15, s12
 1624 0136 0CF5AC6E 		add	lr, ip, #1376
 1625 013a 76EEA76A 		vadd.f32	s13, s13, s15
 1626 013e CCEDE46A 		vstr.32	s13, [ip, #912]
 1627 0142 9EED007A 		vldr.32	s14, [lr]
 1628 0146 D4F85C03 		ldr	r0, [r4, #860]
 1629 014a 94F85EC1 		ldrb	ip, [r4, #350]	@ zero_extendqisi2
 1630 014e 27EE877A 		vmul.f32	s14, s15, s14
 1631 0152 0344     		add	r3, r3, r0
 1632 0154 04EB8300 		add	r0, r4, r3, lsl #2
 1633 0158 27EE067A 		vmul.f32	s14, s14, s12
 1634 015c BCF1000F 		cmp	ip, #0
 1635 0160 1DD1     		bne	.L281
 1636 0162 94F8BA00 		ldrb	r0, [r4, #186]	@ zero_extendqisi2
 1637 0166 38B3     		cbz	r0, .L308
 1638              	.L282:
 1639 0168 04EB8303 		add	r3, r4, r3, lsl #2
 1640 016c 83ED3B7A 		vstr.32	s14, [r3, #236]
 1641              	.L279:
 1642 0170 0136     		adds	r6, r6, #1
 1643 0172 B242     		cmp	r2, r6
 1644 0174 C7D1     		bne	.L285
 1645 0176 90E7     		b	.L286
 1646              	.L304:
 1647 0178 3746     		mov	r7, r6
 1648 017a 0123     		movs	r3, #1
 1649 017c 3846     		mov	r0, r7
 1650 017e 84F84737 		strb	r3, [r4, #1863]
 1651 0182 0AB0     		add	sp, sp, #40
 1652              		@ sp needed
 1653 0184 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 30


 1654              	.L306:
 1655 0188 04F25C53 		addw	r3, r4, #1372
 1656 018c 93ED007A 		vldr.32	s14, [r3]
 1657 0190 9FED450A 		vldr.32	s0, .L310+12
 1658 0194 67EE877A 		vmul.f32	s15, s15, s14
 1659 0198 67EE807A 		vmul.f32	s15, s15, s0
 1660 019c 98E7     		b	.L259
 1661              	.L281:
 1662 019e BCF1010F 		cmp	ip, #1
 1663 01a2 80ED3B7A 		vstr.32	s14, [r0, #236]
 1664 01a6 E3D1     		bne	.L279
 1665 01a8 D4F85801 		ldr	r0, [r4, #344]
 1666 01ac 0CFA03F3 		lsl	r3, ip, r3
 1667 01b0 0343     		orrs	r3, r3, r0
 1668 01b2 C4F85831 		str	r3, [r4, #344]
 1669 01b6 DBE7     		b	.L279
 1670              	.L308:
 1671 01b8 D4EDED6A 		vldr.32	s13, [r4, #948]
 1672 01bc 76EEA77A 		vadd.f32	s15, s13, s15
 1673 01c0 C4EDED7A 		vstr.32	s15, [r4, #948]
 1674 01c4 D0E7     		b	.L282
 1675              	.L307:
 1676 01c6 1B7E     		ldrb	r3, [r3, #24]	@ zero_extendqisi2
 1677 01c8 DDED016A 		vldr.32	s13, [sp, #4]
 1678 01cc D4EDEE7A 		vldr.32	s15, [r4, #952]
 1679 01d0 DA07     		lsls	r2, r3, #31
 1680 01d2 66EEA76A 		vmul.f32	s13, s13, s15
 1681 01d6 05D4     		bmi	.L268
 1682 01d8 D4EDE37A 		vldr.32	s15, [r4, #908]
 1683 01dc C4EDE36A 		vstr.32	s13, [r4, #908]
 1684 01e0 76EEE76A 		vsub.f32	s13, s13, s15
 1685              	.L268:
 1686 01e4 06F13002 		add	r2, r6, #48
 1687 01e8 02EB8808 		add	r8, r2, r8, lsl #2
 1688 01ec B036     		adds	r6, r6, #176
 1689 01ee 11E0     		b	.L275
 1690              	.L309:
 1691 01f0 94F8BA10 		ldrb	r1, [r4, #186]	@ zero_extendqisi2
 1692 01f4 29B9     		cbnz	r1, .L273
 1693 01f6 94EDED6A 		vldr.32	s12, [r4, #948]
 1694 01fa 76EE277A 		vadd.f32	s15, s12, s15
 1695 01fe C4EDED7A 		vstr.32	s15, [r4, #948]
 1696              	.L273:
 1697 0202 04EB8303 		add	r3, r4, r3, lsl #2
 1698 0206 83ED3B7A 		vstr.32	s14, [r3, #236]
 1699              	.L270:
 1700 020a 9045     		cmp	r8, r2
 1701 020c 06F10106 		add	r6, r6, #1
 1702 0210 3FF443AF 		beq	.L286
 1703              	.L275:
 1704 0214 F2EC017A 		vldmia.32	r2!, {s15}
 1705 0218 67EEA67A 		vmul.f32	s15, s15, s13
 1706 021c F5EE407A 		vcmp.f32	s15, #0
 1707 0220 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1708 0224 F1D0     		beq	.L270
 1709 0226 A968     		ldr	r1, [r5, #8]
 1710 0228 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 31


 1711 022a 91F818E0 		ldrb	lr, [r1, #24]	@ zero_extendqisi2
 1712 022e 03F5B070 		add	r0, r3, #352
 1713 0232 04EB8000 		add	r0, r4, r0, lsl #2
 1714 0236 1EF0400F 		tst	lr, #64
 1715 023a 18BF     		it	ne
 1716 023c 90ED017A 		vldrne.32	s14, [r0, #4]
 1717 0240 04EB8301 		add	r1, r4, r3, lsl #2
 1718 0244 18BF     		it	ne
 1719 0246 67EE877A 		vmulne.f32	s15, s15, s14
 1720 024a 91EDE47A 		vldr.32	s14, [r1, #912]
 1721 024e 37EE277A 		vadd.f32	s14, s14, s15
 1722 0252 01F5AC6C 		add	ip, r1, #1376
 1723 0256 81EDE47A 		vstr.32	s14, [r1, #912]
 1724 025a D4F85C13 		ldr	r1, [r4, #860]
 1725 025e 9CED007A 		vldr.32	s14, [ip]
 1726 0262 94F85E01 		ldrb	r0, [r4, #350]	@ zero_extendqisi2
 1727 0266 0B44     		add	r3, r3, r1
 1728 0268 27EE877A 		vmul.f32	s14, s15, s14
 1729 026c 04EB8301 		add	r1, r4, r3, lsl #2
 1730 0270 0028     		cmp	r0, #0
 1731 0272 BDD0     		beq	.L309
 1732 0274 0128     		cmp	r0, #1
 1733 0276 81ED3B7A 		vstr.32	s14, [r1, #236]
 1734 027a C6D1     		bne	.L270
 1735 027c D4F85811 		ldr	r1, [r4, #344]
 1736 0280 00FA03F3 		lsl	r3, r0, r3
 1737 0284 0B43     		orrs	r3, r3, r1
 1738 0286 C4F85831 		str	r3, [r4, #344]
 1739 028a BEE7     		b	.L270
 1740              	.L277:
 1741 028c 6068     		ldr	r0, [r4, #4]
 1742 028e 074A     		ldr	r2, .L310+16
 1743 0290 40F2B511 		movw	r1, #437
 1744 0294 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1745 0298 FFE6     		b	.L286
 1746              	.L311:
 1747 029a 00BF     		.align	2
 1748              	.L310:
 1749 029c 00000000 		.word	reprap
 1750 02a0 00A08C46 		.word	1183621120
 1751 02a4 8988883C 		.word	1015580809
 1752 02a8 3EC32E39 		.word	959365950
 1753 02ac 00000000 		.word	.LC45
 1754              		.size	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer, .-_ZN6GCodes33LoadExtrusionAnd
 1755              		.section	.text._ZN6GCodes20CheckEnoughAxesHomedEm,"ax",%progbits
 1756              		.align	1
 1757              		.p2align 2,,3
 1758              		.global	_ZN6GCodes20CheckEnoughAxesHomedEm
 1759              		.syntax unified
 1760              		.thumb
 1761              		.thumb_func
 1762              		.fpu fpv4-sp-d16
 1763              		.type	_ZN6GCodes20CheckEnoughAxesHomedEm, %function
 1764              	_ZN6GCodes20CheckEnoughAxesHomedEm:
 1765              		@ args = 0, pretend = 0, frame = 0
 1766              		@ frame_needed = 0, uses_anonymous_args = 0
 1767 0000 70B5     		push	{r4, r5, r6, lr}
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 32


 1768 0002 0E4B     		ldr	r3, .L316
 1769 0004 0E4E     		ldr	r6, .L316+4
 1770 0006 DB68     		ldr	r3, [r3, #12]
 1771 0008 90F82525 		ldrb	r2, [r0, #1317]	@ zero_extendqisi2
 1772 000c D3F8745A 		ldr	r5, [r3, #2676]
 1773 0010 2B68     		ldr	r3, [r5]
 1774 0012 9B6D     		ldr	r3, [r3, #88]
 1775 0014 B342     		cmp	r3, r6
 1776 0016 0446     		mov	r4, r0
 1777 0018 0CD1     		bne	.L313
 1778 001a 002A     		cmp	r2, #0
 1779 001c 0846     		mov	r0, r1
 1780 001e 14BF     		ite	ne
 1781 0020 0846     		movne	r0, r1
 1782 0022 0020     		moveq	r0, #0
 1783              	.L314:
 1784 0024 D4F82C35 		ldr	r3, [r4, #1324]
 1785 0028 30EA0303 		bics	r3, r0, r3
 1786 002c 14BF     		ite	ne
 1787 002e 0120     		movne	r0, #1
 1788 0030 0020     		moveq	r0, #0
 1789 0032 70BD     		pop	{r4, r5, r6, pc}
 1790              	.L313:
 1791 0034 2846     		mov	r0, r5
 1792 0036 9847     		blx	r3
 1793 0038 F4E7     		b	.L314
 1794              	.L317:
 1795 003a 00BF     		.align	2
 1796              	.L316:
 1797 003c 00000000 		.word	reprap
 1798 0040 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 1799              		.size	_ZN6GCodes20CheckEnoughAxesHomedEm, .-_ZN6GCodes20CheckEnoughAxesHomedEm
 1800              		.section	.text._ZN6GCodes12FinaliseMoveER11GCodeBuffer,"ax",%progbits
 1801              		.align	1
 1802              		.p2align 2,,3
 1803              		.global	_ZN6GCodes12FinaliseMoveER11GCodeBuffer
 1804              		.syntax unified
 1805              		.thumb
 1806              		.thumb_func
 1807              		.fpu fpv4-sp-d16
 1808              		.type	_ZN6GCodes12FinaliseMoveER11GCodeBuffer, %function
 1809              	_ZN6GCodes12FinaliseMoveER11GCodeBuffer:
 1810              		@ args = 0, pretend = 0, frame = 0
 1811              		@ frame_needed = 0, uses_anonymous_args = 0
 1812 0000 70B5     		push	{r4, r5, r6, lr}
 1813 0002 2DED028B 		vpush.64	{d8}
 1814 0006 D0F85831 		ldr	r3, [r0, #344]
 1815 000a 0446     		mov	r4, r0
 1816 000c 0E46     		mov	r6, r1
 1817 000e 002B     		cmp	r3, #0
 1818 0010 44D1     		bne	.L327
 1819 0012 90F8A821 		ldrb	r2, [r0, #424]	@ zero_extendqisi2
 1820 0016 82F00102 		eor	r2, r2, #1
 1821              	.L319:
 1822 001a 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 1823 001e A16C     		ldr	r1, [r4, #72]
 1824 0020 62F38203 		bfi	r3, r2, #2, #1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 33


 1825 0024 84F85F31 		strb	r3, [r4, #351]
 1826 0028 0B68     		ldr	r3, [r1]
 1827 002a B342     		cmp	r3, r6
 1828 002c 5AD0     		beq	.L331
 1829 002e 4FF0FF30 		mov	r0, #-1
 1830              	.L320:
 1831 0032 D4F86451 		ldr	r5, [r4, #356]
 1832 0036 C4F84801 		str	r0, [r4, #328]
 1833 003a 012D     		cmp	r5, #1
 1834 003c 4CD9     		bls	.L321
 1835 003e 0123     		movs	r3, #1
 1836 0040 84F8A931 		strb	r3, [r4, #425]
 1837 0044 B368     		ldr	r3, [r6, #8]
 1838 0046 0222     		movs	r2, #2
 1839 0048 1A75     		strb	r2, [r3, #20]
 1840 004a D4F85C33 		ldr	r3, [r4, #860]
 1841 004e D4F86451 		ldr	r5, [r4, #356]
 1842 0052 0B2B     		cmp	r3, #11
 1843 0054 10D8     		bhi	.L323
 1844 0056 07EE905A 		vmov	s15, r5	@ int
 1845 005a 3B33     		adds	r3, r3, #59
 1846 005c F8EE676A 		vcvt.f32.u32	s13, s15
 1847 0060 04EB8303 		add	r3, r4, r3, lsl #2
 1848 0064 04F58E72 		add	r2, r4, #284
 1849              	.L324:
 1850 0068 93ED007A 		vldr.32	s14, [r3]
 1851 006c C7EE267A 		vdiv.f32	s15, s14, s13
 1852 0070 E3EC017A 		vstmia.32	r3!, {s15}
 1853 0074 9342     		cmp	r3, r2
 1854 0076 F7D1     		bne	.L324
 1855              	.L323:
 1856 0078 D4ED5C7A 		vldr.32	s15, [r4, #368]
 1857 007c F5EE407A 		vcmp.f32	s15, #0
 1858 0080 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1859 0084 0CD1     		bne	.L332
 1860              	.L325:
 1861 0086 C4F86851 		str	r5, [r4, #360]
 1862 008a C4ED5D7A 		vstr.32	s15, [r4, #372]
 1863              		.syntax unified
 1864              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1865 008e BFF35F8F 		dmb
 1866              	@ 0 "" 2
 1867              		.thumb
 1868              		.syntax unified
 1869 0092 C4F86051 		str	r5, [r4, #352]
 1870 0096 BDEC028B 		vldm	sp!, {d8}
 1871 009a 70BD     		pop	{r4, r5, r6, pc}
 1872              	.L327:
 1873 009c 0022     		movs	r2, #0
 1874 009e BCE7     		b	.L319
 1875              	.L332:
 1876 00a0 07EE105A 		vmov	s14, r5	@ int
 1877 00a4 B8EE478A 		vcvt.f32.u32	s16, s14
 1878 00a8 28EE278A 		vmul.f32	s16, s16, s15
 1879 00ac B0EE480A 		vmov.f32	s0, s16
 1880 00b0 FFF7FEFF 		bl	floorf
 1881 00b4 FCEEC07A 		vcvt.u32.f32	s15, s0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 34


 1882 00b8 17EE903A 		vmov	r3, s15	@ int
 1883 00bc 78EE407A 		vsub.f32	s15, s16, s0
 1884 00c0 EB1A     		subs	r3, r5, r3
 1885 00c2 C4ED5D7A 		vstr.32	s15, [r4, #372]
 1886 00c6 C4F86831 		str	r3, [r4, #360]
 1887              		.syntax unified
 1888              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1889 00ca BFF35F8F 		dmb
 1890              	@ 0 "" 2
 1891              		.thumb
 1892              		.syntax unified
 1893 00ce C4F86051 		str	r5, [r4, #352]
 1894 00d2 BDEC028B 		vldm	sp!, {d8}
 1895 00d6 70BD     		pop	{r4, r5, r6, pc}
 1896              	.L321:
 1897 00d8 0023     		movs	r3, #0
 1898 00da D4ED5C7A 		vldr.32	s15, [r4, #368]
 1899 00de 84F8A931 		strb	r3, [r4, #425]
 1900 00e2 D0E7     		b	.L325
 1901              	.L331:
 1902 00e4 A068     		ldr	r0, [r4, #8]
 1903 00e6 0368     		ldr	r3, [r0]
 1904 00e8 9B68     		ldr	r3, [r3, #8]
 1905 00ea 9847     		blx	r3
 1906 00ec 0146     		mov	r1, r0
 1907 00ee 3046     		mov	r0, r6
 1908 00f0 FFF7FEFF 		bl	_ZNK11GCodeBuffer15GetFilePositionEj
 1909 00f4 9DE7     		b	.L320
 1910              		.size	_ZN6GCodes12FinaliseMoveER11GCodeBuffer, .-_ZN6GCodes12FinaliseMoveER11GCodeBuffer
 1911 00f6 00BF     		.section	.text._ZN6GCodes8ReadMoveERNS_7RawMoveE,"ax",%progbits
 1912              		.align	1
 1913              		.p2align 2,,3
 1914              		.global	_ZN6GCodes8ReadMoveERNS_7RawMoveE
 1915              		.syntax unified
 1916              		.thumb
 1917              		.thumb_func
 1918              		.fpu fpv4-sp-d16
 1919              		.type	_ZN6GCodes8ReadMoveERNS_7RawMoveE, %function
 1920              	_ZN6GCodes8ReadMoveERNS_7RawMoveE:
 1921              		@ args = 0, pretend = 0, frame = 0
 1922              		@ frame_needed = 0, uses_anonymous_args = 0
 1923 0000 D0F86031 		ldr	r3, [r0, #352]
 1924 0004 002B     		cmp	r3, #0
 1925 0006 5ED0     		beq	.L354
 1926 0008 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1927 000c 0F46     		mov	r7, r1
 1928 000e 0446     		mov	r4, r0
 1929 0010 00F1EC05 		add	r5, r0, #236
 1930 0014 2946     		mov	r1, r5
 1931 0016 82B0     		sub	sp, sp, #8
 1932 0018 7422     		movs	r2, #116
 1933 001a 3846     		mov	r0, r7
 1934 001c FFF7FEFF 		bl	memcpy
 1935 0020 D4F86011 		ldr	r1, [r4, #352]
 1936 0024 0129     		cmp	r1, #1
 1937 0026 6FD0     		beq	.L379
 1938 0028 94F8A831 		ldrb	r3, [r4, #424]	@ zero_extendqisi2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 35


 1939 002c 002B     		cmp	r3, #0
 1940 002e 40F09680 		bne	.L380
 1941              	.L339:
 1942 0032 D4F86023 		ldr	r2, [r4, #864]
 1943 0036 002A     		cmp	r2, #0
 1944 0038 49D0     		beq	.L340
 1945 003a B846     		mov	r8, r7
 1946 003c 0026     		movs	r6, #0
 1947 003e FBB1     		cbz	r3, .L341
 1948              	.L382:
 1949 0040 022E     		cmp	r6, #2
 1950 0042 1DD0     		beq	.L341
 1951 0044 D4F85431 		ldr	r3, [r4, #340]
 1952 0048 F340     		lsrs	r3, r3, r6
 1953 004a DA07     		lsls	r2, r3, #31
 1954 004c 29D5     		bpl	.L342
 1955 004e 94ED680A 		vldr.32	s0, [r4, #416]
 1956 0052 FFF7FEFF 		bl	sinf
 1957 0056 94ED677A 		vldr.32	s14, [r4, #412]
 1958 005a D5ED237A 		vldr.32	s15, [r5, #140]
 1959 005e E7EE007A 		vfma.f32	s15, s14, s0
 1960 0062 C5ED0C7A 		vstr.32	s15, [r5, #48]
 1961              	.L343:
 1962 0066 E8EC017A 		vstmia.32	r8!, {s15}
 1963 006a D4F86023 		ldr	r2, [r4, #864]
 1964 006e 0136     		adds	r6, r6, #1
 1965 0070 B242     		cmp	r2, r6
 1966 0072 05F10405 		add	r5, r5, #4
 1967 0076 28D9     		bls	.L381
 1968 0078 94F8A831 		ldrb	r3, [r4, #424]	@ zero_extendqisi2
 1969 007c 002B     		cmp	r3, #0
 1970 007e DFD1     		bne	.L382
 1971              	.L341:
 1972 0080 95ED0C6A 		vldr.32	s12, [r5, #48]
 1973 0084 D4ED587A 		vldr.32	s15, [r4, #352]	@ int
 1974 0088 D5ED006A 		vldr.32	s13, [r5]
 1975 008c B8EE677A 		vcvt.f32.u32	s14, s15
 1976 0090 76EEC66A 		vsub.f32	s13, s13, s12
 1977 0094 C6EE877A 		vdiv.f32	s15, s13, s14
 1978 0098 77EE867A 		vadd.f32	s15, s15, s12
 1979 009c C5ED0C7A 		vstr.32	s15, [r5, #48]
 1980 00a0 E1E7     		b	.L343
 1981              	.L342:
 1982 00a2 D4F85031 		ldr	r3, [r4, #336]
 1983 00a6 F340     		lsrs	r3, r3, r6
 1984 00a8 DB07     		lsls	r3, r3, #31
 1985 00aa E9D5     		bpl	.L341
 1986 00ac 94ED680A 		vldr.32	s0, [r4, #416]
 1987 00b0 FFF7FEFF 		bl	cosf
 1988 00b4 94ED677A 		vldr.32	s14, [r4, #412]
 1989 00b8 D5ED237A 		vldr.32	s15, [r5, #140]
 1990 00bc E7EE007A 		vfma.f32	s15, s14, s0
 1991 00c0 C5ED0C7A 		vstr.32	s15, [r5, #48]
 1992 00c4 CFE7     		b	.L343
 1993              	.L354:
 1994 00c6 1846     		mov	r0, r3
 1995 00c8 7047     		bx	lr
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 36


 1996              	.L381:
 1997 00ca D4F86011 		ldr	r1, [r4, #352]
 1998              	.L340:
 1999 00ce D4F86831 		ldr	r3, [r4, #360]
 2000 00d2 8B42     		cmp	r3, r1
 2001 00d4 4CD3     		bcc	.L383
 2002 00d6 94F82405 		ldrb	r0, [r4, #1316]	@ zero_extendqisi2
 2003 00da 0028     		cmp	r0, #0
 2004 00dc 4FD1     		bne	.L384
 2005              	.L348:
 2006 00de 8B42     		cmp	r3, r1
 2007 00e0 7FD0     		beq	.L385
 2008              	.L351:
 2009 00e2 0139     		subs	r1, r1, #1
 2010 00e4 07EE901A 		vmov	s15, r1	@ int
 2011 00e8 F8EE676A 		vcvt.f32.u32	s13, s15
 2012 00ec D4ED597A 		vldr.32	s15, [r4, #356]	@ int
 2013 00f0 C4F86011 		str	r1, [r4, #352]
 2014 00f4 F8EE677A 		vcvt.f32.u32	s15, s15
 2015 00f8 0120     		movs	r0, #1
 2016 00fa 86EEA77A 		vdiv.f32	s14, s13, s15
 2017 00fe 87ED187A 		vstr.32	s14, [r7, #96]
 2018              	.L334:
 2019 0102 02B0     		add	sp, sp, #8
 2020              		@ sp needed
 2021 0104 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2022              	.L379:
 2023 0108 D4F86831 		ldr	r3, [r4, #360]
 2024 010c 012B     		cmp	r3, #1
 2025 010e 49D0     		beq	.L386
 2026              	.L336:
 2027 0110 0023     		movs	r3, #0
 2028 0112 3B66     		str	r3, [r7, #96]	@ float
 2029 0114 94F8A831 		ldrb	r3, [r4, #424]	@ zero_extendqisi2
 2030 0118 2BB1     		cbz	r3, .L338
 2031 011a 97F87330 		ldrb	r3, [r7, #115]	@ zero_extendqisi2
 2032 011e 43F00403 		orr	r3, r3, #4
 2033 0122 87F87330 		strb	r3, [r7, #115]
 2034              	.L338:
 2035 0126 FFF7FEFF 		bl	vTaskSuspendAll
 2036 012a 94F85F21 		ldrb	r2, [r4, #351]	@ zero_extendqisi2
 2037 012e 0023     		movs	r3, #0
 2038 0130 0021     		movs	r1, #0
 2039 0132 63F30002 		bfi	r2, r3, #0, #1
 2040 0136 84F85F21 		strb	r2, [r4, #351]
 2041 013a C4F86031 		str	r3, [r4, #352]
 2042 013e 84F8A931 		strb	r3, [r4, #425]
 2043 0142 84F8A831 		strb	r3, [r4, #424]
 2044 0146 C4F85831 		str	r3, [r4, #344]
 2045 014a 84F85E31 		strb	r3, [r4, #350]
 2046 014e C4F87011 		str	r1, [r4, #368]	@ float
 2047 0152 FFF7FEFF 		bl	xTaskResumeAll
 2048 0156 0120     		movs	r0, #1
 2049 0158 02B0     		add	sp, sp, #8
 2050              		@ sp needed
 2051 015a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2052              	.L380:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 37


 2053 015e D4ED687A 		vldr.32	s15, [r4, #416]
 2054 0162 94ED697A 		vldr.32	s14, [r4, #420]
 2055 0166 77EE877A 		vadd.f32	s15, s15, s14
 2056 016a C4ED687A 		vstr.32	s15, [r4, #416]
 2057 016e 60E7     		b	.L339
 2058              	.L383:
 2059 0170 0139     		subs	r1, r1, #1
 2060 0172 0020     		movs	r0, #0
 2061 0174 C4F86011 		str	r1, [r4, #352]
 2062 0178 02B0     		add	sp, sp, #8
 2063              		@ sp needed
 2064 017a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2065              	.L384:
 2066 017e 2F49     		ldr	r1, .L388
 2067 0180 D4F82C35 		ldr	r3, [r4, #1324]
 2068 0184 C968     		ldr	r1, [r1, #12]
 2069 0186 D1F8740A 		ldr	r0, [r1, #2676]
 2070 018a 0125     		movs	r5, #1
 2071 018c 0168     		ldr	r1, [r0]
 2072 018e 0095     		str	r5, [sp]
 2073 0190 8D6A     		ldr	r5, [r1, #40]
 2074 0192 3946     		mov	r1, r7
 2075 0194 A847     		blx	r5
 2076 0196 0028     		cmp	r0, #0
 2077 0198 46D1     		bne	.L349
 2078 019a D4F86831 		ldr	r3, [r4, #360]
 2079 019e D4F86011 		ldr	r1, [r4, #352]
 2080 01a2 9CE7     		b	.L348
 2081              	.L386:
 2082 01a4 D4ED5D7A 		vldr.32	s15, [r4, #372]
 2083 01a8 F5EE407A 		vcmp.f32	s15, #0
 2084 01ac F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2085 01b0 AED0     		beq	.L336
 2086 01b2 D4F85C33 		ldr	r3, [r4, #860]
 2087 01b6 0B2B     		cmp	r3, #11
 2088 01b8 AAD8     		bhi	.L336
 2089 01ba 07EB8303 		add	r3, r7, r3, lsl #2
 2090 01be 07F13002 		add	r2, r7, #48
 2091 01c2 F7EE006A 		vmov.f32	s13, #1.0e+0
 2092 01c6 01E0     		b	.L337
 2093              	.L387:
 2094 01c8 D4ED5D7A 		vldr.32	s15, [r4, #372]
 2095              	.L337:
 2096 01cc 93ED007A 		vldr.32	s14, [r3]
 2097 01d0 76EEE77A 		vsub.f32	s15, s13, s15
 2098 01d4 67EE877A 		vmul.f32	s15, s15, s14
 2099 01d8 E3EC017A 		vstmia.32	r3!, {s15}
 2100 01dc 9A42     		cmp	r2, r3
 2101 01de F3D1     		bne	.L387
 2102 01e0 96E7     		b	.L336
 2103              	.L385:
 2104 01e2 D4ED5D7A 		vldr.32	s15, [r4, #372]
 2105 01e6 F5EE407A 		vcmp.f32	s15, #0
 2106 01ea F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2107 01ee 3FF478AF 		beq	.L351
 2108 01f2 D4F85C33 		ldr	r3, [r4, #860]
 2109 01f6 0B2B     		cmp	r3, #11
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 38


 2110 01f8 3FF673AF 		bhi	.L351
 2111 01fc 07EB8303 		add	r3, r7, r3, lsl #2
 2112 0200 07F13002 		add	r2, r7, #48
 2113 0204 F7EE006A 		vmov.f32	s13, #1.0e+0
 2114 0208 01E0     		b	.L353
 2115              	.L352:
 2116 020a D4ED5D7A 		vldr.32	s15, [r4, #372]
 2117              	.L353:
 2118 020e 93ED007A 		vldr.32	s14, [r3]
 2119 0212 76EEE77A 		vsub.f32	s15, s13, s15
 2120 0216 67EE877A 		vmul.f32	s15, s15, s14
 2121 021a E3EC017A 		vstmia.32	r3!, {s15}
 2122 021e 9A42     		cmp	r2, r3
 2123 0220 F3D1     		bne	.L352
 2124 0222 D4F86011 		ldr	r1, [r4, #352]
 2125 0226 5CE7     		b	.L351
 2126              	.L349:
 2127 0228 0020     		movs	r0, #0
 2128 022a 0223     		movs	r3, #2
 2129 022c 84F8A931 		strb	r3, [r4, #425]
 2130 0230 84F8A801 		strb	r0, [r4, #424]
 2131 0234 C4F86001 		str	r0, [r4, #352]
 2132 0238 63E7     		b	.L334
 2133              	.L389:
 2134 023a 00BF     		.align	2
 2135              	.L388:
 2136 023c 00000000 		.word	reprap
 2137              		.size	_ZN6GCodes8ReadMoveERNS_7RawMoveE, .-_ZN6GCodes8ReadMoveERNS_7RawMoveE
 2138              		.section	.text._ZN6GCodes9ClearMoveEv,"ax",%progbits
 2139              		.align	1
 2140              		.p2align 2,,3
 2141              		.global	_ZN6GCodes9ClearMoveEv
 2142              		.syntax unified
 2143              		.thumb
 2144              		.thumb_func
 2145              		.fpu fpv4-sp-d16
 2146              		.type	_ZN6GCodes9ClearMoveEv, %function
 2147              	_ZN6GCodes9ClearMoveEv:
 2148              		@ args = 0, pretend = 0, frame = 0
 2149              		@ frame_needed = 0, uses_anonymous_args = 0
 2150 0000 10B5     		push	{r4, lr}
 2151 0002 0446     		mov	r4, r0
 2152 0004 FFF7FEFF 		bl	vTaskSuspendAll
 2153 0008 94F85F21 		ldrb	r2, [r4, #351]	@ zero_extendqisi2
 2154 000c 0023     		movs	r3, #0
 2155 000e 0021     		movs	r1, #0
 2156 0010 63F30002 		bfi	r2, r3, #0, #1
 2157 0014 84F85F21 		strb	r2, [r4, #351]
 2158 0018 C4F86031 		str	r3, [r4, #352]
 2159 001c 84F8A931 		strb	r3, [r4, #425]
 2160 0020 84F8A831 		strb	r3, [r4, #424]
 2161 0024 C4F85831 		str	r3, [r4, #344]
 2162 0028 84F85E31 		strb	r3, [r4, #350]
 2163 002c C4F87011 		str	r1, [r4, #368]	@ float
 2164 0030 BDE81040 		pop	{r4, lr}
 2165 0034 FFF7FEBF 		b	xTaskResumeAll
 2166              		.size	_ZN6GCodes9ClearMoveEv, .-_ZN6GCodes9ClearMoveEv
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 39


 2167              		.section	.text._ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi,"ax",%progbits
 2168              		.align	1
 2169              		.p2align 2,,3
 2170              		.global	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2171              		.syntax unified
 2172              		.thumb
 2173              		.thumb_func
 2174              		.fpu fpv4-sp-d16
 2175              		.type	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi, %function
 2176              	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi:
 2177              		@ args = 4, pretend = 0, frame = 0
 2178              		@ frame_needed = 0, uses_anonymous_args = 0
 2179 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2180 0004 0646     		mov	r6, r0
 2181 0006 4068     		ldr	r0, [r0, #4]
 2182 0008 0D46     		mov	r5, r1
 2183 000a 1C46     		mov	r4, r3
 2184 000c 2C49     		ldr	r1, .L408
 2185 000e D0F8DC0B 		ldr	r0, [r0, #3036]
 2186 0012 0023     		movs	r3, #0
 2187 0014 9046     		mov	r8, r2
 2188 0016 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2189 001a 0028     		cmp	r0, #0
 2190 001c 3BD0     		beq	.L405
 2191 001e 0746     		mov	r7, r0
 2192 0020 2846     		mov	r0, r5
 2193 0022 FFF7FEFF 		bl	_ZN11GCodeBuffer9PushStateEv
 2194 0026 0028     		cmp	r0, #0
 2195 0028 39D0     		beq	.L406
 2196 002a AC68     		ldr	r4, [r5, #8]
 2197 002c A068     		ldr	r0, [r4, #8]
 2198 002e 08B1     		cbz	r0, .L398
 2199 0030 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2200              	.L398:
 2201 0034 A760     		str	r7, [r4, #8]
 2202 0036 A968     		ldr	r1, [r5, #8]
 2203 0038 B068     		ldr	r0, [r6, #8]
 2204 003a 0831     		adds	r1, r1, #8
 2205 003c FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 2206 0040 AA68     		ldr	r2, [r5, #8]
 2207 0042 0698     		ldr	r0, [sp, #24]
 2208 0044 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 2209 0046 43F00403 		orr	r3, r3, #4
 2210 004a 1376     		strb	r3, [r2, #24]
 2211 004c AA68     		ldr	r2, [r5, #8]
 2212 004e 40F2F513 		movw	r3, #501
 2213 0052 C31A     		subs	r3, r0, r3
 2214 0054 117E     		ldrb	r1, [r2, #24]	@ zero_extendqisi2
 2215 0056 B3FA83F3 		clz	r3, r3
 2216 005a 5B09     		lsrs	r3, r3, #5
 2217 005c 63F30411 		bfi	r1, r3, #4, #1
 2218 0060 1176     		strb	r1, [r2, #24]
 2219 0062 AB68     		ldr	r3, [r5, #8]
 2220 0064 A0F5FB71 		sub	r1, r0, #502
 2221 0068 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 2222 006a B1FA81F1 		clz	r1, r1
 2223 006e 4909     		lsrs	r1, r1, #5
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 40


 2224 0070 61F34512 		bfi	r2, r1, #5, #1
 2225 0074 6228     		cmp	r0, #98
 2226 0076 1A76     		strb	r2, [r3, #24]
 2227 0078 04D0     		beq	.L396
 2228 007a AA68     		ldr	r2, [r5, #8]
 2229 007c 537E     		ldrb	r3, [r2, #25]	@ zero_extendqisi2
 2230 007e 43F00103 		orr	r3, r3, #1
 2231 0082 5376     		strb	r3, [r2, #25]
 2232              	.L396:
 2233 0084 AB68     		ldr	r3, [r5, #8]
 2234 0086 0022     		movs	r2, #0
 2235 0088 2846     		mov	r0, r5
 2236 008a 1A75     		strb	r2, [r3, #20]
 2237 008c FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 2238 0090 0120     		movs	r0, #1
 2239 0092 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2240              	.L405:
 2241 0096 44B9     		cbnz	r4, .L407
 2242 0098 2046     		mov	r0, r4
 2243 009a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2244              	.L406:
 2245 009e 3046     		mov	r0, r6
 2246 00a0 FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer.part.55
 2247 00a4 0120     		movs	r0, #1
 2248 00a6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2249              	.L407:
 2250 00aa 7068     		ldr	r0, [r6, #4]
 2251 00ac 054A     		ldr	r2, .L408+4
 2252 00ae 4346     		mov	r3, r8
 2253 00b0 40F2B521 		movw	r1, #693
 2254 00b4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2255 00b8 2046     		mov	r0, r4
 2256 00ba BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2257              	.L409:
 2258 00be 00BF     		.align	2
 2259              	.L408:
 2260 00c0 34000000 		.word	.LC16
 2261 00c4 00000000 		.word	.LC46
 2262              		.size	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi, .-_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2263              		.section	.text._ZN6GCodes13RunConfigFileEPKc,"ax",%progbits
 2264              		.align	1
 2265              		.p2align 2,,3
 2266              		.global	_ZN6GCodes13RunConfigFileEPKc
 2267              		.syntax unified
 2268              		.thumb
 2269              		.thumb_func
 2270              		.fpu fpv4-sp-d16
 2271              		.type	_ZN6GCodes13RunConfigFileEPKc, %function
 2272              	_ZN6GCodes13RunConfigFileEPKc:
 2273              		@ args = 0, pretend = 0, frame = 0
 2274              		@ frame_needed = 0, uses_anonymous_args = 0
 2275 0000 30B5     		push	{r4, r5, lr}
 2276 0002 426D     		ldr	r2, [r0, #84]
 2277 0004 83B0     		sub	sp, sp, #12
 2278 0006 1568     		ldr	r5, [r2]
 2279 0008 0023     		movs	r3, #0
 2280 000a 0A46     		mov	r2, r1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 41


 2281 000c 0093     		str	r3, [sp]
 2282 000e 2946     		mov	r1, r5
 2283 0010 0446     		mov	r4, r0
 2284 0012 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2285 0016 84F8B900 		strb	r0, [r4, #185]
 2286 001a 03B0     		add	sp, sp, #12
 2287              		@ sp needed
 2288 001c 30BD     		pop	{r4, r5, pc}
 2289              		.size	_ZN6GCodes13RunConfigFileEPKc, .-_ZN6GCodes13RunConfigFileEPKc
 2290 001e 00BF     		.section	.text._ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer,"ax",%progbits
 2291              		.align	1
 2292              		.p2align 2,,3
 2293              		.global	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer
 2294              		.syntax unified
 2295              		.thumb
 2296              		.thumb_func
 2297              		.fpu fpv4-sp-d16
 2298              		.type	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer, %function
 2299              	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer:
 2300              		@ args = 0, pretend = 0, frame = 0
 2301              		@ frame_needed = 0, uses_anonymous_args = 0
 2302 0000 70B5     		push	{r4, r5, r6, lr}
 2303 0002 0546     		mov	r5, r0
 2304 0004 0846     		mov	r0, r1
 2305 0006 0C46     		mov	r4, r1
 2306 0008 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 2307 000c 00B9     		cbnz	r0, .L419
 2308 000e 70BD     		pop	{r4, r5, r6, pc}
 2309              	.L419:
 2310 0010 A668     		ldr	r6, [r4, #8]
 2311 0012 A868     		ldr	r0, [r5, #8]
 2312 0014 06F10801 		add	r1, r6, #8
 2313 0018 FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 2314 001c B068     		ldr	r0, [r6, #8]
 2315 001e 18B1     		cbz	r0, .L414
 2316 0020 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2317 0024 0023     		movs	r3, #0
 2318 0026 B360     		str	r3, [r6, #8]
 2319              	.L414:
 2320 0028 2046     		mov	r0, r4
 2321 002a FFF7FEFF 		bl	_ZN11GCodeBuffer8PopStateEv
 2322 002e 2046     		mov	r0, r4
 2323 0030 BDE87040 		pop	{r4, r5, r6, lr}
 2324 0034 FFF7FEBF 		b	_ZN11GCodeBuffer4InitEv
 2325              		.size	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer, .-_ZN6GCodes21FileMacroCyclesReturnER11GCo
 2326              		.section	.text._ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef,"ax",%progbits
 2327              		.align	1
 2328              		.p2align 2,,3
 2329              		.global	_ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef
 2330              		.syntax unified
 2331              		.thumb
 2332              		.thumb_func
 2333              		.fpu fpv4-sp-d16
 2334              		.type	_ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef, %function
 2335              	_ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef:
 2336              		@ args = 0, pretend = 0, frame = 8
 2337              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 42


 2338 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2339 0002 2DED048B 		vpush.64	{d8, d9}
 2340 0006 0D46     		mov	r5, r1
 2341 0008 85B0     		sub	sp, sp, #20
 2342 000a 0446     		mov	r4, r0
 2343 000c 5321     		movs	r1, #83
 2344 000e 2846     		mov	r0, r5
 2345 0010 1646     		mov	r6, r2
 2346 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2347 0016 0028     		cmp	r0, #0
 2348 0018 7ED1     		bne	.L421
 2349 001a 6FF00203 		mvn	r3, #2
 2350 001e C4F8E435 		str	r3, [r4, #1508]
 2351              	.L422:
 2352 0022 4821     		movs	r1, #72
 2353 0024 2846     		mov	r0, r5
 2354 0026 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2355 002a 0028     		cmp	r0, #0
 2356 002c 40F08880 		bne	.L454
 2357 0030 9FED5D0A 		vldr.32	s0, .L460
 2358              	.L424:
 2359 0034 04AB     		add	r3, sp, #16
 2360 0036 0022     		movs	r2, #0
 2361 0038 03F8012D 		strb	r2, [r3, #-1]!
 2362 003c 4FF0FF31 		mov	r1, #-1
 2363 0040 04F5BD62 		add	r2, r4, #1512
 2364 0044 82ED000A 		vstr.32	s0, [r2]
 2365 0048 2846     		mov	r0, r5
 2366 004a C4F8E015 		str	r1, [r4, #1504]
 2367 004e 04F5BC62 		add	r2, r4, #1504
 2368 0052 5021     		movs	r1, #80
 2369 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 2370 0058 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 2371 005c 002B     		cmp	r3, #0
 2372 005e 3BD0     		beq	.L425
 2373 0060 D4F8E035 		ldr	r3, [r4, #1504]
 2374 0064 1F2B     		cmp	r3, #31
 2375 0066 6FD8     		bhi	.L455
 2376 0068 94F81015 		ldrb	r1, [r4, #1296]	@ zero_extendqisi2
 2377 006c 2846     		mov	r0, r5
 2378 006e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2379 0072 0028     		cmp	r0, #0
 2380 0074 40F09280 		bne	.L456
 2381 0078 D4ED308A 		vldr.32	s17, [r4, #192]
 2382              	.L428:
 2383 007c 94F81115 		ldrb	r1, [r4, #1297]	@ zero_extendqisi2
 2384 0080 2846     		mov	r0, r5
 2385 0082 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2386 0086 0028     		cmp	r0, #0
 2387 0088 40F08280 		bne	.L457
 2388 008c 94ED319A 		vldr.32	s18, [r4, #196]
 2389              	.L430:
 2390 0090 94F81215 		ldrb	r1, [r4, #1298]	@ zero_extendqisi2
 2391 0094 2846     		mov	r0, r5
 2392 0096 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2393 009a 0028     		cmp	r0, #0
 2394 009c 72D1     		bne	.L458
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 43


 2395 009e 94ED328A 		vldr.32	s16, [r4, #200]
 2396              	.L432:
 2397 00a2 424F     		ldr	r7, .L460+4
 2398 00a4 D4F8E015 		ldr	r1, [r4, #1504]
 2399 00a8 F868     		ldr	r0, [r7, #12]
 2400 00aa F0EE490A 		vmov.f32	s1, s18
 2401 00ae B0EE680A 		vmov.f32	s0, s17
 2402 00b2 FFF7FEFF 		bl	_ZN4Move18SetXYBedProbePointEjff
 2403 00b6 DFED3E7A 		vldr.32	s15, .L460+8
 2404 00ba B4EEE78A 		vcmpe.f32	s16, s15
 2405 00be F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2406 00c2 4ADC     		bgt	.L459
 2407 00c4 AB68     		ldr	r3, [r5, #8]
 2408 00c6 2322     		movs	r2, #35
 2409 00c8 1A75     		strb	r2, [r3, #20]
 2410 00ca 6368     		ldr	r3, [r4, #4]
 2411 00cc 93F8CC30 		ldrb	r3, [r3, #204]	@ zero_extendqisi2
 2412 00d0 EBB1     		cbz	r3, .L453
 2413 00d2 092B     		cmp	r3, #9
 2414 00d4 11D1     		bne	.L452
 2415 00d6 1AE0     		b	.L453
 2416              	.L425:
 2417 00d8 84F81336 		strb	r3, [r4, #1555]
 2418 00dc 04F5BF62 		add	r2, r4, #1528
 2419 00e0 04F2FC53 		addw	r3, r4, #1532
 2420 00e4 0020     		movs	r0, #0
 2421 00e6 3349     		ldr	r1, .L460+12
 2422 00e8 1060     		str	r0, [r2]	@ float
 2423 00ea 1960     		str	r1, [r3]	@ float
 2424 00ec AB68     		ldr	r3, [r5, #8]
 2425 00ee 2522     		movs	r2, #37
 2426 00f0 1A75     		strb	r2, [r3, #20]
 2427 00f2 6368     		ldr	r3, [r4, #4]
 2428 00f4 93F8CC30 		ldrb	r3, [r3, #204]	@ zero_extendqisi2
 2429 00f8 4BB1     		cbz	r3, .L453
 2430              	.L452:
 2431 00fa 94F81136 		ldrb	r3, [r4, #1553]	@ zero_extendqisi2
 2432 00fe 33B9     		cbnz	r3, .L453
 2433 0100 0023     		movs	r3, #0
 2434 0102 2946     		mov	r1, r5
 2435 0104 2046     		mov	r0, r4
 2436 0106 0093     		str	r3, [sp]
 2437 0108 2B4A     		ldr	r2, .L460+16
 2438 010a FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2439              	.L453:
 2440 010e 0120     		movs	r0, #1
 2441              	.L423:
 2442 0110 05B0     		add	sp, sp, #20
 2443              		@ sp needed
 2444 0112 BDEC048B 		vldm	sp!, {d8-d9}
 2445 0116 F0BD     		pop	{r4, r5, r6, r7, pc}
 2446              	.L421:
 2447 0118 2846     		mov	r0, r5
 2448 011a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2449 011e C4F8E405 		str	r0, [r4, #1508]
 2450 0122 0230     		adds	r0, r0, #2
 2451 0124 7FF47DAF 		bne	.L422
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 44


 2452 0128 204B     		ldr	r3, .L460+4
 2453 012a D3F8EC30 		ldr	r3, [r3, #236]
 2454 012e 002B     		cmp	r3, #0
 2455 0130 7FF477AF 		bne	.L422
 2456 0134 3046     		mov	r0, r6
 2457 0136 2149     		ldr	r1, .L460+20
 2458 0138 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2459 013c 0220     		movs	r0, #2
 2460 013e E7E7     		b	.L423
 2461              	.L454:
 2462 0140 2846     		mov	r0, r5
 2463 0142 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2464 0146 75E7     		b	.L424
 2465              	.L455:
 2466 0148 3046     		mov	r0, r6
 2467 014a 1D49     		ldr	r1, .L460+24
 2468 014c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2469 0150 0220     		movs	r0, #2
 2470 0152 05B0     		add	sp, sp, #20
 2471              		@ sp needed
 2472 0154 BDEC048B 		vldm	sp!, {d8-d9}
 2473 0158 F0BD     		pop	{r4, r5, r6, r7, pc}
 2474              	.L459:
 2475 015a 0023     		movs	r3, #0
 2476 015c 1A46     		mov	r2, r3
 2477 015e D4F8E015 		ldr	r1, [r4, #1504]
 2478 0162 F868     		ldr	r0, [r7, #12]
 2479 0164 B0EE480A 		vmov.f32	s0, s16
 2480 0168 FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 2481 016c D4F8E415 		ldr	r1, [r4, #1508]
 2482 0170 4B1C     		adds	r3, r1, #1
 2483 0172 CCDB     		blt	.L453
 2484 0174 3246     		mov	r2, r6
 2485 0176 F868     		ldr	r0, [r7, #12]
 2486 0178 FFF7FEFF 		bl	_ZN4Move18FinishedBedProbingEiRK9StringRef
 2487 017c 0028     		cmp	r0, #0
 2488 017e C6D0     		beq	.L453
 2489 0180 0220     		movs	r0, #2
 2490 0182 C5E7     		b	.L423
 2491              	.L458:
 2492 0184 2846     		mov	r0, r5
 2493 0186 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2494 018a B0EE408A 		vmov.f32	s16, s0
 2495 018e 88E7     		b	.L432
 2496              	.L457:
 2497 0190 2846     		mov	r0, r5
 2498 0192 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2499 0196 B0EE409A 		vmov.f32	s18, s0
 2500 019a 79E7     		b	.L430
 2501              	.L456:
 2502 019c 2846     		mov	r0, r5
 2503 019e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2504 01a2 F0EE408A 		vmov.f32	s17, s0
 2505 01a6 69E7     		b	.L428
 2506              	.L461:
 2507              		.align	2
 2508              	.L460:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 45


 2509 01a8 00000000 		.word	0
 2510 01ac 00000000 		.word	reprap
 2511 01b0 003C1CC6 		.word	-971228160
 2512 01b4 00007A44 		.word	1148846080
 2513 01b8 4C000000 		.word	.LC49
 2514 01bc 00000000 		.word	.LC47
 2515 01c0 28000000 		.word	.LC48
 2516              		.size	_ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef, .-_ZN6GCodes10ExecuteG30ER11GCodeBufferRK
 2517              		.section	.text._ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer,"ax",%progbits
 2518              		.align	1
 2519              		.p2align 2,,3
 2520              		.global	_ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer
 2521              		.syntax unified
 2522              		.thumb
 2523              		.thumb_func
 2524              		.fpu fpv4-sp-d16
 2525              		.type	_ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer, %function
 2526              	_ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer:
 2527              		@ args = 0, pretend = 0, frame = 0
 2528              		@ frame_needed = 0, uses_anonymous_args = 0
 2529              		@ link register save eliminated.
 2530 0000 8B8F     		ldrh	r3, [r1, #60]
 2531 0002 352B     		cmp	r3, #53
 2532 0004 05D1     		bne	.L463
 2533 0006 90F94437 		ldrsb	r3, [r0, #1860]
 2534 000a 002B     		cmp	r3, #0
 2535 000c ACBF     		ite	ge
 2536 000e 0423     		movge	r3, #4
 2537 0010 1023     		movlt	r3, #16
 2538              	.L463:
 2539 0012 1846     		mov	r0, r3
 2540 0014 7047     		bx	lr
 2541              		.size	_ZNK6GCodes19GetMessageBoxDeviceER11GCodeBuffer, .-_ZNK6GCodes19GetMessageBoxDeviceER11GCode
 2542 0016 00BF     		.section	.text._ZN6GCodes13DoManualProbeER11GCodeBuffer,"ax",%progbits
 2543              		.align	1
 2544              		.p2align 2,,3
 2545              		.global	_ZN6GCodes13DoManualProbeER11GCodeBuffer
 2546              		.syntax unified
 2547              		.thumb
 2548              		.thumb_func
 2549              		.fpu fpv4-sp-d16
 2550              		.type	_ZN6GCodes13DoManualProbeER11GCodeBuffer, %function
 2551              	_ZN6GCodes13DoManualProbeER11GCodeBuffer:
 2552              		@ args = 0, pretend = 0, frame = 0
 2553              		@ frame_needed = 0, uses_anonymous_args = 0
 2554 0000 70B5     		push	{r4, r5, r6, lr}
 2555 0002 0646     		mov	r6, r0
 2556 0004 82B0     		sub	sp, sp, #8
 2557 0006 0846     		mov	r0, r1
 2558 0008 0C46     		mov	r4, r1
 2559 000a FFF7FEFF 		bl	_ZN11GCodeBuffer9PushStateEv
 2560 000e D8B1     		cbz	r0, .L473
 2561 0010 A568     		ldr	r5, [r4, #8]
 2562 0012 A868     		ldr	r0, [r5, #8]
 2563 0014 20B1     		cbz	r0, .L469
 2564 0016 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2565 001a 0023     		movs	r3, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 46


 2566 001c AB60     		str	r3, [r5, #8]
 2567 001e A568     		ldr	r5, [r4, #8]
 2568              	.L469:
 2569 0020 6B7E     		ldrb	r3, [r5, #25]	@ zero_extendqisi2
 2570 0022 43F00203 		orr	r3, r3, #2
 2571 0026 6B76     		strb	r3, [r5, #25]
 2572 0028 A18F     		ldrh	r1, [r4, #60]
 2573 002a 3529     		cmp	r1, #53
 2574 002c 12D0     		beq	.L474
 2575              	.L467:
 2576 002e 0224     		movs	r4, #2
 2577 0030 0425     		movs	r5, #4
 2578 0032 7068     		ldr	r0, [r6, #4]
 2579 0034 9FED0B0A 		vldr.32	s0, .L475
 2580 0038 0B4B     		ldr	r3, .L475+4
 2581 003a 0C4A     		ldr	r2, .L475+8
 2582 003c CDE90045 		strd	r4, r5, [sp]
 2583 0040 FFF7FEFF 		bl	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm
 2584 0044 02B0     		add	sp, sp, #8
 2585              		@ sp needed
 2586 0046 70BD     		pop	{r4, r5, r6, pc}
 2587              	.L473:
 2588 0048 3046     		mov	r0, r6
 2589 004a 02B0     		add	sp, sp, #8
 2590              		@ sp needed
 2591 004c BDE87040 		pop	{r4, r5, r6, lr}
 2592 0050 FFF7FEBF 		b	_ZN6GCodes4PushER11GCodeBuffer.part.55
 2593              	.L474:
 2594 0054 96F94437 		ldrsb	r3, [r6, #1860]
 2595 0058 002B     		cmp	r3, #0
 2596 005a B4BF     		ite	lt
 2597 005c 1021     		movlt	r1, #16
 2598 005e 0421     		movge	r1, #4
 2599 0060 E5E7     		b	.L467
 2600              	.L476:
 2601 0062 00BF     		.align	2
 2602              	.L475:
 2603 0064 00000000 		.word	0
 2604 0068 00000000 		.word	.LC50
 2605 006c 14000000 		.word	.LC51
 2606              		.size	_ZN6GCodes13DoManualProbeER11GCodeBuffer, .-_ZN6GCodes13DoManualProbeER11GCodeBuffer
 2607              		.section	.text._ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef,"ax",%progbits
 2608              		.align	1
 2609              		.p2align 2,,3
 2610              		.global	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef
 2611              		.syntax unified
 2612              		.thumb
 2613              		.thumb_func
 2614              		.fpu fpv4-sp-d16
 2615              		.type	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef, %function
 2616              	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef:
 2617              		@ args = 0, pretend = 0, frame = 136
 2618              		@ frame_needed = 0, uses_anonymous_args = 0
 2619 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2620 0002 A3B0     		sub	sp, sp, #140
 2621 0004 0024     		movs	r4, #0
 2622 0006 0DF10303 		add	r3, sp, #3
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 47


 2623 000a 8DF80C40 		strb	r4, [sp, #12]
 2624 000e 8DF80340 		strb	r4, [sp, #3]
 2625 0012 0646     		mov	r6, r0
 2626 0014 1746     		mov	r7, r2
 2627 0016 0846     		mov	r0, r1
 2628 0018 01AA     		add	r2, sp, #4
 2629 001a 7925     		movs	r5, #121
 2630 001c 5021     		movs	r1, #80
 2631 001e 03AC     		add	r4, sp, #12
 2632 0020 CDE90145 		strd	r4, r5, [sp, #4]
 2633 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 2634 0028 9DF80330 		ldrb	r3, [sp, #3]	@ zero_extendqisi2
 2635 002c 5BB3     		cbz	r3, .L483
 2636              	.L478:
 2637 002e 7368     		ldr	r3, [r6, #4]
 2638 0030 1D49     		ldr	r1, .L486
 2639 0032 D3F8DC0B 		ldr	r0, [r3, #3036]
 2640 0036 03AA     		add	r2, sp, #12
 2641 0038 0123     		movs	r3, #1
 2642 003a FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2643 003e 0446     		mov	r4, r0
 2644 0040 48B3     		cbz	r0, .L484
 2645 0042 1A4B     		ldr	r3, .L486+4
 2646 0044 0146     		mov	r1, r0
 2647 0046 D868     		ldr	r0, [r3, #12]
 2648 0048 FFF7FEFF 		bl	_ZNK4Move19SaveHeightMapToFileEP9FileStore
 2649 004c 0546     		mov	r5, r0
 2650 004e 2046     		mov	r0, r4
 2651 0050 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2652 0054 3DB9     		cbnz	r5, .L485
 2653 0056 03AA     		add	r2, sp, #12
 2654 0058 3846     		mov	r0, r7
 2655 005a 1549     		ldr	r1, .L486+8
 2656 005c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2657 0060 2846     		mov	r0, r5
 2658 0062 23B0     		add	sp, sp, #140
 2659              		@ sp needed
 2660 0064 F0BD     		pop	{r4, r5, r6, r7, pc}
 2661              	.L485:
 2662 0066 7368     		ldr	r3, [r6, #4]
 2663 0068 0F49     		ldr	r1, .L486
 2664 006a D3F8DC0B 		ldr	r0, [r3, #3036]
 2665 006e 03AA     		add	r2, sp, #12
 2666 0070 0023     		movs	r3, #0
 2667 0072 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 2668 0076 03AA     		add	r2, sp, #12
 2669 0078 3846     		mov	r0, r7
 2670 007a 0E49     		ldr	r1, .L486+12
 2671 007c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2672 0080 2846     		mov	r0, r5
 2673 0082 23B0     		add	sp, sp, #140
 2674              		@ sp needed
 2675 0084 F0BD     		pop	{r4, r5, r6, r7, pc}
 2676              	.L483:
 2677 0086 03AB     		add	r3, sp, #12
 2678 0088 01A8     		add	r0, sp, #4
 2679 008a 0B49     		ldr	r1, .L486+16
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 48


 2680 008c CDE90135 		strd	r3, r5, [sp, #4]
 2681 0090 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2682 0094 CBE7     		b	.L478
 2683              	.L484:
 2684 0096 03AA     		add	r2, sp, #12
 2685 0098 3846     		mov	r0, r7
 2686 009a 0849     		ldr	r1, .L486+20
 2687 009c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2688 00a0 0125     		movs	r5, #1
 2689 00a2 2846     		mov	r0, r5
 2690 00a4 23B0     		add	sp, sp, #140
 2691              		@ sp needed
 2692 00a6 F0BD     		pop	{r4, r5, r6, r7, pc}
 2693              	.L487:
 2694              		.align	2
 2695              	.L486:
 2696 00a8 34000000 		.word	.LC16
 2697 00ac 00000000 		.word	reprap
 2698 00b0 5C000000 		.word	.LC55
 2699 00b4 34000000 		.word	.LC54
 2700 00b8 00000000 		.word	.LC52
 2701 00bc 10000000 		.word	.LC53
 2702              		.size	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef, .-_ZNK6GCodes13SaveHeightMapER11GCode
 2703              		.section	.text._ZNK6GCodes21GetCurrentCoordinatesERK9StringRef,"ax",%progbits
 2704              		.align	1
 2705              		.p2align 2,,3
 2706              		.global	_ZNK6GCodes21GetCurrentCoordinatesERK9StringRef
 2707              		.syntax unified
 2708              		.thumb
 2709              		.thumb_func
 2710              		.fpu fpv4-sp-d16
 2711              		.type	_ZNK6GCodes21GetCurrentCoordinatesERK9StringRef, %function
 2712              	_ZNK6GCodes21GetCurrentCoordinatesERK9StringRef:
 2713              		@ args = 0, pretend = 0, frame = 48
 2714              		@ frame_needed = 0, uses_anonymous_args = 0
 2715 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2716 0004 4C4F     		ldr	r7, .L523
 2717 0006 8EB0     		sub	sp, sp, #56
 2718 0008 0446     		mov	r4, r0
 2719 000a 3846     		mov	r0, r7
 2720 000c 0E46     		mov	r6, r1
 2721 000e FD68     		ldr	r5, [r7, #12]
 2722 0010 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 2723 0014 8046     		mov	r8, r0
 2724 0016 3846     		mov	r0, r7
 2725 0018 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 2726 001c 4246     		mov	r2, r8
 2727 001e 0346     		mov	r3, r0
 2728 0020 02A9     		add	r1, sp, #8
 2729 0022 2846     		mov	r0, r5
 2730 0024 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfmm
 2731 0028 D7F8EC30 		ldr	r3, [r7, #236]
 2732 002c 83B1     		cbz	r3, .L489
 2733 002e D4F86013 		ldr	r1, [r4, #864]
 2734 0032 69B1     		cbz	r1, .L489
 2735 0034 0C33     		adds	r3, r3, #12
 2736 0036 03EB8101 		add	r1, r3, r1, lsl #2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 49


 2737 003a 02AA     		add	r2, sp, #8
 2738              	.L490:
 2739 003c B3EC017A 		vldmia.32	r3!, {s14}
 2740 0040 D2ED007A 		vldr.32	s15, [r2]
 2741 0044 77EE877A 		vadd.f32	s15, s15, s14
 2742 0048 8B42     		cmp	r3, r1
 2743 004a E2EC017A 		vstmia.32	r2!, {s15}
 2744 004e F5D1     		bne	.L490
 2745              	.L489:
 2746 0050 3368     		ldr	r3, [r6]
 2747 0052 0022     		movs	r2, #0
 2748 0054 1A70     		strb	r2, [r3]
 2749 0056 D4F86033 		ldr	r3, [r4, #864]
 2750 005a DBB1     		cbz	r3, .L491
 2751 005c DFF8E490 		ldr	r9, .L523+12
 2752 0060 04F20F55 		addw	r5, r4, #1295
 2753 0064 04F1C008 		add	r8, r4, #192
 2754              	.L492:
 2755 0068 B8EC010A 		vldmia.32	r8!, {s0}
 2756 006c 95F801A0 		ldrb	r10, [r5, #1]	@ zero_extendqisi2
 2757 0070 FFF7FEFF 		bl	_Z7HideNanf
 2758 0074 5246     		mov	r2, r10
 2759 0076 8DED000B 		vstr.64	d0, [sp]
 2760 007a 4946     		mov	r1, r9
 2761 007c 3046     		mov	r0, r6
 2762 007e FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2763 0082 A5F20E53 		subw	r3, r5, #1294
 2764 0086 D4F86023 		ldr	r2, [r4, #864]
 2765 008a 1B1B     		subs	r3, r3, r4
 2766 008c 9A42     		cmp	r2, r3
 2767 008e 05F10105 		add	r5, r5, #1
 2768 0092 E9D8     		bhi	.L492
 2769              	.L491:
 2770 0094 D4F85C53 		ldr	r5, [r4, #860]
 2771 0098 0B2D     		cmp	r5, #11
 2772 009a 18D8     		bhi	.L493
 2773 009c 02AB     		add	r3, sp, #8
 2774 009e DFF8A8A0 		ldr	r10, .L523+16
 2775 00a2 03EB8509 		add	r9, r3, r5, lsl #2
 2776 00a6 2A46     		mov	r2, r5
 2777 00a8 01E0     		b	.L494
 2778              	.L522:
 2779 00aa D4F85C23 		ldr	r2, [r4, #860]
 2780              	.L494:
 2781 00ae 59F8040B 		ldr	r0, [r9], #4	@ float
 2782 00b2 A5EB0208 		sub	r8, r5, r2
 2783 00b6 FFF7FEFF 		bl	__aeabi_f2d
 2784 00ba 0135     		adds	r5, r5, #1
 2785 00bc CDE90001 		strd	r0, [sp]
 2786 00c0 4246     		mov	r2, r8
 2787 00c2 5146     		mov	r1, r10
 2788 00c4 3046     		mov	r0, r6
 2789 00c6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2790 00ca 0C2D     		cmp	r5, #12
 2791 00cc EDD1     		bne	.L522
 2792              	.L493:
 2793 00ce 1B49     		ldr	r1, .L523+4
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 50


 2794 00d0 3046     		mov	r0, r6
 2795 00d2 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2796 00d6 D4F86033 		ldr	r3, [r4, #864]
 2797 00da 83B1     		cbz	r3, .L495
 2798 00dc DFF86C80 		ldr	r8, .L523+20
 2799 00e0 0025     		movs	r5, #0
 2800              	.L496:
 2801 00e2 FB68     		ldr	r3, [r7, #12]
 2802 00e4 05F12602 		add	r2, r5, #38
 2803 00e8 4146     		mov	r1, r8
 2804 00ea 53F82220 		ldr	r2, [r3, r2, lsl #2]
 2805 00ee 3046     		mov	r0, r6
 2806 00f0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2807 00f4 D4F86033 		ldr	r3, [r4, #864]
 2808 00f8 0135     		adds	r5, r5, #1
 2809 00fa AB42     		cmp	r3, r5
 2810 00fc F1D8     		bhi	.L496
 2811              	.L495:
 2812 00fe 1049     		ldr	r1, .L523+8
 2813 0100 3046     		mov	r0, r6
 2814 0102 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 2815 0106 D4F86033 		ldr	r3, [r4, #864]
 2816 010a 93B1     		cbz	r3, .L488
 2817 010c DFF84080 		ldr	r8, .L523+24
 2818 0110 02AF     		add	r7, sp, #8
 2819 0112 0025     		movs	r5, #0
 2820              	.L498:
 2821 0114 B7EC010A 		vldmia.32	r7!, {s0}
 2822 0118 FFF7FEFF 		bl	_Z7HideNanf
 2823 011c 4146     		mov	r1, r8
 2824 011e 53EC102B 		vmov	r2, r3, d0
 2825 0122 3046     		mov	r0, r6
 2826 0124 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2827 0128 D4F86033 		ldr	r3, [r4, #864]
 2828 012c 0135     		adds	r5, r5, #1
 2829 012e AB42     		cmp	r3, r5
 2830 0130 F0D8     		bhi	.L498
 2831              	.L488:
 2832 0132 0EB0     		add	sp, sp, #56
 2833              		@ sp needed
 2834 0134 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2835              	.L524:
 2836              		.align	2
 2837              	.L523:
 2838 0138 00000000 		.word	reprap
 2839 013c 18000000 		.word	.LC58
 2840 0140 28000000 		.word	.LC60
 2841 0144 00000000 		.word	.LC56
 2842 0148 0C000000 		.word	.LC57
 2843 014c 20000000 		.word	.LC59
 2844 0150 34000000 		.word	.LC61
 2845              		.size	_ZNK6GCodes21GetCurrentCoordinatesERK9StringRef, .-_ZNK6GCodes21GetCurrentCoordinatesERK9Str
 2846              		.section	.text._ZN6GCodes16QueueFileToPrintEPKcRK9StringRef,"ax",%progbits
 2847              		.align	1
 2848              		.p2align 2,,3
 2849              		.global	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef
 2850              		.syntax unified
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 51


 2851              		.thumb
 2852              		.thumb_func
 2853              		.fpu fpv4-sp-d16
 2854              		.type	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef, %function
 2855              	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef:
 2856              		@ args = 0, pretend = 0, frame = 0
 2857              		@ frame_needed = 0, uses_anonymous_args = 0
 2858 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2859 0002 4368     		ldr	r3, [r0, #4]
 2860 0004 0E46     		mov	r6, r1
 2861 0006 0446     		mov	r4, r0
 2862 0008 1E49     		ldr	r1, .L535
 2863 000a D3F8DC0B 		ldr	r0, [r3, #3036]
 2864 000e 1746     		mov	r7, r2
 2865 0010 0023     		movs	r3, #0
 2866 0012 3246     		mov	r2, r6
 2867 0014 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 2868 0018 0546     		mov	r5, r0
 2869 001a 58B3     		cbz	r0, .L526
 2870 001c A36C     		ldr	r3, [r4, #72]
 2871 001e 1B68     		ldr	r3, [r3]
 2872 0020 0022     		movs	r2, #0
 2873 0022 9A63     		str	r2, [r3, #56]
 2874 0024 A36C     		ldr	r3, [r4, #72]
 2875 0026 1B68     		ldr	r3, [r3]
 2876 0028 9B68     		ldr	r3, [r3, #8]
 2877 002a 187E     		ldrb	r0, [r3, #24]	@ zero_extendqisi2
 2878 002c 0021     		movs	r1, #0
 2879 002e 62F38610 		bfi	r0, r2, #6, #1
 2880 0032 1876     		strb	r0, [r3, #24]
 2881 0034 0A46     		mov	r2, r1	@ float
 2882 0036 C4F88C13 		str	r1, [r4, #908]	@ float
 2883 003a 04F56473 		add	r3, r4, #912
 2884 003e 04F56D71 		add	r1, r4, #948
 2885              	.L527:
 2886 0042 43F8042B 		str	r2, [r3], #4	@ float
 2887 0046 8B42     		cmp	r3, r1
 2888 0048 FBD1     		bne	.L527
 2889 004a 0F4B     		ldr	r3, .L535+4
 2890 004c C4F8B423 		str	r2, [r4, #948]	@ float
 2891 0050 D868     		ldr	r0, [r3, #12]
 2892 0052 FFF7FEFF 		bl	_ZN4Move22ResetExtruderPositionsEv
 2893 0056 D4F80805 		ldr	r0, [r4, #1288]
 2894 005a 08B1     		cbz	r0, .L528
 2895 005c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2896              	.L528:
 2897 0060 0022     		movs	r2, #0
 2898 0062 0023     		movs	r3, #0
 2899 0064 C4F86C21 		str	r2, [r4, #364]	@ float
 2900 0068 C4F80C35 		str	r3, [r4, #1292]
 2901 006c C4F80855 		str	r5, [r4, #1288]
 2902 0070 0120     		movs	r0, #1
 2903 0072 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2904              	.L526:
 2905 0074 3246     		mov	r2, r6
 2906 0076 3846     		mov	r0, r7
 2907 0078 0449     		ldr	r1, .L535+8
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 52


 2908 007a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2909 007e 2846     		mov	r0, r5
 2910 0080 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2911              	.L536:
 2912 0082 00BF     		.align	2
 2913              	.L535:
 2914 0084 00000000 		.word	.LC62
 2915 0088 00000000 		.word	reprap
 2916 008c 0C000000 		.word	.LC63
 2917              		.size	_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef, .-_ZN6GCodes16QueueFileToPrintEPKcRK9StringRef
 2918              		.section	.text._ZN6GCodes13StartPrintingEb,"ax",%progbits
 2919              		.align	1
 2920              		.p2align 2,,3
 2921              		.global	_ZN6GCodes13StartPrintingEb
 2922              		.syntax unified
 2923              		.thumb
 2924              		.thumb_func
 2925              		.fpu fpv4-sp-d16
 2926              		.type	_ZN6GCodes13StartPrintingEb, %function
 2927              	_ZN6GCodes13StartPrintingEb:
 2928              		@ args = 0, pretend = 0, frame = 0
 2929              		@ frame_needed = 0, uses_anonymous_args = 0
 2930 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2931 0004 836C     		ldr	r3, [r0, #72]
 2932 0006 82B0     		sub	sp, sp, #8
 2933 0008 0446     		mov	r4, r0
 2934 000a 1868     		ldr	r0, [r3]
 2935 000c 0E46     		mov	r6, r1
 2936 000e FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 2937 0012 0546     		mov	r5, r0
 2938 0014 8068     		ldr	r0, [r0, #8]
 2939 0016 18B1     		cbz	r0, .L538
 2940 0018 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2941 001c 0023     		movs	r3, #0
 2942 001e AB60     		str	r3, [r5, #8]
 2943              	.L538:
 2944 0020 D4F80835 		ldr	r3, [r4, #1288]
 2945 0024 AB60     		str	r3, [r5, #8]
 2946 0026 A36C     		ldr	r3, [r4, #72]
 2947 0028 D4F80880 		ldr	r8, [r4, #8]
 2948 002c 1868     		ldr	r0, [r3]
 2949 002e 174D     		ldr	r5, .L551
 2950 0030 0027     		movs	r7, #0
 2951 0032 C4F80875 		str	r7, [r4, #1288]
 2952 0036 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 2953 003a 00F10801 		add	r1, r0, #8
 2954 003e 4046     		mov	r0, r8
 2955 0040 FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 2956 0044 124B     		ldr	r3, .L551+4
 2957 0046 286A     		ldr	r0, [r5, #32]
 2958 0048 84F82477 		strb	r7, [r4, #1828]
 2959 004c C4F8E830 		str	r3, [r4, #232]	@ float
 2960 0050 FFF7FEFF 		bl	_ZN12PrintMonitor12StartedPrintEv
 2961 0054 296A     		ldr	r1, [r5, #32]
 2962 0056 94F81876 		ldrb	r7, [r4, #1560]	@ zero_extendqisi2
 2963 005a 0E4A     		ldr	r2, .L551+8
 2964 005c 0E4D     		ldr	r5, .L551+12
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 53


 2965 005e 0B7B     		ldrb	r3, [r1, #12]	@ zero_extendqisi2
 2966 0060 6068     		ldr	r0, [r4, #4]
 2967 0062 002F     		cmp	r7, #0
 2968 0064 18BF     		it	ne
 2969 0066 2A46     		movne	r2, r5
 2970 0068 0BB1     		cbz	r3, .L540
 2971 006a 01F59073 		add	r3, r1, #288
 2972              	.L540:
 2973 006e 8021     		movs	r1, #128
 2974 0070 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2975 0074 3EB1     		cbz	r6, .L537
 2976 0076 A36C     		ldr	r3, [r4, #72]
 2977 0078 084A     		ldr	r2, .L551+16
 2978 007a 1968     		ldr	r1, [r3]
 2979 007c 0023     		movs	r3, #0
 2980 007e 2046     		mov	r0, r4
 2981 0080 0093     		str	r3, [sp]
 2982 0082 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 2983              	.L537:
 2984 0086 02B0     		add	sp, sp, #8
 2985              		@ sp needed
 2986 0088 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2987              	.L552:
 2988              		.align	2
 2989              	.L551:
 2990 008c 00000000 		.word	reprap
 2991 0090 000080BF 		.word	-1082130432
 2992 0094 00000000 		.word	.LC64
 2993 0098 1C000000 		.word	.LC65
 2994 009c 44000000 		.word	.LC66
 2995              		.size	_ZN6GCodes13StartPrintingEb, .-_ZN6GCodes13StartPrintingEb
 2996              		.section	.text._ZN6GCodes11DoDwellTimeER11GCodeBufferm,"ax",%progbits
 2997              		.align	1
 2998              		.p2align 2,,3
 2999              		.global	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 3000              		.syntax unified
 3001              		.thumb
 3002              		.thumb_func
 3003              		.fpu fpv4-sp-d16
 3004              		.type	_ZN6GCodes11DoDwellTimeER11GCodeBufferm, %function
 3005              	_ZN6GCodes11DoDwellTimeER11GCodeBufferm:
 3006              		@ args = 0, pretend = 0, frame = 0
 3007              		@ frame_needed = 0, uses_anonymous_args = 0
 3008 0000 38B5     		push	{r3, r4, r5, lr}
 3009 0002 0C46     		mov	r4, r1
 3010 0004 1546     		mov	r5, r2
 3011 0006 FFF7FEFF 		bl	millis
 3012 000a 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 3013 000c 3BB1     		cbz	r3, .L554
 3014 000e 2368     		ldr	r3, [r4]
 3015 0010 C01A     		subs	r0, r0, r3
 3016 0012 A842     		cmp	r0, r5
 3017 0014 08D3     		bcc	.L556
 3018 0016 0023     		movs	r3, #0
 3019 0018 2371     		strb	r3, [r4, #4]
 3020 001a 0120     		movs	r0, #1
 3021 001c 38BD     		pop	{r3, r4, r5, pc}
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 54


 3022              	.L554:
 3023 001e 0122     		movs	r2, #1
 3024 0020 2060     		str	r0, [r4]
 3025 0022 2271     		strb	r2, [r4, #4]
 3026 0024 1846     		mov	r0, r3
 3027 0026 38BD     		pop	{r3, r4, r5, pc}
 3028              	.L556:
 3029 0028 0020     		movs	r0, #0
 3030 002a 38BD     		pop	{r3, r4, r5, pc}
 3031              		.size	_ZN6GCodes11DoDwellTimeER11GCodeBufferm, .-_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 3032              		.section	.text._ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef,"ax",%progbits
 3033              		.align	1
 3034              		.p2align 2,,3
 3035              		.global	_ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef
 3036              		.syntax unified
 3037              		.thumb
 3038              		.thumb_func
 3039              		.fpu fpv4-sp-d16
 3040              		.type	_ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef, %function
 3041              	_ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef:
 3042              		@ args = 0, pretend = 0, frame = 152
 3043              		@ frame_needed = 0, uses_anonymous_args = 0
 3044 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 3045 0004 0C46     		mov	r4, r1
 3046 0006 ACB0     		sub	sp, sp, #176
 3047 0008 0646     		mov	r6, r0
 3048 000a 5021     		movs	r1, #80
 3049 000c 2046     		mov	r0, r4
 3050 000e 9046     		mov	r8, r2
 3051 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3052 0014 50B9     		cbnz	r0, .L559
 3053 0016 5321     		movs	r1, #83
 3054 0018 2046     		mov	r0, r4
 3055 001a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3056 001e 0028     		cmp	r0, #0
 3057 0020 7DD1     		bne	.L560
 3058              	.L607:
 3059 0022 0123     		movs	r3, #1
 3060              	.L604:
 3061 0024 1846     		mov	r0, r3
 3062 0026 2CB0     		add	sp, sp, #176
 3063              		@ sp needed
 3064 0028 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3065              	.L559:
 3066 002c 2046     		mov	r0, r4
 3067 002e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3068 0032 B0F10009 		subs	r9, r0, #0
 3069 0036 7BDB     		blt	.L608
 3070 0038 0023     		movs	r3, #0
 3071 003a 5321     		movs	r1, #83
 3072 003c 2046     		mov	r0, r4
 3073 003e 8DF84430 		strb	r3, [sp, #68]
 3074 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3075 0046 0546     		mov	r5, r0
 3076 0048 0028     		cmp	r0, #0
 3077 004a 57D1     		bne	.L609
 3078              	.L563:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 55


 3079 004c D6F86433 		ldr	r3, [r6, #868]
 3080 0050 0693     		str	r3, [sp, #24]
 3081 0052 4421     		movs	r1, #68
 3082 0054 2046     		mov	r0, r4
 3083 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3084 005a 0746     		mov	r7, r0
 3085 005c 0028     		cmp	r0, #0
 3086 005e 40F0D480 		bne	.L610
 3087 0062 0690     		str	r0, [sp, #24]
 3088              	.L565:
 3089 0064 0823     		movs	r3, #8
 3090 0066 4821     		movs	r1, #72
 3091 0068 2046     		mov	r0, r4
 3092 006a 0793     		str	r3, [sp, #28]
 3093 006c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3094 0070 0746     		mov	r7, r0
 3095 0072 0028     		cmp	r0, #0
 3096 0074 40F0C180 		bne	.L611
 3097 0078 0790     		str	r0, [sp, #28]
 3098              	.L567:
 3099 007a 5821     		movs	r1, #88
 3100 007c 2046     		mov	r0, r4
 3101 007e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3102 0082 0028     		cmp	r0, #0
 3103 0084 40F08D80 		bne	.L612
 3104 0088 5921     		movs	r1, #89
 3105 008a 2046     		mov	r0, r4
 3106 008c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3107 0090 0028     		cmp	r0, #0
 3108 0092 56D1     		bne	.L613
 3109 0094 4621     		movs	r1, #70
 3110 0096 2046     		mov	r0, r4
 3111 0098 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3112 009c 0028     		cmp	r0, #0
 3113 009e 40F0C380 		bne	.L614
 3114 00a2 002D     		cmp	r5, #0
 3115 00a4 00F0E180 		beq	.L582
 3116 00a8 0127     		movs	r7, #1
 3117 00aa 3C46     		mov	r4, r7
 3118 00ac 0226     		movs	r6, #2
 3119              	.L581:
 3120 00ae 4946     		mov	r1, r9
 3121 00b0 7648     		ldr	r0, .L616
 3122 00b2 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 3123 00b6 0146     		mov	r1, r0
 3124 00b8 7448     		ldr	r0, .L616
 3125 00ba FFF7FEFF 		bl	_ZN6RepRap10DeleteToolEP4Tool
 3126 00be DDE90632 		ldrd	r3, r2, [sp, #24]
 3127 00c2 012B     		cmp	r3, #1
 3128 00c4 02D1     		bne	.L584
 3129 00c6 012A     		cmp	r2, #1
 3130 00c8 00F0D780 		beq	.L615
 3131              	.L584:
 3132 00cc 09A9     		add	r1, sp, #36
 3133 00ce 0192     		str	r2, [sp, #4]
 3134 00d0 0091     		str	r1, [sp]
 3135 00d2 CDE90448 		strd	r4, r8, [sp, #16]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 56


 3136 00d6 CDE90276 		strd	r7, r6, [sp, #8]
 3137 00da 4846     		mov	r0, r9
 3138 00dc 1AAA     		add	r2, sp, #104
 3139 00de 11A9     		add	r1, sp, #68
 3140 00e0 FFF7FEFF 		bl	_ZN4Tool6CreateEiPKcPljS2_jmmmRK9StringRef
 3141 00e4 0028     		cmp	r0, #0
 3142 00e6 00F0C680 		beq	.L593
 3143 00ea 0146     		mov	r1, r0
 3144 00ec 6748     		ldr	r0, .L616
 3145 00ee FFF7FEFF 		bl	_ZN6RepRap7AddToolEP4Tool
 3146 00f2 0123     		movs	r3, #1
 3147 00f4 1846     		mov	r0, r3
 3148 00f6 2CB0     		add	sp, sp, #176
 3149              		@ sp needed
 3150 00f8 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3151              	.L609:
 3152 00fc 11AA     		add	r2, sp, #68
 3153 00fe 2123     		movs	r3, #33
 3154 0100 23A9     		add	r1, sp, #140
 3155 0102 2046     		mov	r0, r4
 3156 0104 2392     		str	r2, [sp, #140]
 3157 0106 2493     		str	r3, [sp, #144]
 3158 0108 FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 3159 010c 0546     		mov	r5, r0
 3160 010e 0028     		cmp	r0, #0
 3161 0110 9CD1     		bne	.L563
 3162 0112 4046     		mov	r0, r8
 3163 0114 5E49     		ldr	r1, .L616+4
 3164 0116 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3165 011a 0223     		movs	r3, #2
 3166 011c 82E7     		b	.L604
 3167              	.L560:
 3168 011e 2046     		mov	r0, r4
 3169 0120 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3170 0124 0123     		movs	r3, #1
 3171 0126 A063     		str	r0, [r4, #56]
 3172 0128 1846     		mov	r0, r3
 3173 012a 2CB0     		add	sp, sp, #176
 3174              		@ sp needed
 3175 012c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3176              	.L608:
 3177 0130 4046     		mov	r0, r8
 3178 0132 5849     		ldr	r1, .L616+8
 3179 0134 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3180 0138 0223     		movs	r3, #2
 3181 013a 1846     		mov	r0, r3
 3182 013c 2CB0     		add	sp, sp, #176
 3183              		@ sp needed
 3184 013e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3185              	.L613:
 3186 0142 0127     		movs	r7, #1
 3187 0144 23AD     		add	r5, sp, #140
 3188 0146 0DF1200A 		add	r10, sp, #32
 3189              	.L586:
 3190 014a D6F86033 		ldr	r3, [r6, #864]
 3191 014e 0893     		str	r3, [sp, #32]
 3192 0150 2046     		mov	r0, r4
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 57


 3193 0152 0023     		movs	r3, #0
 3194 0154 5246     		mov	r2, r10
 3195 0156 2946     		mov	r1, r5
 3196 0158 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 3197 015c 0898     		ldr	r0, [sp, #32]
 3198 015e 70B1     		cbz	r0, .L573
 3199 0160 05EB8001 		add	r1, r5, r0, lsl #2
 3200 0164 2A46     		mov	r2, r5
 3201 0166 0020     		movs	r0, #0
 3202 0168 4FF0010C 		mov	ip, #1
 3203              	.L575:
 3204 016c 52F8043B 		ldr	r3, [r2], #4
 3205 0170 1F2B     		cmp	r3, #31
 3206 0172 9CBF     		itt	ls
 3207 0174 0CFA03F3 		lslls	r3, ip, r3
 3208 0178 1843     		orrls	r0, r0, r3
 3209 017a 9142     		cmp	r1, r2
 3210 017c F6D1     		bne	.L575
 3211              	.L573:
 3212 017e D6F86033 		ldr	r3, [r6, #864]
 3213 0182 4FF0FF36 		mov	r6, #-1
 3214 0186 9E40     		lsls	r6, r6, r3
 3215 0188 20EA0606 		bic	r6, r0, r6
 3216              	.L572:
 3217 018c 3E42     		tst	r6, r7
 3218 018e 44D0     		beq	.L576
 3219 0190 4046     		mov	r0, r8
 3220 0192 4149     		ldr	r1, .L616+12
 3221 0194 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 3222 0198 0223     		movs	r3, #2
 3223 019a 1846     		mov	r0, r3
 3224 019c 2CB0     		add	sp, sp, #176
 3225              		@ sp needed
 3226 019e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3227              	.L612:
 3228 01a2 0DF1B00A 		add	r10, sp, #176
 3229 01a6 D6F86033 		ldr	r3, [r6, #864]
 3230 01aa 4AF8903D 		str	r3, [r10, #-144]!
 3231 01ae 23AD     		add	r5, sp, #140
 3232 01b0 5246     		mov	r2, r10
 3233 01b2 2946     		mov	r1, r5
 3234 01b4 0023     		movs	r3, #0
 3235 01b6 2046     		mov	r0, r4
 3236 01b8 FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 3237 01bc 089F     		ldr	r7, [sp, #32]
 3238 01be 6FB1     		cbz	r7, .L569
 3239 01c0 05EB8701 		add	r1, r5, r7, lsl #2
 3240 01c4 2A46     		mov	r2, r5
 3241 01c6 0027     		movs	r7, #0
 3242 01c8 0120     		movs	r0, #1
 3243              	.L571:
 3244 01ca 52F8043B 		ldr	r3, [r2], #4
 3245 01ce 1F2B     		cmp	r3, #31
 3246 01d0 9CBF     		itt	ls
 3247 01d2 00FA03F3 		lslls	r3, r0, r3
 3248 01d6 1F43     		orrls	r7, r7, r3
 3249 01d8 8A42     		cmp	r2, r1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 58


 3250 01da F6D1     		bne	.L571
 3251              	.L569:
 3252 01dc D6F86023 		ldr	r2, [r6, #864]
 3253 01e0 4FF0FF33 		mov	r3, #-1
 3254 01e4 9340     		lsls	r3, r3, r2
 3255 01e6 5921     		movs	r1, #89
 3256 01e8 2046     		mov	r0, r4
 3257 01ea 27EA0307 		bic	r7, r7, r3
 3258 01ee FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3259 01f2 0028     		cmp	r0, #0
 3260 01f4 A9D1     		bne	.L586
 3261 01f6 0226     		movs	r6, #2
 3262 01f8 C8E7     		b	.L572
 3263              	.L611:
 3264 01fa 0023     		movs	r3, #0
 3265 01fc 07AA     		add	r2, sp, #28
 3266 01fe 09A9     		add	r1, sp, #36
 3267 0200 2046     		mov	r0, r4
 3268 0202 3D46     		mov	r5, r7
 3269 0204 FFF7FEFF 		bl	_ZN11GCodeBuffer11GetIntArrayEPlRjb
 3270 0208 37E7     		b	.L567
 3271              	.L610:
 3272 020a 0023     		movs	r3, #0
 3273 020c 06AA     		add	r2, sp, #24
 3274 020e 1AA9     		add	r1, sp, #104
 3275 0210 2046     		mov	r0, r4
 3276 0212 3D46     		mov	r5, r7
 3277 0214 FFF7FEFF 		bl	_ZN11GCodeBuffer11GetIntArrayEPlRjb
 3278 0218 24E7     		b	.L565
 3279              	.L576:
 3280 021a 4621     		movs	r1, #70
 3281 021c 2046     		mov	r0, r4
 3282 021e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3283 0222 30B9     		cbnz	r0, .L588
 3284 0224 0124     		movs	r4, #1
 3285 0226 42E7     		b	.L581
 3286              	.L614:
 3287 0228 0226     		movs	r6, #2
 3288 022a 0127     		movs	r7, #1
 3289 022c 23AD     		add	r5, sp, #140
 3290 022e 0DF1200A 		add	r10, sp, #32
 3291              	.L588:
 3292 0232 2046     		mov	r0, r4
 3293 0234 5246     		mov	r2, r10
 3294 0236 0924     		movs	r4, #9
 3295 0238 0023     		movs	r3, #0
 3296 023a 2946     		mov	r1, r5
 3297 023c 0894     		str	r4, [sp, #32]
 3298 023e FFF7FEFF 		bl	_ZN11GCodeBuffer16GetUnsignedArrayEPmRjb
 3299 0242 089C     		ldr	r4, [sp, #32]
 3300 0244 002C     		cmp	r4, #0
 3301 0246 3FF432AF 		beq	.L581
 3302 024a 05EB8402 		add	r2, r5, r4, lsl #2
 3303 024e 0121     		movs	r1, #1
 3304 0250 0024     		movs	r4, #0
 3305              	.L580:
 3306 0252 55F8043B 		ldr	r3, [r5], #4
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 59


 3307 0256 1F2B     		cmp	r3, #31
 3308 0258 9CBF     		itt	ls
 3309 025a 01FA03F3 		lslls	r3, r1, r3
 3310 025e 1C43     		orrls	r4, r4, r3
 3311 0260 AA42     		cmp	r2, r5
 3312 0262 F6D1     		bne	.L580
 3313 0264 C4F30804 		ubfx	r4, r4, #0, #9
 3314 0268 21E7     		b	.L581
 3315              	.L582:
 3316 026a 4246     		mov	r2, r8
 3317 026c 4946     		mov	r1, r9
 3318 026e 0748     		ldr	r0, .L616
 3319 0270 FFF7FEFF 		bl	_ZNK6RepRap9PrintToolEiRK9StringRef
 3320 0274 D5E6     		b	.L607
 3321              	.L593:
 3322 0276 0223     		movs	r3, #2
 3323 0278 D4E6     		b	.L604
 3324              	.L615:
 3325 027a 1A99     		ldr	r1, [sp, #104]
 3326 027c 0131     		adds	r1, r1, #1
 3327 027e 7FF425AF 		bne	.L584
 3328 0282 0999     		ldr	r1, [sp, #36]
 3329 0284 0131     		adds	r1, r1, #1
 3330 0286 7FF421AF 		bne	.L584
 3331 028a CAE6     		b	.L607
 3332              	.L617:
 3333              		.align	2
 3334              	.L616:
 3335 028c 00000000 		.word	reprap
 3336 0290 20000000 		.word	.LC68
 3337 0294 00000000 		.word	.LC67
 3338 0298 34000000 		.word	.LC69
 3339              		.size	_ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef, .-_ZN6GCodes10ManageToolER11GCodeBufferRK
 3340              		.section	.text._ZN6GCodes13DisableDrivesEv,"ax",%progbits
 3341              		.align	1
 3342              		.p2align 2,,3
 3343              		.global	_ZN6GCodes13DisableDrivesEv
 3344              		.syntax unified
 3345              		.thumb
 3346              		.thumb_func
 3347              		.fpu fpv4-sp-d16
 3348              		.type	_ZN6GCodes13DisableDrivesEv, %function
 3349              	_ZN6GCodes13DisableDrivesEv:
 3350              		@ args = 0, pretend = 0, frame = 0
 3351              		@ frame_needed = 0, uses_anonymous_args = 0
 3352 0000 38B5     		push	{r3, r4, r5, lr}
 3353 0002 0546     		mov	r5, r0
 3354 0004 0024     		movs	r4, #0
 3355              	.L619:
 3356 0006 2146     		mov	r1, r4
 3357 0008 6868     		ldr	r0, [r5, #4]
 3358 000a 0134     		adds	r4, r4, #1
 3359 000c FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 3360 0010 0C2C     		cmp	r4, #12
 3361 0012 F8D1     		bne	.L619
 3362 0014 0023     		movs	r3, #0
 3363 0016 C5F82C35 		str	r3, [r5, #1324]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 60


 3364 001a 38BD     		pop	{r3, r4, r5, pc}
 3365              		.size	_ZN6GCodes13DisableDrivesEv, .-_ZN6GCodes13DisableDrivesEv
 3366              		.section	.text._ZNK6GCodes19ChangeMicrosteppingEjjb,"ax",%progbits
 3367              		.align	1
 3368              		.p2align 2,,3
 3369              		.global	_ZNK6GCodes19ChangeMicrosteppingEjjb
 3370              		.syntax unified
 3371              		.thumb
 3372              		.thumb_func
 3373              		.fpu fpv4-sp-d16
 3374              		.type	_ZNK6GCodes19ChangeMicrosteppingEjjb, %function
 3375              	_ZNK6GCodes19ChangeMicrosteppingEjjb:
 3376              		@ args = 0, pretend = 0, frame = 16
 3377              		@ frame_needed = 0, uses_anonymous_args = 0
 3378 0000 70B5     		push	{r4, r5, r6, lr}
 3379 0002 84B0     		sub	sp, sp, #16
 3380 0004 0446     		mov	r4, r0
 3381 0006 0092     		str	r2, [sp]
 3382 0008 4068     		ldr	r0, [r0, #4]
 3383 000a 0DF10F02 		add	r2, sp, #15
 3384 000e 1E46     		mov	r6, r3
 3385 0010 0D46     		mov	r5, r1
 3386 0012 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 3387 0016 3346     		mov	r3, r6
 3388 0018 0190     		str	r0, [sp, #4]
 3389 001a 009A     		ldr	r2, [sp]
 3390 001c 6068     		ldr	r0, [r4, #4]
 3391 001e 2946     		mov	r1, r5
 3392 0020 FFF7FEFF 		bl	_ZN8Platform16SetMicrosteppingEjib
 3393 0024 00B3     		cbz	r0, .L623
 3394 0026 6168     		ldr	r1, [r4, #4]
 3395 0028 DDED007A 		vldr.32	s15, [sp]	@ int
 3396 002c DDED016A 		vldr.32	s13, [sp, #4]	@ int
 3397 0030 01EB8501 		add	r1, r1, r5, lsl #2
 3398 0034 91ED777A 		vldr.32	s14, [r1, #476]
 3399 0038 F8EE677A 		vcvt.f32.u32	s15, s15
 3400 003c F8EE666A 		vcvt.f32.u32	s13, s13
 3401 0040 67EE877A 		vmul.f32	s15, s15, s14
 3402 0044 87EEA67A 		vdiv.f32	s14, s15, s13
 3403 0048 B4EE477A 		vcmp.f32	s14, s14
 3404 004c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3405 0050 08D6     		bvs	.L624
 3406 0052 F7EE007A 		vmov.f32	s15, #1.0e+0
 3407 0056 B4EEE77A 		vcmpe.f32	s14, s15
 3408 005a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3409 005e D8BF     		it	le
 3410 0060 B0EE677A 		vmovle.f32	s14, s15
 3411              	.L624:
 3412 0064 81ED777A 		vstr.32	s14, [r1, #476]
 3413              	.L623:
 3414 0068 04B0     		add	sp, sp, #16
 3415              		@ sp needed
 3416 006a 70BD     		pop	{r4, r5, r6, pc}
 3417              		.size	_ZNK6GCodes19ChangeMicrosteppingEjjb, .-_ZNK6GCodes19ChangeMicrosteppingEjjb
 3418              		.section	.text._ZN6GCodes17SetMappedFanSpeedEv,"ax",%progbits
 3419              		.align	1
 3420              		.p2align 2,,3
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 61


 3421              		.global	_ZN6GCodes17SetMappedFanSpeedEv
 3422              		.syntax unified
 3423              		.thumb
 3424              		.thumb_func
 3425              		.fpu fpv4-sp-d16
 3426              		.type	_ZN6GCodes17SetMappedFanSpeedEv, %function
 3427              	_ZN6GCodes17SetMappedFanSpeedEv:
 3428              		@ args = 0, pretend = 0, frame = 0
 3429              		@ frame_needed = 0, uses_anonymous_args = 0
 3430 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3431 0002 124B     		ldr	r3, .L640
 3432 0004 D3F8EC10 		ldr	r1, [r3, #236]
 3433 0008 B9B1     		cbz	r1, .L638
 3434 000a 0646     		mov	r6, r0
 3435 000c D1F8AC50 		ldr	r5, [r1, #172]
 3436 0010 0024     		movs	r4, #0
 3437 0012 00F25457 		addw	r7, r0, #1364
 3438 0016 02E0     		b	.L632
 3439              	.L631:
 3440 0018 0134     		adds	r4, r4, #1
 3441 001a 092C     		cmp	r4, #9
 3442 001c 0CD0     		beq	.L639
 3443              	.L632:
 3444 001e 25FA04F3 		lsr	r3, r5, r4
 3445 0022 DB07     		lsls	r3, r3, #31
 3446 0024 F8D5     		bpl	.L631
 3447 0026 2146     		mov	r1, r4
 3448 0028 97ED000A 		vldr.32	s0, [r7]
 3449 002c 7068     		ldr	r0, [r6, #4]
 3450 002e 0134     		adds	r4, r4, #1
 3451 0030 FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 3452 0034 092C     		cmp	r4, #9
 3453 0036 F2D1     		bne	.L632
 3454              	.L639:
 3455 0038 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3456              	.L638:
 3457 003a 00F25453 		addw	r3, r0, #1364
 3458 003e 93ED000A 		vldr.32	s0, [r3]
 3459 0042 4068     		ldr	r0, [r0, #4]
 3460 0044 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3461 0048 FFF7FEBF 		b	_ZN8Platform11SetFanValueEjf
 3462              	.L641:
 3463              		.align	2
 3464              	.L640:
 3465 004c 00000000 		.word	reprap
 3466              		.size	_ZN6GCodes17SetMappedFanSpeedEv, .-_ZN6GCodes17SetMappedFanSpeedEv
 3467              		.section	.text._ZN6GCodes17SetMappedFanSpeedEf,"ax",%progbits
 3468              		.align	1
 3469              		.p2align 2,,3
 3470              		.global	_ZN6GCodes17SetMappedFanSpeedEf
 3471              		.syntax unified
 3472              		.thumb
 3473              		.thumb_func
 3474              		.fpu fpv4-sp-d16
 3475              		.type	_ZN6GCodes17SetMappedFanSpeedEf, %function
 3476              	_ZN6GCodes17SetMappedFanSpeedEf:
 3477              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 62


 3478              		@ frame_needed = 0, uses_anonymous_args = 0
 3479              		@ link register save eliminated.
 3480 0000 00F25453 		addw	r3, r0, #1364
 3481 0004 83ED000A 		vstr.32	s0, [r3]
 3482 0008 FFF7FEBF 		b	_ZN6GCodes17SetMappedFanSpeedEv
 3483              		.size	_ZN6GCodes17SetMappedFanSpeedEf, .-_ZN6GCodes17SetMappedFanSpeedEf
 3484              		.section	.text._ZN6GCodes13SaveFanSpeedsEv,"ax",%progbits
 3485              		.align	1
 3486              		.p2align 2,,3
 3487              		.global	_ZN6GCodes13SaveFanSpeedsEv
 3488              		.syntax unified
 3489              		.thumb
 3490              		.thumb_func
 3491              		.fpu fpv4-sp-d16
 3492              		.type	_ZN6GCodes13SaveFanSpeedsEv, %function
 3493              	_ZN6GCodes13SaveFanSpeedsEv:
 3494              		@ args = 0, pretend = 0, frame = 0
 3495              		@ frame_needed = 0, uses_anonymous_args = 0
 3496 0000 70B5     		push	{r4, r5, r6, lr}
 3497 0002 0646     		mov	r6, r0
 3498 0004 00F5A665 		add	r5, r0, #1328
 3499 0008 0024     		movs	r4, #0
 3500              	.L644:
 3501 000a 2146     		mov	r1, r4
 3502 000c 7068     		ldr	r0, [r6, #4]
 3503 000e FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 3504 0012 0134     		adds	r4, r4, #1
 3505 0014 092C     		cmp	r4, #9
 3506 0016 A5EC010A 		vstmia.32	r5!, {s0}
 3507 001a F6D1     		bne	.L644
 3508 001c 06F25453 		addw	r3, r6, #1364
 3509 0020 06F5AB66 		add	r6, r6, #1368
 3510 0024 1B68     		ldr	r3, [r3]	@ float
 3511 0026 3360     		str	r3, [r6]	@ float
 3512 0028 70BD     		pop	{r4, r5, r6, pc}
 3513              		.size	_ZN6GCodes13SaveFanSpeedsEv, .-_ZN6GCodes13SaveFanSpeedsEv
 3514 002a 00BF     		.section	.text._ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc,"ax",%progbits
 3515              		.align	1
 3516              		.p2align 2,,3
 3517              		.global	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 3518              		.syntax unified
 3519              		.thumb
 3520              		.thumb_func
 3521              		.fpu fpv4-sp-d16
 3522              		.type	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc, %function
 3523              	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc:
 3524              		@ args = 0, pretend = 0, frame = 8
 3525              		@ frame_needed = 0, uses_anonymous_args = 0
 3526 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 3527 0002 8C68     		ldr	r4, [r1, #8]
 3528 0004 247E     		ldrb	r4, [r4, #24]	@ zero_extendqisi2
 3529 0006 6407     		lsls	r4, r4, #29
 3530 0008 85B0     		sub	sp, sp, #20
 3531 000a 1ED4     		bmi	.L648
 3532 000c 846C     		ldr	r4, [r0, #72]
 3533 000e 2468     		ldr	r4, [r4]
 3534 0010 8C42     		cmp	r4, r1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 63


 3535 0012 1AD0     		beq	.L648
 3536              	.L649:
 3537 0014 1E46     		mov	r6, r3
 3538 0016 C36C     		ldr	r3, [r0, #76]
 3539 0018 1B68     		ldr	r3, [r3]
 3540 001a 8B42     		cmp	r3, r1
 3541 001c 1746     		mov	r7, r2
 3542 001e 0546     		mov	r5, r0
 3543 0020 0C46     		mov	r4, r1
 3544 0022 17D0     		beq	.L651
 3545 0024 436C     		ldr	r3, [r0, #68]
 3546 0026 1B68     		ldr	r3, [r3]
 3547 0028 8B42     		cmp	r3, r1
 3548 002a 13D0     		beq	.L651
 3549 002c 898F     		ldrh	r1, [r1, #60]
 3550              	.L652:
 3551 002e 022F     		cmp	r7, #2
 3552 0030 55D0     		beq	.L694
 3553 0032 032F     		cmp	r7, #3
 3554 0034 08BF     		it	eq
 3555 0036 41F42071 		orreq	r1, r1, #640
 3556              	.L662:
 3557 003a 6868     		ldr	r0, [r5, #4]
 3558 003c 494A     		ldr	r2, .L698
 3559 003e 3346     		mov	r3, r6
 3560              	.L693:
 3561 0040 05B0     		add	sp, sp, #20
 3562              		@ sp needed
 3563 0042 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 3564 0046 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 3565              	.L648:
 3566 004a 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 3567 004c 002C     		cmp	r4, #0
 3568 004e E1D1     		bne	.L649
 3569              	.L647:
 3570 0050 05B0     		add	sp, sp, #20
 3571              		@ sp needed
 3572 0052 F0BD     		pop	{r4, r5, r6, r7, pc}
 3573              	.L651:
 3574 0054 6868     		ldr	r0, [r5, #4]
 3575 0056 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 3576 005a 94F85430 		ldrb	r3, [r4, #84]	@ zero_extendqisi2
 3577 005e A18F     		ldrh	r1, [r4, #60]
 3578 0060 4D2B     		cmp	r3, #77
 3579 0062 11D0     		beq	.L695
 3580 0064 0528     		cmp	r0, #5
 3581 0066 31D8     		bhi	.L673
 3582 0068 01A3     		adr	r3, .L674
 3583 006a 53F820F0 		ldr	pc, [r3, r0, lsl #2]
 3584 006e 00BF     		.p2align 2
 3585              	.L674:
 3586 0070 2F000000 		.word	.L652+1
 3587 0074 2F000000 		.word	.L652+1
 3588 0078 D1000000 		.word	.L681+1
 3589 007c C5000000 		.word	.L675+1
 3590 0080 C9000000 		.word	.L676+1
 3591 0084 B5000000 		.word	.L682+1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 64


 3592              		.p2align 1
 3593              	.L695:
 3594 0088 A26C     		ldr	r2, [r4, #72]
 3595 008a 40F2E633 		movw	r3, #998
 3596 008e 9A42     		cmp	r2, r3
 3597 0090 38D0     		beq	.L696
 3598 0092 0528     		cmp	r0, #5
 3599 0094 1AD8     		bhi	.L673
 3600 0096 01A3     		adr	r3, .L670
 3601 0098 53F820F0 		ldr	pc, [r3, r0, lsl #2]
 3602              		.p2align 2
 3603              	.L670:
 3604 009c 2F000000 		.word	.L652+1
 3605 00a0 2F000000 		.word	.L652+1
 3606 00a4 E5000000 		.word	.L679+1
 3607 00a8 C5000000 		.word	.L675+1
 3608 00ac C9000000 		.word	.L676+1
 3609 00b0 B5000000 		.word	.L682+1
 3610              		.p2align 1
 3611              	.L682:
 3612 00b4 2C4B     		ldr	r3, .L698+4
 3613              	.L658:
 3614 00b6 6868     		ldr	r0, [r5, #4]
 3615 00b8 2C4A     		ldr	r2, .L698+8
 3616 00ba 05B0     		add	sp, sp, #20
 3617              		@ sp needed
 3618 00bc BDE8F040 		pop	{r4, r5, r6, r7, lr}
 3619 00c0 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 3620              	.L675:
 3621 00c4 2A4B     		ldr	r3, .L698+12
 3622 00c6 F6E7     		b	.L658
 3623              	.L676:
 3624 00c8 2A4B     		ldr	r3, .L698+16
 3625 00ca F4E7     		b	.L658
 3626              	.L673:
 3627 00cc 2A4B     		ldr	r3, .L698+20
 3628 00ce F2E7     		b	.L658
 3629              	.L681:
 3630 00d0 2A4F     		ldr	r7, .L698+24
 3631              	.L665:
 3632 00d2 3278     		ldrb	r2, [r6]	@ zero_extendqisi2
 3633 00d4 52BB     		cbnz	r2, .L691
 3634 00d6 6868     		ldr	r0, [r5, #4]
 3635              	.L666:
 3636 00d8 224A     		ldr	r2, .L698
 3637 00da 3B46     		mov	r3, r7
 3638 00dc B0E7     		b	.L693
 3639              	.L694:
 3640 00de 41F4C071 		orr	r1, r1, #384
 3641 00e2 AAE7     		b	.L662
 3642              	.L679:
 3643 00e4 254F     		ldr	r7, .L698+24
 3644              	.L657:
 3645 00e6 1C2A     		cmp	r2, #28
 3646 00e8 34D0     		beq	.L697
 3647 00ea 692A     		cmp	r2, #105
 3648 00ec 03D0     		beq	.L664
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 65


 3649 00ee 40F2E633 		movw	r3, #998
 3650 00f2 9A42     		cmp	r2, r3
 3651 00f4 EDD1     		bne	.L665
 3652              	.L664:
 3653 00f6 6868     		ldr	r0, [r5, #4]
 3654 00f8 214A     		ldr	r2, .L698+28
 3655 00fa 0096     		str	r6, [sp]
 3656 00fc 3B46     		mov	r3, r7
 3657 00fe FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3658 0102 A5E7     		b	.L647
 3659              	.L696:
 3660 0104 0528     		cmp	r0, #5
 3661 0106 E1D8     		bhi	.L673
 3662 0108 01A3     		adr	r3, .L656
 3663 010a 53F820F0 		ldr	pc, [r3, r0, lsl #2]
 3664 010e 00BF     		.p2align 2
 3665              	.L656:
 3666 0110 2F000000 		.word	.L652+1
 3667 0114 2F000000 		.word	.L652+1
 3668 0118 29010000 		.word	.L677+1
 3669 011c C5000000 		.word	.L675+1
 3670 0120 C9000000 		.word	.L676+1
 3671 0124 B5000000 		.word	.L682+1
 3672              		.p2align 1
 3673              	.L677:
 3674 0128 164F     		ldr	r7, .L698+32
 3675 012a DCE7     		b	.L657
 3676              	.L691:
 3677 012c 2046     		mov	r0, r4
 3678 012e 0391     		str	r1, [sp, #12]
 3679 0130 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 3680 0134 0399     		ldr	r1, [sp, #12]
 3681 0136 30B1     		cbz	r0, .L667
 3682 0138 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 3683 013a 6868     		ldr	r0, [r5, #4]
 3684 013c 002B     		cmp	r3, #0
 3685 013e CBD0     		beq	.L666
 3686 0140 3346     		mov	r3, r6
 3687 0142 084A     		ldr	r2, .L698
 3688 0144 7CE7     		b	.L693
 3689              	.L667:
 3690 0146 6868     		ldr	r0, [r5, #4]
 3691 0148 0F4A     		ldr	r2, .L698+36
 3692 014a 0097     		str	r7, [sp]
 3693 014c 3346     		mov	r3, r6
 3694 014e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3695 0152 7DE7     		b	.L647
 3696              	.L697:
 3697 0154 6868     		ldr	r0, [r5, #4]
 3698 0156 0C4A     		ldr	r2, .L698+36
 3699 0158 0096     		str	r6, [sp]
 3700 015a 3B46     		mov	r3, r7
 3701 015c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3702 0160 76E7     		b	.L647
 3703              	.L699:
 3704 0162 00BF     		.align	2
 3705              	.L698:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 66


 3706 0164 30000000 		.word	.LC76
 3707 0168 08000000 		.word	.LC72
 3708 016c 44000000 		.word	.LC79
 3709 0170 1C000000 		.word	.LC74
 3710 0174 24000000 		.word	.LC75
 3711 0178 14000000 		.word	.LC73
 3712 017c 04000000 		.word	.LC71
 3713 0180 3C000000 		.word	.LC78
 3714 0184 00000000 		.word	.LC70
 3715 0188 34000000 		.word	.LC77
 3716              		.size	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc, .-_ZN6GCodes11HandleReplyER11GCodeBu
 3717              		.section	.text._ZN6GCodes11HandleReplyER11GCodeBufferP12OutputBuffer,"ax",%progbits
 3718              		.align	1
 3719              		.p2align 2,,3
 3720              		.global	_ZN6GCodes11HandleReplyER11GCodeBufferP12OutputBuffer
 3721              		.syntax unified
 3722              		.thumb
 3723              		.thumb_func
 3724              		.fpu fpv4-sp-d16
 3725              		.type	_ZN6GCodes11HandleReplyER11GCodeBufferP12OutputBuffer, %function
 3726              	_ZN6GCodes11HandleReplyER11GCodeBufferP12OutputBuffer:
 3727              		@ args = 0, pretend = 0, frame = 8
 3728              		@ frame_needed = 0, uses_anonymous_args = 0
 3729 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 3730 0002 83B0     		sub	sp, sp, #12
 3731 0004 0192     		str	r2, [sp, #4]
 3732 0006 9AB1     		cbz	r2, .L700
 3733 0008 036D     		ldr	r3, [r0, #80]
 3734 000a 4768     		ldr	r7, [r0, #4]
 3735 000c 1B68     		ldr	r3, [r3]
 3736 000e 8B42     		cmp	r3, r1
 3737 0010 0446     		mov	r4, r0
 3738 0012 0D46     		mov	r5, r1
 3739 0014 39D0     		beq	.L749
 3740 0016 C36C     		ldr	r3, [r0, #76]
 3741 0018 1B68     		ldr	r3, [r3]
 3742 001a 8B42     		cmp	r3, r1
 3743 001c 0AD0     		beq	.L703
 3744 001e 436C     		ldr	r3, [r0, #68]
 3745 0020 1B68     		ldr	r3, [r3]
 3746 0022 8B42     		cmp	r3, r1
 3747 0024 06D0     		beq	.L703
 3748 0026 8E8F     		ldrh	r6, [r1, #60]
 3749              	.L704:
 3750 0028 3146     		mov	r1, r6
 3751 002a 3846     		mov	r0, r7
 3752 002c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 3753              	.L700:
 3754 0030 03B0     		add	sp, sp, #12
 3755              		@ sp needed
 3756 0032 F0BD     		pop	{r4, r5, r6, r7, pc}
 3757              	.L703:
 3758 0034 3846     		mov	r0, r7
 3759 0036 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 3760 003a 95F85430 		ldrb	r3, [r5, #84]	@ zero_extendqisi2
 3761 003e AE8F     		ldrh	r6, [r5, #60]
 3762 0040 4D2B     		cmp	r3, #77
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 67


 3763 0042 06D0     		beq	.L750
 3764 0044 0528     		cmp	r0, #5
 3765 0046 32D8     		bhi	.L727
 3766 0048 DFE800F0 		tbb	[pc, r0]
 3767              	.L729:
 3768 004c 7E       		.byte	(.L708-.L729)/2
 3769 004d 7E       		.byte	(.L708-.L729)/2
 3770 004e 33       		.byte	(.L736-.L729)/2
 3771 004f 1B       		.byte	(.L730-.L729)/2
 3772 0050 1D       		.byte	(.L731-.L729)/2
 3773 0051 0F       		.byte	(.L737-.L729)/2
 3774              		.p2align 1
 3775              	.L750:
 3776 0052 AB6C     		ldr	r3, [r5, #72]
 3777 0054 40F2E632 		movw	r2, #998
 3778 0058 9342     		cmp	r3, r2
 3779 005a 61D0     		beq	.L751
 3780 005c 0528     		cmp	r0, #5
 3781 005e 26D8     		bhi	.L727
 3782 0060 DFE800F0 		tbb	[pc, r0]
 3783              	.L724:
 3784 0064 72       		.byte	(.L708-.L724)/2
 3785 0065 72       		.byte	(.L708-.L724)/2
 3786 0066 43       		.byte	(.L734-.L724)/2
 3787 0067 0F       		.byte	(.L730-.L724)/2
 3788 0068 11       		.byte	(.L731-.L724)/2
 3789 0069 03       		.byte	(.L737-.L724)/2
 3790              		.p2align 1
 3791              	.L737:
 3792 006a 4A4D     		ldr	r5, .L755
 3793              	.L711:
 3794 006c 01A8     		add	r0, sp, #4
 3795 006e FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3796 0072 2B46     		mov	r3, r5
 3797 0074 3146     		mov	r1, r6
 3798 0076 6068     		ldr	r0, [r4, #4]
 3799 0078 474A     		ldr	r2, .L755+4
 3800 007a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3801 007e 03B0     		add	sp, sp, #12
 3802              		@ sp needed
 3803 0080 F0BD     		pop	{r4, r5, r6, r7, pc}
 3804              	.L730:
 3805 0082 464D     		ldr	r5, .L755+8
 3806 0084 F2E7     		b	.L711
 3807              	.L731:
 3808 0086 464D     		ldr	r5, .L755+12
 3809 0088 F0E7     		b	.L711
 3810              	.L749:
 3811 008a 0021     		movs	r1, #0
 3812 008c 1046     		mov	r0, r2
 3813 008e 0092     		str	r2, [sp]
 3814 0090 FFF7FEFF 		bl	_ZN12OutputBufferixEj
 3815 0094 009A     		ldr	r2, [sp]
 3816 0096 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 3817 0098 1146     		mov	r1, r2
 3818 009a A3F17B02 		sub	r2, r3, #123
 3819 009e B2FA82F2 		clz	r2, r2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 68


 3820 00a2 5209     		lsrs	r2, r2, #5
 3821 00a4 3846     		mov	r0, r7
 3822 00a6 FFF7FEFF 		bl	_ZN8Platform14AppendAuxReplyEP12OutputBufferb
 3823 00aa 03B0     		add	sp, sp, #12
 3824              		@ sp needed
 3825 00ac F0BD     		pop	{r4, r5, r6, r7, pc}
 3826              	.L727:
 3827 00ae 3D4D     		ldr	r5, .L755+16
 3828 00b0 DCE7     		b	.L711
 3829              	.L736:
 3830 00b2 3D4F     		ldr	r7, .L755+20
 3831              	.L717:
 3832 00b4 0198     		ldr	r0, [sp, #4]
 3833 00b6 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 3834 00ba 20B1     		cbz	r0, .L721
 3835 00bc 2846     		mov	r0, r5
 3836 00be FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 3837 00c2 0028     		cmp	r0, #0
 3838 00c4 43D0     		beq	.L752
 3839              	.L721:
 3840 00c6 0198     		ldr	r0, [sp, #4]
 3841 00c8 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 3842 00cc 10BB     		cbnz	r0, .L748
 3843 00ce 01A8     		add	r0, sp, #4
 3844 00d0 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 3845              	.L746:
 3846 00d4 3A46     		mov	r2, r7
 3847 00d6 3146     		mov	r1, r6
 3848 00d8 6068     		ldr	r0, [r4, #4]
 3849 00da FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3850 00de 3146     		mov	r1, r6
 3851 00e0 6068     		ldr	r0, [r4, #4]
 3852 00e2 324A     		ldr	r2, .L755+24
 3853 00e4 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3854 00e8 A2E7     		b	.L700
 3855              	.L734:
 3856 00ea 2F4F     		ldr	r7, .L755+20
 3857              	.L710:
 3858 00ec 142B     		cmp	r3, #20
 3859 00ee 39D0     		beq	.L753
 3860 00f0 1C2B     		cmp	r3, #28
 3861 00f2 47D0     		beq	.L754
 3862 00f4 692B     		cmp	r3, #105
 3863 00f6 03D0     		beq	.L716
 3864 00f8 40F2E632 		movw	r2, #998
 3865 00fc 9342     		cmp	r3, r2
 3866 00fe D9D1     		bne	.L717
 3867              	.L716:
 3868 0100 3A46     		mov	r2, r7
 3869 0102 3146     		mov	r1, r6
 3870 0104 6068     		ldr	r0, [r4, #4]
 3871 0106 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3872 010a 294A     		ldr	r2, .L755+28
 3873              	.L747:
 3874 010c 6068     		ldr	r0, [r4, #4]
 3875 010e 3146     		mov	r1, r6
 3876 0110 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 69


 3877              	.L748:
 3878 0114 3146     		mov	r1, r6
 3879 0116 6068     		ldr	r0, [r4, #4]
 3880 0118 019A     		ldr	r2, [sp, #4]
 3881 011a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 3882 011e 87E7     		b	.L700
 3883              	.L751:
 3884 0120 0528     		cmp	r0, #5
 3885 0122 C4D8     		bhi	.L727
 3886 0124 01A2     		adr	r2, .L709
 3887 0126 52F820F0 		ldr	pc, [r2, r0, lsl #2]
 3888 012a 00BF     		.p2align 2
 3889              	.L709:
 3890 012c 49010000 		.word	.L708+1
 3891 0130 49010000 		.word	.L708+1
 3892 0134 45010000 		.word	.L732+1
 3893 0138 83000000 		.word	.L730+1
 3894 013c 87000000 		.word	.L731+1
 3895 0140 6B000000 		.word	.L737+1
 3896              		.p2align 1
 3897              	.L732:
 3898 0144 1B4F     		ldr	r7, .L755+32
 3899 0146 D1E7     		b	.L710
 3900              	.L708:
 3901 0148 6768     		ldr	r7, [r4, #4]
 3902 014a 019A     		ldr	r2, [sp, #4]
 3903 014c 6CE7     		b	.L704
 3904              	.L752:
 3905 014e 019A     		ldr	r2, [sp, #4]
 3906 0150 6068     		ldr	r0, [r4, #4]
 3907 0152 3146     		mov	r1, r6
 3908 0154 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 3909 0158 144A     		ldr	r2, .L755+24
 3910 015a 6068     		ldr	r0, [r4, #4]
 3911 015c 3146     		mov	r1, r6
 3912 015e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3913 0162 B7E7     		b	.L746
 3914              	.L753:
 3915 0164 6068     		ldr	r0, [r4, #4]
 3916 0166 144A     		ldr	r2, .L755+36
 3917 0168 3146     		mov	r1, r6
 3918 016a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3919 016e 019A     		ldr	r2, [sp, #4]
 3920 0170 6068     		ldr	r0, [r4, #4]
 3921 0172 3146     		mov	r1, r6
 3922 0174 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 3923 0178 104A     		ldr	r2, .L755+40
 3924 017a 6068     		ldr	r0, [r4, #4]
 3925 017c 3146     		mov	r1, r6
 3926 017e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3927 0182 A7E7     		b	.L746
 3928              	.L754:
 3929 0184 3A46     		mov	r2, r7
 3930 0186 3146     		mov	r1, r6
 3931 0188 6068     		ldr	r0, [r4, #4]
 3932 018a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3933 018e 074A     		ldr	r2, .L755+24
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 70


 3934 0190 BCE7     		b	.L747
 3935              	.L756:
 3936 0192 00BF     		.align	2
 3937              	.L755:
 3938 0194 08000000 		.word	.LC72
 3939 0198 44000000 		.word	.LC79
 3940 019c 1C000000 		.word	.LC74
 3941 01a0 24000000 		.word	.LC75
 3942 01a4 14000000 		.word	.LC73
 3943 01a8 04000000 		.word	.LC71
 3944 01ac 24000000 		.word	.LC82
 3945 01b0 28000000 		.word	.LC83
 3946 01b4 00000000 		.word	.LC70
 3947 01b8 00000000 		.word	.LC80
 3948 01bc 14000000 		.word	.LC81
 3949              		.size	_ZN6GCodes11HandleReplyER11GCodeBufferP12OutputBuffer, .-_ZN6GCodes11HandleReplyER11GCodeBuf
 3950              		.section	.text._ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef,"ax",%progbits
 3951              		.align	1
 3952              		.p2align 2,,3
 3953              		.global	_ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef
 3954              		.syntax unified
 3955              		.thumb
 3956              		.thumb_func
 3957              		.fpu fpv4-sp-d16
 3958              		.type	_ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef, %function
 3959              	_ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef:
 3960              		@ args = 0, pretend = 0, frame = 0
 3961              		@ frame_needed = 0, uses_anonymous_args = 0
 3962 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 3963 0004 0846     		mov	r0, r1
 3964 0006 87B0     		sub	sp, sp, #28
 3965 0008 0C46     		mov	r4, r1
 3966 000a 5021     		movs	r1, #80
 3967 000c 9146     		mov	r9, r2
 3968 000e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3969 0012 38B9     		cbnz	r0, .L800
 3970 0014 4821     		movs	r1, #72
 3971 0016 2046     		mov	r0, r4
 3972 0018 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3973 001c 10B9     		cbnz	r0, .L800
 3974 001e 0125     		movs	r5, #1
 3975 0020 2946     		mov	r1, r5
 3976 0022 0BE0     		b	.L760
 3977              	.L800:
 3978 0024 2046     		mov	r0, r4
 3979 0026 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3980 002a 0728     		cmp	r0, #7
 3981 002c 0546     		mov	r5, r0
 3982 002e 0146     		mov	r1, r0
 3983 0030 04D9     		bls	.L760
 3984 0032 A0F16403 		sub	r3, r0, #100
 3985 0036 072B     		cmp	r3, #7
 3986 0038 00F2D080 		bhi	.L803
 3987              	.L760:
 3988 003c 6F4B     		ldr	r3, .L810
 3989 003e 1869     		ldr	r0, [r3, #16]
 3990 0040 FFF7FEFF 		bl	_ZNK4Heat22AccessHeaterProtectionEj
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 71


 3991 0044 5021     		movs	r1, #80
 3992 0046 0646     		mov	r6, r0
 3993 0048 2046     		mov	r0, r4
 3994 004a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3995 004e 0028     		cmp	r0, #0
 3996 0050 45D1     		bne	.L762
 3997              	.L764:
 3998 0052 5821     		movs	r1, #88
 3999 0054 2046     		mov	r0, r4
 4000 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4001 005a 0027     		movs	r7, #0
 4002 005c 8046     		mov	r8, r0
 4003 005e 0028     		cmp	r0, #0
 4004 0060 54D1     		bne	.L804
 4005              	.L766:
 4006 0062 4121     		movs	r1, #65
 4007 0064 2046     		mov	r0, r4
 4008 0066 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4009 006a 8046     		mov	r8, r0
 4010 006c 0028     		cmp	r0, #0
 4011 006e 5FD1     		bne	.L805
 4012              	.L768:
 4013 0070 4321     		movs	r1, #67
 4014 0072 2046     		mov	r0, r4
 4015 0074 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4016 0078 0028     		cmp	r0, #0
 4017 007a 67D1     		bne	.L806
 4018              	.L770:
 4019 007c 5321     		movs	r1, #83
 4020 007e 2046     		mov	r0, r4
 4021 0080 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4022 0084 0028     		cmp	r0, #0
 4023 0086 6ED1     		bne	.L772
 4024 0088 2FBB     		cbnz	r7, .L802
 4025 008a 96F90840 		ldrsb	r4, [r6, #8]
 4026 008e 002C     		cmp	r4, #0
 4027 0090 C0F2AD80 		blt	.L807
 4028 0094 B37A     		ldrb	r3, [r6, #10]	@ zero_extendqisi2
 4029 0096 022B     		cmp	r3, #2
 4030 0098 96BF     		itet	ls
 4031 009a 594A     		ldrls	r2, .L810+4
 4032 009c DFF86881 		ldrhi	r8, .L810+12
 4033 00a0 52F82380 		ldrls	r8, [r2, r3, lsl #2]
 4034 00a4 F37A     		ldrb	r3, [r6, #11]	@ zero_extendqisi2
 4035 00a6 002B     		cmp	r3, #0
 4036 00a8 00F08780 		beq	.L786
 4037 00ac 554F     		ldr	r7, .L810+8
 4038 00ae 564A     		ldr	r2, .L810+12
 4039 00b0 012B     		cmp	r3, #1
 4040 00b2 18BF     		it	ne
 4041 00b4 1746     		movne	r7, r2
 4042              	.L782:
 4043 00b6 7068     		ldr	r0, [r6, #4]	@ float
 4044 00b8 FFF7FEFF 		bl	__aeabi_f2d
 4045 00bc CDE90187 		strd	r8, r7, [sp, #4]
 4046 00c0 CDE90401 		strd	r0, [sp, #16]
 4047 00c4 96F90930 		ldrsb	r3, [r6, #9]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 72


 4048 00c8 0093     		str	r3, [sp]
 4049 00ca 2A46     		mov	r2, r5
 4050 00cc 2346     		mov	r3, r4
 4051 00ce 4846     		mov	r0, r9
 4052 00d0 4E49     		ldr	r1, .L810+16
 4053 00d2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4054              	.L802:
 4055 00d6 0120     		movs	r0, #1
 4056              	.L761:
 4057 00d8 07B0     		add	sp, sp, #28
 4058              		@ sp needed
 4059 00da BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4060              	.L762:
 4061 00de 4821     		movs	r1, #72
 4062 00e0 2046     		mov	r0, r4
 4063 00e2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4064 00e6 0746     		mov	r7, r0
 4065 00e8 0028     		cmp	r0, #0
 4066 00ea B2D0     		beq	.L764
 4067 00ec 2046     		mov	r0, r4
 4068 00ee FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4069 00f2 0828     		cmp	r0, #8
 4070 00f4 6BDC     		bgt	.L801
 4071 00f6 41B2     		sxtb	r1, r0
 4072 00f8 3046     		mov	r0, r6
 4073 00fa FFF7FEFF 		bl	_ZN16HeaterProtection9SetHeaterEa
 4074 00fe 5821     		movs	r1, #88
 4075 0100 2046     		mov	r0, r4
 4076 0102 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4077 0106 8046     		mov	r8, r0
 4078 0108 0028     		cmp	r0, #0
 4079 010a AAD0     		beq	.L766
 4080              	.L804:
 4081 010c 2046     		mov	r0, r4
 4082 010e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4083 0112 0828     		cmp	r0, #8
 4084 0114 03D9     		bls	.L767
 4085 0116 A0F16403 		sub	r3, r0, #100
 4086 011a 092B     		cmp	r3, #9
 4087 011c 57D8     		bhi	.L801
 4088              	.L767:
 4089 011e 7072     		strb	r0, [r6, #9]
 4090 0120 4121     		movs	r1, #65
 4091 0122 2046     		mov	r0, r4
 4092 0124 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4093 0128 4746     		mov	r7, r8
 4094 012a 8046     		mov	r8, r0
 4095 012c 0028     		cmp	r0, #0
 4096 012e 9FD0     		beq	.L768
 4097              	.L805:
 4098 0130 2046     		mov	r0, r4
 4099 0132 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4100 0136 0228     		cmp	r0, #2
 4101 0138 0746     		mov	r7, r0
 4102 013a 38D8     		bhi	.L808
 4103              	.L769:
 4104 013c B772     		strb	r7, [r6, #10]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 73


 4105 013e 4321     		movs	r1, #67
 4106 0140 2046     		mov	r0, r4
 4107 0142 4746     		mov	r7, r8
 4108 0144 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4109 0148 0028     		cmp	r0, #0
 4110 014a 97D0     		beq	.L770
 4111              	.L806:
 4112 014c 2046     		mov	r0, r4
 4113 014e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4114 0152 0128     		cmp	r0, #1
 4115 0154 0546     		mov	r5, r0
 4116 0156 1DD8     		bhi	.L809
 4117 0158 F572     		strb	r5, [r6, #11]
 4118 015a 5321     		movs	r1, #83
 4119 015c 2046     		mov	r0, r4
 4120 015e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4121 0162 0028     		cmp	r0, #0
 4122 0164 B7D0     		beq	.L802
 4123              	.L772:
 4124 0166 2046     		mov	r0, r4
 4125 0168 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4126 016c FAEE047A 		vmov.f32	s15, #-1.0e+1
 4127 0170 B4EEE70A 		vcmpe.f32	s0, s15
 4128 0174 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4129 0178 21D9     		bls	.L773
 4130 017a DFED257A 		vldr.32	s15, .L810+20
 4131 017e B4EEE70A 		vcmpe.f32	s0, s15
 4132 0182 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4133 0186 1ADA     		bge	.L773
 4134 0188 0120     		movs	r0, #1
 4135 018a 86ED010A 		vstr.32	s0, [r6, #4]
 4136 018e 07B0     		add	sp, sp, #28
 4137              		@ sp needed
 4138 0190 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4139              	.L809:
 4140 0194 0246     		mov	r2, r0
 4141 0196 1F49     		ldr	r1, .L810+24
 4142 0198 4846     		mov	r0, r9
 4143 019a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4144 019e F572     		strb	r5, [r6, #11]
 4145 01a0 5321     		movs	r1, #83
 4146 01a2 2046     		mov	r0, r4
 4147 01a4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4148 01a8 0028     		cmp	r0, #0
 4149 01aa 94D0     		beq	.L802
 4150 01ac DBE7     		b	.L772
 4151              	.L808:
 4152 01ae 0246     		mov	r2, r0
 4153 01b0 1949     		ldr	r1, .L810+28
 4154 01b2 4846     		mov	r0, r9
 4155 01b4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4156 01b8 C0E7     		b	.L769
 4157              	.L786:
 4158 01ba 184F     		ldr	r7, .L810+32
 4159 01bc 7BE7     		b	.L782
 4160              	.L773:
 4161 01be 4846     		mov	r0, r9
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 74


 4162 01c0 1749     		ldr	r1, .L810+36
 4163 01c2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 4164 01c6 0220     		movs	r0, #2
 4165 01c8 07B0     		add	sp, sp, #28
 4166              		@ sp needed
 4167 01ca BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4168              	.L801:
 4169 01ce 0246     		mov	r2, r0
 4170 01d0 1449     		ldr	r1, .L810+40
 4171 01d2 4846     		mov	r0, r9
 4172 01d4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4173 01d8 0220     		movs	r0, #2
 4174 01da 7DE7     		b	.L761
 4175              	.L803:
 4176 01dc 0246     		mov	r2, r0
 4177 01de 1249     		ldr	r1, .L810+44
 4178 01e0 4846     		mov	r0, r9
 4179 01e2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4180 01e6 0220     		movs	r0, #2
 4181 01e8 07B0     		add	sp, sp, #28
 4182              		@ sp needed
 4183 01ea BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4184              	.L807:
 4185 01ee 2A46     		mov	r2, r5
 4186 01f0 4846     		mov	r0, r9
 4187 01f2 0E49     		ldr	r1, .L810+48
 4188 01f4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4189 01f8 0120     		movs	r0, #1
 4190 01fa 6DE7     		b	.L761
 4191              	.L811:
 4192              		.align	2
 4193              	.L810:
 4194 01fc 00000000 		.word	reprap
 4195 0200 00000000 		.word	.LANCHOR3
 4196 0204 14000000 		.word	.LC86
 4197 0208 00000000 		.word	.LC84
 4198 020c 00010000 		.word	.LC93
 4199 0210 0000FA44 		.word	1157234688
 4200 0214 88000000 		.word	.LC90
 4201 0218 60000000 		.word	.LC89
 4202 021c 0C000000 		.word	.LC85
 4203 0220 B0000000 		.word	.LC91
 4204 0224 44000000 		.word	.LC88
 4205 0228 20000000 		.word	.LC87
 4206 022c CC000000 		.word	.LC92
 4207              		.size	_ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef, .-_ZN6GCodes19SetHeaterProtectio
 4208              		.section	.text._ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef,"ax",%progbits
 4209              		.align	1
 4210              		.p2align 2,,3
 4211              		.global	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef
 4212              		.syntax unified
 4213              		.thumb
 4214              		.thumb_func
 4215              		.fpu fpv4-sp-d16
 4216              		.type	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef, %function
 4217              	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef:
 4218              		@ args = 0, pretend = 0, frame = 16
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 75


 4219              		@ frame_needed = 0, uses_anonymous_args = 0
 4220 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 4221 0004 0846     		mov	r0, r1
 4222 0006 8BB0     		sub	sp, sp, #44
 4223 0008 0C46     		mov	r4, r1
 4224 000a 4821     		movs	r1, #72
 4225 000c 1546     		mov	r5, r2
 4226 000e 1F46     		mov	r7, r3
 4227 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4228 0014 0028     		cmp	r0, #0
 4229 0016 4BD1     		bne	.L823
 4230              	.L813:
 4231 0018 072D     		cmp	r5, #7
 4232 001a 02D9     		bls	.L824
 4233              	.L812:
 4234 001c 0BB0     		add	sp, sp, #44
 4235              		@ sp needed
 4236 001e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4237              	.L824:
 4238 0022 DFF8D090 		ldr	r9, .L827+12
 4239 0026 D9F81030 		ldr	r3, [r9, #16]
 4240 002a 03EB8503 		add	r3, r3, r5, lsl #2
 4241 002e 0AAE     		add	r6, sp, #40
 4242 0030 D3F84480 		ldr	r8, [r3, #68]
 4243 0034 0021     		movs	r1, #0
 4244 0036 08F13000 		add	r0, r8, #48
 4245 003a FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
 4246 003e 0023     		movs	r3, #0
 4247 0040 06F80D3D 		strb	r3, [r6, #-13]!
 4248 0044 07AA     		add	r2, sp, #28
 4249 0046 3346     		mov	r3, r6
 4250 0048 5021     		movs	r1, #80
 4251 004a 2046     		mov	r0, r4
 4252 004c 8DED070A 		vstr.32	s0, [sp, #28]
 4253 0050 CDED080A 		vstr.32	s1, [sp, #32]
 4254 0054 8DED091A 		vstr.32	s2, [sp, #36]
 4255 0058 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4256 005c 3346     		mov	r3, r6
 4257 005e 08AA     		add	r2, sp, #32
 4258 0060 4921     		movs	r1, #73
 4259 0062 2046     		mov	r0, r4
 4260 0064 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4261 0068 3346     		mov	r3, r6
 4262 006a 2046     		mov	r0, r4
 4263 006c 09AA     		add	r2, sp, #36
 4264 006e 4421     		movs	r1, #68
 4265 0070 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4266 0074 9DF81B30 		ldrb	r3, [sp, #27]	@ zero_extendqisi2
 4267 0078 2BBB     		cbnz	r3, .L825
 4268 007a 98F84730 		ldrb	r3, [r8, #71]	@ zero_extendqisi2
 4269 007e E3B1     		cbz	r3, .L826
 4270 0080 98F84930 		ldrb	r3, [r8, #73]	@ zero_extendqisi2
 4271 0084 43B3     		cbz	r3, .L818
 4272 0086 0998     		ldr	r0, [sp, #36]	@ float
 4273 0088 FFF7FEFF 		bl	__aeabi_f2d
 4274 008c CDE90401 		strd	r0, [sp, #16]
 4275 0090 0898     		ldr	r0, [sp, #32]	@ float
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 76


 4276 0092 FFF7FEFF 		bl	__aeabi_f2d
 4277 0096 CDE90201 		strd	r0, [sp, #8]
 4278 009a 0798     		ldr	r0, [sp, #28]	@ float
 4279 009c FFF7FEFF 		bl	__aeabi_f2d
 4280 00a0 2A46     		mov	r2, r5
 4281 00a2 CDE90001 		strd	r0, [sp]
 4282 00a6 3846     		mov	r0, r7
 4283 00a8 0F49     		ldr	r1, .L827
 4284 00aa FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4285 00ae B5E7     		b	.L812
 4286              	.L823:
 4287 00b0 2046     		mov	r0, r4
 4288 00b2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4289 00b6 0546     		mov	r5, r0
 4290 00b8 AEE7     		b	.L813
 4291              	.L826:
 4292 00ba 2A46     		mov	r2, r5
 4293 00bc 3846     		mov	r0, r7
 4294 00be 0B49     		ldr	r1, .L827+4
 4295 00c0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4296 00c4 AAE7     		b	.L812
 4297              	.L825:
 4298 00c6 07AA     		add	r2, sp, #28
 4299 00c8 2946     		mov	r1, r5
 4300 00ca D9F81000 		ldr	r0, [r9, #16]
 4301 00ce FFF7FEFF 		bl	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters
 4302 00d2 0BB0     		add	sp, sp, #44
 4303              		@ sp needed
 4304 00d4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4305              	.L818:
 4306 00d8 3846     		mov	r0, r7
 4307 00da 2B46     		mov	r3, r5
 4308 00dc 2A46     		mov	r2, r5
 4309 00de 0449     		ldr	r1, .L827+8
 4310 00e0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4311 00e4 9AE7     		b	.L812
 4312              	.L828:
 4313 00e6 00BF     		.align	2
 4314              	.L827:
 4315 00e8 20000000 		.word	.LC95
 4316 00ec 00000000 		.word	.LC94
 4317 00f0 40000000 		.word	.LC96
 4318 00f4 00000000 		.word	reprap
 4319              		.size	_ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef, .-_ZN6GCodes16SetPidParametersER11
 4320              		.section	.text._ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef,"ax",%progbits
 4321              		.align	1
 4322              		.p2align 2,,3
 4323              		.global	_ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef
 4324              		.syntax unified
 4325              		.thumb
 4326              		.thumb_func
 4327              		.fpu fpv4-sp-d16
 4328              		.type	_ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef, %function
 4329              	_ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef:
 4330              		@ args = 0, pretend = 0, frame = 8
 4331              		@ frame_needed = 0, uses_anonymous_args = 0
 4332 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 77


 4333 0004 0846     		mov	r0, r1
 4334 0006 84B0     		sub	sp, sp, #16
 4335 0008 0C46     		mov	r4, r1
 4336 000a 5021     		movs	r1, #80
 4337 000c 1646     		mov	r6, r2
 4338 000e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4339 0012 18B9     		cbnz	r0, .L845
 4340 0014 0120     		movs	r0, #1
 4341              	.L830:
 4342 0016 04B0     		add	sp, sp, #16
 4343              		@ sp needed
 4344 0018 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4345              	.L845:
 4346 001c 2046     		mov	r0, r4
 4347 001e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4348 0022 0728     		cmp	r0, #7
 4349 0024 0546     		mov	r5, r0
 4350 0026 03D9     		bls	.L831
 4351 0028 A0F16403 		sub	r3, r0, #100
 4352 002c 092B     		cmp	r3, #9
 4353 002e 50D8     		bhi	.L832
 4354              	.L831:
 4355 0030 2B4B     		ldr	r3, .L846
 4356 0032 D3F81080 		ldr	r8, [r3, #16]
 4357 0036 2946     		mov	r1, r5
 4358 0038 4046     		mov	r0, r8
 4359 003a FFF7FEFF 		bl	_ZNK4Heat16GetHeaterChannelEj
 4360 003e 4FF0000C 		mov	ip, #0
 4361 0042 0746     		mov	r7, r0
 4362 0044 0DF10B03 		add	r3, sp, #11
 4363 0048 03AA     		add	r2, sp, #12
 4364 004a 5821     		movs	r1, #88
 4365 004c 2046     		mov	r0, r4
 4366 004e 0397     		str	r7, [sp, #12]
 4367 0050 8DF80BC0 		strb	ip, [sp, #11]
 4368 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 4369 0058 9DF80B30 		ldrb	r3, [sp, #11]	@ zero_extendqisi2
 4370 005c 5BB9     		cbnz	r3, .L833
 4371 005e 002F     		cmp	r7, #0
 4372 0060 09DA     		bge	.L833
 4373 0062 072D     		cmp	r5, #7
 4374 0064 2EDC     		bgt	.L834
 4375 0066 5221     		movs	r1, #82
 4376 0068 2046     		mov	r0, r4
 4377 006a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4378 006e E8B1     		cbz	r0, .L835
 4379              	.L837:
 4380 0070 0395     		str	r5, [sp, #12]
 4381 0072 2A46     		mov	r2, r5
 4382 0074 00E0     		b	.L836
 4383              	.L833:
 4384 0076 039A     		ldr	r2, [sp, #12]
 4385              	.L836:
 4386 0078 9742     		cmp	r7, r2
 4387 007a 0CD0     		beq	.L839
 4388 007c 2946     		mov	r1, r5
 4389 007e 4046     		mov	r0, r8
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 78


 4390 0080 FFF7FEFF 		bl	_ZN4Heat16SetHeaterChannelEji
 4391 0084 38B1     		cbz	r0, .L839
 4392 0086 2B46     		mov	r3, r5
 4393 0088 3046     		mov	r0, r6
 4394 008a 039A     		ldr	r2, [sp, #12]
 4395 008c 1549     		ldr	r1, .L846+4
 4396 008e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4397 0092 0220     		movs	r0, #2
 4398 0094 BFE7     		b	.L830
 4399              	.L839:
 4400 0096 0096     		str	r6, [sp]
 4401 0098 2346     		mov	r3, r4
 4402 009a 2A46     		mov	r2, r5
 4403 009c 4046     		mov	r0, r8
 4404 009e 40F23111 		movw	r1, #305
 4405 00a2 FFF7FEFF 		bl	_ZN4Heat21ConfigureHeaterSensorEjjR11GCodeBufferRK9StringRef
 4406 00a6 04B0     		add	sp, sp, #16
 4407              		@ sp needed
 4408 00a8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4409              	.L835:
 4410 00ac 5421     		movs	r1, #84
 4411 00ae 2046     		mov	r0, r4
 4412 00b0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4413 00b4 0028     		cmp	r0, #0
 4414 00b6 DBD1     		bne	.L837
 4415 00b8 4221     		movs	r1, #66
 4416 00ba 2046     		mov	r0, r4
 4417 00bc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4418 00c0 0028     		cmp	r0, #0
 4419 00c2 D5D1     		bne	.L837
 4420              	.L834:
 4421 00c4 2A46     		mov	r2, r5
 4422 00c6 3046     		mov	r0, r6
 4423 00c8 0749     		ldr	r1, .L846+8
 4424 00ca FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4425 00ce 0220     		movs	r0, #2
 4426 00d0 A1E7     		b	.L830
 4427              	.L832:
 4428 00d2 0246     		mov	r2, r0
 4429 00d4 0549     		ldr	r1, .L846+12
 4430 00d6 3046     		mov	r0, r6
 4431 00d8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4432 00dc 0220     		movs	r0, #2
 4433 00de 9AE7     		b	.L830
 4434              	.L847:
 4435              		.align	2
 4436              	.L846:
 4437 00e0 00000000 		.word	reprap
 4438 00e4 1C000000 		.word	.LC98
 4439 00e8 00000000 		.word	.LC97
 4440 00ec 4C000000 		.word	.LC99
 4441              		.size	_ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef, .-_ZN6GCodes19SetHeaterParameter
 4442              		.section	.text._ZN6GCodes14SetToolHeatersEP4Toolfb,"ax",%progbits
 4443              		.align	1
 4444              		.p2align 2,,3
 4445              		.global	_ZN6GCodes14SetToolHeatersEP4Toolfb
 4446              		.syntax unified
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 79


 4447              		.thumb
 4448              		.thumb_func
 4449              		.fpu fpv4-sp-d16
 4450              		.type	_ZN6GCodes14SetToolHeatersEP4Toolfb, %function
 4451              	_ZN6GCodes14SetToolHeatersEP4Toolfb:
 4452              		@ args = 0, pretend = 0, frame = 0
 4453              		@ frame_needed = 0, uses_anonymous_args = 0
 4454 0000 11B3     		cbz	r1, .L862
 4455 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 4456 0004 D1F89830 		ldr	r3, [r1, #152]
 4457 0008 EBB1     		cbz	r3, .L848
 4458 000a 0D46     		mov	r5, r1
 4459 000c 1746     		mov	r7, r2
 4460 000e 10EE106A 		vmov	r6, s0
 4461 0012 0024     		movs	r4, #0
 4462 0014 04E0     		b	.L852
 4463              	.L851:
 4464 0016 D5F89830 		ldr	r3, [r5, #152]
 4465 001a 0134     		adds	r4, r4, #1
 4466 001c A342     		cmp	r3, r4
 4467 001e 12D9     		bls	.L848
 4468              	.L852:
 4469 0020 00EE106A 		vmov	s0, r6
 4470 0024 2146     		mov	r1, r4
 4471 0026 2846     		mov	r0, r5
 4472 0028 FFF7FEFF 		bl	_ZN4Tool30SetToolHeaterActiveTemperatureEjf
 4473 002c 002F     		cmp	r7, #0
 4474 002e F2D0     		beq	.L851
 4475 0030 2146     		mov	r1, r4
 4476 0032 00EE106A 		vmov	s0, r6
 4477 0036 2846     		mov	r0, r5
 4478 0038 FFF7FEFF 		bl	_ZN4Tool31SetToolHeaterStandbyTemperatureEjf
 4479 003c D5F89830 		ldr	r3, [r5, #152]
 4480 0040 0134     		adds	r4, r4, #1
 4481 0042 A342     		cmp	r3, r4
 4482 0044 ECD8     		bhi	.L852
 4483              	.L848:
 4484 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 4485              	.L862:
 4486 0048 4068     		ldr	r0, [r0, #4]
 4487 004a 024A     		ldr	r2, .L863
 4488 004c 40F2B511 		movw	r1, #437
 4489 0050 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 4490              	.L864:
 4491              		.align	2
 4492              	.L863:
 4493 0054 00000000 		.word	.LC100
 4494              		.size	_ZN6GCodes14SetToolHeatersEP4Toolfb, .-_ZN6GCodes14SetToolHeatersEP4Toolfb
 4495              		.section	.text._ZN6GCodes15RetractFilamentER11GCodeBufferb,"ax",%progbits
 4496              		.align	1
 4497              		.p2align 2,,3
 4498              		.global	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 4499              		.syntax unified
 4500              		.thumb
 4501              		.thumb_func
 4502              		.fpu fpv4-sp-d16
 4503              		.type	_ZN6GCodes15RetractFilamentER11GCodeBufferb, %function
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 80


 4504              	_ZN6GCodes15RetractFilamentER11GCodeBufferb:
 4505              		@ args = 0, pretend = 0, frame = 0
 4506              		@ frame_needed = 0, uses_anonymous_args = 0
 4507 0000 90F83036 		ldrb	r3, [r0, #1584]	@ zero_extendqisi2
 4508 0004 9342     		cmp	r3, r2
 4509 0006 00F0BA80 		beq	.L885
 4510 000a 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4511 000e 00F21C67 		addw	r7, r0, #1564
 4512 0012 D7ED007A 		vldr.32	s15, [r7]
 4513 0016 F5EE407A 		vcmp.f32	s15, #0
 4514 001a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4515 001e 83B0     		sub	sp, sp, #12
 4516 0020 07D0     		beq	.L910
 4517              	.L867:
 4518 0022 836E     		ldr	r3, [r0, #104]
 4519 0024 9942     		cmp	r1, r3
 4520 0026 21D0     		beq	.L868
 4521 0028 D3B1     		cbz	r3, .L869
 4522              	.L870:
 4523 002a 0020     		movs	r0, #0
 4524              	.L866:
 4525 002c 03B0     		add	sp, sp, #12
 4526              		@ sp needed
 4527 002e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4528              	.L910:
 4529 0032 00F22C63 		addw	r3, r0, #1580
 4530 0036 D3ED007A 		vldr.32	s15, [r3]
 4531 003a F5EE407A 		vcmp.f32	s15, #0
 4532 003e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4533 0042 EED1     		bne	.L867
 4534 0044 42B9     		cbnz	r2, .L887
 4535 0046 00F5C463 		add	r3, r0, #1568
 4536 004a D3ED007A 		vldr.32	s15, [r3]
 4537 004e F5EE407A 		vcmp.f32	s15, #0
 4538 0052 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4539 0056 E4D1     		bne	.L867
 4540              	.L887:
 4541 0058 0120     		movs	r0, #1
 4542 005a 03B0     		add	sp, sp, #12
 4543              		@ sp needed
 4544 005c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4545              	.L869:
 4546 0060 8166     		str	r1, [r0, #104]
 4547 0062 8C68     		ldr	r4, [r1, #8]
 4548 0064 E368     		ldr	r3, [r4, #12]
 4549 0066 43F00103 		orr	r3, r3, #1
 4550 006a E360     		str	r3, [r4, #12]
 4551              	.L868:
 4552 006c D0F860B1 		ldr	fp, [r0, #352]
 4553 0070 BBF1000F 		cmp	fp, #0
 4554 0074 D9D1     		bne	.L870
 4555 0076 DFF8E481 		ldr	r8, .L912
 4556 007a 0446     		mov	r4, r0
 4557 007c 4046     		mov	r0, r8
 4558 007e 0E46     		mov	r6, r1
 4559 0080 1546     		mov	r5, r2
 4560 0082 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 81


 4561 0086 8246     		mov	r10, r0
 4562 0088 4046     		mov	r0, r8
 4563 008a FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 4564 008e 8146     		mov	r9, r0
 4565 0090 5346     		mov	r3, r10
 4566 0092 D8F80C00 		ldr	r0, [r8, #12]
 4567 0096 CDF80090 		str	r9, [sp]
 4568 009a 5A46     		mov	r2, fp
 4569 009c 04F1EC01 		add	r1, r4, #236
 4570 00a0 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 4571 00a4 D4F85C33 		ldr	r3, [r4, #860]
 4572 00a8 0B2B     		cmp	r3, #11
 4573 00aa 09D8     		bhi	.L871
 4574 00ac 3B33     		adds	r3, r3, #59
 4575 00ae 0021     		movs	r1, #0
 4576 00b0 04EB8303 		add	r3, r4, r3, lsl #2
 4577 00b4 04F58E72 		add	r2, r4, #284
 4578              	.L872:
 4579 00b8 43F8041B 		str	r1, [r3], #4	@ float
 4580 00bc 9342     		cmp	r3, r2
 4581 00be FBD1     		bne	.L872
 4582              	.L871:
 4583 00c0 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 4584 00c4 A26C     		ldr	r2, [r4, #72]
 4585 00c6 03F0CD03 		and	r3, r3, #205
 4586 00ca 0021     		movs	r1, #0
 4587 00cc 43F00103 		orr	r3, r3, #1
 4588 00d0 84F85E11 		strb	r1, [r4, #350]
 4589 00d4 84F85F31 		strb	r3, [r4, #351]
 4590 00d8 1368     		ldr	r3, [r2]
 4591 00da C4F85811 		str	r1, [r4, #344]
 4592 00de 4FF0FF30 		mov	r0, #-1
 4593 00e2 0121     		movs	r1, #1
 4594 00e4 0222     		movs	r2, #2
 4595 00e6 B342     		cmp	r3, r6
 4596 00e8 C4F84801 		str	r0, [r4, #328]
 4597 00ec C4F85011 		str	r1, [r4, #336]
 4598 00f0 C4F85421 		str	r2, [r4, #340]
 4599 00f4 73D0     		beq	.L911
 4600              	.L873:
 4601 00f6 C4F84801 		str	r0, [r4, #328]
 4602 00fa C4F850A1 		str	r10, [r4, #336]
 4603 00fe C4F85491 		str	r9, [r4, #340]
 4604 0102 002D     		cmp	r5, #0
 4605 0104 3DD0     		beq	.L874
 4606 0106 D8F8EC10 		ldr	r1, [r8, #236]
 4607 010a 59B3     		cbz	r1, .L875
 4608 010c D1F89430 		ldr	r3, [r1, #148]
 4609 0110 B3B1     		cbz	r3, .L876
 4610 0112 D7ED007A 		vldr.32	s15, [r7]
 4611 0116 D4F85C73 		ldr	r7, [r4, #860]
 4612 011a F1EE677A 		vneg.f32	s15, s15
 4613 011e 01F1AF02 		add	r2, r1, #175
 4614              	.L877:
 4615 0122 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 4616 0124 3B44     		add	r3, r3, r7
 4617 0126 04EB8303 		add	r3, r4, r3, lsl #2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 82


 4618 012a C3ED3B7A 		vstr.32	s15, [r3, #236]
 4619 012e D1F89400 		ldr	r0, [r1, #148]
 4620 0132 A2F1AE03 		sub	r3, r2, #174
 4621 0136 5B1A     		subs	r3, r3, r1
 4622 0138 8342     		cmp	r3, r0
 4623 013a 02F10102 		add	r2, r2, #1
 4624 013e F0D3     		bcc	.L877
 4625              	.L876:
 4626 0140 04F22463 		addw	r3, r4, #1572
 4627 0144 94F85F21 		ldrb	r2, [r4, #351]	@ zero_extendqisi2
 4628 0148 1968     		ldr	r1, [r3]	@ float
 4629 014a C4F84011 		str	r1, [r4, #320]	@ float
 4630 014e 6FF38202 		bfc	r2, #2, #1
 4631 0152 0123     		movs	r3, #1
 4632 0154 84F85F21 		strb	r2, [r4, #351]
 4633 0158 C4F86431 		str	r3, [r4, #356]
 4634              		.syntax unified
 4635              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 4636 015c BFF35F8F 		dmb
 4637              	@ 0 "" 2
 4638              		.thumb
 4639              		.syntax unified
 4640 0160 C4F86031 		str	r3, [r4, #352]
 4641              	.L875:
 4642 0164 04F22C63 		addw	r3, r4, #1580
 4643 0168 D3ED007A 		vldr.32	s15, [r3]
 4644 016c F5EEC07A 		vcmpe.f32	s15, #0
 4645 0170 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4646 0174 2FDD     		ble	.L879
 4647 0176 B368     		ldr	r3, [r6, #8]
 4648 0178 2D22     		movs	r2, #45
 4649 017a 1A75     		strb	r2, [r3, #20]
 4650 017c 2BE0     		b	.L879
 4651              	.L885:
 4652 017e 0120     		movs	r0, #1
 4653 0180 7047     		bx	lr
 4654              	.L874:
 4655 0182 04F22C63 		addw	r3, r4, #1580
 4656 0186 D3ED007A 		vldr.32	s15, [r3]
 4657 018a F5EEC07A 		vcmpe.f32	s15, #0
 4658 018e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4659 0192 4FF00003 		mov	r3, #0
 4660 0196 2BDD     		ble	.L905
 4661 0198 D4ED3D7A 		vldr.32	s15, [r4, #244]
 4662 019c 94ED397A 		vldr.32	s14, [r4, #228]
 4663 01a0 94F85F21 		ldrb	r2, [r4, #351]	@ zero_extendqisi2
 4664 01a4 6168     		ldr	r1, [r4, #4]
 4665 01a6 77EEC77A 		vsub.f32	s15, s15, s14
 4666 01aa D1F88411 		ldr	r1, [r1, #388]	@ float
 4667 01ae C4F8E430 		str	r3, [r4, #228]	@ float
 4668 01b2 65F38202 		bfi	r2, r5, #2, #1
 4669 01b6 0123     		movs	r3, #1
 4670 01b8 C4F84011 		str	r1, [r4, #320]	@ float
 4671 01bc C4ED3D7A 		vstr.32	s15, [r4, #244]
 4672 01c0 84F85F21 		strb	r2, [r4, #351]
 4673 01c4 C4F86431 		str	r3, [r4, #356]
 4674              		.syntax unified
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 83


 4675              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 4676 01c8 BFF35F8F 		dmb
 4677              	@ 0 "" 2
 4678              		.thumb
 4679              		.syntax unified
 4680 01cc C4F86031 		str	r3, [r4, #352]
 4681 01d0 B368     		ldr	r3, [r6, #8]
 4682 01d2 2E22     		movs	r2, #46
 4683 01d4 1A75     		strb	r2, [r3, #20]
 4684              	.L879:
 4685 01d6 84F83056 		strb	r5, [r4, #1584]
 4686 01da 0120     		movs	r0, #1
 4687 01dc 26E7     		b	.L866
 4688              	.L911:
 4689 01de A068     		ldr	r0, [r4, #8]
 4690 01e0 0368     		ldr	r3, [r0]
 4691 01e2 9B68     		ldr	r3, [r3, #8]
 4692 01e4 9847     		blx	r3
 4693 01e6 0146     		mov	r1, r0
 4694 01e8 3046     		mov	r0, r6
 4695 01ea FFF7FEFF 		bl	_ZNK11GCodeBuffer15GetFilePositionEj
 4696 01ee 82E7     		b	.L873
 4697              	.L905:
 4698 01f0 D8F8EC10 		ldr	r1, [r8, #236]
 4699 01f4 0029     		cmp	r1, #0
 4700 01f6 EED0     		beq	.L879
 4701 01f8 D1F89430 		ldr	r3, [r1, #148]
 4702 01fc D3B1     		cbz	r3, .L883
 4703 01fe 04F5C463 		add	r3, r4, #1568
 4704 0202 93ED007A 		vldr.32	s14, [r3]
 4705 0206 D7ED007A 		vldr.32	s15, [r7]
 4706 020a D4F85C63 		ldr	r6, [r4, #860]
 4707 020e 77EE877A 		vadd.f32	s15, s15, s14
 4708 0212 01F1AF02 		add	r2, r1, #175
 4709              	.L884:
 4710 0216 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 4711 0218 3344     		add	r3, r3, r6
 4712 021a 04EB8303 		add	r3, r4, r3, lsl #2
 4713 021e C3ED3B7A 		vstr.32	s15, [r3, #236]
 4714 0222 D1F89400 		ldr	r0, [r1, #148]
 4715 0226 A2F1AE03 		sub	r3, r2, #174
 4716 022a 5B1A     		subs	r3, r3, r1
 4717 022c 9842     		cmp	r0, r3
 4718 022e 02F10102 		add	r2, r2, #1
 4719 0232 F0D8     		bhi	.L884
 4720              	.L883:
 4721 0234 04F5C562 		add	r2, r4, #1576
 4722 0238 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 4723 023c 1168     		ldr	r1, [r2]	@ float
 4724 023e C4F84011 		str	r1, [r4, #320]	@ float
 4725 0242 43F00403 		orr	r3, r3, #4
 4726 0246 0122     		movs	r2, #1
 4727 0248 84F85F31 		strb	r3, [r4, #351]
 4728 024c C4F86421 		str	r2, [r4, #356]
 4729              		.syntax unified
 4730              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 4731 0250 BFF35F8F 		dmb
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 84


 4732              	@ 0 "" 2
 4733              		.thumb
 4734              		.syntax unified
 4735 0254 C4F86021 		str	r2, [r4, #352]
 4736 0258 BDE7     		b	.L879
 4737              	.L913:
 4738 025a 00BF     		.align	2
 4739              	.L912:
 4740 025c 00000000 		.word	reprap
 4741              		.size	_ZN6GCodes15RetractFilamentER11GCodeBufferb, .-_ZN6GCodes15RetractFilamentER11GCodeBufferb
 4742              		.section	.text._ZNK6GCodes26GetRawExtruderTotalByDriveEj,"ax",%progbits
 4743              		.align	1
 4744              		.p2align 2,,3
 4745              		.global	_ZNK6GCodes26GetRawExtruderTotalByDriveEj
 4746              		.syntax unified
 4747              		.thumb
 4748              		.thumb_func
 4749              		.fpu fpv4-sp-d16
 4750              		.type	_ZNK6GCodes26GetRawExtruderTotalByDriveEj, %function
 4751              	_ZNK6GCodes26GetRawExtruderTotalByDriveEj:
 4752              		@ args = 0, pretend = 0, frame = 0
 4753              		@ frame_needed = 0, uses_anonymous_args = 0
 4754              		@ link register save eliminated.
 4755 0000 D0F86433 		ldr	r3, [r0, #868]
 4756 0004 8B42     		cmp	r3, r1
 4757 0006 86BF     		itte	hi
 4758 0008 00EB8100 		addhi	r0, r0, r1, lsl #2
 4759 000c 90EDE40A 		vldrhi.32	s0, [r0, #912]
 4760 0010 9FED010A 		vldrls.32	s0, .L917
 4761 0014 7047     		bx	lr
 4762              	.L918:
 4763 0016 00BF     		.align	2
 4764              	.L917:
 4765 0018 00000000 		.word	0
 4766              		.size	_ZNK6GCodes26GetRawExtruderTotalByDriveEj, .-_ZNK6GCodes26GetRawExtruderTotalByDriveEj
 4767              		.section	.text._ZNK6GCodes15IsCodeQueueIdleEv,"ax",%progbits
 4768              		.align	1
 4769              		.p2align 2,,3
 4770              		.global	_ZNK6GCodes15IsCodeQueueIdleEv
 4771              		.syntax unified
 4772              		.thumb
 4773              		.thumb_func
 4774              		.fpu fpv4-sp-d16
 4775              		.type	_ZNK6GCodes15IsCodeQueueIdleEv, %function
 4776              	_ZNK6GCodes15IsCodeQueueIdleEv:
 4777              		@ args = 0, pretend = 0, frame = 0
 4778              		@ frame_needed = 0, uses_anonymous_args = 0
 4779              		@ link register save eliminated.
 4780 0000 836D     		ldr	r3, [r0, #88]
 4781 0002 1B68     		ldr	r3, [r3]
 4782 0004 93F82830 		ldrb	r3, [r3, #40]	@ zero_extendqisi2
 4783 0008 083B     		subs	r3, r3, #8
 4784 000a 012B     		cmp	r3, #1
 4785 000c 03D9     		bls	.L920
 4786 000e D0F8B806 		ldr	r0, [r0, #1720]
 4787 0012 FFF7FEBF 		b	_ZNK10GCodeQueue6IsIdleEv
 4788              	.L920:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 85


 4789 0016 0020     		movs	r0, #0
 4790 0018 7047     		bx	lr
 4791              		.size	_ZNK6GCodes15IsCodeQueueIdleEv, .-_ZNK6GCodes15IsCodeQueueIdleEv
 4792 001a 00BF     		.section	.text._ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolbf,"ax",%progbits
 4793              		.align	1
 4794              		.p2align 2,,3
 4795              		.global	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolbf
 4796              		.syntax unified
 4797              		.thumb
 4798              		.thumb_func
 4799              		.fpu fpv4-sp-d16
 4800              		.type	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolbf, %function
 4801              	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolbf:
 4802              		@ args = 0, pretend = 0, frame = 0
 4803              		@ frame_needed = 0, uses_anonymous_args = 0
 4804 0000 39B3     		cbz	r1, .L936
 4805 0002 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 4806 0006 D1F89830 		ldr	r3, [r1, #152]
 4807 000a FBB1     		cbz	r3, .L922
 4808 000c 6FF0B808 		mvn	r8, #184
 4809 0010 0D46     		mov	r5, r1
 4810 0012 10EE107A 		vmov	r7, s0
 4811 0016 1646     		mov	r6, r2
 4812 0018 DFF83C90 		ldr	r9, .L941
 4813 001c A8EB0108 		sub	r8, r8, r1
 4814 0020 01F1B904 		add	r4, r1, #185
 4815 0024 03E0     		b	.L924
 4816              	.L940:
 4817 0026 D5F89820 		ldr	r2, [r5, #152]
 4818 002a 9A42     		cmp	r2, r3
 4819 002c 0ED9     		bls	.L922
 4820              	.L924:
 4821 002e 14F9011B 		ldrsb	r1, [r4], #1
 4822 0032 D9F81000 		ldr	r0, [r9, #16]
 4823 0036 00EE107A 		vmov	s0, r7
 4824 003a 3246     		mov	r2, r6
 4825 003c FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEabf
 4826 0040 08EB0403 		add	r3, r8, r4
 4827 0044 0028     		cmp	r0, #0
 4828 0046 EED1     		bne	.L940
 4829 0048 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 4830              	.L922:
 4831 004c 0120     		movs	r0, #1
 4832 004e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 4833              	.L936:
 4834 0052 0120     		movs	r0, #1
 4835 0054 7047     		bx	lr
 4836              	.L942:
 4837 0056 00BF     		.align	2
 4838              	.L941:
 4839 0058 00000000 		.word	reprap
 4840              		.size	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolbf, .-_ZNK6GCodes28ToolHeatersAtSetTemperat
 4841              		.section	.text._ZN6GCodes18SetMachinePositionEPKfb,"ax",%progbits
 4842              		.align	1
 4843              		.p2align 2,,3
 4844              		.global	_ZN6GCodes18SetMachinePositionEPKfb
 4845              		.syntax unified
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 86


 4846              		.thumb
 4847              		.thumb_func
 4848              		.fpu fpv4-sp-d16
 4849              		.type	_ZN6GCodes18SetMachinePositionEPKfb, %function
 4850              	_ZN6GCodes18SetMachinePositionEPKfb:
 4851              		@ args = 0, pretend = 0, frame = 0
 4852              		@ frame_needed = 0, uses_anonymous_args = 0
 4853              		@ link register save eliminated.
 4854 0000 10B4     		push	{r4}
 4855 0002 044B     		ldr	r3, .L945
 4856 0004 0C68     		ldr	r4, [r1]	@ unaligned
 4857 0006 C0F8EC40 		str	r4, [r0, #236]	@ unaligned
 4858 000a 5DF8044B 		ldr	r4, [sp], #4
 4859 000e D868     		ldr	r0, [r3, #12]
 4860 0010 FFF7FEBF 		b	_ZN4Move14SetNewPositionEPKfb
 4861              	.L946:
 4862              		.align	2
 4863              	.L945:
 4864 0014 00000000 		.word	reprap
 4865              		.size	_ZN6GCodes18SetMachinePositionEPKfb, .-_ZN6GCodes18SetMachinePositionEPKfb
 4866              		.section	.text._ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer,"ax",%progbits
 4867              		.align	1
 4868              		.p2align 2,,3
 4869              		.global	_ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer
 4870              		.syntax unified
 4871              		.thumb
 4872              		.thumb_func
 4873              		.fpu fpv4-sp-d16
 4874              		.type	_ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer, %function
 4875              	_ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer:
 4876              		@ args = 0, pretend = 0, frame = 0
 4877              		@ frame_needed = 0, uses_anonymous_args = 0
 4878              		@ link register save eliminated.
 4879 0000 D0F86033 		ldr	r3, [r0, #864]
 4880 0004 70B4     		push	{r4, r5, r6}
 4881 0006 63B1     		cbz	r3, .L948
 4882 0008 00F1C005 		add	r5, r0, #192
 4883 000c 0C46     		mov	r4, r1
 4884 000e 0023     		movs	r3, #0
 4885              	.L949:
 4886 0010 55F8046B 		ldr	r6, [r5], #4	@ float
 4887 0014 44F8046B 		str	r6, [r4], #4	@ float
 4888 0018 D0F86063 		ldr	r6, [r0, #864]
 4889 001c 0133     		adds	r3, r3, #1
 4890 001e 9E42     		cmp	r6, r3
 4891 0020 F6D8     		bhi	.L949
 4892              	.L948:
 4893 0022 9368     		ldr	r3, [r2, #8]
 4894 0024 5B68     		ldr	r3, [r3, #4]	@ float
 4895 0026 4B62     		str	r3, [r1, #36]	@ float
 4896 0028 D0F88C33 		ldr	r3, [r0, #908]	@ float
 4897 002c 8B62     		str	r3, [r1, #40]	@ float
 4898 002e B0F85C31 		ldrh	r3, [r0, #348]
 4899 0032 0B87     		strh	r3, [r1, #56]	@ movhi
 4900 0034 70BC     		pop	{r4, r5, r6}
 4901 0036 7047     		bx	lr
 4902              		.size	_ZNK6GCodes12SavePositionER12RestorePointRK11GCodeBuffer, .-_ZNK6GCodes12SavePositionER12Res
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 87


 4903              		.section	.text._ZN6GCodes15RestorePositionERK12RestorePointP11GCodeBuffer,"ax",%progbits
 4904              		.align	1
 4905              		.p2align 2,,3
 4906              		.global	_ZN6GCodes15RestorePositionERK12RestorePointP11GCodeBuffer
 4907              		.syntax unified
 4908              		.thumb
 4909              		.thumb_func
 4910              		.fpu fpv4-sp-d16
 4911              		.type	_ZN6GCodes15RestorePositionERK12RestorePointP11GCodeBuffer, %function
 4912              	_ZN6GCodes15RestorePositionERK12RestorePointP11GCodeBuffer:
 4913              		@ args = 0, pretend = 0, frame = 0
 4914              		@ frame_needed = 0, uses_anonymous_args = 0
 4915              		@ link register save eliminated.
 4916 0000 70B4     		push	{r4, r5, r6}
 4917 0002 D0F86063 		ldr	r6, [r0, #864]
 4918 0006 56B1     		cbz	r6, .L956
 4919 0008 01EB8606 		add	r6, r1, r6, lsl #2
 4920 000c 0B46     		mov	r3, r1
 4921 000e 00F1C004 		add	r4, r0, #192
 4922              	.L957:
 4923 0012 53F8045B 		ldr	r5, [r3], #4	@ float
 4924 0016 44F8045B 		str	r5, [r4], #4	@ float
 4925 001a B342     		cmp	r3, r6
 4926 001c F9D1     		bne	.L957
 4927              	.L956:
 4928 001e 12B1     		cbz	r2, .L958
 4929 0020 9368     		ldr	r3, [r2, #8]
 4930 0022 4A6A     		ldr	r2, [r1, #36]	@ float
 4931 0024 5A60     		str	r2, [r3, #4]	@ float
 4932              	.L958:
 4933 0026 0B8F     		ldrh	r3, [r1, #56]
 4934 0028 A0F85C31 		strh	r3, [r0, #348]	@ movhi
 4935 002c 70BC     		pop	{r4, r5, r6}
 4936 002e 7047     		bx	lr
 4937              		.size	_ZN6GCodes15RestorePositionERK12RestorePointP11GCodeBuffer, .-_ZN6GCodes15RestorePositionERK
 4938              		.section	.text._ZN6GCodes19ToolOffsetTransformEPKfPfm,"ax",%progbits
 4939              		.align	1
 4940              		.p2align 2,,3
 4941              		.global	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 4942              		.syntax unified
 4943              		.thumb
 4944              		.thumb_func
 4945              		.fpu fpv4-sp-d16
 4946              		.type	_ZN6GCodes19ToolOffsetTransformEPKfPfm, %function
 4947              	_ZN6GCodes19ToolOffsetTransformEPKfPfm:
 4948              		@ args = 0, pretend = 0, frame = 0
 4949              		@ frame_needed = 0, uses_anonymous_args = 0
 4950 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4951 0004 414C     		ldr	r4, .L992
 4952 0006 D0F860C3 		ldr	ip, [r0, #864]
 4953 000a D4F8EC50 		ldr	r5, [r4, #236]
 4954 000e 002D     		cmp	r5, #0
 4955 0010 5FD0     		beq	.L990
 4956 0012 D5E92889 		ldrd	r8, r9, [r5, #160]
 4957 0016 BCF1000F 		cmp	ip, #0
 4958 001a 40D0     		beq	.L969
 4959 001c 0C35     		adds	r5, r5, #12
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 88


 4960 001e C9F3400A 		ubfx	r10, r9, #1, #1
 4961 0022 00F55A77 		add	r7, r0, #872
 4962 0026 1646     		mov	r6, r2
 4963 0028 0024     		movs	r4, #0
 4964 002a 01F1040B 		add	fp, r1, #4
 4965 002e 08F0010E 		and	lr, r8, #1
 4966              	.L977:
 4967 0032 002C     		cmp	r4, #0
 4968 0034 43D1     		bne	.L971
 4969 0036 BEF1000F 		cmp	lr, #0
 4970 003a 27D0     		beq	.L973
 4971              	.L972:
 4972 003c D0F8C0C3 		ldr	ip, [r0, #960]
 4973 0040 95ED007A 		vldr.32	s14, [r5]
 4974 0044 0CEBCC0C 		add	ip, ip, ip, lsl #3
 4975 0048 A444     		add	ip, ip, r4
 4976 004a 00EB8C0C 		add	ip, r0, ip, lsl #2
 4977 004e DCEDF17A 		vldr.32	s15, [ip, #964]
 4978 0052 23FA04FC 		lsr	ip, r3, r4
 4979 0056 1CF0010F 		tst	ip, #1
 4980 005a 77EEC77A 		vsub.f32	s15, s15, s14
 4981 005e 09D1     		bne	.L976
 4982 0060 28FA04FC 		lsr	ip, r8, r4
 4983 0064 1CF0010F 		tst	ip, #1
 4984 0068 2FD1     		bne	.L978
 4985 006a 29FA04FC 		lsr	ip, r9, r4
 4986 006e 1CF0010F 		tst	ip, #1
 4987 0072 2CD1     		bne	.L991
 4988              	.L976:
 4989 0074 01EB840C 		add	ip, r1, r4, lsl #2
 4990              	.L975:
 4991 0078 DCED006A 		vldr.32	s13, [ip]
 4992 007c 97ED007A 		vldr.32	s14, [r7]
 4993 0080 E6EE877A 		vfma.f32	s15, s13, s14
 4994 0084 C6ED007A 		vstr.32	s15, [r6]
 4995 0088 D0F860C3 		ldr	ip, [r0, #864]
 4996              	.L973:
 4997 008c 0134     		adds	r4, r4, #1
 4998 008e A445     		cmp	ip, r4
 4999 0090 07F10407 		add	r7, r7, #4
 5000 0094 06F10406 		add	r6, r6, #4
 5001 0098 05F10405 		add	r5, r5, #4
 5002 009c C9D8     		bhi	.L977
 5003              	.L969:
 5004 009e 00F5B563 		add	r3, r0, #1448
 5005 00a2 D3ED006A 		vldr.32	s13, [r3]
 5006 00a6 90ED397A 		vldr.32	s14, [r0, #228]
 5007 00aa D2ED027A 		vldr.32	s15, [r2, #8]
 5008 00ae 37EE267A 		vadd.f32	s14, s14, s13
 5009 00b2 77EE877A 		vadd.f32	s15, s15, s14
 5010 00b6 C2ED027A 		vstr.32	s15, [r2, #8]
 5011 00ba BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5012              	.L971:
 5013 00be 012C     		cmp	r4, #1
 5014 00c0 BCD1     		bne	.L972
 5015 00c2 BAF1000F 		cmp	r10, #0
 5016 00c6 E1D0     		beq	.L973
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 89


 5017 00c8 B8E7     		b	.L972
 5018              	.L978:
 5019 00ca 8C46     		mov	ip, r1
 5020 00cc D4E7     		b	.L975
 5021              	.L991:
 5022 00ce DC46     		mov	ip, fp
 5023 00d0 D2E7     		b	.L975
 5024              	.L990:
 5025 00d2 BCF1000F 		cmp	ip, #0
 5026 00d6 E2D0     		beq	.L969
 5027 00d8 00F55A76 		add	r6, r0, #872
 5028 00dc 1446     		mov	r4, r2
 5029              	.L970:
 5030 00de D0F8C033 		ldr	r3, [r0, #960]
 5031 00e2 F1EC016A 		vldmia.32	r1!, {s13}
 5032 00e6 B6EC017A 		vldmia.32	r6!, {s14}
 5033 00ea 03EBC303 		add	r3, r3, r3, lsl #3
 5034 00ee 2B44     		add	r3, r3, r5
 5035 00f0 00EB8303 		add	r3, r0, r3, lsl #2
 5036 00f4 D3EDF17A 		vldr.32	s15, [r3, #964]
 5037 00f8 E6EE877A 		vfma.f32	s15, s13, s14
 5038 00fc 0135     		adds	r5, r5, #1
 5039 00fe E4EC017A 		vstmia.32	r4!, {s15}
 5040 0102 D0F86033 		ldr	r3, [r0, #864]
 5041 0106 AB42     		cmp	r3, r5
 5042 0108 E9D8     		bhi	.L970
 5043 010a C8E7     		b	.L969
 5044              	.L993:
 5045              		.align	2
 5046              	.L992:
 5047 010c 00000000 		.word	reprap
 5048              		.size	_ZN6GCodes19ToolOffsetTransformEPKfPfm, .-_ZN6GCodes19ToolOffsetTransformEPKfPfm
 5049              		.section	.text._ZN6GCodes13EndSimulationEP11GCodeBuffer,"ax",%progbits
 5050              		.align	1
 5051              		.p2align 2,,3
 5052              		.global	_ZN6GCodes13EndSimulationEP11GCodeBuffer
 5053              		.syntax unified
 5054              		.thumb
 5055              		.thumb_func
 5056              		.fpu fpv4-sp-d16
 5057              		.type	_ZN6GCodes13EndSimulationEP11GCodeBuffer, %function
 5058              	_ZN6GCodes13EndSimulationEP11GCodeBuffer:
 5059              		@ args = 0, pretend = 0, frame = 0
 5060              		@ frame_needed = 0, uses_anonymous_args = 0
 5061 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 5062 0002 D0F86053 		ldr	r5, [r0, #864]
 5063 0006 0F46     		mov	r7, r1
 5064 0008 0446     		mov	r4, r0
 5065 000a 00F1C001 		add	r1, r0, #192
 5066 000e 00F5D876 		add	r6, r0, #432
 5067 0012 4DB1     		cbz	r5, .L995
 5068 0014 01EB8505 		add	r5, r1, r5, lsl #2
 5069 0018 0B46     		mov	r3, r1
 5070 001a 3246     		mov	r2, r6
 5071              	.L996:
 5072 001c 52F8040B 		ldr	r0, [r2], #4	@ float
 5073 0020 43F8040B 		str	r0, [r3], #4	@ float
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 90


 5074 0024 AB42     		cmp	r3, r5
 5075 0026 F9D1     		bne	.L996
 5076              	.L995:
 5077 0028 1FB1     		cbz	r7, .L997
 5078 002a BB68     		ldr	r3, [r7, #8]
 5079 002c D4F8D421 		ldr	r2, [r4, #468]	@ float
 5080 0030 5A60     		str	r2, [r3, #4]	@ float
 5081              	.L997:
 5082 0032 B4F8E831 		ldrh	r3, [r4, #488]
 5083 0036 A4F85C31 		strh	r3, [r4, #348]	@ movhi
 5084 003a 04F1EC02 		add	r2, r4, #236
 5085 003e 0023     		movs	r3, #0
 5086 0040 2046     		mov	r0, r4
 5087 0042 FFF7FEFF 		bl	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 5088 0046 054B     		ldr	r3, .L1006
 5089 0048 3146     		mov	r1, r6
 5090 004a D868     		ldr	r0, [r3, #12]
 5091 004c 0122     		movs	r2, #1
 5092 004e FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 5093 0052 D4F8AC31 		ldr	r3, [r4, #428]
 5094 0056 C4F82C35 		str	r3, [r4, #1324]
 5095 005a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5096              	.L1007:
 5097              		.align	2
 5098              	.L1006:
 5099 005c 00000000 		.word	reprap
 5100              		.size	_ZN6GCodes13EndSimulationEP11GCodeBuffer, .-_ZN6GCodes13EndSimulationEP11GCodeBuffer
 5101              		.section	.text._ZN6GCodes26ToolOffsetInverseTransformEPKfPf,"ax",%progbits
 5102              		.align	1
 5103              		.p2align 2,,3
 5104              		.global	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5105              		.syntax unified
 5106              		.thumb
 5107              		.thumb_func
 5108              		.fpu fpv4-sp-d16
 5109              		.type	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf, %function
 5110              	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf:
 5111              		@ args = 0, pretend = 0, frame = 0
 5112              		@ frame_needed = 0, uses_anonymous_args = 0
 5113 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 5114 0004 544E     		ldr	r6, .L1036
 5115 0006 D6F8EC50 		ldr	r5, [r6, #236]
 5116 000a 0446     		mov	r4, r0
 5117 000c 0F46     		mov	r7, r1
 5118 000e 9046     		mov	r8, r2
 5119 0010 002D     		cmp	r5, #0
 5120 0012 00F08180 		beq	.L1035
 5121 0016 3046     		mov	r0, r6
 5122 0018 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 5123 001c 8146     		mov	r9, r0
 5124 001e 3046     		mov	r0, r6
 5125 0020 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 5126 0024 D4F86033 		ldr	r3, [r4, #864]
 5127 0028 002B     		cmp	r3, #0
 5128 002a 61D0     		beq	.L1011
 5129 002c DFED4B5A 		vldr.32	s11, .L1036+4
 5130 0030 0026     		movs	r6, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 91


 5131 0032 3946     		mov	r1, r7
 5132 0034 B0EE655A 		vmov.f32	s10, s11
 5133 0038 0C35     		adds	r5, r5, #12
 5134 003a 3246     		mov	r2, r6
 5135 003c B646     		mov	lr, r6
 5136 003e 04F55A77 		add	r7, r4, #872
 5137 0042 C446     		mov	ip, r8
 5138              	.L1016:
 5139 0044 D7ED007A 		vldr.32	s15, [r7]
 5140 0048 91ED006A 		vldr.32	s12, [r1]
 5141 004c D4F8C033 		ldr	r3, [r4, #960]
 5142 0050 F5EC016A 		vldmia.32	r5!, {s13}
 5143 0054 86EE277A 		vdiv.f32	s14, s12, s15
 5144 0058 03EBC303 		add	r3, r3, r3, lsl #3
 5145 005c 3344     		add	r3, r3, r6
 5146 005e 04EB8303 		add	r3, r4, r3, lsl #2
 5147 0062 20FA06FA 		lsr	r10, r0, r6
 5148 0066 D3EDF17A 		vldr.32	s15, [r3, #964]
 5149 006a 77EEE67A 		vsub.f32	s15, s15, s13
 5150 006e 29FA06F3 		lsr	r3, r9, r6
 5151 0072 37EE677A 		vsub.f32	s14, s14, s15
 5152 0076 13F0010F 		tst	r3, #1
 5153 007a ACEC017A 		vstmia.32	ip!, {s14}
 5154 007e 06F10106 		add	r6, r6, #1
 5155 0082 0BD0     		beq	.L1014
 5156 0084 91ED006A 		vldr.32	s12, [r1]
 5157 0088 D7ED006A 		vldr.32	s13, [r7]
 5158 008c 86EE267A 		vdiv.f32	s14, s12, s13
 5159 0090 0EF1010E 		add	lr, lr, #1
 5160 0094 37EE677A 		vsub.f32	s14, s14, s15
 5161 0098 35EE075A 		vadd.f32	s10, s10, s14
 5162              	.L1014:
 5163 009c 1AF0010F 		tst	r10, #1
 5164 00a0 0AD0     		beq	.L1015
 5165 00a2 91ED006A 		vldr.32	s12, [r1]
 5166 00a6 D7ED006A 		vldr.32	s13, [r7]
 5167 00aa 86EE267A 		vdiv.f32	s14, s12, s13
 5168 00ae 0132     		adds	r2, r2, #1
 5169 00b0 77EE677A 		vsub.f32	s15, s14, s15
 5170 00b4 75EEA75A 		vadd.f32	s11, s11, s15
 5171              	.L1015:
 5172 00b8 D4F86033 		ldr	r3, [r4, #864]
 5173 00bc B342     		cmp	r3, r6
 5174 00be 01F10401 		add	r1, r1, #4
 5175 00c2 07F10407 		add	r7, r7, #4
 5176 00c6 BDD8     		bhi	.L1016
 5177 00c8 BEF1000F 		cmp	lr, #0
 5178 00cc 07D0     		beq	.L1017
 5179 00ce 07EE90EA 		vmov	s15, lr	@ int
 5180 00d2 F8EE677A 		vcvt.f32.u32	s15, s15
 5181 00d6 85EE277A 		vdiv.f32	s14, s10, s15
 5182 00da 88ED007A 		vstr.32	s14, [r8]
 5183              	.L1017:
 5184 00de 3AB1     		cbz	r2, .L1011
 5185 00e0 07EE902A 		vmov	s15, r2	@ int
 5186 00e4 F8EE677A 		vcvt.f32.u32	s15, s15
 5187 00e8 85EEA77A 		vdiv.f32	s14, s11, s15
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 92


 5188 00ec 88ED017A 		vstr.32	s14, [r8, #4]
 5189              	.L1011:
 5190 00f0 04F5B563 		add	r3, r4, #1448
 5191 00f4 D3ED006A 		vldr.32	s13, [r3]
 5192 00f8 94ED397A 		vldr.32	s14, [r4, #228]
 5193 00fc 94EDDC6A 		vldr.32	s12, [r4, #880]
 5194 0100 D8ED027A 		vldr.32	s15, [r8, #8]
 5195 0104 37EE267A 		vadd.f32	s14, s14, s13
 5196 0108 C7EE066A 		vdiv.f32	s13, s14, s12
 5197 010c 77EEE67A 		vsub.f32	s15, s15, s13
 5198 0110 C8ED027A 		vstr.32	s15, [r8, #8]
 5199 0114 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 5200              	.L1035:
 5201 0118 D0F86033 		ldr	r3, [r0, #864]
 5202 011c 002B     		cmp	r3, #0
 5203 011e E7D0     		beq	.L1011
 5204 0120 00F55A70 		add	r0, r0, #872
 5205              	.L1013:
 5206 0124 D4F8C033 		ldr	r3, [r4, #960]
 5207 0128 F1EC017A 		vldmia.32	r1!, {s15}
 5208 012c F0EC016A 		vldmia.32	r0!, {s13}
 5209 0130 03EBC303 		add	r3, r3, r3, lsl #3
 5210 0134 2B44     		add	r3, r3, r5
 5211 0136 04EB8303 		add	r3, r4, r3, lsl #2
 5212 013a 93EDF17A 		vldr.32	s14, [r3, #964]
 5213 013e 77EEC77A 		vsub.f32	s15, s15, s14
 5214 0142 0135     		adds	r5, r5, #1
 5215 0144 87EEA67A 		vdiv.f32	s14, s15, s13
 5216 0148 A2EC017A 		vstmia.32	r2!, {s14}
 5217 014c D4F86033 		ldr	r3, [r4, #864]
 5218 0150 AB42     		cmp	r3, r5
 5219 0152 E7D8     		bhi	.L1013
 5220 0154 CCE7     		b	.L1011
 5221              	.L1037:
 5222 0156 00BF     		.align	2
 5223              	.L1036:
 5224 0158 00000000 		.word	reprap
 5225 015c 00000000 		.word	0
 5226              		.size	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf, .-_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5227              		.section	.text._ZN6GCodes5ResetEv,"ax",%progbits
 5228              		.align	1
 5229              		.p2align 2,,3
 5230              		.global	_ZN6GCodes5ResetEv
 5231              		.syntax unified
 5232              		.thumb
 5233              		.thumb_func
 5234              		.fpu fpv4-sp-d16
 5235              		.type	_ZN6GCodes5ResetEv, %function
 5236              	_ZN6GCodes5ResetEv:
 5237              		@ args = 0, pretend = 0, frame = 0
 5238              		@ frame_needed = 0, uses_anonymous_args = 0
 5239 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 5240 0002 0446     		mov	r4, r0
 5241 0004 00F11805 		add	r5, r0, #24
 5242 0008 00F13C06 		add	r6, r0, #60
 5243              	.L1040:
 5244 000c 55F8043F 		ldr	r3, [r5, #4]!
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 93


 5245 0010 1846     		mov	r0, r3
 5246 0012 0BB1     		cbz	r3, .L1039
 5247 0014 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 5248              	.L1039:
 5249 0018 B542     		cmp	r5, r6
 5250 001a F7D1     		bne	.L1040
 5251 001c 236D     		ldr	r3, [r4, #80]
 5252 001e 1B68     		ldr	r3, [r3]
 5253 0020 13B1     		cbz	r3, .L1041
 5254 0022 0122     		movs	r2, #1
 5255 0024 83F8F620 		strb	r2, [r3, #246]
 5256              	.L1041:
 5257 0028 D4F80805 		ldr	r0, [r4, #1288]
 5258 002c 0025     		movs	r5, #0
 5259 002e 6566     		str	r5, [r4, #100]
 5260 0030 18B1     		cbz	r0, .L1042
 5261 0032 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 5262 0036 C4F80855 		str	r5, [r4, #1288]
 5263              	.L1042:
 5264 003a 04F25C53 		addw	r3, r4, #1372
 5265 003e 5D49     		ldr	r1, .L1068
 5266 0040 1960     		str	r1, [r3]	@ float
 5267 0042 04F28452 		addw	r2, r4, #1412
 5268 0046 1046     		mov	r0, r2
 5269 0048 04F5AC63 		add	r3, r4, #1376
 5270 004c 4FF07E51 		mov	r1, #1065353216
 5271              	.L1043:
 5272 0050 42F8041B 		str	r1, [r2], #4	@ float
 5273 0054 43F8041B 		str	r1, [r3], #4	@ float
 5274 0058 8342     		cmp	r3, r0
 5275 005a F9D1     		bne	.L1043
 5276 005c 0021     		movs	r1, #0
 5277 005e 04F55A72 		add	r2, r4, #872
 5278 0062 04F56376 		add	r6, r4, #908
 5279 0066 4FF07E55 		mov	r5, #1065353216
 5280              	.L1045:
 5281 006a 1046     		mov	r0, r2
 5282 006c A2F55A73 		sub	r3, r2, #872
 5283 0070 40F8045B 		str	r5, [r0], #4	@ float
 5284 0074 A2F50972 		sub	r2, r2, #548
 5285              	.L1044:
 5286 0078 C3F8C413 		str	r1, [r3, #964]	@ float
 5287 007c 2433     		adds	r3, r3, #36
 5288 007e 9342     		cmp	r3, r2
 5289 0080 FAD1     		bne	.L1044
 5290 0082 B042     		cmp	r0, r6
 5291 0084 0246     		mov	r2, r0
 5292 0086 F0D1     		bne	.L1045
 5293 0088 0023     		movs	r3, #0
 5294 008a 04F1EC07 		add	r7, r4, #236
 5295 008e C4F8C033 		str	r3, [r4, #960]
 5296 0092 0025     		movs	r5, #0
 5297 0094 3B46     		mov	r3, r7
 5298 0096 04F58E72 		add	r2, r4, #284
 5299              	.L1046:
 5300 009a 43F8045B 		str	r5, [r3], #4	@ float
 5301 009e 9342     		cmp	r3, r2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 94


 5302 00a0 FBD1     		bne	.L1046
 5303 00a2 FFF7FEFF 		bl	vTaskSuspendAll
 5304 00a6 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 5305 00aa C4F87051 		str	r5, [r4, #368]	@ float
 5306 00ae 0026     		movs	r6, #0
 5307 00b0 66F30003 		bfi	r3, r6, #0, #1
 5308 00b4 84F85F31 		strb	r3, [r4, #351]
 5309 00b8 C4F86061 		str	r6, [r4, #352]
 5310 00bc 84F8A961 		strb	r6, [r4, #425]
 5311 00c0 84F8A861 		strb	r6, [r4, #424]
 5312 00c4 C4F85861 		str	r6, [r4, #344]
 5313 00c8 84F85E61 		strb	r6, [r4, #350]
 5314 00cc FFF7FEFF 		bl	xTaskResumeAll
 5315 00d0 04F5B563 		add	r3, r4, #1448
 5316 00d4 384A     		ldr	r2, .L1068+4
 5317 00d6 1D60     		str	r5, [r3]	@ float
 5318 00d8 D268     		ldr	r2, [r2, #12]
 5319 00da 3848     		ldr	r0, .L1068+8
 5320 00dc C4F8E450 		str	r5, [r4, #228]	@ float
 5321 00e0 0121     		movs	r1, #1
 5322 00e2 0223     		movs	r3, #2
 5323 00e4 C4F84451 		str	r5, [r4, #324]	@ float
 5324 00e8 C4F85011 		str	r1, [r4, #336]
 5325 00ec C4F8E800 		str	r0, [r4, #232]	@ float
 5326 00f0 C4F85431 		str	r3, [r4, #340]
 5327 00f4 A4F85C61 		strh	r6, [r4, #348]	@ movhi
 5328 00f8 D2F8740A 		ldr	r0, [r2, #2676]
 5329 00fc D4F86013 		ldr	r1, [r4, #864]
 5330 0100 0368     		ldr	r3, [r0]
 5331 0102 3A46     		mov	r2, r7
 5332 0104 1B6B     		ldr	r3, [r3, #48]
 5333 0106 9847     		blx	r3
 5334 0108 3946     		mov	r1, r7
 5335 010a 04F1C002 		add	r2, r4, #192
 5336 010e 2046     		mov	r0, r4
 5337 0110 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5338 0114 04F55576 		add	r6, r4, #852
 5339 0118 04F5F675 		add	r5, r4, #492
 5340              	.L1047:
 5341 011c 2846     		mov	r0, r5
 5342 011e 3C35     		adds	r5, r5, #60
 5343 0120 FFF7FEFF 		bl	_ZN12RestorePoint4InitEv
 5344 0124 AE42     		cmp	r6, r5
 5345 0126 F9D1     		bne	.L1047
 5346 0128 04F5C863 		add	r3, r4, #1600
 5347 012c 04F5D762 		add	r2, r4, #1720
 5348 0130 0025     		movs	r5, #0
 5349              	.L1048:
 5350 0132 03F8045C 		strb	r5, [r3, #-4]
 5351 0136 43E90355 		strd	r5, r5, [r3, #-12]
 5352 013a 0C33     		adds	r3, r3, #12
 5353 013c 9342     		cmp	r3, r2
 5354 013e F8D1     		bne	.L1048
 5355 0140 04F21462 		addw	r2, r4, #1556
 5356 0144 0021     		movs	r1, #0
 5357 0146 4FF0FF33 		mov	r3, #-1
 5358 014a C4F8B056 		str	r5, [r4, #1712]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 95


 5359 014e 84F81856 		strb	r5, [r4, #1560]
 5360 0152 84F81A56 		strb	r5, [r4, #1562]
 5361 0156 84F81956 		strb	r5, [r4, #1561]
 5362 015a 1160     		str	r1, [r2]	@ float
 5363 015c 6068     		ldr	r0, [r4, #4]
 5364 015e C4F84831 		str	r3, [r4, #328]
 5365 0162 84F8B650 		strb	r5, [r4, #182]
 5366 0166 84F8BB50 		strb	r5, [r4, #187]
 5367 016a 84F8BA50 		strb	r5, [r4, #186]
 5368 016e 84F81056 		strb	r5, [r4, #1552]
 5369 0172 84F8B850 		strb	r5, [r4, #184]
 5370 0176 84F8B750 		strb	r5, [r4, #183]
 5371 017a 84F81156 		strb	r5, [r4, #1553]
 5372 017e FFF7FEFF 		bl	_ZNK8Platform19GetAllEndstopStatesEv
 5373 0182 84F8B456 		strb	r5, [r4, #1716]
 5374 0186 C4F8AC06 		str	r0, [r4, #1708]
 5375 018a 84F82457 		strb	r5, [r4, #1828]
 5376 018e D4F8B806 		ldr	r0, [r4, #1720]
 5377 0192 FFF7FEFF 		bl	_ZN10GCodeQueue5ClearEv
 5378 0196 84F84757 		strb	r5, [r4, #1863]
 5379 019a 84F84557 		strb	r5, [r4, #1861]
 5380 019e 84F84657 		strb	r5, [r4, #1862]
 5381 01a2 04F16403 		add	r3, r4, #100
 5382 01a6 0022     		movs	r2, #0
 5383 01a8 B034     		adds	r4, r4, #176
 5384              	.L1049:
 5385 01aa 43F8042F 		str	r2, [r3, #4]!
 5386 01ae A342     		cmp	r3, r4
 5387 01b0 FBD1     		bne	.L1049
 5388 01b2 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5389              	.L1069:
 5390              		.align	2
 5391              	.L1068:
 5392 01b4 0000C842 		.word	1120403456
 5393 01b8 00000000 		.word	reprap
 5394 01bc 000080BF 		.word	-1082130432
 5395              		.size	_ZN6GCodes5ResetEv, .-_ZN6GCodes5ResetEv
 5396              		.section	.text._ZN6GCodes4InitEv,"ax",%progbits
 5397              		.align	1
 5398              		.p2align 2,,3
 5399              		.global	_ZN6GCodes4InitEv
 5400              		.syntax unified
 5401              		.thumb
 5402              		.thumb_func
 5403              		.fpu fpv4-sp-d16
 5404              		.type	_ZN6GCodes4InitEv, %function
 5405              	_ZN6GCodes4InitEv:
 5406              		@ args = 0, pretend = 0, frame = 0
 5407              		@ frame_needed = 0, uses_anonymous_args = 0
 5408 0000 38B5     		push	{r3, r4, r5, lr}
 5409 0002 0023     		movs	r3, #0
 5410 0004 C0F81235 		str	r3, [r0, #1298]	@ unaligned
 5411 0008 C0F81C35 		str	r3, [r0, #1308]	@ unaligned
 5412 000c 0321     		movs	r1, #3
 5413 000e 45F65812 		movw	r2, #22872
 5414 0012 C0F81635 		str	r3, [r0, #1302]	@ unaligned
 5415 0016 C0F82035 		str	r3, [r0, #1312]	@ unaligned
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 96


 5416 001a 4568     		ldr	r5, [r0, #4]
 5417 001c C0F85C13 		str	r1, [r0, #860]
 5418 0020 5A23     		movs	r3, #90
 5419 0022 C0F86013 		str	r1, [r0, #864]
 5420 0026 A0F81025 		strh	r2, [r0, #1296]	@ movhi
 5421 002a A0F81A25 		strh	r2, [r0, #1306]	@ movhi
 5422 002e 80F81235 		strb	r3, [r0, #1298]
 5423 0032 80F81C35 		strb	r3, [r0, #1308]
 5424 0036 D5F81C34 		ldr	r3, [r5, #1052]
 5425 003a 033B     		subs	r3, r3, #3
 5426 003c 092B     		cmp	r3, #9
 5427 003e 28BF     		it	cs
 5428 0040 0923     		movcs	r3, #9
 5429 0042 0446     		mov	r4, r0
 5430 0044 C0F86433 		str	r3, [r0, #868]
 5431 0048 FFF7FEFF 		bl	_ZN6GCodes5ResetEv
 5432 004c 0023     		movs	r3, #0
 5433 004e 314A     		ldr	r2, .L1076
 5434 0050 C4F8B433 		str	r3, [r4, #948]	@ float
 5435 0054 4FF07E50 		mov	r0, #1065353216
 5436 0058 1946     		mov	r1, r3	@ float
 5437 005a C4F8BC23 		str	r2, [r4, #956]	@ float
 5438 005e C4F88C33 		str	r3, [r4, #908]	@ float
 5439 0062 C4F8B803 		str	r0, [r4, #952]	@ float
 5440 0066 04F56473 		add	r3, r4, #912
 5441 006a 04F56D72 		add	r2, r4, #948
 5442              	.L1071:
 5443 006e 43F8041B 		str	r1, [r3], #4	@ float
 5444 0072 9342     		cmp	r3, r2
 5445 0074 FBD1     		bne	.L1071
 5446 0076 0023     		movs	r3, #0
 5447 0078 0121     		movs	r1, #1
 5448 007a 84F8B930 		strb	r3, [r4, #185]
 5449 007e 84F84837 		strb	r3, [r4, #1864]
 5450 0082 84F8BA30 		strb	r3, [r4, #186]
 5451 0086 C4F82C35 		str	r3, [r4, #1324]
 5452 008a 84F8B510 		strb	r1, [r4, #181]
 5453 008e 84F82515 		strb	r1, [r4, #1317]
 5454 0092 84F82415 		strb	r1, [r4, #1316]
 5455 0096 0022     		movs	r2, #0
 5456 0098 04F5A663 		add	r3, r4, #1328
 5457 009c 04F25451 		addw	r1, r4, #1364
 5458              	.L1072:
 5459 00a0 43F8042B 		str	r2, [r3], #4	@ float
 5460 00a4 9942     		cmp	r1, r3
 5461 00a6 FBD1     		bne	.L1072
 5462 00a8 04F5AB63 		add	r3, r4, #1368
 5463 00ac 1A48     		ldr	r0, .L1076+4
 5464 00ae 1A60     		str	r2, [r3]	@ float
 5465 00b0 04F21C63 		addw	r3, r4, #1564
 5466 00b4 0A60     		str	r2, [r1]	@ float
 5467 00b6 4FF08041 		mov	r1, #1073741824
 5468 00ba 1960     		str	r1, [r3]	@ float
 5469 00bc 04F5C461 		add	r1, r4, #1568
 5470 00c0 04F22C63 		addw	r3, r4, #1580
 5471 00c4 0A60     		str	r2, [r1]	@ float
 5472 00c6 1A60     		str	r2, [r3]	@ float
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 97


 5473 00c8 04F5C561 		add	r1, r4, #1576
 5474 00cc 04F22462 		addw	r2, r4, #1572
 5475 00d0 0860     		str	r0, [r1]	@ float
 5476 00d2 1060     		str	r0, [r2]	@ float
 5477 00d4 04F22C72 		addw	r2, r4, #1836
 5478 00d8 0023     		movs	r3, #0
 5479 00da 104D     		ldr	r5, .L1076+8
 5480 00dc 84F83036 		strb	r3, [r4, #1584]
 5481 00e0 FF21     		movs	r1, #255
 5482 00e2 84F84417 		strb	r1, [r4, #1860]
 5483 00e6 1560     		str	r5, [r2]	@ float
 5484 00e8 0D49     		ldr	r1, .L1076+12
 5485 00ea E26C     		ldr	r2, [r4, #76]
 5486 00ec 0D48     		ldr	r0, .L1076+16
 5487 00ee 84F83037 		strb	r3, [r4, #1840]
 5488 00f2 C4F83437 		str	r3, [r4, #1844]
 5489 00f6 C4F83807 		str	r0, [r4, #1848]
 5490 00fa CB69     		ldr	r3, [r1, #28]
 5491 00fc 1268     		ldr	r2, [r2]
 5492 00fe 1A60     		str	r2, [r3]
 5493 0100 0949     		ldr	r1, .L1076+20
 5494 0102 0A48     		ldr	r0, .L1076+24
 5495 0104 FFF7FEFF 		bl	_ZN9UARTClass20SetInterruptCallbackEPFvPS_E
 5496 0108 0749     		ldr	r1, .L1076+20
 5497 010a 0948     		ldr	r0, .L1076+28
 5498 010c BDE83840 		pop	{r3, r4, r5, lr}
 5499 0110 FFF7FEBF 		b	_ZN9UARTClass20SetInterruptCallbackEPFvPS_E
 5500              	.L1077:
 5501              		.align	2
 5502              	.L1076:
 5503 0114 CDCC4C3E 		.word	1045220557
 5504 0118 56558541 		.word	1099257174
 5505 011c 00007F43 		.word	1132396544
 5506 0120 00000000 		.word	reprap
 5507 0124 C0270900 		.word	600000
 5508 0128 00000000 		.word	_ZN6GCodes20CommandEmergencyStopEP9UARTClass
 5509 012c 00000000 		.word	Serial
 5510 0130 00000000 		.word	Serial2
 5511              		.size	_ZN6GCodes4InitEv, .-_ZN6GCodes4InitEv
 5512              		.section	.text._ZN6GCodes15DoEmergencyStopEv,"ax",%progbits
 5513              		.align	1
 5514              		.p2align 2,,3
 5515              		.global	_ZN6GCodes15DoEmergencyStopEv
 5516              		.syntax unified
 5517              		.thumb
 5518              		.thumb_func
 5519              		.fpu fpv4-sp-d16
 5520              		.type	_ZN6GCodes15DoEmergencyStopEv, %function
 5521              	_ZN6GCodes15DoEmergencyStopEv:
 5522              		@ args = 0, pretend = 0, frame = 0
 5523              		@ frame_needed = 0, uses_anonymous_args = 0
 5524 0000 10B5     		push	{r4, lr}
 5525 0002 0446     		mov	r4, r0
 5526 0004 0648     		ldr	r0, .L1080
 5527 0006 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 5528 000a 2046     		mov	r0, r4
 5529 000c FFF7FEFF 		bl	_ZN6GCodes5ResetEv
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 98


 5530 0010 6068     		ldr	r0, [r4, #4]
 5531 0012 044A     		ldr	r2, .L1080+4
 5532 0014 3521     		movs	r1, #53
 5533 0016 BDE81040 		pop	{r4, lr}
 5534 001a FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 5535              	.L1081:
 5536 001e 00BF     		.align	2
 5537              	.L1080:
 5538 0020 00000000 		.word	reprap
 5539 0024 00000000 		.word	.LC101
 5540              		.size	_ZN6GCodes15DoEmergencyStopEv, .-_ZN6GCodes15DoEmergencyStopEv
 5541              		.section	.text._ZN6GCodes15ClearBedMappingEv,"ax",%progbits
 5542              		.align	1
 5543              		.p2align 2,,3
 5544              		.global	_ZN6GCodes15ClearBedMappingEv
 5545              		.syntax unified
 5546              		.thumb
 5547              		.thumb_func
 5548              		.fpu fpv4-sp-d16
 5549              		.type	_ZN6GCodes15ClearBedMappingEv, %function
 5550              	_ZN6GCodes15ClearBedMappingEv:
 5551              		@ args = 0, pretend = 0, frame = 0
 5552              		@ frame_needed = 0, uses_anonymous_args = 0
 5553 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 5554 0002 104C     		ldr	r4, .L1084
 5555 0004 83B0     		sub	sp, sp, #12
 5556 0006 0546     		mov	r5, r0
 5557 0008 E068     		ldr	r0, [r4, #12]
 5558 000a FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 5559 000e 2046     		mov	r0, r4
 5560 0010 E668     		ldr	r6, [r4, #12]
 5561 0012 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 5562 0016 0746     		mov	r7, r0
 5563 0018 2046     		mov	r0, r4
 5564 001a FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 5565 001e 05F1EC04 		add	r4, r5, #236
 5566 0022 0090     		str	r0, [sp]
 5567 0024 2146     		mov	r1, r4
 5568 0026 3046     		mov	r0, r6
 5569 0028 3B46     		mov	r3, r7
 5570 002a 0022     		movs	r2, #0
 5571 002c FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 5572 0030 2146     		mov	r1, r4
 5573 0032 05F1C002 		add	r2, r5, #192
 5574 0036 2846     		mov	r0, r5
 5575 0038 03B0     		add	sp, sp, #12
 5576              		@ sp needed
 5577 003a BDE8F040 		pop	{r4, r5, r6, r7, lr}
 5578 003e FFF7FEBF 		b	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5579              	.L1085:
 5580 0042 00BF     		.align	2
 5581              	.L1084:
 5582 0044 00000000 		.word	reprap
 5583              		.size	_ZN6GCodes15ClearBedMappingEv, .-_ZN6GCodes15ClearBedMappingEv
 5584              		.section	.text._ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef,"ax",%progbits
 5585              		.align	1
 5586              		.p2align 2,,3
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 99


 5587              		.global	_ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef
 5588              		.syntax unified
 5589              		.thumb
 5590              		.thumb_func
 5591              		.fpu fpv4-sp-d16
 5592              		.type	_ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef, %function
 5593              	_ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef:
 5594              		@ args = 0, pretend = 0, frame = 0
 5595              		@ frame_needed = 0, uses_anonymous_args = 0
 5596 0000 70B5     		push	{r4, r5, r6, lr}
 5597 0002 90F8DC35 		ldrb	r3, [r0, #1500]	@ zero_extendqisi2
 5598 0006 82B0     		sub	sp, sp, #8
 5599 0008 002B     		cmp	r3, #0
 5600 000a 39D0     		beq	.L1094
 5601 000c D0F86033 		ldr	r3, [r0, #864]
 5602 0010 0125     		movs	r5, #1
 5603 0012 0E46     		mov	r6, r1
 5604 0014 05FA03F3 		lsl	r3, r5, r3
 5605 0018 D0F82C15 		ldr	r1, [r0, #1324]
 5606 001c 013B     		subs	r3, r3, #1
 5607 001e 8B43     		bics	r3, r3, r1
 5608 0020 0446     		mov	r4, r0
 5609 0022 23D1     		bne	.L1095
 5610 0024 1A4B     		ldr	r3, .L1096
 5611 0026 D868     		ldr	r0, [r3, #12]
 5612 0028 04F2AC51 		addw	r1, r4, #1452
 5613 002c 00F58870 		add	r0, r0, #272
 5614 0030 FFF7FEFF 		bl	_ZN9HeightMap7SetGridERK14GridDefinition
 5615 0034 2046     		mov	r0, r4
 5616 0036 FFF7FEFF 		bl	_ZN6GCodes15ClearBedMappingEv
 5617 003a 0023     		movs	r3, #0
 5618 003c C4F80C36 		str	r3, [r4, #1548]
 5619 0040 C4F80836 		str	r3, [r4, #1544]
 5620 0044 B368     		ldr	r3, [r6, #8]
 5621 0046 1A22     		movs	r2, #26
 5622 0048 1A75     		strb	r2, [r3, #20]
 5623 004a 6368     		ldr	r3, [r4, #4]
 5624 004c 93F8CC30 		ldrb	r3, [r3, #204]	@ zero_extendqisi2
 5625 0050 9BB1     		cbz	r3, .L1092
 5626 0052 092B     		cmp	r3, #9
 5627 0054 11D0     		beq	.L1092
 5628 0056 94F81136 		ldrb	r3, [r4, #1553]	@ zero_extendqisi2
 5629 005a 73B9     		cbnz	r3, .L1092
 5630 005c 0093     		str	r3, [sp]
 5631 005e 3146     		mov	r1, r6
 5632 0060 2046     		mov	r0, r4
 5633 0062 0C4A     		ldr	r2, .L1096+4
 5634 0064 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 5635 0068 2846     		mov	r0, r5
 5636 006a 04E0     		b	.L1088
 5637              	.L1095:
 5638 006c 1046     		mov	r0, r2
 5639 006e 0A49     		ldr	r1, .L1096+8
 5640 0070 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5641 0074 0220     		movs	r0, #2
 5642              	.L1088:
 5643 0076 02B0     		add	sp, sp, #8
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 100


 5644              		@ sp needed
 5645 0078 70BD     		pop	{r4, r5, r6, pc}
 5646              	.L1092:
 5647 007a 2846     		mov	r0, r5
 5648 007c 02B0     		add	sp, sp, #8
 5649              		@ sp needed
 5650 007e 70BD     		pop	{r4, r5, r6, pc}
 5651              	.L1094:
 5652 0080 1046     		mov	r0, r2
 5653 0082 0649     		ldr	r1, .L1096+12
 5654 0084 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 5655 0088 0220     		movs	r0, #2
 5656 008a 02B0     		add	sp, sp, #8
 5657              		@ sp needed
 5658 008c 70BD     		pop	{r4, r5, r6, pc}
 5659              	.L1097:
 5660 008e 00BF     		.align	2
 5661              	.L1096:
 5662 0090 00000000 		.word	reprap
 5663 0094 4C000000 		.word	.LC49
 5664 0098 28000000 		.word	.LC103
 5665 009c 00000000 		.word	.LC102
 5666              		.size	_ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef, .-_ZN6GCodes9ProbeGridER11GCodeBufferRK9Str
 5667              		.section	.text._ZN6GCodes25UpdateCurrentUserPositionEv,"ax",%progbits
 5668              		.align	1
 5669              		.p2align 2,,3
 5670              		.global	_ZN6GCodes25UpdateCurrentUserPositionEv
 5671              		.syntax unified
 5672              		.thumb
 5673              		.thumb_func
 5674              		.fpu fpv4-sp-d16
 5675              		.type	_ZN6GCodes25UpdateCurrentUserPositionEv, %function
 5676              	_ZN6GCodes25UpdateCurrentUserPositionEv:
 5677              		@ args = 0, pretend = 0, frame = 0
 5678              		@ frame_needed = 0, uses_anonymous_args = 0
 5679 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 5680 0002 0E4D     		ldr	r5, .L1100
 5681 0004 83B0     		sub	sp, sp, #12
 5682 0006 0446     		mov	r4, r0
 5683 0008 2846     		mov	r0, r5
 5684 000a EE68     		ldr	r6, [r5, #12]
 5685 000c FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 5686 0010 0746     		mov	r7, r0
 5687 0012 2846     		mov	r0, r5
 5688 0014 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 5689 0018 04F1EC05 		add	r5, r4, #236
 5690 001c 0090     		str	r0, [sp]
 5691 001e 2946     		mov	r1, r5
 5692 0020 3046     		mov	r0, r6
 5693 0022 3B46     		mov	r3, r7
 5694 0024 0022     		movs	r2, #0
 5695 0026 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 5696 002a 2946     		mov	r1, r5
 5697 002c 04F1C002 		add	r2, r4, #192
 5698 0030 2046     		mov	r0, r4
 5699 0032 03B0     		add	sp, sp, #12
 5700              		@ sp needed
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 101


 5701 0034 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 5702 0038 FFF7FEBF 		b	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 5703              	.L1101:
 5704              		.align	2
 5705              	.L1100:
 5706 003c 00000000 		.word	reprap
 5707              		.size	_ZN6GCodes25UpdateCurrentUserPositionEv, .-_ZN6GCodes25UpdateCurrentUserPositionEv
 5708              		.section	.text._ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer,"ax",%progbits
 5709              		.align	1
 5710              		.p2align 2,,3
 5711              		.global	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5712              		.syntax unified
 5713              		.thumb
 5714              		.thumb_func
 5715              		.fpu fpv4-sp-d16
 5716              		.type	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer, %function
 5717              	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer:
 5718              		@ args = 0, pretend = 0, frame = 0
 5719              		@ frame_needed = 0, uses_anonymous_args = 0
 5720 0000 08B5     		push	{r3, lr}
 5721 0002 836E     		ldr	r3, [r0, #104]
 5722 0004 9942     		cmp	r1, r3
 5723 0006 08D0     		beq	.L1103
 5724 0008 0BB1     		cbz	r3, .L1104
 5725              	.L1106:
 5726 000a 0020     		movs	r0, #0
 5727 000c 08BD     		pop	{r3, pc}
 5728              	.L1104:
 5729 000e 8166     		str	r1, [r0, #104]
 5730 0010 8A68     		ldr	r2, [r1, #8]
 5731 0012 D368     		ldr	r3, [r2, #12]
 5732 0014 43F00103 		orr	r3, r3, #1
 5733 0018 D360     		str	r3, [r2, #12]
 5734              	.L1103:
 5735 001a D0F86031 		ldr	r3, [r0, #352]
 5736 001e 002B     		cmp	r3, #0
 5737 0020 F3D1     		bne	.L1106
 5738 0022 0F4B     		ldr	r3, .L1110
 5739 0024 DB68     		ldr	r3, [r3, #12]
 5740 0026 DA68     		ldr	r2, [r3, #12]
 5741 0028 9968     		ldr	r1, [r3, #8]
 5742 002a 8A42     		cmp	r2, r1
 5743 002c EDD1     		bne	.L1106
 5744 002e 127A     		ldrb	r2, [r2, #8]	@ zero_extendqisi2
 5745 0030 002A     		cmp	r2, #0
 5746 0032 EAD1     		bne	.L1106
 5747 0034 5B68     		ldr	r3, [r3, #4]
 5748 0036 002B     		cmp	r3, #0
 5749 0038 E7D1     		bne	.L1106
 5750 003a 90F85F31 		ldrb	r3, [r0, #351]	@ zero_extendqisi2
 5751 003e 5B06     		lsls	r3, r3, #25
 5752 0040 09D4     		bmi	.L1109
 5753 0042 D0F86023 		ldr	r2, [r0, #864]
 5754 0046 00F58E71 		add	r1, r0, #284
 5755 004a 9200     		lsls	r2, r2, #2
 5756 004c EC30     		adds	r0, r0, #236
 5757 004e FFF7FEFF 		bl	memcpy
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 102


 5758 0052 0120     		movs	r0, #1
 5759 0054 08BD     		pop	{r3, pc}
 5760              	.L1109:
 5761 0056 FFF7FEFF 		bl	_ZN6GCodes25UpdateCurrentUserPositionEv
 5762 005a 0120     		movs	r0, #1
 5763 005c 08BD     		pop	{r3, pc}
 5764              	.L1111:
 5765 005e 00BF     		.align	2
 5766              	.L1110:
 5767 0060 00000000 		.word	reprap
 5768              		.size	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer, .-_ZN6GCodes32LockMovementAndW
 5769              		.section	.text._ZN6GCodes7DoDwellER11GCodeBuffer,"ax",%progbits
 5770              		.align	1
 5771              		.p2align 2,,3
 5772              		.global	_ZN6GCodes7DoDwellER11GCodeBuffer
 5773              		.syntax unified
 5774              		.thumb
 5775              		.thumb_func
 5776              		.fpu fpv4-sp-d16
 5777              		.type	_ZN6GCodes7DoDwellER11GCodeBuffer, %function
 5778              	_ZN6GCodes7DoDwellER11GCodeBuffer:
 5779              		@ args = 0, pretend = 0, frame = 0
 5780              		@ frame_needed = 0, uses_anonymous_args = 0
 5781 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 5782 0002 0D46     		mov	r5, r1
 5783 0004 0646     		mov	r6, r0
 5784 0006 5321     		movs	r1, #83
 5785 0008 2846     		mov	r0, r5
 5786 000a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5787 000e 78B3     		cbz	r0, .L1113
 5788 0010 2846     		mov	r0, r5
 5789 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5790 0016 DFED1F7A 		vldr.32	s15, .L1124
 5791 001a 20EE270A 		vmul.f32	s0, s0, s15
 5792 001e FDEEC07A 		vcvt.s32.f32	s15, s0
 5793 0022 17EE904A 		vmov	r4, s15	@ int
 5794              	.L1114:
 5795 0026 002C     		cmp	r4, #0
 5796 0028 20DD     		ble	.L1123
 5797 002a 2946     		mov	r1, r5
 5798 002c 3046     		mov	r0, r6
 5799 002e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5800 0032 40B3     		cbz	r0, .L1121
 5801 0034 96F81876 		ldrb	r7, [r6, #1560]	@ zero_extendqisi2
 5802 0038 7FB1     		cbz	r7, .L1119
 5803 003a 06EE904A 		vmov	s13, r4	@ int
 5804 003e 06F21466 		addw	r6, r6, #1556
 5805 0042 D6ED007A 		vldr.32	s15, [r6]
 5806 0046 9FED147A 		vldr.32	s14, .L1124+4
 5807 004a B8EEE60A 		vcvt.f32.s32	s0, s13
 5808 004e 0120     		movs	r0, #1
 5809 0050 E0EE077A 		vfma.f32	s15, s0, s14
 5810 0054 C6ED007A 		vstr.32	s15, [r6]
 5811 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5812              	.L1119:
 5813 005a FFF7FEFF 		bl	millis
 5814 005e 2B79     		ldrb	r3, [r5, #4]	@ zero_extendqisi2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 103


 5815 0060 9BB1     		cbz	r3, .L1120
 5816 0062 2B68     		ldr	r3, [r5]
 5817 0064 C01A     		subs	r0, r0, r3
 5818 0066 8442     		cmp	r4, r0
 5819 0068 0DD8     		bhi	.L1121
 5820 006a 2F71     		strb	r7, [r5, #4]
 5821              	.L1123:
 5822 006c 0120     		movs	r0, #1
 5823 006e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5824              	.L1113:
 5825 0070 5021     		movs	r1, #80
 5826 0072 2846     		mov	r0, r5
 5827 0074 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5828 0078 0028     		cmp	r0, #0
 5829 007a F7D0     		beq	.L1123
 5830 007c 2846     		mov	r0, r5
 5831 007e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5832 0082 0446     		mov	r4, r0
 5833 0084 CFE7     		b	.L1114
 5834              	.L1121:
 5835 0086 0020     		movs	r0, #0
 5836 0088 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5837              	.L1120:
 5838 008a 0122     		movs	r2, #1
 5839 008c 2860     		str	r0, [r5]
 5840 008e 2A71     		strb	r2, [r5, #4]
 5841 0090 1846     		mov	r0, r3
 5842 0092 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 5843              	.L1125:
 5844              		.align	2
 5845              	.L1124:
 5846 0094 00007A44 		.word	1148846080
 5847 0098 6F12833A 		.word	981668463
 5848              		.size	_ZN6GCodes7DoDwellER11GCodeBuffer, .-_ZN6GCodes7DoDwellER11GCodeBuffer
 5849              		.section	.text._ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef,"ax",%progbits
 5850              		.align	1
 5851              		.p2align 2,,3
 5852              		.global	_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef
 5853              		.syntax unified
 5854              		.thumb
 5855              		.thumb_func
 5856              		.fpu fpv4-sp-d16
 5857              		.type	_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef, %function
 5858              	_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef:
 5859              		@ args = 0, pretend = 0, frame = 0
 5860              		@ frame_needed = 0, uses_anonymous_args = 0
 5861 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 5862 0004 0446     		mov	r4, r0
 5863 0006 0F46     		mov	r7, r1
 5864 0008 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5865 000c 40B3     		cbz	r0, .L1127
 5866 000e D4F85C33 		ldr	r3, [r4, #860]
 5867 0012 0025     		movs	r5, #0
 5868 0014 C4F82855 		str	r5, [r4, #1320]
 5869 0018 23B3     		cbz	r3, .L1132
 5870 001a 04F20F56 		addw	r6, r4, #1295
 5871 001e 4FF00108 		mov	r8, #1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 104


 5872              	.L1131:
 5873 0022 16F8011F 		ldrb	r1, [r6, #1]!	@ zero_extendqisi2
 5874 0026 3846     		mov	r0, r7
 5875 0028 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5876 002c 60B1     		cbz	r0, .L1130
 5877 002e D4F82825 		ldr	r2, [r4, #1320]
 5878 0032 D4F82C35 		ldr	r3, [r4, #1324]
 5879 0036 08FA05F1 		lsl	r1, r8, r5
 5880 003a 0A43     		orrs	r2, r2, r1
 5881 003c 23EA0103 		bic	r3, r3, r1
 5882 0040 C4F82825 		str	r2, [r4, #1320]
 5883 0044 C4F82C35 		str	r3, [r4, #1324]
 5884              	.L1130:
 5885 0048 D4F85C33 		ldr	r3, [r4, #860]
 5886 004c 0135     		adds	r5, r5, #1
 5887 004e AB42     		cmp	r3, r5
 5888 0050 E7D8     		bhi	.L1131
 5889 0052 D4F82835 		ldr	r3, [r4, #1320]
 5890 0056 2BB1     		cbz	r3, .L1132
 5891              	.L1129:
 5892 0058 BB68     		ldr	r3, [r7, #8]
 5893 005a 0422     		movs	r2, #4
 5894 005c 1A75     		strb	r2, [r3, #20]
 5895 005e 0120     		movs	r0, #1
 5896              	.L1127:
 5897 0060 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 5898              	.L1132:
 5899 0064 D4F86023 		ldr	r2, [r4, #864]
 5900 0068 0123     		movs	r3, #1
 5901 006a 9340     		lsls	r3, r3, r2
 5902 006c 013B     		subs	r3, r3, #1
 5903 006e 0022     		movs	r2, #0
 5904 0070 C4F82835 		str	r3, [r4, #1320]
 5905 0074 C4F82C25 		str	r2, [r4, #1324]
 5906 0078 EEE7     		b	.L1129
 5907              		.size	_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef, .-_ZN6GCodes6DoHomeER11GCodeBufferRK9StringRef
 5908 007a 00BF     		.section	.text._ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef,"ax",%progbits
 5909              		.align	1
 5910              		.p2align 2,,3
 5911              		.global	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef
 5912              		.syntax unified
 5913              		.thumb
 5914              		.thumb_func
 5915              		.fpu fpv4-sp-d16
 5916              		.type	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef, %function
 5917              	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef:
 5918              		@ args = 0, pretend = 0, frame = 48
 5919              		@ frame_needed = 0, uses_anonymous_args = 0
 5920 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 5921 0004 0D46     		mov	r5, r1
 5922 0006 8FB0     		sub	sp, sp, #60
 5923 0008 0646     		mov	r6, r0
 5924 000a 5021     		movs	r1, #80
 5925 000c 2846     		mov	r0, r5
 5926 000e 0292     		str	r2, [sp, #8]
 5927 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5928 0014 0028     		cmp	r0, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 105


 5929 0016 40F09380 		bne	.L1197
 5930 001a 834B     		ldr	r3, .L1203
 5931 001c D3F8EC90 		ldr	r9, [r3, #236]
 5932 0020 B9F1000F 		cmp	r9, #0
 5933 0024 00F0CF80 		beq	.L1198
 5934              	.L1144:
 5935 0028 D6F86033 		ldr	r3, [r6, #864]
 5936 002c 7BB3     		cbz	r3, .L1146
 5937 002e 7F4F     		ldr	r7, .L1203+4
 5938 0030 06F20F54 		addw	r4, r6, #1295
 5939 0034 BF1B     		subs	r7, r7, r6
 5940 0036 4FF0000A 		mov	r10, #0
 5941              	.L1149:
 5942 003a 04EB0708 		add	r8, r4, r7
 5943 003e 2846     		mov	r0, r5
 5944 0040 14F8011F 		ldrb	r1, [r4, #1]!	@ zero_extendqisi2
 5945 0044 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5946 0048 8346     		mov	fp, r0
 5947 004a B8B1     		cbz	r0, .L1147
 5948 004c B26E     		ldr	r2, [r6, #104]
 5949 004e 9542     		cmp	r5, r2
 5950 0050 2846     		mov	r0, r5
 5951 0052 08D0     		beq	.L1148
 5952 0054 002A     		cmp	r2, #0
 5953 0056 40F08780 		bne	.L1162
 5954 005a B566     		str	r5, [r6, #104]
 5955 005c A968     		ldr	r1, [r5, #8]
 5956 005e CA68     		ldr	r2, [r1, #12]
 5957 0060 42F00102 		orr	r2, r2, #1
 5958 0064 CA60     		str	r2, [r1, #12]
 5959              	.L1148:
 5960 0066 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5961 006a AA68     		ldr	r2, [r5, #8]
 5962 006c 127E     		ldrb	r2, [r2, #24]	@ zero_extendqisi2
 5963 006e 4146     		mov	r1, r8
 5964 0070 C2F30012 		ubfx	r2, r2, #4, #1
 5965 0074 4846     		mov	r0, r9
 5966 0076 FFF7FEFF 		bl	_ZN4Tool9SetOffsetEjfb
 5967 007a DA46     		mov	r10, fp
 5968              	.L1147:
 5969 007c D6F86023 		ldr	r2, [r6, #864]
 5970 0080 E319     		adds	r3, r4, r7
 5971 0082 9A42     		cmp	r2, r3
 5972 0084 D9D8     		bhi	.L1149
 5973 0086 BAF1000F 		cmp	r10, #0
 5974 008a 40F08980 		bne	.L1199
 5975              	.L1146:
 5976 008e D9F89830 		ldr	r3, [r9, #152]
 5977 0092 0593     		str	r3, [sp, #20]
 5978 0094 002B     		cmp	r3, #0
 5979 0096 6BD1     		bne	.L1200
 5980              	.L1161:
 5981 0098 D9F89C20 		ldr	r2, [r9, #156]
 5982 009c 6449     		ldr	r1, .L1203+8
 5983 009e 0298     		ldr	r0, [sp, #8]
 5984 00a0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 5985 00a4 D6F86033 		ldr	r3, [r6, #864]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 106


 5986 00a8 D3B1     		cbz	r3, .L1158
 5987 00aa 624F     		ldr	r7, .L1203+12
 5988 00ac 06F20F54 		addw	r4, r6, #1295
 5989 00b0 09F10C05 		add	r5, r9, #12
 5990              	.L1159:
 5991 00b4 55F8040B 		ldr	r0, [r5], #4	@ float
 5992 00b8 94F80180 		ldrb	r8, [r4, #1]	@ zero_extendqisi2
 5993 00bc FFF7FEFF 		bl	__aeabi_f2d
 5994 00c0 4246     		mov	r2, r8
 5995 00c2 CDE90001 		strd	r0, [sp]
 5996 00c6 3946     		mov	r1, r7
 5997 00c8 0298     		ldr	r0, [sp, #8]
 5998 00ca FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 5999 00ce A4F20E53 		subw	r3, r4, #1294
 6000 00d2 D6F86023 		ldr	r2, [r6, #864]
 6001 00d6 9B1B     		subs	r3, r3, r6
 6002 00d8 9A42     		cmp	r2, r3
 6003 00da 04F10104 		add	r4, r4, #1
 6004 00de E9D8     		bhi	.L1159
 6005              	.L1158:
 6006 00e0 059B     		ldr	r3, [sp, #20]
 6007 00e2 002B     		cmp	r3, #0
 6008 00e4 58D0     		beq	.L1156
 6009 00e6 5449     		ldr	r1, .L1203+16
 6010 00e8 0298     		ldr	r0, [sp, #8]
 6011 00ea FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 6012 00ee 059B     		ldr	r3, [sp, #20]
 6013 00f0 002B     		cmp	r3, #0
 6014 00f2 51D0     		beq	.L1156
 6015 00f4 514D     		ldr	r5, .L1203+20
 6016 00f6 0024     		movs	r4, #0
 6017              	.L1160:
 6018 00f8 2146     		mov	r1, r4
 6019 00fa 4846     		mov	r0, r9
 6020 00fc FFF7FEFF 		bl	_ZNK4Tool30GetToolHeaterActiveTemperatureEj
 6021 0100 2146     		mov	r1, r4
 6022 0102 4846     		mov	r0, r9
 6023 0104 10EE106A 		vmov	r6, s0
 6024 0108 FFF7FEFF 		bl	_ZNK4Tool31GetToolHeaterStandbyTemperatureEj
 6025 010c 3046     		mov	r0, r6	@ float
 6026 010e 8DED030A 		vstr.32	s0, [sp, #12]	@ int
 6027 0112 FFF7FEFF 		bl	__aeabi_f2d
 6028 0116 9DED030A 		vldr.32	s0, [sp, #12]	@ int
 6029 011a 0646     		mov	r6, r0
 6030 011c 10EE100A 		vmov	r0, s0
 6031 0120 0F46     		mov	r7, r1
 6032 0122 FFF7FEFF 		bl	__aeabi_f2d
 6033 0126 3B46     		mov	r3, r7
 6034 0128 CDE90001 		strd	r0, [sp]
 6035 012c 3246     		mov	r2, r6
 6036 012e 2946     		mov	r1, r5
 6037 0130 0298     		ldr	r0, [sp, #8]
 6038 0132 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6039 0136 059B     		ldr	r3, [sp, #20]
 6040 0138 0134     		adds	r4, r4, #1
 6041 013a A342     		cmp	r3, r4
 6042 013c DCD8     		bhi	.L1160
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 107


 6043 013e 2BE0     		b	.L1156
 6044              	.L1197:
 6045 0140 2846     		mov	r0, r5
 6046 0142 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6047 0146 AC6B     		ldr	r4, [r5, #56]
 6048 0148 0444     		add	r4, r4, r0
 6049 014a 2146     		mov	r1, r4
 6050 014c 3648     		ldr	r0, .L1203
 6051 014e FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 6052 0152 8146     		mov	r9, r0
 6053 0154 0028     		cmp	r0, #0
 6054 0156 7FF467AF 		bne	.L1144
 6055 015a 2246     		mov	r2, r4
 6056 015c 0298     		ldr	r0, [sp, #8]
 6057 015e 3849     		ldr	r1, .L1203+24
 6058 0160 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6059 0164 0220     		movs	r0, #2
 6060 0166 00E0     		b	.L1195
 6061              	.L1162:
 6062 0168 0020     		movs	r0, #0
 6063              	.L1195:
 6064 016a 0FB0     		add	sp, sp, #60
 6065              		@ sp needed
 6066 016c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6067              	.L1200:
 6068 0170 4FF0000A 		mov	r10, #0
 6069              	.L1150:
 6070 0174 5221     		movs	r1, #82
 6071 0176 2846     		mov	r0, r5
 6072 0178 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6073 017c 0746     		mov	r7, r0
 6074 017e 18B1     		cbz	r0, .L1151
 6075 0180 96F81846 		ldrb	r4, [r6, #1560]	@ zero_extendqisi2
 6076 0184 002C     		cmp	r4, #0
 6077 0186 39D0     		beq	.L1201
 6078              	.L1151:
 6079 0188 5321     		movs	r1, #83
 6080 018a 2846     		mov	r0, r5
 6081 018c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6082 0190 98B1     		cbz	r0, .L1154
 6083 0192 96F81846 		ldrb	r4, [r6, #1560]	@ zero_extendqisi2
 6084 0196 E4B1     		cbz	r4, .L1202
 6085              	.L1156:
 6086 0198 0120     		movs	r0, #1
 6087 019a 0FB0     		add	sp, sp, #60
 6088              		@ sp needed
 6089 019c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6090              	.L1199:
 6091 01a0 06F1C002 		add	r2, r6, #192
 6092 01a4 06F1EC01 		add	r1, r6, #236
 6093 01a8 3046     		mov	r0, r6
 6094 01aa FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 6095 01ae D9F89830 		ldr	r3, [r9, #152]
 6096 01b2 0593     		str	r3, [sp, #20]
 6097 01b4 002B     		cmp	r3, #0
 6098 01b6 EFD0     		beq	.L1156
 6099 01b8 DCE7     		b	.L1150
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 108


 6100              	.L1154:
 6101 01ba BAF1000F 		cmp	r10, #0
 6102 01be EBD1     		bne	.L1156
 6103 01c0 002F     		cmp	r7, #0
 6104 01c2 E9D1     		bne	.L1156
 6105 01c4 68E7     		b	.L1161
 6106              	.L1198:
 6107 01c6 0298     		ldr	r0, [sp, #8]
 6108 01c8 1E49     		ldr	r1, .L1203+28
 6109 01ca FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6110 01ce 0220     		movs	r0, #2
 6111 01d0 CBE7     		b	.L1195
 6112              	.L1202:
 6113 01d2 0123     		movs	r3, #1
 6114 01d4 2846     		mov	r0, r5
 6115 01d6 06A9     		add	r1, sp, #24
 6116 01d8 05AA     		add	r2, sp, #20
 6117 01da FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6118 01de 059B     		ldr	r3, [sp, #20]
 6119 01e0 002B     		cmp	r3, #0
 6120 01e2 D9D0     		beq	.L1156
 6121 01e4 06AD     		add	r5, sp, #24
 6122              	.L1157:
 6123 01e6 2146     		mov	r1, r4
 6124 01e8 B5EC010A 		vldmia.32	r5!, {s0}
 6125 01ec 4846     		mov	r0, r9
 6126 01ee FFF7FEFF 		bl	_ZN4Tool30SetToolHeaterActiveTemperatureEjf
 6127 01f2 059B     		ldr	r3, [sp, #20]
 6128 01f4 0134     		adds	r4, r4, #1
 6129 01f6 A342     		cmp	r3, r4
 6130 01f8 F5D8     		bhi	.L1157
 6131 01fa CDE7     		b	.L1156
 6132              	.L1201:
 6133 01fc 0123     		movs	r3, #1
 6134 01fe 06A9     		add	r1, sp, #24
 6135 0200 05AA     		add	r2, sp, #20
 6136 0202 2846     		mov	r0, r5
 6137 0204 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6138 0208 059B     		ldr	r3, [sp, #20]
 6139 020a 002B     		cmp	r3, #0
 6140 020c BCD0     		beq	.L1151
 6141 020e 0DF11808 		add	r8, sp, #24
 6142              	.L1153:
 6143 0212 2146     		mov	r1, r4
 6144 0214 B8EC010A 		vldmia.32	r8!, {s0}
 6145 0218 4846     		mov	r0, r9
 6146 021a FFF7FEFF 		bl	_ZN4Tool31SetToolHeaterStandbyTemperatureEjf
 6147 021e 059B     		ldr	r3, [sp, #20]
 6148 0220 0134     		adds	r4, r4, #1
 6149 0222 A342     		cmp	r3, r4
 6150 0224 F5D8     		bhi	.L1153
 6151 0226 AFE7     		b	.L1151
 6152              	.L1204:
 6153              		.align	2
 6154              	.L1203:
 6155 0228 00000000 		.word	reprap
 6156 022c F1FAFFFF 		.word	-1295
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 109


 6157 0230 90000000 		.word	.LC106
 6158 0234 A4000000 		.word	.LC107
 6159 0238 AC000000 		.word	.LC108
 6160 023c D0000000 		.word	.LC109
 6161 0240 00000000 		.word	.LC104
 6162 0244 4C000000 		.word	.LC105
 6163              		.size	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef, .-_ZN6GCodes18SetOrReportOffsetsE
 6164              		.section	.text._ZN6GCodes16DoEmergencyPauseEv,"ax",%progbits
 6165              		.align	1
 6166              		.p2align 2,,3
 6167              		.global	_ZN6GCodes16DoEmergencyPauseEv
 6168              		.syntax unified
 6169              		.thumb
 6170              		.thumb_func
 6171              		.fpu fpv4-sp-d16
 6172              		.type	_ZN6GCodes16DoEmergencyPauseEv, %function
 6173              	_ZN6GCodes16DoEmergencyPauseEv:
 6174              		@ args = 0, pretend = 0, frame = 0
 6175              		@ frame_needed = 0, uses_anonymous_args = 0
 6176 0000 036E     		ldr	r3, [r0, #96]
 6177 0002 1968     		ldr	r1, [r3]
 6178 0004 8B68     		ldr	r3, [r1, #8]
 6179 0006 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 6180 0008 002B     		cmp	r3, #0
 6181 000a 40F09B80 		bne	.L1217
 6182 000e 91F82820 		ldrb	r2, [r1, #40]	@ zero_extendqisi2
 6183 0012 083A     		subs	r2, r2, #8
 6184 0014 012A     		cmp	r2, #1
 6185 0016 40F29580 		bls	.L1217
 6186 001a 70B5     		push	{r4, r5, r6, lr}
 6187 001c 836E     		ldr	r3, [r0, #104]
 6188 001e 9942     		cmp	r1, r3
 6189 0020 09D0     		beq	.L1207
 6190 0022 3BB1     		cbz	r3, .L1208
 6191 0024 9B68     		ldr	r3, [r3, #8]
 6192              	.L1209:
 6193 0026 DA68     		ldr	r2, [r3, #12]
 6194 0028 22F00102 		bic	r2, r2, #1
 6195 002c DA60     		str	r2, [r3, #12]
 6196 002e 1B68     		ldr	r3, [r3]
 6197 0030 002B     		cmp	r3, #0
 6198 0032 F8D1     		bne	.L1209
 6199              	.L1208:
 6200 0034 8166     		str	r1, [r0, #104]
 6201              	.L1207:
 6202 0036 664B     		ldr	r3, .L1240
 6203 0038 D0F85413 		ldr	r1, [r0, #852]
 6204 003c 0446     		mov	r4, r0
 6205 003e D868     		ldr	r0, [r3, #12]
 6206 0040 FFF7FEFF 		bl	_ZN4Move20LowPowerOrStallPauseER12RestorePoint
 6207 0044 0546     		mov	r5, r0
 6208 0046 0028     		cmp	r0, #0
 6209 0048 40F0A180 		bne	.L1239
 6210 004c D4F86031 		ldr	r3, [r4, #352]
 6211 0050 002B     		cmp	r3, #0
 6212 0052 79D0     		beq	.L1213
 6213 0054 D4F84831 		ldr	r3, [r4, #328]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 110


 6214 0058 0133     		adds	r3, r3, #1
 6215 005a 75D0     		beq	.L1213
 6216 005c 04F1C002 		add	r2, r4, #192
 6217 0060 04F58E71 		add	r1, r4, #284
 6218 0064 2046     		mov	r0, r4
 6219 0066 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 6220 006a D4F85433 		ldr	r3, [r4, #852]
 6221 006e D4F84021 		ldr	r2, [r4, #320]	@ float
 6222 0072 5A62     		str	r2, [r3, #36]	@ float
 6223 0074 D4F85433 		ldr	r3, [r4, #852]
 6224 0078 D4F84421 		ldr	r2, [r4, #324]	@ float
 6225 007c 9A62     		str	r2, [r3, #40]	@ float
 6226 007e D4F85433 		ldr	r3, [r4, #852]
 6227 0082 D4F84821 		ldr	r2, [r4, #328]
 6228 0086 1A63     		str	r2, [r3, #48]
 6229 0088 D4F86411 		ldr	r1, [r4, #356]
 6230 008c D4F86031 		ldr	r3, [r4, #352]
 6231 0090 D4F85423 		ldr	r2, [r4, #852]
 6232 0094 CB1A     		subs	r3, r1, r3
 6233 0096 07EE903A 		vmov	s15, r3	@ int
 6234 009a 07EE101A 		vmov	s14, r1	@ int
 6235 009e F8EE677A 		vcvt.f32.u32	s15, s15
 6236 00a2 B8EE477A 		vcvt.f32.u32	s14, s14
 6237 00a6 C7EE876A 		vdiv.f32	s13, s15, s14
 6238 00aa C2ED0B6A 		vstr.32	s13, [r2, #44]
 6239 00ae D4F85433 		ldr	r3, [r4, #852]
 6240 00b2 B4F85C21 		ldrh	r2, [r4, #348]
 6241 00b6 1A87     		strh	r2, [r3, #56]	@ movhi
 6242 00b8 FFF7FEFF 		bl	vTaskSuspendAll
 6243 00bc 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 6244 00c0 C4F86051 		str	r5, [r4, #352]
 6245 00c4 0022     		movs	r2, #0
 6246 00c6 65F30003 		bfi	r3, r5, #0, #1
 6247 00ca 84F8A951 		strb	r5, [r4, #425]
 6248 00ce 84F8A851 		strb	r5, [r4, #424]
 6249 00d2 C4F85851 		str	r5, [r4, #344]
 6250 00d6 84F85E51 		strb	r5, [r4, #350]
 6251 00da 84F85F31 		strb	r3, [r4, #351]
 6252 00de C4F87021 		str	r2, [r4, #368]	@ float
 6253 00e2 FFF7FEFF 		bl	xTaskResumeAll
 6254              	.L1214:
 6255 00e6 D4F86033 		ldr	r3, [r4, #864]
 6256 00ea 73B1     		cbz	r3, .L1211
 6257 00ec 04F1C001 		add	r1, r4, #192
 6258 00f0 0023     		movs	r3, #0
 6259              	.L1215:
 6260 00f2 D4F85423 		ldr	r2, [r4, #852]
 6261 00f6 51F8040B 		ldr	r0, [r1], #4	@ float
 6262 00fa 02EB8302 		add	r2, r2, r3, lsl #2
 6263 00fe 0133     		adds	r3, r3, #1
 6264 0100 1060     		str	r0, [r2]	@ float
 6265 0102 D4F86023 		ldr	r2, [r4, #864]
 6266 0106 9A42     		cmp	r2, r3
 6267 0108 F3D8     		bhi	.L1215
 6268              	.L1211:
 6269 010a 04F5A666 		add	r6, r4, #1328
 6270 010e 0025     		movs	r5, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 111


 6271              	.L1216:
 6272 0110 2946     		mov	r1, r5
 6273 0112 6068     		ldr	r0, [r4, #4]
 6274 0114 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 6275 0118 0135     		adds	r5, r5, #1
 6276 011a 092D     		cmp	r5, #9
 6277 011c A6EC010A 		vstmia.32	r6!, {s0}
 6278 0120 F6D1     		bne	.L1216
 6279 0122 04F25453 		addw	r3, r4, #1364
 6280 0126 2A48     		ldr	r0, .L1240
 6281 0128 1A68     		ldr	r2, [r3]	@ float
 6282 012a 04F5AB63 		add	r3, r4, #1368
 6283 012e 1A60     		str	r2, [r3]	@ float
 6284 0130 D4F85453 		ldr	r5, [r4, #852]
 6285 0134 FFF7FEFF 		bl	_ZNK6RepRap20GetCurrentToolNumberEv
 6286 0138 0123     		movs	r3, #1
 6287 013a 6863     		str	r0, [r5, #52]
 6288 013c 84F8B630 		strb	r3, [r4, #182]
 6289 0140 1846     		mov	r0, r3
 6290 0142 70BD     		pop	{r4, r5, r6, pc}
 6291              	.L1217:
 6292 0144 0020     		movs	r0, #0
 6293 0146 7047     		bx	lr
 6294              	.L1213:
 6295 0148 A26C     		ldr	r2, [r4, #72]
 6296 014a D4F85433 		ldr	r3, [r4, #852]
 6297 014e 1268     		ldr	r2, [r2]
 6298 0150 9268     		ldr	r2, [r2, #8]
 6299 0152 5268     		ldr	r2, [r2, #4]	@ float
 6300 0154 5A62     		str	r2, [r3, #36]	@ float
 6301 0156 D4F85433 		ldr	r3, [r4, #852]
 6302 015a D4F88C23 		ldr	r2, [r4, #908]	@ float
 6303 015e 9A62     		str	r2, [r3, #40]	@ float
 6304 0160 A068     		ldr	r0, [r4, #8]
 6305 0162 A26C     		ldr	r2, [r4, #72]
 6306 0164 0368     		ldr	r3, [r0]
 6307 0166 1568     		ldr	r5, [r2]
 6308 0168 9B68     		ldr	r3, [r3, #8]
 6309 016a 9847     		blx	r3
 6310 016c 0146     		mov	r1, r0
 6311 016e 2846     		mov	r0, r5
 6312 0170 D4F85453 		ldr	r5, [r4, #852]
 6313 0174 FFF7FEFF 		bl	_ZNK11GCodeBuffer15GetFilePositionEj
 6314 0178 2863     		str	r0, [r5, #48]
 6315 017a D4F85433 		ldr	r3, [r4, #852]
 6316 017e 0022     		movs	r2, #0
 6317 0180 DA62     		str	r2, [r3, #44]	@ float
 6318 0182 D4F85433 		ldr	r3, [r4, #852]
 6319 0186 B4F85C21 		ldrh	r2, [r4, #348]
 6320 018a 1A87     		strh	r2, [r3, #56]	@ movhi
 6321 018c ABE7     		b	.L1214
 6322              	.L1239:
 6323 018e 04F1C002 		add	r2, r4, #192
 6324 0192 D4F85413 		ldr	r1, [r4, #852]
 6325 0196 2046     		mov	r0, r4
 6326 0198 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 6327 019c FFF7FEFF 		bl	vTaskSuspendAll
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 112


 6328 01a0 94F85F21 		ldrb	r2, [r4, #351]	@ zero_extendqisi2
 6329 01a4 0023     		movs	r3, #0
 6330 01a6 0021     		movs	r1, #0
 6331 01a8 63F30002 		bfi	r2, r3, #0, #1
 6332 01ac 84F85F21 		strb	r2, [r4, #351]
 6333 01b0 C4F86031 		str	r3, [r4, #352]
 6334 01b4 84F8A931 		strb	r3, [r4, #425]
 6335 01b8 84F8A831 		strb	r3, [r4, #424]
 6336 01bc C4F85831 		str	r3, [r4, #344]
 6337 01c0 84F85E31 		strb	r3, [r4, #350]
 6338 01c4 C4F87011 		str	r1, [r4, #368]	@ float
 6339 01c8 FFF7FEFF 		bl	xTaskResumeAll
 6340 01cc 8BE7     		b	.L1214
 6341              	.L1241:
 6342 01ce 00BF     		.align	2
 6343              	.L1240:
 6344 01d0 00000000 		.word	reprap
 6345              		.size	_ZN6GCodes16DoEmergencyPauseEv, .-_ZN6GCodes16DoEmergencyPauseEv
 6346              		.section	.text._ZN6GCodes15LowVoltagePauseEv,"ax",%progbits
 6347              		.align	1
 6348              		.p2align 2,,3
 6349              		.global	_ZN6GCodes15LowVoltagePauseEv
 6350              		.syntax unified
 6351              		.thumb
 6352              		.thumb_func
 6353              		.fpu fpv4-sp-d16
 6354              		.type	_ZN6GCodes15LowVoltagePauseEv, %function
 6355              	_ZN6GCodes15LowVoltagePauseEv:
 6356              		@ args = 0, pretend = 0, frame = 0
 6357              		@ frame_needed = 0, uses_anonymous_args = 0
 6358 0000 38B5     		push	{r3, r4, r5, lr}
 6359 0002 90F81836 		ldrb	r3, [r0, #1560]	@ zero_extendqisi2
 6360 0006 13B1     		cbz	r3, .L1243
 6361              	.L1246:
 6362 0008 0125     		movs	r5, #1
 6363              	.L1244:
 6364 000a 2846     		mov	r0, r5
 6365 000c 38BD     		pop	{r3, r4, r5, pc}
 6366              	.L1243:
 6367 000e 1A4D     		ldr	r5, .L1259
 6368 0010 0446     		mov	r4, r0
 6369 0012 0121     		movs	r1, #1
 6370 0014 2869     		ldr	r0, [r5, #16]
 6371 0016 FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 6372 001a A36C     		ldr	r3, [r4, #72]
 6373 001c 1868     		ldr	r0, [r3]
 6374 001e FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 6375 0022 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 6376 0024 133B     		subs	r3, r3, #19
 6377 0026 022B     		cmp	r3, #2
 6378 0028 02D8     		bhi	.L1245
 6379              	.L1247:
 6380 002a 0025     		movs	r5, #0
 6381 002c 2846     		mov	r0, r5
 6382 002e 38BD     		pop	{r3, r4, r5, pc}
 6383              	.L1245:
 6384 0030 2046     		mov	r0, r4
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 113


 6385 0032 FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
 6386 0036 0028     		cmp	r0, #0
 6387 0038 E6D1     		bne	.L1246
 6388 003a 2046     		mov	r0, r4
 6389 003c FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 6390 0040 0028     		cmp	r0, #0
 6391 0042 E1D1     		bne	.L1246
 6392 0044 2B6A     		ldr	r3, [r5, #32]
 6393 0046 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 6394 0048 002B     		cmp	r3, #0
 6395 004a DDD0     		beq	.L1246
 6396 004c 2046     		mov	r0, r4
 6397 004e FFF7FEFF 		bl	_ZN6GCodes16DoEmergencyPauseEv
 6398 0052 0546     		mov	r5, r0
 6399 0054 0028     		cmp	r0, #0
 6400 0056 E8D0     		beq	.L1247
 6401 0058 236E     		ldr	r3, [r4, #96]
 6402 005a D4F8BC10 		ldr	r1, [r4, #188]
 6403 005e 1868     		ldr	r0, [r3]
 6404 0060 19B1     		cbz	r1, .L1248
 6405 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKc
 6406 0066 236E     		ldr	r3, [r4, #96]
 6407 0068 1868     		ldr	r0, [r3]
 6408              	.L1248:
 6409 006a 8268     		ldr	r2, [r0, #8]
 6410 006c 3121     		movs	r1, #49
 6411 006e 0123     		movs	r3, #1
 6412 0070 1175     		strb	r1, [r2, #20]
 6413 0072 84F8BB30 		strb	r3, [r4, #187]
 6414 0076 C8E7     		b	.L1244
 6415              	.L1260:
 6416              		.align	2
 6417              	.L1259:
 6418 0078 00000000 		.word	reprap
 6419              		.size	_ZN6GCodes15LowVoltagePauseEv, .-_ZN6GCodes15LowVoltagePauseEv
 6420              		.section	.text._ZN6GCodes13ReHomeOnStallEm,"ax",%progbits
 6421              		.align	1
 6422              		.p2align 2,,3
 6423              		.global	_ZN6GCodes13ReHomeOnStallEm
 6424              		.syntax unified
 6425              		.thumb
 6426              		.thumb_func
 6427              		.fpu fpv4-sp-d16
 6428              		.type	_ZN6GCodes13ReHomeOnStallEm, %function
 6429              	_ZN6GCodes13ReHomeOnStallEm:
 6430              		@ args = 0, pretend = 0, frame = 0
 6431              		@ frame_needed = 0, uses_anonymous_args = 0
 6432 0000 30B5     		push	{r4, r5, lr}
 6433 0002 114B     		ldr	r3, .L1272
 6434 0004 1B6A     		ldr	r3, [r3, #32]
 6435 0006 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 6436 0008 83B0     		sub	sp, sp, #12
 6437 000a 1BB9     		cbnz	r3, .L1262
 6438              	.L1264:
 6439 000c 0124     		movs	r4, #1
 6440              	.L1263:
 6441 000e 2046     		mov	r0, r4
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 114


 6442 0010 03B0     		add	sp, sp, #12
 6443              		@ sp needed
 6444 0012 30BD     		pop	{r4, r5, pc}
 6445              	.L1262:
 6446 0014 0546     		mov	r5, r0
 6447 0016 FFF7FEFF 		bl	_ZNK6GCodes16IsReallyPrintingEv.part.54
 6448 001a 0028     		cmp	r0, #0
 6449 001c F6D0     		beq	.L1264
 6450 001e 2846     		mov	r0, r5
 6451 0020 FFF7FEFF 		bl	_ZN6GCodes16DoEmergencyPauseEv
 6452 0024 0446     		mov	r4, r0
 6453 0026 0028     		cmp	r0, #0
 6454 0028 F1D0     		beq	.L1263
 6455 002a 2B6E     		ldr	r3, [r5, #96]
 6456 002c 074A     		ldr	r2, .L1272+4
 6457 002e 1B68     		ldr	r3, [r3]
 6458 0030 9B68     		ldr	r3, [r3, #8]
 6459 0032 1321     		movs	r1, #19
 6460 0034 1975     		strb	r1, [r3, #20]
 6461 0036 2B6E     		ldr	r3, [r5, #96]
 6462 0038 1968     		ldr	r1, [r3]
 6463 003a 0023     		movs	r3, #0
 6464 003c 0093     		str	r3, [sp]
 6465 003e 2846     		mov	r0, r5
 6466 0040 0123     		movs	r3, #1
 6467 0042 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 6468 0046 E2E7     		b	.L1263
 6469              	.L1273:
 6470              		.align	2
 6471              	.L1272:
 6472 0048 00000000 		.word	reprap
 6473 004c 00000000 		.word	.LC110
 6474              		.size	_ZN6GCodes13ReHomeOnStallEm, .-_ZN6GCodes13ReHomeOnStallEm
 6475              		.section	.text._ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef,"ax",%progbits
 6476              		.align	1
 6477              		.p2align 2,,3
 6478              		.global	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef
 6479              		.syntax unified
 6480              		.thumb
 6481              		.thumb_func
 6482              		.fpu fpv4-sp-d16
 6483              		.type	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef, %function
 6484              	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef:
 6485              		@ args = 0, pretend = 0, frame = 136
 6486              		@ frame_needed = 0, uses_anonymous_args = 0
 6487 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 6488 0004 0C46     		mov	r4, r1
 6489 0006 A5B0     		sub	sp, sp, #148
 6490 0008 1646     		mov	r6, r2
 6491 000a 8046     		mov	r8, r0
 6492 000c FFF7FEFF 		bl	_ZN6GCodes15ClearBedMappingEv
 6493 0010 2046     		mov	r0, r4
 6494 0012 0024     		movs	r4, #0
 6495 0014 0DF10B03 		add	r3, sp, #11
 6496 0018 8DF81440 		strb	r4, [sp, #20]
 6497 001c 8DF80B40 		strb	r4, [sp, #11]
 6498 0020 7925     		movs	r5, #121
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 115


 6499 0022 03AA     		add	r2, sp, #12
 6500 0024 5021     		movs	r1, #80
 6501 0026 05AC     		add	r4, sp, #20
 6502 0028 CDE90345 		strd	r4, r5, [sp, #12]
 6503 002c FFF7FEFF 		bl	_ZN11GCodeBuffer18TryGetQuotedStringEcRK9StringRefRb
 6504 0030 9DF80B30 		ldrb	r3, [sp, #11]	@ zero_extendqisi2
 6505 0034 2BB3     		cbz	r3, .L1280
 6506              	.L1275:
 6507 0036 D8F80430 		ldr	r3, [r8, #4]
 6508 003a 2949     		ldr	r1, .L1283
 6509 003c D3F8DC0B 		ldr	r0, [r3, #3036]
 6510 0040 05AA     		add	r2, sp, #20
 6511 0042 0023     		movs	r3, #0
 6512 0044 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 6513 0048 0446     		mov	r4, r0
 6514 004a 0028     		cmp	r0, #0
 6515 004c 3ED0     		beq	.L1281
 6516 004e 254D     		ldr	r5, .L1283+4
 6517 0050 2549     		ldr	r1, .L1283+8
 6518 0052 05AA     		add	r2, sp, #20
 6519 0054 3046     		mov	r0, r6
 6520 0056 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6521 005a 2146     		mov	r1, r4
 6522 005c 3246     		mov	r2, r6
 6523 005e E868     		ldr	r0, [r5, #12]
 6524 0060 FFF7FEFF 		bl	_ZN4Move21LoadHeightMapFromFileEP9FileStoreRK9StringRef
 6525 0064 0746     		mov	r7, r0
 6526 0066 2046     		mov	r0, r4
 6527 0068 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6528 006c 87F00101 		eor	r1, r7, #1
 6529 0070 C9B2     		uxtb	r1, r1
 6530 0072 E868     		ldr	r0, [r5, #12]
 6531 0074 FFF7FEFF 		bl	_ZN4Move7UseMeshEb
 6532 0078 5FB1     		cbz	r7, .L1282
 6533 007a 0220     		movs	r0, #2
 6534 007c 25B0     		add	sp, sp, #148
 6535              		@ sp needed
 6536 007e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 6537              	.L1280:
 6538 0082 05AB     		add	r3, sp, #20
 6539 0084 03A8     		add	r0, sp, #12
 6540 0086 1949     		ldr	r1, .L1283+12
 6541 0088 CDE90335 		strd	r3, r5, [sp, #12]
 6542 008c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6543 0090 D1E7     		b	.L1275
 6544              	.L1282:
 6545 0092 3368     		ldr	r3, [r6]
 6546 0094 2846     		mov	r0, r5
 6547 0096 1F70     		strb	r7, [r3]
 6548 0098 EE68     		ldr	r6, [r5, #12]
 6549 009a FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 6550 009e 8146     		mov	r9, r0
 6551 00a0 2846     		mov	r0, r5
 6552 00a2 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 6553 00a6 08F1EC04 		add	r4, r8, #236
 6554 00aa 0090     		str	r0, [sp]
 6555 00ac 4B46     		mov	r3, r9
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 116


 6556 00ae 3046     		mov	r0, r6
 6557 00b0 3A46     		mov	r2, r7
 6558 00b2 2146     		mov	r1, r4
 6559 00b4 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 6560 00b8 4046     		mov	r0, r8
 6561 00ba 2146     		mov	r1, r4
 6562 00bc 08F1C002 		add	r2, r8, #192
 6563 00c0 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 6564 00c4 0120     		movs	r0, #1
 6565 00c6 25B0     		add	sp, sp, #148
 6566              		@ sp needed
 6567 00c8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 6568              	.L1281:
 6569 00cc 05AA     		add	r2, sp, #20
 6570 00ce 3046     		mov	r0, r6
 6571 00d0 0749     		ldr	r1, .L1283+16
 6572 00d2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6573 00d6 0220     		movs	r0, #2
 6574 00d8 25B0     		add	sp, sp, #148
 6575              		@ sp needed
 6576 00da BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 6577              	.L1284:
 6578 00de 00BF     		.align	2
 6579              	.L1283:
 6580 00e0 34000000 		.word	.LC16
 6581 00e4 00000000 		.word	reprap
 6582 00e8 20000000 		.word	.LC112
 6583 00ec 00000000 		.word	.LC52
 6584 00f0 00000000 		.word	.LC111
 6585              		.size	_ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef, .-_ZN6GCodes13LoadHeightMapER11GCodeBu
 6586              		.section	.text._ZN6GCodes22TranslateEndStopResultE10EndStopHit,"ax",%progbits
 6587              		.align	1
 6588              		.p2align 2,,3
 6589              		.global	_ZN6GCodes22TranslateEndStopResultE10EndStopHit
 6590              		.syntax unified
 6591              		.thumb
 6592              		.thumb_func
 6593              		.fpu fpv4-sp-d16
 6594              		.type	_ZN6GCodes22TranslateEndStopResultE10EndStopHit, %function
 6595              	_ZN6GCodes22TranslateEndStopResultE10EndStopHit:
 6596              		@ args = 0, pretend = 0, frame = 0
 6597              		@ frame_needed = 0, uses_anonymous_args = 0
 6598              		@ link register save eliminated.
 6599 0000 0139     		subs	r1, r1, #1
 6600 0002 0229     		cmp	r1, #2
 6601 0004 9ABF     		itte	ls
 6602 0006 024B     		ldrls	r3, .L1288
 6603 0008 53F82100 		ldrls	r0, [r3, r1, lsl #2]
 6604 000c 0148     		ldrhi	r0, .L1288+4
 6605 000e 7047     		bx	lr
 6606              	.L1289:
 6607              		.align	2
 6608              	.L1288:
 6609 0010 00000000 		.word	.LANCHOR4
 6610 0014 00000000 		.word	.LC113
 6611              		.size	_ZN6GCodes22TranslateEndStopResultE10EndStopHit, .-_ZN6GCodes22TranslateEndStopResultE10EndS
 6612              		.section	.text._ZN6GCodes12ListTriggersERK9StringRefm,"ax",%progbits
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 117


 6613              		.align	1
 6614              		.p2align 2,,3
 6615              		.global	_ZN6GCodes12ListTriggersERK9StringRefm
 6616              		.syntax unified
 6617              		.thumb
 6618              		.thumb_func
 6619              		.fpu fpv4-sp-d16
 6620              		.type	_ZN6GCodes12ListTriggersERK9StringRefm, %function
 6621              	_ZN6GCodes12ListTriggersERK9StringRefm:
 6622              		@ args = 0, pretend = 0, frame = 0
 6623              		@ frame_needed = 0, uses_anonymous_args = 0
 6624 0000 BAB3     		cbz	r2, .L1306
 6625 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6626 0006 0024     		movs	r4, #0
 6627 0008 1546     		mov	r5, r2
 6628 000a 0F46     		mov	r7, r1
 6629 000c 0646     		mov	r6, r0
 6630 000e DFF87080 		ldr	r8, .L1310+4
 6631 0012 2246     		mov	r2, r4
 6632 0014 0BE0     		b	.L1291
 6633              	.L1293:
 6634 0016 D6F86033 		ldr	r3, [r6, #864]
 6635 001a A342     		cmp	r3, r4
 6636 001c 15D8     		bhi	.L1307
 6637              	.L1294:
 6638 001e D6F85C23 		ldr	r2, [r6, #860]
 6639 0022 A242     		cmp	r2, r4
 6640 0024 1ED9     		bls	.L1308
 6641 0026 0122     		movs	r2, #1
 6642              	.L1292:
 6643 0028 0134     		adds	r4, r4, #1
 6644 002a 0C2C     		cmp	r4, #12
 6645 002c 18D0     		beq	.L1309
 6646              	.L1291:
 6647 002e 25FA04F3 		lsr	r3, r5, r4
 6648 0032 DB07     		lsls	r3, r3, #31
 6649 0034 F8D5     		bpl	.L1292
 6650 0036 002A     		cmp	r2, #0
 6651 0038 EDD0     		beq	.L1293
 6652 003a 2021     		movs	r1, #32
 6653 003c 3846     		mov	r0, r7
 6654 003e FFF7FEFF 		bl	_ZNK9StringRef3catEc
 6655 0042 D6F86033 		ldr	r3, [r6, #864]
 6656 0046 A342     		cmp	r3, r4
 6657 0048 E9D9     		bls	.L1294
 6658              	.L1307:
 6659 004a 3319     		adds	r3, r6, r4
 6660 004c 3846     		mov	r0, r7
 6661 004e 93F81015 		ldrb	r1, [r3, #1296]	@ zero_extendqisi2
 6662 0052 0134     		adds	r4, r4, #1
 6663 0054 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 6664 0058 0C2C     		cmp	r4, #12
 6665 005a 4FF00102 		mov	r2, #1
 6666 005e E6D1     		bne	.L1291
 6667              	.L1309:
 6668 0060 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6669              	.L1308:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 118


 6670 0064 A21A     		subs	r2, r4, r2
 6671 0066 4146     		mov	r1, r8
 6672 0068 3846     		mov	r0, r7
 6673 006a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6674 006e 0122     		movs	r2, #1
 6675 0070 DAE7     		b	.L1292
 6676              	.L1306:
 6677 0072 0846     		mov	r0, r1
 6678 0074 0149     		ldr	r1, .L1310
 6679 0076 FFF7FEBF 		b	_ZNK9StringRef3catEPKc
 6680              	.L1311:
 6681 007a 00BF     		.align	2
 6682              	.L1310:
 6683 007c 00000000 		.word	.LC114
 6684 0080 08000000 		.word	.LC115
 6685              		.size	_ZN6GCodes12ListTriggersERK9StringRefm, .-_ZN6GCodes12ListTriggersERK9StringRefm
 6686              		.section	.text._ZN6GCodes9StartHashEPKc,"ax",%progbits
 6687              		.align	1
 6688              		.p2align 2,,3
 6689              		.global	_ZN6GCodes9StartHashEPKc
 6690              		.syntax unified
 6691              		.thumb
 6692              		.thumb_func
 6693              		.fpu fpv4-sp-d16
 6694              		.type	_ZN6GCodes9StartHashEPKc, %function
 6695              	_ZN6GCodes9StartHashEPKc:
 6696              		@ args = 0, pretend = 0, frame = 0
 6697              		@ frame_needed = 0, uses_anonymous_args = 0
 6698 0000 10B5     		push	{r4, lr}
 6699 0002 4368     		ldr	r3, [r0, #4]
 6700 0004 0446     		mov	r4, r0
 6701 0006 0A46     		mov	r2, r1
 6702 0008 D3F8DC0B 		ldr	r0, [r3, #3036]
 6703 000c 0649     		ldr	r1, .L1316
 6704 000e 0023     		movs	r3, #0
 6705 0010 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 6706 0014 C4F8BC06 		str	r0, [r4, #1724]
 6707 0018 20B1     		cbz	r0, .L1313
 6708 001a 04F5D860 		add	r0, r4, #1728
 6709 001e FFF7FEFF 		bl	SHA1Reset
 6710 0022 0120     		movs	r0, #1
 6711              	.L1313:
 6712 0024 10BD     		pop	{r4, pc}
 6713              	.L1317:
 6714 0026 00BF     		.align	2
 6715              	.L1316:
 6716 0028 00000000 		.word	.LC116
 6717              		.size	_ZN6GCodes9StartHashEPKc, .-_ZN6GCodes9StartHashEPKc
 6718              		.section	.text._ZN6GCodes11AdvanceHashERK9StringRef,"ax",%progbits
 6719              		.align	1
 6720              		.p2align 2,,3
 6721              		.global	_ZN6GCodes11AdvanceHashERK9StringRef
 6722              		.syntax unified
 6723              		.thumb
 6724              		.thumb_func
 6725              		.fpu fpv4-sp-d16
 6726              		.type	_ZN6GCodes11AdvanceHashERK9StringRef, %function
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 119


 6727              	_ZN6GCodes11AdvanceHashERK9StringRef:
 6728              		@ args = 0, pretend = 0, frame = 128
 6729              		@ frame_needed = 0, uses_anonymous_args = 0
 6730 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6731 0004 A0B0     		sub	sp, sp, #128
 6732 0006 0546     		mov	r5, r0
 6733 0008 0F46     		mov	r7, r1
 6734 000a D0F8BC06 		ldr	r0, [r0, #1724]
 6735 000e 6946     		mov	r1, sp
 6736 0010 8022     		movs	r2, #128
 6737 0012 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 6738 0016 431C     		adds	r3, r0, #1
 6739 0018 18D0     		beq	.L1319
 6740 001a 0646     		mov	r6, r0
 6741 001c 05F5D864 		add	r4, r5, #1728
 6742 0020 6946     		mov	r1, sp
 6743 0022 2046     		mov	r0, r4
 6744 0024 3246     		mov	r2, r6
 6745 0026 FFF7FEFF 		bl	SHA1Input
 6746 002a 802E     		cmp	r6, #128
 6747 002c 19D0     		beq	.L1322
 6748 002e 2046     		mov	r0, r4
 6749 0030 FFF7FEFF 		bl	SHA1Result
 6750 0034 DFF83480 		ldr	r8, .L1325
 6751 0038 05F2D466 		addw	r6, r5, #1748
 6752              	.L1321:
 6753 003c 54F8042B 		ldr	r2, [r4], #4
 6754 0040 4146     		mov	r1, r8
 6755 0042 3846     		mov	r0, r7
 6756 0044 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 6757 0048 B442     		cmp	r4, r6
 6758 004a F7D1     		bne	.L1321
 6759              	.L1319:
 6760 004c D5F8BC06 		ldr	r0, [r5, #1724]
 6761 0050 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6762 0054 0023     		movs	r3, #0
 6763 0056 0120     		movs	r0, #1
 6764 0058 C5F8BC36 		str	r3, [r5, #1724]
 6765 005c 20B0     		add	sp, sp, #128
 6766              		@ sp needed
 6767 005e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6768              	.L1322:
 6769 0062 0020     		movs	r0, #0
 6770 0064 20B0     		add	sp, sp, #128
 6771              		@ sp needed
 6772 0066 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6773              	.L1326:
 6774 006a 00BF     		.align	2
 6775              	.L1325:
 6776 006c 00000000 		.word	.LC117
 6777              		.size	_ZN6GCodes11AdvanceHashERK9StringRef, .-_ZN6GCodes11AdvanceHashERK9StringRef
 6778              		.section	.text._ZNK6GCodes15AllAxesAreHomedEv,"ax",%progbits
 6779              		.align	1
 6780              		.p2align 2,,3
 6781              		.global	_ZNK6GCodes15AllAxesAreHomedEv
 6782              		.syntax unified
 6783              		.thumb
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 120


 6784              		.thumb_func
 6785              		.fpu fpv4-sp-d16
 6786              		.type	_ZNK6GCodes15AllAxesAreHomedEv, %function
 6787              	_ZNK6GCodes15AllAxesAreHomedEv:
 6788              		@ args = 0, pretend = 0, frame = 0
 6789              		@ frame_needed = 0, uses_anonymous_args = 0
 6790              		@ link register save eliminated.
 6791 0000 D0F86013 		ldr	r1, [r0, #864]
 6792 0004 D0F82C25 		ldr	r2, [r0, #1324]
 6793 0008 0123     		movs	r3, #1
 6794 000a 8B40     		lsls	r3, r3, r1
 6795 000c 013B     		subs	r3, r3, #1
 6796 000e 9343     		bics	r3, r3, r2
 6797 0010 0CBF     		ite	eq
 6798 0012 0120     		moveq	r0, #1
 6799 0014 0020     		movne	r0, #0
 6800 0016 7047     		bx	lr
 6801              		.size	_ZNK6GCodes15AllAxesAreHomedEv, .-_ZNK6GCodes15AllAxesAreHomedEv
 6802              		.section	.text._ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef,"ax",%progbits
 6803              		.align	1
 6804              		.p2align 2,,3
 6805              		.global	_ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef
 6806              		.syntax unified
 6807              		.thumb
 6808              		.thumb_func
 6809              		.fpu fpv4-sp-d16
 6810              		.type	_ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef, %function
 6811              	_ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef:
 6812              		@ args = 0, pretend = 0, frame = 0
 6813              		@ frame_needed = 0, uses_anonymous_args = 0
 6814 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6815 0004 4368     		ldr	r3, [r0, #4]
 6816 0006 0446     		mov	r4, r0
 6817 0008 0F46     		mov	r7, r1
 6818 000a D3F8DC0B 		ldr	r0, [r3, #3036]
 6819 000e 3749     		ldr	r1, .L1357
 6820 0010 1646     		mov	r6, r2
 6821 0012 0123     		movs	r3, #1
 6822 0014 364A     		ldr	r2, .L1357+4
 6823 0016 FFF7FEFF 		bl	_ZN11MassStorage8OpenFileEPKcS1_8OpenMode
 6824 001a 0028     		cmp	r0, #0
 6825 001c 52D0     		beq	.L1353
 6826 001e 3549     		ldr	r1, .L1357+8
 6827 0020 0546     		mov	r5, r0
 6828 0022 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 6829 0026 90B9     		cbnz	r0, .L1354
 6830              	.L1331:
 6831 0028 2846     		mov	r0, r5
 6832 002a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6833              	.L1336:
 6834 002e 304A     		ldr	r2, .L1357+4
 6835 0030 3149     		ldr	r1, .L1357+12
 6836 0032 3046     		mov	r0, r6
 6837 0034 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6838 0038 6368     		ldr	r3, [r4, #4]
 6839 003a 2D4A     		ldr	r2, .L1357+4
 6840 003c D3F8DC0B 		ldr	r0, [r3, #3036]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 121


 6841 0040 2A49     		ldr	r1, .L1357
 6842 0042 0023     		movs	r3, #0
 6843 0044 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 6844 0048 0220     		movs	r0, #2
 6845              	.L1351:
 6846 004a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6847              	.L1354:
 6848 004e DFF8B080 		ldr	r8, .L1357+20
 6849 0052 2A4A     		ldr	r2, .L1357+16
 6850 0054 D8F80C30 		ldr	r3, [r8, #12]
 6851 0058 D3F8740A 		ldr	r0, [r3, #2676]
 6852 005c 0368     		ldr	r3, [r0]
 6853 005e DB69     		ldr	r3, [r3, #28]
 6854 0060 9342     		cmp	r3, r2
 6855 0062 3DD1     		bne	.L1332
 6856              	.L1334:
 6857 0064 D8F81000 		ldr	r0, [r8, #16]
 6858 0068 2946     		mov	r1, r5
 6859 006a FFF7FEFF 		bl	_ZNK4Heat20WriteModelParametersEP9FileStore
 6860 006e 0028     		cmp	r0, #0
 6861 0070 DAD0     		beq	.L1331
 6862 0072 5021     		movs	r1, #80
 6863 0074 3846     		mov	r0, r7
 6864 0076 D4F80480 		ldr	r8, [r4, #4]
 6865 007a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6866 007e C0B9     		cbnz	r0, .L1355
 6867              	.L1335:
 6868 0080 0246     		mov	r2, r0
 6869 0082 2946     		mov	r1, r5
 6870 0084 4046     		mov	r0, r8
 6871 0086 FFF7FEFF 		bl	_ZNK8Platform23WritePlatformParametersEP9FileStoreb
 6872 008a 0028     		cmp	r0, #0
 6873 008c CCD0     		beq	.L1331
 6874 008e 2946     		mov	r1, r5
 6875 0090 1B48     		ldr	r0, .L1357+20
 6876 0092 FFF7FEFF 		bl	_ZNK6RepRap19WriteToolParametersEP9FileStore
 6877 0096 0746     		mov	r7, r0
 6878 0098 2846     		mov	r0, r5
 6879 009a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6880 009e 0028     		cmp	r0, #0
 6881 00a0 C5D0     		beq	.L1336
 6882 00a2 002F     		cmp	r7, #0
 6883 00a4 C3D0     		beq	.L1336
 6884 00a6 94F84837 		ldrb	r3, [r4, #1864]	@ zero_extendqisi2
 6885 00aa 9BB1     		cbz	r3, .L1356
 6886 00ac 0120     		movs	r0, #1
 6887 00ae BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6888              	.L1355:
 6889 00b2 3846     		mov	r0, r7
 6890 00b4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6891 00b8 A0F11F00 		sub	r0, #31
 6892 00bc B0FA80F0 		clz	r0, r0
 6893 00c0 4009     		lsrs	r0, r0, #5
 6894 00c2 DDE7     		b	.L1335
 6895              	.L1353:
 6896 00c4 3046     		mov	r0, r6
 6897 00c6 0A4A     		ldr	r2, .L1357+4
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 122


 6898 00c8 0E49     		ldr	r1, .L1357+24
 6899 00ca FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 6900 00ce 0220     		movs	r0, #2
 6901 00d0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6902              	.L1356:
 6903 00d4 3046     		mov	r0, r6
 6904 00d6 0C49     		ldr	r1, .L1357+28
 6905 00d8 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 6906 00dc 0320     		movs	r0, #3
 6907 00de B4E7     		b	.L1351
 6908              	.L1332:
 6909 00e0 2946     		mov	r1, r5
 6910 00e2 9847     		blx	r3
 6911 00e4 0028     		cmp	r0, #0
 6912 00e6 BDD1     		bne	.L1334
 6913 00e8 9EE7     		b	.L1331
 6914              	.L1358:
 6915 00ea 00BF     		.align	2
 6916              	.L1357:
 6917 00ec 34000000 		.word	.LC16
 6918 00f0 00000000 		.word	.LC118
 6919 00f4 14000000 		.word	.LC119
 6920 00f8 48000000 		.word	.LC120
 6921 00fc 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 6922 0100 00000000 		.word	reprap
 6923 0104 3C000000 		.word	.LC17
 6924 0108 60000000 		.word	.LC121
 6925              		.size	_ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef, .-_ZNK6GCodes23WriteConfigO
 6926              		.section	.text._ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb,"ax",%progbits
 6927              		.align	1
 6928              		.p2align 2,,3
 6929              		.global	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb
 6930              		.syntax unified
 6931              		.thumb
 6932              		.thumb_func
 6933              		.fpu fpv4-sp-d16
 6934              		.type	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb, %function
 6935              	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb:
 6936              		@ args = 0, pretend = 0, frame = 0
 6937              		@ frame_needed = 0, uses_anonymous_args = 0
 6938              		@ link register save eliminated.
 6939 0000 0846     		mov	r0, r1
 6940 0002 1146     		mov	r1, r2
 6941 0004 12B1     		cbz	r2, .L1359
 6942 0006 D2F89820 		ldr	r2, [r2, #152]
 6943 000a 02B9     		cbnz	r2, .L1367
 6944              	.L1359:
 6945 000c 7047     		bx	lr
 6946              	.L1367:
 6947 000e 1A46     		mov	r2, r3
 6948 0010 FFF7FEBF 		b	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.61
 6949              		.size	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb, .-_ZNK6GCodes22ReportToolTemperatu
 6950              		.section	.text._ZNK6GCodes25GenerateTemperatureReportERK9StringRef,"ax",%progbits
 6951              		.align	1
 6952              		.p2align 2,,3
 6953              		.global	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef
 6954              		.syntax unified
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 123


 6955              		.thumb
 6956              		.thumb_func
 6957              		.fpu fpv4-sp-d16
 6958              		.type	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef, %function
 6959              	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef:
 6960              		@ args = 0, pretend = 0, frame = 8
 6961              		@ frame_needed = 0, uses_anonymous_args = 0
 6962 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6963 0004 7B4E     		ldr	r6, .L1408
 6964 0006 D6F8EC30 		ldr	r3, [r6, #236]
 6965 000a 3569     		ldr	r5, [r6, #16]
 6966 000c 85B0     		sub	sp, sp, #20
 6967 000e 0C46     		mov	r4, r1
 6968 0010 23B1     		cbz	r3, .L1369
 6969 0012 D3F89820 		ldr	r2, [r3, #152]
 6970 0016 002A     		cmp	r2, #0
 6971 0018 40F08980 		bne	.L1404
 6972              	.L1369:
 6973 001c D6F8E860 		ldr	r6, [r6, #232]
 6974 0020 16B9     		cbnz	r6, .L1372
 6975 0022 0DE0     		b	.L1370
 6976              	.L1371:
 6977 0024 3668     		ldr	r6, [r6]
 6978 0026 5EB1     		cbz	r6, .L1370
 6979              	.L1372:
 6980 0028 D6F89830 		ldr	r3, [r6, #152]
 6981 002c 002B     		cmp	r3, #0
 6982 002e F9D0     		beq	.L1371
 6983 0030 3146     		mov	r1, r6
 6984 0032 0122     		movs	r2, #1
 6985 0034 2046     		mov	r0, r4
 6986 0036 FFF7FEFF 		bl	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.61
 6987 003a 3668     		ldr	r6, [r6]
 6988 003c 002E     		cmp	r6, #0
 6989 003e F3D1     		bne	.L1372
 6990              	.L1370:
 6991 0040 05F1D906 		add	r6, r5, #217
 6992 0044 96F90070 		ldrsb	r7, [r6]
 6993 0048 DFF8B8A1 		ldr	r10, .L1408+16
 6994 004c DFF8ACB1 		ldr	fp, .L1408+8
 6995 0050 0023     		movs	r3, #0
 6996 0052 002F     		cmp	r7, #0
 6997 0054 1A46     		mov	r2, r3
 6998 0056 5146     		mov	r1, r10
 6999 0058 2046     		mov	r0, r4
 7000 005a 30DB     		blt	.L1379
 7001              	.L1374:
 7002 005c 5F1C     		adds	r7, r3, #1
 7003 005e 002B     		cmp	r3, #0
 7004 0060 6BD0     		beq	.L1405
 7005 0062 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7006 0066 96F90080 		ldrsb	r8, [r6]
 7007 006a 2846     		mov	r0, r5
 7008 006c 4146     		mov	r1, r8
 7009 006e FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 7010 0072 4146     		mov	r1, r8
 7011 0074 2846     		mov	r0, r5
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 124


 7012 0076 10EE109A 		vmov	r9, s0
 7013 007a FFF7FEFF 		bl	_ZNK4Heat20GetTargetTemperatureEa
 7014 007e 4846     		mov	r0, r9	@ float
 7015 0080 8DED030A 		vstr.32	s0, [sp, #12]	@ int
 7016 0084 FFF7FEFF 		bl	__aeabi_f2d
 7017 0088 9DED030A 		vldr.32	s0, [sp, #12]	@ int
 7018 008c 8046     		mov	r8, r0
 7019 008e 10EE100A 		vmov	r0, s0
 7020 0092 8946     		mov	r9, r1
 7021 0094 FFF7FEFF 		bl	__aeabi_f2d
 7022 0098 4246     		mov	r2, r8
 7023 009a CDE90001 		strd	r0, [sp]
 7024 009e 4B46     		mov	r3, r9
 7025 00a0 5946     		mov	r1, fp
 7026 00a2 2046     		mov	r0, r4
 7027 00a4 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7028 00a8 042F     		cmp	r7, #4
 7029 00aa 08D0     		beq	.L1379
 7030              	.L1378:
 7031 00ac 0136     		adds	r6, r6, #1
 7032 00ae 3B46     		mov	r3, r7
 7033 00b0 96F90070 		ldrsb	r7, [r6]
 7034 00b4 002F     		cmp	r7, #0
 7035 00b6 1A46     		mov	r2, r3
 7036 00b8 5146     		mov	r1, r10
 7037 00ba 2046     		mov	r0, r4
 7038 00bc CEDA     		bge	.L1374
 7039              	.L1379:
 7040 00be DFF848B1 		ldr	fp, .L1408+20
 7041 00c2 DFF838A1 		ldr	r10, .L1408+8
 7042 00c6 05F1DD07 		add	r7, r5, #221
 7043 00ca 0026     		movs	r6, #0
 7044              	.L1375:
 7045 00cc 97F90030 		ldrsb	r3, [r7]
 7046 00d0 002B     		cmp	r3, #0
 7047 00d2 06F10106 		add	r6, r6, #1
 7048 00d6 27DB     		blt	.L1368
 7049 00d8 012E     		cmp	r6, #1
 7050 00da 5CD0     		beq	.L1406
 7051 00dc 0122     		movs	r2, #1
 7052 00de 4649     		ldr	r1, .L1408+4
 7053 00e0 2046     		mov	r0, r4
 7054 00e2 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7055 00e6 97F90060 		ldrsb	r6, [r7]
 7056 00ea 2846     		mov	r0, r5
 7057 00ec 3146     		mov	r1, r6
 7058 00ee FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 7059 00f2 3146     		mov	r1, r6
 7060 00f4 2846     		mov	r0, r5
 7061 00f6 10EE107A 		vmov	r7, s0
 7062 00fa FFF7FEFF 		bl	_ZNK4Heat20GetTargetTemperatureEa
 7063 00fe 3846     		mov	r0, r7	@ float
 7064 0100 8DED030A 		vstr.32	s0, [sp, #12]	@ int
 7065 0104 FFF7FEFF 		bl	__aeabi_f2d
 7066 0108 9DED030A 		vldr.32	s0, [sp, #12]	@ int
 7067 010c 0646     		mov	r6, r0
 7068 010e 10EE100A 		vmov	r0, s0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 125


 7069 0112 0F46     		mov	r7, r1
 7070 0114 FFF7FEFF 		bl	__aeabi_f2d
 7071 0118 3246     		mov	r2, r6
 7072 011a CDE90001 		strd	r0, [sp]
 7073 011e 3B46     		mov	r3, r7
 7074 0120 2046     		mov	r0, r4
 7075 0122 3649     		ldr	r1, .L1408+8
 7076 0124 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7077              	.L1368:
 7078 0128 05B0     		add	sp, sp, #20
 7079              		@ sp needed
 7080 012a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 7081              	.L1404:
 7082 012e 1946     		mov	r1, r3
 7083 0130 0022     		movs	r2, #0
 7084 0132 2046     		mov	r0, r4
 7085 0134 FFF7FEFF 		bl	_ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.61
 7086 0138 70E7     		b	.L1369
 7087              	.L1405:
 7088 013a FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 7089 013e 28BB     		cbnz	r0, .L1407
 7090              	.L1377:
 7091 0140 2F49     		ldr	r1, .L1408+12
 7092 0142 2046     		mov	r0, r4
 7093 0144 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 7094 0148 96F90080 		ldrsb	r8, [r6]
 7095 014c 2846     		mov	r0, r5
 7096 014e 4146     		mov	r1, r8
 7097 0150 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 7098 0154 4146     		mov	r1, r8
 7099 0156 2846     		mov	r0, r5
 7100 0158 10EE109A 		vmov	r9, s0
 7101 015c FFF7FEFF 		bl	_ZNK4Heat20GetTargetTemperatureEa
 7102 0160 4846     		mov	r0, r9	@ float
 7103 0162 8DED030A 		vstr.32	s0, [sp, #12]	@ int
 7104 0166 FFF7FEFF 		bl	__aeabi_f2d
 7105 016a 9DED030A 		vldr.32	s0, [sp, #12]	@ int
 7106 016e 8046     		mov	r8, r0
 7107 0170 10EE100A 		vmov	r0, s0
 7108 0174 8946     		mov	r9, r1
 7109 0176 FFF7FEFF 		bl	__aeabi_f2d
 7110 017a 4246     		mov	r2, r8
 7111 017c CDE90001 		strd	r0, [sp]
 7112 0180 4B46     		mov	r3, r9
 7113 0182 5946     		mov	r1, fp
 7114 0184 2046     		mov	r0, r4
 7115 0186 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7116 018a 8FE7     		b	.L1378
 7117              	.L1407:
 7118 018c 2021     		movs	r1, #32
 7119 018e 2046     		mov	r0, r4
 7120 0190 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 7121 0194 D4E7     		b	.L1377
 7122              	.L1406:
 7123 0196 2046     		mov	r0, r4
 7124 0198 FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 7125 019c 18B1     		cbz	r0, .L1382
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 126


 7126 019e 2021     		movs	r1, #32
 7127 01a0 2046     		mov	r0, r4
 7128 01a2 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 7129              	.L1382:
 7130 01a6 5946     		mov	r1, fp
 7131 01a8 2046     		mov	r0, r4
 7132 01aa FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 7133 01ae 17F9018B 		ldrsb	r8, [r7], #1
 7134 01b2 2846     		mov	r0, r5
 7135 01b4 4146     		mov	r1, r8
 7136 01b6 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 7137 01ba 4146     		mov	r1, r8
 7138 01bc 2846     		mov	r0, r5
 7139 01be 10EE109A 		vmov	r9, s0
 7140 01c2 FFF7FEFF 		bl	_ZNK4Heat20GetTargetTemperatureEa
 7141 01c6 4846     		mov	r0, r9	@ float
 7142 01c8 8DED030A 		vstr.32	s0, [sp, #12]	@ int
 7143 01cc FFF7FEFF 		bl	__aeabi_f2d
 7144 01d0 9DED030A 		vldr.32	s0, [sp, #12]	@ int
 7145 01d4 8046     		mov	r8, r0
 7146 01d6 10EE100A 		vmov	r0, s0
 7147 01da 8946     		mov	r9, r1
 7148 01dc FFF7FEFF 		bl	__aeabi_f2d
 7149 01e0 4246     		mov	r2, r8
 7150 01e2 CDE90001 		strd	r0, [sp]
 7151 01e6 4B46     		mov	r3, r9
 7152 01e8 5146     		mov	r1, r10
 7153 01ea 2046     		mov	r0, r4
 7154 01ec FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 7155 01f0 6CE7     		b	.L1375
 7156              	.L1409:
 7157 01f2 00BF     		.align	2
 7158              	.L1408:
 7159 01f4 00000000 		.word	reprap
 7160 01f8 1C000000 		.word	.LC126
 7161 01fc 04000000 		.word	.LC123
 7162 0200 00000000 		.word	.LC122
 7163 0204 10000000 		.word	.LC124
 7164 0208 18000000 		.word	.LC125
 7165              		.size	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef, .-_ZNK6GCodes25GenerateTemperatureRepor
 7166              		.section	.text._ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource,"ax",%progbits
 7167              		.align	1
 7168              		.p2align 2,,3
 7169              		.global	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource
 7170              		.syntax unified
 7171              		.thumb
 7172              		.thumb_func
 7173              		.fpu fpv4-sp-d16
 7174              		.type	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource, %function
 7175              	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource:
 7176              		@ args = 0, pretend = 0, frame = 8
 7177              		@ frame_needed = 0, uses_anonymous_args = 0
 7178 0000 00B5     		push	{lr}
 7179 0002 83B0     		sub	sp, sp, #12
 7180 0004 0020     		movs	r0, #0
 7181 0006 0190     		str	r0, [sp, #4]
 7182 0008 0529     		cmp	r1, #5
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 127


 7183 000a 26D8     		bhi	.L1417
 7184 000c DFE801F0 		tbb	[pc, r1]
 7185              	.L1413:
 7186 0010 1E       		.byte	(.L1412-.L1413)/2
 7187 0011 1E       		.byte	(.L1412-.L1413)/2
 7188 0012 16       		.byte	(.L1414-.L1413)/2
 7189 0013 16       		.byte	(.L1414-.L1413)/2
 7190 0014 16       		.byte	(.L1414-.L1413)/2
 7191 0015 03       		.byte	(.L1415-.L1413)/2
 7192              		.p2align 1
 7193              	.L1415:
 7194 0016 1248     		ldr	r0, .L1425
 7195 0018 FFF7FEFF 		bl	_ZN6RepRap17GetConfigResponseEv
 7196 001c 0190     		str	r0, [sp, #4]
 7197              	.L1416:
 7198 001e 50B1     		cbz	r0, .L1410
 7199 0020 0A21     		movs	r1, #10
 7200 0022 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 7201 0026 0198     		ldr	r0, [sp, #4]
 7202 0028 90F81531 		ldrb	r3, [r0, #277]	@ zero_extendqisi2
 7203 002c 1BB1     		cbz	r3, .L1410
 7204 002e 01A8     		add	r0, sp, #4
 7205 0030 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllERVPS_
 7206 0034 0198     		ldr	r0, [sp, #4]
 7207              	.L1410:
 7208 0036 03B0     		add	sp, sp, #12
 7209              		@ sp needed
 7210 0038 5DF804FB 		ldr	pc, [sp], #4
 7211              	.L1414:
 7212 003c 0139     		subs	r1, r1, #1
 7213 003e C9B2     		uxtb	r1, r1
 7214 0040 1A46     		mov	r2, r3
 7215 0042 0748     		ldr	r0, .L1425
 7216 0044 FFF7FEFF 		bl	_ZN6RepRap17GetStatusResponseEh14ResponseSource
 7217 0048 0190     		str	r0, [sp, #4]
 7218 004a E8E7     		b	.L1416
 7219              	.L1412:
 7220 004c 0231     		adds	r1, r1, #2
 7221 004e C9B2     		uxtb	r1, r1
 7222 0050 0348     		ldr	r0, .L1425
 7223 0052 FFF7FEFF 		bl	_ZN6RepRap23GetLegacyStatusResponseEhi
 7224 0056 0190     		str	r0, [sp, #4]
 7225 0058 E1E7     		b	.L1416
 7226              	.L1417:
 7227 005a 0020     		movs	r0, #0
 7228 005c EBE7     		b	.L1410
 7229              	.L1426:
 7230 005e 00BF     		.align	2
 7231              	.L1425:
 7232 0060 00000000 		.word	reprap
 7233              		.size	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource, .-_ZNK6GCodes26GenerateJsonStatu
 7234              		.section	.text._ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef,"ax",%progbits
 7235              		.align	1
 7236              		.p2align 2,,3
 7237              		.global	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef
 7238              		.syntax unified
 7239              		.thumb
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 128


 7240              		.thumb_func
 7241              		.fpu fpv4-sp-d16
 7242              		.type	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef, %function
 7243              	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef:
 7244              		@ args = 0, pretend = 0, frame = 0
 7245              		@ frame_needed = 0, uses_anonymous_args = 0
 7246 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 7247 0002 0C46     		mov	r4, r1
 7248 0004 0646     		mov	r6, r0
 7249 0006 1746     		mov	r7, r2
 7250 0008 FFF7FEFF 		bl	millis
 7251 000c 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 7252 000e 0546     		mov	r5, r0
 7253 0010 2BB1     		cbz	r3, .L1428
 7254 0012 2368     		ldr	r3, [r4]
 7255 0014 C31A     		subs	r3, r0, r3
 7256 0016 B3F57A7F 		cmp	r3, #1000
 7257 001a 04D2     		bcs	.L1439
 7258 001c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 7259              	.L1428:
 7260 001e 0123     		movs	r3, #1
 7261 0020 2060     		str	r0, [r4]
 7262 0022 2371     		strb	r3, [r4, #4]
 7263 0024 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 7264              	.L1439:
 7265 0026 7068     		ldr	r0, [r6, #4]
 7266 0028 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 7267 002c 0228     		cmp	r0, #2
 7268 002e 11D0     		beq	.L1440
 7269              	.L1430:
 7270 0030 96F94417 		ldrsb	r1, [r6, #1860]
 7271 0034 0029     		cmp	r1, #0
 7272 0036 0BDB     		blt	.L1433
 7273 0038 0123     		movs	r3, #1
 7274 003a 4FF0FF32 		mov	r2, #-1
 7275 003e 3046     		mov	r0, r6
 7276 0040 FFF7FEFF 		bl	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource
 7277 0044 20B1     		cbz	r0, .L1433
 7278 0046 0146     		mov	r1, r0
 7279 0048 0122     		movs	r2, #1
 7280 004a 7068     		ldr	r0, [r6, #4]
 7281 004c FFF7FEFF 		bl	_ZN8Platform14AppendAuxReplyEP12OutputBufferb
 7282              	.L1433:
 7283 0050 2560     		str	r5, [r4]
 7284 0052 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 7285              	.L1440:
 7286 0054 F36C     		ldr	r3, [r6, #76]
 7287 0056 1B68     		ldr	r3, [r3]
 7288 0058 A342     		cmp	r3, r4
 7289 005a 03D0     		beq	.L1431
 7290 005c 736C     		ldr	r3, [r6, #68]
 7291 005e 1B68     		ldr	r3, [r3]
 7292 0060 A342     		cmp	r3, r4
 7293 0062 E5D1     		bne	.L1430
 7294              	.L1431:
 7295 0064 3946     		mov	r1, r7
 7296 0066 3046     		mov	r0, r6
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 129


 7297 0068 FFF7FEFF 		bl	_ZNK6GCodes25GenerateTemperatureReportERK9StringRef
 7298 006c 0A21     		movs	r1, #10
 7299 006e 3846     		mov	r0, r7
 7300 0070 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 7301 0074 3A68     		ldr	r2, [r7]
 7302 0076 7068     		ldr	r0, [r6, #4]
 7303 0078 0121     		movs	r1, #1
 7304 007a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 7305 007e D7E7     		b	.L1430
 7306              		.size	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef, .-_ZNK6GCodes14CheckReportDueER11GCo
 7307              		.section	.text._ZN6GCodes12LockResourceERK11GCodeBufferj,"ax",%progbits
 7308              		.align	1
 7309              		.p2align 2,,3
 7310              		.global	_ZN6GCodes12LockResourceERK11GCodeBufferj
 7311              		.syntax unified
 7312              		.thumb
 7313              		.thumb_func
 7314              		.fpu fpv4-sp-d16
 7315              		.type	_ZN6GCodes12LockResourceERK11GCodeBufferj, %function
 7316              	_ZN6GCodes12LockResourceERK11GCodeBufferj:
 7317              		@ args = 0, pretend = 0, frame = 0
 7318              		@ frame_needed = 0, uses_anonymous_args = 0
 7319              		@ link register save eliminated.
 7320 0000 00EB8200 		add	r0, r0, r2, lsl #2
 7321 0004 836E     		ldr	r3, [r0, #104]
 7322 0006 8B42     		cmp	r3, r1
 7323 0008 0BD0     		beq	.L1443
 7324 000a 0BB1     		cbz	r3, .L1445
 7325 000c 0020     		movs	r0, #0
 7326 000e 7047     		bx	lr
 7327              	.L1445:
 7328 0010 8166     		str	r1, [r0, #104]
 7329 0012 8968     		ldr	r1, [r1, #8]
 7330 0014 0120     		movs	r0, #1
 7331 0016 CB68     		ldr	r3, [r1, #12]
 7332 0018 00FA02F2 		lsl	r2, r0, r2
 7333 001c 1A43     		orrs	r2, r2, r3
 7334 001e CA60     		str	r2, [r1, #12]
 7335 0020 7047     		bx	lr
 7336              	.L1443:
 7337 0022 0120     		movs	r0, #1
 7338 0024 7047     		bx	lr
 7339              		.size	_ZN6GCodes12LockResourceERK11GCodeBufferj, .-_ZN6GCodes12LockResourceERK11GCodeBufferj
 7340 0026 00BF     		.section	.text._ZN6GCodes12GrabResourceERK11GCodeBufferj,"ax",%progbits
 7341              		.align	1
 7342              		.p2align 2,,3
 7343              		.global	_ZN6GCodes12GrabResourceERK11GCodeBufferj
 7344              		.syntax unified
 7345              		.thumb
 7346              		.thumb_func
 7347              		.fpu fpv4-sp-d16
 7348              		.type	_ZN6GCodes12GrabResourceERK11GCodeBufferj, %function
 7349              	_ZN6GCodes12GrabResourceERK11GCodeBufferj:
 7350              		@ args = 0, pretend = 0, frame = 0
 7351              		@ frame_needed = 0, uses_anonymous_args = 0
 7352              		@ link register save eliminated.
 7353 0000 00EB8200 		add	r0, r0, r2, lsl #2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 130


 7354 0004 836E     		ldr	r3, [r0, #104]
 7355 0006 8B42     		cmp	r3, r1
 7356 0008 0FD0     		beq	.L1455
 7357 000a 7BB1     		cbz	r3, .L1456
 7358 000c 10B4     		push	{r4}
 7359 000e 0124     		movs	r4, #1
 7360 0010 9440     		lsls	r4, r4, r2
 7361 0012 9B68     		ldr	r3, [r3, #8]
 7362 0014 E443     		mvns	r4, r4
 7363              	.L1449:
 7364 0016 DA68     		ldr	r2, [r3, #12]
 7365 0018 2240     		ands	r2, r2, r4
 7366 001a DA60     		str	r2, [r3, #12]
 7367 001c 1B68     		ldr	r3, [r3]
 7368 001e 002B     		cmp	r3, #0
 7369 0020 F9D1     		bne	.L1449
 7370 0022 8166     		str	r1, [r0, #104]
 7371 0024 5DF8044B 		ldr	r4, [sp], #4
 7372 0028 7047     		bx	lr
 7373              	.L1455:
 7374 002a 7047     		bx	lr
 7375              	.L1456:
 7376 002c 8166     		str	r1, [r0, #104]
 7377 002e 7047     		bx	lr
 7378              		.size	_ZN6GCodes12GrabResourceERK11GCodeBufferj, .-_ZN6GCodes12GrabResourceERK11GCodeBufferj
 7379              		.section	.text._ZN6GCodes10LockHeaterERK11GCodeBufferi,"ax",%progbits
 7380              		.align	1
 7381              		.p2align 2,,3
 7382              		.global	_ZN6GCodes10LockHeaterERK11GCodeBufferi
 7383              		.syntax unified
 7384              		.thumb
 7385              		.thumb_func
 7386              		.fpu fpv4-sp-d16
 7387              		.type	_ZN6GCodes10LockHeaterERK11GCodeBufferi, %function
 7388              	_ZN6GCodes10LockHeaterERK11GCodeBufferi:
 7389              		@ args = 0, pretend = 0, frame = 0
 7390              		@ frame_needed = 0, uses_anonymous_args = 0
 7391              		@ link register save eliminated.
 7392 0000 072A     		cmp	r2, #7
 7393 0002 08D8     		bhi	.L1462
 7394 0004 00EB8200 		add	r0, r0, r2, lsl #2
 7395 0008 0232     		adds	r2, r2, #2
 7396 000a 036F     		ldr	r3, [r0, #112]
 7397 000c 9942     		cmp	r1, r3
 7398 000e 02D0     		beq	.L1462
 7399 0010 1BB1     		cbz	r3, .L1464
 7400 0012 0020     		movs	r0, #0
 7401 0014 7047     		bx	lr
 7402              	.L1462:
 7403 0016 0120     		movs	r0, #1
 7404 0018 7047     		bx	lr
 7405              	.L1464:
 7406 001a 0167     		str	r1, [r0, #112]
 7407 001c 8968     		ldr	r1, [r1, #8]
 7408 001e 0120     		movs	r0, #1
 7409 0020 CB68     		ldr	r3, [r1, #12]
 7410 0022 00FA02F2 		lsl	r2, r0, r2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 131


 7411 0026 1A43     		orrs	r2, r2, r3
 7412 0028 CA60     		str	r2, [r1, #12]
 7413 002a 7047     		bx	lr
 7414              		.size	_ZN6GCodes10LockHeaterERK11GCodeBufferi, .-_ZN6GCodes10LockHeaterERK11GCodeBufferi
 7415              		.section	.text._ZN6GCodes7LockFanERK11GCodeBufferi,"ax",%progbits
 7416              		.align	1
 7417              		.p2align 2,,3
 7418              		.global	_ZN6GCodes7LockFanERK11GCodeBufferi
 7419              		.syntax unified
 7420              		.thumb
 7421              		.thumb_func
 7422              		.fpu fpv4-sp-d16
 7423              		.type	_ZN6GCodes7LockFanERK11GCodeBufferi, %function
 7424              	_ZN6GCodes7LockFanERK11GCodeBufferi:
 7425              		@ args = 0, pretend = 0, frame = 0
 7426              		@ frame_needed = 0, uses_anonymous_args = 0
 7427              		@ link register save eliminated.
 7428 0000 082A     		cmp	r2, #8
 7429 0002 09D8     		bhi	.L1468
 7430 0004 00EB8200 		add	r0, r0, r2, lsl #2
 7431 0008 0A32     		adds	r2, r2, #10
 7432 000a D0F89030 		ldr	r3, [r0, #144]
 7433 000e 9942     		cmp	r1, r3
 7434 0010 02D0     		beq	.L1468
 7435 0012 1BB1     		cbz	r3, .L1470
 7436 0014 0020     		movs	r0, #0
 7437 0016 7047     		bx	lr
 7438              	.L1468:
 7439 0018 0120     		movs	r0, #1
 7440 001a 7047     		bx	lr
 7441              	.L1470:
 7442 001c C0F89010 		str	r1, [r0, #144]
 7443 0020 8968     		ldr	r1, [r1, #8]
 7444 0022 0120     		movs	r0, #1
 7445 0024 CB68     		ldr	r3, [r1, #12]
 7446 0026 00FA02F2 		lsl	r2, r0, r2
 7447 002a 1A43     		orrs	r2, r2, r3
 7448 002c CA60     		str	r2, [r1, #12]
 7449 002e 7047     		bx	lr
 7450              		.size	_ZN6GCodes7LockFanERK11GCodeBufferi, .-_ZN6GCodes7LockFanERK11GCodeBufferi
 7451              		.section	.text._ZN6GCodes14LockFileSystemERK11GCodeBuffer,"ax",%progbits
 7452              		.align	1
 7453              		.p2align 2,,3
 7454              		.global	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 7455              		.syntax unified
 7456              		.thumb
 7457              		.thumb_func
 7458              		.fpu fpv4-sp-d16
 7459              		.type	_ZN6GCodes14LockFileSystemERK11GCodeBuffer, %function
 7460              	_ZN6GCodes14LockFileSystemERK11GCodeBuffer:
 7461              		@ args = 0, pretend = 0, frame = 0
 7462              		@ frame_needed = 0, uses_anonymous_args = 0
 7463              		@ link register save eliminated.
 7464 0000 C36E     		ldr	r3, [r0, #108]
 7465 0002 9942     		cmp	r1, r3
 7466 0004 02D0     		beq	.L1473
 7467 0006 1BB1     		cbz	r3, .L1475
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 132


 7468 0008 0020     		movs	r0, #0
 7469 000a 7047     		bx	lr
 7470              	.L1473:
 7471 000c 0120     		movs	r0, #1
 7472 000e 7047     		bx	lr
 7473              	.L1475:
 7474 0010 C166     		str	r1, [r0, #108]
 7475 0012 8A68     		ldr	r2, [r1, #8]
 7476 0014 D368     		ldr	r3, [r2, #12]
 7477 0016 43F00203 		orr	r3, r3, #2
 7478 001a D360     		str	r3, [r2, #12]
 7479 001c 0120     		movs	r0, #1
 7480 001e 7047     		bx	lr
 7481              		.size	_ZN6GCodes14LockFileSystemERK11GCodeBuffer, .-_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 7482              		.section	.text._ZN6GCodes12LockMovementERK11GCodeBuffer,"ax",%progbits
 7483              		.align	1
 7484              		.p2align 2,,3
 7485              		.global	_ZN6GCodes12LockMovementERK11GCodeBuffer
 7486              		.syntax unified
 7487              		.thumb
 7488              		.thumb_func
 7489              		.fpu fpv4-sp-d16
 7490              		.type	_ZN6GCodes12LockMovementERK11GCodeBuffer, %function
 7491              	_ZN6GCodes12LockMovementERK11GCodeBuffer:
 7492              		@ args = 0, pretend = 0, frame = 0
 7493              		@ frame_needed = 0, uses_anonymous_args = 0
 7494              		@ link register save eliminated.
 7495 0000 836E     		ldr	r3, [r0, #104]
 7496 0002 9942     		cmp	r1, r3
 7497 0004 02D0     		beq	.L1478
 7498 0006 1BB1     		cbz	r3, .L1480
 7499 0008 0020     		movs	r0, #0
 7500 000a 7047     		bx	lr
 7501              	.L1478:
 7502 000c 0120     		movs	r0, #1
 7503 000e 7047     		bx	lr
 7504              	.L1480:
 7505 0010 8166     		str	r1, [r0, #104]
 7506 0012 8A68     		ldr	r2, [r1, #8]
 7507 0014 D368     		ldr	r3, [r2, #12]
 7508 0016 43F00103 		orr	r3, r3, #1
 7509 001a D360     		str	r3, [r2, #12]
 7510 001c 0120     		movs	r0, #1
 7511 001e 7047     		bx	lr
 7512              		.size	_ZN6GCodes12LockMovementERK11GCodeBuffer, .-_ZN6GCodes12LockMovementERK11GCodeBuffer
 7513              		.section	.text._ZN6GCodes12GrabMovementERK11GCodeBuffer,"ax",%progbits
 7514              		.align	1
 7515              		.p2align 2,,3
 7516              		.global	_ZN6GCodes12GrabMovementERK11GCodeBuffer
 7517              		.syntax unified
 7518              		.thumb
 7519              		.thumb_func
 7520              		.fpu fpv4-sp-d16
 7521              		.type	_ZN6GCodes12GrabMovementERK11GCodeBuffer, %function
 7522              	_ZN6GCodes12GrabMovementERK11GCodeBuffer:
 7523              		@ args = 0, pretend = 0, frame = 0
 7524              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 133


 7525              		@ link register save eliminated.
 7526 0000 836E     		ldr	r3, [r0, #104]
 7527 0002 9942     		cmp	r1, r3
 7528 0004 09D0     		beq	.L1481
 7529 0006 3BB1     		cbz	r3, .L1483
 7530 0008 9B68     		ldr	r3, [r3, #8]
 7531              	.L1484:
 7532 000a DA68     		ldr	r2, [r3, #12]
 7533 000c 22F00102 		bic	r2, r2, #1
 7534 0010 DA60     		str	r2, [r3, #12]
 7535 0012 1B68     		ldr	r3, [r3]
 7536 0014 002B     		cmp	r3, #0
 7537 0016 F8D1     		bne	.L1484
 7538              	.L1483:
 7539 0018 8166     		str	r1, [r0, #104]
 7540              	.L1481:
 7541 001a 7047     		bx	lr
 7542              		.size	_ZN6GCodes12GrabMovementERK11GCodeBuffer, .-_ZN6GCodes12GrabMovementERK11GCodeBuffer
 7543              		.section	.text._ZN6GCodes9UnlockAllERK11GCodeBuffer,"ax",%progbits
 7544              		.align	1
 7545              		.p2align 2,,3
 7546              		.global	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7547              		.syntax unified
 7548              		.thumb
 7549              		.thumb_func
 7550              		.fpu fpv4-sp-d16
 7551              		.type	_ZN6GCodes9UnlockAllERK11GCodeBuffer, %function
 7552              	_ZN6GCodes9UnlockAllERK11GCodeBuffer:
 7553              		@ args = 0, pretend = 0, frame = 0
 7554              		@ frame_needed = 0, uses_anonymous_args = 0
 7555              		@ link register save eliminated.
 7556 0000 8B68     		ldr	r3, [r1, #8]
 7557 0002 F0B4     		push	{r4, r5, r6, r7}
 7558 0004 1C68     		ldr	r4, [r3]
 7559 0006 04B1     		cbz	r4, .L1490
 7560 0008 E468     		ldr	r4, [r4, #12]
 7561              	.L1490:
 7562 000a 6430     		adds	r0, r0, #100
 7563 000c 0023     		movs	r3, #0
 7564 000e 0127     		movs	r7, #1
 7565 0010 02E0     		b	.L1492
 7566              	.L1491:
 7567 0012 0133     		adds	r3, r3, #1
 7568 0014 132B     		cmp	r3, #19
 7569 0016 13D0     		beq	.L1496
 7570              	.L1492:
 7571 0018 50F8042F 		ldr	r2, [r0, #4]!
 7572 001c 8A42     		cmp	r2, r1
 7573 001e F8D1     		bne	.L1491
 7574 0020 24FA03F2 		lsr	r2, r4, r3
 7575 0024 12F00102 		ands	r2, r2, #1
 7576 0028 F3D1     		bne	.L1491
 7577 002a 0260     		str	r2, [r0]
 7578 002c 8D68     		ldr	r5, [r1, #8]
 7579 002e EA68     		ldr	r2, [r5, #12]
 7580 0030 07FA03F6 		lsl	r6, r7, r3
 7581 0034 0133     		adds	r3, r3, #1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 134


 7582 0036 22EA0602 		bic	r2, r2, r6
 7583 003a 132B     		cmp	r3, #19
 7584 003c EA60     		str	r2, [r5, #12]
 7585 003e EBD1     		bne	.L1492
 7586              	.L1496:
 7587 0040 F0BC     		pop	{r4, r5, r6, r7}
 7588 0042 7047     		bx	lr
 7589              		.size	_ZN6GCodes9UnlockAllERK11GCodeBuffer, .-_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7590              		.section	.text._ZN6GCodes9StopPrintE15StopPrintReason,"ax",%progbits
 7591              		.align	1
 7592              		.p2align 2,,3
 7593              		.global	_ZN6GCodes9StopPrintE15StopPrintReason
 7594              		.syntax unified
 7595              		.thumb
 7596              		.thumb_func
 7597              		.fpu fpv4-sp-d16
 7598              		.type	_ZN6GCodes9StopPrintE15StopPrintReason, %function
 7599              	_ZN6GCodes9StopPrintE15StopPrintReason:
 7600              		@ args = 0, pretend = 0, frame = 0
 7601              		@ frame_needed = 0, uses_anonymous_args = 0
 7602 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 7603 0004 2DED028B 		vpush.64	{d8}
 7604 0008 0025     		movs	r5, #0
 7605 000a 836C     		ldr	r3, [r0, #72]
 7606 000c C0F86051 		str	r5, [r0, #352]
 7607 0010 80F8B850 		strb	r5, [r0, #184]
 7608 0014 80F8B750 		strb	r5, [r0, #183]
 7609 0018 80F8B650 		strb	r5, [r0, #182]
 7610 001c 84B0     		sub	sp, sp, #16
 7611 001e 0446     		mov	r4, r0
 7612 0020 1868     		ldr	r0, [r3]
 7613 0022 0F46     		mov	r7, r1
 7614 0024 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 7615 0028 00F10801 		add	r1, r0, #8
 7616 002c 0646     		mov	r6, r0
 7617 002e A068     		ldr	r0, [r4, #8]
 7618 0030 FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 7619 0034 A36C     		ldr	r3, [r4, #72]
 7620 0036 1868     		ldr	r0, [r3]
 7621 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 7622 003c B068     		ldr	r0, [r6, #8]
 7623 003e 10B1     		cbz	r0, .L1498
 7624 0040 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 7625 0044 B560     		str	r5, [r6, #8]
 7626              	.L1498:
 7627 0046 8B4E     		ldr	r6, .L1530
 7628 0048 F368     		ldr	r3, [r6, #12]
 7629 004a 0022     		movs	r2, #0
 7630 004c C3F8802A 		str	r2, [r3, #2688]
 7631 0050 C3F87C2A 		str	r2, [r3, #2684]
 7632 0054 D4F8B806 		ldr	r0, [r4, #1720]
 7633 0058 FFF7FEFF 		bl	_ZN10GCodeQueue5ClearEv
 7634 005c A36C     		ldr	r3, [r4, #72]
 7635 005e 2046     		mov	r0, r4
 7636 0060 1968     		ldr	r1, [r3]
 7637 0062 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7638 0066 306A     		ldr	r0, [r6, #32]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 135


 7639 0068 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 7640 006a 002B     		cmp	r3, #0
 7641 006c 44D0     		beq	.L1499
 7642 006e 94F81986 		ldrb	r8, [r4, #1561]	@ zero_extendqisi2
 7643 0072 00F59075 		add	r5, r0, #288
 7644 0076 B8F1000F 		cmp	r8, #0
 7645 007a 42D1     		bne	.L1513
 7646 007c 022F     		cmp	r7, #2
 7647 007e 00F08D80 		beq	.L1528
 7648              	.L1506:
 7649 0082 6068     		ldr	r0, [r4, #4]
 7650 0084 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 7651 0088 0228     		cmp	r0, #2
 7652 008a 00F0E880 		beq	.L1515
 7653              	.L1510:
 7654 008e 306A     		ldr	r0, [r6, #32]
 7655 0090 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 7656 0094 DFED787A 		vldr.32	s15, .L1530+4
 7657 0098 80EE270A 		vdiv.f32	s0, s0, s15
 7658 009c FFF7FEFF 		bl	lrintf
 7659 00a0 0246     		mov	r2, r0
 7660 00a2 0146     		mov	r1, r0
 7661 00a4 6068     		ldr	r0, [r4, #4]
 7662 00a6 002F     		cmp	r7, #0
 7663 00a8 40F0A780 		bne	.L1512
 7664 00ac 734B     		ldr	r3, .L1530+8
 7665 00ae 0095     		str	r5, [sp]
 7666 00b0 A3FB0213 		umull	r1, r3, r3, r2
 7667 00b4 5B09     		lsrs	r3, r3, #5
 7668 00b6 C3EB0311 		rsb	r1, r3, r3, lsl #4
 7669 00ba A2EB8102 		sub	r2, r2, r1, lsl #2
 7670 00be CDE90132 		strd	r3, r2, [sp, #4]
 7671 00c2 B521     		movs	r1, #181
 7672 00c4 6E4B     		ldr	r3, .L1530+12
 7673 00c6 6F4A     		ldr	r2, .L1530+16
 7674 00c8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7675 00cc 94F81836 		ldrb	r3, [r4, #1560]	@ zero_extendqisi2
 7676 00d0 3BB9     		cbnz	r3, .L1527
 7677 00d2 6368     		ldr	r3, [r4, #4]
 7678 00d4 6C4A     		ldr	r2, .L1530+20
 7679 00d6 D3F8DC0B 		ldr	r0, [r3, #3036]
 7680 00da 6C49     		ldr	r1, .L1530+24
 7681 00dc 0123     		movs	r3, #1
 7682 00de FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_b
 7683              	.L1527:
 7684 00e2 306A     		ldr	r0, [r6, #32]
 7685              	.L1505:
 7686 00e4 0023     		movs	r3, #0
 7687 00e6 84F81A36 		strb	r3, [r4, #1562]
 7688 00ea 04B0     		add	sp, sp, #16
 7689              		@ sp needed
 7690 00ec BDEC028B 		vldm	sp!, {d8}
 7691 00f0 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 7692 00f4 FFF7FEBF 		b	_ZN12PrintMonitor12StoppedPrintEv
 7693              	.L1499:
 7694 00f8 94F81936 		ldrb	r3, [r4, #1561]	@ zero_extendqisi2
 7695 00fc 002B     		cmp	r3, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 136


 7696 00fe F1D0     		beq	.L1505
 7697 0100 634D     		ldr	r5, .L1530+28
 7698              	.L1513:
 7699 0102 F068     		ldr	r0, [r6, #12]
 7700 0104 94F81A86 		ldrb	r8, [r4, #1562]	@ zero_extendqisi2
 7701 0108 D0ED0F7A 		vldr.32	s15, [r0, #60]
 7702 010c 04F21463 		addw	r3, r4, #1556
 7703 0110 93ED008A 		vldr.32	s16, [r3]
 7704 0114 38EE278A 		vadd.f32	s16, s16, s15
 7705 0118 B8F1000F 		cmp	r8, #0
 7706 011c 18D0     		beq	.L1501
 7707 011e 002F     		cmp	r7, #0
 7708 0120 7DD0     		beq	.L1529
 7709 0122 0027     		movs	r7, #0
 7710 0124 3946     		mov	r1, r7
 7711 0126 84F81976 		strb	r7, [r4, #1561]
 7712 012a 84F81876 		strb	r7, [r4, #1560]
 7713 012e FFF7FEFF 		bl	_ZN4Move8SimulateEh
 7714 0132 3946     		mov	r1, r7
 7715 0134 2046     		mov	r0, r4
 7716 0136 FFF7FEFF 		bl	_ZN6GCodes13EndSimulationEP11GCodeBuffer
 7717 013a 9FED4F0A 		vldr.32	s0, .L1530+4
 7718 013e 88EE000A 		vdiv.f32	s0, s16, s0
 7719 0142 FFF7FEFF 		bl	lrintf
 7720 0146 0346     		mov	r3, r0
 7721              	.L1504:
 7722 0148 4C49     		ldr	r1, .L1530+8
 7723 014a 6068     		ldr	r0, [r4, #4]
 7724 014c 514A     		ldr	r2, .L1530+32
 7725 014e 16E0     		b	.L1526
 7726              	.L1501:
 7727 0150 4146     		mov	r1, r8
 7728 0152 84F81986 		strb	r8, [r4, #1561]
 7729 0156 84F81886 		strb	r8, [r4, #1560]
 7730 015a FFF7FEFF 		bl	_ZN4Move8SimulateEh
 7731 015e 4146     		mov	r1, r8
 7732 0160 2046     		mov	r0, r4
 7733 0162 FFF7FEFF 		bl	_ZN6GCodes13EndSimulationEP11GCodeBuffer
 7734 0166 9FED440A 		vldr.32	s0, .L1530+4
 7735 016a 88EE000A 		vdiv.f32	s0, s16, s0
 7736 016e FFF7FEFF 		bl	lrintf
 7737 0172 0346     		mov	r3, r0
 7738 0174 002F     		cmp	r7, #0
 7739 0176 E7D1     		bne	.L1504
 7740              	.L1503:
 7741 0178 4049     		ldr	r1, .L1530+8
 7742 017a 6068     		ldr	r0, [r4, #4]
 7743 017c 464A     		ldr	r2, .L1530+36
 7744              	.L1526:
 7745 017e A1FB0371 		umull	r7, r1, r1, r3
 7746 0182 4909     		lsrs	r1, r1, #5
 7747 0184 C1EB0117 		rsb	r7, r1, r1, lsl #4
 7748 0188 A3EB8707 		sub	r7, r3, r7, lsl #2
 7749 018c CDE90017 		strd	r1, r7, [sp]
 7750 0190 2B46     		mov	r3, r5
 7751 0192 B521     		movs	r1, #181
 7752 0194 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 137


 7753 0198 306A     		ldr	r0, [r6, #32]
 7754 019a A3E7     		b	.L1505
 7755              	.L1528:
 7756 019c 0121     		movs	r1, #1
 7757 019e 3069     		ldr	r0, [r6, #16]
 7758 01a0 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 7759 01a4 94F8B430 		ldrb	r3, [r4, #180]	@ zero_extendqisi2
 7760 01a8 012B     		cmp	r3, #1
 7761 01aa 5ED0     		beq	.L1507
 7762 01ac 022B     		cmp	r3, #2
 7763 01ae 7FF468AF 		bne	.L1506
 7764 01b2 6068     		ldr	r0, [r4, #4]
 7765 01b4 00F63440 		addw	r0, r0, #3124
 7766 01b8 FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 7767 01bc 6068     		ldr	r0, [r4, #4]
 7768 01be 00F65440 		addw	r0, r0, #3156
 7769 01c2 FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 7770 01c6 6068     		ldr	r0, [r4, #4]
 7771 01c8 00F67440 		addw	r0, r0, #3188
 7772 01cc FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 7773 01d0 6068     		ldr	r0, [r4, #4]
 7774 01d2 00F69440 		addw	r0, r0, #3220
 7775 01d6 FFF7FEFF 		bl	_ZN7Spindle7TurnOffEv
 7776              	.L1509:
 7777 01da 6068     		ldr	r0, [r4, #4]
 7778 01dc FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 7779 01e0 0228     		cmp	r0, #2
 7780 01e2 3CD0     		beq	.L1515
 7781 01e4 306A     		ldr	r0, [r6, #32]
 7782 01e6 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 7783 01ea DFED237A 		vldr.32	s15, .L1530+4
 7784 01ee 80EE270A 		vdiv.f32	s0, s0, s15
 7785 01f2 FFF7FEFF 		bl	lrintf
 7786 01f6 0146     		mov	r1, r0
 7787 01f8 6068     		ldr	r0, [r4, #4]
 7788              	.L1512:
 7789 01fa 204B     		ldr	r3, .L1530+8
 7790 01fc 0095     		str	r5, [sp]
 7791 01fe A3FB0123 		umull	r2, r3, r3, r1
 7792 0202 5B09     		lsrs	r3, r3, #5
 7793 0204 C3EB0312 		rsb	r2, r3, r3, lsl #4
 7794 0208 A1EB8201 		sub	r1, r1, r2, lsl #2
 7795 020c CDE90131 		strd	r3, r1, [sp, #4]
 7796 0210 1C4A     		ldr	r2, .L1530+16
 7797 0212 224B     		ldr	r3, .L1530+40
 7798 0214 B521     		movs	r1, #181
 7799 0216 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7800 021a 306A     		ldr	r0, [r6, #32]
 7801 021c 62E7     		b	.L1505
 7802              	.L1529:
 7803 021e 6368     		ldr	r3, [r4, #4]
 7804 0220 B0EE480A 		vmov.f32	s0, s16
 7805 0224 D3F8DC8B 		ldr	r8, [r3, #3036]
 7806 0228 FFF7FEFF 		bl	lrintf
 7807 022c 2946     		mov	r1, r5
 7808 022e 0246     		mov	r2, r0
 7809 0230 4046     		mov	r0, r8
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 138


 7810 0232 FFF7FEFF 		bl	_ZN11MassStorage20RecordSimulationTimeEPKcm
 7811 0236 3946     		mov	r1, r7
 7812 0238 F068     		ldr	r0, [r6, #12]
 7813 023a 84F81976 		strb	r7, [r4, #1561]
 7814 023e 84F81876 		strb	r7, [r4, #1560]
 7815 0242 FFF7FEFF 		bl	_ZN4Move8SimulateEh
 7816 0246 3946     		mov	r1, r7
 7817 0248 2046     		mov	r0, r4
 7818 024a FFF7FEFF 		bl	_ZN6GCodes13EndSimulationEP11GCodeBuffer
 7819 024e 9FED0A0A 		vldr.32	s0, .L1530+4
 7820 0252 88EE000A 		vdiv.f32	s0, s16, s0
 7821 0256 FFF7FEFF 		bl	lrintf
 7822 025a 0346     		mov	r3, r0
 7823 025c 8CE7     		b	.L1503
 7824              	.L1515:
 7825 025e 104A     		ldr	r2, .L1530+44
 7826 0260 6068     		ldr	r0, [r4, #4]
 7827 0262 0121     		movs	r1, #1
 7828 0264 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 7829 0268 11E7     		b	.L1510
 7830              	.L1507:
 7831 026a 4146     		mov	r1, r8
 7832 026c 6068     		ldr	r0, [r4, #4]
 7833 026e FFF7FEFF 		bl	_ZN8Platform11SetLaserPwmEt
 7834 0272 B2E7     		b	.L1509
 7835              	.L1531:
 7836              		.align	2
 7837              	.L1530:
 7838 0274 00000000 		.word	reprap
 7839 0278 00007042 		.word	1114636288
 7840 027c 89888888 		.word	-2004318071
 7841 0280 94000000 		.word	.LC131
 7842 0284 A0000000 		.word	.LC132
 7843 0288 28000000 		.word	.LC15
 7844 028c 34000000 		.word	.LC16
 7845 0290 00000000 		.word	.LC127
 7846 0294 40000000 		.word	.LC129
 7847 0298 0C000000 		.word	.LC128
 7848 029c D0000000 		.word	.LC133
 7849 02a0 80000000 		.word	.LC130
 7850              		.size	_ZN6GCodes9StopPrintE15StopPrintReason, .-_ZN6GCodes9StopPrintE15StopPrintReason
 7851              		.section	.text._ZN6GCodes10AbortPrintER11GCodeBuffer,"ax",%progbits
 7852              		.align	1
 7853              		.p2align 2,,3
 7854              		.global	_ZN6GCodes10AbortPrintER11GCodeBuffer
 7855              		.syntax unified
 7856              		.thumb
 7857              		.thumb_func
 7858              		.fpu fpv4-sp-d16
 7859              		.type	_ZN6GCodes10AbortPrintER11GCodeBuffer, %function
 7860              	_ZN6GCodes10AbortPrintER11GCodeBuffer:
 7861              		@ args = 0, pretend = 0, frame = 0
 7862              		@ frame_needed = 0, uses_anonymous_args = 0
 7863 0000 38B5     		push	{r3, r4, r5, lr}
 7864 0002 0446     		mov	r4, r0
 7865 0004 0D46     		mov	r5, r1
 7866 0006 0846     		mov	r0, r1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 139


 7867 0008 A168     		ldr	r1, [r4, #8]
 7868 000a FFF7FEFF 		bl	_ZN11GCodeBuffer9AbortFileEP14FileGCodeInput
 7869 000e A36C     		ldr	r3, [r4, #72]
 7870 0010 1B68     		ldr	r3, [r3]
 7871 0012 AB42     		cmp	r3, r5
 7872 0014 00D0     		beq	.L1535
 7873 0016 38BD     		pop	{r3, r4, r5, pc}
 7874              	.L1535:
 7875 0018 2046     		mov	r0, r4
 7876 001a 0221     		movs	r1, #2
 7877 001c BDE83840 		pop	{r3, r4, r5, lr}
 7878 0020 FFF7FEBF 		b	_ZN6GCodes9StopPrintE15StopPrintReason
 7879              		.size	_ZN6GCodes10AbortPrintER11GCodeBuffer, .-_ZN6GCodes10AbortPrintER11GCodeBuffer
 7880              		.section	.text._ZN6GCodes13EmergencyStopEv,"ax",%progbits
 7881              		.align	1
 7882              		.p2align 2,,3
 7883              		.global	_ZN6GCodes13EmergencyStopEv
 7884              		.syntax unified
 7885              		.thumb
 7886              		.thumb_func
 7887              		.fpu fpv4-sp-d16
 7888              		.type	_ZN6GCodes13EmergencyStopEv, %function
 7889              	_ZN6GCodes13EmergencyStopEv:
 7890              		@ args = 0, pretend = 0, frame = 0
 7891              		@ frame_needed = 0, uses_anonymous_args = 0
 7892 0000 70B5     		push	{r4, r5, r6, lr}
 7893 0002 0546     		mov	r5, r0
 7894 0004 00F11804 		add	r4, r0, #24
 7895 0008 00F13C06 		add	r6, r0, #60
 7896              	.L1538:
 7897 000c 54F8043F 		ldr	r3, [r4, #4]!
 7898 0010 2846     		mov	r0, r5
 7899 0012 1946     		mov	r1, r3
 7900 0014 0BB1     		cbz	r3, .L1537
 7901 0016 FFF7FEFF 		bl	_ZN6GCodes10AbortPrintER11GCodeBuffer
 7902              	.L1537:
 7903 001a B442     		cmp	r4, r6
 7904 001c F6D1     		bne	.L1538
 7905 001e 70BD     		pop	{r4, r5, r6, pc}
 7906              		.size	_ZN6GCodes13EmergencyStopEv, .-_ZN6GCodes13EmergencyStopEv
 7907              		.section	.text._ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef,"ax",%progbits
 7908              		.align	1
 7909              		.p2align 2,,3
 7910              		.global	_ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef
 7911              		.syntax unified
 7912              		.thumb
 7913              		.thumb_func
 7914              		.fpu fpv4-sp-d16
 7915              		.type	_ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef, %function
 7916              	_ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef:
 7917              		@ args = 0, pretend = 0, frame = 0
 7918              		@ frame_needed = 0, uses_anonymous_args = 0
 7919 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 7920 0004 8E68     		ldr	r6, [r1, #8]
 7921 0006 06F10807 		add	r7, r6, #8
 7922 000a 0C46     		mov	r4, r1
 7923 000c 0546     		mov	r5, r0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 140


 7924 000e 3946     		mov	r1, r7
 7925 0010 8068     		ldr	r0, [r0, #8]
 7926 0012 9046     		mov	r8, r2
 7927 0014 FFF7FEFF 		bl	_ZN14FileGCodeInput12ReadFromFileER8FileData
 7928 0018 0128     		cmp	r0, #1
 7929 001a 08D0     		beq	.L1546
 7930 001c 79D3     		bcc	.L1547
 7931 001e 0228     		cmp	r0, #2
 7932 0020 75D1     		bne	.L1544
 7933 0022 2146     		mov	r1, r4
 7934 0024 2846     		mov	r0, r5
 7935 0026 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 7936 002a FFF7FEBF 		b	_ZN6GCodes10AbortPrintER11GCodeBuffer
 7937              	.L1546:
 7938 002e 2046     		mov	r0, r4
 7939 0030 FFF7FEFF 		bl	_ZN11GCodeBuffer9FileEndedEv
 7940 0034 94F82830 		ldrb	r3, [r4, #40]	@ zero_extendqisi2
 7941 0038 082B     		cmp	r3, #8
 7942 003a 75D0     		beq	.L1578
 7943 003c 2046     		mov	r0, r4
 7944 003e FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 7945 0042 A368     		ldr	r3, [r4, #8]
 7946 0044 D3F80080 		ldr	r8, [r3]
 7947 0048 B8F1000F 		cmp	r8, #0
 7948 004c 77D0     		beq	.L1579
 7949 004e A868     		ldr	r0, [r5, #8]
 7950 0050 3946     		mov	r1, r7
 7951 0052 FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 7952 0056 B068     		ldr	r0, [r6, #8]
 7953 0058 18B1     		cbz	r0, .L1553
 7954 005a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 7955 005e 0023     		movs	r3, #0
 7956 0060 B360     		str	r3, [r6, #8]
 7957              	.L1553:
 7958 0062 95F8B930 		ldrb	r3, [r5, #185]	@ zero_extendqisi2
 7959 0066 FBB1     		cbz	r3, .L1554
 7960 0068 A368     		ldr	r3, [r4, #8]
 7961 006a 1B68     		ldr	r3, [r3]
 7962 006c 1B68     		ldr	r3, [r3]
 7963 006e DBB9     		cbnz	r3, .L1554
 7964 0070 05F11802 		add	r2, r5, #24
 7965 0074 05F13C07 		add	r7, r5, #60
 7966              	.L1556:
 7967 0078 52F8043F 		ldr	r3, [r2, #4]!
 7968 007c 7BB1     		cbz	r3, .L1555
 7969 007e A168     		ldr	r1, [r4, #8]
 7970 0080 9B68     		ldr	r3, [r3, #8]
 7971 0082 0E7E     		ldrb	r6, [r1, #24]	@ zero_extendqisi2
 7972 0084 187E     		ldrb	r0, [r3, #24]	@ zero_extendqisi2
 7973 0086 66F30000 		bfi	r0, r6, #0, #1
 7974 008a 1876     		strb	r0, [r3, #24]
 7975 008c 087E     		ldrb	r0, [r1, #24]	@ zero_extendqisi2
 7976 008e 1E7E     		ldrb	r6, [r3, #24]	@ zero_extendqisi2
 7977 0090 C0F34000 		ubfx	r0, r0, #1, #1
 7978 0094 60F34106 		bfi	r6, r0, #1, #1
 7979 0098 1E76     		strb	r6, [r3, #24]
 7980 009a 4968     		ldr	r1, [r1, #4]	@ float
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 141


 7981 009c 5960     		str	r1, [r3, #4]	@ float
 7982              	.L1555:
 7983 009e 9742     		cmp	r7, r2
 7984 00a0 EAD1     		bne	.L1556
 7985 00a2 0023     		movs	r3, #0
 7986 00a4 85F8B930 		strb	r3, [r5, #185]
 7987              	.L1554:
 7988 00a8 2046     		mov	r0, r4
 7989 00aa FFF7FEFF 		bl	_ZN11GCodeBuffer8PopStateEv
 7990 00ae 0028     		cmp	r0, #0
 7991 00b0 5ED0     		beq	.L1580
 7992              	.L1557:
 7993 00b2 2046     		mov	r0, r4
 7994 00b4 FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 7995 00b8 A368     		ldr	r3, [r4, #8]
 7996 00ba 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 7997 00bc 3BBB     		cbnz	r3, .L1544
 7998 00be 2146     		mov	r1, r4
 7999 00c0 2846     		mov	r0, r5
 8000 00c2 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 8001 00c6 314B     		ldr	r3, .L1582
 8002 00c8 0122     		movs	r2, #1
 8003 00ca 2846     		mov	r0, r5
 8004 00cc FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 8005 00d0 95F8B830 		ldrb	r3, [r5, #184]	@ zero_extendqisi2
 8006 00d4 4BB1     		cbz	r3, .L1560
 8007 00d6 AB6C     		ldr	r3, [r5, #72]
 8008 00d8 1B68     		ldr	r3, [r3]
 8009 00da A342     		cmp	r3, r4
 8010 00dc 17D1     		bne	.L1544
 8011 00de 2046     		mov	r0, r4
 8012 00e0 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 8013 00e4 0646     		mov	r6, r0
 8014 00e6 0028     		cmp	r0, #0
 8015 00e8 49D0     		beq	.L1581
 8016              	.L1560:
 8017 00ea 95F8B730 		ldrb	r3, [r5, #183]	@ zero_extendqisi2
 8018 00ee 73B1     		cbz	r3, .L1544
 8019 00f0 AB6C     		ldr	r3, [r5, #72]
 8020 00f2 1B68     		ldr	r3, [r3]
 8021 00f4 A342     		cmp	r3, r4
 8022 00f6 0AD1     		bne	.L1544
 8023 00f8 2046     		mov	r0, r4
 8024 00fa FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 8025 00fe 0646     		mov	r6, r0
 8026 0100 28B9     		cbnz	r0, .L1544
 8027 0102 2046     		mov	r0, r4
 8028 0104 2249     		ldr	r1, .L1582+4
 8029 0106 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKc
 8030 010a 85F8B760 		strb	r6, [r5, #183]
 8031              	.L1544:
 8032 010e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 8033              	.L1547:
 8034 0112 A868     		ldr	r0, [r5, #8]
 8035 0114 0368     		ldr	r3, [r0]
 8036 0116 2146     		mov	r1, r4
 8037 0118 5B68     		ldr	r3, [r3, #4]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 142


 8038 011a 9847     		blx	r3
 8039 011c 0028     		cmp	r0, #0
 8040 011e F6D0     		beq	.L1544
 8041 0120 94F82830 		ldrb	r3, [r4, #40]	@ zero_extendqisi2
 8042 0124 082B     		cmp	r3, #8
 8043 0126 F2D1     		bne	.L1544
 8044              	.L1578:
 8045 0128 2146     		mov	r1, r4
 8046 012a 4246     		mov	r2, r8
 8047 012c 2846     		mov	r0, r5
 8048 012e FFF7FEFF 		bl	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef
 8049 0132 0146     		mov	r1, r0
 8050 0134 2046     		mov	r0, r4
 8051 0136 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 8052 013a FFF7FEBF 		b	_ZN11GCodeBuffer11SetFinishedEb
 8053              	.L1579:
 8054 013e 2146     		mov	r1, r4
 8055 0140 2846     		mov	r0, r5
 8056 0142 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8057 0146 0028     		cmp	r0, #0
 8058 0148 E1D0     		beq	.L1544
 8059 014a AB6D     		ldr	r3, [r5, #88]
 8060 014c 1B68     		ldr	r3, [r3]
 8061 014e 93F82830 		ldrb	r3, [r3, #40]	@ zero_extendqisi2
 8062 0152 083B     		subs	r3, r3, #8
 8063 0154 012B     		cmp	r3, #1
 8064 0156 DAD9     		bls	.L1544
 8065 0158 D5F8B806 		ldr	r0, [r5, #1720]
 8066 015c FFF7FEFF 		bl	_ZNK10GCodeQueue6IsIdleEv
 8067 0160 0028     		cmp	r0, #0
 8068 0162 D4D0     		beq	.L1544
 8069 0164 4146     		mov	r1, r8
 8070 0166 2846     		mov	r0, r5
 8071 0168 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 8072 016c FFF7FEBF 		b	_ZN6GCodes9StopPrintE15StopPrintReason
 8073              	.L1580:
 8074 0170 084A     		ldr	r2, .L1582+8
 8075 0172 6868     		ldr	r0, [r5, #4]
 8076 0174 40F2B511 		movw	r1, #437
 8077 0178 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8078 017c 99E7     		b	.L1557
 8079              	.L1581:
 8080 017e 2046     		mov	r0, r4
 8081 0180 0549     		ldr	r1, .L1582+12
 8082 0182 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKc
 8083 0186 85F8B860 		strb	r6, [r5, #184]
 8084 018a C0E7     		b	.L1544
 8085              	.L1583:
 8086              		.align	2
 8087              	.L1582:
 8088 018c 00000000 		.word	.LC134
 8089 0190 0C000000 		.word	.LC136
 8090 0194 00000000 		.word	.LC44
 8091 0198 04000000 		.word	.LC135
 8092              		.size	_ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef, .-_ZN6GCodes11DoFilePrintER11GCodeBuffer
 8093              		.section	.text._ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef,"ax",%progbits
 8094              		.align	1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 143


 8095              		.p2align 2,,3
 8096              		.global	_ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef
 8097              		.syntax unified
 8098              		.thumb
 8099              		.thumb_func
 8100              		.fpu fpv4-sp-d16
 8101              		.type	_ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef, %function
 8102              	_ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef:
 8103              		@ args = 0, pretend = 0, frame = 0
 8104              		@ frame_needed = 0, uses_anonymous_args = 0
 8105 0000 70B5     		push	{r4, r5, r6, lr}
 8106 0002 0C46     		mov	r4, r1
 8107 0004 1646     		mov	r6, r2
 8108 0006 0546     		mov	r5, r0
 8109 0008 FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 8110 000c 18B1     		cbz	r0, .L1585
 8111 000e AB6C     		ldr	r3, [r5, #72]
 8112 0010 1968     		ldr	r1, [r3]
 8113 0012 A142     		cmp	r1, r4
 8114 0014 2ED0     		beq	.L1606
 8115              	.L1585:
 8116 0016 94F82830 		ldrb	r3, [r4, #40]	@ zero_extendqisi2
 8117 001a 083B     		subs	r3, r3, #8
 8118 001c 012B     		cmp	r3, #1
 8119 001e 1ED9     		bls	.L1586
 8120 0020 A368     		ldr	r3, [r4, #8]
 8121 0022 9B68     		ldr	r3, [r3, #8]
 8122 0024 A3B9     		cbnz	r3, .L1607
 8123 0026 AB6D     		ldr	r3, [r5, #88]
 8124 0028 1B68     		ldr	r3, [r3]
 8125 002a 9C42     		cmp	r4, r3
 8126 002c 41D0     		beq	.L1608
 8127 002e 2B6C     		ldr	r3, [r5, #64]
 8128 0030 1B68     		ldr	r3, [r3]
 8129 0032 9C42     		cmp	r4, r3
 8130 0034 23D0     		beq	.L1609
 8131 0036 6B6C     		ldr	r3, [r5, #68]
 8132 0038 1B68     		ldr	r3, [r3]
 8133 003a 9C42     		cmp	r4, r3
 8134 003c 40D0     		beq	.L1610
 8135 003e EB6C     		ldr	r3, [r5, #76]
 8136 0040 1B68     		ldr	r3, [r3]
 8137 0042 9C42     		cmp	r4, r3
 8138 0044 2ED0     		beq	.L1611
 8139              	.L1592:
 8140 0046 2B6D     		ldr	r3, [r5, #80]
 8141 0048 1B68     		ldr	r3, [r3]
 8142 004a 9C42     		cmp	r4, r3
 8143 004c 1ED0     		beq	.L1612
 8144              	.L1584:
 8145 004e 70BD     		pop	{r4, r5, r6, pc}
 8146              	.L1607:
 8147 0050 3246     		mov	r2, r6
 8148 0052 2146     		mov	r1, r4
 8149 0054 2846     		mov	r0, r5
 8150 0056 BDE87040 		pop	{r4, r5, r6, lr}
 8151 005a FFF7FEBF 		b	_ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 144


 8152              	.L1586:
 8153 005e 2146     		mov	r1, r4
 8154 0060 3246     		mov	r2, r6
 8155 0062 2846     		mov	r0, r5
 8156 0064 FFF7FEFF 		bl	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef
 8157 0068 0146     		mov	r1, r0
 8158 006a 2046     		mov	r0, r4
 8159 006c BDE87040 		pop	{r4, r5, r6, lr}
 8160 0070 FFF7FEBF 		b	_ZN11GCodeBuffer11SetFinishedEb
 8161              	.L1606:
 8162 0074 2846     		mov	r0, r5
 8163 0076 BDE87040 		pop	{r4, r5, r6, lr}
 8164 007a FFF7FEBF 		b	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 8165              	.L1609:
 8166 007e 2869     		ldr	r0, [r5, #16]
 8167              	.L1605:
 8168 0080 0368     		ldr	r3, [r0]
 8169 0082 2146     		mov	r1, r4
 8170 0084 5B68     		ldr	r3, [r3, #4]
 8171 0086 BDE87040 		pop	{r4, r5, r6, lr}
 8172 008a 1847     		bx	r3
 8173              	.L1612:
 8174 008c A869     		ldr	r0, [r5, #24]
 8175 008e 0368     		ldr	r3, [r0]
 8176 0090 2146     		mov	r1, r4
 8177 0092 5B68     		ldr	r3, [r3, #4]
 8178 0094 9847     		blx	r3
 8179 0096 0028     		cmp	r0, #0
 8180 0098 D9D0     		beq	.L1584
 8181 009a 6B68     		ldr	r3, [r5, #4]
 8182 009c 0122     		movs	r2, #1
 8183 009e 83F8642B 		strb	r2, [r3, #2916]
 8184 00a2 70BD     		pop	{r4, r5, r6, pc}
 8185              	.L1611:
 8186 00a4 074B     		ldr	r3, .L1613
 8187 00a6 DB69     		ldr	r3, [r3, #28]
 8188 00a8 1B69     		ldr	r3, [r3, #16]
 8189 00aa 002B     		cmp	r3, #0
 8190 00ac CBD1     		bne	.L1592
 8191 00ae E868     		ldr	r0, [r5, #12]
 8192 00b0 E6E7     		b	.L1605
 8193              	.L1608:
 8194 00b2 2146     		mov	r1, r4
 8195 00b4 D5F8B806 		ldr	r0, [r5, #1720]
 8196 00b8 BDE87040 		pop	{r4, r5, r6, lr}
 8197 00bc FFF7FEBF 		b	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer
 8198              	.L1610:
 8199 00c0 6869     		ldr	r0, [r5, #20]
 8200 00c2 DDE7     		b	.L1605
 8201              	.L1614:
 8202              		.align	2
 8203              	.L1613:
 8204 00c4 00000000 		.word	reprap
 8205              		.size	_ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef, .-_ZN6GCodes14StartNextGCodeER11GCode
 8206              		.section	.text._ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc,"ax",%progbits
 8207              		.align	1
 8208              		.p2align 2,,3
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 145


 8209              		.global	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 8210              		.syntax unified
 8211              		.thumb
 8212              		.thumb_func
 8213              		.fpu fpv4-sp-d16
 8214              		.type	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc, %function
 8215              	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc:
 8216              		@ args = 0, pretend = 0, frame = 0
 8217              		@ frame_needed = 0, uses_anonymous_args = 0
 8218 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 8219 0004 0F46     		mov	r7, r1
 8220 0006 816C     		ldr	r1, [r0, #72]
 8221 0008 D0F85463 		ldr	r6, [r0, #852]
 8222 000c 0968     		ldr	r1, [r1]
 8223 000e B942     		cmp	r1, r7
 8224 0010 83B0     		sub	sp, sp, #12
 8225 0012 0446     		mov	r4, r0
 8226 0014 9146     		mov	r9, r2
 8227 0016 9846     		mov	r8, r3
 8228 0018 00F09780 		beq	.L1656
 8229 001c 8B68     		ldr	r3, [r1, #8]
 8230 001e 984D     		ldr	r5, .L1662
 8231 0020 5B68     		ldr	r3, [r3, #4]	@ float
 8232 0022 7362     		str	r3, [r6, #36]	@ float
 8233 0024 E868     		ldr	r0, [r5, #12]
 8234 0026 D4F85413 		ldr	r1, [r4, #852]
 8235 002a FFF7FEFF 		bl	_ZN4Move10PausePrintER12RestorePoint
 8236 002e 0646     		mov	r6, r0
 8237 0030 0028     		cmp	r0, #0
 8238 0032 40F0BD80 		bne	.L1657
 8239 0036 D4F86021 		ldr	r2, [r4, #352]
 8240 003a D4F85433 		ldr	r3, [r4, #852]
 8241 003e 002A     		cmp	r2, #0
 8242 0040 40F0DF80 		bne	.L1658
 8243 0044 A16C     		ldr	r1, [r4, #72]
 8244 0046 0968     		ldr	r1, [r1]
 8245 0048 8968     		ldr	r1, [r1, #8]
 8246 004a 4968     		ldr	r1, [r1, #4]	@ float
 8247 004c 5962     		str	r1, [r3, #36]	@ float
 8248 004e D4F85433 		ldr	r3, [r4, #852]
 8249 0052 D4F88C13 		ldr	r1, [r4, #908]	@ float
 8250 0056 9962     		str	r1, [r3, #40]	@ float
 8251 0058 D4F85433 		ldr	r3, [r4, #852]
 8252 005c 0022     		movs	r2, #0
 8253 005e DA62     		str	r2, [r3, #44]	@ float
 8254 0060 A068     		ldr	r0, [r4, #8]
 8255 0062 A26C     		ldr	r2, [r4, #72]
 8256 0064 0368     		ldr	r3, [r0]
 8257 0066 1668     		ldr	r6, [r2]
 8258 0068 9B68     		ldr	r3, [r3, #8]
 8259 006a 9847     		blx	r3
 8260 006c 0146     		mov	r1, r0
 8261 006e 3046     		mov	r0, r6
 8262 0070 D4F85463 		ldr	r6, [r4, #852]
 8263 0074 FFF7FEFF 		bl	_ZNK11GCodeBuffer15GetFilePositionEj
 8264 0078 3063     		str	r0, [r6, #48]
 8265 007a D4F85433 		ldr	r3, [r4, #852]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 146


 8266 007e B4F85C21 		ldrh	r2, [r4, #348]
 8267 0082 1A87     		strh	r2, [r3, #56]	@ movhi
 8268              	.L1621:
 8269 0084 D4F86033 		ldr	r3, [r4, #864]
 8270 0088 73B1     		cbz	r3, .L1623
 8271 008a 04F1C001 		add	r1, r4, #192
 8272 008e 0023     		movs	r3, #0
 8273              	.L1625:
 8274 0090 D4F85423 		ldr	r2, [r4, #852]
 8275 0094 51F8040B 		ldr	r0, [r1], #4	@ float
 8276 0098 02EB8302 		add	r2, r2, r3, lsl #2
 8277 009c 0133     		adds	r3, r3, #1
 8278 009e 1060     		str	r0, [r2]	@ float
 8279 00a0 D4F86023 		ldr	r2, [r4, #864]
 8280 00a4 9A42     		cmp	r2, r3
 8281 00a6 F3D8     		bhi	.L1625
 8282              	.L1623:
 8283 00a8 A36C     		ldr	r3, [r4, #72]
 8284 00aa 1B68     		ldr	r3, [r3]
 8285 00ac 9E68     		ldr	r6, [r3, #8]
 8286 00ae B368     		ldr	r3, [r6, #8]
 8287 00b0 23B1     		cbz	r3, .L1626
 8288 00b2 D4F85433 		ldr	r3, [r4, #852]
 8289 00b6 1B6B     		ldr	r3, [r3, #48]
 8290 00b8 0133     		adds	r3, r3, #1
 8291 00ba 64D1     		bne	.L1659
 8292              	.L1626:
 8293 00bc D4F8B806 		ldr	r0, [r4, #1720]
 8294 00c0 FFF7FEFF 		bl	_ZN10GCodeQueue12PurgeEntriesEv
 8295 00c4 D5F80831 		ldr	r3, [r5, #264]
 8296 00c8 1B07     		lsls	r3, r3, #28
 8297 00ca 00F19180 		bmi	.L1660
 8298              	.L1619:
 8299 00ce 94F8B430 		ldrb	r3, [r4, #180]	@ zero_extendqisi2
 8300 00d2 012B     		cmp	r3, #1
 8301 00d4 04BF     		itt	eq
 8302 00d6 0023     		moveq	r3, #0
 8303 00d8 A4F85C31 		strheq	r3, [r4, #348]	@ movhi
 8304 00dc 04F5A666 		add	r6, r4, #1328
 8305 00e0 0025     		movs	r5, #0
 8306              	.L1628:
 8307 00e2 2946     		mov	r1, r5
 8308 00e4 6068     		ldr	r0, [r4, #4]
 8309 00e6 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 8310 00ea 0135     		adds	r5, r5, #1
 8311 00ec 092D     		cmp	r5, #9
 8312 00ee A6EC010A 		vstmia.32	r6!, {s0}
 8313 00f2 F6D1     		bne	.L1628
 8314 00f4 04F25453 		addw	r3, r4, #1364
 8315 00f8 6148     		ldr	r0, .L1662
 8316 00fa 1A68     		ldr	r2, [r3]	@ float
 8317 00fc 04F5AB63 		add	r3, r4, #1368
 8318 0100 1A60     		str	r2, [r3]	@ float
 8319 0102 D4F85453 		ldr	r5, [r4, #852]
 8320 0106 FFF7FEFF 		bl	_ZNK6RepRap20GetCurrentToolNumberEv
 8321 010a 6863     		str	r0, [r5, #52]
 8322 010c 94F81816 		ldrb	r1, [r4, #1560]	@ zero_extendqisi2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 147


 8323 0110 0029     		cmp	r1, #0
 8324 0112 34D0     		beq	.L1661
 8325              	.L1629:
 8326 0114 B9F1020F 		cmp	r9, #2
 8327 0118 BA68     		ldr	r2, [r7, #8]
 8328 011a 14BF     		ite	ne
 8329 011c 0F21     		movne	r1, #15
 8330 011e 1121     		moveq	r1, #17
 8331 0120 0123     		movs	r3, #1
 8332 0122 1175     		strb	r1, [r2, #20]
 8333 0124 84F8B630 		strb	r3, [r4, #182]
 8334 0128 B8F1000F 		cmp	r8, #0
 8335 012c 0AD0     		beq	.L1615
 8336 012e 6068     		ldr	r0, [r4, #4]
 8337 0130 0093     		str	r3, [sp]
 8338 0132 0023     		movs	r3, #0
 8339 0134 0193     		str	r3, [sp, #4]
 8340 0136 4246     		mov	r2, r8
 8341 0138 9FED520A 		vldr.32	s0, .L1662+4
 8342 013c 524B     		ldr	r3, .L1662+8
 8343 013e 3521     		movs	r1, #53
 8344 0140 FFF7FEFF 		bl	_ZN8Platform9SendAlertE11MessageTypePKcS2_ifm
 8345              	.L1615:
 8346 0144 03B0     		add	sp, sp, #12
 8347              		@ sp needed
 8348 0146 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 8349              	.L1656:
 8350 014a D0F86033 		ldr	r3, [r0, #864]
 8351 014e 63B1     		cbz	r3, .L1617
 8352 0150 00F1C001 		add	r1, r0, #192
 8353 0154 3246     		mov	r2, r6
 8354 0156 0023     		movs	r3, #0
 8355              	.L1618:
 8356 0158 51F8040B 		ldr	r0, [r1], #4	@ float
 8357 015c 42F8040B 		str	r0, [r2], #4	@ float
 8358 0160 D4F86003 		ldr	r0, [r4, #864]
 8359 0164 0133     		adds	r3, r3, #1
 8360 0166 8342     		cmp	r3, r0
 8361 0168 F6D3     		bcc	.L1618
 8362              	.L1617:
 8363 016a BB68     		ldr	r3, [r7, #8]
 8364 016c 5B68     		ldr	r3, [r3, #4]	@ float
 8365 016e 7362     		str	r3, [r6, #36]	@ float
 8366 0170 D4F88C33 		ldr	r3, [r4, #908]	@ float
 8367 0174 B362     		str	r3, [r6, #40]	@ float
 8368 0176 B4F85C31 		ldrh	r3, [r4, #348]
 8369 017a 3387     		strh	r3, [r6, #56]	@ movhi
 8370 017c A7E7     		b	.L1619
 8371              	.L1661:
 8372 017e 2046     		mov	r0, r4
 8373 0180 FFF7FEFF 		bl	_ZN6GCodes14SaveResumeInfoEb
 8374 0184 C6E7     		b	.L1629
 8375              	.L1659:
 8376 0186 06F10801 		add	r1, r6, #8
 8377 018a A068     		ldr	r0, [r4, #8]
 8378 018c FFF7FEFF 		bl	_ZN14FileGCodeInput5ResetERK8FileData
 8379 0190 D4F85433 		ldr	r3, [r4, #852]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 148


 8380 0194 B068     		ldr	r0, [r6, #8]
 8381 0196 196B     		ldr	r1, [r3, #48]
 8382 0198 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 8383 019c A36C     		ldr	r3, [r4, #72]
 8384 019e 1868     		ldr	r0, [r3]
 8385 01a0 FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 8386 01a4 A36C     		ldr	r3, [r4, #72]
 8387 01a6 2046     		mov	r0, r4
 8388 01a8 1968     		ldr	r1, [r3]
 8389 01aa FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 8390 01ae 85E7     		b	.L1626
 8391              	.L1657:
 8392 01b0 04F1C002 		add	r2, r4, #192
 8393 01b4 D4F85413 		ldr	r1, [r4, #852]
 8394 01b8 2046     		mov	r0, r4
 8395 01ba FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 8396 01be FFF7FEFF 		bl	vTaskSuspendAll
 8397 01c2 94F85F21 		ldrb	r2, [r4, #351]	@ zero_extendqisi2
 8398 01c6 0023     		movs	r3, #0
 8399 01c8 0021     		movs	r1, #0
 8400 01ca 63F30002 		bfi	r2, r3, #0, #1
 8401 01ce 84F85F21 		strb	r2, [r4, #351]
 8402 01d2 C4F86031 		str	r3, [r4, #352]
 8403 01d6 84F8A931 		strb	r3, [r4, #425]
 8404 01da 84F8A831 		strb	r3, [r4, #424]
 8405 01de C4F85831 		str	r3, [r4, #344]
 8406 01e2 84F85E31 		strb	r3, [r4, #350]
 8407 01e6 C4F87011 		str	r1, [r4, #368]	@ float
 8408 01ea FFF7FEFF 		bl	xTaskResumeAll
 8409 01ee 49E7     		b	.L1621
 8410              	.L1660:
 8411 01f0 D4F85433 		ldr	r3, [r4, #852]
 8412 01f4 254A     		ldr	r2, .L1662+12
 8413 01f6 1B6B     		ldr	r3, [r3, #48]
 8414 01f8 6068     		ldr	r0, [r4, #4]
 8415 01fa 3521     		movs	r1, #53
 8416 01fc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8417 0200 65E7     		b	.L1619
 8418              	.L1658:
 8419 0202 D4F84421 		ldr	r2, [r4, #324]	@ float
 8420 0206 9A62     		str	r2, [r3, #40]	@ float
 8421 0208 D4F85433 		ldr	r3, [r4, #852]
 8422 020c D4F84821 		ldr	r2, [r4, #328]
 8423 0210 1A63     		str	r2, [r3, #48]
 8424 0212 D4F85433 		ldr	r3, [r4, #852]
 8425 0216 D4F84021 		ldr	r2, [r4, #320]	@ float
 8426 021a 5A62     		str	r2, [r3, #36]	@ float
 8427 021c D4F86411 		ldr	r1, [r4, #356]
 8428 0220 D4F86021 		ldr	r2, [r4, #352]
 8429 0224 D4F85433 		ldr	r3, [r4, #852]
 8430 0228 8A1A     		subs	r2, r1, r2
 8431 022a 07EE902A 		vmov	s15, r2	@ int
 8432 022e 07EE101A 		vmov	s14, r1	@ int
 8433 0232 F8EE677A 		vcvt.f32.u32	s15, s15
 8434 0236 B8EE477A 		vcvt.f32.u32	s14, s14
 8435 023a 04F1C002 		add	r2, r4, #192
 8436 023e C7EE876A 		vdiv.f32	s13, s15, s14
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 149


 8437 0242 2046     		mov	r0, r4
 8438 0244 C3ED0B6A 		vstr.32	s13, [r3, #44]
 8439 0248 D4F85413 		ldr	r1, [r4, #852]
 8440 024c FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 8441 0250 FFF7FEFF 		bl	vTaskSuspendAll
 8442 0254 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 8443 0258 C4F86061 		str	r6, [r4, #352]
 8444 025c 0022     		movs	r2, #0
 8445 025e 66F30003 		bfi	r3, r6, #0, #1
 8446 0262 84F8A961 		strb	r6, [r4, #425]
 8447 0266 84F8A861 		strb	r6, [r4, #424]
 8448 026a C4F85861 		str	r6, [r4, #344]
 8449 026e 84F85E61 		strb	r6, [r4, #350]
 8450 0272 84F85F31 		strb	r3, [r4, #351]
 8451 0276 C4F87021 		str	r2, [r4, #368]	@ float
 8452 027a FFF7FEFF 		bl	xTaskResumeAll
 8453 027e 01E7     		b	.L1621
 8454              	.L1663:
 8455              		.align	2
 8456              	.L1662:
 8457 0280 00000000 		.word	reprap
 8458 0284 00000000 		.word	0
 8459 0288 20000000 		.word	.LC138
 8460 028c 00000000 		.word	.LC137
 8461              		.size	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc, .-_ZN6GCodes7DoPauseER11GCodeBuffer11Paus
 8462              		.section	.text.hot._ZN6GCodes14DoStraightMoveER11GCodeBufferb,"ax",%progbits
 8463              		.align	1
 8464              		.p2align 2,,3
 8465              		.global	_ZN6GCodes14DoStraightMoveER11GCodeBufferb
 8466              		.syntax unified
 8467              		.thumb
 8468              		.thumb_func
 8469              		.fpu fpv4-sp-d16
 8470              		.type	_ZN6GCodes14DoStraightMoveER11GCodeBufferb, %function
 8471              	_ZN6GCodes14DoStraightMoveER11GCodeBufferb:
 8472              		@ args = 0, pretend = 0, frame = 8
 8473              		@ frame_needed = 0, uses_anonymous_args = 0
 8474 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 8475 0004 2DED048B 		vpush.64	{d8, d9}
 8476 0008 90F85F31 		ldrb	r3, [r0, #351]	@ zero_extendqisi2
 8477 000c 0446     		mov	r4, r0
 8478 000e 85B0     		sub	sp, sp, #20
 8479 0010 62F30413 		bfi	r3, r2, #4, #1
 8480 0014 0025     		movs	r5, #0
 8481 0016 84F85F31 		strb	r3, [r4, #351]
 8482 001a CD48     		ldr	r0, .L1787
 8483 001c C4F85851 		str	r5, [r4, #344]
 8484 0020 84F85E51 		strb	r5, [r4, #350]
 8485 0024 0E46     		mov	r6, r1
 8486 0026 0392     		str	r2, [sp, #12]
 8487 0028 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 8488 002c C4F85001 		str	r0, [r4, #336]
 8489 0030 C748     		ldr	r0, .L1787
 8490 0032 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 8491 0036 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 8492 003a C4F85401 		str	r0, [r4, #340]
 8493 003e 03F0FD03 		and	r3, r3, #253
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 150


 8494 0042 43F04003 		orr	r3, r3, #64
 8495 0046 C4F84057 		str	r5, [r4, #1856]
 8496 004a 84F85F31 		strb	r3, [r4, #351]
 8497 004e 3046     		mov	r0, r6
 8498 0050 4821     		movs	r1, #72
 8499 0052 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8500 0056 0028     		cmp	r0, #0
 8501 0058 40F0D280 		bne	.L1669
 8502 005c 94F8B430 		ldrb	r3, [r4, #180]	@ zero_extendqisi2
 8503 0060 012B     		cmp	r3, #1
 8504 0062 40F0C880 		bne	.L1774
 8505 0066 94F85E51 		ldrb	r5, [r4, #350]	@ zero_extendqisi2
 8506 006a 002D     		cmp	r5, #0
 8507 006c 00F00381 		beq	.L1673
 8508              	.L1678:
 8509 0070 4FF00008 		mov	r8, #0
 8510 0074 A4F85C81 		strh	r8, [r4, #348]	@ movhi
 8511 0078 CDF80880 		str	r8, [sp, #8]
 8512              	.L1677:
 8513 007c 04F1EC0A 		add	r10, r4, #236
 8514 0080 002D     		cmp	r5, #0
 8515 0082 40F0DF80 		bne	.L1775
 8516              	.L1682:
 8517 0086 D4F86023 		ldr	r2, [r4, #864]
 8518 008a 5146     		mov	r1, r10
 8519 008c 9200     		lsls	r2, r2, #2
 8520 008e 04F58E70 		add	r0, r4, #284
 8521 0092 FFF7FEFF 		bl	memcpy
 8522 0096 D4F86073 		ldr	r7, [r4, #864]
 8523 009a 94ED308A 		vldr.32	s16, [r4, #192]
 8524 009e D4ED318A 		vldr.32	s17, [r4, #196]
 8525 00a2 94ED329A 		vldr.32	s18, [r4, #200]
 8526 00a6 002F     		cmp	r7, #0
 8527 00a8 00F06B82 		beq	.L1683
 8528 00ac 0027     		movs	r7, #0
 8529 00ae 94F85E21 		ldrb	r2, [r4, #350]	@ zero_extendqisi2
 8530 00b2 DFF89CB2 		ldr	fp, .L1787
 8531 00b6 B846     		mov	r8, r7
 8532 00b8 4FF00109 		mov	r9, #1
 8533 00bc 07E0     		b	.L1696
 8534              	.L1776:
 8535 00be 94F85E21 		ldrb	r2, [r4, #350]	@ zero_extendqisi2
 8536              	.L1686:
 8537 00c2 D4F86013 		ldr	r1, [r4, #864]
 8538 00c6 08F10108 		add	r8, r8, #1
 8539 00ca 4145     		cmp	r1, r8
 8540 00cc 47D9     		bls	.L1695
 8541              	.L1696:
 8542 00ce 04EB0805 		add	r5, r4, r8
 8543 00d2 002A     		cmp	r2, #0
 8544 00d4 00F0EA80 		beq	.L1768
 8545              	.L1684:
 8546 00d8 95F81A15 		ldrb	r1, [r5, #1306]	@ zero_extendqisi2
 8547 00dc 3046     		mov	r0, r6
 8548 00de FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8549 00e2 0028     		cmp	r0, #0
 8550 00e4 EBD0     		beq	.L1776
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 151


 8551 00e6 B268     		ldr	r2, [r6, #8]
 8552 00e8 127E     		ldrb	r2, [r2, #24]	@ zero_extendqisi2
 8553 00ea 9007     		lsls	r0, r2, #30
 8554 00ec 07D4     		bmi	.L1691
 8555 00ee DBF80C20 		ldr	r2, [fp, #12]
 8556 00f2 D2F8742A 		ldr	r2, [r2, #2676]
 8557 00f6 D27B     		ldrb	r2, [r2, #15]	@ zero_extendqisi2
 8558 00f8 032A     		cmp	r2, #3
 8559 00fa 00F04082 		beq	.L1723
 8560              	.L1691:
 8561 00fe 09FA08F2 		lsl	r2, r9, r8
 8562 0102 3046     		mov	r0, r6
 8563 0104 1743     		orrs	r7, r7, r2
 8564 0106 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8565 010a B268     		ldr	r2, [r6, #8]
 8566 010c D4EDEE7A 		vldr.32	s15, [r4, #952]
 8567 0110 117E     		ldrb	r1, [r2, #24]	@ zero_extendqisi2
 8568 0112 08EB4802 		add	r2, r8, r8, lsl #1
 8569 0116 11F0020F 		tst	r1, #2
 8570 011a 20EE270A 		vmul.f32	s0, s0, s15
 8571 011e 1544     		add	r5, r5, r2
 8572 0120 DBF80C10 		ldr	r1, [fp, #12]
 8573 0124 40F0E880 		bne	.L1693
 8574 0128 D1F8740A 		ldr	r0, [r1, #2676]
 8575 012c C07B     		ldrb	r0, [r0, #15]	@ zero_extendqisi2
 8576 012e 0628     		cmp	r0, #6
 8577 0130 00F0E280 		beq	.L1693
 8578              	.L1773:
 8579 0134 85ED3B0A 		vstr.32	s0, [r5, #236]
 8580 0138 D1F8741A 		ldr	r1, [r1, #2676]
 8581 013c 94F85E21 		ldrb	r2, [r4, #350]	@ zero_extendqisi2
 8582 0140 C97B     		ldrb	r1, [r1, #15]	@ zero_extendqisi2
 8583 0142 0629     		cmp	r1, #6
 8584 0144 BDD1     		bne	.L1686
 8585 0146 94F85F11 		ldrb	r1, [r4, #351]	@ zero_extendqisi2
 8586 014a 6FF38611 		bfc	r1, #6, #1
 8587 014e 84F85F11 		strb	r1, [r4, #351]
 8588 0152 D4F86013 		ldr	r1, [r4, #864]
 8589 0156 08F10108 		add	r8, r8, #1
 8590 015a 4145     		cmp	r1, r8
 8591 015c B7D8     		bhi	.L1696
 8592              	.L1695:
 8593 015e 002A     		cmp	r2, #0
 8594 0160 40F0CF80 		bne	.L1697
 8595 0164 94F81036 		ldrb	r3, [r4, #1552]	@ zero_extendqisi2
 8596 0168 002B     		cmp	r3, #0
 8597 016a 00F03281 		beq	.L1777
 8598              	.L1699:
 8599 016e 3146     		mov	r1, r6
 8600 0170 2046     		mov	r0, r4
 8601 0172 FFF7FEFF 		bl	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer
 8602 0176 94F85E31 		ldrb	r3, [r4, #350]	@ zero_extendqisi2
 8603 017a 002B     		cmp	r3, #0
 8604 017c 40F00482 		bne	.L1778
 8605 0180 002F     		cmp	r7, #0
 8606 0182 00F0C581 		beq	.L1719
 8607 0186 A36C     		ldr	r3, [r4, #72]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 152


 8608 0188 1B68     		ldr	r3, [r3]
 8609 018a B342     		cmp	r3, r6
 8610 018c 00F0E581 		beq	.L1779
 8611              	.L1708:
 8612 0190 04F1C008 		add	r8, r4, #192
 8613 0194 3B46     		mov	r3, r7
 8614 0196 5246     		mov	r2, r10
 8615 0198 4146     		mov	r1, r8
 8616 019a 2046     		mov	r0, r4
 8617 019c FFF7FEFF 		bl	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 8618 01a0 94F81026 		ldrb	r2, [r4, #1552]	@ zero_extendqisi2
 8619 01a4 D4F82C35 		ldr	r3, [r4, #1324]
 8620 01a8 0AB1     		cbz	r2, .L1710
 8621 01aa 23F00403 		bic	r3, r3, #4
 8622              	.L1710:
 8623 01ae 684D     		ldr	r5, .L1787
 8624 01b0 94F82425 		ldrb	r2, [r4, #1316]	@ zero_extendqisi2
 8625 01b4 E868     		ldr	r0, [r5, #12]
 8626 01b6 94F85F11 		ldrb	r1, [r4, #351]	@ zero_extendqisi2
 8627 01ba 002A     		cmp	r2, #0
 8628 01bc 00F02981 		beq	.L1711
 8629 01c0 D0F8740A 		ldr	r0, [r0, #2676]
 8630 01c4 D4F86023 		ldr	r2, [r4, #864]
 8631 01c8 D0F800C0 		ldr	ip, [r0]
 8632 01cc C1F30011 		ubfx	r1, r1, #4, #1
 8633 01d0 0091     		str	r1, [sp]
 8634 01d2 DCF82890 		ldr	r9, [ip, #40]
 8635 01d6 5146     		mov	r1, r10
 8636 01d8 C847     		blx	r9
 8637 01da 0028     		cmp	r0, #0
 8638 01dc 00F01681 		beq	.L1772
 8639 01e0 94F8B430 		ldrb	r3, [r4, #180]	@ zero_extendqisi2
 8640 01e4 002B     		cmp	r3, #0
 8641 01e6 00F00C81 		beq	.L1780
 8642 01ea 5A48     		ldr	r0, .L1787+4
 8643              	.L1664:
 8644 01ec 05B0     		add	sp, sp, #20
 8645              		@ sp needed
 8646 01ee BDEC048B 		vldm	sp!, {d8-d9}
 8647 01f2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 8648              	.L1774:
 8649 01f6 5321     		movs	r1, #83
 8650 01f8 3046     		mov	r0, r6
 8651 01fa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8652 01fe B0B3     		cbz	r0, .L1770
 8653              	.L1669:
 8654 0200 3046     		mov	r0, r6
 8655 0202 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8656 0206 431E     		subs	r3, r0, #1
 8657 0208 022B     		cmp	r3, #2
 8658 020a 2DD8     		bhi	.L1781
 8659 020c 0122     		movs	r2, #1
 8660 020e 0223     		movs	r3, #2
 8661 0210 84F85E01 		strb	r0, [r4, #350]
 8662 0214 C4F85021 		str	r2, [r4, #336]
 8663 0218 C4F85431 		str	r3, [r4, #340]
 8664              	.L1671:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 153


 8665 021c 94F8B430 		ldrb	r3, [r4, #180]	@ zero_extendqisi2
 8666 0220 012B     		cmp	r3, #1
 8667 0222 00F09B80 		beq	.L1782
 8668 0226 5021     		movs	r1, #80
 8669 0228 3046     		mov	r0, r6
 8670 022a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8671 022e 0028     		cmp	r0, #0
 8672 0230 40F05A81 		bne	.L1681
 8673              	.L1771:
 8674 0234 94F85E51 		ldrb	r5, [r4, #350]	@ zero_extendqisi2
 8675 0238 0290     		str	r0, [sp, #8]
 8676 023a 04F1EC0A 		add	r10, r4, #236
 8677 023e 002D     		cmp	r5, #0
 8678 0240 3FF421AF 		beq	.L1682
 8679              	.L1775:
 8680 0244 424F     		ldr	r7, .L1787
 8681 0246 3846     		mov	r0, r7
 8682 0248 D7F80C90 		ldr	r9, [r7, #12]
 8683 024c FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 8684 0250 8346     		mov	fp, r0
 8685 0252 3846     		mov	r0, r7
 8686 0254 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 8687 0258 5B46     		mov	r3, fp
 8688 025a 0090     		str	r0, [sp]
 8689 025c 2A46     		mov	r2, r5
 8690 025e 4846     		mov	r0, r9
 8691 0260 5146     		mov	r1, r10
 8692 0262 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 8693 0266 0EE7     		b	.L1682
 8694              	.L1781:
 8695 0268 6328     		cmp	r0, #99
 8696 026a 00F0A980 		beq	.L1672
 8697              	.L1770:
 8698 026e 94F85E31 		ldrb	r3, [r4, #350]	@ zero_extendqisi2
 8699              	.L1670:
 8700 0272 002B     		cmp	r3, #0
 8701 0274 D2D1     		bne	.L1671
 8702              	.L1673:
 8703 0276 5221     		movs	r1, #82
 8704 0278 3046     		mov	r0, r6
 8705 027a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8706 027e 0028     		cmp	r0, #0
 8707 0280 CCD0     		beq	.L1671
 8708 0282 3046     		mov	r0, r6
 8709 0284 FFF7FEFF 		bl	_ZN11GCodeBuffer10GetUIValueEv
 8710 0288 0528     		cmp	r0, #5
 8711 028a 00F28381 		bhi	.L1722
 8712 028e C0EB0010 		rsb	r0, r0, r0, lsl #4
 8713 0292 8300     		lsls	r3, r0, #2
 8714 0294 E218     		adds	r2, r4, r3
 8715 0296 03F5F673 		add	r3, r3, #492
 8716 029a B2F82422 		ldrh	r2, [r2, #548]
 8717 029e A4F85C21 		strh	r2, [r4, #348]	@ movhi
 8718 02a2 E318     		adds	r3, r4, r3
 8719 02a4 0293     		str	r3, [sp, #8]
 8720 02a6 94F85E51 		ldrb	r5, [r4, #350]	@ zero_extendqisi2
 8721 02aa E7E6     		b	.L1677
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 154


 8722              	.L1768:
 8723 02ac 3046     		mov	r0, r6
 8724 02ae 95F81015 		ldrb	r1, [r5, #1296]	@ zero_extendqisi2
 8725 02b2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8726 02b6 28B9     		cbnz	r0, .L1685
 8727 02b8 94F85E21 		ldrb	r2, [r4, #350]	@ zero_extendqisi2
 8728 02bc 002A     		cmp	r2, #0
 8729 02be 3FF400AF 		beq	.L1686
 8730 02c2 09E7     		b	.L1684
 8731              	.L1685:
 8732 02c4 09FA08F2 		lsl	r2, r9, r8
 8733 02c8 3046     		mov	r0, r6
 8734 02ca 1743     		orrs	r7, r7, r2
 8735 02cc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8736 02d0 D4EDEE7A 		vldr.32	s15, [r4, #952]
 8737 02d4 029B     		ldr	r3, [sp, #8]
 8738 02d6 08EB4802 		add	r2, r8, r8, lsl #1
 8739 02da 20EE270A 		vmul.f32	s0, s0, s15
 8740 02de 2BB3     		cbz	r3, .L1687
 8741 02e0 03EB8801 		add	r1, r3, r8, lsl #2
 8742 02e4 D1ED007A 		vldr.32	s15, [r1]
 8743 02e8 37EE800A 		vadd.f32	s0, s15, s0
 8744 02ec 1544     		add	r5, r5, r2
 8745 02ee 85ED300A 		vstr.32	s0, [r5, #192]
 8746 02f2 94F85E21 		ldrb	r2, [r4, #350]	@ zero_extendqisi2
 8747 02f6 E4E6     		b	.L1686
 8748              	.L1693:
 8749 02f8 D5ED3B7A 		vldr.32	s15, [r5, #236]
 8750 02fc 37EE800A 		vadd.f32	s0, s15, s0
 8751 0300 18E7     		b	.L1773
 8752              	.L1697:
 8753 0302 012A     		cmp	r2, #1
 8754 0304 00F0E180 		beq	.L1703
 8755 0308 032A     		cmp	r2, #3
 8756 030a 7FF430AF 		bne	.L1699
 8757 030e D4F85C13 		ldr	r1, [r4, #860]
 8758 0312 D4F85821 		ldr	r2, [r4, #344]
 8759 0316 4FF0FF33 		mov	r3, #-1
 8760 031a 8B40     		lsls	r3, r3, r1
 8761 031c 27EA0303 		bic	r3, r7, r3
 8762 0320 1343     		orrs	r3, r3, r2
 8763 0322 C4F85831 		str	r3, [r4, #344]
 8764 0326 C4F84037 		str	r3, [r4, #1856]
 8765 032a 20E7     		b	.L1699
 8766              	.L1687:
 8767 032c B068     		ldr	r0, [r6, #8]
 8768 032e 017E     		ldrb	r1, [r0, #24]	@ zero_extendqisi2
 8769 0330 8B07     		lsls	r3, r1, #30
 8770 0332 3BD4     		bmi	.L1783
 8771 0334 0906     		lsls	r1, r1, #24
 8772 0336 00F1FF80 		bmi	.L1689
 8773 033a 417E     		ldrb	r1, [r0, #25]	@ zero_extendqisi2
 8774 033c CB07     		lsls	r3, r1, #31
 8775 033e 00F1FB80 		bmi	.L1689
 8776 0342 2A44     		add	r2, r2, r5
 8777 0344 82ED300A 		vstr.32	s0, [r2, #192]
 8778 0348 94F85E21 		ldrb	r2, [r4, #350]	@ zero_extendqisi2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 155


 8779 034c B9E6     		b	.L1686
 8780              	.L1788:
 8781 034e 00BF     		.align	2
 8782              	.L1787:
 8783 0350 00000000 		.word	reprap
 8784 0354 94000000 		.word	.LC142
 8785 0358 00FF7F47 		.word	1199570688
 8786              	.L1782:
 8787 035c 039B     		ldr	r3, [sp, #12]
 8788 035e 94F85E51 		ldrb	r5, [r4, #350]	@ zero_extendqisi2
 8789 0362 002B     		cmp	r3, #0
 8790 0364 3FF484AE 		beq	.L1678
 8791 0368 002D     		cmp	r5, #0
 8792 036a 7FF481AE 		bne	.L1678
 8793 036e 5321     		movs	r1, #83
 8794 0370 3046     		mov	r0, r6
 8795 0372 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8796 0376 0028     		cmp	r0, #0
 8797 0378 3FF45CAF 		beq	.L1771
 8798 037c 3046     		mov	r0, r6
 8799 037e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8800 0382 5FED0B7A 		vldr.32	s15, .L1787+8
 8801 0386 04F22C73 		addw	r3, r4, #1836
 8802 038a 60EE277A 		vmul.f32	s15, s0, s15
 8803 038e 93ED000A 		vldr.32	s0, [r3]
 8804 0392 87EE800A 		vdiv.f32	s0, s15, s0
 8805 0396 FFF7FEFF 		bl	lrintf
 8806 039a 0023     		movs	r3, #0
 8807 039c 80F31000 		usat	r0, #16, r0
 8808 03a0 A4F85C01 		strh	r0, [r4, #348]	@ movhi
 8809 03a4 94F85E51 		ldrb	r5, [r4, #350]	@ zero_extendqisi2
 8810 03a8 0293     		str	r3, [sp, #8]
 8811 03aa 67E6     		b	.L1677
 8812              	.L1783:
 8813 03ac 2A44     		add	r2, r2, r5
 8814 03ae D2ED307A 		vldr.32	s15, [r2, #192]
 8815 03b2 77EE807A 		vadd.f32	s15, s15, s0
 8816 03b6 C2ED307A 		vstr.32	s15, [r2, #192]
 8817 03ba 94F85E21 		ldrb	r2, [r4, #350]	@ zero_extendqisi2
 8818 03be 80E6     		b	.L1686
 8819              	.L1672:
 8820 03c0 D4F85821 		ldr	r2, [r4, #344]
 8821 03c4 94F85E31 		ldrb	r3, [r4, #350]	@ zero_extendqisi2
 8822 03c8 42F00052 		orr	r2, r2, #536870912
 8823 03cc C4F85821 		str	r2, [r4, #344]
 8824 03d0 4FE7     		b	.L1670
 8825              	.L1777:
 8826 03d2 7D4B     		ldr	r3, .L1789
 8827 03d4 7D49     		ldr	r1, .L1789+4
 8828 03d6 DB68     		ldr	r3, [r3, #12]
 8829 03d8 94F82525 		ldrb	r2, [r4, #1317]	@ zero_extendqisi2
 8830 03dc D3F8740A 		ldr	r0, [r3, #2676]
 8831 03e0 0368     		ldr	r3, [r0]
 8832 03e2 9B6D     		ldr	r3, [r3, #88]
 8833 03e4 8B42     		cmp	r3, r1
 8834 03e6 40F0E980 		bne	.L1700
 8835 03ea 002A     		cmp	r2, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 156


 8836 03ec 3FF4BFAE 		beq	.L1699
 8837 03f0 3846     		mov	r0, r7
 8838              	.L1701:
 8839 03f2 D4F82C35 		ldr	r3, [r4, #1324]
 8840 03f6 30EA0303 		bics	r3, r0, r3
 8841 03fa 3FF4B8AE 		beq	.L1699
 8842 03fe 7448     		ldr	r0, .L1789+8
 8843 0400 F4E6     		b	.L1664
 8844              	.L1780:
 8845 0402 4246     		mov	r2, r8
 8846 0404 5146     		mov	r1, r10
 8847 0406 2046     		mov	r0, r4
 8848 0408 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 8849              	.L1772:
 8850 040c E868     		ldr	r0, [r5, #12]
 8851 040e 94F85F11 		ldrb	r1, [r4, #351]	@ zero_extendqisi2
 8852              	.L1711:
 8853 0412 11F00801 		ands	r1, r1, #8
 8854 0416 04D0     		beq	.L1713
 8855 0418 37F00403 		bics	r3, r7, #4
 8856 041c 14BF     		ite	ne
 8857 041e 0121     		movne	r1, #1
 8858 0420 0021     		moveq	r1, #0
 8859              	.L1713:
 8860 0422 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 8861 0426 61F34103 		bfi	r3, r1, #1, #1
 8862 042a 84F85F31 		strb	r3, [r4, #351]
 8863 042e D0F8745A 		ldr	r5, [r0, #2676]
 8864 0432 2B7B     		ldrb	r3, [r5, #12]	@ zero_extendqisi2
 8865 0434 002B     		cmp	r3, #0
 8866 0436 67D0     		beq	.L1714
 8867 0438 94F81836 		ldrb	r3, [r4, #1560]	@ zero_extendqisi2
 8868 043c 012B     		cmp	r3, #1
 8869 043e 63D0     		beq	.L1714
 8870 0440 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 8871 0444 1B07     		lsls	r3, r3, #28
 8872 0446 59D5     		bpl	.L1784
 8873              	.L1715:
 8874 0448 D4ED317A 		vldr.32	s15, [r4, #196]
 8875 044c 94ED307A 		vldr.32	s14, [r4, #192]
 8876 0450 AB7B     		ldrb	r3, [r5, #14]	@ zero_extendqisi2
 8877 0452 77EEE88A 		vsub.f32	s17, s15, s17
 8878 0456 37EE488A 		vsub.f32	s16, s14, s16
 8879 045a 68EEA88A 		vmul.f32	s17, s17, s17
 8880 045e B0EE680A 		vmov.f32	s0, s17
 8881 0462 A8EE080A 		vfma.f32	s0, s16, s16
 8882 0466 2BB1     		cbz	r3, .L1717
 8883 0468 D4ED327A 		vldr.32	s15, [r4, #200]
 8884 046c 37EEC99A 		vsub.f32	s18, s15, s18
 8885 0470 A9EE090A 		vfma.f32	s0, s18, s18
 8886              	.L1717:
 8887 0474 B5EE400A 		vcmp.f32	s0, #0
 8888 0478 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 8889 047c F1EEC08A 		vsqrt.f32	s17, s0
 8890 0480 00F19F80 		bmi	.L1785
 8891              	.L1720:
 8892 0484 95ED020A 		vldr.32	s0, [r5, #8]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 157


 8893 0488 88EE800A 		vdiv.f32	s0, s17, s0
 8894 048c FFF7FEFF 		bl	rintf
 8895 0490 94ED507A 		vldr.32	s14, [r4, #320]
 8896 0494 D5ED017A 		vldr.32	s15, [r5, #4]
 8897 0498 B0EE408A 		vmov.f32	s16, s0
 8898 049c 88EE870A 		vdiv.f32	s0, s17, s14
 8899 04a0 20EE270A 		vmul.f32	s0, s0, s15
 8900 04a4 FFF7FEFF 		bl	rintf
 8901 04a8 FDEEC87A 		vcvt.s32.f32	s15, s16
 8902 04ac BDEEC00A 		vcvt.s32.f32	s0, s0
 8903 04b0 17EE903A 		vmov	r3, s15	@ int
 8904 04b4 10EE102A 		vmov	r2, s0	@ int
 8905 04b8 9342     		cmp	r3, r2
 8906 04ba A8BF     		it	ge
 8907 04bc 1346     		movge	r3, r2
 8908 04be 012B     		cmp	r3, #1
 8909 04c0 B8BF     		it	lt
 8910 04c2 0123     		movlt	r3, #1
 8911 04c4 C4F86431 		str	r3, [r4, #356]
 8912 04c8 25E0     		b	.L1705
 8913              	.L1703:
 8914 04ca D4F85C13 		ldr	r1, [r4, #860]
 8915 04ce D4F85821 		ldr	r2, [r4, #344]
 8916 04d2 4FF0FF33 		mov	r3, #-1
 8917 04d6 8B40     		lsls	r3, r3, r1
 8918 04d8 27EA0303 		bic	r3, r7, r3
 8919 04dc 42F08042 		orr	r2, r2, #1073741824
 8920 04e0 1343     		orrs	r3, r3, r2
 8921 04e2 C4F85831 		str	r3, [r4, #344]
 8922 04e6 42E6     		b	.L1699
 8923              	.L1681:
 8924 04e8 3046     		mov	r0, r6
 8925 04ea FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8926 04ee 0023     		movs	r3, #0
 8927 04f0 94F85E51 		ldrb	r5, [r4, #350]	@ zero_extendqisi2
 8928 04f4 A4F85C01 		strh	r0, [r4, #348]	@ movhi
 8929 04f8 0293     		str	r3, [sp, #8]
 8930 04fa BFE5     		b	.L1677
 8931              	.L1784:
 8932 04fc 039B     		ldr	r3, [sp, #12]
 8933 04fe 002B     		cmp	r3, #0
 8934 0500 A2D1     		bne	.L1715
 8935 0502 6B7B     		ldrb	r3, [r5, #13]	@ zero_extendqisi2
 8936 0504 002B     		cmp	r3, #0
 8937 0506 9FD0     		beq	.L1715
 8938              	.L1714:
 8939 0508 90F8683A 		ldrb	r3, [r0, #2664]	@ zero_extendqisi2
 8940 050c 002B     		cmp	r3, #0
 8941 050e 43D1     		bne	.L1786
 8942              	.L1719:
 8943 0510 0123     		movs	r3, #1
 8944 0512 C4F86431 		str	r3, [r4, #356]
 8945              	.L1705:
 8946 0516 0025     		movs	r5, #0
 8947 0518 3146     		mov	r1, r6
 8948 051a 2046     		mov	r0, r4
 8949 051c 84F8A851 		strb	r5, [r4, #424]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 158


 8950 0520 FFF7FEFF 		bl	_ZN6GCodes12FinaliseMoveER11GCodeBuffer
 8951 0524 2046     		mov	r0, r4
 8952 0526 3146     		mov	r1, r6
 8953 0528 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 8954 052c 2846     		mov	r0, r5
 8955 052e 05B0     		add	sp, sp, #20
 8956              		@ sp needed
 8957 0530 BDEC048B 		vldm	sp!, {d8-d9}
 8958 0534 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 8959              	.L1689:
 8960 0538 D4F8C013 		ldr	r1, [r4, #960]
 8961 053c 01EBC101 		add	r1, r1, r1, lsl #3
 8962 0540 4144     		add	r1, r1, r8
 8963 0542 04EB8101 		add	r1, r4, r1, lsl #2
 8964 0546 D1EDF17A 		vldr.32	s15, [r1, #964]
 8965 054a 70EE677A 		vsub.f32	s15, s0, s15
 8966 054e 2A44     		add	r2, r2, r5
 8967 0550 C2ED307A 		vstr.32	s15, [r2, #192]
 8968 0554 94F85E21 		ldrb	r2, [r4, #350]	@ zero_extendqisi2
 8969 0558 B3E5     		b	.L1686
 8970              	.L1779:
 8971 055a 3046     		mov	r0, r6
 8972 055c FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 8973 0560 0028     		cmp	r0, #0
 8974 0562 7FF415AE 		bne	.L1708
 8975 0566 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 8976 056a 1907     		lsls	r1, r3, #28
 8977 056c 7FF510AE 		bpl	.L1708
 8978 0570 BA07     		lsls	r2, r7, #30
 8979 0572 1CBF     		itt	ne
 8980 0574 D4F8C830 		ldrne	r3, [r4, #200]	@ float
 8981 0578 C4F8E830 		strne	r3, [r4, #232]	@ float
 8982 057c 08E6     		b	.L1708
 8983              	.L1723:
 8984 057e 1548     		ldr	r0, .L1789+12
 8985 0580 34E6     		b	.L1664
 8986              	.L1683:
 8987 0582 94F85E21 		ldrb	r2, [r4, #350]	@ zero_extendqisi2
 8988 0586 EAE5     		b	.L1695
 8989              	.L1778:
 8990 0588 0123     		movs	r3, #1
 8991 058a C4F86431 		str	r3, [r4, #356]
 8992 058e B268     		ldr	r2, [r6, #8]
 8993 0590 1375     		strb	r3, [r2, #20]
 8994 0592 C0E7     		b	.L1705
 8995              	.L1722:
 8996 0594 1048     		ldr	r0, .L1789+16
 8997 0596 29E6     		b	.L1664
 8998              	.L1786:
 8999 0598 D4ED310A 		vldr.32	s1, [r4, #196]
 9000 059c 94ED300A 		vldr.32	s0, [r4, #192]
 9001 05a0 00F58870 		add	r0, r0, #272
 9002 05a4 70EEE80A 		vsub.f32	s1, s1, s17
 9003 05a8 30EE480A 		vsub.f32	s0, s0, s16
 9004 05ac FFF7FEFF 		bl	_ZNK9HeightMap18GetMinimumSegmentsEff
 9005 05b0 0028     		cmp	r0, #0
 9006 05b2 08BF     		it	eq
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 159


 9007 05b4 0120     		moveq	r0, #1
 9008 05b6 C4F86401 		str	r0, [r4, #356]
 9009 05ba ACE7     		b	.L1705
 9010              	.L1700:
 9011 05bc 3946     		mov	r1, r7
 9012 05be 9847     		blx	r3
 9013 05c0 17E7     		b	.L1701
 9014              	.L1785:
 9015 05c2 FFF7FEFF 		bl	sqrtf
 9016 05c6 5DE7     		b	.L1720
 9017              	.L1790:
 9018              		.align	2
 9019              	.L1789:
 9020 05c8 00000000 		.word	reprap
 9021 05cc 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 9022 05d0 20000000 		.word	.LC140
 9023 05d4 40000000 		.word	.LC141
 9024 05d8 00000000 		.word	.LC139
 9025              		.size	_ZN6GCodes14DoStraightMoveER11GCodeBufferb, .-_ZN6GCodes14DoStraightMoveER11GCodeBufferb
 9026              		.section	.text._ZN6GCodes9DoArcMoveER11GCodeBufferb,"ax",%progbits
 9027              		.align	1
 9028              		.p2align 2,,3
 9029              		.global	_ZN6GCodes9DoArcMoveER11GCodeBufferb
 9030              		.syntax unified
 9031              		.thumb
 9032              		.thumb_func
 9033              		.fpu fpv4-sp-d16
 9034              		.type	_ZN6GCodes9DoArcMoveER11GCodeBufferb, %function
 9035              	_ZN6GCodes9DoArcMoveER11GCodeBufferb:
 9036              		@ args = 0, pretend = 0, frame = 8
 9037              		@ frame_needed = 0, uses_anonymous_args = 0
 9038 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 9039 0004 2DED068B 		vpush.64	{d8, d9, d10}
 9040 0008 0D46     		mov	r5, r1
 9041 000a 85B0     		sub	sp, sp, #20
 9042 000c 0446     		mov	r4, r0
 9043 000e 5821     		movs	r1, #88
 9044 0010 2846     		mov	r0, r5
 9045 0012 9046     		mov	r8, r2
 9046 0014 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9047 0018 0646     		mov	r6, r0
 9048 001a 0028     		cmp	r0, #0
 9049 001c 40F0BC80 		bne	.L1865
 9050 0020 D4ED308A 		vldr.32	s17, [r4, #192]
 9051              	.L1793:
 9052 0024 5921     		movs	r1, #89
 9053 0026 2846     		mov	r0, r5
 9054 0028 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9055 002c 0746     		mov	r7, r0
 9056 002e 0028     		cmp	r0, #0
 9057 0030 40F0A980 		bne	.L1866
 9058 0034 94ED318A 		vldr.32	s16, [r4, #196]
 9059              	.L1795:
 9060 0038 4921     		movs	r1, #73
 9061 003a 2846     		mov	r0, r5
 9062 003c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9063 0040 0746     		mov	r7, r0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 160


 9064 0042 0028     		cmp	r0, #0
 9065 0044 40F09780 		bne	.L1867
 9066 0048 9FEDC99A 		vldr.32	s18, .L1873
 9067              	.L1796:
 9068 004c 4A21     		movs	r1, #74
 9069 004e 2846     		mov	r0, r5
 9070 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9071 0054 48B9     		cbnz	r0, .L1868
 9072 0056 16B1     		cbz	r6, .L1798
 9073 0058 002F     		cmp	r7, #0
 9074 005a 40F0D080 		bne	.L1869
 9075              	.L1798:
 9076 005e C548     		ldr	r0, .L1873+4
 9077              	.L1791:
 9078 0060 05B0     		add	sp, sp, #20
 9079              		@ sp needed
 9080 0062 BDEC068B 		vldm	sp!, {d8-d10}
 9081 0066 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 9082              	.L1868:
 9083 006a 2846     		mov	r0, r5
 9084 006c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9085 0070 002E     		cmp	r6, #0
 9086 0072 F4D0     		beq	.L1798
 9087 0074 D4EDEE9A 		vldr.32	s19, [r4, #952]
 9088 0078 60EE299A 		vmul.f32	s19, s0, s19
 9089              	.L1799:
 9090 007c D4F86023 		ldr	r2, [r4, #864]
 9091 0080 04F58E73 		add	r3, r4, #284
 9092 0084 04F1EC0A 		add	r10, r4, #236
 9093 0088 9200     		lsls	r2, r2, #2
 9094 008a 5146     		mov	r1, r10
 9095 008c 1846     		mov	r0, r3
 9096 008e 0393     		str	r3, [sp, #12]
 9097 0090 FFF7FEFF 		bl	memcpy
 9098 0094 AA68     		ldr	r2, [r5, #8]
 9099 0096 94ED30AA 		vldr.32	s20, [r4, #192]
 9100 009a 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 9101 009c D4ED31AA 		vldr.32	s21, [r4, #196]
 9102 00a0 13F00201 		ands	r1, r3, #2
 9103 00a4 0291     		str	r1, [sp, #8]
 9104 00a6 00F09280 		beq	.L1801
 9105 00aa 7AEE288A 		vadd.f32	s17, s20, s17
 9106 00ae 3AEE888A 		vadd.f32	s16, s21, s16
 9107 00b2 C4ED308A 		vstr.32	s17, [r4, #192]
 9108 00b6 84ED318A 		vstr.32	s16, [r4, #196]
 9109              	.L1802:
 9110 00ba D4F86033 		ldr	r3, [r4, #864]
 9111 00be 022B     		cmp	r3, #2
 9112 00c0 40F2A580 		bls	.L1834
 9113 00c4 04F21256 		addw	r6, r4, #1298
 9114 00c8 4FF00209 		mov	r9, #2
 9115 00cc 0327     		movs	r7, #3
 9116 00ce 4FF0010B 		mov	fp, #1
 9117 00d2 05E0     		b	.L1809
 9118              	.L1806:
 9119 00d4 D4F86023 		ldr	r2, [r4, #864]
 9120 00d8 09F10109 		add	r9, r9, #1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 161


 9121 00dc 4A45     		cmp	r2, r9
 9122 00de 21D9     		bls	.L1805
 9123              	.L1809:
 9124 00e0 16F8011B 		ldrb	r1, [r6], #1	@ zero_extendqisi2
 9125 00e4 2846     		mov	r0, r5
 9126 00e6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9127 00ea 0028     		cmp	r0, #0
 9128 00ec F2D0     		beq	.L1806
 9129 00ee 2846     		mov	r0, r5
 9130 00f0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9131 00f4 D4EDEE7A 		vldr.32	s15, [r4, #952]
 9132 00f8 029B     		ldr	r3, [sp, #8]
 9133 00fa 04EB8902 		add	r2, r4, r9, lsl #2
 9134 00fe 20EE270A 		vmul.f32	s0, s0, s15
 9135 0102 002B     		cmp	r3, #0
 9136 0104 50D0     		beq	.L1807
 9137 0106 D2ED307A 		vldr.32	s15, [r2, #192]
 9138 010a 77EE807A 		vadd.f32	s15, s15, s0
 9139 010e C2ED307A 		vstr.32	s15, [r2, #192]
 9140              	.L1808:
 9141 0112 0BFA09F2 		lsl	r2, fp, r9
 9142 0116 1743     		orrs	r7, r7, r2
 9143 0118 D4F86023 		ldr	r2, [r4, #864]
 9144 011c 09F10109 		add	r9, r9, #1
 9145 0120 4A45     		cmp	r2, r9
 9146 0122 DDD8     		bhi	.L1809
 9147              	.L1805:
 9148 0124 944E     		ldr	r6, .L1873+8
 9149 0126 9549     		ldr	r1, .L1873+12
 9150 0128 F368     		ldr	r3, [r6, #12]
 9151 012a 94F82525 		ldrb	r2, [r4, #1317]	@ zero_extendqisi2
 9152 012e D3F8740A 		ldr	r0, [r3, #2676]
 9153 0132 0368     		ldr	r3, [r0]
 9154 0134 9B6D     		ldr	r3, [r3, #88]
 9155 0136 8B42     		cmp	r3, r1
 9156 0138 3BD1     		bne	.L1810
 9157 013a 002A     		cmp	r2, #0
 9158 013c 3CD1     		bne	.L1811
 9159              	.L1814:
 9160 013e 0023     		movs	r3, #0
 9161 0140 5246     		mov	r2, r10
 9162 0142 04F1C001 		add	r1, r4, #192
 9163 0146 2046     		mov	r0, r4
 9164 0148 FFF7FEFF 		bl	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 9165 014c 94F82435 		ldrb	r3, [r4, #1316]	@ zero_extendqisi2
 9166 0150 002B     		cmp	r3, #0
 9167 0152 5ED0     		beq	.L1813
 9168 0154 F268     		ldr	r2, [r6, #12]
 9169 0156 D4F82C35 		ldr	r3, [r4, #1324]
 9170 015a D2F8740A 		ldr	r0, [r2, #2676]
 9171 015e D4F86023 		ldr	r2, [r4, #864]
 9172 0162 0668     		ldr	r6, [r0]
 9173 0164 0121     		movs	r1, #1
 9174 0166 0091     		str	r1, [sp]
 9175 0168 B66A     		ldr	r6, [r6, #40]
 9176 016a 5146     		mov	r1, r10
 9177 016c B047     		blx	r6
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 162


 9178 016e 0028     		cmp	r0, #0
 9179 0170 4FD0     		beq	.L1813
 9180 0172 8348     		ldr	r0, .L1873+16
 9181 0174 74E7     		b	.L1791
 9182              	.L1867:
 9183 0176 2846     		mov	r0, r5
 9184 0178 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9185 017c 94EDEE9A 		vldr.32	s18, [r4, #952]
 9186 0180 20EE099A 		vmul.f32	s18, s0, s18
 9187 0184 62E7     		b	.L1796
 9188              	.L1866:
 9189 0186 2846     		mov	r0, r5
 9190 0188 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9191 018c 94EDEE8A 		vldr.32	s16, [r4, #952]
 9192 0190 3E46     		mov	r6, r7
 9193 0192 20EE088A 		vmul.f32	s16, s0, s16
 9194 0196 4FE7     		b	.L1795
 9195              	.L1865:
 9196 0198 2846     		mov	r0, r5
 9197 019a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9198 019e D4EDEE8A 		vldr.32	s17, [r4, #952]
 9199 01a2 60EE288A 		vmul.f32	s17, s0, s17
 9200 01a6 3DE7     		b	.L1793
 9201              	.L1807:
 9202 01a8 04EB8902 		add	r2, r4, r9, lsl #2
 9203 01ac 82ED300A 		vstr.32	s0, [r2, #192]
 9204 01b0 AFE7     		b	.L1808
 9205              	.L1810:
 9206 01b2 3946     		mov	r1, r7
 9207 01b4 9847     		blx	r3
 9208 01b6 0746     		mov	r7, r0
 9209              	.L1811:
 9210 01b8 D4F82C35 		ldr	r3, [r4, #1324]
 9211 01bc 37EA0303 		bics	r3, r7, r3
 9212 01c0 BDD0     		beq	.L1814
 9213 01c2 7048     		ldr	r0, .L1873+20
 9214 01c4 05B0     		add	sp, sp, #20
 9215              		@ sp needed
 9216 01c6 BDEC068B 		vldm	sp!, {d8-d10}
 9217 01ca BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 9218              	.L1801:
 9219 01ce 1E06     		lsls	r6, r3, #24
 9220 01d0 02D4     		bmi	.L1803
 9221 01d2 537E     		ldrb	r3, [r2, #25]	@ zero_extendqisi2
 9222 01d4 D807     		lsls	r0, r3, #31
 9223 01d6 15D5     		bpl	.L1804
 9224              	.L1803:
 9225 01d8 D4F8C033 		ldr	r3, [r4, #960]
 9226 01dc 03EBC303 		add	r3, r3, r3, lsl #3
 9227 01e0 04EB8303 		add	r3, r4, r3, lsl #2
 9228 01e4 D3EDF17A 		vldr.32	s15, [r3, #964]
 9229 01e8 78EEE78A 		vsub.f32	s17, s17, s15
 9230 01ec C4ED308A 		vstr.32	s17, [r4, #192]
 9231 01f0 D3EDF27A 		vldr.32	s15, [r3, #968]
 9232 01f4 38EE678A 		vsub.f32	s16, s16, s15
 9233 01f8 84ED318A 		vstr.32	s16, [r4, #196]
 9234 01fc 5DE7     		b	.L1802
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 163


 9235              	.L1869:
 9236 01fe DFED5C9A 		vldr.32	s19, .L1873
 9237 0202 3BE7     		b	.L1799
 9238              	.L1804:
 9239 0204 C4ED308A 		vstr.32	s17, [r4, #192]
 9240 0208 84ED318A 		vstr.32	s16, [r4, #196]
 9241 020c 55E7     		b	.L1802
 9242              	.L1834:
 9243 020e 0327     		movs	r7, #3
 9244 0210 88E7     		b	.L1805
 9245              	.L1813:
 9246 0212 D4ED300A 		vldr.32	s1, [r4, #192]
 9247 0216 94ED310A 		vldr.32	s0, [r4, #196]
 9248 021a 3AEE09AA 		vadd.f32	s20, s20, s18
 9249 021e 7AEEA9AA 		vadd.f32	s21, s21, s19
 9250 0222 70EECA0A 		vsub.f32	s1, s1, s20
 9251 0226 30EE6A0A 		vsub.f32	s0, s0, s21
 9252 022a FFF7FEFF 		bl	atan2f
 9253 022e 0026     		movs	r6, #0
 9254 0230 C4F85861 		str	r6, [r4, #344]
 9255 0234 84F85E61 		strb	r6, [r4, #350]
 9256 0238 4F48     		ldr	r0, .L1873+8
 9257 023a B0EE408A 		vmov.f32	s16, s0
 9258 023e FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 9259 0242 C4F85001 		str	r0, [r4, #336]
 9260 0246 4C48     		ldr	r0, .L1873+8
 9261 0248 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 9262 024c 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 9263 0250 D4F86073 		ldr	r7, [r4, #864]
 9264 0254 C4F85401 		str	r0, [r4, #340]
 9265 0258 43F01003 		orr	r3, r3, #16
 9266 025c 84F85F31 		strb	r3, [r4, #351]
 9267 0260 F7B1     		cbz	r7, .L1815
 9268 0262 D4F850C1 		ldr	ip, [r4, #336]
 9269 0266 039B     		ldr	r3, [sp, #12]
 9270 0268 3246     		mov	r2, r6
 9271 026a 0AE0     		b	.L1819
 9272              	.L1870:
 9273 026c D3ED007A 		vldr.32	s15, [r3]
 9274 0270 77EE897A 		vadd.f32	s15, s15, s18
 9275 0274 C3ED177A 		vstr.32	s15, [r3, #92]
 9276              	.L1818:
 9277 0278 0132     		adds	r2, r2, #1
 9278 027a BA42     		cmp	r2, r7
 9279 027c 03F10403 		add	r3, r3, #4
 9280 0280 0ED0     		beq	.L1815
 9281              	.L1819:
 9282 0282 2CFA02F1 		lsr	r1, ip, r2
 9283 0286 C907     		lsls	r1, r1, #31
 9284 0288 20FA02F6 		lsr	r6, r0, r2
 9285 028c EED4     		bmi	.L1870
 9286 028e F107     		lsls	r1, r6, #31
 9287 0290 F2D5     		bpl	.L1818
 9288 0292 D3ED007A 		vldr.32	s15, [r3]
 9289 0296 77EEA97A 		vadd.f32	s15, s15, s19
 9290 029a C3ED177A 		vstr.32	s15, [r3, #92]
 9291 029e EBE7     		b	.L1818
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 164


 9292              	.L1815:
 9293 02a0 2946     		mov	r1, r5
 9294 02a2 2046     		mov	r0, r4
 9295 02a4 FFF7FEFF 		bl	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer
 9296 02a8 94F8B430 		ldrb	r3, [r4, #180]	@ zero_extendqisi2
 9297 02ac 012B     		cmp	r3, #1
 9298 02ae 00F09B80 		beq	.L1871
 9299 02b2 5021     		movs	r1, #80
 9300 02b4 2846     		mov	r0, r5
 9301 02b6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9302 02ba 20B1     		cbz	r0, .L1822
 9303 02bc 2846     		mov	r0, r5
 9304 02be FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9305 02c2 A4F85C01 		strh	r0, [r4, #348]	@ movhi
 9306              	.L1822:
 9307 02c6 29EEA90A 		vmul.f32	s0, s19, s19
 9308 02ca 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 9309 02ce A9EE090A 		vfma.f32	s0, s18, s18
 9310 02d2 C3F3C002 		ubfx	r2, r3, #3, #1
 9311 02d6 62F34103 		bfi	r3, r2, #1, #1
 9312 02da 84F85F31 		strb	r3, [r4, #351]
 9313 02de B5EE400A 		vcmp.f32	s0, #0
 9314 02e2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9315 02e6 F1EEC08A 		vsqrt.f32	s17, s0
 9316 02ea 00F1B480 		bmi	.L1872
 9317              	.L1824:
 9318 02ee C4ED678A 		vstr.32	s17, [r4, #412]
 9319 02f2 F1EE490A 		vneg.f32	s1, s18
 9320 02f6 B1EE690A 		vneg.f32	s0, s19
 9321 02fa FFF7FEFF 		bl	atan2f
 9322 02fe 84ED680A 		vstr.32	s0, [r4, #416]
 9323 0302 B8F1000F 		cmp	r8, #0
 9324 0306 45D0     		beq	.L1825
 9325 0308 30EE480A 		vsub.f32	s0, s0, s16
 9326 030c B5EEC00A 		vcmpe.f32	s0, #0
 9327 0310 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9328 0314 45D4     		bmi	.L1826
 9329 0316 94ED677A 		vldr.32	s14, [r4, #412]
 9330 031a 94EDEF6A 		vldr.32	s12, [r4, #956]
 9331 031e DFED1C6A 		vldr.32	s13, .L1873+32
 9332 0322 20EE077A 		vmul.f32	s14, s0, s14
 9333 0326 C7EE067A 		vdiv.f32	s15, s14, s12
 9334 032a 77EEA67A 		vadd.f32	s15, s15, s13
 9335 032e FCEEE77A 		vcvt.u32.f32	s15, s15
 9336 0332 17EE903A 		vmov	r3, s15	@ int
 9337 0336 012B     		cmp	r3, #1
 9338 0338 38BF     		it	cc
 9339 033a 0123     		movcc	r3, #1
 9340 033c 07EE903A 		vmov	s15, r3	@ int
 9341 0340 B8EE677A 		vcvt.f32.u32	s14, s15
 9342 0344 C4F86431 		str	r3, [r4, #356]
 9343 0348 C0EE077A 		vdiv.f32	s15, s0, s14
 9344              	.L1830:
 9345 034c F1EE677A 		vneg.f32	s15, s15
 9346              	.L1864:
 9347 0350 0123     		movs	r3, #1
 9348 0352 C4ED697A 		vstr.32	s15, [r4, #420]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 165


 9349 0356 84F8A831 		strb	r3, [r4, #424]
 9350 035a 2946     		mov	r1, r5
 9351 035c 2046     		mov	r0, r4
 9352 035e FFF7FEFF 		bl	_ZN6GCodes12FinaliseMoveER11GCodeBuffer
 9353 0362 2046     		mov	r0, r4
 9354 0364 2946     		mov	r1, r5
 9355 0366 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 9356 036a 0020     		movs	r0, #0
 9357 036c 78E6     		b	.L1791
 9358              	.L1874:
 9359 036e 00BF     		.align	2
 9360              	.L1873:
 9361 0370 00000000 		.word	0
 9362 0374 00000000 		.word	.LC143
 9363 0378 00000000 		.word	reprap
 9364 037c 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 9365 0380 3C000000 		.word	.LC145
 9366 0384 1C000000 		.word	.LC144
 9367 0388 DB0FC940 		.word	1086918619
 9368 038c 00FF7F47 		.word	1199570688
 9369 0390 CDCC4C3F 		.word	1061997773
 9370              	.L1825:
 9371 0394 38EE400A 		vsub.f32	s0, s16, s0
 9372 0398 B5EEC00A 		vcmpe.f32	s0, #0
 9373 039c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9374 03a0 3DD5     		bpl	.L1862
 9375              	.L1826:
 9376 03a2 5FED077A 		vldr.32	s15, .L1873+24
 9377 03a6 94ED677A 		vldr.32	s14, [r4, #412]
 9378 03aa 94EDEF6A 		vldr.32	s12, [r4, #956]
 9379 03ae 5FED086A 		vldr.32	s13, .L1873+32
 9380 03b2 30EE270A 		vadd.f32	s0, s0, s15
 9381 03b6 20EE077A 		vmul.f32	s14, s0, s14
 9382 03ba C7EE067A 		vdiv.f32	s15, s14, s12
 9383 03be 77EEA67A 		vadd.f32	s15, s15, s13
 9384 03c2 FCEEE77A 		vcvt.u32.f32	s15, s15
 9385 03c6 17EE903A 		vmov	r3, s15	@ int
 9386 03ca 012B     		cmp	r3, #1
 9387 03cc 38BF     		it	cc
 9388 03ce 0123     		movcc	r3, #1
 9389 03d0 07EE903A 		vmov	s15, r3	@ int
 9390 03d4 B8EE677A 		vcvt.f32.u32	s14, s15
 9391 03d8 C4F86431 		str	r3, [r4, #356]
 9392 03dc C0EE077A 		vdiv.f32	s15, s0, s14
 9393 03e0 B8F1000F 		cmp	r8, #0
 9394 03e4 B4D0     		beq	.L1864
 9395 03e6 B1E7     		b	.L1830
 9396              	.L1871:
 9397 03e8 5321     		movs	r1, #83
 9398 03ea 2846     		mov	r0, r5
 9399 03ec FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 9400 03f0 0028     		cmp	r0, #0
 9401 03f2 3FF468AF 		beq	.L1822
 9402 03f6 2846     		mov	r0, r5
 9403 03f8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 9404 03fc 5FED1D7A 		vldr.32	s15, .L1873+28
 9405 0400 04F22C73 		addw	r3, r4, #1836
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 166


 9406 0404 60EE277A 		vmul.f32	s15, s0, s15
 9407 0408 93ED000A 		vldr.32	s0, [r3]
 9408 040c 87EE800A 		vdiv.f32	s0, s15, s0
 9409 0410 FFF7FEFF 		bl	lrintf
 9410 0414 80F31000 		usat	r0, #16, r0
 9411 0418 A4F85C01 		strh	r0, [r4, #348]	@ movhi
 9412 041c 53E7     		b	.L1822
 9413              	.L1862:
 9414 041e 94ED677A 		vldr.32	s14, [r4, #412]
 9415 0422 94EDEF6A 		vldr.32	s12, [r4, #956]
 9416 0426 5FED266A 		vldr.32	s13, .L1873+32
 9417 042a 20EE077A 		vmul.f32	s14, s0, s14
 9418 042e C7EE067A 		vdiv.f32	s15, s14, s12
 9419 0432 77EEA67A 		vadd.f32	s15, s15, s13
 9420 0436 FCEEE77A 		vcvt.u32.f32	s15, s15
 9421 043a 17EE903A 		vmov	r3, s15	@ int
 9422 043e 012B     		cmp	r3, #1
 9423 0440 38BF     		it	cc
 9424 0442 0123     		movcc	r3, #1
 9425 0444 07EE903A 		vmov	s15, r3	@ int
 9426 0448 B8EE677A 		vcvt.f32.u32	s14, s15
 9427 044c C4F86431 		str	r3, [r4, #356]
 9428 0450 C0EE077A 		vdiv.f32	s15, s0, s14
 9429 0454 7CE7     		b	.L1864
 9430              	.L1872:
 9431 0456 FFF7FEFF 		bl	sqrtf
 9432 045a 48E7     		b	.L1824
 9433              		.size	_ZN6GCodes9DoArcMoveER11GCodeBufferb, .-_ZN6GCodes9DoArcMoveER11GCodeBufferb
 9434              		.section	.text._ZNK6GCodes10AppendAxesERK9StringRefm,"ax",%progbits
 9435              		.align	1
 9436              		.p2align 2,,3
 9437              		.global	_ZNK6GCodes10AppendAxesERK9StringRefm
 9438              		.syntax unified
 9439              		.thumb
 9440              		.thumb_func
 9441              		.fpu fpv4-sp-d16
 9442              		.type	_ZNK6GCodes10AppendAxesERK9StringRefm, %function
 9443              	_ZNK6GCodes10AppendAxesERK9StringRefm:
 9444              		@ args = 0, pretend = 0, frame = 0
 9445              		@ frame_needed = 0, uses_anonymous_args = 0
 9446 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 9447 0004 D0F86053 		ldr	r5, [r0, #864]
 9448 0008 B5B1     		cbz	r5, .L1875
 9449 000a 1646     		mov	r6, r2
 9450 000c 8846     		mov	r8, r1
 9451 000e 0746     		mov	r7, r0
 9452 0010 0024     		movs	r4, #0
 9453 0012 02E0     		b	.L1878
 9454              	.L1877:
 9455 0014 0134     		adds	r4, r4, #1
 9456 0016 A542     		cmp	r5, r4
 9457 0018 0ED9     		bls	.L1875
 9458              	.L1878:
 9459 001a 26FA04F3 		lsr	r3, r6, r4
 9460 001e DB07     		lsls	r3, r3, #31
 9461 0020 F8D5     		bpl	.L1877
 9462 0022 3B19     		adds	r3, r7, r4
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 167


 9463 0024 4046     		mov	r0, r8
 9464 0026 93F81015 		ldrb	r1, [r3, #1296]	@ zero_extendqisi2
 9465 002a FFF7FEFF 		bl	_ZNK9StringRef3catEc
 9466 002e D7F86053 		ldr	r5, [r7, #864]
 9467 0032 0134     		adds	r4, r4, #1
 9468 0034 A542     		cmp	r5, r4
 9469 0036 F0D8     		bhi	.L1878
 9470              	.L1875:
 9471 0038 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 9472              		.size	_ZNK6GCodes10AppendAxesERK9StringRefm, .-_ZNK6GCodes10AppendAxesERK9StringRefm
 9473              		.section	.text._ZNK6GCodes20GetMachineModeStringEv,"ax",%progbits
 9474              		.align	1
 9475              		.p2align 2,,3
 9476              		.global	_ZNK6GCodes20GetMachineModeStringEv
 9477              		.syntax unified
 9478              		.thumb
 9479              		.thumb_func
 9480              		.fpu fpv4-sp-d16
 9481              		.type	_ZNK6GCodes20GetMachineModeStringEv, %function
 9482              	_ZNK6GCodes20GetMachineModeStringEv:
 9483              		@ args = 0, pretend = 0, frame = 0
 9484              		@ frame_needed = 0, uses_anonymous_args = 0
 9485              		@ link register save eliminated.
 9486 0000 90F8B430 		ldrb	r3, [r0, #180]	@ zero_extendqisi2
 9487 0004 022B     		cmp	r3, #2
 9488 0006 9ABF     		itte	ls
 9489 0008 024A     		ldrls	r2, .L1890
 9490 000a 52F82300 		ldrls	r0, [r2, r3, lsl #2]
 9491 000e 0248     		ldrhi	r0, .L1890+4
 9492 0010 7047     		bx	lr
 9493              	.L1891:
 9494 0012 00BF     		.align	2
 9495              	.L1890:
 9496 0014 00000000 		.word	.LANCHOR5
 9497 0018 00000000 		.word	.LC146
 9498              		.size	_ZNK6GCodes20GetMachineModeStringEv, .-_ZNK6GCodes20GetMachineModeStringEv
 9499              		.section	.text._ZN6GCodes17HandleHeaterFaultEi,"ax",%progbits
 9500              		.align	1
 9501              		.p2align 2,,3
 9502              		.global	_ZN6GCodes17HandleHeaterFaultEi
 9503              		.syntax unified
 9504              		.thumb
 9505              		.thumb_func
 9506              		.fpu fpv4-sp-d16
 9507              		.type	_ZN6GCodes17HandleHeaterFaultEi, %function
 9508              	_ZN6GCodes17HandleHeaterFaultEi:
 9509              		@ args = 0, pretend = 0, frame = 0
 9510              		@ frame_needed = 0, uses_anonymous_args = 0
 9511 0000 90F83037 		ldrb	r3, [r0, #1840]	@ zero_extendqisi2
 9512 0004 03B1     		cbz	r3, .L1903
 9513 0006 7047     		bx	lr
 9514              	.L1903:
 9515 0008 10B5     		push	{r4, lr}
 9516 000a 836C     		ldr	r3, [r0, #72]
 9517 000c 0446     		mov	r4, r0
 9518 000e 1868     		ldr	r0, [r3]
 9519 0010 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 168


 9520 0014 8368     		ldr	r3, [r0, #8]
 9521 0016 33B1     		cbz	r3, .L1892
 9522 0018 0123     		movs	r3, #1
 9523 001a 84F83037 		strb	r3, [r4, #1840]
 9524 001e FFF7FEFF 		bl	millis
 9525 0022 C4F83407 		str	r0, [r4, #1844]
 9526              	.L1892:
 9527 0026 10BD     		pop	{r4, pc}
 9528              		.size	_ZN6GCodes17HandleHeaterFaultEi, .-_ZN6GCodes17HandleHeaterFaultEi
 9529              		.section	.text._ZN6GCodes16CheckHeaterFaultEv,"ax",%progbits
 9530              		.align	1
 9531              		.p2align 2,,3
 9532              		.global	_ZN6GCodes16CheckHeaterFaultEv
 9533              		.syntax unified
 9534              		.thumb
 9535              		.thumb_func
 9536              		.fpu fpv4-sp-d16
 9537              		.type	_ZN6GCodes16CheckHeaterFaultEv, %function
 9538              	_ZN6GCodes16CheckHeaterFaultEv:
 9539              		@ args = 0, pretend = 0, frame = 0
 9540              		@ frame_needed = 0, uses_anonymous_args = 0
 9541 0000 38B5     		push	{r3, r4, r5, lr}
 9542 0002 90F83037 		ldrb	r3, [r0, #1840]	@ zero_extendqisi2
 9543 0006 022B     		cmp	r3, #2
 9544 0008 0446     		mov	r4, r0
 9545 000a 31D0     		beq	.L1906
 9546 000c 032B     		cmp	r3, #3
 9547 000e 60D0     		beq	.L1907
 9548 0010 012B     		cmp	r3, #1
 9549 0012 00D0     		beq	.L1926
 9550              	.L1904:
 9551 0014 38BD     		pop	{r3, r4, r5, pc}
 9552              	.L1926:
 9553 0016 374D     		ldr	r5, .L1927
 9554 0018 2B6A     		ldr	r3, [r5, #32]
 9555 001a 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 9556 001c 002B     		cmp	r3, #0
 9557 001e 4DD0     		beq	.L1909
 9558 0020 FFF7FEFF 		bl	_ZNK6GCodes16IsReallyPrintingEv.part.54
 9559 0024 0028     		cmp	r0, #0
 9560 0026 49D0     		beq	.L1909
 9561 0028 236E     		ldr	r3, [r4, #96]
 9562 002a 1B68     		ldr	r3, [r3]
 9563 002c 9A68     		ldr	r2, [r3, #8]
 9564 002e 127D     		ldrb	r2, [r2, #20]	@ zero_extendqisi2
 9565 0030 002A     		cmp	r2, #0
 9566 0032 43D1     		bne	.L1909
 9567 0034 93F82820 		ldrb	r2, [r3, #40]	@ zero_extendqisi2
 9568 0038 083A     		subs	r2, r2, #8
 9569 003a 012A     		cmp	r2, #1
 9570 003c 3ED9     		bls	.L1909
 9571 003e A26E     		ldr	r2, [r4, #104]
 9572 0040 9342     		cmp	r3, r2
 9573 0042 07D0     		beq	.L1910
 9574 0044 002A     		cmp	r2, #0
 9575 0046 39D1     		bne	.L1909
 9576 0048 A366     		str	r3, [r4, #104]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 169


 9577 004a 9A68     		ldr	r2, [r3, #8]
 9578 004c D368     		ldr	r3, [r2, #12]
 9579 004e 43F00103 		orr	r3, r3, #1
 9580 0052 D360     		str	r3, [r2, #12]
 9581              	.L1910:
 9582 0054 2869     		ldr	r0, [r5, #16]
 9583 0056 0021     		movs	r1, #0
 9584 0058 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 9585 005c 226E     		ldr	r2, [r4, #96]
 9586 005e 264B     		ldr	r3, .L1927+4
 9587 0060 1168     		ldr	r1, [r2]
 9588 0062 2046     		mov	r0, r4
 9589 0064 0422     		movs	r2, #4
 9590 0066 FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 9591              	.L1925:
 9592 006a 0223     		movs	r3, #2
 9593 006c 84F83037 		strb	r3, [r4, #1840]
 9594              	.L1906:
 9595 0070 FFF7FEFF 		bl	millis
 9596 0074 D4F83437 		ldr	r3, [r4, #1844]
 9597 0078 D4F83827 		ldr	r2, [r4, #1848]
 9598 007c C01A     		subs	r0, r0, r3
 9599 007e 9042     		cmp	r0, r2
 9600 0080 C8D3     		bcc	.L1904
 9601 0082 0221     		movs	r1, #2
 9602 0084 2046     		mov	r0, r4
 9603 0086 FFF7FEFF 		bl	_ZN6GCodes9StopPrintE15StopPrintReason
 9604 008a 1A4B     		ldr	r3, .L1927
 9605 008c 0121     		movs	r1, #1
 9606 008e 1869     		ldr	r0, [r3, #16]
 9607 0090 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 9608 0094 D4F83837 		ldr	r3, [r4, #1848]
 9609 0098 1849     		ldr	r1, .L1927+8
 9610 009a 194A     		ldr	r2, .L1927+12
 9611 009c 6068     		ldr	r0, [r4, #4]
 9612 009e A1FB0313 		umull	r1, r3, r1, r3
 9613 00a2 9B09     		lsrs	r3, r3, #6
 9614 00a4 40F2B511 		movw	r1, #437
 9615 00a8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9616 00ac 0323     		movs	r3, #3
 9617 00ae 84F83037 		strb	r3, [r4, #1840]
 9618 00b2 FFF7FEFF 		bl	millis
 9619 00b6 C4F83407 		str	r0, [r4, #1844]
 9620 00ba 38BD     		pop	{r3, r4, r5, pc}
 9621              	.L1909:
 9622 00bc 2046     		mov	r0, r4
 9623 00be FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
 9624 00c2 0028     		cmp	r0, #0
 9625 00c4 D1D1     		bne	.L1925
 9626 00c6 2046     		mov	r0, r4
 9627 00c8 FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 9628 00cc 0028     		cmp	r0, #0
 9629 00ce CCD1     		bne	.L1925
 9630 00d0 CEE7     		b	.L1906
 9631              	.L1907:
 9632 00d2 FFF7FEFF 		bl	millis
 9633 00d6 D4F83437 		ldr	r3, [r4, #1844]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 170


 9634 00da C01A     		subs	r0, r0, r3
 9635 00dc B0F57A7F 		cmp	r0, #1000
 9636 00e0 98D3     		bcc	.L1904
 9637 00e2 0021     		movs	r1, #0
 9638 00e4 6068     		ldr	r0, [r4, #4]
 9639 00e6 FFF7FEFF 		bl	_ZN8Platform11AtxPowerOffEb
 9640 00ea 0423     		movs	r3, #4
 9641 00ec 84F83037 		strb	r3, [r4, #1840]
 9642 00f0 38BD     		pop	{r3, r4, r5, pc}
 9643              	.L1928:
 9644 00f2 00BF     		.align	2
 9645              	.L1927:
 9646 00f4 00000000 		.word	reprap
 9647 00f8 00000000 		.word	.LC147
 9648 00fc D34D6210 		.word	274877907
 9649 0100 10000000 		.word	.LC148
 9650              		.size	_ZN6GCodes16CheckHeaterFaultEv, .-_ZN6GCodes16CheckHeaterFaultEv
 9651              		.section	.text._ZNK6GCodes14GetSpeedFactorEv,"ax",%progbits
 9652              		.align	1
 9653              		.p2align 2,,3
 9654              		.global	_ZNK6GCodes14GetSpeedFactorEv
 9655              		.syntax unified
 9656              		.thumb
 9657              		.thumb_func
 9658              		.fpu fpv4-sp-d16
 9659              		.type	_ZNK6GCodes14GetSpeedFactorEv, %function
 9660              	_ZNK6GCodes14GetSpeedFactorEv:
 9661              		@ args = 0, pretend = 0, frame = 0
 9662              		@ frame_needed = 0, uses_anonymous_args = 0
 9663              		@ link register save eliminated.
 9664 0000 00F25C50 		addw	r0, r0, #1372
 9665 0004 90ED000A 		vldr.32	s0, [r0]
 9666 0008 7047     		bx	lr
 9667              		.size	_ZNK6GCodes14GetSpeedFactorEv, .-_ZNK6GCodes14GetSpeedFactorEv
 9668 000a 00BF     		.section	.text._ZN6GCodes18GetExtrusionFactorEj,"ax",%progbits
 9669              		.align	1
 9670              		.p2align 2,,3
 9671              		.global	_ZN6GCodes18GetExtrusionFactorEj
 9672              		.syntax unified
 9673              		.thumb
 9674              		.thumb_func
 9675              		.fpu fpv4-sp-d16
 9676              		.type	_ZN6GCodes18GetExtrusionFactorEj, %function
 9677              	_ZN6GCodes18GetExtrusionFactorEj:
 9678              		@ args = 0, pretend = 0, frame = 0
 9679              		@ frame_needed = 0, uses_anonymous_args = 0
 9680              		@ link register save eliminated.
 9681 0000 D0F86433 		ldr	r3, [r0, #868]
 9682 0004 8B42     		cmp	r3, r1
 9683 0006 83BF     		ittte	hi
 9684 0008 01F5AC71 		addhi	r1, r1, #344
 9685 000c 00EB8100 		addhi	r0, r0, r1, lsl #2
 9686 0010 90ED000A 		vldrhi.32	s0, [r0]
 9687 0014 9FED010A 		vldrls.32	s0, .L1933
 9688 0018 7047     		bx	lr
 9689              	.L1934:
 9690 001a 00BF     		.align	2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 171


 9691              	.L1933:
 9692 001c 00000000 		.word	0
 9693              		.size	_ZN6GCodes18GetExtrusionFactorEj, .-_ZN6GCodes18GetExtrusionFactorEj
 9694              		.section	.text._ZN6GCodes18SetExtrusionFactorEjf,"ax",%progbits
 9695              		.align	1
 9696              		.p2align 2,,3
 9697              		.global	_ZN6GCodes18SetExtrusionFactorEjf
 9698              		.syntax unified
 9699              		.thumb
 9700              		.thumb_func
 9701              		.fpu fpv4-sp-d16
 9702              		.type	_ZN6GCodes18SetExtrusionFactorEjf, %function
 9703              	_ZN6GCodes18SetExtrusionFactorEjf:
 9704              		@ args = 0, pretend = 0, frame = 0
 9705              		@ frame_needed = 0, uses_anonymous_args = 0
 9706              		@ link register save eliminated.
 9707 0000 D0F86433 		ldr	r3, [r0, #868]
 9708 0004 8B42     		cmp	r3, r1
 9709 0006 18D9     		bls	.L1935
 9710 0008 B4EE400A 		vcmp.f32	s0, s0
 9711 000c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9712 0010 0DD6     		bvs	.L1937
 9713 0012 F0EE007A 		vmov.f32	s15, #2.0e+0
 9714 0016 B4EEE70A 		vcmpe.f32	s0, s15
 9715 001a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9716 001e 0DD5     		bpl	.L1941
 9717 0020 B5EEC00A 		vcmpe.f32	s0, #0
 9718 0024 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9719 0028 01DC     		bgt	.L1937
 9720 002a 9FED060A 		vldr.32	s0, .L1942
 9721              	.L1937:
 9722 002e 01F5AC71 		add	r1, r1, #344
 9723 0032 00EB8100 		add	r0, r0, r1, lsl #2
 9724 0036 80ED000A 		vstr.32	s0, [r0]
 9725              	.L1935:
 9726 003a 7047     		bx	lr
 9727              	.L1941:
 9728 003c B0EE670A 		vmov.f32	s0, s15
 9729 0040 F5E7     		b	.L1937
 9730              	.L1943:
 9731 0042 00BF     		.align	2
 9732              	.L1942:
 9733 0044 00000000 		.word	0
 9734              		.size	_ZN6GCodes18SetExtrusionFactorEjf, .-_ZN6GCodes18SetExtrusionFactorEjf
 9735              		.section	.text._ZNK6GCodes15ConvertLaserPwmEf,"ax",%progbits
 9736              		.align	1
 9737              		.p2align 2,,3
 9738              		.global	_ZNK6GCodes15ConvertLaserPwmEf
 9739              		.syntax unified
 9740              		.thumb
 9741              		.thumb_func
 9742              		.fpu fpv4-sp-d16
 9743              		.type	_ZNK6GCodes15ConvertLaserPwmEf, %function
 9744              	_ZNK6GCodes15ConvertLaserPwmEf:
 9745              		@ args = 0, pretend = 0, frame = 0
 9746              		@ frame_needed = 0, uses_anonymous_args = 0
 9747 0000 08B5     		push	{r3, lr}
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 172


 9748 0002 DFED087A 		vldr.32	s15, .L1946
 9749 0006 00F22C70 		addw	r0, r0, #1836
 9750 000a 90ED007A 		vldr.32	s14, [r0]
 9751 000e 20EE270A 		vmul.f32	s0, s0, s15
 9752 0012 80EE070A 		vdiv.f32	s0, s0, s14
 9753 0016 FFF7FEFF 		bl	lrintf
 9754 001a 80F31000 		usat	r0, #16, r0
 9755 001e 80B2     		uxth	r0, r0
 9756 0020 08BD     		pop	{r3, pc}
 9757              	.L1947:
 9758 0022 00BF     		.align	2
 9759              	.L1946:
 9760 0024 00FF7F47 		.word	1199570688
 9761              		.size	_ZNK6GCodes15ConvertLaserPwmEf, .-_ZNK6GCodes15ConvertLaserPwmEf
 9762              		.section	.text._ZNK6GCodes21GetLastPrintingHeightERf,"ax",%progbits
 9763              		.align	1
 9764              		.p2align 2,,3
 9765              		.global	_ZNK6GCodes21GetLastPrintingHeightERf
 9766              		.syntax unified
 9767              		.thumb
 9768              		.thumb_func
 9769              		.fpu fpv4-sp-d16
 9770              		.type	_ZNK6GCodes21GetLastPrintingHeightERf, %function
 9771              	_ZNK6GCodes21GetLastPrintingHeightERf:
 9772              		@ args = 0, pretend = 0, frame = 0
 9773              		@ frame_needed = 0, uses_anonymous_args = 0
 9774 0000 38B5     		push	{r3, r4, r5, lr}
 9775 0002 0B4B     		ldr	r3, .L1958
 9776 0004 1B6A     		ldr	r3, [r3, #32]
 9777 0006 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 9778 0008 0BB9     		cbnz	r3, .L1949
 9779              	.L1951:
 9780 000a 0020     		movs	r0, #0
 9781 000c 38BD     		pop	{r3, r4, r5, pc}
 9782              	.L1949:
 9783 000e 0446     		mov	r4, r0
 9784 0010 0D46     		mov	r5, r1
 9785 0012 FFF7FEFF 		bl	_ZNK6GCodes16IsReallyPrintingEv.part.54
 9786 0016 0028     		cmp	r0, #0
 9787 0018 F7D0     		beq	.L1951
 9788 001a D4ED3A7A 		vldr.32	s15, [r4, #232]
 9789 001e F5EEC07A 		vcmpe.f32	s15, #0
 9790 0022 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 9791 0026 F0DD     		ble	.L1951
 9792 0028 C5ED007A 		vstr.32	s15, [r5]
 9793 002c 38BD     		pop	{r3, r4, r5, pc}
 9794              	.L1959:
 9795 002e 00BF     		.align	2
 9796              	.L1958:
 9797 0030 00000000 		.word	reprap
 9798              		.size	_ZNK6GCodes21GetLastPrintingHeightERf, .-_ZNK6GCodes21GetLastPrintingHeightERf
 9799              		.section	.text._ZN6StringILj50EE6printfEPKcz,"axG",%progbits,_ZN6StringILj50EE6printfEPKcz,comdat
 9800              		.align	1
 9801              		.p2align 2,,3
 9802              		.weak	_ZN6StringILj50EE6printfEPKcz
 9803              		.syntax unified
 9804              		.thumb
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 173


 9805              		.thumb_func
 9806              		.fpu fpv4-sp-d16
 9807              		.type	_ZN6StringILj50EE6printfEPKcz, %function
 9808              	_ZN6StringILj50EE6printfEPKcz:
 9809              		@ args = 4, pretend = 12, frame = 16
 9810              		@ frame_needed = 0, uses_anonymous_args = 1
 9811 0000 0EB4     		push	{r1, r2, r3}
 9812 0002 00B5     		push	{lr}
 9813 0004 84B0     		sub	sp, sp, #16
 9814 0006 05AA     		add	r2, sp, #20
 9815 0008 0290     		str	r0, [sp, #8]
 9816 000a 52F8041B 		ldr	r1, [r2], #4
 9817 000e 0192     		str	r2, [sp, #4]
 9818 0010 3323     		movs	r3, #51
 9819 0012 02A8     		add	r0, sp, #8
 9820 0014 0393     		str	r3, [sp, #12]
 9821 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 9822 001a 04B0     		add	sp, sp, #16
 9823              		@ sp needed
 9824 001c 5DF804EB 		ldr	lr, [sp], #4
 9825 0020 03B0     		add	sp, sp, #12
 9826 0022 7047     		bx	lr
 9827              		.size	_ZN6StringILj50EE6printfEPKcz, .-_ZN6StringILj50EE6printfEPKcz
 9828              		.section	.text._ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef,"ax",%progbits
 9829              		.align	1
 9830              		.p2align 2,,3
 9831              		.global	_ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef
 9832              		.syntax unified
 9833              		.thumb
 9834              		.thumb_func
 9835              		.fpu fpv4-sp-d16
 9836              		.type	_ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef, %function
 9837              	_ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef:
 9838              		@ args = 0, pretend = 0, frame = 64
 9839              		@ frame_needed = 0, uses_anonymous_args = 0
 9840 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 9841 0004 2DED028B 		vpush.64	{d8}
 9842 0008 0446     		mov	r4, r0
 9843 000a 8868     		ldr	r0, [r1, #8]
 9844 000c 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 9845 000e 013B     		subs	r3, r3, #1
 9846 0010 95B0     		sub	sp, sp, #84
 9847 0012 0D46     		mov	r5, r1
 9848 0014 1646     		mov	r6, r2
 9849 0016 302B     		cmp	r3, #48
 9850 0018 00F2DA84 		bhi	.L1963
 9851 001c DFE813F0 		tbh	[pc, r3, lsl #1]
 9852              	.L1965:
 9853 0020 F503     		.2byte	(.L1964-.L1965)/2
 9854 0022 E503     		.2byte	(.L1966-.L1965)/2
 9855 0024 4204     		.2byte	(.L1967-.L1965)/2
 9856 0026 E802     		.2byte	(.L1968-.L1965)/2
 9857 0028 3204     		.2byte	(.L1969-.L1965)/2
 9858 002a 2403     		.2byte	(.L1970-.L1965)/2
 9859 002c 3602     		.2byte	(.L1971-.L1965)/2
 9860 002e 2E02     		.2byte	(.L1972-.L1965)/2
 9861 0030 C602     		.2byte	(.L1973-.L1965)/2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 174


 9862 0032 2403     		.2byte	(.L1970-.L1965)/2
 9863 0034 3602     		.2byte	(.L1971-.L1965)/2
 9864 0036 2E02     		.2byte	(.L1972-.L1965)/2
 9865 0038 C602     		.2byte	(.L1973-.L1965)/2
 9866 003a 8A02     		.2byte	(.L1974-.L1965)/2
 9867 003c 7302     		.2byte	(.L1975-.L1965)/2
 9868 003e 6B02     		.2byte	(.L1976-.L1965)/2
 9869 0040 9E03     		.2byte	(.L1977-.L1965)/2
 9870 0042 6B02     		.2byte	(.L1976-.L1965)/2
 9871 0044 CE02     		.2byte	(.L1978-.L1965)/2
 9872 0046 CE02     		.2byte	(.L1978-.L1965)/2
 9873 0048 0203     		.2byte	(.L1979-.L1965)/2
 9874 004a F601     		.2byte	(.L1980-.L1965)/2
 9875 004c B904     		.2byte	(.L1981-.L1965)/2
 9876 004e B503     		.2byte	(.L1982-.L1965)/2
 9877 0050 B503     		.2byte	(.L1982-.L1965)/2
 9878 0052 8404     		.2byte	(.L1983-.L1965)/2
 9879 0054 D602     		.2byte	(.L1984-.L1965)/2
 9880 0056 B004     		.2byte	(.L1985-.L1965)/2
 9881 0058 0A03     		.2byte	(.L1986-.L1965)/2
 9882 005a 3A04     		.2byte	(.L1987-.L1965)/2
 9883 005c 0102     		.2byte	(.L1988-.L1965)/2
 9884 005e A704     		.2byte	(.L1989-.L1965)/2
 9885 0060 8503     		.2byte	(.L1990-.L1965)/2
 9886 0062 4B04     		.2byte	(.L1991-.L1965)/2
 9887 0064 3E02     		.2byte	(.L1992-.L1965)/2
 9888 0066 2A04     		.2byte	(.L1993-.L1965)/2
 9889 0068 F002     		.2byte	(.L1994-.L1965)/2
 9890 006a 1B04     		.2byte	(.L1995-.L1965)/2
 9891 006c DC01     		.2byte	(.L1996-.L1965)/2
 9892 006e CE01     		.2byte	(.L1997-.L1965)/2
 9893 0070 A101     		.2byte	(.L1998-.L1965)/2
 9894 0072 9901     		.2byte	(.L1999-.L1965)/2
 9895 0074 9101     		.2byte	(.L2000-.L1965)/2
 9896 0076 D800     		.2byte	(.L2001-.L1965)/2
 9897 0078 7200     		.2byte	(.L2002-.L1965)/2
 9898 007a 1301     		.2byte	(.L2003-.L1965)/2
 9899 007c 5E00     		.2byte	(.L2004-.L1965)/2
 9900 007e 4D00     		.2byte	(.L2005-.L1965)/2
 9901 0080 3100     		.2byte	(.L2006-.L1965)/2
 9902              		.p2align 1
 9903              	.L2006:
 9904 0082 91F82830 		ldrb	r3, [r1, #40]	@ zero_extendqisi2
 9905 0086 083B     		subs	r3, r3, #8
 9906 0088 012B     		cmp	r3, #1
 9907 008a 40F2B784 		bls	.L2187
 9908 008e 0121     		movs	r1, #1
 9909 0090 2046     		mov	r0, r4
 9910 0092 FFF7FEFF 		bl	_ZN6GCodes14SaveResumeInfoEb
 9911 0096 CD4A     		ldr	r2, .L2343
 9912 0098 6068     		ldr	r0, [r4, #4]
 9913 009a B521     		movs	r1, #181
 9914 009c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 9915 00a0 AB68     		ldr	r3, [r5, #8]
 9916 00a2 0022     		movs	r2, #0
 9917 00a4 1A75     		strb	r2, [r3, #20]
 9918 00a6 AA68     		ldr	r2, [r5, #8]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 175


 9919              	.L2013:
 9920 00a8 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 9921 00aa 002B     		cmp	r3, #0
 9922 00ac 00F07E84 		beq	.L2311
 9923              	.L1962:
 9924 00b0 15B0     		add	sp, sp, #84
 9925              		@ sp needed
 9926 00b2 BDEC028B 		vldm	sp!, {d8}
 9927 00b6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 9928              	.L2005:
 9929 00ba C54F     		ldr	r7, .L2343+4
 9930 00bc D7F8EC30 		ldr	r3, [r7, #236]
 9931 00c0 43B1     		cbz	r3, .L2185
 9932 00c2 D7F80821 		ldr	r2, [r7, #264]
 9933 00c6 5868     		ldr	r0, [r3, #4]
 9934 00c8 1307     		lsls	r3, r2, #28
 9935 00ca 01F17E81 		bmi	.L2312
 9936              	.L2186:
 9937 00ce FFF7FEFF 		bl	_ZN8Filament6UnloadEv
 9938 00d2 A868     		ldr	r0, [r5, #8]
 9939              	.L2185:
 9940 00d4 0023     		movs	r3, #0
 9941 00d6 0375     		strb	r3, [r0, #20]
 9942 00d8 AA68     		ldr	r2, [r5, #8]
 9943 00da E5E7     		b	.L2013
 9944              	.L2004:
 9945 00dc BC4F     		ldr	r7, .L2343+4
 9946 00de D7F8EC20 		ldr	r2, [r7, #236]
 9947 00e2 5AB1     		cbz	r2, .L2183
 9948 00e4 04F24978 		addw	r8, r4, #1865
 9949 00e8 5068     		ldr	r0, [r2, #4]
 9950 00ea 4146     		mov	r1, r8
 9951 00ec FFF7FEFF 		bl	_ZN8Filament4LoadEPKc
 9952 00f0 D7F80831 		ldr	r3, [r7, #264]
 9953 00f4 1A07     		lsls	r2, r3, #28
 9954 00f6 01F1BD81 		bmi	.L2184
 9955              	.L2308:
 9956 00fa A868     		ldr	r0, [r5, #8]
 9957              	.L2183:
 9958 00fc 0023     		movs	r3, #0
 9959 00fe 0375     		strb	r3, [r0, #20]
 9960 0100 AA68     		ldr	r2, [r5, #8]
 9961 0102 D1E7     		b	.L2013
 9962              	.L2002:
 9963 0104 D4F86071 		ldr	r7, [r4, #352]
 9964 0108 002F     		cmp	r7, #0
 9965 010a D1D1     		bne	.L1962
 9966 010c DFF8C082 		ldr	r8, .L2343+4
 9967 0110 4046     		mov	r0, r8
 9968 0112 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 9969 0116 8146     		mov	r9, r0
 9970 0118 4046     		mov	r0, r8
 9971 011a FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 9972 011e D8F80C20 		ldr	r2, [r8, #12]
 9973 0122 0090     		str	r0, [sp]
 9974 0124 4B46     		mov	r3, r9
 9975 0126 1046     		mov	r0, r2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 176


 9976 0128 04F1EC01 		add	r1, r4, #236
 9977 012c 3A46     		mov	r2, r7
 9978 012e 04F22C67 		addw	r7, r4, #1580
 9979 0132 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 9980 0136 97ED007A 		vldr.32	s14, [r7]
 9981 013a D4ED3D7A 		vldr.32	s15, [r4, #244]
 9982 013e D4F85C33 		ldr	r3, [r4, #860]
 9983 0142 77EE877A 		vadd.f32	s15, s15, s14
 9984 0146 0B2B     		cmp	r3, #11
 9985 0148 C4ED3D7A 		vstr.32	s15, [r4, #244]
 9986 014c 09D8     		bhi	.L2172
 9987 014e 3B33     		adds	r3, r3, #59
 9988 0150 0021     		movs	r1, #0
 9989 0152 04EB8303 		add	r3, r4, r3, lsl #2
 9990 0156 04F58E72 		add	r2, r4, #284
 9991              	.L2173:
 9992 015a 43F8041B 		str	r1, [r3], #4	@ float
 9993 015e 9A42     		cmp	r2, r3
 9994 0160 FBD1     		bne	.L2173
 9995              	.L2172:
 9996 0162 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 9997 0166 6168     		ldr	r1, [r4, #4]
 9998 0168 0022     		movs	r2, #0
 9999 016a 03F0CF03 		and	r3, r3, #207
 10000 016e 62F34103 		bfi	r3, r2, #1, #1
 10001 0172 84F85F31 		strb	r3, [r4, #351]
 10002 0176 0123     		movs	r3, #1
 10003 0178 C4F85031 		str	r3, [r4, #336]
 10004 017c 4FF0FF30 		mov	r0, #-1
 10005 0180 0223     		movs	r3, #2
 10006 0182 84F85E21 		strb	r2, [r4, #350]
 10007 0186 C4F85431 		str	r3, [r4, #340]
 10008 018a C4F85821 		str	r2, [r4, #344]
 10009 018e C4F84801 		str	r0, [r4, #328]
 10010 0192 D1F88421 		ldr	r2, [r1, #388]	@ float
 10011 0196 A36C     		ldr	r3, [r4, #72]
 10012 0198 C4F84021 		str	r2, [r4, #320]	@ float
 10013 019c 1B68     		ldr	r3, [r3]
 10014 019e AB42     		cmp	r3, r5
 10015 01a0 01F04983 		beq	.L2313
 10016              	.L2174:
 10017 01a4 94F85F21 		ldrb	r2, [r4, #351]	@ zero_extendqisi2
 10018 01a8 C4F84801 		str	r0, [r4, #328]
 10019 01ac 6FF38202 		bfc	r2, #2, #1
 10020 01b0 0123     		movs	r3, #1
 10021 01b2 84ED397A 		vstr.32	s14, [r4, #228]
 10022 01b6 84F85F21 		strb	r2, [r4, #351]
 10023 01ba C4F86431 		str	r3, [r4, #356]
 10024              		.syntax unified
 10025              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 10026 01be BFF35F8F 		dmb
 10027              	@ 0 "" 2
 10028              		.thumb
 10029              		.syntax unified
 10030 01c2 C4F86031 		str	r3, [r4, #352]
 10031 01c6 AB68     		ldr	r3, [r5, #8]
 10032 01c8 0022     		movs	r2, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 177


 10033 01ca 1A75     		strb	r2, [r3, #20]
 10034 01cc AA68     		ldr	r2, [r5, #8]
 10035 01ce 6BE7     		b	.L2013
 10036              	.L2001:
 10037 01d0 D4F8E435 		ldr	r3, [r4, #1508]
 10038 01d4 0233     		adds	r3, r3, #2
 10039 01d6 40F0EC85 		bne	.L2167
 10040 01da 7D4B     		ldr	r3, .L2343+4
 10041 01dc D3F8EC00 		ldr	r0, [r3, #236]
 10042 01e0 0028     		cmp	r0, #0
 10043 01e2 01F08A81 		beq	.L2314
 10044 01e6 04F5BE63 		add	r3, r4, #1520
 10045 01ea 93ED000A 		vldr.32	s0, [r3]
 10046 01ee 0122     		movs	r2, #1
 10047 01f0 0221     		movs	r1, #2
 10048 01f2 B1EE400A 		vneg.f32	s0, s0
 10049 01f6 FFF7FEFF 		bl	_ZN4Tool9SetOffsetEjfb
 10050 01fa 04F1C002 		add	r2, r4, #192
 10051 01fe 04F1EC01 		add	r1, r4, #236
 10052 0202 2046     		mov	r0, r4
 10053 0204 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 10054              	.L2310:
 10055 0208 0027     		movs	r7, #0
 10056              	.L2123:
 10057 020a AB68     		ldr	r3, [r5, #8]
 10058 020c 0022     		movs	r2, #0
 10059 020e 1A75     		strb	r2, [r3, #20]
 10060              	.L2309:
 10061 0210 AB68     		ldr	r3, [r5, #8]
 10062 0212 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 10063 0214 002B     		cmp	r3, #0
 10064 0216 7FF44BAF 		bne	.L1962
 10065 021a 2B71     		strb	r3, [r5, #4]
 10066 021c 2946     		mov	r1, r5
 10067 021e 2046     		mov	r0, r4
 10068 0220 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 10069 0224 002F     		cmp	r7, #0
 10070 0226 00F0C683 		beq	.L2191
 10071              	.L2188:
 10072 022a AB68     		ldr	r3, [r5, #8]
 10073 022c 0022     		movs	r2, #0
 10074 022e 1A61     		str	r2, [r3, #16]
 10075 0230 0222     		movs	r2, #2
 10076              	.L2189:
 10077 0232 3368     		ldr	r3, [r6]
 10078 0234 2946     		mov	r1, r5
 10079 0236 2046     		mov	r0, r4
 10080 0238 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc
 10081 023c 15B0     		add	sp, sp, #84
 10082              		@ sp needed
 10083 023e BDEC028B 		vldm	sp!, {d8}
 10084 0242 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 10085              	.L2003:
 10086 0246 D4F86081 		ldr	r8, [r4, #352]
 10087 024a B8F1000F 		cmp	r8, #0
 10088 024e 7FF42FAF 		bne	.L1962
 10089 0252 DFF87C91 		ldr	r9, .L2343+4
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 178


 10090 0256 D9F8EC70 		ldr	r7, [r9, #236]
 10091 025a 002F     		cmp	r7, #0
 10092 025c 6DD0     		beq	.L2175
 10093 025e 4846     		mov	r0, r9
 10094 0260 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 10095 0264 8246     		mov	r10, r0
 10096 0266 4846     		mov	r0, r9
 10097 0268 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentYAxesEv
 10098 026c D9F80C20 		ldr	r2, [r9, #12]
 10099 0270 0090     		str	r0, [sp]
 10100 0272 5346     		mov	r3, r10
 10101 0274 1046     		mov	r0, r2
 10102 0276 04F1EC01 		add	r1, r4, #236
 10103 027a 4246     		mov	r2, r8
 10104 027c FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhmm
 10105 0280 D4F85C03 		ldr	r0, [r4, #860]
 10106 0284 0B28     		cmp	r0, #11
 10107 0286 0AD8     		bhi	.L2179
 10108 0288 00F13B03 		add	r3, r0, #59
 10109 028c 0021     		movs	r1, #0
 10110 028e 04EB8303 		add	r3, r4, r3, lsl #2
 10111 0292 04F58E72 		add	r2, r4, #284
 10112              	.L2180:
 10113 0296 43F8041B 		str	r1, [r3], #4	@ float
 10114 029a 9A42     		cmp	r2, r3
 10115 029c FBD1     		bne	.L2180
 10116              	.L2179:
 10117 029e D7F89430 		ldr	r3, [r7, #148]
 10118 02a2 D3B1     		cbz	r3, .L2178
 10119 02a4 04F21C62 		addw	r2, r4, #1564
 10120 02a8 04F5C463 		add	r3, r4, #1568
 10121 02ac D2ED007A 		vldr.32	s15, [r2]
 10122 02b0 93ED007A 		vldr.32	s14, [r3]
 10123 02b4 77EE877A 		vadd.f32	s15, s15, s14
 10124 02b8 07F1AF02 		add	r2, r7, #175
 10125              	.L2181:
 10126 02bc 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 10127 02be 0344     		add	r3, r3, r0
 10128 02c0 04EB8303 		add	r3, r4, r3, lsl #2
 10129 02c4 C3ED3B7A 		vstr.32	s15, [r3, #236]
 10130 02c8 D7F89410 		ldr	r1, [r7, #148]
 10131 02cc A2F1AE03 		sub	r3, r2, #174
 10132 02d0 DB1B     		subs	r3, r3, r7
 10133 02d2 9942     		cmp	r1, r3
 10134 02d4 02F10102 		add	r2, r2, #1
 10135 02d8 F0D8     		bhi	.L2181
 10136              	.L2178:
 10137 02da 0023     		movs	r3, #0
 10138 02dc 0222     		movs	r2, #2
 10139 02de 84F85E31 		strb	r3, [r4, #350]
 10140 02e2 0121     		movs	r1, #1
 10141 02e4 C4F85831 		str	r3, [r4, #344]
 10142 02e8 C4F85421 		str	r2, [r4, #340]
 10143 02ec 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 10144 02f0 C4F85011 		str	r1, [r4, #336]
 10145 02f4 4FF0FF30 		mov	r0, #-1
 10146 02f8 04F5C562 		add	r2, r4, #1576
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 179


 10147 02fc C4F84801 		str	r0, [r4, #328]
 10148 0300 1268     		ldr	r2, [r2]	@ float
 10149 0302 C4F84021 		str	r2, [r4, #320]	@ float
 10150 0306 03F0CD03 		and	r3, r3, #205
 10151 030a 0B43     		orrs	r3, r3, r1
 10152 030c A26C     		ldr	r2, [r4, #72]
 10153 030e 84F85F31 		strb	r3, [r4, #351]
 10154 0312 1368     		ldr	r3, [r2]
 10155 0314 AB42     		cmp	r3, r5
 10156 0316 01F06483 		beq	.L2315
 10157              	.L2182:
 10158 031a 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 10159 031e C4F84801 		str	r0, [r4, #328]
 10160 0322 43F00403 		orr	r3, r3, #4
 10161 0326 0122     		movs	r2, #1
 10162 0328 84F85F31 		strb	r3, [r4, #351]
 10163 032c C4F86421 		str	r2, [r4, #356]
 10164              		.syntax unified
 10165              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 10166 0330 BFF35F8F 		dmb
 10167              	@ 0 "" 2
 10168              		.thumb
 10169              		.syntax unified
 10170 0334 C4F86021 		str	r2, [r4, #352]
 10171 0338 A868     		ldr	r0, [r5, #8]
 10172              	.L2175:
 10173 033a 0023     		movs	r3, #0
 10174 033c 0375     		strb	r3, [r0, #20]
 10175 033e AA68     		ldr	r2, [r5, #8]
 10176 0340 B2E6     		b	.L2013
 10177              	.L2000:
 10178 0342 2046     		mov	r0, r4
 10179 0344 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10180 0348 0028     		cmp	r0, #0
 10181 034a 40F01F85 		bne	.L2164
 10182 034e AA68     		ldr	r2, [r5, #8]
 10183 0350 AAE6     		b	.L2013
 10184              	.L1999:
 10185 0352 2046     		mov	r0, r4
 10186 0354 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10187 0358 0028     		cmp	r0, #0
 10188 035a 40F03786 		bne	.L2149
 10189 035e AA68     		ldr	r2, [r5, #8]
 10190 0360 A2E6     		b	.L2013
 10191              	.L1998:
 10192 0362 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 10193 0366 6068     		ldr	r0, [r4, #4]
 10194 0368 0022     		movs	r2, #0
 10195 036a 03F0CF03 		and	r3, r3, #207
 10196 036e 62F34103 		bfi	r3, r2, #1, #1
 10197 0372 84F85F31 		strb	r3, [r4, #351]
 10198 0376 4FF0FF33 		mov	r3, #-1
 10199 037a 0127     		movs	r7, #1
 10200 037c C4F84831 		str	r3, [r4, #328]
 10201 0380 0223     		movs	r3, #2
 10202 0382 84F85E21 		strb	r2, [r4, #350]
 10203 0386 C4F85821 		str	r2, [r4, #344]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 180


 10204 038a C4F85431 		str	r3, [r4, #340]
 10205 038e C4F85071 		str	r7, [r4, #336]
 10206 0392 FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 10207 0396 6068     		ldr	r0, [r4, #4]
 10208 0398 84ED3D0A 		vstr.32	s0, [r4, #244]
 10209 039c FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 10210 03a0 C4F86471 		str	r7, [r4, #356]
 10211 03a4 84ED500A 		vstr.32	s0, [r4, #320]
 10212              		.syntax unified
 10213              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 10214 03a8 BFF35F8F 		dmb
 10215              	@ 0 "" 2
 10216              		.thumb
 10217              		.syntax unified
 10218 03ac C4F86071 		str	r7, [r4, #352]
 10219 03b0 AA68     		ldr	r2, [r5, #8]
 10220 03b2 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10221 03b4 3B44     		add	r3, r3, r7
 10222 03b6 1375     		strb	r3, [r2, #20]
 10223 03b8 AA68     		ldr	r2, [r5, #8]
 10224 03ba 75E6     		b	.L2013
 10225              	.L1997:
 10226 03bc 2046     		mov	r0, r4
 10227 03be FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10228 03c2 0028     		cmp	r0, #0
 10229 03c4 40F08186 		bne	.L2140
 10230 03c8 AA68     		ldr	r2, [r5, #8]
 10231 03ca 6DE6     		b	.L2013
 10232              	.L2344:
 10233              		.align	2
 10234              	.L2343:
 10235 03cc 14030000 		.word	.LC176
 10236 03d0 00000000 		.word	reprap
 10237 03d4 00007A44 		.word	1148846080
 10238              	.L1996:
 10239 03d8 FFF7FEFF 		bl	millis
 10240 03dc D4F80036 		ldr	r3, [r4, #1536]
 10241 03e0 6268     		ldr	r2, [r4, #4]
 10242 03e2 C71A     		subs	r7, r0, r3
 10243 03e4 92F8CC10 		ldrb	r1, [r2, #204]	@ zero_extendqisi2
 10244 03e8 1046     		mov	r0, r2
 10245 03ea FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 10246 03ee 1FED077A 		vldr.32	s14, .L2343+8
 10247 03f2 D0ED097A 		vldr.32	s15, [r0, #36]
 10248 03f6 67EE877A 		vmul.f32	s15, s15, s14
 10249 03fa FCEEE77A 		vcvt.u32.f32	s15, s15
 10250 03fe 17EE903A 		vmov	r3, s15	@ int
 10251 0402 9F42     		cmp	r7, r3
 10252 0404 80F06E84 		bcs	.L2132
 10253 0408 AA68     		ldr	r2, [r5, #8]
 10254 040a 4DE6     		b	.L2013
 10255              	.L1980:
 10256 040c 3246     		mov	r2, r6
 10257 040e 2046     		mov	r0, r4
 10258 0410 FFF7FEFF 		bl	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef
 10259 0414 FFF7FEFF 		bl	_ZN15FirmwareUpdater7IsReadyEv
 10260 0418 0028     		cmp	r0, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 181


 10261 041a 40F00383 		bne	.L2069
 10262 041e AA68     		ldr	r2, [r5, #8]
 10263 0420 42E6     		b	.L2013
 10264              	.L1988:
 10265 0422 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 10266 0426 6068     		ldr	r0, [r4, #4]
 10267 0428 0022     		movs	r2, #0
 10268 042a 03F0CF03 		and	r3, r3, #207
 10269 042e 62F34103 		bfi	r3, r2, #1, #1
 10270 0432 84F85F31 		strb	r3, [r4, #351]
 10271 0436 4FF0FF33 		mov	r3, #-1
 10272 043a 0127     		movs	r7, #1
 10273 043c C4F84831 		str	r3, [r4, #328]
 10274 0440 0223     		movs	r3, #2
 10275 0442 84F85E21 		strb	r2, [r4, #350]
 10276 0446 C4F85821 		str	r2, [r4, #344]
 10277 044a C4F85431 		str	r3, [r4, #340]
 10278 044e C4F85071 		str	r7, [r4, #336]
 10279 0452 FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 10280 0456 6068     		ldr	r0, [r4, #4]
 10281 0458 84ED3D0A 		vstr.32	s0, [r4, #244]
 10282 045c FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 10283 0460 C4F86471 		str	r7, [r4, #356]
 10284 0464 84ED500A 		vstr.32	s0, [r4, #320]
 10285              		.syntax unified
 10286              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 10287 0468 BFF35F8F 		dmb
 10288              	@ 0 "" 2
 10289              		.thumb
 10290              		.syntax unified
 10291 046c C4F86071 		str	r7, [r4, #352]
 10292 0470 AA68     		ldr	r2, [r5, #8]
 10293 0472 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10294 0474 3B44     		add	r3, r3, r7
 10295 0476 1375     		strb	r3, [r2, #20]
 10296 0478 AA68     		ldr	r2, [r5, #8]
 10297 047a 15E6     		b	.L2013
 10298              	.L1972:
 10299 047c 2046     		mov	r0, r4
 10300 047e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10301 0482 0028     		cmp	r0, #0
 10302 0484 40F00286 		bne	.L2042
 10303 0488 AA68     		ldr	r2, [r5, #8]
 10304 048a 0DE6     		b	.L2013
 10305              	.L1971:
 10306 048c 2046     		mov	r0, r4
 10307 048e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10308 0492 0028     		cmp	r0, #0
 10309 0494 40F04A83 		bne	.L2039
 10310 0498 AA68     		ldr	r2, [r5, #8]
 10311 049a 05E6     		b	.L2013
 10312              	.L1992:
 10313 049c 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 10314 04a0 6068     		ldr	r0, [r4, #4]
 10315 04a2 0022     		movs	r2, #0
 10316 04a4 03F0CF03 		and	r3, r3, #207
 10317 04a8 62F34103 		bfi	r3, r2, #1, #1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 182


 10318 04ac 84F85F31 		strb	r3, [r4, #351]
 10319 04b0 4FF0FF33 		mov	r3, #-1
 10320 04b4 0127     		movs	r7, #1
 10321 04b6 C4F84831 		str	r3, [r4, #328]
 10322 04ba 0223     		movs	r3, #2
 10323 04bc 84F85E21 		strb	r2, [r4, #350]
 10324 04c0 C4F85821 		str	r2, [r4, #344]
 10325 04c4 C4F85431 		str	r3, [r4, #340]
 10326 04c8 C4F85071 		str	r7, [r4, #336]
 10327 04cc FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 10328 04d0 6068     		ldr	r0, [r4, #4]
 10329 04d2 84ED3D0A 		vstr.32	s0, [r4, #244]
 10330 04d6 FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 10331 04da C4F86471 		str	r7, [r4, #356]
 10332 04de 84ED500A 		vstr.32	s0, [r4, #320]
 10333              		.syntax unified
 10334              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 10335 04e2 BFF35F8F 		dmb
 10336              	@ 0 "" 2
 10337              		.thumb
 10338              		.syntax unified
 10339 04e6 C4F86071 		str	r7, [r4, #352]
 10340 04ea AA68     		ldr	r2, [r5, #8]
 10341 04ec 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10342 04ee 3B44     		add	r3, r3, r7
 10343 04f0 1375     		strb	r3, [r2, #20]
 10344 04f2 AA68     		ldr	r2, [r5, #8]
 10345 04f4 D8E5     		b	.L2013
 10346              	.L1976:
 10347 04f6 2046     		mov	r0, r4
 10348 04f8 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10349 04fc 0028     		cmp	r0, #0
 10350 04fe 40F06383 		bne	.L2055
 10351 0502 AA68     		ldr	r2, [r5, #8]
 10352 0504 D0E5     		b	.L2013
 10353              	.L1975:
 10354 0506 2046     		mov	r0, r4
 10355 0508 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10356 050c AA68     		ldr	r2, [r5, #8]
 10357 050e 0028     		cmp	r0, #0
 10358 0510 3FF4CAAD 		beq	.L2013
 10359 0514 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10360 0516 0133     		adds	r3, r3, #1
 10361 0518 1375     		strb	r3, [r2, #20]
 10362 051a D4F86023 		ldr	r2, [r4, #864]
 10363 051e D4F82C15 		ldr	r1, [r4, #1324]
 10364 0522 0123     		movs	r3, #1
 10365 0524 03FA02F2 		lsl	r2, r3, r2
 10366 0528 013A     		subs	r2, r2, #1
 10367 052a 8A43     		bics	r2, r2, r1
 10368 052c 01F0C780 		beq	.L2051
 10369 0530 AA68     		ldr	r2, [r5, #8]
 10370 0532 B9E5     		b	.L2013
 10371              	.L1974:
 10372 0534 94F84637 		ldrb	r3, [r4, #1862]	@ zero_extendqisi2
 10373 0538 002B     		cmp	r3, #0
 10374 053a 40F05582 		bne	.L2047
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 183


 10375 053e 94F81836 		ldrb	r3, [r4, #1560]	@ zero_extendqisi2
 10376 0542 002B     		cmp	r3, #0
 10377 0544 40F05082 		bne	.L2047
 10378 0548 C74F     		ldr	r7, .L2345
 10379 054a D7F8EC90 		ldr	r9, [r7, #236]
 10380 054e B9F1000F 		cmp	r9, #0
 10381 0552 00F04982 		beq	.L2047
 10382 0556 D9F89830 		ldr	r3, [r9, #152]
 10383 055a 002B     		cmp	r3, #0
 10384 055c 00F04482 		beq	.L2047
 10385 0560 90F818B0 		ldrb	fp, [r0, #24]	@ zero_extendqisi2
 10386 0564 6FF0B80A 		mvn	r10, #184
 10387 0568 CBF3C00B 		ubfx	fp, fp, #3, #1
 10388 056c AAEB090A 		sub	r10, r10, r9
 10389 0570 09F1B908 		add	r8, r9, #185
 10390 0574 04E0     		b	.L2049
 10391              	.L2316:
 10392 0576 D9F89820 		ldr	r2, [r9, #152]
 10393 057a 9A42     		cmp	r2, r3
 10394 057c 40F23482 		bls	.L2047
 10395              	.L2049:
 10396 0580 18F9011B 		ldrsb	r1, [r8], #1
 10397 0584 3869     		ldr	r0, [r7, #16]
 10398 0586 B7EE000A 		vmov.f32	s0, #1.0e+0
 10399 058a 5A46     		mov	r2, fp
 10400 058c FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEabf
 10401 0590 0AEB0803 		add	r3, r10, r8
 10402 0594 0028     		cmp	r0, #0
 10403 0596 EED1     		bne	.L2316
 10404 0598 3246     		mov	r2, r6
 10405 059a 2946     		mov	r1, r5
 10406 059c 2046     		mov	r0, r4
 10407 059e FFF7FEFF 		bl	_ZNK6GCodes14CheckReportDueER11GCodeBufferRK9StringRef
 10408 05a2 0123     		movs	r3, #1
 10409 05a4 84F84537 		strb	r3, [r4, #1861]
 10410 05a8 AA68     		ldr	r2, [r5, #8]
 10411 05aa 7DE5     		b	.L2013
 10412              	.L1973:
 10413 05ac 2046     		mov	r0, r4
 10414 05ae FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10415 05b2 0028     		cmp	r0, #0
 10416 05b4 40F0A682 		bne	.L2045
 10417 05b8 AA68     		ldr	r2, [r5, #8]
 10418 05ba 75E5     		b	.L2013
 10419              	.L1978:
 10420 05bc 2046     		mov	r0, r4
 10421 05be FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10422 05c2 0028     		cmp	r0, #0
 10423 05c4 40F03483 		bne	.L2059
 10424 05c8 AA68     		ldr	r2, [r5, #8]
 10425 05ca 6DE5     		b	.L2013
 10426              	.L1984:
 10427 05cc 2046     		mov	r0, r4
 10428 05ce FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10429 05d2 AA68     		ldr	r2, [r5, #8]
 10430 05d4 0028     		cmp	r0, #0
 10431 05d6 3FF467AD 		beq	.L2013
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 184


 10432 05da 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10433 05dc 0133     		adds	r3, r3, #1
 10434 05de 1375     		strb	r3, [r2, #20]
 10435 05e0 6368     		ldr	r3, [r4, #4]
 10436 05e2 93F8CC30 		ldrb	r3, [r3, #204]	@ zero_extendqisi2
 10437 05e6 092B     		cmp	r3, #9
 10438 05e8 01F05280 		beq	.L2085
 10439 05ec AA68     		ldr	r2, [r5, #8]
 10440 05ee 5BE5     		b	.L2013
 10441              	.L1968:
 10442 05f0 D4F82815 		ldr	r1, [r4, #1320]
 10443 05f4 0029     		cmp	r1, #0
 10444 05f6 40F0EE83 		bne	.L2024
 10445 05fa 0175     		strb	r1, [r0, #20]
 10446 05fc AA68     		ldr	r2, [r5, #8]
 10447 05fe 53E5     		b	.L2013
 10448              	.L1994:
 10449 0600 2046     		mov	r0, r4
 10450 0602 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10451 0606 AA68     		ldr	r2, [r5, #8]
 10452 0608 0028     		cmp	r0, #0
 10453 060a 3FF44DAD 		beq	.L2013
 10454 060e 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10455 0610 0133     		adds	r3, r3, #1
 10456 0612 1375     		strb	r3, [r2, #20]
 10457 0614 6368     		ldr	r3, [r4, #4]
 10458 0616 93F8CC30 		ldrb	r3, [r3, #204]	@ zero_extendqisi2
 10459 061a 092B     		cmp	r3, #9
 10460 061c 01F02E80 		beq	.L2127
 10461 0620 AA68     		ldr	r2, [r5, #8]
 10462 0622 41E5     		b	.L2013
 10463              	.L1979:
 10464 0624 2046     		mov	r0, r4
 10465 0626 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10466 062a 0028     		cmp	r0, #0
 10467 062c 40F00F82 		bne	.L2067
 10468 0630 AA68     		ldr	r2, [r5, #8]
 10469 0632 39E5     		b	.L2013
 10470              	.L1986:
 10471 0634 FFF7FEFF 		bl	millis
 10472 0638 D4F80036 		ldr	r3, [r4, #1536]
 10473 063c 6268     		ldr	r2, [r4, #4]
 10474 063e C71A     		subs	r7, r0, r3
 10475 0640 92F8CC10 		ldrb	r1, [r2, #204]	@ zero_extendqisi2
 10476 0644 1046     		mov	r0, r2
 10477 0646 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 10478 064a 9FED887A 		vldr.32	s14, .L2345+4
 10479 064e D0ED097A 		vldr.32	s15, [r0, #36]
 10480 0652 67EE877A 		vmul.f32	s15, s15, s14
 10481 0656 FCEEE77A 		vcvt.u32.f32	s15, s15
 10482 065a 17EE903A 		vmov	r3, s15	@ int
 10483 065e 9F42     		cmp	r7, r3
 10484 0660 80F03982 		bcs	.L2090
 10485 0664 AA68     		ldr	r2, [r5, #8]
 10486 0666 1FE5     		b	.L2013
 10487              	.L1970:
 10488 0668 0123     		movs	r3, #1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 185


 10489 066a 84F8BA30 		strb	r3, [r4, #186]
 10490 066e 04F5A668 		add	r8, r4, #1328
 10491 0672 0027     		movs	r7, #0
 10492              	.L2037:
 10493 0674 3946     		mov	r1, r7
 10494 0676 6068     		ldr	r0, [r4, #4]
 10495 0678 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 10496 067c 0137     		adds	r7, r7, #1
 10497 067e 092F     		cmp	r7, #9
 10498 0680 A8EC010A 		vstmia.32	r8!, {s0}
 10499 0684 F6D1     		bne	.L2037
 10500 0686 04F25453 		addw	r3, r4, #1364
 10501 068a 04F1E001 		add	r1, r4, #224
 10502 068e 1A68     		ldr	r2, [r3]	@ float
 10503 0690 04F5AB63 		add	r3, r4, #1368
 10504 0694 1A60     		str	r2, [r3]	@ float
 10505 0696 D4F85823 		ldr	r2, [r4, #856]
 10506 069a 04F1C003 		add	r3, r4, #192
 10507              	.L2038:
 10508 069e D3F800C0 		ldr	ip, [r3]	@ unaligned
 10509 06a2 5F68     		ldr	r7, [r3, #4]	@ unaligned
 10510 06a4 9868     		ldr	r0, [r3, #8]	@ unaligned
 10511 06a6 D3F80CE0 		ldr	lr, [r3, #12]	@ unaligned
 10512 06aa C2F80CE0 		str	lr, [r2, #12]	@ unaligned
 10513 06ae 1033     		adds	r3, r3, #16
 10514 06b0 8B42     		cmp	r3, r1
 10515 06b2 C2F800C0 		str	ip, [r2]	@ unaligned
 10516 06b6 5760     		str	r7, [r2, #4]	@ unaligned
 10517 06b8 9060     		str	r0, [r2, #8]	@ unaligned
 10518 06ba 02F11002 		add	r2, r2, #16
 10519 06be EED1     		bne	.L2038
 10520 06c0 1B68     		ldr	r3, [r3]	@ unaligned
 10521 06c2 1360     		str	r3, [r2]	@ unaligned
 10522 06c4 AA68     		ldr	r2, [r5, #8]
 10523 06c6 D4F85833 		ldr	r3, [r4, #856]
 10524 06ca 5268     		ldr	r2, [r2, #4]	@ float
 10525 06cc 5A62     		str	r2, [r3, #36]	@ float
 10526 06ce AA68     		ldr	r2, [r5, #8]
 10527 06d0 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10528 06d2 0133     		adds	r3, r3, #1
 10529 06d4 1375     		strb	r3, [r2, #20]
 10530 06d6 AA68     		ldr	r2, [r5, #8]
 10531 06d8 537D     		ldrb	r3, [r2, #21]	@ zero_extendqisi2
 10532 06da DB07     		lsls	r3, r3, #31
 10533 06dc 7FF5E4AC 		bpl	.L2013
 10534 06e0 614B     		ldr	r3, .L2345
 10535 06e2 D3F8EC00 		ldr	r0, [r3, #236]
 10536 06e6 0028     		cmp	r0, #0
 10537 06e8 3FF4DEAC 		beq	.L2013
 10538 06ec D4F86073 		ldr	r7, [r4, #864]
 10539 06f0 D4F82C15 		ldr	r1, [r4, #1324]
 10540 06f4 0123     		movs	r3, #1
 10541 06f6 BB40     		lsls	r3, r3, r7
 10542 06f8 013B     		subs	r3, r3, #1
 10543 06fa 8B43     		bics	r3, r3, r1
 10544 06fc 7FF4D4AC 		bne	.L2013
 10545 0700 14AF     		add	r7, sp, #80
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 186


 10546 0702 4FF00008 		mov	r8, #0
 10547 0706 07F8348D 		strb	r8, [r7, #-52]!
 10548 070a 5949     		ldr	r1, .L2345+8
 10549 070c D0F89C20 		ldr	r2, [r0, #156]
 10550 0710 3846     		mov	r0, r7
 10551 0712 FFF7FEFF 		bl	_ZN6StringILj50EE6printfEPKcz
 10552 0716 3A46     		mov	r2, r7
 10553 0718 CDF80080 		str	r8, [sp]
 10554 071c 4346     		mov	r3, r8
 10555 071e 2946     		mov	r1, r5
 10556 0720 2046     		mov	r0, r4
 10557 0722 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 10558 0726 AA68     		ldr	r2, [r5, #8]
 10559 0728 BEE4     		b	.L2013
 10560              	.L1990:
 10561 072a D4F80C36 		ldr	r3, [r4, #1548]
 10562 072e 4E4A     		ldr	r2, .L2345
 10563 0730 D807     		lsls	r0, r3, #31
 10564 0732 D168     		ldr	r1, [r2, #12]
 10565 0734 D4F80826 		ldr	r2, [r4, #1544]
 10566 0738 40F1EB82 		bpl	.L2115
 10567 073c 002A     		cmp	r2, #0
 10568 073e 00F04683 		beq	.L2306
 10569 0742 013A     		subs	r2, r2, #1
 10570 0744 C4F80826 		str	r2, [r4, #1544]
 10571              	.L2117:
 10572 0748 D1F83411 		ldr	r1, [r1, #308]
 10573 074c AA68     		ldr	r2, [r5, #8]
 10574 074e 9942     		cmp	r1, r3
 10575 0750 00F07983 		beq	.L2317
 10576 0754 1A23     		movs	r3, #26
 10577 0756 1375     		strb	r3, [r2, #20]
 10578 0758 AA68     		ldr	r2, [r5, #8]
 10579 075a A5E4     		b	.L2013
 10580              	.L1977:
 10581 075c 2046     		mov	r0, r4
 10582 075e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10583 0762 AA68     		ldr	r2, [r5, #8]
 10584 0764 0028     		cmp	r0, #0
 10585 0766 3FF49FAC 		beq	.L2013
 10586 076a 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10587 076c 0133     		adds	r3, r3, #1
 10588 076e 1375     		strb	r3, [r2, #20]
 10589 0770 D4F86033 		ldr	r3, [r4, #864]
 10590 0774 D4F82C25 		ldr	r2, [r4, #1324]
 10591 0778 0127     		movs	r7, #1
 10592 077a 07FA03F3 		lsl	r3, r7, r3
 10593 077e 013B     		subs	r3, r3, #1
 10594 0780 9343     		bics	r3, r3, r2
 10595 0782 00F08F87 		beq	.L2053
 10596 0786 AA68     		ldr	r2, [r5, #8]
 10597 0788 8EE4     		b	.L2013
 10598              	.L1982:
 10599 078a 4821     		movs	r1, #72
 10600 078c 2846     		mov	r0, r5
 10601 078e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 10602 0792 0028     		cmp	r0, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 187


 10603 0794 40F07B83 		bne	.L2073
 10604              	.L2076:
 10605 0798 334F     		ldr	r7, .L2345
 10606 079a D7F8EC30 		ldr	r3, [r7, #236]
 10607 079e 4BB1     		cbz	r3, .L2075
 10608 07a0 94F81826 		ldrb	r2, [r4, #1560]	@ zero_extendqisi2
 10609 07a4 D3F89C10 		ldr	r1, [r3, #156]
 10610 07a8 0032     		adds	r2, r2, #0
 10611 07aa 18BF     		it	ne
 10612 07ac 0122     		movne	r2, #1
 10613 07ae 3846     		mov	r0, r7
 10614 07b0 FFF7FEFF 		bl	_ZN6RepRap11StandbyToolEib
 10615              	.L2075:
 10616 07b4 3869     		ldr	r0, [r7, #16]
 10617 07b6 0121     		movs	r1, #1
 10618 07b8 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEb
 10619              	.L2077:
 10620 07bc AB68     		ldr	r3, [r5, #8]
 10621 07be 6068     		ldr	r0, [r4, #4]
 10622 07c0 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 10623 07c2 192B     		cmp	r3, #25
 10624 07c4 40F0F282 		bne	.L2078
 10625 07c8 0027     		movs	r7, #0
 10626 07ca 00E0     		b	.L2080
 10627              	.L2318:
 10628 07cc 6068     		ldr	r0, [r4, #4]
 10629              	.L2080:
 10630 07ce 3946     		mov	r1, r7
 10631 07d0 0137     		adds	r7, r7, #1
 10632 07d2 FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 10633 07d6 0C2F     		cmp	r7, #12
 10634 07d8 F8D1     		bne	.L2318
 10635 07da 0023     		movs	r3, #0
 10636 07dc C4F82C35 		str	r3, [r4, #1324]
 10637              	.L2081:
 10638 07e0 AB68     		ldr	r3, [r5, #8]
 10639 07e2 0022     		movs	r2, #0
 10640 07e4 1A75     		strb	r2, [r3, #20]
 10641 07e6 AA68     		ldr	r2, [r5, #8]
 10642 07e8 5EE4     		b	.L2013
 10643              	.L1966:
 10644 07ea 94F8A931 		ldrb	r3, [r4, #425]	@ zero_extendqisi2
 10645 07ee 002B     		cmp	r3, #0
 10646 07f0 00F03883 		beq	.L2015
 10647 07f4 022B     		cmp	r3, #2
 10648 07f6 7FF45BAC 		bne	.L1962
 10649 07fa 2046     		mov	r0, r4
 10650 07fc FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10651 0800 0028     		cmp	r0, #0
 10652 0802 40F0BF86 		bne	.L2017
 10653 0806 AA68     		ldr	r2, [r5, #8]
 10654 0808 4EE4     		b	.L2013
 10655              	.L1964:
 10656 080a 2046     		mov	r0, r4
 10657 080c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10658 0810 0028     		cmp	r0, #0
 10659 0812 00F00481 		beq	.L2007
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 188


 10660 0816 D4F85C23 		ldr	r2, [r4, #860]
 10661 081a 002A     		cmp	r2, #0
 10662 081c 00F0F980 		beq	.L2008
 10663 0820 0027     		movs	r7, #0
 10664 0822 03E0     		b	.L2012
 10665              	.L2009:
 10666 0824 0137     		adds	r7, r7, #1
 10667 0826 BA42     		cmp	r2, r7
 10668 0828 40F2F380 		bls	.L2008
 10669              	.L2012:
 10670 082c D4F84037 		ldr	r3, [r4, #1856]
 10671 0830 FB40     		lsrs	r3, r3, r7
 10672 0832 D807     		lsls	r0, r3, #31
 10673 0834 F6D5     		bpl	.L2009
 10674 0836 05AA     		add	r2, sp, #20
 10675 0838 07AB     		add	r3, sp, #28
 10676 083a 3946     		mov	r1, r7
 10677 083c 6068     		ldr	r0, [r4, #4]
 10678 083e FFF7FEFF 		bl	_ZNK8Platform23GetEndStopConfigurationEjR15EndStopPositionR16EndStopInputType
 10679 0842 059A     		ldr	r2, [sp, #20]
 10680 0844 022A     		cmp	r2, #2
 10681 0846 00F00886 		beq	.L2319
 10682 084a 012A     		cmp	r2, #1
 10683 084c 00F05E86 		beq	.L2298
 10684              	.L2305:
 10685 0850 D4F85C23 		ldr	r2, [r4, #860]
 10686 0854 E6E7     		b	.L2009
 10687              	.L1995:
 10688 0856 2046     		mov	r0, r4
 10689 0858 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10690 085c 0028     		cmp	r0, #0
 10691 085e 40F00583 		bne	.L2128
 10692 0862 AA68     		ldr	r2, [r5, #8]
 10693 0864 20E4     		b	.L2013
 10694              	.L2346:
 10695 0866 00BF     		.align	2
 10696              	.L2345:
 10697 0868 00000000 		.word	reprap
 10698 086c 00007A44 		.word	1148846080
 10699 0870 D0000000 		.word	.LC156
 10700              	.L1993:
 10701 0874 2046     		mov	r0, r4
 10702 0876 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10703 087a 0028     		cmp	r0, #0
 10704 087c 40F0BD84 		bne	.L2125
 10705 0880 AA68     		ldr	r2, [r5, #8]
 10706 0882 11E4     		b	.L2013
 10707              	.L1969:
 10708 0884 2046     		mov	r0, r4
 10709 0886 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10710 088a 0028     		cmp	r0, #0
 10711 088c 40F00E81 		bne	.L2034
 10712 0890 AA68     		ldr	r2, [r5, #8]
 10713 0892 09E4     		b	.L2013
 10714              	.L1987:
 10715 0894 2046     		mov	r0, r4
 10716 0896 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 189


 10717 089a 0028     		cmp	r0, #0
 10718 089c 40F07183 		bne	.L2095
 10719 08a0 AA68     		ldr	r2, [r5, #8]
 10720 08a2 01E4     		b	.L2013
 10721              	.L1967:
 10722 08a4 2046     		mov	r0, r4
 10723 08a6 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10724 08aa 0028     		cmp	r0, #0
 10725 08ac 40F03982 		bne	.L2019
 10726 08b0 AA68     		ldr	r2, [r5, #8]
 10727 08b2 FFF7F9BB 		b	.L2013
 10728              	.L1991:
 10729 08b6 DFF8FC82 		ldr	r8, .L2347+8
 10730 08ba D8F80C00 		ldr	r0, [r8, #12]
 10731 08be 07AA     		add	r2, sp, #28
 10732 08c0 00F58870 		add	r0, r0, #272
 10733 08c4 05A9     		add	r1, sp, #20
 10734 08c6 FFF7FEFF 		bl	_ZNK9HeightMap13GetStatisticsERfS0_
 10735 08ca 0328     		cmp	r0, #3
 10736 08cc 0746     		mov	r7, r0
 10737 08ce 40F20282 		bls	.L2122
 10738 08d2 0798     		ldr	r0, [sp, #28]	@ float
 10739 08d4 FFF7FEFF 		bl	__aeabi_f2d
 10740 08d8 CDE90201 		strd	r0, [sp, #8]
 10741 08dc 0598     		ldr	r0, [sp, #20]	@ float
 10742 08de FFF7FEFF 		bl	__aeabi_f2d
 10743 08e2 3A46     		mov	r2, r7
 10744 08e4 CDE90001 		strd	r0, [sp]
 10745 08e8 B049     		ldr	r1, .L2347
 10746 08ea 3046     		mov	r0, r6
 10747 08ec FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 10748 08f0 2946     		mov	r1, r5
 10749 08f2 3246     		mov	r2, r6
 10750 08f4 2046     		mov	r0, r4
 10751 08f6 FFF7FEFF 		bl	_ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef
 10752 08fa 0746     		mov	r7, r0
 10753 08fc D8F80C00 		ldr	r0, [r8, #12]
 10754 0900 00F58870 		add	r0, r0, #272
 10755 0904 FFF7FEFF 		bl	_ZN9HeightMap18ExtrapolateMissingEv
 10756 0908 0121     		movs	r1, #1
 10757 090a D8F80C00 		ldr	r0, [r8, #12]
 10758 090e FFF7FEFF 		bl	_ZN4Move7UseMeshEb
 10759 0912 002F     		cmp	r7, #0
 10760 0914 7FF479AC 		bne	.L2123
 10761 0918 D8F80400 		ldr	r0, [r8, #4]
 10762 091c 3368     		ldr	r3, [r6]
 10763 091e A44A     		ldr	r2, .L2347+4
 10764 0920 8021     		movs	r1, #128
 10765 0922 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 10766 0926 70E4     		b	.L2123
 10767              	.L1983:
 10768 0928 A24B     		ldr	r3, .L2347+8
 10769 092a D4F80816 		ldr	r1, [r4, #1544]
 10770 092e D3F80C80 		ldr	r8, [r3, #12]
 10771 0932 08F58877 		add	r7, r8, #272
 10772 0936 3846     		mov	r0, r7
 10773 0938 FFF7FEFF 		bl	_ZNK14GridDefinition14GetXCoordinateEj
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 190


 10774 093c 3846     		mov	r0, r7
 10775 093e D4F80C16 		ldr	r1, [r4, #1548]
 10776 0942 B0EE408A 		vmov.f32	s16, s0
 10777 0946 FFF7FEFF 		bl	_ZNK14GridDefinition14GetYCoordinateEj
 10778 094a 3846     		mov	r0, r7
 10779 094c F0EE408A 		vmov.f32	s17, s0
 10780 0950 F0EE400A 		vmov.f32	s1, s0
 10781 0954 B0EE480A 		vmov.f32	s0, s16
 10782 0958 FFF7FEFF 		bl	_ZNK14GridDefinition10IsInRadiusEff
 10783 095c 0028     		cmp	r0, #0
 10784 095e 40F0AF82 		bne	.L2320
 10785 0962 AB68     		ldr	r3, [r5, #8]
 10786 0964 2122     		movs	r2, #33
 10787 0966 1A75     		strb	r2, [r3, #20]
 10788 0968 AA68     		ldr	r2, [r5, #8]
 10789 096a FFF79DBB 		b	.L2013
 10790              	.L1989:
 10791 096e 2046     		mov	r0, r4
 10792 0970 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10793 0974 0028     		cmp	r0, #0
 10794 0976 40F0EA83 		bne	.L2102
 10795 097a AA68     		ldr	r2, [r5, #8]
 10796 097c FFF794BB 		b	.L2013
 10797              	.L1985:
 10798 0980 2046     		mov	r0, r4
 10799 0982 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 10800 0986 0028     		cmp	r0, #0
 10801 0988 40F0D083 		bne	.L2086
 10802 098c AA68     		ldr	r2, [r5, #8]
 10803 098e FFF78BBB 		b	.L2013
 10804              	.L1981:
 10805 0992 94F8B436 		ldrb	r3, [r4, #1716]	@ zero_extendqisi2
 10806 0996 DF07     		lsls	r7, r3, #31
 10807 0998 00F1EC82 		bmi	.L2321
 10808              	.L2072:
 10809 099c 0023     		movs	r3, #0
 10810 099e 84F8B536 		strb	r3, [r4, #1717]
 10811 09a2 AA68     		ldr	r2, [r5, #8]
 10812 09a4 1375     		strb	r3, [r2, #20]
 10813 09a6 AA68     		ldr	r2, [r5, #8]
 10814 09a8 FFF77EBB 		b	.L2013
 10815              	.L2311:
 10816 09ac 2B71     		strb	r3, [r5, #4]
 10817 09ae 2946     		mov	r1, r5
 10818 09b0 2046     		mov	r0, r4
 10819 09b2 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 10820              	.L2191:
 10821 09b6 AB68     		ldr	r3, [r5, #8]
 10822 09b8 1969     		ldr	r1, [r3, #16]
 10823 09ba 39B1     		cbz	r1, .L2202
 10824 09bc 3046     		mov	r0, r6
 10825 09be FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 10826 09c2 AB68     		ldr	r3, [r5, #8]
 10827 09c4 0022     		movs	r2, #0
 10828 09c6 1A61     		str	r2, [r3, #16]
 10829 09c8 0222     		movs	r2, #2
 10830 09ca 32E4     		b	.L2189
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 191


 10831              	.L2202:
 10832 09cc 0122     		movs	r2, #1
 10833 09ce 30E4     		b	.L2189
 10834              	.L1963:
 10835 09d0 794A     		ldr	r2, .L2347+12
 10836 09d2 6068     		ldr	r0, [r4, #4]
 10837 09d4 40F2B511 		movw	r1, #437
 10838 09d8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 10839 09dc AB68     		ldr	r3, [r5, #8]
 10840 09de 0022     		movs	r2, #0
 10841 09e0 1A75     		strb	r2, [r3, #20]
 10842 09e2 AA68     		ldr	r2, [r5, #8]
 10843 09e4 FFF760BB 		b	.L2013
 10844              	.L2047:
 10845 09e8 0023     		movs	r3, #0
 10846 09ea 84F84537 		strb	r3, [r4, #1861]
 10847 09ee 84F84637 		strb	r3, [r4, #1862]
 10848 09f2 AA68     		ldr	r2, [r5, #8]
 10849 09f4 1375     		strb	r3, [r2, #20]
 10850 09f6 AA68     		ldr	r2, [r5, #8]
 10851 09f8 FFF756BB 		b	.L2013
 10852              	.L2187:
 10853 09fc 3246     		mov	r2, r6
 10854 09fe 2046     		mov	r0, r4
 10855 0a00 FFF7FEFF 		bl	_ZN6GCodes9ActOnCodeER11GCodeBufferRK9StringRef
 10856 0a04 0146     		mov	r1, r0
 10857 0a06 2846     		mov	r0, r5
 10858 0a08 FFF7FEFF 		bl	_ZN11GCodeBuffer11SetFinishedEb
 10859 0a0c AA68     		ldr	r2, [r5, #8]
 10860 0a0e FFF74BBB 		b	.L2013
 10861              	.L2008:
 10862 0a12 AB68     		ldr	r3, [r5, #8]
 10863 0a14 0022     		movs	r2, #0
 10864 0a16 1A75     		strb	r2, [r3, #20]
 10865 0a18 AA68     		ldr	r2, [r5, #8]
 10866 0a1a FFF745BB 		b	.L2013
 10867              	.L2007:
 10868 0a1e AA68     		ldr	r2, [r5, #8]
 10869 0a20 FFF742BB 		b	.L2013
 10870              	.L2069:
 10871 0a24 94F8B436 		ldrb	r3, [r4, #1716]	@ zero_extendqisi2
 10872 0a28 C3F34000 		ubfx	r0, r3, #1, #1
 10873 0a2c 0028     		cmp	r0, #0
 10874 0a2e 40F0B186 		bne	.L2070
 10875 0a32 5907     		lsls	r1, r3, #29
 10876 0a34 00F1AD86 		bmi	.L2196
 10877 0a38 1A07     		lsls	r2, r3, #28
 10878 0a3a 48BF     		it	mi
 10879 0a3c 0320     		movmi	r0, #3
 10880 0a3e 00F1A986 		bmi	.L2070
 10881 0a42 AB68     		ldr	r3, [r5, #8]
 10882 0a44 1722     		movs	r2, #23
 10883 0a46 1A75     		strb	r2, [r3, #20]
 10884 0a48 AA68     		ldr	r2, [r5, #8]
 10885 0a4a FFF72DBB 		b	.L2013
 10886              	.L2067:
 10887 0a4e 04F5A668 		add	r8, r4, #1328
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 192


 10888 0a52 0027     		movs	r7, #0
 10889              	.L2068:
 10890 0a54 3946     		mov	r1, r7
 10891 0a56 B8EC010A 		vldmia.32	r8!, {s0}
 10892 0a5a 6068     		ldr	r0, [r4, #4]
 10893 0a5c 0137     		adds	r7, r7, #1
 10894 0a5e FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 10895 0a62 092F     		cmp	r7, #9
 10896 0a64 F6D1     		bne	.L2068
 10897 0a66 D4F85433 		ldr	r3, [r4, #852]
 10898 0a6a A26C     		ldr	r2, [r4, #72]
 10899 0a6c 986A     		ldr	r0, [r3, #40]	@ float
 10900 0a6e C4F88C03 		str	r0, [r4, #908]	@ float
 10901 0a72 986A     		ldr	r0, [r3, #40]	@ float
 10902 0a74 C4F84401 		str	r0, [r4, #324]	@ float
 10903 0a78 1068     		ldr	r0, [r2]
 10904 0a7a 5A6A     		ldr	r2, [r3, #36]	@ float
 10905 0a7c 8368     		ldr	r3, [r0, #8]
 10906 0a7e 4F49     		ldr	r1, .L2347+16
 10907 0a80 5A60     		str	r2, [r3, #4]	@ float
 10908 0a82 D4F85433 		ldr	r3, [r4, #852]
 10909 0a86 0027     		movs	r7, #0
 10910 0a88 DB6A     		ldr	r3, [r3, #44]	@ float
 10911 0a8a C4F87031 		str	r3, [r4, #368]	@ float
 10912 0a8e 84F8B670 		strb	r7, [r4, #182]
 10913 0a92 3046     		mov	r0, r6
 10914 0a94 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 10915 0a98 494A     		ldr	r2, .L2347+20
 10916 0a9a 6068     		ldr	r0, [r4, #4]
 10917 0a9c 8021     		movs	r1, #128
 10918 0a9e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 10919 0aa2 AB68     		ldr	r3, [r5, #8]
 10920 0aa4 1F75     		strb	r7, [r3, #20]
 10921 0aa6 AA68     		ldr	r2, [r5, #8]
 10922 0aa8 FFF7FEBA 		b	.L2013
 10923              	.L2034:
 10924 0aac D4F82835 		ldr	r3, [r4, #1320]
 10925 0ab0 D4F82C25 		ldr	r2, [r4, #1324]
 10926 0ab4 13EA0207 		ands	r7, r3, r2
 10927 0ab8 00F00D85 		beq	.L2322
 10928 0abc 23EA0203 		bic	r3, r3, r2
 10929 0ac0 C4F82835 		str	r3, [r4, #1320]
 10930 0ac4 002B     		cmp	r3, #0
 10931 0ac6 AB68     		ldr	r3, [r5, #8]
 10932 0ac8 14BF     		ite	ne
 10933 0aca 0422     		movne	r2, #4
 10934 0acc 0022     		moveq	r2, #0
 10935 0ace 1A75     		strb	r2, [r3, #20]
 10936 0ad0 AA68     		ldr	r2, [r5, #8]
 10937 0ad2 FFF7E9BA 		b	.L2013
 10938              	.L2090:
 10939 0ad6 6068     		ldr	r0, [r4, #4]
 10940 0ad8 90F8CC30 		ldrb	r3, [r0, #204]	@ zero_extendqisi2
 10941 0adc 002B     		cmp	r3, #0
 10942 0ade 40F0D983 		bne	.L2091
 10943 0ae2 2946     		mov	r1, r5
 10944 0ae4 2046     		mov	r0, r4
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 193


 10945 0ae6 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 10946 0aea AA68     		ldr	r2, [r5, #8]
 10947 0aec 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10948 0aee 0120     		movs	r0, #1
 10949 0af0 0133     		adds	r3, r3, #1
 10950 0af2 1375     		strb	r3, [r2, #20]
 10951 0af4 84F81006 		strb	r0, [r4, #1552]
 10952 0af8 2046     		mov	r0, r4
 10953 0afa FFF7FEFF 		bl	_ZN6GCodes13DoManualProbeER11GCodeBuffer
 10954 0afe AA68     		ldr	r2, [r5, #8]
 10955 0b00 FFF7D2BA 		b	.L2013
 10956              	.L2045:
 10957 0b04 D4F85833 		ldr	r3, [r4, #856]
 10958 0b08 9A68     		ldr	r2, [r3, #8]	@ float
 10959 0b0a C4F8C820 		str	r2, [r4, #200]	@ float
 10960 0b0e 596A     		ldr	r1, [r3, #36]	@ float
 10961 0b10 AB68     		ldr	r3, [r5, #8]
 10962 0b12 0022     		movs	r2, #0
 10963 0b14 5960     		str	r1, [r3, #4]	@ float
 10964 0b16 84F8BA20 		strb	r2, [r4, #186]
 10965 0b1a AB68     		ldr	r3, [r5, #8]
 10966 0b1c 197D     		ldrb	r1, [r3, #20]	@ zero_extendqisi2
 10967 0b1e 0929     		cmp	r1, #9
 10968 0b20 40F04884 		bne	.L2046
 10969 0b24 1A75     		strb	r2, [r3, #20]
 10970 0b26 AA68     		ldr	r2, [r5, #8]
 10971 0b28 FFF7BEBA 		b	.L2013
 10972              	.L2039:
 10973 0b2c 2148     		ldr	r0, .L2347+8
 10974 0b2e D0F8EC30 		ldr	r3, [r0, #236]
 10975 0b32 43B1     		cbz	r3, .L2040
 10976 0b34 94F81826 		ldrb	r2, [r4, #1560]	@ zero_extendqisi2
 10977 0b38 D3F89C10 		ldr	r1, [r3, #156]
 10978 0b3c 0032     		adds	r2, r2, #0
 10979 0b3e 18BF     		it	ne
 10980 0b40 0122     		movne	r2, #1
 10981 0b42 FFF7FEFF 		bl	_ZN6RepRap11StandbyToolEib
 10982              	.L2040:
 10983 0b46 AA68     		ldr	r2, [r5, #8]
 10984 0b48 1A48     		ldr	r0, .L2347+8
 10985 0b4a 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 10986 0b4c 0133     		adds	r3, r3, #1
 10987 0b4e 1375     		strb	r3, [r2, #20]
 10988 0b50 AB68     		ldr	r3, [r5, #8]
 10989 0b52 B3F91610 		ldrsh	r1, [r3, #22]
 10990 0b56 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 10991 0b5a 0028     		cmp	r0, #0
 10992 0b5c 00F0E084 		beq	.L2323
 10993 0b60 D4F86003 		ldr	r0, [r4, #864]
 10994 0b64 D4F82C15 		ldr	r1, [r4, #1324]
 10995 0b68 AA68     		ldr	r2, [r5, #8]
 10996 0b6a 0123     		movs	r3, #1
 10997 0b6c 8340     		lsls	r3, r3, r0
 10998 0b6e 013B     		subs	r3, r3, #1
 10999 0b70 8B43     		bics	r3, r3, r1
 11000 0b72 7FF499AA 		bne	.L2013
 11001 0b76 537D     		ldrb	r3, [r2, #21]	@ zero_extendqisi2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 194


 11002 0b78 9F07     		lsls	r7, r3, #30
 11003 0b7a 7FF595AA 		bpl	.L2013
 11004 0b7e 14AF     		add	r7, sp, #80
 11005 0b80 4FF00008 		mov	r8, #0
 11006 0b84 07F8348D 		strb	r8, [r7, #-52]!
 11007 0b88 0E49     		ldr	r1, .L2347+24
 11008 0b8a B2F91620 		ldrsh	r2, [r2, #22]
 11009 0b8e 3846     		mov	r0, r7
 11010 0b90 FFF7FEFF 		bl	_ZN6StringILj50EE6printfEPKcz
 11011 0b94 3A46     		mov	r2, r7
 11012 0b96 CDF80080 		str	r8, [sp]
 11013 0b9a 4346     		mov	r3, r8
 11014 0b9c 2946     		mov	r1, r5
 11015 0b9e 2046     		mov	r0, r4
 11016 0ba0 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 11017 0ba4 AA68     		ldr	r2, [r5, #8]
 11018 0ba6 FFF77FBA 		b	.L2013
 11019              	.L2348:
 11020 0baa 00BF     		.align	2
 11021              	.L2347:
 11022 0bac 20020000 		.word	.LC169
 11023 0bb0 30000000 		.word	.LC76
 11024 0bb4 00000000 		.word	reprap
 11025 0bb8 3C030000 		.word	.LC177
 11026 0bbc 18010000 		.word	.LC162
 11027 0bc0 2C010000 		.word	.LC163
 11028 0bc4 DC000000 		.word	.LC157
 11029              	.L2055:
 11030 0bc8 AB68     		ldr	r3, [r5, #8]
 11031 0bca B44A     		ldr	r2, .L2349
 11032 0bcc 197D     		ldrb	r1, [r3, #20]	@ zero_extendqisi2
 11033 0bce B44B     		ldr	r3, .L2349+4
 11034 0bd0 3046     		mov	r0, r6
 11035 0bd2 1229     		cmp	r1, #18
 11036 0bd4 14BF     		ite	ne
 11037 0bd6 1146     		movne	r1, r2
 11038 0bd8 1946     		moveq	r1, r3
 11039 0bda FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 11040 0bde D4F86033 		ldr	r3, [r4, #864]
 11041 0be2 CBB1     		cbz	r3, .L2057
 11042 0be4 DFF8D492 		ldr	r9, .L2349+32
 11043 0be8 04F20F58 		addw	r8, r4, #1295
 11044 0bec 0027     		movs	r7, #0
 11045              	.L2058:
 11046 0bee D4F85433 		ldr	r3, [r4, #852]
 11047 0bf2 18F801AF 		ldrb	r10, [r8, #1]!	@ zero_extendqisi2
 11048 0bf6 03EB8703 		add	r3, r3, r7, lsl #2
 11049 0bfa 0137     		adds	r7, r7, #1
 11050 0bfc 1868     		ldr	r0, [r3]	@ float
 11051 0bfe FFF7FEFF 		bl	__aeabi_f2d
 11052 0c02 5246     		mov	r2, r10
 11053 0c04 CDE90001 		strd	r0, [sp]
 11054 0c08 4946     		mov	r1, r9
 11055 0c0a 3046     		mov	r0, r6
 11056 0c0c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 11057 0c10 D4F86033 		ldr	r3, [r4, #864]
 11058 0c14 BB42     		cmp	r3, r7
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 195


 11059 0c16 EAD8     		bhi	.L2058
 11060              	.L2057:
 11061 0c18 3368     		ldr	r3, [r6]
 11062 0c1a A24A     		ldr	r2, .L2349+8
 11063 0c1c 6068     		ldr	r0, [r4, #4]
 11064 0c1e 8021     		movs	r1, #128
 11065 0c20 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 11066 0c24 AB68     		ldr	r3, [r5, #8]
 11067 0c26 0022     		movs	r2, #0
 11068 0c28 1A75     		strb	r2, [r3, #20]
 11069 0c2a AA68     		ldr	r2, [r5, #8]
 11070 0c2c FFF73CBA 		b	.L2013
 11071              	.L2059:
 11072 0c30 D4F86073 		ldr	r7, [r4, #864]
 11073 0c34 94ED3D6A 		vldr.32	s12, [r4, #244]
 11074 0c38 002F     		cmp	r7, #0
 11075 0c3a 00F01D86 		beq	.L2324
 11076 0c3e D4F85433 		ldr	r3, [r4, #852]
 11077 0c42 04F1C001 		add	r1, r4, #192
 11078 0c46 03EB8707 		add	r7, r3, r7, lsl #2
 11079 0c4a 0A46     		mov	r2, r1
 11080              	.L2061:
 11081 0c4c 53F8040B 		ldr	r0, [r3], #4	@ float
 11082 0c50 42F8040B 		str	r0, [r2], #4	@ float
 11083 0c54 9F42     		cmp	r7, r3
 11084 0c56 F9D1     		bne	.L2061
 11085              	.L2060:
 11086 0c58 0023     		movs	r3, #0
 11087 0c5a 04F1EC02 		add	r2, r4, #236
 11088 0c5e 2046     		mov	r0, r4
 11089 0c60 FFF7FEFF 		bl	_ZN6GCodes19ToolOffsetTransformEPKfPfm
 11090 0c64 D4F85C33 		ldr	r3, [r4, #860]
 11091 0c68 0B2B     		cmp	r3, #11
 11092 0c6a 09D8     		bhi	.L2062
 11093 0c6c 3B33     		adds	r3, r3, #59
 11094 0c6e 0021     		movs	r1, #0
 11095 0c70 04EB8303 		add	r3, r4, r3, lsl #2
 11096 0c74 04F58E72 		add	r2, r4, #284
 11097              	.L2063:
 11098 0c78 43F8041B 		str	r1, [r3], #4	@ float
 11099 0c7c 9A42     		cmp	r2, r3
 11100 0c7e FBD1     		bne	.L2063
 11101              	.L2062:
 11102 0c80 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 11103 0c84 8848     		ldr	r0, .L2349+12
 11104 0c86 C4F84001 		str	r0, [r4, #320]	@ float
 11105 0c8a 0022     		movs	r2, #0
 11106 0c8c 03F0CF03 		and	r3, r3, #207
 11107 0c90 62F34103 		bfi	r3, r2, #1, #1
 11108 0c94 84F85E21 		strb	r2, [r4, #350]
 11109 0c98 84F85F31 		strb	r3, [r4, #351]
 11110 0c9c C4F85821 		str	r2, [r4, #344]
 11111 0ca0 0223     		movs	r3, #2
 11112 0ca2 0122     		movs	r2, #1
 11113 0ca4 4FF0FF31 		mov	r1, #-1
 11114 0ca8 C4F85021 		str	r2, [r4, #336]
 11115 0cac C4F84811 		str	r1, [r4, #328]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 196


 11116 0cb0 C4F85431 		str	r3, [r4, #340]
 11117 0cb4 AB68     		ldr	r3, [r5, #8]
 11118 0cb6 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 11119 0cb8 132A     		cmp	r2, #19
 11120 0cba 00F0E383 		beq	.L2325
 11121              	.L2064:
 11122 0cbe 1522     		movs	r2, #21
 11123 0cc0 1A75     		strb	r2, [r3, #20]
 11124              	.L2066:
 11125 0cc2 0123     		movs	r3, #1
 11126 0cc4 C4F86431 		str	r3, [r4, #356]
 11127              		.syntax unified
 11128              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 11129 0cc8 BFF35F8F 		dmb
 11130              	@ 0 "" 2
 11131              		.thumb
 11132              		.syntax unified
 11133 0ccc C4F86031 		str	r3, [r4, #352]
 11134 0cd0 AA68     		ldr	r2, [r5, #8]
 11135 0cd2 FFF7E9B9 		b	.L2013
 11136              	.L2122:
 11137 0cd6 7549     		ldr	r1, .L2349+16
 11138 0cd8 3046     		mov	r0, r6
 11139 0cda FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 11140 0cde 0127     		movs	r7, #1
 11141 0ce0 FFF793BA 		b	.L2123
 11142              	.L2132:
 11143 0ce4 6068     		ldr	r0, [r4, #4]
 11144 0ce6 90F8CC30 		ldrb	r3, [r0, #204]	@ zero_extendqisi2
 11145 0cea 002B     		cmp	r3, #0
 11146 0cec 40F01283 		bne	.L2133
 11147 0cf0 2946     		mov	r1, r5
 11148 0cf2 2046     		mov	r0, r4
 11149 0cf4 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 11150 0cf8 AA68     		ldr	r2, [r5, #8]
 11151 0cfa 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 11152 0cfc 0120     		movs	r0, #1
 11153 0cfe 0133     		adds	r3, r3, #1
 11154 0d00 1375     		strb	r3, [r2, #20]
 11155 0d02 84F81006 		strb	r0, [r4, #1552]
 11156 0d06 2046     		mov	r0, r4
 11157 0d08 FFF7FEFF 		bl	_ZN6GCodes13DoManualProbeER11GCodeBuffer
 11158 0d0c AA68     		ldr	r2, [r5, #8]
 11159 0d0e FFF7CBB9 		b	.L2013
 11160              	.L2115:
 11161 0d12 D1F83001 		ldr	r0, [r1, #304]
 11162 0d16 0132     		adds	r2, r2, #1
 11163 0d18 8242     		cmp	r2, r0
 11164 0d1a 58D0     		beq	.L2306
 11165 0d1c C4F80826 		str	r2, [r4, #1544]
 11166 0d20 12E5     		b	.L2117
 11167              	.L2019:
 11168 0d22 634B     		ldr	r3, .L2349+20
 11169 0d24 D3F8EC90 		ldr	r9, [r3, #236]
 11170 0d28 B9F1000F 		cmp	r9, #0
 11171 0d2c 28D0     		beq	.L2022
 11172 0d2e D4F85C33 		ldr	r3, [r4, #860]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 197


 11173 0d32 2BB3     		cbz	r3, .L2022
 11174 0d34 04F20F58 		addw	r8, r4, #1295
 11175 0d38 0027     		movs	r7, #0
 11176 0d3a 04E0     		b	.L2023
 11177              	.L2021:
 11178 0d3c D4F85C33 		ldr	r3, [r4, #860]
 11179 0d40 0137     		adds	r7, r7, #1
 11180 0d42 BB42     		cmp	r3, r7
 11181 0d44 1CD9     		bls	.L2022
 11182              	.L2023:
 11183 0d46 18F8011F 		ldrb	r1, [r8, #1]!	@ zero_extendqisi2
 11184 0d4a 2846     		mov	r0, r5
 11185 0d4c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 11186 0d50 0028     		cmp	r0, #0
 11187 0d52 F3D0     		beq	.L2021
 11188 0d54 D4F85833 		ldr	r3, [r4, #856]
 11189 0d58 04EB8702 		add	r2, r4, r7, lsl #2
 11190 0d5c 03EB8703 		add	r3, r3, r7, lsl #2
 11191 0d60 D2ED307A 		vldr.32	s15, [r2, #192]
 11192 0d64 93ED008A 		vldr.32	s16, [r3]
 11193 0d68 2846     		mov	r0, r5
 11194 0d6a 38EE678A 		vsub.f32	s16, s16, s15
 11195 0d6e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 11196 0d72 3946     		mov	r1, r7
 11197 0d74 38EE000A 		vadd.f32	s0, s16, s0
 11198 0d78 4846     		mov	r0, r9
 11199 0d7a 0122     		movs	r2, #1
 11200 0d7c FFF7FEFF 		bl	_ZN4Tool9SetOffsetEjfb
 11201              	.L2022:
 11202 0d80 AB68     		ldr	r3, [r5, #8]
 11203 0d82 0022     		movs	r2, #0
 11204 0d84 1A75     		strb	r2, [r3, #20]
 11205 0d86 AA68     		ldr	r2, [r5, #8]
 11206 0d88 FFF78EB9 		b	.L2013
 11207              	.L2164:
 11208 0d8c D4F8E415 		ldr	r1, [r4, #1508]
 11209 0d90 0129     		cmp	r1, #1
 11210 0d92 00F05884 		beq	.L2326
 11211 0d96 481C     		adds	r0, r1, #1
 11212 0d98 FFF636AA 		blt	.L2310
 11213 0d9c 444B     		ldr	r3, .L2349+20
 11214 0d9e 3246     		mov	r2, r6
 11215 0da0 D868     		ldr	r0, [r3, #12]
 11216 0da2 FFF7FEFF 		bl	_ZN4Move18FinishedBedProbingEiRK9StringRef
 11217 0da6 0746     		mov	r7, r0
 11218 0da8 FFF72FBA 		b	.L2123
 11219              	.L2078:
 11220 0dac FFF7FEFF 		bl	_ZN8Platform14SetDriversIdleEv
 11221 0db0 16E5     		b	.L2081
 11222              	.L2167:
 11223 0db2 04F2EC53 		addw	r3, r4, #1516
 11224 0db6 0027     		movs	r7, #0
 11225 0db8 1868     		ldr	r0, [r3]	@ float
 11226 0dba FFF7FEFF 		bl	__aeabi_f2d
 11227 0dbe 0246     		mov	r2, r0
 11228 0dc0 0B46     		mov	r3, r1
 11229 0dc2 3046     		mov	r0, r6
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 198


 11230 0dc4 3B49     		ldr	r1, .L2349+24
 11231 0dc6 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 11232 0dca FFF71EBA 		b	.L2123
 11233              	.L2306:
 11234 0dce 0133     		adds	r3, r3, #1
 11235 0dd0 C4F80C36 		str	r3, [r4, #1548]
 11236 0dd4 B8E4     		b	.L2117
 11237              	.L2024:
 11238 0dd6 0DF15009 		add	r9, sp, #80
 11239 0dda 354B     		ldr	r3, .L2349+20
 11240 0ddc D4F82C25 		ldr	r2, [r4, #1324]
 11241 0de0 D868     		ldr	r0, [r3, #12]
 11242 0de2 D4F86033 		ldr	r3, [r4, #864]
 11243 0de6 4FF00008 		mov	r8, #0
 11244 0dea 09F8348D 		strb	r8, [r9, #-52]!
 11245 0dee D0F8740A 		ldr	r0, [r0, #2676]
 11246 0df2 0768     		ldr	r7, [r0]
 11247 0df4 4FF0150E 		mov	lr, #21
 11248 0df8 0DF1140C 		add	ip, sp, #20
 11249 0dfc 7F6C     		ldr	r7, [r7, #68]
 11250 0dfe CDF800C0 		str	ip, [sp]
 11251 0e02 CDE9059E 		strd	r9, lr, [sp, #20]
 11252 0e06 B847     		blx	r7
 11253 0e08 0746     		mov	r7, r0
 11254 0e0a 0028     		cmp	r0, #0
 11255 0e0c 00F00C83 		beq	.L2025
 11256 0e10 2949     		ldr	r1, .L2349+28
 11257 0e12 3046     		mov	r0, r6
 11258 0e14 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 11259 0e18 D4F86033 		ldr	r3, [r4, #864]
 11260 0e1c 2BB9     		cbnz	r3, .L2028
 11261 0e1e E0E2     		b	.L2026
 11262              	.L2027:
 11263 0e20 08F10108 		add	r8, r8, #1
 11264 0e24 4345     		cmp	r3, r8
 11265 0e26 40F2DC82 		bls	.L2026
 11266              	.L2028:
 11267 0e2a 27FA08F2 		lsr	r2, r7, r8
 11268 0e2e D107     		lsls	r1, r2, #31
 11269 0e30 F6D5     		bpl	.L2027
 11270 0e32 04EB0803 		add	r3, r4, r8
 11271 0e36 3046     		mov	r0, r6
 11272 0e38 93F81015 		ldrb	r1, [r3, #1296]	@ zero_extendqisi2
 11273 0e3c FFF7FEFF 		bl	_ZNK9StringRef3catEc
 11274 0e40 D4F86033 		ldr	r3, [r4, #864]
 11275 0e44 ECE7     		b	.L2027
 11276              	.L2317:
 11277 0e46 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 11278 0e48 0133     		adds	r3, r3, #1
 11279 0e4a 1375     		strb	r3, [r2, #20]
 11280 0e4c 6368     		ldr	r3, [r4, #4]
 11281 0e4e 93F8CC30 		ldrb	r3, [r3, #204]	@ zero_extendqisi2
 11282 0e52 23B1     		cbz	r3, .L2121
 11283 0e54 94F81136 		ldrb	r3, [r4, #1553]	@ zero_extendqisi2
 11284 0e58 002B     		cmp	r3, #0
 11285 0e5a 00F0A785 		beq	.L2327
 11286              	.L2121:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 199


 11287 0e5e AA68     		ldr	r2, [r5, #8]
 11288 0e60 FFF722B9 		b	.L2013
 11289              	.L2015:
 11290 0e64 0375     		strb	r3, [r0, #20]
 11291 0e66 8A68     		ldr	r2, [r1, #8]
 11292 0e68 FFF71EB9 		b	.L2013
 11293              	.L2128:
 11294 0e6c FFF7FEFF 		bl	millis
 11295 0e70 6368     		ldr	r3, [r4, #4]
 11296 0e72 C4F80006 		str	r0, [r4, #1536]
 11297 0e76 93F8CC10 		ldrb	r1, [r3, #204]	@ zero_extendqisi2
 11298 0e7a 0029     		cmp	r1, #0
 11299 0e7c 40F0D583 		bne	.L2328
 11300              	.L2130:
 11301 0e80 AA68     		ldr	r2, [r5, #8]
 11302 0e82 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 11303 0e84 0133     		adds	r3, r3, #1
 11304 0e86 1375     		strb	r3, [r2, #20]
 11305 0e88 AA68     		ldr	r2, [r5, #8]
 11306 0e8a FFF70DB9 		b	.L2013
 11307              	.L2073:
 11308 0e8e 2846     		mov	r0, r5
 11309 0e90 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 11310 0e94 0028     		cmp	r0, #0
 11311 0e96 3FF791AC 		bgt	.L2077
 11312 0e9a 7DE4     		b	.L2076
 11313              	.L2350:
 11314              		.align	2
 11315              	.L2349:
 11316 0e9c 28000000 		.word	.LC150
 11317 0ea0 00000000 		.word	.LC149
 11318 0ea4 30000000 		.word	.LC76
 11319 0ea8 01004842 		.word	1112014849
 11320 0eac 54020000 		.word	.LC170
 11321 0eb0 00000000 		.word	reprap
 11322 0eb4 CC020000 		.word	.LC173
 11323 0eb8 74000000 		.word	.LC152
 11324 0ebc 10010000 		.word	.LC161
 11325              	.L2320:
 11326 0ec0 4046     		mov	r0, r8
 11327 0ec2 F0EE680A 		vmov.f32	s1, s17
 11328 0ec6 B0EE480A 		vmov.f32	s0, s16
 11329 0eca FFF7FEFF 		bl	_ZNK4Move22IsAccessibleProbePointEff
 11330 0ece 0028     		cmp	r0, #0
 11331 0ed0 00F0E882 		beq	.L2083
 11332 0ed4 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 11333 0ed8 6068     		ldr	r0, [r4, #4]
 11334 0eda 0027     		movs	r7, #0
 11335 0edc 03F0CF03 		and	r3, r3, #207
 11336 0ee0 67F34103 		bfi	r3, r7, #1, #1
 11337 0ee4 4FF0FF32 		mov	r2, #-1
 11338 0ee8 84F85F31 		strb	r3, [r4, #351]
 11339 0eec 4FF00108 		mov	r8, #1
 11340 0ef0 0223     		movs	r3, #2
 11341 0ef2 C4F84821 		str	r2, [r4, #328]
 11342 0ef6 C4F85431 		str	r3, [r4, #340]
 11343 0efa 84F85E71 		strb	r7, [r4, #350]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 200


 11344 0efe C4F85871 		str	r7, [r4, #344]
 11345 0f02 C4F85081 		str	r8, [r4, #336]
 11346 0f06 90F8CC10 		ldrb	r1, [r0, #204]	@ zero_extendqisi2
 11347 0f0a FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 11348 0f0e D0ED017A 		vldr.32	s15, [r0, #4]
 11349 0f12 6368     		ldr	r3, [r4, #4]
 11350 0f14 38EE678A 		vsub.f32	s16, s16, s15
 11351 0f18 1846     		mov	r0, r3
 11352 0f1a 84ED3B8A 		vstr.32	s16, [r4, #236]
 11353 0f1e 93F8CC10 		ldrb	r1, [r3, #204]	@ zero_extendqisi2
 11354 0f22 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 11355 0f26 D0ED027A 		vldr.32	s15, [r0, #8]
 11356 0f2a 6068     		ldr	r0, [r4, #4]
 11357 0f2c 78EEE78A 		vsub.f32	s17, s17, s15
 11358 0f30 C4ED3C8A 		vstr.32	s17, [r4, #240]
 11359 0f34 FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 11360 0f38 6068     		ldr	r0, [r4, #4]
 11361 0f3a 84ED3D0A 		vstr.32	s0, [r4, #244]
 11362 0f3e FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 11363 0f42 C4F86481 		str	r8, [r4, #356]
 11364 0f46 84ED500A 		vstr.32	s0, [r4, #320]
 11365              		.syntax unified
 11366              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 11367 0f4a BFF35F8F 		dmb
 11368              	@ 0 "" 2
 11369              		.thumb
 11370              		.syntax unified
 11371 0f4e 04F5BF62 		add	r2, r4, #1528
 11372 0f52 04F2FC53 		addw	r3, r4, #1532
 11373 0f56 0020     		movs	r0, #0
 11374 0f58 CA49     		ldr	r1, .L2351
 11375 0f5a C4F86081 		str	r8, [r4, #352]
 11376 0f5e 84F81376 		strb	r7, [r4, #1555]
 11377 0f62 1060     		str	r0, [r2]	@ float
 11378 0f64 1960     		str	r1, [r3]	@ float
 11379 0f66 AA68     		ldr	r2, [r5, #8]
 11380 0f68 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 11381 0f6a 4344     		add	r3, r3, r8
 11382 0f6c 1375     		strb	r3, [r2, #20]
 11383 0f6e AA68     		ldr	r2, [r5, #8]
 11384 0f70 FFF79AB8 		b	.L2013
 11385              	.L2321:
 11386 0f74 0023     		movs	r3, #0
 11387 0f76 84F8B436 		strb	r3, [r4, #1716]
 11388 0f7a 6068     		ldr	r0, [r4, #4]
 11389 0f7c FFF7FEFF 		bl	_ZN8Platform14UpdateFirmwareEv
 11390 0f80 0CE5     		b	.L2072
 11391              	.L2095:
 11392 0f82 94F81336 		ldrb	r3, [r4, #1555]	@ zero_extendqisi2
 11393 0f86 C04A     		ldr	r2, .L2351+4
 11394 0f88 0133     		adds	r3, r3, #1
 11395 0f8a 0027     		movs	r7, #0
 11396 0f8c 84F81336 		strb	r3, [r4, #1555]
 11397 0f90 1069     		ldr	r0, [r2, #16]
 11398 0f92 84F81076 		strb	r7, [r4, #1552]
 11399 0f96 3946     		mov	r1, r7
 11400 0f98 FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 201


 11401 0f9c 6068     		ldr	r0, [r4, #4]
 11402 0f9e 90F8CC30 		ldrb	r3, [r0, #204]	@ zero_extendqisi2
 11403 0fa2 002B     		cmp	r3, #0
 11404 0fa4 40F02383 		bne	.L2096
 11405 0fa8 04F5BE63 		add	r3, r4, #1520
 11406 0fac D4F8F420 		ldr	r2, [r4, #244]	@ float
 11407 0fb0 1A60     		str	r2, [r3]	@ float
 11408              	.L2097:
 11409 0fb2 AA68     		ldr	r2, [r5, #8]
 11410 0fb4 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 11411 0fb6 0133     		adds	r3, r3, #1
 11412 0fb8 1375     		strb	r3, [r2, #20]
 11413 0fba 6368     		ldr	r3, [r4, #4]
 11414 0fbc 93F8CC30 		ldrb	r3, [r3, #204]	@ zero_extendqisi2
 11415 0fc0 092B     		cmp	r3, #9
 11416 0fc2 00F0B084 		beq	.L2101
 11417 0fc6 AA68     		ldr	r2, [r5, #8]
 11418 0fc8 FFF76EB8 		b	.L2013
 11419              	.L2149:
 11420 0fcc 6068     		ldr	r0, [r4, #4]
 11421 0fce 90F8CC10 		ldrb	r1, [r0, #204]	@ zero_extendqisi2
 11422 0fd2 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 11423 0fd6 90F82C30 		ldrb	r3, [r0, #44]	@ zero_extendqisi2
 11424 0fda 012B     		cmp	r3, #1
 11425 0fdc 40F2A382 		bls	.L2329
 11426 0fe0 94F81326 		ldrb	r2, [r4, #1555]	@ zero_extendqisi2
 11427 0fe4 012A     		cmp	r2, #1
 11428 0fe6 04F5BE68 		add	r8, r4, #1520
 11429 0fea 04F2F457 		addw	r7, r4, #1524
 11430 0fee 40F28D84 		bls	.L2152
 11431 0ff2 04F2FC53 		addw	r3, r4, #1532
 11432 0ff6 D8ED007A 		vldr.32	s15, [r8]
 11433 0ffa 97ED000A 		vldr.32	s0, [r7]
 11434 0ffe D3ED006A 		vldr.32	s13, [r3]
 11435 1002 37EEC07A 		vsub.f32	s14, s15, s0
 11436 1006 F4EE666A 		vcmp.f32	s13, s13
 11437 100a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 11438 100e B0EEC77A 		vabs.f32	s14, s14
 11439 1012 80F12885 		bvs	.L2198
 11440 1016 F4EE476A 		vcmp.f32	s13, s14
 11441 101a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 11442 101e 48BF     		it	mi
 11443 1020 B0EE667A 		vmovmi.f32	s14, s13
 11444              	.L2153:
 11445 1024 83ED007A 		vstr.32	s14, [r3]
 11446 1028 D0ED0A6A 		vldr.32	s13, [r0, #40]
 11447 102c F5EEC06A 		vcmpe.f32	s13, #0
 11448 1030 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 11449 1034 40F38B83 		ble	.L2307
 11450 1038 F4EEC76A 		vcmpe.f32	s13, s14
 11451 103c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 11452 1040 C0F28583 		blt	.L2307
 11453 1044 77EE807A 		vadd.f32	s15, s15, s0
 11454 1048 B6EE000A 		vmov.f32	s0, #5.0e-1
 11455 104c 27EE800A 		vmul.f32	s0, s15, s0
 11456 1050 88ED000A 		vstr.32	s0, [r8]
 11457              	.L2151:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 202


 11458 1054 D4F8E015 		ldr	r1, [r4, #1504]
 11459 1058 8B4F     		ldr	r7, .L2351+4
 11460 105a 0029     		cmp	r1, #0
 11461 105c F868     		ldr	r0, [r7, #12]
 11462 105e C0F23883 		blt	.L2160
 11463 1062 94F81236 		ldrb	r3, [r4, #1554]	@ zero_extendqisi2
 11464 1066 0122     		movs	r2, #1
 11465 1068 FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 11466              	.L2161:
 11467 106c AA68     		ldr	r2, [r5, #8]
 11468 106e 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 11469 1070 0133     		adds	r3, r3, #1
 11470 1072 1375     		strb	r3, [r2, #20]
 11471 1074 6368     		ldr	r3, [r4, #4]
 11472 1076 93F8CC30 		ldrb	r3, [r3, #204]	@ zero_extendqisi2
 11473 107a 23B1     		cbz	r3, .L2163
 11474 107c 94F81136 		ldrb	r3, [r4, #1553]	@ zero_extendqisi2
 11475 1080 002B     		cmp	r3, #0
 11476 1082 00F0A584 		beq	.L2330
 11477              	.L2163:
 11478 1086 AA68     		ldr	r2, [r5, #8]
 11479 1088 FFF70EB8 		b	.L2013
 11480              	.L2042:
 11481 108c 94F81826 		ldrb	r2, [r4, #1560]	@ zero_extendqisi2
 11482 1090 AB68     		ldr	r3, [r5, #8]
 11483 1092 7D48     		ldr	r0, .L2351+4
 11484 1094 B3F91610 		ldrsh	r1, [r3, #22]
 11485 1098 0032     		adds	r2, r2, #0
 11486 109a 18BF     		it	ne
 11487 109c 0122     		movne	r2, #1
 11488 109e FFF7FEFF 		bl	_ZN6RepRap10SelectToolEib
 11489 10a2 2046     		mov	r0, r4
 11490 10a4 FFF7FEFF 		bl	_ZN6GCodes25UpdateCurrentUserPositionEv
 11491 10a8 AA68     		ldr	r2, [r5, #8]
 11492 10aa 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 11493 10ac 0133     		adds	r3, r3, #1
 11494 10ae 1375     		strb	r3, [r2, #20]
 11495 10b0 D4F86013 		ldr	r1, [r4, #864]
 11496 10b4 D4F82C25 		ldr	r2, [r4, #1324]
 11497 10b8 0123     		movs	r3, #1
 11498 10ba 8B40     		lsls	r3, r3, r1
 11499 10bc 013B     		subs	r3, r3, #1
 11500 10be 9343     		bics	r3, r3, r2
 11501 10c0 00F0DE83 		beq	.L2043
 11502 10c4 AA68     		ldr	r2, [r5, #8]
 11503 10c6 FEF7EFBF 		b	.L2013
 11504              	.L2140:
 11505 10ca 6F4F     		ldr	r7, .L2351+4
 11506 10cc 0021     		movs	r1, #0
 11507 10ce 3869     		ldr	r0, [r7, #16]
 11508 10d0 FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 11509 10d4 94F81336 		ldrb	r3, [r4, #1555]	@ zero_extendqisi2
 11510 10d8 6068     		ldr	r0, [r4, #4]
 11511 10da 0133     		adds	r3, r3, #1
 11512 10dc 4FF00008 		mov	r8, #0
 11513 10e0 84F81336 		strb	r3, [r4, #1555]
 11514 10e4 84F81086 		strb	r8, [r4, #1552]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 203


 11515 10e8 84F81286 		strb	r8, [r4, #1554]
 11516 10ec 90F8CC30 		ldrb	r3, [r0, #204]	@ zero_extendqisi2
 11517 10f0 002B     		cmp	r3, #0
 11518 10f2 40F05782 		bne	.L2141
 11519 10f6 04F5BE68 		add	r8, r4, #1520
 11520 10fa 04F2EC53 		addw	r3, r4, #1516
 11521 10fe D4F8F420 		ldr	r2, [r4, #244]	@ float
 11522 1102 C8F80020 		str	r2, [r8]	@ float
 11523 1106 1A60     		str	r2, [r3]	@ float
 11524              	.L2142:
 11525 1108 D4F8E035 		ldr	r3, [r4, #1504]
 11526 110c 002B     		cmp	r3, #0
 11527 110e C0F20F82 		blt	.L2331
 11528              	.L2144:
 11529 1112 AA68     		ldr	r2, [r5, #8]
 11530 1114 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 11531 1116 0133     		adds	r3, r3, #1
 11532 1118 1375     		strb	r3, [r2, #20]
 11533 111a 6368     		ldr	r3, [r4, #4]
 11534 111c 93F8CC30 		ldrb	r3, [r3, #204]	@ zero_extendqisi2
 11535 1120 092B     		cmp	r3, #9
 11536 1122 00F0D183 		beq	.L2148
 11537 1126 AA68     		ldr	r2, [r5, #8]
 11538 1128 FEF7BEBF 		b	.L2013
 11539              	.L2086:
 11540 112c FFF7FEFF 		bl	millis
 11541 1130 6368     		ldr	r3, [r4, #4]
 11542 1132 C4F80006 		str	r0, [r4, #1536]
 11543 1136 93F8CC10 		ldrb	r1, [r3, #204]	@ zero_extendqisi2
 11544 113a 0029     		cmp	r1, #0
 11545 113c 40F04982 		bne	.L2332
 11546              	.L2088:
 11547 1140 AA68     		ldr	r2, [r5, #8]
 11548 1142 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 11549 1144 0133     		adds	r3, r3, #1
 11550 1146 1375     		strb	r3, [r2, #20]
 11551 1148 AA68     		ldr	r2, [r5, #8]
 11552 114a FEF7ADBF 		b	.L2013
 11553              	.L2102:
 11554 114e 6068     		ldr	r0, [r4, #4]
 11555 1150 90F8CC10 		ldrb	r1, [r0, #204]	@ zero_extendqisi2
 11556 1154 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 11557 1158 90F82C30 		ldrb	r3, [r0, #44]	@ zero_extendqisi2
 11558 115c 012B     		cmp	r3, #1
 11559 115e 40F27683 		bls	.L2333
 11560 1162 94F81326 		ldrb	r2, [r4, #1555]	@ zero_extendqisi2
 11561 1166 012A     		cmp	r2, #1
 11562 1168 04F5BE68 		add	r8, r4, #1520
 11563 116c 04F2F457 		addw	r7, r4, #1524
 11564 1170 40F2E082 		bls	.L2105
 11565 1174 04F2FC53 		addw	r3, r4, #1532
 11566 1178 98ED007A 		vldr.32	s14, [r8]
 11567 117c 97ED000A 		vldr.32	s0, [r7]
 11568 1180 D3ED006A 		vldr.32	s13, [r3]
 11569 1184 77EE407A 		vsub.f32	s15, s14, s0
 11570 1188 F4EE666A 		vcmp.f32	s13, s13
 11571 118c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 204


 11572 1190 F0EEE77A 		vabs.f32	s15, s15
 11573 1194 80F15184 		bvs	.L2197
 11574 1198 F4EE676A 		vcmp.f32	s13, s15
 11575 119c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 11576 11a0 48BF     		it	mi
 11577 11a2 F0EE667A 		vmovmi.f32	s15, s13
 11578              	.L2106:
 11579 11a6 C3ED007A 		vstr.32	s15, [r3]
 11580 11aa D0ED0A6A 		vldr.32	s13, [r0, #40]
 11581 11ae F5EEC06A 		vcmpe.f32	s13, #0
 11582 11b2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 11583 11b6 40F39183 		ble	.L2301
 11584 11ba F4EEE76A 		vcmpe.f32	s13, s15
 11585 11be F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 11586 11c2 80F2FC83 		bge	.L2110
 11587 11c6 90F82C30 		ldrb	r3, [r0, #44]	@ zero_extendqisi2
 11588              	.L2111:
 11589 11ca 9A42     		cmp	r2, r3
 11590 11cc C0F0B282 		bcc	.L2105
 11591 11d0 2E4A     		ldr	r2, .L2351+8
 11592 11d2 6068     		ldr	r0, [r4, #4]
 11593 11d4 40F2B511 		movw	r1, #437
 11594 11d8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11595 11dc AB68     		ldr	r3, [r5, #8]
 11596 11de 0022     		movs	r2, #0
 11597 11e0 1A75     		strb	r2, [r3, #20]
 11598 11e2 6368     		ldr	r3, [r4, #4]
 11599 11e4 93F8CC30 		ldrb	r3, [r3, #204]	@ zero_extendqisi2
 11600 11e8 23B1     		cbz	r3, .L2114
 11601 11ea 94F81136 		ldrb	r3, [r4, #1553]	@ zero_extendqisi2
 11602 11ee 002B     		cmp	r3, #0
 11603 11f0 00F01A84 		beq	.L2334
 11604              	.L2114:
 11605 11f4 AA68     		ldr	r2, [r5, #8]
 11606 11f6 FEF757BF 		b	.L2013
 11607              	.L2125:
 11608 11fa 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 11609 11fe 224A     		ldr	r2, .L2351+4
 11610 1200 D4F8E015 		ldr	r1, [r4, #1504]
 11611 1204 D068     		ldr	r0, [r2, #12]
 11612 1206 0027     		movs	r7, #0
 11613 1208 03F0CF03 		and	r3, r3, #207
 11614 120c 4FF0FF3C 		mov	ip, #-1
 11615 1210 4FF00108 		mov	r8, #1
 11616 1214 67F34103 		bfi	r3, r7, #1, #1
 11617 1218 0222     		movs	r2, #2
 11618 121a C4F848C1 		str	ip, [r4, #328]
 11619 121e 84F85F31 		strb	r3, [r4, #351]
 11620 1222 84F85E71 		strb	r7, [r4, #350]
 11621 1226 04F1F003 		add	r3, r4, #240
 11622 122a C4F85871 		str	r7, [r4, #344]
 11623 122e C4F85081 		str	r8, [r4, #336]
 11624 1232 CDF80080 		str	r8, [sp]
 11625 1236 C4F85421 		str	r2, [r4, #340]
 11626 123a 04F1EC02 		add	r2, r4, #236
 11627 123e FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 11628 1242 6068     		ldr	r0, [r4, #4]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 205


 11629 1244 FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 11630 1248 6068     		ldr	r0, [r4, #4]
 11631 124a 84ED3D0A 		vstr.32	s0, [r4, #244]
 11632 124e FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 11633 1252 C4F86481 		str	r8, [r4, #356]
 11634 1256 84ED500A 		vstr.32	s0, [r4, #320]
 11635              		.syntax unified
 11636              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 11637 125a BFF35F8F 		dmb
 11638              	@ 0 "" 2
 11639              		.thumb
 11640              		.syntax unified
 11641 125e 04F5BF62 		add	r2, r4, #1528
 11642 1262 04F2FC53 		addw	r3, r4, #1532
 11643 1266 0020     		movs	r0, #0
 11644 1268 0649     		ldr	r1, .L2351
 11645 126a C4F86081 		str	r8, [r4, #352]
 11646 126e 84F81376 		strb	r7, [r4, #1555]
 11647 1272 1060     		str	r0, [r2]	@ float
 11648 1274 1960     		str	r1, [r3]	@ float
 11649 1276 AA68     		ldr	r2, [r5, #8]
 11650 1278 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 11651 127a 4344     		add	r3, r3, r8
 11652 127c 1375     		strb	r3, [r2, #20]
 11653 127e AA68     		ldr	r2, [r5, #8]
 11654 1280 FEF712BF 		b	.L2013
 11655              	.L2352:
 11656              		.align	2
 11657              	.L2351:
 11658 1284 00007A44 		.word	1148846080
 11659 1288 00000000 		.word	reprap
 11660 128c FC010000 		.word	.LC168
 11661 1290 CDCC8CBF 		.word	-1081291571
 11662              	.L2091:
 11663 1294 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 11664 1298 0128     		cmp	r0, #1
 11665 129a 00F08682 		beq	.L2335
 11666 129e 0027     		movs	r7, #0
 11667 12a0 84F80476 		strb	r7, [r4, #1540]
 11668 12a4 6068     		ldr	r0, [r4, #4]
 11669 12a6 0121     		movs	r1, #1
 11670 12a8 FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 11671 12ac 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 11672 12b0 84F85E71 		strb	r7, [r4, #350]
 11673 12b4 03F0CF03 		and	r3, r3, #207
 11674 12b8 67F34103 		bfi	r3, r7, #1, #1
 11675 12bc 0222     		movs	r2, #2
 11676 12be 4FF0FF31 		mov	r1, #-1
 11677 12c2 0127     		movs	r7, #1
 11678 12c4 84F85F31 		strb	r3, [r4, #351]
 11679 12c8 4FF00043 		mov	r3, #-2147483648
 11680 12cc C4F85831 		str	r3, [r4, #344]
 11681 12d0 C4F84811 		str	r1, [r4, #328]
 11682 12d4 C4F85421 		str	r2, [r4, #340]
 11683 12d8 6068     		ldr	r0, [r4, #4]
 11684 12da C4F85071 		str	r7, [r4, #336]
 11685 12de FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 206


 11686 12e2 6068     		ldr	r0, [r4, #4]
 11687 12e4 B1EE400A 		vneg.f32	s0, s0
 11688 12e8 84ED3D0A 		vstr.32	s0, [r4, #244]
 11689 12ec 90F8CC10 		ldrb	r1, [r0, #204]	@ zero_extendqisi2
 11690 12f0 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 11691 12f4 C369     		ldr	r3, [r0, #28]	@ float
 11692 12f6 C4F84031 		str	r3, [r4, #320]	@ float
 11693 12fa C4F86471 		str	r7, [r4, #356]
 11694              		.syntax unified
 11695              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 11696 12fe BFF35F8F 		dmb
 11697              	@ 0 "" 2
 11698              		.thumb
 11699              		.syntax unified
 11700 1302 C4F86071 		str	r7, [r4, #352]
 11701 1306 AA68     		ldr	r2, [r5, #8]
 11702 1308 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 11703 130a 3B44     		add	r3, r3, r7
 11704 130c 1375     		strb	r3, [r2, #20]
 11705 130e AA68     		ldr	r2, [r5, #8]
 11706 1310 FEF7CABE 		b	.L2013
 11707              	.L2133:
 11708 1314 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 11709 1318 0128     		cmp	r0, #1
 11710 131a 0746     		mov	r7, r0
 11711 131c 00F05F82 		beq	.L2336
 11712 1320 0027     		movs	r7, #0
 11713 1322 84F80476 		strb	r7, [r4, #1540]
 11714 1326 0121     		movs	r1, #1
 11715 1328 6068     		ldr	r0, [r4, #4]
 11716 132a FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 11717 132e 94F85F31 		ldrb	r3, [r4, #351]	@ zero_extendqisi2
 11718 1332 D4F82C25 		ldr	r2, [r4, #1324]
 11719 1336 84F85E71 		strb	r7, [r4, #350]
 11720 133a 03F0CF03 		and	r3, r3, #207
 11721 133e 67F34103 		bfi	r3, r7, #1, #1
 11722 1342 4FF0FF37 		mov	r7, #-1
 11723 1346 0120     		movs	r0, #1
 11724 1348 84F85F31 		strb	r3, [r4, #351]
 11725 134c 0221     		movs	r1, #2
 11726 134e C4F84871 		str	r7, [r4, #328]
 11727 1352 4FF00043 		mov	r3, #-2147483648
 11728 1356 5707     		lsls	r7, r2, #29
 11729 1358 C4F85001 		str	r0, [r4, #336]
 11730 135c C4F85411 		str	r1, [r4, #340]
 11731 1360 C4F85831 		str	r3, [r4, #344]
 11732 1364 6068     		ldr	r0, [r4, #4]
 11733 1366 00F1CB82 		bmi	.L2337
 11734 136a 00F2A472 		addw	r2, r0, #1956
 11735 136e 00F5F963 		add	r3, r0, #1992
 11736 1372 92ED000A 		vldr.32	s0, [r2]
 11737 1376 93ED007A 		vldr.32	s14, [r3]
 11738 137a 5FED3B7A 		vldr.32	s15, .L2351+12
 11739 137e 30EE470A 		vsub.f32	s0, s0, s14
 11740 1382 20EE270A 		vmul.f32	s0, s0, s15
 11741              	.L2139:
 11742 1386 84ED3D0A 		vstr.32	s0, [r4, #244]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 207


 11743 138a 90F8CC10 		ldrb	r1, [r0, #204]	@ zero_extendqisi2
 11744 138e FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 11745 1392 0123     		movs	r3, #1
 11746 1394 C269     		ldr	r2, [r0, #28]	@ float
 11747 1396 C4F84021 		str	r2, [r4, #320]	@ float
 11748 139a C4F86431 		str	r3, [r4, #356]
 11749              		.syntax unified
 11750              	@ 456 "C:\eclipse\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 11751 139e BFF35F8F 		dmb
 11752              	@ 0 "" 2
 11753              		.thumb
 11754              		.syntax unified
 11755 13a2 C4F86031 		str	r3, [r4, #352]
 11756 13a6 AA68     		ldr	r2, [r5, #8]
 11757 13a8 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 11758 13aa 0133     		adds	r3, r3, #1
 11759 13ac 1375     		strb	r3, [r2, #20]
 11760 13ae AA68     		ldr	r2, [r5, #8]
 11761 13b0 FEF77ABE 		b	.L2013
 11762              	.L2046:
 11763 13b4 2946     		mov	r1, r5
 11764 13b6 2046     		mov	r0, r4
 11765 13b8 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 11766 13bc AA68     		ldr	r2, [r5, #8]
 11767 13be 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 11768 13c0 0133     		adds	r3, r3, #1
 11769 13c2 1375     		strb	r3, [r2, #20]
 11770 13c4 AA68     		ldr	r2, [r5, #8]
 11771 13c6 FEF76FBE 		b	.L2013
 11772              	.L2312:
 11773 13ca 00F10803 		add	r3, r0, #8
 11774 13ce CC4A     		ldr	r2, .L2353
 11775 13d0 6068     		ldr	r0, [r4, #4]
 11776 13d2 B521     		movs	r1, #181
 11777 13d4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 11778 13d8 D7F8EC30 		ldr	r3, [r7, #236]
 11779 13dc 5868     		ldr	r0, [r3, #4]
 11780 13de FEF776BE 		b	.L2186
 11781              	.L2026:
 11782 13e2 C849     		ldr	r1, .L2353+4
 11783 13e4 3046     		mov	r0, r6
 11784 13e6 FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 11785 13ea D4F86033 		ldr	r3, [r4, #864]
 11786 13ee D4F82885 		ldr	r8, [r4, #1320]
 11787 13f2 8BB1     		cbz	r3, .L2029
 11788 13f4 0027     		movs	r7, #0
 11789 13f6 02E0     		b	.L2031
 11790              	.L2030:
 11791 13f8 0137     		adds	r7, r7, #1
 11792 13fa BB42     		cmp	r3, r7
 11793 13fc 0CD9     		bls	.L2029
 11794              	.L2031:
 11795 13fe 28FA07F2 		lsr	r2, r8, r7
 11796 1402 D207     		lsls	r2, r2, #31
 11797 1404 F8D5     		bpl	.L2030
 11798 1406 E319     		adds	r3, r4, r7
 11799 1408 3046     		mov	r0, r6
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 208


 11800 140a 93F81015 		ldrb	r1, [r3, #1296]	@ zero_extendqisi2
 11801 140e FFF7FEFF 		bl	_ZNK9StringRef3catEc
 11802 1412 D4F86033 		ldr	r3, [r4, #864]
 11803 1416 EFE7     		b	.L2030
 11804              	.L2029:
 11805 1418 0023     		movs	r3, #0
 11806 141a C4F82835 		str	r3, [r4, #1320]
 11807 141e AA68     		ldr	r2, [r5, #8]
 11808 1420 0127     		movs	r7, #1
 11809 1422 1375     		strb	r3, [r2, #20]
 11810 1424 FEF7F4BE 		b	.L2309
 11811              	.L2025:
 11812 1428 AB68     		ldr	r3, [r5, #8]
 11813 142a 0522     		movs	r2, #5
 11814 142c 1A75     		strb	r2, [r3, #20]
 11815 142e 2946     		mov	r1, r5
 11816 1430 0346     		mov	r3, r0
 11817 1432 0090     		str	r0, [sp]
 11818 1434 4A46     		mov	r2, r9
 11819 1436 2046     		mov	r0, r4
 11820 1438 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 11821 143c 8046     		mov	r8, r0
 11822 143e 0028     		cmp	r0, #0
 11823 1440 7EF4E6AE 		bne	.L2309
 11824 1444 4A46     		mov	r2, r9
 11825 1446 B049     		ldr	r1, .L2353+8
 11826 1448 3046     		mov	r0, r6
 11827 144a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 11828 144e AB68     		ldr	r3, [r5, #8]
 11829 1450 0127     		movs	r7, #1
 11830 1452 83F81480 		strb	r8, [r3, #20]
 11831 1456 FEF7DBBE 		b	.L2309
 11832              	.L2319:
 11833 145a 04EB8703 		add	r3, r4, r7, lsl #2
 11834 145e 0122     		movs	r2, #1
 11835 1460 93ED3B0A 		vldr.32	s0, [r3, #236]
 11836 1464 6068     		ldr	r0, [r4, #4]
 11837 1466 3946     		mov	r1, r7
 11838 1468 FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 11839 146c D4F85C23 		ldr	r2, [r4, #860]
 11840 1470 FFF7D8B9 		b	.L2009
 11841              	.L2184:
 11842 1474 4346     		mov	r3, r8
 11843 1476 A54A     		ldr	r2, .L2353+12
 11844 1478 6068     		ldr	r0, [r4, #4]
 11845 147a B521     		movs	r1, #181
 11846 147c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 11847 1480 FEF73BBE 		b	.L2308
 11848              	.L2325:
 11849 1484 D4F85423 		ldr	r2, [r4, #852]
 11850 1488 D2ED027A 		vldr.32	s15, [r2, #8]
 11851 148c F4EEC67A 		vcmpe.f32	s15, s12
 11852 1490 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 11853 1494 7FF513AC 		bpl	.L2064
 11854 1498 84ED3D6A 		vstr.32	s12, [r4, #244]
 11855 149c AB68     		ldr	r3, [r5, #8]
 11856 149e 1422     		movs	r2, #20
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 209


 11857 14a0 1A75     		strb	r2, [r3, #20]
 11858 14a2 0EE4     		b	.L2066
 11859              	.L2083:
 11860 14a4 18EE900A 		vmov	r0, s17
 11861 14a8 FFF7FEFF 		bl	__aeabi_f2d
 11862 14ac CDE90201 		strd	r0, [sp, #8]
 11863 14b0 18EE100A 		vmov	r0, s16
 11864 14b4 FFF7FEFF 		bl	__aeabi_f2d
 11865 14b8 6368     		ldr	r3, [r4, #4]
 11866 14ba 954A     		ldr	r2, .L2353+16
 11867 14bc CDE90001 		strd	r0, [sp]
 11868 14c0 1846     		mov	r0, r3
 11869 14c2 40F2B521 		movw	r1, #693
 11870 14c6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 11871 14ca AB68     		ldr	r3, [r5, #8]
 11872 14cc 2122     		movs	r2, #33
 11873 14ce 1A75     		strb	r2, [r3, #20]
 11874 14d0 AA68     		ldr	r2, [r5, #8]
 11875 14d2 FEF7E9BD 		b	.L2013
 11876              	.L2322:
 11877 14d6 8F49     		ldr	r1, .L2353+20
 11878 14d8 3046     		mov	r0, r6
 11879 14da FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 11880 14de AB68     		ldr	r3, [r5, #8]
 11881 14e0 1F75     		strb	r7, [r3, #20]
 11882              	.L2018:
 11883 14e2 AB68     		ldr	r3, [r5, #8]
 11884 14e4 1B7D     		ldrb	r3, [r3, #20]	@ zero_extendqisi2
 11885 14e6 002B     		cmp	r3, #0
 11886 14e8 7EF4E2AD 		bne	.L1962
 11887 14ec 2B71     		strb	r3, [r5, #4]
 11888 14ee 2946     		mov	r1, r5
 11889 14f0 2046     		mov	r0, r4
 11890 14f2 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 11891 14f6 FEF798BE 		b	.L2188
 11892              	.L2314:
 11893 14fa 874A     		ldr	r2, .L2353+24
 11894 14fc 6068     		ldr	r0, [r4, #4]
 11895 14fe 40F2B511 		movw	r1, #437
 11896 1502 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11897 1506 0127     		movs	r7, #1
 11898 1508 FEF77FBE 		b	.L2123
 11899              	.L2298:
 11900 150c 04EB8703 		add	r3, r4, r7, lsl #2
 11901 1510 93ED3B0A 		vldr.32	s0, [r3, #236]
 11902 1514 6068     		ldr	r0, [r4, #4]
 11903 1516 3946     		mov	r1, r7
 11904 1518 FFF7FEFF 		bl	_ZN8Platform14SetAxisMinimumEjfb
 11905 151c FFF798B9 		b	.L2305
 11906              	.L2323:
 11907 1520 AA68     		ldr	r2, [r5, #8]
 11908 1522 FEF7C1BD 		b	.L2013
 11909              	.L2329:
 11910 1526 04F5BE63 		add	r3, r4, #1520
 11911 152a 93ED000A 		vldr.32	s0, [r3]
 11912 152e 91E5     		b	.L2151
 11913              	.L2331:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 210


 11914 1530 D4F8E435 		ldr	r3, [r4, #1508]
 11915 1534 0233     		adds	r3, r3, #2
 11916 1536 80F06082 		bcs	.L2338
 11917 153a 94F81336 		ldrb	r3, [r4, #1555]	@ zero_extendqisi2
 11918 153e 012B     		cmp	r3, #1
 11919 1540 7FF4E7AD 		bne	.L2144
 11920 1544 94F812A6 		ldrb	r10, [r4, #1554]	@ zero_extendqisi2
 11921 1548 BAF1000F 		cmp	r10, #0
 11922 154c 7FF4E1AD 		bne	.L2144
 11923 1550 6068     		ldr	r0, [r4, #4]
 11924 1552 FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
 11925 1556 04F1EC09 		add	r9, r4, #236
 11926 155a 84ED3D0A 		vstr.32	s0, [r4, #244]
 11927 155e 5246     		mov	r2, r10
 11928 1560 4946     		mov	r1, r9
 11929 1562 F868     		ldr	r0, [r7, #12]
 11930 1564 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 11931 1568 4946     		mov	r1, r9
 11932 156a F868     		ldr	r0, [r7, #12]
 11933 156c FFF7FEFF 		bl	_ZN4Move18SetZeroHeightErrorEPKf
 11934 1570 0023     		movs	r3, #0
 11935 1572 C8F80030 		str	r3, [r8]	@ float
 11936 1576 D4F82C35 		ldr	r3, [r4, #1324]
 11937 157a 43F00403 		orr	r3, r3, #4
 11938 157e C4F82C35 		str	r3, [r4, #1324]
 11939 1582 C6E5     		b	.L2144
 11940              	.L2017:
 11941 1584 6549     		ldr	r1, .L2353+28
 11942 1586 3046     		mov	r0, r6
 11943 1588 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 11944 158c AB68     		ldr	r3, [r5, #8]
 11945 158e 0022     		movs	r2, #0
 11946 1590 1A75     		strb	r2, [r3, #20]
 11947 1592 94F8B430 		ldrb	r3, [r4, #180]	@ zero_extendqisi2
 11948 1596 002B     		cmp	r3, #0
 11949 1598 A3D0     		beq	.L2018
 11950 159a 2946     		mov	r1, r5
 11951 159c 2046     		mov	r0, r4
 11952 159e FFF7FEFF 		bl	_ZN6GCodes10AbortPrintER11GCodeBuffer
 11953 15a2 9EE7     		b	.L2018
 11954              	.L2141:
 11955 15a4 4146     		mov	r1, r8
 11956 15a6 FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 11957 15aa 94F80436 		ldrb	r3, [r4, #1540]	@ zero_extendqisi2
 11958 15ae 002B     		cmp	r3, #0
 11959 15b0 40F0D881 		bne	.L2143
 11960 15b4 5A4A     		ldr	r2, .L2353+32
 11961 15b6 6068     		ldr	r0, [r4, #4]
 11962 15b8 40F2B511 		movw	r1, #437
 11963 15bc 04F5BE68 		add	r8, r4, #1520
 11964 15c0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11965 15c4 0022     		movs	r2, #0
 11966 15c6 0123     		movs	r3, #1
 11967 15c8 C8F80020 		str	r2, [r8]	@ float
 11968 15cc 84F81236 		strb	r3, [r4, #1554]
 11969 15d0 9AE5     		b	.L2142
 11970              	.L2332:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 211


 11971 15d2 1846     		mov	r0, r3
 11972 15d4 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 11973 15d8 90F82F30 		ldrb	r3, [r0, #47]	@ zero_extendqisi2
 11974 15dc 002B     		cmp	r3, #0
 11975 15de 3FF4AFAD 		beq	.L2088
 11976 15e2 504B     		ldr	r3, .L2353+36
 11977 15e4 0121     		movs	r1, #1
 11978 15e6 1869     		ldr	r0, [r3, #16]
 11979 15e8 FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 11980 15ec A8E5     		b	.L2088
 11981              	.L2096:
 11982 15ee 3946     		mov	r1, r7
 11983 15f0 FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 11984 15f4 94F80436 		ldrb	r3, [r4, #1540]	@ zero_extendqisi2
 11985 15f8 03F0FF07 		and	r7, r3, #255
 11986 15fc 002B     		cmp	r3, #0
 11987 15fe 40F09C81 		bne	.L2098
 11988 1602 474A     		ldr	r2, .L2353+32
 11989 1604 6068     		ldr	r0, [r4, #4]
 11990 1606 40F2B511 		movw	r1, #437
 11991 160a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 11992 160e AB68     		ldr	r3, [r5, #8]
 11993 1610 1F75     		strb	r7, [r3, #20]
 11994 1612 6368     		ldr	r3, [r4, #4]
 11995 1614 93F8CC30 		ldrb	r3, [r3, #204]	@ zero_extendqisi2
 11996 1618 23B1     		cbz	r3, .L2100
 11997 161a 94F81136 		ldrb	r3, [r4, #1553]	@ zero_extendqisi2
 11998 161e 002B     		cmp	r3, #0
 11999 1620 00F02E82 		beq	.L2339
 12000              	.L2100:
 12001 1624 AA68     		ldr	r2, [r5, #8]
 12002 1626 FEF73FBD 		b	.L2013
 12003              	.L2328:
 12004 162a 1846     		mov	r0, r3
 12005 162c FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersE10ZProbeType
 12006 1630 90F82F30 		ldrb	r3, [r0, #47]	@ zero_extendqisi2
 12007 1634 002B     		cmp	r3, #0
 12008 1636 3FF423AC 		beq	.L2130
 12009 163a 3A4B     		ldr	r3, .L2353+36
 12010 163c 0121     		movs	r1, #1
 12011 163e 1869     		ldr	r0, [r3, #16]
 12012 1640 FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 12013 1644 1CE4     		b	.L2130
 12014              	.L2326:
 12015 1646 04F5BE63 		add	r3, r4, #1520
 12016 164a 93ED007A 		vldr.32	s14, [r3]
 12017 164e D4ED3D7A 		vldr.32	s15, [r4, #244]
 12018 1652 344B     		ldr	r3, .L2353+36
 12019 1654 77EEC77A 		vsub.f32	s15, s15, s14
 12020 1658 04F1EC07 		add	r7, r4, #236
 12021 165c D868     		ldr	r0, [r3, #12]
 12022 165e C4ED3D7A 		vstr.32	s15, [r4, #244]
 12023 1662 3946     		mov	r1, r7
 12024 1664 0022     		movs	r2, #0
 12025 1666 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 12026 166a 3946     		mov	r1, r7
 12027 166c 04F1C002 		add	r2, r4, #192
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 212


 12028 1670 2046     		mov	r0, r4
 12029 1672 FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
 12030 1676 0027     		movs	r7, #0
 12031 1678 FEF7C7BD 		b	.L2123
 12032              	.L2127:
 12033 167c 0023     		movs	r3, #0
 12034 167e 2A4A     		ldr	r2, .L2353+40
 12035 1680 0093     		str	r3, [sp]
 12036 1682 2946     		mov	r1, r5
 12037 1684 2046     		mov	r0, r4
 12038 1686 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12039 168a AA68     		ldr	r2, [r5, #8]
 12040 168c FEF70CBD 		b	.L2013
 12041              	.L2085:
 12042 1690 0023     		movs	r3, #0
 12043 1692 254A     		ldr	r2, .L2353+40
 12044 1694 0093     		str	r3, [sp]
 12045 1696 2946     		mov	r1, r5
 12046 1698 2046     		mov	r0, r4
 12047 169a FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12048 169e AA68     		ldr	r2, [r5, #8]
 12049 16a0 FEF702BD 		b	.L2013
 12050              	.L2053:
 12051 16a4 0023     		movs	r3, #0
 12052 16a6 0093     		str	r3, [sp]
 12053 16a8 204A     		ldr	r2, .L2353+44
 12054 16aa 2946     		mov	r1, r5
 12055 16ac 2046     		mov	r0, r4
 12056 16ae FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12057 16b2 0028     		cmp	r0, #0
 12058 16b4 00F0AE81 		beq	.L2054
 12059 16b8 AA68     		ldr	r2, [r5, #8]
 12060 16ba FEF7F5BC 		b	.L2013
 12061              	.L2051:
 12062 16be 0022     		movs	r2, #0
 12063 16c0 0092     		str	r2, [sp]
 12064 16c2 2946     		mov	r1, r5
 12065 16c4 1A4A     		ldr	r2, .L2353+48
 12066 16c6 2046     		mov	r0, r4
 12067 16c8 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12068 16cc AA68     		ldr	r2, [r5, #8]
 12069 16ce FEF7EBBC 		b	.L2013
 12070              	.L2160:
 12071 16d2 D4ED3D7A 		vldr.32	s15, [r4, #244]
 12072 16d6 37EEC00A 		vsub.f32	s0, s15, s0
 12073 16da 04F1EC08 		add	r8, r4, #236
 12074 16de 84ED3D0A 		vstr.32	s0, [r4, #244]
 12075 16e2 4146     		mov	r1, r8
 12076 16e4 0022     		movs	r2, #0
 12077 16e6 FFF7FEFF 		bl	_ZN4Move14SetNewPositionEPKfb
 12078 16ea 4146     		mov	r1, r8
 12079 16ec F868     		ldr	r0, [r7, #12]
 12080 16ee FFF7FEFF 		bl	_ZN4Move18SetZeroHeightErrorEPKf
 12081 16f2 4146     		mov	r1, r8
 12082 16f4 04F1C002 		add	r2, r4, #192
 12083 16f8 2046     		mov	r0, r4
 12084 16fa FFF7FEFF 		bl	_ZN6GCodes26ToolOffsetInverseTransformEPKfPf
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 213


 12085 16fe B5E4     		b	.L2161
 12086              	.L2354:
 12087              		.align	2
 12088              	.L2353:
 12089 1700 FC020000 		.word	.LC175
 12090 1704 8C000000 		.word	.LC153
 12091 1708 A4000000 		.word	.LC154
 12092 170c E8020000 		.word	.LC174
 12093 1710 40010000 		.word	.LC164
 12094 1714 C0000000 		.word	.LC155
 12095 1718 A0020000 		.word	.LC172
 12096 171c 3C000000 		.word	.LC151
 12097 1720 CC010000 		.word	.LC167
 12098 1724 00000000 		.word	reprap
 12099 1728 4C000000 		.word	.LC49
 12100 172c FC000000 		.word	.LC160
 12101 1730 F4000000 		.word	.LC159
 12102              	.L2105:
 12103 1734 FFF7FEFF 		bl	millis
 12104 1738 C4F80006 		str	r0, [r4, #1536]
 12105 173c D8F80030 		ldr	r3, [r8]	@ float
 12106 1740 3B60     		str	r3, [r7]	@ float
 12107 1742 AB68     		ldr	r3, [r5, #8]
 12108 1744 1B22     		movs	r2, #27
 12109 1746 1A75     		strb	r2, [r3, #20]
 12110 1748 AA68     		ldr	r2, [r5, #8]
 12111 174a FEF7ADBC 		b	.L2013
 12112              	.L2307:
 12113 174e 90F82C30 		ldrb	r3, [r0, #44]	@ zero_extendqisi2
 12114 1752 9A42     		cmp	r2, r3
 12115 1754 C0F0DA80 		bcc	.L2152
 12116 1758 07EE902A 		vmov	s15, r2	@ int
 12117 175c 04F5BF63 		add	r3, r4, #1528
 12118 1760 93ED007A 		vldr.32	s14, [r3]
 12119 1764 F8EEE77A 		vcvt.f32.s32	s15, s15
 12120 1768 87EE270A 		vdiv.f32	s0, s14, s15
 12121 176c 88ED000A 		vstr.32	s0, [r8]
 12122 1770 D0ED0A7A 		vldr.32	s15, [r0, #40]
 12123 1774 F5EEC07A 		vcmpe.f32	s15, #0
 12124 1778 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 12125 177c 7FF76AAC 		ble	.L2151
 12126 1780 C44A     		ldr	r2, .L2355
 12127 1782 6068     		ldr	r0, [r4, #4]
 12128 1784 40F2B521 		movw	r1, #693
 12129 1788 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 12130 178c 98ED000A 		vldr.32	s0, [r8]
 12131 1790 60E4     		b	.L2151
 12132              	.L2196:
 12133 1792 0220     		movs	r0, #2
 12134              	.L2070:
 12135 1794 0122     		movs	r2, #1
 12136 1796 8240     		lsls	r2, r2, r0
 12137 1798 23EA0203 		bic	r3, r3, r2
 12138 179c 84F8B436 		strb	r3, [r4, #1716]
 12139 17a0 FFF7FEFF 		bl	_ZN15FirmwareUpdater12UpdateModuleEj
 12140 17a4 AA68     		ldr	r2, [r5, #8]
 12141 17a6 FEF77FBC 		b	.L2013
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 214


 12142              	.L2335:
 12143 17aa BB4B     		ldr	r3, .L2355+4
 12144 17ac 0021     		movs	r1, #0
 12145 17ae 1869     		ldr	r0, [r3, #16]
 12146 17b0 FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 12147 17b4 B94A     		ldr	r2, .L2355+8
 12148 17b6 6068     		ldr	r0, [r4, #4]
 12149 17b8 40F2B511 		movw	r1, #437
 12150 17bc FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 12151 17c0 AB68     		ldr	r3, [r5, #8]
 12152 17c2 0022     		movs	r2, #0
 12153 17c4 1A75     		strb	r2, [r3, #20]
 12154 17c6 6368     		ldr	r3, [r4, #4]
 12155 17c8 93F8CC30 		ldrb	r3, [r3, #204]	@ zero_extendqisi2
 12156 17cc 23B1     		cbz	r3, .L2094
 12157 17ce 94F81136 		ldrb	r3, [r4, #1553]	@ zero_extendqisi2
 12158 17d2 002B     		cmp	r3, #0
 12159 17d4 00F03581 		beq	.L2340
 12160              	.L2094:
 12161 17d8 AA68     		ldr	r2, [r5, #8]
 12162 17da FEF765BC 		b	.L2013
 12163              	.L2336:
 12164 17de DFF8B892 		ldr	r9, .L2355+4
 12165 17e2 0021     		movs	r1, #0
 12166 17e4 D9F81000 		ldr	r0, [r9, #16]
 12167 17e8 FFF7FEFF 		bl	_ZN4Heat14SuspendHeatersEb
 12168 17ec AC4A     		ldr	r2, .L2355+12
 12169 17ee 6068     		ldr	r0, [r4, #4]
 12170 17f0 40F2B511 		movw	r1, #437
 12171 17f4 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 12172 17f8 D4F8E085 		ldr	r8, [r4, #1504]
 12173 17fc B8F1000F 		cmp	r8, #0
 12174 1800 0ADB     		blt	.L2135
 12175 1802 D9F80C90 		ldr	r9, [r9, #12]
 12176 1806 6068     		ldr	r0, [r4, #4]
 12177 1808 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
 12178 180c 3B46     		mov	r3, r7
 12179 180e 3A46     		mov	r2, r7
 12180 1810 4146     		mov	r1, r8
 12181 1812 4846     		mov	r0, r9
 12182 1814 FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 12183              	.L2135:
 12184 1818 AB68     		ldr	r3, [r5, #8]
 12185 181a 0022     		movs	r2, #0
 12186 181c 1A75     		strb	r2, [r3, #20]
 12187 181e 6368     		ldr	r3, [r4, #4]
 12188 1820 93F8CC30 		ldrb	r3, [r3, #204]	@ zero_extendqisi2
 12189 1824 23B1     		cbz	r3, .L2137
 12190 1826 94F81136 		ldrb	r3, [r4, #1553]	@ zero_extendqisi2
 12191 182a 002B     		cmp	r3, #0
 12192 182c 00F01281 		beq	.L2341
 12193              	.L2137:
 12194 1830 AA68     		ldr	r2, [r5, #8]
 12195 1832 FEF739BC 		b	.L2013
 12196              	.L2313:
 12197 1836 A068     		ldr	r0, [r4, #8]
 12198 1838 0368     		ldr	r3, [r0]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 215


 12199 183a 9B68     		ldr	r3, [r3, #8]
 12200 183c 9847     		blx	r3
 12201 183e 0146     		mov	r1, r0
 12202 1840 2846     		mov	r0, r5
 12203 1842 FFF7FEFF 		bl	_ZNK11GCodeBuffer15GetFilePositionEj
 12204 1846 97ED007A 		vldr.32	s14, [r7]
 12205 184a FEF7ABBC 		b	.L2174
 12206              	.L2333:
 12207 184e 04F5BE63 		add	r3, r4, #1520
 12208 1852 93ED000A 		vldr.32	s0, [r3]
 12209              	.L2104:
 12210 1856 904B     		ldr	r3, .L2355+4
 12211 1858 D4F80C26 		ldr	r2, [r4, #1548]
 12212 185c D868     		ldr	r0, [r3, #12]
 12213 185e D4F80816 		ldr	r1, [r4, #1544]
 12214 1862 00F58870 		add	r0, r0, #272
 12215 1866 FFF7FEFF 		bl	_ZN9HeightMap13SetGridHeightEjjf
 12216 186a AA68     		ldr	r2, [r5, #8]
 12217 186c 137D     		ldrb	r3, [r2, #20]	@ zero_extendqisi2
 12218 186e 0133     		adds	r3, r3, #1
 12219 1870 1375     		strb	r3, [r2, #20]
 12220 1872 AA68     		ldr	r2, [r5, #8]
 12221 1874 FEF718BC 		b	.L2013
 12222              	.L2324:
 12223 1878 04F1C001 		add	r1, r4, #192
 12224 187c FFF7ECB9 		b	.L2060
 12225              	.L2043:
 12226 1880 AB68     		ldr	r3, [r5, #8]
 12227 1882 8548     		ldr	r0, .L2355+4
 12228 1884 B3F91610 		ldrsh	r1, [r3, #22]
 12229 1888 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 12230 188c AA68     		ldr	r2, [r5, #8]
 12231 188e 0028     		cmp	r0, #0
 12232 1890 3EF40AAC 		beq	.L2013
 12233 1894 537D     		ldrb	r3, [r2, #21]	@ zero_extendqisi2
 12234 1896 5807     		lsls	r0, r3, #29
 12235 1898 7EF506AC 		bpl	.L2013
 12236 189c 14AF     		add	r7, sp, #80
 12237 189e 4FF00008 		mov	r8, #0
 12238 18a2 07F8348D 		strb	r8, [r7, #-52]!
 12239 18a6 7F49     		ldr	r1, .L2355+16
 12240 18a8 B2F91620 		ldrsh	r2, [r2, #22]
 12241 18ac 3846     		mov	r0, r7
 12242 18ae FFF7FEFF 		bl	_ZN6StringILj50EE6printfEPKcz
 12243 18b2 3A46     		mov	r2, r7
 12244 18b4 CDF80080 		str	r8, [sp]
 12245 18b8 4346     		mov	r3, r8
 12246 18ba 2946     		mov	r1, r5
 12247 18bc 2046     		mov	r0, r4
 12248 18be FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12249 18c2 AA68     		ldr	r2, [r5, #8]
 12250 18c4 FEF7F0BB 		b	.L2013
 12251              	.L2148:
 12252 18c8 0023     		movs	r3, #0
 12253 18ca 774A     		ldr	r2, .L2355+20
 12254 18cc 0093     		str	r3, [sp]
 12255 18ce 2946     		mov	r1, r5
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 216


 12256 18d0 2046     		mov	r0, r4
 12257 18d2 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12258 18d6 AA68     		ldr	r2, [r5, #8]
 12259 18d8 FEF7E6BB 		b	.L2013
 12260              	.L2301:
 12261 18dc 90F82C30 		ldrb	r3, [r0, #44]	@ zero_extendqisi2
 12262 18e0 9A42     		cmp	r2, r3
 12263 18e2 7FF472AC 		bne	.L2111
 12264 18e6 07EE902A 		vmov	s15, r2	@ int
 12265 18ea 04F5BF63 		add	r3, r4, #1528
 12266 18ee 93ED007A 		vldr.32	s14, [r3]
 12267 18f2 F8EEE77A 		vcvt.f32.s32	s15, s15
 12268 18f6 87EE270A 		vdiv.f32	s0, s14, s15
 12269 18fa 88ED000A 		vstr.32	s0, [r8]
 12270 18fe AAE7     		b	.L2104
 12271              	.L2337:
 12272 1900 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
 12273 1904 6068     		ldr	r0, [r4, #4]
 12274 1906 B1EE400A 		vneg.f32	s0, s0
 12275 190a 3CE5     		b	.L2139
 12276              	.L2152:
 12277 190c D8F80030 		ldr	r3, [r8]	@ float
 12278 1910 3B60     		str	r3, [r7]	@ float
 12279 1912 FFF7FEFF 		bl	millis
 12280 1916 C4F80006 		str	r0, [r4, #1536]
 12281 191a AB68     		ldr	r3, [r5, #8]
 12282 191c 2522     		movs	r2, #37
 12283 191e 1A75     		strb	r2, [r3, #20]
 12284 1920 AA68     		ldr	r2, [r5, #8]
 12285 1922 FEF7C1BB 		b	.L2013
 12286              	.L2101:
 12287 1926 0023     		movs	r3, #0
 12288 1928 5F4A     		ldr	r2, .L2355+20
 12289 192a 0093     		str	r3, [sp]
 12290 192c 2946     		mov	r1, r5
 12291 192e 2046     		mov	r0, r4
 12292 1930 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12293 1934 AA68     		ldr	r2, [r5, #8]
 12294 1936 FEF7B7BB 		b	.L2013
 12295              	.L2098:
 12296 193a 6068     		ldr	r0, [r4, #4]
 12297 193c 94ED3D8A 		vldr.32	s16, [r4, #244]
 12298 1940 FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
 12299 1944 38EE400A 		vsub.f32	s0, s16, s0
 12300 1948 04F5BE63 		add	r3, r4, #1520
 12301 194c 83ED000A 		vstr.32	s0, [r3]
 12302 1950 04F5BF63 		add	r3, r4, #1528
 12303 1954 D3ED007A 		vldr.32	s15, [r3]
 12304 1958 37EE800A 		vadd.f32	s0, s15, s0
 12305 195c 83ED000A 		vstr.32	s0, [r3]
 12306 1960 FFF727BB 		b	.L2097
 12307              	.L2143:
 12308 1964 4246     		mov	r2, r8
 12309 1966 07A9     		add	r1, sp, #28
 12310 1968 F868     		ldr	r0, [r7, #12]
 12311 196a FFF7FEFF 		bl	_ZNK4Move25GetCurrentMachinePositionEPfb
 12312 196e 04F5BD63 		add	r3, r4, #1512
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 217


 12313 1972 D3ED007A 		vldr.32	s15, [r3]
 12314 1976 9DED098A 		vldr.32	s16, [sp, #36]
 12315 197a 38EE678A 		vsub.f32	s16, s16, s15
 12316 197e 04F2EC53 		addw	r3, r4, #1516
 12317 1982 83ED008A 		vstr.32	s16, [r3]
 12318 1986 6068     		ldr	r0, [r4, #4]
 12319 1988 FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
 12320 198c 38EE400A 		vsub.f32	s0, s16, s0
 12321 1990 04F5BE68 		add	r8, r4, #1520
 12322 1994 88ED000A 		vstr.32	s0, [r8]
 12323 1998 04F5BF63 		add	r3, r4, #1528
 12324 199c D3ED007A 		vldr.32	s15, [r3]
 12325 19a0 37EE800A 		vadd.f32	s0, s15, s0
 12326 19a4 83ED000A 		vstr.32	s0, [r3]
 12327 19a8 FFF7AEBB 		b	.L2142
 12328              	.L2327:
 12329 19ac 3E4A     		ldr	r2, .L2355+20
 12330 19ae 0093     		str	r3, [sp]
 12331 19b0 2946     		mov	r1, r5
 12332 19b2 2046     		mov	r0, r4
 12333 19b4 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12334 19b8 AA68     		ldr	r2, [r5, #8]
 12335 19ba FEF775BB 		b	.L2013
 12336              	.L2110:
 12337 19be 37EE007A 		vadd.f32	s14, s14, s0
 12338 19c2 B6EE000A 		vmov.f32	s0, #5.0e-1
 12339 19c6 27EE000A 		vmul.f32	s0, s14, s0
 12340 19ca 88ED000A 		vstr.32	s0, [r8]
 12341 19ce 42E7     		b	.L2104
 12342              	.L2330:
 12343 19d0 354A     		ldr	r2, .L2355+20
 12344 19d2 0093     		str	r3, [sp]
 12345 19d4 2946     		mov	r1, r5
 12346 19d6 2046     		mov	r0, r4
 12347 19d8 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12348 19dc AA68     		ldr	r2, [r5, #8]
 12349 19de FEF763BB 		b	.L2013
 12350              	.L2315:
 12351 19e2 AB68     		ldr	r3, [r5, #8]
 12352 19e4 9868     		ldr	r0, [r3, #8]
 12353 19e6 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 12354 19ea 0746     		mov	r7, r0
 12355 19ec A068     		ldr	r0, [r4, #8]
 12356 19ee 0368     		ldr	r3, [r0]
 12357 19f0 9B68     		ldr	r3, [r3, #8]
 12358 19f2 9847     		blx	r3
 12359 19f4 381A     		subs	r0, r7, r0
 12360 19f6 FEF790BC 		b	.L2182
 12361              	.L2338:
 12362 19fa AB68     		ldr	r3, [r5, #8]
 12363 19fc 2C22     		movs	r2, #44
 12364 19fe 1A75     		strb	r2, [r3, #20]
 12365 1a00 6368     		ldr	r3, [r4, #4]
 12366 1a02 93F8CC30 		ldrb	r3, [r3, #204]	@ zero_extendqisi2
 12367 1a06 13B1     		cbz	r3, .L2147
 12368 1a08 94F81136 		ldrb	r3, [r4, #1553]	@ zero_extendqisi2
 12369 1a0c 7BB3     		cbz	r3, .L2342
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 218


 12370              	.L2147:
 12371 1a0e AA68     		ldr	r2, [r5, #8]
 12372 1a10 FEF74ABB 		b	.L2013
 12373              	.L2054:
 12374 1a14 0090     		str	r0, [sp]
 12375 1a16 254A     		ldr	r2, .L2355+24
 12376 1a18 3B46     		mov	r3, r7
 12377 1a1a 2946     		mov	r1, r5
 12378 1a1c 2046     		mov	r0, r4
 12379 1a1e FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12380 1a22 AA68     		ldr	r2, [r5, #8]
 12381 1a24 FEF740BB 		b	.L2013
 12382              	.L2334:
 12383 1a28 1F4A     		ldr	r2, .L2355+20
 12384 1a2a 0093     		str	r3, [sp]
 12385 1a2c 2946     		mov	r1, r5
 12386 1a2e 2046     		mov	r0, r4
 12387 1a30 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12388 1a34 AA68     		ldr	r2, [r5, #8]
 12389 1a36 FEF737BB 		b	.L2013
 12390              	.L2197:
 12391 1a3a F0EE667A 		vmov.f32	s15, s13
 12392 1a3e FFF7B2BB 		b	.L2106
 12393              	.L2340:
 12394 1a42 194A     		ldr	r2, .L2355+20
 12395 1a44 0093     		str	r3, [sp]
 12396 1a46 2946     		mov	r1, r5
 12397 1a48 2046     		mov	r0, r4
 12398 1a4a FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12399 1a4e AA68     		ldr	r2, [r5, #8]
 12400 1a50 FEF72ABB 		b	.L2013
 12401              	.L2341:
 12402 1a54 144A     		ldr	r2, .L2355+20
 12403 1a56 0093     		str	r3, [sp]
 12404 1a58 2946     		mov	r1, r5
 12405 1a5a 2046     		mov	r0, r4
 12406 1a5c FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12407 1a60 AA68     		ldr	r2, [r5, #8]
 12408 1a62 FEF721BB 		b	.L2013
 12409              	.L2198:
 12410 1a66 B0EE667A 		vmov.f32	s14, s13
 12411 1a6a FFF7DBBA 		b	.L2153
 12412              	.L2342:
 12413 1a6e 0E4A     		ldr	r2, .L2355+20
 12414 1a70 0093     		str	r3, [sp]
 12415 1a72 2946     		mov	r1, r5
 12416 1a74 2046     		mov	r0, r4
 12417 1a76 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12418 1a7a AA68     		ldr	r2, [r5, #8]
 12419 1a7c FEF714BB 		b	.L2013
 12420              	.L2339:
 12421 1a80 094A     		ldr	r2, .L2355+20
 12422 1a82 0093     		str	r3, [sp]
 12423 1a84 2946     		mov	r1, r5
 12424 1a86 2046     		mov	r0, r4
 12425 1a88 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12426 1a8c AA68     		ldr	r2, [r5, #8]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 219


 12427 1a8e FEF70BBB 		b	.L2013
 12428              	.L2356:
 12429 1a92 00BF     		.align	2
 12430              	.L2355:
 12431 1a94 FC010000 		.word	.LC168
 12432 1a98 00000000 		.word	reprap
 12433 1a9c 84010000 		.word	.LC165
 12434 1aa0 6C020000 		.word	.LC171
 12435 1aa4 E8000000 		.word	.LC158
 12436 1aa8 BC010000 		.word	.LC166
 12437 1aac F4000000 		.word	.LC159
 12438              		.size	_ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef, .-_ZN6GCodes15RunStateMachineER11GCo
 12439              		.section	.text._ZN6StringILj25EE6printfEPKcz,"axG",%progbits,_ZN6StringILj25EE6printfEPKcz,comdat
 12440              		.align	1
 12441              		.p2align 2,,3
 12442              		.weak	_ZN6StringILj25EE6printfEPKcz
 12443              		.syntax unified
 12444              		.thumb
 12445              		.thumb_func
 12446              		.fpu fpv4-sp-d16
 12447              		.type	_ZN6StringILj25EE6printfEPKcz, %function
 12448              	_ZN6StringILj25EE6printfEPKcz:
 12449              		@ args = 4, pretend = 12, frame = 16
 12450              		@ frame_needed = 0, uses_anonymous_args = 1
 12451 0000 0EB4     		push	{r1, r2, r3}
 12452 0002 00B5     		push	{lr}
 12453 0004 84B0     		sub	sp, sp, #16
 12454 0006 05AA     		add	r2, sp, #20
 12455 0008 0290     		str	r0, [sp, #8]
 12456 000a 52F8041B 		ldr	r1, [r2], #4
 12457 000e 0192     		str	r2, [sp, #4]
 12458 0010 1A23     		movs	r3, #26
 12459 0012 02A8     		add	r0, sp, #8
 12460 0014 0393     		str	r3, [sp, #12]
 12461 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 12462 001a 04B0     		add	sp, sp, #16
 12463              		@ sp needed
 12464 001c 5DF804EB 		ldr	lr, [sp], #4
 12465 0020 03B0     		add	sp, sp, #12
 12466 0022 7047     		bx	lr
 12467              		.size	_ZN6StringILj25EE6printfEPKcz, .-_ZN6StringILj25EE6printfEPKcz
 12468              		.section	.text._ZN6GCodes13CheckTriggersEv,"ax",%progbits
 12469              		.align	1
 12470              		.p2align 2,,3
 12471              		.global	_ZN6GCodes13CheckTriggersEv
 12472              		.syntax unified
 12473              		.thumb
 12474              		.thumb_func
 12475              		.fpu fpv4-sp-d16
 12476              		.type	_ZN6GCodes13CheckTriggersEv, %function
 12477              	_ZN6GCodes13CheckTriggersEv:
 12478              		@ args = 0, pretend = 0, frame = 32
 12479              		@ frame_needed = 0, uses_anonymous_args = 0
 12480 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 12481 0002 0446     		mov	r4, r0
 12482 0004 8BB0     		sub	sp, sp, #44
 12483 0006 4068     		ldr	r0, [r0, #4]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 220


 12484 0008 D4F8AC56 		ldr	r5, [r4, #1708]
 12485 000c FFF7FEFF 		bl	_ZNK8Platform19GetAllEndstopStatesEv
 12486 0010 4E4B     		ldr	r3, .L2394
 12487 0012 C4F8AC06 		str	r0, [r4, #1708]
 12488 0016 D3F820C0 		ldr	ip, [r3, #32]
 12489 001a 20EA0506 		bic	r6, r0, r5
 12490 001e 2146     		mov	r1, r4
 12491 0020 25EA0000 		bic	r0, r5, r0
 12492 0024 0023     		movs	r3, #0
 12493 0026 0A22     		movs	r2, #10
 12494 0028 0127     		movs	r7, #1
 12495 002a 0FE0     		b	.L2364
 12496              	.L2391:
 12497 002c 012D     		cmp	r5, #1
 12498 002e 22D0     		beq	.L2389
 12499              	.L2361:
 12500 0030 9A42     		cmp	r2, r3
 12501 0032 01F10C01 		add	r1, r1, #12
 12502 0036 06D9     		bls	.L2363
 12503 0038 D4F8B056 		ldr	r5, [r4, #1712]
 12504 003c DD40     		lsrs	r5, r5, r3
 12505 003e 15F0010F 		tst	r5, #1
 12506 0042 18BF     		it	ne
 12507 0044 1A46     		movne	r2, r3
 12508              	.L2363:
 12509 0046 0133     		adds	r3, r3, #1
 12510 0048 0A2B     		cmp	r3, #10
 12511 004a 21D0     		beq	.L2390
 12512              	.L2364:
 12513 004c D1F83456 		ldr	r5, [r1, #1588]
 12514 0050 2E42     		tst	r6, r5
 12515 0052 03D1     		bne	.L2360
 12516 0054 D1F83856 		ldr	r5, [r1, #1592]
 12517 0058 2842     		tst	r0, r5
 12518 005a E9D0     		beq	.L2361
 12519              	.L2360:
 12520 005c 91F83C56 		ldrb	r5, [r1, #1596]	@ zero_extendqisi2
 12521 0060 002D     		cmp	r5, #0
 12522 0062 E3D1     		bne	.L2391
 12523 0064 D4F8B056 		ldr	r5, [r4, #1712]
 12524 0068 07FA03FE 		lsl	lr, r7, r3
 12525 006c 45EA0E05 		orr	r5, r5, lr
 12526 0070 C4F8B056 		str	r5, [r4, #1712]
 12527 0074 DCE7     		b	.L2361
 12528              	.L2389:
 12529 0076 9CF80C50 		ldrb	r5, [ip, #12]	@ zero_extendqisi2
 12530 007a 002D     		cmp	r5, #0
 12531 007c D8D0     		beq	.L2361
 12532 007e D4F8B056 		ldr	r5, [r4, #1712]
 12533 0082 07FA03FE 		lsl	lr, r7, r3
 12534 0086 45EA0E05 		orr	r5, r5, lr
 12535 008a C4F8B056 		str	r5, [r4, #1712]
 12536 008e CFE7     		b	.L2361
 12537              	.L2390:
 12538 0090 42B1     		cbz	r2, .L2392
 12539 0092 0A2A     		cmp	r2, #10
 12540 0094 04D0     		beq	.L2359
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 221


 12541 0096 636D     		ldr	r3, [r4, #84]
 12542 0098 1B68     		ldr	r3, [r3]
 12543 009a 9B68     		ldr	r3, [r3, #8]
 12544 009c 9968     		ldr	r1, [r3, #8]
 12545 009e 61B1     		cbz	r1, .L2393
 12546              	.L2359:
 12547 00a0 0BB0     		add	sp, sp, #44
 12548              		@ sp needed
 12549 00a2 F0BD     		pop	{r4, r5, r6, r7, pc}
 12550              	.L2392:
 12551 00a4 D4F8B036 		ldr	r3, [r4, #1712]
 12552 00a8 23F00103 		bic	r3, r3, #1
 12553 00ac C4F8B036 		str	r3, [r4, #1712]
 12554 00b0 2046     		mov	r0, r4
 12555 00b2 FFF7FEFF 		bl	_ZN6GCodes15DoEmergencyStopEv
 12556 00b6 0BB0     		add	sp, sp, #44
 12557              		@ sp needed
 12558 00b8 F0BD     		pop	{r4, r5, r6, r7, pc}
 12559              	.L2393:
 12560 00ba 1D7D     		ldrb	r5, [r3, #20]	@ zero_extendqisi2
 12561 00bc 002D     		cmp	r5, #0
 12562 00be EFD1     		bne	.L2359
 12563 00c0 012A     		cmp	r2, #1
 12564 00c2 09D1     		bne	.L2369
 12565 00c4 9CF80C30 		ldrb	r3, [ip, #12]	@ zero_extendqisi2
 12566 00c8 FBB9     		cbnz	r3, .L2370
 12567              	.L2371:
 12568 00ca D4F8B036 		ldr	r3, [r4, #1712]
 12569 00ce 23F00203 		bic	r3, r3, #2
 12570 00d2 C4F8B036 		str	r3, [r4, #1712]
 12571 00d6 E3E7     		b	.L2359
 12572              	.L2369:
 12573 00d8 0AAE     		add	r6, sp, #40
 12574 00da D4F8B016 		ldr	r1, [r4, #1712]
 12575 00de 06F81C5D 		strb	r5, [r6, #-28]!
 12576 00e2 0127     		movs	r7, #1
 12577 00e4 07FA02F3 		lsl	r3, r7, r2
 12578 00e8 21EA0301 		bic	r1, r1, r3
 12579 00ec C4F8B016 		str	r1, [r4, #1712]
 12580 00f0 3046     		mov	r0, r6
 12581 00f2 1749     		ldr	r1, .L2394+4
 12582 00f4 FFF7FEFF 		bl	_ZN6StringILj25EE6printfEPKcz
 12583 00f8 636D     		ldr	r3, [r4, #84]
 12584 00fa 3246     		mov	r2, r6
 12585 00fc 1968     		ldr	r1, [r3]
 12586 00fe 0095     		str	r5, [sp]
 12587 0100 3B46     		mov	r3, r7
 12588 0102 2046     		mov	r0, r4
 12589 0104 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 12590 0108 CAE7     		b	.L2359
 12591              	.L2370:
 12592 010a 2046     		mov	r0, r4
 12593 010c FFF7FEFF 		bl	_ZNK6GCodes16IsReallyPrintingEv.part.54
 12594 0110 0028     		cmp	r0, #0
 12595 0112 DAD0     		beq	.L2371
 12596 0114 636D     		ldr	r3, [r4, #84]
 12597 0116 A16E     		ldr	r1, [r4, #104]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 222


 12598 0118 1B68     		ldr	r3, [r3]
 12599 011a 8B42     		cmp	r3, r1
 12600 011c 09D0     		beq	.L2372
 12601 011e 0029     		cmp	r1, #0
 12602 0120 BED1     		bne	.L2359
 12603 0122 A366     		str	r3, [r4, #104]
 12604 0124 9A68     		ldr	r2, [r3, #8]
 12605 0126 D368     		ldr	r3, [r2, #12]
 12606 0128 43F00103 		orr	r3, r3, #1
 12607 012c D360     		str	r3, [r2, #12]
 12608 012e 636D     		ldr	r3, [r4, #84]
 12609 0130 1968     		ldr	r1, [r3]
 12610              	.L2372:
 12611 0132 D4F8B026 		ldr	r2, [r4, #1712]
 12612 0136 074B     		ldr	r3, .L2394+8
 12613 0138 22F00202 		bic	r2, r2, #2
 12614 013c C4F8B026 		str	r2, [r4, #1712]
 12615 0140 2046     		mov	r0, r4
 12616 0142 0322     		movs	r2, #3
 12617 0144 FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 12618 0148 AAE7     		b	.L2359
 12619              	.L2395:
 12620 014a 00BF     		.align	2
 12621              	.L2394:
 12622 014c 00000000 		.word	reprap
 12623 0150 24000000 		.word	.LC179
 12624 0154 00000000 		.word	.LC178
 12625              		.size	_ZN6GCodes13CheckTriggersEv, .-_ZN6GCodes13CheckTriggersEv
 12626              		.section	.text._ZN6StringILj100EE6printfEPKcz,"axG",%progbits,_ZN6StringILj100EE6printfEPKcz,comda
 12627              		.align	1
 12628              		.p2align 2,,3
 12629              		.weak	_ZN6StringILj100EE6printfEPKcz
 12630              		.syntax unified
 12631              		.thumb
 12632              		.thumb_func
 12633              		.fpu fpv4-sp-d16
 12634              		.type	_ZN6StringILj100EE6printfEPKcz, %function
 12635              	_ZN6StringILj100EE6printfEPKcz:
 12636              		@ args = 4, pretend = 12, frame = 16
 12637              		@ frame_needed = 0, uses_anonymous_args = 1
 12638 0000 0EB4     		push	{r1, r2, r3}
 12639 0002 00B5     		push	{lr}
 12640 0004 84B0     		sub	sp, sp, #16
 12641 0006 05AA     		add	r2, sp, #20
 12642 0008 0290     		str	r0, [sp, #8]
 12643 000a 52F8041B 		ldr	r1, [r2], #4
 12644 000e 0192     		str	r2, [sp, #4]
 12645 0010 6523     		movs	r3, #101
 12646 0012 02A8     		add	r0, sp, #8
 12647 0014 0393     		str	r3, [sp, #12]
 12648 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 12649 001a 04B0     		add	sp, sp, #16
 12650              		@ sp needed
 12651 001c 5DF804EB 		ldr	lr, [sp], #4
 12652 0020 03B0     		add	sp, sp, #12
 12653 0022 7047     		bx	lr
 12654              		.size	_ZN6StringILj100EE6printfEPKcz, .-_ZN6StringILj100EE6printfEPKcz
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 223


 12655              		.section	.text._ZN6GCodes13CheckFilamentEv,"ax",%progbits
 12656              		.align	1
 12657              		.p2align 2,,3
 12658              		.global	_ZN6GCodes13CheckFilamentEv
 12659              		.syntax unified
 12660              		.thumb
 12661              		.thumb_func
 12662              		.fpu fpv4-sp-d16
 12663              		.type	_ZN6GCodes13CheckFilamentEv, %function
 12664              	_ZN6GCodes13CheckFilamentEv:
 12665              		@ args = 0, pretend = 0, frame = 104
 12666              		@ frame_needed = 0, uses_anonymous_args = 0
 12667 0000 90F82427 		ldrb	r2, [r0, #1828]	@ zero_extendqisi2
 12668 0004 1AB1     		cbz	r2, .L2410
 12669 0006 1F4A     		ldr	r2, .L2414
 12670 0008 126A     		ldr	r2, [r2, #32]
 12671 000a 127B     		ldrb	r2, [r2, #12]	@ zero_extendqisi2
 12672 000c 02B9     		cbnz	r2, .L2413
 12673              	.L2410:
 12674 000e 7047     		bx	lr
 12675              	.L2413:
 12676 0010 F0B5     		push	{r4, r5, r6, r7, lr}
 12677 0012 9BB0     		sub	sp, sp, #108
 12678 0014 0446     		mov	r4, r0
 12679 0016 FFF7FEFF 		bl	_ZNK6GCodes16IsReallyPrintingEv.part.54
 12680 001a 88B3     		cbz	r0, .L2398
 12681 001c 236E     		ldr	r3, [r4, #96]
 12682 001e 1B68     		ldr	r3, [r3]
 12683 0020 9A68     		ldr	r2, [r3, #8]
 12684 0022 127D     		ldrb	r2, [r2, #20]	@ zero_extendqisi2
 12685 0024 62BB     		cbnz	r2, .L2398
 12686 0026 93F82820 		ldrb	r2, [r3, #40]	@ zero_extendqisi2
 12687 002a 083A     		subs	r2, r2, #8
 12688 002c 012A     		cmp	r2, #1
 12689 002e 27D9     		bls	.L2398
 12690 0030 A26E     		ldr	r2, [r4, #104]
 12691 0032 9342     		cmp	r3, r2
 12692 0034 06D0     		beq	.L2402
 12693 0036 1ABB     		cbnz	r2, .L2398
 12694 0038 A366     		str	r3, [r4, #104]
 12695 003a 9A68     		ldr	r2, [r3, #8]
 12696 003c D368     		ldr	r3, [r2, #12]
 12697 003e 43F00103 		orr	r3, r3, #1
 12698 0042 D360     		str	r3, [r2, #12]
 12699              	.L2402:
 12700 0044 1AAD     		add	r5, sp, #104
 12701 0046 0026     		movs	r6, #0
 12702 0048 94F82407 		ldrb	r0, [r4, #1828]	@ zero_extendqisi2
 12703 004c 05F8686D 		strb	r6, [r5, #-104]!
 12704 0050 D4F82877 		ldr	r7, [r4, #1832]
 12705 0054 FFF7FEFF 		bl	_ZN15FilamentMonitor15GetErrorMessageE20FilamentSensorStatus
 12706 0058 3A46     		mov	r2, r7
 12707 005a 0346     		mov	r3, r0
 12708 005c 0A49     		ldr	r1, .L2414+4
 12709 005e 2846     		mov	r0, r5
 12710 0060 FFF7FEFF 		bl	_ZN6StringILj100EE6printfEPKcz
 12711 0064 226E     		ldr	r2, [r4, #96]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 224


 12712 0066 2046     		mov	r0, r4
 12713 0068 1168     		ldr	r1, [r2]
 12714 006a 2B46     		mov	r3, r5
 12715 006c 0522     		movs	r2, #5
 12716 006e FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 12717 0072 84F82467 		strb	r6, [r4, #1828]
 12718 0076 2A46     		mov	r2, r5
 12719 0078 6068     		ldr	r0, [r4, #4]
 12720 007a 8021     		movs	r1, #128
 12721 007c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 12722              	.L2398:
 12723 0080 1BB0     		add	sp, sp, #108
 12724              		@ sp needed
 12725 0082 F0BD     		pop	{r4, r5, r6, r7, pc}
 12726              	.L2415:
 12727              		.align	2
 12728              	.L2414:
 12729 0084 00000000 		.word	reprap
 12730 0088 00000000 		.word	.LC180
 12731              		.size	_ZN6GCodes13CheckFilamentEv, .-_ZN6GCodes13CheckFilamentEv
 12732              		.section	.text._ZN6GCodes12PauseOnStallEm,"ax",%progbits
 12733              		.align	1
 12734              		.p2align 2,,3
 12735              		.global	_ZN6GCodes12PauseOnStallEm
 12736              		.syntax unified
 12737              		.thumb
 12738              		.thumb_func
 12739              		.fpu fpv4-sp-d16
 12740              		.type	_ZN6GCodes12PauseOnStallEm, %function
 12741              	_ZN6GCodes12PauseOnStallEm:
 12742              		@ args = 0, pretend = 0, frame = 112
 12743              		@ frame_needed = 0, uses_anonymous_args = 0
 12744 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 12745 0002 234B     		ldr	r3, .L2429
 12746 0004 1B6A     		ldr	r3, [r3, #32]
 12747 0006 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 12748 0008 9DB0     		sub	sp, sp, #116
 12749 000a 1BB9     		cbnz	r3, .L2417
 12750              	.L2419:
 12751 000c 0124     		movs	r4, #1
 12752              	.L2418:
 12753 000e 2046     		mov	r0, r4
 12754 0010 1DB0     		add	sp, sp, #116
 12755              		@ sp needed
 12756 0012 F0BD     		pop	{r4, r5, r6, r7, pc}
 12757              	.L2417:
 12758 0014 0646     		mov	r6, r0
 12759 0016 0D46     		mov	r5, r1
 12760 0018 FFF7FEFF 		bl	_ZNK6GCodes16IsReallyPrintingEv.part.54
 12761 001c 0446     		mov	r4, r0
 12762 001e 0028     		cmp	r0, #0
 12763 0020 F4D0     		beq	.L2419
 12764 0022 336E     		ldr	r3, [r6, #96]
 12765 0024 1B68     		ldr	r3, [r3]
 12766 0026 9A68     		ldr	r2, [r3, #8]
 12767 0028 127D     		ldrb	r2, [r2, #20]	@ zero_extendqisi2
 12768 002a 52B9     		cbnz	r2, .L2421
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 225


 12769 002c 93F82810 		ldrb	r1, [r3, #40]	@ zero_extendqisi2
 12770 0030 0839     		subs	r1, r1, #8
 12771 0032 0129     		cmp	r1, #1
 12772 0034 05D9     		bls	.L2421
 12773 0036 B16E     		ldr	r1, [r6, #104]
 12774 0038 8B42     		cmp	r3, r1
 12775 003a 0CD0     		beq	.L2420
 12776 003c 29B1     		cbz	r1, .L2428
 12777 003e 1446     		mov	r4, r2
 12778 0040 E5E7     		b	.L2418
 12779              	.L2421:
 12780 0042 0024     		movs	r4, #0
 12781 0044 2046     		mov	r0, r4
 12782 0046 1DB0     		add	sp, sp, #116
 12783              		@ sp needed
 12784 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 12785              	.L2428:
 12786 004a B366     		str	r3, [r6, #104]
 12787 004c 9A68     		ldr	r2, [r3, #8]
 12788 004e D368     		ldr	r3, [r2, #12]
 12789 0050 43F00103 		orr	r3, r3, #1
 12790 0054 D360     		str	r3, [r2, #12]
 12791              	.L2420:
 12792 0056 1CAF     		add	r7, sp, #112
 12793 0058 0023     		movs	r3, #0
 12794 005a 07F8683D 		strb	r3, [r7, #-104]!
 12795 005e 0D49     		ldr	r1, .L2429+4
 12796 0060 3846     		mov	r0, r7
 12797 0062 FFF7FEFF 		bl	_ZN6StringILj100EE6printfEPKcz
 12798 0066 2946     		mov	r1, r5
 12799 0068 6523     		movs	r3, #101
 12800 006a 6846     		mov	r0, sp
 12801 006c CDE90073 		strd	r7, r3, [sp]
 12802 0070 FFF7FEFF 		bl	_Z11ListDriversRK9StringRefm
 12803 0074 326E     		ldr	r2, [r6, #96]
 12804 0076 3046     		mov	r0, r6
 12805 0078 1168     		ldr	r1, [r2]
 12806 007a 3B46     		mov	r3, r7
 12807 007c 0622     		movs	r2, #6
 12808 007e FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc
 12809 0082 3A46     		mov	r2, r7
 12810 0084 7068     		ldr	r0, [r6, #4]
 12811 0086 8021     		movs	r1, #128
 12812 0088 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 12813 008c BFE7     		b	.L2418
 12814              	.L2430:
 12815 008e 00BF     		.align	2
 12816              	.L2429:
 12817 0090 00000000 		.word	reprap
 12818 0094 00000000 		.word	.LC181
 12819              		.size	_ZN6GCodes12PauseOnStallEm, .-_ZN6GCodes12PauseOnStallEm
 12820              		.section	.text._ZN6StringILj220EE6printfEPKcz,"axG",%progbits,_ZN6StringILj220EE6printfEPKcz,comda
 12821              		.align	1
 12822              		.p2align 2,,3
 12823              		.weak	_ZN6StringILj220EE6printfEPKcz
 12824              		.syntax unified
 12825              		.thumb
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 226


 12826              		.thumb_func
 12827              		.fpu fpv4-sp-d16
 12828              		.type	_ZN6StringILj220EE6printfEPKcz, %function
 12829              	_ZN6StringILj220EE6printfEPKcz:
 12830              		@ args = 4, pretend = 12, frame = 16
 12831              		@ frame_needed = 0, uses_anonymous_args = 1
 12832 0000 0EB4     		push	{r1, r2, r3}
 12833 0002 00B5     		push	{lr}
 12834 0004 84B0     		sub	sp, sp, #16
 12835 0006 05AA     		add	r2, sp, #20
 12836 0008 0290     		str	r0, [sp, #8]
 12837 000a 52F8041B 		ldr	r1, [r2], #4
 12838 000e 0192     		str	r2, [sp, #4]
 12839 0010 DD23     		movs	r3, #221
 12840 0012 02A8     		add	r0, sp, #8
 12841 0014 0393     		str	r3, [sp, #12]
 12842 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 12843 001a 04B0     		add	sp, sp, #16
 12844              		@ sp needed
 12845 001c 5DF804EB 		ldr	lr, [sp], #4
 12846 0020 03B0     		add	sp, sp, #12
 12847 0022 7047     		bx	lr
 12848              		.size	_ZN6StringILj220EE6printfEPKcz, .-_ZN6StringILj220EE6printfEPKcz
 12849              		.section	.text._ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef,"ax",%progbits
 12850              		.align	1
 12851              		.p2align 2,,3
 12852              		.global	_ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef
 12853              		.syntax unified
 12854              		.thumb
 12855              		.thumb_func
 12856              		.fpu fpv4-sp-d16
 12857              		.type	_ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef, %function
 12858              	_ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef:
 12859              		@ args = 0, pretend = 0, frame = 264
 12860              		@ frame_needed = 0, uses_anonymous_args = 0
 12861 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 12862 0004 4C4B     		ldr	r3, .L2456
 12863 0006 D3F8EC40 		ldr	r4, [r3, #236]
 12864 000a C4B0     		sub	sp, sp, #272
 12865 000c 1646     		mov	r6, r2
 12866 000e 002C     		cmp	r4, #0
 12867 0010 39D0     		beq	.L2452
 12868 0012 6368     		ldr	r3, [r4, #4]
 12869 0014 7BB3     		cbz	r3, .L2453
 12870 0016 0D46     		mov	r5, r1
 12871 0018 8046     		mov	r8, r0
 12872 001a 5321     		movs	r1, #83
 12873 001c 2846     		mov	r0, r5
 12874 001e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 12875 0022 98B9     		cbnz	r0, .L2454
 12876 0024 6268     		ldr	r2, [r4, #4]
 12877 0026 137A     		ldrb	r3, [r2, #8]	@ zero_extendqisi2
 12878 0028 3BB9     		cbnz	r3, .L2455
 12879 002a 3046     		mov	r0, r6
 12880 002c 4349     		ldr	r1, .L2456+4
 12881 002e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 12882              	.L2451:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 227


 12883 0032 0120     		movs	r0, #1
 12884              	.L2435:
 12885 0034 44B0     		add	sp, sp, #272
 12886              		@ sp needed
 12887 0036 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 12888              	.L2455:
 12889 003a 0832     		adds	r2, r2, #8
 12890 003c 3046     		mov	r0, r6
 12891 003e 4049     		ldr	r1, .L2456+8
 12892 0040 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 12893 0044 0120     		movs	r0, #1
 12894 0046 44B0     		add	sp, sp, #272
 12895              		@ sp needed
 12896 0048 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 12897              	.L2454:
 12898 004c 03AF     		add	r7, sp, #12
 12899 004e 0022     		movs	r2, #0
 12900 0050 2123     		movs	r3, #33
 12901 0052 0CA9     		add	r1, sp, #48
 12902 0054 2846     		mov	r0, r5
 12903 0056 0C97     		str	r7, [sp, #48]
 12904 0058 3A70     		strb	r2, [r7]
 12905 005a 0D93     		str	r3, [sp, #52]
 12906 005c FFF7FEFF 		bl	_ZN11GCodeBuffer15GetQuotedStringERK9StringRef
 12907 0060 08B1     		cbz	r0, .L2438
 12908 0062 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 12909 0064 ABB9     		cbnz	r3, .L2439
 12910              	.L2438:
 12911 0066 3046     		mov	r0, r6
 12912 0068 3649     		ldr	r1, .L2456+12
 12913 006a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12914 006e 0220     		movs	r0, #2
 12915 0070 44B0     		add	sp, sp, #272
 12916              		@ sp needed
 12917 0072 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 12918              	.L2453:
 12919 0076 1046     		mov	r0, r2
 12920 0078 3349     		ldr	r1, .L2456+16
 12921 007a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12922 007e 0220     		movs	r0, #2
 12923 0080 44B0     		add	sp, sp, #272
 12924              		@ sp needed
 12925 0082 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 12926              	.L2452:
 12927 0086 1046     		mov	r0, r2
 12928 0088 3049     		ldr	r1, .L2456+20
 12929 008a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12930 008e 0220     		movs	r0, #2
 12931 0090 D0E7     		b	.L2435
 12932              	.L2439:
 12933 0092 2F49     		ldr	r1, .L2456+24
 12934 0094 3846     		mov	r0, r7
 12935 0096 FFF7FEFF 		bl	_Z14StringContainsPKcS0_
 12936 009a 0028     		cmp	r0, #0
 12937 009c 05DB     		blt	.L2441
 12938 009e 3046     		mov	r0, r6
 12939 00a0 2C49     		ldr	r1, .L2456+28
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 228


 12940 00a2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12941 00a6 0220     		movs	r0, #2
 12942 00a8 C4E7     		b	.L2435
 12943              	.L2441:
 12944 00aa 6168     		ldr	r1, [r4, #4]
 12945 00ac 3846     		mov	r0, r7
 12946 00ae 0831     		adds	r1, r1, #8
 12947 00b0 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 12948 00b4 0028     		cmp	r0, #0
 12949 00b6 BCD1     		bne	.L2451
 12950 00b8 6368     		ldr	r3, [r4, #4]
 12951 00ba 1B7A     		ldrb	r3, [r3, #8]	@ zero_extendqisi2
 12952 00bc 2BB1     		cbz	r3, .L2442
 12953 00be 3046     		mov	r0, r6
 12954 00c0 2549     		ldr	r1, .L2456+32
 12955 00c2 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12956 00c6 0220     		movs	r0, #2
 12957 00c8 B4E7     		b	.L2435
 12958              	.L2442:
 12959 00ca D8F80430 		ldr	r3, [r8, #4]
 12960 00ce 2349     		ldr	r1, .L2456+36
 12961 00d0 D3F8DC0B 		ldr	r0, [r3, #3036]
 12962 00d4 3A46     		mov	r2, r7
 12963 00d6 FFF7FEFF 		bl	_ZN11MassStorage15DirectoryExistsEPKcS1_
 12964 00da 28B9     		cbnz	r0, .L2443
 12965 00dc 3046     		mov	r0, r6
 12966 00de 2049     		ldr	r1, .L2456+40
 12967 00e0 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12968 00e4 0220     		movs	r0, #2
 12969 00e6 A5E7     		b	.L2435
 12970              	.L2443:
 12971 00e8 3846     		mov	r0, r7
 12972 00ea FFF7FEFF 		bl	_ZN8Filament7IsInUseEPKc
 12973 00ee 28B1     		cbz	r0, .L2444
 12974 00f0 3046     		mov	r0, r6
 12975 00f2 1C49     		ldr	r1, .L2456+44
 12976 00f4 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 12977 00f8 0220     		movs	r0, #2
 12978 00fa 9BE7     		b	.L2435
 12979              	.L2444:
 12980 00fc 2022     		movs	r2, #32
 12981 00fe 3946     		mov	r1, r7
 12982 0100 08F24970 		addw	r0, r8, #1865
 12983 0104 FFF7FEFF 		bl	_Z11SafeStrncpyPcPKcj
 12984 0108 AC68     		ldr	r4, [r5, #8]
 12985 010a 1748     		ldr	r0, .L2456+48
 12986 010c 134A     		ldr	r2, .L2456+36
 12987 010e 1749     		ldr	r1, .L2456+52
 12988 0110 2F26     		movs	r6, #47
 12989 0112 2675     		strb	r6, [r4, #20]
 12990 0114 3B46     		mov	r3, r7
 12991 0116 0024     		movs	r4, #0
 12992 0118 0090     		str	r0, [sp]
 12993 011a 0CA8     		add	r0, sp, #48
 12994 011c 8DF83040 		strb	r4, [sp, #48]
 12995 0120 FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 12996 0124 0094     		str	r4, [sp]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 229


 12997 0126 0CAA     		add	r2, sp, #48
 12998 0128 2946     		mov	r1, r5
 12999 012a 4046     		mov	r0, r8
 13000 012c 0123     		movs	r3, #1
 13001 012e FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 13002 0132 0120     		movs	r0, #1
 13003 0134 7EE7     		b	.L2435
 13004              	.L2457:
 13005 0136 00BF     		.align	2
 13006              	.L2456:
 13007 0138 00000000 		.word	reprap
 13008 013c 88010000 		.word	.LC194
 13009 0140 5C010000 		.word	.LC193
 13010 0144 50000000 		.word	.LC184
 13011 0148 14000000 		.word	.LC183
 13012 014c 00000000 		.word	.LC182
 13013 0150 68000000 		.word	.LC185
 13014 0154 6C000000 		.word	.LC186
 13015 0158 94000000 		.word	.LC187
 13016 015c D8000000 		.word	.LC188
 13017 0160 E8000000 		.word	.LC189
 13018 0164 14010000 		.word	.LC190
 13019 0168 54010000 		.word	.LC192
 13020 016c 4C010000 		.word	.LC191
 13021              		.size	_ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef, .-_ZN6GCodes12LoadFilamentER11GCodeBuff
 13022              		.section	.text._ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef,"ax",%progbits
 13023              		.align	1
 13024              		.p2align 2,,3
 13025              		.global	_ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef
 13026              		.syntax unified
 13027              		.thumb
 13028              		.thumb_func
 13029              		.fpu fpv4-sp-d16
 13030              		.type	_ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef, %function
 13031              	_ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef:
 13032              		@ args = 0, pretend = 0, frame = 224
 13033              		@ frame_needed = 0, uses_anonymous_args = 0
 13034 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 13035 0002 1B4B     		ldr	r3, .L2467
 13036 0004 D3F8EC30 		ldr	r3, [r3, #236]
 13037 0008 BBB0     		sub	sp, sp, #236
 13038 000a 23B3     		cbz	r3, .L2464
 13039 000c 0C46     		mov	r4, r1
 13040 000e 5968     		ldr	r1, [r3, #4]
 13041 0010 39B3     		cbz	r1, .L2465
 13042 0012 0A7A     		ldrb	r2, [r1, #8]	@ zero_extendqisi2
 13043 0014 12B9     		cbnz	r2, .L2466
 13044 0016 0120     		movs	r0, #1
 13045              	.L2460:
 13046 0018 3BB0     		add	sp, sp, #236
 13047              		@ sp needed
 13048 001a F0BD     		pop	{r4, r5, r6, r7, pc}
 13049              	.L2466:
 13050 001c A768     		ldr	r7, [r4, #8]
 13051 001e 154A     		ldr	r2, .L2467+4
 13052 0020 1549     		ldr	r1, .L2467+8
 13053 0022 3AAD     		add	r5, sp, #232
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 230


 13054 0024 4FF0300C 		mov	ip, #48
 13055 0028 87F814C0 		strb	ip, [r7, #20]
 13056 002c 0027     		movs	r7, #0
 13057 002e 05F8E07D 		strb	r7, [r5, #-224]!
 13058 0032 5B68     		ldr	r3, [r3, #4]
 13059 0034 0646     		mov	r6, r0
 13060 0036 1148     		ldr	r0, .L2467+12
 13061 0038 0090     		str	r0, [sp]
 13062 003a 0833     		adds	r3, r3, #8
 13063 003c 2846     		mov	r0, r5
 13064 003e FFF7FEFF 		bl	_ZN6StringILj220EE6printfEPKcz
 13065 0042 2A46     		mov	r2, r5
 13066 0044 0097     		str	r7, [sp]
 13067 0046 2146     		mov	r1, r4
 13068 0048 3046     		mov	r0, r6
 13069 004a 0123     		movs	r3, #1
 13070 004c FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi
 13071 0050 0120     		movs	r0, #1
 13072 0052 3BB0     		add	sp, sp, #236
 13073              		@ sp needed
 13074 0054 F0BD     		pop	{r4, r5, r6, r7, pc}
 13075              	.L2464:
 13076 0056 1046     		mov	r0, r2
 13077 0058 0949     		ldr	r1, .L2467+16
 13078 005a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 13079 005e 0220     		movs	r0, #2
 13080 0060 DAE7     		b	.L2460
 13081              	.L2465:
 13082 0062 1046     		mov	r0, r2
 13083 0064 0749     		ldr	r1, .L2467+20
 13084 0066 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 13085 006a 0220     		movs	r0, #2
 13086 006c D4E7     		b	.L2460
 13087              	.L2468:
 13088 006e 00BF     		.align	2
 13089              	.L2467:
 13090 0070 00000000 		.word	reprap
 13091 0074 D8000000 		.word	.LC188
 13092 0078 4C010000 		.word	.LC191
 13093 007c 34000000 		.word	.LC196
 13094 0080 00000000 		.word	.LC182
 13095 0084 00000000 		.word	.LC195
 13096              		.size	_ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef, .-_ZN6GCodes14UnloadFilamentER11GCode
 13097              		.section	.text._ZN6GCodes4SpinEv,"ax",%progbits
 13098              		.align	1
 13099              		.p2align 2,,3
 13100              		.global	_ZN6GCodes4SpinEv
 13101              		.syntax unified
 13102              		.thumb
 13103              		.thumb_func
 13104              		.fpu fpv4-sp-d16
 13105              		.type	_ZN6GCodes4SpinEv, %function
 13106              	_ZN6GCodes4SpinEv:
 13107              		@ args = 0, pretend = 0, frame = 2064
 13108              		@ frame_needed = 0, uses_anonymous_args = 0
 13109 0000 90F8B520 		ldrb	r2, [r0, #181]	@ zero_extendqisi2
 13110 0004 92B1     		cbz	r2, .L2494
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 231


 13111 0006 70B5     		push	{r4, r5, r6, lr}
 13112 0008 3F4D     		ldr	r5, .L2499
 13113 000a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 13114 000c ADF5016D 		sub	sp, sp, #2064
 13115 0010 6BB1     		cbz	r3, .L2471
 13116 0012 FFF7FEFF 		bl	_ZN6GCodes15DoEmergencyStopEv
 13117 0016 3D4C     		ldr	r4, .L2499+4
 13118              	.L2472:
 13119 0018 2046     		mov	r0, r4
 13120 001a FFF7FEFF 		bl	_ZN9UARTClass4readEv
 13121 001e 0028     		cmp	r0, #0
 13122 0020 FADA     		bge	.L2472
 13123 0022 0023     		movs	r3, #0
 13124 0024 2B70     		strb	r3, [r5]
 13125              	.L2469:
 13126 0026 0DF5016D 		add	sp, sp, #2064
 13127              		@ sp needed
 13128 002a 70BD     		pop	{r4, r5, r6, pc}
 13129              	.L2494:
 13130 002c 7047     		bx	lr
 13131              	.L2471:
 13132 002e 0446     		mov	r4, r0
 13133 0030 FFF7FEFF 		bl	_ZN6GCodes13CheckTriggersEv
 13134 0034 2046     		mov	r0, r4
 13135 0036 FFF7FEFF 		bl	_ZN6GCodes16CheckHeaterFaultEv
 13136 003a 2046     		mov	r0, r4
 13137 003c FFF7FEFF 		bl	_ZN6GCodes13CheckFilamentEv
 13138 0040 236E     		ldr	r3, [r4, #96]
 13139 0042 1D68     		ldr	r5, [r3]
 13140 0044 AB68     		ldr	r3, [r5, #8]
 13141 0046 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 13142 0048 3AB9     		cbnz	r2, .L2474
 13143 004a 95F82820 		ldrb	r2, [r5, #40]	@ zero_extendqisi2
 13144 004e 083A     		subs	r2, r2, #8
 13145 0050 012A     		cmp	r2, #1
 13146 0052 02D9     		bls	.L2474
 13147 0054 9B68     		ldr	r3, [r3, #8]
 13148 0056 002B     		cmp	r3, #0
 13149 0058 44D0     		beq	.L2497
 13150              	.L2474:
 13151 005a 0023     		movs	r3, #0
 13152 005c 8DF80C30 		strb	r3, [sp, #12]
 13153 0060 AB68     		ldr	r3, [r5, #8]
 13154 0062 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 13155 0064 82B9     		cbnz	r2, .L2477
 13156 0066 5E7E     		ldrb	r6, [r3, #25]	@ zero_extendqisi2
 13157 0068 7207     		lsls	r2, r6, #29
 13158 006a 30D5     		bpl	.L2478
 13159 006c 2846     		mov	r0, r5
 13160 006e FFF7FEFF 		bl	_ZN11GCodeBuffer8PopStateEv
 13161 0072 3307     		lsls	r3, r6, #28
 13162 0074 12D5     		bpl	.L2479
 13163 0076 AB68     		ldr	r3, [r5, #8]
 13164 0078 1B68     		ldr	r3, [r3]
 13165 007a 002B     		cmp	r3, #0
 13166 007c 3ED0     		beq	.L2498
 13167 007e 2946     		mov	r1, r5
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 232


 13168 0080 2046     		mov	r0, r4
 13169 0082 FFF7FEFF 		bl	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer
 13170 0086 09E0     		b	.L2479
 13171              	.L2477:
 13172 0088 03A8     		add	r0, sp, #12
 13173 008a 40F60103 		movw	r3, #2049
 13174 008e 0190     		str	r0, [sp, #4]
 13175 0090 2946     		mov	r1, r5
 13176 0092 01AA     		add	r2, sp, #4
 13177 0094 2046     		mov	r0, r4
 13178 0096 0293     		str	r3, [sp, #8]
 13179 0098 FFF7FEFF 		bl	_ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef
 13180              	.L2479:
 13181 009c FFF7FEFF 		bl	millis
 13182 00a0 D4F83C37 		ldr	r3, [r4, #1852]
 13183 00a4 C31A     		subs	r3, r0, r3
 13184 00a6 B3F57A6F 		cmp	r3, #4000
 13185 00aa 0546     		mov	r5, r0
 13186 00ac BBD3     		bcc	.L2469
 13187 00ae 94F84737 		ldrb	r3, [r4, #1863]	@ zero_extendqisi2
 13188 00b2 002B     		cmp	r3, #0
 13189 00b4 B7D0     		beq	.L2469
 13190 00b6 164A     		ldr	r2, .L2499+8
 13191 00b8 6068     		ldr	r0, [r4, #4]
 13192 00ba 40F2B511 		movw	r1, #437
 13193 00be FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 13194 00c2 0023     		movs	r3, #0
 13195 00c4 C4F83C57 		str	r5, [r4, #1852]
 13196 00c8 84F84737 		strb	r3, [r4, #1863]
 13197 00cc ABE7     		b	.L2469
 13198              	.L2478:
 13199 00ce 03A8     		add	r0, sp, #12
 13200 00d0 40F60103 		movw	r3, #2049
 13201 00d4 0190     		str	r0, [sp, #4]
 13202 00d6 2946     		mov	r1, r5
 13203 00d8 01AA     		add	r2, sp, #4
 13204 00da 2046     		mov	r0, r4
 13205 00dc 0293     		str	r3, [sp, #8]
 13206 00de FFF7FEFF 		bl	_ZN6GCodes14StartNextGCodeER11GCodeBufferRK9StringRef
 13207 00e2 DBE7     		b	.L2479
 13208              	.L2497:
 13209 00e4 636E     		ldr	r3, [r4, #100]
 13210              	.L2476:
 13211 00e6 04EB8302 		add	r2, r4, r3, lsl #2
 13212 00ea 0133     		adds	r3, r3, #1
 13213 00ec D569     		ldr	r5, [r2, #28]
 13214 00ee 082B     		cmp	r3, #8
 13215 00f0 08BF     		it	eq
 13216 00f2 0023     		moveq	r3, #0
 13217 00f4 002D     		cmp	r5, #0
 13218 00f6 F6D0     		beq	.L2476
 13219 00f8 6366     		str	r3, [r4, #100]
 13220 00fa AEE7     		b	.L2474
 13221              	.L2498:
 13222 00fc 0121     		movs	r1, #1
 13223 00fe 2046     		mov	r0, r4
 13224 0100 FFF7FEFF 		bl	_ZN6GCodes9StopPrintE15StopPrintReason
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 233


 13225 0104 CAE7     		b	.L2479
 13226              	.L2500:
 13227 0106 00BF     		.align	2
 13228              	.L2499:
 13229 0108 00000000 		.word	.LANCHOR1
 13230 010c 00000000 		.word	Serial
 13231 0110 00000000 		.word	.LC197
 13232              		.size	_ZN6GCodes4SpinEv, .-_ZN6GCodes4SpinEv
 13233              		.global	_ZTV6GCodes
 13234              		.global	_ZN6GCodes22emergencyStopCommandedE
 13235              		.global	_ZN6GCodes16objectModelTableE
 13236              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 13237              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 13238              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 13239              	_ZL28cpu_irq_prev_interrupt_state:
 13240 0000 00       		.space	1
 13241              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 13242              		.align	2
 13243              		.type	_ZL32cpu_irq_critical_section_counter, %object
 13244              		.size	_ZL32cpu_irq_critical_section_counter, 4
 13245              	_ZL32cpu_irq_critical_section_counter:
 13246 0000 00000000 		.space	4
 13247              		.section	.bss._ZN6GCodes22emergencyStopCommandedE,"aw",%nobits
 13248              		.set	.LANCHOR1,. + 0
 13249              		.type	_ZN6GCodes22emergencyStopCommandedE, %object
 13250              		.size	_ZN6GCodes22emergencyStopCommandedE, 1
 13251              	_ZN6GCodes22emergencyStopCommandedE:
 13252 0000 00       		.space	1
 13253              		.section	.rodata.CSWTCH.713,"a",%progbits
 13254              		.align	2
 13255              		.set	.LANCHOR3,. + 0
 13256              		.type	CSWTCH.713, %object
 13257              		.size	CSWTCH.713, 12
 13258              	CSWTCH.713:
 13259 0000 34000000 		.word	.LC204
 13260 0004 4C000000 		.word	.LC205
 13261 0008 64000000 		.word	.LC206
 13262              		.section	.rodata.CSWTCH.724,"a",%progbits
 13263              		.align	2
 13264              		.set	.LANCHOR4,. + 0
 13265              		.type	CSWTCH.724, %object
 13266              		.size	CSWTCH.724, 12
 13267              	CSWTCH.724:
 13268 0000 10000000 		.word	.LC201
 13269 0004 1C000000 		.word	.LC202
 13270 0008 28000000 		.word	.LC203
 13271              		.section	.rodata.CSWTCH.734,"a",%progbits
 13272              		.align	2
 13273              		.set	.LANCHOR5,. + 0
 13274              		.type	CSWTCH.734, %object
 13275              		.size	CSWTCH.734, 12
 13276              	CSWTCH.734:
 13277 0000 00000000 		.word	.LC198
 13278 0004 04000000 		.word	.LC199
 13279 0008 0C000000 		.word	.LC200
 13280              		.section	.rodata._ZN6GCodes10ExecuteG30ER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 13281              		.align	2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 234


 13282              	.LC47:
 13283 0000 47333020 		.ascii	"G30 S-2 commanded with no tool selected\000"
 13283      532D3220 
 13283      636F6D6D 
 13283      616E6465 
 13283      64207769 
 13284              	.LC48:
 13285 0028 5A207072 		.ascii	"Z probe point index out of range\000"
 13285      6F626520 
 13285      706F696E 
 13285      7420696E 
 13285      64657820 
 13286 0049 000000   		.space	3
 13287              	.LC49:
 13288 004c 6465706C 		.ascii	"deployprobe.g\000"
 13288      6F797072 
 13288      6F62652E 
 13288      6700
 13289              		.section	.rodata._ZN6GCodes10ManageToolER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 13290              		.align	2
 13291              	.LC67:
 13292 0000 546F6F6C 		.ascii	"Tool number must be positive\000"
 13292      206E756D 
 13292      62657220 
 13292      6D757374 
 13292      20626520 
 13293 001d 000000   		.space	3
 13294              	.LC68:
 13295 0020 496E7661 		.ascii	"Invalid tool name\000"
 13295      6C696420 
 13295      746F6F6C 
 13295      206E616D 
 13295      6500
 13296 0032 0000     		.space	2
 13297              	.LC69:
 13298 0034 43616E6E 		.ascii	"Cannot map both X and Y to the same axis\000"
 13298      6F74206D 
 13298      61702062 
 13298      6F746820 
 13298      5820616E 
 13299              		.section	.rodata._ZN6GCodes11AdvanceHashERK9StringRef.str1.4,"aMS",%progbits,1
 13300              		.align	2
 13301              	.LC117:
 13302 0000 256C7800 		.ascii	"%lx\000"
 13303              		.section	.rodata._ZN6GCodes11DiagnosticsE11MessageType.str1.4,"aMS",%progbits,1
 13304              		.align	2
 13305              	.LC39:
 13306 0000 6E756C6C 		.ascii	"null\000"
 13306      00
 13307 0005 000000   		.space	3
 13308              	.LC40:
 13309 0008 3D3D3D20 		.ascii	"=== GCodes ===\012\000"
 13309      47436F64 
 13309      6573203D 
 13309      3D3D0A00 
 13310              	.LC41:
 13311 0018 5365676D 		.ascii	"Segments left: %u\012\000"
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 235


 13311      656E7473 
 13311      206C6566 
 13311      743A2025 
 13311      750A00
 13312 002b 00       		.space	1
 13313              	.LC42:
 13314 002c 53746163 		.ascii	"Stack records: %u allocated, %u in use\012\000"
 13314      6B207265 
 13314      636F7264 
 13314      733A2025 
 13314      7520616C 
 13315              	.LC43:
 13316 0054 4D6F7665 		.ascii	"Movement lock held by %s\012\000"
 13316      6D656E74 
 13316      206C6F63 
 13316      6B206865 
 13316      6C642062 
 13317              		.section	.rodata._ZN6GCodes11DoFileMacroER11GCodeBufferPKcbi.str1.4,"aMS",%progbits,1
 13318              		.align	2
 13319              	.LC46:
 13320 0000 4D616372 		.ascii	"Macro file %s not found.\012\000"
 13320      6F206669 
 13320      6C652025 
 13320      73206E6F 
 13320      7420666F 
 13321              		.section	.rodata._ZN6GCodes11DoFilePrintER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 13322              		.align	2
 13323              	.LC134:
 13324 0000 00       		.ascii	"\000"
 13325 0001 000000   		.space	3
 13326              	.LC135:
 13327 0004 4D363030 		.ascii	"M600\000"
 13327      00
 13328 0009 000000   		.space	3
 13329              	.LC136:
 13330 000c 4D323236 		.ascii	"M226\000"
 13330      00
 13331              		.section	.rodata._ZN6GCodes11HandleReplyER11GCodeBuffer11GCodeResultPKc.str1.4,"aMS",%progbits,1
 13332              		.align	2
 13333              	.LC70:
 13334 0000 72732000 		.ascii	"rs \000"
 13335              	.LC71:
 13336 0004 6F6B00   		.ascii	"ok\000"
 13337 0007 00       		.space	1
 13338              	.LC72:
 13339 0008 72657065 		.ascii	"repetier\000"
 13339      74696572 
 13339      00
 13340 0011 000000   		.space	3
 13341              	.LC73:
 13342 0014 756E6B6E 		.ascii	"unknown\000"
 13342      6F776E00 
 13343              	.LC74:
 13344 001c 74656163 		.ascii	"teacup\000"
 13344      757000
 13345 0023 00       		.space	1
 13346              	.LC75:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 236


 13347 0024 73707269 		.ascii	"sprinter\000"
 13347      6E746572 
 13347      00
 13348 002d 000000   		.space	3
 13349              	.LC76:
 13350 0030 25730A00 		.ascii	"%s\012\000"
 13351              	.LC77:
 13352 0034 25730A25 		.ascii	"%s\012%s\012\000"
 13352      730A00
 13353 003b 00       		.space	1
 13354              	.LC78:
 13355 003c 25732025 		.ascii	"%s %s\012\000"
 13355      730A00
 13356 0043 00       		.space	1
 13357              	.LC79:
 13358 0044 456D756C 		.ascii	"Emulation of %s is not yet supported.\012\000"
 13358      6174696F 
 13358      6E206F66 
 13358      20257320 
 13358      6973206E 
 13359              		.section	.rodata._ZN6GCodes11HandleReplyER11GCodeBufferP12OutputBuffer.str1.4,"aMS",%progbits,1
 13360              		.align	2
 13361              	.LC80:
 13362 0000 42656769 		.ascii	"Begin file list\012\000"
 13362      6E206669 
 13362      6C65206C 
 13362      6973740A 
 13362      00
 13363 0011 000000   		.space	3
 13364              	.LC81:
 13365 0014 456E6420 		.ascii	"End file list\012\000"
 13365      66696C65 
 13365      206C6973 
 13365      740A00
 13366 0023 00       		.space	1
 13367              	.LC82:
 13368 0024 0A00     		.ascii	"\012\000"
 13369 0026 0000     		.space	2
 13370              	.LC83:
 13371 0028 2000     		.ascii	" \000"
 13372              		.section	.rodata._ZN6GCodes12ListTriggersERK9StringRefm.str1.4,"aMS",%progbits,1
 13373              		.align	2
 13374              	.LC114:
 13375 0000 286E6F6E 		.ascii	"(none)\000"
 13375      652900
 13376 0007 00       		.space	1
 13377              	.LC115:
 13378 0008 45256400 		.ascii	"E%d\000"
 13379              		.section	.rodata._ZN6GCodes12LoadFilamentER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 13380              		.align	2
 13381              	.LC182:
 13382 0000 4E6F2074 		.ascii	"No tool selected\000"
 13382      6F6F6C20 
 13382      73656C65 
 13382      63746564 
 13382      00
 13383 0011 000000   		.space	3
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 237


 13384              	.LC183:
 13385 0014 4C6F6164 		.ascii	"Loading filament into the selected tool is not supp"
 13385      696E6720 
 13385      66696C61 
 13385      6D656E74 
 13385      20696E74 
 13386 0047 6F727465 		.ascii	"orted\000"
 13386      6400
 13387 004d 000000   		.space	3
 13388              	.LC184:
 13389 0050 496E7661 		.ascii	"Invalid filament name\000"
 13389      6C696420 
 13389      66696C61 
 13389      6D656E74 
 13389      206E616D 
 13390 0066 0000     		.space	2
 13391              	.LC185:
 13392 0068 2C00     		.ascii	",\000"
 13393 006a 0000     		.space	2
 13394              	.LC186:
 13395 006c 46696C61 		.ascii	"Filament names must not contain commas\000"
 13395      6D656E74 
 13395      206E616D 
 13395      6573206D 
 13395      75737420 
 13396 0093 00       		.space	1
 13397              	.LC187:
 13398 0094 556E6C6F 		.ascii	"Unload the current filament before you attempt to l"
 13398      61642074 
 13398      68652063 
 13398      75727265 
 13398      6E742066 
 13399 00c7 6F616420 		.ascii	"oad another one\000"
 13399      616E6F74 
 13399      68657220 
 13399      6F6E6500 
 13400 00d7 00       		.space	1
 13401              	.LC188:
 13402 00d8 303A2F66 		.ascii	"0:/filaments/\000"
 13402      696C616D 
 13402      656E7473 
 13402      2F00
 13403 00e6 0000     		.space	2
 13404              	.LC189:
 13405 00e8 46696C61 		.ascii	"Filament configuration directory not found\000"
 13405      6D656E74 
 13405      20636F6E 
 13405      66696775 
 13405      72617469 
 13406 0113 00       		.space	1
 13407              	.LC190:
 13408 0114 4F6E6520 		.ascii	"One filament type can be only assigned to a single "
 13408      66696C61 
 13408      6D656E74 
 13408      20747970 
 13408      65206361 
 13409 0147 746F6F6C 		.ascii	"tool\000"
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 238


 13409      00
 13410              	.LC191:
 13411 014c 25732573 		.ascii	"%s%s/%s\000"
 13411      2F257300 
 13412              	.LC192:
 13413 0154 6C6F6164 		.ascii	"load.g\000"
 13413      2E6700
 13414 015b 00       		.space	1
 13415              	.LC193:
 13416 015c 4C6F6164 		.ascii	"Loaded filament in the selected tool: %s\000"
 13416      65642066 
 13416      696C616D 
 13416      656E7420 
 13416      696E2074 
 13417 0185 000000   		.space	3
 13418              	.LC194:
 13419 0188 4E6F2066 		.ascii	"No filament loaded in the selected tool\000"
 13419      696C616D 
 13419      656E7420 
 13419      6C6F6164 
 13419      65642069 
 13420              		.section	.rodata._ZN6GCodes12PauseOnStallEm.str1.4,"aMS",%progbits,1
 13421              		.align	2
 13422              	.LC181:
 13423 0000 5374616C 		.ascii	"Stall detected on driver(s)\000"
 13423      6C206465 
 13423      74656374 
 13423      6564206F 
 13423      6E206472 
 13424              		.section	.rodata._ZN6GCodes13CheckFilamentEv.str1.4,"aMS",%progbits,1
 13425              		.align	2
 13426              	.LC180:
 13427 0000 45787472 		.ascii	"Extruder %u reports %s\000"
 13427      75646572 
 13427      20257520 
 13427      7265706F 
 13427      72747320 
 13428              		.section	.rodata._ZN6GCodes13CheckTriggersEv.str1.4,"aMS",%progbits,1
 13429              		.align	2
 13430              	.LC178:
 13431 0000 5072696E 		.ascii	"Print paused by external trigger\000"
 13431      74207061 
 13431      75736564 
 13431      20627920 
 13431      65787465 
 13432 0021 000000   		.space	3
 13433              	.LC179:
 13434 0024 303A2F73 		.ascii	"0:/sys/trigger%u.g\000"
 13434      79732F74 
 13434      72696767 
 13434      65722575 
 13434      2E6700
 13435              		.section	.rodata._ZN6GCodes13DoManualProbeER11GCodeBuffer.str1.4,"aMS",%progbits,1
 13436              		.align	2
 13437              	.LC50:
 13438 0000 4D616E75 		.ascii	"Manual bed probing\000"
 13438      616C2062 
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 239


 13438      65642070 
 13438      726F6269 
 13438      6E6700
 13439 0013 00       		.space	1
 13440              	.LC51:
 13441 0014 41646A75 		.ascii	"Adjust height until the nozzle just touches the bed"
 13441      73742068 
 13441      65696768 
 13441      7420756E 
 13441      74696C20 
 13442 0047 2C207468 		.ascii	", then press OK\000"
 13442      656E2070 
 13442      72657373 
 13442      204F4B00 
 13443              		.section	.rodata._ZN6GCodes13LoadHeightMapER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 13444              		.align	2
 13445              	.LC111:
 13446 0000 48656967 		.ascii	"Height map file %s not found\000"
 13446      6874206D 
 13446      61702066 
 13446      696C6520 
 13446      2573206E 
 13447 001d 000000   		.space	3
 13448              	.LC112:
 13449 0020 4661696C 		.ascii	"Failed to load height map from file %s: \000"
 13449      65642074 
 13449      6F206C6F 
 13449      61642068 
 13449      65696768 
 13450              		.section	.rodata._ZN6GCodes13ReHomeOnStallEm.str1.4,"aMS",%progbits,1
 13451              		.align	2
 13452              	.LC110:
 13453 0000 7265686F 		.ascii	"rehome.g\000"
 13453      6D652E67 
 13453      00
 13454              		.section	.rodata._ZN6GCodes13StartPrintingEb.str1.4,"aMS",%progbits,1
 13455              		.align	2
 13456              	.LC64:
 13457 0000 53746172 		.ascii	"Started printing file %s\012\000"
 13457      74656420 
 13457      7072696E 
 13457      74696E67 
 13457      2066696C 
 13458 001a 0000     		.space	2
 13459              	.LC65:
 13460 001c 53746172 		.ascii	"Started simulating printing file %s\012\000"
 13460      74656420 
 13460      73696D75 
 13460      6C617469 
 13460      6E672070 
 13461 0041 000000   		.space	3
 13462              	.LC66:
 13463 0044 73746172 		.ascii	"start.g\000"
 13463      742E6700 
 13464              		.section	.rodata._ZN6GCodes14DoStraightMoveER11GCodeBufferb.str1.4,"aMS",%progbits,1
 13465              		.align	2
 13466              	.LC139:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 240


 13467 0000 47302F47 		.ascii	"G0/G1: bad restore point number\000"
 13467      313A2062 
 13467      61642072 
 13467      6573746F 
 13467      72652070 
 13468              	.LC140:
 13469 0020 47302F47 		.ascii	"G0/G1: insufficient axes homed\000"
 13469      313A2069 
 13469      6E737566 
 13469      66696369 
 13469      656E7420 
 13470 003f 00       		.space	1
 13471              	.LC141:
 13472 0040 47302F47 		.ascii	"G0/G1: attempt to move individual motors of a delta"
 13472      313A2061 
 13472      7474656D 
 13472      70742074 
 13472      6F206D6F 
 13473 0073 206D6163 		.ascii	" machine to absolute positions\000"
 13473      68696E65 
 13473      20746F20 
 13473      6162736F 
 13473      6C757465 
 13474 0092 0000     		.space	2
 13475              	.LC142:
 13476 0094 47302F47 		.ascii	"G0/G1: outside machine limits\000"
 13476      313A206F 
 13476      75747369 
 13476      6465206D 
 13476      61636869 
 13477              		.section	.rodata._ZN6GCodes14SaveResumeInfoEb.str1.4,"aMS",%progbits,1
 13478              		.align	2
 13479              	.LC11:
 13480 0000 706F7765 		.ascii	"power failure\000"
 13480      72206661 
 13480      696C7572 
 13480      6500
 13481 000e 0000     		.space	2
 13482              	.LC12:
 13483 0010 7072696E 		.ascii	"print paused\000"
 13483      74207061 
 13483      75736564 
 13483      00
 13484 001d 000000   		.space	3
 13485              	.LC13:
 13486 0020 4D383300 		.ascii	"M83\000"
 13487              	.LC14:
 13488 0024 4D383200 		.ascii	"M82\000"
 13489              	.LC15:
 13490 0028 72657375 		.ascii	"resurrect.g\000"
 13490      72726563 
 13490      742E6700 
 13491              	.LC16:
 13492 0034 303A2F73 		.ascii	"0:/sys/\000"
 13492      79732F00 
 13493              	.LC17:
 13494 003c 4661696C 		.ascii	"Failed to create file %s\000"
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 241


 13494      65642074 
 13494      6F206372 
 13494      65617465 
 13494      2066696C 
 13495 0055 000000   		.space	3
 13496              	.LC18:
 13497 0058 3B204669 		.ascii	"; File \"%s\" resume print after %s\000"
 13497      6C652022 
 13497      25732220 
 13497      72657375 
 13497      6D652070 
 13498 007a 0000     		.space	2
 13499              	.LC19:
 13500 007c 20617420 		.ascii	" at %04u-%02u-%02u %02u:%02u\000"
 13500      25303475 
 13500      2D253032 
 13500      752D2530 
 13500      32752025 
 13501 0099 000000   		.space	3
 13502              	.LC20:
 13503 009c 47393200 		.ascii	"G92\000"
 13504              	.LC21:
 13505 00a0 20256325 		.ascii	" %c%.3f\000"
 13505      2E336600 
 13506              	.LC22:
 13507 00a8 72657375 		.ascii	"resurrect-prologue.g\000"
 13507      72726563 
 13507      742D7072 
 13507      6F6C6F67 
 13507      75652E67 
 13508 00bd 000000   		.space	3
 13509              	.LC23:
 13510 00c0 4D393820 		.ascii	"M98 P%s\012\000"
 13510      5025730A 
 13510      00
 13511 00c9 000000   		.space	3
 13512              	.LC24:
 13513 00cc 4D313036 		.ascii	"M106 S%.2f\012\000"
 13513      2053252E 
 13513      32660A00 
 13514              	.LC25:
 13515 00d8 4D313136 		.ascii	"M116\012M290 S%.3f\012\000"
 13515      0A4D3239 
 13515      30205325 
 13515      2E33660A 
 13515      00
 13516 00e9 000000   		.space	3
 13517              	.LC26:
 13518 00ec 4D323030 		.ascii	"M200 \000"
 13518      2000
 13519 00f2 0000     		.space	2
 13520              	.LC27:
 13521 00f4 2563252E 		.ascii	"%c%.03f\000"
 13521      30336600 
 13522              	.LC28:
 13523 00fc 47393220 		.ascii	"G92 E%.5f\012%s\012\000"
 13523      45252E35 
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 242


 13523      660A2573 
 13523      0A00
 13524 010a 0000     		.space	2
 13525              	.LC29:
 13526 010c 4D323320 		.ascii	"M23 %s\012M26 S%lu P%.3f\012\000"
 13526      25730A4D 
 13526      32362053 
 13526      256C7520 
 13526      50252E33 
 13527 0123 00       		.space	1
 13528              	.LC30:
 13529 0124 47302046 		.ascii	"G0 F6000 Z%.3f\012\000"
 13529      36303030 
 13529      205A252E 
 13529      33660A00 
 13530              	.LC31:
 13531 0134 47302046 		.ascii	"G0 F6000\000"
 13531      36303030 
 13531      00
 13532 013d 000000   		.space	3
 13533              	.LC32:
 13534 0140 0A473020 		.ascii	"\012G0 F6000 Z%.3f\012\000"
 13534      46363030 
 13534      30205A25 
 13534      2E33660A 
 13534      00
 13535 0151 000000   		.space	3
 13536              	.LC33:
 13537 0154 47312046 		.ascii	"G1 F%.1f\000"
 13537      252E3166 
 13537      00
 13538 015d 000000   		.space	3
 13539              	.LC34:
 13540 0160 20532575 		.ascii	" S%u\000"
 13540      00
 13541 0165 000000   		.space	3
 13542              	.LC35:
 13543 0168 20502575 		.ascii	" P%u\000"
 13543      00
 13544 016d 000000   		.space	3
 13545              	.LC36:
 13546 0170 0A4D3234 		.ascii	"\012M24\012\000"
 13546      0A00
 13547 0176 0000     		.space	2
 13548              	.LC37:
 13549 0178 52657375 		.ascii	"Resume-after-power-fail state saved\012\000"
 13549      6D652D61 
 13549      66746572 
 13549      2D706F77 
 13549      65722D66 
 13550 019d 000000   		.space	3
 13551              	.LC38:
 13552 01a0 4661696C 		.ascii	"Failed to write or close file %s\012\000"
 13552      65642074 
 13552      6F207772 
 13552      69746520 
 13552      6F722063 
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 243


 13553              		.section	.rodata._ZN6GCodes14SetToolHeatersEP4Toolfb.str1.4,"aMS",%progbits,1
 13554              		.align	2
 13555              	.LC100:
 13556 0000 53657474 		.ascii	"Setting temperature: no tool selected.\012\000"
 13556      696E6720 
 13556      74656D70 
 13556      65726174 
 13556      7572653A 
 13557              		.section	.rodata._ZN6GCodes14UnloadFilamentER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 13558              		.align	2
 13559              	.LC195:
 13560 0000 556E6C6F 		.ascii	"Unloading filament from this tool is not supported\000"
 13560      6164696E 
 13560      67206669 
 13560      6C616D65 
 13560      6E742066 
 13561 0033 00       		.space	1
 13562              	.LC196:
 13563 0034 756E6C6F 		.ascii	"unload.g\000"
 13563      61642E67 
 13563      00
 13564              		.section	.rodata._ZN6GCodes15DoEmergencyStopEv.str1.4,"aMS",%progbits,1
 13565              		.align	2
 13566              	.LC101:
 13567 0000 456D6572 		.ascii	"Emergency Stop! Reset the controller to continue.\000"
 13567      67656E63 
 13567      79205374 
 13567      6F702120 
 13567      52657365 
 13568              		.section	.rodata._ZN6GCodes15RunStateMachineER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 13569              		.align	2
 13570              	.LC149:
 13571 0000 5072696E 		.ascii	"Printing paused for filament change at\000"
 13571      74696E67 
 13571      20706175 
 13571      73656420 
 13571      666F7220 
 13572 0027 00       		.space	1
 13573              	.LC150:
 13574 0028 5072696E 		.ascii	"Printing paused at\000"
 13574      74696E67 
 13574      20706175 
 13574      73656420 
 13574      617400
 13575 003b 00       		.space	1
 13576              	.LC151:
 13577 003c 47312F47 		.ascii	"G1/G2/G3: intermediate position outside machine lim"
 13577      322F4733 
 13577      3A20696E 
 13577      7465726D 
 13577      65646961 
 13578 006f 69747300 		.ascii	"its\000"
 13579 0073 00       		.space	1
 13580              	.LC152:
 13581 0074 4D757374 		.ascii	"Must home these axes:\000"
 13581      20686F6D 
 13581      65207468 
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 244


 13581      65736520 
 13581      61786573 
 13582 008a 0000     		.space	2
 13583              	.LC153:
 13584 008c 20626566 		.ascii	" before homing these:\000"
 13584      6F726520 
 13584      686F6D69 
 13584      6E672074 
 13584      68657365 
 13585 00a2 0000     		.space	2
 13586              	.LC154:
 13587 00a4 486F6D69 		.ascii	"Homing file %s not found\000"
 13587      6E672066 
 13587      696C6520 
 13587      2573206E 
 13587      6F742066 
 13588 00bd 000000   		.space	3
 13589              	.LC155:
 13590 00c0 486F6D69 		.ascii	"Homing failed\000"
 13590      6E672066 
 13590      61696C65 
 13590      6400
 13591 00ce 0000     		.space	2
 13592              	.LC156:
 13593 00d0 74667265 		.ascii	"tfree%d.g\000"
 13593      6525642E 
 13593      6700
 13594 00da 0000     		.space	2
 13595              	.LC157:
 13596 00dc 74707265 		.ascii	"tpre%d.g\000"
 13596      25642E67 
 13596      00
 13597 00e5 000000   		.space	3
 13598              	.LC158:
 13599 00e8 74706F73 		.ascii	"tpost%d.g\000"
 13599      7425642E 
 13599      6700
 13600 00f2 0000     		.space	2
 13601              	.LC159:
 13602 00f4 70617573 		.ascii	"pause.g\000"
 13602      652E6700 
 13603              	.LC160:
 13604 00fc 66696C61 		.ascii	"filament-change.g\000"
 13604      6D656E74 
 13604      2D636861 
 13604      6E67652E 
 13604      6700
 13605 010e 0000     		.space	2
 13606              	.LC161:
 13607 0110 20256325 		.ascii	" %c%.1f\000"
 13607      2E316600 
 13608              	.LC162:
 13609 0118 5072696E 		.ascii	"Printing resumed\000"
 13609      74696E67 
 13609      20726573 
 13609      756D6564 
 13609      00
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 245


 13610 0129 000000   		.space	3
 13611              	.LC163:
 13612 012c 5072696E 		.ascii	"Printing resumed\012\000"
 13612      74696E67 
 13612      20726573 
 13612      756D6564 
 13612      0A00
 13613 013e 0000     		.space	2
 13614              	.LC164:
 13615 0140 536B6970 		.ascii	"Skipping grid point (%.1f, %.1f) because Z probe ca"
 13615      70696E67 
 13615      20677269 
 13615      6420706F 
 13615      696E7420 
 13616 0173 6E6E6F74 		.ascii	"nnot reach it\012\000"
 13616      20726561 
 13616      63682069 
 13616      740A00
 13617 0182 0000     		.space	2
 13618              	.LC165:
 13619 0184 5A207072 		.ascii	"Z probe already triggered before probing move start"
 13619      6F626520 
 13619      616C7265 
 13619      61647920 
 13619      74726967 
 13620 01b7 656400   		.ascii	"ed\000"
 13621 01ba 0000     		.space	2
 13622              	.LC166:
 13623 01bc 72657472 		.ascii	"retractprobe.g\000"
 13623      61637470 
 13623      726F6265 
 13623      2E6700
 13624 01cb 00       		.space	1
 13625              	.LC167:
 13626 01cc 5A207072 		.ascii	"Z probe was not triggered during probing move\012\000"
 13626      6F626520 
 13626      77617320 
 13626      6E6F7420 
 13626      74726967 
 13627 01fb 00       		.space	1
 13628              	.LC168:
 13629 01fc 5A207072 		.ascii	"Z probe readings not consistent\012\000"
 13629      6F626520 
 13629      72656164 
 13629      696E6773 
 13629      206E6F74 
 13630 021d 000000   		.space	3
 13631              	.LC169:
 13632 0220 256C7520 		.ascii	"%lu points probed, mean error %.3f, deviation %.3f\012"
 13632      706F696E 
 13632      74732070 
 13632      726F6265 
 13632      642C206D 
 13633 0253 00       		.ascii	"\000"
 13634              	.LC170:
 13635 0254 546F6F20 		.ascii	"Too few points probed\000"
 13635      66657720 
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 246


 13635      706F696E 
 13635      74732070 
 13635      726F6265 
 13636 026a 0000     		.space	2
 13637              	.LC171:
 13638 026c 5A207072 		.ascii	"Z probe already triggered at start of probing move\012"
 13638      6F626520 
 13638      616C7265 
 13638      61647920 
 13638      74726967 
 13639 029f 00       		.ascii	"\000"
 13640              	.LC172:
 13641 02a0 546F6F6C 		.ascii	"Tool was deselected during G30 S-2 command\000"
 13641      20776173 
 13641      20646573 
 13641      656C6563 
 13641      74656420 
 13642 02cb 00       		.space	1
 13643              	.LC173:
 13644 02cc 53746F70 		.ascii	"Stopped at height %.3f mm\000"
 13644      70656420 
 13644      61742068 
 13644      65696768 
 13644      7420252E 
 13645 02e6 0000     		.space	2
 13646              	.LC174:
 13647 02e8 46696C61 		.ascii	"Filament %s loaded\000"
 13647      6D656E74 
 13647      20257320 
 13647      6C6F6164 
 13647      656400
 13648 02fb 00       		.space	1
 13649              	.LC175:
 13650 02fc 46696C61 		.ascii	"Filament %s unloaded\000"
 13650      6D656E74 
 13650      20257320 
 13650      756E6C6F 
 13650      61646564 
 13651 0311 000000   		.space	3
 13652              	.LC176:
 13653 0314 5072696E 		.ascii	"Print auto-paused due to low voltage\012\000"
 13653      74206175 
 13653      746F2D70 
 13653      61757365 
 13653      64206475 
 13654 033a 0000     		.space	2
 13655              	.LC177:
 13656 033c 556E6465 		.ascii	"Undefined GCodeState\012\000"
 13656      66696E65 
 13656      64204743 
 13656      6F646553 
 13656      74617465 
 13657              		.section	.rodata._ZN6GCodes16CheckHeaterFaultEv.str1.4,"aMS",%progbits,1
 13658              		.align	2
 13659              	.LC147:
 13660 0000 48656174 		.ascii	"Heater fault\000"
 13660      65722066 
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 247


 13660      61756C74 
 13660      00
 13661 000d 000000   		.space	3
 13662              	.LC148:
 13663 0010 53687574 		.ascii	"Shutting down due to un-cleared heater fault after "
 13663      74696E67 
 13663      20646F77 
 13663      6E206475 
 13663      6520746F 
 13664 0043 256C7520 		.ascii	"%lu seconds\012\000"
 13664      7365636F 
 13664      6E64730A 
 13664      00
 13665              		.section	.rodata._ZN6GCodes16QueueFileToPrintEPKcRK9StringRef.str1.4,"aMS",%progbits,1
 13666              		.align	2
 13667              	.LC62:
 13668 0000 303A2F67 		.ascii	"0:/gcodes/\000"
 13668      636F6465 
 13668      732F00
 13669 000b 00       		.space	1
 13670              	.LC63:
 13671 000c 47436F64 		.ascii	"GCode file \"%s\" not found\012\000"
 13671      65206669 
 13671      6C652022 
 13671      25732220 
 13671      6E6F7420 
 13672              		.section	.rodata._ZN6GCodes16SetPidParametersER11GCodeBufferiRK9StringRef.str1.4,"aMS",%progbits,1
 13673              		.align	2
 13674              	.LC94:
 13675 0000 48656174 		.ascii	"Heater %d is in bang-bang mode\000"
 13675      65722025 
 13675      64206973 
 13675      20696E20 
 13675      62616E67 
 13676 001f 00       		.space	1
 13677              	.LC95:
 13678 0020 48656174 		.ascii	"Heater %d P:%.1f I:%.3f D:%.1f\000"
 13678      65722025 
 13678      6420503A 
 13678      252E3166 
 13678      20493A25 
 13679 003f 00       		.space	1
 13680              	.LC96:
 13681 0040 48656174 		.ascii	"Heater %d uses model-derived PID parameters. Use M3"
 13681      65722025 
 13681      64207573 
 13681      6573206D 
 13681      6F64656C 
 13682 0073 30372048 		.ascii	"07 H%d to view them\000"
 13682      25642074 
 13682      6F207669 
 13682      65772074 
 13682      68656D00 
 13683              		.section	.rodata._ZN6GCodes16objectModelTableE,"a",%progbits
 13684              		.align	2
 13685              		.set	.LANCHOR0,. + 0
 13686              		.type	_ZN6GCodes16objectModelTableE, %object
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 248


 13687              		.size	_ZN6GCodes16objectModelTableE, 12
 13688              	_ZN6GCodes16objectModelTableE:
 13689 0000 7C000000 		.word	.LC207
 13690 0004 00000000 		.word	_ZN6GCodesUlP11ObjectModelE_4_FUNES1_
 13691 0008 04       		.byte	4
 13692 0009 00       		.space	1
 13693 000a 0000     		.short	0
 13694              		.section	.rodata._ZN6GCodes18SetOrReportOffsetsER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,
 13695              		.align	2
 13696              	.LC104:
 13697 0000 41747465 		.ascii	"Attempt to set/report offsets and temperatures for "
 13697      6D707420 
 13697      746F2073 
 13697      65742F72 
 13697      65706F72 
 13698 0033 6E6F6E2D 		.ascii	"non-existent tool: %d\000"
 13698      65786973 
 13698      74656E74 
 13698      20746F6F 
 13698      6C3A2025 
 13699 0049 000000   		.space	3
 13700              	.LC105:
 13701 004c 41747465 		.ascii	"Attempt to set/report offsets and temperatures for "
 13701      6D707420 
 13701      746F2073 
 13701      65742F72 
 13701      65706F72 
 13702 007f 6E6F2073 		.ascii	"no selected tool\000"
 13702      656C6563 
 13702      74656420 
 13702      746F6F6C 
 13702      00
 13703              	.LC106:
 13704 0090 546F6F6C 		.ascii	"Tool %d offsets:\000"
 13704      20256420 
 13704      6F666673 
 13704      6574733A 
 13704      00
 13705 00a1 000000   		.space	3
 13706              	.LC107:
 13707 00a4 20256325 		.ascii	" %c%.2f\000"
 13707      2E326600 
 13708              	.LC108:
 13709 00ac 2C206163 		.ascii	", active/standby temperature(s):\000"
 13709      74697665 
 13709      2F737461 
 13709      6E646279 
 13709      2074656D 
 13710 00cd 000000   		.space	3
 13711              	.LC109:
 13712 00d0 20252E31 		.ascii	" %.1f/%.1f\000"
 13712      662F252E 
 13712      316600
 13713              		.section	.rodata._ZN6GCodes19SetHeaterParametersER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits
 13714              		.align	2
 13715              	.LC97:
 13716 0000 68656174 		.ascii	"heater %d is not configured\000"
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 249


 13716      65722025 
 13716      64206973 
 13716      206E6F74 
 13716      20636F6E 
 13717              	.LC98:
 13718 001c 756E6162 		.ascii	"unable to use sensor channel %li on heater %d\000"
 13718      6C652074 
 13718      6F207573 
 13718      65207365 
 13718      6E736F72 
 13719 004a 0000     		.space	2
 13720              	.LC99:
 13721 004c 68656174 		.ascii	"heater number %d is out of range\000"
 13721      6572206E 
 13721      756D6265 
 13721      72202564 
 13721      20697320 
 13722              		.section	.rodata._ZN6GCodes19SetHeaterProtectionER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits
 13723              		.align	2
 13724              	.LC84:
 13725 0000 28756E64 		.ascii	"(undefined)\000"
 13725      6566696E 
 13725      65642900 
 13726              	.LC85:
 13727 000c 65786365 		.ascii	"exceeds\000"
 13727      65647300 
 13728              	.LC86:
 13729 0014 66616C6C 		.ascii	"falls below\000"
 13729      73206265 
 13729      6C6F7700 
 13730              	.LC87:
 13731 0020 496E7661 		.ascii	"Invalid heater protection item '%d'\000"
 13731      6C696420 
 13731      68656174 
 13731      65722070 
 13731      726F7465 
 13732              	.LC88:
 13733 0044 496E7661 		.ascii	"Invalid heater number '%d'\000"
 13733      6C696420 
 13733      68656174 
 13733      6572206E 
 13733      756D6265 
 13734 005f 00       		.space	1
 13735              	.LC89:
 13736 0060 496E7661 		.ascii	"Invalid heater protection action '%d'\000"
 13736      6C696420 
 13736      68656174 
 13736      65722070 
 13736      726F7465 
 13737 0086 0000     		.space	2
 13738              	.LC90:
 13739 0088 496E7661 		.ascii	"Invalid heater protection trigger '%d'\000"
 13739      6C696420 
 13739      68656174 
 13739      65722070 
 13739      726F7465 
 13740 00af 00       		.space	1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 250


 13741              	.LC91:
 13742 00b0 496E7661 		.ascii	"Invalid temperature limit\000"
 13742      6C696420 
 13742      74656D70 
 13742      65726174 
 13742      75726520 
 13743 00ca 0000     		.space	2
 13744              	.LC92:
 13745 00cc 54656D70 		.ascii	"Temperature protection item %d is not configured\000"
 13745      65726174 
 13745      75726520 
 13745      70726F74 
 13745      65637469 
 13746 00fd 000000   		.space	3
 13747              	.LC93:
 13748 0100 54656D70 		.ascii	"Temperature protection item %d is configured for he"
 13748      65726174 
 13748      75726520 
 13748      70726F74 
 13748      65637469 
 13749 0133 61746572 		.ascii	"ater %d and supervises heater %d to %s if the tempe"
 13749      20256420 
 13749      616E6420 
 13749      73757065 
 13749      72766973 
 13750 0166 72617475 		.ascii	"rature %s %.1f\302\260C\000"
 13750      72652025 
 13750      7320252E 
 13750      3166C2B0 
 13750      4300
 13751              		.section	.rodata._ZN6GCodes22TranslateEndStopResultE10EndStopHit.str1.4,"aMS",%progbits,1
 13752              		.align	2
 13753              	.LC113:
 13754 0000 6E6F7420 		.ascii	"not stopped\000"
 13754      73746F70 
 13754      70656400 
 13755              		.section	.rodata._ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBuffer.str1.4,"aMS",%progbi
 13756              		.align	2
 13757              	.LC45:
 13758 0000 4D756C74 		.ascii	"Multiple E parameters in G1 commands are not suppor"
 13758      69706C65 
 13758      20452070 
 13758      6172616D 
 13758      65746572 
 13759 0033 74656420 		.ascii	"ted in absolute extrusion mode\012\000"
 13759      696E2061 
 13759      62736F6C 
 13759      75746520 
 13759      65787472 
 13760              		.section	.rodata._ZN6GCodes3PopER11GCodeBuffer.str1.4,"aMS",%progbits,1
 13761              		.align	2
 13762              	.LC44:
 13763 0000 506F7028 		.ascii	"Pop(): stack underflow!\012\000"
 13763      293A2073 
 13763      7461636B 
 13763      20756E64 
 13763      6572666C 
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 251


 13764              		.section	.rodata._ZN6GCodes4PushER11GCodeBuffer.part.55.str1.4,"aMS",%progbits,1
 13765              		.align	2
 13766              	.LC0:
 13767 0000 50757368 		.ascii	"Push(): stack overflow!\012\000"
 13767      28293A20 
 13767      73746163 
 13767      6B206F76 
 13767      6572666C 
 13768              		.section	.rodata._ZN6GCodes4SpinEv.str1.4,"aMS",%progbits,1
 13769              		.align	2
 13770              	.LC197:
 13771 0000 41747465 		.ascii	"Attempting to extrude with no tool selected.\012\000"
 13771      6D707469 
 13771      6E672074 
 13771      6F206578 
 13771      74727564 
 13772              		.section	.rodata._ZN6GCodes7DoPauseER11GCodeBuffer11PauseReasonPKc.str1.4,"aMS",%progbits,1
 13773              		.align	2
 13774              	.LC137:
 13775 0000 50617573 		.ascii	"Paused print, file offset=%lu\012\000"
 13775      65642070 
 13775      72696E74 
 13775      2C206669 
 13775      6C65206F 
 13776 001f 00       		.space	1
 13777              	.LC138:
 13778 0020 5072696E 		.ascii	"Printing paused\000"
 13778      74696E67 
 13778      20706175 
 13778      73656400 
 13779              		.section	.rodata._ZN6GCodes9DoArcMoveER11GCodeBufferb.str1.4,"aMS",%progbits,1
 13780              		.align	2
 13781              	.LC143:
 13782 0000 47322F47 		.ascii	"G2/G3: missing parameter\000"
 13782      333A206D 
 13782      69737369 
 13782      6E672070 
 13782      6172616D 
 13783 0019 000000   		.space	3
 13784              	.LC144:
 13785 001c 47322F47 		.ascii	"G2/G3: insufficient axes homed\000"
 13785      333A2069 
 13785      6E737566 
 13785      66696369 
 13785      656E7420 
 13786 003b 00       		.space	1
 13787              	.LC145:
 13788 003c 47322F47 		.ascii	"G2/G3: outside machine limits\000"
 13788      333A206F 
 13788      75747369 
 13788      6465206D 
 13788      61636869 
 13789              		.section	.rodata._ZN6GCodes9ProbeGridER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 13790              		.align	2
 13791              	.LC102:
 13792 0000 4E6F2076 		.ascii	"No valid grid defined for bed probing\000"
 13792      616C6964 
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 252


 13792      20677269 
 13792      64206465 
 13792      66696E65 
 13793 0026 0000     		.space	2
 13794              	.LC103:
 13795 0028 4D757374 		.ascii	"Must home printer before bed probing\000"
 13795      20686F6D 
 13795      65207072 
 13795      696E7465 
 13795      72206265 
 13796              		.section	.rodata._ZN6GCodes9StartHashEPKc.str1.4,"aMS",%progbits,1
 13797              		.align	2
 13798              	.LC116:
 13799 0000 303A00   		.ascii	"0:\000"
 13800              		.section	.rodata._ZN6GCodes9StopPrintE15StopPrintReason.str1.4,"aMS",%progbits,1
 13801              		.align	2
 13802              	.LC127:
 13803 0000 28756E6B 		.ascii	"(unknown)\000"
 13803      6E6F776E 
 13803      2900
 13804 000a 0000     		.space	2
 13805              	.LC128:
 13806 000c 46696C65 		.ascii	"File %s will print in %luh %lum plus heating time\012"
 13806      20257320 
 13806      77696C6C 
 13806      20707269 
 13806      6E742069 
 13807 003e 00       		.ascii	"\000"
 13808 003f 00       		.space	1
 13809              	.LC129:
 13810 0040 43616E63 		.ascii	"Cancelled simulating file %s after %luh %lum simula"
 13810      656C6C65 
 13810      64207369 
 13810      6D756C61 
 13810      74696E67 
 13811 0073 74656420 		.ascii	"ted time\012\000"
 13811      74696D65 
 13811      0A00
 13812 007d 000000   		.space	3
 13813              	.LC130:
 13814 0080 446F6E65 		.ascii	"Done printing file\012\000"
 13814      20707269 
 13814      6E74696E 
 13814      67206669 
 13814      6C650A00 
 13815              	.LC131:
 13816 0094 46696E69 		.ascii	"Finished\000"
 13816      73686564 
 13816      00
 13817 009d 000000   		.space	3
 13818              	.LC132:
 13819 00a0 25732070 		.ascii	"%s printing file %s, print time was %luh %lum\012\000"
 13819      72696E74 
 13819      696E6720 
 13819      66696C65 
 13819      2025732C 
 13820 00cf 00       		.space	1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 253


 13821              	.LC133:
 13822 00d0 43616E63 		.ascii	"Cancelled\000"
 13822      656C6C65 
 13822      6400
 13823              		.section	.rodata._ZN6GCodesC2ER8Platform.str1.4,"aMS",%progbits,1
 13824              		.align	2
 13825              	.LC4:
 13826 0000 66696C65 		.ascii	"file\000"
 13826      00
 13827 0005 000000   		.space	3
 13828              	.LC5:
 13829 0008 73657269 		.ascii	"serial\000"
 13829      616C00
 13830 000f 00       		.space	1
 13831              	.LC6:
 13832 0010 68747470 		.ascii	"http\000"
 13832      00
 13833 0015 000000   		.space	3
 13834              	.LC7:
 13835 0018 74656C6E 		.ascii	"telnet\000"
 13835      657400
 13836 001f 00       		.space	1
 13837              	.LC8:
 13838 0020 6461656D 		.ascii	"daemon\000"
 13838      6F6E00
 13839 0027 00       		.space	1
 13840              	.LC9:
 13841 0028 71756575 		.ascii	"queue\000"
 13841      6500
 13842 002e 0000     		.space	2
 13843              	.LC10:
 13844 0030 6175746F 		.ascii	"autopause\000"
 13844      70617573 
 13844      6500
 13845              		.section	.rodata._ZNK6GCodes13SaveHeightMapER11GCodeBufferRK9StringRef.str1.4,"aMS",%progbits,1
 13846              		.align	2
 13847              	.LC52:
 13848 0000 68656967 		.ascii	"heightmap.csv\000"
 13848      68746D61 
 13848      702E6373 
 13848      7600
 13849 000e 0000     		.space	2
 13850              	.LC53:
 13851 0010 4661696C 		.ascii	"Failed to create height map file %s\000"
 13851      65642074 
 13851      6F206372 
 13851      65617465 
 13851      20686569 
 13852              	.LC54:
 13853 0034 4661696C 		.ascii	"Failed to save height map to file %s\000"
 13853      65642074 
 13853      6F207361 
 13853      76652068 
 13853      65696768 
 13854 0059 000000   		.space	3
 13855              	.LC55:
 13856 005c 48656967 		.ascii	"Height map saved to file %s\000"
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 254


 13856      6874206D 
 13856      61702073 
 13856      61766564 
 13856      20746F20 
 13857              		.section	.rodata._ZNK6GCodes20GetMachineModeStringEv.str1.4,"aMS",%progbits,1
 13858              		.align	2
 13859              	.LC146:
 13860 0000 556E6B6E 		.ascii	"Unknown\000"
 13860      6F776E00 
 13861              		.section	.rodata._ZNK6GCodes21GetCurrentCoordinatesERK9StringRef.str1.4,"aMS",%progbits,1
 13862              		.align	2
 13863              	.LC56:
 13864 0000 25633A25 		.ascii	"%c:%.3f \000"
 13864      2E336620 
 13864      00
 13865 0009 000000   		.space	3
 13866              	.LC57:
 13867 000c 4525753A 		.ascii	"E%u:%.1f \000"
 13867      252E3166 
 13867      2000
 13868 0016 0000     		.space	2
 13869              	.LC58:
 13870 0018 20436F75 		.ascii	" Count\000"
 13870      6E7400
 13871 001f 00       		.space	1
 13872              	.LC59:
 13873 0020 20256C69 		.ascii	" %li\000"
 13873      00
 13874 0025 000000   		.space	3
 13875              	.LC60:
 13876 0028 204D6163 		.ascii	" Machine\000"
 13876      68696E65 
 13876      00
 13877 0031 000000   		.space	3
 13878              	.LC61:
 13879 0034 20252E33 		.ascii	" %.3f\000"
 13879      6600
 13880              		.section	.rodata._ZNK6GCodes22ReportToolTemperaturesERK9StringRefPK4Toolb.part.61.str1.4,"aMS",%pr
 13881              		.align	2
 13882              	.LC1:
 13883 0000 54257500 		.ascii	"T%u\000"
 13884              	.LC2:
 13885 0004 5400     		.ascii	"T\000"
 13886 0006 0000     		.space	2
 13887              	.LC3:
 13888 0008 2563252E 		.ascii	"%c%.1f /%.1f\000"
 13888      3166202F 
 13888      252E3166 
 13888      00
 13889              		.section	.rodata._ZNK6GCodes23WriteConfigOverrideFileER11GCodeBufferRK9StringRef.str1.4,"aMS",%pro
 13890              		.align	2
 13891              	.LC118:
 13892 0000 636F6E66 		.ascii	"config-override.g\000"
 13892      69672D6F 
 13892      76657272 
 13892      6964652E 
 13892      6700
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 255


 13893 0012 0000     		.space	2
 13894              	.LC119:
 13895 0014 3B205468 		.ascii	"; This is a system-generated file - do not edit\012"
 13895      69732069 
 13895      73206120 
 13895      73797374 
 13895      656D2D67 
 13896 0044 00       		.ascii	"\000"
 13897 0045 000000   		.space	3
 13898              	.LC120:
 13899 0048 4661696C 		.ascii	"Failed to write file %s\000"
 13899      65642074 
 13899      6F207772 
 13899      69746520 
 13899      66696C65 
 13900              	.LC121:
 13901 0060 4E6F204D 		.ascii	"No M501 command was executed in config.g\000"
 13901      35303120 
 13901      636F6D6D 
 13901      616E6420 
 13901      77617320 
 13902              		.section	.rodata._ZNK6GCodes25GenerateTemperatureReportERK9StringRef.str1.4,"aMS",%progbits,1
 13903              		.align	2
 13904              	.LC122:
 13905 0000 423A00   		.ascii	"B:\000"
 13906 0003 00       		.space	1
 13907              	.LC123:
 13908 0004 252E3166 		.ascii	"%.1f /%.1f\000"
 13908      202F252E 
 13908      316600
 13909 000f 00       		.space	1
 13910              	.LC124:
 13911 0010 20422575 		.ascii	" B%u:\000"
 13911      3A00
 13912 0016 0000     		.space	2
 13913              	.LC125:
 13914 0018 433A00   		.ascii	"C:\000"
 13915 001b 00       		.space	1
 13916              	.LC126:
 13917 001c 20432575 		.ascii	" C%u:\000"
 13917      3A00
 13918              		.section	.rodata._ZTV6GCodes,"a",%progbits
 13919              		.align	2
 13920              		.set	.LANCHOR2,. + 0
 13921              		.type	_ZTV6GCodes, %object
 13922              		.size	_ZTV6GCodes, 12
 13923              	_ZTV6GCodes:
 13924 0000 00000000 		.word	0
 13925 0004 00000000 		.word	0
 13926 0008 00000000 		.word	_ZNK6GCodes19GetObjectModelTableERj
 13927              		.section	.rodata.str1.4,"aMS",%progbits,1
 13928              		.align	2
 13929              	.LC198:
 13930 0000 46464600 		.ascii	"FFF\000"
 13931              	.LC199:
 13932 0004 4C617365 		.ascii	"Laser\000"
 13932      7200
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc6kLeET.s 			page 256


 13933 000a 0000     		.space	2
 13934              	.LC200:
 13935 000c 434E4300 		.ascii	"CNC\000"
 13936              	.LC201:
 13937 0010 6174206D 		.ascii	"at min stop\000"
 13937      696E2073 
 13937      746F7000 
 13938              	.LC202:
 13939 001c 6174206D 		.ascii	"at max stop\000"
 13939      61782073 
 13939      746F7000 
 13940              	.LC203:
 13941 0028 6E656172 		.ascii	"near stop\000"
 13941      2073746F 
 13941      7000
 13942 0032 0000     		.space	2
 13943              	.LC204:
 13944 0034 67656E65 		.ascii	"generate a heater fault\000"
 13944      72617465 
 13944      20612068 
 13944      65617465 
 13944      72206661 
 13945              	.LC205:
 13946 004c 7065726D 		.ascii	"permanently switch off\000"
 13946      616E656E 
 13946      746C7920 
 13946      73776974 
 13946      6368206F 
 13947 0063 00       		.space	1
 13948              	.LC206:
 13949 0064 74656D70 		.ascii	"temporarily switch off\000"
 13949      6F726172 
 13949      696C7920 
 13949      73776974 
 13949      6368206F 
 13950 007b 00       		.space	1
 13951              	.LC207:
 13952 007c 73706565 		.ascii	"speedFactor\000"
 13952      64466163 
 13952      746F7200 
 13953              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
