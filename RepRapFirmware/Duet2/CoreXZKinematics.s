ARM GAS  /tmp/ccX020Vc.s 			page 1


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
ARM GAS  /tmp/ccX020Vc.s 			page 2


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
ARM GAS  /tmp/ccX020Vc.s 			page 3


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
ARM GAS  /tmp/ccX020Vc.s 			page 4


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
 220              		.section	.text._ZNK16CoreXZKinematics23SupportsAutoCalibrationEv,"axG",%progbits,_ZNK16CoreXZKinem
 221              		.align	1
 222              		.p2align 2,,3
 223              		.weak	_ZNK16CoreXZKinematics23SupportsAutoCalibrationEv
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv4-sp-d16
 228              		.type	_ZNK16CoreXZKinematics23SupportsAutoCalibrationEv, %function
ARM GAS  /tmp/ccX020Vc.s 			page 5


 229              	_ZNK16CoreXZKinematics23SupportsAutoCalibrationEv:
 230              		@ args = 0, pretend = 0, frame = 0
 231              		@ frame_needed = 0, uses_anonymous_args = 0
 232              		@ link register save eliminated.
 233 0000 0020     		movs	r0, #0
 234 0002 7047     		bx	lr
 235              		.size	_ZNK16CoreXZKinematics23SupportsAutoCalibrationEv, .-_ZNK16CoreXZKinematics23SupportsAutoCal
 236              		.section	.text._ZNK16CoreXZKinematics7GetNameEb,"ax",%progbits
 237              		.align	1
 238              		.p2align 2,,3
 239              		.global	_ZNK16CoreXZKinematics7GetNameEb
 240              		.syntax unified
 241              		.thumb
 242              		.thumb_func
 243              		.fpu fpv4-sp-d16
 244              		.type	_ZNK16CoreXZKinematics7GetNameEb, %function
 245              	_ZNK16CoreXZKinematics7GetNameEb:
 246              		@ args = 0, pretend = 0, frame = 0
 247              		@ frame_needed = 0, uses_anonymous_args = 0
 248              		@ link register save eliminated.
 249 0000 024B     		ldr	r3, .L26
 250 0002 0348     		ldr	r0, .L26+4
 251 0004 0029     		cmp	r1, #0
 252 0006 08BF     		it	eq
 253 0008 1846     		moveq	r0, r3
 254 000a 7047     		bx	lr
 255              	.L27:
 256              		.align	2
 257              	.L26:
 258 000c 08000000 		.word	.LC3
 259 0010 00000000 		.word	.LC2
 260              		.size	_ZNK16CoreXZKinematics7GetNameEb, .-_ZNK16CoreXZKinematics7GetNameEb
 261              		.section	.text._ZNK16CoreXZKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 262              		.align	1
 263              		.p2align 2,,3
 264              		.global	_ZNK16CoreXZKinematics21MotorStepsToCartesianEPKlPKfjjPf
 265              		.syntax unified
 266              		.thumb
 267              		.thumb_func
 268              		.fpu fpv4-sp-d16
 269              		.type	_ZNK16CoreXZKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 270              	_ZNK16CoreXZKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 271              		@ args = 8, pretend = 0, frame = 0
 272              		@ frame_needed = 0, uses_anonymous_args = 0
 273              		@ link register save eliminated.
 274 0000 91ED027A 		vldr.32	s14, [r1, #8]	@ int
 275 0004 D2ED007A 		vldr.32	s15, [r2]
 276 0008 D2ED026A 		vldr.32	s13, [r2, #8]
 277 000c F8EEC75A 		vcvt.f32.s32	s11, s14
 278 0010 91ED007A 		vldr.32	s14, [r1]	@ int
 279 0014 27EEA55A 		vmul.f32	s10, s15, s11
 280 0018 B8EEC76A 		vcvt.f32.s32	s12, s14
 281 001c 90ED107A 		vldr.32	s14, [r0, #64]
 282 0020 A6EE865A 		vfma.f32	s10, s13, s12
 283 0024 10B4     		push	{r4}
 284 0026 67EEA66A 		vmul.f32	s13, s15, s13
 285 002a 37EE077A 		vadd.f32	s14, s14, s14
ARM GAS  /tmp/ccX020Vc.s 			page 6


 286 002e 029C     		ldr	r4, [sp, #8]
 287 0030 D1ED017A 		vldr.32	s15, [r1, #4]	@ int
 288 0034 27EE267A 		vmul.f32	s14, s14, s13
 289 0038 F8EEE77A 		vcvt.f32.s32	s15, s15
 290 003c C5EE074A 		vdiv.f32	s9, s10, s14
 291 0040 032B     		cmp	r3, #3
 292 0042 C4ED004A 		vstr.32	s9, [r4]
 293 0046 92ED015A 		vldr.32	s10, [r2, #4]
 294 004a 87EE857A 		vdiv.f32	s14, s15, s10
 295 004e 84ED017A 		vstr.32	s14, [r4, #4]
 296 0052 92ED007A 		vldr.32	s14, [r2]
 297 0056 92ED025A 		vldr.32	s10, [r2, #8]
 298 005a D0ED127A 		vldr.32	s15, [r0, #72]
 299 005e 27EE657A 		vnmul.f32	s14, s14, s11
 300 0062 77EEA77A 		vadd.f32	s15, s15, s15
 301 0066 A6EE057A 		vfma.f32	s14, s12, s10
 302 006a 67EEA67A 		vmul.f32	s15, s15, s13
 303 006e C7EE276A 		vdiv.f32	s13, s14, s15
 304 0072 C4ED026A 		vstr.32	s13, [r4, #8]
 305 0076 14D9     		bls	.L28
 306 0078 01EB8303 		add	r3, r1, r3, lsl #2
 307 007c 181F     		subs	r0, r3, #4
 308 007e 0831     		adds	r1, r1, #8
 309 0080 0C32     		adds	r2, r2, #12
 310 0082 04F10C03 		add	r3, r4, #12
 311              	.L30:
 312 0086 51F8044F 		ldr	r4, [r1, #4]!
 313 008a F2EC016A 		vldmia.32	r2!, {s13}
 314 008e 07EE904A 		vmov	s15, r4	@ int
 315 0092 F8EEE77A 		vcvt.f32.s32	s15, s15
 316 0096 8142     		cmp	r1, r0
 317 0098 87EEA67A 		vdiv.f32	s14, s15, s13
 318 009c A3EC017A 		vstmia.32	r3!, {s14}
 319 00a0 F1D1     		bne	.L30
 320              	.L28:
 321 00a2 5DF8044B 		ldr	r4, [sp], #4
 322 00a6 7047     		bx	lr
 323              		.size	_ZNK16CoreXZKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK16CoreXZKinematics21MotorSte
 324              		.section	.text._ZNK16CoreXZKinematics13DriveIsSharedEj,"ax",%progbits
 325              		.align	1
 326              		.p2align 2,,3
 327              		.global	_ZNK16CoreXZKinematics13DriveIsSharedEj
 328              		.syntax unified
 329              		.thumb
 330              		.thumb_func
 331              		.fpu fpv4-sp-d16
 332              		.type	_ZNK16CoreXZKinematics13DriveIsSharedEj, %function
 333              	_ZNK16CoreXZKinematics13DriveIsSharedEj:
 334              		@ args = 0, pretend = 0, frame = 0
 335              		@ frame_needed = 0, uses_anonymous_args = 0
 336              		@ link register save eliminated.
 337 0000 31F00203 		bics	r3, r1, #2
 338 0004 0CBF     		ite	eq
 339 0006 0120     		moveq	r0, #1
 340 0008 0020     		movne	r0, #0
 341 000a 7047     		bx	lr
 342              		.size	_ZNK16CoreXZKinematics13DriveIsSharedEj, .-_ZNK16CoreXZKinematics13DriveIsSharedEj
ARM GAS  /tmp/ccX020Vc.s 			page 7


 343              		.section	.text._ZNK16CoreXZKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 344              		.align	1
 345              		.p2align 2,,3
 346              		.global	_ZNK16CoreXZKinematics25LimitSpeedAndAccelerationER3DDAPKf
 347              		.syntax unified
 348              		.thumb
 349              		.thumb_func
 350              		.fpu fpv4-sp-d16
 351              		.type	_ZNK16CoreXZKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 352              	_ZNK16CoreXZKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 353              		@ args = 0, pretend = 0, frame = 0
 354              		@ frame_needed = 0, uses_anonymous_args = 0
 355              		@ link register save eliminated.
 356 0000 7047     		bx	lr
 357              		.size	_ZNK16CoreXZKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK16CoreXZKinematics25LimitS
 358 0002 00BF     		.section	.text._ZN16CoreXZKinematicsD2Ev,"axG",%progbits,_ZN16CoreXZKinematicsD5Ev,comdat
 359              		.align	1
 360              		.p2align 2,,3
 361              		.weak	_ZN16CoreXZKinematicsD2Ev
 362              		.syntax unified
 363              		.thumb
 364              		.thumb_func
 365              		.fpu fpv4-sp-d16
 366              		.type	_ZN16CoreXZKinematicsD2Ev, %function
 367              	_ZN16CoreXZKinematicsD2Ev:
 368              		@ args = 0, pretend = 0, frame = 0
 369              		@ frame_needed = 0, uses_anonymous_args = 0
 370              		@ link register save eliminated.
 371 0000 7047     		bx	lr
 372              		.size	_ZN16CoreXZKinematicsD2Ev, .-_ZN16CoreXZKinematicsD2Ev
 373              		.weak	_ZN16CoreXZKinematicsD1Ev
 374              		.thumb_set _ZN16CoreXZKinematicsD1Ev,_ZN16CoreXZKinematicsD2Ev
 375 0002 00BF     		.section	.text._ZNK16CoreXZKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 376              		.align	1
 377              		.p2align 2,,3
 378              		.global	_ZNK16CoreXZKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 379              		.syntax unified
 380              		.thumb
 381              		.thumb_func
 382              		.fpu fpv4-sp-d16
 383              		.type	_ZNK16CoreXZKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 384              	_ZNK16CoreXZKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 385              		@ args = 12, pretend = 0, frame = 0
 386              		@ frame_needed = 0, uses_anonymous_args = 0
 387 0000 91ED020A 		vldr.32	s0, [r1, #8]
 388 0004 D0ED126A 		vldr.32	s13, [r0, #72]
 389 0008 91ED007A 		vldr.32	s14, [r1]
 390 000c D0ED107A 		vldr.32	s15, [r0, #64]
 391 0010 20EE260A 		vmul.f32	s0, s0, s13
 392 0014 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 393 0018 A7EE270A 		vfma.f32	s0, s14, s15
 394 001c 0C46     		mov	r4, r1
 395 001e 1646     		mov	r6, r2
 396 0020 D2ED007A 		vldr.32	s15, [r2]
 397 0024 079D     		ldr	r5, [sp, #28]
 398 0026 20EE270A 		vmul.f32	s0, s0, s15
 399 002a 1F46     		mov	r7, r3
ARM GAS  /tmp/ccX020Vc.s 			page 8


 400 002c 8046     		mov	r8, r0
 401 002e FFF7FEFF 		bl	lrintf
 402 0032 D6ED017A 		vldr.32	s15, [r6, #4]
 403 0036 94ED010A 		vldr.32	s0, [r4, #4]
 404 003a 2860     		str	r0, [r5]
 405 003c 20EE270A 		vmul.f32	s0, s0, s15
 406 0040 FFF7FEFF 		bl	lrintf
 407 0044 94ED026A 		vldr.32	s12, [r4, #8]
 408 0048 98ED120A 		vldr.32	s0, [r8, #72]
 409 004c D4ED006A 		vldr.32	s13, [r4]
 410 0050 98ED107A 		vldr.32	s14, [r8, #64]
 411 0054 D6ED027A 		vldr.32	s15, [r6, #8]
 412 0058 6860     		str	r0, [r5, #4]
 413 005a 20EE460A 		vnmul.f32	s0, s0, s12
 414 005e A6EE870A 		vfma.f32	s0, s13, s14
 415 0062 20EE270A 		vmul.f32	s0, s0, s15
 416 0066 FFF7FEFF 		bl	lrintf
 417 006a 032F     		cmp	r7, #3
 418 006c A860     		str	r0, [r5, #8]
 419 006e 10D9     		bls	.L37
 420 0070 04EB8707 		add	r7, r4, r7, lsl #2
 421 0074 0C36     		adds	r6, r6, #12
 422 0076 0835     		adds	r5, r5, #8
 423 0078 0C34     		adds	r4, r4, #12
 424              	.L38:
 425 007a B4EC010A 		vldmia.32	r4!, {s0}
 426 007e F6EC017A 		vldmia.32	r6!, {s15}
 427 0082 20EE270A 		vmul.f32	s0, s0, s15
 428 0086 FFF7FEFF 		bl	lrintf
 429 008a BC42     		cmp	r4, r7
 430 008c 45F8040F 		str	r0, [r5, #4]!
 431 0090 F3D1     		bne	.L38
 432              	.L37:
 433 0092 0120     		movs	r0, #1
 434 0094 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 435              		.size	_ZNK16CoreXZKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK16CoreXZKinematics21Cartesi
 436              		.section	.text._ZN16CoreXZKinematicsD0Ev,"axG",%progbits,_ZN16CoreXZKinematicsD5Ev,comdat
 437              		.align	1
 438              		.p2align 2,,3
 439              		.weak	_ZN16CoreXZKinematicsD0Ev
 440              		.syntax unified
 441              		.thumb
 442              		.thumb_func
 443              		.fpu fpv4-sp-d16
 444              		.type	_ZN16CoreXZKinematicsD0Ev, %function
 445              	_ZN16CoreXZKinematicsD0Ev:
 446              		@ args = 0, pretend = 0, frame = 0
 447              		@ frame_needed = 0, uses_anonymous_args = 0
 448 0000 10B5     		push	{r4, lr}
 449 0002 6421     		movs	r1, #100
 450 0004 0446     		mov	r4, r0
 451 0006 FFF7FEFF 		bl	_ZdlPvj
 452 000a 2046     		mov	r0, r4
 453 000c 10BD     		pop	{r4, pc}
 454              		.size	_ZN16CoreXZKinematicsD0Ev, .-_ZN16CoreXZKinematicsD0Ev
 455 000e 00BF     		.section	.text._ZN16CoreXZKinematicsC2Ev,"ax",%progbits
 456              		.align	1
ARM GAS  /tmp/ccX020Vc.s 			page 9


 457              		.p2align 2,,3
 458              		.global	_ZN16CoreXZKinematicsC2Ev
 459              		.syntax unified
 460              		.thumb
 461              		.thumb_func
 462              		.fpu fpv4-sp-d16
 463              		.type	_ZN16CoreXZKinematicsC2Ev, %function
 464              	_ZN16CoreXZKinematicsC2Ev:
 465              		@ args = 0, pretend = 0, frame = 0
 466              		@ frame_needed = 0, uses_anonymous_args = 0
 467 0000 10B5     		push	{r4, lr}
 468 0002 0221     		movs	r1, #2
 469 0004 0446     		mov	r4, r0
 470 0006 FFF7FEFF 		bl	_ZN18CoreBaseKinematicsC2E14KinematicsType
 471 000a 024B     		ldr	r3, .L45
 472 000c 2360     		str	r3, [r4]
 473 000e 2046     		mov	r0, r4
 474 0010 10BD     		pop	{r4, pc}
 475              	.L46:
 476 0012 00BF     		.align	2
 477              	.L45:
 478 0014 08000000 		.word	.LANCHOR0+8
 479              		.size	_ZN16CoreXZKinematicsC2Ev, .-_ZN16CoreXZKinematicsC2Ev
 480              		.global	_ZN16CoreXZKinematicsC1Ev
 481              		.thumb_set _ZN16CoreXZKinematicsC1Ev,_ZN16CoreXZKinematicsC2Ev
 482              		.global	_ZTV16CoreXZKinematics
 483              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 484              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 485              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 486              	_ZL28cpu_irq_prev_interrupt_state:
 487 0000 00       		.space	1
 488              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 489              		.align	2
 490              		.type	_ZL32cpu_irq_critical_section_counter, %object
 491              		.size	_ZL32cpu_irq_critical_section_counter, 4
 492              	_ZL32cpu_irq_critical_section_counter:
 493 0000 00000000 		.space	4
 494              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 495              		.align	2
 496              	.LC1:
 497 0000 58595A00 		.ascii	"XYZ\000"
 498              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 499              		.align	2
 500              	.LC0:
 501 0000 58595A55 		.ascii	"XYZUVWABC\000"
 501      56574142 
 501      4300
 502              		.section	.rodata._ZNK16CoreXZKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 503              		.align	2
 504              	.LC2:
 505 0000 636F7265 		.ascii	"coreXZ\000"
 505      585A00
 506 0007 00       		.space	1
 507              	.LC3:
 508 0008 436F7265 		.ascii	"CoreXZ\000"
 508      585A00
 509              		.section	.rodata._ZTV16CoreXZKinematics,"a",%progbits
ARM GAS  /tmp/ccX020Vc.s 			page 10


 510              		.align	2
 511              		.set	.LANCHOR0,. + 0
 512              		.type	_ZTV16CoreXZKinematics, %object
 513              		.size	_ZTV16CoreXZKinematics, 132
 514              	_ZTV16CoreXZKinematics:
 515 0000 00000000 		.word	0
 516 0004 00000000 		.word	0
 517 0008 00000000 		.word	_ZNK16CoreXZKinematics7GetNameEb
 518 000c 00000000 		.word	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 519 0010 00000000 		.word	_ZNK16CoreXZKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 520 0014 00000000 		.word	_ZNK16CoreXZKinematics21MotorStepsToCartesianEPKlPKfjjPf
 521 0018 00000000 		.word	_ZNK16CoreXZKinematics23SupportsAutoCalibrationEv
 522 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 523 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 524 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 525 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 526 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 527 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 528 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 529 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 530 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 531 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 532 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 533 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 534 004c 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRm
 535 0050 00000000 		.word	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj
 536 0054 00000000 		.word	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 537 0058 00000000 		.word	_ZNK18CoreBaseKinematics13GetHomingModeEv
 538 005c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 539 0060 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 540 0064 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 541 0068 00000000 		.word	_ZNK16CoreXZKinematics25LimitSpeedAndAccelerationER3DDAPKf
 542 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 543 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 544 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 545 0078 00000000 		.word	_ZN16CoreXZKinematicsD1Ev
 546 007c 00000000 		.word	_ZN16CoreXZKinematicsD0Ev
 547 0080 00000000 		.word	_ZNK16CoreXZKinematics13DriveIsSharedEj
 548              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
