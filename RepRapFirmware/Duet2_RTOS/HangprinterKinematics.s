ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 1


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 2


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 3


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
 133 0004 00000000 		.word	.LC11
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
 153 0004 00000000 		.word	.LC11
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 4


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
 189 0004 00000000 		.word	.LC12
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
 204 0000 2431     		adds	r1, r1, #36
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
 222 0004 D0ED387A 		vldr.32	s15, [r0, #224]
 223 0008 E0EE000A 		vfma.f32	s1, s0, s0
 224 000c F4EEE70A 		vcmpe.f32	s1, s15
 225 0010 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 226 0014 4CBF     		ite	mi
 227 0016 0120     		movmi	r0, #1
 228 0018 0020     		movpl	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 5


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 6


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 7


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 8


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 9


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 10


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 11


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
 613              		@ args = 12, pretend = 0, frame = 48
 614              		@ frame_needed = 0, uses_anonymous_args = 0
 615 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 616 0004 D1ED017A 		vldr.32	s15, [r1, #4]
 617 0008 91ED024A 		vldr.32	s8, [r1, #8]
 618 000c D0ED062A 		vldr.32	s5, [r0, #24]
 619 0010 90ED087A 		vldr.32	s14, [r0, #32]
 620 0014 D0ED0B6A 		vldr.32	s13, [r0, #44]
 621 0018 90ED093A 		vldr.32	s6, [r0, #36]
 622 001c D0ED0C3A 		vldr.32	s7, [r0, #48]
 623 0020 91ED006A 		vldr.32	s12, [r1]
 624 0024 D0ED044A 		vldr.32	s9, [r0, #16]
 625 0028 90ED075A 		vldr.32	s10, [r0, #28]
 626 002c 90ED0A2A 		vldr.32	s4, [r0, #40]
 627 0030 D0ED0D5A 		vldr.32	s11, [r0, #52]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 12


 628 0034 764B     		ldr	r3, .L76
 629 0036 DFF8E0B1 		ldr	fp, .L76+8
 630 003a 2DED068B 		vpush.64	{d8, d9, d10}
 631 003e D0ED058A 		vldr.32	s17, [r0, #20]
 632 0042 9FED74AA 		vldr.32	s20, .L76+4
 633 0046 77EEE88A 		vsub.f32	s17, s15, s17
 634 004a 72EEC42A 		vsub.f32	s5, s5, s8
 635 004e 68EEA88A 		vmul.f32	s17, s17, s17
 636 0052 37EEC77A 		vsub.f32	s14, s15, s14
 637 0056 77EEE66A 		vsub.f32	s13, s15, s13
 638 005a E2EEA28A 		vfma.f32	s17, s5, s5
 639 005e 0446     		mov	r4, r0
 640 0060 1746     		mov	r7, r2
 641 0062 67EE079A 		vmul.f32	s19, s14, s14
 642 0066 66EEA6AA 		vmul.f32	s21, s13, s13
 643 006a 33EE447A 		vsub.f32	s14, s6, s8
 644 006e 27EEA79A 		vmul.f32	s18, s15, s15
 645 0072 73EEC47A 		vsub.f32	s15, s7, s8
 646 0076 76EE646A 		vsub.f32	s13, s12, s9
 647 007a E7EE079A 		vfma.f32	s19, s14, s14
 648 007e 0FCB     		ldm	r3, {r0, r1, r2, r3}
 649 0080 A6EE069A 		vfma.f32	s18, s12, s12
 650 0084 8FB0     		sub	sp, sp, #60
 651 0086 06AD     		add	r5, sp, #24
 652 0088 E7EEA7AA 		vfma.f32	s21, s15, s15
 653 008c 85E80F00 		stm	r5, {r0, r1, r2, r3}
 654 0090 E6EEA68A 		vfma.f32	s17, s13, s13
 655 0094 D034     		adds	r4, r4, #208
 656 0096 0DF10C09 		add	r9, sp, #12
 657 009a 36EE457A 		vsub.f32	s14, s12, s10
 658 009e 75EEC47A 		vsub.f32	s15, s11, s8
 659 00a2 36EE426A 		vsub.f32	s12, s12, s4
 660 00a6 E7EE079A 		vfma.f32	s19, s14, s14
 661 00aa 0DF12808 		add	r8, sp, #40
 662 00ae 0026     		movs	r6, #0
 663 00b0 E6EE06AA 		vfma.f32	s21, s12, s12
 664 00b4 4FF0030A 		mov	r10, #3
 665 00b8 A7EEA79A 		vfma.f32	s18, s15, s15
 666 00bc B0EE680A 		vmov.f32	s0, s17
 667 00c0 B5EE400A 		vcmp.f32	s0, #0
 668 00c4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 669 00c8 CDED028A 		vstr.32	s17, [sp, #8]
 670 00cc CDED039A 		vstr.32	s19, [sp, #12]
 671 00d0 CDED04AA 		vstr.32	s21, [sp, #16]
 672 00d4 8DED059A 		vstr.32	s18, [sp, #20]
 673 00d8 B1EEC08A 		vsqrt.f32	s16, s0
 674 00dc 21D4     		bmi	.L73
 675              	.L54:
 676 00de 032E     		cmp	r6, #3
 677 00e0 F4EC017A 		vldmia.32	r4!, {s15}
 678 00e4 78EE677A 		vsub.f32	s15, s16, s15
 679 00e8 E8EC017A 		vstmia.32	r8!, {s15}
 680 00ec 1CD0     		beq	.L74
 681 00ee 77EE8A7A 		vadd.f32	s15, s15, s20
 682 00f2 17EE900A 		vmov	r0, s15
 683 00f6 FFF7FEFF 		bl	__aeabi_f2d
 684 00fa CDF800A0 		str	r10, [sp]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 13


 685 00fe 0246     		mov	r2, r0
 686 0100 0B46     		mov	r3, r1
 687 0102 5846     		mov	r0, fp
 688 0104 55F82610 		ldr	r1, [r5, r6, lsl #2]
 689 0108 FFF7FEFF 		bl	debugPrintf
 690 010c B9EC010A 		vldmia.32	r9!, {s0}
 691 0110 B5EE400A 		vcmp.f32	s0, #0
 692 0114 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 693 0118 06F10106 		add	r6, r6, #1
 694 011c B1EEC08A 		vsqrt.f32	s16, s0
 695 0120 DDD5     		bpl	.L54
 696              	.L73:
 697 0122 FFF7FEFF 		bl	sqrtf
 698 0126 DAE7     		b	.L54
 699              	.L74:
 700 0128 17EE900A 		vmov	r0, s15
 701 012c FFF7FEFF 		bl	__aeabi_f2d
 702 0130 0246     		mov	r2, r0
 703 0132 0B46     		mov	r3, r1
 704 0134 3848     		ldr	r0, .L76+8
 705 0136 3949     		ldr	r1, .L76+12
 706 0138 FFF7FEFF 		bl	debugPrintf
 707 013c F5EEC08A 		vcmpe.f32	s17, #0
 708 0140 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 709 0144 0EDD     		ble	.L55
 710 0146 F5EEC09A 		vcmpe.f32	s19, #0
 711 014a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 712 014e 09DD     		ble	.L55
 713 0150 F5EEC0AA 		vcmpe.f32	s21, #0
 714 0154 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 715 0158 04DD     		ble	.L55
 716 015a B5EEC09A 		vcmpe.f32	s18, #0
 717 015e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 718 0162 14DC     		bgt	.L75
 719              	.L55:
 720 0164 1F9B     		ldr	r3, [sp, #124]
 721 0166 2E4F     		ldr	r7, .L76+16
 722 0168 1C1F     		subs	r4, r3, #4
 723 016a 03F10C06 		add	r6, r3, #12
 724              	.L61:
 725 016e 54F8042F 		ldr	r2, [r4, #4]!
 726 0172 55F8041B 		ldr	r1, [r5], #4
 727 0176 3846     		mov	r0, r7
 728 0178 FFF7FEFF 		bl	debugPrintf
 729 017c A642     		cmp	r6, r4
 730 017e F6D1     		bne	.L61
 731 0180 0023     		movs	r3, #0
 732 0182 1846     		mov	r0, r3
 733 0184 0FB0     		add	sp, sp, #60
 734              		@ sp needed
 735 0186 BDEC068B 		vldm	sp!, {d8-d10}
 736 018a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 737              	.L75:
 738 018e D7ED007A 		vldr.32	s15, [r7]
 739 0192 9DED0A0A 		vldr.32	s0, [sp, #40]
 740 0196 20EE270A 		vmul.f32	s0, s0, s15
 741 019a FFF7FEFF 		bl	lrintf
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 14


 742 019e D7ED017A 		vldr.32	s15, [r7, #4]
 743 01a2 1F9B     		ldr	r3, [sp, #124]
 744 01a4 9DED0B0A 		vldr.32	s0, [sp, #44]
 745 01a8 1860     		str	r0, [r3]
 746 01aa 20EE270A 		vmul.f32	s0, s0, s15
 747 01ae FFF7FEFF 		bl	lrintf
 748 01b2 D7ED027A 		vldr.32	s15, [r7, #8]
 749 01b6 1F9B     		ldr	r3, [sp, #124]
 750 01b8 9DED0C0A 		vldr.32	s0, [sp, #48]
 751 01bc 5860     		str	r0, [r3, #4]
 752 01be 20EE270A 		vmul.f32	s0, s0, s15
 753 01c2 FFF7FEFF 		bl	lrintf
 754 01c6 DDED0D7A 		vldr.32	s15, [sp, #52]
 755 01ca 9FED167A 		vldr.32	s14, .L76+20
 756 01ce 9FED165A 		vldr.32	s10, .L76+24
 757 01d2 DFED165A 		vldr.32	s11, .L76+28
 758 01d6 97ED036A 		vldr.32	s12, [r7, #12]
 759 01da 1F9B     		ldr	r3, [sp, #124]
 760 01dc 37EE877A 		vadd.f32	s14, s15, s14
 761 01e0 F0EE086A 		vmov.f32	s13, #3.0e+0
 762 01e4 67EE266A 		vmul.f32	s13, s14, s13
 763 01e8 9860     		str	r0, [r3, #8]
 764 01ea 86EE850A 		vdiv.f32	s0, s13, s10
 765 01ee A7EE250A 		vfma.f32	s0, s14, s11
 766 01f2 77EEC07A 		vsub.f32	s15, s15, s0
 767 01f6 27EE860A 		vmul.f32	s0, s15, s12
 768 01fa FFF7FEFF 		bl	lrintf
 769 01fe 1F9A     		ldr	r2, [sp, #124]
 770 0200 0123     		movs	r3, #1
 771 0202 D060     		str	r0, [r2, #12]
 772 0204 1846     		mov	r0, r3
 773 0206 0FB0     		add	sp, sp, #60
 774              		@ sp needed
 775 0208 BDEC068B 		vldm	sp!, {d8-d10}
 776 020c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 777              	.L77:
 778              		.align	2
 779              	.L76:
 780 0210 00000000 		.word	.LANCHOR0
 781 0214 0020B444 		.word	1152655360
 782 0218 00000000 		.word	.LC14
 783 021c 00000000 		.word	.LC9
 784 0220 20000000 		.word	.LC15
 785 0224 3D52F244 		.word	1156731453
 786 0228 E69E9A46 		.word	1184538342
 787 022c 0AD7233B 		.word	992204554
 788              		.size	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK21HangprinterKinematic
 789              		.section	.text._ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj,"ax",%progbits
 790              		.align	1
 791              		.p2align 2,,3
 792              		.global	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj
 793              		.syntax unified
 794              		.thumb
 795              		.thumb_func
 796              		.fpu fpv4-sp-d16
 797              		.type	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj, %function
 798              	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 15


 799              		@ args = 0, pretend = 0, frame = 0
 800              		@ frame_needed = 0, uses_anonymous_args = 0
 801 0000 10B5     		push	{r4, lr}
 802 0002 00EB8304 		add	r4, r0, r3, lsl #2
 803 0006 D4ED247A 		vldr.32	s15, [r4, #144]	@ int
 804 000a 9FED0F7A 		vldr.32	s14, .L80
 805 000e F8EE677A 		vcvt.f32.u32	s15, s15
 806 0012 27EE800A 		vmul.f32	s0, s15, s0
 807 0016 80EE070A 		vdiv.f32	s0, s0, s14
 808 001a FFF7FEFF 		bl	roundf
 809 001e BDEEC07A 		vcvt.s32.f32	s14, s0
 810 0022 D4ED285A 		vldr.32	s11, [r4, #160]
 811 0026 94ED106A 		vldr.32	s12, [r4, #64]
 812 002a 94ED2C0A 		vldr.32	s0, [r4, #176]
 813 002e D4ED306A 		vldr.32	s13, [r4, #192]
 814 0032 B8EEC77A 		vcvt.f32.s32	s14, s14
 815 0036 C7EE257A 		vdiv.f32	s15, s14, s11
 816 003a 77EE867A 		vadd.f32	s15, s15, s12
 817 003e 97EEA70A 		vfnms.f32	s0, s15, s15
 818 0042 80EE260A 		vdiv.f32	s0, s0, s13
 819 0046 10BD     		pop	{r4, pc}
 820              	.L81:
 821              		.align	2
 822              	.L80:
 823 0048 0000B443 		.word	1135869952
 824              		.size	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj, .-_ZN21HangprinterKinematics22Mot
 825              		.section	.text._ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef,"ax",%progbits
 826              		.align	1
 827              		.p2align 2,,3
 828              		.global	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef
 829              		.syntax unified
 830              		.thumb
 831              		.thumb_func
 832              		.fpu fpv4-sp-d16
 833              		.type	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef, %function
 834              	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef:
 835              		@ args = 4, pretend = 0, frame = 0
 836              		@ frame_needed = 0, uses_anonymous_args = 0
 837 0000 08B5     		push	{r3, lr}
 838 0002 0349     		ldr	r1, .L84
 839 0004 0298     		ldr	r0, [sp, #8]
 840 0006 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 841 000a 0020     		movs	r0, #0
 842 000c 08BD     		pop	{r3, pc}
 843              	.L85:
 844 000e 00BF     		.align	2
 845              	.L84:
 846 0010 00000000 		.word	.LC16
 847              		.size	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef, .-_ZNK21HangprinterKinematic
 848              		.section	.text._ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 849              		.align	1
 850              		.p2align 2,,3
 851              		.global	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf
 852              		.syntax unified
 853              		.thumb
 854              		.thumb_func
 855              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 16


 856              		.type	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 857              	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 858              		@ args = 0, pretend = 0, frame = 8
 859              		@ frame_needed = 0, uses_anonymous_args = 0
 860 0000 92ED010A 		vldr.32	s0, [r2, #4]
 861 0004 D2ED007A 		vldr.32	s15, [r2]
 862 0008 00B5     		push	{lr}
 863 000a 20EE000A 		vmul.f32	s0, s0, s0
 864 000e 2DED028B 		vpush.64	{d8}
 865 0012 A7EEA70A 		vfma.f32	s0, s15, s15
 866 0016 83B0     		sub	sp, sp, #12
 867 0018 B5EE400A 		vcmp.f32	s0, #0
 868 001c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 869 0020 B1EEC08A 		vsqrt.f32	s16, s0
 870 0024 39D4     		bmi	.L95
 871              	.L87:
 872 0026 DFED1F7A 		vldr.32	s15, .L96
 873 002a B4EEE78A 		vcmpe.f32	s16, s15
 874 002e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 875 0032 2DDD     		ble	.L93
 876 0034 1C4B     		ldr	r3, .L96+4
 877 0036 5B68     		ldr	r3, [r3, #4]	@ unaligned
 878 0038 93ED5F0A 		vldr.32	s0, [r3, #380]
 879 003c D3ED607A 		vldr.32	s15, [r3, #384]
 880 0040 B4EE400A 		vcmp.f32	s0, s0
 881 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 882 0048 06D6     		bvs	.L90
 883 004a B4EEE70A 		vcmpe.f32	s0, s15
 884 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 885 0052 58BF     		it	pl
 886 0054 B0EE670A 		vmovpl.f32	s0, s15
 887              	.L90:
 888 0058 D3ED6B0A 		vldr.32	s1, [r3, #428]
 889 005c D3ED6C7A 		vldr.32	s15, [r3, #432]
 890 0060 F4EE600A 		vcmp.f32	s1, s1
 891 0064 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 892 0068 06D6     		bvs	.L91
 893 006a F4EEE70A 		vcmpe.f32	s1, s15
 894 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 895 0072 58BF     		it	pl
 896 0074 F0EE670A 		vmovpl.f32	s1, s15
 897              	.L91:
 898 0078 C0EE880A 		vdiv.f32	s1, s1, s16
 899 007c 0846     		mov	r0, r1
 900 007e 80EE080A 		vdiv.f32	s0, s0, s16
 901 0082 03B0     		add	sp, sp, #12
 902              		@ sp needed
 903 0084 BDEC028B 		vldm	sp!, {d8}
 904 0088 5DF804EB 		ldr	lr, [sp], #4
 905 008c FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 906              	.L93:
 907 0090 03B0     		add	sp, sp, #12
 908              		@ sp needed
 909 0092 BDEC028B 		vldm	sp!, {d8}
 910 0096 5DF804FB 		ldr	pc, [sp], #4
 911              	.L95:
 912 009a 0191     		str	r1, [sp, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 17


 913 009c FFF7FEFF 		bl	sqrtf
 914 00a0 0199     		ldr	r1, [sp, #4]
 915 00a2 C0E7     		b	.L87
 916              	.L97:
 917              		.align	2
 918              	.L96:
 919 00a4 0AD7233C 		.word	1008981770
 920 00a8 00000000 		.word	reprap
 921              		.size	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK21HangprinterKinemati
 922              		.section	.text._ZN21HangprinterKinematicsD0Ev,"axG",%progbits,_ZN21HangprinterKinematicsD5Ev,comda
 923              		.align	1
 924              		.p2align 2,,3
 925              		.weak	_ZN21HangprinterKinematicsD0Ev
 926              		.syntax unified
 927              		.thumb
 928              		.thumb_func
 929              		.fpu fpv4-sp-d16
 930              		.type	_ZN21HangprinterKinematicsD0Ev, %function
 931              	_ZN21HangprinterKinematicsD0Ev:
 932              		@ args = 0, pretend = 0, frame = 0
 933              		@ frame_needed = 0, uses_anonymous_args = 0
 934 0000 10B5     		push	{r4, lr}
 935 0002 4FF49871 		mov	r1, #304
 936 0006 0446     		mov	r4, r0
 937 0008 FFF7FEFF 		bl	_ZdlPvj
 938 000c 2046     		mov	r0, r4
 939 000e 10BD     		pop	{r4, pc}
 940              		.size	_ZN21HangprinterKinematicsD0Ev, .-_ZN21HangprinterKinematicsD0Ev
 941              		.section	.text._ZN11FixedMatrixIdLj32ELj3EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EED5Ev,c
 942              		.align	1
 943              		.p2align 2,,3
 944              		.weak	_ZN11FixedMatrixIdLj32ELj3EED0Ev
 945              		.syntax unified
 946              		.thumb
 947              		.thumb_func
 948              		.fpu fpv4-sp-d16
 949              		.type	_ZN11FixedMatrixIdLj32ELj3EED0Ev, %function
 950              	_ZN11FixedMatrixIdLj32ELj3EED0Ev:
 951              		@ args = 0, pretend = 0, frame = 0
 952              		@ frame_needed = 0, uses_anonymous_args = 0
 953 0000 10B5     		push	{r4, lr}
 954 0002 4FF44271 		mov	r1, #776
 955 0006 0446     		mov	r4, r0
 956 0008 FFF7FEFF 		bl	_ZdlPvj
 957 000c 2046     		mov	r0, r4
 958 000e 10BD     		pop	{r4, pc}
 959              		.size	_ZN11FixedMatrixIdLj32ELj3EED0Ev, .-_ZN11FixedMatrixIdLj32ELj3EED0Ev
 960              		.section	.text._ZN11FixedMatrixIdLj32ELj9EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EED5Ev,c
 961              		.align	1
 962              		.p2align 2,,3
 963              		.weak	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 964              		.syntax unified
 965              		.thumb
 966              		.thumb_func
 967              		.fpu fpv4-sp-d16
 968              		.type	_ZN11FixedMatrixIdLj32ELj9EED0Ev, %function
 969              	_ZN11FixedMatrixIdLj32ELj9EED0Ev:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 18


 970              		@ args = 0, pretend = 0, frame = 0
 971              		@ frame_needed = 0, uses_anonymous_args = 0
 972 0000 10B5     		push	{r4, lr}
 973 0002 40F60811 		movw	r1, #2312
 974 0006 0446     		mov	r4, r0
 975 0008 FFF7FEFF 		bl	_ZdlPvj
 976 000c 2046     		mov	r0, r4
 977 000e 10BD     		pop	{r4, pc}
 978              		.size	_ZN11FixedMatrixIdLj32ELj9EED0Ev, .-_ZN11FixedMatrixIdLj32ELj9EED0Ev
 979              		.section	.text._ZN11FixedMatrixIdLj9ELj10EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EED5Ev,c
 980              		.align	1
 981              		.p2align 2,,3
 982              		.weak	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 983              		.syntax unified
 984              		.thumb
 985              		.thumb_func
 986              		.fpu fpv4-sp-d16
 987              		.type	_ZN11FixedMatrixIdLj9ELj10EED0Ev, %function
 988              	_ZN11FixedMatrixIdLj9ELj10EED0Ev:
 989              		@ args = 0, pretend = 0, frame = 0
 990              		@ frame_needed = 0, uses_anonymous_args = 0
 991 0000 10B5     		push	{r4, lr}
 992 0002 4FF43671 		mov	r1, #728
 993 0006 0446     		mov	r4, r0
 994 0008 FFF7FEFF 		bl	_ZdlPvj
 995 000c 2046     		mov	r0, r4
 996 000e 10BD     		pop	{r4, pc}
 997              		.size	_ZN11FixedMatrixIdLj9ELj10EED0Ev, .-_ZN11FixedMatrixIdLj9ELj10EED0Ev
 998              		.section	.text._ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore,"ax",%progbits
 999              		.align	1
 1000              		.p2align 2,,3
 1001              		.global	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore
 1002              		.syntax unified
 1003              		.thumb
 1004              		.thumb_func
 1005              		.fpu fpv4-sp-d16
 1006              		.type	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore, %function
 1007              	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore:
 1008              		@ args = 0, pretend = 0, frame = 0
 1009              		@ frame_needed = 0, uses_anonymous_args = 0
 1010              		@ link register save eliminated.
 1011 0000 90F82C21 		ldrb	r2, [r0, #300]	@ zero_extendqisi2
 1012 0004 0AB9     		cbnz	r2, .L108
 1013 0006 0120     		movs	r0, #1
 1014 0008 7047     		bx	lr
 1015              	.L108:
 1016 000a 0368     		ldr	r3, [r0]
 1017 000c DB69     		ldr	r3, [r3, #28]
 1018 000e 1847     		bx	r3
 1019              		.size	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore, .-_ZNK21HangprinterKinematics1
 1020              		.section	.text._ZNK21HangprinterKinematics13LimitPositionEPfjmb,"ax",%progbits
 1021              		.align	1
 1022              		.p2align 2,,3
 1023              		.global	_ZNK21HangprinterKinematics13LimitPositionEPfjmb
 1024              		.syntax unified
 1025              		.thumb
 1026              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 19


 1027              		.fpu fpv4-sp-d16
 1028              		.type	_ZNK21HangprinterKinematics13LimitPositionEPfjmb, %function
 1029              	_ZNK21HangprinterKinematics13LimitPositionEPfjmb:
 1030              		@ args = 4, pretend = 0, frame = 8
 1031              		@ frame_needed = 0, uses_anonymous_args = 0
 1032 0000 03F00703 		and	r3, r3, #7
 1033 0004 072B     		cmp	r3, #7
 1034 0006 01D0     		beq	.L129
 1035 0008 0020     		movs	r0, #0
 1036 000a 7047     		bx	lr
 1037              	.L129:
 1038 000c D1ED016A 		vldr.32	s13, [r1, #4]
 1039 0010 91ED007A 		vldr.32	s14, [r1]
 1040 0014 90ED386A 		vldr.32	s12, [r0, #224]
 1041 0018 00B5     		push	{lr}
 1042 001a 66EEA67A 		vmul.f32	s15, s13, s13
 1043 001e 2DED028B 		vpush.64	{d8}
 1044 0022 E7EE077A 		vfma.f32	s15, s14, s14
 1045 0026 83B0     		sub	sp, sp, #12
 1046 0028 F4EEC67A 		vcmpe.f32	s15, s12
 1047 002c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1048 0030 1EDC     		bgt	.L130
 1049 0032 0020     		movs	r0, #0
 1050              	.L111:
 1051 0034 1C4B     		ldr	r3, .L132
 1052 0036 D1ED027A 		vldr.32	s15, [r1, #8]
 1053 003a 5B68     		ldr	r3, [r3, #4]
 1054 003c 03F5F962 		add	r2, r3, #1992
 1055 0040 92ED007A 		vldr.32	s14, [r2]
 1056 0044 F4EEC77A 		vcmpe.f32	s15, s14
 1057 0048 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1058 004c 08D4     		bmi	.L128
 1059 004e 03F2A473 		addw	r3, r3, #1956
 1060 0052 93ED007A 		vldr.32	s14, [r3]
 1061 0056 F4EEC77A 		vcmpe.f32	s15, s14
 1062 005a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1063 005e 02DD     		ble	.L110
 1064              	.L128:
 1065 0060 81ED027A 		vstr.32	s14, [r1, #8]
 1066 0064 0120     		movs	r0, #1
 1067              	.L110:
 1068 0066 03B0     		add	sp, sp, #12
 1069              		@ sp needed
 1070 0068 BDEC028B 		vldm	sp!, {d8}
 1071 006c 5DF804FB 		ldr	pc, [sp], #4
 1072              	.L130:
 1073 0070 86EE270A 		vdiv.f32	s0, s12, s15
 1074 0074 B5EE400A 		vcmp.f32	s0, #0
 1075 0078 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1076 007c B1EEC08A 		vsqrt.f32	s16, s0
 1077 0080 09D4     		bmi	.L131
 1078              	.L113:
 1079 0082 0120     		movs	r0, #1
 1080 0084 28EE077A 		vmul.f32	s14, s16, s14
 1081 0088 68EE266A 		vmul.f32	s13, s16, s13
 1082 008c 81ED007A 		vstr.32	s14, [r1]
 1083 0090 C1ED016A 		vstr.32	s13, [r1, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 20


 1084 0094 CEE7     		b	.L111
 1085              	.L131:
 1086 0096 0191     		str	r1, [sp, #4]
 1087 0098 FFF7FEFF 		bl	sqrtf
 1088 009c 0199     		ldr	r1, [sp, #4]
 1089 009e 91ED007A 		vldr.32	s14, [r1]
 1090 00a2 D1ED016A 		vldr.32	s13, [r1, #4]
 1091 00a6 ECE7     		b	.L113
 1092              	.L133:
 1093              		.align	2
 1094              	.L132:
 1095 00a8 00000000 		.word	reprap
 1096              		.size	_ZNK21HangprinterKinematics13LimitPositionEPfjmb, .-_ZNK21HangprinterKinematics13LimitPositi
 1097              		.section	.text._Z14elongationCalcf,"ax",%progbits
 1098              		.align	1
 1099              		.p2align 2,,3
 1100              		.global	_Z14elongationCalcf
 1101              		.syntax unified
 1102              		.thumb
 1103              		.thumb_func
 1104              		.fpu fpv4-sp-d16
 1105              		.type	_Z14elongationCalcf, %function
 1106              	_Z14elongationCalcf:
 1107              		@ args = 0, pretend = 0, frame = 0
 1108              		@ frame_needed = 0, uses_anonymous_args = 0
 1109              		@ link register save eliminated.
 1110 0000 DFED087A 		vldr.32	s15, .L135
 1111 0004 9FED086A 		vldr.32	s12, .L135+4
 1112 0008 DFED086A 		vldr.32	s13, .L135+8
 1113 000c 70EE277A 		vadd.f32	s15, s0, s15
 1114 0010 B0EE087A 		vmov.f32	s14, #3.0e+0
 1115 0014 27EE877A 		vmul.f32	s14, s15, s14
 1116 0018 87EE060A 		vdiv.f32	s0, s14, s12
 1117 001c A7EEA60A 		vfma.f32	s0, s15, s13
 1118 0020 7047     		bx	lr
 1119              	.L136:
 1120 0022 00BF     		.align	2
 1121              	.L135:
 1122 0024 3D52F244 		.word	1156731453
 1123 0028 E69E9A46 		.word	1184538342
 1124 002c 0AD7233B 		.word	992204554
 1125              		.size	_Z14elongationCalcf, .-_Z14elongationCalcf
 1126              		.section	.text._Z17elongationCalcABCSt6vectorIfSaIfEEf,"ax",%progbits
 1127              		.align	1
 1128              		.p2align 2,,3
 1129              		.global	_Z17elongationCalcABCSt6vectorIfSaIfEEf
 1130              		.syntax unified
 1131              		.thumb
 1132              		.thumb_func
 1133              		.fpu fpv4-sp-d16
 1134              		.type	_Z17elongationCalcABCSt6vectorIfSaIfEEf, %function
 1135              	_Z17elongationCalcABCSt6vectorIfSaIfEEf:
 1136              		@ args = 0, pretend = 0, frame = 0
 1137              		@ frame_needed = 0, uses_anonymous_args = 0
 1138              		@ link register save eliminated.
 1139 0000 DFED097A 		vldr.32	s15, .L138
 1140 0004 9FED097A 		vldr.32	s14, .L138+4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 21


 1141 0008 9FED096A 		vldr.32	s12, .L138+8
 1142 000c DFED096A 		vldr.32	s13, .L138+12
 1143 0010 F0EE005A 		vmov.f32	s11, #2.0e+0
 1144 0014 E0EE257A 		vfma.f32	s15, s0, s11
 1145 0018 27EE877A 		vmul.f32	s14, s15, s14
 1146 001c 87EE060A 		vdiv.f32	s0, s14, s12
 1147 0020 A7EEA60A 		vfma.f32	s0, s15, s13
 1148 0024 7047     		bx	lr
 1149              	.L139:
 1150 0026 00BF     		.align	2
 1151              	.L138:
 1152 0028 00004843 		.word	1128792064
 1153 002c 009D2941 		.word	1093246208
 1154 0030 E69E9A46 		.word	1184538342
 1155 0034 0AD7233B 		.word	992204554
 1156              		.size	_Z17elongationCalcABCSt6vectorIfSaIfEEf, .-_Z17elongationCalcABCSt6vectorIfSaIfEEf
 1157              		.section	.text._ZN21HangprinterKinematics6RecalcEv,"ax",%progbits
 1158              		.align	1
 1159              		.p2align 2,,3
 1160              		.global	_ZN21HangprinterKinematics6RecalcEv
 1161              		.syntax unified
 1162              		.thumb
 1163              		.thumb_func
 1164              		.fpu fpv4-sp-d16
 1165              		.type	_ZN21HangprinterKinematics6RecalcEv, %function
 1166              	_ZN21HangprinterKinematics6RecalcEv:
 1167              		@ args = 0, pretend = 0, frame = 8
 1168              		@ frame_needed = 0, uses_anonymous_args = 0
 1169 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1170 0004 D0ED045A 		vldr.32	s11, [r0, #16]
 1171 0008 90ED055A 		vldr.32	s10, [r0, #20]
 1172 000c D0ED0B4A 		vldr.32	s9, [r0, #44]
 1173 0010 90ED066A 		vldr.32	s12, [r0, #24]
 1174 0014 D0ED0C2A 		vldr.32	s5, [r0, #48]
 1175 0018 90ED084A 		vldr.32	s8, [r0, #32]
 1176 001c D0ED0A3A 		vldr.32	s7, [r0, #40]
 1177 0020 90ED093A 		vldr.32	s6, [r0, #36]
 1178 0024 2DED068B 		vpush.64	{d8, d9, d10}
 1179 0028 74EEC51A 		vsub.f32	s3, s9, s10
 1180 002c 90ED078A 		vldr.32	s16, [r0, #28]
 1181 0030 90ED0EAA 		vldr.32	s20, [r0, #56]
 1182 0034 C0ED411A 		vstr.32	s3, [r0, #260]
 1183 0038 24EEE57A 		vnmul.f32	s14, s9, s11
 1184 003c 32EEC62A 		vsub.f32	s4, s5, s12
 1185 0040 62EEC56A 		vnmul.f32	s13, s5, s10
 1186 0044 A8EE217A 		vfma.f32	s14, s16, s3
 1187 0048 A5B0     		sub	sp, sp, #148
 1188 004a 0446     		mov	r4, r0
 1189 004c E4EE026A 		vfma.f32	s13, s8, s4
 1190 0050 A5EE237A 		vfma.f32	s14, s10, s7
 1191 0054 65EEA27A 		vmul.f32	s15, s11, s5
 1192 0058 E6EE246A 		vfma.f32	s13, s12, s9
 1193 005c 73EEE50A 		vsub.f32	s1, s7, s11
 1194 0060 E8EE027A 		vfma.f32	s15, s16, s4
 1195 0064 B1EE431A 		vneg.f32	s2, s6
 1196 0068 A4EE607A 		vfms.f32	s14, s8, s1
 1197 006c E1EE216A 		vfma.f32	s13, s2, s3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 22


 1198 0070 E6EE237A 		vfma.f32	s15, s12, s7
 1199 0074 37EE077A 		vadd.f32	s14, s14, s14
 1200 0078 76EEA66A 		vadd.f32	s13, s13, s13
 1201 007c 27EE079A 		vmul.f32	s18, s14, s14
 1202 0080 E1EE207A 		vfma.f32	s15, s2, s1
 1203 0084 65EEA6AA 		vmul.f32	s21, s11, s13
 1204 0088 25EE050A 		vmul.f32	s0, s10, s10
 1205 008c F0EE498A 		vmov.f32	s17, s18
 1206 0090 64EEA49A 		vmul.f32	s19, s9, s9
 1207 0094 24EE041A 		vmul.f32	s2, s8, s8
 1208 0098 A5EEA50A 		vfma.f32	s0, s11, s11
 1209 009c 6AEE87AA 		vmul.f32	s21, s21, s14
 1210 00a0 E6EEA68A 		vfma.f32	s17, s13, s13
 1211 00a4 F1EE677A 		vneg.f32	s15, s15
 1212 00a8 77EEA77A 		vadd.f32	s15, s15, s15
 1213 00ac E6EE09AA 		vfma.f32	s21, s12, s18
 1214 00b0 E3EEA39A 		vfma.f32	s19, s7, s7
 1215 00b4 A8EE081A 		vfma.f32	s2, s16, s16
 1216 00b8 A6EE060A 		vfma.f32	s0, s12, s12
 1217 00bc 74EE644A 		vsub.f32	s9, s8, s9
 1218 00c0 E7EEA78A 		vfma.f32	s17, s15, s15
 1219 00c4 35EE444A 		vsub.f32	s8, s10, s8
 1220 00c8 25EE275A 		vmul.f32	s10, s10, s15
 1221 00cc A3EE031A 		vfma.f32	s2, s6, s6
 1222 00d0 E2EEA29A 		vfma.f32	s19, s5, s5
 1223 00d4 E7EE05AA 		vfma.f32	s21, s14, s10
 1224 00d8 78EE633A 		vsub.f32	s7, s16, s7
 1225 00dc 75EEC85A 		vsub.f32	s11, s11, s16
 1226 00e0 36EE436A 		vsub.f32	s12, s12, s6
 1227 00e4 2AEE0AAA 		vmul.f32	s20, s20, s20
 1228 00e8 33EE623A 		vsub.f32	s6, s6, s5
 1229 00ec 78EEA88A 		vadd.f32	s17, s17, s17
 1230 00f0 B5EE400A 		vcmp.f32	s0, #0
 1231 00f4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1232 00f8 80ED38AA 		vstr.32	s20, [r0, #224]
 1233 00fc C0ED3B9A 		vstr.32	s19, [r0, #236]
 1234 0100 C0ED3C5A 		vstr.32	s11, [r0, #240]
 1235 0104 C0ED3D3A 		vstr.32	s7, [r0, #244]
 1236 0108 80ED3F4A 		vstr.32	s8, [r0, #252]
 1237 010c C0ED404A 		vstr.32	s9, [r0, #256]
 1238 0110 80ED426A 		vstr.32	s12, [r0, #264]
 1239 0114 80ED433A 		vstr.32	s6, [r0, #268]
 1240 0118 80ED457A 		vstr.32	s14, [r0, #276]
 1241 011c C0ED3E0A 		vstr.32	s1, [r0, #248]
 1242 0120 80ED489A 		vstr.32	s18, [r0, #288]
 1243 0124 80ED442A 		vstr.32	s4, [r0, #272]
 1244 0128 C0ED477A 		vstr.32	s15, [r0, #284]
 1245 012c C0ED466A 		vstr.32	s13, [r0, #280]
 1246 0130 80ED3A1A 		vstr.32	s2, [r0, #232]
 1247 0134 C0ED49AA 		vstr.32	s21, [r0, #292]
 1248 0138 C0ED4A8A 		vstr.32	s17, [r0, #296]
 1249 013c 80ED390A 		vstr.32	s0, [r0, #228]
 1250 0140 B1EEC08A 		vsqrt.f32	s16, s0
 1251 0144 00F12681 		bmi	.L154
 1252              	.L141:
 1253 0148 B5EE401A 		vcmp.f32	s2, #0
 1254 014c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 23


 1255 0150 84ED348A 		vstr.32	s16, [r4, #208]
 1256 0154 B1EEC18A 		vsqrt.f32	s16, s2
 1257 0158 00F12E81 		bmi	.L155
 1258              	.L142:
 1259 015c 94ED0B0A 		vldr.32	s0, [r4, #44]
 1260 0160 94ED0A7A 		vldr.32	s14, [r4, #40]
 1261 0164 D4ED0C7A 		vldr.32	s15, [r4, #48]
 1262 0168 84ED358A 		vstr.32	s16, [r4, #212]
 1263 016c 20EE000A 		vmul.f32	s0, s0, s0
 1264 0170 A7EE070A 		vfma.f32	s0, s14, s14
 1265 0174 A7EEA70A 		vfma.f32	s0, s15, s15
 1266 0178 B5EE400A 		vcmp.f32	s0, #0
 1267 017c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1268 0180 B1EEC08A 		vsqrt.f32	s16, s0
 1269 0184 00F11581 		bmi	.L156
 1270              	.L143:
 1271 0188 636B     		ldr	r3, [r4, #52]	@ float
 1272 018a 8E4F     		ldr	r7, .L157
 1273 018c C4F8DC30 		str	r3, [r4, #220]	@ float
 1274 0190 04F1D005 		add	r5, r4, #208
 1275 0194 04F1E006 		add	r6, r4, #224
 1276 0198 84ED368A 		vstr.32	s16, [r4, #216]
 1277              	.L144:
 1278 019c 55F8040B 		ldr	r0, [r5], #4	@ float
 1279 01a0 FFF7FEFF 		bl	__aeabi_f2d
 1280 01a4 0246     		mov	r2, r0
 1281 01a6 0B46     		mov	r3, r1
 1282 01a8 3846     		mov	r0, r7
 1283 01aa FFF7FEFF 		bl	debugPrintf
 1284 01ae AE42     		cmp	r6, r5
 1285 01b0 F4D1     		bne	.L144
 1286 01b2 854B     		ldr	r3, .L157+4
 1287 01b4 DFED858A 		vldr.32	s17, .L157+8
 1288 01b8 D3F80480 		ldr	r8, [r3, #4]
 1289 01bc 04F14005 		add	r5, r4, #64
 1290 01c0 4746     		mov	r7, r8
 1291 01c2 08F5EE76 		add	r6, r8, #476
 1292 01c6 08F5F679 		add	r9, r8, #492
 1293 01ca B7EE009A 		vmov.f32	s18, #1.0e+0
 1294              	.L147:
 1295 01ce D5ED047A 		vldr.32	s15, [r5, #16]	@ int
 1296 01d2 97F83013 		ldrb	r1, [r7, #816]	@ zero_extendqisi2
 1297 01d6 F8EE676A 		vcvt.f32.u32	s13, s15
 1298 01da D5ED147A 		vldr.32	s15, [r5, #80]	@ int
 1299 01de B8EE678A 		vcvt.f32.u32	s16, s15
 1300 01e2 0DF18F02 		add	r2, sp, #143
 1301 01e6 4046     		mov	r0, r8
 1302 01e8 26EE888A 		vmul.f32	s16, s13, s16
 1303 01ec FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 1304 01f0 07EE900A 		vmov	s15, r0	@ int
 1305 01f4 F8EE676A 		vcvt.f32.u32	s13, s15
 1306 01f8 D5ED107A 		vldr.32	s15, [r5, #64]	@ int
 1307 01fc 2A69     		ldr	r2, [r5, #16]
 1308 01fe 2B6A     		ldr	r3, [r5, #32]
 1309 0200 D4ED0F5A 		vldr.32	s11, [r4, #60]
 1310 0204 B8EE676A 		vcvt.f32.u32	s12, s15
 1311 0208 D5ED0C7A 		vldr.32	s15, [r5, #48]	@ int
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 24


 1312 020c 66EE886A 		vmul.f32	s13, s13, s16
 1313 0210 B8EE677A 		vcvt.f32.u32	s14, s15
 1314 0214 66EE866A 		vmul.f32	s13, s13, s12
 1315 0218 27EE287A 		vmul.f32	s14, s14, s17
 1316 021c 03FB02F3 		mul	r3, r3, r2
 1317 0220 86EE876A 		vdiv.f32	s12, s13, s14
 1318 0224 0C37     		adds	r7, r7, #12
 1319 0226 07EE903A 		vmov	s15, r3	@ int
 1320 022a F8EE677A 		vcvt.f32.u32	s15, s15
 1321 022e 76EE066A 		vadd.f32	s13, s12, s12
 1322 0232 67EEE57A 		vnmul.f32	s15, s15, s11
 1323 0236 86EEA77A 		vdiv.f32	s14, s13, s15
 1324 023a C5ED207A 		vstr.32	s15, [r5, #128]
 1325 023e 85ED187A 		vstr.32	s14, [r5, #96]
 1326 0242 B5EC017A 		vldmia.32	r5!, {s14}
 1327 0246 C6EE077A 		vdiv.f32	s15, s12, s14
 1328 024a 27EE077A 		vmul.f32	s14, s14, s14
 1329 024e F4EE677A 		vcmp.f32	s15, s15
 1330 0252 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1331 0256 85ED1B7A 		vstr.32	s14, [r5, #108]
 1332 025a 06D6     		bvs	.L145
 1333 025c F4EEC97A 		vcmpe.f32	s15, s18
 1334 0260 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1335 0264 D8BF     		it	le
 1336 0266 F0EE497A 		vmovle.f32	s15, s18
 1337              	.L145:
 1338 026a E6EC017A 		vstmia.32	r6!, {s15}
 1339 026e 4E45     		cmp	r6, r9
 1340 0270 ADD1     		bne	.L147
 1341 0272 DFF86091 		ldr	r9, .L157+16
 1342 0276 DFF86081 		ldr	r8, .L157+20
 1343 027a 04F1A005 		add	r5, r4, #160
 1344 027e 04F1B007 		add	r7, r4, #176
 1345              	.L148:
 1346 0282 286A     		ldr	r0, [r5, #32]	@ float
 1347 0284 FFF7FEFF 		bl	__aeabi_f2d
 1348 0288 0246     		mov	r2, r0
 1349 028a 0B46     		mov	r3, r1
 1350 028c 4846     		mov	r0, r9
 1351 028e FFF7FEFF 		bl	debugPrintf
 1352 0292 2868     		ldr	r0, [r5]	@ float
 1353 0294 FFF7FEFF 		bl	__aeabi_f2d
 1354 0298 0435     		adds	r5, r5, #4
 1355 029a 0246     		mov	r2, r0
 1356 029c 0B46     		mov	r3, r1
 1357 029e 4046     		mov	r0, r8
 1358 02a0 FFF7FEFF 		bl	debugPrintf
 1359 02a4 AF42     		cmp	r7, r5
 1360 02a6 ECD1     		bne	.L148
 1361 02a8 D4F8E400 		ldr	r0, [r4, #228]	@ float
 1362 02ac FFF7FEFF 		bl	__aeabi_f2d
 1363 02b0 0646     		mov	r6, r0
 1364 02b2 D4F82801 		ldr	r0, [r4, #296]	@ float
 1365 02b6 0F46     		mov	r7, r1
 1366 02b8 FFF7FEFF 		bl	__aeabi_f2d
 1367 02bc CDE92001 		strd	r0, [sp, #128]
 1368 02c0 D4F82401 		ldr	r0, [r4, #292]	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 25


 1369 02c4 FFF7FEFF 		bl	__aeabi_f2d
 1370 02c8 CDE91E01 		strd	r0, [sp, #120]
 1371 02cc D4F81C01 		ldr	r0, [r4, #284]	@ float
 1372 02d0 FFF7FEFF 		bl	__aeabi_f2d
 1373 02d4 CDE91C01 		strd	r0, [sp, #112]
 1374 02d8 D4F81801 		ldr	r0, [r4, #280]	@ float
 1375 02dc FFF7FEFF 		bl	__aeabi_f2d
 1376 02e0 CDE91A01 		strd	r0, [sp, #104]
 1377 02e4 D4F82001 		ldr	r0, [r4, #288]	@ float
 1378 02e8 FFF7FEFF 		bl	__aeabi_f2d
 1379 02ec CDE91801 		strd	r0, [sp, #96]
 1380 02f0 D4F81401 		ldr	r0, [r4, #276]	@ float
 1381 02f4 FFF7FEFF 		bl	__aeabi_f2d
 1382 02f8 CDE91601 		strd	r0, [sp, #88]
 1383 02fc D4F81001 		ldr	r0, [r4, #272]	@ float
 1384 0300 FFF7FEFF 		bl	__aeabi_f2d
 1385 0304 CDE91401 		strd	r0, [sp, #80]
 1386 0308 D4F80C01 		ldr	r0, [r4, #268]	@ float
 1387 030c FFF7FEFF 		bl	__aeabi_f2d
 1388 0310 CDE91201 		strd	r0, [sp, #72]
 1389 0314 D4F80801 		ldr	r0, [r4, #264]	@ float
 1390 0318 FFF7FEFF 		bl	__aeabi_f2d
 1391 031c CDE91001 		strd	r0, [sp, #64]
 1392 0320 D4F80401 		ldr	r0, [r4, #260]	@ float
 1393 0324 FFF7FEFF 		bl	__aeabi_f2d
 1394 0328 CDE90E01 		strd	r0, [sp, #56]
 1395 032c D4F80001 		ldr	r0, [r4, #256]	@ float
 1396 0330 FFF7FEFF 		bl	__aeabi_f2d
 1397 0334 CDE90C01 		strd	r0, [sp, #48]
 1398 0338 D4F8FC00 		ldr	r0, [r4, #252]	@ float
 1399 033c FFF7FEFF 		bl	__aeabi_f2d
 1400 0340 CDE90A01 		strd	r0, [sp, #40]
 1401 0344 D4F8F800 		ldr	r0, [r4, #248]	@ float
 1402 0348 FFF7FEFF 		bl	__aeabi_f2d
 1403 034c CDE90801 		strd	r0, [sp, #32]
 1404 0350 D4F8F400 		ldr	r0, [r4, #244]	@ float
 1405 0354 FFF7FEFF 		bl	__aeabi_f2d
 1406 0358 CDE90601 		strd	r0, [sp, #24]
 1407 035c D4F8F000 		ldr	r0, [r4, #240]	@ float
 1408 0360 FFF7FEFF 		bl	__aeabi_f2d
 1409 0364 CDE90401 		strd	r0, [sp, #16]
 1410 0368 D4F8EC00 		ldr	r0, [r4, #236]	@ float
 1411 036c FFF7FEFF 		bl	__aeabi_f2d
 1412 0370 CDE90201 		strd	r0, [sp, #8]
 1413 0374 D4F8E800 		ldr	r0, [r4, #232]	@ float
 1414 0378 FFF7FEFF 		bl	__aeabi_f2d
 1415 037c 3246     		mov	r2, r6
 1416 037e CDE90001 		strd	r0, [sp]
 1417 0382 3B46     		mov	r3, r7
 1418 0384 1248     		ldr	r0, .L157+12
 1419 0386 FFF7FEFF 		bl	debugPrintf
 1420 038a 25B0     		add	sp, sp, #148
 1421              		@ sp needed
 1422 038c BDEC068B 		vldm	sp!, {d8-d10}
 1423 0390 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1424              	.L154:
 1425 0394 FFF7FEFF 		bl	sqrtf
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 26


 1426 0398 D4ED087A 		vldr.32	s15, [r4, #32]
 1427 039c D4ED076A 		vldr.32	s13, [r4, #28]
 1428 03a0 94ED097A 		vldr.32	s14, [r4, #36]
 1429 03a4 27EEA71A 		vmul.f32	s2, s15, s15
 1430 03a8 A6EEA61A 		vfma.f32	s2, s13, s13
 1431 03ac A7EE071A 		vfma.f32	s2, s14, s14
 1432 03b0 CAE6     		b	.L141
 1433              	.L156:
 1434 03b2 FFF7FEFF 		bl	sqrtf
 1435 03b6 E7E6     		b	.L143
 1436              	.L155:
 1437 03b8 B0EE410A 		vmov.f32	s0, s2
 1438 03bc FFF7FEFF 		bl	sqrtf
 1439 03c0 CCE6     		b	.L142
 1440              	.L158:
 1441 03c2 00BF     		.align	2
 1442              	.L157:
 1443 03c4 00000000 		.word	.LC17
 1444 03c8 00000000 		.word	reprap
 1445 03cc DB0FC940 		.word	1086918619
 1446 03d0 54000000 		.word	.LC20
 1447 03d4 24000000 		.word	.LC18
 1448 03d8 3C000000 		.word	.LC19
 1449              		.size	_ZN21HangprinterKinematics6RecalcEv, .-_ZN21HangprinterKinematics6RecalcEv
 1450              		.section	.text._ZN21HangprinterKinematics4InitEv,"ax",%progbits
 1451              		.align	1
 1452              		.p2align 2,,3
 1453              		.global	_ZN21HangprinterKinematics4InitEv
 1454              		.syntax unified
 1455              		.thumb
 1456              		.thumb_func
 1457              		.fpu fpv4-sp-d16
 1458              		.type	_ZN21HangprinterKinematics4InitEv, %function
 1459              	_ZN21HangprinterKinematics4InitEv:
 1460              		@ args = 0, pretend = 0, frame = 96
 1461              		@ frame_needed = 0, uses_anonymous_args = 0
 1462 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1463 0004 454D     		ldr	r5, .L164
 1464 0006 DFF82C91 		ldr	r9, .L164+24
 1465 000a 0446     		mov	r4, r0
 1466 000c 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 1467 0010 99B0     		sub	sp, sp, #100
 1468 0012 05F11006 		add	r6, r5, #16
 1469 0016 E846     		mov	r8, sp
 1470 0018 88E80F00 		stm	r8, {r0, r1, r2, r3}
 1471 001c 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 1472 0020 0DF1100E 		add	lr, sp, #16
 1473 0024 05F12006 		add	r6, r5, #32
 1474 0028 8EE80F00 		stm	lr, {r0, r1, r2, r3}
 1475 002c 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 1476 0030 0DF1200C 		add	ip, sp, #32
 1477 0034 05F13006 		add	r6, r5, #48
 1478 0038 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 1479 003c 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 1480 0040 0CAF     		add	r7, sp, #48
 1481 0042 05F14006 		add	r6, r5, #64
 1482 0046 87E80F00 		stm	r7, {r0, r1, r2, r3}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 27


 1483 004a 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 1484 004e 5035     		adds	r5, r5, #80
 1485 0050 10AE     		add	r6, sp, #64
 1486 0052 86E80F00 		stm	r6, {r0, r1, r2, r3}
 1487 0056 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 1488 005a 14AD     		add	r5, sp, #80
 1489 005c 85E80F00 		stm	r5, {r0, r1, r2, r3}
 1490 0060 B9E80700 		ldmia	r9!, {r0, r1, r2}
 1491 0064 2E4B     		ldr	r3, .L164+4
 1492 0066 2061     		str	r0, [r4, #16]	@ unaligned
 1493 0068 6161     		str	r1, [r4, #20]	@ unaligned
 1494 006a A261     		str	r2, [r4, #24]	@ unaligned
 1495 006c 07CB     		ldmia	r3!, {r0, r1, r2}
 1496 006e 2D4B     		ldr	r3, .L164+8
 1497 0070 E061     		str	r0, [r4, #28]	@ unaligned
 1498 0072 2162     		str	r1, [r4, #32]	@ unaligned
 1499 0074 6262     		str	r2, [r4, #36]	@ unaligned
 1500 0076 07CB     		ldmia	r3!, {r0, r1, r2}
 1501 0078 A062     		str	r0, [r4, #40]	@ unaligned
 1502 007a E162     		str	r1, [r4, #44]	@ unaligned
 1503 007c 2263     		str	r2, [r4, #48]	@ unaligned
 1504 007e B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 1505 0082 2064     		str	r0, [r4, #64]	@ unaligned
 1506 0084 6164     		str	r1, [r4, #68]	@ unaligned
 1507 0086 A264     		str	r2, [r4, #72]	@ unaligned
 1508 0088 E364     		str	r3, [r4, #76]	@ unaligned
 1509 008a BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 1510 008e 2065     		str	r0, [r4, #80]	@ unaligned
 1511 0090 6165     		str	r1, [r4, #84]	@ unaligned
 1512 0092 A265     		str	r2, [r4, #88]	@ unaligned
 1513 0094 E365     		str	r3, [r4, #92]	@ unaligned
 1514 0096 BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 1515 009a 2066     		str	r0, [r4, #96]	@ unaligned
 1516 009c 6166     		str	r1, [r4, #100]	@ unaligned
 1517 009e A266     		str	r2, [r4, #104]	@ unaligned
 1518 00a0 E366     		str	r3, [r4, #108]	@ unaligned
 1519 00a2 0FCF     		ldmia	r7!, {r0, r1, r2, r3}
 1520 00a4 DFF89090 		ldr	r9, .L164+28
 1521 00a8 C4F83890 		str	r9, [r4, #56]	@ float
 1522 00ac DFF88C80 		ldr	r8, .L164+32
 1523 00b0 C4F83480 		str	r8, [r4, #52]	@ float
 1524 00b4 4FF07E59 		mov	r9, #1065353216
 1525 00b8 C4F83C90 		str	r9, [r4, #60]	@ float
 1526 00bc 2067     		str	r0, [r4, #112]	@ unaligned
 1527 00be 6167     		str	r1, [r4, #116]	@ unaligned
 1528 00c0 A267     		str	r2, [r4, #120]	@ unaligned
 1529 00c2 E367     		str	r3, [r4, #124]	@ unaligned
 1530 00c4 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1531 00c6 C4F88000 		str	r0, [r4, #128]	@ unaligned
 1532 00ca C4F88410 		str	r1, [r4, #132]	@ unaligned
 1533 00ce C4F88820 		str	r2, [r4, #136]	@ unaligned
 1534 00d2 C4F88C30 		str	r3, [r4, #140]	@ unaligned
 1535 00d6 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1536 00d8 C4F89C30 		str	r3, [r4, #156]	@ unaligned
 1537 00dc 2368     		ldr	r3, [r4]
 1538 00de C4F89410 		str	r1, [r4, #148]	@ unaligned
 1539 00e2 C4F89820 		str	r2, [r4, #152]	@ unaligned
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 28


 1540 00e6 C4F89000 		str	r0, [r4, #144]	@ unaligned
 1541 00ea 0F49     		ldr	r1, .L164+12
 1542 00ec 1B6C     		ldr	r3, [r3, #64]
 1543 00ee 0F4A     		ldr	r2, .L164+16
 1544 00f0 4D69     		ldr	r5, [r1, #20]
 1545 00f2 9342     		cmp	r3, r2
 1546 00f4 4FF00001 		mov	r1, #0
 1547 00f8 84F82C11 		strb	r1, [r4, #300]
 1548 00fc 0AD1     		bne	.L163
 1549 00fe 0C49     		ldr	r1, .L164+20
 1550              	.L160:
 1551 0100 2846     		mov	r0, r5
 1552 0102 0422     		movs	r2, #4
 1553 0104 FFF7FEFF 		bl	_ZN6GCodes21SetMachineAxisLettersEPKch
 1554 0108 2046     		mov	r0, r4
 1555 010a 19B0     		add	sp, sp, #100
 1556              		@ sp needed
 1557 010c BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 1558 0110 FFF7FEBF 		b	_ZN21HangprinterKinematics6RecalcEv
 1559              	.L163:
 1560 0114 2046     		mov	r0, r4
 1561 0116 9847     		blx	r3
 1562 0118 0146     		mov	r1, r0
 1563 011a F1E7     		b	.L160
 1564              	.L165:
 1565              		.align	2
 1566              	.L164:
 1567 011c 10000000 		.word	.LANCHOR0+16
 1568 0120 00000000 		.word	.LANCHOR2
 1569 0124 00000000 		.word	.LANCHOR3
 1570 0128 00000000 		.word	reprap
 1571 012c 00000000 		.word	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 1572 0130 00000000 		.word	.LC11
 1573 0134 00000000 		.word	.LANCHOR1
 1574 0138 0000FA43 		.word	1140457472
 1575 013c 00E86845 		.word	1164503040
 1576              		.size	_ZN21HangprinterKinematics4InitEv, .-_ZN21HangprinterKinematics4InitEv
 1577              		.section	.text._ZN21HangprinterKinematicsC2Ev,"ax",%progbits
 1578              		.align	1
 1579              		.p2align 2,,3
 1580              		.global	_ZN21HangprinterKinematicsC2Ev
 1581              		.syntax unified
 1582              		.thumb
 1583              		.thumb_func
 1584              		.fpu fpv4-sp-d16
 1585              		.type	_ZN21HangprinterKinematicsC2Ev, %function
 1586              	_ZN21HangprinterKinematicsC2Ev:
 1587              		@ args = 0, pretend = 0, frame = 0
 1588              		@ frame_needed = 0, uses_anonymous_args = 0
 1589 0000 10B5     		push	{r4, lr}
 1590 0002 0022     		movs	r2, #0
 1591 0004 0446     		mov	r4, r0
 1592 0006 DFED070A 		vldr.32	s1, .L168
 1593 000a 9FED070A 		vldr.32	s0, .L168+4
 1594 000e 0621     		movs	r1, #6
 1595 0010 0123     		movs	r3, #1
 1596 0012 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffbb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 29


 1597 0016 054B     		ldr	r3, .L168+8
 1598 0018 2360     		str	r3, [r4]
 1599 001a 2046     		mov	r0, r4
 1600 001c FFF7FEFF 		bl	_ZN21HangprinterKinematics4InitEv
 1601 0020 2046     		mov	r0, r4
 1602 0022 10BD     		pop	{r4, pc}
 1603              	.L169:
 1604              		.align	2
 1605              	.L168:
 1606 0024 CDCC4C3E 		.word	1045220557
 1607 0028 0000C842 		.word	1120403456
 1608 002c 08000000 		.word	.LANCHOR4+8
 1609              		.size	_ZN21HangprinterKinematicsC2Ev, .-_ZN21HangprinterKinematicsC2Ev
 1610              		.global	_ZN21HangprinterKinematicsC1Ev
 1611              		.thumb_set _ZN21HangprinterKinematicsC1Ev,_ZN21HangprinterKinematicsC2Ev
 1612              		.section	.text._ZN21HangprinterKinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN21Hangprint
 1613              		.align	1
 1614              		.p2align 2,,3
 1615              		.weak	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv
 1616              		.syntax unified
 1617              		.thumb
 1618              		.thumb_func
 1619              		.fpu fpv4-sp-d16
 1620              		.type	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv, %function
 1621              	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv:
 1622              		@ args = 0, pretend = 0, frame = 0
 1623              		@ frame_needed = 0, uses_anonymous_args = 0
 1624              		@ link register save eliminated.
 1625 0000 FFF7FEBF 		b	_ZN21HangprinterKinematics4InitEv
 1626              		.size	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv, .-_ZN21HangprinterKinematics22SetCalib
 1627              		.section	.text._ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 1628              		.align	1
 1629              		.p2align 2,,3
 1630              		.global	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1631              		.syntax unified
 1632              		.thumb
 1633              		.thumb_func
 1634              		.fpu fpv4-sp-d16
 1635              		.type	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 1636              	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 1637              		@ args = 4, pretend = 0, frame = 8
 1638              		@ frame_needed = 0, uses_anonymous_args = 0
 1639 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1640 0004 40F29D2C 		movw	ip, #669
 1641 0008 B8B0     		sub	sp, sp, #224
 1642 000a 0025     		movs	r5, #0
 1643 000c 6145     		cmp	r1, ip
 1644 000e 8DF8DE50 		strb	r5, [sp, #222]
 1645 0012 0646     		mov	r6, r0
 1646 0014 1746     		mov	r7, r2
 1647 0016 9846     		mov	r8, r3
 1648 0018 27D0     		beq	.L188
 1649 001a 40F29A2C 		movw	ip, #666
 1650 001e 6145     		cmp	r1, ip
 1651 0020 06D0     		beq	.L189
 1652 0022 3E9C     		ldr	r4, [sp, #248]
 1653 0024 0094     		str	r4, [sp]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 30


 1654 0026 FFF7FEFF 		bl	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1655              	.L171:
 1656 002a 38B0     		add	sp, sp, #224
 1657              		@ sp needed
 1658 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1659              	.L189:
 1660 0030 0DF1DE04 		add	r4, sp, #222
 1661 0034 00F13C02 		add	r2, r0, #60
 1662 0038 2346     		mov	r3, r4
 1663 003a 5121     		movs	r1, #81
 1664 003c 3846     		mov	r0, r7
 1665 003e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1666 0042 CDE90145 		strd	r4, r5, [sp, #4]
 1667 0046 CDF80080 		str	r8, [sp]
 1668 004a 06F14003 		add	r3, r6, #64
 1669 004e 0422     		movs	r2, #4
 1670 0050 5221     		movs	r1, #82
 1671 0052 3846     		mov	r0, r7
 1672 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1673 0058 0028     		cmp	r0, #0
 1674 005a 00F0B980 		beq	.L182
 1675              	.L183:
 1676 005e 3E9B     		ldr	r3, [sp, #248]
 1677 0060 0120     		movs	r0, #1
 1678 0062 1870     		strb	r0, [r3]
 1679 0064 38B0     		add	sp, sp, #224
 1680              		@ sp needed
 1681 0066 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1682              	.L188:
 1683 006a 38AC     		add	r4, sp, #224
 1684 006c 021D     		adds	r2, r0, #4
 1685 006e 04F8015D 		strb	r5, [r4, #-1]!
 1686 0072 5321     		movs	r1, #83
 1687 0074 2346     		mov	r3, r4
 1688 0076 3846     		mov	r0, r7
 1689 0078 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1690 007c 2346     		mov	r3, r4
 1691 007e 06F10802 		add	r2, r6, #8
 1692 0082 5421     		movs	r1, #84
 1693 0084 3846     		mov	r0, r7
 1694 0086 0DF1DE04 		add	r4, sp, #222
 1695 008a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1696 008e 0295     		str	r5, [sp, #8]
 1697 0090 CDE90084 		strd	r8, r4, [sp]
 1698 0094 06F11003 		add	r3, r6, #16
 1699 0098 0322     		movs	r2, #3
 1700 009a 4121     		movs	r1, #65
 1701 009c 3846     		mov	r0, r7
 1702 009e FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1703 00a2 0028     		cmp	r0, #0
 1704 00a4 DBD1     		bne	.L183
 1705 00a6 CDE90140 		strd	r4, r0, [sp, #4]
 1706 00aa CDF80080 		str	r8, [sp]
 1707 00ae 06F11C03 		add	r3, r6, #28
 1708 00b2 0322     		movs	r2, #3
 1709 00b4 4221     		movs	r1, #66
 1710 00b6 3846     		mov	r0, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 31


 1711 00b8 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1712 00bc 0028     		cmp	r0, #0
 1713 00be CED1     		bne	.L183
 1714 00c0 CDE90140 		strd	r4, r0, [sp, #4]
 1715 00c4 CDF80080 		str	r8, [sp]
 1716 00c8 06F12803 		add	r3, r6, #40
 1717 00cc 0322     		movs	r2, #3
 1718 00ce 4321     		movs	r1, #67
 1719 00d0 3846     		mov	r0, r7
 1720 00d2 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1721 00d6 0546     		mov	r5, r0
 1722 00d8 0028     		cmp	r0, #0
 1723 00da C0D1     		bne	.L183
 1724 00dc 2346     		mov	r3, r4
 1725 00de 06F13402 		add	r2, r6, #52
 1726 00e2 4421     		movs	r1, #68
 1727 00e4 3846     		mov	r0, r7
 1728 00e6 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1729 00ea 2346     		mov	r3, r4
 1730 00ec 06F13C02 		add	r2, r6, #60
 1731 00f0 5121     		movs	r1, #81
 1732 00f2 3846     		mov	r0, r7
 1733 00f4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1734 00f8 CDE90145 		strd	r4, r5, [sp, #4]
 1735 00fc CDF80080 		str	r8, [sp]
 1736 0100 06F14003 		add	r3, r6, #64
 1737 0104 0422     		movs	r2, #4
 1738 0106 5221     		movs	r1, #82
 1739 0108 3846     		mov	r0, r7
 1740 010a FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1741 010e 0028     		cmp	r0, #0
 1742 0110 A5D1     		bne	.L183
 1743 0112 CDE90140 		strd	r4, r0, [sp, #4]
 1744 0116 CDF80080 		str	r8, [sp]
 1745 011a 06F15003 		add	r3, r6, #80
 1746 011e 0422     		movs	r2, #4
 1747 0120 5521     		movs	r1, #85
 1748 0122 3846     		mov	r0, r7
 1749 0124 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1750 0128 0028     		cmp	r0, #0
 1751 012a 98D1     		bne	.L183
 1752 012c CDE90140 		strd	r4, r0, [sp, #4]
 1753 0130 CDF80080 		str	r8, [sp]
 1754 0134 06F16003 		add	r3, r6, #96
 1755 0138 0422     		movs	r2, #4
 1756 013a 4F21     		movs	r1, #79
 1757 013c 3846     		mov	r0, r7
 1758 013e FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1759 0142 0028     		cmp	r0, #0
 1760 0144 8BD1     		bne	.L183
 1761 0146 CDE90140 		strd	r4, r0, [sp, #4]
 1762 014a CDF80080 		str	r8, [sp]
 1763 014e 06F17003 		add	r3, r6, #112
 1764 0152 0422     		movs	r2, #4
 1765 0154 4C21     		movs	r1, #76
 1766 0156 3846     		mov	r0, r7
 1767 0158 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 32


 1768 015c 0028     		cmp	r0, #0
 1769 015e 7FF47EAF 		bne	.L183
 1770 0162 CDE90140 		strd	r4, r0, [sp, #4]
 1771 0166 CDF80080 		str	r8, [sp]
 1772 016a 06F18003 		add	r3, r6, #128
 1773 016e 0422     		movs	r2, #4
 1774 0170 4821     		movs	r1, #72
 1775 0172 3846     		mov	r0, r7
 1776 0174 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1777 0178 0028     		cmp	r0, #0
 1778 017a 7FF470AF 		bne	.L183
 1779 017e CDE90140 		strd	r4, r0, [sp, #4]
 1780 0182 CDF80080 		str	r8, [sp]
 1781 0186 06F19003 		add	r3, r6, #144
 1782 018a 0422     		movs	r2, #4
 1783 018c 4A21     		movs	r1, #74
 1784 018e 3846     		mov	r0, r7
 1785 0190 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1786 0194 0028     		cmp	r0, #0
 1787 0196 7FF462AF 		bne	.L183
 1788 019a 9DF8DE30 		ldrb	r3, [sp, #222]	@ zero_extendqisi2
 1789 019e 13B9     		cbnz	r3, .L176
 1790 01a0 9DF8DF30 		ldrb	r3, [sp, #223]	@ zero_extendqisi2
 1791 01a4 13B1     		cbz	r3, .L177
 1792              	.L176:
 1793 01a6 3046     		mov	r0, r6
 1794 01a8 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 1795              	.L177:
 1796 01ac 5021     		movs	r1, #80
 1797 01ae 3846     		mov	r0, r7
 1798 01b0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1799 01b4 0028     		cmp	r0, #0
 1800 01b6 00F09F80 		beq	.L178
 1801 01ba 3846     		mov	r0, r7
 1802 01bc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1803 01c0 0123     		movs	r3, #1
 1804 01c2 86ED0E0A 		vstr.32	s0, [r6, #56]
 1805 01c6 8DF8DE30 		strb	r3, [sp, #222]
 1806              	.L179:
 1807 01ca 9DF8DE00 		ldrb	r0, [sp, #222]	@ zero_extendqisi2
 1808 01ce 2CE7     		b	.L171
 1809              	.L182:
 1810 01d0 CDE90140 		strd	r4, r0, [sp, #4]
 1811 01d4 CDF80080 		str	r8, [sp]
 1812 01d8 06F15003 		add	r3, r6, #80
 1813 01dc 0422     		movs	r2, #4
 1814 01de 5521     		movs	r1, #85
 1815 01e0 3846     		mov	r0, r7
 1816 01e2 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1817 01e6 0028     		cmp	r0, #0
 1818 01e8 7FF439AF 		bne	.L183
 1819 01ec CDE90140 		strd	r4, r0, [sp, #4]
 1820 01f0 CDF80080 		str	r8, [sp]
 1821 01f4 06F16003 		add	r3, r6, #96
 1822 01f8 0422     		movs	r2, #4
 1823 01fa 4F21     		movs	r1, #79
 1824 01fc 3846     		mov	r0, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 33


 1825 01fe FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1826 0202 0028     		cmp	r0, #0
 1827 0204 7FF42BAF 		bne	.L183
 1828 0208 CDE90140 		strd	r4, r0, [sp, #4]
 1829 020c CDF80080 		str	r8, [sp]
 1830 0210 06F17003 		add	r3, r6, #112
 1831 0214 0422     		movs	r2, #4
 1832 0216 4C21     		movs	r1, #76
 1833 0218 3846     		mov	r0, r7
 1834 021a FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1835 021e 0028     		cmp	r0, #0
 1836 0220 7FF41DAF 		bne	.L183
 1837 0224 CDE90140 		strd	r4, r0, [sp, #4]
 1838 0228 CDF80080 		str	r8, [sp]
 1839 022c 06F18003 		add	r3, r6, #128
 1840 0230 0422     		movs	r2, #4
 1841 0232 4821     		movs	r1, #72
 1842 0234 3846     		mov	r0, r7
 1843 0236 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1844 023a 0028     		cmp	r0, #0
 1845 023c 7FF40FAF 		bne	.L183
 1846 0240 CDE90140 		strd	r4, r0, [sp, #4]
 1847 0244 CDF80080 		str	r8, [sp]
 1848 0248 3846     		mov	r0, r7
 1849 024a 06F19003 		add	r3, r6, #144
 1850 024e 0422     		movs	r2, #4
 1851 0250 4A21     		movs	r1, #74
 1852 0252 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1853 0256 0028     		cmp	r0, #0
 1854 0258 7FF401AF 		bne	.L183
 1855 025c F06B     		ldr	r0, [r6, #60]	@ float
 1856 025e FFF7FEFF 		bl	__aeabi_f2d
 1857 0262 0D46     		mov	r5, r1
 1858 0264 D6E92621 		ldrd	r2, r1, [r6, #152]
 1859 0268 D6F89430 		ldr	r3, [r6, #148]
 1860 026c 1B91     		str	r1, [sp, #108]
 1861 026e D6F89010 		ldr	r1, [r6, #144]
 1862 0272 1A92     		str	r2, [sp, #104]
 1863 0274 D6F88C20 		ldr	r2, [r6, #140]
 1864 0278 1993     		str	r3, [sp, #100]
 1865 027a D6F88830 		ldr	r3, [r6, #136]
 1866 027e 1891     		str	r1, [sp, #96]
 1867 0280 D6F88410 		ldr	r1, [r6, #132]
 1868 0284 1792     		str	r2, [sp, #92]
 1869 0286 D6F88020 		ldr	r2, [r6, #128]
 1870 028a 1693     		str	r3, [sp, #88]
 1871 028c F36F     		ldr	r3, [r6, #124]
 1872 028e 1591     		str	r1, [sp, #84]
 1873 0290 B16F     		ldr	r1, [r6, #120]
 1874 0292 1492     		str	r2, [sp, #80]
 1875 0294 726F     		ldr	r2, [r6, #116]
 1876 0296 1393     		str	r3, [sp, #76]
 1877 0298 336F     		ldr	r3, [r6, #112]
 1878 029a 1291     		str	r1, [sp, #72]
 1879 029c F16E     		ldr	r1, [r6, #108]
 1880 029e 1192     		str	r2, [sp, #68]
 1881 02a0 B26E     		ldr	r2, [r6, #104]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 34


 1882 02a2 1093     		str	r3, [sp, #64]
 1883 02a4 736E     		ldr	r3, [r6, #100]
 1884 02a6 0D93     		str	r3, [sp, #52]
 1885 02a8 CDE90E21 		strd	r2, r1, [sp, #56]
 1886 02ac D6E91732 		ldrd	r3, r2, [r6, #92]
 1887 02b0 B16D     		ldr	r1, [r6, #88]
 1888 02b2 0C92     		str	r2, [sp, #48]
 1889 02b4 726D     		ldr	r2, [r6, #84]
 1890 02b6 0B93     		str	r3, [sp, #44]
 1891 02b8 336D     		ldr	r3, [r6, #80]
 1892 02ba 0A91     		str	r1, [sp, #40]
 1893 02bc 0446     		mov	r4, r0
 1894 02be F06C     		ldr	r0, [r6, #76]	@ float
 1895 02c0 CDE90832 		strd	r3, r2, [sp, #32]
 1896 02c4 FFF7FEFF 		bl	__aeabi_f2d
 1897 02c8 CDE90601 		strd	r0, [sp, #24]
 1898 02cc B06C     		ldr	r0, [r6, #72]	@ float
 1899 02ce FFF7FEFF 		bl	__aeabi_f2d
 1900 02d2 CDE90401 		strd	r0, [sp, #16]
 1901 02d6 706C     		ldr	r0, [r6, #68]	@ float
 1902 02d8 FFF7FEFF 		bl	__aeabi_f2d
 1903 02dc CDE90201 		strd	r0, [sp, #8]
 1904 02e0 306C     		ldr	r0, [r6, #64]	@ float
 1905 02e2 FFF7FEFF 		bl	__aeabi_f2d
 1906 02e6 2246     		mov	r2, r4
 1907 02e8 CDE90001 		strd	r0, [sp]
 1908 02ec 2B46     		mov	r3, r5
 1909 02ee 4046     		mov	r0, r8
 1910 02f0 4D49     		ldr	r1, .L190
 1911 02f2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1912 02f6 98E6     		b	.L171
 1913              	.L178:
 1914 02f8 3846     		mov	r0, r7
 1915 02fa 4B21     		movs	r1, #75
 1916 02fc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1917 0300 0028     		cmp	r0, #0
 1918 0302 7FF462AF 		bne	.L179
 1919 0306 3069     		ldr	r0, [r6, #16]	@ float
 1920 0308 FFF7FEFF 		bl	__aeabi_f2d
 1921 030c 0D46     		mov	r5, r1
 1922 030e D6E92621 		ldrd	r2, r1, [r6, #152]
 1923 0312 D6F89430 		ldr	r3, [r6, #148]
 1924 0316 3591     		str	r1, [sp, #212]
 1925 0318 D6F89010 		ldr	r1, [r6, #144]
 1926 031c 3492     		str	r2, [sp, #208]
 1927 031e D6F88C20 		ldr	r2, [r6, #140]
 1928 0322 3393     		str	r3, [sp, #204]
 1929 0324 D6F88830 		ldr	r3, [r6, #136]
 1930 0328 3291     		str	r1, [sp, #200]
 1931 032a D6F88410 		ldr	r1, [r6, #132]
 1932 032e 3192     		str	r2, [sp, #196]
 1933 0330 D6F88020 		ldr	r2, [r6, #128]
 1934 0334 3093     		str	r3, [sp, #192]
 1935 0336 F36F     		ldr	r3, [r6, #124]
 1936 0338 2F91     		str	r1, [sp, #188]
 1937 033a B16F     		ldr	r1, [r6, #120]
 1938 033c 2E92     		str	r2, [sp, #184]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 35


 1939 033e 726F     		ldr	r2, [r6, #116]
 1940 0340 2D93     		str	r3, [sp, #180]
 1941 0342 336F     		ldr	r3, [r6, #112]
 1942 0344 2C91     		str	r1, [sp, #176]
 1943 0346 F16E     		ldr	r1, [r6, #108]
 1944 0348 2B92     		str	r2, [sp, #172]
 1945 034a B26E     		ldr	r2, [r6, #104]
 1946 034c 2A93     		str	r3, [sp, #168]
 1947 034e 736E     		ldr	r3, [r6, #100]
 1948 0350 2793     		str	r3, [sp, #156]
 1949 0352 CDE92821 		strd	r2, r1, [sp, #160]
 1950 0356 D6E91732 		ldrd	r3, r2, [r6, #92]
 1951 035a B16D     		ldr	r1, [r6, #88]
 1952 035c 2692     		str	r2, [sp, #152]
 1953 035e 726D     		ldr	r2, [r6, #84]
 1954 0360 2593     		str	r3, [sp, #148]
 1955 0362 336D     		ldr	r3, [r6, #80]
 1956 0364 2491     		str	r1, [sp, #144]
 1957 0366 0446     		mov	r4, r0
 1958 0368 F06C     		ldr	r0, [r6, #76]	@ float
 1959 036a CDE92232 		strd	r3, r2, [sp, #136]
 1960 036e FFF7FEFF 		bl	__aeabi_f2d
 1961 0372 CDE92001 		strd	r0, [sp, #128]
 1962 0376 B06C     		ldr	r0, [r6, #72]	@ float
 1963 0378 FFF7FEFF 		bl	__aeabi_f2d
 1964 037c CDE91E01 		strd	r0, [sp, #120]
 1965 0380 706C     		ldr	r0, [r6, #68]	@ float
 1966 0382 FFF7FEFF 		bl	__aeabi_f2d
 1967 0386 CDE91C01 		strd	r0, [sp, #112]
 1968 038a 306C     		ldr	r0, [r6, #64]	@ float
 1969 038c FFF7FEFF 		bl	__aeabi_f2d
 1970 0390 CDE91A01 		strd	r0, [sp, #104]
 1971 0394 F06B     		ldr	r0, [r6, #60]	@ float
 1972 0396 FFF7FEFF 		bl	__aeabi_f2d
 1973 039a CDE91801 		strd	r0, [sp, #96]
 1974 039e B068     		ldr	r0, [r6, #8]	@ float
 1975 03a0 FFF7FEFF 		bl	__aeabi_f2d
 1976 03a4 D6ED017A 		vldr.32	s15, [r6, #4]
 1977 03a8 CDE91601 		strd	r0, [sp, #88]
 1978 03ac FDEEE77A 		vcvt.s32.f32	s15, s15
 1979 03b0 B06B     		ldr	r0, [r6, #56]	@ float
 1980 03b2 CDED147A 		vstr.32	s15, [sp, #80]	@ int
 1981 03b6 FFF7FEFF 		bl	__aeabi_f2d
 1982 03ba CDE91201 		strd	r0, [sp, #72]
 1983 03be 706B     		ldr	r0, [r6, #52]	@ float
 1984 03c0 FFF7FEFF 		bl	__aeabi_f2d
 1985 03c4 CDE91001 		strd	r0, [sp, #64]
 1986 03c8 306B     		ldr	r0, [r6, #48]	@ float
 1987 03ca FFF7FEFF 		bl	__aeabi_f2d
 1988 03ce CDE90E01 		strd	r0, [sp, #56]
 1989 03d2 F06A     		ldr	r0, [r6, #44]	@ float
 1990 03d4 FFF7FEFF 		bl	__aeabi_f2d
 1991 03d8 CDE90C01 		strd	r0, [sp, #48]
 1992 03dc B06A     		ldr	r0, [r6, #40]	@ float
 1993 03de FFF7FEFF 		bl	__aeabi_f2d
 1994 03e2 CDE90A01 		strd	r0, [sp, #40]
 1995 03e6 706A     		ldr	r0, [r6, #36]	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 36


 1996 03e8 FFF7FEFF 		bl	__aeabi_f2d
 1997 03ec CDE90801 		strd	r0, [sp, #32]
 1998 03f0 306A     		ldr	r0, [r6, #32]	@ float
 1999 03f2 FFF7FEFF 		bl	__aeabi_f2d
 2000 03f6 CDE90601 		strd	r0, [sp, #24]
 2001 03fa F069     		ldr	r0, [r6, #28]	@ float
 2002 03fc FFF7FEFF 		bl	__aeabi_f2d
 2003 0400 CDE90401 		strd	r0, [sp, #16]
 2004 0404 B069     		ldr	r0, [r6, #24]	@ float
 2005 0406 FFF7FEFF 		bl	__aeabi_f2d
 2006 040a CDE90201 		strd	r0, [sp, #8]
 2007 040e 7069     		ldr	r0, [r6, #20]	@ float
 2008 0410 FFF7FEFF 		bl	__aeabi_f2d
 2009 0414 2246     		mov	r2, r4
 2010 0416 CDE90001 		strd	r0, [sp]
 2011 041a 2B46     		mov	r3, r5
 2012 041c 4046     		mov	r0, r8
 2013 041e 0349     		ldr	r1, .L190+4
 2014 0420 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2015 0424 D1E6     		b	.L179
 2016              	.L191:
 2017 0426 00BF     		.align	2
 2018              	.L190:
 2019 0428 8C010000 		.word	.LC22
 2020 042c 00000000 		.word	.LC21
 2021              		.size	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN21HangprinterKinema
 2022              		.section	.text._ZNK21HangprinterKinematics17MotorPosToLinePosElj,"ax",%progbits
 2023              		.align	1
 2024              		.p2align 2,,3
 2025              		.global	_ZNK21HangprinterKinematics17MotorPosToLinePosElj
 2026              		.syntax unified
 2027              		.thumb
 2028              		.thumb_func
 2029              		.fpu fpv4-sp-d16
 2030              		.type	_ZNK21HangprinterKinematics17MotorPosToLinePosElj, %function
 2031              	_ZNK21HangprinterKinematics17MotorPosToLinePosElj:
 2032              		@ args = 0, pretend = 0, frame = 0
 2033              		@ frame_needed = 0, uses_anonymous_args = 0
 2034              		@ link register save eliminated.
 2035 0000 07EE901A 		vmov	s15, r1	@ int
 2036 0004 00EB8202 		add	r2, r0, r2, lsl #2
 2037 0008 92ED286A 		vldr.32	s12, [r2, #160]
 2038 000c D2ED106A 		vldr.32	s13, [r2, #64]
 2039 0010 92ED2C0A 		vldr.32	s0, [r2, #176]
 2040 0014 92ED307A 		vldr.32	s14, [r2, #192]
 2041 0018 F8EEE75A 		vcvt.f32.s32	s11, s15
 2042 001c C5EE867A 		vdiv.f32	s15, s11, s12
 2043 0020 77EEA67A 		vadd.f32	s15, s15, s13
 2044 0024 97EEA70A 		vfnms.f32	s0, s15, s15
 2045 0028 80EE070A 		vdiv.f32	s0, s0, s14
 2046 002c 7047     		bx	lr
 2047              		.size	_ZNK21HangprinterKinematics17MotorPosToLinePosElj, .-_ZNK21HangprinterKinematics17MotorPosTo
 2048 002e 00BF     		.section	.text._ZNK21HangprinterKinematics16InverseTransformEfffPf,"ax",%progbits
 2049              		.align	1
 2050              		.p2align 2,,3
 2051              		.global	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2052              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 37


 2053              		.thumb
 2054              		.thumb_func
 2055              		.fpu fpv4-sp-d16
 2056              		.type	_ZNK21HangprinterKinematics16InverseTransformEfffPf, %function
 2057              	_ZNK21HangprinterKinematics16InverseTransformEfffPf:
 2058              		@ args = 0, pretend = 0, frame = 0
 2059              		@ frame_needed = 0, uses_anonymous_args = 0
 2060 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2061 0004 2DED088B 		vpush.64	{d8, d9, d10, d11}
 2062 0008 90ED3A8A 		vldr.32	s16, [r0, #232]
 2063 000c D0ED3B6A 		vldr.32	s13, [r0, #236]
 2064 0010 D0ED418A 		vldr.32	s17, [r0, #260]
 2065 0014 90ED3F6A 		vldr.32	s12, [r0, #252]
 2066 0018 90ED397A 		vldr.32	s14, [r0, #228]
 2067 001c D0ED3E2A 		vldr.32	s5, [r0, #248]
 2068 0020 90ED3C3A 		vldr.32	s6, [r0, #240]
 2069 0024 D0ED403A 		vldr.32	s7, [r0, #256]
 2070 0028 90ED3D4A 		vldr.32	s8, [r0, #244]
 2071 002c D0ED047A 		vldr.32	s15, [r0, #16]
 2072 0030 D0ED054A 		vldr.32	s9, [r0, #20]
 2073 0034 90ED455A 		vldr.32	s10, [r0, #276]
 2074 0038 D0ED479A 		vldr.32	s19, [r0, #284]
 2075 003c D0ED465A 		vldr.32	s11, [r0, #280]
 2076 0040 DFF8A881 		ldr	r8, .L198+12
 2077 0044 90EEA08A 		vfnms.f32	s16, s1, s1
 2078 0048 8AB0     		sub	sp, sp, #40
 2079 004a 0446     		mov	r4, r0
 2080 004c D1EE016A 		vfnms.f32	s13, s2, s2
 2081 0050 0D46     		mov	r5, r1
 2082 0052 68EEC88A 		vnmul.f32	s17, s17, s16
 2083 0056 28EE228A 		vmul.f32	s16, s16, s5
 2084 005a E6EE668A 		vfms.f32	s17, s12, s13
 2085 005e B0EE476A 		vmov.f32	s12, s14
 2086 0062 90EE006A 		vfnms.f32	s12, s0, s0
 2087 0066 A3EE668A 		vfms.f32	s16, s6, s13
 2088 006a E3EEC68A 		vfms.f32	s17, s7, s12
 2089 006e A6EE048A 		vfma.f32	s16, s12, s8
 2090 0072 67EEE87A 		vnmul.f32	s15, s15, s17
 2091 0076 28EE089A 		vmul.f32	s18, s16, s16
 2092 007a E4EE887A 		vfma.f32	s15, s9, s16
 2093 007e A8EEA89A 		vfma.f32	s18, s17, s17
 2094 0082 67EE857A 		vmul.f32	s15, s15, s10
 2095 0086 F0EE006A 		vmov.f32	s13, #2.0e+0
 2096 008a 69EEC89A 		vnmul.f32	s19, s19, s16
 2097 008e A0EE407A 		vfms.f32	s14, s0, s0
 2098 0092 A7EEA69A 		vfma.f32	s18, s15, s13
 2099 0096 E5EEA89A 		vfma.f32	s19, s11, s17
 2100 009a D0ED486A 		vldr.32	s13, [r0, #288]
 2101 009e D0ED497A 		vldr.32	s15, [r0, #292]
 2102 00a2 A7EE269A 		vfma.f32	s18, s14, s13
 2103 00a6 18EE900A 		vmov	r0, s17
 2104 00aa 79EEE79A 		vsub.f32	s19, s19, s15
 2105 00ae F0EE60AA 		vmov.f32	s21, s1
 2106 00b2 B0EE41BA 		vmov.f32	s22, s2
 2107 00b6 B0EE40AA 		vmov.f32	s20, s0
 2108 00ba FFF7FEFF 		bl	__aeabi_f2d
 2109 00be 0646     		mov	r6, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 38


 2110 00c0 19EE100A 		vmov	r0, s18
 2111 00c4 0F46     		mov	r7, r1
 2112 00c6 FFF7FEFF 		bl	__aeabi_f2d
 2113 00ca CDE90401 		strd	r0, [sp, #16]
 2114 00ce 19EE900A 		vmov	r0, s19
 2115 00d2 FFF7FEFF 		bl	__aeabi_f2d
 2116 00d6 CDE90201 		strd	r0, [sp, #8]
 2117 00da 18EE100A 		vmov	r0, s16
 2118 00de FFF7FEFF 		bl	__aeabi_f2d
 2119 00e2 3246     		mov	r2, r6
 2120 00e4 3B46     		mov	r3, r7
 2121 00e6 CDE90001 		strd	r0, [sp]
 2122 00ea 3D48     		ldr	r0, .L198
 2123 00ec FFF7FEFF 		bl	debugPrintf
 2124 00f0 2E46     		mov	r6, r5
 2125 00f2 05F10C07 		add	r7, r5, #12
 2126              	.L194:
 2127 00f6 56F8040B 		ldr	r0, [r6], #4	@ float
 2128 00fa FFF7FEFF 		bl	__aeabi_f2d
 2129 00fe 0246     		mov	r2, r0
 2130 0100 0B46     		mov	r3, r1
 2131 0102 4046     		mov	r0, r8
 2132 0104 FFF7FEFF 		bl	debugPrintf
 2133 0108 B742     		cmp	r7, r6
 2134 010a F4D1     		bne	.L194
 2135 010c D4ED4A6A 		vldr.32	s13, [r4, #296]
 2136 0110 29EE669A 		vnmul.f32	s18, s18, s13
 2137 0114 B1EE697A 		vneg.f32	s14, s19
 2138 0118 A9EEA99A 		vfma.f32	s18, s19, s19
 2139 011c B0EEC99A 		vabs.f32	s18, s18
 2140 0120 F1EEC97A 		vsqrt.f32	s15, s18
 2141 0124 37EE677A 		vsub.f32	s14, s14, s15
 2142 0128 C7EE267A 		vdiv.f32	s15, s14, s13
 2143 012c C5ED027A 		vstr.32	s15, [r5, #8]
 2144 0130 94ED467A 		vldr.32	s14, [r4, #280]
 2145 0134 D4ED456A 		vldr.32	s13, [r4, #276]
 2146 0138 E7EE878A 		vfma.f32	s17, s15, s14
 2147 013c 88EEA67A 		vdiv.f32	s14, s17, s13
 2148 0140 85ED007A 		vstr.32	s14, [r5]
 2149 0144 94ED476A 		vldr.32	s12, [r4, #284]
 2150 0148 D4ED456A 		vldr.32	s13, [r4, #276]
 2151 014c A7EE868A 		vfma.f32	s16, s15, s12
 2152 0150 17EE100A 		vmov	r0, s14
 2153 0154 C8EE267A 		vdiv.f32	s15, s16, s13
 2154 0158 C5ED017A 		vstr.32	s15, [r5, #4]
 2155 015c FFF7FEFF 		bl	__aeabi_f2d
 2156 0160 0246     		mov	r2, r0
 2157 0162 0B46     		mov	r3, r1
 2158 0164 1F48     		ldr	r0, .L198+4
 2159 0166 FFF7FEFF 		bl	debugPrintf
 2160 016a 6868     		ldr	r0, [r5, #4]	@ float
 2161 016c FFF7FEFF 		bl	__aeabi_f2d
 2162 0170 0246     		mov	r2, r0
 2163 0172 0B46     		mov	r3, r1
 2164 0174 1B48     		ldr	r0, .L198+4
 2165 0176 FFF7FEFF 		bl	debugPrintf
 2166 017a A868     		ldr	r0, [r5, #8]	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 39


 2167 017c FFF7FEFF 		bl	__aeabi_f2d
 2168 0180 0246     		mov	r2, r0
 2169 0182 0B46     		mov	r3, r1
 2170 0184 1748     		ldr	r0, .L198+4
 2171 0186 FFF7FEFF 		bl	debugPrintf
 2172 018a 1AEE100A 		vmov	r0, s20
 2173 018e FFF7FEFF 		bl	__aeabi_f2d
 2174 0192 0646     		mov	r6, r0
 2175 0194 A868     		ldr	r0, [r5, #8]	@ float
 2176 0196 0F46     		mov	r7, r1
 2177 0198 FFF7FEFF 		bl	__aeabi_f2d
 2178 019c CDE90801 		strd	r0, [sp, #32]
 2179 01a0 6868     		ldr	r0, [r5, #4]	@ float
 2180 01a2 FFF7FEFF 		bl	__aeabi_f2d
 2181 01a6 CDE90601 		strd	r0, [sp, #24]
 2182 01aa 2868     		ldr	r0, [r5]	@ float
 2183 01ac FFF7FEFF 		bl	__aeabi_f2d
 2184 01b0 CDE90401 		strd	r0, [sp, #16]
 2185 01b4 1BEE100A 		vmov	r0, s22
 2186 01b8 FFF7FEFF 		bl	__aeabi_f2d
 2187 01bc CDE90201 		strd	r0, [sp, #8]
 2188 01c0 1AEE900A 		vmov	r0, s21
 2189 01c4 FFF7FEFF 		bl	__aeabi_f2d
 2190 01c8 3246     		mov	r2, r6
 2191 01ca CDE90001 		strd	r0, [sp]
 2192 01ce 3B46     		mov	r3, r7
 2193 01d0 0548     		ldr	r0, .L198+8
 2194 01d2 FFF7FEFF 		bl	debugPrintf
 2195 01d6 0AB0     		add	sp, sp, #40
 2196              		@ sp needed
 2197 01d8 BDEC088B 		vldm	sp!, {d8-d11}
 2198 01dc BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2199              	.L199:
 2200              		.align	2
 2201              	.L198:
 2202 01e0 00000000 		.word	.LC23
 2203 01e4 64000000 		.word	.LC25
 2204 01e8 80000000 		.word	.LC26
 2205 01ec 44000000 		.word	.LC24
 2206              		.size	_ZNK21HangprinterKinematics16InverseTransformEfffPf, .-_ZNK21HangprinterKinematics16InverseT
 2207              		.section	.text._ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 2208              		.align	1
 2209              		.p2align 2,,3
 2210              		.global	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf
 2211              		.syntax unified
 2212              		.thumb
 2213              		.thumb_func
 2214              		.fpu fpv4-sp-d16
 2215              		.type	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 2216              	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 2217              		@ args = 8, pretend = 0, frame = 0
 2218              		@ frame_needed = 0, uses_anonymous_args = 0
 2219              		@ link register save eliminated.
 2220 0000 D1ED003A 		vldr.32	s7, [r1]	@ int
 2221 0004 91ED014A 		vldr.32	s8, [r1, #4]	@ int
 2222 0008 D1ED024A 		vldr.32	s9, [r1, #8]	@ int
 2223 000c 90ED287A 		vldr.32	s14, [r0, #160]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 40


 2224 0010 D0ED297A 		vldr.32	s15, [r0, #164]
 2225 0014 90ED120A 		vldr.32	s0, [r0, #72]
 2226 0018 90ED2C5A 		vldr.32	s10, [r0, #176]
 2227 001c D0ED2D5A 		vldr.32	s11, [r0, #180]
 2228 0020 90ED2E6A 		vldr.32	s12, [r0, #184]
 2229 0024 D0ED300A 		vldr.32	s1, [r0, #192]
 2230 0028 90ED311A 		vldr.32	s2, [r0, #196]
 2231 002c D0ED321A 		vldr.32	s3, [r0, #200]
 2232 0030 90ED342A 		vldr.32	s4, [r0, #208]
 2233 0034 D0ED352A 		vldr.32	s5, [r0, #212]
 2234 0038 90ED363A 		vldr.32	s6, [r0, #216]
 2235 003c 2DED048B 		vpush.64	{d8, d9}
 2236 0040 F8EEE33A 		vcvt.f32.s32	s7, s7
 2237 0044 90ED2A9A 		vldr.32	s18, [r0, #168]
 2238 0048 D0ED108A 		vldr.32	s17, [r0, #64]
 2239 004c 90ED118A 		vldr.32	s16, [r0, #68]
 2240 0050 0599     		ldr	r1, [sp, #20]
 2241 0052 B8EEC44A 		vcvt.f32.s32	s8, s8
 2242 0056 F8EEE44A 		vcvt.f32.s32	s9, s9
 2243 005a C3EE876A 		vdiv.f32	s13, s7, s14
 2244 005e 84EE277A 		vdiv.f32	s14, s8, s15
 2245 0062 C4EE897A 		vdiv.f32	s15, s9, s18
 2246 0066 76EEA86A 		vadd.f32	s13, s13, s17
 2247 006a 37EE087A 		vadd.f32	s14, s14, s16
 2248 006e 77EE807A 		vadd.f32	s15, s15, s0
 2249 0072 96EEA65A 		vfnms.f32	s10, s13, s13
 2250 0076 BDEC048B 		vldm	sp!, {d8-d9}
 2251 007a D7EE075A 		vfnms.f32	s11, s14, s14
 2252 007e 97EEA76A 		vfnms.f32	s12, s15, s15
 2253 0082 85EE200A 		vdiv.f32	s0, s10, s1
 2254 0086 C5EE810A 		vdiv.f32	s1, s11, s2
 2255 008a 86EE211A 		vdiv.f32	s2, s12, s3
 2256 008e 30EE020A 		vadd.f32	s0, s0, s4
 2257 0092 70EEA20A 		vadd.f32	s1, s1, s5
 2258 0096 31EE031A 		vadd.f32	s2, s2, s6
 2259 009a FFF7FEBF 		b	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2260              		.size	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK21HangprinterKinematics
 2261              		.global	__aeabi_dsub
 2262              		.global	__aeabi_ddiv
 2263 009e 00BF     		.section	.text._ZNK21HangprinterKinematics17ComputeDerivativeEjfff,"ax",%progbits
 2264              		.align	1
 2265              		.p2align 2,,3
 2266              		.global	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 2267              		.syntax unified
 2268              		.thumb
 2269              		.thumb_func
 2270              		.fpu fpv4-sp-d16
 2271              		.type	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff, %function
 2272              	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff:
 2273              		@ args = 0, pretend = 0, frame = 664
 2274              		@ frame_needed = 0, uses_anonymous_args = 0
 2275 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2276 0004 2DED068B 		vpush.64	{d8, d9, d10}
 2277 0008 00F11003 		add	r3, r0, #16
 2278 000c ADF5277D 		sub	sp, sp, #668
 2279 0010 0446     		mov	r4, r0
 2280 0012 CDE90013 		strd	r1, r3, [sp]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 41


 2281 0016 93E80700 		ldm	r3, {r0, r1, r2}
 2282 001a 04F11C05 		add	r5, r4, #28
 2283 001e 12AB     		add	r3, sp, #72
 2284 0020 83E80700 		stm	r3, {r0, r1, r2}
 2285 0024 95E80700 		ldm	r5, {r0, r1, r2}
 2286 0028 04F12806 		add	r6, r4, #40
 2287 002c 15AB     		add	r3, sp, #84
 2288 002e 83E80700 		stm	r3, {r0, r1, r2}
 2289 0032 96E80700 		ldm	r6, {r0, r1, r2}
 2290 0036 94ED017A 		vldr.32	s14, [r4, #4]
 2291 003a D4ED027A 		vldr.32	s15, [r4, #8]
 2292 003e 0396     		str	r6, [sp, #12]
 2293 0040 18AB     		add	r3, sp, #96
 2294 0042 04F14006 		add	r6, r4, #64
 2295 0046 83E80700 		stm	r3, {r0, r1, r2}
 2296 004a D549     		ldr	r1, .L229+8
 2297 004c 94ED0D9A 		vldr.32	s18, [r4, #52]
 2298 0050 94F80CB0 		ldrb	fp, [r4, #12]	@ zero_extendqisi2
 2299 0054 94F80DA0 		ldrb	r10, [r4, #13]	@ zero_extendqisi2
 2300 0058 94F80E90 		ldrb	r9, [r4, #14]	@ zero_extendqisi2
 2301 005c 94F80F80 		ldrb	r8, [r4, #15]	@ zero_extendqisi2
 2302 0060 0295     		str	r5, [sp, #8]
 2303 0062 8DED0F7A 		vstr.32	s14, [sp, #60]
 2304 0066 CDED107A 		vstr.32	s15, [sp, #64]
 2305 006a 0E91     		str	r1, [sp, #56]
 2306 006c 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 2307 0070 04F15007 		add	r7, r4, #80
 2308 0074 1EAD     		add	r5, sp, #120
 2309 0076 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2310 007a 97E80F00 		ldm	r7, {r0, r1, r2, r3}
 2311 007e 04F1600C 		add	ip, r4, #96
 2312 0082 22AD     		add	r5, sp, #136
 2313 0084 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2314 0088 9CE80F00 		ldm	ip, {r0, r1, r2, r3}
 2315 008c CDF818C0 		str	ip, [sp, #24]
 2316 0090 26AD     		add	r5, sp, #152
 2317 0092 04F1700C 		add	ip, r4, #112
 2318 0096 8DF844B0 		strb	fp, [sp, #68]
 2319 009a 8DF845A0 		strb	r10, [sp, #69]
 2320 009e 8DF84690 		strb	r9, [sp, #70]
 2321 00a2 8DED1B9A 		vstr.32	s18, [sp, #108]
 2322 00a6 0496     		str	r6, [sp, #16]
 2323 00a8 0597     		str	r7, [sp, #20]
 2324 00aa 8DF84780 		strb	r8, [sp, #71]
 2325 00ae 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2326 00b2 9CE80F00 		ldm	ip, {r0, r1, r2, r3}
 2327 00b6 CDF81CC0 		str	ip, [sp, #28]
 2328 00ba 2AAD     		add	r5, sp, #168
 2329 00bc 04F1800C 		add	ip, r4, #128
 2330 00c0 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2331 00c4 9CE80F00 		ldm	ip, {r0, r1, r2, r3}
 2332 00c8 CDF820C0 		str	ip, [sp, #32]
 2333 00cc 2EAD     		add	r5, sp, #184
 2334 00ce 04F1900C 		add	ip, r4, #144
 2335 00d2 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2336 00d6 9CE80F00 		ldm	ip, {r0, r1, r2, r3}
 2337 00da D4ED0E8A 		vldr.32	s17, [r4, #56]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 42


 2338 00de 94ED0F8A 		vldr.32	s16, [r4, #60]
 2339 00e2 CDED1C8A 		vstr.32	s17, [sp, #112]
 2340 00e6 04F1A00E 		add	lr, r4, #160
 2341 00ea 32AD     		add	r5, sp, #200
 2342 00ec 8DED1D8A 		vstr.32	s16, [sp, #116]
 2343 00f0 CDF824C0 		str	ip, [sp, #36]
 2344 00f4 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2345 00f8 9EE80F00 		ldm	lr, {r0, r1, r2, r3}
 2346 00fc 04F1B007 		add	r7, r4, #176
 2347 0100 36AD     		add	r5, sp, #216
 2348 0102 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2349 0106 97E80F00 		ldm	r7, {r0, r1, r2, r3}
 2350 010a 04F1C006 		add	r6, r4, #192
 2351 010e 3AAD     		add	r5, sp, #232
 2352 0110 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2353 0114 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 2354 0118 04F1D005 		add	r5, r4, #208
 2355 011c 0DF1F80C 		add	ip, sp, #248
 2356 0120 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2357 0124 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 2358 0128 D4ED38AA 		vldr.32	s21, [r4, #224]
 2359 012c 94ED39AA 		vldr.32	s20, [r4, #228]
 2360 0130 D4ED3A9A 		vldr.32	s19, [r4, #232]
 2361 0134 D4ED3B1A 		vldr.32	s3, [r4, #236]
 2362 0138 94ED3C2A 		vldr.32	s4, [r4, #240]
 2363 013c D4ED3D2A 		vldr.32	s5, [r4, #244]
 2364 0140 94ED3E3A 		vldr.32	s6, [r4, #248]
 2365 0144 D4ED3F3A 		vldr.32	s7, [r4, #252]
 2366 0148 94ED404A 		vldr.32	s8, [r4, #256]
 2367 014c D4ED414A 		vldr.32	s9, [r4, #260]
 2368 0150 94ED425A 		vldr.32	s10, [r4, #264]
 2369 0154 D4ED435A 		vldr.32	s11, [r4, #268]
 2370 0158 94ED446A 		vldr.32	s12, [r4, #272]
 2371 015c D4ED456A 		vldr.32	s13, [r4, #276]
 2372 0160 8DED5B7A 		vstr.32	s14, [sp, #364]
 2373 0164 0DF5847C 		add	ip, sp, #264
 2374 0168 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2375 016c 94ED467A 		vldr.32	s14, [r4, #280]
 2376 0170 CDED5C7A 		vstr.32	s15, [sp, #368]
 2377 0174 8DF874B1 		strb	fp, [sp, #372]
 2378 0178 D4ED477A 		vldr.32	s15, [r4, #284]
 2379 017c D4F820B1 		ldr	fp, [r4, #288]	@ float
 2380 0180 8DF875A1 		strb	r10, [sp, #373]
 2381 0184 8DF87691 		strb	r9, [sp, #374]
 2382 0188 D4F824A1 		ldr	r10, [r4, #292]	@ float
 2383 018c D4F82891 		ldr	r9, [r4, #296]	@ float
 2384 0190 CDED46AA 		vstr.32	s21, [sp, #280]
 2385 0194 94F82C41 		ldrb	r4, [r4, #300]	@ zero_extendqisi2
 2386 0198 8DED47AA 		vstr.32	s20, [sp, #284]
 2387 019c CDED489A 		vstr.32	s19, [sp, #288]
 2388 01a0 CDED491A 		vstr.32	s3, [sp, #292]
 2389 01a4 8DED4A2A 		vstr.32	s4, [sp, #296]
 2390 01a8 CDED4B2A 		vstr.32	s5, [sp, #300]
 2391 01ac 8DED4C3A 		vstr.32	s6, [sp, #304]
 2392 01b0 CDED4D3A 		vstr.32	s7, [sp, #308]
 2393 01b4 8DF87781 		strb	r8, [sp, #375]
 2394 01b8 019A     		ldr	r2, [sp, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 43


 2395 01ba 7949     		ldr	r1, .L229+8
 2396 01bc 5A91     		str	r1, [sp, #360]
 2397 01be 07CA     		ldm	r2, {r0, r1, r2}
 2398 01c0 5EAB     		add	r3, sp, #376
 2399 01c2 83E80700 		stm	r3, {r0, r1, r2}
 2400 01c6 0298     		ldr	r0, [sp, #8]
 2401 01c8 8DED4E4A 		vstr.32	s8, [sp, #312]
 2402 01cc 07C8     		ldm	r0, {r0, r1, r2}
 2403 01ce 61AB     		add	r3, sp, #388
 2404 01d0 83E80700 		stm	r3, {r0, r1, r2}
 2405 01d4 039B     		ldr	r3, [sp, #12]
 2406 01d6 CDED4F4A 		vstr.32	s9, [sp, #316]
 2407 01da 93E80700 		ldm	r3, {r0, r1, r2}
 2408 01de 64AB     		add	r3, sp, #400
 2409 01e0 8DED505A 		vstr.32	s10, [sp, #320]
 2410 01e4 CDED515A 		vstr.32	s11, [sp, #324]
 2411 01e8 8DED526A 		vstr.32	s12, [sp, #328]
 2412 01ec CDED536A 		vstr.32	s13, [sp, #332]
 2413 01f0 8DED547A 		vstr.32	s14, [sp, #336]
 2414 01f4 CDED557A 		vstr.32	s15, [sp, #340]
 2415 01f8 CDF858B1 		str	fp, [sp, #344]	@ float
 2416 01fc CDF85CA1 		str	r10, [sp, #348]	@ float
 2417 0200 CDF86091 		str	r9, [sp, #352]	@ float
 2418 0204 8DF86441 		strb	r4, [sp, #356]
 2419 0208 83E80700 		stm	r3, {r0, r1, r2}
 2420 020c 049B     		ldr	r3, [sp, #16]
 2421 020e 8DED679A 		vstr.32	s18, [sp, #412]
 2422 0212 0FCB     		ldm	r3, {r0, r1, r2, r3}
 2423 0214 0DF5D47C 		add	ip, sp, #424
 2424 0218 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2425 021c 059B     		ldr	r3, [sp, #20]
 2426 021e CDED688A 		vstr.32	s17, [sp, #416]
 2427 0222 0FCB     		ldm	r3, {r0, r1, r2, r3}
 2428 0224 0DF5DC7C 		add	ip, sp, #440
 2429 0228 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2430 022c 069B     		ldr	r3, [sp, #24]
 2431 022e 8DED698A 		vstr.32	s16, [sp, #420]
 2432 0232 0FCB     		ldm	r3, {r0, r1, r2, r3}
 2433 0234 0DF5E47C 		add	ip, sp, #456
 2434 0238 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2435 023c 079A     		ldr	r2, [sp, #28]
 2436 023e 0FCA     		ldm	r2, {r0, r1, r2, r3}
 2437 0240 0DF5EC7C 		add	ip, sp, #472
 2438 0244 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2439 0248 0898     		ldr	r0, [sp, #32]
 2440 024a 0FC8     		ldm	r0, {r0, r1, r2, r3}
 2441 024c 0DF5F47C 		add	ip, sp, #488
 2442 0250 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2443 0254 099B     		ldr	r3, [sp, #36]
 2444 0256 0FCB     		ldm	r3, {r0, r1, r2, r3}
 2445 0258 0DF5FC7C 		add	ip, sp, #504
 2446 025c 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2447 0260 9EE80F00 		ldm	lr, {r0, r1, r2, r3}
 2448 0264 0DF5027C 		add	ip, sp, #520
 2449 0268 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2450 026c 97E80F00 		ldm	r7, {r0, r1, r2, r3}
 2451 0270 86AF     		add	r7, sp, #536
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 44


 2452 0272 87E80F00 		stm	r7, {r0, r1, r2, r3}
 2453 0276 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 2454 027a 8AAE     		add	r6, sp, #552
 2455 027c 86E80F00 		stm	r6, {r0, r1, r2, r3}
 2456 0280 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 2457 0284 009E     		ldr	r6, [sp]
 2458 0286 CDED92AA 		vstr.32	s21, [sp, #584]
 2459 028a 8EAD     		add	r5, sp, #568
 2460 028c 033E     		subs	r6, r6, #3
 2461 028e 8DED93AA 		vstr.32	s20, [sp, #588]
 2462 0292 CDED949A 		vstr.32	s19, [sp, #592]
 2463 0296 CDED951A 		vstr.32	s3, [sp, #596]
 2464 029a 8DED962A 		vstr.32	s4, [sp, #600]
 2465 029e CDED972A 		vstr.32	s5, [sp, #604]
 2466 02a2 8DED983A 		vstr.32	s6, [sp, #608]
 2467 02a6 CDED993A 		vstr.32	s7, [sp, #612]
 2468 02aa 8DED9A4A 		vstr.32	s8, [sp, #616]
 2469 02ae CDED9B4A 		vstr.32	s9, [sp, #620]
 2470 02b2 B0EE408A 		vmov.f32	s16, s0
 2471 02b6 8DED9C5A 		vstr.32	s10, [sp, #624]
 2472 02ba B0EE609A 		vmov.f32	s18, s1
 2473 02be F0EE418A 		vmov.f32	s17, s2
 2474 02c2 CDED9D5A 		vstr.32	s11, [sp, #628]
 2475 02c6 8DED9E6A 		vstr.32	s12, [sp, #632]
 2476 02ca CDED9F6A 		vstr.32	s13, [sp, #636]
 2477 02ce 8DEDA07A 		vstr.32	s14, [sp, #640]
 2478 02d2 CDEDA17A 		vstr.32	s15, [sp, #644]
 2479 02d6 CDF888B2 		str	fp, [sp, #648]	@ float
 2480 02da CDF88CA2 		str	r10, [sp, #652]	@ float
 2481 02de CDF89092 		str	r9, [sp, #656]	@ float
 2482 02e2 8DF89442 		strb	r4, [sp, #660]
 2483 02e6 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2484 02ea 052E     		cmp	r6, #5
 2485 02ec 00F2B080 		bhi	.L203
 2486 02f0 DFE806F0 		tbb	[pc, r6]
 2487              	.L205:
 2488 02f4 6F       		.byte	(.L204-.L205)/2
 2489 02f5 84       		.byte	(.L206-.L205)/2
 2490 02f6 99       		.byte	(.L207-.L205)/2
 2491 02f7 5A       		.byte	(.L208-.L205)/2
 2492 02f8 03       		.byte	(.L210-.L205)/2
 2493 02f9 03       		.byte	(.L210-.L205)/2
 2494              		.p2align 1
 2495              	.L210:
 2496 02fa 9DED177A 		vldr.32	s14, [sp, #92]
 2497 02fe DFED296A 		vldr.32	s13, .L229+12
 2498 0302 DDED637A 		vldr.32	s15, [sp, #396]
 2499 0306 37EE267A 		vadd.f32	s14, s14, s13
 2500 030a 77EEE67A 		vsub.f32	s15, s15, s13
 2501 030e 0EA8     		add	r0, sp, #56
 2502 0310 8DED177A 		vstr.32	s14, [sp, #92]
 2503 0314 CDED637A 		vstr.32	s15, [sp, #396]
 2504 0318 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2505 031c 5AA8     		add	r0, sp, #360
 2506 031e FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2507              	.L211:
 2508 0322 0BAC     		add	r4, sp, #44
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 45


 2509 0324 0EA8     		add	r0, sp, #56
 2510 0326 2146     		mov	r1, r4
 2511 0328 B0EE681A 		vmov.f32	s2, s17
 2512 032c F0EE490A 		vmov.f32	s1, s18
 2513 0330 B0EE480A 		vmov.f32	s0, s16
 2514 0334 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2515 0338 009B     		ldr	r3, [sp]
 2516 033a A568     		ldr	r5, [r4, #8]	@ float
 2517 033c 002B     		cmp	r3, #0
 2518 033e 40F0B280 		bne	.L219
 2519              	.L213:
 2520 0342 DFED187A 		vldr.32	s15, .L229+12
 2521 0346 38EE678A 		vsub.f32	s16, s16, s15
 2522              	.L217:
 2523 034a F0EE490A 		vmov.f32	s1, s18
 2524 034e B0EE480A 		vmov.f32	s0, s16
 2525 0352 B0EE681A 		vmov.f32	s2, s17
 2526 0356 5AA8     		add	r0, sp, #360
 2527 0358 2146     		mov	r1, r4
 2528 035a FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2529 035e 2846     		mov	r0, r5	@ float
 2530 0360 FFF7FEFF 		bl	__aeabi_f2d
 2531 0364 0646     		mov	r6, r0
 2532 0366 A068     		ldr	r0, [r4, #8]	@ float
 2533 0368 0F46     		mov	r7, r1
 2534 036a FFF7FEFF 		bl	__aeabi_f2d
 2535 036e 0246     		mov	r2, r0
 2536 0370 0B46     		mov	r3, r1
 2537 0372 3046     		mov	r0, r6
 2538 0374 3946     		mov	r1, r7
 2539 0376 FFF7FEFF 		bl	__aeabi_dsub
 2540 037a 07A3     		adr	r3, .L229
 2541 037c D3E90023 		ldrd	r2, [r3]
 2542 0380 FFF7FEFF 		bl	__aeabi_ddiv
 2543 0384 41EC100B 		vmov	d0, r0, r1
 2544 0388 0DF5277D 		add	sp, sp, #668
 2545              		@ sp needed
 2546 038c BDEC068B 		vldm	sp!, {d8-d10}
 2547 0390 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2548              	.L230:
 2549 0394 AFF30080 		.align	3
 2550              	.L229:
 2551 0398 000000A0 		.word	-1610612736
 2552 039c 9999D93F 		.word	1071225241
 2553 03a0 08000000 		.word	.LANCHOR4+8
 2554 03a4 CDCC4C3E 		.word	1045220557
 2555              	.L208:
 2556 03a8 9DED147A 		vldr.32	s14, [sp, #80]
 2557 03ac 5FED036A 		vldr.32	s13, .L229+12
 2558 03b0 DDED607A 		vldr.32	s15, [sp, #384]
 2559 03b4 37EE267A 		vadd.f32	s14, s14, s13
 2560 03b8 77EEE67A 		vsub.f32	s15, s15, s13
 2561 03bc 0EA8     		add	r0, sp, #56
 2562 03be 8DED147A 		vstr.32	s14, [sp, #80]
 2563 03c2 CDED607A 		vstr.32	s15, [sp, #384]
 2564 03c6 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2565 03ca 5AA8     		add	r0, sp, #360
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 46


 2566 03cc FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2567 03d0 A7E7     		b	.L211
 2568              	.L204:
 2569 03d2 9DED167A 		vldr.32	s14, [sp, #88]
 2570 03d6 5FED0D6A 		vldr.32	s13, .L229+12
 2571 03da DDED627A 		vldr.32	s15, [sp, #392]
 2572 03de 37EE267A 		vadd.f32	s14, s14, s13
 2573 03e2 77EEE67A 		vsub.f32	s15, s15, s13
 2574 03e6 0EA8     		add	r0, sp, #56
 2575 03e8 8DED167A 		vstr.32	s14, [sp, #88]
 2576 03ec CDED627A 		vstr.32	s15, [sp, #392]
 2577 03f0 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2578 03f4 5AA8     		add	r0, sp, #360
 2579 03f6 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2580 03fa 92E7     		b	.L211
 2581              	.L206:
 2582 03fc 9DED187A 		vldr.32	s14, [sp, #96]
 2583 0400 5FED186A 		vldr.32	s13, .L229+12
 2584 0404 DDED647A 		vldr.32	s15, [sp, #400]
 2585 0408 37EE267A 		vadd.f32	s14, s14, s13
 2586 040c 77EEE67A 		vsub.f32	s15, s15, s13
 2587 0410 0EA8     		add	r0, sp, #56
 2588 0412 8DED187A 		vstr.32	s14, [sp, #96]
 2589 0416 CDED647A 		vstr.32	s15, [sp, #400]
 2590 041a FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2591 041e 5AA8     		add	r0, sp, #360
 2592 0420 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2593 0424 7DE7     		b	.L211
 2594              	.L207:
 2595 0426 9DED197A 		vldr.32	s14, [sp, #100]
 2596 042a 5FED226A 		vldr.32	s13, .L229+12
 2597 042e DDED657A 		vldr.32	s15, [sp, #404]
 2598 0432 37EE267A 		vadd.f32	s14, s14, s13
 2599 0436 77EEE67A 		vsub.f32	s15, s15, s13
 2600 043a 0EA8     		add	r0, sp, #56
 2601 043c 8DED197A 		vstr.32	s14, [sp, #100]
 2602 0440 CDED657A 		vstr.32	s15, [sp, #404]
 2603 0444 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2604 0448 5AA8     		add	r0, sp, #360
 2605 044a FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2606 044e 68E7     		b	.L211
 2607              	.L203:
 2608 0450 009B     		ldr	r3, [sp]
 2609 0452 53B9     		cbnz	r3, .L212
 2610 0454 1FED2D0A 		vldr.32	s0, .L229+12
 2611 0458 0BAC     		add	r4, sp, #44
 2612 045a 0EA8     		add	r0, sp, #56
 2613 045c 38EE000A 		vadd.f32	s0, s16, s0
 2614 0460 2146     		mov	r1, r4
 2615 0462 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2616 0466 A568     		ldr	r5, [r4, #8]	@ float
 2617 0468 6BE7     		b	.L213
 2618              	.L212:
 2619 046a 009B     		ldr	r3, [sp]
 2620 046c 012B     		cmp	r3, #1
 2621 046e 26D1     		bne	.L214
 2622 0470 5FED340A 		vldr.32	s1, .L229+12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 47


 2623 0474 0BAC     		add	r4, sp, #44
 2624 0476 0EA8     		add	r0, sp, #56
 2625 0478 79EE200A 		vadd.f32	s1, s18, s1
 2626 047c 2146     		mov	r1, r4
 2627 047e FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2628 0482 A568     		ldr	r5, [r4, #8]	@ float
 2629              	.L215:
 2630 0484 5FED397A 		vldr.32	s15, .L229+12
 2631 0488 39EE679A 		vsub.f32	s18, s18, s15
 2632 048c 5DE7     		b	.L217
 2633              	.L228:
 2634 048e 0BAC     		add	r4, sp, #44
 2635 0490 0EA8     		add	r0, sp, #56
 2636 0492 2146     		mov	r1, r4
 2637 0494 B0EE681A 		vmov.f32	s2, s17
 2638 0498 F0EE490A 		vmov.f32	s1, s18
 2639 049c B0EE480A 		vmov.f32	s0, s16
 2640 04a0 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2641 04a4 A568     		ldr	r5, [r4, #8]	@ float
 2642              	.L219:
 2643 04a6 009B     		ldr	r3, [sp]
 2644 04a8 012B     		cmp	r3, #1
 2645 04aa EBD0     		beq	.L215
 2646 04ac 009B     		ldr	r3, [sp]
 2647 04ae 022B     		cmp	r3, #2
 2648 04b0 7FF44BAF 		bne	.L217
 2649              	.L216:
 2650 04b4 5FED457A 		vldr.32	s15, .L229+12
 2651 04b8 78EEE78A 		vsub.f32	s17, s17, s15
 2652 04bc 45E7     		b	.L217
 2653              	.L214:
 2654 04be 009B     		ldr	r3, [sp]
 2655 04c0 022B     		cmp	r3, #2
 2656 04c2 E4D1     		bne	.L228
 2657 04c4 1FED491A 		vldr.32	s2, .L229+12
 2658 04c8 0BAC     		add	r4, sp, #44
 2659 04ca 0EA8     		add	r0, sp, #56
 2660 04cc 38EE811A 		vadd.f32	s2, s17, s2
 2661 04d0 2146     		mov	r1, r4
 2662 04d2 F0EE490A 		vmov.f32	s1, s18
 2663 04d6 B0EE480A 		vmov.f32	s0, s16
 2664 04da FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2665 04de A568     		ldr	r5, [r4, #8]	@ float
 2666 04e0 E8E7     		b	.L216
 2667              		.size	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff, .-_ZNK21HangprinterKinematics17ComputeD
 2668              		.global	__aeabi_d2f
 2669 04e2 00BF     		.section	.text._ZN21HangprinterKinematics6AdjustEjPKd,"ax",%progbits
 2670              		.align	1
 2671              		.p2align 2,,3
 2672              		.global	_ZN21HangprinterKinematics6AdjustEjPKd
 2673              		.syntax unified
 2674              		.thumb
 2675              		.thumb_func
 2676              		.fpu fpv4-sp-d16
 2677              		.type	_ZN21HangprinterKinematics6AdjustEjPKd, %function
 2678              	_ZN21HangprinterKinematics6AdjustEjPKd:
 2679              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 48


 2680              		@ frame_needed = 0, uses_anonymous_args = 0
 2681 0000 0329     		cmp	r1, #3
 2682 0002 70B5     		push	{r4, r5, r6, lr}
 2683 0004 0446     		mov	r4, r0
 2684 0006 53D9     		bls	.L233
 2685 0008 0D46     		mov	r5, r1
 2686 000a D2E90601 		ldrd	r0, [r2, #24]
 2687 000e 1646     		mov	r6, r2
 2688 0010 FFF7FEFF 		bl	__aeabi_d2f
 2689 0014 D4ED087A 		vldr.32	s15, [r4, #32]
 2690 0018 07EE100A 		vmov	s14, r0
 2691 001c 77EE877A 		vadd.f32	s15, s15, s14
 2692 0020 042D     		cmp	r5, #4
 2693 0022 C4ED087A 		vstr.32	s15, [r4, #32]
 2694 0026 43D0     		beq	.L233
 2695 0028 D6E90801 		ldrd	r0, [r6, #32]
 2696 002c FFF7FEFF 		bl	__aeabi_d2f
 2697 0030 D4ED0A7A 		vldr.32	s15, [r4, #40]
 2698 0034 07EE100A 		vmov	s14, r0
 2699 0038 77EE877A 		vadd.f32	s15, s15, s14
 2700 003c 052D     		cmp	r5, #5
 2701 003e C4ED0A7A 		vstr.32	s15, [r4, #40]
 2702 0042 35D0     		beq	.L233
 2703 0044 D6E90A01 		ldrd	r0, [r6, #40]
 2704 0048 FFF7FEFF 		bl	__aeabi_d2f
 2705 004c D4ED0B7A 		vldr.32	s15, [r4, #44]
 2706 0050 07EE100A 		vmov	s14, r0
 2707 0054 77EE877A 		vadd.f32	s15, s15, s14
 2708 0058 062D     		cmp	r5, #6
 2709 005a C4ED0B7A 		vstr.32	s15, [r4, #44]
 2710 005e 27D0     		beq	.L233
 2711 0060 D6E90C01 		ldrd	r0, [r6, #48]
 2712 0064 FFF7FEFF 		bl	__aeabi_d2f
 2713 0068 D4ED067A 		vldr.32	s15, [r4, #24]
 2714 006c 07EE100A 		vmov	s14, r0
 2715 0070 77EE877A 		vadd.f32	s15, s15, s14
 2716 0074 072D     		cmp	r5, #7
 2717 0076 C4ED067A 		vstr.32	s15, [r4, #24]
 2718 007a 19D0     		beq	.L233
 2719 007c D6E90E01 		ldrd	r0, [r6, #56]
 2720 0080 FFF7FEFF 		bl	__aeabi_d2f
 2721 0084 D4ED097A 		vldr.32	s15, [r4, #36]
 2722 0088 07EE100A 		vmov	s14, r0
 2723 008c 77EE877A 		vadd.f32	s15, s15, s14
 2724 0090 082D     		cmp	r5, #8
 2725 0092 C4ED097A 		vstr.32	s15, [r4, #36]
 2726 0096 0BD0     		beq	.L233
 2727 0098 D6E91001 		ldrd	r0, [r6, #64]
 2728 009c FFF7FEFF 		bl	__aeabi_d2f
 2729 00a0 D4ED0C7A 		vldr.32	s15, [r4, #48]
 2730 00a4 07EE100A 		vmov	s14, r0
 2731 00a8 77EE877A 		vadd.f32	s15, s15, s14
 2732 00ac C4ED0C7A 		vstr.32	s15, [r4, #48]
 2733              	.L233:
 2734 00b0 2046     		mov	r0, r4
 2735 00b2 BDE87040 		pop	{r4, r5, r6, lr}
 2736 00b6 FFF7FEBF 		b	_ZN21HangprinterKinematics6RecalcEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 49


 2737              		.size	_ZN21HangprinterKinematics6AdjustEjPKd, .-_ZN21HangprinterKinematics6AdjustEjPKd
 2738 00ba 00BF     		.section	.text._ZNK21HangprinterKinematics15PrintParametersERK9StringRef,"ax",%progbits
 2739              		.align	1
 2740              		.p2align 2,,3
 2741              		.global	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 2742              		.syntax unified
 2743              		.thumb
 2744              		.thumb_func
 2745              		.fpu fpv4-sp-d16
 2746              		.type	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef, %function
 2747              	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef:
 2748              		@ args = 0, pretend = 0, frame = 0
 2749              		@ frame_needed = 0, uses_anonymous_args = 0
 2750 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2751 0002 0446     		mov	r4, r0
 2752 0004 91B0     		sub	sp, sp, #68
 2753 0006 0069     		ldr	r0, [r0, #16]	@ float
 2754 0008 0D46     		mov	r5, r1
 2755 000a FFF7FEFF 		bl	__aeabi_f2d
 2756 000e 0646     		mov	r6, r0
 2757 0010 206B     		ldr	r0, [r4, #48]	@ float
 2758 0012 0F46     		mov	r7, r1
 2759 0014 FFF7FEFF 		bl	__aeabi_f2d
 2760 0018 CDE90E01 		strd	r0, [sp, #56]
 2761 001c E06A     		ldr	r0, [r4, #44]	@ float
 2762 001e FFF7FEFF 		bl	__aeabi_f2d
 2763 0022 CDE90C01 		strd	r0, [sp, #48]
 2764 0026 A06A     		ldr	r0, [r4, #40]	@ float
 2765 0028 FFF7FEFF 		bl	__aeabi_f2d
 2766 002c CDE90A01 		strd	r0, [sp, #40]
 2767 0030 606A     		ldr	r0, [r4, #36]	@ float
 2768 0032 FFF7FEFF 		bl	__aeabi_f2d
 2769 0036 CDE90801 		strd	r0, [sp, #32]
 2770 003a 206A     		ldr	r0, [r4, #32]	@ float
 2771 003c FFF7FEFF 		bl	__aeabi_f2d
 2772 0040 CDE90601 		strd	r0, [sp, #24]
 2773 0044 E069     		ldr	r0, [r4, #28]	@ float
 2774 0046 FFF7FEFF 		bl	__aeabi_f2d
 2775 004a CDE90401 		strd	r0, [sp, #16]
 2776 004e A069     		ldr	r0, [r4, #24]	@ float
 2777 0050 FFF7FEFF 		bl	__aeabi_f2d
 2778 0054 CDE90201 		strd	r0, [sp, #8]
 2779 0058 6069     		ldr	r0, [r4, #20]	@ float
 2780 005a FFF7FEFF 		bl	__aeabi_f2d
 2781 005e 3246     		mov	r2, r6
 2782 0060 CDE90001 		strd	r0, [sp]
 2783 0064 3B46     		mov	r3, r7
 2784 0066 2846     		mov	r0, r5
 2785 0068 0249     		ldr	r1, .L253
 2786 006a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2787 006e 11B0     		add	sp, sp, #68
 2788              		@ sp needed
 2789 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 2790              	.L254:
 2791 0072 00BF     		.align	2
 2792              	.L253:
 2793 0074 00000000 		.word	.LC27
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 50


 2794              		.size	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef, .-_ZNK21HangprinterKinematics15Pr
 2795              		.section	.text._ZN6StringILj200EE6printfEPKcz,"axG",%progbits,_ZN6StringILj200EE6printfEPKcz,comda
 2796              		.align	1
 2797              		.p2align 2,,3
 2798              		.weak	_ZN6StringILj200EE6printfEPKcz
 2799              		.syntax unified
 2800              		.thumb
 2801              		.thumb_func
 2802              		.fpu fpv4-sp-d16
 2803              		.type	_ZN6StringILj200EE6printfEPKcz, %function
 2804              	_ZN6StringILj200EE6printfEPKcz:
 2805              		@ args = 4, pretend = 12, frame = 16
 2806              		@ frame_needed = 0, uses_anonymous_args = 1
 2807 0000 0EB4     		push	{r1, r2, r3}
 2808 0002 00B5     		push	{lr}
 2809 0004 84B0     		sub	sp, sp, #16
 2810 0006 05AA     		add	r2, sp, #20
 2811 0008 0290     		str	r0, [sp, #8]
 2812 000a 52F8041B 		ldr	r1, [r2], #4
 2813 000e 0192     		str	r2, [sp, #4]
 2814 0010 C923     		movs	r3, #201
 2815 0012 02A8     		add	r0, sp, #8
 2816 0014 0393     		str	r3, [sp, #12]
 2817 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 2818 001a 04B0     		add	sp, sp, #16
 2819              		@ sp needed
 2820 001c 5DF804EB 		ldr	lr, [sp], #4
 2821 0020 03B0     		add	sp, sp, #12
 2822 0022 7047     		bx	lr
 2823              		.size	_ZN6StringILj200EE6printfEPKcz, .-_ZN6StringILj200EE6printfEPKcz
 2824              		.section	.text._ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore,"ax",%progbits
 2825              		.align	1
 2826              		.p2align 2,,3
 2827              		.global	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore
 2828              		.syntax unified
 2829              		.thumb
 2830              		.thumb_func
 2831              		.fpu fpv4-sp-d16
 2832              		.type	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore, %function
 2833              	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore:
 2834              		@ args = 0, pretend = 0, frame = 208
 2835              		@ frame_needed = 0, uses_anonymous_args = 0
 2836 0000 2DE97043 		push	{r4, r5, r6, r8, r9, lr}
 2837 0004 0D46     		mov	r5, r1
 2838 0006 D2B0     		sub	sp, sp, #328
 2839 0008 0446     		mov	r4, r0
 2840 000a 3349     		ldr	r1, .L263
 2841 000c 2846     		mov	r0, r5
 2842 000e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 2843 0012 0028     		cmp	r0, #0
 2844 0014 5DD0     		beq	.L258
 2845 0016 52AE     		add	r6, sp, #328
 2846 0018 0023     		movs	r3, #0
 2847 001a 2069     		ldr	r0, [r4, #16]	@ float
 2848 001c 06F8CC3D 		strb	r3, [r6, #-204]!
 2849 0020 FFF7FEFF 		bl	__aeabi_f2d
 2850 0024 8046     		mov	r8, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 51


 2851 0026 E06C     		ldr	r0, [r4, #76]	@ float
 2852 0028 8946     		mov	r9, r1
 2853 002a FFF7FEFF 		bl	__aeabi_f2d
 2854 002e CDE91C01 		strd	r0, [sp, #112]
 2855 0032 A06C     		ldr	r0, [r4, #72]	@ float
 2856 0034 FFF7FEFF 		bl	__aeabi_f2d
 2857 0038 CDE91A01 		strd	r0, [sp, #104]
 2858 003c 606C     		ldr	r0, [r4, #68]	@ float
 2859 003e FFF7FEFF 		bl	__aeabi_f2d
 2860 0042 CDE91801 		strd	r0, [sp, #96]
 2861 0046 206C     		ldr	r0, [r4, #64]	@ float
 2862 0048 FFF7FEFF 		bl	__aeabi_f2d
 2863 004c CDE91601 		strd	r0, [sp, #88]
 2864 0050 E06B     		ldr	r0, [r4, #60]	@ float
 2865 0052 FFF7FEFF 		bl	__aeabi_f2d
 2866 0056 CDE91401 		strd	r0, [sp, #80]
 2867 005a A06B     		ldr	r0, [r4, #56]	@ float
 2868 005c FFF7FEFF 		bl	__aeabi_f2d
 2869 0060 CDE91201 		strd	r0, [sp, #72]
 2870 0064 606B     		ldr	r0, [r4, #52]	@ float
 2871 0066 FFF7FEFF 		bl	__aeabi_f2d
 2872 006a CDE91001 		strd	r0, [sp, #64]
 2873 006e 206B     		ldr	r0, [r4, #48]	@ float
 2874 0070 FFF7FEFF 		bl	__aeabi_f2d
 2875 0074 CDE90E01 		strd	r0, [sp, #56]
 2876 0078 E06A     		ldr	r0, [r4, #44]	@ float
 2877 007a FFF7FEFF 		bl	__aeabi_f2d
 2878 007e CDE90C01 		strd	r0, [sp, #48]
 2879 0082 A06A     		ldr	r0, [r4, #40]	@ float
 2880 0084 FFF7FEFF 		bl	__aeabi_f2d
 2881 0088 CDE90A01 		strd	r0, [sp, #40]
 2882 008c 606A     		ldr	r0, [r4, #36]	@ float
 2883 008e FFF7FEFF 		bl	__aeabi_f2d
 2884 0092 CDE90801 		strd	r0, [sp, #32]
 2885 0096 206A     		ldr	r0, [r4, #32]	@ float
 2886 0098 FFF7FEFF 		bl	__aeabi_f2d
 2887 009c CDE90601 		strd	r0, [sp, #24]
 2888 00a0 E069     		ldr	r0, [r4, #28]	@ float
 2889 00a2 FFF7FEFF 		bl	__aeabi_f2d
 2890 00a6 CDE90401 		strd	r0, [sp, #16]
 2891 00aa A069     		ldr	r0, [r4, #24]	@ float
 2892 00ac FFF7FEFF 		bl	__aeabi_f2d
 2893 00b0 CDE90201 		strd	r0, [sp, #8]
 2894 00b4 6069     		ldr	r0, [r4, #20]	@ float
 2895 00b6 FFF7FEFF 		bl	__aeabi_f2d
 2896 00ba 4246     		mov	r2, r8
 2897 00bc CDE90001 		strd	r0, [sp]
 2898 00c0 4B46     		mov	r3, r9
 2899 00c2 0649     		ldr	r1, .L263+4
 2900 00c4 3046     		mov	r0, r6
 2901 00c6 FFF7FEFF 		bl	_ZN6StringILj200EE6printfEPKcz
 2902 00ca 3146     		mov	r1, r6
 2903 00cc 2846     		mov	r0, r5
 2904 00ce FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 2905              	.L258:
 2906 00d2 52B0     		add	sp, sp, #328
 2907              		@ sp needed
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 52


 2908 00d4 BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 2909              	.L264:
 2910              		.align	2
 2911              	.L263:
 2912 00d8 00000000 		.word	.LC28
 2913 00dc 1C000000 		.word	.LC29
 2914              		.size	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK21HangprinterKine
 2915              		.global	__aeabi_dmul
 2916              		.section	.text._ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj,"axG",%progbits,_ZN11FixedMatrixIdLj9
 2917              		.align	1
 2918              		.p2align 2,,3
 2919              		.weak	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 2920              		.syntax unified
 2921              		.thumb
 2922              		.thumb_func
 2923              		.fpu fpv4-sp-d16
 2924              		.type	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, %function
 2925              	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj:
 2926              		@ args = 0, pretend = 0, frame = 64
 2927              		@ frame_needed = 0, uses_anonymous_args = 0
 2928 0000 002A     		cmp	r2, #0
 2929 0002 00F02082 		beq	.L329
 2930 0006 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2931 000a 2DED088B 		vpush.64	{d8, d9, d10, d11}
 2932 000e 91B0     		sub	sp, sp, #68
 2933 0010 AF4E     		ldr	r6, .L346+8
 2934 0012 0092     		str	r2, [sp]
 2935 0014 0246     		mov	r2, r0
 2936 0016 0F91     		str	r1, [sp, #60]
 2937 0018 52F8083B 		ldr	r3, [r2], #8
 2938 001c 0D92     		str	r2, [sp, #52]
 2939 001e 9F68     		ldr	r7, [r3, #8]
 2940 0020 0023     		movs	r3, #0
 2941 0022 BB46     		mov	fp, r7
 2942 0024 0A93     		str	r3, [sp, #40]
 2943 0026 CDE90B33 		strd	r3, r3, [sp, #44]
 2944 002a 0493     		str	r3, [sp, #16]
 2945 002c B345     		cmp	fp, r6
 2946 002e 00F15803 		add	r3, r0, #88
 2947 0032 9FEDA5BB 		vldr.64	d11, .L346
 2948 0036 0E93     		str	r3, [sp, #56]
 2949 0038 8246     		mov	r10, r0
 2950 003a 40F09281 		bne	.L267
 2951              	.L343:
 2952 003e 0D9B     		ldr	r3, [sp, #52]
 2953 0040 0A9A     		ldr	r2, [sp, #40]
 2954 0042 9818     		adds	r0, r3, r2
 2955              	.L268:
 2956 0044 D0E90001 		ldrd	r0, [r0]
 2957 0048 FFF7FEFF 		bl	__aeabi_d2f
 2958 004c 049B     		ldr	r3, [sp, #16]
 2959 004e 0099     		ldr	r1, [sp]
 2960 0050 0133     		adds	r3, r3, #1
 2961 0052 07EE900A 		vmov	s15, r0
 2962 0056 9942     		cmp	r1, r3
 2963 0058 0693     		str	r3, [sp, #24]
 2964 005a B0EEE78A 		vabs.f32	s16, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 53


 2965 005e 40F29680 		bls	.L269
 2966 0062 CB1A     		subs	r3, r1, r3
 2967 0064 0193     		str	r3, [sp, #4]
 2968 0066 0A9A     		ldr	r2, [sp, #40]
 2969 0068 0E9B     		ldr	r3, [sp, #56]
 2970 006a 1344     		add	r3, r3, r2
 2971 006c 6FF04F07 		mvn	r7, #79
 2972 0070 0025     		movs	r5, #0
 2973 0072 0293     		str	r3, [sp, #8]
 2974 0074 5C46     		mov	r4, fp
 2975 0076 06E0     		b	.L283
 2976              	.L272:
 2977 0078 019B     		ldr	r3, [sp, #4]
 2978 007a 0135     		adds	r5, r5, #1
 2979 007c AB42     		cmp	r3, r5
 2980 007e A7F15007 		sub	r7, r7, #80
 2981 0082 00F08380 		beq	.L332
 2982              	.L283:
 2983 0086 069B     		ldr	r3, [sp, #24]
 2984 0088 B442     		cmp	r4, r6
 2985 008a 03EB0509 		add	r9, r3, r5
 2986 008e 6AD1     		bne	.L270
 2987 0090 029B     		ldr	r3, [sp, #8]
 2988 0092 05EB8500 		add	r0, r5, r5, lsl #2
 2989 0096 03EB0010 		add	r0, r3, r0, lsl #4
 2990              	.L271:
 2991 009a D0E90001 		ldrd	r0, [r0]
 2992 009e FFF7FEFF 		bl	__aeabi_d2f
 2993 00a2 07EE900A 		vmov	s15, r0
 2994 00a6 B0EEE7AA 		vabs.f32	s20, s15
 2995 00aa B4EEC8AA 		vcmpe.f32	s20, s16
 2996 00ae F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2997 00b2 E1DD     		ble	.L272
 2998 00b4 049B     		ldr	r3, [sp, #16]
 2999 00b6 4B45     		cmp	r3, r9
 3000 00b8 00F07C81 		beq	.L318
 3001 00bc 0B9A     		ldr	r2, [sp, #44]
 3002 00be 092A     		cmp	r2, #9
 3003 00c0 00F27881 		bhi	.L318
 3004 00c4 029A     		ldr	r2, [sp, #8]
 3005 00c6 05EB8508 		add	r8, r5, r5, lsl #2
 3006 00ca 9B46     		mov	fp, r3
 3007 00cc 2B46     		mov	r3, r5
 3008 00ce 02EB0818 		add	r8, r2, r8, lsl #4
 3009 00d2 4D46     		mov	r5, r9
 3010 00d4 B946     		mov	r9, r7
 3011 00d6 1F46     		mov	r7, r3
 3012 00d8 1AE0     		b	.L282
 3013              	.L334:
 3014 00da 08EB0900 		add	r0, r8, r9
 3015 00de B442     		cmp	r4, r6
 3016 00e0 90ED008B 		vldr.64	d8, [r0]
 3017 00e4 21D1     		bne	.L276
 3018              	.L335:
 3019 00e6 4046     		mov	r0, r8
 3020 00e8 B442     		cmp	r4, r6
 3021 00ea 90ED009B 		vldr.64	d9, [r0]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 54


 3022 00ee 27D1     		bne	.L278
 3023              	.L336:
 3024 00f0 08EB0900 		add	r0, r8, r9
 3025 00f4 B442     		cmp	r4, r6
 3026 00f6 80ED009B 		vstr.64	d9, [r0]
 3027 00fa 2CD1     		bne	.L280
 3028              	.L337:
 3029 00fc 4046     		mov	r0, r8
 3030              	.L281:
 3031 00fe 0BF1010B 		add	fp, fp, #1
 3032 0102 BBF10A0F 		cmp	fp, #10
 3033 0106 80ED008B 		vstr.64	d8, [r0]
 3034 010a 08F10808 		add	r8, r8, #8
 3035 010e 32D0     		beq	.L333
 3036              	.L282:
 3037 0110 B442     		cmp	r4, r6
 3038 0112 E2D0     		beq	.L334
 3039 0114 5A46     		mov	r2, fp
 3040 0116 0499     		ldr	r1, [sp, #16]
 3041 0118 5046     		mov	r0, r10
 3042 011a A047     		blx	r4
 3043 011c DAF80020 		ldr	r2, [r10]
 3044 0120 9468     		ldr	r4, [r2, #8]
 3045 0122 B442     		cmp	r4, r6
 3046 0124 90ED008B 		vldr.64	d8, [r0]
 3047 0128 DDD0     		beq	.L335
 3048              	.L276:
 3049 012a 5A46     		mov	r2, fp
 3050 012c 2946     		mov	r1, r5
 3051 012e 5046     		mov	r0, r10
 3052 0130 A047     		blx	r4
 3053 0132 DAF80020 		ldr	r2, [r10]
 3054 0136 9468     		ldr	r4, [r2, #8]
 3055 0138 B442     		cmp	r4, r6
 3056 013a 90ED009B 		vldr.64	d9, [r0]
 3057 013e D7D0     		beq	.L336
 3058              	.L278:
 3059 0140 5A46     		mov	r2, fp
 3060 0142 0499     		ldr	r1, [sp, #16]
 3061 0144 5046     		mov	r0, r10
 3062 0146 A047     		blx	r4
 3063 0148 DAF80020 		ldr	r2, [r10]
 3064 014c 9468     		ldr	r4, [r2, #8]
 3065 014e B442     		cmp	r4, r6
 3066 0150 80ED009B 		vstr.64	d9, [r0]
 3067 0154 D2D0     		beq	.L337
 3068              	.L280:
 3069 0156 5A46     		mov	r2, fp
 3070 0158 2946     		mov	r1, r5
 3071 015a 5046     		mov	r0, r10
 3072 015c A047     		blx	r4
 3073 015e DAF80020 		ldr	r2, [r10]
 3074 0162 9468     		ldr	r4, [r2, #8]
 3075 0164 CBE7     		b	.L281
 3076              	.L270:
 3077 0166 049A     		ldr	r2, [sp, #16]
 3078 0168 4946     		mov	r1, r9
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 55


 3079 016a 5046     		mov	r0, r10
 3080 016c A047     		blx	r4
 3081 016e DAF80030 		ldr	r3, [r10]
 3082 0172 9C68     		ldr	r4, [r3, #8]
 3083 0174 91E7     		b	.L271
 3084              	.L333:
 3085 0176 3D46     		mov	r5, r7
 3086 0178 019B     		ldr	r3, [sp, #4]
 3087 017a 0135     		adds	r5, r5, #1
 3088 017c 4F46     		mov	r7, r9
 3089 017e AB42     		cmp	r3, r5
 3090 0180 B0EE4A8A 		vmov.f32	s16, s20
 3091 0184 A7F15007 		sub	r7, r7, #80
 3092 0188 7FF47DAF 		bne	.L283
 3093              	.L332:
 3094 018c A346     		mov	fp, r4
 3095              	.L269:
 3096 018e B345     		cmp	fp, r6
 3097 0190 40F01381 		bne	.L284
 3098 0194 0D9B     		ldr	r3, [sp, #52]
 3099 0196 0A9A     		ldr	r2, [sp, #40]
 3100 0198 9818     		adds	r0, r3, r2
 3101              	.L285:
 3102 019a 90ED007B 		vldr.64	d7, [r0]
 3103 019e 0B9B     		ldr	r3, [sp, #44]
 3104 01a0 8DED087B 		vstr.64	d7, [sp, #32]
 3105 01a4 002B     		cmp	r3, #0
 3106 01a6 61D0     		beq	.L299
 3107 01a8 069B     		ldr	r3, [sp, #24]
 3108 01aa 0AEBC303 		add	r3, r10, r3, lsl #3
 3109 01ae 0593     		str	r3, [sp, #20]
 3110 01b0 0C9B     		ldr	r3, [sp, #48]
 3111 01b2 DB00     		lsls	r3, r3, #3
 3112 01b4 0193     		str	r3, [sp, #4]
 3113 01b6 0023     		movs	r3, #0
 3114 01b8 0793     		str	r3, [sp, #28]
 3115 01ba 5F46     		mov	r7, fp
 3116              	.L300:
 3117 01bc B742     		cmp	r7, r6
 3118 01be 40F0F180 		bne	.L289
 3119 01c2 0598     		ldr	r0, [sp, #20]
 3120              	.L290:
 3121 01c4 DDE90823 		ldrd	r2, [sp, #32]
 3122 01c8 D0E90001 		ldrd	r0, [r0]
 3123 01cc FFF7FEFF 		bl	__aeabi_ddiv
 3124 01d0 B742     		cmp	r7, r6
 3125 01d2 CDE90201 		strd	r0, [sp, #8]
 3126 01d6 40F0DD80 		bne	.L291
 3127 01da 0598     		ldr	r0, [sp, #20]
 3128              	.L292:
 3129 01dc 009B     		ldr	r3, [sp]
 3130 01de 069D     		ldr	r5, [sp, #24]
 3131 01e0 1A46     		mov	r2, r3
 3132 01e2 AA42     		cmp	r2, r5
 3133 01e4 80ED00BB 		vstr.64	d11, [r0]
 3134 01e8 33D3     		bcc	.L293
 3135 01ea 059B     		ldr	r3, [sp, #20]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 56


 3136 01ec D146     		mov	r9, r10
 3137 01ee 03F10804 		add	r4, r3, #8
 3138 01f2 1AE0     		b	.L298
 3139              	.L339:
 3140 01f4 019B     		ldr	r3, [sp, #4]
 3141 01f6 1819     		adds	r0, r3, r4
 3142              	.L295:
 3143 01f8 D0E90023 		ldrd	r2, [r0]
 3144 01fc DDE90201 		ldrd	r0, [sp, #8]
 3145 0200 FFF7FEFF 		bl	__aeabi_dmul
 3146 0204 B742     		cmp	r7, r6
 3147 0206 8246     		mov	r10, r0
 3148 0208 8B46     		mov	fp, r1
 3149 020a 18D1     		bne	.L296
 3150 020c A046     		mov	r8, r4
 3151              	.L297:
 3152 020e 5B46     		mov	r3, fp
 3153 0210 D8E90001 		ldrd	r0, [r8]
 3154 0214 5246     		mov	r2, r10
 3155 0216 FFF7FEFF 		bl	__aeabi_dsub
 3156 021a 009B     		ldr	r3, [sp]
 3157 021c 0135     		adds	r5, r5, #1
 3158 021e AB42     		cmp	r3, r5
 3159 0220 04F10804 		add	r4, r4, #8
 3160 0224 C8E90001 		strd	r0, [r8]
 3161 0228 12D3     		bcc	.L338
 3162              	.L298:
 3163 022a B742     		cmp	r7, r6
 3164 022c E2D0     		beq	.L339
 3165 022e 2A46     		mov	r2, r5
 3166 0230 0499     		ldr	r1, [sp, #16]
 3167 0232 4846     		mov	r0, r9
 3168 0234 B847     		blx	r7
 3169 0236 D9F80030 		ldr	r3, [r9]
 3170 023a 9F68     		ldr	r7, [r3, #8]
 3171 023c DCE7     		b	.L295
 3172              	.L296:
 3173 023e 2A46     		mov	r2, r5
 3174 0240 0799     		ldr	r1, [sp, #28]
 3175 0242 4846     		mov	r0, r9
 3176 0244 B847     		blx	r7
 3177 0246 D9F80030 		ldr	r3, [r9]
 3178 024a 8046     		mov	r8, r0
 3179 024c 9F68     		ldr	r7, [r3, #8]
 3180 024e DEE7     		b	.L297
 3181              	.L338:
 3182 0250 CA46     		mov	r10, r9
 3183              	.L293:
 3184 0252 059A     		ldr	r2, [sp, #20]
 3185 0254 079B     		ldr	r3, [sp, #28]
 3186 0256 5032     		adds	r2, r2, #80
 3187 0258 0592     		str	r2, [sp, #20]
 3188 025a 019A     		ldr	r2, [sp, #4]
 3189 025c 503A     		subs	r2, r2, #80
 3190 025e 0192     		str	r2, [sp, #4]
 3191 0260 049A     		ldr	r2, [sp, #16]
 3192 0262 0133     		adds	r3, r3, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 57


 3193 0264 9342     		cmp	r3, r2
 3194 0266 0793     		str	r3, [sp, #28]
 3195 0268 A8D1     		bne	.L300
 3196 026a BB46     		mov	fp, r7
 3197              	.L299:
 3198 026c 009B     		ldr	r3, [sp]
 3199 026e 069A     		ldr	r2, [sp, #24]
 3200 0270 9342     		cmp	r3, r2
 3201 0272 00F0AB80 		beq	.L340
 3202 0276 0C9B     		ldr	r3, [sp, #48]
 3203 0278 0A9A     		ldr	r2, [sp, #40]
 3204 027a 0A33     		adds	r3, r3, #10
 3205 027c 0C93     		str	r3, [sp, #48]
 3206 027e 0E9B     		ldr	r3, [sp, #56]
 3207 0280 1344     		add	r3, r3, r2
 3208 0282 0593     		str	r3, [sp, #20]
 3209 0284 069B     		ldr	r3, [sp, #24]
 3210 0286 0793     		str	r3, [sp, #28]
 3211 0288 6FF04F03 		mvn	r3, #79
 3212 028c 0193     		str	r3, [sp, #4]
 3213 028e 5F46     		mov	r7, fp
 3214              	.L311:
 3215 0290 B742     		cmp	r7, r6
 3216 0292 6FD1     		bne	.L301
 3217 0294 0598     		ldr	r0, [sp, #20]
 3218              	.L302:
 3219 0296 DDE90823 		ldrd	r2, [sp, #32]
 3220 029a D0E90001 		ldrd	r0, [r0]
 3221 029e FFF7FEFF 		bl	__aeabi_ddiv
 3222 02a2 B742     		cmp	r7, r6
 3223 02a4 CDE90201 		strd	r0, [sp, #8]
 3224 02a8 6CD1     		bne	.L303
 3225 02aa 0598     		ldr	r0, [sp, #20]
 3226              	.L304:
 3227 02ac 009B     		ldr	r3, [sp]
 3228 02ae 069D     		ldr	r5, [sp, #24]
 3229 02b0 1A46     		mov	r2, r3
 3230 02b2 AA42     		cmp	r2, r5
 3231 02b4 80ED00BB 		vstr.64	d11, [r0]
 3232 02b8 3BD3     		bcc	.L305
 3233 02ba 059B     		ldr	r3, [sp, #20]
 3234 02bc D146     		mov	r9, r10
 3235 02be 03F10804 		add	r4, r3, #8
 3236 02c2 22E0     		b	.L310
 3237              	.L347:
 3238 02c4 AFF30080 		.align	3
 3239              	.L346:
 3240 02c8 00000000 		.word	0
 3241 02cc 00000000 		.word	0
 3242 02d0 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 3243              	.L342:
 3244 02d4 019B     		ldr	r3, [sp, #4]
 3245 02d6 1819     		adds	r0, r3, r4
 3246              	.L307:
 3247 02d8 D0E90023 		ldrd	r2, [r0]
 3248 02dc DDE90201 		ldrd	r0, [sp, #8]
 3249 02e0 FFF7FEFF 		bl	__aeabi_dmul
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 58


 3250 02e4 B742     		cmp	r7, r6
 3251 02e6 8246     		mov	r10, r0
 3252 02e8 8B46     		mov	fp, r1
 3253 02ea 18D1     		bne	.L308
 3254 02ec A046     		mov	r8, r4
 3255              	.L309:
 3256 02ee 5B46     		mov	r3, fp
 3257 02f0 D8E90001 		ldrd	r0, [r8]
 3258 02f4 5246     		mov	r2, r10
 3259 02f6 FFF7FEFF 		bl	__aeabi_dsub
 3260 02fa 009B     		ldr	r3, [sp]
 3261 02fc 0135     		adds	r5, r5, #1
 3262 02fe AB42     		cmp	r3, r5
 3263 0300 04F10804 		add	r4, r4, #8
 3264 0304 C8E90001 		strd	r0, [r8]
 3265 0308 12D3     		bcc	.L341
 3266              	.L310:
 3267 030a B742     		cmp	r7, r6
 3268 030c E2D0     		beq	.L342
 3269 030e 2A46     		mov	r2, r5
 3270 0310 0499     		ldr	r1, [sp, #16]
 3271 0312 4846     		mov	r0, r9
 3272 0314 B847     		blx	r7
 3273 0316 D9F80030 		ldr	r3, [r9]
 3274 031a 9F68     		ldr	r7, [r3, #8]
 3275 031c DCE7     		b	.L307
 3276              	.L308:
 3277 031e 2A46     		mov	r2, r5
 3278 0320 0799     		ldr	r1, [sp, #28]
 3279 0322 4846     		mov	r0, r9
 3280 0324 B847     		blx	r7
 3281 0326 D9F80030 		ldr	r3, [r9]
 3282 032a 8046     		mov	r8, r0
 3283 032c 9F68     		ldr	r7, [r3, #8]
 3284 032e DEE7     		b	.L309
 3285              	.L341:
 3286 0330 CA46     		mov	r10, r9
 3287              	.L305:
 3288 0332 059A     		ldr	r2, [sp, #20]
 3289 0334 079B     		ldr	r3, [sp, #28]
 3290 0336 5032     		adds	r2, r2, #80
 3291 0338 0592     		str	r2, [sp, #20]
 3292 033a 019A     		ldr	r2, [sp, #4]
 3293 033c 503A     		subs	r2, r2, #80
 3294 033e 0192     		str	r2, [sp, #4]
 3295 0340 009A     		ldr	r2, [sp]
 3296 0342 0133     		adds	r3, r3, #1
 3297 0344 9A42     		cmp	r2, r3
 3298 0346 0793     		str	r3, [sp, #28]
 3299 0348 A2D1     		bne	.L311
 3300 034a 0B9B     		ldr	r3, [sp, #44]
 3301 034c 0133     		adds	r3, r3, #1
 3302 034e 0B93     		str	r3, [sp, #44]
 3303 0350 0A9B     		ldr	r3, [sp, #40]
 3304 0352 BB46     		mov	fp, r7
 3305 0354 5833     		adds	r3, r3, #88
 3306 0356 0A93     		str	r3, [sp, #40]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 59


 3307 0358 B345     		cmp	fp, r6
 3308 035a 069B     		ldr	r3, [sp, #24]
 3309 035c 0493     		str	r3, [sp, #16]
 3310 035e 3FF46EAE 		beq	.L343
 3311              	.L267:
 3312 0362 0499     		ldr	r1, [sp, #16]
 3313 0364 5046     		mov	r0, r10
 3314 0366 0A46     		mov	r2, r1
 3315 0368 D847     		blx	fp
 3316 036a DAF80030 		ldr	r3, [r10]
 3317 036e D3F808B0 		ldr	fp, [r3, #8]
 3318 0372 67E6     		b	.L268
 3319              	.L301:
 3320 0374 049A     		ldr	r2, [sp, #16]
 3321 0376 0799     		ldr	r1, [sp, #28]
 3322 0378 5046     		mov	r0, r10
 3323 037a B847     		blx	r7
 3324 037c DAF80030 		ldr	r3, [r10]
 3325 0380 9F68     		ldr	r7, [r3, #8]
 3326 0382 88E7     		b	.L302
 3327              	.L303:
 3328 0384 049A     		ldr	r2, [sp, #16]
 3329 0386 0799     		ldr	r1, [sp, #28]
 3330 0388 5046     		mov	r0, r10
 3331 038a B847     		blx	r7
 3332 038c DAF80030 		ldr	r3, [r10]
 3333 0390 9F68     		ldr	r7, [r3, #8]
 3334 0392 8BE7     		b	.L304
 3335              	.L291:
 3336 0394 049A     		ldr	r2, [sp, #16]
 3337 0396 0799     		ldr	r1, [sp, #28]
 3338 0398 5046     		mov	r0, r10
 3339 039a B847     		blx	r7
 3340 039c DAF80030 		ldr	r3, [r10]
 3341 03a0 9F68     		ldr	r7, [r3, #8]
 3342 03a2 1BE7     		b	.L292
 3343              	.L289:
 3344 03a4 049A     		ldr	r2, [sp, #16]
 3345 03a6 0799     		ldr	r1, [sp, #28]
 3346 03a8 5046     		mov	r0, r10
 3347 03aa B847     		blx	r7
 3348 03ac DAF80030 		ldr	r3, [r10]
 3349 03b0 9F68     		ldr	r7, [r3, #8]
 3350 03b2 07E7     		b	.L290
 3351              	.L318:
 3352 03b4 B0EE4A8A 		vmov.f32	s16, s20
 3353 03b8 5EE6     		b	.L272
 3354              	.L284:
 3355 03ba 0499     		ldr	r1, [sp, #16]
 3356 03bc 5046     		mov	r0, r10
 3357 03be 0A46     		mov	r2, r1
 3358 03c0 D847     		blx	fp
 3359 03c2 DAF80030 		ldr	r3, [r10]
 3360 03c6 D3F808B0 		ldr	fp, [r3, #8]
 3361 03ca E6E6     		b	.L285
 3362              	.L340:
 3363 03cc 049C     		ldr	r4, [sp, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 60


 3364 03ce 0D9D     		ldr	r5, [sp, #52]
 3365 03d0 DDF83C90 		ldr	r9, [sp, #60]
 3366 03d4 5F46     		mov	r7, fp
 3367 03d6 0234     		adds	r4, r4, #2
 3368 03d8 3B46     		mov	r3, r7
 3369 03da 0AEBC404 		add	r4, r10, r4, lsl #3
 3370 03de 4FF00008 		mov	r8, #0
 3371 03e2 5746     		mov	r7, r10
 3372 03e4 18E0     		b	.L288
 3373              	.L344:
 3374 03e6 2046     		mov	r0, r4
 3375 03e8 B342     		cmp	r3, r6
 3376 03ea D0E900AB 		ldrd	r10, [r0]
 3377 03ee 1FD1     		bne	.L315
 3378              	.L345:
 3379 03f0 2B46     		mov	r3, r5
 3380              	.L316:
 3381 03f2 D3E90023 		ldrd	r2, [r3]
 3382 03f6 5046     		mov	r0, r10
 3383 03f8 5946     		mov	r1, fp
 3384 03fa FFF7FEFF 		bl	__aeabi_ddiv
 3385 03fe 069B     		ldr	r3, [sp, #24]
 3386 0400 08F10108 		add	r8, r8, #1
 3387 0404 4345     		cmp	r3, r8
 3388 0406 05F15805 		add	r5, r5, #88
 3389 040a 04F15004 		add	r4, r4, #80
 3390 040e E9E80201 		strd	r0, [r9], #8
 3391 0412 13D0     		beq	.L265
 3392 0414 3B68     		ldr	r3, [r7]
 3393 0416 9B68     		ldr	r3, [r3, #8]
 3394              	.L288:
 3395 0418 B342     		cmp	r3, r6
 3396 041a E4D0     		beq	.L344
 3397 041c 069A     		ldr	r2, [sp, #24]
 3398 041e 4146     		mov	r1, r8
 3399 0420 3846     		mov	r0, r7
 3400 0422 9847     		blx	r3
 3401 0424 3B68     		ldr	r3, [r7]
 3402 0426 9B68     		ldr	r3, [r3, #8]
 3403 0428 B342     		cmp	r3, r6
 3404 042a D0E900AB 		ldrd	r10, [r0]
 3405 042e DFD0     		beq	.L345
 3406              	.L315:
 3407 0430 4246     		mov	r2, r8
 3408 0432 4146     		mov	r1, r8
 3409 0434 3846     		mov	r0, r7
 3410 0436 9847     		blx	r3
 3411 0438 0346     		mov	r3, r0
 3412 043a DAE7     		b	.L316
 3413              	.L265:
 3414 043c 11B0     		add	sp, sp, #68
 3415              		@ sp needed
 3416 043e BDEC088B 		vldm	sp!, {d8-d11}
 3417 0442 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3418              	.L329:
 3419 0446 7047     		bx	lr
 3420              		.size	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, .-_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEP
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 61


 3421              		.global	__aeabi_dadd
 3422              		.global	__aeabi_ui2d
 3423              		.section	.text._ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,
 3424              		.align	1
 3425              		.p2align 2,,3
 3426              		.global	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 3427              		.syntax unified
 3428              		.thumb
 3429              		.thumb_func
 3430              		.fpu fpv4-sp-d16
 3431              		.type	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %functio
 3432              	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
 3433              		@ args = 0, pretend = 0, frame = 4544
 3434              		@ frame_needed = 0, uses_anonymous_args = 0
 3435 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3436 0004 2DED068B 		vpush.64	{d8, d9, d10}
 3437 0008 ADF58E5D 		sub	sp, sp, #4544
 3438 000c 85B0     		sub	sp, sp, #20
 3439 000e 8346     		mov	fp, r0
 3440 0010 1046     		mov	r0, r2
 3441 0012 0C46     		mov	r4, r1
 3442 0014 1192     		str	r2, [sp, #68]
 3443 0016 1A91     		str	r1, [sp, #104]
 3444 0018 2093     		str	r3, [sp, #128]
 3445 001a FFF7FEFF 		bl	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 3446 001e 092C     		cmp	r4, #9
 3447 0020 0690     		str	r0, [sp, #24]
 3448 0022 0ED9     		bls	.L436
 3449              	.L349:
 3450 0024 1A9A     		ldr	r2, [sp, #104]
 3451 0026 2098     		ldr	r0, [sp, #128]
 3452 0028 9549     		ldr	r1, .L446+8
 3453 002a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3454 002e 0123     		movs	r3, #1
 3455 0030 1D93     		str	r3, [sp, #116]
 3456              	.L433:
 3457 0032 1D98     		ldr	r0, [sp, #116]
 3458 0034 0DF58E5D 		add	sp, sp, #4544
 3459 0038 05B0     		add	sp, sp, #20
 3460              		@ sp needed
 3461 003a BDEC068B 		vldm	sp!, {d8-d10}
 3462 003e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3463              	.L436:
 3464 0042 4FF41273 		mov	r3, #584
 3465 0046 E340     		lsrs	r3, r3, r4
 3466 0048 DB43     		mvns	r3, r3
 3467 004a 13F00103 		ands	r3, r3, #1
 3468 004e 1D93     		str	r3, [sp, #116]
 3469 0050 E8D1     		bne	.L349
 3470 0052 8C4B     		ldr	r3, .L446+12
 3471 0054 D3F80831 		ldr	r3, [r3, #264]
 3472 0058 D806     		lsls	r0, r3, #27
 3473 005a 00F12883 		bmi	.L434
 3474 005e 0DF6C803 		addw	r3, sp, #2248
 3475 0062 1693     		str	r3, [sp, #88]
 3476              	.L352:
 3477 0064 9FED847B 		vldr.64	d7, .L446
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 62


 3478 0068 069B     		ldr	r3, [sp, #24]
 3479 006a 8DED127B 		vstr.64	d7, [sp, #72]
 3480 006e 002B     		cmp	r3, #0
 3481 0070 00F09D80 		beq	.L358
 3482 0074 119B     		ldr	r3, [sp, #68]
 3483 0076 DFED848A 		vldr.32	s17, .L446+16
 3484 007a 169C     		ldr	r4, [sp, #88]
 3485 007c 03F28718 		addw	r8, r3, #391
 3486 0080 069B     		ldr	r3, [sp, #24]
 3487 0082 0DF1E809 		add	r9, sp, #232
 3488 0086 08EB030A 		add	r10, r8, r3
 3489 008a 0DF5B866 		add	r6, sp, #1472
 3490 008e 0027     		movs	r7, #0
 3491              	.L359:
 3492 0090 9FED797B 		vldr.64	d7, .L446
 3493 0094 18F8013F 		ldrb	r3, [r8, #1]!	@ zero_extendqisi2
 3494 0098 7A4A     		ldr	r2, .L446+12
 3495 009a C3F38003 		ubfx	r3, r3, #2, #1
 3496 009e D068     		ldr	r0, [r2, #12]
 3497 00a0 0093     		str	r3, [sp]
 3498 00a2 2246     		mov	r2, r4
 3499 00a4 A9EC027B 		vstmia.64	r9!, {d7}
 3500 00a8 0DF6CC03 		addw	r3, sp, #2252
 3501 00ac 3946     		mov	r1, r7
 3502 00ae FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 3503 00b2 10EE100A 		vmov	r0, s0
 3504 00b6 FFF7FEFF 		bl	__aeabi_f2d
 3505 00ba 94ED018A 		vldr.32	s16, [r4, #4]
 3506 00be DBED057A 		vldr.32	s15, [fp, #20]
 3507 00c2 DBED066A 		vldr.32	s13, [fp, #24]
 3508 00c6 94ED009A 		vldr.32	s18, [r4]
 3509 00ca 9BED047A 		vldr.32	s14, [fp, #16]
 3510 00ce C4ED028A 		vstr.32	s17, [r4, #8]
 3511 00d2 78EE677A 		vsub.f32	s15, s16, s15
 3512 00d6 39EE477A 		vsub.f32	s14, s18, s14
 3513 00da 27EEA70A 		vmul.f32	s0, s15, s15
 3514 00de CDE90401 		strd	r0, [sp, #16]
 3515 00e2 A6EEA60A 		vfma.f32	s0, s13, s13
 3516 00e6 F0EE689A 		vmov.f32	s19, s17
 3517 00ea A7EE070A 		vfma.f32	s0, s14, s14
 3518 00ee B5EE400A 		vcmp.f32	s0, #0
 3519 00f2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3520 00f6 B1EEC0AA 		vsqrt.f32	s20, s0
 3521 00fa 00F1EE82 		bmi	.L437
 3522              	.L355:
 3523 00fe 0137     		adds	r7, r7, #1
 3524 0100 1AEE100A 		vmov	r0, s20
 3525 0104 FFF7FEFF 		bl	__aeabi_f2d
 3526 0108 DBED087A 		vldr.32	s15, [fp, #32]
 3527 010c DBED096A 		vldr.32	s13, [fp, #36]
 3528 0110 9BED077A 		vldr.32	s14, [fp, #28]
 3529 0114 78EE677A 		vsub.f32	s15, s16, s15
 3530 0118 76EEE96A 		vsub.f32	s13, s13, s19
 3531 011c 27EEA70A 		vmul.f32	s0, s15, s15
 3532 0120 79EE477A 		vsub.f32	s15, s18, s14
 3533 0124 A6EEA60A 		vfma.f32	s0, s13, s13
 3534 0128 C6E90201 		strd	r0, [r6, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 63


 3535 012c A7EEA70A 		vfma.f32	s0, s15, s15
 3536 0130 B5EE400A 		vcmp.f32	s0, #0
 3537 0134 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3538 0138 B1EEC0AA 		vsqrt.f32	s20, s0
 3539 013c 00F1D682 		bmi	.L438
 3540              	.L356:
 3541 0140 1AEE100A 		vmov	r0, s20
 3542 0144 FFF7FEFF 		bl	__aeabi_f2d
 3543 0148 DBED0B7A 		vldr.32	s15, [fp, #44]
 3544 014c DBED0C6A 		vldr.32	s13, [fp, #48]
 3545 0150 9BED0A7A 		vldr.32	s14, [fp, #40]
 3546 0154 38EE678A 		vsub.f32	s16, s16, s15
 3547 0158 76EEE99A 		vsub.f32	s19, s13, s19
 3548 015c 28EE080A 		vmul.f32	s0, s16, s16
 3549 0160 39EE479A 		vsub.f32	s18, s18, s14
 3550 0164 A9EEA90A 		vfma.f32	s0, s19, s19
 3551 0168 C6E90401 		strd	r0, [r6, #16]
 3552 016c A9EE090A 		vfma.f32	s0, s18, s18
 3553 0170 B5EE400A 		vcmp.f32	s0, #0
 3554 0174 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3555 0178 B1EEC08A 		vsqrt.f32	s16, s0
 3556 017c 00F1BF82 		bmi	.L439
 3557              	.L357:
 3558 0180 18EE100A 		vmov	r0, s16
 3559 0184 FFF7FEFF 		bl	__aeabi_f2d
 3560 0188 DDE90423 		ldrd	r2, [sp, #16]
 3561 018c E6E90601 		strd	r0, [r6, #24]!
 3562 0190 1046     		mov	r0, r2
 3563 0192 1946     		mov	r1, r3
 3564 0194 FFF7FEFF 		bl	__aeabi_dmul
 3565 0198 0246     		mov	r2, r0
 3566 019a 0B46     		mov	r3, r1
 3567 019c DDE91201 		ldrd	r0, [sp, #72]
 3568 01a0 FFF7FEFF 		bl	__aeabi_dadd
 3569 01a4 D045     		cmp	r8, r10
 3570 01a6 CDE91201 		strd	r0, [sp, #72]
 3571 01aa 7FF471AF 		bne	.L359
 3572              	.L358:
 3573 01ae 1A98     		ldr	r0, [sp, #104]
 3574 01b0 069C     		ldr	r4, [sp, #24]
 3575 01b2 119D     		ldr	r5, [sp, #68]
 3576 01b4 CDF834B0 		str	fp, [sp, #52]
 3577 01b8 C300     		lsls	r3, r0, #3
 3578 01ba BAAE     		add	r6, sp, #744
 3579 01bc 1E44     		add	r6, r6, r3
 3580 01be 1C96     		str	r6, [sp, #112]
 3581 01c0 169E     		ldr	r6, [sp, #88]
 3582 01c2 1E44     		add	r6, r6, r3
 3583 01c4 1596     		str	r6, [sp, #84]
 3584 01c6 0DF50D66 		add	r6, sp, #2256
 3585 01ca 1E44     		add	r6, r6, r3
 3586 01cc 0796     		str	r6, [sp, #28]
 3587 01ce 28AE     		add	r6, sp, #160
 3588 01d0 F318     		adds	r3, r6, r3
 3589 01d2 C0EB4071 		rsb	r1, r0, r0, lsl #29
 3590 01d6 04EBC402 		add	r2, r4, r4, lsl #3
 3591 01da 2193     		str	r3, [sp, #132]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 64


 3592 01dc CB00     		lsls	r3, r1, #3
 3593 01de 05F58475 		add	r5, r5, #264
 3594 01e2 1E93     		str	r3, [sp, #120]
 3595 01e4 D300     		lsls	r3, r2, #3
 3596 01e6 1F93     		str	r3, [sp, #124]
 3597 01e8 05EB8403 		add	r3, r5, r4, lsl #2
 3598 01ec 1093     		str	r3, [sp, #64]
 3599 01ee 0223     		movs	r3, #2
 3600 01f0 1B95     		str	r5, [sp, #108]
 3601 01f2 1893     		str	r3, [sp, #96]
 3602 01f4 8346     		mov	fp, r0
 3603              	.L354:
 3604 01f6 169B     		ldr	r3, [sp, #88]
 3605 01f8 1A46     		mov	r2, r3
 3606 01fa 244B     		ldr	r3, .L446+20
 3607 01fc 1360     		str	r3, [r2]
 3608 01fe 069B     		ldr	r3, [sp, #24]
 3609 0200 002B     		cmp	r3, #0
 3610 0202 4CD0     		beq	.L360
 3611 0204 0024     		movs	r4, #0
 3612 0206 DDF83480 		ldr	r8, [sp, #52]
 3613 020a A146     		mov	r9, r4
 3614 020c 0DF5B865 		add	r5, sp, #1472
 3615 0210 9A46     		mov	r10, r3
 3616 0212 5C46     		mov	r4, fp
 3617              	.L366:
 3618 0214 002C     		cmp	r4, #0
 3619 0216 3BD0     		beq	.L361
 3620 0218 D5E90201 		ldrd	r0, [r5, #8]
 3621 021c FFF7FEFF 		bl	__aeabi_d2f
 3622 0220 09EE100A 		vmov	s18, r0
 3623 0224 D5E90401 		ldrd	r0, [r5, #16]
 3624 0228 FFF7FEFF 		bl	__aeabi_d2f
 3625 022c 08EE900A 		vmov	s17, r0
 3626 0230 D5E90601 		ldrd	r0, [r5, #24]
 3627 0234 FFF7FEFF 		bl	__aeabi_d2f
 3628 0238 09EBC907 		add	r7, r9, r9, lsl #3
 3629 023c 0DF50D63 		add	r3, sp, #2256
 3630 0240 08EE100A 		vmov	s16, r0
 3631 0244 03EBC707 		add	r7, r3, r7, lsl #3
 3632 0248 0021     		movs	r1, #0
 3633              	.L362:
 3634 024a 082C     		cmp	r4, #8
 3635 024c B0EE481A 		vmov.f32	s2, s16
 3636 0250 F0EE680A 		vmov.f32	s1, s17
 3637 0254 B0EE490A 		vmov.f32	s0, s18
 3638 0258 4046     		mov	r0, r8
 3639 025a 01F10106 		add	r6, r1, #1
 3640 025e 00F06C81 		beq	.L440
 3641              	.L363:
 3642 0262 FFF7FEFF 		bl	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 3643 0266 B442     		cmp	r4, r6
 3644 0268 A7EC020B 		vstmia.64	r7!, {d0}
 3645 026c 10D0     		beq	.L361
 3646 026e 3146     		mov	r1, r6
 3647 0270 EBE7     		b	.L362
 3648              	.L447:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 65


 3649 0272 00BFAFF3 		.align	3
 3649      0080
 3650              	.L446:
 3651 0278 00000000 		.word	0
 3652 027c 00000000 		.word	0
 3653 0280 00000000 		.word	.LC30
 3654 0284 00000000 		.word	reprap
 3655 0288 00000000 		.word	0
 3656 028c 08000000 		.word	_ZTV11FixedMatrixIdLj32ELj9EE+8
 3657              	.L361:
 3658 0290 09F10109 		add	r9, r9, #1
 3659 0294 CA45     		cmp	r10, r9
 3660 0296 05F11805 		add	r5, r5, #24
 3661 029a BBD1     		bne	.L366
 3662 029c A346     		mov	fp, r4
 3663              	.L360:
 3664 029e AC4B     		ldr	r3, .L448+8
 3665 02a0 D3F80831 		ldr	r3, [r3, #264]
 3666 02a4 13F01003 		ands	r3, r3, #16
 3667 02a8 1793     		str	r3, [sp, #92]
 3668 02aa 40F09C81 		bne	.L441
 3669 02ae A94B     		ldr	r3, .L448+12
 3670 02b0 BA93     		str	r3, [sp, #744]
 3671 02b2 BBF1000F 		cmp	fp, #0
 3672 02b6 00F09C80 		beq	.L375
 3673              	.L389:
 3674 02ba 119B     		ldr	r3, [sp, #68]
 3675 02bc D3F80801 		ldr	r0, [r3, #264]	@ float
 3676 02c0 FFF7FEFF 		bl	__aeabi_f2d
 3677 02c4 DDE93A23 		ldrd	r2, [sp, #232]
 3678 02c8 FFF7FEFF 		bl	__aeabi_dadd
 3679 02cc 1E9A     		ldr	r2, [sp, #120]
 3680 02ce 0E90     		str	r0, [sp, #56]
 3681 02d0 01F10043 		add	r3, r1, #-2147483648
 3682 02d4 0832     		adds	r2, r2, #8
 3683 02d6 0F93     		str	r3, [sp, #60]
 3684 02d8 1492     		str	r2, [sp, #80]
 3685 02da 1C9B     		ldr	r3, [sp, #112]
 3686 02dc 1F9A     		ldr	r2, [sp, #124]
 3687 02de 0993     		str	r3, [sp, #36]
 3688 02e0 169B     		ldr	r3, [sp, #88]
 3689 02e2 CDF864B0 		str	fp, [sp, #100]
 3690 02e6 583A     		subs	r2, r2, #88
 3691 02e8 0892     		str	r2, [sp, #32]
 3692 02ea 9946     		mov	r9, r3
 3693              	.L374:
 3694 02ec 99ED027B 		vldr.64	d7, [r9, #8]
 3695 02f0 149B     		ldr	r3, [sp, #80]
 3696 02f2 099A     		ldr	r2, [sp, #36]
 3697 02f4 8DED047B 		vstr.64	d7, [sp, #16]
 3698 02f8 0DF50D64 		add	r4, sp, #2256
 3699 02fc 03EB020B 		add	fp, r3, r2
 3700              	.L371:
 3701 0300 D4E90023 		ldrd	r2, [r4]
 3702 0304 DDE90401 		ldrd	r0, [sp, #16]
 3703 0308 FFF7FEFF 		bl	__aeabi_dmul
 3704 030c 069B     		ldr	r3, [sp, #24]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 66


 3705 030e 012B     		cmp	r3, #1
 3706 0310 0646     		mov	r6, r0
 3707 0312 0F46     		mov	r7, r1
 3708 0314 04F1080A 		add	r10, r4, #8
 3709 0318 17D9     		bls	.L369
 3710 031a 089B     		ldr	r3, [sp, #32]
 3711 031c 083C     		subs	r4, r4, #8
 3712 031e 03EB0A08 		add	r8, r3, r10
 3713 0322 4D46     		mov	r5, r9
 3714              	.L370:
 3715 0324 D4E91423 		ldrd	r2, [r4, #80]
 3716 0328 D5E91401 		ldrd	r0, [r5, #80]
 3717 032c FFF7FEFF 		bl	__aeabi_dmul
 3718 0330 0246     		mov	r2, r0
 3719 0332 0B46     		mov	r3, r1
 3720 0334 3046     		mov	r0, r6
 3721 0336 3946     		mov	r1, r7
 3722 0338 FFF7FEFF 		bl	__aeabi_dadd
 3723 033c 4834     		adds	r4, r4, #72
 3724 033e 4445     		cmp	r4, r8
 3725 0340 0646     		mov	r6, r0
 3726 0342 0F46     		mov	r7, r1
 3727 0344 05F14805 		add	r5, r5, #72
 3728 0348 ECD1     		bne	.L370
 3729              	.L369:
 3730 034a 079B     		ldr	r3, [sp, #28]
 3731 034c 5345     		cmp	r3, r10
 3732 034e EBE80267 		strd	r6, [fp], #8
 3733 0352 5446     		mov	r4, r10
 3734 0354 D4D1     		bne	.L371
 3735 0356 DDE90E23 		ldrd	r2, [sp, #56]
 3736 035a DDE90401 		ldrd	r0, [sp, #16]
 3737 035e FFF7FEFF 		bl	__aeabi_dmul
 3738 0362 069B     		ldr	r3, [sp, #24]
 3739 0364 012B     		cmp	r3, #1
 3740 0366 0646     		mov	r6, r0
 3741 0368 0F46     		mov	r7, r1
 3742 036a 2DD9     		bls	.L372
 3743 036c 119B     		ldr	r3, [sp, #68]
 3744 036e CDF83090 		str	r9, [sp, #48]
 3745 0372 4C46     		mov	r4, r9
 3746 0374 DDF84090 		ldr	r9, [sp, #64]
 3747 0378 03F58675 		add	r5, r3, #268
 3748 037c 0DF1F008 		add	r8, sp, #240
 3749              	.L373:
 3750 0380 F8E80223 		ldrd	r2, [r8], #8
 3751 0384 55F8040B 		ldr	r0, [r5], #4	@ float
 3752 0388 CDE90423 		strd	r2, [sp, #16]
 3753 038c FFF7FEFF 		bl	__aeabi_f2d
 3754 0390 DDE90423 		ldrd	r2, [sp, #16]
 3755 0394 FFF7FEFF 		bl	__aeabi_dadd
 3756 0398 01F1004B 		add	fp, r1, #-2147483648
 3757 039c D4E91423 		ldrd	r2, [r4, #80]
 3758 03a0 5946     		mov	r1, fp
 3759 03a2 8246     		mov	r10, r0
 3760 03a4 FFF7FEFF 		bl	__aeabi_dmul
 3761 03a8 0246     		mov	r2, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 67


 3762 03aa 0B46     		mov	r3, r1
 3763 03ac 3046     		mov	r0, r6
 3764 03ae 3946     		mov	r1, r7
 3765 03b0 FFF7FEFF 		bl	__aeabi_dadd
 3766 03b4 A945     		cmp	r9, r5
 3767 03b6 0646     		mov	r6, r0
 3768 03b8 0F46     		mov	r7, r1
 3769 03ba 04F14804 		add	r4, r4, #72
 3770 03be DFD1     		bne	.L373
 3771 03c0 CDE90AAB 		strd	r10, [sp, #40]
 3772 03c4 DDF83090 		ldr	r9, [sp, #48]
 3773              	.L372:
 3774 03c8 099B     		ldr	r3, [sp, #36]
 3775 03ca C3E90267 		strd	r6, [r3, #8]
 3776 03ce 5033     		adds	r3, r3, #80
 3777 03d0 0993     		str	r3, [sp, #36]
 3778 03d2 159B     		ldr	r3, [sp, #84]
 3779 03d4 09F10809 		add	r9, r9, #8
 3780 03d8 4B45     		cmp	r3, r9
 3781 03da 87D1     		bne	.L374
 3782 03dc DDF864B0 		ldr	fp, [sp, #100]
 3783              	.L368:
 3784 03e0 179B     		ldr	r3, [sp, #92]
 3785 03e2 33B1     		cbz	r3, .L375
 3786 03e4 0BF10103 		add	r3, fp, #1
 3787 03e8 5A46     		mov	r2, fp
 3788 03ea BAA9     		add	r1, sp, #744
 3789 03ec 5A48     		ldr	r0, .L448+16
 3790 03ee FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3791              	.L375:
 3792 03f2 28A9     		add	r1, sp, #160
 3793 03f4 5A46     		mov	r2, fp
 3794 03f6 BAA8     		add	r0, sp, #744
 3795 03f8 FFF7FEFF 		bl	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 3796 03fc 544B     		ldr	r3, .L448+8
 3797 03fe D3F80831 		ldr	r3, [r3, #264]
 3798 0402 D906     		lsls	r1, r3, #27
 3799 0404 00F10E81 		bmi	.L442
 3800              	.L376:
 3801 0408 28AA     		add	r2, sp, #160
 3802 040a 5946     		mov	r1, fp
 3803 040c 0D98     		ldr	r0, [sp, #52]
 3804 040e FFF7FEFF 		bl	_ZN21HangprinterKinematics6AdjustEjPKd
 3805 0412 DDE92801 		ldrd	r0, [sp, #160]
 3806 0416 FFF7FEFF 		bl	__aeabi_d2f
 3807 041a 2290     		str	r0, [sp, #136]	@ float
 3808 041c DDE92A01 		ldrd	r0, [sp, #168]
 3809 0420 FFF7FEFF 		bl	__aeabi_d2f
 3810 0424 2390     		str	r0, [sp, #140]	@ float
 3811 0426 DDE92C01 		ldrd	r0, [sp, #176]
 3812 042a FFF7FEFF 		bl	__aeabi_d2f
 3813 042e 484B     		ldr	r3, .L448+8
 3814 0430 2490     		str	r0, [sp, #144]	@ float
 3815 0432 0322     		movs	r2, #3
 3816 0434 D868     		ldr	r0, [r3, #12]
 3817 0436 22A9     		add	r1, sp, #136
 3818 0438 FFF7FEFF 		bl	_ZN4Move20AdjustMotorPositionsEPKfj
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 68


 3819 043c 9FED427B 		vldr.64	d7, .L448
 3820 0440 069B     		ldr	r3, [sp, #24]
 3821 0442 8DED047B 		vstr.64	d7, [sp, #16]
 3822 0446 002B     		cmp	r3, #0
 3823 0448 55D0     		beq	.L381
 3824 044a CDF830B0 		str	fp, [sp, #48]
 3825 044e DDF86C80 		ldr	r8, [sp, #108]
 3826 0452 DDF840B0 		ldr	fp, [sp, #64]
 3827 0456 0DF5B866 		add	r6, sp, #1472
 3828 045a 0DF1E80A 		add	r10, sp, #232
 3829 045e 0DF5F479 		add	r9, sp, #488
 3830 0462 2EAF     		add	r7, sp, #184
 3831              	.L383:
 3832 0464 06F10805 		add	r5, r6, #8
 3833 0468 28AC     		add	r4, sp, #160
 3834              	.L382:
 3835 046a F4E80223 		ldrd	r2, [r4], #8
 3836 046e D5E90001 		ldrd	r0, [r5]
 3837 0472 FFF7FEFF 		bl	__aeabi_dadd
 3838 0476 A742     		cmp	r7, r4
 3839 0478 E5E80201 		strd	r0, [r5], #8
 3840 047c F5D1     		bne	.L382
 3841 047e D6E90601 		ldrd	r0, [r6, #24]
 3842 0482 FFF7FEFF 		bl	__aeabi_d2f
 3843 0486 0990     		str	r0, [sp, #36]
 3844 0488 D6E90401 		ldrd	r0, [r6, #16]
 3845 048c FFF7FEFF 		bl	__aeabi_d2f
 3846 0490 0890     		str	r0, [sp, #32]
 3847 0492 D6E90201 		ldrd	r0, [r6, #8]
 3848 0496 FFF7FEFF 		bl	__aeabi_d2f
 3849 049a 9DED091A 		vldr.32	s2, [sp, #36]	@ int
 3850 049e DDED080A 		vldr.32	s1, [sp, #32]	@ int
 3851 04a2 00EE100A 		vmov	s0, r0
 3852 04a6 25A9     		add	r1, sp, #148
 3853 04a8 0D98     		ldr	r0, [sp, #52]
 3854 04aa FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 3855 04ae 9DED278A 		vldr.32	s16, [sp, #156]
 3856 04b2 18EE100A 		vmov	r0, s16
 3857 04b6 FFF7FEFF 		bl	__aeabi_f2d
 3858 04ba F8EC017A 		vldmia.32	r8!, {s15}
 3859 04be 78EE277A 		vadd.f32	s15, s16, s15
 3860 04c2 EAE80201 		strd	r0, [r10], #8
 3861 04c6 17EE900A 		vmov	r0, s15
 3862 04ca FFF7FEFF 		bl	__aeabi_f2d
 3863 04ce 0246     		mov	r2, r0
 3864 04d0 0B46     		mov	r3, r1
 3865 04d2 E9E80223 		strd	r2, [r9], #8
 3866 04d6 FFF7FEFF 		bl	__aeabi_dmul
 3867 04da 0246     		mov	r2, r0
 3868 04dc 0B46     		mov	r3, r1
 3869 04de DDE90401 		ldrd	r0, [sp, #16]
 3870 04e2 FFF7FEFF 		bl	__aeabi_dadd
 3871 04e6 C345     		cmp	fp, r8
 3872 04e8 06F11806 		add	r6, r6, #24
 3873 04ec CDE90401 		strd	r0, [sp, #16]
 3874 04f0 B8D1     		bne	.L383
 3875 04f2 DDF830B0 		ldr	fp, [sp, #48]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 69


 3876              	.L381:
 3877 04f6 0698     		ldr	r0, [sp, #24]
 3878 04f8 FFF7FEFF 		bl	__aeabi_ui2d
 3879 04fc 0246     		mov	r2, r0
 3880 04fe 0B46     		mov	r3, r1
 3881 0500 0446     		mov	r4, r0
 3882 0502 0D46     		mov	r5, r1
 3883 0504 DDE90401 		ldrd	r0, [sp, #16]
 3884 0508 FFF7FEFF 		bl	__aeabi_ddiv
 3885 050c FFF7FEFF 		bl	__aeabi_d2f
 3886 0510 00EE100A 		vmov	s0, r0
 3887 0514 B5EE400A 		vcmp.f32	s0, #0
 3888 0518 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3889 051c B1EEC08A 		vsqrt.f32	s16, s0
 3890 0520 00F1F080 		bmi	.L443
 3891              	.L384:
 3892 0524 0A4B     		ldr	r3, .L448+8
 3893 0526 D3F80831 		ldr	r3, [r3, #264]
 3894 052a DA06     		lsls	r2, r3, #27
 3895 052c 6ED4     		bmi	.L444
 3896              	.L385:
 3897 052e 189B     		ldr	r3, [sp, #96]
 3898 0530 012B     		cmp	r3, #1
 3899 0532 13D0     		beq	.L386
 3900 0534 0123     		movs	r3, #1
 3901 0536 1893     		str	r3, [sp, #96]
 3902 0538 5DE6     		b	.L354
 3903              	.L440:
 3904 053a 0529     		cmp	r1, #5
 3905 053c 6CD9     		bls	.L364
 3906 053e 3146     		mov	r1, r6
 3907 0540 8FE6     		b	.L363
 3908              	.L449:
 3909 0542 00BFAFF3 		.align	3
 3909      0080
 3910              	.L448:
 3911 0548 00000000 		.word	0
 3912 054c 00000000 		.word	0
 3913 0550 00000000 		.word	reprap
 3914 0554 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 3915 0558 6C000000 		.word	.LC33
 3916              	.L386:
 3917 055c 6C4B     		ldr	r3, .L450
 3918 055e DDF834B0 		ldr	fp, [sp, #52]
 3919 0562 D3F80831 		ldr	r3, [r3, #264]
 3920 0566 DB06     		lsls	r3, r3, #27
 3921 0568 0DD5     		bpl	.L387
 3922 056a 169E     		ldr	r6, [sp, #88]
 3923 056c BA96     		str	r6, [sp, #744]
 3924 056e 0022     		movs	r2, #0
 3925 0570 DD23     		movs	r3, #221
 3926 0572 BAA9     		add	r1, sp, #744
 3927 0574 5846     		mov	r0, fp
 3928 0576 3270     		strb	r2, [r6]
 3929 0578 BB93     		str	r3, [sp, #748]
 3930 057a FFF7FEFF 		bl	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 3931 057e 3146     		mov	r1, r6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 70


 3932 0580 6448     		ldr	r0, .L450+4
 3933 0582 FFF7FEFF 		bl	debugPrintf
 3934              	.L387:
 3935 0586 2246     		mov	r2, r4
 3936 0588 2B46     		mov	r3, r5
 3937 058a DDE91201 		ldrd	r0, [sp, #72]
 3938 058e FFF7FEFF 		bl	__aeabi_ddiv
 3939 0592 FFF7FEFF 		bl	__aeabi_d2f
 3940 0596 00EE100A 		vmov	s0, r0
 3941 059a B5EE400A 		vcmp.f32	s0, #0
 3942 059e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3943 05a2 F1EEC08A 		vsqrt.f32	s17, s0
 3944 05a6 00F1B080 		bmi	.L445
 3945              	.L388:
 3946 05aa 18EE100A 		vmov	r0, s16
 3947 05ae FFF7FEFF 		bl	__aeabi_f2d
 3948 05b2 CDE90201 		strd	r0, [sp, #8]
 3949 05b6 18EE900A 		vmov	r0, s17
 3950 05ba FFF7FEFF 		bl	__aeabi_f2d
 3951 05be 209C     		ldr	r4, [sp, #128]
 3952 05c0 069B     		ldr	r3, [sp, #24]
 3953 05c2 1A9A     		ldr	r2, [sp, #104]
 3954 05c4 CDE90001 		strd	r0, [sp]
 3955 05c8 5349     		ldr	r1, .L450+8
 3956 05ca 2046     		mov	r0, r4
 3957 05cc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3958 05d0 4F4A     		ldr	r2, .L450
 3959 05d2 2368     		ldr	r3, [r4]
 3960 05d4 5068     		ldr	r0, [r2, #4]
 3961 05d6 4F4A     		ldr	r2, .L450+4
 3962 05d8 8021     		movs	r1, #128
 3963 05da FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3964 05de 0123     		movs	r3, #1
 3965 05e0 8BF82C31 		strb	r3, [fp, #300]
 3966 05e4 25E5     		b	.L433
 3967              	.L441:
 3968 05e6 5B46     		mov	r3, fp
 3969 05e8 069A     		ldr	r2, [sp, #24]
 3970 05ea 1699     		ldr	r1, [sp, #88]
 3971 05ec 4B48     		ldr	r0, .L450+12
 3972 05ee FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3973 05f2 474B     		ldr	r3, .L450
 3974 05f4 4A4A     		ldr	r2, .L450+16
 3975 05f6 D3F80831 		ldr	r3, [r3, #264]
 3976 05fa BA92     		str	r2, [sp, #744]
 3977 05fc 03F01003 		and	r3, r3, #16
 3978 0600 1793     		str	r3, [sp, #92]
 3979 0602 BBF1000F 		cmp	fp, #0
 3980 0606 7FF458AE 		bne	.L389
 3981 060a E9E6     		b	.L368
 3982              	.L444:
 3983 060c 069A     		ldr	r2, [sp, #24]
 3984 060e 4548     		ldr	r0, .L450+20
 3985 0610 7AA9     		add	r1, sp, #488
 3986 0612 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 3987 0616 8AE7     		b	.L385
 3988              	.L364:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 71


 3989 0618 FFF7FEFF 		bl	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 3990 061c 3146     		mov	r1, r6
 3991 061e A7EC020B 		vstmia.64	r7!, {d0}
 3992 0622 12E6     		b	.L362
 3993              	.L442:
 3994 0624 0BF10103 		add	r3, fp, #1
 3995 0628 5A46     		mov	r2, fp
 3996 062a BAA9     		add	r1, sp, #744
 3997 062c 3E48     		ldr	r0, .L450+24
 3998 062e FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3999 0632 5A46     		mov	r2, fp
 4000 0634 28A9     		add	r1, sp, #160
 4001 0636 3D48     		ldr	r0, .L450+28
 4002 0638 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 4003 063c 3C48     		ldr	r0, .L450+32
 4004 063e FFF7FEFF 		bl	debugPrintf
 4005 0642 069B     		ldr	r3, [sp, #24]
 4006 0644 7BB3     		cbz	r3, .L377
 4007 0646 CDF810B0 		str	fp, [sp, #16]
 4008 064a DFF8ECA0 		ldr	r10, .L450+40
 4009 064e DDF86C80 		ldr	r8, [sp, #108]
 4010 0652 DDF884B0 		ldr	fp, [sp, #132]
 4011 0656 0DF50D69 		add	r9, sp, #2256
 4012              	.L380:
 4013 065a 58F8040B 		ldr	r0, [r8], #4	@ float
 4014 065e FFF7FEFF 		bl	__aeabi_f2d
 4015 0662 049B     		ldr	r3, [sp, #16]
 4016 0664 0646     		mov	r6, r0
 4017 0666 0F46     		mov	r7, r1
 4018 0668 8BB1     		cbz	r3, .L378
 4019 066a 4D46     		mov	r5, r9
 4020 066c 28AC     		add	r4, sp, #160
 4021              	.L379:
 4022 066e F5E80223 		ldrd	r2, [r5], #8
 4023 0672 F4E80201 		ldrd	r0, [r4], #8
 4024 0676 FFF7FEFF 		bl	__aeabi_dmul
 4025 067a 0246     		mov	r2, r0
 4026 067c 0B46     		mov	r3, r1
 4027 067e 3046     		mov	r0, r6
 4028 0680 3946     		mov	r1, r7
 4029 0682 FFF7FEFF 		bl	__aeabi_dadd
 4030 0686 A345     		cmp	fp, r4
 4031 0688 0646     		mov	r6, r0
 4032 068a 0F46     		mov	r7, r1
 4033 068c EFD1     		bne	.L379
 4034              	.L378:
 4035 068e 3B46     		mov	r3, r7
 4036 0690 3246     		mov	r2, r6
 4037 0692 5046     		mov	r0, r10
 4038 0694 FFF7FEFF 		bl	debugPrintf
 4039 0698 109B     		ldr	r3, [sp, #64]
 4040 069a 4345     		cmp	r3, r8
 4041 069c 09F14809 		add	r9, r9, #72
 4042 06a0 DBD1     		bne	.L380
 4043 06a2 DDF810B0 		ldr	fp, [sp, #16]
 4044              	.L377:
 4045 06a6 2348     		ldr	r0, .L450+36
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 72


 4046 06a8 FFF7FEFF 		bl	debugPrintf
 4047 06ac ACE6     		b	.L376
 4048              	.L434:
 4049 06ae 0DF6C802 		addw	r2, sp, #2248
 4050 06b2 1D9C     		ldr	r4, [sp, #116]
 4051 06b4 8DF8C848 		strb	r4, [sp, #2248]
 4052 06b8 DD23     		movs	r3, #221
 4053 06ba 0DF5B861 		add	r1, sp, #1472
 4054 06be 1446     		mov	r4, r2
 4055 06c0 5846     		mov	r0, fp
 4056 06c2 1692     		str	r2, [sp, #88]
 4057 06c4 CDF8C025 		str	r2, [sp, #1472]
 4058 06c8 CDF8C435 		str	r3, [sp, #1476]
 4059 06cc FFF7FEFF 		bl	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 4060 06d0 2146     		mov	r1, r4
 4061 06d2 1048     		ldr	r0, .L450+4
 4062 06d4 FFF7FEFF 		bl	debugPrintf
 4063 06d8 C4E4     		b	.L352
 4064              	.L437:
 4065 06da FFF7FEFF 		bl	sqrtf
 4066 06de 94ED009A 		vldr.32	s18, [r4]
 4067 06e2 94ED018A 		vldr.32	s16, [r4, #4]
 4068 06e6 D4ED029A 		vldr.32	s19, [r4, #8]
 4069 06ea 08E5     		b	.L355
 4070              	.L438:
 4071 06ec FFF7FEFF 		bl	sqrtf
 4072 06f0 94ED009A 		vldr.32	s18, [r4]
 4073 06f4 94ED018A 		vldr.32	s16, [r4, #4]
 4074 06f8 D4ED029A 		vldr.32	s19, [r4, #8]
 4075 06fc 20E5     		b	.L356
 4076              	.L439:
 4077 06fe FFF7FEFF 		bl	sqrtf
 4078 0702 3DE5     		b	.L357
 4079              	.L443:
 4080 0704 FFF7FEFF 		bl	sqrtf
 4081 0708 0CE7     		b	.L384
 4082              	.L445:
 4083 070a FFF7FEFF 		bl	sqrtf
 4084 070e 4CE7     		b	.L388
 4085              	.L451:
 4086              		.align	2
 4087              	.L450:
 4088 0710 00000000 		.word	reprap
 4089 0714 54000000 		.word	.LC31
 4090 0718 C8000000 		.word	.LC40
 4091 071c 58000000 		.word	.LC32
 4092 0720 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 4093 0724 B0000000 		.word	.LC39
 4094 0728 7C000000 		.word	.LC34
 4095 072c 8C000000 		.word	.LC35
 4096 0730 98000000 		.word	.LC36
 4097 0734 AC000000 		.word	.LC38
 4098 0738 A4000000 		.word	.LC37
 4099              		.size	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN21H
 4100              		.global	_ZTV21HangprinterKinematics
 4101              		.weak	_ZTV11FixedMatrixIdLj32ELj9EE
 4102              		.section	.rodata._ZTV11FixedMatrixIdLj32ELj9EE,"aG",%progbits,_ZTV11FixedMatrixIdLj32ELj9EE,comdat
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 73


 4103              		.align	2
 4104              		.type	_ZTV11FixedMatrixIdLj32ELj9EE, %object
 4105              		.size	_ZTV11FixedMatrixIdLj32ELj9EE, 32
 4106              	_ZTV11FixedMatrixIdLj32ELj9EE:
 4107 0000 00000000 		.word	0
 4108 0004 00000000 		.word	0
 4109 0008 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 4110 000c 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 4111 0010 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EEclEjj
 4112 0014 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 4113 0018 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED1Ev
 4114 001c 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 4115              		.weak	_ZTV11FixedMatrixIdLj9ELj10EE
 4116              		.section	.rodata._ZTV11FixedMatrixIdLj9ELj10EE,"aG",%progbits,_ZTV11FixedMatrixIdLj9ELj10EE,comdat
 4117              		.align	2
 4118              		.type	_ZTV11FixedMatrixIdLj9ELj10EE, %object
 4119              		.size	_ZTV11FixedMatrixIdLj9ELj10EE, 32
 4120              	_ZTV11FixedMatrixIdLj9ELj10EE:
 4121 0000 00000000 		.word	0
 4122 0004 00000000 		.word	0
 4123 0008 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 4124 000c 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 4125 0010 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 4126 0014 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 4127 0018 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED1Ev
 4128 001c 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 4129              		.section	.rodata
 4130              		.align	2
 4131              		.set	.LANCHOR0,. + 0
 4132              	.LC13:
 4133 0000 08000000 		.word	.LC6
 4134 0004 10000000 		.word	.LC7
 4135 0008 18000000 		.word	.LC8
 4136 000c 00000000 		.word	.LC9
 4137              	.LC0:
 4138 0010 33338242 		.word	1115829043
 4139 0014 33338242 		.word	1115829043
 4140 0018 33338242 		.word	1115829043
 4141 001c 33338242 		.word	1115829043
 4142              	.LC1:
 4143 0020 02000000 		.word	2
 4144 0024 02000000 		.word	2
 4145 0028 02000000 		.word	2
 4146 002c 01000000 		.word	1
 4147              	.LC2:
 4148 0030 01000000 		.word	1
 4149 0034 01000000 		.word	1
 4150 0038 01000000 		.word	1
 4151 003c 01000000 		.word	1
 4152              	.LC3:
 4153 0040 14000000 		.word	20
 4154 0044 14000000 		.word	20
 4155 0048 14000000 		.word	20
 4156 004c 14000000 		.word	20
 4157              	.LC4:
 4158 0050 FF000000 		.word	255
 4159 0054 FF000000 		.word	255
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 74


 4160 0058 FF000000 		.word	255
 4161 005c FF000000 		.word	255
 4162              	.LC5:
 4163 0060 20000000 		.word	32
 4164 0064 20000000 		.word	32
 4165 0068 20000000 		.word	32
 4166 006c 20000000 		.word	32
 4167              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 4168              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 4169              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 4170              	_ZL28cpu_irq_prev_interrupt_state:
 4171 0000 00       		.space	1
 4172              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 4173              		.align	2
 4174              		.type	_ZL32cpu_irq_critical_section_counter, %object
 4175              		.size	_ZL32cpu_irq_critical_section_counter, 4
 4176              	_ZL32cpu_irq_critical_section_counter:
 4177 0000 00000000 		.space	4
 4178              		.section	.rodata._ZL14DefaultAnchorA,"a",%progbits
 4179              		.align	2
 4180              		.set	.LANCHOR1,. + 0
 4181              		.type	_ZL14DefaultAnchorA, %object
 4182              		.size	_ZL14DefaultAnchorA, 12
 4183              	_ZL14DefaultAnchorA:
 4184 0000 00000000 		.word	0
 4185 0004 29A4B3C4 		.word	-994859991
 4186 0008 00000000 		.word	0
 4187              		.section	.rodata._ZL14DefaultAnchorB,"a",%progbits
 4188              		.align	2
 4189              		.set	.LANCHOR2,. + 0
 4190              		.type	_ZL14DefaultAnchorB, %object
 4191              		.size	_ZL14DefaultAnchorB, 12
 4192              	_ZL14DefaultAnchorB:
 4193 0000 E1929B44 		.word	1151046369
 4194 0004 D7A33344 		.word	1144234967
 4195 0008 00000000 		.word	0
 4196              		.section	.rodata._ZL14DefaultAnchorC,"a",%progbits
 4197              		.align	2
 4198              		.set	.LANCHOR3,. + 0
 4199              		.type	_ZL14DefaultAnchorC, %object
 4200              		.size	_ZL14DefaultAnchorC, 12
 4201              	_ZL14DefaultAnchorC:
 4202 0000 E1929BC4 		.word	-996437279
 4203 0004 D7A33344 		.word	1144234967
 4204 0008 00000000 		.word	0
 4205              		.section	.rodata._ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRe
 4206              		.align	2
 4207              	.LC30:
 4208 0000 48616E67 		.ascii	"Hangprinter calibration with %d factors requested b"
 4208      7072696E 
 4208      74657220 
 4208      63616C69 
 4208      62726174 
 4209 0033 7574206F 		.ascii	"ut only 3, 6, and 9 supported\000"
 4209      6E6C7920 
 4209      332C2036 
 4209      2C20616E 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 75


 4209      64203920 
 4210 0051 000000   		.space	3
 4211              	.LC31:
 4212 0054 25730A00 		.ascii	"%s\012\000"
 4213              	.LC32:
 4214 0058 44657269 		.ascii	"Derivative matrix\000"
 4214      76617469 
 4214      7665206D 
 4214      61747269 
 4214      7800
 4215 006a 0000     		.space	2
 4216              	.LC33:
 4217 006c 4E6F726D 		.ascii	"Normal matrix\000"
 4217      616C206D 
 4217      61747269 
 4217      7800
 4218 007a 0000     		.space	2
 4219              	.LC34:
 4220 007c 536F6C76 		.ascii	"Solved matrix\000"
 4220      6564206D 
 4220      61747269 
 4220      7800
 4221 008a 0000     		.space	2
 4222              	.LC35:
 4223 008c 536F6C75 		.ascii	"Solution\000"
 4223      74696F6E 
 4223      00
 4224 0095 000000   		.space	3
 4225              	.LC36:
 4226 0098 52657369 		.ascii	"Residuals:\000"
 4226      6475616C 
 4226      733A00
 4227 00a3 00       		.space	1
 4228              	.LC37:
 4229 00a4 2025372E 		.ascii	" %7.4f\000"
 4229      346600
 4230 00ab 00       		.space	1
 4231              	.LC38:
 4232 00ac 0A00     		.ascii	"\012\000"
 4233 00ae 0000     		.space	2
 4234              	.LC39:
 4235 00b0 45787065 		.ascii	"Expected probe error\000"
 4235      63746564 
 4235      2070726F 
 4235      62652065 
 4235      72726F72 
 4236 00c5 000000   		.space	3
 4237              	.LC40:
 4238 00c8 43616C69 		.ascii	"Calibrated %d factors using %d points, deviation be"
 4238      62726174 
 4238      65642025 
 4238      64206661 
 4238      63746F72 
 4239 00fb 666F7265 		.ascii	"fore %.3f after %.3f\000"
 4239      20252E33 
 4239      66206166 
 4239      74657220 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 76


 4239      252E3366 
 4240              		.section	.rodata._ZN21HangprinterKinematics6RecalcEv.str1.4,"aMS",%progbits,1
 4241              		.align	2
 4242              	.LC17:
 4243 0000 50696574 		.ascii	"Pietari Line Lengths origins: %f\012\000"
 4243      61726920 
 4243      4C696E65 
 4243      204C656E 
 4243      67746873 
 4244 0022 0000     		.space	2
 4245              	.LC18:
 4246 0024 50696574 		.ascii	"Pietari k2 value %f\012\000"
 4246      61726920 
 4246      6B322076 
 4246      616C7565 
 4246      2025660A 
 4247 0039 000000   		.space	3
 4248              	.LC19:
 4249 003c 50696574 		.ascii	"Pietari k0 value %f\012\000"
 4249      61726920 
 4249      6B302076 
 4249      616C7565 
 4249      2025660A 
 4250 0051 000000   		.space	3
 4251              	.LC20:
 4252 0054 52656361 		.ascii	"Recalced params\012Da2: %.2f, Db2: %.2f, Dc2: %.2f,"
 4252      6C636564 
 4252      20706172 
 4252      616D730A 
 4252      4461323A 
 4253 0084 20586162 		.ascii	" Xab: %.2f, Xbc: %.2f, Xca: %.2f, Yab: %.2f, Ybc: %"
 4253      3A20252E 
 4253      32662C20 
 4253      5862633A 
 4253      20252E32 
 4254 00b7 2E32662C 		.ascii	".2f, Yca: %.2f, Zab: %.2f, Zbc: %.2f, Zca: %.2f, P:"
 4254      20596361 
 4254      3A20252E 
 4254      32662C20 
 4254      5A61623A 
 4255 00ea 20252E32 		.ascii	" %.2f, P2: %.2f, Q: %.2f, R: %.2f, U: %.2f, A: %.2f"
 4255      662C2050 
 4255      323A2025 
 4255      2E32662C 
 4255      20513A20 
 4256 011d 0A00     		.ascii	"\012\000"
 4257              		.section	.rodata._ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%
 4258              		.align	2
 4259              	.LC21:
 4260 0000 4B696E65 		.ascii	"Kinematics is Hangprinter\012Anchor positions:\012%"
 4260      6D617469 
 4260      63732069 
 4260      73204861 
 4260      6E677072 
 4261 002d 2E32662C 		.ascii	".2f, %.2f, %.2f\012%.2f, %.2f, %.2f\012%.2f, %.2f, "
 4261      20252E32 
 4261      662C2025 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 77


 4261      2E32660A 
 4261      252E3266 
 4262 005a 252E3266 		.ascii	"%.2f\012%.2f\012Print radius:\012%.1f\012Segments/s"
 4262      0A252E32 
 4262      660A5072 
 4262      696E7420 
 4262      72616469 
 4263 0081 3A0A2564 		.ascii	":\012%d\012Min segment length:\012%.2f\012Spool bui"
 4263      0A4D696E 
 4263      20736567 
 4263      6D656E74 
 4263      206C656E 
 4264 00a8 6C647570 		.ascii	"ldup factor:\012%.4f\012Spool radii:\012%.2f, %.2f,"
 4264      20666163 
 4264      746F723A 
 4264      0A252E34 
 4264      660A5370 
 4265 00d2 20252E32 		.ascii	" %.2f, %.2f\012Mechanical Advantage:\012%d, %d, %d,"
 4265      662C2025 
 4265      2E32660A 
 4265      4D656368 
 4265      616E6963 
 4266 00ff 2025640A 		.ascii	" %d\012Lines per spool:\012%d, %d, %d, %d\012Motor "
 4266      4C696E65 
 4266      73207065 
 4266      72207370 
 4266      6F6F6C3A 
 4267 0129 67656172 		.ascii	"gear teeth\012%d, %d, %d, %d\012Spool gear teeth\012"
 4267      20746565 
 4267      74680A25 
 4267      642C2025 
 4267      642C2025 
 4268 0154 25642C20 		.ascii	"%d, %d, %d, %d\012Full steps per revolution\012%d, "
 4268      25642C20 
 4268      25642C20 
 4268      25640A46 
 4268      756C6C20 
 4269 0181 25642C20 		.ascii	"%d, %d, %d\000"
 4269      25642C20 
 4269      256400
 4270              	.LC22:
 4271 018c 513A4275 		.ascii	"Q:Buildup fac %.4f\012R:Spool r %.2f, %.2f, %.2f, %"
 4271      696C6475 
 4271      70206661 
 4271      6320252E 
 4271      34660A52 
 4272 01bc 2E32660A 		.ascii	".2f\012U:Mech Adv %d, %d, %d, %d\012O:Lines/spool %"
 4272      553A4D65 
 4272      63682041 
 4272      64762025 
 4272      642C2025 
 4273 01e9 642C2025 		.ascii	"d, %d, %d, %d\012L:Motor gear teeth %d, %d, %d, %d\012"
 4273      642C2025 
 4273      642C2025 
 4273      640A4C3A 
 4273      4D6F746F 
 4274 0219 483A5370 		.ascii	"H:Spool gear teeth %d, %d, %d, %d\012J:Full steps/r"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 78


 4274      6F6F6C20 
 4274      67656172 
 4274      20746565 
 4274      74682025 
 4275 0249 65762025 		.ascii	"ev %d, %d, %d, %d\000"
 4275      642C2025 
 4275      642C2025 
 4275      642C2025 
 4275      6400
 4276              		.section	.rodata._ZNK21HangprinterKinematics15PrintParametersERK9StringRef.str1.4,"aMS",%progbits,
 4277              		.align	2
 4278              	.LC27:
 4279 0000 416E6368 		.ascii	"Anchor coordinates (%.2f,%.2f,%.2f) (%.2f,%.2f,%.2f"
 4279      6F722063 
 4279      6F6F7264 
 4279      696E6174 
 4279      65732028 
 4280 0033 29202825 		.ascii	") (%.2f,%.2f,%.2f)\012\000"
 4280      2E32662C 
 4280      252E3266 
 4280      2C252E32 
 4280      66290A00 
 4281              		.section	.rodata._ZNK21HangprinterKinematics16InverseTransformEfffPf.str1.4,"aMS",%progbits,1
 4282              		.align	2
 4283              	.LC23:
 4284 0000 496E7665 		.ascii	"Inverse Transform Pietari: S: %.2f, T: %.2f, halfB:"
 4284      72736520 
 4284      5472616E 
 4284      73666F72 
 4284      6D205069 
 4285 0033 20252E32 		.ascii	" %.2f, C: %.2f\012\000"
 4285      662C2043 
 4285      3A20252E 
 4285      32660A00 
 4286 0043 00       		.space	1
 4287              	.LC24:
 4288 0044 6D616368 		.ascii	"machinepos before Pietari %f\000"
 4288      696E6570 
 4288      6F732062 
 4288      65666F72 
 4288      65205069 
 4289 0061 000000   		.space	3
 4290              	.LC25:
 4291 0064 6D616368 		.ascii	"machinepos after Pietari %f\000"
 4291      696E6570 
 4291      6F732061 
 4291      66746572 
 4291      20506965 
 4292              	.LC26:
 4293 0080 4D6F746F 		.ascii	"Motor %.2f,%.2f,%.2f to Cartesian %.2f,%.2f,%.2f\012"
 4293      7220252E 
 4293      32662C25 
 4293      2E32662C 
 4293      252E3266 
 4294 00b1 00       		.ascii	"\000"
 4295              		.section	.rodata._ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef.str1.4,"aMS",%prog
 4296              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 79


 4297              	.LC16:
 4298 0000 686F6D65 		.ascii	"homeall.g\000"
 4298      616C6C2E 
 4298      6700
 4299              		.section	.rodata._ZNK21HangprinterKinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 4300              		.align	2
 4301              	.LC11:
 4302 0000 41424344 		.ascii	"ABCD\000"
 4302      00
 4303              		.section	.rodata._ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb.str1.4,"aMS",%prog
 4304              		.align	2
 4305              	.LC14:
 4306 0000 4C696E65 		.ascii	"Lineposition %s Pietari: %f\012\000"
 4306      706F7369 
 4306      74696F6E 
 4306      20257320 
 4306      50696574 
 4307 001d 000000   		.space	3
 4308              	.LC15:
 4309 0020 4D6F746F 		.ascii	"Motor positions Pietari: %s, %f\012\000"
 4309      7220706F 
 4309      73697469 
 4309      6F6E7320 
 4309      50696574 
 4310              		.section	.rodata._ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore.str1.4,"aMS",
 4311              		.align	2
 4312              	.LC28:
 4313 0000 3B204861 		.ascii	"; Hangprinter parameters\012\000"
 4313      6E677072 
 4313      696E7465 
 4313      72207061 
 4313      72616D65 
 4314 001a 0000     		.space	2
 4315              	.LC29:
 4316 001c 50696574 		.ascii	"Pietari M669 K6 A%.3f:%.3f:%.3f B%.3f:%.3f:%.3f C%."
 4316      61726920 
 4316      4D363639 
 4316      204B3620 
 4316      41252E33 
 4317 004f 33663A25 		.ascii	"3f:%.3f:%.3f D%.3f P%.1f Q%.6f R%.3f:%.3f:%.3f:%.3f"
 4317      2E33663A 
 4317      252E3366 
 4317      2044252E 
 4317      33662050 
 4318 0082 0A00     		.ascii	"\012\000"
 4319              		.section	.rodata._ZNK21HangprinterKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 4320              		.align	2
 4321              	.LC12:
 4322 0000 48616E67 		.ascii	"Hangprinter\000"
 4322      7072696E 
 4322      74657200 
 4323              		.section	.rodata._ZTV21HangprinterKinematics,"a",%progbits
 4324              		.align	2
 4325              		.set	.LANCHOR4,. + 0
 4326              		.type	_ZTV21HangprinterKinematics, %object
 4327              		.size	_ZTV21HangprinterKinematics, 128
 4328              	_ZTV21HangprinterKinematics:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccJhafRx.s 			page 80


 4329 0000 00000000 		.word	0
 4330 0004 00000000 		.word	0
 4331 0008 00000000 		.word	_ZNK21HangprinterKinematics7GetNameEb
 4332 000c 00000000 		.word	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 4333 0010 00000000 		.word	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 4334 0014 00000000 		.word	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf
 4335 0018 00000000 		.word	_ZNK21HangprinterKinematics23SupportsAutoCalibrationEv
 4336 001c 00000000 		.word	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 4337 0020 00000000 		.word	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv
 4338 0024 00000000 		.word	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore
 4339 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 4340 002c 00000000 		.word	_ZNK21HangprinterKinematics11IsReachableEffb
 4341 0030 00000000 		.word	_ZNK21HangprinterKinematics13LimitPositionEPfjmb
 4342 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 4343 0038 00000000 		.word	_ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf
 4344 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 4345 0040 00000000 		.word	_ZNK21HangprinterKinematics16NumHomingButtonsEj
 4346 0044 00000000 		.word	_ZNK21HangprinterKinematics17HomingButtonNamesEv
 4347 0048 00000000 		.word	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 4348 004c 00000000 		.word	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef
 4349 0050 00000000 		.word	_ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj
 4350 0054 00000000 		.word	_ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 4351 0058 00000000 		.word	_ZNK21HangprinterKinematics13GetHomingModeEv
 4352 005c 00000000 		.word	_ZNK21HangprinterKinematics16AxesAssumedHomedEm
 4353 0060 00000000 		.word	_ZNK21HangprinterKinematics15MustBeHomedAxesEmb
 4354 0064 00000000 		.word	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore
 4355 0068 00000000 		.word	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf
 4356 006c 00000000 		.word	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj
 4357 0070 00000000 		.word	_ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj
 4358 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 4359 0078 00000000 		.word	_ZN21HangprinterKinematicsD1Ev
 4360 007c 00000000 		.word	_ZN21HangprinterKinematicsD0Ev
 4361              		.section	.rodata.str1.4,"aMS",%progbits,1
 4362              		.align	2
 4363              	.LC9:
 4364 0000 44206178 		.ascii	"D axis\000"
 4364      697300
 4365 0007 00       		.space	1
 4366              	.LC6:
 4367 0008 41206178 		.ascii	"A axis\000"
 4367      697300
 4368 000f 00       		.space	1
 4369              	.LC7:
 4370 0010 42206178 		.ascii	"B axis\000"
 4370      697300
 4371 0017 00       		.space	1
 4372              	.LC8:
 4373 0018 43206178 		.ascii	"C axis\000"
 4373      697300
 4374              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
