ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXKRHaX.s 			page 1


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
  13              		.file	"CartesianKinematics.cpp"
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXKRHaX.s 			page 2


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXKRHaX.s 			page 3


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXKRHaX.s 			page 4


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
 205              		.section	.text._ZNK19CartesianKinematics13GetHomingModeEv,"axG",%progbits,_ZNK19CartesianKinematic
 206              		.align	1
 207              		.p2align 2,,3
 208              		.weak	_ZNK19CartesianKinematics13GetHomingModeEv
 209              		.syntax unified
 210              		.thumb
 211              		.thumb_func
 212              		.fpu fpv4-sp-d16
 213              		.type	_ZNK19CartesianKinematics13GetHomingModeEv, %function
 214              	_ZNK19CartesianKinematics13GetHomingModeEv:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217              		@ link register save eliminated.
 218 0000 0020     		movs	r0, #0
 219 0002 7047     		bx	lr
 220              		.size	_ZNK19CartesianKinematics13GetHomingModeEv, .-_ZNK19CartesianKinematics13GetHomingModeEv
 221              		.section	.text._ZNK19CartesianKinematics7GetNameEb,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	_ZNK19CartesianKinematics7GetNameEb
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXKRHaX.s 			page 5


 229              		.type	_ZNK19CartesianKinematics7GetNameEb, %function
 230              	_ZNK19CartesianKinematics7GetNameEb:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233              		@ link register save eliminated.
 234 0000 024B     		ldr	r3, .L25
 235 0002 0348     		ldr	r0, .L25+4
 236 0004 0029     		cmp	r1, #0
 237 0006 08BF     		it	eq
 238 0008 1846     		moveq	r0, r3
 239 000a 7047     		bx	lr
 240              	.L26:
 241              		.align	2
 242              	.L25:
 243 000c 0C000000 		.word	.LC3
 244 0010 00000000 		.word	.LC2
 245              		.size	_ZNK19CartesianKinematics7GetNameEb, .-_ZNK19CartesianKinematics7GetNameEb
 246              		.section	.text._ZNK19CartesianKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 247              		.align	1
 248              		.p2align 2,,3
 249              		.global	_ZNK19CartesianKinematics21MotorStepsToCartesianEPKlPKfjjPf
 250              		.syntax unified
 251              		.thumb
 252              		.thumb_func
 253              		.fpu fpv4-sp-d16
 254              		.type	_ZNK19CartesianKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 255              	_ZNK19CartesianKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 256              		@ args = 8, pretend = 0, frame = 0
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258              		@ link register save eliminated.
 259 0000 ABB1     		cbz	r3, .L35
 260 0002 10B4     		push	{r4}
 261 0004 0439     		subs	r1, r1, #4
 262 0006 0298     		ldr	r0, [sp, #8]
 263 0008 01EB8303 		add	r3, r1, r3, lsl #2
 264              	.L29:
 265 000c 51F8044F 		ldr	r4, [r1, #4]!
 266 0010 F2EC016A 		vldmia.32	r2!, {s13}
 267 0014 07EE904A 		vmov	s15, r4	@ int
 268 0018 F8EEE77A 		vcvt.f32.s32	s15, s15
 269 001c 9942     		cmp	r1, r3
 270 001e 87EEA67A 		vdiv.f32	s14, s15, s13
 271 0022 A0EC017A 		vstmia.32	r0!, {s14}
 272 0026 F1D1     		bne	.L29
 273 0028 5DF8044B 		ldr	r4, [sp], #4
 274 002c 7047     		bx	lr
 275              	.L35:
 276 002e 7047     		bx	lr
 277              		.size	_ZNK19CartesianKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK19CartesianKinematics21Mo
 278              		.section	.text._ZNK19CartesianKinematics24QueryTerminateHomingMoveEj,"ax",%progbits
 279              		.align	1
 280              		.p2align 2,,3
 281              		.global	_ZNK19CartesianKinematics24QueryTerminateHomingMoveEj
 282              		.syntax unified
 283              		.thumb
 284              		.thumb_func
 285              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXKRHaX.s 			page 6


 286              		.type	_ZNK19CartesianKinematics24QueryTerminateHomingMoveEj, %function
 287              	_ZNK19CartesianKinematics24QueryTerminateHomingMoveEj:
 288              		@ args = 0, pretend = 0, frame = 0
 289              		@ frame_needed = 0, uses_anonymous_args = 0
 290              		@ link register save eliminated.
 291 0000 0020     		movs	r0, #0
 292 0002 7047     		bx	lr
 293              		.size	_ZNK19CartesianKinematics24QueryTerminateHomingMoveEj, .-_ZNK19CartesianKinematics24QueryTer
 294              		.section	.text._ZNK19CartesianKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 295              		.align	1
 296              		.p2align 2,,3
 297              		.global	_ZNK19CartesianKinematics25LimitSpeedAndAccelerationER3DDAPKf
 298              		.syntax unified
 299              		.thumb
 300              		.thumb_func
 301              		.fpu fpv4-sp-d16
 302              		.type	_ZNK19CartesianKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 303              	_ZNK19CartesianKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 304              		@ args = 0, pretend = 0, frame = 0
 305              		@ frame_needed = 0, uses_anonymous_args = 0
 306              		@ link register save eliminated.
 307 0000 7047     		bx	lr
 308              		.size	_ZNK19CartesianKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK19CartesianKinematics25
 309 0002 00BF     		.section	.text._ZN19CartesianKinematicsD2Ev,"axG",%progbits,_ZN19CartesianKinematicsD5Ev,comdat
 310              		.align	1
 311              		.p2align 2,,3
 312              		.weak	_ZN19CartesianKinematicsD2Ev
 313              		.syntax unified
 314              		.thumb
 315              		.thumb_func
 316              		.fpu fpv4-sp-d16
 317              		.type	_ZN19CartesianKinematicsD2Ev, %function
 318              	_ZN19CartesianKinematicsD2Ev:
 319              		@ args = 0, pretend = 0, frame = 0
 320              		@ frame_needed = 0, uses_anonymous_args = 0
 321              		@ link register save eliminated.
 322 0000 7047     		bx	lr
 323              		.size	_ZN19CartesianKinematicsD2Ev, .-_ZN19CartesianKinematicsD2Ev
 324              		.weak	_ZN19CartesianKinematicsD1Ev
 325              		.thumb_set _ZN19CartesianKinematicsD1Ev,_ZN19CartesianKinematicsD2Ev
 326 0002 00BF     		.section	.text._ZNK19CartesianKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 327              		.align	1
 328              		.p2align 2,,3
 329              		.global	_ZNK19CartesianKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 330              		.syntax unified
 331              		.thumb
 332              		.thumb_func
 333              		.fpu fpv4-sp-d16
 334              		.type	_ZNK19CartesianKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 335              	_ZNK19CartesianKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 336              		@ args = 12, pretend = 0, frame = 0
 337              		@ frame_needed = 0, uses_anonymous_args = 0
 338 0000 A3B1     		cbz	r3, .L49
 339 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 340 0004 01EB8307 		add	r7, r1, r3, lsl #2
 341 0008 079B     		ldr	r3, [sp, #28]
 342 000a 0C46     		mov	r4, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXKRHaX.s 			page 7


 343 000c 1546     		mov	r5, r2
 344 000e 1E1F     		subs	r6, r3, #4
 345              	.L43:
 346 0010 B4EC010A 		vldmia.32	r4!, {s0}
 347 0014 F5EC017A 		vldmia.32	r5!, {s15}
 348 0018 20EE270A 		vmul.f32	s0, s0, s15
 349 001c FFF7FEFF 		bl	lrintf
 350 0020 BC42     		cmp	r4, r7
 351 0022 46F8040F 		str	r0, [r6, #4]!
 352 0026 F3D1     		bne	.L43
 353 0028 0120     		movs	r0, #1
 354 002a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 355              	.L49:
 356 002c 0120     		movs	r0, #1
 357 002e 7047     		bx	lr
 358              		.size	_ZNK19CartesianKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK19CartesianKinematics21C
 359              		.section	.text._ZNK19CartesianKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA,"ax",%progbits
 360              		.align	1
 361              		.p2align 2,,3
 362              		.global	_ZNK19CartesianKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 363              		.syntax unified
 364              		.thumb
 365              		.thumb_func
 366              		.fpu fpv4-sp-d16
 367              		.type	_ZNK19CartesianKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, %function
 368              	_ZNK19CartesianKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA:
 369              		@ args = 4, pretend = 0, frame = 0
 370              		@ frame_needed = 0, uses_anonymous_args = 0
 371 0000 38B5     		push	{r3, r4, r5, lr}
 372 0002 1148     		ldr	r0, .L57
 373 0004 049D     		ldr	r5, [sp, #16]
 374 0006 4068     		ldr	r0, [r0, #4]	@ unaligned
 375 0008 0C46     		mov	r4, r1
 376 000a AAB9     		cbnz	r2, .L56
 377 000c 01F5F872 		add	r2, r1, #496
 378 0010 00EB8200 		add	r0, r0, r2, lsl #2
 379 0014 90ED000A 		vldr.32	s0, [r0]
 380              	.L54:
 381 0018 03EB8403 		add	r3, r3, r4, lsl #2
 382 001c D3ED007A 		vldr.32	s15, [r3]
 383 0020 20EE270A 		vmul.f32	s0, s0, s15
 384 0024 FFF7FEFF 		bl	lrintf
 385 0028 AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 386 002a 0834     		adds	r4, r4, #8
 387 002c 6FF30003 		bfc	r3, #0, #1
 388 0030 45F82400 		str	r0, [r5, r4, lsl #2]
 389 0034 AB72     		strb	r3, [r5, #10]
 390 0036 38BD     		pop	{r3, r4, r5, pc}
 391              	.L56:
 392 0038 01F5F372 		add	r2, r1, #486
 393 003c 00EB8200 		add	r0, r0, r2, lsl #2
 394 0040 90ED010A 		vldr.32	s0, [r0, #4]
 395 0044 E8E7     		b	.L54
 396              	.L58:
 397 0046 00BF     		.align	2
 398              	.L57:
 399 0048 00000000 		.word	reprap
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXKRHaX.s 			page 8


 400              		.size	_ZNK19CartesianKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, .-_ZNK19CartesianKinematics23
 401              		.section	.text._ZN19CartesianKinematicsD0Ev,"axG",%progbits,_ZN19CartesianKinematicsD5Ev,comdat
 402              		.align	1
 403              		.p2align 2,,3
 404              		.weak	_ZN19CartesianKinematicsD0Ev
 405              		.syntax unified
 406              		.thumb
 407              		.thumb_func
 408              		.fpu fpv4-sp-d16
 409              		.type	_ZN19CartesianKinematicsD0Ev, %function
 410              	_ZN19CartesianKinematicsD0Ev:
 411              		@ args = 0, pretend = 0, frame = 0
 412              		@ frame_needed = 0, uses_anonymous_args = 0
 413 0000 10B5     		push	{r4, lr}
 414 0002 6021     		movs	r1, #96
 415 0004 0446     		mov	r4, r0
 416 0006 FFF7FEFF 		bl	_ZdlPvj
 417 000a 2046     		mov	r0, r4
 418 000c 10BD     		pop	{r4, pc}
 419              		.size	_ZN19CartesianKinematicsD0Ev, .-_ZN19CartesianKinematicsD0Ev
 420 000e 00BF     		.section	.text._ZN19CartesianKinematicsC2Ev,"ax",%progbits
 421              		.align	1
 422              		.p2align 2,,3
 423              		.global	_ZN19CartesianKinematicsC2Ev
 424              		.syntax unified
 425              		.thumb
 426              		.thumb_func
 427              		.fpu fpv4-sp-d16
 428              		.type	_ZN19CartesianKinematicsC2Ev, %function
 429              	_ZN19CartesianKinematicsC2Ev:
 430              		@ args = 0, pretend = 0, frame = 0
 431              		@ frame_needed = 0, uses_anonymous_args = 0
 432 0000 10B5     		push	{r4, lr}
 433 0002 0021     		movs	r1, #0
 434 0004 0446     		mov	r4, r0
 435 0006 FFF7FEFF 		bl	_ZN20ZLeadscrewKinematicsC2E14KinematicsType
 436 000a 024B     		ldr	r3, .L63
 437 000c 2360     		str	r3, [r4]
 438 000e 2046     		mov	r0, r4
 439 0010 10BD     		pop	{r4, pc}
 440              	.L64:
 441 0012 00BF     		.align	2
 442              	.L63:
 443 0014 08000000 		.word	.LANCHOR0+8
 444              		.size	_ZN19CartesianKinematicsC2Ev, .-_ZN19CartesianKinematicsC2Ev
 445              		.global	_ZN19CartesianKinematicsC1Ev
 446              		.thumb_set _ZN19CartesianKinematicsC1Ev,_ZN19CartesianKinematicsC2Ev
 447              		.global	_ZTV19CartesianKinematics
 448              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 449              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 450              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 451              	_ZL28cpu_irq_prev_interrupt_state:
 452 0000 00       		.space	1
 453              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 454              		.align	2
 455              		.type	_ZL32cpu_irq_critical_section_counter, %object
 456              		.size	_ZL32cpu_irq_critical_section_counter, 4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXKRHaX.s 			page 9


 457              	_ZL32cpu_irq_critical_section_counter:
 458 0000 00000000 		.space	4
 459              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 460              		.align	2
 461              	.LC1:
 462 0000 58595A00 		.ascii	"XYZ\000"
 463              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 464              		.align	2
 465              	.LC0:
 466 0000 58595A55 		.ascii	"XYZUVWABC\000"
 466      56574142 
 466      4300
 467              		.section	.rodata._ZNK19CartesianKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 468              		.align	2
 469              	.LC2:
 470 0000 63617274 		.ascii	"cartesian\000"
 470      65736961 
 470      6E00
 471 000a 0000     		.space	2
 472              	.LC3:
 473 000c 43617274 		.ascii	"Cartesian\000"
 473      65736961 
 473      6E00
 474              		.section	.rodata._ZTV19CartesianKinematics,"a",%progbits
 475              		.align	2
 476              		.set	.LANCHOR0,. + 0
 477              		.type	_ZTV19CartesianKinematics, %object
 478              		.size	_ZTV19CartesianKinematics, 128
 479              	_ZTV19CartesianKinematics:
 480 0000 00000000 		.word	0
 481 0004 00000000 		.word	0
 482 0008 00000000 		.word	_ZNK19CartesianKinematics7GetNameEb
 483 000c 00000000 		.word	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 484 0010 00000000 		.word	_ZNK19CartesianKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 485 0014 00000000 		.word	_ZNK19CartesianKinematics21MotorStepsToCartesianEPKlPKfjjPf
 486 0018 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 487 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 488 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 489 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 490 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 491 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 492 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 493 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 494 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 495 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 496 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 497 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 498 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 499 004c 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef
 500 0050 00000000 		.word	_ZNK19CartesianKinematics24QueryTerminateHomingMoveEj
 501 0054 00000000 		.word	_ZNK19CartesianKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 502 0058 00000000 		.word	_ZNK19CartesianKinematics13GetHomingModeEv
 503 005c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 504 0060 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 505 0064 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 506 0068 00000000 		.word	_ZNK19CartesianKinematics25LimitSpeedAndAccelerationER3DDAPKf
 507 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccXKRHaX.s 			page 10


 508 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 509 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 510 0078 00000000 		.word	_ZN19CartesianKinematicsD1Ev
 511 007c 00000000 		.word	_ZN19CartesianKinematicsD0Ev
 512              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
