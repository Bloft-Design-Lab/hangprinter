ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 1


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
  14              		.text
  15              		.section	.text._ZNK10Kinematics23SupportsAutoCalibrationEv,"axG",%progbits,_ZNK10Kinematics23Suppo
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZNK10Kinematics23SupportsAutoCalibrationEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZNK10Kinematics23SupportsAutoCalibrationEv, %function
  24              	_ZNK10Kinematics23SupportsAutoCalibrationEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0020     		movs	r0, #0
  29 0002 7047     		bx	lr
  30              		.size	_ZNK10Kinematics23SupportsAutoCalibrationEv, .-_ZNK10Kinematics23SupportsAutoCalibrationEv
  31              		.section	.text._ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,"axG",%prog
  32              		.align	1
  33              		.p2align 2,,3
  34              		.weak	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %function
  40              	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43              		@ link register save eliminated.
  44 0000 0020     		movs	r0, #0
  45 0002 7047     		bx	lr
  46              		.size	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN10Kinematics17
  47              		.section	.text._ZN10Kinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN10Kinematics22SetCalib
  48              		.align	1
  49              		.p2align 2,,3
  50              		.weak	_ZN10Kinematics22SetCalibrationDefaultsEv
  51              		.syntax unified
  52              		.thumb
  53              		.thumb_func
  54              		.fpu fpv4-sp-d16
  55              		.type	_ZN10Kinematics22SetCalibrationDefaultsEv, %function
  56              	_ZN10Kinematics22SetCalibrationDefaultsEv:
  57              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 2


  58              		@ frame_needed = 0, uses_anonymous_args = 0
  59              		@ link register save eliminated.
  60 0000 7047     		bx	lr
  61              		.size	_ZN10Kinematics22SetCalibrationDefaultsEv, .-_ZN10Kinematics22SetCalibrationDefaultsEv
  62 0002 00BF     		.section	.text._ZNK10Kinematics26WriteCalibrationParametersEP9FileStore,"axG",%progbits,_ZNK10Kine
  63              		.align	1
  64              		.p2align 2,,3
  65              		.weak	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
  66              		.syntax unified
  67              		.thumb
  68              		.thumb_func
  69              		.fpu fpv4-sp-d16
  70              		.type	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, %function
  71              	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore:
  72              		@ args = 0, pretend = 0, frame = 0
  73              		@ frame_needed = 0, uses_anonymous_args = 0
  74              		@ link register save eliminated.
  75 0000 0120     		movs	r0, #1
  76 0002 7047     		bx	lr
  77              		.size	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK10Kinematics26WriteCalibrati
  78              		.section	.text._ZNK10Kinematics17GetTiltCorrectionEj,"axG",%progbits,_ZNK10Kinematics17GetTiltCorr
  79              		.align	1
  80              		.p2align 2,,3
  81              		.weak	_ZNK10Kinematics17GetTiltCorrectionEj
  82              		.syntax unified
  83              		.thumb
  84              		.thumb_func
  85              		.fpu fpv4-sp-d16
  86              		.type	_ZNK10Kinematics17GetTiltCorrectionEj, %function
  87              	_ZNK10Kinematics17GetTiltCorrectionEj:
  88              		@ args = 0, pretend = 0, frame = 0
  89              		@ frame_needed = 0, uses_anonymous_args = 0
  90              		@ link register save eliminated.
  91 0000 9FED010A 		vldr.32	s0, .L7
  92 0004 7047     		bx	lr
  93              	.L8:
  94 0006 00BF     		.align	2
  95              	.L7:
  96 0008 00000000 		.word	0
  97              		.size	_ZNK10Kinematics17GetTiltCorrectionEj, .-_ZNK10Kinematics17GetTiltCorrectionEj
  98              		.section	.text._ZNK10Kinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK10Kinematics23AxesT
  99              		.align	1
 100              		.p2align 2,,3
 101              		.weak	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu fpv4-sp-d16
 106              		.type	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, %function
 107              	_ZNK10Kinematics23AxesToHomeBeforeProbingEv:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110              		@ link register save eliminated.
 111 0000 0320     		movs	r0, #3
 112 0002 7047     		bx	lr
 113              		.size	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, .-_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 114              		.section	.text._ZNK10Kinematics13GetMotionTypeEj,"axG",%progbits,_ZNK10Kinematics13GetMotionTypeEj
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 3


 115              		.align	1
 116              		.p2align 2,,3
 117              		.weak	_ZNK10Kinematics13GetMotionTypeEj
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu fpv4-sp-d16
 122              		.type	_ZNK10Kinematics13GetMotionTypeEj, %function
 123              	_ZNK10Kinematics13GetMotionTypeEj:
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126              		@ link register save eliminated.
 127 0000 0020     		movs	r0, #0
 128 0002 7047     		bx	lr
 129              		.size	_ZNK10Kinematics13GetMotionTypeEj, .-_ZNK10Kinematics13GetMotionTypeEj
 130              		.section	.text._ZNK10Kinematics16NumHomingButtonsEj,"axG",%progbits,_ZNK10Kinematics16NumHomingBut
 131              		.align	1
 132              		.p2align 2,,3
 133              		.weak	_ZNK10Kinematics16NumHomingButtonsEj
 134              		.syntax unified
 135              		.thumb
 136              		.thumb_func
 137              		.fpu fpv4-sp-d16
 138              		.type	_ZNK10Kinematics16NumHomingButtonsEj, %function
 139              	_ZNK10Kinematics16NumHomingButtonsEj:
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 0, uses_anonymous_args = 0
 142              		@ link register save eliminated.
 143 0000 0846     		mov	r0, r1
 144 0002 7047     		bx	lr
 145              		.size	_ZNK10Kinematics16NumHomingButtonsEj, .-_ZNK10Kinematics16NumHomingButtonsEj
 146              		.section	.text._ZNK10Kinematics16MachineAxisNamesEv,"axG",%progbits,_ZNK10Kinematics16MachineAxisN
 147              		.align	1
 148              		.p2align 2,,3
 149              		.weak	_ZNK10Kinematics16MachineAxisNamesEv
 150              		.syntax unified
 151              		.thumb
 152              		.thumb_func
 153              		.fpu fpv4-sp-d16
 154              		.type	_ZNK10Kinematics16MachineAxisNamesEv, %function
 155              	_ZNK10Kinematics16MachineAxisNamesEv:
 156              		@ args = 0, pretend = 0, frame = 0
 157              		@ frame_needed = 0, uses_anonymous_args = 0
 158              		@ link register save eliminated.
 159 0000 0048     		ldr	r0, .L13
 160 0002 7047     		bx	lr
 161              	.L14:
 162              		.align	2
 163              	.L13:
 164 0004 00000000 		.word	.LC0
 165              		.size	_ZNK10Kinematics16MachineAxisNamesEv, .-_ZNK10Kinematics16MachineAxisNamesEv
 166              		.section	.text._ZNK10Kinematics19WriteResumeSettingsEP9FileStore,"axG",%progbits,_ZNK10Kinematics1
 167              		.align	1
 168              		.p2align 2,,3
 169              		.weak	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore
 170              		.syntax unified
 171              		.thumb
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 4


 172              		.thumb_func
 173              		.fpu fpv4-sp-d16
 174              		.type	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore, %function
 175              	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore:
 176              		@ args = 0, pretend = 0, frame = 0
 177              		@ frame_needed = 0, uses_anonymous_args = 0
 178              		@ link register save eliminated.
 179 0000 0120     		movs	r0, #1
 180 0002 7047     		bx	lr
 181              		.size	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore, .-_ZNK10Kinematics19WriteResumeSettingsEP
 182              		.section	.text._ZNK15PolarKinematics17HomingButtonNamesEv,"axG",%progbits,_ZNK15PolarKinematics17H
 183              		.align	1
 184              		.p2align 2,,3
 185              		.weak	_ZNK15PolarKinematics17HomingButtonNamesEv
 186              		.syntax unified
 187              		.thumb
 188              		.thumb_func
 189              		.fpu fpv4-sp-d16
 190              		.type	_ZNK15PolarKinematics17HomingButtonNamesEv, %function
 191              	_ZNK15PolarKinematics17HomingButtonNamesEv:
 192              		@ args = 0, pretend = 0, frame = 0
 193              		@ frame_needed = 0, uses_anonymous_args = 0
 194              		@ link register save eliminated.
 195 0000 0048     		ldr	r0, .L17
 196 0002 7047     		bx	lr
 197              	.L18:
 198              		.align	2
 199              	.L17:
 200 0004 00000000 		.word	.LC1
 201              		.size	_ZNK15PolarKinematics17HomingButtonNamesEv, .-_ZNK15PolarKinematics17HomingButtonNamesEv
 202              		.section	.text._ZNK15PolarKinematics13GetHomingModeEv,"axG",%progbits,_ZNK15PolarKinematics13GetHo
 203              		.align	1
 204              		.p2align 2,,3
 205              		.weak	_ZNK15PolarKinematics13GetHomingModeEv
 206              		.syntax unified
 207              		.thumb
 208              		.thumb_func
 209              		.fpu fpv4-sp-d16
 210              		.type	_ZNK15PolarKinematics13GetHomingModeEv, %function
 211              	_ZNK15PolarKinematics13GetHomingModeEv:
 212              		@ args = 0, pretend = 0, frame = 0
 213              		@ frame_needed = 0, uses_anonymous_args = 0
 214              		@ link register save eliminated.
 215 0000 0120     		movs	r0, #1
 216 0002 7047     		bx	lr
 217              		.size	_ZNK15PolarKinematics13GetHomingModeEv, .-_ZNK15PolarKinematics13GetHomingModeEv
 218              		.section	.text._ZNK15PolarKinematics7GetNameEb,"ax",%progbits
 219              		.align	1
 220              		.p2align 2,,3
 221              		.global	_ZNK15PolarKinematics7GetNameEb
 222              		.syntax unified
 223              		.thumb
 224              		.thumb_func
 225              		.fpu fpv4-sp-d16
 226              		.type	_ZNK15PolarKinematics7GetNameEb, %function
 227              	_ZNK15PolarKinematics7GetNameEb:
 228              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 5


 229              		@ frame_needed = 0, uses_anonymous_args = 0
 230              		@ link register save eliminated.
 231 0000 0048     		ldr	r0, .L21
 232 0002 7047     		bx	lr
 233              	.L22:
 234              		.align	2
 235              	.L21:
 236 0004 00000000 		.word	.LC2
 237              		.size	_ZNK15PolarKinematics7GetNameEb, .-_ZNK15PolarKinematics7GetNameEb
 238              		.section	.text._ZNK15PolarKinematics11IsReachableEffb,"ax",%progbits
 239              		.align	1
 240              		.p2align 2,,3
 241              		.global	_ZNK15PolarKinematics11IsReachableEffb
 242              		.syntax unified
 243              		.thumb
 244              		.thumb_func
 245              		.fpu fpv4-sp-d16
 246              		.type	_ZNK15PolarKinematics11IsReachableEffb, %function
 247              	_ZNK15PolarKinematics11IsReachableEffb:
 248              		@ args = 0, pretend = 0, frame = 0
 249              		@ frame_needed = 0, uses_anonymous_args = 0
 250              		@ link register save eliminated.
 251 0000 60EEA00A 		vmul.f32	s1, s1, s1
 252 0004 D0ED097A 		vldr.32	s15, [r0, #36]
 253 0008 E0EE000A 		vfma.f32	s1, s0, s0
 254 000c F4EEE07A 		vcmpe.f32	s15, s1
 255 0010 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 256 0014 09D8     		bhi	.L28
 257 0016 D0ED0A7A 		vldr.32	s15, [r0, #40]
 258 001a F4EEE07A 		vcmpe.f32	s15, s1
 259 001e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 260 0022 ACBF     		ite	ge
 261 0024 0120     		movge	r0, #1
 262 0026 0020     		movlt	r0, #0
 263 0028 7047     		bx	lr
 264              	.L28:
 265 002a 0020     		movs	r0, #0
 266 002c 7047     		bx	lr
 267              		.size	_ZNK15PolarKinematics11IsReachableEffb, .-_ZNK15PolarKinematics11IsReachableEffb
 268 002e 00BF     		.section	.text._ZNK15PolarKinematics25GetAssumedInitialPositionEjPf,"ax",%progbits
 269              		.align	1
 270              		.p2align 2,,3
 271              		.global	_ZNK15PolarKinematics25GetAssumedInitialPositionEjPf
 272              		.syntax unified
 273              		.thumb
 274              		.thumb_func
 275              		.fpu fpv4-sp-d16
 276              		.type	_ZNK15PolarKinematics25GetAssumedInitialPositionEjPf, %function
 277              	_ZNK15PolarKinematics25GetAssumedInitialPositionEjPf:
 278              		@ args = 0, pretend = 0, frame = 0
 279              		@ frame_needed = 0, uses_anonymous_args = 0
 280              		@ link register save eliminated.
 281 0000 31B1     		cbz	r1, .L29
 282 0002 0023     		movs	r3, #0
 283 0004 02EB8101 		add	r1, r2, r1, lsl #2
 284              	.L31:
 285 0008 42F8043B 		str	r3, [r2], #4	@ float
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 6


 286 000c 8A42     		cmp	r2, r1
 287 000e FBD1     		bne	.L31
 288              	.L29:
 289 0010 7047     		bx	lr
 290              		.size	_ZNK15PolarKinematics25GetAssumedInitialPositionEjPf, .-_ZNK15PolarKinematics25GetAssumedIni
 291 0012 00BF     		.section	.text._ZNK15PolarKinematics16AxesAssumedHomedEm,"ax",%progbits
 292              		.align	1
 293              		.p2align 2,,3
 294              		.global	_ZNK15PolarKinematics16AxesAssumedHomedEm
 295              		.syntax unified
 296              		.thumb
 297              		.thumb_func
 298              		.fpu fpv4-sp-d16
 299              		.type	_ZNK15PolarKinematics16AxesAssumedHomedEm, %function
 300              	_ZNK15PolarKinematics16AxesAssumedHomedEm:
 301              		@ args = 0, pretend = 0, frame = 0
 302              		@ frame_needed = 0, uses_anonymous_args = 0
 303              		@ link register save eliminated.
 304 0000 01F00303 		and	r3, r1, #3
 305 0004 032B     		cmp	r3, #3
 306 0006 14BF     		ite	ne
 307 0008 21F00300 		bicne	r0, r1, #3
 308 000c 0846     		moveq	r0, r1
 309 000e 7047     		bx	lr
 310              		.size	_ZNK15PolarKinematics16AxesAssumedHomedEm, .-_ZNK15PolarKinematics16AxesAssumedHomedEm
 311              		.section	.text._ZNK15PolarKinematics15MustBeHomedAxesEmb,"ax",%progbits
 312              		.align	1
 313              		.p2align 2,,3
 314              		.global	_ZNK15PolarKinematics15MustBeHomedAxesEmb
 315              		.syntax unified
 316              		.thumb
 317              		.thumb_func
 318              		.fpu fpv4-sp-d16
 319              		.type	_ZNK15PolarKinematics15MustBeHomedAxesEmb, %function
 320              	_ZNK15PolarKinematics15MustBeHomedAxesEmb:
 321              		@ args = 0, pretend = 0, frame = 0
 322              		@ frame_needed = 0, uses_anonymous_args = 0
 323              		@ link register save eliminated.
 324 0000 4B07     		lsls	r3, r1, #29
 325 0002 14BF     		ite	ne
 326 0004 41F00700 		orrne	r0, r1, #7
 327 0008 0846     		moveq	r0, r1
 328 000a 7047     		bx	lr
 329              		.size	_ZNK15PolarKinematics15MustBeHomedAxesEmb, .-_ZNK15PolarKinematics15MustBeHomedAxesEmb
 330              		.section	.text._ZNK15PolarKinematics24QueryTerminateHomingMoveEj,"ax",%progbits
 331              		.align	1
 332              		.p2align 2,,3
 333              		.global	_ZNK15PolarKinematics24QueryTerminateHomingMoveEj
 334              		.syntax unified
 335              		.thumb
 336              		.thumb_func
 337              		.fpu fpv4-sp-d16
 338              		.type	_ZNK15PolarKinematics24QueryTerminateHomingMoveEj, %function
 339              	_ZNK15PolarKinematics24QueryTerminateHomingMoveEj:
 340              		@ args = 0, pretend = 0, frame = 0
 341              		@ frame_needed = 0, uses_anonymous_args = 0
 342              		@ link register save eliminated.
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 7


 343 0000 0020     		movs	r0, #0
 344 0002 7047     		bx	lr
 345              		.size	_ZNK15PolarKinematics24QueryTerminateHomingMoveEj, .-_ZNK15PolarKinematics24QueryTerminateHo
 346              		.section	.text._ZNK15PolarKinematics24IsContinuousRotationAxisEj,"ax",%progbits
 347              		.align	1
 348              		.p2align 2,,3
 349              		.global	_ZNK15PolarKinematics24IsContinuousRotationAxisEj
 350              		.syntax unified
 351              		.thumb
 352              		.thumb_func
 353              		.fpu fpv4-sp-d16
 354              		.type	_ZNK15PolarKinematics24IsContinuousRotationAxisEj, %function
 355              	_ZNK15PolarKinematics24IsContinuousRotationAxisEj:
 356              		@ args = 0, pretend = 0, frame = 0
 357              		@ frame_needed = 0, uses_anonymous_args = 0
 358              		@ link register save eliminated.
 359 0000 A1F10100 		sub	r0, r1, #1
 360 0004 B0FA80F0 		clz	r0, r0
 361 0008 4009     		lsrs	r0, r0, #5
 362 000a 7047     		bx	lr
 363              		.size	_ZNK15PolarKinematics24IsContinuousRotationAxisEj, .-_ZNK15PolarKinematics24IsContinuousRota
 364              		.section	.text._ZN15PolarKinematicsD2Ev,"axG",%progbits,_ZN15PolarKinematicsD5Ev,comdat
 365              		.align	1
 366              		.p2align 2,,3
 367              		.weak	_ZN15PolarKinematicsD2Ev
 368              		.syntax unified
 369              		.thumb
 370              		.thumb_func
 371              		.fpu fpv4-sp-d16
 372              		.type	_ZN15PolarKinematicsD2Ev, %function
 373              	_ZN15PolarKinematicsD2Ev:
 374              		@ args = 0, pretend = 0, frame = 0
 375              		@ frame_needed = 0, uses_anonymous_args = 0
 376              		@ link register save eliminated.
 377 0000 7047     		bx	lr
 378              		.size	_ZN15PolarKinematicsD2Ev, .-_ZN15PolarKinematicsD2Ev
 379              		.weak	_ZN15PolarKinematicsD1Ev
 380              		.thumb_set _ZN15PolarKinematicsD1Ev,_ZN15PolarKinematicsD2Ev
 381 0002 00BF     		.section	.text._ZNK15PolarKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 382              		.align	1
 383              		.p2align 2,,3
 384              		.global	_ZNK15PolarKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 385              		.syntax unified
 386              		.thumb
 387              		.thumb_func
 388              		.fpu fpv4-sp-d16
 389              		.type	_ZNK15PolarKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 390              	_ZNK15PolarKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 391              		@ args = 12, pretend = 0, frame = 0
 392              		@ frame_needed = 0, uses_anonymous_args = 0
 393 0000 91ED010A 		vldr.32	s0, [r1, #4]
 394 0004 D1ED007A 		vldr.32	s15, [r1]
 395 0008 20EE000A 		vmul.f32	s0, s0, s0
 396 000c F8B5     		push	{r3, r4, r5, r6, r7, lr}
 397 000e A7EEA70A 		vfma.f32	s0, s15, s15
 398 0012 0C46     		mov	r4, r1
 399 0014 1646     		mov	r6, r2
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 8


 400 0016 2DED028B 		vpush.64	{d8}
 401 001a B5EE400A 		vcmp.f32	s0, #0
 402 001e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 403 0022 099D     		ldr	r5, [sp, #36]
 404 0024 1F46     		mov	r7, r3
 405 0026 B1EEC08A 		vsqrt.f32	s16, s0
 406 002a 39D4     		bmi	.L53
 407              	.L46:
 408 002c 96ED000A 		vldr.32	s0, [r6]
 409 0030 28EE000A 		vmul.f32	s0, s16, s0
 410 0034 FFF7FEFF 		bl	lrintf
 411 0038 07EE900A 		vmov	s15, r0	@ int
 412 003c F8EEE77A 		vcvt.f32.s32	s15, s15
 413 0040 2860     		str	r0, [r5]
 414 0042 F5EE407A 		vcmp.f32	s15, #0
 415 0046 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 416 004a 18D1     		bne	.L54
 417 004c 0020     		movs	r0, #0
 418              	.L47:
 419 004e 022F     		cmp	r7, #2
 420 0050 6860     		str	r0, [r5, #4]
 421 0052 10D9     		bls	.L48
 422 0054 04EB8707 		add	r7, r4, r7, lsl #2
 423 0058 0836     		adds	r6, r6, #8
 424 005a 0435     		adds	r5, r5, #4
 425 005c 0834     		adds	r4, r4, #8
 426              	.L49:
 427 005e B4EC010A 		vldmia.32	r4!, {s0}
 428 0062 F6EC017A 		vldmia.32	r6!, {s15}
 429 0066 20EE270A 		vmul.f32	s0, s0, s15
 430 006a FFF7FEFF 		bl	lrintf
 431 006e BC42     		cmp	r4, r7
 432 0070 45F8040F 		str	r0, [r5, #4]!
 433 0074 F3D1     		bne	.L49
 434              	.L48:
 435 0076 BDEC028B 		vldm	sp!, {d8}
 436 007a 0120     		movs	r0, #1
 437 007c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 438              	.L54:
 439 007e D4ED000A 		vldr.32	s1, [r4]
 440 0082 94ED010A 		vldr.32	s0, [r4, #4]
 441 0086 FFF7FEFF 		bl	atan2f
 442 008a DFED077A 		vldr.32	s15, .L55
 443 008e 96ED017A 		vldr.32	s14, [r6, #4]
 444 0092 20EE270A 		vmul.f32	s0, s0, s15
 445 0096 20EE070A 		vmul.f32	s0, s0, s14
 446 009a FFF7FEFF 		bl	lrintf
 447 009e D6E7     		b	.L47
 448              	.L53:
 449 00a0 FFF7FEFF 		bl	sqrtf
 450 00a4 C2E7     		b	.L46
 451              	.L56:
 452 00a6 00BF     		.align	2
 453              	.L55:
 454 00a8 E02E6542 		.word	1113927392
 455              		.size	_ZNK15PolarKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK15PolarKinematics21Cartesian
 456              		.section	.text._ZNK15PolarKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 9


 457              		.align	1
 458              		.p2align 2,,3
 459              		.global	_ZNK15PolarKinematics21MotorStepsToCartesianEPKlPKfjjPf
 460              		.syntax unified
 461              		.thumb
 462              		.thumb_func
 463              		.fpu fpv4-sp-d16
 464              		.type	_ZNK15PolarKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 465              	_ZNK15PolarKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 466              		@ args = 8, pretend = 0, frame = 0
 467              		@ frame_needed = 0, uses_anonymous_args = 0
 468 0000 D1ED017A 		vldr.32	s15, [r1, #4]	@ int
 469 0004 9FED217A 		vldr.32	s14, .L62
 470 0008 D2ED016A 		vldr.32	s13, [r2, #4]
 471 000c F8B5     		push	{r3, r4, r5, r6, r7, lr}
 472 000e F8EEE77A 		vcvt.f32.s32	s15, s15
 473 0012 2DED028B 		vpush.64	{d8}
 474 0016 67EE877A 		vmul.f32	s15, s15, s14
 475 001a 92ED007A 		vldr.32	s14, [r2]
 476 001e 099D     		ldr	r5, [sp, #36]
 477 0020 C7EEA68A 		vdiv.f32	s17, s15, s13
 478 0024 1F46     		mov	r7, r3
 479 0026 0C46     		mov	r4, r1
 480 0028 1646     		mov	r6, r2
 481 002a D1ED007A 		vldr.32	s15, [r1]	@ int
 482 002e F8EEE77A 		vcvt.f32.s32	s15, s15
 483 0032 B0EE680A 		vmov.f32	s0, s17
 484 0036 87EE878A 		vdiv.f32	s16, s15, s14
 485 003a FFF7FEFF 		bl	cosf
 486 003e 60EE087A 		vmul.f32	s15, s0, s16
 487 0042 B0EE680A 		vmov.f32	s0, s17
 488 0046 C5ED007A 		vstr.32	s15, [r5]
 489 004a FFF7FEFF 		bl	sinf
 490 004e 20EE080A 		vmul.f32	s0, s0, s16
 491 0052 022F     		cmp	r7, #2
 492 0054 85ED010A 		vstr.32	s0, [r5, #4]
 493 0058 15D9     		bls	.L57
 494 005a 04EB8700 		add	r0, r4, r7, lsl #2
 495 005e 0438     		subs	r0, r0, #4
 496 0060 211D     		adds	r1, r4, #4
 497 0062 06F10802 		add	r2, r6, #8
 498 0066 05F10803 		add	r3, r5, #8
 499              	.L59:
 500 006a 51F8044F 		ldr	r4, [r1, #4]!
 501 006e F2EC016A 		vldmia.32	r2!, {s13}
 502 0072 07EE904A 		vmov	s15, r4	@ int
 503 0076 F8EEE77A 		vcvt.f32.s32	s15, s15
 504 007a 8142     		cmp	r1, r0
 505 007c 87EEA67A 		vdiv.f32	s14, s15, s13
 506 0080 A3EC017A 		vstmia.32	r3!, {s14}
 507 0084 F1D1     		bne	.L59
 508              	.L57:
 509 0086 BDEC028B 		vldm	sp!, {d8}
 510 008a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 511              	.L63:
 512              		.align	2
 513              	.L62:
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 10


 514 008c 35FA8E3C 		.word	1016003125
 515              		.size	_ZNK15PolarKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK15PolarKinematics21MotorSteps
 516              		.section	.text._ZNK15PolarKinematics13LimitPositionEPfjmb,"ax",%progbits
 517              		.align	1
 518              		.p2align 2,,3
 519              		.global	_ZNK15PolarKinematics13LimitPositionEPfjmb
 520              		.syntax unified
 521              		.thumb
 522              		.thumb_func
 523              		.fpu fpv4-sp-d16
 524              		.type	_ZNK15PolarKinematics13LimitPositionEPfjmb, %function
 525              	_ZNK15PolarKinematics13LimitPositionEPfjmb:
 526              		@ args = 4, pretend = 0, frame = 0
 527              		@ frame_needed = 0, uses_anonymous_args = 0
 528 0000 30B5     		push	{r4, r5, lr}
 529 0002 2DED028B 		vpush.64	{d8}
 530 0006 83B0     		sub	sp, sp, #12
 531 0008 0C46     		mov	r4, r1
 532 000a 0093     		str	r3, [sp]
 533 000c 1346     		mov	r3, r2
 534 000e 0222     		movs	r2, #2
 535 0010 0546     		mov	r5, r0
 536 0012 FFF7FEFF 		bl	_ZNK10Kinematics21LimitPositionFromAxisEPfjjm
 537 0016 D4ED017A 		vldr.32	s15, [r4, #4]
 538 001a 94ED007A 		vldr.32	s14, [r4]
 539 001e D5ED096A 		vldr.32	s13, [r5, #36]
 540 0022 27EEA70A 		vmul.f32	s0, s15, s15
 541 0026 A7EE070A 		vfma.f32	s0, s14, s14
 542 002a F4EEC06A 		vcmpe.f32	s13, s0
 543 002e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 544 0032 26DC     		bgt	.L79
 545 0034 D5ED0A6A 		vldr.32	s13, [r5, #40]
 546 0038 F4EEC06A 		vcmpe.f32	s13, s0
 547 003c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 548 0040 03D4     		bmi	.L80
 549 0042 03B0     		add	sp, sp, #12
 550              		@ sp needed
 551 0044 BDEC028B 		vldm	sp!, {d8}
 552 0048 30BD     		pop	{r4, r5, pc}
 553              	.L80:
 554 004a B5EE400A 		vcmp.f32	s0, #0
 555 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 556 0052 B1EEC08A 		vsqrt.f32	s16, s0
 557 0056 47D4     		bmi	.L81
 558              	.L72:
 559 0058 0120     		movs	r0, #1
 560 005a 95ED056A 		vldr.32	s12, [r5, #20]
 561 005e C6EE086A 		vdiv.f32	s13, s12, s16
 562 0062 26EE877A 		vmul.f32	s14, s13, s14
 563 0066 84ED007A 		vstr.32	s14, [r4]
 564 006a D5ED056A 		vldr.32	s13, [r5, #20]
 565 006e 86EE887A 		vdiv.f32	s14, s13, s16
 566 0072 67EE277A 		vmul.f32	s15, s14, s15
 567 0076 C4ED017A 		vstr.32	s15, [r4, #4]
 568 007a 03B0     		add	sp, sp, #12
 569              		@ sp needed
 570 007c BDEC028B 		vldm	sp!, {d8}
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 11


 571 0080 30BD     		pop	{r4, r5, pc}
 572              	.L79:
 573 0082 B5EE400A 		vcmp.f32	s0, #0
 574 0086 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 575 008a B1EEC08A 		vsqrt.f32	s16, s0
 576 008e 28D4     		bmi	.L82
 577              	.L67:
 578 0090 DFED197A 		vldr.32	s15, .L83
 579 0094 B4EEE78A 		vcmpe.f32	s16, s15
 580 0098 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 581 009c 08D5     		bpl	.L77
 582 009e 2A69     		ldr	r2, [r5, #16]	@ float
 583 00a0 2260     		str	r2, [r4]	@ float
 584 00a2 0023     		movs	r3, #0
 585 00a4 0120     		movs	r0, #1
 586 00a6 6360     		str	r3, [r4, #4]	@ float
 587 00a8 03B0     		add	sp, sp, #12
 588              		@ sp needed
 589 00aa BDEC028B 		vldm	sp!, {d8}
 590 00ae 30BD     		pop	{r4, r5, pc}
 591              	.L77:
 592 00b0 95ED046A 		vldr.32	s12, [r5, #16]
 593 00b4 94ED007A 		vldr.32	s14, [r4]
 594 00b8 D4ED017A 		vldr.32	s15, [r4, #4]
 595 00bc C6EE086A 		vdiv.f32	s13, s12, s16
 596 00c0 0120     		movs	r0, #1
 597 00c2 27EE267A 		vmul.f32	s14, s14, s13
 598 00c6 84ED007A 		vstr.32	s14, [r4]
 599 00ca D5ED046A 		vldr.32	s13, [r5, #16]
 600 00ce 86EE887A 		vdiv.f32	s14, s13, s16
 601 00d2 67EE877A 		vmul.f32	s15, s15, s14
 602 00d6 C4ED017A 		vstr.32	s15, [r4, #4]
 603 00da 03B0     		add	sp, sp, #12
 604              		@ sp needed
 605 00dc BDEC028B 		vldm	sp!, {d8}
 606 00e0 30BD     		pop	{r4, r5, pc}
 607              	.L82:
 608 00e2 FFF7FEFF 		bl	sqrtf
 609 00e6 D3E7     		b	.L67
 610              	.L81:
 611 00e8 FFF7FEFF 		bl	sqrtf
 612 00ec 94ED007A 		vldr.32	s14, [r4]
 613 00f0 D4ED017A 		vldr.32	s15, [r4, #4]
 614 00f4 B0E7     		b	.L72
 615              	.L84:
 616 00f6 00BF     		.align	2
 617              	.L83:
 618 00f8 0AD7233C 		.word	1008981770
 619              		.size	_ZNK15PolarKinematics13LimitPositionEPfjmb, .-_ZNK15PolarKinematics13LimitPositionEPfjmb
 620              		.section	.text._ZNK15PolarKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 621              		.align	1
 622              		.p2align 2,,3
 623              		.global	_ZNK15PolarKinematics25LimitSpeedAndAccelerationER3DDAPKf
 624              		.syntax unified
 625              		.thumb
 626              		.thumb_func
 627              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 12


 628              		.type	_ZNK15PolarKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 629              	_ZNK15PolarKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 630              		@ args = 0, pretend = 0, frame = 0
 631              		@ frame_needed = 0, uses_anonymous_args = 0
 632              		@ link register save eliminated.
 633 0000 4A68     		ldr	r2, [r1, #4]
 634 0002 4B6A     		ldr	r3, [r1, #36]
 635 0004 526A     		ldr	r2, [r2, #36]
 636 0006 9342     		cmp	r3, r2
 637 0008 1FD0     		beq	.L85
 638 000a 10B4     		push	{r4}
 639 000c 0F4C     		ldr	r4, .L90
 640 000e D1ED2C7A 		vldr.32	s15, [r1, #176]
 641 0012 6468     		ldr	r4, [r4, #4]	@ unaligned
 642 0014 D0ED080A 		vldr.32	s1, [r0, #32]
 643 0018 94ED787A 		vldr.32	s14, [r4, #480]
 644 001c 90ED070A 		vldr.32	s0, [r0, #28]
 645 0020 5DF8044B 		ldr	r4, [sp], #4
 646 0024 9B1A     		subs	r3, r3, r2
 647 0026 002B     		cmp	r3, #0
 648 0028 B8BF     		it	lt
 649 002a 5B42     		rsblt	r3, r3, #0
 650 002c 27EE277A 		vmul.f32	s14, s14, s15
 651 0030 07EE903A 		vmov	s15, r3	@ int
 652 0034 F8EEE77A 		vcvt.f32.s32	s15, s15
 653 0038 0846     		mov	r0, r1
 654 003a C7EE276A 		vdiv.f32	s13, s14, s15
 655 003e 66EEA00A 		vmul.f32	s1, s13, s1
 656 0042 26EE800A 		vmul.f32	s0, s13, s0
 657 0046 FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 658              	.L85:
 659 004a 7047     		bx	lr
 660              	.L91:
 661              		.align	2
 662              	.L90:
 663 004c 00000000 		.word	reprap
 664              		.size	_ZNK15PolarKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK15PolarKinematics25LimitSpe
 665              		.section	.text._ZN15PolarKinematicsD0Ev,"axG",%progbits,_ZN15PolarKinematicsD5Ev,comdat
 666              		.align	1
 667              		.p2align 2,,3
 668              		.weak	_ZN15PolarKinematicsD0Ev
 669              		.syntax unified
 670              		.thumb
 671              		.thumb_func
 672              		.fpu fpv4-sp-d16
 673              		.type	_ZN15PolarKinematicsD0Ev, %function
 674              	_ZN15PolarKinematicsD0Ev:
 675              		@ args = 0, pretend = 0, frame = 0
 676              		@ frame_needed = 0, uses_anonymous_args = 0
 677 0000 10B5     		push	{r4, lr}
 678 0002 2C21     		movs	r1, #44
 679 0004 0446     		mov	r4, r0
 680 0006 FFF7FEFF 		bl	_ZdlPvj
 681 000a 2046     		mov	r0, r4
 682 000c 10BD     		pop	{r4, pc}
 683              		.size	_ZN15PolarKinematicsD0Ev, .-_ZN15PolarKinematicsD0Ev
 684 000e 00BF     		.section	.text._ZNK15PolarKinematics17GetHomingFileNameEmmjRK9StringRef,"ax",%progbits
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 13


 685              		.align	1
 686              		.p2align 2,,3
 687              		.global	_ZNK15PolarKinematics17GetHomingFileNameEmmjRK9StringRef
 688              		.syntax unified
 689              		.thumb
 690              		.thumb_func
 691              		.fpu fpv4-sp-d16
 692              		.type	_ZNK15PolarKinematics17GetHomingFileNameEmmjRK9StringRef, %function
 693              	_ZNK15PolarKinematics17GetHomingFileNameEmmjRK9StringRef:
 694              		@ args = 4, pretend = 0, frame = 0
 695              		@ frame_needed = 0, uses_anonymous_args = 0
 696 0000 30B5     		push	{r4, r5, lr}
 697 0002 83B0     		sub	sp, sp, #12
 698 0004 069D     		ldr	r5, [sp, #24]
 699 0006 0095     		str	r5, [sp]
 700 0008 FFF7FEFF 		bl	_ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef
 701 000c 0446     		mov	r4, r0
 702 000e 10B1     		cbz	r0, .L103
 703              	.L94:
 704 0010 2046     		mov	r0, r4
 705 0012 03B0     		add	sp, sp, #12
 706              		@ sp needed
 707 0014 30BD     		pop	{r4, r5, pc}
 708              	.L103:
 709 0016 0B49     		ldr	r1, .L105
 710 0018 2868     		ldr	r0, [r5]
 711 001a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 712 001e 50B9     		cbnz	r0, .L104
 713 0020 0949     		ldr	r1, .L105+4
 714 0022 2868     		ldr	r0, [r5]
 715 0024 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 716 0028 0028     		cmp	r0, #0
 717 002a F1D0     		beq	.L94
 718 002c 2846     		mov	r0, r5
 719 002e 0749     		ldr	r1, .L105+8
 720 0030 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 721 0034 ECE7     		b	.L94
 722              	.L104:
 723 0036 2846     		mov	r0, r5
 724 0038 0549     		ldr	r1, .L105+12
 725 003a FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 726 003e 2046     		mov	r0, r4
 727 0040 03B0     		add	sp, sp, #12
 728              		@ sp needed
 729 0042 30BD     		pop	{r4, r5, pc}
 730              	.L106:
 731              		.align	2
 732              	.L105:
 733 0044 00000000 		.word	.LC3
 734 0048 18000000 		.word	.LC5
 735 004c 20000000 		.word	.LC6
 736 0050 08000000 		.word	.LC4
 737              		.size	_ZNK15PolarKinematics17GetHomingFileNameEmmjRK9StringRef, .-_ZNK15PolarKinematics17GetHoming
 738              		.section	.text._ZNK15PolarKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA,"ax",%progbits
 739              		.align	1
 740              		.p2align 2,,3
 741              		.global	_ZNK15PolarKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 14


 742              		.syntax unified
 743              		.thumb
 744              		.thumb_func
 745              		.fpu fpv4-sp-d16
 746              		.type	_ZNK15PolarKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, %function
 747              	_ZNK15PolarKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA:
 748              		@ args = 4, pretend = 0, frame = 0
 749              		@ frame_needed = 0, uses_anonymous_args = 0
 750 0000 38B5     		push	{r3, r4, r5, lr}
 751 0002 049D     		ldr	r5, [sp, #16]
 752 0004 0C46     		mov	r4, r1
 753 0006 09B3     		cbz	r1, .L109
 754 0008 0129     		cmp	r1, #1
 755 000a 06D1     		bne	.L116
 756 000c AA7A     		ldrb	r2, [r5, #10]	@ zero_extendqisi2
 757 000e 0023     		movs	r3, #0
 758 0010 63F30002 		bfi	r2, r3, #0, #1
 759 0014 AA72     		strb	r2, [r5, #10]
 760 0016 6B62     		str	r3, [r5, #36]
 761 0018 38BD     		pop	{r3, r4, r5, pc}
 762              	.L116:
 763 001a 1749     		ldr	r1, .L118
 764 001c 4968     		ldr	r1, [r1, #4]
 765 001e 1ABB     		cbnz	r2, .L117
 766 0020 04F5F872 		add	r2, r4, #496
 767 0024 01EB8201 		add	r1, r1, r2, lsl #2
 768 0028 91ED000A 		vldr.32	s0, [r1]
 769              	.L113:
 770 002c 03EB8403 		add	r3, r3, r4, lsl #2
 771 0030 D3ED007A 		vldr.32	s15, [r3]
 772 0034 20EE270A 		vmul.f32	s0, s0, s15
 773 0038 FFF7FEFF 		bl	lrintf
 774 003c AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 775 003e 0834     		adds	r4, r4, #8
 776 0040 6FF30003 		bfc	r3, #0, #1
 777 0044 45F82400 		str	r0, [r5, r4, lsl #2]
 778 0048 AB72     		strb	r3, [r5, #10]
 779 004a 38BD     		pop	{r3, r4, r5, pc}
 780              	.L109:
 781 004c D3ED007A 		vldr.32	s15, [r3]
 782 0050 90ED060A 		vldr.32	s0, [r0, #24]
 783 0054 20EE270A 		vmul.f32	s0, s0, s15
 784 0058 FFF7FEFF 		bl	lrintf
 785 005c AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 786 005e 2862     		str	r0, [r5, #32]
 787 0060 64F30003 		bfi	r3, r4, #0, #1
 788 0064 AB72     		strb	r3, [r5, #10]
 789 0066 38BD     		pop	{r3, r4, r5, pc}
 790              	.L117:
 791 0068 04F5F372 		add	r2, r4, #486
 792 006c 01EB8201 		add	r1, r1, r2, lsl #2
 793 0070 91ED010A 		vldr.32	s0, [r1, #4]
 794 0074 DAE7     		b	.L113
 795              	.L119:
 796 0076 00BF     		.align	2
 797              	.L118:
 798 0078 00000000 		.word	reprap
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 15


 799              		.size	_ZNK15PolarKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, .-_ZNK15PolarKinematics23OnHoming
 800              		.global	__aeabi_f2d
 801              		.section	.text._ZN15PolarKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 802              		.align	1
 803              		.p2align 2,,3
 804              		.global	_ZN15PolarKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 805              		.syntax unified
 806              		.thumb
 807              		.thumb_func
 808              		.fpu fpv4-sp-d16
 809              		.type	_ZN15PolarKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 810              	_ZN15PolarKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 811              		@ args = 4, pretend = 0, frame = 16
 812              		@ frame_needed = 0, uses_anonymous_args = 0
 813 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 814 0004 40F29D26 		movw	r6, #669
 815 0008 B142     		cmp	r1, r6
 816 000a 8CB0     		sub	sp, sp, #48
 817 000c 06D0     		beq	.L137
 818 000e 129C     		ldr	r4, [sp, #72]
 819 0010 0094     		str	r4, [sp]
 820 0012 FFF7FEFF 		bl	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 821              	.L130:
 822 0016 0CB0     		add	sp, sp, #48
 823              		@ sp needed
 824 0018 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 825              	.L137:
 826 001c 0CAE     		add	r6, sp, #48
 827 001e 0027     		movs	r7, #0
 828 0020 06F80E7D 		strb	r7, [r6, #-14]!
 829 0024 1546     		mov	r5, r2
 830 0026 0446     		mov	r4, r0
 831 0028 021D     		adds	r2, r0, #4
 832 002a 5321     		movs	r1, #83
 833 002c 9846     		mov	r8, r3
 834 002e 2846     		mov	r0, r5
 835 0030 3346     		mov	r3, r6
 836 0032 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 837 0036 5421     		movs	r1, #84
 838 0038 3346     		mov	r3, r6
 839 003a 04F10802 		add	r2, r4, #8
 840 003e 2846     		mov	r0, r5
 841 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 842 0044 5221     		movs	r1, #82
 843 0046 2846     		mov	r0, r5
 844 0048 8DF82370 		strb	r7, [sp, #35]
 845 004c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 846 0050 C8BB     		cbnz	r0, .L138
 847              	.L122:
 848 0052 0DF12303 		add	r3, sp, #35
 849 0056 04F11802 		add	r2, r4, #24
 850 005a 4821     		movs	r1, #72
 851 005c 2846     		mov	r0, r5
 852 005e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 853 0062 3346     		mov	r3, r6
 854 0064 04F12002 		add	r2, r4, #32
 855 0068 4121     		movs	r1, #65
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 16


 856 006a 2846     		mov	r0, r5
 857 006c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 858 0070 3346     		mov	r3, r6
 859 0072 04F11C02 		add	r2, r4, #28
 860 0076 4621     		movs	r1, #70
 861 0078 2846     		mov	r0, r5
 862 007a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 863 007e 9DF82300 		ldrb	r0, [sp, #35]	@ zero_extendqisi2
 864 0082 50B9     		cbnz	r0, .L125
 865 0084 9DF82230 		ldrb	r3, [sp, #34]	@ zero_extendqisi2
 866 0088 3BB9     		cbnz	r3, .L125
 867 008a 2846     		mov	r0, r5
 868 008c 4B21     		movs	r1, #75
 869 008e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 870 0092 80B3     		cbz	r0, .L129
 871              	.L136:
 872 0094 9DF82300 		ldrb	r0, [sp, #35]	@ zero_extendqisi2
 873 0098 BDE7     		b	.L130
 874              	.L125:
 875 009a D4ED047A 		vldr.32	s15, [r4, #16]
 876 009e 94ED057A 		vldr.32	s14, [r4, #20]
 877 00a2 F5EEC07A 		vcmpe.f32	s15, #0
 878 00a6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 879 00aa 8CBF     		ite	hi
 880 00ac 67EEA77A 		vmulhi.f32	s15, s15, s15
 881 00b0 DFED217A 		vldrls.32	s15, .L139
 882 00b4 27EE077A 		vmul.f32	s14, s14, s14
 883 00b8 C4ED097A 		vstr.32	s15, [r4, #36]
 884 00bc 84ED0A7A 		vstr.32	s14, [r4, #40]
 885 00c0 0CB0     		add	sp, sp, #48
 886              		@ sp needed
 887 00c2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 888              	.L138:
 889 00c6 0CAA     		add	r2, sp, #48
 890 00c8 0223     		movs	r3, #2
 891 00ca 42F80C3D 		str	r3, [r2, #-12]!
 892 00ce 0AA9     		add	r1, sp, #40
 893 00d0 3B46     		mov	r3, r7
 894 00d2 2846     		mov	r0, r5
 895 00d4 0127     		movs	r7, #1
 896 00d6 8DF82370 		strb	r7, [sp, #35]
 897 00da FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 898 00de 099B     		ldr	r3, [sp, #36]
 899 00e0 022B     		cmp	r3, #2
 900 00e2 06BF     		itte	eq
 901 00e4 0A9B     		ldreq	r3, [sp, #40]	@ float
 902 00e6 0B9A     		ldreq	r2, [sp, #44]	@ float
 903 00e8 0A9A     		ldrne	r2, [sp, #40]	@ float
 904 00ea 6261     		str	r2, [r4, #20]	@ float
 905 00ec 18BF     		it	ne
 906 00ee 0023     		movne	r3, #0
 907 00f0 2361     		str	r3, [r4, #16]	@ float
 908 00f2 A361     		str	r3, [r4, #24]	@ float
 909 00f4 ADE7     		b	.L122
 910              	.L129:
 911 00f6 2069     		ldr	r0, [r4, #16]	@ float
 912 00f8 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 17


 913 00fc 0646     		mov	r6, r0
 914 00fe A068     		ldr	r0, [r4, #8]	@ float
 915 0100 0F46     		mov	r7, r1
 916 0102 FFF7FEFF 		bl	__aeabi_f2d
 917 0106 D4ED017A 		vldr.32	s15, [r4, #4]
 918 010a CDE90601 		strd	r0, [sp, #24]
 919 010e FDEEE77A 		vcvt.s32.f32	s15, s15
 920 0112 A069     		ldr	r0, [r4, #24]	@ float
 921 0114 CDED047A 		vstr.32	s15, [sp, #16]	@ int
 922 0118 FFF7FEFF 		bl	__aeabi_f2d
 923 011c CDE90201 		strd	r0, [sp, #8]
 924 0120 6069     		ldr	r0, [r4, #20]	@ float
 925 0122 FFF7FEFF 		bl	__aeabi_f2d
 926 0126 3246     		mov	r2, r6
 927 0128 CDE90001 		strd	r0, [sp]
 928 012c 3B46     		mov	r3, r7
 929 012e 4046     		mov	r0, r8
 930 0130 0249     		ldr	r1, .L139+4
 931 0132 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 932 0136 ADE7     		b	.L136
 933              	.L140:
 934              		.align	2
 935              	.L139:
 936 0138 00000000 		.word	0
 937 013c 00000000 		.word	.LC7
 938              		.size	_ZN15PolarKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN15PolarKinematics9Configu
 939              		.section	.text._ZN15PolarKinematicsC2Ev,"ax",%progbits
 940              		.align	1
 941              		.p2align 2,,3
 942              		.global	_ZN15PolarKinematicsC2Ev
 943              		.syntax unified
 944              		.thumb
 945              		.thumb_func
 946              		.fpu fpv4-sp-d16
 947              		.type	_ZN15PolarKinematicsC2Ev, %function
 948              	_ZN15PolarKinematicsC2Ev:
 949              		@ args = 0, pretend = 0, frame = 0
 950              		@ frame_needed = 0, uses_anonymous_args = 0
 951 0000 10B5     		push	{r4, lr}
 952 0002 0023     		movs	r3, #0
 953 0004 0446     		mov	r4, r0
 954 0006 0122     		movs	r2, #1
 955 0008 DFED0A0A 		vldr.32	s1, .L143
 956 000c 9FED0A0A 		vldr.32	s0, .L143+4
 957 0010 0721     		movs	r1, #7
 958 0012 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffbb
 959 0016 094A     		ldr	r2, .L143+8
 960 0018 0948     		ldr	r0, .L143+12
 961 001a 0A49     		ldr	r1, .L143+16
 962 001c 2260     		str	r2, [r4]
 963 001e 0023     		movs	r3, #0
 964 0020 094A     		ldr	r2, .L143+20
 965 0022 6061     		str	r0, [r4, #20]	@ float
 966 0024 A162     		str	r1, [r4, #40]	@ float
 967 0026 2361     		str	r3, [r4, #16]	@ float
 968 0028 A361     		str	r3, [r4, #24]	@ float
 969 002a 6362     		str	r3, [r4, #36]	@ float
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 18


 970 002c E261     		str	r2, [r4, #28]	@ float
 971 002e 2262     		str	r2, [r4, #32]	@ float
 972 0030 2046     		mov	r0, r4
 973 0032 10BD     		pop	{r4, pc}
 974              	.L144:
 975              		.align	2
 976              	.L143:
 977 0034 CDCC4C3E 		.word	1045220557
 978 0038 0000C842 		.word	1120403456
 979 003c 08000000 		.word	.LANCHOR0+8
 980 0040 00001643 		.word	1125515264
 981 0044 00C8AF46 		.word	1185925120
 982 0048 0000F041 		.word	1106247680
 983              		.size	_ZN15PolarKinematicsC2Ev, .-_ZN15PolarKinematicsC2Ev
 984              		.global	_ZN15PolarKinematicsC1Ev
 985              		.thumb_set _ZN15PolarKinematicsC1Ev,_ZN15PolarKinematicsC2Ev
 986              		.section	.text._ZN15PolarKinematics6RecalcEv,"ax",%progbits
 987              		.align	1
 988              		.p2align 2,,3
 989              		.global	_ZN15PolarKinematics6RecalcEv
 990              		.syntax unified
 991              		.thumb
 992              		.thumb_func
 993              		.fpu fpv4-sp-d16
 994              		.type	_ZN15PolarKinematics6RecalcEv, %function
 995              	_ZN15PolarKinematics6RecalcEv:
 996              		@ args = 0, pretend = 0, frame = 0
 997              		@ frame_needed = 0, uses_anonymous_args = 0
 998              		@ link register save eliminated.
 999 0000 D0ED047A 		vldr.32	s15, [r0, #16]
 1000 0004 90ED057A 		vldr.32	s14, [r0, #20]
 1001 0008 F5EEC07A 		vcmpe.f32	s15, #0
 1002 000c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1003 0010 8CBF     		ite	hi
 1004 0012 67EEA77A 		vmulhi.f32	s15, s15, s15
 1005 0016 DFED047A 		vldrls.32	s15, .L148
 1006 001a 27EE077A 		vmul.f32	s14, s14, s14
 1007 001e C0ED097A 		vstr.32	s15, [r0, #36]
 1008 0022 80ED0A7A 		vstr.32	s14, [r0, #40]
 1009 0026 7047     		bx	lr
 1010              	.L149:
 1011              		.align	2
 1012              	.L148:
 1013 0028 00000000 		.word	0
 1014              		.size	_ZN15PolarKinematics6RecalcEv, .-_ZN15PolarKinematics6RecalcEv
 1015              		.global	_ZTV15PolarKinematics
 1016              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1017              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1018              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1019              	_ZL28cpu_irq_prev_interrupt_state:
 1020 0000 00       		.space	1
 1021              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1022              		.align	2
 1023              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1024              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1025              	_ZL32cpu_irq_critical_section_counter:
 1026 0000 00000000 		.space	4
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 19


 1027              		.section	.rodata._ZN15PolarKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%progbi
 1028              		.align	2
 1029              	.LC7:
 1030 0000 4B696E65 		.ascii	"Kinematics is Polar with radius %.1f to %.1fmm, hom"
 1030      6D617469 
 1030      63732069 
 1030      7320506F 
 1030      6C617220 
 1031 0033 65642072 		.ascii	"ed radius %.1fmm, segments/sec %d, min. segment len"
 1031      61646975 
 1031      7320252E 
 1031      31666D6D 
 1031      2C207365 
 1032 0066 67746820 		.ascii	"gth %.2f\000"
 1032      252E3266 
 1032      00
 1033              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 1034              		.align	2
 1035              	.LC0:
 1036 0000 58595A00 		.ascii	"XYZ\000"
 1037              		.section	.rodata._ZNK15PolarKinematics17GetHomingFileNameEmmjRK9StringRef.str1.4,"aMS",%progbits,1
 1038              		.align	2
 1039              	.LC3:
 1040 0000 686F6D65 		.ascii	"homex.g\000"
 1040      782E6700 
 1041              	.LC4:
 1042 0008 686F6D65 		.ascii	"homeradius.g\000"
 1042      72616469 
 1042      75732E67 
 1042      00
 1043 0015 000000   		.space	3
 1044              	.LC5:
 1045 0018 686F6D65 		.ascii	"homey.g\000"
 1045      792E6700 
 1046              	.LC6:
 1047 0020 686F6D65 		.ascii	"homebed.g\000"
 1047      6265642E 
 1047      6700
 1048              		.section	.rodata._ZNK15PolarKinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 1049              		.align	2
 1050              	.LC1:
 1051 0000 52545A55 		.ascii	"RTZUVWABC\000"
 1051      56574142 
 1051      4300
 1052              		.section	.rodata._ZNK15PolarKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 1053              		.align	2
 1054              	.LC2:
 1055 0000 506F6C61 		.ascii	"Polar\000"
 1055      7200
 1056              		.section	.rodata._ZTV15PolarKinematics,"a",%progbits
 1057              		.align	2
 1058              		.set	.LANCHOR0,. + 0
 1059              		.type	_ZTV15PolarKinematics, %object
 1060              		.size	_ZTV15PolarKinematics, 128
 1061              	_ZTV15PolarKinematics:
 1062 0000 00000000 		.word	0
 1063 0004 00000000 		.word	0
ARM GAS  C:\Users\paja\AppData\Local\Temp\ccBpADqX.s 			page 20


 1064 0008 00000000 		.word	_ZNK15PolarKinematics7GetNameEb
 1065 000c 00000000 		.word	_ZN15PolarKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1066 0010 00000000 		.word	_ZNK15PolarKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 1067 0014 00000000 		.word	_ZNK15PolarKinematics21MotorStepsToCartesianEPKlPKfjjPf
 1068 0018 00000000 		.word	_ZNK10Kinematics23SupportsAutoCalibrationEv
 1069 001c 00000000 		.word	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 1070 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 1071 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 1072 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 1073 002c 00000000 		.word	_ZNK15PolarKinematics11IsReachableEffb
 1074 0030 00000000 		.word	_ZNK15PolarKinematics13LimitPositionEPfjmb
 1075 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 1076 0038 00000000 		.word	_ZNK15PolarKinematics25GetAssumedInitialPositionEjPf
 1077 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 1078 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 1079 0044 00000000 		.word	_ZNK15PolarKinematics17HomingButtonNamesEv
 1080 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 1081 004c 00000000 		.word	_ZNK15PolarKinematics17GetHomingFileNameEmmjRK9StringRef
 1082 0050 00000000 		.word	_ZNK15PolarKinematics24QueryTerminateHomingMoveEj
 1083 0054 00000000 		.word	_ZNK15PolarKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 1084 0058 00000000 		.word	_ZNK15PolarKinematics13GetHomingModeEv
 1085 005c 00000000 		.word	_ZNK15PolarKinematics16AxesAssumedHomedEm
 1086 0060 00000000 		.word	_ZNK15PolarKinematics15MustBeHomedAxesEmb
 1087 0064 00000000 		.word	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore
 1088 0068 00000000 		.word	_ZNK15PolarKinematics25LimitSpeedAndAccelerationER3DDAPKf
 1089 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 1090 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 1091 0074 00000000 		.word	_ZNK15PolarKinematics24IsContinuousRotationAxisEj
 1092 0078 00000000 		.word	_ZN15PolarKinematicsD1Ev
 1093 007c 00000000 		.word	_ZN15PolarKinematicsD0Ev
 1094              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
