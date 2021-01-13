ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 1


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 2


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 3


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 4


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 5


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 6


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 7


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 8


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 9


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 10


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 11


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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 12


 628 0034 744B     		ldr	r3, .L76
 629 0036 DFF8D8B1 		ldr	fp, .L76+8
 630 003a 2DED068B 		vpush.64	{d8, d9, d10}
 631 003e D0ED058A 		vldr.32	s17, [r0, #20]
 632 0042 9FED72AA 		vldr.32	s20, .L76+4
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 13


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
 704 0134 3648     		ldr	r0, .L76+8
 705 0136 3749     		ldr	r1, .L76+12
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
 721 0166 2C4F     		ldr	r7, .L76+16
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 14


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
 755 01ca DFED145A 		vldr.32	s11, .L76+20
 756 01ce 9FED146A 		vldr.32	s12, .L76+24
 757 01d2 97ED030A 		vldr.32	s0, [r7, #12]
 758 01d6 1F9B     		ldr	r3, [sp, #124]
 759 01d8 F0EE086A 		vmov.f32	s13, #3.0e+0
 760 01dc 67EEA66A 		vmul.f32	s13, s15, s13
 761 01e0 9860     		str	r0, [r3, #8]
 762 01e2 86EEA57A 		vdiv.f32	s14, s13, s11
 763 01e6 A7EE867A 		vfma.f32	s14, s15, s12
 764 01ea 77EEC77A 		vsub.f32	s15, s15, s14
 765 01ee 27EE800A 		vmul.f32	s0, s15, s0
 766 01f2 FFF7FEFF 		bl	lrintf
 767 01f6 1F9A     		ldr	r2, [sp, #124]
 768 01f8 0123     		movs	r3, #1
 769 01fa D060     		str	r0, [r2, #12]
 770 01fc 1846     		mov	r0, r3
 771 01fe 0FB0     		add	sp, sp, #60
 772              		@ sp needed
 773 0200 BDEC068B 		vldm	sp!, {d8-d10}
 774 0204 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 775              	.L77:
 776              		.align	2
 777              	.L76:
 778 0208 00000000 		.word	.LANCHOR0
 779 020c 0020B444 		.word	1152655360
 780 0210 00000000 		.word	.LC14
 781 0214 00000000 		.word	.LC9
 782 0218 20000000 		.word	.LC15
 783 021c E69E9A46 		.word	1184538342
 784 0220 0AD7233B 		.word	992204554
 785              		.size	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK21HangprinterKinematic
 786              		.section	.text._ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj,"ax",%progbits
 787              		.align	1
 788              		.p2align 2,,3
 789              		.global	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj
 790              		.syntax unified
 791              		.thumb
 792              		.thumb_func
 793              		.fpu fpv4-sp-d16
 794              		.type	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj, %function
 795              	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj:
 796              		@ args = 0, pretend = 0, frame = 0
 797              		@ frame_needed = 0, uses_anonymous_args = 0
 798 0000 10B5     		push	{r4, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 15


 799 0002 00EB8304 		add	r4, r0, r3, lsl #2
 800 0006 D4ED247A 		vldr.32	s15, [r4, #144]	@ int
 801 000a 9FED0F7A 		vldr.32	s14, .L80
 802 000e F8EE677A 		vcvt.f32.u32	s15, s15
 803 0012 27EE800A 		vmul.f32	s0, s15, s0
 804 0016 80EE070A 		vdiv.f32	s0, s0, s14
 805 001a FFF7FEFF 		bl	roundf
 806 001e BDEEC07A 		vcvt.s32.f32	s14, s0
 807 0022 D4ED285A 		vldr.32	s11, [r4, #160]
 808 0026 94ED106A 		vldr.32	s12, [r4, #64]
 809 002a 94ED2C0A 		vldr.32	s0, [r4, #176]
 810 002e D4ED306A 		vldr.32	s13, [r4, #192]
 811 0032 B8EEC77A 		vcvt.f32.s32	s14, s14
 812 0036 C7EE257A 		vdiv.f32	s15, s14, s11
 813 003a 77EE867A 		vadd.f32	s15, s15, s12
 814 003e 97EEA70A 		vfnms.f32	s0, s15, s15
 815 0042 80EE260A 		vdiv.f32	s0, s0, s13
 816 0046 10BD     		pop	{r4, pc}
 817              	.L81:
 818              		.align	2
 819              	.L80:
 820 0048 0000B443 		.word	1135869952
 821              		.size	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj, .-_ZN21HangprinterKinematics22Mot
 822              		.section	.text._ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef,"ax",%progbits
 823              		.align	1
 824              		.p2align 2,,3
 825              		.global	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef
 826              		.syntax unified
 827              		.thumb
 828              		.thumb_func
 829              		.fpu fpv4-sp-d16
 830              		.type	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef, %function
 831              	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef:
 832              		@ args = 4, pretend = 0, frame = 0
 833              		@ frame_needed = 0, uses_anonymous_args = 0
 834 0000 08B5     		push	{r3, lr}
 835 0002 0349     		ldr	r1, .L84
 836 0004 0298     		ldr	r0, [sp, #8]
 837 0006 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 838 000a 0020     		movs	r0, #0
 839 000c 08BD     		pop	{r3, pc}
 840              	.L85:
 841 000e 00BF     		.align	2
 842              	.L84:
 843 0010 00000000 		.word	.LC16
 844              		.size	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef, .-_ZNK21HangprinterKinematic
 845              		.section	.text._ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 846              		.align	1
 847              		.p2align 2,,3
 848              		.global	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf
 849              		.syntax unified
 850              		.thumb
 851              		.thumb_func
 852              		.fpu fpv4-sp-d16
 853              		.type	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 854              	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 855              		@ args = 0, pretend = 0, frame = 8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 16


 856              		@ frame_needed = 0, uses_anonymous_args = 0
 857 0000 92ED010A 		vldr.32	s0, [r2, #4]
 858 0004 D2ED007A 		vldr.32	s15, [r2]
 859 0008 00B5     		push	{lr}
 860 000a 20EE000A 		vmul.f32	s0, s0, s0
 861 000e 2DED028B 		vpush.64	{d8}
 862 0012 A7EEA70A 		vfma.f32	s0, s15, s15
 863 0016 83B0     		sub	sp, sp, #12
 864 0018 B5EE400A 		vcmp.f32	s0, #0
 865 001c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 866 0020 B1EEC08A 		vsqrt.f32	s16, s0
 867 0024 39D4     		bmi	.L95
 868              	.L87:
 869 0026 DFED1F7A 		vldr.32	s15, .L96
 870 002a B4EEE78A 		vcmpe.f32	s16, s15
 871 002e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 872 0032 2DDD     		ble	.L93
 873 0034 1C4B     		ldr	r3, .L96+4
 874 0036 5B68     		ldr	r3, [r3, #4]	@ unaligned
 875 0038 93ED5F0A 		vldr.32	s0, [r3, #380]
 876 003c D3ED607A 		vldr.32	s15, [r3, #384]
 877 0040 B4EE400A 		vcmp.f32	s0, s0
 878 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 879 0048 06D6     		bvs	.L90
 880 004a B4EEE70A 		vcmpe.f32	s0, s15
 881 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 882 0052 58BF     		it	pl
 883 0054 B0EE670A 		vmovpl.f32	s0, s15
 884              	.L90:
 885 0058 D3ED6B0A 		vldr.32	s1, [r3, #428]
 886 005c D3ED6C7A 		vldr.32	s15, [r3, #432]
 887 0060 F4EE600A 		vcmp.f32	s1, s1
 888 0064 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 889 0068 06D6     		bvs	.L91
 890 006a F4EEE70A 		vcmpe.f32	s1, s15
 891 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 892 0072 58BF     		it	pl
 893 0074 F0EE670A 		vmovpl.f32	s1, s15
 894              	.L91:
 895 0078 C0EE880A 		vdiv.f32	s1, s1, s16
 896 007c 0846     		mov	r0, r1
 897 007e 80EE080A 		vdiv.f32	s0, s0, s16
 898 0082 03B0     		add	sp, sp, #12
 899              		@ sp needed
 900 0084 BDEC028B 		vldm	sp!, {d8}
 901 0088 5DF804EB 		ldr	lr, [sp], #4
 902 008c FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 903              	.L93:
 904 0090 03B0     		add	sp, sp, #12
 905              		@ sp needed
 906 0092 BDEC028B 		vldm	sp!, {d8}
 907 0096 5DF804FB 		ldr	pc, [sp], #4
 908              	.L95:
 909 009a 0191     		str	r1, [sp, #4]
 910 009c FFF7FEFF 		bl	sqrtf
 911 00a0 0199     		ldr	r1, [sp, #4]
 912 00a2 C0E7     		b	.L87
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 17


 913              	.L97:
 914              		.align	2
 915              	.L96:
 916 00a4 0AD7233C 		.word	1008981770
 917 00a8 00000000 		.word	reprap
 918              		.size	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK21HangprinterKinemati
 919              		.section	.text._ZN21HangprinterKinematicsD0Ev,"axG",%progbits,_ZN21HangprinterKinematicsD5Ev,comda
 920              		.align	1
 921              		.p2align 2,,3
 922              		.weak	_ZN21HangprinterKinematicsD0Ev
 923              		.syntax unified
 924              		.thumb
 925              		.thumb_func
 926              		.fpu fpv4-sp-d16
 927              		.type	_ZN21HangprinterKinematicsD0Ev, %function
 928              	_ZN21HangprinterKinematicsD0Ev:
 929              		@ args = 0, pretend = 0, frame = 0
 930              		@ frame_needed = 0, uses_anonymous_args = 0
 931 0000 10B5     		push	{r4, lr}
 932 0002 4FF49871 		mov	r1, #304
 933 0006 0446     		mov	r4, r0
 934 0008 FFF7FEFF 		bl	_ZdlPvj
 935 000c 2046     		mov	r0, r4
 936 000e 10BD     		pop	{r4, pc}
 937              		.size	_ZN21HangprinterKinematicsD0Ev, .-_ZN21HangprinterKinematicsD0Ev
 938              		.section	.text._ZN11FixedMatrixIdLj32ELj3EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EED5Ev,c
 939              		.align	1
 940              		.p2align 2,,3
 941              		.weak	_ZN11FixedMatrixIdLj32ELj3EED0Ev
 942              		.syntax unified
 943              		.thumb
 944              		.thumb_func
 945              		.fpu fpv4-sp-d16
 946              		.type	_ZN11FixedMatrixIdLj32ELj3EED0Ev, %function
 947              	_ZN11FixedMatrixIdLj32ELj3EED0Ev:
 948              		@ args = 0, pretend = 0, frame = 0
 949              		@ frame_needed = 0, uses_anonymous_args = 0
 950 0000 10B5     		push	{r4, lr}
 951 0002 4FF44271 		mov	r1, #776
 952 0006 0446     		mov	r4, r0
 953 0008 FFF7FEFF 		bl	_ZdlPvj
 954 000c 2046     		mov	r0, r4
 955 000e 10BD     		pop	{r4, pc}
 956              		.size	_ZN11FixedMatrixIdLj32ELj3EED0Ev, .-_ZN11FixedMatrixIdLj32ELj3EED0Ev
 957              		.section	.text._ZN11FixedMatrixIdLj32ELj9EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EED5Ev,c
 958              		.align	1
 959              		.p2align 2,,3
 960              		.weak	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 961              		.syntax unified
 962              		.thumb
 963              		.thumb_func
 964              		.fpu fpv4-sp-d16
 965              		.type	_ZN11FixedMatrixIdLj32ELj9EED0Ev, %function
 966              	_ZN11FixedMatrixIdLj32ELj9EED0Ev:
 967              		@ args = 0, pretend = 0, frame = 0
 968              		@ frame_needed = 0, uses_anonymous_args = 0
 969 0000 10B5     		push	{r4, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 18


 970 0002 40F60811 		movw	r1, #2312
 971 0006 0446     		mov	r4, r0
 972 0008 FFF7FEFF 		bl	_ZdlPvj
 973 000c 2046     		mov	r0, r4
 974 000e 10BD     		pop	{r4, pc}
 975              		.size	_ZN11FixedMatrixIdLj32ELj9EED0Ev, .-_ZN11FixedMatrixIdLj32ELj9EED0Ev
 976              		.section	.text._ZN11FixedMatrixIdLj9ELj10EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EED5Ev,c
 977              		.align	1
 978              		.p2align 2,,3
 979              		.weak	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 980              		.syntax unified
 981              		.thumb
 982              		.thumb_func
 983              		.fpu fpv4-sp-d16
 984              		.type	_ZN11FixedMatrixIdLj9ELj10EED0Ev, %function
 985              	_ZN11FixedMatrixIdLj9ELj10EED0Ev:
 986              		@ args = 0, pretend = 0, frame = 0
 987              		@ frame_needed = 0, uses_anonymous_args = 0
 988 0000 10B5     		push	{r4, lr}
 989 0002 4FF43671 		mov	r1, #728
 990 0006 0446     		mov	r4, r0
 991 0008 FFF7FEFF 		bl	_ZdlPvj
 992 000c 2046     		mov	r0, r4
 993 000e 10BD     		pop	{r4, pc}
 994              		.size	_ZN11FixedMatrixIdLj9ELj10EED0Ev, .-_ZN11FixedMatrixIdLj9ELj10EED0Ev
 995              		.section	.text._ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore,"ax",%progbits
 996              		.align	1
 997              		.p2align 2,,3
 998              		.global	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore
 999              		.syntax unified
 1000              		.thumb
 1001              		.thumb_func
 1002              		.fpu fpv4-sp-d16
 1003              		.type	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore, %function
 1004              	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore:
 1005              		@ args = 0, pretend = 0, frame = 0
 1006              		@ frame_needed = 0, uses_anonymous_args = 0
 1007              		@ link register save eliminated.
 1008 0000 90F82C21 		ldrb	r2, [r0, #300]	@ zero_extendqisi2
 1009 0004 0AB9     		cbnz	r2, .L108
 1010 0006 0120     		movs	r0, #1
 1011 0008 7047     		bx	lr
 1012              	.L108:
 1013 000a 0368     		ldr	r3, [r0]
 1014 000c DB69     		ldr	r3, [r3, #28]
 1015 000e 1847     		bx	r3
 1016              		.size	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore, .-_ZNK21HangprinterKinematics1
 1017              		.section	.text._ZNK21HangprinterKinematics13LimitPositionEPfjmb,"ax",%progbits
 1018              		.align	1
 1019              		.p2align 2,,3
 1020              		.global	_ZNK21HangprinterKinematics13LimitPositionEPfjmb
 1021              		.syntax unified
 1022              		.thumb
 1023              		.thumb_func
 1024              		.fpu fpv4-sp-d16
 1025              		.type	_ZNK21HangprinterKinematics13LimitPositionEPfjmb, %function
 1026              	_ZNK21HangprinterKinematics13LimitPositionEPfjmb:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 19


 1027              		@ args = 4, pretend = 0, frame = 8
 1028              		@ frame_needed = 0, uses_anonymous_args = 0
 1029 0000 03F00703 		and	r3, r3, #7
 1030 0004 072B     		cmp	r3, #7
 1031 0006 01D0     		beq	.L129
 1032 0008 0020     		movs	r0, #0
 1033 000a 7047     		bx	lr
 1034              	.L129:
 1035 000c D1ED016A 		vldr.32	s13, [r1, #4]
 1036 0010 91ED007A 		vldr.32	s14, [r1]
 1037 0014 90ED386A 		vldr.32	s12, [r0, #224]
 1038 0018 00B5     		push	{lr}
 1039 001a 66EEA67A 		vmul.f32	s15, s13, s13
 1040 001e 2DED028B 		vpush.64	{d8}
 1041 0022 E7EE077A 		vfma.f32	s15, s14, s14
 1042 0026 83B0     		sub	sp, sp, #12
 1043 0028 F4EEC67A 		vcmpe.f32	s15, s12
 1044 002c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1045 0030 1EDC     		bgt	.L130
 1046 0032 0020     		movs	r0, #0
 1047              	.L111:
 1048 0034 1C4B     		ldr	r3, .L132
 1049 0036 D1ED027A 		vldr.32	s15, [r1, #8]
 1050 003a 5B68     		ldr	r3, [r3, #4]
 1051 003c 03F5F962 		add	r2, r3, #1992
 1052 0040 92ED007A 		vldr.32	s14, [r2]
 1053 0044 F4EEC77A 		vcmpe.f32	s15, s14
 1054 0048 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1055 004c 08D4     		bmi	.L128
 1056 004e 03F2A473 		addw	r3, r3, #1956
 1057 0052 93ED007A 		vldr.32	s14, [r3]
 1058 0056 F4EEC77A 		vcmpe.f32	s15, s14
 1059 005a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1060 005e 02DD     		ble	.L110
 1061              	.L128:
 1062 0060 81ED027A 		vstr.32	s14, [r1, #8]
 1063 0064 0120     		movs	r0, #1
 1064              	.L110:
 1065 0066 03B0     		add	sp, sp, #12
 1066              		@ sp needed
 1067 0068 BDEC028B 		vldm	sp!, {d8}
 1068 006c 5DF804FB 		ldr	pc, [sp], #4
 1069              	.L130:
 1070 0070 86EE270A 		vdiv.f32	s0, s12, s15
 1071 0074 B5EE400A 		vcmp.f32	s0, #0
 1072 0078 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1073 007c B1EEC08A 		vsqrt.f32	s16, s0
 1074 0080 09D4     		bmi	.L131
 1075              	.L113:
 1076 0082 0120     		movs	r0, #1
 1077 0084 28EE077A 		vmul.f32	s14, s16, s14
 1078 0088 68EE266A 		vmul.f32	s13, s16, s13
 1079 008c 81ED007A 		vstr.32	s14, [r1]
 1080 0090 C1ED016A 		vstr.32	s13, [r1, #4]
 1081 0094 CEE7     		b	.L111
 1082              	.L131:
 1083 0096 0191     		str	r1, [sp, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 20


 1084 0098 FFF7FEFF 		bl	sqrtf
 1085 009c 0199     		ldr	r1, [sp, #4]
 1086 009e 91ED007A 		vldr.32	s14, [r1]
 1087 00a2 D1ED016A 		vldr.32	s13, [r1, #4]
 1088 00a6 ECE7     		b	.L113
 1089              	.L133:
 1090              		.align	2
 1091              	.L132:
 1092 00a8 00000000 		.word	reprap
 1093              		.size	_ZNK21HangprinterKinematics13LimitPositionEPfjmb, .-_ZNK21HangprinterKinematics13LimitPositi
 1094              		.section	.text._Z14elongationCalcf,"ax",%progbits
 1095              		.align	1
 1096              		.p2align 2,,3
 1097              		.global	_Z14elongationCalcf
 1098              		.syntax unified
 1099              		.thumb
 1100              		.thumb_func
 1101              		.fpu fpv4-sp-d16
 1102              		.type	_Z14elongationCalcf, %function
 1103              	_Z14elongationCalcf:
 1104              		@ args = 0, pretend = 0, frame = 0
 1105              		@ frame_needed = 0, uses_anonymous_args = 0
 1106              		@ link register save eliminated.
 1107 0000 F0EE087A 		vmov.f32	s15, #3.0e+0
 1108 0004 60EE277A 		vmul.f32	s15, s0, s15
 1109 0008 9FED056A 		vldr.32	s12, .L135
 1110 000c DFED056A 		vldr.32	s13, .L135+4
 1111 0010 87EE867A 		vdiv.f32	s14, s15, s12
 1112 0014 A0EE267A 		vfma.f32	s14, s0, s13
 1113 0018 B0EE470A 		vmov.f32	s0, s14
 1114 001c 7047     		bx	lr
 1115              	.L136:
 1116 001e 00BF     		.align	2
 1117              	.L135:
 1118 0020 E69E9A46 		.word	1184538342
 1119 0024 0AD7233B 		.word	992204554
 1120              		.size	_Z14elongationCalcf, .-_Z14elongationCalcf
 1121              		.section	.text._Z17elongationCalcABCSt6vectorIfSaIfEEf,"ax",%progbits
 1122              		.align	1
 1123              		.p2align 2,,3
 1124              		.global	_Z17elongationCalcABCSt6vectorIfSaIfEEf
 1125              		.syntax unified
 1126              		.thumb
 1127              		.thumb_func
 1128              		.fpu fpv4-sp-d16
 1129              		.type	_Z17elongationCalcABCSt6vectorIfSaIfEEf, %function
 1130              	_Z17elongationCalcABCSt6vectorIfSaIfEEf:
 1131              		@ args = 0, pretend = 0, frame = 0
 1132              		@ frame_needed = 0, uses_anonymous_args = 0
 1133              		@ link register save eliminated.
 1134 0000 DFED097A 		vldr.32	s15, .L138
 1135 0004 9FED097A 		vldr.32	s14, .L138+4
 1136 0008 9FED096A 		vldr.32	s12, .L138+8
 1137 000c DFED096A 		vldr.32	s13, .L138+12
 1138 0010 F0EE005A 		vmov.f32	s11, #2.0e+0
 1139 0014 E0EE257A 		vfma.f32	s15, s0, s11
 1140 0018 27EE877A 		vmul.f32	s14, s15, s14
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 21


 1141 001c 87EE060A 		vdiv.f32	s0, s14, s12
 1142 0020 A7EEA60A 		vfma.f32	s0, s15, s13
 1143 0024 7047     		bx	lr
 1144              	.L139:
 1145 0026 00BF     		.align	2
 1146              	.L138:
 1147 0028 00004843 		.word	1128792064
 1148 002c 009D2941 		.word	1093246208
 1149 0030 E69E9A46 		.word	1184538342
 1150 0034 0AD7233B 		.word	992204554
 1151              		.size	_Z17elongationCalcABCSt6vectorIfSaIfEEf, .-_Z17elongationCalcABCSt6vectorIfSaIfEEf
 1152              		.section	.text._ZN21HangprinterKinematics6RecalcEv,"ax",%progbits
 1153              		.align	1
 1154              		.p2align 2,,3
 1155              		.global	_ZN21HangprinterKinematics6RecalcEv
 1156              		.syntax unified
 1157              		.thumb
 1158              		.thumb_func
 1159              		.fpu fpv4-sp-d16
 1160              		.type	_ZN21HangprinterKinematics6RecalcEv, %function
 1161              	_ZN21HangprinterKinematics6RecalcEv:
 1162              		@ args = 0, pretend = 0, frame = 8
 1163              		@ frame_needed = 0, uses_anonymous_args = 0
 1164 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1165 0004 D0ED045A 		vldr.32	s11, [r0, #16]
 1166 0008 90ED055A 		vldr.32	s10, [r0, #20]
 1167 000c D0ED0B4A 		vldr.32	s9, [r0, #44]
 1168 0010 90ED066A 		vldr.32	s12, [r0, #24]
 1169 0014 D0ED0C2A 		vldr.32	s5, [r0, #48]
 1170 0018 90ED084A 		vldr.32	s8, [r0, #32]
 1171 001c D0ED0A3A 		vldr.32	s7, [r0, #40]
 1172 0020 90ED093A 		vldr.32	s6, [r0, #36]
 1173 0024 2DED068B 		vpush.64	{d8, d9, d10}
 1174 0028 74EEC51A 		vsub.f32	s3, s9, s10
 1175 002c 90ED078A 		vldr.32	s16, [r0, #28]
 1176 0030 90ED0EAA 		vldr.32	s20, [r0, #56]
 1177 0034 C0ED411A 		vstr.32	s3, [r0, #260]
 1178 0038 24EEE57A 		vnmul.f32	s14, s9, s11
 1179 003c 32EEC62A 		vsub.f32	s4, s5, s12
 1180 0040 62EEC56A 		vnmul.f32	s13, s5, s10
 1181 0044 A8EE217A 		vfma.f32	s14, s16, s3
 1182 0048 A5B0     		sub	sp, sp, #148
 1183 004a 0446     		mov	r4, r0
 1184 004c E4EE026A 		vfma.f32	s13, s8, s4
 1185 0050 A5EE237A 		vfma.f32	s14, s10, s7
 1186 0054 65EEA27A 		vmul.f32	s15, s11, s5
 1187 0058 E6EE246A 		vfma.f32	s13, s12, s9
 1188 005c 73EEE50A 		vsub.f32	s1, s7, s11
 1189 0060 E8EE027A 		vfma.f32	s15, s16, s4
 1190 0064 B1EE431A 		vneg.f32	s2, s6
 1191 0068 A4EE607A 		vfms.f32	s14, s8, s1
 1192 006c E1EE216A 		vfma.f32	s13, s2, s3
 1193 0070 E6EE237A 		vfma.f32	s15, s12, s7
 1194 0074 37EE077A 		vadd.f32	s14, s14, s14
 1195 0078 76EEA66A 		vadd.f32	s13, s13, s13
 1196 007c 27EE079A 		vmul.f32	s18, s14, s14
 1197 0080 E1EE207A 		vfma.f32	s15, s2, s1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 22


 1198 0084 65EEA6AA 		vmul.f32	s21, s11, s13
 1199 0088 25EE050A 		vmul.f32	s0, s10, s10
 1200 008c F0EE498A 		vmov.f32	s17, s18
 1201 0090 64EEA49A 		vmul.f32	s19, s9, s9
 1202 0094 24EE041A 		vmul.f32	s2, s8, s8
 1203 0098 A5EEA50A 		vfma.f32	s0, s11, s11
 1204 009c 6AEE87AA 		vmul.f32	s21, s21, s14
 1205 00a0 E6EEA68A 		vfma.f32	s17, s13, s13
 1206 00a4 F1EE677A 		vneg.f32	s15, s15
 1207 00a8 77EEA77A 		vadd.f32	s15, s15, s15
 1208 00ac E6EE09AA 		vfma.f32	s21, s12, s18
 1209 00b0 E3EEA39A 		vfma.f32	s19, s7, s7
 1210 00b4 A8EE081A 		vfma.f32	s2, s16, s16
 1211 00b8 A6EE060A 		vfma.f32	s0, s12, s12
 1212 00bc 74EE644A 		vsub.f32	s9, s8, s9
 1213 00c0 E7EEA78A 		vfma.f32	s17, s15, s15
 1214 00c4 35EE444A 		vsub.f32	s8, s10, s8
 1215 00c8 25EE275A 		vmul.f32	s10, s10, s15
 1216 00cc A3EE031A 		vfma.f32	s2, s6, s6
 1217 00d0 E2EEA29A 		vfma.f32	s19, s5, s5
 1218 00d4 E7EE05AA 		vfma.f32	s21, s14, s10
 1219 00d8 78EE633A 		vsub.f32	s7, s16, s7
 1220 00dc 75EEC85A 		vsub.f32	s11, s11, s16
 1221 00e0 36EE436A 		vsub.f32	s12, s12, s6
 1222 00e4 2AEE0AAA 		vmul.f32	s20, s20, s20
 1223 00e8 33EE623A 		vsub.f32	s6, s6, s5
 1224 00ec 78EEA88A 		vadd.f32	s17, s17, s17
 1225 00f0 B5EE400A 		vcmp.f32	s0, #0
 1226 00f4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1227 00f8 80ED38AA 		vstr.32	s20, [r0, #224]
 1228 00fc C0ED3B9A 		vstr.32	s19, [r0, #236]
 1229 0100 C0ED3C5A 		vstr.32	s11, [r0, #240]
 1230 0104 C0ED3D3A 		vstr.32	s7, [r0, #244]
 1231 0108 80ED3F4A 		vstr.32	s8, [r0, #252]
 1232 010c C0ED404A 		vstr.32	s9, [r0, #256]
 1233 0110 80ED426A 		vstr.32	s12, [r0, #264]
 1234 0114 80ED433A 		vstr.32	s6, [r0, #268]
 1235 0118 80ED457A 		vstr.32	s14, [r0, #276]
 1236 011c C0ED3E0A 		vstr.32	s1, [r0, #248]
 1237 0120 80ED489A 		vstr.32	s18, [r0, #288]
 1238 0124 80ED442A 		vstr.32	s4, [r0, #272]
 1239 0128 C0ED477A 		vstr.32	s15, [r0, #284]
 1240 012c C0ED466A 		vstr.32	s13, [r0, #280]
 1241 0130 80ED3A1A 		vstr.32	s2, [r0, #232]
 1242 0134 C0ED49AA 		vstr.32	s21, [r0, #292]
 1243 0138 C0ED4A8A 		vstr.32	s17, [r0, #296]
 1244 013c 80ED390A 		vstr.32	s0, [r0, #228]
 1245 0140 B1EEC08A 		vsqrt.f32	s16, s0
 1246 0144 00F12681 		bmi	.L154
 1247              	.L141:
 1248 0148 B5EE401A 		vcmp.f32	s2, #0
 1249 014c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1250 0150 84ED348A 		vstr.32	s16, [r4, #208]
 1251 0154 B1EEC18A 		vsqrt.f32	s16, s2
 1252 0158 00F12E81 		bmi	.L155
 1253              	.L142:
 1254 015c 94ED0B0A 		vldr.32	s0, [r4, #44]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 23


 1255 0160 94ED0A7A 		vldr.32	s14, [r4, #40]
 1256 0164 D4ED0C7A 		vldr.32	s15, [r4, #48]
 1257 0168 84ED358A 		vstr.32	s16, [r4, #212]
 1258 016c 20EE000A 		vmul.f32	s0, s0, s0
 1259 0170 A7EE070A 		vfma.f32	s0, s14, s14
 1260 0174 A7EEA70A 		vfma.f32	s0, s15, s15
 1261 0178 B5EE400A 		vcmp.f32	s0, #0
 1262 017c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1263 0180 B1EEC08A 		vsqrt.f32	s16, s0
 1264 0184 00F11581 		bmi	.L156
 1265              	.L143:
 1266 0188 636B     		ldr	r3, [r4, #52]	@ float
 1267 018a 8E4F     		ldr	r7, .L157
 1268 018c C4F8DC30 		str	r3, [r4, #220]	@ float
 1269 0190 04F1D005 		add	r5, r4, #208
 1270 0194 04F1E006 		add	r6, r4, #224
 1271 0198 84ED368A 		vstr.32	s16, [r4, #216]
 1272              	.L144:
 1273 019c 55F8040B 		ldr	r0, [r5], #4	@ float
 1274 01a0 FFF7FEFF 		bl	__aeabi_f2d
 1275 01a4 0246     		mov	r2, r0
 1276 01a6 0B46     		mov	r3, r1
 1277 01a8 3846     		mov	r0, r7
 1278 01aa FFF7FEFF 		bl	debugPrintf
 1279 01ae AE42     		cmp	r6, r5
 1280 01b0 F4D1     		bne	.L144
 1281 01b2 854B     		ldr	r3, .L157+4
 1282 01b4 DFED858A 		vldr.32	s17, .L157+8
 1283 01b8 D3F80480 		ldr	r8, [r3, #4]
 1284 01bc 04F14005 		add	r5, r4, #64
 1285 01c0 4746     		mov	r7, r8
 1286 01c2 08F5EE76 		add	r6, r8, #476
 1287 01c6 08F5F679 		add	r9, r8, #492
 1288 01ca B7EE009A 		vmov.f32	s18, #1.0e+0
 1289              	.L147:
 1290 01ce D5ED047A 		vldr.32	s15, [r5, #16]	@ int
 1291 01d2 97F83013 		ldrb	r1, [r7, #816]	@ zero_extendqisi2
 1292 01d6 F8EE676A 		vcvt.f32.u32	s13, s15
 1293 01da D5ED147A 		vldr.32	s15, [r5, #80]	@ int
 1294 01de B8EE678A 		vcvt.f32.u32	s16, s15
 1295 01e2 0DF18F02 		add	r2, sp, #143
 1296 01e6 4046     		mov	r0, r8
 1297 01e8 26EE888A 		vmul.f32	s16, s13, s16
 1298 01ec FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 1299 01f0 07EE900A 		vmov	s15, r0	@ int
 1300 01f4 F8EE676A 		vcvt.f32.u32	s13, s15
 1301 01f8 D5ED107A 		vldr.32	s15, [r5, #64]	@ int
 1302 01fc 2A69     		ldr	r2, [r5, #16]
 1303 01fe 2B6A     		ldr	r3, [r5, #32]
 1304 0200 D4ED0F5A 		vldr.32	s11, [r4, #60]
 1305 0204 B8EE676A 		vcvt.f32.u32	s12, s15
 1306 0208 D5ED0C7A 		vldr.32	s15, [r5, #48]	@ int
 1307 020c 66EE886A 		vmul.f32	s13, s13, s16
 1308 0210 B8EE677A 		vcvt.f32.u32	s14, s15
 1309 0214 66EE866A 		vmul.f32	s13, s13, s12
 1310 0218 27EE287A 		vmul.f32	s14, s14, s17
 1311 021c 03FB02F3 		mul	r3, r3, r2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 24


 1312 0220 86EE876A 		vdiv.f32	s12, s13, s14
 1313 0224 0C37     		adds	r7, r7, #12
 1314 0226 07EE903A 		vmov	s15, r3	@ int
 1315 022a F8EE677A 		vcvt.f32.u32	s15, s15
 1316 022e 76EE066A 		vadd.f32	s13, s12, s12
 1317 0232 67EEE57A 		vnmul.f32	s15, s15, s11
 1318 0236 86EEA77A 		vdiv.f32	s14, s13, s15
 1319 023a C5ED207A 		vstr.32	s15, [r5, #128]
 1320 023e 85ED187A 		vstr.32	s14, [r5, #96]
 1321 0242 B5EC017A 		vldmia.32	r5!, {s14}
 1322 0246 C6EE077A 		vdiv.f32	s15, s12, s14
 1323 024a 27EE077A 		vmul.f32	s14, s14, s14
 1324 024e F4EE677A 		vcmp.f32	s15, s15
 1325 0252 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1326 0256 85ED1B7A 		vstr.32	s14, [r5, #108]
 1327 025a 06D6     		bvs	.L145
 1328 025c F4EEC97A 		vcmpe.f32	s15, s18
 1329 0260 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1330 0264 D8BF     		it	le
 1331 0266 F0EE497A 		vmovle.f32	s15, s18
 1332              	.L145:
 1333 026a E6EC017A 		vstmia.32	r6!, {s15}
 1334 026e 4E45     		cmp	r6, r9
 1335 0270 ADD1     		bne	.L147
 1336 0272 DFF86091 		ldr	r9, .L157+16
 1337 0276 DFF86081 		ldr	r8, .L157+20
 1338 027a 04F1A005 		add	r5, r4, #160
 1339 027e 04F1B007 		add	r7, r4, #176
 1340              	.L148:
 1341 0282 286A     		ldr	r0, [r5, #32]	@ float
 1342 0284 FFF7FEFF 		bl	__aeabi_f2d
 1343 0288 0246     		mov	r2, r0
 1344 028a 0B46     		mov	r3, r1
 1345 028c 4846     		mov	r0, r9
 1346 028e FFF7FEFF 		bl	debugPrintf
 1347 0292 2868     		ldr	r0, [r5]	@ float
 1348 0294 FFF7FEFF 		bl	__aeabi_f2d
 1349 0298 0435     		adds	r5, r5, #4
 1350 029a 0246     		mov	r2, r0
 1351 029c 0B46     		mov	r3, r1
 1352 029e 4046     		mov	r0, r8
 1353 02a0 FFF7FEFF 		bl	debugPrintf
 1354 02a4 AF42     		cmp	r7, r5
 1355 02a6 ECD1     		bne	.L148
 1356 02a8 D4F8E400 		ldr	r0, [r4, #228]	@ float
 1357 02ac FFF7FEFF 		bl	__aeabi_f2d
 1358 02b0 0646     		mov	r6, r0
 1359 02b2 D4F82801 		ldr	r0, [r4, #296]	@ float
 1360 02b6 0F46     		mov	r7, r1
 1361 02b8 FFF7FEFF 		bl	__aeabi_f2d
 1362 02bc CDE92001 		strd	r0, [sp, #128]
 1363 02c0 D4F82401 		ldr	r0, [r4, #292]	@ float
 1364 02c4 FFF7FEFF 		bl	__aeabi_f2d
 1365 02c8 CDE91E01 		strd	r0, [sp, #120]
 1366 02cc D4F81C01 		ldr	r0, [r4, #284]	@ float
 1367 02d0 FFF7FEFF 		bl	__aeabi_f2d
 1368 02d4 CDE91C01 		strd	r0, [sp, #112]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 25


 1369 02d8 D4F81801 		ldr	r0, [r4, #280]	@ float
 1370 02dc FFF7FEFF 		bl	__aeabi_f2d
 1371 02e0 CDE91A01 		strd	r0, [sp, #104]
 1372 02e4 D4F82001 		ldr	r0, [r4, #288]	@ float
 1373 02e8 FFF7FEFF 		bl	__aeabi_f2d
 1374 02ec CDE91801 		strd	r0, [sp, #96]
 1375 02f0 D4F81401 		ldr	r0, [r4, #276]	@ float
 1376 02f4 FFF7FEFF 		bl	__aeabi_f2d
 1377 02f8 CDE91601 		strd	r0, [sp, #88]
 1378 02fc D4F81001 		ldr	r0, [r4, #272]	@ float
 1379 0300 FFF7FEFF 		bl	__aeabi_f2d
 1380 0304 CDE91401 		strd	r0, [sp, #80]
 1381 0308 D4F80C01 		ldr	r0, [r4, #268]	@ float
 1382 030c FFF7FEFF 		bl	__aeabi_f2d
 1383 0310 CDE91201 		strd	r0, [sp, #72]
 1384 0314 D4F80801 		ldr	r0, [r4, #264]	@ float
 1385 0318 FFF7FEFF 		bl	__aeabi_f2d
 1386 031c CDE91001 		strd	r0, [sp, #64]
 1387 0320 D4F80401 		ldr	r0, [r4, #260]	@ float
 1388 0324 FFF7FEFF 		bl	__aeabi_f2d
 1389 0328 CDE90E01 		strd	r0, [sp, #56]
 1390 032c D4F80001 		ldr	r0, [r4, #256]	@ float
 1391 0330 FFF7FEFF 		bl	__aeabi_f2d
 1392 0334 CDE90C01 		strd	r0, [sp, #48]
 1393 0338 D4F8FC00 		ldr	r0, [r4, #252]	@ float
 1394 033c FFF7FEFF 		bl	__aeabi_f2d
 1395 0340 CDE90A01 		strd	r0, [sp, #40]
 1396 0344 D4F8F800 		ldr	r0, [r4, #248]	@ float
 1397 0348 FFF7FEFF 		bl	__aeabi_f2d
 1398 034c CDE90801 		strd	r0, [sp, #32]
 1399 0350 D4F8F400 		ldr	r0, [r4, #244]	@ float
 1400 0354 FFF7FEFF 		bl	__aeabi_f2d
 1401 0358 CDE90601 		strd	r0, [sp, #24]
 1402 035c D4F8F000 		ldr	r0, [r4, #240]	@ float
 1403 0360 FFF7FEFF 		bl	__aeabi_f2d
 1404 0364 CDE90401 		strd	r0, [sp, #16]
 1405 0368 D4F8EC00 		ldr	r0, [r4, #236]	@ float
 1406 036c FFF7FEFF 		bl	__aeabi_f2d
 1407 0370 CDE90201 		strd	r0, [sp, #8]
 1408 0374 D4F8E800 		ldr	r0, [r4, #232]	@ float
 1409 0378 FFF7FEFF 		bl	__aeabi_f2d
 1410 037c 3246     		mov	r2, r6
 1411 037e CDE90001 		strd	r0, [sp]
 1412 0382 3B46     		mov	r3, r7
 1413 0384 1248     		ldr	r0, .L157+12
 1414 0386 FFF7FEFF 		bl	debugPrintf
 1415 038a 25B0     		add	sp, sp, #148
 1416              		@ sp needed
 1417 038c BDEC068B 		vldm	sp!, {d8-d10}
 1418 0390 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1419              	.L154:
 1420 0394 FFF7FEFF 		bl	sqrtf
 1421 0398 D4ED087A 		vldr.32	s15, [r4, #32]
 1422 039c D4ED076A 		vldr.32	s13, [r4, #28]
 1423 03a0 94ED097A 		vldr.32	s14, [r4, #36]
 1424 03a4 27EEA71A 		vmul.f32	s2, s15, s15
 1425 03a8 A6EEA61A 		vfma.f32	s2, s13, s13
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 26


 1426 03ac A7EE071A 		vfma.f32	s2, s14, s14
 1427 03b0 CAE6     		b	.L141
 1428              	.L156:
 1429 03b2 FFF7FEFF 		bl	sqrtf
 1430 03b6 E7E6     		b	.L143
 1431              	.L155:
 1432 03b8 B0EE410A 		vmov.f32	s0, s2
 1433 03bc FFF7FEFF 		bl	sqrtf
 1434 03c0 CCE6     		b	.L142
 1435              	.L158:
 1436 03c2 00BF     		.align	2
 1437              	.L157:
 1438 03c4 00000000 		.word	.LC17
 1439 03c8 00000000 		.word	reprap
 1440 03cc DB0FC940 		.word	1086918619
 1441 03d0 54000000 		.word	.LC20
 1442 03d4 24000000 		.word	.LC18
 1443 03d8 3C000000 		.word	.LC19
 1444              		.size	_ZN21HangprinterKinematics6RecalcEv, .-_ZN21HangprinterKinematics6RecalcEv
 1445              		.section	.text._ZN21HangprinterKinematics4InitEv,"ax",%progbits
 1446              		.align	1
 1447              		.p2align 2,,3
 1448              		.global	_ZN21HangprinterKinematics4InitEv
 1449              		.syntax unified
 1450              		.thumb
 1451              		.thumb_func
 1452              		.fpu fpv4-sp-d16
 1453              		.type	_ZN21HangprinterKinematics4InitEv, %function
 1454              	_ZN21HangprinterKinematics4InitEv:
 1455              		@ args = 0, pretend = 0, frame = 96
 1456              		@ frame_needed = 0, uses_anonymous_args = 0
 1457 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1458 0004 454D     		ldr	r5, .L164
 1459 0006 DFF82C91 		ldr	r9, .L164+24
 1460 000a 0446     		mov	r4, r0
 1461 000c 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 1462 0010 99B0     		sub	sp, sp, #100
 1463 0012 05F11006 		add	r6, r5, #16
 1464 0016 E846     		mov	r8, sp
 1465 0018 88E80F00 		stm	r8, {r0, r1, r2, r3}
 1466 001c 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 1467 0020 0DF1100E 		add	lr, sp, #16
 1468 0024 05F12006 		add	r6, r5, #32
 1469 0028 8EE80F00 		stm	lr, {r0, r1, r2, r3}
 1470 002c 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 1471 0030 0DF1200C 		add	ip, sp, #32
 1472 0034 05F13006 		add	r6, r5, #48
 1473 0038 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 1474 003c 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 1475 0040 0CAF     		add	r7, sp, #48
 1476 0042 05F14006 		add	r6, r5, #64
 1477 0046 87E80F00 		stm	r7, {r0, r1, r2, r3}
 1478 004a 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 1479 004e 5035     		adds	r5, r5, #80
 1480 0050 10AE     		add	r6, sp, #64
 1481 0052 86E80F00 		stm	r6, {r0, r1, r2, r3}
 1482 0056 95E80F00 		ldm	r5, {r0, r1, r2, r3}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 27


 1483 005a 14AD     		add	r5, sp, #80
 1484 005c 85E80F00 		stm	r5, {r0, r1, r2, r3}
 1485 0060 B9E80700 		ldmia	r9!, {r0, r1, r2}
 1486 0064 2E4B     		ldr	r3, .L164+4
 1487 0066 2061     		str	r0, [r4, #16]	@ unaligned
 1488 0068 6161     		str	r1, [r4, #20]	@ unaligned
 1489 006a A261     		str	r2, [r4, #24]	@ unaligned
 1490 006c 07CB     		ldmia	r3!, {r0, r1, r2}
 1491 006e 2D4B     		ldr	r3, .L164+8
 1492 0070 E061     		str	r0, [r4, #28]	@ unaligned
 1493 0072 2162     		str	r1, [r4, #32]	@ unaligned
 1494 0074 6262     		str	r2, [r4, #36]	@ unaligned
 1495 0076 07CB     		ldmia	r3!, {r0, r1, r2}
 1496 0078 A062     		str	r0, [r4, #40]	@ unaligned
 1497 007a E162     		str	r1, [r4, #44]	@ unaligned
 1498 007c 2263     		str	r2, [r4, #48]	@ unaligned
 1499 007e B8E80F00 		ldmia	r8!, {r0, r1, r2, r3}
 1500 0082 2064     		str	r0, [r4, #64]	@ unaligned
 1501 0084 6164     		str	r1, [r4, #68]	@ unaligned
 1502 0086 A264     		str	r2, [r4, #72]	@ unaligned
 1503 0088 E364     		str	r3, [r4, #76]	@ unaligned
 1504 008a BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 1505 008e 2065     		str	r0, [r4, #80]	@ unaligned
 1506 0090 6165     		str	r1, [r4, #84]	@ unaligned
 1507 0092 A265     		str	r2, [r4, #88]	@ unaligned
 1508 0094 E365     		str	r3, [r4, #92]	@ unaligned
 1509 0096 BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 1510 009a 2066     		str	r0, [r4, #96]	@ unaligned
 1511 009c 6166     		str	r1, [r4, #100]	@ unaligned
 1512 009e A266     		str	r2, [r4, #104]	@ unaligned
 1513 00a0 E366     		str	r3, [r4, #108]	@ unaligned
 1514 00a2 0FCF     		ldmia	r7!, {r0, r1, r2, r3}
 1515 00a4 DFF89090 		ldr	r9, .L164+28
 1516 00a8 C4F83890 		str	r9, [r4, #56]	@ float
 1517 00ac DFF88C80 		ldr	r8, .L164+32
 1518 00b0 C4F83480 		str	r8, [r4, #52]	@ float
 1519 00b4 4FF07E59 		mov	r9, #1065353216
 1520 00b8 C4F83C90 		str	r9, [r4, #60]	@ float
 1521 00bc 2067     		str	r0, [r4, #112]	@ unaligned
 1522 00be 6167     		str	r1, [r4, #116]	@ unaligned
 1523 00c0 A267     		str	r2, [r4, #120]	@ unaligned
 1524 00c2 E367     		str	r3, [r4, #124]	@ unaligned
 1525 00c4 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1526 00c6 C4F88000 		str	r0, [r4, #128]	@ unaligned
 1527 00ca C4F88410 		str	r1, [r4, #132]	@ unaligned
 1528 00ce C4F88820 		str	r2, [r4, #136]	@ unaligned
 1529 00d2 C4F88C30 		str	r3, [r4, #140]	@ unaligned
 1530 00d6 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1531 00d8 C4F89C30 		str	r3, [r4, #156]	@ unaligned
 1532 00dc 2368     		ldr	r3, [r4]
 1533 00de C4F89410 		str	r1, [r4, #148]	@ unaligned
 1534 00e2 C4F89820 		str	r2, [r4, #152]	@ unaligned
 1535 00e6 C4F89000 		str	r0, [r4, #144]	@ unaligned
 1536 00ea 0F49     		ldr	r1, .L164+12
 1537 00ec 1B6C     		ldr	r3, [r3, #64]
 1538 00ee 0F4A     		ldr	r2, .L164+16
 1539 00f0 4D69     		ldr	r5, [r1, #20]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 28


 1540 00f2 9342     		cmp	r3, r2
 1541 00f4 4FF00001 		mov	r1, #0
 1542 00f8 84F82C11 		strb	r1, [r4, #300]
 1543 00fc 0AD1     		bne	.L163
 1544 00fe 0C49     		ldr	r1, .L164+20
 1545              	.L160:
 1546 0100 2846     		mov	r0, r5
 1547 0102 0422     		movs	r2, #4
 1548 0104 FFF7FEFF 		bl	_ZN6GCodes21SetMachineAxisLettersEPKch
 1549 0108 2046     		mov	r0, r4
 1550 010a 19B0     		add	sp, sp, #100
 1551              		@ sp needed
 1552 010c BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 1553 0110 FFF7FEBF 		b	_ZN21HangprinterKinematics6RecalcEv
 1554              	.L163:
 1555 0114 2046     		mov	r0, r4
 1556 0116 9847     		blx	r3
 1557 0118 0146     		mov	r1, r0
 1558 011a F1E7     		b	.L160
 1559              	.L165:
 1560              		.align	2
 1561              	.L164:
 1562 011c 10000000 		.word	.LANCHOR0+16
 1563 0120 00000000 		.word	.LANCHOR2
 1564 0124 00000000 		.word	.LANCHOR3
 1565 0128 00000000 		.word	reprap
 1566 012c 00000000 		.word	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 1567 0130 00000000 		.word	.LC11
 1568 0134 00000000 		.word	.LANCHOR1
 1569 0138 0000FA43 		.word	1140457472
 1570 013c 00E86845 		.word	1164503040
 1571              		.size	_ZN21HangprinterKinematics4InitEv, .-_ZN21HangprinterKinematics4InitEv
 1572              		.section	.text._ZN21HangprinterKinematicsC2Ev,"ax",%progbits
 1573              		.align	1
 1574              		.p2align 2,,3
 1575              		.global	_ZN21HangprinterKinematicsC2Ev
 1576              		.syntax unified
 1577              		.thumb
 1578              		.thumb_func
 1579              		.fpu fpv4-sp-d16
 1580              		.type	_ZN21HangprinterKinematicsC2Ev, %function
 1581              	_ZN21HangprinterKinematicsC2Ev:
 1582              		@ args = 0, pretend = 0, frame = 0
 1583              		@ frame_needed = 0, uses_anonymous_args = 0
 1584 0000 10B5     		push	{r4, lr}
 1585 0002 0022     		movs	r2, #0
 1586 0004 0446     		mov	r4, r0
 1587 0006 DFED070A 		vldr.32	s1, .L168
 1588 000a 9FED070A 		vldr.32	s0, .L168+4
 1589 000e 0621     		movs	r1, #6
 1590 0010 0123     		movs	r3, #1
 1591 0012 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffbb
 1592 0016 054B     		ldr	r3, .L168+8
 1593 0018 2360     		str	r3, [r4]
 1594 001a 2046     		mov	r0, r4
 1595 001c FFF7FEFF 		bl	_ZN21HangprinterKinematics4InitEv
 1596 0020 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 29


 1597 0022 10BD     		pop	{r4, pc}
 1598              	.L169:
 1599              		.align	2
 1600              	.L168:
 1601 0024 CDCC4C3E 		.word	1045220557
 1602 0028 0000C842 		.word	1120403456
 1603 002c 08000000 		.word	.LANCHOR4+8
 1604              		.size	_ZN21HangprinterKinematicsC2Ev, .-_ZN21HangprinterKinematicsC2Ev
 1605              		.global	_ZN21HangprinterKinematicsC1Ev
 1606              		.thumb_set _ZN21HangprinterKinematicsC1Ev,_ZN21HangprinterKinematicsC2Ev
 1607              		.section	.text._ZN21HangprinterKinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN21Hangprint
 1608              		.align	1
 1609              		.p2align 2,,3
 1610              		.weak	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv
 1611              		.syntax unified
 1612              		.thumb
 1613              		.thumb_func
 1614              		.fpu fpv4-sp-d16
 1615              		.type	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv, %function
 1616              	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv:
 1617              		@ args = 0, pretend = 0, frame = 0
 1618              		@ frame_needed = 0, uses_anonymous_args = 0
 1619              		@ link register save eliminated.
 1620 0000 FFF7FEBF 		b	_ZN21HangprinterKinematics4InitEv
 1621              		.size	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv, .-_ZN21HangprinterKinematics22SetCalib
 1622              		.section	.text._ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 1623              		.align	1
 1624              		.p2align 2,,3
 1625              		.global	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1626              		.syntax unified
 1627              		.thumb
 1628              		.thumb_func
 1629              		.fpu fpv4-sp-d16
 1630              		.type	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 1631              	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 1632              		@ args = 4, pretend = 0, frame = 8
 1633              		@ frame_needed = 0, uses_anonymous_args = 0
 1634 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1635 0004 40F29D2C 		movw	ip, #669
 1636 0008 B8B0     		sub	sp, sp, #224
 1637 000a 0025     		movs	r5, #0
 1638 000c 6145     		cmp	r1, ip
 1639 000e 8DF8DE50 		strb	r5, [sp, #222]
 1640 0012 0646     		mov	r6, r0
 1641 0014 1746     		mov	r7, r2
 1642 0016 9846     		mov	r8, r3
 1643 0018 27D0     		beq	.L188
 1644 001a 40F29A2C 		movw	ip, #666
 1645 001e 6145     		cmp	r1, ip
 1646 0020 06D0     		beq	.L189
 1647 0022 3E9C     		ldr	r4, [sp, #248]
 1648 0024 0094     		str	r4, [sp]
 1649 0026 FFF7FEFF 		bl	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1650              	.L171:
 1651 002a 38B0     		add	sp, sp, #224
 1652              		@ sp needed
 1653 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 30


 1654              	.L189:
 1655 0030 0DF1DE04 		add	r4, sp, #222
 1656 0034 00F13C02 		add	r2, r0, #60
 1657 0038 2346     		mov	r3, r4
 1658 003a 5121     		movs	r1, #81
 1659 003c 3846     		mov	r0, r7
 1660 003e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1661 0042 CDE90145 		strd	r4, r5, [sp, #4]
 1662 0046 CDF80080 		str	r8, [sp]
 1663 004a 06F14003 		add	r3, r6, #64
 1664 004e 0422     		movs	r2, #4
 1665 0050 5221     		movs	r1, #82
 1666 0052 3846     		mov	r0, r7
 1667 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1668 0058 0028     		cmp	r0, #0
 1669 005a 00F0B980 		beq	.L182
 1670              	.L183:
 1671 005e 3E9B     		ldr	r3, [sp, #248]
 1672 0060 0120     		movs	r0, #1
 1673 0062 1870     		strb	r0, [r3]
 1674 0064 38B0     		add	sp, sp, #224
 1675              		@ sp needed
 1676 0066 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1677              	.L188:
 1678 006a 38AC     		add	r4, sp, #224
 1679 006c 021D     		adds	r2, r0, #4
 1680 006e 04F8015D 		strb	r5, [r4, #-1]!
 1681 0072 5321     		movs	r1, #83
 1682 0074 2346     		mov	r3, r4
 1683 0076 3846     		mov	r0, r7
 1684 0078 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1685 007c 2346     		mov	r3, r4
 1686 007e 06F10802 		add	r2, r6, #8
 1687 0082 5421     		movs	r1, #84
 1688 0084 3846     		mov	r0, r7
 1689 0086 0DF1DE04 		add	r4, sp, #222
 1690 008a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1691 008e 0295     		str	r5, [sp, #8]
 1692 0090 CDE90084 		strd	r8, r4, [sp]
 1693 0094 06F11003 		add	r3, r6, #16
 1694 0098 0322     		movs	r2, #3
 1695 009a 4121     		movs	r1, #65
 1696 009c 3846     		mov	r0, r7
 1697 009e FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1698 00a2 0028     		cmp	r0, #0
 1699 00a4 DBD1     		bne	.L183
 1700 00a6 CDE90140 		strd	r4, r0, [sp, #4]
 1701 00aa CDF80080 		str	r8, [sp]
 1702 00ae 06F11C03 		add	r3, r6, #28
 1703 00b2 0322     		movs	r2, #3
 1704 00b4 4221     		movs	r1, #66
 1705 00b6 3846     		mov	r0, r7
 1706 00b8 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1707 00bc 0028     		cmp	r0, #0
 1708 00be CED1     		bne	.L183
 1709 00c0 CDE90140 		strd	r4, r0, [sp, #4]
 1710 00c4 CDF80080 		str	r8, [sp]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 31


 1711 00c8 06F12803 		add	r3, r6, #40
 1712 00cc 0322     		movs	r2, #3
 1713 00ce 4321     		movs	r1, #67
 1714 00d0 3846     		mov	r0, r7
 1715 00d2 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1716 00d6 0546     		mov	r5, r0
 1717 00d8 0028     		cmp	r0, #0
 1718 00da C0D1     		bne	.L183
 1719 00dc 2346     		mov	r3, r4
 1720 00de 06F13402 		add	r2, r6, #52
 1721 00e2 4421     		movs	r1, #68
 1722 00e4 3846     		mov	r0, r7
 1723 00e6 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1724 00ea 2346     		mov	r3, r4
 1725 00ec 06F13C02 		add	r2, r6, #60
 1726 00f0 5121     		movs	r1, #81
 1727 00f2 3846     		mov	r0, r7
 1728 00f4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1729 00f8 CDE90145 		strd	r4, r5, [sp, #4]
 1730 00fc CDF80080 		str	r8, [sp]
 1731 0100 06F14003 		add	r3, r6, #64
 1732 0104 0422     		movs	r2, #4
 1733 0106 5221     		movs	r1, #82
 1734 0108 3846     		mov	r0, r7
 1735 010a FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1736 010e 0028     		cmp	r0, #0
 1737 0110 A5D1     		bne	.L183
 1738 0112 CDE90140 		strd	r4, r0, [sp, #4]
 1739 0116 CDF80080 		str	r8, [sp]
 1740 011a 06F15003 		add	r3, r6, #80
 1741 011e 0422     		movs	r2, #4
 1742 0120 5521     		movs	r1, #85
 1743 0122 3846     		mov	r0, r7
 1744 0124 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1745 0128 0028     		cmp	r0, #0
 1746 012a 98D1     		bne	.L183
 1747 012c CDE90140 		strd	r4, r0, [sp, #4]
 1748 0130 CDF80080 		str	r8, [sp]
 1749 0134 06F16003 		add	r3, r6, #96
 1750 0138 0422     		movs	r2, #4
 1751 013a 4F21     		movs	r1, #79
 1752 013c 3846     		mov	r0, r7
 1753 013e FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1754 0142 0028     		cmp	r0, #0
 1755 0144 8BD1     		bne	.L183
 1756 0146 CDE90140 		strd	r4, r0, [sp, #4]
 1757 014a CDF80080 		str	r8, [sp]
 1758 014e 06F17003 		add	r3, r6, #112
 1759 0152 0422     		movs	r2, #4
 1760 0154 4C21     		movs	r1, #76
 1761 0156 3846     		mov	r0, r7
 1762 0158 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1763 015c 0028     		cmp	r0, #0
 1764 015e 7FF47EAF 		bne	.L183
 1765 0162 CDE90140 		strd	r4, r0, [sp, #4]
 1766 0166 CDF80080 		str	r8, [sp]
 1767 016a 06F18003 		add	r3, r6, #128
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 32


 1768 016e 0422     		movs	r2, #4
 1769 0170 4821     		movs	r1, #72
 1770 0172 3846     		mov	r0, r7
 1771 0174 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1772 0178 0028     		cmp	r0, #0
 1773 017a 7FF470AF 		bne	.L183
 1774 017e CDE90140 		strd	r4, r0, [sp, #4]
 1775 0182 CDF80080 		str	r8, [sp]
 1776 0186 06F19003 		add	r3, r6, #144
 1777 018a 0422     		movs	r2, #4
 1778 018c 4A21     		movs	r1, #74
 1779 018e 3846     		mov	r0, r7
 1780 0190 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1781 0194 0028     		cmp	r0, #0
 1782 0196 7FF462AF 		bne	.L183
 1783 019a 9DF8DE30 		ldrb	r3, [sp, #222]	@ zero_extendqisi2
 1784 019e 13B9     		cbnz	r3, .L176
 1785 01a0 9DF8DF30 		ldrb	r3, [sp, #223]	@ zero_extendqisi2
 1786 01a4 13B1     		cbz	r3, .L177
 1787              	.L176:
 1788 01a6 3046     		mov	r0, r6
 1789 01a8 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 1790              	.L177:
 1791 01ac 5021     		movs	r1, #80
 1792 01ae 3846     		mov	r0, r7
 1793 01b0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1794 01b4 0028     		cmp	r0, #0
 1795 01b6 00F09F80 		beq	.L178
 1796 01ba 3846     		mov	r0, r7
 1797 01bc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1798 01c0 0123     		movs	r3, #1
 1799 01c2 86ED0E0A 		vstr.32	s0, [r6, #56]
 1800 01c6 8DF8DE30 		strb	r3, [sp, #222]
 1801              	.L179:
 1802 01ca 9DF8DE00 		ldrb	r0, [sp, #222]	@ zero_extendqisi2
 1803 01ce 2CE7     		b	.L171
 1804              	.L182:
 1805 01d0 CDE90140 		strd	r4, r0, [sp, #4]
 1806 01d4 CDF80080 		str	r8, [sp]
 1807 01d8 06F15003 		add	r3, r6, #80
 1808 01dc 0422     		movs	r2, #4
 1809 01de 5521     		movs	r1, #85
 1810 01e0 3846     		mov	r0, r7
 1811 01e2 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1812 01e6 0028     		cmp	r0, #0
 1813 01e8 7FF439AF 		bne	.L183
 1814 01ec CDE90140 		strd	r4, r0, [sp, #4]
 1815 01f0 CDF80080 		str	r8, [sp]
 1816 01f4 06F16003 		add	r3, r6, #96
 1817 01f8 0422     		movs	r2, #4
 1818 01fa 4F21     		movs	r1, #79
 1819 01fc 3846     		mov	r0, r7
 1820 01fe FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1821 0202 0028     		cmp	r0, #0
 1822 0204 7FF42BAF 		bne	.L183
 1823 0208 CDE90140 		strd	r4, r0, [sp, #4]
 1824 020c CDF80080 		str	r8, [sp]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 33


 1825 0210 06F17003 		add	r3, r6, #112
 1826 0214 0422     		movs	r2, #4
 1827 0216 4C21     		movs	r1, #76
 1828 0218 3846     		mov	r0, r7
 1829 021a FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1830 021e 0028     		cmp	r0, #0
 1831 0220 7FF41DAF 		bne	.L183
 1832 0224 CDE90140 		strd	r4, r0, [sp, #4]
 1833 0228 CDF80080 		str	r8, [sp]
 1834 022c 06F18003 		add	r3, r6, #128
 1835 0230 0422     		movs	r2, #4
 1836 0232 4821     		movs	r1, #72
 1837 0234 3846     		mov	r0, r7
 1838 0236 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1839 023a 0028     		cmp	r0, #0
 1840 023c 7FF40FAF 		bne	.L183
 1841 0240 CDE90140 		strd	r4, r0, [sp, #4]
 1842 0244 CDF80080 		str	r8, [sp]
 1843 0248 3846     		mov	r0, r7
 1844 024a 06F19003 		add	r3, r6, #144
 1845 024e 0422     		movs	r2, #4
 1846 0250 4A21     		movs	r1, #74
 1847 0252 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1848 0256 0028     		cmp	r0, #0
 1849 0258 7FF401AF 		bne	.L183
 1850 025c F06B     		ldr	r0, [r6, #60]	@ float
 1851 025e FFF7FEFF 		bl	__aeabi_f2d
 1852 0262 0D46     		mov	r5, r1
 1853 0264 D6E92621 		ldrd	r2, r1, [r6, #152]
 1854 0268 D6F89430 		ldr	r3, [r6, #148]
 1855 026c 1B91     		str	r1, [sp, #108]
 1856 026e D6F89010 		ldr	r1, [r6, #144]
 1857 0272 1A92     		str	r2, [sp, #104]
 1858 0274 D6F88C20 		ldr	r2, [r6, #140]
 1859 0278 1993     		str	r3, [sp, #100]
 1860 027a D6F88830 		ldr	r3, [r6, #136]
 1861 027e 1891     		str	r1, [sp, #96]
 1862 0280 D6F88410 		ldr	r1, [r6, #132]
 1863 0284 1792     		str	r2, [sp, #92]
 1864 0286 D6F88020 		ldr	r2, [r6, #128]
 1865 028a 1693     		str	r3, [sp, #88]
 1866 028c F36F     		ldr	r3, [r6, #124]
 1867 028e 1591     		str	r1, [sp, #84]
 1868 0290 B16F     		ldr	r1, [r6, #120]
 1869 0292 1492     		str	r2, [sp, #80]
 1870 0294 726F     		ldr	r2, [r6, #116]
 1871 0296 1393     		str	r3, [sp, #76]
 1872 0298 336F     		ldr	r3, [r6, #112]
 1873 029a 1291     		str	r1, [sp, #72]
 1874 029c F16E     		ldr	r1, [r6, #108]
 1875 029e 1192     		str	r2, [sp, #68]
 1876 02a0 B26E     		ldr	r2, [r6, #104]
 1877 02a2 1093     		str	r3, [sp, #64]
 1878 02a4 736E     		ldr	r3, [r6, #100]
 1879 02a6 0D93     		str	r3, [sp, #52]
 1880 02a8 CDE90E21 		strd	r2, r1, [sp, #56]
 1881 02ac D6E91732 		ldrd	r3, r2, [r6, #92]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 34


 1882 02b0 B16D     		ldr	r1, [r6, #88]
 1883 02b2 0C92     		str	r2, [sp, #48]
 1884 02b4 726D     		ldr	r2, [r6, #84]
 1885 02b6 0B93     		str	r3, [sp, #44]
 1886 02b8 336D     		ldr	r3, [r6, #80]
 1887 02ba 0A91     		str	r1, [sp, #40]
 1888 02bc 0446     		mov	r4, r0
 1889 02be F06C     		ldr	r0, [r6, #76]	@ float
 1890 02c0 CDE90832 		strd	r3, r2, [sp, #32]
 1891 02c4 FFF7FEFF 		bl	__aeabi_f2d
 1892 02c8 CDE90601 		strd	r0, [sp, #24]
 1893 02cc B06C     		ldr	r0, [r6, #72]	@ float
 1894 02ce FFF7FEFF 		bl	__aeabi_f2d
 1895 02d2 CDE90401 		strd	r0, [sp, #16]
 1896 02d6 706C     		ldr	r0, [r6, #68]	@ float
 1897 02d8 FFF7FEFF 		bl	__aeabi_f2d
 1898 02dc CDE90201 		strd	r0, [sp, #8]
 1899 02e0 306C     		ldr	r0, [r6, #64]	@ float
 1900 02e2 FFF7FEFF 		bl	__aeabi_f2d
 1901 02e6 2246     		mov	r2, r4
 1902 02e8 CDE90001 		strd	r0, [sp]
 1903 02ec 2B46     		mov	r3, r5
 1904 02ee 4046     		mov	r0, r8
 1905 02f0 4D49     		ldr	r1, .L190
 1906 02f2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1907 02f6 98E6     		b	.L171
 1908              	.L178:
 1909 02f8 3846     		mov	r0, r7
 1910 02fa 4B21     		movs	r1, #75
 1911 02fc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1912 0300 0028     		cmp	r0, #0
 1913 0302 7FF462AF 		bne	.L179
 1914 0306 3069     		ldr	r0, [r6, #16]	@ float
 1915 0308 FFF7FEFF 		bl	__aeabi_f2d
 1916 030c 0D46     		mov	r5, r1
 1917 030e D6E92621 		ldrd	r2, r1, [r6, #152]
 1918 0312 D6F89430 		ldr	r3, [r6, #148]
 1919 0316 3591     		str	r1, [sp, #212]
 1920 0318 D6F89010 		ldr	r1, [r6, #144]
 1921 031c 3492     		str	r2, [sp, #208]
 1922 031e D6F88C20 		ldr	r2, [r6, #140]
 1923 0322 3393     		str	r3, [sp, #204]
 1924 0324 D6F88830 		ldr	r3, [r6, #136]
 1925 0328 3291     		str	r1, [sp, #200]
 1926 032a D6F88410 		ldr	r1, [r6, #132]
 1927 032e 3192     		str	r2, [sp, #196]
 1928 0330 D6F88020 		ldr	r2, [r6, #128]
 1929 0334 3093     		str	r3, [sp, #192]
 1930 0336 F36F     		ldr	r3, [r6, #124]
 1931 0338 2F91     		str	r1, [sp, #188]
 1932 033a B16F     		ldr	r1, [r6, #120]
 1933 033c 2E92     		str	r2, [sp, #184]
 1934 033e 726F     		ldr	r2, [r6, #116]
 1935 0340 2D93     		str	r3, [sp, #180]
 1936 0342 336F     		ldr	r3, [r6, #112]
 1937 0344 2C91     		str	r1, [sp, #176]
 1938 0346 F16E     		ldr	r1, [r6, #108]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 35


 1939 0348 2B92     		str	r2, [sp, #172]
 1940 034a B26E     		ldr	r2, [r6, #104]
 1941 034c 2A93     		str	r3, [sp, #168]
 1942 034e 736E     		ldr	r3, [r6, #100]
 1943 0350 2793     		str	r3, [sp, #156]
 1944 0352 CDE92821 		strd	r2, r1, [sp, #160]
 1945 0356 D6E91732 		ldrd	r3, r2, [r6, #92]
 1946 035a B16D     		ldr	r1, [r6, #88]
 1947 035c 2692     		str	r2, [sp, #152]
 1948 035e 726D     		ldr	r2, [r6, #84]
 1949 0360 2593     		str	r3, [sp, #148]
 1950 0362 336D     		ldr	r3, [r6, #80]
 1951 0364 2491     		str	r1, [sp, #144]
 1952 0366 0446     		mov	r4, r0
 1953 0368 F06C     		ldr	r0, [r6, #76]	@ float
 1954 036a CDE92232 		strd	r3, r2, [sp, #136]
 1955 036e FFF7FEFF 		bl	__aeabi_f2d
 1956 0372 CDE92001 		strd	r0, [sp, #128]
 1957 0376 B06C     		ldr	r0, [r6, #72]	@ float
 1958 0378 FFF7FEFF 		bl	__aeabi_f2d
 1959 037c CDE91E01 		strd	r0, [sp, #120]
 1960 0380 706C     		ldr	r0, [r6, #68]	@ float
 1961 0382 FFF7FEFF 		bl	__aeabi_f2d
 1962 0386 CDE91C01 		strd	r0, [sp, #112]
 1963 038a 306C     		ldr	r0, [r6, #64]	@ float
 1964 038c FFF7FEFF 		bl	__aeabi_f2d
 1965 0390 CDE91A01 		strd	r0, [sp, #104]
 1966 0394 F06B     		ldr	r0, [r6, #60]	@ float
 1967 0396 FFF7FEFF 		bl	__aeabi_f2d
 1968 039a CDE91801 		strd	r0, [sp, #96]
 1969 039e B068     		ldr	r0, [r6, #8]	@ float
 1970 03a0 FFF7FEFF 		bl	__aeabi_f2d
 1971 03a4 D6ED017A 		vldr.32	s15, [r6, #4]
 1972 03a8 CDE91601 		strd	r0, [sp, #88]
 1973 03ac FDEEE77A 		vcvt.s32.f32	s15, s15
 1974 03b0 B06B     		ldr	r0, [r6, #56]	@ float
 1975 03b2 CDED147A 		vstr.32	s15, [sp, #80]	@ int
 1976 03b6 FFF7FEFF 		bl	__aeabi_f2d
 1977 03ba CDE91201 		strd	r0, [sp, #72]
 1978 03be 706B     		ldr	r0, [r6, #52]	@ float
 1979 03c0 FFF7FEFF 		bl	__aeabi_f2d
 1980 03c4 CDE91001 		strd	r0, [sp, #64]
 1981 03c8 306B     		ldr	r0, [r6, #48]	@ float
 1982 03ca FFF7FEFF 		bl	__aeabi_f2d
 1983 03ce CDE90E01 		strd	r0, [sp, #56]
 1984 03d2 F06A     		ldr	r0, [r6, #44]	@ float
 1985 03d4 FFF7FEFF 		bl	__aeabi_f2d
 1986 03d8 CDE90C01 		strd	r0, [sp, #48]
 1987 03dc B06A     		ldr	r0, [r6, #40]	@ float
 1988 03de FFF7FEFF 		bl	__aeabi_f2d
 1989 03e2 CDE90A01 		strd	r0, [sp, #40]
 1990 03e6 706A     		ldr	r0, [r6, #36]	@ float
 1991 03e8 FFF7FEFF 		bl	__aeabi_f2d
 1992 03ec CDE90801 		strd	r0, [sp, #32]
 1993 03f0 306A     		ldr	r0, [r6, #32]	@ float
 1994 03f2 FFF7FEFF 		bl	__aeabi_f2d
 1995 03f6 CDE90601 		strd	r0, [sp, #24]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 36


 1996 03fa F069     		ldr	r0, [r6, #28]	@ float
 1997 03fc FFF7FEFF 		bl	__aeabi_f2d
 1998 0400 CDE90401 		strd	r0, [sp, #16]
 1999 0404 B069     		ldr	r0, [r6, #24]	@ float
 2000 0406 FFF7FEFF 		bl	__aeabi_f2d
 2001 040a CDE90201 		strd	r0, [sp, #8]
 2002 040e 7069     		ldr	r0, [r6, #20]	@ float
 2003 0410 FFF7FEFF 		bl	__aeabi_f2d
 2004 0414 2246     		mov	r2, r4
 2005 0416 CDE90001 		strd	r0, [sp]
 2006 041a 2B46     		mov	r3, r5
 2007 041c 4046     		mov	r0, r8
 2008 041e 0349     		ldr	r1, .L190+4
 2009 0420 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2010 0424 D1E6     		b	.L179
 2011              	.L191:
 2012 0426 00BF     		.align	2
 2013              	.L190:
 2014 0428 8C010000 		.word	.LC22
 2015 042c 00000000 		.word	.LC21
 2016              		.size	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN21HangprinterKinema
 2017              		.section	.text._ZNK21HangprinterKinematics17MotorPosToLinePosElj,"ax",%progbits
 2018              		.align	1
 2019              		.p2align 2,,3
 2020              		.global	_ZNK21HangprinterKinematics17MotorPosToLinePosElj
 2021              		.syntax unified
 2022              		.thumb
 2023              		.thumb_func
 2024              		.fpu fpv4-sp-d16
 2025              		.type	_ZNK21HangprinterKinematics17MotorPosToLinePosElj, %function
 2026              	_ZNK21HangprinterKinematics17MotorPosToLinePosElj:
 2027              		@ args = 0, pretend = 0, frame = 0
 2028              		@ frame_needed = 0, uses_anonymous_args = 0
 2029              		@ link register save eliminated.
 2030 0000 07EE901A 		vmov	s15, r1	@ int
 2031 0004 00EB8202 		add	r2, r0, r2, lsl #2
 2032 0008 92ED286A 		vldr.32	s12, [r2, #160]
 2033 000c D2ED106A 		vldr.32	s13, [r2, #64]
 2034 0010 92ED2C0A 		vldr.32	s0, [r2, #176]
 2035 0014 92ED307A 		vldr.32	s14, [r2, #192]
 2036 0018 F8EEE75A 		vcvt.f32.s32	s11, s15
 2037 001c C5EE867A 		vdiv.f32	s15, s11, s12
 2038 0020 77EEA67A 		vadd.f32	s15, s15, s13
 2039 0024 97EEA70A 		vfnms.f32	s0, s15, s15
 2040 0028 80EE070A 		vdiv.f32	s0, s0, s14
 2041 002c 7047     		bx	lr
 2042              		.size	_ZNK21HangprinterKinematics17MotorPosToLinePosElj, .-_ZNK21HangprinterKinematics17MotorPosTo
 2043 002e 00BF     		.section	.text._ZNK21HangprinterKinematics16InverseTransformEfffPf,"ax",%progbits
 2044              		.align	1
 2045              		.p2align 2,,3
 2046              		.global	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2047              		.syntax unified
 2048              		.thumb
 2049              		.thumb_func
 2050              		.fpu fpv4-sp-d16
 2051              		.type	_ZNK21HangprinterKinematics16InverseTransformEfffPf, %function
 2052              	_ZNK21HangprinterKinematics16InverseTransformEfffPf:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 37


 2053              		@ args = 0, pretend = 0, frame = 0
 2054              		@ frame_needed = 0, uses_anonymous_args = 0
 2055 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2056 0004 2DED088B 		vpush.64	{d8, d9, d10, d11}
 2057 0008 90ED3A8A 		vldr.32	s16, [r0, #232]
 2058 000c D0ED3B6A 		vldr.32	s13, [r0, #236]
 2059 0010 D0ED418A 		vldr.32	s17, [r0, #260]
 2060 0014 90ED3F6A 		vldr.32	s12, [r0, #252]
 2061 0018 90ED397A 		vldr.32	s14, [r0, #228]
 2062 001c D0ED3E2A 		vldr.32	s5, [r0, #248]
 2063 0020 90ED3C3A 		vldr.32	s6, [r0, #240]
 2064 0024 D0ED403A 		vldr.32	s7, [r0, #256]
 2065 0028 90ED3D4A 		vldr.32	s8, [r0, #244]
 2066 002c D0ED047A 		vldr.32	s15, [r0, #16]
 2067 0030 D0ED054A 		vldr.32	s9, [r0, #20]
 2068 0034 90ED455A 		vldr.32	s10, [r0, #276]
 2069 0038 D0ED479A 		vldr.32	s19, [r0, #284]
 2070 003c D0ED465A 		vldr.32	s11, [r0, #280]
 2071 0040 DFF8A881 		ldr	r8, .L198+12
 2072 0044 90EEA08A 		vfnms.f32	s16, s1, s1
 2073 0048 8AB0     		sub	sp, sp, #40
 2074 004a 0446     		mov	r4, r0
 2075 004c D1EE016A 		vfnms.f32	s13, s2, s2
 2076 0050 0D46     		mov	r5, r1
 2077 0052 68EEC88A 		vnmul.f32	s17, s17, s16
 2078 0056 28EE228A 		vmul.f32	s16, s16, s5
 2079 005a E6EE668A 		vfms.f32	s17, s12, s13
 2080 005e B0EE476A 		vmov.f32	s12, s14
 2081 0062 90EE006A 		vfnms.f32	s12, s0, s0
 2082 0066 A3EE668A 		vfms.f32	s16, s6, s13
 2083 006a E3EEC68A 		vfms.f32	s17, s7, s12
 2084 006e A6EE048A 		vfma.f32	s16, s12, s8
 2085 0072 67EEE87A 		vnmul.f32	s15, s15, s17
 2086 0076 28EE089A 		vmul.f32	s18, s16, s16
 2087 007a E4EE887A 		vfma.f32	s15, s9, s16
 2088 007e A8EEA89A 		vfma.f32	s18, s17, s17
 2089 0082 67EE857A 		vmul.f32	s15, s15, s10
 2090 0086 F0EE006A 		vmov.f32	s13, #2.0e+0
 2091 008a 69EEC89A 		vnmul.f32	s19, s19, s16
 2092 008e A0EE407A 		vfms.f32	s14, s0, s0
 2093 0092 A7EEA69A 		vfma.f32	s18, s15, s13
 2094 0096 E5EEA89A 		vfma.f32	s19, s11, s17
 2095 009a D0ED486A 		vldr.32	s13, [r0, #288]
 2096 009e D0ED497A 		vldr.32	s15, [r0, #292]
 2097 00a2 A7EE269A 		vfma.f32	s18, s14, s13
 2098 00a6 18EE900A 		vmov	r0, s17
 2099 00aa 79EEE79A 		vsub.f32	s19, s19, s15
 2100 00ae F0EE60AA 		vmov.f32	s21, s1
 2101 00b2 B0EE41BA 		vmov.f32	s22, s2
 2102 00b6 B0EE40AA 		vmov.f32	s20, s0
 2103 00ba FFF7FEFF 		bl	__aeabi_f2d
 2104 00be 0646     		mov	r6, r0
 2105 00c0 19EE100A 		vmov	r0, s18
 2106 00c4 0F46     		mov	r7, r1
 2107 00c6 FFF7FEFF 		bl	__aeabi_f2d
 2108 00ca CDE90401 		strd	r0, [sp, #16]
 2109 00ce 19EE900A 		vmov	r0, s19
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 38


 2110 00d2 FFF7FEFF 		bl	__aeabi_f2d
 2111 00d6 CDE90201 		strd	r0, [sp, #8]
 2112 00da 18EE100A 		vmov	r0, s16
 2113 00de FFF7FEFF 		bl	__aeabi_f2d
 2114 00e2 3246     		mov	r2, r6
 2115 00e4 3B46     		mov	r3, r7
 2116 00e6 CDE90001 		strd	r0, [sp]
 2117 00ea 3D48     		ldr	r0, .L198
 2118 00ec FFF7FEFF 		bl	debugPrintf
 2119 00f0 2E46     		mov	r6, r5
 2120 00f2 05F10C07 		add	r7, r5, #12
 2121              	.L194:
 2122 00f6 56F8040B 		ldr	r0, [r6], #4	@ float
 2123 00fa FFF7FEFF 		bl	__aeabi_f2d
 2124 00fe 0246     		mov	r2, r0
 2125 0100 0B46     		mov	r3, r1
 2126 0102 4046     		mov	r0, r8
 2127 0104 FFF7FEFF 		bl	debugPrintf
 2128 0108 B742     		cmp	r7, r6
 2129 010a F4D1     		bne	.L194
 2130 010c D4ED4A6A 		vldr.32	s13, [r4, #296]
 2131 0110 29EE669A 		vnmul.f32	s18, s18, s13
 2132 0114 B1EE697A 		vneg.f32	s14, s19
 2133 0118 A9EEA99A 		vfma.f32	s18, s19, s19
 2134 011c B0EEC99A 		vabs.f32	s18, s18
 2135 0120 F1EEC97A 		vsqrt.f32	s15, s18
 2136 0124 37EE677A 		vsub.f32	s14, s14, s15
 2137 0128 C7EE267A 		vdiv.f32	s15, s14, s13
 2138 012c C5ED027A 		vstr.32	s15, [r5, #8]
 2139 0130 94ED467A 		vldr.32	s14, [r4, #280]
 2140 0134 D4ED456A 		vldr.32	s13, [r4, #276]
 2141 0138 E7EE878A 		vfma.f32	s17, s15, s14
 2142 013c 88EEA67A 		vdiv.f32	s14, s17, s13
 2143 0140 85ED007A 		vstr.32	s14, [r5]
 2144 0144 94ED476A 		vldr.32	s12, [r4, #284]
 2145 0148 D4ED456A 		vldr.32	s13, [r4, #276]
 2146 014c A7EE868A 		vfma.f32	s16, s15, s12
 2147 0150 17EE100A 		vmov	r0, s14
 2148 0154 C8EE267A 		vdiv.f32	s15, s16, s13
 2149 0158 C5ED017A 		vstr.32	s15, [r5, #4]
 2150 015c FFF7FEFF 		bl	__aeabi_f2d
 2151 0160 0246     		mov	r2, r0
 2152 0162 0B46     		mov	r3, r1
 2153 0164 1F48     		ldr	r0, .L198+4
 2154 0166 FFF7FEFF 		bl	debugPrintf
 2155 016a 6868     		ldr	r0, [r5, #4]	@ float
 2156 016c FFF7FEFF 		bl	__aeabi_f2d
 2157 0170 0246     		mov	r2, r0
 2158 0172 0B46     		mov	r3, r1
 2159 0174 1B48     		ldr	r0, .L198+4
 2160 0176 FFF7FEFF 		bl	debugPrintf
 2161 017a A868     		ldr	r0, [r5, #8]	@ float
 2162 017c FFF7FEFF 		bl	__aeabi_f2d
 2163 0180 0246     		mov	r2, r0
 2164 0182 0B46     		mov	r3, r1
 2165 0184 1748     		ldr	r0, .L198+4
 2166 0186 FFF7FEFF 		bl	debugPrintf
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 39


 2167 018a 1AEE100A 		vmov	r0, s20
 2168 018e FFF7FEFF 		bl	__aeabi_f2d
 2169 0192 0646     		mov	r6, r0
 2170 0194 A868     		ldr	r0, [r5, #8]	@ float
 2171 0196 0F46     		mov	r7, r1
 2172 0198 FFF7FEFF 		bl	__aeabi_f2d
 2173 019c CDE90801 		strd	r0, [sp, #32]
 2174 01a0 6868     		ldr	r0, [r5, #4]	@ float
 2175 01a2 FFF7FEFF 		bl	__aeabi_f2d
 2176 01a6 CDE90601 		strd	r0, [sp, #24]
 2177 01aa 2868     		ldr	r0, [r5]	@ float
 2178 01ac FFF7FEFF 		bl	__aeabi_f2d
 2179 01b0 CDE90401 		strd	r0, [sp, #16]
 2180 01b4 1BEE100A 		vmov	r0, s22
 2181 01b8 FFF7FEFF 		bl	__aeabi_f2d
 2182 01bc CDE90201 		strd	r0, [sp, #8]
 2183 01c0 1AEE900A 		vmov	r0, s21
 2184 01c4 FFF7FEFF 		bl	__aeabi_f2d
 2185 01c8 3246     		mov	r2, r6
 2186 01ca CDE90001 		strd	r0, [sp]
 2187 01ce 3B46     		mov	r3, r7
 2188 01d0 0548     		ldr	r0, .L198+8
 2189 01d2 FFF7FEFF 		bl	debugPrintf
 2190 01d6 0AB0     		add	sp, sp, #40
 2191              		@ sp needed
 2192 01d8 BDEC088B 		vldm	sp!, {d8-d11}
 2193 01dc BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2194              	.L199:
 2195              		.align	2
 2196              	.L198:
 2197 01e0 00000000 		.word	.LC23
 2198 01e4 64000000 		.word	.LC25
 2199 01e8 80000000 		.word	.LC26
 2200 01ec 44000000 		.word	.LC24
 2201              		.size	_ZNK21HangprinterKinematics16InverseTransformEfffPf, .-_ZNK21HangprinterKinematics16InverseT
 2202              		.section	.text._ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 2203              		.align	1
 2204              		.p2align 2,,3
 2205              		.global	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf
 2206              		.syntax unified
 2207              		.thumb
 2208              		.thumb_func
 2209              		.fpu fpv4-sp-d16
 2210              		.type	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 2211              	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 2212              		@ args = 8, pretend = 0, frame = 0
 2213              		@ frame_needed = 0, uses_anonymous_args = 0
 2214              		@ link register save eliminated.
 2215 0000 D1ED003A 		vldr.32	s7, [r1]	@ int
 2216 0004 91ED014A 		vldr.32	s8, [r1, #4]	@ int
 2217 0008 D1ED024A 		vldr.32	s9, [r1, #8]	@ int
 2218 000c 90ED287A 		vldr.32	s14, [r0, #160]
 2219 0010 D0ED297A 		vldr.32	s15, [r0, #164]
 2220 0014 90ED120A 		vldr.32	s0, [r0, #72]
 2221 0018 90ED2C5A 		vldr.32	s10, [r0, #176]
 2222 001c D0ED2D5A 		vldr.32	s11, [r0, #180]
 2223 0020 90ED2E6A 		vldr.32	s12, [r0, #184]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 40


 2224 0024 D0ED300A 		vldr.32	s1, [r0, #192]
 2225 0028 90ED311A 		vldr.32	s2, [r0, #196]
 2226 002c D0ED321A 		vldr.32	s3, [r0, #200]
 2227 0030 90ED342A 		vldr.32	s4, [r0, #208]
 2228 0034 D0ED352A 		vldr.32	s5, [r0, #212]
 2229 0038 90ED363A 		vldr.32	s6, [r0, #216]
 2230 003c 2DED048B 		vpush.64	{d8, d9}
 2231 0040 F8EEE33A 		vcvt.f32.s32	s7, s7
 2232 0044 90ED2A9A 		vldr.32	s18, [r0, #168]
 2233 0048 D0ED108A 		vldr.32	s17, [r0, #64]
 2234 004c 90ED118A 		vldr.32	s16, [r0, #68]
 2235 0050 0599     		ldr	r1, [sp, #20]
 2236 0052 B8EEC44A 		vcvt.f32.s32	s8, s8
 2237 0056 F8EEE44A 		vcvt.f32.s32	s9, s9
 2238 005a C3EE876A 		vdiv.f32	s13, s7, s14
 2239 005e 84EE277A 		vdiv.f32	s14, s8, s15
 2240 0062 C4EE897A 		vdiv.f32	s15, s9, s18
 2241 0066 76EEA86A 		vadd.f32	s13, s13, s17
 2242 006a 37EE087A 		vadd.f32	s14, s14, s16
 2243 006e 77EE807A 		vadd.f32	s15, s15, s0
 2244 0072 96EEA65A 		vfnms.f32	s10, s13, s13
 2245 0076 BDEC048B 		vldm	sp!, {d8-d9}
 2246 007a D7EE075A 		vfnms.f32	s11, s14, s14
 2247 007e 97EEA76A 		vfnms.f32	s12, s15, s15
 2248 0082 85EE200A 		vdiv.f32	s0, s10, s1
 2249 0086 C5EE810A 		vdiv.f32	s1, s11, s2
 2250 008a 86EE211A 		vdiv.f32	s2, s12, s3
 2251 008e 30EE020A 		vadd.f32	s0, s0, s4
 2252 0092 70EEA20A 		vadd.f32	s1, s1, s5
 2253 0096 31EE031A 		vadd.f32	s2, s2, s6
 2254 009a FFF7FEBF 		b	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2255              		.size	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK21HangprinterKinematics
 2256              		.global	__aeabi_dsub
 2257              		.global	__aeabi_ddiv
 2258 009e 00BF     		.section	.text._ZNK21HangprinterKinematics17ComputeDerivativeEjfff,"ax",%progbits
 2259              		.align	1
 2260              		.p2align 2,,3
 2261              		.global	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 2262              		.syntax unified
 2263              		.thumb
 2264              		.thumb_func
 2265              		.fpu fpv4-sp-d16
 2266              		.type	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff, %function
 2267              	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff:
 2268              		@ args = 0, pretend = 0, frame = 664
 2269              		@ frame_needed = 0, uses_anonymous_args = 0
 2270 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2271 0004 2DED068B 		vpush.64	{d8, d9, d10}
 2272 0008 00F11003 		add	r3, r0, #16
 2273 000c ADF5277D 		sub	sp, sp, #668
 2274 0010 0446     		mov	r4, r0
 2275 0012 CDE90013 		strd	r1, r3, [sp]
 2276 0016 93E80700 		ldm	r3, {r0, r1, r2}
 2277 001a 04F11C05 		add	r5, r4, #28
 2278 001e 12AB     		add	r3, sp, #72
 2279 0020 83E80700 		stm	r3, {r0, r1, r2}
 2280 0024 95E80700 		ldm	r5, {r0, r1, r2}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 41


 2281 0028 04F12806 		add	r6, r4, #40
 2282 002c 15AB     		add	r3, sp, #84
 2283 002e 83E80700 		stm	r3, {r0, r1, r2}
 2284 0032 96E80700 		ldm	r6, {r0, r1, r2}
 2285 0036 94ED017A 		vldr.32	s14, [r4, #4]
 2286 003a D4ED027A 		vldr.32	s15, [r4, #8]
 2287 003e 0396     		str	r6, [sp, #12]
 2288 0040 18AB     		add	r3, sp, #96
 2289 0042 04F14006 		add	r6, r4, #64
 2290 0046 83E80700 		stm	r3, {r0, r1, r2}
 2291 004a D549     		ldr	r1, .L229+8
 2292 004c 94ED0D9A 		vldr.32	s18, [r4, #52]
 2293 0050 94F80CB0 		ldrb	fp, [r4, #12]	@ zero_extendqisi2
 2294 0054 94F80DA0 		ldrb	r10, [r4, #13]	@ zero_extendqisi2
 2295 0058 94F80E90 		ldrb	r9, [r4, #14]	@ zero_extendqisi2
 2296 005c 94F80F80 		ldrb	r8, [r4, #15]	@ zero_extendqisi2
 2297 0060 0295     		str	r5, [sp, #8]
 2298 0062 8DED0F7A 		vstr.32	s14, [sp, #60]
 2299 0066 CDED107A 		vstr.32	s15, [sp, #64]
 2300 006a 0E91     		str	r1, [sp, #56]
 2301 006c 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 2302 0070 04F15007 		add	r7, r4, #80
 2303 0074 1EAD     		add	r5, sp, #120
 2304 0076 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2305 007a 97E80F00 		ldm	r7, {r0, r1, r2, r3}
 2306 007e 04F1600C 		add	ip, r4, #96
 2307 0082 22AD     		add	r5, sp, #136
 2308 0084 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2309 0088 9CE80F00 		ldm	ip, {r0, r1, r2, r3}
 2310 008c CDF818C0 		str	ip, [sp, #24]
 2311 0090 26AD     		add	r5, sp, #152
 2312 0092 04F1700C 		add	ip, r4, #112
 2313 0096 8DF844B0 		strb	fp, [sp, #68]
 2314 009a 8DF845A0 		strb	r10, [sp, #69]
 2315 009e 8DF84690 		strb	r9, [sp, #70]
 2316 00a2 8DED1B9A 		vstr.32	s18, [sp, #108]
 2317 00a6 0496     		str	r6, [sp, #16]
 2318 00a8 0597     		str	r7, [sp, #20]
 2319 00aa 8DF84780 		strb	r8, [sp, #71]
 2320 00ae 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2321 00b2 9CE80F00 		ldm	ip, {r0, r1, r2, r3}
 2322 00b6 CDF81CC0 		str	ip, [sp, #28]
 2323 00ba 2AAD     		add	r5, sp, #168
 2324 00bc 04F1800C 		add	ip, r4, #128
 2325 00c0 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2326 00c4 9CE80F00 		ldm	ip, {r0, r1, r2, r3}
 2327 00c8 CDF820C0 		str	ip, [sp, #32]
 2328 00cc 2EAD     		add	r5, sp, #184
 2329 00ce 04F1900C 		add	ip, r4, #144
 2330 00d2 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2331 00d6 9CE80F00 		ldm	ip, {r0, r1, r2, r3}
 2332 00da D4ED0E8A 		vldr.32	s17, [r4, #56]
 2333 00de 94ED0F8A 		vldr.32	s16, [r4, #60]
 2334 00e2 CDED1C8A 		vstr.32	s17, [sp, #112]
 2335 00e6 04F1A00E 		add	lr, r4, #160
 2336 00ea 32AD     		add	r5, sp, #200
 2337 00ec 8DED1D8A 		vstr.32	s16, [sp, #116]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 42


 2338 00f0 CDF824C0 		str	ip, [sp, #36]
 2339 00f4 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2340 00f8 9EE80F00 		ldm	lr, {r0, r1, r2, r3}
 2341 00fc 04F1B007 		add	r7, r4, #176
 2342 0100 36AD     		add	r5, sp, #216
 2343 0102 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2344 0106 97E80F00 		ldm	r7, {r0, r1, r2, r3}
 2345 010a 04F1C006 		add	r6, r4, #192
 2346 010e 3AAD     		add	r5, sp, #232
 2347 0110 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2348 0114 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 2349 0118 04F1D005 		add	r5, r4, #208
 2350 011c 0DF1F80C 		add	ip, sp, #248
 2351 0120 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2352 0124 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 2353 0128 D4ED38AA 		vldr.32	s21, [r4, #224]
 2354 012c 94ED39AA 		vldr.32	s20, [r4, #228]
 2355 0130 D4ED3A9A 		vldr.32	s19, [r4, #232]
 2356 0134 D4ED3B1A 		vldr.32	s3, [r4, #236]
 2357 0138 94ED3C2A 		vldr.32	s4, [r4, #240]
 2358 013c D4ED3D2A 		vldr.32	s5, [r4, #244]
 2359 0140 94ED3E3A 		vldr.32	s6, [r4, #248]
 2360 0144 D4ED3F3A 		vldr.32	s7, [r4, #252]
 2361 0148 94ED404A 		vldr.32	s8, [r4, #256]
 2362 014c D4ED414A 		vldr.32	s9, [r4, #260]
 2363 0150 94ED425A 		vldr.32	s10, [r4, #264]
 2364 0154 D4ED435A 		vldr.32	s11, [r4, #268]
 2365 0158 94ED446A 		vldr.32	s12, [r4, #272]
 2366 015c D4ED456A 		vldr.32	s13, [r4, #276]
 2367 0160 8DED5B7A 		vstr.32	s14, [sp, #364]
 2368 0164 0DF5847C 		add	ip, sp, #264
 2369 0168 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2370 016c 94ED467A 		vldr.32	s14, [r4, #280]
 2371 0170 CDED5C7A 		vstr.32	s15, [sp, #368]
 2372 0174 8DF874B1 		strb	fp, [sp, #372]
 2373 0178 D4ED477A 		vldr.32	s15, [r4, #284]
 2374 017c D4F820B1 		ldr	fp, [r4, #288]	@ float
 2375 0180 8DF875A1 		strb	r10, [sp, #373]
 2376 0184 8DF87691 		strb	r9, [sp, #374]
 2377 0188 D4F824A1 		ldr	r10, [r4, #292]	@ float
 2378 018c D4F82891 		ldr	r9, [r4, #296]	@ float
 2379 0190 CDED46AA 		vstr.32	s21, [sp, #280]
 2380 0194 94F82C41 		ldrb	r4, [r4, #300]	@ zero_extendqisi2
 2381 0198 8DED47AA 		vstr.32	s20, [sp, #284]
 2382 019c CDED489A 		vstr.32	s19, [sp, #288]
 2383 01a0 CDED491A 		vstr.32	s3, [sp, #292]
 2384 01a4 8DED4A2A 		vstr.32	s4, [sp, #296]
 2385 01a8 CDED4B2A 		vstr.32	s5, [sp, #300]
 2386 01ac 8DED4C3A 		vstr.32	s6, [sp, #304]
 2387 01b0 CDED4D3A 		vstr.32	s7, [sp, #308]
 2388 01b4 8DF87781 		strb	r8, [sp, #375]
 2389 01b8 019A     		ldr	r2, [sp, #4]
 2390 01ba 7949     		ldr	r1, .L229+8
 2391 01bc 5A91     		str	r1, [sp, #360]
 2392 01be 07CA     		ldm	r2, {r0, r1, r2}
 2393 01c0 5EAB     		add	r3, sp, #376
 2394 01c2 83E80700 		stm	r3, {r0, r1, r2}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 43


 2395 01c6 0298     		ldr	r0, [sp, #8]
 2396 01c8 8DED4E4A 		vstr.32	s8, [sp, #312]
 2397 01cc 07C8     		ldm	r0, {r0, r1, r2}
 2398 01ce 61AB     		add	r3, sp, #388
 2399 01d0 83E80700 		stm	r3, {r0, r1, r2}
 2400 01d4 039B     		ldr	r3, [sp, #12]
 2401 01d6 CDED4F4A 		vstr.32	s9, [sp, #316]
 2402 01da 93E80700 		ldm	r3, {r0, r1, r2}
 2403 01de 64AB     		add	r3, sp, #400
 2404 01e0 8DED505A 		vstr.32	s10, [sp, #320]
 2405 01e4 CDED515A 		vstr.32	s11, [sp, #324]
 2406 01e8 8DED526A 		vstr.32	s12, [sp, #328]
 2407 01ec CDED536A 		vstr.32	s13, [sp, #332]
 2408 01f0 8DED547A 		vstr.32	s14, [sp, #336]
 2409 01f4 CDED557A 		vstr.32	s15, [sp, #340]
 2410 01f8 CDF858B1 		str	fp, [sp, #344]	@ float
 2411 01fc CDF85CA1 		str	r10, [sp, #348]	@ float
 2412 0200 CDF86091 		str	r9, [sp, #352]	@ float
 2413 0204 8DF86441 		strb	r4, [sp, #356]
 2414 0208 83E80700 		stm	r3, {r0, r1, r2}
 2415 020c 049B     		ldr	r3, [sp, #16]
 2416 020e 8DED679A 		vstr.32	s18, [sp, #412]
 2417 0212 0FCB     		ldm	r3, {r0, r1, r2, r3}
 2418 0214 0DF5D47C 		add	ip, sp, #424
 2419 0218 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2420 021c 059B     		ldr	r3, [sp, #20]
 2421 021e CDED688A 		vstr.32	s17, [sp, #416]
 2422 0222 0FCB     		ldm	r3, {r0, r1, r2, r3}
 2423 0224 0DF5DC7C 		add	ip, sp, #440
 2424 0228 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2425 022c 069B     		ldr	r3, [sp, #24]
 2426 022e 8DED698A 		vstr.32	s16, [sp, #420]
 2427 0232 0FCB     		ldm	r3, {r0, r1, r2, r3}
 2428 0234 0DF5E47C 		add	ip, sp, #456
 2429 0238 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2430 023c 079A     		ldr	r2, [sp, #28]
 2431 023e 0FCA     		ldm	r2, {r0, r1, r2, r3}
 2432 0240 0DF5EC7C 		add	ip, sp, #472
 2433 0244 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2434 0248 0898     		ldr	r0, [sp, #32]
 2435 024a 0FC8     		ldm	r0, {r0, r1, r2, r3}
 2436 024c 0DF5F47C 		add	ip, sp, #488
 2437 0250 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2438 0254 099B     		ldr	r3, [sp, #36]
 2439 0256 0FCB     		ldm	r3, {r0, r1, r2, r3}
 2440 0258 0DF5FC7C 		add	ip, sp, #504
 2441 025c 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2442 0260 9EE80F00 		ldm	lr, {r0, r1, r2, r3}
 2443 0264 0DF5027C 		add	ip, sp, #520
 2444 0268 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 2445 026c 97E80F00 		ldm	r7, {r0, r1, r2, r3}
 2446 0270 86AF     		add	r7, sp, #536
 2447 0272 87E80F00 		stm	r7, {r0, r1, r2, r3}
 2448 0276 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 2449 027a 8AAE     		add	r6, sp, #552
 2450 027c 86E80F00 		stm	r6, {r0, r1, r2, r3}
 2451 0280 95E80F00 		ldm	r5, {r0, r1, r2, r3}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 44


 2452 0284 009E     		ldr	r6, [sp]
 2453 0286 CDED92AA 		vstr.32	s21, [sp, #584]
 2454 028a 8EAD     		add	r5, sp, #568
 2455 028c 033E     		subs	r6, r6, #3
 2456 028e 8DED93AA 		vstr.32	s20, [sp, #588]
 2457 0292 CDED949A 		vstr.32	s19, [sp, #592]
 2458 0296 CDED951A 		vstr.32	s3, [sp, #596]
 2459 029a 8DED962A 		vstr.32	s4, [sp, #600]
 2460 029e CDED972A 		vstr.32	s5, [sp, #604]
 2461 02a2 8DED983A 		vstr.32	s6, [sp, #608]
 2462 02a6 CDED993A 		vstr.32	s7, [sp, #612]
 2463 02aa 8DED9A4A 		vstr.32	s8, [sp, #616]
 2464 02ae CDED9B4A 		vstr.32	s9, [sp, #620]
 2465 02b2 B0EE408A 		vmov.f32	s16, s0
 2466 02b6 8DED9C5A 		vstr.32	s10, [sp, #624]
 2467 02ba B0EE609A 		vmov.f32	s18, s1
 2468 02be F0EE418A 		vmov.f32	s17, s2
 2469 02c2 CDED9D5A 		vstr.32	s11, [sp, #628]
 2470 02c6 8DED9E6A 		vstr.32	s12, [sp, #632]
 2471 02ca CDED9F6A 		vstr.32	s13, [sp, #636]
 2472 02ce 8DEDA07A 		vstr.32	s14, [sp, #640]
 2473 02d2 CDEDA17A 		vstr.32	s15, [sp, #644]
 2474 02d6 CDF888B2 		str	fp, [sp, #648]	@ float
 2475 02da CDF88CA2 		str	r10, [sp, #652]	@ float
 2476 02de CDF89092 		str	r9, [sp, #656]	@ float
 2477 02e2 8DF89442 		strb	r4, [sp, #660]
 2478 02e6 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2479 02ea 052E     		cmp	r6, #5
 2480 02ec 00F2B080 		bhi	.L203
 2481 02f0 DFE806F0 		tbb	[pc, r6]
 2482              	.L205:
 2483 02f4 6F       		.byte	(.L204-.L205)/2
 2484 02f5 84       		.byte	(.L206-.L205)/2
 2485 02f6 99       		.byte	(.L207-.L205)/2
 2486 02f7 5A       		.byte	(.L208-.L205)/2
 2487 02f8 03       		.byte	(.L210-.L205)/2
 2488 02f9 03       		.byte	(.L210-.L205)/2
 2489              		.p2align 1
 2490              	.L210:
 2491 02fa 9DED177A 		vldr.32	s14, [sp, #92]
 2492 02fe DFED296A 		vldr.32	s13, .L229+12
 2493 0302 DDED637A 		vldr.32	s15, [sp, #396]
 2494 0306 37EE267A 		vadd.f32	s14, s14, s13
 2495 030a 77EEE67A 		vsub.f32	s15, s15, s13
 2496 030e 0EA8     		add	r0, sp, #56
 2497 0310 8DED177A 		vstr.32	s14, [sp, #92]
 2498 0314 CDED637A 		vstr.32	s15, [sp, #396]
 2499 0318 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2500 031c 5AA8     		add	r0, sp, #360
 2501 031e FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2502              	.L211:
 2503 0322 0BAC     		add	r4, sp, #44
 2504 0324 0EA8     		add	r0, sp, #56
 2505 0326 2146     		mov	r1, r4
 2506 0328 B0EE681A 		vmov.f32	s2, s17
 2507 032c F0EE490A 		vmov.f32	s1, s18
 2508 0330 B0EE480A 		vmov.f32	s0, s16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 45


 2509 0334 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2510 0338 009B     		ldr	r3, [sp]
 2511 033a A568     		ldr	r5, [r4, #8]	@ float
 2512 033c 002B     		cmp	r3, #0
 2513 033e 40F0B280 		bne	.L219
 2514              	.L213:
 2515 0342 DFED187A 		vldr.32	s15, .L229+12
 2516 0346 38EE678A 		vsub.f32	s16, s16, s15
 2517              	.L217:
 2518 034a F0EE490A 		vmov.f32	s1, s18
 2519 034e B0EE480A 		vmov.f32	s0, s16
 2520 0352 B0EE681A 		vmov.f32	s2, s17
 2521 0356 5AA8     		add	r0, sp, #360
 2522 0358 2146     		mov	r1, r4
 2523 035a FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2524 035e 2846     		mov	r0, r5	@ float
 2525 0360 FFF7FEFF 		bl	__aeabi_f2d
 2526 0364 0646     		mov	r6, r0
 2527 0366 A068     		ldr	r0, [r4, #8]	@ float
 2528 0368 0F46     		mov	r7, r1
 2529 036a FFF7FEFF 		bl	__aeabi_f2d
 2530 036e 0246     		mov	r2, r0
 2531 0370 0B46     		mov	r3, r1
 2532 0372 3046     		mov	r0, r6
 2533 0374 3946     		mov	r1, r7
 2534 0376 FFF7FEFF 		bl	__aeabi_dsub
 2535 037a 07A3     		adr	r3, .L229
 2536 037c D3E90023 		ldrd	r2, [r3]
 2537 0380 FFF7FEFF 		bl	__aeabi_ddiv
 2538 0384 41EC100B 		vmov	d0, r0, r1
 2539 0388 0DF5277D 		add	sp, sp, #668
 2540              		@ sp needed
 2541 038c BDEC068B 		vldm	sp!, {d8-d10}
 2542 0390 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2543              	.L230:
 2544 0394 AFF30080 		.align	3
 2545              	.L229:
 2546 0398 000000A0 		.word	-1610612736
 2547 039c 9999D93F 		.word	1071225241
 2548 03a0 08000000 		.word	.LANCHOR4+8
 2549 03a4 CDCC4C3E 		.word	1045220557
 2550              	.L208:
 2551 03a8 9DED147A 		vldr.32	s14, [sp, #80]
 2552 03ac 5FED036A 		vldr.32	s13, .L229+12
 2553 03b0 DDED607A 		vldr.32	s15, [sp, #384]
 2554 03b4 37EE267A 		vadd.f32	s14, s14, s13
 2555 03b8 77EEE67A 		vsub.f32	s15, s15, s13
 2556 03bc 0EA8     		add	r0, sp, #56
 2557 03be 8DED147A 		vstr.32	s14, [sp, #80]
 2558 03c2 CDED607A 		vstr.32	s15, [sp, #384]
 2559 03c6 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2560 03ca 5AA8     		add	r0, sp, #360
 2561 03cc FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2562 03d0 A7E7     		b	.L211
 2563              	.L204:
 2564 03d2 9DED167A 		vldr.32	s14, [sp, #88]
 2565 03d6 5FED0D6A 		vldr.32	s13, .L229+12
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 46


 2566 03da DDED627A 		vldr.32	s15, [sp, #392]
 2567 03de 37EE267A 		vadd.f32	s14, s14, s13
 2568 03e2 77EEE67A 		vsub.f32	s15, s15, s13
 2569 03e6 0EA8     		add	r0, sp, #56
 2570 03e8 8DED167A 		vstr.32	s14, [sp, #88]
 2571 03ec CDED627A 		vstr.32	s15, [sp, #392]
 2572 03f0 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2573 03f4 5AA8     		add	r0, sp, #360
 2574 03f6 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2575 03fa 92E7     		b	.L211
 2576              	.L206:
 2577 03fc 9DED187A 		vldr.32	s14, [sp, #96]
 2578 0400 5FED186A 		vldr.32	s13, .L229+12
 2579 0404 DDED647A 		vldr.32	s15, [sp, #400]
 2580 0408 37EE267A 		vadd.f32	s14, s14, s13
 2581 040c 77EEE67A 		vsub.f32	s15, s15, s13
 2582 0410 0EA8     		add	r0, sp, #56
 2583 0412 8DED187A 		vstr.32	s14, [sp, #96]
 2584 0416 CDED647A 		vstr.32	s15, [sp, #400]
 2585 041a FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2586 041e 5AA8     		add	r0, sp, #360
 2587 0420 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2588 0424 7DE7     		b	.L211
 2589              	.L207:
 2590 0426 9DED197A 		vldr.32	s14, [sp, #100]
 2591 042a 5FED226A 		vldr.32	s13, .L229+12
 2592 042e DDED657A 		vldr.32	s15, [sp, #404]
 2593 0432 37EE267A 		vadd.f32	s14, s14, s13
 2594 0436 77EEE67A 		vsub.f32	s15, s15, s13
 2595 043a 0EA8     		add	r0, sp, #56
 2596 043c 8DED197A 		vstr.32	s14, [sp, #100]
 2597 0440 CDED657A 		vstr.32	s15, [sp, #404]
 2598 0444 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2599 0448 5AA8     		add	r0, sp, #360
 2600 044a FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2601 044e 68E7     		b	.L211
 2602              	.L203:
 2603 0450 009B     		ldr	r3, [sp]
 2604 0452 53B9     		cbnz	r3, .L212
 2605 0454 1FED2D0A 		vldr.32	s0, .L229+12
 2606 0458 0BAC     		add	r4, sp, #44
 2607 045a 0EA8     		add	r0, sp, #56
 2608 045c 38EE000A 		vadd.f32	s0, s16, s0
 2609 0460 2146     		mov	r1, r4
 2610 0462 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2611 0466 A568     		ldr	r5, [r4, #8]	@ float
 2612 0468 6BE7     		b	.L213
 2613              	.L212:
 2614 046a 009B     		ldr	r3, [sp]
 2615 046c 012B     		cmp	r3, #1
 2616 046e 26D1     		bne	.L214
 2617 0470 5FED340A 		vldr.32	s1, .L229+12
 2618 0474 0BAC     		add	r4, sp, #44
 2619 0476 0EA8     		add	r0, sp, #56
 2620 0478 79EE200A 		vadd.f32	s1, s18, s1
 2621 047c 2146     		mov	r1, r4
 2622 047e FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 47


 2623 0482 A568     		ldr	r5, [r4, #8]	@ float
 2624              	.L215:
 2625 0484 5FED397A 		vldr.32	s15, .L229+12
 2626 0488 39EE679A 		vsub.f32	s18, s18, s15
 2627 048c 5DE7     		b	.L217
 2628              	.L228:
 2629 048e 0BAC     		add	r4, sp, #44
 2630 0490 0EA8     		add	r0, sp, #56
 2631 0492 2146     		mov	r1, r4
 2632 0494 B0EE681A 		vmov.f32	s2, s17
 2633 0498 F0EE490A 		vmov.f32	s1, s18
 2634 049c B0EE480A 		vmov.f32	s0, s16
 2635 04a0 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2636 04a4 A568     		ldr	r5, [r4, #8]	@ float
 2637              	.L219:
 2638 04a6 009B     		ldr	r3, [sp]
 2639 04a8 012B     		cmp	r3, #1
 2640 04aa EBD0     		beq	.L215
 2641 04ac 009B     		ldr	r3, [sp]
 2642 04ae 022B     		cmp	r3, #2
 2643 04b0 7FF44BAF 		bne	.L217
 2644              	.L216:
 2645 04b4 5FED457A 		vldr.32	s15, .L229+12
 2646 04b8 78EEE78A 		vsub.f32	s17, s17, s15
 2647 04bc 45E7     		b	.L217
 2648              	.L214:
 2649 04be 009B     		ldr	r3, [sp]
 2650 04c0 022B     		cmp	r3, #2
 2651 04c2 E4D1     		bne	.L228
 2652 04c4 1FED491A 		vldr.32	s2, .L229+12
 2653 04c8 0BAC     		add	r4, sp, #44
 2654 04ca 0EA8     		add	r0, sp, #56
 2655 04cc 38EE811A 		vadd.f32	s2, s17, s2
 2656 04d0 2146     		mov	r1, r4
 2657 04d2 F0EE490A 		vmov.f32	s1, s18
 2658 04d6 B0EE480A 		vmov.f32	s0, s16
 2659 04da FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2660 04de A568     		ldr	r5, [r4, #8]	@ float
 2661 04e0 E8E7     		b	.L216
 2662              		.size	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff, .-_ZNK21HangprinterKinematics17ComputeD
 2663              		.global	__aeabi_d2f
 2664 04e2 00BF     		.section	.text._ZN21HangprinterKinematics6AdjustEjPKd,"ax",%progbits
 2665              		.align	1
 2666              		.p2align 2,,3
 2667              		.global	_ZN21HangprinterKinematics6AdjustEjPKd
 2668              		.syntax unified
 2669              		.thumb
 2670              		.thumb_func
 2671              		.fpu fpv4-sp-d16
 2672              		.type	_ZN21HangprinterKinematics6AdjustEjPKd, %function
 2673              	_ZN21HangprinterKinematics6AdjustEjPKd:
 2674              		@ args = 0, pretend = 0, frame = 0
 2675              		@ frame_needed = 0, uses_anonymous_args = 0
 2676 0000 0329     		cmp	r1, #3
 2677 0002 70B5     		push	{r4, r5, r6, lr}
 2678 0004 0446     		mov	r4, r0
 2679 0006 53D9     		bls	.L233
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 48


 2680 0008 0D46     		mov	r5, r1
 2681 000a D2E90601 		ldrd	r0, [r2, #24]
 2682 000e 1646     		mov	r6, r2
 2683 0010 FFF7FEFF 		bl	__aeabi_d2f
 2684 0014 D4ED087A 		vldr.32	s15, [r4, #32]
 2685 0018 07EE100A 		vmov	s14, r0
 2686 001c 77EE877A 		vadd.f32	s15, s15, s14
 2687 0020 042D     		cmp	r5, #4
 2688 0022 C4ED087A 		vstr.32	s15, [r4, #32]
 2689 0026 43D0     		beq	.L233
 2690 0028 D6E90801 		ldrd	r0, [r6, #32]
 2691 002c FFF7FEFF 		bl	__aeabi_d2f
 2692 0030 D4ED0A7A 		vldr.32	s15, [r4, #40]
 2693 0034 07EE100A 		vmov	s14, r0
 2694 0038 77EE877A 		vadd.f32	s15, s15, s14
 2695 003c 052D     		cmp	r5, #5
 2696 003e C4ED0A7A 		vstr.32	s15, [r4, #40]
 2697 0042 35D0     		beq	.L233
 2698 0044 D6E90A01 		ldrd	r0, [r6, #40]
 2699 0048 FFF7FEFF 		bl	__aeabi_d2f
 2700 004c D4ED0B7A 		vldr.32	s15, [r4, #44]
 2701 0050 07EE100A 		vmov	s14, r0
 2702 0054 77EE877A 		vadd.f32	s15, s15, s14
 2703 0058 062D     		cmp	r5, #6
 2704 005a C4ED0B7A 		vstr.32	s15, [r4, #44]
 2705 005e 27D0     		beq	.L233
 2706 0060 D6E90C01 		ldrd	r0, [r6, #48]
 2707 0064 FFF7FEFF 		bl	__aeabi_d2f
 2708 0068 D4ED067A 		vldr.32	s15, [r4, #24]
 2709 006c 07EE100A 		vmov	s14, r0
 2710 0070 77EE877A 		vadd.f32	s15, s15, s14
 2711 0074 072D     		cmp	r5, #7
 2712 0076 C4ED067A 		vstr.32	s15, [r4, #24]
 2713 007a 19D0     		beq	.L233
 2714 007c D6E90E01 		ldrd	r0, [r6, #56]
 2715 0080 FFF7FEFF 		bl	__aeabi_d2f
 2716 0084 D4ED097A 		vldr.32	s15, [r4, #36]
 2717 0088 07EE100A 		vmov	s14, r0
 2718 008c 77EE877A 		vadd.f32	s15, s15, s14
 2719 0090 082D     		cmp	r5, #8
 2720 0092 C4ED097A 		vstr.32	s15, [r4, #36]
 2721 0096 0BD0     		beq	.L233
 2722 0098 D6E91001 		ldrd	r0, [r6, #64]
 2723 009c FFF7FEFF 		bl	__aeabi_d2f
 2724 00a0 D4ED0C7A 		vldr.32	s15, [r4, #48]
 2725 00a4 07EE100A 		vmov	s14, r0
 2726 00a8 77EE877A 		vadd.f32	s15, s15, s14
 2727 00ac C4ED0C7A 		vstr.32	s15, [r4, #48]
 2728              	.L233:
 2729 00b0 2046     		mov	r0, r4
 2730 00b2 BDE87040 		pop	{r4, r5, r6, lr}
 2731 00b6 FFF7FEBF 		b	_ZN21HangprinterKinematics6RecalcEv
 2732              		.size	_ZN21HangprinterKinematics6AdjustEjPKd, .-_ZN21HangprinterKinematics6AdjustEjPKd
 2733 00ba 00BF     		.section	.text._ZNK21HangprinterKinematics15PrintParametersERK9StringRef,"ax",%progbits
 2734              		.align	1
 2735              		.p2align 2,,3
 2736              		.global	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 49


 2737              		.syntax unified
 2738              		.thumb
 2739              		.thumb_func
 2740              		.fpu fpv4-sp-d16
 2741              		.type	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef, %function
 2742              	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef:
 2743              		@ args = 0, pretend = 0, frame = 0
 2744              		@ frame_needed = 0, uses_anonymous_args = 0
 2745 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2746 0002 0446     		mov	r4, r0
 2747 0004 91B0     		sub	sp, sp, #68
 2748 0006 0069     		ldr	r0, [r0, #16]	@ float
 2749 0008 0D46     		mov	r5, r1
 2750 000a FFF7FEFF 		bl	__aeabi_f2d
 2751 000e 0646     		mov	r6, r0
 2752 0010 206B     		ldr	r0, [r4, #48]	@ float
 2753 0012 0F46     		mov	r7, r1
 2754 0014 FFF7FEFF 		bl	__aeabi_f2d
 2755 0018 CDE90E01 		strd	r0, [sp, #56]
 2756 001c E06A     		ldr	r0, [r4, #44]	@ float
 2757 001e FFF7FEFF 		bl	__aeabi_f2d
 2758 0022 CDE90C01 		strd	r0, [sp, #48]
 2759 0026 A06A     		ldr	r0, [r4, #40]	@ float
 2760 0028 FFF7FEFF 		bl	__aeabi_f2d
 2761 002c CDE90A01 		strd	r0, [sp, #40]
 2762 0030 606A     		ldr	r0, [r4, #36]	@ float
 2763 0032 FFF7FEFF 		bl	__aeabi_f2d
 2764 0036 CDE90801 		strd	r0, [sp, #32]
 2765 003a 206A     		ldr	r0, [r4, #32]	@ float
 2766 003c FFF7FEFF 		bl	__aeabi_f2d
 2767 0040 CDE90601 		strd	r0, [sp, #24]
 2768 0044 E069     		ldr	r0, [r4, #28]	@ float
 2769 0046 FFF7FEFF 		bl	__aeabi_f2d
 2770 004a CDE90401 		strd	r0, [sp, #16]
 2771 004e A069     		ldr	r0, [r4, #24]	@ float
 2772 0050 FFF7FEFF 		bl	__aeabi_f2d
 2773 0054 CDE90201 		strd	r0, [sp, #8]
 2774 0058 6069     		ldr	r0, [r4, #20]	@ float
 2775 005a FFF7FEFF 		bl	__aeabi_f2d
 2776 005e 3246     		mov	r2, r6
 2777 0060 CDE90001 		strd	r0, [sp]
 2778 0064 3B46     		mov	r3, r7
 2779 0066 2846     		mov	r0, r5
 2780 0068 0249     		ldr	r1, .L253
 2781 006a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2782 006e 11B0     		add	sp, sp, #68
 2783              		@ sp needed
 2784 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 2785              	.L254:
 2786 0072 00BF     		.align	2
 2787              	.L253:
 2788 0074 00000000 		.word	.LC27
 2789              		.size	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef, .-_ZNK21HangprinterKinematics15Pr
 2790              		.section	.text._ZN6StringILj200EE6printfEPKcz,"axG",%progbits,_ZN6StringILj200EE6printfEPKcz,comda
 2791              		.align	1
 2792              		.p2align 2,,3
 2793              		.weak	_ZN6StringILj200EE6printfEPKcz
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 50


 2794              		.syntax unified
 2795              		.thumb
 2796              		.thumb_func
 2797              		.fpu fpv4-sp-d16
 2798              		.type	_ZN6StringILj200EE6printfEPKcz, %function
 2799              	_ZN6StringILj200EE6printfEPKcz:
 2800              		@ args = 4, pretend = 12, frame = 16
 2801              		@ frame_needed = 0, uses_anonymous_args = 1
 2802 0000 0EB4     		push	{r1, r2, r3}
 2803 0002 00B5     		push	{lr}
 2804 0004 84B0     		sub	sp, sp, #16
 2805 0006 05AA     		add	r2, sp, #20
 2806 0008 0290     		str	r0, [sp, #8]
 2807 000a 52F8041B 		ldr	r1, [r2], #4
 2808 000e 0192     		str	r2, [sp, #4]
 2809 0010 C923     		movs	r3, #201
 2810 0012 02A8     		add	r0, sp, #8
 2811 0014 0393     		str	r3, [sp, #12]
 2812 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 2813 001a 04B0     		add	sp, sp, #16
 2814              		@ sp needed
 2815 001c 5DF804EB 		ldr	lr, [sp], #4
 2816 0020 03B0     		add	sp, sp, #12
 2817 0022 7047     		bx	lr
 2818              		.size	_ZN6StringILj200EE6printfEPKcz, .-_ZN6StringILj200EE6printfEPKcz
 2819              		.section	.text._ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore,"ax",%progbits
 2820              		.align	1
 2821              		.p2align 2,,3
 2822              		.global	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore
 2823              		.syntax unified
 2824              		.thumb
 2825              		.thumb_func
 2826              		.fpu fpv4-sp-d16
 2827              		.type	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore, %function
 2828              	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore:
 2829              		@ args = 0, pretend = 0, frame = 208
 2830              		@ frame_needed = 0, uses_anonymous_args = 0
 2831 0000 2DE97043 		push	{r4, r5, r6, r8, r9, lr}
 2832 0004 0D46     		mov	r5, r1
 2833 0006 D2B0     		sub	sp, sp, #328
 2834 0008 0446     		mov	r4, r0
 2835 000a 3349     		ldr	r1, .L263
 2836 000c 2846     		mov	r0, r5
 2837 000e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 2838 0012 0028     		cmp	r0, #0
 2839 0014 5DD0     		beq	.L258
 2840 0016 52AE     		add	r6, sp, #328
 2841 0018 0023     		movs	r3, #0
 2842 001a 2069     		ldr	r0, [r4, #16]	@ float
 2843 001c 06F8CC3D 		strb	r3, [r6, #-204]!
 2844 0020 FFF7FEFF 		bl	__aeabi_f2d
 2845 0024 8046     		mov	r8, r0
 2846 0026 E06C     		ldr	r0, [r4, #76]	@ float
 2847 0028 8946     		mov	r9, r1
 2848 002a FFF7FEFF 		bl	__aeabi_f2d
 2849 002e CDE91C01 		strd	r0, [sp, #112]
 2850 0032 A06C     		ldr	r0, [r4, #72]	@ float
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 51


 2851 0034 FFF7FEFF 		bl	__aeabi_f2d
 2852 0038 CDE91A01 		strd	r0, [sp, #104]
 2853 003c 606C     		ldr	r0, [r4, #68]	@ float
 2854 003e FFF7FEFF 		bl	__aeabi_f2d
 2855 0042 CDE91801 		strd	r0, [sp, #96]
 2856 0046 206C     		ldr	r0, [r4, #64]	@ float
 2857 0048 FFF7FEFF 		bl	__aeabi_f2d
 2858 004c CDE91601 		strd	r0, [sp, #88]
 2859 0050 E06B     		ldr	r0, [r4, #60]	@ float
 2860 0052 FFF7FEFF 		bl	__aeabi_f2d
 2861 0056 CDE91401 		strd	r0, [sp, #80]
 2862 005a A06B     		ldr	r0, [r4, #56]	@ float
 2863 005c FFF7FEFF 		bl	__aeabi_f2d
 2864 0060 CDE91201 		strd	r0, [sp, #72]
 2865 0064 606B     		ldr	r0, [r4, #52]	@ float
 2866 0066 FFF7FEFF 		bl	__aeabi_f2d
 2867 006a CDE91001 		strd	r0, [sp, #64]
 2868 006e 206B     		ldr	r0, [r4, #48]	@ float
 2869 0070 FFF7FEFF 		bl	__aeabi_f2d
 2870 0074 CDE90E01 		strd	r0, [sp, #56]
 2871 0078 E06A     		ldr	r0, [r4, #44]	@ float
 2872 007a FFF7FEFF 		bl	__aeabi_f2d
 2873 007e CDE90C01 		strd	r0, [sp, #48]
 2874 0082 A06A     		ldr	r0, [r4, #40]	@ float
 2875 0084 FFF7FEFF 		bl	__aeabi_f2d
 2876 0088 CDE90A01 		strd	r0, [sp, #40]
 2877 008c 606A     		ldr	r0, [r4, #36]	@ float
 2878 008e FFF7FEFF 		bl	__aeabi_f2d
 2879 0092 CDE90801 		strd	r0, [sp, #32]
 2880 0096 206A     		ldr	r0, [r4, #32]	@ float
 2881 0098 FFF7FEFF 		bl	__aeabi_f2d
 2882 009c CDE90601 		strd	r0, [sp, #24]
 2883 00a0 E069     		ldr	r0, [r4, #28]	@ float
 2884 00a2 FFF7FEFF 		bl	__aeabi_f2d
 2885 00a6 CDE90401 		strd	r0, [sp, #16]
 2886 00aa A069     		ldr	r0, [r4, #24]	@ float
 2887 00ac FFF7FEFF 		bl	__aeabi_f2d
 2888 00b0 CDE90201 		strd	r0, [sp, #8]
 2889 00b4 6069     		ldr	r0, [r4, #20]	@ float
 2890 00b6 FFF7FEFF 		bl	__aeabi_f2d
 2891 00ba 4246     		mov	r2, r8
 2892 00bc CDE90001 		strd	r0, [sp]
 2893 00c0 4B46     		mov	r3, r9
 2894 00c2 0649     		ldr	r1, .L263+4
 2895 00c4 3046     		mov	r0, r6
 2896 00c6 FFF7FEFF 		bl	_ZN6StringILj200EE6printfEPKcz
 2897 00ca 3146     		mov	r1, r6
 2898 00cc 2846     		mov	r0, r5
 2899 00ce FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 2900              	.L258:
 2901 00d2 52B0     		add	sp, sp, #328
 2902              		@ sp needed
 2903 00d4 BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 2904              	.L264:
 2905              		.align	2
 2906              	.L263:
 2907 00d8 00000000 		.word	.LC28
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 52


 2908 00dc 1C000000 		.word	.LC29
 2909              		.size	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK21HangprinterKine
 2910              		.global	__aeabi_dmul
 2911              		.section	.text._ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj,"axG",%progbits,_ZN11FixedMatrixIdLj9
 2912              		.align	1
 2913              		.p2align 2,,3
 2914              		.weak	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 2915              		.syntax unified
 2916              		.thumb
 2917              		.thumb_func
 2918              		.fpu fpv4-sp-d16
 2919              		.type	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, %function
 2920              	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj:
 2921              		@ args = 0, pretend = 0, frame = 64
 2922              		@ frame_needed = 0, uses_anonymous_args = 0
 2923 0000 002A     		cmp	r2, #0
 2924 0002 00F02082 		beq	.L329
 2925 0006 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2926 000a 2DED088B 		vpush.64	{d8, d9, d10, d11}
 2927 000e 91B0     		sub	sp, sp, #68
 2928 0010 AF4E     		ldr	r6, .L346+8
 2929 0012 0092     		str	r2, [sp]
 2930 0014 0246     		mov	r2, r0
 2931 0016 0F91     		str	r1, [sp, #60]
 2932 0018 52F8083B 		ldr	r3, [r2], #8
 2933 001c 0D92     		str	r2, [sp, #52]
 2934 001e 9F68     		ldr	r7, [r3, #8]
 2935 0020 0023     		movs	r3, #0
 2936 0022 BB46     		mov	fp, r7
 2937 0024 0A93     		str	r3, [sp, #40]
 2938 0026 CDE90B33 		strd	r3, r3, [sp, #44]
 2939 002a 0493     		str	r3, [sp, #16]
 2940 002c B345     		cmp	fp, r6
 2941 002e 00F15803 		add	r3, r0, #88
 2942 0032 9FEDA5BB 		vldr.64	d11, .L346
 2943 0036 0E93     		str	r3, [sp, #56]
 2944 0038 8246     		mov	r10, r0
 2945 003a 40F09281 		bne	.L267
 2946              	.L343:
 2947 003e 0D9B     		ldr	r3, [sp, #52]
 2948 0040 0A9A     		ldr	r2, [sp, #40]
 2949 0042 9818     		adds	r0, r3, r2
 2950              	.L268:
 2951 0044 D0E90001 		ldrd	r0, [r0]
 2952 0048 FFF7FEFF 		bl	__aeabi_d2f
 2953 004c 049B     		ldr	r3, [sp, #16]
 2954 004e 0099     		ldr	r1, [sp]
 2955 0050 0133     		adds	r3, r3, #1
 2956 0052 07EE900A 		vmov	s15, r0
 2957 0056 9942     		cmp	r1, r3
 2958 0058 0693     		str	r3, [sp, #24]
 2959 005a B0EEE78A 		vabs.f32	s16, s15
 2960 005e 40F29680 		bls	.L269
 2961 0062 CB1A     		subs	r3, r1, r3
 2962 0064 0193     		str	r3, [sp, #4]
 2963 0066 0A9A     		ldr	r2, [sp, #40]
 2964 0068 0E9B     		ldr	r3, [sp, #56]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 53


 2965 006a 1344     		add	r3, r3, r2
 2966 006c 6FF04F07 		mvn	r7, #79
 2967 0070 0025     		movs	r5, #0
 2968 0072 0293     		str	r3, [sp, #8]
 2969 0074 5C46     		mov	r4, fp
 2970 0076 06E0     		b	.L283
 2971              	.L272:
 2972 0078 019B     		ldr	r3, [sp, #4]
 2973 007a 0135     		adds	r5, r5, #1
 2974 007c AB42     		cmp	r3, r5
 2975 007e A7F15007 		sub	r7, r7, #80
 2976 0082 00F08380 		beq	.L332
 2977              	.L283:
 2978 0086 069B     		ldr	r3, [sp, #24]
 2979 0088 B442     		cmp	r4, r6
 2980 008a 03EB0509 		add	r9, r3, r5
 2981 008e 6AD1     		bne	.L270
 2982 0090 029B     		ldr	r3, [sp, #8]
 2983 0092 05EB8500 		add	r0, r5, r5, lsl #2
 2984 0096 03EB0010 		add	r0, r3, r0, lsl #4
 2985              	.L271:
 2986 009a D0E90001 		ldrd	r0, [r0]
 2987 009e FFF7FEFF 		bl	__aeabi_d2f
 2988 00a2 07EE900A 		vmov	s15, r0
 2989 00a6 B0EEE7AA 		vabs.f32	s20, s15
 2990 00aa B4EEC8AA 		vcmpe.f32	s20, s16
 2991 00ae F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2992 00b2 E1DD     		ble	.L272
 2993 00b4 049B     		ldr	r3, [sp, #16]
 2994 00b6 4B45     		cmp	r3, r9
 2995 00b8 00F07C81 		beq	.L318
 2996 00bc 0B9A     		ldr	r2, [sp, #44]
 2997 00be 092A     		cmp	r2, #9
 2998 00c0 00F27881 		bhi	.L318
 2999 00c4 029A     		ldr	r2, [sp, #8]
 3000 00c6 05EB8508 		add	r8, r5, r5, lsl #2
 3001 00ca 9B46     		mov	fp, r3
 3002 00cc 2B46     		mov	r3, r5
 3003 00ce 02EB0818 		add	r8, r2, r8, lsl #4
 3004 00d2 4D46     		mov	r5, r9
 3005 00d4 B946     		mov	r9, r7
 3006 00d6 1F46     		mov	r7, r3
 3007 00d8 1AE0     		b	.L282
 3008              	.L334:
 3009 00da 08EB0900 		add	r0, r8, r9
 3010 00de B442     		cmp	r4, r6
 3011 00e0 90ED008B 		vldr.64	d8, [r0]
 3012 00e4 21D1     		bne	.L276
 3013              	.L335:
 3014 00e6 4046     		mov	r0, r8
 3015 00e8 B442     		cmp	r4, r6
 3016 00ea 90ED009B 		vldr.64	d9, [r0]
 3017 00ee 27D1     		bne	.L278
 3018              	.L336:
 3019 00f0 08EB0900 		add	r0, r8, r9
 3020 00f4 B442     		cmp	r4, r6
 3021 00f6 80ED009B 		vstr.64	d9, [r0]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 54


 3022 00fa 2CD1     		bne	.L280
 3023              	.L337:
 3024 00fc 4046     		mov	r0, r8
 3025              	.L281:
 3026 00fe 0BF1010B 		add	fp, fp, #1
 3027 0102 BBF10A0F 		cmp	fp, #10
 3028 0106 80ED008B 		vstr.64	d8, [r0]
 3029 010a 08F10808 		add	r8, r8, #8
 3030 010e 32D0     		beq	.L333
 3031              	.L282:
 3032 0110 B442     		cmp	r4, r6
 3033 0112 E2D0     		beq	.L334
 3034 0114 5A46     		mov	r2, fp
 3035 0116 0499     		ldr	r1, [sp, #16]
 3036 0118 5046     		mov	r0, r10
 3037 011a A047     		blx	r4
 3038 011c DAF80020 		ldr	r2, [r10]
 3039 0120 9468     		ldr	r4, [r2, #8]
 3040 0122 B442     		cmp	r4, r6
 3041 0124 90ED008B 		vldr.64	d8, [r0]
 3042 0128 DDD0     		beq	.L335
 3043              	.L276:
 3044 012a 5A46     		mov	r2, fp
 3045 012c 2946     		mov	r1, r5
 3046 012e 5046     		mov	r0, r10
 3047 0130 A047     		blx	r4
 3048 0132 DAF80020 		ldr	r2, [r10]
 3049 0136 9468     		ldr	r4, [r2, #8]
 3050 0138 B442     		cmp	r4, r6
 3051 013a 90ED009B 		vldr.64	d9, [r0]
 3052 013e D7D0     		beq	.L336
 3053              	.L278:
 3054 0140 5A46     		mov	r2, fp
 3055 0142 0499     		ldr	r1, [sp, #16]
 3056 0144 5046     		mov	r0, r10
 3057 0146 A047     		blx	r4
 3058 0148 DAF80020 		ldr	r2, [r10]
 3059 014c 9468     		ldr	r4, [r2, #8]
 3060 014e B442     		cmp	r4, r6
 3061 0150 80ED009B 		vstr.64	d9, [r0]
 3062 0154 D2D0     		beq	.L337
 3063              	.L280:
 3064 0156 5A46     		mov	r2, fp
 3065 0158 2946     		mov	r1, r5
 3066 015a 5046     		mov	r0, r10
 3067 015c A047     		blx	r4
 3068 015e DAF80020 		ldr	r2, [r10]
 3069 0162 9468     		ldr	r4, [r2, #8]
 3070 0164 CBE7     		b	.L281
 3071              	.L270:
 3072 0166 049A     		ldr	r2, [sp, #16]
 3073 0168 4946     		mov	r1, r9
 3074 016a 5046     		mov	r0, r10
 3075 016c A047     		blx	r4
 3076 016e DAF80030 		ldr	r3, [r10]
 3077 0172 9C68     		ldr	r4, [r3, #8]
 3078 0174 91E7     		b	.L271
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 55


 3079              	.L333:
 3080 0176 3D46     		mov	r5, r7
 3081 0178 019B     		ldr	r3, [sp, #4]
 3082 017a 0135     		adds	r5, r5, #1
 3083 017c 4F46     		mov	r7, r9
 3084 017e AB42     		cmp	r3, r5
 3085 0180 B0EE4A8A 		vmov.f32	s16, s20
 3086 0184 A7F15007 		sub	r7, r7, #80
 3087 0188 7FF47DAF 		bne	.L283
 3088              	.L332:
 3089 018c A346     		mov	fp, r4
 3090              	.L269:
 3091 018e B345     		cmp	fp, r6
 3092 0190 40F01381 		bne	.L284
 3093 0194 0D9B     		ldr	r3, [sp, #52]
 3094 0196 0A9A     		ldr	r2, [sp, #40]
 3095 0198 9818     		adds	r0, r3, r2
 3096              	.L285:
 3097 019a 90ED007B 		vldr.64	d7, [r0]
 3098 019e 0B9B     		ldr	r3, [sp, #44]
 3099 01a0 8DED087B 		vstr.64	d7, [sp, #32]
 3100 01a4 002B     		cmp	r3, #0
 3101 01a6 61D0     		beq	.L299
 3102 01a8 069B     		ldr	r3, [sp, #24]
 3103 01aa 0AEBC303 		add	r3, r10, r3, lsl #3
 3104 01ae 0593     		str	r3, [sp, #20]
 3105 01b0 0C9B     		ldr	r3, [sp, #48]
 3106 01b2 DB00     		lsls	r3, r3, #3
 3107 01b4 0193     		str	r3, [sp, #4]
 3108 01b6 0023     		movs	r3, #0
 3109 01b8 0793     		str	r3, [sp, #28]
 3110 01ba 5F46     		mov	r7, fp
 3111              	.L300:
 3112 01bc B742     		cmp	r7, r6
 3113 01be 40F0F180 		bne	.L289
 3114 01c2 0598     		ldr	r0, [sp, #20]
 3115              	.L290:
 3116 01c4 DDE90823 		ldrd	r2, [sp, #32]
 3117 01c8 D0E90001 		ldrd	r0, [r0]
 3118 01cc FFF7FEFF 		bl	__aeabi_ddiv
 3119 01d0 B742     		cmp	r7, r6
 3120 01d2 CDE90201 		strd	r0, [sp, #8]
 3121 01d6 40F0DD80 		bne	.L291
 3122 01da 0598     		ldr	r0, [sp, #20]
 3123              	.L292:
 3124 01dc 009B     		ldr	r3, [sp]
 3125 01de 069D     		ldr	r5, [sp, #24]
 3126 01e0 1A46     		mov	r2, r3
 3127 01e2 AA42     		cmp	r2, r5
 3128 01e4 80ED00BB 		vstr.64	d11, [r0]
 3129 01e8 33D3     		bcc	.L293
 3130 01ea 059B     		ldr	r3, [sp, #20]
 3131 01ec D146     		mov	r9, r10
 3132 01ee 03F10804 		add	r4, r3, #8
 3133 01f2 1AE0     		b	.L298
 3134              	.L339:
 3135 01f4 019B     		ldr	r3, [sp, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 56


 3136 01f6 1819     		adds	r0, r3, r4
 3137              	.L295:
 3138 01f8 D0E90023 		ldrd	r2, [r0]
 3139 01fc DDE90201 		ldrd	r0, [sp, #8]
 3140 0200 FFF7FEFF 		bl	__aeabi_dmul
 3141 0204 B742     		cmp	r7, r6
 3142 0206 8246     		mov	r10, r0
 3143 0208 8B46     		mov	fp, r1
 3144 020a 18D1     		bne	.L296
 3145 020c A046     		mov	r8, r4
 3146              	.L297:
 3147 020e 5B46     		mov	r3, fp
 3148 0210 D8E90001 		ldrd	r0, [r8]
 3149 0214 5246     		mov	r2, r10
 3150 0216 FFF7FEFF 		bl	__aeabi_dsub
 3151 021a 009B     		ldr	r3, [sp]
 3152 021c 0135     		adds	r5, r5, #1
 3153 021e AB42     		cmp	r3, r5
 3154 0220 04F10804 		add	r4, r4, #8
 3155 0224 C8E90001 		strd	r0, [r8]
 3156 0228 12D3     		bcc	.L338
 3157              	.L298:
 3158 022a B742     		cmp	r7, r6
 3159 022c E2D0     		beq	.L339
 3160 022e 2A46     		mov	r2, r5
 3161 0230 0499     		ldr	r1, [sp, #16]
 3162 0232 4846     		mov	r0, r9
 3163 0234 B847     		blx	r7
 3164 0236 D9F80030 		ldr	r3, [r9]
 3165 023a 9F68     		ldr	r7, [r3, #8]
 3166 023c DCE7     		b	.L295
 3167              	.L296:
 3168 023e 2A46     		mov	r2, r5
 3169 0240 0799     		ldr	r1, [sp, #28]
 3170 0242 4846     		mov	r0, r9
 3171 0244 B847     		blx	r7
 3172 0246 D9F80030 		ldr	r3, [r9]
 3173 024a 8046     		mov	r8, r0
 3174 024c 9F68     		ldr	r7, [r3, #8]
 3175 024e DEE7     		b	.L297
 3176              	.L338:
 3177 0250 CA46     		mov	r10, r9
 3178              	.L293:
 3179 0252 059A     		ldr	r2, [sp, #20]
 3180 0254 079B     		ldr	r3, [sp, #28]
 3181 0256 5032     		adds	r2, r2, #80
 3182 0258 0592     		str	r2, [sp, #20]
 3183 025a 019A     		ldr	r2, [sp, #4]
 3184 025c 503A     		subs	r2, r2, #80
 3185 025e 0192     		str	r2, [sp, #4]
 3186 0260 049A     		ldr	r2, [sp, #16]
 3187 0262 0133     		adds	r3, r3, #1
 3188 0264 9342     		cmp	r3, r2
 3189 0266 0793     		str	r3, [sp, #28]
 3190 0268 A8D1     		bne	.L300
 3191 026a BB46     		mov	fp, r7
 3192              	.L299:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 57


 3193 026c 009B     		ldr	r3, [sp]
 3194 026e 069A     		ldr	r2, [sp, #24]
 3195 0270 9342     		cmp	r3, r2
 3196 0272 00F0AB80 		beq	.L340
 3197 0276 0C9B     		ldr	r3, [sp, #48]
 3198 0278 0A9A     		ldr	r2, [sp, #40]
 3199 027a 0A33     		adds	r3, r3, #10
 3200 027c 0C93     		str	r3, [sp, #48]
 3201 027e 0E9B     		ldr	r3, [sp, #56]
 3202 0280 1344     		add	r3, r3, r2
 3203 0282 0593     		str	r3, [sp, #20]
 3204 0284 069B     		ldr	r3, [sp, #24]
 3205 0286 0793     		str	r3, [sp, #28]
 3206 0288 6FF04F03 		mvn	r3, #79
 3207 028c 0193     		str	r3, [sp, #4]
 3208 028e 5F46     		mov	r7, fp
 3209              	.L311:
 3210 0290 B742     		cmp	r7, r6
 3211 0292 6FD1     		bne	.L301
 3212 0294 0598     		ldr	r0, [sp, #20]
 3213              	.L302:
 3214 0296 DDE90823 		ldrd	r2, [sp, #32]
 3215 029a D0E90001 		ldrd	r0, [r0]
 3216 029e FFF7FEFF 		bl	__aeabi_ddiv
 3217 02a2 B742     		cmp	r7, r6
 3218 02a4 CDE90201 		strd	r0, [sp, #8]
 3219 02a8 6CD1     		bne	.L303
 3220 02aa 0598     		ldr	r0, [sp, #20]
 3221              	.L304:
 3222 02ac 009B     		ldr	r3, [sp]
 3223 02ae 069D     		ldr	r5, [sp, #24]
 3224 02b0 1A46     		mov	r2, r3
 3225 02b2 AA42     		cmp	r2, r5
 3226 02b4 80ED00BB 		vstr.64	d11, [r0]
 3227 02b8 3BD3     		bcc	.L305
 3228 02ba 059B     		ldr	r3, [sp, #20]
 3229 02bc D146     		mov	r9, r10
 3230 02be 03F10804 		add	r4, r3, #8
 3231 02c2 22E0     		b	.L310
 3232              	.L347:
 3233 02c4 AFF30080 		.align	3
 3234              	.L346:
 3235 02c8 00000000 		.word	0
 3236 02cc 00000000 		.word	0
 3237 02d0 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 3238              	.L342:
 3239 02d4 019B     		ldr	r3, [sp, #4]
 3240 02d6 1819     		adds	r0, r3, r4
 3241              	.L307:
 3242 02d8 D0E90023 		ldrd	r2, [r0]
 3243 02dc DDE90201 		ldrd	r0, [sp, #8]
 3244 02e0 FFF7FEFF 		bl	__aeabi_dmul
 3245 02e4 B742     		cmp	r7, r6
 3246 02e6 8246     		mov	r10, r0
 3247 02e8 8B46     		mov	fp, r1
 3248 02ea 18D1     		bne	.L308
 3249 02ec A046     		mov	r8, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 58


 3250              	.L309:
 3251 02ee 5B46     		mov	r3, fp
 3252 02f0 D8E90001 		ldrd	r0, [r8]
 3253 02f4 5246     		mov	r2, r10
 3254 02f6 FFF7FEFF 		bl	__aeabi_dsub
 3255 02fa 009B     		ldr	r3, [sp]
 3256 02fc 0135     		adds	r5, r5, #1
 3257 02fe AB42     		cmp	r3, r5
 3258 0300 04F10804 		add	r4, r4, #8
 3259 0304 C8E90001 		strd	r0, [r8]
 3260 0308 12D3     		bcc	.L341
 3261              	.L310:
 3262 030a B742     		cmp	r7, r6
 3263 030c E2D0     		beq	.L342
 3264 030e 2A46     		mov	r2, r5
 3265 0310 0499     		ldr	r1, [sp, #16]
 3266 0312 4846     		mov	r0, r9
 3267 0314 B847     		blx	r7
 3268 0316 D9F80030 		ldr	r3, [r9]
 3269 031a 9F68     		ldr	r7, [r3, #8]
 3270 031c DCE7     		b	.L307
 3271              	.L308:
 3272 031e 2A46     		mov	r2, r5
 3273 0320 0799     		ldr	r1, [sp, #28]
 3274 0322 4846     		mov	r0, r9
 3275 0324 B847     		blx	r7
 3276 0326 D9F80030 		ldr	r3, [r9]
 3277 032a 8046     		mov	r8, r0
 3278 032c 9F68     		ldr	r7, [r3, #8]
 3279 032e DEE7     		b	.L309
 3280              	.L341:
 3281 0330 CA46     		mov	r10, r9
 3282              	.L305:
 3283 0332 059A     		ldr	r2, [sp, #20]
 3284 0334 079B     		ldr	r3, [sp, #28]
 3285 0336 5032     		adds	r2, r2, #80
 3286 0338 0592     		str	r2, [sp, #20]
 3287 033a 019A     		ldr	r2, [sp, #4]
 3288 033c 503A     		subs	r2, r2, #80
 3289 033e 0192     		str	r2, [sp, #4]
 3290 0340 009A     		ldr	r2, [sp]
 3291 0342 0133     		adds	r3, r3, #1
 3292 0344 9A42     		cmp	r2, r3
 3293 0346 0793     		str	r3, [sp, #28]
 3294 0348 A2D1     		bne	.L311
 3295 034a 0B9B     		ldr	r3, [sp, #44]
 3296 034c 0133     		adds	r3, r3, #1
 3297 034e 0B93     		str	r3, [sp, #44]
 3298 0350 0A9B     		ldr	r3, [sp, #40]
 3299 0352 BB46     		mov	fp, r7
 3300 0354 5833     		adds	r3, r3, #88
 3301 0356 0A93     		str	r3, [sp, #40]
 3302 0358 B345     		cmp	fp, r6
 3303 035a 069B     		ldr	r3, [sp, #24]
 3304 035c 0493     		str	r3, [sp, #16]
 3305 035e 3FF46EAE 		beq	.L343
 3306              	.L267:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 59


 3307 0362 0499     		ldr	r1, [sp, #16]
 3308 0364 5046     		mov	r0, r10
 3309 0366 0A46     		mov	r2, r1
 3310 0368 D847     		blx	fp
 3311 036a DAF80030 		ldr	r3, [r10]
 3312 036e D3F808B0 		ldr	fp, [r3, #8]
 3313 0372 67E6     		b	.L268
 3314              	.L301:
 3315 0374 049A     		ldr	r2, [sp, #16]
 3316 0376 0799     		ldr	r1, [sp, #28]
 3317 0378 5046     		mov	r0, r10
 3318 037a B847     		blx	r7
 3319 037c DAF80030 		ldr	r3, [r10]
 3320 0380 9F68     		ldr	r7, [r3, #8]
 3321 0382 88E7     		b	.L302
 3322              	.L303:
 3323 0384 049A     		ldr	r2, [sp, #16]
 3324 0386 0799     		ldr	r1, [sp, #28]
 3325 0388 5046     		mov	r0, r10
 3326 038a B847     		blx	r7
 3327 038c DAF80030 		ldr	r3, [r10]
 3328 0390 9F68     		ldr	r7, [r3, #8]
 3329 0392 8BE7     		b	.L304
 3330              	.L291:
 3331 0394 049A     		ldr	r2, [sp, #16]
 3332 0396 0799     		ldr	r1, [sp, #28]
 3333 0398 5046     		mov	r0, r10
 3334 039a B847     		blx	r7
 3335 039c DAF80030 		ldr	r3, [r10]
 3336 03a0 9F68     		ldr	r7, [r3, #8]
 3337 03a2 1BE7     		b	.L292
 3338              	.L289:
 3339 03a4 049A     		ldr	r2, [sp, #16]
 3340 03a6 0799     		ldr	r1, [sp, #28]
 3341 03a8 5046     		mov	r0, r10
 3342 03aa B847     		blx	r7
 3343 03ac DAF80030 		ldr	r3, [r10]
 3344 03b0 9F68     		ldr	r7, [r3, #8]
 3345 03b2 07E7     		b	.L290
 3346              	.L318:
 3347 03b4 B0EE4A8A 		vmov.f32	s16, s20
 3348 03b8 5EE6     		b	.L272
 3349              	.L284:
 3350 03ba 0499     		ldr	r1, [sp, #16]
 3351 03bc 5046     		mov	r0, r10
 3352 03be 0A46     		mov	r2, r1
 3353 03c0 D847     		blx	fp
 3354 03c2 DAF80030 		ldr	r3, [r10]
 3355 03c6 D3F808B0 		ldr	fp, [r3, #8]
 3356 03ca E6E6     		b	.L285
 3357              	.L340:
 3358 03cc 049C     		ldr	r4, [sp, #16]
 3359 03ce 0D9D     		ldr	r5, [sp, #52]
 3360 03d0 DDF83C90 		ldr	r9, [sp, #60]
 3361 03d4 5F46     		mov	r7, fp
 3362 03d6 0234     		adds	r4, r4, #2
 3363 03d8 3B46     		mov	r3, r7
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 60


 3364 03da 0AEBC404 		add	r4, r10, r4, lsl #3
 3365 03de 4FF00008 		mov	r8, #0
 3366 03e2 5746     		mov	r7, r10
 3367 03e4 18E0     		b	.L288
 3368              	.L344:
 3369 03e6 2046     		mov	r0, r4
 3370 03e8 B342     		cmp	r3, r6
 3371 03ea D0E900AB 		ldrd	r10, [r0]
 3372 03ee 1FD1     		bne	.L315
 3373              	.L345:
 3374 03f0 2B46     		mov	r3, r5
 3375              	.L316:
 3376 03f2 D3E90023 		ldrd	r2, [r3]
 3377 03f6 5046     		mov	r0, r10
 3378 03f8 5946     		mov	r1, fp
 3379 03fa FFF7FEFF 		bl	__aeabi_ddiv
 3380 03fe 069B     		ldr	r3, [sp, #24]
 3381 0400 08F10108 		add	r8, r8, #1
 3382 0404 4345     		cmp	r3, r8
 3383 0406 05F15805 		add	r5, r5, #88
 3384 040a 04F15004 		add	r4, r4, #80
 3385 040e E9E80201 		strd	r0, [r9], #8
 3386 0412 13D0     		beq	.L265
 3387 0414 3B68     		ldr	r3, [r7]
 3388 0416 9B68     		ldr	r3, [r3, #8]
 3389              	.L288:
 3390 0418 B342     		cmp	r3, r6
 3391 041a E4D0     		beq	.L344
 3392 041c 069A     		ldr	r2, [sp, #24]
 3393 041e 4146     		mov	r1, r8
 3394 0420 3846     		mov	r0, r7
 3395 0422 9847     		blx	r3
 3396 0424 3B68     		ldr	r3, [r7]
 3397 0426 9B68     		ldr	r3, [r3, #8]
 3398 0428 B342     		cmp	r3, r6
 3399 042a D0E900AB 		ldrd	r10, [r0]
 3400 042e DFD0     		beq	.L345
 3401              	.L315:
 3402 0430 4246     		mov	r2, r8
 3403 0432 4146     		mov	r1, r8
 3404 0434 3846     		mov	r0, r7
 3405 0436 9847     		blx	r3
 3406 0438 0346     		mov	r3, r0
 3407 043a DAE7     		b	.L316
 3408              	.L265:
 3409 043c 11B0     		add	sp, sp, #68
 3410              		@ sp needed
 3411 043e BDEC088B 		vldm	sp!, {d8-d11}
 3412 0442 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3413              	.L329:
 3414 0446 7047     		bx	lr
 3415              		.size	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, .-_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEP
 3416              		.global	__aeabi_dadd
 3417              		.global	__aeabi_ui2d
 3418              		.section	.text._ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,
 3419              		.align	1
 3420              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 61


 3421              		.global	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 3422              		.syntax unified
 3423              		.thumb
 3424              		.thumb_func
 3425              		.fpu fpv4-sp-d16
 3426              		.type	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %functio
 3427              	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
 3428              		@ args = 0, pretend = 0, frame = 4544
 3429              		@ frame_needed = 0, uses_anonymous_args = 0
 3430 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3431 0004 2DED068B 		vpush.64	{d8, d9, d10}
 3432 0008 ADF58E5D 		sub	sp, sp, #4544
 3433 000c 85B0     		sub	sp, sp, #20
 3434 000e 8346     		mov	fp, r0
 3435 0010 1046     		mov	r0, r2
 3436 0012 0C46     		mov	r4, r1
 3437 0014 1192     		str	r2, [sp, #68]
 3438 0016 1A91     		str	r1, [sp, #104]
 3439 0018 2093     		str	r3, [sp, #128]
 3440 001a FFF7FEFF 		bl	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 3441 001e 092C     		cmp	r4, #9
 3442 0020 0690     		str	r0, [sp, #24]
 3443 0022 0ED9     		bls	.L436
 3444              	.L349:
 3445 0024 1A9A     		ldr	r2, [sp, #104]
 3446 0026 2098     		ldr	r0, [sp, #128]
 3447 0028 9549     		ldr	r1, .L446+8
 3448 002a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3449 002e 0123     		movs	r3, #1
 3450 0030 1D93     		str	r3, [sp, #116]
 3451              	.L433:
 3452 0032 1D98     		ldr	r0, [sp, #116]
 3453 0034 0DF58E5D 		add	sp, sp, #4544
 3454 0038 05B0     		add	sp, sp, #20
 3455              		@ sp needed
 3456 003a BDEC068B 		vldm	sp!, {d8-d10}
 3457 003e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3458              	.L436:
 3459 0042 4FF41273 		mov	r3, #584
 3460 0046 E340     		lsrs	r3, r3, r4
 3461 0048 DB43     		mvns	r3, r3
 3462 004a 13F00103 		ands	r3, r3, #1
 3463 004e 1D93     		str	r3, [sp, #116]
 3464 0050 E8D1     		bne	.L349
 3465 0052 8C4B     		ldr	r3, .L446+12
 3466 0054 D3F80831 		ldr	r3, [r3, #264]
 3467 0058 D806     		lsls	r0, r3, #27
 3468 005a 00F12883 		bmi	.L434
 3469 005e 0DF6C803 		addw	r3, sp, #2248
 3470 0062 1693     		str	r3, [sp, #88]
 3471              	.L352:
 3472 0064 9FED847B 		vldr.64	d7, .L446
 3473 0068 069B     		ldr	r3, [sp, #24]
 3474 006a 8DED127B 		vstr.64	d7, [sp, #72]
 3475 006e 002B     		cmp	r3, #0
 3476 0070 00F09D80 		beq	.L358
 3477 0074 119B     		ldr	r3, [sp, #68]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 62


 3478 0076 DFED848A 		vldr.32	s17, .L446+16
 3479 007a 169C     		ldr	r4, [sp, #88]
 3480 007c 03F28718 		addw	r8, r3, #391
 3481 0080 069B     		ldr	r3, [sp, #24]
 3482 0082 0DF1E809 		add	r9, sp, #232
 3483 0086 08EB030A 		add	r10, r8, r3
 3484 008a 0DF5B866 		add	r6, sp, #1472
 3485 008e 0027     		movs	r7, #0
 3486              	.L359:
 3487 0090 9FED797B 		vldr.64	d7, .L446
 3488 0094 18F8013F 		ldrb	r3, [r8, #1]!	@ zero_extendqisi2
 3489 0098 7A4A     		ldr	r2, .L446+12
 3490 009a C3F38003 		ubfx	r3, r3, #2, #1
 3491 009e D068     		ldr	r0, [r2, #12]
 3492 00a0 0093     		str	r3, [sp]
 3493 00a2 2246     		mov	r2, r4
 3494 00a4 A9EC027B 		vstmia.64	r9!, {d7}
 3495 00a8 0DF6CC03 		addw	r3, sp, #2252
 3496 00ac 3946     		mov	r1, r7
 3497 00ae FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 3498 00b2 10EE100A 		vmov	r0, s0
 3499 00b6 FFF7FEFF 		bl	__aeabi_f2d
 3500 00ba 94ED018A 		vldr.32	s16, [r4, #4]
 3501 00be DBED057A 		vldr.32	s15, [fp, #20]
 3502 00c2 DBED066A 		vldr.32	s13, [fp, #24]
 3503 00c6 94ED009A 		vldr.32	s18, [r4]
 3504 00ca 9BED047A 		vldr.32	s14, [fp, #16]
 3505 00ce C4ED028A 		vstr.32	s17, [r4, #8]
 3506 00d2 78EE677A 		vsub.f32	s15, s16, s15
 3507 00d6 39EE477A 		vsub.f32	s14, s18, s14
 3508 00da 27EEA70A 		vmul.f32	s0, s15, s15
 3509 00de CDE90401 		strd	r0, [sp, #16]
 3510 00e2 A6EEA60A 		vfma.f32	s0, s13, s13
 3511 00e6 F0EE689A 		vmov.f32	s19, s17
 3512 00ea A7EE070A 		vfma.f32	s0, s14, s14
 3513 00ee B5EE400A 		vcmp.f32	s0, #0
 3514 00f2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3515 00f6 B1EEC0AA 		vsqrt.f32	s20, s0
 3516 00fa 00F1EE82 		bmi	.L437
 3517              	.L355:
 3518 00fe 0137     		adds	r7, r7, #1
 3519 0100 1AEE100A 		vmov	r0, s20
 3520 0104 FFF7FEFF 		bl	__aeabi_f2d
 3521 0108 DBED087A 		vldr.32	s15, [fp, #32]
 3522 010c DBED096A 		vldr.32	s13, [fp, #36]
 3523 0110 9BED077A 		vldr.32	s14, [fp, #28]
 3524 0114 78EE677A 		vsub.f32	s15, s16, s15
 3525 0118 76EEE96A 		vsub.f32	s13, s13, s19
 3526 011c 27EEA70A 		vmul.f32	s0, s15, s15
 3527 0120 79EE477A 		vsub.f32	s15, s18, s14
 3528 0124 A6EEA60A 		vfma.f32	s0, s13, s13
 3529 0128 C6E90201 		strd	r0, [r6, #8]
 3530 012c A7EEA70A 		vfma.f32	s0, s15, s15
 3531 0130 B5EE400A 		vcmp.f32	s0, #0
 3532 0134 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3533 0138 B1EEC0AA 		vsqrt.f32	s20, s0
 3534 013c 00F1D682 		bmi	.L438
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 63


 3535              	.L356:
 3536 0140 1AEE100A 		vmov	r0, s20
 3537 0144 FFF7FEFF 		bl	__aeabi_f2d
 3538 0148 DBED0B7A 		vldr.32	s15, [fp, #44]
 3539 014c DBED0C6A 		vldr.32	s13, [fp, #48]
 3540 0150 9BED0A7A 		vldr.32	s14, [fp, #40]
 3541 0154 38EE678A 		vsub.f32	s16, s16, s15
 3542 0158 76EEE99A 		vsub.f32	s19, s13, s19
 3543 015c 28EE080A 		vmul.f32	s0, s16, s16
 3544 0160 39EE479A 		vsub.f32	s18, s18, s14
 3545 0164 A9EEA90A 		vfma.f32	s0, s19, s19
 3546 0168 C6E90401 		strd	r0, [r6, #16]
 3547 016c A9EE090A 		vfma.f32	s0, s18, s18
 3548 0170 B5EE400A 		vcmp.f32	s0, #0
 3549 0174 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3550 0178 B1EEC08A 		vsqrt.f32	s16, s0
 3551 017c 00F1BF82 		bmi	.L439
 3552              	.L357:
 3553 0180 18EE100A 		vmov	r0, s16
 3554 0184 FFF7FEFF 		bl	__aeabi_f2d
 3555 0188 DDE90423 		ldrd	r2, [sp, #16]
 3556 018c E6E90601 		strd	r0, [r6, #24]!
 3557 0190 1046     		mov	r0, r2
 3558 0192 1946     		mov	r1, r3
 3559 0194 FFF7FEFF 		bl	__aeabi_dmul
 3560 0198 0246     		mov	r2, r0
 3561 019a 0B46     		mov	r3, r1
 3562 019c DDE91201 		ldrd	r0, [sp, #72]
 3563 01a0 FFF7FEFF 		bl	__aeabi_dadd
 3564 01a4 D045     		cmp	r8, r10
 3565 01a6 CDE91201 		strd	r0, [sp, #72]
 3566 01aa 7FF471AF 		bne	.L359
 3567              	.L358:
 3568 01ae 1A98     		ldr	r0, [sp, #104]
 3569 01b0 069C     		ldr	r4, [sp, #24]
 3570 01b2 119D     		ldr	r5, [sp, #68]
 3571 01b4 CDF834B0 		str	fp, [sp, #52]
 3572 01b8 C300     		lsls	r3, r0, #3
 3573 01ba BAAE     		add	r6, sp, #744
 3574 01bc 1E44     		add	r6, r6, r3
 3575 01be 1C96     		str	r6, [sp, #112]
 3576 01c0 169E     		ldr	r6, [sp, #88]
 3577 01c2 1E44     		add	r6, r6, r3
 3578 01c4 1596     		str	r6, [sp, #84]
 3579 01c6 0DF50D66 		add	r6, sp, #2256
 3580 01ca 1E44     		add	r6, r6, r3
 3581 01cc 0796     		str	r6, [sp, #28]
 3582 01ce 28AE     		add	r6, sp, #160
 3583 01d0 F318     		adds	r3, r6, r3
 3584 01d2 C0EB4071 		rsb	r1, r0, r0, lsl #29
 3585 01d6 04EBC402 		add	r2, r4, r4, lsl #3
 3586 01da 2193     		str	r3, [sp, #132]
 3587 01dc CB00     		lsls	r3, r1, #3
 3588 01de 05F58475 		add	r5, r5, #264
 3589 01e2 1E93     		str	r3, [sp, #120]
 3590 01e4 D300     		lsls	r3, r2, #3
 3591 01e6 1F93     		str	r3, [sp, #124]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 64


 3592 01e8 05EB8403 		add	r3, r5, r4, lsl #2
 3593 01ec 1093     		str	r3, [sp, #64]
 3594 01ee 0223     		movs	r3, #2
 3595 01f0 1B95     		str	r5, [sp, #108]
 3596 01f2 1893     		str	r3, [sp, #96]
 3597 01f4 8346     		mov	fp, r0
 3598              	.L354:
 3599 01f6 169B     		ldr	r3, [sp, #88]
 3600 01f8 1A46     		mov	r2, r3
 3601 01fa 244B     		ldr	r3, .L446+20
 3602 01fc 1360     		str	r3, [r2]
 3603 01fe 069B     		ldr	r3, [sp, #24]
 3604 0200 002B     		cmp	r3, #0
 3605 0202 4CD0     		beq	.L360
 3606 0204 0024     		movs	r4, #0
 3607 0206 DDF83480 		ldr	r8, [sp, #52]
 3608 020a A146     		mov	r9, r4
 3609 020c 0DF5B865 		add	r5, sp, #1472
 3610 0210 9A46     		mov	r10, r3
 3611 0212 5C46     		mov	r4, fp
 3612              	.L366:
 3613 0214 002C     		cmp	r4, #0
 3614 0216 3BD0     		beq	.L361
 3615 0218 D5E90201 		ldrd	r0, [r5, #8]
 3616 021c FFF7FEFF 		bl	__aeabi_d2f
 3617 0220 09EE100A 		vmov	s18, r0
 3618 0224 D5E90401 		ldrd	r0, [r5, #16]
 3619 0228 FFF7FEFF 		bl	__aeabi_d2f
 3620 022c 08EE900A 		vmov	s17, r0
 3621 0230 D5E90601 		ldrd	r0, [r5, #24]
 3622 0234 FFF7FEFF 		bl	__aeabi_d2f
 3623 0238 09EBC907 		add	r7, r9, r9, lsl #3
 3624 023c 0DF50D63 		add	r3, sp, #2256
 3625 0240 08EE100A 		vmov	s16, r0
 3626 0244 03EBC707 		add	r7, r3, r7, lsl #3
 3627 0248 0021     		movs	r1, #0
 3628              	.L362:
 3629 024a 082C     		cmp	r4, #8
 3630 024c B0EE481A 		vmov.f32	s2, s16
 3631 0250 F0EE680A 		vmov.f32	s1, s17
 3632 0254 B0EE490A 		vmov.f32	s0, s18
 3633 0258 4046     		mov	r0, r8
 3634 025a 01F10106 		add	r6, r1, #1
 3635 025e 00F06C81 		beq	.L440
 3636              	.L363:
 3637 0262 FFF7FEFF 		bl	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 3638 0266 B442     		cmp	r4, r6
 3639 0268 A7EC020B 		vstmia.64	r7!, {d0}
 3640 026c 10D0     		beq	.L361
 3641 026e 3146     		mov	r1, r6
 3642 0270 EBE7     		b	.L362
 3643              	.L447:
 3644 0272 00BFAFF3 		.align	3
 3644      0080
 3645              	.L446:
 3646 0278 00000000 		.word	0
 3647 027c 00000000 		.word	0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 65


 3648 0280 00000000 		.word	.LC30
 3649 0284 00000000 		.word	reprap
 3650 0288 00000000 		.word	0
 3651 028c 08000000 		.word	_ZTV11FixedMatrixIdLj32ELj9EE+8
 3652              	.L361:
 3653 0290 09F10109 		add	r9, r9, #1
 3654 0294 CA45     		cmp	r10, r9
 3655 0296 05F11805 		add	r5, r5, #24
 3656 029a BBD1     		bne	.L366
 3657 029c A346     		mov	fp, r4
 3658              	.L360:
 3659 029e AC4B     		ldr	r3, .L448+8
 3660 02a0 D3F80831 		ldr	r3, [r3, #264]
 3661 02a4 13F01003 		ands	r3, r3, #16
 3662 02a8 1793     		str	r3, [sp, #92]
 3663 02aa 40F09C81 		bne	.L441
 3664 02ae A94B     		ldr	r3, .L448+12
 3665 02b0 BA93     		str	r3, [sp, #744]
 3666 02b2 BBF1000F 		cmp	fp, #0
 3667 02b6 00F09C80 		beq	.L375
 3668              	.L389:
 3669 02ba 119B     		ldr	r3, [sp, #68]
 3670 02bc D3F80801 		ldr	r0, [r3, #264]	@ float
 3671 02c0 FFF7FEFF 		bl	__aeabi_f2d
 3672 02c4 DDE93A23 		ldrd	r2, [sp, #232]
 3673 02c8 FFF7FEFF 		bl	__aeabi_dadd
 3674 02cc 1E9A     		ldr	r2, [sp, #120]
 3675 02ce 0E90     		str	r0, [sp, #56]
 3676 02d0 01F10043 		add	r3, r1, #-2147483648
 3677 02d4 0832     		adds	r2, r2, #8
 3678 02d6 0F93     		str	r3, [sp, #60]
 3679 02d8 1492     		str	r2, [sp, #80]
 3680 02da 1C9B     		ldr	r3, [sp, #112]
 3681 02dc 1F9A     		ldr	r2, [sp, #124]
 3682 02de 0993     		str	r3, [sp, #36]
 3683 02e0 169B     		ldr	r3, [sp, #88]
 3684 02e2 CDF864B0 		str	fp, [sp, #100]
 3685 02e6 583A     		subs	r2, r2, #88
 3686 02e8 0892     		str	r2, [sp, #32]
 3687 02ea 9946     		mov	r9, r3
 3688              	.L374:
 3689 02ec 99ED027B 		vldr.64	d7, [r9, #8]
 3690 02f0 149B     		ldr	r3, [sp, #80]
 3691 02f2 099A     		ldr	r2, [sp, #36]
 3692 02f4 8DED047B 		vstr.64	d7, [sp, #16]
 3693 02f8 0DF50D64 		add	r4, sp, #2256
 3694 02fc 03EB020B 		add	fp, r3, r2
 3695              	.L371:
 3696 0300 D4E90023 		ldrd	r2, [r4]
 3697 0304 DDE90401 		ldrd	r0, [sp, #16]
 3698 0308 FFF7FEFF 		bl	__aeabi_dmul
 3699 030c 069B     		ldr	r3, [sp, #24]
 3700 030e 012B     		cmp	r3, #1
 3701 0310 0646     		mov	r6, r0
 3702 0312 0F46     		mov	r7, r1
 3703 0314 04F1080A 		add	r10, r4, #8
 3704 0318 17D9     		bls	.L369
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 66


 3705 031a 089B     		ldr	r3, [sp, #32]
 3706 031c 083C     		subs	r4, r4, #8
 3707 031e 03EB0A08 		add	r8, r3, r10
 3708 0322 4D46     		mov	r5, r9
 3709              	.L370:
 3710 0324 D4E91423 		ldrd	r2, [r4, #80]
 3711 0328 D5E91401 		ldrd	r0, [r5, #80]
 3712 032c FFF7FEFF 		bl	__aeabi_dmul
 3713 0330 0246     		mov	r2, r0
 3714 0332 0B46     		mov	r3, r1
 3715 0334 3046     		mov	r0, r6
 3716 0336 3946     		mov	r1, r7
 3717 0338 FFF7FEFF 		bl	__aeabi_dadd
 3718 033c 4834     		adds	r4, r4, #72
 3719 033e 4445     		cmp	r4, r8
 3720 0340 0646     		mov	r6, r0
 3721 0342 0F46     		mov	r7, r1
 3722 0344 05F14805 		add	r5, r5, #72
 3723 0348 ECD1     		bne	.L370
 3724              	.L369:
 3725 034a 079B     		ldr	r3, [sp, #28]
 3726 034c 5345     		cmp	r3, r10
 3727 034e EBE80267 		strd	r6, [fp], #8
 3728 0352 5446     		mov	r4, r10
 3729 0354 D4D1     		bne	.L371
 3730 0356 DDE90E23 		ldrd	r2, [sp, #56]
 3731 035a DDE90401 		ldrd	r0, [sp, #16]
 3732 035e FFF7FEFF 		bl	__aeabi_dmul
 3733 0362 069B     		ldr	r3, [sp, #24]
 3734 0364 012B     		cmp	r3, #1
 3735 0366 0646     		mov	r6, r0
 3736 0368 0F46     		mov	r7, r1
 3737 036a 2DD9     		bls	.L372
 3738 036c 119B     		ldr	r3, [sp, #68]
 3739 036e CDF83090 		str	r9, [sp, #48]
 3740 0372 4C46     		mov	r4, r9
 3741 0374 DDF84090 		ldr	r9, [sp, #64]
 3742 0378 03F58675 		add	r5, r3, #268
 3743 037c 0DF1F008 		add	r8, sp, #240
 3744              	.L373:
 3745 0380 F8E80223 		ldrd	r2, [r8], #8
 3746 0384 55F8040B 		ldr	r0, [r5], #4	@ float
 3747 0388 CDE90423 		strd	r2, [sp, #16]
 3748 038c FFF7FEFF 		bl	__aeabi_f2d
 3749 0390 DDE90423 		ldrd	r2, [sp, #16]
 3750 0394 FFF7FEFF 		bl	__aeabi_dadd
 3751 0398 01F1004B 		add	fp, r1, #-2147483648
 3752 039c D4E91423 		ldrd	r2, [r4, #80]
 3753 03a0 5946     		mov	r1, fp
 3754 03a2 8246     		mov	r10, r0
 3755 03a4 FFF7FEFF 		bl	__aeabi_dmul
 3756 03a8 0246     		mov	r2, r0
 3757 03aa 0B46     		mov	r3, r1
 3758 03ac 3046     		mov	r0, r6
 3759 03ae 3946     		mov	r1, r7
 3760 03b0 FFF7FEFF 		bl	__aeabi_dadd
 3761 03b4 A945     		cmp	r9, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 67


 3762 03b6 0646     		mov	r6, r0
 3763 03b8 0F46     		mov	r7, r1
 3764 03ba 04F14804 		add	r4, r4, #72
 3765 03be DFD1     		bne	.L373
 3766 03c0 CDE90AAB 		strd	r10, [sp, #40]
 3767 03c4 DDF83090 		ldr	r9, [sp, #48]
 3768              	.L372:
 3769 03c8 099B     		ldr	r3, [sp, #36]
 3770 03ca C3E90267 		strd	r6, [r3, #8]
 3771 03ce 5033     		adds	r3, r3, #80
 3772 03d0 0993     		str	r3, [sp, #36]
 3773 03d2 159B     		ldr	r3, [sp, #84]
 3774 03d4 09F10809 		add	r9, r9, #8
 3775 03d8 4B45     		cmp	r3, r9
 3776 03da 87D1     		bne	.L374
 3777 03dc DDF864B0 		ldr	fp, [sp, #100]
 3778              	.L368:
 3779 03e0 179B     		ldr	r3, [sp, #92]
 3780 03e2 33B1     		cbz	r3, .L375
 3781 03e4 0BF10103 		add	r3, fp, #1
 3782 03e8 5A46     		mov	r2, fp
 3783 03ea BAA9     		add	r1, sp, #744
 3784 03ec 5A48     		ldr	r0, .L448+16
 3785 03ee FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3786              	.L375:
 3787 03f2 28A9     		add	r1, sp, #160
 3788 03f4 5A46     		mov	r2, fp
 3789 03f6 BAA8     		add	r0, sp, #744
 3790 03f8 FFF7FEFF 		bl	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 3791 03fc 544B     		ldr	r3, .L448+8
 3792 03fe D3F80831 		ldr	r3, [r3, #264]
 3793 0402 D906     		lsls	r1, r3, #27
 3794 0404 00F10E81 		bmi	.L442
 3795              	.L376:
 3796 0408 28AA     		add	r2, sp, #160
 3797 040a 5946     		mov	r1, fp
 3798 040c 0D98     		ldr	r0, [sp, #52]
 3799 040e FFF7FEFF 		bl	_ZN21HangprinterKinematics6AdjustEjPKd
 3800 0412 DDE92801 		ldrd	r0, [sp, #160]
 3801 0416 FFF7FEFF 		bl	__aeabi_d2f
 3802 041a 2290     		str	r0, [sp, #136]	@ float
 3803 041c DDE92A01 		ldrd	r0, [sp, #168]
 3804 0420 FFF7FEFF 		bl	__aeabi_d2f
 3805 0424 2390     		str	r0, [sp, #140]	@ float
 3806 0426 DDE92C01 		ldrd	r0, [sp, #176]
 3807 042a FFF7FEFF 		bl	__aeabi_d2f
 3808 042e 484B     		ldr	r3, .L448+8
 3809 0430 2490     		str	r0, [sp, #144]	@ float
 3810 0432 0322     		movs	r2, #3
 3811 0434 D868     		ldr	r0, [r3, #12]
 3812 0436 22A9     		add	r1, sp, #136
 3813 0438 FFF7FEFF 		bl	_ZN4Move20AdjustMotorPositionsEPKfj
 3814 043c 9FED427B 		vldr.64	d7, .L448
 3815 0440 069B     		ldr	r3, [sp, #24]
 3816 0442 8DED047B 		vstr.64	d7, [sp, #16]
 3817 0446 002B     		cmp	r3, #0
 3818 0448 55D0     		beq	.L381
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 68


 3819 044a CDF830B0 		str	fp, [sp, #48]
 3820 044e DDF86C80 		ldr	r8, [sp, #108]
 3821 0452 DDF840B0 		ldr	fp, [sp, #64]
 3822 0456 0DF5B866 		add	r6, sp, #1472
 3823 045a 0DF1E80A 		add	r10, sp, #232
 3824 045e 0DF5F479 		add	r9, sp, #488
 3825 0462 2EAF     		add	r7, sp, #184
 3826              	.L383:
 3827 0464 06F10805 		add	r5, r6, #8
 3828 0468 28AC     		add	r4, sp, #160
 3829              	.L382:
 3830 046a F4E80223 		ldrd	r2, [r4], #8
 3831 046e D5E90001 		ldrd	r0, [r5]
 3832 0472 FFF7FEFF 		bl	__aeabi_dadd
 3833 0476 A742     		cmp	r7, r4
 3834 0478 E5E80201 		strd	r0, [r5], #8
 3835 047c F5D1     		bne	.L382
 3836 047e D6E90601 		ldrd	r0, [r6, #24]
 3837 0482 FFF7FEFF 		bl	__aeabi_d2f
 3838 0486 0990     		str	r0, [sp, #36]
 3839 0488 D6E90401 		ldrd	r0, [r6, #16]
 3840 048c FFF7FEFF 		bl	__aeabi_d2f
 3841 0490 0890     		str	r0, [sp, #32]
 3842 0492 D6E90201 		ldrd	r0, [r6, #8]
 3843 0496 FFF7FEFF 		bl	__aeabi_d2f
 3844 049a 9DED091A 		vldr.32	s2, [sp, #36]	@ int
 3845 049e DDED080A 		vldr.32	s1, [sp, #32]	@ int
 3846 04a2 00EE100A 		vmov	s0, r0
 3847 04a6 25A9     		add	r1, sp, #148
 3848 04a8 0D98     		ldr	r0, [sp, #52]
 3849 04aa FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 3850 04ae 9DED278A 		vldr.32	s16, [sp, #156]
 3851 04b2 18EE100A 		vmov	r0, s16
 3852 04b6 FFF7FEFF 		bl	__aeabi_f2d
 3853 04ba F8EC017A 		vldmia.32	r8!, {s15}
 3854 04be 78EE277A 		vadd.f32	s15, s16, s15
 3855 04c2 EAE80201 		strd	r0, [r10], #8
 3856 04c6 17EE900A 		vmov	r0, s15
 3857 04ca FFF7FEFF 		bl	__aeabi_f2d
 3858 04ce 0246     		mov	r2, r0
 3859 04d0 0B46     		mov	r3, r1
 3860 04d2 E9E80223 		strd	r2, [r9], #8
 3861 04d6 FFF7FEFF 		bl	__aeabi_dmul
 3862 04da 0246     		mov	r2, r0
 3863 04dc 0B46     		mov	r3, r1
 3864 04de DDE90401 		ldrd	r0, [sp, #16]
 3865 04e2 FFF7FEFF 		bl	__aeabi_dadd
 3866 04e6 C345     		cmp	fp, r8
 3867 04e8 06F11806 		add	r6, r6, #24
 3868 04ec CDE90401 		strd	r0, [sp, #16]
 3869 04f0 B8D1     		bne	.L383
 3870 04f2 DDF830B0 		ldr	fp, [sp, #48]
 3871              	.L381:
 3872 04f6 0698     		ldr	r0, [sp, #24]
 3873 04f8 FFF7FEFF 		bl	__aeabi_ui2d
 3874 04fc 0246     		mov	r2, r0
 3875 04fe 0B46     		mov	r3, r1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 69


 3876 0500 0446     		mov	r4, r0
 3877 0502 0D46     		mov	r5, r1
 3878 0504 DDE90401 		ldrd	r0, [sp, #16]
 3879 0508 FFF7FEFF 		bl	__aeabi_ddiv
 3880 050c FFF7FEFF 		bl	__aeabi_d2f
 3881 0510 00EE100A 		vmov	s0, r0
 3882 0514 B5EE400A 		vcmp.f32	s0, #0
 3883 0518 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3884 051c B1EEC08A 		vsqrt.f32	s16, s0
 3885 0520 00F1F080 		bmi	.L443
 3886              	.L384:
 3887 0524 0A4B     		ldr	r3, .L448+8
 3888 0526 D3F80831 		ldr	r3, [r3, #264]
 3889 052a DA06     		lsls	r2, r3, #27
 3890 052c 6ED4     		bmi	.L444
 3891              	.L385:
 3892 052e 189B     		ldr	r3, [sp, #96]
 3893 0530 012B     		cmp	r3, #1
 3894 0532 13D0     		beq	.L386
 3895 0534 0123     		movs	r3, #1
 3896 0536 1893     		str	r3, [sp, #96]
 3897 0538 5DE6     		b	.L354
 3898              	.L440:
 3899 053a 0529     		cmp	r1, #5
 3900 053c 6CD9     		bls	.L364
 3901 053e 3146     		mov	r1, r6
 3902 0540 8FE6     		b	.L363
 3903              	.L449:
 3904 0542 00BFAFF3 		.align	3
 3904      0080
 3905              	.L448:
 3906 0548 00000000 		.word	0
 3907 054c 00000000 		.word	0
 3908 0550 00000000 		.word	reprap
 3909 0554 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 3910 0558 6C000000 		.word	.LC33
 3911              	.L386:
 3912 055c 6C4B     		ldr	r3, .L450
 3913 055e DDF834B0 		ldr	fp, [sp, #52]
 3914 0562 D3F80831 		ldr	r3, [r3, #264]
 3915 0566 DB06     		lsls	r3, r3, #27
 3916 0568 0DD5     		bpl	.L387
 3917 056a 169E     		ldr	r6, [sp, #88]
 3918 056c BA96     		str	r6, [sp, #744]
 3919 056e 0022     		movs	r2, #0
 3920 0570 DD23     		movs	r3, #221
 3921 0572 BAA9     		add	r1, sp, #744
 3922 0574 5846     		mov	r0, fp
 3923 0576 3270     		strb	r2, [r6]
 3924 0578 BB93     		str	r3, [sp, #748]
 3925 057a FFF7FEFF 		bl	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 3926 057e 3146     		mov	r1, r6
 3927 0580 6448     		ldr	r0, .L450+4
 3928 0582 FFF7FEFF 		bl	debugPrintf
 3929              	.L387:
 3930 0586 2246     		mov	r2, r4
 3931 0588 2B46     		mov	r3, r5
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 70


 3932 058a DDE91201 		ldrd	r0, [sp, #72]
 3933 058e FFF7FEFF 		bl	__aeabi_ddiv
 3934 0592 FFF7FEFF 		bl	__aeabi_d2f
 3935 0596 00EE100A 		vmov	s0, r0
 3936 059a B5EE400A 		vcmp.f32	s0, #0
 3937 059e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3938 05a2 F1EEC08A 		vsqrt.f32	s17, s0
 3939 05a6 00F1B080 		bmi	.L445
 3940              	.L388:
 3941 05aa 18EE100A 		vmov	r0, s16
 3942 05ae FFF7FEFF 		bl	__aeabi_f2d
 3943 05b2 CDE90201 		strd	r0, [sp, #8]
 3944 05b6 18EE900A 		vmov	r0, s17
 3945 05ba FFF7FEFF 		bl	__aeabi_f2d
 3946 05be 209C     		ldr	r4, [sp, #128]
 3947 05c0 069B     		ldr	r3, [sp, #24]
 3948 05c2 1A9A     		ldr	r2, [sp, #104]
 3949 05c4 CDE90001 		strd	r0, [sp]
 3950 05c8 5349     		ldr	r1, .L450+8
 3951 05ca 2046     		mov	r0, r4
 3952 05cc FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3953 05d0 4F4A     		ldr	r2, .L450
 3954 05d2 2368     		ldr	r3, [r4]
 3955 05d4 5068     		ldr	r0, [r2, #4]
 3956 05d6 4F4A     		ldr	r2, .L450+4
 3957 05d8 8021     		movs	r1, #128
 3958 05da FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3959 05de 0123     		movs	r3, #1
 3960 05e0 8BF82C31 		strb	r3, [fp, #300]
 3961 05e4 25E5     		b	.L433
 3962              	.L441:
 3963 05e6 5B46     		mov	r3, fp
 3964 05e8 069A     		ldr	r2, [sp, #24]
 3965 05ea 1699     		ldr	r1, [sp, #88]
 3966 05ec 4B48     		ldr	r0, .L450+12
 3967 05ee FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3968 05f2 474B     		ldr	r3, .L450
 3969 05f4 4A4A     		ldr	r2, .L450+16
 3970 05f6 D3F80831 		ldr	r3, [r3, #264]
 3971 05fa BA92     		str	r2, [sp, #744]
 3972 05fc 03F01003 		and	r3, r3, #16
 3973 0600 1793     		str	r3, [sp, #92]
 3974 0602 BBF1000F 		cmp	fp, #0
 3975 0606 7FF458AE 		bne	.L389
 3976 060a E9E6     		b	.L368
 3977              	.L444:
 3978 060c 069A     		ldr	r2, [sp, #24]
 3979 060e 4548     		ldr	r0, .L450+20
 3980 0610 7AA9     		add	r1, sp, #488
 3981 0612 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 3982 0616 8AE7     		b	.L385
 3983              	.L364:
 3984 0618 FFF7FEFF 		bl	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 3985 061c 3146     		mov	r1, r6
 3986 061e A7EC020B 		vstmia.64	r7!, {d0}
 3987 0622 12E6     		b	.L362
 3988              	.L442:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 71


 3989 0624 0BF10103 		add	r3, fp, #1
 3990 0628 5A46     		mov	r2, fp
 3991 062a BAA9     		add	r1, sp, #744
 3992 062c 3E48     		ldr	r0, .L450+24
 3993 062e FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3994 0632 5A46     		mov	r2, fp
 3995 0634 28A9     		add	r1, sp, #160
 3996 0636 3D48     		ldr	r0, .L450+28
 3997 0638 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 3998 063c 3C48     		ldr	r0, .L450+32
 3999 063e FFF7FEFF 		bl	debugPrintf
 4000 0642 069B     		ldr	r3, [sp, #24]
 4001 0644 7BB3     		cbz	r3, .L377
 4002 0646 CDF810B0 		str	fp, [sp, #16]
 4003 064a DFF8ECA0 		ldr	r10, .L450+40
 4004 064e DDF86C80 		ldr	r8, [sp, #108]
 4005 0652 DDF884B0 		ldr	fp, [sp, #132]
 4006 0656 0DF50D69 		add	r9, sp, #2256
 4007              	.L380:
 4008 065a 58F8040B 		ldr	r0, [r8], #4	@ float
 4009 065e FFF7FEFF 		bl	__aeabi_f2d
 4010 0662 049B     		ldr	r3, [sp, #16]
 4011 0664 0646     		mov	r6, r0
 4012 0666 0F46     		mov	r7, r1
 4013 0668 8BB1     		cbz	r3, .L378
 4014 066a 4D46     		mov	r5, r9
 4015 066c 28AC     		add	r4, sp, #160
 4016              	.L379:
 4017 066e F5E80223 		ldrd	r2, [r5], #8
 4018 0672 F4E80201 		ldrd	r0, [r4], #8
 4019 0676 FFF7FEFF 		bl	__aeabi_dmul
 4020 067a 0246     		mov	r2, r0
 4021 067c 0B46     		mov	r3, r1
 4022 067e 3046     		mov	r0, r6
 4023 0680 3946     		mov	r1, r7
 4024 0682 FFF7FEFF 		bl	__aeabi_dadd
 4025 0686 A345     		cmp	fp, r4
 4026 0688 0646     		mov	r6, r0
 4027 068a 0F46     		mov	r7, r1
 4028 068c EFD1     		bne	.L379
 4029              	.L378:
 4030 068e 3B46     		mov	r3, r7
 4031 0690 3246     		mov	r2, r6
 4032 0692 5046     		mov	r0, r10
 4033 0694 FFF7FEFF 		bl	debugPrintf
 4034 0698 109B     		ldr	r3, [sp, #64]
 4035 069a 4345     		cmp	r3, r8
 4036 069c 09F14809 		add	r9, r9, #72
 4037 06a0 DBD1     		bne	.L380
 4038 06a2 DDF810B0 		ldr	fp, [sp, #16]
 4039              	.L377:
 4040 06a6 2348     		ldr	r0, .L450+36
 4041 06a8 FFF7FEFF 		bl	debugPrintf
 4042 06ac ACE6     		b	.L376
 4043              	.L434:
 4044 06ae 0DF6C802 		addw	r2, sp, #2248
 4045 06b2 1D9C     		ldr	r4, [sp, #116]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 72


 4046 06b4 8DF8C848 		strb	r4, [sp, #2248]
 4047 06b8 DD23     		movs	r3, #221
 4048 06ba 0DF5B861 		add	r1, sp, #1472
 4049 06be 1446     		mov	r4, r2
 4050 06c0 5846     		mov	r0, fp
 4051 06c2 1692     		str	r2, [sp, #88]
 4052 06c4 CDF8C025 		str	r2, [sp, #1472]
 4053 06c8 CDF8C435 		str	r3, [sp, #1476]
 4054 06cc FFF7FEFF 		bl	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 4055 06d0 2146     		mov	r1, r4
 4056 06d2 1048     		ldr	r0, .L450+4
 4057 06d4 FFF7FEFF 		bl	debugPrintf
 4058 06d8 C4E4     		b	.L352
 4059              	.L437:
 4060 06da FFF7FEFF 		bl	sqrtf
 4061 06de 94ED009A 		vldr.32	s18, [r4]
 4062 06e2 94ED018A 		vldr.32	s16, [r4, #4]
 4063 06e6 D4ED029A 		vldr.32	s19, [r4, #8]
 4064 06ea 08E5     		b	.L355
 4065              	.L438:
 4066 06ec FFF7FEFF 		bl	sqrtf
 4067 06f0 94ED009A 		vldr.32	s18, [r4]
 4068 06f4 94ED018A 		vldr.32	s16, [r4, #4]
 4069 06f8 D4ED029A 		vldr.32	s19, [r4, #8]
 4070 06fc 20E5     		b	.L356
 4071              	.L439:
 4072 06fe FFF7FEFF 		bl	sqrtf
 4073 0702 3DE5     		b	.L357
 4074              	.L443:
 4075 0704 FFF7FEFF 		bl	sqrtf
 4076 0708 0CE7     		b	.L384
 4077              	.L445:
 4078 070a FFF7FEFF 		bl	sqrtf
 4079 070e 4CE7     		b	.L388
 4080              	.L451:
 4081              		.align	2
 4082              	.L450:
 4083 0710 00000000 		.word	reprap
 4084 0714 54000000 		.word	.LC31
 4085 0718 C8000000 		.word	.LC40
 4086 071c 58000000 		.word	.LC32
 4087 0720 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 4088 0724 B0000000 		.word	.LC39
 4089 0728 7C000000 		.word	.LC34
 4090 072c 8C000000 		.word	.LC35
 4091 0730 98000000 		.word	.LC36
 4092 0734 AC000000 		.word	.LC38
 4093 0738 A4000000 		.word	.LC37
 4094              		.size	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN21H
 4095              		.global	_ZTV21HangprinterKinematics
 4096              		.weak	_ZTV11FixedMatrixIdLj32ELj9EE
 4097              		.section	.rodata._ZTV11FixedMatrixIdLj32ELj9EE,"aG",%progbits,_ZTV11FixedMatrixIdLj32ELj9EE,comdat
 4098              		.align	2
 4099              		.type	_ZTV11FixedMatrixIdLj32ELj9EE, %object
 4100              		.size	_ZTV11FixedMatrixIdLj32ELj9EE, 32
 4101              	_ZTV11FixedMatrixIdLj32ELj9EE:
 4102 0000 00000000 		.word	0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 73


 4103 0004 00000000 		.word	0
 4104 0008 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 4105 000c 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 4106 0010 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EEclEjj
 4107 0014 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 4108 0018 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED1Ev
 4109 001c 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 4110              		.weak	_ZTV11FixedMatrixIdLj9ELj10EE
 4111              		.section	.rodata._ZTV11FixedMatrixIdLj9ELj10EE,"aG",%progbits,_ZTV11FixedMatrixIdLj9ELj10EE,comdat
 4112              		.align	2
 4113              		.type	_ZTV11FixedMatrixIdLj9ELj10EE, %object
 4114              		.size	_ZTV11FixedMatrixIdLj9ELj10EE, 32
 4115              	_ZTV11FixedMatrixIdLj9ELj10EE:
 4116 0000 00000000 		.word	0
 4117 0004 00000000 		.word	0
 4118 0008 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 4119 000c 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 4120 0010 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 4121 0014 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 4122 0018 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED1Ev
 4123 001c 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 4124              		.section	.rodata
 4125              		.align	2
 4126              		.set	.LANCHOR0,. + 0
 4127              	.LC13:
 4128 0000 08000000 		.word	.LC6
 4129 0004 10000000 		.word	.LC7
 4130 0008 18000000 		.word	.LC8
 4131 000c 00000000 		.word	.LC9
 4132              	.LC0:
 4133 0010 33338242 		.word	1115829043
 4134 0014 33338242 		.word	1115829043
 4135 0018 33338242 		.word	1115829043
 4136 001c 9A998242 		.word	1115855258
 4137              	.LC1:
 4138 0020 02000000 		.word	2
 4139 0024 02000000 		.word	2
 4140 0028 02000000 		.word	2
 4141 002c 01000000 		.word	1
 4142              	.LC2:
 4143 0030 01000000 		.word	1
 4144 0034 01000000 		.word	1
 4145 0038 01000000 		.word	1
 4146 003c 01000000 		.word	1
 4147              	.LC3:
 4148 0040 14000000 		.word	20
 4149 0044 14000000 		.word	20
 4150 0048 14000000 		.word	20
 4151 004c 14000000 		.word	20
 4152              	.LC4:
 4153 0050 FF000000 		.word	255
 4154 0054 FF000000 		.word	255
 4155 0058 FF000000 		.word	255
 4156 005c FF000000 		.word	255
 4157              	.LC5:
 4158 0060 20000000 		.word	32
 4159 0064 20000000 		.word	32
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 74


 4160 0068 20000000 		.word	32
 4161 006c 20000000 		.word	32
 4162              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 4163              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 4164              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 4165              	_ZL28cpu_irq_prev_interrupt_state:
 4166 0000 00       		.space	1
 4167              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 4168              		.align	2
 4169              		.type	_ZL32cpu_irq_critical_section_counter, %object
 4170              		.size	_ZL32cpu_irq_critical_section_counter, 4
 4171              	_ZL32cpu_irq_critical_section_counter:
 4172 0000 00000000 		.space	4
 4173              		.section	.rodata._ZL14DefaultAnchorA,"a",%progbits
 4174              		.align	2
 4175              		.set	.LANCHOR1,. + 0
 4176              		.type	_ZL14DefaultAnchorA, %object
 4177              		.size	_ZL14DefaultAnchorA, 12
 4178              	_ZL14DefaultAnchorA:
 4179 0000 00000000 		.word	0
 4180 0004 29A4B3C4 		.word	-994859991
 4181 0008 00006DC3 		.word	-1016266752
 4182              		.section	.rodata._ZL14DefaultAnchorB,"a",%progbits
 4183              		.align	2
 4184              		.set	.LANCHOR2,. + 0
 4185              		.type	_ZL14DefaultAnchorB, %object
 4186              		.size	_ZL14DefaultAnchorB, 12
 4187              	_ZL14DefaultAnchorB:
 4188 0000 E1929B44 		.word	1151046369
 4189 0004 D7A33344 		.word	1144234967
 4190 0008 00006CC3 		.word	-1016332288
 4191              		.section	.rodata._ZL14DefaultAnchorC,"a",%progbits
 4192              		.align	2
 4193              		.set	.LANCHOR3,. + 0
 4194              		.type	_ZL14DefaultAnchorC, %object
 4195              		.size	_ZL14DefaultAnchorC, 12
 4196              	_ZL14DefaultAnchorC:
 4197 0000 E1929BC4 		.word	-996437279
 4198 0004 D7A33344 		.word	1144234967
 4199 0008 00006CC3 		.word	-1016332288
 4200              		.section	.rodata._ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRe
 4201              		.align	2
 4202              	.LC30:
 4203 0000 48616E67 		.ascii	"Hangprinter calibration with %d factors requested b"
 4203      7072696E 
 4203      74657220 
 4203      63616C69 
 4203      62726174 
 4204 0033 7574206F 		.ascii	"ut only 3, 6, and 9 supported\000"
 4204      6E6C7920 
 4204      332C2036 
 4204      2C20616E 
 4204      64203920 
 4205 0051 000000   		.space	3
 4206              	.LC31:
 4207 0054 25730A00 		.ascii	"%s\012\000"
 4208              	.LC32:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 75


 4209 0058 44657269 		.ascii	"Derivative matrix\000"
 4209      76617469 
 4209      7665206D 
 4209      61747269 
 4209      7800
 4210 006a 0000     		.space	2
 4211              	.LC33:
 4212 006c 4E6F726D 		.ascii	"Normal matrix\000"
 4212      616C206D 
 4212      61747269 
 4212      7800
 4213 007a 0000     		.space	2
 4214              	.LC34:
 4215 007c 536F6C76 		.ascii	"Solved matrix\000"
 4215      6564206D 
 4215      61747269 
 4215      7800
 4216 008a 0000     		.space	2
 4217              	.LC35:
 4218 008c 536F6C75 		.ascii	"Solution\000"
 4218      74696F6E 
 4218      00
 4219 0095 000000   		.space	3
 4220              	.LC36:
 4221 0098 52657369 		.ascii	"Residuals:\000"
 4221      6475616C 
 4221      733A00
 4222 00a3 00       		.space	1
 4223              	.LC37:
 4224 00a4 2025372E 		.ascii	" %7.4f\000"
 4224      346600
 4225 00ab 00       		.space	1
 4226              	.LC38:
 4227 00ac 0A00     		.ascii	"\012\000"
 4228 00ae 0000     		.space	2
 4229              	.LC39:
 4230 00b0 45787065 		.ascii	"Expected probe error\000"
 4230      63746564 
 4230      2070726F 
 4230      62652065 
 4230      72726F72 
 4231 00c5 000000   		.space	3
 4232              	.LC40:
 4233 00c8 43616C69 		.ascii	"Calibrated %d factors using %d points, deviation be"
 4233      62726174 
 4233      65642025 
 4233      64206661 
 4233      63746F72 
 4234 00fb 666F7265 		.ascii	"fore %.3f after %.3f\000"
 4234      20252E33 
 4234      66206166 
 4234      74657220 
 4234      252E3366 
 4235              		.section	.rodata._ZN21HangprinterKinematics6RecalcEv.str1.4,"aMS",%progbits,1
 4236              		.align	2
 4237              	.LC17:
 4238 0000 50696574 		.ascii	"Pietari Line Lengths origins: %f\012\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 76


 4238      61726920 
 4238      4C696E65 
 4238      204C656E 
 4238      67746873 
 4239 0022 0000     		.space	2
 4240              	.LC18:
 4241 0024 50696574 		.ascii	"Pietari k2 value %f\012\000"
 4241      61726920 
 4241      6B322076 
 4241      616C7565 
 4241      2025660A 
 4242 0039 000000   		.space	3
 4243              	.LC19:
 4244 003c 50696574 		.ascii	"Pietari k0 value %f\012\000"
 4244      61726920 
 4244      6B302076 
 4244      616C7565 
 4244      2025660A 
 4245 0051 000000   		.space	3
 4246              	.LC20:
 4247 0054 52656361 		.ascii	"Recalced params\012Da2: %.2f, Db2: %.2f, Dc2: %.2f,"
 4247      6C636564 
 4247      20706172 
 4247      616D730A 
 4247      4461323A 
 4248 0084 20586162 		.ascii	" Xab: %.2f, Xbc: %.2f, Xca: %.2f, Yab: %.2f, Ybc: %"
 4248      3A20252E 
 4248      32662C20 
 4248      5862633A 
 4248      20252E32 
 4249 00b7 2E32662C 		.ascii	".2f, Yca: %.2f, Zab: %.2f, Zbc: %.2f, Zca: %.2f, P:"
 4249      20596361 
 4249      3A20252E 
 4249      32662C20 
 4249      5A61623A 
 4250 00ea 20252E32 		.ascii	" %.2f, P2: %.2f, Q: %.2f, R: %.2f, U: %.2f, A: %.2f"
 4250      662C2050 
 4250      323A2025 
 4250      2E32662C 
 4250      20513A20 
 4251 011d 0A00     		.ascii	"\012\000"
 4252              		.section	.rodata._ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%
 4253              		.align	2
 4254              	.LC21:
 4255 0000 4B696E65 		.ascii	"Kinematics is Hangprinter\012Anchor positions:\012%"
 4255      6D617469 
 4255      63732069 
 4255      73204861 
 4255      6E677072 
 4256 002d 2E32662C 		.ascii	".2f, %.2f, %.2f\012%.2f, %.2f, %.2f\012%.2f, %.2f, "
 4256      20252E32 
 4256      662C2025 
 4256      2E32660A 
 4256      252E3266 
 4257 005a 252E3266 		.ascii	"%.2f\012%.2f\012Print radius:\012%.1f\012Segments/s"
 4257      0A252E32 
 4257      660A5072 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 77


 4257      696E7420 
 4257      72616469 
 4258 0081 3A0A2564 		.ascii	":\012%d\012Min segment length:\012%.2f\012Spool bui"
 4258      0A4D696E 
 4258      20736567 
 4258      6D656E74 
 4258      206C656E 
 4259 00a8 6C647570 		.ascii	"ldup factor:\012%.4f\012Spool radii:\012%.2f, %.2f,"
 4259      20666163 
 4259      746F723A 
 4259      0A252E34 
 4259      660A5370 
 4260 00d2 20252E32 		.ascii	" %.2f, %.2f\012Mechanical Advantage:\012%d, %d, %d,"
 4260      662C2025 
 4260      2E32660A 
 4260      4D656368 
 4260      616E6963 
 4261 00ff 2025640A 		.ascii	" %d\012Lines per spool:\012%d, %d, %d, %d\012Motor "
 4261      4C696E65 
 4261      73207065 
 4261      72207370 
 4261      6F6F6C3A 
 4262 0129 67656172 		.ascii	"gear teeth\012%d, %d, %d, %d\012Spool gear teeth\012"
 4262      20746565 
 4262      74680A25 
 4262      642C2025 
 4262      642C2025 
 4263 0154 25642C20 		.ascii	"%d, %d, %d, %d\012Full steps per revolution\012%d, "
 4263      25642C20 
 4263      25642C20 
 4263      25640A46 
 4263      756C6C20 
 4264 0181 25642C20 		.ascii	"%d, %d, %d\000"
 4264      25642C20 
 4264      256400
 4265              	.LC22:
 4266 018c 513A4275 		.ascii	"Q:Buildup fac %.4f\012R:Spool r %.2f, %.2f, %.2f, %"
 4266      696C6475 
 4266      70206661 
 4266      6320252E 
 4266      34660A52 
 4267 01bc 2E32660A 		.ascii	".2f\012U:Mech Adv %d, %d, %d, %d\012O:Lines/spool %"
 4267      553A4D65 
 4267      63682041 
 4267      64762025 
 4267      642C2025 
 4268 01e9 642C2025 		.ascii	"d, %d, %d, %d\012L:Motor gear teeth %d, %d, %d, %d\012"
 4268      642C2025 
 4268      642C2025 
 4268      640A4C3A 
 4268      4D6F746F 
 4269 0219 483A5370 		.ascii	"H:Spool gear teeth %d, %d, %d, %d\012J:Full steps/r"
 4269      6F6F6C20 
 4269      67656172 
 4269      20746565 
 4269      74682025 
 4270 0249 65762025 		.ascii	"ev %d, %d, %d, %d\000"
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 78


 4270      642C2025 
 4270      642C2025 
 4270      642C2025 
 4270      6400
 4271              		.section	.rodata._ZNK21HangprinterKinematics15PrintParametersERK9StringRef.str1.4,"aMS",%progbits,
 4272              		.align	2
 4273              	.LC27:
 4274 0000 416E6368 		.ascii	"Anchor coordinates (%.2f,%.2f,%.2f) (%.2f,%.2f,%.2f"
 4274      6F722063 
 4274      6F6F7264 
 4274      696E6174 
 4274      65732028 
 4275 0033 29202825 		.ascii	") (%.2f,%.2f,%.2f)\012\000"
 4275      2E32662C 
 4275      252E3266 
 4275      2C252E32 
 4275      66290A00 
 4276              		.section	.rodata._ZNK21HangprinterKinematics16InverseTransformEfffPf.str1.4,"aMS",%progbits,1
 4277              		.align	2
 4278              	.LC23:
 4279 0000 496E7665 		.ascii	"Inverse Transform Pietari: S: %.2f, T: %.2f, halfB:"
 4279      72736520 
 4279      5472616E 
 4279      73666F72 
 4279      6D205069 
 4280 0033 20252E32 		.ascii	" %.2f, C: %.2f\012\000"
 4280      662C2043 
 4280      3A20252E 
 4280      32660A00 
 4281 0043 00       		.space	1
 4282              	.LC24:
 4283 0044 6D616368 		.ascii	"machinepos before Pietari %f\000"
 4283      696E6570 
 4283      6F732062 
 4283      65666F72 
 4283      65205069 
 4284 0061 000000   		.space	3
 4285              	.LC25:
 4286 0064 6D616368 		.ascii	"machinepos after Pietari %f\000"
 4286      696E6570 
 4286      6F732061 
 4286      66746572 
 4286      20506965 
 4287              	.LC26:
 4288 0080 4D6F746F 		.ascii	"Motor %.2f,%.2f,%.2f to Cartesian %.2f,%.2f,%.2f\012"
 4288      7220252E 
 4288      32662C25 
 4288      2E32662C 
 4288      252E3266 
 4289 00b1 00       		.ascii	"\000"
 4290              		.section	.rodata._ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef.str1.4,"aMS",%prog
 4291              		.align	2
 4292              	.LC16:
 4293 0000 686F6D65 		.ascii	"homeall.g\000"
 4293      616C6C2E 
 4293      6700
 4294              		.section	.rodata._ZNK21HangprinterKinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 79


 4295              		.align	2
 4296              	.LC11:
 4297 0000 41424344 		.ascii	"ABCD\000"
 4297      00
 4298              		.section	.rodata._ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb.str1.4,"aMS",%prog
 4299              		.align	2
 4300              	.LC14:
 4301 0000 4C696E65 		.ascii	"Lineposition %s Pietari: %f\012\000"
 4301      706F7369 
 4301      74696F6E 
 4301      20257320 
 4301      50696574 
 4302 001d 000000   		.space	3
 4303              	.LC15:
 4304 0020 4D6F746F 		.ascii	"Motor positions Pietari: %s, %f\012\000"
 4304      7220706F 
 4304      73697469 
 4304      6F6E7320 
 4304      50696574 
 4305              		.section	.rodata._ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore.str1.4,"aMS",
 4306              		.align	2
 4307              	.LC28:
 4308 0000 3B204861 		.ascii	"; Hangprinter parameters\012\000"
 4308      6E677072 
 4308      696E7465 
 4308      72207061 
 4308      72616D65 
 4309 001a 0000     		.space	2
 4310              	.LC29:
 4311 001c 50696574 		.ascii	"Pietari M669 K6 A%.3f:%.3f:%.3f B%.3f:%.3f:%.3f C%."
 4311      61726920 
 4311      4D363639 
 4311      204B3620 
 4311      41252E33 
 4312 004f 33663A25 		.ascii	"3f:%.3f:%.3f D%.3f P%.1f Q%.6f R%.3f:%.3f:%.3f:%.3f"
 4312      2E33663A 
 4312      252E3366 
 4312      2044252E 
 4312      33662050 
 4313 0082 0A00     		.ascii	"\012\000"
 4314              		.section	.rodata._ZNK21HangprinterKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 4315              		.align	2
 4316              	.LC12:
 4317 0000 48616E67 		.ascii	"Hangprinter\000"
 4317      7072696E 
 4317      74657200 
 4318              		.section	.rodata._ZTV21HangprinterKinematics,"a",%progbits
 4319              		.align	2
 4320              		.set	.LANCHOR4,. + 0
 4321              		.type	_ZTV21HangprinterKinematics, %object
 4322              		.size	_ZTV21HangprinterKinematics, 128
 4323              	_ZTV21HangprinterKinematics:
 4324 0000 00000000 		.word	0
 4325 0004 00000000 		.word	0
 4326 0008 00000000 		.word	_ZNK21HangprinterKinematics7GetNameEb
 4327 000c 00000000 		.word	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 4328 0010 00000000 		.word	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\cc4rwqRf.s 			page 80


 4329 0014 00000000 		.word	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf
 4330 0018 00000000 		.word	_ZNK21HangprinterKinematics23SupportsAutoCalibrationEv
 4331 001c 00000000 		.word	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 4332 0020 00000000 		.word	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv
 4333 0024 00000000 		.word	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore
 4334 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 4335 002c 00000000 		.word	_ZNK21HangprinterKinematics11IsReachableEffb
 4336 0030 00000000 		.word	_ZNK21HangprinterKinematics13LimitPositionEPfjmb
 4337 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 4338 0038 00000000 		.word	_ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf
 4339 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 4340 0040 00000000 		.word	_ZNK21HangprinterKinematics16NumHomingButtonsEj
 4341 0044 00000000 		.word	_ZNK21HangprinterKinematics17HomingButtonNamesEv
 4342 0048 00000000 		.word	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 4343 004c 00000000 		.word	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRK9StringRef
 4344 0050 00000000 		.word	_ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj
 4345 0054 00000000 		.word	_ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 4346 0058 00000000 		.word	_ZNK21HangprinterKinematics13GetHomingModeEv
 4347 005c 00000000 		.word	_ZNK21HangprinterKinematics16AxesAssumedHomedEm
 4348 0060 00000000 		.word	_ZNK21HangprinterKinematics15MustBeHomedAxesEmb
 4349 0064 00000000 		.word	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore
 4350 0068 00000000 		.word	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf
 4351 006c 00000000 		.word	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj
 4352 0070 00000000 		.word	_ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj
 4353 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 4354 0078 00000000 		.word	_ZN21HangprinterKinematicsD1Ev
 4355 007c 00000000 		.word	_ZN21HangprinterKinematicsD0Ev
 4356              		.section	.rodata.str1.4,"aMS",%progbits,1
 4357              		.align	2
 4358              	.LC9:
 4359 0000 44206178 		.ascii	"D axis\000"
 4359      697300
 4360 0007 00       		.space	1
 4361              	.LC6:
 4362 0008 41206178 		.ascii	"A axis\000"
 4362      697300
 4363 000f 00       		.space	1
 4364              	.LC7:
 4365 0010 42206178 		.ascii	"B axis\000"
 4365      697300
 4366 0017 00       		.space	1
 4367              	.LC8:
 4368 0018 43206178 		.ascii	"C axis\000"
 4368      697300
 4369              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
