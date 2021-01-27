ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxJz77V.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN10Kinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN10Kinematics22SetCalib
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZN10Kinematics22SetCalibrationDefaultsEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN10Kinematics22SetCalibrationDefaultsEv, %function
  24              	_ZN10Kinematics22SetCalibrationDefaultsEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 7047     		bx	lr
  29              		.size	_ZN10Kinematics22SetCalibrationDefaultsEv, .-_ZN10Kinematics22SetCalibrationDefaultsEv
  30 0002 00BF     		.section	.text._ZNK10Kinematics26WriteCalibrationParametersEP9FileStore,"axG",%progbits,_ZNK10Kine
  31              		.align	1
  32              		.p2align 2,,3
  33              		.weak	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, %function
  39              	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 0120     		movs	r0, #1
  44 0002 7047     		bx	lr
  45              		.size	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK10Kinematics26WriteCalibrati
  46              		.section	.text._ZNK10Kinematics17GetTiltCorrectionEj,"axG",%progbits,_ZNK10Kinematics17GetTiltCorr
  47              		.align	1
  48              		.p2align 2,,3
  49              		.weak	_ZNK10Kinematics17GetTiltCorrectionEj
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu fpv4-sp-d16
  54              		.type	_ZNK10Kinematics17GetTiltCorrectionEj, %function
  55              	_ZNK10Kinematics17GetTiltCorrectionEj:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxJz77V.s 			page 2


  58              		@ link register save eliminated.
  59 0000 9FED010A 		vldr.32	s0, .L5
  60 0004 7047     		bx	lr
  61              	.L6:
  62 0006 00BF     		.align	2
  63              	.L5:
  64 0008 00000000 		.word	0
  65              		.size	_ZNK10Kinematics17GetTiltCorrectionEj, .-_ZNK10Kinematics17GetTiltCorrectionEj
  66              		.section	.text._ZNK10Kinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK10Kinematics23AxesT
  67              		.align	1
  68              		.p2align 2,,3
  69              		.weak	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu fpv4-sp-d16
  74              		.type	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, %function
  75              	_ZNK10Kinematics23AxesToHomeBeforeProbingEv:
  76              		@ args = 0, pretend = 0, frame = 0
  77              		@ frame_needed = 0, uses_anonymous_args = 0
  78              		@ link register save eliminated.
  79 0000 0320     		movs	r0, #3
  80 0002 7047     		bx	lr
  81              		.size	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, .-_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  82              		.section	.text._ZNK10Kinematics13GetMotionTypeEj,"axG",%progbits,_ZNK10Kinematics13GetMotionTypeEj
  83              		.align	1
  84              		.p2align 2,,3
  85              		.weak	_ZNK10Kinematics13GetMotionTypeEj
  86              		.syntax unified
  87              		.thumb
  88              		.thumb_func
  89              		.fpu fpv4-sp-d16
  90              		.type	_ZNK10Kinematics13GetMotionTypeEj, %function
  91              	_ZNK10Kinematics13GetMotionTypeEj:
  92              		@ args = 0, pretend = 0, frame = 0
  93              		@ frame_needed = 0, uses_anonymous_args = 0
  94              		@ link register save eliminated.
  95 0000 0020     		movs	r0, #0
  96 0002 7047     		bx	lr
  97              		.size	_ZNK10Kinematics13GetMotionTypeEj, .-_ZNK10Kinematics13GetMotionTypeEj
  98              		.section	.text._ZNK10Kinematics16NumHomingButtonsEj,"axG",%progbits,_ZNK10Kinematics16NumHomingBut
  99              		.align	1
 100              		.p2align 2,,3
 101              		.weak	_ZNK10Kinematics16NumHomingButtonsEj
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu fpv4-sp-d16
 106              		.type	_ZNK10Kinematics16NumHomingButtonsEj, %function
 107              	_ZNK10Kinematics16NumHomingButtonsEj:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110              		@ link register save eliminated.
 111 0000 0846     		mov	r0, r1
 112 0002 7047     		bx	lr
 113              		.size	_ZNK10Kinematics16NumHomingButtonsEj, .-_ZNK10Kinematics16NumHomingButtonsEj
 114              		.section	.text._ZNK10Kinematics17HomingButtonNamesEv,"axG",%progbits,_ZNK10Kinematics17HomingButto
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxJz77V.s 			page 3


 115              		.align	1
 116              		.p2align 2,,3
 117              		.weak	_ZNK10Kinematics17HomingButtonNamesEv
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu fpv4-sp-d16
 122              		.type	_ZNK10Kinematics17HomingButtonNamesEv, %function
 123              	_ZNK10Kinematics17HomingButtonNamesEv:
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126              		@ link register save eliminated.
 127 0000 0048     		ldr	r0, .L11
 128 0002 7047     		bx	lr
 129              	.L12:
 130              		.align	2
 131              	.L11:
 132 0004 00000000 		.word	.LC0
 133              		.size	_ZNK10Kinematics17HomingButtonNamesEv, .-_ZNK10Kinematics17HomingButtonNamesEv
 134              		.section	.text._ZNK10Kinematics16MachineAxisNamesEv,"axG",%progbits,_ZNK10Kinematics16MachineAxisN
 135              		.align	1
 136              		.p2align 2,,3
 137              		.weak	_ZNK10Kinematics16MachineAxisNamesEv
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu fpv4-sp-d16
 142              		.type	_ZNK10Kinematics16MachineAxisNamesEv, %function
 143              	_ZNK10Kinematics16MachineAxisNamesEv:
 144              		@ args = 0, pretend = 0, frame = 0
 145              		@ frame_needed = 0, uses_anonymous_args = 0
 146              		@ link register save eliminated.
 147 0000 0048     		ldr	r0, .L14
 148 0002 7047     		bx	lr
 149              	.L15:
 150              		.align	2
 151              	.L14:
 152 0004 00000000 		.word	.LC1
 153              		.size	_ZNK10Kinematics16MachineAxisNamesEv, .-_ZNK10Kinematics16MachineAxisNamesEv
 154              		.section	.text._ZNK10Kinematics16AxesAssumedHomedEm,"axG",%progbits,_ZNK10Kinematics16AxesAssumedH
 155              		.align	1
 156              		.p2align 2,,3
 157              		.weak	_ZNK10Kinematics16AxesAssumedHomedEm
 158              		.syntax unified
 159              		.thumb
 160              		.thumb_func
 161              		.fpu fpv4-sp-d16
 162              		.type	_ZNK10Kinematics16AxesAssumedHomedEm, %function
 163              	_ZNK10Kinematics16AxesAssumedHomedEm:
 164              		@ args = 0, pretend = 0, frame = 0
 165              		@ frame_needed = 0, uses_anonymous_args = 0
 166              		@ link register save eliminated.
 167 0000 0846     		mov	r0, r1
 168 0002 7047     		bx	lr
 169              		.size	_ZNK10Kinematics16AxesAssumedHomedEm, .-_ZNK10Kinematics16AxesAssumedHomedEm
 170              		.section	.text._ZNK10Kinematics15MustBeHomedAxesEmb,"axG",%progbits,_ZNK10Kinematics15MustBeHomedA
 171              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxJz77V.s 			page 4


 172              		.p2align 2,,3
 173              		.weak	_ZNK10Kinematics15MustBeHomedAxesEmb
 174              		.syntax unified
 175              		.thumb
 176              		.thumb_func
 177              		.fpu fpv4-sp-d16
 178              		.type	_ZNK10Kinematics15MustBeHomedAxesEmb, %function
 179              	_ZNK10Kinematics15MustBeHomedAxesEmb:
 180              		@ args = 0, pretend = 0, frame = 0
 181              		@ frame_needed = 0, uses_anonymous_args = 0
 182              		@ link register save eliminated.
 183 0000 002A     		cmp	r2, #0
 184 0002 14BF     		ite	ne
 185 0004 0846     		movne	r0, r1
 186 0006 0020     		moveq	r0, #0
 187 0008 7047     		bx	lr
 188              		.size	_ZNK10Kinematics15MustBeHomedAxesEmb, .-_ZNK10Kinematics15MustBeHomedAxesEmb
 189 000a 00BF     		.section	.text._ZNK10Kinematics24IsContinuousRotationAxisEj,"axG",%progbits,_ZNK10Kinematics24IsCo
 190              		.align	1
 191              		.p2align 2,,3
 192              		.weak	_ZNK10Kinematics24IsContinuousRotationAxisEj
 193              		.syntax unified
 194              		.thumb
 195              		.thumb_func
 196              		.fpu fpv4-sp-d16
 197              		.type	_ZNK10Kinematics24IsContinuousRotationAxisEj, %function
 198              	_ZNK10Kinematics24IsContinuousRotationAxisEj:
 199              		@ args = 0, pretend = 0, frame = 0
 200              		@ frame_needed = 0, uses_anonymous_args = 0
 201              		@ link register save eliminated.
 202 0000 0020     		movs	r0, #0
 203 0002 7047     		bx	lr
 204              		.size	_ZNK10Kinematics24IsContinuousRotationAxisEj, .-_ZNK10Kinematics24IsContinuousRotationAxisEj
 205              		.section	.text._ZNK18CoreBaseKinematics13GetHomingModeEv,"axG",%progbits,_ZNK18CoreBaseKinematics1
 206              		.align	1
 207              		.p2align 2,,3
 208              		.weak	_ZNK18CoreBaseKinematics13GetHomingModeEv
 209              		.syntax unified
 210              		.thumb
 211              		.thumb_func
 212              		.fpu fpv4-sp-d16
 213              		.type	_ZNK18CoreBaseKinematics13GetHomingModeEv, %function
 214              	_ZNK18CoreBaseKinematics13GetHomingModeEv:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217              		@ link register save eliminated.
 218 0000 0020     		movs	r0, #0
 219 0002 7047     		bx	lr
 220              		.size	_ZNK18CoreBaseKinematics13GetHomingModeEv, .-_ZNK18CoreBaseKinematics13GetHomingModeEv
 221              		.section	.text._ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxJz77V.s 			page 5


 229              		.type	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj, %function
 230              	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233              		@ link register save eliminated.
 234 0000 0368     		ldr	r3, [r0]
 235 0002 9B6F     		ldr	r3, [r3, #120]
 236 0004 1847     		bx	r3
 237              		.size	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj, .-_ZNK18CoreBaseKinematics24QueryTermi
 238 0006 00BF     		.section	.text._ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA,"ax",%progbits
 239              		.align	1
 240              		.p2align 2,,3
 241              		.global	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 242              		.syntax unified
 243              		.thumb
 244              		.thumb_func
 245              		.fpu fpv4-sp-d16
 246              		.type	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, %function
 247              	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA:
 248              		@ args = 4, pretend = 0, frame = 40
 249              		@ frame_needed = 0, uses_anonymous_args = 0
 250 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 251 0004 2DED028B 		vpush.64	{d8}
 252 0008 284D     		ldr	r5, .L35
 253 000a 8BB0     		sub	sp, sp, #44
 254 000c 6C68     		ldr	r4, [r5, #4]	@ unaligned
 255 000e 149E     		ldr	r6, [sp, #80]
 256 0010 0F46     		mov	r7, r1
 257 0012 9846     		mov	r8, r3
 258 0014 72B3     		cbz	r2, .L24
 259 0016 01F5F373 		add	r3, r1, #486
 260 001a 04EB8304 		add	r4, r4, r3, lsl #2
 261 001e 94ED018A 		vldr.32	s16, [r4, #4]
 262              	.L25:
 263 0022 0368     		ldr	r3, [r0]
 264 0024 3946     		mov	r1, r7
 265 0026 9B6F     		ldr	r3, [r3, #120]
 266 0028 9847     		blx	r3
 267 002a 0446     		mov	r4, r0
 268 002c 48B3     		cbz	r0, .L26
 269 002e 6B69     		ldr	r3, [r5, #20]
 270 0030 D3F85C83 		ldr	r8, [r3, #860]
 271 0034 0DF10409 		add	r9, sp, #4
 272 0038 B8F1000F 		cmp	r8, #0
 273 003c 0BD0     		beq	.L27
 274 003e 4D46     		mov	r5, r9
 275 0040 0024     		movs	r4, #0
 276              	.L28:
 277 0042 2146     		mov	r1, r4
 278 0044 0022     		movs	r2, #0
 279 0046 3046     		mov	r0, r6
 280 0048 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 281 004c 0134     		adds	r4, r4, #1
 282 004e A045     		cmp	r8, r4
 283 0050 A5EC010A 		vstmia.32	r5!, {s0}
 284 0054 F5D1     		bne	.L28
 285              	.L27:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxJz77V.s 			page 6


 286 0056 0AAB     		add	r3, sp, #40
 287 0058 03EB8707 		add	r7, r3, r7, lsl #2
 288 005c 4246     		mov	r2, r8
 289 005e 4946     		mov	r1, r9
 290 0060 3046     		mov	r0, r6
 291 0062 07ED098A 		vstr.32	s16, [r7, #-36]
 292 0066 FFF7FEFF 		bl	_ZN3DDA12SetPositionsEPKfj
 293 006a 0BB0     		add	sp, sp, #44
 294              		@ sp needed
 295 006c BDEC028B 		vldm	sp!, {d8}
 296 0070 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 297              	.L24:
 298 0074 01F5F873 		add	r3, r1, #496
 299 0078 04EB8304 		add	r4, r4, r3, lsl #2
 300 007c 94ED008A 		vldr.32	s16, [r4]
 301 0080 CFE7     		b	.L25
 302              	.L26:
 303 0082 08EB8708 		add	r8, r8, r7, lsl #2
 304 0086 98ED000A 		vldr.32	s0, [r8]
 305 008a 28EE000A 		vmul.f32	s0, s16, s0
 306 008e FFF7FEFF 		bl	lrintf
 307 0092 B37A     		ldrb	r3, [r6, #10]	@ zero_extendqisi2
 308 0094 0837     		adds	r7, r7, #8
 309 0096 64F30003 		bfi	r3, r4, #0, #1
 310 009a 46F82700 		str	r0, [r6, r7, lsl #2]
 311 009e B372     		strb	r3, [r6, #10]
 312 00a0 0BB0     		add	sp, sp, #44
 313              		@ sp needed
 314 00a2 BDEC028B 		vldm	sp!, {d8}
 315 00a6 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 316              	.L36:
 317 00aa 00BF     		.align	2
 318              	.L35:
 319 00ac 00000000 		.word	reprap
 320              		.size	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, .-_ZNK18CoreBaseKinematics23On
 321              		.section	.text._ZN18CoreBaseKinematicsC2E14KinematicsType,"ax",%progbits
 322              		.align	1
 323              		.p2align 2,,3
 324              		.global	_ZN18CoreBaseKinematicsC2E14KinematicsType
 325              		.syntax unified
 326              		.thumb
 327              		.thumb_func
 328              		.fpu fpv4-sp-d16
 329              		.type	_ZN18CoreBaseKinematicsC2E14KinematicsType, %function
 330              	_ZN18CoreBaseKinematicsC2E14KinematicsType:
 331              		@ args = 0, pretend = 0, frame = 0
 332              		@ frame_needed = 0, uses_anonymous_args = 0
 333 0000 10B5     		push	{r4, lr}
 334 0002 0446     		mov	r4, r0
 335 0004 FFF7FEFF 		bl	_ZN20ZLeadscrewKinematicsC2E14KinematicsType
 336 0008 2346     		mov	r3, r4
 337 000a 064A     		ldr	r2, .L41
 338 000c 43F8602B 		str	r2, [r3], #96
 339 0010 04F18401 		add	r1, r4, #132
 340 0014 4FF07E52 		mov	r2, #1065353216
 341              	.L38:
 342 0018 43F8042B 		str	r2, [r3], #4	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxJz77V.s 			page 7


 343 001c 9942     		cmp	r1, r3
 344 001e FBD1     		bne	.L38
 345 0020 2046     		mov	r0, r4
 346 0022 10BD     		pop	{r4, pc}
 347              	.L42:
 348              		.align	2
 349              	.L41:
 350 0024 08000000 		.word	.LANCHOR0+8
 351              		.size	_ZN18CoreBaseKinematicsC2E14KinematicsType, .-_ZN18CoreBaseKinematicsC2E14KinematicsType
 352              		.global	_ZN18CoreBaseKinematicsC1E14KinematicsType
 353              		.thumb_set _ZN18CoreBaseKinematicsC1E14KinematicsType,_ZN18CoreBaseKinematicsC2E14KinematicsType
 354              		.global	__aeabi_f2d
 355              		.section	.text._ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 356              		.align	1
 357              		.p2align 2,,3
 358              		.global	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 359              		.syntax unified
 360              		.thumb
 361              		.thumb_func
 362              		.fpu fpv4-sp-d16
 363              		.type	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 364              	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 365              		@ args = 4, pretend = 0, frame = 0
 366              		@ frame_needed = 0, uses_anonymous_args = 0
 367 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 368 0004 40F29B24 		movw	r4, #667
 369 0008 A142     		cmp	r1, r4
 370 000a 82B0     		sub	sp, sp, #8
 371 000c 21D1     		bne	.L44
 372 000e 0027     		movs	r7, #0
 373 0010 DFF8A090 		ldr	r9, .L61+8
 374 0014 0646     		mov	r6, r0
 375 0016 1546     		mov	r5, r2
 376 0018 9846     		mov	r8, r3
 377 001a 3C46     		mov	r4, r7
 378              	.L46:
 379 001c D9F81410 		ldr	r1, [r9, #20]
 380 0020 2144     		add	r1, r1, r4
 381 0022 2846     		mov	r0, r5
 382 0024 91F81015 		ldrb	r1, [r1, #1296]	@ zero_extendqisi2
 383 0028 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 384 002c 8246     		mov	r10, r0
 385 002e 38B9     		cbnz	r0, .L59
 386              	.L45:
 387 0030 0134     		adds	r4, r4, #1
 388 0032 032C     		cmp	r4, #3
 389 0034 F2D1     		bne	.L46
 390 0036 8FB1     		cbz	r7, .L60
 391              	.L47:
 392 0038 3846     		mov	r0, r7
 393 003a 02B0     		add	sp, sp, #8
 394              		@ sp needed
 395 003c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 396              	.L59:
 397 0040 2846     		mov	r0, r5
 398 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 399 0046 06EB8403 		add	r3, r6, r4, lsl #2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxJz77V.s 			page 8


 400 004a 5746     		mov	r7, r10
 401 004c 83ED180A 		vstr.32	s0, [r3, #96]
 402 0050 EEE7     		b	.L45
 403              	.L44:
 404 0052 02B0     		add	sp, sp, #8
 405              		@ sp needed
 406 0054 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 407 0058 FFF7FEBF 		b	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 408              	.L60:
 409 005c 2846     		mov	r0, r5
 410 005e 5321     		movs	r1, #83
 411 0060 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 412 0064 0028     		cmp	r0, #0
 413 0066 E7D1     		bne	.L47
 414 0068 3368     		ldr	r3, [r6]
 415 006a 104D     		ldr	r5, .L61
 416 006c 1B68     		ldr	r3, [r3]
 417 006e 3946     		mov	r1, r7
 418 0070 3046     		mov	r0, r6
 419 0072 9847     		blx	r3
 420 0074 0E49     		ldr	r1, .L61+4
 421 0076 0246     		mov	r2, r0
 422 0078 4046     		mov	r0, r8
 423 007a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 424 007e 6036     		adds	r6, r6, #96
 425 0080 3C46     		mov	r4, r7
 426              	.L50:
 427 0082 D9F81430 		ldr	r3, [r9, #20]
 428 0086 56F8040B 		ldr	r0, [r6], #4	@ float
 429 008a 2344     		add	r3, r3, r4
 430 008c 0134     		adds	r4, r4, #1
 431 008e 93F810A5 		ldrb	r10, [r3, #1296]	@ zero_extendqisi2
 432 0092 FFF7FEFF 		bl	__aeabi_f2d
 433 0096 5246     		mov	r2, r10
 434 0098 CDE90001 		strd	r0, [sp]
 435 009c 2946     		mov	r1, r5
 436 009e 4046     		mov	r0, r8
 437 00a0 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 438 00a4 032C     		cmp	r4, #3
 439 00a6 ECD1     		bne	.L50
 440 00a8 C6E7     		b	.L47
 441              	.L62:
 442 00aa 00BF     		.align	2
 443              	.L61:
 444 00ac 24000000 		.word	.LC3
 445 00b0 00000000 		.word	.LC2
 446 00b4 00000000 		.word	reprap
 447              		.size	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN18CoreBaseKinematics9C
 448              		.global	_ZTV18CoreBaseKinematics
 449              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 450              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 451              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 452              	_ZL28cpu_irq_prev_interrupt_state:
 453 0000 00       		.space	1
 454              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 455              		.align	2
 456              		.type	_ZL32cpu_irq_critical_section_counter, %object
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxJz77V.s 			page 9


 457              		.size	_ZL32cpu_irq_critical_section_counter, 4
 458              	_ZL32cpu_irq_critical_section_counter:
 459 0000 00000000 		.space	4
 460              		.section	.rodata._ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%pro
 461              		.align	2
 462              	.LC2:
 463 0000 4B696E65 		.ascii	"Kinematics is %s with axis factors\000"
 463      6D617469 
 463      63732069 
 463      73202573 
 463      20776974 
 464 0023 00       		.space	1
 465              	.LC3:
 466 0024 2025633A 		.ascii	" %c:%.3f\000"
 466      252E3366 
 466      00
 467              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 468              		.align	2
 469              	.LC1:
 470 0000 58595A00 		.ascii	"XYZ\000"
 471              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 472              		.align	2
 473              	.LC0:
 474 0000 58595A55 		.ascii	"XYZUVWABC\000"
 474      56574142 
 474      4300
 475              		.section	.rodata._ZTV18CoreBaseKinematics,"a",%progbits
 476              		.align	2
 477              		.set	.LANCHOR0,. + 0
 478              		.type	_ZTV18CoreBaseKinematics, %object
 479              		.size	_ZTV18CoreBaseKinematics, 132
 480              	_ZTV18CoreBaseKinematics:
 481 0000 00000000 		.word	0
 482 0004 00000000 		.word	0
 483 0008 00000000 		.word	__cxa_pure_virtual
 484 000c 00000000 		.word	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 485 0010 00000000 		.word	__cxa_pure_virtual
 486 0014 00000000 		.word	__cxa_pure_virtual
 487 0018 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 488 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 489 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 490 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 491 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 492 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 493 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 494 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 495 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 496 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 497 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 498 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 499 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 500 004c 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef
 501 0050 00000000 		.word	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj
 502 0054 00000000 		.word	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 503 0058 00000000 		.word	_ZNK18CoreBaseKinematics13GetHomingModeEv
 504 005c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 505 0060 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccxJz77V.s 			page 10


 506 0064 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 507 0068 00000000 		.word	__cxa_pure_virtual
 508 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 509 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 510 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 511 0078 00000000 		.word	0
 512 007c 00000000 		.word	0
 513 0080 00000000 		.word	__cxa_pure_virtual
 514              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
