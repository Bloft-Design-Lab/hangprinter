ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccPIdu0Y.s 			page 1


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccPIdu0Y.s 			page 2


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccPIdu0Y.s 			page 3


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccPIdu0Y.s 			page 4


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
 221              		.section	.text._ZNK16CoreXYKinematics7GetNameEb,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	_ZNK16CoreXYKinematics7GetNameEb
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccPIdu0Y.s 			page 5


 229              		.type	_ZNK16CoreXYKinematics7GetNameEb, %function
 230              	_ZNK16CoreXYKinematics7GetNameEb:
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
 243 000c 08000000 		.word	.LC3
 244 0010 00000000 		.word	.LC2
 245              		.size	_ZNK16CoreXYKinematics7GetNameEb, .-_ZNK16CoreXYKinematics7GetNameEb
 246              		.section	.text._ZNK16CoreXYKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 247              		.align	1
 248              		.p2align 2,,3
 249              		.global	_ZNK16CoreXYKinematics21MotorStepsToCartesianEPKlPKfjjPf
 250              		.syntax unified
 251              		.thumb
 252              		.thumb_func
 253              		.fpu fpv4-sp-d16
 254              		.type	_ZNK16CoreXYKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 255              	_ZNK16CoreXYKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 256              		@ args = 8, pretend = 0, frame = 0
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258              		@ link register save eliminated.
 259 0000 91ED017A 		vldr.32	s14, [r1, #4]	@ int
 260 0004 D2ED007A 		vldr.32	s15, [r2]
 261 0008 D2ED016A 		vldr.32	s13, [r2, #4]
 262 000c F8EEC75A 		vcvt.f32.s32	s11, s14
 263 0010 91ED007A 		vldr.32	s14, [r1]	@ int
 264 0014 67EEA54A 		vmul.f32	s9, s15, s11
 265 0018 B8EEC76A 		vcvt.f32.s32	s12, s14
 266 001c 90ED187A 		vldr.32	s14, [r0, #96]
 267 0020 E6EE864A 		vfma.f32	s9, s13, s12
 268 0024 10B4     		push	{r4}
 269 0026 67EEA66A 		vmul.f32	s13, s15, s13
 270 002a 37EE077A 		vadd.f32	s14, s14, s14
 271 002e D1ED027A 		vldr.32	s15, [r1, #8]	@ int
 272 0032 029C     		ldr	r4, [sp, #8]
 273 0034 27EE267A 		vmul.f32	s14, s14, s13
 274 0038 B8EEE75A 		vcvt.f32.s32	s10, s15
 275 003c C4EE877A 		vdiv.f32	s15, s9, s14
 276 0040 032B     		cmp	r3, #3
 277 0042 C4ED007A 		vstr.32	s15, [r4]
 278 0046 92ED007A 		vldr.32	s14, [r2]
 279 004a D2ED014A 		vldr.32	s9, [r2, #4]
 280 004e D0ED197A 		vldr.32	s15, [r0, #100]
 281 0052 27EE657A 		vnmul.f32	s14, s14, s11
 282 0056 77EEA77A 		vadd.f32	s15, s15, s15
 283 005a A6EE247A 		vfma.f32	s14, s12, s9
 284 005e 67EEA67A 		vmul.f32	s15, s15, s13
 285 0062 C7EE276A 		vdiv.f32	s13, s14, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccPIdu0Y.s 			page 6


 286 0066 C4ED016A 		vstr.32	s13, [r4, #4]
 287 006a 92ED027A 		vldr.32	s14, [r2, #8]
 288 006e C5EE077A 		vdiv.f32	s15, s10, s14
 289 0072 C4ED027A 		vstr.32	s15, [r4, #8]
 290 0076 14D9     		bls	.L27
 291 0078 01EB8303 		add	r3, r1, r3, lsl #2
 292 007c 181F     		subs	r0, r3, #4
 293 007e 0831     		adds	r1, r1, #8
 294 0080 0C32     		adds	r2, r2, #12
 295 0082 04F10C03 		add	r3, r4, #12
 296              	.L29:
 297 0086 51F8044F 		ldr	r4, [r1, #4]!
 298 008a F2EC016A 		vldmia.32	r2!, {s13}
 299 008e 07EE904A 		vmov	s15, r4	@ int
 300 0092 F8EEE77A 		vcvt.f32.s32	s15, s15
 301 0096 8142     		cmp	r1, r0
 302 0098 87EEA67A 		vdiv.f32	s14, s15, s13
 303 009c A3EC017A 		vstmia.32	r3!, {s14}
 304 00a0 F1D1     		bne	.L29
 305              	.L27:
 306 00a2 5DF8044B 		ldr	r4, [sp], #4
 307 00a6 7047     		bx	lr
 308              		.size	_ZNK16CoreXYKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK16CoreXYKinematics21MotorSte
 309              		.section	.text._ZNK16CoreXYKinematics13DriveIsSharedEj,"ax",%progbits
 310              		.align	1
 311              		.p2align 2,,3
 312              		.global	_ZNK16CoreXYKinematics13DriveIsSharedEj
 313              		.syntax unified
 314              		.thumb
 315              		.thumb_func
 316              		.fpu fpv4-sp-d16
 317              		.type	_ZNK16CoreXYKinematics13DriveIsSharedEj, %function
 318              	_ZNK16CoreXYKinematics13DriveIsSharedEj:
 319              		@ args = 0, pretend = 0, frame = 0
 320              		@ frame_needed = 0, uses_anonymous_args = 0
 321              		@ link register save eliminated.
 322 0000 0129     		cmp	r1, #1
 323 0002 8CBF     		ite	hi
 324 0004 0020     		movhi	r0, #0
 325 0006 0120     		movls	r0, #1
 326 0008 7047     		bx	lr
 327              		.size	_ZNK16CoreXYKinematics13DriveIsSharedEj, .-_ZNK16CoreXYKinematics13DriveIsSharedEj
 328 000a 00BF     		.section	.text._ZN16CoreXYKinematicsD2Ev,"axG",%progbits,_ZN16CoreXYKinematicsD5Ev,comdat
 329              		.align	1
 330              		.p2align 2,,3
 331              		.weak	_ZN16CoreXYKinematicsD2Ev
 332              		.syntax unified
 333              		.thumb
 334              		.thumb_func
 335              		.fpu fpv4-sp-d16
 336              		.type	_ZN16CoreXYKinematicsD2Ev, %function
 337              	_ZN16CoreXYKinematicsD2Ev:
 338              		@ args = 0, pretend = 0, frame = 0
 339              		@ frame_needed = 0, uses_anonymous_args = 0
 340              		@ link register save eliminated.
 341 0000 7047     		bx	lr
 342              		.size	_ZN16CoreXYKinematicsD2Ev, .-_ZN16CoreXYKinematicsD2Ev
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccPIdu0Y.s 			page 7


 343              		.weak	_ZN16CoreXYKinematicsD1Ev
 344              		.thumb_set _ZN16CoreXYKinematicsD1Ev,_ZN16CoreXYKinematicsD2Ev
 345 0002 00BF     		.section	.text._ZNK16CoreXYKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 346              		.align	1
 347              		.p2align 2,,3
 348              		.global	_ZNK16CoreXYKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 349              		.syntax unified
 350              		.thumb
 351              		.thumb_func
 352              		.fpu fpv4-sp-d16
 353              		.type	_ZNK16CoreXYKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 354              	_ZNK16CoreXYKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 355              		@ args = 12, pretend = 0, frame = 0
 356              		@ frame_needed = 0, uses_anonymous_args = 0
 357 0000 91ED010A 		vldr.32	s0, [r1, #4]
 358 0004 D0ED196A 		vldr.32	s13, [r0, #100]
 359 0008 91ED007A 		vldr.32	s14, [r1]
 360 000c D0ED187A 		vldr.32	s15, [r0, #96]
 361 0010 20EE260A 		vmul.f32	s0, s0, s13
 362 0014 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 363 0018 A7EE270A 		vfma.f32	s0, s14, s15
 364 001c 0C46     		mov	r4, r1
 365 001e 8046     		mov	r8, r0
 366 0020 D2ED007A 		vldr.32	s15, [r2]
 367 0024 079D     		ldr	r5, [sp, #28]
 368 0026 20EE270A 		vmul.f32	s0, s0, s15
 369 002a 1646     		mov	r6, r2
 370 002c 1F46     		mov	r7, r3
 371 002e FFF7FEFF 		bl	lrintf
 372 0032 94ED016A 		vldr.32	s12, [r4, #4]
 373 0036 98ED190A 		vldr.32	s0, [r8, #100]
 374 003a D4ED006A 		vldr.32	s13, [r4]
 375 003e 98ED187A 		vldr.32	s14, [r8, #96]
 376 0042 D6ED017A 		vldr.32	s15, [r6, #4]
 377 0046 2860     		str	r0, [r5]
 378 0048 20EE460A 		vnmul.f32	s0, s0, s12
 379 004c A6EE870A 		vfma.f32	s0, s13, s14
 380 0050 20EE270A 		vmul.f32	s0, s0, s15
 381 0054 FFF7FEFF 		bl	lrintf
 382 0058 022F     		cmp	r7, #2
 383 005a 6860     		str	r0, [r5, #4]
 384 005c 10D9     		bls	.L35
 385 005e 04EB8707 		add	r7, r4, r7, lsl #2
 386 0062 0836     		adds	r6, r6, #8
 387 0064 0435     		adds	r5, r5, #4
 388 0066 0834     		adds	r4, r4, #8
 389              	.L36:
 390 0068 B4EC010A 		vldmia.32	r4!, {s0}
 391 006c F6EC017A 		vldmia.32	r6!, {s15}
 392 0070 20EE270A 		vmul.f32	s0, s0, s15
 393 0074 FFF7FEFF 		bl	lrintf
 394 0078 BC42     		cmp	r4, r7
 395 007a 45F8040F 		str	r0, [r5, #4]!
 396 007e F3D1     		bne	.L36
 397              	.L35:
 398 0080 0120     		movs	r0, #1
 399 0082 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccPIdu0Y.s 			page 8


 400              		.size	_ZNK16CoreXYKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK16CoreXYKinematics21Cartesi
 401 0086 00BF     		.section	.text._ZNK16CoreXYKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 402              		.align	1
 403              		.p2align 2,,3
 404              		.global	_ZNK16CoreXYKinematics25LimitSpeedAndAccelerationER3DDAPKf
 405              		.syntax unified
 406              		.thumb
 407              		.thumb_func
 408              		.fpu fpv4-sp-d16
 409              		.type	_ZNK16CoreXYKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 410              	_ZNK16CoreXYKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 411              		@ args = 0, pretend = 0, frame = 0
 412              		@ frame_needed = 0, uses_anonymous_args = 0
 413              		@ link register save eliminated.
 414 0000 D2ED006A 		vldr.32	s13, [r2]
 415 0004 92ED017A 		vldr.32	s14, [r2, #4]
 416 0008 76EE877A 		vadd.f32	s15, s13, s14
 417 000c 36EEC76A 		vsub.f32	s12, s13, s14
 418 0010 F0EEE77A 		vabs.f32	s15, s15
 419 0014 F4EE677A 		vcmp.f32	s15, s15
 420 0018 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 421 001c B0EEC66A 		vabs.f32	s12, s12
 422 0020 06D6     		bvs	.L40
 423 0022 F4EEC67A 		vcmpe.f32	s15, s12
 424 0026 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 425 002a D8BF     		it	le
 426 002c F0EE467A 		vmovle.f32	s15, s12
 427              	.L40:
 428 0030 9FED196A 		vldr.32	s12, .L46
 429 0034 F4EEC67A 		vcmpe.f32	s15, s12
 430 0038 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 431 003c 00DC     		bgt	.L45
 432 003e 7047     		bx	lr
 433              	.L45:
 434 0040 164B     		ldr	r3, .L46+4
 435 0042 5B68     		ldr	r3, [r3, #4]	@ unaligned
 436 0044 93ED6B6A 		vldr.32	s12, [r3, #428]
 437 0048 D3ED5F4A 		vldr.32	s9, [r3, #380]
 438 004c 93ED6C5A 		vldr.32	s10, [r3, #432]
 439 0050 D3ED605A 		vldr.32	s11, [r3, #384]
 440 0054 B0EEC77A 		vabs.f32	s14, s14
 441 0058 67EE060A 		vmul.f32	s1, s14, s12
 442 005c 27EE240A 		vmul.f32	s0, s14, s9
 443 0060 F0EEE66A 		vabs.f32	s13, s13
 444 0064 36EE877A 		vadd.f32	s14, s13, s14
 445 0068 E6EE850A 		vfma.f32	s1, s13, s10
 446 006c 0846     		mov	r0, r1
 447 006e A6EEA50A 		vfma.f32	s0, s13, s11
 448 0072 27EE066A 		vmul.f32	s12, s14, s12
 449 0076 27EE247A 		vmul.f32	s14, s14, s9
 450 007a 60EEA70A 		vmul.f32	s1, s1, s15
 451 007e 26EE056A 		vmul.f32	s12, s12, s10
 452 0082 20EE270A 		vmul.f32	s0, s0, s15
 453 0086 27EE257A 		vmul.f32	s14, s14, s11
 454 008a C6EE200A 		vdiv.f32	s1, s12, s1
 455 008e 87EE000A 		vdiv.f32	s0, s14, s0
 456 0092 FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccPIdu0Y.s 			page 9


 457              	.L47:
 458 0096 00BF     		.align	2
 459              	.L46:
 460 0098 0AD7233C 		.word	1008981770
 461 009c 00000000 		.word	reprap
 462              		.size	_ZNK16CoreXYKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK16CoreXYKinematics25LimitS
 463              		.section	.text._ZN16CoreXYKinematicsD0Ev,"axG",%progbits,_ZN16CoreXYKinematicsD5Ev,comdat
 464              		.align	1
 465              		.p2align 2,,3
 466              		.weak	_ZN16CoreXYKinematicsD0Ev
 467              		.syntax unified
 468              		.thumb
 469              		.thumb_func
 470              		.fpu fpv4-sp-d16
 471              		.type	_ZN16CoreXYKinematicsD0Ev, %function
 472              	_ZN16CoreXYKinematicsD0Ev:
 473              		@ args = 0, pretend = 0, frame = 0
 474              		@ frame_needed = 0, uses_anonymous_args = 0
 475 0000 10B5     		push	{r4, lr}
 476 0002 8421     		movs	r1, #132
 477 0004 0446     		mov	r4, r0
 478 0006 FFF7FEFF 		bl	_ZdlPvj
 479 000a 2046     		mov	r0, r4
 480 000c 10BD     		pop	{r4, pc}
 481              		.size	_ZN16CoreXYKinematicsD0Ev, .-_ZN16CoreXYKinematicsD0Ev
 482 000e 00BF     		.section	.text._ZN16CoreXYKinematicsC2Ev,"ax",%progbits
 483              		.align	1
 484              		.p2align 2,,3
 485              		.global	_ZN16CoreXYKinematicsC2Ev
 486              		.syntax unified
 487              		.thumb
 488              		.thumb_func
 489              		.fpu fpv4-sp-d16
 490              		.type	_ZN16CoreXYKinematicsC2Ev, %function
 491              	_ZN16CoreXYKinematicsC2Ev:
 492              		@ args = 0, pretend = 0, frame = 0
 493              		@ frame_needed = 0, uses_anonymous_args = 0
 494 0000 10B5     		push	{r4, lr}
 495 0002 0121     		movs	r1, #1
 496 0004 0446     		mov	r4, r0
 497 0006 FFF7FEFF 		bl	_ZN18CoreBaseKinematicsC2E14KinematicsType
 498 000a 024B     		ldr	r3, .L52
 499 000c 2360     		str	r3, [r4]
 500 000e 2046     		mov	r0, r4
 501 0010 10BD     		pop	{r4, pc}
 502              	.L53:
 503 0012 00BF     		.align	2
 504              	.L52:
 505 0014 08000000 		.word	.LANCHOR0+8
 506              		.size	_ZN16CoreXYKinematicsC2Ev, .-_ZN16CoreXYKinematicsC2Ev
 507              		.global	_ZN16CoreXYKinematicsC1Ev
 508              		.thumb_set _ZN16CoreXYKinematicsC1Ev,_ZN16CoreXYKinematicsC2Ev
 509              		.global	_ZTV16CoreXYKinematics
 510              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 511              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 512              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 513              	_ZL28cpu_irq_prev_interrupt_state:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccPIdu0Y.s 			page 10


 514 0000 00       		.space	1
 515              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 516              		.align	2
 517              		.type	_ZL32cpu_irq_critical_section_counter, %object
 518              		.size	_ZL32cpu_irq_critical_section_counter, 4
 519              	_ZL32cpu_irq_critical_section_counter:
 520 0000 00000000 		.space	4
 521              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 522              		.align	2
 523              	.LC1:
 524 0000 58595A00 		.ascii	"XYZ\000"
 525              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 526              		.align	2
 527              	.LC0:
 528 0000 58595A55 		.ascii	"XYZUVWABC\000"
 528      56574142 
 528      4300
 529              		.section	.rodata._ZNK16CoreXYKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 530              		.align	2
 531              	.LC2:
 532 0000 636F7265 		.ascii	"coreXY\000"
 532      585900
 533 0007 00       		.space	1
 534              	.LC3:
 535 0008 436F7265 		.ascii	"CoreXY\000"
 535      585900
 536              		.section	.rodata._ZTV16CoreXYKinematics,"a",%progbits
 537              		.align	2
 538              		.set	.LANCHOR0,. + 0
 539              		.type	_ZTV16CoreXYKinematics, %object
 540              		.size	_ZTV16CoreXYKinematics, 132
 541              	_ZTV16CoreXYKinematics:
 542 0000 00000000 		.word	0
 543 0004 00000000 		.word	0
 544 0008 00000000 		.word	_ZNK16CoreXYKinematics7GetNameEb
 545 000c 00000000 		.word	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 546 0010 00000000 		.word	_ZNK16CoreXYKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 547 0014 00000000 		.word	_ZNK16CoreXYKinematics21MotorStepsToCartesianEPKlPKfjjPf
 548 0018 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 549 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 550 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 551 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 552 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 553 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 554 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 555 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 556 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 557 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 558 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 559 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 560 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 561 004c 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef
 562 0050 00000000 		.word	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj
 563 0054 00000000 		.word	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 564 0058 00000000 		.word	_ZNK18CoreBaseKinematics13GetHomingModeEv
 565 005c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 566 0060 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccPIdu0Y.s 			page 11


 567 0064 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 568 0068 00000000 		.word	_ZNK16CoreXYKinematics25LimitSpeedAndAccelerationER3DDAPKf
 569 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 570 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 571 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 572 0078 00000000 		.word	_ZN16CoreXYKinematicsD1Ev
 573 007c 00000000 		.word	_ZN16CoreXYKinematicsD0Ev
 574 0080 00000000 		.word	_ZNK16CoreXYKinematics13DriveIsSharedEj
 575              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
