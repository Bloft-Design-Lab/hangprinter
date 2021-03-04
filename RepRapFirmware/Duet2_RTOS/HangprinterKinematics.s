ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 1


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 2


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 3


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 4


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 5


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 6


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
 301 0008 41F01800 		orreq	r0, r1, #24
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 7


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 8


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 9


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 10


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 11


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
 613              		@ args = 12, pretend = 0, frame = 72
 614              		@ frame_needed = 0, uses_anonymous_args = 0
 615 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 616 0004 D1ED017A 		vldr.32	s15, [r1, #4]
 617 0008 90ED087A 		vldr.32	s14, [r0, #32]
 618 000c D0ED0B6A 		vldr.32	s13, [r0, #44]
 619 0010 90ED063A 		vldr.32	s6, [r0, #24]
 620 0014 724E     		ldr	r6, .L73
 621 0016 91ED006A 		vldr.32	s12, [r1]
 622 001a D0ED093A 		vldr.32	s7, [r0, #36]
 623 001e 90ED0C4A 		vldr.32	s8, [r0, #48]
 624 0022 D0ED044A 		vldr.32	s9, [r0, #16]
 625 0026 90ED075A 		vldr.32	s10, [r0, #28]
 626 002a 90ED0A2A 		vldr.32	s4, [r0, #40]
 627 002e D0ED0D5A 		vldr.32	s11, [r0, #52]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 12


 628 0032 D1ED022A 		vldr.32	s5, [r1, #8]
 629 0036 2DED068B 		vpush.64	{d8, d9, d10}
 630 003a 90ED058A 		vldr.32	s16, [r0, #20]
 631 003e 37EEC88A 		vsub.f32	s16, s15, s16
 632 0042 37EEC77A 		vsub.f32	s14, s15, s14
 633 0046 28EE088A 		vmul.f32	s16, s16, s16
 634 004a 77EEE66A 		vsub.f32	s13, s15, s13
 635 004e 0446     		mov	r4, r0
 636 0050 8846     		mov	r8, r1
 637 0052 9146     		mov	r9, r2
 638 0054 A3EE038A 		vfma.f32	s16, s6, s6
 639 0058 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 640 005a 27EE079A 		vmul.f32	s18, s14, s14
 641 005e 66EEA69A 		vmul.f32	s19, s13, s13
 642 0062 67EEA78A 		vmul.f32	s17, s15, s15
 643 0066 76EE646A 		vsub.f32	s13, s12, s9
 644 006a 93B0     		sub	sp, sp, #76
 645 006c E6EE068A 		vfma.f32	s17, s12, s12
 646 0070 08AD     		add	r5, sp, #32
 647 0072 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 648 0074 A3EEA39A 		vfma.f32	s18, s7, s7
 649 0078 3368     		ldr	r3, [r6]
 650 007a 2B60     		str	r3, [r5]
 651 007c E4EE049A 		vfma.f32	s19, s8, s8
 652 0080 4FF07E53 		mov	r3, #1065353216
 653 0084 239F     		ldr	r7, [sp, #140]
 654 0086 0793     		str	r3, [sp, #28]	@ float
 655 0088 A6EEA68A 		vfma.f32	s16, s13, s13
 656 008c 04F1F805 		add	r5, r4, #248
 657 0090 04F5847B 		add	fp, r4, #264
 658 0094 36EE457A 		vsub.f32	s14, s12, s10
 659 0098 75EEE27A 		vsub.f32	s15, s11, s5
 660 009c 36EE426A 		vsub.f32	s12, s12, s4
 661 00a0 E7EEA78A 		vfma.f32	s17, s15, s15
 662 00a4 0DF1100A 		add	r10, sp, #16
 663 00a8 0DAE     		add	r6, sp, #52
 664 00aa A7EE079A 		vfma.f32	s18, s14, s14
 665 00ae E6EE069A 		vfma.f32	s19, s12, s12
 666 00b2 B0EE480A 		vmov.f32	s0, s16
 667 00b6 B5EE400A 		vcmp.f32	s0, #0
 668 00ba F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 669 00be 8DED038A 		vstr.32	s16, [sp, #12]
 670 00c2 8DED049A 		vstr.32	s18, [sp, #16]
 671 00c6 CDED059A 		vstr.32	s19, [sp, #20]
 672 00ca CDED068A 		vstr.32	s17, [sp, #24]
 673 00ce F1EEC07A 		vsqrt.f32	s15, s0
 674 00d2 10D4     		bmi	.L71
 675              	.L57:
 676 00d4 B5EC017A 		vldmia.32	r5!, {s14}
 677 00d8 77EEC77A 		vsub.f32	s15, s15, s14
 678 00dc 5D45     		cmp	r5, fp
 679 00de E6EC017A 		vstmia.32	r6!, {s15}
 680 00e2 0FD0     		beq	.L72
 681 00e4 BAEC010A 		vldmia.32	r10!, {s0}
 682 00e8 B5EE400A 		vcmp.f32	s0, #0
 683 00ec F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 684 00f0 F1EEC07A 		vsqrt.f32	s15, s0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 13


 685 00f4 EED5     		bpl	.L57
 686              	.L71:
 687 00f6 CDED017A 		vstr.32	s15, [sp, #4]	@ int
 688 00fa FFF7FEFF 		bl	sqrtf
 689 00fe DDED017A 		vldr.32	s15, [sp, #4]	@ int
 690 0102 E7E7     		b	.L57
 691              	.L72:
 692 0104 94ED0DAA 		vldr.32	s20, [r4, #52]
 693 0108 98ED027A 		vldr.32	s14, [r8, #8]
 694 010c DFED357A 		vldr.32	s15, .L73+4
 695 0110 3AEE47AA 		vsub.f32	s20, s20, s14
 696 0114 B5EEC08A 		vcmpe.f32	s16, #0
 697 0118 3AEE67AA 		vsub.f32	s20, s20, s15
 698 011c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 699 0120 8DED11AA 		vstr.32	s20, [sp, #68]
 700 0124 3BDD     		ble	.L56
 701 0126 B5EEC09A 		vcmpe.f32	s18, #0
 702 012a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 703 012e 36DD     		ble	.L56
 704 0130 F5EEC09A 		vcmpe.f32	s19, #0
 705 0134 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 706 0138 31DD     		ble	.L56
 707 013a F5EEC08A 		vcmpe.f32	s17, #0
 708 013e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 709 0142 2CDD     		ble	.L56
 710 0144 D9ED007A 		vldr.32	s15, [r9]
 711 0148 9DED0D0A 		vldr.32	s0, [sp, #52]
 712 014c 20EE270A 		vmul.f32	s0, s0, s15
 713 0150 FFF7FEFF 		bl	lrintf
 714 0154 D9ED017A 		vldr.32	s15, [r9, #4]
 715 0158 9DED0E0A 		vldr.32	s0, [sp, #56]
 716 015c 3860     		str	r0, [r7]
 717 015e 20EE270A 		vmul.f32	s0, s0, s15
 718 0162 FFF7FEFF 		bl	lrintf
 719 0166 D9ED027A 		vldr.32	s15, [r9, #8]
 720 016a 9DED0F0A 		vldr.32	s0, [sp, #60]
 721 016e 7860     		str	r0, [r7, #4]
 722 0170 20EE270A 		vmul.f32	s0, s0, s15
 723 0174 FFF7FEFF 		bl	lrintf
 724 0178 D9ED037A 		vldr.32	s15, [r9, #12]
 725 017c 9DED100A 		vldr.32	s0, [sp, #64]
 726 0180 B860     		str	r0, [r7, #8]
 727 0182 20EE270A 		vmul.f32	s0, s0, s15
 728 0186 FFF7FEFF 		bl	lrintf
 729 018a 99ED040A 		vldr.32	s0, [r9, #16]
 730 018e F860     		str	r0, [r7, #12]
 731 0190 2AEE000A 		vmul.f32	s0, s20, s0
 732 0194 FFF7FEFF 		bl	lrintf
 733 0198 0123     		movs	r3, #1
 734 019a 3861     		str	r0, [r7, #16]
 735 019c 19E0     		b	.L63
 736              	.L56:
 737 019e DFF84880 		ldr	r8, .L73+8
 738 01a2 3C1F     		subs	r4, r7, #4
 739 01a4 08AD     		add	r5, sp, #32
 740 01a6 1037     		adds	r7, r7, #16
 741              	.L64:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 14


 742 01a8 54F8040F 		ldr	r0, [r4, #4]!
 743 01ac 55F8046B 		ldr	r6, [r5], #4
 744 01b0 07EE900A 		vmov	s15, r0	@ int
 745 01b4 F8EEE77A 		vcvt.f32.s32	s15, s15
 746 01b8 17EE900A 		vmov	r0, s15
 747 01bc FFF7FEFF 		bl	__aeabi_f2d
 748 01c0 0246     		mov	r2, r0
 749 01c2 0B46     		mov	r3, r1
 750 01c4 4046     		mov	r0, r8
 751 01c6 3146     		mov	r1, r6
 752 01c8 FFF7FEFF 		bl	debugPrintf
 753 01cc A742     		cmp	r7, r4
 754 01ce EBD1     		bne	.L64
 755 01d0 0023     		movs	r3, #0
 756              	.L63:
 757 01d2 1846     		mov	r0, r3
 758 01d4 13B0     		add	sp, sp, #76
 759              		@ sp needed
 760 01d6 BDEC068B 		vldm	sp!, {d8-d10}
 761 01da BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 762              	.L74:
 763 01de 00BF     		.align	2
 764              	.L73:
 765 01e0 00000000 		.word	.LANCHOR0
 766 01e4 00C09243 		.word	1133690880
 767 01e8 00000000 		.word	.LC15
 768              		.size	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK21HangprinterKinematic
 769              		.section	.text._ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj,"ax",%progbits
 770              		.align	1
 771              		.p2align 2,,3
 772              		.global	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj
 773              		.syntax unified
 774              		.thumb
 775              		.thumb_func
 776              		.fpu fpv4-sp-d16
 777              		.type	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj, %function
 778              	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj:
 779              		@ args = 0, pretend = 0, frame = 0
 780              		@ frame_needed = 0, uses_anonymous_args = 0
 781 0000 10B5     		push	{r4, lr}
 782 0002 00EB8304 		add	r4, r0, r3, lsl #2
 783 0006 D4ED2A7A 		vldr.32	s15, [r4, #168]	@ int
 784 000a 9FED0F7A 		vldr.32	s14, .L77
 785 000e F8EE677A 		vcvt.f32.u32	s15, s15
 786 0012 27EE800A 		vmul.f32	s0, s15, s0
 787 0016 80EE070A 		vdiv.f32	s0, s0, s14
 788 001a FFF7FEFF 		bl	roundf
 789 001e BDEEC07A 		vcvt.s32.f32	s14, s0
 790 0022 D4ED2F5A 		vldr.32	s11, [r4, #188]
 791 0026 94ED116A 		vldr.32	s12, [r4, #68]
 792 002a 94ED340A 		vldr.32	s0, [r4, #208]
 793 002e D4ED396A 		vldr.32	s13, [r4, #228]
 794 0032 B8EEC77A 		vcvt.f32.s32	s14, s14
 795 0036 C7EE257A 		vdiv.f32	s15, s14, s11
 796 003a 77EE867A 		vadd.f32	s15, s15, s12
 797 003e 97EEA70A 		vfnms.f32	s0, s15, s15
 798 0042 80EE260A 		vdiv.f32	s0, s0, s13
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 15


 799 0046 10BD     		pop	{r4, pc}
 800              	.L78:
 801              		.align	2
 802              	.L77:
 803 0048 0000B443 		.word	1135869952
 804              		.size	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj, .-_ZN21HangprinterKinematics22Mot
 805              		.section	.text._ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef,"ax",%progbits
 806              		.align	1
 807              		.p2align 2,,3
 808              		.global	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef
 809              		.syntax unified
 810              		.thumb
 811              		.thumb_func
 812              		.fpu fpv4-sp-d16
 813              		.type	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef, %function
 814              	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef:
 815              		@ args = 4, pretend = 0, frame = 0
 816              		@ frame_needed = 0, uses_anonymous_args = 0
 817 0000 08B5     		push	{r3, lr}
 818 0002 0349     		ldr	r1, .L81
 819 0004 0298     		ldr	r0, [sp, #8]
 820 0006 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 821 000a 0020     		movs	r0, #0
 822 000c 08BD     		pop	{r3, pc}
 823              	.L82:
 824 000e 00BF     		.align	2
 825              	.L81:
 826 0010 00000000 		.word	.LC16
 827              		.size	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef, .-_ZNK21HangprinterKinematic
 828              		.section	.text._ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 829              		.align	1
 830              		.p2align 2,,3
 831              		.global	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf
 832              		.syntax unified
 833              		.thumb
 834              		.thumb_func
 835              		.fpu fpv4-sp-d16
 836              		.type	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 837              	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 838              		@ args = 0, pretend = 0, frame = 8
 839              		@ frame_needed = 0, uses_anonymous_args = 0
 840 0000 92ED010A 		vldr.32	s0, [r2, #4]
 841 0004 D2ED007A 		vldr.32	s15, [r2]
 842 0008 00B5     		push	{lr}
 843 000a 20EE000A 		vmul.f32	s0, s0, s0
 844 000e 2DED028B 		vpush.64	{d8}
 845 0012 A7EEA70A 		vfma.f32	s0, s15, s15
 846 0016 83B0     		sub	sp, sp, #12
 847 0018 B5EE400A 		vcmp.f32	s0, #0
 848 001c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 849 0020 B1EEC08A 		vsqrt.f32	s16, s0
 850 0024 39D4     		bmi	.L92
 851              	.L84:
 852 0026 DFED1F7A 		vldr.32	s15, .L93
 853 002a B4EEE78A 		vcmpe.f32	s16, s15
 854 002e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 855 0032 2DDD     		ble	.L90
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 16


 856 0034 1C4B     		ldr	r3, .L93+4
 857 0036 5B68     		ldr	r3, [r3, #4]	@ unaligned
 858 0038 93ED5F0A 		vldr.32	s0, [r3, #380]
 859 003c D3ED607A 		vldr.32	s15, [r3, #384]
 860 0040 B4EE400A 		vcmp.f32	s0, s0
 861 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 862 0048 06D6     		bvs	.L87
 863 004a B4EEE70A 		vcmpe.f32	s0, s15
 864 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 865 0052 58BF     		it	pl
 866 0054 B0EE670A 		vmovpl.f32	s0, s15
 867              	.L87:
 868 0058 D3ED6B0A 		vldr.32	s1, [r3, #428]
 869 005c D3ED6C7A 		vldr.32	s15, [r3, #432]
 870 0060 F4EE600A 		vcmp.f32	s1, s1
 871 0064 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 872 0068 06D6     		bvs	.L88
 873 006a F4EEE70A 		vcmpe.f32	s1, s15
 874 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 875 0072 58BF     		it	pl
 876 0074 F0EE670A 		vmovpl.f32	s1, s15
 877              	.L88:
 878 0078 C0EE880A 		vdiv.f32	s1, s1, s16
 879 007c 0846     		mov	r0, r1
 880 007e 80EE080A 		vdiv.f32	s0, s0, s16
 881 0082 03B0     		add	sp, sp, #12
 882              		@ sp needed
 883 0084 BDEC028B 		vldm	sp!, {d8}
 884 0088 5DF804EB 		ldr	lr, [sp], #4
 885 008c FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 886              	.L90:
 887 0090 03B0     		add	sp, sp, #12
 888              		@ sp needed
 889 0092 BDEC028B 		vldm	sp!, {d8}
 890 0096 5DF804FB 		ldr	pc, [sp], #4
 891              	.L92:
 892 009a 0191     		str	r1, [sp, #4]
 893 009c FFF7FEFF 		bl	sqrtf
 894 00a0 0199     		ldr	r1, [sp, #4]
 895 00a2 C0E7     		b	.L84
 896              	.L94:
 897              		.align	2
 898              	.L93:
 899 00a4 0AD7233C 		.word	1008981770
 900 00a8 00000000 		.word	reprap
 901              		.size	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK21HangprinterKinemati
 902              		.section	.text._ZN21HangprinterKinematicsD0Ev,"axG",%progbits,_ZN21HangprinterKinematicsD5Ev,comda
 903              		.align	1
 904              		.p2align 2,,3
 905              		.weak	_ZN21HangprinterKinematicsD0Ev
 906              		.syntax unified
 907              		.thumb
 908              		.thumb_func
 909              		.fpu fpv4-sp-d16
 910              		.type	_ZN21HangprinterKinematicsD0Ev, %function
 911              	_ZN21HangprinterKinematicsD0Ev:
 912              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 17


 913              		@ frame_needed = 0, uses_anonymous_args = 0
 914 0000 10B5     		push	{r4, lr}
 915 0002 4FF4AE71 		mov	r1, #348
 916 0006 0446     		mov	r4, r0
 917 0008 FFF7FEFF 		bl	_ZdlPvj
 918 000c 2046     		mov	r0, r4
 919 000e 10BD     		pop	{r4, pc}
 920              		.size	_ZN21HangprinterKinematicsD0Ev, .-_ZN21HangprinterKinematicsD0Ev
 921              		.section	.text._ZN11FixedMatrixIdLj32ELj3EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EED5Ev,c
 922              		.align	1
 923              		.p2align 2,,3
 924              		.weak	_ZN11FixedMatrixIdLj32ELj3EED0Ev
 925              		.syntax unified
 926              		.thumb
 927              		.thumb_func
 928              		.fpu fpv4-sp-d16
 929              		.type	_ZN11FixedMatrixIdLj32ELj3EED0Ev, %function
 930              	_ZN11FixedMatrixIdLj32ELj3EED0Ev:
 931              		@ args = 0, pretend = 0, frame = 0
 932              		@ frame_needed = 0, uses_anonymous_args = 0
 933 0000 10B5     		push	{r4, lr}
 934 0002 4FF44271 		mov	r1, #776
 935 0006 0446     		mov	r4, r0
 936 0008 FFF7FEFF 		bl	_ZdlPvj
 937 000c 2046     		mov	r0, r4
 938 000e 10BD     		pop	{r4, pc}
 939              		.size	_ZN11FixedMatrixIdLj32ELj3EED0Ev, .-_ZN11FixedMatrixIdLj32ELj3EED0Ev
 940              		.section	.text._ZN11FixedMatrixIdLj32ELj9EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EED5Ev,c
 941              		.align	1
 942              		.p2align 2,,3
 943              		.weak	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 944              		.syntax unified
 945              		.thumb
 946              		.thumb_func
 947              		.fpu fpv4-sp-d16
 948              		.type	_ZN11FixedMatrixIdLj32ELj9EED0Ev, %function
 949              	_ZN11FixedMatrixIdLj32ELj9EED0Ev:
 950              		@ args = 0, pretend = 0, frame = 0
 951              		@ frame_needed = 0, uses_anonymous_args = 0
 952 0000 10B5     		push	{r4, lr}
 953 0002 40F60811 		movw	r1, #2312
 954 0006 0446     		mov	r4, r0
 955 0008 FFF7FEFF 		bl	_ZdlPvj
 956 000c 2046     		mov	r0, r4
 957 000e 10BD     		pop	{r4, pc}
 958              		.size	_ZN11FixedMatrixIdLj32ELj9EED0Ev, .-_ZN11FixedMatrixIdLj32ELj9EED0Ev
 959              		.section	.text._ZN11FixedMatrixIdLj9ELj10EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EED5Ev,c
 960              		.align	1
 961              		.p2align 2,,3
 962              		.weak	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 963              		.syntax unified
 964              		.thumb
 965              		.thumb_func
 966              		.fpu fpv4-sp-d16
 967              		.type	_ZN11FixedMatrixIdLj9ELj10EED0Ev, %function
 968              	_ZN11FixedMatrixIdLj9ELj10EED0Ev:
 969              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 18


 970              		@ frame_needed = 0, uses_anonymous_args = 0
 971 0000 10B5     		push	{r4, lr}
 972 0002 4FF43671 		mov	r1, #728
 973 0006 0446     		mov	r4, r0
 974 0008 FFF7FEFF 		bl	_ZdlPvj
 975 000c 2046     		mov	r0, r4
 976 000e 10BD     		pop	{r4, pc}
 977              		.size	_ZN11FixedMatrixIdLj9ELj10EED0Ev, .-_ZN11FixedMatrixIdLj9ELj10EED0Ev
 978              		.section	.text._ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore,"ax",%progbits
 979              		.align	1
 980              		.p2align 2,,3
 981              		.global	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore
 982              		.syntax unified
 983              		.thumb
 984              		.thumb_func
 985              		.fpu fpv4-sp-d16
 986              		.type	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore, %function
 987              	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore:
 988              		@ args = 0, pretend = 0, frame = 0
 989              		@ frame_needed = 0, uses_anonymous_args = 0
 990              		@ link register save eliminated.
 991 0000 90F85821 		ldrb	r2, [r0, #344]	@ zero_extendqisi2
 992 0004 0AB9     		cbnz	r2, .L105
 993 0006 0120     		movs	r0, #1
 994 0008 7047     		bx	lr
 995              	.L105:
 996 000a 0368     		ldr	r3, [r0]
 997 000c DB69     		ldr	r3, [r3, #28]
 998 000e 1847     		bx	r3
 999              		.size	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore, .-_ZNK21HangprinterKinematics1
 1000              		.section	.text._ZNK21HangprinterKinematics13LimitPositionEPfjmb,"ax",%progbits
 1001              		.align	1
 1002              		.p2align 2,,3
 1003              		.global	_ZNK21HangprinterKinematics13LimitPositionEPfjmb
 1004              		.syntax unified
 1005              		.thumb
 1006              		.thumb_func
 1007              		.fpu fpv4-sp-d16
 1008              		.type	_ZNK21HangprinterKinematics13LimitPositionEPfjmb, %function
 1009              	_ZNK21HangprinterKinematics13LimitPositionEPfjmb:
 1010              		@ args = 4, pretend = 0, frame = 8
 1011              		@ frame_needed = 0, uses_anonymous_args = 0
 1012 0000 03F00703 		and	r3, r3, #7
 1013 0004 072B     		cmp	r3, #7
 1014 0006 01D0     		beq	.L126
 1015 0008 0020     		movs	r0, #0
 1016 000a 7047     		bx	lr
 1017              	.L126:
 1018 000c D1ED016A 		vldr.32	s13, [r1, #4]
 1019 0010 91ED007A 		vldr.32	s14, [r1]
 1020 0014 90ED436A 		vldr.32	s12, [r0, #268]
 1021 0018 00B5     		push	{lr}
 1022 001a 66EEA67A 		vmul.f32	s15, s13, s13
 1023 001e 2DED028B 		vpush.64	{d8}
 1024 0022 E7EE077A 		vfma.f32	s15, s14, s14
 1025 0026 83B0     		sub	sp, sp, #12
 1026 0028 F4EEC67A 		vcmpe.f32	s15, s12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 19


 1027 002c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1028 0030 1EDC     		bgt	.L127
 1029 0032 0020     		movs	r0, #0
 1030              	.L108:
 1031 0034 1C4B     		ldr	r3, .L129
 1032 0036 D1ED027A 		vldr.32	s15, [r1, #8]
 1033 003a 5B68     		ldr	r3, [r3, #4]
 1034 003c 03F5F962 		add	r2, r3, #1992
 1035 0040 92ED007A 		vldr.32	s14, [r2]
 1036 0044 F4EEC77A 		vcmpe.f32	s15, s14
 1037 0048 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1038 004c 08D4     		bmi	.L125
 1039 004e 03F2A473 		addw	r3, r3, #1956
 1040 0052 93ED007A 		vldr.32	s14, [r3]
 1041 0056 F4EEC77A 		vcmpe.f32	s15, s14
 1042 005a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1043 005e 02DD     		ble	.L107
 1044              	.L125:
 1045 0060 81ED027A 		vstr.32	s14, [r1, #8]
 1046 0064 0120     		movs	r0, #1
 1047              	.L107:
 1048 0066 03B0     		add	sp, sp, #12
 1049              		@ sp needed
 1050 0068 BDEC028B 		vldm	sp!, {d8}
 1051 006c 5DF804FB 		ldr	pc, [sp], #4
 1052              	.L127:
 1053 0070 86EE270A 		vdiv.f32	s0, s12, s15
 1054 0074 B5EE400A 		vcmp.f32	s0, #0
 1055 0078 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1056 007c B1EEC08A 		vsqrt.f32	s16, s0
 1057 0080 09D4     		bmi	.L128
 1058              	.L110:
 1059 0082 0120     		movs	r0, #1
 1060 0084 28EE077A 		vmul.f32	s14, s16, s14
 1061 0088 68EE266A 		vmul.f32	s13, s16, s13
 1062 008c 81ED007A 		vstr.32	s14, [r1]
 1063 0090 C1ED016A 		vstr.32	s13, [r1, #4]
 1064 0094 CEE7     		b	.L108
 1065              	.L128:
 1066 0096 0191     		str	r1, [sp, #4]
 1067 0098 FFF7FEFF 		bl	sqrtf
 1068 009c 0199     		ldr	r1, [sp, #4]
 1069 009e 91ED007A 		vldr.32	s14, [r1]
 1070 00a2 D1ED016A 		vldr.32	s13, [r1, #4]
 1071 00a6 ECE7     		b	.L110
 1072              	.L130:
 1073              		.align	2
 1074              	.L129:
 1075 00a8 00000000 		.word	reprap
 1076              		.size	_ZNK21HangprinterKinematics13LimitPositionEPfjmb, .-_ZNK21HangprinterKinematics13LimitPositi
 1077              		.section	.text._Z14elongationCalcf,"ax",%progbits
 1078              		.align	1
 1079              		.p2align 2,,3
 1080              		.global	_Z14elongationCalcf
 1081              		.syntax unified
 1082              		.thumb
 1083              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 20


 1084              		.fpu fpv4-sp-d16
 1085              		.type	_Z14elongationCalcf, %function
 1086              	_Z14elongationCalcf:
 1087              		@ args = 0, pretend = 0, frame = 0
 1088              		@ frame_needed = 0, uses_anonymous_args = 0
 1089              		@ link register save eliminated.
 1090 0000 DFED087A 		vldr.32	s15, .L132
 1091 0004 9FED086A 		vldr.32	s12, .L132+4
 1092 0008 DFED086A 		vldr.32	s13, .L132+8
 1093 000c 70EE277A 		vadd.f32	s15, s0, s15
 1094 0010 B0EE087A 		vmov.f32	s14, #3.0e+0
 1095 0014 27EE877A 		vmul.f32	s14, s15, s14
 1096 0018 87EE060A 		vdiv.f32	s0, s14, s12
 1097 001c A7EEA60A 		vfma.f32	s0, s15, s13
 1098 0020 7047     		bx	lr
 1099              	.L133:
 1100 0022 00BF     		.align	2
 1101              	.L132:
 1102 0024 3D52F244 		.word	1156731453
 1103 0028 E69E9A46 		.word	1184538342
 1104 002c 0AD7233B 		.word	992204554
 1105              		.size	_Z14elongationCalcf, .-_Z14elongationCalcf
 1106              		.section	.text._ZN21HangprinterKinematics6RecalcEv,"ax",%progbits
 1107              		.align	1
 1108              		.p2align 2,,3
 1109              		.global	_ZN21HangprinterKinematics6RecalcEv
 1110              		.syntax unified
 1111              		.thumb
 1112              		.thumb_func
 1113              		.fpu fpv4-sp-d16
 1114              		.type	_ZN21HangprinterKinematics6RecalcEv, %function
 1115              	_ZN21HangprinterKinematics6RecalcEv:
 1116              		@ args = 0, pretend = 0, frame = 8
 1117              		@ frame_needed = 0, uses_anonymous_args = 0
 1118 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1119 0004 D0ED045A 		vldr.32	s11, [r0, #16]
 1120 0008 90ED055A 		vldr.32	s10, [r0, #20]
 1121 000c D0ED0B4A 		vldr.32	s9, [r0, #44]
 1122 0010 90ED066A 		vldr.32	s12, [r0, #24]
 1123 0014 90ED0C2A 		vldr.32	s4, [r0, #48]
 1124 0018 90ED084A 		vldr.32	s8, [r0, #32]
 1125 001c D0ED0A3A 		vldr.32	s7, [r0, #40]
 1126 0020 D0ED092A 		vldr.32	s5, [r0, #36]
 1127 0024 836B     		ldr	r3, [r0, #56]	@ float
 1128 0026 2DED068B 		vpush.64	{d8, d9, d10}
 1129 002a 34EEC51A 		vsub.f32	s2, s9, s10
 1130 002e D0ED078A 		vldr.32	s17, [r0, #28]
 1131 0032 90ED0FAA 		vldr.32	s20, [r0, #60]
 1132 0036 80ED4C1A 		vstr.32	s2, [r0, #304]
 1133 003a 24EEE57A 		vnmul.f32	s14, s9, s11
 1134 003e 72EE461A 		vsub.f32	s3, s4, s12
 1135 0042 62EE456A 		vnmul.f32	s13, s4, s10
 1136 0046 A8EE817A 		vfma.f32	s14, s17, s2
 1137 004a A5B0     		sub	sp, sp, #148
 1138 004c 0446     		mov	r4, r0
 1139 004e E4EE216A 		vfma.f32	s13, s8, s3
 1140 0052 A5EE237A 		vfma.f32	s14, s10, s7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 21


 1141 0056 65EE827A 		vmul.f32	s15, s11, s4
 1142 005a E6EE246A 		vfma.f32	s13, s12, s9
 1143 005e 73EEE50A 		vsub.f32	s1, s7, s11
 1144 0062 E8EEA17A 		vfma.f32	s15, s17, s3
 1145 0066 B1EE623A 		vneg.f32	s6, s5
 1146 006a A4EE607A 		vfms.f32	s14, s8, s1
 1147 006e E3EE016A 		vfma.f32	s13, s6, s2
 1148 0072 E6EE237A 		vfma.f32	s15, s12, s7
 1149 0076 37EE077A 		vadd.f32	s14, s14, s14
 1150 007a 76EEA66A 		vadd.f32	s13, s13, s13
 1151 007e 27EE079A 		vmul.f32	s18, s14, s14
 1152 0082 E3EE207A 		vfma.f32	s15, s6, s1
 1153 0086 65EEA6AA 		vmul.f32	s21, s11, s13
 1154 008a 25EE050A 		vmul.f32	s0, s10, s10
 1155 008e B0EE498A 		vmov.f32	s16, s18
 1156 0092 64EEA49A 		vmul.f32	s19, s9, s9
 1157 0096 24EE043A 		vmul.f32	s6, s8, s8
 1158 009a A5EEA50A 		vfma.f32	s0, s11, s11
 1159 009e 6AEE87AA 		vmul.f32	s21, s21, s14
 1160 00a2 A6EEA68A 		vfma.f32	s16, s13, s13
 1161 00a6 F1EE677A 		vneg.f32	s15, s15
 1162 00aa 77EEA77A 		vadd.f32	s15, s15, s15
 1163 00ae E6EE09AA 		vfma.f32	s21, s12, s18
 1164 00b2 E3EEA39A 		vfma.f32	s19, s7, s7
 1165 00b6 A8EEA83A 		vfma.f32	s6, s17, s17
 1166 00ba A6EE060A 		vfma.f32	s0, s12, s12
 1167 00be 74EE644A 		vsub.f32	s9, s8, s9
 1168 00c2 A7EEA78A 		vfma.f32	s16, s15, s15
 1169 00c6 35EE444A 		vsub.f32	s8, s10, s8
 1170 00ca 25EE275A 		vmul.f32	s10, s10, s15
 1171 00ce A2EEA23A 		vfma.f32	s6, s5, s5
 1172 00d2 E2EE029A 		vfma.f32	s19, s4, s4
 1173 00d6 E7EE05AA 		vfma.f32	s21, s14, s10
 1174 00da 36EE626A 		vsub.f32	s12, s12, s5
 1175 00de 38EE088A 		vadd.f32	s16, s16, s16
 1176 00e2 2AEE0AAA 		vmul.f32	s20, s20, s20
 1177 00e6 78EEE33A 		vsub.f32	s7, s17, s7
 1178 00ea 75EEE85A 		vsub.f32	s11, s11, s17
 1179 00ee 72EEC22A 		vsub.f32	s5, s5, s4
 1180 00f2 B5EE400A 		vcmp.f32	s0, #0
 1181 00f6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1182 00fa 80ED558A 		vstr.32	s16, [r0, #340]
 1183 00fe 80ED43AA 		vstr.32	s20, [r0, #268]
 1184 0102 C0ED469A 		vstr.32	s19, [r0, #280]
 1185 0106 C0ED475A 		vstr.32	s11, [r0, #284]
 1186 010a C0ED483A 		vstr.32	s7, [r0, #288]
 1187 010e 80ED4A4A 		vstr.32	s8, [r0, #296]
 1188 0112 C0ED4B4A 		vstr.32	s9, [r0, #300]
 1189 0116 80ED4D6A 		vstr.32	s12, [r0, #308]
 1190 011a C0ED4E2A 		vstr.32	s5, [r0, #312]
 1191 011e 80ED507A 		vstr.32	s14, [r0, #320]
 1192 0122 C0ED490A 		vstr.32	s1, [r0, #292]
 1193 0126 80ED539A 		vstr.32	s18, [r0, #332]
 1194 012a C0ED4F1A 		vstr.32	s3, [r0, #316]
 1195 012e C0ED527A 		vstr.32	s15, [r0, #328]
 1196 0132 C0ED516A 		vstr.32	s13, [r0, #324]
 1197 0136 80ED453A 		vstr.32	s6, [r0, #276]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 22


 1198 013a C0ED54AA 		vstr.32	s21, [r0, #336]
 1199 013e 80ED440A 		vstr.32	s0, [r0, #272]
 1200 0142 B1EEC08A 		vsqrt.f32	s16, s0
 1201 0146 C0F80831 		str	r3, [r0, #264]	@ float
 1202 014a 00F12981 		bmi	.L148
 1203              	.L135:
 1204 014e B5EE403A 		vcmp.f32	s6, #0
 1205 0152 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1206 0156 84ED3E8A 		vstr.32	s16, [r4, #248]
 1207 015a B1EEC38A 		vsqrt.f32	s16, s6
 1208 015e 00F13381 		bmi	.L149
 1209              	.L136:
 1210 0162 94ED0B0A 		vldr.32	s0, [r4, #44]
 1211 0166 94ED0A7A 		vldr.32	s14, [r4, #40]
 1212 016a D4ED0C7A 		vldr.32	s15, [r4, #48]
 1213 016e 84ED3F8A 		vstr.32	s16, [r4, #252]
 1214 0172 20EE000A 		vmul.f32	s0, s0, s0
 1215 0176 A7EE070A 		vfma.f32	s0, s14, s14
 1216 017a A7EEA70A 		vfma.f32	s0, s15, s15
 1217 017e B5EE400A 		vcmp.f32	s0, #0
 1218 0182 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1219 0186 B1EEC08A 		vsqrt.f32	s16, s0
 1220 018a 00F11A81 		bmi	.L150
 1221              	.L137:
 1222 018e 636B     		ldr	r3, [r4, #52]	@ float
 1223 0190 904F     		ldr	r7, .L151
 1224 0192 C4F80431 		str	r3, [r4, #260]	@ float
 1225 0196 04F1F805 		add	r5, r4, #248
 1226 019a 04F58676 		add	r6, r4, #268
 1227 019e 84ED408A 		vstr.32	s16, [r4, #256]
 1228              	.L138:
 1229 01a2 55F8040B 		ldr	r0, [r5], #4	@ float
 1230 01a6 FFF7FEFF 		bl	__aeabi_f2d
 1231 01aa 0246     		mov	r2, r0
 1232 01ac 0B46     		mov	r3, r1
 1233 01ae 3846     		mov	r0, r7
 1234 01b0 FFF7FEFF 		bl	debugPrintf
 1235 01b4 AE42     		cmp	r6, r5
 1236 01b6 F4D1     		bne	.L138
 1237 01b8 874B     		ldr	r3, .L151+4
 1238 01ba DFED888A 		vldr.32	s17, .L151+8
 1239 01be D3F80480 		ldr	r8, [r3, #4]
 1240 01c2 04F14405 		add	r5, r4, #68
 1241 01c6 4746     		mov	r7, r8
 1242 01c8 08F5EE76 		add	r6, r8, #476
 1243 01cc 08F5F879 		add	r9, r8, #496
 1244 01d0 B7EE009A 		vmov.f32	s18, #1.0e+0
 1245              	.L141:
 1246 01d4 D5ED057A 		vldr.32	s15, [r5, #20]	@ int
 1247 01d8 97F83013 		ldrb	r1, [r7, #816]	@ zero_extendqisi2
 1248 01dc F8EE676A 		vcvt.f32.u32	s13, s15
 1249 01e0 D5ED197A 		vldr.32	s15, [r5, #100]	@ int
 1250 01e4 B8EE678A 		vcvt.f32.u32	s16, s15
 1251 01e8 0DF18F02 		add	r2, sp, #143
 1252 01ec 4046     		mov	r0, r8
 1253 01ee 26EE888A 		vmul.f32	s16, s13, s16
 1254 01f2 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 23


 1255 01f6 07EE900A 		vmov	s15, r0	@ int
 1256 01fa F8EE676A 		vcvt.f32.u32	s13, s15
 1257 01fe D5ED147A 		vldr.32	s15, [r5, #80]	@ int
 1258 0202 6A69     		ldr	r2, [r5, #20]
 1259 0204 AB6A     		ldr	r3, [r5, #40]
 1260 0206 D4ED105A 		vldr.32	s11, [r4, #64]
 1261 020a B8EE676A 		vcvt.f32.u32	s12, s15
 1262 020e D5ED0F7A 		vldr.32	s15, [r5, #60]	@ int
 1263 0212 66EE886A 		vmul.f32	s13, s13, s16
 1264 0216 B8EE677A 		vcvt.f32.u32	s14, s15
 1265 021a 66EE866A 		vmul.f32	s13, s13, s12
 1266 021e 27EE287A 		vmul.f32	s14, s14, s17
 1267 0222 03FB02F3 		mul	r3, r3, r2
 1268 0226 86EE876A 		vdiv.f32	s12, s13, s14
 1269 022a 0C37     		adds	r7, r7, #12
 1270 022c 07EE903A 		vmov	s15, r3	@ int
 1271 0230 F8EE677A 		vcvt.f32.u32	s15, s15
 1272 0234 76EE066A 		vadd.f32	s13, s12, s12
 1273 0238 67EEE57A 		vnmul.f32	s15, s15, s11
 1274 023c 86EEA77A 		vdiv.f32	s14, s13, s15
 1275 0240 C5ED287A 		vstr.32	s15, [r5, #160]
 1276 0244 85ED1E7A 		vstr.32	s14, [r5, #120]
 1277 0248 B5EC017A 		vldmia.32	r5!, {s14}
 1278 024c C6EE077A 		vdiv.f32	s15, s12, s14
 1279 0250 27EE077A 		vmul.f32	s14, s14, s14
 1280 0254 F4EE677A 		vcmp.f32	s15, s15
 1281 0258 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1282 025c 85ED227A 		vstr.32	s14, [r5, #136]
 1283 0260 06D6     		bvs	.L139
 1284 0262 F4EEC97A 		vcmpe.f32	s15, s18
 1285 0266 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1286 026a D8BF     		it	le
 1287 026c F0EE497A 		vmovle.f32	s15, s18
 1288              	.L139:
 1289 0270 E6EC017A 		vstmia.32	r6!, {s15}
 1290 0274 4E45     		cmp	r6, r9
 1291 0276 ADD1     		bne	.L141
 1292 0278 DFF86891 		ldr	r9, .L151+16
 1293 027c DFF86881 		ldr	r8, .L151+20
 1294 0280 04F1BC05 		add	r5, r4, #188
 1295 0284 04F1E406 		add	r6, r4, #228
 1296 0288 04F1D007 		add	r7, r4, #208
 1297              	.L142:
 1298 028c 56F8040B 		ldr	r0, [r6], #4	@ float
 1299 0290 FFF7FEFF 		bl	__aeabi_f2d
 1300 0294 0246     		mov	r2, r0
 1301 0296 0B46     		mov	r3, r1
 1302 0298 4846     		mov	r0, r9
 1303 029a FFF7FEFF 		bl	debugPrintf
 1304 029e 55F8040B 		ldr	r0, [r5], #4	@ float
 1305 02a2 FFF7FEFF 		bl	__aeabi_f2d
 1306 02a6 0246     		mov	r2, r0
 1307 02a8 0B46     		mov	r3, r1
 1308 02aa 4046     		mov	r0, r8
 1309 02ac FFF7FEFF 		bl	debugPrintf
 1310 02b0 AF42     		cmp	r7, r5
 1311 02b2 EBD1     		bne	.L142
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 24


 1312 02b4 D4F81001 		ldr	r0, [r4, #272]	@ float
 1313 02b8 FFF7FEFF 		bl	__aeabi_f2d
 1314 02bc 0646     		mov	r6, r0
 1315 02be D4F85401 		ldr	r0, [r4, #340]	@ float
 1316 02c2 0F46     		mov	r7, r1
 1317 02c4 FFF7FEFF 		bl	__aeabi_f2d
 1318 02c8 CDE92001 		strd	r0, [sp, #128]
 1319 02cc D4F85001 		ldr	r0, [r4, #336]	@ float
 1320 02d0 FFF7FEFF 		bl	__aeabi_f2d
 1321 02d4 CDE91E01 		strd	r0, [sp, #120]
 1322 02d8 D4F84801 		ldr	r0, [r4, #328]	@ float
 1323 02dc FFF7FEFF 		bl	__aeabi_f2d
 1324 02e0 CDE91C01 		strd	r0, [sp, #112]
 1325 02e4 D4F84401 		ldr	r0, [r4, #324]	@ float
 1326 02e8 FFF7FEFF 		bl	__aeabi_f2d
 1327 02ec CDE91A01 		strd	r0, [sp, #104]
 1328 02f0 D4F84C01 		ldr	r0, [r4, #332]	@ float
 1329 02f4 FFF7FEFF 		bl	__aeabi_f2d
 1330 02f8 CDE91801 		strd	r0, [sp, #96]
 1331 02fc D4F84001 		ldr	r0, [r4, #320]	@ float
 1332 0300 FFF7FEFF 		bl	__aeabi_f2d
 1333 0304 CDE91601 		strd	r0, [sp, #88]
 1334 0308 D4F83C01 		ldr	r0, [r4, #316]	@ float
 1335 030c FFF7FEFF 		bl	__aeabi_f2d
 1336 0310 CDE91401 		strd	r0, [sp, #80]
 1337 0314 D4F83801 		ldr	r0, [r4, #312]	@ float
 1338 0318 FFF7FEFF 		bl	__aeabi_f2d
 1339 031c CDE91201 		strd	r0, [sp, #72]
 1340 0320 D4F83401 		ldr	r0, [r4, #308]	@ float
 1341 0324 FFF7FEFF 		bl	__aeabi_f2d
 1342 0328 CDE91001 		strd	r0, [sp, #64]
 1343 032c D4F83001 		ldr	r0, [r4, #304]	@ float
 1344 0330 FFF7FEFF 		bl	__aeabi_f2d
 1345 0334 CDE90E01 		strd	r0, [sp, #56]
 1346 0338 D4F82C01 		ldr	r0, [r4, #300]	@ float
 1347 033c FFF7FEFF 		bl	__aeabi_f2d
 1348 0340 CDE90C01 		strd	r0, [sp, #48]
 1349 0344 D4F82801 		ldr	r0, [r4, #296]	@ float
 1350 0348 FFF7FEFF 		bl	__aeabi_f2d
 1351 034c CDE90A01 		strd	r0, [sp, #40]
 1352 0350 D4F82401 		ldr	r0, [r4, #292]	@ float
 1353 0354 FFF7FEFF 		bl	__aeabi_f2d
 1354 0358 CDE90801 		strd	r0, [sp, #32]
 1355 035c D4F82001 		ldr	r0, [r4, #288]	@ float
 1356 0360 FFF7FEFF 		bl	__aeabi_f2d
 1357 0364 CDE90601 		strd	r0, [sp, #24]
 1358 0368 D4F81C01 		ldr	r0, [r4, #284]	@ float
 1359 036c FFF7FEFF 		bl	__aeabi_f2d
 1360 0370 CDE90401 		strd	r0, [sp, #16]
 1361 0374 D4F81801 		ldr	r0, [r4, #280]	@ float
 1362 0378 FFF7FEFF 		bl	__aeabi_f2d
 1363 037c CDE90201 		strd	r0, [sp, #8]
 1364 0380 D4F81401 		ldr	r0, [r4, #276]	@ float
 1365 0384 FFF7FEFF 		bl	__aeabi_f2d
 1366 0388 3246     		mov	r2, r6
 1367 038a CDE90001 		strd	r0, [sp]
 1368 038e 3B46     		mov	r3, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 25


 1369 0390 1348     		ldr	r0, .L151+12
 1370 0392 FFF7FEFF 		bl	debugPrintf
 1371 0396 25B0     		add	sp, sp, #148
 1372              		@ sp needed
 1373 0398 BDEC068B 		vldm	sp!, {d8-d10}
 1374 039c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1375              	.L148:
 1376 03a0 FFF7FEFF 		bl	sqrtf
 1377 03a4 D4ED087A 		vldr.32	s15, [r4, #32]
 1378 03a8 D4ED076A 		vldr.32	s13, [r4, #28]
 1379 03ac 94ED097A 		vldr.32	s14, [r4, #36]
 1380 03b0 67EEA77A 		vmul.f32	s15, s15, s15
 1381 03b4 E6EEA67A 		vfma.f32	s15, s13, s13
 1382 03b8 B0EE673A 		vmov.f32	s6, s15
 1383 03bc A7EE073A 		vfma.f32	s6, s14, s14
 1384 03c0 C5E6     		b	.L135
 1385              	.L150:
 1386 03c2 FFF7FEFF 		bl	sqrtf
 1387 03c6 E2E6     		b	.L137
 1388              	.L149:
 1389 03c8 B0EE430A 		vmov.f32	s0, s6
 1390 03cc FFF7FEFF 		bl	sqrtf
 1391 03d0 C7E6     		b	.L136
 1392              	.L152:
 1393 03d2 00BF     		.align	2
 1394              	.L151:
 1395 03d4 00000000 		.word	.LC17
 1396 03d8 00000000 		.word	reprap
 1397 03dc DB0FC940 		.word	1086918619
 1398 03e0 54000000 		.word	.LC20
 1399 03e4 24000000 		.word	.LC18
 1400 03e8 3C000000 		.word	.LC19
 1401              		.size	_ZN21HangprinterKinematics6RecalcEv, .-_ZN21HangprinterKinematics6RecalcEv
 1402              		.section	.text._ZN21HangprinterKinematics4InitEv,"ax",%progbits
 1403              		.align	1
 1404              		.p2align 2,,3
 1405              		.global	_ZN21HangprinterKinematics4InitEv
 1406              		.syntax unified
 1407              		.thumb
 1408              		.thumb_func
 1409              		.fpu fpv4-sp-d16
 1410              		.type	_ZN21HangprinterKinematics4InitEv, %function
 1411              	_ZN21HangprinterKinematics4InitEv:
 1412              		@ args = 0, pretend = 0, frame = 128
 1413              		@ frame_needed = 0, uses_anonymous_args = 0
 1414 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1415 0004 554D     		ldr	r5, .L158
 1416 0006 DFF87C91 		ldr	r9, .L158+40
 1417 000a 0446     		mov	r4, r0
 1418 000c 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1419 000e 2E46     		mov	r6, r5
 1420 0010 A1B0     		sub	sp, sp, #132
 1421 0012 56F804BB 		ldr	fp, [r6], #4
 1422 0016 0DF1080E 		add	lr, sp, #8
 1423 001a AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 1424 001e 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1425 0020 05F11808 		add	r8, r5, #24
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 26


 1426 0024 0DF11C0C 		add	ip, sp, #28
 1427 0028 ACE80F00 		stmia	ip!, {r0, r1, r2, r3}
 1428 002c B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 1429 0030 0CAF     		add	r7, sp, #48
 1430 0032 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 1431 0034 D6F800A0 		ldr	r10, [r6]
 1432 0038 D8F80030 		ldr	r3, [r8]
 1433 003c CEF800B0 		str	fp, [lr]
 1434 0040 05F12C08 		add	r8, r5, #44
 1435 0044 CCF800A0 		str	r10, [ip]
 1436 0048 3B60     		str	r3, [r7]
 1437 004a 0193     		str	r3, [sp, #4]
 1438 004c B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 1439 0050 05F1400E 		add	lr, r5, #64
 1440 0054 0DF1440C 		add	ip, sp, #68
 1441 0058 ACE80F00 		stmia	ip!, {r0, r1, r2, r3}
 1442 005c BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 1443 0060 5435     		adds	r5, r5, #84
 1444 0062 16AF     		add	r7, sp, #88
 1445 0064 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 1446 0066 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1447 0068 1BAE     		add	r6, sp, #108
 1448 006a 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 1449 006c B9E80700 		ldmia	r9!, {r0, r1, r2}
 1450 0070 3B4B     		ldr	r3, .L158+4
 1451 0072 D8F80080 		ldr	r8, [r8]
 1452 0076 DEF800E0 		ldr	lr, [lr]
 1453 007a 2D68     		ldr	r5, [r5]
 1454 007c C7F800E0 		str	lr, [r7]
 1455 0080 CCF80080 		str	r8, [ip]
 1456 0084 3560     		str	r5, [r6]
 1457 0086 2061     		str	r0, [r4, #16]	@ unaligned
 1458 0088 6161     		str	r1, [r4, #20]	@ unaligned
 1459 008a A261     		str	r2, [r4, #24]	@ unaligned
 1460 008c 07CB     		ldmia	r3!, {r0, r1, r2}
 1461 008e 354B     		ldr	r3, .L158+8
 1462 0090 E061     		str	r0, [r4, #28]	@ unaligned
 1463 0092 2162     		str	r1, [r4, #32]	@ unaligned
 1464 0094 6262     		str	r2, [r4, #36]	@ unaligned
 1465 0096 07CB     		ldmia	r3!, {r0, r1, r2}
 1466 0098 02AE     		add	r6, sp, #8
 1467 009a A062     		str	r0, [r4, #40]	@ unaligned
 1468 009c E162     		str	r1, [r4, #44]	@ unaligned
 1469 009e 2263     		str	r2, [r4, #48]	@ unaligned
 1470 00a0 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1471 00a2 314E     		ldr	r6, .L158+12
 1472 00a4 A663     		str	r6, [r4, #56]	@ float
 1473 00a6 314E     		ldr	r6, .L158+16
 1474 00a8 2664     		str	r6, [r4, #64]	@ float
 1475 00aa 07AE     		add	r6, sp, #28
 1476 00ac 6064     		str	r0, [r4, #68]	@ unaligned
 1477 00ae A164     		str	r1, [r4, #72]	@ unaligned
 1478 00b0 E264     		str	r2, [r4, #76]	@ unaligned
 1479 00b2 2365     		str	r3, [r4, #80]	@ unaligned
 1480 00b4 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1481 00b6 2E4F     		ldr	r7, .L158+20
 1482 00b8 6763     		str	r7, [r4, #52]	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 27


 1483 00ba 0CAE     		add	r6, sp, #48
 1484 00bc 2D4F     		ldr	r7, .L158+24
 1485 00be E763     		str	r7, [r4, #60]	@ float
 1486 00c0 C4F854B0 		str	fp, [r4, #84]	@ unaligned
 1487 00c4 A065     		str	r0, [r4, #88]	@ unaligned
 1488 00c6 E165     		str	r1, [r4, #92]	@ unaligned
 1489 00c8 2266     		str	r2, [r4, #96]	@ unaligned
 1490 00ca 6366     		str	r3, [r4, #100]	@ unaligned
 1491 00cc 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1492 00ce 11AE     		add	r6, sp, #68
 1493 00d0 E066     		str	r0, [r4, #108]	@ unaligned
 1494 00d2 2167     		str	r1, [r4, #112]	@ unaligned
 1495 00d4 6267     		str	r2, [r4, #116]	@ unaligned
 1496 00d6 A367     		str	r3, [r4, #120]	@ unaligned
 1497 00d8 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1498 00da 16AE     		add	r6, sp, #88
 1499 00dc C4F88000 		str	r0, [r4, #128]	@ unaligned
 1500 00e0 C4F88410 		str	r1, [r4, #132]	@ unaligned
 1501 00e4 C4F88820 		str	r2, [r4, #136]	@ unaligned
 1502 00e8 C4F88C30 		str	r3, [r4, #140]	@ unaligned
 1503 00ec 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1504 00ee 019F     		ldr	r7, [sp, #4]
 1505 00f0 C4F868A0 		str	r10, [r4, #104]	@ unaligned
 1506 00f4 1BAE     		add	r6, sp, #108
 1507 00f6 E767     		str	r7, [r4, #124]	@ unaligned
 1508 00f8 C4F89080 		str	r8, [r4, #144]	@ unaligned
 1509 00fc C4F89400 		str	r0, [r4, #148]	@ unaligned
 1510 0100 C4F8A4E0 		str	lr, [r4, #164]	@ unaligned
 1511 0104 C4F89810 		str	r1, [r4, #152]	@ unaligned
 1512 0108 C4F89C20 		str	r2, [r4, #156]	@ unaligned
 1513 010c C4F8A030 		str	r3, [r4, #160]	@ unaligned
 1514 0110 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1515 0112 C4F8B430 		str	r3, [r4, #180]	@ unaligned
 1516 0116 2368     		ldr	r3, [r4]
 1517 0118 C4F8B850 		str	r5, [r4, #184]	@ unaligned
 1518 011c C4F8AC10 		str	r1, [r4, #172]	@ unaligned
 1519 0120 C4F8B020 		str	r2, [r4, #176]	@ unaligned
 1520 0124 C4F8A800 		str	r0, [r4, #168]	@ unaligned
 1521 0128 1349     		ldr	r1, .L158+28
 1522 012a 1B6C     		ldr	r3, [r3, #64]
 1523 012c 134A     		ldr	r2, .L158+32
 1524 012e 4D69     		ldr	r5, [r1, #20]
 1525 0130 9342     		cmp	r3, r2
 1526 0132 4FF00001 		mov	r1, #0
 1527 0136 84F85811 		strb	r1, [r4, #344]
 1528 013a 0AD1     		bne	.L157
 1529 013c 1049     		ldr	r1, .L158+36
 1530              	.L154:
 1531 013e 2846     		mov	r0, r5
 1532 0140 0522     		movs	r2, #5
 1533 0142 FFF7FEFF 		bl	_ZN6GCodes21SetMachineAxisLettersEPKch
 1534 0146 2046     		mov	r0, r4
 1535 0148 21B0     		add	sp, sp, #132
 1536              		@ sp needed
 1537 014a BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1538 014e FFF7FEBF 		b	_ZN21HangprinterKinematics6RecalcEv
 1539              	.L157:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 28


 1540 0152 2046     		mov	r0, r4
 1541 0154 9847     		blx	r3
 1542 0156 0146     		mov	r1, r0
 1543 0158 F1E7     		b	.L154
 1544              	.L159:
 1545 015a 00BF     		.align	2
 1546              	.L158:
 1547 015c 14000000 		.word	.LANCHOR0+20
 1548 0160 00000000 		.word	.LANCHOR2
 1549 0164 00000000 		.word	.LANCHOR3
 1550 0168 9AF97945 		.word	1165621658
 1551 016c 17B7D138 		.word	953267991
 1552 0170 9AA16745 		.word	1164419482
 1553 0174 0000FA43 		.word	1140457472
 1554 0178 00000000 		.word	reprap
 1555 017c 00000000 		.word	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 1556 0180 00000000 		.word	.LC12
 1557 0184 00000000 		.word	.LANCHOR1
 1558              		.size	_ZN21HangprinterKinematics4InitEv, .-_ZN21HangprinterKinematics4InitEv
 1559              		.section	.text._ZN21HangprinterKinematicsC2Ev,"ax",%progbits
 1560              		.align	1
 1561              		.p2align 2,,3
 1562              		.global	_ZN21HangprinterKinematicsC2Ev
 1563              		.syntax unified
 1564              		.thumb
 1565              		.thumb_func
 1566              		.fpu fpv4-sp-d16
 1567              		.type	_ZN21HangprinterKinematicsC2Ev, %function
 1568              	_ZN21HangprinterKinematicsC2Ev:
 1569              		@ args = 0, pretend = 0, frame = 0
 1570              		@ frame_needed = 0, uses_anonymous_args = 0
 1571 0000 10B5     		push	{r4, lr}
 1572 0002 0022     		movs	r2, #0
 1573 0004 0446     		mov	r4, r0
 1574 0006 DFED070A 		vldr.32	s1, .L162
 1575 000a 9FED070A 		vldr.32	s0, .L162+4
 1576 000e 0621     		movs	r1, #6
 1577 0010 0123     		movs	r3, #1
 1578 0012 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffbb
 1579 0016 054B     		ldr	r3, .L162+8
 1580 0018 2360     		str	r3, [r4]
 1581 001a 2046     		mov	r0, r4
 1582 001c FFF7FEFF 		bl	_ZN21HangprinterKinematics4InitEv
 1583 0020 2046     		mov	r0, r4
 1584 0022 10BD     		pop	{r4, pc}
 1585              	.L163:
 1586              		.align	2
 1587              	.L162:
 1588 0024 CDCC4C3E 		.word	1045220557
 1589 0028 0000C842 		.word	1120403456
 1590 002c 08000000 		.word	.LANCHOR4+8
 1591              		.size	_ZN21HangprinterKinematicsC2Ev, .-_ZN21HangprinterKinematicsC2Ev
 1592              		.global	_ZN21HangprinterKinematicsC1Ev
 1593              		.thumb_set _ZN21HangprinterKinematicsC1Ev,_ZN21HangprinterKinematicsC2Ev
 1594              		.section	.text._ZN21HangprinterKinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN21Hangprint
 1595              		.align	1
 1596              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 29


 1597              		.weak	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv
 1598              		.syntax unified
 1599              		.thumb
 1600              		.thumb_func
 1601              		.fpu fpv4-sp-d16
 1602              		.type	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv, %function
 1603              	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv:
 1604              		@ args = 0, pretend = 0, frame = 0
 1605              		@ frame_needed = 0, uses_anonymous_args = 0
 1606              		@ link register save eliminated.
 1607 0000 FFF7FEBF 		b	_ZN21HangprinterKinematics4InitEv
 1608              		.size	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv, .-_ZN21HangprinterKinematics22SetCalib
 1609              		.section	.text._ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 1610              		.align	1
 1611              		.p2align 2,,3
 1612              		.global	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1613              		.syntax unified
 1614              		.thumb
 1615              		.thumb_func
 1616              		.fpu fpv4-sp-d16
 1617              		.type	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 1618              	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 1619              		@ args = 4, pretend = 0, frame = 8
 1620              		@ frame_needed = 0, uses_anonymous_args = 0
 1621 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1622 0004 40F29D2C 		movw	ip, #669
 1623 0008 BAB0     		sub	sp, sp, #232
 1624 000a 0025     		movs	r5, #0
 1625 000c 6145     		cmp	r1, ip
 1626 000e 8DF8E650 		strb	r5, [sp, #230]
 1627 0012 0646     		mov	r6, r0
 1628 0014 1746     		mov	r7, r2
 1629 0016 9846     		mov	r8, r3
 1630 0018 27D0     		beq	.L182
 1631 001a 40F29A2C 		movw	ip, #666
 1632 001e 6145     		cmp	r1, ip
 1633 0020 06D0     		beq	.L183
 1634 0022 409C     		ldr	r4, [sp, #256]
 1635 0024 0094     		str	r4, [sp]
 1636 0026 FFF7FEFF 		bl	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1637              	.L165:
 1638 002a 3AB0     		add	sp, sp, #232
 1639              		@ sp needed
 1640 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1641              	.L183:
 1642 0030 0DF1E604 		add	r4, sp, #230
 1643 0034 00F14002 		add	r2, r0, #64
 1644 0038 2346     		mov	r3, r4
 1645 003a 5121     		movs	r1, #81
 1646 003c 3846     		mov	r0, r7
 1647 003e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1648 0042 CDE90145 		strd	r4, r5, [sp, #4]
 1649 0046 CDF80080 		str	r8, [sp]
 1650 004a 06F14403 		add	r3, r6, #68
 1651 004e 0522     		movs	r2, #5
 1652 0050 5221     		movs	r1, #82
 1653 0052 3846     		mov	r0, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 30


 1654 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1655 0058 0028     		cmp	r0, #0
 1656 005a 00F0C080 		beq	.L176
 1657              	.L177:
 1658 005e 409B     		ldr	r3, [sp, #256]
 1659 0060 0120     		movs	r0, #1
 1660 0062 1870     		strb	r0, [r3]
 1661 0064 3AB0     		add	sp, sp, #232
 1662              		@ sp needed
 1663 0066 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1664              	.L182:
 1665 006a 3AAC     		add	r4, sp, #232
 1666 006c 021D     		adds	r2, r0, #4
 1667 006e 04F8015D 		strb	r5, [r4, #-1]!
 1668 0072 5321     		movs	r1, #83
 1669 0074 2346     		mov	r3, r4
 1670 0076 3846     		mov	r0, r7
 1671 0078 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1672 007c 2346     		mov	r3, r4
 1673 007e 06F10802 		add	r2, r6, #8
 1674 0082 5421     		movs	r1, #84
 1675 0084 3846     		mov	r0, r7
 1676 0086 0DF1E604 		add	r4, sp, #230
 1677 008a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1678 008e 0295     		str	r5, [sp, #8]
 1679 0090 CDE90084 		strd	r8, r4, [sp]
 1680 0094 06F11003 		add	r3, r6, #16
 1681 0098 0322     		movs	r2, #3
 1682 009a 4121     		movs	r1, #65
 1683 009c 3846     		mov	r0, r7
 1684 009e FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1685 00a2 0028     		cmp	r0, #0
 1686 00a4 DBD1     		bne	.L177
 1687 00a6 CDE90140 		strd	r4, r0, [sp, #4]
 1688 00aa CDF80080 		str	r8, [sp]
 1689 00ae 06F11C03 		add	r3, r6, #28
 1690 00b2 0322     		movs	r2, #3
 1691 00b4 4221     		movs	r1, #66
 1692 00b6 3846     		mov	r0, r7
 1693 00b8 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1694 00bc 0028     		cmp	r0, #0
 1695 00be CED1     		bne	.L177
 1696 00c0 CDE90140 		strd	r4, r0, [sp, #4]
 1697 00c4 CDF80080 		str	r8, [sp]
 1698 00c8 06F12803 		add	r3, r6, #40
 1699 00cc 0322     		movs	r2, #3
 1700 00ce 4321     		movs	r1, #67
 1701 00d0 3846     		mov	r0, r7
 1702 00d2 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1703 00d6 0546     		mov	r5, r0
 1704 00d8 0028     		cmp	r0, #0
 1705 00da C0D1     		bne	.L177
 1706 00dc 2346     		mov	r3, r4
 1707 00de 06F13402 		add	r2, r6, #52
 1708 00e2 4421     		movs	r1, #68
 1709 00e4 3846     		mov	r0, r7
 1710 00e6 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 31


 1711 00ea 2346     		mov	r3, r4
 1712 00ec 06F13802 		add	r2, r6, #56
 1713 00f0 5621     		movs	r1, #86
 1714 00f2 3846     		mov	r0, r7
 1715 00f4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1716 00f8 2346     		mov	r3, r4
 1717 00fa 06F14002 		add	r2, r6, #64
 1718 00fe 5121     		movs	r1, #81
 1719 0100 3846     		mov	r0, r7
 1720 0102 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1721 0106 CDE90145 		strd	r4, r5, [sp, #4]
 1722 010a CDF80080 		str	r8, [sp]
 1723 010e 06F14403 		add	r3, r6, #68
 1724 0112 0522     		movs	r2, #5
 1725 0114 5221     		movs	r1, #82
 1726 0116 3846     		mov	r0, r7
 1727 0118 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1728 011c 0028     		cmp	r0, #0
 1729 011e 9ED1     		bne	.L177
 1730 0120 CDE90140 		strd	r4, r0, [sp, #4]
 1731 0124 CDF80080 		str	r8, [sp]
 1732 0128 06F15803 		add	r3, r6, #88
 1733 012c 0522     		movs	r2, #5
 1734 012e 5521     		movs	r1, #85
 1735 0130 3846     		mov	r0, r7
 1736 0132 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1737 0136 0028     		cmp	r0, #0
 1738 0138 91D1     		bne	.L177
 1739 013a CDE90140 		strd	r4, r0, [sp, #4]
 1740 013e CDF80080 		str	r8, [sp]
 1741 0142 06F16C03 		add	r3, r6, #108
 1742 0146 0522     		movs	r2, #5
 1743 0148 4F21     		movs	r1, #79
 1744 014a 3846     		mov	r0, r7
 1745 014c FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1746 0150 0028     		cmp	r0, #0
 1747 0152 84D1     		bne	.L177
 1748 0154 CDE90140 		strd	r4, r0, [sp, #4]
 1749 0158 CDF80080 		str	r8, [sp]
 1750 015c 06F18003 		add	r3, r6, #128
 1751 0160 0522     		movs	r2, #5
 1752 0162 4C21     		movs	r1, #76
 1753 0164 3846     		mov	r0, r7
 1754 0166 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1755 016a 0028     		cmp	r0, #0
 1756 016c 7FF477AF 		bne	.L177
 1757 0170 CDE90140 		strd	r4, r0, [sp, #4]
 1758 0174 CDF80080 		str	r8, [sp]
 1759 0178 06F19403 		add	r3, r6, #148
 1760 017c 0522     		movs	r2, #5
 1761 017e 4821     		movs	r1, #72
 1762 0180 3846     		mov	r0, r7
 1763 0182 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1764 0186 0028     		cmp	r0, #0
 1765 0188 7FF469AF 		bne	.L177
 1766 018c CDE90140 		strd	r4, r0, [sp, #4]
 1767 0190 CDF80080 		str	r8, [sp]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 32


 1768 0194 06F1A803 		add	r3, r6, #168
 1769 0198 0522     		movs	r2, #5
 1770 019a 4A21     		movs	r1, #74
 1771 019c 3846     		mov	r0, r7
 1772 019e FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1773 01a2 0028     		cmp	r0, #0
 1774 01a4 7FF45BAF 		bne	.L177
 1775 01a8 9DF8E630 		ldrb	r3, [sp, #230]	@ zero_extendqisi2
 1776 01ac 13B9     		cbnz	r3, .L170
 1777 01ae 9DF8E730 		ldrb	r3, [sp, #231]	@ zero_extendqisi2
 1778 01b2 13B1     		cbz	r3, .L171
 1779              	.L170:
 1780 01b4 3046     		mov	r0, r6
 1781 01b6 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 1782              	.L171:
 1783 01ba 5021     		movs	r1, #80
 1784 01bc 3846     		mov	r0, r7
 1785 01be FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1786 01c2 0028     		cmp	r0, #0
 1787 01c4 00F0A380 		beq	.L172
 1788 01c8 3846     		mov	r0, r7
 1789 01ca FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1790 01ce 0123     		movs	r3, #1
 1791 01d0 86ED0F0A 		vstr.32	s0, [r6, #60]
 1792 01d4 8DF8E630 		strb	r3, [sp, #230]
 1793              	.L173:
 1794 01d8 9DF8E600 		ldrb	r0, [sp, #230]	@ zero_extendqisi2
 1795 01dc 25E7     		b	.L165
 1796              	.L176:
 1797 01de CDE90140 		strd	r4, r0, [sp, #4]
 1798 01e2 CDF80080 		str	r8, [sp]
 1799 01e6 06F15803 		add	r3, r6, #88
 1800 01ea 0522     		movs	r2, #5
 1801 01ec 5521     		movs	r1, #85
 1802 01ee 3846     		mov	r0, r7
 1803 01f0 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1804 01f4 0028     		cmp	r0, #0
 1805 01f6 7FF432AF 		bne	.L177
 1806 01fa CDE90140 		strd	r4, r0, [sp, #4]
 1807 01fe CDF80080 		str	r8, [sp]
 1808 0202 06F16C03 		add	r3, r6, #108
 1809 0206 0522     		movs	r2, #5
 1810 0208 4F21     		movs	r1, #79
 1811 020a 3846     		mov	r0, r7
 1812 020c FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1813 0210 0028     		cmp	r0, #0
 1814 0212 7FF424AF 		bne	.L177
 1815 0216 CDE90140 		strd	r4, r0, [sp, #4]
 1816 021a CDF80080 		str	r8, [sp]
 1817 021e 06F18003 		add	r3, r6, #128
 1818 0222 0522     		movs	r2, #5
 1819 0224 4C21     		movs	r1, #76
 1820 0226 3846     		mov	r0, r7
 1821 0228 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1822 022c 0028     		cmp	r0, #0
 1823 022e 7FF416AF 		bne	.L177
 1824 0232 CDE90140 		strd	r4, r0, [sp, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 33


 1825 0236 CDF80080 		str	r8, [sp]
 1826 023a 06F19403 		add	r3, r6, #148
 1827 023e 0522     		movs	r2, #5
 1828 0240 4821     		movs	r1, #72
 1829 0242 3846     		mov	r0, r7
 1830 0244 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1831 0248 0028     		cmp	r0, #0
 1832 024a 7FF408AF 		bne	.L177
 1833 024e CDE90140 		strd	r4, r0, [sp, #4]
 1834 0252 CDF80080 		str	r8, [sp]
 1835 0256 3846     		mov	r0, r7
 1836 0258 06F1A803 		add	r3, r6, #168
 1837 025c 0522     		movs	r2, #5
 1838 025e 4A21     		movs	r1, #74
 1839 0260 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1840 0264 0028     		cmp	r0, #0
 1841 0266 7FF4FAAE 		bne	.L177
 1842 026a 306C     		ldr	r0, [r6, #64]	@ float
 1843 026c FFF7FEFF 		bl	__aeabi_f2d
 1844 0270 0D46     		mov	r5, r1
 1845 0272 D6E92C21 		ldrd	r2, r1, [r6, #176]
 1846 0276 D6F8AC30 		ldr	r3, [r6, #172]
 1847 027a 1B91     		str	r1, [sp, #108]
 1848 027c D6F8A810 		ldr	r1, [r6, #168]
 1849 0280 1A92     		str	r2, [sp, #104]
 1850 0282 D6F8A020 		ldr	r2, [r6, #160]
 1851 0286 1993     		str	r3, [sp, #100]
 1852 0288 D6F89C30 		ldr	r3, [r6, #156]
 1853 028c 1891     		str	r1, [sp, #96]
 1854 028e D6F89810 		ldr	r1, [r6, #152]
 1855 0292 1792     		str	r2, [sp, #92]
 1856 0294 D6F89420 		ldr	r2, [r6, #148]
 1857 0298 1693     		str	r3, [sp, #88]
 1858 029a D6F88C30 		ldr	r3, [r6, #140]
 1859 029e 1591     		str	r1, [sp, #84]
 1860 02a0 D6F88810 		ldr	r1, [r6, #136]
 1861 02a4 1492     		str	r2, [sp, #80]
 1862 02a6 D6F88420 		ldr	r2, [r6, #132]
 1863 02aa 1393     		str	r3, [sp, #76]
 1864 02ac D6F88030 		ldr	r3, [r6, #128]
 1865 02b0 1291     		str	r1, [sp, #72]
 1866 02b2 B16F     		ldr	r1, [r6, #120]
 1867 02b4 1192     		str	r2, [sp, #68]
 1868 02b6 726F     		ldr	r2, [r6, #116]
 1869 02b8 1093     		str	r3, [sp, #64]
 1870 02ba 336F     		ldr	r3, [r6, #112]
 1871 02bc 0D93     		str	r3, [sp, #52]
 1872 02be CDE90E21 		strd	r2, r1, [sp, #56]
 1873 02c2 F26E     		ldr	r2, [r6, #108]
 1874 02c4 D6E91813 		ldrd	r1, r3, [r6, #96]
 1875 02c8 0C92     		str	r2, [sp, #48]
 1876 02ca F26D     		ldr	r2, [r6, #92]
 1877 02cc 0B93     		str	r3, [sp, #44]
 1878 02ce B36D     		ldr	r3, [r6, #88]
 1879 02d0 0A91     		str	r1, [sp, #40]
 1880 02d2 0446     		mov	r4, r0
 1881 02d4 306D     		ldr	r0, [r6, #80]	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 34


 1882 02d6 CDE90832 		strd	r3, r2, [sp, #32]
 1883 02da FFF7FEFF 		bl	__aeabi_f2d
 1884 02de CDE90601 		strd	r0, [sp, #24]
 1885 02e2 F06C     		ldr	r0, [r6, #76]	@ float
 1886 02e4 FFF7FEFF 		bl	__aeabi_f2d
 1887 02e8 CDE90401 		strd	r0, [sp, #16]
 1888 02ec B06C     		ldr	r0, [r6, #72]	@ float
 1889 02ee FFF7FEFF 		bl	__aeabi_f2d
 1890 02f2 CDE90201 		strd	r0, [sp, #8]
 1891 02f6 706C     		ldr	r0, [r6, #68]	@ float
 1892 02f8 FFF7FEFF 		bl	__aeabi_f2d
 1893 02fc 2246     		mov	r2, r4
 1894 02fe CDE90001 		strd	r0, [sp]
 1895 0302 2B46     		mov	r3, r5
 1896 0304 4046     		mov	r0, r8
 1897 0306 5249     		ldr	r1, .L184
 1898 0308 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1899 030c 8DE6     		b	.L165
 1900              	.L172:
 1901 030e 3846     		mov	r0, r7
 1902 0310 4B21     		movs	r1, #75
 1903 0312 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1904 0316 0028     		cmp	r0, #0
 1905 0318 7FF45EAF 		bne	.L173
 1906 031c 3069     		ldr	r0, [r6, #16]	@ float
 1907 031e FFF7FEFF 		bl	__aeabi_f2d
 1908 0322 0D46     		mov	r5, r1
 1909 0324 D6E92C21 		ldrd	r2, r1, [r6, #176]
 1910 0328 D6F8AC30 		ldr	r3, [r6, #172]
 1911 032c 3791     		str	r1, [sp, #220]
 1912 032e D6F8A810 		ldr	r1, [r6, #168]
 1913 0332 3692     		str	r2, [sp, #216]
 1914 0334 D6F8A020 		ldr	r2, [r6, #160]
 1915 0338 3593     		str	r3, [sp, #212]
 1916 033a D6F89C30 		ldr	r3, [r6, #156]
 1917 033e 3491     		str	r1, [sp, #208]
 1918 0340 D6F89810 		ldr	r1, [r6, #152]
 1919 0344 3392     		str	r2, [sp, #204]
 1920 0346 D6F89420 		ldr	r2, [r6, #148]
 1921 034a 3293     		str	r3, [sp, #200]
 1922 034c D6F88C30 		ldr	r3, [r6, #140]
 1923 0350 3191     		str	r1, [sp, #196]
 1924 0352 D6F88810 		ldr	r1, [r6, #136]
 1925 0356 3092     		str	r2, [sp, #192]
 1926 0358 D6F88420 		ldr	r2, [r6, #132]
 1927 035c 2F93     		str	r3, [sp, #188]
 1928 035e D6F88030 		ldr	r3, [r6, #128]
 1929 0362 2E91     		str	r1, [sp, #184]
 1930 0364 B16F     		ldr	r1, [r6, #120]
 1931 0366 2D92     		str	r2, [sp, #180]
 1932 0368 726F     		ldr	r2, [r6, #116]
 1933 036a 2C93     		str	r3, [sp, #176]
 1934 036c 336F     		ldr	r3, [r6, #112]
 1935 036e 2993     		str	r3, [sp, #164]
 1936 0370 CDE92A21 		strd	r2, r1, [sp, #168]
 1937 0374 F26E     		ldr	r2, [r6, #108]
 1938 0376 D6E91813 		ldrd	r1, r3, [r6, #96]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 35


 1939 037a 2892     		str	r2, [sp, #160]
 1940 037c F26D     		ldr	r2, [r6, #92]
 1941 037e 2793     		str	r3, [sp, #156]
 1942 0380 B36D     		ldr	r3, [r6, #88]
 1943 0382 2691     		str	r1, [sp, #152]
 1944 0384 0446     		mov	r4, r0
 1945 0386 306D     		ldr	r0, [r6, #80]	@ float
 1946 0388 CDE92432 		strd	r3, r2, [sp, #144]
 1947 038c FFF7FEFF 		bl	__aeabi_f2d
 1948 0390 CDE92201 		strd	r0, [sp, #136]
 1949 0394 F06C     		ldr	r0, [r6, #76]	@ float
 1950 0396 FFF7FEFF 		bl	__aeabi_f2d
 1951 039a CDE92001 		strd	r0, [sp, #128]
 1952 039e B06C     		ldr	r0, [r6, #72]	@ float
 1953 03a0 FFF7FEFF 		bl	__aeabi_f2d
 1954 03a4 CDE91E01 		strd	r0, [sp, #120]
 1955 03a8 706C     		ldr	r0, [r6, #68]	@ float
 1956 03aa FFF7FEFF 		bl	__aeabi_f2d
 1957 03ae CDE91C01 		strd	r0, [sp, #112]
 1958 03b2 306C     		ldr	r0, [r6, #64]	@ float
 1959 03b4 FFF7FEFF 		bl	__aeabi_f2d
 1960 03b8 CDE91A01 		strd	r0, [sp, #104]
 1961 03bc B068     		ldr	r0, [r6, #8]	@ float
 1962 03be FFF7FEFF 		bl	__aeabi_f2d
 1963 03c2 D6ED017A 		vldr.32	s15, [r6, #4]
 1964 03c6 CDE91801 		strd	r0, [sp, #96]
 1965 03ca FDEEE77A 		vcvt.s32.f32	s15, s15
 1966 03ce F06B     		ldr	r0, [r6, #60]	@ float
 1967 03d0 CDED167A 		vstr.32	s15, [sp, #88]	@ int
 1968 03d4 FFF7FEFF 		bl	__aeabi_f2d
 1969 03d8 CDE91401 		strd	r0, [sp, #80]
 1970 03dc B06B     		ldr	r0, [r6, #56]	@ float
 1971 03de FFF7FEFF 		bl	__aeabi_f2d
 1972 03e2 CDE91201 		strd	r0, [sp, #72]
 1973 03e6 706B     		ldr	r0, [r6, #52]	@ float
 1974 03e8 FFF7FEFF 		bl	__aeabi_f2d
 1975 03ec CDE91001 		strd	r0, [sp, #64]
 1976 03f0 306B     		ldr	r0, [r6, #48]	@ float
 1977 03f2 FFF7FEFF 		bl	__aeabi_f2d
 1978 03f6 CDE90E01 		strd	r0, [sp, #56]
 1979 03fa F06A     		ldr	r0, [r6, #44]	@ float
 1980 03fc FFF7FEFF 		bl	__aeabi_f2d
 1981 0400 CDE90C01 		strd	r0, [sp, #48]
 1982 0404 B06A     		ldr	r0, [r6, #40]	@ float
 1983 0406 FFF7FEFF 		bl	__aeabi_f2d
 1984 040a CDE90A01 		strd	r0, [sp, #40]
 1985 040e 706A     		ldr	r0, [r6, #36]	@ float
 1986 0410 FFF7FEFF 		bl	__aeabi_f2d
 1987 0414 CDE90801 		strd	r0, [sp, #32]
 1988 0418 306A     		ldr	r0, [r6, #32]	@ float
 1989 041a FFF7FEFF 		bl	__aeabi_f2d
 1990 041e CDE90601 		strd	r0, [sp, #24]
 1991 0422 F069     		ldr	r0, [r6, #28]	@ float
 1992 0424 FFF7FEFF 		bl	__aeabi_f2d
 1993 0428 CDE90401 		strd	r0, [sp, #16]
 1994 042c B069     		ldr	r0, [r6, #24]	@ float
 1995 042e FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 36


 1996 0432 CDE90201 		strd	r0, [sp, #8]
 1997 0436 7069     		ldr	r0, [r6, #20]	@ float
 1998 0438 FFF7FEFF 		bl	__aeabi_f2d
 1999 043c 2246     		mov	r2, r4
 2000 043e CDE90001 		strd	r0, [sp]
 2001 0442 2B46     		mov	r3, r5
 2002 0444 4046     		mov	r0, r8
 2003 0446 0349     		ldr	r1, .L184+4
 2004 0448 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2005 044c C4E6     		b	.L173
 2006              	.L185:
 2007 044e 00BF     		.align	2
 2008              	.L184:
 2009 0450 94010000 		.word	.LC22
 2010 0454 00000000 		.word	.LC21
 2011              		.size	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN21HangprinterKinema
 2012              		.section	.text._ZNK21HangprinterKinematics17MotorPosToLinePosElj,"ax",%progbits
 2013              		.align	1
 2014              		.p2align 2,,3
 2015              		.global	_ZNK21HangprinterKinematics17MotorPosToLinePosElj
 2016              		.syntax unified
 2017              		.thumb
 2018              		.thumb_func
 2019              		.fpu fpv4-sp-d16
 2020              		.type	_ZNK21HangprinterKinematics17MotorPosToLinePosElj, %function
 2021              	_ZNK21HangprinterKinematics17MotorPosToLinePosElj:
 2022              		@ args = 0, pretend = 0, frame = 0
 2023              		@ frame_needed = 0, uses_anonymous_args = 0
 2024              		@ link register save eliminated.
 2025 0000 07EE901A 		vmov	s15, r1	@ int
 2026 0004 00EB8202 		add	r2, r0, r2, lsl #2
 2027 0008 92ED2F6A 		vldr.32	s12, [r2, #188]
 2028 000c D2ED116A 		vldr.32	s13, [r2, #68]
 2029 0010 92ED340A 		vldr.32	s0, [r2, #208]
 2030 0014 92ED397A 		vldr.32	s14, [r2, #228]
 2031 0018 F8EEE75A 		vcvt.f32.s32	s11, s15
 2032 001c C5EE867A 		vdiv.f32	s15, s11, s12
 2033 0020 77EEA67A 		vadd.f32	s15, s15, s13
 2034 0024 97EEA70A 		vfnms.f32	s0, s15, s15
 2035 0028 80EE070A 		vdiv.f32	s0, s0, s14
 2036 002c 7047     		bx	lr
 2037              		.size	_ZNK21HangprinterKinematics17MotorPosToLinePosElj, .-_ZNK21HangprinterKinematics17MotorPosTo
 2038 002e 00BF     		.section	.text._ZNK21HangprinterKinematics16InverseTransformEfffPf,"ax",%progbits
 2039              		.align	1
 2040              		.p2align 2,,3
 2041              		.global	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2042              		.syntax unified
 2043              		.thumb
 2044              		.thumb_func
 2045              		.fpu fpv4-sp-d16
 2046              		.type	_ZNK21HangprinterKinematics16InverseTransformEfffPf, %function
 2047              	_ZNK21HangprinterKinematics16InverseTransformEfffPf:
 2048              		@ args = 0, pretend = 0, frame = 0
 2049              		@ frame_needed = 0, uses_anonymous_args = 0
 2050 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2051 0004 2DED088B 		vpush.64	{d8, d9, d10, d11}
 2052 0008 90ED458A 		vldr.32	s16, [r0, #276]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 37


 2053 000c D0ED466A 		vldr.32	s13, [r0, #280]
 2054 0010 D0ED4C8A 		vldr.32	s17, [r0, #304]
 2055 0014 90ED4A6A 		vldr.32	s12, [r0, #296]
 2056 0018 90ED447A 		vldr.32	s14, [r0, #272]
 2057 001c D0ED492A 		vldr.32	s5, [r0, #292]
 2058 0020 90ED473A 		vldr.32	s6, [r0, #284]
 2059 0024 D0ED4B3A 		vldr.32	s7, [r0, #300]
 2060 0028 90ED484A 		vldr.32	s8, [r0, #288]
 2061 002c D0ED047A 		vldr.32	s15, [r0, #16]
 2062 0030 D0ED054A 		vldr.32	s9, [r0, #20]
 2063 0034 90ED505A 		vldr.32	s10, [r0, #320]
 2064 0038 D0ED529A 		vldr.32	s19, [r0, #328]
 2065 003c D0ED515A 		vldr.32	s11, [r0, #324]
 2066 0040 DFF8A881 		ldr	r8, .L192+12
 2067 0044 90EEA08A 		vfnms.f32	s16, s1, s1
 2068 0048 8AB0     		sub	sp, sp, #40
 2069 004a 0446     		mov	r4, r0
 2070 004c D1EE016A 		vfnms.f32	s13, s2, s2
 2071 0050 0D46     		mov	r5, r1
 2072 0052 68EEC88A 		vnmul.f32	s17, s17, s16
 2073 0056 28EE228A 		vmul.f32	s16, s16, s5
 2074 005a E6EE668A 		vfms.f32	s17, s12, s13
 2075 005e B0EE476A 		vmov.f32	s12, s14
 2076 0062 90EE006A 		vfnms.f32	s12, s0, s0
 2077 0066 A3EE668A 		vfms.f32	s16, s6, s13
 2078 006a E3EEC68A 		vfms.f32	s17, s7, s12
 2079 006e A6EE048A 		vfma.f32	s16, s12, s8
 2080 0072 67EEE87A 		vnmul.f32	s15, s15, s17
 2081 0076 28EE089A 		vmul.f32	s18, s16, s16
 2082 007a E4EE887A 		vfma.f32	s15, s9, s16
 2083 007e A8EEA89A 		vfma.f32	s18, s17, s17
 2084 0082 67EE857A 		vmul.f32	s15, s15, s10
 2085 0086 F0EE006A 		vmov.f32	s13, #2.0e+0
 2086 008a 69EEC89A 		vnmul.f32	s19, s19, s16
 2087 008e A0EE407A 		vfms.f32	s14, s0, s0
 2088 0092 A7EEA69A 		vfma.f32	s18, s15, s13
 2089 0096 E5EEA89A 		vfma.f32	s19, s11, s17
 2090 009a D0ED536A 		vldr.32	s13, [r0, #332]
 2091 009e D0ED547A 		vldr.32	s15, [r0, #336]
 2092 00a2 A7EE269A 		vfma.f32	s18, s14, s13
 2093 00a6 18EE900A 		vmov	r0, s17
 2094 00aa 79EEE79A 		vsub.f32	s19, s19, s15
 2095 00ae F0EE60AA 		vmov.f32	s21, s1
 2096 00b2 B0EE41BA 		vmov.f32	s22, s2
 2097 00b6 B0EE40AA 		vmov.f32	s20, s0
 2098 00ba FFF7FEFF 		bl	__aeabi_f2d
 2099 00be 0646     		mov	r6, r0
 2100 00c0 19EE100A 		vmov	r0, s18
 2101 00c4 0F46     		mov	r7, r1
 2102 00c6 FFF7FEFF 		bl	__aeabi_f2d
 2103 00ca CDE90401 		strd	r0, [sp, #16]
 2104 00ce 19EE900A 		vmov	r0, s19
 2105 00d2 FFF7FEFF 		bl	__aeabi_f2d
 2106 00d6 CDE90201 		strd	r0, [sp, #8]
 2107 00da 18EE100A 		vmov	r0, s16
 2108 00de FFF7FEFF 		bl	__aeabi_f2d
 2109 00e2 3246     		mov	r2, r6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 38


 2110 00e4 3B46     		mov	r3, r7
 2111 00e6 CDE90001 		strd	r0, [sp]
 2112 00ea 3D48     		ldr	r0, .L192
 2113 00ec FFF7FEFF 		bl	debugPrintf
 2114 00f0 2E46     		mov	r6, r5
 2115 00f2 05F10C07 		add	r7, r5, #12
 2116              	.L188:
 2117 00f6 56F8040B 		ldr	r0, [r6], #4	@ float
 2118 00fa FFF7FEFF 		bl	__aeabi_f2d
 2119 00fe 0246     		mov	r2, r0
 2120 0100 0B46     		mov	r3, r1
 2121 0102 4046     		mov	r0, r8
 2122 0104 FFF7FEFF 		bl	debugPrintf
 2123 0108 B742     		cmp	r7, r6
 2124 010a F4D1     		bne	.L188
 2125 010c D4ED556A 		vldr.32	s13, [r4, #340]
 2126 0110 29EE669A 		vnmul.f32	s18, s18, s13
 2127 0114 B1EE697A 		vneg.f32	s14, s19
 2128 0118 A9EEA99A 		vfma.f32	s18, s19, s19
 2129 011c B0EEC99A 		vabs.f32	s18, s18
 2130 0120 F1EEC97A 		vsqrt.f32	s15, s18
 2131 0124 37EE677A 		vsub.f32	s14, s14, s15
 2132 0128 C7EE267A 		vdiv.f32	s15, s14, s13
 2133 012c C5ED027A 		vstr.32	s15, [r5, #8]
 2134 0130 94ED517A 		vldr.32	s14, [r4, #324]
 2135 0134 D4ED506A 		vldr.32	s13, [r4, #320]
 2136 0138 E7EE878A 		vfma.f32	s17, s15, s14
 2137 013c 88EEA67A 		vdiv.f32	s14, s17, s13
 2138 0140 85ED007A 		vstr.32	s14, [r5]
 2139 0144 94ED526A 		vldr.32	s12, [r4, #328]
 2140 0148 D4ED506A 		vldr.32	s13, [r4, #320]
 2141 014c A7EE868A 		vfma.f32	s16, s15, s12
 2142 0150 17EE100A 		vmov	r0, s14
 2143 0154 C8EE267A 		vdiv.f32	s15, s16, s13
 2144 0158 C5ED017A 		vstr.32	s15, [r5, #4]
 2145 015c FFF7FEFF 		bl	__aeabi_f2d
 2146 0160 0246     		mov	r2, r0
 2147 0162 0B46     		mov	r3, r1
 2148 0164 1F48     		ldr	r0, .L192+4
 2149 0166 FFF7FEFF 		bl	debugPrintf
 2150 016a 6868     		ldr	r0, [r5, #4]	@ float
 2151 016c FFF7FEFF 		bl	__aeabi_f2d
 2152 0170 0246     		mov	r2, r0
 2153 0172 0B46     		mov	r3, r1
 2154 0174 1B48     		ldr	r0, .L192+4
 2155 0176 FFF7FEFF 		bl	debugPrintf
 2156 017a A868     		ldr	r0, [r5, #8]	@ float
 2157 017c FFF7FEFF 		bl	__aeabi_f2d
 2158 0180 0246     		mov	r2, r0
 2159 0182 0B46     		mov	r3, r1
 2160 0184 1748     		ldr	r0, .L192+4
 2161 0186 FFF7FEFF 		bl	debugPrintf
 2162 018a 1AEE100A 		vmov	r0, s20
 2163 018e FFF7FEFF 		bl	__aeabi_f2d
 2164 0192 0646     		mov	r6, r0
 2165 0194 A868     		ldr	r0, [r5, #8]	@ float
 2166 0196 0F46     		mov	r7, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 39


 2167 0198 FFF7FEFF 		bl	__aeabi_f2d
 2168 019c CDE90801 		strd	r0, [sp, #32]
 2169 01a0 6868     		ldr	r0, [r5, #4]	@ float
 2170 01a2 FFF7FEFF 		bl	__aeabi_f2d
 2171 01a6 CDE90601 		strd	r0, [sp, #24]
 2172 01aa 2868     		ldr	r0, [r5]	@ float
 2173 01ac FFF7FEFF 		bl	__aeabi_f2d
 2174 01b0 CDE90401 		strd	r0, [sp, #16]
 2175 01b4 1BEE100A 		vmov	r0, s22
 2176 01b8 FFF7FEFF 		bl	__aeabi_f2d
 2177 01bc CDE90201 		strd	r0, [sp, #8]
 2178 01c0 1AEE900A 		vmov	r0, s21
 2179 01c4 FFF7FEFF 		bl	__aeabi_f2d
 2180 01c8 3246     		mov	r2, r6
 2181 01ca CDE90001 		strd	r0, [sp]
 2182 01ce 3B46     		mov	r3, r7
 2183 01d0 0548     		ldr	r0, .L192+8
 2184 01d2 FFF7FEFF 		bl	debugPrintf
 2185 01d6 0AB0     		add	sp, sp, #40
 2186              		@ sp needed
 2187 01d8 BDEC088B 		vldm	sp!, {d8-d11}
 2188 01dc BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2189              	.L193:
 2190              		.align	2
 2191              	.L192:
 2192 01e0 00000000 		.word	.LC23
 2193 01e4 64000000 		.word	.LC25
 2194 01e8 80000000 		.word	.LC26
 2195 01ec 44000000 		.word	.LC24
 2196              		.size	_ZNK21HangprinterKinematics16InverseTransformEfffPf, .-_ZNK21HangprinterKinematics16InverseT
 2197              		.section	.text._ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 2198              		.align	1
 2199              		.p2align 2,,3
 2200              		.global	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf
 2201              		.syntax unified
 2202              		.thumb
 2203              		.thumb_func
 2204              		.fpu fpv4-sp-d16
 2205              		.type	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 2206              	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 2207              		@ args = 8, pretend = 0, frame = 0
 2208              		@ frame_needed = 0, uses_anonymous_args = 0
 2209              		@ link register save eliminated.
 2210 0000 D1ED003A 		vldr.32	s7, [r1]	@ int
 2211 0004 91ED014A 		vldr.32	s8, [r1, #4]	@ int
 2212 0008 D1ED024A 		vldr.32	s9, [r1, #8]	@ int
 2213 000c 90ED2F7A 		vldr.32	s14, [r0, #188]
 2214 0010 D0ED307A 		vldr.32	s15, [r0, #192]
 2215 0014 90ED130A 		vldr.32	s0, [r0, #76]
 2216 0018 90ED345A 		vldr.32	s10, [r0, #208]
 2217 001c D0ED355A 		vldr.32	s11, [r0, #212]
 2218 0020 90ED366A 		vldr.32	s12, [r0, #216]
 2219 0024 D0ED390A 		vldr.32	s1, [r0, #228]
 2220 0028 90ED3A1A 		vldr.32	s2, [r0, #232]
 2221 002c D0ED3B1A 		vldr.32	s3, [r0, #236]
 2222 0030 90ED3E2A 		vldr.32	s4, [r0, #248]
 2223 0034 D0ED3F2A 		vldr.32	s5, [r0, #252]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 40


 2224 0038 90ED403A 		vldr.32	s6, [r0, #256]
 2225 003c 2DED048B 		vpush.64	{d8, d9}
 2226 0040 F8EEE33A 		vcvt.f32.s32	s7, s7
 2227 0044 90ED319A 		vldr.32	s18, [r0, #196]
 2228 0048 D0ED118A 		vldr.32	s17, [r0, #68]
 2229 004c 90ED128A 		vldr.32	s16, [r0, #72]
 2230 0050 0599     		ldr	r1, [sp, #20]
 2231 0052 B8EEC44A 		vcvt.f32.s32	s8, s8
 2232 0056 F8EEE44A 		vcvt.f32.s32	s9, s9
 2233 005a C3EE876A 		vdiv.f32	s13, s7, s14
 2234 005e 84EE277A 		vdiv.f32	s14, s8, s15
 2235 0062 C4EE897A 		vdiv.f32	s15, s9, s18
 2236 0066 76EEA86A 		vadd.f32	s13, s13, s17
 2237 006a 37EE087A 		vadd.f32	s14, s14, s16
 2238 006e 77EE807A 		vadd.f32	s15, s15, s0
 2239 0072 96EEA65A 		vfnms.f32	s10, s13, s13
 2240 0076 BDEC048B 		vldm	sp!, {d8-d9}
 2241 007a D7EE075A 		vfnms.f32	s11, s14, s14
 2242 007e 97EEA76A 		vfnms.f32	s12, s15, s15
 2243 0082 85EE200A 		vdiv.f32	s0, s10, s1
 2244 0086 C5EE810A 		vdiv.f32	s1, s11, s2
 2245 008a 86EE211A 		vdiv.f32	s2, s12, s3
 2246 008e 30EE020A 		vadd.f32	s0, s0, s4
 2247 0092 70EEA20A 		vadd.f32	s1, s1, s5
 2248 0096 31EE031A 		vadd.f32	s2, s2, s6
 2249 009a FFF7FEBF 		b	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2250              		.size	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK21HangprinterKinematics
 2251              		.global	__aeabi_dsub
 2252              		.global	__aeabi_ddiv
 2253 009e 00BF     		.section	.text._ZNK21HangprinterKinematics17ComputeDerivativeEjfff,"ax",%progbits
 2254              		.align	1
 2255              		.p2align 2,,3
 2256              		.global	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 2257              		.syntax unified
 2258              		.thumb
 2259              		.thumb_func
 2260              		.fpu fpv4-sp-d16
 2261              		.type	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff, %function
 2262              	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff:
 2263              		@ args = 0, pretend = 0, frame = 776
 2264              		@ frame_needed = 0, uses_anonymous_args = 0
 2265 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2266 0004 2DED0A8B 		vpush.64	{d8, d9, d10, d11, d12}
 2267 0008 ADF5437D 		sub	sp, sp, #780
 2268 000c 00F1100B 		add	fp, r0, #16
 2269 0010 0446     		mov	r4, r0
 2270 0012 0191     		str	r1, [sp, #4]
 2271 0014 9BE80700 		ldm	fp, {r0, r1, r2}
 2272 0018 04F11C05 		add	r5, r4, #28
 2273 001c 18AB     		add	r3, sp, #96
 2274 001e 83E80700 		stm	r3, {r0, r1, r2}
 2275 0022 95E80700 		ldm	r5, {r0, r1, r2}
 2276 0026 04F12806 		add	r6, r4, #40
 2277 002a 1BAB     		add	r3, sp, #108
 2278 002c 83E80700 		stm	r3, {r0, r1, r2}
 2279 0030 96E80700 		ldm	r6, {r0, r1, r2}
 2280 0034 94ED017A 		vldr.32	s14, [r4, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 41


 2281 0038 D4ED027A 		vldr.32	s15, [r4, #8]
 2282 003c 94F80FC0 		ldrb	ip, [r4, #15]	@ zero_extendqisi2
 2283 0040 277B     		ldrb	r7, [r4, #12]	@ zero_extendqisi2
 2284 0042 D4ED0DCA 		vldr.32	s25, [r4, #52]
 2285 0046 0995     		str	r5, [sp, #36]
 2286 0048 1EAB     		add	r3, sp, #120
 2287 004a 657B     		ldrb	r5, [r4, #13]	@ zero_extendqisi2
 2288 004c 0A96     		str	r6, [sp, #40]
 2289 004e 83E80700 		stm	r3, {r0, r1, r2}
 2290 0052 A67B     		ldrb	r6, [r4, #14]	@ zero_extendqisi2
 2291 0054 CDF808C0 		str	ip, [sp, #8]
 2292 0058 8DED157A 		vstr.32	s14, [sp, #84]
 2293 005c 04F1440C 		add	ip, r4, #68
 2294 0060 CDED167A 		vstr.32	s15, [sp, #88]
 2295 0064 C249     		ldr	r1, .L223
 2296 0066 029A     		ldr	r2, [sp, #8]
 2297 0068 8DF85F20 		strb	r2, [sp, #95]
 2298 006c 1491     		str	r1, [sp, #80]
 2299 006e BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 2300 0072 0896     		str	r6, [sp, #32]
 2301 0074 8DF85E60 		strb	r6, [sp, #94]
 2302 0078 04F1580E 		add	lr, r4, #88
 2303 007c 25AE     		add	r6, sp, #148
 2304 007e 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2305 0080 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2306 0084 0795     		str	r5, [sp, #28]
 2307 0086 8DF85D50 		strb	r5, [sp, #93]
 2308 008a 04F16C0A 		add	r10, r4, #108
 2309 008e 2AAD     		add	r5, sp, #168
 2310 0090 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2311 0092 BAE80F00 		ldmia	r10!, {r0, r1, r2, r3}
 2312 0096 94ED0E9A 		vldr.32	s18, [r4, #56]
 2313 009a D4ED0F8A 		vldr.32	s17, [r4, #60]
 2314 009e 0697     		str	r7, [sp, #24]
 2315 00a0 8DF85C70 		strb	r7, [sp, #92]
 2316 00a4 04F18009 		add	r9, r4, #128
 2317 00a8 CDED21CA 		vstr.32	s25, [sp, #132]
 2318 00ac 94ED108A 		vldr.32	s16, [r4, #64]
 2319 00b0 DCF80070 		ldr	r7, [ip]
 2320 00b4 0397     		str	r7, [sp, #12]
 2321 00b6 0DF1BC0C 		add	ip, sp, #188
 2322 00ba ACE80F00 		stmia	ip!, {r0, r1, r2, r3}
 2323 00be B9E80F00 		ldmia	r9!, {r0, r1, r2, r3}
 2324 00c2 DEF80070 		ldr	r7, [lr]
 2325 00c6 0497     		str	r7, [sp, #16]
 2326 00c8 039F     		ldr	r7, [sp, #12]
 2327 00ca 3760     		str	r7, [r6]
 2328 00cc 04F19408 		add	r8, r4, #148
 2329 00d0 34AF     		add	r7, sp, #208
 2330 00d2 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2331 00d4 B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 2332 00d8 049E     		ldr	r6, [sp, #16]
 2333 00da 2E60     		str	r6, [r5]
 2334 00dc 04F1A80E 		add	lr, r4, #168
 2335 00e0 39AE     		add	r6, sp, #228
 2336 00e2 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2337 00e4 8DED229A 		vstr.32	s18, [sp, #136]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 42


 2338 00e8 CDED238A 		vstr.32	s17, [sp, #140]
 2339 00ec 8DED248A 		vstr.32	s16, [sp, #144]
 2340 00f0 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2341 00f4 3EAD     		add	r5, sp, #248
 2342 00f6 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2343 00f8 DAF80000 		ldr	r0, [r10]
 2344 00fc D9F80020 		ldr	r2, [r9]
 2345 0100 D8F80010 		ldr	r1, [r8]
 2346 0104 DEF80030 		ldr	r3, [lr]
 2347 0108 CCF80000 		str	r0, [ip]
 2348 010c 04F1BC0C 		add	ip, r4, #188
 2349 0110 3A60     		str	r2, [r7]
 2350 0112 3160     		str	r1, [r6]
 2351 0114 2B60     		str	r3, [r5]
 2352 0116 0B90     		str	r0, [sp, #44]
 2353 0118 0C92     		str	r2, [sp, #48]
 2354 011a 0D91     		str	r1, [sp, #52]
 2355 011c 0E93     		str	r3, [sp, #56]
 2356 011e BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 2357 0122 04F1D008 		add	r8, r4, #208
 2358 0126 43AF     		add	r7, sp, #268
 2359 0128 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2360 012a B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 2361 012e 04F1E40E 		add	lr, r4, #228
 2362 0132 48AE     		add	r6, sp, #288
 2363 0134 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2364 0136 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2365 013a 4DAD     		add	r5, sp, #308
 2366 013c 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2367 013e DCF800C0 		ldr	ip, [ip]
 2368 0142 DEF80000 		ldr	r0, [lr]
 2369 0146 C7F800C0 		str	ip, [r7]
 2370 014a 04F1F807 		add	r7, r4, #248
 2371 014e 2860     		str	r0, [r5]
 2372 0150 0F90     		str	r0, [sp, #60]
 2373 0152 0FCF     		ldmia	r7!, {r0, r1, r2, r3}
 2374 0154 52AD     		add	r5, sp, #328
 2375 0156 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2376 0158 D8F80080 		ldr	r8, [r8]
 2377 015c 94ED43CA 		vldr.32	s24, [r4, #268]
 2378 0160 D4ED44BA 		vldr.32	s23, [r4, #272]
 2379 0164 94ED45BA 		vldr.32	s22, [r4, #276]
 2380 0168 D4ED46AA 		vldr.32	s21, [r4, #280]
 2381 016c 94ED47AA 		vldr.32	s20, [r4, #284]
 2382 0170 D4ED489A 		vldr.32	s19, [r4, #288]
 2383 0174 C6F80080 		str	r8, [r6]
 2384 0178 D4ED491A 		vldr.32	s3, [r4, #292]
 2385 017c 94ED4A2A 		vldr.32	s4, [r4, #296]
 2386 0180 D4ED4B2A 		vldr.32	s5, [r4, #300]
 2387 0184 94ED4C3A 		vldr.32	s6, [r4, #304]
 2388 0188 D4ED4D3A 		vldr.32	s7, [r4, #308]
 2389 018c 94ED4E4A 		vldr.32	s8, [r4, #312]
 2390 0190 3B68     		ldr	r3, [r7]
 2391 0192 D4ED4F4A 		vldr.32	s9, [r4, #316]
 2392 0196 2B60     		str	r3, [r5]
 2393 0198 9BE80700 		ldm	fp, {r0, r1, r2}
 2394 019c 0593     		str	r3, [sp, #20]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 43


 2395 019e 6FAB     		add	r3, sp, #444
 2396 01a0 94ED505A 		vldr.32	s10, [r4, #320]
 2397 01a4 D4ED515A 		vldr.32	s11, [r4, #324]
 2398 01a8 94ED526A 		vldr.32	s12, [r4, #328]
 2399 01ac 8DED57CA 		vstr.32	s24, [sp, #348]
 2400 01b0 83E80700 		stm	r3, {r0, r1, r2}
 2401 01b4 CDED58BA 		vstr.32	s23, [sp, #352]
 2402 01b8 8DED59BA 		vstr.32	s22, [sp, #356]
 2403 01bc CDED5AAA 		vstr.32	s21, [sp, #360]
 2404 01c0 8DED5BAA 		vstr.32	s20, [sp, #364]
 2405 01c4 CDED5C9A 		vstr.32	s19, [sp, #368]
 2406 01c8 CDED5D1A 		vstr.32	s3, [sp, #372]
 2407 01cc 8DED5E2A 		vstr.32	s4, [sp, #376]
 2408 01d0 CDED5F2A 		vstr.32	s5, [sp, #380]
 2409 01d4 8DED603A 		vstr.32	s6, [sp, #384]
 2410 01d8 CDED613A 		vstr.32	s7, [sp, #388]
 2411 01dc 8DED624A 		vstr.32	s8, [sp, #392]
 2412 01e0 CDED634A 		vstr.32	s9, [sp, #396]
 2413 01e4 099B     		ldr	r3, [sp, #36]
 2414 01e6 D4ED536A 		vldr.32	s13, [r4, #332]
 2415 01ea 079D     		ldr	r5, [sp, #28]
 2416 01ec 8DED6C7A 		vstr.32	s14, [sp, #432]
 2417 01f0 93E80700 		ldm	r3, {r0, r1, r2}
 2418 01f4 089B     		ldr	r3, [sp, #32]
 2419 01f6 8DF8BA31 		strb	r3, [sp, #442]
 2420 01fa 029B     		ldr	r3, [sp, #8]
 2421 01fc 8DF8BB31 		strb	r3, [sp, #443]
 2422 0200 72AB     		add	r3, sp, #456
 2423 0202 94ED547A 		vldr.32	s14, [r4, #336]
 2424 0206 CDED6D7A 		vstr.32	s15, [sp, #436]
 2425 020a 83E80700 		stm	r3, {r0, r1, r2}
 2426 020e D4ED557A 		vldr.32	s15, [r4, #340]
 2427 0212 0A9A     		ldr	r2, [sp, #40]
 2428 0214 94F85891 		ldrb	r9, [r4, #344]	@ zero_extendqisi2
 2429 0218 069F     		ldr	r7, [sp, #24]
 2430 021a 8DF8B951 		strb	r5, [sp, #441]
 2431 021e 544D     		ldr	r5, .L223
 2432 0220 8DF8B871 		strb	r7, [sp, #440]
 2433 0224 6B95     		str	r5, [sp, #428]
 2434 0226 8DED645A 		vstr.32	s10, [sp, #400]
 2435 022a CDED655A 		vstr.32	s11, [sp, #404]
 2436 022e 8DED666A 		vstr.32	s12, [sp, #408]
 2437 0232 CDED676A 		vstr.32	s13, [sp, #412]
 2438 0236 8DED687A 		vstr.32	s14, [sp, #416]
 2439 023a CDED697A 		vstr.32	s15, [sp, #420]
 2440 023e 8DF8A891 		strb	r9, [sp, #424]
 2441 0242 07CA     		ldm	r2, {r0, r1, r2}
 2442 0244 75AB     		add	r3, sp, #468
 2443 0246 04F14405 		add	r5, r4, #68
 2444 024a 83E80700 		stm	r3, {r0, r1, r2}
 2445 024e 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2446 0250 7CAF     		add	r7, sp, #496
 2447 0252 04F15805 		add	r5, r4, #88
 2448 0256 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2449 0258 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2450 025a 81AD     		add	r5, sp, #516
 2451 025c 0FC5     		stmia	r5!, {r0, r1, r2, r3}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 44


 2452 025e 04F16C0E 		add	lr, r4, #108
 2453 0262 039B     		ldr	r3, [sp, #12]
 2454 0264 3B60     		str	r3, [r7]
 2455 0266 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2456 026a 049F     		ldr	r7, [sp, #16]
 2457 026c 2F60     		str	r7, [r5]
 2458 026e 0DF5067A 		add	r10, sp, #536
 2459 0272 04F18005 		add	r5, r4, #128
 2460 0276 8DED799A 		vstr.32	s18, [sp, #484]
 2461 027a CDED7A8A 		vstr.32	s17, [sp, #488]
 2462 027e 8DED7B8A 		vstr.32	s16, [sp, #492]
 2463 0282 CDED78CA 		vstr.32	s25, [sp, #480]
 2464 0286 AAE80F00 		stmia	r10!, {r0, r1, r2, r3}
 2465 028a 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2466 028c 0DF50B7E 		add	lr, sp, #556
 2467 0290 04F19405 		add	r5, r4, #148
 2468 0294 AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 2469 0298 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2470 029a 90AF     		add	r7, sp, #576
 2471 029c 04F1A805 		add	r5, r4, #168
 2472 02a0 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2473 02a2 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2474 02a4 0B9D     		ldr	r5, [sp, #44]
 2475 02a6 CAF80050 		str	r5, [r10]
 2476 02aa 0C9D     		ldr	r5, [sp, #48]
 2477 02ac CEF80050 		str	r5, [lr]
 2478 02b0 04F1BC0B 		add	fp, r4, #188
 2479 02b4 0D9D     		ldr	r5, [sp, #52]
 2480 02b6 3D60     		str	r5, [r7]
 2481 02b8 95AE     		add	r6, sp, #596
 2482 02ba 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2483 02bc BBE80F00 		ldmia	fp!, {r0, r1, r2, r3}
 2484 02c0 04F1D007 		add	r7, r4, #208
 2485 02c4 0DF51A7E 		add	lr, sp, #616
 2486 02c8 AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 2487 02cc 0FCF     		ldmia	r7!, {r0, r1, r2, r3}
 2488 02ce 04F1E40A 		add	r10, r4, #228
 2489 02d2 9FAF     		add	r7, sp, #636
 2490 02d4 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2491 02d6 BAE80F00 		ldmia	r10!, {r0, r1, r2, r3}
 2492 02da F834     		adds	r4, r4, #248
 2493 02dc 0DF5247A 		add	r10, sp, #656
 2494 02e0 AAE80F00 		stmia	r10!, {r0, r1, r2, r3}
 2495 02e4 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 2496 02e6 0E9D     		ldr	r5, [sp, #56]
 2497 02e8 3560     		str	r5, [r6]
 2498 02ea A9AC     		add	r4, sp, #676
 2499 02ec CEF800C0 		str	ip, [lr]
 2500 02f0 C7F80080 		str	r8, [r7]
 2501 02f4 0F9D     		ldr	r5, [sp, #60]
 2502 02f6 CAF80050 		str	r5, [r10]
 2503 02fa 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 2504 02fc 019B     		ldr	r3, [sp, #4]
 2505 02fe 059A     		ldr	r2, [sp, #20]
 2506 0300 2260     		str	r2, [r4]
 2507 0302 033B     		subs	r3, r3, #3
 2508 0304 B0EE408A 		vmov.f32	s16, s0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 45


 2509 0308 B0EE609A 		vmov.f32	s18, s1
 2510 030c F0EE418A 		vmov.f32	s17, s2
 2511 0310 8DEDAECA 		vstr.32	s24, [sp, #696]
 2512 0314 CDEDAFBA 		vstr.32	s23, [sp, #700]
 2513 0318 8DEDB0BA 		vstr.32	s22, [sp, #704]
 2514 031c CDEDB1AA 		vstr.32	s21, [sp, #708]
 2515 0320 8DEDB2AA 		vstr.32	s20, [sp, #712]
 2516 0324 CDEDB39A 		vstr.32	s19, [sp, #716]
 2517 0328 CDEDB41A 		vstr.32	s3, [sp, #720]
 2518 032c 8DEDB52A 		vstr.32	s4, [sp, #724]
 2519 0330 CDEDB62A 		vstr.32	s5, [sp, #728]
 2520 0334 8DEDB73A 		vstr.32	s6, [sp, #732]
 2521 0338 CDEDB83A 		vstr.32	s7, [sp, #736]
 2522 033c 8DEDB94A 		vstr.32	s8, [sp, #740]
 2523 0340 CDEDBA4A 		vstr.32	s9, [sp, #744]
 2524 0344 8DEDBB5A 		vstr.32	s10, [sp, #748]
 2525 0348 CDEDBC5A 		vstr.32	s11, [sp, #752]
 2526 034c 8DEDBD6A 		vstr.32	s12, [sp, #756]
 2527 0350 CDEDBE6A 		vstr.32	s13, [sp, #760]
 2528 0354 8DEDBF7A 		vstr.32	s14, [sp, #764]
 2529 0358 CDEDC07A 		vstr.32	s15, [sp, #768]
 2530 035c 8DF80493 		strb	r9, [sp, #772]
 2531 0360 052B     		cmp	r3, #5
 2532 0362 00F2AA80 		bhi	.L197
 2533 0366 DFE803F0 		tbb	[pc, r3]
 2534              	.L199:
 2535 036a 69       		.byte	(.L198-.L199)/2
 2536 036b 7E       		.byte	(.L200-.L199)/2
 2537 036c 93       		.byte	(.L201-.L199)/2
 2538 036d 54       		.byte	(.L202-.L199)/2
 2539 036e 07       		.byte	(.L204-.L199)/2
 2540 036f 07       		.byte	(.L204-.L199)/2
 2541              		.p2align 1
 2542              	.L224:
 2543              		.align	2
 2544              	.L223:
 2545 0370 08000000 		.word	.LANCHOR4+8
 2546 0374 CDCC4C3E 		.word	1045220557
 2547              	.L204:
 2548 0378 9DED1D7A 		vldr.32	s14, [sp, #116]
 2549 037c 5FED036A 		vldr.32	s13, .L223+4
 2550 0380 DDED747A 		vldr.32	s15, [sp, #464]
 2551 0384 37EE267A 		vadd.f32	s14, s14, s13
 2552 0388 77EEE67A 		vsub.f32	s15, s15, s13
 2553 038c 14A8     		add	r0, sp, #80
 2554 038e 8DED1D7A 		vstr.32	s14, [sp, #116]
 2555 0392 CDED747A 		vstr.32	s15, [sp, #464]
 2556 0396 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2557 039a 6BA8     		add	r0, sp, #428
 2558 039c FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2559              	.L205:
 2560 03a0 11AC     		add	r4, sp, #68
 2561 03a2 14A8     		add	r0, sp, #80
 2562 03a4 2146     		mov	r1, r4
 2563 03a6 B0EE681A 		vmov.f32	s2, s17
 2564 03aa F0EE490A 		vmov.f32	s1, s18
 2565 03ae B0EE480A 		vmov.f32	s0, s16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 46


 2566 03b2 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2567 03b6 019B     		ldr	r3, [sp, #4]
 2568 03b8 A568     		ldr	r5, [r4, #8]	@ float
 2569 03ba 002B     		cmp	r3, #0
 2570 03bc 40F0A880 		bne	.L213
 2571              	.L207:
 2572 03c0 5FED147A 		vldr.32	s15, .L223+4
 2573 03c4 38EE678A 		vsub.f32	s16, s16, s15
 2574              	.L211:
 2575 03c8 F0EE490A 		vmov.f32	s1, s18
 2576 03cc B0EE480A 		vmov.f32	s0, s16
 2577 03d0 B0EE681A 		vmov.f32	s2, s17
 2578 03d4 6BA8     		add	r0, sp, #428
 2579 03d6 2146     		mov	r1, r4
 2580 03d8 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2581 03dc 2846     		mov	r0, r5	@ float
 2582 03de FFF7FEFF 		bl	__aeabi_f2d
 2583 03e2 0646     		mov	r6, r0
 2584 03e4 A068     		ldr	r0, [r4, #8]	@ float
 2585 03e6 0F46     		mov	r7, r1
 2586 03e8 FFF7FEFF 		bl	__aeabi_f2d
 2587 03ec 0246     		mov	r2, r0
 2588 03ee 0B46     		mov	r3, r1
 2589 03f0 3046     		mov	r0, r6
 2590 03f2 3946     		mov	r1, r7
 2591 03f4 FFF7FEFF 		bl	__aeabi_dsub
 2592 03f8 56A3     		adr	r3, .L225+4
 2593 03fa D3E90023 		ldrd	r2, [r3]
 2594 03fe FFF7FEFF 		bl	__aeabi_ddiv
 2595 0402 41EC100B 		vmov	d0, r0, r1
 2596 0406 0DF5437D 		add	sp, sp, #780
 2597              		@ sp needed
 2598 040a BDEC0A8B 		vldm	sp!, {d8-d12}
 2599 040e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2600              	.L202:
 2601 0412 9DED1A7A 		vldr.32	s14, [sp, #104]
 2602 0416 DFED4E6A 		vldr.32	s13, .L225
 2603 041a DDED717A 		vldr.32	s15, [sp, #452]
 2604 041e 37EE267A 		vadd.f32	s14, s14, s13
 2605 0422 77EEE67A 		vsub.f32	s15, s15, s13
 2606 0426 14A8     		add	r0, sp, #80
 2607 0428 8DED1A7A 		vstr.32	s14, [sp, #104]
 2608 042c CDED717A 		vstr.32	s15, [sp, #452]
 2609 0430 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2610 0434 6BA8     		add	r0, sp, #428
 2611 0436 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2612 043a B1E7     		b	.L205
 2613              	.L198:
 2614 043c 9DED1C7A 		vldr.32	s14, [sp, #112]
 2615 0440 DFED436A 		vldr.32	s13, .L225
 2616 0444 DDED737A 		vldr.32	s15, [sp, #460]
 2617 0448 37EE267A 		vadd.f32	s14, s14, s13
 2618 044c 77EEE67A 		vsub.f32	s15, s15, s13
 2619 0450 14A8     		add	r0, sp, #80
 2620 0452 8DED1C7A 		vstr.32	s14, [sp, #112]
 2621 0456 CDED737A 		vstr.32	s15, [sp, #460]
 2622 045a FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 47


 2623 045e 6BA8     		add	r0, sp, #428
 2624 0460 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2625 0464 9CE7     		b	.L205
 2626              	.L200:
 2627 0466 9DED1E7A 		vldr.32	s14, [sp, #120]
 2628 046a DFED396A 		vldr.32	s13, .L225
 2629 046e DDED757A 		vldr.32	s15, [sp, #468]
 2630 0472 37EE267A 		vadd.f32	s14, s14, s13
 2631 0476 77EEE67A 		vsub.f32	s15, s15, s13
 2632 047a 14A8     		add	r0, sp, #80
 2633 047c 8DED1E7A 		vstr.32	s14, [sp, #120]
 2634 0480 CDED757A 		vstr.32	s15, [sp, #468]
 2635 0484 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2636 0488 6BA8     		add	r0, sp, #428
 2637 048a FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2638 048e 87E7     		b	.L205
 2639              	.L201:
 2640 0490 9DED1F7A 		vldr.32	s14, [sp, #124]
 2641 0494 DFED2E6A 		vldr.32	s13, .L225
 2642 0498 DDED767A 		vldr.32	s15, [sp, #472]
 2643 049c 37EE267A 		vadd.f32	s14, s14, s13
 2644 04a0 77EEE67A 		vsub.f32	s15, s15, s13
 2645 04a4 14A8     		add	r0, sp, #80
 2646 04a6 8DED1F7A 		vstr.32	s14, [sp, #124]
 2647 04aa CDED767A 		vstr.32	s15, [sp, #472]
 2648 04ae FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2649 04b2 6BA8     		add	r0, sp, #428
 2650 04b4 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2651 04b8 72E7     		b	.L205
 2652              	.L197:
 2653 04ba 019B     		ldr	r3, [sp, #4]
 2654 04bc 53B9     		cbnz	r3, .L206
 2655 04be 9FED240A 		vldr.32	s0, .L225
 2656 04c2 11AC     		add	r4, sp, #68
 2657 04c4 14A8     		add	r0, sp, #80
 2658 04c6 38EE000A 		vadd.f32	s0, s16, s0
 2659 04ca 2146     		mov	r1, r4
 2660 04cc FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2661 04d0 A568     		ldr	r5, [r4, #8]	@ float
 2662 04d2 75E7     		b	.L207
 2663              	.L206:
 2664 04d4 019B     		ldr	r3, [sp, #4]
 2665 04d6 012B     		cmp	r3, #1
 2666 04d8 26D1     		bne	.L208
 2667 04da DFED1D0A 		vldr.32	s1, .L225
 2668 04de 11AC     		add	r4, sp, #68
 2669 04e0 14A8     		add	r0, sp, #80
 2670 04e2 79EE200A 		vadd.f32	s1, s18, s1
 2671 04e6 2146     		mov	r1, r4
 2672 04e8 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2673 04ec A568     		ldr	r5, [r4, #8]	@ float
 2674              	.L209:
 2675 04ee DFED187A 		vldr.32	s15, .L225
 2676 04f2 39EE679A 		vsub.f32	s18, s18, s15
 2677 04f6 67E7     		b	.L211
 2678              	.L222:
 2679 04f8 11AC     		add	r4, sp, #68
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 48


 2680 04fa 14A8     		add	r0, sp, #80
 2681 04fc 2146     		mov	r1, r4
 2682 04fe B0EE681A 		vmov.f32	s2, s17
 2683 0502 F0EE490A 		vmov.f32	s1, s18
 2684 0506 B0EE480A 		vmov.f32	s0, s16
 2685 050a FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2686 050e A568     		ldr	r5, [r4, #8]	@ float
 2687              	.L213:
 2688 0510 019B     		ldr	r3, [sp, #4]
 2689 0512 012B     		cmp	r3, #1
 2690 0514 EBD0     		beq	.L209
 2691 0516 019B     		ldr	r3, [sp, #4]
 2692 0518 022B     		cmp	r3, #2
 2693 051a 7FF455AF 		bne	.L211
 2694              	.L210:
 2695 051e DFED0C7A 		vldr.32	s15, .L225
 2696 0522 78EEE78A 		vsub.f32	s17, s17, s15
 2697 0526 4FE7     		b	.L211
 2698              	.L208:
 2699 0528 019B     		ldr	r3, [sp, #4]
 2700 052a 022B     		cmp	r3, #2
 2701 052c E4D1     		bne	.L222
 2702 052e 9FED081A 		vldr.32	s2, .L225
 2703 0532 11AC     		add	r4, sp, #68
 2704 0534 14A8     		add	r0, sp, #80
 2705 0536 38EE811A 		vadd.f32	s2, s17, s2
 2706 053a 2146     		mov	r1, r4
 2707 053c F0EE490A 		vmov.f32	s1, s18
 2708 0540 B0EE480A 		vmov.f32	s0, s16
 2709 0544 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2710 0548 A568     		ldr	r5, [r4, #8]	@ float
 2711 054a E8E7     		b	.L210
 2712              	.L226:
 2713 054c AFF30080 		.align	3
 2714              	.L225:
 2715 0550 CDCC4C3E 		.word	1045220557
 2716 0554 000000A0 		.word	-1610612736
 2717 0558 9999D93F 		.word	1071225241
 2718              		.size	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff, .-_ZNK21HangprinterKinematics17ComputeD
 2719              		.global	__aeabi_d2f
 2720              		.section	.text._ZN21HangprinterKinematics6AdjustEjPKd,"ax",%progbits
 2721              		.align	1
 2722              		.p2align 2,,3
 2723              		.global	_ZN21HangprinterKinematics6AdjustEjPKd
 2724              		.syntax unified
 2725              		.thumb
 2726              		.thumb_func
 2727              		.fpu fpv4-sp-d16
 2728              		.type	_ZN21HangprinterKinematics6AdjustEjPKd, %function
 2729              	_ZN21HangprinterKinematics6AdjustEjPKd:
 2730              		@ args = 0, pretend = 0, frame = 0
 2731              		@ frame_needed = 0, uses_anonymous_args = 0
 2732 0000 0329     		cmp	r1, #3
 2733 0002 70B5     		push	{r4, r5, r6, lr}
 2734 0004 0446     		mov	r4, r0
 2735 0006 53D9     		bls	.L229
 2736 0008 0D46     		mov	r5, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 49


 2737 000a D2E90601 		ldrd	r0, [r2, #24]
 2738 000e 1646     		mov	r6, r2
 2739 0010 FFF7FEFF 		bl	__aeabi_d2f
 2740 0014 D4ED087A 		vldr.32	s15, [r4, #32]
 2741 0018 07EE100A 		vmov	s14, r0
 2742 001c 77EE877A 		vadd.f32	s15, s15, s14
 2743 0020 042D     		cmp	r5, #4
 2744 0022 C4ED087A 		vstr.32	s15, [r4, #32]
 2745 0026 43D0     		beq	.L229
 2746 0028 D6E90801 		ldrd	r0, [r6, #32]
 2747 002c FFF7FEFF 		bl	__aeabi_d2f
 2748 0030 D4ED0A7A 		vldr.32	s15, [r4, #40]
 2749 0034 07EE100A 		vmov	s14, r0
 2750 0038 77EE877A 		vadd.f32	s15, s15, s14
 2751 003c 052D     		cmp	r5, #5
 2752 003e C4ED0A7A 		vstr.32	s15, [r4, #40]
 2753 0042 35D0     		beq	.L229
 2754 0044 D6E90A01 		ldrd	r0, [r6, #40]
 2755 0048 FFF7FEFF 		bl	__aeabi_d2f
 2756 004c D4ED0B7A 		vldr.32	s15, [r4, #44]
 2757 0050 07EE100A 		vmov	s14, r0
 2758 0054 77EE877A 		vadd.f32	s15, s15, s14
 2759 0058 062D     		cmp	r5, #6
 2760 005a C4ED0B7A 		vstr.32	s15, [r4, #44]
 2761 005e 27D0     		beq	.L229
 2762 0060 D6E90C01 		ldrd	r0, [r6, #48]
 2763 0064 FFF7FEFF 		bl	__aeabi_d2f
 2764 0068 D4ED067A 		vldr.32	s15, [r4, #24]
 2765 006c 07EE100A 		vmov	s14, r0
 2766 0070 77EE877A 		vadd.f32	s15, s15, s14
 2767 0074 072D     		cmp	r5, #7
 2768 0076 C4ED067A 		vstr.32	s15, [r4, #24]
 2769 007a 19D0     		beq	.L229
 2770 007c D6E90E01 		ldrd	r0, [r6, #56]
 2771 0080 FFF7FEFF 		bl	__aeabi_d2f
 2772 0084 D4ED097A 		vldr.32	s15, [r4, #36]
 2773 0088 07EE100A 		vmov	s14, r0
 2774 008c 77EE877A 		vadd.f32	s15, s15, s14
 2775 0090 082D     		cmp	r5, #8
 2776 0092 C4ED097A 		vstr.32	s15, [r4, #36]
 2777 0096 0BD0     		beq	.L229
 2778 0098 D6E91001 		ldrd	r0, [r6, #64]
 2779 009c FFF7FEFF 		bl	__aeabi_d2f
 2780 00a0 D4ED0C7A 		vldr.32	s15, [r4, #48]
 2781 00a4 07EE100A 		vmov	s14, r0
 2782 00a8 77EE877A 		vadd.f32	s15, s15, s14
 2783 00ac C4ED0C7A 		vstr.32	s15, [r4, #48]
 2784              	.L229:
 2785 00b0 2046     		mov	r0, r4
 2786 00b2 BDE87040 		pop	{r4, r5, r6, lr}
 2787 00b6 FFF7FEBF 		b	_ZN21HangprinterKinematics6RecalcEv
 2788              		.size	_ZN21HangprinterKinematics6AdjustEjPKd, .-_ZN21HangprinterKinematics6AdjustEjPKd
 2789 00ba 00BF     		.section	.text._ZNK21HangprinterKinematics15PrintParametersERK9StringRef,"ax",%progbits
 2790              		.align	1
 2791              		.p2align 2,,3
 2792              		.global	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 2793              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 50


 2794              		.thumb
 2795              		.thumb_func
 2796              		.fpu fpv4-sp-d16
 2797              		.type	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef, %function
 2798              	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef:
 2799              		@ args = 0, pretend = 0, frame = 0
 2800              		@ frame_needed = 0, uses_anonymous_args = 0
 2801 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2802 0002 0446     		mov	r4, r0
 2803 0004 91B0     		sub	sp, sp, #68
 2804 0006 0069     		ldr	r0, [r0, #16]	@ float
 2805 0008 0D46     		mov	r5, r1
 2806 000a FFF7FEFF 		bl	__aeabi_f2d
 2807 000e 0646     		mov	r6, r0
 2808 0010 206B     		ldr	r0, [r4, #48]	@ float
 2809 0012 0F46     		mov	r7, r1
 2810 0014 FFF7FEFF 		bl	__aeabi_f2d
 2811 0018 CDE90E01 		strd	r0, [sp, #56]
 2812 001c E06A     		ldr	r0, [r4, #44]	@ float
 2813 001e FFF7FEFF 		bl	__aeabi_f2d
 2814 0022 CDE90C01 		strd	r0, [sp, #48]
 2815 0026 A06A     		ldr	r0, [r4, #40]	@ float
 2816 0028 FFF7FEFF 		bl	__aeabi_f2d
 2817 002c CDE90A01 		strd	r0, [sp, #40]
 2818 0030 606A     		ldr	r0, [r4, #36]	@ float
 2819 0032 FFF7FEFF 		bl	__aeabi_f2d
 2820 0036 CDE90801 		strd	r0, [sp, #32]
 2821 003a 206A     		ldr	r0, [r4, #32]	@ float
 2822 003c FFF7FEFF 		bl	__aeabi_f2d
 2823 0040 CDE90601 		strd	r0, [sp, #24]
 2824 0044 E069     		ldr	r0, [r4, #28]	@ float
 2825 0046 FFF7FEFF 		bl	__aeabi_f2d
 2826 004a CDE90401 		strd	r0, [sp, #16]
 2827 004e A069     		ldr	r0, [r4, #24]	@ float
 2828 0050 FFF7FEFF 		bl	__aeabi_f2d
 2829 0054 CDE90201 		strd	r0, [sp, #8]
 2830 0058 6069     		ldr	r0, [r4, #20]	@ float
 2831 005a FFF7FEFF 		bl	__aeabi_f2d
 2832 005e 3246     		mov	r2, r6
 2833 0060 CDE90001 		strd	r0, [sp]
 2834 0064 3B46     		mov	r3, r7
 2835 0066 2846     		mov	r0, r5
 2836 0068 0249     		ldr	r1, .L249
 2837 006a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2838 006e 11B0     		add	sp, sp, #68
 2839              		@ sp needed
 2840 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 2841              	.L250:
 2842 0072 00BF     		.align	2
 2843              	.L249:
 2844 0074 00000000 		.word	.LC27
 2845              		.size	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef, .-_ZNK21HangprinterKinematics15Pr
 2846              		.section	.text._ZN6StringILj200EE6printfEPKcz,"axG",%progbits,_ZN6StringILj200EE6printfEPKcz,comda
 2847              		.align	1
 2848              		.p2align 2,,3
 2849              		.weak	_ZN6StringILj200EE6printfEPKcz
 2850              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 51


 2851              		.thumb
 2852              		.thumb_func
 2853              		.fpu fpv4-sp-d16
 2854              		.type	_ZN6StringILj200EE6printfEPKcz, %function
 2855              	_ZN6StringILj200EE6printfEPKcz:
 2856              		@ args = 4, pretend = 12, frame = 16
 2857              		@ frame_needed = 0, uses_anonymous_args = 1
 2858 0000 0EB4     		push	{r1, r2, r3}
 2859 0002 00B5     		push	{lr}
 2860 0004 84B0     		sub	sp, sp, #16
 2861 0006 05AA     		add	r2, sp, #20
 2862 0008 0290     		str	r0, [sp, #8]
 2863 000a 52F8041B 		ldr	r1, [r2], #4
 2864 000e 0192     		str	r2, [sp, #4]
 2865 0010 C923     		movs	r3, #201
 2866 0012 02A8     		add	r0, sp, #8
 2867 0014 0393     		str	r3, [sp, #12]
 2868 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 2869 001a 04B0     		add	sp, sp, #16
 2870              		@ sp needed
 2871 001c 5DF804EB 		ldr	lr, [sp], #4
 2872 0020 03B0     		add	sp, sp, #12
 2873 0022 7047     		bx	lr
 2874              		.size	_ZN6StringILj200EE6printfEPKcz, .-_ZN6StringILj200EE6printfEPKcz
 2875              		.section	.text._ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore,"ax",%progbits
 2876              		.align	1
 2877              		.p2align 2,,3
 2878              		.global	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore
 2879              		.syntax unified
 2880              		.thumb
 2881              		.thumb_func
 2882              		.fpu fpv4-sp-d16
 2883              		.type	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore, %function
 2884              	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore:
 2885              		@ args = 0, pretend = 0, frame = 208
 2886              		@ frame_needed = 0, uses_anonymous_args = 0
 2887 0000 2DE97043 		push	{r4, r5, r6, r8, r9, lr}
 2888 0004 0D46     		mov	r5, r1
 2889 0006 D2B0     		sub	sp, sp, #328
 2890 0008 0446     		mov	r4, r0
 2891 000a 3349     		ldr	r1, .L259
 2892 000c 2846     		mov	r0, r5
 2893 000e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 2894 0012 0028     		cmp	r0, #0
 2895 0014 5DD0     		beq	.L254
 2896 0016 52AE     		add	r6, sp, #328
 2897 0018 0023     		movs	r3, #0
 2898 001a 2069     		ldr	r0, [r4, #16]	@ float
 2899 001c 06F8CC3D 		strb	r3, [r6, #-204]!
 2900 0020 FFF7FEFF 		bl	__aeabi_f2d
 2901 0024 8046     		mov	r8, r0
 2902 0026 206D     		ldr	r0, [r4, #80]	@ float
 2903 0028 8946     		mov	r9, r1
 2904 002a FFF7FEFF 		bl	__aeabi_f2d
 2905 002e CDE91C01 		strd	r0, [sp, #112]
 2906 0032 E06C     		ldr	r0, [r4, #76]	@ float
 2907 0034 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 52


 2908 0038 CDE91A01 		strd	r0, [sp, #104]
 2909 003c A06C     		ldr	r0, [r4, #72]	@ float
 2910 003e FFF7FEFF 		bl	__aeabi_f2d
 2911 0042 CDE91801 		strd	r0, [sp, #96]
 2912 0046 606C     		ldr	r0, [r4, #68]	@ float
 2913 0048 FFF7FEFF 		bl	__aeabi_f2d
 2914 004c CDE91601 		strd	r0, [sp, #88]
 2915 0050 206C     		ldr	r0, [r4, #64]	@ float
 2916 0052 FFF7FEFF 		bl	__aeabi_f2d
 2917 0056 CDE91401 		strd	r0, [sp, #80]
 2918 005a E06B     		ldr	r0, [r4, #60]	@ float
 2919 005c FFF7FEFF 		bl	__aeabi_f2d
 2920 0060 CDE91201 		strd	r0, [sp, #72]
 2921 0064 606B     		ldr	r0, [r4, #52]	@ float
 2922 0066 FFF7FEFF 		bl	__aeabi_f2d
 2923 006a CDE91001 		strd	r0, [sp, #64]
 2924 006e 206B     		ldr	r0, [r4, #48]	@ float
 2925 0070 FFF7FEFF 		bl	__aeabi_f2d
 2926 0074 CDE90E01 		strd	r0, [sp, #56]
 2927 0078 E06A     		ldr	r0, [r4, #44]	@ float
 2928 007a FFF7FEFF 		bl	__aeabi_f2d
 2929 007e CDE90C01 		strd	r0, [sp, #48]
 2930 0082 A06A     		ldr	r0, [r4, #40]	@ float
 2931 0084 FFF7FEFF 		bl	__aeabi_f2d
 2932 0088 CDE90A01 		strd	r0, [sp, #40]
 2933 008c 606A     		ldr	r0, [r4, #36]	@ float
 2934 008e FFF7FEFF 		bl	__aeabi_f2d
 2935 0092 CDE90801 		strd	r0, [sp, #32]
 2936 0096 206A     		ldr	r0, [r4, #32]	@ float
 2937 0098 FFF7FEFF 		bl	__aeabi_f2d
 2938 009c CDE90601 		strd	r0, [sp, #24]
 2939 00a0 E069     		ldr	r0, [r4, #28]	@ float
 2940 00a2 FFF7FEFF 		bl	__aeabi_f2d
 2941 00a6 CDE90401 		strd	r0, [sp, #16]
 2942 00aa A069     		ldr	r0, [r4, #24]	@ float
 2943 00ac FFF7FEFF 		bl	__aeabi_f2d
 2944 00b0 CDE90201 		strd	r0, [sp, #8]
 2945 00b4 6069     		ldr	r0, [r4, #20]	@ float
 2946 00b6 FFF7FEFF 		bl	__aeabi_f2d
 2947 00ba 4246     		mov	r2, r8
 2948 00bc CDE90001 		strd	r0, [sp]
 2949 00c0 4B46     		mov	r3, r9
 2950 00c2 0649     		ldr	r1, .L259+4
 2951 00c4 3046     		mov	r0, r6
 2952 00c6 FFF7FEFF 		bl	_ZN6StringILj200EE6printfEPKcz
 2953 00ca 3146     		mov	r1, r6
 2954 00cc 2846     		mov	r0, r5
 2955 00ce FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 2956              	.L254:
 2957 00d2 52B0     		add	sp, sp, #328
 2958              		@ sp needed
 2959 00d4 BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 2960              	.L260:
 2961              		.align	2
 2962              	.L259:
 2963 00d8 00000000 		.word	.LC28
 2964 00dc 1C000000 		.word	.LC29
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 53


 2965              		.size	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK21HangprinterKine
 2966              		.global	__aeabi_dmul
 2967              		.section	.text._ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj,"axG",%progbits,_ZN11FixedMatrixIdLj9
 2968              		.align	1
 2969              		.p2align 2,,3
 2970              		.weak	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 2971              		.syntax unified
 2972              		.thumb
 2973              		.thumb_func
 2974              		.fpu fpv4-sp-d16
 2975              		.type	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, %function
 2976              	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj:
 2977              		@ args = 0, pretend = 0, frame = 64
 2978              		@ frame_needed = 0, uses_anonymous_args = 0
 2979 0000 002A     		cmp	r2, #0
 2980 0002 00F02082 		beq	.L325
 2981 0006 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2982 000a 2DED088B 		vpush.64	{d8, d9, d10, d11}
 2983 000e 91B0     		sub	sp, sp, #68
 2984 0010 AF4E     		ldr	r6, .L342+8
 2985 0012 0092     		str	r2, [sp]
 2986 0014 0246     		mov	r2, r0
 2987 0016 0F91     		str	r1, [sp, #60]
 2988 0018 52F8083B 		ldr	r3, [r2], #8
 2989 001c 0D92     		str	r2, [sp, #52]
 2990 001e 9F68     		ldr	r7, [r3, #8]
 2991 0020 0023     		movs	r3, #0
 2992 0022 BB46     		mov	fp, r7
 2993 0024 0A93     		str	r3, [sp, #40]
 2994 0026 CDE90B33 		strd	r3, r3, [sp, #44]
 2995 002a 0493     		str	r3, [sp, #16]
 2996 002c B345     		cmp	fp, r6
 2997 002e 00F15803 		add	r3, r0, #88
 2998 0032 9FEDA5BB 		vldr.64	d11, .L342
 2999 0036 0E93     		str	r3, [sp, #56]
 3000 0038 8246     		mov	r10, r0
 3001 003a 40F09281 		bne	.L263
 3002              	.L339:
 3003 003e 0D9B     		ldr	r3, [sp, #52]
 3004 0040 0A9A     		ldr	r2, [sp, #40]
 3005 0042 9818     		adds	r0, r3, r2
 3006              	.L264:
 3007 0044 D0E90001 		ldrd	r0, [r0]
 3008 0048 FFF7FEFF 		bl	__aeabi_d2f
 3009 004c 049B     		ldr	r3, [sp, #16]
 3010 004e 0099     		ldr	r1, [sp]
 3011 0050 0133     		adds	r3, r3, #1
 3012 0052 07EE900A 		vmov	s15, r0
 3013 0056 9942     		cmp	r1, r3
 3014 0058 0693     		str	r3, [sp, #24]
 3015 005a B0EEE78A 		vabs.f32	s16, s15
 3016 005e 40F29680 		bls	.L265
 3017 0062 CB1A     		subs	r3, r1, r3
 3018 0064 0193     		str	r3, [sp, #4]
 3019 0066 0A9A     		ldr	r2, [sp, #40]
 3020 0068 0E9B     		ldr	r3, [sp, #56]
 3021 006a 1344     		add	r3, r3, r2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 54


 3022 006c 6FF04F07 		mvn	r7, #79
 3023 0070 0025     		movs	r5, #0
 3024 0072 0293     		str	r3, [sp, #8]
 3025 0074 5C46     		mov	r4, fp
 3026 0076 06E0     		b	.L279
 3027              	.L268:
 3028 0078 019B     		ldr	r3, [sp, #4]
 3029 007a 0135     		adds	r5, r5, #1
 3030 007c AB42     		cmp	r3, r5
 3031 007e A7F15007 		sub	r7, r7, #80
 3032 0082 00F08380 		beq	.L328
 3033              	.L279:
 3034 0086 069B     		ldr	r3, [sp, #24]
 3035 0088 B442     		cmp	r4, r6
 3036 008a 03EB0509 		add	r9, r3, r5
 3037 008e 6AD1     		bne	.L266
 3038 0090 029B     		ldr	r3, [sp, #8]
 3039 0092 05EB8500 		add	r0, r5, r5, lsl #2
 3040 0096 03EB0010 		add	r0, r3, r0, lsl #4
 3041              	.L267:
 3042 009a D0E90001 		ldrd	r0, [r0]
 3043 009e FFF7FEFF 		bl	__aeabi_d2f
 3044 00a2 07EE900A 		vmov	s15, r0
 3045 00a6 B0EEE7AA 		vabs.f32	s20, s15
 3046 00aa B4EEC8AA 		vcmpe.f32	s20, s16
 3047 00ae F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3048 00b2 E1DD     		ble	.L268
 3049 00b4 049B     		ldr	r3, [sp, #16]
 3050 00b6 4B45     		cmp	r3, r9
 3051 00b8 00F07C81 		beq	.L314
 3052 00bc 0B9A     		ldr	r2, [sp, #44]
 3053 00be 092A     		cmp	r2, #9
 3054 00c0 00F27881 		bhi	.L314
 3055 00c4 029A     		ldr	r2, [sp, #8]
 3056 00c6 05EB8508 		add	r8, r5, r5, lsl #2
 3057 00ca 9B46     		mov	fp, r3
 3058 00cc 2B46     		mov	r3, r5
 3059 00ce 02EB0818 		add	r8, r2, r8, lsl #4
 3060 00d2 4D46     		mov	r5, r9
 3061 00d4 B946     		mov	r9, r7
 3062 00d6 1F46     		mov	r7, r3
 3063 00d8 1AE0     		b	.L278
 3064              	.L330:
 3065 00da 08EB0900 		add	r0, r8, r9
 3066 00de B442     		cmp	r4, r6
 3067 00e0 90ED008B 		vldr.64	d8, [r0]
 3068 00e4 21D1     		bne	.L272
 3069              	.L331:
 3070 00e6 4046     		mov	r0, r8
 3071 00e8 B442     		cmp	r4, r6
 3072 00ea 90ED009B 		vldr.64	d9, [r0]
 3073 00ee 27D1     		bne	.L274
 3074              	.L332:
 3075 00f0 08EB0900 		add	r0, r8, r9
 3076 00f4 B442     		cmp	r4, r6
 3077 00f6 80ED009B 		vstr.64	d9, [r0]
 3078 00fa 2CD1     		bne	.L276
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 55


 3079              	.L333:
 3080 00fc 4046     		mov	r0, r8
 3081              	.L277:
 3082 00fe 0BF1010B 		add	fp, fp, #1
 3083 0102 BBF10A0F 		cmp	fp, #10
 3084 0106 80ED008B 		vstr.64	d8, [r0]
 3085 010a 08F10808 		add	r8, r8, #8
 3086 010e 32D0     		beq	.L329
 3087              	.L278:
 3088 0110 B442     		cmp	r4, r6
 3089 0112 E2D0     		beq	.L330
 3090 0114 5A46     		mov	r2, fp
 3091 0116 0499     		ldr	r1, [sp, #16]
 3092 0118 5046     		mov	r0, r10
 3093 011a A047     		blx	r4
 3094 011c DAF80020 		ldr	r2, [r10]
 3095 0120 9468     		ldr	r4, [r2, #8]
 3096 0122 B442     		cmp	r4, r6
 3097 0124 90ED008B 		vldr.64	d8, [r0]
 3098 0128 DDD0     		beq	.L331
 3099              	.L272:
 3100 012a 5A46     		mov	r2, fp
 3101 012c 2946     		mov	r1, r5
 3102 012e 5046     		mov	r0, r10
 3103 0130 A047     		blx	r4
 3104 0132 DAF80020 		ldr	r2, [r10]
 3105 0136 9468     		ldr	r4, [r2, #8]
 3106 0138 B442     		cmp	r4, r6
 3107 013a 90ED009B 		vldr.64	d9, [r0]
 3108 013e D7D0     		beq	.L332
 3109              	.L274:
 3110 0140 5A46     		mov	r2, fp
 3111 0142 0499     		ldr	r1, [sp, #16]
 3112 0144 5046     		mov	r0, r10
 3113 0146 A047     		blx	r4
 3114 0148 DAF80020 		ldr	r2, [r10]
 3115 014c 9468     		ldr	r4, [r2, #8]
 3116 014e B442     		cmp	r4, r6
 3117 0150 80ED009B 		vstr.64	d9, [r0]
 3118 0154 D2D0     		beq	.L333
 3119              	.L276:
 3120 0156 5A46     		mov	r2, fp
 3121 0158 2946     		mov	r1, r5
 3122 015a 5046     		mov	r0, r10
 3123 015c A047     		blx	r4
 3124 015e DAF80020 		ldr	r2, [r10]
 3125 0162 9468     		ldr	r4, [r2, #8]
 3126 0164 CBE7     		b	.L277
 3127              	.L266:
 3128 0166 049A     		ldr	r2, [sp, #16]
 3129 0168 4946     		mov	r1, r9
 3130 016a 5046     		mov	r0, r10
 3131 016c A047     		blx	r4
 3132 016e DAF80030 		ldr	r3, [r10]
 3133 0172 9C68     		ldr	r4, [r3, #8]
 3134 0174 91E7     		b	.L267
 3135              	.L329:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 56


 3136 0176 3D46     		mov	r5, r7
 3137 0178 019B     		ldr	r3, [sp, #4]
 3138 017a 0135     		adds	r5, r5, #1
 3139 017c 4F46     		mov	r7, r9
 3140 017e AB42     		cmp	r3, r5
 3141 0180 B0EE4A8A 		vmov.f32	s16, s20
 3142 0184 A7F15007 		sub	r7, r7, #80
 3143 0188 7FF47DAF 		bne	.L279
 3144              	.L328:
 3145 018c A346     		mov	fp, r4
 3146              	.L265:
 3147 018e B345     		cmp	fp, r6
 3148 0190 40F01381 		bne	.L280
 3149 0194 0D9B     		ldr	r3, [sp, #52]
 3150 0196 0A9A     		ldr	r2, [sp, #40]
 3151 0198 9818     		adds	r0, r3, r2
 3152              	.L281:
 3153 019a 90ED007B 		vldr.64	d7, [r0]
 3154 019e 0B9B     		ldr	r3, [sp, #44]
 3155 01a0 8DED087B 		vstr.64	d7, [sp, #32]
 3156 01a4 002B     		cmp	r3, #0
 3157 01a6 61D0     		beq	.L295
 3158 01a8 069B     		ldr	r3, [sp, #24]
 3159 01aa 0AEBC303 		add	r3, r10, r3, lsl #3
 3160 01ae 0593     		str	r3, [sp, #20]
 3161 01b0 0C9B     		ldr	r3, [sp, #48]
 3162 01b2 DB00     		lsls	r3, r3, #3
 3163 01b4 0193     		str	r3, [sp, #4]
 3164 01b6 0023     		movs	r3, #0
 3165 01b8 0793     		str	r3, [sp, #28]
 3166 01ba 5F46     		mov	r7, fp
 3167              	.L296:
 3168 01bc B742     		cmp	r7, r6
 3169 01be 40F0F180 		bne	.L285
 3170 01c2 0598     		ldr	r0, [sp, #20]
 3171              	.L286:
 3172 01c4 DDE90823 		ldrd	r2, [sp, #32]
 3173 01c8 D0E90001 		ldrd	r0, [r0]
 3174 01cc FFF7FEFF 		bl	__aeabi_ddiv
 3175 01d0 B742     		cmp	r7, r6
 3176 01d2 CDE90201 		strd	r0, [sp, #8]
 3177 01d6 40F0DD80 		bne	.L287
 3178 01da 0598     		ldr	r0, [sp, #20]
 3179              	.L288:
 3180 01dc 009B     		ldr	r3, [sp]
 3181 01de 069D     		ldr	r5, [sp, #24]
 3182 01e0 1A46     		mov	r2, r3
 3183 01e2 AA42     		cmp	r2, r5
 3184 01e4 80ED00BB 		vstr.64	d11, [r0]
 3185 01e8 33D3     		bcc	.L289
 3186 01ea 059B     		ldr	r3, [sp, #20]
 3187 01ec D146     		mov	r9, r10
 3188 01ee 03F10804 		add	r4, r3, #8
 3189 01f2 1AE0     		b	.L294
 3190              	.L335:
 3191 01f4 019B     		ldr	r3, [sp, #4]
 3192 01f6 1819     		adds	r0, r3, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 57


 3193              	.L291:
 3194 01f8 D0E90023 		ldrd	r2, [r0]
 3195 01fc DDE90201 		ldrd	r0, [sp, #8]
 3196 0200 FFF7FEFF 		bl	__aeabi_dmul
 3197 0204 B742     		cmp	r7, r6
 3198 0206 8246     		mov	r10, r0
 3199 0208 8B46     		mov	fp, r1
 3200 020a 18D1     		bne	.L292
 3201 020c A046     		mov	r8, r4
 3202              	.L293:
 3203 020e 5B46     		mov	r3, fp
 3204 0210 D8E90001 		ldrd	r0, [r8]
 3205 0214 5246     		mov	r2, r10
 3206 0216 FFF7FEFF 		bl	__aeabi_dsub
 3207 021a 009B     		ldr	r3, [sp]
 3208 021c 0135     		adds	r5, r5, #1
 3209 021e AB42     		cmp	r3, r5
 3210 0220 04F10804 		add	r4, r4, #8
 3211 0224 C8E90001 		strd	r0, [r8]
 3212 0228 12D3     		bcc	.L334
 3213              	.L294:
 3214 022a B742     		cmp	r7, r6
 3215 022c E2D0     		beq	.L335
 3216 022e 2A46     		mov	r2, r5
 3217 0230 0499     		ldr	r1, [sp, #16]
 3218 0232 4846     		mov	r0, r9
 3219 0234 B847     		blx	r7
 3220 0236 D9F80030 		ldr	r3, [r9]
 3221 023a 9F68     		ldr	r7, [r3, #8]
 3222 023c DCE7     		b	.L291
 3223              	.L292:
 3224 023e 2A46     		mov	r2, r5
 3225 0240 0799     		ldr	r1, [sp, #28]
 3226 0242 4846     		mov	r0, r9
 3227 0244 B847     		blx	r7
 3228 0246 D9F80030 		ldr	r3, [r9]
 3229 024a 8046     		mov	r8, r0
 3230 024c 9F68     		ldr	r7, [r3, #8]
 3231 024e DEE7     		b	.L293
 3232              	.L334:
 3233 0250 CA46     		mov	r10, r9
 3234              	.L289:
 3235 0252 059A     		ldr	r2, [sp, #20]
 3236 0254 079B     		ldr	r3, [sp, #28]
 3237 0256 5032     		adds	r2, r2, #80
 3238 0258 0592     		str	r2, [sp, #20]
 3239 025a 019A     		ldr	r2, [sp, #4]
 3240 025c 503A     		subs	r2, r2, #80
 3241 025e 0192     		str	r2, [sp, #4]
 3242 0260 049A     		ldr	r2, [sp, #16]
 3243 0262 0133     		adds	r3, r3, #1
 3244 0264 9342     		cmp	r3, r2
 3245 0266 0793     		str	r3, [sp, #28]
 3246 0268 A8D1     		bne	.L296
 3247 026a BB46     		mov	fp, r7
 3248              	.L295:
 3249 026c 009B     		ldr	r3, [sp]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 58


 3250 026e 069A     		ldr	r2, [sp, #24]
 3251 0270 9342     		cmp	r3, r2
 3252 0272 00F0AB80 		beq	.L336
 3253 0276 0C9B     		ldr	r3, [sp, #48]
 3254 0278 0A9A     		ldr	r2, [sp, #40]
 3255 027a 0A33     		adds	r3, r3, #10
 3256 027c 0C93     		str	r3, [sp, #48]
 3257 027e 0E9B     		ldr	r3, [sp, #56]
 3258 0280 1344     		add	r3, r3, r2
 3259 0282 0593     		str	r3, [sp, #20]
 3260 0284 069B     		ldr	r3, [sp, #24]
 3261 0286 0793     		str	r3, [sp, #28]
 3262 0288 6FF04F03 		mvn	r3, #79
 3263 028c 0193     		str	r3, [sp, #4]
 3264 028e 5F46     		mov	r7, fp
 3265              	.L307:
 3266 0290 B742     		cmp	r7, r6
 3267 0292 6FD1     		bne	.L297
 3268 0294 0598     		ldr	r0, [sp, #20]
 3269              	.L298:
 3270 0296 DDE90823 		ldrd	r2, [sp, #32]
 3271 029a D0E90001 		ldrd	r0, [r0]
 3272 029e FFF7FEFF 		bl	__aeabi_ddiv
 3273 02a2 B742     		cmp	r7, r6
 3274 02a4 CDE90201 		strd	r0, [sp, #8]
 3275 02a8 6CD1     		bne	.L299
 3276 02aa 0598     		ldr	r0, [sp, #20]
 3277              	.L300:
 3278 02ac 009B     		ldr	r3, [sp]
 3279 02ae 069D     		ldr	r5, [sp, #24]
 3280 02b0 1A46     		mov	r2, r3
 3281 02b2 AA42     		cmp	r2, r5
 3282 02b4 80ED00BB 		vstr.64	d11, [r0]
 3283 02b8 3BD3     		bcc	.L301
 3284 02ba 059B     		ldr	r3, [sp, #20]
 3285 02bc D146     		mov	r9, r10
 3286 02be 03F10804 		add	r4, r3, #8
 3287 02c2 22E0     		b	.L306
 3288              	.L343:
 3289 02c4 AFF30080 		.align	3
 3290              	.L342:
 3291 02c8 00000000 		.word	0
 3292 02cc 00000000 		.word	0
 3293 02d0 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 3294              	.L338:
 3295 02d4 019B     		ldr	r3, [sp, #4]
 3296 02d6 1819     		adds	r0, r3, r4
 3297              	.L303:
 3298 02d8 D0E90023 		ldrd	r2, [r0]
 3299 02dc DDE90201 		ldrd	r0, [sp, #8]
 3300 02e0 FFF7FEFF 		bl	__aeabi_dmul
 3301 02e4 B742     		cmp	r7, r6
 3302 02e6 8246     		mov	r10, r0
 3303 02e8 8B46     		mov	fp, r1
 3304 02ea 18D1     		bne	.L304
 3305 02ec A046     		mov	r8, r4
 3306              	.L305:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 59


 3307 02ee 5B46     		mov	r3, fp
 3308 02f0 D8E90001 		ldrd	r0, [r8]
 3309 02f4 5246     		mov	r2, r10
 3310 02f6 FFF7FEFF 		bl	__aeabi_dsub
 3311 02fa 009B     		ldr	r3, [sp]
 3312 02fc 0135     		adds	r5, r5, #1
 3313 02fe AB42     		cmp	r3, r5
 3314 0300 04F10804 		add	r4, r4, #8
 3315 0304 C8E90001 		strd	r0, [r8]
 3316 0308 12D3     		bcc	.L337
 3317              	.L306:
 3318 030a B742     		cmp	r7, r6
 3319 030c E2D0     		beq	.L338
 3320 030e 2A46     		mov	r2, r5
 3321 0310 0499     		ldr	r1, [sp, #16]
 3322 0312 4846     		mov	r0, r9
 3323 0314 B847     		blx	r7
 3324 0316 D9F80030 		ldr	r3, [r9]
 3325 031a 9F68     		ldr	r7, [r3, #8]
 3326 031c DCE7     		b	.L303
 3327              	.L304:
 3328 031e 2A46     		mov	r2, r5
 3329 0320 0799     		ldr	r1, [sp, #28]
 3330 0322 4846     		mov	r0, r9
 3331 0324 B847     		blx	r7
 3332 0326 D9F80030 		ldr	r3, [r9]
 3333 032a 8046     		mov	r8, r0
 3334 032c 9F68     		ldr	r7, [r3, #8]
 3335 032e DEE7     		b	.L305
 3336              	.L337:
 3337 0330 CA46     		mov	r10, r9
 3338              	.L301:
 3339 0332 059A     		ldr	r2, [sp, #20]
 3340 0334 079B     		ldr	r3, [sp, #28]
 3341 0336 5032     		adds	r2, r2, #80
 3342 0338 0592     		str	r2, [sp, #20]
 3343 033a 019A     		ldr	r2, [sp, #4]
 3344 033c 503A     		subs	r2, r2, #80
 3345 033e 0192     		str	r2, [sp, #4]
 3346 0340 009A     		ldr	r2, [sp]
 3347 0342 0133     		adds	r3, r3, #1
 3348 0344 9A42     		cmp	r2, r3
 3349 0346 0793     		str	r3, [sp, #28]
 3350 0348 A2D1     		bne	.L307
 3351 034a 0B9B     		ldr	r3, [sp, #44]
 3352 034c 0133     		adds	r3, r3, #1
 3353 034e 0B93     		str	r3, [sp, #44]
 3354 0350 0A9B     		ldr	r3, [sp, #40]
 3355 0352 BB46     		mov	fp, r7
 3356 0354 5833     		adds	r3, r3, #88
 3357 0356 0A93     		str	r3, [sp, #40]
 3358 0358 B345     		cmp	fp, r6
 3359 035a 069B     		ldr	r3, [sp, #24]
 3360 035c 0493     		str	r3, [sp, #16]
 3361 035e 3FF46EAE 		beq	.L339
 3362              	.L263:
 3363 0362 0499     		ldr	r1, [sp, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 60


 3364 0364 5046     		mov	r0, r10
 3365 0366 0A46     		mov	r2, r1
 3366 0368 D847     		blx	fp
 3367 036a DAF80030 		ldr	r3, [r10]
 3368 036e D3F808B0 		ldr	fp, [r3, #8]
 3369 0372 67E6     		b	.L264
 3370              	.L297:
 3371 0374 049A     		ldr	r2, [sp, #16]
 3372 0376 0799     		ldr	r1, [sp, #28]
 3373 0378 5046     		mov	r0, r10
 3374 037a B847     		blx	r7
 3375 037c DAF80030 		ldr	r3, [r10]
 3376 0380 9F68     		ldr	r7, [r3, #8]
 3377 0382 88E7     		b	.L298
 3378              	.L299:
 3379 0384 049A     		ldr	r2, [sp, #16]
 3380 0386 0799     		ldr	r1, [sp, #28]
 3381 0388 5046     		mov	r0, r10
 3382 038a B847     		blx	r7
 3383 038c DAF80030 		ldr	r3, [r10]
 3384 0390 9F68     		ldr	r7, [r3, #8]
 3385 0392 8BE7     		b	.L300
 3386              	.L287:
 3387 0394 049A     		ldr	r2, [sp, #16]
 3388 0396 0799     		ldr	r1, [sp, #28]
 3389 0398 5046     		mov	r0, r10
 3390 039a B847     		blx	r7
 3391 039c DAF80030 		ldr	r3, [r10]
 3392 03a0 9F68     		ldr	r7, [r3, #8]
 3393 03a2 1BE7     		b	.L288
 3394              	.L285:
 3395 03a4 049A     		ldr	r2, [sp, #16]
 3396 03a6 0799     		ldr	r1, [sp, #28]
 3397 03a8 5046     		mov	r0, r10
 3398 03aa B847     		blx	r7
 3399 03ac DAF80030 		ldr	r3, [r10]
 3400 03b0 9F68     		ldr	r7, [r3, #8]
 3401 03b2 07E7     		b	.L286
 3402              	.L314:
 3403 03b4 B0EE4A8A 		vmov.f32	s16, s20
 3404 03b8 5EE6     		b	.L268
 3405              	.L280:
 3406 03ba 0499     		ldr	r1, [sp, #16]
 3407 03bc 5046     		mov	r0, r10
 3408 03be 0A46     		mov	r2, r1
 3409 03c0 D847     		blx	fp
 3410 03c2 DAF80030 		ldr	r3, [r10]
 3411 03c6 D3F808B0 		ldr	fp, [r3, #8]
 3412 03ca E6E6     		b	.L281
 3413              	.L336:
 3414 03cc 049C     		ldr	r4, [sp, #16]
 3415 03ce 0D9D     		ldr	r5, [sp, #52]
 3416 03d0 DDF83C90 		ldr	r9, [sp, #60]
 3417 03d4 5F46     		mov	r7, fp
 3418 03d6 0234     		adds	r4, r4, #2
 3419 03d8 3B46     		mov	r3, r7
 3420 03da 0AEBC404 		add	r4, r10, r4, lsl #3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 61


 3421 03de 4FF00008 		mov	r8, #0
 3422 03e2 5746     		mov	r7, r10
 3423 03e4 18E0     		b	.L284
 3424              	.L340:
 3425 03e6 2046     		mov	r0, r4
 3426 03e8 B342     		cmp	r3, r6
 3427 03ea D0E900AB 		ldrd	r10, [r0]
 3428 03ee 1FD1     		bne	.L311
 3429              	.L341:
 3430 03f0 2B46     		mov	r3, r5
 3431              	.L312:
 3432 03f2 D3E90023 		ldrd	r2, [r3]
 3433 03f6 5046     		mov	r0, r10
 3434 03f8 5946     		mov	r1, fp
 3435 03fa FFF7FEFF 		bl	__aeabi_ddiv
 3436 03fe 069B     		ldr	r3, [sp, #24]
 3437 0400 08F10108 		add	r8, r8, #1
 3438 0404 4345     		cmp	r3, r8
 3439 0406 05F15805 		add	r5, r5, #88
 3440 040a 04F15004 		add	r4, r4, #80
 3441 040e E9E80201 		strd	r0, [r9], #8
 3442 0412 13D0     		beq	.L261
 3443 0414 3B68     		ldr	r3, [r7]
 3444 0416 9B68     		ldr	r3, [r3, #8]
 3445              	.L284:
 3446 0418 B342     		cmp	r3, r6
 3447 041a E4D0     		beq	.L340
 3448 041c 069A     		ldr	r2, [sp, #24]
 3449 041e 4146     		mov	r1, r8
 3450 0420 3846     		mov	r0, r7
 3451 0422 9847     		blx	r3
 3452 0424 3B68     		ldr	r3, [r7]
 3453 0426 9B68     		ldr	r3, [r3, #8]
 3454 0428 B342     		cmp	r3, r6
 3455 042a D0E900AB 		ldrd	r10, [r0]
 3456 042e DFD0     		beq	.L341
 3457              	.L311:
 3458 0430 4246     		mov	r2, r8
 3459 0432 4146     		mov	r1, r8
 3460 0434 3846     		mov	r0, r7
 3461 0436 9847     		blx	r3
 3462 0438 0346     		mov	r3, r0
 3463 043a DAE7     		b	.L312
 3464              	.L261:
 3465 043c 11B0     		add	sp, sp, #68
 3466              		@ sp needed
 3467 043e BDEC088B 		vldm	sp!, {d8-d11}
 3468 0442 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3469              	.L325:
 3470 0446 7047     		bx	lr
 3471              		.size	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, .-_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEP
 3472              		.global	__aeabi_dadd
 3473              		.global	__aeabi_ui2d
 3474              		.section	.text._ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,
 3475              		.align	1
 3476              		.p2align 2,,3
 3477              		.global	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 62


 3478              		.syntax unified
 3479              		.thumb
 3480              		.thumb_func
 3481              		.fpu fpv4-sp-d16
 3482              		.type	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %functio
 3483              	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
 3484              		@ args = 0, pretend = 0, frame = 4544
 3485              		@ frame_needed = 0, uses_anonymous_args = 0
 3486 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3487 0004 2DED048B 		vpush.64	{d8, d9}
 3488 0008 ADF58E5D 		sub	sp, sp, #4544
 3489 000c 85B0     		sub	sp, sp, #20
 3490 000e 8346     		mov	fp, r0
 3491 0010 1046     		mov	r0, r2
 3492 0012 0C46     		mov	r4, r1
 3493 0014 1192     		str	r2, [sp, #68]
 3494 0016 1A91     		str	r1, [sp, #104]
 3495 0018 2093     		str	r3, [sp, #128]
 3496 001a FFF7FEFF 		bl	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 3497 001e 092C     		cmp	r4, #9
 3498 0020 0690     		str	r0, [sp, #24]
 3499 0022 0ED9     		bls	.L431
 3500              	.L345:
 3501 0024 1A9A     		ldr	r2, [sp, #104]
 3502 0026 2098     		ldr	r0, [sp, #128]
 3503 0028 9149     		ldr	r1, .L441+8
 3504 002a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3505 002e 0123     		movs	r3, #1
 3506 0030 1D93     		str	r3, [sp, #116]
 3507              	.L428:
 3508 0032 1D98     		ldr	r0, [sp, #116]
 3509 0034 0DF58E5D 		add	sp, sp, #4544
 3510 0038 05B0     		add	sp, sp, #20
 3511              		@ sp needed
 3512 003a BDEC048B 		vldm	sp!, {d8-d9}
 3513 003e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3514              	.L431:
 3515 0042 4FF41273 		mov	r3, #584
 3516 0046 E340     		lsrs	r3, r3, r4
 3517 0048 DB43     		mvns	r3, r3
 3518 004a 13F00103 		ands	r3, r3, #1
 3519 004e 1D93     		str	r3, [sp, #116]
 3520 0050 E8D1     		bne	.L345
 3521 0052 884B     		ldr	r3, .L441+12
 3522 0054 D3F80831 		ldr	r3, [r3, #264]
 3523 0058 D806     		lsls	r0, r3, #27
 3524 005a 00F12083 		bmi	.L429
 3525 005e 0DF6C803 		addw	r3, sp, #2248
 3526 0062 1693     		str	r3, [sp, #88]
 3527              	.L348:
 3528 0064 9FED807B 		vldr.64	d7, .L441
 3529 0068 069B     		ldr	r3, [sp, #24]
 3530 006a 8DED127B 		vstr.64	d7, [sp, #72]
 3531 006e 002B     		cmp	r3, #0
 3532 0070 00F09780 		beq	.L354
 3533 0074 119B     		ldr	r3, [sp, #68]
 3534 0076 DFED808A 		vldr.32	s17, .L441+16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 63


 3535 007a 169C     		ldr	r4, [sp, #88]
 3536 007c 03F28718 		addw	r8, r3, #391
 3537 0080 069B     		ldr	r3, [sp, #24]
 3538 0082 0DF1E809 		add	r9, sp, #232
 3539 0086 08EB030A 		add	r10, r8, r3
 3540 008a 0DF5B866 		add	r6, sp, #1472
 3541 008e 0027     		movs	r7, #0
 3542              	.L355:
 3543 0090 9FED757B 		vldr.64	d7, .L441
 3544 0094 18F8013F 		ldrb	r3, [r8, #1]!	@ zero_extendqisi2
 3545 0098 764A     		ldr	r2, .L441+12
 3546 009a C3F38003 		ubfx	r3, r3, #2, #1
 3547 009e D068     		ldr	r0, [r2, #12]
 3548 00a0 0093     		str	r3, [sp]
 3549 00a2 3946     		mov	r1, r7
 3550 00a4 A9EC027B 		vstmia.64	r9!, {d7}
 3551 00a8 0DF6CC03 		addw	r3, sp, #2252
 3552 00ac 2246     		mov	r2, r4
 3553 00ae FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 3554 00b2 10EE100A 		vmov	r0, s0
 3555 00b6 FFF7FEFF 		bl	__aeabi_f2d
 3556 00ba 94ED018A 		vldr.32	s16, [r4, #4]
 3557 00be DBED057A 		vldr.32	s15, [fp, #20]
 3558 00c2 DBED066A 		vldr.32	s13, [fp, #24]
 3559 00c6 94ED009A 		vldr.32	s18, [r4]
 3560 00ca 9BED047A 		vldr.32	s14, [fp, #16]
 3561 00ce C4ED028A 		vstr.32	s17, [r4, #8]
 3562 00d2 78EE677A 		vsub.f32	s15, s16, s15
 3563 00d6 39EE477A 		vsub.f32	s14, s18, s14
 3564 00da 27EEA70A 		vmul.f32	s0, s15, s15
 3565 00de CDE90401 		strd	r0, [sp, #16]
 3566 00e2 A6EEA60A 		vfma.f32	s0, s13, s13
 3567 00e6 0137     		adds	r7, r7, #1
 3568 00e8 A7EE070A 		vfma.f32	s0, s14, s14
 3569 00ec B5EE400A 		vcmp.f32	s0, #0
 3570 00f0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3571 00f4 F1EEC09A 		vsqrt.f32	s19, s0
 3572 00f8 00F1E782 		bmi	.L432
 3573              	.L351:
 3574 00fc 19EE900A 		vmov	r0, s19
 3575 0100 FFF7FEFF 		bl	__aeabi_f2d
 3576 0104 DBED087A 		vldr.32	s15, [fp, #32]
 3577 0108 DBED096A 		vldr.32	s13, [fp, #36]
 3578 010c 9BED077A 		vldr.32	s14, [fp, #28]
 3579 0110 78EE677A 		vsub.f32	s15, s16, s15
 3580 0114 39EE477A 		vsub.f32	s14, s18, s14
 3581 0118 27EEA70A 		vmul.f32	s0, s15, s15
 3582 011c C6E90201 		strd	r0, [r6, #8]
 3583 0120 A6EEA60A 		vfma.f32	s0, s13, s13
 3584 0124 A7EE070A 		vfma.f32	s0, s14, s14
 3585 0128 B5EE400A 		vcmp.f32	s0, #0
 3586 012c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3587 0130 F1EEC09A 		vsqrt.f32	s19, s0
 3588 0134 00F1D082 		bmi	.L433
 3589              	.L352:
 3590 0138 19EE900A 		vmov	r0, s19
 3591 013c FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 64


 3592 0140 DBED0B7A 		vldr.32	s15, [fp, #44]
 3593 0144 DBED0C6A 		vldr.32	s13, [fp, #48]
 3594 0148 9BED0A7A 		vldr.32	s14, [fp, #40]
 3595 014c 38EE678A 		vsub.f32	s16, s16, s15
 3596 0150 39EE479A 		vsub.f32	s18, s18, s14
 3597 0154 28EE080A 		vmul.f32	s0, s16, s16
 3598 0158 C6E90401 		strd	r0, [r6, #16]
 3599 015c A6EEA60A 		vfma.f32	s0, s13, s13
 3600 0160 A9EE090A 		vfma.f32	s0, s18, s18
 3601 0164 B5EE400A 		vcmp.f32	s0, #0
 3602 0168 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3603 016c B1EEC08A 		vsqrt.f32	s16, s0
 3604 0170 00F1B982 		bmi	.L434
 3605              	.L353:
 3606 0174 18EE100A 		vmov	r0, s16
 3607 0178 FFF7FEFF 		bl	__aeabi_f2d
 3608 017c DDE90423 		ldrd	r2, [sp, #16]
 3609 0180 E6E90601 		strd	r0, [r6, #24]!
 3610 0184 1046     		mov	r0, r2
 3611 0186 1946     		mov	r1, r3
 3612 0188 FFF7FEFF 		bl	__aeabi_dmul
 3613 018c 0246     		mov	r2, r0
 3614 018e 0B46     		mov	r3, r1
 3615 0190 DDE91201 		ldrd	r0, [sp, #72]
 3616 0194 FFF7FEFF 		bl	__aeabi_dadd
 3617 0198 D045     		cmp	r8, r10
 3618 019a CDE91201 		strd	r0, [sp, #72]
 3619 019e 7FF477AF 		bne	.L355
 3620              	.L354:
 3621 01a2 1A98     		ldr	r0, [sp, #104]
 3622 01a4 069C     		ldr	r4, [sp, #24]
 3623 01a6 119D     		ldr	r5, [sp, #68]
 3624 01a8 CDF834B0 		str	fp, [sp, #52]
 3625 01ac C300     		lsls	r3, r0, #3
 3626 01ae BAAE     		add	r6, sp, #744
 3627 01b0 1E44     		add	r6, r6, r3
 3628 01b2 1C96     		str	r6, [sp, #112]
 3629 01b4 169E     		ldr	r6, [sp, #88]
 3630 01b6 1E44     		add	r6, r6, r3
 3631 01b8 1596     		str	r6, [sp, #84]
 3632 01ba 0DF50D66 		add	r6, sp, #2256
 3633 01be 1E44     		add	r6, r6, r3
 3634 01c0 0796     		str	r6, [sp, #28]
 3635 01c2 28AE     		add	r6, sp, #160
 3636 01c4 F318     		adds	r3, r6, r3
 3637 01c6 C0EB4071 		rsb	r1, r0, r0, lsl #29
 3638 01ca 04EBC402 		add	r2, r4, r4, lsl #3
 3639 01ce 2193     		str	r3, [sp, #132]
 3640 01d0 CB00     		lsls	r3, r1, #3
 3641 01d2 05F58475 		add	r5, r5, #264
 3642 01d6 1E93     		str	r3, [sp, #120]
 3643 01d8 D300     		lsls	r3, r2, #3
 3644 01da 1F93     		str	r3, [sp, #124]
 3645 01dc 05EB8403 		add	r3, r5, r4, lsl #2
 3646 01e0 1093     		str	r3, [sp, #64]
 3647 01e2 0223     		movs	r3, #2
 3648 01e4 1B95     		str	r5, [sp, #108]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 65


 3649 01e6 1893     		str	r3, [sp, #96]
 3650 01e8 8346     		mov	fp, r0
 3651              	.L350:
 3652 01ea 169B     		ldr	r3, [sp, #88]
 3653 01ec 1A46     		mov	r2, r3
 3654 01ee 234B     		ldr	r3, .L441+20
 3655 01f0 1360     		str	r3, [r2]
 3656 01f2 069B     		ldr	r3, [sp, #24]
 3657 01f4 002B     		cmp	r3, #0
 3658 01f6 4AD0     		beq	.L356
 3659 01f8 0024     		movs	r4, #0
 3660 01fa DDF83480 		ldr	r8, [sp, #52]
 3661 01fe A146     		mov	r9, r4
 3662 0200 0DF5B865 		add	r5, sp, #1472
 3663 0204 9A46     		mov	r10, r3
 3664 0206 5C46     		mov	r4, fp
 3665              	.L362:
 3666 0208 002C     		cmp	r4, #0
 3667 020a 39D0     		beq	.L357
 3668 020c D5E90201 		ldrd	r0, [r5, #8]
 3669 0210 FFF7FEFF 		bl	__aeabi_d2f
 3670 0214 09EE100A 		vmov	s18, r0
 3671 0218 D5E90401 		ldrd	r0, [r5, #16]
 3672 021c FFF7FEFF 		bl	__aeabi_d2f
 3673 0220 08EE900A 		vmov	s17, r0
 3674 0224 D5E90601 		ldrd	r0, [r5, #24]
 3675 0228 FFF7FEFF 		bl	__aeabi_d2f
 3676 022c 09EBC907 		add	r7, r9, r9, lsl #3
 3677 0230 0DF50D63 		add	r3, sp, #2256
 3678 0234 08EE100A 		vmov	s16, r0
 3679 0238 03EBC707 		add	r7, r3, r7, lsl #3
 3680 023c 0021     		movs	r1, #0
 3681              	.L358:
 3682 023e 082C     		cmp	r4, #8
 3683 0240 B0EE481A 		vmov.f32	s2, s16
 3684 0244 F0EE680A 		vmov.f32	s1, s17
 3685 0248 B0EE490A 		vmov.f32	s0, s18
 3686 024c 4046     		mov	r0, r8
 3687 024e 01F10106 		add	r6, r1, #1
 3688 0252 00F06A81 		beq	.L435
 3689              	.L359:
 3690 0256 FFF7FEFF 		bl	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 3691 025a B442     		cmp	r4, r6
 3692 025c A7EC020B 		vstmia.64	r7!, {d0}
 3693 0260 0ED0     		beq	.L357
 3694 0262 3146     		mov	r1, r6
 3695 0264 EBE7     		b	.L358
 3696              	.L442:
 3697 0266 00BF     		.align	3
 3698              	.L441:
 3699 0268 00000000 		.word	0
 3700 026c 00000000 		.word	0
 3701 0270 00000000 		.word	.LC30
 3702 0274 00000000 		.word	reprap
 3703 0278 00000000 		.word	0
 3704 027c 08000000 		.word	_ZTV11FixedMatrixIdLj32ELj9EE+8
 3705              	.L357:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 66


 3706 0280 09F10109 		add	r9, r9, #1
 3707 0284 CA45     		cmp	r10, r9
 3708 0286 05F11805 		add	r5, r5, #24
 3709 028a BDD1     		bne	.L362
 3710 028c A346     		mov	fp, r4
 3711              	.L356:
 3712 028e AC4B     		ldr	r3, .L443+8
 3713 0290 D3F80831 		ldr	r3, [r3, #264]
 3714 0294 13F01003 		ands	r3, r3, #16
 3715 0298 1793     		str	r3, [sp, #92]
 3716 029a 40F09C81 		bne	.L436
 3717 029e A94B     		ldr	r3, .L443+12
 3718 02a0 BA93     		str	r3, [sp, #744]
 3719 02a2 BBF1000F 		cmp	fp, #0
 3720 02a6 00F09C80 		beq	.L371
 3721              	.L385:
 3722 02aa 119B     		ldr	r3, [sp, #68]
 3723 02ac D3F80801 		ldr	r0, [r3, #264]	@ float
 3724 02b0 FFF7FEFF 		bl	__aeabi_f2d
 3725 02b4 DDE93A23 		ldrd	r2, [sp, #232]
 3726 02b8 FFF7FEFF 		bl	__aeabi_dadd
 3727 02bc 1E9A     		ldr	r2, [sp, #120]
 3728 02be 0E90     		str	r0, [sp, #56]
 3729 02c0 01F10043 		add	r3, r1, #-2147483648
 3730 02c4 0832     		adds	r2, r2, #8
 3731 02c6 0F93     		str	r3, [sp, #60]
 3732 02c8 1492     		str	r2, [sp, #80]
 3733 02ca 1C9B     		ldr	r3, [sp, #112]
 3734 02cc 1F9A     		ldr	r2, [sp, #124]
 3735 02ce 0993     		str	r3, [sp, #36]
 3736 02d0 169B     		ldr	r3, [sp, #88]
 3737 02d2 CDF864B0 		str	fp, [sp, #100]
 3738 02d6 583A     		subs	r2, r2, #88
 3739 02d8 0892     		str	r2, [sp, #32]
 3740 02da 9946     		mov	r9, r3
 3741              	.L370:
 3742 02dc 99ED027B 		vldr.64	d7, [r9, #8]
 3743 02e0 149B     		ldr	r3, [sp, #80]
 3744 02e2 099A     		ldr	r2, [sp, #36]
 3745 02e4 8DED047B 		vstr.64	d7, [sp, #16]
 3746 02e8 0DF50D64 		add	r4, sp, #2256
 3747 02ec 03EB020B 		add	fp, r3, r2
 3748              	.L367:
 3749 02f0 D4E90023 		ldrd	r2, [r4]
 3750 02f4 DDE90401 		ldrd	r0, [sp, #16]
 3751 02f8 FFF7FEFF 		bl	__aeabi_dmul
 3752 02fc 069B     		ldr	r3, [sp, #24]
 3753 02fe 012B     		cmp	r3, #1
 3754 0300 0646     		mov	r6, r0
 3755 0302 0F46     		mov	r7, r1
 3756 0304 04F1080A 		add	r10, r4, #8
 3757 0308 17D9     		bls	.L365
 3758 030a 089B     		ldr	r3, [sp, #32]
 3759 030c 083C     		subs	r4, r4, #8
 3760 030e 03EB0A08 		add	r8, r3, r10
 3761 0312 4D46     		mov	r5, r9
 3762              	.L366:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 67


 3763 0314 D4E91423 		ldrd	r2, [r4, #80]
 3764 0318 D5E91401 		ldrd	r0, [r5, #80]
 3765 031c FFF7FEFF 		bl	__aeabi_dmul
 3766 0320 0246     		mov	r2, r0
 3767 0322 0B46     		mov	r3, r1
 3768 0324 3046     		mov	r0, r6
 3769 0326 3946     		mov	r1, r7
 3770 0328 FFF7FEFF 		bl	__aeabi_dadd
 3771 032c 4834     		adds	r4, r4, #72
 3772 032e 4445     		cmp	r4, r8
 3773 0330 0646     		mov	r6, r0
 3774 0332 0F46     		mov	r7, r1
 3775 0334 05F14805 		add	r5, r5, #72
 3776 0338 ECD1     		bne	.L366
 3777              	.L365:
 3778 033a 079B     		ldr	r3, [sp, #28]
 3779 033c 5345     		cmp	r3, r10
 3780 033e EBE80267 		strd	r6, [fp], #8
 3781 0342 5446     		mov	r4, r10
 3782 0344 D4D1     		bne	.L367
 3783 0346 DDE90E23 		ldrd	r2, [sp, #56]
 3784 034a DDE90401 		ldrd	r0, [sp, #16]
 3785 034e FFF7FEFF 		bl	__aeabi_dmul
 3786 0352 069B     		ldr	r3, [sp, #24]
 3787 0354 012B     		cmp	r3, #1
 3788 0356 0646     		mov	r6, r0
 3789 0358 0F46     		mov	r7, r1
 3790 035a 2DD9     		bls	.L368
 3791 035c 119B     		ldr	r3, [sp, #68]
 3792 035e CDF83090 		str	r9, [sp, #48]
 3793 0362 4C46     		mov	r4, r9
 3794 0364 DDF84090 		ldr	r9, [sp, #64]
 3795 0368 03F58675 		add	r5, r3, #268
 3796 036c 0DF1F008 		add	r8, sp, #240
 3797              	.L369:
 3798 0370 F8E80223 		ldrd	r2, [r8], #8
 3799 0374 55F8040B 		ldr	r0, [r5], #4	@ float
 3800 0378 CDE90423 		strd	r2, [sp, #16]
 3801 037c FFF7FEFF 		bl	__aeabi_f2d
 3802 0380 DDE90423 		ldrd	r2, [sp, #16]
 3803 0384 FFF7FEFF 		bl	__aeabi_dadd
 3804 0388 01F1004B 		add	fp, r1, #-2147483648
 3805 038c D4E91423 		ldrd	r2, [r4, #80]
 3806 0390 5946     		mov	r1, fp
 3807 0392 8246     		mov	r10, r0
 3808 0394 FFF7FEFF 		bl	__aeabi_dmul
 3809 0398 0246     		mov	r2, r0
 3810 039a 0B46     		mov	r3, r1
 3811 039c 3046     		mov	r0, r6
 3812 039e 3946     		mov	r1, r7
 3813 03a0 FFF7FEFF 		bl	__aeabi_dadd
 3814 03a4 A945     		cmp	r9, r5
 3815 03a6 0646     		mov	r6, r0
 3816 03a8 0F46     		mov	r7, r1
 3817 03aa 04F14804 		add	r4, r4, #72
 3818 03ae DFD1     		bne	.L369
 3819 03b0 CDE90AAB 		strd	r10, [sp, #40]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 68


 3820 03b4 DDF83090 		ldr	r9, [sp, #48]
 3821              	.L368:
 3822 03b8 099B     		ldr	r3, [sp, #36]
 3823 03ba C3E90267 		strd	r6, [r3, #8]
 3824 03be 5033     		adds	r3, r3, #80
 3825 03c0 0993     		str	r3, [sp, #36]
 3826 03c2 159B     		ldr	r3, [sp, #84]
 3827 03c4 09F10809 		add	r9, r9, #8
 3828 03c8 9945     		cmp	r9, r3
 3829 03ca 87D1     		bne	.L370
 3830 03cc DDF864B0 		ldr	fp, [sp, #100]
 3831              	.L364:
 3832 03d0 179B     		ldr	r3, [sp, #92]
 3833 03d2 33B1     		cbz	r3, .L371
 3834 03d4 0BF10103 		add	r3, fp, #1
 3835 03d8 5A46     		mov	r2, fp
 3836 03da BAA9     		add	r1, sp, #744
 3837 03dc 5A48     		ldr	r0, .L443+16
 3838 03de FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3839              	.L371:
 3840 03e2 28A9     		add	r1, sp, #160
 3841 03e4 5A46     		mov	r2, fp
 3842 03e6 BAA8     		add	r0, sp, #744
 3843 03e8 FFF7FEFF 		bl	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 3844 03ec 544B     		ldr	r3, .L443+8
 3845 03ee D3F80831 		ldr	r3, [r3, #264]
 3846 03f2 D906     		lsls	r1, r3, #27
 3847 03f4 00F10E81 		bmi	.L437
 3848              	.L372:
 3849 03f8 28AA     		add	r2, sp, #160
 3850 03fa 5946     		mov	r1, fp
 3851 03fc 0D98     		ldr	r0, [sp, #52]
 3852 03fe FFF7FEFF 		bl	_ZN21HangprinterKinematics6AdjustEjPKd
 3853 0402 DDE92801 		ldrd	r0, [sp, #160]
 3854 0406 FFF7FEFF 		bl	__aeabi_d2f
 3855 040a 2290     		str	r0, [sp, #136]	@ float
 3856 040c DDE92A01 		ldrd	r0, [sp, #168]
 3857 0410 FFF7FEFF 		bl	__aeabi_d2f
 3858 0414 2390     		str	r0, [sp, #140]	@ float
 3859 0416 DDE92C01 		ldrd	r0, [sp, #176]
 3860 041a FFF7FEFF 		bl	__aeabi_d2f
 3861 041e 484B     		ldr	r3, .L443+8
 3862 0420 2490     		str	r0, [sp, #144]	@ float
 3863 0422 0322     		movs	r2, #3
 3864 0424 D868     		ldr	r0, [r3, #12]
 3865 0426 22A9     		add	r1, sp, #136
 3866 0428 FFF7FEFF 		bl	_ZN4Move20AdjustMotorPositionsEPKfj
 3867 042c 9FED427B 		vldr.64	d7, .L443
 3868 0430 069B     		ldr	r3, [sp, #24]
 3869 0432 8DED047B 		vstr.64	d7, [sp, #16]
 3870 0436 002B     		cmp	r3, #0
 3871 0438 55D0     		beq	.L377
 3872 043a CDF830B0 		str	fp, [sp, #48]
 3873 043e DDF86C80 		ldr	r8, [sp, #108]
 3874 0442 DDF840B0 		ldr	fp, [sp, #64]
 3875 0446 0DF5B866 		add	r6, sp, #1472
 3876 044a 0DF1E80A 		add	r10, sp, #232
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 69


 3877 044e 0DF5F479 		add	r9, sp, #488
 3878 0452 2EAF     		add	r7, sp, #184
 3879              	.L379:
 3880 0454 06F10805 		add	r5, r6, #8
 3881 0458 28AC     		add	r4, sp, #160
 3882              	.L378:
 3883 045a F4E80223 		ldrd	r2, [r4], #8
 3884 045e D5E90001 		ldrd	r0, [r5]
 3885 0462 FFF7FEFF 		bl	__aeabi_dadd
 3886 0466 A742     		cmp	r7, r4
 3887 0468 E5E80201 		strd	r0, [r5], #8
 3888 046c F5D1     		bne	.L378
 3889 046e D6E90601 		ldrd	r0, [r6, #24]
 3890 0472 FFF7FEFF 		bl	__aeabi_d2f
 3891 0476 0990     		str	r0, [sp, #36]
 3892 0478 D6E90401 		ldrd	r0, [r6, #16]
 3893 047c FFF7FEFF 		bl	__aeabi_d2f
 3894 0480 0890     		str	r0, [sp, #32]
 3895 0482 D6E90201 		ldrd	r0, [r6, #8]
 3896 0486 FFF7FEFF 		bl	__aeabi_d2f
 3897 048a 9DED091A 		vldr.32	s2, [sp, #36]	@ int
 3898 048e DDED080A 		vldr.32	s1, [sp, #32]	@ int
 3899 0492 00EE100A 		vmov	s0, r0
 3900 0496 25A9     		add	r1, sp, #148
 3901 0498 0D98     		ldr	r0, [sp, #52]
 3902 049a FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 3903 049e 9DED278A 		vldr.32	s16, [sp, #156]
 3904 04a2 18EE100A 		vmov	r0, s16
 3905 04a6 FFF7FEFF 		bl	__aeabi_f2d
 3906 04aa F8EC017A 		vldmia.32	r8!, {s15}
 3907 04ae 78EE277A 		vadd.f32	s15, s16, s15
 3908 04b2 EAE80201 		strd	r0, [r10], #8
 3909 04b6 17EE900A 		vmov	r0, s15
 3910 04ba FFF7FEFF 		bl	__aeabi_f2d
 3911 04be 0246     		mov	r2, r0
 3912 04c0 0B46     		mov	r3, r1
 3913 04c2 E9E80223 		strd	r2, [r9], #8
 3914 04c6 FFF7FEFF 		bl	__aeabi_dmul
 3915 04ca 0246     		mov	r2, r0
 3916 04cc 0B46     		mov	r3, r1
 3917 04ce DDE90401 		ldrd	r0, [sp, #16]
 3918 04d2 FFF7FEFF 		bl	__aeabi_dadd
 3919 04d6 C345     		cmp	fp, r8
 3920 04d8 06F11806 		add	r6, r6, #24
 3921 04dc CDE90401 		strd	r0, [sp, #16]
 3922 04e0 B8D1     		bne	.L379
 3923 04e2 DDF830B0 		ldr	fp, [sp, #48]
 3924              	.L377:
 3925 04e6 0698     		ldr	r0, [sp, #24]
 3926 04e8 FFF7FEFF 		bl	__aeabi_ui2d
 3927 04ec 0246     		mov	r2, r0
 3928 04ee 0B46     		mov	r3, r1
 3929 04f0 0446     		mov	r4, r0
 3930 04f2 0D46     		mov	r5, r1
 3931 04f4 DDE90401 		ldrd	r0, [sp, #16]
 3932 04f8 FFF7FEFF 		bl	__aeabi_ddiv
 3933 04fc FFF7FEFF 		bl	__aeabi_d2f
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 70


 3934 0500 00EE100A 		vmov	s0, r0
 3935 0504 B5EE400A 		vcmp.f32	s0, #0
 3936 0508 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3937 050c B1EEC08A 		vsqrt.f32	s16, s0
 3938 0510 00F1EC80 		bmi	.L438
 3939              	.L380:
 3940 0514 0A4B     		ldr	r3, .L443+8
 3941 0516 D3F80831 		ldr	r3, [r3, #264]
 3942 051a DA06     		lsls	r2, r3, #27
 3943 051c 6ED4     		bmi	.L439
 3944              	.L381:
 3945 051e 189B     		ldr	r3, [sp, #96]
 3946 0520 012B     		cmp	r3, #1
 3947 0522 13D0     		beq	.L382
 3948 0524 0123     		movs	r3, #1
 3949 0526 1893     		str	r3, [sp, #96]
 3950 0528 5FE6     		b	.L350
 3951              	.L435:
 3952 052a 0529     		cmp	r1, #5
 3953 052c 6CD9     		bls	.L360
 3954 052e 3146     		mov	r1, r6
 3955 0530 91E6     		b	.L359
 3956              	.L444:
 3957 0532 00BFAFF3 		.align	3
 3957      0080
 3958              	.L443:
 3959 0538 00000000 		.word	0
 3960 053c 00000000 		.word	0
 3961 0540 00000000 		.word	reprap
 3962 0544 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 3963 0548 6C000000 		.word	.LC33
 3964              	.L382:
 3965 054c 6A4B     		ldr	r3, .L445
 3966 054e DDF834B0 		ldr	fp, [sp, #52]
 3967 0552 D3F80831 		ldr	r3, [r3, #264]
 3968 0556 DB06     		lsls	r3, r3, #27
 3969 0558 0DD5     		bpl	.L383
 3970 055a 169E     		ldr	r6, [sp, #88]
 3971 055c BA96     		str	r6, [sp, #744]
 3972 055e 0022     		movs	r2, #0
 3973 0560 DD23     		movs	r3, #221
 3974 0562 BAA9     		add	r1, sp, #744
 3975 0564 5846     		mov	r0, fp
 3976 0566 3270     		strb	r2, [r6]
 3977 0568 BB93     		str	r3, [sp, #748]
 3978 056a FFF7FEFF 		bl	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 3979 056e 3146     		mov	r1, r6
 3980 0570 6248     		ldr	r0, .L445+4
 3981 0572 FFF7FEFF 		bl	debugPrintf
 3982              	.L383:
 3983 0576 2246     		mov	r2, r4
 3984 0578 2B46     		mov	r3, r5
 3985 057a DDE91201 		ldrd	r0, [sp, #72]
 3986 057e FFF7FEFF 		bl	__aeabi_ddiv
 3987 0582 FFF7FEFF 		bl	__aeabi_d2f
 3988 0586 00EE100A 		vmov	s0, r0
 3989 058a B5EE400A 		vcmp.f32	s0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 71


 3990 058e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3991 0592 F1EEC08A 		vsqrt.f32	s17, s0
 3992 0596 00F1AC80 		bmi	.L440
 3993              	.L384:
 3994 059a 18EE100A 		vmov	r0, s16
 3995 059e FFF7FEFF 		bl	__aeabi_f2d
 3996 05a2 CDE90201 		strd	r0, [sp, #8]
 3997 05a6 18EE900A 		vmov	r0, s17
 3998 05aa FFF7FEFF 		bl	__aeabi_f2d
 3999 05ae 209C     		ldr	r4, [sp, #128]
 4000 05b0 069B     		ldr	r3, [sp, #24]
 4001 05b2 1A9A     		ldr	r2, [sp, #104]
 4002 05b4 CDE90001 		strd	r0, [sp]
 4003 05b8 5149     		ldr	r1, .L445+8
 4004 05ba 2046     		mov	r0, r4
 4005 05bc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4006 05c0 4D4A     		ldr	r2, .L445
 4007 05c2 2368     		ldr	r3, [r4]
 4008 05c4 5068     		ldr	r0, [r2, #4]
 4009 05c6 4D4A     		ldr	r2, .L445+4
 4010 05c8 8021     		movs	r1, #128
 4011 05ca FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4012 05ce 0123     		movs	r3, #1
 4013 05d0 8BF85831 		strb	r3, [fp, #344]
 4014 05d4 2DE5     		b	.L428
 4015              	.L436:
 4016 05d6 5B46     		mov	r3, fp
 4017 05d8 069A     		ldr	r2, [sp, #24]
 4018 05da 1699     		ldr	r1, [sp, #88]
 4019 05dc 4948     		ldr	r0, .L445+12
 4020 05de FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 4021 05e2 454B     		ldr	r3, .L445
 4022 05e4 484A     		ldr	r2, .L445+16
 4023 05e6 D3F80831 		ldr	r3, [r3, #264]
 4024 05ea BA92     		str	r2, [sp, #744]
 4025 05ec 03F01003 		and	r3, r3, #16
 4026 05f0 1793     		str	r3, [sp, #92]
 4027 05f2 BBF1000F 		cmp	fp, #0
 4028 05f6 7FF458AE 		bne	.L385
 4029 05fa E9E6     		b	.L364
 4030              	.L439:
 4031 05fc 069A     		ldr	r2, [sp, #24]
 4032 05fe 4348     		ldr	r0, .L445+20
 4033 0600 7AA9     		add	r1, sp, #488
 4034 0602 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 4035 0606 8AE7     		b	.L381
 4036              	.L360:
 4037 0608 FFF7FEFF 		bl	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 4038 060c 3146     		mov	r1, r6
 4039 060e A7EC020B 		vstmia.64	r7!, {d0}
 4040 0612 14E6     		b	.L358
 4041              	.L437:
 4042 0614 0BF10103 		add	r3, fp, #1
 4043 0618 5A46     		mov	r2, fp
 4044 061a BAA9     		add	r1, sp, #744
 4045 061c 3C48     		ldr	r0, .L445+24
 4046 061e FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 72


 4047 0622 5A46     		mov	r2, fp
 4048 0624 28A9     		add	r1, sp, #160
 4049 0626 3B48     		ldr	r0, .L445+28
 4050 0628 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 4051 062c 3A48     		ldr	r0, .L445+32
 4052 062e FFF7FEFF 		bl	debugPrintf
 4053 0632 069B     		ldr	r3, [sp, #24]
 4054 0634 7BB3     		cbz	r3, .L373
 4055 0636 CDF810B0 		str	fp, [sp, #16]
 4056 063a DFF8E4A0 		ldr	r10, .L445+40
 4057 063e DDF86C80 		ldr	r8, [sp, #108]
 4058 0642 DDF884B0 		ldr	fp, [sp, #132]
 4059 0646 0DF50D69 		add	r9, sp, #2256
 4060              	.L376:
 4061 064a 58F8040B 		ldr	r0, [r8], #4	@ float
 4062 064e FFF7FEFF 		bl	__aeabi_f2d
 4063 0652 049B     		ldr	r3, [sp, #16]
 4064 0654 0646     		mov	r6, r0
 4065 0656 0F46     		mov	r7, r1
 4066 0658 8BB1     		cbz	r3, .L374
 4067 065a 4D46     		mov	r5, r9
 4068 065c 28AC     		add	r4, sp, #160
 4069              	.L375:
 4070 065e F5E80223 		ldrd	r2, [r5], #8
 4071 0662 F4E80201 		ldrd	r0, [r4], #8
 4072 0666 FFF7FEFF 		bl	__aeabi_dmul
 4073 066a 0246     		mov	r2, r0
 4074 066c 0B46     		mov	r3, r1
 4075 066e 3046     		mov	r0, r6
 4076 0670 3946     		mov	r1, r7
 4077 0672 FFF7FEFF 		bl	__aeabi_dadd
 4078 0676 A345     		cmp	fp, r4
 4079 0678 0646     		mov	r6, r0
 4080 067a 0F46     		mov	r7, r1
 4081 067c EFD1     		bne	.L375
 4082              	.L374:
 4083 067e 3B46     		mov	r3, r7
 4084 0680 3246     		mov	r2, r6
 4085 0682 5046     		mov	r0, r10
 4086 0684 FFF7FEFF 		bl	debugPrintf
 4087 0688 109B     		ldr	r3, [sp, #64]
 4088 068a 4345     		cmp	r3, r8
 4089 068c 09F14809 		add	r9, r9, #72
 4090 0690 DBD1     		bne	.L376
 4091 0692 DDF810B0 		ldr	fp, [sp, #16]
 4092              	.L373:
 4093 0696 2148     		ldr	r0, .L445+36
 4094 0698 FFF7FEFF 		bl	debugPrintf
 4095 069c ACE6     		b	.L372
 4096              	.L429:
 4097 069e 0DF6C802 		addw	r2, sp, #2248
 4098 06a2 1D9C     		ldr	r4, [sp, #116]
 4099 06a4 8DF8C848 		strb	r4, [sp, #2248]
 4100 06a8 DD23     		movs	r3, #221
 4101 06aa 0DF5B861 		add	r1, sp, #1472
 4102 06ae 1446     		mov	r4, r2
 4103 06b0 5846     		mov	r0, fp
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 73


 4104 06b2 1692     		str	r2, [sp, #88]
 4105 06b4 CDF8C025 		str	r2, [sp, #1472]
 4106 06b8 CDF8C435 		str	r3, [sp, #1476]
 4107 06bc FFF7FEFF 		bl	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 4108 06c0 2146     		mov	r1, r4
 4109 06c2 0E48     		ldr	r0, .L445+4
 4110 06c4 FFF7FEFF 		bl	debugPrintf
 4111 06c8 CCE4     		b	.L348
 4112              	.L432:
 4113 06ca FFF7FEFF 		bl	sqrtf
 4114 06ce 94ED009A 		vldr.32	s18, [r4]
 4115 06d2 94ED018A 		vldr.32	s16, [r4, #4]
 4116 06d6 11E5     		b	.L351
 4117              	.L433:
 4118 06d8 FFF7FEFF 		bl	sqrtf
 4119 06dc 94ED009A 		vldr.32	s18, [r4]
 4120 06e0 94ED018A 		vldr.32	s16, [r4, #4]
 4121 06e4 28E5     		b	.L352
 4122              	.L434:
 4123 06e6 FFF7FEFF 		bl	sqrtf
 4124 06ea 43E5     		b	.L353
 4125              	.L438:
 4126 06ec FFF7FEFF 		bl	sqrtf
 4127 06f0 10E7     		b	.L380
 4128              	.L440:
 4129 06f2 FFF7FEFF 		bl	sqrtf
 4130 06f6 50E7     		b	.L384
 4131              	.L446:
 4132              		.align	2
 4133              	.L445:
 4134 06f8 00000000 		.word	reprap
 4135 06fc 54000000 		.word	.LC31
 4136 0700 C8000000 		.word	.LC40
 4137 0704 58000000 		.word	.LC32
 4138 0708 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 4139 070c B0000000 		.word	.LC39
 4140 0710 7C000000 		.word	.LC34
 4141 0714 8C000000 		.word	.LC35
 4142 0718 98000000 		.word	.LC36
 4143 071c AC000000 		.word	.LC38
 4144 0720 A4000000 		.word	.LC37
 4145              		.size	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN21H
 4146              		.global	_ZTV21HangprinterKinematics
 4147              		.weak	_ZTV11FixedMatrixIdLj32ELj9EE
 4148              		.section	.rodata._ZTV11FixedMatrixIdLj32ELj9EE,"aG",%progbits,_ZTV11FixedMatrixIdLj32ELj9EE,comdat
 4149              		.align	2
 4150              		.type	_ZTV11FixedMatrixIdLj32ELj9EE, %object
 4151              		.size	_ZTV11FixedMatrixIdLj32ELj9EE, 32
 4152              	_ZTV11FixedMatrixIdLj32ELj9EE:
 4153 0000 00000000 		.word	0
 4154 0004 00000000 		.word	0
 4155 0008 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 4156 000c 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 4157 0010 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EEclEjj
 4158 0014 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 4159 0018 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED1Ev
 4160 001c 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED0Ev
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 74


 4161              		.weak	_ZTV11FixedMatrixIdLj9ELj10EE
 4162              		.section	.rodata._ZTV11FixedMatrixIdLj9ELj10EE,"aG",%progbits,_ZTV11FixedMatrixIdLj9ELj10EE,comdat
 4163              		.align	2
 4164              		.type	_ZTV11FixedMatrixIdLj9ELj10EE, %object
 4165              		.size	_ZTV11FixedMatrixIdLj9ELj10EE, 32
 4166              	_ZTV11FixedMatrixIdLj9ELj10EE:
 4167 0000 00000000 		.word	0
 4168 0004 00000000 		.word	0
 4169 0008 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 4170 000c 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 4171 0010 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 4172 0014 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 4173 0018 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED1Ev
 4174 001c 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 4175              		.section	.rodata
 4176              		.align	2
 4177              		.set	.LANCHOR0,. + 0
 4178              	.LC14:
 4179 0000 00000000 		.word	.LC6
 4180 0004 08000000 		.word	.LC7
 4181 0008 10000000 		.word	.LC8
 4182 000c 18000000 		.word	.LC9
 4183 0010 20000000 		.word	.LC10
 4184              	.LC0:
 4185 0014 33338242 		.word	1115829043
 4186 0018 33338242 		.word	1115829043
 4187 001c 33338242 		.word	1115829043
 4188 0020 33338242 		.word	1115829043
 4189 0024 66664842 		.word	1112041062
 4190              	.LC1:
 4191 0028 02000000 		.word	2
 4192 002c 02000000 		.word	2
 4193 0030 02000000 		.word	2
 4194 0034 01000000 		.word	1
 4195 0038 01000000 		.word	1
 4196              	.LC2:
 4197 003c 01000000 		.word	1
 4198 0040 01000000 		.word	1
 4199 0044 01000000 		.word	1
 4200 0048 01000000 		.word	1
 4201 004c 01000000 		.word	1
 4202              	.LC3:
 4203 0050 14000000 		.word	20
 4204 0054 14000000 		.word	20
 4205 0058 14000000 		.word	20
 4206 005c 14000000 		.word	20
 4207 0060 05000000 		.word	5
 4208              	.LC4:
 4209 0064 FF000000 		.word	255
 4210 0068 FF000000 		.word	255
 4211 006c FF000000 		.word	255
 4212 0070 FF000000 		.word	255
 4213 0074 2C010000 		.word	300
 4214              	.LC5:
 4215 0078 20000000 		.word	32
 4216 007c 20000000 		.word	32
 4217 0080 20000000 		.word	32
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 75


 4218 0084 20000000 		.word	32
 4219 0088 20000000 		.word	32
 4220              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 4221              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 4222              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 4223              	_ZL28cpu_irq_prev_interrupt_state:
 4224 0000 00       		.space	1
 4225              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 4226              		.align	2
 4227              		.type	_ZL32cpu_irq_critical_section_counter, %object
 4228              		.size	_ZL32cpu_irq_critical_section_counter, 4
 4229              	_ZL32cpu_irq_critical_section_counter:
 4230 0000 00000000 		.space	4
 4231              		.section	.rodata._ZL14DefaultAnchorA,"a",%progbits
 4232              		.align	2
 4233              		.set	.LANCHOR1,. + 0
 4234              		.type	_ZL14DefaultAnchorA, %object
 4235              		.size	_ZL14DefaultAnchorA, 12
 4236              	_ZL14DefaultAnchorA:
 4237 0000 00000000 		.word	0
 4238 0004 29A4B3C4 		.word	-994859991
 4239 0008 00006AC3 		.word	-1016463360
 4240              		.section	.rodata._ZL14DefaultAnchorB,"a",%progbits
 4241              		.align	2
 4242              		.set	.LANCHOR2,. + 0
 4243              		.type	_ZL14DefaultAnchorB, %object
 4244              		.size	_ZL14DefaultAnchorB, 12
 4245              	_ZL14DefaultAnchorB:
 4246 0000 E1929B44 		.word	1151046369
 4247 0004 D7A33344 		.word	1144234967
 4248 0008 00006AC3 		.word	-1016463360
 4249              		.section	.rodata._ZL14DefaultAnchorC,"a",%progbits
 4250              		.align	2
 4251              		.set	.LANCHOR3,. + 0
 4252              		.type	_ZL14DefaultAnchorC, %object
 4253              		.size	_ZL14DefaultAnchorC, 12
 4254              	_ZL14DefaultAnchorC:
 4255 0000 E1929BC4 		.word	-996437279
 4256 0004 D7A33344 		.word	1144234967
 4257 0008 00006AC3 		.word	-1016463360
 4258              		.section	.rodata._ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRe
 4259              		.align	2
 4260              	.LC30:
 4261 0000 48616E67 		.ascii	"Hangprinter calibration with %d factors requested b"
 4261      7072696E 
 4261      74657220 
 4261      63616C69 
 4261      62726174 
 4262 0033 7574206F 		.ascii	"ut only 3, 6, and 9 supported\000"
 4262      6E6C7920 
 4262      332C2036 
 4262      2C20616E 
 4262      64203920 
 4263 0051 000000   		.space	3
 4264              	.LC31:
 4265 0054 25730A00 		.ascii	"%s\012\000"
 4266              	.LC32:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 76


 4267 0058 44657269 		.ascii	"Derivative matrix\000"
 4267      76617469 
 4267      7665206D 
 4267      61747269 
 4267      7800
 4268 006a 0000     		.space	2
 4269              	.LC33:
 4270 006c 4E6F726D 		.ascii	"Normal matrix\000"
 4270      616C206D 
 4270      61747269 
 4270      7800
 4271 007a 0000     		.space	2
 4272              	.LC34:
 4273 007c 536F6C76 		.ascii	"Solved matrix\000"
 4273      6564206D 
 4273      61747269 
 4273      7800
 4274 008a 0000     		.space	2
 4275              	.LC35:
 4276 008c 536F6C75 		.ascii	"Solution\000"
 4276      74696F6E 
 4276      00
 4277 0095 000000   		.space	3
 4278              	.LC36:
 4279 0098 52657369 		.ascii	"Residuals:\000"
 4279      6475616C 
 4279      733A00
 4280 00a3 00       		.space	1
 4281              	.LC37:
 4282 00a4 2025372E 		.ascii	" %7.4f\000"
 4282      346600
 4283 00ab 00       		.space	1
 4284              	.LC38:
 4285 00ac 0A00     		.ascii	"\012\000"
 4286 00ae 0000     		.space	2
 4287              	.LC39:
 4288 00b0 45787065 		.ascii	"Expected probe error\000"
 4288      63746564 
 4288      2070726F 
 4288      62652065 
 4288      72726F72 
 4289 00c5 000000   		.space	3
 4290              	.LC40:
 4291 00c8 43616C69 		.ascii	"Calibrated %d factors using %d points, deviation be"
 4291      62726174 
 4291      65642025 
 4291      64206661 
 4291      63746F72 
 4292 00fb 666F7265 		.ascii	"fore %.3f after %.3f\000"
 4292      20252E33 
 4292      66206166 
 4292      74657220 
 4292      252E3366 
 4293              		.section	.rodata._ZN21HangprinterKinematics6RecalcEv.str1.4,"aMS",%progbits,1
 4294              		.align	2
 4295              	.LC17:
 4296 0000 50696574 		.ascii	"Pietari Line Lengths origins: %f\012\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 77


 4296      61726920 
 4296      4C696E65 
 4296      204C656E 
 4296      67746873 
 4297 0022 0000     		.space	2
 4298              	.LC18:
 4299 0024 50696574 		.ascii	"Pietari k2 value %f\012\000"
 4299      61726920 
 4299      6B322076 
 4299      616C7565 
 4299      2025660A 
 4300 0039 000000   		.space	3
 4301              	.LC19:
 4302 003c 50696574 		.ascii	"Pietari k0 value %f\012\000"
 4302      61726920 
 4302      6B302076 
 4302      616C7565 
 4302      2025660A 
 4303 0051 000000   		.space	3
 4304              	.LC20:
 4305 0054 52656361 		.ascii	"Recalced params\012Da2: %.2f, Db2: %.2f, Dc2: %.2f,"
 4305      6C636564 
 4305      20706172 
 4305      616D730A 
 4305      4461323A 
 4306 0084 20586162 		.ascii	" Xab: %.2f, Xbc: %.2f, Xca: %.2f, Yab: %.2f, Ybc: %"
 4306      3A20252E 
 4306      32662C20 
 4306      5862633A 
 4306      20252E32 
 4307 00b7 2E32662C 		.ascii	".2f, Yca: %.2f, Zab: %.2f, Zbc: %.2f, Zca: %.2f, P:"
 4307      20596361 
 4307      3A20252E 
 4307      32662C20 
 4307      5A61623A 
 4308 00ea 20252E32 		.ascii	" %.2f, P2: %.2f, Q: %.2f, R: %.2f, U: %.2f, A: %.2f"
 4308      662C2050 
 4308      323A2025 
 4308      2E32662C 
 4308      20513A20 
 4309 011d 0A00     		.ascii	"\012\000"
 4310              		.section	.rodata._ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%
 4311              		.align	2
 4312              	.LC21:
 4313 0000 4B696E65 		.ascii	"Kinematics is Hangprinter\012Anchor positions:\012%"
 4313      6D617469 
 4313      63732069 
 4313      73204861 
 4313      6E677072 
 4314 002d 2E32662C 		.ascii	".2f, %.2f, %.2f\012%.2f, %.2f, %.2f\012%.2f, %.2f, "
 4314      20252E32 
 4314      662C2025 
 4314      2E32660A 
 4314      252E3266 
 4315 005a 252E3266 		.ascii	"%.2f\012%.2f\012%.2f\012Print radius:\012%.1f\012Se"
 4315      0A252E32 
 4315      660A252E 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 78


 4315      32660A50 
 4315      72696E74 
 4316 007e 676D656E 		.ascii	"gments/s:\012%d\012Min segment length:\012%.2f\012S"
 4316      74732F73 
 4316      3A0A2564 
 4316      0A4D696E 
 4316      20736567 
 4317 00a5 706F6F6C 		.ascii	"pool buildup factor:\012%.4f\012Spool radii:\012%.2"
 4317      20627569 
 4317      6C647570 
 4317      20666163 
 4317      746F723A 
 4318 00cf 662C2025 		.ascii	"f, %.2f, %.2f, %.2f\012Mechanical Advantage:\012%d,"
 4318      2E32662C 
 4318      20252E32 
 4318      662C2025 
 4318      2E32660A 
 4319 00fc 2025642C 		.ascii	" %d, %d, %d\012Lines per spool:\012%d, %d, %d, %d\012"
 4319      2025642C 
 4319      2025640A 
 4319      4C696E65 
 4319      73207065 
 4320 0128 4D6F746F 		.ascii	"Motor gear teeth\012%d, %d, %d, %d\012Spool gear te"
 4320      72206765 
 4320      61722074 
 4320      65657468 
 4320      0A25642C 
 4321 0155 6574680A 		.ascii	"eth\012%d, %d, %d, %d\012Full steps per revolution\012"
 4321      25642C20 
 4321      25642C20 
 4321      25642C20 
 4321      25640A46 
 4322 0182 25642C20 		.ascii	"%d, %d, %d, %d\000"
 4322      25642C20 
 4322      25642C20 
 4322      256400
 4323 0191 000000   		.space	3
 4324              	.LC22:
 4325 0194 513A4275 		.ascii	"Q:Buildup fac %.4f\012R:Spool r %.2f, %.2f, %.2f, %"
 4325      696C6475 
 4325      70206661 
 4325      6320252E 
 4325      34660A52 
 4326 01c4 2E32660A 		.ascii	".2f\012U:Mech Adv %d, %d, %d, %d\012O:Lines/spool %"
 4326      553A4D65 
 4326      63682041 
 4326      64762025 
 4326      642C2025 
 4327 01f1 642C2025 		.ascii	"d, %d, %d, %d\012L:Motor gear teeth %d, %d, %d, %d\012"
 4327      642C2025 
 4327      642C2025 
 4327      640A4C3A 
 4327      4D6F746F 
 4328 0221 483A5370 		.ascii	"H:Spool gear teeth %d, %d, %d, %d\012J:Full steps/r"
 4328      6F6F6C20 
 4328      67656172 
 4328      20746565 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 79


 4328      74682025 
 4329 0251 65762025 		.ascii	"ev %d, %d, %d, %d\000"
 4329      642C2025 
 4329      642C2025 
 4329      642C2025 
 4329      6400
 4330              		.section	.rodata._ZNK21HangprinterKinematics15PrintParametersERK9StringRef.str1.4,"aMS",%progbits,
 4331              		.align	2
 4332              	.LC27:
 4333 0000 416E6368 		.ascii	"Anchor coordinates (%.2f,%.2f,%.2f) (%.2f,%.2f,%.2f"
 4333      6F722063 
 4333      6F6F7264 
 4333      696E6174 
 4333      65732028 
 4334 0033 29202825 		.ascii	") (%.2f,%.2f,%.2f)\012\000"
 4334      2E32662C 
 4334      252E3266 
 4334      2C252E32 
 4334      66290A00 
 4335              		.section	.rodata._ZNK21HangprinterKinematics16InverseTransformEfffPf.str1.4,"aMS",%progbits,1
 4336              		.align	2
 4337              	.LC23:
 4338 0000 496E7665 		.ascii	"Inverse Transform Pietari: S: %.2f, T: %.2f, halfB:"
 4338      72736520 
 4338      5472616E 
 4338      73666F72 
 4338      6D205069 
 4339 0033 20252E32 		.ascii	" %.2f, C: %.2f\012\000"
 4339      662C2043 
 4339      3A20252E 
 4339      32660A00 
 4340 0043 00       		.space	1
 4341              	.LC24:
 4342 0044 6D616368 		.ascii	"machinepos before Pietari %f\000"
 4342      696E6570 
 4342      6F732062 
 4342      65666F72 
 4342      65205069 
 4343 0061 000000   		.space	3
 4344              	.LC25:
 4345 0064 6D616368 		.ascii	"machinepos after Pietari %f\000"
 4345      696E6570 
 4345      6F732061 
 4345      66746572 
 4345      20506965 
 4346              	.LC26:
 4347 0080 4D6F746F 		.ascii	"Motor %.2f,%.2f,%.2f to Cartesian %.2f,%.2f,%.2f\012"
 4347      7220252E 
 4347      32662C25 
 4347      2E32662C 
 4347      252E3266 
 4348 00b1 00       		.ascii	"\000"
 4349              		.section	.rodata._ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef.str1.4,"aMS",%prog
 4350              		.align	2
 4351              	.LC16:
 4352 0000 686F6D65 		.ascii	"homeall.g\000"
 4352      616C6C2E 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 80


 4352      6700
 4353              		.section	.rodata._ZNK21HangprinterKinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 4354              		.align	2
 4355              	.LC12:
 4356 0000 41424344 		.ascii	"ABCDV\000"
 4356      5600
 4357              		.section	.rodata._ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb.str1.4,"aMS",%prog
 4358              		.align	2
 4359              	.LC15:
 4360 0000 4D6F746F 		.ascii	"Motor positions Pietari: %s, %f\012\000"
 4360      7220706F 
 4360      73697469 
 4360      6F6E7320 
 4360      50696574 
 4361              		.section	.rodata._ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore.str1.4,"aMS",
 4362              		.align	2
 4363              	.LC28:
 4364 0000 3B204861 		.ascii	"; Hangprinter parameters\012\000"
 4364      6E677072 
 4364      696E7465 
 4364      72207061 
 4364      72616D65 
 4365 001a 0000     		.space	2
 4366              	.LC29:
 4367 001c 50696574 		.ascii	"Pietari M669 K6 A%.3f:%.3f:%.3f B%.3f:%.3f:%.3f C%."
 4367      61726920 
 4367      4D363639 
 4367      204B3620 
 4367      41252E33 
 4368 004f 33663A25 		.ascii	"3f:%.3f:%.3f D%.3f P%.1f Q%.6f R%.3f:%.3f:%.3f:%.3f"
 4368      2E33663A 
 4368      252E3366 
 4368      2044252E 
 4368      33662050 
 4369 0082 0A00     		.ascii	"\012\000"
 4370              		.section	.rodata._ZNK21HangprinterKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 4371              		.align	2
 4372              	.LC13:
 4373 0000 48616E67 		.ascii	"Hangprinter\000"
 4373      7072696E 
 4373      74657200 
 4374              		.section	.rodata._ZTV21HangprinterKinematics,"a",%progbits
 4375              		.align	2
 4376              		.set	.LANCHOR4,. + 0
 4377              		.type	_ZTV21HangprinterKinematics, %object
 4378              		.size	_ZTV21HangprinterKinematics, 128
 4379              	_ZTV21HangprinterKinematics:
 4380 0000 00000000 		.word	0
 4381 0004 00000000 		.word	0
 4382 0008 00000000 		.word	_ZNK21HangprinterKinematics7GetNameEb
 4383 000c 00000000 		.word	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 4384 0010 00000000 		.word	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 4385 0014 00000000 		.word	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf
 4386 0018 00000000 		.word	_ZNK21HangprinterKinematics23SupportsAutoCalibrationEv
 4387 001c 00000000 		.word	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 4388 0020 00000000 		.word	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv
 4389 0024 00000000 		.word	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccuErXgu.s 			page 81


 4390 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 4391 002c 00000000 		.word	_ZNK21HangprinterKinematics11IsReachableEffb
 4392 0030 00000000 		.word	_ZNK21HangprinterKinematics13LimitPositionEPfjmb
 4393 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 4394 0038 00000000 		.word	_ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf
 4395 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 4396 0040 00000000 		.word	_ZNK21HangprinterKinematics16NumHomingButtonsEj
 4397 0044 00000000 		.word	_ZNK21HangprinterKinematics17HomingButtonNamesEv
 4398 0048 00000000 		.word	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 4399 004c 00000000 		.word	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef
 4400 0050 00000000 		.word	_ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj
 4401 0054 00000000 		.word	_ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 4402 0058 00000000 		.word	_ZNK21HangprinterKinematics13GetHomingModeEv
 4403 005c 00000000 		.word	_ZNK21HangprinterKinematics16AxesAssumedHomedEm
 4404 0060 00000000 		.word	_ZNK21HangprinterKinematics15MustBeHomedAxesEmb
 4405 0064 00000000 		.word	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore
 4406 0068 00000000 		.word	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf
 4407 006c 00000000 		.word	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj
 4408 0070 00000000 		.word	_ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj
 4409 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 4410 0078 00000000 		.word	_ZN21HangprinterKinematicsD1Ev
 4411 007c 00000000 		.word	_ZN21HangprinterKinematicsD0Ev
 4412              		.section	.rodata.str1.4,"aMS",%progbits,1
 4413              		.align	2
 4414              	.LC6:
 4415 0000 41206178 		.ascii	"A axis\000"
 4415      697300
 4416 0007 00       		.space	1
 4417              	.LC7:
 4418 0008 42206178 		.ascii	"B axis\000"
 4418      697300
 4419 000f 00       		.space	1
 4420              	.LC8:
 4421 0010 43206178 		.ascii	"C axis\000"
 4421      697300
 4422 0017 00       		.space	1
 4423              	.LC9:
 4424 0018 44206178 		.ascii	"D axis\000"
 4424      697300
 4425 001f 00       		.space	1
 4426              	.LC10:
 4427 0020 56206178 		.ascii	"V axis\000"
 4427      697300
 4428              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
