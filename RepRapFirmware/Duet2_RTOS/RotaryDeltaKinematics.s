ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 1


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
  13              		.file	"RotaryDeltaKinematics.cpp"
  14              		.text
  15              		.section	.text._ZNK10Kinematics17GetTiltCorrectionEj,"axG",%progbits,_ZNK10Kinematics17GetTiltCorr
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZNK10Kinematics17GetTiltCorrectionEj
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZNK10Kinematics17GetTiltCorrectionEj, %function
  24              	_ZNK10Kinematics17GetTiltCorrectionEj:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 9FED010A 		vldr.32	s0, .L3
  29 0004 7047     		bx	lr
  30              	.L4:
  31 0006 00BF     		.align	2
  32              	.L3:
  33 0008 00000000 		.word	0
  34              		.size	_ZNK10Kinematics17GetTiltCorrectionEj, .-_ZNK10Kinematics17GetTiltCorrectionEj
  35              		.section	.text._ZNK10Kinematics13GetMotionTypeEj,"axG",%progbits,_ZNK10Kinematics13GetMotionTypeEj
  36              		.align	1
  37              		.p2align 2,,3
  38              		.weak	_ZNK10Kinematics13GetMotionTypeEj
  39              		.syntax unified
  40              		.thumb
  41              		.thumb_func
  42              		.fpu fpv4-sp-d16
  43              		.type	_ZNK10Kinematics13GetMotionTypeEj, %function
  44              	_ZNK10Kinematics13GetMotionTypeEj:
  45              		@ args = 0, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47              		@ link register save eliminated.
  48 0000 0020     		movs	r0, #0
  49 0002 7047     		bx	lr
  50              		.size	_ZNK10Kinematics13GetMotionTypeEj, .-_ZNK10Kinematics13GetMotionTypeEj
  51              		.section	.text._ZNK10Kinematics17HomingButtonNamesEv,"axG",%progbits,_ZNK10Kinematics17HomingButto
  52              		.align	1
  53              		.p2align 2,,3
  54              		.weak	_ZNK10Kinematics17HomingButtonNamesEv
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 2


  58              		.fpu fpv4-sp-d16
  59              		.type	_ZNK10Kinematics17HomingButtonNamesEv, %function
  60              	_ZNK10Kinematics17HomingButtonNamesEv:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63              		@ link register save eliminated.
  64 0000 0048     		ldr	r0, .L7
  65 0002 7047     		bx	lr
  66              	.L8:
  67              		.align	2
  68              	.L7:
  69 0004 00000000 		.word	.LC0
  70              		.size	_ZNK10Kinematics17HomingButtonNamesEv, .-_ZNK10Kinematics17HomingButtonNamesEv
  71              		.section	.text._ZNK10Kinematics16MachineAxisNamesEv,"axG",%progbits,_ZNK10Kinematics16MachineAxisN
  72              		.align	1
  73              		.p2align 2,,3
  74              		.weak	_ZNK10Kinematics16MachineAxisNamesEv
  75              		.syntax unified
  76              		.thumb
  77              		.thumb_func
  78              		.fpu fpv4-sp-d16
  79              		.type	_ZNK10Kinematics16MachineAxisNamesEv, %function
  80              	_ZNK10Kinematics16MachineAxisNamesEv:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 0048     		ldr	r0, .L10
  85 0002 7047     		bx	lr
  86              	.L11:
  87              		.align	2
  88              	.L10:
  89 0004 00000000 		.word	.LC1
  90              		.size	_ZNK10Kinematics16MachineAxisNamesEv, .-_ZNK10Kinematics16MachineAxisNamesEv
  91              		.section	.text._ZNK10Kinematics24IsContinuousRotationAxisEj,"axG",%progbits,_ZNK10Kinematics24IsCo
  92              		.align	1
  93              		.p2align 2,,3
  94              		.weak	_ZNK10Kinematics24IsContinuousRotationAxisEj
  95              		.syntax unified
  96              		.thumb
  97              		.thumb_func
  98              		.fpu fpv4-sp-d16
  99              		.type	_ZNK10Kinematics24IsContinuousRotationAxisEj, %function
 100              	_ZNK10Kinematics24IsContinuousRotationAxisEj:
 101              		@ args = 0, pretend = 0, frame = 0
 102              		@ frame_needed = 0, uses_anonymous_args = 0
 103              		@ link register save eliminated.
 104 0000 0020     		movs	r0, #0
 105 0002 7047     		bx	lr
 106              		.size	_ZNK10Kinematics24IsContinuousRotationAxisEj, .-_ZNK10Kinematics24IsContinuousRotationAxisEj
 107              		.section	.text._ZNK21RotaryDeltaKinematics23SupportsAutoCalibrationEv,"axG",%progbits,_ZNK21Rotary
 108              		.align	1
 109              		.p2align 2,,3
 110              		.weak	_ZNK21RotaryDeltaKinematics23SupportsAutoCalibrationEv
 111              		.syntax unified
 112              		.thumb
 113              		.thumb_func
 114              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 3


 115              		.type	_ZNK21RotaryDeltaKinematics23SupportsAutoCalibrationEv, %function
 116              	_ZNK21RotaryDeltaKinematics23SupportsAutoCalibrationEv:
 117              		@ args = 0, pretend = 0, frame = 0
 118              		@ frame_needed = 0, uses_anonymous_args = 0
 119              		@ link register save eliminated.
 120 0000 0020     		movs	r0, #0
 121 0002 7047     		bx	lr
 122              		.size	_ZNK21RotaryDeltaKinematics23SupportsAutoCalibrationEv, .-_ZNK21RotaryDeltaKinematics23Suppo
 123              		.section	.text._ZNK21RotaryDeltaKinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK21Rotary
 124              		.align	1
 125              		.p2align 2,,3
 126              		.weak	_ZNK21RotaryDeltaKinematics23AxesToHomeBeforeProbingEv
 127              		.syntax unified
 128              		.thumb
 129              		.thumb_func
 130              		.fpu fpv4-sp-d16
 131              		.type	_ZNK21RotaryDeltaKinematics23AxesToHomeBeforeProbingEv, %function
 132              	_ZNK21RotaryDeltaKinematics23AxesToHomeBeforeProbingEv:
 133              		@ args = 0, pretend = 0, frame = 0
 134              		@ frame_needed = 0, uses_anonymous_args = 0
 135              		@ link register save eliminated.
 136 0000 0720     		movs	r0, #7
 137 0002 7047     		bx	lr
 138              		.size	_ZNK21RotaryDeltaKinematics23AxesToHomeBeforeProbingEv, .-_ZNK21RotaryDeltaKinematics23AxesT
 139              		.section	.text._ZNK21RotaryDeltaKinematics16NumHomingButtonsEj,"axG",%progbits,_ZNK21RotaryDeltaKi
 140              		.align	1
 141              		.p2align 2,,3
 142              		.weak	_ZNK21RotaryDeltaKinematics16NumHomingButtonsEj
 143              		.syntax unified
 144              		.thumb
 145              		.thumb_func
 146              		.fpu fpv4-sp-d16
 147              		.type	_ZNK21RotaryDeltaKinematics16NumHomingButtonsEj, %function
 148              	_ZNK21RotaryDeltaKinematics16NumHomingButtonsEj:
 149              		@ args = 0, pretend = 0, frame = 0
 150              		@ frame_needed = 0, uses_anonymous_args = 0
 151              		@ link register save eliminated.
 152 0000 0020     		movs	r0, #0
 153 0002 7047     		bx	lr
 154              		.size	_ZNK21RotaryDeltaKinematics16NumHomingButtonsEj, .-_ZNK21RotaryDeltaKinematics16NumHomingBut
 155              		.section	.text._ZNK21RotaryDeltaKinematics13GetHomingModeEv,"axG",%progbits,_ZNK21RotaryDeltaKinem
 156              		.align	1
 157              		.p2align 2,,3
 158              		.weak	_ZNK21RotaryDeltaKinematics13GetHomingModeEv
 159              		.syntax unified
 160              		.thumb
 161              		.thumb_func
 162              		.fpu fpv4-sp-d16
 163              		.type	_ZNK21RotaryDeltaKinematics13GetHomingModeEv, %function
 164              	_ZNK21RotaryDeltaKinematics13GetHomingModeEv:
 165              		@ args = 0, pretend = 0, frame = 0
 166              		@ frame_needed = 0, uses_anonymous_args = 0
 167              		@ link register save eliminated.
 168 0000 0120     		movs	r0, #1
 169 0002 7047     		bx	lr
 170              		.size	_ZNK21RotaryDeltaKinematics13GetHomingModeEv, .-_ZNK21RotaryDeltaKinematics13GetHomingModeEv
 171              		.section	.text._ZNK21RotaryDeltaKinematics7GetNameEb,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 4


 172              		.align	1
 173              		.p2align 2,,3
 174              		.global	_ZNK21RotaryDeltaKinematics7GetNameEb
 175              		.syntax unified
 176              		.thumb
 177              		.thumb_func
 178              		.fpu fpv4-sp-d16
 179              		.type	_ZNK21RotaryDeltaKinematics7GetNameEb, %function
 180              	_ZNK21RotaryDeltaKinematics7GetNameEb:
 181              		@ args = 0, pretend = 0, frame = 0
 182              		@ frame_needed = 0, uses_anonymous_args = 0
 183              		@ link register save eliminated.
 184 0000 0048     		ldr	r0, .L18
 185 0002 7047     		bx	lr
 186              	.L19:
 187              		.align	2
 188              	.L18:
 189 0004 00000000 		.word	.LC2
 190              		.size	_ZNK21RotaryDeltaKinematics7GetNameEb, .-_ZNK21RotaryDeltaKinematics7GetNameEb
 191              		.section	.text._ZN21RotaryDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,
 192              		.align	1
 193              		.p2align 2,,3
 194              		.global	_ZN21RotaryDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 195              		.syntax unified
 196              		.thumb
 197              		.thumb_func
 198              		.fpu fpv4-sp-d16
 199              		.type	_ZN21RotaryDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %functio
 200              	_ZN21RotaryDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
 201              		@ args = 0, pretend = 0, frame = 0
 202              		@ frame_needed = 0, uses_anonymous_args = 0
 203              		@ link register save eliminated.
 204 0000 0120     		movs	r0, #1
 205 0002 7047     		bx	lr
 206              		.size	_ZN21RotaryDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN21R
 207              		.section	.text._ZNK21RotaryDeltaKinematics26WriteCalibrationParametersEP9FileStore,"ax",%progbits
 208              		.align	1
 209              		.p2align 2,,3
 210              		.global	_ZNK21RotaryDeltaKinematics26WriteCalibrationParametersEP9FileStore
 211              		.syntax unified
 212              		.thumb
 213              		.thumb_func
 214              		.fpu fpv4-sp-d16
 215              		.type	_ZNK21RotaryDeltaKinematics26WriteCalibrationParametersEP9FileStore, %function
 216              	_ZNK21RotaryDeltaKinematics26WriteCalibrationParametersEP9FileStore:
 217              		@ args = 0, pretend = 0, frame = 0
 218              		@ frame_needed = 0, uses_anonymous_args = 0
 219              		@ link register save eliminated.
 220 0000 0120     		movs	r0, #1
 221 0002 7047     		bx	lr
 222              		.size	_ZNK21RotaryDeltaKinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK21RotaryDeltaKine
 223              		.global	_ZNK21RotaryDeltaKinematics19WriteResumeSettingsEP9FileStore
 224              		.thumb_set _ZNK21RotaryDeltaKinematics19WriteResumeSettingsEP9FileStore,_ZNK21RotaryDeltaKinematic
 225              		.section	.text._ZNK21RotaryDeltaKinematics11IsReachableEffb,"ax",%progbits
 226              		.align	1
 227              		.p2align 2,,3
 228              		.global	_ZNK21RotaryDeltaKinematics11IsReachableEffb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 5


 229              		.syntax unified
 230              		.thumb
 231              		.thumb_func
 232              		.fpu fpv4-sp-d16
 233              		.type	_ZNK21RotaryDeltaKinematics11IsReachableEffb, %function
 234              	_ZNK21RotaryDeltaKinematics11IsReachableEffb:
 235              		@ args = 0, pretend = 0, frame = 0
 236              		@ frame_needed = 0, uses_anonymous_args = 0
 237              		@ link register save eliminated.
 238 0000 60EEA00A 		vmul.f32	s1, s1, s1
 239 0004 D0ED287A 		vldr.32	s15, [r0, #160]
 240 0008 E0EE000A 		vfma.f32	s1, s0, s0
 241 000c F4EEE70A 		vcmpe.f32	s1, s15
 242 0010 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 243 0014 4CBF     		ite	mi
 244 0016 0120     		movmi	r0, #1
 245 0018 0020     		movpl	r0, #0
 246 001a 7047     		bx	lr
 247              		.size	_ZNK21RotaryDeltaKinematics11IsReachableEffb, .-_ZNK21RotaryDeltaKinematics11IsReachableEffb
 248              		.section	.text._ZNK21RotaryDeltaKinematics16AxesAssumedHomedEm,"ax",%progbits
 249              		.align	1
 250              		.p2align 2,,3
 251              		.global	_ZNK21RotaryDeltaKinematics16AxesAssumedHomedEm
 252              		.syntax unified
 253              		.thumb
 254              		.thumb_func
 255              		.fpu fpv4-sp-d16
 256              		.type	_ZNK21RotaryDeltaKinematics16AxesAssumedHomedEm, %function
 257              	_ZNK21RotaryDeltaKinematics16AxesAssumedHomedEm:
 258              		@ args = 0, pretend = 0, frame = 0
 259              		@ frame_needed = 0, uses_anonymous_args = 0
 260              		@ link register save eliminated.
 261 0000 01F00703 		and	r3, r1, #7
 262 0004 072B     		cmp	r3, #7
 263 0006 14BF     		ite	ne
 264 0008 21F00700 		bicne	r0, r1, #7
 265 000c 0846     		moveq	r0, r1
 266 000e 7047     		bx	lr
 267              		.size	_ZNK21RotaryDeltaKinematics16AxesAssumedHomedEm, .-_ZNK21RotaryDeltaKinematics16AxesAssumedH
 268              		.section	.text._ZNK21RotaryDeltaKinematics15MustBeHomedAxesEmb,"ax",%progbits
 269              		.align	1
 270              		.p2align 2,,3
 271              		.global	_ZNK21RotaryDeltaKinematics15MustBeHomedAxesEmb
 272              		.syntax unified
 273              		.thumb
 274              		.thumb_func
 275              		.fpu fpv4-sp-d16
 276              		.type	_ZNK21RotaryDeltaKinematics15MustBeHomedAxesEmb, %function
 277              	_ZNK21RotaryDeltaKinematics15MustBeHomedAxesEmb:
 278              		@ args = 0, pretend = 0, frame = 0
 279              		@ frame_needed = 0, uses_anonymous_args = 0
 280              		@ link register save eliminated.
 281 0000 4B07     		lsls	r3, r1, #29
 282 0002 14BF     		ite	ne
 283 0004 41F00700 		orrne	r0, r1, #7
 284 0008 0846     		moveq	r0, r1
 285 000a 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 6


 286              		.size	_ZNK21RotaryDeltaKinematics15MustBeHomedAxesEmb, .-_ZNK21RotaryDeltaKinematics15MustBeHomedA
 287              		.section	.text._ZNK21RotaryDeltaKinematics24QueryTerminateHomingMoveEj,"ax",%progbits
 288              		.align	1
 289              		.p2align 2,,3
 290              		.global	_ZNK21RotaryDeltaKinematics24QueryTerminateHomingMoveEj
 291              		.syntax unified
 292              		.thumb
 293              		.thumb_func
 294              		.fpu fpv4-sp-d16
 295              		.type	_ZNK21RotaryDeltaKinematics24QueryTerminateHomingMoveEj, %function
 296              	_ZNK21RotaryDeltaKinematics24QueryTerminateHomingMoveEj:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299              		@ link register save eliminated.
 300 0000 0020     		movs	r0, #0
 301 0002 7047     		bx	lr
 302              		.size	_ZNK21RotaryDeltaKinematics24QueryTerminateHomingMoveEj, .-_ZNK21RotaryDeltaKinematics24Quer
 303              		.section	.text._ZN21RotaryDeltaKinematicsD2Ev,"axG",%progbits,_ZN21RotaryDeltaKinematicsD5Ev,comda
 304              		.align	1
 305              		.p2align 2,,3
 306              		.weak	_ZN21RotaryDeltaKinematicsD2Ev
 307              		.syntax unified
 308              		.thumb
 309              		.thumb_func
 310              		.fpu fpv4-sp-d16
 311              		.type	_ZN21RotaryDeltaKinematicsD2Ev, %function
 312              	_ZN21RotaryDeltaKinematicsD2Ev:
 313              		@ args = 0, pretend = 0, frame = 0
 314              		@ frame_needed = 0, uses_anonymous_args = 0
 315              		@ link register save eliminated.
 316 0000 7047     		bx	lr
 317              		.size	_ZN21RotaryDeltaKinematicsD2Ev, .-_ZN21RotaryDeltaKinematicsD2Ev
 318              		.weak	_ZN21RotaryDeltaKinematicsD1Ev
 319              		.thumb_set _ZN21RotaryDeltaKinematicsD1Ev,_ZN21RotaryDeltaKinematicsD2Ev
 320 0002 00BF     		.section	.text._ZNK21RotaryDeltaKinematics13LimitPositionEPfjmb,"ax",%progbits
 321              		.align	1
 322              		.p2align 2,,3
 323              		.global	_ZNK21RotaryDeltaKinematics13LimitPositionEPfjmb
 324              		.syntax unified
 325              		.thumb
 326              		.thumb_func
 327              		.fpu fpv4-sp-d16
 328              		.type	_ZNK21RotaryDeltaKinematics13LimitPositionEPfjmb, %function
 329              	_ZNK21RotaryDeltaKinematics13LimitPositionEPfjmb:
 330              		@ args = 4, pretend = 0, frame = 16
 331              		@ frame_needed = 0, uses_anonymous_args = 0
 332 0000 70B5     		push	{r4, r5, r6, lr}
 333 0002 2DED028B 		vpush.64	{d8}
 334 0006 03F00705 		and	r5, r3, #7
 335 000a 072D     		cmp	r5, #7
 336 000c 1C46     		mov	r4, r3
 337 000e 86B0     		sub	sp, sp, #24
 338 0010 1346     		mov	r3, r2
 339 0012 0BD0     		beq	.L49
 340 0014 0025     		movs	r5, #0
 341              	.L32:
 342 0016 0094     		str	r4, [sp]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 7


 343 0018 0322     		movs	r2, #3
 344 001a FFF7FEFF 		bl	_ZNK10Kinematics21LimitPositionFromAxisEPfjjm
 345 001e 0028     		cmp	r0, #0
 346 0020 08BF     		it	eq
 347 0022 2846     		moveq	r0, r5
 348 0024 06B0     		add	sp, sp, #24
 349              		@ sp needed
 350 0026 BDEC028B 		vldm	sp!, {d8}
 351 002a 70BD     		pop	{r4, r5, r6, pc}
 352              	.L49:
 353 002c D1ED016A 		vldr.32	s13, [r1, #4]
 354 0030 91ED007A 		vldr.32	s14, [r1]
 355 0034 90ED286A 		vldr.32	s12, [r0, #160]
 356 0038 66EEA67A 		vmul.f32	s15, s13, s13
 357 003c E7EE077A 		vfma.f32	s15, s14, s14
 358 0040 B4EEE76A 		vcmpe.f32	s12, s15
 359 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 360 0048 1BD4     		bmi	.L50
 361 004a 0025     		movs	r5, #0
 362              	.L33:
 363 004c 1D4A     		ldr	r2, .L52
 364 004e D1ED027A 		vldr.32	s15, [r1, #8]
 365 0052 5268     		ldr	r2, [r2, #4]	@ unaligned
 366 0054 02F5F966 		add	r6, r2, #1992
 367 0058 96ED007A 		vldr.32	s14, [r6]
 368 005c F4EEC77A 		vcmpe.f32	s15, s14
 369 0060 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 370 0064 03D5     		bpl	.L46
 371              	.L48:
 372 0066 81ED027A 		vstr.32	s14, [r1, #8]
 373 006a 0125     		movs	r5, #1
 374 006c D3E7     		b	.L32
 375              	.L46:
 376 006e 02F2A472 		addw	r2, r2, #1956
 377 0072 92ED007A 		vldr.32	s14, [r2]
 378 0076 F4EEC77A 		vcmpe.f32	s15, s14
 379 007a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 380 007e CADD     		ble	.L32
 381 0080 F1E7     		b	.L48
 382              	.L50:
 383 0082 86EE270A 		vdiv.f32	s0, s12, s15
 384 0086 B5EE400A 		vcmp.f32	s0, #0
 385 008a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 386 008e B1EEC08A 		vsqrt.f32	s16, s0
 387 0092 09D4     		bmi	.L51
 388              	.L35:
 389 0094 0125     		movs	r5, #1
 390 0096 28EE077A 		vmul.f32	s14, s16, s14
 391 009a 68EE266A 		vmul.f32	s13, s16, s13
 392 009e 81ED007A 		vstr.32	s14, [r1]
 393 00a2 C1ED016A 		vstr.32	s13, [r1, #4]
 394 00a6 D1E7     		b	.L33
 395              	.L51:
 396 00a8 CDE90412 		strd	r1, r2, [sp, #16]
 397 00ac 0390     		str	r0, [sp, #12]
 398 00ae FFF7FEFF 		bl	sqrtf
 399 00b2 0499     		ldr	r1, [sp, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 8


 400 00b4 059B     		ldr	r3, [sp, #20]
 401 00b6 91ED007A 		vldr.32	s14, [r1]
 402 00ba D1ED016A 		vldr.32	s13, [r1, #4]
 403 00be 0398     		ldr	r0, [sp, #12]
 404 00c0 E8E7     		b	.L35
 405              	.L53:
 406 00c2 00BF     		.align	2
 407              	.L52:
 408 00c4 00000000 		.word	reprap
 409              		.size	_ZNK21RotaryDeltaKinematics13LimitPositionEPfjmb, .-_ZNK21RotaryDeltaKinematics13LimitPositi
 410              		.section	.text._ZNK21RotaryDeltaKinematics17GetHomingFileNameEmmjRK9StringRef,"ax",%progbits
 411              		.align	1
 412              		.p2align 2,,3
 413              		.global	_ZNK21RotaryDeltaKinematics17GetHomingFileNameEmmjRK9StringRef
 414              		.syntax unified
 415              		.thumb
 416              		.thumb_func
 417              		.fpu fpv4-sp-d16
 418              		.type	_ZNK21RotaryDeltaKinematics17GetHomingFileNameEmmjRK9StringRef, %function
 419              	_ZNK21RotaryDeltaKinematics17GetHomingFileNameEmmjRK9StringRef:
 420              		@ args = 4, pretend = 0, frame = 0
 421              		@ frame_needed = 0, uses_anonymous_args = 0
 422 0000 10B5     		push	{r4, lr}
 423 0002 11F0070F 		tst	r1, #7
 424 0006 029C     		ldr	r4, [sp, #8]
 425 0008 03D1     		bne	.L58
 426 000a BDE81040 		pop	{r4, lr}
 427 000e FFF7FEBF 		b	_ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef
 428              	.L58:
 429 0012 2046     		mov	r0, r4
 430 0014 0249     		ldr	r1, .L60
 431 0016 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 432 001a 0020     		movs	r0, #0
 433 001c 10BD     		pop	{r4, pc}
 434              	.L61:
 435 001e 00BF     		.align	2
 436              	.L60:
 437 0020 00000000 		.word	.LC3
 438              		.size	_ZNK21RotaryDeltaKinematics17GetHomingFileNameEmmjRK9StringRef, .-_ZNK21RotaryDeltaKinematic
 439              		.section	.text._ZNK21RotaryDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 440              		.align	1
 441              		.p2align 2,,3
 442              		.global	_ZNK21RotaryDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf
 443              		.syntax unified
 444              		.thumb
 445              		.thumb_func
 446              		.fpu fpv4-sp-d16
 447              		.type	_ZNK21RotaryDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 448              	_ZNK21RotaryDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 449              		@ args = 0, pretend = 0, frame = 8
 450              		@ frame_needed = 0, uses_anonymous_args = 0
 451 0000 92ED010A 		vldr.32	s0, [r2, #4]
 452 0004 D2ED007A 		vldr.32	s15, [r2]
 453 0008 00B5     		push	{lr}
 454 000a 20EE000A 		vmul.f32	s0, s0, s0
 455 000e 2DED028B 		vpush.64	{d8}
 456 0012 A7EEA70A 		vfma.f32	s0, s15, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 9


 457 0016 83B0     		sub	sp, sp, #12
 458 0018 B5EE400A 		vcmp.f32	s0, #0
 459 001c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 460 0020 B1EEC08A 		vsqrt.f32	s16, s0
 461 0024 39D4     		bmi	.L71
 462              	.L63:
 463 0026 DFED1F7A 		vldr.32	s15, .L72
 464 002a B4EEE78A 		vcmpe.f32	s16, s15
 465 002e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 466 0032 2DDD     		ble	.L69
 467 0034 1C4B     		ldr	r3, .L72+4
 468 0036 5B68     		ldr	r3, [r3, #4]
 469 0038 93ED5F0A 		vldr.32	s0, [r3, #380]
 470 003c D3ED607A 		vldr.32	s15, [r3, #384]
 471 0040 B4EE400A 		vcmp.f32	s0, s0
 472 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 473 0048 06D6     		bvs	.L66
 474 004a B4EEE70A 		vcmpe.f32	s0, s15
 475 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 476 0052 58BF     		it	pl
 477 0054 B0EE670A 		vmovpl.f32	s0, s15
 478              	.L66:
 479 0058 D3ED6B0A 		vldr.32	s1, [r3, #428]
 480 005c D3ED6C7A 		vldr.32	s15, [r3, #432]
 481 0060 F4EE600A 		vcmp.f32	s1, s1
 482 0064 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 483 0068 06D6     		bvs	.L67
 484 006a F4EEE70A 		vcmpe.f32	s1, s15
 485 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 486 0072 58BF     		it	pl
 487 0074 F0EE670A 		vmovpl.f32	s1, s15
 488              	.L67:
 489 0078 C0EE880A 		vdiv.f32	s1, s1, s16
 490 007c 0846     		mov	r0, r1
 491 007e 80EE080A 		vdiv.f32	s0, s0, s16
 492 0082 03B0     		add	sp, sp, #12
 493              		@ sp needed
 494 0084 BDEC028B 		vldm	sp!, {d8}
 495 0088 5DF804EB 		ldr	lr, [sp], #4
 496 008c FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 497              	.L69:
 498 0090 03B0     		add	sp, sp, #12
 499              		@ sp needed
 500 0092 BDEC028B 		vldm	sp!, {d8}
 501 0096 5DF804FB 		ldr	pc, [sp], #4
 502              	.L71:
 503 009a 0191     		str	r1, [sp, #4]
 504 009c FFF7FEFF 		bl	sqrtf
 505 00a0 0199     		ldr	r1, [sp, #4]
 506 00a2 C0E7     		b	.L63
 507              	.L73:
 508              		.align	2
 509              	.L72:
 510 00a4 0AD7233C 		.word	1008981770
 511 00a8 00000000 		.word	reprap
 512              		.size	_ZNK21RotaryDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK21RotaryDeltaKinemati
 513              		.section	.text._ZN21RotaryDeltaKinematicsD0Ev,"axG",%progbits,_ZN21RotaryDeltaKinematicsD5Ev,comda
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 10


 514              		.align	1
 515              		.p2align 2,,3
 516              		.weak	_ZN21RotaryDeltaKinematicsD0Ev
 517              		.syntax unified
 518              		.thumb
 519              		.thumb_func
 520              		.fpu fpv4-sp-d16
 521              		.type	_ZN21RotaryDeltaKinematicsD0Ev, %function
 522              	_ZN21RotaryDeltaKinematicsD0Ev:
 523              		@ args = 0, pretend = 0, frame = 0
 524              		@ frame_needed = 0, uses_anonymous_args = 0
 525 0000 10B5     		push	{r4, lr}
 526 0002 A421     		movs	r1, #164
 527 0004 0446     		mov	r4, r0
 528 0006 FFF7FEFF 		bl	_ZdlPvj
 529 000a 2046     		mov	r0, r4
 530 000c 10BD     		pop	{r4, pc}
 531              		.size	_ZN21RotaryDeltaKinematicsD0Ev, .-_ZN21RotaryDeltaKinematicsD0Ev
 532 000e 00BF     		.section	.text._ZNK21RotaryDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA,"ax",%progbits
 533              		.align	1
 534              		.p2align 2,,3
 535              		.global	_ZNK21RotaryDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 536              		.syntax unified
 537              		.thumb
 538              		.thumb_func
 539              		.fpu fpv4-sp-d16
 540              		.type	_ZNK21RotaryDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, %function
 541              	_ZNK21RotaryDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA:
 542              		@ args = 4, pretend = 0, frame = 0
 543              		@ frame_needed = 0, uses_anonymous_args = 0
 544 0000 38B5     		push	{r3, r4, r5, lr}
 545 0002 0229     		cmp	r1, #2
 546 0004 0C46     		mov	r4, r1
 547 0006 049D     		ldr	r5, [sp, #16]
 548 0008 01D8     		bhi	.L77
 549 000a 02BB     		cbnz	r2, .L86
 550 000c 38BD     		pop	{r3, r4, r5, pc}
 551              	.L77:
 552 000e 1749     		ldr	r1, .L88
 553 0010 4968     		ldr	r1, [r1, #4]
 554 0012 AAB9     		cbnz	r2, .L87
 555 0014 04F5F872 		add	r2, r4, #496
 556 0018 01EB8201 		add	r1, r1, r2, lsl #2
 557 001c 91ED000A 		vldr.32	s0, [r1]
 558              	.L80:
 559 0020 03EB8403 		add	r3, r3, r4, lsl #2
 560 0024 D3ED007A 		vldr.32	s15, [r3]
 561              	.L85:
 562 0028 20EE270A 		vmul.f32	s0, s0, s15
 563 002c FFF7FEFF 		bl	lrintf
 564 0030 AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 565 0032 0834     		adds	r4, r4, #8
 566 0034 6FF30003 		bfc	r3, #0, #1
 567 0038 45F82400 		str	r0, [r5, r4, lsl #2]
 568 003c AB72     		strb	r3, [r5, #10]
 569 003e 38BD     		pop	{r3, r4, r5, pc}
 570              	.L87:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 11


 571 0040 04F5F372 		add	r2, r4, #486
 572 0044 01EB8201 		add	r1, r1, r2, lsl #2
 573 0048 91ED010A 		vldr.32	s0, [r1, #4]
 574 004c E8E7     		b	.L80
 575              	.L86:
 576 004e C26D     		ldr	r2, [r0, #92]
 577 0050 00EB8100 		add	r0, r0, r1, lsl #2
 578 0054 90ED110A 		vldr.32	s0, [r0, #68]
 579 0058 D2ED007A 		vldr.32	s15, [r2]
 580 005c 03EB8103 		add	r3, r3, r1, lsl #2
 581 0060 77EE807A 		vadd.f32	s15, s15, s0
 582 0064 93ED000A 		vldr.32	s0, [r3]
 583 0068 DEE7     		b	.L85
 584              	.L89:
 585 006a 00BF     		.align	2
 586              	.L88:
 587 006c 00000000 		.word	reprap
 588              		.size	_ZNK21RotaryDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, .-_ZNK21RotaryDeltaKinemati
 589              		.section	.text._ZNK21RotaryDeltaKinematics9TransformEPKfj.part.3,"ax",%progbits
 590              		.align	1
 591              		.p2align 2,,3
 592              		.syntax unified
 593              		.thumb
 594              		.thumb_func
 595              		.fpu fpv4-sp-d16
 596              		.type	_ZNK21RotaryDeltaKinematics9TransformEPKfj.part.3, %function
 597              	_ZNK21RotaryDeltaKinematics9TransformEPKfj.part.3:
 598              		@ args = 0, pretend = 0, frame = 0
 599              		@ frame_needed = 0, uses_anonymous_args = 0
 600 0000 08B5     		push	{r3, lr}
 601 0002 00EB8202 		add	r2, r0, r2, lsl #2
 602 0006 92ED1C7A 		vldr.32	s14, [r2, #112]
 603 000a 91ED015A 		vldr.32	s10, [r1, #4]
 604 000e D2ED194A 		vldr.32	s9, [r2, #100]
 605 0012 91ED004A 		vldr.32	s8, [r1]
 606 0016 D0ED047A 		vldr.32	s15, [r0, #16]
 607 001a 92ED056A 		vldr.32	s12, [r2, #20]
 608 001e D1ED023A 		vldr.32	s7, [r1, #8]
 609 0022 D2ED1F5A 		vldr.32	s11, [r2, #124]
 610 0026 D2ED256A 		vldr.32	s13, [r2, #148]
 611 002a 2DED048B 		vpush.64	{d8, d9}
 612 002e 25EE078A 		vmul.f32	s16, s10, s14
 613 0032 27EE447A 		vnmul.f32	s14, s14, s8
 614 0036 A4EE248A 		vfma.f32	s16, s8, s9
 615 003a 36EE636A 		vsub.f32	s12, s12, s7
 616 003e 37EEC88A 		vsub.f32	s16, s15, s16
 617 0042 F0EE477A 		vmov.f32	s15, s14
 618 0046 28EE087A 		vmul.f32	s14, s16, s16
 619 004a E4EE857A 		vfma.f32	s15, s9, s10
 620 004e A6EE067A 		vfma.f32	s14, s12, s12
 621 0052 26EE250A 		vmul.f32	s0, s12, s11
 622 0056 28EE258A 		vmul.f32	s16, s16, s11
 623 005a 20EE009A 		vmul.f32	s18, s0, s0
 624 005e A7EEA77A 		vfma.f32	s14, s15, s15
 625 0062 A8EE089A 		vfma.f32	s18, s16, s16
 626 0066 76EEC77A 		vsub.f32	s15, s13, s14
 627 006a 60EE278A 		vmul.f32	s17, s0, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 12


 628 006e B0EE490A 		vmov.f32	s0, s18
 629 0072 A7EEE70A 		vfms.f32	s0, s15, s15
 630 0076 B5EE400A 		vcmp.f32	s0, #0
 631 007a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 632 007e F1EEC09A 		vsqrt.f32	s19, s0
 633 0082 0CD4     		bmi	.L93
 634              	.L91:
 635 0084 E8EE698A 		vfms.f32	s17, s16, s19
 636 0088 88EE890A 		vdiv.f32	s0, s17, s18
 637 008c FFF7FEFF 		bl	asinf
 638 0090 BDEC048B 		vldm	sp!, {d8-d9}
 639 0094 DFED037A 		vldr.32	s15, .L94
 640 0098 20EE270A 		vmul.f32	s0, s0, s15
 641 009c 08BD     		pop	{r3, pc}
 642              	.L93:
 643 009e FFF7FEFF 		bl	sqrtf
 644 00a2 EFE7     		b	.L91
 645              	.L95:
 646              		.align	2
 647              	.L94:
 648 00a4 E02E6542 		.word	1113927392
 649              		.size	_ZNK21RotaryDeltaKinematics9TransformEPKfj.part.3, .-_ZNK21RotaryDeltaKinematics9TransformEP
 650              		.global	__aeabi_f2d
 651              		.section	.text._ZNK21RotaryDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 652              		.align	1
 653              		.p2align 2,,3
 654              		.global	_ZNK21RotaryDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 655              		.syntax unified
 656              		.thumb
 657              		.thumb_func
 658              		.fpu fpv4-sp-d16
 659              		.type	_ZNK21RotaryDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 660              	_ZNK21RotaryDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 661              		@ args = 12, pretend = 0, frame = 8
 662              		@ frame_needed = 0, uses_anonymous_args = 0
 663 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 664 0004 2DED028B 		vpush.64	{d8}
 665 0008 8BB0     		sub	sp, sp, #44
 666 000a 032B     		cmp	r3, #3
 667 000c 179D     		ldr	r5, [sp, #92]
 668 000e 9FED3C8A 		vldr.32	s16, .L118
 669 0012 9946     		mov	r9, r3
 670 0014 1F46     		mov	r7, r3
 671 0016 8346     		mov	fp, r0
 672 0018 0C46     		mov	r4, r1
 673 001a 1646     		mov	r6, r2
 674 001c 28BF     		it	cs
 675 001e 4FF00309 		movcs	r9, #3
 676 0022 4FF0010A 		mov	r10, #1
 677 0026 4FF00008 		mov	r8, #0
 678              	.L100:
 679 002a C145     		cmp	r9, r8
 680 002c 47D1     		bne	.L116
 681 002e 354B     		ldr	r3, .L118+4
 682 0030 D3F80831 		ldr	r3, [r3, #264]
 683 0034 DB06     		lsls	r3, r3, #27
 684 0036 29D5     		bpl	.L101
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 13


 685 0038 2068     		ldr	r0, [r4]	@ float
 686 003a FFF7FEFF 		bl	__aeabi_f2d
 687 003e 0246     		mov	r2, r0
 688 0040 0B46     		mov	r3, r1
 689 0042 6068     		ldr	r0, [r4, #4]	@ float
 690 0044 CDE90823 		strd	r2, [sp, #32]
 691 0048 FFF7FEFF 		bl	__aeabi_f2d
 692 004c 8046     		mov	r8, r0
 693 004e 8946     		mov	r9, r1
 694 0050 A068     		ldr	r0, [r4, #8]	@ float
 695 0052 FFF7FEFF 		bl	__aeabi_f2d
 696 0056 CDE90089 		strd	r8, [sp]
 697 005a DFF8B0E0 		ldr	lr, .L118+12
 698 005e DFF8B0C0 		ldr	ip, .L118+16
 699 0062 BAF1000F 		cmp	r10, #0
 700 0066 08BF     		it	eq
 701 0068 F446     		moveq	ip, lr
 702 006a D5E9008E 		ldrd	r8, lr, [r5]
 703 006e CDF81CC0 		str	ip, [sp, #28]
 704 0072 AB68     		ldr	r3, [r5, #8]
 705 0074 0693     		str	r3, [sp, #24]
 706 0076 CDE90201 		strd	r0, [sp, #8]
 707 007a CDF81080 		str	r8, [sp, #16]
 708 007e DDE90823 		ldrd	r2, [sp, #32]
 709 0082 CDF814E0 		str	lr, [sp, #20]
 710 0086 2048     		ldr	r0, .L118+8
 711 0088 FFF7FEFF 		bl	debugPrintf
 712              	.L101:
 713 008c 032F     		cmp	r7, #3
 714 008e 10D9     		bls	.L110
 715 0090 04EB8707 		add	r7, r4, r7, lsl #2
 716 0094 0C36     		adds	r6, r6, #12
 717 0096 0835     		adds	r5, r5, #8
 718 0098 0C34     		adds	r4, r4, #12
 719              	.L105:
 720 009a B4EC010A 		vldmia.32	r4!, {s0}
 721 009e F6EC017A 		vldmia.32	r6!, {s15}
 722 00a2 20EE270A 		vmul.f32	s0, s0, s15
 723 00a6 FFF7FEFF 		bl	lrintf
 724 00aa BC42     		cmp	r4, r7
 725 00ac 45F8040F 		str	r0, [r5, #4]!
 726 00b0 F3D1     		bne	.L105
 727              	.L110:
 728 00b2 5046     		mov	r0, r10
 729 00b4 0BB0     		add	sp, sp, #44
 730              		@ sp needed
 731 00b6 BDEC028B 		vldm	sp!, {d8}
 732 00ba BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 733              	.L116:
 734 00be 4246     		mov	r2, r8
 735 00c0 2146     		mov	r1, r4
 736 00c2 5846     		mov	r0, fp
 737 00c4 FFF7FEFF 		bl	_ZNK21RotaryDeltaKinematics9TransformEPKfj.part.3
 738 00c8 B4EE400A 		vcmp.f32	s0, s0
 739 00cc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 740 00d0 F0EEC07A 		vabs.f32	s15, s0
 741 00d4 04D6     		bvs	.L114
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 14


 742 00d6 F4EE487A 		vcmp.f32	s15, s16
 743 00da F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 744 00de 04DD     		ble	.L117
 745              	.L114:
 746 00e0 4FF0000A 		mov	r10, #0
 747              	.L98:
 748 00e4 08F10108 		add	r8, r8, #1
 749 00e8 9FE7     		b	.L100
 750              	.L117:
 751 00ea 06EB8803 		add	r3, r6, r8, lsl #2
 752 00ee D3ED007A 		vldr.32	s15, [r3]
 753 00f2 20EE270A 		vmul.f32	s0, s0, s15
 754 00f6 FFF7FEFF 		bl	lrintf
 755 00fa 45F82800 		str	r0, [r5, r8, lsl #2]
 756 00fe F1E7     		b	.L98
 757              	.L119:
 758              		.align	2
 759              	.L118:
 760 0100 FFFF7F7F 		.word	2139095039
 761 0104 00000000 		.word	reprap
 762 0108 0C000000 		.word	.LC6
 763 010c 04000000 		.word	.LC5
 764 0110 00000000 		.word	.LC4
 765              		.size	_ZNK21RotaryDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK21RotaryDeltaKinematic
 766              		.section	.text._ZN21RotaryDeltaKinematics6RecalcEv,"ax",%progbits
 767              		.align	1
 768              		.p2align 2,,3
 769              		.global	_ZN21RotaryDeltaKinematics6RecalcEv
 770              		.syntax unified
 771              		.thumb
 772              		.thumb_func
 773              		.fpu fpv4-sp-d16
 774              		.type	_ZN21RotaryDeltaKinematics6RecalcEv, %function
 775              	_ZN21RotaryDeltaKinematics6RecalcEv:
 776              		@ args = 0, pretend = 0, frame = 0
 777              		@ frame_needed = 0, uses_anonymous_args = 0
 778 0000 70B5     		push	{r4, r5, r6, lr}
 779 0002 D0ED187A 		vldr.32	s15, [r0, #96]
 780 0006 1D4E     		ldr	r6, .L124
 781 0008 67EEA77A 		vmul.f32	s15, s15, s15
 782 000c 2DED028B 		vpush.64	{d8}
 783 0010 9FED1B8A 		vldr.32	s16, .L124+4
 784 0014 DFED1B8A 		vldr.32	s17, .L124+8
 785 0018 C0ED287A 		vstr.32	s15, [r0, #160]
 786 001c 00F12004 		add	r4, r0, #32
 787 0020 00F12C05 		add	r5, r0, #44
 788              	.L122:
 789 0024 D4ED067A 		vldr.32	s15, [r4, #24]
 790 0028 38EE278A 		vadd.f32	s16, s16, s15
 791 002c 28EE288A 		vmul.f32	s16, s16, s17
 792 0030 B0EE480A 		vmov.f32	s0, s16
 793 0034 FFF7FEFF 		bl	sinf
 794 0038 84ED140A 		vstr.32	s0, [r4, #80]
 795 003c B0EE480A 		vmov.f32	s0, s16
 796 0040 FFF7FEFF 		bl	cosf
 797 0044 84ED110A 		vstr.32	s0, [r4, #68]
 798 0048 B4EC017A 		vldmia.32	r4!, {s14}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 15


 799 004c D4ED027A 		vldr.32	s15, [r4, #8]
 800 0050 67EEA77A 		vmul.f32	s15, s15, s15
 801 0054 77EE076A 		vadd.f32	s13, s14, s14
 802 0058 B0EE676A 		vmov.f32	s12, s15
 803 005c A7EE476A 		vfms.f32	s12, s14, s14
 804 0060 AC42     		cmp	r4, r5
 805 0062 C4ED166A 		vstr.32	s13, [r4, #88]
 806 0066 84ED1C6A 		vstr.32	s12, [r4, #112]
 807 006a C4ED197A 		vstr.32	s15, [r4, #100]
 808 006e 02D0     		beq	.L120
 809 0070 B6EC018A 		vldmia.32	r6!, {s16}
 810 0074 D6E7     		b	.L122
 811              	.L120:
 812 0076 BDEC028B 		vldm	sp!, {d8}
 813 007a 70BD     		pop	{r4, r5, r6, pc}
 814              	.L125:
 815              		.align	2
 816              	.L124:
 817 007c 04000000 		.word	.LANCHOR0+4
 818 0080 000016C3 		.word	-1021968384
 819 0084 35FA8E3C 		.word	1016003125
 820              		.size	_ZN21RotaryDeltaKinematics6RecalcEv, .-_ZN21RotaryDeltaKinematics6RecalcEv
 821              		.section	.text._ZN21RotaryDeltaKinematics4InitEv,"ax",%progbits
 822              		.align	1
 823              		.p2align 2,,3
 824              		.global	_ZN21RotaryDeltaKinematics4InitEv
 825              		.syntax unified
 826              		.thumb
 827              		.thumb_func
 828              		.fpu fpv4-sp-d16
 829              		.type	_ZN21RotaryDeltaKinematics4InitEv, %function
 830              	_ZN21RotaryDeltaKinematics4InitEv:
 831              		@ args = 0, pretend = 0, frame = 0
 832              		@ frame_needed = 0, uses_anonymous_args = 0
 833              		@ link register save eliminated.
 834 0000 F0B4     		push	{r4, r5, r6, r7}
 835 0002 826D     		ldr	r2, [r0, #88]
 836 0004 C36D     		ldr	r3, [r0, #92]
 837 0006 0D4D     		ldr	r5, .L130
 838 0008 0D4C     		ldr	r4, .L130+4
 839 000a 0561     		str	r5, [r0, #16]	@ float
 840 000c 0466     		str	r4, [r0, #96]	@ float
 841 000e 0D49     		ldr	r1, .L130+8
 842 0010 0D4F     		ldr	r7, .L130+12
 843 0012 0E4E     		ldr	r6, .L130+16
 844 0014 0E4D     		ldr	r5, .L130+20
 845 0016 0F4C     		ldr	r4, .L130+24
 846 0018 1760     		str	r7, [r2]	@ float
 847 001a 1960     		str	r1, [r3]	@ float
 848 001c 0022     		movs	r2, #0
 849 001e 00F11403 		add	r3, r0, #20
 850 0022 00F12001 		add	r1, r0, #32
 851              	.L127:
 852 0026 DE60     		str	r6, [r3, #12]	@ float
 853 0028 9D61     		str	r5, [r3, #24]	@ float
 854 002a 43F8044B 		str	r4, [r3], #4	@ float
 855 002e 8B42     		cmp	r3, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 16


 856 0030 1A62     		str	r2, [r3, #32]	@ float
 857 0032 DA62     		str	r2, [r3, #44]	@ float
 858 0034 F7D1     		bne	.L127
 859 0036 F0BC     		pop	{r4, r5, r6, r7}
 860 0038 FFF7FEBF 		b	_ZN21RotaryDeltaKinematics6RecalcEv
 861              	.L131:
 862              		.align	2
 863              	.L130:
 864 003c 00004842 		.word	1112014848
 865 0040 0000A042 		.word	1117782016
 866 0044 00003442 		.word	1110704128
 867 0048 000034C2 		.word	-1036779520
 868 004c 0000C842 		.word	1120403456
 869 0050 00004843 		.word	1128792064
 870 0054 00007A43 		.word	1132068864
 871              		.size	_ZN21RotaryDeltaKinematics4InitEv, .-_ZN21RotaryDeltaKinematics4InitEv
 872              		.section	.text._ZN21RotaryDeltaKinematicsC2Ev,"ax",%progbits
 873              		.align	1
 874              		.p2align 2,,3
 875              		.global	_ZN21RotaryDeltaKinematicsC2Ev
 876              		.syntax unified
 877              		.thumb
 878              		.thumb_func
 879              		.fpu fpv4-sp-d16
 880              		.type	_ZN21RotaryDeltaKinematicsC2Ev, %function
 881              	_ZN21RotaryDeltaKinematicsC2Ev:
 882              		@ args = 0, pretend = 0, frame = 0
 883              		@ frame_needed = 0, uses_anonymous_args = 0
 884 0000 0023     		movs	r3, #0
 885 0002 10B5     		push	{r4, lr}
 886 0004 1A46     		mov	r2, r3
 887 0006 0446     		mov	r4, r0
 888 0008 DFED090A 		vldr.32	s1, .L134
 889 000c 9FED090A 		vldr.32	s0, .L134+4
 890 0010 0A21     		movs	r1, #10
 891 0012 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffbb
 892 0016 2346     		mov	r3, r4
 893 0018 074A     		ldr	r2, .L134+8
 894 001a 43F8502B 		str	r2, [r3], #80
 895 001e 04F15402 		add	r2, r4, #84
 896 0022 2046     		mov	r0, r4
 897 0024 C4E91632 		strd	r3, r2, [r4, #88]
 898 0028 FFF7FEFF 		bl	_ZN21RotaryDeltaKinematics4InitEv
 899 002c 2046     		mov	r0, r4
 900 002e 10BD     		pop	{r4, pc}
 901              	.L135:
 902              		.align	2
 903              	.L134:
 904 0030 CDCC4C3E 		.word	1045220557
 905 0034 0000C842 		.word	1120403456
 906 0038 08000000 		.word	.LANCHOR1+8
 907              		.size	_ZN21RotaryDeltaKinematicsC2Ev, .-_ZN21RotaryDeltaKinematicsC2Ev
 908              		.global	_ZN21RotaryDeltaKinematicsC1Ev
 909              		.thumb_set _ZN21RotaryDeltaKinematicsC1Ev,_ZN21RotaryDeltaKinematicsC2Ev
 910              		.section	.text._ZN21RotaryDeltaKinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN21RotaryDel
 911              		.align	1
 912              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 17


 913              		.weak	_ZN21RotaryDeltaKinematics22SetCalibrationDefaultsEv
 914              		.syntax unified
 915              		.thumb
 916              		.thumb_func
 917              		.fpu fpv4-sp-d16
 918              		.type	_ZN21RotaryDeltaKinematics22SetCalibrationDefaultsEv, %function
 919              	_ZN21RotaryDeltaKinematics22SetCalibrationDefaultsEv:
 920              		@ args = 0, pretend = 0, frame = 0
 921              		@ frame_needed = 0, uses_anonymous_args = 0
 922              		@ link register save eliminated.
 923 0000 FFF7FEBF 		b	_ZN21RotaryDeltaKinematics4InitEv
 924              		.size	_ZN21RotaryDeltaKinematics22SetCalibrationDefaultsEv, .-_ZN21RotaryDeltaKinematics22SetCalib
 925              		.section	.text._ZN21RotaryDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 926              		.align	1
 927              		.p2align 2,,3
 928              		.global	_ZN21RotaryDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 929              		.syntax unified
 930              		.thumb
 931              		.thumb_func
 932              		.fpu fpv4-sp-d16
 933              		.type	_ZN21RotaryDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 934              	_ZN21RotaryDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 935              		@ args = 4, pretend = 0, frame = 8
 936              		@ frame_needed = 0, uses_anonymous_args = 0
 937 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 938 0004 40F29A27 		movw	r7, #666
 939 0008 B942     		cmp	r1, r7
 940 000a A0B0     		sub	sp, sp, #128
 941 000c 0446     		mov	r4, r0
 942 000e 1646     		mov	r6, r2
 943 0010 9846     		mov	r8, r3
 944 0012 21D0     		beq	.L139
 945 0014 40F29D27 		movw	r7, #669
 946 0018 B942     		cmp	r1, r7
 947 001a 16D1     		bne	.L152
 948 001c 20AD     		add	r5, sp, #128
 949 001e 0023     		movs	r3, #0
 950 0020 05F8013D 		strb	r3, [r5, #-1]!
 951 0024 0127     		movs	r7, #1
 952 0026 00F12003 		add	r3, r0, #32
 953 002a CDE90085 		strd	r8, r5, [sp]
 954 002e 0297     		str	r7, [sp, #8]
 955 0030 0322     		movs	r2, #3
 956 0032 5521     		movs	r1, #85
 957 0034 3046     		mov	r0, r6
 958 0036 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 959 003a 0028     		cmp	r0, #0
 960 003c 43D0     		beq	.L141
 961              	.L143:
 962 003e 289B     		ldr	r3, [sp, #160]
 963 0040 0120     		movs	r0, #1
 964 0042 1870     		strb	r0, [r3]
 965 0044 20B0     		add	sp, sp, #128
 966              		@ sp needed
 967 0046 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 968              	.L152:
 969 004a 289C     		ldr	r4, [sp, #160]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 18


 970 004c 0094     		str	r4, [sp]
 971 004e FFF7FEFF 		bl	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 972              	.L147:
 973 0052 20B0     		add	sp, sp, #128
 974              		@ sp needed
 975 0054 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 976              	.L139:
 977 0058 20AD     		add	r5, sp, #128
 978 005a 0023     		movs	r3, #0
 979 005c 05F8013D 		strb	r3, [r5, #-1]!
 980 0060 00F14402 		add	r2, r0, #68
 981 0064 2B46     		mov	r3, r5
 982 0066 5821     		movs	r1, #88
 983 0068 3046     		mov	r0, r6
 984 006a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 985 006e 2B46     		mov	r3, r5
 986 0070 04F14802 		add	r2, r4, #72
 987 0074 5921     		movs	r1, #89
 988 0076 3046     		mov	r0, r6
 989 0078 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 990 007c 2B46     		mov	r3, r5
 991 007e 3046     		mov	r0, r6
 992 0080 04F14C02 		add	r2, r4, #76
 993 0084 5A21     		movs	r1, #90
 994 0086 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 995 008a 9DF87F00 		ldrb	r0, [sp, #127]	@ zero_extendqisi2
 996 008e 0028     		cmp	r0, #0
 997 0090 DFD1     		bne	.L147
 998 0092 606C     		ldr	r0, [r4, #68]	@ float
 999 0094 FFF7FEFF 		bl	__aeabi_f2d
 1000 0098 0646     		mov	r6, r0
 1001 009a E06C     		ldr	r0, [r4, #76]	@ float
 1002 009c 0F46     		mov	r7, r1
 1003 009e FFF7FEFF 		bl	__aeabi_f2d
 1004 00a2 CDE90201 		strd	r0, [sp, #8]
 1005 00a6 A06C     		ldr	r0, [r4, #72]	@ float
 1006 00a8 FFF7FEFF 		bl	__aeabi_f2d
 1007 00ac 3246     		mov	r2, r6
 1008 00ae CDE90001 		strd	r0, [sp]
 1009 00b2 3B46     		mov	r3, r7
 1010 00b4 4046     		mov	r0, r8
 1011 00b6 6D49     		ldr	r1, .L156
 1012 00b8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1013              	.L154:
 1014 00bc 9DF87F00 		ldrb	r0, [sp, #127]	@ zero_extendqisi2
 1015 00c0 20B0     		add	sp, sp, #128
 1016              		@ sp needed
 1017 00c2 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1018              	.L141:
 1019 00c6 CDE90157 		strd	r5, r7, [sp, #4]
 1020 00ca CDF80080 		str	r8, [sp]
 1021 00ce 04F12C03 		add	r3, r4, #44
 1022 00d2 0322     		movs	r2, #3
 1023 00d4 4C21     		movs	r1, #76
 1024 00d6 3046     		mov	r0, r6
 1025 00d8 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1026 00dc 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 19


 1027 00de AED1     		bne	.L143
 1028 00e0 CDE90157 		strd	r5, r7, [sp, #4]
 1029 00e4 CDF80080 		str	r8, [sp]
 1030 00e8 04F11403 		add	r3, r4, #20
 1031 00ec 0322     		movs	r2, #3
 1032 00ee 4821     		movs	r1, #72
 1033 00f0 3046     		mov	r0, r6
 1034 00f2 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1035 00f6 0028     		cmp	r0, #0
 1036 00f8 A1D1     		bne	.L143
 1037 00fa CDE90150 		strd	r5, r0, [sp, #4]
 1038 00fe CDF80080 		str	r8, [sp]
 1039 0102 04F15003 		add	r3, r4, #80
 1040 0106 0222     		movs	r2, #2
 1041 0108 4121     		movs	r1, #65
 1042 010a 3046     		mov	r0, r6
 1043 010c FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1044 0110 8146     		mov	r9, r0
 1045 0112 0028     		cmp	r0, #0
 1046 0114 93D1     		bne	.L143
 1047 0116 5221     		movs	r1, #82
 1048 0118 2B46     		mov	r3, r5
 1049 011a 04F11002 		add	r2, r4, #16
 1050 011e 3046     		mov	r0, r6
 1051 0120 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1052 0124 4221     		movs	r1, #66
 1053 0126 3046     		mov	r0, r6
 1054 0128 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1055 012c 0028     		cmp	r0, #0
 1056 012e 74D1     		bne	.L155
 1057              	.L144:
 1058 0130 2B46     		mov	r3, r5
 1059 0132 04F13802 		add	r2, r4, #56
 1060 0136 5821     		movs	r1, #88
 1061 0138 3046     		mov	r0, r6
 1062 013a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1063 013e 2B46     		mov	r3, r5
 1064 0140 04F13C02 		add	r2, r4, #60
 1065 0144 5921     		movs	r1, #89
 1066 0146 3046     		mov	r0, r6
 1067 0148 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1068 014c 2B46     		mov	r3, r5
 1069 014e 3046     		mov	r0, r6
 1070 0150 04F14002 		add	r2, r4, #64
 1071 0154 5A21     		movs	r1, #90
 1072 0156 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1073 015a 9DF87F30 		ldrb	r3, [sp, #127]	@ zero_extendqisi2
 1074 015e 1BB1     		cbz	r3, .L145
 1075 0160 2046     		mov	r0, r4
 1076 0162 FFF7FEFF 		bl	_ZN21RotaryDeltaKinematics6RecalcEv
 1077 0166 A9E7     		b	.L154
 1078              	.L145:
 1079 0168 206A     		ldr	r0, [r4, #32]	@ float
 1080 016a FFF7FEFF 		bl	__aeabi_f2d
 1081 016e 0646     		mov	r6, r0
 1082 0170 206C     		ldr	r0, [r4, #64]	@ float
 1083 0172 0F46     		mov	r7, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 20


 1084 0174 FFF7FEFF 		bl	__aeabi_f2d
 1085 0178 CDE91C01 		strd	r0, [sp, #112]
 1086 017c E06B     		ldr	r0, [r4, #60]	@ float
 1087 017e FFF7FEFF 		bl	__aeabi_f2d
 1088 0182 CDE91A01 		strd	r0, [sp, #104]
 1089 0186 A06B     		ldr	r0, [r4, #56]	@ float
 1090 0188 FFF7FEFF 		bl	__aeabi_f2d
 1091 018c CDE91801 		strd	r0, [sp, #96]
 1092 0190 206E     		ldr	r0, [r4, #96]	@ float
 1093 0192 FFF7FEFF 		bl	__aeabi_f2d
 1094 0196 CDE91601 		strd	r0, [sp, #88]
 1095 019a 2069     		ldr	r0, [r4, #16]	@ float
 1096 019c FFF7FEFF 		bl	__aeabi_f2d
 1097 01a0 CDE91401 		strd	r0, [sp, #80]
 1098 01a4 E36D     		ldr	r3, [r4, #92]
 1099 01a6 1868     		ldr	r0, [r3]	@ float
 1100 01a8 FFF7FEFF 		bl	__aeabi_f2d
 1101 01ac CDE91201 		strd	r0, [sp, #72]
 1102 01b0 A36D     		ldr	r3, [r4, #88]
 1103 01b2 1868     		ldr	r0, [r3]	@ float
 1104 01b4 FFF7FEFF 		bl	__aeabi_f2d
 1105 01b8 CDE91001 		strd	r0, [sp, #64]
 1106 01bc E069     		ldr	r0, [r4, #28]	@ float
 1107 01be FFF7FEFF 		bl	__aeabi_f2d
 1108 01c2 CDE90E01 		strd	r0, [sp, #56]
 1109 01c6 A069     		ldr	r0, [r4, #24]	@ float
 1110 01c8 FFF7FEFF 		bl	__aeabi_f2d
 1111 01cc CDE90C01 		strd	r0, [sp, #48]
 1112 01d0 6069     		ldr	r0, [r4, #20]	@ float
 1113 01d2 FFF7FEFF 		bl	__aeabi_f2d
 1114 01d6 CDE90A01 		strd	r0, [sp, #40]
 1115 01da 606B     		ldr	r0, [r4, #52]	@ float
 1116 01dc FFF7FEFF 		bl	__aeabi_f2d
 1117 01e0 CDE90801 		strd	r0, [sp, #32]
 1118 01e4 206B     		ldr	r0, [r4, #48]	@ float
 1119 01e6 FFF7FEFF 		bl	__aeabi_f2d
 1120 01ea CDE90601 		strd	r0, [sp, #24]
 1121 01ee E06A     		ldr	r0, [r4, #44]	@ float
 1122 01f0 FFF7FEFF 		bl	__aeabi_f2d
 1123 01f4 CDE90401 		strd	r0, [sp, #16]
 1124 01f8 A06A     		ldr	r0, [r4, #40]	@ float
 1125 01fa FFF7FEFF 		bl	__aeabi_f2d
 1126 01fe CDE90201 		strd	r0, [sp, #8]
 1127 0202 606A     		ldr	r0, [r4, #36]	@ float
 1128 0204 FFF7FEFF 		bl	__aeabi_f2d
 1129 0208 3246     		mov	r2, r6
 1130 020a CDE90001 		strd	r0, [sp]
 1131 020e 3B46     		mov	r3, r7
 1132 0210 4046     		mov	r0, r8
 1133 0212 1749     		ldr	r1, .L156+4
 1134 0214 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1135 0218 50E7     		b	.L154
 1136              	.L155:
 1137 021a 3046     		mov	r0, r6
 1138 021c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1139 0220 144B     		ldr	r3, .L156+8
 1140 0222 84ED180A 		vstr.32	s0, [r4, #96]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 21


 1141 0226 D3F804A0 		ldr	r10, [r3, #4]
 1142 022a B1EE400A 		vneg.f32	s0, s0
 1143 022e 5046     		mov	r0, r10
 1144 0230 4A46     		mov	r2, r9
 1145 0232 4946     		mov	r1, r9
 1146 0234 FFF7FEFF 		bl	_ZN8Platform14SetAxisMinimumEjfb
 1147 0238 94ED180A 		vldr.32	s0, [r4, #96]
 1148 023c 5046     		mov	r0, r10
 1149 023e B1EE400A 		vneg.f32	s0, s0
 1150 0242 4A46     		mov	r2, r9
 1151 0244 3946     		mov	r1, r7
 1152 0246 FFF7FEFF 		bl	_ZN8Platform14SetAxisMinimumEjfb
 1153 024a 4A46     		mov	r2, r9
 1154 024c 5046     		mov	r0, r10
 1155 024e 94ED180A 		vldr.32	s0, [r4, #96]
 1156 0252 4946     		mov	r1, r9
 1157 0254 FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 1158 0258 4A46     		mov	r2, r9
 1159 025a 5046     		mov	r0, r10
 1160 025c 94ED180A 		vldr.32	s0, [r4, #96]
 1161 0260 3946     		mov	r1, r7
 1162 0262 FFF7FEFF 		bl	_ZN8Platform14SetAxisMaximumEjfb
 1163 0266 8DF87F70 		strb	r7, [sp, #127]
 1164 026a 61E7     		b	.L144
 1165              	.L157:
 1166              		.align	2
 1167              	.L156:
 1168 026c D8000000 		.word	.LC8
 1169 0270 00000000 		.word	.LC7
 1170 0274 00000000 		.word	reprap
 1171              		.size	_ZN21RotaryDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN21RotaryDeltaKinema
 1172              		.section	.text._ZNK21RotaryDeltaKinematics9TransformEPKfj,"ax",%progbits
 1173              		.align	1
 1174              		.p2align 2,,3
 1175              		.global	_ZNK21RotaryDeltaKinematics9TransformEPKfj
 1176              		.syntax unified
 1177              		.thumb
 1178              		.thumb_func
 1179              		.fpu fpv4-sp-d16
 1180              		.type	_ZNK21RotaryDeltaKinematics9TransformEPKfj, %function
 1181              	_ZNK21RotaryDeltaKinematics9TransformEPKfj:
 1182              		@ args = 0, pretend = 0, frame = 0
 1183              		@ frame_needed = 0, uses_anonymous_args = 0
 1184              		@ link register save eliminated.
 1185 0000 022A     		cmp	r2, #2
 1186 0002 07D9     		bls	.L162
 1187 0004 10B4     		push	{r4}
 1188 0006 01EB8203 		add	r3, r1, r2, lsl #2
 1189 000a 93ED000A 		vldr.32	s0, [r3]
 1190 000e 5DF8044B 		ldr	r4, [sp], #4
 1191 0012 7047     		bx	lr
 1192              	.L162:
 1193 0014 FFF7FEBF 		b	_ZNK21RotaryDeltaKinematics9TransformEPKfj.part.3
 1194              		.size	_ZNK21RotaryDeltaKinematics9TransformEPKfj, .-_ZNK21RotaryDeltaKinematics9TransformEPKfj
 1195              		.section	.text._ZNK21RotaryDeltaKinematics16ForwardTransformEfffPf,"ax",%progbits
 1196              		.align	1
 1197              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 22


 1198              		.global	_ZNK21RotaryDeltaKinematics16ForwardTransformEfffPf
 1199              		.syntax unified
 1200              		.thumb
 1201              		.thumb_func
 1202              		.fpu fpv4-sp-d16
 1203              		.type	_ZNK21RotaryDeltaKinematics16ForwardTransformEfffPf, %function
 1204              	_ZNK21RotaryDeltaKinematics16ForwardTransformEfffPf:
 1205              		@ args = 0, pretend = 0, frame = 16
 1206              		@ frame_needed = 0, uses_anonymous_args = 0
 1207 0000 30B5     		push	{r4, r5, lr}
 1208 0002 2DED0E8B 		vpush.64	{d8, d9, d10, d11, d12, d13, d14}
 1209 0006 9FEDA78A 		vldr.32	s16, .L171
 1210 000a 20EE08BA 		vmul.f32	s22, s0, s16
 1211 000e 0446     		mov	r4, r0
 1212 0010 8FB0     		sub	sp, sp, #60
 1213 0012 F0EE409A 		vmov.f32	s19, s0
 1214 0016 B0EE4B0A 		vmov.f32	s0, s22
 1215 001a F0EE608A 		vmov.f32	s17, s1
 1216 001e B0EE419A 		vmov.f32	s18, s2
 1217 0022 0D46     		mov	r5, r1
 1218 0024 FFF7FEFF 		bl	cosf
 1219 0028 94ED04DA 		vldr.32	s26, [r4, #16]
 1220 002c D4ED08DA 		vldr.32	s27, [r4, #32]
 1221 0030 D4ED1C7A 		vldr.32	s15, [r4, #112]
 1222 0034 94ED19AA 		vldr.32	s20, [r4, #100]
 1223 0038 F0EE4DAA 		vmov.f32	s21, s26
 1224 003c EDEE80AA 		vfma.f32	s21, s27, s0
 1225 0040 B0EE4B0A 		vmov.f32	s0, s22
 1226 0044 2AEE8AAA 		vmul.f32	s20, s21, s20
 1227 0048 6AEEA7AA 		vmul.f32	s21, s21, s15
 1228 004c FFF7FEFF 		bl	sinf
 1229 0050 D4ED057A 		vldr.32	s15, [r4, #20]
 1230 0054 EDEE807A 		vfma.f32	s15, s27, s0
 1231 0058 28EE88CA 		vmul.f32	s24, s17, s16
 1232 005c F0EE67BA 		vmov.f32	s23, s15
 1233 0060 B0EE4C0A 		vmov.f32	s0, s24
 1234 0064 FFF7FEFF 		bl	cosf
 1235 0068 D4ED097A 		vldr.32	s15, [r4, #36]
 1236 006c D4ED1A6A 		vldr.32	s13, [r4, #104]
 1237 0070 D4ED1DCA 		vldr.32	s25, [r4, #116]
 1238 0074 B0EE4D5A 		vmov.f32	s10, s26
 1239 0078 A7EE805A 		vfma.f32	s10, s15, s0
 1240 007c B0EE4C0A 		vmov.f32	s0, s24
 1241 0080 25EE26BA 		vmul.f32	s22, s10, s13
 1242 0084 65EE2CCA 		vmul.f32	s25, s10, s25
 1243 0088 FFF7FEFF 		bl	sinf
 1244 008c D4ED067A 		vldr.32	s15, [r4, #24]
 1245 0090 EDEE807A 		vfma.f32	s15, s27, s0
 1246 0094 29EE088A 		vmul.f32	s16, s18, s16
 1247 0098 F0EE67EA 		vmov.f32	s29, s15
 1248 009c B0EE480A 		vmov.f32	s0, s16
 1249 00a0 FFF7FEFF 		bl	cosf
 1250 00a4 94ED0A7A 		vldr.32	s14, [r4, #40]
 1251 00a8 94ED1E5A 		vldr.32	s10, [r4, #120]
 1252 00ac D4ED1B7A 		vldr.32	s15, [r4, #108]
 1253 00b0 A7EE00DA 		vfma.f32	s26, s14, s0
 1254 00b4 B0EE480A 		vmov.f32	s0, s16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 23


 1255 00b8 2DEE05CA 		vmul.f32	s24, s26, s10
 1256 00bc 2DEE27DA 		vmul.f32	s26, s26, s15
 1257 00c0 FFF7FEFF 		bl	sinf
 1258 00c4 2CEE4A7A 		vnmul.f32	s14, s24, s20
 1259 00c8 2AEEAA4A 		vmul.f32	s8, s21, s21
 1260 00cc ABEE0C7A 		vfma.f32	s14, s22, s24
 1261 00d0 AAEE0A4A 		vfma.f32	s8, s20, s20
 1262 00d4 D4ED073A 		vldr.32	s7, [r4, #28]
 1263 00d8 D4ED224A 		vldr.32	s9, [r4, #136]
 1264 00dc D4ED246A 		vldr.32	s13, [r4, #144]
 1265 00e0 D4ED235A 		vldr.32	s11, [r4, #140]
 1266 00e4 2CEEAC5A 		vmul.f32	s10, s25, s25
 1267 00e8 6CEE0C2A 		vmul.f32	s5, s24, s24
 1268 00ec EDEE803A 		vfma.f32	s7, s27, s0
 1269 00f0 ABEE0B5A 		vfma.f32	s10, s22, s22
 1270 00f4 EDEE0D2A 		vfma.f32	s5, s26, s26
 1271 00f8 ACEECD7A 		vfms.f32	s14, s25, s26
 1272 00fc ABEEAB4A 		vfma.f32	s8, s23, s23
 1273 0100 E3EEA32A 		vfma.f32	s5, s7, s7
 1274 0104 AEEEAE5A 		vfma.f32	s10, s29, s29
 1275 0108 36EEE46A 		vsub.f32	s12, s13, s9
 1276 010c AAEE2C7A 		vfma.f32	s14, s20, s25
 1277 0110 74EEE57A 		vsub.f32	s15, s9, s11
 1278 0114 3AEE4D3A 		vsub.f32	s6, s20, s26
 1279 0118 36EE046A 		vadd.f32	s12, s12, s8
 1280 011c 3BEE4A2A 		vsub.f32	s4, s22, s20
 1281 0120 36EE626A 		vsub.f32	s12, s12, s5
 1282 0124 AAEE8D7A 		vfma.f32	s14, s21, s26
 1283 0128 77EE857A 		vadd.f32	s15, s15, s10
 1284 012c 23EE2E3A 		vmul.f32	s6, s6, s29
 1285 0130 77EEC47A 		vsub.f32	s15, s15, s8
 1286 0134 A2EE233A 		vfma.f32	s6, s4, s7
 1287 0138 3AEECC8A 		vsub.f32	s16, s21, s24
 1288 013c 75EEE65A 		vsub.f32	s11, s11, s13
 1289 0140 66EE0B6A 		vmul.f32	s13, s12, s22
 1290 0144 26EE2C6A 		vmul.f32	s12, s12, s25
 1291 0148 AAEECB7A 		vfms.f32	s14, s21, s22
 1292 014c 3DEE4B2A 		vsub.f32	s4, s26, s22
 1293 0150 75EEA25A 		vadd.f32	s11, s11, s5
 1294 0154 A7EE8C6A 		vfma.f32	s12, s15, s24
 1295 0158 7CEEEA2A 		vsub.f32	s5, s25, s21
 1296 015c 28EE2E8A 		vmul.f32	s16, s16, s29
 1297 0160 75EEC55A 		vsub.f32	s11, s11, s10
 1298 0164 A2EEA38A 		vfma.f32	s16, s5, s7
 1299 0168 E7EE8D6A 		vfma.f32	s13, s15, s26
 1300 016c A2EE2B3A 		vfma.f32	s6, s4, s23
 1301 0170 37EE077A 		vadd.f32	s14, s14, s14
 1302 0174 A5EEAA6A 		vfma.f32	s12, s11, s21
 1303 0178 3CEE6C5A 		vsub.f32	s10, s24, s25
 1304 017c E5EE8A6A 		vfma.f32	s13, s11, s20
 1305 0180 33EE03BA 		vadd.f32	s22, s6, s6
 1306 0184 A5EE2B8A 		vfma.f32	s16, s10, s23
 1307 0188 27EE075A 		vmul.f32	s10, s14, s14
 1308 018c 67EE0B3A 		vmul.f32	s7, s14, s22
 1309 0190 66EE4A5A 		vnmul.f32	s11, s12, s20
 1310 0194 65EE6B7A 		vnmul.f32	s15, s10, s23
 1311 0198 38EE088A 		vadd.f32	s16, s16, s16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 24


 1312 019c E3EEAA7A 		vfma.f32	s15, s7, s21
 1313 01a0 EAEEA65A 		vfma.f32	s11, s21, s13
 1314 01a4 26EEA60A 		vmul.f32	s0, s13, s13
 1315 01a8 68EE473A 		vnmul.f32	s7, s16, s14
 1316 01ac A6EE060A 		vfma.f32	s0, s12, s12
 1317 01b0 E3EE8A7A 		vfma.f32	s15, s7, s20
 1318 01b4 65EE875A 		vmul.f32	s11, s11, s14
 1319 01b8 F0EE003A 		vmov.f32	s7, #2.0e+0
 1320 01bc B0EE45AA 		vmov.f32	s20, s10
 1321 01c0 A5EEA30A 		vfma.f32	s0, s11, s7
 1322 01c4 A8EE08AA 		vfma.f32	s20, s16, s16
 1323 01c8 74EE644A 		vsub.f32	s9, s8, s9
 1324 01cc EBEE267A 		vfma.f32	s15, s22, s13
 1325 01d0 A4EE850A 		vfma.f32	s0, s9, s10
 1326 01d4 ABEE0BAA 		vfma.f32	s20, s22, s22
 1327 01d8 E8EE067A 		vfma.f32	s15, s16, s12
 1328 01dc 2AEE400A 		vnmul.f32	s0, s20, s0
 1329 01e0 F1EE67AA 		vneg.f32	s21, s15
 1330 01e4 A7EEA70A 		vfma.f32	s0, s15, s15
 1331 01e8 B5EE400A 		vcmp.f32	s0, #0
 1332 01ec F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1333 01f0 F1EEC07A 		vsqrt.f32	s15, s0
 1334 01f4 43D4     		bmi	.L170
 1335              	.L164:
 1336 01f6 2C4B     		ldr	r3, .L171+4
 1337 01f8 7AEEE77A 		vsub.f32	s15, s21, s15
 1338 01fc C7EE8AAA 		vdiv.f32	s21, s15, s20
 1339 0200 A8EE2A6A 		vfma.f32	s12, s16, s21
 1340 0204 EBEE2A6A 		vfma.f32	s13, s22, s21
 1341 0208 86EE078A 		vdiv.f32	s16, s12, s14
 1342 020c 86EE87AA 		vdiv.f32	s20, s13, s14
 1343 0210 85ED008A 		vstr.32	s16, [r5]
 1344 0214 85ED01AA 		vstr.32	s20, [r5, #4]
 1345 0218 C5ED02AA 		vstr.32	s21, [r5, #8]
 1346 021c D3F80831 		ldr	r3, [r3, #264]
 1347 0220 DB06     		lsls	r3, r3, #27
 1348 0222 28D5     		bpl	.L163
 1349 0224 19EE900A 		vmov	r0, s19
 1350 0228 FFF7FEFF 		bl	__aeabi_f2d
 1351 022c 0446     		mov	r4, r0
 1352 022e 1AEE900A 		vmov	r0, s21
 1353 0232 0D46     		mov	r5, r1
 1354 0234 FFF7FEFF 		bl	__aeabi_f2d
 1355 0238 CDE90801 		strd	r0, [sp, #32]
 1356 023c 1AEE100A 		vmov	r0, s20
 1357 0240 FFF7FEFF 		bl	__aeabi_f2d
 1358 0244 CDE90601 		strd	r0, [sp, #24]
 1359 0248 18EE100A 		vmov	r0, s16
 1360 024c FFF7FEFF 		bl	__aeabi_f2d
 1361 0250 CDE90401 		strd	r0, [sp, #16]
 1362 0254 19EE100A 		vmov	r0, s18
 1363 0258 FFF7FEFF 		bl	__aeabi_f2d
 1364 025c CDE90201 		strd	r0, [sp, #8]
 1365 0260 18EE900A 		vmov	r0, s17
 1366 0264 FFF7FEFF 		bl	__aeabi_f2d
 1367 0268 2246     		mov	r2, r4
 1368 026a CDE90001 		strd	r0, [sp]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 25


 1369 026e 2B46     		mov	r3, r5
 1370 0270 0E48     		ldr	r0, .L171+8
 1371 0272 FFF7FEFF 		bl	debugPrintf
 1372              	.L163:
 1373 0276 0FB0     		add	sp, sp, #60
 1374              		@ sp needed
 1375 0278 BDEC0E8B 		vldm	sp!, {d8-d14}
 1376 027c 30BD     		pop	{r4, r5, pc}
 1377              	.L170:
 1378 027e CDED0D6A 		vstr.32	s13, [sp, #52]	@ int
 1379 0282 8DED0C6A 		vstr.32	s12, [sp, #48]	@ int
 1380 0286 8DED0B7A 		vstr.32	s14, [sp, #44]	@ int
 1381 028a CDED0A7A 		vstr.32	s15, [sp, #40]	@ int
 1382 028e FFF7FEFF 		bl	sqrtf
 1383 0292 DDED0D6A 		vldr.32	s13, [sp, #52]	@ int
 1384 0296 9DED0C6A 		vldr.32	s12, [sp, #48]	@ int
 1385 029a 9DED0B7A 		vldr.32	s14, [sp, #44]	@ int
 1386 029e DDED0A7A 		vldr.32	s15, [sp, #40]	@ int
 1387 02a2 A8E7     		b	.L164
 1388              	.L172:
 1389              		.align	2
 1390              	.L171:
 1391 02a4 35FA8E3C 		.word	1016003125
 1392 02a8 00000000 		.word	reprap
 1393 02ac 00000000 		.word	.LC9
 1394              		.size	_ZNK21RotaryDeltaKinematics16ForwardTransformEfffPf, .-_ZNK21RotaryDeltaKinematics16ForwardT
 1395              		.section	.text._ZNK21RotaryDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 1396              		.align	1
 1397              		.p2align 2,,3
 1398              		.global	_ZNK21RotaryDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf
 1399              		.syntax unified
 1400              		.thumb
 1401              		.thumb_func
 1402              		.fpu fpv4-sp-d16
 1403              		.type	_ZNK21RotaryDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 1404              	_ZNK21RotaryDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 1405              		@ args = 8, pretend = 0, frame = 0
 1406              		@ frame_needed = 0, uses_anonymous_args = 0
 1407 0000 D1ED027A 		vldr.32	s15, [r1, #8]	@ int
 1408 0004 92ED021A 		vldr.32	s2, [r2, #8]
 1409 0008 D2ED010A 		vldr.32	s1, [r2, #4]
 1410 000c 92ED000A 		vldr.32	s0, [r2]
 1411 0010 F8EEE76A 		vcvt.f32.s32	s13, s15
 1412 0014 D1ED017A 		vldr.32	s15, [r1, #4]	@ int
 1413 0018 B8EEE77A 		vcvt.f32.s32	s14, s15
 1414 001c D1ED007A 		vldr.32	s15, [r1]	@ int
 1415 0020 F8EEE77A 		vcvt.f32.s32	s15, s15
 1416 0024 70B5     		push	{r4, r5, r6, lr}
 1417 0026 86EE811A 		vdiv.f32	s2, s13, s2
 1418 002a 1E46     		mov	r6, r3
 1419 002c 0C46     		mov	r4, r1
 1420 002e 0599     		ldr	r1, [sp, #20]
 1421 0030 1546     		mov	r5, r2
 1422 0032 C7EE200A 		vdiv.f32	s1, s14, s1
 1423 0036 87EE800A 		vdiv.f32	s0, s15, s0
 1424 003a FFF7FEFF 		bl	_ZNK21RotaryDeltaKinematics16ForwardTransformEfffPf
 1425 003e 032E     		cmp	r6, #3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 26


 1426 0040 16D9     		bls	.L173
 1427 0042 059B     		ldr	r3, [sp, #20]
 1428 0044 04EB8600 		add	r0, r4, r6, lsl #2
 1429 0048 0438     		subs	r0, r0, #4
 1430 004a 04F10801 		add	r1, r4, #8
 1431 004e 05F10C02 		add	r2, r5, #12
 1432 0052 0C33     		adds	r3, r3, #12
 1433              	.L175:
 1434 0054 51F8044F 		ldr	r4, [r1, #4]!
 1435 0058 F2EC016A 		vldmia.32	r2!, {s13}
 1436 005c 07EE904A 		vmov	s15, r4	@ int
 1437 0060 F8EEE77A 		vcvt.f32.s32	s15, s15
 1438 0064 8142     		cmp	r1, r0
 1439 0066 87EEA67A 		vdiv.f32	s14, s15, s13
 1440 006a A3EC017A 		vstmia.32	r3!, {s14}
 1441 006e F1D1     		bne	.L175
 1442              	.L173:
 1443 0070 70BD     		pop	{r4, r5, r6, pc}
 1444              		.size	_ZNK21RotaryDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK21RotaryDeltaKinematics
 1445 0072 00BF     		.section	.text._ZNK21RotaryDeltaKinematics25GetAssumedInitialPositionEjPf,"ax",%progbits
 1446              		.align	1
 1447              		.p2align 2,,3
 1448              		.global	_ZNK21RotaryDeltaKinematics25GetAssumedInitialPositionEjPf
 1449              		.syntax unified
 1450              		.thumb
 1451              		.thumb_func
 1452              		.fpu fpv4-sp-d16
 1453              		.type	_ZNK21RotaryDeltaKinematics25GetAssumedInitialPositionEjPf, %function
 1454              	_ZNK21RotaryDeltaKinematics25GetAssumedInitialPositionEjPf:
 1455              		@ args = 0, pretend = 0, frame = 0
 1456              		@ frame_needed = 0, uses_anonymous_args = 0
 1457 0000 9FED0B1A 		vldr.32	s2, .L183
 1458 0004 38B5     		push	{r3, r4, r5, lr}
 1459 0006 F0EE410A 		vmov.f32	s1, s2
 1460 000a 0D46     		mov	r5, r1
 1461 000c B0EE410A 		vmov.f32	s0, s2
 1462 0010 1146     		mov	r1, r2
 1463 0012 1446     		mov	r4, r2
 1464 0014 FFF7FEFF 		bl	_ZNK21RotaryDeltaKinematics16ForwardTransformEfffPf
 1465 0018 032D     		cmp	r5, #3
 1466 001a 08D9     		bls	.L178
 1467 001c 0023     		movs	r3, #0
 1468 001e 04EB8501 		add	r1, r4, r5, lsl #2
 1469 0022 04F10C02 		add	r2, r4, #12
 1470              	.L180:
 1471 0026 42F8043B 		str	r3, [r2], #4	@ float
 1472 002a 8A42     		cmp	r2, r1
 1473 002c FBD1     		bne	.L180
 1474              	.L178:
 1475 002e 38BD     		pop	{r3, r4, r5, pc}
 1476              	.L184:
 1477              		.align	2
 1478              	.L183:
 1479 0030 00000000 		.word	0
 1480              		.size	_ZNK21RotaryDeltaKinematics25GetAssumedInitialPositionEjPf, .-_ZNK21RotaryDeltaKinematics25G
 1481              		.global	_ZTV21RotaryDeltaKinematics
 1482              		.global	_ZN21RotaryDeltaKinematics17NormalTowerAnglesE
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 27


 1483              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1484              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1485              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1486              	_ZL28cpu_irq_prev_interrupt_state:
 1487 0000 00       		.space	1
 1488              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1489              		.align	2
 1490              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1491              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1492              	_ZL32cpu_irq_critical_section_counter:
 1493 0000 00000000 		.space	4
 1494              		.section	.rodata._ZN21RotaryDeltaKinematics17NormalTowerAnglesE,"a",%progbits
 1495              		.align	2
 1496              		.set	.LANCHOR0,. + 0
 1497              		.type	_ZN21RotaryDeltaKinematics17NormalTowerAnglesE, %object
 1498              		.size	_ZN21RotaryDeltaKinematics17NormalTowerAnglesE, 12
 1499              	_ZN21RotaryDeltaKinematics17NormalTowerAnglesE:
 1500 0000 000016C3 		.word	-1021968384
 1501 0004 0000F0C1 		.word	-1041235968
 1502 0008 0000B442 		.word	1119092736
 1503              		.section	.rodata._ZN21RotaryDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%
 1504              		.align	2
 1505              	.LC7:
 1506 0000 4B696E65 		.ascii	"Kinematics is rotary delta, arms (%.3f,%.2f,%.3f)mm"
 1506      6D617469 
 1506      63732069 
 1506      7320726F 
 1506      74617279 
 1507 0033 2C20726F 		.ascii	", rods (%.3f,%.3f,%.3f)mm, bearingHeights (%.3f,%.2"
 1507      64732028 
 1507      252E3366 
 1507      2C252E33 
 1507      662C252E 
 1508 0066 662C252E 		.ascii	"f,%.3f)mm, arm movement %.1f to %.1f\302\260, delta"
 1508      3366296D 
 1508      6D2C2061 
 1508      726D206D 
 1508      6F76656D 
 1509 0093 20726164 		.ascii	" radius %.3f, bed radius %.1f, angle corrections (%"
 1509      69757320 
 1509      252E3366 
 1509      2C206265 
 1509      64207261 
 1510 00c6 2E33662C 		.ascii	".3f,%.3f,%.3f)\302\260\000"
 1510      252E3366 
 1510      2C252E33 
 1510      6629C2B0 
 1510      00
 1511 00d7 00       		.space	1
 1512              	.LC8:
 1513 00d8 456E6473 		.ascii	"Endstop adjustments X%.2f Y%.2f Z%.2f\302\260\000"
 1513      746F7020 
 1513      61646A75 
 1513      73746D65 
 1513      6E747320 
 1514              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 1515              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 28


 1516              	.LC1:
 1517 0000 58595A00 		.ascii	"XYZ\000"
 1518              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 1519              		.align	2
 1520              	.LC0:
 1521 0000 58595A55 		.ascii	"XYZUVWABC\000"
 1521      56574142 
 1521      4300
 1522              		.section	.rodata._ZNK21RotaryDeltaKinematics16ForwardTransformEfffPf.str1.4,"aMS",%progbits,1
 1523              		.align	2
 1524              	.LC9:
 1525 0000 5472696C 		.ascii	"Trilaterated (%.2f, %.2f, %.2f)\302\260 to X=%.2f Y"
 1525      61746572 
 1525      61746564 
 1525      2028252E 
 1525      32662C20 
 1526 002d 3D252E32 		.ascii	"=%.2f Z=%.2f\012\000"
 1526      66205A3D 
 1526      252E3266 
 1526      0A00
 1527              		.section	.rodata._ZNK21RotaryDeltaKinematics17GetHomingFileNameEmmjRK9StringRef.str1.4,"aMS",%prog
 1528              		.align	2
 1529              	.LC3:
 1530 0000 686F6D65 		.ascii	"homedelta.g\000"
 1530      64656C74 
 1530      612E6700 
 1531              		.section	.rodata._ZNK21RotaryDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb.str1.4,"aMS",%prog
 1532              		.align	2
 1533              	.LC4:
 1534 0000 6F6B00   		.ascii	"ok\000"
 1535 0003 00       		.space	1
 1536              	.LC5:
 1537 0004 6661696C 		.ascii	"fail\000"
 1537      00
 1538 0009 000000   		.space	3
 1539              	.LC6:
 1540 000c 5472616E 		.ascii	"Transformed %.2f,%.2f,%.2f mm to %li,%li,%li steps "
 1540      73666F72 
 1540      6D656420 
 1540      252E3266 
 1540      2C252E32 
 1541 003f 25730A00 		.ascii	"%s\012\000"
 1542              		.section	.rodata._ZNK21RotaryDeltaKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 1543              		.align	2
 1544              	.LC2:
 1545 0000 526F7461 		.ascii	"Rotary delta\000"
 1545      72792064 
 1545      656C7461 
 1545      00
 1546              		.section	.rodata._ZTV21RotaryDeltaKinematics,"a",%progbits
 1547              		.align	2
 1548              		.set	.LANCHOR1,. + 0
 1549              		.type	_ZTV21RotaryDeltaKinematics, %object
 1550              		.size	_ZTV21RotaryDeltaKinematics, 128
 1551              	_ZTV21RotaryDeltaKinematics:
 1552 0000 00000000 		.word	0
 1553 0004 00000000 		.word	0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccLBkzwu.s 			page 29


 1554 0008 00000000 		.word	_ZNK21RotaryDeltaKinematics7GetNameEb
 1555 000c 00000000 		.word	_ZN21RotaryDeltaKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1556 0010 00000000 		.word	_ZNK21RotaryDeltaKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 1557 0014 00000000 		.word	_ZNK21RotaryDeltaKinematics21MotorStepsToCartesianEPKlPKfjjPf
 1558 0018 00000000 		.word	_ZNK21RotaryDeltaKinematics23SupportsAutoCalibrationEv
 1559 001c 00000000 		.word	_ZN21RotaryDeltaKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 1560 0020 00000000 		.word	_ZN21RotaryDeltaKinematics22SetCalibrationDefaultsEv
 1561 0024 00000000 		.word	_ZNK21RotaryDeltaKinematics26WriteCalibrationParametersEP9FileStore
 1562 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 1563 002c 00000000 		.word	_ZNK21RotaryDeltaKinematics11IsReachableEffb
 1564 0030 00000000 		.word	_ZNK21RotaryDeltaKinematics13LimitPositionEPfjmb
 1565 0034 00000000 		.word	_ZNK21RotaryDeltaKinematics23AxesToHomeBeforeProbingEv
 1566 0038 00000000 		.word	_ZNK21RotaryDeltaKinematics25GetAssumedInitialPositionEjPf
 1567 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 1568 0040 00000000 		.word	_ZNK21RotaryDeltaKinematics16NumHomingButtonsEj
 1569 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 1570 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 1571 004c 00000000 		.word	_ZNK21RotaryDeltaKinematics17GetHomingFileNameEmmjRK9StringRef
 1572 0050 00000000 		.word	_ZNK21RotaryDeltaKinematics24QueryTerminateHomingMoveEj
 1573 0054 00000000 		.word	_ZNK21RotaryDeltaKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 1574 0058 00000000 		.word	_ZNK21RotaryDeltaKinematics13GetHomingModeEv
 1575 005c 00000000 		.word	_ZNK21RotaryDeltaKinematics16AxesAssumedHomedEm
 1576 0060 00000000 		.word	_ZNK21RotaryDeltaKinematics15MustBeHomedAxesEmb
 1577 0064 00000000 		.word	_ZNK21RotaryDeltaKinematics19WriteResumeSettingsEP9FileStore
 1578 0068 00000000 		.word	_ZNK21RotaryDeltaKinematics25LimitSpeedAndAccelerationER3DDAPKf
 1579 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 1580 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 1581 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 1582 0078 00000000 		.word	_ZN21RotaryDeltaKinematicsD1Ev
 1583 007c 00000000 		.word	_ZN21RotaryDeltaKinematicsD0Ev
 1584              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
