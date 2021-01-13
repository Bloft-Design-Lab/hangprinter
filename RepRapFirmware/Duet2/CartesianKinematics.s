ARM GAS  /tmp/ccWkGEpy.s 			page 1


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
ARM GAS  /tmp/ccWkGEpy.s 			page 2


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
ARM GAS  /tmp/ccWkGEpy.s 			page 3


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
ARM GAS  /tmp/ccWkGEpy.s 			page 4


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
 204              		.section	.text._ZNK19CartesianKinematics13GetHomingModeEv,"axG",%progbits,_ZNK19CartesianKinematic
 205              		.align	1
 206              		.p2align 2,,3
 207              		.weak	_ZNK19CartesianKinematics13GetHomingModeEv
 208              		.syntax unified
 209              		.thumb
 210              		.thumb_func
 211              		.fpu fpv4-sp-d16
 212              		.type	_ZNK19CartesianKinematics13GetHomingModeEv, %function
 213              	_ZNK19CartesianKinematics13GetHomingModeEv:
 214              		@ args = 0, pretend = 0, frame = 0
 215              		@ frame_needed = 0, uses_anonymous_args = 0
 216              		@ link register save eliminated.
 217 0000 0020     		movs	r0, #0
 218 0002 7047     		bx	lr
 219              		.size	_ZNK19CartesianKinematics13GetHomingModeEv, .-_ZNK19CartesianKinematics13GetHomingModeEv
 220              		.section	.text._ZNK19CartesianKinematics7GetNameEb,"ax",%progbits
 221              		.align	1
 222              		.p2align 2,,3
 223              		.global	_ZNK19CartesianKinematics7GetNameEb
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv4-sp-d16
 228              		.type	_ZNK19CartesianKinematics7GetNameEb, %function
ARM GAS  /tmp/ccWkGEpy.s 			page 5


 229              	_ZNK19CartesianKinematics7GetNameEb:
 230              		@ args = 0, pretend = 0, frame = 0
 231              		@ frame_needed = 0, uses_anonymous_args = 0
 232              		@ link register save eliminated.
 233 0000 024B     		ldr	r3, .L25
 234 0002 0348     		ldr	r0, .L25+4
 235 0004 0029     		cmp	r1, #0
 236 0006 08BF     		it	eq
 237 0008 1846     		moveq	r0, r3
 238 000a 7047     		bx	lr
 239              	.L26:
 240              		.align	2
 241              	.L25:
 242 000c 0C000000 		.word	.LC3
 243 0010 00000000 		.word	.LC2
 244              		.size	_ZNK19CartesianKinematics7GetNameEb, .-_ZNK19CartesianKinematics7GetNameEb
 245              		.section	.text._ZNK19CartesianKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	_ZNK19CartesianKinematics21MotorStepsToCartesianEPKlPKfjjPf
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu fpv4-sp-d16
 253              		.type	_ZNK19CartesianKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 254              	_ZNK19CartesianKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 255              		@ args = 8, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257              		@ link register save eliminated.
 258 0000 ABB1     		cbz	r3, .L35
 259 0002 10B4     		push	{r4}
 260 0004 0439     		subs	r1, r1, #4
 261 0006 0298     		ldr	r0, [sp, #8]
 262 0008 01EB8303 		add	r3, r1, r3, lsl #2
 263              	.L29:
 264 000c 51F8044F 		ldr	r4, [r1, #4]!
 265 0010 F2EC016A 		vldmia.32	r2!, {s13}
 266 0014 07EE904A 		vmov	s15, r4	@ int
 267 0018 F8EEE77A 		vcvt.f32.s32	s15, s15
 268 001c 9942     		cmp	r1, r3
 269 001e 87EEA67A 		vdiv.f32	s14, s15, s13
 270 0022 A0EC017A 		vstmia.32	r0!, {s14}
 271 0026 F1D1     		bne	.L29
 272 0028 5DF8044B 		ldr	r4, [sp], #4
 273 002c 7047     		bx	lr
 274              	.L35:
 275 002e 7047     		bx	lr
 276              		.size	_ZNK19CartesianKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK19CartesianKinematics21Mo
 277              		.section	.text._ZNK19CartesianKinematics24QueryTerminateHomingMoveEj,"ax",%progbits
 278              		.align	1
 279              		.p2align 2,,3
 280              		.global	_ZNK19CartesianKinematics24QueryTerminateHomingMoveEj
 281              		.syntax unified
 282              		.thumb
 283              		.thumb_func
 284              		.fpu fpv4-sp-d16
 285              		.type	_ZNK19CartesianKinematics24QueryTerminateHomingMoveEj, %function
ARM GAS  /tmp/ccWkGEpy.s 			page 6


 286              	_ZNK19CartesianKinematics24QueryTerminateHomingMoveEj:
 287              		@ args = 0, pretend = 0, frame = 0
 288              		@ frame_needed = 0, uses_anonymous_args = 0
 289              		@ link register save eliminated.
 290 0000 0020     		movs	r0, #0
 291 0002 7047     		bx	lr
 292              		.size	_ZNK19CartesianKinematics24QueryTerminateHomingMoveEj, .-_ZNK19CartesianKinematics24QueryTer
 293              		.section	.text._ZNK19CartesianKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 294              		.align	1
 295              		.p2align 2,,3
 296              		.global	_ZNK19CartesianKinematics25LimitSpeedAndAccelerationER3DDAPKf
 297              		.syntax unified
 298              		.thumb
 299              		.thumb_func
 300              		.fpu fpv4-sp-d16
 301              		.type	_ZNK19CartesianKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 302              	_ZNK19CartesianKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 303              		@ args = 0, pretend = 0, frame = 0
 304              		@ frame_needed = 0, uses_anonymous_args = 0
 305              		@ link register save eliminated.
 306 0000 7047     		bx	lr
 307              		.size	_ZNK19CartesianKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK19CartesianKinematics25
 308 0002 00BF     		.section	.text._ZN19CartesianKinematicsD2Ev,"axG",%progbits,_ZN19CartesianKinematicsD5Ev,comdat
 309              		.align	1
 310              		.p2align 2,,3
 311              		.weak	_ZN19CartesianKinematicsD2Ev
 312              		.syntax unified
 313              		.thumb
 314              		.thumb_func
 315              		.fpu fpv4-sp-d16
 316              		.type	_ZN19CartesianKinematicsD2Ev, %function
 317              	_ZN19CartesianKinematicsD2Ev:
 318              		@ args = 0, pretend = 0, frame = 0
 319              		@ frame_needed = 0, uses_anonymous_args = 0
 320              		@ link register save eliminated.
 321 0000 7047     		bx	lr
 322              		.size	_ZN19CartesianKinematicsD2Ev, .-_ZN19CartesianKinematicsD2Ev
 323              		.weak	_ZN19CartesianKinematicsD1Ev
 324              		.thumb_set _ZN19CartesianKinematicsD1Ev,_ZN19CartesianKinematicsD2Ev
 325 0002 00BF     		.section	.text._ZNK19CartesianKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 326              		.align	1
 327              		.p2align 2,,3
 328              		.global	_ZNK19CartesianKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 329              		.syntax unified
 330              		.thumb
 331              		.thumb_func
 332              		.fpu fpv4-sp-d16
 333              		.type	_ZNK19CartesianKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 334              	_ZNK19CartesianKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 335              		@ args = 12, pretend = 0, frame = 0
 336              		@ frame_needed = 0, uses_anonymous_args = 0
 337 0000 A3B1     		cbz	r3, .L49
 338 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 339 0004 01EB8307 		add	r7, r1, r3, lsl #2
 340 0008 079B     		ldr	r3, [sp, #28]
 341 000a 0C46     		mov	r4, r1
 342 000c 1546     		mov	r5, r2
ARM GAS  /tmp/ccWkGEpy.s 			page 7


 343 000e 1E1F     		subs	r6, r3, #4
 344              	.L43:
 345 0010 B4EC010A 		vldmia.32	r4!, {s0}
 346 0014 F5EC017A 		vldmia.32	r5!, {s15}
 347 0018 20EE270A 		vmul.f32	s0, s0, s15
 348 001c FFF7FEFF 		bl	lrintf
 349 0020 BC42     		cmp	r4, r7
 350 0022 46F8040F 		str	r0, [r6, #4]!
 351 0026 F3D1     		bne	.L43
 352 0028 0120     		movs	r0, #1
 353 002a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 354              	.L49:
 355 002c 0120     		movs	r0, #1
 356 002e 7047     		bx	lr
 357              		.size	_ZNK19CartesianKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK19CartesianKinematics21C
 358              		.section	.text._ZNK19CartesianKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA,"ax",%progbits
 359              		.align	1
 360              		.p2align 2,,3
 361              		.global	_ZNK19CartesianKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 362              		.syntax unified
 363              		.thumb
 364              		.thumb_func
 365              		.fpu fpv4-sp-d16
 366              		.type	_ZNK19CartesianKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, %function
 367              	_ZNK19CartesianKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA:
 368              		@ args = 4, pretend = 0, frame = 0
 369              		@ frame_needed = 0, uses_anonymous_args = 0
 370 0000 38B5     		push	{r3, r4, r5, lr}
 371 0002 1148     		ldr	r0, .L57
 372 0004 049D     		ldr	r5, [sp, #16]
 373 0006 0068     		ldr	r0, [r0]	@ unaligned
 374 0008 0C46     		mov	r4, r1
 375 000a AAB9     		cbnz	r2, .L56
 376 000c 01F5E872 		add	r2, r1, #464
 377 0010 00EB8200 		add	r0, r0, r2, lsl #2
 378 0014 90ED010A 		vldr.32	s0, [r0, #4]
 379              	.L54:
 380 0018 03EB8403 		add	r3, r3, r4, lsl #2
 381 001c D3ED007A 		vldr.32	s15, [r3]
 382 0020 20EE270A 		vmul.f32	s0, s0, s15
 383 0024 FFF7FEFF 		bl	lrintf
 384 0028 AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 385 002a 05EB8404 		add	r4, r5, r4, lsl #2
 386 002e 6FF30003 		bfc	r3, #0, #1
 387 0032 E061     		str	r0, [r4, #28]
 388 0034 AB72     		strb	r3, [r5, #10]
 389 0036 38BD     		pop	{r3, r4, r5, pc}
 390              	.L56:
 391 0038 01F5E472 		add	r2, r1, #456
 392 003c 00EB8200 		add	r0, r0, r2, lsl #2
 393 0040 90ED000A 		vldr.32	s0, [r0]
 394 0044 E8E7     		b	.L54
 395              	.L58:
 396 0046 00BF     		.align	2
 397              	.L57:
 398 0048 00000000 		.word	reprap
 399              		.size	_ZNK19CartesianKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, .-_ZNK19CartesianKinematics23
ARM GAS  /tmp/ccWkGEpy.s 			page 8


 400              		.section	.text._ZN19CartesianKinematicsD0Ev,"axG",%progbits,_ZN19CartesianKinematicsD5Ev,comdat
 401              		.align	1
 402              		.p2align 2,,3
 403              		.weak	_ZN19CartesianKinematicsD0Ev
 404              		.syntax unified
 405              		.thumb
 406              		.thumb_func
 407              		.fpu fpv4-sp-d16
 408              		.type	_ZN19CartesianKinematicsD0Ev, %function
 409              	_ZN19CartesianKinematicsD0Ev:
 410              		@ args = 0, pretend = 0, frame = 0
 411              		@ frame_needed = 0, uses_anonymous_args = 0
 412 0000 10B5     		push	{r4, lr}
 413 0002 4021     		movs	r1, #64
 414 0004 0446     		mov	r4, r0
 415 0006 FFF7FEFF 		bl	_ZdlPvj
 416 000a 2046     		mov	r0, r4
 417 000c 10BD     		pop	{r4, pc}
 418              		.size	_ZN19CartesianKinematicsD0Ev, .-_ZN19CartesianKinematicsD0Ev
 419 000e 00BF     		.section	.text._ZN19CartesianKinematicsC2Ev,"ax",%progbits
 420              		.align	1
 421              		.p2align 2,,3
 422              		.global	_ZN19CartesianKinematicsC2Ev
 423              		.syntax unified
 424              		.thumb
 425              		.thumb_func
 426              		.fpu fpv4-sp-d16
 427              		.type	_ZN19CartesianKinematicsC2Ev, %function
 428              	_ZN19CartesianKinematicsC2Ev:
 429              		@ args = 0, pretend = 0, frame = 0
 430              		@ frame_needed = 0, uses_anonymous_args = 0
 431 0000 10B5     		push	{r4, lr}
 432 0002 0021     		movs	r1, #0
 433 0004 0446     		mov	r4, r0
 434 0006 FFF7FEFF 		bl	_ZN20ZLeadscrewKinematicsC2E14KinematicsType
 435 000a 024B     		ldr	r3, .L63
 436 000c 2360     		str	r3, [r4]
 437 000e 2046     		mov	r0, r4
 438 0010 10BD     		pop	{r4, pc}
 439              	.L64:
 440 0012 00BF     		.align	2
 441              	.L63:
 442 0014 08000000 		.word	.LANCHOR0+8
 443              		.size	_ZN19CartesianKinematicsC2Ev, .-_ZN19CartesianKinematicsC2Ev
 444              		.global	_ZN19CartesianKinematicsC1Ev
 445              		.thumb_set _ZN19CartesianKinematicsC1Ev,_ZN19CartesianKinematicsC2Ev
 446              		.global	_ZTV19CartesianKinematics
 447              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 448              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 449              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 450              	_ZL28cpu_irq_prev_interrupt_state:
 451 0000 00       		.space	1
 452              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 453              		.align	2
 454              		.type	_ZL32cpu_irq_critical_section_counter, %object
 455              		.size	_ZL32cpu_irq_critical_section_counter, 4
 456              	_ZL32cpu_irq_critical_section_counter:
ARM GAS  /tmp/ccWkGEpy.s 			page 9


 457 0000 00000000 		.space	4
 458              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 459              		.align	2
 460              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 461              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 462              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 463 0000 00000000 		.space	4
 464              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 465              		.align	2
 466              	.LC1:
 467 0000 58595A00 		.ascii	"XYZ\000"
 468              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 469              		.align	2
 470              	.LC0:
 471 0000 58595A55 		.ascii	"XYZUVWABC\000"
 471      56574142 
 471      4300
 472              		.section	.rodata._ZNK19CartesianKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 473              		.align	2
 474              	.LC2:
 475 0000 63617274 		.ascii	"cartesian\000"
 475      65736961 
 475      6E00
 476 000a 0000     		.space	2
 477              	.LC3:
 478 000c 43617274 		.ascii	"Cartesian\000"
 478      65736961 
 478      6E00
 479              		.section	.rodata._ZTV19CartesianKinematics,"a",%progbits
 480              		.align	2
 481              		.set	.LANCHOR0,. + 0
 482              		.type	_ZTV19CartesianKinematics, %object
 483              		.size	_ZTV19CartesianKinematics, 128
 484              	_ZTV19CartesianKinematics:
 485 0000 00000000 		.word	0
 486 0004 00000000 		.word	0
 487 0008 00000000 		.word	_ZNK19CartesianKinematics7GetNameEb
 488 000c 00000000 		.word	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 489 0010 00000000 		.word	_ZNK19CartesianKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 490 0014 00000000 		.word	_ZNK19CartesianKinematics21MotorStepsToCartesianEPKlPKfjjPf
 491 0018 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 492 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 493 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 494 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 495 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 496 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 497 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 498 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 499 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 500 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 501 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 502 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 503 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 504 004c 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRm
 505 0050 00000000 		.word	_ZNK19CartesianKinematics24QueryTerminateHomingMoveEj
 506 0054 00000000 		.word	_ZNK19CartesianKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 507 0058 00000000 		.word	_ZNK19CartesianKinematics13GetHomingModeEv
ARM GAS  /tmp/ccWkGEpy.s 			page 10


 508 005c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 509 0060 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 510 0064 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 511 0068 00000000 		.word	_ZNK19CartesianKinematics25LimitSpeedAndAccelerationER3DDAPKf
 512 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 513 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 514 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 515 0078 00000000 		.word	_ZN19CartesianKinematicsD1Ev
 516 007c 00000000 		.word	_ZN19CartesianKinematicsD0Ev
 517              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
