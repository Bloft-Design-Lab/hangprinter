ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2zNHAg.s 			page 1


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2zNHAg.s 			page 2


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2zNHAg.s 			page 3


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2zNHAg.s 			page 4


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
 221              		.section	.text._ZNK18CoreXYUVKinematics7GetNameEb,"ax",%progbits
 222              		.align	1
 223              		.p2align 2,,3
 224              		.global	_ZNK18CoreXYUVKinematics7GetNameEb
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2zNHAg.s 			page 5


 229              		.type	_ZNK18CoreXYUVKinematics7GetNameEb, %function
 230              	_ZNK18CoreXYUVKinematics7GetNameEb:
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
 243 000c 0C000000 		.word	.LC3
 244 0010 00000000 		.word	.LC2
 245              		.size	_ZNK18CoreXYUVKinematics7GetNameEb, .-_ZNK18CoreXYUVKinematics7GetNameEb
 246              		.section	.text._ZNK18CoreXYUVKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 247              		.align	1
 248              		.p2align 2,,3
 249              		.global	_ZNK18CoreXYUVKinematics21MotorStepsToCartesianEPKlPKfjjPf
 250              		.syntax unified
 251              		.thumb
 252              		.thumb_func
 253              		.fpu fpv4-sp-d16
 254              		.type	_ZNK18CoreXYUVKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 255              	_ZNK18CoreXYUVKinematics21MotorStepsToCartesianEPKlPKfjjPf:
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2zNHAg.s 			page 6


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
 334              		.size	_ZNK18CoreXYUVKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK18CoreXYUVKinematics21Moto
 335              		.section	.text._ZN18CoreXYUVKinematicsD2Ev,"axG",%progbits,_ZN18CoreXYUVKinematicsD5Ev,comdat
 336              		.align	1
 337              		.p2align 2,,3
 338              		.weak	_ZN18CoreXYUVKinematicsD2Ev
 339              		.syntax unified
 340              		.thumb
 341              		.thumb_func
 342              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2zNHAg.s 			page 7


 343              		.type	_ZN18CoreXYUVKinematicsD2Ev, %function
 344              	_ZN18CoreXYUVKinematicsD2Ev:
 345              		@ args = 0, pretend = 0, frame = 0
 346              		@ frame_needed = 0, uses_anonymous_args = 0
 347              		@ link register save eliminated.
 348 0000 7047     		bx	lr
 349              		.size	_ZN18CoreXYUVKinematicsD2Ev, .-_ZN18CoreXYUVKinematicsD2Ev
 350              		.weak	_ZN18CoreXYUVKinematicsD1Ev
 351              		.thumb_set _ZN18CoreXYUVKinematicsD1Ev,_ZN18CoreXYUVKinematicsD2Ev
 352 0002 00BF     		.section	.text._ZNK18CoreXYUVKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 353              		.align	1
 354              		.p2align 2,,3
 355              		.global	_ZNK18CoreXYUVKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 356              		.syntax unified
 357              		.thumb
 358              		.thumb_func
 359              		.fpu fpv4-sp-d16
 360              		.type	_ZNK18CoreXYUVKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 361              	_ZNK18CoreXYUVKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
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
 394 006a 98ED1C6A 		vldr.32	s12, [r8, #112]
 395 006e 94ED040A 		vldr.32	s0, [r4, #16]
 396 0072 D4ED036A 		vldr.32	s13, [r4, #12]
 397 0076 98ED1B7A 		vldr.32	s14, [r8, #108]
 398 007a D6ED037A 		vldr.32	s15, [r6, #12]
 399 007e A860     		str	r0, [r5, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2zNHAg.s 			page 8


 400 0080 20EE060A 		vmul.f32	s0, s0, s12
 401 0084 A6EE870A 		vfma.f32	s0, s13, s14
 402 0088 20EE270A 		vmul.f32	s0, s0, s15
 403 008c FFF7FEFF 		bl	lrintf
 404 0090 94ED046A 		vldr.32	s12, [r4, #16]
 405 0094 98ED1C0A 		vldr.32	s0, [r8, #112]
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
 432              		.size	_ZNK18CoreXYUVKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK18CoreXYUVKinematics21Car
 433              		.section	.text._ZNK18CoreXYUVKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 434              		.align	1
 435              		.p2align 2,,3
 436              		.global	_ZNK18CoreXYUVKinematics25LimitSpeedAndAccelerationER3DDAPKf
 437              		.syntax unified
 438              		.thumb
 439              		.thumb_func
 440              		.fpu fpv4-sp-d16
 441              		.type	_ZNK18CoreXYUVKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 442              	_ZNK18CoreXYUVKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 443              		@ args = 0, pretend = 0, frame = 0
 444              		@ frame_needed = 0, uses_anonymous_args = 0
 445 0000 92ED006A 		vldr.32	s12, [r2]
 446 0004 92ED017A 		vldr.32	s14, [r2, #4]
 447 0008 76EE077A 		vadd.f32	s15, s12, s14
 448 000c 38B5     		push	{r3, r4, r5, lr}
 449 000e F0EEE77A 		vabs.f32	s15, s15
 450 0012 F4EE677A 		vcmp.f32	s15, s15
 451 0016 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 452 001a 1446     		mov	r4, r2
 453 001c 76EE476A 		vsub.f32	s13, s12, s14
 454 0020 0D46     		mov	r5, r1
 455 0022 08D6     		bvs	.L39
 456 0024 F0EEE66A 		vabs.f32	s13, s13
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2zNHAg.s 			page 9


 457 0028 F4EEE67A 		vcmpe.f32	s15, s13
 458 002c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 459 0030 D8BF     		it	le
 460 0032 F0EE667A 		vmovle.f32	s15, s13
 461              	.L39:
 462 0036 DFED406A 		vldr.32	s13, .L51
 463 003a F4EEE67A 		vcmpe.f32	s15, s13
 464 003e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 465 0042 4CDC     		bgt	.L49
 466              	.L40:
 467 0044 D4ED036A 		vldr.32	s13, [r4, #12]
 468 0048 94ED047A 		vldr.32	s14, [r4, #16]
 469 004c 76EE877A 		vadd.f32	s15, s13, s14
 470 0050 36EEC76A 		vsub.f32	s12, s13, s14
 471 0054 F0EEE77A 		vabs.f32	s15, s15
 472 0058 F4EE677A 		vcmp.f32	s15, s15
 473 005c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 474 0060 B0EEC66A 		vabs.f32	s12, s12
 475 0064 06D6     		bvs	.L42
 476 0066 F4EEC67A 		vcmpe.f32	s15, s12
 477 006a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 478 006e D8BF     		it	le
 479 0070 F0EE467A 		vmovle.f32	s15, s12
 480              	.L42:
 481 0074 9FED306A 		vldr.32	s12, .L51
 482 0078 F4EEC67A 		vcmpe.f32	s15, s12
 483 007c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 484 0080 00DC     		bgt	.L50
 485 0082 38BD     		pop	{r3, r4, r5, pc}
 486              	.L50:
 487 0084 2D4B     		ldr	r3, .L51+4
 488 0086 5B68     		ldr	r3, [r3, #4]
 489 0088 93ED6E6A 		vldr.32	s12, [r3, #440]
 490 008c D3ED624A 		vldr.32	s9, [r3, #392]
 491 0090 93ED6F5A 		vldr.32	s10, [r3, #444]
 492 0094 D3ED635A 		vldr.32	s11, [r3, #396]
 493 0098 B0EEC77A 		vabs.f32	s14, s14
 494 009c 67EE060A 		vmul.f32	s1, s14, s12
 495 00a0 27EE240A 		vmul.f32	s0, s14, s9
 496 00a4 F0EEE66A 		vabs.f32	s13, s13
 497 00a8 36EE877A 		vadd.f32	s14, s13, s14
 498 00ac E6EE850A 		vfma.f32	s1, s13, s10
 499 00b0 2846     		mov	r0, r5
 500 00b2 BDE83840 		pop	{r3, r4, r5, lr}
 501 00b6 A6EEA50A 		vfma.f32	s0, s13, s11
 502 00ba 27EE066A 		vmul.f32	s12, s14, s12
 503 00be 27EE247A 		vmul.f32	s14, s14, s9
 504 00c2 60EEA70A 		vmul.f32	s1, s1, s15
 505 00c6 26EE056A 		vmul.f32	s12, s12, s10
 506 00ca 20EE270A 		vmul.f32	s0, s0, s15
 507 00ce 27EE257A 		vmul.f32	s14, s14, s11
 508 00d2 C6EE200A 		vdiv.f32	s1, s12, s1
 509 00d6 87EE000A 		vdiv.f32	s0, s14, s0
 510 00da FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 511              	.L49:
 512 00de 174B     		ldr	r3, .L51+4
 513 00e0 5B68     		ldr	r3, [r3, #4]	@ unaligned
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2zNHAg.s 			page 10


 514 00e2 D3ED6B6A 		vldr.32	s13, [r3, #428]
 515 00e6 D3ED5F4A 		vldr.32	s9, [r3, #380]
 516 00ea 93ED6C5A 		vldr.32	s10, [r3, #432]
 517 00ee D3ED605A 		vldr.32	s11, [r3, #384]
 518 00f2 B0EEC77A 		vabs.f32	s14, s14
 519 00f6 67EE260A 		vmul.f32	s1, s14, s13
 520 00fa 27EE240A 		vmul.f32	s0, s14, s9
 521 00fe B0EEC66A 		vabs.f32	s12, s12
 522 0102 36EE077A 		vadd.f32	s14, s12, s14
 523 0106 E6EE050A 		vfma.f32	s1, s12, s10
 524 010a 2846     		mov	r0, r5
 525 010c A6EE250A 		vfma.f32	s0, s12, s11
 526 0110 67EE266A 		vmul.f32	s13, s14, s13
 527 0114 27EE247A 		vmul.f32	s14, s14, s9
 528 0118 60EEA70A 		vmul.f32	s1, s1, s15
 529 011c 66EE856A 		vmul.f32	s13, s13, s10
 530 0120 20EE270A 		vmul.f32	s0, s0, s15
 531 0124 27EE257A 		vmul.f32	s14, s14, s11
 532 0128 C6EEA00A 		vdiv.f32	s1, s13, s1
 533 012c 87EE000A 		vdiv.f32	s0, s14, s0
 534 0130 FFF7FEFF 		bl	_ZN3DDA25LimitSpeedAndAccelerationEff
 535 0134 86E7     		b	.L40
 536              	.L52:
 537 0136 00BF     		.align	2
 538              	.L51:
 539 0138 0AD7233C 		.word	1008981770
 540 013c 00000000 		.word	reprap
 541              		.size	_ZNK18CoreXYUVKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK18CoreXYUVKinematics25Li
 542              		.section	.text._ZN18CoreXYUVKinematicsD0Ev,"axG",%progbits,_ZN18CoreXYUVKinematicsD5Ev,comdat
 543              		.align	1
 544              		.p2align 2,,3
 545              		.weak	_ZN18CoreXYUVKinematicsD0Ev
 546              		.syntax unified
 547              		.thumb
 548              		.thumb_func
 549              		.fpu fpv4-sp-d16
 550              		.type	_ZN18CoreXYUVKinematicsD0Ev, %function
 551              	_ZN18CoreXYUVKinematicsD0Ev:
 552              		@ args = 0, pretend = 0, frame = 0
 553              		@ frame_needed = 0, uses_anonymous_args = 0
 554 0000 10B5     		push	{r4, lr}
 555 0002 8421     		movs	r1, #132
 556 0004 0446     		mov	r4, r0
 557 0006 FFF7FEFF 		bl	_ZdlPvj
 558 000a 2046     		mov	r0, r4
 559 000c 10BD     		pop	{r4, pc}
 560              		.size	_ZN18CoreXYUVKinematicsD0Ev, .-_ZN18CoreXYUVKinematicsD0Ev
 561 000e 00BF     		.section	.text._ZNK18CoreXYUVKinematics13DriveIsSharedEj,"ax",%progbits
 562              		.align	1
 563              		.p2align 2,,3
 564              		.global	_ZNK18CoreXYUVKinematics13DriveIsSharedEj
 565              		.syntax unified
 566              		.thumb
 567              		.thumb_func
 568              		.fpu fpv4-sp-d16
 569              		.type	_ZNK18CoreXYUVKinematics13DriveIsSharedEj, %function
 570              	_ZNK18CoreXYUVKinematics13DriveIsSharedEj:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2zNHAg.s 			page 11


 571              		@ args = 0, pretend = 0, frame = 0
 572              		@ frame_needed = 0, uses_anonymous_args = 0
 573              		@ link register save eliminated.
 574 0000 0129     		cmp	r1, #1
 575 0002 05D9     		bls	.L57
 576 0004 0339     		subs	r1, r1, #3
 577 0006 0129     		cmp	r1, #1
 578 0008 8CBF     		ite	hi
 579 000a 0020     		movhi	r0, #0
 580 000c 0120     		movls	r0, #1
 581 000e 7047     		bx	lr
 582              	.L57:
 583 0010 0120     		movs	r0, #1
 584 0012 7047     		bx	lr
 585              		.size	_ZNK18CoreXYUVKinematics13DriveIsSharedEj, .-_ZNK18CoreXYUVKinematics13DriveIsSharedEj
 586              		.global	__aeabi_f2d
 587              		.section	.text._ZN18CoreXYUVKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 588              		.align	1
 589              		.p2align 2,,3
 590              		.global	_ZN18CoreXYUVKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 591              		.syntax unified
 592              		.thumb
 593              		.thumb_func
 594              		.fpu fpv4-sp-d16
 595              		.type	_ZN18CoreXYUVKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 596              	_ZN18CoreXYUVKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 597              		@ args = 4, pretend = 0, frame = 8
 598              		@ frame_needed = 0, uses_anonymous_args = 0
 599 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 600 0004 40F29D24 		movw	r4, #669
 601 0008 A142     		cmp	r1, r4
 602 000a 85B0     		sub	sp, sp, #20
 603 000c 25D1     		bne	.L59
 604 000e 00F1600B 		add	fp, r0, #96
 605 0012 4FF00008 		mov	r8, #0
 606 0016 294F     		ldr	r7, .L79
 607 0018 0393     		str	r3, [sp, #12]
 608 001a 8146     		mov	r9, r0
 609 001c 1646     		mov	r6, r2
 610 001e 5D46     		mov	r5, fp
 611 0020 4446     		mov	r4, r8
 612              	.L61:
 613 0022 7B69     		ldr	r3, [r7, #20]
 614 0024 2344     		add	r3, r3, r4
 615 0026 3046     		mov	r0, r6
 616 0028 93F81015 		ldrb	r1, [r3, #1296]	@ zero_extendqisi2
 617 002c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 618 0030 0134     		adds	r4, r4, #1
 619 0032 8246     		mov	r10, r0
 620 0034 50B9     		cbnz	r0, .L76
 621              	.L60:
 622 0036 052C     		cmp	r4, #5
 623 0038 05F10405 		add	r5, r5, #4
 624 003c F1D1     		bne	.L61
 625 003e B8F1000F 		cmp	r8, #0
 626 0042 0FD0     		beq	.L77
 627              	.L62:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2zNHAg.s 			page 12


 628 0044 4046     		mov	r0, r8
 629 0046 05B0     		add	sp, sp, #20
 630              		@ sp needed
 631 0048 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 632              	.L76:
 633 004c 3046     		mov	r0, r6
 634 004e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 635 0052 D046     		mov	r8, r10
 636 0054 85ED000A 		vstr.32	s0, [r5]
 637 0058 EDE7     		b	.L60
 638              	.L59:
 639 005a 05B0     		add	sp, sp, #20
 640              		@ sp needed
 641 005c BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 642 0060 FFF7FEBF 		b	_ZN18CoreBaseKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 643              	.L77:
 644 0064 3046     		mov	r0, r6
 645 0066 4B21     		movs	r1, #75
 646 0068 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 647 006c 0028     		cmp	r0, #0
 648 006e E9D1     		bne	.L62
 649 0070 D9F80030 		ldr	r3, [r9]
 650 0074 124A     		ldr	r2, .L79+4
 651 0076 1B68     		ldr	r3, [r3]
 652 0078 9342     		cmp	r3, r2
 653 007a 19D1     		bne	.L78
 654 007c 114A     		ldr	r2, .L79+8
 655              	.L64:
 656 007e 1249     		ldr	r1, .L79+12
 657 0080 0398     		ldr	r0, [sp, #12]
 658 0082 124D     		ldr	r5, .L79+16
 659 0084 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 660 0088 0024     		movs	r4, #0
 661              	.L66:
 662 008a 7B69     		ldr	r3, [r7, #20]
 663 008c 5BF8040B 		ldr	r0, [fp], #4	@ float
 664 0090 2344     		add	r3, r3, r4
 665 0092 0134     		adds	r4, r4, #1
 666 0094 93F81065 		ldrb	r6, [r3, #1296]	@ zero_extendqisi2
 667 0098 FFF7FEFF 		bl	__aeabi_f2d
 668 009c 3246     		mov	r2, r6
 669 009e CDE90001 		strd	r0, [sp]
 670 00a2 2946     		mov	r1, r5
 671 00a4 0398     		ldr	r0, [sp, #12]
 672 00a6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 673 00aa 052C     		cmp	r4, #5
 674 00ac EDD1     		bne	.L66
 675 00ae C9E7     		b	.L62
 676              	.L78:
 677 00b0 4846     		mov	r0, r9
 678 00b2 4146     		mov	r1, r8
 679 00b4 9847     		blx	r3
 680 00b6 0246     		mov	r2, r0
 681 00b8 E1E7     		b	.L64
 682              	.L80:
 683 00ba 00BF     		.align	2
 684              	.L79:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2zNHAg.s 			page 13


 685 00bc 00000000 		.word	reprap
 686 00c0 00000000 		.word	_ZNK18CoreXYUVKinematics7GetNameEb
 687 00c4 0C000000 		.word	.LC3
 688 00c8 00000000 		.word	.LC4
 689 00cc 24000000 		.word	.LC5
 690              		.size	_ZN18CoreXYUVKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN18CoreXYUVKinematics9C
 691              		.section	.text._ZN18CoreXYUVKinematicsC2Ev,"ax",%progbits
 692              		.align	1
 693              		.p2align 2,,3
 694              		.global	_ZN18CoreXYUVKinematicsC2Ev
 695              		.syntax unified
 696              		.thumb
 697              		.thumb_func
 698              		.fpu fpv4-sp-d16
 699              		.type	_ZN18CoreXYUVKinematicsC2Ev, %function
 700              	_ZN18CoreXYUVKinematicsC2Ev:
 701              		@ args = 0, pretend = 0, frame = 0
 702              		@ frame_needed = 0, uses_anonymous_args = 0
 703 0000 10B5     		push	{r4, lr}
 704 0002 0821     		movs	r1, #8
 705 0004 0446     		mov	r4, r0
 706 0006 FFF7FEFF 		bl	_ZN18CoreBaseKinematicsC2E14KinematicsType
 707 000a 024B     		ldr	r3, .L83
 708 000c 2360     		str	r3, [r4]
 709 000e 2046     		mov	r0, r4
 710 0010 10BD     		pop	{r4, pc}
 711              	.L84:
 712 0012 00BF     		.align	2
 713              	.L83:
 714 0014 08000000 		.word	.LANCHOR0+8
 715              		.size	_ZN18CoreXYUVKinematicsC2Ev, .-_ZN18CoreXYUVKinematicsC2Ev
 716              		.global	_ZN18CoreXYUVKinematicsC1Ev
 717              		.thumb_set _ZN18CoreXYUVKinematicsC1Ev,_ZN18CoreXYUVKinematicsC2Ev
 718              		.global	_ZTV18CoreXYUVKinematics
 719              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 720              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 721              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 722              	_ZL28cpu_irq_prev_interrupt_state:
 723 0000 00       		.space	1
 724              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 725              		.align	2
 726              		.type	_ZL32cpu_irq_critical_section_counter, %object
 727              		.size	_ZL32cpu_irq_critical_section_counter, 4
 728              	_ZL32cpu_irq_critical_section_counter:
 729 0000 00000000 		.space	4
 730              		.section	.rodata._ZN18CoreXYUVKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%pro
 731              		.align	2
 732              	.LC4:
 733 0000 4B696E65 		.ascii	"Kinematics is %s with axis factors\000"
 733      6D617469 
 733      63732069 
 733      73202573 
 733      20776974 
 734 0023 00       		.space	1
 735              	.LC5:
 736 0024 2025633A 		.ascii	" %c:%.3f\000"
 736      252E3366 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2zNHAg.s 			page 14


 736      00
 737              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 738              		.align	2
 739              	.LC1:
 740 0000 58595A00 		.ascii	"XYZ\000"
 741              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 742              		.align	2
 743              	.LC0:
 744 0000 58595A55 		.ascii	"XYZUVWABC\000"
 744      56574142 
 744      4300
 745              		.section	.rodata._ZNK18CoreXYUVKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 746              		.align	2
 747              	.LC2:
 748 0000 636F7265 		.ascii	"coreXYUV\000"
 748      58595556 
 748      00
 749 0009 000000   		.space	3
 750              	.LC3:
 751 000c 436F7265 		.ascii	"CoreXYUV\000"
 751      58595556 
 751      00
 752              		.section	.rodata._ZTV18CoreXYUVKinematics,"a",%progbits
 753              		.align	2
 754              		.set	.LANCHOR0,. + 0
 755              		.type	_ZTV18CoreXYUVKinematics, %object
 756              		.size	_ZTV18CoreXYUVKinematics, 132
 757              	_ZTV18CoreXYUVKinematics:
 758 0000 00000000 		.word	0
 759 0004 00000000 		.word	0
 760 0008 00000000 		.word	_ZNK18CoreXYUVKinematics7GetNameEb
 761 000c 00000000 		.word	_ZN18CoreXYUVKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 762 0010 00000000 		.word	_ZNK18CoreXYUVKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 763 0014 00000000 		.word	_ZNK18CoreXYUVKinematics21MotorStepsToCartesianEPKlPKfjjPf
 764 0018 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 765 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 766 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 767 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 768 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 769 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 770 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 771 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 772 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 773 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 774 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 775 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 776 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 777 004c 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef
 778 0050 00000000 		.word	_ZNK18CoreBaseKinematics24QueryTerminateHomingMoveEj
 779 0054 00000000 		.word	_ZNK18CoreBaseKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 780 0058 00000000 		.word	_ZNK18CoreBaseKinematics13GetHomingModeEv
 781 005c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 782 0060 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 783 0064 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 784 0068 00000000 		.word	_ZNK18CoreXYUVKinematics25LimitSpeedAndAccelerationER3DDAPKf
 785 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 786 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc2zNHAg.s 			page 15


 787 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 788 0078 00000000 		.word	_ZN18CoreXYUVKinematicsD1Ev
 789 007c 00000000 		.word	_ZN18CoreXYUVKinematicsD0Ev
 790 0080 00000000 		.word	_ZNK18CoreXYUVKinematics13DriveIsSharedEj
 791              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
