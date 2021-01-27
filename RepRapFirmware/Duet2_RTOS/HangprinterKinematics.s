ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 1


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 2


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 3


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
 133 0004 00000000 		.word	.LC6
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
 153 0004 00000000 		.word	.LC6
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 4


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
 189 0004 00000000 		.word	.LC7
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 5


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 6


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
 301 0008 41F00800 		orreq	r0, r1, #8
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 7


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 8


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 9


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 10


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 11


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
 602 000e 00BF     		.section	.text._ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj,"ax",%progbits
 603              		.align	1
 604              		.p2align 2,,3
 605              		.global	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj
 606              		.syntax unified
 607              		.thumb
 608              		.thumb_func
 609              		.fpu fpv4-sp-d16
 610              		.type	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj, %function
 611              	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj:
 612              		@ args = 0, pretend = 0, frame = 0
 613              		@ frame_needed = 0, uses_anonymous_args = 0
 614 0000 10B5     		push	{r4, lr}
 615 0002 00EB8304 		add	r4, r0, r3, lsl #2
 616 0006 D4ED2A7A 		vldr.32	s15, [r4, #168]	@ int
 617 000a 9FED0F7A 		vldr.32	s14, .L55
 618 000e F8EE677A 		vcvt.f32.u32	s15, s15
 619 0012 27EE800A 		vmul.f32	s0, s15, s0
 620 0016 80EE070A 		vdiv.f32	s0, s0, s14
 621 001a FFF7FEFF 		bl	roundf
 622 001e BDEEC07A 		vcvt.s32.f32	s14, s0
 623 0022 D4ED2F5A 		vldr.32	s11, [r4, #188]
 624 0026 94ED116A 		vldr.32	s12, [r4, #68]
 625 002a 94ED340A 		vldr.32	s0, [r4, #208]
 626 002e D4ED396A 		vldr.32	s13, [r4, #228]
 627 0032 B8EEC77A 		vcvt.f32.s32	s14, s14
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 12


 628 0036 C7EE257A 		vdiv.f32	s15, s14, s11
 629 003a 77EE867A 		vadd.f32	s15, s15, s12
 630 003e 97EEA70A 		vfnms.f32	s0, s15, s15
 631 0042 80EE260A 		vdiv.f32	s0, s0, s13
 632 0046 10BD     		pop	{r4, pc}
 633              	.L56:
 634              		.align	2
 635              	.L55:
 636 0048 0000B443 		.word	1135869952
 637              		.size	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj, .-_ZN21HangprinterKinematics22Mot
 638              		.section	.text._ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef,"ax",%progbits
 639              		.align	1
 640              		.p2align 2,,3
 641              		.global	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef
 642              		.syntax unified
 643              		.thumb
 644              		.thumb_func
 645              		.fpu fpv4-sp-d16
 646              		.type	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef, %function
 647              	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef:
 648              		@ args = 4, pretend = 0, frame = 0
 649              		@ frame_needed = 0, uses_anonymous_args = 0
 650 0000 08B5     		push	{r3, lr}
 651 0002 0349     		ldr	r1, .L59
 652 0004 0298     		ldr	r0, [sp, #8]
 653 0006 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 654 000a 0020     		movs	r0, #0
 655 000c 08BD     		pop	{r3, pc}
 656              	.L60:
 657 000e 00BF     		.align	2
 658              	.L59:
 659 0010 00000000 		.word	.LC8
 660              		.size	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef, .-_ZNK21HangprinterKinematic
 661              		.section	.text._ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 662              		.align	1
 663              		.p2align 2,,3
 664              		.global	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf
 665              		.syntax unified
 666              		.thumb
 667              		.thumb_func
 668              		.fpu fpv4-sp-d16
 669              		.type	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 670              	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 671              		@ args = 0, pretend = 0, frame = 8
 672              		@ frame_needed = 0, uses_anonymous_args = 0
 673 0000 92ED010A 		vldr.32	s0, [r2, #4]
 674 0004 D2ED007A 		vldr.32	s15, [r2]
 675 0008 00B5     		push	{lr}
 676 000a 20EE000A 		vmul.f32	s0, s0, s0
 677 000e 2DED028B 		vpush.64	{d8}
 678 0012 A7EEA70A 		vfma.f32	s0, s15, s15
 679 0016 83B0     		sub	sp, sp, #12
 680 0018 B5EE400A 		vcmp.f32	s0, #0
 681 001c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 682 0020 B1EEC08A 		vsqrt.f32	s16, s0
 683 0024 39D4     		bmi	.L70
 684              	.L62:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 13


 685 0026 DFED1F7A 		vldr.32	s15, .L71
 686 002a B4EEE78A 		vcmpe.f32	s16, s15
 687 002e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 688 0032 2DDD     		ble	.L68
 689 0034 1C4B     		ldr	r3, .L71+4
 690 0036 5B68     		ldr	r3, [r3, #4]	@ unaligned
 691 0038 93ED5F0A 		vldr.32	s0, [r3, #380]
 692 003c D3ED607A 		vldr.32	s15, [r3, #384]
 693 0040 B4EE400A 		vcmp.f32	s0, s0
 694 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 695 0048 06D6     		bvs	.L65
 696 004a B4EEE70A 		vcmpe.f32	s0, s15
 697 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 698 0052 58BF     		it	pl
 699 0054 B0EE670A 		vmovpl.f32	s0, s15
 700              	.L65:
 701 0058 D3ED6B0A 		vldr.32	s1, [r3, #428]
 702 005c D3ED6C7A 		vldr.32	s15, [r3, #432]
 703 0060 F4EE600A 		vcmp.f32	s1, s1
 704 0064 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 705 0068 06D6     		bvs	.L66
 706 006a F4EEE70A 		vcmpe.f32	s1, s15
 707 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 708 0072 58BF     		it	pl
 709 0074 F0EE670A 		vmovpl.f32	s1, s15
 710              	.L66:
 711 0078 C0EE880A 		vdiv.f32	s1, s1, s16
 712 007c 0846     		mov	r0, r1
 713 007e 80EE080A 		vdiv.f32	s0, s0, s16
 714 0082 03B0     		add	sp, sp, #12
 715              		@ sp needed
 716 0084 BDEC028B 		vldm	sp!, {d8}
 717 0088 5DF804EB 		ldr	lr, [sp], #4
 718 008c FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 719              	.L68:
 720 0090 03B0     		add	sp, sp, #12
 721              		@ sp needed
 722 0092 BDEC028B 		vldm	sp!, {d8}
 723 0096 5DF804FB 		ldr	pc, [sp], #4
 724              	.L70:
 725 009a 0191     		str	r1, [sp, #4]
 726 009c FFF7FEFF 		bl	sqrtf
 727 00a0 0199     		ldr	r1, [sp, #4]
 728 00a2 C0E7     		b	.L62
 729              	.L72:
 730              		.align	2
 731              	.L71:
 732 00a4 0AD7233C 		.word	1008981770
 733 00a8 00000000 		.word	reprap
 734              		.size	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK21HangprinterKinemati
 735              		.section	.text._ZN21HangprinterKinematicsD0Ev,"axG",%progbits,_ZN21HangprinterKinematicsD5Ev,comda
 736              		.align	1
 737              		.p2align 2,,3
 738              		.weak	_ZN21HangprinterKinematicsD0Ev
 739              		.syntax unified
 740              		.thumb
 741              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 14


 742              		.fpu fpv4-sp-d16
 743              		.type	_ZN21HangprinterKinematicsD0Ev, %function
 744              	_ZN21HangprinterKinematicsD0Ev:
 745              		@ args = 0, pretend = 0, frame = 0
 746              		@ frame_needed = 0, uses_anonymous_args = 0
 747 0000 10B5     		push	{r4, lr}
 748 0002 4FF4AE71 		mov	r1, #348
 749 0006 0446     		mov	r4, r0
 750 0008 FFF7FEFF 		bl	_ZdlPvj
 751 000c 2046     		mov	r0, r4
 752 000e 10BD     		pop	{r4, pc}
 753              		.size	_ZN21HangprinterKinematicsD0Ev, .-_ZN21HangprinterKinematicsD0Ev
 754              		.section	.text._ZN11FixedMatrixIdLj32ELj3EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EED5Ev,c
 755              		.align	1
 756              		.p2align 2,,3
 757              		.weak	_ZN11FixedMatrixIdLj32ELj3EED0Ev
 758              		.syntax unified
 759              		.thumb
 760              		.thumb_func
 761              		.fpu fpv4-sp-d16
 762              		.type	_ZN11FixedMatrixIdLj32ELj3EED0Ev, %function
 763              	_ZN11FixedMatrixIdLj32ELj3EED0Ev:
 764              		@ args = 0, pretend = 0, frame = 0
 765              		@ frame_needed = 0, uses_anonymous_args = 0
 766 0000 10B5     		push	{r4, lr}
 767 0002 4FF44271 		mov	r1, #776
 768 0006 0446     		mov	r4, r0
 769 0008 FFF7FEFF 		bl	_ZdlPvj
 770 000c 2046     		mov	r0, r4
 771 000e 10BD     		pop	{r4, pc}
 772              		.size	_ZN11FixedMatrixIdLj32ELj3EED0Ev, .-_ZN11FixedMatrixIdLj32ELj3EED0Ev
 773              		.section	.text._ZN11FixedMatrixIdLj32ELj9EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EED5Ev,c
 774              		.align	1
 775              		.p2align 2,,3
 776              		.weak	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 777              		.syntax unified
 778              		.thumb
 779              		.thumb_func
 780              		.fpu fpv4-sp-d16
 781              		.type	_ZN11FixedMatrixIdLj32ELj9EED0Ev, %function
 782              	_ZN11FixedMatrixIdLj32ELj9EED0Ev:
 783              		@ args = 0, pretend = 0, frame = 0
 784              		@ frame_needed = 0, uses_anonymous_args = 0
 785 0000 10B5     		push	{r4, lr}
 786 0002 40F60811 		movw	r1, #2312
 787 0006 0446     		mov	r4, r0
 788 0008 FFF7FEFF 		bl	_ZdlPvj
 789 000c 2046     		mov	r0, r4
 790 000e 10BD     		pop	{r4, pc}
 791              		.size	_ZN11FixedMatrixIdLj32ELj9EED0Ev, .-_ZN11FixedMatrixIdLj32ELj9EED0Ev
 792              		.section	.text._ZN11FixedMatrixIdLj9ELj10EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EED5Ev,c
 793              		.align	1
 794              		.p2align 2,,3
 795              		.weak	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 796              		.syntax unified
 797              		.thumb
 798              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 15


 799              		.fpu fpv4-sp-d16
 800              		.type	_ZN11FixedMatrixIdLj9ELj10EED0Ev, %function
 801              	_ZN11FixedMatrixIdLj9ELj10EED0Ev:
 802              		@ args = 0, pretend = 0, frame = 0
 803              		@ frame_needed = 0, uses_anonymous_args = 0
 804 0000 10B5     		push	{r4, lr}
 805 0002 4FF43671 		mov	r1, #728
 806 0006 0446     		mov	r4, r0
 807 0008 FFF7FEFF 		bl	_ZdlPvj
 808 000c 2046     		mov	r0, r4
 809 000e 10BD     		pop	{r4, pc}
 810              		.size	_ZN11FixedMatrixIdLj9ELj10EED0Ev, .-_ZN11FixedMatrixIdLj9ELj10EED0Ev
 811              		.section	.text._ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore,"ax",%progbits
 812              		.align	1
 813              		.p2align 2,,3
 814              		.global	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore
 815              		.syntax unified
 816              		.thumb
 817              		.thumb_func
 818              		.fpu fpv4-sp-d16
 819              		.type	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore, %function
 820              	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore:
 821              		@ args = 0, pretend = 0, frame = 0
 822              		@ frame_needed = 0, uses_anonymous_args = 0
 823              		@ link register save eliminated.
 824 0000 90F85821 		ldrb	r2, [r0, #344]	@ zero_extendqisi2
 825 0004 0AB9     		cbnz	r2, .L83
 826 0006 0120     		movs	r0, #1
 827 0008 7047     		bx	lr
 828              	.L83:
 829 000a 0368     		ldr	r3, [r0]
 830 000c DB69     		ldr	r3, [r3, #28]
 831 000e 1847     		bx	r3
 832              		.size	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore, .-_ZNK21HangprinterKinematics1
 833              		.section	.text._ZNK21HangprinterKinematics13LimitPositionEPfjmb,"ax",%progbits
 834              		.align	1
 835              		.p2align 2,,3
 836              		.global	_ZNK21HangprinterKinematics13LimitPositionEPfjmb
 837              		.syntax unified
 838              		.thumb
 839              		.thumb_func
 840              		.fpu fpv4-sp-d16
 841              		.type	_ZNK21HangprinterKinematics13LimitPositionEPfjmb, %function
 842              	_ZNK21HangprinterKinematics13LimitPositionEPfjmb:
 843              		@ args = 4, pretend = 0, frame = 8
 844              		@ frame_needed = 0, uses_anonymous_args = 0
 845 0000 03F00703 		and	r3, r3, #7
 846 0004 072B     		cmp	r3, #7
 847 0006 01D0     		beq	.L104
 848 0008 0020     		movs	r0, #0
 849 000a 7047     		bx	lr
 850              	.L104:
 851 000c D1ED016A 		vldr.32	s13, [r1, #4]
 852 0010 91ED007A 		vldr.32	s14, [r1]
 853 0014 90ED436A 		vldr.32	s12, [r0, #268]
 854 0018 00B5     		push	{lr}
 855 001a 66EEA67A 		vmul.f32	s15, s13, s13
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 16


 856 001e 2DED028B 		vpush.64	{d8}
 857 0022 E7EE077A 		vfma.f32	s15, s14, s14
 858 0026 83B0     		sub	sp, sp, #12
 859 0028 F4EEC67A 		vcmpe.f32	s15, s12
 860 002c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 861 0030 1EDC     		bgt	.L105
 862 0032 0020     		movs	r0, #0
 863              	.L86:
 864 0034 1C4B     		ldr	r3, .L107
 865 0036 D1ED027A 		vldr.32	s15, [r1, #8]
 866 003a 5B68     		ldr	r3, [r3, #4]
 867 003c 03F5F962 		add	r2, r3, #1992
 868 0040 92ED007A 		vldr.32	s14, [r2]
 869 0044 F4EEC77A 		vcmpe.f32	s15, s14
 870 0048 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 871 004c 08D4     		bmi	.L103
 872 004e 03F2A473 		addw	r3, r3, #1956
 873 0052 93ED007A 		vldr.32	s14, [r3]
 874 0056 F4EEC77A 		vcmpe.f32	s15, s14
 875 005a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 876 005e 02DD     		ble	.L85
 877              	.L103:
 878 0060 81ED027A 		vstr.32	s14, [r1, #8]
 879 0064 0120     		movs	r0, #1
 880              	.L85:
 881 0066 03B0     		add	sp, sp, #12
 882              		@ sp needed
 883 0068 BDEC028B 		vldm	sp!, {d8}
 884 006c 5DF804FB 		ldr	pc, [sp], #4
 885              	.L105:
 886 0070 86EE270A 		vdiv.f32	s0, s12, s15
 887 0074 B5EE400A 		vcmp.f32	s0, #0
 888 0078 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 889 007c B1EEC08A 		vsqrt.f32	s16, s0
 890 0080 09D4     		bmi	.L106
 891              	.L88:
 892 0082 0120     		movs	r0, #1
 893 0084 28EE077A 		vmul.f32	s14, s16, s14
 894 0088 68EE266A 		vmul.f32	s13, s16, s13
 895 008c 81ED007A 		vstr.32	s14, [r1]
 896 0090 C1ED016A 		vstr.32	s13, [r1, #4]
 897 0094 CEE7     		b	.L86
 898              	.L106:
 899 0096 0191     		str	r1, [sp, #4]
 900 0098 FFF7FEFF 		bl	sqrtf
 901 009c 0199     		ldr	r1, [sp, #4]
 902 009e 91ED007A 		vldr.32	s14, [r1]
 903 00a2 D1ED016A 		vldr.32	s13, [r1, #4]
 904 00a6 ECE7     		b	.L88
 905              	.L108:
 906              		.align	2
 907              	.L107:
 908 00a8 00000000 		.word	reprap
 909              		.size	_ZNK21HangprinterKinematics13LimitPositionEPfjmb, .-_ZNK21HangprinterKinematics13LimitPositi
 910              		.global	__aeabi_f2d
 911              		.global	__aeabi_dmul
 912              		.global	__aeabi_dadd
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 17


 913              		.global	__aeabi_dcmpun
 914              		.global	__aeabi_dcmpge
 915              		.section	.text._ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 916              		.align	1
 917              		.p2align 2,,3
 918              		.global	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 919              		.syntax unified
 920              		.thumb
 921              		.thumb_func
 922              		.fpu fpv4-sp-d16
 923              		.type	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 924              	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 925              		@ args = 12, pretend = 0, frame = 40
 926              		@ frame_needed = 0, uses_anonymous_args = 0
 927 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 928 0004 D1ED017A 		vldr.32	s15, [r1, #4]
 929 0008 90ED086A 		vldr.32	s12, [r0, #32]
 930 000c 90ED0B7A 		vldr.32	s14, [r0, #44]
 931 0010 90ED063A 		vldr.32	s6, [r0, #24]
 932 0014 D1ED006A 		vldr.32	s13, [r1]
 933 0018 D0ED044A 		vldr.32	s9, [r0, #16]
 934 001c D0ED093A 		vldr.32	s7, [r0, #36]
 935 0020 90ED0C4A 		vldr.32	s8, [r0, #48]
 936 0024 90ED075A 		vldr.32	s10, [r0, #28]
 937 0028 90ED0A2A 		vldr.32	s4, [r0, #40]
 938 002c D0ED0D5A 		vldr.32	s11, [r0, #52]
 939 0030 D1ED022A 		vldr.32	s5, [r1, #8]
 940 0034 2DED0C8B 		vpush.64	{d8, d9, d10, d11, d12, d13}
 941 0038 D0ED058A 		vldr.32	s17, [r0, #20]
 942 003c 77EEE88A 		vsub.f32	s17, s15, s17
 943 0040 37EEC66A 		vsub.f32	s12, s15, s12
 944 0044 68EEA88A 		vmul.f32	s17, s17, s17
 945 0048 37EEC77A 		vsub.f32	s14, s15, s14
 946 004c E3EE038A 		vfma.f32	s17, s6, s6
 947 0050 8AB0     		sub	sp, sp, #40
 948 0052 0446     		mov	r4, r0
 949 0054 26EE06AA 		vmul.f32	s20, s12, s12
 950 0058 67EE079A 		vmul.f32	s19, s14, s14
 951 005c 27EEA79A 		vmul.f32	s18, s15, s15
 952 0060 36EEE46A 		vsub.f32	s12, s13, s9
 953 0064 A6EEA69A 		vfma.f32	s18, s13, s13
 954 0068 0D46     		mov	r5, r1
 955 006a 9246     		mov	r10, r2
 956 006c A3EEA3AA 		vfma.f32	s20, s7, s7
 957 0070 00F1F806 		add	r6, r0, #248
 958 0074 00F58679 		add	r9, r0, #268
 959 0078 E4EE049A 		vfma.f32	s19, s8, s8
 960 007c 0DF10408 		add	r8, sp, #4
 961 0080 05AF     		add	r7, sp, #20
 962 0082 E6EE068A 		vfma.f32	s17, s12, s12
 963 0086 36EEC57A 		vsub.f32	s14, s13, s10
 964 008a 75EEE27A 		vsub.f32	s15, s11, s5
 965 008e 76EEC26A 		vsub.f32	s13, s13, s4
 966 0092 A7EE07AA 		vfma.f32	s20, s14, s14
 967 0096 E6EEA69A 		vfma.f32	s19, s13, s13
 968 009a A7EEA79A 		vfma.f32	s18, s15, s15
 969 009e B0EE680A 		vmov.f32	s0, s17
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 18


 970 00a2 B5EE400A 		vcmp.f32	s0, #0
 971 00a6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 972 00aa CDED008A 		vstr.32	s17, [sp]
 973 00ae 8DED01AA 		vstr.32	s20, [sp, #4]
 974 00b2 CDED029A 		vstr.32	s19, [sp, #8]
 975 00b6 8DED039A 		vstr.32	s18, [sp, #12]
 976 00ba B1EEC08A 		vsqrt.f32	s16, s0
 977 00be 10D4     		bmi	.L138
 978              	.L110:
 979 00c0 F6EC017A 		vldmia.32	r6!, {s15}
 980 00c4 38EE678A 		vsub.f32	s16, s16, s15
 981 00c8 B145     		cmp	r9, r6
 982 00ca A7EC018A 		vstmia.32	r7!, {s16}
 983 00ce 0BD0     		beq	.L111
 984 00d0 B8EC010A 		vldmia.32	r8!, {s0}
 985 00d4 B5EE400A 		vcmp.f32	s0, #0
 986 00d8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 987 00dc B1EEC08A 		vsqrt.f32	s16, s0
 988 00e0 EED5     		bpl	.L110
 989              	.L138:
 990 00e2 FFF7FEFF 		bl	sqrtf
 991 00e6 EBE7     		b	.L110
 992              	.L111:
 993 00e8 D5ED01AA 		vldr.32	s21, [r5, #4]
 994 00ec D4ED057A 		vldr.32	s15, [r4, #20]
 995 00f0 95ED008A 		vldr.32	s16, [r5]
 996 00f4 94ED0EBA 		vldr.32	s22, [r4, #56]
 997 00f8 95ED02CA 		vldr.32	s24, [r5, #8]
 998 00fc DDED05BA 		vldr.32	s23, [sp, #20]
 999 0100 7AEEE77A 		vsub.f32	s15, s21, s15
 1000 0104 17EE900A 		vmov	r0, s15
 1001 0108 FFF7FEFF 		bl	__aeabi_f2d
 1002 010c D4ED047A 		vldr.32	s15, [r4, #16]
 1003 0110 78EE677A 		vsub.f32	s15, s16, s15
 1004 0114 8046     		mov	r8, r0
 1005 0116 17EE900A 		vmov	r0, s15
 1006 011a 8946     		mov	r9, r1
 1007 011c FFF7FEFF 		bl	__aeabi_f2d
 1008 0120 0246     		mov	r2, r0
 1009 0122 0B46     		mov	r3, r1
 1010 0124 FFF7FEFF 		bl	__aeabi_dmul
 1011 0128 4246     		mov	r2, r8
 1012 012a 0646     		mov	r6, r0
 1013 012c 0F46     		mov	r7, r1
 1014 012e 4B46     		mov	r3, r9
 1015 0130 4046     		mov	r0, r8
 1016 0132 4946     		mov	r1, r9
 1017 0134 FFF7FEFF 		bl	__aeabi_dmul
 1018 0138 0246     		mov	r2, r0
 1019 013a 0B46     		mov	r3, r1
 1020 013c 3046     		mov	r0, r6
 1021 013e 3946     		mov	r1, r7
 1022 0140 FFF7FEFF 		bl	__aeabi_dadd
 1023 0144 0022     		movs	r2, #0
 1024 0146 0023     		movs	r3, #0
 1025 0148 0646     		mov	r6, r0
 1026 014a 0F46     		mov	r7, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 19


 1027 014c FFF7FEFF 		bl	__aeabi_dcmpun
 1028 0150 40B9     		cbnz	r0, .L113
 1029 0152 0022     		movs	r2, #0
 1030 0154 0023     		movs	r3, #0
 1031 0156 3046     		mov	r0, r6
 1032 0158 3946     		mov	r1, r7
 1033 015a FFF7FEFF 		bl	__aeabi_dcmpge
 1034 015e 0028     		cmp	r0, #0
 1035 0160 00F0DC80 		beq	.L139
 1036              	.L113:
 1037 0164 D4ED087A 		vldr.32	s15, [r4, #32]
 1038 0168 DDED06CA 		vldr.32	s25, [sp, #24]
 1039 016c 7AEEE77A 		vsub.f32	s15, s21, s15
 1040 0170 17EE900A 		vmov	r0, s15
 1041 0174 FFF7FEFF 		bl	__aeabi_f2d
 1042 0178 D4ED077A 		vldr.32	s15, [r4, #28]
 1043 017c 78EE677A 		vsub.f32	s15, s16, s15
 1044 0180 0646     		mov	r6, r0
 1045 0182 17EE900A 		vmov	r0, s15
 1046 0186 0F46     		mov	r7, r1
 1047 0188 FFF7FEFF 		bl	__aeabi_f2d
 1048 018c 3246     		mov	r2, r6
 1049 018e 8046     		mov	r8, r0
 1050 0190 8946     		mov	r9, r1
 1051 0192 3B46     		mov	r3, r7
 1052 0194 3046     		mov	r0, r6
 1053 0196 3946     		mov	r1, r7
 1054 0198 FFF7FEFF 		bl	__aeabi_dmul
 1055 019c 4246     		mov	r2, r8
 1056 019e 0646     		mov	r6, r0
 1057 01a0 0F46     		mov	r7, r1
 1058 01a2 4B46     		mov	r3, r9
 1059 01a4 4046     		mov	r0, r8
 1060 01a6 4946     		mov	r1, r9
 1061 01a8 FFF7FEFF 		bl	__aeabi_dmul
 1062 01ac 0246     		mov	r2, r0
 1063 01ae 0B46     		mov	r3, r1
 1064 01b0 3046     		mov	r0, r6
 1065 01b2 3946     		mov	r1, r7
 1066 01b4 FFF7FEFF 		bl	__aeabi_dadd
 1067 01b8 0022     		movs	r2, #0
 1068 01ba 0023     		movs	r3, #0
 1069 01bc 0646     		mov	r6, r0
 1070 01be 0F46     		mov	r7, r1
 1071 01c0 FFF7FEFF 		bl	__aeabi_dcmpun
 1072 01c4 40B9     		cbnz	r0, .L114
 1073 01c6 0022     		movs	r2, #0
 1074 01c8 0023     		movs	r3, #0
 1075 01ca 3046     		mov	r0, r6
 1076 01cc 3946     		mov	r1, r7
 1077 01ce FFF7FEFF 		bl	__aeabi_dcmpge
 1078 01d2 0028     		cmp	r0, #0
 1079 01d4 00F0B080 		beq	.L140
 1080              	.L114:
 1081 01d8 D4ED0B7A 		vldr.32	s15, [r4, #44]
 1082 01dc 9DED07DA 		vldr.32	s26, [sp, #28]
 1083 01e0 7AEEE77A 		vsub.f32	s15, s21, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 20


 1084 01e4 17EE900A 		vmov	r0, s15
 1085 01e8 FFF7FEFF 		bl	__aeabi_f2d
 1086 01ec D4ED0A7A 		vldr.32	s15, [r4, #40]
 1087 01f0 78EE677A 		vsub.f32	s15, s16, s15
 1088 01f4 8046     		mov	r8, r0
 1089 01f6 17EE900A 		vmov	r0, s15
 1090 01fa 8946     		mov	r9, r1
 1091 01fc FFF7FEFF 		bl	__aeabi_f2d
 1092 0200 4246     		mov	r2, r8
 1093 0202 0646     		mov	r6, r0
 1094 0204 0F46     		mov	r7, r1
 1095 0206 4B46     		mov	r3, r9
 1096 0208 4046     		mov	r0, r8
 1097 020a 4946     		mov	r1, r9
 1098 020c FFF7FEFF 		bl	__aeabi_dmul
 1099 0210 3246     		mov	r2, r6
 1100 0212 0446     		mov	r4, r0
 1101 0214 0D46     		mov	r5, r1
 1102 0216 3B46     		mov	r3, r7
 1103 0218 3046     		mov	r0, r6
 1104 021a 3946     		mov	r1, r7
 1105 021c FFF7FEFF 		bl	__aeabi_dmul
 1106 0220 0246     		mov	r2, r0
 1107 0222 0B46     		mov	r3, r1
 1108 0224 2046     		mov	r0, r4
 1109 0226 2946     		mov	r1, r5
 1110 0228 FFF7FEFF 		bl	__aeabi_dadd
 1111 022c 0022     		movs	r2, #0
 1112 022e 0023     		movs	r3, #0
 1113 0230 0446     		mov	r4, r0
 1114 0232 0D46     		mov	r5, r1
 1115 0234 FFF7FEFF 		bl	__aeabi_dcmpun
 1116 0238 38B9     		cbnz	r0, .L115
 1117 023a 0022     		movs	r2, #0
 1118 023c 0023     		movs	r3, #0
 1119 023e 2046     		mov	r0, r4
 1120 0240 2946     		mov	r1, r5
 1121 0242 FFF7FEFF 		bl	__aeabi_dcmpge
 1122 0246 0028     		cmp	r0, #0
 1123 0248 71D0     		beq	.L141
 1124              	.L115:
 1125 024a F5EEC08A 		vcmpe.f32	s17, #0
 1126 024e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1127 0252 5CDD     		ble	.L136
 1128 0254 B5EEC0AA 		vcmpe.f32	s20, #0
 1129 0258 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1130 025c 57DD     		ble	.L136
 1131 025e F5EEC09A 		vcmpe.f32	s19, #0
 1132 0262 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1133 0266 52DD     		ble	.L136
 1134 0268 B5EEC09A 		vcmpe.f32	s18, #0
 1135 026c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1136 0270 4DDD     		ble	.L136
 1137 0272 3BEE4CBA 		vsub.f32	s22, s22, s24
 1138 0276 DFED357A 		vldr.32	s15, .L142
 1139 027a 3BEE67BA 		vsub.f32	s22, s22, s15
 1140 027e B5EEC0BA 		vcmpe.f32	s22, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 21


 1141 0282 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1142 0286 42DD     		ble	.L136
 1143 0288 9AED000A 		vldr.32	s0, [r10]
 1144 028c 2BEE800A 		vmul.f32	s0, s23, s0
 1145 0290 FFF7FEFF 		bl	lrintf
 1146 0294 9AED010A 		vldr.32	s0, [r10, #4]
 1147 0298 1F9B     		ldr	r3, [sp, #124]
 1148 029a 2CEE800A 		vmul.f32	s0, s25, s0
 1149 029e 1860     		str	r0, [r3]
 1150 02a0 FFF7FEFF 		bl	lrintf
 1151 02a4 9AED020A 		vldr.32	s0, [r10, #8]
 1152 02a8 1F9B     		ldr	r3, [sp, #124]
 1153 02aa 2DEE000A 		vmul.f32	s0, s26, s0
 1154 02ae 5860     		str	r0, [r3, #4]
 1155 02b0 FFF7FEFF 		bl	lrintf
 1156 02b4 9AED040A 		vldr.32	s0, [r10, #16]
 1157 02b8 1F9B     		ldr	r3, [sp, #124]
 1158 02ba 2BEE000A 		vmul.f32	s0, s22, s0
 1159 02be 9860     		str	r0, [r3, #8]
 1160 02c0 FFF7FEFF 		bl	lrintf
 1161 02c4 DDED087A 		vldr.32	s15, [sp, #32]
 1162 02c8 9FED217A 		vldr.32	s14, .L142+4
 1163 02cc 9FED215A 		vldr.32	s10, .L142+8
 1164 02d0 DFED215A 		vldr.32	s11, .L142+12
 1165 02d4 9AED036A 		vldr.32	s12, [r10, #12]
 1166 02d8 1F9B     		ldr	r3, [sp, #124]
 1167 02da 37EE877A 		vadd.f32	s14, s15, s14
 1168 02de F0EE086A 		vmov.f32	s13, #3.0e+0
 1169 02e2 67EE266A 		vmul.f32	s13, s14, s13
 1170 02e6 1861     		str	r0, [r3, #16]
 1171 02e8 86EE850A 		vdiv.f32	s0, s13, s10
 1172 02ec A7EE250A 		vfma.f32	s0, s14, s11
 1173 02f0 77EEC07A 		vsub.f32	s15, s15, s0
 1174 02f4 27EE860A 		vmul.f32	s0, s15, s12
 1175 02f8 FFF7FEFF 		bl	lrintf
 1176 02fc 1F9A     		ldr	r2, [sp, #124]
 1177 02fe 0123     		movs	r3, #1
 1178 0300 D060     		str	r0, [r2, #12]
 1179 0302 1846     		mov	r0, r3
 1180 0304 0AB0     		add	sp, sp, #40
 1181              		@ sp needed
 1182 0306 BDEC0C8B 		vldm	sp!, {d8-d13}
 1183 030a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1184              	.L136:
 1185 030e 0023     		movs	r3, #0
 1186 0310 1846     		mov	r0, r3
 1187 0312 0AB0     		add	sp, sp, #40
 1188              		@ sp needed
 1189 0314 BDEC0C8B 		vldm	sp!, {d8-d13}
 1190 0318 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1191              	.L139:
 1192 031c 47EC106B 		vmov	d0, r6, r7
 1193 0320 FFF7FEFF 		bl	sqrt
 1194 0324 D5ED01AA 		vldr.32	s21, [r5, #4]
 1195 0328 95ED008A 		vldr.32	s16, [r5]
 1196 032c 1AE7     		b	.L113
 1197              	.L141:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 22


 1198 032e 45EC104B 		vmov	d0, r4, r5
 1199 0332 FFF7FEFF 		bl	sqrt
 1200 0336 88E7     		b	.L115
 1201              	.L140:
 1202 0338 47EC106B 		vmov	d0, r6, r7
 1203 033c FFF7FEFF 		bl	sqrt
 1204 0340 D5ED01AA 		vldr.32	s21, [r5, #4]
 1205 0344 95ED008A 		vldr.32	s16, [r5]
 1206 0348 46E7     		b	.L114
 1207              	.L143:
 1208 034a 00BF     		.align	2
 1209              	.L142:
 1210 034c 00808F43 		.word	1133477888
 1211 0350 3D52F244 		.word	1156731453
 1212 0354 E69E9A46 		.word	1184538342
 1213 0358 0AD7233B 		.word	992204554
 1214              		.size	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK21HangprinterKinematic
 1215              		.section	.text._Z14elongationCalcf,"ax",%progbits
 1216              		.align	1
 1217              		.p2align 2,,3
 1218              		.global	_Z14elongationCalcf
 1219              		.syntax unified
 1220              		.thumb
 1221              		.thumb_func
 1222              		.fpu fpv4-sp-d16
 1223              		.type	_Z14elongationCalcf, %function
 1224              	_Z14elongationCalcf:
 1225              		@ args = 0, pretend = 0, frame = 0
 1226              		@ frame_needed = 0, uses_anonymous_args = 0
 1227              		@ link register save eliminated.
 1228 0000 DFED087A 		vldr.32	s15, .L145
 1229 0004 9FED086A 		vldr.32	s12, .L145+4
 1230 0008 DFED086A 		vldr.32	s13, .L145+8
 1231 000c 70EE277A 		vadd.f32	s15, s0, s15
 1232 0010 B0EE087A 		vmov.f32	s14, #3.0e+0
 1233 0014 27EE877A 		vmul.f32	s14, s15, s14
 1234 0018 87EE060A 		vdiv.f32	s0, s14, s12
 1235 001c A7EEA60A 		vfma.f32	s0, s15, s13
 1236 0020 7047     		bx	lr
 1237              	.L146:
 1238 0022 00BF     		.align	2
 1239              	.L145:
 1240 0024 3D52F244 		.word	1156731453
 1241 0028 E69E9A46 		.word	1184538342
 1242 002c 0AD7233B 		.word	992204554
 1243              		.size	_Z14elongationCalcf, .-_Z14elongationCalcf
 1244              		.section	.text._ZN21HangprinterKinematics6RecalcEv,"ax",%progbits
 1245              		.align	1
 1246              		.p2align 2,,3
 1247              		.global	_ZN21HangprinterKinematics6RecalcEv
 1248              		.syntax unified
 1249              		.thumb
 1250              		.thumb_func
 1251              		.fpu fpv4-sp-d16
 1252              		.type	_ZN21HangprinterKinematics6RecalcEv, %function
 1253              	_ZN21HangprinterKinematics6RecalcEv:
 1254              		@ args = 0, pretend = 0, frame = 8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 23


 1255              		@ frame_needed = 0, uses_anonymous_args = 0
 1256 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1257 0004 D0ED045A 		vldr.32	s11, [r0, #16]
 1258 0008 90ED055A 		vldr.32	s10, [r0, #20]
 1259 000c D0ED0B4A 		vldr.32	s9, [r0, #44]
 1260 0010 90ED066A 		vldr.32	s12, [r0, #24]
 1261 0014 D0ED0C2A 		vldr.32	s5, [r0, #48]
 1262 0018 90ED084A 		vldr.32	s8, [r0, #32]
 1263 001c D0ED0A3A 		vldr.32	s7, [r0, #40]
 1264 0020 90ED093A 		vldr.32	s6, [r0, #36]
 1265 0024 2DED068B 		vpush.64	{d8, d9, d10}
 1266 0028 74EEC51A 		vsub.f32	s3, s9, s10
 1267 002c 90ED078A 		vldr.32	s16, [r0, #28]
 1268 0030 90ED0FAA 		vldr.32	s20, [r0, #60]
 1269 0034 C0ED4C1A 		vstr.32	s3, [r0, #304]
 1270 0038 24EEE57A 		vnmul.f32	s14, s9, s11
 1271 003c 32EEC62A 		vsub.f32	s4, s5, s12
 1272 0040 62EEC56A 		vnmul.f32	s13, s5, s10
 1273 0044 A8EE217A 		vfma.f32	s14, s16, s3
 1274 0048 A5B0     		sub	sp, sp, #148
 1275 004a 0446     		mov	r4, r0
 1276 004c E4EE026A 		vfma.f32	s13, s8, s4
 1277 0050 A5EE237A 		vfma.f32	s14, s10, s7
 1278 0054 65EEA27A 		vmul.f32	s15, s11, s5
 1279 0058 E6EE246A 		vfma.f32	s13, s12, s9
 1280 005c 73EEE50A 		vsub.f32	s1, s7, s11
 1281 0060 E8EE027A 		vfma.f32	s15, s16, s4
 1282 0064 B1EE431A 		vneg.f32	s2, s6
 1283 0068 A4EE607A 		vfms.f32	s14, s8, s1
 1284 006c E1EE216A 		vfma.f32	s13, s2, s3
 1285 0070 E6EE237A 		vfma.f32	s15, s12, s7
 1286 0074 37EE077A 		vadd.f32	s14, s14, s14
 1287 0078 76EEA66A 		vadd.f32	s13, s13, s13
 1288 007c 27EE079A 		vmul.f32	s18, s14, s14
 1289 0080 E1EE207A 		vfma.f32	s15, s2, s1
 1290 0084 65EEA6AA 		vmul.f32	s21, s11, s13
 1291 0088 25EE050A 		vmul.f32	s0, s10, s10
 1292 008c F0EE498A 		vmov.f32	s17, s18
 1293 0090 64EEA49A 		vmul.f32	s19, s9, s9
 1294 0094 24EE041A 		vmul.f32	s2, s8, s8
 1295 0098 A5EEA50A 		vfma.f32	s0, s11, s11
 1296 009c 6AEE87AA 		vmul.f32	s21, s21, s14
 1297 00a0 E6EEA68A 		vfma.f32	s17, s13, s13
 1298 00a4 F1EE677A 		vneg.f32	s15, s15
 1299 00a8 77EEA77A 		vadd.f32	s15, s15, s15
 1300 00ac E6EE09AA 		vfma.f32	s21, s12, s18
 1301 00b0 E3EEA39A 		vfma.f32	s19, s7, s7
 1302 00b4 A8EE081A 		vfma.f32	s2, s16, s16
 1303 00b8 A6EE060A 		vfma.f32	s0, s12, s12
 1304 00bc 74EE644A 		vsub.f32	s9, s8, s9
 1305 00c0 E7EEA78A 		vfma.f32	s17, s15, s15
 1306 00c4 35EE444A 		vsub.f32	s8, s10, s8
 1307 00c8 25EE275A 		vmul.f32	s10, s10, s15
 1308 00cc A3EE031A 		vfma.f32	s2, s6, s6
 1309 00d0 E2EEA29A 		vfma.f32	s19, s5, s5
 1310 00d4 E7EE05AA 		vfma.f32	s21, s14, s10
 1311 00d8 78EE633A 		vsub.f32	s7, s16, s7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 24


 1312 00dc 75EEC85A 		vsub.f32	s11, s11, s16
 1313 00e0 36EE436A 		vsub.f32	s12, s12, s6
 1314 00e4 2AEE0AAA 		vmul.f32	s20, s20, s20
 1315 00e8 33EE623A 		vsub.f32	s6, s6, s5
 1316 00ec 78EEA88A 		vadd.f32	s17, s17, s17
 1317 00f0 B5EE400A 		vcmp.f32	s0, #0
 1318 00f4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1319 00f8 80ED43AA 		vstr.32	s20, [r0, #268]
 1320 00fc C0ED469A 		vstr.32	s19, [r0, #280]
 1321 0100 C0ED475A 		vstr.32	s11, [r0, #284]
 1322 0104 C0ED483A 		vstr.32	s7, [r0, #288]
 1323 0108 80ED4A4A 		vstr.32	s8, [r0, #296]
 1324 010c C0ED4B4A 		vstr.32	s9, [r0, #300]
 1325 0110 80ED4D6A 		vstr.32	s12, [r0, #308]
 1326 0114 80ED4E3A 		vstr.32	s6, [r0, #312]
 1327 0118 80ED507A 		vstr.32	s14, [r0, #320]
 1328 011c C0ED490A 		vstr.32	s1, [r0, #292]
 1329 0120 80ED539A 		vstr.32	s18, [r0, #332]
 1330 0124 80ED4F2A 		vstr.32	s4, [r0, #316]
 1331 0128 C0ED527A 		vstr.32	s15, [r0, #328]
 1332 012c C0ED516A 		vstr.32	s13, [r0, #324]
 1333 0130 80ED451A 		vstr.32	s2, [r0, #276]
 1334 0134 C0ED54AA 		vstr.32	s21, [r0, #336]
 1335 0138 C0ED558A 		vstr.32	s17, [r0, #340]
 1336 013c 80ED440A 		vstr.32	s0, [r0, #272]
 1337 0140 B1EEC08A 		vsqrt.f32	s16, s0
 1338 0144 00F12C81 		bmi	.L161
 1339              	.L148:
 1340 0148 B5EE401A 		vcmp.f32	s2, #0
 1341 014c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1342 0150 84ED3E8A 		vstr.32	s16, [r4, #248]
 1343 0154 B1EEC18A 		vsqrt.f32	s16, s2
 1344 0158 00F13681 		bmi	.L162
 1345              	.L149:
 1346 015c 94ED0B0A 		vldr.32	s0, [r4, #44]
 1347 0160 94ED0A7A 		vldr.32	s14, [r4, #40]
 1348 0164 D4ED0C7A 		vldr.32	s15, [r4, #48]
 1349 0168 84ED3F8A 		vstr.32	s16, [r4, #252]
 1350 016c 20EE000A 		vmul.f32	s0, s0, s0
 1351 0170 A7EE070A 		vfma.f32	s0, s14, s14
 1352 0174 A7EEA70A 		vfma.f32	s0, s15, s15
 1353 0178 B5EE400A 		vcmp.f32	s0, #0
 1354 017c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1355 0180 B1EEC08A 		vsqrt.f32	s16, s0
 1356 0184 00F11D81 		bmi	.L163
 1357              	.L150:
 1358 0188 626B     		ldr	r2, [r4, #52]	@ float
 1359 018a A36B     		ldr	r3, [r4, #56]	@ float
 1360 018c 914F     		ldr	r7, .L164
 1361 018e C4F80421 		str	r2, [r4, #260]	@ float
 1362 0192 C4F80831 		str	r3, [r4, #264]	@ float
 1363 0196 04F1F805 		add	r5, r4, #248
 1364 019a 04F58676 		add	r6, r4, #268
 1365 019e 84ED408A 		vstr.32	s16, [r4, #256]
 1366              	.L151:
 1367 01a2 55F8040B 		ldr	r0, [r5], #4	@ float
 1368 01a6 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 25


 1369 01aa 0246     		mov	r2, r0
 1370 01ac 0B46     		mov	r3, r1
 1371 01ae 3846     		mov	r0, r7
 1372 01b0 FFF7FEFF 		bl	debugPrintf
 1373 01b4 AE42     		cmp	r6, r5
 1374 01b6 F4D1     		bne	.L151
 1375 01b8 874B     		ldr	r3, .L164+4
 1376 01ba DFED888A 		vldr.32	s17, .L164+8
 1377 01be D3F80480 		ldr	r8, [r3, #4]
 1378 01c2 04F14405 		add	r5, r4, #68
 1379 01c6 4746     		mov	r7, r8
 1380 01c8 08F5EE76 		add	r6, r8, #476
 1381 01cc 08F5F879 		add	r9, r8, #496
 1382 01d0 B7EE009A 		vmov.f32	s18, #1.0e+0
 1383              	.L154:
 1384 01d4 D5ED057A 		vldr.32	s15, [r5, #20]	@ int
 1385 01d8 97F83013 		ldrb	r1, [r7, #816]	@ zero_extendqisi2
 1386 01dc F8EE676A 		vcvt.f32.u32	s13, s15
 1387 01e0 D5ED197A 		vldr.32	s15, [r5, #100]	@ int
 1388 01e4 B8EE678A 		vcvt.f32.u32	s16, s15
 1389 01e8 0DF18F02 		add	r2, sp, #143
 1390 01ec 4046     		mov	r0, r8
 1391 01ee 26EE888A 		vmul.f32	s16, s13, s16
 1392 01f2 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 1393 01f6 07EE900A 		vmov	s15, r0	@ int
 1394 01fa F8EE676A 		vcvt.f32.u32	s13, s15
 1395 01fe D5ED147A 		vldr.32	s15, [r5, #80]	@ int
 1396 0202 6A69     		ldr	r2, [r5, #20]
 1397 0204 AB6A     		ldr	r3, [r5, #40]
 1398 0206 D4ED105A 		vldr.32	s11, [r4, #64]
 1399 020a B8EE676A 		vcvt.f32.u32	s12, s15
 1400 020e D5ED0F7A 		vldr.32	s15, [r5, #60]	@ int
 1401 0212 66EE886A 		vmul.f32	s13, s13, s16
 1402 0216 B8EE677A 		vcvt.f32.u32	s14, s15
 1403 021a 66EE866A 		vmul.f32	s13, s13, s12
 1404 021e 27EE287A 		vmul.f32	s14, s14, s17
 1405 0222 03FB02F3 		mul	r3, r3, r2
 1406 0226 86EE876A 		vdiv.f32	s12, s13, s14
 1407 022a 0C37     		adds	r7, r7, #12
 1408 022c 07EE903A 		vmov	s15, r3	@ int
 1409 0230 F8EE677A 		vcvt.f32.u32	s15, s15
 1410 0234 76EE066A 		vadd.f32	s13, s12, s12
 1411 0238 67EEE57A 		vnmul.f32	s15, s15, s11
 1412 023c 86EEA77A 		vdiv.f32	s14, s13, s15
 1413 0240 C5ED287A 		vstr.32	s15, [r5, #160]
 1414 0244 85ED1E7A 		vstr.32	s14, [r5, #120]
 1415 0248 B5EC017A 		vldmia.32	r5!, {s14}
 1416 024c C6EE077A 		vdiv.f32	s15, s12, s14
 1417 0250 27EE077A 		vmul.f32	s14, s14, s14
 1418 0254 F4EE677A 		vcmp.f32	s15, s15
 1419 0258 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1420 025c 85ED227A 		vstr.32	s14, [r5, #136]
 1421 0260 06D6     		bvs	.L152
 1422 0262 F4EEC97A 		vcmpe.f32	s15, s18
 1423 0266 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1424 026a D8BF     		it	le
 1425 026c F0EE497A 		vmovle.f32	s15, s18
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 26


 1426              	.L152:
 1427 0270 E6EC017A 		vstmia.32	r6!, {s15}
 1428 0274 4E45     		cmp	r6, r9
 1429 0276 ADD1     		bne	.L154
 1430 0278 DFF86891 		ldr	r9, .L164+16
 1431 027c DFF86881 		ldr	r8, .L164+20
 1432 0280 04F1BC05 		add	r5, r4, #188
 1433 0284 04F1E406 		add	r6, r4, #228
 1434 0288 04F1D007 		add	r7, r4, #208
 1435              	.L155:
 1436 028c 56F8040B 		ldr	r0, [r6], #4	@ float
 1437 0290 FFF7FEFF 		bl	__aeabi_f2d
 1438 0294 0246     		mov	r2, r0
 1439 0296 0B46     		mov	r3, r1
 1440 0298 4846     		mov	r0, r9
 1441 029a FFF7FEFF 		bl	debugPrintf
 1442 029e 55F8040B 		ldr	r0, [r5], #4	@ float
 1443 02a2 FFF7FEFF 		bl	__aeabi_f2d
 1444 02a6 0246     		mov	r2, r0
 1445 02a8 0B46     		mov	r3, r1
 1446 02aa 4046     		mov	r0, r8
 1447 02ac FFF7FEFF 		bl	debugPrintf
 1448 02b0 AF42     		cmp	r7, r5
 1449 02b2 EBD1     		bne	.L155
 1450 02b4 D4F81001 		ldr	r0, [r4, #272]	@ float
 1451 02b8 FFF7FEFF 		bl	__aeabi_f2d
 1452 02bc 0646     		mov	r6, r0
 1453 02be D4F85401 		ldr	r0, [r4, #340]	@ float
 1454 02c2 0F46     		mov	r7, r1
 1455 02c4 FFF7FEFF 		bl	__aeabi_f2d
 1456 02c8 CDE92001 		strd	r0, [sp, #128]
 1457 02cc D4F85001 		ldr	r0, [r4, #336]	@ float
 1458 02d0 FFF7FEFF 		bl	__aeabi_f2d
 1459 02d4 CDE91E01 		strd	r0, [sp, #120]
 1460 02d8 D4F84801 		ldr	r0, [r4, #328]	@ float
 1461 02dc FFF7FEFF 		bl	__aeabi_f2d
 1462 02e0 CDE91C01 		strd	r0, [sp, #112]
 1463 02e4 D4F84401 		ldr	r0, [r4, #324]	@ float
 1464 02e8 FFF7FEFF 		bl	__aeabi_f2d
 1465 02ec CDE91A01 		strd	r0, [sp, #104]
 1466 02f0 D4F84C01 		ldr	r0, [r4, #332]	@ float
 1467 02f4 FFF7FEFF 		bl	__aeabi_f2d
 1468 02f8 CDE91801 		strd	r0, [sp, #96]
 1469 02fc D4F84001 		ldr	r0, [r4, #320]	@ float
 1470 0300 FFF7FEFF 		bl	__aeabi_f2d
 1471 0304 CDE91601 		strd	r0, [sp, #88]
 1472 0308 D4F83C01 		ldr	r0, [r4, #316]	@ float
 1473 030c FFF7FEFF 		bl	__aeabi_f2d
 1474 0310 CDE91401 		strd	r0, [sp, #80]
 1475 0314 D4F83801 		ldr	r0, [r4, #312]	@ float
 1476 0318 FFF7FEFF 		bl	__aeabi_f2d
 1477 031c CDE91201 		strd	r0, [sp, #72]
 1478 0320 D4F83401 		ldr	r0, [r4, #308]	@ float
 1479 0324 FFF7FEFF 		bl	__aeabi_f2d
 1480 0328 CDE91001 		strd	r0, [sp, #64]
 1481 032c D4F83001 		ldr	r0, [r4, #304]	@ float
 1482 0330 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 27


 1483 0334 CDE90E01 		strd	r0, [sp, #56]
 1484 0338 D4F82C01 		ldr	r0, [r4, #300]	@ float
 1485 033c FFF7FEFF 		bl	__aeabi_f2d
 1486 0340 CDE90C01 		strd	r0, [sp, #48]
 1487 0344 D4F82801 		ldr	r0, [r4, #296]	@ float
 1488 0348 FFF7FEFF 		bl	__aeabi_f2d
 1489 034c CDE90A01 		strd	r0, [sp, #40]
 1490 0350 D4F82401 		ldr	r0, [r4, #292]	@ float
 1491 0354 FFF7FEFF 		bl	__aeabi_f2d
 1492 0358 CDE90801 		strd	r0, [sp, #32]
 1493 035c D4F82001 		ldr	r0, [r4, #288]	@ float
 1494 0360 FFF7FEFF 		bl	__aeabi_f2d
 1495 0364 CDE90601 		strd	r0, [sp, #24]
 1496 0368 D4F81C01 		ldr	r0, [r4, #284]	@ float
 1497 036c FFF7FEFF 		bl	__aeabi_f2d
 1498 0370 CDE90401 		strd	r0, [sp, #16]
 1499 0374 D4F81801 		ldr	r0, [r4, #280]	@ float
 1500 0378 FFF7FEFF 		bl	__aeabi_f2d
 1501 037c CDE90201 		strd	r0, [sp, #8]
 1502 0380 D4F81401 		ldr	r0, [r4, #276]	@ float
 1503 0384 FFF7FEFF 		bl	__aeabi_f2d
 1504 0388 3246     		mov	r2, r6
 1505 038a CDE90001 		strd	r0, [sp]
 1506 038e 3B46     		mov	r3, r7
 1507 0390 1348     		ldr	r0, .L164+12
 1508 0392 FFF7FEFF 		bl	debugPrintf
 1509 0396 25B0     		add	sp, sp, #148
 1510              		@ sp needed
 1511 0398 BDEC068B 		vldm	sp!, {d8-d10}
 1512 039c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1513              	.L161:
 1514 03a0 FFF7FEFF 		bl	sqrtf
 1515 03a4 D4ED087A 		vldr.32	s15, [r4, #32]
 1516 03a8 D4ED076A 		vldr.32	s13, [r4, #28]
 1517 03ac 94ED097A 		vldr.32	s14, [r4, #36]
 1518 03b0 67EEA77A 		vmul.f32	s15, s15, s15
 1519 03b4 E6EEA67A 		vfma.f32	s15, s13, s13
 1520 03b8 B0EE671A 		vmov.f32	s2, s15
 1521 03bc A7EE071A 		vfma.f32	s2, s14, s14
 1522 03c0 C2E6     		b	.L148
 1523              	.L163:
 1524 03c2 FFF7FEFF 		bl	sqrtf
 1525 03c6 DFE6     		b	.L150
 1526              	.L162:
 1527 03c8 B0EE410A 		vmov.f32	s0, s2
 1528 03cc FFF7FEFF 		bl	sqrtf
 1529 03d0 C4E6     		b	.L149
 1530              	.L165:
 1531 03d2 00BF     		.align	2
 1532              	.L164:
 1533 03d4 00000000 		.word	.LC9
 1534 03d8 00000000 		.word	reprap
 1535 03dc DB0FC940 		.word	1086918619
 1536 03e0 54000000 		.word	.LC12
 1537 03e4 24000000 		.word	.LC10
 1538 03e8 3C000000 		.word	.LC11
 1539              		.size	_ZN21HangprinterKinematics6RecalcEv, .-_ZN21HangprinterKinematics6RecalcEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 28


 1540              		.section	.text._ZN21HangprinterKinematics4InitEv,"ax",%progbits
 1541              		.align	1
 1542              		.p2align 2,,3
 1543              		.global	_ZN21HangprinterKinematics4InitEv
 1544              		.syntax unified
 1545              		.thumb
 1546              		.thumb_func
 1547              		.fpu fpv4-sp-d16
 1548              		.type	_ZN21HangprinterKinematics4InitEv, %function
 1549              	_ZN21HangprinterKinematics4InitEv:
 1550              		@ args = 0, pretend = 0, frame = 128
 1551              		@ frame_needed = 0, uses_anonymous_args = 0
 1552 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1553 0004 554D     		ldr	r5, .L171
 1554 0006 DFF87C91 		ldr	r9, .L171+40
 1555 000a 0446     		mov	r4, r0
 1556 000c 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1557 000e 2E46     		mov	r6, r5
 1558 0010 A1B0     		sub	sp, sp, #132
 1559 0012 56F804BB 		ldr	fp, [r6], #4
 1560 0016 0DF1080E 		add	lr, sp, #8
 1561 001a AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 1562 001e 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1563 0020 05F11808 		add	r8, r5, #24
 1564 0024 0DF11C0C 		add	ip, sp, #28
 1565 0028 ACE80F00 		stmia	ip!, {r0, r1, r2, r3}
 1566 002c B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 1567 0030 0CAF     		add	r7, sp, #48
 1568 0032 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 1569 0034 D6F800A0 		ldr	r10, [r6]
 1570 0038 D8F80030 		ldr	r3, [r8]
 1571 003c CEF800B0 		str	fp, [lr]
 1572 0040 05F12C08 		add	r8, r5, #44
 1573 0044 CCF800A0 		str	r10, [ip]
 1574 0048 3B60     		str	r3, [r7]
 1575 004a 0193     		str	r3, [sp, #4]
 1576 004c B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 1577 0050 05F1400E 		add	lr, r5, #64
 1578 0054 0DF1440C 		add	ip, sp, #68
 1579 0058 ACE80F00 		stmia	ip!, {r0, r1, r2, r3}
 1580 005c BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 1581 0060 5435     		adds	r5, r5, #84
 1582 0062 16AF     		add	r7, sp, #88
 1583 0064 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 1584 0066 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1585 0068 1BAE     		add	r6, sp, #108
 1586 006a 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 1587 006c B9E80700 		ldmia	r9!, {r0, r1, r2}
 1588 0070 3B4B     		ldr	r3, .L171+4
 1589 0072 D8F80080 		ldr	r8, [r8]
 1590 0076 DEF800E0 		ldr	lr, [lr]
 1591 007a 2D68     		ldr	r5, [r5]
 1592 007c C7F800E0 		str	lr, [r7]
 1593 0080 CCF80080 		str	r8, [ip]
 1594 0084 3560     		str	r5, [r6]
 1595 0086 2061     		str	r0, [r4, #16]	@ unaligned
 1596 0088 6161     		str	r1, [r4, #20]	@ unaligned
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 29


 1597 008a A261     		str	r2, [r4, #24]	@ unaligned
 1598 008c 07CB     		ldmia	r3!, {r0, r1, r2}
 1599 008e 354B     		ldr	r3, .L171+8
 1600 0090 E061     		str	r0, [r4, #28]	@ unaligned
 1601 0092 2162     		str	r1, [r4, #32]	@ unaligned
 1602 0094 6262     		str	r2, [r4, #36]	@ unaligned
 1603 0096 07CB     		ldmia	r3!, {r0, r1, r2}
 1604 0098 02AE     		add	r6, sp, #8
 1605 009a A062     		str	r0, [r4, #40]	@ unaligned
 1606 009c E162     		str	r1, [r4, #44]	@ unaligned
 1607 009e 2263     		str	r2, [r4, #48]	@ unaligned
 1608 00a0 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1609 00a2 314E     		ldr	r6, .L171+12
 1610 00a4 A663     		str	r6, [r4, #56]	@ float
 1611 00a6 314E     		ldr	r6, .L171+16
 1612 00a8 2664     		str	r6, [r4, #64]	@ float
 1613 00aa 07AE     		add	r6, sp, #28
 1614 00ac 6064     		str	r0, [r4, #68]	@ unaligned
 1615 00ae A164     		str	r1, [r4, #72]	@ unaligned
 1616 00b0 E264     		str	r2, [r4, #76]	@ unaligned
 1617 00b2 2365     		str	r3, [r4, #80]	@ unaligned
 1618 00b4 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1619 00b6 2E4F     		ldr	r7, .L171+20
 1620 00b8 6763     		str	r7, [r4, #52]	@ float
 1621 00ba 0CAE     		add	r6, sp, #48
 1622 00bc 2D4F     		ldr	r7, .L171+24
 1623 00be E763     		str	r7, [r4, #60]	@ float
 1624 00c0 C4F854B0 		str	fp, [r4, #84]	@ unaligned
 1625 00c4 A065     		str	r0, [r4, #88]	@ unaligned
 1626 00c6 E165     		str	r1, [r4, #92]	@ unaligned
 1627 00c8 2266     		str	r2, [r4, #96]	@ unaligned
 1628 00ca 6366     		str	r3, [r4, #100]	@ unaligned
 1629 00cc 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1630 00ce 11AE     		add	r6, sp, #68
 1631 00d0 E066     		str	r0, [r4, #108]	@ unaligned
 1632 00d2 2167     		str	r1, [r4, #112]	@ unaligned
 1633 00d4 6267     		str	r2, [r4, #116]	@ unaligned
 1634 00d6 A367     		str	r3, [r4, #120]	@ unaligned
 1635 00d8 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1636 00da 16AE     		add	r6, sp, #88
 1637 00dc C4F88000 		str	r0, [r4, #128]	@ unaligned
 1638 00e0 C4F88410 		str	r1, [r4, #132]	@ unaligned
 1639 00e4 C4F88820 		str	r2, [r4, #136]	@ unaligned
 1640 00e8 C4F88C30 		str	r3, [r4, #140]	@ unaligned
 1641 00ec 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1642 00ee 019F     		ldr	r7, [sp, #4]
 1643 00f0 C4F868A0 		str	r10, [r4, #104]	@ unaligned
 1644 00f4 1BAE     		add	r6, sp, #108
 1645 00f6 E767     		str	r7, [r4, #124]	@ unaligned
 1646 00f8 C4F89080 		str	r8, [r4, #144]	@ unaligned
 1647 00fc C4F89400 		str	r0, [r4, #148]	@ unaligned
 1648 0100 C4F8A4E0 		str	lr, [r4, #164]	@ unaligned
 1649 0104 C4F89810 		str	r1, [r4, #152]	@ unaligned
 1650 0108 C4F89C20 		str	r2, [r4, #156]	@ unaligned
 1651 010c C4F8A030 		str	r3, [r4, #160]	@ unaligned
 1652 0110 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1653 0112 C4F8B430 		str	r3, [r4, #180]	@ unaligned
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 30


 1654 0116 2368     		ldr	r3, [r4]
 1655 0118 C4F8B850 		str	r5, [r4, #184]	@ unaligned
 1656 011c C4F8AC10 		str	r1, [r4, #172]	@ unaligned
 1657 0120 C4F8B020 		str	r2, [r4, #176]	@ unaligned
 1658 0124 C4F8A800 		str	r0, [r4, #168]	@ unaligned
 1659 0128 1349     		ldr	r1, .L171+28
 1660 012a 1B6C     		ldr	r3, [r3, #64]
 1661 012c 134A     		ldr	r2, .L171+32
 1662 012e 4D69     		ldr	r5, [r1, #20]
 1663 0130 9342     		cmp	r3, r2
 1664 0132 4FF00001 		mov	r1, #0
 1665 0136 84F85811 		strb	r1, [r4, #344]
 1666 013a 0AD1     		bne	.L170
 1667 013c 1049     		ldr	r1, .L171+36
 1668              	.L167:
 1669 013e 2846     		mov	r0, r5
 1670 0140 0422     		movs	r2, #4
 1671 0142 FFF7FEFF 		bl	_ZN6GCodes21SetMachineAxisLettersEPKch
 1672 0146 2046     		mov	r0, r4
 1673 0148 21B0     		add	sp, sp, #132
 1674              		@ sp needed
 1675 014a BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1676 014e FFF7FEBF 		b	_ZN21HangprinterKinematics6RecalcEv
 1677              	.L170:
 1678 0152 2046     		mov	r0, r4
 1679 0154 9847     		blx	r3
 1680 0156 0146     		mov	r1, r0
 1681 0158 F1E7     		b	.L167
 1682              	.L172:
 1683 015a 00BF     		.align	2
 1684              	.L171:
 1685 015c 00000000 		.word	.LANCHOR0
 1686 0160 00000000 		.word	.LANCHOR2
 1687 0164 00000000 		.word	.LANCHOR3
 1688 0168 9AB15545 		.word	1163243930
 1689 016c 17B7D138 		.word	953267991
 1690 0170 9AA16745 		.word	1164419482
 1691 0174 0000FA43 		.word	1140457472
 1692 0178 00000000 		.word	reprap
 1693 017c 00000000 		.word	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 1694 0180 00000000 		.word	.LC6
 1695 0184 00000000 		.word	.LANCHOR1
 1696              		.size	_ZN21HangprinterKinematics4InitEv, .-_ZN21HangprinterKinematics4InitEv
 1697              		.section	.text._ZN21HangprinterKinematicsC2Ev,"ax",%progbits
 1698              		.align	1
 1699              		.p2align 2,,3
 1700              		.global	_ZN21HangprinterKinematicsC2Ev
 1701              		.syntax unified
 1702              		.thumb
 1703              		.thumb_func
 1704              		.fpu fpv4-sp-d16
 1705              		.type	_ZN21HangprinterKinematicsC2Ev, %function
 1706              	_ZN21HangprinterKinematicsC2Ev:
 1707              		@ args = 0, pretend = 0, frame = 0
 1708              		@ frame_needed = 0, uses_anonymous_args = 0
 1709 0000 10B5     		push	{r4, lr}
 1710 0002 0022     		movs	r2, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 31


 1711 0004 0446     		mov	r4, r0
 1712 0006 DFED070A 		vldr.32	s1, .L175
 1713 000a 9FED070A 		vldr.32	s0, .L175+4
 1714 000e 0621     		movs	r1, #6
 1715 0010 0123     		movs	r3, #1
 1716 0012 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffbb
 1717 0016 054B     		ldr	r3, .L175+8
 1718 0018 2360     		str	r3, [r4]
 1719 001a 2046     		mov	r0, r4
 1720 001c FFF7FEFF 		bl	_ZN21HangprinterKinematics4InitEv
 1721 0020 2046     		mov	r0, r4
 1722 0022 10BD     		pop	{r4, pc}
 1723              	.L176:
 1724              		.align	2
 1725              	.L175:
 1726 0024 CDCC4C3E 		.word	1045220557
 1727 0028 0000C842 		.word	1120403456
 1728 002c 08000000 		.word	.LANCHOR4+8
 1729              		.size	_ZN21HangprinterKinematicsC2Ev, .-_ZN21HangprinterKinematicsC2Ev
 1730              		.global	_ZN21HangprinterKinematicsC1Ev
 1731              		.thumb_set _ZN21HangprinterKinematicsC1Ev,_ZN21HangprinterKinematicsC2Ev
 1732              		.section	.text._ZN21HangprinterKinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN21Hangprint
 1733              		.align	1
 1734              		.p2align 2,,3
 1735              		.weak	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv
 1736              		.syntax unified
 1737              		.thumb
 1738              		.thumb_func
 1739              		.fpu fpv4-sp-d16
 1740              		.type	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv, %function
 1741              	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv:
 1742              		@ args = 0, pretend = 0, frame = 0
 1743              		@ frame_needed = 0, uses_anonymous_args = 0
 1744              		@ link register save eliminated.
 1745 0000 FFF7FEBF 		b	_ZN21HangprinterKinematics4InitEv
 1746              		.size	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv, .-_ZN21HangprinterKinematics22SetCalib
 1747              		.section	.text._ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 1748              		.align	1
 1749              		.p2align 2,,3
 1750              		.global	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1751              		.syntax unified
 1752              		.thumb
 1753              		.thumb_func
 1754              		.fpu fpv4-sp-d16
 1755              		.type	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 1756              	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 1757              		@ args = 4, pretend = 0, frame = 8
 1758              		@ frame_needed = 0, uses_anonymous_args = 0
 1759 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1760 0004 40F29D2C 		movw	ip, #669
 1761 0008 B8B0     		sub	sp, sp, #224
 1762 000a 0025     		movs	r5, #0
 1763 000c 6145     		cmp	r1, ip
 1764 000e 8DF8DE50 		strb	r5, [sp, #222]
 1765 0012 0646     		mov	r6, r0
 1766 0014 1746     		mov	r7, r2
 1767 0016 9846     		mov	r8, r3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 32


 1768 0018 27D0     		beq	.L195
 1769 001a 40F29A2C 		movw	ip, #666
 1770 001e 6145     		cmp	r1, ip
 1771 0020 06D0     		beq	.L196
 1772 0022 3E9C     		ldr	r4, [sp, #248]
 1773 0024 0094     		str	r4, [sp]
 1774 0026 FFF7FEFF 		bl	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1775              	.L178:
 1776 002a 38B0     		add	sp, sp, #224
 1777              		@ sp needed
 1778 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1779              	.L196:
 1780 0030 0DF1DE04 		add	r4, sp, #222
 1781 0034 00F14002 		add	r2, r0, #64
 1782 0038 2346     		mov	r3, r4
 1783 003a 5121     		movs	r1, #81
 1784 003c 3846     		mov	r0, r7
 1785 003e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1786 0042 CDE90145 		strd	r4, r5, [sp, #4]
 1787 0046 CDF80080 		str	r8, [sp]
 1788 004a 06F14403 		add	r3, r6, #68
 1789 004e 0522     		movs	r2, #5
 1790 0050 5221     		movs	r1, #82
 1791 0052 3846     		mov	r0, r7
 1792 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1793 0058 0028     		cmp	r0, #0
 1794 005a 00F0C080 		beq	.L189
 1795              	.L190:
 1796 005e 3E9B     		ldr	r3, [sp, #248]
 1797 0060 0120     		movs	r0, #1
 1798 0062 1870     		strb	r0, [r3]
 1799 0064 38B0     		add	sp, sp, #224
 1800              		@ sp needed
 1801 0066 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1802              	.L195:
 1803 006a 38AC     		add	r4, sp, #224
 1804 006c 021D     		adds	r2, r0, #4
 1805 006e 04F8015D 		strb	r5, [r4, #-1]!
 1806 0072 5321     		movs	r1, #83
 1807 0074 2346     		mov	r3, r4
 1808 0076 3846     		mov	r0, r7
 1809 0078 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1810 007c 2346     		mov	r3, r4
 1811 007e 06F10802 		add	r2, r6, #8
 1812 0082 5421     		movs	r1, #84
 1813 0084 3846     		mov	r0, r7
 1814 0086 0DF1DE04 		add	r4, sp, #222
 1815 008a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1816 008e 0295     		str	r5, [sp, #8]
 1817 0090 CDE90084 		strd	r8, r4, [sp]
 1818 0094 06F11003 		add	r3, r6, #16
 1819 0098 0322     		movs	r2, #3
 1820 009a 4121     		movs	r1, #65
 1821 009c 3846     		mov	r0, r7
 1822 009e FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1823 00a2 0028     		cmp	r0, #0
 1824 00a4 DBD1     		bne	.L190
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 33


 1825 00a6 CDE90140 		strd	r4, r0, [sp, #4]
 1826 00aa CDF80080 		str	r8, [sp]
 1827 00ae 06F11C03 		add	r3, r6, #28
 1828 00b2 0322     		movs	r2, #3
 1829 00b4 4221     		movs	r1, #66
 1830 00b6 3846     		mov	r0, r7
 1831 00b8 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1832 00bc 0028     		cmp	r0, #0
 1833 00be CED1     		bne	.L190
 1834 00c0 CDE90140 		strd	r4, r0, [sp, #4]
 1835 00c4 CDF80080 		str	r8, [sp]
 1836 00c8 06F12803 		add	r3, r6, #40
 1837 00cc 0322     		movs	r2, #3
 1838 00ce 4321     		movs	r1, #67
 1839 00d0 3846     		mov	r0, r7
 1840 00d2 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1841 00d6 0546     		mov	r5, r0
 1842 00d8 0028     		cmp	r0, #0
 1843 00da C0D1     		bne	.L190
 1844 00dc 2346     		mov	r3, r4
 1845 00de 06F13402 		add	r2, r6, #52
 1846 00e2 4421     		movs	r1, #68
 1847 00e4 3846     		mov	r0, r7
 1848 00e6 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1849 00ea 2346     		mov	r3, r4
 1850 00ec 06F13802 		add	r2, r6, #56
 1851 00f0 5621     		movs	r1, #86
 1852 00f2 3846     		mov	r0, r7
 1853 00f4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1854 00f8 2346     		mov	r3, r4
 1855 00fa 06F14002 		add	r2, r6, #64
 1856 00fe 5121     		movs	r1, #81
 1857 0100 3846     		mov	r0, r7
 1858 0102 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1859 0106 CDE90145 		strd	r4, r5, [sp, #4]
 1860 010a CDF80080 		str	r8, [sp]
 1861 010e 06F14403 		add	r3, r6, #68
 1862 0112 0522     		movs	r2, #5
 1863 0114 5221     		movs	r1, #82
 1864 0116 3846     		mov	r0, r7
 1865 0118 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1866 011c 0028     		cmp	r0, #0
 1867 011e 9ED1     		bne	.L190
 1868 0120 CDE90140 		strd	r4, r0, [sp, #4]
 1869 0124 CDF80080 		str	r8, [sp]
 1870 0128 06F15803 		add	r3, r6, #88
 1871 012c 0522     		movs	r2, #5
 1872 012e 5521     		movs	r1, #85
 1873 0130 3846     		mov	r0, r7
 1874 0132 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1875 0136 0028     		cmp	r0, #0
 1876 0138 91D1     		bne	.L190
 1877 013a CDE90140 		strd	r4, r0, [sp, #4]
 1878 013e CDF80080 		str	r8, [sp]
 1879 0142 06F16C03 		add	r3, r6, #108
 1880 0146 0522     		movs	r2, #5
 1881 0148 4F21     		movs	r1, #79
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 34


 1882 014a 3846     		mov	r0, r7
 1883 014c FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1884 0150 0028     		cmp	r0, #0
 1885 0152 84D1     		bne	.L190
 1886 0154 CDE90140 		strd	r4, r0, [sp, #4]
 1887 0158 CDF80080 		str	r8, [sp]
 1888 015c 06F18003 		add	r3, r6, #128
 1889 0160 0522     		movs	r2, #5
 1890 0162 4C21     		movs	r1, #76
 1891 0164 3846     		mov	r0, r7
 1892 0166 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1893 016a 0028     		cmp	r0, #0
 1894 016c 7FF477AF 		bne	.L190
 1895 0170 CDE90140 		strd	r4, r0, [sp, #4]
 1896 0174 CDF80080 		str	r8, [sp]
 1897 0178 06F19403 		add	r3, r6, #148
 1898 017c 0522     		movs	r2, #5
 1899 017e 4821     		movs	r1, #72
 1900 0180 3846     		mov	r0, r7
 1901 0182 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1902 0186 0028     		cmp	r0, #0
 1903 0188 7FF469AF 		bne	.L190
 1904 018c CDE90140 		strd	r4, r0, [sp, #4]
 1905 0190 CDF80080 		str	r8, [sp]
 1906 0194 06F1A803 		add	r3, r6, #168
 1907 0198 0522     		movs	r2, #5
 1908 019a 4A21     		movs	r1, #74
 1909 019c 3846     		mov	r0, r7
 1910 019e FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1911 01a2 0028     		cmp	r0, #0
 1912 01a4 7FF45BAF 		bne	.L190
 1913 01a8 9DF8DE30 		ldrb	r3, [sp, #222]	@ zero_extendqisi2
 1914 01ac 13B9     		cbnz	r3, .L183
 1915 01ae 9DF8DF30 		ldrb	r3, [sp, #223]	@ zero_extendqisi2
 1916 01b2 13B1     		cbz	r3, .L184
 1917              	.L183:
 1918 01b4 3046     		mov	r0, r6
 1919 01b6 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 1920              	.L184:
 1921 01ba 5021     		movs	r1, #80
 1922 01bc 3846     		mov	r0, r7
 1923 01be FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1924 01c2 0028     		cmp	r0, #0
 1925 01c4 00F0A380 		beq	.L185
 1926 01c8 3846     		mov	r0, r7
 1927 01ca FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1928 01ce 0123     		movs	r3, #1
 1929 01d0 86ED0F0A 		vstr.32	s0, [r6, #60]
 1930 01d4 8DF8DE30 		strb	r3, [sp, #222]
 1931              	.L186:
 1932 01d8 9DF8DE00 		ldrb	r0, [sp, #222]	@ zero_extendqisi2
 1933 01dc 25E7     		b	.L178
 1934              	.L189:
 1935 01de CDE90140 		strd	r4, r0, [sp, #4]
 1936 01e2 CDF80080 		str	r8, [sp]
 1937 01e6 06F15803 		add	r3, r6, #88
 1938 01ea 0522     		movs	r2, #5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 35


 1939 01ec 5521     		movs	r1, #85
 1940 01ee 3846     		mov	r0, r7
 1941 01f0 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1942 01f4 0028     		cmp	r0, #0
 1943 01f6 7FF432AF 		bne	.L190
 1944 01fa CDE90140 		strd	r4, r0, [sp, #4]
 1945 01fe CDF80080 		str	r8, [sp]
 1946 0202 06F16C03 		add	r3, r6, #108
 1947 0206 0522     		movs	r2, #5
 1948 0208 4F21     		movs	r1, #79
 1949 020a 3846     		mov	r0, r7
 1950 020c FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1951 0210 0028     		cmp	r0, #0
 1952 0212 7FF424AF 		bne	.L190
 1953 0216 CDE90140 		strd	r4, r0, [sp, #4]
 1954 021a CDF80080 		str	r8, [sp]
 1955 021e 06F18003 		add	r3, r6, #128
 1956 0222 0522     		movs	r2, #5
 1957 0224 4C21     		movs	r1, #76
 1958 0226 3846     		mov	r0, r7
 1959 0228 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1960 022c 0028     		cmp	r0, #0
 1961 022e 7FF416AF 		bne	.L190
 1962 0232 CDE90140 		strd	r4, r0, [sp, #4]
 1963 0236 CDF80080 		str	r8, [sp]
 1964 023a 06F19403 		add	r3, r6, #148
 1965 023e 0522     		movs	r2, #5
 1966 0240 4821     		movs	r1, #72
 1967 0242 3846     		mov	r0, r7
 1968 0244 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1969 0248 0028     		cmp	r0, #0
 1970 024a 7FF408AF 		bne	.L190
 1971 024e CDE90140 		strd	r4, r0, [sp, #4]
 1972 0252 CDF80080 		str	r8, [sp]
 1973 0256 3846     		mov	r0, r7
 1974 0258 06F1A803 		add	r3, r6, #168
 1975 025c 0522     		movs	r2, #5
 1976 025e 4A21     		movs	r1, #74
 1977 0260 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1978 0264 0028     		cmp	r0, #0
 1979 0266 7FF4FAAE 		bne	.L190
 1980 026a 306C     		ldr	r0, [r6, #64]	@ float
 1981 026c FFF7FEFF 		bl	__aeabi_f2d
 1982 0270 0D46     		mov	r5, r1
 1983 0272 D6E92C21 		ldrd	r2, r1, [r6, #176]
 1984 0276 D6F8AC30 		ldr	r3, [r6, #172]
 1985 027a 1B91     		str	r1, [sp, #108]
 1986 027c D6F8A810 		ldr	r1, [r6, #168]
 1987 0280 1A92     		str	r2, [sp, #104]
 1988 0282 D6F8A020 		ldr	r2, [r6, #160]
 1989 0286 1993     		str	r3, [sp, #100]
 1990 0288 D6F89C30 		ldr	r3, [r6, #156]
 1991 028c 1891     		str	r1, [sp, #96]
 1992 028e D6F89810 		ldr	r1, [r6, #152]
 1993 0292 1792     		str	r2, [sp, #92]
 1994 0294 D6F89420 		ldr	r2, [r6, #148]
 1995 0298 1693     		str	r3, [sp, #88]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 36


 1996 029a D6F88C30 		ldr	r3, [r6, #140]
 1997 029e 1591     		str	r1, [sp, #84]
 1998 02a0 D6F88810 		ldr	r1, [r6, #136]
 1999 02a4 1492     		str	r2, [sp, #80]
 2000 02a6 D6F88420 		ldr	r2, [r6, #132]
 2001 02aa 1393     		str	r3, [sp, #76]
 2002 02ac D6F88030 		ldr	r3, [r6, #128]
 2003 02b0 1291     		str	r1, [sp, #72]
 2004 02b2 B16F     		ldr	r1, [r6, #120]
 2005 02b4 1192     		str	r2, [sp, #68]
 2006 02b6 726F     		ldr	r2, [r6, #116]
 2007 02b8 1093     		str	r3, [sp, #64]
 2008 02ba 336F     		ldr	r3, [r6, #112]
 2009 02bc 0D93     		str	r3, [sp, #52]
 2010 02be CDE90E21 		strd	r2, r1, [sp, #56]
 2011 02c2 F26E     		ldr	r2, [r6, #108]
 2012 02c4 D6E91813 		ldrd	r1, r3, [r6, #96]
 2013 02c8 0C92     		str	r2, [sp, #48]
 2014 02ca F26D     		ldr	r2, [r6, #92]
 2015 02cc 0B93     		str	r3, [sp, #44]
 2016 02ce B36D     		ldr	r3, [r6, #88]
 2017 02d0 0A91     		str	r1, [sp, #40]
 2018 02d2 0446     		mov	r4, r0
 2019 02d4 306D     		ldr	r0, [r6, #80]	@ float
 2020 02d6 CDE90832 		strd	r3, r2, [sp, #32]
 2021 02da FFF7FEFF 		bl	__aeabi_f2d
 2022 02de CDE90601 		strd	r0, [sp, #24]
 2023 02e2 F06C     		ldr	r0, [r6, #76]	@ float
 2024 02e4 FFF7FEFF 		bl	__aeabi_f2d
 2025 02e8 CDE90401 		strd	r0, [sp, #16]
 2026 02ec B06C     		ldr	r0, [r6, #72]	@ float
 2027 02ee FFF7FEFF 		bl	__aeabi_f2d
 2028 02f2 CDE90201 		strd	r0, [sp, #8]
 2029 02f6 706C     		ldr	r0, [r6, #68]	@ float
 2030 02f8 FFF7FEFF 		bl	__aeabi_f2d
 2031 02fc 2246     		mov	r2, r4
 2032 02fe CDE90001 		strd	r0, [sp]
 2033 0302 2B46     		mov	r3, r5
 2034 0304 4046     		mov	r0, r8
 2035 0306 4F49     		ldr	r1, .L197
 2036 0308 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2037 030c 8DE6     		b	.L178
 2038              	.L185:
 2039 030e 3846     		mov	r0, r7
 2040 0310 4B21     		movs	r1, #75
 2041 0312 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2042 0316 0028     		cmp	r0, #0
 2043 0318 7FF45EAF 		bne	.L186
 2044 031c 3069     		ldr	r0, [r6, #16]	@ float
 2045 031e FFF7FEFF 		bl	__aeabi_f2d
 2046 0322 0D46     		mov	r5, r1
 2047 0324 D6E92C21 		ldrd	r2, r1, [r6, #176]
 2048 0328 D6F8AC30 		ldr	r3, [r6, #172]
 2049 032c 3591     		str	r1, [sp, #212]
 2050 032e D6F8A810 		ldr	r1, [r6, #168]
 2051 0332 3492     		str	r2, [sp, #208]
 2052 0334 D6F8A020 		ldr	r2, [r6, #160]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 37


 2053 0338 3393     		str	r3, [sp, #204]
 2054 033a D6F89C30 		ldr	r3, [r6, #156]
 2055 033e 3291     		str	r1, [sp, #200]
 2056 0340 D6F89810 		ldr	r1, [r6, #152]
 2057 0344 3192     		str	r2, [sp, #196]
 2058 0346 D6F89420 		ldr	r2, [r6, #148]
 2059 034a 3093     		str	r3, [sp, #192]
 2060 034c D6F88C30 		ldr	r3, [r6, #140]
 2061 0350 2F91     		str	r1, [sp, #188]
 2062 0352 D6F88810 		ldr	r1, [r6, #136]
 2063 0356 2E92     		str	r2, [sp, #184]
 2064 0358 D6F88420 		ldr	r2, [r6, #132]
 2065 035c 2D93     		str	r3, [sp, #180]
 2066 035e D6F88030 		ldr	r3, [r6, #128]
 2067 0362 2C91     		str	r1, [sp, #176]
 2068 0364 B16F     		ldr	r1, [r6, #120]
 2069 0366 2B92     		str	r2, [sp, #172]
 2070 0368 726F     		ldr	r2, [r6, #116]
 2071 036a 2A93     		str	r3, [sp, #168]
 2072 036c 336F     		ldr	r3, [r6, #112]
 2073 036e 2793     		str	r3, [sp, #156]
 2074 0370 CDE92821 		strd	r2, r1, [sp, #160]
 2075 0374 F26E     		ldr	r2, [r6, #108]
 2076 0376 D6E91813 		ldrd	r1, r3, [r6, #96]
 2077 037a 2692     		str	r2, [sp, #152]
 2078 037c F26D     		ldr	r2, [r6, #92]
 2079 037e 2593     		str	r3, [sp, #148]
 2080 0380 B36D     		ldr	r3, [r6, #88]
 2081 0382 2491     		str	r1, [sp, #144]
 2082 0384 0446     		mov	r4, r0
 2083 0386 306D     		ldr	r0, [r6, #80]	@ float
 2084 0388 CDE92232 		strd	r3, r2, [sp, #136]
 2085 038c FFF7FEFF 		bl	__aeabi_f2d
 2086 0390 CDE92001 		strd	r0, [sp, #128]
 2087 0394 F06C     		ldr	r0, [r6, #76]	@ float
 2088 0396 FFF7FEFF 		bl	__aeabi_f2d
 2089 039a CDE91E01 		strd	r0, [sp, #120]
 2090 039e B06C     		ldr	r0, [r6, #72]	@ float
 2091 03a0 FFF7FEFF 		bl	__aeabi_f2d
 2092 03a4 CDE91C01 		strd	r0, [sp, #112]
 2093 03a8 706C     		ldr	r0, [r6, #68]	@ float
 2094 03aa FFF7FEFF 		bl	__aeabi_f2d
 2095 03ae CDE91A01 		strd	r0, [sp, #104]
 2096 03b2 306C     		ldr	r0, [r6, #64]	@ float
 2097 03b4 FFF7FEFF 		bl	__aeabi_f2d
 2098 03b8 CDE91801 		strd	r0, [sp, #96]
 2099 03bc B068     		ldr	r0, [r6, #8]	@ float
 2100 03be FFF7FEFF 		bl	__aeabi_f2d
 2101 03c2 D6ED017A 		vldr.32	s15, [r6, #4]
 2102 03c6 CDE91601 		strd	r0, [sp, #88]
 2103 03ca FDEEE77A 		vcvt.s32.f32	s15, s15
 2104 03ce F06B     		ldr	r0, [r6, #60]	@ float
 2105 03d0 CDED147A 		vstr.32	s15, [sp, #80]	@ int
 2106 03d4 FFF7FEFF 		bl	__aeabi_f2d
 2107 03d8 CDE91201 		strd	r0, [sp, #72]
 2108 03dc 706B     		ldr	r0, [r6, #52]	@ float
 2109 03de FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 38


 2110 03e2 CDE91001 		strd	r0, [sp, #64]
 2111 03e6 306B     		ldr	r0, [r6, #48]	@ float
 2112 03e8 FFF7FEFF 		bl	__aeabi_f2d
 2113 03ec CDE90E01 		strd	r0, [sp, #56]
 2114 03f0 F06A     		ldr	r0, [r6, #44]	@ float
 2115 03f2 FFF7FEFF 		bl	__aeabi_f2d
 2116 03f6 CDE90C01 		strd	r0, [sp, #48]
 2117 03fa B06A     		ldr	r0, [r6, #40]	@ float
 2118 03fc FFF7FEFF 		bl	__aeabi_f2d
 2119 0400 CDE90A01 		strd	r0, [sp, #40]
 2120 0404 706A     		ldr	r0, [r6, #36]	@ float
 2121 0406 FFF7FEFF 		bl	__aeabi_f2d
 2122 040a CDE90801 		strd	r0, [sp, #32]
 2123 040e 306A     		ldr	r0, [r6, #32]	@ float
 2124 0410 FFF7FEFF 		bl	__aeabi_f2d
 2125 0414 CDE90601 		strd	r0, [sp, #24]
 2126 0418 F069     		ldr	r0, [r6, #28]	@ float
 2127 041a FFF7FEFF 		bl	__aeabi_f2d
 2128 041e CDE90401 		strd	r0, [sp, #16]
 2129 0422 B069     		ldr	r0, [r6, #24]	@ float
 2130 0424 FFF7FEFF 		bl	__aeabi_f2d
 2131 0428 CDE90201 		strd	r0, [sp, #8]
 2132 042c 7069     		ldr	r0, [r6, #20]	@ float
 2133 042e FFF7FEFF 		bl	__aeabi_f2d
 2134 0432 2246     		mov	r2, r4
 2135 0434 CDE90001 		strd	r0, [sp]
 2136 0438 2B46     		mov	r3, r5
 2137 043a 4046     		mov	r0, r8
 2138 043c 0249     		ldr	r1, .L197+4
 2139 043e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2140 0442 C9E6     		b	.L186
 2141              	.L198:
 2142              		.align	2
 2143              	.L197:
 2144 0444 8C010000 		.word	.LC14
 2145 0448 00000000 		.word	.LC13
 2146              		.size	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN21HangprinterKinema
 2147              		.section	.text._ZNK21HangprinterKinematics17MotorPosToLinePosElj,"ax",%progbits
 2148              		.align	1
 2149              		.p2align 2,,3
 2150              		.global	_ZNK21HangprinterKinematics17MotorPosToLinePosElj
 2151              		.syntax unified
 2152              		.thumb
 2153              		.thumb_func
 2154              		.fpu fpv4-sp-d16
 2155              		.type	_ZNK21HangprinterKinematics17MotorPosToLinePosElj, %function
 2156              	_ZNK21HangprinterKinematics17MotorPosToLinePosElj:
 2157              		@ args = 0, pretend = 0, frame = 0
 2158              		@ frame_needed = 0, uses_anonymous_args = 0
 2159              		@ link register save eliminated.
 2160 0000 07EE901A 		vmov	s15, r1	@ int
 2161 0004 00EB8202 		add	r2, r0, r2, lsl #2
 2162 0008 92ED2F6A 		vldr.32	s12, [r2, #188]
 2163 000c D2ED116A 		vldr.32	s13, [r2, #68]
 2164 0010 92ED340A 		vldr.32	s0, [r2, #208]
 2165 0014 92ED397A 		vldr.32	s14, [r2, #228]
 2166 0018 F8EEE75A 		vcvt.f32.s32	s11, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 39


 2167 001c C5EE867A 		vdiv.f32	s15, s11, s12
 2168 0020 77EEA67A 		vadd.f32	s15, s15, s13
 2169 0024 97EEA70A 		vfnms.f32	s0, s15, s15
 2170 0028 80EE070A 		vdiv.f32	s0, s0, s14
 2171 002c 7047     		bx	lr
 2172              		.size	_ZNK21HangprinterKinematics17MotorPosToLinePosElj, .-_ZNK21HangprinterKinematics17MotorPosTo
 2173 002e 00BF     		.section	.text._ZNK21HangprinterKinematics16InverseTransformEfffPf,"ax",%progbits
 2174              		.align	1
 2175              		.p2align 2,,3
 2176              		.global	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2177              		.syntax unified
 2178              		.thumb
 2179              		.thumb_func
 2180              		.fpu fpv4-sp-d16
 2181              		.type	_ZNK21HangprinterKinematics16InverseTransformEfffPf, %function
 2182              	_ZNK21HangprinterKinematics16InverseTransformEfffPf:
 2183              		@ args = 0, pretend = 0, frame = 0
 2184              		@ frame_needed = 0, uses_anonymous_args = 0
 2185 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2186 0004 2DED088B 		vpush.64	{d8, d9, d10, d11}
 2187 0008 90ED458A 		vldr.32	s16, [r0, #276]
 2188 000c D0ED466A 		vldr.32	s13, [r0, #280]
 2189 0010 D0ED4C8A 		vldr.32	s17, [r0, #304]
 2190 0014 90ED4A6A 		vldr.32	s12, [r0, #296]
 2191 0018 90ED447A 		vldr.32	s14, [r0, #272]
 2192 001c D0ED492A 		vldr.32	s5, [r0, #292]
 2193 0020 90ED473A 		vldr.32	s6, [r0, #284]
 2194 0024 D0ED4B3A 		vldr.32	s7, [r0, #300]
 2195 0028 90ED484A 		vldr.32	s8, [r0, #288]
 2196 002c D0ED047A 		vldr.32	s15, [r0, #16]
 2197 0030 D0ED054A 		vldr.32	s9, [r0, #20]
 2198 0034 90ED505A 		vldr.32	s10, [r0, #320]
 2199 0038 D0ED529A 		vldr.32	s19, [r0, #328]
 2200 003c D0ED515A 		vldr.32	s11, [r0, #324]
 2201 0040 DFF8A881 		ldr	r8, .L205+12
 2202 0044 90EEA08A 		vfnms.f32	s16, s1, s1
 2203 0048 8AB0     		sub	sp, sp, #40
 2204 004a 0446     		mov	r4, r0
 2205 004c D1EE016A 		vfnms.f32	s13, s2, s2
 2206 0050 0D46     		mov	r5, r1
 2207 0052 68EEC88A 		vnmul.f32	s17, s17, s16
 2208 0056 28EE228A 		vmul.f32	s16, s16, s5
 2209 005a E6EE668A 		vfms.f32	s17, s12, s13
 2210 005e B0EE476A 		vmov.f32	s12, s14
 2211 0062 90EE006A 		vfnms.f32	s12, s0, s0
 2212 0066 A3EE668A 		vfms.f32	s16, s6, s13
 2213 006a E3EEC68A 		vfms.f32	s17, s7, s12
 2214 006e A6EE048A 		vfma.f32	s16, s12, s8
 2215 0072 67EEE87A 		vnmul.f32	s15, s15, s17
 2216 0076 28EE089A 		vmul.f32	s18, s16, s16
 2217 007a E4EE887A 		vfma.f32	s15, s9, s16
 2218 007e A8EEA89A 		vfma.f32	s18, s17, s17
 2219 0082 67EE857A 		vmul.f32	s15, s15, s10
 2220 0086 F0EE006A 		vmov.f32	s13, #2.0e+0
 2221 008a 69EEC89A 		vnmul.f32	s19, s19, s16
 2222 008e A0EE407A 		vfms.f32	s14, s0, s0
 2223 0092 A7EEA69A 		vfma.f32	s18, s15, s13
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 40


 2224 0096 E5EEA89A 		vfma.f32	s19, s11, s17
 2225 009a D0ED536A 		vldr.32	s13, [r0, #332]
 2226 009e D0ED547A 		vldr.32	s15, [r0, #336]
 2227 00a2 A7EE269A 		vfma.f32	s18, s14, s13
 2228 00a6 18EE900A 		vmov	r0, s17
 2229 00aa 79EEE79A 		vsub.f32	s19, s19, s15
 2230 00ae F0EE60AA 		vmov.f32	s21, s1
 2231 00b2 B0EE41BA 		vmov.f32	s22, s2
 2232 00b6 B0EE40AA 		vmov.f32	s20, s0
 2233 00ba FFF7FEFF 		bl	__aeabi_f2d
 2234 00be 0646     		mov	r6, r0
 2235 00c0 19EE100A 		vmov	r0, s18
 2236 00c4 0F46     		mov	r7, r1
 2237 00c6 FFF7FEFF 		bl	__aeabi_f2d
 2238 00ca CDE90401 		strd	r0, [sp, #16]
 2239 00ce 19EE900A 		vmov	r0, s19
 2240 00d2 FFF7FEFF 		bl	__aeabi_f2d
 2241 00d6 CDE90201 		strd	r0, [sp, #8]
 2242 00da 18EE100A 		vmov	r0, s16
 2243 00de FFF7FEFF 		bl	__aeabi_f2d
 2244 00e2 3246     		mov	r2, r6
 2245 00e4 3B46     		mov	r3, r7
 2246 00e6 CDE90001 		strd	r0, [sp]
 2247 00ea 3D48     		ldr	r0, .L205
 2248 00ec FFF7FEFF 		bl	debugPrintf
 2249 00f0 2E46     		mov	r6, r5
 2250 00f2 05F10C07 		add	r7, r5, #12
 2251              	.L201:
 2252 00f6 56F8040B 		ldr	r0, [r6], #4	@ float
 2253 00fa FFF7FEFF 		bl	__aeabi_f2d
 2254 00fe 0246     		mov	r2, r0
 2255 0100 0B46     		mov	r3, r1
 2256 0102 4046     		mov	r0, r8
 2257 0104 FFF7FEFF 		bl	debugPrintf
 2258 0108 B742     		cmp	r7, r6
 2259 010a F4D1     		bne	.L201
 2260 010c D4ED556A 		vldr.32	s13, [r4, #340]
 2261 0110 29EE669A 		vnmul.f32	s18, s18, s13
 2262 0114 B1EE697A 		vneg.f32	s14, s19
 2263 0118 A9EEA99A 		vfma.f32	s18, s19, s19
 2264 011c B0EEC99A 		vabs.f32	s18, s18
 2265 0120 F1EEC97A 		vsqrt.f32	s15, s18
 2266 0124 37EE677A 		vsub.f32	s14, s14, s15
 2267 0128 C7EE267A 		vdiv.f32	s15, s14, s13
 2268 012c C5ED027A 		vstr.32	s15, [r5, #8]
 2269 0130 94ED517A 		vldr.32	s14, [r4, #324]
 2270 0134 D4ED506A 		vldr.32	s13, [r4, #320]
 2271 0138 E7EE878A 		vfma.f32	s17, s15, s14
 2272 013c 88EEA67A 		vdiv.f32	s14, s17, s13
 2273 0140 85ED007A 		vstr.32	s14, [r5]
 2274 0144 94ED526A 		vldr.32	s12, [r4, #328]
 2275 0148 D4ED506A 		vldr.32	s13, [r4, #320]
 2276 014c A7EE868A 		vfma.f32	s16, s15, s12
 2277 0150 17EE100A 		vmov	r0, s14
 2278 0154 C8EE267A 		vdiv.f32	s15, s16, s13
 2279 0158 C5ED017A 		vstr.32	s15, [r5, #4]
 2280 015c FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 41


 2281 0160 0246     		mov	r2, r0
 2282 0162 0B46     		mov	r3, r1
 2283 0164 1F48     		ldr	r0, .L205+4
 2284 0166 FFF7FEFF 		bl	debugPrintf
 2285 016a 6868     		ldr	r0, [r5, #4]	@ float
 2286 016c FFF7FEFF 		bl	__aeabi_f2d
 2287 0170 0246     		mov	r2, r0
 2288 0172 0B46     		mov	r3, r1
 2289 0174 1B48     		ldr	r0, .L205+4
 2290 0176 FFF7FEFF 		bl	debugPrintf
 2291 017a A868     		ldr	r0, [r5, #8]	@ float
 2292 017c FFF7FEFF 		bl	__aeabi_f2d
 2293 0180 0246     		mov	r2, r0
 2294 0182 0B46     		mov	r3, r1
 2295 0184 1748     		ldr	r0, .L205+4
 2296 0186 FFF7FEFF 		bl	debugPrintf
 2297 018a 1AEE100A 		vmov	r0, s20
 2298 018e FFF7FEFF 		bl	__aeabi_f2d
 2299 0192 0646     		mov	r6, r0
 2300 0194 A868     		ldr	r0, [r5, #8]	@ float
 2301 0196 0F46     		mov	r7, r1
 2302 0198 FFF7FEFF 		bl	__aeabi_f2d
 2303 019c CDE90801 		strd	r0, [sp, #32]
 2304 01a0 6868     		ldr	r0, [r5, #4]	@ float
 2305 01a2 FFF7FEFF 		bl	__aeabi_f2d
 2306 01a6 CDE90601 		strd	r0, [sp, #24]
 2307 01aa 2868     		ldr	r0, [r5]	@ float
 2308 01ac FFF7FEFF 		bl	__aeabi_f2d
 2309 01b0 CDE90401 		strd	r0, [sp, #16]
 2310 01b4 1BEE100A 		vmov	r0, s22
 2311 01b8 FFF7FEFF 		bl	__aeabi_f2d
 2312 01bc CDE90201 		strd	r0, [sp, #8]
 2313 01c0 1AEE900A 		vmov	r0, s21
 2314 01c4 FFF7FEFF 		bl	__aeabi_f2d
 2315 01c8 3246     		mov	r2, r6
 2316 01ca CDE90001 		strd	r0, [sp]
 2317 01ce 3B46     		mov	r3, r7
 2318 01d0 0548     		ldr	r0, .L205+8
 2319 01d2 FFF7FEFF 		bl	debugPrintf
 2320 01d6 0AB0     		add	sp, sp, #40
 2321              		@ sp needed
 2322 01d8 BDEC088B 		vldm	sp!, {d8-d11}
 2323 01dc BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2324              	.L206:
 2325              		.align	2
 2326              	.L205:
 2327 01e0 00000000 		.word	.LC15
 2328 01e4 64000000 		.word	.LC17
 2329 01e8 80000000 		.word	.LC18
 2330 01ec 44000000 		.word	.LC16
 2331              		.size	_ZNK21HangprinterKinematics16InverseTransformEfffPf, .-_ZNK21HangprinterKinematics16InverseT
 2332              		.section	.text._ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 2333              		.align	1
 2334              		.p2align 2,,3
 2335              		.global	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf
 2336              		.syntax unified
 2337              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 42


 2338              		.thumb_func
 2339              		.fpu fpv4-sp-d16
 2340              		.type	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 2341              	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 2342              		@ args = 8, pretend = 0, frame = 0
 2343              		@ frame_needed = 0, uses_anonymous_args = 0
 2344              		@ link register save eliminated.
 2345 0000 D1ED003A 		vldr.32	s7, [r1]	@ int
 2346 0004 91ED014A 		vldr.32	s8, [r1, #4]	@ int
 2347 0008 D1ED024A 		vldr.32	s9, [r1, #8]	@ int
 2348 000c 90ED2F7A 		vldr.32	s14, [r0, #188]
 2349 0010 D0ED307A 		vldr.32	s15, [r0, #192]
 2350 0014 90ED130A 		vldr.32	s0, [r0, #76]
 2351 0018 90ED345A 		vldr.32	s10, [r0, #208]
 2352 001c D0ED355A 		vldr.32	s11, [r0, #212]
 2353 0020 90ED366A 		vldr.32	s12, [r0, #216]
 2354 0024 D0ED390A 		vldr.32	s1, [r0, #228]
 2355 0028 90ED3A1A 		vldr.32	s2, [r0, #232]
 2356 002c D0ED3B1A 		vldr.32	s3, [r0, #236]
 2357 0030 90ED3E2A 		vldr.32	s4, [r0, #248]
 2358 0034 D0ED3F2A 		vldr.32	s5, [r0, #252]
 2359 0038 90ED403A 		vldr.32	s6, [r0, #256]
 2360 003c 2DED048B 		vpush.64	{d8, d9}
 2361 0040 F8EEE33A 		vcvt.f32.s32	s7, s7
 2362 0044 90ED319A 		vldr.32	s18, [r0, #196]
 2363 0048 D0ED118A 		vldr.32	s17, [r0, #68]
 2364 004c 90ED128A 		vldr.32	s16, [r0, #72]
 2365 0050 0599     		ldr	r1, [sp, #20]
 2366 0052 B8EEC44A 		vcvt.f32.s32	s8, s8
 2367 0056 F8EEE44A 		vcvt.f32.s32	s9, s9
 2368 005a C3EE876A 		vdiv.f32	s13, s7, s14
 2369 005e 84EE277A 		vdiv.f32	s14, s8, s15
 2370 0062 C4EE897A 		vdiv.f32	s15, s9, s18
 2371 0066 76EEA86A 		vadd.f32	s13, s13, s17
 2372 006a 37EE087A 		vadd.f32	s14, s14, s16
 2373 006e 77EE807A 		vadd.f32	s15, s15, s0
 2374 0072 96EEA65A 		vfnms.f32	s10, s13, s13
 2375 0076 BDEC048B 		vldm	sp!, {d8-d9}
 2376 007a D7EE075A 		vfnms.f32	s11, s14, s14
 2377 007e 97EEA76A 		vfnms.f32	s12, s15, s15
 2378 0082 85EE200A 		vdiv.f32	s0, s10, s1
 2379 0086 C5EE810A 		vdiv.f32	s1, s11, s2
 2380 008a 86EE211A 		vdiv.f32	s2, s12, s3
 2381 008e 30EE020A 		vadd.f32	s0, s0, s4
 2382 0092 70EEA20A 		vadd.f32	s1, s1, s5
 2383 0096 31EE031A 		vadd.f32	s2, s2, s6
 2384 009a FFF7FEBF 		b	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2385              		.size	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK21HangprinterKinematics
 2386              		.global	__aeabi_dsub
 2387              		.global	__aeabi_ddiv
 2388 009e 00BF     		.section	.text._ZNK21HangprinterKinematics17ComputeDerivativeEjfff,"ax",%progbits
 2389              		.align	1
 2390              		.p2align 2,,3
 2391              		.global	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 2392              		.syntax unified
 2393              		.thumb
 2394              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 43


 2395              		.fpu fpv4-sp-d16
 2396              		.type	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff, %function
 2397              	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff:
 2398              		@ args = 0, pretend = 0, frame = 776
 2399              		@ frame_needed = 0, uses_anonymous_args = 0
 2400 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2401 0004 2DED0A8B 		vpush.64	{d8, d9, d10, d11, d12}
 2402 0008 ADF5437D 		sub	sp, sp, #780
 2403 000c 00F1100B 		add	fp, r0, #16
 2404 0010 0446     		mov	r4, r0
 2405 0012 0191     		str	r1, [sp, #4]
 2406 0014 9BE80700 		ldm	fp, {r0, r1, r2}
 2407 0018 04F11C05 		add	r5, r4, #28
 2408 001c 18AB     		add	r3, sp, #96
 2409 001e 83E80700 		stm	r3, {r0, r1, r2}
 2410 0022 95E80700 		ldm	r5, {r0, r1, r2}
 2411 0026 04F12806 		add	r6, r4, #40
 2412 002a 1BAB     		add	r3, sp, #108
 2413 002c 83E80700 		stm	r3, {r0, r1, r2}
 2414 0030 96E80700 		ldm	r6, {r0, r1, r2}
 2415 0034 94ED017A 		vldr.32	s14, [r4, #4]
 2416 0038 D4ED027A 		vldr.32	s15, [r4, #8]
 2417 003c 94F80FC0 		ldrb	ip, [r4, #15]	@ zero_extendqisi2
 2418 0040 277B     		ldrb	r7, [r4, #12]	@ zero_extendqisi2
 2419 0042 D4ED0DCA 		vldr.32	s25, [r4, #52]
 2420 0046 0995     		str	r5, [sp, #36]
 2421 0048 1EAB     		add	r3, sp, #120
 2422 004a 657B     		ldrb	r5, [r4, #13]	@ zero_extendqisi2
 2423 004c 0A96     		str	r6, [sp, #40]
 2424 004e 83E80700 		stm	r3, {r0, r1, r2}
 2425 0052 A67B     		ldrb	r6, [r4, #14]	@ zero_extendqisi2
 2426 0054 CDF808C0 		str	ip, [sp, #8]
 2427 0058 8DED157A 		vstr.32	s14, [sp, #84]
 2428 005c 04F1440C 		add	ip, r4, #68
 2429 0060 CDED167A 		vstr.32	s15, [sp, #88]
 2430 0064 C249     		ldr	r1, .L236
 2431 0066 029A     		ldr	r2, [sp, #8]
 2432 0068 8DF85F20 		strb	r2, [sp, #95]
 2433 006c 1491     		str	r1, [sp, #80]
 2434 006e BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 2435 0072 0896     		str	r6, [sp, #32]
 2436 0074 8DF85E60 		strb	r6, [sp, #94]
 2437 0078 04F1580E 		add	lr, r4, #88
 2438 007c 25AE     		add	r6, sp, #148
 2439 007e 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2440 0080 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2441 0084 0795     		str	r5, [sp, #28]
 2442 0086 8DF85D50 		strb	r5, [sp, #93]
 2443 008a 04F16C0A 		add	r10, r4, #108
 2444 008e 2AAD     		add	r5, sp, #168
 2445 0090 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2446 0092 BAE80F00 		ldmia	r10!, {r0, r1, r2, r3}
 2447 0096 94ED0E9A 		vldr.32	s18, [r4, #56]
 2448 009a D4ED0F8A 		vldr.32	s17, [r4, #60]
 2449 009e 0697     		str	r7, [sp, #24]
 2450 00a0 8DF85C70 		strb	r7, [sp, #92]
 2451 00a4 04F18009 		add	r9, r4, #128
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 44


 2452 00a8 CDED21CA 		vstr.32	s25, [sp, #132]
 2453 00ac 94ED108A 		vldr.32	s16, [r4, #64]
 2454 00b0 DCF80070 		ldr	r7, [ip]
 2455 00b4 0397     		str	r7, [sp, #12]
 2456 00b6 0DF1BC0C 		add	ip, sp, #188
 2457 00ba ACE80F00 		stmia	ip!, {r0, r1, r2, r3}
 2458 00be B9E80F00 		ldmia	r9!, {r0, r1, r2, r3}
 2459 00c2 DEF80070 		ldr	r7, [lr]
 2460 00c6 0497     		str	r7, [sp, #16]
 2461 00c8 039F     		ldr	r7, [sp, #12]
 2462 00ca 3760     		str	r7, [r6]
 2463 00cc 04F19408 		add	r8, r4, #148
 2464 00d0 34AF     		add	r7, sp, #208
 2465 00d2 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2466 00d4 B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 2467 00d8 049E     		ldr	r6, [sp, #16]
 2468 00da 2E60     		str	r6, [r5]
 2469 00dc 04F1A80E 		add	lr, r4, #168
 2470 00e0 39AE     		add	r6, sp, #228
 2471 00e2 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2472 00e4 8DED229A 		vstr.32	s18, [sp, #136]
 2473 00e8 CDED238A 		vstr.32	s17, [sp, #140]
 2474 00ec 8DED248A 		vstr.32	s16, [sp, #144]
 2475 00f0 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2476 00f4 3EAD     		add	r5, sp, #248
 2477 00f6 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2478 00f8 DAF80000 		ldr	r0, [r10]
 2479 00fc D9F80020 		ldr	r2, [r9]
 2480 0100 D8F80010 		ldr	r1, [r8]
 2481 0104 DEF80030 		ldr	r3, [lr]
 2482 0108 CCF80000 		str	r0, [ip]
 2483 010c 04F1BC0C 		add	ip, r4, #188
 2484 0110 3A60     		str	r2, [r7]
 2485 0112 3160     		str	r1, [r6]
 2486 0114 2B60     		str	r3, [r5]
 2487 0116 0B90     		str	r0, [sp, #44]
 2488 0118 0C92     		str	r2, [sp, #48]
 2489 011a 0D91     		str	r1, [sp, #52]
 2490 011c 0E93     		str	r3, [sp, #56]
 2491 011e BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 2492 0122 04F1D008 		add	r8, r4, #208
 2493 0126 43AF     		add	r7, sp, #268
 2494 0128 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2495 012a B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 2496 012e 04F1E40E 		add	lr, r4, #228
 2497 0132 48AE     		add	r6, sp, #288
 2498 0134 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2499 0136 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2500 013a 4DAD     		add	r5, sp, #308
 2501 013c 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2502 013e DCF800C0 		ldr	ip, [ip]
 2503 0142 DEF80000 		ldr	r0, [lr]
 2504 0146 C7F800C0 		str	ip, [r7]
 2505 014a 04F1F807 		add	r7, r4, #248
 2506 014e 2860     		str	r0, [r5]
 2507 0150 0F90     		str	r0, [sp, #60]
 2508 0152 0FCF     		ldmia	r7!, {r0, r1, r2, r3}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 45


 2509 0154 52AD     		add	r5, sp, #328
 2510 0156 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2511 0158 D8F80080 		ldr	r8, [r8]
 2512 015c 94ED43CA 		vldr.32	s24, [r4, #268]
 2513 0160 D4ED44BA 		vldr.32	s23, [r4, #272]
 2514 0164 94ED45BA 		vldr.32	s22, [r4, #276]
 2515 0168 D4ED46AA 		vldr.32	s21, [r4, #280]
 2516 016c 94ED47AA 		vldr.32	s20, [r4, #284]
 2517 0170 D4ED489A 		vldr.32	s19, [r4, #288]
 2518 0174 C6F80080 		str	r8, [r6]
 2519 0178 D4ED491A 		vldr.32	s3, [r4, #292]
 2520 017c 94ED4A2A 		vldr.32	s4, [r4, #296]
 2521 0180 D4ED4B2A 		vldr.32	s5, [r4, #300]
 2522 0184 94ED4C3A 		vldr.32	s6, [r4, #304]
 2523 0188 D4ED4D3A 		vldr.32	s7, [r4, #308]
 2524 018c 94ED4E4A 		vldr.32	s8, [r4, #312]
 2525 0190 3B68     		ldr	r3, [r7]
 2526 0192 D4ED4F4A 		vldr.32	s9, [r4, #316]
 2527 0196 2B60     		str	r3, [r5]
 2528 0198 9BE80700 		ldm	fp, {r0, r1, r2}
 2529 019c 0593     		str	r3, [sp, #20]
 2530 019e 6FAB     		add	r3, sp, #444
 2531 01a0 94ED505A 		vldr.32	s10, [r4, #320]
 2532 01a4 D4ED515A 		vldr.32	s11, [r4, #324]
 2533 01a8 94ED526A 		vldr.32	s12, [r4, #328]
 2534 01ac 8DED57CA 		vstr.32	s24, [sp, #348]
 2535 01b0 83E80700 		stm	r3, {r0, r1, r2}
 2536 01b4 CDED58BA 		vstr.32	s23, [sp, #352]
 2537 01b8 8DED59BA 		vstr.32	s22, [sp, #356]
 2538 01bc CDED5AAA 		vstr.32	s21, [sp, #360]
 2539 01c0 8DED5BAA 		vstr.32	s20, [sp, #364]
 2540 01c4 CDED5C9A 		vstr.32	s19, [sp, #368]
 2541 01c8 CDED5D1A 		vstr.32	s3, [sp, #372]
 2542 01cc 8DED5E2A 		vstr.32	s4, [sp, #376]
 2543 01d0 CDED5F2A 		vstr.32	s5, [sp, #380]
 2544 01d4 8DED603A 		vstr.32	s6, [sp, #384]
 2545 01d8 CDED613A 		vstr.32	s7, [sp, #388]
 2546 01dc 8DED624A 		vstr.32	s8, [sp, #392]
 2547 01e0 CDED634A 		vstr.32	s9, [sp, #396]
 2548 01e4 099B     		ldr	r3, [sp, #36]
 2549 01e6 D4ED536A 		vldr.32	s13, [r4, #332]
 2550 01ea 079D     		ldr	r5, [sp, #28]
 2551 01ec 8DED6C7A 		vstr.32	s14, [sp, #432]
 2552 01f0 93E80700 		ldm	r3, {r0, r1, r2}
 2553 01f4 089B     		ldr	r3, [sp, #32]
 2554 01f6 8DF8BA31 		strb	r3, [sp, #442]
 2555 01fa 029B     		ldr	r3, [sp, #8]
 2556 01fc 8DF8BB31 		strb	r3, [sp, #443]
 2557 0200 72AB     		add	r3, sp, #456
 2558 0202 94ED547A 		vldr.32	s14, [r4, #336]
 2559 0206 CDED6D7A 		vstr.32	s15, [sp, #436]
 2560 020a 83E80700 		stm	r3, {r0, r1, r2}
 2561 020e D4ED557A 		vldr.32	s15, [r4, #340]
 2562 0212 0A9A     		ldr	r2, [sp, #40]
 2563 0214 94F85891 		ldrb	r9, [r4, #344]	@ zero_extendqisi2
 2564 0218 069F     		ldr	r7, [sp, #24]
 2565 021a 8DF8B951 		strb	r5, [sp, #441]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 46


 2566 021e 544D     		ldr	r5, .L236
 2567 0220 8DF8B871 		strb	r7, [sp, #440]
 2568 0224 6B95     		str	r5, [sp, #428]
 2569 0226 8DED645A 		vstr.32	s10, [sp, #400]
 2570 022a CDED655A 		vstr.32	s11, [sp, #404]
 2571 022e 8DED666A 		vstr.32	s12, [sp, #408]
 2572 0232 CDED676A 		vstr.32	s13, [sp, #412]
 2573 0236 8DED687A 		vstr.32	s14, [sp, #416]
 2574 023a CDED697A 		vstr.32	s15, [sp, #420]
 2575 023e 8DF8A891 		strb	r9, [sp, #424]
 2576 0242 07CA     		ldm	r2, {r0, r1, r2}
 2577 0244 75AB     		add	r3, sp, #468
 2578 0246 04F14405 		add	r5, r4, #68
 2579 024a 83E80700 		stm	r3, {r0, r1, r2}
 2580 024e 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2581 0250 7CAF     		add	r7, sp, #496
 2582 0252 04F15805 		add	r5, r4, #88
 2583 0256 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2584 0258 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2585 025a 81AD     		add	r5, sp, #516
 2586 025c 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2587 025e 04F16C0E 		add	lr, r4, #108
 2588 0262 039B     		ldr	r3, [sp, #12]
 2589 0264 3B60     		str	r3, [r7]
 2590 0266 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2591 026a 049F     		ldr	r7, [sp, #16]
 2592 026c 2F60     		str	r7, [r5]
 2593 026e 0DF5067A 		add	r10, sp, #536
 2594 0272 04F18005 		add	r5, r4, #128
 2595 0276 8DED799A 		vstr.32	s18, [sp, #484]
 2596 027a CDED7A8A 		vstr.32	s17, [sp, #488]
 2597 027e 8DED7B8A 		vstr.32	s16, [sp, #492]
 2598 0282 CDED78CA 		vstr.32	s25, [sp, #480]
 2599 0286 AAE80F00 		stmia	r10!, {r0, r1, r2, r3}
 2600 028a 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2601 028c 0DF50B7E 		add	lr, sp, #556
 2602 0290 04F19405 		add	r5, r4, #148
 2603 0294 AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 2604 0298 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2605 029a 90AF     		add	r7, sp, #576
 2606 029c 04F1A805 		add	r5, r4, #168
 2607 02a0 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2608 02a2 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2609 02a4 0B9D     		ldr	r5, [sp, #44]
 2610 02a6 CAF80050 		str	r5, [r10]
 2611 02aa 0C9D     		ldr	r5, [sp, #48]
 2612 02ac CEF80050 		str	r5, [lr]
 2613 02b0 04F1BC0B 		add	fp, r4, #188
 2614 02b4 0D9D     		ldr	r5, [sp, #52]
 2615 02b6 3D60     		str	r5, [r7]
 2616 02b8 95AE     		add	r6, sp, #596
 2617 02ba 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2618 02bc BBE80F00 		ldmia	fp!, {r0, r1, r2, r3}
 2619 02c0 04F1D007 		add	r7, r4, #208
 2620 02c4 0DF51A7E 		add	lr, sp, #616
 2621 02c8 AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 2622 02cc 0FCF     		ldmia	r7!, {r0, r1, r2, r3}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 47


 2623 02ce 04F1E40A 		add	r10, r4, #228
 2624 02d2 9FAF     		add	r7, sp, #636
 2625 02d4 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2626 02d6 BAE80F00 		ldmia	r10!, {r0, r1, r2, r3}
 2627 02da F834     		adds	r4, r4, #248
 2628 02dc 0DF5247A 		add	r10, sp, #656
 2629 02e0 AAE80F00 		stmia	r10!, {r0, r1, r2, r3}
 2630 02e4 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 2631 02e6 0E9D     		ldr	r5, [sp, #56]
 2632 02e8 3560     		str	r5, [r6]
 2633 02ea A9AC     		add	r4, sp, #676
 2634 02ec CEF800C0 		str	ip, [lr]
 2635 02f0 C7F80080 		str	r8, [r7]
 2636 02f4 0F9D     		ldr	r5, [sp, #60]
 2637 02f6 CAF80050 		str	r5, [r10]
 2638 02fa 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 2639 02fc 019B     		ldr	r3, [sp, #4]
 2640 02fe 059A     		ldr	r2, [sp, #20]
 2641 0300 2260     		str	r2, [r4]
 2642 0302 033B     		subs	r3, r3, #3
 2643 0304 B0EE408A 		vmov.f32	s16, s0
 2644 0308 B0EE609A 		vmov.f32	s18, s1
 2645 030c F0EE418A 		vmov.f32	s17, s2
 2646 0310 8DEDAECA 		vstr.32	s24, [sp, #696]
 2647 0314 CDEDAFBA 		vstr.32	s23, [sp, #700]
 2648 0318 8DEDB0BA 		vstr.32	s22, [sp, #704]
 2649 031c CDEDB1AA 		vstr.32	s21, [sp, #708]
 2650 0320 8DEDB2AA 		vstr.32	s20, [sp, #712]
 2651 0324 CDEDB39A 		vstr.32	s19, [sp, #716]
 2652 0328 CDEDB41A 		vstr.32	s3, [sp, #720]
 2653 032c 8DEDB52A 		vstr.32	s4, [sp, #724]
 2654 0330 CDEDB62A 		vstr.32	s5, [sp, #728]
 2655 0334 8DEDB73A 		vstr.32	s6, [sp, #732]
 2656 0338 CDEDB83A 		vstr.32	s7, [sp, #736]
 2657 033c 8DEDB94A 		vstr.32	s8, [sp, #740]
 2658 0340 CDEDBA4A 		vstr.32	s9, [sp, #744]
 2659 0344 8DEDBB5A 		vstr.32	s10, [sp, #748]
 2660 0348 CDEDBC5A 		vstr.32	s11, [sp, #752]
 2661 034c 8DEDBD6A 		vstr.32	s12, [sp, #756]
 2662 0350 CDEDBE6A 		vstr.32	s13, [sp, #760]
 2663 0354 8DEDBF7A 		vstr.32	s14, [sp, #764]
 2664 0358 CDEDC07A 		vstr.32	s15, [sp, #768]
 2665 035c 8DF80493 		strb	r9, [sp, #772]
 2666 0360 052B     		cmp	r3, #5
 2667 0362 00F2AA80 		bhi	.L210
 2668 0366 DFE803F0 		tbb	[pc, r3]
 2669              	.L212:
 2670 036a 69       		.byte	(.L211-.L212)/2
 2671 036b 7E       		.byte	(.L213-.L212)/2
 2672 036c 93       		.byte	(.L214-.L212)/2
 2673 036d 54       		.byte	(.L215-.L212)/2
 2674 036e 07       		.byte	(.L217-.L212)/2
 2675 036f 07       		.byte	(.L217-.L212)/2
 2676              		.p2align 1
 2677              	.L237:
 2678              		.align	2
 2679              	.L236:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 48


 2680 0370 08000000 		.word	.LANCHOR4+8
 2681 0374 CDCC4C3E 		.word	1045220557
 2682              	.L217:
 2683 0378 9DED1D7A 		vldr.32	s14, [sp, #116]
 2684 037c 5FED036A 		vldr.32	s13, .L236+4
 2685 0380 DDED747A 		vldr.32	s15, [sp, #464]
 2686 0384 37EE267A 		vadd.f32	s14, s14, s13
 2687 0388 77EEE67A 		vsub.f32	s15, s15, s13
 2688 038c 14A8     		add	r0, sp, #80
 2689 038e 8DED1D7A 		vstr.32	s14, [sp, #116]
 2690 0392 CDED747A 		vstr.32	s15, [sp, #464]
 2691 0396 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2692 039a 6BA8     		add	r0, sp, #428
 2693 039c FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2694              	.L218:
 2695 03a0 11AC     		add	r4, sp, #68
 2696 03a2 14A8     		add	r0, sp, #80
 2697 03a4 2146     		mov	r1, r4
 2698 03a6 B0EE681A 		vmov.f32	s2, s17
 2699 03aa F0EE490A 		vmov.f32	s1, s18
 2700 03ae B0EE480A 		vmov.f32	s0, s16
 2701 03b2 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2702 03b6 019B     		ldr	r3, [sp, #4]
 2703 03b8 A568     		ldr	r5, [r4, #8]	@ float
 2704 03ba 002B     		cmp	r3, #0
 2705 03bc 40F0A880 		bne	.L226
 2706              	.L220:
 2707 03c0 5FED147A 		vldr.32	s15, .L236+4
 2708 03c4 38EE678A 		vsub.f32	s16, s16, s15
 2709              	.L224:
 2710 03c8 F0EE490A 		vmov.f32	s1, s18
 2711 03cc B0EE480A 		vmov.f32	s0, s16
 2712 03d0 B0EE681A 		vmov.f32	s2, s17
 2713 03d4 6BA8     		add	r0, sp, #428
 2714 03d6 2146     		mov	r1, r4
 2715 03d8 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2716 03dc 2846     		mov	r0, r5	@ float
 2717 03de FFF7FEFF 		bl	__aeabi_f2d
 2718 03e2 0646     		mov	r6, r0
 2719 03e4 A068     		ldr	r0, [r4, #8]	@ float
 2720 03e6 0F46     		mov	r7, r1
 2721 03e8 FFF7FEFF 		bl	__aeabi_f2d
 2722 03ec 0246     		mov	r2, r0
 2723 03ee 0B46     		mov	r3, r1
 2724 03f0 3046     		mov	r0, r6
 2725 03f2 3946     		mov	r1, r7
 2726 03f4 FFF7FEFF 		bl	__aeabi_dsub
 2727 03f8 56A3     		adr	r3, .L238+4
 2728 03fa D3E90023 		ldrd	r2, [r3]
 2729 03fe FFF7FEFF 		bl	__aeabi_ddiv
 2730 0402 41EC100B 		vmov	d0, r0, r1
 2731 0406 0DF5437D 		add	sp, sp, #780
 2732              		@ sp needed
 2733 040a BDEC0A8B 		vldm	sp!, {d8-d12}
 2734 040e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2735              	.L215:
 2736 0412 9DED1A7A 		vldr.32	s14, [sp, #104]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 49


 2737 0416 DFED4E6A 		vldr.32	s13, .L238
 2738 041a DDED717A 		vldr.32	s15, [sp, #452]
 2739 041e 37EE267A 		vadd.f32	s14, s14, s13
 2740 0422 77EEE67A 		vsub.f32	s15, s15, s13
 2741 0426 14A8     		add	r0, sp, #80
 2742 0428 8DED1A7A 		vstr.32	s14, [sp, #104]
 2743 042c CDED717A 		vstr.32	s15, [sp, #452]
 2744 0430 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2745 0434 6BA8     		add	r0, sp, #428
 2746 0436 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2747 043a B1E7     		b	.L218
 2748              	.L211:
 2749 043c 9DED1C7A 		vldr.32	s14, [sp, #112]
 2750 0440 DFED436A 		vldr.32	s13, .L238
 2751 0444 DDED737A 		vldr.32	s15, [sp, #460]
 2752 0448 37EE267A 		vadd.f32	s14, s14, s13
 2753 044c 77EEE67A 		vsub.f32	s15, s15, s13
 2754 0450 14A8     		add	r0, sp, #80
 2755 0452 8DED1C7A 		vstr.32	s14, [sp, #112]
 2756 0456 CDED737A 		vstr.32	s15, [sp, #460]
 2757 045a FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2758 045e 6BA8     		add	r0, sp, #428
 2759 0460 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2760 0464 9CE7     		b	.L218
 2761              	.L213:
 2762 0466 9DED1E7A 		vldr.32	s14, [sp, #120]
 2763 046a DFED396A 		vldr.32	s13, .L238
 2764 046e DDED757A 		vldr.32	s15, [sp, #468]
 2765 0472 37EE267A 		vadd.f32	s14, s14, s13
 2766 0476 77EEE67A 		vsub.f32	s15, s15, s13
 2767 047a 14A8     		add	r0, sp, #80
 2768 047c 8DED1E7A 		vstr.32	s14, [sp, #120]
 2769 0480 CDED757A 		vstr.32	s15, [sp, #468]
 2770 0484 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2771 0488 6BA8     		add	r0, sp, #428
 2772 048a FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2773 048e 87E7     		b	.L218
 2774              	.L214:
 2775 0490 9DED1F7A 		vldr.32	s14, [sp, #124]
 2776 0494 DFED2E6A 		vldr.32	s13, .L238
 2777 0498 DDED767A 		vldr.32	s15, [sp, #472]
 2778 049c 37EE267A 		vadd.f32	s14, s14, s13
 2779 04a0 77EEE67A 		vsub.f32	s15, s15, s13
 2780 04a4 14A8     		add	r0, sp, #80
 2781 04a6 8DED1F7A 		vstr.32	s14, [sp, #124]
 2782 04aa CDED767A 		vstr.32	s15, [sp, #472]
 2783 04ae FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2784 04b2 6BA8     		add	r0, sp, #428
 2785 04b4 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2786 04b8 72E7     		b	.L218
 2787              	.L210:
 2788 04ba 019B     		ldr	r3, [sp, #4]
 2789 04bc 53B9     		cbnz	r3, .L219
 2790 04be 9FED240A 		vldr.32	s0, .L238
 2791 04c2 11AC     		add	r4, sp, #68
 2792 04c4 14A8     		add	r0, sp, #80
 2793 04c6 38EE000A 		vadd.f32	s0, s16, s0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 50


 2794 04ca 2146     		mov	r1, r4
 2795 04cc FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2796 04d0 A568     		ldr	r5, [r4, #8]	@ float
 2797 04d2 75E7     		b	.L220
 2798              	.L219:
 2799 04d4 019B     		ldr	r3, [sp, #4]
 2800 04d6 012B     		cmp	r3, #1
 2801 04d8 26D1     		bne	.L221
 2802 04da DFED1D0A 		vldr.32	s1, .L238
 2803 04de 11AC     		add	r4, sp, #68
 2804 04e0 14A8     		add	r0, sp, #80
 2805 04e2 79EE200A 		vadd.f32	s1, s18, s1
 2806 04e6 2146     		mov	r1, r4
 2807 04e8 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2808 04ec A568     		ldr	r5, [r4, #8]	@ float
 2809              	.L222:
 2810 04ee DFED187A 		vldr.32	s15, .L238
 2811 04f2 39EE679A 		vsub.f32	s18, s18, s15
 2812 04f6 67E7     		b	.L224
 2813              	.L235:
 2814 04f8 11AC     		add	r4, sp, #68
 2815 04fa 14A8     		add	r0, sp, #80
 2816 04fc 2146     		mov	r1, r4
 2817 04fe B0EE681A 		vmov.f32	s2, s17
 2818 0502 F0EE490A 		vmov.f32	s1, s18
 2819 0506 B0EE480A 		vmov.f32	s0, s16
 2820 050a FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2821 050e A568     		ldr	r5, [r4, #8]	@ float
 2822              	.L226:
 2823 0510 019B     		ldr	r3, [sp, #4]
 2824 0512 012B     		cmp	r3, #1
 2825 0514 EBD0     		beq	.L222
 2826 0516 019B     		ldr	r3, [sp, #4]
 2827 0518 022B     		cmp	r3, #2
 2828 051a 7FF455AF 		bne	.L224
 2829              	.L223:
 2830 051e DFED0C7A 		vldr.32	s15, .L238
 2831 0522 78EEE78A 		vsub.f32	s17, s17, s15
 2832 0526 4FE7     		b	.L224
 2833              	.L221:
 2834 0528 019B     		ldr	r3, [sp, #4]
 2835 052a 022B     		cmp	r3, #2
 2836 052c E4D1     		bne	.L235
 2837 052e 9FED081A 		vldr.32	s2, .L238
 2838 0532 11AC     		add	r4, sp, #68
 2839 0534 14A8     		add	r0, sp, #80
 2840 0536 38EE811A 		vadd.f32	s2, s17, s2
 2841 053a 2146     		mov	r1, r4
 2842 053c F0EE490A 		vmov.f32	s1, s18
 2843 0540 B0EE480A 		vmov.f32	s0, s16
 2844 0544 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2845 0548 A568     		ldr	r5, [r4, #8]	@ float
 2846 054a E8E7     		b	.L223
 2847              	.L239:
 2848 054c AFF30080 		.align	3
 2849              	.L238:
 2850 0550 CDCC4C3E 		.word	1045220557
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 51


 2851 0554 000000A0 		.word	-1610612736
 2852 0558 9999D93F 		.word	1071225241
 2853              		.size	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff, .-_ZNK21HangprinterKinematics17ComputeD
 2854              		.global	__aeabi_d2f
 2855              		.section	.text._ZN21HangprinterKinematics6AdjustEjPKd,"ax",%progbits
 2856              		.align	1
 2857              		.p2align 2,,3
 2858              		.global	_ZN21HangprinterKinematics6AdjustEjPKd
 2859              		.syntax unified
 2860              		.thumb
 2861              		.thumb_func
 2862              		.fpu fpv4-sp-d16
 2863              		.type	_ZN21HangprinterKinematics6AdjustEjPKd, %function
 2864              	_ZN21HangprinterKinematics6AdjustEjPKd:
 2865              		@ args = 0, pretend = 0, frame = 0
 2866              		@ frame_needed = 0, uses_anonymous_args = 0
 2867 0000 0329     		cmp	r1, #3
 2868 0002 70B5     		push	{r4, r5, r6, lr}
 2869 0004 0446     		mov	r4, r0
 2870 0006 53D9     		bls	.L242
 2871 0008 0D46     		mov	r5, r1
 2872 000a D2E90601 		ldrd	r0, [r2, #24]
 2873 000e 1646     		mov	r6, r2
 2874 0010 FFF7FEFF 		bl	__aeabi_d2f
 2875 0014 D4ED087A 		vldr.32	s15, [r4, #32]
 2876 0018 07EE100A 		vmov	s14, r0
 2877 001c 77EE877A 		vadd.f32	s15, s15, s14
 2878 0020 042D     		cmp	r5, #4
 2879 0022 C4ED087A 		vstr.32	s15, [r4, #32]
 2880 0026 43D0     		beq	.L242
 2881 0028 D6E90801 		ldrd	r0, [r6, #32]
 2882 002c FFF7FEFF 		bl	__aeabi_d2f
 2883 0030 D4ED0A7A 		vldr.32	s15, [r4, #40]
 2884 0034 07EE100A 		vmov	s14, r0
 2885 0038 77EE877A 		vadd.f32	s15, s15, s14
 2886 003c 052D     		cmp	r5, #5
 2887 003e C4ED0A7A 		vstr.32	s15, [r4, #40]
 2888 0042 35D0     		beq	.L242
 2889 0044 D6E90A01 		ldrd	r0, [r6, #40]
 2890 0048 FFF7FEFF 		bl	__aeabi_d2f
 2891 004c D4ED0B7A 		vldr.32	s15, [r4, #44]
 2892 0050 07EE100A 		vmov	s14, r0
 2893 0054 77EE877A 		vadd.f32	s15, s15, s14
 2894 0058 062D     		cmp	r5, #6
 2895 005a C4ED0B7A 		vstr.32	s15, [r4, #44]
 2896 005e 27D0     		beq	.L242
 2897 0060 D6E90C01 		ldrd	r0, [r6, #48]
 2898 0064 FFF7FEFF 		bl	__aeabi_d2f
 2899 0068 D4ED067A 		vldr.32	s15, [r4, #24]
 2900 006c 07EE100A 		vmov	s14, r0
 2901 0070 77EE877A 		vadd.f32	s15, s15, s14
 2902 0074 072D     		cmp	r5, #7
 2903 0076 C4ED067A 		vstr.32	s15, [r4, #24]
 2904 007a 19D0     		beq	.L242
 2905 007c D6E90E01 		ldrd	r0, [r6, #56]
 2906 0080 FFF7FEFF 		bl	__aeabi_d2f
 2907 0084 D4ED097A 		vldr.32	s15, [r4, #36]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 52


 2908 0088 07EE100A 		vmov	s14, r0
 2909 008c 77EE877A 		vadd.f32	s15, s15, s14
 2910 0090 082D     		cmp	r5, #8
 2911 0092 C4ED097A 		vstr.32	s15, [r4, #36]
 2912 0096 0BD0     		beq	.L242
 2913 0098 D6E91001 		ldrd	r0, [r6, #64]
 2914 009c FFF7FEFF 		bl	__aeabi_d2f
 2915 00a0 D4ED0C7A 		vldr.32	s15, [r4, #48]
 2916 00a4 07EE100A 		vmov	s14, r0
 2917 00a8 77EE877A 		vadd.f32	s15, s15, s14
 2918 00ac C4ED0C7A 		vstr.32	s15, [r4, #48]
 2919              	.L242:
 2920 00b0 2046     		mov	r0, r4
 2921 00b2 BDE87040 		pop	{r4, r5, r6, lr}
 2922 00b6 FFF7FEBF 		b	_ZN21HangprinterKinematics6RecalcEv
 2923              		.size	_ZN21HangprinterKinematics6AdjustEjPKd, .-_ZN21HangprinterKinematics6AdjustEjPKd
 2924 00ba 00BF     		.section	.text._ZNK21HangprinterKinematics15PrintParametersERK9StringRef,"ax",%progbits
 2925              		.align	1
 2926              		.p2align 2,,3
 2927              		.global	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 2928              		.syntax unified
 2929              		.thumb
 2930              		.thumb_func
 2931              		.fpu fpv4-sp-d16
 2932              		.type	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef, %function
 2933              	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef:
 2934              		@ args = 0, pretend = 0, frame = 0
 2935              		@ frame_needed = 0, uses_anonymous_args = 0
 2936 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2937 0002 0446     		mov	r4, r0
 2938 0004 91B0     		sub	sp, sp, #68
 2939 0006 0069     		ldr	r0, [r0, #16]	@ float
 2940 0008 0D46     		mov	r5, r1
 2941 000a FFF7FEFF 		bl	__aeabi_f2d
 2942 000e 0646     		mov	r6, r0
 2943 0010 206B     		ldr	r0, [r4, #48]	@ float
 2944 0012 0F46     		mov	r7, r1
 2945 0014 FFF7FEFF 		bl	__aeabi_f2d
 2946 0018 CDE90E01 		strd	r0, [sp, #56]
 2947 001c E06A     		ldr	r0, [r4, #44]	@ float
 2948 001e FFF7FEFF 		bl	__aeabi_f2d
 2949 0022 CDE90C01 		strd	r0, [sp, #48]
 2950 0026 A06A     		ldr	r0, [r4, #40]	@ float
 2951 0028 FFF7FEFF 		bl	__aeabi_f2d
 2952 002c CDE90A01 		strd	r0, [sp, #40]
 2953 0030 606A     		ldr	r0, [r4, #36]	@ float
 2954 0032 FFF7FEFF 		bl	__aeabi_f2d
 2955 0036 CDE90801 		strd	r0, [sp, #32]
 2956 003a 206A     		ldr	r0, [r4, #32]	@ float
 2957 003c FFF7FEFF 		bl	__aeabi_f2d
 2958 0040 CDE90601 		strd	r0, [sp, #24]
 2959 0044 E069     		ldr	r0, [r4, #28]	@ float
 2960 0046 FFF7FEFF 		bl	__aeabi_f2d
 2961 004a CDE90401 		strd	r0, [sp, #16]
 2962 004e A069     		ldr	r0, [r4, #24]	@ float
 2963 0050 FFF7FEFF 		bl	__aeabi_f2d
 2964 0054 CDE90201 		strd	r0, [sp, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 53


 2965 0058 6069     		ldr	r0, [r4, #20]	@ float
 2966 005a FFF7FEFF 		bl	__aeabi_f2d
 2967 005e 3246     		mov	r2, r6
 2968 0060 CDE90001 		strd	r0, [sp]
 2969 0064 3B46     		mov	r3, r7
 2970 0066 2846     		mov	r0, r5
 2971 0068 0249     		ldr	r1, .L262
 2972 006a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2973 006e 11B0     		add	sp, sp, #68
 2974              		@ sp needed
 2975 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 2976              	.L263:
 2977 0072 00BF     		.align	2
 2978              	.L262:
 2979 0074 00000000 		.word	.LC19
 2980              		.size	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef, .-_ZNK21HangprinterKinematics15Pr
 2981              		.section	.text._ZN6StringILj200EE6printfEPKcz,"axG",%progbits,_ZN6StringILj200EE6printfEPKcz,comda
 2982              		.align	1
 2983              		.p2align 2,,3
 2984              		.weak	_ZN6StringILj200EE6printfEPKcz
 2985              		.syntax unified
 2986              		.thumb
 2987              		.thumb_func
 2988              		.fpu fpv4-sp-d16
 2989              		.type	_ZN6StringILj200EE6printfEPKcz, %function
 2990              	_ZN6StringILj200EE6printfEPKcz:
 2991              		@ args = 4, pretend = 12, frame = 16
 2992              		@ frame_needed = 0, uses_anonymous_args = 1
 2993 0000 0EB4     		push	{r1, r2, r3}
 2994 0002 00B5     		push	{lr}
 2995 0004 84B0     		sub	sp, sp, #16
 2996 0006 05AA     		add	r2, sp, #20
 2997 0008 0290     		str	r0, [sp, #8]
 2998 000a 52F8041B 		ldr	r1, [r2], #4
 2999 000e 0192     		str	r2, [sp, #4]
 3000 0010 C923     		movs	r3, #201
 3001 0012 02A8     		add	r0, sp, #8
 3002 0014 0393     		str	r3, [sp, #12]
 3003 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 3004 001a 04B0     		add	sp, sp, #16
 3005              		@ sp needed
 3006 001c 5DF804EB 		ldr	lr, [sp], #4
 3007 0020 03B0     		add	sp, sp, #12
 3008 0022 7047     		bx	lr
 3009              		.size	_ZN6StringILj200EE6printfEPKcz, .-_ZN6StringILj200EE6printfEPKcz
 3010              		.section	.text._ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore,"ax",%progbits
 3011              		.align	1
 3012              		.p2align 2,,3
 3013              		.global	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore
 3014              		.syntax unified
 3015              		.thumb
 3016              		.thumb_func
 3017              		.fpu fpv4-sp-d16
 3018              		.type	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore, %function
 3019              	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore:
 3020              		@ args = 0, pretend = 0, frame = 208
 3021              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 54


 3022 0000 2DE97043 		push	{r4, r5, r6, r8, r9, lr}
 3023 0004 0D46     		mov	r5, r1
 3024 0006 D2B0     		sub	sp, sp, #328
 3025 0008 0446     		mov	r4, r0
 3026 000a 3349     		ldr	r1, .L272
 3027 000c 2846     		mov	r0, r5
 3028 000e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 3029 0012 0028     		cmp	r0, #0
 3030 0014 5DD0     		beq	.L267
 3031 0016 52AE     		add	r6, sp, #328
 3032 0018 0023     		movs	r3, #0
 3033 001a 2069     		ldr	r0, [r4, #16]	@ float
 3034 001c 06F8CC3D 		strb	r3, [r6, #-204]!
 3035 0020 FFF7FEFF 		bl	__aeabi_f2d
 3036 0024 8046     		mov	r8, r0
 3037 0026 206D     		ldr	r0, [r4, #80]	@ float
 3038 0028 8946     		mov	r9, r1
 3039 002a FFF7FEFF 		bl	__aeabi_f2d
 3040 002e CDE91C01 		strd	r0, [sp, #112]
 3041 0032 E06C     		ldr	r0, [r4, #76]	@ float
 3042 0034 FFF7FEFF 		bl	__aeabi_f2d
 3043 0038 CDE91A01 		strd	r0, [sp, #104]
 3044 003c A06C     		ldr	r0, [r4, #72]	@ float
 3045 003e FFF7FEFF 		bl	__aeabi_f2d
 3046 0042 CDE91801 		strd	r0, [sp, #96]
 3047 0046 606C     		ldr	r0, [r4, #68]	@ float
 3048 0048 FFF7FEFF 		bl	__aeabi_f2d
 3049 004c CDE91601 		strd	r0, [sp, #88]
 3050 0050 206C     		ldr	r0, [r4, #64]	@ float
 3051 0052 FFF7FEFF 		bl	__aeabi_f2d
 3052 0056 CDE91401 		strd	r0, [sp, #80]
 3053 005a E06B     		ldr	r0, [r4, #60]	@ float
 3054 005c FFF7FEFF 		bl	__aeabi_f2d
 3055 0060 CDE91201 		strd	r0, [sp, #72]
 3056 0064 606B     		ldr	r0, [r4, #52]	@ float
 3057 0066 FFF7FEFF 		bl	__aeabi_f2d
 3058 006a CDE91001 		strd	r0, [sp, #64]
 3059 006e 206B     		ldr	r0, [r4, #48]	@ float
 3060 0070 FFF7FEFF 		bl	__aeabi_f2d
 3061 0074 CDE90E01 		strd	r0, [sp, #56]
 3062 0078 E06A     		ldr	r0, [r4, #44]	@ float
 3063 007a FFF7FEFF 		bl	__aeabi_f2d
 3064 007e CDE90C01 		strd	r0, [sp, #48]
 3065 0082 A06A     		ldr	r0, [r4, #40]	@ float
 3066 0084 FFF7FEFF 		bl	__aeabi_f2d
 3067 0088 CDE90A01 		strd	r0, [sp, #40]
 3068 008c 606A     		ldr	r0, [r4, #36]	@ float
 3069 008e FFF7FEFF 		bl	__aeabi_f2d
 3070 0092 CDE90801 		strd	r0, [sp, #32]
 3071 0096 206A     		ldr	r0, [r4, #32]	@ float
 3072 0098 FFF7FEFF 		bl	__aeabi_f2d
 3073 009c CDE90601 		strd	r0, [sp, #24]
 3074 00a0 E069     		ldr	r0, [r4, #28]	@ float
 3075 00a2 FFF7FEFF 		bl	__aeabi_f2d
 3076 00a6 CDE90401 		strd	r0, [sp, #16]
 3077 00aa A069     		ldr	r0, [r4, #24]	@ float
 3078 00ac FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 55


 3079 00b0 CDE90201 		strd	r0, [sp, #8]
 3080 00b4 6069     		ldr	r0, [r4, #20]	@ float
 3081 00b6 FFF7FEFF 		bl	__aeabi_f2d
 3082 00ba 4246     		mov	r2, r8
 3083 00bc CDE90001 		strd	r0, [sp]
 3084 00c0 4B46     		mov	r3, r9
 3085 00c2 0649     		ldr	r1, .L272+4
 3086 00c4 3046     		mov	r0, r6
 3087 00c6 FFF7FEFF 		bl	_ZN6StringILj200EE6printfEPKcz
 3088 00ca 3146     		mov	r1, r6
 3089 00cc 2846     		mov	r0, r5
 3090 00ce FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 3091              	.L267:
 3092 00d2 52B0     		add	sp, sp, #328
 3093              		@ sp needed
 3094 00d4 BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 3095              	.L273:
 3096              		.align	2
 3097              	.L272:
 3098 00d8 00000000 		.word	.LC20
 3099 00dc 1C000000 		.word	.LC21
 3100              		.size	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK21HangprinterKine
 3101              		.section	.text._ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj,"axG",%progbits,_ZN11FixedMatrixIdLj9
 3102              		.align	1
 3103              		.p2align 2,,3
 3104              		.weak	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 3105              		.syntax unified
 3106              		.thumb
 3107              		.thumb_func
 3108              		.fpu fpv4-sp-d16
 3109              		.type	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, %function
 3110              	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj:
 3111              		@ args = 0, pretend = 0, frame = 64
 3112              		@ frame_needed = 0, uses_anonymous_args = 0
 3113 0000 002A     		cmp	r2, #0
 3114 0002 00F02082 		beq	.L338
 3115 0006 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3116 000a 2DED088B 		vpush.64	{d8, d9, d10, d11}
 3117 000e 91B0     		sub	sp, sp, #68
 3118 0010 AF4E     		ldr	r6, .L355+8
 3119 0012 0092     		str	r2, [sp]
 3120 0014 0246     		mov	r2, r0
 3121 0016 0F91     		str	r1, [sp, #60]
 3122 0018 52F8083B 		ldr	r3, [r2], #8
 3123 001c 0D92     		str	r2, [sp, #52]
 3124 001e 9F68     		ldr	r7, [r3, #8]
 3125 0020 0023     		movs	r3, #0
 3126 0022 BB46     		mov	fp, r7
 3127 0024 0A93     		str	r3, [sp, #40]
 3128 0026 CDE90B33 		strd	r3, r3, [sp, #44]
 3129 002a 0493     		str	r3, [sp, #16]
 3130 002c B345     		cmp	fp, r6
 3131 002e 00F15803 		add	r3, r0, #88
 3132 0032 9FEDA5BB 		vldr.64	d11, .L355
 3133 0036 0E93     		str	r3, [sp, #56]
 3134 0038 8246     		mov	r10, r0
 3135 003a 40F09281 		bne	.L276
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 56


 3136              	.L352:
 3137 003e 0D9B     		ldr	r3, [sp, #52]
 3138 0040 0A9A     		ldr	r2, [sp, #40]
 3139 0042 9818     		adds	r0, r3, r2
 3140              	.L277:
 3141 0044 D0E90001 		ldrd	r0, [r0]
 3142 0048 FFF7FEFF 		bl	__aeabi_d2f
 3143 004c 049B     		ldr	r3, [sp, #16]
 3144 004e 0099     		ldr	r1, [sp]
 3145 0050 0133     		adds	r3, r3, #1
 3146 0052 07EE900A 		vmov	s15, r0
 3147 0056 9942     		cmp	r1, r3
 3148 0058 0693     		str	r3, [sp, #24]
 3149 005a B0EEE78A 		vabs.f32	s16, s15
 3150 005e 40F29680 		bls	.L278
 3151 0062 CB1A     		subs	r3, r1, r3
 3152 0064 0193     		str	r3, [sp, #4]
 3153 0066 0A9A     		ldr	r2, [sp, #40]
 3154 0068 0E9B     		ldr	r3, [sp, #56]
 3155 006a 1344     		add	r3, r3, r2
 3156 006c 6FF04F07 		mvn	r7, #79
 3157 0070 0025     		movs	r5, #0
 3158 0072 0293     		str	r3, [sp, #8]
 3159 0074 5C46     		mov	r4, fp
 3160 0076 06E0     		b	.L292
 3161              	.L281:
 3162 0078 019B     		ldr	r3, [sp, #4]
 3163 007a 0135     		adds	r5, r5, #1
 3164 007c AB42     		cmp	r3, r5
 3165 007e A7F15007 		sub	r7, r7, #80
 3166 0082 00F08380 		beq	.L341
 3167              	.L292:
 3168 0086 069B     		ldr	r3, [sp, #24]
 3169 0088 B442     		cmp	r4, r6
 3170 008a 03EB0509 		add	r9, r3, r5
 3171 008e 6AD1     		bne	.L279
 3172 0090 029B     		ldr	r3, [sp, #8]
 3173 0092 05EB8500 		add	r0, r5, r5, lsl #2
 3174 0096 03EB0010 		add	r0, r3, r0, lsl #4
 3175              	.L280:
 3176 009a D0E90001 		ldrd	r0, [r0]
 3177 009e FFF7FEFF 		bl	__aeabi_d2f
 3178 00a2 07EE900A 		vmov	s15, r0
 3179 00a6 B0EEE7AA 		vabs.f32	s20, s15
 3180 00aa B4EEC8AA 		vcmpe.f32	s20, s16
 3181 00ae F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3182 00b2 E1DD     		ble	.L281
 3183 00b4 049B     		ldr	r3, [sp, #16]
 3184 00b6 4B45     		cmp	r3, r9
 3185 00b8 00F07C81 		beq	.L327
 3186 00bc 0B9A     		ldr	r2, [sp, #44]
 3187 00be 092A     		cmp	r2, #9
 3188 00c0 00F27881 		bhi	.L327
 3189 00c4 029A     		ldr	r2, [sp, #8]
 3190 00c6 05EB8508 		add	r8, r5, r5, lsl #2
 3191 00ca 9B46     		mov	fp, r3
 3192 00cc 2B46     		mov	r3, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 57


 3193 00ce 02EB0818 		add	r8, r2, r8, lsl #4
 3194 00d2 4D46     		mov	r5, r9
 3195 00d4 B946     		mov	r9, r7
 3196 00d6 1F46     		mov	r7, r3
 3197 00d8 1AE0     		b	.L291
 3198              	.L343:
 3199 00da 08EB0900 		add	r0, r8, r9
 3200 00de B442     		cmp	r4, r6
 3201 00e0 90ED008B 		vldr.64	d8, [r0]
 3202 00e4 21D1     		bne	.L285
 3203              	.L344:
 3204 00e6 4046     		mov	r0, r8
 3205 00e8 B442     		cmp	r4, r6
 3206 00ea 90ED009B 		vldr.64	d9, [r0]
 3207 00ee 27D1     		bne	.L287
 3208              	.L345:
 3209 00f0 08EB0900 		add	r0, r8, r9
 3210 00f4 B442     		cmp	r4, r6
 3211 00f6 80ED009B 		vstr.64	d9, [r0]
 3212 00fa 2CD1     		bne	.L289
 3213              	.L346:
 3214 00fc 4046     		mov	r0, r8
 3215              	.L290:
 3216 00fe 0BF1010B 		add	fp, fp, #1
 3217 0102 BBF10A0F 		cmp	fp, #10
 3218 0106 80ED008B 		vstr.64	d8, [r0]
 3219 010a 08F10808 		add	r8, r8, #8
 3220 010e 32D0     		beq	.L342
 3221              	.L291:
 3222 0110 B442     		cmp	r4, r6
 3223 0112 E2D0     		beq	.L343
 3224 0114 5A46     		mov	r2, fp
 3225 0116 0499     		ldr	r1, [sp, #16]
 3226 0118 5046     		mov	r0, r10
 3227 011a A047     		blx	r4
 3228 011c DAF80020 		ldr	r2, [r10]
 3229 0120 9468     		ldr	r4, [r2, #8]
 3230 0122 B442     		cmp	r4, r6
 3231 0124 90ED008B 		vldr.64	d8, [r0]
 3232 0128 DDD0     		beq	.L344
 3233              	.L285:
 3234 012a 5A46     		mov	r2, fp
 3235 012c 2946     		mov	r1, r5
 3236 012e 5046     		mov	r0, r10
 3237 0130 A047     		blx	r4
 3238 0132 DAF80020 		ldr	r2, [r10]
 3239 0136 9468     		ldr	r4, [r2, #8]
 3240 0138 B442     		cmp	r4, r6
 3241 013a 90ED009B 		vldr.64	d9, [r0]
 3242 013e D7D0     		beq	.L345
 3243              	.L287:
 3244 0140 5A46     		mov	r2, fp
 3245 0142 0499     		ldr	r1, [sp, #16]
 3246 0144 5046     		mov	r0, r10
 3247 0146 A047     		blx	r4
 3248 0148 DAF80020 		ldr	r2, [r10]
 3249 014c 9468     		ldr	r4, [r2, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 58


 3250 014e B442     		cmp	r4, r6
 3251 0150 80ED009B 		vstr.64	d9, [r0]
 3252 0154 D2D0     		beq	.L346
 3253              	.L289:
 3254 0156 5A46     		mov	r2, fp
 3255 0158 2946     		mov	r1, r5
 3256 015a 5046     		mov	r0, r10
 3257 015c A047     		blx	r4
 3258 015e DAF80020 		ldr	r2, [r10]
 3259 0162 9468     		ldr	r4, [r2, #8]
 3260 0164 CBE7     		b	.L290
 3261              	.L279:
 3262 0166 049A     		ldr	r2, [sp, #16]
 3263 0168 4946     		mov	r1, r9
 3264 016a 5046     		mov	r0, r10
 3265 016c A047     		blx	r4
 3266 016e DAF80030 		ldr	r3, [r10]
 3267 0172 9C68     		ldr	r4, [r3, #8]
 3268 0174 91E7     		b	.L280
 3269              	.L342:
 3270 0176 3D46     		mov	r5, r7
 3271 0178 019B     		ldr	r3, [sp, #4]
 3272 017a 0135     		adds	r5, r5, #1
 3273 017c 4F46     		mov	r7, r9
 3274 017e AB42     		cmp	r3, r5
 3275 0180 B0EE4A8A 		vmov.f32	s16, s20
 3276 0184 A7F15007 		sub	r7, r7, #80
 3277 0188 7FF47DAF 		bne	.L292
 3278              	.L341:
 3279 018c A346     		mov	fp, r4
 3280              	.L278:
 3281 018e B345     		cmp	fp, r6
 3282 0190 40F01381 		bne	.L293
 3283 0194 0D9B     		ldr	r3, [sp, #52]
 3284 0196 0A9A     		ldr	r2, [sp, #40]
 3285 0198 9818     		adds	r0, r3, r2
 3286              	.L294:
 3287 019a 90ED007B 		vldr.64	d7, [r0]
 3288 019e 0B9B     		ldr	r3, [sp, #44]
 3289 01a0 8DED087B 		vstr.64	d7, [sp, #32]
 3290 01a4 002B     		cmp	r3, #0
 3291 01a6 61D0     		beq	.L308
 3292 01a8 069B     		ldr	r3, [sp, #24]
 3293 01aa 0AEBC303 		add	r3, r10, r3, lsl #3
 3294 01ae 0593     		str	r3, [sp, #20]
 3295 01b0 0C9B     		ldr	r3, [sp, #48]
 3296 01b2 DB00     		lsls	r3, r3, #3
 3297 01b4 0193     		str	r3, [sp, #4]
 3298 01b6 0023     		movs	r3, #0
 3299 01b8 0793     		str	r3, [sp, #28]
 3300 01ba 5F46     		mov	r7, fp
 3301              	.L309:
 3302 01bc B742     		cmp	r7, r6
 3303 01be 40F0F180 		bne	.L298
 3304 01c2 0598     		ldr	r0, [sp, #20]
 3305              	.L299:
 3306 01c4 DDE90823 		ldrd	r2, [sp, #32]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 59


 3307 01c8 D0E90001 		ldrd	r0, [r0]
 3308 01cc FFF7FEFF 		bl	__aeabi_ddiv
 3309 01d0 B742     		cmp	r7, r6
 3310 01d2 CDE90201 		strd	r0, [sp, #8]
 3311 01d6 40F0DD80 		bne	.L300
 3312 01da 0598     		ldr	r0, [sp, #20]
 3313              	.L301:
 3314 01dc 009B     		ldr	r3, [sp]
 3315 01de 069D     		ldr	r5, [sp, #24]
 3316 01e0 1A46     		mov	r2, r3
 3317 01e2 AA42     		cmp	r2, r5
 3318 01e4 80ED00BB 		vstr.64	d11, [r0]
 3319 01e8 33D3     		bcc	.L302
 3320 01ea 059B     		ldr	r3, [sp, #20]
 3321 01ec D146     		mov	r9, r10
 3322 01ee 03F10804 		add	r4, r3, #8
 3323 01f2 1AE0     		b	.L307
 3324              	.L348:
 3325 01f4 019B     		ldr	r3, [sp, #4]
 3326 01f6 1819     		adds	r0, r3, r4
 3327              	.L304:
 3328 01f8 D0E90023 		ldrd	r2, [r0]
 3329 01fc DDE90201 		ldrd	r0, [sp, #8]
 3330 0200 FFF7FEFF 		bl	__aeabi_dmul
 3331 0204 B742     		cmp	r7, r6
 3332 0206 8246     		mov	r10, r0
 3333 0208 8B46     		mov	fp, r1
 3334 020a 18D1     		bne	.L305
 3335 020c A046     		mov	r8, r4
 3336              	.L306:
 3337 020e 5B46     		mov	r3, fp
 3338 0210 D8E90001 		ldrd	r0, [r8]
 3339 0214 5246     		mov	r2, r10
 3340 0216 FFF7FEFF 		bl	__aeabi_dsub
 3341 021a 009B     		ldr	r3, [sp]
 3342 021c 0135     		adds	r5, r5, #1
 3343 021e AB42     		cmp	r3, r5
 3344 0220 04F10804 		add	r4, r4, #8
 3345 0224 C8E90001 		strd	r0, [r8]
 3346 0228 12D3     		bcc	.L347
 3347              	.L307:
 3348 022a B742     		cmp	r7, r6
 3349 022c E2D0     		beq	.L348
 3350 022e 2A46     		mov	r2, r5
 3351 0230 0499     		ldr	r1, [sp, #16]
 3352 0232 4846     		mov	r0, r9
 3353 0234 B847     		blx	r7
 3354 0236 D9F80030 		ldr	r3, [r9]
 3355 023a 9F68     		ldr	r7, [r3, #8]
 3356 023c DCE7     		b	.L304
 3357              	.L305:
 3358 023e 2A46     		mov	r2, r5
 3359 0240 0799     		ldr	r1, [sp, #28]
 3360 0242 4846     		mov	r0, r9
 3361 0244 B847     		blx	r7
 3362 0246 D9F80030 		ldr	r3, [r9]
 3363 024a 8046     		mov	r8, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 60


 3364 024c 9F68     		ldr	r7, [r3, #8]
 3365 024e DEE7     		b	.L306
 3366              	.L347:
 3367 0250 CA46     		mov	r10, r9
 3368              	.L302:
 3369 0252 059A     		ldr	r2, [sp, #20]
 3370 0254 079B     		ldr	r3, [sp, #28]
 3371 0256 5032     		adds	r2, r2, #80
 3372 0258 0592     		str	r2, [sp, #20]
 3373 025a 019A     		ldr	r2, [sp, #4]
 3374 025c 503A     		subs	r2, r2, #80
 3375 025e 0192     		str	r2, [sp, #4]
 3376 0260 049A     		ldr	r2, [sp, #16]
 3377 0262 0133     		adds	r3, r3, #1
 3378 0264 9342     		cmp	r3, r2
 3379 0266 0793     		str	r3, [sp, #28]
 3380 0268 A8D1     		bne	.L309
 3381 026a BB46     		mov	fp, r7
 3382              	.L308:
 3383 026c 009B     		ldr	r3, [sp]
 3384 026e 069A     		ldr	r2, [sp, #24]
 3385 0270 9342     		cmp	r3, r2
 3386 0272 00F0AB80 		beq	.L349
 3387 0276 0C9B     		ldr	r3, [sp, #48]
 3388 0278 0A9A     		ldr	r2, [sp, #40]
 3389 027a 0A33     		adds	r3, r3, #10
 3390 027c 0C93     		str	r3, [sp, #48]
 3391 027e 0E9B     		ldr	r3, [sp, #56]
 3392 0280 1344     		add	r3, r3, r2
 3393 0282 0593     		str	r3, [sp, #20]
 3394 0284 069B     		ldr	r3, [sp, #24]
 3395 0286 0793     		str	r3, [sp, #28]
 3396 0288 6FF04F03 		mvn	r3, #79
 3397 028c 0193     		str	r3, [sp, #4]
 3398 028e 5F46     		mov	r7, fp
 3399              	.L320:
 3400 0290 B742     		cmp	r7, r6
 3401 0292 6FD1     		bne	.L310
 3402 0294 0598     		ldr	r0, [sp, #20]
 3403              	.L311:
 3404 0296 DDE90823 		ldrd	r2, [sp, #32]
 3405 029a D0E90001 		ldrd	r0, [r0]
 3406 029e FFF7FEFF 		bl	__aeabi_ddiv
 3407 02a2 B742     		cmp	r7, r6
 3408 02a4 CDE90201 		strd	r0, [sp, #8]
 3409 02a8 6CD1     		bne	.L312
 3410 02aa 0598     		ldr	r0, [sp, #20]
 3411              	.L313:
 3412 02ac 009B     		ldr	r3, [sp]
 3413 02ae 069D     		ldr	r5, [sp, #24]
 3414 02b0 1A46     		mov	r2, r3
 3415 02b2 AA42     		cmp	r2, r5
 3416 02b4 80ED00BB 		vstr.64	d11, [r0]
 3417 02b8 3BD3     		bcc	.L314
 3418 02ba 059B     		ldr	r3, [sp, #20]
 3419 02bc D146     		mov	r9, r10
 3420 02be 03F10804 		add	r4, r3, #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 61


 3421 02c2 22E0     		b	.L319
 3422              	.L356:
 3423 02c4 AFF30080 		.align	3
 3424              	.L355:
 3425 02c8 00000000 		.word	0
 3426 02cc 00000000 		.word	0
 3427 02d0 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 3428              	.L351:
 3429 02d4 019B     		ldr	r3, [sp, #4]
 3430 02d6 1819     		adds	r0, r3, r4
 3431              	.L316:
 3432 02d8 D0E90023 		ldrd	r2, [r0]
 3433 02dc DDE90201 		ldrd	r0, [sp, #8]
 3434 02e0 FFF7FEFF 		bl	__aeabi_dmul
 3435 02e4 B742     		cmp	r7, r6
 3436 02e6 8246     		mov	r10, r0
 3437 02e8 8B46     		mov	fp, r1
 3438 02ea 18D1     		bne	.L317
 3439 02ec A046     		mov	r8, r4
 3440              	.L318:
 3441 02ee 5B46     		mov	r3, fp
 3442 02f0 D8E90001 		ldrd	r0, [r8]
 3443 02f4 5246     		mov	r2, r10
 3444 02f6 FFF7FEFF 		bl	__aeabi_dsub
 3445 02fa 009B     		ldr	r3, [sp]
 3446 02fc 0135     		adds	r5, r5, #1
 3447 02fe AB42     		cmp	r3, r5
 3448 0300 04F10804 		add	r4, r4, #8
 3449 0304 C8E90001 		strd	r0, [r8]
 3450 0308 12D3     		bcc	.L350
 3451              	.L319:
 3452 030a B742     		cmp	r7, r6
 3453 030c E2D0     		beq	.L351
 3454 030e 2A46     		mov	r2, r5
 3455 0310 0499     		ldr	r1, [sp, #16]
 3456 0312 4846     		mov	r0, r9
 3457 0314 B847     		blx	r7
 3458 0316 D9F80030 		ldr	r3, [r9]
 3459 031a 9F68     		ldr	r7, [r3, #8]
 3460 031c DCE7     		b	.L316
 3461              	.L317:
 3462 031e 2A46     		mov	r2, r5
 3463 0320 0799     		ldr	r1, [sp, #28]
 3464 0322 4846     		mov	r0, r9
 3465 0324 B847     		blx	r7
 3466 0326 D9F80030 		ldr	r3, [r9]
 3467 032a 8046     		mov	r8, r0
 3468 032c 9F68     		ldr	r7, [r3, #8]
 3469 032e DEE7     		b	.L318
 3470              	.L350:
 3471 0330 CA46     		mov	r10, r9
 3472              	.L314:
 3473 0332 059A     		ldr	r2, [sp, #20]
 3474 0334 079B     		ldr	r3, [sp, #28]
 3475 0336 5032     		adds	r2, r2, #80
 3476 0338 0592     		str	r2, [sp, #20]
 3477 033a 019A     		ldr	r2, [sp, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 62


 3478 033c 503A     		subs	r2, r2, #80
 3479 033e 0192     		str	r2, [sp, #4]
 3480 0340 009A     		ldr	r2, [sp]
 3481 0342 0133     		adds	r3, r3, #1
 3482 0344 9A42     		cmp	r2, r3
 3483 0346 0793     		str	r3, [sp, #28]
 3484 0348 A2D1     		bne	.L320
 3485 034a 0B9B     		ldr	r3, [sp, #44]
 3486 034c 0133     		adds	r3, r3, #1
 3487 034e 0B93     		str	r3, [sp, #44]
 3488 0350 0A9B     		ldr	r3, [sp, #40]
 3489 0352 BB46     		mov	fp, r7
 3490 0354 5833     		adds	r3, r3, #88
 3491 0356 0A93     		str	r3, [sp, #40]
 3492 0358 B345     		cmp	fp, r6
 3493 035a 069B     		ldr	r3, [sp, #24]
 3494 035c 0493     		str	r3, [sp, #16]
 3495 035e 3FF46EAE 		beq	.L352
 3496              	.L276:
 3497 0362 0499     		ldr	r1, [sp, #16]
 3498 0364 5046     		mov	r0, r10
 3499 0366 0A46     		mov	r2, r1
 3500 0368 D847     		blx	fp
 3501 036a DAF80030 		ldr	r3, [r10]
 3502 036e D3F808B0 		ldr	fp, [r3, #8]
 3503 0372 67E6     		b	.L277
 3504              	.L310:
 3505 0374 049A     		ldr	r2, [sp, #16]
 3506 0376 0799     		ldr	r1, [sp, #28]
 3507 0378 5046     		mov	r0, r10
 3508 037a B847     		blx	r7
 3509 037c DAF80030 		ldr	r3, [r10]
 3510 0380 9F68     		ldr	r7, [r3, #8]
 3511 0382 88E7     		b	.L311
 3512              	.L312:
 3513 0384 049A     		ldr	r2, [sp, #16]
 3514 0386 0799     		ldr	r1, [sp, #28]
 3515 0388 5046     		mov	r0, r10
 3516 038a B847     		blx	r7
 3517 038c DAF80030 		ldr	r3, [r10]
 3518 0390 9F68     		ldr	r7, [r3, #8]
 3519 0392 8BE7     		b	.L313
 3520              	.L300:
 3521 0394 049A     		ldr	r2, [sp, #16]
 3522 0396 0799     		ldr	r1, [sp, #28]
 3523 0398 5046     		mov	r0, r10
 3524 039a B847     		blx	r7
 3525 039c DAF80030 		ldr	r3, [r10]
 3526 03a0 9F68     		ldr	r7, [r3, #8]
 3527 03a2 1BE7     		b	.L301
 3528              	.L298:
 3529 03a4 049A     		ldr	r2, [sp, #16]
 3530 03a6 0799     		ldr	r1, [sp, #28]
 3531 03a8 5046     		mov	r0, r10
 3532 03aa B847     		blx	r7
 3533 03ac DAF80030 		ldr	r3, [r10]
 3534 03b0 9F68     		ldr	r7, [r3, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 63


 3535 03b2 07E7     		b	.L299
 3536              	.L327:
 3537 03b4 B0EE4A8A 		vmov.f32	s16, s20
 3538 03b8 5EE6     		b	.L281
 3539              	.L293:
 3540 03ba 0499     		ldr	r1, [sp, #16]
 3541 03bc 5046     		mov	r0, r10
 3542 03be 0A46     		mov	r2, r1
 3543 03c0 D847     		blx	fp
 3544 03c2 DAF80030 		ldr	r3, [r10]
 3545 03c6 D3F808B0 		ldr	fp, [r3, #8]
 3546 03ca E6E6     		b	.L294
 3547              	.L349:
 3548 03cc 049C     		ldr	r4, [sp, #16]
 3549 03ce 0D9D     		ldr	r5, [sp, #52]
 3550 03d0 DDF83C90 		ldr	r9, [sp, #60]
 3551 03d4 5F46     		mov	r7, fp
 3552 03d6 0234     		adds	r4, r4, #2
 3553 03d8 3B46     		mov	r3, r7
 3554 03da 0AEBC404 		add	r4, r10, r4, lsl #3
 3555 03de 4FF00008 		mov	r8, #0
 3556 03e2 5746     		mov	r7, r10
 3557 03e4 18E0     		b	.L297
 3558              	.L353:
 3559 03e6 2046     		mov	r0, r4
 3560 03e8 B342     		cmp	r3, r6
 3561 03ea D0E900AB 		ldrd	r10, [r0]
 3562 03ee 1FD1     		bne	.L324
 3563              	.L354:
 3564 03f0 2B46     		mov	r3, r5
 3565              	.L325:
 3566 03f2 D3E90023 		ldrd	r2, [r3]
 3567 03f6 5046     		mov	r0, r10
 3568 03f8 5946     		mov	r1, fp
 3569 03fa FFF7FEFF 		bl	__aeabi_ddiv
 3570 03fe 069B     		ldr	r3, [sp, #24]
 3571 0400 08F10108 		add	r8, r8, #1
 3572 0404 4345     		cmp	r3, r8
 3573 0406 05F15805 		add	r5, r5, #88
 3574 040a 04F15004 		add	r4, r4, #80
 3575 040e E9E80201 		strd	r0, [r9], #8
 3576 0412 13D0     		beq	.L274
 3577 0414 3B68     		ldr	r3, [r7]
 3578 0416 9B68     		ldr	r3, [r3, #8]
 3579              	.L297:
 3580 0418 B342     		cmp	r3, r6
 3581 041a E4D0     		beq	.L353
 3582 041c 069A     		ldr	r2, [sp, #24]
 3583 041e 4146     		mov	r1, r8
 3584 0420 3846     		mov	r0, r7
 3585 0422 9847     		blx	r3
 3586 0424 3B68     		ldr	r3, [r7]
 3587 0426 9B68     		ldr	r3, [r3, #8]
 3588 0428 B342     		cmp	r3, r6
 3589 042a D0E900AB 		ldrd	r10, [r0]
 3590 042e DFD0     		beq	.L354
 3591              	.L324:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 64


 3592 0430 4246     		mov	r2, r8
 3593 0432 4146     		mov	r1, r8
 3594 0434 3846     		mov	r0, r7
 3595 0436 9847     		blx	r3
 3596 0438 0346     		mov	r3, r0
 3597 043a DAE7     		b	.L325
 3598              	.L274:
 3599 043c 11B0     		add	sp, sp, #68
 3600              		@ sp needed
 3601 043e BDEC088B 		vldm	sp!, {d8-d11}
 3602 0442 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3603              	.L338:
 3604 0446 7047     		bx	lr
 3605              		.size	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, .-_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEP
 3606              		.global	__aeabi_ui2d
 3607              		.section	.text._ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,
 3608              		.align	1
 3609              		.p2align 2,,3
 3610              		.global	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 3611              		.syntax unified
 3612              		.thumb
 3613              		.thumb_func
 3614              		.fpu fpv4-sp-d16
 3615              		.type	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %functio
 3616              	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
 3617              		@ args = 0, pretend = 0, frame = 4544
 3618              		@ frame_needed = 0, uses_anonymous_args = 0
 3619 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3620 0004 2DED048B 		vpush.64	{d8, d9}
 3621 0008 ADF58E5D 		sub	sp, sp, #4544
 3622 000c 85B0     		sub	sp, sp, #20
 3623 000e 8346     		mov	fp, r0
 3624 0010 1046     		mov	r0, r2
 3625 0012 0C46     		mov	r4, r1
 3626 0014 1192     		str	r2, [sp, #68]
 3627 0016 1A91     		str	r1, [sp, #104]
 3628 0018 2093     		str	r3, [sp, #128]
 3629 001a FFF7FEFF 		bl	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 3630 001e 092C     		cmp	r4, #9
 3631 0020 0690     		str	r0, [sp, #24]
 3632 0022 0ED9     		bls	.L444
 3633              	.L358:
 3634 0024 1A9A     		ldr	r2, [sp, #104]
 3635 0026 2098     		ldr	r0, [sp, #128]
 3636 0028 9149     		ldr	r1, .L454+8
 3637 002a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3638 002e 0123     		movs	r3, #1
 3639 0030 1D93     		str	r3, [sp, #116]
 3640              	.L441:
 3641 0032 1D98     		ldr	r0, [sp, #116]
 3642 0034 0DF58E5D 		add	sp, sp, #4544
 3643 0038 05B0     		add	sp, sp, #20
 3644              		@ sp needed
 3645 003a BDEC048B 		vldm	sp!, {d8-d9}
 3646 003e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3647              	.L444:
 3648 0042 4FF41273 		mov	r3, #584
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 65


 3649 0046 E340     		lsrs	r3, r3, r4
 3650 0048 DB43     		mvns	r3, r3
 3651 004a 13F00103 		ands	r3, r3, #1
 3652 004e 1D93     		str	r3, [sp, #116]
 3653 0050 E8D1     		bne	.L358
 3654 0052 884B     		ldr	r3, .L454+12
 3655 0054 D3F80831 		ldr	r3, [r3, #264]
 3656 0058 D806     		lsls	r0, r3, #27
 3657 005a 00F12083 		bmi	.L442
 3658 005e 0DF6C803 		addw	r3, sp, #2248
 3659 0062 1693     		str	r3, [sp, #88]
 3660              	.L361:
 3661 0064 9FED807B 		vldr.64	d7, .L454
 3662 0068 069B     		ldr	r3, [sp, #24]
 3663 006a 8DED127B 		vstr.64	d7, [sp, #72]
 3664 006e 002B     		cmp	r3, #0
 3665 0070 00F09780 		beq	.L367
 3666 0074 119B     		ldr	r3, [sp, #68]
 3667 0076 DFED808A 		vldr.32	s17, .L454+16
 3668 007a 169C     		ldr	r4, [sp, #88]
 3669 007c 03F28718 		addw	r8, r3, #391
 3670 0080 069B     		ldr	r3, [sp, #24]
 3671 0082 0DF1E809 		add	r9, sp, #232
 3672 0086 08EB030A 		add	r10, r8, r3
 3673 008a 0DF5B866 		add	r6, sp, #1472
 3674 008e 0027     		movs	r7, #0
 3675              	.L368:
 3676 0090 9FED757B 		vldr.64	d7, .L454
 3677 0094 18F8013F 		ldrb	r3, [r8, #1]!	@ zero_extendqisi2
 3678 0098 764A     		ldr	r2, .L454+12
 3679 009a C3F38003 		ubfx	r3, r3, #2, #1
 3680 009e D068     		ldr	r0, [r2, #12]
 3681 00a0 0093     		str	r3, [sp]
 3682 00a2 3946     		mov	r1, r7
 3683 00a4 A9EC027B 		vstmia.64	r9!, {d7}
 3684 00a8 0DF6CC03 		addw	r3, sp, #2252
 3685 00ac 2246     		mov	r2, r4
 3686 00ae FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 3687 00b2 10EE100A 		vmov	r0, s0
 3688 00b6 FFF7FEFF 		bl	__aeabi_f2d
 3689 00ba 94ED018A 		vldr.32	s16, [r4, #4]
 3690 00be DBED057A 		vldr.32	s15, [fp, #20]
 3691 00c2 DBED066A 		vldr.32	s13, [fp, #24]
 3692 00c6 94ED009A 		vldr.32	s18, [r4]
 3693 00ca 9BED047A 		vldr.32	s14, [fp, #16]
 3694 00ce C4ED028A 		vstr.32	s17, [r4, #8]
 3695 00d2 78EE677A 		vsub.f32	s15, s16, s15
 3696 00d6 39EE477A 		vsub.f32	s14, s18, s14
 3697 00da 27EEA70A 		vmul.f32	s0, s15, s15
 3698 00de CDE90401 		strd	r0, [sp, #16]
 3699 00e2 A6EEA60A 		vfma.f32	s0, s13, s13
 3700 00e6 0137     		adds	r7, r7, #1
 3701 00e8 A7EE070A 		vfma.f32	s0, s14, s14
 3702 00ec B5EE400A 		vcmp.f32	s0, #0
 3703 00f0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3704 00f4 F1EEC09A 		vsqrt.f32	s19, s0
 3705 00f8 00F1E782 		bmi	.L445
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 66


 3706              	.L364:
 3707 00fc 19EE900A 		vmov	r0, s19
 3708 0100 FFF7FEFF 		bl	__aeabi_f2d
 3709 0104 DBED087A 		vldr.32	s15, [fp, #32]
 3710 0108 DBED096A 		vldr.32	s13, [fp, #36]
 3711 010c 9BED077A 		vldr.32	s14, [fp, #28]
 3712 0110 78EE677A 		vsub.f32	s15, s16, s15
 3713 0114 39EE477A 		vsub.f32	s14, s18, s14
 3714 0118 27EEA70A 		vmul.f32	s0, s15, s15
 3715 011c C6E90201 		strd	r0, [r6, #8]
 3716 0120 A6EEA60A 		vfma.f32	s0, s13, s13
 3717 0124 A7EE070A 		vfma.f32	s0, s14, s14
 3718 0128 B5EE400A 		vcmp.f32	s0, #0
 3719 012c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3720 0130 F1EEC09A 		vsqrt.f32	s19, s0
 3721 0134 00F1D082 		bmi	.L446
 3722              	.L365:
 3723 0138 19EE900A 		vmov	r0, s19
 3724 013c FFF7FEFF 		bl	__aeabi_f2d
 3725 0140 DBED0B7A 		vldr.32	s15, [fp, #44]
 3726 0144 DBED0C6A 		vldr.32	s13, [fp, #48]
 3727 0148 9BED0A7A 		vldr.32	s14, [fp, #40]
 3728 014c 38EE678A 		vsub.f32	s16, s16, s15
 3729 0150 39EE479A 		vsub.f32	s18, s18, s14
 3730 0154 28EE080A 		vmul.f32	s0, s16, s16
 3731 0158 C6E90401 		strd	r0, [r6, #16]
 3732 015c A6EEA60A 		vfma.f32	s0, s13, s13
 3733 0160 A9EE090A 		vfma.f32	s0, s18, s18
 3734 0164 B5EE400A 		vcmp.f32	s0, #0
 3735 0168 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3736 016c B1EEC08A 		vsqrt.f32	s16, s0
 3737 0170 00F1B982 		bmi	.L447
 3738              	.L366:
 3739 0174 18EE100A 		vmov	r0, s16
 3740 0178 FFF7FEFF 		bl	__aeabi_f2d
 3741 017c DDE90423 		ldrd	r2, [sp, #16]
 3742 0180 E6E90601 		strd	r0, [r6, #24]!
 3743 0184 1046     		mov	r0, r2
 3744 0186 1946     		mov	r1, r3
 3745 0188 FFF7FEFF 		bl	__aeabi_dmul
 3746 018c 0246     		mov	r2, r0
 3747 018e 0B46     		mov	r3, r1
 3748 0190 DDE91201 		ldrd	r0, [sp, #72]
 3749 0194 FFF7FEFF 		bl	__aeabi_dadd
 3750 0198 D045     		cmp	r8, r10
 3751 019a CDE91201 		strd	r0, [sp, #72]
 3752 019e 7FF477AF 		bne	.L368
 3753              	.L367:
 3754 01a2 1A98     		ldr	r0, [sp, #104]
 3755 01a4 069C     		ldr	r4, [sp, #24]
 3756 01a6 119D     		ldr	r5, [sp, #68]
 3757 01a8 CDF834B0 		str	fp, [sp, #52]
 3758 01ac C300     		lsls	r3, r0, #3
 3759 01ae BAAE     		add	r6, sp, #744
 3760 01b0 1E44     		add	r6, r6, r3
 3761 01b2 1C96     		str	r6, [sp, #112]
 3762 01b4 169E     		ldr	r6, [sp, #88]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 67


 3763 01b6 1E44     		add	r6, r6, r3
 3764 01b8 1596     		str	r6, [sp, #84]
 3765 01ba 0DF50D66 		add	r6, sp, #2256
 3766 01be 1E44     		add	r6, r6, r3
 3767 01c0 0796     		str	r6, [sp, #28]
 3768 01c2 28AE     		add	r6, sp, #160
 3769 01c4 F318     		adds	r3, r6, r3
 3770 01c6 C0EB4071 		rsb	r1, r0, r0, lsl #29
 3771 01ca 04EBC402 		add	r2, r4, r4, lsl #3
 3772 01ce 2193     		str	r3, [sp, #132]
 3773 01d0 CB00     		lsls	r3, r1, #3
 3774 01d2 05F58475 		add	r5, r5, #264
 3775 01d6 1E93     		str	r3, [sp, #120]
 3776 01d8 D300     		lsls	r3, r2, #3
 3777 01da 1F93     		str	r3, [sp, #124]
 3778 01dc 05EB8403 		add	r3, r5, r4, lsl #2
 3779 01e0 1093     		str	r3, [sp, #64]
 3780 01e2 0223     		movs	r3, #2
 3781 01e4 1B95     		str	r5, [sp, #108]
 3782 01e6 1893     		str	r3, [sp, #96]
 3783 01e8 8346     		mov	fp, r0
 3784              	.L363:
 3785 01ea 169B     		ldr	r3, [sp, #88]
 3786 01ec 1A46     		mov	r2, r3
 3787 01ee 234B     		ldr	r3, .L454+20
 3788 01f0 1360     		str	r3, [r2]
 3789 01f2 069B     		ldr	r3, [sp, #24]
 3790 01f4 002B     		cmp	r3, #0
 3791 01f6 4AD0     		beq	.L369
 3792 01f8 0024     		movs	r4, #0
 3793 01fa DDF83480 		ldr	r8, [sp, #52]
 3794 01fe A146     		mov	r9, r4
 3795 0200 0DF5B865 		add	r5, sp, #1472
 3796 0204 9A46     		mov	r10, r3
 3797 0206 5C46     		mov	r4, fp
 3798              	.L375:
 3799 0208 002C     		cmp	r4, #0
 3800 020a 39D0     		beq	.L370
 3801 020c D5E90201 		ldrd	r0, [r5, #8]
 3802 0210 FFF7FEFF 		bl	__aeabi_d2f
 3803 0214 09EE100A 		vmov	s18, r0
 3804 0218 D5E90401 		ldrd	r0, [r5, #16]
 3805 021c FFF7FEFF 		bl	__aeabi_d2f
 3806 0220 08EE900A 		vmov	s17, r0
 3807 0224 D5E90601 		ldrd	r0, [r5, #24]
 3808 0228 FFF7FEFF 		bl	__aeabi_d2f
 3809 022c 09EBC907 		add	r7, r9, r9, lsl #3
 3810 0230 0DF50D63 		add	r3, sp, #2256
 3811 0234 08EE100A 		vmov	s16, r0
 3812 0238 03EBC707 		add	r7, r3, r7, lsl #3
 3813 023c 0021     		movs	r1, #0
 3814              	.L371:
 3815 023e 082C     		cmp	r4, #8
 3816 0240 B0EE481A 		vmov.f32	s2, s16
 3817 0244 F0EE680A 		vmov.f32	s1, s17
 3818 0248 B0EE490A 		vmov.f32	s0, s18
 3819 024c 4046     		mov	r0, r8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 68


 3820 024e 01F10106 		add	r6, r1, #1
 3821 0252 00F06A81 		beq	.L448
 3822              	.L372:
 3823 0256 FFF7FEFF 		bl	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 3824 025a B442     		cmp	r4, r6
 3825 025c A7EC020B 		vstmia.64	r7!, {d0}
 3826 0260 0ED0     		beq	.L370
 3827 0262 3146     		mov	r1, r6
 3828 0264 EBE7     		b	.L371
 3829              	.L455:
 3830 0266 00BF     		.align	3
 3831              	.L454:
 3832 0268 00000000 		.word	0
 3833 026c 00000000 		.word	0
 3834 0270 00000000 		.word	.LC22
 3835 0274 00000000 		.word	reprap
 3836 0278 00000000 		.word	0
 3837 027c 08000000 		.word	_ZTV11FixedMatrixIdLj32ELj9EE+8
 3838              	.L370:
 3839 0280 09F10109 		add	r9, r9, #1
 3840 0284 CA45     		cmp	r10, r9
 3841 0286 05F11805 		add	r5, r5, #24
 3842 028a BDD1     		bne	.L375
 3843 028c A346     		mov	fp, r4
 3844              	.L369:
 3845 028e AC4B     		ldr	r3, .L456+8
 3846 0290 D3F80831 		ldr	r3, [r3, #264]
 3847 0294 13F01003 		ands	r3, r3, #16
 3848 0298 1793     		str	r3, [sp, #92]
 3849 029a 40F09C81 		bne	.L449
 3850 029e A94B     		ldr	r3, .L456+12
 3851 02a0 BA93     		str	r3, [sp, #744]
 3852 02a2 BBF1000F 		cmp	fp, #0
 3853 02a6 00F09C80 		beq	.L384
 3854              	.L398:
 3855 02aa 119B     		ldr	r3, [sp, #68]
 3856 02ac D3F80801 		ldr	r0, [r3, #264]	@ float
 3857 02b0 FFF7FEFF 		bl	__aeabi_f2d
 3858 02b4 DDE93A23 		ldrd	r2, [sp, #232]
 3859 02b8 FFF7FEFF 		bl	__aeabi_dadd
 3860 02bc 1E9A     		ldr	r2, [sp, #120]
 3861 02be 0E90     		str	r0, [sp, #56]
 3862 02c0 01F10043 		add	r3, r1, #-2147483648
 3863 02c4 0832     		adds	r2, r2, #8
 3864 02c6 0F93     		str	r3, [sp, #60]
 3865 02c8 1492     		str	r2, [sp, #80]
 3866 02ca 1C9B     		ldr	r3, [sp, #112]
 3867 02cc 1F9A     		ldr	r2, [sp, #124]
 3868 02ce 0993     		str	r3, [sp, #36]
 3869 02d0 169B     		ldr	r3, [sp, #88]
 3870 02d2 CDF864B0 		str	fp, [sp, #100]
 3871 02d6 583A     		subs	r2, r2, #88
 3872 02d8 0892     		str	r2, [sp, #32]
 3873 02da 9946     		mov	r9, r3
 3874              	.L383:
 3875 02dc 99ED027B 		vldr.64	d7, [r9, #8]
 3876 02e0 149B     		ldr	r3, [sp, #80]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 69


 3877 02e2 099A     		ldr	r2, [sp, #36]
 3878 02e4 8DED047B 		vstr.64	d7, [sp, #16]
 3879 02e8 0DF50D64 		add	r4, sp, #2256
 3880 02ec 03EB020B 		add	fp, r3, r2
 3881              	.L380:
 3882 02f0 D4E90023 		ldrd	r2, [r4]
 3883 02f4 DDE90401 		ldrd	r0, [sp, #16]
 3884 02f8 FFF7FEFF 		bl	__aeabi_dmul
 3885 02fc 069B     		ldr	r3, [sp, #24]
 3886 02fe 012B     		cmp	r3, #1
 3887 0300 0646     		mov	r6, r0
 3888 0302 0F46     		mov	r7, r1
 3889 0304 04F1080A 		add	r10, r4, #8
 3890 0308 17D9     		bls	.L378
 3891 030a 089B     		ldr	r3, [sp, #32]
 3892 030c 083C     		subs	r4, r4, #8
 3893 030e 03EB0A08 		add	r8, r3, r10
 3894 0312 4D46     		mov	r5, r9
 3895              	.L379:
 3896 0314 D4E91423 		ldrd	r2, [r4, #80]
 3897 0318 D5E91401 		ldrd	r0, [r5, #80]
 3898 031c FFF7FEFF 		bl	__aeabi_dmul
 3899 0320 0246     		mov	r2, r0
 3900 0322 0B46     		mov	r3, r1
 3901 0324 3046     		mov	r0, r6
 3902 0326 3946     		mov	r1, r7
 3903 0328 FFF7FEFF 		bl	__aeabi_dadd
 3904 032c 4834     		adds	r4, r4, #72
 3905 032e 4445     		cmp	r4, r8
 3906 0330 0646     		mov	r6, r0
 3907 0332 0F46     		mov	r7, r1
 3908 0334 05F14805 		add	r5, r5, #72
 3909 0338 ECD1     		bne	.L379
 3910              	.L378:
 3911 033a 079B     		ldr	r3, [sp, #28]
 3912 033c 5345     		cmp	r3, r10
 3913 033e EBE80267 		strd	r6, [fp], #8
 3914 0342 5446     		mov	r4, r10
 3915 0344 D4D1     		bne	.L380
 3916 0346 DDE90E23 		ldrd	r2, [sp, #56]
 3917 034a DDE90401 		ldrd	r0, [sp, #16]
 3918 034e FFF7FEFF 		bl	__aeabi_dmul
 3919 0352 069B     		ldr	r3, [sp, #24]
 3920 0354 012B     		cmp	r3, #1
 3921 0356 0646     		mov	r6, r0
 3922 0358 0F46     		mov	r7, r1
 3923 035a 2DD9     		bls	.L381
 3924 035c 119B     		ldr	r3, [sp, #68]
 3925 035e CDF83090 		str	r9, [sp, #48]
 3926 0362 4C46     		mov	r4, r9
 3927 0364 DDF84090 		ldr	r9, [sp, #64]
 3928 0368 03F58675 		add	r5, r3, #268
 3929 036c 0DF1F008 		add	r8, sp, #240
 3930              	.L382:
 3931 0370 F8E80223 		ldrd	r2, [r8], #8
 3932 0374 55F8040B 		ldr	r0, [r5], #4	@ float
 3933 0378 CDE90423 		strd	r2, [sp, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 70


 3934 037c FFF7FEFF 		bl	__aeabi_f2d
 3935 0380 DDE90423 		ldrd	r2, [sp, #16]
 3936 0384 FFF7FEFF 		bl	__aeabi_dadd
 3937 0388 01F1004B 		add	fp, r1, #-2147483648
 3938 038c D4E91423 		ldrd	r2, [r4, #80]
 3939 0390 5946     		mov	r1, fp
 3940 0392 8246     		mov	r10, r0
 3941 0394 FFF7FEFF 		bl	__aeabi_dmul
 3942 0398 0246     		mov	r2, r0
 3943 039a 0B46     		mov	r3, r1
 3944 039c 3046     		mov	r0, r6
 3945 039e 3946     		mov	r1, r7
 3946 03a0 FFF7FEFF 		bl	__aeabi_dadd
 3947 03a4 A945     		cmp	r9, r5
 3948 03a6 0646     		mov	r6, r0
 3949 03a8 0F46     		mov	r7, r1
 3950 03aa 04F14804 		add	r4, r4, #72
 3951 03ae DFD1     		bne	.L382
 3952 03b0 CDE90AAB 		strd	r10, [sp, #40]
 3953 03b4 DDF83090 		ldr	r9, [sp, #48]
 3954              	.L381:
 3955 03b8 099B     		ldr	r3, [sp, #36]
 3956 03ba C3E90267 		strd	r6, [r3, #8]
 3957 03be 5033     		adds	r3, r3, #80
 3958 03c0 0993     		str	r3, [sp, #36]
 3959 03c2 159B     		ldr	r3, [sp, #84]
 3960 03c4 09F10809 		add	r9, r9, #8
 3961 03c8 9945     		cmp	r9, r3
 3962 03ca 87D1     		bne	.L383
 3963 03cc DDF864B0 		ldr	fp, [sp, #100]
 3964              	.L377:
 3965 03d0 179B     		ldr	r3, [sp, #92]
 3966 03d2 33B1     		cbz	r3, .L384
 3967 03d4 0BF10103 		add	r3, fp, #1
 3968 03d8 5A46     		mov	r2, fp
 3969 03da BAA9     		add	r1, sp, #744
 3970 03dc 5A48     		ldr	r0, .L456+16
 3971 03de FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3972              	.L384:
 3973 03e2 28A9     		add	r1, sp, #160
 3974 03e4 5A46     		mov	r2, fp
 3975 03e6 BAA8     		add	r0, sp, #744
 3976 03e8 FFF7FEFF 		bl	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 3977 03ec 544B     		ldr	r3, .L456+8
 3978 03ee D3F80831 		ldr	r3, [r3, #264]
 3979 03f2 D906     		lsls	r1, r3, #27
 3980 03f4 00F10E81 		bmi	.L450
 3981              	.L385:
 3982 03f8 28AA     		add	r2, sp, #160
 3983 03fa 5946     		mov	r1, fp
 3984 03fc 0D98     		ldr	r0, [sp, #52]
 3985 03fe FFF7FEFF 		bl	_ZN21HangprinterKinematics6AdjustEjPKd
 3986 0402 DDE92801 		ldrd	r0, [sp, #160]
 3987 0406 FFF7FEFF 		bl	__aeabi_d2f
 3988 040a 2290     		str	r0, [sp, #136]	@ float
 3989 040c DDE92A01 		ldrd	r0, [sp, #168]
 3990 0410 FFF7FEFF 		bl	__aeabi_d2f
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 71


 3991 0414 2390     		str	r0, [sp, #140]	@ float
 3992 0416 DDE92C01 		ldrd	r0, [sp, #176]
 3993 041a FFF7FEFF 		bl	__aeabi_d2f
 3994 041e 484B     		ldr	r3, .L456+8
 3995 0420 2490     		str	r0, [sp, #144]	@ float
 3996 0422 0322     		movs	r2, #3
 3997 0424 D868     		ldr	r0, [r3, #12]
 3998 0426 22A9     		add	r1, sp, #136
 3999 0428 FFF7FEFF 		bl	_ZN4Move20AdjustMotorPositionsEPKfj
 4000 042c 9FED427B 		vldr.64	d7, .L456
 4001 0430 069B     		ldr	r3, [sp, #24]
 4002 0432 8DED047B 		vstr.64	d7, [sp, #16]
 4003 0436 002B     		cmp	r3, #0
 4004 0438 55D0     		beq	.L390
 4005 043a CDF830B0 		str	fp, [sp, #48]
 4006 043e DDF86C80 		ldr	r8, [sp, #108]
 4007 0442 DDF840B0 		ldr	fp, [sp, #64]
 4008 0446 0DF5B866 		add	r6, sp, #1472
 4009 044a 0DF1E80A 		add	r10, sp, #232
 4010 044e 0DF5F479 		add	r9, sp, #488
 4011 0452 2EAF     		add	r7, sp, #184
 4012              	.L392:
 4013 0454 06F10805 		add	r5, r6, #8
 4014 0458 28AC     		add	r4, sp, #160
 4015              	.L391:
 4016 045a F4E80223 		ldrd	r2, [r4], #8
 4017 045e D5E90001 		ldrd	r0, [r5]
 4018 0462 FFF7FEFF 		bl	__aeabi_dadd
 4019 0466 A742     		cmp	r7, r4
 4020 0468 E5E80201 		strd	r0, [r5], #8
 4021 046c F5D1     		bne	.L391
 4022 046e D6E90601 		ldrd	r0, [r6, #24]
 4023 0472 FFF7FEFF 		bl	__aeabi_d2f
 4024 0476 0990     		str	r0, [sp, #36]
 4025 0478 D6E90401 		ldrd	r0, [r6, #16]
 4026 047c FFF7FEFF 		bl	__aeabi_d2f
 4027 0480 0890     		str	r0, [sp, #32]
 4028 0482 D6E90201 		ldrd	r0, [r6, #8]
 4029 0486 FFF7FEFF 		bl	__aeabi_d2f
 4030 048a 9DED091A 		vldr.32	s2, [sp, #36]	@ int
 4031 048e DDED080A 		vldr.32	s1, [sp, #32]	@ int
 4032 0492 00EE100A 		vmov	s0, r0
 4033 0496 25A9     		add	r1, sp, #148
 4034 0498 0D98     		ldr	r0, [sp, #52]
 4035 049a FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 4036 049e 9DED278A 		vldr.32	s16, [sp, #156]
 4037 04a2 18EE100A 		vmov	r0, s16
 4038 04a6 FFF7FEFF 		bl	__aeabi_f2d
 4039 04aa F8EC017A 		vldmia.32	r8!, {s15}
 4040 04ae 78EE277A 		vadd.f32	s15, s16, s15
 4041 04b2 EAE80201 		strd	r0, [r10], #8
 4042 04b6 17EE900A 		vmov	r0, s15
 4043 04ba FFF7FEFF 		bl	__aeabi_f2d
 4044 04be 0246     		mov	r2, r0
 4045 04c0 0B46     		mov	r3, r1
 4046 04c2 E9E80223 		strd	r2, [r9], #8
 4047 04c6 FFF7FEFF 		bl	__aeabi_dmul
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 72


 4048 04ca 0246     		mov	r2, r0
 4049 04cc 0B46     		mov	r3, r1
 4050 04ce DDE90401 		ldrd	r0, [sp, #16]
 4051 04d2 FFF7FEFF 		bl	__aeabi_dadd
 4052 04d6 C345     		cmp	fp, r8
 4053 04d8 06F11806 		add	r6, r6, #24
 4054 04dc CDE90401 		strd	r0, [sp, #16]
 4055 04e0 B8D1     		bne	.L392
 4056 04e2 DDF830B0 		ldr	fp, [sp, #48]
 4057              	.L390:
 4058 04e6 0698     		ldr	r0, [sp, #24]
 4059 04e8 FFF7FEFF 		bl	__aeabi_ui2d
 4060 04ec 0246     		mov	r2, r0
 4061 04ee 0B46     		mov	r3, r1
 4062 04f0 0446     		mov	r4, r0
 4063 04f2 0D46     		mov	r5, r1
 4064 04f4 DDE90401 		ldrd	r0, [sp, #16]
 4065 04f8 FFF7FEFF 		bl	__aeabi_ddiv
 4066 04fc FFF7FEFF 		bl	__aeabi_d2f
 4067 0500 00EE100A 		vmov	s0, r0
 4068 0504 B5EE400A 		vcmp.f32	s0, #0
 4069 0508 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4070 050c B1EEC08A 		vsqrt.f32	s16, s0
 4071 0510 00F1EC80 		bmi	.L451
 4072              	.L393:
 4073 0514 0A4B     		ldr	r3, .L456+8
 4074 0516 D3F80831 		ldr	r3, [r3, #264]
 4075 051a DA06     		lsls	r2, r3, #27
 4076 051c 6ED4     		bmi	.L452
 4077              	.L394:
 4078 051e 189B     		ldr	r3, [sp, #96]
 4079 0520 012B     		cmp	r3, #1
 4080 0522 13D0     		beq	.L395
 4081 0524 0123     		movs	r3, #1
 4082 0526 1893     		str	r3, [sp, #96]
 4083 0528 5FE6     		b	.L363
 4084              	.L448:
 4085 052a 0529     		cmp	r1, #5
 4086 052c 6CD9     		bls	.L373
 4087 052e 3146     		mov	r1, r6
 4088 0530 91E6     		b	.L372
 4089              	.L457:
 4090 0532 00BFAFF3 		.align	3
 4090      0080
 4091              	.L456:
 4092 0538 00000000 		.word	0
 4093 053c 00000000 		.word	0
 4094 0540 00000000 		.word	reprap
 4095 0544 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 4096 0548 6C000000 		.word	.LC25
 4097              	.L395:
 4098 054c 6A4B     		ldr	r3, .L458
 4099 054e DDF834B0 		ldr	fp, [sp, #52]
 4100 0552 D3F80831 		ldr	r3, [r3, #264]
 4101 0556 DB06     		lsls	r3, r3, #27
 4102 0558 0DD5     		bpl	.L396
 4103 055a 169E     		ldr	r6, [sp, #88]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 73


 4104 055c BA96     		str	r6, [sp, #744]
 4105 055e 0022     		movs	r2, #0
 4106 0560 DD23     		movs	r3, #221
 4107 0562 BAA9     		add	r1, sp, #744
 4108 0564 5846     		mov	r0, fp
 4109 0566 3270     		strb	r2, [r6]
 4110 0568 BB93     		str	r3, [sp, #748]
 4111 056a FFF7FEFF 		bl	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 4112 056e 3146     		mov	r1, r6
 4113 0570 6248     		ldr	r0, .L458+4
 4114 0572 FFF7FEFF 		bl	debugPrintf
 4115              	.L396:
 4116 0576 2246     		mov	r2, r4
 4117 0578 2B46     		mov	r3, r5
 4118 057a DDE91201 		ldrd	r0, [sp, #72]
 4119 057e FFF7FEFF 		bl	__aeabi_ddiv
 4120 0582 FFF7FEFF 		bl	__aeabi_d2f
 4121 0586 00EE100A 		vmov	s0, r0
 4122 058a B5EE400A 		vcmp.f32	s0, #0
 4123 058e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4124 0592 F1EEC08A 		vsqrt.f32	s17, s0
 4125 0596 00F1AC80 		bmi	.L453
 4126              	.L397:
 4127 059a 18EE100A 		vmov	r0, s16
 4128 059e FFF7FEFF 		bl	__aeabi_f2d
 4129 05a2 CDE90201 		strd	r0, [sp, #8]
 4130 05a6 18EE900A 		vmov	r0, s17
 4131 05aa FFF7FEFF 		bl	__aeabi_f2d
 4132 05ae 209C     		ldr	r4, [sp, #128]
 4133 05b0 069B     		ldr	r3, [sp, #24]
 4134 05b2 1A9A     		ldr	r2, [sp, #104]
 4135 05b4 CDE90001 		strd	r0, [sp]
 4136 05b8 5149     		ldr	r1, .L458+8
 4137 05ba 2046     		mov	r0, r4
 4138 05bc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4139 05c0 4D4A     		ldr	r2, .L458
 4140 05c2 2368     		ldr	r3, [r4]
 4141 05c4 5068     		ldr	r0, [r2, #4]
 4142 05c6 4D4A     		ldr	r2, .L458+4
 4143 05c8 8021     		movs	r1, #128
 4144 05ca FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4145 05ce 0123     		movs	r3, #1
 4146 05d0 8BF85831 		strb	r3, [fp, #344]
 4147 05d4 2DE5     		b	.L441
 4148              	.L449:
 4149 05d6 5B46     		mov	r3, fp
 4150 05d8 069A     		ldr	r2, [sp, #24]
 4151 05da 1699     		ldr	r1, [sp, #88]
 4152 05dc 4948     		ldr	r0, .L458+12
 4153 05de FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 4154 05e2 454B     		ldr	r3, .L458
 4155 05e4 484A     		ldr	r2, .L458+16
 4156 05e6 D3F80831 		ldr	r3, [r3, #264]
 4157 05ea BA92     		str	r2, [sp, #744]
 4158 05ec 03F01003 		and	r3, r3, #16
 4159 05f0 1793     		str	r3, [sp, #92]
 4160 05f2 BBF1000F 		cmp	fp, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 74


 4161 05f6 7FF458AE 		bne	.L398
 4162 05fa E9E6     		b	.L377
 4163              	.L452:
 4164 05fc 069A     		ldr	r2, [sp, #24]
 4165 05fe 4348     		ldr	r0, .L458+20
 4166 0600 7AA9     		add	r1, sp, #488
 4167 0602 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 4168 0606 8AE7     		b	.L394
 4169              	.L373:
 4170 0608 FFF7FEFF 		bl	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 4171 060c 3146     		mov	r1, r6
 4172 060e A7EC020B 		vstmia.64	r7!, {d0}
 4173 0612 14E6     		b	.L371
 4174              	.L450:
 4175 0614 0BF10103 		add	r3, fp, #1
 4176 0618 5A46     		mov	r2, fp
 4177 061a BAA9     		add	r1, sp, #744
 4178 061c 3C48     		ldr	r0, .L458+24
 4179 061e FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 4180 0622 5A46     		mov	r2, fp
 4181 0624 28A9     		add	r1, sp, #160
 4182 0626 3B48     		ldr	r0, .L458+28
 4183 0628 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 4184 062c 3A48     		ldr	r0, .L458+32
 4185 062e FFF7FEFF 		bl	debugPrintf
 4186 0632 069B     		ldr	r3, [sp, #24]
 4187 0634 7BB3     		cbz	r3, .L386
 4188 0636 CDF810B0 		str	fp, [sp, #16]
 4189 063a DFF8E4A0 		ldr	r10, .L458+40
 4190 063e DDF86C80 		ldr	r8, [sp, #108]
 4191 0642 DDF884B0 		ldr	fp, [sp, #132]
 4192 0646 0DF50D69 		add	r9, sp, #2256
 4193              	.L389:
 4194 064a 58F8040B 		ldr	r0, [r8], #4	@ float
 4195 064e FFF7FEFF 		bl	__aeabi_f2d
 4196 0652 049B     		ldr	r3, [sp, #16]
 4197 0654 0646     		mov	r6, r0
 4198 0656 0F46     		mov	r7, r1
 4199 0658 8BB1     		cbz	r3, .L387
 4200 065a 4D46     		mov	r5, r9
 4201 065c 28AC     		add	r4, sp, #160
 4202              	.L388:
 4203 065e F5E80223 		ldrd	r2, [r5], #8
 4204 0662 F4E80201 		ldrd	r0, [r4], #8
 4205 0666 FFF7FEFF 		bl	__aeabi_dmul
 4206 066a 0246     		mov	r2, r0
 4207 066c 0B46     		mov	r3, r1
 4208 066e 3046     		mov	r0, r6
 4209 0670 3946     		mov	r1, r7
 4210 0672 FFF7FEFF 		bl	__aeabi_dadd
 4211 0676 A345     		cmp	fp, r4
 4212 0678 0646     		mov	r6, r0
 4213 067a 0F46     		mov	r7, r1
 4214 067c EFD1     		bne	.L388
 4215              	.L387:
 4216 067e 3B46     		mov	r3, r7
 4217 0680 3246     		mov	r2, r6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 75


 4218 0682 5046     		mov	r0, r10
 4219 0684 FFF7FEFF 		bl	debugPrintf
 4220 0688 109B     		ldr	r3, [sp, #64]
 4221 068a 4345     		cmp	r3, r8
 4222 068c 09F14809 		add	r9, r9, #72
 4223 0690 DBD1     		bne	.L389
 4224 0692 DDF810B0 		ldr	fp, [sp, #16]
 4225              	.L386:
 4226 0696 2148     		ldr	r0, .L458+36
 4227 0698 FFF7FEFF 		bl	debugPrintf
 4228 069c ACE6     		b	.L385
 4229              	.L442:
 4230 069e 0DF6C802 		addw	r2, sp, #2248
 4231 06a2 1D9C     		ldr	r4, [sp, #116]
 4232 06a4 8DF8C848 		strb	r4, [sp, #2248]
 4233 06a8 DD23     		movs	r3, #221
 4234 06aa 0DF5B861 		add	r1, sp, #1472
 4235 06ae 1446     		mov	r4, r2
 4236 06b0 5846     		mov	r0, fp
 4237 06b2 1692     		str	r2, [sp, #88]
 4238 06b4 CDF8C025 		str	r2, [sp, #1472]
 4239 06b8 CDF8C435 		str	r3, [sp, #1476]
 4240 06bc FFF7FEFF 		bl	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 4241 06c0 2146     		mov	r1, r4
 4242 06c2 0E48     		ldr	r0, .L458+4
 4243 06c4 FFF7FEFF 		bl	debugPrintf
 4244 06c8 CCE4     		b	.L361
 4245              	.L445:
 4246 06ca FFF7FEFF 		bl	sqrtf
 4247 06ce 94ED009A 		vldr.32	s18, [r4]
 4248 06d2 94ED018A 		vldr.32	s16, [r4, #4]
 4249 06d6 11E5     		b	.L364
 4250              	.L446:
 4251 06d8 FFF7FEFF 		bl	sqrtf
 4252 06dc 94ED009A 		vldr.32	s18, [r4]
 4253 06e0 94ED018A 		vldr.32	s16, [r4, #4]
 4254 06e4 28E5     		b	.L365
 4255              	.L447:
 4256 06e6 FFF7FEFF 		bl	sqrtf
 4257 06ea 43E5     		b	.L366
 4258              	.L451:
 4259 06ec FFF7FEFF 		bl	sqrtf
 4260 06f0 10E7     		b	.L393
 4261              	.L453:
 4262 06f2 FFF7FEFF 		bl	sqrtf
 4263 06f6 50E7     		b	.L397
 4264              	.L459:
 4265              		.align	2
 4266              	.L458:
 4267 06f8 00000000 		.word	reprap
 4268 06fc 54000000 		.word	.LC23
 4269 0700 C8000000 		.word	.LC32
 4270 0704 58000000 		.word	.LC24
 4271 0708 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 4272 070c B0000000 		.word	.LC31
 4273 0710 7C000000 		.word	.LC26
 4274 0714 8C000000 		.word	.LC27
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 76


 4275 0718 98000000 		.word	.LC28
 4276 071c AC000000 		.word	.LC30
 4277 0720 A4000000 		.word	.LC29
 4278              		.size	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN21H
 4279              		.global	_ZTV21HangprinterKinematics
 4280              		.weak	_ZTV11FixedMatrixIdLj32ELj9EE
 4281              		.section	.rodata._ZTV11FixedMatrixIdLj32ELj9EE,"aG",%progbits,_ZTV11FixedMatrixIdLj32ELj9EE,comdat
 4282              		.align	2
 4283              		.type	_ZTV11FixedMatrixIdLj32ELj9EE, %object
 4284              		.size	_ZTV11FixedMatrixIdLj32ELj9EE, 32
 4285              	_ZTV11FixedMatrixIdLj32ELj9EE:
 4286 0000 00000000 		.word	0
 4287 0004 00000000 		.word	0
 4288 0008 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 4289 000c 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 4290 0010 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EEclEjj
 4291 0014 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 4292 0018 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED1Ev
 4293 001c 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 4294              		.weak	_ZTV11FixedMatrixIdLj9ELj10EE
 4295              		.section	.rodata._ZTV11FixedMatrixIdLj9ELj10EE,"aG",%progbits,_ZTV11FixedMatrixIdLj9ELj10EE,comdat
 4296              		.align	2
 4297              		.type	_ZTV11FixedMatrixIdLj9ELj10EE, %object
 4298              		.size	_ZTV11FixedMatrixIdLj9ELj10EE, 32
 4299              	_ZTV11FixedMatrixIdLj9ELj10EE:
 4300 0000 00000000 		.word	0
 4301 0004 00000000 		.word	0
 4302 0008 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 4303 000c 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 4304 0010 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 4305 0014 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 4306 0018 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED1Ev
 4307 001c 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 4308              		.section	.rodata
 4309              		.align	2
 4310              		.set	.LANCHOR0,. + 0
 4311              	.LC0:
 4312 0000 33338242 		.word	1115829043
 4313 0004 33338242 		.word	1115829043
 4314 0008 33338242 		.word	1115829043
 4315 000c 33338242 		.word	1115829043
 4316 0010 66664842 		.word	1112041062
 4317              	.LC1:
 4318 0014 02000000 		.word	2
 4319 0018 02000000 		.word	2
 4320 001c 02000000 		.word	2
 4321 0020 01000000 		.word	1
 4322 0024 01000000 		.word	1
 4323              	.LC2:
 4324 0028 01000000 		.word	1
 4325 002c 01000000 		.word	1
 4326 0030 01000000 		.word	1
 4327 0034 01000000 		.word	1
 4328 0038 01000000 		.word	1
 4329              	.LC3:
 4330 003c 14000000 		.word	20
 4331 0040 14000000 		.word	20
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 77


 4332 0044 14000000 		.word	20
 4333 0048 14000000 		.word	20
 4334 004c 05000000 		.word	5
 4335              	.LC4:
 4336 0050 FF000000 		.word	255
 4337 0054 FF000000 		.word	255
 4338 0058 FF000000 		.word	255
 4339 005c FF000000 		.word	255
 4340 0060 2C010000 		.word	300
 4341              	.LC5:
 4342 0064 20000000 		.word	32
 4343 0068 20000000 		.word	32
 4344 006c 20000000 		.word	32
 4345 0070 20000000 		.word	32
 4346 0074 20000000 		.word	32
 4347              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 4348              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 4349              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 4350              	_ZL28cpu_irq_prev_interrupt_state:
 4351 0000 00       		.space	1
 4352              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 4353              		.align	2
 4354              		.type	_ZL32cpu_irq_critical_section_counter, %object
 4355              		.size	_ZL32cpu_irq_critical_section_counter, 4
 4356              	_ZL32cpu_irq_critical_section_counter:
 4357 0000 00000000 		.space	4
 4358              		.section	.rodata._ZL14DefaultAnchorA,"a",%progbits
 4359              		.align	2
 4360              		.set	.LANCHOR1,. + 0
 4361              		.type	_ZL14DefaultAnchorA, %object
 4362              		.size	_ZL14DefaultAnchorA, 12
 4363              	_ZL14DefaultAnchorA:
 4364 0000 00000000 		.word	0
 4365 0004 29A4B3C4 		.word	-994859991
 4366 0008 000058C3 		.word	-1017643008
 4367              		.section	.rodata._ZL14DefaultAnchorB,"a",%progbits
 4368              		.align	2
 4369              		.set	.LANCHOR2,. + 0
 4370              		.type	_ZL14DefaultAnchorB, %object
 4371              		.size	_ZL14DefaultAnchorB, 12
 4372              	_ZL14DefaultAnchorB:
 4373 0000 E1929B44 		.word	1151046369
 4374 0004 D7A33344 		.word	1144234967
 4375 0008 000058C3 		.word	-1017643008
 4376              		.section	.rodata._ZL14DefaultAnchorC,"a",%progbits
 4377              		.align	2
 4378              		.set	.LANCHOR3,. + 0
 4379              		.type	_ZL14DefaultAnchorC, %object
 4380              		.size	_ZL14DefaultAnchorC, 12
 4381              	_ZL14DefaultAnchorC:
 4382 0000 E1929BC4 		.word	-996437279
 4383 0004 D7A33344 		.word	1144234967
 4384 0008 000058C3 		.word	-1017643008
 4385              		.section	.rodata._ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRe
 4386              		.align	2
 4387              	.LC22:
 4388 0000 48616E67 		.ascii	"Hangprinter calibration with %d factors requested b"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 78


 4388      7072696E 
 4388      74657220 
 4388      63616C69 
 4388      62726174 
 4389 0033 7574206F 		.ascii	"ut only 3, 6, and 9 supported\000"
 4389      6E6C7920 
 4389      332C2036 
 4389      2C20616E 
 4389      64203920 
 4390 0051 000000   		.space	3
 4391              	.LC23:
 4392 0054 25730A00 		.ascii	"%s\012\000"
 4393              	.LC24:
 4394 0058 44657269 		.ascii	"Derivative matrix\000"
 4394      76617469 
 4394      7665206D 
 4394      61747269 
 4394      7800
 4395 006a 0000     		.space	2
 4396              	.LC25:
 4397 006c 4E6F726D 		.ascii	"Normal matrix\000"
 4397      616C206D 
 4397      61747269 
 4397      7800
 4398 007a 0000     		.space	2
 4399              	.LC26:
 4400 007c 536F6C76 		.ascii	"Solved matrix\000"
 4400      6564206D 
 4400      61747269 
 4400      7800
 4401 008a 0000     		.space	2
 4402              	.LC27:
 4403 008c 536F6C75 		.ascii	"Solution\000"
 4403      74696F6E 
 4403      00
 4404 0095 000000   		.space	3
 4405              	.LC28:
 4406 0098 52657369 		.ascii	"Residuals:\000"
 4406      6475616C 
 4406      733A00
 4407 00a3 00       		.space	1
 4408              	.LC29:
 4409 00a4 2025372E 		.ascii	" %7.4f\000"
 4409      346600
 4410 00ab 00       		.space	1
 4411              	.LC30:
 4412 00ac 0A00     		.ascii	"\012\000"
 4413 00ae 0000     		.space	2
 4414              	.LC31:
 4415 00b0 45787065 		.ascii	"Expected probe error\000"
 4415      63746564 
 4415      2070726F 
 4415      62652065 
 4415      72726F72 
 4416 00c5 000000   		.space	3
 4417              	.LC32:
 4418 00c8 43616C69 		.ascii	"Calibrated %d factors using %d points, deviation be"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 79


 4418      62726174 
 4418      65642025 
 4418      64206661 
 4418      63746F72 
 4419 00fb 666F7265 		.ascii	"fore %.3f after %.3f\000"
 4419      20252E33 
 4419      66206166 
 4419      74657220 
 4419      252E3366 
 4420              		.section	.rodata._ZN21HangprinterKinematics6RecalcEv.str1.4,"aMS",%progbits,1
 4421              		.align	2
 4422              	.LC9:
 4423 0000 50696574 		.ascii	"Pietari Line Lengths origins: %f\012\000"
 4423      61726920 
 4423      4C696E65 
 4423      204C656E 
 4423      67746873 
 4424 0022 0000     		.space	2
 4425              	.LC10:
 4426 0024 50696574 		.ascii	"Pietari k2 value %f\012\000"
 4426      61726920 
 4426      6B322076 
 4426      616C7565 
 4426      2025660A 
 4427 0039 000000   		.space	3
 4428              	.LC11:
 4429 003c 50696574 		.ascii	"Pietari k0 value %f\012\000"
 4429      61726920 
 4429      6B302076 
 4429      616C7565 
 4429      2025660A 
 4430 0051 000000   		.space	3
 4431              	.LC12:
 4432 0054 52656361 		.ascii	"Recalced params\012Da2: %.2f, Db2: %.2f, Dc2: %.2f,"
 4432      6C636564 
 4432      20706172 
 4432      616D730A 
 4432      4461323A 
 4433 0084 20586162 		.ascii	" Xab: %.2f, Xbc: %.2f, Xca: %.2f, Yab: %.2f, Ybc: %"
 4433      3A20252E 
 4433      32662C20 
 4433      5862633A 
 4433      20252E32 
 4434 00b7 2E32662C 		.ascii	".2f, Yca: %.2f, Zab: %.2f, Zbc: %.2f, Zca: %.2f, P:"
 4434      20596361 
 4434      3A20252E 
 4434      32662C20 
 4434      5A61623A 
 4435 00ea 20252E32 		.ascii	" %.2f, P2: %.2f, Q: %.2f, R: %.2f, U: %.2f, A: %.2f"
 4435      662C2050 
 4435      323A2025 
 4435      2E32662C 
 4435      20513A20 
 4436 011d 0A00     		.ascii	"\012\000"
 4437              		.section	.rodata._ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%
 4438              		.align	2
 4439              	.LC13:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 80


 4440 0000 4B696E65 		.ascii	"Kinematics is Hangprinter\012Anchor positions:\012%"
 4440      6D617469 
 4440      63732069 
 4440      73204861 
 4440      6E677072 
 4441 002d 2E32662C 		.ascii	".2f, %.2f, %.2f\012%.2f, %.2f, %.2f\012%.2f, %.2f, "
 4441      20252E32 
 4441      662C2025 
 4441      2E32660A 
 4441      252E3266 
 4442 005a 252E3266 		.ascii	"%.2f\012%.2f\012Print radius:\012%.1f\012Segments/s"
 4442      0A252E32 
 4442      660A5072 
 4442      696E7420 
 4442      72616469 
 4443 0081 3A0A2564 		.ascii	":\012%d\012Min segment length:\012%.2f\012Spool bui"
 4443      0A4D696E 
 4443      20736567 
 4443      6D656E74 
 4443      206C656E 
 4444 00a8 6C647570 		.ascii	"ldup factor:\012%.4f\012Spool radii:\012%.2f, %.2f,"
 4444      20666163 
 4444      746F723A 
 4444      0A252E34 
 4444      660A5370 
 4445 00d2 20252E32 		.ascii	" %.2f, %.2f\012Mechanical Advantage:\012%d, %d, %d,"
 4445      662C2025 
 4445      2E32660A 
 4445      4D656368 
 4445      616E6963 
 4446 00ff 2025640A 		.ascii	" %d\012Lines per spool:\012%d, %d, %d, %d\012Motor "
 4446      4C696E65 
 4446      73207065 
 4446      72207370 
 4446      6F6F6C3A 
 4447 0129 67656172 		.ascii	"gear teeth\012%d, %d, %d, %d\012Spool gear teeth\012"
 4447      20746565 
 4447      74680A25 
 4447      642C2025 
 4447      642C2025 
 4448 0154 25642C20 		.ascii	"%d, %d, %d, %d\012Full steps per revolution\012%d, "
 4448      25642C20 
 4448      25642C20 
 4448      25640A46 
 4448      756C6C20 
 4449 0181 25642C20 		.ascii	"%d, %d, %d\000"
 4449      25642C20 
 4449      256400
 4450              	.LC14:
 4451 018c 513A4275 		.ascii	"Q:Buildup fac %.4f\012R:Spool r %.2f, %.2f, %.2f, %"
 4451      696C6475 
 4451      70206661 
 4451      6320252E 
 4451      34660A52 
 4452 01bc 2E32660A 		.ascii	".2f\012U:Mech Adv %d, %d, %d, %d\012O:Lines/spool %"
 4452      553A4D65 
 4452      63682041 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 81


 4452      64762025 
 4452      642C2025 
 4453 01e9 642C2025 		.ascii	"d, %d, %d, %d\012L:Motor gear teeth %d, %d, %d, %d\012"
 4453      642C2025 
 4453      642C2025 
 4453      640A4C3A 
 4453      4D6F746F 
 4454 0219 483A5370 		.ascii	"H:Spool gear teeth %d, %d, %d, %d\012J:Full steps/r"
 4454      6F6F6C20 
 4454      67656172 
 4454      20746565 
 4454      74682025 
 4455 0249 65762025 		.ascii	"ev %d, %d, %d, %d\000"
 4455      642C2025 
 4455      642C2025 
 4455      642C2025 
 4455      6400
 4456              		.section	.rodata._ZNK21HangprinterKinematics15PrintParametersERK9StringRef.str1.4,"aMS",%progbits,
 4457              		.align	2
 4458              	.LC19:
 4459 0000 416E6368 		.ascii	"Anchor coordinates (%.2f,%.2f,%.2f) (%.2f,%.2f,%.2f"
 4459      6F722063 
 4459      6F6F7264 
 4459      696E6174 
 4459      65732028 
 4460 0033 29202825 		.ascii	") (%.2f,%.2f,%.2f)\012\000"
 4460      2E32662C 
 4460      252E3266 
 4460      2C252E32 
 4460      66290A00 
 4461              		.section	.rodata._ZNK21HangprinterKinematics16InverseTransformEfffPf.str1.4,"aMS",%progbits,1
 4462              		.align	2
 4463              	.LC15:
 4464 0000 496E7665 		.ascii	"Inverse Transform Pietari: S: %.2f, T: %.2f, halfB:"
 4464      72736520 
 4464      5472616E 
 4464      73666F72 
 4464      6D205069 
 4465 0033 20252E32 		.ascii	" %.2f, C: %.2f\012\000"
 4465      662C2043 
 4465      3A20252E 
 4465      32660A00 
 4466 0043 00       		.space	1
 4467              	.LC16:
 4468 0044 6D616368 		.ascii	"machinepos before Pietari %f\000"
 4468      696E6570 
 4468      6F732062 
 4468      65666F72 
 4468      65205069 
 4469 0061 000000   		.space	3
 4470              	.LC17:
 4471 0064 6D616368 		.ascii	"machinepos after Pietari %f\000"
 4471      696E6570 
 4471      6F732061 
 4471      66746572 
 4471      20506965 
 4472              	.LC18:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 82


 4473 0080 4D6F746F 		.ascii	"Motor %.2f,%.2f,%.2f to Cartesian %.2f,%.2f,%.2f\012"
 4473      7220252E 
 4473      32662C25 
 4473      2E32662C 
 4473      252E3266 
 4474 00b1 00       		.ascii	"\000"
 4475              		.section	.rodata._ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef.str1.4,"aMS",%prog
 4476              		.align	2
 4477              	.LC8:
 4478 0000 686F6D65 		.ascii	"homeall.g\000"
 4478      616C6C2E 
 4478      6700
 4479              		.section	.rodata._ZNK21HangprinterKinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 4480              		.align	2
 4481              	.LC6:
 4482 0000 41424344 		.ascii	"ABCD\000"
 4482      00
 4483              		.section	.rodata._ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore.str1.4,"aMS",
 4484              		.align	2
 4485              	.LC20:
 4486 0000 3B204861 		.ascii	"; Hangprinter parameters\012\000"
 4486      6E677072 
 4486      696E7465 
 4486      72207061 
 4486      72616D65 
 4487 001a 0000     		.space	2
 4488              	.LC21:
 4489 001c 50696574 		.ascii	"Pietari M669 K6 A%.3f:%.3f:%.3f B%.3f:%.3f:%.3f C%."
 4489      61726920 
 4489      4D363639 
 4489      204B3620 
 4489      41252E33 
 4490 004f 33663A25 		.ascii	"3f:%.3f:%.3f D%.3f P%.1f Q%.6f R%.3f:%.3f:%.3f:%.3f"
 4490      2E33663A 
 4490      252E3366 
 4490      2044252E 
 4490      33662050 
 4491 0082 0A00     		.ascii	"\012\000"
 4492              		.section	.rodata._ZNK21HangprinterKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 4493              		.align	2
 4494              	.LC7:
 4495 0000 48616E67 		.ascii	"Hangprinter\000"
 4495      7072696E 
 4495      74657200 
 4496              		.section	.rodata._ZTV21HangprinterKinematics,"a",%progbits
 4497              		.align	2
 4498              		.set	.LANCHOR4,. + 0
 4499              		.type	_ZTV21HangprinterKinematics, %object
 4500              		.size	_ZTV21HangprinterKinematics, 128
 4501              	_ZTV21HangprinterKinematics:
 4502 0000 00000000 		.word	0
 4503 0004 00000000 		.word	0
 4504 0008 00000000 		.word	_ZNK21HangprinterKinematics7GetNameEb
 4505 000c 00000000 		.word	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 4506 0010 00000000 		.word	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 4507 0014 00000000 		.word	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf
 4508 0018 00000000 		.word	_ZNK21HangprinterKinematics23SupportsAutoCalibrationEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccUepqe4.s 			page 83


 4509 001c 00000000 		.word	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 4510 0020 00000000 		.word	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv
 4511 0024 00000000 		.word	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore
 4512 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 4513 002c 00000000 		.word	_ZNK21HangprinterKinematics11IsReachableEffb
 4514 0030 00000000 		.word	_ZNK21HangprinterKinematics13LimitPositionEPfjmb
 4515 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 4516 0038 00000000 		.word	_ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf
 4517 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 4518 0040 00000000 		.word	_ZNK21HangprinterKinematics16NumHomingButtonsEj
 4519 0044 00000000 		.word	_ZNK21HangprinterKinematics17HomingButtonNamesEv
 4520 0048 00000000 		.word	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 4521 004c 00000000 		.word	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef
 4522 0050 00000000 		.word	_ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj
 4523 0054 00000000 		.word	_ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 4524 0058 00000000 		.word	_ZNK21HangprinterKinematics13GetHomingModeEv
 4525 005c 00000000 		.word	_ZNK21HangprinterKinematics16AxesAssumedHomedEm
 4526 0060 00000000 		.word	_ZNK21HangprinterKinematics15MustBeHomedAxesEmb
 4527 0064 00000000 		.word	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore
 4528 0068 00000000 		.word	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf
 4529 006c 00000000 		.word	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj
 4530 0070 00000000 		.word	_ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj
 4531 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 4532 0078 00000000 		.word	_ZN21HangprinterKinematicsD1Ev
 4533 007c 00000000 		.word	_ZN21HangprinterKinematicsD0Ev
 4534              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
