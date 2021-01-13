ARM GAS  /tmp/ccuOEqeJ.s 			page 1


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
  13              		.file	"CoreBaseKinematics.cpp"
  14              		.section	.text._ZN10Kinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN10Kinematics22SetCalib
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZN10Kinematics22SetCalibrationDefaultsEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN10Kinematics22SetCalibrationDefaultsEv, %function
  23              	_ZN10Kinematics22SetCalibrationDefaultsEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 7047     		bx	lr
  28              		.size	_ZN10Kinematics22SetCalibrationDefaultsEv, .-_ZN10Kinematics22SetCalibrationDefaultsEv
  29 0002 00BF     		.section	.text._ZNK10Kinematics26WriteCalibrationParametersEP9FileStore,"axG",%progbits,_ZNK10Kine
  30              		.align	1
  31              		.p2align 2,,3
  32              		.weak	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu fpv4-sp-d16
  37              		.type	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, %function
  38              	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41              		@ link register save eliminated.
  42 0000 0120     		movs	r0, #1
  43 0002 7047     		bx	lr
  44              		.size	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK10Kinematics26WriteCalibrati
  45              		.section	.text._ZNK10Kinematics17GetTiltCorrectionEj,"axG",%progbits,_ZNK10Kinematics17GetTiltCorr
  46              		.align	1
  47              		.p2align 2,,3
  48              		.weak	_ZNK10Kinematics17GetTiltCorrectionEj
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu fpv4-sp-d16
  53              		.type	_ZNK10Kinematics17GetTiltCorrectionEj, %function
  54              	_ZNK10Kinematics17GetTiltCorrectionEj:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57              		@ link register save eliminated.
ARM GAS  /tmp/ccuOEqeJ.s 			page 2


  58 0000 9FED010A 		vldr.32	s0, .L5
  59 0004 7047     		bx	lr
  60              	.L6:
  61 0006 00BF     		.align	2
  62              	.L5:
  63 0008 00000000 		.word	0
  64              		.size	_ZNK10Kinematics17GetTiltCorrectionEj, .-_ZNK10Kinematics17GetTiltCorrectionEj
  65              		.section	.text._ZNK10Kinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK10Kinematics23AxesT
  66              		.align	1
  67              		.p2align 2,,3
  68              		.weak	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  69              		.syntax unified
  70              		.thumb
  71              		.thumb_func
  72              		.fpu fpv4-sp-d16
  73              		.type	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, %function
  74              	_ZNK10Kinematics23AxesToHomeBeforeProbingEv:
  75              		@ args = 0, pretend = 0, frame = 0
  76              		@ frame_needed = 0, uses_anonymous_args = 0
  77              		@ link register save eliminated.
  78 0000 0320     		movs	r0, #3
  79 0002 7047     		bx	lr
  80              		.size	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, .-_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  81              		.section	.text._ZNK10Kinematics13GetMotionTypeEj,"axG",%progbits,_ZNK10Kinematics13GetMotionTypeEj
  82              		.align	1
  83              		.p2align 2,,3
  84              		.weak	_ZNK10Kinematics13GetMotionTypeEj
  85              		.syntax unified
  86              		.thumb
  87              		.thumb_func
  88              		.fpu fpv4-sp-d16
  89              		.type	_ZNK10Kinematics13GetMotionTypeEj, %function
  90              	_ZNK10Kinematics13GetMotionTypeEj:
  91              		@ args = 0, pretend = 0, frame = 0
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93              		@ link register save eliminated.
  94 0000 0020     		movs	r0, #0
  95 0002 7047     		bx	lr
  96              		.size	_ZNK10Kinematics13GetMotionTypeEj, .-_ZNK10Kinematics13GetMotionTypeEj
  97              		.section	.text._ZNK10Kinematics16NumHomingButtonsEj,"axG",%progbits,_ZNK10Kinematics16NumHomingBut
  98              		.align	1
  99              		.p2align 2,,3
 100              		.weak	_ZNK10Kinematics16NumHomingButtonsEj
 101              		.syntax unified
 102              		.thumb
 103              		.thumb_func
 104              		.fpu fpv4-sp-d16
 105              		.type	_ZNK10Kinematics16NumHomingButtonsEj, %function
 106              	_ZNK10Kinematics16NumHomingButtonsEj:
 107              		@ args = 0, pretend = 0, frame = 0
 108              		@ frame_needed = 0, uses_anonymous_args = 0
 109              		@ link register save eliminated.
 110 0000 0846     		mov	r0, r1
 111 0002 7047     		bx	lr
 112              		.size	_ZNK10Kinematics16NumHomingButtonsEj, .-_ZNK10Kinematics16NumHomingButtonsEj
 113              		.section	.text._ZNK10Kinematics17HomingButtonNamesEv,"axG",%progbits,_ZNK10Kinematics17HomingButto
 114              		.align	1
ARM GAS  /tmp/ccuOEqeJ.s 			page 3


 115              		.p2align 2,,3
 116              		.weak	_ZNK10Kinematics17HomingButtonNamesEv
 117              		.syntax unified
 118              		.thumb
 119              		.thumb_func
 120              		.fpu fpv4-sp-d16
 121              		.type	_ZNK10Kinematics17HomingButtonNamesEv, %function
 122              	_ZNK10Kinematics17HomingButtonNamesEv:
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125              		@ link register save eliminated.
 126 0000 0048     		ldr	r0, .L11
 127 0002 7047     		bx	lr
 128              	.L12:
 129              		.align	2
 130              	.L11:
 131 0004 00000000 		.word	.LC0
 132              		.size	_ZNK10Kinematics17HomingButtonNamesEv, .-_ZNK10Kinematics17HomingButtonNamesEv
 133              		.section	.text._ZNK10Kinematics16MachineAxisNamesEv,"axG",%progbits,_ZNK10Kinematics16MachineAxisN
 134              		.align	1
 135              		.p2align 2,,3
 136              		.weak	_ZNK10Kinematics16MachineAxisNamesEv
 137              		.syntax unified
 138              		.thumb
 139              		.thumb_func
 140              		.fpu fpv4-sp-d16
 141              		.type	_ZNK10Kinematics16MachineAxisNamesEv, %function
 142              	_ZNK10Kinematics16MachineAxisNamesEv:
 143              		@ args = 0, pretend = 0, frame = 0
 144              		@ frame_needed = 0, uses_anonymous_args = 0
 145              		@ link register save eliminated.
 146 0000 0048     		ldr	r0, .L14
 147 0002 7047     		bx	lr
 148              	.L15:
 149              		.align	2
 150              	.L14:
 151 0004 00000000 		.word	.LC1
 152              		.size	_ZNK10Kinematics16MachineAxisNamesEv, .-_ZNK10Kinematics16MachineAxisNamesEv
 153              		.section	.text._ZNK10Kinematics16AxesAssumedHomedEm,"axG",%progbits,_ZNK10Kinematics16AxesAssumedH
 154              		.align	1
 155              		.p2align 2,,3
 156              		.weak	_ZNK10Kinematics16AxesAssumedHomedEm
 157              		.syntax unified
 158              		.thumb
 159              		.thumb_func
 160              		.fpu fpv4-sp-d16
 161              		.type	_ZNK10Kinematics16AxesAssumedHomedEm, %function
 162              	_ZNK10Kinematics16AxesAssumedHomedEm:
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 0, uses_anonymous_args = 0
 165              		@ link register save eliminated.
 166 0000 0846     		mov	r0, r1
 167 0002 7047     		bx	lr
 168              		.size	_ZNK10Kinematics16AxesAssumedHomedEm, .-_ZNK10Kinematics16AxesAssumedHomedEm
 169              		.section	.text._ZNK10Kinematics15MustBeHomedAxesEmb,"axG",%progbits,_ZNK10Kinematics15MustBeHomedA
 170              		.align	1
 171              		.p2align 2,,3
ARM GAS  /tmp/ccuOEqeJ.s 			page 4


 172              		.weak	_ZNK10Kinematics15MustBeHomedAxesEmb
 173              		.syntax unified
 174              		.thumb
 175              		.thumb_func
 176              		.fpu fpv4-sp-d16
 177              		.type	_ZNK10Kinematics15MustBeHomedAxesEmb, %function
 178              	_ZNK10Kinematics15MustBeHomedAxesEmb:
 179              		@ args = 0, pretend = 0, frame = 0
 180              		@ frame_needed = 0, uses_anonymous_args = 0
 181              		@ link register save eliminated.
 182 0000 002A     		cmp	r2, #0
 183 0002 14BF     		ite	ne
 184 0004 0846     		movne	r0, r1
 185 0006 0020     		moveq	r0, #0
 186 0008 7047     		bx	lr
 187              		.size	_ZNK10Kinematics15MustBeHomedAxesEmb, .-_ZNK10Kinematics15MustBeHomedAxesEmb
 188 000a 00BF     		.section	.text._ZNK10Kinematics24IsContinuousRotationAxisEj,"axG",%progbits,_ZNK10Kinematics24IsCo
 189              		.align	1
 190              		.p2align 2,,3
 191              		.weak	_ZNK10Kinematics24IsContinuousRotationAxisEj
 192              		.syntax unified
 193              		.thumb
 194              		.thumb_func
 195              		.fpu fpv4-sp-d16
 196              		.type	_ZNK10Kinematics24IsContinuousRotationAxisEj, %function
 197              	_ZNK10Kinematics24IsContinuousRotationAxisEj:
 198              		@ args = 0, pretend = 0, frame = 0
 199              		@ frame_needed = 0, uses_anonymous_args = 0
 200              		@ link register save eliminated.
 201 0000 0020     		movs	r0, #0
 202 0002 7047     		bx	lr
 203              		.size	_ZNK10Kinematics24IsContinuousRotationAxisEj, .-_ZNK10Kinematics24IsContinuousRotationAxisEj
 204              		.section	.text._ZNK18CoreBaseKinematics13GetHomingModeEv,"axG",%progbits,_ZNK18CoreBaseKinematics1
 205              		.align	1
 206              		.p2align 2,,3
 207              		.weak	_ZNK18CoreBaseKinematics13GetHomingModeEv
 208              		.syntax unified
 209              		.thumb
 210              		.thumb_func
 211              		.fpu fpv4-sp-d16
 212              		.type	_ZNK18CoreBaseKinematics13GetHomingModeEv, %function
 213              	_ZNK18CoreBaseKinematics13GetHomingModeEv:
 214              		@ args = 0, pretend = 0, frame = 0
 215              		@ frame_needed = 0, uses_anonymous_args = 0
 216              		@ link register save eliminated.
 217 0000 0020     		movs	r0, #0
 218 0002 7047     		bx	lr
 219              		.size	_ZNK18CoreBaseKinematics13GetHomingModeEv, .-_ZNK18CoreBaseKinematics13GetHomingModeEv
 220              		.section	.text._ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj,"ax",%progbits
 221              		.align	1
 222              		.p2align 2,,3
 223              		.global	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv4-sp-d16
 228              		.type	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj, %function
ARM GAS  /tmp/ccuOEqeJ.s 			page 5


 229              	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj:
 230              		@ args = 0, pretend = 0, frame = 0
 231              		@ frame_needed = 0, uses_anonymous_args = 0
 232              		@ link register save eliminated.
 233 0000 0368     		ldr	r3, [r0]
 234 0002 9B6F     		ldr	r3, [r3, #120]
 235 0004 1847     		bx	r3
 236              		.size	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj, .-_ZNK18CoreBaseKinematics24QueryTermi
 237 0006 00BF     		.section	.text._ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA,"ax",%progbits
 238              		.align	1
 239              		.p2align 2,,3
 240              		.global	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 241              		.syntax unified
 242              		.thumb
 243              		.thumb_func
 244              		.fpu fpv4-sp-d16
 245              		.type	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, %function
 246              	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA:
 247              		@ args = 4, pretend = 0, frame = 40
 248              		@ frame_needed = 0, uses_anonymous_args = 0
 249 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 250 0004 2DED028B 		vpush.64	{d8}
 251 0008 284D     		ldr	r5, .L35
 252 000a 8BB0     		sub	sp, sp, #44
 253 000c 2C68     		ldr	r4, [r5]	@ unaligned
 254 000e 149E     		ldr	r6, [sp, #80]
 255 0010 0F46     		mov	r7, r1
 256 0012 9846     		mov	r8, r3
 257 0014 72B3     		cbz	r2, .L24
 258 0016 01F5E473 		add	r3, r1, #456
 259 001a 04EB8304 		add	r4, r4, r3, lsl #2
 260 001e 94ED008A 		vldr.32	s16, [r4]
 261              	.L25:
 262 0022 0368     		ldr	r3, [r0]
 263 0024 3946     		mov	r1, r7
 264 0026 9B6F     		ldr	r3, [r3, #120]
 265 0028 9847     		blx	r3
 266 002a 0446     		mov	r4, r0
 267 002c 48B3     		cbz	r0, .L26
 268 002e 2B69     		ldr	r3, [r5, #16]
 269 0030 D3F89882 		ldr	r8, [r3, #664]
 270 0034 0DF10409 		add	r9, sp, #4
 271 0038 B8F1000F 		cmp	r8, #0
 272 003c 0BD0     		beq	.L27
 273 003e 4D46     		mov	r5, r9
 274 0040 0024     		movs	r4, #0
 275              	.L28:
 276 0042 2146     		mov	r1, r4
 277 0044 0022     		movs	r2, #0
 278 0046 3046     		mov	r0, r6
 279 0048 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 280 004c 0134     		adds	r4, r4, #1
 281 004e A045     		cmp	r8, r4
 282 0050 A5EC010A 		vstmia.32	r5!, {s0}
 283 0054 F5D1     		bne	.L28
 284              	.L27:
 285 0056 0AAB     		add	r3, sp, #40
ARM GAS  /tmp/ccuOEqeJ.s 			page 6


 286 0058 03EB8707 		add	r7, r3, r7, lsl #2
 287 005c 4246     		mov	r2, r8
 288 005e 4946     		mov	r1, r9
 289 0060 3046     		mov	r0, r6
 290 0062 07ED098A 		vstr.32	s16, [r7, #-36]
 291 0066 FFF7FEFF 		bl	_ZN3DDA12SetPositionsEPKfj
 292 006a 0BB0     		add	sp, sp, #44
 293              		@ sp needed
 294 006c BDEC028B 		vldm	sp!, {d8}
 295 0070 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 296              	.L24:
 297 0074 01F5E873 		add	r3, r1, #464
 298 0078 04EB8304 		add	r4, r4, r3, lsl #2
 299 007c 94ED018A 		vldr.32	s16, [r4, #4]
 300 0080 CFE7     		b	.L25
 301              	.L26:
 302 0082 08EB8708 		add	r8, r8, r7, lsl #2
 303 0086 98ED000A 		vldr.32	s0, [r8]
 304 008a 28EE000A 		vmul.f32	s0, s16, s0
 305 008e FFF7FEFF 		bl	lrintf
 306 0092 B37A     		ldrb	r3, [r6, #10]	@ zero_extendqisi2
 307 0094 06EB8707 		add	r7, r6, r7, lsl #2
 308 0098 64F30003 		bfi	r3, r4, #0, #1
 309 009c F861     		str	r0, [r7, #28]
 310 009e B372     		strb	r3, [r6, #10]
 311 00a0 0BB0     		add	sp, sp, #44
 312              		@ sp needed
 313 00a2 BDEC028B 		vldm	sp!, {d8}
 314 00a6 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 315              	.L36:
 316 00aa 00BF     		.align	2
 317              	.L35:
 318 00ac 00000000 		.word	reprap
 319              		.size	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, .-_ZNK18CoreBaseKinematics23On
 320              		.section	.text._ZN18CoreBaseKinematicsC2E14KinematicsType,"ax",%progbits
 321              		.align	1
 322              		.p2align 2,,3
 323              		.global	_ZN18CoreBaseKinematicsC2E14KinematicsType
 324              		.syntax unified
 325              		.thumb
 326              		.thumb_func
 327              		.fpu fpv4-sp-d16
 328              		.type	_ZN18CoreBaseKinematicsC2E14KinematicsType, %function
 329              	_ZN18CoreBaseKinematicsC2E14KinematicsType:
 330              		@ args = 0, pretend = 0, frame = 0
 331              		@ frame_needed = 0, uses_anonymous_args = 0
 332 0000 10B5     		push	{r4, lr}
 333 0002 0446     		mov	r4, r0
 334 0004 FFF7FEFF 		bl	_ZN20ZLeadscrewKinematicsC2E14KinematicsType
 335 0008 2346     		mov	r3, r4
 336 000a 064A     		ldr	r2, .L41
 337 000c 43F8402B 		str	r2, [r3], #64
 338 0010 04F16401 		add	r1, r4, #100
 339 0014 4FF07E52 		mov	r2, #1065353216
 340              	.L38:
 341 0018 43F8042B 		str	r2, [r3], #4	@ float
 342 001c 9942     		cmp	r1, r3
ARM GAS  /tmp/ccuOEqeJ.s 			page 7


 343 001e FBD1     		bne	.L38
 344 0020 2046     		mov	r0, r4
 345 0022 10BD     		pop	{r4, pc}
 346              	.L42:
 347              		.align	2
 348              	.L41:
 349 0024 08000000 		.word	.LANCHOR0+8
 350              		.size	_ZN18CoreBaseKinematicsC2E14KinematicsType, .-_ZN18CoreBaseKinematicsC2E14KinematicsType
 351              		.global	_ZN18CoreBaseKinematicsC1E14KinematicsType
 352              		.thumb_set _ZN18CoreBaseKinematicsC1E14KinematicsType,_ZN18CoreBaseKinematicsC2E14KinematicsType
 353              		.global	__aeabi_f2d
 354              		.section	.text._ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 355              		.align	1
 356              		.p2align 2,,3
 357              		.global	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 358              		.syntax unified
 359              		.thumb
 360              		.thumb_func
 361              		.fpu fpv4-sp-d16
 362              		.type	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 363              	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 364              		@ args = 4, pretend = 0, frame = 0
 365              		@ frame_needed = 0, uses_anonymous_args = 0
 366 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 367 0004 40F29B24 		movw	r4, #667
 368 0008 A142     		cmp	r1, r4
 369 000a 82B0     		sub	sp, sp, #8
 370 000c 21D1     		bne	.L44
 371 000e 0027     		movs	r7, #0
 372 0010 DFF8A090 		ldr	r9, .L61+8
 373 0014 0646     		mov	r6, r0
 374 0016 1546     		mov	r5, r2
 375 0018 9846     		mov	r8, r3
 376 001a 3C46     		mov	r4, r7
 377              	.L46:
 378 001c D9F81010 		ldr	r1, [r9, #16]
 379 0020 2144     		add	r1, r1, r4
 380 0022 2846     		mov	r0, r5
 381 0024 91F85A14 		ldrb	r1, [r1, #1114]	@ zero_extendqisi2
 382 0028 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 383 002c 8246     		mov	r10, r0
 384 002e 38B9     		cbnz	r0, .L59
 385              	.L45:
 386 0030 0134     		adds	r4, r4, #1
 387 0032 032C     		cmp	r4, #3
 388 0034 F2D1     		bne	.L46
 389 0036 8FB1     		cbz	r7, .L60
 390              	.L47:
 391 0038 3846     		mov	r0, r7
 392 003a 02B0     		add	sp, sp, #8
 393              		@ sp needed
 394 003c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 395              	.L59:
 396 0040 2846     		mov	r0, r5
 397 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 398 0046 06EB8403 		add	r3, r6, r4, lsl #2
 399 004a 5746     		mov	r7, r10
ARM GAS  /tmp/ccuOEqeJ.s 			page 8


 400 004c 83ED100A 		vstr.32	s0, [r3, #64]
 401 0050 EEE7     		b	.L45
 402              	.L44:
 403 0052 02B0     		add	sp, sp, #8
 404              		@ sp needed
 405 0054 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 406 0058 FFF7FEBF 		b	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 407              	.L60:
 408 005c 2846     		mov	r0, r5
 409 005e 5321     		movs	r1, #83
 410 0060 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 411 0064 0028     		cmp	r0, #0
 412 0066 E7D1     		bne	.L47
 413 0068 3368     		ldr	r3, [r6]
 414 006a 104D     		ldr	r5, .L61
 415 006c 1B68     		ldr	r3, [r3]
 416 006e 3946     		mov	r1, r7
 417 0070 3046     		mov	r0, r6
 418 0072 9847     		blx	r3
 419 0074 0E49     		ldr	r1, .L61+4
 420 0076 0246     		mov	r2, r0
 421 0078 4046     		mov	r0, r8
 422 007a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 423 007e 4036     		adds	r6, r6, #64
 424 0080 3C46     		mov	r4, r7
 425              	.L50:
 426 0082 D9F81030 		ldr	r3, [r9, #16]
 427 0086 56F8040B 		ldr	r0, [r6], #4	@ float
 428 008a 2344     		add	r3, r3, r4
 429 008c 0134     		adds	r4, r4, #1
 430 008e 93F85AA4 		ldrb	r10, [r3, #1114]	@ zero_extendqisi2
 431 0092 FFF7FEFF 		bl	__aeabi_f2d
 432 0096 5246     		mov	r2, r10
 433 0098 CDE90001 		strd	r0, [sp]
 434 009c 2946     		mov	r1, r5
 435 009e 4046     		mov	r0, r8
 436 00a0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 437 00a4 032C     		cmp	r4, #3
 438 00a6 ECD1     		bne	.L50
 439 00a8 C6E7     		b	.L47
 440              	.L62:
 441 00aa 00BF     		.align	2
 442              	.L61:
 443 00ac 24000000 		.word	.LC3
 444 00b0 00000000 		.word	.LC2
 445 00b4 00000000 		.word	reprap
 446              		.size	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN18CoreBaseKinematics9C
 447              		.global	_ZTV18CoreBaseKinematics
 448              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 449              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 450              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 451              	_ZL28cpu_irq_prev_interrupt_state:
 452 0000 00       		.space	1
 453              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 454              		.align	2
 455              		.type	_ZL32cpu_irq_critical_section_counter, %object
 456              		.size	_ZL32cpu_irq_critical_section_counter, 4
ARM GAS  /tmp/ccuOEqeJ.s 			page 9


 457              	_ZL32cpu_irq_critical_section_counter:
 458 0000 00000000 		.space	4
 459              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 460              		.align	2
 461              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 462              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 463              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 464 0000 00000000 		.space	4
 465              		.section	.rodata._ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%pro
 466              		.align	2
 467              	.LC2:
 468 0000 4B696E65 		.ascii	"Kinematics is %s with axis factors\000"
 468      6D617469 
 468      63732069 
 468      73202573 
 468      20776974 
 469 0023 00       		.space	1
 470              	.LC3:
 471 0024 2025633A 		.ascii	" %c:%.3f\000"
 471      252E3366 
 471      00
 472              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 473              		.align	2
 474              	.LC1:
 475 0000 58595A00 		.ascii	"XYZ\000"
 476              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 477              		.align	2
 478              	.LC0:
 479 0000 58595A55 		.ascii	"XYZUVWABC\000"
 479      56574142 
 479      4300
 480              		.section	.rodata._ZTV18CoreBaseKinematics,"a",%progbits
 481              		.align	2
 482              		.set	.LANCHOR0,. + 0
 483              		.type	_ZTV18CoreBaseKinematics, %object
 484              		.size	_ZTV18CoreBaseKinematics, 132
 485              	_ZTV18CoreBaseKinematics:
 486 0000 00000000 		.word	0
 487 0004 00000000 		.word	0
 488 0008 00000000 		.word	__cxa_pure_virtual
 489 000c 00000000 		.word	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 490 0010 00000000 		.word	__cxa_pure_virtual
 491 0014 00000000 		.word	__cxa_pure_virtual
 492 0018 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 493 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 494 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 495 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 496 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 497 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 498 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 499 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 500 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 501 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 502 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 503 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 504 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 505 004c 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRm
ARM GAS  /tmp/ccuOEqeJ.s 			page 10


 506 0050 00000000 		.word	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj
 507 0054 00000000 		.word	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 508 0058 00000000 		.word	_ZNK18CoreBaseKinematics13GetHomingModeEv
 509 005c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 510 0060 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 511 0064 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 512 0068 00000000 		.word	__cxa_pure_virtual
 513 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 514 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 515 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 516 0078 00000000 		.word	0
 517 007c 00000000 		.word	0
 518 0080 00000000 		.word	__cxa_pure_virtual
 519              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
