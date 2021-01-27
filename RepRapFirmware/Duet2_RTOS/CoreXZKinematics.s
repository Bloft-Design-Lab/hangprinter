ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmv7pul.s 			page 1


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
  13              		.file	"CoreXZKinematics.cpp"
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmv7pul.s 			page 2


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmv7pul.s 			page 3


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmv7pul.s 			page 4


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
 221              		.section	.text._ZNK16CoreXZKinematics23SupportsAutoCalibrationEv,"axG",%progbits,_ZNK16CoreXZKinem
 222              		.align	1
 223              		.p2align 2,,3
 224              		.weak	_ZNK16CoreXZKinematics23SupportsAutoCalibrationEv
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmv7pul.s 			page 5


 229              		.type	_ZNK16CoreXZKinematics23SupportsAutoCalibrationEv, %function
 230              	_ZNK16CoreXZKinematics23SupportsAutoCalibrationEv:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233              		@ link register save eliminated.
 234 0000 0020     		movs	r0, #0
 235 0002 7047     		bx	lr
 236              		.size	_ZNK16CoreXZKinematics23SupportsAutoCalibrationEv, .-_ZNK16CoreXZKinematics23SupportsAutoCal
 237              		.section	.text._ZNK16CoreXZKinematics7GetNameEb,"ax",%progbits
 238              		.align	1
 239              		.p2align 2,,3
 240              		.global	_ZNK16CoreXZKinematics7GetNameEb
 241              		.syntax unified
 242              		.thumb
 243              		.thumb_func
 244              		.fpu fpv4-sp-d16
 245              		.type	_ZNK16CoreXZKinematics7GetNameEb, %function
 246              	_ZNK16CoreXZKinematics7GetNameEb:
 247              		@ args = 0, pretend = 0, frame = 0
 248              		@ frame_needed = 0, uses_anonymous_args = 0
 249              		@ link register save eliminated.
 250 0000 024B     		ldr	r3, .L26
 251 0002 0348     		ldr	r0, .L26+4
 252 0004 0029     		cmp	r1, #0
 253 0006 08BF     		it	eq
 254 0008 1846     		moveq	r0, r3
 255 000a 7047     		bx	lr
 256              	.L27:
 257              		.align	2
 258              	.L26:
 259 000c 08000000 		.word	.LC3
 260 0010 00000000 		.word	.LC2
 261              		.size	_ZNK16CoreXZKinematics7GetNameEb, .-_ZNK16CoreXZKinematics7GetNameEb
 262              		.section	.text._ZNK16CoreXZKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 263              		.align	1
 264              		.p2align 2,,3
 265              		.global	_ZNK16CoreXZKinematics21MotorStepsToCartesianEPKlPKfjjPf
 266              		.syntax unified
 267              		.thumb
 268              		.thumb_func
 269              		.fpu fpv4-sp-d16
 270              		.type	_ZNK16CoreXZKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 271              	_ZNK16CoreXZKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 272              		@ args = 8, pretend = 0, frame = 0
 273              		@ frame_needed = 0, uses_anonymous_args = 0
 274              		@ link register save eliminated.
 275 0000 91ED027A 		vldr.32	s14, [r1, #8]	@ int
 276 0004 D2ED007A 		vldr.32	s15, [r2]
 277 0008 D2ED026A 		vldr.32	s13, [r2, #8]
 278 000c F8EEC75A 		vcvt.f32.s32	s11, s14
 279 0010 91ED007A 		vldr.32	s14, [r1]	@ int
 280 0014 27EEA55A 		vmul.f32	s10, s15, s11
 281 0018 B8EEC76A 		vcvt.f32.s32	s12, s14
 282 001c 90ED187A 		vldr.32	s14, [r0, #96]
 283 0020 A6EE865A 		vfma.f32	s10, s13, s12
 284 0024 10B4     		push	{r4}
 285 0026 67EEA66A 		vmul.f32	s13, s15, s13
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmv7pul.s 			page 6


 286 002a 37EE077A 		vadd.f32	s14, s14, s14
 287 002e 029C     		ldr	r4, [sp, #8]
 288 0030 D1ED017A 		vldr.32	s15, [r1, #4]	@ int
 289 0034 27EE267A 		vmul.f32	s14, s14, s13
 290 0038 F8EEE77A 		vcvt.f32.s32	s15, s15
 291 003c C5EE074A 		vdiv.f32	s9, s10, s14
 292 0040 032B     		cmp	r3, #3
 293 0042 C4ED004A 		vstr.32	s9, [r4]
 294 0046 92ED015A 		vldr.32	s10, [r2, #4]
 295 004a 87EE857A 		vdiv.f32	s14, s15, s10
 296 004e 84ED017A 		vstr.32	s14, [r4, #4]
 297 0052 92ED007A 		vldr.32	s14, [r2]
 298 0056 92ED025A 		vldr.32	s10, [r2, #8]
 299 005a D0ED1A7A 		vldr.32	s15, [r0, #104]
 300 005e 27EE657A 		vnmul.f32	s14, s14, s11
 301 0062 77EEA77A 		vadd.f32	s15, s15, s15
 302 0066 A6EE057A 		vfma.f32	s14, s12, s10
 303 006a 67EEA67A 		vmul.f32	s15, s15, s13
 304 006e C7EE276A 		vdiv.f32	s13, s14, s15
 305 0072 C4ED026A 		vstr.32	s13, [r4, #8]
 306 0076 14D9     		bls	.L28
 307 0078 01EB8303 		add	r3, r1, r3, lsl #2
 308 007c 181F     		subs	r0, r3, #4
 309 007e 0831     		adds	r1, r1, #8
 310 0080 0C32     		adds	r2, r2, #12
 311 0082 04F10C03 		add	r3, r4, #12
 312              	.L30:
 313 0086 51F8044F 		ldr	r4, [r1, #4]!
 314 008a F2EC016A 		vldmia.32	r2!, {s13}
 315 008e 07EE904A 		vmov	s15, r4	@ int
 316 0092 F8EEE77A 		vcvt.f32.s32	s15, s15
 317 0096 8142     		cmp	r1, r0
 318 0098 87EEA67A 		vdiv.f32	s14, s15, s13
 319 009c A3EC017A 		vstmia.32	r3!, {s14}
 320 00a0 F1D1     		bne	.L30
 321              	.L28:
 322 00a2 5DF8044B 		ldr	r4, [sp], #4
 323 00a6 7047     		bx	lr
 324              		.size	_ZNK16CoreXZKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK16CoreXZKinematics21MotorSte
 325              		.section	.text._ZNK16CoreXZKinematics13DriveIsSharedEj,"ax",%progbits
 326              		.align	1
 327              		.p2align 2,,3
 328              		.global	_ZNK16CoreXZKinematics13DriveIsSharedEj
 329              		.syntax unified
 330              		.thumb
 331              		.thumb_func
 332              		.fpu fpv4-sp-d16
 333              		.type	_ZNK16CoreXZKinematics13DriveIsSharedEj, %function
 334              	_ZNK16CoreXZKinematics13DriveIsSharedEj:
 335              		@ args = 0, pretend = 0, frame = 0
 336              		@ frame_needed = 0, uses_anonymous_args = 0
 337              		@ link register save eliminated.
 338 0000 31F00203 		bics	r3, r1, #2
 339 0004 0CBF     		ite	eq
 340 0006 0120     		moveq	r0, #1
 341 0008 0020     		movne	r0, #0
 342 000a 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmv7pul.s 			page 7


 343              		.size	_ZNK16CoreXZKinematics13DriveIsSharedEj, .-_ZNK16CoreXZKinematics13DriveIsSharedEj
 344              		.section	.text._ZNK16CoreXZKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 345              		.align	1
 346              		.p2align 2,,3
 347              		.global	_ZNK16CoreXZKinematics25LimitSpeedAndAccelerationER3DDAPKf
 348              		.syntax unified
 349              		.thumb
 350              		.thumb_func
 351              		.fpu fpv4-sp-d16
 352              		.type	_ZNK16CoreXZKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 353              	_ZNK16CoreXZKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 354              		@ args = 0, pretend = 0, frame = 0
 355              		@ frame_needed = 0, uses_anonymous_args = 0
 356              		@ link register save eliminated.
 357 0000 7047     		bx	lr
 358              		.size	_ZNK16CoreXZKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK16CoreXZKinematics25LimitS
 359 0002 00BF     		.section	.text._ZN16CoreXZKinematicsD2Ev,"axG",%progbits,_ZN16CoreXZKinematicsD5Ev,comdat
 360              		.align	1
 361              		.p2align 2,,3
 362              		.weak	_ZN16CoreXZKinematicsD2Ev
 363              		.syntax unified
 364              		.thumb
 365              		.thumb_func
 366              		.fpu fpv4-sp-d16
 367              		.type	_ZN16CoreXZKinematicsD2Ev, %function
 368              	_ZN16CoreXZKinematicsD2Ev:
 369              		@ args = 0, pretend = 0, frame = 0
 370              		@ frame_needed = 0, uses_anonymous_args = 0
 371              		@ link register save eliminated.
 372 0000 7047     		bx	lr
 373              		.size	_ZN16CoreXZKinematicsD2Ev, .-_ZN16CoreXZKinematicsD2Ev
 374              		.weak	_ZN16CoreXZKinematicsD1Ev
 375              		.thumb_set _ZN16CoreXZKinematicsD1Ev,_ZN16CoreXZKinematicsD2Ev
 376 0002 00BF     		.section	.text._ZNK16CoreXZKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 377              		.align	1
 378              		.p2align 2,,3
 379              		.global	_ZNK16CoreXZKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 380              		.syntax unified
 381              		.thumb
 382              		.thumb_func
 383              		.fpu fpv4-sp-d16
 384              		.type	_ZNK16CoreXZKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 385              	_ZNK16CoreXZKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 386              		@ args = 12, pretend = 0, frame = 0
 387              		@ frame_needed = 0, uses_anonymous_args = 0
 388 0000 91ED020A 		vldr.32	s0, [r1, #8]
 389 0004 D0ED1A6A 		vldr.32	s13, [r0, #104]
 390 0008 91ED007A 		vldr.32	s14, [r1]
 391 000c D0ED187A 		vldr.32	s15, [r0, #96]
 392 0010 20EE260A 		vmul.f32	s0, s0, s13
 393 0014 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 394 0018 A7EE270A 		vfma.f32	s0, s14, s15
 395 001c 0C46     		mov	r4, r1
 396 001e 1646     		mov	r6, r2
 397 0020 D2ED007A 		vldr.32	s15, [r2]
 398 0024 079D     		ldr	r5, [sp, #28]
 399 0026 20EE270A 		vmul.f32	s0, s0, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmv7pul.s 			page 8


 400 002a 1F46     		mov	r7, r3
 401 002c 8046     		mov	r8, r0
 402 002e FFF7FEFF 		bl	lrintf
 403 0032 D6ED017A 		vldr.32	s15, [r6, #4]
 404 0036 94ED010A 		vldr.32	s0, [r4, #4]
 405 003a 2860     		str	r0, [r5]
 406 003c 20EE270A 		vmul.f32	s0, s0, s15
 407 0040 FFF7FEFF 		bl	lrintf
 408 0044 94ED026A 		vldr.32	s12, [r4, #8]
 409 0048 98ED1A0A 		vldr.32	s0, [r8, #104]
 410 004c D4ED006A 		vldr.32	s13, [r4]
 411 0050 98ED187A 		vldr.32	s14, [r8, #96]
 412 0054 D6ED027A 		vldr.32	s15, [r6, #8]
 413 0058 6860     		str	r0, [r5, #4]
 414 005a 20EE460A 		vnmul.f32	s0, s0, s12
 415 005e A6EE870A 		vfma.f32	s0, s13, s14
 416 0062 20EE270A 		vmul.f32	s0, s0, s15
 417 0066 FFF7FEFF 		bl	lrintf
 418 006a 032F     		cmp	r7, #3
 419 006c A860     		str	r0, [r5, #8]
 420 006e 10D9     		bls	.L37
 421 0070 04EB8707 		add	r7, r4, r7, lsl #2
 422 0074 0C36     		adds	r6, r6, #12
 423 0076 0835     		adds	r5, r5, #8
 424 0078 0C34     		adds	r4, r4, #12
 425              	.L38:
 426 007a B4EC010A 		vldmia.32	r4!, {s0}
 427 007e F6EC017A 		vldmia.32	r6!, {s15}
 428 0082 20EE270A 		vmul.f32	s0, s0, s15
 429 0086 FFF7FEFF 		bl	lrintf
 430 008a BC42     		cmp	r4, r7
 431 008c 45F8040F 		str	r0, [r5, #4]!
 432 0090 F3D1     		bne	.L38
 433              	.L37:
 434 0092 0120     		movs	r0, #1
 435 0094 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 436              		.size	_ZNK16CoreXZKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK16CoreXZKinematics21Cartesi
 437              		.section	.text._ZN16CoreXZKinematicsD0Ev,"axG",%progbits,_ZN16CoreXZKinematicsD5Ev,comdat
 438              		.align	1
 439              		.p2align 2,,3
 440              		.weak	_ZN16CoreXZKinematicsD0Ev
 441              		.syntax unified
 442              		.thumb
 443              		.thumb_func
 444              		.fpu fpv4-sp-d16
 445              		.type	_ZN16CoreXZKinematicsD0Ev, %function
 446              	_ZN16CoreXZKinematicsD0Ev:
 447              		@ args = 0, pretend = 0, frame = 0
 448              		@ frame_needed = 0, uses_anonymous_args = 0
 449 0000 10B5     		push	{r4, lr}
 450 0002 8421     		movs	r1, #132
 451 0004 0446     		mov	r4, r0
 452 0006 FFF7FEFF 		bl	_ZdlPvj
 453 000a 2046     		mov	r0, r4
 454 000c 10BD     		pop	{r4, pc}
 455              		.size	_ZN16CoreXZKinematicsD0Ev, .-_ZN16CoreXZKinematicsD0Ev
 456 000e 00BF     		.section	.text._ZN16CoreXZKinematicsC2Ev,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmv7pul.s 			page 9


 457              		.align	1
 458              		.p2align 2,,3
 459              		.global	_ZN16CoreXZKinematicsC2Ev
 460              		.syntax unified
 461              		.thumb
 462              		.thumb_func
 463              		.fpu fpv4-sp-d16
 464              		.type	_ZN16CoreXZKinematicsC2Ev, %function
 465              	_ZN16CoreXZKinematicsC2Ev:
 466              		@ args = 0, pretend = 0, frame = 0
 467              		@ frame_needed = 0, uses_anonymous_args = 0
 468 0000 10B5     		push	{r4, lr}
 469 0002 0221     		movs	r1, #2
 470 0004 0446     		mov	r4, r0
 471 0006 FFF7FEFF 		bl	_ZN18CoreBaseKinematicsC2E14KinematicsType
 472 000a 024B     		ldr	r3, .L45
 473 000c 2360     		str	r3, [r4]
 474 000e 2046     		mov	r0, r4
 475 0010 10BD     		pop	{r4, pc}
 476              	.L46:
 477 0012 00BF     		.align	2
 478              	.L45:
 479 0014 08000000 		.word	.LANCHOR0+8
 480              		.size	_ZN16CoreXZKinematicsC2Ev, .-_ZN16CoreXZKinematicsC2Ev
 481              		.global	_ZN16CoreXZKinematicsC1Ev
 482              		.thumb_set _ZN16CoreXZKinematicsC1Ev,_ZN16CoreXZKinematicsC2Ev
 483              		.global	_ZTV16CoreXZKinematics
 484              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 485              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 486              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 487              	_ZL28cpu_irq_prev_interrupt_state:
 488 0000 00       		.space	1
 489              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 490              		.align	2
 491              		.type	_ZL32cpu_irq_critical_section_counter, %object
 492              		.size	_ZL32cpu_irq_critical_section_counter, 4
 493              	_ZL32cpu_irq_critical_section_counter:
 494 0000 00000000 		.space	4
 495              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 496              		.align	2
 497              	.LC1:
 498 0000 58595A00 		.ascii	"XYZ\000"
 499              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 500              		.align	2
 501              	.LC0:
 502 0000 58595A55 		.ascii	"XYZUVWABC\000"
 502      56574142 
 502      4300
 503              		.section	.rodata._ZNK16CoreXZKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 504              		.align	2
 505              	.LC2:
 506 0000 636F7265 		.ascii	"coreXZ\000"
 506      585A00
 507 0007 00       		.space	1
 508              	.LC3:
 509 0008 436F7265 		.ascii	"CoreXZ\000"
 509      585A00
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccmv7pul.s 			page 10


 510              		.section	.rodata._ZTV16CoreXZKinematics,"a",%progbits
 511              		.align	2
 512              		.set	.LANCHOR0,. + 0
 513              		.type	_ZTV16CoreXZKinematics, %object
 514              		.size	_ZTV16CoreXZKinematics, 132
 515              	_ZTV16CoreXZKinematics:
 516 0000 00000000 		.word	0
 517 0004 00000000 		.word	0
 518 0008 00000000 		.word	_ZNK16CoreXZKinematics7GetNameEb
 519 000c 00000000 		.word	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 520 0010 00000000 		.word	_ZNK16CoreXZKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 521 0014 00000000 		.word	_ZNK16CoreXZKinematics21MotorStepsToCartesianEPKlPKfjjPf
 522 0018 00000000 		.word	_ZNK16CoreXZKinematics23SupportsAutoCalibrationEv
 523 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 524 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 525 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 526 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 527 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 528 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 529 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 530 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 531 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 532 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 533 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 534 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 535 004c 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef
 536 0050 00000000 		.word	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj
 537 0054 00000000 		.word	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 538 0058 00000000 		.word	_ZNK18CoreBaseKinematics13GetHomingModeEv
 539 005c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 540 0060 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 541 0064 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 542 0068 00000000 		.word	_ZNK16CoreXZKinematics25LimitSpeedAndAccelerationER3DDAPKf
 543 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 544 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 545 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 546 0078 00000000 		.word	_ZN16CoreXZKinematicsD1Ev
 547 007c 00000000 		.word	_ZN16CoreXZKinematicsD0Ev
 548 0080 00000000 		.word	_ZNK16CoreXZKinematics13DriveIsSharedEj
 549              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
