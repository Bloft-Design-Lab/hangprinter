ARM GAS  /tmp/ccyQeRdQ.s 			page 1


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
  13              		.file	"CoreXYKinematics.cpp"
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
ARM GAS  /tmp/ccyQeRdQ.s 			page 2


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
ARM GAS  /tmp/ccyQeRdQ.s 			page 3


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
ARM GAS  /tmp/ccyQeRdQ.s 			page 4


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
 220              		.section	.text._ZNK16CoreXYKinematics7GetNameEb,"ax",%progbits
 221              		.align	1
 222              		.p2align 2,,3
 223              		.global	_ZNK16CoreXYKinematics7GetNameEb
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv4-sp-d16
 228              		.type	_ZNK16CoreXYKinematics7GetNameEb, %function
ARM GAS  /tmp/ccyQeRdQ.s 			page 5


 229              	_ZNK16CoreXYKinematics7GetNameEb:
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
 242 000c 08000000 		.word	.LC3
 243 0010 00000000 		.word	.LC2
 244              		.size	_ZNK16CoreXYKinematics7GetNameEb, .-_ZNK16CoreXYKinematics7GetNameEb
 245              		.section	.text._ZNK16CoreXYKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	_ZNK16CoreXYKinematics21MotorStepsToCartesianEPKlPKfjjPf
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu fpv4-sp-d16
 253              		.type	_ZNK16CoreXYKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 254              	_ZNK16CoreXYKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 255              		@ args = 8, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257              		@ link register save eliminated.
 258 0000 91ED017A 		vldr.32	s14, [r1, #4]	@ int
 259 0004 D2ED007A 		vldr.32	s15, [r2]
 260 0008 D2ED016A 		vldr.32	s13, [r2, #4]
 261 000c F8EEC75A 		vcvt.f32.s32	s11, s14
 262 0010 91ED007A 		vldr.32	s14, [r1]	@ int
 263 0014 67EEA54A 		vmul.f32	s9, s15, s11
 264 0018 B8EEC76A 		vcvt.f32.s32	s12, s14
 265 001c 90ED107A 		vldr.32	s14, [r0, #64]
 266 0020 E6EE864A 		vfma.f32	s9, s13, s12
 267 0024 10B4     		push	{r4}
 268 0026 67EEA66A 		vmul.f32	s13, s15, s13
 269 002a 37EE077A 		vadd.f32	s14, s14, s14
 270 002e D1ED027A 		vldr.32	s15, [r1, #8]	@ int
 271 0032 029C     		ldr	r4, [sp, #8]
 272 0034 27EE267A 		vmul.f32	s14, s14, s13
 273 0038 B8EEE75A 		vcvt.f32.s32	s10, s15
 274 003c C4EE877A 		vdiv.f32	s15, s9, s14
 275 0040 032B     		cmp	r3, #3
 276 0042 C4ED007A 		vstr.32	s15, [r4]
 277 0046 92ED007A 		vldr.32	s14, [r2]
 278 004a D2ED014A 		vldr.32	s9, [r2, #4]
 279 004e D0ED117A 		vldr.32	s15, [r0, #68]
 280 0052 27EE657A 		vnmul.f32	s14, s14, s11
 281 0056 77EEA77A 		vadd.f32	s15, s15, s15
 282 005a A6EE247A 		vfma.f32	s14, s12, s9
 283 005e 67EEA67A 		vmul.f32	s15, s15, s13
 284 0062 C7EE276A 		vdiv.f32	s13, s14, s15
 285 0066 C4ED016A 		vstr.32	s13, [r4, #4]
ARM GAS  /tmp/ccyQeRdQ.s 			page 6


 286 006a 92ED027A 		vldr.32	s14, [r2, #8]
 287 006e C5EE077A 		vdiv.f32	s15, s10, s14
 288 0072 C4ED027A 		vstr.32	s15, [r4, #8]
 289 0076 14D9     		bls	.L27
 290 0078 01EB8303 		add	r3, r1, r3, lsl #2
 291 007c 181F     		subs	r0, r3, #4
 292 007e 0831     		adds	r1, r1, #8
 293 0080 0C32     		adds	r2, r2, #12
 294 0082 04F10C03 		add	r3, r4, #12
 295              	.L29:
 296 0086 51F8044F 		ldr	r4, [r1, #4]!
 297 008a F2EC016A 		vldmia.32	r2!, {s13}
 298 008e 07EE904A 		vmov	s15, r4	@ int
 299 0092 F8EEE77A 		vcvt.f32.s32	s15, s15
 300 0096 8142     		cmp	r1, r0
 301 0098 87EEA67A 		vdiv.f32	s14, s15, s13
 302 009c A3EC017A 		vstmia.32	r3!, {s14}
 303 00a0 F1D1     		bne	.L29
 304              	.L27:
 305 00a2 5DF8044B 		ldr	r4, [sp], #4
 306 00a6 7047     		bx	lr
 307              		.size	_ZNK16CoreXYKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK16CoreXYKinematics21MotorSte
 308              		.section	.text._ZNK16CoreXYKinematics13DriveIsSharedEj,"ax",%progbits
 309              		.align	1
 310              		.p2align 2,,3
 311              		.global	_ZNK16CoreXYKinematics13DriveIsSharedEj
 312              		.syntax unified
 313              		.thumb
 314              		.thumb_func
 315              		.fpu fpv4-sp-d16
 316              		.type	_ZNK16CoreXYKinematics13DriveIsSharedEj, %function
 317              	_ZNK16CoreXYKinematics13DriveIsSharedEj:
 318              		@ args = 0, pretend = 0, frame = 0
 319              		@ frame_needed = 0, uses_anonymous_args = 0
 320              		@ link register save eliminated.
 321 0000 0129     		cmp	r1, #1
 322 0002 8CBF     		ite	hi
 323 0004 0020     		movhi	r0, #0
 324 0006 0120     		movls	r0, #1
 325 0008 7047     		bx	lr
 326              		.size	_ZNK16CoreXYKinematics13DriveIsSharedEj, .-_ZNK16CoreXYKinematics13DriveIsSharedEj
 327 000a 00BF     		.section	.text._ZN16CoreXYKinematicsD2Ev,"axG",%progbits,_ZN16CoreXYKinematicsD5Ev,comdat
 328              		.align	1
 329              		.p2align 2,,3
 330              		.weak	_ZN16CoreXYKinematicsD2Ev
 331              		.syntax unified
 332              		.thumb
 333              		.thumb_func
 334              		.fpu fpv4-sp-d16
 335              		.type	_ZN16CoreXYKinematicsD2Ev, %function
 336              	_ZN16CoreXYKinematicsD2Ev:
 337              		@ args = 0, pretend = 0, frame = 0
 338              		@ frame_needed = 0, uses_anonymous_args = 0
 339              		@ link register save eliminated.
 340 0000 7047     		bx	lr
 341              		.size	_ZN16CoreXYKinematicsD2Ev, .-_ZN16CoreXYKinematicsD2Ev
 342              		.weak	_ZN16CoreXYKinematicsD1Ev
ARM GAS  /tmp/ccyQeRdQ.s 			page 7


 343              		.thumb_set _ZN16CoreXYKinematicsD1Ev,_ZN16CoreXYKinematicsD2Ev
 344 0002 00BF     		.section	.text._ZNK16CoreXYKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 345              		.align	1
 346              		.p2align 2,,3
 347              		.global	_ZNK16CoreXYKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 348              		.syntax unified
 349              		.thumb
 350              		.thumb_func
 351              		.fpu fpv4-sp-d16
 352              		.type	_ZNK16CoreXYKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 353              	_ZNK16CoreXYKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 354              		@ args = 12, pretend = 0, frame = 0
 355              		@ frame_needed = 0, uses_anonymous_args = 0
 356 0000 91ED010A 		vldr.32	s0, [r1, #4]
 357 0004 D0ED116A 		vldr.32	s13, [r0, #68]
 358 0008 91ED007A 		vldr.32	s14, [r1]
 359 000c D0ED107A 		vldr.32	s15, [r0, #64]
 360 0010 20EE260A 		vmul.f32	s0, s0, s13
 361 0014 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 362 0018 A7EE270A 		vfma.f32	s0, s14, s15
 363 001c 0C46     		mov	r4, r1
 364 001e 8046     		mov	r8, r0
 365 0020 D2ED007A 		vldr.32	s15, [r2]
 366 0024 079D     		ldr	r5, [sp, #28]
 367 0026 20EE270A 		vmul.f32	s0, s0, s15
 368 002a 1646     		mov	r6, r2
 369 002c 1F46     		mov	r7, r3
 370 002e FFF7FEFF 		bl	lrintf
 371 0032 94ED016A 		vldr.32	s12, [r4, #4]
 372 0036 98ED110A 		vldr.32	s0, [r8, #68]
 373 003a D4ED006A 		vldr.32	s13, [r4]
 374 003e 98ED107A 		vldr.32	s14, [r8, #64]
 375 0042 D6ED017A 		vldr.32	s15, [r6, #4]
 376 0046 2860     		str	r0, [r5]
 377 0048 20EE460A 		vnmul.f32	s0, s0, s12
 378 004c A6EE870A 		vfma.f32	s0, s13, s14
 379 0050 20EE270A 		vmul.f32	s0, s0, s15
 380 0054 FFF7FEFF 		bl	lrintf
 381 0058 022F     		cmp	r7, #2
 382 005a 6860     		str	r0, [r5, #4]
 383 005c 10D9     		bls	.L35
 384 005e 04EB8707 		add	r7, r4, r7, lsl #2
 385 0062 0836     		adds	r6, r6, #8
 386 0064 0435     		adds	r5, r5, #4
 387 0066 0834     		adds	r4, r4, #8
 388              	.L36:
 389 0068 B4EC010A 		vldmia.32	r4!, {s0}
 390 006c F6EC017A 		vldmia.32	r6!, {s15}
 391 0070 20EE270A 		vmul.f32	s0, s0, s15
 392 0074 FFF7FEFF 		bl	lrintf
 393 0078 BC42     		cmp	r4, r7
 394 007a 45F8040F 		str	r0, [r5, #4]!
 395 007e F3D1     		bne	.L36
 396              	.L35:
 397 0080 0120     		movs	r0, #1
 398 0082 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 399              		.size	_ZNK16CoreXYKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK16CoreXYKinematics21Cartesi
ARM GAS  /tmp/ccyQeRdQ.s 			page 8


 400 0086 00BF     		.section	.text._ZNK16CoreXYKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 401              		.align	1
 402              		.p2align 2,,3
 403              		.global	_ZNK16CoreXYKinematics25LimitSpeedAndAccelerationER3DDAPKf
 404              		.syntax unified
 405              		.thumb
 406              		.thumb_func
 407              		.fpu fpv4-sp-d16
 408              		.type	_ZNK16CoreXYKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 409              	_ZNK16CoreXYKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 410              		@ args = 0, pretend = 0, frame = 0
 411              		@ frame_needed = 0, uses_anonymous_args = 0
 412              		@ link register save eliminated.
 413 0000 D2ED006A 		vldr.32	s13, [r2]
 414 0004 92ED017A 		vldr.32	s14, [r2, #4]
 415 0008 76EE877A 		vadd.f32	s15, s13, s14
 416 000c 36EEC76A 		vsub.f32	s12, s13, s14
 417 0010 F0EEE77A 		vabs.f32	s15, s15
 418 0014 F4EE677A 		vcmp.f32	s15, s15
 419 0018 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 420 001c B0EEC66A 		vabs.f32	s12, s12
 421 0020 06D6     		bvs	.L40
 422 0022 F4EEC67A 		vcmpe.f32	s15, s12
 423 0026 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 424 002a D8BF     		it	le
 425 002c F0EE467A 		vmovle.f32	s15, s12
 426              	.L40:
 427 0030 9FED196A 		vldr.32	s12, .L46
 428 0034 F4EEC67A 		vcmpe.f32	s15, s12
 429 0038 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 430 003c 00DC     		bgt	.L45
 431 003e 7047     		bx	lr
 432              	.L45:
 433 0040 164B     		ldr	r3, .L46+4
 434 0042 1B68     		ldr	r3, [r3]	@ unaligned
 435 0044 93ED5C6A 		vldr.32	s12, [r3, #368]
 436 0048 D3ED504A 		vldr.32	s9, [r3, #320]
 437 004c 93ED5D5A 		vldr.32	s10, [r3, #372]
 438 0050 D3ED515A 		vldr.32	s11, [r3, #324]
 439 0054 B0EEC77A 		vabs.f32	s14, s14
 440 0058 66EE070A 		vmul.f32	s1, s12, s14
 441 005c 24EE870A 		vmul.f32	s0, s9, s14
 442 0060 F0EEE66A 		vabs.f32	s13, s13
 443 0064 36EE877A 		vadd.f32	s14, s13, s14
 444 0068 E5EE260A 		vfma.f32	s1, s10, s13
 445 006c 0846     		mov	r0, r1
 446 006e A5EEA60A 		vfma.f32	s0, s11, s13
 447 0072 27EE066A 		vmul.f32	s12, s14, s12
 448 0076 27EE247A 		vmul.f32	s14, s14, s9
 449 007a 60EEA70A 		vmul.f32	s1, s1, s15
 450 007e 26EE056A 		vmul.f32	s12, s12, s10
 451 0082 20EE270A 		vmul.f32	s0, s0, s15
 452 0086 27EE257A 		vmul.f32	s14, s14, s11
 453 008a C6EE200A 		vdiv.f32	s1, s12, s1
 454 008e 87EE000A 		vdiv.f32	s0, s14, s0
 455 0092 FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 456              	.L47:
ARM GAS  /tmp/ccyQeRdQ.s 			page 9


 457 0096 00BF     		.align	2
 458              	.L46:
 459 0098 0AD7233C 		.word	1008981770
 460 009c 00000000 		.word	reprap
 461              		.size	_ZNK16CoreXYKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK16CoreXYKinematics25LimitS
 462              		.section	.text._ZN16CoreXYKinematicsD0Ev,"axG",%progbits,_ZN16CoreXYKinematicsD5Ev,comdat
 463              		.align	1
 464              		.p2align 2,,3
 465              		.weak	_ZN16CoreXYKinematicsD0Ev
 466              		.syntax unified
 467              		.thumb
 468              		.thumb_func
 469              		.fpu fpv4-sp-d16
 470              		.type	_ZN16CoreXYKinematicsD0Ev, %function
 471              	_ZN16CoreXYKinematicsD0Ev:
 472              		@ args = 0, pretend = 0, frame = 0
 473              		@ frame_needed = 0, uses_anonymous_args = 0
 474 0000 10B5     		push	{r4, lr}
 475 0002 6421     		movs	r1, #100
 476 0004 0446     		mov	r4, r0
 477 0006 FFF7FEFF 		bl	_ZdlPvj
 478 000a 2046     		mov	r0, r4
 479 000c 10BD     		pop	{r4, pc}
 480              		.size	_ZN16CoreXYKinematicsD0Ev, .-_ZN16CoreXYKinematicsD0Ev
 481 000e 00BF     		.section	.text._ZN16CoreXYKinematicsC2Ev,"ax",%progbits
 482              		.align	1
 483              		.p2align 2,,3
 484              		.global	_ZN16CoreXYKinematicsC2Ev
 485              		.syntax unified
 486              		.thumb
 487              		.thumb_func
 488              		.fpu fpv4-sp-d16
 489              		.type	_ZN16CoreXYKinematicsC2Ev, %function
 490              	_ZN16CoreXYKinematicsC2Ev:
 491              		@ args = 0, pretend = 0, frame = 0
 492              		@ frame_needed = 0, uses_anonymous_args = 0
 493 0000 10B5     		push	{r4, lr}
 494 0002 0121     		movs	r1, #1
 495 0004 0446     		mov	r4, r0
 496 0006 FFF7FEFF 		bl	_ZN18CoreBaseKinematicsC2E14KinematicsType
 497 000a 024B     		ldr	r3, .L52
 498 000c 2360     		str	r3, [r4]
 499 000e 2046     		mov	r0, r4
 500 0010 10BD     		pop	{r4, pc}
 501              	.L53:
 502 0012 00BF     		.align	2
 503              	.L52:
 504 0014 08000000 		.word	.LANCHOR0+8
 505              		.size	_ZN16CoreXYKinematicsC2Ev, .-_ZN16CoreXYKinematicsC2Ev
 506              		.global	_ZN16CoreXYKinematicsC1Ev
 507              		.thumb_set _ZN16CoreXYKinematicsC1Ev,_ZN16CoreXYKinematicsC2Ev
 508              		.global	_ZTV16CoreXYKinematics
 509              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 510              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 511              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 512              	_ZL28cpu_irq_prev_interrupt_state:
 513 0000 00       		.space	1
ARM GAS  /tmp/ccyQeRdQ.s 			page 10


 514              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 515              		.align	2
 516              		.type	_ZL32cpu_irq_critical_section_counter, %object
 517              		.size	_ZL32cpu_irq_critical_section_counter, 4
 518              	_ZL32cpu_irq_critical_section_counter:
 519 0000 00000000 		.space	4
 520              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 521              		.align	2
 522              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 523              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 524              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 525 0000 00000000 		.space	4
 526              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 527              		.align	2
 528              	.LC1:
 529 0000 58595A00 		.ascii	"XYZ\000"
 530              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 531              		.align	2
 532              	.LC0:
 533 0000 58595A55 		.ascii	"XYZUVWABC\000"
 533      56574142 
 533      4300
 534              		.section	.rodata._ZNK16CoreXYKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 535              		.align	2
 536              	.LC2:
 537 0000 636F7265 		.ascii	"coreXY\000"
 537      585900
 538 0007 00       		.space	1
 539              	.LC3:
 540 0008 436F7265 		.ascii	"CoreXY\000"
 540      585900
 541              		.section	.rodata._ZTV16CoreXYKinematics,"a",%progbits
 542              		.align	2
 543              		.set	.LANCHOR0,. + 0
 544              		.type	_ZTV16CoreXYKinematics, %object
 545              		.size	_ZTV16CoreXYKinematics, 132
 546              	_ZTV16CoreXYKinematics:
 547 0000 00000000 		.word	0
 548 0004 00000000 		.word	0
 549 0008 00000000 		.word	_ZNK16CoreXYKinematics7GetNameEb
 550 000c 00000000 		.word	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 551 0010 00000000 		.word	_ZNK16CoreXYKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 552 0014 00000000 		.word	_ZNK16CoreXYKinematics21MotorStepsToCartesianEPKlPKfjjPf
 553 0018 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 554 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 555 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 556 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 557 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 558 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 559 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 560 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 561 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 562 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 563 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 564 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 565 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 566 004c 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRm
ARM GAS  /tmp/ccyQeRdQ.s 			page 11


 567 0050 00000000 		.word	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj
 568 0054 00000000 		.word	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 569 0058 00000000 		.word	_ZNK18CoreBaseKinematics13GetHomingModeEv
 570 005c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 571 0060 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 572 0064 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 573 0068 00000000 		.word	_ZNK16CoreXYKinematics25LimitSpeedAndAccelerationER3DDAPKf
 574 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 575 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 576 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 577 0078 00000000 		.word	_ZN16CoreXYKinematicsD1Ev
 578 007c 00000000 		.word	_ZN16CoreXYKinematicsD0Ev
 579 0080 00000000 		.word	_ZNK16CoreXYKinematics13DriveIsSharedEj
 580              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
