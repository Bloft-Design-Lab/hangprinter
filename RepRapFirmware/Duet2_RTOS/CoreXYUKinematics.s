ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBabbyU.s 			page 1


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBabbyU.s 			page 2


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBabbyU.s 			page 3


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBabbyU.s 			page 4


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
 221              		.section	.text._ZNK17CoreXYUKinematics7GetNameEb,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	_ZNK17CoreXYUKinematics7GetNameEb
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBabbyU.s 			page 5


 229              		.type	_ZNK17CoreXYUKinematics7GetNameEb, %function
 230              	_ZNK17CoreXYUKinematics7GetNameEb:
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
 245              		.size	_ZNK17CoreXYUKinematics7GetNameEb, .-_ZNK17CoreXYUKinematics7GetNameEb
 246              		.section	.text._ZNK17CoreXYUKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 247              		.align	1
 248              		.p2align 2,,3
 249              		.global	_ZNK17CoreXYUKinematics21MotorStepsToCartesianEPKlPKfjjPf
 250              		.syntax unified
 251              		.thumb
 252              		.thumb_func
 253              		.fpu fpv4-sp-d16
 254              		.type	_ZNK17CoreXYUKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 255              	_ZNK17CoreXYUKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 256              		@ args = 8, pretend = 0, frame = 0
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258              		@ link register save eliminated.
 259 0000 D1ED016A 		vldr.32	s13, [r1, #4]	@ int
 260 0004 92ED007A 		vldr.32	s14, [r2]
 261 0008 92ED016A 		vldr.32	s12, [r2, #4]
 262 000c D2ED037A 		vldr.32	s15, [r2, #12]
 263 0010 D2ED045A 		vldr.32	s11, [r2, #16]
 264 0014 F8EEE63A 		vcvt.f32.s32	s7, s13
 265 0018 D1ED006A 		vldr.32	s13, [r1]	@ int
 266 001c 27EE233A 		vmul.f32	s6, s14, s7
 267 0020 B8EEE64A 		vcvt.f32.s32	s8, s13
 268 0024 D0ED186A 		vldr.32	s13, [r0, #96]
 269 0028 A6EE043A 		vfma.f32	s6, s12, s8
 270 002c 30B4     		push	{r4, r5}
 271 002e 27EE066A 		vmul.f32	s12, s14, s12
 272 0032 76EEA66A 		vadd.f32	s13, s13, s13
 273 0036 91ED047A 		vldr.32	s14, [r1, #16]	@ int
 274 003a 039C     		ldr	r4, [sp, #12]
 275 003c 8D68     		ldr	r5, [r1, #8]
 276 003e F8EEC74A 		vcvt.f32.s32	s9, s14
 277 0042 66EE866A 		vmul.f32	s13, s13, s12
 278 0046 91ED037A 		vldr.32	s14, [r1, #12]	@ int
 279 004a B8EEC75A 		vcvt.f32.s32	s10, s14
 280 004e 83EE267A 		vdiv.f32	s14, s6, s13
 281 0052 052B     		cmp	r3, #5
 282 0054 67EEA55A 		vmul.f32	s11, s15, s11
 283 0058 84ED007A 		vstr.32	s14, [r4]
 284 005c D2ED006A 		vldr.32	s13, [r2]
 285 0060 D2ED017A 		vldr.32	s15, [r2, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBabbyU.s 			page 6


 286 0064 90ED197A 		vldr.32	s14, [r0, #100]
 287 0068 66EEE36A 		vnmul.f32	s13, s13, s7
 288 006c 37EE077A 		vadd.f32	s14, s14, s14
 289 0070 E4EE276A 		vfma.f32	s13, s8, s15
 290 0074 27EE067A 		vmul.f32	s14, s14, s12
 291 0078 07EE905A 		vmov	s15, r5	@ int
 292 007c B8EEE76A 		vcvt.f32.s32	s12, s15
 293 0080 C6EE877A 		vdiv.f32	s15, s13, s14
 294 0084 C4ED017A 		vstr.32	s15, [r4, #4]
 295 0088 D2ED036A 		vldr.32	s13, [r2, #12]
 296 008c D2ED047A 		vldr.32	s15, [r2, #16]
 297 0090 90ED1C7A 		vldr.32	s14, [r0, #112]
 298 0094 64EEA66A 		vmul.f32	s13, s9, s13
 299 0098 37EE077A 		vadd.f32	s14, s14, s14
 300 009c E5EE276A 		vfma.f32	s13, s10, s15
 301 00a0 27EE257A 		vmul.f32	s14, s14, s11
 302 00a4 C6EE877A 		vdiv.f32	s15, s13, s14
 303 00a8 C4ED037A 		vstr.32	s15, [r4, #12]
 304 00ac 92ED037A 		vldr.32	s14, [r2, #12]
 305 00b0 D2ED046A 		vldr.32	s13, [r2, #16]
 306 00b4 D0ED1C7A 		vldr.32	s15, [r0, #112]
 307 00b8 27EE647A 		vnmul.f32	s14, s14, s9
 308 00bc 77EEA77A 		vadd.f32	s15, s15, s15
 309 00c0 A5EE267A 		vfma.f32	s14, s10, s13
 310 00c4 67EEA57A 		vmul.f32	s15, s15, s11
 311 00c8 C7EE276A 		vdiv.f32	s13, s14, s15
 312 00cc C4ED046A 		vstr.32	s13, [r4, #16]
 313 00d0 92ED027A 		vldr.32	s14, [r2, #8]
 314 00d4 C6EE077A 		vdiv.f32	s15, s12, s14
 315 00d8 C4ED027A 		vstr.32	s15, [r4, #8]
 316 00dc 14D9     		bls	.L27
 317 00de 01EB8303 		add	r3, r1, r3, lsl #2
 318 00e2 181F     		subs	r0, r3, #4
 319 00e4 1031     		adds	r1, r1, #16
 320 00e6 1432     		adds	r2, r2, #20
 321 00e8 04F11403 		add	r3, r4, #20
 322              	.L29:
 323 00ec 51F8044F 		ldr	r4, [r1, #4]!
 324 00f0 F2EC016A 		vldmia.32	r2!, {s13}
 325 00f4 07EE904A 		vmov	s15, r4	@ int
 326 00f8 F8EEE77A 		vcvt.f32.s32	s15, s15
 327 00fc 8142     		cmp	r1, r0
 328 00fe 87EEA67A 		vdiv.f32	s14, s15, s13
 329 0102 A3EC017A 		vstmia.32	r3!, {s14}
 330 0106 F1D1     		bne	.L29
 331              	.L27:
 332 0108 30BC     		pop	{r4, r5}
 333 010a 7047     		bx	lr
 334              		.size	_ZNK17CoreXYUKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK17CoreXYUKinematics21MotorS
 335              		.section	.text._ZN17CoreXYUKinematicsD2Ev,"axG",%progbits,_ZN17CoreXYUKinematicsD5Ev,comdat
 336              		.align	1
 337              		.p2align 2,,3
 338              		.weak	_ZN17CoreXYUKinematicsD2Ev
 339              		.syntax unified
 340              		.thumb
 341              		.thumb_func
 342              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBabbyU.s 			page 7


 343              		.type	_ZN17CoreXYUKinematicsD2Ev, %function
 344              	_ZN17CoreXYUKinematicsD2Ev:
 345              		@ args = 0, pretend = 0, frame = 0
 346              		@ frame_needed = 0, uses_anonymous_args = 0
 347              		@ link register save eliminated.
 348 0000 7047     		bx	lr
 349              		.size	_ZN17CoreXYUKinematicsD2Ev, .-_ZN17CoreXYUKinematicsD2Ev
 350              		.weak	_ZN17CoreXYUKinematicsD1Ev
 351              		.thumb_set _ZN17CoreXYUKinematicsD1Ev,_ZN17CoreXYUKinematicsD2Ev
 352 0002 00BF     		.section	.text._ZNK17CoreXYUKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 353              		.align	1
 354              		.p2align 2,,3
 355              		.global	_ZNK17CoreXYUKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 356              		.syntax unified
 357              		.thumb
 358              		.thumb_func
 359              		.fpu fpv4-sp-d16
 360              		.type	_ZNK17CoreXYUKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 361              	_ZNK17CoreXYUKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 362              		@ args = 12, pretend = 0, frame = 0
 363              		@ frame_needed = 0, uses_anonymous_args = 0
 364 0000 91ED010A 		vldr.32	s0, [r1, #4]
 365 0004 D0ED196A 		vldr.32	s13, [r0, #100]
 366 0008 91ED007A 		vldr.32	s14, [r1]
 367 000c D0ED187A 		vldr.32	s15, [r0, #96]
 368 0010 20EE260A 		vmul.f32	s0, s0, s13
 369 0014 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 370 0018 A7EE270A 		vfma.f32	s0, s14, s15
 371 001c 0C46     		mov	r4, r1
 372 001e 8046     		mov	r8, r0
 373 0020 D2ED007A 		vldr.32	s15, [r2]
 374 0024 079D     		ldr	r5, [sp, #28]
 375 0026 20EE270A 		vmul.f32	s0, s0, s15
 376 002a 1646     		mov	r6, r2
 377 002c 1F46     		mov	r7, r3
 378 002e FFF7FEFF 		bl	lrintf
 379 0032 94ED016A 		vldr.32	s12, [r4, #4]
 380 0036 98ED190A 		vldr.32	s0, [r8, #100]
 381 003a D4ED006A 		vldr.32	s13, [r4]
 382 003e 98ED187A 		vldr.32	s14, [r8, #96]
 383 0042 D6ED017A 		vldr.32	s15, [r6, #4]
 384 0046 2860     		str	r0, [r5]
 385 0048 20EE460A 		vnmul.f32	s0, s0, s12
 386 004c A6EE870A 		vfma.f32	s0, s13, s14
 387 0050 20EE270A 		vmul.f32	s0, s0, s15
 388 0054 FFF7FEFF 		bl	lrintf
 389 0058 D6ED027A 		vldr.32	s15, [r6, #8]
 390 005c 94ED020A 		vldr.32	s0, [r4, #8]
 391 0060 6860     		str	r0, [r5, #4]
 392 0062 20EE270A 		vmul.f32	s0, s0, s15
 393 0066 FFF7FEFF 		bl	lrintf
 394 006a 98ED196A 		vldr.32	s12, [r8, #100]
 395 006e 94ED010A 		vldr.32	s0, [r4, #4]
 396 0072 D4ED036A 		vldr.32	s13, [r4, #12]
 397 0076 98ED1B7A 		vldr.32	s14, [r8, #108]
 398 007a D6ED037A 		vldr.32	s15, [r6, #12]
 399 007e A860     		str	r0, [r5, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBabbyU.s 			page 8


 400 0080 20EE060A 		vmul.f32	s0, s0, s12
 401 0084 A6EE870A 		vfma.f32	s0, s13, s14
 402 0088 20EE270A 		vmul.f32	s0, s0, s15
 403 008c FFF7FEFF 		bl	lrintf
 404 0090 94ED016A 		vldr.32	s12, [r4, #4]
 405 0094 98ED190A 		vldr.32	s0, [r8, #100]
 406 0098 D4ED036A 		vldr.32	s13, [r4, #12]
 407 009c 98ED1B7A 		vldr.32	s14, [r8, #108]
 408 00a0 D6ED047A 		vldr.32	s15, [r6, #16]
 409 00a4 E860     		str	r0, [r5, #12]
 410 00a6 20EE460A 		vnmul.f32	s0, s0, s12
 411 00aa A6EE870A 		vfma.f32	s0, s13, s14
 412 00ae 20EE270A 		vmul.f32	s0, s0, s15
 413 00b2 FFF7FEFF 		bl	lrintf
 414 00b6 052F     		cmp	r7, #5
 415 00b8 2861     		str	r0, [r5, #16]
 416 00ba 10D9     		bls	.L34
 417 00bc 04EB8707 		add	r7, r4, r7, lsl #2
 418 00c0 1436     		adds	r6, r6, #20
 419 00c2 1035     		adds	r5, r5, #16
 420 00c4 1434     		adds	r4, r4, #20
 421              	.L35:
 422 00c6 B4EC010A 		vldmia.32	r4!, {s0}
 423 00ca F6EC017A 		vldmia.32	r6!, {s15}
 424 00ce 20EE270A 		vmul.f32	s0, s0, s15
 425 00d2 FFF7FEFF 		bl	lrintf
 426 00d6 BC42     		cmp	r4, r7
 427 00d8 45F8040F 		str	r0, [r5, #4]!
 428 00dc F3D1     		bne	.L35
 429              	.L34:
 430 00de 0120     		movs	r0, #1
 431 00e0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 432              		.size	_ZNK17CoreXYUKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK17CoreXYUKinematics21Carte
 433              		.section	.text._ZNK17CoreXYUKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 434              		.align	1
 435              		.p2align 2,,3
 436              		.global	_ZNK17CoreXYUKinematics25LimitSpeedAndAccelerationER3DDAPKf
 437              		.syntax unified
 438              		.thumb
 439              		.thumb_func
 440              		.fpu fpv4-sp-d16
 441              		.type	_ZNK17CoreXYUKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 442              	_ZNK17CoreXYUKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 443              		@ args = 0, pretend = 0, frame = 0
 444              		@ frame_needed = 0, uses_anonymous_args = 0
 445 0000 38B5     		push	{r3, r4, r5, lr}
 446 0002 D2ED006A 		vldr.32	s13, [r2]
 447 0006 2DED028B 		vpush.64	{d8}
 448 000a 92ED018A 		vldr.32	s16, [r2, #4]
 449 000e 76EE887A 		vadd.f32	s15, s13, s16
 450 0012 1446     		mov	r4, r2
 451 0014 F0EEE77A 		vabs.f32	s15, s15
 452 0018 F4EE677A 		vcmp.f32	s15, s15
 453 001c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 454 0020 36EEC87A 		vsub.f32	s14, s13, s16
 455 0024 0D46     		mov	r5, r1
 456 0026 08D6     		bvs	.L39
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBabbyU.s 			page 9


 457 0028 B0EEC77A 		vabs.f32	s14, s14
 458 002c F4EEC77A 		vcmpe.f32	s15, s14
 459 0030 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 460 0034 D8BF     		it	le
 461 0036 F0EE477A 		vmovle.f32	s15, s14
 462              	.L39:
 463 003a 9FED417A 		vldr.32	s14, .L51
 464 003e F4EEC77A 		vcmpe.f32	s15, s14
 465 0042 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 466 0046 4EDC     		bgt	.L49
 467              	.L40:
 468 0048 94ED037A 		vldr.32	s14, [r4, #12]
 469 004c 78EE077A 		vadd.f32	s15, s16, s14
 470 0050 77EE486A 		vsub.f32	s13, s14, s16
 471 0054 F0EEE77A 		vabs.f32	s15, s15
 472 0058 F4EE677A 		vcmp.f32	s15, s15
 473 005c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 474 0060 F0EEE66A 		vabs.f32	s13, s13
 475 0064 06D6     		bvs	.L42
 476 0066 F4EEE67A 		vcmpe.f32	s15, s13
 477 006a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 478 006e D8BF     		it	le
 479 0070 F0EE667A 		vmovle.f32	s15, s13
 480              	.L42:
 481 0074 DFED326A 		vldr.32	s13, .L51
 482 0078 F4EEE67A 		vcmpe.f32	s15, s13
 483 007c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 484 0080 02DC     		bgt	.L50
 485 0082 BDEC028B 		vldm	sp!, {d8}
 486 0086 38BD     		pop	{r3, r4, r5, pc}
 487              	.L50:
 488 0088 2E4B     		ldr	r3, .L51+4
 489 008a 5B68     		ldr	r3, [r3, #4]
 490 008c 93ED625A 		vldr.32	s10, [r3, #392]
 491 0090 D3ED6E6A 		vldr.32	s13, [r3, #440]
 492 0094 93ED606A 		vldr.32	s12, [r3, #384]
 493 0098 D3ED6C5A 		vldr.32	s11, [r3, #432]
 494 009c B0EEC88A 		vabs.f32	s16, s16
 495 00a0 28EE050A 		vmul.f32	s0, s16, s10
 496 00a4 B0EEC77A 		vabs.f32	s14, s14
 497 00a8 68EE260A 		vmul.f32	s1, s16, s13
 498 00ac A7EE060A 		vfma.f32	s0, s14, s12
 499 00b0 2846     		mov	r0, r5
 500 00b2 37EE088A 		vadd.f32	s16, s14, s16
 501 00b6 20EE270A 		vmul.f32	s0, s0, s15
 502 00ba 68EE266A 		vmul.f32	s13, s16, s13
 503 00be 28EE058A 		vmul.f32	s16, s16, s10
 504 00c2 E7EE250A 		vfma.f32	s1, s14, s11
 505 00c6 28EE068A 		vmul.f32	s16, s16, s12
 506 00ca 60EEA70A 		vmul.f32	s1, s1, s15
 507 00ce 88EE000A 		vdiv.f32	s0, s16, s0
 508 00d2 BDEC028B 		vldm	sp!, {d8}
 509 00d6 BDE83840 		pop	{r3, r4, r5, lr}
 510 00da 66EEA56A 		vmul.f32	s13, s13, s11
 511 00de C6EEA00A 		vdiv.f32	s1, s13, s1
 512 00e2 FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 513              	.L49:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBabbyU.s 			page 10


 514 00e6 174B     		ldr	r3, .L51+4
 515 00e8 5B68     		ldr	r3, [r3, #4]	@ unaligned
 516 00ea 93ED6B6A 		vldr.32	s12, [r3, #428]
 517 00ee D3ED5F4A 		vldr.32	s9, [r3, #380]
 518 00f2 93ED6C5A 		vldr.32	s10, [r3, #432]
 519 00f6 D3ED605A 		vldr.32	s11, [r3, #384]
 520 00fa B0EEC87A 		vabs.f32	s14, s16
 521 00fe 67EE060A 		vmul.f32	s1, s14, s12
 522 0102 27EE240A 		vmul.f32	s0, s14, s9
 523 0106 F0EEE66A 		vabs.f32	s13, s13
 524 010a 36EE877A 		vadd.f32	s14, s13, s14
 525 010e E6EE850A 		vfma.f32	s1, s13, s10
 526 0112 2846     		mov	r0, r5
 527 0114 A6EEA50A 		vfma.f32	s0, s13, s11
 528 0118 27EE066A 		vmul.f32	s12, s14, s12
 529 011c 27EE247A 		vmul.f32	s14, s14, s9
 530 0120 60EEA70A 		vmul.f32	s1, s1, s15
 531 0124 26EE056A 		vmul.f32	s12, s12, s10
 532 0128 20EE270A 		vmul.f32	s0, s0, s15
 533 012c 27EE257A 		vmul.f32	s14, s14, s11
 534 0130 C6EE200A 		vdiv.f32	s1, s12, s1
 535 0134 87EE000A 		vdiv.f32	s0, s14, s0
 536 0138 FFF7FEFF 		bl	_ZN3DDA25LimitSpeedAndAccelerationEff
 537 013c 84E7     		b	.L40
 538              	.L52:
 539 013e 00BF     		.align	2
 540              	.L51:
 541 0140 0AD7233C 		.word	1008981770
 542 0144 00000000 		.word	reprap
 543              		.size	_ZNK17CoreXYUKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK17CoreXYUKinematics25Limi
 544              		.section	.text._ZN17CoreXYUKinematicsD0Ev,"axG",%progbits,_ZN17CoreXYUKinematicsD5Ev,comdat
 545              		.align	1
 546              		.p2align 2,,3
 547              		.weak	_ZN17CoreXYUKinematicsD0Ev
 548              		.syntax unified
 549              		.thumb
 550              		.thumb_func
 551              		.fpu fpv4-sp-d16
 552              		.type	_ZN17CoreXYUKinematicsD0Ev, %function
 553              	_ZN17CoreXYUKinematicsD0Ev:
 554              		@ args = 0, pretend = 0, frame = 0
 555              		@ frame_needed = 0, uses_anonymous_args = 0
 556 0000 10B5     		push	{r4, lr}
 557 0002 8421     		movs	r1, #132
 558 0004 0446     		mov	r4, r0
 559 0006 FFF7FEFF 		bl	_ZdlPvj
 560 000a 2046     		mov	r0, r4
 561 000c 10BD     		pop	{r4, pc}
 562              		.size	_ZN17CoreXYUKinematicsD0Ev, .-_ZN17CoreXYUKinematicsD0Ev
 563 000e 00BF     		.section	.text._ZNK17CoreXYUKinematics13DriveIsSharedEj,"ax",%progbits
 564              		.align	1
 565              		.p2align 2,,3
 566              		.global	_ZNK17CoreXYUKinematics13DriveIsSharedEj
 567              		.syntax unified
 568              		.thumb
 569              		.thumb_func
 570              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBabbyU.s 			page 11


 571              		.type	_ZNK17CoreXYUKinematics13DriveIsSharedEj, %function
 572              	_ZNK17CoreXYUKinematics13DriveIsSharedEj:
 573              		@ args = 0, pretend = 0, frame = 0
 574              		@ frame_needed = 0, uses_anonymous_args = 0
 575              		@ link register save eliminated.
 576 0000 0129     		cmp	r1, #1
 577 0002 05D9     		bls	.L57
 578 0004 0339     		subs	r1, r1, #3
 579 0006 0129     		cmp	r1, #1
 580 0008 8CBF     		ite	hi
 581 000a 0020     		movhi	r0, #0
 582 000c 0120     		movls	r0, #1
 583 000e 7047     		bx	lr
 584              	.L57:
 585 0010 0120     		movs	r0, #1
 586 0012 7047     		bx	lr
 587              		.size	_ZNK17CoreXYUKinematics13DriveIsSharedEj, .-_ZNK17CoreXYUKinematics13DriveIsSharedEj
 588              		.global	__aeabi_f2d
 589              		.section	.text._ZN17CoreXYUKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 590              		.align	1
 591              		.p2align 2,,3
 592              		.global	_ZN17CoreXYUKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 593              		.syntax unified
 594              		.thumb
 595              		.thumb_func
 596              		.fpu fpv4-sp-d16
 597              		.type	_ZN17CoreXYUKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 598              	_ZN17CoreXYUKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 599              		@ args = 4, pretend = 0, frame = 8
 600              		@ frame_needed = 0, uses_anonymous_args = 0
 601 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 602 0004 40F29D24 		movw	r4, #669
 603 0008 A142     		cmp	r1, r4
 604 000a 85B0     		sub	sp, sp, #20
 605 000c 25D1     		bne	.L59
 606 000e 00F1600B 		add	fp, r0, #96
 607 0012 4FF00008 		mov	r8, #0
 608 0016 294F     		ldr	r7, .L79
 609 0018 0393     		str	r3, [sp, #12]
 610 001a 8146     		mov	r9, r0
 611 001c 1646     		mov	r6, r2
 612 001e 5D46     		mov	r5, fp
 613 0020 4446     		mov	r4, r8
 614              	.L61:
 615 0022 7B69     		ldr	r3, [r7, #20]
 616 0024 2344     		add	r3, r3, r4
 617 0026 3046     		mov	r0, r6
 618 0028 93F81015 		ldrb	r1, [r3, #1296]	@ zero_extendqisi2
 619 002c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 620 0030 0134     		adds	r4, r4, #1
 621 0032 8246     		mov	r10, r0
 622 0034 50B9     		cbnz	r0, .L76
 623              	.L60:
 624 0036 052C     		cmp	r4, #5
 625 0038 05F10405 		add	r5, r5, #4
 626 003c F1D1     		bne	.L61
 627 003e B8F1000F 		cmp	r8, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBabbyU.s 			page 12


 628 0042 0FD0     		beq	.L77
 629              	.L62:
 630 0044 4046     		mov	r0, r8
 631 0046 05B0     		add	sp, sp, #20
 632              		@ sp needed
 633 0048 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 634              	.L76:
 635 004c 3046     		mov	r0, r6
 636 004e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 637 0052 D046     		mov	r8, r10
 638 0054 85ED000A 		vstr.32	s0, [r5]
 639 0058 EDE7     		b	.L60
 640              	.L59:
 641 005a 05B0     		add	sp, sp, #20
 642              		@ sp needed
 643 005c BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 644 0060 FFF7FEBF 		b	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 645              	.L77:
 646 0064 3046     		mov	r0, r6
 647 0066 4B21     		movs	r1, #75
 648 0068 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 649 006c 0028     		cmp	r0, #0
 650 006e E9D1     		bne	.L62
 651 0070 D9F80030 		ldr	r3, [r9]
 652 0074 124A     		ldr	r2, .L79+4
 653 0076 1B68     		ldr	r3, [r3]
 654 0078 9342     		cmp	r3, r2
 655 007a 19D1     		bne	.L78
 656 007c 114A     		ldr	r2, .L79+8
 657              	.L64:
 658 007e 1249     		ldr	r1, .L79+12
 659 0080 0398     		ldr	r0, [sp, #12]
 660 0082 124D     		ldr	r5, .L79+16
 661 0084 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 662 0088 0024     		movs	r4, #0
 663              	.L66:
 664 008a 7B69     		ldr	r3, [r7, #20]
 665 008c 5BF8040B 		ldr	r0, [fp], #4	@ float
 666 0090 2344     		add	r3, r3, r4
 667 0092 0134     		adds	r4, r4, #1
 668 0094 93F81065 		ldrb	r6, [r3, #1296]	@ zero_extendqisi2
 669 0098 FFF7FEFF 		bl	__aeabi_f2d
 670 009c 3246     		mov	r2, r6
 671 009e CDE90001 		strd	r0, [sp]
 672 00a2 2946     		mov	r1, r5
 673 00a4 0398     		ldr	r0, [sp, #12]
 674 00a6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 675 00aa 052C     		cmp	r4, #5
 676 00ac EDD1     		bne	.L66
 677 00ae C9E7     		b	.L62
 678              	.L78:
 679 00b0 4846     		mov	r0, r9
 680 00b2 4146     		mov	r1, r8
 681 00b4 9847     		blx	r3
 682 00b6 0246     		mov	r2, r0
 683 00b8 E1E7     		b	.L64
 684              	.L80:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBabbyU.s 			page 13


 685 00ba 00BF     		.align	2
 686              	.L79:
 687 00bc 00000000 		.word	reprap
 688 00c0 00000000 		.word	_ZNK17CoreXYUKinematics7GetNameEb
 689 00c4 08000000 		.word	.LC3
 690 00c8 00000000 		.word	.LC4
 691 00cc 24000000 		.word	.LC5
 692              		.size	_ZN17CoreXYUKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN17CoreXYUKinematics9Con
 693              		.section	.text._ZN17CoreXYUKinematicsC2Ev,"ax",%progbits
 694              		.align	1
 695              		.p2align 2,,3
 696              		.global	_ZN17CoreXYUKinematicsC2Ev
 697              		.syntax unified
 698              		.thumb
 699              		.thumb_func
 700              		.fpu fpv4-sp-d16
 701              		.type	_ZN17CoreXYUKinematicsC2Ev, %function
 702              	_ZN17CoreXYUKinematicsC2Ev:
 703              		@ args = 0, pretend = 0, frame = 0
 704              		@ frame_needed = 0, uses_anonymous_args = 0
 705 0000 10B5     		push	{r4, lr}
 706 0002 0521     		movs	r1, #5
 707 0004 0446     		mov	r4, r0
 708 0006 FFF7FEFF 		bl	_ZN18CoreBaseKinematicsC2E14KinematicsType
 709 000a 024B     		ldr	r3, .L83
 710 000c 2360     		str	r3, [r4]
 711 000e 2046     		mov	r0, r4
 712 0010 10BD     		pop	{r4, pc}
 713              	.L84:
 714 0012 00BF     		.align	2
 715              	.L83:
 716 0014 08000000 		.word	.LANCHOR0+8
 717              		.size	_ZN17CoreXYUKinematicsC2Ev, .-_ZN17CoreXYUKinematicsC2Ev
 718              		.global	_ZN17CoreXYUKinematicsC1Ev
 719              		.thumb_set _ZN17CoreXYUKinematicsC1Ev,_ZN17CoreXYUKinematicsC2Ev
 720              		.global	_ZTV17CoreXYUKinematics
 721              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 722              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 723              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 724              	_ZL28cpu_irq_prev_interrupt_state:
 725 0000 00       		.space	1
 726              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 727              		.align	2
 728              		.type	_ZL32cpu_irq_critical_section_counter, %object
 729              		.size	_ZL32cpu_irq_critical_section_counter, 4
 730              	_ZL32cpu_irq_critical_section_counter:
 731 0000 00000000 		.space	4
 732              		.section	.rodata._ZN17CoreXYUKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%prog
 733              		.align	2
 734              	.LC4:
 735 0000 4B696E65 		.ascii	"Kinematics is %s with axis factors\000"
 735      6D617469 
 735      63732069 
 735      73202573 
 735      20776974 
 736 0023 00       		.space	1
 737              	.LC5:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBabbyU.s 			page 14


 738 0024 2025633A 		.ascii	" %c:%3f\000"
 738      25336600 
 739              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 740              		.align	2
 741              	.LC1:
 742 0000 58595A00 		.ascii	"XYZ\000"
 743              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 744              		.align	2
 745              	.LC0:
 746 0000 58595A55 		.ascii	"XYZUVWABC\000"
 746      56574142 
 746      4300
 747              		.section	.rodata._ZNK17CoreXYUKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 748              		.align	2
 749              	.LC2:
 750 0000 636F7265 		.ascii	"coreXYU\000"
 750      58595500 
 751              	.LC3:
 752 0008 436F7265 		.ascii	"CoreXYU\000"
 752      58595500 
 753              		.section	.rodata._ZTV17CoreXYUKinematics,"a",%progbits
 754              		.align	2
 755              		.set	.LANCHOR0,. + 0
 756              		.type	_ZTV17CoreXYUKinematics, %object
 757              		.size	_ZTV17CoreXYUKinematics, 132
 758              	_ZTV17CoreXYUKinematics:
 759 0000 00000000 		.word	0
 760 0004 00000000 		.word	0
 761 0008 00000000 		.word	_ZNK17CoreXYUKinematics7GetNameEb
 762 000c 00000000 		.word	_ZN17CoreXYUKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 763 0010 00000000 		.word	_ZNK17CoreXYUKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 764 0014 00000000 		.word	_ZNK17CoreXYUKinematics21MotorStepsToCartesianEPKlPKfjjPf
 765 0018 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 766 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 767 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 768 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 769 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 770 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 771 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 772 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 773 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 774 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 775 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 776 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 777 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 778 004c 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef
 779 0050 00000000 		.word	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj
 780 0054 00000000 		.word	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 781 0058 00000000 		.word	_ZNK18CoreBaseKinematics13GetHomingModeEv
 782 005c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 783 0060 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 784 0064 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 785 0068 00000000 		.word	_ZNK17CoreXYUKinematics25LimitSpeedAndAccelerationER3DDAPKf
 786 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 787 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 788 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 789 0078 00000000 		.word	_ZN17CoreXYUKinematicsD1Ev
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccBabbyU.s 			page 15


 790 007c 00000000 		.word	_ZN17CoreXYUKinematicsD0Ev
 791 0080 00000000 		.word	_ZNK17CoreXYUKinematics13DriveIsSharedEj
 792              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
