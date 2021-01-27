ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 1


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 2


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 3


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 4


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 5


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 6


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 7


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 8


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 9


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 10


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 11


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 12


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 13


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 14


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 15


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 16


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 17


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
 948 0052 4FF07E53 		mov	r3, #1065353216
 949 0056 26EE06AA 		vmul.f32	s20, s12, s12
 950 005a 67EE079A 		vmul.f32	s19, s14, s14
 951 005e 27EEA79A 		vmul.f32	s18, s15, s15
 952 0062 36EEE46A 		vsub.f32	s12, s13, s9
 953 0066 A6EEA69A 		vfma.f32	s18, s13, s13
 954 006a 0446     		mov	r4, r0
 955 006c 0D46     		mov	r5, r1
 956 006e A3EEA3AA 		vfma.f32	s20, s7, s7
 957 0072 9246     		mov	r10, r2
 958 0074 00F1F806 		add	r6, r0, #248
 959 0078 E4EE049A 		vfma.f32	s19, s8, s8
 960 007c 00F58679 		add	r9, r0, #268
 961 0080 0DF10408 		add	r8, sp, #4
 962 0084 E6EE068A 		vfma.f32	s17, s12, s12
 963 0088 05AF     		add	r7, sp, #20
 964 008a 0493     		str	r3, [sp, #16]	@ float
 965 008c 36EEC57A 		vsub.f32	s14, s13, s10
 966 0090 75EEE27A 		vsub.f32	s15, s11, s5
 967 0094 76EEC26A 		vsub.f32	s13, s13, s4
 968 0098 A7EE07AA 		vfma.f32	s20, s14, s14
 969 009c E6EEA69A 		vfma.f32	s19, s13, s13
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 18


 970 00a0 A7EEA79A 		vfma.f32	s18, s15, s15
 971 00a4 B0EE680A 		vmov.f32	s0, s17
 972 00a8 B5EE400A 		vcmp.f32	s0, #0
 973 00ac F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 974 00b0 CDED008A 		vstr.32	s17, [sp]
 975 00b4 8DED01AA 		vstr.32	s20, [sp, #4]
 976 00b8 CDED029A 		vstr.32	s19, [sp, #8]
 977 00bc 8DED039A 		vstr.32	s18, [sp, #12]
 978 00c0 B1EEC08A 		vsqrt.f32	s16, s0
 979 00c4 10D4     		bmi	.L134
 980              	.L110:
 981 00c6 F6EC017A 		vldmia.32	r6!, {s15}
 982 00ca 38EE678A 		vsub.f32	s16, s16, s15
 983 00ce B145     		cmp	r9, r6
 984 00d0 A7EC018A 		vstmia.32	r7!, {s16}
 985 00d4 0BD0     		beq	.L111
 986 00d6 B8EC010A 		vldmia.32	r8!, {s0}
 987 00da B5EE400A 		vcmp.f32	s0, #0
 988 00de F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 989 00e2 B1EEC08A 		vsqrt.f32	s16, s0
 990 00e6 EED5     		bpl	.L110
 991              	.L134:
 992 00e8 FFF7FEFF 		bl	sqrtf
 993 00ec EBE7     		b	.L110
 994              	.L111:
 995 00ee D5ED01AA 		vldr.32	s21, [r5, #4]
 996 00f2 D4ED057A 		vldr.32	s15, [r4, #20]
 997 00f6 95ED008A 		vldr.32	s16, [r5]
 998 00fa 94ED0EBA 		vldr.32	s22, [r4, #56]
 999 00fe D5ED02BA 		vldr.32	s23, [r5, #8]
 1000 0102 DDED05CA 		vldr.32	s25, [sp, #20]
 1001 0106 7AEEE77A 		vsub.f32	s15, s21, s15
 1002 010a 17EE900A 		vmov	r0, s15
 1003 010e FFF7FEFF 		bl	__aeabi_f2d
 1004 0112 D4ED047A 		vldr.32	s15, [r4, #16]
 1005 0116 78EE677A 		vsub.f32	s15, s16, s15
 1006 011a 8046     		mov	r8, r0
 1007 011c 17EE900A 		vmov	r0, s15
 1008 0120 8946     		mov	r9, r1
 1009 0122 FFF7FEFF 		bl	__aeabi_f2d
 1010 0126 0246     		mov	r2, r0
 1011 0128 0B46     		mov	r3, r1
 1012 012a FFF7FEFF 		bl	__aeabi_dmul
 1013 012e 4246     		mov	r2, r8
 1014 0130 0646     		mov	r6, r0
 1015 0132 0F46     		mov	r7, r1
 1016 0134 4B46     		mov	r3, r9
 1017 0136 4046     		mov	r0, r8
 1018 0138 4946     		mov	r1, r9
 1019 013a FFF7FEFF 		bl	__aeabi_dmul
 1020 013e 0246     		mov	r2, r0
 1021 0140 0B46     		mov	r3, r1
 1022 0142 3046     		mov	r0, r6
 1023 0144 3946     		mov	r1, r7
 1024 0146 FFF7FEFF 		bl	__aeabi_dadd
 1025 014a 0022     		movs	r2, #0
 1026 014c 0023     		movs	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 19


 1027 014e 0646     		mov	r6, r0
 1028 0150 0F46     		mov	r7, r1
 1029 0152 FFF7FEFF 		bl	__aeabi_dcmpun
 1030 0156 40B9     		cbnz	r0, .L113
 1031 0158 0022     		movs	r2, #0
 1032 015a 0023     		movs	r3, #0
 1033 015c 3046     		mov	r0, r6
 1034 015e 3946     		mov	r1, r7
 1035 0160 FFF7FEFF 		bl	__aeabi_dcmpge
 1036 0164 0028     		cmp	r0, #0
 1037 0166 00F0C580 		beq	.L135
 1038              	.L113:
 1039 016a D4ED087A 		vldr.32	s15, [r4, #32]
 1040 016e 9DED06DA 		vldr.32	s26, [sp, #24]
 1041 0172 7AEEE77A 		vsub.f32	s15, s21, s15
 1042 0176 17EE900A 		vmov	r0, s15
 1043 017a FFF7FEFF 		bl	__aeabi_f2d
 1044 017e D4ED077A 		vldr.32	s15, [r4, #28]
 1045 0182 78EE677A 		vsub.f32	s15, s16, s15
 1046 0186 0646     		mov	r6, r0
 1047 0188 17EE900A 		vmov	r0, s15
 1048 018c 0F46     		mov	r7, r1
 1049 018e FFF7FEFF 		bl	__aeabi_f2d
 1050 0192 3246     		mov	r2, r6
 1051 0194 8046     		mov	r8, r0
 1052 0196 8946     		mov	r9, r1
 1053 0198 3B46     		mov	r3, r7
 1054 019a 3046     		mov	r0, r6
 1055 019c 3946     		mov	r1, r7
 1056 019e FFF7FEFF 		bl	__aeabi_dmul
 1057 01a2 4246     		mov	r2, r8
 1058 01a4 0646     		mov	r6, r0
 1059 01a6 0F46     		mov	r7, r1
 1060 01a8 4B46     		mov	r3, r9
 1061 01aa 4046     		mov	r0, r8
 1062 01ac 4946     		mov	r1, r9
 1063 01ae FFF7FEFF 		bl	__aeabi_dmul
 1064 01b2 0246     		mov	r2, r0
 1065 01b4 0B46     		mov	r3, r1
 1066 01b6 3046     		mov	r0, r6
 1067 01b8 3946     		mov	r1, r7
 1068 01ba FFF7FEFF 		bl	__aeabi_dadd
 1069 01be 0022     		movs	r2, #0
 1070 01c0 0023     		movs	r3, #0
 1071 01c2 0646     		mov	r6, r0
 1072 01c4 0F46     		mov	r7, r1
 1073 01c6 FFF7FEFF 		bl	__aeabi_dcmpun
 1074 01ca 40B9     		cbnz	r0, .L114
 1075 01cc 0022     		movs	r2, #0
 1076 01ce 0023     		movs	r3, #0
 1077 01d0 3046     		mov	r0, r6
 1078 01d2 3946     		mov	r1, r7
 1079 01d4 FFF7FEFF 		bl	__aeabi_dcmpge
 1080 01d8 0028     		cmp	r0, #0
 1081 01da 00F09980 		beq	.L136
 1082              	.L114:
 1083 01de D4ED0B7A 		vldr.32	s15, [r4, #44]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 20


 1084 01e2 9DED07CA 		vldr.32	s24, [sp, #28]
 1085 01e6 7AEEE77A 		vsub.f32	s15, s21, s15
 1086 01ea 17EE900A 		vmov	r0, s15
 1087 01ee FFF7FEFF 		bl	__aeabi_f2d
 1088 01f2 D4ED0A7A 		vldr.32	s15, [r4, #40]
 1089 01f6 78EE677A 		vsub.f32	s15, s16, s15
 1090 01fa 8046     		mov	r8, r0
 1091 01fc 17EE900A 		vmov	r0, s15
 1092 0200 8946     		mov	r9, r1
 1093 0202 FFF7FEFF 		bl	__aeabi_f2d
 1094 0206 4246     		mov	r2, r8
 1095 0208 0646     		mov	r6, r0
 1096 020a 0F46     		mov	r7, r1
 1097 020c 4B46     		mov	r3, r9
 1098 020e 4046     		mov	r0, r8
 1099 0210 4946     		mov	r1, r9
 1100 0212 FFF7FEFF 		bl	__aeabi_dmul
 1101 0216 3246     		mov	r2, r6
 1102 0218 0446     		mov	r4, r0
 1103 021a 0D46     		mov	r5, r1
 1104 021c 3B46     		mov	r3, r7
 1105 021e 3046     		mov	r0, r6
 1106 0220 3946     		mov	r1, r7
 1107 0222 FFF7FEFF 		bl	__aeabi_dmul
 1108 0226 0246     		mov	r2, r0
 1109 0228 0B46     		mov	r3, r1
 1110 022a 2046     		mov	r0, r4
 1111 022c 2946     		mov	r1, r5
 1112 022e FFF7FEFF 		bl	__aeabi_dadd
 1113 0232 0022     		movs	r2, #0
 1114 0234 0023     		movs	r3, #0
 1115 0236 0446     		mov	r4, r0
 1116 0238 0D46     		mov	r5, r1
 1117 023a FFF7FEFF 		bl	__aeabi_dcmpun
 1118 023e 38B9     		cbnz	r0, .L115
 1119 0240 0022     		movs	r2, #0
 1120 0242 0023     		movs	r3, #0
 1121 0244 2046     		mov	r0, r4
 1122 0246 2946     		mov	r1, r5
 1123 0248 FFF7FEFF 		bl	__aeabi_dcmpge
 1124 024c 0028     		cmp	r0, #0
 1125 024e 5AD0     		beq	.L137
 1126              	.L115:
 1127 0250 F5EEC08A 		vcmpe.f32	s17, #0
 1128 0254 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1129 0258 45DD     		ble	.L132
 1130 025a B5EEC0AA 		vcmpe.f32	s20, #0
 1131 025e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1132 0262 40DD     		ble	.L132
 1133 0264 F5EEC09A 		vcmpe.f32	s19, #0
 1134 0268 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1135 026c 3BDD     		ble	.L132
 1136 026e B5EEC09A 		vcmpe.f32	s18, #0
 1137 0272 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1138 0276 36DD     		ble	.L132
 1139 0278 9AED000A 		vldr.32	s0, [r10]
 1140 027c 2CEE800A 		vmul.f32	s0, s25, s0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 21


 1141 0280 FFF7FEFF 		bl	lrintf
 1142 0284 9AED010A 		vldr.32	s0, [r10, #4]
 1143 0288 1F9B     		ldr	r3, [sp, #124]
 1144 028a 2DEE000A 		vmul.f32	s0, s26, s0
 1145 028e 1860     		str	r0, [r3]
 1146 0290 FFF7FEFF 		bl	lrintf
 1147 0294 9AED020A 		vldr.32	s0, [r10, #8]
 1148 0298 1F9B     		ldr	r3, [sp, #124]
 1149 029a 2CEE000A 		vmul.f32	s0, s24, s0
 1150 029e 5860     		str	r0, [r3, #4]
 1151 02a0 FFF7FEFF 		bl	lrintf
 1152 02a4 DAED037A 		vldr.32	s15, [r10, #12]
 1153 02a8 1F9B     		ldr	r3, [sp, #124]
 1154 02aa 9DED080A 		vldr.32	s0, [sp, #32]
 1155 02ae 9860     		str	r0, [r3, #8]
 1156 02b0 20EE270A 		vmul.f32	s0, s0, s15
 1157 02b4 FFF7FEFF 		bl	lrintf
 1158 02b8 DFED1A7A 		vldr.32	s15, .L138
 1159 02bc 9AED040A 		vldr.32	s0, [r10, #16]
 1160 02c0 1F9B     		ldr	r3, [sp, #124]
 1161 02c2 3BEE6BBA 		vsub.f32	s22, s22, s23
 1162 02c6 D860     		str	r0, [r3, #12]
 1163 02c8 3BEE67BA 		vsub.f32	s22, s22, s15
 1164 02cc 2BEE000A 		vmul.f32	s0, s22, s0
 1165 02d0 FFF7FEFF 		bl	lrintf
 1166 02d4 1F9A     		ldr	r2, [sp, #124]
 1167 02d6 0123     		movs	r3, #1
 1168 02d8 1061     		str	r0, [r2, #16]
 1169 02da 1846     		mov	r0, r3
 1170 02dc 0AB0     		add	sp, sp, #40
 1171              		@ sp needed
 1172 02de BDEC0C8B 		vldm	sp!, {d8-d13}
 1173 02e2 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1174              	.L132:
 1175 02e6 0023     		movs	r3, #0
 1176 02e8 1846     		mov	r0, r3
 1177 02ea 0AB0     		add	sp, sp, #40
 1178              		@ sp needed
 1179 02ec BDEC0C8B 		vldm	sp!, {d8-d13}
 1180 02f0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1181              	.L135:
 1182 02f4 47EC106B 		vmov	d0, r6, r7
 1183 02f8 FFF7FEFF 		bl	sqrt
 1184 02fc D5ED01AA 		vldr.32	s21, [r5, #4]
 1185 0300 95ED008A 		vldr.32	s16, [r5]
 1186 0304 31E7     		b	.L113
 1187              	.L137:
 1188 0306 45EC104B 		vmov	d0, r4, r5
 1189 030a FFF7FEFF 		bl	sqrt
 1190 030e 9FE7     		b	.L115
 1191              	.L136:
 1192 0310 47EC106B 		vmov	d0, r6, r7
 1193 0314 FFF7FEFF 		bl	sqrt
 1194 0318 D5ED01AA 		vldr.32	s21, [r5, #4]
 1195 031c 95ED008A 		vldr.32	s16, [r5]
 1196 0320 5DE7     		b	.L114
 1197              	.L139:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 22


 1198 0322 00BF     		.align	2
 1199              	.L138:
 1200 0324 00808F43 		.word	1133477888
 1201              		.size	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK21HangprinterKinematic
 1202              		.section	.text._Z14elongationCalcf,"ax",%progbits
 1203              		.align	1
 1204              		.p2align 2,,3
 1205              		.global	_Z14elongationCalcf
 1206              		.syntax unified
 1207              		.thumb
 1208              		.thumb_func
 1209              		.fpu fpv4-sp-d16
 1210              		.type	_Z14elongationCalcf, %function
 1211              	_Z14elongationCalcf:
 1212              		@ args = 0, pretend = 0, frame = 0
 1213              		@ frame_needed = 0, uses_anonymous_args = 0
 1214              		@ link register save eliminated.
 1215 0000 DFED087A 		vldr.32	s15, .L141
 1216 0004 9FED086A 		vldr.32	s12, .L141+4
 1217 0008 DFED086A 		vldr.32	s13, .L141+8
 1218 000c 70EE277A 		vadd.f32	s15, s0, s15
 1219 0010 B0EE087A 		vmov.f32	s14, #3.0e+0
 1220 0014 27EE877A 		vmul.f32	s14, s15, s14
 1221 0018 87EE060A 		vdiv.f32	s0, s14, s12
 1222 001c A7EEA60A 		vfma.f32	s0, s15, s13
 1223 0020 7047     		bx	lr
 1224              	.L142:
 1225 0022 00BF     		.align	2
 1226              	.L141:
 1227 0024 3D52F244 		.word	1156731453
 1228 0028 E69E9A46 		.word	1184538342
 1229 002c 0AD7233B 		.word	992204554
 1230              		.size	_Z14elongationCalcf, .-_Z14elongationCalcf
 1231              		.section	.text._ZN21HangprinterKinematics6RecalcEv,"ax",%progbits
 1232              		.align	1
 1233              		.p2align 2,,3
 1234              		.global	_ZN21HangprinterKinematics6RecalcEv
 1235              		.syntax unified
 1236              		.thumb
 1237              		.thumb_func
 1238              		.fpu fpv4-sp-d16
 1239              		.type	_ZN21HangprinterKinematics6RecalcEv, %function
 1240              	_ZN21HangprinterKinematics6RecalcEv:
 1241              		@ args = 0, pretend = 0, frame = 8
 1242              		@ frame_needed = 0, uses_anonymous_args = 0
 1243 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1244 0004 D0ED045A 		vldr.32	s11, [r0, #16]
 1245 0008 90ED055A 		vldr.32	s10, [r0, #20]
 1246 000c D0ED0B4A 		vldr.32	s9, [r0, #44]
 1247 0010 90ED066A 		vldr.32	s12, [r0, #24]
 1248 0014 D0ED0C2A 		vldr.32	s5, [r0, #48]
 1249 0018 90ED084A 		vldr.32	s8, [r0, #32]
 1250 001c D0ED0A3A 		vldr.32	s7, [r0, #40]
 1251 0020 90ED093A 		vldr.32	s6, [r0, #36]
 1252 0024 2DED068B 		vpush.64	{d8, d9, d10}
 1253 0028 74EEC51A 		vsub.f32	s3, s9, s10
 1254 002c 90ED078A 		vldr.32	s16, [r0, #28]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 23


 1255 0030 90ED0FAA 		vldr.32	s20, [r0, #60]
 1256 0034 C0ED4C1A 		vstr.32	s3, [r0, #304]
 1257 0038 24EEE57A 		vnmul.f32	s14, s9, s11
 1258 003c 32EEC62A 		vsub.f32	s4, s5, s12
 1259 0040 62EEC56A 		vnmul.f32	s13, s5, s10
 1260 0044 A8EE217A 		vfma.f32	s14, s16, s3
 1261 0048 A5B0     		sub	sp, sp, #148
 1262 004a 0446     		mov	r4, r0
 1263 004c E4EE026A 		vfma.f32	s13, s8, s4
 1264 0050 A5EE237A 		vfma.f32	s14, s10, s7
 1265 0054 65EEA27A 		vmul.f32	s15, s11, s5
 1266 0058 E6EE246A 		vfma.f32	s13, s12, s9
 1267 005c 73EEE50A 		vsub.f32	s1, s7, s11
 1268 0060 E8EE027A 		vfma.f32	s15, s16, s4
 1269 0064 B1EE431A 		vneg.f32	s2, s6
 1270 0068 A4EE607A 		vfms.f32	s14, s8, s1
 1271 006c E1EE216A 		vfma.f32	s13, s2, s3
 1272 0070 E6EE237A 		vfma.f32	s15, s12, s7
 1273 0074 37EE077A 		vadd.f32	s14, s14, s14
 1274 0078 76EEA66A 		vadd.f32	s13, s13, s13
 1275 007c 27EE079A 		vmul.f32	s18, s14, s14
 1276 0080 E1EE207A 		vfma.f32	s15, s2, s1
 1277 0084 65EEA6AA 		vmul.f32	s21, s11, s13
 1278 0088 25EE050A 		vmul.f32	s0, s10, s10
 1279 008c F0EE498A 		vmov.f32	s17, s18
 1280 0090 64EEA49A 		vmul.f32	s19, s9, s9
 1281 0094 24EE041A 		vmul.f32	s2, s8, s8
 1282 0098 A5EEA50A 		vfma.f32	s0, s11, s11
 1283 009c 6AEE87AA 		vmul.f32	s21, s21, s14
 1284 00a0 E6EEA68A 		vfma.f32	s17, s13, s13
 1285 00a4 F1EE677A 		vneg.f32	s15, s15
 1286 00a8 77EEA77A 		vadd.f32	s15, s15, s15
 1287 00ac E6EE09AA 		vfma.f32	s21, s12, s18
 1288 00b0 E3EEA39A 		vfma.f32	s19, s7, s7
 1289 00b4 A8EE081A 		vfma.f32	s2, s16, s16
 1290 00b8 A6EE060A 		vfma.f32	s0, s12, s12
 1291 00bc 74EE644A 		vsub.f32	s9, s8, s9
 1292 00c0 E7EEA78A 		vfma.f32	s17, s15, s15
 1293 00c4 35EE444A 		vsub.f32	s8, s10, s8
 1294 00c8 25EE275A 		vmul.f32	s10, s10, s15
 1295 00cc A3EE031A 		vfma.f32	s2, s6, s6
 1296 00d0 E2EEA29A 		vfma.f32	s19, s5, s5
 1297 00d4 E7EE05AA 		vfma.f32	s21, s14, s10
 1298 00d8 78EE633A 		vsub.f32	s7, s16, s7
 1299 00dc 75EEC85A 		vsub.f32	s11, s11, s16
 1300 00e0 36EE436A 		vsub.f32	s12, s12, s6
 1301 00e4 2AEE0AAA 		vmul.f32	s20, s20, s20
 1302 00e8 33EE623A 		vsub.f32	s6, s6, s5
 1303 00ec 78EEA88A 		vadd.f32	s17, s17, s17
 1304 00f0 B5EE400A 		vcmp.f32	s0, #0
 1305 00f4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1306 00f8 80ED43AA 		vstr.32	s20, [r0, #268]
 1307 00fc C0ED469A 		vstr.32	s19, [r0, #280]
 1308 0100 C0ED475A 		vstr.32	s11, [r0, #284]
 1309 0104 C0ED483A 		vstr.32	s7, [r0, #288]
 1310 0108 80ED4A4A 		vstr.32	s8, [r0, #296]
 1311 010c C0ED4B4A 		vstr.32	s9, [r0, #300]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 24


 1312 0110 80ED4D6A 		vstr.32	s12, [r0, #308]
 1313 0114 80ED4E3A 		vstr.32	s6, [r0, #312]
 1314 0118 80ED507A 		vstr.32	s14, [r0, #320]
 1315 011c C0ED490A 		vstr.32	s1, [r0, #292]
 1316 0120 80ED539A 		vstr.32	s18, [r0, #332]
 1317 0124 80ED4F2A 		vstr.32	s4, [r0, #316]
 1318 0128 C0ED527A 		vstr.32	s15, [r0, #328]
 1319 012c C0ED516A 		vstr.32	s13, [r0, #324]
 1320 0130 80ED451A 		vstr.32	s2, [r0, #276]
 1321 0134 C0ED54AA 		vstr.32	s21, [r0, #336]
 1322 0138 C0ED558A 		vstr.32	s17, [r0, #340]
 1323 013c 80ED440A 		vstr.32	s0, [r0, #272]
 1324 0140 B1EEC08A 		vsqrt.f32	s16, s0
 1325 0144 00F12C81 		bmi	.L157
 1326              	.L144:
 1327 0148 B5EE401A 		vcmp.f32	s2, #0
 1328 014c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1329 0150 84ED3E8A 		vstr.32	s16, [r4, #248]
 1330 0154 B1EEC18A 		vsqrt.f32	s16, s2
 1331 0158 00F13681 		bmi	.L158
 1332              	.L145:
 1333 015c 94ED0B0A 		vldr.32	s0, [r4, #44]
 1334 0160 94ED0A7A 		vldr.32	s14, [r4, #40]
 1335 0164 D4ED0C7A 		vldr.32	s15, [r4, #48]
 1336 0168 84ED3F8A 		vstr.32	s16, [r4, #252]
 1337 016c 20EE000A 		vmul.f32	s0, s0, s0
 1338 0170 A7EE070A 		vfma.f32	s0, s14, s14
 1339 0174 A7EEA70A 		vfma.f32	s0, s15, s15
 1340 0178 B5EE400A 		vcmp.f32	s0, #0
 1341 017c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1342 0180 B1EEC08A 		vsqrt.f32	s16, s0
 1343 0184 00F11D81 		bmi	.L159
 1344              	.L146:
 1345 0188 626B     		ldr	r2, [r4, #52]	@ float
 1346 018a A36B     		ldr	r3, [r4, #56]	@ float
 1347 018c 914F     		ldr	r7, .L160
 1348 018e C4F80421 		str	r2, [r4, #260]	@ float
 1349 0192 C4F80831 		str	r3, [r4, #264]	@ float
 1350 0196 04F1F805 		add	r5, r4, #248
 1351 019a 04F58676 		add	r6, r4, #268
 1352 019e 84ED408A 		vstr.32	s16, [r4, #256]
 1353              	.L147:
 1354 01a2 55F8040B 		ldr	r0, [r5], #4	@ float
 1355 01a6 FFF7FEFF 		bl	__aeabi_f2d
 1356 01aa 0246     		mov	r2, r0
 1357 01ac 0B46     		mov	r3, r1
 1358 01ae 3846     		mov	r0, r7
 1359 01b0 FFF7FEFF 		bl	debugPrintf
 1360 01b4 AE42     		cmp	r6, r5
 1361 01b6 F4D1     		bne	.L147
 1362 01b8 874B     		ldr	r3, .L160+4
 1363 01ba DFED888A 		vldr.32	s17, .L160+8
 1364 01be D3F80480 		ldr	r8, [r3, #4]
 1365 01c2 04F14405 		add	r5, r4, #68
 1366 01c6 4746     		mov	r7, r8
 1367 01c8 08F5EE76 		add	r6, r8, #476
 1368 01cc 08F5F879 		add	r9, r8, #496
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 25


 1369 01d0 B7EE009A 		vmov.f32	s18, #1.0e+0
 1370              	.L150:
 1371 01d4 D5ED057A 		vldr.32	s15, [r5, #20]	@ int
 1372 01d8 97F83013 		ldrb	r1, [r7, #816]	@ zero_extendqisi2
 1373 01dc F8EE676A 		vcvt.f32.u32	s13, s15
 1374 01e0 D5ED197A 		vldr.32	s15, [r5, #100]	@ int
 1375 01e4 B8EE678A 		vcvt.f32.u32	s16, s15
 1376 01e8 0DF18F02 		add	r2, sp, #143
 1377 01ec 4046     		mov	r0, r8
 1378 01ee 26EE888A 		vmul.f32	s16, s13, s16
 1379 01f2 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 1380 01f6 07EE900A 		vmov	s15, r0	@ int
 1381 01fa F8EE676A 		vcvt.f32.u32	s13, s15
 1382 01fe D5ED147A 		vldr.32	s15, [r5, #80]	@ int
 1383 0202 6A69     		ldr	r2, [r5, #20]
 1384 0204 AB6A     		ldr	r3, [r5, #40]
 1385 0206 D4ED105A 		vldr.32	s11, [r4, #64]
 1386 020a B8EE676A 		vcvt.f32.u32	s12, s15
 1387 020e D5ED0F7A 		vldr.32	s15, [r5, #60]	@ int
 1388 0212 66EE886A 		vmul.f32	s13, s13, s16
 1389 0216 B8EE677A 		vcvt.f32.u32	s14, s15
 1390 021a 66EE866A 		vmul.f32	s13, s13, s12
 1391 021e 27EE287A 		vmul.f32	s14, s14, s17
 1392 0222 03FB02F3 		mul	r3, r3, r2
 1393 0226 86EE876A 		vdiv.f32	s12, s13, s14
 1394 022a 0C37     		adds	r7, r7, #12
 1395 022c 07EE903A 		vmov	s15, r3	@ int
 1396 0230 F8EE677A 		vcvt.f32.u32	s15, s15
 1397 0234 76EE066A 		vadd.f32	s13, s12, s12
 1398 0238 67EEE57A 		vnmul.f32	s15, s15, s11
 1399 023c 86EEA77A 		vdiv.f32	s14, s13, s15
 1400 0240 C5ED287A 		vstr.32	s15, [r5, #160]
 1401 0244 85ED1E7A 		vstr.32	s14, [r5, #120]
 1402 0248 B5EC017A 		vldmia.32	r5!, {s14}
 1403 024c C6EE077A 		vdiv.f32	s15, s12, s14
 1404 0250 27EE077A 		vmul.f32	s14, s14, s14
 1405 0254 F4EE677A 		vcmp.f32	s15, s15
 1406 0258 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1407 025c 85ED227A 		vstr.32	s14, [r5, #136]
 1408 0260 06D6     		bvs	.L148
 1409 0262 F4EEC97A 		vcmpe.f32	s15, s18
 1410 0266 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1411 026a D8BF     		it	le
 1412 026c F0EE497A 		vmovle.f32	s15, s18
 1413              	.L148:
 1414 0270 E6EC017A 		vstmia.32	r6!, {s15}
 1415 0274 4E45     		cmp	r6, r9
 1416 0276 ADD1     		bne	.L150
 1417 0278 DFF86891 		ldr	r9, .L160+16
 1418 027c DFF86881 		ldr	r8, .L160+20
 1419 0280 04F1BC05 		add	r5, r4, #188
 1420 0284 04F1E406 		add	r6, r4, #228
 1421 0288 04F1D007 		add	r7, r4, #208
 1422              	.L151:
 1423 028c 56F8040B 		ldr	r0, [r6], #4	@ float
 1424 0290 FFF7FEFF 		bl	__aeabi_f2d
 1425 0294 0246     		mov	r2, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 26


 1426 0296 0B46     		mov	r3, r1
 1427 0298 4846     		mov	r0, r9
 1428 029a FFF7FEFF 		bl	debugPrintf
 1429 029e 55F8040B 		ldr	r0, [r5], #4	@ float
 1430 02a2 FFF7FEFF 		bl	__aeabi_f2d
 1431 02a6 0246     		mov	r2, r0
 1432 02a8 0B46     		mov	r3, r1
 1433 02aa 4046     		mov	r0, r8
 1434 02ac FFF7FEFF 		bl	debugPrintf
 1435 02b0 AF42     		cmp	r7, r5
 1436 02b2 EBD1     		bne	.L151
 1437 02b4 D4F81001 		ldr	r0, [r4, #272]	@ float
 1438 02b8 FFF7FEFF 		bl	__aeabi_f2d
 1439 02bc 0646     		mov	r6, r0
 1440 02be D4F85401 		ldr	r0, [r4, #340]	@ float
 1441 02c2 0F46     		mov	r7, r1
 1442 02c4 FFF7FEFF 		bl	__aeabi_f2d
 1443 02c8 CDE92001 		strd	r0, [sp, #128]
 1444 02cc D4F85001 		ldr	r0, [r4, #336]	@ float
 1445 02d0 FFF7FEFF 		bl	__aeabi_f2d
 1446 02d4 CDE91E01 		strd	r0, [sp, #120]
 1447 02d8 D4F84801 		ldr	r0, [r4, #328]	@ float
 1448 02dc FFF7FEFF 		bl	__aeabi_f2d
 1449 02e0 CDE91C01 		strd	r0, [sp, #112]
 1450 02e4 D4F84401 		ldr	r0, [r4, #324]	@ float
 1451 02e8 FFF7FEFF 		bl	__aeabi_f2d
 1452 02ec CDE91A01 		strd	r0, [sp, #104]
 1453 02f0 D4F84C01 		ldr	r0, [r4, #332]	@ float
 1454 02f4 FFF7FEFF 		bl	__aeabi_f2d
 1455 02f8 CDE91801 		strd	r0, [sp, #96]
 1456 02fc D4F84001 		ldr	r0, [r4, #320]	@ float
 1457 0300 FFF7FEFF 		bl	__aeabi_f2d
 1458 0304 CDE91601 		strd	r0, [sp, #88]
 1459 0308 D4F83C01 		ldr	r0, [r4, #316]	@ float
 1460 030c FFF7FEFF 		bl	__aeabi_f2d
 1461 0310 CDE91401 		strd	r0, [sp, #80]
 1462 0314 D4F83801 		ldr	r0, [r4, #312]	@ float
 1463 0318 FFF7FEFF 		bl	__aeabi_f2d
 1464 031c CDE91201 		strd	r0, [sp, #72]
 1465 0320 D4F83401 		ldr	r0, [r4, #308]	@ float
 1466 0324 FFF7FEFF 		bl	__aeabi_f2d
 1467 0328 CDE91001 		strd	r0, [sp, #64]
 1468 032c D4F83001 		ldr	r0, [r4, #304]	@ float
 1469 0330 FFF7FEFF 		bl	__aeabi_f2d
 1470 0334 CDE90E01 		strd	r0, [sp, #56]
 1471 0338 D4F82C01 		ldr	r0, [r4, #300]	@ float
 1472 033c FFF7FEFF 		bl	__aeabi_f2d
 1473 0340 CDE90C01 		strd	r0, [sp, #48]
 1474 0344 D4F82801 		ldr	r0, [r4, #296]	@ float
 1475 0348 FFF7FEFF 		bl	__aeabi_f2d
 1476 034c CDE90A01 		strd	r0, [sp, #40]
 1477 0350 D4F82401 		ldr	r0, [r4, #292]	@ float
 1478 0354 FFF7FEFF 		bl	__aeabi_f2d
 1479 0358 CDE90801 		strd	r0, [sp, #32]
 1480 035c D4F82001 		ldr	r0, [r4, #288]	@ float
 1481 0360 FFF7FEFF 		bl	__aeabi_f2d
 1482 0364 CDE90601 		strd	r0, [sp, #24]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 27


 1483 0368 D4F81C01 		ldr	r0, [r4, #284]	@ float
 1484 036c FFF7FEFF 		bl	__aeabi_f2d
 1485 0370 CDE90401 		strd	r0, [sp, #16]
 1486 0374 D4F81801 		ldr	r0, [r4, #280]	@ float
 1487 0378 FFF7FEFF 		bl	__aeabi_f2d
 1488 037c CDE90201 		strd	r0, [sp, #8]
 1489 0380 D4F81401 		ldr	r0, [r4, #276]	@ float
 1490 0384 FFF7FEFF 		bl	__aeabi_f2d
 1491 0388 3246     		mov	r2, r6
 1492 038a CDE90001 		strd	r0, [sp]
 1493 038e 3B46     		mov	r3, r7
 1494 0390 1348     		ldr	r0, .L160+12
 1495 0392 FFF7FEFF 		bl	debugPrintf
 1496 0396 25B0     		add	sp, sp, #148
 1497              		@ sp needed
 1498 0398 BDEC068B 		vldm	sp!, {d8-d10}
 1499 039c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1500              	.L157:
 1501 03a0 FFF7FEFF 		bl	sqrtf
 1502 03a4 D4ED087A 		vldr.32	s15, [r4, #32]
 1503 03a8 D4ED076A 		vldr.32	s13, [r4, #28]
 1504 03ac 94ED097A 		vldr.32	s14, [r4, #36]
 1505 03b0 67EEA77A 		vmul.f32	s15, s15, s15
 1506 03b4 E6EEA67A 		vfma.f32	s15, s13, s13
 1507 03b8 B0EE671A 		vmov.f32	s2, s15
 1508 03bc A7EE071A 		vfma.f32	s2, s14, s14
 1509 03c0 C2E6     		b	.L144
 1510              	.L159:
 1511 03c2 FFF7FEFF 		bl	sqrtf
 1512 03c6 DFE6     		b	.L146
 1513              	.L158:
 1514 03c8 B0EE410A 		vmov.f32	s0, s2
 1515 03cc FFF7FEFF 		bl	sqrtf
 1516 03d0 C4E6     		b	.L145
 1517              	.L161:
 1518 03d2 00BF     		.align	2
 1519              	.L160:
 1520 03d4 00000000 		.word	.LC9
 1521 03d8 00000000 		.word	reprap
 1522 03dc DB0FC940 		.word	1086918619
 1523 03e0 54000000 		.word	.LC12
 1524 03e4 24000000 		.word	.LC10
 1525 03e8 3C000000 		.word	.LC11
 1526              		.size	_ZN21HangprinterKinematics6RecalcEv, .-_ZN21HangprinterKinematics6RecalcEv
 1527              		.section	.text._ZN21HangprinterKinematics4InitEv,"ax",%progbits
 1528              		.align	1
 1529              		.p2align 2,,3
 1530              		.global	_ZN21HangprinterKinematics4InitEv
 1531              		.syntax unified
 1532              		.thumb
 1533              		.thumb_func
 1534              		.fpu fpv4-sp-d16
 1535              		.type	_ZN21HangprinterKinematics4InitEv, %function
 1536              	_ZN21HangprinterKinematics4InitEv:
 1537              		@ args = 0, pretend = 0, frame = 128
 1538              		@ frame_needed = 0, uses_anonymous_args = 0
 1539 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 28


 1540 0004 554D     		ldr	r5, .L167
 1541 0006 DFF87C91 		ldr	r9, .L167+40
 1542 000a 0446     		mov	r4, r0
 1543 000c 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1544 000e 2E46     		mov	r6, r5
 1545 0010 A1B0     		sub	sp, sp, #132
 1546 0012 56F804BB 		ldr	fp, [r6], #4
 1547 0016 0DF1080E 		add	lr, sp, #8
 1548 001a AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 1549 001e 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1550 0020 05F11808 		add	r8, r5, #24
 1551 0024 0DF11C0C 		add	ip, sp, #28
 1552 0028 ACE80F00 		stmia	ip!, {r0, r1, r2, r3}
 1553 002c B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 1554 0030 0CAF     		add	r7, sp, #48
 1555 0032 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 1556 0034 D6F800A0 		ldr	r10, [r6]
 1557 0038 D8F80030 		ldr	r3, [r8]
 1558 003c CEF800B0 		str	fp, [lr]
 1559 0040 05F12C08 		add	r8, r5, #44
 1560 0044 CCF800A0 		str	r10, [ip]
 1561 0048 3B60     		str	r3, [r7]
 1562 004a 0193     		str	r3, [sp, #4]
 1563 004c B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 1564 0050 05F1400E 		add	lr, r5, #64
 1565 0054 0DF1440C 		add	ip, sp, #68
 1566 0058 ACE80F00 		stmia	ip!, {r0, r1, r2, r3}
 1567 005c BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 1568 0060 5435     		adds	r5, r5, #84
 1569 0062 16AF     		add	r7, sp, #88
 1570 0064 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 1571 0066 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1572 0068 1BAE     		add	r6, sp, #108
 1573 006a 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 1574 006c B9E80700 		ldmia	r9!, {r0, r1, r2}
 1575 0070 3B4B     		ldr	r3, .L167+4
 1576 0072 D8F80080 		ldr	r8, [r8]
 1577 0076 DEF800E0 		ldr	lr, [lr]
 1578 007a 2D68     		ldr	r5, [r5]
 1579 007c C7F800E0 		str	lr, [r7]
 1580 0080 CCF80080 		str	r8, [ip]
 1581 0084 3560     		str	r5, [r6]
 1582 0086 2061     		str	r0, [r4, #16]	@ unaligned
 1583 0088 6161     		str	r1, [r4, #20]	@ unaligned
 1584 008a A261     		str	r2, [r4, #24]	@ unaligned
 1585 008c 07CB     		ldmia	r3!, {r0, r1, r2}
 1586 008e 354B     		ldr	r3, .L167+8
 1587 0090 E061     		str	r0, [r4, #28]	@ unaligned
 1588 0092 2162     		str	r1, [r4, #32]	@ unaligned
 1589 0094 6262     		str	r2, [r4, #36]	@ unaligned
 1590 0096 07CB     		ldmia	r3!, {r0, r1, r2}
 1591 0098 02AE     		add	r6, sp, #8
 1592 009a A062     		str	r0, [r4, #40]	@ unaligned
 1593 009c E162     		str	r1, [r4, #44]	@ unaligned
 1594 009e 2263     		str	r2, [r4, #48]	@ unaligned
 1595 00a0 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1596 00a2 314E     		ldr	r6, .L167+12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 29


 1597 00a4 A663     		str	r6, [r4, #56]	@ float
 1598 00a6 314E     		ldr	r6, .L167+16
 1599 00a8 2664     		str	r6, [r4, #64]	@ float
 1600 00aa 07AE     		add	r6, sp, #28
 1601 00ac 6064     		str	r0, [r4, #68]	@ unaligned
 1602 00ae A164     		str	r1, [r4, #72]	@ unaligned
 1603 00b0 E264     		str	r2, [r4, #76]	@ unaligned
 1604 00b2 2365     		str	r3, [r4, #80]	@ unaligned
 1605 00b4 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1606 00b6 2E4F     		ldr	r7, .L167+20
 1607 00b8 6763     		str	r7, [r4, #52]	@ float
 1608 00ba 0CAE     		add	r6, sp, #48
 1609 00bc 2D4F     		ldr	r7, .L167+24
 1610 00be E763     		str	r7, [r4, #60]	@ float
 1611 00c0 C4F854B0 		str	fp, [r4, #84]	@ unaligned
 1612 00c4 A065     		str	r0, [r4, #88]	@ unaligned
 1613 00c6 E165     		str	r1, [r4, #92]	@ unaligned
 1614 00c8 2266     		str	r2, [r4, #96]	@ unaligned
 1615 00ca 6366     		str	r3, [r4, #100]	@ unaligned
 1616 00cc 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1617 00ce 11AE     		add	r6, sp, #68
 1618 00d0 E066     		str	r0, [r4, #108]	@ unaligned
 1619 00d2 2167     		str	r1, [r4, #112]	@ unaligned
 1620 00d4 6267     		str	r2, [r4, #116]	@ unaligned
 1621 00d6 A367     		str	r3, [r4, #120]	@ unaligned
 1622 00d8 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1623 00da 16AE     		add	r6, sp, #88
 1624 00dc C4F88000 		str	r0, [r4, #128]	@ unaligned
 1625 00e0 C4F88410 		str	r1, [r4, #132]	@ unaligned
 1626 00e4 C4F88820 		str	r2, [r4, #136]	@ unaligned
 1627 00e8 C4F88C30 		str	r3, [r4, #140]	@ unaligned
 1628 00ec 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1629 00ee 019F     		ldr	r7, [sp, #4]
 1630 00f0 C4F868A0 		str	r10, [r4, #104]	@ unaligned
 1631 00f4 1BAE     		add	r6, sp, #108
 1632 00f6 E767     		str	r7, [r4, #124]	@ unaligned
 1633 00f8 C4F89080 		str	r8, [r4, #144]	@ unaligned
 1634 00fc C4F89400 		str	r0, [r4, #148]	@ unaligned
 1635 0100 C4F8A4E0 		str	lr, [r4, #164]	@ unaligned
 1636 0104 C4F89810 		str	r1, [r4, #152]	@ unaligned
 1637 0108 C4F89C20 		str	r2, [r4, #156]	@ unaligned
 1638 010c C4F8A030 		str	r3, [r4, #160]	@ unaligned
 1639 0110 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1640 0112 C4F8B430 		str	r3, [r4, #180]	@ unaligned
 1641 0116 2368     		ldr	r3, [r4]
 1642 0118 C4F8B850 		str	r5, [r4, #184]	@ unaligned
 1643 011c C4F8AC10 		str	r1, [r4, #172]	@ unaligned
 1644 0120 C4F8B020 		str	r2, [r4, #176]	@ unaligned
 1645 0124 C4F8A800 		str	r0, [r4, #168]	@ unaligned
 1646 0128 1349     		ldr	r1, .L167+28
 1647 012a 1B6C     		ldr	r3, [r3, #64]
 1648 012c 134A     		ldr	r2, .L167+32
 1649 012e 4D69     		ldr	r5, [r1, #20]
 1650 0130 9342     		cmp	r3, r2
 1651 0132 4FF00001 		mov	r1, #0
 1652 0136 84F85811 		strb	r1, [r4, #344]
 1653 013a 0AD1     		bne	.L166
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 30


 1654 013c 1049     		ldr	r1, .L167+36
 1655              	.L163:
 1656 013e 2846     		mov	r0, r5
 1657 0140 0522     		movs	r2, #5
 1658 0142 FFF7FEFF 		bl	_ZN6GCodes21SetMachineAxisLettersEPKch
 1659 0146 2046     		mov	r0, r4
 1660 0148 21B0     		add	sp, sp, #132
 1661              		@ sp needed
 1662 014a BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1663 014e FFF7FEBF 		b	_ZN21HangprinterKinematics6RecalcEv
 1664              	.L166:
 1665 0152 2046     		mov	r0, r4
 1666 0154 9847     		blx	r3
 1667 0156 0146     		mov	r1, r0
 1668 0158 F1E7     		b	.L163
 1669              	.L168:
 1670 015a 00BF     		.align	2
 1671              	.L167:
 1672 015c 00000000 		.word	.LANCHOR0
 1673 0160 00000000 		.word	.LANCHOR2
 1674 0164 00000000 		.word	.LANCHOR3
 1675 0168 9AB15545 		.word	1163243930
 1676 016c 17B7D138 		.word	953267991
 1677 0170 9AA16745 		.word	1164419482
 1678 0174 0000FA43 		.word	1140457472
 1679 0178 00000000 		.word	reprap
 1680 017c 00000000 		.word	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 1681 0180 00000000 		.word	.LC6
 1682 0184 00000000 		.word	.LANCHOR1
 1683              		.size	_ZN21HangprinterKinematics4InitEv, .-_ZN21HangprinterKinematics4InitEv
 1684              		.section	.text._ZN21HangprinterKinematicsC2Ev,"ax",%progbits
 1685              		.align	1
 1686              		.p2align 2,,3
 1687              		.global	_ZN21HangprinterKinematicsC2Ev
 1688              		.syntax unified
 1689              		.thumb
 1690              		.thumb_func
 1691              		.fpu fpv4-sp-d16
 1692              		.type	_ZN21HangprinterKinematicsC2Ev, %function
 1693              	_ZN21HangprinterKinematicsC2Ev:
 1694              		@ args = 0, pretend = 0, frame = 0
 1695              		@ frame_needed = 0, uses_anonymous_args = 0
 1696 0000 10B5     		push	{r4, lr}
 1697 0002 0022     		movs	r2, #0
 1698 0004 0446     		mov	r4, r0
 1699 0006 DFED070A 		vldr.32	s1, .L171
 1700 000a 9FED070A 		vldr.32	s0, .L171+4
 1701 000e 0621     		movs	r1, #6
 1702 0010 0123     		movs	r3, #1
 1703 0012 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffbb
 1704 0016 054B     		ldr	r3, .L171+8
 1705 0018 2360     		str	r3, [r4]
 1706 001a 2046     		mov	r0, r4
 1707 001c FFF7FEFF 		bl	_ZN21HangprinterKinematics4InitEv
 1708 0020 2046     		mov	r0, r4
 1709 0022 10BD     		pop	{r4, pc}
 1710              	.L172:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 31


 1711              		.align	2
 1712              	.L171:
 1713 0024 CDCC4C3E 		.word	1045220557
 1714 0028 0000C842 		.word	1120403456
 1715 002c 08000000 		.word	.LANCHOR4+8
 1716              		.size	_ZN21HangprinterKinematicsC2Ev, .-_ZN21HangprinterKinematicsC2Ev
 1717              		.global	_ZN21HangprinterKinematicsC1Ev
 1718              		.thumb_set _ZN21HangprinterKinematicsC1Ev,_ZN21HangprinterKinematicsC2Ev
 1719              		.section	.text._ZN21HangprinterKinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN21Hangprint
 1720              		.align	1
 1721              		.p2align 2,,3
 1722              		.weak	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv
 1723              		.syntax unified
 1724              		.thumb
 1725              		.thumb_func
 1726              		.fpu fpv4-sp-d16
 1727              		.type	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv, %function
 1728              	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv:
 1729              		@ args = 0, pretend = 0, frame = 0
 1730              		@ frame_needed = 0, uses_anonymous_args = 0
 1731              		@ link register save eliminated.
 1732 0000 FFF7FEBF 		b	_ZN21HangprinterKinematics4InitEv
 1733              		.size	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv, .-_ZN21HangprinterKinematics22SetCalib
 1734              		.section	.text._ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 1735              		.align	1
 1736              		.p2align 2,,3
 1737              		.global	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1738              		.syntax unified
 1739              		.thumb
 1740              		.thumb_func
 1741              		.fpu fpv4-sp-d16
 1742              		.type	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 1743              	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 1744              		@ args = 4, pretend = 0, frame = 8
 1745              		@ frame_needed = 0, uses_anonymous_args = 0
 1746 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1747 0004 40F29D2C 		movw	ip, #669
 1748 0008 B8B0     		sub	sp, sp, #224
 1749 000a 0025     		movs	r5, #0
 1750 000c 6145     		cmp	r1, ip
 1751 000e 8DF8DE50 		strb	r5, [sp, #222]
 1752 0012 0646     		mov	r6, r0
 1753 0014 1746     		mov	r7, r2
 1754 0016 9846     		mov	r8, r3
 1755 0018 27D0     		beq	.L191
 1756 001a 40F29A2C 		movw	ip, #666
 1757 001e 6145     		cmp	r1, ip
 1758 0020 06D0     		beq	.L192
 1759 0022 3E9C     		ldr	r4, [sp, #248]
 1760 0024 0094     		str	r4, [sp]
 1761 0026 FFF7FEFF 		bl	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1762              	.L174:
 1763 002a 38B0     		add	sp, sp, #224
 1764              		@ sp needed
 1765 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1766              	.L192:
 1767 0030 0DF1DE04 		add	r4, sp, #222
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 32


 1768 0034 00F14002 		add	r2, r0, #64
 1769 0038 2346     		mov	r3, r4
 1770 003a 5121     		movs	r1, #81
 1771 003c 3846     		mov	r0, r7
 1772 003e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1773 0042 CDE90145 		strd	r4, r5, [sp, #4]
 1774 0046 CDF80080 		str	r8, [sp]
 1775 004a 06F14403 		add	r3, r6, #68
 1776 004e 0522     		movs	r2, #5
 1777 0050 5221     		movs	r1, #82
 1778 0052 3846     		mov	r0, r7
 1779 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1780 0058 0028     		cmp	r0, #0
 1781 005a 00F0C080 		beq	.L185
 1782              	.L186:
 1783 005e 3E9B     		ldr	r3, [sp, #248]
 1784 0060 0120     		movs	r0, #1
 1785 0062 1870     		strb	r0, [r3]
 1786 0064 38B0     		add	sp, sp, #224
 1787              		@ sp needed
 1788 0066 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1789              	.L191:
 1790 006a 38AC     		add	r4, sp, #224
 1791 006c 021D     		adds	r2, r0, #4
 1792 006e 04F8015D 		strb	r5, [r4, #-1]!
 1793 0072 5321     		movs	r1, #83
 1794 0074 2346     		mov	r3, r4
 1795 0076 3846     		mov	r0, r7
 1796 0078 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1797 007c 2346     		mov	r3, r4
 1798 007e 06F10802 		add	r2, r6, #8
 1799 0082 5421     		movs	r1, #84
 1800 0084 3846     		mov	r0, r7
 1801 0086 0DF1DE04 		add	r4, sp, #222
 1802 008a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1803 008e 0295     		str	r5, [sp, #8]
 1804 0090 CDE90084 		strd	r8, r4, [sp]
 1805 0094 06F11003 		add	r3, r6, #16
 1806 0098 0322     		movs	r2, #3
 1807 009a 4121     		movs	r1, #65
 1808 009c 3846     		mov	r0, r7
 1809 009e FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1810 00a2 0028     		cmp	r0, #0
 1811 00a4 DBD1     		bne	.L186
 1812 00a6 CDE90140 		strd	r4, r0, [sp, #4]
 1813 00aa CDF80080 		str	r8, [sp]
 1814 00ae 06F11C03 		add	r3, r6, #28
 1815 00b2 0322     		movs	r2, #3
 1816 00b4 4221     		movs	r1, #66
 1817 00b6 3846     		mov	r0, r7
 1818 00b8 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1819 00bc 0028     		cmp	r0, #0
 1820 00be CED1     		bne	.L186
 1821 00c0 CDE90140 		strd	r4, r0, [sp, #4]
 1822 00c4 CDF80080 		str	r8, [sp]
 1823 00c8 06F12803 		add	r3, r6, #40
 1824 00cc 0322     		movs	r2, #3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 33


 1825 00ce 4321     		movs	r1, #67
 1826 00d0 3846     		mov	r0, r7
 1827 00d2 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1828 00d6 0546     		mov	r5, r0
 1829 00d8 0028     		cmp	r0, #0
 1830 00da C0D1     		bne	.L186
 1831 00dc 2346     		mov	r3, r4
 1832 00de 06F13402 		add	r2, r6, #52
 1833 00e2 4421     		movs	r1, #68
 1834 00e4 3846     		mov	r0, r7
 1835 00e6 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1836 00ea 2346     		mov	r3, r4
 1837 00ec 06F13802 		add	r2, r6, #56
 1838 00f0 5621     		movs	r1, #86
 1839 00f2 3846     		mov	r0, r7
 1840 00f4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1841 00f8 2346     		mov	r3, r4
 1842 00fa 06F14002 		add	r2, r6, #64
 1843 00fe 5121     		movs	r1, #81
 1844 0100 3846     		mov	r0, r7
 1845 0102 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1846 0106 CDE90145 		strd	r4, r5, [sp, #4]
 1847 010a CDF80080 		str	r8, [sp]
 1848 010e 06F14403 		add	r3, r6, #68
 1849 0112 0522     		movs	r2, #5
 1850 0114 5221     		movs	r1, #82
 1851 0116 3846     		mov	r0, r7
 1852 0118 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1853 011c 0028     		cmp	r0, #0
 1854 011e 9ED1     		bne	.L186
 1855 0120 CDE90140 		strd	r4, r0, [sp, #4]
 1856 0124 CDF80080 		str	r8, [sp]
 1857 0128 06F15803 		add	r3, r6, #88
 1858 012c 0522     		movs	r2, #5
 1859 012e 5521     		movs	r1, #85
 1860 0130 3846     		mov	r0, r7
 1861 0132 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1862 0136 0028     		cmp	r0, #0
 1863 0138 91D1     		bne	.L186
 1864 013a CDE90140 		strd	r4, r0, [sp, #4]
 1865 013e CDF80080 		str	r8, [sp]
 1866 0142 06F16C03 		add	r3, r6, #108
 1867 0146 0522     		movs	r2, #5
 1868 0148 4F21     		movs	r1, #79
 1869 014a 3846     		mov	r0, r7
 1870 014c FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1871 0150 0028     		cmp	r0, #0
 1872 0152 84D1     		bne	.L186
 1873 0154 CDE90140 		strd	r4, r0, [sp, #4]
 1874 0158 CDF80080 		str	r8, [sp]
 1875 015c 06F18003 		add	r3, r6, #128
 1876 0160 0522     		movs	r2, #5
 1877 0162 4C21     		movs	r1, #76
 1878 0164 3846     		mov	r0, r7
 1879 0166 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1880 016a 0028     		cmp	r0, #0
 1881 016c 7FF477AF 		bne	.L186
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 34


 1882 0170 CDE90140 		strd	r4, r0, [sp, #4]
 1883 0174 CDF80080 		str	r8, [sp]
 1884 0178 06F19403 		add	r3, r6, #148
 1885 017c 0522     		movs	r2, #5
 1886 017e 4821     		movs	r1, #72
 1887 0180 3846     		mov	r0, r7
 1888 0182 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1889 0186 0028     		cmp	r0, #0
 1890 0188 7FF469AF 		bne	.L186
 1891 018c CDE90140 		strd	r4, r0, [sp, #4]
 1892 0190 CDF80080 		str	r8, [sp]
 1893 0194 06F1A803 		add	r3, r6, #168
 1894 0198 0522     		movs	r2, #5
 1895 019a 4A21     		movs	r1, #74
 1896 019c 3846     		mov	r0, r7
 1897 019e FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1898 01a2 0028     		cmp	r0, #0
 1899 01a4 7FF45BAF 		bne	.L186
 1900 01a8 9DF8DE30 		ldrb	r3, [sp, #222]	@ zero_extendqisi2
 1901 01ac 13B9     		cbnz	r3, .L179
 1902 01ae 9DF8DF30 		ldrb	r3, [sp, #223]	@ zero_extendqisi2
 1903 01b2 13B1     		cbz	r3, .L180
 1904              	.L179:
 1905 01b4 3046     		mov	r0, r6
 1906 01b6 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 1907              	.L180:
 1908 01ba 5021     		movs	r1, #80
 1909 01bc 3846     		mov	r0, r7
 1910 01be FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1911 01c2 0028     		cmp	r0, #0
 1912 01c4 00F0A380 		beq	.L181
 1913 01c8 3846     		mov	r0, r7
 1914 01ca FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1915 01ce 0123     		movs	r3, #1
 1916 01d0 86ED0F0A 		vstr.32	s0, [r6, #60]
 1917 01d4 8DF8DE30 		strb	r3, [sp, #222]
 1918              	.L182:
 1919 01d8 9DF8DE00 		ldrb	r0, [sp, #222]	@ zero_extendqisi2
 1920 01dc 25E7     		b	.L174
 1921              	.L185:
 1922 01de CDE90140 		strd	r4, r0, [sp, #4]
 1923 01e2 CDF80080 		str	r8, [sp]
 1924 01e6 06F15803 		add	r3, r6, #88
 1925 01ea 0522     		movs	r2, #5
 1926 01ec 5521     		movs	r1, #85
 1927 01ee 3846     		mov	r0, r7
 1928 01f0 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1929 01f4 0028     		cmp	r0, #0
 1930 01f6 7FF432AF 		bne	.L186
 1931 01fa CDE90140 		strd	r4, r0, [sp, #4]
 1932 01fe CDF80080 		str	r8, [sp]
 1933 0202 06F16C03 		add	r3, r6, #108
 1934 0206 0522     		movs	r2, #5
 1935 0208 4F21     		movs	r1, #79
 1936 020a 3846     		mov	r0, r7
 1937 020c FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1938 0210 0028     		cmp	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 35


 1939 0212 7FF424AF 		bne	.L186
 1940 0216 CDE90140 		strd	r4, r0, [sp, #4]
 1941 021a CDF80080 		str	r8, [sp]
 1942 021e 06F18003 		add	r3, r6, #128
 1943 0222 0522     		movs	r2, #5
 1944 0224 4C21     		movs	r1, #76
 1945 0226 3846     		mov	r0, r7
 1946 0228 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1947 022c 0028     		cmp	r0, #0
 1948 022e 7FF416AF 		bne	.L186
 1949 0232 CDE90140 		strd	r4, r0, [sp, #4]
 1950 0236 CDF80080 		str	r8, [sp]
 1951 023a 06F19403 		add	r3, r6, #148
 1952 023e 0522     		movs	r2, #5
 1953 0240 4821     		movs	r1, #72
 1954 0242 3846     		mov	r0, r7
 1955 0244 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1956 0248 0028     		cmp	r0, #0
 1957 024a 7FF408AF 		bne	.L186
 1958 024e CDE90140 		strd	r4, r0, [sp, #4]
 1959 0252 CDF80080 		str	r8, [sp]
 1960 0256 3846     		mov	r0, r7
 1961 0258 06F1A803 		add	r3, r6, #168
 1962 025c 0522     		movs	r2, #5
 1963 025e 4A21     		movs	r1, #74
 1964 0260 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1965 0264 0028     		cmp	r0, #0
 1966 0266 7FF4FAAE 		bne	.L186
 1967 026a 306C     		ldr	r0, [r6, #64]	@ float
 1968 026c FFF7FEFF 		bl	__aeabi_f2d
 1969 0270 0D46     		mov	r5, r1
 1970 0272 D6E92C21 		ldrd	r2, r1, [r6, #176]
 1971 0276 D6F8AC30 		ldr	r3, [r6, #172]
 1972 027a 1B91     		str	r1, [sp, #108]
 1973 027c D6F8A810 		ldr	r1, [r6, #168]
 1974 0280 1A92     		str	r2, [sp, #104]
 1975 0282 D6F8A020 		ldr	r2, [r6, #160]
 1976 0286 1993     		str	r3, [sp, #100]
 1977 0288 D6F89C30 		ldr	r3, [r6, #156]
 1978 028c 1891     		str	r1, [sp, #96]
 1979 028e D6F89810 		ldr	r1, [r6, #152]
 1980 0292 1792     		str	r2, [sp, #92]
 1981 0294 D6F89420 		ldr	r2, [r6, #148]
 1982 0298 1693     		str	r3, [sp, #88]
 1983 029a D6F88C30 		ldr	r3, [r6, #140]
 1984 029e 1591     		str	r1, [sp, #84]
 1985 02a0 D6F88810 		ldr	r1, [r6, #136]
 1986 02a4 1492     		str	r2, [sp, #80]
 1987 02a6 D6F88420 		ldr	r2, [r6, #132]
 1988 02aa 1393     		str	r3, [sp, #76]
 1989 02ac D6F88030 		ldr	r3, [r6, #128]
 1990 02b0 1291     		str	r1, [sp, #72]
 1991 02b2 B16F     		ldr	r1, [r6, #120]
 1992 02b4 1192     		str	r2, [sp, #68]
 1993 02b6 726F     		ldr	r2, [r6, #116]
 1994 02b8 1093     		str	r3, [sp, #64]
 1995 02ba 336F     		ldr	r3, [r6, #112]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 36


 1996 02bc 0D93     		str	r3, [sp, #52]
 1997 02be CDE90E21 		strd	r2, r1, [sp, #56]
 1998 02c2 F26E     		ldr	r2, [r6, #108]
 1999 02c4 D6E91813 		ldrd	r1, r3, [r6, #96]
 2000 02c8 0C92     		str	r2, [sp, #48]
 2001 02ca F26D     		ldr	r2, [r6, #92]
 2002 02cc 0B93     		str	r3, [sp, #44]
 2003 02ce B36D     		ldr	r3, [r6, #88]
 2004 02d0 0A91     		str	r1, [sp, #40]
 2005 02d2 0446     		mov	r4, r0
 2006 02d4 306D     		ldr	r0, [r6, #80]	@ float
 2007 02d6 CDE90832 		strd	r3, r2, [sp, #32]
 2008 02da FFF7FEFF 		bl	__aeabi_f2d
 2009 02de CDE90601 		strd	r0, [sp, #24]
 2010 02e2 F06C     		ldr	r0, [r6, #76]	@ float
 2011 02e4 FFF7FEFF 		bl	__aeabi_f2d
 2012 02e8 CDE90401 		strd	r0, [sp, #16]
 2013 02ec B06C     		ldr	r0, [r6, #72]	@ float
 2014 02ee FFF7FEFF 		bl	__aeabi_f2d
 2015 02f2 CDE90201 		strd	r0, [sp, #8]
 2016 02f6 706C     		ldr	r0, [r6, #68]	@ float
 2017 02f8 FFF7FEFF 		bl	__aeabi_f2d
 2018 02fc 2246     		mov	r2, r4
 2019 02fe CDE90001 		strd	r0, [sp]
 2020 0302 2B46     		mov	r3, r5
 2021 0304 4046     		mov	r0, r8
 2022 0306 4F49     		ldr	r1, .L193
 2023 0308 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2024 030c 8DE6     		b	.L174
 2025              	.L181:
 2026 030e 3846     		mov	r0, r7
 2027 0310 4B21     		movs	r1, #75
 2028 0312 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2029 0316 0028     		cmp	r0, #0
 2030 0318 7FF45EAF 		bne	.L182
 2031 031c 3069     		ldr	r0, [r6, #16]	@ float
 2032 031e FFF7FEFF 		bl	__aeabi_f2d
 2033 0322 0D46     		mov	r5, r1
 2034 0324 D6E92C21 		ldrd	r2, r1, [r6, #176]
 2035 0328 D6F8AC30 		ldr	r3, [r6, #172]
 2036 032c 3591     		str	r1, [sp, #212]
 2037 032e D6F8A810 		ldr	r1, [r6, #168]
 2038 0332 3492     		str	r2, [sp, #208]
 2039 0334 D6F8A020 		ldr	r2, [r6, #160]
 2040 0338 3393     		str	r3, [sp, #204]
 2041 033a D6F89C30 		ldr	r3, [r6, #156]
 2042 033e 3291     		str	r1, [sp, #200]
 2043 0340 D6F89810 		ldr	r1, [r6, #152]
 2044 0344 3192     		str	r2, [sp, #196]
 2045 0346 D6F89420 		ldr	r2, [r6, #148]
 2046 034a 3093     		str	r3, [sp, #192]
 2047 034c D6F88C30 		ldr	r3, [r6, #140]
 2048 0350 2F91     		str	r1, [sp, #188]
 2049 0352 D6F88810 		ldr	r1, [r6, #136]
 2050 0356 2E92     		str	r2, [sp, #184]
 2051 0358 D6F88420 		ldr	r2, [r6, #132]
 2052 035c 2D93     		str	r3, [sp, #180]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 37


 2053 035e D6F88030 		ldr	r3, [r6, #128]
 2054 0362 2C91     		str	r1, [sp, #176]
 2055 0364 B16F     		ldr	r1, [r6, #120]
 2056 0366 2B92     		str	r2, [sp, #172]
 2057 0368 726F     		ldr	r2, [r6, #116]
 2058 036a 2A93     		str	r3, [sp, #168]
 2059 036c 336F     		ldr	r3, [r6, #112]
 2060 036e 2793     		str	r3, [sp, #156]
 2061 0370 CDE92821 		strd	r2, r1, [sp, #160]
 2062 0374 F26E     		ldr	r2, [r6, #108]
 2063 0376 D6E91813 		ldrd	r1, r3, [r6, #96]
 2064 037a 2692     		str	r2, [sp, #152]
 2065 037c F26D     		ldr	r2, [r6, #92]
 2066 037e 2593     		str	r3, [sp, #148]
 2067 0380 B36D     		ldr	r3, [r6, #88]
 2068 0382 2491     		str	r1, [sp, #144]
 2069 0384 0446     		mov	r4, r0
 2070 0386 306D     		ldr	r0, [r6, #80]	@ float
 2071 0388 CDE92232 		strd	r3, r2, [sp, #136]
 2072 038c FFF7FEFF 		bl	__aeabi_f2d
 2073 0390 CDE92001 		strd	r0, [sp, #128]
 2074 0394 F06C     		ldr	r0, [r6, #76]	@ float
 2075 0396 FFF7FEFF 		bl	__aeabi_f2d
 2076 039a CDE91E01 		strd	r0, [sp, #120]
 2077 039e B06C     		ldr	r0, [r6, #72]	@ float
 2078 03a0 FFF7FEFF 		bl	__aeabi_f2d
 2079 03a4 CDE91C01 		strd	r0, [sp, #112]
 2080 03a8 706C     		ldr	r0, [r6, #68]	@ float
 2081 03aa FFF7FEFF 		bl	__aeabi_f2d
 2082 03ae CDE91A01 		strd	r0, [sp, #104]
 2083 03b2 306C     		ldr	r0, [r6, #64]	@ float
 2084 03b4 FFF7FEFF 		bl	__aeabi_f2d
 2085 03b8 CDE91801 		strd	r0, [sp, #96]
 2086 03bc B068     		ldr	r0, [r6, #8]	@ float
 2087 03be FFF7FEFF 		bl	__aeabi_f2d
 2088 03c2 D6ED017A 		vldr.32	s15, [r6, #4]
 2089 03c6 CDE91601 		strd	r0, [sp, #88]
 2090 03ca FDEEE77A 		vcvt.s32.f32	s15, s15
 2091 03ce F06B     		ldr	r0, [r6, #60]	@ float
 2092 03d0 CDED147A 		vstr.32	s15, [sp, #80]	@ int
 2093 03d4 FFF7FEFF 		bl	__aeabi_f2d
 2094 03d8 CDE91201 		strd	r0, [sp, #72]
 2095 03dc 706B     		ldr	r0, [r6, #52]	@ float
 2096 03de FFF7FEFF 		bl	__aeabi_f2d
 2097 03e2 CDE91001 		strd	r0, [sp, #64]
 2098 03e6 306B     		ldr	r0, [r6, #48]	@ float
 2099 03e8 FFF7FEFF 		bl	__aeabi_f2d
 2100 03ec CDE90E01 		strd	r0, [sp, #56]
 2101 03f0 F06A     		ldr	r0, [r6, #44]	@ float
 2102 03f2 FFF7FEFF 		bl	__aeabi_f2d
 2103 03f6 CDE90C01 		strd	r0, [sp, #48]
 2104 03fa B06A     		ldr	r0, [r6, #40]	@ float
 2105 03fc FFF7FEFF 		bl	__aeabi_f2d
 2106 0400 CDE90A01 		strd	r0, [sp, #40]
 2107 0404 706A     		ldr	r0, [r6, #36]	@ float
 2108 0406 FFF7FEFF 		bl	__aeabi_f2d
 2109 040a CDE90801 		strd	r0, [sp, #32]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 38


 2110 040e 306A     		ldr	r0, [r6, #32]	@ float
 2111 0410 FFF7FEFF 		bl	__aeabi_f2d
 2112 0414 CDE90601 		strd	r0, [sp, #24]
 2113 0418 F069     		ldr	r0, [r6, #28]	@ float
 2114 041a FFF7FEFF 		bl	__aeabi_f2d
 2115 041e CDE90401 		strd	r0, [sp, #16]
 2116 0422 B069     		ldr	r0, [r6, #24]	@ float
 2117 0424 FFF7FEFF 		bl	__aeabi_f2d
 2118 0428 CDE90201 		strd	r0, [sp, #8]
 2119 042c 7069     		ldr	r0, [r6, #20]	@ float
 2120 042e FFF7FEFF 		bl	__aeabi_f2d
 2121 0432 2246     		mov	r2, r4
 2122 0434 CDE90001 		strd	r0, [sp]
 2123 0438 2B46     		mov	r3, r5
 2124 043a 4046     		mov	r0, r8
 2125 043c 0249     		ldr	r1, .L193+4
 2126 043e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2127 0442 C9E6     		b	.L182
 2128              	.L194:
 2129              		.align	2
 2130              	.L193:
 2131 0444 8C010000 		.word	.LC14
 2132 0448 00000000 		.word	.LC13
 2133              		.size	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN21HangprinterKinema
 2134              		.section	.text._ZNK21HangprinterKinematics17MotorPosToLinePosElj,"ax",%progbits
 2135              		.align	1
 2136              		.p2align 2,,3
 2137              		.global	_ZNK21HangprinterKinematics17MotorPosToLinePosElj
 2138              		.syntax unified
 2139              		.thumb
 2140              		.thumb_func
 2141              		.fpu fpv4-sp-d16
 2142              		.type	_ZNK21HangprinterKinematics17MotorPosToLinePosElj, %function
 2143              	_ZNK21HangprinterKinematics17MotorPosToLinePosElj:
 2144              		@ args = 0, pretend = 0, frame = 0
 2145              		@ frame_needed = 0, uses_anonymous_args = 0
 2146              		@ link register save eliminated.
 2147 0000 07EE901A 		vmov	s15, r1	@ int
 2148 0004 00EB8202 		add	r2, r0, r2, lsl #2
 2149 0008 92ED2F6A 		vldr.32	s12, [r2, #188]
 2150 000c D2ED116A 		vldr.32	s13, [r2, #68]
 2151 0010 92ED340A 		vldr.32	s0, [r2, #208]
 2152 0014 92ED397A 		vldr.32	s14, [r2, #228]
 2153 0018 F8EEE75A 		vcvt.f32.s32	s11, s15
 2154 001c C5EE867A 		vdiv.f32	s15, s11, s12
 2155 0020 77EEA67A 		vadd.f32	s15, s15, s13
 2156 0024 97EEA70A 		vfnms.f32	s0, s15, s15
 2157 0028 80EE070A 		vdiv.f32	s0, s0, s14
 2158 002c 7047     		bx	lr
 2159              		.size	_ZNK21HangprinterKinematics17MotorPosToLinePosElj, .-_ZNK21HangprinterKinematics17MotorPosTo
 2160 002e 00BF     		.section	.text._ZNK21HangprinterKinematics16InverseTransformEfffPf,"ax",%progbits
 2161              		.align	1
 2162              		.p2align 2,,3
 2163              		.global	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2164              		.syntax unified
 2165              		.thumb
 2166              		.thumb_func
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 39


 2167              		.fpu fpv4-sp-d16
 2168              		.type	_ZNK21HangprinterKinematics16InverseTransformEfffPf, %function
 2169              	_ZNK21HangprinterKinematics16InverseTransformEfffPf:
 2170              		@ args = 0, pretend = 0, frame = 0
 2171              		@ frame_needed = 0, uses_anonymous_args = 0
 2172 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2173 0004 2DED088B 		vpush.64	{d8, d9, d10, d11}
 2174 0008 90ED458A 		vldr.32	s16, [r0, #276]
 2175 000c D0ED466A 		vldr.32	s13, [r0, #280]
 2176 0010 D0ED4C8A 		vldr.32	s17, [r0, #304]
 2177 0014 90ED4A6A 		vldr.32	s12, [r0, #296]
 2178 0018 90ED447A 		vldr.32	s14, [r0, #272]
 2179 001c D0ED492A 		vldr.32	s5, [r0, #292]
 2180 0020 90ED473A 		vldr.32	s6, [r0, #284]
 2181 0024 D0ED4B3A 		vldr.32	s7, [r0, #300]
 2182 0028 90ED484A 		vldr.32	s8, [r0, #288]
 2183 002c D0ED047A 		vldr.32	s15, [r0, #16]
 2184 0030 D0ED054A 		vldr.32	s9, [r0, #20]
 2185 0034 90ED505A 		vldr.32	s10, [r0, #320]
 2186 0038 D0ED529A 		vldr.32	s19, [r0, #328]
 2187 003c D0ED515A 		vldr.32	s11, [r0, #324]
 2188 0040 DFF8A881 		ldr	r8, .L201+12
 2189 0044 90EEA08A 		vfnms.f32	s16, s1, s1
 2190 0048 8AB0     		sub	sp, sp, #40
 2191 004a 0446     		mov	r4, r0
 2192 004c D1EE016A 		vfnms.f32	s13, s2, s2
 2193 0050 0D46     		mov	r5, r1
 2194 0052 68EEC88A 		vnmul.f32	s17, s17, s16
 2195 0056 28EE228A 		vmul.f32	s16, s16, s5
 2196 005a E6EE668A 		vfms.f32	s17, s12, s13
 2197 005e B0EE476A 		vmov.f32	s12, s14
 2198 0062 90EE006A 		vfnms.f32	s12, s0, s0
 2199 0066 A3EE668A 		vfms.f32	s16, s6, s13
 2200 006a E3EEC68A 		vfms.f32	s17, s7, s12
 2201 006e A6EE048A 		vfma.f32	s16, s12, s8
 2202 0072 67EEE87A 		vnmul.f32	s15, s15, s17
 2203 0076 28EE089A 		vmul.f32	s18, s16, s16
 2204 007a E4EE887A 		vfma.f32	s15, s9, s16
 2205 007e A8EEA89A 		vfma.f32	s18, s17, s17
 2206 0082 67EE857A 		vmul.f32	s15, s15, s10
 2207 0086 F0EE006A 		vmov.f32	s13, #2.0e+0
 2208 008a 69EEC89A 		vnmul.f32	s19, s19, s16
 2209 008e A0EE407A 		vfms.f32	s14, s0, s0
 2210 0092 A7EEA69A 		vfma.f32	s18, s15, s13
 2211 0096 E5EEA89A 		vfma.f32	s19, s11, s17
 2212 009a D0ED536A 		vldr.32	s13, [r0, #332]
 2213 009e D0ED547A 		vldr.32	s15, [r0, #336]
 2214 00a2 A7EE269A 		vfma.f32	s18, s14, s13
 2215 00a6 18EE900A 		vmov	r0, s17
 2216 00aa 79EEE79A 		vsub.f32	s19, s19, s15
 2217 00ae F0EE60AA 		vmov.f32	s21, s1
 2218 00b2 B0EE41BA 		vmov.f32	s22, s2
 2219 00b6 B0EE40AA 		vmov.f32	s20, s0
 2220 00ba FFF7FEFF 		bl	__aeabi_f2d
 2221 00be 0646     		mov	r6, r0
 2222 00c0 19EE100A 		vmov	r0, s18
 2223 00c4 0F46     		mov	r7, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 40


 2224 00c6 FFF7FEFF 		bl	__aeabi_f2d
 2225 00ca CDE90401 		strd	r0, [sp, #16]
 2226 00ce 19EE900A 		vmov	r0, s19
 2227 00d2 FFF7FEFF 		bl	__aeabi_f2d
 2228 00d6 CDE90201 		strd	r0, [sp, #8]
 2229 00da 18EE100A 		vmov	r0, s16
 2230 00de FFF7FEFF 		bl	__aeabi_f2d
 2231 00e2 3246     		mov	r2, r6
 2232 00e4 3B46     		mov	r3, r7
 2233 00e6 CDE90001 		strd	r0, [sp]
 2234 00ea 3D48     		ldr	r0, .L201
 2235 00ec FFF7FEFF 		bl	debugPrintf
 2236 00f0 2E46     		mov	r6, r5
 2237 00f2 05F10C07 		add	r7, r5, #12
 2238              	.L197:
 2239 00f6 56F8040B 		ldr	r0, [r6], #4	@ float
 2240 00fa FFF7FEFF 		bl	__aeabi_f2d
 2241 00fe 0246     		mov	r2, r0
 2242 0100 0B46     		mov	r3, r1
 2243 0102 4046     		mov	r0, r8
 2244 0104 FFF7FEFF 		bl	debugPrintf
 2245 0108 B742     		cmp	r7, r6
 2246 010a F4D1     		bne	.L197
 2247 010c D4ED556A 		vldr.32	s13, [r4, #340]
 2248 0110 29EE669A 		vnmul.f32	s18, s18, s13
 2249 0114 B1EE697A 		vneg.f32	s14, s19
 2250 0118 A9EEA99A 		vfma.f32	s18, s19, s19
 2251 011c B0EEC99A 		vabs.f32	s18, s18
 2252 0120 F1EEC97A 		vsqrt.f32	s15, s18
 2253 0124 37EE677A 		vsub.f32	s14, s14, s15
 2254 0128 C7EE267A 		vdiv.f32	s15, s14, s13
 2255 012c C5ED027A 		vstr.32	s15, [r5, #8]
 2256 0130 94ED517A 		vldr.32	s14, [r4, #324]
 2257 0134 D4ED506A 		vldr.32	s13, [r4, #320]
 2258 0138 E7EE878A 		vfma.f32	s17, s15, s14
 2259 013c 88EEA67A 		vdiv.f32	s14, s17, s13
 2260 0140 85ED007A 		vstr.32	s14, [r5]
 2261 0144 94ED526A 		vldr.32	s12, [r4, #328]
 2262 0148 D4ED506A 		vldr.32	s13, [r4, #320]
 2263 014c A7EE868A 		vfma.f32	s16, s15, s12
 2264 0150 17EE100A 		vmov	r0, s14
 2265 0154 C8EE267A 		vdiv.f32	s15, s16, s13
 2266 0158 C5ED017A 		vstr.32	s15, [r5, #4]
 2267 015c FFF7FEFF 		bl	__aeabi_f2d
 2268 0160 0246     		mov	r2, r0
 2269 0162 0B46     		mov	r3, r1
 2270 0164 1F48     		ldr	r0, .L201+4
 2271 0166 FFF7FEFF 		bl	debugPrintf
 2272 016a 6868     		ldr	r0, [r5, #4]	@ float
 2273 016c FFF7FEFF 		bl	__aeabi_f2d
 2274 0170 0246     		mov	r2, r0
 2275 0172 0B46     		mov	r3, r1
 2276 0174 1B48     		ldr	r0, .L201+4
 2277 0176 FFF7FEFF 		bl	debugPrintf
 2278 017a A868     		ldr	r0, [r5, #8]	@ float
 2279 017c FFF7FEFF 		bl	__aeabi_f2d
 2280 0180 0246     		mov	r2, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 41


 2281 0182 0B46     		mov	r3, r1
 2282 0184 1748     		ldr	r0, .L201+4
 2283 0186 FFF7FEFF 		bl	debugPrintf
 2284 018a 1AEE100A 		vmov	r0, s20
 2285 018e FFF7FEFF 		bl	__aeabi_f2d
 2286 0192 0646     		mov	r6, r0
 2287 0194 A868     		ldr	r0, [r5, #8]	@ float
 2288 0196 0F46     		mov	r7, r1
 2289 0198 FFF7FEFF 		bl	__aeabi_f2d
 2290 019c CDE90801 		strd	r0, [sp, #32]
 2291 01a0 6868     		ldr	r0, [r5, #4]	@ float
 2292 01a2 FFF7FEFF 		bl	__aeabi_f2d
 2293 01a6 CDE90601 		strd	r0, [sp, #24]
 2294 01aa 2868     		ldr	r0, [r5]	@ float
 2295 01ac FFF7FEFF 		bl	__aeabi_f2d
 2296 01b0 CDE90401 		strd	r0, [sp, #16]
 2297 01b4 1BEE100A 		vmov	r0, s22
 2298 01b8 FFF7FEFF 		bl	__aeabi_f2d
 2299 01bc CDE90201 		strd	r0, [sp, #8]
 2300 01c0 1AEE900A 		vmov	r0, s21
 2301 01c4 FFF7FEFF 		bl	__aeabi_f2d
 2302 01c8 3246     		mov	r2, r6
 2303 01ca CDE90001 		strd	r0, [sp]
 2304 01ce 3B46     		mov	r3, r7
 2305 01d0 0548     		ldr	r0, .L201+8
 2306 01d2 FFF7FEFF 		bl	debugPrintf
 2307 01d6 0AB0     		add	sp, sp, #40
 2308              		@ sp needed
 2309 01d8 BDEC088B 		vldm	sp!, {d8-d11}
 2310 01dc BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2311              	.L202:
 2312              		.align	2
 2313              	.L201:
 2314 01e0 00000000 		.word	.LC15
 2315 01e4 64000000 		.word	.LC17
 2316 01e8 80000000 		.word	.LC18
 2317 01ec 44000000 		.word	.LC16
 2318              		.size	_ZNK21HangprinterKinematics16InverseTransformEfffPf, .-_ZNK21HangprinterKinematics16InverseT
 2319              		.section	.text._ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 2320              		.align	1
 2321              		.p2align 2,,3
 2322              		.global	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf
 2323              		.syntax unified
 2324              		.thumb
 2325              		.thumb_func
 2326              		.fpu fpv4-sp-d16
 2327              		.type	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 2328              	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 2329              		@ args = 8, pretend = 0, frame = 0
 2330              		@ frame_needed = 0, uses_anonymous_args = 0
 2331              		@ link register save eliminated.
 2332 0000 D1ED003A 		vldr.32	s7, [r1]	@ int
 2333 0004 91ED014A 		vldr.32	s8, [r1, #4]	@ int
 2334 0008 D1ED024A 		vldr.32	s9, [r1, #8]	@ int
 2335 000c 90ED2F7A 		vldr.32	s14, [r0, #188]
 2336 0010 D0ED307A 		vldr.32	s15, [r0, #192]
 2337 0014 90ED130A 		vldr.32	s0, [r0, #76]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 42


 2338 0018 90ED345A 		vldr.32	s10, [r0, #208]
 2339 001c D0ED355A 		vldr.32	s11, [r0, #212]
 2340 0020 90ED366A 		vldr.32	s12, [r0, #216]
 2341 0024 D0ED390A 		vldr.32	s1, [r0, #228]
 2342 0028 90ED3A1A 		vldr.32	s2, [r0, #232]
 2343 002c D0ED3B1A 		vldr.32	s3, [r0, #236]
 2344 0030 90ED3E2A 		vldr.32	s4, [r0, #248]
 2345 0034 D0ED3F2A 		vldr.32	s5, [r0, #252]
 2346 0038 90ED403A 		vldr.32	s6, [r0, #256]
 2347 003c 2DED048B 		vpush.64	{d8, d9}
 2348 0040 F8EEE33A 		vcvt.f32.s32	s7, s7
 2349 0044 90ED319A 		vldr.32	s18, [r0, #196]
 2350 0048 D0ED118A 		vldr.32	s17, [r0, #68]
 2351 004c 90ED128A 		vldr.32	s16, [r0, #72]
 2352 0050 0599     		ldr	r1, [sp, #20]
 2353 0052 B8EEC44A 		vcvt.f32.s32	s8, s8
 2354 0056 F8EEE44A 		vcvt.f32.s32	s9, s9
 2355 005a C3EE876A 		vdiv.f32	s13, s7, s14
 2356 005e 84EE277A 		vdiv.f32	s14, s8, s15
 2357 0062 C4EE897A 		vdiv.f32	s15, s9, s18
 2358 0066 76EEA86A 		vadd.f32	s13, s13, s17
 2359 006a 37EE087A 		vadd.f32	s14, s14, s16
 2360 006e 77EE807A 		vadd.f32	s15, s15, s0
 2361 0072 96EEA65A 		vfnms.f32	s10, s13, s13
 2362 0076 BDEC048B 		vldm	sp!, {d8-d9}
 2363 007a D7EE075A 		vfnms.f32	s11, s14, s14
 2364 007e 97EEA76A 		vfnms.f32	s12, s15, s15
 2365 0082 85EE200A 		vdiv.f32	s0, s10, s1
 2366 0086 C5EE810A 		vdiv.f32	s1, s11, s2
 2367 008a 86EE211A 		vdiv.f32	s2, s12, s3
 2368 008e 30EE020A 		vadd.f32	s0, s0, s4
 2369 0092 70EEA20A 		vadd.f32	s1, s1, s5
 2370 0096 31EE031A 		vadd.f32	s2, s2, s6
 2371 009a FFF7FEBF 		b	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2372              		.size	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK21HangprinterKinematics
 2373              		.global	__aeabi_dsub
 2374              		.global	__aeabi_ddiv
 2375 009e 00BF     		.section	.text._ZNK21HangprinterKinematics17ComputeDerivativeEjfff,"ax",%progbits
 2376              		.align	1
 2377              		.p2align 2,,3
 2378              		.global	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 2379              		.syntax unified
 2380              		.thumb
 2381              		.thumb_func
 2382              		.fpu fpv4-sp-d16
 2383              		.type	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff, %function
 2384              	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff:
 2385              		@ args = 0, pretend = 0, frame = 776
 2386              		@ frame_needed = 0, uses_anonymous_args = 0
 2387 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2388 0004 2DED0A8B 		vpush.64	{d8, d9, d10, d11, d12}
 2389 0008 ADF5437D 		sub	sp, sp, #780
 2390 000c 00F1100B 		add	fp, r0, #16
 2391 0010 0446     		mov	r4, r0
 2392 0012 0191     		str	r1, [sp, #4]
 2393 0014 9BE80700 		ldm	fp, {r0, r1, r2}
 2394 0018 04F11C05 		add	r5, r4, #28
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 43


 2395 001c 18AB     		add	r3, sp, #96
 2396 001e 83E80700 		stm	r3, {r0, r1, r2}
 2397 0022 95E80700 		ldm	r5, {r0, r1, r2}
 2398 0026 04F12806 		add	r6, r4, #40
 2399 002a 1BAB     		add	r3, sp, #108
 2400 002c 83E80700 		stm	r3, {r0, r1, r2}
 2401 0030 96E80700 		ldm	r6, {r0, r1, r2}
 2402 0034 94ED017A 		vldr.32	s14, [r4, #4]
 2403 0038 D4ED027A 		vldr.32	s15, [r4, #8]
 2404 003c 94F80FC0 		ldrb	ip, [r4, #15]	@ zero_extendqisi2
 2405 0040 277B     		ldrb	r7, [r4, #12]	@ zero_extendqisi2
 2406 0042 D4ED0DCA 		vldr.32	s25, [r4, #52]
 2407 0046 0995     		str	r5, [sp, #36]
 2408 0048 1EAB     		add	r3, sp, #120
 2409 004a 657B     		ldrb	r5, [r4, #13]	@ zero_extendqisi2
 2410 004c 0A96     		str	r6, [sp, #40]
 2411 004e 83E80700 		stm	r3, {r0, r1, r2}
 2412 0052 A67B     		ldrb	r6, [r4, #14]	@ zero_extendqisi2
 2413 0054 CDF808C0 		str	ip, [sp, #8]
 2414 0058 8DED157A 		vstr.32	s14, [sp, #84]
 2415 005c 04F1440C 		add	ip, r4, #68
 2416 0060 CDED167A 		vstr.32	s15, [sp, #88]
 2417 0064 C249     		ldr	r1, .L232
 2418 0066 029A     		ldr	r2, [sp, #8]
 2419 0068 8DF85F20 		strb	r2, [sp, #95]
 2420 006c 1491     		str	r1, [sp, #80]
 2421 006e BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 2422 0072 0896     		str	r6, [sp, #32]
 2423 0074 8DF85E60 		strb	r6, [sp, #94]
 2424 0078 04F1580E 		add	lr, r4, #88
 2425 007c 25AE     		add	r6, sp, #148
 2426 007e 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2427 0080 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2428 0084 0795     		str	r5, [sp, #28]
 2429 0086 8DF85D50 		strb	r5, [sp, #93]
 2430 008a 04F16C0A 		add	r10, r4, #108
 2431 008e 2AAD     		add	r5, sp, #168
 2432 0090 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2433 0092 BAE80F00 		ldmia	r10!, {r0, r1, r2, r3}
 2434 0096 94ED0E9A 		vldr.32	s18, [r4, #56]
 2435 009a D4ED0F8A 		vldr.32	s17, [r4, #60]
 2436 009e 0697     		str	r7, [sp, #24]
 2437 00a0 8DF85C70 		strb	r7, [sp, #92]
 2438 00a4 04F18009 		add	r9, r4, #128
 2439 00a8 CDED21CA 		vstr.32	s25, [sp, #132]
 2440 00ac 94ED108A 		vldr.32	s16, [r4, #64]
 2441 00b0 DCF80070 		ldr	r7, [ip]
 2442 00b4 0397     		str	r7, [sp, #12]
 2443 00b6 0DF1BC0C 		add	ip, sp, #188
 2444 00ba ACE80F00 		stmia	ip!, {r0, r1, r2, r3}
 2445 00be B9E80F00 		ldmia	r9!, {r0, r1, r2, r3}
 2446 00c2 DEF80070 		ldr	r7, [lr]
 2447 00c6 0497     		str	r7, [sp, #16]
 2448 00c8 039F     		ldr	r7, [sp, #12]
 2449 00ca 3760     		str	r7, [r6]
 2450 00cc 04F19408 		add	r8, r4, #148
 2451 00d0 34AF     		add	r7, sp, #208
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 44


 2452 00d2 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2453 00d4 B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 2454 00d8 049E     		ldr	r6, [sp, #16]
 2455 00da 2E60     		str	r6, [r5]
 2456 00dc 04F1A80E 		add	lr, r4, #168
 2457 00e0 39AE     		add	r6, sp, #228
 2458 00e2 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2459 00e4 8DED229A 		vstr.32	s18, [sp, #136]
 2460 00e8 CDED238A 		vstr.32	s17, [sp, #140]
 2461 00ec 8DED248A 		vstr.32	s16, [sp, #144]
 2462 00f0 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2463 00f4 3EAD     		add	r5, sp, #248
 2464 00f6 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2465 00f8 DAF80000 		ldr	r0, [r10]
 2466 00fc D9F80020 		ldr	r2, [r9]
 2467 0100 D8F80010 		ldr	r1, [r8]
 2468 0104 DEF80030 		ldr	r3, [lr]
 2469 0108 CCF80000 		str	r0, [ip]
 2470 010c 04F1BC0C 		add	ip, r4, #188
 2471 0110 3A60     		str	r2, [r7]
 2472 0112 3160     		str	r1, [r6]
 2473 0114 2B60     		str	r3, [r5]
 2474 0116 0B90     		str	r0, [sp, #44]
 2475 0118 0C92     		str	r2, [sp, #48]
 2476 011a 0D91     		str	r1, [sp, #52]
 2477 011c 0E93     		str	r3, [sp, #56]
 2478 011e BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 2479 0122 04F1D008 		add	r8, r4, #208
 2480 0126 43AF     		add	r7, sp, #268
 2481 0128 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2482 012a B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 2483 012e 04F1E40E 		add	lr, r4, #228
 2484 0132 48AE     		add	r6, sp, #288
 2485 0134 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2486 0136 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2487 013a 4DAD     		add	r5, sp, #308
 2488 013c 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2489 013e DCF800C0 		ldr	ip, [ip]
 2490 0142 DEF80000 		ldr	r0, [lr]
 2491 0146 C7F800C0 		str	ip, [r7]
 2492 014a 04F1F807 		add	r7, r4, #248
 2493 014e 2860     		str	r0, [r5]
 2494 0150 0F90     		str	r0, [sp, #60]
 2495 0152 0FCF     		ldmia	r7!, {r0, r1, r2, r3}
 2496 0154 52AD     		add	r5, sp, #328
 2497 0156 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2498 0158 D8F80080 		ldr	r8, [r8]
 2499 015c 94ED43CA 		vldr.32	s24, [r4, #268]
 2500 0160 D4ED44BA 		vldr.32	s23, [r4, #272]
 2501 0164 94ED45BA 		vldr.32	s22, [r4, #276]
 2502 0168 D4ED46AA 		vldr.32	s21, [r4, #280]
 2503 016c 94ED47AA 		vldr.32	s20, [r4, #284]
 2504 0170 D4ED489A 		vldr.32	s19, [r4, #288]
 2505 0174 C6F80080 		str	r8, [r6]
 2506 0178 D4ED491A 		vldr.32	s3, [r4, #292]
 2507 017c 94ED4A2A 		vldr.32	s4, [r4, #296]
 2508 0180 D4ED4B2A 		vldr.32	s5, [r4, #300]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 45


 2509 0184 94ED4C3A 		vldr.32	s6, [r4, #304]
 2510 0188 D4ED4D3A 		vldr.32	s7, [r4, #308]
 2511 018c 94ED4E4A 		vldr.32	s8, [r4, #312]
 2512 0190 3B68     		ldr	r3, [r7]
 2513 0192 D4ED4F4A 		vldr.32	s9, [r4, #316]
 2514 0196 2B60     		str	r3, [r5]
 2515 0198 9BE80700 		ldm	fp, {r0, r1, r2}
 2516 019c 0593     		str	r3, [sp, #20]
 2517 019e 6FAB     		add	r3, sp, #444
 2518 01a0 94ED505A 		vldr.32	s10, [r4, #320]
 2519 01a4 D4ED515A 		vldr.32	s11, [r4, #324]
 2520 01a8 94ED526A 		vldr.32	s12, [r4, #328]
 2521 01ac 8DED57CA 		vstr.32	s24, [sp, #348]
 2522 01b0 83E80700 		stm	r3, {r0, r1, r2}
 2523 01b4 CDED58BA 		vstr.32	s23, [sp, #352]
 2524 01b8 8DED59BA 		vstr.32	s22, [sp, #356]
 2525 01bc CDED5AAA 		vstr.32	s21, [sp, #360]
 2526 01c0 8DED5BAA 		vstr.32	s20, [sp, #364]
 2527 01c4 CDED5C9A 		vstr.32	s19, [sp, #368]
 2528 01c8 CDED5D1A 		vstr.32	s3, [sp, #372]
 2529 01cc 8DED5E2A 		vstr.32	s4, [sp, #376]
 2530 01d0 CDED5F2A 		vstr.32	s5, [sp, #380]
 2531 01d4 8DED603A 		vstr.32	s6, [sp, #384]
 2532 01d8 CDED613A 		vstr.32	s7, [sp, #388]
 2533 01dc 8DED624A 		vstr.32	s8, [sp, #392]
 2534 01e0 CDED634A 		vstr.32	s9, [sp, #396]
 2535 01e4 099B     		ldr	r3, [sp, #36]
 2536 01e6 D4ED536A 		vldr.32	s13, [r4, #332]
 2537 01ea 079D     		ldr	r5, [sp, #28]
 2538 01ec 8DED6C7A 		vstr.32	s14, [sp, #432]
 2539 01f0 93E80700 		ldm	r3, {r0, r1, r2}
 2540 01f4 089B     		ldr	r3, [sp, #32]
 2541 01f6 8DF8BA31 		strb	r3, [sp, #442]
 2542 01fa 029B     		ldr	r3, [sp, #8]
 2543 01fc 8DF8BB31 		strb	r3, [sp, #443]
 2544 0200 72AB     		add	r3, sp, #456
 2545 0202 94ED547A 		vldr.32	s14, [r4, #336]
 2546 0206 CDED6D7A 		vstr.32	s15, [sp, #436]
 2547 020a 83E80700 		stm	r3, {r0, r1, r2}
 2548 020e D4ED557A 		vldr.32	s15, [r4, #340]
 2549 0212 0A9A     		ldr	r2, [sp, #40]
 2550 0214 94F85891 		ldrb	r9, [r4, #344]	@ zero_extendqisi2
 2551 0218 069F     		ldr	r7, [sp, #24]
 2552 021a 8DF8B951 		strb	r5, [sp, #441]
 2553 021e 544D     		ldr	r5, .L232
 2554 0220 8DF8B871 		strb	r7, [sp, #440]
 2555 0224 6B95     		str	r5, [sp, #428]
 2556 0226 8DED645A 		vstr.32	s10, [sp, #400]
 2557 022a CDED655A 		vstr.32	s11, [sp, #404]
 2558 022e 8DED666A 		vstr.32	s12, [sp, #408]
 2559 0232 CDED676A 		vstr.32	s13, [sp, #412]
 2560 0236 8DED687A 		vstr.32	s14, [sp, #416]
 2561 023a CDED697A 		vstr.32	s15, [sp, #420]
 2562 023e 8DF8A891 		strb	r9, [sp, #424]
 2563 0242 07CA     		ldm	r2, {r0, r1, r2}
 2564 0244 75AB     		add	r3, sp, #468
 2565 0246 04F14405 		add	r5, r4, #68
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 46


 2566 024a 83E80700 		stm	r3, {r0, r1, r2}
 2567 024e 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2568 0250 7CAF     		add	r7, sp, #496
 2569 0252 04F15805 		add	r5, r4, #88
 2570 0256 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2571 0258 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2572 025a 81AD     		add	r5, sp, #516
 2573 025c 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2574 025e 04F16C0E 		add	lr, r4, #108
 2575 0262 039B     		ldr	r3, [sp, #12]
 2576 0264 3B60     		str	r3, [r7]
 2577 0266 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 2578 026a 049F     		ldr	r7, [sp, #16]
 2579 026c 2F60     		str	r7, [r5]
 2580 026e 0DF5067A 		add	r10, sp, #536
 2581 0272 04F18005 		add	r5, r4, #128
 2582 0276 8DED799A 		vstr.32	s18, [sp, #484]
 2583 027a CDED7A8A 		vstr.32	s17, [sp, #488]
 2584 027e 8DED7B8A 		vstr.32	s16, [sp, #492]
 2585 0282 CDED78CA 		vstr.32	s25, [sp, #480]
 2586 0286 AAE80F00 		stmia	r10!, {r0, r1, r2, r3}
 2587 028a 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2588 028c 0DF50B7E 		add	lr, sp, #556
 2589 0290 04F19405 		add	r5, r4, #148
 2590 0294 AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 2591 0298 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2592 029a 90AF     		add	r7, sp, #576
 2593 029c 04F1A805 		add	r5, r4, #168
 2594 02a0 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2595 02a2 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 2596 02a4 0B9D     		ldr	r5, [sp, #44]
 2597 02a6 CAF80050 		str	r5, [r10]
 2598 02aa 0C9D     		ldr	r5, [sp, #48]
 2599 02ac CEF80050 		str	r5, [lr]
 2600 02b0 04F1BC0B 		add	fp, r4, #188
 2601 02b4 0D9D     		ldr	r5, [sp, #52]
 2602 02b6 3D60     		str	r5, [r7]
 2603 02b8 95AE     		add	r6, sp, #596
 2604 02ba 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 2605 02bc BBE80F00 		ldmia	fp!, {r0, r1, r2, r3}
 2606 02c0 04F1D007 		add	r7, r4, #208
 2607 02c4 0DF51A7E 		add	lr, sp, #616
 2608 02c8 AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 2609 02cc 0FCF     		ldmia	r7!, {r0, r1, r2, r3}
 2610 02ce 04F1E40A 		add	r10, r4, #228
 2611 02d2 9FAF     		add	r7, sp, #636
 2612 02d4 0FC7     		stmia	r7!, {r0, r1, r2, r3}
 2613 02d6 BAE80F00 		ldmia	r10!, {r0, r1, r2, r3}
 2614 02da F834     		adds	r4, r4, #248
 2615 02dc 0DF5247A 		add	r10, sp, #656
 2616 02e0 AAE80F00 		stmia	r10!, {r0, r1, r2, r3}
 2617 02e4 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 2618 02e6 0E9D     		ldr	r5, [sp, #56]
 2619 02e8 3560     		str	r5, [r6]
 2620 02ea A9AC     		add	r4, sp, #676
 2621 02ec CEF800C0 		str	ip, [lr]
 2622 02f0 C7F80080 		str	r8, [r7]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 47


 2623 02f4 0F9D     		ldr	r5, [sp, #60]
 2624 02f6 CAF80050 		str	r5, [r10]
 2625 02fa 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 2626 02fc 019B     		ldr	r3, [sp, #4]
 2627 02fe 059A     		ldr	r2, [sp, #20]
 2628 0300 2260     		str	r2, [r4]
 2629 0302 033B     		subs	r3, r3, #3
 2630 0304 B0EE408A 		vmov.f32	s16, s0
 2631 0308 B0EE609A 		vmov.f32	s18, s1
 2632 030c F0EE418A 		vmov.f32	s17, s2
 2633 0310 8DEDAECA 		vstr.32	s24, [sp, #696]
 2634 0314 CDEDAFBA 		vstr.32	s23, [sp, #700]
 2635 0318 8DEDB0BA 		vstr.32	s22, [sp, #704]
 2636 031c CDEDB1AA 		vstr.32	s21, [sp, #708]
 2637 0320 8DEDB2AA 		vstr.32	s20, [sp, #712]
 2638 0324 CDEDB39A 		vstr.32	s19, [sp, #716]
 2639 0328 CDEDB41A 		vstr.32	s3, [sp, #720]
 2640 032c 8DEDB52A 		vstr.32	s4, [sp, #724]
 2641 0330 CDEDB62A 		vstr.32	s5, [sp, #728]
 2642 0334 8DEDB73A 		vstr.32	s6, [sp, #732]
 2643 0338 CDEDB83A 		vstr.32	s7, [sp, #736]
 2644 033c 8DEDB94A 		vstr.32	s8, [sp, #740]
 2645 0340 CDEDBA4A 		vstr.32	s9, [sp, #744]
 2646 0344 8DEDBB5A 		vstr.32	s10, [sp, #748]
 2647 0348 CDEDBC5A 		vstr.32	s11, [sp, #752]
 2648 034c 8DEDBD6A 		vstr.32	s12, [sp, #756]
 2649 0350 CDEDBE6A 		vstr.32	s13, [sp, #760]
 2650 0354 8DEDBF7A 		vstr.32	s14, [sp, #764]
 2651 0358 CDEDC07A 		vstr.32	s15, [sp, #768]
 2652 035c 8DF80493 		strb	r9, [sp, #772]
 2653 0360 052B     		cmp	r3, #5
 2654 0362 00F2AA80 		bhi	.L206
 2655 0366 DFE803F0 		tbb	[pc, r3]
 2656              	.L208:
 2657 036a 69       		.byte	(.L207-.L208)/2
 2658 036b 7E       		.byte	(.L209-.L208)/2
 2659 036c 93       		.byte	(.L210-.L208)/2
 2660 036d 54       		.byte	(.L211-.L208)/2
 2661 036e 07       		.byte	(.L213-.L208)/2
 2662 036f 07       		.byte	(.L213-.L208)/2
 2663              		.p2align 1
 2664              	.L233:
 2665              		.align	2
 2666              	.L232:
 2667 0370 08000000 		.word	.LANCHOR4+8
 2668 0374 CDCC4C3E 		.word	1045220557
 2669              	.L213:
 2670 0378 9DED1D7A 		vldr.32	s14, [sp, #116]
 2671 037c 5FED036A 		vldr.32	s13, .L232+4
 2672 0380 DDED747A 		vldr.32	s15, [sp, #464]
 2673 0384 37EE267A 		vadd.f32	s14, s14, s13
 2674 0388 77EEE67A 		vsub.f32	s15, s15, s13
 2675 038c 14A8     		add	r0, sp, #80
 2676 038e 8DED1D7A 		vstr.32	s14, [sp, #116]
 2677 0392 CDED747A 		vstr.32	s15, [sp, #464]
 2678 0396 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2679 039a 6BA8     		add	r0, sp, #428
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 48


 2680 039c FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2681              	.L214:
 2682 03a0 11AC     		add	r4, sp, #68
 2683 03a2 14A8     		add	r0, sp, #80
 2684 03a4 2146     		mov	r1, r4
 2685 03a6 B0EE681A 		vmov.f32	s2, s17
 2686 03aa F0EE490A 		vmov.f32	s1, s18
 2687 03ae B0EE480A 		vmov.f32	s0, s16
 2688 03b2 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2689 03b6 019B     		ldr	r3, [sp, #4]
 2690 03b8 A568     		ldr	r5, [r4, #8]	@ float
 2691 03ba 002B     		cmp	r3, #0
 2692 03bc 40F0A880 		bne	.L222
 2693              	.L216:
 2694 03c0 5FED147A 		vldr.32	s15, .L232+4
 2695 03c4 38EE678A 		vsub.f32	s16, s16, s15
 2696              	.L220:
 2697 03c8 F0EE490A 		vmov.f32	s1, s18
 2698 03cc B0EE480A 		vmov.f32	s0, s16
 2699 03d0 B0EE681A 		vmov.f32	s2, s17
 2700 03d4 6BA8     		add	r0, sp, #428
 2701 03d6 2146     		mov	r1, r4
 2702 03d8 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2703 03dc 2846     		mov	r0, r5	@ float
 2704 03de FFF7FEFF 		bl	__aeabi_f2d
 2705 03e2 0646     		mov	r6, r0
 2706 03e4 A068     		ldr	r0, [r4, #8]	@ float
 2707 03e6 0F46     		mov	r7, r1
 2708 03e8 FFF7FEFF 		bl	__aeabi_f2d
 2709 03ec 0246     		mov	r2, r0
 2710 03ee 0B46     		mov	r3, r1
 2711 03f0 3046     		mov	r0, r6
 2712 03f2 3946     		mov	r1, r7
 2713 03f4 FFF7FEFF 		bl	__aeabi_dsub
 2714 03f8 56A3     		adr	r3, .L234+4
 2715 03fa D3E90023 		ldrd	r2, [r3]
 2716 03fe FFF7FEFF 		bl	__aeabi_ddiv
 2717 0402 41EC100B 		vmov	d0, r0, r1
 2718 0406 0DF5437D 		add	sp, sp, #780
 2719              		@ sp needed
 2720 040a BDEC0A8B 		vldm	sp!, {d8-d12}
 2721 040e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2722              	.L211:
 2723 0412 9DED1A7A 		vldr.32	s14, [sp, #104]
 2724 0416 DFED4E6A 		vldr.32	s13, .L234
 2725 041a DDED717A 		vldr.32	s15, [sp, #452]
 2726 041e 37EE267A 		vadd.f32	s14, s14, s13
 2727 0422 77EEE67A 		vsub.f32	s15, s15, s13
 2728 0426 14A8     		add	r0, sp, #80
 2729 0428 8DED1A7A 		vstr.32	s14, [sp, #104]
 2730 042c CDED717A 		vstr.32	s15, [sp, #452]
 2731 0430 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2732 0434 6BA8     		add	r0, sp, #428
 2733 0436 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2734 043a B1E7     		b	.L214
 2735              	.L207:
 2736 043c 9DED1C7A 		vldr.32	s14, [sp, #112]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 49


 2737 0440 DFED436A 		vldr.32	s13, .L234
 2738 0444 DDED737A 		vldr.32	s15, [sp, #460]
 2739 0448 37EE267A 		vadd.f32	s14, s14, s13
 2740 044c 77EEE67A 		vsub.f32	s15, s15, s13
 2741 0450 14A8     		add	r0, sp, #80
 2742 0452 8DED1C7A 		vstr.32	s14, [sp, #112]
 2743 0456 CDED737A 		vstr.32	s15, [sp, #460]
 2744 045a FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2745 045e 6BA8     		add	r0, sp, #428
 2746 0460 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2747 0464 9CE7     		b	.L214
 2748              	.L209:
 2749 0466 9DED1E7A 		vldr.32	s14, [sp, #120]
 2750 046a DFED396A 		vldr.32	s13, .L234
 2751 046e DDED757A 		vldr.32	s15, [sp, #468]
 2752 0472 37EE267A 		vadd.f32	s14, s14, s13
 2753 0476 77EEE67A 		vsub.f32	s15, s15, s13
 2754 047a 14A8     		add	r0, sp, #80
 2755 047c 8DED1E7A 		vstr.32	s14, [sp, #120]
 2756 0480 CDED757A 		vstr.32	s15, [sp, #468]
 2757 0484 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2758 0488 6BA8     		add	r0, sp, #428
 2759 048a FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2760 048e 87E7     		b	.L214
 2761              	.L210:
 2762 0490 9DED1F7A 		vldr.32	s14, [sp, #124]
 2763 0494 DFED2E6A 		vldr.32	s13, .L234
 2764 0498 DDED767A 		vldr.32	s15, [sp, #472]
 2765 049c 37EE267A 		vadd.f32	s14, s14, s13
 2766 04a0 77EEE67A 		vsub.f32	s15, s15, s13
 2767 04a4 14A8     		add	r0, sp, #80
 2768 04a6 8DED1F7A 		vstr.32	s14, [sp, #124]
 2769 04aa CDED767A 		vstr.32	s15, [sp, #472]
 2770 04ae FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2771 04b2 6BA8     		add	r0, sp, #428
 2772 04b4 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2773 04b8 72E7     		b	.L214
 2774              	.L206:
 2775 04ba 019B     		ldr	r3, [sp, #4]
 2776 04bc 53B9     		cbnz	r3, .L215
 2777 04be 9FED240A 		vldr.32	s0, .L234
 2778 04c2 11AC     		add	r4, sp, #68
 2779 04c4 14A8     		add	r0, sp, #80
 2780 04c6 38EE000A 		vadd.f32	s0, s16, s0
 2781 04ca 2146     		mov	r1, r4
 2782 04cc FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2783 04d0 A568     		ldr	r5, [r4, #8]	@ float
 2784 04d2 75E7     		b	.L216
 2785              	.L215:
 2786 04d4 019B     		ldr	r3, [sp, #4]
 2787 04d6 012B     		cmp	r3, #1
 2788 04d8 26D1     		bne	.L217
 2789 04da DFED1D0A 		vldr.32	s1, .L234
 2790 04de 11AC     		add	r4, sp, #68
 2791 04e0 14A8     		add	r0, sp, #80
 2792 04e2 79EE200A 		vadd.f32	s1, s18, s1
 2793 04e6 2146     		mov	r1, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 50


 2794 04e8 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2795 04ec A568     		ldr	r5, [r4, #8]	@ float
 2796              	.L218:
 2797 04ee DFED187A 		vldr.32	s15, .L234
 2798 04f2 39EE679A 		vsub.f32	s18, s18, s15
 2799 04f6 67E7     		b	.L220
 2800              	.L231:
 2801 04f8 11AC     		add	r4, sp, #68
 2802 04fa 14A8     		add	r0, sp, #80
 2803 04fc 2146     		mov	r1, r4
 2804 04fe B0EE681A 		vmov.f32	s2, s17
 2805 0502 F0EE490A 		vmov.f32	s1, s18
 2806 0506 B0EE480A 		vmov.f32	s0, s16
 2807 050a FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2808 050e A568     		ldr	r5, [r4, #8]	@ float
 2809              	.L222:
 2810 0510 019B     		ldr	r3, [sp, #4]
 2811 0512 012B     		cmp	r3, #1
 2812 0514 EBD0     		beq	.L218
 2813 0516 019B     		ldr	r3, [sp, #4]
 2814 0518 022B     		cmp	r3, #2
 2815 051a 7FF455AF 		bne	.L220
 2816              	.L219:
 2817 051e DFED0C7A 		vldr.32	s15, .L234
 2818 0522 78EEE78A 		vsub.f32	s17, s17, s15
 2819 0526 4FE7     		b	.L220
 2820              	.L217:
 2821 0528 019B     		ldr	r3, [sp, #4]
 2822 052a 022B     		cmp	r3, #2
 2823 052c E4D1     		bne	.L231
 2824 052e 9FED081A 		vldr.32	s2, .L234
 2825 0532 11AC     		add	r4, sp, #68
 2826 0534 14A8     		add	r0, sp, #80
 2827 0536 38EE811A 		vadd.f32	s2, s17, s2
 2828 053a 2146     		mov	r1, r4
 2829 053c F0EE490A 		vmov.f32	s1, s18
 2830 0540 B0EE480A 		vmov.f32	s0, s16
 2831 0544 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2832 0548 A568     		ldr	r5, [r4, #8]	@ float
 2833 054a E8E7     		b	.L219
 2834              	.L235:
 2835 054c AFF30080 		.align	3
 2836              	.L234:
 2837 0550 CDCC4C3E 		.word	1045220557
 2838 0554 000000A0 		.word	-1610612736
 2839 0558 9999D93F 		.word	1071225241
 2840              		.size	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff, .-_ZNK21HangprinterKinematics17ComputeD
 2841              		.global	__aeabi_d2f
 2842              		.section	.text._ZN21HangprinterKinematics6AdjustEjPKd,"ax",%progbits
 2843              		.align	1
 2844              		.p2align 2,,3
 2845              		.global	_ZN21HangprinterKinematics6AdjustEjPKd
 2846              		.syntax unified
 2847              		.thumb
 2848              		.thumb_func
 2849              		.fpu fpv4-sp-d16
 2850              		.type	_ZN21HangprinterKinematics6AdjustEjPKd, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 51


 2851              	_ZN21HangprinterKinematics6AdjustEjPKd:
 2852              		@ args = 0, pretend = 0, frame = 0
 2853              		@ frame_needed = 0, uses_anonymous_args = 0
 2854 0000 0329     		cmp	r1, #3
 2855 0002 70B5     		push	{r4, r5, r6, lr}
 2856 0004 0446     		mov	r4, r0
 2857 0006 53D9     		bls	.L238
 2858 0008 0D46     		mov	r5, r1
 2859 000a D2E90601 		ldrd	r0, [r2, #24]
 2860 000e 1646     		mov	r6, r2
 2861 0010 FFF7FEFF 		bl	__aeabi_d2f
 2862 0014 D4ED087A 		vldr.32	s15, [r4, #32]
 2863 0018 07EE100A 		vmov	s14, r0
 2864 001c 77EE877A 		vadd.f32	s15, s15, s14
 2865 0020 042D     		cmp	r5, #4
 2866 0022 C4ED087A 		vstr.32	s15, [r4, #32]
 2867 0026 43D0     		beq	.L238
 2868 0028 D6E90801 		ldrd	r0, [r6, #32]
 2869 002c FFF7FEFF 		bl	__aeabi_d2f
 2870 0030 D4ED0A7A 		vldr.32	s15, [r4, #40]
 2871 0034 07EE100A 		vmov	s14, r0
 2872 0038 77EE877A 		vadd.f32	s15, s15, s14
 2873 003c 052D     		cmp	r5, #5
 2874 003e C4ED0A7A 		vstr.32	s15, [r4, #40]
 2875 0042 35D0     		beq	.L238
 2876 0044 D6E90A01 		ldrd	r0, [r6, #40]
 2877 0048 FFF7FEFF 		bl	__aeabi_d2f
 2878 004c D4ED0B7A 		vldr.32	s15, [r4, #44]
 2879 0050 07EE100A 		vmov	s14, r0
 2880 0054 77EE877A 		vadd.f32	s15, s15, s14
 2881 0058 062D     		cmp	r5, #6
 2882 005a C4ED0B7A 		vstr.32	s15, [r4, #44]
 2883 005e 27D0     		beq	.L238
 2884 0060 D6E90C01 		ldrd	r0, [r6, #48]
 2885 0064 FFF7FEFF 		bl	__aeabi_d2f
 2886 0068 D4ED067A 		vldr.32	s15, [r4, #24]
 2887 006c 07EE100A 		vmov	s14, r0
 2888 0070 77EE877A 		vadd.f32	s15, s15, s14
 2889 0074 072D     		cmp	r5, #7
 2890 0076 C4ED067A 		vstr.32	s15, [r4, #24]
 2891 007a 19D0     		beq	.L238
 2892 007c D6E90E01 		ldrd	r0, [r6, #56]
 2893 0080 FFF7FEFF 		bl	__aeabi_d2f
 2894 0084 D4ED097A 		vldr.32	s15, [r4, #36]
 2895 0088 07EE100A 		vmov	s14, r0
 2896 008c 77EE877A 		vadd.f32	s15, s15, s14
 2897 0090 082D     		cmp	r5, #8
 2898 0092 C4ED097A 		vstr.32	s15, [r4, #36]
 2899 0096 0BD0     		beq	.L238
 2900 0098 D6E91001 		ldrd	r0, [r6, #64]
 2901 009c FFF7FEFF 		bl	__aeabi_d2f
 2902 00a0 D4ED0C7A 		vldr.32	s15, [r4, #48]
 2903 00a4 07EE100A 		vmov	s14, r0
 2904 00a8 77EE877A 		vadd.f32	s15, s15, s14
 2905 00ac C4ED0C7A 		vstr.32	s15, [r4, #48]
 2906              	.L238:
 2907 00b0 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 52


 2908 00b2 BDE87040 		pop	{r4, r5, r6, lr}
 2909 00b6 FFF7FEBF 		b	_ZN21HangprinterKinematics6RecalcEv
 2910              		.size	_ZN21HangprinterKinematics6AdjustEjPKd, .-_ZN21HangprinterKinematics6AdjustEjPKd
 2911 00ba 00BF     		.section	.text._ZNK21HangprinterKinematics15PrintParametersERK9StringRef,"ax",%progbits
 2912              		.align	1
 2913              		.p2align 2,,3
 2914              		.global	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 2915              		.syntax unified
 2916              		.thumb
 2917              		.thumb_func
 2918              		.fpu fpv4-sp-d16
 2919              		.type	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef, %function
 2920              	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef:
 2921              		@ args = 0, pretend = 0, frame = 0
 2922              		@ frame_needed = 0, uses_anonymous_args = 0
 2923 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2924 0002 0446     		mov	r4, r0
 2925 0004 91B0     		sub	sp, sp, #68
 2926 0006 0069     		ldr	r0, [r0, #16]	@ float
 2927 0008 0D46     		mov	r5, r1
 2928 000a FFF7FEFF 		bl	__aeabi_f2d
 2929 000e 0646     		mov	r6, r0
 2930 0010 206B     		ldr	r0, [r4, #48]	@ float
 2931 0012 0F46     		mov	r7, r1
 2932 0014 FFF7FEFF 		bl	__aeabi_f2d
 2933 0018 CDE90E01 		strd	r0, [sp, #56]
 2934 001c E06A     		ldr	r0, [r4, #44]	@ float
 2935 001e FFF7FEFF 		bl	__aeabi_f2d
 2936 0022 CDE90C01 		strd	r0, [sp, #48]
 2937 0026 A06A     		ldr	r0, [r4, #40]	@ float
 2938 0028 FFF7FEFF 		bl	__aeabi_f2d
 2939 002c CDE90A01 		strd	r0, [sp, #40]
 2940 0030 606A     		ldr	r0, [r4, #36]	@ float
 2941 0032 FFF7FEFF 		bl	__aeabi_f2d
 2942 0036 CDE90801 		strd	r0, [sp, #32]
 2943 003a 206A     		ldr	r0, [r4, #32]	@ float
 2944 003c FFF7FEFF 		bl	__aeabi_f2d
 2945 0040 CDE90601 		strd	r0, [sp, #24]
 2946 0044 E069     		ldr	r0, [r4, #28]	@ float
 2947 0046 FFF7FEFF 		bl	__aeabi_f2d
 2948 004a CDE90401 		strd	r0, [sp, #16]
 2949 004e A069     		ldr	r0, [r4, #24]	@ float
 2950 0050 FFF7FEFF 		bl	__aeabi_f2d
 2951 0054 CDE90201 		strd	r0, [sp, #8]
 2952 0058 6069     		ldr	r0, [r4, #20]	@ float
 2953 005a FFF7FEFF 		bl	__aeabi_f2d
 2954 005e 3246     		mov	r2, r6
 2955 0060 CDE90001 		strd	r0, [sp]
 2956 0064 3B46     		mov	r3, r7
 2957 0066 2846     		mov	r0, r5
 2958 0068 0249     		ldr	r1, .L258
 2959 006a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2960 006e 11B0     		add	sp, sp, #68
 2961              		@ sp needed
 2962 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 2963              	.L259:
 2964 0072 00BF     		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 53


 2965              	.L258:
 2966 0074 00000000 		.word	.LC19
 2967              		.size	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef, .-_ZNK21HangprinterKinematics15Pr
 2968              		.section	.text._ZN6StringILj200EE6printfEPKcz,"axG",%progbits,_ZN6StringILj200EE6printfEPKcz,comda
 2969              		.align	1
 2970              		.p2align 2,,3
 2971              		.weak	_ZN6StringILj200EE6printfEPKcz
 2972              		.syntax unified
 2973              		.thumb
 2974              		.thumb_func
 2975              		.fpu fpv4-sp-d16
 2976              		.type	_ZN6StringILj200EE6printfEPKcz, %function
 2977              	_ZN6StringILj200EE6printfEPKcz:
 2978              		@ args = 4, pretend = 12, frame = 16
 2979              		@ frame_needed = 0, uses_anonymous_args = 1
 2980 0000 0EB4     		push	{r1, r2, r3}
 2981 0002 00B5     		push	{lr}
 2982 0004 84B0     		sub	sp, sp, #16
 2983 0006 05AA     		add	r2, sp, #20
 2984 0008 0290     		str	r0, [sp, #8]
 2985 000a 52F8041B 		ldr	r1, [r2], #4
 2986 000e 0192     		str	r2, [sp, #4]
 2987 0010 C923     		movs	r3, #201
 2988 0012 02A8     		add	r0, sp, #8
 2989 0014 0393     		str	r3, [sp, #12]
 2990 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 2991 001a 04B0     		add	sp, sp, #16
 2992              		@ sp needed
 2993 001c 5DF804EB 		ldr	lr, [sp], #4
 2994 0020 03B0     		add	sp, sp, #12
 2995 0022 7047     		bx	lr
 2996              		.size	_ZN6StringILj200EE6printfEPKcz, .-_ZN6StringILj200EE6printfEPKcz
 2997              		.section	.text._ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore,"ax",%progbits
 2998              		.align	1
 2999              		.p2align 2,,3
 3000              		.global	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore
 3001              		.syntax unified
 3002              		.thumb
 3003              		.thumb_func
 3004              		.fpu fpv4-sp-d16
 3005              		.type	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore, %function
 3006              	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore:
 3007              		@ args = 0, pretend = 0, frame = 208
 3008              		@ frame_needed = 0, uses_anonymous_args = 0
 3009 0000 2DE97043 		push	{r4, r5, r6, r8, r9, lr}
 3010 0004 0D46     		mov	r5, r1
 3011 0006 D2B0     		sub	sp, sp, #328
 3012 0008 0446     		mov	r4, r0
 3013 000a 3349     		ldr	r1, .L268
 3014 000c 2846     		mov	r0, r5
 3015 000e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 3016 0012 0028     		cmp	r0, #0
 3017 0014 5DD0     		beq	.L263
 3018 0016 52AE     		add	r6, sp, #328
 3019 0018 0023     		movs	r3, #0
 3020 001a 2069     		ldr	r0, [r4, #16]	@ float
 3021 001c 06F8CC3D 		strb	r3, [r6, #-204]!
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 54


 3022 0020 FFF7FEFF 		bl	__aeabi_f2d
 3023 0024 8046     		mov	r8, r0
 3024 0026 206D     		ldr	r0, [r4, #80]	@ float
 3025 0028 8946     		mov	r9, r1
 3026 002a FFF7FEFF 		bl	__aeabi_f2d
 3027 002e CDE91C01 		strd	r0, [sp, #112]
 3028 0032 E06C     		ldr	r0, [r4, #76]	@ float
 3029 0034 FFF7FEFF 		bl	__aeabi_f2d
 3030 0038 CDE91A01 		strd	r0, [sp, #104]
 3031 003c A06C     		ldr	r0, [r4, #72]	@ float
 3032 003e FFF7FEFF 		bl	__aeabi_f2d
 3033 0042 CDE91801 		strd	r0, [sp, #96]
 3034 0046 606C     		ldr	r0, [r4, #68]	@ float
 3035 0048 FFF7FEFF 		bl	__aeabi_f2d
 3036 004c CDE91601 		strd	r0, [sp, #88]
 3037 0050 206C     		ldr	r0, [r4, #64]	@ float
 3038 0052 FFF7FEFF 		bl	__aeabi_f2d
 3039 0056 CDE91401 		strd	r0, [sp, #80]
 3040 005a E06B     		ldr	r0, [r4, #60]	@ float
 3041 005c FFF7FEFF 		bl	__aeabi_f2d
 3042 0060 CDE91201 		strd	r0, [sp, #72]
 3043 0064 606B     		ldr	r0, [r4, #52]	@ float
 3044 0066 FFF7FEFF 		bl	__aeabi_f2d
 3045 006a CDE91001 		strd	r0, [sp, #64]
 3046 006e 206B     		ldr	r0, [r4, #48]	@ float
 3047 0070 FFF7FEFF 		bl	__aeabi_f2d
 3048 0074 CDE90E01 		strd	r0, [sp, #56]
 3049 0078 E06A     		ldr	r0, [r4, #44]	@ float
 3050 007a FFF7FEFF 		bl	__aeabi_f2d
 3051 007e CDE90C01 		strd	r0, [sp, #48]
 3052 0082 A06A     		ldr	r0, [r4, #40]	@ float
 3053 0084 FFF7FEFF 		bl	__aeabi_f2d
 3054 0088 CDE90A01 		strd	r0, [sp, #40]
 3055 008c 606A     		ldr	r0, [r4, #36]	@ float
 3056 008e FFF7FEFF 		bl	__aeabi_f2d
 3057 0092 CDE90801 		strd	r0, [sp, #32]
 3058 0096 206A     		ldr	r0, [r4, #32]	@ float
 3059 0098 FFF7FEFF 		bl	__aeabi_f2d
 3060 009c CDE90601 		strd	r0, [sp, #24]
 3061 00a0 E069     		ldr	r0, [r4, #28]	@ float
 3062 00a2 FFF7FEFF 		bl	__aeabi_f2d
 3063 00a6 CDE90401 		strd	r0, [sp, #16]
 3064 00aa A069     		ldr	r0, [r4, #24]	@ float
 3065 00ac FFF7FEFF 		bl	__aeabi_f2d
 3066 00b0 CDE90201 		strd	r0, [sp, #8]
 3067 00b4 6069     		ldr	r0, [r4, #20]	@ float
 3068 00b6 FFF7FEFF 		bl	__aeabi_f2d
 3069 00ba 4246     		mov	r2, r8
 3070 00bc CDE90001 		strd	r0, [sp]
 3071 00c0 4B46     		mov	r3, r9
 3072 00c2 0649     		ldr	r1, .L268+4
 3073 00c4 3046     		mov	r0, r6
 3074 00c6 FFF7FEFF 		bl	_ZN6StringILj200EE6printfEPKcz
 3075 00ca 3146     		mov	r1, r6
 3076 00cc 2846     		mov	r0, r5
 3077 00ce FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 3078              	.L263:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 55


 3079 00d2 52B0     		add	sp, sp, #328
 3080              		@ sp needed
 3081 00d4 BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 3082              	.L269:
 3083              		.align	2
 3084              	.L268:
 3085 00d8 00000000 		.word	.LC20
 3086 00dc 1C000000 		.word	.LC21
 3087              		.size	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK21HangprinterKine
 3088              		.section	.text._ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj,"axG",%progbits,_ZN11FixedMatrixIdLj9
 3089              		.align	1
 3090              		.p2align 2,,3
 3091              		.weak	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 3092              		.syntax unified
 3093              		.thumb
 3094              		.thumb_func
 3095              		.fpu fpv4-sp-d16
 3096              		.type	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, %function
 3097              	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj:
 3098              		@ args = 0, pretend = 0, frame = 64
 3099              		@ frame_needed = 0, uses_anonymous_args = 0
 3100 0000 002A     		cmp	r2, #0
 3101 0002 00F02082 		beq	.L334
 3102 0006 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3103 000a 2DED088B 		vpush.64	{d8, d9, d10, d11}
 3104 000e 91B0     		sub	sp, sp, #68
 3105 0010 AF4E     		ldr	r6, .L351+8
 3106 0012 0092     		str	r2, [sp]
 3107 0014 0246     		mov	r2, r0
 3108 0016 0F91     		str	r1, [sp, #60]
 3109 0018 52F8083B 		ldr	r3, [r2], #8
 3110 001c 0D92     		str	r2, [sp, #52]
 3111 001e 9F68     		ldr	r7, [r3, #8]
 3112 0020 0023     		movs	r3, #0
 3113 0022 BB46     		mov	fp, r7
 3114 0024 0A93     		str	r3, [sp, #40]
 3115 0026 CDE90B33 		strd	r3, r3, [sp, #44]
 3116 002a 0493     		str	r3, [sp, #16]
 3117 002c B345     		cmp	fp, r6
 3118 002e 00F15803 		add	r3, r0, #88
 3119 0032 9FEDA5BB 		vldr.64	d11, .L351
 3120 0036 0E93     		str	r3, [sp, #56]
 3121 0038 8246     		mov	r10, r0
 3122 003a 40F09281 		bne	.L272
 3123              	.L348:
 3124 003e 0D9B     		ldr	r3, [sp, #52]
 3125 0040 0A9A     		ldr	r2, [sp, #40]
 3126 0042 9818     		adds	r0, r3, r2
 3127              	.L273:
 3128 0044 D0E90001 		ldrd	r0, [r0]
 3129 0048 FFF7FEFF 		bl	__aeabi_d2f
 3130 004c 049B     		ldr	r3, [sp, #16]
 3131 004e 0099     		ldr	r1, [sp]
 3132 0050 0133     		adds	r3, r3, #1
 3133 0052 07EE900A 		vmov	s15, r0
 3134 0056 9942     		cmp	r1, r3
 3135 0058 0693     		str	r3, [sp, #24]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 56


 3136 005a B0EEE78A 		vabs.f32	s16, s15
 3137 005e 40F29680 		bls	.L274
 3138 0062 CB1A     		subs	r3, r1, r3
 3139 0064 0193     		str	r3, [sp, #4]
 3140 0066 0A9A     		ldr	r2, [sp, #40]
 3141 0068 0E9B     		ldr	r3, [sp, #56]
 3142 006a 1344     		add	r3, r3, r2
 3143 006c 6FF04F07 		mvn	r7, #79
 3144 0070 0025     		movs	r5, #0
 3145 0072 0293     		str	r3, [sp, #8]
 3146 0074 5C46     		mov	r4, fp
 3147 0076 06E0     		b	.L288
 3148              	.L277:
 3149 0078 019B     		ldr	r3, [sp, #4]
 3150 007a 0135     		adds	r5, r5, #1
 3151 007c AB42     		cmp	r3, r5
 3152 007e A7F15007 		sub	r7, r7, #80
 3153 0082 00F08380 		beq	.L337
 3154              	.L288:
 3155 0086 069B     		ldr	r3, [sp, #24]
 3156 0088 B442     		cmp	r4, r6
 3157 008a 03EB0509 		add	r9, r3, r5
 3158 008e 6AD1     		bne	.L275
 3159 0090 029B     		ldr	r3, [sp, #8]
 3160 0092 05EB8500 		add	r0, r5, r5, lsl #2
 3161 0096 03EB0010 		add	r0, r3, r0, lsl #4
 3162              	.L276:
 3163 009a D0E90001 		ldrd	r0, [r0]
 3164 009e FFF7FEFF 		bl	__aeabi_d2f
 3165 00a2 07EE900A 		vmov	s15, r0
 3166 00a6 B0EEE7AA 		vabs.f32	s20, s15
 3167 00aa B4EEC8AA 		vcmpe.f32	s20, s16
 3168 00ae F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3169 00b2 E1DD     		ble	.L277
 3170 00b4 049B     		ldr	r3, [sp, #16]
 3171 00b6 4B45     		cmp	r3, r9
 3172 00b8 00F07C81 		beq	.L323
 3173 00bc 0B9A     		ldr	r2, [sp, #44]
 3174 00be 092A     		cmp	r2, #9
 3175 00c0 00F27881 		bhi	.L323
 3176 00c4 029A     		ldr	r2, [sp, #8]
 3177 00c6 05EB8508 		add	r8, r5, r5, lsl #2
 3178 00ca 9B46     		mov	fp, r3
 3179 00cc 2B46     		mov	r3, r5
 3180 00ce 02EB0818 		add	r8, r2, r8, lsl #4
 3181 00d2 4D46     		mov	r5, r9
 3182 00d4 B946     		mov	r9, r7
 3183 00d6 1F46     		mov	r7, r3
 3184 00d8 1AE0     		b	.L287
 3185              	.L339:
 3186 00da 08EB0900 		add	r0, r8, r9
 3187 00de B442     		cmp	r4, r6
 3188 00e0 90ED008B 		vldr.64	d8, [r0]
 3189 00e4 21D1     		bne	.L281
 3190              	.L340:
 3191 00e6 4046     		mov	r0, r8
 3192 00e8 B442     		cmp	r4, r6
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 57


 3193 00ea 90ED009B 		vldr.64	d9, [r0]
 3194 00ee 27D1     		bne	.L283
 3195              	.L341:
 3196 00f0 08EB0900 		add	r0, r8, r9
 3197 00f4 B442     		cmp	r4, r6
 3198 00f6 80ED009B 		vstr.64	d9, [r0]
 3199 00fa 2CD1     		bne	.L285
 3200              	.L342:
 3201 00fc 4046     		mov	r0, r8
 3202              	.L286:
 3203 00fe 0BF1010B 		add	fp, fp, #1
 3204 0102 BBF10A0F 		cmp	fp, #10
 3205 0106 80ED008B 		vstr.64	d8, [r0]
 3206 010a 08F10808 		add	r8, r8, #8
 3207 010e 32D0     		beq	.L338
 3208              	.L287:
 3209 0110 B442     		cmp	r4, r6
 3210 0112 E2D0     		beq	.L339
 3211 0114 5A46     		mov	r2, fp
 3212 0116 0499     		ldr	r1, [sp, #16]
 3213 0118 5046     		mov	r0, r10
 3214 011a A047     		blx	r4
 3215 011c DAF80020 		ldr	r2, [r10]
 3216 0120 9468     		ldr	r4, [r2, #8]
 3217 0122 B442     		cmp	r4, r6
 3218 0124 90ED008B 		vldr.64	d8, [r0]
 3219 0128 DDD0     		beq	.L340
 3220              	.L281:
 3221 012a 5A46     		mov	r2, fp
 3222 012c 2946     		mov	r1, r5
 3223 012e 5046     		mov	r0, r10
 3224 0130 A047     		blx	r4
 3225 0132 DAF80020 		ldr	r2, [r10]
 3226 0136 9468     		ldr	r4, [r2, #8]
 3227 0138 B442     		cmp	r4, r6
 3228 013a 90ED009B 		vldr.64	d9, [r0]
 3229 013e D7D0     		beq	.L341
 3230              	.L283:
 3231 0140 5A46     		mov	r2, fp
 3232 0142 0499     		ldr	r1, [sp, #16]
 3233 0144 5046     		mov	r0, r10
 3234 0146 A047     		blx	r4
 3235 0148 DAF80020 		ldr	r2, [r10]
 3236 014c 9468     		ldr	r4, [r2, #8]
 3237 014e B442     		cmp	r4, r6
 3238 0150 80ED009B 		vstr.64	d9, [r0]
 3239 0154 D2D0     		beq	.L342
 3240              	.L285:
 3241 0156 5A46     		mov	r2, fp
 3242 0158 2946     		mov	r1, r5
 3243 015a 5046     		mov	r0, r10
 3244 015c A047     		blx	r4
 3245 015e DAF80020 		ldr	r2, [r10]
 3246 0162 9468     		ldr	r4, [r2, #8]
 3247 0164 CBE7     		b	.L286
 3248              	.L275:
 3249 0166 049A     		ldr	r2, [sp, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 58


 3250 0168 4946     		mov	r1, r9
 3251 016a 5046     		mov	r0, r10
 3252 016c A047     		blx	r4
 3253 016e DAF80030 		ldr	r3, [r10]
 3254 0172 9C68     		ldr	r4, [r3, #8]
 3255 0174 91E7     		b	.L276
 3256              	.L338:
 3257 0176 3D46     		mov	r5, r7
 3258 0178 019B     		ldr	r3, [sp, #4]
 3259 017a 0135     		adds	r5, r5, #1
 3260 017c 4F46     		mov	r7, r9
 3261 017e AB42     		cmp	r3, r5
 3262 0180 B0EE4A8A 		vmov.f32	s16, s20
 3263 0184 A7F15007 		sub	r7, r7, #80
 3264 0188 7FF47DAF 		bne	.L288
 3265              	.L337:
 3266 018c A346     		mov	fp, r4
 3267              	.L274:
 3268 018e B345     		cmp	fp, r6
 3269 0190 40F01381 		bne	.L289
 3270 0194 0D9B     		ldr	r3, [sp, #52]
 3271 0196 0A9A     		ldr	r2, [sp, #40]
 3272 0198 9818     		adds	r0, r3, r2
 3273              	.L290:
 3274 019a 90ED007B 		vldr.64	d7, [r0]
 3275 019e 0B9B     		ldr	r3, [sp, #44]
 3276 01a0 8DED087B 		vstr.64	d7, [sp, #32]
 3277 01a4 002B     		cmp	r3, #0
 3278 01a6 61D0     		beq	.L304
 3279 01a8 069B     		ldr	r3, [sp, #24]
 3280 01aa 0AEBC303 		add	r3, r10, r3, lsl #3
 3281 01ae 0593     		str	r3, [sp, #20]
 3282 01b0 0C9B     		ldr	r3, [sp, #48]
 3283 01b2 DB00     		lsls	r3, r3, #3
 3284 01b4 0193     		str	r3, [sp, #4]
 3285 01b6 0023     		movs	r3, #0
 3286 01b8 0793     		str	r3, [sp, #28]
 3287 01ba 5F46     		mov	r7, fp
 3288              	.L305:
 3289 01bc B742     		cmp	r7, r6
 3290 01be 40F0F180 		bne	.L294
 3291 01c2 0598     		ldr	r0, [sp, #20]
 3292              	.L295:
 3293 01c4 DDE90823 		ldrd	r2, [sp, #32]
 3294 01c8 D0E90001 		ldrd	r0, [r0]
 3295 01cc FFF7FEFF 		bl	__aeabi_ddiv
 3296 01d0 B742     		cmp	r7, r6
 3297 01d2 CDE90201 		strd	r0, [sp, #8]
 3298 01d6 40F0DD80 		bne	.L296
 3299 01da 0598     		ldr	r0, [sp, #20]
 3300              	.L297:
 3301 01dc 009B     		ldr	r3, [sp]
 3302 01de 069D     		ldr	r5, [sp, #24]
 3303 01e0 1A46     		mov	r2, r3
 3304 01e2 AA42     		cmp	r2, r5
 3305 01e4 80ED00BB 		vstr.64	d11, [r0]
 3306 01e8 33D3     		bcc	.L298
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 59


 3307 01ea 059B     		ldr	r3, [sp, #20]
 3308 01ec D146     		mov	r9, r10
 3309 01ee 03F10804 		add	r4, r3, #8
 3310 01f2 1AE0     		b	.L303
 3311              	.L344:
 3312 01f4 019B     		ldr	r3, [sp, #4]
 3313 01f6 1819     		adds	r0, r3, r4
 3314              	.L300:
 3315 01f8 D0E90023 		ldrd	r2, [r0]
 3316 01fc DDE90201 		ldrd	r0, [sp, #8]
 3317 0200 FFF7FEFF 		bl	__aeabi_dmul
 3318 0204 B742     		cmp	r7, r6
 3319 0206 8246     		mov	r10, r0
 3320 0208 8B46     		mov	fp, r1
 3321 020a 18D1     		bne	.L301
 3322 020c A046     		mov	r8, r4
 3323              	.L302:
 3324 020e 5B46     		mov	r3, fp
 3325 0210 D8E90001 		ldrd	r0, [r8]
 3326 0214 5246     		mov	r2, r10
 3327 0216 FFF7FEFF 		bl	__aeabi_dsub
 3328 021a 009B     		ldr	r3, [sp]
 3329 021c 0135     		adds	r5, r5, #1
 3330 021e AB42     		cmp	r3, r5
 3331 0220 04F10804 		add	r4, r4, #8
 3332 0224 C8E90001 		strd	r0, [r8]
 3333 0228 12D3     		bcc	.L343
 3334              	.L303:
 3335 022a B742     		cmp	r7, r6
 3336 022c E2D0     		beq	.L344
 3337 022e 2A46     		mov	r2, r5
 3338 0230 0499     		ldr	r1, [sp, #16]
 3339 0232 4846     		mov	r0, r9
 3340 0234 B847     		blx	r7
 3341 0236 D9F80030 		ldr	r3, [r9]
 3342 023a 9F68     		ldr	r7, [r3, #8]
 3343 023c DCE7     		b	.L300
 3344              	.L301:
 3345 023e 2A46     		mov	r2, r5
 3346 0240 0799     		ldr	r1, [sp, #28]
 3347 0242 4846     		mov	r0, r9
 3348 0244 B847     		blx	r7
 3349 0246 D9F80030 		ldr	r3, [r9]
 3350 024a 8046     		mov	r8, r0
 3351 024c 9F68     		ldr	r7, [r3, #8]
 3352 024e DEE7     		b	.L302
 3353              	.L343:
 3354 0250 CA46     		mov	r10, r9
 3355              	.L298:
 3356 0252 059A     		ldr	r2, [sp, #20]
 3357 0254 079B     		ldr	r3, [sp, #28]
 3358 0256 5032     		adds	r2, r2, #80
 3359 0258 0592     		str	r2, [sp, #20]
 3360 025a 019A     		ldr	r2, [sp, #4]
 3361 025c 503A     		subs	r2, r2, #80
 3362 025e 0192     		str	r2, [sp, #4]
 3363 0260 049A     		ldr	r2, [sp, #16]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 60


 3364 0262 0133     		adds	r3, r3, #1
 3365 0264 9342     		cmp	r3, r2
 3366 0266 0793     		str	r3, [sp, #28]
 3367 0268 A8D1     		bne	.L305
 3368 026a BB46     		mov	fp, r7
 3369              	.L304:
 3370 026c 009B     		ldr	r3, [sp]
 3371 026e 069A     		ldr	r2, [sp, #24]
 3372 0270 9342     		cmp	r3, r2
 3373 0272 00F0AB80 		beq	.L345
 3374 0276 0C9B     		ldr	r3, [sp, #48]
 3375 0278 0A9A     		ldr	r2, [sp, #40]
 3376 027a 0A33     		adds	r3, r3, #10
 3377 027c 0C93     		str	r3, [sp, #48]
 3378 027e 0E9B     		ldr	r3, [sp, #56]
 3379 0280 1344     		add	r3, r3, r2
 3380 0282 0593     		str	r3, [sp, #20]
 3381 0284 069B     		ldr	r3, [sp, #24]
 3382 0286 0793     		str	r3, [sp, #28]
 3383 0288 6FF04F03 		mvn	r3, #79
 3384 028c 0193     		str	r3, [sp, #4]
 3385 028e 5F46     		mov	r7, fp
 3386              	.L316:
 3387 0290 B742     		cmp	r7, r6
 3388 0292 6FD1     		bne	.L306
 3389 0294 0598     		ldr	r0, [sp, #20]
 3390              	.L307:
 3391 0296 DDE90823 		ldrd	r2, [sp, #32]
 3392 029a D0E90001 		ldrd	r0, [r0]
 3393 029e FFF7FEFF 		bl	__aeabi_ddiv
 3394 02a2 B742     		cmp	r7, r6
 3395 02a4 CDE90201 		strd	r0, [sp, #8]
 3396 02a8 6CD1     		bne	.L308
 3397 02aa 0598     		ldr	r0, [sp, #20]
 3398              	.L309:
 3399 02ac 009B     		ldr	r3, [sp]
 3400 02ae 069D     		ldr	r5, [sp, #24]
 3401 02b0 1A46     		mov	r2, r3
 3402 02b2 AA42     		cmp	r2, r5
 3403 02b4 80ED00BB 		vstr.64	d11, [r0]
 3404 02b8 3BD3     		bcc	.L310
 3405 02ba 059B     		ldr	r3, [sp, #20]
 3406 02bc D146     		mov	r9, r10
 3407 02be 03F10804 		add	r4, r3, #8
 3408 02c2 22E0     		b	.L315
 3409              	.L352:
 3410 02c4 AFF30080 		.align	3
 3411              	.L351:
 3412 02c8 00000000 		.word	0
 3413 02cc 00000000 		.word	0
 3414 02d0 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 3415              	.L347:
 3416 02d4 019B     		ldr	r3, [sp, #4]
 3417 02d6 1819     		adds	r0, r3, r4
 3418              	.L312:
 3419 02d8 D0E90023 		ldrd	r2, [r0]
 3420 02dc DDE90201 		ldrd	r0, [sp, #8]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 61


 3421 02e0 FFF7FEFF 		bl	__aeabi_dmul
 3422 02e4 B742     		cmp	r7, r6
 3423 02e6 8246     		mov	r10, r0
 3424 02e8 8B46     		mov	fp, r1
 3425 02ea 18D1     		bne	.L313
 3426 02ec A046     		mov	r8, r4
 3427              	.L314:
 3428 02ee 5B46     		mov	r3, fp
 3429 02f0 D8E90001 		ldrd	r0, [r8]
 3430 02f4 5246     		mov	r2, r10
 3431 02f6 FFF7FEFF 		bl	__aeabi_dsub
 3432 02fa 009B     		ldr	r3, [sp]
 3433 02fc 0135     		adds	r5, r5, #1
 3434 02fe AB42     		cmp	r3, r5
 3435 0300 04F10804 		add	r4, r4, #8
 3436 0304 C8E90001 		strd	r0, [r8]
 3437 0308 12D3     		bcc	.L346
 3438              	.L315:
 3439 030a B742     		cmp	r7, r6
 3440 030c E2D0     		beq	.L347
 3441 030e 2A46     		mov	r2, r5
 3442 0310 0499     		ldr	r1, [sp, #16]
 3443 0312 4846     		mov	r0, r9
 3444 0314 B847     		blx	r7
 3445 0316 D9F80030 		ldr	r3, [r9]
 3446 031a 9F68     		ldr	r7, [r3, #8]
 3447 031c DCE7     		b	.L312
 3448              	.L313:
 3449 031e 2A46     		mov	r2, r5
 3450 0320 0799     		ldr	r1, [sp, #28]
 3451 0322 4846     		mov	r0, r9
 3452 0324 B847     		blx	r7
 3453 0326 D9F80030 		ldr	r3, [r9]
 3454 032a 8046     		mov	r8, r0
 3455 032c 9F68     		ldr	r7, [r3, #8]
 3456 032e DEE7     		b	.L314
 3457              	.L346:
 3458 0330 CA46     		mov	r10, r9
 3459              	.L310:
 3460 0332 059A     		ldr	r2, [sp, #20]
 3461 0334 079B     		ldr	r3, [sp, #28]
 3462 0336 5032     		adds	r2, r2, #80
 3463 0338 0592     		str	r2, [sp, #20]
 3464 033a 019A     		ldr	r2, [sp, #4]
 3465 033c 503A     		subs	r2, r2, #80
 3466 033e 0192     		str	r2, [sp, #4]
 3467 0340 009A     		ldr	r2, [sp]
 3468 0342 0133     		adds	r3, r3, #1
 3469 0344 9A42     		cmp	r2, r3
 3470 0346 0793     		str	r3, [sp, #28]
 3471 0348 A2D1     		bne	.L316
 3472 034a 0B9B     		ldr	r3, [sp, #44]
 3473 034c 0133     		adds	r3, r3, #1
 3474 034e 0B93     		str	r3, [sp, #44]
 3475 0350 0A9B     		ldr	r3, [sp, #40]
 3476 0352 BB46     		mov	fp, r7
 3477 0354 5833     		adds	r3, r3, #88
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 62


 3478 0356 0A93     		str	r3, [sp, #40]
 3479 0358 B345     		cmp	fp, r6
 3480 035a 069B     		ldr	r3, [sp, #24]
 3481 035c 0493     		str	r3, [sp, #16]
 3482 035e 3FF46EAE 		beq	.L348
 3483              	.L272:
 3484 0362 0499     		ldr	r1, [sp, #16]
 3485 0364 5046     		mov	r0, r10
 3486 0366 0A46     		mov	r2, r1
 3487 0368 D847     		blx	fp
 3488 036a DAF80030 		ldr	r3, [r10]
 3489 036e D3F808B0 		ldr	fp, [r3, #8]
 3490 0372 67E6     		b	.L273
 3491              	.L306:
 3492 0374 049A     		ldr	r2, [sp, #16]
 3493 0376 0799     		ldr	r1, [sp, #28]
 3494 0378 5046     		mov	r0, r10
 3495 037a B847     		blx	r7
 3496 037c DAF80030 		ldr	r3, [r10]
 3497 0380 9F68     		ldr	r7, [r3, #8]
 3498 0382 88E7     		b	.L307
 3499              	.L308:
 3500 0384 049A     		ldr	r2, [sp, #16]
 3501 0386 0799     		ldr	r1, [sp, #28]
 3502 0388 5046     		mov	r0, r10
 3503 038a B847     		blx	r7
 3504 038c DAF80030 		ldr	r3, [r10]
 3505 0390 9F68     		ldr	r7, [r3, #8]
 3506 0392 8BE7     		b	.L309
 3507              	.L296:
 3508 0394 049A     		ldr	r2, [sp, #16]
 3509 0396 0799     		ldr	r1, [sp, #28]
 3510 0398 5046     		mov	r0, r10
 3511 039a B847     		blx	r7
 3512 039c DAF80030 		ldr	r3, [r10]
 3513 03a0 9F68     		ldr	r7, [r3, #8]
 3514 03a2 1BE7     		b	.L297
 3515              	.L294:
 3516 03a4 049A     		ldr	r2, [sp, #16]
 3517 03a6 0799     		ldr	r1, [sp, #28]
 3518 03a8 5046     		mov	r0, r10
 3519 03aa B847     		blx	r7
 3520 03ac DAF80030 		ldr	r3, [r10]
 3521 03b0 9F68     		ldr	r7, [r3, #8]
 3522 03b2 07E7     		b	.L295
 3523              	.L323:
 3524 03b4 B0EE4A8A 		vmov.f32	s16, s20
 3525 03b8 5EE6     		b	.L277
 3526              	.L289:
 3527 03ba 0499     		ldr	r1, [sp, #16]
 3528 03bc 5046     		mov	r0, r10
 3529 03be 0A46     		mov	r2, r1
 3530 03c0 D847     		blx	fp
 3531 03c2 DAF80030 		ldr	r3, [r10]
 3532 03c6 D3F808B0 		ldr	fp, [r3, #8]
 3533 03ca E6E6     		b	.L290
 3534              	.L345:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 63


 3535 03cc 049C     		ldr	r4, [sp, #16]
 3536 03ce 0D9D     		ldr	r5, [sp, #52]
 3537 03d0 DDF83C90 		ldr	r9, [sp, #60]
 3538 03d4 5F46     		mov	r7, fp
 3539 03d6 0234     		adds	r4, r4, #2
 3540 03d8 3B46     		mov	r3, r7
 3541 03da 0AEBC404 		add	r4, r10, r4, lsl #3
 3542 03de 4FF00008 		mov	r8, #0
 3543 03e2 5746     		mov	r7, r10
 3544 03e4 18E0     		b	.L293
 3545              	.L349:
 3546 03e6 2046     		mov	r0, r4
 3547 03e8 B342     		cmp	r3, r6
 3548 03ea D0E900AB 		ldrd	r10, [r0]
 3549 03ee 1FD1     		bne	.L320
 3550              	.L350:
 3551 03f0 2B46     		mov	r3, r5
 3552              	.L321:
 3553 03f2 D3E90023 		ldrd	r2, [r3]
 3554 03f6 5046     		mov	r0, r10
 3555 03f8 5946     		mov	r1, fp
 3556 03fa FFF7FEFF 		bl	__aeabi_ddiv
 3557 03fe 069B     		ldr	r3, [sp, #24]
 3558 0400 08F10108 		add	r8, r8, #1
 3559 0404 4345     		cmp	r3, r8
 3560 0406 05F15805 		add	r5, r5, #88
 3561 040a 04F15004 		add	r4, r4, #80
 3562 040e E9E80201 		strd	r0, [r9], #8
 3563 0412 13D0     		beq	.L270
 3564 0414 3B68     		ldr	r3, [r7]
 3565 0416 9B68     		ldr	r3, [r3, #8]
 3566              	.L293:
 3567 0418 B342     		cmp	r3, r6
 3568 041a E4D0     		beq	.L349
 3569 041c 069A     		ldr	r2, [sp, #24]
 3570 041e 4146     		mov	r1, r8
 3571 0420 3846     		mov	r0, r7
 3572 0422 9847     		blx	r3
 3573 0424 3B68     		ldr	r3, [r7]
 3574 0426 9B68     		ldr	r3, [r3, #8]
 3575 0428 B342     		cmp	r3, r6
 3576 042a D0E900AB 		ldrd	r10, [r0]
 3577 042e DFD0     		beq	.L350
 3578              	.L320:
 3579 0430 4246     		mov	r2, r8
 3580 0432 4146     		mov	r1, r8
 3581 0434 3846     		mov	r0, r7
 3582 0436 9847     		blx	r3
 3583 0438 0346     		mov	r3, r0
 3584 043a DAE7     		b	.L321
 3585              	.L270:
 3586 043c 11B0     		add	sp, sp, #68
 3587              		@ sp needed
 3588 043e BDEC088B 		vldm	sp!, {d8-d11}
 3589 0442 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3590              	.L334:
 3591 0446 7047     		bx	lr
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 64


 3592              		.size	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, .-_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEP
 3593              		.global	__aeabi_ui2d
 3594              		.section	.text._ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,
 3595              		.align	1
 3596              		.p2align 2,,3
 3597              		.global	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 3598              		.syntax unified
 3599              		.thumb
 3600              		.thumb_func
 3601              		.fpu fpv4-sp-d16
 3602              		.type	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %functio
 3603              	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
 3604              		@ args = 0, pretend = 0, frame = 4544
 3605              		@ frame_needed = 0, uses_anonymous_args = 0
 3606 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3607 0004 2DED048B 		vpush.64	{d8, d9}
 3608 0008 ADF58E5D 		sub	sp, sp, #4544
 3609 000c 85B0     		sub	sp, sp, #20
 3610 000e 8346     		mov	fp, r0
 3611 0010 1046     		mov	r0, r2
 3612 0012 0C46     		mov	r4, r1
 3613 0014 1192     		str	r2, [sp, #68]
 3614 0016 1A91     		str	r1, [sp, #104]
 3615 0018 2093     		str	r3, [sp, #128]
 3616 001a FFF7FEFF 		bl	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 3617 001e 092C     		cmp	r4, #9
 3618 0020 0690     		str	r0, [sp, #24]
 3619 0022 0ED9     		bls	.L440
 3620              	.L354:
 3621 0024 1A9A     		ldr	r2, [sp, #104]
 3622 0026 2098     		ldr	r0, [sp, #128]
 3623 0028 9149     		ldr	r1, .L450+8
 3624 002a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3625 002e 0123     		movs	r3, #1
 3626 0030 1D93     		str	r3, [sp, #116]
 3627              	.L437:
 3628 0032 1D98     		ldr	r0, [sp, #116]
 3629 0034 0DF58E5D 		add	sp, sp, #4544
 3630 0038 05B0     		add	sp, sp, #20
 3631              		@ sp needed
 3632 003a BDEC048B 		vldm	sp!, {d8-d9}
 3633 003e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3634              	.L440:
 3635 0042 4FF41273 		mov	r3, #584
 3636 0046 E340     		lsrs	r3, r3, r4
 3637 0048 DB43     		mvns	r3, r3
 3638 004a 13F00103 		ands	r3, r3, #1
 3639 004e 1D93     		str	r3, [sp, #116]
 3640 0050 E8D1     		bne	.L354
 3641 0052 884B     		ldr	r3, .L450+12
 3642 0054 D3F80831 		ldr	r3, [r3, #264]
 3643 0058 D806     		lsls	r0, r3, #27
 3644 005a 00F12083 		bmi	.L438
 3645 005e 0DF6C803 		addw	r3, sp, #2248
 3646 0062 1693     		str	r3, [sp, #88]
 3647              	.L357:
 3648 0064 9FED807B 		vldr.64	d7, .L450
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 65


 3649 0068 069B     		ldr	r3, [sp, #24]
 3650 006a 8DED127B 		vstr.64	d7, [sp, #72]
 3651 006e 002B     		cmp	r3, #0
 3652 0070 00F09780 		beq	.L363
 3653 0074 119B     		ldr	r3, [sp, #68]
 3654 0076 DFED808A 		vldr.32	s17, .L450+16
 3655 007a 169C     		ldr	r4, [sp, #88]
 3656 007c 03F28718 		addw	r8, r3, #391
 3657 0080 069B     		ldr	r3, [sp, #24]
 3658 0082 0DF1E809 		add	r9, sp, #232
 3659 0086 08EB030A 		add	r10, r8, r3
 3660 008a 0DF5B866 		add	r6, sp, #1472
 3661 008e 0027     		movs	r7, #0
 3662              	.L364:
 3663 0090 9FED757B 		vldr.64	d7, .L450
 3664 0094 18F8013F 		ldrb	r3, [r8, #1]!	@ zero_extendqisi2
 3665 0098 764A     		ldr	r2, .L450+12
 3666 009a C3F38003 		ubfx	r3, r3, #2, #1
 3667 009e D068     		ldr	r0, [r2, #12]
 3668 00a0 0093     		str	r3, [sp]
 3669 00a2 3946     		mov	r1, r7
 3670 00a4 A9EC027B 		vstmia.64	r9!, {d7}
 3671 00a8 0DF6CC03 		addw	r3, sp, #2252
 3672 00ac 2246     		mov	r2, r4
 3673 00ae FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 3674 00b2 10EE100A 		vmov	r0, s0
 3675 00b6 FFF7FEFF 		bl	__aeabi_f2d
 3676 00ba 94ED018A 		vldr.32	s16, [r4, #4]
 3677 00be DBED057A 		vldr.32	s15, [fp, #20]
 3678 00c2 DBED066A 		vldr.32	s13, [fp, #24]
 3679 00c6 94ED009A 		vldr.32	s18, [r4]
 3680 00ca 9BED047A 		vldr.32	s14, [fp, #16]
 3681 00ce C4ED028A 		vstr.32	s17, [r4, #8]
 3682 00d2 78EE677A 		vsub.f32	s15, s16, s15
 3683 00d6 39EE477A 		vsub.f32	s14, s18, s14
 3684 00da 27EEA70A 		vmul.f32	s0, s15, s15
 3685 00de CDE90401 		strd	r0, [sp, #16]
 3686 00e2 A6EEA60A 		vfma.f32	s0, s13, s13
 3687 00e6 0137     		adds	r7, r7, #1
 3688 00e8 A7EE070A 		vfma.f32	s0, s14, s14
 3689 00ec B5EE400A 		vcmp.f32	s0, #0
 3690 00f0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3691 00f4 F1EEC09A 		vsqrt.f32	s19, s0
 3692 00f8 00F1E782 		bmi	.L441
 3693              	.L360:
 3694 00fc 19EE900A 		vmov	r0, s19
 3695 0100 FFF7FEFF 		bl	__aeabi_f2d
 3696 0104 DBED087A 		vldr.32	s15, [fp, #32]
 3697 0108 DBED096A 		vldr.32	s13, [fp, #36]
 3698 010c 9BED077A 		vldr.32	s14, [fp, #28]
 3699 0110 78EE677A 		vsub.f32	s15, s16, s15
 3700 0114 39EE477A 		vsub.f32	s14, s18, s14
 3701 0118 27EEA70A 		vmul.f32	s0, s15, s15
 3702 011c C6E90201 		strd	r0, [r6, #8]
 3703 0120 A6EEA60A 		vfma.f32	s0, s13, s13
 3704 0124 A7EE070A 		vfma.f32	s0, s14, s14
 3705 0128 B5EE400A 		vcmp.f32	s0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 66


 3706 012c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3707 0130 F1EEC09A 		vsqrt.f32	s19, s0
 3708 0134 00F1D082 		bmi	.L442
 3709              	.L361:
 3710 0138 19EE900A 		vmov	r0, s19
 3711 013c FFF7FEFF 		bl	__aeabi_f2d
 3712 0140 DBED0B7A 		vldr.32	s15, [fp, #44]
 3713 0144 DBED0C6A 		vldr.32	s13, [fp, #48]
 3714 0148 9BED0A7A 		vldr.32	s14, [fp, #40]
 3715 014c 38EE678A 		vsub.f32	s16, s16, s15
 3716 0150 39EE479A 		vsub.f32	s18, s18, s14
 3717 0154 28EE080A 		vmul.f32	s0, s16, s16
 3718 0158 C6E90401 		strd	r0, [r6, #16]
 3719 015c A6EEA60A 		vfma.f32	s0, s13, s13
 3720 0160 A9EE090A 		vfma.f32	s0, s18, s18
 3721 0164 B5EE400A 		vcmp.f32	s0, #0
 3722 0168 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3723 016c B1EEC08A 		vsqrt.f32	s16, s0
 3724 0170 00F1B982 		bmi	.L443
 3725              	.L362:
 3726 0174 18EE100A 		vmov	r0, s16
 3727 0178 FFF7FEFF 		bl	__aeabi_f2d
 3728 017c DDE90423 		ldrd	r2, [sp, #16]
 3729 0180 E6E90601 		strd	r0, [r6, #24]!
 3730 0184 1046     		mov	r0, r2
 3731 0186 1946     		mov	r1, r3
 3732 0188 FFF7FEFF 		bl	__aeabi_dmul
 3733 018c 0246     		mov	r2, r0
 3734 018e 0B46     		mov	r3, r1
 3735 0190 DDE91201 		ldrd	r0, [sp, #72]
 3736 0194 FFF7FEFF 		bl	__aeabi_dadd
 3737 0198 D045     		cmp	r8, r10
 3738 019a CDE91201 		strd	r0, [sp, #72]
 3739 019e 7FF477AF 		bne	.L364
 3740              	.L363:
 3741 01a2 1A98     		ldr	r0, [sp, #104]
 3742 01a4 069C     		ldr	r4, [sp, #24]
 3743 01a6 119D     		ldr	r5, [sp, #68]
 3744 01a8 CDF834B0 		str	fp, [sp, #52]
 3745 01ac C300     		lsls	r3, r0, #3
 3746 01ae BAAE     		add	r6, sp, #744
 3747 01b0 1E44     		add	r6, r6, r3
 3748 01b2 1C96     		str	r6, [sp, #112]
 3749 01b4 169E     		ldr	r6, [sp, #88]
 3750 01b6 1E44     		add	r6, r6, r3
 3751 01b8 1596     		str	r6, [sp, #84]
 3752 01ba 0DF50D66 		add	r6, sp, #2256
 3753 01be 1E44     		add	r6, r6, r3
 3754 01c0 0796     		str	r6, [sp, #28]
 3755 01c2 28AE     		add	r6, sp, #160
 3756 01c4 F318     		adds	r3, r6, r3
 3757 01c6 C0EB4071 		rsb	r1, r0, r0, lsl #29
 3758 01ca 04EBC402 		add	r2, r4, r4, lsl #3
 3759 01ce 2193     		str	r3, [sp, #132]
 3760 01d0 CB00     		lsls	r3, r1, #3
 3761 01d2 05F58475 		add	r5, r5, #264
 3762 01d6 1E93     		str	r3, [sp, #120]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 67


 3763 01d8 D300     		lsls	r3, r2, #3
 3764 01da 1F93     		str	r3, [sp, #124]
 3765 01dc 05EB8403 		add	r3, r5, r4, lsl #2
 3766 01e0 1093     		str	r3, [sp, #64]
 3767 01e2 0223     		movs	r3, #2
 3768 01e4 1B95     		str	r5, [sp, #108]
 3769 01e6 1893     		str	r3, [sp, #96]
 3770 01e8 8346     		mov	fp, r0
 3771              	.L359:
 3772 01ea 169B     		ldr	r3, [sp, #88]
 3773 01ec 1A46     		mov	r2, r3
 3774 01ee 234B     		ldr	r3, .L450+20
 3775 01f0 1360     		str	r3, [r2]
 3776 01f2 069B     		ldr	r3, [sp, #24]
 3777 01f4 002B     		cmp	r3, #0
 3778 01f6 4AD0     		beq	.L365
 3779 01f8 0024     		movs	r4, #0
 3780 01fa DDF83480 		ldr	r8, [sp, #52]
 3781 01fe A146     		mov	r9, r4
 3782 0200 0DF5B865 		add	r5, sp, #1472
 3783 0204 9A46     		mov	r10, r3
 3784 0206 5C46     		mov	r4, fp
 3785              	.L371:
 3786 0208 002C     		cmp	r4, #0
 3787 020a 39D0     		beq	.L366
 3788 020c D5E90201 		ldrd	r0, [r5, #8]
 3789 0210 FFF7FEFF 		bl	__aeabi_d2f
 3790 0214 09EE100A 		vmov	s18, r0
 3791 0218 D5E90401 		ldrd	r0, [r5, #16]
 3792 021c FFF7FEFF 		bl	__aeabi_d2f
 3793 0220 08EE900A 		vmov	s17, r0
 3794 0224 D5E90601 		ldrd	r0, [r5, #24]
 3795 0228 FFF7FEFF 		bl	__aeabi_d2f
 3796 022c 09EBC907 		add	r7, r9, r9, lsl #3
 3797 0230 0DF50D63 		add	r3, sp, #2256
 3798 0234 08EE100A 		vmov	s16, r0
 3799 0238 03EBC707 		add	r7, r3, r7, lsl #3
 3800 023c 0021     		movs	r1, #0
 3801              	.L367:
 3802 023e 082C     		cmp	r4, #8
 3803 0240 B0EE481A 		vmov.f32	s2, s16
 3804 0244 F0EE680A 		vmov.f32	s1, s17
 3805 0248 B0EE490A 		vmov.f32	s0, s18
 3806 024c 4046     		mov	r0, r8
 3807 024e 01F10106 		add	r6, r1, #1
 3808 0252 00F06A81 		beq	.L444
 3809              	.L368:
 3810 0256 FFF7FEFF 		bl	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 3811 025a B442     		cmp	r4, r6
 3812 025c A7EC020B 		vstmia.64	r7!, {d0}
 3813 0260 0ED0     		beq	.L366
 3814 0262 3146     		mov	r1, r6
 3815 0264 EBE7     		b	.L367
 3816              	.L451:
 3817 0266 00BF     		.align	3
 3818              	.L450:
 3819 0268 00000000 		.word	0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 68


 3820 026c 00000000 		.word	0
 3821 0270 00000000 		.word	.LC22
 3822 0274 00000000 		.word	reprap
 3823 0278 00000000 		.word	0
 3824 027c 08000000 		.word	_ZTV11FixedMatrixIdLj32ELj9EE+8
 3825              	.L366:
 3826 0280 09F10109 		add	r9, r9, #1
 3827 0284 CA45     		cmp	r10, r9
 3828 0286 05F11805 		add	r5, r5, #24
 3829 028a BDD1     		bne	.L371
 3830 028c A346     		mov	fp, r4
 3831              	.L365:
 3832 028e AC4B     		ldr	r3, .L452+8
 3833 0290 D3F80831 		ldr	r3, [r3, #264]
 3834 0294 13F01003 		ands	r3, r3, #16
 3835 0298 1793     		str	r3, [sp, #92]
 3836 029a 40F09C81 		bne	.L445
 3837 029e A94B     		ldr	r3, .L452+12
 3838 02a0 BA93     		str	r3, [sp, #744]
 3839 02a2 BBF1000F 		cmp	fp, #0
 3840 02a6 00F09C80 		beq	.L380
 3841              	.L394:
 3842 02aa 119B     		ldr	r3, [sp, #68]
 3843 02ac D3F80801 		ldr	r0, [r3, #264]	@ float
 3844 02b0 FFF7FEFF 		bl	__aeabi_f2d
 3845 02b4 DDE93A23 		ldrd	r2, [sp, #232]
 3846 02b8 FFF7FEFF 		bl	__aeabi_dadd
 3847 02bc 1E9A     		ldr	r2, [sp, #120]
 3848 02be 0E90     		str	r0, [sp, #56]
 3849 02c0 01F10043 		add	r3, r1, #-2147483648
 3850 02c4 0832     		adds	r2, r2, #8
 3851 02c6 0F93     		str	r3, [sp, #60]
 3852 02c8 1492     		str	r2, [sp, #80]
 3853 02ca 1C9B     		ldr	r3, [sp, #112]
 3854 02cc 1F9A     		ldr	r2, [sp, #124]
 3855 02ce 0993     		str	r3, [sp, #36]
 3856 02d0 169B     		ldr	r3, [sp, #88]
 3857 02d2 CDF864B0 		str	fp, [sp, #100]
 3858 02d6 583A     		subs	r2, r2, #88
 3859 02d8 0892     		str	r2, [sp, #32]
 3860 02da 9946     		mov	r9, r3
 3861              	.L379:
 3862 02dc 99ED027B 		vldr.64	d7, [r9, #8]
 3863 02e0 149B     		ldr	r3, [sp, #80]
 3864 02e2 099A     		ldr	r2, [sp, #36]
 3865 02e4 8DED047B 		vstr.64	d7, [sp, #16]
 3866 02e8 0DF50D64 		add	r4, sp, #2256
 3867 02ec 03EB020B 		add	fp, r3, r2
 3868              	.L376:
 3869 02f0 D4E90023 		ldrd	r2, [r4]
 3870 02f4 DDE90401 		ldrd	r0, [sp, #16]
 3871 02f8 FFF7FEFF 		bl	__aeabi_dmul
 3872 02fc 069B     		ldr	r3, [sp, #24]
 3873 02fe 012B     		cmp	r3, #1
 3874 0300 0646     		mov	r6, r0
 3875 0302 0F46     		mov	r7, r1
 3876 0304 04F1080A 		add	r10, r4, #8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 69


 3877 0308 17D9     		bls	.L374
 3878 030a 089B     		ldr	r3, [sp, #32]
 3879 030c 083C     		subs	r4, r4, #8
 3880 030e 03EB0A08 		add	r8, r3, r10
 3881 0312 4D46     		mov	r5, r9
 3882              	.L375:
 3883 0314 D4E91423 		ldrd	r2, [r4, #80]
 3884 0318 D5E91401 		ldrd	r0, [r5, #80]
 3885 031c FFF7FEFF 		bl	__aeabi_dmul
 3886 0320 0246     		mov	r2, r0
 3887 0322 0B46     		mov	r3, r1
 3888 0324 3046     		mov	r0, r6
 3889 0326 3946     		mov	r1, r7
 3890 0328 FFF7FEFF 		bl	__aeabi_dadd
 3891 032c 4834     		adds	r4, r4, #72
 3892 032e 4445     		cmp	r4, r8
 3893 0330 0646     		mov	r6, r0
 3894 0332 0F46     		mov	r7, r1
 3895 0334 05F14805 		add	r5, r5, #72
 3896 0338 ECD1     		bne	.L375
 3897              	.L374:
 3898 033a 079B     		ldr	r3, [sp, #28]
 3899 033c 5345     		cmp	r3, r10
 3900 033e EBE80267 		strd	r6, [fp], #8
 3901 0342 5446     		mov	r4, r10
 3902 0344 D4D1     		bne	.L376
 3903 0346 DDE90E23 		ldrd	r2, [sp, #56]
 3904 034a DDE90401 		ldrd	r0, [sp, #16]
 3905 034e FFF7FEFF 		bl	__aeabi_dmul
 3906 0352 069B     		ldr	r3, [sp, #24]
 3907 0354 012B     		cmp	r3, #1
 3908 0356 0646     		mov	r6, r0
 3909 0358 0F46     		mov	r7, r1
 3910 035a 2DD9     		bls	.L377
 3911 035c 119B     		ldr	r3, [sp, #68]
 3912 035e CDF83090 		str	r9, [sp, #48]
 3913 0362 4C46     		mov	r4, r9
 3914 0364 DDF84090 		ldr	r9, [sp, #64]
 3915 0368 03F58675 		add	r5, r3, #268
 3916 036c 0DF1F008 		add	r8, sp, #240
 3917              	.L378:
 3918 0370 F8E80223 		ldrd	r2, [r8], #8
 3919 0374 55F8040B 		ldr	r0, [r5], #4	@ float
 3920 0378 CDE90423 		strd	r2, [sp, #16]
 3921 037c FFF7FEFF 		bl	__aeabi_f2d
 3922 0380 DDE90423 		ldrd	r2, [sp, #16]
 3923 0384 FFF7FEFF 		bl	__aeabi_dadd
 3924 0388 01F1004B 		add	fp, r1, #-2147483648
 3925 038c D4E91423 		ldrd	r2, [r4, #80]
 3926 0390 5946     		mov	r1, fp
 3927 0392 8246     		mov	r10, r0
 3928 0394 FFF7FEFF 		bl	__aeabi_dmul
 3929 0398 0246     		mov	r2, r0
 3930 039a 0B46     		mov	r3, r1
 3931 039c 3046     		mov	r0, r6
 3932 039e 3946     		mov	r1, r7
 3933 03a0 FFF7FEFF 		bl	__aeabi_dadd
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 70


 3934 03a4 A945     		cmp	r9, r5
 3935 03a6 0646     		mov	r6, r0
 3936 03a8 0F46     		mov	r7, r1
 3937 03aa 04F14804 		add	r4, r4, #72
 3938 03ae DFD1     		bne	.L378
 3939 03b0 CDE90AAB 		strd	r10, [sp, #40]
 3940 03b4 DDF83090 		ldr	r9, [sp, #48]
 3941              	.L377:
 3942 03b8 099B     		ldr	r3, [sp, #36]
 3943 03ba C3E90267 		strd	r6, [r3, #8]
 3944 03be 5033     		adds	r3, r3, #80
 3945 03c0 0993     		str	r3, [sp, #36]
 3946 03c2 159B     		ldr	r3, [sp, #84]
 3947 03c4 09F10809 		add	r9, r9, #8
 3948 03c8 9945     		cmp	r9, r3
 3949 03ca 87D1     		bne	.L379
 3950 03cc DDF864B0 		ldr	fp, [sp, #100]
 3951              	.L373:
 3952 03d0 179B     		ldr	r3, [sp, #92]
 3953 03d2 33B1     		cbz	r3, .L380
 3954 03d4 0BF10103 		add	r3, fp, #1
 3955 03d8 5A46     		mov	r2, fp
 3956 03da BAA9     		add	r1, sp, #744
 3957 03dc 5A48     		ldr	r0, .L452+16
 3958 03de FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3959              	.L380:
 3960 03e2 28A9     		add	r1, sp, #160
 3961 03e4 5A46     		mov	r2, fp
 3962 03e6 BAA8     		add	r0, sp, #744
 3963 03e8 FFF7FEFF 		bl	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 3964 03ec 544B     		ldr	r3, .L452+8
 3965 03ee D3F80831 		ldr	r3, [r3, #264]
 3966 03f2 D906     		lsls	r1, r3, #27
 3967 03f4 00F10E81 		bmi	.L446
 3968              	.L381:
 3969 03f8 28AA     		add	r2, sp, #160
 3970 03fa 5946     		mov	r1, fp
 3971 03fc 0D98     		ldr	r0, [sp, #52]
 3972 03fe FFF7FEFF 		bl	_ZN21HangprinterKinematics6AdjustEjPKd
 3973 0402 DDE92801 		ldrd	r0, [sp, #160]
 3974 0406 FFF7FEFF 		bl	__aeabi_d2f
 3975 040a 2290     		str	r0, [sp, #136]	@ float
 3976 040c DDE92A01 		ldrd	r0, [sp, #168]
 3977 0410 FFF7FEFF 		bl	__aeabi_d2f
 3978 0414 2390     		str	r0, [sp, #140]	@ float
 3979 0416 DDE92C01 		ldrd	r0, [sp, #176]
 3980 041a FFF7FEFF 		bl	__aeabi_d2f
 3981 041e 484B     		ldr	r3, .L452+8
 3982 0420 2490     		str	r0, [sp, #144]	@ float
 3983 0422 0322     		movs	r2, #3
 3984 0424 D868     		ldr	r0, [r3, #12]
 3985 0426 22A9     		add	r1, sp, #136
 3986 0428 FFF7FEFF 		bl	_ZN4Move20AdjustMotorPositionsEPKfj
 3987 042c 9FED427B 		vldr.64	d7, .L452
 3988 0430 069B     		ldr	r3, [sp, #24]
 3989 0432 8DED047B 		vstr.64	d7, [sp, #16]
 3990 0436 002B     		cmp	r3, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 71


 3991 0438 55D0     		beq	.L386
 3992 043a CDF830B0 		str	fp, [sp, #48]
 3993 043e DDF86C80 		ldr	r8, [sp, #108]
 3994 0442 DDF840B0 		ldr	fp, [sp, #64]
 3995 0446 0DF5B866 		add	r6, sp, #1472
 3996 044a 0DF1E80A 		add	r10, sp, #232
 3997 044e 0DF5F479 		add	r9, sp, #488
 3998 0452 2EAF     		add	r7, sp, #184
 3999              	.L388:
 4000 0454 06F10805 		add	r5, r6, #8
 4001 0458 28AC     		add	r4, sp, #160
 4002              	.L387:
 4003 045a F4E80223 		ldrd	r2, [r4], #8
 4004 045e D5E90001 		ldrd	r0, [r5]
 4005 0462 FFF7FEFF 		bl	__aeabi_dadd
 4006 0466 A742     		cmp	r7, r4
 4007 0468 E5E80201 		strd	r0, [r5], #8
 4008 046c F5D1     		bne	.L387
 4009 046e D6E90601 		ldrd	r0, [r6, #24]
 4010 0472 FFF7FEFF 		bl	__aeabi_d2f
 4011 0476 0990     		str	r0, [sp, #36]
 4012 0478 D6E90401 		ldrd	r0, [r6, #16]
 4013 047c FFF7FEFF 		bl	__aeabi_d2f
 4014 0480 0890     		str	r0, [sp, #32]
 4015 0482 D6E90201 		ldrd	r0, [r6, #8]
 4016 0486 FFF7FEFF 		bl	__aeabi_d2f
 4017 048a 9DED091A 		vldr.32	s2, [sp, #36]	@ int
 4018 048e DDED080A 		vldr.32	s1, [sp, #32]	@ int
 4019 0492 00EE100A 		vmov	s0, r0
 4020 0496 25A9     		add	r1, sp, #148
 4021 0498 0D98     		ldr	r0, [sp, #52]
 4022 049a FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 4023 049e 9DED278A 		vldr.32	s16, [sp, #156]
 4024 04a2 18EE100A 		vmov	r0, s16
 4025 04a6 FFF7FEFF 		bl	__aeabi_f2d
 4026 04aa F8EC017A 		vldmia.32	r8!, {s15}
 4027 04ae 78EE277A 		vadd.f32	s15, s16, s15
 4028 04b2 EAE80201 		strd	r0, [r10], #8
 4029 04b6 17EE900A 		vmov	r0, s15
 4030 04ba FFF7FEFF 		bl	__aeabi_f2d
 4031 04be 0246     		mov	r2, r0
 4032 04c0 0B46     		mov	r3, r1
 4033 04c2 E9E80223 		strd	r2, [r9], #8
 4034 04c6 FFF7FEFF 		bl	__aeabi_dmul
 4035 04ca 0246     		mov	r2, r0
 4036 04cc 0B46     		mov	r3, r1
 4037 04ce DDE90401 		ldrd	r0, [sp, #16]
 4038 04d2 FFF7FEFF 		bl	__aeabi_dadd
 4039 04d6 C345     		cmp	fp, r8
 4040 04d8 06F11806 		add	r6, r6, #24
 4041 04dc CDE90401 		strd	r0, [sp, #16]
 4042 04e0 B8D1     		bne	.L388
 4043 04e2 DDF830B0 		ldr	fp, [sp, #48]
 4044              	.L386:
 4045 04e6 0698     		ldr	r0, [sp, #24]
 4046 04e8 FFF7FEFF 		bl	__aeabi_ui2d
 4047 04ec 0246     		mov	r2, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 72


 4048 04ee 0B46     		mov	r3, r1
 4049 04f0 0446     		mov	r4, r0
 4050 04f2 0D46     		mov	r5, r1
 4051 04f4 DDE90401 		ldrd	r0, [sp, #16]
 4052 04f8 FFF7FEFF 		bl	__aeabi_ddiv
 4053 04fc FFF7FEFF 		bl	__aeabi_d2f
 4054 0500 00EE100A 		vmov	s0, r0
 4055 0504 B5EE400A 		vcmp.f32	s0, #0
 4056 0508 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4057 050c B1EEC08A 		vsqrt.f32	s16, s0
 4058 0510 00F1EC80 		bmi	.L447
 4059              	.L389:
 4060 0514 0A4B     		ldr	r3, .L452+8
 4061 0516 D3F80831 		ldr	r3, [r3, #264]
 4062 051a DA06     		lsls	r2, r3, #27
 4063 051c 6ED4     		bmi	.L448
 4064              	.L390:
 4065 051e 189B     		ldr	r3, [sp, #96]
 4066 0520 012B     		cmp	r3, #1
 4067 0522 13D0     		beq	.L391
 4068 0524 0123     		movs	r3, #1
 4069 0526 1893     		str	r3, [sp, #96]
 4070 0528 5FE6     		b	.L359
 4071              	.L444:
 4072 052a 0529     		cmp	r1, #5
 4073 052c 6CD9     		bls	.L369
 4074 052e 3146     		mov	r1, r6
 4075 0530 91E6     		b	.L368
 4076              	.L453:
 4077 0532 00BFAFF3 		.align	3
 4077      0080
 4078              	.L452:
 4079 0538 00000000 		.word	0
 4080 053c 00000000 		.word	0
 4081 0540 00000000 		.word	reprap
 4082 0544 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 4083 0548 6C000000 		.word	.LC25
 4084              	.L391:
 4085 054c 6A4B     		ldr	r3, .L454
 4086 054e DDF834B0 		ldr	fp, [sp, #52]
 4087 0552 D3F80831 		ldr	r3, [r3, #264]
 4088 0556 DB06     		lsls	r3, r3, #27
 4089 0558 0DD5     		bpl	.L392
 4090 055a 169E     		ldr	r6, [sp, #88]
 4091 055c BA96     		str	r6, [sp, #744]
 4092 055e 0022     		movs	r2, #0
 4093 0560 DD23     		movs	r3, #221
 4094 0562 BAA9     		add	r1, sp, #744
 4095 0564 5846     		mov	r0, fp
 4096 0566 3270     		strb	r2, [r6]
 4097 0568 BB93     		str	r3, [sp, #748]
 4098 056a FFF7FEFF 		bl	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 4099 056e 3146     		mov	r1, r6
 4100 0570 6248     		ldr	r0, .L454+4
 4101 0572 FFF7FEFF 		bl	debugPrintf
 4102              	.L392:
 4103 0576 2246     		mov	r2, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 73


 4104 0578 2B46     		mov	r3, r5
 4105 057a DDE91201 		ldrd	r0, [sp, #72]
 4106 057e FFF7FEFF 		bl	__aeabi_ddiv
 4107 0582 FFF7FEFF 		bl	__aeabi_d2f
 4108 0586 00EE100A 		vmov	s0, r0
 4109 058a B5EE400A 		vcmp.f32	s0, #0
 4110 058e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 4111 0592 F1EEC08A 		vsqrt.f32	s17, s0
 4112 0596 00F1AC80 		bmi	.L449
 4113              	.L393:
 4114 059a 18EE100A 		vmov	r0, s16
 4115 059e FFF7FEFF 		bl	__aeabi_f2d
 4116 05a2 CDE90201 		strd	r0, [sp, #8]
 4117 05a6 18EE900A 		vmov	r0, s17
 4118 05aa FFF7FEFF 		bl	__aeabi_f2d
 4119 05ae 209C     		ldr	r4, [sp, #128]
 4120 05b0 069B     		ldr	r3, [sp, #24]
 4121 05b2 1A9A     		ldr	r2, [sp, #104]
 4122 05b4 CDE90001 		strd	r0, [sp]
 4123 05b8 5149     		ldr	r1, .L454+8
 4124 05ba 2046     		mov	r0, r4
 4125 05bc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 4126 05c0 4D4A     		ldr	r2, .L454
 4127 05c2 2368     		ldr	r3, [r4]
 4128 05c4 5068     		ldr	r0, [r2, #4]
 4129 05c6 4D4A     		ldr	r2, .L454+4
 4130 05c8 8021     		movs	r1, #128
 4131 05ca FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4132 05ce 0123     		movs	r3, #1
 4133 05d0 8BF85831 		strb	r3, [fp, #344]
 4134 05d4 2DE5     		b	.L437
 4135              	.L445:
 4136 05d6 5B46     		mov	r3, fp
 4137 05d8 069A     		ldr	r2, [sp, #24]
 4138 05da 1699     		ldr	r1, [sp, #88]
 4139 05dc 4948     		ldr	r0, .L454+12
 4140 05de FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 4141 05e2 454B     		ldr	r3, .L454
 4142 05e4 484A     		ldr	r2, .L454+16
 4143 05e6 D3F80831 		ldr	r3, [r3, #264]
 4144 05ea BA92     		str	r2, [sp, #744]
 4145 05ec 03F01003 		and	r3, r3, #16
 4146 05f0 1793     		str	r3, [sp, #92]
 4147 05f2 BBF1000F 		cmp	fp, #0
 4148 05f6 7FF458AE 		bne	.L394
 4149 05fa E9E6     		b	.L373
 4150              	.L448:
 4151 05fc 069A     		ldr	r2, [sp, #24]
 4152 05fe 4348     		ldr	r0, .L454+20
 4153 0600 7AA9     		add	r1, sp, #488
 4154 0602 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 4155 0606 8AE7     		b	.L390
 4156              	.L369:
 4157 0608 FFF7FEFF 		bl	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 4158 060c 3146     		mov	r1, r6
 4159 060e A7EC020B 		vstmia.64	r7!, {d0}
 4160 0612 14E6     		b	.L367
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 74


 4161              	.L446:
 4162 0614 0BF10103 		add	r3, fp, #1
 4163 0618 5A46     		mov	r2, fp
 4164 061a BAA9     		add	r1, sp, #744
 4165 061c 3C48     		ldr	r0, .L454+24
 4166 061e FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 4167 0622 5A46     		mov	r2, fp
 4168 0624 28A9     		add	r1, sp, #160
 4169 0626 3B48     		ldr	r0, .L454+28
 4170 0628 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 4171 062c 3A48     		ldr	r0, .L454+32
 4172 062e FFF7FEFF 		bl	debugPrintf
 4173 0632 069B     		ldr	r3, [sp, #24]
 4174 0634 7BB3     		cbz	r3, .L382
 4175 0636 CDF810B0 		str	fp, [sp, #16]
 4176 063a DFF8E4A0 		ldr	r10, .L454+40
 4177 063e DDF86C80 		ldr	r8, [sp, #108]
 4178 0642 DDF884B0 		ldr	fp, [sp, #132]
 4179 0646 0DF50D69 		add	r9, sp, #2256
 4180              	.L385:
 4181 064a 58F8040B 		ldr	r0, [r8], #4	@ float
 4182 064e FFF7FEFF 		bl	__aeabi_f2d
 4183 0652 049B     		ldr	r3, [sp, #16]
 4184 0654 0646     		mov	r6, r0
 4185 0656 0F46     		mov	r7, r1
 4186 0658 8BB1     		cbz	r3, .L383
 4187 065a 4D46     		mov	r5, r9
 4188 065c 28AC     		add	r4, sp, #160
 4189              	.L384:
 4190 065e F5E80223 		ldrd	r2, [r5], #8
 4191 0662 F4E80201 		ldrd	r0, [r4], #8
 4192 0666 FFF7FEFF 		bl	__aeabi_dmul
 4193 066a 0246     		mov	r2, r0
 4194 066c 0B46     		mov	r3, r1
 4195 066e 3046     		mov	r0, r6
 4196 0670 3946     		mov	r1, r7
 4197 0672 FFF7FEFF 		bl	__aeabi_dadd
 4198 0676 A345     		cmp	fp, r4
 4199 0678 0646     		mov	r6, r0
 4200 067a 0F46     		mov	r7, r1
 4201 067c EFD1     		bne	.L384
 4202              	.L383:
 4203 067e 3B46     		mov	r3, r7
 4204 0680 3246     		mov	r2, r6
 4205 0682 5046     		mov	r0, r10
 4206 0684 FFF7FEFF 		bl	debugPrintf
 4207 0688 109B     		ldr	r3, [sp, #64]
 4208 068a 4345     		cmp	r3, r8
 4209 068c 09F14809 		add	r9, r9, #72
 4210 0690 DBD1     		bne	.L385
 4211 0692 DDF810B0 		ldr	fp, [sp, #16]
 4212              	.L382:
 4213 0696 2148     		ldr	r0, .L454+36
 4214 0698 FFF7FEFF 		bl	debugPrintf
 4215 069c ACE6     		b	.L381
 4216              	.L438:
 4217 069e 0DF6C802 		addw	r2, sp, #2248
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 75


 4218 06a2 1D9C     		ldr	r4, [sp, #116]
 4219 06a4 8DF8C848 		strb	r4, [sp, #2248]
 4220 06a8 DD23     		movs	r3, #221
 4221 06aa 0DF5B861 		add	r1, sp, #1472
 4222 06ae 1446     		mov	r4, r2
 4223 06b0 5846     		mov	r0, fp
 4224 06b2 1692     		str	r2, [sp, #88]
 4225 06b4 CDF8C025 		str	r2, [sp, #1472]
 4226 06b8 CDF8C435 		str	r3, [sp, #1476]
 4227 06bc FFF7FEFF 		bl	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 4228 06c0 2146     		mov	r1, r4
 4229 06c2 0E48     		ldr	r0, .L454+4
 4230 06c4 FFF7FEFF 		bl	debugPrintf
 4231 06c8 CCE4     		b	.L357
 4232              	.L441:
 4233 06ca FFF7FEFF 		bl	sqrtf
 4234 06ce 94ED009A 		vldr.32	s18, [r4]
 4235 06d2 94ED018A 		vldr.32	s16, [r4, #4]
 4236 06d6 11E5     		b	.L360
 4237              	.L442:
 4238 06d8 FFF7FEFF 		bl	sqrtf
 4239 06dc 94ED009A 		vldr.32	s18, [r4]
 4240 06e0 94ED018A 		vldr.32	s16, [r4, #4]
 4241 06e4 28E5     		b	.L361
 4242              	.L443:
 4243 06e6 FFF7FEFF 		bl	sqrtf
 4244 06ea 43E5     		b	.L362
 4245              	.L447:
 4246 06ec FFF7FEFF 		bl	sqrtf
 4247 06f0 10E7     		b	.L389
 4248              	.L449:
 4249 06f2 FFF7FEFF 		bl	sqrtf
 4250 06f6 50E7     		b	.L393
 4251              	.L455:
 4252              		.align	2
 4253              	.L454:
 4254 06f8 00000000 		.word	reprap
 4255 06fc 54000000 		.word	.LC23
 4256 0700 C8000000 		.word	.LC32
 4257 0704 58000000 		.word	.LC24
 4258 0708 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 4259 070c B0000000 		.word	.LC31
 4260 0710 7C000000 		.word	.LC26
 4261 0714 8C000000 		.word	.LC27
 4262 0718 98000000 		.word	.LC28
 4263 071c AC000000 		.word	.LC30
 4264 0720 A4000000 		.word	.LC29
 4265              		.size	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN21H
 4266              		.global	_ZTV21HangprinterKinematics
 4267              		.weak	_ZTV11FixedMatrixIdLj32ELj9EE
 4268              		.section	.rodata._ZTV11FixedMatrixIdLj32ELj9EE,"aG",%progbits,_ZTV11FixedMatrixIdLj32ELj9EE,comdat
 4269              		.align	2
 4270              		.type	_ZTV11FixedMatrixIdLj32ELj9EE, %object
 4271              		.size	_ZTV11FixedMatrixIdLj32ELj9EE, 32
 4272              	_ZTV11FixedMatrixIdLj32ELj9EE:
 4273 0000 00000000 		.word	0
 4274 0004 00000000 		.word	0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 76


 4275 0008 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 4276 000c 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 4277 0010 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EEclEjj
 4278 0014 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 4279 0018 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED1Ev
 4280 001c 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 4281              		.weak	_ZTV11FixedMatrixIdLj9ELj10EE
 4282              		.section	.rodata._ZTV11FixedMatrixIdLj9ELj10EE,"aG",%progbits,_ZTV11FixedMatrixIdLj9ELj10EE,comdat
 4283              		.align	2
 4284              		.type	_ZTV11FixedMatrixIdLj9ELj10EE, %object
 4285              		.size	_ZTV11FixedMatrixIdLj9ELj10EE, 32
 4286              	_ZTV11FixedMatrixIdLj9ELj10EE:
 4287 0000 00000000 		.word	0
 4288 0004 00000000 		.word	0
 4289 0008 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 4290 000c 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 4291 0010 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 4292 0014 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 4293 0018 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED1Ev
 4294 001c 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 4295              		.section	.rodata
 4296              		.align	2
 4297              		.set	.LANCHOR0,. + 0
 4298              	.LC0:
 4299 0000 33338242 		.word	1115829043
 4300 0004 33338242 		.word	1115829043
 4301 0008 33338242 		.word	1115829043
 4302 000c 33338242 		.word	1115829043
 4303 0010 66664842 		.word	1112041062
 4304              	.LC1:
 4305 0014 02000000 		.word	2
 4306 0018 02000000 		.word	2
 4307 001c 02000000 		.word	2
 4308 0020 01000000 		.word	1
 4309 0024 01000000 		.word	1
 4310              	.LC2:
 4311 0028 01000000 		.word	1
 4312 002c 01000000 		.word	1
 4313 0030 01000000 		.word	1
 4314 0034 01000000 		.word	1
 4315 0038 01000000 		.word	1
 4316              	.LC3:
 4317 003c 14000000 		.word	20
 4318 0040 14000000 		.word	20
 4319 0044 14000000 		.word	20
 4320 0048 14000000 		.word	20
 4321 004c 05000000 		.word	5
 4322              	.LC4:
 4323 0050 FF000000 		.word	255
 4324 0054 FF000000 		.word	255
 4325 0058 FF000000 		.word	255
 4326 005c FF000000 		.word	255
 4327 0060 2C010000 		.word	300
 4328              	.LC5:
 4329 0064 20000000 		.word	32
 4330 0068 20000000 		.word	32
 4331 006c 20000000 		.word	32
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 77


 4332 0070 20000000 		.word	32
 4333 0074 20000000 		.word	32
 4334              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 4335              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 4336              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 4337              	_ZL28cpu_irq_prev_interrupt_state:
 4338 0000 00       		.space	1
 4339              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 4340              		.align	2
 4341              		.type	_ZL32cpu_irq_critical_section_counter, %object
 4342              		.size	_ZL32cpu_irq_critical_section_counter, 4
 4343              	_ZL32cpu_irq_critical_section_counter:
 4344 0000 00000000 		.space	4
 4345              		.section	.rodata._ZL14DefaultAnchorA,"a",%progbits
 4346              		.align	2
 4347              		.set	.LANCHOR1,. + 0
 4348              		.type	_ZL14DefaultAnchorA, %object
 4349              		.size	_ZL14DefaultAnchorA, 12
 4350              	_ZL14DefaultAnchorA:
 4351 0000 00000000 		.word	0
 4352 0004 29A4B3C4 		.word	-994859991
 4353 0008 000058C3 		.word	-1017643008
 4354              		.section	.rodata._ZL14DefaultAnchorB,"a",%progbits
 4355              		.align	2
 4356              		.set	.LANCHOR2,. + 0
 4357              		.type	_ZL14DefaultAnchorB, %object
 4358              		.size	_ZL14DefaultAnchorB, 12
 4359              	_ZL14DefaultAnchorB:
 4360 0000 E1929B44 		.word	1151046369
 4361 0004 D7A33344 		.word	1144234967
 4362 0008 000058C3 		.word	-1017643008
 4363              		.section	.rodata._ZL14DefaultAnchorC,"a",%progbits
 4364              		.align	2
 4365              		.set	.LANCHOR3,. + 0
 4366              		.type	_ZL14DefaultAnchorC, %object
 4367              		.size	_ZL14DefaultAnchorC, 12
 4368              	_ZL14DefaultAnchorC:
 4369 0000 E1929BC4 		.word	-996437279
 4370 0004 D7A33344 		.word	1144234967
 4371 0008 000058C3 		.word	-1017643008
 4372              		.section	.rodata._ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRe
 4373              		.align	2
 4374              	.LC22:
 4375 0000 48616E67 		.ascii	"Hangprinter calibration with %d factors requested b"
 4375      7072696E 
 4375      74657220 
 4375      63616C69 
 4375      62726174 
 4376 0033 7574206F 		.ascii	"ut only 3, 6, and 9 supported\000"
 4376      6E6C7920 
 4376      332C2036 
 4376      2C20616E 
 4376      64203920 
 4377 0051 000000   		.space	3
 4378              	.LC23:
 4379 0054 25730A00 		.ascii	"%s\012\000"
 4380              	.LC24:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 78


 4381 0058 44657269 		.ascii	"Derivative matrix\000"
 4381      76617469 
 4381      7665206D 
 4381      61747269 
 4381      7800
 4382 006a 0000     		.space	2
 4383              	.LC25:
 4384 006c 4E6F726D 		.ascii	"Normal matrix\000"
 4384      616C206D 
 4384      61747269 
 4384      7800
 4385 007a 0000     		.space	2
 4386              	.LC26:
 4387 007c 536F6C76 		.ascii	"Solved matrix\000"
 4387      6564206D 
 4387      61747269 
 4387      7800
 4388 008a 0000     		.space	2
 4389              	.LC27:
 4390 008c 536F6C75 		.ascii	"Solution\000"
 4390      74696F6E 
 4390      00
 4391 0095 000000   		.space	3
 4392              	.LC28:
 4393 0098 52657369 		.ascii	"Residuals:\000"
 4393      6475616C 
 4393      733A00
 4394 00a3 00       		.space	1
 4395              	.LC29:
 4396 00a4 2025372E 		.ascii	" %7.4f\000"
 4396      346600
 4397 00ab 00       		.space	1
 4398              	.LC30:
 4399 00ac 0A00     		.ascii	"\012\000"
 4400 00ae 0000     		.space	2
 4401              	.LC31:
 4402 00b0 45787065 		.ascii	"Expected probe error\000"
 4402      63746564 
 4402      2070726F 
 4402      62652065 
 4402      72726F72 
 4403 00c5 000000   		.space	3
 4404              	.LC32:
 4405 00c8 43616C69 		.ascii	"Calibrated %d factors using %d points, deviation be"
 4405      62726174 
 4405      65642025 
 4405      64206661 
 4405      63746F72 
 4406 00fb 666F7265 		.ascii	"fore %.3f after %.3f\000"
 4406      20252E33 
 4406      66206166 
 4406      74657220 
 4406      252E3366 
 4407              		.section	.rodata._ZN21HangprinterKinematics6RecalcEv.str1.4,"aMS",%progbits,1
 4408              		.align	2
 4409              	.LC9:
 4410 0000 50696574 		.ascii	"Pietari Line Lengths origins: %f\012\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 79


 4410      61726920 
 4410      4C696E65 
 4410      204C656E 
 4410      67746873 
 4411 0022 0000     		.space	2
 4412              	.LC10:
 4413 0024 50696574 		.ascii	"Pietari k2 value %f\012\000"
 4413      61726920 
 4413      6B322076 
 4413      616C7565 
 4413      2025660A 
 4414 0039 000000   		.space	3
 4415              	.LC11:
 4416 003c 50696574 		.ascii	"Pietari k0 value %f\012\000"
 4416      61726920 
 4416      6B302076 
 4416      616C7565 
 4416      2025660A 
 4417 0051 000000   		.space	3
 4418              	.LC12:
 4419 0054 52656361 		.ascii	"Recalced params\012Da2: %.2f, Db2: %.2f, Dc2: %.2f,"
 4419      6C636564 
 4419      20706172 
 4419      616D730A 
 4419      4461323A 
 4420 0084 20586162 		.ascii	" Xab: %.2f, Xbc: %.2f, Xca: %.2f, Yab: %.2f, Ybc: %"
 4420      3A20252E 
 4420      32662C20 
 4420      5862633A 
 4420      20252E32 
 4421 00b7 2E32662C 		.ascii	".2f, Yca: %.2f, Zab: %.2f, Zbc: %.2f, Zca: %.2f, P:"
 4421      20596361 
 4421      3A20252E 
 4421      32662C20 
 4421      5A61623A 
 4422 00ea 20252E32 		.ascii	" %.2f, P2: %.2f, Q: %.2f, R: %.2f, U: %.2f, A: %.2f"
 4422      662C2050 
 4422      323A2025 
 4422      2E32662C 
 4422      20513A20 
 4423 011d 0A00     		.ascii	"\012\000"
 4424              		.section	.rodata._ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%
 4425              		.align	2
 4426              	.LC13:
 4427 0000 4B696E65 		.ascii	"Kinematics is Hangprinter\012Anchor positions:\012%"
 4427      6D617469 
 4427      63732069 
 4427      73204861 
 4427      6E677072 
 4428 002d 2E32662C 		.ascii	".2f, %.2f, %.2f\012%.2f, %.2f, %.2f\012%.2f, %.2f, "
 4428      20252E32 
 4428      662C2025 
 4428      2E32660A 
 4428      252E3266 
 4429 005a 252E3266 		.ascii	"%.2f\012%.2f\012Print radius:\012%.1f\012Segments/s"
 4429      0A252E32 
 4429      660A5072 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 80


 4429      696E7420 
 4429      72616469 
 4430 0081 3A0A2564 		.ascii	":\012%d\012Min segment length:\012%.2f\012Spool bui"
 4430      0A4D696E 
 4430      20736567 
 4430      6D656E74 
 4430      206C656E 
 4431 00a8 6C647570 		.ascii	"ldup factor:\012%.4f\012Spool radii:\012%.2f, %.2f,"
 4431      20666163 
 4431      746F723A 
 4431      0A252E34 
 4431      660A5370 
 4432 00d2 20252E32 		.ascii	" %.2f, %.2f\012Mechanical Advantage:\012%d, %d, %d,"
 4432      662C2025 
 4432      2E32660A 
 4432      4D656368 
 4432      616E6963 
 4433 00ff 2025640A 		.ascii	" %d\012Lines per spool:\012%d, %d, %d, %d\012Motor "
 4433      4C696E65 
 4433      73207065 
 4433      72207370 
 4433      6F6F6C3A 
 4434 0129 67656172 		.ascii	"gear teeth\012%d, %d, %d, %d\012Spool gear teeth\012"
 4434      20746565 
 4434      74680A25 
 4434      642C2025 
 4434      642C2025 
 4435 0154 25642C20 		.ascii	"%d, %d, %d, %d\012Full steps per revolution\012%d, "
 4435      25642C20 
 4435      25642C20 
 4435      25640A46 
 4435      756C6C20 
 4436 0181 25642C20 		.ascii	"%d, %d, %d\000"
 4436      25642C20 
 4436      256400
 4437              	.LC14:
 4438 018c 513A4275 		.ascii	"Q:Buildup fac %.4f\012R:Spool r %.2f, %.2f, %.2f, %"
 4438      696C6475 
 4438      70206661 
 4438      6320252E 
 4438      34660A52 
 4439 01bc 2E32660A 		.ascii	".2f\012U:Mech Adv %d, %d, %d, %d\012O:Lines/spool %"
 4439      553A4D65 
 4439      63682041 
 4439      64762025 
 4439      642C2025 
 4440 01e9 642C2025 		.ascii	"d, %d, %d, %d\012L:Motor gear teeth %d, %d, %d, %d\012"
 4440      642C2025 
 4440      642C2025 
 4440      640A4C3A 
 4440      4D6F746F 
 4441 0219 483A5370 		.ascii	"H:Spool gear teeth %d, %d, %d, %d\012J:Full steps/r"
 4441      6F6F6C20 
 4441      67656172 
 4441      20746565 
 4441      74682025 
 4442 0249 65762025 		.ascii	"ev %d, %d, %d, %d\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 81


 4442      642C2025 
 4442      642C2025 
 4442      642C2025 
 4442      6400
 4443              		.section	.rodata._ZNK21HangprinterKinematics15PrintParametersERK9StringRef.str1.4,"aMS",%progbits,
 4444              		.align	2
 4445              	.LC19:
 4446 0000 416E6368 		.ascii	"Anchor coordinates (%.2f,%.2f,%.2f) (%.2f,%.2f,%.2f"
 4446      6F722063 
 4446      6F6F7264 
 4446      696E6174 
 4446      65732028 
 4447 0033 29202825 		.ascii	") (%.2f,%.2f,%.2f)\012\000"
 4447      2E32662C 
 4447      252E3266 
 4447      2C252E32 
 4447      66290A00 
 4448              		.section	.rodata._ZNK21HangprinterKinematics16InverseTransformEfffPf.str1.4,"aMS",%progbits,1
 4449              		.align	2
 4450              	.LC15:
 4451 0000 496E7665 		.ascii	"Inverse Transform Pietari: S: %.2f, T: %.2f, halfB:"
 4451      72736520 
 4451      5472616E 
 4451      73666F72 
 4451      6D205069 
 4452 0033 20252E32 		.ascii	" %.2f, C: %.2f\012\000"
 4452      662C2043 
 4452      3A20252E 
 4452      32660A00 
 4453 0043 00       		.space	1
 4454              	.LC16:
 4455 0044 6D616368 		.ascii	"machinepos before Pietari %f\000"
 4455      696E6570 
 4455      6F732062 
 4455      65666F72 
 4455      65205069 
 4456 0061 000000   		.space	3
 4457              	.LC17:
 4458 0064 6D616368 		.ascii	"machinepos after Pietari %f\000"
 4458      696E6570 
 4458      6F732061 
 4458      66746572 
 4458      20506965 
 4459              	.LC18:
 4460 0080 4D6F746F 		.ascii	"Motor %.2f,%.2f,%.2f to Cartesian %.2f,%.2f,%.2f\012"
 4460      7220252E 
 4460      32662C25 
 4460      2E32662C 
 4460      252E3266 
 4461 00b1 00       		.ascii	"\000"
 4462              		.section	.rodata._ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef.str1.4,"aMS",%prog
 4463              		.align	2
 4464              	.LC8:
 4465 0000 686F6D65 		.ascii	"homeall.g\000"
 4465      616C6C2E 
 4465      6700
 4466              		.section	.rodata._ZNK21HangprinterKinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 82


 4467              		.align	2
 4468              	.LC6:
 4469 0000 41424344 		.ascii	"ABCD\000"
 4469      00
 4470              		.section	.rodata._ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore.str1.4,"aMS",
 4471              		.align	2
 4472              	.LC20:
 4473 0000 3B204861 		.ascii	"; Hangprinter parameters\012\000"
 4473      6E677072 
 4473      696E7465 
 4473      72207061 
 4473      72616D65 
 4474 001a 0000     		.space	2
 4475              	.LC21:
 4476 001c 50696574 		.ascii	"Pietari M669 K6 A%.3f:%.3f:%.3f B%.3f:%.3f:%.3f C%."
 4476      61726920 
 4476      4D363639 
 4476      204B3620 
 4476      41252E33 
 4477 004f 33663A25 		.ascii	"3f:%.3f:%.3f D%.3f P%.1f Q%.6f R%.3f:%.3f:%.3f:%.3f"
 4477      2E33663A 
 4477      252E3366 
 4477      2044252E 
 4477      33662050 
 4478 0082 0A00     		.ascii	"\012\000"
 4479              		.section	.rodata._ZNK21HangprinterKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 4480              		.align	2
 4481              	.LC7:
 4482 0000 48616E67 		.ascii	"Hangprinter\000"
 4482      7072696E 
 4482      74657200 
 4483              		.section	.rodata._ZTV21HangprinterKinematics,"a",%progbits
 4484              		.align	2
 4485              		.set	.LANCHOR4,. + 0
 4486              		.type	_ZTV21HangprinterKinematics, %object
 4487              		.size	_ZTV21HangprinterKinematics, 128
 4488              	_ZTV21HangprinterKinematics:
 4489 0000 00000000 		.word	0
 4490 0004 00000000 		.word	0
 4491 0008 00000000 		.word	_ZNK21HangprinterKinematics7GetNameEb
 4492 000c 00000000 		.word	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 4493 0010 00000000 		.word	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 4494 0014 00000000 		.word	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf
 4495 0018 00000000 		.word	_ZNK21HangprinterKinematics23SupportsAutoCalibrationEv
 4496 001c 00000000 		.word	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 4497 0020 00000000 		.word	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv
 4498 0024 00000000 		.word	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore
 4499 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 4500 002c 00000000 		.word	_ZNK21HangprinterKinematics11IsReachableEffb
 4501 0030 00000000 		.word	_ZNK21HangprinterKinematics13LimitPositionEPfjmb
 4502 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 4503 0038 00000000 		.word	_ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf
 4504 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 4505 0040 00000000 		.word	_ZNK21HangprinterKinematics16NumHomingButtonsEj
 4506 0044 00000000 		.word	_ZNK21HangprinterKinematics17HomingButtonNamesEv
 4507 0048 00000000 		.word	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 4508 004c 00000000 		.word	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc0whnMW.s 			page 83


 4509 0050 00000000 		.word	_ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj
 4510 0054 00000000 		.word	_ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 4511 0058 00000000 		.word	_ZNK21HangprinterKinematics13GetHomingModeEv
 4512 005c 00000000 		.word	_ZNK21HangprinterKinematics16AxesAssumedHomedEm
 4513 0060 00000000 		.word	_ZNK21HangprinterKinematics15MustBeHomedAxesEmb
 4514 0064 00000000 		.word	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore
 4515 0068 00000000 		.word	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf
 4516 006c 00000000 		.word	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj
 4517 0070 00000000 		.word	_ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj
 4518 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 4519 0078 00000000 		.word	_ZN21HangprinterKinematicsD1Ev
 4520 007c 00000000 		.word	_ZN21HangprinterKinematicsD0Ev
 4521              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
