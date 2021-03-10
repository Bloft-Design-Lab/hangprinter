ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 1


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 2


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 3


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 4


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 5


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 6


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
 301 0008 41F01000 		orreq	r0, r1, #16
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 7


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 8


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 9


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 10


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 11


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
 615 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 616 0004 D1ED017A 		vldr.32	s15, [r1, #4]
 617 0008 D0ED055A 		vldr.32	s11, [r0, #20]
 618 000c D0ED086A 		vldr.32	s13, [r0, #32]
 619 0010 90ED0B7A 		vldr.32	s14, [r0, #44]
 620 0014 904E     		ldr	r6, .L78
 621 0016 91ED006A 		vldr.32	s12, [r1]
 622 001a D0ED062A 		vldr.32	s5, [r0, #24]
 623 001e 90ED093A 		vldr.32	s6, [r0, #36]
 624 0022 D0ED0C3A 		vldr.32	s7, [r0, #48]
 625 0026 90ED044A 		vldr.32	s8, [r0, #16]
 626 002a D0ED074A 		vldr.32	s9, [r0, #28]
 627 002e D0ED0A1A 		vldr.32	s3, [r0, #40]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 12


 628 0032 90ED0D5A 		vldr.32	s10, [r0, #52]
 629 0036 91ED022A 		vldr.32	s4, [r1, #8]
 630 003a DFF830A2 		ldr	r10, .L78+20
 631 003e 2DED048B 		vpush.64	{d8, d9}
 632 0042 77EEE55A 		vsub.f32	s11, s15, s11
 633 0046 8146     		mov	r9, r0
 634 0048 77EEE66A 		vsub.f32	s13, s15, s13
 635 004c 37EEC77A 		vsub.f32	s14, s15, s14
 636 0050 8B46     		mov	fp, r1
 637 0052 1746     		mov	r7, r2
 638 0054 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 639 0056 93B0     		sub	sp, sp, #76
 640 0058 65EEA59A 		vmul.f32	s19, s11, s11
 641 005c 66EEA66A 		vmul.f32	s13, s13, s13
 642 0060 27EE077A 		vmul.f32	s14, s14, s14
 643 0064 67EEA77A 		vmul.f32	s15, s15, s15
 644 0068 08AD     		add	r5, sp, #32
 645 006a E6EE067A 		vfma.f32	s15, s12, s12
 646 006e 2C46     		mov	r4, r5
 647 0070 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 648 0072 E2EEA29A 		vfma.f32	s19, s5, s5
 649 0076 3368     		ldr	r3, [r6]
 650 0078 2360     		str	r3, [r4]
 651 007a E3EE036A 		vfma.f32	s13, s6, s6
 652 007e 4FF07E53 		mov	r3, #1065353216
 653 0082 0024     		movs	r4, #0
 654 0084 A3EEA37A 		vfma.f32	s14, s7, s7
 655 0088 0393     		str	r3, [sp, #12]	@ float
 656 008a 03AB     		add	r3, sp, #12
 657 008c 36EE444A 		vsub.f32	s8, s12, s8
 658 0090 76EE644A 		vsub.f32	s9, s12, s9
 659 0094 75EE425A 		vsub.f32	s11, s10, s4
 660 0098 36EE616A 		vsub.f32	s12, s12, s3
 661 009c E4EE049A 		vfma.f32	s19, s8, s8
 662 00a0 09F1F808 		add	r8, r9, #248
 663 00a4 0DAE     		add	r6, sp, #52
 664 00a6 E4EEA46A 		vfma.f32	s13, s9, s9
 665 00aa 03EB8403 		add	r3, r3, r4, lsl #2
 666 00ae A6EE067A 		vfma.f32	s14, s12, s12
 667 00b2 E5EEA57A 		vfma.f32	s15, s11, s11
 668 00b6 DFED698A 		vldr.32	s17, .L78+4
 669 00ba 9FED699A 		vldr.32	s18, .L78+8
 670 00be CDED049A 		vstr.32	s19, [sp, #16]
 671 00c2 CDED056A 		vstr.32	s13, [sp, #20]
 672 00c6 8DED067A 		vstr.32	s14, [sp, #24]
 673 00ca CDED077A 		vstr.32	s15, [sp, #28]
 674 00ce 54B3     		cbz	r4, .L75
 675              	.L55:
 676 00d0 93ED000A 		vldr.32	s0, [r3]
 677 00d4 B5EE400A 		vcmp.f32	s0, #0
 678 00d8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 679 00dc B1EEC08A 		vsqrt.f32	s16, s0
 680 00e0 36D4     		bmi	.L76
 681              	.L57:
 682 00e2 042C     		cmp	r4, #4
 683 00e4 D8ED007A 		vldr.32	s15, [r8]
 684 00e8 78EE677A 		vsub.f32	s15, s16, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 13


 685 00ec C6ED007A 		vstr.32	s15, [r6]
 686 00f0 31D0     		beq	.L58
 687 00f2 77EEA87A 		vadd.f32	s15, s15, s17
 688 00f6 17EE900A 		vmov	r0, s15
 689 00fa FFF7FEFF 		bl	__aeabi_f2d
 690 00fe 4FF0030C 		mov	ip, #3
 691 0102 CDF800C0 		str	ip, [sp]
 692 0106 0246     		mov	r2, r0
 693 0108 0B46     		mov	r3, r1
 694 010a 5046     		mov	r0, r10
 695 010c 55F82410 		ldr	r1, [r5, r4, lsl #2]
 696 0110 FFF7FEFF 		bl	debugPrintf
 697              	.L56:
 698 0114 0134     		adds	r4, r4, #1
 699 0116 03AB     		add	r3, sp, #12
 700 0118 08F10408 		add	r8, r8, #4
 701 011c 0436     		adds	r6, r6, #4
 702 011e 03EB8403 		add	r3, r3, r4, lsl #2
 703 0122 002C     		cmp	r4, #0
 704 0124 D4D1     		bne	.L55
 705              	.L75:
 706 0126 99ED0D7A 		vldr.32	s14, [r9, #52]
 707 012a DBED027A 		vldr.32	s15, [fp, #8]
 708 012e 77EE677A 		vsub.f32	s15, s14, s15
 709 0132 77EEC97A 		vsub.f32	s15, s15, s18
 710 0136 17EE900A 		vmov	r0, s15
 711 013a CDED0D7A 		vstr.32	s15, [sp, #52]
 712 013e FFF7FEFF 		bl	__aeabi_f2d
 713 0142 0246     		mov	r2, r0
 714 0144 0B46     		mov	r3, r1
 715 0146 4748     		ldr	r0, .L78+12
 716 0148 0899     		ldr	r1, [sp, #32]
 717 014a FFF7FEFF 		bl	debugPrintf
 718 014e E1E7     		b	.L56
 719              	.L76:
 720 0150 FFF7FEFF 		bl	sqrtf
 721 0154 C5E7     		b	.L57
 722              	.L58:
 723 0156 17EE900A 		vmov	r0, s15
 724 015a FFF7FEFF 		bl	__aeabi_f2d
 725 015e 0246     		mov	r2, r0
 726 0160 0B46     		mov	r3, r1
 727 0162 4148     		ldr	r0, .L78+16
 728 0164 0C99     		ldr	r1, [sp, #48]
 729 0166 FFF7FEFF 		bl	debugPrintf
 730 016a F5EEC09A 		vcmpe.f32	s19, #0
 731 016e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 732 0172 1BDD     		ble	.L60
 733 0174 DDED057A 		vldr.32	s15, [sp, #20]
 734 0178 F5EEC07A 		vcmpe.f32	s15, #0
 735 017c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 736 0180 14DD     		ble	.L60
 737 0182 DDED067A 		vldr.32	s15, [sp, #24]
 738 0186 F5EEC07A 		vcmpe.f32	s15, #0
 739 018a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 740 018e 0DDD     		ble	.L60
 741 0190 DDED077A 		vldr.32	s15, [sp, #28]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 14


 742 0194 F5EEC07A 		vcmpe.f32	s15, #0
 743 0198 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 744 019c 06DD     		ble	.L60
 745 019e DDED037A 		vldr.32	s15, [sp, #12]
 746 01a2 F5EEC07A 		vcmpe.f32	s15, #0
 747 01a6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 748 01aa 20DC     		bgt	.L77
 749              	.L60:
 750 01ac 219B     		ldr	r3, [sp, #132]
 751 01ae DFF8C080 		ldr	r8, .L78+24
 752 01b2 1C1F     		subs	r4, r3, #4
 753 01b4 03F11007 		add	r7, r3, #16
 754              	.L67:
 755 01b8 54F8040F 		ldr	r0, [r4, #4]!
 756 01bc 55F8046B 		ldr	r6, [r5], #4
 757 01c0 07EE900A 		vmov	s15, r0	@ int
 758 01c4 F8EEE77A 		vcvt.f32.s32	s15, s15
 759 01c8 17EE900A 		vmov	r0, s15
 760 01cc FFF7FEFF 		bl	__aeabi_f2d
 761 01d0 0246     		mov	r2, r0
 762 01d2 0B46     		mov	r3, r1
 763 01d4 4046     		mov	r0, r8
 764 01d6 3146     		mov	r1, r6
 765 01d8 FFF7FEFF 		bl	debugPrintf
 766 01dc BC42     		cmp	r4, r7
 767 01de EBD1     		bne	.L67
 768 01e0 0023     		movs	r3, #0
 769              	.L66:
 770 01e2 1846     		mov	r0, r3
 771 01e4 13B0     		add	sp, sp, #76
 772              		@ sp needed
 773 01e6 BDEC048B 		vldm	sp!, {d8-d9}
 774 01ea BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 775              	.L77:
 776 01ee D7ED007A 		vldr.32	s15, [r7]
 777 01f2 9DED0D0A 		vldr.32	s0, [sp, #52]
 778 01f6 20EE270A 		vmul.f32	s0, s0, s15
 779 01fa FFF7FEFF 		bl	lrintf
 780 01fe D7ED017A 		vldr.32	s15, [r7, #4]
 781 0202 219B     		ldr	r3, [sp, #132]
 782 0204 9DED0E0A 		vldr.32	s0, [sp, #56]
 783 0208 1860     		str	r0, [r3]
 784 020a 20EE270A 		vmul.f32	s0, s0, s15
 785 020e FFF7FEFF 		bl	lrintf
 786 0212 D7ED027A 		vldr.32	s15, [r7, #8]
 787 0216 219B     		ldr	r3, [sp, #132]
 788 0218 9DED0F0A 		vldr.32	s0, [sp, #60]
 789 021c 5860     		str	r0, [r3, #4]
 790 021e 20EE270A 		vmul.f32	s0, s0, s15
 791 0222 FFF7FEFF 		bl	lrintf
 792 0226 D7ED037A 		vldr.32	s15, [r7, #12]
 793 022a 219B     		ldr	r3, [sp, #132]
 794 022c 9DED100A 		vldr.32	s0, [sp, #64]
 795 0230 9860     		str	r0, [r3, #8]
 796 0232 20EE270A 		vmul.f32	s0, s0, s15
 797 0236 FFF7FEFF 		bl	lrintf
 798 023a D7ED047A 		vldr.32	s15, [r7, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 15


 799 023e 219B     		ldr	r3, [sp, #132]
 800 0240 9DED110A 		vldr.32	s0, [sp, #68]
 801 0244 D860     		str	r0, [r3, #12]
 802 0246 20EE270A 		vmul.f32	s0, s0, s15
 803 024a FFF7FEFF 		bl	lrintf
 804 024e 219A     		ldr	r2, [sp, #132]
 805 0250 0123     		movs	r3, #1
 806 0252 1061     		str	r0, [r2, #16]
 807 0254 C5E7     		b	.L66
 808              	.L79:
 809 0256 00BF     		.align	2
 810              	.L78:
 811 0258 00000000 		.word	.LANCHOR0
 812 025c 0020B444 		.word	1152655360
 813 0260 00409143 		.word	1133592576
 814 0264 00000000 		.word	.LC15
 815 0268 44000000 		.word	.LC17
 816 026c 24000000 		.word	.LC16
 817 0270 68000000 		.word	.LC18
 818              		.size	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK21HangprinterKinematic
 819              		.section	.text._ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj,"ax",%progbits
 820              		.align	1
 821              		.p2align 2,,3
 822              		.global	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj
 823              		.syntax unified
 824              		.thumb
 825              		.thumb_func
 826              		.fpu fpv4-sp-d16
 827              		.type	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj, %function
 828              	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj:
 829              		@ args = 0, pretend = 0, frame = 0
 830              		@ frame_needed = 0, uses_anonymous_args = 0
 831 0000 10B5     		push	{r4, lr}
 832 0002 00EB8304 		add	r4, r0, r3, lsl #2
 833 0006 D4ED2A7A 		vldr.32	s15, [r4, #168]	@ int
 834 000a 9FED0F7A 		vldr.32	s14, .L82
 835 000e F8EE677A 		vcvt.f32.u32	s15, s15
 836 0012 27EE800A 		vmul.f32	s0, s15, s0
 837 0016 80EE070A 		vdiv.f32	s0, s0, s14
 838 001a FFF7FEFF 		bl	roundf
 839 001e BDEEC07A 		vcvt.s32.f32	s14, s0
 840 0022 D4ED2F5A 		vldr.32	s11, [r4, #188]
 841 0026 94ED116A 		vldr.32	s12, [r4, #68]
 842 002a 94ED340A 		vldr.32	s0, [r4, #208]
 843 002e D4ED396A 		vldr.32	s13, [r4, #228]
 844 0032 B8EEC77A 		vcvt.f32.s32	s14, s14
 845 0036 C7EE257A 		vdiv.f32	s15, s14, s11
 846 003a 77EE867A 		vadd.f32	s15, s15, s12
 847 003e 97EEA70A 		vfnms.f32	s0, s15, s15
 848 0042 80EE260A 		vdiv.f32	s0, s0, s13
 849 0046 10BD     		pop	{r4, pc}
 850              	.L83:
 851              		.align	2
 852              	.L82:
 853 0048 0000B443 		.word	1135869952
 854              		.size	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj, .-_ZN21HangprinterKinematics22Mot
 855              		.section	.text._ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef,"ax",%progbits
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 16


 856              		.align	1
 857              		.p2align 2,,3
 858              		.global	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef
 859              		.syntax unified
 860              		.thumb
 861              		.thumb_func
 862              		.fpu fpv4-sp-d16
 863              		.type	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef, %function
 864              	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef:
 865              		@ args = 4, pretend = 0, frame = 0
 866              		@ frame_needed = 0, uses_anonymous_args = 0
 867 0000 08B5     		push	{r3, lr}
 868 0002 0349     		ldr	r1, .L86
 869 0004 0298     		ldr	r0, [sp, #8]
 870 0006 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 871 000a 0020     		movs	r0, #0
 872 000c 08BD     		pop	{r3, pc}
 873              	.L87:
 874 000e 00BF     		.align	2
 875              	.L86:
 876 0010 00000000 		.word	.LC19
 877              		.size	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef, .-_ZNK21HangprinterKinematic
 878              		.section	.text._ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 879              		.align	1
 880              		.p2align 2,,3
 881              		.global	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf
 882              		.syntax unified
 883              		.thumb
 884              		.thumb_func
 885              		.fpu fpv4-sp-d16
 886              		.type	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 887              	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 888              		@ args = 0, pretend = 0, frame = 8
 889              		@ frame_needed = 0, uses_anonymous_args = 0
 890 0000 92ED010A 		vldr.32	s0, [r2, #4]
 891 0004 D2ED007A 		vldr.32	s15, [r2]
 892 0008 00B5     		push	{lr}
 893 000a 20EE000A 		vmul.f32	s0, s0, s0
 894 000e 2DED028B 		vpush.64	{d8}
 895 0012 A7EEA70A 		vfma.f32	s0, s15, s15
 896 0016 83B0     		sub	sp, sp, #12
 897 0018 B5EE400A 		vcmp.f32	s0, #0
 898 001c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 899 0020 B1EEC08A 		vsqrt.f32	s16, s0
 900 0024 39D4     		bmi	.L97
 901              	.L89:
 902 0026 DFED1F7A 		vldr.32	s15, .L98
 903 002a B4EEE78A 		vcmpe.f32	s16, s15
 904 002e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 905 0032 2DDD     		ble	.L95
 906 0034 1C4B     		ldr	r3, .L98+4
 907 0036 5B68     		ldr	r3, [r3, #4]	@ unaligned
 908 0038 93ED5F0A 		vldr.32	s0, [r3, #380]
 909 003c D3ED607A 		vldr.32	s15, [r3, #384]
 910 0040 B4EE400A 		vcmp.f32	s0, s0
 911 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 912 0048 06D6     		bvs	.L92
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 17


 913 004a B4EEE70A 		vcmpe.f32	s0, s15
 914 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 915 0052 58BF     		it	pl
 916 0054 B0EE670A 		vmovpl.f32	s0, s15
 917              	.L92:
 918 0058 D3ED6B0A 		vldr.32	s1, [r3, #428]
 919 005c D3ED6C7A 		vldr.32	s15, [r3, #432]
 920 0060 F4EE600A 		vcmp.f32	s1, s1
 921 0064 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 922 0068 06D6     		bvs	.L93
 923 006a F4EEE70A 		vcmpe.f32	s1, s15
 924 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 925 0072 58BF     		it	pl
 926 0074 F0EE670A 		vmovpl.f32	s1, s15
 927              	.L93:
 928 0078 C0EE880A 		vdiv.f32	s1, s1, s16
 929 007c 0846     		mov	r0, r1
 930 007e 80EE080A 		vdiv.f32	s0, s0, s16
 931 0082 03B0     		add	sp, sp, #12
 932              		@ sp needed
 933 0084 BDEC028B 		vldm	sp!, {d8}
 934 0088 5DF804EB 		ldr	lr, [sp], #4
 935 008c FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 936              	.L95:
 937 0090 03B0     		add	sp, sp, #12
 938              		@ sp needed
 939 0092 BDEC028B 		vldm	sp!, {d8}
 940 0096 5DF804FB 		ldr	pc, [sp], #4
 941              	.L97:
 942 009a 0191     		str	r1, [sp, #4]
 943 009c FFF7FEFF 		bl	sqrtf
 944 00a0 0199     		ldr	r1, [sp, #4]
 945 00a2 C0E7     		b	.L89
 946              	.L99:
 947              		.align	2
 948              	.L98:
 949 00a4 0AD7233C 		.word	1008981770
 950 00a8 00000000 		.word	reprap
 951              		.size	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK21HangprinterKinemati
 952              		.section	.text._ZN21HangprinterKinematicsD0Ev,"axG",%progbits,_ZN21HangprinterKinematicsD5Ev,comda
 953              		.align	1
 954              		.p2align 2,,3
 955              		.weak	_ZN21HangprinterKinematicsD0Ev
 956              		.syntax unified
 957              		.thumb
 958              		.thumb_func
 959              		.fpu fpv4-sp-d16
 960              		.type	_ZN21HangprinterKinematicsD0Ev, %function
 961              	_ZN21HangprinterKinematicsD0Ev:
 962              		@ args = 0, pretend = 0, frame = 0
 963              		@ frame_needed = 0, uses_anonymous_args = 0
 964 0000 10B5     		push	{r4, lr}
 965 0002 4FF4AE71 		mov	r1, #348
 966 0006 0446     		mov	r4, r0
 967 0008 FFF7FEFF 		bl	_ZdlPvj
 968 000c 2046     		mov	r0, r4
 969 000e 10BD     		pop	{r4, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 18


 970              		.size	_ZN21HangprinterKinematicsD0Ev, .-_ZN21HangprinterKinematicsD0Ev
 971              		.section	.text._ZN11FixedMatrixIdLj32ELj3EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EED5Ev,c
 972              		.align	1
 973              		.p2align 2,,3
 974              		.weak	_ZN11FixedMatrixIdLj32ELj3EED0Ev
 975              		.syntax unified
 976              		.thumb
 977              		.thumb_func
 978              		.fpu fpv4-sp-d16
 979              		.type	_ZN11FixedMatrixIdLj32ELj3EED0Ev, %function
 980              	_ZN11FixedMatrixIdLj32ELj3EED0Ev:
 981              		@ args = 0, pretend = 0, frame = 0
 982              		@ frame_needed = 0, uses_anonymous_args = 0
 983 0000 10B5     		push	{r4, lr}
 984 0002 4FF44271 		mov	r1, #776
 985 0006 0446     		mov	r4, r0
 986 0008 FFF7FEFF 		bl	_ZdlPvj
 987 000c 2046     		mov	r0, r4
 988 000e 10BD     		pop	{r4, pc}
 989              		.size	_ZN11FixedMatrixIdLj32ELj3EED0Ev, .-_ZN11FixedMatrixIdLj32ELj3EED0Ev
 990              		.section	.text._ZN11FixedMatrixIdLj32ELj9EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EED5Ev,c
 991              		.align	1
 992              		.p2align 2,,3
 993              		.weak	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 994              		.syntax unified
 995              		.thumb
 996              		.thumb_func
 997              		.fpu fpv4-sp-d16
 998              		.type	_ZN11FixedMatrixIdLj32ELj9EED0Ev, %function
 999              	_ZN11FixedMatrixIdLj32ELj9EED0Ev:
 1000              		@ args = 0, pretend = 0, frame = 0
 1001              		@ frame_needed = 0, uses_anonymous_args = 0
 1002 0000 10B5     		push	{r4, lr}
 1003 0002 40F60811 		movw	r1, #2312
 1004 0006 0446     		mov	r4, r0
 1005 0008 FFF7FEFF 		bl	_ZdlPvj
 1006 000c 2046     		mov	r0, r4
 1007 000e 10BD     		pop	{r4, pc}
 1008              		.size	_ZN11FixedMatrixIdLj32ELj9EED0Ev, .-_ZN11FixedMatrixIdLj32ELj9EED0Ev
 1009              		.section	.text._ZN11FixedMatrixIdLj9ELj10EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EED5Ev,c
 1010              		.align	1
 1011              		.p2align 2,,3
 1012              		.weak	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 1013              		.syntax unified
 1014              		.thumb
 1015              		.thumb_func
 1016              		.fpu fpv4-sp-d16
 1017              		.type	_ZN11FixedMatrixIdLj9ELj10EED0Ev, %function
 1018              	_ZN11FixedMatrixIdLj9ELj10EED0Ev:
 1019              		@ args = 0, pretend = 0, frame = 0
 1020              		@ frame_needed = 0, uses_anonymous_args = 0
 1021 0000 10B5     		push	{r4, lr}
 1022 0002 4FF43671 		mov	r1, #728
 1023 0006 0446     		mov	r4, r0
 1024 0008 FFF7FEFF 		bl	_ZdlPvj
 1025 000c 2046     		mov	r0, r4
 1026 000e 10BD     		pop	{r4, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 19


 1027              		.size	_ZN11FixedMatrixIdLj9ELj10EED0Ev, .-_ZN11FixedMatrixIdLj9ELj10EED0Ev
 1028              		.section	.text._ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore,"ax",%progbits
 1029              		.align	1
 1030              		.p2align 2,,3
 1031              		.global	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore
 1032              		.syntax unified
 1033              		.thumb
 1034              		.thumb_func
 1035              		.fpu fpv4-sp-d16
 1036              		.type	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore, %function
 1037              	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore:
 1038              		@ args = 0, pretend = 0, frame = 0
 1039              		@ frame_needed = 0, uses_anonymous_args = 0
 1040              		@ link register save eliminated.
 1041 0000 90F85821 		ldrb	r2, [r0, #344]	@ zero_extendqisi2
 1042 0004 0AB9     		cbnz	r2, .L110
 1043 0006 0120     		movs	r0, #1
 1044 0008 7047     		bx	lr
 1045              	.L110:
 1046 000a 0368     		ldr	r3, [r0]
 1047 000c DB69     		ldr	r3, [r3, #28]
 1048 000e 1847     		bx	r3
 1049              		.size	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore, .-_ZNK21HangprinterKinematics1
 1050              		.section	.text._ZNK21HangprinterKinematics13LimitPositionEPfjmb,"ax",%progbits
 1051              		.align	1
 1052              		.p2align 2,,3
 1053              		.global	_ZNK21HangprinterKinematics13LimitPositionEPfjmb
 1054              		.syntax unified
 1055              		.thumb
 1056              		.thumb_func
 1057              		.fpu fpv4-sp-d16
 1058              		.type	_ZNK21HangprinterKinematics13LimitPositionEPfjmb, %function
 1059              	_ZNK21HangprinterKinematics13LimitPositionEPfjmb:
 1060              		@ args = 4, pretend = 0, frame = 8
 1061              		@ frame_needed = 0, uses_anonymous_args = 0
 1062 0000 03F00703 		and	r3, r3, #7
 1063 0004 072B     		cmp	r3, #7
 1064 0006 01D0     		beq	.L131
 1065 0008 0020     		movs	r0, #0
 1066 000a 7047     		bx	lr
 1067              	.L131:
 1068 000c D1ED016A 		vldr.32	s13, [r1, #4]
 1069 0010 91ED007A 		vldr.32	s14, [r1]
 1070 0014 90ED436A 		vldr.32	s12, [r0, #268]
 1071 0018 00B5     		push	{lr}
 1072 001a 66EEA67A 		vmul.f32	s15, s13, s13
 1073 001e 2DED028B 		vpush.64	{d8}
 1074 0022 E7EE077A 		vfma.f32	s15, s14, s14
 1075 0026 83B0     		sub	sp, sp, #12
 1076 0028 F4EEC67A 		vcmpe.f32	s15, s12
 1077 002c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1078 0030 1EDC     		bgt	.L132
 1079 0032 0020     		movs	r0, #0
 1080              	.L113:
 1081 0034 1C4B     		ldr	r3, .L134
 1082 0036 D1ED027A 		vldr.32	s15, [r1, #8]
 1083 003a 5B68     		ldr	r3, [r3, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 20


 1084 003c 03F5F962 		add	r2, r3, #1992
 1085 0040 92ED007A 		vldr.32	s14, [r2]
 1086 0044 F4EEC77A 		vcmpe.f32	s15, s14
 1087 0048 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1088 004c 08D4     		bmi	.L130
 1089 004e 03F2A473 		addw	r3, r3, #1956
 1090 0052 93ED007A 		vldr.32	s14, [r3]
 1091 0056 F4EEC77A 		vcmpe.f32	s15, s14
 1092 005a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1093 005e 02DD     		ble	.L112
 1094              	.L130:
 1095 0060 81ED027A 		vstr.32	s14, [r1, #8]
 1096 0064 0120     		movs	r0, #1
 1097              	.L112:
 1098 0066 03B0     		add	sp, sp, #12
 1099              		@ sp needed
 1100 0068 BDEC028B 		vldm	sp!, {d8}
 1101 006c 5DF804FB 		ldr	pc, [sp], #4
 1102              	.L132:
 1103 0070 86EE270A 		vdiv.f32	s0, s12, s15
 1104 0074 B5EE400A 		vcmp.f32	s0, #0
 1105 0078 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1106 007c B1EEC08A 		vsqrt.f32	s16, s0
 1107 0080 09D4     		bmi	.L133
 1108              	.L115:
 1109 0082 0120     		movs	r0, #1
 1110 0084 28EE077A 		vmul.f32	s14, s16, s14
 1111 0088 68EE266A 		vmul.f32	s13, s16, s13
 1112 008c 81ED007A 		vstr.32	s14, [r1]
 1113 0090 C1ED016A 		vstr.32	s13, [r1, #4]
 1114 0094 CEE7     		b	.L113
 1115              	.L133:
 1116 0096 0191     		str	r1, [sp, #4]
 1117 0098 FFF7FEFF 		bl	sqrtf
 1118 009c 0199     		ldr	r1, [sp, #4]
 1119 009e 91ED007A 		vldr.32	s14, [r1]
 1120 00a2 D1ED016A 		vldr.32	s13, [r1, #4]
 1121 00a6 ECE7     		b	.L115
 1122              	.L135:
 1123              		.align	2
 1124              	.L134:
 1125 00a8 00000000 		.word	reprap
 1126              		.size	_ZNK21HangprinterKinematics13LimitPositionEPfjmb, .-_ZNK21HangprinterKinematics13LimitPositi
 1127              		.section	.text._Z14elongationCalcf,"ax",%progbits
 1128              		.align	1
 1129              		.p2align 2,,3
 1130              		.global	_Z14elongationCalcf
 1131              		.syntax unified
 1132              		.thumb
 1133              		.thumb_func
 1134              		.fpu fpv4-sp-d16
 1135              		.type	_Z14elongationCalcf, %function
 1136              	_Z14elongationCalcf:
 1137              		@ args = 0, pretend = 0, frame = 0
 1138              		@ frame_needed = 0, uses_anonymous_args = 0
 1139              		@ link register save eliminated.
 1140 0000 DFED087A 		vldr.32	s15, .L137
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 21


 1141 0004 9FED086A 		vldr.32	s12, .L137+4
 1142 0008 DFED086A 		vldr.32	s13, .L137+8
 1143 000c 70EE277A 		vadd.f32	s15, s0, s15
 1144 0010 B0EE087A 		vmov.f32	s14, #3.0e+0
 1145 0014 27EE877A 		vmul.f32	s14, s15, s14
 1146 0018 87EE060A 		vdiv.f32	s0, s14, s12
 1147 001c A7EEA60A 		vfma.f32	s0, s15, s13
 1148 0020 7047     		bx	lr
 1149              	.L138:
 1150 0022 00BF     		.align	2
 1151              	.L137:
 1152 0024 3D52F244 		.word	1156731453
 1153 0028 E69E9A46 		.word	1184538342
 1154 002c 0AD7233B 		.word	992204554
 1155              		.size	_Z14elongationCalcf, .-_Z14elongationCalcf
 1156              		.section	.text._ZN21HangprinterKinematics6RecalcEv,"ax",%progbits
 1157              		.align	1
 1158              		.p2align 2,,3
 1159              		.global	_ZN21HangprinterKinematics6RecalcEv
 1160              		.syntax unified
 1161              		.thumb
 1162              		.thumb_func
 1163              		.fpu fpv4-sp-d16
 1164              		.type	_ZN21HangprinterKinematics6RecalcEv, %function
 1165              	_ZN21HangprinterKinematics6RecalcEv:
 1166              		@ args = 0, pretend = 0, frame = 8
 1167              		@ frame_needed = 0, uses_anonymous_args = 0
 1168 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1169 0004 D0ED045A 		vldr.32	s11, [r0, #16]
 1170 0008 90ED055A 		vldr.32	s10, [r0, #20]
 1171 000c D0ED0B4A 		vldr.32	s9, [r0, #44]
 1172 0010 90ED066A 		vldr.32	s12, [r0, #24]
 1173 0014 90ED0C2A 		vldr.32	s4, [r0, #48]
 1174 0018 90ED084A 		vldr.32	s8, [r0, #32]
 1175 001c D0ED0A3A 		vldr.32	s7, [r0, #40]
 1176 0020 D0ED092A 		vldr.32	s5, [r0, #36]
 1177 0024 836B     		ldr	r3, [r0, #56]	@ float
 1178 0026 2DED068B 		vpush.64	{d8, d9, d10}
 1179 002a 34EEC51A 		vsub.f32	s2, s9, s10
 1180 002e D0ED078A 		vldr.32	s17, [r0, #28]
 1181 0032 90ED0FAA 		vldr.32	s20, [r0, #60]
 1182 0036 80ED4C1A 		vstr.32	s2, [r0, #304]
 1183 003a 24EEE57A 		vnmul.f32	s14, s9, s11
 1184 003e 72EE461A 		vsub.f32	s3, s4, s12
 1185 0042 62EE456A 		vnmul.f32	s13, s4, s10
 1186 0046 A8EE817A 		vfma.f32	s14, s17, s2
 1187 004a A5B0     		sub	sp, sp, #148
 1188 004c 0446     		mov	r4, r0
 1189 004e E4EE216A 		vfma.f32	s13, s8, s3
 1190 0052 A5EE237A 		vfma.f32	s14, s10, s7
 1191 0056 65EE827A 		vmul.f32	s15, s11, s4
 1192 005a E6EE246A 		vfma.f32	s13, s12, s9
 1193 005e 73EEE50A 		vsub.f32	s1, s7, s11
 1194 0062 E8EEA17A 		vfma.f32	s15, s17, s3
 1195 0066 B1EE623A 		vneg.f32	s6, s5
 1196 006a A4EE607A 		vfms.f32	s14, s8, s1
 1197 006e E3EE016A 		vfma.f32	s13, s6, s2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 22


 1198 0072 E6EE237A 		vfma.f32	s15, s12, s7
 1199 0076 37EE077A 		vadd.f32	s14, s14, s14
 1200 007a 76EEA66A 		vadd.f32	s13, s13, s13
 1201 007e 27EE079A 		vmul.f32	s18, s14, s14
 1202 0082 E3EE207A 		vfma.f32	s15, s6, s1
 1203 0086 65EEA6AA 		vmul.f32	s21, s11, s13
 1204 008a 25EE050A 		vmul.f32	s0, s10, s10
 1205 008e B0EE498A 		vmov.f32	s16, s18
 1206 0092 64EEA49A 		vmul.f32	s19, s9, s9
 1207 0096 24EE043A 		vmul.f32	s6, s8, s8
 1208 009a A5EEA50A 		vfma.f32	s0, s11, s11
 1209 009e 6AEE87AA 		vmul.f32	s21, s21, s14
 1210 00a2 A6EEA68A 		vfma.f32	s16, s13, s13
 1211 00a6 F1EE677A 		vneg.f32	s15, s15
 1212 00aa 77EEA77A 		vadd.f32	s15, s15, s15
 1213 00ae E6EE09AA 		vfma.f32	s21, s12, s18
 1214 00b2 E3EEA39A 		vfma.f32	s19, s7, s7
 1215 00b6 A8EEA83A 		vfma.f32	s6, s17, s17
 1216 00ba A6EE060A 		vfma.f32	s0, s12, s12
 1217 00be 74EE644A 		vsub.f32	s9, s8, s9
 1218 00c2 A7EEA78A 		vfma.f32	s16, s15, s15
 1219 00c6 35EE444A 		vsub.f32	s8, s10, s8
 1220 00ca 25EE275A 		vmul.f32	s10, s10, s15
 1221 00ce A2EEA23A 		vfma.f32	s6, s5, s5
 1222 00d2 E2EE029A 		vfma.f32	s19, s4, s4
 1223 00d6 E7EE05AA 		vfma.f32	s21, s14, s10
 1224 00da 36EE626A 		vsub.f32	s12, s12, s5
 1225 00de 38EE088A 		vadd.f32	s16, s16, s16
 1226 00e2 2AEE0AAA 		vmul.f32	s20, s20, s20
 1227 00e6 78EEE33A 		vsub.f32	s7, s17, s7
 1228 00ea 75EEE85A 		vsub.f32	s11, s11, s17
 1229 00ee 72EEC22A 		vsub.f32	s5, s5, s4
 1230 00f2 B5EE400A 		vcmp.f32	s0, #0
 1231 00f6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1232 00fa 80ED558A 		vstr.32	s16, [r0, #340]
 1233 00fe 80ED43AA 		vstr.32	s20, [r0, #268]
 1234 0102 C0ED469A 		vstr.32	s19, [r0, #280]
 1235 0106 C0ED475A 		vstr.32	s11, [r0, #284]
 1236 010a C0ED483A 		vstr.32	s7, [r0, #288]
 1237 010e 80ED4A4A 		vstr.32	s8, [r0, #296]
 1238 0112 C0ED4B4A 		vstr.32	s9, [r0, #300]
 1239 0116 80ED4D6A 		vstr.32	s12, [r0, #308]
 1240 011a C0ED4E2A 		vstr.32	s5, [r0, #312]
 1241 011e 80ED507A 		vstr.32	s14, [r0, #320]
 1242 0122 C0ED490A 		vstr.32	s1, [r0, #292]
 1243 0126 80ED539A 		vstr.32	s18, [r0, #332]
 1244 012a C0ED4F1A 		vstr.32	s3, [r0, #316]
 1245 012e C0ED527A 		vstr.32	s15, [r0, #328]
 1246 0132 C0ED516A 		vstr.32	s13, [r0, #324]
 1247 0136 80ED453A 		vstr.32	s6, [r0, #276]
 1248 013a C0ED54AA 		vstr.32	s21, [r0, #336]
 1249 013e 80ED440A 		vstr.32	s0, [r0, #272]
 1250 0142 B1EEC08A 		vsqrt.f32	s16, s0
 1251 0146 C0F8F830 		str	r3, [r0, #248]	@ float
 1252 014a 00F11E81 		bmi	.L151
 1253              	.L140:
 1254 014e B5EE403A 		vcmp.f32	s6, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 23


 1255 0152 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1256 0156 84ED3F8A 		vstr.32	s16, [r4, #252]
 1257 015a B1EEC38A 		vsqrt.f32	s16, s6
 1258 015e 00F12881 		bmi	.L152
 1259              	.L141:
 1260 0162 94ED0B0A 		vldr.32	s0, [r4, #44]
 1261 0166 94ED0A7A 		vldr.32	s14, [r4, #40]
 1262 016a D4ED0C7A 		vldr.32	s15, [r4, #48]
 1263 016e 84ED408A 		vstr.32	s16, [r4, #256]
 1264 0172 20EE000A 		vmul.f32	s0, s0, s0
 1265 0176 A7EE070A 		vfma.f32	s0, s14, s14
 1266 017a A7EEA70A 		vfma.f32	s0, s15, s15
 1267 017e B5EE400A 		vcmp.f32	s0, #0
 1268 0182 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1269 0186 B1EEC08A 		vsqrt.f32	s16, s0
 1270 018a 00F10F81 		bmi	.L153
 1271              	.L142:
 1272 018e 636B     		ldr	r3, [r4, #52]	@ float
 1273 0190 8A4F     		ldr	r7, .L154
 1274 0192 C4F80831 		str	r3, [r4, #264]	@ float
 1275 0196 04F1F805 		add	r5, r4, #248
 1276 019a 04F58676 		add	r6, r4, #268
 1277 019e 84ED418A 		vstr.32	s16, [r4, #260]
 1278              	.L143:
 1279 01a2 55F8040B 		ldr	r0, [r5], #4	@ float
 1280 01a6 FFF7FEFF 		bl	__aeabi_f2d
 1281 01aa 0246     		mov	r2, r0
 1282 01ac 0B46     		mov	r3, r1
 1283 01ae 3846     		mov	r0, r7
 1284 01b0 FFF7FEFF 		bl	debugPrintf
 1285 01b4 AE42     		cmp	r6, r5
 1286 01b6 F4D1     		bne	.L143
 1287 01b8 814B     		ldr	r3, .L154+4
 1288 01ba 8248     		ldr	r0, .L154+8
 1289 01bc 5F68     		ldr	r7, [r3, #4]
 1290 01be DFF81CA2 		ldr	r10, .L154+32
 1291 01c2 DFED818A 		vldr.32	s17, .L154+12
 1292 01c6 FFF7FEFF 		bl	debugPrintf
 1293 01ca 3E46     		mov	r6, r7
 1294 01cc 07F5EE7B 		add	fp, r7, #476
 1295 01d0 07F5F878 		add	r8, r7, #496
 1296 01d4 04F14405 		add	r5, r4, #68
 1297              	.L146:
 1298 01d8 5046     		mov	r0, r10
 1299 01da FFF7FEFF 		bl	debugPrintf
 1300 01de 7B48     		ldr	r0, .L154+16
 1301 01e0 96F83093 		ldrb	r9, [r6, #816]	@ zero_extendqisi2
 1302 01e4 FFF7FEFF 		bl	debugPrintf
 1303 01e8 D5ED057A 		vldr.32	s15, [r5, #20]	@ int
 1304 01ec B8EE677A 		vcvt.f32.u32	s14, s15
 1305 01f0 D5ED197A 		vldr.32	s15, [r5, #100]	@ int
 1306 01f4 B8EE678A 		vcvt.f32.u32	s16, s15
 1307 01f8 4946     		mov	r1, r9
 1308 01fa 0DF18F02 		add	r2, sp, #143
 1309 01fe 3846     		mov	r0, r7
 1310 0200 27EE088A 		vmul.f32	s16, s14, s16
 1311 0204 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 24


 1312 0208 07EE900A 		vmov	s15, r0	@ int
 1313 020c B8EE677A 		vcvt.f32.u32	s14, s15
 1314 0210 D5ED147A 		vldr.32	s15, [r5, #80]	@ int
 1315 0214 6E48     		ldr	r0, .L154+20
 1316 0216 F8EE676A 		vcvt.f32.u32	s13, s15
 1317 021a D5ED0F7A 		vldr.32	s15, [r5, #60]	@ int
 1318 021e 27EE087A 		vmul.f32	s14, s14, s16
 1319 0222 F8EE677A 		vcvt.f32.u32	s15, s15
 1320 0226 27EE267A 		vmul.f32	s14, s14, s13
 1321 022a 67EEA87A 		vmul.f32	s15, s15, s17
 1322 022e 0C36     		adds	r6, r6, #12
 1323 0230 87EE278A 		vdiv.f32	s16, s14, s15
 1324 0234 FFF7FEFF 		bl	debugPrintf
 1325 0238 6A69     		ldr	r2, [r5, #20]
 1326 023a AB6A     		ldr	r3, [r5, #40]
 1327 023c 6548     		ldr	r0, .L154+24
 1328 023e 03FB02F3 		mul	r3, r3, r2
 1329 0242 07EE903A 		vmov	s15, r3	@ int
 1330 0246 94ED107A 		vldr.32	s14, [r4, #64]
 1331 024a F8EE677A 		vcvt.f32.u32	s15, s15
 1332 024e 78EE086A 		vadd.f32	s13, s16, s16
 1333 0252 67EEC77A 		vnmul.f32	s15, s15, s14
 1334 0256 86EEA77A 		vdiv.f32	s14, s13, s15
 1335 025a C5ED287A 		vstr.32	s15, [r5, #160]
 1336 025e 85ED1E7A 		vstr.32	s14, [r5, #120]
 1337 0262 F5EC017A 		vldmia.32	r5!, {s15}
 1338 0266 67EEA77A 		vmul.f32	s15, s15, s15
 1339 026a C5ED227A 		vstr.32	s15, [r5, #136]
 1340 026e FFF7FEFF 		bl	debugPrintf
 1341 0272 15ED017A 		vldr.32	s14, [r5, #-4]
 1342 0276 C8EE077A 		vdiv.f32	s15, s16, s14
 1343 027a B7EE007A 		vmov.f32	s14, #1.0e+0
 1344 027e F4EE677A 		vcmp.f32	s15, s15
 1345 0282 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1346 0286 06D6     		bvs	.L144
 1347 0288 F4EEC77A 		vcmpe.f32	s15, s14
 1348 028c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1349 0290 D8BF     		it	le
 1350 0292 F0EE477A 		vmovle.f32	s15, s14
 1351              	.L144:
 1352 0296 EBEC017A 		vstmia.32	fp!, {s15}
 1353 029a C345     		cmp	fp, r8
 1354 029c 9CD1     		bne	.L146
 1355 029e D4F81001 		ldr	r0, [r4, #272]	@ float
 1356 02a2 FFF7FEFF 		bl	__aeabi_f2d
 1357 02a6 0646     		mov	r6, r0
 1358 02a8 D4F85401 		ldr	r0, [r4, #340]	@ float
 1359 02ac 0F46     		mov	r7, r1
 1360 02ae FFF7FEFF 		bl	__aeabi_f2d
 1361 02b2 CDE92001 		strd	r0, [sp, #128]
 1362 02b6 D4F85001 		ldr	r0, [r4, #336]	@ float
 1363 02ba FFF7FEFF 		bl	__aeabi_f2d
 1364 02be CDE91E01 		strd	r0, [sp, #120]
 1365 02c2 D4F84801 		ldr	r0, [r4, #328]	@ float
 1366 02c6 FFF7FEFF 		bl	__aeabi_f2d
 1367 02ca CDE91C01 		strd	r0, [sp, #112]
 1368 02ce D4F84401 		ldr	r0, [r4, #324]	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 25


 1369 02d2 FFF7FEFF 		bl	__aeabi_f2d
 1370 02d6 CDE91A01 		strd	r0, [sp, #104]
 1371 02da D4F84C01 		ldr	r0, [r4, #332]	@ float
 1372 02de FFF7FEFF 		bl	__aeabi_f2d
 1373 02e2 CDE91801 		strd	r0, [sp, #96]
 1374 02e6 D4F84001 		ldr	r0, [r4, #320]	@ float
 1375 02ea FFF7FEFF 		bl	__aeabi_f2d
 1376 02ee CDE91601 		strd	r0, [sp, #88]
 1377 02f2 D4F83C01 		ldr	r0, [r4, #316]	@ float
 1378 02f6 FFF7FEFF 		bl	__aeabi_f2d
 1379 02fa CDE91401 		strd	r0, [sp, #80]
 1380 02fe D4F83801 		ldr	r0, [r4, #312]	@ float
 1381 0302 FFF7FEFF 		bl	__aeabi_f2d
 1382 0306 CDE91201 		strd	r0, [sp, #72]
 1383 030a D4F83401 		ldr	r0, [r4, #308]	@ float
 1384 030e FFF7FEFF 		bl	__aeabi_f2d
 1385 0312 CDE91001 		strd	r0, [sp, #64]
 1386 0316 D4F83001 		ldr	r0, [r4, #304]	@ float
 1387 031a FFF7FEFF 		bl	__aeabi_f2d
 1388 031e CDE90E01 		strd	r0, [sp, #56]
 1389 0322 D4F82C01 		ldr	r0, [r4, #300]	@ float
 1390 0326 FFF7FEFF 		bl	__aeabi_f2d
 1391 032a CDE90C01 		strd	r0, [sp, #48]
 1392 032e D4F82801 		ldr	r0, [r4, #296]	@ float
 1393 0332 FFF7FEFF 		bl	__aeabi_f2d
 1394 0336 CDE90A01 		strd	r0, [sp, #40]
 1395 033a D4F82401 		ldr	r0, [r4, #292]	@ float
 1396 033e FFF7FEFF 		bl	__aeabi_f2d
 1397 0342 CDE90801 		strd	r0, [sp, #32]
 1398 0346 D4F82001 		ldr	r0, [r4, #288]	@ float
 1399 034a FFF7FEFF 		bl	__aeabi_f2d
 1400 034e CDE90601 		strd	r0, [sp, #24]
 1401 0352 D4F81C01 		ldr	r0, [r4, #284]	@ float
 1402 0356 FFF7FEFF 		bl	__aeabi_f2d
 1403 035a CDE90401 		strd	r0, [sp, #16]
 1404 035e D4F81801 		ldr	r0, [r4, #280]	@ float
 1405 0362 FFF7FEFF 		bl	__aeabi_f2d
 1406 0366 CDE90201 		strd	r0, [sp, #8]
 1407 036a D4F81401 		ldr	r0, [r4, #276]	@ float
 1408 036e FFF7FEFF 		bl	__aeabi_f2d
 1409 0372 3246     		mov	r2, r6
 1410 0374 CDE90001 		strd	r0, [sp]
 1411 0378 3B46     		mov	r3, r7
 1412 037a 1748     		ldr	r0, .L154+28
 1413 037c FFF7FEFF 		bl	debugPrintf
 1414 0380 25B0     		add	sp, sp, #148
 1415              		@ sp needed
 1416 0382 BDEC068B 		vldm	sp!, {d8-d10}
 1417 0386 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1418              	.L151:
 1419 038a FFF7FEFF 		bl	sqrtf
 1420 038e D4ED087A 		vldr.32	s15, [r4, #32]
 1421 0392 D4ED076A 		vldr.32	s13, [r4, #28]
 1422 0396 94ED097A 		vldr.32	s14, [r4, #36]
 1423 039a 67EEA77A 		vmul.f32	s15, s15, s15
 1424 039e E6EEA67A 		vfma.f32	s15, s13, s13
 1425 03a2 B0EE673A 		vmov.f32	s6, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 26


 1426 03a6 A7EE073A 		vfma.f32	s6, s14, s14
 1427 03aa D0E6     		b	.L140
 1428              	.L153:
 1429 03ac FFF7FEFF 		bl	sqrtf
 1430 03b0 EDE6     		b	.L142
 1431              	.L152:
 1432 03b2 B0EE430A 		vmov.f32	s0, s6
 1433 03b6 FFF7FEFF 		bl	sqrtf
 1434 03ba D2E6     		b	.L141
 1435              	.L155:
 1436              		.align	2
 1437              	.L154:
 1438 03bc 00000000 		.word	.LC20
 1439 03c0 00000000 		.word	reprap
 1440 03c4 24000000 		.word	.LC21
 1441 03c8 DB0FC940 		.word	1086918619
 1442 03cc 58000000 		.word	.LC23
 1443 03d0 6C000000 		.word	.LC24
 1444 03d4 98000000 		.word	.LC25
 1445 03d8 C0000000 		.word	.LC26
 1446 03dc 40000000 		.word	.LC22
 1447              		.size	_ZN21HangprinterKinematics6RecalcEv, .-_ZN21HangprinterKinematics6RecalcEv
 1448              		.section	.text._ZN21HangprinterKinematics4InitEv,"ax",%progbits
 1449              		.align	1
 1450              		.p2align 2,,3
 1451              		.global	_ZN21HangprinterKinematics4InitEv
 1452              		.syntax unified
 1453              		.thumb
 1454              		.thumb_func
 1455              		.fpu fpv4-sp-d16
 1456              		.type	_ZN21HangprinterKinematics4InitEv, %function
 1457              	_ZN21HangprinterKinematics4InitEv:
 1458              		@ args = 0, pretend = 0, frame = 128
 1459              		@ frame_needed = 0, uses_anonymous_args = 0
 1460 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1461 0004 554D     		ldr	r5, .L161
 1462 0006 DFF87891 		ldr	r9, .L161+36
 1463 000a 0446     		mov	r4, r0
 1464 000c 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1465 000e 2E46     		mov	r6, r5
 1466 0010 A1B0     		sub	sp, sp, #132
 1467 0012 56F804BB 		ldr	fp, [r6], #4
 1468 0016 0DF1080E 		add	lr, sp, #8
 1469 001a AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 1470 001e 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1471 0020 05F11808 		add	r8, r5, #24
 1472 0024 0DF11C0C 		add	ip, sp, #28
 1473 0028 ACE80F00 		stmia	ip!, {r0, r1, r2, r3}
 1474 002c B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 1475 0030 0CAF     		add	r7, sp, #48
 1476 0032 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 1477 0034 D6F800A0 		ldr	r10, [r6]
 1478 0038 D8F80030 		ldr	r3, [r8]
 1479 003c CEF800B0 		str	fp, [lr]
 1480 0040 05F12C08 		add	r8, r5, #44
 1481 0044 CCF800A0 		str	r10, [ip]
 1482 0048 3B60     		str	r3, [r7]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 27


 1483 004a 0193     		str	r3, [sp, #4]
 1484 004c B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 1485 0050 05F1400E 		add	lr, r5, #64
 1486 0054 0DF1440C 		add	ip, sp, #68
 1487 0058 ACE80F00 		stmia	ip!, {r0, r1, r2, r3}
 1488 005c BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 1489 0060 5435     		adds	r5, r5, #84
 1490 0062 16AF     		add	r7, sp, #88
 1491 0064 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 1492 0066 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1493 0068 1BAE     		add	r6, sp, #108
 1494 006a 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 1495 006c B9E80700 		ldmia	r9!, {r0, r1, r2}
 1496 0070 3B4B     		ldr	r3, .L161+4
 1497 0072 D8F80080 		ldr	r8, [r8]
 1498 0076 DEF800E0 		ldr	lr, [lr]
 1499 007a 2D68     		ldr	r5, [r5]
 1500 007c C7F800E0 		str	lr, [r7]
 1501 0080 CCF80080 		str	r8, [ip]
 1502 0084 3560     		str	r5, [r6]
 1503 0086 2061     		str	r0, [r4, #16]	@ unaligned
 1504 0088 6161     		str	r1, [r4, #20]	@ unaligned
 1505 008a A261     		str	r2, [r4, #24]	@ unaligned
 1506 008c 07CB     		ldmia	r3!, {r0, r1, r2}
 1507 008e 354B     		ldr	r3, .L161+8
 1508 0090 E061     		str	r0, [r4, #28]	@ unaligned
 1509 0092 2162     		str	r1, [r4, #32]	@ unaligned
 1510 0094 6262     		str	r2, [r4, #36]	@ unaligned
 1511 0096 07CB     		ldmia	r3!, {r0, r1, r2}
 1512 0098 02AE     		add	r6, sp, #8
 1513 009a A062     		str	r0, [r4, #40]	@ unaligned
 1514 009c E162     		str	r1, [r4, #44]	@ unaligned
 1515 009e 2263     		str	r2, [r4, #48]	@ unaligned
 1516 00a0 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1517 00a2 314E     		ldr	r6, .L161+12
 1518 00a4 6663     		str	r6, [r4, #52]	@ float
 1519 00a6 314E     		ldr	r6, .L161+16
 1520 00a8 E663     		str	r6, [r4, #60]	@ float
 1521 00aa 4FF07E56 		mov	r6, #1065353216
 1522 00ae 2664     		str	r6, [r4, #64]	@ float
 1523 00b0 07AE     		add	r6, sp, #28
 1524 00b2 6064     		str	r0, [r4, #68]	@ unaligned
 1525 00b4 A164     		str	r1, [r4, #72]	@ unaligned
 1526 00b6 E264     		str	r2, [r4, #76]	@ unaligned
 1527 00b8 2365     		str	r3, [r4, #80]	@ unaligned
 1528 00ba 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1529 00bc 2C4F     		ldr	r7, .L161+20
 1530 00be A763     		str	r7, [r4, #56]	@ float
 1531 00c0 0CAE     		add	r6, sp, #48
 1532 00c2 C4F854B0 		str	fp, [r4, #84]	@ unaligned
 1533 00c6 A065     		str	r0, [r4, #88]	@ unaligned
 1534 00c8 E165     		str	r1, [r4, #92]	@ unaligned
 1535 00ca 2266     		str	r2, [r4, #96]	@ unaligned
 1536 00cc 6366     		str	r3, [r4, #100]	@ unaligned
 1537 00ce 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1538 00d0 11AE     		add	r6, sp, #68
 1539 00d2 E066     		str	r0, [r4, #108]	@ unaligned
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 28


 1540 00d4 2167     		str	r1, [r4, #112]	@ unaligned
 1541 00d6 6267     		str	r2, [r4, #116]	@ unaligned
 1542 00d8 A367     		str	r3, [r4, #120]	@ unaligned
 1543 00da 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1544 00dc 16AE     		add	r6, sp, #88
 1545 00de C4F88000 		str	r0, [r4, #128]	@ unaligned
 1546 00e2 C4F88410 		str	r1, [r4, #132]	@ unaligned
 1547 00e6 C4F88820 		str	r2, [r4, #136]	@ unaligned
 1548 00ea C4F88C30 		str	r3, [r4, #140]	@ unaligned
 1549 00ee 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1550 00f0 019F     		ldr	r7, [sp, #4]
 1551 00f2 C4F868A0 		str	r10, [r4, #104]	@ unaligned
 1552 00f6 1BAE     		add	r6, sp, #108
 1553 00f8 E767     		str	r7, [r4, #124]	@ unaligned
 1554 00fa C4F89080 		str	r8, [r4, #144]	@ unaligned
 1555 00fe C4F89400 		str	r0, [r4, #148]	@ unaligned
 1556 0102 C4F8A4E0 		str	lr, [r4, #164]	@ unaligned
 1557 0106 C4F89810 		str	r1, [r4, #152]	@ unaligned
 1558 010a C4F89C20 		str	r2, [r4, #156]	@ unaligned
 1559 010e C4F8A030 		str	r3, [r4, #160]	@ unaligned
 1560 0112 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1561 0114 C4F8B430 		str	r3, [r4, #180]	@ unaligned
 1562 0118 2368     		ldr	r3, [r4]
 1563 011a C4F8B850 		str	r5, [r4, #184]	@ unaligned
 1564 011e C4F8AC10 		str	r1, [r4, #172]	@ unaligned
 1565 0122 C4F8B020 		str	r2, [r4, #176]	@ unaligned
 1566 0126 C4F8A800 		str	r0, [r4, #168]	@ unaligned
 1567 012a 1249     		ldr	r1, .L161+24
 1568 012c 1B6C     		ldr	r3, [r3, #64]
 1569 012e 124A     		ldr	r2, .L161+28
 1570 0130 4D69     		ldr	r5, [r1, #20]
 1571 0132 9342     		cmp	r3, r2
 1572 0134 4FF00001 		mov	r1, #0
 1573 0138 84F85811 		strb	r1, [r4, #344]
 1574 013c 0AD1     		bne	.L160
 1575 013e 0F49     		ldr	r1, .L161+32
 1576              	.L157:
 1577 0140 2846     		mov	r0, r5
 1578 0142 0522     		movs	r2, #5
 1579 0144 FFF7FEFF 		bl	_ZN6GCodes21SetMachineAxisLettersEPKch
 1580 0148 2046     		mov	r0, r4
 1581 014a 21B0     		add	sp, sp, #132
 1582              		@ sp needed
 1583 014c BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1584 0150 FFF7FEBF 		b	_ZN21HangprinterKinematics6RecalcEv
 1585              	.L160:
 1586 0154 2046     		mov	r0, r4
 1587 0156 9847     		blx	r3
 1588 0158 0146     		mov	r1, r0
 1589 015a F1E7     		b	.L157
 1590              	.L162:
 1591              		.align	2
 1592              	.L161:
 1593 015c 14000000 		.word	.LANCHOR0+20
 1594 0160 00000000 		.word	.LANCHOR2
 1595 0164 00000000 		.word	.LANCHOR3
 1596 0168 00D06545 		.word	1164300288
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 29


 1597 016c 0000FA43 		.word	1140457472
 1598 0170 00F87745 		.word	1165490176
 1599 0174 00000000 		.word	reprap
 1600 0178 00000000 		.word	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 1601 017c 00000000 		.word	.LC12
 1602 0180 00000000 		.word	.LANCHOR1
 1603              		.size	_ZN21HangprinterKinematics4InitEv, .-_ZN21HangprinterKinematics4InitEv
 1604              		.section	.text._ZN21HangprinterKinematicsC2Ev,"ax",%progbits
 1605              		.align	1
 1606              		.p2align 2,,3
 1607              		.global	_ZN21HangprinterKinematicsC2Ev
 1608              		.syntax unified
 1609              		.thumb
 1610              		.thumb_func
 1611              		.fpu fpv4-sp-d16
 1612              		.type	_ZN21HangprinterKinematicsC2Ev, %function
 1613              	_ZN21HangprinterKinematicsC2Ev:
 1614              		@ args = 0, pretend = 0, frame = 0
 1615              		@ frame_needed = 0, uses_anonymous_args = 0
 1616 0000 10B5     		push	{r4, lr}
 1617 0002 0022     		movs	r2, #0
 1618 0004 0446     		mov	r4, r0
 1619 0006 DFED070A 		vldr.32	s1, .L165
 1620 000a 9FED070A 		vldr.32	s0, .L165+4
 1621 000e 0621     		movs	r1, #6
 1622 0010 0123     		movs	r3, #1
 1623 0012 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffbb
 1624 0016 054B     		ldr	r3, .L165+8
 1625 0018 2360     		str	r3, [r4]
 1626 001a 2046     		mov	r0, r4
 1627 001c FFF7FEFF 		bl	_ZN21HangprinterKinematics4InitEv
 1628 0020 2046     		mov	r0, r4
 1629 0022 10BD     		pop	{r4, pc}
 1630              	.L166:
 1631              		.align	2
 1632              	.L165:
 1633 0024 CDCC4C3E 		.word	1045220557
 1634 0028 0000C842 		.word	1120403456
 1635 002c 08000000 		.word	.LANCHOR4+8
 1636              		.size	_ZN21HangprinterKinematicsC2Ev, .-_ZN21HangprinterKinematicsC2Ev
 1637              		.global	_ZN21HangprinterKinematicsC1Ev
 1638              		.thumb_set _ZN21HangprinterKinematicsC1Ev,_ZN21HangprinterKinematicsC2Ev
 1639              		.section	.text._ZN21HangprinterKinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN21Hangprint
 1640              		.align	1
 1641              		.p2align 2,,3
 1642              		.weak	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv
 1643              		.syntax unified
 1644              		.thumb
 1645              		.thumb_func
 1646              		.fpu fpv4-sp-d16
 1647              		.type	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv, %function
 1648              	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv:
 1649              		@ args = 0, pretend = 0, frame = 0
 1650              		@ frame_needed = 0, uses_anonymous_args = 0
 1651              		@ link register save eliminated.
 1652 0000 FFF7FEBF 		b	_ZN21HangprinterKinematics4InitEv
 1653              		.size	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv, .-_ZN21HangprinterKinematics22SetCalib
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 30


 1654              		.section	.text._ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 1655              		.align	1
 1656              		.p2align 2,,3
 1657              		.global	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1658              		.syntax unified
 1659              		.thumb
 1660              		.thumb_func
 1661              		.fpu fpv4-sp-d16
 1662              		.type	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 1663              	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 1664              		@ args = 4, pretend = 0, frame = 8
 1665              		@ frame_needed = 0, uses_anonymous_args = 0
 1666 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1667 0004 40F29D2C 		movw	ip, #669
 1668 0008 BAB0     		sub	sp, sp, #232
 1669 000a 0024     		movs	r4, #0
 1670 000c 6145     		cmp	r1, ip
 1671 000e 8DF8E640 		strb	r4, [sp, #230]
 1672 0012 0646     		mov	r6, r0
 1673 0014 1746     		mov	r7, r2
 1674 0016 9846     		mov	r8, r3
 1675 0018 28D0     		beq	.L185
 1676 001a 40F29A2C 		movw	ip, #666
 1677 001e 6145     		cmp	r1, ip
 1678 0020 06D0     		beq	.L186
 1679 0022 409C     		ldr	r4, [sp, #256]
 1680 0024 0094     		str	r4, [sp]
 1681 0026 FFF7FEFF 		bl	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1682              	.L168:
 1683 002a 3AB0     		add	sp, sp, #232
 1684              		@ sp needed
 1685 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1686              	.L186:
 1687 0030 3AAD     		add	r5, sp, #232
 1688 0032 00F14002 		add	r2, r0, #64
 1689 0036 05F8014D 		strb	r4, [r5, #-1]!
 1690 003a 5121     		movs	r1, #81
 1691 003c 2B46     		mov	r3, r5
 1692 003e 3846     		mov	r0, r7
 1693 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1694 0044 CDE90154 		strd	r5, r4, [sp, #4]
 1695 0048 CDF80080 		str	r8, [sp]
 1696 004c 06F14403 		add	r3, r6, #68
 1697 0050 0522     		movs	r2, #5
 1698 0052 5221     		movs	r1, #82
 1699 0054 3846     		mov	r0, r7
 1700 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1701 005a 0028     		cmp	r0, #0
 1702 005c 00F0C080 		beq	.L179
 1703              	.L180:
 1704 0060 409B     		ldr	r3, [sp, #256]
 1705 0062 0120     		movs	r0, #1
 1706 0064 1870     		strb	r0, [r3]
 1707 0066 3AB0     		add	sp, sp, #232
 1708              		@ sp needed
 1709 0068 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1710              	.L185:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 31


 1711 006c 3AAD     		add	r5, sp, #232
 1712 006e 021D     		adds	r2, r0, #4
 1713 0070 05F8014D 		strb	r4, [r5, #-1]!
 1714 0074 5321     		movs	r1, #83
 1715 0076 2B46     		mov	r3, r5
 1716 0078 3846     		mov	r0, r7
 1717 007a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1718 007e 2B46     		mov	r3, r5
 1719 0080 06F10802 		add	r2, r6, #8
 1720 0084 5421     		movs	r1, #84
 1721 0086 3846     		mov	r0, r7
 1722 0088 0DF1E605 		add	r5, sp, #230
 1723 008c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1724 0090 0294     		str	r4, [sp, #8]
 1725 0092 CDE90085 		strd	r8, r5, [sp]
 1726 0096 06F11003 		add	r3, r6, #16
 1727 009a 0322     		movs	r2, #3
 1728 009c 4121     		movs	r1, #65
 1729 009e 3846     		mov	r0, r7
 1730 00a0 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1731 00a4 0028     		cmp	r0, #0
 1732 00a6 DBD1     		bne	.L180
 1733 00a8 CDE90150 		strd	r5, r0, [sp, #4]
 1734 00ac CDF80080 		str	r8, [sp]
 1735 00b0 06F11C03 		add	r3, r6, #28
 1736 00b4 0322     		movs	r2, #3
 1737 00b6 4221     		movs	r1, #66
 1738 00b8 3846     		mov	r0, r7
 1739 00ba FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1740 00be 0028     		cmp	r0, #0
 1741 00c0 CED1     		bne	.L180
 1742 00c2 CDE90150 		strd	r5, r0, [sp, #4]
 1743 00c6 CDF80080 		str	r8, [sp]
 1744 00ca 06F12803 		add	r3, r6, #40
 1745 00ce 0322     		movs	r2, #3
 1746 00d0 4321     		movs	r1, #67
 1747 00d2 3846     		mov	r0, r7
 1748 00d4 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1749 00d8 0446     		mov	r4, r0
 1750 00da 0028     		cmp	r0, #0
 1751 00dc C0D1     		bne	.L180
 1752 00de 2B46     		mov	r3, r5
 1753 00e0 06F13402 		add	r2, r6, #52
 1754 00e4 4421     		movs	r1, #68
 1755 00e6 3846     		mov	r0, r7
 1756 00e8 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1757 00ec 2B46     		mov	r3, r5
 1758 00ee 06F13802 		add	r2, r6, #56
 1759 00f2 5721     		movs	r1, #87
 1760 00f4 3846     		mov	r0, r7
 1761 00f6 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1762 00fa 2B46     		mov	r3, r5
 1763 00fc 06F14002 		add	r2, r6, #64
 1764 0100 5121     		movs	r1, #81
 1765 0102 3846     		mov	r0, r7
 1766 0104 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1767 0108 CDE90154 		strd	r5, r4, [sp, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 32


 1768 010c CDF80080 		str	r8, [sp]
 1769 0110 06F14403 		add	r3, r6, #68
 1770 0114 0522     		movs	r2, #5
 1771 0116 5221     		movs	r1, #82
 1772 0118 3846     		mov	r0, r7
 1773 011a FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1774 011e 0028     		cmp	r0, #0
 1775 0120 9ED1     		bne	.L180
 1776 0122 CDE90150 		strd	r5, r0, [sp, #4]
 1777 0126 CDF80080 		str	r8, [sp]
 1778 012a 06F15803 		add	r3, r6, #88
 1779 012e 0522     		movs	r2, #5
 1780 0130 5521     		movs	r1, #85
 1781 0132 3846     		mov	r0, r7
 1782 0134 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1783 0138 0028     		cmp	r0, #0
 1784 013a 91D1     		bne	.L180
 1785 013c CDE90150 		strd	r5, r0, [sp, #4]
 1786 0140 CDF80080 		str	r8, [sp]
 1787 0144 06F16C03 		add	r3, r6, #108
 1788 0148 0522     		movs	r2, #5
 1789 014a 4F21     		movs	r1, #79
 1790 014c 3846     		mov	r0, r7
 1791 014e FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1792 0152 0028     		cmp	r0, #0
 1793 0154 84D1     		bne	.L180
 1794 0156 CDE90150 		strd	r5, r0, [sp, #4]
 1795 015a CDF80080 		str	r8, [sp]
 1796 015e 06F18003 		add	r3, r6, #128
 1797 0162 0522     		movs	r2, #5
 1798 0164 4C21     		movs	r1, #76
 1799 0166 3846     		mov	r0, r7
 1800 0168 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1801 016c 0028     		cmp	r0, #0
 1802 016e 7FF477AF 		bne	.L180
 1803 0172 CDE90150 		strd	r5, r0, [sp, #4]
 1804 0176 CDF80080 		str	r8, [sp]
 1805 017a 06F19403 		add	r3, r6, #148
 1806 017e 0522     		movs	r2, #5
 1807 0180 4821     		movs	r1, #72
 1808 0182 3846     		mov	r0, r7
 1809 0184 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1810 0188 0028     		cmp	r0, #0
 1811 018a 7FF469AF 		bne	.L180
 1812 018e CDE90150 		strd	r5, r0, [sp, #4]
 1813 0192 CDF80080 		str	r8, [sp]
 1814 0196 06F1A803 		add	r3, r6, #168
 1815 019a 0522     		movs	r2, #5
 1816 019c 4A21     		movs	r1, #74
 1817 019e 3846     		mov	r0, r7
 1818 01a0 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1819 01a4 0028     		cmp	r0, #0
 1820 01a6 7FF45BAF 		bne	.L180
 1821 01aa 9DF8E630 		ldrb	r3, [sp, #230]	@ zero_extendqisi2
 1822 01ae 13B9     		cbnz	r3, .L173
 1823 01b0 9DF8E730 		ldrb	r3, [sp, #231]	@ zero_extendqisi2
 1824 01b4 13B1     		cbz	r3, .L174
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 33


 1825              	.L173:
 1826 01b6 3046     		mov	r0, r6
 1827 01b8 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 1828              	.L174:
 1829 01bc 5021     		movs	r1, #80
 1830 01be 3846     		mov	r0, r7
 1831 01c0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1832 01c4 0028     		cmp	r0, #0
 1833 01c6 00F0A380 		beq	.L175
 1834 01ca 3846     		mov	r0, r7
 1835 01cc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1836 01d0 0123     		movs	r3, #1
 1837 01d2 86ED0F0A 		vstr.32	s0, [r6, #60]
 1838 01d6 8DF8E630 		strb	r3, [sp, #230]
 1839              	.L176:
 1840 01da 9DF8E600 		ldrb	r0, [sp, #230]	@ zero_extendqisi2
 1841 01de 24E7     		b	.L168
 1842              	.L179:
 1843 01e0 CDE90150 		strd	r5, r0, [sp, #4]
 1844 01e4 CDF80080 		str	r8, [sp]
 1845 01e8 06F15803 		add	r3, r6, #88
 1846 01ec 0522     		movs	r2, #5
 1847 01ee 5521     		movs	r1, #85
 1848 01f0 3846     		mov	r0, r7
 1849 01f2 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1850 01f6 0028     		cmp	r0, #0
 1851 01f8 7FF432AF 		bne	.L180
 1852 01fc CDE90150 		strd	r5, r0, [sp, #4]
 1853 0200 CDF80080 		str	r8, [sp]
 1854 0204 06F16C03 		add	r3, r6, #108
 1855 0208 0522     		movs	r2, #5
 1856 020a 4F21     		movs	r1, #79
 1857 020c 3846     		mov	r0, r7
 1858 020e FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1859 0212 0028     		cmp	r0, #0
 1860 0214 7FF424AF 		bne	.L180
 1861 0218 CDE90150 		strd	r5, r0, [sp, #4]
 1862 021c CDF80080 		str	r8, [sp]
 1863 0220 06F18003 		add	r3, r6, #128
 1864 0224 0522     		movs	r2, #5
 1865 0226 4C21     		movs	r1, #76
 1866 0228 3846     		mov	r0, r7
 1867 022a FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1868 022e 0028     		cmp	r0, #0
 1869 0230 7FF416AF 		bne	.L180
 1870 0234 CDE90150 		strd	r5, r0, [sp, #4]
 1871 0238 CDF80080 		str	r8, [sp]
 1872 023c 06F19403 		add	r3, r6, #148
 1873 0240 0522     		movs	r2, #5
 1874 0242 4821     		movs	r1, #72
 1875 0244 3846     		mov	r0, r7
 1876 0246 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1877 024a 0028     		cmp	r0, #0
 1878 024c 7FF408AF 		bne	.L180
 1879 0250 CDE90150 		strd	r5, r0, [sp, #4]
 1880 0254 CDF80080 		str	r8, [sp]
 1881 0258 3846     		mov	r0, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 34


 1882 025a 06F1A803 		add	r3, r6, #168
 1883 025e 0522     		movs	r2, #5
 1884 0260 4A21     		movs	r1, #74
 1885 0262 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1886 0266 0028     		cmp	r0, #0
 1887 0268 7FF4FAAE 		bne	.L180
 1888 026c 306C     		ldr	r0, [r6, #64]	@ float
 1889 026e FFF7FEFF 		bl	__aeabi_f2d
 1890 0272 0D46     		mov	r5, r1
 1891 0274 D6E92D21 		ldrd	r2, r1, [r6, #180]
 1892 0278 D6F8B030 		ldr	r3, [r6, #176]
 1893 027c 1B91     		str	r1, [sp, #108]
 1894 027e D6F8AC10 		ldr	r1, [r6, #172]
 1895 0282 1A92     		str	r2, [sp, #104]
 1896 0284 D6F8A420 		ldr	r2, [r6, #164]
 1897 0288 1993     		str	r3, [sp, #100]
 1898 028a D6F8A030 		ldr	r3, [r6, #160]
 1899 028e 1891     		str	r1, [sp, #96]
 1900 0290 D6F89C10 		ldr	r1, [r6, #156]
 1901 0294 1792     		str	r2, [sp, #92]
 1902 0296 D6F89820 		ldr	r2, [r6, #152]
 1903 029a 1693     		str	r3, [sp, #88]
 1904 029c D6F89030 		ldr	r3, [r6, #144]
 1905 02a0 1591     		str	r1, [sp, #84]
 1906 02a2 D6F88C10 		ldr	r1, [r6, #140]
 1907 02a6 1492     		str	r2, [sp, #80]
 1908 02a8 D6F88820 		ldr	r2, [r6, #136]
 1909 02ac 1393     		str	r3, [sp, #76]
 1910 02ae D6F88430 		ldr	r3, [r6, #132]
 1911 02b2 1291     		str	r1, [sp, #72]
 1912 02b4 F16F     		ldr	r1, [r6, #124]
 1913 02b6 1192     		str	r2, [sp, #68]
 1914 02b8 B26F     		ldr	r2, [r6, #120]
 1915 02ba 1093     		str	r3, [sp, #64]
 1916 02bc 736F     		ldr	r3, [r6, #116]
 1917 02be 0D93     		str	r3, [sp, #52]
 1918 02c0 CDE90E21 		strd	r2, r1, [sp, #56]
 1919 02c4 326F     		ldr	r2, [r6, #112]
 1920 02c6 D6E91913 		ldrd	r1, r3, [r6, #100]
 1921 02ca 0C92     		str	r2, [sp, #48]
 1922 02cc 326E     		ldr	r2, [r6, #96]
 1923 02ce 0B93     		str	r3, [sp, #44]
 1924 02d0 F36D     		ldr	r3, [r6, #92]
 1925 02d2 0A91     		str	r1, [sp, #40]
 1926 02d4 0446     		mov	r4, r0
 1927 02d6 706D     		ldr	r0, [r6, #84]	@ float
 1928 02d8 CDE90832 		strd	r3, r2, [sp, #32]
 1929 02dc FFF7FEFF 		bl	__aeabi_f2d
 1930 02e0 CDE90601 		strd	r0, [sp, #24]
 1931 02e4 306D     		ldr	r0, [r6, #80]	@ float
 1932 02e6 FFF7FEFF 		bl	__aeabi_f2d
 1933 02ea CDE90401 		strd	r0, [sp, #16]
 1934 02ee F06C     		ldr	r0, [r6, #76]	@ float
 1935 02f0 FFF7FEFF 		bl	__aeabi_f2d
 1936 02f4 CDE90201 		strd	r0, [sp, #8]
 1937 02f8 B06C     		ldr	r0, [r6, #72]	@ float
 1938 02fa FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 35


 1939 02fe 2246     		mov	r2, r4
 1940 0300 CDE90001 		strd	r0, [sp]
 1941 0304 2B46     		mov	r3, r5
 1942 0306 4046     		mov	r0, r8
 1943 0308 5149     		ldr	r1, .L187
 1944 030a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1945 030e 8CE6     		b	.L168
 1946              	.L175:
 1947 0310 3846     		mov	r0, r7
 1948 0312 4B21     		movs	r1, #75
 1949 0314 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1950 0318 0028     		cmp	r0, #0
 1951 031a 7FF45EAF 		bne	.L176
 1952 031e 3069     		ldr	r0, [r6, #16]	@ float
 1953 0320 FFF7FEFF 		bl	__aeabi_f2d
 1954 0324 0D46     		mov	r5, r1
 1955 0326 D6E92D21 		ldrd	r2, r1, [r6, #180]
 1956 032a D6F8B030 		ldr	r3, [r6, #176]
 1957 032e 3791     		str	r1, [sp, #220]
 1958 0330 D6F8AC10 		ldr	r1, [r6, #172]
 1959 0334 3692     		str	r2, [sp, #216]
 1960 0336 D6F8A420 		ldr	r2, [r6, #164]
 1961 033a 3593     		str	r3, [sp, #212]
 1962 033c D6F8A030 		ldr	r3, [r6, #160]
 1963 0340 3491     		str	r1, [sp, #208]
 1964 0342 D6F89C10 		ldr	r1, [r6, #156]
 1965 0346 3392     		str	r2, [sp, #204]
 1966 0348 D6F89820 		ldr	r2, [r6, #152]
 1967 034c 3293     		str	r3, [sp, #200]
 1968 034e D6F89030 		ldr	r3, [r6, #144]
 1969 0352 3191     		str	r1, [sp, #196]
 1970 0354 D6F88C10 		ldr	r1, [r6, #140]
 1971 0358 3092     		str	r2, [sp, #192]
 1972 035a D6F88820 		ldr	r2, [r6, #136]
 1973 035e 2F93     		str	r3, [sp, #188]
 1974 0360 D6F88430 		ldr	r3, [r6, #132]
 1975 0364 2E91     		str	r1, [sp, #184]
 1976 0366 F16F     		ldr	r1, [r6, #124]
 1977 0368 2D92     		str	r2, [sp, #180]
 1978 036a B26F     		ldr	r2, [r6, #120]
 1979 036c 2C93     		str	r3, [sp, #176]
 1980 036e 736F     		ldr	r3, [r6, #116]
 1981 0370 2993     		str	r3, [sp, #164]
 1982 0372 CDE92A21 		strd	r2, r1, [sp, #168]
 1983 0376 326F     		ldr	r2, [r6, #112]
 1984 0378 D6E91913 		ldrd	r1, r3, [r6, #100]
 1985 037c 2892     		str	r2, [sp, #160]
 1986 037e 326E     		ldr	r2, [r6, #96]
 1987 0380 2793     		str	r3, [sp, #156]
 1988 0382 F36D     		ldr	r3, [r6, #92]
 1989 0384 2691     		str	r1, [sp, #152]
 1990 0386 0446     		mov	r4, r0
 1991 0388 706D     		ldr	r0, [r6, #84]	@ float
 1992 038a CDE92432 		strd	r3, r2, [sp, #144]
 1993 038e FFF7FEFF 		bl	__aeabi_f2d
 1994 0392 CDE92201 		strd	r0, [sp, #136]
 1995 0396 306D     		ldr	r0, [r6, #80]	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 36


 1996 0398 FFF7FEFF 		bl	__aeabi_f2d
 1997 039c CDE92001 		strd	r0, [sp, #128]
 1998 03a0 F06C     		ldr	r0, [r6, #76]	@ float
 1999 03a2 FFF7FEFF 		bl	__aeabi_f2d
 2000 03a6 CDE91E01 		strd	r0, [sp, #120]
 2001 03aa B06C     		ldr	r0, [r6, #72]	@ float
 2002 03ac FFF7FEFF 		bl	__aeabi_f2d
 2003 03b0 CDE91C01 		strd	r0, [sp, #112]
 2004 03b4 306C     		ldr	r0, [r6, #64]	@ float
 2005 03b6 FFF7FEFF 		bl	__aeabi_f2d
 2006 03ba CDE91A01 		strd	r0, [sp, #104]
 2007 03be B068     		ldr	r0, [r6, #8]	@ float
 2008 03c0 FFF7FEFF 		bl	__aeabi_f2d
 2009 03c4 D6ED017A 		vldr.32	s15, [r6, #4]
 2010 03c8 CDE91801 		strd	r0, [sp, #96]
 2011 03cc FDEEE77A 		vcvt.s32.f32	s15, s15
 2012 03d0 F06B     		ldr	r0, [r6, #60]	@ float
 2013 03d2 CDED167A 		vstr.32	s15, [sp, #88]	@ int
 2014 03d6 FFF7FEFF 		bl	__aeabi_f2d
 2015 03da CDE91401 		strd	r0, [sp, #80]
 2016 03de B06B     		ldr	r0, [r6, #56]	@ float
 2017 03e0 FFF7FEFF 		bl	__aeabi_f2d
 2018 03e4 CDE91201 		strd	r0, [sp, #72]
 2019 03e8 706B     		ldr	r0, [r6, #52]	@ float
 2020 03ea FFF7FEFF 		bl	__aeabi_f2d
 2021 03ee CDE91001 		strd	r0, [sp, #64]
 2022 03f2 306B     		ldr	r0, [r6, #48]	@ float
 2023 03f4 FFF7FEFF 		bl	__aeabi_f2d
 2024 03f8 CDE90E01 		strd	r0, [sp, #56]
 2025 03fc F06A     		ldr	r0, [r6, #44]	@ float
 2026 03fe FFF7FEFF 		bl	__aeabi_f2d
 2027 0402 CDE90C01 		strd	r0, [sp, #48]
 2028 0406 B06A     		ldr	r0, [r6, #40]	@ float
 2029 0408 FFF7FEFF 		bl	__aeabi_f2d
 2030 040c CDE90A01 		strd	r0, [sp, #40]
 2031 0410 706A     		ldr	r0, [r6, #36]	@ float
 2032 0412 FFF7FEFF 		bl	__aeabi_f2d
 2033 0416 CDE90801 		strd	r0, [sp, #32]
 2034 041a 306A     		ldr	r0, [r6, #32]	@ float
 2035 041c FFF7FEFF 		bl	__aeabi_f2d
 2036 0420 CDE90601 		strd	r0, [sp, #24]
 2037 0424 F069     		ldr	r0, [r6, #28]	@ float
 2038 0426 FFF7FEFF 		bl	__aeabi_f2d
 2039 042a CDE90401 		strd	r0, [sp, #16]
 2040 042e B069     		ldr	r0, [r6, #24]	@ float
 2041 0430 FFF7FEFF 		bl	__aeabi_f2d
 2042 0434 CDE90201 		strd	r0, [sp, #8]
 2043 0438 7069     		ldr	r0, [r6, #20]	@ float
 2044 043a FFF7FEFF 		bl	__aeabi_f2d
 2045 043e 2246     		mov	r2, r4
 2046 0440 CDE90001 		strd	r0, [sp]
 2047 0444 2B46     		mov	r3, r5
 2048 0446 4046     		mov	r0, r8
 2049 0448 0249     		ldr	r1, .L187+4
 2050 044a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2051 044e C4E6     		b	.L176
 2052              	.L188:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 37


 2053              		.align	2
 2054              	.L187:
 2055 0450 8C010000 		.word	.LC28
 2056 0454 00000000 		.word	.LC27
 2057              		.size	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN21HangprinterKinema
 2058              		.section	.text._ZNK21HangprinterKinematics17MotorPosToLinePosElj,"ax",%progbits
 2059              		.align	1
 2060              		.p2align 2,,3
 2061              		.global	_ZNK21HangprinterKinematics17MotorPosToLinePosElj
 2062              		.syntax unified
 2063              		.thumb
 2064              		.thumb_func
 2065              		.fpu fpv4-sp-d16
 2066              		.type	_ZNK21HangprinterKinematics17MotorPosToLinePosElj, %function
 2067              	_ZNK21HangprinterKinematics17MotorPosToLinePosElj:
 2068              		@ args = 0, pretend = 0, frame = 0
 2069              		@ frame_needed = 0, uses_anonymous_args = 0
 2070              		@ link register save eliminated.
 2071 0000 07EE901A 		vmov	s15, r1	@ int
 2072 0004 00EB8202 		add	r2, r0, r2, lsl #2
 2073 0008 92ED2F6A 		vldr.32	s12, [r2, #188]
 2074 000c D2ED116A 		vldr.32	s13, [r2, #68]
 2075 0010 92ED340A 		vldr.32	s0, [r2, #208]
 2076 0014 92ED397A 		vldr.32	s14, [r2, #228]
 2077 0018 F8EEE75A 		vcvt.f32.s32	s11, s15
 2078 001c C5EE867A 		vdiv.f32	s15, s11, s12
 2079 0020 77EEA67A 		vadd.f32	s15, s15, s13
 2080 0024 97EEA70A 		vfnms.f32	s0, s15, s15
 2081 0028 80EE070A 		vdiv.f32	s0, s0, s14
 2082 002c 7047     		bx	lr
 2083              		.size	_ZNK21HangprinterKinematics17MotorPosToLinePosElj, .-_ZNK21HangprinterKinematics17MotorPosTo
 2084 002e 00BF     		.section	.text._ZNK21HangprinterKinematics16InverseTransformEfffPf,"ax",%progbits
 2085              		.align	1
 2086              		.p2align 2,,3
 2087              		.global	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2088              		.syntax unified
 2089              		.thumb
 2090              		.thumb_func
 2091              		.fpu fpv4-sp-d16
 2092              		.type	_ZNK21HangprinterKinematics16InverseTransformEfffPf, %function
 2093              	_ZNK21HangprinterKinematics16InverseTransformEfffPf:
 2094              		@ args = 0, pretend = 0, frame = 0
 2095              		@ frame_needed = 0, uses_anonymous_args = 0
 2096 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2097 0004 2DED088B 		vpush.64	{d8, d9, d10, d11}
 2098 0008 90ED458A 		vldr.32	s16, [r0, #276]
 2099 000c D0ED466A 		vldr.32	s13, [r0, #280]
 2100 0010 D0ED4C8A 		vldr.32	s17, [r0, #304]
 2101 0014 90ED4A6A 		vldr.32	s12, [r0, #296]
 2102 0018 90ED447A 		vldr.32	s14, [r0, #272]
 2103 001c D0ED492A 		vldr.32	s5, [r0, #292]
 2104 0020 90ED473A 		vldr.32	s6, [r0, #284]
 2105 0024 D0ED4B3A 		vldr.32	s7, [r0, #300]
 2106 0028 90ED484A 		vldr.32	s8, [r0, #288]
 2107 002c D0ED047A 		vldr.32	s15, [r0, #16]
 2108 0030 D0ED054A 		vldr.32	s9, [r0, #20]
 2109 0034 90ED505A 		vldr.32	s10, [r0, #320]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 38


 2110 0038 D0ED529A 		vldr.32	s19, [r0, #328]
 2111 003c D0ED515A 		vldr.32	s11, [r0, #324]
 2112 0040 DFF8A881 		ldr	r8, .L195+12
 2113 0044 90EEA08A 		vfnms.f32	s16, s1, s1
 2114 0048 8AB0     		sub	sp, sp, #40
 2115 004a 0446     		mov	r4, r0
 2116 004c D1EE016A 		vfnms.f32	s13, s2, s2
 2117 0050 0D46     		mov	r5, r1
 2118 0052 68EEC88A 		vnmul.f32	s17, s17, s16
 2119 0056 28EE228A 		vmul.f32	s16, s16, s5
 2120 005a E6EE668A 		vfms.f32	s17, s12, s13
 2121 005e B0EE476A 		vmov.f32	s12, s14
 2122 0062 90EE006A 		vfnms.f32	s12, s0, s0
 2123 0066 A3EE668A 		vfms.f32	s16, s6, s13
 2124 006a E3EEC68A 		vfms.f32	s17, s7, s12
 2125 006e A6EE048A 		vfma.f32	s16, s12, s8
 2126 0072 67EEE87A 		vnmul.f32	s15, s15, s17
 2127 0076 28EE089A 		vmul.f32	s18, s16, s16
 2128 007a E4EE887A 		vfma.f32	s15, s9, s16
 2129 007e A8EEA89A 		vfma.f32	s18, s17, s17
 2130 0082 67EE857A 		vmul.f32	s15, s15, s10
 2131 0086 F0EE006A 		vmov.f32	s13, #2.0e+0
 2132 008a 69EEC89A 		vnmul.f32	s19, s19, s16
 2133 008e A0EE407A 		vfms.f32	s14, s0, s0
 2134 0092 A7EEA69A 		vfma.f32	s18, s15, s13
 2135 0096 E5EEA89A 		vfma.f32	s19, s11, s17
 2136 009a D0ED536A 		vldr.32	s13, [r0, #332]
 2137 009e D0ED547A 		vldr.32	s15, [r0, #336]
 2138 00a2 A7EE269A 		vfma.f32	s18, s14, s13
 2139 00a6 18EE900A 		vmov	r0, s17
 2140 00aa 79EEE79A 		vsub.f32	s19, s19, s15
 2141 00ae F0EE60AA 		vmov.f32	s21, s1
 2142 00b2 B0EE41BA 		vmov.f32	s22, s2
 2143 00b6 B0EE40AA 		vmov.f32	s20, s0
 2144 00ba FFF7FEFF 		bl	__aeabi_f2d
 2145 00be 0646     		mov	r6, r0
 2146 00c0 19EE100A 		vmov	r0, s18
 2147 00c4 0F46     		mov	r7, r1
 2148 00c6 FFF7FEFF 		bl	__aeabi_f2d
 2149 00ca CDE90401 		strd	r0, [sp, #16]
 2150 00ce 19EE900A 		vmov	r0, s19
 2151 00d2 FFF7FEFF 		bl	__aeabi_f2d
 2152 00d6 CDE90201 		strd	r0, [sp, #8]
 2153 00da 18EE100A 		vmov	r0, s16
 2154 00de FFF7FEFF 		bl	__aeabi_f2d
 2155 00e2 3246     		mov	r2, r6
 2156 00e4 3B46     		mov	r3, r7
 2157 00e6 CDE90001 		strd	r0, [sp]
 2158 00ea 3D48     		ldr	r0, .L195
 2159 00ec FFF7FEFF 		bl	debugPrintf
 2160 00f0 2E46     		mov	r6, r5
 2161 00f2 05F10C07 		add	r7, r5, #12
 2162              	.L191:
 2163 00f6 56F8040B 		ldr	r0, [r6], #4	@ float
 2164 00fa FFF7FEFF 		bl	__aeabi_f2d
 2165 00fe 0246     		mov	r2, r0
 2166 0100 0B46     		mov	r3, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 39


 2167 0102 4046     		mov	r0, r8
 2168 0104 FFF7FEFF 		bl	debugPrintf
 2169 0108 B742     		cmp	r7, r6
 2170 010a F4D1     		bne	.L191
 2171 010c D4ED556A 		vldr.32	s13, [r4, #340]
 2172 0110 29EE669A 		vnmul.f32	s18, s18, s13
 2173 0114 B1EE697A 		vneg.f32	s14, s19
 2174 0118 A9EEA99A 		vfma.f32	s18, s19, s19
 2175 011c B0EEC99A 		vabs.f32	s18, s18
 2176 0120 F1EEC97A 		vsqrt.f32	s15, s18
 2177 0124 37EE677A 		vsub.f32	s14, s14, s15
 2178 0128 C7EE267A 		vdiv.f32	s15, s14, s13
 2179 012c C5ED027A 		vstr.32	s15, [r5, #8]
 2180 0130 94ED517A 		vldr.32	s14, [r4, #324]
 2181 0134 D4ED506A 		vldr.32	s13, [r4, #320]
 2182 0138 E7EE878A 		vfma.f32	s17, s15, s14
 2183 013c 88EEA67A 		vdiv.f32	s14, s17, s13
 2184 0140 85ED007A 		vstr.32	s14, [r5]
 2185 0144 94ED526A 		vldr.32	s12, [r4, #328]
 2186 0148 D4ED506A 		vldr.32	s13, [r4, #320]
 2187 014c A7EE868A 		vfma.f32	s16, s15, s12
 2188 0150 17EE100A 		vmov	r0, s14
 2189 0154 C8EE267A 		vdiv.f32	s15, s16, s13
 2190 0158 C5ED017A 		vstr.32	s15, [r5, #4]
 2191 015c FFF7FEFF 		bl	__aeabi_f2d
 2192 0160 0246     		mov	r2, r0
 2193 0162 0B46     		mov	r3, r1
 2194 0164 1F48     		ldr	r0, .L195+4
 2195 0166 FFF7FEFF 		bl	debugPrintf
 2196 016a 6868     		ldr	r0, [r5, #4]	@ float
 2197 016c FFF7FEFF 		bl	__aeabi_f2d
 2198 0170 0246     		mov	r2, r0
 2199 0172 0B46     		mov	r3, r1
 2200 0174 1B48     		ldr	r0, .L195+4
 2201 0176 FFF7FEFF 		bl	debugPrintf
 2202 017a A868     		ldr	r0, [r5, #8]	@ float
 2203 017c FFF7FEFF 		bl	__aeabi_f2d
 2204 0180 0246     		mov	r2, r0
 2205 0182 0B46     		mov	r3, r1
 2206 0184 1748     		ldr	r0, .L195+4
 2207 0186 FFF7FEFF 		bl	debugPrintf
 2208 018a 1AEE100A 		vmov	r0, s20
 2209 018e FFF7FEFF 		bl	__aeabi_f2d
 2210 0192 0646     		mov	r6, r0
 2211 0194 A868     		ldr	r0, [r5, #8]	@ float
 2212 0196 0F46     		mov	r7, r1
 2213 0198 FFF7FEFF 		bl	__aeabi_f2d
 2214 019c CDE90801 		strd	r0, [sp, #32]
 2215 01a0 6868     		ldr	r0, [r5, #4]	@ float
 2216 01a2 FFF7FEFF 		bl	__aeabi_f2d
 2217 01a6 CDE90601 		strd	r0, [sp, #24]
 2218 01aa 2868     		ldr	r0, [r5]	@ float
 2219 01ac FFF7FEFF 		bl	__aeabi_f2d
 2220 01b0 CDE90401 		strd	r0, [sp, #16]
 2221 01b4 1BEE100A 		vmov	r0, s22
 2222 01b8 FFF7FEFF 		bl	__aeabi_f2d
 2223 01bc CDE90201 		strd	r0, [sp, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 40


 2224 01c0 1AEE900A 		vmov	r0, s21
 2225 01c4 FFF7FEFF 		bl	__aeabi_f2d
 2226 01c8 3246     		mov	r2, r6
 2227 01ca CDE90001 		strd	r0, [sp]
 2228 01ce 3B46     		mov	r3, r7
 2229 01d0 0548     		ldr	r0, .L195+8
 2230 01d2 FFF7FEFF 		bl	debugPrintf
 2231 01d6 0AB0     		add	sp, sp, #40
 2232              		@ sp needed
 2233 01d8 BDEC088B 		vldm	sp!, {d8-d11}
 2234 01dc BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2235              	.L196:
 2236              		.align	2
 2237              	.L195:
 2238 01e0 00000000 		.word	.LC29
 2239 01e4 64000000 		.word	.LC31
 2240 01e8 80000000 		.word	.LC32
 2241 01ec 44000000 		.word	.LC30
 2242              		.size	_ZNK21HangprinterKinematics16InverseTransformEfffPf, .-_ZNK21HangprinterKinematics16InverseT
 2243              		.section	.text._ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 2244              		.align	1
 2245              		.p2align 2,,3
 2246              		.global	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf
 2247              		.syntax unified
 2248              		.thumb
 2249              		.thumb_func
 2250              		.fpu fpv4-sp-d16
 2251              		.type	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 2252              	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 2253              		@ args = 8, pretend = 0, frame = 0
 2254              		@ frame_needed = 0, uses_anonymous_args = 0
 2255              		@ link register save eliminated.
 2256 0000 D1ED013A 		vldr.32	s7, [r1, #4]	@ int
 2257 0004 91ED024A 		vldr.32	s8, [r1, #8]	@ int
 2258 0008 D1ED034A 		vldr.32	s9, [r1, #12]	@ int
 2259 000c 90ED307A 		vldr.32	s14, [r0, #192]
 2260 0010 D0ED317A 		vldr.32	s15, [r0, #196]
 2261 0014 90ED140A 		vldr.32	s0, [r0, #80]
 2262 0018 90ED355A 		vldr.32	s10, [r0, #212]
 2263 001c D0ED365A 		vldr.32	s11, [r0, #216]
 2264 0020 90ED376A 		vldr.32	s12, [r0, #220]
 2265 0024 D0ED3A0A 		vldr.32	s1, [r0, #232]
 2266 0028 90ED3B1A 		vldr.32	s2, [r0, #236]
 2267 002c D0ED3C1A 		vldr.32	s3, [r0, #240]
 2268 0030 90ED3F2A 		vldr.32	s4, [r0, #252]
 2269 0034 D0ED402A 		vldr.32	s5, [r0, #256]
 2270 0038 90ED413A 		vldr.32	s6, [r0, #260]
 2271 003c 2DED048B 		vpush.64	{d8, d9}
 2272 0040 F8EEE33A 		vcvt.f32.s32	s7, s7
 2273 0044 90ED329A 		vldr.32	s18, [r0, #200]
 2274 0048 D0ED128A 		vldr.32	s17, [r0, #72]
 2275 004c 90ED138A 		vldr.32	s16, [r0, #76]
 2276 0050 0599     		ldr	r1, [sp, #20]
 2277 0052 B8EEC44A 		vcvt.f32.s32	s8, s8
 2278 0056 F8EEE44A 		vcvt.f32.s32	s9, s9
 2279 005a C3EE876A 		vdiv.f32	s13, s7, s14
 2280 005e 84EE277A 		vdiv.f32	s14, s8, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 41


 2281 0062 C4EE897A 		vdiv.f32	s15, s9, s18
 2282 0066 76EEA86A 		vadd.f32	s13, s13, s17
 2283 006a 37EE087A 		vadd.f32	s14, s14, s16
 2284 006e 77EE807A 		vadd.f32	s15, s15, s0
 2285 0072 96EEA65A 		vfnms.f32	s10, s13, s13
 2286 0076 BDEC048B 		vldm	sp!, {d8-d9}
 2287 007a D7EE075A 		vfnms.f32	s11, s14, s14
 2288 007e 97EEA76A 		vfnms.f32	s12, s15, s15
 2289 0082 85EE200A 		vdiv.f32	s0, s10, s1
 2290 0086 C5EE810A 		vdiv.f32	s1, s11, s2
 2291 008a 86EE211A 		vdiv.f32	s2, s12, s3
 2292 008e 30EE020A 		vadd.f32	s0, s0, s4
 2293 0092 70EEA20A 		vadd.f32	s1, s1, s5
 2294 0096 31EE031A 		vadd.f32	s2, s2, s6
 2295 009a FFF7FEBF 		b	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2296              		.size	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK21HangprinterKinematics
 2297              		.global	__aeabi_dsub
 2298              		.global	__aeabi_ddiv
 2299 009e 00BF     		.section	.text._ZNK21HangprinterKinematics17ComputeDerivativeEjfff,"ax",%progbits
 2300              		.align	1
 2301              		.p2align 2,,3
 2302              		.global	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 2303              		.syntax unified
 2304              		.thumb
 2305              		.thumb_func
 2306              		.fpu fpv4-sp-d16
 2307              		.type	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff, %function
 2308              	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff:
 2309              		@ args = 0, pretend = 0, frame = 776
 2310              		@ frame_needed = 0, uses_anonymous_args = 0
 2311 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2312 0004 2DED0A8B 		vpush.64	{d8, d9, d10, d11, d12}
 2313 0008 ADF5437D 		sub	sp, sp, #780
 2314 000c 00F1100B 		add	fp, r0, #16
 2315 0010 0446     		mov	r4, r0
 2316 0012 0191     		str	r1, [sp, #4]
 2317 0014 9BE80700 		ldm	fp, {r0, r1, r2}
 2318 0018 04F11C05 		add	r5, r4, #28
 2319 001c 18AB     		add	r3, sp, #96
 2320 001e 83E80700 		stm	r3, {r0, r1, r2}
 2321 0022 95E80700 		ldm	r5, {r0, r1, r2}
 2322 0026 04F12806 		add	r6, r4, #40
 2323 002a 1BAB     		add	r3, sp, #108
 2324 002c 83E80700 		stm	r3, {r0, r1, r2}
 2325 0030 96E80700 		ldm	r6, {r0, r1, r2}
 2326 0034 94ED017A 		vldr.32	s14, [r4, #4]
 2327 0038 D4ED027A 		vldr.32	s15, [r4, #8]
 2328 003c 94F80FC0 		ldrb	ip, [r4, #15]	@ zero_extendqisi2
 2329 0040 277B     		ldrb	r7, [r4, #12]	@ zero_extendqisi2
 2330 0042 D4ED0DCA 		vldr.32	s25, [r4, #52]
 2331 0046 0995     		str	r5, [sp, #36]
 2332 0048 1EAB     		add	r3, sp, #120
 2333 004a 657B     		ldrb	r5, [r4, #13]	@ zero_extendqisi2
 2334 004c 0A96     		str	r6, [sp, #40]
 2335 004e 83E80700 		stm	r3, {r0, r1, r2}
 2336 0052 A67B     		ldrb	r6, [r4, #14]	@ zero_extendqisi2
 2337 0054 CDF808C0 		str	ip, [sp, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 42


 2338 0058 8DED157A 		vstr.32	s14, [sp, #84]
 2339 005c 04F1440C 		add	ip, r4, #68
 2340 0060 CDED167A 		vstr.32	s15, [sp, #88]
 2341 0064 C249     		ldr	r1, .L226
 2342 0066 029A     		ldr	r2, [sp, #8]
 2343 0068 8DF85F20 		strb	r2, [sp, #95]
 2344 006c 1491     		str	r1, [sp, #80]
 2345 006e BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 2346 0072 0896     		str	r6, [sp, #32]
 2347 0074 8DF85E60 		strb	r6, [sp, #94]
 2348 0078 04F1580E 		add	lr, r4, #88
 2349 007c 25AE     		add	r6, sp, #148
 2350 007e 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2351 0080 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2352 0084 0795     		str	r5, [sp, #28]
 2353 0086 8DF85D50 		strb	r5, [sp, #93]
 2354 008a 04F16C0A 		add	r10, r4, #108
 2355 008e 2AAD     		add	r5, sp, #168
 2356 0090 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2357 0092 BAE80F00 		ldmia	r10!, {r0, r1, r2, r3}
 2358 0096 94ED0E9A 		vldr.32	s18, [r4, #56]
 2359 009a D4ED0F8A 		vldr.32	s17, [r4, #60]
 2360 009e 0697     		str	r7, [sp, #24]
 2361 00a0 8DF85C70 		strb	r7, [sp, #92]
 2362 00a4 04F18009 		add	r9, r4, #128
 2363 00a8 CDED21CA 		vstr.32	s25, [sp, #132]
 2364 00ac 94ED108A 		vldr.32	s16, [r4, #64]
 2365 00b0 DCF80070 		ldr	r7, [ip]
 2366 00b4 0397     		str	r7, [sp, #12]
 2367 00b6 0DF1BC0C 		add	ip, sp, #188
 2368 00ba ACE80F00 		stmia	ip!, {r0, r1, r2, r3}
 2369 00be B9E80F00 		ldmia	r9!, {r0, r1, r2, r3}
 2370 00c2 DEF80070 		ldr	r7, [lr]
 2371 00c6 0497     		str	r7, [sp, #16]
 2372 00c8 039F     		ldr	r7, [sp, #12]
 2373 00ca 3760     		str	r7, [r6]
 2374 00cc 04F19408 		add	r8, r4, #148
 2375 00d0 34AF     		add	r7, sp, #208
 2376 00d2 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2377 00d4 B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 2378 00d8 049E     		ldr	r6, [sp, #16]
 2379 00da 2E60     		str	r6, [r5]
 2380 00dc 04F1A80E 		add	lr, r4, #168
 2381 00e0 39AE     		add	r6, sp, #228
 2382 00e2 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2383 00e4 8DED229A 		vstr.32	s18, [sp, #136]
 2384 00e8 CDED238A 		vstr.32	s17, [sp, #140]
 2385 00ec 8DED248A 		vstr.32	s16, [sp, #144]
 2386 00f0 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2387 00f4 3EAD     		add	r5, sp, #248
 2388 00f6 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2389 00f8 DAF80000 		ldr	r0, [r10]
 2390 00fc D9F80020 		ldr	r2, [r9]
 2391 0100 D8F80010 		ldr	r1, [r8]
 2392 0104 DEF80030 		ldr	r3, [lr]
 2393 0108 CCF80000 		str	r0, [ip]
 2394 010c 04F1BC0C 		add	ip, r4, #188
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 43


 2395 0110 3A60     		str	r2, [r7]
 2396 0112 3160     		str	r1, [r6]
 2397 0114 2B60     		str	r3, [r5]
 2398 0116 0B90     		str	r0, [sp, #44]
 2399 0118 0C92     		str	r2, [sp, #48]
 2400 011a 0D91     		str	r1, [sp, #52]
 2401 011c 0E93     		str	r3, [sp, #56]
 2402 011e BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 2403 0122 04F1D008 		add	r8, r4, #208
 2404 0126 43AF     		add	r7, sp, #268
 2405 0128 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2406 012a B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 2407 012e 04F1E40E 		add	lr, r4, #228
 2408 0132 48AE     		add	r6, sp, #288
 2409 0134 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2410 0136 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2411 013a 4DAD     		add	r5, sp, #308
 2412 013c 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2413 013e DCF800C0 		ldr	ip, [ip]
 2414 0142 DEF80000 		ldr	r0, [lr]
 2415 0146 C7F800C0 		str	ip, [r7]
 2416 014a 04F1F807 		add	r7, r4, #248
 2417 014e 2860     		str	r0, [r5]
 2418 0150 0F90     		str	r0, [sp, #60]
 2419 0152 0FCF     		ldmia	r7!, {r0, r1, r2, r3}
 2420 0154 52AD     		add	r5, sp, #328
 2421 0156 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2422 0158 D8F80080 		ldr	r8, [r8]
 2423 015c 94ED43CA 		vldr.32	s24, [r4, #268]
 2424 0160 D4ED44BA 		vldr.32	s23, [r4, #272]
 2425 0164 94ED45BA 		vldr.32	s22, [r4, #276]
 2426 0168 D4ED46AA 		vldr.32	s21, [r4, #280]
 2427 016c 94ED47AA 		vldr.32	s20, [r4, #284]
 2428 0170 D4ED489A 		vldr.32	s19, [r4, #288]
 2429 0174 C6F80080 		str	r8, [r6]
 2430 0178 D4ED491A 		vldr.32	s3, [r4, #292]
 2431 017c 94ED4A2A 		vldr.32	s4, [r4, #296]
 2432 0180 D4ED4B2A 		vldr.32	s5, [r4, #300]
 2433 0184 94ED4C3A 		vldr.32	s6, [r4, #304]
 2434 0188 D4ED4D3A 		vldr.32	s7, [r4, #308]
 2435 018c 94ED4E4A 		vldr.32	s8, [r4, #312]
 2436 0190 3B68     		ldr	r3, [r7]
 2437 0192 D4ED4F4A 		vldr.32	s9, [r4, #316]
 2438 0196 2B60     		str	r3, [r5]
 2439 0198 9BE80700 		ldm	fp, {r0, r1, r2}
 2440 019c 0593     		str	r3, [sp, #20]
 2441 019e 6FAB     		add	r3, sp, #444
 2442 01a0 94ED505A 		vldr.32	s10, [r4, #320]
 2443 01a4 D4ED515A 		vldr.32	s11, [r4, #324]
 2444 01a8 94ED526A 		vldr.32	s12, [r4, #328]
 2445 01ac 8DED57CA 		vstr.32	s24, [sp, #348]
 2446 01b0 83E80700 		stm	r3, {r0, r1, r2}
 2447 01b4 CDED58BA 		vstr.32	s23, [sp, #352]
 2448 01b8 8DED59BA 		vstr.32	s22, [sp, #356]
 2449 01bc CDED5AAA 		vstr.32	s21, [sp, #360]
 2450 01c0 8DED5BAA 		vstr.32	s20, [sp, #364]
 2451 01c4 CDED5C9A 		vstr.32	s19, [sp, #368]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 44


 2452 01c8 CDED5D1A 		vstr.32	s3, [sp, #372]
 2453 01cc 8DED5E2A 		vstr.32	s4, [sp, #376]
 2454 01d0 CDED5F2A 		vstr.32	s5, [sp, #380]
 2455 01d4 8DED603A 		vstr.32	s6, [sp, #384]
 2456 01d8 CDED613A 		vstr.32	s7, [sp, #388]
 2457 01dc 8DED624A 		vstr.32	s8, [sp, #392]
 2458 01e0 CDED634A 		vstr.32	s9, [sp, #396]
 2459 01e4 099B     		ldr	r3, [sp, #36]
 2460 01e6 D4ED536A 		vldr.32	s13, [r4, #332]
 2461 01ea 079D     		ldr	r5, [sp, #28]
 2462 01ec 8DED6C7A 		vstr.32	s14, [sp, #432]
 2463 01f0 93E80700 		ldm	r3, {r0, r1, r2}
 2464 01f4 089B     		ldr	r3, [sp, #32]
 2465 01f6 8DF8BA31 		strb	r3, [sp, #442]
 2466 01fa 029B     		ldr	r3, [sp, #8]
 2467 01fc 8DF8BB31 		strb	r3, [sp, #443]
 2468 0200 72AB     		add	r3, sp, #456
 2469 0202 94ED547A 		vldr.32	s14, [r4, #336]
 2470 0206 CDED6D7A 		vstr.32	s15, [sp, #436]
 2471 020a 83E80700 		stm	r3, {r0, r1, r2}
 2472 020e D4ED557A 		vldr.32	s15, [r4, #340]
 2473 0212 0A9A     		ldr	r2, [sp, #40]
 2474 0214 94F85891 		ldrb	r9, [r4, #344]	@ zero_extendqisi2
 2475 0218 069F     		ldr	r7, [sp, #24]
 2476 021a 8DF8B951 		strb	r5, [sp, #441]
 2477 021e 544D     		ldr	r5, .L226
 2478 0220 8DF8B871 		strb	r7, [sp, #440]
 2479 0224 6B95     		str	r5, [sp, #428]
 2480 0226 8DED645A 		vstr.32	s10, [sp, #400]
 2481 022a CDED655A 		vstr.32	s11, [sp, #404]
 2482 022e 8DED666A 		vstr.32	s12, [sp, #408]
 2483 0232 CDED676A 		vstr.32	s13, [sp, #412]
 2484 0236 8DED687A 		vstr.32	s14, [sp, #416]
 2485 023a CDED697A 		vstr.32	s15, [sp, #420]
 2486 023e 8DF8A891 		strb	r9, [sp, #424]
 2487 0242 07CA     		ldm	r2, {r0, r1, r2}
 2488 0244 75AB     		add	r3, sp, #468
 2489 0246 04F14405 		add	r5, r4, #68
 2490 024a 83E80700 		stm	r3, {r0, r1, r2}
 2491 024e 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2492 0250 7CAF     		add	r7, sp, #496
 2493 0252 04F15805 		add	r5, r4, #88
 2494 0256 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2495 0258 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2496 025a 81AD     		add	r5, sp, #516
 2497 025c 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2498 025e 04F16C0E 		add	lr, r4, #108
 2499 0262 039B     		ldr	r3, [sp, #12]
 2500 0264 3B60     		str	r3, [r7]
 2501 0266 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2502 026a 049F     		ldr	r7, [sp, #16]
 2503 026c 2F60     		str	r7, [r5]
 2504 026e 0DF5067A 		add	r10, sp, #536
 2505 0272 04F18005 		add	r5, r4, #128
 2506 0276 8DED799A 		vstr.32	s18, [sp, #484]
 2507 027a CDED7A8A 		vstr.32	s17, [sp, #488]
 2508 027e 8DED7B8A 		vstr.32	s16, [sp, #492]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 45


 2509 0282 CDED78CA 		vstr.32	s25, [sp, #480]
 2510 0286 AAE80F00 		stmia	r10!, {r0, r1, r2, r3}
 2511 028a 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2512 028c 0DF50B7E 		add	lr, sp, #556
 2513 0290 04F19405 		add	r5, r4, #148
 2514 0294 AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 2515 0298 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2516 029a 90AF     		add	r7, sp, #576
 2517 029c 04F1A805 		add	r5, r4, #168
 2518 02a0 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2519 02a2 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2520 02a4 0B9D     		ldr	r5, [sp, #44]
 2521 02a6 CAF80050 		str	r5, [r10]
 2522 02aa 0C9D     		ldr	r5, [sp, #48]
 2523 02ac CEF80050 		str	r5, [lr]
 2524 02b0 04F1BC0B 		add	fp, r4, #188
 2525 02b4 0D9D     		ldr	r5, [sp, #52]
 2526 02b6 3D60     		str	r5, [r7]
 2527 02b8 95AE     		add	r6, sp, #596
 2528 02ba 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2529 02bc BBE80F00 		ldmia	fp!, {r0, r1, r2, r3}
 2530 02c0 04F1D007 		add	r7, r4, #208
 2531 02c4 0DF51A7E 		add	lr, sp, #616
 2532 02c8 AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 2533 02cc 0FCF     		ldmia	r7!, {r0, r1, r2, r3}
 2534 02ce 04F1E40A 		add	r10, r4, #228
 2535 02d2 9FAF     		add	r7, sp, #636
 2536 02d4 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2537 02d6 BAE80F00 		ldmia	r10!, {r0, r1, r2, r3}
 2538 02da F834     		adds	r4, r4, #248
 2539 02dc 0DF5247A 		add	r10, sp, #656
 2540 02e0 AAE80F00 		stmia	r10!, {r0, r1, r2, r3}
 2541 02e4 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 2542 02e6 0E9D     		ldr	r5, [sp, #56]
 2543 02e8 3560     		str	r5, [r6]
 2544 02ea A9AC     		add	r4, sp, #676
 2545 02ec CEF800C0 		str	ip, [lr]
 2546 02f0 C7F80080 		str	r8, [r7]
 2547 02f4 0F9D     		ldr	r5, [sp, #60]
 2548 02f6 CAF80050 		str	r5, [r10]
 2549 02fa 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 2550 02fc 019B     		ldr	r3, [sp, #4]
 2551 02fe 059A     		ldr	r2, [sp, #20]
 2552 0300 2260     		str	r2, [r4]
 2553 0302 033B     		subs	r3, r3, #3
 2554 0304 B0EE408A 		vmov.f32	s16, s0
 2555 0308 B0EE609A 		vmov.f32	s18, s1
 2556 030c F0EE418A 		vmov.f32	s17, s2
 2557 0310 8DEDAECA 		vstr.32	s24, [sp, #696]
 2558 0314 CDEDAFBA 		vstr.32	s23, [sp, #700]
 2559 0318 8DEDB0BA 		vstr.32	s22, [sp, #704]
 2560 031c CDEDB1AA 		vstr.32	s21, [sp, #708]
 2561 0320 8DEDB2AA 		vstr.32	s20, [sp, #712]
 2562 0324 CDEDB39A 		vstr.32	s19, [sp, #716]
 2563 0328 CDEDB41A 		vstr.32	s3, [sp, #720]
 2564 032c 8DEDB52A 		vstr.32	s4, [sp, #724]
 2565 0330 CDEDB62A 		vstr.32	s5, [sp, #728]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 46


 2566 0334 8DEDB73A 		vstr.32	s6, [sp, #732]
 2567 0338 CDEDB83A 		vstr.32	s7, [sp, #736]
 2568 033c 8DEDB94A 		vstr.32	s8, [sp, #740]
 2569 0340 CDEDBA4A 		vstr.32	s9, [sp, #744]
 2570 0344 8DEDBB5A 		vstr.32	s10, [sp, #748]
 2571 0348 CDEDBC5A 		vstr.32	s11, [sp, #752]
 2572 034c 8DEDBD6A 		vstr.32	s12, [sp, #756]
 2573 0350 CDEDBE6A 		vstr.32	s13, [sp, #760]
 2574 0354 8DEDBF7A 		vstr.32	s14, [sp, #764]
 2575 0358 CDEDC07A 		vstr.32	s15, [sp, #768]
 2576 035c 8DF80493 		strb	r9, [sp, #772]
 2577 0360 052B     		cmp	r3, #5
 2578 0362 00F2AA80 		bhi	.L200
 2579 0366 DFE803F0 		tbb	[pc, r3]
 2580              	.L202:
 2581 036a 69       		.byte	(.L201-.L202)/2
 2582 036b 7E       		.byte	(.L203-.L202)/2
 2583 036c 93       		.byte	(.L204-.L202)/2
 2584 036d 54       		.byte	(.L205-.L202)/2
 2585 036e 07       		.byte	(.L207-.L202)/2
 2586 036f 07       		.byte	(.L207-.L202)/2
 2587              		.p2align 1
 2588              	.L227:
 2589              		.align	2
 2590              	.L226:
 2591 0370 08000000 		.word	.LANCHOR4+8
 2592 0374 CDCC4C3E 		.word	1045220557
 2593              	.L207:
 2594 0378 9DED1D7A 		vldr.32	s14, [sp, #116]
 2595 037c 5FED036A 		vldr.32	s13, .L226+4
 2596 0380 DDED747A 		vldr.32	s15, [sp, #464]
 2597 0384 37EE267A 		vadd.f32	s14, s14, s13
 2598 0388 77EEE67A 		vsub.f32	s15, s15, s13
 2599 038c 14A8     		add	r0, sp, #80
 2600 038e 8DED1D7A 		vstr.32	s14, [sp, #116]
 2601 0392 CDED747A 		vstr.32	s15, [sp, #464]
 2602 0396 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2603 039a 6BA8     		add	r0, sp, #428
 2604 039c FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2605              	.L208:
 2606 03a0 11AC     		add	r4, sp, #68
 2607 03a2 14A8     		add	r0, sp, #80
 2608 03a4 2146     		mov	r1, r4
 2609 03a6 B0EE681A 		vmov.f32	s2, s17
 2610 03aa F0EE490A 		vmov.f32	s1, s18
 2611 03ae B0EE480A 		vmov.f32	s0, s16
 2612 03b2 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2613 03b6 019B     		ldr	r3, [sp, #4]
 2614 03b8 A568     		ldr	r5, [r4, #8]	@ float
 2615 03ba 002B     		cmp	r3, #0
 2616 03bc 40F0A880 		bne	.L216
 2617              	.L210:
 2618 03c0 5FED147A 		vldr.32	s15, .L226+4
 2619 03c4 38EE678A 		vsub.f32	s16, s16, s15
 2620              	.L214:
 2621 03c8 F0EE490A 		vmov.f32	s1, s18
 2622 03cc B0EE480A 		vmov.f32	s0, s16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 47


 2623 03d0 B0EE681A 		vmov.f32	s2, s17
 2624 03d4 6BA8     		add	r0, sp, #428
 2625 03d6 2146     		mov	r1, r4
 2626 03d8 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2627 03dc 2846     		mov	r0, r5	@ float
 2628 03de FFF7FEFF 		bl	__aeabi_f2d
 2629 03e2 0646     		mov	r6, r0
 2630 03e4 A068     		ldr	r0, [r4, #8]	@ float
 2631 03e6 0F46     		mov	r7, r1
 2632 03e8 FFF7FEFF 		bl	__aeabi_f2d
 2633 03ec 0246     		mov	r2, r0
 2634 03ee 0B46     		mov	r3, r1
 2635 03f0 3046     		mov	r0, r6
 2636 03f2 3946     		mov	r1, r7
 2637 03f4 FFF7FEFF 		bl	__aeabi_dsub
 2638 03f8 56A3     		adr	r3, .L228+4
 2639 03fa D3E90023 		ldrd	r2, [r3]
 2640 03fe FFF7FEFF 		bl	__aeabi_ddiv
 2641 0402 41EC100B 		vmov	d0, r0, r1
 2642 0406 0DF5437D 		add	sp, sp, #780
 2643              		@ sp needed
 2644 040a BDEC0A8B 		vldm	sp!, {d8-d12}
 2645 040e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2646              	.L205:
 2647 0412 9DED1A7A 		vldr.32	s14, [sp, #104]
 2648 0416 DFED4E6A 		vldr.32	s13, .L228
 2649 041a DDED717A 		vldr.32	s15, [sp, #452]
 2650 041e 37EE267A 		vadd.f32	s14, s14, s13
 2651 0422 77EEE67A 		vsub.f32	s15, s15, s13
 2652 0426 14A8     		add	r0, sp, #80
 2653 0428 8DED1A7A 		vstr.32	s14, [sp, #104]
 2654 042c CDED717A 		vstr.32	s15, [sp, #452]
 2655 0430 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2656 0434 6BA8     		add	r0, sp, #428
 2657 0436 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2658 043a B1E7     		b	.L208
 2659              	.L201:
 2660 043c 9DED1C7A 		vldr.32	s14, [sp, #112]
 2661 0440 DFED436A 		vldr.32	s13, .L228
 2662 0444 DDED737A 		vldr.32	s15, [sp, #460]
 2663 0448 37EE267A 		vadd.f32	s14, s14, s13
 2664 044c 77EEE67A 		vsub.f32	s15, s15, s13
 2665 0450 14A8     		add	r0, sp, #80
 2666 0452 8DED1C7A 		vstr.32	s14, [sp, #112]
 2667 0456 CDED737A 		vstr.32	s15, [sp, #460]
 2668 045a FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2669 045e 6BA8     		add	r0, sp, #428
 2670 0460 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2671 0464 9CE7     		b	.L208
 2672              	.L203:
 2673 0466 9DED1E7A 		vldr.32	s14, [sp, #120]
 2674 046a DFED396A 		vldr.32	s13, .L228
 2675 046e DDED757A 		vldr.32	s15, [sp, #468]
 2676 0472 37EE267A 		vadd.f32	s14, s14, s13
 2677 0476 77EEE67A 		vsub.f32	s15, s15, s13
 2678 047a 14A8     		add	r0, sp, #80
 2679 047c 8DED1E7A 		vstr.32	s14, [sp, #120]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 48


 2680 0480 CDED757A 		vstr.32	s15, [sp, #468]
 2681 0484 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2682 0488 6BA8     		add	r0, sp, #428
 2683 048a FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2684 048e 87E7     		b	.L208
 2685              	.L204:
 2686 0490 9DED1F7A 		vldr.32	s14, [sp, #124]
 2687 0494 DFED2E6A 		vldr.32	s13, .L228
 2688 0498 DDED767A 		vldr.32	s15, [sp, #472]
 2689 049c 37EE267A 		vadd.f32	s14, s14, s13
 2690 04a0 77EEE67A 		vsub.f32	s15, s15, s13
 2691 04a4 14A8     		add	r0, sp, #80
 2692 04a6 8DED1F7A 		vstr.32	s14, [sp, #124]
 2693 04aa CDED767A 		vstr.32	s15, [sp, #472]
 2694 04ae FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2695 04b2 6BA8     		add	r0, sp, #428
 2696 04b4 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2697 04b8 72E7     		b	.L208
 2698              	.L200:
 2699 04ba 019B     		ldr	r3, [sp, #4]
 2700 04bc 53B9     		cbnz	r3, .L209
 2701 04be 9FED240A 		vldr.32	s0, .L228
 2702 04c2 11AC     		add	r4, sp, #68
 2703 04c4 14A8     		add	r0, sp, #80
 2704 04c6 38EE000A 		vadd.f32	s0, s16, s0
 2705 04ca 2146     		mov	r1, r4
 2706 04cc FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2707 04d0 A568     		ldr	r5, [r4, #8]	@ float
 2708 04d2 75E7     		b	.L210
 2709              	.L209:
 2710 04d4 019B     		ldr	r3, [sp, #4]
 2711 04d6 012B     		cmp	r3, #1
 2712 04d8 26D1     		bne	.L211
 2713 04da DFED1D0A 		vldr.32	s1, .L228
 2714 04de 11AC     		add	r4, sp, #68
 2715 04e0 14A8     		add	r0, sp, #80
 2716 04e2 79EE200A 		vadd.f32	s1, s18, s1
 2717 04e6 2146     		mov	r1, r4
 2718 04e8 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2719 04ec A568     		ldr	r5, [r4, #8]	@ float
 2720              	.L212:
 2721 04ee DFED187A 		vldr.32	s15, .L228
 2722 04f2 39EE679A 		vsub.f32	s18, s18, s15
 2723 04f6 67E7     		b	.L214
 2724              	.L225:
 2725 04f8 11AC     		add	r4, sp, #68
 2726 04fa 14A8     		add	r0, sp, #80
 2727 04fc 2146     		mov	r1, r4
 2728 04fe B0EE681A 		vmov.f32	s2, s17
 2729 0502 F0EE490A 		vmov.f32	s1, s18
 2730 0506 B0EE480A 		vmov.f32	s0, s16
 2731 050a FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2732 050e A568     		ldr	r5, [r4, #8]	@ float
 2733              	.L216:
 2734 0510 019B     		ldr	r3, [sp, #4]
 2735 0512 012B     		cmp	r3, #1
 2736 0514 EBD0     		beq	.L212
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 49


 2737 0516 019B     		ldr	r3, [sp, #4]
 2738 0518 022B     		cmp	r3, #2
 2739 051a 7FF455AF 		bne	.L214
 2740              	.L213:
 2741 051e DFED0C7A 		vldr.32	s15, .L228
 2742 0522 78EEE78A 		vsub.f32	s17, s17, s15
 2743 0526 4FE7     		b	.L214
 2744              	.L211:
 2745 0528 019B     		ldr	r3, [sp, #4]
 2746 052a 022B     		cmp	r3, #2
 2747 052c E4D1     		bne	.L225
 2748 052e 9FED081A 		vldr.32	s2, .L228
 2749 0532 11AC     		add	r4, sp, #68
 2750 0534 14A8     		add	r0, sp, #80
 2751 0536 38EE811A 		vadd.f32	s2, s17, s2
 2752 053a 2146     		mov	r1, r4
 2753 053c F0EE490A 		vmov.f32	s1, s18
 2754 0540 B0EE480A 		vmov.f32	s0, s16
 2755 0544 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2756 0548 A568     		ldr	r5, [r4, #8]	@ float
 2757 054a E8E7     		b	.L213
 2758              	.L229:
 2759 054c AFF30080 		.align	3
 2760              	.L228:
 2761 0550 CDCC4C3E 		.word	1045220557
 2762 0554 000000A0 		.word	-1610612736
 2763 0558 9999D93F 		.word	1071225241
 2764              		.size	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff, .-_ZNK21HangprinterKinematics17ComputeD
 2765              		.global	__aeabi_d2f
 2766              		.section	.text._ZN21HangprinterKinematics6AdjustEjPKd,"ax",%progbits
 2767              		.align	1
 2768              		.p2align 2,,3
 2769              		.global	_ZN21HangprinterKinematics6AdjustEjPKd
 2770              		.syntax unified
 2771              		.thumb
 2772              		.thumb_func
 2773              		.fpu fpv4-sp-d16
 2774              		.type	_ZN21HangprinterKinematics6AdjustEjPKd, %function
 2775              	_ZN21HangprinterKinematics6AdjustEjPKd:
 2776              		@ args = 0, pretend = 0, frame = 0
 2777              		@ frame_needed = 0, uses_anonymous_args = 0
 2778 0000 0329     		cmp	r1, #3
 2779 0002 70B5     		push	{r4, r5, r6, lr}
 2780 0004 0446     		mov	r4, r0
 2781 0006 53D9     		bls	.L232
 2782 0008 0D46     		mov	r5, r1
 2783 000a D2E90601 		ldrd	r0, [r2, #24]
 2784 000e 1646     		mov	r6, r2
 2785 0010 FFF7FEFF 		bl	__aeabi_d2f
 2786 0014 D4ED087A 		vldr.32	s15, [r4, #32]
 2787 0018 07EE100A 		vmov	s14, r0
 2788 001c 77EE877A 		vadd.f32	s15, s15, s14
 2789 0020 042D     		cmp	r5, #4
 2790 0022 C4ED087A 		vstr.32	s15, [r4, #32]
 2791 0026 43D0     		beq	.L232
 2792 0028 D6E90801 		ldrd	r0, [r6, #32]
 2793 002c FFF7FEFF 		bl	__aeabi_d2f
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 50


 2794 0030 D4ED0A7A 		vldr.32	s15, [r4, #40]
 2795 0034 07EE100A 		vmov	s14, r0
 2796 0038 77EE877A 		vadd.f32	s15, s15, s14
 2797 003c 052D     		cmp	r5, #5
 2798 003e C4ED0A7A 		vstr.32	s15, [r4, #40]
 2799 0042 35D0     		beq	.L232
 2800 0044 D6E90A01 		ldrd	r0, [r6, #40]
 2801 0048 FFF7FEFF 		bl	__aeabi_d2f
 2802 004c D4ED0B7A 		vldr.32	s15, [r4, #44]
 2803 0050 07EE100A 		vmov	s14, r0
 2804 0054 77EE877A 		vadd.f32	s15, s15, s14
 2805 0058 062D     		cmp	r5, #6
 2806 005a C4ED0B7A 		vstr.32	s15, [r4, #44]
 2807 005e 27D0     		beq	.L232
 2808 0060 D6E90C01 		ldrd	r0, [r6, #48]
 2809 0064 FFF7FEFF 		bl	__aeabi_d2f
 2810 0068 D4ED067A 		vldr.32	s15, [r4, #24]
 2811 006c 07EE100A 		vmov	s14, r0
 2812 0070 77EE877A 		vadd.f32	s15, s15, s14
 2813 0074 072D     		cmp	r5, #7
 2814 0076 C4ED067A 		vstr.32	s15, [r4, #24]
 2815 007a 19D0     		beq	.L232
 2816 007c D6E90E01 		ldrd	r0, [r6, #56]
 2817 0080 FFF7FEFF 		bl	__aeabi_d2f
 2818 0084 D4ED097A 		vldr.32	s15, [r4, #36]
 2819 0088 07EE100A 		vmov	s14, r0
 2820 008c 77EE877A 		vadd.f32	s15, s15, s14
 2821 0090 082D     		cmp	r5, #8
 2822 0092 C4ED097A 		vstr.32	s15, [r4, #36]
 2823 0096 0BD0     		beq	.L232
 2824 0098 D6E91001 		ldrd	r0, [r6, #64]
 2825 009c FFF7FEFF 		bl	__aeabi_d2f
 2826 00a0 D4ED0C7A 		vldr.32	s15, [r4, #48]
 2827 00a4 07EE100A 		vmov	s14, r0
 2828 00a8 77EE877A 		vadd.f32	s15, s15, s14
 2829 00ac C4ED0C7A 		vstr.32	s15, [r4, #48]
 2830              	.L232:
 2831 00b0 2046     		mov	r0, r4
 2832 00b2 BDE87040 		pop	{r4, r5, r6, lr}
 2833 00b6 FFF7FEBF 		b	_ZN21HangprinterKinematics6RecalcEv
 2834              		.size	_ZN21HangprinterKinematics6AdjustEjPKd, .-_ZN21HangprinterKinematics6AdjustEjPKd
 2835 00ba 00BF     		.section	.text._ZNK21HangprinterKinematics15PrintParametersERK9StringRef,"ax",%progbits
 2836              		.align	1
 2837              		.p2align 2,,3
 2838              		.global	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 2839              		.syntax unified
 2840              		.thumb
 2841              		.thumb_func
 2842              		.fpu fpv4-sp-d16
 2843              		.type	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef, %function
 2844              	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef:
 2845              		@ args = 0, pretend = 0, frame = 0
 2846              		@ frame_needed = 0, uses_anonymous_args = 0
 2847 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2848 0002 0446     		mov	r4, r0
 2849 0004 91B0     		sub	sp, sp, #68
 2850 0006 0069     		ldr	r0, [r0, #16]	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 51


 2851 0008 0D46     		mov	r5, r1
 2852 000a FFF7FEFF 		bl	__aeabi_f2d
 2853 000e 0646     		mov	r6, r0
 2854 0010 206B     		ldr	r0, [r4, #48]	@ float
 2855 0012 0F46     		mov	r7, r1
 2856 0014 FFF7FEFF 		bl	__aeabi_f2d
 2857 0018 CDE90E01 		strd	r0, [sp, #56]
 2858 001c E06A     		ldr	r0, [r4, #44]	@ float
 2859 001e FFF7FEFF 		bl	__aeabi_f2d
 2860 0022 CDE90C01 		strd	r0, [sp, #48]
 2861 0026 A06A     		ldr	r0, [r4, #40]	@ float
 2862 0028 FFF7FEFF 		bl	__aeabi_f2d
 2863 002c CDE90A01 		strd	r0, [sp, #40]
 2864 0030 606A     		ldr	r0, [r4, #36]	@ float
 2865 0032 FFF7FEFF 		bl	__aeabi_f2d
 2866 0036 CDE90801 		strd	r0, [sp, #32]
 2867 003a 206A     		ldr	r0, [r4, #32]	@ float
 2868 003c FFF7FEFF 		bl	__aeabi_f2d
 2869 0040 CDE90601 		strd	r0, [sp, #24]
 2870 0044 E069     		ldr	r0, [r4, #28]	@ float
 2871 0046 FFF7FEFF 		bl	__aeabi_f2d
 2872 004a CDE90401 		strd	r0, [sp, #16]
 2873 004e A069     		ldr	r0, [r4, #24]	@ float
 2874 0050 FFF7FEFF 		bl	__aeabi_f2d
 2875 0054 CDE90201 		strd	r0, [sp, #8]
 2876 0058 6069     		ldr	r0, [r4, #20]	@ float
 2877 005a FFF7FEFF 		bl	__aeabi_f2d
 2878 005e 3246     		mov	r2, r6
 2879 0060 CDE90001 		strd	r0, [sp]
 2880 0064 3B46     		mov	r3, r7
 2881 0066 2846     		mov	r0, r5
 2882 0068 0249     		ldr	r1, .L252
 2883 006a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2884 006e 11B0     		add	sp, sp, #68
 2885              		@ sp needed
 2886 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 2887              	.L253:
 2888 0072 00BF     		.align	2
 2889              	.L252:
 2890 0074 00000000 		.word	.LC33
 2891              		.size	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef, .-_ZNK21HangprinterKinematics15Pr
 2892              		.section	.text._ZN6StringILj200EE6printfEPKcz,"axG",%progbits,_ZN6StringILj200EE6printfEPKcz,comda
 2893              		.align	1
 2894              		.p2align 2,,3
 2895              		.weak	_ZN6StringILj200EE6printfEPKcz
 2896              		.syntax unified
 2897              		.thumb
 2898              		.thumb_func
 2899              		.fpu fpv4-sp-d16
 2900              		.type	_ZN6StringILj200EE6printfEPKcz, %function
 2901              	_ZN6StringILj200EE6printfEPKcz:
 2902              		@ args = 4, pretend = 12, frame = 16
 2903              		@ frame_needed = 0, uses_anonymous_args = 1
 2904 0000 0EB4     		push	{r1, r2, r3}
 2905 0002 00B5     		push	{lr}
 2906 0004 84B0     		sub	sp, sp, #16
 2907 0006 05AA     		add	r2, sp, #20
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 52


 2908 0008 0290     		str	r0, [sp, #8]
 2909 000a 52F8041B 		ldr	r1, [r2], #4
 2910 000e 0192     		str	r2, [sp, #4]
 2911 0010 C923     		movs	r3, #201
 2912 0012 02A8     		add	r0, sp, #8
 2913 0014 0393     		str	r3, [sp, #12]
 2914 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 2915 001a 04B0     		add	sp, sp, #16
 2916              		@ sp needed
 2917 001c 5DF804EB 		ldr	lr, [sp], #4
 2918 0020 03B0     		add	sp, sp, #12
 2919 0022 7047     		bx	lr
 2920              		.size	_ZN6StringILj200EE6printfEPKcz, .-_ZN6StringILj200EE6printfEPKcz
 2921              		.section	.text._ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore,"ax",%progbits
 2922              		.align	1
 2923              		.p2align 2,,3
 2924              		.global	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore
 2925              		.syntax unified
 2926              		.thumb
 2927              		.thumb_func
 2928              		.fpu fpv4-sp-d16
 2929              		.type	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore, %function
 2930              	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore:
 2931              		@ args = 0, pretend = 0, frame = 208
 2932              		@ frame_needed = 0, uses_anonymous_args = 0
 2933 0000 2DE97043 		push	{r4, r5, r6, r8, r9, lr}
 2934 0004 0D46     		mov	r5, r1
 2935 0006 D2B0     		sub	sp, sp, #328
 2936 0008 0446     		mov	r4, r0
 2937 000a 3349     		ldr	r1, .L262
 2938 000c 2846     		mov	r0, r5
 2939 000e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 2940 0012 0028     		cmp	r0, #0
 2941 0014 5DD0     		beq	.L257
 2942 0016 52AE     		add	r6, sp, #328
 2943 0018 0023     		movs	r3, #0
 2944 001a 2069     		ldr	r0, [r4, #16]	@ float
 2945 001c 06F8CC3D 		strb	r3, [r6, #-204]!
 2946 0020 FFF7FEFF 		bl	__aeabi_f2d
 2947 0024 8046     		mov	r8, r0
 2948 0026 606D     		ldr	r0, [r4, #84]	@ float
 2949 0028 8946     		mov	r9, r1
 2950 002a FFF7FEFF 		bl	__aeabi_f2d
 2951 002e CDE91C01 		strd	r0, [sp, #112]
 2952 0032 206D     		ldr	r0, [r4, #80]	@ float
 2953 0034 FFF7FEFF 		bl	__aeabi_f2d
 2954 0038 CDE91A01 		strd	r0, [sp, #104]
 2955 003c E06C     		ldr	r0, [r4, #76]	@ float
 2956 003e FFF7FEFF 		bl	__aeabi_f2d
 2957 0042 CDE91801 		strd	r0, [sp, #96]
 2958 0046 A06C     		ldr	r0, [r4, #72]	@ float
 2959 0048 FFF7FEFF 		bl	__aeabi_f2d
 2960 004c CDE91601 		strd	r0, [sp, #88]
 2961 0050 206C     		ldr	r0, [r4, #64]	@ float
 2962 0052 FFF7FEFF 		bl	__aeabi_f2d
 2963 0056 CDE91401 		strd	r0, [sp, #80]
 2964 005a E06B     		ldr	r0, [r4, #60]	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 53


 2965 005c FFF7FEFF 		bl	__aeabi_f2d
 2966 0060 CDE91201 		strd	r0, [sp, #72]
 2967 0064 606B     		ldr	r0, [r4, #52]	@ float
 2968 0066 FFF7FEFF 		bl	__aeabi_f2d
 2969 006a CDE91001 		strd	r0, [sp, #64]
 2970 006e 206B     		ldr	r0, [r4, #48]	@ float
 2971 0070 FFF7FEFF 		bl	__aeabi_f2d
 2972 0074 CDE90E01 		strd	r0, [sp, #56]
 2973 0078 E06A     		ldr	r0, [r4, #44]	@ float
 2974 007a FFF7FEFF 		bl	__aeabi_f2d
 2975 007e CDE90C01 		strd	r0, [sp, #48]
 2976 0082 A06A     		ldr	r0, [r4, #40]	@ float
 2977 0084 FFF7FEFF 		bl	__aeabi_f2d
 2978 0088 CDE90A01 		strd	r0, [sp, #40]
 2979 008c 606A     		ldr	r0, [r4, #36]	@ float
 2980 008e FFF7FEFF 		bl	__aeabi_f2d
 2981 0092 CDE90801 		strd	r0, [sp, #32]
 2982 0096 206A     		ldr	r0, [r4, #32]	@ float
 2983 0098 FFF7FEFF 		bl	__aeabi_f2d
 2984 009c CDE90601 		strd	r0, [sp, #24]
 2985 00a0 E069     		ldr	r0, [r4, #28]	@ float
 2986 00a2 FFF7FEFF 		bl	__aeabi_f2d
 2987 00a6 CDE90401 		strd	r0, [sp, #16]
 2988 00aa A069     		ldr	r0, [r4, #24]	@ float
 2989 00ac FFF7FEFF 		bl	__aeabi_f2d
 2990 00b0 CDE90201 		strd	r0, [sp, #8]
 2991 00b4 6069     		ldr	r0, [r4, #20]	@ float
 2992 00b6 FFF7FEFF 		bl	__aeabi_f2d
 2993 00ba 4246     		mov	r2, r8
 2994 00bc CDE90001 		strd	r0, [sp]
 2995 00c0 4B46     		mov	r3, r9
 2996 00c2 0649     		ldr	r1, .L262+4
 2997 00c4 3046     		mov	r0, r6
 2998 00c6 FFF7FEFF 		bl	_ZN6StringILj200EE6printfEPKcz
 2999 00ca 3146     		mov	r1, r6
 3000 00cc 2846     		mov	r0, r5
 3001 00ce FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 3002              	.L257:
 3003 00d2 52B0     		add	sp, sp, #328
 3004              		@ sp needed
 3005 00d4 BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 3006              	.L263:
 3007              		.align	2
 3008              	.L262:
 3009 00d8 00000000 		.word	.LC34
 3010 00dc 1C000000 		.word	.LC35
 3011              		.size	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK21HangprinterKine
 3012              		.global	__aeabi_dmul
 3013              		.section	.text._ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj,"axG",%progbits,_ZN11FixedMatrixIdLj9
 3014              		.align	1
 3015              		.p2align 2,,3
 3016              		.weak	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 3017              		.syntax unified
 3018              		.thumb
 3019              		.thumb_func
 3020              		.fpu fpv4-sp-d16
 3021              		.type	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 54


 3022              	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj:
 3023              		@ args = 0, pretend = 0, frame = 64
 3024              		@ frame_needed = 0, uses_anonymous_args = 0
 3025 0000 002A     		cmp	r2, #0
 3026 0002 00F02082 		beq	.L328
 3027 0006 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3028 000a 2DED088B 		vpush.64	{d8, d9, d10, d11}
 3029 000e 91B0     		sub	sp, sp, #68
 3030 0010 AF4E     		ldr	r6, .L345+8
 3031 0012 0092     		str	r2, [sp]
 3032 0014 0246     		mov	r2, r0
 3033 0016 0F91     		str	r1, [sp, #60]
 3034 0018 52F8083B 		ldr	r3, [r2], #8
 3035 001c 0D92     		str	r2, [sp, #52]
 3036 001e 9F68     		ldr	r7, [r3, #8]
 3037 0020 0023     		movs	r3, #0
 3038 0022 BB46     		mov	fp, r7
 3039 0024 0A93     		str	r3, [sp, #40]
 3040 0026 CDE90B33 		strd	r3, r3, [sp, #44]
 3041 002a 0493     		str	r3, [sp, #16]
 3042 002c B345     		cmp	fp, r6
 3043 002e 00F15803 		add	r3, r0, #88
 3044 0032 9FEDA5BB 		vldr.64	d11, .L345
 3045 0036 0E93     		str	r3, [sp, #56]
 3046 0038 8246     		mov	r10, r0
 3047 003a 40F09281 		bne	.L266
 3048              	.L342:
 3049 003e 0D9B     		ldr	r3, [sp, #52]
 3050 0040 0A9A     		ldr	r2, [sp, #40]
 3051 0042 9818     		adds	r0, r3, r2
 3052              	.L267:
 3053 0044 D0E90001 		ldrd	r0, [r0]
 3054 0048 FFF7FEFF 		bl	__aeabi_d2f
 3055 004c 049B     		ldr	r3, [sp, #16]
 3056 004e 0099     		ldr	r1, [sp]
 3057 0050 0133     		adds	r3, r3, #1
 3058 0052 07EE900A 		vmov	s15, r0
 3059 0056 9942     		cmp	r1, r3
 3060 0058 0693     		str	r3, [sp, #24]
 3061 005a B0EEE78A 		vabs.f32	s16, s15
 3062 005e 40F29680 		bls	.L268
 3063 0062 CB1A     		subs	r3, r1, r3
 3064 0064 0193     		str	r3, [sp, #4]
 3065 0066 0A9A     		ldr	r2, [sp, #40]
 3066 0068 0E9B     		ldr	r3, [sp, #56]
 3067 006a 1344     		add	r3, r3, r2
 3068 006c 6FF04F07 		mvn	r7, #79
 3069 0070 0025     		movs	r5, #0
 3070 0072 0293     		str	r3, [sp, #8]
 3071 0074 5C46     		mov	r4, fp
 3072 0076 06E0     		b	.L282
 3073              	.L271:
 3074 0078 019B     		ldr	r3, [sp, #4]
 3075 007a 0135     		adds	r5, r5, #1
 3076 007c AB42     		cmp	r3, r5
 3077 007e A7F15007 		sub	r7, r7, #80
 3078 0082 00F08380 		beq	.L331
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 55


 3079              	.L282:
 3080 0086 069B     		ldr	r3, [sp, #24]
 3081 0088 B442     		cmp	r4, r6
 3082 008a 03EB0509 		add	r9, r3, r5
 3083 008e 6AD1     		bne	.L269
 3084 0090 029B     		ldr	r3, [sp, #8]
 3085 0092 05EB8500 		add	r0, r5, r5, lsl #2
 3086 0096 03EB0010 		add	r0, r3, r0, lsl #4
 3087              	.L270:
 3088 009a D0E90001 		ldrd	r0, [r0]
 3089 009e FFF7FEFF 		bl	__aeabi_d2f
 3090 00a2 07EE900A 		vmov	s15, r0
 3091 00a6 B0EEE7AA 		vabs.f32	s20, s15
 3092 00aa B4EEC8AA 		vcmpe.f32	s20, s16
 3093 00ae F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3094 00b2 E1DD     		ble	.L271
 3095 00b4 049B     		ldr	r3, [sp, #16]
 3096 00b6 4B45     		cmp	r3, r9
 3097 00b8 00F07C81 		beq	.L317
 3098 00bc 0B9A     		ldr	r2, [sp, #44]
 3099 00be 092A     		cmp	r2, #9
 3100 00c0 00F27881 		bhi	.L317
 3101 00c4 029A     		ldr	r2, [sp, #8]
 3102 00c6 05EB8508 		add	r8, r5, r5, lsl #2
 3103 00ca 9B46     		mov	fp, r3
 3104 00cc 2B46     		mov	r3, r5
 3105 00ce 02EB0818 		add	r8, r2, r8, lsl #4
 3106 00d2 4D46     		mov	r5, r9
 3107 00d4 B946     		mov	r9, r7
 3108 00d6 1F46     		mov	r7, r3
 3109 00d8 1AE0     		b	.L281
 3110              	.L333:
 3111 00da 08EB0900 		add	r0, r8, r9
 3112 00de B442     		cmp	r4, r6
 3113 00e0 90ED008B 		vldr.64	d8, [r0]
 3114 00e4 21D1     		bne	.L275
 3115              	.L334:
 3116 00e6 4046     		mov	r0, r8
 3117 00e8 B442     		cmp	r4, r6
 3118 00ea 90ED009B 		vldr.64	d9, [r0]
 3119 00ee 27D1     		bne	.L277
 3120              	.L335:
 3121 00f0 08EB0900 		add	r0, r8, r9
 3122 00f4 B442     		cmp	r4, r6
 3123 00f6 80ED009B 		vstr.64	d9, [r0]
 3124 00fa 2CD1     		bne	.L279
 3125              	.L336:
 3126 00fc 4046     		mov	r0, r8
 3127              	.L280:
 3128 00fe 0BF1010B 		add	fp, fp, #1
 3129 0102 BBF10A0F 		cmp	fp, #10
 3130 0106 80ED008B 		vstr.64	d8, [r0]
 3131 010a 08F10808 		add	r8, r8, #8
 3132 010e 32D0     		beq	.L332
 3133              	.L281:
 3134 0110 B442     		cmp	r4, r6
 3135 0112 E2D0     		beq	.L333
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 56


 3136 0114 5A46     		mov	r2, fp
 3137 0116 0499     		ldr	r1, [sp, #16]
 3138 0118 5046     		mov	r0, r10
 3139 011a A047     		blx	r4
 3140 011c DAF80020 		ldr	r2, [r10]
 3141 0120 9468     		ldr	r4, [r2, #8]
 3142 0122 B442     		cmp	r4, r6
 3143 0124 90ED008B 		vldr.64	d8, [r0]
 3144 0128 DDD0     		beq	.L334
 3145              	.L275:
 3146 012a 5A46     		mov	r2, fp
 3147 012c 2946     		mov	r1, r5
 3148 012e 5046     		mov	r0, r10
 3149 0130 A047     		blx	r4
 3150 0132 DAF80020 		ldr	r2, [r10]
 3151 0136 9468     		ldr	r4, [r2, #8]
 3152 0138 B442     		cmp	r4, r6
 3153 013a 90ED009B 		vldr.64	d9, [r0]
 3154 013e D7D0     		beq	.L335
 3155              	.L277:
 3156 0140 5A46     		mov	r2, fp
 3157 0142 0499     		ldr	r1, [sp, #16]
 3158 0144 5046     		mov	r0, r10
 3159 0146 A047     		blx	r4
 3160 0148 DAF80020 		ldr	r2, [r10]
 3161 014c 9468     		ldr	r4, [r2, #8]
 3162 014e B442     		cmp	r4, r6
 3163 0150 80ED009B 		vstr.64	d9, [r0]
 3164 0154 D2D0     		beq	.L336
 3165              	.L279:
 3166 0156 5A46     		mov	r2, fp
 3167 0158 2946     		mov	r1, r5
 3168 015a 5046     		mov	r0, r10
 3169 015c A047     		blx	r4
 3170 015e DAF80020 		ldr	r2, [r10]
 3171 0162 9468     		ldr	r4, [r2, #8]
 3172 0164 CBE7     		b	.L280
 3173              	.L269:
 3174 0166 049A     		ldr	r2, [sp, #16]
 3175 0168 4946     		mov	r1, r9
 3176 016a 5046     		mov	r0, r10
 3177 016c A047     		blx	r4
 3178 016e DAF80030 		ldr	r3, [r10]
 3179 0172 9C68     		ldr	r4, [r3, #8]
 3180 0174 91E7     		b	.L270
 3181              	.L332:
 3182 0176 3D46     		mov	r5, r7
 3183 0178 019B     		ldr	r3, [sp, #4]
 3184 017a 0135     		adds	r5, r5, #1
 3185 017c 4F46     		mov	r7, r9
 3186 017e AB42     		cmp	r3, r5
 3187 0180 B0EE4A8A 		vmov.f32	s16, s20
 3188 0184 A7F15007 		sub	r7, r7, #80
 3189 0188 7FF47DAF 		bne	.L282
 3190              	.L331:
 3191 018c A346     		mov	fp, r4
 3192              	.L268:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 57


 3193 018e B345     		cmp	fp, r6
 3194 0190 40F01381 		bne	.L283
 3195 0194 0D9B     		ldr	r3, [sp, #52]
 3196 0196 0A9A     		ldr	r2, [sp, #40]
 3197 0198 9818     		adds	r0, r3, r2
 3198              	.L284:
 3199 019a 90ED007B 		vldr.64	d7, [r0]
 3200 019e 0B9B     		ldr	r3, [sp, #44]
 3201 01a0 8DED087B 		vstr.64	d7, [sp, #32]
 3202 01a4 002B     		cmp	r3, #0
 3203 01a6 61D0     		beq	.L298
 3204 01a8 069B     		ldr	r3, [sp, #24]
 3205 01aa 0AEBC303 		add	r3, r10, r3, lsl #3
 3206 01ae 0593     		str	r3, [sp, #20]
 3207 01b0 0C9B     		ldr	r3, [sp, #48]
 3208 01b2 DB00     		lsls	r3, r3, #3
 3209 01b4 0193     		str	r3, [sp, #4]
 3210 01b6 0023     		movs	r3, #0
 3211 01b8 0793     		str	r3, [sp, #28]
 3212 01ba 5F46     		mov	r7, fp
 3213              	.L299:
 3214 01bc B742     		cmp	r7, r6
 3215 01be 40F0F180 		bne	.L288
 3216 01c2 0598     		ldr	r0, [sp, #20]
 3217              	.L289:
 3218 01c4 DDE90823 		ldrd	r2, [sp, #32]
 3219 01c8 D0E90001 		ldrd	r0, [r0]
 3220 01cc FFF7FEFF 		bl	__aeabi_ddiv
 3221 01d0 B742     		cmp	r7, r6
 3222 01d2 CDE90201 		strd	r0, [sp, #8]
 3223 01d6 40F0DD80 		bne	.L290
 3224 01da 0598     		ldr	r0, [sp, #20]
 3225              	.L291:
 3226 01dc 009B     		ldr	r3, [sp]
 3227 01de 069D     		ldr	r5, [sp, #24]
 3228 01e0 1A46     		mov	r2, r3
 3229 01e2 AA42     		cmp	r2, r5
 3230 01e4 80ED00BB 		vstr.64	d11, [r0]
 3231 01e8 33D3     		bcc	.L292
 3232 01ea 059B     		ldr	r3, [sp, #20]
 3233 01ec D146     		mov	r9, r10
 3234 01ee 03F10804 		add	r4, r3, #8
 3235 01f2 1AE0     		b	.L297
 3236              	.L338:
 3237 01f4 019B     		ldr	r3, [sp, #4]
 3238 01f6 1819     		adds	r0, r3, r4
 3239              	.L294:
 3240 01f8 D0E90023 		ldrd	r2, [r0]
 3241 01fc DDE90201 		ldrd	r0, [sp, #8]
 3242 0200 FFF7FEFF 		bl	__aeabi_dmul
 3243 0204 B742     		cmp	r7, r6
 3244 0206 8246     		mov	r10, r0
 3245 0208 8B46     		mov	fp, r1
 3246 020a 18D1     		bne	.L295
 3247 020c A046     		mov	r8, r4
 3248              	.L296:
 3249 020e 5B46     		mov	r3, fp
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 58


 3250 0210 D8E90001 		ldrd	r0, [r8]
 3251 0214 5246     		mov	r2, r10
 3252 0216 FFF7FEFF 		bl	__aeabi_dsub
 3253 021a 009B     		ldr	r3, [sp]
 3254 021c 0135     		adds	r5, r5, #1
 3255 021e AB42     		cmp	r3, r5
 3256 0220 04F10804 		add	r4, r4, #8
 3257 0224 C8E90001 		strd	r0, [r8]
 3258 0228 12D3     		bcc	.L337
 3259              	.L297:
 3260 022a B742     		cmp	r7, r6
 3261 022c E2D0     		beq	.L338
 3262 022e 2A46     		mov	r2, r5
 3263 0230 0499     		ldr	r1, [sp, #16]
 3264 0232 4846     		mov	r0, r9
 3265 0234 B847     		blx	r7
 3266 0236 D9F80030 		ldr	r3, [r9]
 3267 023a 9F68     		ldr	r7, [r3, #8]
 3268 023c DCE7     		b	.L294
 3269              	.L295:
 3270 023e 2A46     		mov	r2, r5
 3271 0240 0799     		ldr	r1, [sp, #28]
 3272 0242 4846     		mov	r0, r9
 3273 0244 B847     		blx	r7
 3274 0246 D9F80030 		ldr	r3, [r9]
 3275 024a 8046     		mov	r8, r0
 3276 024c 9F68     		ldr	r7, [r3, #8]
 3277 024e DEE7     		b	.L296
 3278              	.L337:
 3279 0250 CA46     		mov	r10, r9
 3280              	.L292:
 3281 0252 059A     		ldr	r2, [sp, #20]
 3282 0254 079B     		ldr	r3, [sp, #28]
 3283 0256 5032     		adds	r2, r2, #80
 3284 0258 0592     		str	r2, [sp, #20]
 3285 025a 019A     		ldr	r2, [sp, #4]
 3286 025c 503A     		subs	r2, r2, #80
 3287 025e 0192     		str	r2, [sp, #4]
 3288 0260 049A     		ldr	r2, [sp, #16]
 3289 0262 0133     		adds	r3, r3, #1
 3290 0264 9342     		cmp	r3, r2
 3291 0266 0793     		str	r3, [sp, #28]
 3292 0268 A8D1     		bne	.L299
 3293 026a BB46     		mov	fp, r7
 3294              	.L298:
 3295 026c 009B     		ldr	r3, [sp]
 3296 026e 069A     		ldr	r2, [sp, #24]
 3297 0270 9342     		cmp	r3, r2
 3298 0272 00F0AB80 		beq	.L339
 3299 0276 0C9B     		ldr	r3, [sp, #48]
 3300 0278 0A9A     		ldr	r2, [sp, #40]
 3301 027a 0A33     		adds	r3, r3, #10
 3302 027c 0C93     		str	r3, [sp, #48]
 3303 027e 0E9B     		ldr	r3, [sp, #56]
 3304 0280 1344     		add	r3, r3, r2
 3305 0282 0593     		str	r3, [sp, #20]
 3306 0284 069B     		ldr	r3, [sp, #24]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 59


 3307 0286 0793     		str	r3, [sp, #28]
 3308 0288 6FF04F03 		mvn	r3, #79
 3309 028c 0193     		str	r3, [sp, #4]
 3310 028e 5F46     		mov	r7, fp
 3311              	.L310:
 3312 0290 B742     		cmp	r7, r6
 3313 0292 6FD1     		bne	.L300
 3314 0294 0598     		ldr	r0, [sp, #20]
 3315              	.L301:
 3316 0296 DDE90823 		ldrd	r2, [sp, #32]
 3317 029a D0E90001 		ldrd	r0, [r0]
 3318 029e FFF7FEFF 		bl	__aeabi_ddiv
 3319 02a2 B742     		cmp	r7, r6
 3320 02a4 CDE90201 		strd	r0, [sp, #8]
 3321 02a8 6CD1     		bne	.L302
 3322 02aa 0598     		ldr	r0, [sp, #20]
 3323              	.L303:
 3324 02ac 009B     		ldr	r3, [sp]
 3325 02ae 069D     		ldr	r5, [sp, #24]
 3326 02b0 1A46     		mov	r2, r3
 3327 02b2 AA42     		cmp	r2, r5
 3328 02b4 80ED00BB 		vstr.64	d11, [r0]
 3329 02b8 3BD3     		bcc	.L304
 3330 02ba 059B     		ldr	r3, [sp, #20]
 3331 02bc D146     		mov	r9, r10
 3332 02be 03F10804 		add	r4, r3, #8
 3333 02c2 22E0     		b	.L309
 3334              	.L346:
 3335 02c4 AFF30080 		.align	3
 3336              	.L345:
 3337 02c8 00000000 		.word	0
 3338 02cc 00000000 		.word	0
 3339 02d0 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 3340              	.L341:
 3341 02d4 019B     		ldr	r3, [sp, #4]
 3342 02d6 1819     		adds	r0, r3, r4
 3343              	.L306:
 3344 02d8 D0E90023 		ldrd	r2, [r0]
 3345 02dc DDE90201 		ldrd	r0, [sp, #8]
 3346 02e0 FFF7FEFF 		bl	__aeabi_dmul
 3347 02e4 B742     		cmp	r7, r6
 3348 02e6 8246     		mov	r10, r0
 3349 02e8 8B46     		mov	fp, r1
 3350 02ea 18D1     		bne	.L307
 3351 02ec A046     		mov	r8, r4
 3352              	.L308:
 3353 02ee 5B46     		mov	r3, fp
 3354 02f0 D8E90001 		ldrd	r0, [r8]
 3355 02f4 5246     		mov	r2, r10
 3356 02f6 FFF7FEFF 		bl	__aeabi_dsub
 3357 02fa 009B     		ldr	r3, [sp]
 3358 02fc 0135     		adds	r5, r5, #1
 3359 02fe AB42     		cmp	r3, r5
 3360 0300 04F10804 		add	r4, r4, #8
 3361 0304 C8E90001 		strd	r0, [r8]
 3362 0308 12D3     		bcc	.L340
 3363              	.L309:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 60


 3364 030a B742     		cmp	r7, r6
 3365 030c E2D0     		beq	.L341
 3366 030e 2A46     		mov	r2, r5
 3367 0310 0499     		ldr	r1, [sp, #16]
 3368 0312 4846     		mov	r0, r9
 3369 0314 B847     		blx	r7
 3370 0316 D9F80030 		ldr	r3, [r9]
 3371 031a 9F68     		ldr	r7, [r3, #8]
 3372 031c DCE7     		b	.L306
 3373              	.L307:
 3374 031e 2A46     		mov	r2, r5
 3375 0320 0799     		ldr	r1, [sp, #28]
 3376 0322 4846     		mov	r0, r9
 3377 0324 B847     		blx	r7
 3378 0326 D9F80030 		ldr	r3, [r9]
 3379 032a 8046     		mov	r8, r0
 3380 032c 9F68     		ldr	r7, [r3, #8]
 3381 032e DEE7     		b	.L308
 3382              	.L340:
 3383 0330 CA46     		mov	r10, r9
 3384              	.L304:
 3385 0332 059A     		ldr	r2, [sp, #20]
 3386 0334 079B     		ldr	r3, [sp, #28]
 3387 0336 5032     		adds	r2, r2, #80
 3388 0338 0592     		str	r2, [sp, #20]
 3389 033a 019A     		ldr	r2, [sp, #4]
 3390 033c 503A     		subs	r2, r2, #80
 3391 033e 0192     		str	r2, [sp, #4]
 3392 0340 009A     		ldr	r2, [sp]
 3393 0342 0133     		adds	r3, r3, #1
 3394 0344 9A42     		cmp	r2, r3
 3395 0346 0793     		str	r3, [sp, #28]
 3396 0348 A2D1     		bne	.L310
 3397 034a 0B9B     		ldr	r3, [sp, #44]
 3398 034c 0133     		adds	r3, r3, #1
 3399 034e 0B93     		str	r3, [sp, #44]
 3400 0350 0A9B     		ldr	r3, [sp, #40]
 3401 0352 BB46     		mov	fp, r7
 3402 0354 5833     		adds	r3, r3, #88
 3403 0356 0A93     		str	r3, [sp, #40]
 3404 0358 B345     		cmp	fp, r6
 3405 035a 069B     		ldr	r3, [sp, #24]
 3406 035c 0493     		str	r3, [sp, #16]
 3407 035e 3FF46EAE 		beq	.L342
 3408              	.L266:
 3409 0362 0499     		ldr	r1, [sp, #16]
 3410 0364 5046     		mov	r0, r10
 3411 0366 0A46     		mov	r2, r1
 3412 0368 D847     		blx	fp
 3413 036a DAF80030 		ldr	r3, [r10]
 3414 036e D3F808B0 		ldr	fp, [r3, #8]
 3415 0372 67E6     		b	.L267
 3416              	.L300:
 3417 0374 049A     		ldr	r2, [sp, #16]
 3418 0376 0799     		ldr	r1, [sp, #28]
 3419 0378 5046     		mov	r0, r10
 3420 037a B847     		blx	r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 61


 3421 037c DAF80030 		ldr	r3, [r10]
 3422 0380 9F68     		ldr	r7, [r3, #8]
 3423 0382 88E7     		b	.L301
 3424              	.L302:
 3425 0384 049A     		ldr	r2, [sp, #16]
 3426 0386 0799     		ldr	r1, [sp, #28]
 3427 0388 5046     		mov	r0, r10
 3428 038a B847     		blx	r7
 3429 038c DAF80030 		ldr	r3, [r10]
 3430 0390 9F68     		ldr	r7, [r3, #8]
 3431 0392 8BE7     		b	.L303
 3432              	.L290:
 3433 0394 049A     		ldr	r2, [sp, #16]
 3434 0396 0799     		ldr	r1, [sp, #28]
 3435 0398 5046     		mov	r0, r10
 3436 039a B847     		blx	r7
 3437 039c DAF80030 		ldr	r3, [r10]
 3438 03a0 9F68     		ldr	r7, [r3, #8]
 3439 03a2 1BE7     		b	.L291
 3440              	.L288:
 3441 03a4 049A     		ldr	r2, [sp, #16]
 3442 03a6 0799     		ldr	r1, [sp, #28]
 3443 03a8 5046     		mov	r0, r10
 3444 03aa B847     		blx	r7
 3445 03ac DAF80030 		ldr	r3, [r10]
 3446 03b0 9F68     		ldr	r7, [r3, #8]
 3447 03b2 07E7     		b	.L289
 3448              	.L317:
 3449 03b4 B0EE4A8A 		vmov.f32	s16, s20
 3450 03b8 5EE6     		b	.L271
 3451              	.L283:
 3452 03ba 0499     		ldr	r1, [sp, #16]
 3453 03bc 5046     		mov	r0, r10
 3454 03be 0A46     		mov	r2, r1
 3455 03c0 D847     		blx	fp
 3456 03c2 DAF80030 		ldr	r3, [r10]
 3457 03c6 D3F808B0 		ldr	fp, [r3, #8]
 3458 03ca E6E6     		b	.L284
 3459              	.L339:
 3460 03cc 049C     		ldr	r4, [sp, #16]
 3461 03ce 0D9D     		ldr	r5, [sp, #52]
 3462 03d0 DDF83C90 		ldr	r9, [sp, #60]
 3463 03d4 5F46     		mov	r7, fp
 3464 03d6 0234     		adds	r4, r4, #2
 3465 03d8 3B46     		mov	r3, r7
 3466 03da 0AEBC404 		add	r4, r10, r4, lsl #3
 3467 03de 4FF00008 		mov	r8, #0
 3468 03e2 5746     		mov	r7, r10
 3469 03e4 18E0     		b	.L287
 3470              	.L343:
 3471 03e6 2046     		mov	r0, r4
 3472 03e8 B342     		cmp	r3, r6
 3473 03ea D0E900AB 		ldrd	r10, [r0]
 3474 03ee 1FD1     		bne	.L314
 3475              	.L344:
 3476 03f0 2B46     		mov	r3, r5
 3477              	.L315:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 62


 3478 03f2 D3E90023 		ldrd	r2, [r3]
 3479 03f6 5046     		mov	r0, r10
 3480 03f8 5946     		mov	r1, fp
 3481 03fa FFF7FEFF 		bl	__aeabi_ddiv
 3482 03fe 069B     		ldr	r3, [sp, #24]
 3483 0400 08F10108 		add	r8, r8, #1
 3484 0404 4345     		cmp	r3, r8
 3485 0406 05F15805 		add	r5, r5, #88
 3486 040a 04F15004 		add	r4, r4, #80
 3487 040e E9E80201 		strd	r0, [r9], #8
 3488 0412 13D0     		beq	.L264
 3489 0414 3B68     		ldr	r3, [r7]
 3490 0416 9B68     		ldr	r3, [r3, #8]
 3491              	.L287:
 3492 0418 B342     		cmp	r3, r6
 3493 041a E4D0     		beq	.L343
 3494 041c 069A     		ldr	r2, [sp, #24]
 3495 041e 4146     		mov	r1, r8
 3496 0420 3846     		mov	r0, r7
 3497 0422 9847     		blx	r3
 3498 0424 3B68     		ldr	r3, [r7]
 3499 0426 9B68     		ldr	r3, [r3, #8]
 3500 0428 B342     		cmp	r3, r6
 3501 042a D0E900AB 		ldrd	r10, [r0]
 3502 042e DFD0     		beq	.L344
 3503              	.L314:
 3504 0430 4246     		mov	r2, r8
 3505 0432 4146     		mov	r1, r8
 3506 0434 3846     		mov	r0, r7
 3507 0436 9847     		blx	r3
 3508 0438 0346     		mov	r3, r0
 3509 043a DAE7     		b	.L315
 3510              	.L264:
 3511 043c 11B0     		add	sp, sp, #68
 3512              		@ sp needed
 3513 043e BDEC088B 		vldm	sp!, {d8-d11}
 3514 0442 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3515              	.L328:
 3516 0446 7047     		bx	lr
 3517              		.size	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, .-_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEP
 3518              		.global	__aeabi_dadd
 3519              		.global	__aeabi_ui2d
 3520              		.section	.text._ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,
 3521              		.align	1
 3522              		.p2align 2,,3
 3523              		.global	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 3524              		.syntax unified
 3525              		.thumb
 3526              		.thumb_func
 3527              		.fpu fpv4-sp-d16
 3528              		.type	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %functio
 3529              	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
 3530              		@ args = 0, pretend = 0, frame = 4544
 3531              		@ frame_needed = 0, uses_anonymous_args = 0
 3532 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3533 0004 2DED048B 		vpush.64	{d8, d9}
 3534 0008 ADF58E5D 		sub	sp, sp, #4544
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 63


 3535 000c 85B0     		sub	sp, sp, #20
 3536 000e 8346     		mov	fp, r0
 3537 0010 1046     		mov	r0, r2
 3538 0012 0C46     		mov	r4, r1
 3539 0014 1192     		str	r2, [sp, #68]
 3540 0016 1A91     		str	r1, [sp, #104]
 3541 0018 2093     		str	r3, [sp, #128]
 3542 001a FFF7FEFF 		bl	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 3543 001e 092C     		cmp	r4, #9
 3544 0020 0690     		str	r0, [sp, #24]
 3545 0022 0ED9     		bls	.L434
 3546              	.L348:
 3547 0024 1A9A     		ldr	r2, [sp, #104]
 3548 0026 2098     		ldr	r0, [sp, #128]
 3549 0028 9149     		ldr	r1, .L444+8
 3550 002a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3551 002e 0123     		movs	r3, #1
 3552 0030 1D93     		str	r3, [sp, #116]
 3553              	.L431:
 3554 0032 1D98     		ldr	r0, [sp, #116]
 3555 0034 0DF58E5D 		add	sp, sp, #4544
 3556 0038 05B0     		add	sp, sp, #20
 3557              		@ sp needed
 3558 003a BDEC048B 		vldm	sp!, {d8-d9}
 3559 003e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3560              	.L434:
 3561 0042 4FF41273 		mov	r3, #584
 3562 0046 E340     		lsrs	r3, r3, r4
 3563 0048 DB43     		mvns	r3, r3
 3564 004a 13F00103 		ands	r3, r3, #1
 3565 004e 1D93     		str	r3, [sp, #116]
 3566 0050 E8D1     		bne	.L348
 3567 0052 884B     		ldr	r3, .L444+12
 3568 0054 D3F80831 		ldr	r3, [r3, #264]
 3569 0058 D806     		lsls	r0, r3, #27
 3570 005a 00F11C83 		bmi	.L432
 3571 005e 0DF6C803 		addw	r3, sp, #2248
 3572 0062 1693     		str	r3, [sp, #88]
 3573              	.L351:
 3574 0064 9FED807B 		vldr.64	d7, .L444
 3575 0068 069B     		ldr	r3, [sp, #24]
 3576 006a 8DED127B 		vstr.64	d7, [sp, #72]
 3577 006e 002B     		cmp	r3, #0
 3578 0070 00F09880 		beq	.L357
 3579 0074 119B     		ldr	r3, [sp, #68]
 3580 0076 DFED808A 		vldr.32	s17, .L444+16
 3581 007a 169C     		ldr	r4, [sp, #88]
 3582 007c 03F28718 		addw	r8, r3, #391
 3583 0080 069B     		ldr	r3, [sp, #24]
 3584 0082 0DF1E809 		add	r9, sp, #232
 3585 0086 08EB030A 		add	r10, r8, r3
 3586 008a 0DF5B866 		add	r6, sp, #1472
 3587 008e 0027     		movs	r7, #0
 3588              	.L358:
 3589 0090 9FED757B 		vldr.64	d7, .L444
 3590 0094 18F8013F 		ldrb	r3, [r8, #1]!	@ zero_extendqisi2
 3591 0098 764A     		ldr	r2, .L444+12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 64


 3592 009a C3F38003 		ubfx	r3, r3, #2, #1
 3593 009e D068     		ldr	r0, [r2, #12]
 3594 00a0 0093     		str	r3, [sp]
 3595 00a2 3946     		mov	r1, r7
 3596 00a4 A9EC027B 		vstmia.64	r9!, {d7}
 3597 00a8 0DF6CC03 		addw	r3, sp, #2252
 3598 00ac 2246     		mov	r2, r4
 3599 00ae FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 3600 00b2 10EE100A 		vmov	r0, s0
 3601 00b6 FFF7FEFF 		bl	__aeabi_f2d
 3602 00ba 94ED018A 		vldr.32	s16, [r4, #4]
 3603 00be DBED057A 		vldr.32	s15, [fp, #20]
 3604 00c2 DBED066A 		vldr.32	s13, [fp, #24]
 3605 00c6 94ED009A 		vldr.32	s18, [r4]
 3606 00ca 9BED047A 		vldr.32	s14, [fp, #16]
 3607 00ce C4ED028A 		vstr.32	s17, [r4, #8]
 3608 00d2 78EE677A 		vsub.f32	s15, s16, s15
 3609 00d6 39EE477A 		vsub.f32	s14, s18, s14
 3610 00da 27EEA70A 		vmul.f32	s0, s15, s15
 3611 00de CDE90401 		strd	r0, [sp, #16]
 3612 00e2 A6EEA60A 		vfma.f32	s0, s13, s13
 3613 00e6 0137     		adds	r7, r7, #1
 3614 00e8 A7EE070A 		vfma.f32	s0, s14, s14
 3615 00ec B5EE400A 		vcmp.f32	s0, #0
 3616 00f0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3617 00f4 F1EEC09A 		vsqrt.f32	s19, s0
 3618 00f8 00F1E382 		bmi	.L435
 3619              	.L354:
 3620 00fc 19EE900A 		vmov	r0, s19
 3621 0100 FFF7FEFF 		bl	__aeabi_f2d
 3622 0104 DBED087A 		vldr.32	s15, [fp, #32]
 3623 0108 DBED096A 		vldr.32	s13, [fp, #36]
 3624 010c 9BED077A 		vldr.32	s14, [fp, #28]
 3625 0110 78EE677A 		vsub.f32	s15, s16, s15
 3626 0114 39EE477A 		vsub.f32	s14, s18, s14
 3627 0118 27EEA70A 		vmul.f32	s0, s15, s15
 3628 011c C6E90401 		strd	r0, [r6, #16]
 3629 0120 A6EEA60A 		vfma.f32	s0, s13, s13
 3630 0124 A7EE070A 		vfma.f32	s0, s14, s14
 3631 0128 B5EE400A 		vcmp.f32	s0, #0
 3632 012c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3633 0130 F1EEC09A 		vsqrt.f32	s19, s0
 3634 0134 00F1CC82 		bmi	.L436
 3635              	.L355:
 3636 0138 19EE900A 		vmov	r0, s19
 3637 013c FFF7FEFF 		bl	__aeabi_f2d
 3638 0140 DBED0B7A 		vldr.32	s15, [fp, #44]
 3639 0144 DBED0C6A 		vldr.32	s13, [fp, #48]
 3640 0148 9BED0A7A 		vldr.32	s14, [fp, #40]
 3641 014c 38EE678A 		vsub.f32	s16, s16, s15
 3642 0150 39EE479A 		vsub.f32	s18, s18, s14
 3643 0154 28EE080A 		vmul.f32	s0, s16, s16
 3644 0158 C6E90601 		strd	r0, [r6, #24]
 3645 015c A6EEA60A 		vfma.f32	s0, s13, s13
 3646 0160 A9EE090A 		vfma.f32	s0, s18, s18
 3647 0164 B5EE400A 		vcmp.f32	s0, #0
 3648 0168 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 65


 3649 016c B1EEC08A 		vsqrt.f32	s16, s0
 3650 0170 00F1B582 		bmi	.L437
 3651              	.L356:
 3652 0174 1836     		adds	r6, r6, #24
 3653 0176 18EE100A 		vmov	r0, s16
 3654 017a FFF7FEFF 		bl	__aeabi_f2d
 3655 017e DDE90423 		ldrd	r2, [sp, #16]
 3656 0182 C6E90201 		strd	r0, [r6, #8]
 3657 0186 1046     		mov	r0, r2
 3658 0188 1946     		mov	r1, r3
 3659 018a FFF7FEFF 		bl	__aeabi_dmul
 3660 018e 0246     		mov	r2, r0
 3661 0190 0B46     		mov	r3, r1
 3662 0192 DDE91201 		ldrd	r0, [sp, #72]
 3663 0196 FFF7FEFF 		bl	__aeabi_dadd
 3664 019a D045     		cmp	r8, r10
 3665 019c CDE91201 		strd	r0, [sp, #72]
 3666 01a0 7FF476AF 		bne	.L358
 3667              	.L357:
 3668 01a4 1A98     		ldr	r0, [sp, #104]
 3669 01a6 069C     		ldr	r4, [sp, #24]
 3670 01a8 119D     		ldr	r5, [sp, #68]
 3671 01aa CDF834B0 		str	fp, [sp, #52]
 3672 01ae C300     		lsls	r3, r0, #3
 3673 01b0 BAAE     		add	r6, sp, #744
 3674 01b2 1E44     		add	r6, r6, r3
 3675 01b4 1C96     		str	r6, [sp, #112]
 3676 01b6 169E     		ldr	r6, [sp, #88]
 3677 01b8 1E44     		add	r6, r6, r3
 3678 01ba 1596     		str	r6, [sp, #84]
 3679 01bc 0DF50D66 		add	r6, sp, #2256
 3680 01c0 9E19     		adds	r6, r3, r6
 3681 01c2 0796     		str	r6, [sp, #28]
 3682 01c4 28AE     		add	r6, sp, #160
 3683 01c6 F318     		adds	r3, r6, r3
 3684 01c8 C0EB4071 		rsb	r1, r0, r0, lsl #29
 3685 01cc 04EBC402 		add	r2, r4, r4, lsl #3
 3686 01d0 2193     		str	r3, [sp, #132]
 3687 01d2 CB00     		lsls	r3, r1, #3
 3688 01d4 05F58475 		add	r5, r5, #264
 3689 01d8 1E93     		str	r3, [sp, #120]
 3690 01da D300     		lsls	r3, r2, #3
 3691 01dc 1F93     		str	r3, [sp, #124]
 3692 01de 05EB8403 		add	r3, r5, r4, lsl #2
 3693 01e2 1093     		str	r3, [sp, #64]
 3694 01e4 0223     		movs	r3, #2
 3695 01e6 1B95     		str	r5, [sp, #108]
 3696 01e8 1893     		str	r3, [sp, #96]
 3697 01ea 8346     		mov	fp, r0
 3698              	.L353:
 3699 01ec 169B     		ldr	r3, [sp, #88]
 3700 01ee 1A46     		mov	r2, r3
 3701 01f0 224B     		ldr	r3, .L444+20
 3702 01f2 1360     		str	r3, [r2]
 3703 01f4 069B     		ldr	r3, [sp, #24]
 3704 01f6 002B     		cmp	r3, #0
 3705 01f8 49D0     		beq	.L359
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 66


 3706 01fa 0024     		movs	r4, #0
 3707 01fc DDF83480 		ldr	r8, [sp, #52]
 3708 0200 A146     		mov	r9, r4
 3709 0202 0DF5B865 		add	r5, sp, #1472
 3710 0206 9A46     		mov	r10, r3
 3711 0208 5C46     		mov	r4, fp
 3712              	.L365:
 3713 020a 002C     		cmp	r4, #0
 3714 020c 38D0     		beq	.L360
 3715 020e D5E90401 		ldrd	r0, [r5, #16]
 3716 0212 FFF7FEFF 		bl	__aeabi_d2f
 3717 0216 09EE100A 		vmov	s18, r0
 3718 021a D5E90601 		ldrd	r0, [r5, #24]
 3719 021e FFF7FEFF 		bl	__aeabi_d2f
 3720 0222 08EE900A 		vmov	s17, r0
 3721 0226 D5E90801 		ldrd	r0, [r5, #32]
 3722 022a FFF7FEFF 		bl	__aeabi_d2f
 3723 022e 09EBC907 		add	r7, r9, r9, lsl #3
 3724 0232 0DF50D63 		add	r3, sp, #2256
 3725 0236 08EE100A 		vmov	s16, r0
 3726 023a 03EBC707 		add	r7, r3, r7, lsl #3
 3727 023e 0021     		movs	r1, #0
 3728              	.L361:
 3729 0240 082C     		cmp	r4, #8
 3730 0242 B0EE481A 		vmov.f32	s2, s16
 3731 0246 F0EE680A 		vmov.f32	s1, s17
 3732 024a B0EE490A 		vmov.f32	s0, s18
 3733 024e 4046     		mov	r0, r8
 3734 0250 01F10106 		add	r6, r1, #1
 3735 0254 00F06881 		beq	.L438
 3736              	.L362:
 3737 0258 FFF7FEFF 		bl	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 3738 025c B442     		cmp	r4, r6
 3739 025e A7EC020B 		vstmia.64	r7!, {d0}
 3740 0262 0DD0     		beq	.L360
 3741 0264 3146     		mov	r1, r6
 3742 0266 EBE7     		b	.L361
 3743              	.L445:
 3744              		.align	3
 3745              	.L444:
 3746 0268 00000000 		.word	0
 3747 026c 00000000 		.word	0
 3748 0270 00000000 		.word	.LC36
 3749 0274 00000000 		.word	reprap
 3750 0278 00000000 		.word	0
 3751 027c 08000000 		.word	_ZTV11FixedMatrixIdLj32ELj9EE+8
 3752              	.L360:
 3753 0280 09F10109 		add	r9, r9, #1
 3754 0284 CA45     		cmp	r10, r9
 3755 0286 05F11805 		add	r5, r5, #24
 3756 028a BED1     		bne	.L365
 3757 028c A346     		mov	fp, r4
 3758              	.L359:
 3759 028e AA4B     		ldr	r3, .L446+8
 3760 0290 D3F80831 		ldr	r3, [r3, #264]
 3761 0294 13F01003 		ands	r3, r3, #16
 3762 0298 1793     		str	r3, [sp, #92]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 67


 3763 029a 40F09881 		bne	.L439
 3764 029e A74B     		ldr	r3, .L446+12
 3765 02a0 BA93     		str	r3, [sp, #744]
 3766 02a2 BBF1000F 		cmp	fp, #0
 3767 02a6 00F09C80 		beq	.L374
 3768              	.L388:
 3769 02aa 119B     		ldr	r3, [sp, #68]
 3770 02ac D3F80801 		ldr	r0, [r3, #264]	@ float
 3771 02b0 FFF7FEFF 		bl	__aeabi_f2d
 3772 02b4 DDE93A23 		ldrd	r2, [sp, #232]
 3773 02b8 FFF7FEFF 		bl	__aeabi_dadd
 3774 02bc 1E9A     		ldr	r2, [sp, #120]
 3775 02be 0E90     		str	r0, [sp, #56]
 3776 02c0 01F10043 		add	r3, r1, #-2147483648
 3777 02c4 0832     		adds	r2, r2, #8
 3778 02c6 0F93     		str	r3, [sp, #60]
 3779 02c8 1492     		str	r2, [sp, #80]
 3780 02ca 1C9B     		ldr	r3, [sp, #112]
 3781 02cc 1F9A     		ldr	r2, [sp, #124]
 3782 02ce 0993     		str	r3, [sp, #36]
 3783 02d0 169B     		ldr	r3, [sp, #88]
 3784 02d2 CDF864B0 		str	fp, [sp, #100]
 3785 02d6 583A     		subs	r2, r2, #88
 3786 02d8 0892     		str	r2, [sp, #32]
 3787 02da 9946     		mov	r9, r3
 3788              	.L373:
 3789 02dc 99ED027B 		vldr.64	d7, [r9, #8]
 3790 02e0 149B     		ldr	r3, [sp, #80]
 3791 02e2 099A     		ldr	r2, [sp, #36]
 3792 02e4 8DED047B 		vstr.64	d7, [sp, #16]
 3793 02e8 0DF50D64 		add	r4, sp, #2256
 3794 02ec 03EB020B 		add	fp, r3, r2
 3795              	.L370:
 3796 02f0 D4E90023 		ldrd	r2, [r4]
 3797 02f4 DDE90401 		ldrd	r0, [sp, #16]
 3798 02f8 FFF7FEFF 		bl	__aeabi_dmul
 3799 02fc 069B     		ldr	r3, [sp, #24]
 3800 02fe 012B     		cmp	r3, #1
 3801 0300 0646     		mov	r6, r0
 3802 0302 0F46     		mov	r7, r1
 3803 0304 04F1080A 		add	r10, r4, #8
 3804 0308 17D9     		bls	.L368
 3805 030a 089B     		ldr	r3, [sp, #32]
 3806 030c 083C     		subs	r4, r4, #8
 3807 030e 03EB0A08 		add	r8, r3, r10
 3808 0312 4D46     		mov	r5, r9
 3809              	.L369:
 3810 0314 D4E91423 		ldrd	r2, [r4, #80]
 3811 0318 D5E91401 		ldrd	r0, [r5, #80]
 3812 031c FFF7FEFF 		bl	__aeabi_dmul
 3813 0320 0246     		mov	r2, r0
 3814 0322 0B46     		mov	r3, r1
 3815 0324 3046     		mov	r0, r6
 3816 0326 3946     		mov	r1, r7
 3817 0328 FFF7FEFF 		bl	__aeabi_dadd
 3818 032c 4834     		adds	r4, r4, #72
 3819 032e 4445     		cmp	r4, r8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 68


 3820 0330 0646     		mov	r6, r0
 3821 0332 0F46     		mov	r7, r1
 3822 0334 05F14805 		add	r5, r5, #72
 3823 0338 ECD1     		bne	.L369
 3824              	.L368:
 3825 033a 079B     		ldr	r3, [sp, #28]
 3826 033c 5345     		cmp	r3, r10
 3827 033e EBE80267 		strd	r6, [fp], #8
 3828 0342 5446     		mov	r4, r10
 3829 0344 D4D1     		bne	.L370
 3830 0346 DDE90E23 		ldrd	r2, [sp, #56]
 3831 034a DDE90401 		ldrd	r0, [sp, #16]
 3832 034e FFF7FEFF 		bl	__aeabi_dmul
 3833 0352 069B     		ldr	r3, [sp, #24]
 3834 0354 012B     		cmp	r3, #1
 3835 0356 0646     		mov	r6, r0
 3836 0358 0F46     		mov	r7, r1
 3837 035a 2DD9     		bls	.L371
 3838 035c 119B     		ldr	r3, [sp, #68]
 3839 035e CDF83090 		str	r9, [sp, #48]
 3840 0362 4C46     		mov	r4, r9
 3841 0364 DDF84090 		ldr	r9, [sp, #64]
 3842 0368 03F58675 		add	r5, r3, #268
 3843 036c 0DF1F008 		add	r8, sp, #240
 3844              	.L372:
 3845 0370 F8E80223 		ldrd	r2, [r8], #8
 3846 0374 55F8040B 		ldr	r0, [r5], #4	@ float
 3847 0378 CDE90423 		strd	r2, [sp, #16]
 3848 037c FFF7FEFF 		bl	__aeabi_f2d
 3849 0380 DDE90423 		ldrd	r2, [sp, #16]
 3850 0384 FFF7FEFF 		bl	__aeabi_dadd
 3851 0388 01F1004B 		add	fp, r1, #-2147483648
 3852 038c D4E91423 		ldrd	r2, [r4, #80]
 3853 0390 5946     		mov	r1, fp
 3854 0392 8246     		mov	r10, r0
 3855 0394 FFF7FEFF 		bl	__aeabi_dmul
 3856 0398 0246     		mov	r2, r0
 3857 039a 0B46     		mov	r3, r1
 3858 039c 3046     		mov	r0, r6
 3859 039e 3946     		mov	r1, r7
 3860 03a0 FFF7FEFF 		bl	__aeabi_dadd
 3861 03a4 A945     		cmp	r9, r5
 3862 03a6 0646     		mov	r6, r0
 3863 03a8 0F46     		mov	r7, r1
 3864 03aa 04F14804 		add	r4, r4, #72
 3865 03ae DFD1     		bne	.L372
 3866 03b0 CDE90AAB 		strd	r10, [sp, #40]
 3867 03b4 DDF83090 		ldr	r9, [sp, #48]
 3868              	.L371:
 3869 03b8 099B     		ldr	r3, [sp, #36]
 3870 03ba C3E90267 		strd	r6, [r3, #8]
 3871 03be 5033     		adds	r3, r3, #80
 3872 03c0 0993     		str	r3, [sp, #36]
 3873 03c2 159B     		ldr	r3, [sp, #84]
 3874 03c4 09F10809 		add	r9, r9, #8
 3875 03c8 9945     		cmp	r9, r3
 3876 03ca 87D1     		bne	.L373
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 69


 3877 03cc DDF864B0 		ldr	fp, [sp, #100]
 3878              	.L367:
 3879 03d0 179B     		ldr	r3, [sp, #92]
 3880 03d2 33B1     		cbz	r3, .L374
 3881 03d4 0BF10103 		add	r3, fp, #1
 3882 03d8 5A46     		mov	r2, fp
 3883 03da BAA9     		add	r1, sp, #744
 3884 03dc 5848     		ldr	r0, .L446+16
 3885 03de FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3886              	.L374:
 3887 03e2 28A9     		add	r1, sp, #160
 3888 03e4 5A46     		mov	r2, fp
 3889 03e6 BAA8     		add	r0, sp, #744
 3890 03e8 FFF7FEFF 		bl	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 3891 03ec 524B     		ldr	r3, .L446+8
 3892 03ee D3F80831 		ldr	r3, [r3, #264]
 3893 03f2 D906     		lsls	r1, r3, #27
 3894 03f4 00F10A81 		bmi	.L440
 3895              	.L375:
 3896 03f8 28AA     		add	r2, sp, #160
 3897 03fa 5946     		mov	r1, fp
 3898 03fc 0D98     		ldr	r0, [sp, #52]
 3899 03fe FFF7FEFF 		bl	_ZN21HangprinterKinematics6AdjustEjPKd
 3900 0402 DDE92801 		ldrd	r0, [sp, #160]
 3901 0406 FFF7FEFF 		bl	__aeabi_d2f
 3902 040a 2290     		str	r0, [sp, #136]	@ float
 3903 040c DDE92A01 		ldrd	r0, [sp, #168]
 3904 0410 FFF7FEFF 		bl	__aeabi_d2f
 3905 0414 2390     		str	r0, [sp, #140]	@ float
 3906 0416 DDE92C01 		ldrd	r0, [sp, #176]
 3907 041a FFF7FEFF 		bl	__aeabi_d2f
 3908 041e 464B     		ldr	r3, .L446+8
 3909 0420 2490     		str	r0, [sp, #144]	@ float
 3910 0422 0322     		movs	r2, #3
 3911 0424 D868     		ldr	r0, [r3, #12]
 3912 0426 22A9     		add	r1, sp, #136
 3913 0428 FFF7FEFF 		bl	_ZN4Move20AdjustMotorPositionsEPKfj
 3914 042c 9FED407B 		vldr.64	d7, .L446
 3915 0430 069B     		ldr	r3, [sp, #24]
 3916 0432 8DED047B 		vstr.64	d7, [sp, #16]
 3917 0436 002B     		cmp	r3, #0
 3918 0438 54D0     		beq	.L380
 3919 043a CDF830B0 		str	fp, [sp, #48]
 3920 043e DDF86C80 		ldr	r8, [sp, #108]
 3921 0442 DDF840B0 		ldr	fp, [sp, #64]
 3922 0446 0DF1E80A 		add	r10, sp, #232
 3923 044a 0DF5F479 		add	r9, sp, #488
 3924 044e 0DF5B966 		add	r6, sp, #1480
 3925 0452 2EAF     		add	r7, sp, #184
 3926              	.L382:
 3927 0454 28AD     		add	r5, sp, #160
 3928 0456 3446     		mov	r4, r6
 3929              	.L381:
 3930 0458 F5E80223 		ldrd	r2, [r5], #8
 3931 045c D4E90001 		ldrd	r0, [r4]
 3932 0460 FFF7FEFF 		bl	__aeabi_dadd
 3933 0464 AF42     		cmp	r7, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 70


 3934 0466 E4E80201 		strd	r0, [r4], #8
 3935 046a F5D1     		bne	.L381
 3936 046c D6E90601 		ldrd	r0, [r6, #24]
 3937 0470 FFF7FEFF 		bl	__aeabi_d2f
 3938 0474 0990     		str	r0, [sp, #36]
 3939 0476 D6E90401 		ldrd	r0, [r6, #16]
 3940 047a FFF7FEFF 		bl	__aeabi_d2f
 3941 047e 0890     		str	r0, [sp, #32]
 3942 0480 D6E90201 		ldrd	r0, [r6, #8]
 3943 0484 FFF7FEFF 		bl	__aeabi_d2f
 3944 0488 9DED091A 		vldr.32	s2, [sp, #36]	@ int
 3945 048c DDED080A 		vldr.32	s1, [sp, #32]	@ int
 3946 0490 00EE100A 		vmov	s0, r0
 3947 0494 25A9     		add	r1, sp, #148
 3948 0496 0D98     		ldr	r0, [sp, #52]
 3949 0498 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 3950 049c 9DED278A 		vldr.32	s16, [sp, #156]
 3951 04a0 18EE100A 		vmov	r0, s16
 3952 04a4 FFF7FEFF 		bl	__aeabi_f2d
 3953 04a8 F8EC017A 		vldmia.32	r8!, {s15}
 3954 04ac 78EE277A 		vadd.f32	s15, s16, s15
 3955 04b0 EAE80201 		strd	r0, [r10], #8
 3956 04b4 17EE900A 		vmov	r0, s15
 3957 04b8 FFF7FEFF 		bl	__aeabi_f2d
 3958 04bc 0246     		mov	r2, r0
 3959 04be 0B46     		mov	r3, r1
 3960 04c0 E9E80223 		strd	r2, [r9], #8
 3961 04c4 FFF7FEFF 		bl	__aeabi_dmul
 3962 04c8 0246     		mov	r2, r0
 3963 04ca 0B46     		mov	r3, r1
 3964 04cc DDE90401 		ldrd	r0, [sp, #16]
 3965 04d0 FFF7FEFF 		bl	__aeabi_dadd
 3966 04d4 C345     		cmp	fp, r8
 3967 04d6 06F11806 		add	r6, r6, #24
 3968 04da CDE90401 		strd	r0, [sp, #16]
 3969 04de B9D1     		bne	.L382
 3970 04e0 DDF830B0 		ldr	fp, [sp, #48]
 3971              	.L380:
 3972 04e4 0698     		ldr	r0, [sp, #24]
 3973 04e6 FFF7FEFF 		bl	__aeabi_ui2d
 3974 04ea 0246     		mov	r2, r0
 3975 04ec 0B46     		mov	r3, r1
 3976 04ee 0446     		mov	r4, r0
 3977 04f0 0D46     		mov	r5, r1
 3978 04f2 DDE90401 		ldrd	r0, [sp, #16]
 3979 04f6 FFF7FEFF 		bl	__aeabi_ddiv
 3980 04fa FFF7FEFF 		bl	__aeabi_d2f
 3981 04fe 00EE100A 		vmov	s0, r0
 3982 0502 B5EE400A 		vcmp.f32	s0, #0
 3983 0506 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3984 050a B1EEC08A 		vsqrt.f32	s16, s0
 3985 050e 00F1E980 		bmi	.L441
 3986              	.L383:
 3987 0512 094B     		ldr	r3, .L446+8
 3988 0514 D3F80831 		ldr	r3, [r3, #264]
 3989 0518 DA06     		lsls	r2, r3, #27
 3990 051a 6BD4     		bmi	.L442
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 71


 3991              	.L384:
 3992 051c 189B     		ldr	r3, [sp, #96]
 3993 051e 012B     		cmp	r3, #1
 3994 0520 10D0     		beq	.L385
 3995 0522 0123     		movs	r3, #1
 3996 0524 1893     		str	r3, [sp, #96]
 3997 0526 61E6     		b	.L353
 3998              	.L438:
 3999 0528 0529     		cmp	r1, #5
 4000 052a 69D9     		bls	.L363
 4001 052c 3146     		mov	r1, r6
 4002 052e 93E6     		b	.L362
 4003              	.L447:
 4004              		.align	3
 4005              	.L446:
 4006 0530 00000000 		.word	0
 4007 0534 00000000 		.word	0
 4008 0538 00000000 		.word	reprap
 4009 053c 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 4010 0540 6C000000 		.word	.LC39
 4011              	.L385:
 4012 0544 6A4B     		ldr	r3, .L448
 4013 0546 DDF834B0 		ldr	fp, [sp, #52]
 4014 054a D3F80831 		ldr	r3, [r3, #264]
 4015 054e DB06     		lsls	r3, r3, #27
 4016 0550 0DD5     		bpl	.L386
 4017 0552 169E     		ldr	r6, [sp, #88]
 4018 0554 BA96     		str	r6, [sp, #744]
 4019 0556 0022     		movs	r2, #0
 4020 0558 DD23     		movs	r3, #221
 4021 055a BAA9     		add	r1, sp, #744
 4022 055c 5846     		mov	r0, fp
 4023 055e 3270     		strb	r2, [r6]
 4024 0560 BB93     		str	r3, [sp, #748]
 4025 0562 FFF7FEFF 		bl	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 4026 0566 3146     		mov	r1, r6
 4027 0568 6248     		ldr	r0, .L448+4
 4028 056a FFF7FEFF 		bl	debugPrintf
 4029              	.L386:
 4030 056e 2246     		mov	r2, r4
 4031 0570 2B46     		mov	r3, r5
 4032 0572 DDE91201 		ldrd	r0, [sp, #72]
 4033 0576 FFF7FEFF 		bl	__aeabi_ddiv
 4034 057a FFF7FEFF 		bl	__aeabi_d2f
 4035 057e 00EE100A 		vmov	s0, r0
 4036 0582 B5EE400A 		vcmp.f32	s0, #0
 4037 0586 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4038 058a F1EEC08A 		vsqrt.f32	s17, s0
 4039 058e 00F1AC80 		bmi	.L443
 4040              	.L387:
 4041 0592 18EE100A 		vmov	r0, s16
 4042 0596 FFF7FEFF 		bl	__aeabi_f2d
 4043 059a CDE90201 		strd	r0, [sp, #8]
 4044 059e 18EE900A 		vmov	r0, s17
 4045 05a2 FFF7FEFF 		bl	__aeabi_f2d
 4046 05a6 209C     		ldr	r4, [sp, #128]
 4047 05a8 069B     		ldr	r3, [sp, #24]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 72


 4048 05aa 1A9A     		ldr	r2, [sp, #104]
 4049 05ac CDE90001 		strd	r0, [sp]
 4050 05b0 5149     		ldr	r1, .L448+8
 4051 05b2 2046     		mov	r0, r4
 4052 05b4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4053 05b8 4D4A     		ldr	r2, .L448
 4054 05ba 2368     		ldr	r3, [r4]
 4055 05bc 5068     		ldr	r0, [r2, #4]
 4056 05be 4D4A     		ldr	r2, .L448+4
 4057 05c0 8021     		movs	r1, #128
 4058 05c2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4059 05c6 0123     		movs	r3, #1
 4060 05c8 8BF85831 		strb	r3, [fp, #344]
 4061 05cc 31E5     		b	.L431
 4062              	.L439:
 4063 05ce 5B46     		mov	r3, fp
 4064 05d0 069A     		ldr	r2, [sp, #24]
 4065 05d2 1699     		ldr	r1, [sp, #88]
 4066 05d4 4948     		ldr	r0, .L448+12
 4067 05d6 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 4068 05da 454B     		ldr	r3, .L448
 4069 05dc 484A     		ldr	r2, .L448+16
 4070 05de D3F80831 		ldr	r3, [r3, #264]
 4071 05e2 BA92     		str	r2, [sp, #744]
 4072 05e4 03F01003 		and	r3, r3, #16
 4073 05e8 1793     		str	r3, [sp, #92]
 4074 05ea BBF1000F 		cmp	fp, #0
 4075 05ee 7FF45CAE 		bne	.L388
 4076 05f2 EDE6     		b	.L367
 4077              	.L442:
 4078 05f4 069A     		ldr	r2, [sp, #24]
 4079 05f6 4348     		ldr	r0, .L448+20
 4080 05f8 7AA9     		add	r1, sp, #488
 4081 05fa FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 4082 05fe 8DE7     		b	.L384
 4083              	.L363:
 4084 0600 FFF7FEFF 		bl	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 4085 0604 3146     		mov	r1, r6
 4086 0606 A7EC020B 		vstmia.64	r7!, {d0}
 4087 060a 19E6     		b	.L361
 4088              	.L440:
 4089 060c 0BF10103 		add	r3, fp, #1
 4090 0610 5A46     		mov	r2, fp
 4091 0612 BAA9     		add	r1, sp, #744
 4092 0614 3C48     		ldr	r0, .L448+24
 4093 0616 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 4094 061a 5A46     		mov	r2, fp
 4095 061c 28A9     		add	r1, sp, #160
 4096 061e 3B48     		ldr	r0, .L448+28
 4097 0620 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 4098 0624 3A48     		ldr	r0, .L448+32
 4099 0626 FFF7FEFF 		bl	debugPrintf
 4100 062a 069B     		ldr	r3, [sp, #24]
 4101 062c 7BB3     		cbz	r3, .L376
 4102 062e CDF810B0 		str	fp, [sp, #16]
 4103 0632 DFF8E4A0 		ldr	r10, .L448+40
 4104 0636 DDF86C80 		ldr	r8, [sp, #108]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 73


 4105 063a DDF884B0 		ldr	fp, [sp, #132]
 4106 063e 0DF50D69 		add	r9, sp, #2256
 4107              	.L379:
 4108 0642 58F8040B 		ldr	r0, [r8], #4	@ float
 4109 0646 FFF7FEFF 		bl	__aeabi_f2d
 4110 064a 049B     		ldr	r3, [sp, #16]
 4111 064c 0646     		mov	r6, r0
 4112 064e 0F46     		mov	r7, r1
 4113 0650 8BB1     		cbz	r3, .L377
 4114 0652 4D46     		mov	r5, r9
 4115 0654 28AC     		add	r4, sp, #160
 4116              	.L378:
 4117 0656 F5E80223 		ldrd	r2, [r5], #8
 4118 065a F4E80201 		ldrd	r0, [r4], #8
 4119 065e FFF7FEFF 		bl	__aeabi_dmul
 4120 0662 0246     		mov	r2, r0
 4121 0664 0B46     		mov	r3, r1
 4122 0666 3046     		mov	r0, r6
 4123 0668 3946     		mov	r1, r7
 4124 066a FFF7FEFF 		bl	__aeabi_dadd
 4125 066e A345     		cmp	fp, r4
 4126 0670 0646     		mov	r6, r0
 4127 0672 0F46     		mov	r7, r1
 4128 0674 EFD1     		bne	.L378
 4129              	.L377:
 4130 0676 3B46     		mov	r3, r7
 4131 0678 3246     		mov	r2, r6
 4132 067a 5046     		mov	r0, r10
 4133 067c FFF7FEFF 		bl	debugPrintf
 4134 0680 109B     		ldr	r3, [sp, #64]
 4135 0682 4345     		cmp	r3, r8
 4136 0684 09F14809 		add	r9, r9, #72
 4137 0688 DBD1     		bne	.L379
 4138 068a DDF810B0 		ldr	fp, [sp, #16]
 4139              	.L376:
 4140 068e 2148     		ldr	r0, .L448+36
 4141 0690 FFF7FEFF 		bl	debugPrintf
 4142 0694 B0E6     		b	.L375
 4143              	.L432:
 4144 0696 0DF6C802 		addw	r2, sp, #2248
 4145 069a 1D9C     		ldr	r4, [sp, #116]
 4146 069c 8DF8C848 		strb	r4, [sp, #2248]
 4147 06a0 DD23     		movs	r3, #221
 4148 06a2 0DF5B861 		add	r1, sp, #1472
 4149 06a6 1446     		mov	r4, r2
 4150 06a8 5846     		mov	r0, fp
 4151 06aa 1692     		str	r2, [sp, #88]
 4152 06ac CDF8C025 		str	r2, [sp, #1472]
 4153 06b0 CDF8C435 		str	r3, [sp, #1476]
 4154 06b4 FFF7FEFF 		bl	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 4155 06b8 2146     		mov	r1, r4
 4156 06ba 0E48     		ldr	r0, .L448+4
 4157 06bc FFF7FEFF 		bl	debugPrintf
 4158 06c0 D0E4     		b	.L351
 4159              	.L435:
 4160 06c2 FFF7FEFF 		bl	sqrtf
 4161 06c6 94ED009A 		vldr.32	s18, [r4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 74


 4162 06ca 94ED018A 		vldr.32	s16, [r4, #4]
 4163 06ce 15E5     		b	.L354
 4164              	.L436:
 4165 06d0 FFF7FEFF 		bl	sqrtf
 4166 06d4 94ED009A 		vldr.32	s18, [r4]
 4167 06d8 94ED018A 		vldr.32	s16, [r4, #4]
 4168 06dc 2CE5     		b	.L355
 4169              	.L437:
 4170 06de FFF7FEFF 		bl	sqrtf
 4171 06e2 47E5     		b	.L356
 4172              	.L441:
 4173 06e4 FFF7FEFF 		bl	sqrtf
 4174 06e8 13E7     		b	.L383
 4175              	.L443:
 4176 06ea FFF7FEFF 		bl	sqrtf
 4177 06ee 50E7     		b	.L387
 4178              	.L449:
 4179              		.align	2
 4180              	.L448:
 4181 06f0 00000000 		.word	reprap
 4182 06f4 54000000 		.word	.LC37
 4183 06f8 C8000000 		.word	.LC46
 4184 06fc 58000000 		.word	.LC38
 4185 0700 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 4186 0704 B0000000 		.word	.LC45
 4187 0708 7C000000 		.word	.LC40
 4188 070c 8C000000 		.word	.LC41
 4189 0710 98000000 		.word	.LC42
 4190 0714 AC000000 		.word	.LC44
 4191 0718 A4000000 		.word	.LC43
 4192              		.size	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN21H
 4193              		.global	_ZTV21HangprinterKinematics
 4194              		.weak	_ZTV11FixedMatrixIdLj32ELj9EE
 4195              		.section	.rodata._ZTV11FixedMatrixIdLj32ELj9EE,"aG",%progbits,_ZTV11FixedMatrixIdLj32ELj9EE,comdat
 4196              		.align	2
 4197              		.type	_ZTV11FixedMatrixIdLj32ELj9EE, %object
 4198              		.size	_ZTV11FixedMatrixIdLj32ELj9EE, 32
 4199              	_ZTV11FixedMatrixIdLj32ELj9EE:
 4200 0000 00000000 		.word	0
 4201 0004 00000000 		.word	0
 4202 0008 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 4203 000c 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 4204 0010 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EEclEjj
 4205 0014 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 4206 0018 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED1Ev
 4207 001c 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 4208              		.weak	_ZTV11FixedMatrixIdLj9ELj10EE
 4209              		.section	.rodata._ZTV11FixedMatrixIdLj9ELj10EE,"aG",%progbits,_ZTV11FixedMatrixIdLj9ELj10EE,comdat
 4210              		.align	2
 4211              		.type	_ZTV11FixedMatrixIdLj9ELj10EE, %object
 4212              		.size	_ZTV11FixedMatrixIdLj9ELj10EE, 32
 4213              	_ZTV11FixedMatrixIdLj9ELj10EE:
 4214 0000 00000000 		.word	0
 4215 0004 00000000 		.word	0
 4216 0008 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 4217 000c 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 4218 0010 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 75


 4219 0014 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 4220 0018 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED1Ev
 4221 001c 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 4222              		.section	.rodata
 4223              		.align	2
 4224              		.set	.LANCHOR0,. + 0
 4225              	.LC14:
 4226 0000 00000000 		.word	.LC6
 4227 0004 08000000 		.word	.LC7
 4228 0008 10000000 		.word	.LC8
 4229 000c 18000000 		.word	.LC9
 4230 0010 20000000 		.word	.LC10
 4231              	.LC0:
 4232 0014 66664842 		.word	1112041062
 4233 0018 33338242 		.word	1115829043
 4234 001c 33338242 		.word	1115829043
 4235 0020 33338242 		.word	1115829043
 4236 0024 33338242 		.word	1115829043
 4237              	.LC1:
 4238 0028 01000000 		.word	1
 4239 002c 02000000 		.word	2
 4240 0030 02000000 		.word	2
 4241 0034 02000000 		.word	2
 4242 0038 01000000 		.word	1
 4243              	.LC2:
 4244 003c 01000000 		.word	1
 4245 0040 01000000 		.word	1
 4246 0044 01000000 		.word	1
 4247 0048 01000000 		.word	1
 4248 004c 01000000 		.word	1
 4249              	.LC3:
 4250 0050 14000000 		.word	20
 4251 0054 14000000 		.word	20
 4252 0058 14000000 		.word	20
 4253 005c 14000000 		.word	20
 4254 0060 14000000 		.word	20
 4255              	.LC4:
 4256 0064 FF000000 		.word	255
 4257 0068 FF000000 		.word	255
 4258 006c FF000000 		.word	255
 4259 0070 FF000000 		.word	255
 4260 0074 FF000000 		.word	255
 4261              	.LC5:
 4262 0078 20000000 		.word	32
 4263 007c 20000000 		.word	32
 4264 0080 20000000 		.word	32
 4265 0084 20000000 		.word	32
 4266 0088 20000000 		.word	32
 4267              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 4268              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 4269              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 4270              	_ZL28cpu_irq_prev_interrupt_state:
 4271 0000 00       		.space	1
 4272              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 4273              		.align	2
 4274              		.type	_ZL32cpu_irq_critical_section_counter, %object
 4275              		.size	_ZL32cpu_irq_critical_section_counter, 4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 76


 4276              	_ZL32cpu_irq_critical_section_counter:
 4277 0000 00000000 		.space	4
 4278              		.section	.rodata._ZL14DefaultAnchorA,"a",%progbits
 4279              		.align	2
 4280              		.set	.LANCHOR1,. + 0
 4281              		.type	_ZL14DefaultAnchorA, %object
 4282              		.size	_ZL14DefaultAnchorA, 12
 4283              	_ZL14DefaultAnchorA:
 4284 0000 00000000 		.word	0
 4285 0004 29A4B3C4 		.word	-994859991
 4286 0008 00007EC3 		.word	-1015152640
 4287              		.section	.rodata._ZL14DefaultAnchorB,"a",%progbits
 4288              		.align	2
 4289              		.set	.LANCHOR2,. + 0
 4290              		.type	_ZL14DefaultAnchorB, %object
 4291              		.size	_ZL14DefaultAnchorB, 12
 4292              	_ZL14DefaultAnchorB:
 4293 0000 E1929B44 		.word	1151046369
 4294 0004 D7A33344 		.word	1144234967
 4295 0008 00007EC3 		.word	-1015152640
 4296              		.section	.rodata._ZL14DefaultAnchorC,"a",%progbits
 4297              		.align	2
 4298              		.set	.LANCHOR3,. + 0
 4299              		.type	_ZL14DefaultAnchorC, %object
 4300              		.size	_ZL14DefaultAnchorC, 12
 4301              	_ZL14DefaultAnchorC:
 4302 0000 E1929BC4 		.word	-996437279
 4303 0004 D7A33344 		.word	1144234967
 4304 0008 00007EC3 		.word	-1015152640
 4305              		.section	.rodata._ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRe
 4306              		.align	2
 4307              	.LC36:
 4308 0000 48616E67 		.ascii	"Hangprinter calibration with %d factors requested b"
 4308      7072696E 
 4308      74657220 
 4308      63616C69 
 4308      62726174 
 4309 0033 7574206F 		.ascii	"ut only 3, 6, and 9 supported\000"
 4309      6E6C7920 
 4309      332C2036 
 4309      2C20616E 
 4309      64203920 
 4310 0051 000000   		.space	3
 4311              	.LC37:
 4312 0054 25730A00 		.ascii	"%s\012\000"
 4313              	.LC38:
 4314 0058 44657269 		.ascii	"Derivative matrix\000"
 4314      76617469 
 4314      7665206D 
 4314      61747269 
 4314      7800
 4315 006a 0000     		.space	2
 4316              	.LC39:
 4317 006c 4E6F726D 		.ascii	"Normal matrix\000"
 4317      616C206D 
 4317      61747269 
 4317      7800
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 77


 4318 007a 0000     		.space	2
 4319              	.LC40:
 4320 007c 536F6C76 		.ascii	"Solved matrix\000"
 4320      6564206D 
 4320      61747269 
 4320      7800
 4321 008a 0000     		.space	2
 4322              	.LC41:
 4323 008c 536F6C75 		.ascii	"Solution\000"
 4323      74696F6E 
 4323      00
 4324 0095 000000   		.space	3
 4325              	.LC42:
 4326 0098 52657369 		.ascii	"Residuals:\000"
 4326      6475616C 
 4326      733A00
 4327 00a3 00       		.space	1
 4328              	.LC43:
 4329 00a4 2025372E 		.ascii	" %7.4f\000"
 4329      346600
 4330 00ab 00       		.space	1
 4331              	.LC44:
 4332 00ac 0A00     		.ascii	"\012\000"
 4333 00ae 0000     		.space	2
 4334              	.LC45:
 4335 00b0 45787065 		.ascii	"Expected probe error\000"
 4335      63746564 
 4335      2070726F 
 4335      62652065 
 4335      72726F72 
 4336 00c5 000000   		.space	3
 4337              	.LC46:
 4338 00c8 43616C69 		.ascii	"Calibrated %d factors using %d points, deviation be"
 4338      62726174 
 4338      65642025 
 4338      64206661 
 4338      63746F72 
 4339 00fb 666F7265 		.ascii	"fore %.3f after %.3f\000"
 4339      20252E33 
 4339      66206166 
 4339      74657220 
 4339      252E3366 
 4340              		.section	.rodata._ZN21HangprinterKinematics6RecalcEv.str1.4,"aMS",%progbits,1
 4341              		.align	2
 4342              	.LC20:
 4343 0000 50696574 		.ascii	"Pietari Line Lengths origins: %f\012\000"
 4343      61726920 
 4343      4C696E65 
 4343      204C656E 
 4343      67746873 
 4344 0022 0000     		.space	2
 4345              	.LC21:
 4346 0024 44454255 		.ascii	"DEBUG: Before the for loop\012\000"
 4346      473A2042 
 4346      65666F72 
 4346      65207468 
 4346      6520666F 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 78


 4347              	.LC22:
 4348 0040 44454255 		.ascii	"DEBUG: loop started\012\000"
 4348      473A206C 
 4348      6F6F7020 
 4348      73746172 
 4348      7465640A 
 4349 0055 000000   		.space	3
 4350              	.LC23:
 4351 0058 44454255 		.ascii	"DEBUG: driver set\012\000"
 4351      473A2064 
 4351      72697665 
 4351      72207365 
 4351      740A00
 4352 006b 00       		.space	1
 4353              	.LC24:
 4354 006c 44454255 		.ascii	"DEBUG: stepsPerUnitTimesRTmp calculated\012\000"
 4354      473A2073 
 4354      74657073 
 4354      50657255 
 4354      6E697454 
 4355 0095 000000   		.space	3
 4356              	.LC25:
 4357 0098 44454255 		.ascii	"DEBUG: k2, k0, spoolradii calculated\012\000"
 4357      473A206B 
 4357      322C206B 
 4357      302C2073 
 4357      706F6F6C 
 4358 00be 0000     		.space	2
 4359              	.LC26:
 4360 00c0 52656361 		.ascii	"Recalced params\012Da2: %.2f, Db2: %.2f, Dc2: %.2f,"
 4360      6C636564 
 4360      20706172 
 4360      616D730A 
 4360      4461323A 
 4361 00f0 20586162 		.ascii	" Xab: %.2f, Xbc: %.2f, Xca: %.2f, Yab: %.2f, Ybc: %"
 4361      3A20252E 
 4361      32662C20 
 4361      5862633A 
 4361      20252E32 
 4362 0123 2E32662C 		.ascii	".2f, Yca: %.2f, Zab: %.2f, Zbc: %.2f, Zca: %.2f, P:"
 4362      20596361 
 4362      3A20252E 
 4362      32662C20 
 4362      5A61623A 
 4363 0156 20252E32 		.ascii	" %.2f, P2: %.2f, Q: %.2f, R: %.2f, U: %.2f, A: %.2f"
 4363      662C2050 
 4363      323A2025 
 4363      2E32662C 
 4363      20513A20 
 4364 0189 0A00     		.ascii	"\012\000"
 4365              		.section	.rodata._ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%
 4366              		.align	2
 4367              	.LC27:
 4368 0000 4B696E65 		.ascii	"Kinematics is Hangprinter\012Anchor positions:\012%"
 4368      6D617469 
 4368      63732069 
 4368      73204861 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 79


 4368      6E677072 
 4369 002d 2E32662C 		.ascii	".2f, %.2f, %.2f\012%.2f, %.2f, %.2f\012%.2f, %.2f, "
 4369      20252E32 
 4369      662C2025 
 4369      2E32660A 
 4369      252E3266 
 4370 005a 252E3266 		.ascii	"%.2f\012%.2f\012Print radius:\012%.1f\012Segments/s"
 4370      0A252E32 
 4370      660A5072 
 4370      696E7420 
 4370      72616469 
 4371 0081 3A0A2564 		.ascii	":\012%d\012Min segment length:\012%.2f\012Spool bui"
 4371      0A4D696E 
 4371      20736567 
 4371      6D656E74 
 4371      206C656E 
 4372 00a8 6C647570 		.ascii	"ldup factor:\012%.4f\012Spool radii:\012%.2f, %.2f,"
 4372      20666163 
 4372      746F723A 
 4372      0A252E34 
 4372      660A5370 
 4373 00d2 20252E32 		.ascii	" %.2f, %.2f\012Mechanical Advantage:\012%d, %d, %d,"
 4373      662C2025 
 4373      2E32660A 
 4373      4D656368 
 4373      616E6963 
 4374 00ff 2025640A 		.ascii	" %d\012Lines per spool:\012%d, %d, %d, %d\012Motor "
 4374      4C696E65 
 4374      73207065 
 4374      72207370 
 4374      6F6F6C3A 
 4375 0129 67656172 		.ascii	"gear teeth\012%d, %d, %d, %d\012Spool gear teeth\012"
 4375      20746565 
 4375      74680A25 
 4375      642C2025 
 4375      642C2025 
 4376 0154 25642C20 		.ascii	"%d, %d, %d, %d\012Full steps per revolution\012%d, "
 4376      25642C20 
 4376      25642C20 
 4376      25640A46 
 4376      756C6C20 
 4377 0181 25642C20 		.ascii	"%d, %d, %d\000"
 4377      25642C20 
 4377      256400
 4378              	.LC28:
 4379 018c 513A4275 		.ascii	"Q:Buildup fac %.4f\012R:Spool r %.2f, %.2f, %.2f, %"
 4379      696C6475 
 4379      70206661 
 4379      6320252E 
 4379      34660A52 
 4380 01bc 2E32660A 		.ascii	".2f\012U:Mech Adv %d, %d, %d, %d\012O:Lines/spool %"
 4380      553A4D65 
 4380      63682041 
 4380      64762025 
 4380      642C2025 
 4381 01e9 642C2025 		.ascii	"d, %d, %d, %d\012L:Motor gear teeth %d, %d, %d, %d\012"
 4381      642C2025 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 80


 4381      642C2025 
 4381      640A4C3A 
 4381      4D6F746F 
 4382 0219 483A5370 		.ascii	"H:Spool gear teeth %d, %d, %d, %d\012J:Full steps/r"
 4382      6F6F6C20 
 4382      67656172 
 4382      20746565 
 4382      74682025 
 4383 0249 65762025 		.ascii	"ev %d, %d, %d, %d\000"
 4383      642C2025 
 4383      642C2025 
 4383      642C2025 
 4383      6400
 4384              		.section	.rodata._ZNK21HangprinterKinematics15PrintParametersERK9StringRef.str1.4,"aMS",%progbits,
 4385              		.align	2
 4386              	.LC33:
 4387 0000 416E6368 		.ascii	"Anchor coordinates (%.2f,%.2f,%.2f) (%.2f,%.2f,%.2f"
 4387      6F722063 
 4387      6F6F7264 
 4387      696E6174 
 4387      65732028 
 4388 0033 29202825 		.ascii	") (%.2f,%.2f,%.2f)\012\000"
 4388      2E32662C 
 4388      252E3266 
 4388      2C252E32 
 4388      66290A00 
 4389              		.section	.rodata._ZNK21HangprinterKinematics16InverseTransformEfffPf.str1.4,"aMS",%progbits,1
 4390              		.align	2
 4391              	.LC29:
 4392 0000 496E7665 		.ascii	"Inverse Transform Pietari: S: %.2f, T: %.2f, halfB:"
 4392      72736520 
 4392      5472616E 
 4392      73666F72 
 4392      6D205069 
 4393 0033 20252E32 		.ascii	" %.2f, C: %.2f\012\000"
 4393      662C2043 
 4393      3A20252E 
 4393      32660A00 
 4394 0043 00       		.space	1
 4395              	.LC30:
 4396 0044 6D616368 		.ascii	"machinepos before Pietari %f\000"
 4396      696E6570 
 4396      6F732062 
 4396      65666F72 
 4396      65205069 
 4397 0061 000000   		.space	3
 4398              	.LC31:
 4399 0064 6D616368 		.ascii	"machinepos after Pietari %f\000"
 4399      696E6570 
 4399      6F732061 
 4399      66746572 
 4399      20506965 
 4400              	.LC32:
 4401 0080 4D6F746F 		.ascii	"Motor %.2f,%.2f,%.2f to Cartesian %.2f,%.2f,%.2f\012"
 4401      7220252E 
 4401      32662C25 
 4401      2E32662C 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 81


 4401      252E3266 
 4402 00b1 00       		.ascii	"\000"
 4403              		.section	.rodata._ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef.str1.4,"aMS",%prog
 4404              		.align	2
 4405              	.LC19:
 4406 0000 686F6D65 		.ascii	"homeall.g\000"
 4406      616C6C2E 
 4406      6700
 4407              		.section	.rodata._ZNK21HangprinterKinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 4408              		.align	2
 4409              	.LC12:
 4410 0000 57414243 		.ascii	"WABCD\000"
 4410      4400
 4411              		.section	.rodata._ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb.str1.4,"aMS",%prog
 4412              		.align	2
 4413              	.LC15:
 4414 0000 4C696E65 		.ascii	"Lineposition W axis %s Pietari: %f\012\000"
 4414      706F7369 
 4414      74696F6E 
 4414      20572061 
 4414      78697320 
 4415              	.LC16:
 4416 0024 4C696E65 		.ascii	"Lineposition %s Pietari: %f\012\000"
 4416      706F7369 
 4416      74696F6E 
 4416      20257320 
 4416      50696574 
 4417 0041 000000   		.space	3
 4418              	.LC17:
 4419 0044 4C696E65 		.ascii	"Lineposition D axis %s Pietari: %f\012\000"
 4419      706F7369 
 4419      74696F6E 
 4419      20442061 
 4419      78697320 
 4420              	.LC18:
 4421 0068 4D6F746F 		.ascii	"Motor positions Pietari: %s, %f\012\000"
 4421      7220706F 
 4421      73697469 
 4421      6F6E7320 
 4421      50696574 
 4422              		.section	.rodata._ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore.str1.4,"aMS",
 4423              		.align	2
 4424              	.LC34:
 4425 0000 3B204861 		.ascii	"; Hangprinter parameters\012\000"
 4425      6E677072 
 4425      696E7465 
 4425      72207061 
 4425      72616D65 
 4426 001a 0000     		.space	2
 4427              	.LC35:
 4428 001c 50696574 		.ascii	"Pietari M669 K6 A%.3f:%.3f:%.3f B%.3f:%.3f:%.3f C%."
 4428      61726920 
 4428      4D363639 
 4428      204B3620 
 4428      41252E33 
 4429 004f 33663A25 		.ascii	"3f:%.3f:%.3f D%.3f P%.1f Q%.6f R%.3f:%.3f:%.3f:%.3f"
 4429      2E33663A 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 82


 4429      252E3366 
 4429      2044252E 
 4429      33662050 
 4430 0082 0A00     		.ascii	"\012\000"
 4431              		.section	.rodata._ZNK21HangprinterKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 4432              		.align	2
 4433              	.LC13:
 4434 0000 48616E67 		.ascii	"Hangprinter\000"
 4434      7072696E 
 4434      74657200 
 4435              		.section	.rodata._ZTV21HangprinterKinematics,"a",%progbits
 4436              		.align	2
 4437              		.set	.LANCHOR4,. + 0
 4438              		.type	_ZTV21HangprinterKinematics, %object
 4439              		.size	_ZTV21HangprinterKinematics, 128
 4440              	_ZTV21HangprinterKinematics:
 4441 0000 00000000 		.word	0
 4442 0004 00000000 		.word	0
 4443 0008 00000000 		.word	_ZNK21HangprinterKinematics7GetNameEb
 4444 000c 00000000 		.word	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 4445 0010 00000000 		.word	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 4446 0014 00000000 		.word	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf
 4447 0018 00000000 		.word	_ZNK21HangprinterKinematics23SupportsAutoCalibrationEv
 4448 001c 00000000 		.word	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 4449 0020 00000000 		.word	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv
 4450 0024 00000000 		.word	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore
 4451 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 4452 002c 00000000 		.word	_ZNK21HangprinterKinematics11IsReachableEffb
 4453 0030 00000000 		.word	_ZNK21HangprinterKinematics13LimitPositionEPfjmb
 4454 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 4455 0038 00000000 		.word	_ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf
 4456 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 4457 0040 00000000 		.word	_ZNK21HangprinterKinematics16NumHomingButtonsEj
 4458 0044 00000000 		.word	_ZNK21HangprinterKinematics17HomingButtonNamesEv
 4459 0048 00000000 		.word	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 4460 004c 00000000 		.word	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef
 4461 0050 00000000 		.word	_ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj
 4462 0054 00000000 		.word	_ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 4463 0058 00000000 		.word	_ZNK21HangprinterKinematics13GetHomingModeEv
 4464 005c 00000000 		.word	_ZNK21HangprinterKinematics16AxesAssumedHomedEm
 4465 0060 00000000 		.word	_ZNK21HangprinterKinematics15MustBeHomedAxesEmb
 4466 0064 00000000 		.word	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore
 4467 0068 00000000 		.word	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf
 4468 006c 00000000 		.word	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj
 4469 0070 00000000 		.word	_ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj
 4470 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 4471 0078 00000000 		.word	_ZN21HangprinterKinematicsD1Ev
 4472 007c 00000000 		.word	_ZN21HangprinterKinematicsD0Ev
 4473              		.section	.rodata.str1.4,"aMS",%progbits,1
 4474              		.align	2
 4475              	.LC6:
 4476 0000 57206178 		.ascii	"W axis\000"
 4476      697300
 4477 0007 00       		.space	1
 4478              	.LC7:
 4479 0008 41206178 		.ascii	"A axis\000"
 4479      697300
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cck3zWGW.s 			page 83


 4480 000f 00       		.space	1
 4481              	.LC8:
 4482 0010 42206178 		.ascii	"B axis\000"
 4482      697300
 4483 0017 00       		.space	1
 4484              	.LC9:
 4485 0018 43206178 		.ascii	"C axis\000"
 4485      697300
 4486 001f 00       		.space	1
 4487              	.LC10:
 4488 0020 44206178 		.ascii	"D axis\000"
 4488      697300
 4489              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
