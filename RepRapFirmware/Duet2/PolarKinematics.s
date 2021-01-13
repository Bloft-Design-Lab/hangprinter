ARM GAS  /tmp/ccUVqB7M.s 			page 1


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
  13              		.file	"PolarKinematics.cpp"
  14              		.section	.text._ZNK10Kinematics23SupportsAutoCalibrationEv,"axG",%progbits,_ZNK10Kinematics23Suppo
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZNK10Kinematics23SupportsAutoCalibrationEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK10Kinematics23SupportsAutoCalibrationEv, %function
  23              	_ZNK10Kinematics23SupportsAutoCalibrationEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0020     		movs	r0, #0
  28 0002 7047     		bx	lr
  29              		.size	_ZNK10Kinematics23SupportsAutoCalibrationEv, .-_ZNK10Kinematics23SupportsAutoCalibrationEv
  30              		.section	.text._ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,"axG",%prog
  31              		.align	1
  32              		.p2align 2,,3
  33              		.weak	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %function
  39              	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 0020     		movs	r0, #0
  44 0002 7047     		bx	lr
  45              		.size	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN10Kinematics17
  46              		.section	.text._ZN10Kinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN10Kinematics22SetCalib
  47              		.align	1
  48              		.p2align 2,,3
  49              		.weak	_ZN10Kinematics22SetCalibrationDefaultsEv
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu fpv4-sp-d16
  54              		.type	_ZN10Kinematics22SetCalibrationDefaultsEv, %function
  55              	_ZN10Kinematics22SetCalibrationDefaultsEv:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccUVqB7M.s 			page 2


  58              		@ link register save eliminated.
  59 0000 7047     		bx	lr
  60              		.size	_ZN10Kinematics22SetCalibrationDefaultsEv, .-_ZN10Kinematics22SetCalibrationDefaultsEv
  61 0002 00BF     		.section	.text._ZNK10Kinematics26WriteCalibrationParametersEP9FileStore,"axG",%progbits,_ZNK10Kine
  62              		.align	1
  63              		.p2align 2,,3
  64              		.weak	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv4-sp-d16
  69              		.type	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, %function
  70              	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73              		@ link register save eliminated.
  74 0000 0120     		movs	r0, #1
  75 0002 7047     		bx	lr
  76              		.size	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK10Kinematics26WriteCalibrati
  77              		.section	.text._ZNK10Kinematics17GetTiltCorrectionEj,"axG",%progbits,_ZNK10Kinematics17GetTiltCorr
  78              		.align	1
  79              		.p2align 2,,3
  80              		.weak	_ZNK10Kinematics17GetTiltCorrectionEj
  81              		.syntax unified
  82              		.thumb
  83              		.thumb_func
  84              		.fpu fpv4-sp-d16
  85              		.type	_ZNK10Kinematics17GetTiltCorrectionEj, %function
  86              	_ZNK10Kinematics17GetTiltCorrectionEj:
  87              		@ args = 0, pretend = 0, frame = 0
  88              		@ frame_needed = 0, uses_anonymous_args = 0
  89              		@ link register save eliminated.
  90 0000 9FED010A 		vldr.32	s0, .L7
  91 0004 7047     		bx	lr
  92              	.L8:
  93 0006 00BF     		.align	2
  94              	.L7:
  95 0008 00000000 		.word	0
  96              		.size	_ZNK10Kinematics17GetTiltCorrectionEj, .-_ZNK10Kinematics17GetTiltCorrectionEj
  97              		.section	.text._ZNK10Kinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK10Kinematics23AxesT
  98              		.align	1
  99              		.p2align 2,,3
 100              		.weak	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 101              		.syntax unified
 102              		.thumb
 103              		.thumb_func
 104              		.fpu fpv4-sp-d16
 105              		.type	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, %function
 106              	_ZNK10Kinematics23AxesToHomeBeforeProbingEv:
 107              		@ args = 0, pretend = 0, frame = 0
 108              		@ frame_needed = 0, uses_anonymous_args = 0
 109              		@ link register save eliminated.
 110 0000 0320     		movs	r0, #3
 111 0002 7047     		bx	lr
 112              		.size	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, .-_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 113              		.section	.text._ZNK10Kinematics13GetMotionTypeEj,"axG",%progbits,_ZNK10Kinematics13GetMotionTypeEj
 114              		.align	1
ARM GAS  /tmp/ccUVqB7M.s 			page 3


 115              		.p2align 2,,3
 116              		.weak	_ZNK10Kinematics13GetMotionTypeEj
 117              		.syntax unified
 118              		.thumb
 119              		.thumb_func
 120              		.fpu fpv4-sp-d16
 121              		.type	_ZNK10Kinematics13GetMotionTypeEj, %function
 122              	_ZNK10Kinematics13GetMotionTypeEj:
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125              		@ link register save eliminated.
 126 0000 0020     		movs	r0, #0
 127 0002 7047     		bx	lr
 128              		.size	_ZNK10Kinematics13GetMotionTypeEj, .-_ZNK10Kinematics13GetMotionTypeEj
 129              		.section	.text._ZNK10Kinematics16NumHomingButtonsEj,"axG",%progbits,_ZNK10Kinematics16NumHomingBut
 130              		.align	1
 131              		.p2align 2,,3
 132              		.weak	_ZNK10Kinematics16NumHomingButtonsEj
 133              		.syntax unified
 134              		.thumb
 135              		.thumb_func
 136              		.fpu fpv4-sp-d16
 137              		.type	_ZNK10Kinematics16NumHomingButtonsEj, %function
 138              	_ZNK10Kinematics16NumHomingButtonsEj:
 139              		@ args = 0, pretend = 0, frame = 0
 140              		@ frame_needed = 0, uses_anonymous_args = 0
 141              		@ link register save eliminated.
 142 0000 0846     		mov	r0, r1
 143 0002 7047     		bx	lr
 144              		.size	_ZNK10Kinematics16NumHomingButtonsEj, .-_ZNK10Kinematics16NumHomingButtonsEj
 145              		.section	.text._ZNK10Kinematics16MachineAxisNamesEv,"axG",%progbits,_ZNK10Kinematics16MachineAxisN
 146              		.align	1
 147              		.p2align 2,,3
 148              		.weak	_ZNK10Kinematics16MachineAxisNamesEv
 149              		.syntax unified
 150              		.thumb
 151              		.thumb_func
 152              		.fpu fpv4-sp-d16
 153              		.type	_ZNK10Kinematics16MachineAxisNamesEv, %function
 154              	_ZNK10Kinematics16MachineAxisNamesEv:
 155              		@ args = 0, pretend = 0, frame = 0
 156              		@ frame_needed = 0, uses_anonymous_args = 0
 157              		@ link register save eliminated.
 158 0000 0048     		ldr	r0, .L13
 159 0002 7047     		bx	lr
 160              	.L14:
 161              		.align	2
 162              	.L13:
 163 0004 00000000 		.word	.LC0
 164              		.size	_ZNK10Kinematics16MachineAxisNamesEv, .-_ZNK10Kinematics16MachineAxisNamesEv
 165              		.section	.text._ZNK10Kinematics19WriteResumeSettingsEP9FileStore,"axG",%progbits,_ZNK10Kinematics1
 166              		.align	1
 167              		.p2align 2,,3
 168              		.weak	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore
 169              		.syntax unified
 170              		.thumb
 171              		.thumb_func
ARM GAS  /tmp/ccUVqB7M.s 			page 4


 172              		.fpu fpv4-sp-d16
 173              		.type	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore, %function
 174              	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore:
 175              		@ args = 0, pretend = 0, frame = 0
 176              		@ frame_needed = 0, uses_anonymous_args = 0
 177              		@ link register save eliminated.
 178 0000 0120     		movs	r0, #1
 179 0002 7047     		bx	lr
 180              		.size	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore, .-_ZNK10Kinematics19WriteResumeSettingsEP
 181              		.section	.text._ZNK15PolarKinematics17HomingButtonNamesEv,"axG",%progbits,_ZNK15PolarKinematics17H
 182              		.align	1
 183              		.p2align 2,,3
 184              		.weak	_ZNK15PolarKinematics17HomingButtonNamesEv
 185              		.syntax unified
 186              		.thumb
 187              		.thumb_func
 188              		.fpu fpv4-sp-d16
 189              		.type	_ZNK15PolarKinematics17HomingButtonNamesEv, %function
 190              	_ZNK15PolarKinematics17HomingButtonNamesEv:
 191              		@ args = 0, pretend = 0, frame = 0
 192              		@ frame_needed = 0, uses_anonymous_args = 0
 193              		@ link register save eliminated.
 194 0000 0048     		ldr	r0, .L17
 195 0002 7047     		bx	lr
 196              	.L18:
 197              		.align	2
 198              	.L17:
 199 0004 00000000 		.word	.LC1
 200              		.size	_ZNK15PolarKinematics17HomingButtonNamesEv, .-_ZNK15PolarKinematics17HomingButtonNamesEv
 201              		.section	.text._ZNK15PolarKinematics13GetHomingModeEv,"axG",%progbits,_ZNK15PolarKinematics13GetHo
 202              		.align	1
 203              		.p2align 2,,3
 204              		.weak	_ZNK15PolarKinematics13GetHomingModeEv
 205              		.syntax unified
 206              		.thumb
 207              		.thumb_func
 208              		.fpu fpv4-sp-d16
 209              		.type	_ZNK15PolarKinematics13GetHomingModeEv, %function
 210              	_ZNK15PolarKinematics13GetHomingModeEv:
 211              		@ args = 0, pretend = 0, frame = 0
 212              		@ frame_needed = 0, uses_anonymous_args = 0
 213              		@ link register save eliminated.
 214 0000 0120     		movs	r0, #1
 215 0002 7047     		bx	lr
 216              		.size	_ZNK15PolarKinematics13GetHomingModeEv, .-_ZNK15PolarKinematics13GetHomingModeEv
 217              		.section	.text._ZNK15PolarKinematics7GetNameEb,"ax",%progbits
 218              		.align	1
 219              		.p2align 2,,3
 220              		.global	_ZNK15PolarKinematics7GetNameEb
 221              		.syntax unified
 222              		.thumb
 223              		.thumb_func
 224              		.fpu fpv4-sp-d16
 225              		.type	_ZNK15PolarKinematics7GetNameEb, %function
 226              	_ZNK15PolarKinematics7GetNameEb:
 227              		@ args = 0, pretend = 0, frame = 0
 228              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccUVqB7M.s 			page 5


 229              		@ link register save eliminated.
 230 0000 0048     		ldr	r0, .L21
 231 0002 7047     		bx	lr
 232              	.L22:
 233              		.align	2
 234              	.L21:
 235 0004 00000000 		.word	.LC2
 236              		.size	_ZNK15PolarKinematics7GetNameEb, .-_ZNK15PolarKinematics7GetNameEb
 237              		.section	.text._ZNK15PolarKinematics11IsReachableEffb,"ax",%progbits
 238              		.align	1
 239              		.p2align 2,,3
 240              		.global	_ZNK15PolarKinematics11IsReachableEffb
 241              		.syntax unified
 242              		.thumb
 243              		.thumb_func
 244              		.fpu fpv4-sp-d16
 245              		.type	_ZNK15PolarKinematics11IsReachableEffb, %function
 246              	_ZNK15PolarKinematics11IsReachableEffb:
 247              		@ args = 0, pretend = 0, frame = 0
 248              		@ frame_needed = 0, uses_anonymous_args = 0
 249              		@ link register save eliminated.
 250 0000 60EEA00A 		vmul.f32	s1, s1, s1
 251 0004 D0ED097A 		vldr.32	s15, [r0, #36]
 252 0008 E0EE000A 		vfma.f32	s1, s0, s0
 253 000c F4EEE07A 		vcmpe.f32	s15, s1
 254 0010 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 255 0014 09D8     		bhi	.L28
 256 0016 D0ED0A7A 		vldr.32	s15, [r0, #40]
 257 001a F4EEE07A 		vcmpe.f32	s15, s1
 258 001e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 259 0022 ACBF     		ite	ge
 260 0024 0120     		movge	r0, #1
 261 0026 0020     		movlt	r0, #0
 262 0028 7047     		bx	lr
 263              	.L28:
 264 002a 0020     		movs	r0, #0
 265 002c 7047     		bx	lr
 266              		.size	_ZNK15PolarKinematics11IsReachableEffb, .-_ZNK15PolarKinematics11IsReachableEffb
 267 002e 00BF     		.section	.text._ZNK15PolarKinematics25GetAssumedInitialPositionEjPf,"ax",%progbits
 268              		.align	1
 269              		.p2align 2,,3
 270              		.global	_ZNK15PolarKinematics25GetAssumedInitialPositionEjPf
 271              		.syntax unified
 272              		.thumb
 273              		.thumb_func
 274              		.fpu fpv4-sp-d16
 275              		.type	_ZNK15PolarKinematics25GetAssumedInitialPositionEjPf, %function
 276              	_ZNK15PolarKinematics25GetAssumedInitialPositionEjPf:
 277              		@ args = 0, pretend = 0, frame = 0
 278              		@ frame_needed = 0, uses_anonymous_args = 0
 279              		@ link register save eliminated.
 280 0000 31B1     		cbz	r1, .L29
 281 0002 0023     		movs	r3, #0
 282 0004 02EB8101 		add	r1, r2, r1, lsl #2
 283              	.L31:
 284 0008 42F8043B 		str	r3, [r2], #4	@ float
 285 000c 8A42     		cmp	r2, r1
ARM GAS  /tmp/ccUVqB7M.s 			page 6


 286 000e FBD1     		bne	.L31
 287              	.L29:
 288 0010 7047     		bx	lr
 289              		.size	_ZNK15PolarKinematics25GetAssumedInitialPositionEjPf, .-_ZNK15PolarKinematics25GetAssumedIni
 290 0012 00BF     		.section	.text._ZNK15PolarKinematics16AxesAssumedHomedEm,"ax",%progbits
 291              		.align	1
 292              		.p2align 2,,3
 293              		.global	_ZNK15PolarKinematics16AxesAssumedHomedEm
 294              		.syntax unified
 295              		.thumb
 296              		.thumb_func
 297              		.fpu fpv4-sp-d16
 298              		.type	_ZNK15PolarKinematics16AxesAssumedHomedEm, %function
 299              	_ZNK15PolarKinematics16AxesAssumedHomedEm:
 300              		@ args = 0, pretend = 0, frame = 0
 301              		@ frame_needed = 0, uses_anonymous_args = 0
 302              		@ link register save eliminated.
 303 0000 01F00303 		and	r3, r1, #3
 304 0004 032B     		cmp	r3, #3
 305 0006 14BF     		ite	ne
 306 0008 21F00300 		bicne	r0, r1, #3
 307 000c 0846     		moveq	r0, r1
 308 000e 7047     		bx	lr
 309              		.size	_ZNK15PolarKinematics16AxesAssumedHomedEm, .-_ZNK15PolarKinematics16AxesAssumedHomedEm
 310              		.section	.text._ZNK15PolarKinematics15MustBeHomedAxesEmb,"ax",%progbits
 311              		.align	1
 312              		.p2align 2,,3
 313              		.global	_ZNK15PolarKinematics15MustBeHomedAxesEmb
 314              		.syntax unified
 315              		.thumb
 316              		.thumb_func
 317              		.fpu fpv4-sp-d16
 318              		.type	_ZNK15PolarKinematics15MustBeHomedAxesEmb, %function
 319              	_ZNK15PolarKinematics15MustBeHomedAxesEmb:
 320              		@ args = 0, pretend = 0, frame = 0
 321              		@ frame_needed = 0, uses_anonymous_args = 0
 322              		@ link register save eliminated.
 323 0000 4B07     		lsls	r3, r1, #29
 324 0002 14BF     		ite	ne
 325 0004 41F00700 		orrne	r0, r1, #7
 326 0008 0846     		moveq	r0, r1
 327 000a 7047     		bx	lr
 328              		.size	_ZNK15PolarKinematics15MustBeHomedAxesEmb, .-_ZNK15PolarKinematics15MustBeHomedAxesEmb
 329              		.section	.text._ZNK15PolarKinematics24QueryTerminateHomingMoveEj,"ax",%progbits
 330              		.align	1
 331              		.p2align 2,,3
 332              		.global	_ZNK15PolarKinematics24QueryTerminateHomingMoveEj
 333              		.syntax unified
 334              		.thumb
 335              		.thumb_func
 336              		.fpu fpv4-sp-d16
 337              		.type	_ZNK15PolarKinematics24QueryTerminateHomingMoveEj, %function
 338              	_ZNK15PolarKinematics24QueryTerminateHomingMoveEj:
 339              		@ args = 0, pretend = 0, frame = 0
 340              		@ frame_needed = 0, uses_anonymous_args = 0
 341              		@ link register save eliminated.
 342 0000 0020     		movs	r0, #0
ARM GAS  /tmp/ccUVqB7M.s 			page 7


 343 0002 7047     		bx	lr
 344              		.size	_ZNK15PolarKinematics24QueryTerminateHomingMoveEj, .-_ZNK15PolarKinematics24QueryTerminateHo
 345              		.section	.text._ZNK15PolarKinematics24IsContinuousRotationAxisEj,"ax",%progbits
 346              		.align	1
 347              		.p2align 2,,3
 348              		.global	_ZNK15PolarKinematics24IsContinuousRotationAxisEj
 349              		.syntax unified
 350              		.thumb
 351              		.thumb_func
 352              		.fpu fpv4-sp-d16
 353              		.type	_ZNK15PolarKinematics24IsContinuousRotationAxisEj, %function
 354              	_ZNK15PolarKinematics24IsContinuousRotationAxisEj:
 355              		@ args = 0, pretend = 0, frame = 0
 356              		@ frame_needed = 0, uses_anonymous_args = 0
 357              		@ link register save eliminated.
 358 0000 A1F10100 		sub	r0, r1, #1
 359 0004 B0FA80F0 		clz	r0, r0
 360 0008 4009     		lsrs	r0, r0, #5
 361 000a 7047     		bx	lr
 362              		.size	_ZNK15PolarKinematics24IsContinuousRotationAxisEj, .-_ZNK15PolarKinematics24IsContinuousRota
 363              		.section	.text._ZN15PolarKinematicsD2Ev,"axG",%progbits,_ZN15PolarKinematicsD5Ev,comdat
 364              		.align	1
 365              		.p2align 2,,3
 366              		.weak	_ZN15PolarKinematicsD2Ev
 367              		.syntax unified
 368              		.thumb
 369              		.thumb_func
 370              		.fpu fpv4-sp-d16
 371              		.type	_ZN15PolarKinematicsD2Ev, %function
 372              	_ZN15PolarKinematicsD2Ev:
 373              		@ args = 0, pretend = 0, frame = 0
 374              		@ frame_needed = 0, uses_anonymous_args = 0
 375              		@ link register save eliminated.
 376 0000 7047     		bx	lr
 377              		.size	_ZN15PolarKinematicsD2Ev, .-_ZN15PolarKinematicsD2Ev
 378              		.weak	_ZN15PolarKinematicsD1Ev
 379              		.thumb_set _ZN15PolarKinematicsD1Ev,_ZN15PolarKinematicsD2Ev
 380 0002 00BF     		.section	.text._ZNK15PolarKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 381              		.align	1
 382              		.p2align 2,,3
 383              		.global	_ZNK15PolarKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 384              		.syntax unified
 385              		.thumb
 386              		.thumb_func
 387              		.fpu fpv4-sp-d16
 388              		.type	_ZNK15PolarKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 389              	_ZNK15PolarKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 390              		@ args = 12, pretend = 0, frame = 0
 391              		@ frame_needed = 0, uses_anonymous_args = 0
 392 0000 91ED010A 		vldr.32	s0, [r1, #4]
 393 0004 D1ED007A 		vldr.32	s15, [r1]
 394 0008 20EE000A 		vmul.f32	s0, s0, s0
 395 000c F8B5     		push	{r3, r4, r5, r6, r7, lr}
 396 000e A7EEA70A 		vfma.f32	s0, s15, s15
 397 0012 0C46     		mov	r4, r1
 398 0014 1646     		mov	r6, r2
 399 0016 2DED028B 		vpush.64	{d8}
ARM GAS  /tmp/ccUVqB7M.s 			page 8


 400 001a B5EE400A 		vcmp.f32	s0, #0
 401 001e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 402 0022 099D     		ldr	r5, [sp, #36]
 403 0024 1F46     		mov	r7, r3
 404 0026 B1EEC08A 		vsqrt.f32	s16, s0
 405 002a 39D4     		bmi	.L53
 406              	.L46:
 407 002c 96ED000A 		vldr.32	s0, [r6]
 408 0030 28EE000A 		vmul.f32	s0, s16, s0
 409 0034 FFF7FEFF 		bl	lrintf
 410 0038 07EE900A 		vmov	s15, r0	@ int
 411 003c F8EEE77A 		vcvt.f32.s32	s15, s15
 412 0040 2860     		str	r0, [r5]
 413 0042 F5EE407A 		vcmp.f32	s15, #0
 414 0046 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 415 004a 18D1     		bne	.L54
 416 004c 0020     		movs	r0, #0
 417              	.L47:
 418 004e 022F     		cmp	r7, #2
 419 0050 6860     		str	r0, [r5, #4]
 420 0052 10D9     		bls	.L48
 421 0054 04EB8707 		add	r7, r4, r7, lsl #2
 422 0058 0836     		adds	r6, r6, #8
 423 005a 0435     		adds	r5, r5, #4
 424 005c 0834     		adds	r4, r4, #8
 425              	.L49:
 426 005e B4EC010A 		vldmia.32	r4!, {s0}
 427 0062 F6EC017A 		vldmia.32	r6!, {s15}
 428 0066 20EE270A 		vmul.f32	s0, s0, s15
 429 006a FFF7FEFF 		bl	lrintf
 430 006e BC42     		cmp	r4, r7
 431 0070 45F8040F 		str	r0, [r5, #4]!
 432 0074 F3D1     		bne	.L49
 433              	.L48:
 434 0076 BDEC028B 		vldm	sp!, {d8}
 435 007a 0120     		movs	r0, #1
 436 007c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 437              	.L54:
 438 007e D4ED000A 		vldr.32	s1, [r4]
 439 0082 94ED010A 		vldr.32	s0, [r4, #4]
 440 0086 FFF7FEFF 		bl	atan2f
 441 008a DFED077A 		vldr.32	s15, .L55
 442 008e 96ED017A 		vldr.32	s14, [r6, #4]
 443 0092 20EE270A 		vmul.f32	s0, s0, s15
 444 0096 20EE070A 		vmul.f32	s0, s0, s14
 445 009a FFF7FEFF 		bl	lrintf
 446 009e D6E7     		b	.L47
 447              	.L53:
 448 00a0 FFF7FEFF 		bl	sqrtf
 449 00a4 C2E7     		b	.L46
 450              	.L56:
 451 00a6 00BF     		.align	2
 452              	.L55:
 453 00a8 E02E6542 		.word	1113927392
 454              		.size	_ZNK15PolarKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK15PolarKinematics21Cartesian
 455              		.section	.text._ZNK15PolarKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 456              		.align	1
ARM GAS  /tmp/ccUVqB7M.s 			page 9


 457              		.p2align 2,,3
 458              		.global	_ZNK15PolarKinematics21MotorStepsToCartesianEPKlPKfjjPf
 459              		.syntax unified
 460              		.thumb
 461              		.thumb_func
 462              		.fpu fpv4-sp-d16
 463              		.type	_ZNK15PolarKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 464              	_ZNK15PolarKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 465              		@ args = 8, pretend = 0, frame = 0
 466              		@ frame_needed = 0, uses_anonymous_args = 0
 467 0000 D1ED017A 		vldr.32	s15, [r1, #4]	@ int
 468 0004 9FED217A 		vldr.32	s14, .L62
 469 0008 D2ED016A 		vldr.32	s13, [r2, #4]
 470 000c F8B5     		push	{r3, r4, r5, r6, r7, lr}
 471 000e F8EEE77A 		vcvt.f32.s32	s15, s15
 472 0012 2DED028B 		vpush.64	{d8}
 473 0016 67EE877A 		vmul.f32	s15, s15, s14
 474 001a 92ED007A 		vldr.32	s14, [r2]
 475 001e 099D     		ldr	r5, [sp, #36]
 476 0020 C7EEA68A 		vdiv.f32	s17, s15, s13
 477 0024 1F46     		mov	r7, r3
 478 0026 0C46     		mov	r4, r1
 479 0028 1646     		mov	r6, r2
 480 002a D1ED007A 		vldr.32	s15, [r1]	@ int
 481 002e F8EEE77A 		vcvt.f32.s32	s15, s15
 482 0032 B0EE680A 		vmov.f32	s0, s17
 483 0036 87EE878A 		vdiv.f32	s16, s15, s14
 484 003a FFF7FEFF 		bl	cosf
 485 003e 60EE087A 		vmul.f32	s15, s0, s16
 486 0042 B0EE680A 		vmov.f32	s0, s17
 487 0046 C5ED007A 		vstr.32	s15, [r5]
 488 004a FFF7FEFF 		bl	sinf
 489 004e 20EE080A 		vmul.f32	s0, s0, s16
 490 0052 022F     		cmp	r7, #2
 491 0054 85ED010A 		vstr.32	s0, [r5, #4]
 492 0058 15D9     		bls	.L57
 493 005a 04EB8700 		add	r0, r4, r7, lsl #2
 494 005e 0438     		subs	r0, r0, #4
 495 0060 211D     		adds	r1, r4, #4
 496 0062 06F10802 		add	r2, r6, #8
 497 0066 05F10803 		add	r3, r5, #8
 498              	.L59:
 499 006a 51F8044F 		ldr	r4, [r1, #4]!
 500 006e F2EC016A 		vldmia.32	r2!, {s13}
 501 0072 07EE904A 		vmov	s15, r4	@ int
 502 0076 F8EEE77A 		vcvt.f32.s32	s15, s15
 503 007a 8142     		cmp	r1, r0
 504 007c 87EEA67A 		vdiv.f32	s14, s15, s13
 505 0080 A3EC017A 		vstmia.32	r3!, {s14}
 506 0084 F1D1     		bne	.L59
 507              	.L57:
 508 0086 BDEC028B 		vldm	sp!, {d8}
 509 008a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 510              	.L63:
 511              		.align	2
 512              	.L62:
 513 008c 35FA8E3C 		.word	1016003125
ARM GAS  /tmp/ccUVqB7M.s 			page 10


 514              		.size	_ZNK15PolarKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK15PolarKinematics21MotorSteps
 515              		.section	.text._ZNK15PolarKinematics13LimitPositionEPfjmb,"ax",%progbits
 516              		.align	1
 517              		.p2align 2,,3
 518              		.global	_ZNK15PolarKinematics13LimitPositionEPfjmb
 519              		.syntax unified
 520              		.thumb
 521              		.thumb_func
 522              		.fpu fpv4-sp-d16
 523              		.type	_ZNK15PolarKinematics13LimitPositionEPfjmb, %function
 524              	_ZNK15PolarKinematics13LimitPositionEPfjmb:
 525              		@ args = 4, pretend = 0, frame = 0
 526              		@ frame_needed = 0, uses_anonymous_args = 0
 527 0000 30B5     		push	{r4, r5, lr}
 528 0002 2DED028B 		vpush.64	{d8}
 529 0006 83B0     		sub	sp, sp, #12
 530 0008 0C46     		mov	r4, r1
 531 000a 0093     		str	r3, [sp]
 532 000c 1346     		mov	r3, r2
 533 000e 0222     		movs	r2, #2
 534 0010 0546     		mov	r5, r0
 535 0012 FFF7FEFF 		bl	_ZNK10Kinematics21LimitPositionFromAxisEPfjjm
 536 0016 D4ED017A 		vldr.32	s15, [r4, #4]
 537 001a 94ED007A 		vldr.32	s14, [r4]
 538 001e D5ED096A 		vldr.32	s13, [r5, #36]
 539 0022 27EEA70A 		vmul.f32	s0, s15, s15
 540 0026 A7EE070A 		vfma.f32	s0, s14, s14
 541 002a F4EEC06A 		vcmpe.f32	s13, s0
 542 002e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 543 0032 26DC     		bgt	.L79
 544 0034 D5ED0A6A 		vldr.32	s13, [r5, #40]
 545 0038 F4EEC06A 		vcmpe.f32	s13, s0
 546 003c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 547 0040 03D4     		bmi	.L80
 548 0042 03B0     		add	sp, sp, #12
 549              		@ sp needed
 550 0044 BDEC028B 		vldm	sp!, {d8}
 551 0048 30BD     		pop	{r4, r5, pc}
 552              	.L80:
 553 004a B5EE400A 		vcmp.f32	s0, #0
 554 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 555 0052 B1EEC08A 		vsqrt.f32	s16, s0
 556 0056 47D4     		bmi	.L81
 557              	.L72:
 558 0058 0120     		movs	r0, #1
 559 005a 95ED056A 		vldr.32	s12, [r5, #20]
 560 005e C6EE086A 		vdiv.f32	s13, s12, s16
 561 0062 26EE877A 		vmul.f32	s14, s13, s14
 562 0066 84ED007A 		vstr.32	s14, [r4]
 563 006a D5ED056A 		vldr.32	s13, [r5, #20]
 564 006e 86EE887A 		vdiv.f32	s14, s13, s16
 565 0072 67EE277A 		vmul.f32	s15, s14, s15
 566 0076 C4ED017A 		vstr.32	s15, [r4, #4]
 567 007a 03B0     		add	sp, sp, #12
 568              		@ sp needed
 569 007c BDEC028B 		vldm	sp!, {d8}
 570 0080 30BD     		pop	{r4, r5, pc}
ARM GAS  /tmp/ccUVqB7M.s 			page 11


 571              	.L79:
 572 0082 B5EE400A 		vcmp.f32	s0, #0
 573 0086 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 574 008a B1EEC08A 		vsqrt.f32	s16, s0
 575 008e 28D4     		bmi	.L82
 576              	.L67:
 577 0090 DFED197A 		vldr.32	s15, .L83
 578 0094 B4EEE78A 		vcmpe.f32	s16, s15
 579 0098 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 580 009c 08D5     		bpl	.L77
 581 009e 2A69     		ldr	r2, [r5, #16]	@ float
 582 00a0 2260     		str	r2, [r4]	@ float
 583 00a2 0023     		movs	r3, #0
 584 00a4 0120     		movs	r0, #1
 585 00a6 6360     		str	r3, [r4, #4]	@ float
 586 00a8 03B0     		add	sp, sp, #12
 587              		@ sp needed
 588 00aa BDEC028B 		vldm	sp!, {d8}
 589 00ae 30BD     		pop	{r4, r5, pc}
 590              	.L77:
 591 00b0 95ED046A 		vldr.32	s12, [r5, #16]
 592 00b4 94ED007A 		vldr.32	s14, [r4]
 593 00b8 D4ED017A 		vldr.32	s15, [r4, #4]
 594 00bc C6EE086A 		vdiv.f32	s13, s12, s16
 595 00c0 0120     		movs	r0, #1
 596 00c2 27EE267A 		vmul.f32	s14, s14, s13
 597 00c6 84ED007A 		vstr.32	s14, [r4]
 598 00ca D5ED046A 		vldr.32	s13, [r5, #16]
 599 00ce 86EE887A 		vdiv.f32	s14, s13, s16
 600 00d2 67EE877A 		vmul.f32	s15, s15, s14
 601 00d6 C4ED017A 		vstr.32	s15, [r4, #4]
 602 00da 03B0     		add	sp, sp, #12
 603              		@ sp needed
 604 00dc BDEC028B 		vldm	sp!, {d8}
 605 00e0 30BD     		pop	{r4, r5, pc}
 606              	.L82:
 607 00e2 FFF7FEFF 		bl	sqrtf
 608 00e6 D3E7     		b	.L67
 609              	.L81:
 610 00e8 FFF7FEFF 		bl	sqrtf
 611 00ec 94ED007A 		vldr.32	s14, [r4]
 612 00f0 D4ED017A 		vldr.32	s15, [r4, #4]
 613 00f4 B0E7     		b	.L72
 614              	.L84:
 615 00f6 00BF     		.align	2
 616              	.L83:
 617 00f8 0AD7233C 		.word	1008981770
 618              		.size	_ZNK15PolarKinematics13LimitPositionEPfjmb, .-_ZNK15PolarKinematics13LimitPositionEPfjmb
 619              		.section	.text._ZNK15PolarKinematics17GetHomingFileNameEmmjRm,"ax",%progbits
 620              		.align	1
 621              		.p2align 2,,3
 622              		.global	_ZNK15PolarKinematics17GetHomingFileNameEmmjRm
 623              		.syntax unified
 624              		.thumb
 625              		.thumb_func
 626              		.fpu fpv4-sp-d16
 627              		.type	_ZNK15PolarKinematics17GetHomingFileNameEmmjRm, %function
ARM GAS  /tmp/ccUVqB7M.s 			page 12


 628              	_ZNK15PolarKinematics17GetHomingFileNameEmmjRm:
 629              		@ args = 4, pretend = 0, frame = 0
 630              		@ frame_needed = 0, uses_anonymous_args = 0
 631 0000 10B5     		push	{r4, lr}
 632 0002 82B0     		sub	sp, sp, #8
 633 0004 049C     		ldr	r4, [sp, #16]
 634 0006 0094     		str	r4, [sp]
 635 0008 FFF7FEFF 		bl	_ZNK10Kinematics17GetHomingFileNameEmmjRm
 636 000c 064B     		ldr	r3, .L89
 637 000e 1A68     		ldr	r2, [r3]
 638 0010 8242     		cmp	r2, r0
 639 0012 06D0     		beq	.L87
 640 0014 5A68     		ldr	r2, [r3, #4]
 641 0016 054B     		ldr	r3, .L89+4
 642 0018 8242     		cmp	r2, r0
 643 001a 08BF     		it	eq
 644 001c 1846     		moveq	r0, r3
 645 001e 02B0     		add	sp, sp, #8
 646              		@ sp needed
 647 0020 10BD     		pop	{r4, pc}
 648              	.L87:
 649 0022 0348     		ldr	r0, .L89+8
 650 0024 02B0     		add	sp, sp, #8
 651              		@ sp needed
 652 0026 10BD     		pop	{r4, pc}
 653              	.L90:
 654              		.align	2
 655              	.L89:
 656 0028 00000000 		.word	_ZN10Kinematics23StandardHomingFileNamesE
 657 002c 10000000 		.word	.LC4
 658 0030 00000000 		.word	.LC3
 659              		.size	_ZNK15PolarKinematics17GetHomingFileNameEmmjRm, .-_ZNK15PolarKinematics17GetHomingFileNameEm
 660              		.section	.text._ZNK15PolarKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 661              		.align	1
 662              		.p2align 2,,3
 663              		.global	_ZNK15PolarKinematics25LimitSpeedAndAccelerationER3DDAPKf
 664              		.syntax unified
 665              		.thumb
 666              		.thumb_func
 667              		.fpu fpv4-sp-d16
 668              		.type	_ZNK15PolarKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 669              	_ZNK15PolarKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 670              		@ args = 0, pretend = 0, frame = 0
 671              		@ frame_needed = 0, uses_anonymous_args = 0
 672              		@ link register save eliminated.
 673 0000 4A68     		ldr	r2, [r1, #4]
 674 0002 0B6A     		ldr	r3, [r1, #32]
 675 0004 126A     		ldr	r2, [r2, #32]
 676 0006 9342     		cmp	r3, r2
 677 0008 1FD0     		beq	.L91
 678 000a 10B4     		push	{r4}
 679 000c 0F4C     		ldr	r4, .L96
 680 000e D1ED2B7A 		vldr.32	s15, [r1, #172]
 681 0012 2468     		ldr	r4, [r4]	@ unaligned
 682 0014 D0ED080A 		vldr.32	s1, [r0, #32]
 683 0018 94ED6B7A 		vldr.32	s14, [r4, #428]
 684 001c 90ED070A 		vldr.32	s0, [r0, #28]
ARM GAS  /tmp/ccUVqB7M.s 			page 13


 685 0020 5DF8044B 		ldr	r4, [sp], #4
 686 0024 9B1A     		subs	r3, r3, r2
 687 0026 002B     		cmp	r3, #0
 688 0028 B8BF     		it	lt
 689 002a 5B42     		rsblt	r3, r3, #0
 690 002c 27EE277A 		vmul.f32	s14, s14, s15
 691 0030 07EE903A 		vmov	s15, r3	@ int
 692 0034 F8EEE77A 		vcvt.f32.s32	s15, s15
 693 0038 0846     		mov	r0, r1
 694 003a C7EE276A 		vdiv.f32	s13, s14, s15
 695 003e 66EEA00A 		vmul.f32	s1, s13, s1
 696 0042 26EE800A 		vmul.f32	s0, s13, s0
 697 0046 FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 698              	.L91:
 699 004a 7047     		bx	lr
 700              	.L97:
 701              		.align	2
 702              	.L96:
 703 004c 00000000 		.word	reprap
 704              		.size	_ZNK15PolarKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK15PolarKinematics25LimitSpe
 705              		.section	.text._ZN15PolarKinematicsD0Ev,"axG",%progbits,_ZN15PolarKinematicsD5Ev,comdat
 706              		.align	1
 707              		.p2align 2,,3
 708              		.weak	_ZN15PolarKinematicsD0Ev
 709              		.syntax unified
 710              		.thumb
 711              		.thumb_func
 712              		.fpu fpv4-sp-d16
 713              		.type	_ZN15PolarKinematicsD0Ev, %function
 714              	_ZN15PolarKinematicsD0Ev:
 715              		@ args = 0, pretend = 0, frame = 0
 716              		@ frame_needed = 0, uses_anonymous_args = 0
 717 0000 10B5     		push	{r4, lr}
 718 0002 2C21     		movs	r1, #44
 719 0004 0446     		mov	r4, r0
 720 0006 FFF7FEFF 		bl	_ZdlPvj
 721 000a 2046     		mov	r0, r4
 722 000c 10BD     		pop	{r4, pc}
 723              		.size	_ZN15PolarKinematicsD0Ev, .-_ZN15PolarKinematicsD0Ev
 724 000e 00BF     		.section	.text._ZNK15PolarKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA,"ax",%progbits
 725              		.align	1
 726              		.p2align 2,,3
 727              		.global	_ZNK15PolarKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 728              		.syntax unified
 729              		.thumb
 730              		.thumb_func
 731              		.fpu fpv4-sp-d16
 732              		.type	_ZNK15PolarKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, %function
 733              	_ZNK15PolarKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA:
 734              		@ args = 4, pretend = 0, frame = 0
 735              		@ frame_needed = 0, uses_anonymous_args = 0
 736 0000 38B5     		push	{r3, r4, r5, lr}
 737 0002 049D     		ldr	r5, [sp, #16]
 738 0004 0C46     		mov	r4, r1
 739 0006 09B3     		cbz	r1, .L102
 740 0008 0129     		cmp	r1, #1
 741 000a 06D1     		bne	.L109
ARM GAS  /tmp/ccUVqB7M.s 			page 14


 742 000c AA7A     		ldrb	r2, [r5, #10]	@ zero_extendqisi2
 743 000e 0023     		movs	r3, #0
 744 0010 63F30002 		bfi	r2, r3, #0, #1
 745 0014 AA72     		strb	r2, [r5, #10]
 746 0016 2B62     		str	r3, [r5, #32]
 747 0018 38BD     		pop	{r3, r4, r5, pc}
 748              	.L109:
 749 001a 1749     		ldr	r1, .L111
 750 001c 0968     		ldr	r1, [r1]
 751 001e 1ABB     		cbnz	r2, .L110
 752 0020 04F5E872 		add	r2, r4, #464
 753 0024 01EB8201 		add	r1, r1, r2, lsl #2
 754 0028 91ED010A 		vldr.32	s0, [r1, #4]
 755              	.L106:
 756 002c 03EB8403 		add	r3, r3, r4, lsl #2
 757 0030 D3ED007A 		vldr.32	s15, [r3]
 758 0034 20EE270A 		vmul.f32	s0, s0, s15
 759 0038 FFF7FEFF 		bl	lrintf
 760 003c AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 761 003e 05EB8404 		add	r4, r5, r4, lsl #2
 762 0042 6FF30003 		bfc	r3, #0, #1
 763 0046 E061     		str	r0, [r4, #28]
 764 0048 AB72     		strb	r3, [r5, #10]
 765 004a 38BD     		pop	{r3, r4, r5, pc}
 766              	.L102:
 767 004c D3ED007A 		vldr.32	s15, [r3]
 768 0050 90ED060A 		vldr.32	s0, [r0, #24]
 769 0054 20EE270A 		vmul.f32	s0, s0, s15
 770 0058 FFF7FEFF 		bl	lrintf
 771 005c AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 772 005e E861     		str	r0, [r5, #28]
 773 0060 64F30003 		bfi	r3, r4, #0, #1
 774 0064 AB72     		strb	r3, [r5, #10]
 775 0066 38BD     		pop	{r3, r4, r5, pc}
 776              	.L110:
 777 0068 04F5E472 		add	r2, r4, #456
 778 006c 01EB8201 		add	r1, r1, r2, lsl #2
 779 0070 91ED000A 		vldr.32	s0, [r1]
 780 0074 DAE7     		b	.L106
 781              	.L112:
 782 0076 00BF     		.align	2
 783              	.L111:
 784 0078 00000000 		.word	reprap
 785              		.size	_ZNK15PolarKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, .-_ZNK15PolarKinematics23OnHoming
 786              		.global	__aeabi_f2d
 787              		.section	.text._ZN15PolarKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 788              		.align	1
 789              		.p2align 2,,3
 790              		.global	_ZN15PolarKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 791              		.syntax unified
 792              		.thumb
 793              		.thumb_func
 794              		.fpu fpv4-sp-d16
 795              		.type	_ZN15PolarKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 796              	_ZN15PolarKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 797              		@ args = 4, pretend = 0, frame = 16
 798              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccUVqB7M.s 			page 15


 799 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 800 0004 40F29D26 		movw	r6, #669
 801 0008 B142     		cmp	r1, r6
 802 000a 8CB0     		sub	sp, sp, #48
 803 000c 06D0     		beq	.L130
 804 000e 129C     		ldr	r4, [sp, #72]
 805 0010 0094     		str	r4, [sp]
 806 0012 FFF7FEFF 		bl	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 807              	.L123:
 808 0016 0CB0     		add	sp, sp, #48
 809              		@ sp needed
 810 0018 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 811              	.L130:
 812 001c 0CAE     		add	r6, sp, #48
 813 001e 0027     		movs	r7, #0
 814 0020 06F80E7D 		strb	r7, [r6, #-14]!
 815 0024 1546     		mov	r5, r2
 816 0026 0446     		mov	r4, r0
 817 0028 021D     		adds	r2, r0, #4
 818 002a 5321     		movs	r1, #83
 819 002c 2846     		mov	r0, r5
 820 002e 9846     		mov	r8, r3
 821 0030 3346     		mov	r3, r6
 822 0032 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 823 0036 5421     		movs	r1, #84
 824 0038 2846     		mov	r0, r5
 825 003a 3346     		mov	r3, r6
 826 003c 04F10802 		add	r2, r4, #8
 827 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 828 0044 5221     		movs	r1, #82
 829 0046 2846     		mov	r0, r5
 830 0048 8DF82370 		strb	r7, [sp, #35]
 831 004c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 832 0050 C8BB     		cbnz	r0, .L131
 833              	.L115:
 834 0052 0DF12303 		add	r3, sp, #35
 835 0056 04F11802 		add	r2, r4, #24
 836 005a 4821     		movs	r1, #72
 837 005c 2846     		mov	r0, r5
 838 005e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 839 0062 3346     		mov	r3, r6
 840 0064 04F12002 		add	r2, r4, #32
 841 0068 4121     		movs	r1, #65
 842 006a 2846     		mov	r0, r5
 843 006c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 844 0070 2846     		mov	r0, r5
 845 0072 3346     		mov	r3, r6
 846 0074 04F11C02 		add	r2, r4, #28
 847 0078 4621     		movs	r1, #70
 848 007a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 849 007e 9DF82300 		ldrb	r0, [sp, #35]	@ zero_extendqisi2
 850 0082 50B9     		cbnz	r0, .L118
 851 0084 9DF82230 		ldrb	r3, [sp, #34]	@ zero_extendqisi2
 852 0088 3BB9     		cbnz	r3, .L118
 853 008a 2846     		mov	r0, r5
 854 008c 4B21     		movs	r1, #75
 855 008e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  /tmp/ccUVqB7M.s 			page 16


 856 0092 80B3     		cbz	r0, .L122
 857              	.L129:
 858 0094 9DF82300 		ldrb	r0, [sp, #35]	@ zero_extendqisi2
 859 0098 BDE7     		b	.L123
 860              	.L118:
 861 009a D4ED047A 		vldr.32	s15, [r4, #16]
 862 009e 94ED057A 		vldr.32	s14, [r4, #20]
 863 00a2 F5EEC07A 		vcmpe.f32	s15, #0
 864 00a6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 865 00aa 8CBF     		ite	hi
 866 00ac 67EEA77A 		vmulhi.f32	s15, s15, s15
 867 00b0 DFED217A 		vldrls.32	s15, .L132
 868 00b4 27EE077A 		vmul.f32	s14, s14, s14
 869 00b8 C4ED097A 		vstr.32	s15, [r4, #36]
 870 00bc 84ED0A7A 		vstr.32	s14, [r4, #40]
 871 00c0 0CB0     		add	sp, sp, #48
 872              		@ sp needed
 873 00c2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 874              	.L131:
 875 00c6 0CAA     		add	r2, sp, #48
 876 00c8 0223     		movs	r3, #2
 877 00ca 42F80C3D 		str	r3, [r2, #-12]!
 878 00ce 0AA9     		add	r1, sp, #40
 879 00d0 3B46     		mov	r3, r7
 880 00d2 2846     		mov	r0, r5
 881 00d4 0127     		movs	r7, #1
 882 00d6 8DF82370 		strb	r7, [sp, #35]
 883 00da FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 884 00de 099B     		ldr	r3, [sp, #36]
 885 00e0 022B     		cmp	r3, #2
 886 00e2 06BF     		itte	eq
 887 00e4 0A9B     		ldreq	r3, [sp, #40]	@ float
 888 00e6 0B9A     		ldreq	r2, [sp, #44]	@ float
 889 00e8 0A9A     		ldrne	r2, [sp, #40]	@ float
 890 00ea 6261     		str	r2, [r4, #20]	@ float
 891 00ec 18BF     		it	ne
 892 00ee 0023     		movne	r3, #0
 893 00f0 2361     		str	r3, [r4, #16]	@ float
 894 00f2 A361     		str	r3, [r4, #24]	@ float
 895 00f4 ADE7     		b	.L115
 896              	.L122:
 897 00f6 2069     		ldr	r0, [r4, #16]	@ float
 898 00f8 FFF7FEFF 		bl	__aeabi_f2d
 899 00fc 0646     		mov	r6, r0
 900 00fe A068     		ldr	r0, [r4, #8]	@ float
 901 0100 0F46     		mov	r7, r1
 902 0102 FFF7FEFF 		bl	__aeabi_f2d
 903 0106 D4ED017A 		vldr.32	s15, [r4, #4]
 904 010a CDE90601 		strd	r0, [sp, #24]
 905 010e FDEEE77A 		vcvt.s32.f32	s15, s15
 906 0112 A069     		ldr	r0, [r4, #24]	@ float
 907 0114 CDED047A 		vstr.32	s15, [sp, #16]	@ int
 908 0118 FFF7FEFF 		bl	__aeabi_f2d
 909 011c CDE90201 		strd	r0, [sp, #8]
 910 0120 6069     		ldr	r0, [r4, #20]	@ float
 911 0122 FFF7FEFF 		bl	__aeabi_f2d
 912 0126 3246     		mov	r2, r6
ARM GAS  /tmp/ccUVqB7M.s 			page 17


 913 0128 CDE90001 		strd	r0, [sp]
 914 012c 3B46     		mov	r3, r7
 915 012e 4046     		mov	r0, r8
 916 0130 0249     		ldr	r1, .L132+4
 917 0132 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 918 0136 ADE7     		b	.L129
 919              	.L133:
 920              		.align	2
 921              	.L132:
 922 0138 00000000 		.word	0
 923 013c 00000000 		.word	.LC5
 924              		.size	_ZN15PolarKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN15PolarKinematics9Configu
 925              		.section	.text._ZN15PolarKinematicsC2Ev,"ax",%progbits
 926              		.align	1
 927              		.p2align 2,,3
 928              		.global	_ZN15PolarKinematicsC2Ev
 929              		.syntax unified
 930              		.thumb
 931              		.thumb_func
 932              		.fpu fpv4-sp-d16
 933              		.type	_ZN15PolarKinematicsC2Ev, %function
 934              	_ZN15PolarKinematicsC2Ev:
 935              		@ args = 0, pretend = 0, frame = 0
 936              		@ frame_needed = 0, uses_anonymous_args = 0
 937 0000 10B5     		push	{r4, lr}
 938 0002 0122     		movs	r2, #1
 939 0004 0446     		mov	r4, r0
 940 0006 DFED0B0A 		vldr.32	s1, .L136
 941 000a 9FED0B0A 		vldr.32	s0, .L136+4
 942 000e 0721     		movs	r1, #7
 943 0010 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffb
 944 0014 094A     		ldr	r2, .L136+8
 945 0016 0A48     		ldr	r0, .L136+12
 946 0018 0A49     		ldr	r1, .L136+16
 947 001a 2260     		str	r2, [r4]
 948 001c 0023     		movs	r3, #0
 949 001e 0A4A     		ldr	r2, .L136+20
 950 0020 6061     		str	r0, [r4, #20]	@ float
 951 0022 A162     		str	r1, [r4, #40]	@ float
 952 0024 2361     		str	r3, [r4, #16]	@ float
 953 0026 A361     		str	r3, [r4, #24]	@ float
 954 0028 6362     		str	r3, [r4, #36]	@ float
 955 002a E261     		str	r2, [r4, #28]	@ float
 956 002c 2262     		str	r2, [r4, #32]	@ float
 957 002e 2046     		mov	r0, r4
 958 0030 10BD     		pop	{r4, pc}
 959              	.L137:
 960 0032 00BF     		.align	2
 961              	.L136:
 962 0034 CDCC4C3E 		.word	1045220557
 963 0038 0000C842 		.word	1120403456
 964 003c 08000000 		.word	.LANCHOR0+8
 965 0040 00001643 		.word	1125515264
 966 0044 00C8AF46 		.word	1185925120
 967 0048 0000F041 		.word	1106247680
 968              		.size	_ZN15PolarKinematicsC2Ev, .-_ZN15PolarKinematicsC2Ev
 969              		.global	_ZN15PolarKinematicsC1Ev
ARM GAS  /tmp/ccUVqB7M.s 			page 18


 970              		.thumb_set _ZN15PolarKinematicsC1Ev,_ZN15PolarKinematicsC2Ev
 971              		.section	.text._ZN15PolarKinematics6RecalcEv,"ax",%progbits
 972              		.align	1
 973              		.p2align 2,,3
 974              		.global	_ZN15PolarKinematics6RecalcEv
 975              		.syntax unified
 976              		.thumb
 977              		.thumb_func
 978              		.fpu fpv4-sp-d16
 979              		.type	_ZN15PolarKinematics6RecalcEv, %function
 980              	_ZN15PolarKinematics6RecalcEv:
 981              		@ args = 0, pretend = 0, frame = 0
 982              		@ frame_needed = 0, uses_anonymous_args = 0
 983              		@ link register save eliminated.
 984 0000 D0ED047A 		vldr.32	s15, [r0, #16]
 985 0004 90ED057A 		vldr.32	s14, [r0, #20]
 986 0008 F5EEC07A 		vcmpe.f32	s15, #0
 987 000c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 988 0010 8CBF     		ite	hi
 989 0012 67EEA77A 		vmulhi.f32	s15, s15, s15
 990 0016 DFED047A 		vldrls.32	s15, .L141
 991 001a 27EE077A 		vmul.f32	s14, s14, s14
 992 001e C0ED097A 		vstr.32	s15, [r0, #36]
 993 0022 80ED0A7A 		vstr.32	s14, [r0, #40]
 994 0026 7047     		bx	lr
 995              	.L142:
 996              		.align	2
 997              	.L141:
 998 0028 00000000 		.word	0
 999              		.size	_ZN15PolarKinematics6RecalcEv, .-_ZN15PolarKinematics6RecalcEv
 1000              		.global	_ZTV15PolarKinematics
 1001              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1002              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1003              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1004              	_ZL28cpu_irq_prev_interrupt_state:
 1005 0000 00       		.space	1
 1006              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1007              		.align	2
 1008              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1009              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1010              	_ZL32cpu_irq_critical_section_counter:
 1011 0000 00000000 		.space	4
 1012              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1013              		.align	2
 1014              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1015              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1016              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1017 0000 00000000 		.space	4
 1018              		.section	.rodata._ZN15PolarKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%progbi
 1019              		.align	2
 1020              	.LC5:
 1021 0000 4B696E65 		.ascii	"Kinematics is Polar with radius %.1f to %.1fmm, hom"
 1021      6D617469 
 1021      63732069 
 1021      7320506F 
 1021      6C617220 
 1022 0033 65642072 		.ascii	"ed radius %.1fmm, segments/sec %d, min. segment len"
ARM GAS  /tmp/ccUVqB7M.s 			page 19


 1022      61646975 
 1022      7320252E 
 1022      31666D6D 
 1022      2C207365 
 1023 0066 67746820 		.ascii	"gth %.2f\000"
 1023      252E3266 
 1023      00
 1024              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 1025              		.align	2
 1026              	.LC0:
 1027 0000 58595A00 		.ascii	"XYZ\000"
 1028              		.section	.rodata._ZNK15PolarKinematics17GetHomingFileNameEmmjRm.str1.4,"aMS",%progbits,1
 1029              		.align	2
 1030              	.LC3:
 1031 0000 686F6D65 		.ascii	"homeradius.g\000"
 1031      72616469 
 1031      75732E67 
 1031      00
 1032 000d 000000   		.space	3
 1033              	.LC4:
 1034 0010 686F6D65 		.ascii	"homebed.g\000"
 1034      6265642E 
 1034      6700
 1035              		.section	.rodata._ZNK15PolarKinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 1036              		.align	2
 1037              	.LC1:
 1038 0000 52545A55 		.ascii	"RTZUVWABC\000"
 1038      56574142 
 1038      4300
 1039              		.section	.rodata._ZNK15PolarKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 1040              		.align	2
 1041              	.LC2:
 1042 0000 506F6C61 		.ascii	"Polar\000"
 1042      7200
 1043              		.section	.rodata._ZTV15PolarKinematics,"a",%progbits
 1044              		.align	2
 1045              		.set	.LANCHOR0,. + 0
 1046              		.type	_ZTV15PolarKinematics, %object
 1047              		.size	_ZTV15PolarKinematics, 128
 1048              	_ZTV15PolarKinematics:
 1049 0000 00000000 		.word	0
 1050 0004 00000000 		.word	0
 1051 0008 00000000 		.word	_ZNK15PolarKinematics7GetNameEb
 1052 000c 00000000 		.word	_ZN15PolarKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1053 0010 00000000 		.word	_ZNK15PolarKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 1054 0014 00000000 		.word	_ZNK15PolarKinematics21MotorStepsToCartesianEPKlPKfjjPf
 1055 0018 00000000 		.word	_ZNK10Kinematics23SupportsAutoCalibrationEv
 1056 001c 00000000 		.word	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 1057 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 1058 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 1059 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 1060 002c 00000000 		.word	_ZNK15PolarKinematics11IsReachableEffb
 1061 0030 00000000 		.word	_ZNK15PolarKinematics13LimitPositionEPfjmb
 1062 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 1063 0038 00000000 		.word	_ZNK15PolarKinematics25GetAssumedInitialPositionEjPf
 1064 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 1065 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
ARM GAS  /tmp/ccUVqB7M.s 			page 20


 1066 0044 00000000 		.word	_ZNK15PolarKinematics17HomingButtonNamesEv
 1067 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 1068 004c 00000000 		.word	_ZNK15PolarKinematics17GetHomingFileNameEmmjRm
 1069 0050 00000000 		.word	_ZNK15PolarKinematics24QueryTerminateHomingMoveEj
 1070 0054 00000000 		.word	_ZNK15PolarKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 1071 0058 00000000 		.word	_ZNK15PolarKinematics13GetHomingModeEv
 1072 005c 00000000 		.word	_ZNK15PolarKinematics16AxesAssumedHomedEm
 1073 0060 00000000 		.word	_ZNK15PolarKinematics15MustBeHomedAxesEmb
 1074 0064 00000000 		.word	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore
 1075 0068 00000000 		.word	_ZNK15PolarKinematics25LimitSpeedAndAccelerationER3DDAPKf
 1076 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 1077 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 1078 0074 00000000 		.word	_ZNK15PolarKinematics24IsContinuousRotationAxisEj
 1079 0078 00000000 		.word	_ZN15PolarKinematicsD1Ev
 1080 007c 00000000 		.word	_ZN15PolarKinematicsD0Ev
 1081              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
