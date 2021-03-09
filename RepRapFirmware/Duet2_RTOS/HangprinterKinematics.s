ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 1


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
  13              		.file	"HangprinterKinematics.cpp"
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
  35              		.section	.text._ZNK10Kinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK10Kinematics23AxesT
  36              		.align	1
  37              		.p2align 2,,3
  38              		.weak	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  39              		.syntax unified
  40              		.thumb
  41              		.thumb_func
  42              		.fpu fpv4-sp-d16
  43              		.type	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, %function
  44              	_ZNK10Kinematics23AxesToHomeBeforeProbingEv:
  45              		@ args = 0, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47              		@ link register save eliminated.
  48 0000 0320     		movs	r0, #3
  49 0002 7047     		bx	lr
  50              		.size	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, .-_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  51              		.section	.text._ZNK10Kinematics13GetMotionTypeEj,"axG",%progbits,_ZNK10Kinematics13GetMotionTypeEj
  52              		.align	1
  53              		.p2align 2,,3
  54              		.weak	_ZNK10Kinematics13GetMotionTypeEj
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 2


  58              		.fpu fpv4-sp-d16
  59              		.type	_ZNK10Kinematics13GetMotionTypeEj, %function
  60              	_ZNK10Kinematics13GetMotionTypeEj:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63              		@ link register save eliminated.
  64 0000 0020     		movs	r0, #0
  65 0002 7047     		bx	lr
  66              		.size	_ZNK10Kinematics13GetMotionTypeEj, .-_ZNK10Kinematics13GetMotionTypeEj
  67              		.section	.text._ZNK10Kinematics24IsContinuousRotationAxisEj,"axG",%progbits,_ZNK10Kinematics24IsCo
  68              		.align	1
  69              		.p2align 2,,3
  70              		.weak	_ZNK10Kinematics24IsContinuousRotationAxisEj
  71              		.syntax unified
  72              		.thumb
  73              		.thumb_func
  74              		.fpu fpv4-sp-d16
  75              		.type	_ZNK10Kinematics24IsContinuousRotationAxisEj, %function
  76              	_ZNK10Kinematics24IsContinuousRotationAxisEj:
  77              		@ args = 0, pretend = 0, frame = 0
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79              		@ link register save eliminated.
  80 0000 0020     		movs	r0, #0
  81 0002 7047     		bx	lr
  82              		.size	_ZNK10Kinematics24IsContinuousRotationAxisEj, .-_ZNK10Kinematics24IsContinuousRotationAxisEj
  83              		.section	.text._ZNK21HangprinterKinematics23SupportsAutoCalibrationEv,"axG",%progbits,_ZNK21Hangpr
  84              		.align	1
  85              		.p2align 2,,3
  86              		.weak	_ZNK21HangprinterKinematics23SupportsAutoCalibrationEv
  87              		.syntax unified
  88              		.thumb
  89              		.thumb_func
  90              		.fpu fpv4-sp-d16
  91              		.type	_ZNK21HangprinterKinematics23SupportsAutoCalibrationEv, %function
  92              	_ZNK21HangprinterKinematics23SupportsAutoCalibrationEv:
  93              		@ args = 0, pretend = 0, frame = 0
  94              		@ frame_needed = 0, uses_anonymous_args = 0
  95              		@ link register save eliminated.
  96 0000 0120     		movs	r0, #1
  97 0002 7047     		bx	lr
  98              		.size	_ZNK21HangprinterKinematics23SupportsAutoCalibrationEv, .-_ZNK21HangprinterKinematics23Suppo
  99              		.section	.text._ZNK21HangprinterKinematics16NumHomingButtonsEj,"axG",%progbits,_ZNK21HangprinterKi
 100              		.align	1
 101              		.p2align 2,,3
 102              		.weak	_ZNK21HangprinterKinematics16NumHomingButtonsEj
 103              		.syntax unified
 104              		.thumb
 105              		.thumb_func
 106              		.fpu fpv4-sp-d16
 107              		.type	_ZNK21HangprinterKinematics16NumHomingButtonsEj, %function
 108              	_ZNK21HangprinterKinematics16NumHomingButtonsEj:
 109              		@ args = 0, pretend = 0, frame = 0
 110              		@ frame_needed = 0, uses_anonymous_args = 0
 111              		@ link register save eliminated.
 112 0000 0020     		movs	r0, #0
 113 0002 7047     		bx	lr
 114              		.size	_ZNK21HangprinterKinematics16NumHomingButtonsEj, .-_ZNK21HangprinterKinematics16NumHomingBut
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 3


 115              		.section	.text._ZNK21HangprinterKinematics17HomingButtonNamesEv,"axG",%progbits,_ZNK21HangprinterK
 116              		.align	1
 117              		.p2align 2,,3
 118              		.weak	_ZNK21HangprinterKinematics17HomingButtonNamesEv
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu fpv4-sp-d16
 123              		.type	_ZNK21HangprinterKinematics17HomingButtonNamesEv, %function
 124              	_ZNK21HangprinterKinematics17HomingButtonNamesEv:
 125              		@ args = 0, pretend = 0, frame = 0
 126              		@ frame_needed = 0, uses_anonymous_args = 0
 127              		@ link register save eliminated.
 128 0000 0048     		ldr	r0, .L11
 129 0002 7047     		bx	lr
 130              	.L12:
 131              		.align	2
 132              	.L11:
 133 0004 00000000 		.word	.LC12
 134              		.size	_ZNK21HangprinterKinematics17HomingButtonNamesEv, .-_ZNK21HangprinterKinematics17HomingButto
 135              		.section	.text._ZNK21HangprinterKinematics16MachineAxisNamesEv,"axG",%progbits,_ZNK21HangprinterKi
 136              		.align	1
 137              		.p2align 2,,3
 138              		.weak	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 139              		.syntax unified
 140              		.thumb
 141              		.thumb_func
 142              		.fpu fpv4-sp-d16
 143              		.type	_ZNK21HangprinterKinematics16MachineAxisNamesEv, %function
 144              	_ZNK21HangprinterKinematics16MachineAxisNamesEv:
 145              		@ args = 0, pretend = 0, frame = 0
 146              		@ frame_needed = 0, uses_anonymous_args = 0
 147              		@ link register save eliminated.
 148 0000 0048     		ldr	r0, .L14
 149 0002 7047     		bx	lr
 150              	.L15:
 151              		.align	2
 152              	.L14:
 153 0004 00000000 		.word	.LC12
 154              		.size	_ZNK21HangprinterKinematics16MachineAxisNamesEv, .-_ZNK21HangprinterKinematics16MachineAxisN
 155              		.section	.text._ZNK21HangprinterKinematics13GetHomingModeEv,"axG",%progbits,_ZNK21HangprinterKinem
 156              		.align	1
 157              		.p2align 2,,3
 158              		.weak	_ZNK21HangprinterKinematics13GetHomingModeEv
 159              		.syntax unified
 160              		.thumb
 161              		.thumb_func
 162              		.fpu fpv4-sp-d16
 163              		.type	_ZNK21HangprinterKinematics13GetHomingModeEv, %function
 164              	_ZNK21HangprinterKinematics13GetHomingModeEv:
 165              		@ args = 0, pretend = 0, frame = 0
 166              		@ frame_needed = 0, uses_anonymous_args = 0
 167              		@ link register save eliminated.
 168 0000 0120     		movs	r0, #1
 169 0002 7047     		bx	lr
 170              		.size	_ZNK21HangprinterKinematics13GetHomingModeEv, .-_ZNK21HangprinterKinematics13GetHomingModeEv
 171              		.section	.text._ZNK21HangprinterKinematics7GetNameEb,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 4


 172              		.align	1
 173              		.p2align 2,,3
 174              		.global	_ZNK21HangprinterKinematics7GetNameEb
 175              		.syntax unified
 176              		.thumb
 177              		.thumb_func
 178              		.fpu fpv4-sp-d16
 179              		.type	_ZNK21HangprinterKinematics7GetNameEb, %function
 180              	_ZNK21HangprinterKinematics7GetNameEb:
 181              		@ args = 0, pretend = 0, frame = 0
 182              		@ frame_needed = 0, uses_anonymous_args = 0
 183              		@ link register save eliminated.
 184 0000 0048     		ldr	r0, .L18
 185 0002 7047     		bx	lr
 186              	.L19:
 187              		.align	2
 188              	.L18:
 189 0004 00000000 		.word	.LC13
 190              		.size	_ZNK21HangprinterKinematics7GetNameEb, .-_ZNK21HangprinterKinematics7GetNameEb
 191              		.section	.text._ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj,"ax",%progbits
 192              		.align	1
 193              		.p2align 2,,3
 194              		.global	_ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj
 195              		.syntax unified
 196              		.thumb
 197              		.thumb_func
 198              		.fpu fpv4-sp-d16
 199              		.type	_ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj, %function
 200              	_ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj:
 201              		@ args = 0, pretend = 0, frame = 0
 202              		@ frame_needed = 0, uses_anonymous_args = 0
 203              		@ link register save eliminated.
 204 0000 2A31     		adds	r1, r1, #42
 205 0002 50F82100 		ldr	r0, [r0, r1, lsl #2]
 206 0006 7047     		bx	lr
 207              		.size	_ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj, .-_ZN21HangprinterKinematics23GetFull
 208              		.section	.text._ZNK21HangprinterKinematics11IsReachableEffb,"ax",%progbits
 209              		.align	1
 210              		.p2align 2,,3
 211              		.global	_ZNK21HangprinterKinematics11IsReachableEffb
 212              		.syntax unified
 213              		.thumb
 214              		.thumb_func
 215              		.fpu fpv4-sp-d16
 216              		.type	_ZNK21HangprinterKinematics11IsReachableEffb, %function
 217              	_ZNK21HangprinterKinematics11IsReachableEffb:
 218              		@ args = 0, pretend = 0, frame = 0
 219              		@ frame_needed = 0, uses_anonymous_args = 0
 220              		@ link register save eliminated.
 221 0000 60EEA00A 		vmul.f32	s1, s1, s1
 222 0004 D0ED437A 		vldr.32	s15, [r0, #268]
 223 0008 E0EE000A 		vfma.f32	s1, s0, s0
 224 000c F4EEE70A 		vcmpe.f32	s1, s15
 225 0010 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 226 0014 4CBF     		ite	mi
 227 0016 0120     		movmi	r0, #1
 228 0018 0020     		movpl	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 5


 229 001a 7047     		bx	lr
 230              		.size	_ZNK21HangprinterKinematics11IsReachableEffb, .-_ZNK21HangprinterKinematics11IsReachableEffb
 231              		.section	.text._ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf,"ax",%progbits
 232              		.align	1
 233              		.p2align 2,,3
 234              		.global	_ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf
 235              		.syntax unified
 236              		.thumb
 237              		.thumb_func
 238              		.fpu fpv4-sp-d16
 239              		.type	_ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf, %function
 240              	_ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf:
 241              		@ args = 0, pretend = 0, frame = 0
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243              		@ link register save eliminated.
 244 0000 31B1     		cbz	r1, .L22
 245 0002 0023     		movs	r3, #0
 246 0004 02EB8101 		add	r1, r2, r1, lsl #2
 247              	.L24:
 248 0008 42F8043B 		str	r3, [r2], #4	@ float
 249 000c 8A42     		cmp	r2, r1
 250 000e FBD1     		bne	.L24
 251              	.L22:
 252 0010 7047     		bx	lr
 253              		.size	_ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf, .-_ZNK21HangprinterKinematics25G
 254 0012 00BF     		.section	.text._ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj,"ax",%progbits
 255              		.align	1
 256              		.p2align 2,,3
 257              		.global	_ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj
 258              		.syntax unified
 259              		.thumb
 260              		.thumb_func
 261              		.fpu fpv4-sp-d16
 262              		.type	_ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj, %function
 263              	_ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj:
 264              		@ args = 0, pretend = 0, frame = 0
 265              		@ frame_needed = 0, uses_anonymous_args = 0
 266              		@ link register save eliminated.
 267 0000 0020     		movs	r0, #0
 268 0002 7047     		bx	lr
 269              		.size	_ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj, .-_ZNK21HangprinterKinematics24Quer
 270              		.section	.text._ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA,"ax",%progbits
 271              		.align	1
 272              		.p2align 2,,3
 273              		.global	_ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 274              		.syntax unified
 275              		.thumb
 276              		.thumb_func
 277              		.fpu fpv4-sp-d16
 278              		.type	_ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, %function
 279              	_ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA:
 280              		@ args = 4, pretend = 0, frame = 0
 281              		@ frame_needed = 0, uses_anonymous_args = 0
 282              		@ link register save eliminated.
 283 0000 7047     		bx	lr
 284              		.size	_ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, .-_ZNK21HangprinterKinemati
 285 0002 00BF     		.section	.text._ZNK21HangprinterKinematics16AxesAssumedHomedEm,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 6


 286              		.align	1
 287              		.p2align 2,,3
 288              		.global	_ZNK21HangprinterKinematics16AxesAssumedHomedEm
 289              		.syntax unified
 290              		.thumb
 291              		.thumb_func
 292              		.fpu fpv4-sp-d16
 293              		.type	_ZNK21HangprinterKinematics16AxesAssumedHomedEm, %function
 294              	_ZNK21HangprinterKinematics16AxesAssumedHomedEm:
 295              		@ args = 0, pretend = 0, frame = 0
 296              		@ frame_needed = 0, uses_anonymous_args = 0
 297              		@ link register save eliminated.
 298 0000 01F00703 		and	r3, r1, #7
 299 0004 072B     		cmp	r3, #7
 300 0006 0CBF     		ite	eq
 301 0008 41F01100 		orreq	r0, r1, #17
 302 000c 21F00700 		bicne	r0, r1, #7
 303 0010 7047     		bx	lr
 304              		.size	_ZNK21HangprinterKinematics16AxesAssumedHomedEm, .-_ZNK21HangprinterKinematics16AxesAssumedH
 305 0012 00BF     		.section	.text._ZNK21HangprinterKinematics15MustBeHomedAxesEmb,"ax",%progbits
 306              		.align	1
 307              		.p2align 2,,3
 308              		.global	_ZNK21HangprinterKinematics15MustBeHomedAxesEmb
 309              		.syntax unified
 310              		.thumb
 311              		.thumb_func
 312              		.fpu fpv4-sp-d16
 313              		.type	_ZNK21HangprinterKinematics15MustBeHomedAxesEmb, %function
 314              	_ZNK21HangprinterKinematics15MustBeHomedAxesEmb:
 315              		@ args = 0, pretend = 0, frame = 0
 316              		@ frame_needed = 0, uses_anonymous_args = 0
 317              		@ link register save eliminated.
 318 0000 4B07     		lsls	r3, r1, #29
 319 0002 14BF     		ite	ne
 320 0004 41F00700 		orrne	r0, r1, #7
 321 0008 0846     		moveq	r0, r1
 322 000a 7047     		bx	lr
 323              		.size	_ZNK21HangprinterKinematics15MustBeHomedAxesEmb, .-_ZNK21HangprinterKinematics15MustBeHomedA
 324              		.section	.text._ZN11FixedMatrixIdLj32ELj3EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EEclEjj
 325              		.align	1
 326              		.p2align 2,,3
 327              		.weak	_ZN11FixedMatrixIdLj32ELj3EEclEjj
 328              		.syntax unified
 329              		.thumb
 330              		.thumb_func
 331              		.fpu fpv4-sp-d16
 332              		.type	_ZN11FixedMatrixIdLj32ELj3EEclEjj, %function
 333              	_ZN11FixedMatrixIdLj32ELj3EEclEjj:
 334              		@ args = 0, pretend = 0, frame = 0
 335              		@ frame_needed = 0, uses_anonymous_args = 0
 336              		@ link register save eliminated.
 337 0000 0132     		adds	r2, r2, #1
 338 0002 01EB4101 		add	r1, r1, r1, lsl #1
 339 0006 1144     		add	r1, r1, r2
 340 0008 00EBC100 		add	r0, r0, r1, lsl #3
 341 000c 7047     		bx	lr
 342              		.size	_ZN11FixedMatrixIdLj32ELj3EEclEjj, .-_ZN11FixedMatrixIdLj32ELj3EEclEjj
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 7


 343 000e 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj9EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EEclEjj
 344              		.align	1
 345              		.p2align 2,,3
 346              		.weak	_ZN11FixedMatrixIdLj32ELj9EEclEjj
 347              		.syntax unified
 348              		.thumb
 349              		.thumb_func
 350              		.fpu fpv4-sp-d16
 351              		.type	_ZN11FixedMatrixIdLj32ELj9EEclEjj, %function
 352              	_ZN11FixedMatrixIdLj32ELj9EEclEjj:
 353              		@ args = 0, pretend = 0, frame = 0
 354              		@ frame_needed = 0, uses_anonymous_args = 0
 355              		@ link register save eliminated.
 356 0000 0132     		adds	r2, r2, #1
 357 0002 01EBC101 		add	r1, r1, r1, lsl #3
 358 0006 1144     		add	r1, r1, r2
 359 0008 00EBC100 		add	r0, r0, r1, lsl #3
 360 000c 7047     		bx	lr
 361              		.size	_ZN11FixedMatrixIdLj32ELj9EEclEjj, .-_ZN11FixedMatrixIdLj32ELj9EEclEjj
 362 000e 00BF     		.section	.text._ZN11FixedMatrixIdLj9ELj10EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EEclEjj
 363              		.align	1
 364              		.p2align 2,,3
 365              		.weak	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 366              		.syntax unified
 367              		.thumb
 368              		.thumb_func
 369              		.fpu fpv4-sp-d16
 370              		.type	_ZN11FixedMatrixIdLj9ELj10EEclEjj, %function
 371              	_ZN11FixedMatrixIdLj9ELj10EEclEjj:
 372              		@ args = 0, pretend = 0, frame = 0
 373              		@ frame_needed = 0, uses_anonymous_args = 0
 374              		@ link register save eliminated.
 375 0000 0132     		adds	r2, r2, #1
 376 0002 01EB8101 		add	r1, r1, r1, lsl #2
 377 0006 02EB4101 		add	r1, r2, r1, lsl #1
 378 000a 00EBC100 		add	r0, r0, r1, lsl #3
 379 000e 7047     		bx	lr
 380              		.size	_ZN11FixedMatrixIdLj9ELj10EEclEjj, .-_ZN11FixedMatrixIdLj9ELj10EEclEjj
 381              		.section	.text._ZN11FixedMatrixIdLj9ELj10EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EED5Ev,c
 382              		.align	1
 383              		.p2align 2,,3
 384              		.weak	_ZN11FixedMatrixIdLj9ELj10EED2Ev
 385              		.syntax unified
 386              		.thumb
 387              		.thumb_func
 388              		.fpu fpv4-sp-d16
 389              		.type	_ZN11FixedMatrixIdLj9ELj10EED2Ev, %function
 390              	_ZN11FixedMatrixIdLj9ELj10EED2Ev:
 391              		@ args = 0, pretend = 0, frame = 0
 392              		@ frame_needed = 0, uses_anonymous_args = 0
 393              		@ link register save eliminated.
 394 0000 7047     		bx	lr
 395              		.size	_ZN11FixedMatrixIdLj9ELj10EED2Ev, .-_ZN11FixedMatrixIdLj9ELj10EED2Ev
 396              		.weak	_ZN11FixedMatrixIdLj9ELj10EED1Ev
 397              		.thumb_set _ZN11FixedMatrixIdLj9ELj10EED1Ev,_ZN11FixedMatrixIdLj9ELj10EED2Ev
 398 0002 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj9EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EED5Ev,c
 399              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 8


 400              		.p2align 2,,3
 401              		.weak	_ZN11FixedMatrixIdLj32ELj9EED2Ev
 402              		.syntax unified
 403              		.thumb
 404              		.thumb_func
 405              		.fpu fpv4-sp-d16
 406              		.type	_ZN11FixedMatrixIdLj32ELj9EED2Ev, %function
 407              	_ZN11FixedMatrixIdLj32ELj9EED2Ev:
 408              		@ args = 0, pretend = 0, frame = 0
 409              		@ frame_needed = 0, uses_anonymous_args = 0
 410              		@ link register save eliminated.
 411 0000 7047     		bx	lr
 412              		.size	_ZN11FixedMatrixIdLj32ELj9EED2Ev, .-_ZN11FixedMatrixIdLj32ELj9EED2Ev
 413              		.weak	_ZN11FixedMatrixIdLj32ELj9EED1Ev
 414              		.thumb_set _ZN11FixedMatrixIdLj32ELj9EED1Ev,_ZN11FixedMatrixIdLj32ELj9EED2Ev
 415 0002 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj3EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EED5Ev,c
 416              		.align	1
 417              		.p2align 2,,3
 418              		.weak	_ZN11FixedMatrixIdLj32ELj3EED2Ev
 419              		.syntax unified
 420              		.thumb
 421              		.thumb_func
 422              		.fpu fpv4-sp-d16
 423              		.type	_ZN11FixedMatrixIdLj32ELj3EED2Ev, %function
 424              	_ZN11FixedMatrixIdLj32ELj3EED2Ev:
 425              		@ args = 0, pretend = 0, frame = 0
 426              		@ frame_needed = 0, uses_anonymous_args = 0
 427              		@ link register save eliminated.
 428 0000 7047     		bx	lr
 429              		.size	_ZN11FixedMatrixIdLj32ELj3EED2Ev, .-_ZN11FixedMatrixIdLj32ELj3EED2Ev
 430              		.weak	_ZN11FixedMatrixIdLj32ELj3EED1Ev
 431              		.thumb_set _ZN11FixedMatrixIdLj32ELj3EED1Ev,_ZN11FixedMatrixIdLj32ELj3EED2Ev
 432 0002 00BF     		.section	.text._ZN21HangprinterKinematicsD2Ev,"axG",%progbits,_ZN21HangprinterKinematicsD5Ev,comda
 433              		.align	1
 434              		.p2align 2,,3
 435              		.weak	_ZN21HangprinterKinematicsD2Ev
 436              		.syntax unified
 437              		.thumb
 438              		.thumb_func
 439              		.fpu fpv4-sp-d16
 440              		.type	_ZN21HangprinterKinematicsD2Ev, %function
 441              	_ZN21HangprinterKinematicsD2Ev:
 442              		@ args = 0, pretend = 0, frame = 0
 443              		@ frame_needed = 0, uses_anonymous_args = 0
 444              		@ link register save eliminated.
 445 0000 7047     		bx	lr
 446              		.size	_ZN21HangprinterKinematicsD2Ev, .-_ZN21HangprinterKinematicsD2Ev
 447              		.weak	_ZN21HangprinterKinematicsD1Ev
 448              		.thumb_set _ZN21HangprinterKinematicsD1Ev,_ZN21HangprinterKinematicsD2Ev
 449 0002 00BF     		.section	.text._ZNK11FixedMatrixIdLj9ELj10EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj9ELj10EE4
 450              		.align	1
 451              		.p2align 2,,3
 452              		.weak	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 453              		.syntax unified
 454              		.thumb
 455              		.thumb_func
 456              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 9


 457              		.type	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv, %function
 458              	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv:
 459              		@ args = 0, pretend = 0, frame = 0
 460              		@ frame_needed = 0, uses_anonymous_args = 0
 461              		@ link register save eliminated.
 462 0000 0920     		movs	r0, #9
 463 0002 7047     		bx	lr
 464              		.size	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv, .-_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 465              		.section	.text._ZNK11FixedMatrixIdLj9ELj10EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj9ELj10EE4
 466              		.align	1
 467              		.p2align 2,,3
 468              		.weak	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 469              		.syntax unified
 470              		.thumb
 471              		.thumb_func
 472              		.fpu fpv4-sp-d16
 473              		.type	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv, %function
 474              	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv:
 475              		@ args = 0, pretend = 0, frame = 0
 476              		@ frame_needed = 0, uses_anonymous_args = 0
 477              		@ link register save eliminated.
 478 0000 0A20     		movs	r0, #10
 479 0002 7047     		bx	lr
 480              		.size	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv, .-_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 481              		.section	.text._ZNK11FixedMatrixIdLj9ELj10EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj9ELj10EEclE
 482              		.align	1
 483              		.p2align 2,,3
 484              		.weak	_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 485              		.syntax unified
 486              		.thumb
 487              		.thumb_func
 488              		.fpu fpv4-sp-d16
 489              		.type	_ZNK11FixedMatrixIdLj9ELj10EEclEjj, %function
 490              	_ZNK11FixedMatrixIdLj9ELj10EEclEjj:
 491              		@ args = 0, pretend = 0, frame = 0
 492              		@ frame_needed = 0, uses_anonymous_args = 0
 493              		@ link register save eliminated.
 494 0000 0132     		adds	r2, r2, #1
 495 0002 01EB8101 		add	r1, r1, r1, lsl #2
 496 0006 02EB4101 		add	r1, r2, r1, lsl #1
 497 000a 00EBC100 		add	r0, r0, r1, lsl #3
 498 000e 7047     		bx	lr
 499              		.size	_ZNK11FixedMatrixIdLj9ELj10EEclEjj, .-_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 500              		.section	.text._ZNK11FixedMatrixIdLj32ELj9EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj9EE4
 501              		.align	1
 502              		.p2align 2,,3
 503              		.weak	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 504              		.syntax unified
 505              		.thumb
 506              		.thumb_func
 507              		.fpu fpv4-sp-d16
 508              		.type	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv, %function
 509              	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv:
 510              		@ args = 0, pretend = 0, frame = 0
 511              		@ frame_needed = 0, uses_anonymous_args = 0
 512              		@ link register save eliminated.
 513 0000 2020     		movs	r0, #32
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 10


 514 0002 7047     		bx	lr
 515              		.size	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv, .-_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 516              		.section	.text._ZNK11FixedMatrixIdLj32ELj9EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj9EE4
 517              		.align	1
 518              		.p2align 2,,3
 519              		.weak	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 520              		.syntax unified
 521              		.thumb
 522              		.thumb_func
 523              		.fpu fpv4-sp-d16
 524              		.type	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv, %function
 525              	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv:
 526              		@ args = 0, pretend = 0, frame = 0
 527              		@ frame_needed = 0, uses_anonymous_args = 0
 528              		@ link register save eliminated.
 529 0000 0920     		movs	r0, #9
 530 0002 7047     		bx	lr
 531              		.size	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv, .-_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 532              		.section	.text._ZNK11FixedMatrixIdLj32ELj9EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj9EEclE
 533              		.align	1
 534              		.p2align 2,,3
 535              		.weak	_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 536              		.syntax unified
 537              		.thumb
 538              		.thumb_func
 539              		.fpu fpv4-sp-d16
 540              		.type	_ZNK11FixedMatrixIdLj32ELj9EEclEjj, %function
 541              	_ZNK11FixedMatrixIdLj32ELj9EEclEjj:
 542              		@ args = 0, pretend = 0, frame = 0
 543              		@ frame_needed = 0, uses_anonymous_args = 0
 544              		@ link register save eliminated.
 545 0000 0132     		adds	r2, r2, #1
 546 0002 01EBC101 		add	r1, r1, r1, lsl #3
 547 0006 1144     		add	r1, r1, r2
 548 0008 00EBC100 		add	r0, r0, r1, lsl #3
 549 000c 7047     		bx	lr
 550              		.size	_ZNK11FixedMatrixIdLj32ELj9EEclEjj, .-_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 551 000e 00BF     		.section	.text._ZNK11FixedMatrixIdLj32ELj3EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj3EE4
 552              		.align	1
 553              		.p2align 2,,3
 554              		.weak	_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv
 555              		.syntax unified
 556              		.thumb
 557              		.thumb_func
 558              		.fpu fpv4-sp-d16
 559              		.type	_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv, %function
 560              	_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv:
 561              		@ args = 0, pretend = 0, frame = 0
 562              		@ frame_needed = 0, uses_anonymous_args = 0
 563              		@ link register save eliminated.
 564 0000 2020     		movs	r0, #32
 565 0002 7047     		bx	lr
 566              		.size	_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv, .-_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv
 567              		.section	.text._ZNK11FixedMatrixIdLj32ELj3EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj3EE4
 568              		.align	1
 569              		.p2align 2,,3
 570              		.weak	_ZNK11FixedMatrixIdLj32ELj3EE4colsEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 11


 571              		.syntax unified
 572              		.thumb
 573              		.thumb_func
 574              		.fpu fpv4-sp-d16
 575              		.type	_ZNK11FixedMatrixIdLj32ELj3EE4colsEv, %function
 576              	_ZNK11FixedMatrixIdLj32ELj3EE4colsEv:
 577              		@ args = 0, pretend = 0, frame = 0
 578              		@ frame_needed = 0, uses_anonymous_args = 0
 579              		@ link register save eliminated.
 580 0000 0320     		movs	r0, #3
 581 0002 7047     		bx	lr
 582              		.size	_ZNK11FixedMatrixIdLj32ELj3EE4colsEv, .-_ZNK11FixedMatrixIdLj32ELj3EE4colsEv
 583              		.section	.text._ZNK11FixedMatrixIdLj32ELj3EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj3EEclE
 584              		.align	1
 585              		.p2align 2,,3
 586              		.weak	_ZNK11FixedMatrixIdLj32ELj3EEclEjj
 587              		.syntax unified
 588              		.thumb
 589              		.thumb_func
 590              		.fpu fpv4-sp-d16
 591              		.type	_ZNK11FixedMatrixIdLj32ELj3EEclEjj, %function
 592              	_ZNK11FixedMatrixIdLj32ELj3EEclEjj:
 593              		@ args = 0, pretend = 0, frame = 0
 594              		@ frame_needed = 0, uses_anonymous_args = 0
 595              		@ link register save eliminated.
 596 0000 0132     		adds	r2, r2, #1
 597 0002 01EB4101 		add	r1, r1, r1, lsl #1
 598 0006 1144     		add	r1, r1, r2
 599 0008 00EBC100 		add	r0, r0, r1, lsl #3
 600 000c 7047     		bx	lr
 601              		.size	_ZNK11FixedMatrixIdLj32ELj3EEclEjj, .-_ZNK11FixedMatrixIdLj32ELj3EEclEjj
 602              		.global	__aeabi_f2d
 603 000e 00BF     		.section	.text._ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 604              		.align	1
 605              		.p2align 2,,3
 606              		.global	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 607              		.syntax unified
 608              		.thumb
 609              		.thumb_func
 610              		.fpu fpv4-sp-d16
 611              		.type	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 612              	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 613              		@ args = 12, pretend = 0, frame = 64
 614              		@ frame_needed = 0, uses_anonymous_args = 0
 615 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 616 0004 D1ED017A 		vldr.32	s15, [r1, #4]
 617 0008 D0ED086A 		vldr.32	s13, [r0, #32]
 618 000c 90ED0B7A 		vldr.32	s14, [r0, #44]
 619 0010 7D4D     		ldr	r5, .L76
 620 0012 91ED006A 		vldr.32	s12, [r1]
 621 0016 90ED063A 		vldr.32	s6, [r0, #24]
 622 001a D0ED093A 		vldr.32	s7, [r0, #36]
 623 001e 90ED0C4A 		vldr.32	s8, [r0, #48]
 624 0022 D0ED044A 		vldr.32	s9, [r0, #16]
 625 0026 90ED075A 		vldr.32	s10, [r0, #28]
 626 002a 90ED0A2A 		vldr.32	s4, [r0, #40]
 627 002e D0ED0D5A 		vldr.32	s11, [r0, #52]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 12


 628 0032 D1ED022A 		vldr.32	s5, [r1, #8]
 629 0036 2DED048B 		vpush.64	{d8, d9}
 630 003a D0ED058A 		vldr.32	s17, [r0, #20]
 631 003e 9FED739A 		vldr.32	s18, .L76+4
 632 0042 0746     		mov	r7, r0
 633 0044 77EEE88A 		vsub.f32	s17, s15, s17
 634 0048 77EEE66A 		vsub.f32	s13, s15, s13
 635 004c 37EEC77A 		vsub.f32	s14, s15, s14
 636 0050 8946     		mov	r9, r1
 637 0052 9246     		mov	r10, r2
 638 0054 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 639 0056 68EEA88A 		vmul.f32	s17, s17, s17
 640 005a 66EEA66A 		vmul.f32	s13, s13, s13
 641 005e 27EE077A 		vmul.f32	s14, s14, s14
 642 0062 67EEA77A 		vmul.f32	s15, s15, s15
 643 0066 90B0     		sub	sp, sp, #64
 644 0068 E6EE067A 		vfma.f32	s15, s12, s12
 645 006c 06AC     		add	r4, sp, #24
 646 006e 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 647 0070 E3EE038A 		vfma.f32	s17, s6, s6
 648 0074 2B68     		ldr	r3, [r5]
 649 0076 2360     		str	r3, [r4]
 650 0078 E3EEA36A 		vfma.f32	s13, s7, s7
 651 007c 4FF07E53 		mov	r3, #1065353216
 652 0080 0024     		movs	r4, #0
 653 0082 A4EE047A 		vfma.f32	s14, s8, s8
 654 0086 0193     		str	r3, [sp, #4]	@ float
 655 0088 01AB     		add	r3, sp, #4
 656 008a 76EE644A 		vsub.f32	s9, s12, s9
 657 008e 36EE455A 		vsub.f32	s10, s12, s10
 658 0092 75EEE25A 		vsub.f32	s11, s11, s5
 659 0096 36EE426A 		vsub.f32	s12, s12, s4
 660 009a E4EEA48A 		vfma.f32	s17, s9, s9
 661 009e DDF87480 		ldr	r8, [sp, #116]
 662 00a2 E5EE056A 		vfma.f32	s13, s10, s10
 663 00a6 07F1F806 		add	r6, r7, #248
 664 00aa 0BAD     		add	r5, sp, #44
 665 00ac A6EE067A 		vfma.f32	s14, s12, s12
 666 00b0 03EB8403 		add	r3, r3, r4, lsl #2
 667 00b4 E5EEA57A 		vfma.f32	s15, s11, s11
 668 00b8 CDED028A 		vstr.32	s17, [sp, #8]
 669 00bc CDED036A 		vstr.32	s13, [sp, #12]
 670 00c0 8DED047A 		vstr.32	s14, [sp, #16]
 671 00c4 CDED057A 		vstr.32	s15, [sp, #20]
 672 00c8 CCB1     		cbz	r4, .L73
 673              	.L55:
 674 00ca 93ED000A 		vldr.32	s0, [r3]
 675 00ce B5EE400A 		vcmp.f32	s0, #0
 676 00d2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 677 00d6 B1EEC08A 		vsqrt.f32	s16, s0
 678 00da 00F19180 		bmi	.L74
 679              	.L57:
 680 00de 042C     		cmp	r4, #4
 681 00e0 D6ED007A 		vldr.32	s15, [r6]
 682 00e4 38EE678A 		vsub.f32	s16, s16, s15
 683 00e8 85ED008A 		vstr.32	s16, [r5]
 684 00ec 12D0     		beq	.L75
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 13


 685              	.L56:
 686 00ee 0134     		adds	r4, r4, #1
 687 00f0 01AB     		add	r3, sp, #4
 688 00f2 0436     		adds	r6, r6, #4
 689 00f4 0435     		adds	r5, r5, #4
 690 00f6 03EB8403 		add	r3, r3, r4, lsl #2
 691 00fa 002C     		cmp	r4, #0
 692 00fc E5D1     		bne	.L55
 693              	.L73:
 694 00fe D7ED0D7A 		vldr.32	s15, [r7, #52]
 695 0102 99ED027A 		vldr.32	s14, [r9, #8]
 696 0106 77EEC77A 		vsub.f32	s15, s15, s14
 697 010a 77EEC97A 		vsub.f32	s15, s15, s18
 698 010e CDED0B7A 		vstr.32	s15, [sp, #44]
 699 0112 ECE7     		b	.L56
 700              	.L75:
 701 0114 F5EEC08A 		vcmpe.f32	s17, #0
 702 0118 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 703 011c 4FDD     		ble	.L58
 704 011e DDED037A 		vldr.32	s15, [sp, #12]
 705 0122 F5EEC07A 		vcmpe.f32	s15, #0
 706 0126 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 707 012a 48DD     		ble	.L58
 708 012c DDED047A 		vldr.32	s15, [sp, #16]
 709 0130 F5EEC07A 		vcmpe.f32	s15, #0
 710 0134 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 711 0138 41DD     		ble	.L58
 712 013a DDED057A 		vldr.32	s15, [sp, #20]
 713 013e F5EEC07A 		vcmpe.f32	s15, #0
 714 0142 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 715 0146 3ADD     		ble	.L58
 716 0148 DDED017A 		vldr.32	s15, [sp, #4]
 717 014c F5EEC07A 		vcmpe.f32	s15, #0
 718 0150 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 719 0154 33DD     		ble	.L58
 720 0156 DAED007A 		vldr.32	s15, [r10]
 721 015a 9DED0B0A 		vldr.32	s0, [sp, #44]
 722 015e 20EE270A 		vmul.f32	s0, s0, s15
 723 0162 FFF7FEFF 		bl	lrintf
 724 0166 DAED017A 		vldr.32	s15, [r10, #4]
 725 016a 9DED0C0A 		vldr.32	s0, [sp, #48]
 726 016e C8F80000 		str	r0, [r8]
 727 0172 20EE270A 		vmul.f32	s0, s0, s15
 728 0176 FFF7FEFF 		bl	lrintf
 729 017a DAED027A 		vldr.32	s15, [r10, #8]
 730 017e 9DED0D0A 		vldr.32	s0, [sp, #52]
 731 0182 C8F80400 		str	r0, [r8, #4]
 732 0186 20EE270A 		vmul.f32	s0, s0, s15
 733 018a FFF7FEFF 		bl	lrintf
 734 018e DAED037A 		vldr.32	s15, [r10, #12]
 735 0192 9DED0E0A 		vldr.32	s0, [sp, #56]
 736 0196 C8F80800 		str	r0, [r8, #8]
 737 019a 20EE270A 		vmul.f32	s0, s0, s15
 738 019e FFF7FEFF 		bl	lrintf
 739 01a2 DAED047A 		vldr.32	s15, [r10, #16]
 740 01a6 9DED0F0A 		vldr.32	s0, [sp, #60]
 741 01aa C8F80C00 		str	r0, [r8, #12]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 14


 742 01ae 20EE270A 		vmul.f32	s0, s0, s15
 743 01b2 FFF7FEFF 		bl	lrintf
 744 01b6 0123     		movs	r3, #1
 745 01b8 C8F81000 		str	r0, [r8, #16]
 746 01bc 1AE0     		b	.L64
 747              	.L58:
 748 01be 144F     		ldr	r7, .L76+8
 749 01c0 A8F10404 		sub	r4, r8, #4
 750 01c4 06AD     		add	r5, sp, #24
 751 01c6 08F11008 		add	r8, r8, #16
 752              	.L65:
 753 01ca 54F8040F 		ldr	r0, [r4, #4]!
 754 01ce 55F8046B 		ldr	r6, [r5], #4
 755 01d2 07EE900A 		vmov	s15, r0	@ int
 756 01d6 F8EEE77A 		vcvt.f32.s32	s15, s15
 757 01da 17EE900A 		vmov	r0, s15
 758 01de FFF7FEFF 		bl	__aeabi_f2d
 759 01e2 0246     		mov	r2, r0
 760 01e4 0B46     		mov	r3, r1
 761 01e6 3846     		mov	r0, r7
 762 01e8 3146     		mov	r1, r6
 763 01ea FFF7FEFF 		bl	debugPrintf
 764 01ee 4445     		cmp	r4, r8
 765 01f0 EBD1     		bne	.L65
 766 01f2 0023     		movs	r3, #0
 767              	.L64:
 768 01f4 1846     		mov	r0, r3
 769 01f6 10B0     		add	sp, sp, #64
 770              		@ sp needed
 771 01f8 BDEC048B 		vldm	sp!, {d8-d9}
 772 01fc BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 773              	.L74:
 774 0200 FFF7FEFF 		bl	sqrtf
 775 0204 6BE7     		b	.L57
 776              	.L77:
 777 0206 00BF     		.align	2
 778              	.L76:
 779 0208 00000000 		.word	.LANCHOR0
 780 020c 00409143 		.word	1133592576
 781 0210 00000000 		.word	.LC15
 782              		.size	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK21HangprinterKinematic
 783              		.section	.text._ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj,"ax",%progbits
 784              		.align	1
 785              		.p2align 2,,3
 786              		.global	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj
 787              		.syntax unified
 788              		.thumb
 789              		.thumb_func
 790              		.fpu fpv4-sp-d16
 791              		.type	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj, %function
 792              	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj:
 793              		@ args = 0, pretend = 0, frame = 0
 794              		@ frame_needed = 0, uses_anonymous_args = 0
 795 0000 10B5     		push	{r4, lr}
 796 0002 00EB8304 		add	r4, r0, r3, lsl #2
 797 0006 D4ED2A7A 		vldr.32	s15, [r4, #168]	@ int
 798 000a 9FED0F7A 		vldr.32	s14, .L80
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 15


 799 000e F8EE677A 		vcvt.f32.u32	s15, s15
 800 0012 27EE800A 		vmul.f32	s0, s15, s0
 801 0016 80EE070A 		vdiv.f32	s0, s0, s14
 802 001a FFF7FEFF 		bl	roundf
 803 001e BDEEC07A 		vcvt.s32.f32	s14, s0
 804 0022 D4ED2F5A 		vldr.32	s11, [r4, #188]
 805 0026 94ED116A 		vldr.32	s12, [r4, #68]
 806 002a 94ED340A 		vldr.32	s0, [r4, #208]
 807 002e D4ED396A 		vldr.32	s13, [r4, #228]
 808 0032 B8EEC77A 		vcvt.f32.s32	s14, s14
 809 0036 C7EE257A 		vdiv.f32	s15, s14, s11
 810 003a 77EE867A 		vadd.f32	s15, s15, s12
 811 003e 97EEA70A 		vfnms.f32	s0, s15, s15
 812 0042 80EE260A 		vdiv.f32	s0, s0, s13
 813 0046 10BD     		pop	{r4, pc}
 814              	.L81:
 815              		.align	2
 816              	.L80:
 817 0048 0000B443 		.word	1135869952
 818              		.size	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj, .-_ZN21HangprinterKinematics22Mot
 819              		.section	.text._ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef,"ax",%progbits
 820              		.align	1
 821              		.p2align 2,,3
 822              		.global	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef
 823              		.syntax unified
 824              		.thumb
 825              		.thumb_func
 826              		.fpu fpv4-sp-d16
 827              		.type	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef, %function
 828              	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef:
 829              		@ args = 4, pretend = 0, frame = 0
 830              		@ frame_needed = 0, uses_anonymous_args = 0
 831 0000 08B5     		push	{r3, lr}
 832 0002 0349     		ldr	r1, .L84
 833 0004 0298     		ldr	r0, [sp, #8]
 834 0006 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 835 000a 0020     		movs	r0, #0
 836 000c 08BD     		pop	{r3, pc}
 837              	.L85:
 838 000e 00BF     		.align	2
 839              	.L84:
 840 0010 00000000 		.word	.LC16
 841              		.size	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef, .-_ZNK21HangprinterKinematic
 842              		.section	.text._ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 843              		.align	1
 844              		.p2align 2,,3
 845              		.global	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf
 846              		.syntax unified
 847              		.thumb
 848              		.thumb_func
 849              		.fpu fpv4-sp-d16
 850              		.type	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 851              	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 852              		@ args = 0, pretend = 0, frame = 8
 853              		@ frame_needed = 0, uses_anonymous_args = 0
 854 0000 92ED010A 		vldr.32	s0, [r2, #4]
 855 0004 D2ED007A 		vldr.32	s15, [r2]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 16


 856 0008 00B5     		push	{lr}
 857 000a 20EE000A 		vmul.f32	s0, s0, s0
 858 000e 2DED028B 		vpush.64	{d8}
 859 0012 A7EEA70A 		vfma.f32	s0, s15, s15
 860 0016 83B0     		sub	sp, sp, #12
 861 0018 B5EE400A 		vcmp.f32	s0, #0
 862 001c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 863 0020 B1EEC08A 		vsqrt.f32	s16, s0
 864 0024 39D4     		bmi	.L95
 865              	.L87:
 866 0026 DFED1F7A 		vldr.32	s15, .L96
 867 002a B4EEE78A 		vcmpe.f32	s16, s15
 868 002e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 869 0032 2DDD     		ble	.L93
 870 0034 1C4B     		ldr	r3, .L96+4
 871 0036 5B68     		ldr	r3, [r3, #4]	@ unaligned
 872 0038 93ED5F0A 		vldr.32	s0, [r3, #380]
 873 003c D3ED607A 		vldr.32	s15, [r3, #384]
 874 0040 B4EE400A 		vcmp.f32	s0, s0
 875 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 876 0048 06D6     		bvs	.L90
 877 004a B4EEE70A 		vcmpe.f32	s0, s15
 878 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 879 0052 58BF     		it	pl
 880 0054 B0EE670A 		vmovpl.f32	s0, s15
 881              	.L90:
 882 0058 D3ED6B0A 		vldr.32	s1, [r3, #428]
 883 005c D3ED6C7A 		vldr.32	s15, [r3, #432]
 884 0060 F4EE600A 		vcmp.f32	s1, s1
 885 0064 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 886 0068 06D6     		bvs	.L91
 887 006a F4EEE70A 		vcmpe.f32	s1, s15
 888 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 889 0072 58BF     		it	pl
 890 0074 F0EE670A 		vmovpl.f32	s1, s15
 891              	.L91:
 892 0078 C0EE880A 		vdiv.f32	s1, s1, s16
 893 007c 0846     		mov	r0, r1
 894 007e 80EE080A 		vdiv.f32	s0, s0, s16
 895 0082 03B0     		add	sp, sp, #12
 896              		@ sp needed
 897 0084 BDEC028B 		vldm	sp!, {d8}
 898 0088 5DF804EB 		ldr	lr, [sp], #4
 899 008c FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 900              	.L93:
 901 0090 03B0     		add	sp, sp, #12
 902              		@ sp needed
 903 0092 BDEC028B 		vldm	sp!, {d8}
 904 0096 5DF804FB 		ldr	pc, [sp], #4
 905              	.L95:
 906 009a 0191     		str	r1, [sp, #4]
 907 009c FFF7FEFF 		bl	sqrtf
 908 00a0 0199     		ldr	r1, [sp, #4]
 909 00a2 C0E7     		b	.L87
 910              	.L97:
 911              		.align	2
 912              	.L96:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 17


 913 00a4 0AD7233C 		.word	1008981770
 914 00a8 00000000 		.word	reprap
 915              		.size	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK21HangprinterKinemati
 916              		.section	.text._ZN21HangprinterKinematicsD0Ev,"axG",%progbits,_ZN21HangprinterKinematicsD5Ev,comda
 917              		.align	1
 918              		.p2align 2,,3
 919              		.weak	_ZN21HangprinterKinematicsD0Ev
 920              		.syntax unified
 921              		.thumb
 922              		.thumb_func
 923              		.fpu fpv4-sp-d16
 924              		.type	_ZN21HangprinterKinematicsD0Ev, %function
 925              	_ZN21HangprinterKinematicsD0Ev:
 926              		@ args = 0, pretend = 0, frame = 0
 927              		@ frame_needed = 0, uses_anonymous_args = 0
 928 0000 10B5     		push	{r4, lr}
 929 0002 4FF4AE71 		mov	r1, #348
 930 0006 0446     		mov	r4, r0
 931 0008 FFF7FEFF 		bl	_ZdlPvj
 932 000c 2046     		mov	r0, r4
 933 000e 10BD     		pop	{r4, pc}
 934              		.size	_ZN21HangprinterKinematicsD0Ev, .-_ZN21HangprinterKinematicsD0Ev
 935              		.section	.text._ZN11FixedMatrixIdLj32ELj3EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EED5Ev,c
 936              		.align	1
 937              		.p2align 2,,3
 938              		.weak	_ZN11FixedMatrixIdLj32ELj3EED0Ev
 939              		.syntax unified
 940              		.thumb
 941              		.thumb_func
 942              		.fpu fpv4-sp-d16
 943              		.type	_ZN11FixedMatrixIdLj32ELj3EED0Ev, %function
 944              	_ZN11FixedMatrixIdLj32ELj3EED0Ev:
 945              		@ args = 0, pretend = 0, frame = 0
 946              		@ frame_needed = 0, uses_anonymous_args = 0
 947 0000 10B5     		push	{r4, lr}
 948 0002 4FF44271 		mov	r1, #776
 949 0006 0446     		mov	r4, r0
 950 0008 FFF7FEFF 		bl	_ZdlPvj
 951 000c 2046     		mov	r0, r4
 952 000e 10BD     		pop	{r4, pc}
 953              		.size	_ZN11FixedMatrixIdLj32ELj3EED0Ev, .-_ZN11FixedMatrixIdLj32ELj3EED0Ev
 954              		.section	.text._ZN11FixedMatrixIdLj32ELj9EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EED5Ev,c
 955              		.align	1
 956              		.p2align 2,,3
 957              		.weak	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 958              		.syntax unified
 959              		.thumb
 960              		.thumb_func
 961              		.fpu fpv4-sp-d16
 962              		.type	_ZN11FixedMatrixIdLj32ELj9EED0Ev, %function
 963              	_ZN11FixedMatrixIdLj32ELj9EED0Ev:
 964              		@ args = 0, pretend = 0, frame = 0
 965              		@ frame_needed = 0, uses_anonymous_args = 0
 966 0000 10B5     		push	{r4, lr}
 967 0002 40F60811 		movw	r1, #2312
 968 0006 0446     		mov	r4, r0
 969 0008 FFF7FEFF 		bl	_ZdlPvj
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 18


 970 000c 2046     		mov	r0, r4
 971 000e 10BD     		pop	{r4, pc}
 972              		.size	_ZN11FixedMatrixIdLj32ELj9EED0Ev, .-_ZN11FixedMatrixIdLj32ELj9EED0Ev
 973              		.section	.text._ZN11FixedMatrixIdLj9ELj10EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EED5Ev,c
 974              		.align	1
 975              		.p2align 2,,3
 976              		.weak	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 977              		.syntax unified
 978              		.thumb
 979              		.thumb_func
 980              		.fpu fpv4-sp-d16
 981              		.type	_ZN11FixedMatrixIdLj9ELj10EED0Ev, %function
 982              	_ZN11FixedMatrixIdLj9ELj10EED0Ev:
 983              		@ args = 0, pretend = 0, frame = 0
 984              		@ frame_needed = 0, uses_anonymous_args = 0
 985 0000 10B5     		push	{r4, lr}
 986 0002 4FF43671 		mov	r1, #728
 987 0006 0446     		mov	r4, r0
 988 0008 FFF7FEFF 		bl	_ZdlPvj
 989 000c 2046     		mov	r0, r4
 990 000e 10BD     		pop	{r4, pc}
 991              		.size	_ZN11FixedMatrixIdLj9ELj10EED0Ev, .-_ZN11FixedMatrixIdLj9ELj10EED0Ev
 992              		.section	.text._ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore,"ax",%progbits
 993              		.align	1
 994              		.p2align 2,,3
 995              		.global	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore
 996              		.syntax unified
 997              		.thumb
 998              		.thumb_func
 999              		.fpu fpv4-sp-d16
 1000              		.type	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore, %function
 1001              	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore:
 1002              		@ args = 0, pretend = 0, frame = 0
 1003              		@ frame_needed = 0, uses_anonymous_args = 0
 1004              		@ link register save eliminated.
 1005 0000 90F85821 		ldrb	r2, [r0, #344]	@ zero_extendqisi2
 1006 0004 0AB9     		cbnz	r2, .L108
 1007 0006 0120     		movs	r0, #1
 1008 0008 7047     		bx	lr
 1009              	.L108:
 1010 000a 0368     		ldr	r3, [r0]
 1011 000c DB69     		ldr	r3, [r3, #28]
 1012 000e 1847     		bx	r3
 1013              		.size	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore, .-_ZNK21HangprinterKinematics1
 1014              		.section	.text._ZNK21HangprinterKinematics13LimitPositionEPfjmb,"ax",%progbits
 1015              		.align	1
 1016              		.p2align 2,,3
 1017              		.global	_ZNK21HangprinterKinematics13LimitPositionEPfjmb
 1018              		.syntax unified
 1019              		.thumb
 1020              		.thumb_func
 1021              		.fpu fpv4-sp-d16
 1022              		.type	_ZNK21HangprinterKinematics13LimitPositionEPfjmb, %function
 1023              	_ZNK21HangprinterKinematics13LimitPositionEPfjmb:
 1024              		@ args = 4, pretend = 0, frame = 8
 1025              		@ frame_needed = 0, uses_anonymous_args = 0
 1026 0000 03F00703 		and	r3, r3, #7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 19


 1027 0004 072B     		cmp	r3, #7
 1028 0006 01D0     		beq	.L129
 1029 0008 0020     		movs	r0, #0
 1030 000a 7047     		bx	lr
 1031              	.L129:
 1032 000c D1ED016A 		vldr.32	s13, [r1, #4]
 1033 0010 91ED007A 		vldr.32	s14, [r1]
 1034 0014 90ED436A 		vldr.32	s12, [r0, #268]
 1035 0018 00B5     		push	{lr}
 1036 001a 66EEA67A 		vmul.f32	s15, s13, s13
 1037 001e 2DED028B 		vpush.64	{d8}
 1038 0022 E7EE077A 		vfma.f32	s15, s14, s14
 1039 0026 83B0     		sub	sp, sp, #12
 1040 0028 F4EEC67A 		vcmpe.f32	s15, s12
 1041 002c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1042 0030 1EDC     		bgt	.L130
 1043 0032 0020     		movs	r0, #0
 1044              	.L111:
 1045 0034 1C4B     		ldr	r3, .L132
 1046 0036 D1ED027A 		vldr.32	s15, [r1, #8]
 1047 003a 5B68     		ldr	r3, [r3, #4]
 1048 003c 03F5F962 		add	r2, r3, #1992
 1049 0040 92ED007A 		vldr.32	s14, [r2]
 1050 0044 F4EEC77A 		vcmpe.f32	s15, s14
 1051 0048 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1052 004c 08D4     		bmi	.L128
 1053 004e 03F2A473 		addw	r3, r3, #1956
 1054 0052 93ED007A 		vldr.32	s14, [r3]
 1055 0056 F4EEC77A 		vcmpe.f32	s15, s14
 1056 005a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1057 005e 02DD     		ble	.L110
 1058              	.L128:
 1059 0060 81ED027A 		vstr.32	s14, [r1, #8]
 1060 0064 0120     		movs	r0, #1
 1061              	.L110:
 1062 0066 03B0     		add	sp, sp, #12
 1063              		@ sp needed
 1064 0068 BDEC028B 		vldm	sp!, {d8}
 1065 006c 5DF804FB 		ldr	pc, [sp], #4
 1066              	.L130:
 1067 0070 86EE270A 		vdiv.f32	s0, s12, s15
 1068 0074 B5EE400A 		vcmp.f32	s0, #0
 1069 0078 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1070 007c B1EEC08A 		vsqrt.f32	s16, s0
 1071 0080 09D4     		bmi	.L131
 1072              	.L113:
 1073 0082 0120     		movs	r0, #1
 1074 0084 28EE077A 		vmul.f32	s14, s16, s14
 1075 0088 68EE266A 		vmul.f32	s13, s16, s13
 1076 008c 81ED007A 		vstr.32	s14, [r1]
 1077 0090 C1ED016A 		vstr.32	s13, [r1, #4]
 1078 0094 CEE7     		b	.L111
 1079              	.L131:
 1080 0096 0191     		str	r1, [sp, #4]
 1081 0098 FFF7FEFF 		bl	sqrtf
 1082 009c 0199     		ldr	r1, [sp, #4]
 1083 009e 91ED007A 		vldr.32	s14, [r1]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 20


 1084 00a2 D1ED016A 		vldr.32	s13, [r1, #4]
 1085 00a6 ECE7     		b	.L113
 1086              	.L133:
 1087              		.align	2
 1088              	.L132:
 1089 00a8 00000000 		.word	reprap
 1090              		.size	_ZNK21HangprinterKinematics13LimitPositionEPfjmb, .-_ZNK21HangprinterKinematics13LimitPositi
 1091              		.section	.text._Z14elongationCalcf,"ax",%progbits
 1092              		.align	1
 1093              		.p2align 2,,3
 1094              		.global	_Z14elongationCalcf
 1095              		.syntax unified
 1096              		.thumb
 1097              		.thumb_func
 1098              		.fpu fpv4-sp-d16
 1099              		.type	_Z14elongationCalcf, %function
 1100              	_Z14elongationCalcf:
 1101              		@ args = 0, pretend = 0, frame = 0
 1102              		@ frame_needed = 0, uses_anonymous_args = 0
 1103              		@ link register save eliminated.
 1104 0000 DFED087A 		vldr.32	s15, .L135
 1105 0004 9FED086A 		vldr.32	s12, .L135+4
 1106 0008 DFED086A 		vldr.32	s13, .L135+8
 1107 000c 70EE277A 		vadd.f32	s15, s0, s15
 1108 0010 B0EE087A 		vmov.f32	s14, #3.0e+0
 1109 0014 27EE877A 		vmul.f32	s14, s15, s14
 1110 0018 87EE060A 		vdiv.f32	s0, s14, s12
 1111 001c A7EEA60A 		vfma.f32	s0, s15, s13
 1112 0020 7047     		bx	lr
 1113              	.L136:
 1114 0022 00BF     		.align	2
 1115              	.L135:
 1116 0024 3D52F244 		.word	1156731453
 1117 0028 E69E9A46 		.word	1184538342
 1118 002c 0AD7233B 		.word	992204554
 1119              		.size	_Z14elongationCalcf, .-_Z14elongationCalcf
 1120              		.section	.text._ZN21HangprinterKinematics6RecalcEv,"ax",%progbits
 1121              		.align	1
 1122              		.p2align 2,,3
 1123              		.global	_ZN21HangprinterKinematics6RecalcEv
 1124              		.syntax unified
 1125              		.thumb
 1126              		.thumb_func
 1127              		.fpu fpv4-sp-d16
 1128              		.type	_ZN21HangprinterKinematics6RecalcEv, %function
 1129              	_ZN21HangprinterKinematics6RecalcEv:
 1130              		@ args = 0, pretend = 0, frame = 8
 1131              		@ frame_needed = 0, uses_anonymous_args = 0
 1132 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1133 0004 D0ED045A 		vldr.32	s11, [r0, #16]
 1134 0008 90ED055A 		vldr.32	s10, [r0, #20]
 1135 000c D0ED0B4A 		vldr.32	s9, [r0, #44]
 1136 0010 90ED066A 		vldr.32	s12, [r0, #24]
 1137 0014 90ED0C2A 		vldr.32	s4, [r0, #48]
 1138 0018 90ED084A 		vldr.32	s8, [r0, #32]
 1139 001c D0ED0A3A 		vldr.32	s7, [r0, #40]
 1140 0020 D0ED092A 		vldr.32	s5, [r0, #36]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 21


 1141 0024 836B     		ldr	r3, [r0, #56]	@ float
 1142 0026 2DED068B 		vpush.64	{d8, d9, d10}
 1143 002a 34EEC51A 		vsub.f32	s2, s9, s10
 1144 002e D0ED078A 		vldr.32	s17, [r0, #28]
 1145 0032 90ED0FAA 		vldr.32	s20, [r0, #60]
 1146 0036 80ED4C1A 		vstr.32	s2, [r0, #304]
 1147 003a 24EEE57A 		vnmul.f32	s14, s9, s11
 1148 003e 72EE461A 		vsub.f32	s3, s4, s12
 1149 0042 62EE456A 		vnmul.f32	s13, s4, s10
 1150 0046 A8EE817A 		vfma.f32	s14, s17, s2
 1151 004a A5B0     		sub	sp, sp, #148
 1152 004c 0446     		mov	r4, r0
 1153 004e E4EE216A 		vfma.f32	s13, s8, s3
 1154 0052 A5EE237A 		vfma.f32	s14, s10, s7
 1155 0056 65EE827A 		vmul.f32	s15, s11, s4
 1156 005a E6EE246A 		vfma.f32	s13, s12, s9
 1157 005e 73EEE50A 		vsub.f32	s1, s7, s11
 1158 0062 E8EEA17A 		vfma.f32	s15, s17, s3
 1159 0066 B1EE623A 		vneg.f32	s6, s5
 1160 006a A4EE607A 		vfms.f32	s14, s8, s1
 1161 006e E3EE016A 		vfma.f32	s13, s6, s2
 1162 0072 E6EE237A 		vfma.f32	s15, s12, s7
 1163 0076 37EE077A 		vadd.f32	s14, s14, s14
 1164 007a 76EEA66A 		vadd.f32	s13, s13, s13
 1165 007e 27EE079A 		vmul.f32	s18, s14, s14
 1166 0082 E3EE207A 		vfma.f32	s15, s6, s1
 1167 0086 65EEA6AA 		vmul.f32	s21, s11, s13
 1168 008a 25EE050A 		vmul.f32	s0, s10, s10
 1169 008e B0EE498A 		vmov.f32	s16, s18
 1170 0092 64EEA49A 		vmul.f32	s19, s9, s9
 1171 0096 24EE043A 		vmul.f32	s6, s8, s8
 1172 009a A5EEA50A 		vfma.f32	s0, s11, s11
 1173 009e 6AEE87AA 		vmul.f32	s21, s21, s14
 1174 00a2 A6EEA68A 		vfma.f32	s16, s13, s13
 1175 00a6 F1EE677A 		vneg.f32	s15, s15
 1176 00aa 77EEA77A 		vadd.f32	s15, s15, s15
 1177 00ae E6EE09AA 		vfma.f32	s21, s12, s18
 1178 00b2 E3EEA39A 		vfma.f32	s19, s7, s7
 1179 00b6 A8EEA83A 		vfma.f32	s6, s17, s17
 1180 00ba A6EE060A 		vfma.f32	s0, s12, s12
 1181 00be 74EE644A 		vsub.f32	s9, s8, s9
 1182 00c2 A7EEA78A 		vfma.f32	s16, s15, s15
 1183 00c6 35EE444A 		vsub.f32	s8, s10, s8
 1184 00ca 25EE275A 		vmul.f32	s10, s10, s15
 1185 00ce A2EEA23A 		vfma.f32	s6, s5, s5
 1186 00d2 E2EE029A 		vfma.f32	s19, s4, s4
 1187 00d6 E7EE05AA 		vfma.f32	s21, s14, s10
 1188 00da 36EE626A 		vsub.f32	s12, s12, s5
 1189 00de 38EE088A 		vadd.f32	s16, s16, s16
 1190 00e2 2AEE0AAA 		vmul.f32	s20, s20, s20
 1191 00e6 78EEE33A 		vsub.f32	s7, s17, s7
 1192 00ea 75EEE85A 		vsub.f32	s11, s11, s17
 1193 00ee 72EEC22A 		vsub.f32	s5, s5, s4
 1194 00f2 B5EE400A 		vcmp.f32	s0, #0
 1195 00f6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1196 00fa 80ED558A 		vstr.32	s16, [r0, #340]
 1197 00fe 80ED43AA 		vstr.32	s20, [r0, #268]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 22


 1198 0102 C0ED469A 		vstr.32	s19, [r0, #280]
 1199 0106 C0ED475A 		vstr.32	s11, [r0, #284]
 1200 010a C0ED483A 		vstr.32	s7, [r0, #288]
 1201 010e 80ED4A4A 		vstr.32	s8, [r0, #296]
 1202 0112 C0ED4B4A 		vstr.32	s9, [r0, #300]
 1203 0116 80ED4D6A 		vstr.32	s12, [r0, #308]
 1204 011a C0ED4E2A 		vstr.32	s5, [r0, #312]
 1205 011e 80ED507A 		vstr.32	s14, [r0, #320]
 1206 0122 C0ED490A 		vstr.32	s1, [r0, #292]
 1207 0126 80ED539A 		vstr.32	s18, [r0, #332]
 1208 012a C0ED4F1A 		vstr.32	s3, [r0, #316]
 1209 012e C0ED527A 		vstr.32	s15, [r0, #328]
 1210 0132 C0ED516A 		vstr.32	s13, [r0, #324]
 1211 0136 80ED453A 		vstr.32	s6, [r0, #276]
 1212 013a C0ED54AA 		vstr.32	s21, [r0, #336]
 1213 013e 80ED440A 		vstr.32	s0, [r0, #272]
 1214 0142 B1EEC08A 		vsqrt.f32	s16, s0
 1215 0146 C0F8F830 		str	r3, [r0, #248]	@ float
 1216 014a 00F12981 		bmi	.L151
 1217              	.L138:
 1218 014e B5EE403A 		vcmp.f32	s6, #0
 1219 0152 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1220 0156 84ED3F8A 		vstr.32	s16, [r4, #252]
 1221 015a B1EEC38A 		vsqrt.f32	s16, s6
 1222 015e 00F13381 		bmi	.L152
 1223              	.L139:
 1224 0162 94ED0B0A 		vldr.32	s0, [r4, #44]
 1225 0166 94ED0A7A 		vldr.32	s14, [r4, #40]
 1226 016a D4ED0C7A 		vldr.32	s15, [r4, #48]
 1227 016e 84ED408A 		vstr.32	s16, [r4, #256]
 1228 0172 20EE000A 		vmul.f32	s0, s0, s0
 1229 0176 A7EE070A 		vfma.f32	s0, s14, s14
 1230 017a A7EEA70A 		vfma.f32	s0, s15, s15
 1231 017e B5EE400A 		vcmp.f32	s0, #0
 1232 0182 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1233 0186 B1EEC08A 		vsqrt.f32	s16, s0
 1234 018a 00F11A81 		bmi	.L153
 1235              	.L140:
 1236 018e 636B     		ldr	r3, [r4, #52]	@ float
 1237 0190 904F     		ldr	r7, .L154
 1238 0192 C4F80831 		str	r3, [r4, #264]	@ float
 1239 0196 04F1F805 		add	r5, r4, #248
 1240 019a 04F58676 		add	r6, r4, #268
 1241 019e 84ED418A 		vstr.32	s16, [r4, #260]
 1242              	.L141:
 1243 01a2 55F8040B 		ldr	r0, [r5], #4	@ float
 1244 01a6 FFF7FEFF 		bl	__aeabi_f2d
 1245 01aa 0246     		mov	r2, r0
 1246 01ac 0B46     		mov	r3, r1
 1247 01ae 3846     		mov	r0, r7
 1248 01b0 FFF7FEFF 		bl	debugPrintf
 1249 01b4 AE42     		cmp	r6, r5
 1250 01b6 F4D1     		bne	.L141
 1251 01b8 874B     		ldr	r3, .L154+4
 1252 01ba DFED888A 		vldr.32	s17, .L154+8
 1253 01be D3F80480 		ldr	r8, [r3, #4]
 1254 01c2 04F14405 		add	r5, r4, #68
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 23


 1255 01c6 4746     		mov	r7, r8
 1256 01c8 08F5EE76 		add	r6, r8, #476
 1257 01cc 08F5F879 		add	r9, r8, #496
 1258 01d0 B7EE009A 		vmov.f32	s18, #1.0e+0
 1259              	.L144:
 1260 01d4 D5ED057A 		vldr.32	s15, [r5, #20]	@ int
 1261 01d8 97F83013 		ldrb	r1, [r7, #816]	@ zero_extendqisi2
 1262 01dc F8EE676A 		vcvt.f32.u32	s13, s15
 1263 01e0 D5ED197A 		vldr.32	s15, [r5, #100]	@ int
 1264 01e4 B8EE678A 		vcvt.f32.u32	s16, s15
 1265 01e8 0DF18F02 		add	r2, sp, #143
 1266 01ec 4046     		mov	r0, r8
 1267 01ee 26EE888A 		vmul.f32	s16, s13, s16
 1268 01f2 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 1269 01f6 07EE900A 		vmov	s15, r0	@ int
 1270 01fa F8EE676A 		vcvt.f32.u32	s13, s15
 1271 01fe D5ED147A 		vldr.32	s15, [r5, #80]	@ int
 1272 0202 6A69     		ldr	r2, [r5, #20]
 1273 0204 AB6A     		ldr	r3, [r5, #40]
 1274 0206 D4ED105A 		vldr.32	s11, [r4, #64]
 1275 020a B8EE676A 		vcvt.f32.u32	s12, s15
 1276 020e D5ED0F7A 		vldr.32	s15, [r5, #60]	@ int
 1277 0212 66EE886A 		vmul.f32	s13, s13, s16
 1278 0216 B8EE677A 		vcvt.f32.u32	s14, s15
 1279 021a 66EE866A 		vmul.f32	s13, s13, s12
 1280 021e 27EE287A 		vmul.f32	s14, s14, s17
 1281 0222 03FB02F3 		mul	r3, r3, r2
 1282 0226 86EE876A 		vdiv.f32	s12, s13, s14
 1283 022a 0C37     		adds	r7, r7, #12
 1284 022c 07EE903A 		vmov	s15, r3	@ int
 1285 0230 F8EE677A 		vcvt.f32.u32	s15, s15
 1286 0234 76EE066A 		vadd.f32	s13, s12, s12
 1287 0238 67EEE57A 		vnmul.f32	s15, s15, s11
 1288 023c 86EEA77A 		vdiv.f32	s14, s13, s15
 1289 0240 C5ED287A 		vstr.32	s15, [r5, #160]
 1290 0244 85ED1E7A 		vstr.32	s14, [r5, #120]
 1291 0248 B5EC017A 		vldmia.32	r5!, {s14}
 1292 024c C6EE077A 		vdiv.f32	s15, s12, s14
 1293 0250 27EE077A 		vmul.f32	s14, s14, s14
 1294 0254 F4EE677A 		vcmp.f32	s15, s15
 1295 0258 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1296 025c 85ED227A 		vstr.32	s14, [r5, #136]
 1297 0260 06D6     		bvs	.L142
 1298 0262 F4EEC97A 		vcmpe.f32	s15, s18
 1299 0266 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1300 026a D8BF     		it	le
 1301 026c F0EE497A 		vmovle.f32	s15, s18
 1302              	.L142:
 1303 0270 E6EC017A 		vstmia.32	r6!, {s15}
 1304 0274 4E45     		cmp	r6, r9
 1305 0276 ADD1     		bne	.L144
 1306 0278 DFF86891 		ldr	r9, .L154+16
 1307 027c DFF86881 		ldr	r8, .L154+20
 1308 0280 04F1BC05 		add	r5, r4, #188
 1309 0284 04F1E406 		add	r6, r4, #228
 1310 0288 04F1D007 		add	r7, r4, #208
 1311              	.L145:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 24


 1312 028c 56F8040B 		ldr	r0, [r6], #4	@ float
 1313 0290 FFF7FEFF 		bl	__aeabi_f2d
 1314 0294 0246     		mov	r2, r0
 1315 0296 0B46     		mov	r3, r1
 1316 0298 4846     		mov	r0, r9
 1317 029a FFF7FEFF 		bl	debugPrintf
 1318 029e 55F8040B 		ldr	r0, [r5], #4	@ float
 1319 02a2 FFF7FEFF 		bl	__aeabi_f2d
 1320 02a6 0246     		mov	r2, r0
 1321 02a8 0B46     		mov	r3, r1
 1322 02aa 4046     		mov	r0, r8
 1323 02ac FFF7FEFF 		bl	debugPrintf
 1324 02b0 AF42     		cmp	r7, r5
 1325 02b2 EBD1     		bne	.L145
 1326 02b4 D4F81001 		ldr	r0, [r4, #272]	@ float
 1327 02b8 FFF7FEFF 		bl	__aeabi_f2d
 1328 02bc 0646     		mov	r6, r0
 1329 02be D4F85401 		ldr	r0, [r4, #340]	@ float
 1330 02c2 0F46     		mov	r7, r1
 1331 02c4 FFF7FEFF 		bl	__aeabi_f2d
 1332 02c8 CDE92001 		strd	r0, [sp, #128]
 1333 02cc D4F85001 		ldr	r0, [r4, #336]	@ float
 1334 02d0 FFF7FEFF 		bl	__aeabi_f2d
 1335 02d4 CDE91E01 		strd	r0, [sp, #120]
 1336 02d8 D4F84801 		ldr	r0, [r4, #328]	@ float
 1337 02dc FFF7FEFF 		bl	__aeabi_f2d
 1338 02e0 CDE91C01 		strd	r0, [sp, #112]
 1339 02e4 D4F84401 		ldr	r0, [r4, #324]	@ float
 1340 02e8 FFF7FEFF 		bl	__aeabi_f2d
 1341 02ec CDE91A01 		strd	r0, [sp, #104]
 1342 02f0 D4F84C01 		ldr	r0, [r4, #332]	@ float
 1343 02f4 FFF7FEFF 		bl	__aeabi_f2d
 1344 02f8 CDE91801 		strd	r0, [sp, #96]
 1345 02fc D4F84001 		ldr	r0, [r4, #320]	@ float
 1346 0300 FFF7FEFF 		bl	__aeabi_f2d
 1347 0304 CDE91601 		strd	r0, [sp, #88]
 1348 0308 D4F83C01 		ldr	r0, [r4, #316]	@ float
 1349 030c FFF7FEFF 		bl	__aeabi_f2d
 1350 0310 CDE91401 		strd	r0, [sp, #80]
 1351 0314 D4F83801 		ldr	r0, [r4, #312]	@ float
 1352 0318 FFF7FEFF 		bl	__aeabi_f2d
 1353 031c CDE91201 		strd	r0, [sp, #72]
 1354 0320 D4F83401 		ldr	r0, [r4, #308]	@ float
 1355 0324 FFF7FEFF 		bl	__aeabi_f2d
 1356 0328 CDE91001 		strd	r0, [sp, #64]
 1357 032c D4F83001 		ldr	r0, [r4, #304]	@ float
 1358 0330 FFF7FEFF 		bl	__aeabi_f2d
 1359 0334 CDE90E01 		strd	r0, [sp, #56]
 1360 0338 D4F82C01 		ldr	r0, [r4, #300]	@ float
 1361 033c FFF7FEFF 		bl	__aeabi_f2d
 1362 0340 CDE90C01 		strd	r0, [sp, #48]
 1363 0344 D4F82801 		ldr	r0, [r4, #296]	@ float
 1364 0348 FFF7FEFF 		bl	__aeabi_f2d
 1365 034c CDE90A01 		strd	r0, [sp, #40]
 1366 0350 D4F82401 		ldr	r0, [r4, #292]	@ float
 1367 0354 FFF7FEFF 		bl	__aeabi_f2d
 1368 0358 CDE90801 		strd	r0, [sp, #32]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 25


 1369 035c D4F82001 		ldr	r0, [r4, #288]	@ float
 1370 0360 FFF7FEFF 		bl	__aeabi_f2d
 1371 0364 CDE90601 		strd	r0, [sp, #24]
 1372 0368 D4F81C01 		ldr	r0, [r4, #284]	@ float
 1373 036c FFF7FEFF 		bl	__aeabi_f2d
 1374 0370 CDE90401 		strd	r0, [sp, #16]
 1375 0374 D4F81801 		ldr	r0, [r4, #280]	@ float
 1376 0378 FFF7FEFF 		bl	__aeabi_f2d
 1377 037c CDE90201 		strd	r0, [sp, #8]
 1378 0380 D4F81401 		ldr	r0, [r4, #276]	@ float
 1379 0384 FFF7FEFF 		bl	__aeabi_f2d
 1380 0388 3246     		mov	r2, r6
 1381 038a CDE90001 		strd	r0, [sp]
 1382 038e 3B46     		mov	r3, r7
 1383 0390 1348     		ldr	r0, .L154+12
 1384 0392 FFF7FEFF 		bl	debugPrintf
 1385 0396 25B0     		add	sp, sp, #148
 1386              		@ sp needed
 1387 0398 BDEC068B 		vldm	sp!, {d8-d10}
 1388 039c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1389              	.L151:
 1390 03a0 FFF7FEFF 		bl	sqrtf
 1391 03a4 D4ED087A 		vldr.32	s15, [r4, #32]
 1392 03a8 D4ED076A 		vldr.32	s13, [r4, #28]
 1393 03ac 94ED097A 		vldr.32	s14, [r4, #36]
 1394 03b0 67EEA77A 		vmul.f32	s15, s15, s15
 1395 03b4 E6EEA67A 		vfma.f32	s15, s13, s13
 1396 03b8 B0EE673A 		vmov.f32	s6, s15
 1397 03bc A7EE073A 		vfma.f32	s6, s14, s14
 1398 03c0 C5E6     		b	.L138
 1399              	.L153:
 1400 03c2 FFF7FEFF 		bl	sqrtf
 1401 03c6 E2E6     		b	.L140
 1402              	.L152:
 1403 03c8 B0EE430A 		vmov.f32	s0, s6
 1404 03cc FFF7FEFF 		bl	sqrtf
 1405 03d0 C7E6     		b	.L139
 1406              	.L155:
 1407 03d2 00BF     		.align	2
 1408              	.L154:
 1409 03d4 00000000 		.word	.LC17
 1410 03d8 00000000 		.word	reprap
 1411 03dc DB0FC940 		.word	1086918619
 1412 03e0 54000000 		.word	.LC20
 1413 03e4 24000000 		.word	.LC18
 1414 03e8 3C000000 		.word	.LC19
 1415              		.size	_ZN21HangprinterKinematics6RecalcEv, .-_ZN21HangprinterKinematics6RecalcEv
 1416              		.section	.text._ZN21HangprinterKinematics4InitEv,"ax",%progbits
 1417              		.align	1
 1418              		.p2align 2,,3
 1419              		.global	_ZN21HangprinterKinematics4InitEv
 1420              		.syntax unified
 1421              		.thumb
 1422              		.thumb_func
 1423              		.fpu fpv4-sp-d16
 1424              		.type	_ZN21HangprinterKinematics4InitEv, %function
 1425              	_ZN21HangprinterKinematics4InitEv:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 26


 1426              		@ args = 0, pretend = 0, frame = 128
 1427              		@ frame_needed = 0, uses_anonymous_args = 0
 1428 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1429 0004 554D     		ldr	r5, .L161
 1430 0006 DFF87C91 		ldr	r9, .L161+40
 1431 000a 0446     		mov	r4, r0
 1432 000c 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1433 000e 2E46     		mov	r6, r5
 1434 0010 A1B0     		sub	sp, sp, #132
 1435 0012 56F804BB 		ldr	fp, [r6], #4
 1436 0016 0DF1080E 		add	lr, sp, #8
 1437 001a AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 1438 001e 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1439 0020 05F11808 		add	r8, r5, #24
 1440 0024 0DF11C0C 		add	ip, sp, #28
 1441 0028 ACE80F00 		stmia	ip!, {r0, r1, r2, r3}
 1442 002c B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 1443 0030 0CAF     		add	r7, sp, #48
 1444 0032 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 1445 0034 D6F800A0 		ldr	r10, [r6]
 1446 0038 D8F80030 		ldr	r3, [r8]
 1447 003c CEF800B0 		str	fp, [lr]
 1448 0040 05F12C08 		add	r8, r5, #44
 1449 0044 CCF800A0 		str	r10, [ip]
 1450 0048 3B60     		str	r3, [r7]
 1451 004a 0193     		str	r3, [sp, #4]
 1452 004c B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 1453 0050 05F1400E 		add	lr, r5, #64
 1454 0054 0DF1440C 		add	ip, sp, #68
 1455 0058 ACE80F00 		stmia	ip!, {r0, r1, r2, r3}
 1456 005c BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 1457 0060 5435     		adds	r5, r5, #84
 1458 0062 16AF     		add	r7, sp, #88
 1459 0064 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 1460 0066 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1461 0068 1BAE     		add	r6, sp, #108
 1462 006a 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 1463 006c B9E80700 		ldmia	r9!, {r0, r1, r2}
 1464 0070 3B4B     		ldr	r3, .L161+4
 1465 0072 D8F80080 		ldr	r8, [r8]
 1466 0076 DEF800E0 		ldr	lr, [lr]
 1467 007a 2D68     		ldr	r5, [r5]
 1468 007c C7F800E0 		str	lr, [r7]
 1469 0080 CCF80080 		str	r8, [ip]
 1470 0084 3560     		str	r5, [r6]
 1471 0086 2061     		str	r0, [r4, #16]	@ unaligned
 1472 0088 6161     		str	r1, [r4, #20]	@ unaligned
 1473 008a A261     		str	r2, [r4, #24]	@ unaligned
 1474 008c 07CB     		ldmia	r3!, {r0, r1, r2}
 1475 008e 354B     		ldr	r3, .L161+8
 1476 0090 E061     		str	r0, [r4, #28]	@ unaligned
 1477 0092 2162     		str	r1, [r4, #32]	@ unaligned
 1478 0094 6262     		str	r2, [r4, #36]	@ unaligned
 1479 0096 07CB     		ldmia	r3!, {r0, r1, r2}
 1480 0098 02AE     		add	r6, sp, #8
 1481 009a A062     		str	r0, [r4, #40]	@ unaligned
 1482 009c E162     		str	r1, [r4, #44]	@ unaligned
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 27


 1483 009e 2263     		str	r2, [r4, #48]	@ unaligned
 1484 00a0 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1485 00a2 314E     		ldr	r6, .L161+12
 1486 00a4 A663     		str	r6, [r4, #56]	@ float
 1487 00a6 314E     		ldr	r6, .L161+16
 1488 00a8 2664     		str	r6, [r4, #64]	@ float
 1489 00aa 07AE     		add	r6, sp, #28
 1490 00ac 6064     		str	r0, [r4, #68]	@ unaligned
 1491 00ae A164     		str	r1, [r4, #72]	@ unaligned
 1492 00b0 E264     		str	r2, [r4, #76]	@ unaligned
 1493 00b2 2365     		str	r3, [r4, #80]	@ unaligned
 1494 00b4 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1495 00b6 2E4F     		ldr	r7, .L161+20
 1496 00b8 6763     		str	r7, [r4, #52]	@ float
 1497 00ba 0CAE     		add	r6, sp, #48
 1498 00bc 2D4F     		ldr	r7, .L161+24
 1499 00be E763     		str	r7, [r4, #60]	@ float
 1500 00c0 C4F854B0 		str	fp, [r4, #84]	@ unaligned
 1501 00c4 A065     		str	r0, [r4, #88]	@ unaligned
 1502 00c6 E165     		str	r1, [r4, #92]	@ unaligned
 1503 00c8 2266     		str	r2, [r4, #96]	@ unaligned
 1504 00ca 6366     		str	r3, [r4, #100]	@ unaligned
 1505 00cc 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1506 00ce 11AE     		add	r6, sp, #68
 1507 00d0 E066     		str	r0, [r4, #108]	@ unaligned
 1508 00d2 2167     		str	r1, [r4, #112]	@ unaligned
 1509 00d4 6267     		str	r2, [r4, #116]	@ unaligned
 1510 00d6 A367     		str	r3, [r4, #120]	@ unaligned
 1511 00d8 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1512 00da 16AE     		add	r6, sp, #88
 1513 00dc C4F88000 		str	r0, [r4, #128]	@ unaligned
 1514 00e0 C4F88410 		str	r1, [r4, #132]	@ unaligned
 1515 00e4 C4F88820 		str	r2, [r4, #136]	@ unaligned
 1516 00e8 C4F88C30 		str	r3, [r4, #140]	@ unaligned
 1517 00ec 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1518 00ee 019F     		ldr	r7, [sp, #4]
 1519 00f0 C4F868A0 		str	r10, [r4, #104]	@ unaligned
 1520 00f4 1BAE     		add	r6, sp, #108
 1521 00f6 E767     		str	r7, [r4, #124]	@ unaligned
 1522 00f8 C4F89080 		str	r8, [r4, #144]	@ unaligned
 1523 00fc C4F89400 		str	r0, [r4, #148]	@ unaligned
 1524 0100 C4F8A4E0 		str	lr, [r4, #164]	@ unaligned
 1525 0104 C4F89810 		str	r1, [r4, #152]	@ unaligned
 1526 0108 C4F89C20 		str	r2, [r4, #156]	@ unaligned
 1527 010c C4F8A030 		str	r3, [r4, #160]	@ unaligned
 1528 0110 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1529 0112 C4F8B430 		str	r3, [r4, #180]	@ unaligned
 1530 0116 2368     		ldr	r3, [r4]
 1531 0118 C4F8B850 		str	r5, [r4, #184]	@ unaligned
 1532 011c C4F8AC10 		str	r1, [r4, #172]	@ unaligned
 1533 0120 C4F8B020 		str	r2, [r4, #176]	@ unaligned
 1534 0124 C4F8A800 		str	r0, [r4, #168]	@ unaligned
 1535 0128 1349     		ldr	r1, .L161+28
 1536 012a 1B6C     		ldr	r3, [r3, #64]
 1537 012c 134A     		ldr	r2, .L161+32
 1538 012e 4D69     		ldr	r5, [r1, #20]
 1539 0130 9342     		cmp	r3, r2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 28


 1540 0132 4FF00001 		mov	r1, #0
 1541 0136 84F85811 		strb	r1, [r4, #344]
 1542 013a 0AD1     		bne	.L160
 1543 013c 1049     		ldr	r1, .L161+36
 1544              	.L157:
 1545 013e 2846     		mov	r0, r5
 1546 0140 0522     		movs	r2, #5
 1547 0142 FFF7FEFF 		bl	_ZN6GCodes21SetMachineAxisLettersEPKch
 1548 0146 2046     		mov	r0, r4
 1549 0148 21B0     		add	sp, sp, #132
 1550              		@ sp needed
 1551 014a BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1552 014e FFF7FEBF 		b	_ZN21HangprinterKinematics6RecalcEv
 1553              	.L160:
 1554 0152 2046     		mov	r0, r4
 1555 0154 9847     		blx	r3
 1556 0156 0146     		mov	r1, r0
 1557 0158 F1E7     		b	.L157
 1558              	.L162:
 1559 015a 00BF     		.align	2
 1560              	.L161:
 1561 015c 14000000 		.word	.LANCHOR0+20
 1562 0160 00000000 		.word	.LANCHOR2
 1563 0164 00000000 		.word	.LANCHOR3
 1564 0168 00887645 		.word	1165395968
 1565 016c 17B7D138 		.word	953267991
 1566 0170 00606445 		.word	1164206080
 1567 0174 0000FA43 		.word	1140457472
 1568 0178 00000000 		.word	reprap
 1569 017c 00000000 		.word	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 1570 0180 00000000 		.word	.LC12
 1571 0184 00000000 		.word	.LANCHOR1
 1572              		.size	_ZN21HangprinterKinematics4InitEv, .-_ZN21HangprinterKinematics4InitEv
 1573              		.section	.text._ZN21HangprinterKinematicsC2Ev,"ax",%progbits
 1574              		.align	1
 1575              		.p2align 2,,3
 1576              		.global	_ZN21HangprinterKinematicsC2Ev
 1577              		.syntax unified
 1578              		.thumb
 1579              		.thumb_func
 1580              		.fpu fpv4-sp-d16
 1581              		.type	_ZN21HangprinterKinematicsC2Ev, %function
 1582              	_ZN21HangprinterKinematicsC2Ev:
 1583              		@ args = 0, pretend = 0, frame = 0
 1584              		@ frame_needed = 0, uses_anonymous_args = 0
 1585 0000 10B5     		push	{r4, lr}
 1586 0002 0022     		movs	r2, #0
 1587 0004 0446     		mov	r4, r0
 1588 0006 DFED070A 		vldr.32	s1, .L165
 1589 000a 9FED070A 		vldr.32	s0, .L165+4
 1590 000e 0621     		movs	r1, #6
 1591 0010 0123     		movs	r3, #1
 1592 0012 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffbb
 1593 0016 054B     		ldr	r3, .L165+8
 1594 0018 2360     		str	r3, [r4]
 1595 001a 2046     		mov	r0, r4
 1596 001c FFF7FEFF 		bl	_ZN21HangprinterKinematics4InitEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 29


 1597 0020 2046     		mov	r0, r4
 1598 0022 10BD     		pop	{r4, pc}
 1599              	.L166:
 1600              		.align	2
 1601              	.L165:
 1602 0024 CDCC4C3E 		.word	1045220557
 1603 0028 0000C842 		.word	1120403456
 1604 002c 08000000 		.word	.LANCHOR4+8
 1605              		.size	_ZN21HangprinterKinematicsC2Ev, .-_ZN21HangprinterKinematicsC2Ev
 1606              		.global	_ZN21HangprinterKinematicsC1Ev
 1607              		.thumb_set _ZN21HangprinterKinematicsC1Ev,_ZN21HangprinterKinematicsC2Ev
 1608              		.section	.text._ZN21HangprinterKinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN21Hangprint
 1609              		.align	1
 1610              		.p2align 2,,3
 1611              		.weak	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv
 1612              		.syntax unified
 1613              		.thumb
 1614              		.thumb_func
 1615              		.fpu fpv4-sp-d16
 1616              		.type	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv, %function
 1617              	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv:
 1618              		@ args = 0, pretend = 0, frame = 0
 1619              		@ frame_needed = 0, uses_anonymous_args = 0
 1620              		@ link register save eliminated.
 1621 0000 FFF7FEBF 		b	_ZN21HangprinterKinematics4InitEv
 1622              		.size	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv, .-_ZN21HangprinterKinematics22SetCalib
 1623              		.section	.text._ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 1624              		.align	1
 1625              		.p2align 2,,3
 1626              		.global	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1627              		.syntax unified
 1628              		.thumb
 1629              		.thumb_func
 1630              		.fpu fpv4-sp-d16
 1631              		.type	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 1632              	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 1633              		@ args = 4, pretend = 0, frame = 8
 1634              		@ frame_needed = 0, uses_anonymous_args = 0
 1635 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1636 0004 40F29D2C 		movw	ip, #669
 1637 0008 BAB0     		sub	sp, sp, #232
 1638 000a 0025     		movs	r5, #0
 1639 000c 6145     		cmp	r1, ip
 1640 000e 8DF8E650 		strb	r5, [sp, #230]
 1641 0012 0646     		mov	r6, r0
 1642 0014 1746     		mov	r7, r2
 1643 0016 9846     		mov	r8, r3
 1644 0018 27D0     		beq	.L185
 1645 001a 40F29A2C 		movw	ip, #666
 1646 001e 6145     		cmp	r1, ip
 1647 0020 06D0     		beq	.L186
 1648 0022 409C     		ldr	r4, [sp, #256]
 1649 0024 0094     		str	r4, [sp]
 1650 0026 FFF7FEFF 		bl	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1651              	.L168:
 1652 002a 3AB0     		add	sp, sp, #232
 1653              		@ sp needed
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 30


 1654 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1655              	.L186:
 1656 0030 0DF1E604 		add	r4, sp, #230
 1657 0034 00F14002 		add	r2, r0, #64
 1658 0038 2346     		mov	r3, r4
 1659 003a 5121     		movs	r1, #81
 1660 003c 3846     		mov	r0, r7
 1661 003e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1662 0042 CDE90145 		strd	r4, r5, [sp, #4]
 1663 0046 CDF80080 		str	r8, [sp]
 1664 004a 06F14403 		add	r3, r6, #68
 1665 004e 0522     		movs	r2, #5
 1666 0050 5221     		movs	r1, #82
 1667 0052 3846     		mov	r0, r7
 1668 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1669 0058 0028     		cmp	r0, #0
 1670 005a 00F0C080 		beq	.L179
 1671              	.L180:
 1672 005e 409B     		ldr	r3, [sp, #256]
 1673 0060 0120     		movs	r0, #1
 1674 0062 1870     		strb	r0, [r3]
 1675 0064 3AB0     		add	sp, sp, #232
 1676              		@ sp needed
 1677 0066 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1678              	.L185:
 1679 006a 3AAC     		add	r4, sp, #232
 1680 006c 021D     		adds	r2, r0, #4
 1681 006e 04F8015D 		strb	r5, [r4, #-1]!
 1682 0072 5321     		movs	r1, #83
 1683 0074 2346     		mov	r3, r4
 1684 0076 3846     		mov	r0, r7
 1685 0078 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1686 007c 2346     		mov	r3, r4
 1687 007e 06F10802 		add	r2, r6, #8
 1688 0082 5421     		movs	r1, #84
 1689 0084 3846     		mov	r0, r7
 1690 0086 0DF1E604 		add	r4, sp, #230
 1691 008a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1692 008e 0295     		str	r5, [sp, #8]
 1693 0090 CDE90084 		strd	r8, r4, [sp]
 1694 0094 06F11003 		add	r3, r6, #16
 1695 0098 0322     		movs	r2, #3
 1696 009a 4121     		movs	r1, #65
 1697 009c 3846     		mov	r0, r7
 1698 009e FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1699 00a2 0028     		cmp	r0, #0
 1700 00a4 DBD1     		bne	.L180
 1701 00a6 CDE90140 		strd	r4, r0, [sp, #4]
 1702 00aa CDF80080 		str	r8, [sp]
 1703 00ae 06F11C03 		add	r3, r6, #28
 1704 00b2 0322     		movs	r2, #3
 1705 00b4 4221     		movs	r1, #66
 1706 00b6 3846     		mov	r0, r7
 1707 00b8 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1708 00bc 0028     		cmp	r0, #0
 1709 00be CED1     		bne	.L180
 1710 00c0 CDE90140 		strd	r4, r0, [sp, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 31


 1711 00c4 CDF80080 		str	r8, [sp]
 1712 00c8 06F12803 		add	r3, r6, #40
 1713 00cc 0322     		movs	r2, #3
 1714 00ce 4321     		movs	r1, #67
 1715 00d0 3846     		mov	r0, r7
 1716 00d2 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1717 00d6 0546     		mov	r5, r0
 1718 00d8 0028     		cmp	r0, #0
 1719 00da C0D1     		bne	.L180
 1720 00dc 2346     		mov	r3, r4
 1721 00de 06F13402 		add	r2, r6, #52
 1722 00e2 4421     		movs	r1, #68
 1723 00e4 3846     		mov	r0, r7
 1724 00e6 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1725 00ea 2346     		mov	r3, r4
 1726 00ec 06F13802 		add	r2, r6, #56
 1727 00f0 5621     		movs	r1, #86
 1728 00f2 3846     		mov	r0, r7
 1729 00f4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1730 00f8 2346     		mov	r3, r4
 1731 00fa 06F14002 		add	r2, r6, #64
 1732 00fe 5121     		movs	r1, #81
 1733 0100 3846     		mov	r0, r7
 1734 0102 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1735 0106 CDE90145 		strd	r4, r5, [sp, #4]
 1736 010a CDF80080 		str	r8, [sp]
 1737 010e 06F14403 		add	r3, r6, #68
 1738 0112 0522     		movs	r2, #5
 1739 0114 5221     		movs	r1, #82
 1740 0116 3846     		mov	r0, r7
 1741 0118 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1742 011c 0028     		cmp	r0, #0
 1743 011e 9ED1     		bne	.L180
 1744 0120 CDE90140 		strd	r4, r0, [sp, #4]
 1745 0124 CDF80080 		str	r8, [sp]
 1746 0128 06F15803 		add	r3, r6, #88
 1747 012c 0522     		movs	r2, #5
 1748 012e 5521     		movs	r1, #85
 1749 0130 3846     		mov	r0, r7
 1750 0132 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1751 0136 0028     		cmp	r0, #0
 1752 0138 91D1     		bne	.L180
 1753 013a CDE90140 		strd	r4, r0, [sp, #4]
 1754 013e CDF80080 		str	r8, [sp]
 1755 0142 06F16C03 		add	r3, r6, #108
 1756 0146 0522     		movs	r2, #5
 1757 0148 4F21     		movs	r1, #79
 1758 014a 3846     		mov	r0, r7
 1759 014c FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1760 0150 0028     		cmp	r0, #0
 1761 0152 84D1     		bne	.L180
 1762 0154 CDE90140 		strd	r4, r0, [sp, #4]
 1763 0158 CDF80080 		str	r8, [sp]
 1764 015c 06F18003 		add	r3, r6, #128
 1765 0160 0522     		movs	r2, #5
 1766 0162 4C21     		movs	r1, #76
 1767 0164 3846     		mov	r0, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 32


 1768 0166 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1769 016a 0028     		cmp	r0, #0
 1770 016c 7FF477AF 		bne	.L180
 1771 0170 CDE90140 		strd	r4, r0, [sp, #4]
 1772 0174 CDF80080 		str	r8, [sp]
 1773 0178 06F19403 		add	r3, r6, #148
 1774 017c 0522     		movs	r2, #5
 1775 017e 4821     		movs	r1, #72
 1776 0180 3846     		mov	r0, r7
 1777 0182 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1778 0186 0028     		cmp	r0, #0
 1779 0188 7FF469AF 		bne	.L180
 1780 018c CDE90140 		strd	r4, r0, [sp, #4]
 1781 0190 CDF80080 		str	r8, [sp]
 1782 0194 06F1A803 		add	r3, r6, #168
 1783 0198 0522     		movs	r2, #5
 1784 019a 4A21     		movs	r1, #74
 1785 019c 3846     		mov	r0, r7
 1786 019e FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1787 01a2 0028     		cmp	r0, #0
 1788 01a4 7FF45BAF 		bne	.L180
 1789 01a8 9DF8E630 		ldrb	r3, [sp, #230]	@ zero_extendqisi2
 1790 01ac 13B9     		cbnz	r3, .L173
 1791 01ae 9DF8E730 		ldrb	r3, [sp, #231]	@ zero_extendqisi2
 1792 01b2 13B1     		cbz	r3, .L174
 1793              	.L173:
 1794 01b4 3046     		mov	r0, r6
 1795 01b6 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 1796              	.L174:
 1797 01ba 5021     		movs	r1, #80
 1798 01bc 3846     		mov	r0, r7
 1799 01be FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1800 01c2 0028     		cmp	r0, #0
 1801 01c4 00F0A380 		beq	.L175
 1802 01c8 3846     		mov	r0, r7
 1803 01ca FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1804 01ce 0123     		movs	r3, #1
 1805 01d0 86ED0F0A 		vstr.32	s0, [r6, #60]
 1806 01d4 8DF8E630 		strb	r3, [sp, #230]
 1807              	.L176:
 1808 01d8 9DF8E600 		ldrb	r0, [sp, #230]	@ zero_extendqisi2
 1809 01dc 25E7     		b	.L168
 1810              	.L179:
 1811 01de CDE90140 		strd	r4, r0, [sp, #4]
 1812 01e2 CDF80080 		str	r8, [sp]
 1813 01e6 06F15803 		add	r3, r6, #88
 1814 01ea 0522     		movs	r2, #5
 1815 01ec 5521     		movs	r1, #85
 1816 01ee 3846     		mov	r0, r7
 1817 01f0 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1818 01f4 0028     		cmp	r0, #0
 1819 01f6 7FF432AF 		bne	.L180
 1820 01fa CDE90140 		strd	r4, r0, [sp, #4]
 1821 01fe CDF80080 		str	r8, [sp]
 1822 0202 06F16C03 		add	r3, r6, #108
 1823 0206 0522     		movs	r2, #5
 1824 0208 4F21     		movs	r1, #79
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 33


 1825 020a 3846     		mov	r0, r7
 1826 020c FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1827 0210 0028     		cmp	r0, #0
 1828 0212 7FF424AF 		bne	.L180
 1829 0216 CDE90140 		strd	r4, r0, [sp, #4]
 1830 021a CDF80080 		str	r8, [sp]
 1831 021e 06F18003 		add	r3, r6, #128
 1832 0222 0522     		movs	r2, #5
 1833 0224 4C21     		movs	r1, #76
 1834 0226 3846     		mov	r0, r7
 1835 0228 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1836 022c 0028     		cmp	r0, #0
 1837 022e 7FF416AF 		bne	.L180
 1838 0232 CDE90140 		strd	r4, r0, [sp, #4]
 1839 0236 CDF80080 		str	r8, [sp]
 1840 023a 06F19403 		add	r3, r6, #148
 1841 023e 0522     		movs	r2, #5
 1842 0240 4821     		movs	r1, #72
 1843 0242 3846     		mov	r0, r7
 1844 0244 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1845 0248 0028     		cmp	r0, #0
 1846 024a 7FF408AF 		bne	.L180
 1847 024e CDE90140 		strd	r4, r0, [sp, #4]
 1848 0252 CDF80080 		str	r8, [sp]
 1849 0256 3846     		mov	r0, r7
 1850 0258 06F1A803 		add	r3, r6, #168
 1851 025c 0522     		movs	r2, #5
 1852 025e 4A21     		movs	r1, #74
 1853 0260 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1854 0264 0028     		cmp	r0, #0
 1855 0266 7FF4FAAE 		bne	.L180
 1856 026a 306C     		ldr	r0, [r6, #64]	@ float
 1857 026c FFF7FEFF 		bl	__aeabi_f2d
 1858 0270 0D46     		mov	r5, r1
 1859 0272 D6E92D21 		ldrd	r2, r1, [r6, #180]
 1860 0276 D6F8B030 		ldr	r3, [r6, #176]
 1861 027a 1B91     		str	r1, [sp, #108]
 1862 027c D6F8AC10 		ldr	r1, [r6, #172]
 1863 0280 1A92     		str	r2, [sp, #104]
 1864 0282 D6F8A420 		ldr	r2, [r6, #164]
 1865 0286 1993     		str	r3, [sp, #100]
 1866 0288 D6F8A030 		ldr	r3, [r6, #160]
 1867 028c 1891     		str	r1, [sp, #96]
 1868 028e D6F89C10 		ldr	r1, [r6, #156]
 1869 0292 1792     		str	r2, [sp, #92]
 1870 0294 D6F89820 		ldr	r2, [r6, #152]
 1871 0298 1693     		str	r3, [sp, #88]
 1872 029a D6F89030 		ldr	r3, [r6, #144]
 1873 029e 1591     		str	r1, [sp, #84]
 1874 02a0 D6F88C10 		ldr	r1, [r6, #140]
 1875 02a4 1492     		str	r2, [sp, #80]
 1876 02a6 D6F88820 		ldr	r2, [r6, #136]
 1877 02aa 1393     		str	r3, [sp, #76]
 1878 02ac D6F88430 		ldr	r3, [r6, #132]
 1879 02b0 1291     		str	r1, [sp, #72]
 1880 02b2 F16F     		ldr	r1, [r6, #124]
 1881 02b4 1192     		str	r2, [sp, #68]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 34


 1882 02b6 B26F     		ldr	r2, [r6, #120]
 1883 02b8 1093     		str	r3, [sp, #64]
 1884 02ba 736F     		ldr	r3, [r6, #116]
 1885 02bc 0D93     		str	r3, [sp, #52]
 1886 02be CDE90E21 		strd	r2, r1, [sp, #56]
 1887 02c2 326F     		ldr	r2, [r6, #112]
 1888 02c4 D6E91913 		ldrd	r1, r3, [r6, #100]
 1889 02c8 0C92     		str	r2, [sp, #48]
 1890 02ca 326E     		ldr	r2, [r6, #96]
 1891 02cc 0B93     		str	r3, [sp, #44]
 1892 02ce F36D     		ldr	r3, [r6, #92]
 1893 02d0 0A91     		str	r1, [sp, #40]
 1894 02d2 0446     		mov	r4, r0
 1895 02d4 706D     		ldr	r0, [r6, #84]	@ float
 1896 02d6 CDE90832 		strd	r3, r2, [sp, #32]
 1897 02da FFF7FEFF 		bl	__aeabi_f2d
 1898 02de CDE90601 		strd	r0, [sp, #24]
 1899 02e2 306D     		ldr	r0, [r6, #80]	@ float
 1900 02e4 FFF7FEFF 		bl	__aeabi_f2d
 1901 02e8 CDE90401 		strd	r0, [sp, #16]
 1902 02ec F06C     		ldr	r0, [r6, #76]	@ float
 1903 02ee FFF7FEFF 		bl	__aeabi_f2d
 1904 02f2 CDE90201 		strd	r0, [sp, #8]
 1905 02f6 B06C     		ldr	r0, [r6, #72]	@ float
 1906 02f8 FFF7FEFF 		bl	__aeabi_f2d
 1907 02fc 2246     		mov	r2, r4
 1908 02fe CDE90001 		strd	r0, [sp]
 1909 0302 2B46     		mov	r3, r5
 1910 0304 4046     		mov	r0, r8
 1911 0306 5249     		ldr	r1, .L187
 1912 0308 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1913 030c 8DE6     		b	.L168
 1914              	.L175:
 1915 030e 3846     		mov	r0, r7
 1916 0310 4B21     		movs	r1, #75
 1917 0312 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1918 0316 0028     		cmp	r0, #0
 1919 0318 7FF45EAF 		bne	.L176
 1920 031c 3069     		ldr	r0, [r6, #16]	@ float
 1921 031e FFF7FEFF 		bl	__aeabi_f2d
 1922 0322 0D46     		mov	r5, r1
 1923 0324 D6E92D21 		ldrd	r2, r1, [r6, #180]
 1924 0328 D6F8B030 		ldr	r3, [r6, #176]
 1925 032c 3791     		str	r1, [sp, #220]
 1926 032e D6F8AC10 		ldr	r1, [r6, #172]
 1927 0332 3692     		str	r2, [sp, #216]
 1928 0334 D6F8A420 		ldr	r2, [r6, #164]
 1929 0338 3593     		str	r3, [sp, #212]
 1930 033a D6F8A030 		ldr	r3, [r6, #160]
 1931 033e 3491     		str	r1, [sp, #208]
 1932 0340 D6F89C10 		ldr	r1, [r6, #156]
 1933 0344 3392     		str	r2, [sp, #204]
 1934 0346 D6F89820 		ldr	r2, [r6, #152]
 1935 034a 3293     		str	r3, [sp, #200]
 1936 034c D6F89030 		ldr	r3, [r6, #144]
 1937 0350 3191     		str	r1, [sp, #196]
 1938 0352 D6F88C10 		ldr	r1, [r6, #140]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 35


 1939 0356 3092     		str	r2, [sp, #192]
 1940 0358 D6F88820 		ldr	r2, [r6, #136]
 1941 035c 2F93     		str	r3, [sp, #188]
 1942 035e D6F88430 		ldr	r3, [r6, #132]
 1943 0362 2E91     		str	r1, [sp, #184]
 1944 0364 F16F     		ldr	r1, [r6, #124]
 1945 0366 2D92     		str	r2, [sp, #180]
 1946 0368 B26F     		ldr	r2, [r6, #120]
 1947 036a 2C93     		str	r3, [sp, #176]
 1948 036c 736F     		ldr	r3, [r6, #116]
 1949 036e 2993     		str	r3, [sp, #164]
 1950 0370 CDE92A21 		strd	r2, r1, [sp, #168]
 1951 0374 326F     		ldr	r2, [r6, #112]
 1952 0376 D6E91913 		ldrd	r1, r3, [r6, #100]
 1953 037a 2892     		str	r2, [sp, #160]
 1954 037c 326E     		ldr	r2, [r6, #96]
 1955 037e 2793     		str	r3, [sp, #156]
 1956 0380 F36D     		ldr	r3, [r6, #92]
 1957 0382 2691     		str	r1, [sp, #152]
 1958 0384 0446     		mov	r4, r0
 1959 0386 706D     		ldr	r0, [r6, #84]	@ float
 1960 0388 CDE92432 		strd	r3, r2, [sp, #144]
 1961 038c FFF7FEFF 		bl	__aeabi_f2d
 1962 0390 CDE92201 		strd	r0, [sp, #136]
 1963 0394 306D     		ldr	r0, [r6, #80]	@ float
 1964 0396 FFF7FEFF 		bl	__aeabi_f2d
 1965 039a CDE92001 		strd	r0, [sp, #128]
 1966 039e F06C     		ldr	r0, [r6, #76]	@ float
 1967 03a0 FFF7FEFF 		bl	__aeabi_f2d
 1968 03a4 CDE91E01 		strd	r0, [sp, #120]
 1969 03a8 B06C     		ldr	r0, [r6, #72]	@ float
 1970 03aa FFF7FEFF 		bl	__aeabi_f2d
 1971 03ae CDE91C01 		strd	r0, [sp, #112]
 1972 03b2 306C     		ldr	r0, [r6, #64]	@ float
 1973 03b4 FFF7FEFF 		bl	__aeabi_f2d
 1974 03b8 CDE91A01 		strd	r0, [sp, #104]
 1975 03bc B068     		ldr	r0, [r6, #8]	@ float
 1976 03be FFF7FEFF 		bl	__aeabi_f2d
 1977 03c2 D6ED017A 		vldr.32	s15, [r6, #4]
 1978 03c6 CDE91801 		strd	r0, [sp, #96]
 1979 03ca FDEEE77A 		vcvt.s32.f32	s15, s15
 1980 03ce F06B     		ldr	r0, [r6, #60]	@ float
 1981 03d0 CDED167A 		vstr.32	s15, [sp, #88]	@ int
 1982 03d4 FFF7FEFF 		bl	__aeabi_f2d
 1983 03d8 CDE91401 		strd	r0, [sp, #80]
 1984 03dc B06B     		ldr	r0, [r6, #56]	@ float
 1985 03de FFF7FEFF 		bl	__aeabi_f2d
 1986 03e2 CDE91201 		strd	r0, [sp, #72]
 1987 03e6 706B     		ldr	r0, [r6, #52]	@ float
 1988 03e8 FFF7FEFF 		bl	__aeabi_f2d
 1989 03ec CDE91001 		strd	r0, [sp, #64]
 1990 03f0 306B     		ldr	r0, [r6, #48]	@ float
 1991 03f2 FFF7FEFF 		bl	__aeabi_f2d
 1992 03f6 CDE90E01 		strd	r0, [sp, #56]
 1993 03fa F06A     		ldr	r0, [r6, #44]	@ float
 1994 03fc FFF7FEFF 		bl	__aeabi_f2d
 1995 0400 CDE90C01 		strd	r0, [sp, #48]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 36


 1996 0404 B06A     		ldr	r0, [r6, #40]	@ float
 1997 0406 FFF7FEFF 		bl	__aeabi_f2d
 1998 040a CDE90A01 		strd	r0, [sp, #40]
 1999 040e 706A     		ldr	r0, [r6, #36]	@ float
 2000 0410 FFF7FEFF 		bl	__aeabi_f2d
 2001 0414 CDE90801 		strd	r0, [sp, #32]
 2002 0418 306A     		ldr	r0, [r6, #32]	@ float
 2003 041a FFF7FEFF 		bl	__aeabi_f2d
 2004 041e CDE90601 		strd	r0, [sp, #24]
 2005 0422 F069     		ldr	r0, [r6, #28]	@ float
 2006 0424 FFF7FEFF 		bl	__aeabi_f2d
 2007 0428 CDE90401 		strd	r0, [sp, #16]
 2008 042c B069     		ldr	r0, [r6, #24]	@ float
 2009 042e FFF7FEFF 		bl	__aeabi_f2d
 2010 0432 CDE90201 		strd	r0, [sp, #8]
 2011 0436 7069     		ldr	r0, [r6, #20]	@ float
 2012 0438 FFF7FEFF 		bl	__aeabi_f2d
 2013 043c 2246     		mov	r2, r4
 2014 043e CDE90001 		strd	r0, [sp]
 2015 0442 2B46     		mov	r3, r5
 2016 0444 4046     		mov	r0, r8
 2017 0446 0349     		ldr	r1, .L187+4
 2018 0448 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2019 044c C4E6     		b	.L176
 2020              	.L188:
 2021 044e 00BF     		.align	2
 2022              	.L187:
 2023 0450 94010000 		.word	.LC22
 2024 0454 00000000 		.word	.LC21
 2025              		.size	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN21HangprinterKinema
 2026              		.section	.text._ZNK21HangprinterKinematics17MotorPosToLinePosElj,"ax",%progbits
 2027              		.align	1
 2028              		.p2align 2,,3
 2029              		.global	_ZNK21HangprinterKinematics17MotorPosToLinePosElj
 2030              		.syntax unified
 2031              		.thumb
 2032              		.thumb_func
 2033              		.fpu fpv4-sp-d16
 2034              		.type	_ZNK21HangprinterKinematics17MotorPosToLinePosElj, %function
 2035              	_ZNK21HangprinterKinematics17MotorPosToLinePosElj:
 2036              		@ args = 0, pretend = 0, frame = 0
 2037              		@ frame_needed = 0, uses_anonymous_args = 0
 2038              		@ link register save eliminated.
 2039 0000 07EE901A 		vmov	s15, r1	@ int
 2040 0004 00EB8202 		add	r2, r0, r2, lsl #2
 2041 0008 92ED2F6A 		vldr.32	s12, [r2, #188]
 2042 000c D2ED116A 		vldr.32	s13, [r2, #68]
 2043 0010 92ED340A 		vldr.32	s0, [r2, #208]
 2044 0014 92ED397A 		vldr.32	s14, [r2, #228]
 2045 0018 F8EEE75A 		vcvt.f32.s32	s11, s15
 2046 001c C5EE867A 		vdiv.f32	s15, s11, s12
 2047 0020 77EEA67A 		vadd.f32	s15, s15, s13
 2048 0024 97EEA70A 		vfnms.f32	s0, s15, s15
 2049 0028 80EE070A 		vdiv.f32	s0, s0, s14
 2050 002c 7047     		bx	lr
 2051              		.size	_ZNK21HangprinterKinematics17MotorPosToLinePosElj, .-_ZNK21HangprinterKinematics17MotorPosTo
 2052 002e 00BF     		.section	.text._ZNK21HangprinterKinematics16InverseTransformEfffPf,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 37


 2053              		.align	1
 2054              		.p2align 2,,3
 2055              		.global	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2056              		.syntax unified
 2057              		.thumb
 2058              		.thumb_func
 2059              		.fpu fpv4-sp-d16
 2060              		.type	_ZNK21HangprinterKinematics16InverseTransformEfffPf, %function
 2061              	_ZNK21HangprinterKinematics16InverseTransformEfffPf:
 2062              		@ args = 0, pretend = 0, frame = 0
 2063              		@ frame_needed = 0, uses_anonymous_args = 0
 2064 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2065 0004 2DED088B 		vpush.64	{d8, d9, d10, d11}
 2066 0008 90ED458A 		vldr.32	s16, [r0, #276]
 2067 000c D0ED466A 		vldr.32	s13, [r0, #280]
 2068 0010 D0ED4C8A 		vldr.32	s17, [r0, #304]
 2069 0014 90ED4A6A 		vldr.32	s12, [r0, #296]
 2070 0018 90ED447A 		vldr.32	s14, [r0, #272]
 2071 001c D0ED492A 		vldr.32	s5, [r0, #292]
 2072 0020 90ED473A 		vldr.32	s6, [r0, #284]
 2073 0024 D0ED4B3A 		vldr.32	s7, [r0, #300]
 2074 0028 90ED484A 		vldr.32	s8, [r0, #288]
 2075 002c D0ED047A 		vldr.32	s15, [r0, #16]
 2076 0030 D0ED054A 		vldr.32	s9, [r0, #20]
 2077 0034 90ED505A 		vldr.32	s10, [r0, #320]
 2078 0038 D0ED529A 		vldr.32	s19, [r0, #328]
 2079 003c D0ED515A 		vldr.32	s11, [r0, #324]
 2080 0040 DFF8A881 		ldr	r8, .L195+12
 2081 0044 90EEA08A 		vfnms.f32	s16, s1, s1
 2082 0048 8AB0     		sub	sp, sp, #40
 2083 004a 0446     		mov	r4, r0
 2084 004c D1EE016A 		vfnms.f32	s13, s2, s2
 2085 0050 0D46     		mov	r5, r1
 2086 0052 68EEC88A 		vnmul.f32	s17, s17, s16
 2087 0056 28EE228A 		vmul.f32	s16, s16, s5
 2088 005a E6EE668A 		vfms.f32	s17, s12, s13
 2089 005e B0EE476A 		vmov.f32	s12, s14
 2090 0062 90EE006A 		vfnms.f32	s12, s0, s0
 2091 0066 A3EE668A 		vfms.f32	s16, s6, s13
 2092 006a E3EEC68A 		vfms.f32	s17, s7, s12
 2093 006e A6EE048A 		vfma.f32	s16, s12, s8
 2094 0072 67EEE87A 		vnmul.f32	s15, s15, s17
 2095 0076 28EE089A 		vmul.f32	s18, s16, s16
 2096 007a E4EE887A 		vfma.f32	s15, s9, s16
 2097 007e A8EEA89A 		vfma.f32	s18, s17, s17
 2098 0082 67EE857A 		vmul.f32	s15, s15, s10
 2099 0086 F0EE006A 		vmov.f32	s13, #2.0e+0
 2100 008a 69EEC89A 		vnmul.f32	s19, s19, s16
 2101 008e A0EE407A 		vfms.f32	s14, s0, s0
 2102 0092 A7EEA69A 		vfma.f32	s18, s15, s13
 2103 0096 E5EEA89A 		vfma.f32	s19, s11, s17
 2104 009a D0ED536A 		vldr.32	s13, [r0, #332]
 2105 009e D0ED547A 		vldr.32	s15, [r0, #336]
 2106 00a2 A7EE269A 		vfma.f32	s18, s14, s13
 2107 00a6 18EE900A 		vmov	r0, s17
 2108 00aa 79EEE79A 		vsub.f32	s19, s19, s15
 2109 00ae F0EE60AA 		vmov.f32	s21, s1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 38


 2110 00b2 B0EE41BA 		vmov.f32	s22, s2
 2111 00b6 B0EE40AA 		vmov.f32	s20, s0
 2112 00ba FFF7FEFF 		bl	__aeabi_f2d
 2113 00be 0646     		mov	r6, r0
 2114 00c0 19EE100A 		vmov	r0, s18
 2115 00c4 0F46     		mov	r7, r1
 2116 00c6 FFF7FEFF 		bl	__aeabi_f2d
 2117 00ca CDE90401 		strd	r0, [sp, #16]
 2118 00ce 19EE900A 		vmov	r0, s19
 2119 00d2 FFF7FEFF 		bl	__aeabi_f2d
 2120 00d6 CDE90201 		strd	r0, [sp, #8]
 2121 00da 18EE100A 		vmov	r0, s16
 2122 00de FFF7FEFF 		bl	__aeabi_f2d
 2123 00e2 3246     		mov	r2, r6
 2124 00e4 3B46     		mov	r3, r7
 2125 00e6 CDE90001 		strd	r0, [sp]
 2126 00ea 3D48     		ldr	r0, .L195
 2127 00ec FFF7FEFF 		bl	debugPrintf
 2128 00f0 2E46     		mov	r6, r5
 2129 00f2 05F10C07 		add	r7, r5, #12
 2130              	.L191:
 2131 00f6 56F8040B 		ldr	r0, [r6], #4	@ float
 2132 00fa FFF7FEFF 		bl	__aeabi_f2d
 2133 00fe 0246     		mov	r2, r0
 2134 0100 0B46     		mov	r3, r1
 2135 0102 4046     		mov	r0, r8
 2136 0104 FFF7FEFF 		bl	debugPrintf
 2137 0108 B742     		cmp	r7, r6
 2138 010a F4D1     		bne	.L191
 2139 010c D4ED556A 		vldr.32	s13, [r4, #340]
 2140 0110 29EE669A 		vnmul.f32	s18, s18, s13
 2141 0114 B1EE697A 		vneg.f32	s14, s19
 2142 0118 A9EEA99A 		vfma.f32	s18, s19, s19
 2143 011c B0EEC99A 		vabs.f32	s18, s18
 2144 0120 F1EEC97A 		vsqrt.f32	s15, s18
 2145 0124 37EE677A 		vsub.f32	s14, s14, s15
 2146 0128 C7EE267A 		vdiv.f32	s15, s14, s13
 2147 012c C5ED027A 		vstr.32	s15, [r5, #8]
 2148 0130 94ED517A 		vldr.32	s14, [r4, #324]
 2149 0134 D4ED506A 		vldr.32	s13, [r4, #320]
 2150 0138 E7EE878A 		vfma.f32	s17, s15, s14
 2151 013c 88EEA67A 		vdiv.f32	s14, s17, s13
 2152 0140 85ED007A 		vstr.32	s14, [r5]
 2153 0144 94ED526A 		vldr.32	s12, [r4, #328]
 2154 0148 D4ED506A 		vldr.32	s13, [r4, #320]
 2155 014c A7EE868A 		vfma.f32	s16, s15, s12
 2156 0150 17EE100A 		vmov	r0, s14
 2157 0154 C8EE267A 		vdiv.f32	s15, s16, s13
 2158 0158 C5ED017A 		vstr.32	s15, [r5, #4]
 2159 015c FFF7FEFF 		bl	__aeabi_f2d
 2160 0160 0246     		mov	r2, r0
 2161 0162 0B46     		mov	r3, r1
 2162 0164 1F48     		ldr	r0, .L195+4
 2163 0166 FFF7FEFF 		bl	debugPrintf
 2164 016a 6868     		ldr	r0, [r5, #4]	@ float
 2165 016c FFF7FEFF 		bl	__aeabi_f2d
 2166 0170 0246     		mov	r2, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 39


 2167 0172 0B46     		mov	r3, r1
 2168 0174 1B48     		ldr	r0, .L195+4
 2169 0176 FFF7FEFF 		bl	debugPrintf
 2170 017a A868     		ldr	r0, [r5, #8]	@ float
 2171 017c FFF7FEFF 		bl	__aeabi_f2d
 2172 0180 0246     		mov	r2, r0
 2173 0182 0B46     		mov	r3, r1
 2174 0184 1748     		ldr	r0, .L195+4
 2175 0186 FFF7FEFF 		bl	debugPrintf
 2176 018a 1AEE100A 		vmov	r0, s20
 2177 018e FFF7FEFF 		bl	__aeabi_f2d
 2178 0192 0646     		mov	r6, r0
 2179 0194 A868     		ldr	r0, [r5, #8]	@ float
 2180 0196 0F46     		mov	r7, r1
 2181 0198 FFF7FEFF 		bl	__aeabi_f2d
 2182 019c CDE90801 		strd	r0, [sp, #32]
 2183 01a0 6868     		ldr	r0, [r5, #4]	@ float
 2184 01a2 FFF7FEFF 		bl	__aeabi_f2d
 2185 01a6 CDE90601 		strd	r0, [sp, #24]
 2186 01aa 2868     		ldr	r0, [r5]	@ float
 2187 01ac FFF7FEFF 		bl	__aeabi_f2d
 2188 01b0 CDE90401 		strd	r0, [sp, #16]
 2189 01b4 1BEE100A 		vmov	r0, s22
 2190 01b8 FFF7FEFF 		bl	__aeabi_f2d
 2191 01bc CDE90201 		strd	r0, [sp, #8]
 2192 01c0 1AEE900A 		vmov	r0, s21
 2193 01c4 FFF7FEFF 		bl	__aeabi_f2d
 2194 01c8 3246     		mov	r2, r6
 2195 01ca CDE90001 		strd	r0, [sp]
 2196 01ce 3B46     		mov	r3, r7
 2197 01d0 0548     		ldr	r0, .L195+8
 2198 01d2 FFF7FEFF 		bl	debugPrintf
 2199 01d6 0AB0     		add	sp, sp, #40
 2200              		@ sp needed
 2201 01d8 BDEC088B 		vldm	sp!, {d8-d11}
 2202 01dc BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2203              	.L196:
 2204              		.align	2
 2205              	.L195:
 2206 01e0 00000000 		.word	.LC23
 2207 01e4 64000000 		.word	.LC25
 2208 01e8 80000000 		.word	.LC26
 2209 01ec 44000000 		.word	.LC24
 2210              		.size	_ZNK21HangprinterKinematics16InverseTransformEfffPf, .-_ZNK21HangprinterKinematics16InverseT
 2211              		.section	.text._ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 2212              		.align	1
 2213              		.p2align 2,,3
 2214              		.global	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf
 2215              		.syntax unified
 2216              		.thumb
 2217              		.thumb_func
 2218              		.fpu fpv4-sp-d16
 2219              		.type	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 2220              	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 2221              		@ args = 8, pretend = 0, frame = 0
 2222              		@ frame_needed = 0, uses_anonymous_args = 0
 2223              		@ link register save eliminated.
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 40


 2224 0000 D1ED013A 		vldr.32	s7, [r1, #4]	@ int
 2225 0004 91ED024A 		vldr.32	s8, [r1, #8]	@ int
 2226 0008 D1ED034A 		vldr.32	s9, [r1, #12]	@ int
 2227 000c 90ED307A 		vldr.32	s14, [r0, #192]
 2228 0010 D0ED317A 		vldr.32	s15, [r0, #196]
 2229 0014 90ED140A 		vldr.32	s0, [r0, #80]
 2230 0018 90ED355A 		vldr.32	s10, [r0, #212]
 2231 001c D0ED365A 		vldr.32	s11, [r0, #216]
 2232 0020 90ED376A 		vldr.32	s12, [r0, #220]
 2233 0024 D0ED3A0A 		vldr.32	s1, [r0, #232]
 2234 0028 90ED3B1A 		vldr.32	s2, [r0, #236]
 2235 002c D0ED3C1A 		vldr.32	s3, [r0, #240]
 2236 0030 90ED3F2A 		vldr.32	s4, [r0, #252]
 2237 0034 D0ED402A 		vldr.32	s5, [r0, #256]
 2238 0038 90ED413A 		vldr.32	s6, [r0, #260]
 2239 003c 2DED048B 		vpush.64	{d8, d9}
 2240 0040 F8EEE33A 		vcvt.f32.s32	s7, s7
 2241 0044 90ED329A 		vldr.32	s18, [r0, #200]
 2242 0048 D0ED128A 		vldr.32	s17, [r0, #72]
 2243 004c 90ED138A 		vldr.32	s16, [r0, #76]
 2244 0050 0599     		ldr	r1, [sp, #20]
 2245 0052 B8EEC44A 		vcvt.f32.s32	s8, s8
 2246 0056 F8EEE44A 		vcvt.f32.s32	s9, s9
 2247 005a C3EE876A 		vdiv.f32	s13, s7, s14
 2248 005e 84EE277A 		vdiv.f32	s14, s8, s15
 2249 0062 C4EE897A 		vdiv.f32	s15, s9, s18
 2250 0066 76EEA86A 		vadd.f32	s13, s13, s17
 2251 006a 37EE087A 		vadd.f32	s14, s14, s16
 2252 006e 77EE807A 		vadd.f32	s15, s15, s0
 2253 0072 96EEA65A 		vfnms.f32	s10, s13, s13
 2254 0076 BDEC048B 		vldm	sp!, {d8-d9}
 2255 007a D7EE075A 		vfnms.f32	s11, s14, s14
 2256 007e 97EEA76A 		vfnms.f32	s12, s15, s15
 2257 0082 85EE200A 		vdiv.f32	s0, s10, s1
 2258 0086 C5EE810A 		vdiv.f32	s1, s11, s2
 2259 008a 86EE211A 		vdiv.f32	s2, s12, s3
 2260 008e 30EE020A 		vadd.f32	s0, s0, s4
 2261 0092 70EEA20A 		vadd.f32	s1, s1, s5
 2262 0096 31EE031A 		vadd.f32	s2, s2, s6
 2263 009a FFF7FEBF 		b	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2264              		.size	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK21HangprinterKinematics
 2265              		.global	__aeabi_dsub
 2266              		.global	__aeabi_ddiv
 2267 009e 00BF     		.section	.text._ZNK21HangprinterKinematics17ComputeDerivativeEjfff,"ax",%progbits
 2268              		.align	1
 2269              		.p2align 2,,3
 2270              		.global	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 2271              		.syntax unified
 2272              		.thumb
 2273              		.thumb_func
 2274              		.fpu fpv4-sp-d16
 2275              		.type	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff, %function
 2276              	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff:
 2277              		@ args = 0, pretend = 0, frame = 776
 2278              		@ frame_needed = 0, uses_anonymous_args = 0
 2279 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2280 0004 2DED0A8B 		vpush.64	{d8, d9, d10, d11, d12}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 41


 2281 0008 ADF5437D 		sub	sp, sp, #780
 2282 000c 00F1100B 		add	fp, r0, #16
 2283 0010 0446     		mov	r4, r0
 2284 0012 0191     		str	r1, [sp, #4]
 2285 0014 9BE80700 		ldm	fp, {r0, r1, r2}
 2286 0018 04F11C05 		add	r5, r4, #28
 2287 001c 18AB     		add	r3, sp, #96
 2288 001e 83E80700 		stm	r3, {r0, r1, r2}
 2289 0022 95E80700 		ldm	r5, {r0, r1, r2}
 2290 0026 04F12806 		add	r6, r4, #40
 2291 002a 1BAB     		add	r3, sp, #108
 2292 002c 83E80700 		stm	r3, {r0, r1, r2}
 2293 0030 96E80700 		ldm	r6, {r0, r1, r2}
 2294 0034 94ED017A 		vldr.32	s14, [r4, #4]
 2295 0038 D4ED027A 		vldr.32	s15, [r4, #8]
 2296 003c 94F80FC0 		ldrb	ip, [r4, #15]	@ zero_extendqisi2
 2297 0040 277B     		ldrb	r7, [r4, #12]	@ zero_extendqisi2
 2298 0042 D4ED0DCA 		vldr.32	s25, [r4, #52]
 2299 0046 0995     		str	r5, [sp, #36]
 2300 0048 1EAB     		add	r3, sp, #120
 2301 004a 657B     		ldrb	r5, [r4, #13]	@ zero_extendqisi2
 2302 004c 0A96     		str	r6, [sp, #40]
 2303 004e 83E80700 		stm	r3, {r0, r1, r2}
 2304 0052 A67B     		ldrb	r6, [r4, #14]	@ zero_extendqisi2
 2305 0054 CDF808C0 		str	ip, [sp, #8]
 2306 0058 8DED157A 		vstr.32	s14, [sp, #84]
 2307 005c 04F1440C 		add	ip, r4, #68
 2308 0060 CDED167A 		vstr.32	s15, [sp, #88]
 2309 0064 C249     		ldr	r1, .L226
 2310 0066 029A     		ldr	r2, [sp, #8]
 2311 0068 8DF85F20 		strb	r2, [sp, #95]
 2312 006c 1491     		str	r1, [sp, #80]
 2313 006e BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 2314 0072 0896     		str	r6, [sp, #32]
 2315 0074 8DF85E60 		strb	r6, [sp, #94]
 2316 0078 04F1580E 		add	lr, r4, #88
 2317 007c 25AE     		add	r6, sp, #148
 2318 007e 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2319 0080 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2320 0084 0795     		str	r5, [sp, #28]
 2321 0086 8DF85D50 		strb	r5, [sp, #93]
 2322 008a 04F16C0A 		add	r10, r4, #108
 2323 008e 2AAD     		add	r5, sp, #168
 2324 0090 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2325 0092 BAE80F00 		ldmia	r10!, {r0, r1, r2, r3}
 2326 0096 94ED0E9A 		vldr.32	s18, [r4, #56]
 2327 009a D4ED0F8A 		vldr.32	s17, [r4, #60]
 2328 009e 0697     		str	r7, [sp, #24]
 2329 00a0 8DF85C70 		strb	r7, [sp, #92]
 2330 00a4 04F18009 		add	r9, r4, #128
 2331 00a8 CDED21CA 		vstr.32	s25, [sp, #132]
 2332 00ac 94ED108A 		vldr.32	s16, [r4, #64]
 2333 00b0 DCF80070 		ldr	r7, [ip]
 2334 00b4 0397     		str	r7, [sp, #12]
 2335 00b6 0DF1BC0C 		add	ip, sp, #188
 2336 00ba ACE80F00 		stmia	ip!, {r0, r1, r2, r3}
 2337 00be B9E80F00 		ldmia	r9!, {r0, r1, r2, r3}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 42


 2338 00c2 DEF80070 		ldr	r7, [lr]
 2339 00c6 0497     		str	r7, [sp, #16]
 2340 00c8 039F     		ldr	r7, [sp, #12]
 2341 00ca 3760     		str	r7, [r6]
 2342 00cc 04F19408 		add	r8, r4, #148
 2343 00d0 34AF     		add	r7, sp, #208
 2344 00d2 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2345 00d4 B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 2346 00d8 049E     		ldr	r6, [sp, #16]
 2347 00da 2E60     		str	r6, [r5]
 2348 00dc 04F1A80E 		add	lr, r4, #168
 2349 00e0 39AE     		add	r6, sp, #228
 2350 00e2 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2351 00e4 8DED229A 		vstr.32	s18, [sp, #136]
 2352 00e8 CDED238A 		vstr.32	s17, [sp, #140]
 2353 00ec 8DED248A 		vstr.32	s16, [sp, #144]
 2354 00f0 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2355 00f4 3EAD     		add	r5, sp, #248
 2356 00f6 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2357 00f8 DAF80000 		ldr	r0, [r10]
 2358 00fc D9F80020 		ldr	r2, [r9]
 2359 0100 D8F80010 		ldr	r1, [r8]
 2360 0104 DEF80030 		ldr	r3, [lr]
 2361 0108 CCF80000 		str	r0, [ip]
 2362 010c 04F1BC0C 		add	ip, r4, #188
 2363 0110 3A60     		str	r2, [r7]
 2364 0112 3160     		str	r1, [r6]
 2365 0114 2B60     		str	r3, [r5]
 2366 0116 0B90     		str	r0, [sp, #44]
 2367 0118 0C92     		str	r2, [sp, #48]
 2368 011a 0D91     		str	r1, [sp, #52]
 2369 011c 0E93     		str	r3, [sp, #56]
 2370 011e BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 2371 0122 04F1D008 		add	r8, r4, #208
 2372 0126 43AF     		add	r7, sp, #268
 2373 0128 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2374 012a B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 2375 012e 04F1E40E 		add	lr, r4, #228
 2376 0132 48AE     		add	r6, sp, #288
 2377 0134 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2378 0136 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2379 013a 4DAD     		add	r5, sp, #308
 2380 013c 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2381 013e DCF800C0 		ldr	ip, [ip]
 2382 0142 DEF80000 		ldr	r0, [lr]
 2383 0146 C7F800C0 		str	ip, [r7]
 2384 014a 04F1F807 		add	r7, r4, #248
 2385 014e 2860     		str	r0, [r5]
 2386 0150 0F90     		str	r0, [sp, #60]
 2387 0152 0FCF     		ldmia	r7!, {r0, r1, r2, r3}
 2388 0154 52AD     		add	r5, sp, #328
 2389 0156 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2390 0158 D8F80080 		ldr	r8, [r8]
 2391 015c 94ED43CA 		vldr.32	s24, [r4, #268]
 2392 0160 D4ED44BA 		vldr.32	s23, [r4, #272]
 2393 0164 94ED45BA 		vldr.32	s22, [r4, #276]
 2394 0168 D4ED46AA 		vldr.32	s21, [r4, #280]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 43


 2395 016c 94ED47AA 		vldr.32	s20, [r4, #284]
 2396 0170 D4ED489A 		vldr.32	s19, [r4, #288]
 2397 0174 C6F80080 		str	r8, [r6]
 2398 0178 D4ED491A 		vldr.32	s3, [r4, #292]
 2399 017c 94ED4A2A 		vldr.32	s4, [r4, #296]
 2400 0180 D4ED4B2A 		vldr.32	s5, [r4, #300]
 2401 0184 94ED4C3A 		vldr.32	s6, [r4, #304]
 2402 0188 D4ED4D3A 		vldr.32	s7, [r4, #308]
 2403 018c 94ED4E4A 		vldr.32	s8, [r4, #312]
 2404 0190 3B68     		ldr	r3, [r7]
 2405 0192 D4ED4F4A 		vldr.32	s9, [r4, #316]
 2406 0196 2B60     		str	r3, [r5]
 2407 0198 9BE80700 		ldm	fp, {r0, r1, r2}
 2408 019c 0593     		str	r3, [sp, #20]
 2409 019e 6FAB     		add	r3, sp, #444
 2410 01a0 94ED505A 		vldr.32	s10, [r4, #320]
 2411 01a4 D4ED515A 		vldr.32	s11, [r4, #324]
 2412 01a8 94ED526A 		vldr.32	s12, [r4, #328]
 2413 01ac 8DED57CA 		vstr.32	s24, [sp, #348]
 2414 01b0 83E80700 		stm	r3, {r0, r1, r2}
 2415 01b4 CDED58BA 		vstr.32	s23, [sp, #352]
 2416 01b8 8DED59BA 		vstr.32	s22, [sp, #356]
 2417 01bc CDED5AAA 		vstr.32	s21, [sp, #360]
 2418 01c0 8DED5BAA 		vstr.32	s20, [sp, #364]
 2419 01c4 CDED5C9A 		vstr.32	s19, [sp, #368]
 2420 01c8 CDED5D1A 		vstr.32	s3, [sp, #372]
 2421 01cc 8DED5E2A 		vstr.32	s4, [sp, #376]
 2422 01d0 CDED5F2A 		vstr.32	s5, [sp, #380]
 2423 01d4 8DED603A 		vstr.32	s6, [sp, #384]
 2424 01d8 CDED613A 		vstr.32	s7, [sp, #388]
 2425 01dc 8DED624A 		vstr.32	s8, [sp, #392]
 2426 01e0 CDED634A 		vstr.32	s9, [sp, #396]
 2427 01e4 099B     		ldr	r3, [sp, #36]
 2428 01e6 D4ED536A 		vldr.32	s13, [r4, #332]
 2429 01ea 079D     		ldr	r5, [sp, #28]
 2430 01ec 8DED6C7A 		vstr.32	s14, [sp, #432]
 2431 01f0 93E80700 		ldm	r3, {r0, r1, r2}
 2432 01f4 089B     		ldr	r3, [sp, #32]
 2433 01f6 8DF8BA31 		strb	r3, [sp, #442]
 2434 01fa 029B     		ldr	r3, [sp, #8]
 2435 01fc 8DF8BB31 		strb	r3, [sp, #443]
 2436 0200 72AB     		add	r3, sp, #456
 2437 0202 94ED547A 		vldr.32	s14, [r4, #336]
 2438 0206 CDED6D7A 		vstr.32	s15, [sp, #436]
 2439 020a 83E80700 		stm	r3, {r0, r1, r2}
 2440 020e D4ED557A 		vldr.32	s15, [r4, #340]
 2441 0212 0A9A     		ldr	r2, [sp, #40]
 2442 0214 94F85891 		ldrb	r9, [r4, #344]	@ zero_extendqisi2
 2443 0218 069F     		ldr	r7, [sp, #24]
 2444 021a 8DF8B951 		strb	r5, [sp, #441]
 2445 021e 544D     		ldr	r5, .L226
 2446 0220 8DF8B871 		strb	r7, [sp, #440]
 2447 0224 6B95     		str	r5, [sp, #428]
 2448 0226 8DED645A 		vstr.32	s10, [sp, #400]
 2449 022a CDED655A 		vstr.32	s11, [sp, #404]
 2450 022e 8DED666A 		vstr.32	s12, [sp, #408]
 2451 0232 CDED676A 		vstr.32	s13, [sp, #412]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 44


 2452 0236 8DED687A 		vstr.32	s14, [sp, #416]
 2453 023a CDED697A 		vstr.32	s15, [sp, #420]
 2454 023e 8DF8A891 		strb	r9, [sp, #424]
 2455 0242 07CA     		ldm	r2, {r0, r1, r2}
 2456 0244 75AB     		add	r3, sp, #468
 2457 0246 04F14405 		add	r5, r4, #68
 2458 024a 83E80700 		stm	r3, {r0, r1, r2}
 2459 024e 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2460 0250 7CAF     		add	r7, sp, #496
 2461 0252 04F15805 		add	r5, r4, #88
 2462 0256 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2463 0258 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2464 025a 81AD     		add	r5, sp, #516
 2465 025c 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2466 025e 04F16C0E 		add	lr, r4, #108
 2467 0262 039B     		ldr	r3, [sp, #12]
 2468 0264 3B60     		str	r3, [r7]
 2469 0266 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2470 026a 049F     		ldr	r7, [sp, #16]
 2471 026c 2F60     		str	r7, [r5]
 2472 026e 0DF5067A 		add	r10, sp, #536
 2473 0272 04F18005 		add	r5, r4, #128
 2474 0276 8DED799A 		vstr.32	s18, [sp, #484]
 2475 027a CDED7A8A 		vstr.32	s17, [sp, #488]
 2476 027e 8DED7B8A 		vstr.32	s16, [sp, #492]
 2477 0282 CDED78CA 		vstr.32	s25, [sp, #480]
 2478 0286 AAE80F00 		stmia	r10!, {r0, r1, r2, r3}
 2479 028a 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2480 028c 0DF50B7E 		add	lr, sp, #556
 2481 0290 04F19405 		add	r5, r4, #148
 2482 0294 AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 2483 0298 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2484 029a 90AF     		add	r7, sp, #576
 2485 029c 04F1A805 		add	r5, r4, #168
 2486 02a0 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2487 02a2 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2488 02a4 0B9D     		ldr	r5, [sp, #44]
 2489 02a6 CAF80050 		str	r5, [r10]
 2490 02aa 0C9D     		ldr	r5, [sp, #48]
 2491 02ac CEF80050 		str	r5, [lr]
 2492 02b0 04F1BC0B 		add	fp, r4, #188
 2493 02b4 0D9D     		ldr	r5, [sp, #52]
 2494 02b6 3D60     		str	r5, [r7]
 2495 02b8 95AE     		add	r6, sp, #596
 2496 02ba 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2497 02bc BBE80F00 		ldmia	fp!, {r0, r1, r2, r3}
 2498 02c0 04F1D007 		add	r7, r4, #208
 2499 02c4 0DF51A7E 		add	lr, sp, #616
 2500 02c8 AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 2501 02cc 0FCF     		ldmia	r7!, {r0, r1, r2, r3}
 2502 02ce 04F1E40A 		add	r10, r4, #228
 2503 02d2 9FAF     		add	r7, sp, #636
 2504 02d4 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2505 02d6 BAE80F00 		ldmia	r10!, {r0, r1, r2, r3}
 2506 02da F834     		adds	r4, r4, #248
 2507 02dc 0DF5247A 		add	r10, sp, #656
 2508 02e0 AAE80F00 		stmia	r10!, {r0, r1, r2, r3}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 45


 2509 02e4 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 2510 02e6 0E9D     		ldr	r5, [sp, #56]
 2511 02e8 3560     		str	r5, [r6]
 2512 02ea A9AC     		add	r4, sp, #676
 2513 02ec CEF800C0 		str	ip, [lr]
 2514 02f0 C7F80080 		str	r8, [r7]
 2515 02f4 0F9D     		ldr	r5, [sp, #60]
 2516 02f6 CAF80050 		str	r5, [r10]
 2517 02fa 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 2518 02fc 019B     		ldr	r3, [sp, #4]
 2519 02fe 059A     		ldr	r2, [sp, #20]
 2520 0300 2260     		str	r2, [r4]
 2521 0302 033B     		subs	r3, r3, #3
 2522 0304 B0EE408A 		vmov.f32	s16, s0
 2523 0308 B0EE609A 		vmov.f32	s18, s1
 2524 030c F0EE418A 		vmov.f32	s17, s2
 2525 0310 8DEDAECA 		vstr.32	s24, [sp, #696]
 2526 0314 CDEDAFBA 		vstr.32	s23, [sp, #700]
 2527 0318 8DEDB0BA 		vstr.32	s22, [sp, #704]
 2528 031c CDEDB1AA 		vstr.32	s21, [sp, #708]
 2529 0320 8DEDB2AA 		vstr.32	s20, [sp, #712]
 2530 0324 CDEDB39A 		vstr.32	s19, [sp, #716]
 2531 0328 CDEDB41A 		vstr.32	s3, [sp, #720]
 2532 032c 8DEDB52A 		vstr.32	s4, [sp, #724]
 2533 0330 CDEDB62A 		vstr.32	s5, [sp, #728]
 2534 0334 8DEDB73A 		vstr.32	s6, [sp, #732]
 2535 0338 CDEDB83A 		vstr.32	s7, [sp, #736]
 2536 033c 8DEDB94A 		vstr.32	s8, [sp, #740]
 2537 0340 CDEDBA4A 		vstr.32	s9, [sp, #744]
 2538 0344 8DEDBB5A 		vstr.32	s10, [sp, #748]
 2539 0348 CDEDBC5A 		vstr.32	s11, [sp, #752]
 2540 034c 8DEDBD6A 		vstr.32	s12, [sp, #756]
 2541 0350 CDEDBE6A 		vstr.32	s13, [sp, #760]
 2542 0354 8DEDBF7A 		vstr.32	s14, [sp, #764]
 2543 0358 CDEDC07A 		vstr.32	s15, [sp, #768]
 2544 035c 8DF80493 		strb	r9, [sp, #772]
 2545 0360 052B     		cmp	r3, #5
 2546 0362 00F2AA80 		bhi	.L200
 2547 0366 DFE803F0 		tbb	[pc, r3]
 2548              	.L202:
 2549 036a 69       		.byte	(.L201-.L202)/2
 2550 036b 7E       		.byte	(.L203-.L202)/2
 2551 036c 93       		.byte	(.L204-.L202)/2
 2552 036d 54       		.byte	(.L205-.L202)/2
 2553 036e 07       		.byte	(.L207-.L202)/2
 2554 036f 07       		.byte	(.L207-.L202)/2
 2555              		.p2align 1
 2556              	.L227:
 2557              		.align	2
 2558              	.L226:
 2559 0370 08000000 		.word	.LANCHOR4+8
 2560 0374 CDCC4C3E 		.word	1045220557
 2561              	.L207:
 2562 0378 9DED1D7A 		vldr.32	s14, [sp, #116]
 2563 037c 5FED036A 		vldr.32	s13, .L226+4
 2564 0380 DDED747A 		vldr.32	s15, [sp, #464]
 2565 0384 37EE267A 		vadd.f32	s14, s14, s13
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 46


 2566 0388 77EEE67A 		vsub.f32	s15, s15, s13
 2567 038c 14A8     		add	r0, sp, #80
 2568 038e 8DED1D7A 		vstr.32	s14, [sp, #116]
 2569 0392 CDED747A 		vstr.32	s15, [sp, #464]
 2570 0396 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2571 039a 6BA8     		add	r0, sp, #428
 2572 039c FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2573              	.L208:
 2574 03a0 11AC     		add	r4, sp, #68
 2575 03a2 14A8     		add	r0, sp, #80
 2576 03a4 2146     		mov	r1, r4
 2577 03a6 B0EE681A 		vmov.f32	s2, s17
 2578 03aa F0EE490A 		vmov.f32	s1, s18
 2579 03ae B0EE480A 		vmov.f32	s0, s16
 2580 03b2 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2581 03b6 019B     		ldr	r3, [sp, #4]
 2582 03b8 A568     		ldr	r5, [r4, #8]	@ float
 2583 03ba 002B     		cmp	r3, #0
 2584 03bc 40F0A880 		bne	.L216
 2585              	.L210:
 2586 03c0 5FED147A 		vldr.32	s15, .L226+4
 2587 03c4 38EE678A 		vsub.f32	s16, s16, s15
 2588              	.L214:
 2589 03c8 F0EE490A 		vmov.f32	s1, s18
 2590 03cc B0EE480A 		vmov.f32	s0, s16
 2591 03d0 B0EE681A 		vmov.f32	s2, s17
 2592 03d4 6BA8     		add	r0, sp, #428
 2593 03d6 2146     		mov	r1, r4
 2594 03d8 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2595 03dc 2846     		mov	r0, r5	@ float
 2596 03de FFF7FEFF 		bl	__aeabi_f2d
 2597 03e2 0646     		mov	r6, r0
 2598 03e4 A068     		ldr	r0, [r4, #8]	@ float
 2599 03e6 0F46     		mov	r7, r1
 2600 03e8 FFF7FEFF 		bl	__aeabi_f2d
 2601 03ec 0246     		mov	r2, r0
 2602 03ee 0B46     		mov	r3, r1
 2603 03f0 3046     		mov	r0, r6
 2604 03f2 3946     		mov	r1, r7
 2605 03f4 FFF7FEFF 		bl	__aeabi_dsub
 2606 03f8 56A3     		adr	r3, .L228+4
 2607 03fa D3E90023 		ldrd	r2, [r3]
 2608 03fe FFF7FEFF 		bl	__aeabi_ddiv
 2609 0402 41EC100B 		vmov	d0, r0, r1
 2610 0406 0DF5437D 		add	sp, sp, #780
 2611              		@ sp needed
 2612 040a BDEC0A8B 		vldm	sp!, {d8-d12}
 2613 040e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2614              	.L205:
 2615 0412 9DED1A7A 		vldr.32	s14, [sp, #104]
 2616 0416 DFED4E6A 		vldr.32	s13, .L228
 2617 041a DDED717A 		vldr.32	s15, [sp, #452]
 2618 041e 37EE267A 		vadd.f32	s14, s14, s13
 2619 0422 77EEE67A 		vsub.f32	s15, s15, s13
 2620 0426 14A8     		add	r0, sp, #80
 2621 0428 8DED1A7A 		vstr.32	s14, [sp, #104]
 2622 042c CDED717A 		vstr.32	s15, [sp, #452]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 47


 2623 0430 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2624 0434 6BA8     		add	r0, sp, #428
 2625 0436 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2626 043a B1E7     		b	.L208
 2627              	.L201:
 2628 043c 9DED1C7A 		vldr.32	s14, [sp, #112]
 2629 0440 DFED436A 		vldr.32	s13, .L228
 2630 0444 DDED737A 		vldr.32	s15, [sp, #460]
 2631 0448 37EE267A 		vadd.f32	s14, s14, s13
 2632 044c 77EEE67A 		vsub.f32	s15, s15, s13
 2633 0450 14A8     		add	r0, sp, #80
 2634 0452 8DED1C7A 		vstr.32	s14, [sp, #112]
 2635 0456 CDED737A 		vstr.32	s15, [sp, #460]
 2636 045a FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2637 045e 6BA8     		add	r0, sp, #428
 2638 0460 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2639 0464 9CE7     		b	.L208
 2640              	.L203:
 2641 0466 9DED1E7A 		vldr.32	s14, [sp, #120]
 2642 046a DFED396A 		vldr.32	s13, .L228
 2643 046e DDED757A 		vldr.32	s15, [sp, #468]
 2644 0472 37EE267A 		vadd.f32	s14, s14, s13
 2645 0476 77EEE67A 		vsub.f32	s15, s15, s13
 2646 047a 14A8     		add	r0, sp, #80
 2647 047c 8DED1E7A 		vstr.32	s14, [sp, #120]
 2648 0480 CDED757A 		vstr.32	s15, [sp, #468]
 2649 0484 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2650 0488 6BA8     		add	r0, sp, #428
 2651 048a FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2652 048e 87E7     		b	.L208
 2653              	.L204:
 2654 0490 9DED1F7A 		vldr.32	s14, [sp, #124]
 2655 0494 DFED2E6A 		vldr.32	s13, .L228
 2656 0498 DDED767A 		vldr.32	s15, [sp, #472]
 2657 049c 37EE267A 		vadd.f32	s14, s14, s13
 2658 04a0 77EEE67A 		vsub.f32	s15, s15, s13
 2659 04a4 14A8     		add	r0, sp, #80
 2660 04a6 8DED1F7A 		vstr.32	s14, [sp, #124]
 2661 04aa CDED767A 		vstr.32	s15, [sp, #472]
 2662 04ae FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2663 04b2 6BA8     		add	r0, sp, #428
 2664 04b4 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2665 04b8 72E7     		b	.L208
 2666              	.L200:
 2667 04ba 019B     		ldr	r3, [sp, #4]
 2668 04bc 53B9     		cbnz	r3, .L209
 2669 04be 9FED240A 		vldr.32	s0, .L228
 2670 04c2 11AC     		add	r4, sp, #68
 2671 04c4 14A8     		add	r0, sp, #80
 2672 04c6 38EE000A 		vadd.f32	s0, s16, s0
 2673 04ca 2146     		mov	r1, r4
 2674 04cc FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2675 04d0 A568     		ldr	r5, [r4, #8]	@ float
 2676 04d2 75E7     		b	.L210
 2677              	.L209:
 2678 04d4 019B     		ldr	r3, [sp, #4]
 2679 04d6 012B     		cmp	r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 48


 2680 04d8 26D1     		bne	.L211
 2681 04da DFED1D0A 		vldr.32	s1, .L228
 2682 04de 11AC     		add	r4, sp, #68
 2683 04e0 14A8     		add	r0, sp, #80
 2684 04e2 79EE200A 		vadd.f32	s1, s18, s1
 2685 04e6 2146     		mov	r1, r4
 2686 04e8 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2687 04ec A568     		ldr	r5, [r4, #8]	@ float
 2688              	.L212:
 2689 04ee DFED187A 		vldr.32	s15, .L228
 2690 04f2 39EE679A 		vsub.f32	s18, s18, s15
 2691 04f6 67E7     		b	.L214
 2692              	.L225:
 2693 04f8 11AC     		add	r4, sp, #68
 2694 04fa 14A8     		add	r0, sp, #80
 2695 04fc 2146     		mov	r1, r4
 2696 04fe B0EE681A 		vmov.f32	s2, s17
 2697 0502 F0EE490A 		vmov.f32	s1, s18
 2698 0506 B0EE480A 		vmov.f32	s0, s16
 2699 050a FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2700 050e A568     		ldr	r5, [r4, #8]	@ float
 2701              	.L216:
 2702 0510 019B     		ldr	r3, [sp, #4]
 2703 0512 012B     		cmp	r3, #1
 2704 0514 EBD0     		beq	.L212
 2705 0516 019B     		ldr	r3, [sp, #4]
 2706 0518 022B     		cmp	r3, #2
 2707 051a 7FF455AF 		bne	.L214
 2708              	.L213:
 2709 051e DFED0C7A 		vldr.32	s15, .L228
 2710 0522 78EEE78A 		vsub.f32	s17, s17, s15
 2711 0526 4FE7     		b	.L214
 2712              	.L211:
 2713 0528 019B     		ldr	r3, [sp, #4]
 2714 052a 022B     		cmp	r3, #2
 2715 052c E4D1     		bne	.L225
 2716 052e 9FED081A 		vldr.32	s2, .L228
 2717 0532 11AC     		add	r4, sp, #68
 2718 0534 14A8     		add	r0, sp, #80
 2719 0536 38EE811A 		vadd.f32	s2, s17, s2
 2720 053a 2146     		mov	r1, r4
 2721 053c F0EE490A 		vmov.f32	s1, s18
 2722 0540 B0EE480A 		vmov.f32	s0, s16
 2723 0544 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2724 0548 A568     		ldr	r5, [r4, #8]	@ float
 2725 054a E8E7     		b	.L213
 2726              	.L229:
 2727 054c AFF30080 		.align	3
 2728              	.L228:
 2729 0550 CDCC4C3E 		.word	1045220557
 2730 0554 000000A0 		.word	-1610612736
 2731 0558 9999D93F 		.word	1071225241
 2732              		.size	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff, .-_ZNK21HangprinterKinematics17ComputeD
 2733              		.global	__aeabi_d2f
 2734              		.section	.text._ZN21HangprinterKinematics6AdjustEjPKd,"ax",%progbits
 2735              		.align	1
 2736              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 49


 2737              		.global	_ZN21HangprinterKinematics6AdjustEjPKd
 2738              		.syntax unified
 2739              		.thumb
 2740              		.thumb_func
 2741              		.fpu fpv4-sp-d16
 2742              		.type	_ZN21HangprinterKinematics6AdjustEjPKd, %function
 2743              	_ZN21HangprinterKinematics6AdjustEjPKd:
 2744              		@ args = 0, pretend = 0, frame = 0
 2745              		@ frame_needed = 0, uses_anonymous_args = 0
 2746 0000 0329     		cmp	r1, #3
 2747 0002 70B5     		push	{r4, r5, r6, lr}
 2748 0004 0446     		mov	r4, r0
 2749 0006 53D9     		bls	.L232
 2750 0008 0D46     		mov	r5, r1
 2751 000a D2E90601 		ldrd	r0, [r2, #24]
 2752 000e 1646     		mov	r6, r2
 2753 0010 FFF7FEFF 		bl	__aeabi_d2f
 2754 0014 D4ED087A 		vldr.32	s15, [r4, #32]
 2755 0018 07EE100A 		vmov	s14, r0
 2756 001c 77EE877A 		vadd.f32	s15, s15, s14
 2757 0020 042D     		cmp	r5, #4
 2758 0022 C4ED087A 		vstr.32	s15, [r4, #32]
 2759 0026 43D0     		beq	.L232
 2760 0028 D6E90801 		ldrd	r0, [r6, #32]
 2761 002c FFF7FEFF 		bl	__aeabi_d2f
 2762 0030 D4ED0A7A 		vldr.32	s15, [r4, #40]
 2763 0034 07EE100A 		vmov	s14, r0
 2764 0038 77EE877A 		vadd.f32	s15, s15, s14
 2765 003c 052D     		cmp	r5, #5
 2766 003e C4ED0A7A 		vstr.32	s15, [r4, #40]
 2767 0042 35D0     		beq	.L232
 2768 0044 D6E90A01 		ldrd	r0, [r6, #40]
 2769 0048 FFF7FEFF 		bl	__aeabi_d2f
 2770 004c D4ED0B7A 		vldr.32	s15, [r4, #44]
 2771 0050 07EE100A 		vmov	s14, r0
 2772 0054 77EE877A 		vadd.f32	s15, s15, s14
 2773 0058 062D     		cmp	r5, #6
 2774 005a C4ED0B7A 		vstr.32	s15, [r4, #44]
 2775 005e 27D0     		beq	.L232
 2776 0060 D6E90C01 		ldrd	r0, [r6, #48]
 2777 0064 FFF7FEFF 		bl	__aeabi_d2f
 2778 0068 D4ED067A 		vldr.32	s15, [r4, #24]
 2779 006c 07EE100A 		vmov	s14, r0
 2780 0070 77EE877A 		vadd.f32	s15, s15, s14
 2781 0074 072D     		cmp	r5, #7
 2782 0076 C4ED067A 		vstr.32	s15, [r4, #24]
 2783 007a 19D0     		beq	.L232
 2784 007c D6E90E01 		ldrd	r0, [r6, #56]
 2785 0080 FFF7FEFF 		bl	__aeabi_d2f
 2786 0084 D4ED097A 		vldr.32	s15, [r4, #36]
 2787 0088 07EE100A 		vmov	s14, r0
 2788 008c 77EE877A 		vadd.f32	s15, s15, s14
 2789 0090 082D     		cmp	r5, #8
 2790 0092 C4ED097A 		vstr.32	s15, [r4, #36]
 2791 0096 0BD0     		beq	.L232
 2792 0098 D6E91001 		ldrd	r0, [r6, #64]
 2793 009c FFF7FEFF 		bl	__aeabi_d2f
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 50


 2794 00a0 D4ED0C7A 		vldr.32	s15, [r4, #48]
 2795 00a4 07EE100A 		vmov	s14, r0
 2796 00a8 77EE877A 		vadd.f32	s15, s15, s14
 2797 00ac C4ED0C7A 		vstr.32	s15, [r4, #48]
 2798              	.L232:
 2799 00b0 2046     		mov	r0, r4
 2800 00b2 BDE87040 		pop	{r4, r5, r6, lr}
 2801 00b6 FFF7FEBF 		b	_ZN21HangprinterKinematics6RecalcEv
 2802              		.size	_ZN21HangprinterKinematics6AdjustEjPKd, .-_ZN21HangprinterKinematics6AdjustEjPKd
 2803 00ba 00BF     		.section	.text._ZNK21HangprinterKinematics15PrintParametersERK9StringRef,"ax",%progbits
 2804              		.align	1
 2805              		.p2align 2,,3
 2806              		.global	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 2807              		.syntax unified
 2808              		.thumb
 2809              		.thumb_func
 2810              		.fpu fpv4-sp-d16
 2811              		.type	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef, %function
 2812              	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef:
 2813              		@ args = 0, pretend = 0, frame = 0
 2814              		@ frame_needed = 0, uses_anonymous_args = 0
 2815 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2816 0002 0446     		mov	r4, r0
 2817 0004 91B0     		sub	sp, sp, #68
 2818 0006 0069     		ldr	r0, [r0, #16]	@ float
 2819 0008 0D46     		mov	r5, r1
 2820 000a FFF7FEFF 		bl	__aeabi_f2d
 2821 000e 0646     		mov	r6, r0
 2822 0010 206B     		ldr	r0, [r4, #48]	@ float
 2823 0012 0F46     		mov	r7, r1
 2824 0014 FFF7FEFF 		bl	__aeabi_f2d
 2825 0018 CDE90E01 		strd	r0, [sp, #56]
 2826 001c E06A     		ldr	r0, [r4, #44]	@ float
 2827 001e FFF7FEFF 		bl	__aeabi_f2d
 2828 0022 CDE90C01 		strd	r0, [sp, #48]
 2829 0026 A06A     		ldr	r0, [r4, #40]	@ float
 2830 0028 FFF7FEFF 		bl	__aeabi_f2d
 2831 002c CDE90A01 		strd	r0, [sp, #40]
 2832 0030 606A     		ldr	r0, [r4, #36]	@ float
 2833 0032 FFF7FEFF 		bl	__aeabi_f2d
 2834 0036 CDE90801 		strd	r0, [sp, #32]
 2835 003a 206A     		ldr	r0, [r4, #32]	@ float
 2836 003c FFF7FEFF 		bl	__aeabi_f2d
 2837 0040 CDE90601 		strd	r0, [sp, #24]
 2838 0044 E069     		ldr	r0, [r4, #28]	@ float
 2839 0046 FFF7FEFF 		bl	__aeabi_f2d
 2840 004a CDE90401 		strd	r0, [sp, #16]
 2841 004e A069     		ldr	r0, [r4, #24]	@ float
 2842 0050 FFF7FEFF 		bl	__aeabi_f2d
 2843 0054 CDE90201 		strd	r0, [sp, #8]
 2844 0058 6069     		ldr	r0, [r4, #20]	@ float
 2845 005a FFF7FEFF 		bl	__aeabi_f2d
 2846 005e 3246     		mov	r2, r6
 2847 0060 CDE90001 		strd	r0, [sp]
 2848 0064 3B46     		mov	r3, r7
 2849 0066 2846     		mov	r0, r5
 2850 0068 0249     		ldr	r1, .L252
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 51


 2851 006a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2852 006e 11B0     		add	sp, sp, #68
 2853              		@ sp needed
 2854 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 2855              	.L253:
 2856 0072 00BF     		.align	2
 2857              	.L252:
 2858 0074 00000000 		.word	.LC27
 2859              		.size	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef, .-_ZNK21HangprinterKinematics15Pr
 2860              		.section	.text._ZN6StringILj200EE6printfEPKcz,"axG",%progbits,_ZN6StringILj200EE6printfEPKcz,comda
 2861              		.align	1
 2862              		.p2align 2,,3
 2863              		.weak	_ZN6StringILj200EE6printfEPKcz
 2864              		.syntax unified
 2865              		.thumb
 2866              		.thumb_func
 2867              		.fpu fpv4-sp-d16
 2868              		.type	_ZN6StringILj200EE6printfEPKcz, %function
 2869              	_ZN6StringILj200EE6printfEPKcz:
 2870              		@ args = 4, pretend = 12, frame = 16
 2871              		@ frame_needed = 0, uses_anonymous_args = 1
 2872 0000 0EB4     		push	{r1, r2, r3}
 2873 0002 00B5     		push	{lr}
 2874 0004 84B0     		sub	sp, sp, #16
 2875 0006 05AA     		add	r2, sp, #20
 2876 0008 0290     		str	r0, [sp, #8]
 2877 000a 52F8041B 		ldr	r1, [r2], #4
 2878 000e 0192     		str	r2, [sp, #4]
 2879 0010 C923     		movs	r3, #201
 2880 0012 02A8     		add	r0, sp, #8
 2881 0014 0393     		str	r3, [sp, #12]
 2882 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 2883 001a 04B0     		add	sp, sp, #16
 2884              		@ sp needed
 2885 001c 5DF804EB 		ldr	lr, [sp], #4
 2886 0020 03B0     		add	sp, sp, #12
 2887 0022 7047     		bx	lr
 2888              		.size	_ZN6StringILj200EE6printfEPKcz, .-_ZN6StringILj200EE6printfEPKcz
 2889              		.section	.text._ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore,"ax",%progbits
 2890              		.align	1
 2891              		.p2align 2,,3
 2892              		.global	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore
 2893              		.syntax unified
 2894              		.thumb
 2895              		.thumb_func
 2896              		.fpu fpv4-sp-d16
 2897              		.type	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore, %function
 2898              	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore:
 2899              		@ args = 0, pretend = 0, frame = 208
 2900              		@ frame_needed = 0, uses_anonymous_args = 0
 2901 0000 2DE97043 		push	{r4, r5, r6, r8, r9, lr}
 2902 0004 0D46     		mov	r5, r1
 2903 0006 D2B0     		sub	sp, sp, #328
 2904 0008 0446     		mov	r4, r0
 2905 000a 3349     		ldr	r1, .L262
 2906 000c 2846     		mov	r0, r5
 2907 000e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 52


 2908 0012 0028     		cmp	r0, #0
 2909 0014 5DD0     		beq	.L257
 2910 0016 52AE     		add	r6, sp, #328
 2911 0018 0023     		movs	r3, #0
 2912 001a 2069     		ldr	r0, [r4, #16]	@ float
 2913 001c 06F8CC3D 		strb	r3, [r6, #-204]!
 2914 0020 FFF7FEFF 		bl	__aeabi_f2d
 2915 0024 8046     		mov	r8, r0
 2916 0026 606D     		ldr	r0, [r4, #84]	@ float
 2917 0028 8946     		mov	r9, r1
 2918 002a FFF7FEFF 		bl	__aeabi_f2d
 2919 002e CDE91C01 		strd	r0, [sp, #112]
 2920 0032 206D     		ldr	r0, [r4, #80]	@ float
 2921 0034 FFF7FEFF 		bl	__aeabi_f2d
 2922 0038 CDE91A01 		strd	r0, [sp, #104]
 2923 003c E06C     		ldr	r0, [r4, #76]	@ float
 2924 003e FFF7FEFF 		bl	__aeabi_f2d
 2925 0042 CDE91801 		strd	r0, [sp, #96]
 2926 0046 A06C     		ldr	r0, [r4, #72]	@ float
 2927 0048 FFF7FEFF 		bl	__aeabi_f2d
 2928 004c CDE91601 		strd	r0, [sp, #88]
 2929 0050 206C     		ldr	r0, [r4, #64]	@ float
 2930 0052 FFF7FEFF 		bl	__aeabi_f2d
 2931 0056 CDE91401 		strd	r0, [sp, #80]
 2932 005a E06B     		ldr	r0, [r4, #60]	@ float
 2933 005c FFF7FEFF 		bl	__aeabi_f2d
 2934 0060 CDE91201 		strd	r0, [sp, #72]
 2935 0064 606B     		ldr	r0, [r4, #52]	@ float
 2936 0066 FFF7FEFF 		bl	__aeabi_f2d
 2937 006a CDE91001 		strd	r0, [sp, #64]
 2938 006e 206B     		ldr	r0, [r4, #48]	@ float
 2939 0070 FFF7FEFF 		bl	__aeabi_f2d
 2940 0074 CDE90E01 		strd	r0, [sp, #56]
 2941 0078 E06A     		ldr	r0, [r4, #44]	@ float
 2942 007a FFF7FEFF 		bl	__aeabi_f2d
 2943 007e CDE90C01 		strd	r0, [sp, #48]
 2944 0082 A06A     		ldr	r0, [r4, #40]	@ float
 2945 0084 FFF7FEFF 		bl	__aeabi_f2d
 2946 0088 CDE90A01 		strd	r0, [sp, #40]
 2947 008c 606A     		ldr	r0, [r4, #36]	@ float
 2948 008e FFF7FEFF 		bl	__aeabi_f2d
 2949 0092 CDE90801 		strd	r0, [sp, #32]
 2950 0096 206A     		ldr	r0, [r4, #32]	@ float
 2951 0098 FFF7FEFF 		bl	__aeabi_f2d
 2952 009c CDE90601 		strd	r0, [sp, #24]
 2953 00a0 E069     		ldr	r0, [r4, #28]	@ float
 2954 00a2 FFF7FEFF 		bl	__aeabi_f2d
 2955 00a6 CDE90401 		strd	r0, [sp, #16]
 2956 00aa A069     		ldr	r0, [r4, #24]	@ float
 2957 00ac FFF7FEFF 		bl	__aeabi_f2d
 2958 00b0 CDE90201 		strd	r0, [sp, #8]
 2959 00b4 6069     		ldr	r0, [r4, #20]	@ float
 2960 00b6 FFF7FEFF 		bl	__aeabi_f2d
 2961 00ba 4246     		mov	r2, r8
 2962 00bc CDE90001 		strd	r0, [sp]
 2963 00c0 4B46     		mov	r3, r9
 2964 00c2 0649     		ldr	r1, .L262+4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 53


 2965 00c4 3046     		mov	r0, r6
 2966 00c6 FFF7FEFF 		bl	_ZN6StringILj200EE6printfEPKcz
 2967 00ca 3146     		mov	r1, r6
 2968 00cc 2846     		mov	r0, r5
 2969 00ce FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 2970              	.L257:
 2971 00d2 52B0     		add	sp, sp, #328
 2972              		@ sp needed
 2973 00d4 BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 2974              	.L263:
 2975              		.align	2
 2976              	.L262:
 2977 00d8 00000000 		.word	.LC28
 2978 00dc 1C000000 		.word	.LC29
 2979              		.size	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK21HangprinterKine
 2980              		.global	__aeabi_dmul
 2981              		.section	.text._ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj,"axG",%progbits,_ZN11FixedMatrixIdLj9
 2982              		.align	1
 2983              		.p2align 2,,3
 2984              		.weak	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 2985              		.syntax unified
 2986              		.thumb
 2987              		.thumb_func
 2988              		.fpu fpv4-sp-d16
 2989              		.type	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, %function
 2990              	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj:
 2991              		@ args = 0, pretend = 0, frame = 64
 2992              		@ frame_needed = 0, uses_anonymous_args = 0
 2993 0000 002A     		cmp	r2, #0
 2994 0002 00F02082 		beq	.L328
 2995 0006 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2996 000a 2DED088B 		vpush.64	{d8, d9, d10, d11}
 2997 000e 91B0     		sub	sp, sp, #68
 2998 0010 AF4E     		ldr	r6, .L345+8
 2999 0012 0092     		str	r2, [sp]
 3000 0014 0246     		mov	r2, r0
 3001 0016 0F91     		str	r1, [sp, #60]
 3002 0018 52F8083B 		ldr	r3, [r2], #8
 3003 001c 0D92     		str	r2, [sp, #52]
 3004 001e 9F68     		ldr	r7, [r3, #8]
 3005 0020 0023     		movs	r3, #0
 3006 0022 BB46     		mov	fp, r7
 3007 0024 0A93     		str	r3, [sp, #40]
 3008 0026 CDE90B33 		strd	r3, r3, [sp, #44]
 3009 002a 0493     		str	r3, [sp, #16]
 3010 002c B345     		cmp	fp, r6
 3011 002e 00F15803 		add	r3, r0, #88
 3012 0032 9FEDA5BB 		vldr.64	d11, .L345
 3013 0036 0E93     		str	r3, [sp, #56]
 3014 0038 8246     		mov	r10, r0
 3015 003a 40F09281 		bne	.L266
 3016              	.L342:
 3017 003e 0D9B     		ldr	r3, [sp, #52]
 3018 0040 0A9A     		ldr	r2, [sp, #40]
 3019 0042 9818     		adds	r0, r3, r2
 3020              	.L267:
 3021 0044 D0E90001 		ldrd	r0, [r0]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 54


 3022 0048 FFF7FEFF 		bl	__aeabi_d2f
 3023 004c 049B     		ldr	r3, [sp, #16]
 3024 004e 0099     		ldr	r1, [sp]
 3025 0050 0133     		adds	r3, r3, #1
 3026 0052 07EE900A 		vmov	s15, r0
 3027 0056 9942     		cmp	r1, r3
 3028 0058 0693     		str	r3, [sp, #24]
 3029 005a B0EEE78A 		vabs.f32	s16, s15
 3030 005e 40F29680 		bls	.L268
 3031 0062 CB1A     		subs	r3, r1, r3
 3032 0064 0193     		str	r3, [sp, #4]
 3033 0066 0A9A     		ldr	r2, [sp, #40]
 3034 0068 0E9B     		ldr	r3, [sp, #56]
 3035 006a 1344     		add	r3, r3, r2
 3036 006c 6FF04F07 		mvn	r7, #79
 3037 0070 0025     		movs	r5, #0
 3038 0072 0293     		str	r3, [sp, #8]
 3039 0074 5C46     		mov	r4, fp
 3040 0076 06E0     		b	.L282
 3041              	.L271:
 3042 0078 019B     		ldr	r3, [sp, #4]
 3043 007a 0135     		adds	r5, r5, #1
 3044 007c AB42     		cmp	r3, r5
 3045 007e A7F15007 		sub	r7, r7, #80
 3046 0082 00F08380 		beq	.L331
 3047              	.L282:
 3048 0086 069B     		ldr	r3, [sp, #24]
 3049 0088 B442     		cmp	r4, r6
 3050 008a 03EB0509 		add	r9, r3, r5
 3051 008e 6AD1     		bne	.L269
 3052 0090 029B     		ldr	r3, [sp, #8]
 3053 0092 05EB8500 		add	r0, r5, r5, lsl #2
 3054 0096 03EB0010 		add	r0, r3, r0, lsl #4
 3055              	.L270:
 3056 009a D0E90001 		ldrd	r0, [r0]
 3057 009e FFF7FEFF 		bl	__aeabi_d2f
 3058 00a2 07EE900A 		vmov	s15, r0
 3059 00a6 B0EEE7AA 		vabs.f32	s20, s15
 3060 00aa B4EEC8AA 		vcmpe.f32	s20, s16
 3061 00ae F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3062 00b2 E1DD     		ble	.L271
 3063 00b4 049B     		ldr	r3, [sp, #16]
 3064 00b6 4B45     		cmp	r3, r9
 3065 00b8 00F07C81 		beq	.L317
 3066 00bc 0B9A     		ldr	r2, [sp, #44]
 3067 00be 092A     		cmp	r2, #9
 3068 00c0 00F27881 		bhi	.L317
 3069 00c4 029A     		ldr	r2, [sp, #8]
 3070 00c6 05EB8508 		add	r8, r5, r5, lsl #2
 3071 00ca 9B46     		mov	fp, r3
 3072 00cc 2B46     		mov	r3, r5
 3073 00ce 02EB0818 		add	r8, r2, r8, lsl #4
 3074 00d2 4D46     		mov	r5, r9
 3075 00d4 B946     		mov	r9, r7
 3076 00d6 1F46     		mov	r7, r3
 3077 00d8 1AE0     		b	.L281
 3078              	.L333:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 55


 3079 00da 08EB0900 		add	r0, r8, r9
 3080 00de B442     		cmp	r4, r6
 3081 00e0 90ED008B 		vldr.64	d8, [r0]
 3082 00e4 21D1     		bne	.L275
 3083              	.L334:
 3084 00e6 4046     		mov	r0, r8
 3085 00e8 B442     		cmp	r4, r6
 3086 00ea 90ED009B 		vldr.64	d9, [r0]
 3087 00ee 27D1     		bne	.L277
 3088              	.L335:
 3089 00f0 08EB0900 		add	r0, r8, r9
 3090 00f4 B442     		cmp	r4, r6
 3091 00f6 80ED009B 		vstr.64	d9, [r0]
 3092 00fa 2CD1     		bne	.L279
 3093              	.L336:
 3094 00fc 4046     		mov	r0, r8
 3095              	.L280:
 3096 00fe 0BF1010B 		add	fp, fp, #1
 3097 0102 BBF10A0F 		cmp	fp, #10
 3098 0106 80ED008B 		vstr.64	d8, [r0]
 3099 010a 08F10808 		add	r8, r8, #8
 3100 010e 32D0     		beq	.L332
 3101              	.L281:
 3102 0110 B442     		cmp	r4, r6
 3103 0112 E2D0     		beq	.L333
 3104 0114 5A46     		mov	r2, fp
 3105 0116 0499     		ldr	r1, [sp, #16]
 3106 0118 5046     		mov	r0, r10
 3107 011a A047     		blx	r4
 3108 011c DAF80020 		ldr	r2, [r10]
 3109 0120 9468     		ldr	r4, [r2, #8]
 3110 0122 B442     		cmp	r4, r6
 3111 0124 90ED008B 		vldr.64	d8, [r0]
 3112 0128 DDD0     		beq	.L334
 3113              	.L275:
 3114 012a 5A46     		mov	r2, fp
 3115 012c 2946     		mov	r1, r5
 3116 012e 5046     		mov	r0, r10
 3117 0130 A047     		blx	r4
 3118 0132 DAF80020 		ldr	r2, [r10]
 3119 0136 9468     		ldr	r4, [r2, #8]
 3120 0138 B442     		cmp	r4, r6
 3121 013a 90ED009B 		vldr.64	d9, [r0]
 3122 013e D7D0     		beq	.L335
 3123              	.L277:
 3124 0140 5A46     		mov	r2, fp
 3125 0142 0499     		ldr	r1, [sp, #16]
 3126 0144 5046     		mov	r0, r10
 3127 0146 A047     		blx	r4
 3128 0148 DAF80020 		ldr	r2, [r10]
 3129 014c 9468     		ldr	r4, [r2, #8]
 3130 014e B442     		cmp	r4, r6
 3131 0150 80ED009B 		vstr.64	d9, [r0]
 3132 0154 D2D0     		beq	.L336
 3133              	.L279:
 3134 0156 5A46     		mov	r2, fp
 3135 0158 2946     		mov	r1, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 56


 3136 015a 5046     		mov	r0, r10
 3137 015c A047     		blx	r4
 3138 015e DAF80020 		ldr	r2, [r10]
 3139 0162 9468     		ldr	r4, [r2, #8]
 3140 0164 CBE7     		b	.L280
 3141              	.L269:
 3142 0166 049A     		ldr	r2, [sp, #16]
 3143 0168 4946     		mov	r1, r9
 3144 016a 5046     		mov	r0, r10
 3145 016c A047     		blx	r4
 3146 016e DAF80030 		ldr	r3, [r10]
 3147 0172 9C68     		ldr	r4, [r3, #8]
 3148 0174 91E7     		b	.L270
 3149              	.L332:
 3150 0176 3D46     		mov	r5, r7
 3151 0178 019B     		ldr	r3, [sp, #4]
 3152 017a 0135     		adds	r5, r5, #1
 3153 017c 4F46     		mov	r7, r9
 3154 017e AB42     		cmp	r3, r5
 3155 0180 B0EE4A8A 		vmov.f32	s16, s20
 3156 0184 A7F15007 		sub	r7, r7, #80
 3157 0188 7FF47DAF 		bne	.L282
 3158              	.L331:
 3159 018c A346     		mov	fp, r4
 3160              	.L268:
 3161 018e B345     		cmp	fp, r6
 3162 0190 40F01381 		bne	.L283
 3163 0194 0D9B     		ldr	r3, [sp, #52]
 3164 0196 0A9A     		ldr	r2, [sp, #40]
 3165 0198 9818     		adds	r0, r3, r2
 3166              	.L284:
 3167 019a 90ED007B 		vldr.64	d7, [r0]
 3168 019e 0B9B     		ldr	r3, [sp, #44]
 3169 01a0 8DED087B 		vstr.64	d7, [sp, #32]
 3170 01a4 002B     		cmp	r3, #0
 3171 01a6 61D0     		beq	.L298
 3172 01a8 069B     		ldr	r3, [sp, #24]
 3173 01aa 0AEBC303 		add	r3, r10, r3, lsl #3
 3174 01ae 0593     		str	r3, [sp, #20]
 3175 01b0 0C9B     		ldr	r3, [sp, #48]
 3176 01b2 DB00     		lsls	r3, r3, #3
 3177 01b4 0193     		str	r3, [sp, #4]
 3178 01b6 0023     		movs	r3, #0
 3179 01b8 0793     		str	r3, [sp, #28]
 3180 01ba 5F46     		mov	r7, fp
 3181              	.L299:
 3182 01bc B742     		cmp	r7, r6
 3183 01be 40F0F180 		bne	.L288
 3184 01c2 0598     		ldr	r0, [sp, #20]
 3185              	.L289:
 3186 01c4 DDE90823 		ldrd	r2, [sp, #32]
 3187 01c8 D0E90001 		ldrd	r0, [r0]
 3188 01cc FFF7FEFF 		bl	__aeabi_ddiv
 3189 01d0 B742     		cmp	r7, r6
 3190 01d2 CDE90201 		strd	r0, [sp, #8]
 3191 01d6 40F0DD80 		bne	.L290
 3192 01da 0598     		ldr	r0, [sp, #20]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 57


 3193              	.L291:
 3194 01dc 009B     		ldr	r3, [sp]
 3195 01de 069D     		ldr	r5, [sp, #24]
 3196 01e0 1A46     		mov	r2, r3
 3197 01e2 AA42     		cmp	r2, r5
 3198 01e4 80ED00BB 		vstr.64	d11, [r0]
 3199 01e8 33D3     		bcc	.L292
 3200 01ea 059B     		ldr	r3, [sp, #20]
 3201 01ec D146     		mov	r9, r10
 3202 01ee 03F10804 		add	r4, r3, #8
 3203 01f2 1AE0     		b	.L297
 3204              	.L338:
 3205 01f4 019B     		ldr	r3, [sp, #4]
 3206 01f6 1819     		adds	r0, r3, r4
 3207              	.L294:
 3208 01f8 D0E90023 		ldrd	r2, [r0]
 3209 01fc DDE90201 		ldrd	r0, [sp, #8]
 3210 0200 FFF7FEFF 		bl	__aeabi_dmul
 3211 0204 B742     		cmp	r7, r6
 3212 0206 8246     		mov	r10, r0
 3213 0208 8B46     		mov	fp, r1
 3214 020a 18D1     		bne	.L295
 3215 020c A046     		mov	r8, r4
 3216              	.L296:
 3217 020e 5B46     		mov	r3, fp
 3218 0210 D8E90001 		ldrd	r0, [r8]
 3219 0214 5246     		mov	r2, r10
 3220 0216 FFF7FEFF 		bl	__aeabi_dsub
 3221 021a 009B     		ldr	r3, [sp]
 3222 021c 0135     		adds	r5, r5, #1
 3223 021e AB42     		cmp	r3, r5
 3224 0220 04F10804 		add	r4, r4, #8
 3225 0224 C8E90001 		strd	r0, [r8]
 3226 0228 12D3     		bcc	.L337
 3227              	.L297:
 3228 022a B742     		cmp	r7, r6
 3229 022c E2D0     		beq	.L338
 3230 022e 2A46     		mov	r2, r5
 3231 0230 0499     		ldr	r1, [sp, #16]
 3232 0232 4846     		mov	r0, r9
 3233 0234 B847     		blx	r7
 3234 0236 D9F80030 		ldr	r3, [r9]
 3235 023a 9F68     		ldr	r7, [r3, #8]
 3236 023c DCE7     		b	.L294
 3237              	.L295:
 3238 023e 2A46     		mov	r2, r5
 3239 0240 0799     		ldr	r1, [sp, #28]
 3240 0242 4846     		mov	r0, r9
 3241 0244 B847     		blx	r7
 3242 0246 D9F80030 		ldr	r3, [r9]
 3243 024a 8046     		mov	r8, r0
 3244 024c 9F68     		ldr	r7, [r3, #8]
 3245 024e DEE7     		b	.L296
 3246              	.L337:
 3247 0250 CA46     		mov	r10, r9
 3248              	.L292:
 3249 0252 059A     		ldr	r2, [sp, #20]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 58


 3250 0254 079B     		ldr	r3, [sp, #28]
 3251 0256 5032     		adds	r2, r2, #80
 3252 0258 0592     		str	r2, [sp, #20]
 3253 025a 019A     		ldr	r2, [sp, #4]
 3254 025c 503A     		subs	r2, r2, #80
 3255 025e 0192     		str	r2, [sp, #4]
 3256 0260 049A     		ldr	r2, [sp, #16]
 3257 0262 0133     		adds	r3, r3, #1
 3258 0264 9342     		cmp	r3, r2
 3259 0266 0793     		str	r3, [sp, #28]
 3260 0268 A8D1     		bne	.L299
 3261 026a BB46     		mov	fp, r7
 3262              	.L298:
 3263 026c 009B     		ldr	r3, [sp]
 3264 026e 069A     		ldr	r2, [sp, #24]
 3265 0270 9342     		cmp	r3, r2
 3266 0272 00F0AB80 		beq	.L339
 3267 0276 0C9B     		ldr	r3, [sp, #48]
 3268 0278 0A9A     		ldr	r2, [sp, #40]
 3269 027a 0A33     		adds	r3, r3, #10
 3270 027c 0C93     		str	r3, [sp, #48]
 3271 027e 0E9B     		ldr	r3, [sp, #56]
 3272 0280 1344     		add	r3, r3, r2
 3273 0282 0593     		str	r3, [sp, #20]
 3274 0284 069B     		ldr	r3, [sp, #24]
 3275 0286 0793     		str	r3, [sp, #28]
 3276 0288 6FF04F03 		mvn	r3, #79
 3277 028c 0193     		str	r3, [sp, #4]
 3278 028e 5F46     		mov	r7, fp
 3279              	.L310:
 3280 0290 B742     		cmp	r7, r6
 3281 0292 6FD1     		bne	.L300
 3282 0294 0598     		ldr	r0, [sp, #20]
 3283              	.L301:
 3284 0296 DDE90823 		ldrd	r2, [sp, #32]
 3285 029a D0E90001 		ldrd	r0, [r0]
 3286 029e FFF7FEFF 		bl	__aeabi_ddiv
 3287 02a2 B742     		cmp	r7, r6
 3288 02a4 CDE90201 		strd	r0, [sp, #8]
 3289 02a8 6CD1     		bne	.L302
 3290 02aa 0598     		ldr	r0, [sp, #20]
 3291              	.L303:
 3292 02ac 009B     		ldr	r3, [sp]
 3293 02ae 069D     		ldr	r5, [sp, #24]
 3294 02b0 1A46     		mov	r2, r3
 3295 02b2 AA42     		cmp	r2, r5
 3296 02b4 80ED00BB 		vstr.64	d11, [r0]
 3297 02b8 3BD3     		bcc	.L304
 3298 02ba 059B     		ldr	r3, [sp, #20]
 3299 02bc D146     		mov	r9, r10
 3300 02be 03F10804 		add	r4, r3, #8
 3301 02c2 22E0     		b	.L309
 3302              	.L346:
 3303 02c4 AFF30080 		.align	3
 3304              	.L345:
 3305 02c8 00000000 		.word	0
 3306 02cc 00000000 		.word	0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 59


 3307 02d0 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 3308              	.L341:
 3309 02d4 019B     		ldr	r3, [sp, #4]
 3310 02d6 1819     		adds	r0, r3, r4
 3311              	.L306:
 3312 02d8 D0E90023 		ldrd	r2, [r0]
 3313 02dc DDE90201 		ldrd	r0, [sp, #8]
 3314 02e0 FFF7FEFF 		bl	__aeabi_dmul
 3315 02e4 B742     		cmp	r7, r6
 3316 02e6 8246     		mov	r10, r0
 3317 02e8 8B46     		mov	fp, r1
 3318 02ea 18D1     		bne	.L307
 3319 02ec A046     		mov	r8, r4
 3320              	.L308:
 3321 02ee 5B46     		mov	r3, fp
 3322 02f0 D8E90001 		ldrd	r0, [r8]
 3323 02f4 5246     		mov	r2, r10
 3324 02f6 FFF7FEFF 		bl	__aeabi_dsub
 3325 02fa 009B     		ldr	r3, [sp]
 3326 02fc 0135     		adds	r5, r5, #1
 3327 02fe AB42     		cmp	r3, r5
 3328 0300 04F10804 		add	r4, r4, #8
 3329 0304 C8E90001 		strd	r0, [r8]
 3330 0308 12D3     		bcc	.L340
 3331              	.L309:
 3332 030a B742     		cmp	r7, r6
 3333 030c E2D0     		beq	.L341
 3334 030e 2A46     		mov	r2, r5
 3335 0310 0499     		ldr	r1, [sp, #16]
 3336 0312 4846     		mov	r0, r9
 3337 0314 B847     		blx	r7
 3338 0316 D9F80030 		ldr	r3, [r9]
 3339 031a 9F68     		ldr	r7, [r3, #8]
 3340 031c DCE7     		b	.L306
 3341              	.L307:
 3342 031e 2A46     		mov	r2, r5
 3343 0320 0799     		ldr	r1, [sp, #28]
 3344 0322 4846     		mov	r0, r9
 3345 0324 B847     		blx	r7
 3346 0326 D9F80030 		ldr	r3, [r9]
 3347 032a 8046     		mov	r8, r0
 3348 032c 9F68     		ldr	r7, [r3, #8]
 3349 032e DEE7     		b	.L308
 3350              	.L340:
 3351 0330 CA46     		mov	r10, r9
 3352              	.L304:
 3353 0332 059A     		ldr	r2, [sp, #20]
 3354 0334 079B     		ldr	r3, [sp, #28]
 3355 0336 5032     		adds	r2, r2, #80
 3356 0338 0592     		str	r2, [sp, #20]
 3357 033a 019A     		ldr	r2, [sp, #4]
 3358 033c 503A     		subs	r2, r2, #80
 3359 033e 0192     		str	r2, [sp, #4]
 3360 0340 009A     		ldr	r2, [sp]
 3361 0342 0133     		adds	r3, r3, #1
 3362 0344 9A42     		cmp	r2, r3
 3363 0346 0793     		str	r3, [sp, #28]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 60


 3364 0348 A2D1     		bne	.L310
 3365 034a 0B9B     		ldr	r3, [sp, #44]
 3366 034c 0133     		adds	r3, r3, #1
 3367 034e 0B93     		str	r3, [sp, #44]
 3368 0350 0A9B     		ldr	r3, [sp, #40]
 3369 0352 BB46     		mov	fp, r7
 3370 0354 5833     		adds	r3, r3, #88
 3371 0356 0A93     		str	r3, [sp, #40]
 3372 0358 B345     		cmp	fp, r6
 3373 035a 069B     		ldr	r3, [sp, #24]
 3374 035c 0493     		str	r3, [sp, #16]
 3375 035e 3FF46EAE 		beq	.L342
 3376              	.L266:
 3377 0362 0499     		ldr	r1, [sp, #16]
 3378 0364 5046     		mov	r0, r10
 3379 0366 0A46     		mov	r2, r1
 3380 0368 D847     		blx	fp
 3381 036a DAF80030 		ldr	r3, [r10]
 3382 036e D3F808B0 		ldr	fp, [r3, #8]
 3383 0372 67E6     		b	.L267
 3384              	.L300:
 3385 0374 049A     		ldr	r2, [sp, #16]
 3386 0376 0799     		ldr	r1, [sp, #28]
 3387 0378 5046     		mov	r0, r10
 3388 037a B847     		blx	r7
 3389 037c DAF80030 		ldr	r3, [r10]
 3390 0380 9F68     		ldr	r7, [r3, #8]
 3391 0382 88E7     		b	.L301
 3392              	.L302:
 3393 0384 049A     		ldr	r2, [sp, #16]
 3394 0386 0799     		ldr	r1, [sp, #28]
 3395 0388 5046     		mov	r0, r10
 3396 038a B847     		blx	r7
 3397 038c DAF80030 		ldr	r3, [r10]
 3398 0390 9F68     		ldr	r7, [r3, #8]
 3399 0392 8BE7     		b	.L303
 3400              	.L290:
 3401 0394 049A     		ldr	r2, [sp, #16]
 3402 0396 0799     		ldr	r1, [sp, #28]
 3403 0398 5046     		mov	r0, r10
 3404 039a B847     		blx	r7
 3405 039c DAF80030 		ldr	r3, [r10]
 3406 03a0 9F68     		ldr	r7, [r3, #8]
 3407 03a2 1BE7     		b	.L291
 3408              	.L288:
 3409 03a4 049A     		ldr	r2, [sp, #16]
 3410 03a6 0799     		ldr	r1, [sp, #28]
 3411 03a8 5046     		mov	r0, r10
 3412 03aa B847     		blx	r7
 3413 03ac DAF80030 		ldr	r3, [r10]
 3414 03b0 9F68     		ldr	r7, [r3, #8]
 3415 03b2 07E7     		b	.L289
 3416              	.L317:
 3417 03b4 B0EE4A8A 		vmov.f32	s16, s20
 3418 03b8 5EE6     		b	.L271
 3419              	.L283:
 3420 03ba 0499     		ldr	r1, [sp, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 61


 3421 03bc 5046     		mov	r0, r10
 3422 03be 0A46     		mov	r2, r1
 3423 03c0 D847     		blx	fp
 3424 03c2 DAF80030 		ldr	r3, [r10]
 3425 03c6 D3F808B0 		ldr	fp, [r3, #8]
 3426 03ca E6E6     		b	.L284
 3427              	.L339:
 3428 03cc 049C     		ldr	r4, [sp, #16]
 3429 03ce 0D9D     		ldr	r5, [sp, #52]
 3430 03d0 DDF83C90 		ldr	r9, [sp, #60]
 3431 03d4 5F46     		mov	r7, fp
 3432 03d6 0234     		adds	r4, r4, #2
 3433 03d8 3B46     		mov	r3, r7
 3434 03da 0AEBC404 		add	r4, r10, r4, lsl #3
 3435 03de 4FF00008 		mov	r8, #0
 3436 03e2 5746     		mov	r7, r10
 3437 03e4 18E0     		b	.L287
 3438              	.L343:
 3439 03e6 2046     		mov	r0, r4
 3440 03e8 B342     		cmp	r3, r6
 3441 03ea D0E900AB 		ldrd	r10, [r0]
 3442 03ee 1FD1     		bne	.L314
 3443              	.L344:
 3444 03f0 2B46     		mov	r3, r5
 3445              	.L315:
 3446 03f2 D3E90023 		ldrd	r2, [r3]
 3447 03f6 5046     		mov	r0, r10
 3448 03f8 5946     		mov	r1, fp
 3449 03fa FFF7FEFF 		bl	__aeabi_ddiv
 3450 03fe 069B     		ldr	r3, [sp, #24]
 3451 0400 08F10108 		add	r8, r8, #1
 3452 0404 4345     		cmp	r3, r8
 3453 0406 05F15805 		add	r5, r5, #88
 3454 040a 04F15004 		add	r4, r4, #80
 3455 040e E9E80201 		strd	r0, [r9], #8
 3456 0412 13D0     		beq	.L264
 3457 0414 3B68     		ldr	r3, [r7]
 3458 0416 9B68     		ldr	r3, [r3, #8]
 3459              	.L287:
 3460 0418 B342     		cmp	r3, r6
 3461 041a E4D0     		beq	.L343
 3462 041c 069A     		ldr	r2, [sp, #24]
 3463 041e 4146     		mov	r1, r8
 3464 0420 3846     		mov	r0, r7
 3465 0422 9847     		blx	r3
 3466 0424 3B68     		ldr	r3, [r7]
 3467 0426 9B68     		ldr	r3, [r3, #8]
 3468 0428 B342     		cmp	r3, r6
 3469 042a D0E900AB 		ldrd	r10, [r0]
 3470 042e DFD0     		beq	.L344
 3471              	.L314:
 3472 0430 4246     		mov	r2, r8
 3473 0432 4146     		mov	r1, r8
 3474 0434 3846     		mov	r0, r7
 3475 0436 9847     		blx	r3
 3476 0438 0346     		mov	r3, r0
 3477 043a DAE7     		b	.L315
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 62


 3478              	.L264:
 3479 043c 11B0     		add	sp, sp, #68
 3480              		@ sp needed
 3481 043e BDEC088B 		vldm	sp!, {d8-d11}
 3482 0442 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3483              	.L328:
 3484 0446 7047     		bx	lr
 3485              		.size	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, .-_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEP
 3486              		.global	__aeabi_dadd
 3487              		.global	__aeabi_ui2d
 3488              		.section	.text._ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,
 3489              		.align	1
 3490              		.p2align 2,,3
 3491              		.global	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 3492              		.syntax unified
 3493              		.thumb
 3494              		.thumb_func
 3495              		.fpu fpv4-sp-d16
 3496              		.type	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %functio
 3497              	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
 3498              		@ args = 0, pretend = 0, frame = 4544
 3499              		@ frame_needed = 0, uses_anonymous_args = 0
 3500 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3501 0004 2DED048B 		vpush.64	{d8, d9}
 3502 0008 ADF58E5D 		sub	sp, sp, #4544
 3503 000c 85B0     		sub	sp, sp, #20
 3504 000e 8346     		mov	fp, r0
 3505 0010 1046     		mov	r0, r2
 3506 0012 0C46     		mov	r4, r1
 3507 0014 1192     		str	r2, [sp, #68]
 3508 0016 1A91     		str	r1, [sp, #104]
 3509 0018 2093     		str	r3, [sp, #128]
 3510 001a FFF7FEFF 		bl	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 3511 001e 092C     		cmp	r4, #9
 3512 0020 0690     		str	r0, [sp, #24]
 3513 0022 0ED9     		bls	.L434
 3514              	.L348:
 3515 0024 1A9A     		ldr	r2, [sp, #104]
 3516 0026 2098     		ldr	r0, [sp, #128]
 3517 0028 9149     		ldr	r1, .L444+8
 3518 002a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3519 002e 0123     		movs	r3, #1
 3520 0030 1D93     		str	r3, [sp, #116]
 3521              	.L431:
 3522 0032 1D98     		ldr	r0, [sp, #116]
 3523 0034 0DF58E5D 		add	sp, sp, #4544
 3524 0038 05B0     		add	sp, sp, #20
 3525              		@ sp needed
 3526 003a BDEC048B 		vldm	sp!, {d8-d9}
 3527 003e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3528              	.L434:
 3529 0042 4FF41273 		mov	r3, #584
 3530 0046 E340     		lsrs	r3, r3, r4
 3531 0048 DB43     		mvns	r3, r3
 3532 004a 13F00103 		ands	r3, r3, #1
 3533 004e 1D93     		str	r3, [sp, #116]
 3534 0050 E8D1     		bne	.L348
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 63


 3535 0052 884B     		ldr	r3, .L444+12
 3536 0054 D3F80831 		ldr	r3, [r3, #264]
 3537 0058 D806     		lsls	r0, r3, #27
 3538 005a 00F11C83 		bmi	.L432
 3539 005e 0DF6C803 		addw	r3, sp, #2248
 3540 0062 1693     		str	r3, [sp, #88]
 3541              	.L351:
 3542 0064 9FED807B 		vldr.64	d7, .L444
 3543 0068 069B     		ldr	r3, [sp, #24]
 3544 006a 8DED127B 		vstr.64	d7, [sp, #72]
 3545 006e 002B     		cmp	r3, #0
 3546 0070 00F09880 		beq	.L357
 3547 0074 119B     		ldr	r3, [sp, #68]
 3548 0076 DFED808A 		vldr.32	s17, .L444+16
 3549 007a 169C     		ldr	r4, [sp, #88]
 3550 007c 03F28718 		addw	r8, r3, #391
 3551 0080 069B     		ldr	r3, [sp, #24]
 3552 0082 0DF1E809 		add	r9, sp, #232
 3553 0086 08EB030A 		add	r10, r8, r3
 3554 008a 0DF5B866 		add	r6, sp, #1472
 3555 008e 0027     		movs	r7, #0
 3556              	.L358:
 3557 0090 9FED757B 		vldr.64	d7, .L444
 3558 0094 18F8013F 		ldrb	r3, [r8, #1]!	@ zero_extendqisi2
 3559 0098 764A     		ldr	r2, .L444+12
 3560 009a C3F38003 		ubfx	r3, r3, #2, #1
 3561 009e D068     		ldr	r0, [r2, #12]
 3562 00a0 0093     		str	r3, [sp]
 3563 00a2 3946     		mov	r1, r7
 3564 00a4 A9EC027B 		vstmia.64	r9!, {d7}
 3565 00a8 0DF6CC03 		addw	r3, sp, #2252
 3566 00ac 2246     		mov	r2, r4
 3567 00ae FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 3568 00b2 10EE100A 		vmov	r0, s0
 3569 00b6 FFF7FEFF 		bl	__aeabi_f2d
 3570 00ba 94ED018A 		vldr.32	s16, [r4, #4]
 3571 00be DBED057A 		vldr.32	s15, [fp, #20]
 3572 00c2 DBED066A 		vldr.32	s13, [fp, #24]
 3573 00c6 94ED009A 		vldr.32	s18, [r4]
 3574 00ca 9BED047A 		vldr.32	s14, [fp, #16]
 3575 00ce C4ED028A 		vstr.32	s17, [r4, #8]
 3576 00d2 78EE677A 		vsub.f32	s15, s16, s15
 3577 00d6 39EE477A 		vsub.f32	s14, s18, s14
 3578 00da 27EEA70A 		vmul.f32	s0, s15, s15
 3579 00de CDE90401 		strd	r0, [sp, #16]
 3580 00e2 A6EEA60A 		vfma.f32	s0, s13, s13
 3581 00e6 0137     		adds	r7, r7, #1
 3582 00e8 A7EE070A 		vfma.f32	s0, s14, s14
 3583 00ec B5EE400A 		vcmp.f32	s0, #0
 3584 00f0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3585 00f4 F1EEC09A 		vsqrt.f32	s19, s0
 3586 00f8 00F1E382 		bmi	.L435
 3587              	.L354:
 3588 00fc 19EE900A 		vmov	r0, s19
 3589 0100 FFF7FEFF 		bl	__aeabi_f2d
 3590 0104 DBED087A 		vldr.32	s15, [fp, #32]
 3591 0108 DBED096A 		vldr.32	s13, [fp, #36]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 64


 3592 010c 9BED077A 		vldr.32	s14, [fp, #28]
 3593 0110 78EE677A 		vsub.f32	s15, s16, s15
 3594 0114 39EE477A 		vsub.f32	s14, s18, s14
 3595 0118 27EEA70A 		vmul.f32	s0, s15, s15
 3596 011c C6E90401 		strd	r0, [r6, #16]
 3597 0120 A6EEA60A 		vfma.f32	s0, s13, s13
 3598 0124 A7EE070A 		vfma.f32	s0, s14, s14
 3599 0128 B5EE400A 		vcmp.f32	s0, #0
 3600 012c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3601 0130 F1EEC09A 		vsqrt.f32	s19, s0
 3602 0134 00F1CC82 		bmi	.L436
 3603              	.L355:
 3604 0138 19EE900A 		vmov	r0, s19
 3605 013c FFF7FEFF 		bl	__aeabi_f2d
 3606 0140 DBED0B7A 		vldr.32	s15, [fp, #44]
 3607 0144 DBED0C6A 		vldr.32	s13, [fp, #48]
 3608 0148 9BED0A7A 		vldr.32	s14, [fp, #40]
 3609 014c 38EE678A 		vsub.f32	s16, s16, s15
 3610 0150 39EE479A 		vsub.f32	s18, s18, s14
 3611 0154 28EE080A 		vmul.f32	s0, s16, s16
 3612 0158 C6E90601 		strd	r0, [r6, #24]
 3613 015c A6EEA60A 		vfma.f32	s0, s13, s13
 3614 0160 A9EE090A 		vfma.f32	s0, s18, s18
 3615 0164 B5EE400A 		vcmp.f32	s0, #0
 3616 0168 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3617 016c B1EEC08A 		vsqrt.f32	s16, s0
 3618 0170 00F1B582 		bmi	.L437
 3619              	.L356:
 3620 0174 1836     		adds	r6, r6, #24
 3621 0176 18EE100A 		vmov	r0, s16
 3622 017a FFF7FEFF 		bl	__aeabi_f2d
 3623 017e DDE90423 		ldrd	r2, [sp, #16]
 3624 0182 C6E90201 		strd	r0, [r6, #8]
 3625 0186 1046     		mov	r0, r2
 3626 0188 1946     		mov	r1, r3
 3627 018a FFF7FEFF 		bl	__aeabi_dmul
 3628 018e 0246     		mov	r2, r0
 3629 0190 0B46     		mov	r3, r1
 3630 0192 DDE91201 		ldrd	r0, [sp, #72]
 3631 0196 FFF7FEFF 		bl	__aeabi_dadd
 3632 019a D045     		cmp	r8, r10
 3633 019c CDE91201 		strd	r0, [sp, #72]
 3634 01a0 7FF476AF 		bne	.L358
 3635              	.L357:
 3636 01a4 1A98     		ldr	r0, [sp, #104]
 3637 01a6 069C     		ldr	r4, [sp, #24]
 3638 01a8 119D     		ldr	r5, [sp, #68]
 3639 01aa CDF834B0 		str	fp, [sp, #52]
 3640 01ae C300     		lsls	r3, r0, #3
 3641 01b0 BAAE     		add	r6, sp, #744
 3642 01b2 1E44     		add	r6, r6, r3
 3643 01b4 1C96     		str	r6, [sp, #112]
 3644 01b6 169E     		ldr	r6, [sp, #88]
 3645 01b8 1E44     		add	r6, r6, r3
 3646 01ba 1596     		str	r6, [sp, #84]
 3647 01bc 0DF50D66 		add	r6, sp, #2256
 3648 01c0 9E19     		adds	r6, r3, r6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 65


 3649 01c2 0796     		str	r6, [sp, #28]
 3650 01c4 28AE     		add	r6, sp, #160
 3651 01c6 F318     		adds	r3, r6, r3
 3652 01c8 C0EB4071 		rsb	r1, r0, r0, lsl #29
 3653 01cc 04EBC402 		add	r2, r4, r4, lsl #3
 3654 01d0 2193     		str	r3, [sp, #132]
 3655 01d2 CB00     		lsls	r3, r1, #3
 3656 01d4 05F58475 		add	r5, r5, #264
 3657 01d8 1E93     		str	r3, [sp, #120]
 3658 01da D300     		lsls	r3, r2, #3
 3659 01dc 1F93     		str	r3, [sp, #124]
 3660 01de 05EB8403 		add	r3, r5, r4, lsl #2
 3661 01e2 1093     		str	r3, [sp, #64]
 3662 01e4 0223     		movs	r3, #2
 3663 01e6 1B95     		str	r5, [sp, #108]
 3664 01e8 1893     		str	r3, [sp, #96]
 3665 01ea 8346     		mov	fp, r0
 3666              	.L353:
 3667 01ec 169B     		ldr	r3, [sp, #88]
 3668 01ee 1A46     		mov	r2, r3
 3669 01f0 224B     		ldr	r3, .L444+20
 3670 01f2 1360     		str	r3, [r2]
 3671 01f4 069B     		ldr	r3, [sp, #24]
 3672 01f6 002B     		cmp	r3, #0
 3673 01f8 49D0     		beq	.L359
 3674 01fa 0024     		movs	r4, #0
 3675 01fc DDF83480 		ldr	r8, [sp, #52]
 3676 0200 A146     		mov	r9, r4
 3677 0202 0DF5B865 		add	r5, sp, #1472
 3678 0206 9A46     		mov	r10, r3
 3679 0208 5C46     		mov	r4, fp
 3680              	.L365:
 3681 020a 002C     		cmp	r4, #0
 3682 020c 38D0     		beq	.L360
 3683 020e D5E90401 		ldrd	r0, [r5, #16]
 3684 0212 FFF7FEFF 		bl	__aeabi_d2f
 3685 0216 09EE100A 		vmov	s18, r0
 3686 021a D5E90601 		ldrd	r0, [r5, #24]
 3687 021e FFF7FEFF 		bl	__aeabi_d2f
 3688 0222 08EE900A 		vmov	s17, r0
 3689 0226 D5E90801 		ldrd	r0, [r5, #32]
 3690 022a FFF7FEFF 		bl	__aeabi_d2f
 3691 022e 09EBC907 		add	r7, r9, r9, lsl #3
 3692 0232 0DF50D63 		add	r3, sp, #2256
 3693 0236 08EE100A 		vmov	s16, r0
 3694 023a 03EBC707 		add	r7, r3, r7, lsl #3
 3695 023e 0021     		movs	r1, #0
 3696              	.L361:
 3697 0240 082C     		cmp	r4, #8
 3698 0242 B0EE481A 		vmov.f32	s2, s16
 3699 0246 F0EE680A 		vmov.f32	s1, s17
 3700 024a B0EE490A 		vmov.f32	s0, s18
 3701 024e 4046     		mov	r0, r8
 3702 0250 01F10106 		add	r6, r1, #1
 3703 0254 00F06881 		beq	.L438
 3704              	.L362:
 3705 0258 FFF7FEFF 		bl	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 66


 3706 025c B442     		cmp	r4, r6
 3707 025e A7EC020B 		vstmia.64	r7!, {d0}
 3708 0262 0DD0     		beq	.L360
 3709 0264 3146     		mov	r1, r6
 3710 0266 EBE7     		b	.L361
 3711              	.L445:
 3712              		.align	3
 3713              	.L444:
 3714 0268 00000000 		.word	0
 3715 026c 00000000 		.word	0
 3716 0270 00000000 		.word	.LC30
 3717 0274 00000000 		.word	reprap
 3718 0278 00000000 		.word	0
 3719 027c 08000000 		.word	_ZTV11FixedMatrixIdLj32ELj9EE+8
 3720              	.L360:
 3721 0280 09F10109 		add	r9, r9, #1
 3722 0284 CA45     		cmp	r10, r9
 3723 0286 05F11805 		add	r5, r5, #24
 3724 028a BED1     		bne	.L365
 3725 028c A346     		mov	fp, r4
 3726              	.L359:
 3727 028e AA4B     		ldr	r3, .L446+8
 3728 0290 D3F80831 		ldr	r3, [r3, #264]
 3729 0294 13F01003 		ands	r3, r3, #16
 3730 0298 1793     		str	r3, [sp, #92]
 3731 029a 40F09881 		bne	.L439
 3732 029e A74B     		ldr	r3, .L446+12
 3733 02a0 BA93     		str	r3, [sp, #744]
 3734 02a2 BBF1000F 		cmp	fp, #0
 3735 02a6 00F09C80 		beq	.L374
 3736              	.L388:
 3737 02aa 119B     		ldr	r3, [sp, #68]
 3738 02ac D3F80801 		ldr	r0, [r3, #264]	@ float
 3739 02b0 FFF7FEFF 		bl	__aeabi_f2d
 3740 02b4 DDE93A23 		ldrd	r2, [sp, #232]
 3741 02b8 FFF7FEFF 		bl	__aeabi_dadd
 3742 02bc 1E9A     		ldr	r2, [sp, #120]
 3743 02be 0E90     		str	r0, [sp, #56]
 3744 02c0 01F10043 		add	r3, r1, #-2147483648
 3745 02c4 0832     		adds	r2, r2, #8
 3746 02c6 0F93     		str	r3, [sp, #60]
 3747 02c8 1492     		str	r2, [sp, #80]
 3748 02ca 1C9B     		ldr	r3, [sp, #112]
 3749 02cc 1F9A     		ldr	r2, [sp, #124]
 3750 02ce 0993     		str	r3, [sp, #36]
 3751 02d0 169B     		ldr	r3, [sp, #88]
 3752 02d2 CDF864B0 		str	fp, [sp, #100]
 3753 02d6 583A     		subs	r2, r2, #88
 3754 02d8 0892     		str	r2, [sp, #32]
 3755 02da 9946     		mov	r9, r3
 3756              	.L373:
 3757 02dc 99ED027B 		vldr.64	d7, [r9, #8]
 3758 02e0 149B     		ldr	r3, [sp, #80]
 3759 02e2 099A     		ldr	r2, [sp, #36]
 3760 02e4 8DED047B 		vstr.64	d7, [sp, #16]
 3761 02e8 0DF50D64 		add	r4, sp, #2256
 3762 02ec 03EB020B 		add	fp, r3, r2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 67


 3763              	.L370:
 3764 02f0 D4E90023 		ldrd	r2, [r4]
 3765 02f4 DDE90401 		ldrd	r0, [sp, #16]
 3766 02f8 FFF7FEFF 		bl	__aeabi_dmul
 3767 02fc 069B     		ldr	r3, [sp, #24]
 3768 02fe 012B     		cmp	r3, #1
 3769 0300 0646     		mov	r6, r0
 3770 0302 0F46     		mov	r7, r1
 3771 0304 04F1080A 		add	r10, r4, #8
 3772 0308 17D9     		bls	.L368
 3773 030a 089B     		ldr	r3, [sp, #32]
 3774 030c 083C     		subs	r4, r4, #8
 3775 030e 03EB0A08 		add	r8, r3, r10
 3776 0312 4D46     		mov	r5, r9
 3777              	.L369:
 3778 0314 D4E91423 		ldrd	r2, [r4, #80]
 3779 0318 D5E91401 		ldrd	r0, [r5, #80]
 3780 031c FFF7FEFF 		bl	__aeabi_dmul
 3781 0320 0246     		mov	r2, r0
 3782 0322 0B46     		mov	r3, r1
 3783 0324 3046     		mov	r0, r6
 3784 0326 3946     		mov	r1, r7
 3785 0328 FFF7FEFF 		bl	__aeabi_dadd
 3786 032c 4834     		adds	r4, r4, #72
 3787 032e 4445     		cmp	r4, r8
 3788 0330 0646     		mov	r6, r0
 3789 0332 0F46     		mov	r7, r1
 3790 0334 05F14805 		add	r5, r5, #72
 3791 0338 ECD1     		bne	.L369
 3792              	.L368:
 3793 033a 079B     		ldr	r3, [sp, #28]
 3794 033c 5345     		cmp	r3, r10
 3795 033e EBE80267 		strd	r6, [fp], #8
 3796 0342 5446     		mov	r4, r10
 3797 0344 D4D1     		bne	.L370
 3798 0346 DDE90E23 		ldrd	r2, [sp, #56]
 3799 034a DDE90401 		ldrd	r0, [sp, #16]
 3800 034e FFF7FEFF 		bl	__aeabi_dmul
 3801 0352 069B     		ldr	r3, [sp, #24]
 3802 0354 012B     		cmp	r3, #1
 3803 0356 0646     		mov	r6, r0
 3804 0358 0F46     		mov	r7, r1
 3805 035a 2DD9     		bls	.L371
 3806 035c 119B     		ldr	r3, [sp, #68]
 3807 035e CDF83090 		str	r9, [sp, #48]
 3808 0362 4C46     		mov	r4, r9
 3809 0364 DDF84090 		ldr	r9, [sp, #64]
 3810 0368 03F58675 		add	r5, r3, #268
 3811 036c 0DF1F008 		add	r8, sp, #240
 3812              	.L372:
 3813 0370 F8E80223 		ldrd	r2, [r8], #8
 3814 0374 55F8040B 		ldr	r0, [r5], #4	@ float
 3815 0378 CDE90423 		strd	r2, [sp, #16]
 3816 037c FFF7FEFF 		bl	__aeabi_f2d
 3817 0380 DDE90423 		ldrd	r2, [sp, #16]
 3818 0384 FFF7FEFF 		bl	__aeabi_dadd
 3819 0388 01F1004B 		add	fp, r1, #-2147483648
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 68


 3820 038c D4E91423 		ldrd	r2, [r4, #80]
 3821 0390 5946     		mov	r1, fp
 3822 0392 8246     		mov	r10, r0
 3823 0394 FFF7FEFF 		bl	__aeabi_dmul
 3824 0398 0246     		mov	r2, r0
 3825 039a 0B46     		mov	r3, r1
 3826 039c 3046     		mov	r0, r6
 3827 039e 3946     		mov	r1, r7
 3828 03a0 FFF7FEFF 		bl	__aeabi_dadd
 3829 03a4 A945     		cmp	r9, r5
 3830 03a6 0646     		mov	r6, r0
 3831 03a8 0F46     		mov	r7, r1
 3832 03aa 04F14804 		add	r4, r4, #72
 3833 03ae DFD1     		bne	.L372
 3834 03b0 CDE90AAB 		strd	r10, [sp, #40]
 3835 03b4 DDF83090 		ldr	r9, [sp, #48]
 3836              	.L371:
 3837 03b8 099B     		ldr	r3, [sp, #36]
 3838 03ba C3E90267 		strd	r6, [r3, #8]
 3839 03be 5033     		adds	r3, r3, #80
 3840 03c0 0993     		str	r3, [sp, #36]
 3841 03c2 159B     		ldr	r3, [sp, #84]
 3842 03c4 09F10809 		add	r9, r9, #8
 3843 03c8 9945     		cmp	r9, r3
 3844 03ca 87D1     		bne	.L373
 3845 03cc DDF864B0 		ldr	fp, [sp, #100]
 3846              	.L367:
 3847 03d0 179B     		ldr	r3, [sp, #92]
 3848 03d2 33B1     		cbz	r3, .L374
 3849 03d4 0BF10103 		add	r3, fp, #1
 3850 03d8 5A46     		mov	r2, fp
 3851 03da BAA9     		add	r1, sp, #744
 3852 03dc 5848     		ldr	r0, .L446+16
 3853 03de FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3854              	.L374:
 3855 03e2 28A9     		add	r1, sp, #160
 3856 03e4 5A46     		mov	r2, fp
 3857 03e6 BAA8     		add	r0, sp, #744
 3858 03e8 FFF7FEFF 		bl	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 3859 03ec 524B     		ldr	r3, .L446+8
 3860 03ee D3F80831 		ldr	r3, [r3, #264]
 3861 03f2 D906     		lsls	r1, r3, #27
 3862 03f4 00F10A81 		bmi	.L440
 3863              	.L375:
 3864 03f8 28AA     		add	r2, sp, #160
 3865 03fa 5946     		mov	r1, fp
 3866 03fc 0D98     		ldr	r0, [sp, #52]
 3867 03fe FFF7FEFF 		bl	_ZN21HangprinterKinematics6AdjustEjPKd
 3868 0402 DDE92801 		ldrd	r0, [sp, #160]
 3869 0406 FFF7FEFF 		bl	__aeabi_d2f
 3870 040a 2290     		str	r0, [sp, #136]	@ float
 3871 040c DDE92A01 		ldrd	r0, [sp, #168]
 3872 0410 FFF7FEFF 		bl	__aeabi_d2f
 3873 0414 2390     		str	r0, [sp, #140]	@ float
 3874 0416 DDE92C01 		ldrd	r0, [sp, #176]
 3875 041a FFF7FEFF 		bl	__aeabi_d2f
 3876 041e 464B     		ldr	r3, .L446+8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 69


 3877 0420 2490     		str	r0, [sp, #144]	@ float
 3878 0422 0322     		movs	r2, #3
 3879 0424 D868     		ldr	r0, [r3, #12]
 3880 0426 22A9     		add	r1, sp, #136
 3881 0428 FFF7FEFF 		bl	_ZN4Move20AdjustMotorPositionsEPKfj
 3882 042c 9FED407B 		vldr.64	d7, .L446
 3883 0430 069B     		ldr	r3, [sp, #24]
 3884 0432 8DED047B 		vstr.64	d7, [sp, #16]
 3885 0436 002B     		cmp	r3, #0
 3886 0438 54D0     		beq	.L380
 3887 043a CDF830B0 		str	fp, [sp, #48]
 3888 043e DDF86C80 		ldr	r8, [sp, #108]
 3889 0442 DDF840B0 		ldr	fp, [sp, #64]
 3890 0446 0DF1E80A 		add	r10, sp, #232
 3891 044a 0DF5F479 		add	r9, sp, #488
 3892 044e 0DF5B966 		add	r6, sp, #1480
 3893 0452 2EAF     		add	r7, sp, #184
 3894              	.L382:
 3895 0454 28AD     		add	r5, sp, #160
 3896 0456 3446     		mov	r4, r6
 3897              	.L381:
 3898 0458 F5E80223 		ldrd	r2, [r5], #8
 3899 045c D4E90001 		ldrd	r0, [r4]
 3900 0460 FFF7FEFF 		bl	__aeabi_dadd
 3901 0464 AF42     		cmp	r7, r5
 3902 0466 E4E80201 		strd	r0, [r4], #8
 3903 046a F5D1     		bne	.L381
 3904 046c D6E90601 		ldrd	r0, [r6, #24]
 3905 0470 FFF7FEFF 		bl	__aeabi_d2f
 3906 0474 0990     		str	r0, [sp, #36]
 3907 0476 D6E90401 		ldrd	r0, [r6, #16]
 3908 047a FFF7FEFF 		bl	__aeabi_d2f
 3909 047e 0890     		str	r0, [sp, #32]
 3910 0480 D6E90201 		ldrd	r0, [r6, #8]
 3911 0484 FFF7FEFF 		bl	__aeabi_d2f
 3912 0488 9DED091A 		vldr.32	s2, [sp, #36]	@ int
 3913 048c DDED080A 		vldr.32	s1, [sp, #32]	@ int
 3914 0490 00EE100A 		vmov	s0, r0
 3915 0494 25A9     		add	r1, sp, #148
 3916 0496 0D98     		ldr	r0, [sp, #52]
 3917 0498 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 3918 049c 9DED278A 		vldr.32	s16, [sp, #156]
 3919 04a0 18EE100A 		vmov	r0, s16
 3920 04a4 FFF7FEFF 		bl	__aeabi_f2d
 3921 04a8 F8EC017A 		vldmia.32	r8!, {s15}
 3922 04ac 78EE277A 		vadd.f32	s15, s16, s15
 3923 04b0 EAE80201 		strd	r0, [r10], #8
 3924 04b4 17EE900A 		vmov	r0, s15
 3925 04b8 FFF7FEFF 		bl	__aeabi_f2d
 3926 04bc 0246     		mov	r2, r0
 3927 04be 0B46     		mov	r3, r1
 3928 04c0 E9E80223 		strd	r2, [r9], #8
 3929 04c4 FFF7FEFF 		bl	__aeabi_dmul
 3930 04c8 0246     		mov	r2, r0
 3931 04ca 0B46     		mov	r3, r1
 3932 04cc DDE90401 		ldrd	r0, [sp, #16]
 3933 04d0 FFF7FEFF 		bl	__aeabi_dadd
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 70


 3934 04d4 C345     		cmp	fp, r8
 3935 04d6 06F11806 		add	r6, r6, #24
 3936 04da CDE90401 		strd	r0, [sp, #16]
 3937 04de B9D1     		bne	.L382
 3938 04e0 DDF830B0 		ldr	fp, [sp, #48]
 3939              	.L380:
 3940 04e4 0698     		ldr	r0, [sp, #24]
 3941 04e6 FFF7FEFF 		bl	__aeabi_ui2d
 3942 04ea 0246     		mov	r2, r0
 3943 04ec 0B46     		mov	r3, r1
 3944 04ee 0446     		mov	r4, r0
 3945 04f0 0D46     		mov	r5, r1
 3946 04f2 DDE90401 		ldrd	r0, [sp, #16]
 3947 04f6 FFF7FEFF 		bl	__aeabi_ddiv
 3948 04fa FFF7FEFF 		bl	__aeabi_d2f
 3949 04fe 00EE100A 		vmov	s0, r0
 3950 0502 B5EE400A 		vcmp.f32	s0, #0
 3951 0506 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3952 050a B1EEC08A 		vsqrt.f32	s16, s0
 3953 050e 00F1E980 		bmi	.L441
 3954              	.L383:
 3955 0512 094B     		ldr	r3, .L446+8
 3956 0514 D3F80831 		ldr	r3, [r3, #264]
 3957 0518 DA06     		lsls	r2, r3, #27
 3958 051a 6BD4     		bmi	.L442
 3959              	.L384:
 3960 051c 189B     		ldr	r3, [sp, #96]
 3961 051e 012B     		cmp	r3, #1
 3962 0520 10D0     		beq	.L385
 3963 0522 0123     		movs	r3, #1
 3964 0524 1893     		str	r3, [sp, #96]
 3965 0526 61E6     		b	.L353
 3966              	.L438:
 3967 0528 0529     		cmp	r1, #5
 3968 052a 69D9     		bls	.L363
 3969 052c 3146     		mov	r1, r6
 3970 052e 93E6     		b	.L362
 3971              	.L447:
 3972              		.align	3
 3973              	.L446:
 3974 0530 00000000 		.word	0
 3975 0534 00000000 		.word	0
 3976 0538 00000000 		.word	reprap
 3977 053c 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 3978 0540 6C000000 		.word	.LC33
 3979              	.L385:
 3980 0544 6A4B     		ldr	r3, .L448
 3981 0546 DDF834B0 		ldr	fp, [sp, #52]
 3982 054a D3F80831 		ldr	r3, [r3, #264]
 3983 054e DB06     		lsls	r3, r3, #27
 3984 0550 0DD5     		bpl	.L386
 3985 0552 169E     		ldr	r6, [sp, #88]
 3986 0554 BA96     		str	r6, [sp, #744]
 3987 0556 0022     		movs	r2, #0
 3988 0558 DD23     		movs	r3, #221
 3989 055a BAA9     		add	r1, sp, #744
 3990 055c 5846     		mov	r0, fp
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 71


 3991 055e 3270     		strb	r2, [r6]
 3992 0560 BB93     		str	r3, [sp, #748]
 3993 0562 FFF7FEFF 		bl	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 3994 0566 3146     		mov	r1, r6
 3995 0568 6248     		ldr	r0, .L448+4
 3996 056a FFF7FEFF 		bl	debugPrintf
 3997              	.L386:
 3998 056e 2246     		mov	r2, r4
 3999 0570 2B46     		mov	r3, r5
 4000 0572 DDE91201 		ldrd	r0, [sp, #72]
 4001 0576 FFF7FEFF 		bl	__aeabi_ddiv
 4002 057a FFF7FEFF 		bl	__aeabi_d2f
 4003 057e 00EE100A 		vmov	s0, r0
 4004 0582 B5EE400A 		vcmp.f32	s0, #0
 4005 0586 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4006 058a F1EEC08A 		vsqrt.f32	s17, s0
 4007 058e 00F1AC80 		bmi	.L443
 4008              	.L387:
 4009 0592 18EE100A 		vmov	r0, s16
 4010 0596 FFF7FEFF 		bl	__aeabi_f2d
 4011 059a CDE90201 		strd	r0, [sp, #8]
 4012 059e 18EE900A 		vmov	r0, s17
 4013 05a2 FFF7FEFF 		bl	__aeabi_f2d
 4014 05a6 209C     		ldr	r4, [sp, #128]
 4015 05a8 069B     		ldr	r3, [sp, #24]
 4016 05aa 1A9A     		ldr	r2, [sp, #104]
 4017 05ac CDE90001 		strd	r0, [sp]
 4018 05b0 5149     		ldr	r1, .L448+8
 4019 05b2 2046     		mov	r0, r4
 4020 05b4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4021 05b8 4D4A     		ldr	r2, .L448
 4022 05ba 2368     		ldr	r3, [r4]
 4023 05bc 5068     		ldr	r0, [r2, #4]
 4024 05be 4D4A     		ldr	r2, .L448+4
 4025 05c0 8021     		movs	r1, #128
 4026 05c2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4027 05c6 0123     		movs	r3, #1
 4028 05c8 8BF85831 		strb	r3, [fp, #344]
 4029 05cc 31E5     		b	.L431
 4030              	.L439:
 4031 05ce 5B46     		mov	r3, fp
 4032 05d0 069A     		ldr	r2, [sp, #24]
 4033 05d2 1699     		ldr	r1, [sp, #88]
 4034 05d4 4948     		ldr	r0, .L448+12
 4035 05d6 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 4036 05da 454B     		ldr	r3, .L448
 4037 05dc 484A     		ldr	r2, .L448+16
 4038 05de D3F80831 		ldr	r3, [r3, #264]
 4039 05e2 BA92     		str	r2, [sp, #744]
 4040 05e4 03F01003 		and	r3, r3, #16
 4041 05e8 1793     		str	r3, [sp, #92]
 4042 05ea BBF1000F 		cmp	fp, #0
 4043 05ee 7FF45CAE 		bne	.L388
 4044 05f2 EDE6     		b	.L367
 4045              	.L442:
 4046 05f4 069A     		ldr	r2, [sp, #24]
 4047 05f6 4348     		ldr	r0, .L448+20
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 72


 4048 05f8 7AA9     		add	r1, sp, #488
 4049 05fa FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 4050 05fe 8DE7     		b	.L384
 4051              	.L363:
 4052 0600 FFF7FEFF 		bl	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 4053 0604 3146     		mov	r1, r6
 4054 0606 A7EC020B 		vstmia.64	r7!, {d0}
 4055 060a 19E6     		b	.L361
 4056              	.L440:
 4057 060c 0BF10103 		add	r3, fp, #1
 4058 0610 5A46     		mov	r2, fp
 4059 0612 BAA9     		add	r1, sp, #744
 4060 0614 3C48     		ldr	r0, .L448+24
 4061 0616 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 4062 061a 5A46     		mov	r2, fp
 4063 061c 28A9     		add	r1, sp, #160
 4064 061e 3B48     		ldr	r0, .L448+28
 4065 0620 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 4066 0624 3A48     		ldr	r0, .L448+32
 4067 0626 FFF7FEFF 		bl	debugPrintf
 4068 062a 069B     		ldr	r3, [sp, #24]
 4069 062c 7BB3     		cbz	r3, .L376
 4070 062e CDF810B0 		str	fp, [sp, #16]
 4071 0632 DFF8E4A0 		ldr	r10, .L448+40
 4072 0636 DDF86C80 		ldr	r8, [sp, #108]
 4073 063a DDF884B0 		ldr	fp, [sp, #132]
 4074 063e 0DF50D69 		add	r9, sp, #2256
 4075              	.L379:
 4076 0642 58F8040B 		ldr	r0, [r8], #4	@ float
 4077 0646 FFF7FEFF 		bl	__aeabi_f2d
 4078 064a 049B     		ldr	r3, [sp, #16]
 4079 064c 0646     		mov	r6, r0
 4080 064e 0F46     		mov	r7, r1
 4081 0650 8BB1     		cbz	r3, .L377
 4082 0652 4D46     		mov	r5, r9
 4083 0654 28AC     		add	r4, sp, #160
 4084              	.L378:
 4085 0656 F5E80223 		ldrd	r2, [r5], #8
 4086 065a F4E80201 		ldrd	r0, [r4], #8
 4087 065e FFF7FEFF 		bl	__aeabi_dmul
 4088 0662 0246     		mov	r2, r0
 4089 0664 0B46     		mov	r3, r1
 4090 0666 3046     		mov	r0, r6
 4091 0668 3946     		mov	r1, r7
 4092 066a FFF7FEFF 		bl	__aeabi_dadd
 4093 066e A345     		cmp	fp, r4
 4094 0670 0646     		mov	r6, r0
 4095 0672 0F46     		mov	r7, r1
 4096 0674 EFD1     		bne	.L378
 4097              	.L377:
 4098 0676 3B46     		mov	r3, r7
 4099 0678 3246     		mov	r2, r6
 4100 067a 5046     		mov	r0, r10
 4101 067c FFF7FEFF 		bl	debugPrintf
 4102 0680 109B     		ldr	r3, [sp, #64]
 4103 0682 4345     		cmp	r3, r8
 4104 0684 09F14809 		add	r9, r9, #72
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 73


 4105 0688 DBD1     		bne	.L379
 4106 068a DDF810B0 		ldr	fp, [sp, #16]
 4107              	.L376:
 4108 068e 2148     		ldr	r0, .L448+36
 4109 0690 FFF7FEFF 		bl	debugPrintf
 4110 0694 B0E6     		b	.L375
 4111              	.L432:
 4112 0696 0DF6C802 		addw	r2, sp, #2248
 4113 069a 1D9C     		ldr	r4, [sp, #116]
 4114 069c 8DF8C848 		strb	r4, [sp, #2248]
 4115 06a0 DD23     		movs	r3, #221
 4116 06a2 0DF5B861 		add	r1, sp, #1472
 4117 06a6 1446     		mov	r4, r2
 4118 06a8 5846     		mov	r0, fp
 4119 06aa 1692     		str	r2, [sp, #88]
 4120 06ac CDF8C025 		str	r2, [sp, #1472]
 4121 06b0 CDF8C435 		str	r3, [sp, #1476]
 4122 06b4 FFF7FEFF 		bl	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 4123 06b8 2146     		mov	r1, r4
 4124 06ba 0E48     		ldr	r0, .L448+4
 4125 06bc FFF7FEFF 		bl	debugPrintf
 4126 06c0 D0E4     		b	.L351
 4127              	.L435:
 4128 06c2 FFF7FEFF 		bl	sqrtf
 4129 06c6 94ED009A 		vldr.32	s18, [r4]
 4130 06ca 94ED018A 		vldr.32	s16, [r4, #4]
 4131 06ce 15E5     		b	.L354
 4132              	.L436:
 4133 06d0 FFF7FEFF 		bl	sqrtf
 4134 06d4 94ED009A 		vldr.32	s18, [r4]
 4135 06d8 94ED018A 		vldr.32	s16, [r4, #4]
 4136 06dc 2CE5     		b	.L355
 4137              	.L437:
 4138 06de FFF7FEFF 		bl	sqrtf
 4139 06e2 47E5     		b	.L356
 4140              	.L441:
 4141 06e4 FFF7FEFF 		bl	sqrtf
 4142 06e8 13E7     		b	.L383
 4143              	.L443:
 4144 06ea FFF7FEFF 		bl	sqrtf
 4145 06ee 50E7     		b	.L387
 4146              	.L449:
 4147              		.align	2
 4148              	.L448:
 4149 06f0 00000000 		.word	reprap
 4150 06f4 54000000 		.word	.LC31
 4151 06f8 C8000000 		.word	.LC40
 4152 06fc 58000000 		.word	.LC32
 4153 0700 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 4154 0704 B0000000 		.word	.LC39
 4155 0708 7C000000 		.word	.LC34
 4156 070c 8C000000 		.word	.LC35
 4157 0710 98000000 		.word	.LC36
 4158 0714 AC000000 		.word	.LC38
 4159 0718 A4000000 		.word	.LC37
 4160              		.size	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN21H
 4161              		.global	_ZTV21HangprinterKinematics
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 74


 4162              		.weak	_ZTV11FixedMatrixIdLj32ELj9EE
 4163              		.section	.rodata._ZTV11FixedMatrixIdLj32ELj9EE,"aG",%progbits,_ZTV11FixedMatrixIdLj32ELj9EE,comdat
 4164              		.align	2
 4165              		.type	_ZTV11FixedMatrixIdLj32ELj9EE, %object
 4166              		.size	_ZTV11FixedMatrixIdLj32ELj9EE, 32
 4167              	_ZTV11FixedMatrixIdLj32ELj9EE:
 4168 0000 00000000 		.word	0
 4169 0004 00000000 		.word	0
 4170 0008 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 4171 000c 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 4172 0010 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EEclEjj
 4173 0014 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 4174 0018 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED1Ev
 4175 001c 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 4176              		.weak	_ZTV11FixedMatrixIdLj9ELj10EE
 4177              		.section	.rodata._ZTV11FixedMatrixIdLj9ELj10EE,"aG",%progbits,_ZTV11FixedMatrixIdLj9ELj10EE,comdat
 4178              		.align	2
 4179              		.type	_ZTV11FixedMatrixIdLj9ELj10EE, %object
 4180              		.size	_ZTV11FixedMatrixIdLj9ELj10EE, 32
 4181              	_ZTV11FixedMatrixIdLj9ELj10EE:
 4182 0000 00000000 		.word	0
 4183 0004 00000000 		.word	0
 4184 0008 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 4185 000c 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 4186 0010 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 4187 0014 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 4188 0018 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED1Ev
 4189 001c 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 4190              		.section	.rodata
 4191              		.align	2
 4192              		.set	.LANCHOR0,. + 0
 4193              	.LC14:
 4194 0000 00000000 		.word	.LC6
 4195 0004 08000000 		.word	.LC7
 4196 0008 10000000 		.word	.LC8
 4197 000c 18000000 		.word	.LC9
 4198 0010 20000000 		.word	.LC10
 4199              	.LC0:
 4200 0014 66664842 		.word	1112041062
 4201 0018 33338242 		.word	1115829043
 4202 001c 33338242 		.word	1115829043
 4203 0020 33338242 		.word	1115829043
 4204 0024 33338242 		.word	1115829043
 4205              	.LC1:
 4206 0028 01000000 		.word	1
 4207 002c 02000000 		.word	2
 4208 0030 02000000 		.word	2
 4209 0034 02000000 		.word	2
 4210 0038 01000000 		.word	1
 4211              	.LC2:
 4212 003c 01000000 		.word	1
 4213 0040 01000000 		.word	1
 4214 0044 01000000 		.word	1
 4215 0048 01000000 		.word	1
 4216 004c 01000000 		.word	1
 4217              	.LC3:
 4218 0050 05000000 		.word	5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 75


 4219 0054 14000000 		.word	20
 4220 0058 14000000 		.word	20
 4221 005c 14000000 		.word	20
 4222 0060 14000000 		.word	20
 4223              	.LC4:
 4224 0064 2C010000 		.word	300
 4225 0068 FF000000 		.word	255
 4226 006c FF000000 		.word	255
 4227 0070 FF000000 		.word	255
 4228 0074 FF000000 		.word	255
 4229              	.LC5:
 4230 0078 20000000 		.word	32
 4231 007c 20000000 		.word	32
 4232 0080 20000000 		.word	32
 4233 0084 20000000 		.word	32
 4234 0088 20000000 		.word	32
 4235              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 4236              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 4237              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 4238              	_ZL28cpu_irq_prev_interrupt_state:
 4239 0000 00       		.space	1
 4240              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 4241              		.align	2
 4242              		.type	_ZL32cpu_irq_critical_section_counter, %object
 4243              		.size	_ZL32cpu_irq_critical_section_counter, 4
 4244              	_ZL32cpu_irq_critical_section_counter:
 4245 0000 00000000 		.space	4
 4246              		.section	.rodata._ZL14DefaultAnchorA,"a",%progbits
 4247              		.align	2
 4248              		.set	.LANCHOR1,. + 0
 4249              		.type	_ZL14DefaultAnchorA, %object
 4250              		.size	_ZL14DefaultAnchorA, 12
 4251              	_ZL14DefaultAnchorA:
 4252 0000 00000000 		.word	0
 4253 0004 29A4B3C4 		.word	-994859991
 4254 0008 00007EC3 		.word	-1015152640
 4255              		.section	.rodata._ZL14DefaultAnchorB,"a",%progbits
 4256              		.align	2
 4257              		.set	.LANCHOR2,. + 0
 4258              		.type	_ZL14DefaultAnchorB, %object
 4259              		.size	_ZL14DefaultAnchorB, 12
 4260              	_ZL14DefaultAnchorB:
 4261 0000 E1929B44 		.word	1151046369
 4262 0004 D7A33344 		.word	1144234967
 4263 0008 00007EC3 		.word	-1015152640
 4264              		.section	.rodata._ZL14DefaultAnchorC,"a",%progbits
 4265              		.align	2
 4266              		.set	.LANCHOR3,. + 0
 4267              		.type	_ZL14DefaultAnchorC, %object
 4268              		.size	_ZL14DefaultAnchorC, 12
 4269              	_ZL14DefaultAnchorC:
 4270 0000 E1929BC4 		.word	-996437279
 4271 0004 D7A33344 		.word	1144234967
 4272 0008 00007EC3 		.word	-1015152640
 4273              		.section	.rodata._ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRe
 4274              		.align	2
 4275              	.LC30:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 76


 4276 0000 48616E67 		.ascii	"Hangprinter calibration with %d factors requested b"
 4276      7072696E 
 4276      74657220 
 4276      63616C69 
 4276      62726174 
 4277 0033 7574206F 		.ascii	"ut only 3, 6, and 9 supported\000"
 4277      6E6C7920 
 4277      332C2036 
 4277      2C20616E 
 4277      64203920 
 4278 0051 000000   		.space	3
 4279              	.LC31:
 4280 0054 25730A00 		.ascii	"%s\012\000"
 4281              	.LC32:
 4282 0058 44657269 		.ascii	"Derivative matrix\000"
 4282      76617469 
 4282      7665206D 
 4282      61747269 
 4282      7800
 4283 006a 0000     		.space	2
 4284              	.LC33:
 4285 006c 4E6F726D 		.ascii	"Normal matrix\000"
 4285      616C206D 
 4285      61747269 
 4285      7800
 4286 007a 0000     		.space	2
 4287              	.LC34:
 4288 007c 536F6C76 		.ascii	"Solved matrix\000"
 4288      6564206D 
 4288      61747269 
 4288      7800
 4289 008a 0000     		.space	2
 4290              	.LC35:
 4291 008c 536F6C75 		.ascii	"Solution\000"
 4291      74696F6E 
 4291      00
 4292 0095 000000   		.space	3
 4293              	.LC36:
 4294 0098 52657369 		.ascii	"Residuals:\000"
 4294      6475616C 
 4294      733A00
 4295 00a3 00       		.space	1
 4296              	.LC37:
 4297 00a4 2025372E 		.ascii	" %7.4f\000"
 4297      346600
 4298 00ab 00       		.space	1
 4299              	.LC38:
 4300 00ac 0A00     		.ascii	"\012\000"
 4301 00ae 0000     		.space	2
 4302              	.LC39:
 4303 00b0 45787065 		.ascii	"Expected probe error\000"
 4303      63746564 
 4303      2070726F 
 4303      62652065 
 4303      72726F72 
 4304 00c5 000000   		.space	3
 4305              	.LC40:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 77


 4306 00c8 43616C69 		.ascii	"Calibrated %d factors using %d points, deviation be"
 4306      62726174 
 4306      65642025 
 4306      64206661 
 4306      63746F72 
 4307 00fb 666F7265 		.ascii	"fore %.3f after %.3f\000"
 4307      20252E33 
 4307      66206166 
 4307      74657220 
 4307      252E3366 
 4308              		.section	.rodata._ZN21HangprinterKinematics6RecalcEv.str1.4,"aMS",%progbits,1
 4309              		.align	2
 4310              	.LC17:
 4311 0000 50696574 		.ascii	"Pietari Line Lengths origins: %f\012\000"
 4311      61726920 
 4311      4C696E65 
 4311      204C656E 
 4311      67746873 
 4312 0022 0000     		.space	2
 4313              	.LC18:
 4314 0024 50696574 		.ascii	"Pietari k2 value %f\012\000"
 4314      61726920 
 4314      6B322076 
 4314      616C7565 
 4314      2025660A 
 4315 0039 000000   		.space	3
 4316              	.LC19:
 4317 003c 50696574 		.ascii	"Pietari k0 value %f\012\000"
 4317      61726920 
 4317      6B302076 
 4317      616C7565 
 4317      2025660A 
 4318 0051 000000   		.space	3
 4319              	.LC20:
 4320 0054 52656361 		.ascii	"Recalced params\012Da2: %.2f, Db2: %.2f, Dc2: %.2f,"
 4320      6C636564 
 4320      20706172 
 4320      616D730A 
 4320      4461323A 
 4321 0084 20586162 		.ascii	" Xab: %.2f, Xbc: %.2f, Xca: %.2f, Yab: %.2f, Ybc: %"
 4321      3A20252E 
 4321      32662C20 
 4321      5862633A 
 4321      20252E32 
 4322 00b7 2E32662C 		.ascii	".2f, Yca: %.2f, Zab: %.2f, Zbc: %.2f, Zca: %.2f, P:"
 4322      20596361 
 4322      3A20252E 
 4322      32662C20 
 4322      5A61623A 
 4323 00ea 20252E32 		.ascii	" %.2f, P2: %.2f, Q: %.2f, R: %.2f, U: %.2f, A: %.2f"
 4323      662C2050 
 4323      323A2025 
 4323      2E32662C 
 4323      20513A20 
 4324 011d 0A00     		.ascii	"\012\000"
 4325              		.section	.rodata._ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%
 4326              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 78


 4327              	.LC21:
 4328 0000 4B696E65 		.ascii	"Kinematics is Hangprinter\012Anchor positions:\012%"
 4328      6D617469 
 4328      63732069 
 4328      73204861 
 4328      6E677072 
 4329 002d 2E32662C 		.ascii	".2f, %.2f, %.2f\012%.2f, %.2f, %.2f\012%.2f, %.2f, "
 4329      20252E32 
 4329      662C2025 
 4329      2E32660A 
 4329      252E3266 
 4330 005a 252E3266 		.ascii	"%.2f\012%.2f\012%.2f\012Print radius:\012%.1f\012Se"
 4330      0A252E32 
 4330      660A252E 
 4330      32660A50 
 4330      72696E74 
 4331 007e 676D656E 		.ascii	"gments/s:\012%d\012Min segment length:\012%.2f\012S"
 4331      74732F73 
 4331      3A0A2564 
 4331      0A4D696E 
 4331      20736567 
 4332 00a5 706F6F6C 		.ascii	"pool buildup factor:\012%.4f\012Spool radii:\012%.2"
 4332      20627569 
 4332      6C647570 
 4332      20666163 
 4332      746F723A 
 4333 00cf 662C2025 		.ascii	"f, %.2f, %.2f, %.2f\012Mechanical Advantage:\012%d,"
 4333      2E32662C 
 4333      20252E32 
 4333      662C2025 
 4333      2E32660A 
 4334 00fc 2025642C 		.ascii	" %d, %d, %d\012Lines per spool:\012%d, %d, %d, %d\012"
 4334      2025642C 
 4334      2025640A 
 4334      4C696E65 
 4334      73207065 
 4335 0128 4D6F746F 		.ascii	"Motor gear teeth\012%d, %d, %d, %d\012Spool gear te"
 4335      72206765 
 4335      61722074 
 4335      65657468 
 4335      0A25642C 
 4336 0155 6574680A 		.ascii	"eth\012%d, %d, %d, %d\012Full steps per revolution\012"
 4336      25642C20 
 4336      25642C20 
 4336      25642C20 
 4336      25640A46 
 4337 0182 25642C20 		.ascii	"%d, %d, %d, %d\000"
 4337      25642C20 
 4337      25642C20 
 4337      256400
 4338 0191 000000   		.space	3
 4339              	.LC22:
 4340 0194 513A4275 		.ascii	"Q:Buildup fac %.4f\012R:Spool r %.2f, %.2f, %.2f, %"
 4340      696C6475 
 4340      70206661 
 4340      6320252E 
 4340      34660A52 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 79


 4341 01c4 2E32660A 		.ascii	".2f\012U:Mech Adv %d, %d, %d, %d\012O:Lines/spool %"
 4341      553A4D65 
 4341      63682041 
 4341      64762025 
 4341      642C2025 
 4342 01f1 642C2025 		.ascii	"d, %d, %d, %d\012L:Motor gear teeth %d, %d, %d, %d\012"
 4342      642C2025 
 4342      642C2025 
 4342      640A4C3A 
 4342      4D6F746F 
 4343 0221 483A5370 		.ascii	"H:Spool gear teeth %d, %d, %d, %d\012J:Full steps/r"
 4343      6F6F6C20 
 4343      67656172 
 4343      20746565 
 4343      74682025 
 4344 0251 65762025 		.ascii	"ev %d, %d, %d, %d\000"
 4344      642C2025 
 4344      642C2025 
 4344      642C2025 
 4344      6400
 4345              		.section	.rodata._ZNK21HangprinterKinematics15PrintParametersERK9StringRef.str1.4,"aMS",%progbits,
 4346              		.align	2
 4347              	.LC27:
 4348 0000 416E6368 		.ascii	"Anchor coordinates (%.2f,%.2f,%.2f) (%.2f,%.2f,%.2f"
 4348      6F722063 
 4348      6F6F7264 
 4348      696E6174 
 4348      65732028 
 4349 0033 29202825 		.ascii	") (%.2f,%.2f,%.2f)\012\000"
 4349      2E32662C 
 4349      252E3266 
 4349      2C252E32 
 4349      66290A00 
 4350              		.section	.rodata._ZNK21HangprinterKinematics16InverseTransformEfffPf.str1.4,"aMS",%progbits,1
 4351              		.align	2
 4352              	.LC23:
 4353 0000 496E7665 		.ascii	"Inverse Transform Pietari: S: %.2f, T: %.2f, halfB:"
 4353      72736520 
 4353      5472616E 
 4353      73666F72 
 4353      6D205069 
 4354 0033 20252E32 		.ascii	" %.2f, C: %.2f\012\000"
 4354      662C2043 
 4354      3A20252E 
 4354      32660A00 
 4355 0043 00       		.space	1
 4356              	.LC24:
 4357 0044 6D616368 		.ascii	"machinepos before Pietari %f\000"
 4357      696E6570 
 4357      6F732062 
 4357      65666F72 
 4357      65205069 
 4358 0061 000000   		.space	3
 4359              	.LC25:
 4360 0064 6D616368 		.ascii	"machinepos after Pietari %f\000"
 4360      696E6570 
 4360      6F732061 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 80


 4360      66746572 
 4360      20506965 
 4361              	.LC26:
 4362 0080 4D6F746F 		.ascii	"Motor %.2f,%.2f,%.2f to Cartesian %.2f,%.2f,%.2f\012"
 4362      7220252E 
 4362      32662C25 
 4362      2E32662C 
 4362      252E3266 
 4363 00b1 00       		.ascii	"\000"
 4364              		.section	.rodata._ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef.str1.4,"aMS",%prog
 4365              		.align	2
 4366              	.LC16:
 4367 0000 686F6D65 		.ascii	"homeall.g\000"
 4367      616C6C2E 
 4367      6700
 4368              		.section	.rodata._ZNK21HangprinterKinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 4369              		.align	2
 4370              	.LC12:
 4371 0000 56414243 		.ascii	"VABCD\000"
 4371      4400
 4372              		.section	.rodata._ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb.str1.4,"aMS",%prog
 4373              		.align	2
 4374              	.LC15:
 4375 0000 4D6F746F 		.ascii	"Motor positions Pietari: %s, %f\012\000"
 4375      7220706F 
 4375      73697469 
 4375      6F6E7320 
 4375      50696574 
 4376              		.section	.rodata._ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore.str1.4,"aMS",
 4377              		.align	2
 4378              	.LC28:
 4379 0000 3B204861 		.ascii	"; Hangprinter parameters\012\000"
 4379      6E677072 
 4379      696E7465 
 4379      72207061 
 4379      72616D65 
 4380 001a 0000     		.space	2
 4381              	.LC29:
 4382 001c 50696574 		.ascii	"Pietari M669 K6 A%.3f:%.3f:%.3f B%.3f:%.3f:%.3f C%."
 4382      61726920 
 4382      4D363639 
 4382      204B3620 
 4382      41252E33 
 4383 004f 33663A25 		.ascii	"3f:%.3f:%.3f D%.3f P%.1f Q%.6f R%.3f:%.3f:%.3f:%.3f"
 4383      2E33663A 
 4383      252E3366 
 4383      2044252E 
 4383      33662050 
 4384 0082 0A00     		.ascii	"\012\000"
 4385              		.section	.rodata._ZNK21HangprinterKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 4386              		.align	2
 4387              	.LC13:
 4388 0000 48616E67 		.ascii	"Hangprinter\000"
 4388      7072696E 
 4388      74657200 
 4389              		.section	.rodata._ZTV21HangprinterKinematics,"a",%progbits
 4390              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 81


 4391              		.set	.LANCHOR4,. + 0
 4392              		.type	_ZTV21HangprinterKinematics, %object
 4393              		.size	_ZTV21HangprinterKinematics, 128
 4394              	_ZTV21HangprinterKinematics:
 4395 0000 00000000 		.word	0
 4396 0004 00000000 		.word	0
 4397 0008 00000000 		.word	_ZNK21HangprinterKinematics7GetNameEb
 4398 000c 00000000 		.word	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 4399 0010 00000000 		.word	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 4400 0014 00000000 		.word	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf
 4401 0018 00000000 		.word	_ZNK21HangprinterKinematics23SupportsAutoCalibrationEv
 4402 001c 00000000 		.word	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 4403 0020 00000000 		.word	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv
 4404 0024 00000000 		.word	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore
 4405 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 4406 002c 00000000 		.word	_ZNK21HangprinterKinematics11IsReachableEffb
 4407 0030 00000000 		.word	_ZNK21HangprinterKinematics13LimitPositionEPfjmb
 4408 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 4409 0038 00000000 		.word	_ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf
 4410 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 4411 0040 00000000 		.word	_ZNK21HangprinterKinematics16NumHomingButtonsEj
 4412 0044 00000000 		.word	_ZNK21HangprinterKinematics17HomingButtonNamesEv
 4413 0048 00000000 		.word	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 4414 004c 00000000 		.word	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef
 4415 0050 00000000 		.word	_ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj
 4416 0054 00000000 		.word	_ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 4417 0058 00000000 		.word	_ZNK21HangprinterKinematics13GetHomingModeEv
 4418 005c 00000000 		.word	_ZNK21HangprinterKinematics16AxesAssumedHomedEm
 4419 0060 00000000 		.word	_ZNK21HangprinterKinematics15MustBeHomedAxesEmb
 4420 0064 00000000 		.word	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore
 4421 0068 00000000 		.word	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf
 4422 006c 00000000 		.word	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj
 4423 0070 00000000 		.word	_ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj
 4424 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 4425 0078 00000000 		.word	_ZN21HangprinterKinematicsD1Ev
 4426 007c 00000000 		.word	_ZN21HangprinterKinematicsD0Ev
 4427              		.section	.rodata.str1.4,"aMS",%progbits,1
 4428              		.align	2
 4429              	.LC6:
 4430 0000 56206178 		.ascii	"V axis\000"
 4430      697300
 4431 0007 00       		.space	1
 4432              	.LC7:
 4433 0008 41206178 		.ascii	"A axis\000"
 4433      697300
 4434 000f 00       		.space	1
 4435              	.LC8:
 4436 0010 42206178 		.ascii	"B axis\000"
 4436      697300
 4437 0017 00       		.space	1
 4438              	.LC9:
 4439 0018 43206178 		.ascii	"C axis\000"
 4439      697300
 4440 001f 00       		.space	1
 4441              	.LC10:
 4442 0020 44206178 		.ascii	"D axis\000"
 4442      697300
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cciTB6xT.s 			page 82


 4443              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
