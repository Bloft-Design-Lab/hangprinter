ARM GAS  /tmp/ccpRsYvd.s 			page 1


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
  13              		.file	"CoreXYUVKinematics.cpp"
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
ARM GAS  /tmp/ccpRsYvd.s 			page 2


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
ARM GAS  /tmp/ccpRsYvd.s 			page 3


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
ARM GAS  /tmp/ccpRsYvd.s 			page 4


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
 220              		.section	.text._ZNK18CoreXYUVKinematics7GetNameEb,"ax",%progbits
 221              		.align	1
 222              		.p2align 2,,3
 223              		.global	_ZNK18CoreXYUVKinematics7GetNameEb
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv4-sp-d16
 228              		.type	_ZNK18CoreXYUVKinematics7GetNameEb, %function
ARM GAS  /tmp/ccpRsYvd.s 			page 5


 229              	_ZNK18CoreXYUVKinematics7GetNameEb:
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
 244              		.size	_ZNK18CoreXYUVKinematics7GetNameEb, .-_ZNK18CoreXYUVKinematics7GetNameEb
 245              		.section	.text._ZNK18CoreXYUVKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	_ZNK18CoreXYUVKinematics21MotorStepsToCartesianEPKlPKfjjPf
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu fpv4-sp-d16
 253              		.type	_ZNK18CoreXYUVKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 254              	_ZNK18CoreXYUVKinematics21MotorStepsToCartesianEPKlPKfjjPf:
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
ARM GAS  /tmp/ccpRsYvd.s 			page 6


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
 333              		.size	_ZNK18CoreXYUVKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK18CoreXYUVKinematics21Moto
 334              		.section	.text._ZN18CoreXYUVKinematicsD2Ev,"axG",%progbits,_ZN18CoreXYUVKinematicsD5Ev,comdat
 335              		.align	1
 336              		.p2align 2,,3
 337              		.weak	_ZN18CoreXYUVKinematicsD2Ev
 338              		.syntax unified
 339              		.thumb
 340              		.thumb_func
 341              		.fpu fpv4-sp-d16
 342              		.type	_ZN18CoreXYUVKinematicsD2Ev, %function
ARM GAS  /tmp/ccpRsYvd.s 			page 7


 343              	_ZN18CoreXYUVKinematicsD2Ev:
 344              		@ args = 0, pretend = 0, frame = 0
 345              		@ frame_needed = 0, uses_anonymous_args = 0
 346              		@ link register save eliminated.
 347 0000 7047     		bx	lr
 348              		.size	_ZN18CoreXYUVKinematicsD2Ev, .-_ZN18CoreXYUVKinematicsD2Ev
 349              		.weak	_ZN18CoreXYUVKinematicsD1Ev
 350              		.thumb_set _ZN18CoreXYUVKinematicsD1Ev,_ZN18CoreXYUVKinematicsD2Ev
 351 0002 00BF     		.section	.text._ZNK18CoreXYUVKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 352              		.align	1
 353              		.p2align 2,,3
 354              		.global	_ZNK18CoreXYUVKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 355              		.syntax unified
 356              		.thumb
 357              		.thumb_func
 358              		.fpu fpv4-sp-d16
 359              		.type	_ZNK18CoreXYUVKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 360              	_ZNK18CoreXYUVKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
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
 393 006a 98ED146A 		vldr.32	s12, [r8, #80]
 394 006e 94ED040A 		vldr.32	s0, [r4, #16]
 395 0072 D4ED036A 		vldr.32	s13, [r4, #12]
 396 0076 98ED137A 		vldr.32	s14, [r8, #76]
 397 007a D6ED037A 		vldr.32	s15, [r6, #12]
 398 007e A860     		str	r0, [r5, #8]
 399 0080 20EE060A 		vmul.f32	s0, s0, s12
ARM GAS  /tmp/ccpRsYvd.s 			page 8


 400 0084 A6EE870A 		vfma.f32	s0, s13, s14
 401 0088 20EE270A 		vmul.f32	s0, s0, s15
 402 008c FFF7FEFF 		bl	lrintf
 403 0090 94ED046A 		vldr.32	s12, [r4, #16]
 404 0094 98ED140A 		vldr.32	s0, [r8, #80]
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
 431              		.size	_ZNK18CoreXYUVKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK18CoreXYUVKinematics21Car
 432              		.section	.text._ZNK18CoreXYUVKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 433              		.align	1
 434              		.p2align 2,,3
 435              		.global	_ZNK18CoreXYUVKinematics25LimitSpeedAndAccelerationER3DDAPKf
 436              		.syntax unified
 437              		.thumb
 438              		.thumb_func
 439              		.fpu fpv4-sp-d16
 440              		.type	_ZNK18CoreXYUVKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 441              	_ZNK18CoreXYUVKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 442              		@ args = 0, pretend = 0, frame = 0
 443              		@ frame_needed = 0, uses_anonymous_args = 0
 444 0000 92ED006A 		vldr.32	s12, [r2]
 445 0004 92ED017A 		vldr.32	s14, [r2, #4]
 446 0008 76EE077A 		vadd.f32	s15, s12, s14
 447 000c 38B5     		push	{r3, r4, r5, lr}
 448 000e F0EEE77A 		vabs.f32	s15, s15
 449 0012 F4EE677A 		vcmp.f32	s15, s15
 450 0016 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 451 001a 1446     		mov	r4, r2
 452 001c 76EE476A 		vsub.f32	s13, s12, s14
 453 0020 0D46     		mov	r5, r1
 454 0022 08D6     		bvs	.L39
 455 0024 F0EEE66A 		vabs.f32	s13, s13
 456 0028 F4EEE67A 		vcmpe.f32	s15, s13
ARM GAS  /tmp/ccpRsYvd.s 			page 9


 457 002c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 458 0030 D8BF     		it	le
 459 0032 F0EE667A 		vmovle.f32	s15, s13
 460              	.L39:
 461 0036 DFED406A 		vldr.32	s13, .L51
 462 003a F4EEE67A 		vcmpe.f32	s15, s13
 463 003e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 464 0042 4CDC     		bgt	.L49
 465              	.L40:
 466 0044 D4ED036A 		vldr.32	s13, [r4, #12]
 467 0048 94ED047A 		vldr.32	s14, [r4, #16]
 468 004c 76EE877A 		vadd.f32	s15, s13, s14
 469 0050 36EEC76A 		vsub.f32	s12, s13, s14
 470 0054 F0EEE77A 		vabs.f32	s15, s15
 471 0058 F4EE677A 		vcmp.f32	s15, s15
 472 005c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 473 0060 B0EEC66A 		vabs.f32	s12, s12
 474 0064 06D6     		bvs	.L42
 475 0066 F4EEC67A 		vcmpe.f32	s15, s12
 476 006a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 477 006e D8BF     		it	le
 478 0070 F0EE467A 		vmovle.f32	s15, s12
 479              	.L42:
 480 0074 9FED306A 		vldr.32	s12, .L51
 481 0078 F4EEC67A 		vcmpe.f32	s15, s12
 482 007c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 483 0080 00DC     		bgt	.L50
 484 0082 38BD     		pop	{r3, r4, r5, pc}
 485              	.L50:
 486 0084 2D4B     		ldr	r3, .L51+4
 487 0086 1B68     		ldr	r3, [r3]
 488 0088 93ED5F6A 		vldr.32	s12, [r3, #380]
 489 008c D3ED534A 		vldr.32	s9, [r3, #332]
 490 0090 93ED605A 		vldr.32	s10, [r3, #384]
 491 0094 D3ED545A 		vldr.32	s11, [r3, #336]
 492 0098 B0EEC77A 		vabs.f32	s14, s14
 493 009c 66EE070A 		vmul.f32	s1, s12, s14
 494 00a0 24EE870A 		vmul.f32	s0, s9, s14
 495 00a4 F0EEE66A 		vabs.f32	s13, s13
 496 00a8 36EE877A 		vadd.f32	s14, s13, s14
 497 00ac E5EE260A 		vfma.f32	s1, s10, s13
 498 00b0 2846     		mov	r0, r5
 499 00b2 BDE83840 		pop	{r3, r4, r5, lr}
 500 00b6 A5EEA60A 		vfma.f32	s0, s11, s13
 501 00ba 27EE066A 		vmul.f32	s12, s14, s12
 502 00be 27EE247A 		vmul.f32	s14, s14, s9
 503 00c2 60EEA70A 		vmul.f32	s1, s1, s15
 504 00c6 26EE056A 		vmul.f32	s12, s12, s10
 505 00ca 20EE270A 		vmul.f32	s0, s0, s15
 506 00ce 27EE257A 		vmul.f32	s14, s14, s11
 507 00d2 C6EE200A 		vdiv.f32	s1, s12, s1
 508 00d6 87EE000A 		vdiv.f32	s0, s14, s0
 509 00da FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 510              	.L49:
 511 00de 174B     		ldr	r3, .L51+4
 512 00e0 1B68     		ldr	r3, [r3]	@ unaligned
 513 00e2 D3ED5C6A 		vldr.32	s13, [r3, #368]
ARM GAS  /tmp/ccpRsYvd.s 			page 10


 514 00e6 D3ED504A 		vldr.32	s9, [r3, #320]
 515 00ea 93ED5D5A 		vldr.32	s10, [r3, #372]
 516 00ee D3ED515A 		vldr.32	s11, [r3, #324]
 517 00f2 B0EEC77A 		vabs.f32	s14, s14
 518 00f6 66EE870A 		vmul.f32	s1, s13, s14
 519 00fa 24EE870A 		vmul.f32	s0, s9, s14
 520 00fe B0EEC66A 		vabs.f32	s12, s12
 521 0102 36EE077A 		vadd.f32	s14, s12, s14
 522 0106 E5EE060A 		vfma.f32	s1, s10, s12
 523 010a 2846     		mov	r0, r5
 524 010c A5EE860A 		vfma.f32	s0, s11, s12
 525 0110 67EE266A 		vmul.f32	s13, s14, s13
 526 0114 27EE247A 		vmul.f32	s14, s14, s9
 527 0118 60EEA70A 		vmul.f32	s1, s1, s15
 528 011c 66EE856A 		vmul.f32	s13, s13, s10
 529 0120 20EE270A 		vmul.f32	s0, s0, s15
 530 0124 27EE257A 		vmul.f32	s14, s14, s11
 531 0128 C6EEA00A 		vdiv.f32	s1, s13, s1
 532 012c 87EE000A 		vdiv.f32	s0, s14, s0
 533 0130 FFF7FEFF 		bl	_ZN3DDA25LimitSpeedAndAccelerationEff
 534 0134 86E7     		b	.L40
 535              	.L52:
 536 0136 00BF     		.align	2
 537              	.L51:
 538 0138 0AD7233C 		.word	1008981770
 539 013c 00000000 		.word	reprap
 540              		.size	_ZNK18CoreXYUVKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK18CoreXYUVKinematics25Li
 541              		.section	.text._ZN18CoreXYUVKinematicsD0Ev,"axG",%progbits,_ZN18CoreXYUVKinematicsD5Ev,comdat
 542              		.align	1
 543              		.p2align 2,,3
 544              		.weak	_ZN18CoreXYUVKinematicsD0Ev
 545              		.syntax unified
 546              		.thumb
 547              		.thumb_func
 548              		.fpu fpv4-sp-d16
 549              		.type	_ZN18CoreXYUVKinematicsD0Ev, %function
 550              	_ZN18CoreXYUVKinematicsD0Ev:
 551              		@ args = 0, pretend = 0, frame = 0
 552              		@ frame_needed = 0, uses_anonymous_args = 0
 553 0000 10B5     		push	{r4, lr}
 554 0002 6421     		movs	r1, #100
 555 0004 0446     		mov	r4, r0
 556 0006 FFF7FEFF 		bl	_ZdlPvj
 557 000a 2046     		mov	r0, r4
 558 000c 10BD     		pop	{r4, pc}
 559              		.size	_ZN18CoreXYUVKinematicsD0Ev, .-_ZN18CoreXYUVKinematicsD0Ev
 560 000e 00BF     		.section	.text._ZNK18CoreXYUVKinematics13DriveIsSharedEj,"ax",%progbits
 561              		.align	1
 562              		.p2align 2,,3
 563              		.global	_ZNK18CoreXYUVKinematics13DriveIsSharedEj
 564              		.syntax unified
 565              		.thumb
 566              		.thumb_func
 567              		.fpu fpv4-sp-d16
 568              		.type	_ZNK18CoreXYUVKinematics13DriveIsSharedEj, %function
 569              	_ZNK18CoreXYUVKinematics13DriveIsSharedEj:
 570              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccpRsYvd.s 			page 11


 571              		@ frame_needed = 0, uses_anonymous_args = 0
 572              		@ link register save eliminated.
 573 0000 0129     		cmp	r1, #1
 574 0002 05D9     		bls	.L57
 575 0004 0339     		subs	r1, r1, #3
 576 0006 0129     		cmp	r1, #1
 577 0008 8CBF     		ite	hi
 578 000a 0020     		movhi	r0, #0
 579 000c 0120     		movls	r0, #1
 580 000e 7047     		bx	lr
 581              	.L57:
 582 0010 0120     		movs	r0, #1
 583 0012 7047     		bx	lr
 584              		.size	_ZNK18CoreXYUVKinematics13DriveIsSharedEj, .-_ZNK18CoreXYUVKinematics13DriveIsSharedEj
 585              		.global	__aeabi_f2d
 586              		.section	.text._ZN18CoreXYUVKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 587              		.align	1
 588              		.p2align 2,,3
 589              		.global	_ZN18CoreXYUVKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 590              		.syntax unified
 591              		.thumb
 592              		.thumb_func
 593              		.fpu fpv4-sp-d16
 594              		.type	_ZN18CoreXYUVKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 595              	_ZN18CoreXYUVKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 596              		@ args = 4, pretend = 0, frame = 8
 597              		@ frame_needed = 0, uses_anonymous_args = 0
 598 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 599 0004 40F29D24 		movw	r4, #669
 600 0008 A142     		cmp	r1, r4
 601 000a 85B0     		sub	sp, sp, #20
 602 000c 25D1     		bne	.L59
 603 000e 00F1400B 		add	fp, r0, #64
 604 0012 4FF00008 		mov	r8, #0
 605 0016 294F     		ldr	r7, .L79
 606 0018 0393     		str	r3, [sp, #12]
 607 001a 8146     		mov	r9, r0
 608 001c 1646     		mov	r6, r2
 609 001e 5D46     		mov	r5, fp
 610 0020 4446     		mov	r4, r8
 611              	.L61:
 612 0022 3B69     		ldr	r3, [r7, #16]
 613 0024 2344     		add	r3, r3, r4
 614 0026 3046     		mov	r0, r6
 615 0028 93F85A14 		ldrb	r1, [r3, #1114]	@ zero_extendqisi2
 616 002c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 617 0030 0134     		adds	r4, r4, #1
 618 0032 8246     		mov	r10, r0
 619 0034 50B9     		cbnz	r0, .L76
 620              	.L60:
 621 0036 052C     		cmp	r4, #5
 622 0038 05F10405 		add	r5, r5, #4
 623 003c F1D1     		bne	.L61
 624 003e B8F1000F 		cmp	r8, #0
 625 0042 0FD0     		beq	.L77
 626              	.L62:
 627 0044 4046     		mov	r0, r8
ARM GAS  /tmp/ccpRsYvd.s 			page 12


 628 0046 05B0     		add	sp, sp, #20
 629              		@ sp needed
 630 0048 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 631              	.L76:
 632 004c 3046     		mov	r0, r6
 633 004e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 634 0052 D046     		mov	r8, r10
 635 0054 85ED000A 		vstr.32	s0, [r5]
 636 0058 EDE7     		b	.L60
 637              	.L59:
 638 005a 05B0     		add	sp, sp, #20
 639              		@ sp needed
 640 005c BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 641 0060 FFF7FEBF 		b	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 642              	.L77:
 643 0064 3046     		mov	r0, r6
 644 0066 4B21     		movs	r1, #75
 645 0068 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 646 006c 0028     		cmp	r0, #0
 647 006e E9D1     		bne	.L62
 648 0070 D9F80030 		ldr	r3, [r9]
 649 0074 124A     		ldr	r2, .L79+4
 650 0076 1B68     		ldr	r3, [r3]
 651 0078 9342     		cmp	r3, r2
 652 007a 19D1     		bne	.L78
 653 007c 114A     		ldr	r2, .L79+8
 654              	.L64:
 655 007e 1249     		ldr	r1, .L79+12
 656 0080 0398     		ldr	r0, [sp, #12]
 657 0082 124D     		ldr	r5, .L79+16
 658 0084 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 659 0088 0024     		movs	r4, #0
 660              	.L66:
 661 008a 3B69     		ldr	r3, [r7, #16]
 662 008c 5BF8040B 		ldr	r0, [fp], #4	@ float
 663 0090 2344     		add	r3, r3, r4
 664 0092 0134     		adds	r4, r4, #1
 665 0094 93F85A64 		ldrb	r6, [r3, #1114]	@ zero_extendqisi2
 666 0098 FFF7FEFF 		bl	__aeabi_f2d
 667 009c 3246     		mov	r2, r6
 668 009e CDE90001 		strd	r0, [sp]
 669 00a2 2946     		mov	r1, r5
 670 00a4 0398     		ldr	r0, [sp, #12]
 671 00a6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 672 00aa 052C     		cmp	r4, #5
 673 00ac EDD1     		bne	.L66
 674 00ae C9E7     		b	.L62
 675              	.L78:
 676 00b0 4846     		mov	r0, r9
 677 00b2 4146     		mov	r1, r8
 678 00b4 9847     		blx	r3
 679 00b6 0246     		mov	r2, r0
 680 00b8 E1E7     		b	.L64
 681              	.L80:
 682 00ba 00BF     		.align	2
 683              	.L79:
 684 00bc 00000000 		.word	reprap
ARM GAS  /tmp/ccpRsYvd.s 			page 13


 685 00c0 00000000 		.word	_ZNK18CoreXYUVKinematics7GetNameEb
 686 00c4 0C000000 		.word	.LC3
 687 00c8 00000000 		.word	.LC4
 688 00cc 24000000 		.word	.LC5
 689              		.size	_ZN18CoreXYUVKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN18CoreXYUVKinematics9C
 690              		.section	.text._ZN18CoreXYUVKinematicsC2Ev,"ax",%progbits
 691              		.align	1
 692              		.p2align 2,,3
 693              		.global	_ZN18CoreXYUVKinematicsC2Ev
 694              		.syntax unified
 695              		.thumb
 696              		.thumb_func
 697              		.fpu fpv4-sp-d16
 698              		.type	_ZN18CoreXYUVKinematicsC2Ev, %function
 699              	_ZN18CoreXYUVKinematicsC2Ev:
 700              		@ args = 0, pretend = 0, frame = 0
 701              		@ frame_needed = 0, uses_anonymous_args = 0
 702 0000 10B5     		push	{r4, lr}
 703 0002 0821     		movs	r1, #8
 704 0004 0446     		mov	r4, r0
 705 0006 FFF7FEFF 		bl	_ZN18CoreBaseKinematicsC2E14KinematicsType
 706 000a 024B     		ldr	r3, .L83
 707 000c 2360     		str	r3, [r4]
 708 000e 2046     		mov	r0, r4
 709 0010 10BD     		pop	{r4, pc}
 710              	.L84:
 711 0012 00BF     		.align	2
 712              	.L83:
 713 0014 08000000 		.word	.LANCHOR0+8
 714              		.size	_ZN18CoreXYUVKinematicsC2Ev, .-_ZN18CoreXYUVKinematicsC2Ev
 715              		.global	_ZN18CoreXYUVKinematicsC1Ev
 716              		.thumb_set _ZN18CoreXYUVKinematicsC1Ev,_ZN18CoreXYUVKinematicsC2Ev
 717              		.global	_ZTV18CoreXYUVKinematics
 718              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 719              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 720              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 721              	_ZL28cpu_irq_prev_interrupt_state:
 722 0000 00       		.space	1
 723              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 724              		.align	2
 725              		.type	_ZL32cpu_irq_critical_section_counter, %object
 726              		.size	_ZL32cpu_irq_critical_section_counter, 4
 727              	_ZL32cpu_irq_critical_section_counter:
 728 0000 00000000 		.space	4
 729              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 730              		.align	2
 731              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 732              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 733              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 734 0000 00000000 		.space	4
 735              		.section	.rodata._ZN18CoreXYUVKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%pro
 736              		.align	2
 737              	.LC4:
 738 0000 4B696E65 		.ascii	"Kinematics is %s with axis factors\000"
 738      6D617469 
 738      63732069 
 738      73202573 
ARM GAS  /tmp/ccpRsYvd.s 			page 14


 738      20776974 
 739 0023 00       		.space	1
 740              	.LC5:
 741 0024 2025633A 		.ascii	" %c:%.3f\000"
 741      252E3366 
 741      00
 742              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 743              		.align	2
 744              	.LC1:
 745 0000 58595A00 		.ascii	"XYZ\000"
 746              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 747              		.align	2
 748              	.LC0:
 749 0000 58595A55 		.ascii	"XYZUVWABC\000"
 749      56574142 
 749      4300
 750              		.section	.rodata._ZNK18CoreXYUVKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 751              		.align	2
 752              	.LC2:
 753 0000 636F7265 		.ascii	"coreXYUV\000"
 753      58595556 
 753      00
 754 0009 000000   		.space	3
 755              	.LC3:
 756 000c 436F7265 		.ascii	"CoreXYUV\000"
 756      58595556 
 756      00
 757              		.section	.rodata._ZTV18CoreXYUVKinematics,"a",%progbits
 758              		.align	2
 759              		.set	.LANCHOR0,. + 0
 760              		.type	_ZTV18CoreXYUVKinematics, %object
 761              		.size	_ZTV18CoreXYUVKinematics, 132
 762              	_ZTV18CoreXYUVKinematics:
 763 0000 00000000 		.word	0
 764 0004 00000000 		.word	0
 765 0008 00000000 		.word	_ZNK18CoreXYUVKinematics7GetNameEb
 766 000c 00000000 		.word	_ZN18CoreXYUVKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 767 0010 00000000 		.word	_ZNK18CoreXYUVKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 768 0014 00000000 		.word	_ZNK18CoreXYUVKinematics21MotorStepsToCartesianEPKlPKfjjPf
 769 0018 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 770 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 771 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 772 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 773 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 774 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 775 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 776 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 777 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 778 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 779 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 780 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 781 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 782 004c 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRm
 783 0050 00000000 		.word	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj
 784 0054 00000000 		.word	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 785 0058 00000000 		.word	_ZNK18CoreBaseKinematics13GetHomingModeEv
 786 005c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
ARM GAS  /tmp/ccpRsYvd.s 			page 15


 787 0060 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 788 0064 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 789 0068 00000000 		.word	_ZNK18CoreXYUVKinematics25LimitSpeedAndAccelerationER3DDAPKf
 790 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 791 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 792 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 793 0078 00000000 		.word	_ZN18CoreXYUVKinematicsD1Ev
 794 007c 00000000 		.word	_ZN18CoreXYUVKinematicsD0Ev
 795 0080 00000000 		.word	_ZNK18CoreXYUVKinematics13DriveIsSharedEj
 796              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
