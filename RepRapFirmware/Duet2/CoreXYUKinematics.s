ARM GAS  /tmp/cc79AZR6.s 			page 1


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
  13              		.file	"CoreXYUKinematics.cpp"
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
ARM GAS  /tmp/cc79AZR6.s 			page 2


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
ARM GAS  /tmp/cc79AZR6.s 			page 3


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
ARM GAS  /tmp/cc79AZR6.s 			page 4


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
 220              		.section	.text._ZNK17CoreXYUKinematics7GetNameEb,"ax",%progbits
 221              		.align	1
 222              		.p2align 2,,3
 223              		.global	_ZNK17CoreXYUKinematics7GetNameEb
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv4-sp-d16
 228              		.type	_ZNK17CoreXYUKinematics7GetNameEb, %function
ARM GAS  /tmp/cc79AZR6.s 			page 5


 229              	_ZNK17CoreXYUKinematics7GetNameEb:
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
 244              		.size	_ZNK17CoreXYUKinematics7GetNameEb, .-_ZNK17CoreXYUKinematics7GetNameEb
 245              		.section	.text._ZNK17CoreXYUKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	_ZNK17CoreXYUKinematics21MotorStepsToCartesianEPKlPKfjjPf
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu fpv4-sp-d16
 253              		.type	_ZNK17CoreXYUKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 254              	_ZNK17CoreXYUKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 255              		@ args = 8, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257              		@ link register save eliminated.
 258 0000 D1ED016A 		vldr.32	s13, [r1, #4]	@ int
 259 0004 92ED007A 		vldr.32	s14, [r2]
 260 0008 92ED016A 		vldr.32	s12, [r2, #4]
 261 000c D2ED037A 		vldr.32	s15, [r2, #12]
 262 0010 D2ED045A 		vldr.32	s11, [r2, #16]
 263 0014 F8EEE63A 		vcvt.f32.s32	s7, s13
 264 0018 D1ED006A 		vldr.32	s13, [r1]	@ int
 265 001c 27EE233A 		vmul.f32	s6, s14, s7
 266 0020 B8EEE64A 		vcvt.f32.s32	s8, s13
 267 0024 D0ED106A 		vldr.32	s13, [r0, #64]
 268 0028 A6EE043A 		vfma.f32	s6, s12, s8
 269 002c 30B4     		push	{r4, r5}
 270 002e 27EE066A 		vmul.f32	s12, s14, s12
 271 0032 76EEA66A 		vadd.f32	s13, s13, s13
 272 0036 91ED047A 		vldr.32	s14, [r1, #16]	@ int
 273 003a 039C     		ldr	r4, [sp, #12]
 274 003c 8D68     		ldr	r5, [r1, #8]
 275 003e F8EEC74A 		vcvt.f32.s32	s9, s14
 276 0042 66EE866A 		vmul.f32	s13, s13, s12
 277 0046 91ED037A 		vldr.32	s14, [r1, #12]	@ int
 278 004a B8EEC75A 		vcvt.f32.s32	s10, s14
 279 004e 83EE267A 		vdiv.f32	s14, s6, s13
 280 0052 052B     		cmp	r3, #5
 281 0054 67EEA55A 		vmul.f32	s11, s15, s11
 282 0058 84ED007A 		vstr.32	s14, [r4]
 283 005c D2ED006A 		vldr.32	s13, [r2]
 284 0060 D2ED017A 		vldr.32	s15, [r2, #4]
 285 0064 90ED117A 		vldr.32	s14, [r0, #68]
ARM GAS  /tmp/cc79AZR6.s 			page 6


 286 0068 66EEE36A 		vnmul.f32	s13, s13, s7
 287 006c 37EE077A 		vadd.f32	s14, s14, s14
 288 0070 E4EE276A 		vfma.f32	s13, s8, s15
 289 0074 27EE067A 		vmul.f32	s14, s14, s12
 290 0078 07EE905A 		vmov	s15, r5	@ int
 291 007c B8EEE76A 		vcvt.f32.s32	s12, s15
 292 0080 C6EE877A 		vdiv.f32	s15, s13, s14
 293 0084 C4ED017A 		vstr.32	s15, [r4, #4]
 294 0088 D2ED036A 		vldr.32	s13, [r2, #12]
 295 008c D2ED047A 		vldr.32	s15, [r2, #16]
 296 0090 90ED147A 		vldr.32	s14, [r0, #80]
 297 0094 64EEA66A 		vmul.f32	s13, s9, s13
 298 0098 37EE077A 		vadd.f32	s14, s14, s14
 299 009c E5EE276A 		vfma.f32	s13, s10, s15
 300 00a0 27EE257A 		vmul.f32	s14, s14, s11
 301 00a4 C6EE877A 		vdiv.f32	s15, s13, s14
 302 00a8 C4ED037A 		vstr.32	s15, [r4, #12]
 303 00ac 92ED037A 		vldr.32	s14, [r2, #12]
 304 00b0 D2ED046A 		vldr.32	s13, [r2, #16]
 305 00b4 D0ED147A 		vldr.32	s15, [r0, #80]
 306 00b8 27EE647A 		vnmul.f32	s14, s14, s9
 307 00bc 77EEA77A 		vadd.f32	s15, s15, s15
 308 00c0 A5EE267A 		vfma.f32	s14, s10, s13
 309 00c4 67EEA57A 		vmul.f32	s15, s15, s11
 310 00c8 C7EE276A 		vdiv.f32	s13, s14, s15
 311 00cc C4ED046A 		vstr.32	s13, [r4, #16]
 312 00d0 92ED027A 		vldr.32	s14, [r2, #8]
 313 00d4 C6EE077A 		vdiv.f32	s15, s12, s14
 314 00d8 C4ED027A 		vstr.32	s15, [r4, #8]
 315 00dc 14D9     		bls	.L27
 316 00de 01EB8303 		add	r3, r1, r3, lsl #2
 317 00e2 181F     		subs	r0, r3, #4
 318 00e4 1031     		adds	r1, r1, #16
 319 00e6 1432     		adds	r2, r2, #20
 320 00e8 04F11403 		add	r3, r4, #20
 321              	.L29:
 322 00ec 51F8044F 		ldr	r4, [r1, #4]!
 323 00f0 F2EC016A 		vldmia.32	r2!, {s13}
 324 00f4 07EE904A 		vmov	s15, r4	@ int
 325 00f8 F8EEE77A 		vcvt.f32.s32	s15, s15
 326 00fc 8142     		cmp	r1, r0
 327 00fe 87EEA67A 		vdiv.f32	s14, s15, s13
 328 0102 A3EC017A 		vstmia.32	r3!, {s14}
 329 0106 F1D1     		bne	.L29
 330              	.L27:
 331 0108 30BC     		pop	{r4, r5}
 332 010a 7047     		bx	lr
 333              		.size	_ZNK17CoreXYUKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK17CoreXYUKinematics21MotorS
 334              		.section	.text._ZN17CoreXYUKinematicsD2Ev,"axG",%progbits,_ZN17CoreXYUKinematicsD5Ev,comdat
 335              		.align	1
 336              		.p2align 2,,3
 337              		.weak	_ZN17CoreXYUKinematicsD2Ev
 338              		.syntax unified
 339              		.thumb
 340              		.thumb_func
 341              		.fpu fpv4-sp-d16
 342              		.type	_ZN17CoreXYUKinematicsD2Ev, %function
ARM GAS  /tmp/cc79AZR6.s 			page 7


 343              	_ZN17CoreXYUKinematicsD2Ev:
 344              		@ args = 0, pretend = 0, frame = 0
 345              		@ frame_needed = 0, uses_anonymous_args = 0
 346              		@ link register save eliminated.
 347 0000 7047     		bx	lr
 348              		.size	_ZN17CoreXYUKinematicsD2Ev, .-_ZN17CoreXYUKinematicsD2Ev
 349              		.weak	_ZN17CoreXYUKinematicsD1Ev
 350              		.thumb_set _ZN17CoreXYUKinematicsD1Ev,_ZN17CoreXYUKinematicsD2Ev
 351 0002 00BF     		.section	.text._ZNK17CoreXYUKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 352              		.align	1
 353              		.p2align 2,,3
 354              		.global	_ZNK17CoreXYUKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 355              		.syntax unified
 356              		.thumb
 357              		.thumb_func
 358              		.fpu fpv4-sp-d16
 359              		.type	_ZNK17CoreXYUKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 360              	_ZNK17CoreXYUKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 361              		@ args = 12, pretend = 0, frame = 0
 362              		@ frame_needed = 0, uses_anonymous_args = 0
 363 0000 91ED010A 		vldr.32	s0, [r1, #4]
 364 0004 D0ED116A 		vldr.32	s13, [r0, #68]
 365 0008 91ED007A 		vldr.32	s14, [r1]
 366 000c D0ED107A 		vldr.32	s15, [r0, #64]
 367 0010 20EE260A 		vmul.f32	s0, s0, s13
 368 0014 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 369 0018 A7EE270A 		vfma.f32	s0, s14, s15
 370 001c 0C46     		mov	r4, r1
 371 001e 8046     		mov	r8, r0
 372 0020 D2ED007A 		vldr.32	s15, [r2]
 373 0024 079D     		ldr	r5, [sp, #28]
 374 0026 20EE270A 		vmul.f32	s0, s0, s15
 375 002a 1646     		mov	r6, r2
 376 002c 1F46     		mov	r7, r3
 377 002e FFF7FEFF 		bl	lrintf
 378 0032 94ED016A 		vldr.32	s12, [r4, #4]
 379 0036 98ED110A 		vldr.32	s0, [r8, #68]
 380 003a D4ED006A 		vldr.32	s13, [r4]
 381 003e 98ED107A 		vldr.32	s14, [r8, #64]
 382 0042 D6ED017A 		vldr.32	s15, [r6, #4]
 383 0046 2860     		str	r0, [r5]
 384 0048 20EE460A 		vnmul.f32	s0, s0, s12
 385 004c A6EE870A 		vfma.f32	s0, s13, s14
 386 0050 20EE270A 		vmul.f32	s0, s0, s15
 387 0054 FFF7FEFF 		bl	lrintf
 388 0058 D6ED027A 		vldr.32	s15, [r6, #8]
 389 005c 94ED020A 		vldr.32	s0, [r4, #8]
 390 0060 6860     		str	r0, [r5, #4]
 391 0062 20EE270A 		vmul.f32	s0, s0, s15
 392 0066 FFF7FEFF 		bl	lrintf
 393 006a 98ED116A 		vldr.32	s12, [r8, #68]
 394 006e 94ED010A 		vldr.32	s0, [r4, #4]
 395 0072 D4ED036A 		vldr.32	s13, [r4, #12]
 396 0076 98ED137A 		vldr.32	s14, [r8, #76]
 397 007a D6ED037A 		vldr.32	s15, [r6, #12]
 398 007e A860     		str	r0, [r5, #8]
 399 0080 20EE060A 		vmul.f32	s0, s0, s12
ARM GAS  /tmp/cc79AZR6.s 			page 8


 400 0084 A6EE870A 		vfma.f32	s0, s13, s14
 401 0088 20EE270A 		vmul.f32	s0, s0, s15
 402 008c FFF7FEFF 		bl	lrintf
 403 0090 94ED016A 		vldr.32	s12, [r4, #4]
 404 0094 98ED110A 		vldr.32	s0, [r8, #68]
 405 0098 D4ED036A 		vldr.32	s13, [r4, #12]
 406 009c 98ED137A 		vldr.32	s14, [r8, #76]
 407 00a0 D6ED047A 		vldr.32	s15, [r6, #16]
 408 00a4 E860     		str	r0, [r5, #12]
 409 00a6 20EE460A 		vnmul.f32	s0, s0, s12
 410 00aa A6EE870A 		vfma.f32	s0, s13, s14
 411 00ae 20EE270A 		vmul.f32	s0, s0, s15
 412 00b2 FFF7FEFF 		bl	lrintf
 413 00b6 052F     		cmp	r7, #5
 414 00b8 2861     		str	r0, [r5, #16]
 415 00ba 10D9     		bls	.L34
 416 00bc 04EB8707 		add	r7, r4, r7, lsl #2
 417 00c0 1436     		adds	r6, r6, #20
 418 00c2 1035     		adds	r5, r5, #16
 419 00c4 1434     		adds	r4, r4, #20
 420              	.L35:
 421 00c6 B4EC010A 		vldmia.32	r4!, {s0}
 422 00ca F6EC017A 		vldmia.32	r6!, {s15}
 423 00ce 20EE270A 		vmul.f32	s0, s0, s15
 424 00d2 FFF7FEFF 		bl	lrintf
 425 00d6 BC42     		cmp	r4, r7
 426 00d8 45F8040F 		str	r0, [r5, #4]!
 427 00dc F3D1     		bne	.L35
 428              	.L34:
 429 00de 0120     		movs	r0, #1
 430 00e0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 431              		.size	_ZNK17CoreXYUKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK17CoreXYUKinematics21Carte
 432              		.section	.text._ZNK17CoreXYUKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 433              		.align	1
 434              		.p2align 2,,3
 435              		.global	_ZNK17CoreXYUKinematics25LimitSpeedAndAccelerationER3DDAPKf
 436              		.syntax unified
 437              		.thumb
 438              		.thumb_func
 439              		.fpu fpv4-sp-d16
 440              		.type	_ZNK17CoreXYUKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 441              	_ZNK17CoreXYUKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 442              		@ args = 0, pretend = 0, frame = 0
 443              		@ frame_needed = 0, uses_anonymous_args = 0
 444 0000 38B5     		push	{r3, r4, r5, lr}
 445 0002 D2ED006A 		vldr.32	s13, [r2]
 446 0006 2DED028B 		vpush.64	{d8}
 447 000a 92ED018A 		vldr.32	s16, [r2, #4]
 448 000e 76EE887A 		vadd.f32	s15, s13, s16
 449 0012 1446     		mov	r4, r2
 450 0014 F0EEE77A 		vabs.f32	s15, s15
 451 0018 F4EE677A 		vcmp.f32	s15, s15
 452 001c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 453 0020 36EEC87A 		vsub.f32	s14, s13, s16
 454 0024 0D46     		mov	r5, r1
 455 0026 08D6     		bvs	.L39
 456 0028 B0EEC77A 		vabs.f32	s14, s14
ARM GAS  /tmp/cc79AZR6.s 			page 9


 457 002c F4EEC77A 		vcmpe.f32	s15, s14
 458 0030 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 459 0034 D8BF     		it	le
 460 0036 F0EE477A 		vmovle.f32	s15, s14
 461              	.L39:
 462 003a 9FED417A 		vldr.32	s14, .L51
 463 003e F4EEC77A 		vcmpe.f32	s15, s14
 464 0042 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 465 0046 4EDC     		bgt	.L49
 466              	.L40:
 467 0048 94ED037A 		vldr.32	s14, [r4, #12]
 468 004c 78EE077A 		vadd.f32	s15, s16, s14
 469 0050 77EE486A 		vsub.f32	s13, s14, s16
 470 0054 F0EEE77A 		vabs.f32	s15, s15
 471 0058 F4EE677A 		vcmp.f32	s15, s15
 472 005c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 473 0060 F0EEE66A 		vabs.f32	s13, s13
 474 0064 06D6     		bvs	.L42
 475 0066 F4EEE67A 		vcmpe.f32	s15, s13
 476 006a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 477 006e D8BF     		it	le
 478 0070 F0EE667A 		vmovle.f32	s15, s13
 479              	.L42:
 480 0074 DFED326A 		vldr.32	s13, .L51
 481 0078 F4EEE67A 		vcmpe.f32	s15, s13
 482 007c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 483 0080 02DC     		bgt	.L50
 484 0082 BDEC028B 		vldm	sp!, {d8}
 485 0086 38BD     		pop	{r3, r4, r5, pc}
 486              	.L50:
 487 0088 2E4B     		ldr	r3, .L51+4
 488 008a 1B68     		ldr	r3, [r3]
 489 008c 93ED535A 		vldr.32	s10, [r3, #332]
 490 0090 D3ED5F6A 		vldr.32	s13, [r3, #380]
 491 0094 93ED516A 		vldr.32	s12, [r3, #324]
 492 0098 D3ED5D5A 		vldr.32	s11, [r3, #372]
 493 009c B0EEC88A 		vabs.f32	s16, s16
 494 00a0 25EE080A 		vmul.f32	s0, s10, s16
 495 00a4 B0EEC77A 		vabs.f32	s14, s14
 496 00a8 66EE880A 		vmul.f32	s1, s13, s16
 497 00ac A6EE070A 		vfma.f32	s0, s12, s14
 498 00b0 2846     		mov	r0, r5
 499 00b2 37EE088A 		vadd.f32	s16, s14, s16
 500 00b6 20EE270A 		vmul.f32	s0, s0, s15
 501 00ba 68EE266A 		vmul.f32	s13, s16, s13
 502 00be 28EE058A 		vmul.f32	s16, s16, s10
 503 00c2 E5EE870A 		vfma.f32	s1, s11, s14
 504 00c6 28EE068A 		vmul.f32	s16, s16, s12
 505 00ca 60EEA70A 		vmul.f32	s1, s1, s15
 506 00ce 88EE000A 		vdiv.f32	s0, s16, s0
 507 00d2 BDEC028B 		vldm	sp!, {d8}
 508 00d6 BDE83840 		pop	{r3, r4, r5, lr}
 509 00da 66EEA56A 		vmul.f32	s13, s13, s11
 510 00de C6EEA00A 		vdiv.f32	s1, s13, s1
 511 00e2 FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 512              	.L49:
 513 00e6 174B     		ldr	r3, .L51+4
ARM GAS  /tmp/cc79AZR6.s 			page 10


 514 00e8 1B68     		ldr	r3, [r3]	@ unaligned
 515 00ea 93ED5C6A 		vldr.32	s12, [r3, #368]
 516 00ee D3ED504A 		vldr.32	s9, [r3, #320]
 517 00f2 93ED5D5A 		vldr.32	s10, [r3, #372]
 518 00f6 D3ED515A 		vldr.32	s11, [r3, #324]
 519 00fa B0EEC87A 		vabs.f32	s14, s16
 520 00fe 66EE070A 		vmul.f32	s1, s12, s14
 521 0102 24EE870A 		vmul.f32	s0, s9, s14
 522 0106 F0EEE66A 		vabs.f32	s13, s13
 523 010a 36EE877A 		vadd.f32	s14, s13, s14
 524 010e E5EE260A 		vfma.f32	s1, s10, s13
 525 0112 2846     		mov	r0, r5
 526 0114 A5EEA60A 		vfma.f32	s0, s11, s13
 527 0118 27EE066A 		vmul.f32	s12, s14, s12
 528 011c 27EE247A 		vmul.f32	s14, s14, s9
 529 0120 60EEA70A 		vmul.f32	s1, s1, s15
 530 0124 26EE056A 		vmul.f32	s12, s12, s10
 531 0128 20EE270A 		vmul.f32	s0, s0, s15
 532 012c 27EE257A 		vmul.f32	s14, s14, s11
 533 0130 C6EE200A 		vdiv.f32	s1, s12, s1
 534 0134 87EE000A 		vdiv.f32	s0, s14, s0
 535 0138 FFF7FEFF 		bl	_ZN3DDA25LimitSpeedAndAccelerationEff
 536 013c 84E7     		b	.L40
 537              	.L52:
 538 013e 00BF     		.align	2
 539              	.L51:
 540 0140 0AD7233C 		.word	1008981770
 541 0144 00000000 		.word	reprap
 542              		.size	_ZNK17CoreXYUKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK17CoreXYUKinematics25Limi
 543              		.section	.text._ZN17CoreXYUKinematicsD0Ev,"axG",%progbits,_ZN17CoreXYUKinematicsD5Ev,comdat
 544              		.align	1
 545              		.p2align 2,,3
 546              		.weak	_ZN17CoreXYUKinematicsD0Ev
 547              		.syntax unified
 548              		.thumb
 549              		.thumb_func
 550              		.fpu fpv4-sp-d16
 551              		.type	_ZN17CoreXYUKinematicsD0Ev, %function
 552              	_ZN17CoreXYUKinematicsD0Ev:
 553              		@ args = 0, pretend = 0, frame = 0
 554              		@ frame_needed = 0, uses_anonymous_args = 0
 555 0000 10B5     		push	{r4, lr}
 556 0002 6421     		movs	r1, #100
 557 0004 0446     		mov	r4, r0
 558 0006 FFF7FEFF 		bl	_ZdlPvj
 559 000a 2046     		mov	r0, r4
 560 000c 10BD     		pop	{r4, pc}
 561              		.size	_ZN17CoreXYUKinematicsD0Ev, .-_ZN17CoreXYUKinematicsD0Ev
 562 000e 00BF     		.section	.text._ZNK17CoreXYUKinematics13DriveIsSharedEj,"ax",%progbits
 563              		.align	1
 564              		.p2align 2,,3
 565              		.global	_ZNK17CoreXYUKinematics13DriveIsSharedEj
 566              		.syntax unified
 567              		.thumb
 568              		.thumb_func
 569              		.fpu fpv4-sp-d16
 570              		.type	_ZNK17CoreXYUKinematics13DriveIsSharedEj, %function
ARM GAS  /tmp/cc79AZR6.s 			page 11


 571              	_ZNK17CoreXYUKinematics13DriveIsSharedEj:
 572              		@ args = 0, pretend = 0, frame = 0
 573              		@ frame_needed = 0, uses_anonymous_args = 0
 574              		@ link register save eliminated.
 575 0000 0129     		cmp	r1, #1
 576 0002 05D9     		bls	.L57
 577 0004 0339     		subs	r1, r1, #3
 578 0006 0129     		cmp	r1, #1
 579 0008 8CBF     		ite	hi
 580 000a 0020     		movhi	r0, #0
 581 000c 0120     		movls	r0, #1
 582 000e 7047     		bx	lr
 583              	.L57:
 584 0010 0120     		movs	r0, #1
 585 0012 7047     		bx	lr
 586              		.size	_ZNK17CoreXYUKinematics13DriveIsSharedEj, .-_ZNK17CoreXYUKinematics13DriveIsSharedEj
 587              		.global	__aeabi_f2d
 588              		.section	.text._ZN17CoreXYUKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 589              		.align	1
 590              		.p2align 2,,3
 591              		.global	_ZN17CoreXYUKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 592              		.syntax unified
 593              		.thumb
 594              		.thumb_func
 595              		.fpu fpv4-sp-d16
 596              		.type	_ZN17CoreXYUKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 597              	_ZN17CoreXYUKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 598              		@ args = 4, pretend = 0, frame = 8
 599              		@ frame_needed = 0, uses_anonymous_args = 0
 600 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 601 0004 40F29D24 		movw	r4, #669
 602 0008 A142     		cmp	r1, r4
 603 000a 85B0     		sub	sp, sp, #20
 604 000c 25D1     		bne	.L59
 605 000e 00F1400B 		add	fp, r0, #64
 606 0012 4FF00008 		mov	r8, #0
 607 0016 294F     		ldr	r7, .L79
 608 0018 0393     		str	r3, [sp, #12]
 609 001a 8146     		mov	r9, r0
 610 001c 1646     		mov	r6, r2
 611 001e 5D46     		mov	r5, fp
 612 0020 4446     		mov	r4, r8
 613              	.L61:
 614 0022 3B69     		ldr	r3, [r7, #16]
 615 0024 2344     		add	r3, r3, r4
 616 0026 3046     		mov	r0, r6
 617 0028 93F85A14 		ldrb	r1, [r3, #1114]	@ zero_extendqisi2
 618 002c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 619 0030 0134     		adds	r4, r4, #1
 620 0032 8246     		mov	r10, r0
 621 0034 50B9     		cbnz	r0, .L76
 622              	.L60:
 623 0036 052C     		cmp	r4, #5
 624 0038 05F10405 		add	r5, r5, #4
 625 003c F1D1     		bne	.L61
 626 003e B8F1000F 		cmp	r8, #0
 627 0042 0FD0     		beq	.L77
ARM GAS  /tmp/cc79AZR6.s 			page 12


 628              	.L62:
 629 0044 4046     		mov	r0, r8
 630 0046 05B0     		add	sp, sp, #20
 631              		@ sp needed
 632 0048 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 633              	.L76:
 634 004c 3046     		mov	r0, r6
 635 004e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 636 0052 D046     		mov	r8, r10
 637 0054 85ED000A 		vstr.32	s0, [r5]
 638 0058 EDE7     		b	.L60
 639              	.L59:
 640 005a 05B0     		add	sp, sp, #20
 641              		@ sp needed
 642 005c BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 643 0060 FFF7FEBF 		b	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 644              	.L77:
 645 0064 3046     		mov	r0, r6
 646 0066 4B21     		movs	r1, #75
 647 0068 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 648 006c 0028     		cmp	r0, #0
 649 006e E9D1     		bne	.L62
 650 0070 D9F80030 		ldr	r3, [r9]
 651 0074 124A     		ldr	r2, .L79+4
 652 0076 1B68     		ldr	r3, [r3]
 653 0078 9342     		cmp	r3, r2
 654 007a 19D1     		bne	.L78
 655 007c 114A     		ldr	r2, .L79+8
 656              	.L64:
 657 007e 1249     		ldr	r1, .L79+12
 658 0080 0398     		ldr	r0, [sp, #12]
 659 0082 124D     		ldr	r5, .L79+16
 660 0084 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 661 0088 0024     		movs	r4, #0
 662              	.L66:
 663 008a 3B69     		ldr	r3, [r7, #16]
 664 008c 5BF8040B 		ldr	r0, [fp], #4	@ float
 665 0090 2344     		add	r3, r3, r4
 666 0092 0134     		adds	r4, r4, #1
 667 0094 93F85A64 		ldrb	r6, [r3, #1114]	@ zero_extendqisi2
 668 0098 FFF7FEFF 		bl	__aeabi_f2d
 669 009c 3246     		mov	r2, r6
 670 009e CDE90001 		strd	r0, [sp]
 671 00a2 2946     		mov	r1, r5
 672 00a4 0398     		ldr	r0, [sp, #12]
 673 00a6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 674 00aa 052C     		cmp	r4, #5
 675 00ac EDD1     		bne	.L66
 676 00ae C9E7     		b	.L62
 677              	.L78:
 678 00b0 4846     		mov	r0, r9
 679 00b2 4146     		mov	r1, r8
 680 00b4 9847     		blx	r3
 681 00b6 0246     		mov	r2, r0
 682 00b8 E1E7     		b	.L64
 683              	.L80:
 684 00ba 00BF     		.align	2
ARM GAS  /tmp/cc79AZR6.s 			page 13


 685              	.L79:
 686 00bc 00000000 		.word	reprap
 687 00c0 00000000 		.word	_ZNK17CoreXYUKinematics7GetNameEb
 688 00c4 08000000 		.word	.LC3
 689 00c8 00000000 		.word	.LC4
 690 00cc 24000000 		.word	.LC5
 691              		.size	_ZN17CoreXYUKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN17CoreXYUKinematics9Con
 692              		.section	.text._ZN17CoreXYUKinematicsC2Ev,"ax",%progbits
 693              		.align	1
 694              		.p2align 2,,3
 695              		.global	_ZN17CoreXYUKinematicsC2Ev
 696              		.syntax unified
 697              		.thumb
 698              		.thumb_func
 699              		.fpu fpv4-sp-d16
 700              		.type	_ZN17CoreXYUKinematicsC2Ev, %function
 701              	_ZN17CoreXYUKinematicsC2Ev:
 702              		@ args = 0, pretend = 0, frame = 0
 703              		@ frame_needed = 0, uses_anonymous_args = 0
 704 0000 10B5     		push	{r4, lr}
 705 0002 0521     		movs	r1, #5
 706 0004 0446     		mov	r4, r0
 707 0006 FFF7FEFF 		bl	_ZN18CoreBaseKinematicsC2E14KinematicsType
 708 000a 024B     		ldr	r3, .L83
 709 000c 2360     		str	r3, [r4]
 710 000e 2046     		mov	r0, r4
 711 0010 10BD     		pop	{r4, pc}
 712              	.L84:
 713 0012 00BF     		.align	2
 714              	.L83:
 715 0014 08000000 		.word	.LANCHOR0+8
 716              		.size	_ZN17CoreXYUKinematicsC2Ev, .-_ZN17CoreXYUKinematicsC2Ev
 717              		.global	_ZN17CoreXYUKinematicsC1Ev
 718              		.thumb_set _ZN17CoreXYUKinematicsC1Ev,_ZN17CoreXYUKinematicsC2Ev
 719              		.global	_ZTV17CoreXYUKinematics
 720              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 721              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 722              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 723              	_ZL28cpu_irq_prev_interrupt_state:
 724 0000 00       		.space	1
 725              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 726              		.align	2
 727              		.type	_ZL32cpu_irq_critical_section_counter, %object
 728              		.size	_ZL32cpu_irq_critical_section_counter, 4
 729              	_ZL32cpu_irq_critical_section_counter:
 730 0000 00000000 		.space	4
 731              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 732              		.align	2
 733              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 734              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 735              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 736 0000 00000000 		.space	4
 737              		.section	.rodata._ZN17CoreXYUKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%prog
 738              		.align	2
 739              	.LC4:
 740 0000 4B696E65 		.ascii	"Kinematics is %s with axis factors\000"
 740      6D617469 
ARM GAS  /tmp/cc79AZR6.s 			page 14


 740      63732069 
 740      73202573 
 740      20776974 
 741 0023 00       		.space	1
 742              	.LC5:
 743 0024 2025633A 		.ascii	" %c:%3f\000"
 743      25336600 
 744              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 745              		.align	2
 746              	.LC1:
 747 0000 58595A00 		.ascii	"XYZ\000"
 748              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 749              		.align	2
 750              	.LC0:
 751 0000 58595A55 		.ascii	"XYZUVWABC\000"
 751      56574142 
 751      4300
 752              		.section	.rodata._ZNK17CoreXYUKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 753              		.align	2
 754              	.LC2:
 755 0000 636F7265 		.ascii	"coreXYU\000"
 755      58595500 
 756              	.LC3:
 757 0008 436F7265 		.ascii	"CoreXYU\000"
 757      58595500 
 758              		.section	.rodata._ZTV17CoreXYUKinematics,"a",%progbits
 759              		.align	2
 760              		.set	.LANCHOR0,. + 0
 761              		.type	_ZTV17CoreXYUKinematics, %object
 762              		.size	_ZTV17CoreXYUKinematics, 132
 763              	_ZTV17CoreXYUKinematics:
 764 0000 00000000 		.word	0
 765 0004 00000000 		.word	0
 766 0008 00000000 		.word	_ZNK17CoreXYUKinematics7GetNameEb
 767 000c 00000000 		.word	_ZN17CoreXYUKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 768 0010 00000000 		.word	_ZNK17CoreXYUKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 769 0014 00000000 		.word	_ZNK17CoreXYUKinematics21MotorStepsToCartesianEPKlPKfjjPf
 770 0018 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 771 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 772 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 773 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 774 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 775 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 776 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 777 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 778 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 779 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 780 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 781 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 782 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 783 004c 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRm
 784 0050 00000000 		.word	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj
 785 0054 00000000 		.word	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 786 0058 00000000 		.word	_ZNK18CoreBaseKinematics13GetHomingModeEv
 787 005c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 788 0060 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 789 0064 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
ARM GAS  /tmp/cc79AZR6.s 			page 15


 790 0068 00000000 		.word	_ZNK17CoreXYUKinematics25LimitSpeedAndAccelerationER3DDAPKf
 791 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 792 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 793 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 794 0078 00000000 		.word	_ZN17CoreXYUKinematicsD1Ev
 795 007c 00000000 		.word	_ZN17CoreXYUKinematicsD0Ev
 796 0080 00000000 		.word	_ZNK17CoreXYUKinematics13DriveIsSharedEj
 797              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
