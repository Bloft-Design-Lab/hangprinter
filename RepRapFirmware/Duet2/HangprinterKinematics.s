ARM GAS  /tmp/cc08Wu1q.s 			page 1


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
  14              		.section	.text._ZNK10Kinematics17GetTiltCorrectionEj,"axG",%progbits,_ZNK10Kinematics17GetTiltCorr
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZNK10Kinematics17GetTiltCorrectionEj
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK10Kinematics17GetTiltCorrectionEj, %function
  23              	_ZNK10Kinematics17GetTiltCorrectionEj:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 9FED010A 		vldr.32	s0, .L3
  28 0004 7047     		bx	lr
  29              	.L4:
  30 0006 00BF     		.align	2
  31              	.L3:
  32 0008 00000000 		.word	0
  33              		.size	_ZNK10Kinematics17GetTiltCorrectionEj, .-_ZNK10Kinematics17GetTiltCorrectionEj
  34              		.section	.text._ZNK10Kinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK10Kinematics23AxesT
  35              		.align	1
  36              		.p2align 2,,3
  37              		.weak	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  38              		.syntax unified
  39              		.thumb
  40              		.thumb_func
  41              		.fpu fpv4-sp-d16
  42              		.type	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, %function
  43              	_ZNK10Kinematics23AxesToHomeBeforeProbingEv:
  44              		@ args = 0, pretend = 0, frame = 0
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46              		@ link register save eliminated.
  47 0000 0320     		movs	r0, #3
  48 0002 7047     		bx	lr
  49              		.size	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, .-_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  50              		.section	.text._ZNK10Kinematics13GetMotionTypeEj,"axG",%progbits,_ZNK10Kinematics13GetMotionTypeEj
  51              		.align	1
  52              		.p2align 2,,3
  53              		.weak	_ZNK10Kinematics13GetMotionTypeEj
  54              		.syntax unified
  55              		.thumb
  56              		.thumb_func
  57              		.fpu fpv4-sp-d16
ARM GAS  /tmp/cc08Wu1q.s 			page 2


  58              		.type	_ZNK10Kinematics13GetMotionTypeEj, %function
  59              	_ZNK10Kinematics13GetMotionTypeEj:
  60              		@ args = 0, pretend = 0, frame = 0
  61              		@ frame_needed = 0, uses_anonymous_args = 0
  62              		@ link register save eliminated.
  63 0000 0020     		movs	r0, #0
  64 0002 7047     		bx	lr
  65              		.size	_ZNK10Kinematics13GetMotionTypeEj, .-_ZNK10Kinematics13GetMotionTypeEj
  66              		.section	.text._ZNK10Kinematics24IsContinuousRotationAxisEj,"axG",%progbits,_ZNK10Kinematics24IsCo
  67              		.align	1
  68              		.p2align 2,,3
  69              		.weak	_ZNK10Kinematics24IsContinuousRotationAxisEj
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu fpv4-sp-d16
  74              		.type	_ZNK10Kinematics24IsContinuousRotationAxisEj, %function
  75              	_ZNK10Kinematics24IsContinuousRotationAxisEj:
  76              		@ args = 0, pretend = 0, frame = 0
  77              		@ frame_needed = 0, uses_anonymous_args = 0
  78              		@ link register save eliminated.
  79 0000 0020     		movs	r0, #0
  80 0002 7047     		bx	lr
  81              		.size	_ZNK10Kinematics24IsContinuousRotationAxisEj, .-_ZNK10Kinematics24IsContinuousRotationAxisEj
  82              		.section	.text._ZNK21HangprinterKinematics23SupportsAutoCalibrationEv,"axG",%progbits,_ZNK21Hangpr
  83              		.align	1
  84              		.p2align 2,,3
  85              		.weak	_ZNK21HangprinterKinematics23SupportsAutoCalibrationEv
  86              		.syntax unified
  87              		.thumb
  88              		.thumb_func
  89              		.fpu fpv4-sp-d16
  90              		.type	_ZNK21HangprinterKinematics23SupportsAutoCalibrationEv, %function
  91              	_ZNK21HangprinterKinematics23SupportsAutoCalibrationEv:
  92              		@ args = 0, pretend = 0, frame = 0
  93              		@ frame_needed = 0, uses_anonymous_args = 0
  94              		@ link register save eliminated.
  95 0000 0120     		movs	r0, #1
  96 0002 7047     		bx	lr
  97              		.size	_ZNK21HangprinterKinematics23SupportsAutoCalibrationEv, .-_ZNK21HangprinterKinematics23Suppo
  98              		.section	.text._ZNK21HangprinterKinematics16NumHomingButtonsEj,"axG",%progbits,_ZNK21HangprinterKi
  99              		.align	1
 100              		.p2align 2,,3
 101              		.weak	_ZNK21HangprinterKinematics16NumHomingButtonsEj
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu fpv4-sp-d16
 106              		.type	_ZNK21HangprinterKinematics16NumHomingButtonsEj, %function
 107              	_ZNK21HangprinterKinematics16NumHomingButtonsEj:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110              		@ link register save eliminated.
 111 0000 0020     		movs	r0, #0
 112 0002 7047     		bx	lr
 113              		.size	_ZNK21HangprinterKinematics16NumHomingButtonsEj, .-_ZNK21HangprinterKinematics16NumHomingBut
 114              		.section	.text._ZNK21HangprinterKinematics17HomingButtonNamesEv,"axG",%progbits,_ZNK21HangprinterK
ARM GAS  /tmp/cc08Wu1q.s 			page 3


 115              		.align	1
 116              		.p2align 2,,3
 117              		.weak	_ZNK21HangprinterKinematics17HomingButtonNamesEv
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu fpv4-sp-d16
 122              		.type	_ZNK21HangprinterKinematics17HomingButtonNamesEv, %function
 123              	_ZNK21HangprinterKinematics17HomingButtonNamesEv:
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126              		@ link register save eliminated.
 127 0000 0048     		ldr	r0, .L11
 128 0002 7047     		bx	lr
 129              	.L12:
 130              		.align	2
 131              	.L11:
 132 0004 00000000 		.word	.LC10
 133              		.size	_ZNK21HangprinterKinematics17HomingButtonNamesEv, .-_ZNK21HangprinterKinematics17HomingButto
 134              		.section	.text._ZNK21HangprinterKinematics16MachineAxisNamesEv,"axG",%progbits,_ZNK21HangprinterKi
 135              		.align	1
 136              		.p2align 2,,3
 137              		.weak	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu fpv4-sp-d16
 142              		.type	_ZNK21HangprinterKinematics16MachineAxisNamesEv, %function
 143              	_ZNK21HangprinterKinematics16MachineAxisNamesEv:
 144              		@ args = 0, pretend = 0, frame = 0
 145              		@ frame_needed = 0, uses_anonymous_args = 0
 146              		@ link register save eliminated.
 147 0000 0048     		ldr	r0, .L14
 148 0002 7047     		bx	lr
 149              	.L15:
 150              		.align	2
 151              	.L14:
 152 0004 00000000 		.word	.LC10
 153              		.size	_ZNK21HangprinterKinematics16MachineAxisNamesEv, .-_ZNK21HangprinterKinematics16MachineAxisN
 154              		.section	.text._ZNK21HangprinterKinematics13GetHomingModeEv,"axG",%progbits,_ZNK21HangprinterKinem
 155              		.align	1
 156              		.p2align 2,,3
 157              		.weak	_ZNK21HangprinterKinematics13GetHomingModeEv
 158              		.syntax unified
 159              		.thumb
 160              		.thumb_func
 161              		.fpu fpv4-sp-d16
 162              		.type	_ZNK21HangprinterKinematics13GetHomingModeEv, %function
 163              	_ZNK21HangprinterKinematics13GetHomingModeEv:
 164              		@ args = 0, pretend = 0, frame = 0
 165              		@ frame_needed = 0, uses_anonymous_args = 0
 166              		@ link register save eliminated.
 167 0000 0120     		movs	r0, #1
 168 0002 7047     		bx	lr
 169              		.size	_ZNK21HangprinterKinematics13GetHomingModeEv, .-_ZNK21HangprinterKinematics13GetHomingModeEv
 170              		.section	.text._ZNK21HangprinterKinematics7GetNameEb,"ax",%progbits
 171              		.align	1
ARM GAS  /tmp/cc08Wu1q.s 			page 4


 172              		.p2align 2,,3
 173              		.global	_ZNK21HangprinterKinematics7GetNameEb
 174              		.syntax unified
 175              		.thumb
 176              		.thumb_func
 177              		.fpu fpv4-sp-d16
 178              		.type	_ZNK21HangprinterKinematics7GetNameEb, %function
 179              	_ZNK21HangprinterKinematics7GetNameEb:
 180              		@ args = 0, pretend = 0, frame = 0
 181              		@ frame_needed = 0, uses_anonymous_args = 0
 182              		@ link register save eliminated.
 183 0000 0048     		ldr	r0, .L18
 184 0002 7047     		bx	lr
 185              	.L19:
 186              		.align	2
 187              	.L18:
 188 0004 00000000 		.word	.LC11
 189              		.size	_ZNK21HangprinterKinematics7GetNameEb, .-_ZNK21HangprinterKinematics7GetNameEb
 190              		.section	.text._ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj,"ax",%progbits
 191              		.align	1
 192              		.p2align 2,,3
 193              		.global	_ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj
 194              		.syntax unified
 195              		.thumb
 196              		.thumb_func
 197              		.fpu fpv4-sp-d16
 198              		.type	_ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj, %function
 199              	_ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj:
 200              		@ args = 0, pretend = 0, frame = 0
 201              		@ frame_needed = 0, uses_anonymous_args = 0
 202              		@ link register save eliminated.
 203 0000 2831     		adds	r1, r1, #40
 204 0002 50F82100 		ldr	r0, [r0, r1, lsl #2]
 205 0006 7047     		bx	lr
 206              		.size	_ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj, .-_ZN21HangprinterKinematics23GetFull
 207              		.section	.text._ZNK21HangprinterKinematics11IsReachableEffb,"ax",%progbits
 208              		.align	1
 209              		.p2align 2,,3
 210              		.global	_ZNK21HangprinterKinematics11IsReachableEffb
 211              		.syntax unified
 212              		.thumb
 213              		.thumb_func
 214              		.fpu fpv4-sp-d16
 215              		.type	_ZNK21HangprinterKinematics11IsReachableEffb, %function
 216              	_ZNK21HangprinterKinematics11IsReachableEffb:
 217              		@ args = 0, pretend = 0, frame = 0
 218              		@ frame_needed = 0, uses_anonymous_args = 0
 219              		@ link register save eliminated.
 220 0000 60EEA00A 		vmul.f32	s1, s1, s1
 221 0004 D0ED2C7A 		vldr.32	s15, [r0, #176]
 222 0008 E0EE000A 		vfma.f32	s1, s0, s0
 223 000c F4EEE70A 		vcmpe.f32	s1, s15
 224 0010 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 225 0014 4CBF     		ite	mi
 226 0016 0120     		movmi	r0, #1
 227 0018 0020     		movpl	r0, #0
 228 001a 7047     		bx	lr
ARM GAS  /tmp/cc08Wu1q.s 			page 5


 229              		.size	_ZNK21HangprinterKinematics11IsReachableEffb, .-_ZNK21HangprinterKinematics11IsReachableEffb
 230              		.section	.text._ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf,"ax",%progbits
 231              		.align	1
 232              		.p2align 2,,3
 233              		.global	_ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf
 234              		.syntax unified
 235              		.thumb
 236              		.thumb_func
 237              		.fpu fpv4-sp-d16
 238              		.type	_ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf, %function
 239              	_ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf:
 240              		@ args = 0, pretend = 0, frame = 0
 241              		@ frame_needed = 0, uses_anonymous_args = 0
 242              		@ link register save eliminated.
 243 0000 31B1     		cbz	r1, .L22
 244 0002 0023     		movs	r3, #0
 245 0004 02EB8101 		add	r1, r2, r1, lsl #2
 246              	.L24:
 247 0008 42F8043B 		str	r3, [r2], #4	@ float
 248 000c 8A42     		cmp	r2, r1
 249 000e FBD1     		bne	.L24
 250              	.L22:
 251 0010 7047     		bx	lr
 252              		.size	_ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf, .-_ZNK21HangprinterKinematics25G
 253 0012 00BF     		.section	.text._ZNK21HangprinterKinematics17GetHomingFileNameEmmjRm,"ax",%progbits
 254              		.align	1
 255              		.p2align 2,,3
 256              		.global	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRm
 257              		.syntax unified
 258              		.thumb
 259              		.thumb_func
 260              		.fpu fpv4-sp-d16
 261              		.type	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRm, %function
 262              	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRm:
 263              		@ args = 4, pretend = 0, frame = 0
 264              		@ frame_needed = 0, uses_anonymous_args = 0
 265              		@ link register save eliminated.
 266 0000 0048     		ldr	r0, .L30
 267 0002 7047     		bx	lr
 268              	.L31:
 269              		.align	2
 270              	.L30:
 271 0004 00000000 		.word	.LC12
 272              		.size	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRm, .-_ZNK21HangprinterKinematics17GetHomi
 273              		.section	.text._ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj,"ax",%progbits
 274              		.align	1
 275              		.p2align 2,,3
 276              		.global	_ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj
 277              		.syntax unified
 278              		.thumb
 279              		.thumb_func
 280              		.fpu fpv4-sp-d16
 281              		.type	_ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj, %function
 282              	_ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj:
 283              		@ args = 0, pretend = 0, frame = 0
 284              		@ frame_needed = 0, uses_anonymous_args = 0
 285              		@ link register save eliminated.
ARM GAS  /tmp/cc08Wu1q.s 			page 6


 286 0000 0020     		movs	r0, #0
 287 0002 7047     		bx	lr
 288              		.size	_ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj, .-_ZNK21HangprinterKinematics24Quer
 289              		.section	.text._ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA,"ax",%progbits
 290              		.align	1
 291              		.p2align 2,,3
 292              		.global	_ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 293              		.syntax unified
 294              		.thumb
 295              		.thumb_func
 296              		.fpu fpv4-sp-d16
 297              		.type	_ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, %function
 298              	_ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA:
 299              		@ args = 4, pretend = 0, frame = 0
 300              		@ frame_needed = 0, uses_anonymous_args = 0
 301              		@ link register save eliminated.
 302 0000 7047     		bx	lr
 303              		.size	_ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, .-_ZNK21HangprinterKinemati
 304 0002 00BF     		.section	.text._ZNK21HangprinterKinematics16AxesAssumedHomedEm,"ax",%progbits
 305              		.align	1
 306              		.p2align 2,,3
 307              		.global	_ZNK21HangprinterKinematics16AxesAssumedHomedEm
 308              		.syntax unified
 309              		.thumb
 310              		.thumb_func
 311              		.fpu fpv4-sp-d16
 312              		.type	_ZNK21HangprinterKinematics16AxesAssumedHomedEm, %function
 313              	_ZNK21HangprinterKinematics16AxesAssumedHomedEm:
 314              		@ args = 0, pretend = 0, frame = 0
 315              		@ frame_needed = 0, uses_anonymous_args = 0
 316              		@ link register save eliminated.
 317 0000 01F00703 		and	r3, r1, #7
 318 0004 072B     		cmp	r3, #7
 319 0006 0CBF     		ite	eq
 320 0008 41F00800 		orreq	r0, r1, #8
 321 000c 21F00700 		bicne	r0, r1, #7
 322 0010 7047     		bx	lr
 323              		.size	_ZNK21HangprinterKinematics16AxesAssumedHomedEm, .-_ZNK21HangprinterKinematics16AxesAssumedH
 324 0012 00BF     		.section	.text._ZNK21HangprinterKinematics15MustBeHomedAxesEmb,"ax",%progbits
 325              		.align	1
 326              		.p2align 2,,3
 327              		.global	_ZNK21HangprinterKinematics15MustBeHomedAxesEmb
 328              		.syntax unified
 329              		.thumb
 330              		.thumb_func
 331              		.fpu fpv4-sp-d16
 332              		.type	_ZNK21HangprinterKinematics15MustBeHomedAxesEmb, %function
 333              	_ZNK21HangprinterKinematics15MustBeHomedAxesEmb:
 334              		@ args = 0, pretend = 0, frame = 0
 335              		@ frame_needed = 0, uses_anonymous_args = 0
 336              		@ link register save eliminated.
 337 0000 4B07     		lsls	r3, r1, #29
 338 0002 14BF     		ite	ne
 339 0004 41F00700 		orrne	r0, r1, #7
 340 0008 0846     		moveq	r0, r1
 341 000a 7047     		bx	lr
 342              		.size	_ZNK21HangprinterKinematics15MustBeHomedAxesEmb, .-_ZNK21HangprinterKinematics15MustBeHomedA
ARM GAS  /tmp/cc08Wu1q.s 			page 7


 343              		.section	.text._ZN11FixedMatrixIdLj32ELj3EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EEclEjj
 344              		.align	1
 345              		.p2align 2,,3
 346              		.weak	_ZN11FixedMatrixIdLj32ELj3EEclEjj
 347              		.syntax unified
 348              		.thumb
 349              		.thumb_func
 350              		.fpu fpv4-sp-d16
 351              		.type	_ZN11FixedMatrixIdLj32ELj3EEclEjj, %function
 352              	_ZN11FixedMatrixIdLj32ELj3EEclEjj:
 353              		@ args = 0, pretend = 0, frame = 0
 354              		@ frame_needed = 0, uses_anonymous_args = 0
 355              		@ link register save eliminated.
 356 0000 0132     		adds	r2, r2, #1
 357 0002 01EB4101 		add	r1, r1, r1, lsl #1
 358 0006 1144     		add	r1, r1, r2
 359 0008 00EBC100 		add	r0, r0, r1, lsl #3
 360 000c 7047     		bx	lr
 361              		.size	_ZN11FixedMatrixIdLj32ELj3EEclEjj, .-_ZN11FixedMatrixIdLj32ELj3EEclEjj
 362 000e 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj9EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EEclEjj
 363              		.align	1
 364              		.p2align 2,,3
 365              		.weak	_ZN11FixedMatrixIdLj32ELj9EEclEjj
 366              		.syntax unified
 367              		.thumb
 368              		.thumb_func
 369              		.fpu fpv4-sp-d16
 370              		.type	_ZN11FixedMatrixIdLj32ELj9EEclEjj, %function
 371              	_ZN11FixedMatrixIdLj32ELj9EEclEjj:
 372              		@ args = 0, pretend = 0, frame = 0
 373              		@ frame_needed = 0, uses_anonymous_args = 0
 374              		@ link register save eliminated.
 375 0000 0132     		adds	r2, r2, #1
 376 0002 01EBC101 		add	r1, r1, r1, lsl #3
 377 0006 1144     		add	r1, r1, r2
 378 0008 00EBC100 		add	r0, r0, r1, lsl #3
 379 000c 7047     		bx	lr
 380              		.size	_ZN11FixedMatrixIdLj32ELj9EEclEjj, .-_ZN11FixedMatrixIdLj32ELj9EEclEjj
 381 000e 00BF     		.section	.text._ZN11FixedMatrixIdLj9ELj10EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EEclEjj
 382              		.align	1
 383              		.p2align 2,,3
 384              		.weak	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 385              		.syntax unified
 386              		.thumb
 387              		.thumb_func
 388              		.fpu fpv4-sp-d16
 389              		.type	_ZN11FixedMatrixIdLj9ELj10EEclEjj, %function
 390              	_ZN11FixedMatrixIdLj9ELj10EEclEjj:
 391              		@ args = 0, pretend = 0, frame = 0
 392              		@ frame_needed = 0, uses_anonymous_args = 0
 393              		@ link register save eliminated.
 394 0000 0132     		adds	r2, r2, #1
 395 0002 01EB8101 		add	r1, r1, r1, lsl #2
 396 0006 02EB4101 		add	r1, r2, r1, lsl #1
 397 000a 00EBC100 		add	r0, r0, r1, lsl #3
 398 000e 7047     		bx	lr
 399              		.size	_ZN11FixedMatrixIdLj9ELj10EEclEjj, .-_ZN11FixedMatrixIdLj9ELj10EEclEjj
ARM GAS  /tmp/cc08Wu1q.s 			page 8


 400              		.section	.text._ZN11FixedMatrixIdLj9ELj10EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EED5Ev,c
 401              		.align	1
 402              		.p2align 2,,3
 403              		.weak	_ZN11FixedMatrixIdLj9ELj10EED2Ev
 404              		.syntax unified
 405              		.thumb
 406              		.thumb_func
 407              		.fpu fpv4-sp-d16
 408              		.type	_ZN11FixedMatrixIdLj9ELj10EED2Ev, %function
 409              	_ZN11FixedMatrixIdLj9ELj10EED2Ev:
 410              		@ args = 0, pretend = 0, frame = 0
 411              		@ frame_needed = 0, uses_anonymous_args = 0
 412              		@ link register save eliminated.
 413 0000 7047     		bx	lr
 414              		.size	_ZN11FixedMatrixIdLj9ELj10EED2Ev, .-_ZN11FixedMatrixIdLj9ELj10EED2Ev
 415              		.weak	_ZN11FixedMatrixIdLj9ELj10EED1Ev
 416              		.thumb_set _ZN11FixedMatrixIdLj9ELj10EED1Ev,_ZN11FixedMatrixIdLj9ELj10EED2Ev
 417 0002 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj9EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EED5Ev,c
 418              		.align	1
 419              		.p2align 2,,3
 420              		.weak	_ZN11FixedMatrixIdLj32ELj9EED2Ev
 421              		.syntax unified
 422              		.thumb
 423              		.thumb_func
 424              		.fpu fpv4-sp-d16
 425              		.type	_ZN11FixedMatrixIdLj32ELj9EED2Ev, %function
 426              	_ZN11FixedMatrixIdLj32ELj9EED2Ev:
 427              		@ args = 0, pretend = 0, frame = 0
 428              		@ frame_needed = 0, uses_anonymous_args = 0
 429              		@ link register save eliminated.
 430 0000 7047     		bx	lr
 431              		.size	_ZN11FixedMatrixIdLj32ELj9EED2Ev, .-_ZN11FixedMatrixIdLj32ELj9EED2Ev
 432              		.weak	_ZN11FixedMatrixIdLj32ELj9EED1Ev
 433              		.thumb_set _ZN11FixedMatrixIdLj32ELj9EED1Ev,_ZN11FixedMatrixIdLj32ELj9EED2Ev
 434 0002 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj3EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EED5Ev,c
 435              		.align	1
 436              		.p2align 2,,3
 437              		.weak	_ZN11FixedMatrixIdLj32ELj3EED2Ev
 438              		.syntax unified
 439              		.thumb
 440              		.thumb_func
 441              		.fpu fpv4-sp-d16
 442              		.type	_ZN11FixedMatrixIdLj32ELj3EED2Ev, %function
 443              	_ZN11FixedMatrixIdLj32ELj3EED2Ev:
 444              		@ args = 0, pretend = 0, frame = 0
 445              		@ frame_needed = 0, uses_anonymous_args = 0
 446              		@ link register save eliminated.
 447 0000 7047     		bx	lr
 448              		.size	_ZN11FixedMatrixIdLj32ELj3EED2Ev, .-_ZN11FixedMatrixIdLj32ELj3EED2Ev
 449              		.weak	_ZN11FixedMatrixIdLj32ELj3EED1Ev
 450              		.thumb_set _ZN11FixedMatrixIdLj32ELj3EED1Ev,_ZN11FixedMatrixIdLj32ELj3EED2Ev
 451 0002 00BF     		.section	.text._ZN21HangprinterKinematicsD2Ev,"axG",%progbits,_ZN21HangprinterKinematicsD5Ev,comda
 452              		.align	1
 453              		.p2align 2,,3
 454              		.weak	_ZN21HangprinterKinematicsD2Ev
 455              		.syntax unified
 456              		.thumb
ARM GAS  /tmp/cc08Wu1q.s 			page 9


 457              		.thumb_func
 458              		.fpu fpv4-sp-d16
 459              		.type	_ZN21HangprinterKinematicsD2Ev, %function
 460              	_ZN21HangprinterKinematicsD2Ev:
 461              		@ args = 0, pretend = 0, frame = 0
 462              		@ frame_needed = 0, uses_anonymous_args = 0
 463              		@ link register save eliminated.
 464 0000 7047     		bx	lr
 465              		.size	_ZN21HangprinterKinematicsD2Ev, .-_ZN21HangprinterKinematicsD2Ev
 466              		.weak	_ZN21HangprinterKinematicsD1Ev
 467              		.thumb_set _ZN21HangprinterKinematicsD1Ev,_ZN21HangprinterKinematicsD2Ev
 468 0002 00BF     		.section	.text._ZNK11FixedMatrixIdLj9ELj10EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj9ELj10EE4
 469              		.align	1
 470              		.p2align 2,,3
 471              		.weak	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 472              		.syntax unified
 473              		.thumb
 474              		.thumb_func
 475              		.fpu fpv4-sp-d16
 476              		.type	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv, %function
 477              	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv:
 478              		@ args = 0, pretend = 0, frame = 0
 479              		@ frame_needed = 0, uses_anonymous_args = 0
 480              		@ link register save eliminated.
 481 0000 0920     		movs	r0, #9
 482 0002 7047     		bx	lr
 483              		.size	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv, .-_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 484              		.section	.text._ZNK11FixedMatrixIdLj9ELj10EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj9ELj10EE4
 485              		.align	1
 486              		.p2align 2,,3
 487              		.weak	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 488              		.syntax unified
 489              		.thumb
 490              		.thumb_func
 491              		.fpu fpv4-sp-d16
 492              		.type	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv, %function
 493              	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv:
 494              		@ args = 0, pretend = 0, frame = 0
 495              		@ frame_needed = 0, uses_anonymous_args = 0
 496              		@ link register save eliminated.
 497 0000 0A20     		movs	r0, #10
 498 0002 7047     		bx	lr
 499              		.size	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv, .-_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 500              		.section	.text._ZNK11FixedMatrixIdLj9ELj10EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj9ELj10EEclE
 501              		.align	1
 502              		.p2align 2,,3
 503              		.weak	_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 504              		.syntax unified
 505              		.thumb
 506              		.thumb_func
 507              		.fpu fpv4-sp-d16
 508              		.type	_ZNK11FixedMatrixIdLj9ELj10EEclEjj, %function
 509              	_ZNK11FixedMatrixIdLj9ELj10EEclEjj:
 510              		@ args = 0, pretend = 0, frame = 0
 511              		@ frame_needed = 0, uses_anonymous_args = 0
 512              		@ link register save eliminated.
 513 0000 0132     		adds	r2, r2, #1
ARM GAS  /tmp/cc08Wu1q.s 			page 10


 514 0002 01EB8101 		add	r1, r1, r1, lsl #2
 515 0006 02EB4101 		add	r1, r2, r1, lsl #1
 516 000a 00EBC100 		add	r0, r0, r1, lsl #3
 517 000e 7047     		bx	lr
 518              		.size	_ZNK11FixedMatrixIdLj9ELj10EEclEjj, .-_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 519              		.section	.text._ZNK11FixedMatrixIdLj32ELj9EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj9EE4
 520              		.align	1
 521              		.p2align 2,,3
 522              		.weak	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 523              		.syntax unified
 524              		.thumb
 525              		.thumb_func
 526              		.fpu fpv4-sp-d16
 527              		.type	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv, %function
 528              	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv:
 529              		@ args = 0, pretend = 0, frame = 0
 530              		@ frame_needed = 0, uses_anonymous_args = 0
 531              		@ link register save eliminated.
 532 0000 2020     		movs	r0, #32
 533 0002 7047     		bx	lr
 534              		.size	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv, .-_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 535              		.section	.text._ZNK11FixedMatrixIdLj32ELj9EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj9EE4
 536              		.align	1
 537              		.p2align 2,,3
 538              		.weak	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 539              		.syntax unified
 540              		.thumb
 541              		.thumb_func
 542              		.fpu fpv4-sp-d16
 543              		.type	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv, %function
 544              	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv:
 545              		@ args = 0, pretend = 0, frame = 0
 546              		@ frame_needed = 0, uses_anonymous_args = 0
 547              		@ link register save eliminated.
 548 0000 0920     		movs	r0, #9
 549 0002 7047     		bx	lr
 550              		.size	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv, .-_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 551              		.section	.text._ZNK11FixedMatrixIdLj32ELj9EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj9EEclE
 552              		.align	1
 553              		.p2align 2,,3
 554              		.weak	_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 555              		.syntax unified
 556              		.thumb
 557              		.thumb_func
 558              		.fpu fpv4-sp-d16
 559              		.type	_ZNK11FixedMatrixIdLj32ELj9EEclEjj, %function
 560              	_ZNK11FixedMatrixIdLj32ELj9EEclEjj:
 561              		@ args = 0, pretend = 0, frame = 0
 562              		@ frame_needed = 0, uses_anonymous_args = 0
 563              		@ link register save eliminated.
 564 0000 0132     		adds	r2, r2, #1
 565 0002 01EBC101 		add	r1, r1, r1, lsl #3
 566 0006 1144     		add	r1, r1, r2
 567 0008 00EBC100 		add	r0, r0, r1, lsl #3
 568 000c 7047     		bx	lr
 569              		.size	_ZNK11FixedMatrixIdLj32ELj9EEclEjj, .-_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 570 000e 00BF     		.section	.text._ZNK11FixedMatrixIdLj32ELj3EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj3EE4
ARM GAS  /tmp/cc08Wu1q.s 			page 11


 571              		.align	1
 572              		.p2align 2,,3
 573              		.weak	_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv
 574              		.syntax unified
 575              		.thumb
 576              		.thumb_func
 577              		.fpu fpv4-sp-d16
 578              		.type	_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv, %function
 579              	_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv:
 580              		@ args = 0, pretend = 0, frame = 0
 581              		@ frame_needed = 0, uses_anonymous_args = 0
 582              		@ link register save eliminated.
 583 0000 2020     		movs	r0, #32
 584 0002 7047     		bx	lr
 585              		.size	_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv, .-_ZNK11FixedMatrixIdLj32ELj3EE4rowsEv
 586              		.section	.text._ZNK11FixedMatrixIdLj32ELj3EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj3EE4
 587              		.align	1
 588              		.p2align 2,,3
 589              		.weak	_ZNK11FixedMatrixIdLj32ELj3EE4colsEv
 590              		.syntax unified
 591              		.thumb
 592              		.thumb_func
 593              		.fpu fpv4-sp-d16
 594              		.type	_ZNK11FixedMatrixIdLj32ELj3EE4colsEv, %function
 595              	_ZNK11FixedMatrixIdLj32ELj3EE4colsEv:
 596              		@ args = 0, pretend = 0, frame = 0
 597              		@ frame_needed = 0, uses_anonymous_args = 0
 598              		@ link register save eliminated.
 599 0000 0320     		movs	r0, #3
 600 0002 7047     		bx	lr
 601              		.size	_ZNK11FixedMatrixIdLj32ELj3EE4colsEv, .-_ZNK11FixedMatrixIdLj32ELj3EE4colsEv
 602              		.section	.text._ZNK11FixedMatrixIdLj32ELj3EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj3EEclE
 603              		.align	1
 604              		.p2align 2,,3
 605              		.weak	_ZNK11FixedMatrixIdLj32ELj3EEclEjj
 606              		.syntax unified
 607              		.thumb
 608              		.thumb_func
 609              		.fpu fpv4-sp-d16
 610              		.type	_ZNK11FixedMatrixIdLj32ELj3EEclEjj, %function
 611              	_ZNK11FixedMatrixIdLj32ELj3EEclEjj:
 612              		@ args = 0, pretend = 0, frame = 0
 613              		@ frame_needed = 0, uses_anonymous_args = 0
 614              		@ link register save eliminated.
 615 0000 0132     		adds	r2, r2, #1
 616 0002 01EB4101 		add	r1, r1, r1, lsl #1
 617 0006 1144     		add	r1, r1, r2
 618 0008 00EBC100 		add	r0, r0, r1, lsl #3
 619 000c 7047     		bx	lr
 620              		.size	_ZNK11FixedMatrixIdLj32ELj3EEclEjj, .-_ZNK11FixedMatrixIdLj32ELj3EEclEjj
 621 000e 00BF     		.section	.text._ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 622              		.align	1
 623              		.p2align 2,,3
 624              		.global	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 625              		.syntax unified
 626              		.thumb
 627              		.thumb_func
ARM GAS  /tmp/cc08Wu1q.s 			page 12


 628              		.fpu fpv4-sp-d16
 629              		.type	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 630              	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 631              		@ args = 12, pretend = 0, frame = 0
 632              		@ frame_needed = 0, uses_anonymous_args = 0
 633 0000 91ED016A 		vldr.32	s12, [r1, #4]
 634 0004 90ED050A 		vldr.32	s0, [r0, #20]
 635 0008 D1ED025A 		vldr.32	s11, [r1, #8]
 636 000c 90ED067A 		vldr.32	s14, [r0, #24]
 637 0010 D1ED006A 		vldr.32	s13, [r1]
 638 0014 D0ED047A 		vldr.32	s15, [r0, #16]
 639 0018 36EE400A 		vsub.f32	s0, s12, s0
 640 001c 37EE657A 		vsub.f32	s14, s14, s11
 641 0020 20EE000A 		vmul.f32	s0, s0, s0
 642 0024 76EEE77A 		vsub.f32	s15, s13, s15
 643 0028 A7EE070A 		vfma.f32	s0, s14, s14
 644 002c A7EEA70A 		vfma.f32	s0, s15, s15
 645 0030 B5EEC00A 		vcmpe.f32	s0, #0
 646 0034 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 647 0038 40F3D680 		ble	.L78
 648 003c 10B5     		push	{r4, lr}
 649 003e D0ED097A 		vldr.32	s15, [r0, #36]
 650 0042 90ED085A 		vldr.32	s10, [r0, #32]
 651 0046 90ED077A 		vldr.32	s14, [r0, #28]
 652 004a 77EEE57A 		vsub.f32	s15, s15, s11
 653 004e 2DED068B 		vpush.64	{d8, d9, d10}
 654 0052 36EE455A 		vsub.f32	s10, s12, s10
 655 0056 27EEA78A 		vmul.f32	s16, s15, s15
 656 005a 76EEC77A 		vsub.f32	s15, s13, s14
 657 005e A5EE058A 		vfma.f32	s16, s10, s10
 658 0062 A7EEA78A 		vfma.f32	s16, s15, s15
 659 0066 B5EEC08A 		vcmpe.f32	s16, #0
 660 006a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 661 006e 40F3B680 		ble	.L81
 662 0072 D0ED0C7A 		vldr.32	s15, [r0, #48]
 663 0076 90ED0B5A 		vldr.32	s10, [r0, #44]
 664 007a 90ED0A7A 		vldr.32	s14, [r0, #40]
 665 007e 77EEE57A 		vsub.f32	s15, s15, s11
 666 0082 36EE455A 		vsub.f32	s10, s12, s10
 667 0086 67EEA78A 		vmul.f32	s17, s15, s15
 668 008a 76EEC77A 		vsub.f32	s15, s13, s14
 669 008e E5EE058A 		vfma.f32	s17, s10, s10
 670 0092 E7EEA78A 		vfma.f32	s17, s15, s15
 671 0096 F5EEC08A 		vcmpe.f32	s17, #0
 672 009a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 673 009e 40F39E80 		ble	.L81
 674 00a2 26EEA69A 		vmul.f32	s18, s13, s13
 675 00a6 D0ED0D7A 		vldr.32	s15, [r0, #52]
 676 00aa A6EE069A 		vfma.f32	s18, s12, s12
 677 00ae 77EEE55A 		vsub.f32	s11, s15, s11
 678 00b2 A5EEA59A 		vfma.f32	s18, s11, s11
 679 00b6 B5EEC09A 		vcmpe.f32	s18, #0
 680 00ba F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 681 00be 40F38E80 		ble	.L81
 682 00c2 B5EE400A 		vcmp.f32	s0, #0
 683 00c6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 684 00ca 0446     		mov	r4, r0
ARM GAS  /tmp/cc08Wu1q.s 			page 13


 685 00cc 90ED3FAA 		vldr.32	s20, [r0, #252]
 686 00d0 D0ED439A 		vldr.32	s19, [r0, #268]
 687 00d4 F1EEC0AA 		vsqrt.f32	s21, s0
 688 00d8 00F18980 		bmi	.L86
 689              	.L62:
 690 00dc D4ED477A 		vldr.32	s15, [r4, #284]
 691 00e0 B0EE690A 		vmov.f32	s0, s19
 692 00e4 AAEEA70A 		vfma.f32	s0, s21, s15
 693 00e8 B5EE400A 		vcmp.f32	s0, #0
 694 00ec F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 695 00f0 F1EEC09A 		vsqrt.f32	s19, s0
 696 00f4 00F19880 		bmi	.L87
 697              	.L63:
 698 00f8 94ED4B0A 		vldr.32	s0, [r4, #300]
 699 00fc 39EEC00A 		vsub.f32	s0, s19, s0
 700 0100 20EE0A0A 		vmul.f32	s0, s0, s20
 701 0104 FFF7FEFF 		bl	lrintf
 702 0108 099B     		ldr	r3, [sp, #36]
 703 010a 94ED40AA 		vldr.32	s20, [r4, #256]
 704 010e D4ED449A 		vldr.32	s19, [r4, #272]
 705 0112 1860     		str	r0, [r3]
 706 0114 B5EE408A 		vcmp.f32	s16, #0
 707 0118 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 708 011c F1EEC8AA 		vsqrt.f32	s21, s16
 709 0120 7DD4     		bmi	.L88
 710              	.L64:
 711 0122 D4ED487A 		vldr.32	s15, [r4, #288]
 712 0126 EAEEA79A 		vfma.f32	s19, s21, s15
 713 012a F5EE409A 		vcmp.f32	s19, #0
 714 012e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 715 0132 B1EEE98A 		vsqrt.f32	s16, s19
 716 0136 6DD4     		bmi	.L89
 717              	.L65:
 718 0138 94ED4C0A 		vldr.32	s0, [r4, #304]
 719 013c 38EE400A 		vsub.f32	s0, s16, s0
 720 0140 20EE0A0A 		vmul.f32	s0, s0, s20
 721 0144 FFF7FEFF 		bl	lrintf
 722 0148 099B     		ldr	r3, [sp, #36]
 723 014a D4ED419A 		vldr.32	s19, [r4, #260]
 724 014e 94ED458A 		vldr.32	s16, [r4, #276]
 725 0152 5860     		str	r0, [r3, #4]
 726 0154 F5EE408A 		vcmp.f32	s17, #0
 727 0158 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 728 015c B1EEE8AA 		vsqrt.f32	s20, s17
 729 0160 53D4     		bmi	.L90
 730              	.L66:
 731 0162 D4ED497A 		vldr.32	s15, [r4, #292]
 732 0166 B0EE480A 		vmov.f32	s0, s16
 733 016a AAEE270A 		vfma.f32	s0, s20, s15
 734 016e B5EE400A 		vcmp.f32	s0, #0
 735 0172 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 736 0176 B1EEC08A 		vsqrt.f32	s16, s0
 737 017a 43D4     		bmi	.L91
 738              	.L67:
 739 017c 94ED4D0A 		vldr.32	s0, [r4, #308]
 740 0180 38EE400A 		vsub.f32	s0, s16, s0
 741 0184 20EE290A 		vmul.f32	s0, s0, s19
ARM GAS  /tmp/cc08Wu1q.s 			page 14


 742 0188 FFF7FEFF 		bl	lrintf
 743 018c 099B     		ldr	r3, [sp, #36]
 744 018e D4ED428A 		vldr.32	s17, [r4, #264]
 745 0192 94ED468A 		vldr.32	s16, [r4, #280]
 746 0196 9860     		str	r0, [r3, #8]
 747 0198 B5EE409A 		vcmp.f32	s18, #0
 748 019c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 749 01a0 F1EEC99A 		vsqrt.f32	s19, s18
 750 01a4 29D4     		bmi	.L92
 751              	.L68:
 752 01a6 D4ED4A7A 		vldr.32	s15, [r4, #296]
 753 01aa B0EE480A 		vmov.f32	s0, s16
 754 01ae A9EEA70A 		vfma.f32	s0, s19, s15
 755 01b2 B5EE400A 		vcmp.f32	s0, #0
 756 01b6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 757 01ba B1EEC08A 		vsqrt.f32	s16, s0
 758 01be 19D4     		bmi	.L93
 759              	.L69:
 760 01c0 94ED4E0A 		vldr.32	s0, [r4, #312]
 761 01c4 38EE400A 		vsub.f32	s0, s16, s0
 762 01c8 20EE280A 		vmul.f32	s0, s0, s17
 763 01cc FFF7FEFF 		bl	lrintf
 764 01d0 099A     		ldr	r2, [sp, #36]
 765 01d2 BDEC068B 		vldm	sp!, {d8-d10}
 766 01d6 0123     		movs	r3, #1
 767 01d8 D060     		str	r0, [r2, #12]
 768 01da 1846     		mov	r0, r3
 769 01dc 10BD     		pop	{r4, pc}
 770              	.L81:
 771 01de BDEC068B 		vldm	sp!, {d8-d10}
 772 01e2 0023     		movs	r3, #0
 773 01e4 1846     		mov	r0, r3
 774 01e6 10BD     		pop	{r4, pc}
 775              	.L78:
 776 01e8 0023     		movs	r3, #0
 777 01ea 1846     		mov	r0, r3
 778 01ec 7047     		bx	lr
 779              	.L86:
 780 01ee FFF7FEFF 		bl	sqrtf
 781 01f2 73E7     		b	.L62
 782              	.L93:
 783 01f4 FFF7FEFF 		bl	sqrtf
 784 01f8 E2E7     		b	.L69
 785              	.L92:
 786 01fa B0EE490A 		vmov.f32	s0, s18
 787 01fe FFF7FEFF 		bl	sqrtf
 788 0202 D0E7     		b	.L68
 789              	.L91:
 790 0204 FFF7FEFF 		bl	sqrtf
 791 0208 B8E7     		b	.L67
 792              	.L90:
 793 020a B0EE680A 		vmov.f32	s0, s17
 794 020e FFF7FEFF 		bl	sqrtf
 795 0212 A6E7     		b	.L66
 796              	.L89:
 797 0214 B0EE690A 		vmov.f32	s0, s19
 798 0218 FFF7FEFF 		bl	sqrtf
ARM GAS  /tmp/cc08Wu1q.s 			page 15


 799 021c 8CE7     		b	.L65
 800              	.L88:
 801 021e B0EE480A 		vmov.f32	s0, s16
 802 0222 FFF7FEFF 		bl	sqrtf
 803 0226 7CE7     		b	.L64
 804              	.L87:
 805 0228 FFF7FEFF 		bl	sqrtf
 806 022c 64E7     		b	.L63
 807              		.size	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK21HangprinterKinematic
 808 022e 00BF     		.section	.text._ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj,"ax",%progbits
 809              		.align	1
 810              		.p2align 2,,3
 811              		.global	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj
 812              		.syntax unified
 813              		.thumb
 814              		.thumb_func
 815              		.fpu fpv4-sp-d16
 816              		.type	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj, %function
 817              	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj:
 818              		@ args = 0, pretend = 0, frame = 8
 819              		@ frame_needed = 0, uses_anonymous_args = 0
 820 0000 00EB8303 		add	r3, r0, r3, lsl #2
 821 0004 D3ED437A 		vldr.32	s15, [r3, #268]
 822 0008 D3ED475A 		vldr.32	s11, [r3, #284]
 823 000c 93ED4F6A 		vldr.32	s12, [r3, #316]
 824 0010 00B5     		push	{lr}
 825 0012 B0EE677A 		vmov.f32	s14, s15
 826 0016 A5EE867A 		vfma.f32	s14, s11, s12
 827 001a 2DED048B 		vpush.64	{d8, d9}
 828 001e B5EE407A 		vcmp.f32	s14, #0
 829 0022 D3ED3F8A 		vldr.32	s17, [r3, #252]
 830 0026 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 831 002a 83B0     		sub	sp, sp, #12
 832 002c B0EE409A 		vmov.f32	s18, s0
 833 0030 B1EEC78A 		vsqrt.f32	s16, s14
 834 0034 58BF     		it	pl
 835 0036 F0EE684A 		vmovpl.f32	s9, s17
 836 003a 1ED4     		bmi	.L98
 837              	.L95:
 838 003c 93ED280A 		vldr.32	s0, [r3, #160]	@ int
 839 0040 9FED157A 		vldr.32	s14, .L99
 840 0044 93ED4B5A 		vldr.32	s10, [r3, #300]
 841 0048 B8EE400A 		vcvt.f32.u32	s0, s0
 842 004c 38EE458A 		vsub.f32	s16, s16, s10
 843 0050 20EE090A 		vmul.f32	s0, s0, s18
 844 0054 C0EE076A 		vdiv.f32	s13, s0, s14
 845 0058 E8EE886A 		vfma.f32	s13, s17, s16
 846 005c 86EEA47A 		vdiv.f32	s14, s13, s9
 847 0060 37EE057A 		vadd.f32	s14, s14, s10
 848 0064 D7EE077A 		vfnms.f32	s15, s14, s14
 849 0068 87EEA50A 		vdiv.f32	s0, s15, s11
 850 006c 30EE460A 		vsub.f32	s0, s0, s12
 851 0070 03B0     		add	sp, sp, #12
 852              		@ sp needed
 853 0072 BDEC048B 		vldm	sp!, {d8-d9}
 854 0076 5DF804FB 		ldr	pc, [sp], #4
 855              	.L98:
ARM GAS  /tmp/cc08Wu1q.s 			page 16


 856 007a B0EE470A 		vmov.f32	s0, s14
 857 007e 0193     		str	r3, [sp, #4]
 858 0080 FFF7FEFF 		bl	sqrtf
 859 0084 019B     		ldr	r3, [sp, #4]
 860 0086 D3ED3F4A 		vldr.32	s9, [r3, #252]
 861 008a D3ED437A 		vldr.32	s15, [r3, #268]
 862 008e D3ED475A 		vldr.32	s11, [r3, #284]
 863 0092 93ED4F6A 		vldr.32	s12, [r3, #316]
 864 0096 D1E7     		b	.L95
 865              	.L100:
 866              		.align	2
 867              	.L99:
 868 0098 0000B443 		.word	1135869952
 869              		.size	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj, .-_ZN21HangprinterKinematics22Mot
 870              		.section	.text._ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 871              		.align	1
 872              		.p2align 2,,3
 873              		.global	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf
 874              		.syntax unified
 875              		.thumb
 876              		.thumb_func
 877              		.fpu fpv4-sp-d16
 878              		.type	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 879              	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 880              		@ args = 0, pretend = 0, frame = 8
 881              		@ frame_needed = 0, uses_anonymous_args = 0
 882 0000 92ED010A 		vldr.32	s0, [r2, #4]
 883 0004 D2ED007A 		vldr.32	s15, [r2]
 884 0008 00B5     		push	{lr}
 885 000a 20EE000A 		vmul.f32	s0, s0, s0
 886 000e 2DED028B 		vpush.64	{d8}
 887 0012 A7EEA70A 		vfma.f32	s0, s15, s15
 888 0016 83B0     		sub	sp, sp, #12
 889 0018 B5EE400A 		vcmp.f32	s0, #0
 890 001c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 891 0020 B1EEC08A 		vsqrt.f32	s16, s0
 892 0024 39D4     		bmi	.L110
 893              	.L102:
 894 0026 DFED1F7A 		vldr.32	s15, .L111
 895 002a B4EEE78A 		vcmpe.f32	s16, s15
 896 002e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 897 0032 2DDD     		ble	.L108
 898 0034 1C4B     		ldr	r3, .L111+4
 899 0036 1B68     		ldr	r3, [r3]	@ unaligned
 900 0038 93ED500A 		vldr.32	s0, [r3, #320]
 901 003c D3ED517A 		vldr.32	s15, [r3, #324]
 902 0040 B4EE400A 		vcmp.f32	s0, s0
 903 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 904 0048 06D6     		bvs	.L105
 905 004a B4EEE70A 		vcmpe.f32	s0, s15
 906 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 907 0052 58BF     		it	pl
 908 0054 B0EE670A 		vmovpl.f32	s0, s15
 909              	.L105:
 910 0058 D3ED5C0A 		vldr.32	s1, [r3, #368]
 911 005c D3ED5D7A 		vldr.32	s15, [r3, #372]
 912 0060 F4EE600A 		vcmp.f32	s1, s1
ARM GAS  /tmp/cc08Wu1q.s 			page 17


 913 0064 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 914 0068 06D6     		bvs	.L106
 915 006a F4EEE70A 		vcmpe.f32	s1, s15
 916 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 917 0072 58BF     		it	pl
 918 0074 F0EE670A 		vmovpl.f32	s1, s15
 919              	.L106:
 920 0078 C0EE880A 		vdiv.f32	s1, s1, s16
 921 007c 0846     		mov	r0, r1
 922 007e 80EE080A 		vdiv.f32	s0, s0, s16
 923 0082 03B0     		add	sp, sp, #12
 924              		@ sp needed
 925 0084 BDEC028B 		vldm	sp!, {d8}
 926 0088 5DF804EB 		ldr	lr, [sp], #4
 927 008c FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 928              	.L108:
 929 0090 03B0     		add	sp, sp, #12
 930              		@ sp needed
 931 0092 BDEC028B 		vldm	sp!, {d8}
 932 0096 5DF804FB 		ldr	pc, [sp], #4
 933              	.L110:
 934 009a 0191     		str	r1, [sp, #4]
 935 009c FFF7FEFF 		bl	sqrtf
 936 00a0 0199     		ldr	r1, [sp, #4]
 937 00a2 C0E7     		b	.L102
 938              	.L112:
 939              		.align	2
 940              	.L111:
 941 00a4 0AD7233C 		.word	1008981770
 942 00a8 00000000 		.word	reprap
 943              		.size	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK21HangprinterKinemati
 944              		.section	.text._ZN21HangprinterKinematicsD0Ev,"axG",%progbits,_ZN21HangprinterKinematicsD5Ev,comda
 945              		.align	1
 946              		.p2align 2,,3
 947              		.weak	_ZN21HangprinterKinematicsD0Ev
 948              		.syntax unified
 949              		.thumb
 950              		.thumb_func
 951              		.fpu fpv4-sp-d16
 952              		.type	_ZN21HangprinterKinematicsD0Ev, %function
 953              	_ZN21HangprinterKinematicsD0Ev:
 954              		@ args = 0, pretend = 0, frame = 0
 955              		@ frame_needed = 0, uses_anonymous_args = 0
 956 0000 10B5     		push	{r4, lr}
 957 0002 4FF4A871 		mov	r1, #336
 958 0006 0446     		mov	r4, r0
 959 0008 FFF7FEFF 		bl	_ZdlPvj
 960 000c 2046     		mov	r0, r4
 961 000e 10BD     		pop	{r4, pc}
 962              		.size	_ZN21HangprinterKinematicsD0Ev, .-_ZN21HangprinterKinematicsD0Ev
 963              		.section	.text._ZN11FixedMatrixIdLj32ELj3EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj3EED5Ev,c
 964              		.align	1
 965              		.p2align 2,,3
 966              		.weak	_ZN11FixedMatrixIdLj32ELj3EED0Ev
 967              		.syntax unified
 968              		.thumb
 969              		.thumb_func
ARM GAS  /tmp/cc08Wu1q.s 			page 18


 970              		.fpu fpv4-sp-d16
 971              		.type	_ZN11FixedMatrixIdLj32ELj3EED0Ev, %function
 972              	_ZN11FixedMatrixIdLj32ELj3EED0Ev:
 973              		@ args = 0, pretend = 0, frame = 0
 974              		@ frame_needed = 0, uses_anonymous_args = 0
 975 0000 10B5     		push	{r4, lr}
 976 0002 4FF44271 		mov	r1, #776
 977 0006 0446     		mov	r4, r0
 978 0008 FFF7FEFF 		bl	_ZdlPvj
 979 000c 2046     		mov	r0, r4
 980 000e 10BD     		pop	{r4, pc}
 981              		.size	_ZN11FixedMatrixIdLj32ELj3EED0Ev, .-_ZN11FixedMatrixIdLj32ELj3EED0Ev
 982              		.section	.text._ZN11FixedMatrixIdLj32ELj9EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj9EED5Ev,c
 983              		.align	1
 984              		.p2align 2,,3
 985              		.weak	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 986              		.syntax unified
 987              		.thumb
 988              		.thumb_func
 989              		.fpu fpv4-sp-d16
 990              		.type	_ZN11FixedMatrixIdLj32ELj9EED0Ev, %function
 991              	_ZN11FixedMatrixIdLj32ELj9EED0Ev:
 992              		@ args = 0, pretend = 0, frame = 0
 993              		@ frame_needed = 0, uses_anonymous_args = 0
 994 0000 10B5     		push	{r4, lr}
 995 0002 40F60811 		movw	r1, #2312
 996 0006 0446     		mov	r4, r0
 997 0008 FFF7FEFF 		bl	_ZdlPvj
 998 000c 2046     		mov	r0, r4
 999 000e 10BD     		pop	{r4, pc}
 1000              		.size	_ZN11FixedMatrixIdLj32ELj9EED0Ev, .-_ZN11FixedMatrixIdLj32ELj9EED0Ev
 1001              		.section	.text._ZN11FixedMatrixIdLj9ELj10EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EED5Ev,c
 1002              		.align	1
 1003              		.p2align 2,,3
 1004              		.weak	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 1005              		.syntax unified
 1006              		.thumb
 1007              		.thumb_func
 1008              		.fpu fpv4-sp-d16
 1009              		.type	_ZN11FixedMatrixIdLj9ELj10EED0Ev, %function
 1010              	_ZN11FixedMatrixIdLj9ELj10EED0Ev:
 1011              		@ args = 0, pretend = 0, frame = 0
 1012              		@ frame_needed = 0, uses_anonymous_args = 0
 1013 0000 10B5     		push	{r4, lr}
 1014 0002 4FF43671 		mov	r1, #728
 1015 0006 0446     		mov	r4, r0
 1016 0008 FFF7FEFF 		bl	_ZdlPvj
 1017 000c 2046     		mov	r0, r4
 1018 000e 10BD     		pop	{r4, pc}
 1019              		.size	_ZN11FixedMatrixIdLj9ELj10EED0Ev, .-_ZN11FixedMatrixIdLj9ELj10EED0Ev
 1020              		.section	.text._ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore,"ax",%progbits
 1021              		.align	1
 1022              		.p2align 2,,3
 1023              		.global	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore
 1024              		.syntax unified
 1025              		.thumb
 1026              		.thumb_func
ARM GAS  /tmp/cc08Wu1q.s 			page 19


 1027              		.fpu fpv4-sp-d16
 1028              		.type	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore, %function
 1029              	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore:
 1030              		@ args = 0, pretend = 0, frame = 0
 1031              		@ frame_needed = 0, uses_anonymous_args = 0
 1032              		@ link register save eliminated.
 1033 0000 90F84C21 		ldrb	r2, [r0, #332]	@ zero_extendqisi2
 1034 0004 0AB9     		cbnz	r2, .L123
 1035 0006 0120     		movs	r0, #1
 1036 0008 7047     		bx	lr
 1037              	.L123:
 1038 000a 0368     		ldr	r3, [r0]
 1039 000c DB69     		ldr	r3, [r3, #28]
 1040 000e 1847     		bx	r3
 1041              		.size	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore, .-_ZNK21HangprinterKinematics1
 1042              		.section	.text._ZNK21HangprinterKinematics13LimitPositionEPfjmb,"ax",%progbits
 1043              		.align	1
 1044              		.p2align 2,,3
 1045              		.global	_ZNK21HangprinterKinematics13LimitPositionEPfjmb
 1046              		.syntax unified
 1047              		.thumb
 1048              		.thumb_func
 1049              		.fpu fpv4-sp-d16
 1050              		.type	_ZNK21HangprinterKinematics13LimitPositionEPfjmb, %function
 1051              	_ZNK21HangprinterKinematics13LimitPositionEPfjmb:
 1052              		@ args = 4, pretend = 0, frame = 8
 1053              		@ frame_needed = 0, uses_anonymous_args = 0
 1054 0000 03F00703 		and	r3, r3, #7
 1055 0004 072B     		cmp	r3, #7
 1056 0006 01D0     		beq	.L144
 1057 0008 0020     		movs	r0, #0
 1058 000a 7047     		bx	lr
 1059              	.L144:
 1060 000c D1ED016A 		vldr.32	s13, [r1, #4]
 1061 0010 91ED007A 		vldr.32	s14, [r1]
 1062 0014 90ED2C6A 		vldr.32	s12, [r0, #176]
 1063 0018 00B5     		push	{lr}
 1064 001a 66EEA67A 		vmul.f32	s15, s13, s13
 1065 001e 2DED028B 		vpush.64	{d8}
 1066 0022 E7EE077A 		vfma.f32	s15, s14, s14
 1067 0026 83B0     		sub	sp, sp, #12
 1068 0028 F4EEC67A 		vcmpe.f32	s15, s12
 1069 002c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1070 0030 1EDC     		bgt	.L145
 1071 0032 0020     		movs	r0, #0
 1072              	.L126:
 1073 0034 1C4B     		ldr	r3, .L147
 1074 0036 D1ED027A 		vldr.32	s15, [r1, #8]
 1075 003a 1B68     		ldr	r3, [r3]
 1076 003c 03F24C72 		addw	r2, r3, #1868
 1077 0040 92ED007A 		vldr.32	s14, [r2]
 1078 0044 F4EEC77A 		vcmpe.f32	s15, s14
 1079 0048 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1080 004c 08D4     		bmi	.L143
 1081 004e 03F5E563 		add	r3, r3, #1832
 1082 0052 93ED007A 		vldr.32	s14, [r3]
 1083 0056 F4EEC77A 		vcmpe.f32	s15, s14
ARM GAS  /tmp/cc08Wu1q.s 			page 20


 1084 005a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1085 005e 02DD     		ble	.L125
 1086              	.L143:
 1087 0060 81ED027A 		vstr.32	s14, [r1, #8]
 1088 0064 0120     		movs	r0, #1
 1089              	.L125:
 1090 0066 03B0     		add	sp, sp, #12
 1091              		@ sp needed
 1092 0068 BDEC028B 		vldm	sp!, {d8}
 1093 006c 5DF804FB 		ldr	pc, [sp], #4
 1094              	.L145:
 1095 0070 86EE270A 		vdiv.f32	s0, s12, s15
 1096 0074 B5EE400A 		vcmp.f32	s0, #0
 1097 0078 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1098 007c B1EEC08A 		vsqrt.f32	s16, s0
 1099 0080 09D4     		bmi	.L146
 1100              	.L128:
 1101 0082 0120     		movs	r0, #1
 1102 0084 28EE077A 		vmul.f32	s14, s16, s14
 1103 0088 68EE266A 		vmul.f32	s13, s16, s13
 1104 008c 81ED007A 		vstr.32	s14, [r1]
 1105 0090 C1ED016A 		vstr.32	s13, [r1, #4]
 1106 0094 CEE7     		b	.L126
 1107              	.L146:
 1108 0096 0191     		str	r1, [sp, #4]
 1109 0098 FFF7FEFF 		bl	sqrtf
 1110 009c 0199     		ldr	r1, [sp, #4]
 1111 009e 91ED007A 		vldr.32	s14, [r1]
 1112 00a2 D1ED016A 		vldr.32	s13, [r1, #4]
 1113 00a6 ECE7     		b	.L128
 1114              	.L148:
 1115              		.align	2
 1116              	.L147:
 1117 00a8 00000000 		.word	reprap
 1118              		.size	_ZNK21HangprinterKinematics13LimitPositionEPfjmb, .-_ZNK21HangprinterKinematics13LimitPositi
 1119              		.section	.text._ZN21HangprinterKinematics6RecalcEv,"ax",%progbits
 1120              		.align	1
 1121              		.p2align 2,,3
 1122              		.global	_ZN21HangprinterKinematics6RecalcEv
 1123              		.syntax unified
 1124              		.thumb
 1125              		.thumb_func
 1126              		.fpu fpv4-sp-d16
 1127              		.type	_ZN21HangprinterKinematics6RecalcEv, %function
 1128              	_ZN21HangprinterKinematics6RecalcEv:
 1129              		@ args = 0, pretend = 0, frame = 88
 1130              		@ frame_needed = 0, uses_anonymous_args = 0
 1131 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1132 0004 D0ED046A 		vldr.32	s13, [r0, #16]
 1133 0008 90ED056A 		vldr.32	s12, [r0, #20]
 1134 000c 90ED067A 		vldr.32	s14, [r0, #24]
 1135 0010 D0ED0B5A 		vldr.32	s11, [r0, #44]
 1136 0014 D0ED0C0A 		vldr.32	s1, [r0, #48]
 1137 0018 90ED085A 		vldr.32	s10, [r0, #32]
 1138 001c D0ED0A4A 		vldr.32	s9, [r0, #40]
 1139 0020 90ED091A 		vldr.32	s2, [r0, #36]
 1140 0024 2DED068B 		vpush.64	{d8, d9, d10}
ARM GAS  /tmp/cc08Wu1q.s 			page 21


 1141 0028 75EEC61A 		vsub.f32	s3, s11, s12
 1142 002c D0ED078A 		vldr.32	s17, [r0, #28]
 1143 0030 90ED0EAA 		vldr.32	s20, [r0, #56]
 1144 0034 C0ED351A 		vstr.32	s3, [r0, #212]
 1145 0038 30EEC72A 		vsub.f32	s4, s1, s14
 1146 003c 65EEE63A 		vnmul.f32	s7, s11, s13
 1147 0040 20EEC64A 		vnmul.f32	s8, s1, s12
 1148 0044 E8EEA13A 		vfma.f32	s7, s17, s3
 1149 0048 97B0     		sub	sp, sp, #92
 1150 004a 0446     		mov	r4, r0
 1151 004c A5EE024A 		vfma.f32	s8, s10, s4
 1152 0050 E6EE243A 		vfma.f32	s7, s12, s9
 1153 0054 A7EE254A 		vfma.f32	s8, s14, s11
 1154 0058 66EEA07A 		vmul.f32	s15, s13, s1
 1155 005c 34EEE68A 		vsub.f32	s16, s9, s13
 1156 0060 E8EE827A 		vfma.f32	s15, s17, s4
 1157 0064 B1EE413A 		vneg.f32	s6, s2
 1158 0068 E5EE483A 		vfms.f32	s7, s10, s16
 1159 006c A3EE214A 		vfma.f32	s8, s6, s3
 1160 0070 E7EE247A 		vfma.f32	s15, s14, s9
 1161 0074 73EEA33A 		vadd.f32	s7, s7, s7
 1162 0078 34EE044A 		vadd.f32	s8, s8, s8
 1163 007c E3EE087A 		vfma.f32	s15, s6, s16
 1164 0080 23EEA39A 		vmul.f32	s18, s7, s7
 1165 0084 66EE84AA 		vmul.f32	s21, s13, s8
 1166 0088 26EE060A 		vmul.f32	s0, s12, s12
 1167 008c 6AEEA3AA 		vmul.f32	s21, s21, s7
 1168 0090 F0EE492A 		vmov.f32	s5, s18
 1169 0094 65EEA59A 		vmul.f32	s19, s11, s11
 1170 0098 25EE053A 		vmul.f32	s6, s10, s10
 1171 009c A6EEA60A 		vfma.f32	s0, s13, s13
 1172 00a0 E4EE042A 		vfma.f32	s5, s8, s8
 1173 00a4 E7EE09AA 		vfma.f32	s21, s14, s18
 1174 00a8 F1EE677A 		vneg.f32	s15, s15
 1175 00ac 77EEA77A 		vadd.f32	s15, s15, s15
 1176 00b0 E4EEA49A 		vfma.f32	s19, s9, s9
 1177 00b4 A8EEA83A 		vfma.f32	s6, s17, s17
 1178 00b8 A7EE070A 		vfma.f32	s0, s14, s14
 1179 00bc 75EE655A 		vsub.f32	s11, s10, s11
 1180 00c0 E7EEA72A 		vfma.f32	s5, s15, s15
 1181 00c4 36EE455A 		vsub.f32	s10, s12, s10
 1182 00c8 26EE276A 		vmul.f32	s12, s12, s15
 1183 00cc 78EEE44A 		vsub.f32	s9, s17, s9
 1184 00d0 76EEE86A 		vsub.f32	s13, s13, s17
 1185 00d4 F0EE6A8A 		vmov.f32	s17, s21
 1186 00d8 E3EE868A 		vfma.f32	s17, s7, s12
 1187 00dc E0EEA09A 		vfma.f32	s19, s1, s1
 1188 00e0 A1EE013A 		vfma.f32	s6, s2, s2
 1189 00e4 2AEE0AAA 		vmul.f32	s20, s20, s20
 1190 00e8 37EE417A 		vsub.f32	s14, s14, s2
 1191 00ec 31EE606A 		vsub.f32	s12, s2, s1
 1192 00f0 72EEA22A 		vadd.f32	s5, s5, s5
 1193 00f4 B5EE400A 		vcmp.f32	s0, #0
 1194 00f8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1195 00fc 80ED328A 		vstr.32	s16, [r0, #200]
 1196 0100 80ED2CAA 		vstr.32	s20, [r0, #176]
 1197 0104 C0ED2F9A 		vstr.32	s19, [r0, #188]
ARM GAS  /tmp/cc08Wu1q.s 			page 22


 1198 0108 C0ED306A 		vstr.32	s13, [r0, #192]
 1199 010c C0ED314A 		vstr.32	s9, [r0, #196]
 1200 0110 80ED335A 		vstr.32	s10, [r0, #204]
 1201 0114 C0ED345A 		vstr.32	s11, [r0, #208]
 1202 0118 80ED367A 		vstr.32	s14, [r0, #216]
 1203 011c 80ED376A 		vstr.32	s12, [r0, #220]
 1204 0120 C0ED393A 		vstr.32	s7, [r0, #228]
 1205 0124 80ED3C9A 		vstr.32	s18, [r0, #240]
 1206 0128 80ED382A 		vstr.32	s4, [r0, #224]
 1207 012c C0ED3B7A 		vstr.32	s15, [r0, #236]
 1208 0130 80ED3A4A 		vstr.32	s8, [r0, #232]
 1209 0134 80ED2E3A 		vstr.32	s6, [r0, #184]
 1210 0138 C0ED3D8A 		vstr.32	s17, [r0, #244]
 1211 013c C0ED3E2A 		vstr.32	s5, [r0, #248]
 1212 0140 80ED2D0A 		vstr.32	s0, [r0, #180]
 1213 0144 B1EEC08A 		vsqrt.f32	s16, s0
 1214 0148 00F17A81 		bmi	.L166
 1215              	.L150:
 1216 014c B5EE403A 		vcmp.f32	s6, #0
 1217 0150 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1218 0154 84ED4F8A 		vstr.32	s16, [r4, #316]
 1219 0158 B1EEC38A 		vsqrt.f32	s16, s6
 1220 015c 00F16B81 		bmi	.L167
 1221              	.L151:
 1222 0160 94ED0B0A 		vldr.32	s0, [r4, #44]
 1223 0164 94ED0A7A 		vldr.32	s14, [r4, #40]
 1224 0168 D4ED0C7A 		vldr.32	s15, [r4, #48]
 1225 016c 84ED508A 		vstr.32	s16, [r4, #320]
 1226 0170 20EE000A 		vmul.f32	s0, s0, s0
 1227 0174 A7EE070A 		vfma.f32	s0, s14, s14
 1228 0178 A7EEA70A 		vfma.f32	s0, s15, s15
 1229 017c B5EE400A 		vcmp.f32	s0, #0
 1230 0180 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1231 0184 F1EEC08A 		vsqrt.f32	s17, s0
 1232 0188 00F15281 		bmi	.L168
 1233              	.L152:
 1234 018c B44A     		ldr	r2, .L174
 1235 018e 636B     		ldr	r3, [r4, #52]	@ float
 1236 0190 1268     		ldr	r2, [r2]
 1237 0192 C4F84831 		str	r3, [r4, #328]	@ float
 1238 0196 0DF11809 		add	r9, sp, #24
 1239 019a 0DF13808 		add	r8, sp, #56
 1240 019e 4B46     		mov	r3, r9
 1241 01a0 0192     		str	r2, [sp, #4]
 1242 01a2 1746     		mov	r7, r2
 1243 01a4 2032     		adds	r2, r2, #32
 1244 01a6 9FEDAF8A 		vldr.32	s16, .L174+4
 1245 01aa C4ED518A 		vstr.32	s17, [r4, #324]
 1246 01ae C246     		mov	r10, r8
 1247 01b0 04F15006 		add	r6, r4, #80
 1248 01b4 CDF80880 		str	r8, [sp, #8]
 1249 01b8 CDF80C90 		str	r9, [sp, #12]
 1250 01bc 0DF1280B 		add	fp, sp, #40
 1251 01c0 A146     		mov	r9, r4
 1252 01c2 9046     		mov	r8, r2
 1253 01c4 1C46     		mov	r4, r3
 1254              	.L153:
ARM GAS  /tmp/cc08Wu1q.s 			page 23


 1255 01c6 97F8FC12 		ldrb	r1, [r7, #764]	@ zero_extendqisi2
 1256 01ca 0198     		ldr	r0, [sp, #4]
 1257 01cc 356D     		ldr	r5, [r6, #80]
 1258 01ce 0DF11702 		add	r2, sp, #23
 1259 01d2 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 1260 01d6 3169     		ldr	r1, [r6, #16]
 1261 01d8 326A     		ldr	r2, [r6, #32]
 1262 01da 99ED0F6A 		vldr.32	s12, [r9, #60]
 1263 01de 00FB05F0 		mul	r0, r0, r5
 1264 01e2 07EE101A 		vmov	s14, r1	@ int
 1265 01e6 07EE900A 		vmov	s15, r0	@ int
 1266 01ea F8EE476A 		vcvt.f32.u32	s13, s14
 1267 01ee F8EE677A 		vcvt.f32.u32	s15, s15
 1268 01f2 96ED107A 		vldr.32	s14, [r6, #64]	@ int
 1269 01f6 67EEA67A 		vmul.f32	s15, s15, s13
 1270 01fa D6ED0C6A 		vldr.32	s13, [r6, #48]	@ int
 1271 01fe B8EE477A 		vcvt.f32.u32	s14, s14
 1272 0202 F8EE666A 		vcvt.f32.u32	s13, s13
 1273 0206 67EE877A 		vmul.f32	s15, s15, s14
 1274 020a 26EE887A 		vmul.f32	s14, s13, s16
 1275 020e 02FB01F3 		mul	r3, r2, r1
 1276 0212 C7EE875A 		vdiv.f32	s11, s15, s14
 1277 0216 0837     		adds	r7, r7, #8
 1278 0218 B845     		cmp	r8, r7
 1279 021a 07EE903A 		vmov	s15, r3	@ int
 1280 021e F8EE677A 		vcvt.f32.u32	s15, s15
 1281 0222 35EEA55A 		vadd.f32	s10, s11, s11
 1282 0226 27EEC67A 		vnmul.f32	s14, s15, s12
 1283 022a F6EC016A 		vldmia.32	r6!, {s13}
 1284 022e E4EC015A 		vstmia.32	r4!, {s11}
 1285 0232 85EE076A 		vdiv.f32	s12, s10, s14
 1286 0236 66EEA66A 		vmul.f32	s13, s13, s13
 1287 023a EBEC017A 		vstmia.32	fp!, {s15}
 1288 023e 86ED2A6A 		vstr.32	s12, [r6, #168]
 1289 0242 86ED327A 		vstr.32	s14, [r6, #200]
 1290 0246 EAEC016A 		vstmia.32	r10!, {s13}
 1291 024a BCD1     		bne	.L153
 1292 024c 4C46     		mov	r4, r9
 1293 024e 94ED050A 		vldr.32	s0, [r4, #20]
 1294 0252 D4ED046A 		vldr.32	s13, [r4, #16]
 1295 0256 D4ED0D7A 		vldr.32	s15, [r4, #52]
 1296 025a 94ED067A 		vldr.32	s14, [r4, #24]
 1297 025e D4ED108A 		vldr.32	s17, [r4, #64]
 1298 0262 DDF80880 		ldr	r8, [sp, #8]
 1299 0266 DDF80C90 		ldr	r9, [sp, #12]
 1300 026a 20EE000A 		vmul.f32	s0, s0, s0
 1301 026e 37EEC77A 		vsub.f32	s14, s15, s14
 1302 0272 A6EEA60A 		vfma.f32	s0, s13, s13
 1303 0276 D4ED1C6A 		vldr.32	s13, [r4, #112]	@ int
 1304 027a A7EE070A 		vfma.f32	s0, s14, s14
 1305 027e B8EE668A 		vcvt.f32.u32	s16, s13
 1306 0282 B5EE400A 		vcmp.f32	s0, #0
 1307 0286 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1308 028a 68EE288A 		vmul.f32	s17, s16, s17
 1309 028e B1EEC0AA 		vsqrt.f32	s20, s0
 1310 0292 00F1C880 		bmi	.L169
 1311              	.L154:
ARM GAS  /tmp/cc08Wu1q.s 			page 24


 1312 0296 94ED080A 		vldr.32	s0, [r4, #32]
 1313 029a D4ED076A 		vldr.32	s13, [r4, #28]
 1314 029e 94ED097A 		vldr.32	s14, [r4, #36]
 1315 02a2 DDED0A9A 		vldr.32	s19, [sp, #40]
 1316 02a6 94ED4F6A 		vldr.32	s12, [r4, #316]
 1317 02aa 94ED119A 		vldr.32	s18, [r4, #68]
 1318 02ae 20EE000A 		vmul.f32	s0, s0, s0
 1319 02b2 E8EE4A8A 		vfms.f32	s17, s16, s20
 1320 02b6 A6EEA60A 		vfma.f32	s0, s13, s13
 1321 02ba 37EEC77A 		vsub.f32	s14, s15, s14
 1322 02be E9EEC68A 		vfms.f32	s17, s19, s12
 1323 02c2 A7EE070A 		vfma.f32	s0, s14, s14
 1324 02c6 94ED1D7A 		vldr.32	s14, [r4, #116]	@ int
 1325 02ca CDED128A 		vstr.32	s17, [sp, #72]
 1326 02ce B8EE47AA 		vcvt.f32.u32	s20, s14
 1327 02d2 B5EE400A 		vcmp.f32	s0, #0
 1328 02d6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1329 02da F1EEC0AA 		vsqrt.f32	s21, s0
 1330 02de 2AEE099A 		vmul.f32	s18, s20, s18
 1331 02e2 00F19B80 		bmi	.L170
 1332              	.L155:
 1333 02e6 94ED0B0A 		vldr.32	s0, [r4, #44]
 1334 02ea 94ED0A7A 		vldr.32	s14, [r4, #40]
 1335 02ee D4ED0C5A 		vldr.32	s11, [r4, #48]
 1336 02f2 9DED0B6A 		vldr.32	s12, [sp, #44]
 1337 02f6 D4ED506A 		vldr.32	s13, [r4, #320]
 1338 02fa 94ED128A 		vldr.32	s16, [r4, #72]
 1339 02fe 20EE000A 		vmul.f32	s0, s0, s0
 1340 0302 AAEE6A9A 		vfms.f32	s18, s20, s21
 1341 0306 A7EE070A 		vfma.f32	s0, s14, s14
 1342 030a 77EEE57A 		vsub.f32	s15, s15, s11
 1343 030e A6EE669A 		vfms.f32	s18, s12, s13
 1344 0312 A7EEA70A 		vfma.f32	s0, s15, s15
 1345 0316 D4ED1E7A 		vldr.32	s15, [r4, #120]	@ int
 1346 031a 8DED139A 		vstr.32	s18, [sp, #76]
 1347 031e B5EE400A 		vcmp.f32	s0, #0
 1348 0322 B8EE679A 		vcvt.f32.u32	s18, s15
 1349 0326 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1350 032a B1EEC0AA 		vsqrt.f32	s20, s0
 1351 032e 29EE088A 		vmul.f32	s16, s18, s16
 1352 0332 70D4     		bmi	.L171
 1353              	.L156:
 1354 0334 A9EE4A8A 		vfms.f32	s16, s18, s20
 1355 0338 019B     		ldr	r3, [sp, #4]
 1356 033a 9DED0D5A 		vldr.32	s10, [sp, #52]
 1357 033e D4ED527A 		vldr.32	s15, [r4, #328]
 1358 0342 94ED1F7A 		vldr.32	s14, [r4, #124]	@ int
 1359 0346 DDED0C5A 		vldr.32	s11, [sp, #48]
 1360 034a 94ED516A 		vldr.32	s12, [r4, #324]
 1361 034e D4ED136A 		vldr.32	s13, [r4, #76]
 1362 0352 B8EE477A 		vcvt.f32.u32	s14, s14
 1363 0356 67EEC57A 		vnmul.f32	s15, s15, s10
 1364 035a A5EEC68A 		vfms.f32	s16, s11, s12
 1365 035e 03F5D477 		add	r7, r3, #424
 1366 0362 04F58675 		add	r5, r4, #268
 1367 0366 E7EE267A 		vfma.f32	s15, s14, s13
 1368 036a 04F58E7A 		add	r10, r4, #284
ARM GAS  /tmp/cc08Wu1q.s 			page 25


 1369 036e 0026     		movs	r6, #0
 1370 0370 8DED148A 		vstr.32	s16, [sp, #80]
 1371 0374 CDED157A 		vstr.32	s15, [sp, #84]
 1372 0378 B7EE009A 		vmov.f32	s18, #1.0e+0
 1373              	.L162:
 1374 037c B8EC018A 		vldmia.32	r8!, {s16}
 1375 0380 D4ED0F7A 		vldr.32	s15, [r4, #60]
 1376 0384 F9EC01AA 		vldmia.32	r9!, {s21}
 1377 0388 B0EE480A 		vmov.f32	s0, s16
 1378 038c A7EEA80A 		vfma.f32	s0, s15, s17
 1379 0390 0436     		adds	r6, r6, #4
 1380 0392 B5EE400A 		vcmp.f32	s0, #0
 1381 0396 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1382 039a B1EEC0AA 		vsqrt.f32	s20, s0
 1383 039e 34D4     		bmi	.L172
 1384              	.L157:
 1385 03a0 CAEE8A7A 		vdiv.f32	s15, s21, s20
 1386 03a4 F4EE677A 		vcmp.f32	s15, s15
 1387 03a8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1388 03ac 06D6     		bvs	.L158
 1389 03ae F4EEC97A 		vcmpe.f32	s15, s18
 1390 03b2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1391 03b6 D8BF     		it	le
 1392 03b8 F0EE497A 		vmovle.f32	s15, s18
 1393              	.L158:
 1394 03bc E7EC017A 		vstmia.32	r7!, {s15}
 1395 03c0 95ED0C7A 		vldr.32	s14, [r5, #48]
 1396 03c4 D4ED0F7A 		vldr.32	s15, [r4, #60]
 1397 03c8 E7EE298A 		vfma.f32	s17, s14, s19
 1398 03cc B0EE480A 		vmov.f32	s0, s16
 1399 03d0 A7EEA80A 		vfma.f32	s0, s15, s17
 1400 03d4 B5EE400A 		vcmp.f32	s0, #0
 1401 03d8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1402 03dc A5EC010A 		vstmia.32	r5!, {s0}
 1403 03e0 B1EEC08A 		vsqrt.f32	s16, s0
 1404 03e4 14D4     		bmi	.L173
 1405              	.L160:
 1406 03e6 12AB     		add	r3, sp, #72
 1407 03e8 9A19     		adds	r2, r3, r6
 1408 03ea AA45     		cmp	r10, r5
 1409 03ec 0AAB     		add	r3, sp, #40
 1410 03ee 3344     		add	r3, r3, r6
 1411 03f0 85ED078A 		vstr.32	s16, [r5, #28]
 1412 03f4 04D0     		beq	.L149
 1413 03f6 D2ED008A 		vldr.32	s17, [r2]
 1414 03fa D3ED009A 		vldr.32	s19, [r3]
 1415 03fe BDE7     		b	.L162
 1416              	.L149:
 1417 0400 17B0     		add	sp, sp, #92
 1418              		@ sp needed
 1419 0402 BDEC068B 		vldm	sp!, {d8-d10}
 1420 0406 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1421              	.L172:
 1422 040a FFF7FEFF 		bl	sqrtf
 1423 040e C7E7     		b	.L157
 1424              	.L173:
 1425 0410 FFF7FEFF 		bl	sqrtf
ARM GAS  /tmp/cc08Wu1q.s 			page 26


 1426 0414 E7E7     		b	.L160
 1427              	.L171:
 1428 0416 FFF7FEFF 		bl	sqrtf
 1429 041a 8BE7     		b	.L156
 1430              	.L170:
 1431 041c FFF7FEFF 		bl	sqrtf
 1432 0420 D4ED0D7A 		vldr.32	s15, [r4, #52]
 1433 0424 5FE7     		b	.L155
 1434              	.L169:
 1435 0426 FFF7FEFF 		bl	sqrtf
 1436 042a D4ED0D7A 		vldr.32	s15, [r4, #52]
 1437 042e 32E7     		b	.L154
 1438              	.L168:
 1439 0430 FFF7FEFF 		bl	sqrtf
 1440 0434 AAE6     		b	.L152
 1441              	.L167:
 1442 0436 B0EE430A 		vmov.f32	s0, s6
 1443 043a FFF7FEFF 		bl	sqrtf
 1444 043e 8FE6     		b	.L151
 1445              	.L166:
 1446 0440 FFF7FEFF 		bl	sqrtf
 1447 0444 D4ED087A 		vldr.32	s15, [r4, #32]
 1448 0448 D4ED076A 		vldr.32	s13, [r4, #28]
 1449 044c 94ED097A 		vldr.32	s14, [r4, #36]
 1450 0450 27EEA73A 		vmul.f32	s6, s15, s15
 1451 0454 A6EEA63A 		vfma.f32	s6, s13, s13
 1452 0458 A7EE073A 		vfma.f32	s6, s14, s14
 1453 045c 76E6     		b	.L150
 1454              	.L175:
 1455 045e 00BF     		.align	2
 1456              	.L174:
 1457 0460 00000000 		.word	reprap
 1458 0464 DB0FC940 		.word	1086918619
 1459              		.size	_ZN21HangprinterKinematics6RecalcEv, .-_ZN21HangprinterKinematics6RecalcEv
 1460              		.section	.text._ZN21HangprinterKinematics4InitEv,"ax",%progbits
 1461              		.align	1
 1462              		.p2align 2,,3
 1463              		.global	_ZN21HangprinterKinematics4InitEv
 1464              		.syntax unified
 1465              		.thumb
 1466              		.thumb_func
 1467              		.fpu fpv4-sp-d16
 1468              		.type	_ZN21HangprinterKinematics4InitEv, %function
 1469              	_ZN21HangprinterKinematics4InitEv:
 1470              		@ args = 0, pretend = 0, frame = 152
 1471              		@ frame_needed = 0, uses_anonymous_args = 0
 1472 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1473 0004 594D     		ldr	r5, .L181
 1474 0006 DFED5A7A 		vldr.32	s15, .L181+4
 1475 000a 0446     		mov	r4, r0
 1476 000c 95E80700 		ldm	r5, {r0, r1, r2}
 1477 0010 A7B0     		sub	sp, sp, #156
 1478 0012 05F10C03 		add	r3, r5, #12
 1479 0016 0DF1040A 		add	r10, sp, #4
 1480 001a 8AE80700 		stm	r10, {r0, r1, r2}
 1481 001e 93E80700 		ldm	r3, {r0, r1, r2}
 1482 0022 0DF11009 		add	r9, sp, #16
ARM GAS  /tmp/cc08Wu1q.s 			page 27


 1483 0026 05F11803 		add	r3, r5, #24
 1484 002a 89E80700 		stm	r9, {r0, r1, r2}
 1485 002e 93E80700 		ldm	r3, {r0, r1, r2}
 1486 0032 0DF11C08 		add	r8, sp, #28
 1487 0036 05F12403 		add	r3, r5, #36
 1488 003a 88E80700 		stm	r8, {r0, r1, r2}
 1489 003e 0FCB     		ldm	r3, {r0, r1, r2, r3}
 1490 0040 05F13406 		add	r6, r5, #52
 1491 0044 0DF1280E 		add	lr, sp, #40
 1492 0048 8EE80F00 		stm	lr, {r0, r1, r2, r3}
 1493 004c 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 1494 0050 0DF1380C 		add	ip, sp, #56
 1495 0054 05F14406 		add	r6, r5, #68
 1496 0058 8CE80F00 		stm	ip, {r0, r1, r2, r3}
 1497 005c 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 1498 0060 12AF     		add	r7, sp, #72
 1499 0062 05F15406 		add	r6, r5, #84
 1500 0066 87E80F00 		stm	r7, {r0, r1, r2, r3}
 1501 006a 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 1502 006e 0DF1580B 		add	fp, sp, #88
 1503 0072 05F16406 		add	r6, r5, #100
 1504 0076 8BE80F00 		stm	fp, {r0, r1, r2, r3}
 1505 007a 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 1506 007e 05F1740B 		add	fp, r5, #116
 1507 0082 1AAE     		add	r6, sp, #104
 1508 0084 86E80F00 		stm	r6, {r0, r1, r2, r3}
 1509 0088 9BE80F00 		ldm	fp, {r0, r1, r2, r3}
 1510 008c 8435     		adds	r5, r5, #132
 1511 008e 0DF1780B 		add	fp, sp, #120
 1512 0092 8BE80F00 		stm	fp, {r0, r1, r2, r3}
 1513 0096 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 1514 009a 22AD     		add	r5, sp, #136
 1515 009c 85E80F00 		stm	r5, {r0, r1, r2, r3}
 1516 00a0 BAE80700 		ldmia	r10!, {r0, r1, r2}
 1517 00a4 2061     		str	r0, [r4, #16]	@ unaligned
 1518 00a6 6161     		str	r1, [r4, #20]	@ unaligned
 1519 00a8 A261     		str	r2, [r4, #24]	@ unaligned
 1520 00aa B9E80700 		ldmia	r9!, {r0, r1, r2}
 1521 00ae E061     		str	r0, [r4, #28]	@ unaligned
 1522 00b0 2162     		str	r1, [r4, #32]	@ unaligned
 1523 00b2 6262     		str	r2, [r4, #36]	@ unaligned
 1524 00b4 B8E80700 		ldmia	r8!, {r0, r1, r2}
 1525 00b8 DFF8C490 		ldr	r9, .L181+20
 1526 00bc DFF8C480 		ldr	r8, .L181+24
 1527 00c0 A062     		str	r0, [r4, #40]	@ unaligned
 1528 00c2 E162     		str	r1, [r4, #44]	@ unaligned
 1529 00c4 2263     		str	r2, [r4, #48]	@ unaligned
 1530 00c6 C4ED0D7A 		vstr.32	s15, [r4, #52]
 1531 00ca C4F83890 		str	r9, [r4, #56]	@ float
 1532 00ce C4F83C80 		str	r8, [r4, #60]	@ float
 1533 00d2 BEE80F00 		ldmia	lr!, {r0, r1, r2, r3}
 1534 00d6 2064     		str	r0, [r4, #64]	@ unaligned
 1535 00d8 6164     		str	r1, [r4, #68]	@ unaligned
 1536 00da A264     		str	r2, [r4, #72]	@ unaligned
 1537 00dc E364     		str	r3, [r4, #76]	@ unaligned
 1538 00de BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 1539 00e2 2065     		str	r0, [r4, #80]	@ unaligned
ARM GAS  /tmp/cc08Wu1q.s 			page 28


 1540 00e4 6165     		str	r1, [r4, #84]	@ unaligned
 1541 00e6 A265     		str	r2, [r4, #88]	@ unaligned
 1542 00e8 E365     		str	r3, [r4, #92]	@ unaligned
 1543 00ea 0FCF     		ldmia	r7!, {r0, r1, r2, r3}
 1544 00ec 16AF     		add	r7, sp, #88
 1545 00ee 2066     		str	r0, [r4, #96]	@ unaligned
 1546 00f0 6166     		str	r1, [r4, #100]	@ unaligned
 1547 00f2 A266     		str	r2, [r4, #104]	@ unaligned
 1548 00f4 E366     		str	r3, [r4, #108]	@ unaligned
 1549 00f6 0FCF     		ldmia	r7!, {r0, r1, r2, r3}
 1550 00f8 2067     		str	r0, [r4, #112]	@ unaligned
 1551 00fa 6167     		str	r1, [r4, #116]	@ unaligned
 1552 00fc A267     		str	r2, [r4, #120]	@ unaligned
 1553 00fe E367     		str	r3, [r4, #124]	@ unaligned
 1554 0100 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 1555 0102 C4F88000 		str	r0, [r4, #128]	@ unaligned
 1556 0106 C4F88410 		str	r1, [r4, #132]	@ unaligned
 1557 010a C4F88820 		str	r2, [r4, #136]	@ unaligned
 1558 010e C4F88C30 		str	r3, [r4, #140]	@ unaligned
 1559 0112 BBE80F00 		ldmia	fp!, {r0, r1, r2, r3}
 1560 0116 C4F89000 		str	r0, [r4, #144]	@ unaligned
 1561 011a C4F89410 		str	r1, [r4, #148]	@ unaligned
 1562 011e C4F89820 		str	r2, [r4, #152]	@ unaligned
 1563 0122 C4F89C30 		str	r3, [r4, #156]	@ unaligned
 1564 0126 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1565 0128 C4F8AC30 		str	r3, [r4, #172]	@ unaligned
 1566 012c 2368     		ldr	r3, [r4]
 1567 012e C4F8A410 		str	r1, [r4, #164]	@ unaligned
 1568 0132 C4F8A820 		str	r2, [r4, #168]	@ unaligned
 1569 0136 C4F8A000 		str	r0, [r4, #160]	@ unaligned
 1570 013a 0E49     		ldr	r1, .L181+8
 1571 013c 1B6C     		ldr	r3, [r3, #64]
 1572 013e 0E4A     		ldr	r2, .L181+12
 1573 0140 0D69     		ldr	r5, [r1, #16]
 1574 0142 9342     		cmp	r3, r2
 1575 0144 4FF00001 		mov	r1, #0
 1576 0148 84F84C11 		strb	r1, [r4, #332]
 1577 014c 0AD1     		bne	.L180
 1578 014e 0B49     		ldr	r1, .L181+16
 1579              	.L177:
 1580 0150 2846     		mov	r0, r5
 1581 0152 0422     		movs	r2, #4
 1582 0154 FFF7FEFF 		bl	_ZN6GCodes21SetMachineAxisLettersEPKch
 1583 0158 2046     		mov	r0, r4
 1584 015a 27B0     		add	sp, sp, #156
 1585              		@ sp needed
 1586 015c BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1587 0160 FFF7FEBF 		b	_ZN21HangprinterKinematics6RecalcEv
 1588              	.L180:
 1589 0164 2046     		mov	r0, r4
 1590 0166 9847     		blx	r3
 1591 0168 0146     		mov	r1, r0
 1592 016a F1E7     		b	.L177
 1593              	.L182:
 1594              		.align	2
 1595              	.L181:
 1596 016c 00000000 		.word	.LANCHOR0
ARM GAS  /tmp/cc08Wu1q.s 			page 29


 1597 0170 00803B45 		.word	1161527296
 1598 0174 00000000 		.word	reprap
 1599 0178 00000000 		.word	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 1600 017c 00000000 		.word	.LC10
 1601 0180 0080BB44 		.word	1153138688
 1602 0184 3333333F 		.word	1060320051
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
 1617 0002 0122     		movs	r2, #1
 1618 0004 0446     		mov	r4, r0
 1619 0006 DFED070A 		vldr.32	s1, .L185
 1620 000a 9FED070A 		vldr.32	s0, .L185+4
 1621 000e 0421     		movs	r1, #4
 1622 0010 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffb
 1623 0014 054B     		ldr	r3, .L185+8
 1624 0016 2360     		str	r3, [r4]
 1625 0018 2046     		mov	r0, r4
 1626 001a FFF7FEFF 		bl	_ZN21HangprinterKinematics4InitEv
 1627 001e 2046     		mov	r0, r4
 1628 0020 10BD     		pop	{r4, pc}
 1629              	.L186:
 1630 0022 00BF     		.align	2
 1631              	.L185:
 1632 0024 CDCC4C3E 		.word	1045220557
 1633 0028 0000C842 		.word	1120403456
 1634 002c 08000000 		.word	.LANCHOR1+8
 1635              		.size	_ZN21HangprinterKinematicsC2Ev, .-_ZN21HangprinterKinematicsC2Ev
 1636              		.global	_ZN21HangprinterKinematicsC1Ev
 1637              		.thumb_set _ZN21HangprinterKinematicsC1Ev,_ZN21HangprinterKinematicsC2Ev
 1638              		.section	.text._ZN21HangprinterKinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN21Hangprint
 1639              		.align	1
 1640              		.p2align 2,,3
 1641              		.weak	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv
 1642              		.syntax unified
 1643              		.thumb
 1644              		.thumb_func
 1645              		.fpu fpv4-sp-d16
 1646              		.type	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv, %function
 1647              	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv:
 1648              		@ args = 0, pretend = 0, frame = 0
 1649              		@ frame_needed = 0, uses_anonymous_args = 0
 1650              		@ link register save eliminated.
 1651 0000 FFF7FEBF 		b	_ZN21HangprinterKinematics4InitEv
 1652              		.size	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv, .-_ZN21HangprinterKinematics22SetCalib
 1653              		.global	__aeabi_f2d
ARM GAS  /tmp/cc08Wu1q.s 			page 30


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
 1666 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1667 0004 40F29D27 		movw	r7, #669
 1668 0008 B942     		cmp	r1, r7
 1669 000a C1B0     		sub	sp, sp, #260
 1670 000c 06D0     		beq	.L202
 1671 000e 489C     		ldr	r4, [sp, #288]
 1672 0010 0094     		str	r4, [sp]
 1673 0012 FFF7FEFF 		bl	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1674              	.L197:
 1675 0016 41B0     		add	sp, sp, #260
 1676              		@ sp needed
 1677 0018 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1678              	.L202:
 1679 001c 40AF     		add	r7, sp, #256
 1680 001e 4FF00009 		mov	r9, #0
 1681 0022 07F8019D 		strb	r9, [r7, #-1]!
 1682 0026 1546     		mov	r5, r2
 1683 0028 0446     		mov	r4, r0
 1684 002a 021D     		adds	r2, r0, #4
 1685 002c 1E46     		mov	r6, r3
 1686 002e 5321     		movs	r1, #83
 1687 0030 3B46     		mov	r3, r7
 1688 0032 2846     		mov	r0, r5
 1689 0034 8DF8FE90 		strb	r9, [sp, #254]
 1690 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1691 003c 3B46     		mov	r3, r7
 1692 003e 04F10802 		add	r2, r4, #8
 1693 0042 5421     		movs	r1, #84
 1694 0044 2846     		mov	r0, r5
 1695 0046 0DF1FE07 		add	r7, sp, #254
 1696 004a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1697 004e 8DE8C002 		stm	sp, {r6, r7, r9}
 1698 0052 04F11003 		add	r3, r4, #16
 1699 0056 0322     		movs	r2, #3
 1700 0058 4121     		movs	r1, #65
 1701 005a 2846     		mov	r0, r5
 1702 005c FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1703 0060 28B1     		cbz	r0, .L190
 1704              	.L192:
 1705 0062 489B     		ldr	r3, [sp, #288]
 1706 0064 0120     		movs	r0, #1
 1707 0066 1870     		strb	r0, [r3]
 1708 0068 41B0     		add	sp, sp, #260
 1709              		@ sp needed
 1710 006a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
ARM GAS  /tmp/cc08Wu1q.s 			page 31


 1711              	.L190:
 1712 006e CDE90170 		strd	r7, r0, [sp, #4]
 1713 0072 0096     		str	r6, [sp]
 1714 0074 04F11C03 		add	r3, r4, #28
 1715 0078 0322     		movs	r2, #3
 1716 007a 4221     		movs	r1, #66
 1717 007c 2846     		mov	r0, r5
 1718 007e FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1719 0082 0028     		cmp	r0, #0
 1720 0084 EDD1     		bne	.L192
 1721 0086 CDE90170 		strd	r7, r0, [sp, #4]
 1722 008a 0096     		str	r6, [sp]
 1723 008c 04F12803 		add	r3, r4, #40
 1724 0090 0322     		movs	r2, #3
 1725 0092 4321     		movs	r1, #67
 1726 0094 2846     		mov	r0, r5
 1727 0096 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1728 009a 8146     		mov	r9, r0
 1729 009c 0028     		cmp	r0, #0
 1730 009e E0D1     		bne	.L192
 1731 00a0 3B46     		mov	r3, r7
 1732 00a2 04F13402 		add	r2, r4, #52
 1733 00a6 4421     		movs	r1, #68
 1734 00a8 2846     		mov	r0, r5
 1735 00aa FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1736 00ae 3B46     		mov	r3, r7
 1737 00b0 04F13C02 		add	r2, r4, #60
 1738 00b4 5121     		movs	r1, #81
 1739 00b6 2846     		mov	r0, r5
 1740 00b8 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1741 00bc CDE90179 		strd	r7, r9, [sp, #4]
 1742 00c0 0096     		str	r6, [sp]
 1743 00c2 04F14003 		add	r3, r4, #64
 1744 00c6 0422     		movs	r2, #4
 1745 00c8 5721     		movs	r1, #87
 1746 00ca 2846     		mov	r0, r5
 1747 00cc FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1748 00d0 0028     		cmp	r0, #0
 1749 00d2 C6D1     		bne	.L192
 1750 00d4 CDE90170 		strd	r7, r0, [sp, #4]
 1751 00d8 0096     		str	r6, [sp]
 1752 00da 04F15003 		add	r3, r4, #80
 1753 00de 0422     		movs	r2, #4
 1754 00e0 5221     		movs	r1, #82
 1755 00e2 2846     		mov	r0, r5
 1756 00e4 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1757 00e8 0028     		cmp	r0, #0
 1758 00ea BAD1     		bne	.L192
 1759 00ec CDE90170 		strd	r7, r0, [sp, #4]
 1760 00f0 0096     		str	r6, [sp]
 1761 00f2 04F16003 		add	r3, r4, #96
 1762 00f6 0422     		movs	r2, #4
 1763 00f8 5521     		movs	r1, #85
 1764 00fa 2846     		mov	r0, r5
 1765 00fc FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1766 0100 0028     		cmp	r0, #0
 1767 0102 AED1     		bne	.L192
ARM GAS  /tmp/cc08Wu1q.s 			page 32


 1768 0104 CDE90170 		strd	r7, r0, [sp, #4]
 1769 0108 0096     		str	r6, [sp]
 1770 010a 04F17003 		add	r3, r4, #112
 1771 010e 0422     		movs	r2, #4
 1772 0110 4F21     		movs	r1, #79
 1773 0112 2846     		mov	r0, r5
 1774 0114 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1775 0118 0028     		cmp	r0, #0
 1776 011a A2D1     		bne	.L192
 1777 011c CDE90170 		strd	r7, r0, [sp, #4]
 1778 0120 0096     		str	r6, [sp]
 1779 0122 04F18003 		add	r3, r4, #128
 1780 0126 0422     		movs	r2, #4
 1781 0128 4721     		movs	r1, #71
 1782 012a 2846     		mov	r0, r5
 1783 012c FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1784 0130 0028     		cmp	r0, #0
 1785 0132 96D1     		bne	.L192
 1786 0134 CDE90170 		strd	r7, r0, [sp, #4]
 1787 0138 0096     		str	r6, [sp]
 1788 013a 04F19003 		add	r3, r4, #144
 1789 013e 0422     		movs	r2, #4
 1790 0140 4821     		movs	r1, #72
 1791 0142 2846     		mov	r0, r5
 1792 0144 FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1793 0148 0028     		cmp	r0, #0
 1794 014a 8AD1     		bne	.L192
 1795 014c 0023     		movs	r3, #0
 1796 014e 0293     		str	r3, [sp, #8]
 1797 0150 CDE90067 		strd	r6, r7, [sp]
 1798 0154 04F1A003 		add	r3, r4, #160
 1799 0158 0422     		movs	r2, #4
 1800 015a 4A21     		movs	r1, #74
 1801 015c 2846     		mov	r0, r5
 1802 015e FFF7FEFF 		bl	_ZN11GCodeBuffer13TryGetUIArrayEcjPmRK9StringRefRbb
 1803 0162 0028     		cmp	r0, #0
 1804 0164 7FF47DAF 		bne	.L192
 1805 0168 9DF8FE30 		ldrb	r3, [sp, #254]	@ zero_extendqisi2
 1806 016c 13B9     		cbnz	r3, .L193
 1807 016e 9DF8FF30 		ldrb	r3, [sp, #255]	@ zero_extendqisi2
 1808 0172 13B1     		cbz	r3, .L194
 1809              	.L193:
 1810 0174 2046     		mov	r0, r4
 1811 0176 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 1812              	.L194:
 1813 017a 5021     		movs	r1, #80
 1814 017c 2846     		mov	r0, r5
 1815 017e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1816 0182 50B1     		cbz	r0, .L195
 1817 0184 2846     		mov	r0, r5
 1818 0186 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1819 018a 0123     		movs	r3, #1
 1820 018c 84ED0E0A 		vstr.32	s0, [r4, #56]
 1821 0190 8DF8FE30 		strb	r3, [sp, #254]
 1822              	.L196:
 1823 0194 9DF8FE00 		ldrb	r0, [sp, #254]	@ zero_extendqisi2
 1824 0198 3DE7     		b	.L197
ARM GAS  /tmp/cc08Wu1q.s 			page 33


 1825              	.L195:
 1826 019a 2846     		mov	r0, r5
 1827 019c 4B21     		movs	r1, #75
 1828 019e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1829 01a2 0028     		cmp	r0, #0
 1830 01a4 F6D1     		bne	.L196
 1831 01a6 2069     		ldr	r0, [r4, #16]	@ float
 1832 01a8 FFF7FEFF 		bl	__aeabi_f2d
 1833 01ac 8946     		mov	r9, r1
 1834 01ae D4E92A21 		ldrd	r2, r1, [r4, #168]
 1835 01b2 D4F8A430 		ldr	r3, [r4, #164]
 1836 01b6 3D91     		str	r1, [sp, #244]
 1837 01b8 D4F8A010 		ldr	r1, [r4, #160]
 1838 01bc 3C92     		str	r2, [sp, #240]
 1839 01be D4F89C20 		ldr	r2, [r4, #156]
 1840 01c2 3B93     		str	r3, [sp, #236]
 1841 01c4 D4F89830 		ldr	r3, [r4, #152]
 1842 01c8 3A91     		str	r1, [sp, #232]
 1843 01ca D4F89410 		ldr	r1, [r4, #148]
 1844 01ce 3992     		str	r2, [sp, #228]
 1845 01d0 D4F89020 		ldr	r2, [r4, #144]
 1846 01d4 3893     		str	r3, [sp, #224]
 1847 01d6 D4F88C30 		ldr	r3, [r4, #140]
 1848 01da 3791     		str	r1, [sp, #220]
 1849 01dc D4F88810 		ldr	r1, [r4, #136]
 1850 01e0 3692     		str	r2, [sp, #216]
 1851 01e2 D4F88420 		ldr	r2, [r4, #132]
 1852 01e6 3593     		str	r3, [sp, #212]
 1853 01e8 D4F88030 		ldr	r3, [r4, #128]
 1854 01ec 3491     		str	r1, [sp, #208]
 1855 01ee E16F     		ldr	r1, [r4, #124]
 1856 01f0 3392     		str	r2, [sp, #204]
 1857 01f2 A26F     		ldr	r2, [r4, #120]
 1858 01f4 3293     		str	r3, [sp, #200]
 1859 01f6 636F     		ldr	r3, [r4, #116]
 1860 01f8 2F93     		str	r3, [sp, #188]
 1861 01fa CDE93021 		strd	r2, r1, [sp, #192]
 1862 01fe D4E91B32 		ldrd	r3, r2, [r4, #108]
 1863 0202 A16E     		ldr	r1, [r4, #104]
 1864 0204 2E92     		str	r2, [sp, #184]
 1865 0206 626E     		ldr	r2, [r4, #100]
 1866 0208 2D93     		str	r3, [sp, #180]
 1867 020a 236E     		ldr	r3, [r4, #96]
 1868 020c 2C91     		str	r1, [sp, #176]
 1869 020e 8046     		mov	r8, r0
 1870 0210 E06D     		ldr	r0, [r4, #92]	@ float
 1871 0212 CDE92A32 		strd	r3, r2, [sp, #168]
 1872 0216 FFF7FEFF 		bl	__aeabi_f2d
 1873 021a CDE92801 		strd	r0, [sp, #160]
 1874 021e A06D     		ldr	r0, [r4, #88]	@ float
 1875 0220 FFF7FEFF 		bl	__aeabi_f2d
 1876 0224 CDE92601 		strd	r0, [sp, #152]
 1877 0228 606D     		ldr	r0, [r4, #84]	@ float
 1878 022a FFF7FEFF 		bl	__aeabi_f2d
 1879 022e CDE92401 		strd	r0, [sp, #144]
 1880 0232 206D     		ldr	r0, [r4, #80]	@ float
 1881 0234 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/cc08Wu1q.s 			page 34


 1882 0238 CDE92201 		strd	r0, [sp, #136]
 1883 023c E06C     		ldr	r0, [r4, #76]	@ float
 1884 023e FFF7FEFF 		bl	__aeabi_f2d
 1885 0242 CDE92001 		strd	r0, [sp, #128]
 1886 0246 A06C     		ldr	r0, [r4, #72]	@ float
 1887 0248 FFF7FEFF 		bl	__aeabi_f2d
 1888 024c CDE91E01 		strd	r0, [sp, #120]
 1889 0250 606C     		ldr	r0, [r4, #68]	@ float
 1890 0252 FFF7FEFF 		bl	__aeabi_f2d
 1891 0256 CDE91C01 		strd	r0, [sp, #112]
 1892 025a 206C     		ldr	r0, [r4, #64]	@ float
 1893 025c FFF7FEFF 		bl	__aeabi_f2d
 1894 0260 CDE91A01 		strd	r0, [sp, #104]
 1895 0264 E06B     		ldr	r0, [r4, #60]	@ float
 1896 0266 FFF7FEFF 		bl	__aeabi_f2d
 1897 026a CDE91801 		strd	r0, [sp, #96]
 1898 026e A068     		ldr	r0, [r4, #8]	@ float
 1899 0270 FFF7FEFF 		bl	__aeabi_f2d
 1900 0274 D4ED017A 		vldr.32	s15, [r4, #4]
 1901 0278 CDE91601 		strd	r0, [sp, #88]
 1902 027c FDEEE77A 		vcvt.s32.f32	s15, s15
 1903 0280 A06B     		ldr	r0, [r4, #56]	@ float
 1904 0282 CDED147A 		vstr.32	s15, [sp, #80]	@ int
 1905 0286 FFF7FEFF 		bl	__aeabi_f2d
 1906 028a CDE91201 		strd	r0, [sp, #72]
 1907 028e 606B     		ldr	r0, [r4, #52]	@ float
 1908 0290 FFF7FEFF 		bl	__aeabi_f2d
 1909 0294 CDE91001 		strd	r0, [sp, #64]
 1910 0298 206B     		ldr	r0, [r4, #48]	@ float
 1911 029a FFF7FEFF 		bl	__aeabi_f2d
 1912 029e CDE90E01 		strd	r0, [sp, #56]
 1913 02a2 E06A     		ldr	r0, [r4, #44]	@ float
 1914 02a4 FFF7FEFF 		bl	__aeabi_f2d
 1915 02a8 CDE90C01 		strd	r0, [sp, #48]
 1916 02ac A06A     		ldr	r0, [r4, #40]	@ float
 1917 02ae FFF7FEFF 		bl	__aeabi_f2d
 1918 02b2 CDE90A01 		strd	r0, [sp, #40]
 1919 02b6 606A     		ldr	r0, [r4, #36]	@ float
 1920 02b8 FFF7FEFF 		bl	__aeabi_f2d
 1921 02bc CDE90801 		strd	r0, [sp, #32]
 1922 02c0 206A     		ldr	r0, [r4, #32]	@ float
 1923 02c2 FFF7FEFF 		bl	__aeabi_f2d
 1924 02c6 CDE90601 		strd	r0, [sp, #24]
 1925 02ca E069     		ldr	r0, [r4, #28]	@ float
 1926 02cc FFF7FEFF 		bl	__aeabi_f2d
 1927 02d0 CDE90401 		strd	r0, [sp, #16]
 1928 02d4 A069     		ldr	r0, [r4, #24]	@ float
 1929 02d6 FFF7FEFF 		bl	__aeabi_f2d
 1930 02da CDE90201 		strd	r0, [sp, #8]
 1931 02de 6069     		ldr	r0, [r4, #20]	@ float
 1932 02e0 FFF7FEFF 		bl	__aeabi_f2d
 1933 02e4 4246     		mov	r2, r8
 1934 02e6 CDE90001 		strd	r0, [sp]
 1935 02ea 4B46     		mov	r3, r9
 1936 02ec 3046     		mov	r0, r6
 1937 02ee 0249     		ldr	r1, .L203
 1938 02f0 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
ARM GAS  /tmp/cc08Wu1q.s 			page 35


 1939 02f4 4EE7     		b	.L196
 1940              	.L204:
 1941 02f6 00BF     		.align	2
 1942              	.L203:
 1943 02f8 00000000 		.word	.LC13
 1944              		.size	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN21HangprinterKinema
 1945              		.section	.text._ZNK21HangprinterKinematics16InverseTransformEfffPf,"ax",%progbits
 1946              		.align	1
 1947              		.p2align 2,,3
 1948              		.global	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 1949              		.syntax unified
 1950              		.thumb
 1951              		.thumb_func
 1952              		.fpu fpv4-sp-d16
 1953              		.type	_ZNK21HangprinterKinematics16InverseTransformEfffPf, %function
 1954              	_ZNK21HangprinterKinematics16InverseTransformEfffPf:
 1955              		@ args = 0, pretend = 0, frame = 8
 1956              		@ frame_needed = 0, uses_anonymous_args = 0
 1957 0000 30B5     		push	{r4, r5, lr}
 1958 0002 2DED068B 		vpush.64	{d8, d9, d10}
 1959 0006 90ED2E8A 		vldr.32	s16, [r0, #184]
 1960 000a 90ED2F6A 		vldr.32	s12, [r0, #188]
 1961 000e D0ED358A 		vldr.32	s17, [r0, #212]
 1962 0012 D0ED335A 		vldr.32	s11, [r0, #204]
 1963 0016 D0ED2D6A 		vldr.32	s13, [r0, #180]
 1964 001a 90ED322A 		vldr.32	s4, [r0, #200]
 1965 001e D0ED302A 		vldr.32	s5, [r0, #192]
 1966 0022 90ED343A 		vldr.32	s6, [r0, #208]
 1967 0026 D0ED313A 		vldr.32	s7, [r0, #196]
 1968 002a 90ED047A 		vldr.32	s14, [r0, #16]
 1969 002e 90ED054A 		vldr.32	s8, [r0, #20]
 1970 0032 D0ED394A 		vldr.32	s9, [r0, #228]
 1971 0036 D0ED3B7A 		vldr.32	s15, [r0, #236]
 1972 003a 90ED3C5A 		vldr.32	s10, [r0, #240]
 1973 003e 90EEA08A 		vfnms.f32	s16, s1, s1
 1974 0042 8DB0     		sub	sp, sp, #52
 1975 0044 0446     		mov	r4, r0
 1976 0046 91EE016A 		vfnms.f32	s12, s2, s2
 1977 004a 68EEC88A 		vnmul.f32	s17, s17, s16
 1978 004e 28EE028A 		vmul.f32	s16, s16, s4
 1979 0052 E5EEC68A 		vfms.f32	s17, s11, s12
 1980 0056 F0EE665A 		vmov.f32	s11, s13
 1981 005a D0EE005A 		vfnms.f32	s11, s0, s0
 1982 005e A2EEC68A 		vfms.f32	s16, s5, s12
 1983 0062 E3EE658A 		vfms.f32	s17, s6, s11
 1984 0066 A5EEA38A 		vfma.f32	s16, s11, s7
 1985 006a 27EE687A 		vnmul.f32	s14, s14, s17
 1986 006e B0EE409A 		vmov.f32	s18, s0
 1987 0072 A4EE087A 		vfma.f32	s14, s8, s16
 1988 0076 28EE080A 		vmul.f32	s0, s16, s16
 1989 007a 27EE247A 		vmul.f32	s14, s14, s9
 1990 007e A8EEA80A 		vfma.f32	s0, s17, s17
 1991 0082 B0EE006A 		vmov.f32	s12, #2.0e+0
 1992 0086 A7EE060A 		vfma.f32	s0, s14, s12
 1993 008a E9EE496A 		vfms.f32	s13, s18, s18
 1994 008e 67EEC87A 		vnmul.f32	s15, s15, s16
 1995 0092 D0ED3A5A 		vldr.32	s11, [r0, #232]
ARM GAS  /tmp/cc08Wu1q.s 			page 36


 1996 0096 90ED3D6A 		vldr.32	s12, [r0, #244]
 1997 009a 90ED3E7A 		vldr.32	s14, [r0, #248]
 1998 009e A6EE850A 		vfma.f32	s0, s13, s10
 1999 00a2 E5EEA87A 		vfma.f32	s15, s11, s17
 2000 00a6 27EE400A 		vnmul.f32	s0, s14, s0
 2001 00aa 77EEC67A 		vsub.f32	s15, s15, s12
 2002 00ae F0EE609A 		vmov.f32	s19, s1
 2003 00b2 A7EEA70A 		vfma.f32	s0, s15, s15
 2004 00b6 B0EE41AA 		vmov.f32	s20, s2
 2005 00ba B5EE400A 		vcmp.f32	s0, #0
 2006 00be F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2007 00c2 F1EE677A 		vneg.f32	s15, s15
 2008 00c6 F1EEC0AA 		vsqrt.f32	s21, s0
 2009 00ca 46D4     		bmi	.L208
 2010              	.L206:
 2011 00cc 77EEEA7A 		vsub.f32	s15, s15, s21
 2012 00d0 19EE100A 		vmov	r0, s18
 2013 00d4 87EE879A 		vdiv.f32	s18, s15, s14
 2014 00d8 81ED029A 		vstr.32	s18, [r1, #8]
 2015 00dc 94ED3A7A 		vldr.32	s14, [r4, #232]
 2016 00e0 D4ED397A 		vldr.32	s15, [r4, #228]
 2017 00e4 E9EE078A 		vfma.f32	s17, s18, s14
 2018 00e8 C8EEA7AA 		vdiv.f32	s21, s17, s15
 2019 00ec C1ED00AA 		vstr.32	s21, [r1]
 2020 00f0 94ED3B7A 		vldr.32	s14, [r4, #236]
 2021 00f4 D4ED397A 		vldr.32	s15, [r4, #228]
 2022 00f8 A9EE078A 		vfma.f32	s16, s18, s14
 2023 00fc C8EE278A 		vdiv.f32	s17, s16, s15
 2024 0100 C1ED018A 		vstr.32	s17, [r1, #4]
 2025 0104 FFF7FEFF 		bl	__aeabi_f2d
 2026 0108 0446     		mov	r4, r0
 2027 010a 19EE100A 		vmov	r0, s18
 2028 010e 0D46     		mov	r5, r1
 2029 0110 FFF7FEFF 		bl	__aeabi_f2d
 2030 0114 CDE90801 		strd	r0, [sp, #32]
 2031 0118 18EE900A 		vmov	r0, s17
 2032 011c FFF7FEFF 		bl	__aeabi_f2d
 2033 0120 CDE90601 		strd	r0, [sp, #24]
 2034 0124 1AEE900A 		vmov	r0, s21
 2035 0128 FFF7FEFF 		bl	__aeabi_f2d
 2036 012c CDE90401 		strd	r0, [sp, #16]
 2037 0130 1AEE100A 		vmov	r0, s20
 2038 0134 FFF7FEFF 		bl	__aeabi_f2d
 2039 0138 CDE90201 		strd	r0, [sp, #8]
 2040 013c 19EE900A 		vmov	r0, s19
 2041 0140 FFF7FEFF 		bl	__aeabi_f2d
 2042 0144 2246     		mov	r2, r4
 2043 0146 CDE90001 		strd	r0, [sp]
 2044 014a 2B46     		mov	r3, r5
 2045 014c 0848     		ldr	r0, .L209
 2046 014e FFF7FEFF 		bl	debugPrintf
 2047 0152 0DB0     		add	sp, sp, #52
 2048              		@ sp needed
 2049 0154 BDEC068B 		vldm	sp!, {d8-d10}
 2050 0158 30BD     		pop	{r4, r5, pc}
 2051              	.L208:
 2052 015a 0B91     		str	r1, [sp, #44]
ARM GAS  /tmp/cc08Wu1q.s 			page 37


 2053 015c CDED0A7A 		vstr.32	s15, [sp, #40]	@ int
 2054 0160 FFF7FEFF 		bl	sqrtf
 2055 0164 94ED3E7A 		vldr.32	s14, [r4, #248]
 2056 0168 0B99     		ldr	r1, [sp, #44]
 2057 016a DDED0A7A 		vldr.32	s15, [sp, #40]	@ int
 2058 016e ADE7     		b	.L206
 2059              	.L210:
 2060              		.align	2
 2061              	.L209:
 2062 0170 00000000 		.word	.LC14
 2063              		.size	_ZNK21HangprinterKinematics16InverseTransformEfffPf, .-_ZNK21HangprinterKinematics16InverseT
 2064              		.section	.text._ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 2065              		.align	1
 2066              		.p2align 2,,3
 2067              		.global	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf
 2068              		.syntax unified
 2069              		.thumb
 2070              		.thumb_func
 2071              		.fpu fpv4-sp-d16
 2072              		.type	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 2073              	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 2074              		@ args = 8, pretend = 0, frame = 0
 2075              		@ frame_needed = 0, uses_anonymous_args = 0
 2076              		@ link register save eliminated.
 2077 0000 91ED005A 		vldr.32	s10, [r1]	@ int
 2078 0004 D1ED015A 		vldr.32	s11, [r1, #4]	@ int
 2079 0008 91ED026A 		vldr.32	s12, [r1, #8]	@ int
 2080 000c 90ED3F7A 		vldr.32	s14, [r0, #252]
 2081 0010 D0ED407A 		vldr.32	s15, [r0, #256]
 2082 0014 D0ED411A 		vldr.32	s3, [r0, #260]
 2083 0018 90ED4B2A 		vldr.32	s4, [r0, #300]
 2084 001c D0ED4C2A 		vldr.32	s5, [r0, #304]
 2085 0020 90ED4D3A 		vldr.32	s6, [r0, #308]
 2086 0024 90ED430A 		vldr.32	s0, [r0, #268]
 2087 0028 D0ED440A 		vldr.32	s1, [r0, #272]
 2088 002c 90ED451A 		vldr.32	s2, [r0, #276]
 2089 0030 D0ED473A 		vldr.32	s7, [r0, #284]
 2090 0034 90ED484A 		vldr.32	s8, [r0, #288]
 2091 0038 D0ED494A 		vldr.32	s9, [r0, #292]
 2092 003c 0199     		ldr	r1, [sp, #4]
 2093 003e B8EEC55A 		vcvt.f32.s32	s10, s10
 2094 0042 F8EEE55A 		vcvt.f32.s32	s11, s11
 2095 0046 B8EEC66A 		vcvt.f32.s32	s12, s12
 2096 004a C5EE076A 		vdiv.f32	s13, s10, s14
 2097 004e 85EEA77A 		vdiv.f32	s14, s11, s15
 2098 0052 C6EE217A 		vdiv.f32	s15, s12, s3
 2099 0056 76EE826A 		vadd.f32	s13, s13, s4
 2100 005a 37EE227A 		vadd.f32	s14, s14, s5
 2101 005e 77EE837A 		vadd.f32	s15, s15, s6
 2102 0062 96EEA60A 		vfnms.f32	s0, s13, s13
 2103 0066 D7EE070A 		vfnms.f32	s1, s14, s14
 2104 006a 97EEA71A 		vfnms.f32	s2, s15, s15
 2105 006e 80EE230A 		vdiv.f32	s0, s0, s7
 2106 0072 C0EE840A 		vdiv.f32	s1, s1, s8
 2107 0076 81EE241A 		vdiv.f32	s2, s2, s9
 2108 007a FFF7FEBF 		b	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2109              		.size	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK21HangprinterKinematics
ARM GAS  /tmp/cc08Wu1q.s 			page 38


 2110              		.global	__aeabi_dsub
 2111              		.global	__aeabi_ddiv
 2112 007e 00BF     		.section	.text._ZNK21HangprinterKinematics17ComputeDerivativeEjfff,"ax",%progbits
 2113              		.align	1
 2114              		.p2align 2,,3
 2115              		.global	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 2116              		.syntax unified
 2117              		.thumb
 2118              		.thumb_func
 2119              		.fpu fpv4-sp-d16
 2120              		.type	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff, %function
 2121              	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff:
 2122              		@ args = 0, pretend = 0, frame = 736
 2123              		@ frame_needed = 0, uses_anonymous_args = 0
 2124 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2125 0004 2DED0C8B 		vpush.64	{d8, d9, d10, d11, d12, d13}
 2126 0008 ADF5397D 		sub	sp, sp, #740
 2127 000c 00F1100A 		add	r10, r0, #16
 2128 0010 0446     		mov	r4, r0
 2129 0012 0091     		str	r1, [sp]
 2130 0014 9AE80700 		ldm	r10, {r0, r1, r2}
 2131 0018 04F11C09 		add	r9, r4, #28
 2132 001c 14AB     		add	r3, sp, #80
 2133 001e 83E80700 		stm	r3, {r0, r1, r2}
 2134 0022 99E80700 		ldm	r9, {r0, r1, r2}
 2135 0026 04F12808 		add	r8, r4, #40
 2136 002a 17AB     		add	r3, sp, #92
 2137 002c 83E80700 		stm	r3, {r0, r1, r2}
 2138 0030 98E80700 		ldm	r8, {r0, r1, r2}
 2139 0034 94ED01DA 		vldr.32	s26, [r4, #4]
 2140 0038 D4ED02CA 		vldr.32	s25, [r4, #8]
 2141 003c 94ED0DCA 		vldr.32	s24, [r4, #52]
 2142 0040 A37B     		ldrb	r3, [r4, #14]	@ zero_extendqisi2
 2143 0042 267B     		ldrb	r6, [r4, #12]	@ zero_extendqisi2
 2144 0044 0193     		str	r3, [sp, #4]
 2145 0046 1AAB     		add	r3, sp, #104
 2146 0048 677B     		ldrb	r7, [r4, #13]	@ zero_extendqisi2
 2147 004a D4ED0EBA 		vldr.32	s23, [r4, #56]
 2148 004e 8DED11DA 		vstr.32	s26, [sp, #68]
 2149 0052 04F14005 		add	r5, r4, #64
 2150 0056 83E80700 		stm	r3, {r0, r1, r2}
 2151 005a CDED12CA 		vstr.32	s25, [sp, #72]
 2152 005e D84B     		ldr	r3, .L239+8
 2153 0060 8DED1DCA 		vstr.32	s24, [sp, #116]
 2154 0064 0296     		str	r6, [sp, #8]
 2155 0066 9DF80420 		ldrb	r2, [sp, #4]	@ zero_extendqisi2
 2156 006a 8DF84E20 		strb	r2, [sp, #78]
 2157 006e 1093     		str	r3, [sp, #64]
 2158 0070 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 2159 0074 0397     		str	r7, [sp, #12]
 2160 0076 8DF84D70 		strb	r7, [sp, #77]
 2161 007a 0495     		str	r5, [sp, #16]
 2162 007c 04F15007 		add	r7, r4, #80
 2163 0080 20AD     		add	r5, sp, #128
 2164 0082 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2165 0086 97E80F00 		ldm	r7, {r0, r1, r2, r3}
 2166 008a 04F1600C 		add	ip, r4, #96
ARM GAS  /tmp/cc08Wu1q.s 			page 39


 2167 008e 24AD     		add	r5, sp, #144
 2168 0090 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2169 0094 9CE80F00 		ldm	ip, {r0, r1, r2, r3}
 2170 0098 CDF818C0 		str	ip, [sp, #24]
 2171 009c 28AD     		add	r5, sp, #160
 2172 009e 04F1700C 		add	ip, r4, #112
 2173 00a2 8DF84C60 		strb	r6, [sp, #76]
 2174 00a6 0597     		str	r7, [sp, #20]
 2175 00a8 CDED1EBA 		vstr.32	s23, [sp, #120]
 2176 00ac 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2177 00b0 9CE80F00 		ldm	ip, {r0, r1, r2, r3}
 2178 00b4 CDF81CC0 		str	ip, [sp, #28]
 2179 00b8 2CAD     		add	r5, sp, #176
 2180 00ba 04F1800C 		add	ip, r4, #128
 2181 00be 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2182 00c2 9CE80F00 		ldm	ip, {r0, r1, r2, r3}
 2183 00c6 CDF820C0 		str	ip, [sp, #32]
 2184 00ca 30AD     		add	r5, sp, #192
 2185 00cc 04F1900C 		add	ip, r4, #144
 2186 00d0 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2187 00d4 9CE80F00 		ldm	ip, {r0, r1, r2, r3}
 2188 00d8 94ED0FBA 		vldr.32	s22, [r4, #60]
 2189 00dc CDF824C0 		str	ip, [sp, #36]
 2190 00e0 34AD     		add	r5, sp, #208
 2191 00e2 04F1A00C 		add	ip, r4, #160
 2192 00e6 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2193 00ea CDF828C0 		str	ip, [sp, #40]
 2194 00ee 8DED1FBA 		vstr.32	s22, [sp, #124]
 2195 00f2 9CE80F00 		ldm	ip, {r0, r1, r2, r3}
 2196 00f6 94ED2F9A 		vldr.32	s18, [r4, #188]
 2197 00fa D4ED308A 		vldr.32	s17, [r4, #192]
 2198 00fe 94ED318A 		vldr.32	s16, [r4, #196]
 2199 0102 D4ED2CAA 		vldr.32	s21, [r4, #176]
 2200 0106 94ED2DAA 		vldr.32	s20, [r4, #180]
 2201 010a D4ED2E9A 		vldr.32	s19, [r4, #184]
 2202 010e D4ED321A 		vldr.32	s3, [r4, #200]
 2203 0112 94ED332A 		vldr.32	s4, [r4, #204]
 2204 0116 D4ED342A 		vldr.32	s5, [r4, #208]
 2205 011a 94ED353A 		vldr.32	s6, [r4, #212]
 2206 011e D4ED363A 		vldr.32	s7, [r4, #216]
 2207 0122 94ED374A 		vldr.32	s8, [r4, #220]
 2208 0126 D4ED384A 		vldr.32	s9, [r4, #224]
 2209 012a 94ED395A 		vldr.32	s10, [r4, #228]
 2210 012e D4ED3A5A 		vldr.32	s11, [r4, #232]
 2211 0132 94ED3B6A 		vldr.32	s12, [r4, #236]
 2212 0136 D4ED3C6A 		vldr.32	s13, [r4, #240]
 2213 013a 94ED3D7A 		vldr.32	s14, [r4, #244]
 2214 013e D4ED3E7A 		vldr.32	s15, [r4, #248]
 2215 0142 8DED3F9A 		vstr.32	s18, [sp, #252]
 2216 0146 04F1FC0E 		add	lr, r4, #252
 2217 014a 38AD     		add	r5, sp, #224
 2218 014c 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2219 0150 CDED408A 		vstr.32	s17, [sp, #256]
 2220 0154 8DED418A 		vstr.32	s16, [sp, #260]
 2221 0158 CDED3CAA 		vstr.32	s21, [sp, #240]
 2222 015c 8DED3DAA 		vstr.32	s20, [sp, #244]
 2223 0160 CDED3E9A 		vstr.32	s19, [sp, #248]
ARM GAS  /tmp/cc08Wu1q.s 			page 40


 2224 0164 CDED421A 		vstr.32	s3, [sp, #264]
 2225 0168 9EE80F00 		ldm	lr, {r0, r1, r2, r3}
 2226 016c 04F5867C 		add	ip, r4, #268
 2227 0170 4FAD     		add	r5, sp, #316
 2228 0172 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2229 0176 9CE80F00 		ldm	ip, {r0, r1, r2, r3}
 2230 017a 04F58E77 		add	r7, r4, #284
 2231 017e 53AD     		add	r5, sp, #332
 2232 0180 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2233 0184 97E80F00 		ldm	r7, {r0, r1, r2, r3}
 2234 0188 04F59676 		add	r6, r4, #300
 2235 018c 57AD     		add	r5, sp, #348
 2236 018e 8DED432A 		vstr.32	s4, [sp, #268]
 2237 0192 CDED442A 		vstr.32	s5, [sp, #272]
 2238 0196 8DED453A 		vstr.32	s6, [sp, #276]
 2239 019a CDED463A 		vstr.32	s7, [sp, #280]
 2240 019e 8DED474A 		vstr.32	s8, [sp, #284]
 2241 01a2 CDED484A 		vstr.32	s9, [sp, #288]
 2242 01a6 8DED495A 		vstr.32	s10, [sp, #292]
 2243 01aa CDED4A5A 		vstr.32	s11, [sp, #296]
 2244 01ae 8DED4B6A 		vstr.32	s12, [sp, #300]
 2245 01b2 CDED4C6A 		vstr.32	s13, [sp, #304]
 2246 01b6 8DED4D7A 		vstr.32	s14, [sp, #308]
 2247 01ba CDED4E7A 		vstr.32	s15, [sp, #312]
 2248 01be 85E80F00 		stm	r5, {r0, r1, r2, r3}
 2249 01c2 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 2250 01c6 04F59E75 		add	r5, r4, #316
 2251 01ca 0DF5B67B 		add	fp, sp, #364
 2252 01ce 8BE80F00 		stm	fp, {r0, r1, r2, r3}
 2253 01d2 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 2254 01d6 0DF5BE7B 		add	fp, sp, #380
 2255 01da 8BE80F00 		stm	fp, {r0, r1, r2, r3}
 2256 01de 9AE80700 		ldm	r10, {r0, r1, r2}
 2257 01e2 68AB     		add	r3, sp, #416
 2258 01e4 83E80700 		stm	r3, {r0, r1, r2}
 2259 01e8 99E80700 		ldm	r9, {r0, r1, r2}
 2260 01ec 6BAB     		add	r3, sp, #428
 2261 01ee 83E80700 		stm	r3, {r0, r1, r2}
 2262 01f2 0B96     		str	r6, [sp, #44]
 2263 01f4 98E80700 		ldm	r8, {r0, r1, r2}
 2264 01f8 6EAB     		add	r3, sp, #440
 2265 01fa 83E80700 		stm	r3, {r0, r1, r2}
 2266 01fe 049B     		ldr	r3, [sp, #16]
 2267 0200 94F84C81 		ldrb	r8, [r4, #332]	@ zero_extendqisi2
 2268 0204 6E4C     		ldr	r4, .L239+8
 2269 0206 6494     		str	r4, [sp, #400]
 2270 0208 0FCB     		ldm	r3, {r0, r1, r2, r3}
 2271 020a 74AC     		add	r4, sp, #464
 2272 020c 84E80F00 		stm	r4, {r0, r1, r2, r3}
 2273 0210 059A     		ldr	r2, [sp, #20]
 2274 0212 9DF80890 		ldrb	r9, [sp, #8]	@ zero_extendqisi2
 2275 0216 8DF89C91 		strb	r9, [sp, #412]
 2276 021a 0FCA     		ldm	r2, {r0, r1, r2, r3}
 2277 021c 9DF80C90 		ldrb	r9, [sp, #12]	@ zero_extendqisi2
 2278 0220 8DF89D91 		strb	r9, [sp, #413]
 2279 0224 78AC     		add	r4, sp, #480
 2280 0226 9DF80490 		ldrb	r9, [sp, #4]	@ zero_extendqisi2
ARM GAS  /tmp/cc08Wu1q.s 			page 41


 2281 022a 8DF88C81 		strb	r8, [sp, #396]
 2282 022e 8DED65DA 		vstr.32	s26, [sp, #404]
 2283 0232 CDED66CA 		vstr.32	s25, [sp, #408]
 2284 0236 8DF89E91 		strb	r9, [sp, #414]
 2285 023a 8DED71CA 		vstr.32	s24, [sp, #452]
 2286 023e 84E80F00 		stm	r4, {r0, r1, r2, r3}
 2287 0242 0699     		ldr	r1, [sp, #24]
 2288 0244 CDED72BA 		vstr.32	s23, [sp, #456]
 2289 0248 0FC9     		ldm	r1, {r0, r1, r2, r3}
 2290 024a 7CAC     		add	r4, sp, #496
 2291 024c 84E80F00 		stm	r4, {r0, r1, r2, r3}
 2292 0250 0798     		ldr	r0, [sp, #28]
 2293 0252 8DED73BA 		vstr.32	s22, [sp, #460]
 2294 0256 0FC8     		ldm	r0, {r0, r1, r2, r3}
 2295 0258 80AC     		add	r4, sp, #512
 2296 025a 84E80F00 		stm	r4, {r0, r1, r2, r3}
 2297 025e 089B     		ldr	r3, [sp, #32]
 2298 0260 0FCB     		ldm	r3, {r0, r1, r2, r3}
 2299 0262 84AC     		add	r4, sp, #528
 2300 0264 84E80F00 		stm	r4, {r0, r1, r2, r3}
 2301 0268 099A     		ldr	r2, [sp, #36]
 2302 026a 8DED939A 		vstr.32	s18, [sp, #588]
 2303 026e 0FCA     		ldm	r2, {r0, r1, r2, r3}
 2304 0270 88AC     		add	r4, sp, #544
 2305 0272 84E80F00 		stm	r4, {r0, r1, r2, r3}
 2306 0276 0A99     		ldr	r1, [sp, #40]
 2307 0278 CDED948A 		vstr.32	s17, [sp, #592]
 2308 027c 0FC9     		ldm	r1, {r0, r1, r2, r3}
 2309 027e 8CAC     		add	r4, sp, #560
 2310 0280 84E80F00 		stm	r4, {r0, r1, r2, r3}
 2311 0284 9EE80F00 		ldm	lr, {r0, r1, r2, r3}
 2312 0288 A3AC     		add	r4, sp, #652
 2313 028a 8DED958A 		vstr.32	s16, [sp, #596]
 2314 028e CDED90AA 		vstr.32	s21, [sp, #576]
 2315 0292 8DED91AA 		vstr.32	s20, [sp, #580]
 2316 0296 CDED929A 		vstr.32	s19, [sp, #584]
 2317 029a CDED961A 		vstr.32	s3, [sp, #600]
 2318 029e 8DED972A 		vstr.32	s4, [sp, #604]
 2319 02a2 84E80F00 		stm	r4, {r0, r1, r2, r3}
 2320 02a6 9CE80F00 		ldm	ip, {r0, r1, r2, r3}
 2321 02aa A7AC     		add	r4, sp, #668
 2322 02ac 84E80F00 		stm	r4, {r0, r1, r2, r3}
 2323 02b0 97E80F00 		ldm	r7, {r0, r1, r2, r3}
 2324 02b4 ABAC     		add	r4, sp, #684
 2325 02b6 84E80F00 		stm	r4, {r0, r1, r2, r3}
 2326 02ba 96E80F00 		ldm	r6, {r0, r1, r2, r3}
 2327 02be AFAC     		add	r4, sp, #700
 2328 02c0 CDED982A 		vstr.32	s5, [sp, #608]
 2329 02c4 8DED993A 		vstr.32	s6, [sp, #612]
 2330 02c8 CDED9A3A 		vstr.32	s7, [sp, #616]
 2331 02cc 8DED9B4A 		vstr.32	s8, [sp, #620]
 2332 02d0 CDED9C4A 		vstr.32	s9, [sp, #624]
 2333 02d4 8DED9D5A 		vstr.32	s10, [sp, #628]
 2334 02d8 CDED9E5A 		vstr.32	s11, [sp, #632]
 2335 02dc 8DED9F6A 		vstr.32	s12, [sp, #636]
 2336 02e0 CDEDA06A 		vstr.32	s13, [sp, #640]
 2337 02e4 8DEDA17A 		vstr.32	s14, [sp, #644]
ARM GAS  /tmp/cc08Wu1q.s 			page 42


 2338 02e8 CDEDA27A 		vstr.32	s15, [sp, #648]
 2339 02ec 84E80F00 		stm	r4, {r0, r1, r2, r3}
 2340 02f0 95E80F00 		ldm	r5, {r0, r1, r2, r3}
 2341 02f4 009D     		ldr	r5, [sp]
 2342 02f6 8DF8DC82 		strb	r8, [sp, #732]
 2343 02fa B3AC     		add	r4, sp, #716
 2344 02fc 033D     		subs	r5, r5, #3
 2345 02fe B0EE408A 		vmov.f32	s16, s0
 2346 0302 B0EE609A 		vmov.f32	s18, s1
 2347 0306 F0EE418A 		vmov.f32	s17, s2
 2348 030a 84E80F00 		stm	r4, {r0, r1, r2, r3}
 2349 030e 052D     		cmp	r5, #5
 2350 0310 00F2AE80 		bhi	.L213
 2351 0314 DFE805F0 		tbb	[pc, r5]
 2352              	.L215:
 2353 0318 6D       		.byte	(.L214-.L215)/2
 2354 0319 82       		.byte	(.L216-.L215)/2
 2355 031a 97       		.byte	(.L217-.L215)/2
 2356 031b 58       		.byte	(.L218-.L215)/2
 2357 031c 03       		.byte	(.L220-.L215)/2
 2358 031d 03       		.byte	(.L220-.L215)/2
 2359              		.p2align 1
 2360              	.L220:
 2361 031e 9DED197A 		vldr.32	s14, [sp, #100]
 2362 0322 DFED286A 		vldr.32	s13, .L239+12
 2363 0326 DDED6D7A 		vldr.32	s15, [sp, #436]
 2364 032a 37EE267A 		vadd.f32	s14, s14, s13
 2365 032e 77EEE67A 		vsub.f32	s15, s15, s13
 2366 0332 10A8     		add	r0, sp, #64
 2367 0334 8DED197A 		vstr.32	s14, [sp, #100]
 2368 0338 CDED6D7A 		vstr.32	s15, [sp, #436]
 2369 033c FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2370 0340 64A8     		add	r0, sp, #400
 2371 0342 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2372              	.L221:
 2373 0346 0DAC     		add	r4, sp, #52
 2374 0348 10A8     		add	r0, sp, #64
 2375 034a 2146     		mov	r1, r4
 2376 034c B0EE681A 		vmov.f32	s2, s17
 2377 0350 F0EE490A 		vmov.f32	s1, s18
 2378 0354 B0EE480A 		vmov.f32	s0, s16
 2379 0358 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2380 035c 009B     		ldr	r3, [sp]
 2381 035e A568     		ldr	r5, [r4, #8]	@ float
 2382 0360 002B     		cmp	r3, #0
 2383 0362 40F0B080 		bne	.L229
 2384              	.L223:
 2385 0366 DFED177A 		vldr.32	s15, .L239+12
 2386 036a 38EE678A 		vsub.f32	s16, s16, s15
 2387              	.L227:
 2388 036e F0EE490A 		vmov.f32	s1, s18
 2389 0372 B0EE480A 		vmov.f32	s0, s16
 2390 0376 B0EE681A 		vmov.f32	s2, s17
 2391 037a 64A8     		add	r0, sp, #400
 2392 037c 2146     		mov	r1, r4
 2393 037e FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2394 0382 2846     		mov	r0, r5	@ float
ARM GAS  /tmp/cc08Wu1q.s 			page 43


 2395 0384 FFF7FEFF 		bl	__aeabi_f2d
 2396 0388 0646     		mov	r6, r0
 2397 038a A068     		ldr	r0, [r4, #8]	@ float
 2398 038c 0F46     		mov	r7, r1
 2399 038e FFF7FEFF 		bl	__aeabi_f2d
 2400 0392 0246     		mov	r2, r0
 2401 0394 0B46     		mov	r3, r1
 2402 0396 3046     		mov	r0, r6
 2403 0398 3946     		mov	r1, r7
 2404 039a FFF7FEFF 		bl	__aeabi_dsub
 2405 039e 06A3     		adr	r3, .L239
 2406 03a0 D3E90023 		ldrd	r2, [r3]
 2407 03a4 FFF7FEFF 		bl	__aeabi_ddiv
 2408 03a8 41EC100B 		vmov	d0, r0, r1
 2409 03ac 0DF5397D 		add	sp, sp, #740
 2410              		@ sp needed
 2411 03b0 BDEC0C8B 		vldm	sp!, {d8-d13}
 2412 03b4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2413              	.L240:
 2414              		.align	3
 2415              	.L239:
 2416 03b8 000000A0 		.word	2684354560
 2417 03bc 9999D93F 		.word	1071225241
 2418 03c0 08000000 		.word	.LANCHOR1+8
 2419 03c4 CDCC4C3E 		.word	1045220557
 2420              	.L218:
 2421 03c8 9DED167A 		vldr.32	s14, [sp, #88]
 2422 03cc 5FED036A 		vldr.32	s13, .L239+12
 2423 03d0 DDED6A7A 		vldr.32	s15, [sp, #424]
 2424 03d4 37EE267A 		vadd.f32	s14, s14, s13
 2425 03d8 77EEE67A 		vsub.f32	s15, s15, s13
 2426 03dc 10A8     		add	r0, sp, #64
 2427 03de 8DED167A 		vstr.32	s14, [sp, #88]
 2428 03e2 CDED6A7A 		vstr.32	s15, [sp, #424]
 2429 03e6 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2430 03ea 64A8     		add	r0, sp, #400
 2431 03ec FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2432 03f0 A9E7     		b	.L221
 2433              	.L214:
 2434 03f2 9DED187A 		vldr.32	s14, [sp, #96]
 2435 03f6 5FED0D6A 		vldr.32	s13, .L239+12
 2436 03fa DDED6C7A 		vldr.32	s15, [sp, #432]
 2437 03fe 37EE267A 		vadd.f32	s14, s14, s13
 2438 0402 77EEE67A 		vsub.f32	s15, s15, s13
 2439 0406 10A8     		add	r0, sp, #64
 2440 0408 8DED187A 		vstr.32	s14, [sp, #96]
 2441 040c CDED6C7A 		vstr.32	s15, [sp, #432]
 2442 0410 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2443 0414 64A8     		add	r0, sp, #400
 2444 0416 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2445 041a 94E7     		b	.L221
 2446              	.L216:
 2447 041c 9DED1A7A 		vldr.32	s14, [sp, #104]
 2448 0420 5FED186A 		vldr.32	s13, .L239+12
 2449 0424 DDED6E7A 		vldr.32	s15, [sp, #440]
 2450 0428 37EE267A 		vadd.f32	s14, s14, s13
 2451 042c 77EEE67A 		vsub.f32	s15, s15, s13
ARM GAS  /tmp/cc08Wu1q.s 			page 44


 2452 0430 10A8     		add	r0, sp, #64
 2453 0432 8DED1A7A 		vstr.32	s14, [sp, #104]
 2454 0436 CDED6E7A 		vstr.32	s15, [sp, #440]
 2455 043a FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2456 043e 64A8     		add	r0, sp, #400
 2457 0440 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2458 0444 7FE7     		b	.L221
 2459              	.L217:
 2460 0446 9DED1B7A 		vldr.32	s14, [sp, #108]
 2461 044a 5FED226A 		vldr.32	s13, .L239+12
 2462 044e DDED6F7A 		vldr.32	s15, [sp, #444]
 2463 0452 37EE267A 		vadd.f32	s14, s14, s13
 2464 0456 77EEE67A 		vsub.f32	s15, s15, s13
 2465 045a 10A8     		add	r0, sp, #64
 2466 045c 8DED1B7A 		vstr.32	s14, [sp, #108]
 2467 0460 CDED6F7A 		vstr.32	s15, [sp, #444]
 2468 0464 FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2469 0468 64A8     		add	r0, sp, #400
 2470 046a FFF7FEFF 		bl	_ZN21HangprinterKinematics6RecalcEv
 2471 046e 6AE7     		b	.L221
 2472              	.L213:
 2473 0470 009B     		ldr	r3, [sp]
 2474 0472 53B9     		cbnz	r3, .L222
 2475 0474 1FED2D0A 		vldr.32	s0, .L239+12
 2476 0478 0DAC     		add	r4, sp, #52
 2477 047a 10A8     		add	r0, sp, #64
 2478 047c 38EE000A 		vadd.f32	s0, s16, s0
 2479 0480 2146     		mov	r1, r4
 2480 0482 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2481 0486 A568     		ldr	r5, [r4, #8]	@ float
 2482 0488 6DE7     		b	.L223
 2483              	.L222:
 2484 048a 009B     		ldr	r3, [sp]
 2485 048c 012B     		cmp	r3, #1
 2486 048e 26D1     		bne	.L224
 2487 0490 5FED340A 		vldr.32	s1, .L239+12
 2488 0494 0DAC     		add	r4, sp, #52
 2489 0496 10A8     		add	r0, sp, #64
 2490 0498 79EE200A 		vadd.f32	s1, s18, s1
 2491 049c 2146     		mov	r1, r4
 2492 049e FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2493 04a2 A568     		ldr	r5, [r4, #8]	@ float
 2494              	.L225:
 2495 04a4 5FED397A 		vldr.32	s15, .L239+12
 2496 04a8 39EE679A 		vsub.f32	s18, s18, s15
 2497 04ac 5FE7     		b	.L227
 2498              	.L238:
 2499 04ae 0DAC     		add	r4, sp, #52
 2500 04b0 10A8     		add	r0, sp, #64
 2501 04b2 2146     		mov	r1, r4
 2502 04b4 B0EE681A 		vmov.f32	s2, s17
 2503 04b8 F0EE490A 		vmov.f32	s1, s18
 2504 04bc B0EE480A 		vmov.f32	s0, s16
 2505 04c0 FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2506 04c4 A568     		ldr	r5, [r4, #8]	@ float
 2507              	.L229:
 2508 04c6 009B     		ldr	r3, [sp]
ARM GAS  /tmp/cc08Wu1q.s 			page 45


 2509 04c8 012B     		cmp	r3, #1
 2510 04ca EBD0     		beq	.L225
 2511 04cc 009B     		ldr	r3, [sp]
 2512 04ce 022B     		cmp	r3, #2
 2513 04d0 7FF44DAF 		bne	.L227
 2514              	.L226:
 2515 04d4 5FED457A 		vldr.32	s15, .L239+12
 2516 04d8 78EEE78A 		vsub.f32	s17, s17, s15
 2517 04dc 47E7     		b	.L227
 2518              	.L224:
 2519 04de 009B     		ldr	r3, [sp]
 2520 04e0 022B     		cmp	r3, #2
 2521 04e2 E4D1     		bne	.L238
 2522 04e4 1FED491A 		vldr.32	s2, .L239+12
 2523 04e8 0DAC     		add	r4, sp, #52
 2524 04ea 10A8     		add	r0, sp, #64
 2525 04ec 38EE811A 		vadd.f32	s2, s17, s2
 2526 04f0 2146     		mov	r1, r4
 2527 04f2 F0EE490A 		vmov.f32	s1, s18
 2528 04f6 B0EE480A 		vmov.f32	s0, s16
 2529 04fa FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 2530 04fe A568     		ldr	r5, [r4, #8]	@ float
 2531 0500 E8E7     		b	.L226
 2532              		.size	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff, .-_ZNK21HangprinterKinematics17ComputeD
 2533              		.global	__aeabi_d2f
 2534 0502 00BF     		.section	.text._ZN21HangprinterKinematics6AdjustEjPKd,"ax",%progbits
 2535              		.align	1
 2536              		.p2align 2,,3
 2537              		.global	_ZN21HangprinterKinematics6AdjustEjPKd
 2538              		.syntax unified
 2539              		.thumb
 2540              		.thumb_func
 2541              		.fpu fpv4-sp-d16
 2542              		.type	_ZN21HangprinterKinematics6AdjustEjPKd, %function
 2543              	_ZN21HangprinterKinematics6AdjustEjPKd:
 2544              		@ args = 0, pretend = 0, frame = 0
 2545              		@ frame_needed = 0, uses_anonymous_args = 0
 2546 0000 0329     		cmp	r1, #3
 2547 0002 70B5     		push	{r4, r5, r6, lr}
 2548 0004 0446     		mov	r4, r0
 2549 0006 53D9     		bls	.L243
 2550 0008 0D46     		mov	r5, r1
 2551 000a D2E90601 		ldrd	r0, [r2, #24]
 2552 000e 1646     		mov	r6, r2
 2553 0010 FFF7FEFF 		bl	__aeabi_d2f
 2554 0014 D4ED087A 		vldr.32	s15, [r4, #32]
 2555 0018 07EE100A 		vmov	s14, r0
 2556 001c 77EE877A 		vadd.f32	s15, s15, s14
 2557 0020 042D     		cmp	r5, #4
 2558 0022 C4ED087A 		vstr.32	s15, [r4, #32]
 2559 0026 43D0     		beq	.L243
 2560 0028 D6E90801 		ldrd	r0, [r6, #32]
 2561 002c FFF7FEFF 		bl	__aeabi_d2f
 2562 0030 D4ED0A7A 		vldr.32	s15, [r4, #40]
 2563 0034 07EE100A 		vmov	s14, r0
 2564 0038 77EE877A 		vadd.f32	s15, s15, s14
 2565 003c 052D     		cmp	r5, #5
ARM GAS  /tmp/cc08Wu1q.s 			page 46


 2566 003e C4ED0A7A 		vstr.32	s15, [r4, #40]
 2567 0042 35D0     		beq	.L243
 2568 0044 D6E90A01 		ldrd	r0, [r6, #40]
 2569 0048 FFF7FEFF 		bl	__aeabi_d2f
 2570 004c D4ED0B7A 		vldr.32	s15, [r4, #44]
 2571 0050 07EE100A 		vmov	s14, r0
 2572 0054 77EE877A 		vadd.f32	s15, s15, s14
 2573 0058 062D     		cmp	r5, #6
 2574 005a C4ED0B7A 		vstr.32	s15, [r4, #44]
 2575 005e 27D0     		beq	.L243
 2576 0060 D6E90C01 		ldrd	r0, [r6, #48]
 2577 0064 FFF7FEFF 		bl	__aeabi_d2f
 2578 0068 D4ED067A 		vldr.32	s15, [r4, #24]
 2579 006c 07EE100A 		vmov	s14, r0
 2580 0070 77EE877A 		vadd.f32	s15, s15, s14
 2581 0074 072D     		cmp	r5, #7
 2582 0076 C4ED067A 		vstr.32	s15, [r4, #24]
 2583 007a 19D0     		beq	.L243
 2584 007c D6E90E01 		ldrd	r0, [r6, #56]
 2585 0080 FFF7FEFF 		bl	__aeabi_d2f
 2586 0084 D4ED097A 		vldr.32	s15, [r4, #36]
 2587 0088 07EE100A 		vmov	s14, r0
 2588 008c 77EE877A 		vadd.f32	s15, s15, s14
 2589 0090 082D     		cmp	r5, #8
 2590 0092 C4ED097A 		vstr.32	s15, [r4, #36]
 2591 0096 0BD0     		beq	.L243
 2592 0098 D6E91001 		ldrd	r0, [r6, #64]
 2593 009c FFF7FEFF 		bl	__aeabi_d2f
 2594 00a0 D4ED0C7A 		vldr.32	s15, [r4, #48]
 2595 00a4 07EE100A 		vmov	s14, r0
 2596 00a8 77EE877A 		vadd.f32	s15, s15, s14
 2597 00ac C4ED0C7A 		vstr.32	s15, [r4, #48]
 2598              	.L243:
 2599 00b0 2046     		mov	r0, r4
 2600 00b2 BDE87040 		pop	{r4, r5, r6, lr}
 2601 00b6 FFF7FEBF 		b	_ZN21HangprinterKinematics6RecalcEv
 2602              		.size	_ZN21HangprinterKinematics6AdjustEjPKd, .-_ZN21HangprinterKinematics6AdjustEjPKd
 2603 00ba 00BF     		.section	.text._ZNK21HangprinterKinematics15PrintParametersERK9StringRef,"ax",%progbits
 2604              		.align	1
 2605              		.p2align 2,,3
 2606              		.global	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 2607              		.syntax unified
 2608              		.thumb
 2609              		.thumb_func
 2610              		.fpu fpv4-sp-d16
 2611              		.type	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef, %function
 2612              	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef:
 2613              		@ args = 0, pretend = 0, frame = 0
 2614              		@ frame_needed = 0, uses_anonymous_args = 0
 2615 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2616 0002 0446     		mov	r4, r0
 2617 0004 91B0     		sub	sp, sp, #68
 2618 0006 0069     		ldr	r0, [r0, #16]	@ float
 2619 0008 0D46     		mov	r5, r1
 2620 000a FFF7FEFF 		bl	__aeabi_f2d
 2621 000e 0646     		mov	r6, r0
 2622 0010 206B     		ldr	r0, [r4, #48]	@ float
ARM GAS  /tmp/cc08Wu1q.s 			page 47


 2623 0012 0F46     		mov	r7, r1
 2624 0014 FFF7FEFF 		bl	__aeabi_f2d
 2625 0018 CDE90E01 		strd	r0, [sp, #56]
 2626 001c E06A     		ldr	r0, [r4, #44]	@ float
 2627 001e FFF7FEFF 		bl	__aeabi_f2d
 2628 0022 CDE90C01 		strd	r0, [sp, #48]
 2629 0026 A06A     		ldr	r0, [r4, #40]	@ float
 2630 0028 FFF7FEFF 		bl	__aeabi_f2d
 2631 002c CDE90A01 		strd	r0, [sp, #40]
 2632 0030 606A     		ldr	r0, [r4, #36]	@ float
 2633 0032 FFF7FEFF 		bl	__aeabi_f2d
 2634 0036 CDE90801 		strd	r0, [sp, #32]
 2635 003a 206A     		ldr	r0, [r4, #32]	@ float
 2636 003c FFF7FEFF 		bl	__aeabi_f2d
 2637 0040 CDE90601 		strd	r0, [sp, #24]
 2638 0044 E069     		ldr	r0, [r4, #28]	@ float
 2639 0046 FFF7FEFF 		bl	__aeabi_f2d
 2640 004a CDE90401 		strd	r0, [sp, #16]
 2641 004e A069     		ldr	r0, [r4, #24]	@ float
 2642 0050 FFF7FEFF 		bl	__aeabi_f2d
 2643 0054 CDE90201 		strd	r0, [sp, #8]
 2644 0058 6069     		ldr	r0, [r4, #20]	@ float
 2645 005a FFF7FEFF 		bl	__aeabi_f2d
 2646 005e 3246     		mov	r2, r6
 2647 0060 CDE90001 		strd	r0, [sp]
 2648 0064 3B46     		mov	r3, r7
 2649 0066 2846     		mov	r0, r5
 2650 0068 0249     		ldr	r1, .L263
 2651 006a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2652 006e 11B0     		add	sp, sp, #68
 2653              		@ sp needed
 2654 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 2655              	.L264:
 2656 0072 00BF     		.align	2
 2657              	.L263:
 2658 0074 00000000 		.word	.LC15
 2659              		.size	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef, .-_ZNK21HangprinterKinematics15Pr
 2660              		.section	.text._ZN6StringILj100EE6printfEPKcz,"axG",%progbits,_ZN6StringILj100EE6printfEPKcz,comda
 2661              		.align	1
 2662              		.p2align 2,,3
 2663              		.weak	_ZN6StringILj100EE6printfEPKcz
 2664              		.syntax unified
 2665              		.thumb
 2666              		.thumb_func
 2667              		.fpu fpv4-sp-d16
 2668              		.type	_ZN6StringILj100EE6printfEPKcz, %function
 2669              	_ZN6StringILj100EE6printfEPKcz:
 2670              		@ args = 4, pretend = 12, frame = 16
 2671              		@ frame_needed = 0, uses_anonymous_args = 1
 2672 0000 0EB4     		push	{r1, r2, r3}
 2673 0002 00B5     		push	{lr}
 2674 0004 84B0     		sub	sp, sp, #16
 2675 0006 05AA     		add	r2, sp, #20
 2676 0008 0290     		str	r0, [sp, #8]
 2677 000a 52F8041B 		ldr	r1, [r2], #4
 2678 000e 0192     		str	r2, [sp, #4]
 2679 0010 6523     		movs	r3, #101
ARM GAS  /tmp/cc08Wu1q.s 			page 48


 2680 0012 02A8     		add	r0, sp, #8
 2681 0014 0393     		str	r3, [sp, #12]
 2682 0016 FFF7FEFF 		bl	_ZNK9StringRef7vprintfEPKcSt9__va_list
 2683 001a 04B0     		add	sp, sp, #16
 2684              		@ sp needed
 2685 001c 5DF804EB 		ldr	lr, [sp], #4
 2686 0020 03B0     		add	sp, sp, #12
 2687 0022 7047     		bx	lr
 2688              		.size	_ZN6StringILj100EE6printfEPKcz, .-_ZN6StringILj100EE6printfEPKcz
 2689              		.section	.text._ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore,"ax",%progbits
 2690              		.align	1
 2691              		.p2align 2,,3
 2692              		.global	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore
 2693              		.syntax unified
 2694              		.thumb
 2695              		.thumb_func
 2696              		.fpu fpv4-sp-d16
 2697              		.type	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore, %function
 2698              	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore:
 2699              		@ args = 0, pretend = 0, frame = 104
 2700              		@ frame_needed = 0, uses_anonymous_args = 0
 2701 0000 2DE97043 		push	{r4, r5, r6, r8, r9, lr}
 2702 0004 0D46     		mov	r5, r1
 2703 0006 AEB0     		sub	sp, sp, #184
 2704 0008 0446     		mov	r4, r0
 2705 000a 2749     		ldr	r1, .L273
 2706 000c 2846     		mov	r0, r5
 2707 000e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 2708 0012 0028     		cmp	r0, #0
 2709 0014 44D0     		beq	.L268
 2710 0016 2EAE     		add	r6, sp, #184
 2711 0018 0023     		movs	r3, #0
 2712 001a 2069     		ldr	r0, [r4, #16]	@ float
 2713 001c 06F8683D 		strb	r3, [r6, #-104]!
 2714 0020 FFF7FEFF 		bl	__aeabi_f2d
 2715 0024 8046     		mov	r8, r0
 2716 0026 A06B     		ldr	r0, [r4, #56]	@ float
 2717 0028 8946     		mov	r9, r1
 2718 002a FFF7FEFF 		bl	__aeabi_f2d
 2719 002e CDE91201 		strd	r0, [sp, #72]
 2720 0032 606B     		ldr	r0, [r4, #52]	@ float
 2721 0034 FFF7FEFF 		bl	__aeabi_f2d
 2722 0038 CDE91001 		strd	r0, [sp, #64]
 2723 003c 206B     		ldr	r0, [r4, #48]	@ float
 2724 003e FFF7FEFF 		bl	__aeabi_f2d
 2725 0042 CDE90E01 		strd	r0, [sp, #56]
 2726 0046 E06A     		ldr	r0, [r4, #44]	@ float
 2727 0048 FFF7FEFF 		bl	__aeabi_f2d
 2728 004c CDE90C01 		strd	r0, [sp, #48]
 2729 0050 A06A     		ldr	r0, [r4, #40]	@ float
 2730 0052 FFF7FEFF 		bl	__aeabi_f2d
 2731 0056 CDE90A01 		strd	r0, [sp, #40]
 2732 005a 606A     		ldr	r0, [r4, #36]	@ float
 2733 005c FFF7FEFF 		bl	__aeabi_f2d
 2734 0060 CDE90801 		strd	r0, [sp, #32]
 2735 0064 206A     		ldr	r0, [r4, #32]	@ float
 2736 0066 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/cc08Wu1q.s 			page 49


 2737 006a CDE90601 		strd	r0, [sp, #24]
 2738 006e E069     		ldr	r0, [r4, #28]	@ float
 2739 0070 FFF7FEFF 		bl	__aeabi_f2d
 2740 0074 CDE90401 		strd	r0, [sp, #16]
 2741 0078 A069     		ldr	r0, [r4, #24]	@ float
 2742 007a FFF7FEFF 		bl	__aeabi_f2d
 2743 007e CDE90201 		strd	r0, [sp, #8]
 2744 0082 6069     		ldr	r0, [r4, #20]	@ float
 2745 0084 FFF7FEFF 		bl	__aeabi_f2d
 2746 0088 4246     		mov	r2, r8
 2747 008a CDE90001 		strd	r0, [sp]
 2748 008e 4B46     		mov	r3, r9
 2749 0090 0649     		ldr	r1, .L273+4
 2750 0092 3046     		mov	r0, r6
 2751 0094 FFF7FEFF 		bl	_ZN6StringILj100EE6printfEPKcz
 2752 0098 3146     		mov	r1, r6
 2753 009a 2846     		mov	r0, r5
 2754 009c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 2755              	.L268:
 2756 00a0 2EB0     		add	sp, sp, #184
 2757              		@ sp needed
 2758 00a2 BDE87083 		pop	{r4, r5, r6, r8, r9, pc}
 2759              	.L274:
 2760 00a6 00BF     		.align	2
 2761              	.L273:
 2762 00a8 00000000 		.word	.LC16
 2763 00ac 1C000000 		.word	.LC17
 2764              		.size	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK21HangprinterKine
 2765              		.global	__aeabi_dmul
 2766              		.section	.text._ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj,"axG",%progbits,_ZN11FixedMatrixIdLj9
 2767              		.align	1
 2768              		.p2align 2,,3
 2769              		.weak	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 2770              		.syntax unified
 2771              		.thumb
 2772              		.thumb_func
 2773              		.fpu fpv4-sp-d16
 2774              		.type	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, %function
 2775              	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj:
 2776              		@ args = 0, pretend = 0, frame = 64
 2777              		@ frame_needed = 0, uses_anonymous_args = 0
 2778 0000 002A     		cmp	r2, #0
 2779 0002 00F01C82 		beq	.L339
 2780 0006 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2781 000a 2DED068B 		vpush.64	{d8, d9, d10}
 2782 000e 91B0     		sub	sp, sp, #68
 2783 0010 AD4E     		ldr	r6, .L356+8
 2784 0012 0092     		str	r2, [sp]
 2785 0014 0246     		mov	r2, r0
 2786 0016 0F91     		str	r1, [sp, #60]
 2787 0018 52F8083B 		ldr	r3, [r2], #8
 2788 001c 0D92     		str	r2, [sp, #52]
 2789 001e 9F68     		ldr	r7, [r3, #8]
 2790 0020 0023     		movs	r3, #0
 2791 0022 BB46     		mov	fp, r7
 2792 0024 0A93     		str	r3, [sp, #40]
 2793 0026 CDE90B33 		strd	r3, r3, [sp, #44]
ARM GAS  /tmp/cc08Wu1q.s 			page 50


 2794 002a 0493     		str	r3, [sp, #16]
 2795 002c B345     		cmp	fp, r6
 2796 002e 00F15803 		add	r3, r0, #88
 2797 0032 9FEDA3AB 		vldr.64	d10, .L356
 2798 0036 0E93     		str	r3, [sp, #56]
 2799 0038 8246     		mov	r10, r0
 2800 003a 40F08E81 		bne	.L277
 2801              	.L353:
 2802 003e 0D9B     		ldr	r3, [sp, #52]
 2803 0040 0A9A     		ldr	r2, [sp, #40]
 2804 0042 9818     		adds	r0, r3, r2
 2805              	.L278:
 2806 0044 D0E90001 		ldrd	r0, [r0]
 2807 0048 FFF7FEFF 		bl	__aeabi_d2f
 2808 004c 049B     		ldr	r3, [sp, #16]
 2809 004e 0099     		ldr	r1, [sp]
 2810 0050 0133     		adds	r3, r3, #1
 2811 0052 07EE900A 		vmov	s15, r0
 2812 0056 9942     		cmp	r1, r3
 2813 0058 0693     		str	r3, [sp, #24]
 2814 005a B0EEE78A 		vabs.f32	s16, s15
 2815 005e 40F29480 		bls	.L279
 2816 0062 CB1A     		subs	r3, r1, r3
 2817 0064 0193     		str	r3, [sp, #4]
 2818 0066 0A9A     		ldr	r2, [sp, #40]
 2819 0068 0E9B     		ldr	r3, [sp, #56]
 2820 006a 1344     		add	r3, r3, r2
 2821 006c 6FF04F08 		mvn	r8, #79
 2822 0070 0025     		movs	r5, #0
 2823 0072 0293     		str	r3, [sp, #8]
 2824 0074 5C46     		mov	r4, fp
 2825 0076 06E0     		b	.L293
 2826              	.L282:
 2827 0078 019B     		ldr	r3, [sp, #4]
 2828 007a 0135     		adds	r5, r5, #1
 2829 007c AB42     		cmp	r3, r5
 2830 007e A8F15008 		sub	r8, r8, #80
 2831 0082 00F08180 		beq	.L342
 2832              	.L293:
 2833 0086 069B     		ldr	r3, [sp, #24]
 2834 0088 B442     		cmp	r4, r6
 2835 008a 03EB050B 		add	fp, r3, r5
 2836 008e 69D1     		bne	.L280
 2837 0090 029B     		ldr	r3, [sp, #8]
 2838 0092 05EB8500 		add	r0, r5, r5, lsl #2
 2839 0096 03EB0010 		add	r0, r3, r0, lsl #4
 2840              	.L281:
 2841 009a D0E90001 		ldrd	r0, [r0]
 2842 009e FFF7FEFF 		bl	__aeabi_d2f
 2843 00a2 07EE900A 		vmov	s15, r0
 2844 00a6 B0EEE79A 		vabs.f32	s18, s15
 2845 00aa B4EEC89A 		vcmpe.f32	s18, s16
 2846 00ae F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2847 00b2 E1DD     		ble	.L282
 2848 00b4 049B     		ldr	r3, [sp, #16]
 2849 00b6 5B45     		cmp	r3, fp
 2850 00b8 00F07881 		beq	.L328
ARM GAS  /tmp/cc08Wu1q.s 			page 51


 2851 00bc 0B9A     		ldr	r2, [sp, #44]
 2852 00be 092A     		cmp	r2, #9
 2853 00c0 00F27481 		bhi	.L328
 2854 00c4 029A     		ldr	r2, [sp, #8]
 2855 00c6 0595     		str	r5, [sp, #20]
 2856 00c8 05EB8507 		add	r7, r5, r5, lsl #2
 2857 00cc 02EB0717 		add	r7, r2, r7, lsl #4
 2858 00d0 9946     		mov	r9, r3
 2859 00d2 5D46     		mov	r5, fp
 2860 00d4 1AE0     		b	.L292
 2861              	.L344:
 2862 00d6 07EB0800 		add	r0, r7, r8
 2863 00da B442     		cmp	r4, r6
 2864 00dc 90ED008B 		vldr.64	d8, [r0]
 2865 00e0 21D1     		bne	.L286
 2866              	.L345:
 2867 00e2 B442     		cmp	r4, r6
 2868 00e4 BB46     		mov	fp, r7
 2869 00e6 28D1     		bne	.L288
 2870              	.L346:
 2871 00e8 9BED007B 		vldr.64	d7, [fp]
 2872 00ec 07EB0800 		add	r0, r7, r8
 2873 00f0 B442     		cmp	r4, r6
 2874 00f2 80ED007B 		vstr.64	d7, [r0]
 2875 00f6 2DD1     		bne	.L290
 2876              	.L347:
 2877 00f8 3846     		mov	r0, r7
 2878              	.L291:
 2879 00fa 09F10109 		add	r9, r9, #1
 2880 00fe B9F10A0F 		cmp	r9, #10
 2881 0102 80ED008B 		vstr.64	d8, [r0]
 2882 0106 07F10807 		add	r7, r7, #8
 2883 010a 33D0     		beq	.L343
 2884              	.L292:
 2885 010c B442     		cmp	r4, r6
 2886 010e E2D0     		beq	.L344
 2887 0110 4A46     		mov	r2, r9
 2888 0112 0499     		ldr	r1, [sp, #16]
 2889 0114 5046     		mov	r0, r10
 2890 0116 A047     		blx	r4
 2891 0118 DAF80020 		ldr	r2, [r10]
 2892 011c 9468     		ldr	r4, [r2, #8]
 2893 011e B442     		cmp	r4, r6
 2894 0120 90ED008B 		vldr.64	d8, [r0]
 2895 0124 DDD0     		beq	.L345
 2896              	.L286:
 2897 0126 4A46     		mov	r2, r9
 2898 0128 2946     		mov	r1, r5
 2899 012a 5046     		mov	r0, r10
 2900 012c A047     		blx	r4
 2901 012e DAF80020 		ldr	r2, [r10]
 2902 0132 9468     		ldr	r4, [r2, #8]
 2903 0134 B442     		cmp	r4, r6
 2904 0136 8346     		mov	fp, r0
 2905 0138 D6D0     		beq	.L346
 2906              	.L288:
 2907 013a 4A46     		mov	r2, r9
ARM GAS  /tmp/cc08Wu1q.s 			page 52


 2908 013c 0499     		ldr	r1, [sp, #16]
 2909 013e 5046     		mov	r0, r10
 2910 0140 A047     		blx	r4
 2911 0142 DAF80020 		ldr	r2, [r10]
 2912 0146 9BED007B 		vldr.64	d7, [fp]
 2913 014a 9468     		ldr	r4, [r2, #8]
 2914 014c B442     		cmp	r4, r6
 2915 014e 80ED007B 		vstr.64	d7, [r0]
 2916 0152 D1D0     		beq	.L347
 2917              	.L290:
 2918 0154 4A46     		mov	r2, r9
 2919 0156 2946     		mov	r1, r5
 2920 0158 5046     		mov	r0, r10
 2921 015a A047     		blx	r4
 2922 015c DAF80020 		ldr	r2, [r10]
 2923 0160 9468     		ldr	r4, [r2, #8]
 2924 0162 CAE7     		b	.L291
 2925              	.L280:
 2926 0164 049A     		ldr	r2, [sp, #16]
 2927 0166 5946     		mov	r1, fp
 2928 0168 5046     		mov	r0, r10
 2929 016a A047     		blx	r4
 2930 016c DAF80030 		ldr	r3, [r10]
 2931 0170 9C68     		ldr	r4, [r3, #8]
 2932 0172 92E7     		b	.L281
 2933              	.L343:
 2934 0174 059D     		ldr	r5, [sp, #20]
 2935 0176 019B     		ldr	r3, [sp, #4]
 2936 0178 0135     		adds	r5, r5, #1
 2937 017a AB42     		cmp	r3, r5
 2938 017c B0EE498A 		vmov.f32	s16, s18
 2939 0180 A8F15008 		sub	r8, r8, #80
 2940 0184 7FF47FAF 		bne	.L293
 2941              	.L342:
 2942 0188 A346     		mov	fp, r4
 2943              	.L279:
 2944 018a B345     		cmp	fp, r6
 2945 018c 40F01181 		bne	.L294
 2946 0190 0D9B     		ldr	r3, [sp, #52]
 2947 0192 0A9A     		ldr	r2, [sp, #40]
 2948 0194 9818     		adds	r0, r3, r2
 2949              	.L295:
 2950 0196 90ED007B 		vldr.64	d7, [r0]
 2951 019a 0B9B     		ldr	r3, [sp, #44]
 2952 019c 8DED087B 		vstr.64	d7, [sp, #32]
 2953 01a0 002B     		cmp	r3, #0
 2954 01a2 61D0     		beq	.L309
 2955 01a4 069B     		ldr	r3, [sp, #24]
 2956 01a6 0AEBC303 		add	r3, r10, r3, lsl #3
 2957 01aa 0593     		str	r3, [sp, #20]
 2958 01ac 0C9B     		ldr	r3, [sp, #48]
 2959 01ae DB00     		lsls	r3, r3, #3
 2960 01b0 0193     		str	r3, [sp, #4]
 2961 01b2 0023     		movs	r3, #0
 2962 01b4 0793     		str	r3, [sp, #28]
 2963 01b6 5F46     		mov	r7, fp
 2964              	.L310:
ARM GAS  /tmp/cc08Wu1q.s 			page 53


 2965 01b8 B742     		cmp	r7, r6
 2966 01ba 40F0EF80 		bne	.L299
 2967 01be 0598     		ldr	r0, [sp, #20]
 2968              	.L300:
 2969 01c0 DDE90823 		ldrd	r2, [sp, #32]
 2970 01c4 D0E90001 		ldrd	r0, [r0]
 2971 01c8 FFF7FEFF 		bl	__aeabi_ddiv
 2972 01cc B742     		cmp	r7, r6
 2973 01ce CDE90201 		strd	r0, [sp, #8]
 2974 01d2 40F0DB80 		bne	.L301
 2975 01d6 0598     		ldr	r0, [sp, #20]
 2976              	.L302:
 2977 01d8 009B     		ldr	r3, [sp]
 2978 01da 069D     		ldr	r5, [sp, #24]
 2979 01dc 1A46     		mov	r2, r3
 2980 01de AA42     		cmp	r2, r5
 2981 01e0 80ED00AB 		vstr.64	d10, [r0]
 2982 01e4 33D3     		bcc	.L303
 2983 01e6 059B     		ldr	r3, [sp, #20]
 2984 01e8 D146     		mov	r9, r10
 2985 01ea 03F10804 		add	r4, r3, #8
 2986 01ee 1AE0     		b	.L308
 2987              	.L349:
 2988 01f0 019B     		ldr	r3, [sp, #4]
 2989 01f2 1819     		adds	r0, r3, r4
 2990              	.L305:
 2991 01f4 D0E90023 		ldrd	r2, [r0]
 2992 01f8 DDE90201 		ldrd	r0, [sp, #8]
 2993 01fc FFF7FEFF 		bl	__aeabi_dmul
 2994 0200 B742     		cmp	r7, r6
 2995 0202 8246     		mov	r10, r0
 2996 0204 8B46     		mov	fp, r1
 2997 0206 18D1     		bne	.L306
 2998 0208 A046     		mov	r8, r4
 2999              	.L307:
 3000 020a 5B46     		mov	r3, fp
 3001 020c D8E90001 		ldrd	r0, [r8]
 3002 0210 5246     		mov	r2, r10
 3003 0212 FFF7FEFF 		bl	__aeabi_dsub
 3004 0216 009B     		ldr	r3, [sp]
 3005 0218 0135     		adds	r5, r5, #1
 3006 021a AB42     		cmp	r3, r5
 3007 021c 04F10804 		add	r4, r4, #8
 3008 0220 C8E90001 		strd	r0, [r8]
 3009 0224 12D3     		bcc	.L348
 3010              	.L308:
 3011 0226 B742     		cmp	r7, r6
 3012 0228 E2D0     		beq	.L349
 3013 022a 2A46     		mov	r2, r5
 3014 022c 0499     		ldr	r1, [sp, #16]
 3015 022e 4846     		mov	r0, r9
 3016 0230 B847     		blx	r7
 3017 0232 D9F80030 		ldr	r3, [r9]
 3018 0236 9F68     		ldr	r7, [r3, #8]
 3019 0238 DCE7     		b	.L305
 3020              	.L306:
 3021 023a 2A46     		mov	r2, r5
ARM GAS  /tmp/cc08Wu1q.s 			page 54


 3022 023c 0799     		ldr	r1, [sp, #28]
 3023 023e 4846     		mov	r0, r9
 3024 0240 B847     		blx	r7
 3025 0242 D9F80030 		ldr	r3, [r9]
 3026 0246 8046     		mov	r8, r0
 3027 0248 9F68     		ldr	r7, [r3, #8]
 3028 024a DEE7     		b	.L307
 3029              	.L348:
 3030 024c CA46     		mov	r10, r9
 3031              	.L303:
 3032 024e 059A     		ldr	r2, [sp, #20]
 3033 0250 079B     		ldr	r3, [sp, #28]
 3034 0252 5032     		adds	r2, r2, #80
 3035 0254 0592     		str	r2, [sp, #20]
 3036 0256 019A     		ldr	r2, [sp, #4]
 3037 0258 503A     		subs	r2, r2, #80
 3038 025a 0192     		str	r2, [sp, #4]
 3039 025c 049A     		ldr	r2, [sp, #16]
 3040 025e 0133     		adds	r3, r3, #1
 3041 0260 9342     		cmp	r3, r2
 3042 0262 0793     		str	r3, [sp, #28]
 3043 0264 A8D1     		bne	.L310
 3044 0266 BB46     		mov	fp, r7
 3045              	.L309:
 3046 0268 009B     		ldr	r3, [sp]
 3047 026a 069A     		ldr	r2, [sp, #24]
 3048 026c 9342     		cmp	r3, r2
 3049 026e 00F0A980 		beq	.L350
 3050 0272 0C9B     		ldr	r3, [sp, #48]
 3051 0274 0A9A     		ldr	r2, [sp, #40]
 3052 0276 0A33     		adds	r3, r3, #10
 3053 0278 0C93     		str	r3, [sp, #48]
 3054 027a 0E9B     		ldr	r3, [sp, #56]
 3055 027c 1344     		add	r3, r3, r2
 3056 027e 0593     		str	r3, [sp, #20]
 3057 0280 069B     		ldr	r3, [sp, #24]
 3058 0282 0793     		str	r3, [sp, #28]
 3059 0284 6FF04F03 		mvn	r3, #79
 3060 0288 0193     		str	r3, [sp, #4]
 3061 028a 5F46     		mov	r7, fp
 3062              	.L321:
 3063 028c B742     		cmp	r7, r6
 3064 028e 6DD1     		bne	.L311
 3065 0290 0598     		ldr	r0, [sp, #20]
 3066              	.L312:
 3067 0292 DDE90823 		ldrd	r2, [sp, #32]
 3068 0296 D0E90001 		ldrd	r0, [r0]
 3069 029a FFF7FEFF 		bl	__aeabi_ddiv
 3070 029e B742     		cmp	r7, r6
 3071 02a0 CDE90201 		strd	r0, [sp, #8]
 3072 02a4 6AD1     		bne	.L313
 3073 02a6 0598     		ldr	r0, [sp, #20]
 3074              	.L314:
 3075 02a8 009B     		ldr	r3, [sp]
 3076 02aa 069D     		ldr	r5, [sp, #24]
 3077 02ac 1A46     		mov	r2, r3
 3078 02ae AA42     		cmp	r2, r5
ARM GAS  /tmp/cc08Wu1q.s 			page 55


 3079 02b0 80ED00AB 		vstr.64	d10, [r0]
 3080 02b4 39D3     		bcc	.L315
 3081 02b6 059B     		ldr	r3, [sp, #20]
 3082 02b8 D146     		mov	r9, r10
 3083 02ba 03F10804 		add	r4, r3, #8
 3084 02be 20E0     		b	.L320
 3085              	.L357:
 3086              		.align	3
 3087              	.L356:
 3088 02c0 00000000 		.word	0
 3089 02c4 00000000 		.word	0
 3090 02c8 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 3091              	.L352:
 3092 02cc 019B     		ldr	r3, [sp, #4]
 3093 02ce 1819     		adds	r0, r3, r4
 3094              	.L317:
 3095 02d0 D0E90023 		ldrd	r2, [r0]
 3096 02d4 DDE90201 		ldrd	r0, [sp, #8]
 3097 02d8 FFF7FEFF 		bl	__aeabi_dmul
 3098 02dc B742     		cmp	r7, r6
 3099 02de 8246     		mov	r10, r0
 3100 02e0 8B46     		mov	fp, r1
 3101 02e2 18D1     		bne	.L318
 3102 02e4 A046     		mov	r8, r4
 3103              	.L319:
 3104 02e6 5B46     		mov	r3, fp
 3105 02e8 D8E90001 		ldrd	r0, [r8]
 3106 02ec 5246     		mov	r2, r10
 3107 02ee FFF7FEFF 		bl	__aeabi_dsub
 3108 02f2 009B     		ldr	r3, [sp]
 3109 02f4 0135     		adds	r5, r5, #1
 3110 02f6 AB42     		cmp	r3, r5
 3111 02f8 04F10804 		add	r4, r4, #8
 3112 02fc C8E90001 		strd	r0, [r8]
 3113 0300 12D3     		bcc	.L351
 3114              	.L320:
 3115 0302 B742     		cmp	r7, r6
 3116 0304 E2D0     		beq	.L352
 3117 0306 2A46     		mov	r2, r5
 3118 0308 0499     		ldr	r1, [sp, #16]
 3119 030a 4846     		mov	r0, r9
 3120 030c B847     		blx	r7
 3121 030e D9F80030 		ldr	r3, [r9]
 3122 0312 9F68     		ldr	r7, [r3, #8]
 3123 0314 DCE7     		b	.L317
 3124              	.L318:
 3125 0316 2A46     		mov	r2, r5
 3126 0318 0799     		ldr	r1, [sp, #28]
 3127 031a 4846     		mov	r0, r9
 3128 031c B847     		blx	r7
 3129 031e D9F80030 		ldr	r3, [r9]
 3130 0322 8046     		mov	r8, r0
 3131 0324 9F68     		ldr	r7, [r3, #8]
 3132 0326 DEE7     		b	.L319
 3133              	.L351:
 3134 0328 CA46     		mov	r10, r9
 3135              	.L315:
ARM GAS  /tmp/cc08Wu1q.s 			page 56


 3136 032a 059A     		ldr	r2, [sp, #20]
 3137 032c 079B     		ldr	r3, [sp, #28]
 3138 032e 5032     		adds	r2, r2, #80
 3139 0330 0592     		str	r2, [sp, #20]
 3140 0332 019A     		ldr	r2, [sp, #4]
 3141 0334 503A     		subs	r2, r2, #80
 3142 0336 0192     		str	r2, [sp, #4]
 3143 0338 009A     		ldr	r2, [sp]
 3144 033a 0133     		adds	r3, r3, #1
 3145 033c 9A42     		cmp	r2, r3
 3146 033e 0793     		str	r3, [sp, #28]
 3147 0340 A4D1     		bne	.L321
 3148 0342 0B9B     		ldr	r3, [sp, #44]
 3149 0344 0133     		adds	r3, r3, #1
 3150 0346 0B93     		str	r3, [sp, #44]
 3151 0348 0A9B     		ldr	r3, [sp, #40]
 3152 034a BB46     		mov	fp, r7
 3153 034c 5833     		adds	r3, r3, #88
 3154 034e 0A93     		str	r3, [sp, #40]
 3155 0350 B345     		cmp	fp, r6
 3156 0352 069B     		ldr	r3, [sp, #24]
 3157 0354 0493     		str	r3, [sp, #16]
 3158 0356 3FF472AE 		beq	.L353
 3159              	.L277:
 3160 035a 0499     		ldr	r1, [sp, #16]
 3161 035c 5046     		mov	r0, r10
 3162 035e 0A46     		mov	r2, r1
 3163 0360 D847     		blx	fp
 3164 0362 DAF80030 		ldr	r3, [r10]
 3165 0366 D3F808B0 		ldr	fp, [r3, #8]
 3166 036a 6BE6     		b	.L278
 3167              	.L311:
 3168 036c 049A     		ldr	r2, [sp, #16]
 3169 036e 0799     		ldr	r1, [sp, #28]
 3170 0370 5046     		mov	r0, r10
 3171 0372 B847     		blx	r7
 3172 0374 DAF80030 		ldr	r3, [r10]
 3173 0378 9F68     		ldr	r7, [r3, #8]
 3174 037a 8AE7     		b	.L312
 3175              	.L313:
 3176 037c 049A     		ldr	r2, [sp, #16]
 3177 037e 0799     		ldr	r1, [sp, #28]
 3178 0380 5046     		mov	r0, r10
 3179 0382 B847     		blx	r7
 3180 0384 DAF80030 		ldr	r3, [r10]
 3181 0388 9F68     		ldr	r7, [r3, #8]
 3182 038a 8DE7     		b	.L314
 3183              	.L301:
 3184 038c 049A     		ldr	r2, [sp, #16]
 3185 038e 0799     		ldr	r1, [sp, #28]
 3186 0390 5046     		mov	r0, r10
 3187 0392 B847     		blx	r7
 3188 0394 DAF80030 		ldr	r3, [r10]
 3189 0398 9F68     		ldr	r7, [r3, #8]
 3190 039a 1DE7     		b	.L302
 3191              	.L299:
 3192 039c 049A     		ldr	r2, [sp, #16]
ARM GAS  /tmp/cc08Wu1q.s 			page 57


 3193 039e 0799     		ldr	r1, [sp, #28]
 3194 03a0 5046     		mov	r0, r10
 3195 03a2 B847     		blx	r7
 3196 03a4 DAF80030 		ldr	r3, [r10]
 3197 03a8 9F68     		ldr	r7, [r3, #8]
 3198 03aa 09E7     		b	.L300
 3199              	.L328:
 3200 03ac B0EE498A 		vmov.f32	s16, s18
 3201 03b0 62E6     		b	.L282
 3202              	.L294:
 3203 03b2 0499     		ldr	r1, [sp, #16]
 3204 03b4 5046     		mov	r0, r10
 3205 03b6 0A46     		mov	r2, r1
 3206 03b8 D847     		blx	fp
 3207 03ba DAF80030 		ldr	r3, [r10]
 3208 03be D3F808B0 		ldr	fp, [r3, #8]
 3209 03c2 E8E6     		b	.L295
 3210              	.L350:
 3211 03c4 049C     		ldr	r4, [sp, #16]
 3212 03c6 0D9D     		ldr	r5, [sp, #52]
 3213 03c8 DDF83C90 		ldr	r9, [sp, #60]
 3214 03cc 5F46     		mov	r7, fp
 3215 03ce 0234     		adds	r4, r4, #2
 3216 03d0 3B46     		mov	r3, r7
 3217 03d2 0AEBC404 		add	r4, r10, r4, lsl #3
 3218 03d6 4FF00008 		mov	r8, #0
 3219 03da 5746     		mov	r7, r10
 3220 03dc 18E0     		b	.L298
 3221              	.L354:
 3222 03de 2046     		mov	r0, r4
 3223 03e0 B342     		cmp	r3, r6
 3224 03e2 D0E900AB 		ldrd	r10, [r0]
 3225 03e6 1FD1     		bne	.L325
 3226              	.L355:
 3227 03e8 2B46     		mov	r3, r5
 3228              	.L326:
 3229 03ea D3E90023 		ldrd	r2, [r3]
 3230 03ee 5046     		mov	r0, r10
 3231 03f0 5946     		mov	r1, fp
 3232 03f2 FFF7FEFF 		bl	__aeabi_ddiv
 3233 03f6 069B     		ldr	r3, [sp, #24]
 3234 03f8 08F10108 		add	r8, r8, #1
 3235 03fc 4345     		cmp	r3, r8
 3236 03fe 05F15805 		add	r5, r5, #88
 3237 0402 04F15004 		add	r4, r4, #80
 3238 0406 E9E80201 		strd	r0, [r9], #8
 3239 040a 13D0     		beq	.L275
 3240 040c 3B68     		ldr	r3, [r7]
 3241 040e 9B68     		ldr	r3, [r3, #8]
 3242              	.L298:
 3243 0410 B342     		cmp	r3, r6
 3244 0412 E4D0     		beq	.L354
 3245 0414 069A     		ldr	r2, [sp, #24]
 3246 0416 4146     		mov	r1, r8
 3247 0418 3846     		mov	r0, r7
 3248 041a 9847     		blx	r3
 3249 041c 3B68     		ldr	r3, [r7]
ARM GAS  /tmp/cc08Wu1q.s 			page 58


 3250 041e 9B68     		ldr	r3, [r3, #8]
 3251 0420 B342     		cmp	r3, r6
 3252 0422 D0E900AB 		ldrd	r10, [r0]
 3253 0426 DFD0     		beq	.L355
 3254              	.L325:
 3255 0428 4246     		mov	r2, r8
 3256 042a 4146     		mov	r1, r8
 3257 042c 3846     		mov	r0, r7
 3258 042e 9847     		blx	r3
 3259 0430 0346     		mov	r3, r0
 3260 0432 DAE7     		b	.L326
 3261              	.L275:
 3262 0434 11B0     		add	sp, sp, #68
 3263              		@ sp needed
 3264 0436 BDEC068B 		vldm	sp!, {d8-d10}
 3265 043a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3266              	.L339:
 3267 043e 7047     		bx	lr
 3268              		.size	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj, .-_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEP
 3269              		.global	__aeabi_dadd
 3270              		.global	__aeabi_ui2d
 3271              		.section	.text._ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,
 3272              		.align	1
 3273              		.p2align 2,,3
 3274              		.global	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 3275              		.syntax unified
 3276              		.thumb
 3277              		.thumb_func
 3278              		.fpu fpv4-sp-d16
 3279              		.type	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %functio
 3280              	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
 3281              		@ args = 0, pretend = 0, frame = 4544
 3282              		@ frame_needed = 0, uses_anonymous_args = 0
 3283 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3284 0004 2DED068B 		vpush.64	{d8, d9, d10}
 3285 0008 ADF58E5D 		sub	sp, sp, #4544
 3286 000c 85B0     		sub	sp, sp, #20
 3287 000e 8346     		mov	fp, r0
 3288 0010 1046     		mov	r0, r2
 3289 0012 0C46     		mov	r4, r1
 3290 0014 1192     		str	r2, [sp, #68]
 3291 0016 1A91     		str	r1, [sp, #104]
 3292 0018 2093     		str	r3, [sp, #128]
 3293 001a FFF7FEFF 		bl	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 3294 001e 092C     		cmp	r4, #9
 3295 0020 0690     		str	r0, [sp, #24]
 3296 0022 0ED9     		bls	.L446
 3297              	.L359:
 3298 0024 1A9A     		ldr	r2, [sp, #104]
 3299 0026 2098     		ldr	r0, [sp, #128]
 3300 0028 9349     		ldr	r1, .L456+8
 3301 002a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3302 002e 0123     		movs	r3, #1
 3303 0030 1D93     		str	r3, [sp, #116]
 3304              	.L443:
 3305 0032 1D98     		ldr	r0, [sp, #116]
 3306 0034 0DF58E5D 		add	sp, sp, #4544
ARM GAS  /tmp/cc08Wu1q.s 			page 59


 3307 0038 05B0     		add	sp, sp, #20
 3308              		@ sp needed
 3309 003a BDEC068B 		vldm	sp!, {d8-d10}
 3310 003e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3311              	.L446:
 3312 0042 4FF41273 		mov	r3, #584
 3313 0046 E340     		lsrs	r3, r3, r4
 3314 0048 DB43     		mvns	r3, r3
 3315 004a 13F00103 		ands	r3, r3, #1
 3316 004e 1D93     		str	r3, [sp, #116]
 3317 0050 E8D1     		bne	.L359
 3318 0052 8A4B     		ldr	r3, .L456+12
 3319 0054 9B6C     		ldr	r3, [r3, #72]
 3320 0056 D806     		lsls	r0, r3, #27
 3321 0058 00F11F83 		bmi	.L444
 3322 005c 0DF6C803 		addw	r3, sp, #2248
 3323 0060 1693     		str	r3, [sp, #88]
 3324              	.L362:
 3325 0062 9FED837B 		vldr.64	d7, .L456
 3326 0066 069B     		ldr	r3, [sp, #24]
 3327 0068 8DED127B 		vstr.64	d7, [sp, #72]
 3328 006c 002B     		cmp	r3, #0
 3329 006e 00F09D80 		beq	.L368
 3330 0072 119B     		ldr	r3, [sp, #68]
 3331 0074 DFED828A 		vldr.32	s17, .L456+16
 3332 0078 169C     		ldr	r4, [sp, #88]
 3333 007a 03F28318 		addw	r8, r3, #387
 3334 007e 069B     		ldr	r3, [sp, #24]
 3335 0080 0DF1E809 		add	r9, sp, #232
 3336 0084 08EB030A 		add	r10, r8, r3
 3337 0088 0DF5B866 		add	r6, sp, #1472
 3338 008c 0027     		movs	r7, #0
 3339              	.L369:
 3340 008e 9FED787B 		vldr.64	d7, .L456
 3341 0092 18F8013F 		ldrb	r3, [r8, #1]!	@ zero_extendqisi2
 3342 0096 794A     		ldr	r2, .L456+12
 3343 0098 C3F38003 		ubfx	r3, r3, #2, #1
 3344 009c 9068     		ldr	r0, [r2, #8]
 3345 009e 0093     		str	r3, [sp]
 3346 00a0 2246     		mov	r2, r4
 3347 00a2 A9EC027B 		vstmia.64	r9!, {d7}
 3348 00a6 0DF6CC03 		addw	r3, sp, #2252
 3349 00aa 3946     		mov	r1, r7
 3350 00ac FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 3351 00b0 10EE100A 		vmov	r0, s0
 3352 00b4 FFF7FEFF 		bl	__aeabi_f2d
 3353 00b8 94ED018A 		vldr.32	s16, [r4, #4]
 3354 00bc DBED057A 		vldr.32	s15, [fp, #20]
 3355 00c0 DBED066A 		vldr.32	s13, [fp, #24]
 3356 00c4 94ED009A 		vldr.32	s18, [r4]
 3357 00c8 9BED047A 		vldr.32	s14, [fp, #16]
 3358 00cc C4ED028A 		vstr.32	s17, [r4, #8]
 3359 00d0 78EE677A 		vsub.f32	s15, s16, s15
 3360 00d4 39EE477A 		vsub.f32	s14, s18, s14
 3361 00d8 27EEA70A 		vmul.f32	s0, s15, s15
 3362 00dc CDE90401 		strd	r0, [sp, #16]
 3363 00e0 A6EEA60A 		vfma.f32	s0, s13, s13
ARM GAS  /tmp/cc08Wu1q.s 			page 60


 3364 00e4 F0EE689A 		vmov.f32	s19, s17
 3365 00e8 A7EE070A 		vfma.f32	s0, s14, s14
 3366 00ec B5EE400A 		vcmp.f32	s0, #0
 3367 00f0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3368 00f4 B1EEC0AA 		vsqrt.f32	s20, s0
 3369 00f8 00F1E682 		bmi	.L447
 3370              	.L365:
 3371 00fc 0137     		adds	r7, r7, #1
 3372 00fe 1AEE100A 		vmov	r0, s20
 3373 0102 FFF7FEFF 		bl	__aeabi_f2d
 3374 0106 DBED087A 		vldr.32	s15, [fp, #32]
 3375 010a DBED096A 		vldr.32	s13, [fp, #36]
 3376 010e 9BED077A 		vldr.32	s14, [fp, #28]
 3377 0112 78EE677A 		vsub.f32	s15, s16, s15
 3378 0116 76EEE96A 		vsub.f32	s13, s13, s19
 3379 011a 27EEA70A 		vmul.f32	s0, s15, s15
 3380 011e 79EE477A 		vsub.f32	s15, s18, s14
 3381 0122 A6EEA60A 		vfma.f32	s0, s13, s13
 3382 0126 C6E90201 		strd	r0, [r6, #8]
 3383 012a A7EEA70A 		vfma.f32	s0, s15, s15
 3384 012e B5EE400A 		vcmp.f32	s0, #0
 3385 0132 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3386 0136 B1EEC0AA 		vsqrt.f32	s20, s0
 3387 013a 00F1CE82 		bmi	.L448
 3388              	.L366:
 3389 013e 1AEE100A 		vmov	r0, s20
 3390 0142 FFF7FEFF 		bl	__aeabi_f2d
 3391 0146 DBED0B7A 		vldr.32	s15, [fp, #44]
 3392 014a DBED0C6A 		vldr.32	s13, [fp, #48]
 3393 014e 9BED0A7A 		vldr.32	s14, [fp, #40]
 3394 0152 38EE678A 		vsub.f32	s16, s16, s15
 3395 0156 76EEE99A 		vsub.f32	s19, s13, s19
 3396 015a 28EE080A 		vmul.f32	s0, s16, s16
 3397 015e 39EE479A 		vsub.f32	s18, s18, s14
 3398 0162 A9EEA90A 		vfma.f32	s0, s19, s19
 3399 0166 C6E90401 		strd	r0, [r6, #16]
 3400 016a A9EE090A 		vfma.f32	s0, s18, s18
 3401 016e B5EE400A 		vcmp.f32	s0, #0
 3402 0172 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3403 0176 B1EEC08A 		vsqrt.f32	s16, s0
 3404 017a 00F1B782 		bmi	.L449
 3405              	.L367:
 3406 017e 18EE100A 		vmov	r0, s16
 3407 0182 FFF7FEFF 		bl	__aeabi_f2d
 3408 0186 DDE90423 		ldrd	r2, [sp, #16]
 3409 018a E6E90601 		strd	r0, [r6, #24]!
 3410 018e 1046     		mov	r0, r2
 3411 0190 1946     		mov	r1, r3
 3412 0192 FFF7FEFF 		bl	__aeabi_dmul
 3413 0196 0246     		mov	r2, r0
 3414 0198 0B46     		mov	r3, r1
 3415 019a DDE91201 		ldrd	r0, [sp, #72]
 3416 019e FFF7FEFF 		bl	__aeabi_dadd
 3417 01a2 D045     		cmp	r8, r10
 3418 01a4 CDE91201 		strd	r0, [sp, #72]
 3419 01a8 7FF471AF 		bne	.L369
 3420              	.L368:
ARM GAS  /tmp/cc08Wu1q.s 			page 61


 3421 01ac 1A98     		ldr	r0, [sp, #104]
 3422 01ae 069C     		ldr	r4, [sp, #24]
 3423 01b0 119D     		ldr	r5, [sp, #68]
 3424 01b2 CDF834B0 		str	fp, [sp, #52]
 3425 01b6 C300     		lsls	r3, r0, #3
 3426 01b8 BAAE     		add	r6, sp, #744
 3427 01ba 1E44     		add	r6, r6, r3
 3428 01bc 1C96     		str	r6, [sp, #112]
 3429 01be 169E     		ldr	r6, [sp, #88]
 3430 01c0 1E44     		add	r6, r6, r3
 3431 01c2 1596     		str	r6, [sp, #84]
 3432 01c4 0DF50D66 		add	r6, sp, #2256
 3433 01c8 1E44     		add	r6, r6, r3
 3434 01ca 0796     		str	r6, [sp, #28]
 3435 01cc 28AE     		add	r6, sp, #160
 3436 01ce F318     		adds	r3, r6, r3
 3437 01d0 C0EB4071 		rsb	r1, r0, r0, lsl #29
 3438 01d4 04EBC402 		add	r2, r4, r4, lsl #3
 3439 01d8 2193     		str	r3, [sp, #132]
 3440 01da CB00     		lsls	r3, r1, #3
 3441 01dc 05F58275 		add	r5, r5, #260
 3442 01e0 1E93     		str	r3, [sp, #120]
 3443 01e2 D300     		lsls	r3, r2, #3
 3444 01e4 1F93     		str	r3, [sp, #124]
 3445 01e6 05EB8403 		add	r3, r5, r4, lsl #2
 3446 01ea 1093     		str	r3, [sp, #64]
 3447 01ec 0223     		movs	r3, #2
 3448 01ee 1B95     		str	r5, [sp, #108]
 3449 01f0 1893     		str	r3, [sp, #96]
 3450 01f2 8346     		mov	fp, r0
 3451              	.L364:
 3452 01f4 169B     		ldr	r3, [sp, #88]
 3453 01f6 1A46     		mov	r2, r3
 3454 01f8 224B     		ldr	r3, .L456+20
 3455 01fa 1360     		str	r3, [r2]
 3456 01fc 069B     		ldr	r3, [sp, #24]
 3457 01fe 002B     		cmp	r3, #0
 3458 0200 49D0     		beq	.L370
 3459 0202 0024     		movs	r4, #0
 3460 0204 DDF83480 		ldr	r8, [sp, #52]
 3461 0208 A146     		mov	r9, r4
 3462 020a 0DF5B865 		add	r5, sp, #1472
 3463 020e 9A46     		mov	r10, r3
 3464 0210 5C46     		mov	r4, fp
 3465              	.L376:
 3466 0212 002C     		cmp	r4, #0
 3467 0214 38D0     		beq	.L371
 3468 0216 D5E90201 		ldrd	r0, [r5, #8]
 3469 021a FFF7FEFF 		bl	__aeabi_d2f
 3470 021e 09EE100A 		vmov	s18, r0
 3471 0222 D5E90401 		ldrd	r0, [r5, #16]
 3472 0226 FFF7FEFF 		bl	__aeabi_d2f
 3473 022a 08EE900A 		vmov	s17, r0
 3474 022e D5E90601 		ldrd	r0, [r5, #24]
 3475 0232 FFF7FEFF 		bl	__aeabi_d2f
 3476 0236 09EBC907 		add	r7, r9, r9, lsl #3
 3477 023a 0DF50D63 		add	r3, sp, #2256
ARM GAS  /tmp/cc08Wu1q.s 			page 62


 3478 023e 08EE100A 		vmov	s16, r0
 3479 0242 03EBC707 		add	r7, r3, r7, lsl #3
 3480 0246 0021     		movs	r1, #0
 3481              	.L372:
 3482 0248 082C     		cmp	r4, #8
 3483 024a B0EE481A 		vmov.f32	s2, s16
 3484 024e F0EE680A 		vmov.f32	s1, s17
 3485 0252 B0EE490A 		vmov.f32	s0, s18
 3486 0256 4046     		mov	r0, r8
 3487 0258 01F10106 		add	r6, r1, #1
 3488 025c 00F06681 		beq	.L450
 3489              	.L373:
 3490 0260 FFF7FEFF 		bl	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 3491 0264 B442     		cmp	r4, r6
 3492 0266 A7EC020B 		vstmia.64	r7!, {d0}
 3493 026a 0DD0     		beq	.L371
 3494 026c 3146     		mov	r1, r6
 3495 026e EBE7     		b	.L372
 3496              	.L457:
 3497              		.align	3
 3498              	.L456:
 3499 0270 00000000 		.word	0
 3500 0274 00000000 		.word	0
 3501 0278 00000000 		.word	.LC18
 3502 027c 00000000 		.word	reprap
 3503 0280 00000000 		.word	0
 3504 0284 08000000 		.word	_ZTV11FixedMatrixIdLj32ELj9EE+8
 3505              	.L371:
 3506 0288 09F10109 		add	r9, r9, #1
 3507 028c CA45     		cmp	r10, r9
 3508 028e 05F11805 		add	r5, r5, #24
 3509 0292 BED1     		bne	.L376
 3510 0294 A346     		mov	fp, r4
 3511              	.L370:
 3512 0296 AA4B     		ldr	r3, .L458+8
 3513 0298 9B6C     		ldr	r3, [r3, #72]
 3514 029a 13F01003 		ands	r3, r3, #16
 3515 029e 1793     		str	r3, [sp, #92]
 3516 02a0 40F09881 		bne	.L451
 3517 02a4 A74B     		ldr	r3, .L458+12
 3518 02a6 BA93     		str	r3, [sp, #744]
 3519 02a8 BBF1000F 		cmp	fp, #0
 3520 02ac 00F09C80 		beq	.L385
 3521              	.L399:
 3522 02b0 119B     		ldr	r3, [sp, #68]
 3523 02b2 D3F80401 		ldr	r0, [r3, #260]	@ float
 3524 02b6 FFF7FEFF 		bl	__aeabi_f2d
 3525 02ba DDE93A23 		ldrd	r2, [sp, #232]
 3526 02be FFF7FEFF 		bl	__aeabi_dadd
 3527 02c2 1E9A     		ldr	r2, [sp, #120]
 3528 02c4 0E90     		str	r0, [sp, #56]
 3529 02c6 01F10043 		add	r3, r1, #-2147483648
 3530 02ca 0832     		adds	r2, r2, #8
 3531 02cc 0F93     		str	r3, [sp, #60]
 3532 02ce 1492     		str	r2, [sp, #80]
 3533 02d0 1C9B     		ldr	r3, [sp, #112]
 3534 02d2 1F9A     		ldr	r2, [sp, #124]
ARM GAS  /tmp/cc08Wu1q.s 			page 63


 3535 02d4 0993     		str	r3, [sp, #36]
 3536 02d6 169B     		ldr	r3, [sp, #88]
 3537 02d8 CDF864B0 		str	fp, [sp, #100]
 3538 02dc 583A     		subs	r2, r2, #88
 3539 02de 0892     		str	r2, [sp, #32]
 3540 02e0 9946     		mov	r9, r3
 3541              	.L384:
 3542 02e2 99ED027B 		vldr.64	d7, [r9, #8]
 3543 02e6 149B     		ldr	r3, [sp, #80]
 3544 02e8 099A     		ldr	r2, [sp, #36]
 3545 02ea 8DED047B 		vstr.64	d7, [sp, #16]
 3546 02ee 0DF50D64 		add	r4, sp, #2256
 3547 02f2 03EB020B 		add	fp, r3, r2
 3548              	.L381:
 3549 02f6 D4E90023 		ldrd	r2, [r4]
 3550 02fa DDE90401 		ldrd	r0, [sp, #16]
 3551 02fe FFF7FEFF 		bl	__aeabi_dmul
 3552 0302 069B     		ldr	r3, [sp, #24]
 3553 0304 012B     		cmp	r3, #1
 3554 0306 0646     		mov	r6, r0
 3555 0308 0F46     		mov	r7, r1
 3556 030a 04F1080A 		add	r10, r4, #8
 3557 030e 17D9     		bls	.L379
 3558 0310 089B     		ldr	r3, [sp, #32]
 3559 0312 083C     		subs	r4, r4, #8
 3560 0314 03EB0A08 		add	r8, r3, r10
 3561 0318 4D46     		mov	r5, r9
 3562              	.L380:
 3563 031a D4E91423 		ldrd	r2, [r4, #80]
 3564 031e D5E91401 		ldrd	r0, [r5, #80]
 3565 0322 FFF7FEFF 		bl	__aeabi_dmul
 3566 0326 0246     		mov	r2, r0
 3567 0328 0B46     		mov	r3, r1
 3568 032a 3046     		mov	r0, r6
 3569 032c 3946     		mov	r1, r7
 3570 032e FFF7FEFF 		bl	__aeabi_dadd
 3571 0332 4834     		adds	r4, r4, #72
 3572 0334 4445     		cmp	r4, r8
 3573 0336 0646     		mov	r6, r0
 3574 0338 0F46     		mov	r7, r1
 3575 033a 05F14805 		add	r5, r5, #72
 3576 033e ECD1     		bne	.L380
 3577              	.L379:
 3578 0340 079B     		ldr	r3, [sp, #28]
 3579 0342 5345     		cmp	r3, r10
 3580 0344 EBE80267 		strd	r6, [fp], #8
 3581 0348 5446     		mov	r4, r10
 3582 034a D4D1     		bne	.L381
 3583 034c DDE90E23 		ldrd	r2, [sp, #56]
 3584 0350 DDE90401 		ldrd	r0, [sp, #16]
 3585 0354 FFF7FEFF 		bl	__aeabi_dmul
 3586 0358 069B     		ldr	r3, [sp, #24]
 3587 035a 012B     		cmp	r3, #1
 3588 035c 0646     		mov	r6, r0
 3589 035e 0F46     		mov	r7, r1
 3590 0360 2DD9     		bls	.L382
 3591 0362 119B     		ldr	r3, [sp, #68]
ARM GAS  /tmp/cc08Wu1q.s 			page 64


 3592 0364 CDF83090 		str	r9, [sp, #48]
 3593 0368 4C46     		mov	r4, r9
 3594 036a DDF84090 		ldr	r9, [sp, #64]
 3595 036e 03F58475 		add	r5, r3, #264
 3596 0372 0DF1F008 		add	r8, sp, #240
 3597              	.L383:
 3598 0376 F8E80223 		ldrd	r2, [r8], #8
 3599 037a 55F8040B 		ldr	r0, [r5], #4	@ float
 3600 037e CDE90423 		strd	r2, [sp, #16]
 3601 0382 FFF7FEFF 		bl	__aeabi_f2d
 3602 0386 DDE90423 		ldrd	r2, [sp, #16]
 3603 038a FFF7FEFF 		bl	__aeabi_dadd
 3604 038e 01F1004B 		add	fp, r1, #-2147483648
 3605 0392 D4E91423 		ldrd	r2, [r4, #80]
 3606 0396 5946     		mov	r1, fp
 3607 0398 8246     		mov	r10, r0
 3608 039a FFF7FEFF 		bl	__aeabi_dmul
 3609 039e 0246     		mov	r2, r0
 3610 03a0 0B46     		mov	r3, r1
 3611 03a2 3046     		mov	r0, r6
 3612 03a4 3946     		mov	r1, r7
 3613 03a6 FFF7FEFF 		bl	__aeabi_dadd
 3614 03aa A945     		cmp	r9, r5
 3615 03ac 0646     		mov	r6, r0
 3616 03ae 0F46     		mov	r7, r1
 3617 03b0 04F14804 		add	r4, r4, #72
 3618 03b4 DFD1     		bne	.L383
 3619 03b6 CDE90AAB 		strd	r10, [sp, #40]
 3620 03ba DDF83090 		ldr	r9, [sp, #48]
 3621              	.L382:
 3622 03be 099B     		ldr	r3, [sp, #36]
 3623 03c0 C3E90267 		strd	r6, [r3, #8]
 3624 03c4 5033     		adds	r3, r3, #80
 3625 03c6 0993     		str	r3, [sp, #36]
 3626 03c8 159B     		ldr	r3, [sp, #84]
 3627 03ca 09F10809 		add	r9, r9, #8
 3628 03ce 4B45     		cmp	r3, r9
 3629 03d0 87D1     		bne	.L384
 3630 03d2 DDF864B0 		ldr	fp, [sp, #100]
 3631              	.L378:
 3632 03d6 179B     		ldr	r3, [sp, #92]
 3633 03d8 33B1     		cbz	r3, .L385
 3634 03da 0BF10103 		add	r3, fp, #1
 3635 03de 5A46     		mov	r2, fp
 3636 03e0 BAA9     		add	r1, sp, #744
 3637 03e2 5948     		ldr	r0, .L458+16
 3638 03e4 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3639              	.L385:
 3640 03e8 28A9     		add	r1, sp, #160
 3641 03ea 5A46     		mov	r2, fp
 3642 03ec BAA8     		add	r0, sp, #744
 3643 03ee FFF7FEFF 		bl	_ZN11FixedMatrixIdLj9ELj10EE11GaussJordanEPdj
 3644 03f2 534B     		ldr	r3, .L458+8
 3645 03f4 9B6C     		ldr	r3, [r3, #72]
 3646 03f6 D906     		lsls	r1, r3, #27
 3647 03f8 00F10A81 		bmi	.L452
 3648              	.L386:
ARM GAS  /tmp/cc08Wu1q.s 			page 65


 3649 03fc 28AA     		add	r2, sp, #160
 3650 03fe 5946     		mov	r1, fp
 3651 0400 0D98     		ldr	r0, [sp, #52]
 3652 0402 FFF7FEFF 		bl	_ZN21HangprinterKinematics6AdjustEjPKd
 3653 0406 DDE92801 		ldrd	r0, [sp, #160]
 3654 040a FFF7FEFF 		bl	__aeabi_d2f
 3655 040e 2290     		str	r0, [sp, #136]	@ float
 3656 0410 DDE92A01 		ldrd	r0, [sp, #168]
 3657 0414 FFF7FEFF 		bl	__aeabi_d2f
 3658 0418 2390     		str	r0, [sp, #140]	@ float
 3659 041a DDE92C01 		ldrd	r0, [sp, #176]
 3660 041e FFF7FEFF 		bl	__aeabi_d2f
 3661 0422 474B     		ldr	r3, .L458+8
 3662 0424 2490     		str	r0, [sp, #144]	@ float
 3663 0426 0322     		movs	r2, #3
 3664 0428 9868     		ldr	r0, [r3, #8]
 3665 042a 22A9     		add	r1, sp, #136
 3666 042c FFF7FEFF 		bl	_ZN4Move20AdjustMotorPositionsEPKfj
 3667 0430 9FED417B 		vldr.64	d7, .L458
 3668 0434 069B     		ldr	r3, [sp, #24]
 3669 0436 8DED047B 		vstr.64	d7, [sp, #16]
 3670 043a 002B     		cmp	r3, #0
 3671 043c 55D0     		beq	.L391
 3672 043e CDF830B0 		str	fp, [sp, #48]
 3673 0442 DDF86C80 		ldr	r8, [sp, #108]
 3674 0446 DDF840B0 		ldr	fp, [sp, #64]
 3675 044a 0DF5B866 		add	r6, sp, #1472
 3676 044e 0DF1E80A 		add	r10, sp, #232
 3677 0452 0DF5F479 		add	r9, sp, #488
 3678 0456 2EAF     		add	r7, sp, #184
 3679              	.L393:
 3680 0458 06F10805 		add	r5, r6, #8
 3681 045c 28AC     		add	r4, sp, #160
 3682              	.L392:
 3683 045e F4E80223 		ldrd	r2, [r4], #8
 3684 0462 D5E90001 		ldrd	r0, [r5]
 3685 0466 FFF7FEFF 		bl	__aeabi_dadd
 3686 046a A742     		cmp	r7, r4
 3687 046c E5E80201 		strd	r0, [r5], #8
 3688 0470 F5D1     		bne	.L392
 3689 0472 D6E90601 		ldrd	r0, [r6, #24]
 3690 0476 FFF7FEFF 		bl	__aeabi_d2f
 3691 047a 0990     		str	r0, [sp, #36]
 3692 047c D6E90401 		ldrd	r0, [r6, #16]
 3693 0480 FFF7FEFF 		bl	__aeabi_d2f
 3694 0484 0890     		str	r0, [sp, #32]
 3695 0486 D6E90201 		ldrd	r0, [r6, #8]
 3696 048a FFF7FEFF 		bl	__aeabi_d2f
 3697 048e 9DED091A 		vldr.32	s2, [sp, #36]	@ int
 3698 0492 DDED080A 		vldr.32	s1, [sp, #32]	@ int
 3699 0496 00EE100A 		vmov	s0, r0
 3700 049a 25A9     		add	r1, sp, #148
 3701 049c 0D98     		ldr	r0, [sp, #52]
 3702 049e FFF7FEFF 		bl	_ZNK21HangprinterKinematics16InverseTransformEfffPf
 3703 04a2 9DED278A 		vldr.32	s16, [sp, #156]
 3704 04a6 18EE100A 		vmov	r0, s16
 3705 04aa FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/cc08Wu1q.s 			page 66


 3706 04ae F8EC017A 		vldmia.32	r8!, {s15}
 3707 04b2 78EE277A 		vadd.f32	s15, s16, s15
 3708 04b6 EAE80201 		strd	r0, [r10], #8
 3709 04ba 17EE900A 		vmov	r0, s15
 3710 04be FFF7FEFF 		bl	__aeabi_f2d
 3711 04c2 0246     		mov	r2, r0
 3712 04c4 0B46     		mov	r3, r1
 3713 04c6 E9E80223 		strd	r2, [r9], #8
 3714 04ca FFF7FEFF 		bl	__aeabi_dmul
 3715 04ce 0246     		mov	r2, r0
 3716 04d0 0B46     		mov	r3, r1
 3717 04d2 DDE90401 		ldrd	r0, [sp, #16]
 3718 04d6 FFF7FEFF 		bl	__aeabi_dadd
 3719 04da C345     		cmp	fp, r8
 3720 04dc 06F11806 		add	r6, r6, #24
 3721 04e0 CDE90401 		strd	r0, [sp, #16]
 3722 04e4 B8D1     		bne	.L393
 3723 04e6 DDF830B0 		ldr	fp, [sp, #48]
 3724              	.L391:
 3725 04ea 0698     		ldr	r0, [sp, #24]
 3726 04ec FFF7FEFF 		bl	__aeabi_ui2d
 3727 04f0 0246     		mov	r2, r0
 3728 04f2 0B46     		mov	r3, r1
 3729 04f4 0446     		mov	r4, r0
 3730 04f6 0D46     		mov	r5, r1
 3731 04f8 DDE90401 		ldrd	r0, [sp, #16]
 3732 04fc FFF7FEFF 		bl	__aeabi_ddiv
 3733 0500 FFF7FEFF 		bl	__aeabi_d2f
 3734 0504 00EE100A 		vmov	s0, r0
 3735 0508 B5EE400A 		vcmp.f32	s0, #0
 3736 050c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3737 0510 B1EEC08A 		vsqrt.f32	s16, s0
 3738 0514 00F1ED80 		bmi	.L453
 3739              	.L394:
 3740 0518 094B     		ldr	r3, .L458+8
 3741 051a 9B6C     		ldr	r3, [r3, #72]
 3742 051c DA06     		lsls	r2, r3, #27
 3743 051e 6BD4     		bmi	.L454
 3744              	.L395:
 3745 0520 189B     		ldr	r3, [sp, #96]
 3746 0522 012B     		cmp	r3, #1
 3747 0524 12D0     		beq	.L396
 3748 0526 0123     		movs	r3, #1
 3749 0528 1893     		str	r3, [sp, #96]
 3750 052a 63E6     		b	.L364
 3751              	.L450:
 3752 052c 0529     		cmp	r1, #5
 3753 052e 69D9     		bls	.L374
 3754 0530 3146     		mov	r1, r6
 3755 0532 95E6     		b	.L373
 3756              	.L459:
 3757 0534 AFF30080 		.align	3
 3758              	.L458:
 3759 0538 00000000 		.word	0
 3760 053c 00000000 		.word	0
 3761 0540 00000000 		.word	reprap
 3762 0544 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
ARM GAS  /tmp/cc08Wu1q.s 			page 67


 3763 0548 6C000000 		.word	.LC21
 3764              	.L396:
 3765 054c 6C4B     		ldr	r3, .L460
 3766 054e DDF834B0 		ldr	fp, [sp, #52]
 3767 0552 9B6C     		ldr	r3, [r3, #72]
 3768 0554 DB06     		lsls	r3, r3, #27
 3769 0556 0DD5     		bpl	.L397
 3770 0558 169E     		ldr	r6, [sp, #88]
 3771 055a BA96     		str	r6, [sp, #744]
 3772 055c 0022     		movs	r2, #0
 3773 055e DD23     		movs	r3, #221
 3774 0560 BAA9     		add	r1, sp, #744
 3775 0562 5846     		mov	r0, fp
 3776 0564 3270     		strb	r2, [r6]
 3777 0566 BB93     		str	r3, [sp, #748]
 3778 0568 FFF7FEFF 		bl	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 3779 056c 3146     		mov	r1, r6
 3780 056e 6548     		ldr	r0, .L460+4
 3781 0570 FFF7FEFF 		bl	debugPrintf
 3782              	.L397:
 3783 0574 2246     		mov	r2, r4
 3784 0576 2B46     		mov	r3, r5
 3785 0578 DDE91201 		ldrd	r0, [sp, #72]
 3786 057c FFF7FEFF 		bl	__aeabi_ddiv
 3787 0580 FFF7FEFF 		bl	__aeabi_d2f
 3788 0584 00EE100A 		vmov	s0, r0
 3789 0588 B5EE400A 		vcmp.f32	s0, #0
 3790 058c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 3791 0590 F1EEC08A 		vsqrt.f32	s17, s0
 3792 0594 00F1B080 		bmi	.L455
 3793              	.L398:
 3794 0598 18EE100A 		vmov	r0, s16
 3795 059c FFF7FEFF 		bl	__aeabi_f2d
 3796 05a0 CDE90201 		strd	r0, [sp, #8]
 3797 05a4 18EE900A 		vmov	r0, s17
 3798 05a8 FFF7FEFF 		bl	__aeabi_f2d
 3799 05ac 209C     		ldr	r4, [sp, #128]
 3800 05ae 069B     		ldr	r3, [sp, #24]
 3801 05b0 1A9A     		ldr	r2, [sp, #104]
 3802 05b2 CDE90001 		strd	r0, [sp]
 3803 05b6 5449     		ldr	r1, .L460+8
 3804 05b8 2046     		mov	r0, r4
 3805 05ba FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 3806 05be 504A     		ldr	r2, .L460
 3807 05c0 2368     		ldr	r3, [r4]
 3808 05c2 1068     		ldr	r0, [r2]
 3809 05c4 4F4A     		ldr	r2, .L460+4
 3810 05c6 8021     		movs	r1, #128
 3811 05c8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3812 05cc 0123     		movs	r3, #1
 3813 05ce 8BF84C31 		strb	r3, [fp, #332]
 3814 05d2 2EE5     		b	.L443
 3815              	.L451:
 3816 05d4 5B46     		mov	r3, fp
 3817 05d6 069A     		ldr	r2, [sp, #24]
 3818 05d8 1699     		ldr	r1, [sp, #88]
 3819 05da 4C48     		ldr	r0, .L460+12
ARM GAS  /tmp/cc08Wu1q.s 			page 68


 3820 05dc FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3821 05e0 474B     		ldr	r3, .L460
 3822 05e2 4B4A     		ldr	r2, .L460+16
 3823 05e4 9B6C     		ldr	r3, [r3, #72]
 3824 05e6 BA92     		str	r2, [sp, #744]
 3825 05e8 03F01003 		and	r3, r3, #16
 3826 05ec 1793     		str	r3, [sp, #92]
 3827 05ee BBF1000F 		cmp	fp, #0
 3828 05f2 7FF45DAE 		bne	.L399
 3829 05f6 EEE6     		b	.L378
 3830              	.L454:
 3831 05f8 069A     		ldr	r2, [sp, #24]
 3832 05fa 4648     		ldr	r0, .L460+20
 3833 05fc 7AA9     		add	r1, sp, #488
 3834 05fe FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 3835 0602 8DE7     		b	.L395
 3836              	.L374:
 3837 0604 FFF7FEFF 		bl	_ZNK21HangprinterKinematics17ComputeDerivativeEjfff
 3838 0608 3146     		mov	r1, r6
 3839 060a A7EC020B 		vstmia.64	r7!, {d0}
 3840 060e 1BE6     		b	.L372
 3841              	.L452:
 3842 0610 0BF10103 		add	r3, fp, #1
 3843 0614 5A46     		mov	r2, fp
 3844 0616 BAA9     		add	r1, sp, #744
 3845 0618 3F48     		ldr	r0, .L460+24
 3846 061a FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 3847 061e 5A46     		mov	r2, fp
 3848 0620 28A9     		add	r1, sp, #160
 3849 0622 3E48     		ldr	r0, .L460+28
 3850 0624 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 3851 0628 3D48     		ldr	r0, .L460+32
 3852 062a FFF7FEFF 		bl	debugPrintf
 3853 062e 069B     		ldr	r3, [sp, #24]
 3854 0630 7BB3     		cbz	r3, .L387
 3855 0632 CDF810B0 		str	fp, [sp, #16]
 3856 0636 DFF8F0A0 		ldr	r10, .L460+40
 3857 063a DDF86C80 		ldr	r8, [sp, #108]
 3858 063e DDF884B0 		ldr	fp, [sp, #132]
 3859 0642 0DF50D69 		add	r9, sp, #2256
 3860              	.L390:
 3861 0646 58F8040B 		ldr	r0, [r8], #4	@ float
 3862 064a FFF7FEFF 		bl	__aeabi_f2d
 3863 064e 049B     		ldr	r3, [sp, #16]
 3864 0650 0646     		mov	r6, r0
 3865 0652 0F46     		mov	r7, r1
 3866 0654 8BB1     		cbz	r3, .L388
 3867 0656 4D46     		mov	r5, r9
 3868 0658 28AC     		add	r4, sp, #160
 3869              	.L389:
 3870 065a F5E80223 		ldrd	r2, [r5], #8
 3871 065e F4E80201 		ldrd	r0, [r4], #8
 3872 0662 FFF7FEFF 		bl	__aeabi_dmul
 3873 0666 0246     		mov	r2, r0
 3874 0668 0B46     		mov	r3, r1
 3875 066a 3046     		mov	r0, r6
 3876 066c 3946     		mov	r1, r7
ARM GAS  /tmp/cc08Wu1q.s 			page 69


 3877 066e FFF7FEFF 		bl	__aeabi_dadd
 3878 0672 A345     		cmp	fp, r4
 3879 0674 0646     		mov	r6, r0
 3880 0676 0F46     		mov	r7, r1
 3881 0678 EFD1     		bne	.L389
 3882              	.L388:
 3883 067a 3B46     		mov	r3, r7
 3884 067c 3246     		mov	r2, r6
 3885 067e 5046     		mov	r0, r10
 3886 0680 FFF7FEFF 		bl	debugPrintf
 3887 0684 109B     		ldr	r3, [sp, #64]
 3888 0686 4345     		cmp	r3, r8
 3889 0688 09F14809 		add	r9, r9, #72
 3890 068c DBD1     		bne	.L390
 3891 068e DDF810B0 		ldr	fp, [sp, #16]
 3892              	.L387:
 3893 0692 2448     		ldr	r0, .L460+36
 3894 0694 FFF7FEFF 		bl	debugPrintf
 3895 0698 B0E6     		b	.L386
 3896              	.L444:
 3897 069a 0DF6C802 		addw	r2, sp, #2248
 3898 069e 9DF87440 		ldrb	r4, [sp, #116]	@ zero_extendqisi2
 3899 06a2 8DF8C848 		strb	r4, [sp, #2248]
 3900 06a6 DD23     		movs	r3, #221
 3901 06a8 0DF5B861 		add	r1, sp, #1472
 3902 06ac 1446     		mov	r4, r2
 3903 06ae 5846     		mov	r0, fp
 3904 06b0 1692     		str	r2, [sp, #88]
 3905 06b2 CDF8C025 		str	r2, [sp, #1472]
 3906 06b6 CDF8C435 		str	r3, [sp, #1476]
 3907 06ba FFF7FEFF 		bl	_ZNK21HangprinterKinematics15PrintParametersERK9StringRef
 3908 06be 2146     		mov	r1, r4
 3909 06c0 1048     		ldr	r0, .L460+4
 3910 06c2 FFF7FEFF 		bl	debugPrintf
 3911 06c6 CCE4     		b	.L362
 3912              	.L447:
 3913 06c8 FFF7FEFF 		bl	sqrtf
 3914 06cc 94ED009A 		vldr.32	s18, [r4]
 3915 06d0 94ED018A 		vldr.32	s16, [r4, #4]
 3916 06d4 D4ED029A 		vldr.32	s19, [r4, #8]
 3917 06d8 10E5     		b	.L365
 3918              	.L448:
 3919 06da FFF7FEFF 		bl	sqrtf
 3920 06de 94ED009A 		vldr.32	s18, [r4]
 3921 06e2 94ED018A 		vldr.32	s16, [r4, #4]
 3922 06e6 D4ED029A 		vldr.32	s19, [r4, #8]
 3923 06ea 28E5     		b	.L366
 3924              	.L449:
 3925 06ec FFF7FEFF 		bl	sqrtf
 3926 06f0 45E5     		b	.L367
 3927              	.L453:
 3928 06f2 FFF7FEFF 		bl	sqrtf
 3929 06f6 0FE7     		b	.L394
 3930              	.L455:
 3931 06f8 FFF7FEFF 		bl	sqrtf
 3932 06fc 4CE7     		b	.L398
 3933              	.L461:
ARM GAS  /tmp/cc08Wu1q.s 			page 70


 3934 06fe 00BF     		.align	2
 3935              	.L460:
 3936 0700 00000000 		.word	reprap
 3937 0704 54000000 		.word	.LC19
 3938 0708 C8000000 		.word	.LC28
 3939 070c 58000000 		.word	.LC20
 3940 0710 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 3941 0714 B0000000 		.word	.LC27
 3942 0718 7C000000 		.word	.LC22
 3943 071c 8C000000 		.word	.LC23
 3944 0720 98000000 		.word	.LC24
 3945 0724 AC000000 		.word	.LC26
 3946 0728 A4000000 		.word	.LC25
 3947              		.size	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN21H
 3948              		.global	_ZTV21HangprinterKinematics
 3949              		.weak	_ZTV11FixedMatrixIdLj32ELj9EE
 3950              		.section	.rodata._ZTV11FixedMatrixIdLj32ELj9EE,"aG",%progbits,_ZTV11FixedMatrixIdLj32ELj9EE,comdat
 3951              		.align	2
 3952              		.type	_ZTV11FixedMatrixIdLj32ELj9EE, %object
 3953              		.size	_ZTV11FixedMatrixIdLj32ELj9EE, 32
 3954              	_ZTV11FixedMatrixIdLj32ELj9EE:
 3955 0000 00000000 		.word	0
 3956 0004 00000000 		.word	0
 3957 0008 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4rowsEv
 3958 000c 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EE4colsEv
 3959 0010 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EEclEjj
 3960 0014 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj9EEclEjj
 3961 0018 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED1Ev
 3962 001c 00000000 		.word	_ZN11FixedMatrixIdLj32ELj9EED0Ev
 3963              		.weak	_ZTV11FixedMatrixIdLj9ELj10EE
 3964              		.section	.rodata._ZTV11FixedMatrixIdLj9ELj10EE,"aG",%progbits,_ZTV11FixedMatrixIdLj9ELj10EE,comdat
 3965              		.align	2
 3966              		.type	_ZTV11FixedMatrixIdLj9ELj10EE, %object
 3967              		.size	_ZTV11FixedMatrixIdLj9ELj10EE, 32
 3968              	_ZTV11FixedMatrixIdLj9ELj10EE:
 3969 0000 00000000 		.word	0
 3970 0004 00000000 		.word	0
 3971 0008 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 3972 000c 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 3973 0010 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 3974 0014 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 3975 0018 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED1Ev
 3976 001c 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 3977              		.section	.rodata
 3978              		.align	2
 3979              		.set	.LANCHOR0,. + 0
 3980              	.LC0:
 3981 0000 00000000 		.word	0
 3982 0004 0000FAC4 		.word	3304718336
 3983 0008 0000C8C2 		.word	3267887104
 3984              	.LC1:
 3985 000c 0000FA44 		.word	1157234688
 3986 0010 00007A44 		.word	1148846080
 3987 0014 0000C8C2 		.word	3267887104
 3988              	.LC2:
 3989 0018 0000FAC4 		.word	3304718336
 3990 001c 00007A44 		.word	1148846080
ARM GAS  /tmp/cc08Wu1q.s 			page 71


 3991 0020 0000C8C2 		.word	3267887104
 3992              	.LC3:
 3993 0024 0060EA45 		.word	1172987904
 3994 0028 0060EA45 		.word	1172987904
 3995 002c 0060EA45 		.word	1172987904
 3996 0030 00007A45 		.word	1165623296
 3997              	.LC4:
 3998 0034 00005C42 		.word	1113325568
 3999 0038 00005C42 		.word	1113325568
 4000 003c 00005C42 		.word	1113325568
 4001 0040 00005C42 		.word	1113325568
 4002              	.LC5:
 4003 0044 01000000 		.word	1
 4004 0048 01000000 		.word	1
 4005 004c 01000000 		.word	1
 4006 0050 01000000 		.word	1
 4007              	.LC6:
 4008 0054 02000000 		.word	2
 4009 0058 02000000 		.word	2
 4010 005c 02000000 		.word	2
 4011 0060 03000000 		.word	3
 4012              	.LC7:
 4013 0064 0A000000 		.word	10
 4014 0068 0A000000 		.word	10
 4015 006c 0A000000 		.word	10
 4016 0070 0A000000 		.word	10
 4017              	.LC8:
 4018 0074 64000000 		.word	100
 4019 0078 64000000 		.word	100
 4020 007c 64000000 		.word	100
 4021 0080 64000000 		.word	100
 4022              	.LC9:
 4023 0084 C8000000 		.word	200
 4024 0088 C8000000 		.word	200
 4025 008c C8000000 		.word	200
 4026 0090 C8000000 		.word	200
 4027              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 4028              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 4029              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 4030              	_ZL28cpu_irq_prev_interrupt_state:
 4031 0000 00       		.space	1
 4032              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 4033              		.align	2
 4034              		.type	_ZL32cpu_irq_critical_section_counter, %object
 4035              		.size	_ZL32cpu_irq_critical_section_counter, 4
 4036              	_ZL32cpu_irq_critical_section_counter:
 4037 0000 00000000 		.space	4
 4038              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 4039              		.align	2
 4040              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 4041              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 4042              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 4043 0000 00000000 		.space	4
 4044              		.section	.rodata._ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRe
 4045              		.align	2
 4046              	.LC18:
 4047 0000 48616E67 		.ascii	"Hangprinter calibration with %d factors requested b"
ARM GAS  /tmp/cc08Wu1q.s 			page 72


 4047      7072696E 
 4047      74657220 
 4047      63616C69 
 4047      62726174 
 4048 0033 7574206F 		.ascii	"ut only 3, 6, and 9 supported\000"
 4048      6E6C7920 
 4048      332C2036 
 4048      2C20616E 
 4048      64203920 
 4049 0051 000000   		.space	3
 4050              	.LC19:
 4051 0054 25730A00 		.ascii	"%s\012\000"
 4052              	.LC20:
 4053 0058 44657269 		.ascii	"Derivative matrix\000"
 4053      76617469 
 4053      7665206D 
 4053      61747269 
 4053      7800
 4054 006a 0000     		.space	2
 4055              	.LC21:
 4056 006c 4E6F726D 		.ascii	"Normal matrix\000"
 4056      616C206D 
 4056      61747269 
 4056      7800
 4057 007a 0000     		.space	2
 4058              	.LC22:
 4059 007c 536F6C76 		.ascii	"Solved matrix\000"
 4059      6564206D 
 4059      61747269 
 4059      7800
 4060 008a 0000     		.space	2
 4061              	.LC23:
 4062 008c 536F6C75 		.ascii	"Solution\000"
 4062      74696F6E 
 4062      00
 4063 0095 000000   		.space	3
 4064              	.LC24:
 4065 0098 52657369 		.ascii	"Residuals:\000"
 4065      6475616C 
 4065      733A00
 4066 00a3 00       		.space	1
 4067              	.LC25:
 4068 00a4 2025372E 		.ascii	" %7.4f\000"
 4068      346600
 4069 00ab 00       		.space	1
 4070              	.LC26:
 4071 00ac 0A00     		.ascii	"\012\000"
 4072 00ae 0000     		.space	2
 4073              	.LC27:
 4074 00b0 45787065 		.ascii	"Expected probe error\000"
 4074      63746564 
 4074      2070726F 
 4074      62652065 
 4074      72726F72 
 4075 00c5 000000   		.space	3
 4076              	.LC28:
 4077 00c8 43616C69 		.ascii	"Calibrated %d factors using %d points, deviation be"
ARM GAS  /tmp/cc08Wu1q.s 			page 73


 4077      62726174 
 4077      65642025 
 4077      64206661 
 4077      63746F72 
 4078 00fb 666F7265 		.ascii	"fore %.3f after %.3f\000"
 4078      20252E33 
 4078      66206166 
 4078      74657220 
 4078      252E3366 
 4079              		.section	.rodata._ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%
 4080              		.align	2
 4081              	.LC13:
 4082 0000 4B696E65 		.ascii	"Kinematics is Hangprinter\012Anchor positions:\012%"
 4082      6D617469 
 4082      63732069 
 4082      73204861 
 4082      6E677072 
 4083 002d 2E32662C 		.ascii	".2f, %.2f, %.2f\012%.2f, %.2f, %.2f\012%.2f, %.2f, "
 4083      20252E32 
 4083      662C2025 
 4083      2E32660A 
 4083      252E3266 
 4084 005a 252E3266 		.ascii	"%.2f\012%.2f\012Print radius:\012%.1f\012Segments/s"
 4084      0A252E32 
 4084      660A5072 
 4084      696E7420 
 4084      72616469 
 4085 0081 3A0A2564 		.ascii	":\012%d\012Min segment length:\012%.2f\012Spool bui"
 4085      0A4D696E 
 4085      20736567 
 4085      6D656E74 
 4085      206C656E 
 4086 00a8 6C647570 		.ascii	"ldup factor:\012%.4f\012Mounted line lengths:\012%."
 4086      20666163 
 4086      746F723A 
 4086      0A252E34 
 4086      660A4D6F 
 4087 00d2 31662C20 		.ascii	"1f, %.1f, %.1f, %.1f\012Spool radii:\012%.2f, %.2f,"
 4087      252E3166 
 4087      2C20252E 
 4087      31662C20 
 4087      252E3166 
 4088 00ff 20252E32 		.ascii	" %.2f, %.2f\012Mechanical Advantage:\012%d, %d, %d,"
 4088      662C2025 
 4088      2E32660A 
 4088      4D656368 
 4088      616E6963 
 4089 012c 2025640A 		.ascii	" %d\012Action points:\012%d, %d, %d, %d\012Motor ge"
 4089      41637469 
 4089      6F6E2070 
 4089      6F696E74 
 4089      733A0A25 
 4090 0156 61722074 		.ascii	"ar teeth\012%d, %d, %d, %d\012Spool gear teeth\012%"
 4090      65657468 
 4090      0A25642C 
 4090      2025642C 
 4090      2025642C 
ARM GAS  /tmp/cc08Wu1q.s 			page 74


 4091 0180 642C2025 		.ascii	"d, %d, %d, %d\012Full steps per revolution\012%d, %"
 4091      642C2025 
 4091      642C2025 
 4091      640A4675 
 4091      6C6C2073 
 4092 01ad 642C2025 		.ascii	"d, %d, %d\000"
 4092      642C2025 
 4092      6400
 4093              		.section	.rodata._ZNK21HangprinterKinematics15PrintParametersERK9StringRef.str1.4,"aMS",%progbits,
 4094              		.align	2
 4095              	.LC15:
 4096 0000 416E6368 		.ascii	"Anchor coordinates (%.2f,%.2f,%.2f) (%.2f,%.2f,%.2f"
 4096      6F722063 
 4096      6F6F7264 
 4096      696E6174 
 4096      65732028 
 4097 0033 29202825 		.ascii	") (%.2f,%.2f,%.2f)\012\000"
 4097      2E32662C 
 4097      252E3266 
 4097      2C252E32 
 4097      66290A00 
 4098              		.section	.rodata._ZNK21HangprinterKinematics16InverseTransformEfffPf.str1.4,"aMS",%progbits,1
 4099              		.align	2
 4100              	.LC14:
 4101 0000 4D6F746F 		.ascii	"Motor %.2f,%.2f,%.2f to Cartesian %.2f,%.2f,%.2f\012"
 4101      7220252E 
 4101      32662C25 
 4101      2E32662C 
 4101      252E3266 
 4102 0031 00       		.ascii	"\000"
 4103              		.section	.rodata._ZNK21HangprinterKinematics17GetHomingFileNameEmmjRm.str1.4,"aMS",%progbits,1
 4104              		.align	2
 4105              	.LC12:
 4106 0000 686F6D65 		.ascii	"homeall.g\000"
 4106      616C6C2E 
 4106      6700
 4107              		.section	.rodata._ZNK21HangprinterKinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 4108              		.align	2
 4109              	.LC10:
 4110 0000 41424344 		.ascii	"ABCD\000"
 4110      00
 4111              		.section	.rodata._ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore.str1.4,"aMS",
 4112              		.align	2
 4113              	.LC16:
 4114 0000 3B204861 		.ascii	"; Hangprinter parameters\012\000"
 4114      6E677072 
 4114      696E7465 
 4114      72207061 
 4114      72616D65 
 4115 001a 0000     		.space	2
 4116              	.LC17:
 4117 001c 4D363639 		.ascii	"M669 K6 A%.3f:%.3f:%.3f B%.3f:%.3f:%.3f C%.3f:%.3f:"
 4117      204B3620 
 4117      41252E33 
 4117      663A252E 
 4117      33663A25 
 4118 004f 252E3366 		.ascii	"%.3f D%.3f P%.1f\012\000"
ARM GAS  /tmp/cc08Wu1q.s 			page 75


 4118      2044252E 
 4118      33662050 
 4118      252E3166 
 4118      0A00
 4119              		.section	.rodata._ZNK21HangprinterKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 4120              		.align	2
 4121              	.LC11:
 4122 0000 48616E67 		.ascii	"Hangprinter\000"
 4122      7072696E 
 4122      74657200 
 4123              		.section	.rodata._ZTV21HangprinterKinematics,"a",%progbits
 4124              		.align	2
 4125              		.set	.LANCHOR1,. + 0
 4126              		.type	_ZTV21HangprinterKinematics, %object
 4127              		.size	_ZTV21HangprinterKinematics, 128
 4128              	_ZTV21HangprinterKinematics:
 4129 0000 00000000 		.word	0
 4130 0004 00000000 		.word	0
 4131 0008 00000000 		.word	_ZNK21HangprinterKinematics7GetNameEb
 4132 000c 00000000 		.word	_ZN21HangprinterKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 4133 0010 00000000 		.word	_ZNK21HangprinterKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 4134 0014 00000000 		.word	_ZNK21HangprinterKinematics21MotorStepsToCartesianEPKlPKfjjPf
 4135 0018 00000000 		.word	_ZNK21HangprinterKinematics23SupportsAutoCalibrationEv
 4136 001c 00000000 		.word	_ZN21HangprinterKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 4137 0020 00000000 		.word	_ZN21HangprinterKinematics22SetCalibrationDefaultsEv
 4138 0024 00000000 		.word	_ZNK21HangprinterKinematics26WriteCalibrationParametersEP9FileStore
 4139 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 4140 002c 00000000 		.word	_ZNK21HangprinterKinematics11IsReachableEffb
 4141 0030 00000000 		.word	_ZNK21HangprinterKinematics13LimitPositionEPfjmb
 4142 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 4143 0038 00000000 		.word	_ZNK21HangprinterKinematics25GetAssumedInitialPositionEjPf
 4144 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 4145 0040 00000000 		.word	_ZNK21HangprinterKinematics16NumHomingButtonsEj
 4146 0044 00000000 		.word	_ZNK21HangprinterKinematics17HomingButtonNamesEv
 4147 0048 00000000 		.word	_ZNK21HangprinterKinematics16MachineAxisNamesEv
 4148 004c 00000000 		.word	_ZNK21HangprinterKinematics17GetHomingFileNameEmmjRm
 4149 0050 00000000 		.word	_ZNK21HangprinterKinematics24QueryTerminateHomingMoveEj
 4150 0054 00000000 		.word	_ZNK21HangprinterKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 4151 0058 00000000 		.word	_ZNK21HangprinterKinematics13GetHomingModeEv
 4152 005c 00000000 		.word	_ZNK21HangprinterKinematics16AxesAssumedHomedEm
 4153 0060 00000000 		.word	_ZNK21HangprinterKinematics15MustBeHomedAxesEmb
 4154 0064 00000000 		.word	_ZNK21HangprinterKinematics19WriteResumeSettingsEP9FileStore
 4155 0068 00000000 		.word	_ZNK21HangprinterKinematics25LimitSpeedAndAccelerationER3DDAPKf
 4156 006c 00000000 		.word	_ZN21HangprinterKinematics22MotorAngToAxisPositionEfmPKfj
 4157 0070 00000000 		.word	_ZN21HangprinterKinematics23GetFullStepsPerMotorRevEj
 4158 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 4159 0078 00000000 		.word	_ZN21HangprinterKinematicsD1Ev
 4160 007c 00000000 		.word	_ZN21HangprinterKinematicsD0Ev
 4161              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
