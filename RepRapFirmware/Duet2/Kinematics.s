ARM GAS  /tmp/ccQXjmTG.s 			page 1


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
  13              		.file	"Kinematics.cpp"
  14              		.section	.text._ZNK10Kinematics23SupportsAutoCalibrationEv,"axG",%progbits,_ZNK10Kinematics23Suppo
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZNK10Kinematics23SupportsAutoCalibrationEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZNK10Kinematics23SupportsAutoCalibrationEv, %function
  23              	_ZNK10Kinematics23SupportsAutoCalibrationEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 0020     		movs	r0, #0
  28 0002 7047     		bx	lr
  29              		.size	_ZNK10Kinematics23SupportsAutoCalibrationEv, .-_ZNK10Kinematics23SupportsAutoCalibrationEv
  30              		.section	.text._ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,"axG",%prog
  31              		.align	1
  32              		.p2align 2,,3
  33              		.weak	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %function
  39              	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 0020     		movs	r0, #0
  44 0002 7047     		bx	lr
  45              		.size	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN10Kinematics17
  46              		.section	.text._ZN10Kinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN10Kinematics22SetCalib
  47              		.align	1
  48              		.p2align 2,,3
  49              		.weak	_ZN10Kinematics22SetCalibrationDefaultsEv
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu fpv4-sp-d16
  54              		.type	_ZN10Kinematics22SetCalibrationDefaultsEv, %function
  55              	_ZN10Kinematics22SetCalibrationDefaultsEv:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccQXjmTG.s 			page 2


  58              		@ link register save eliminated.
  59 0000 7047     		bx	lr
  60              		.size	_ZN10Kinematics22SetCalibrationDefaultsEv, .-_ZN10Kinematics22SetCalibrationDefaultsEv
  61 0002 00BF     		.section	.text._ZNK10Kinematics26WriteCalibrationParametersEP9FileStore,"axG",%progbits,_ZNK10Kine
  62              		.align	1
  63              		.p2align 2,,3
  64              		.weak	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv4-sp-d16
  69              		.type	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, %function
  70              	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73              		@ link register save eliminated.
  74 0000 0120     		movs	r0, #1
  75 0002 7047     		bx	lr
  76              		.size	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK10Kinematics26WriteCalibrati
  77              		.section	.text._ZNK10Kinematics17GetTiltCorrectionEj,"axG",%progbits,_ZNK10Kinematics17GetTiltCorr
  78              		.align	1
  79              		.p2align 2,,3
  80              		.weak	_ZNK10Kinematics17GetTiltCorrectionEj
  81              		.syntax unified
  82              		.thumb
  83              		.thumb_func
  84              		.fpu fpv4-sp-d16
  85              		.type	_ZNK10Kinematics17GetTiltCorrectionEj, %function
  86              	_ZNK10Kinematics17GetTiltCorrectionEj:
  87              		@ args = 0, pretend = 0, frame = 0
  88              		@ frame_needed = 0, uses_anonymous_args = 0
  89              		@ link register save eliminated.
  90 0000 9FED010A 		vldr.32	s0, .L7
  91 0004 7047     		bx	lr
  92              	.L8:
  93 0006 00BF     		.align	2
  94              	.L7:
  95 0008 00000000 		.word	0
  96              		.size	_ZNK10Kinematics17GetTiltCorrectionEj, .-_ZNK10Kinematics17GetTiltCorrectionEj
  97              		.section	.text._ZNK10Kinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK10Kinematics23AxesT
  98              		.align	1
  99              		.p2align 2,,3
 100              		.weak	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 101              		.syntax unified
 102              		.thumb
 103              		.thumb_func
 104              		.fpu fpv4-sp-d16
 105              		.type	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, %function
 106              	_ZNK10Kinematics23AxesToHomeBeforeProbingEv:
 107              		@ args = 0, pretend = 0, frame = 0
 108              		@ frame_needed = 0, uses_anonymous_args = 0
 109              		@ link register save eliminated.
 110 0000 0320     		movs	r0, #3
 111 0002 7047     		bx	lr
 112              		.size	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, .-_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 113              		.section	.text._ZNK10Kinematics13GetMotionTypeEj,"axG",%progbits,_ZNK10Kinematics13GetMotionTypeEj
 114              		.align	1
ARM GAS  /tmp/ccQXjmTG.s 			page 3


 115              		.p2align 2,,3
 116              		.weak	_ZNK10Kinematics13GetMotionTypeEj
 117              		.syntax unified
 118              		.thumb
 119              		.thumb_func
 120              		.fpu fpv4-sp-d16
 121              		.type	_ZNK10Kinematics13GetMotionTypeEj, %function
 122              	_ZNK10Kinematics13GetMotionTypeEj:
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125              		@ link register save eliminated.
 126 0000 0020     		movs	r0, #0
 127 0002 7047     		bx	lr
 128              		.size	_ZNK10Kinematics13GetMotionTypeEj, .-_ZNK10Kinematics13GetMotionTypeEj
 129              		.section	.text._ZNK10Kinematics16NumHomingButtonsEj,"axG",%progbits,_ZNK10Kinematics16NumHomingBut
 130              		.align	1
 131              		.p2align 2,,3
 132              		.weak	_ZNK10Kinematics16NumHomingButtonsEj
 133              		.syntax unified
 134              		.thumb
 135              		.thumb_func
 136              		.fpu fpv4-sp-d16
 137              		.type	_ZNK10Kinematics16NumHomingButtonsEj, %function
 138              	_ZNK10Kinematics16NumHomingButtonsEj:
 139              		@ args = 0, pretend = 0, frame = 0
 140              		@ frame_needed = 0, uses_anonymous_args = 0
 141              		@ link register save eliminated.
 142 0000 0846     		mov	r0, r1
 143 0002 7047     		bx	lr
 144              		.size	_ZNK10Kinematics16NumHomingButtonsEj, .-_ZNK10Kinematics16NumHomingButtonsEj
 145              		.section	.text._ZNK10Kinematics17HomingButtonNamesEv,"axG",%progbits,_ZNK10Kinematics17HomingButto
 146              		.align	1
 147              		.p2align 2,,3
 148              		.weak	_ZNK10Kinematics17HomingButtonNamesEv
 149              		.syntax unified
 150              		.thumb
 151              		.thumb_func
 152              		.fpu fpv4-sp-d16
 153              		.type	_ZNK10Kinematics17HomingButtonNamesEv, %function
 154              	_ZNK10Kinematics17HomingButtonNamesEv:
 155              		@ args = 0, pretend = 0, frame = 0
 156              		@ frame_needed = 0, uses_anonymous_args = 0
 157              		@ link register save eliminated.
 158 0000 0048     		ldr	r0, .L13
 159 0002 7047     		bx	lr
 160              	.L14:
 161              		.align	2
 162              	.L13:
 163 0004 00000000 		.word	.LC0
 164              		.size	_ZNK10Kinematics17HomingButtonNamesEv, .-_ZNK10Kinematics17HomingButtonNamesEv
 165              		.section	.text._ZNK10Kinematics16MachineAxisNamesEv,"axG",%progbits,_ZNK10Kinematics16MachineAxisN
 166              		.align	1
 167              		.p2align 2,,3
 168              		.weak	_ZNK10Kinematics16MachineAxisNamesEv
 169              		.syntax unified
 170              		.thumb
 171              		.thumb_func
ARM GAS  /tmp/ccQXjmTG.s 			page 4


 172              		.fpu fpv4-sp-d16
 173              		.type	_ZNK10Kinematics16MachineAxisNamesEv, %function
 174              	_ZNK10Kinematics16MachineAxisNamesEv:
 175              		@ args = 0, pretend = 0, frame = 0
 176              		@ frame_needed = 0, uses_anonymous_args = 0
 177              		@ link register save eliminated.
 178 0000 0048     		ldr	r0, .L16
 179 0002 7047     		bx	lr
 180              	.L17:
 181              		.align	2
 182              	.L16:
 183 0004 00000000 		.word	.LC1
 184              		.size	_ZNK10Kinematics16MachineAxisNamesEv, .-_ZNK10Kinematics16MachineAxisNamesEv
 185              		.section	.text._ZNK10Kinematics16AxesAssumedHomedEm,"axG",%progbits,_ZNK10Kinematics16AxesAssumedH
 186              		.align	1
 187              		.p2align 2,,3
 188              		.weak	_ZNK10Kinematics16AxesAssumedHomedEm
 189              		.syntax unified
 190              		.thumb
 191              		.thumb_func
 192              		.fpu fpv4-sp-d16
 193              		.type	_ZNK10Kinematics16AxesAssumedHomedEm, %function
 194              	_ZNK10Kinematics16AxesAssumedHomedEm:
 195              		@ args = 0, pretend = 0, frame = 0
 196              		@ frame_needed = 0, uses_anonymous_args = 0
 197              		@ link register save eliminated.
 198 0000 0846     		mov	r0, r1
 199 0002 7047     		bx	lr
 200              		.size	_ZNK10Kinematics16AxesAssumedHomedEm, .-_ZNK10Kinematics16AxesAssumedHomedEm
 201              		.section	.text._ZNK10Kinematics15MustBeHomedAxesEmb,"axG",%progbits,_ZNK10Kinematics15MustBeHomedA
 202              		.align	1
 203              		.p2align 2,,3
 204              		.weak	_ZNK10Kinematics15MustBeHomedAxesEmb
 205              		.syntax unified
 206              		.thumb
 207              		.thumb_func
 208              		.fpu fpv4-sp-d16
 209              		.type	_ZNK10Kinematics15MustBeHomedAxesEmb, %function
 210              	_ZNK10Kinematics15MustBeHomedAxesEmb:
 211              		@ args = 0, pretend = 0, frame = 0
 212              		@ frame_needed = 0, uses_anonymous_args = 0
 213              		@ link register save eliminated.
 214 0000 002A     		cmp	r2, #0
 215 0002 14BF     		ite	ne
 216 0004 0846     		movne	r0, r1
 217 0006 0020     		moveq	r0, #0
 218 0008 7047     		bx	lr
 219              		.size	_ZNK10Kinematics15MustBeHomedAxesEmb, .-_ZNK10Kinematics15MustBeHomedAxesEmb
 220 000a 00BF     		.section	.text._ZNK10Kinematics19WriteResumeSettingsEP9FileStore,"axG",%progbits,_ZNK10Kinematics1
 221              		.align	1
 222              		.p2align 2,,3
 223              		.weak	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv4-sp-d16
 228              		.type	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore, %function
ARM GAS  /tmp/ccQXjmTG.s 			page 5


 229              	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore:
 230              		@ args = 0, pretend = 0, frame = 0
 231              		@ frame_needed = 0, uses_anonymous_args = 0
 232              		@ link register save eliminated.
 233 0000 0120     		movs	r0, #1
 234 0002 7047     		bx	lr
 235              		.size	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore, .-_ZNK10Kinematics19WriteResumeSettingsEP
 236              		.section	.text._ZNK10Kinematics24IsContinuousRotationAxisEj,"axG",%progbits,_ZNK10Kinematics24IsCo
 237              		.align	1
 238              		.p2align 2,,3
 239              		.weak	_ZNK10Kinematics24IsContinuousRotationAxisEj
 240              		.syntax unified
 241              		.thumb
 242              		.thumb_func
 243              		.fpu fpv4-sp-d16
 244              		.type	_ZNK10Kinematics24IsContinuousRotationAxisEj, %function
 245              	_ZNK10Kinematics24IsContinuousRotationAxisEj:
 246              		@ args = 0, pretend = 0, frame = 0
 247              		@ frame_needed = 0, uses_anonymous_args = 0
 248              		@ link register save eliminated.
 249 0000 0020     		movs	r0, #0
 250 0002 7047     		bx	lr
 251              		.size	_ZNK10Kinematics24IsContinuousRotationAxisEj, .-_ZNK10Kinematics24IsContinuousRotationAxisEj
 252              		.section	.text._ZNK10Kinematics11IsReachableEffb,"ax",%progbits
 253              		.align	1
 254              		.p2align 2,,3
 255              		.global	_ZNK10Kinematics11IsReachableEffb
 256              		.syntax unified
 257              		.thumb
 258              		.thumb_func
 259              		.fpu fpv4-sp-d16
 260              		.type	_ZNK10Kinematics11IsReachableEffb, %function
 261              	_ZNK10Kinematics11IsReachableEffb:
 262              		@ args = 0, pretend = 0, frame = 0
 263              		@ frame_needed = 0, uses_anonymous_args = 0
 264              		@ link register save eliminated.
 265 0000 154B     		ldr	r3, .L38
 266 0002 1B68     		ldr	r3, [r3]	@ unaligned
 267 0004 03F24472 		addw	r2, r3, #1860
 268 0008 D2ED007A 		vldr.32	s15, [r2]
 269 000c B4EEE70A 		vcmpe.f32	s0, s15
 270 0010 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 271 0014 1DDB     		blt	.L37
 272 0016 03F5E962 		add	r2, r3, #1864
 273 001a D2ED007A 		vldr.32	s15, [r2]
 274 001e F4EEE07A 		vcmpe.f32	s15, s1
 275 0022 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 276 0026 14D8     		bhi	.L37
 277 0028 03F5E462 		add	r2, r3, #1824
 278 002c D2ED007A 		vldr.32	s15, [r2]
 279 0030 F4EEC07A 		vcmpe.f32	s15, s0
 280 0034 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 281 0038 0BDB     		blt	.L37
 282 003a 03F22473 		addw	r3, r3, #1828
 283 003e D3ED007A 		vldr.32	s15, [r3]
 284 0042 F4EEE07A 		vcmpe.f32	s15, s1
 285 0046 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  /tmp/ccQXjmTG.s 			page 6


 286 004a ACBF     		ite	ge
 287 004c 0120     		movge	r0, #1
 288 004e 0020     		movlt	r0, #0
 289 0050 7047     		bx	lr
 290              	.L37:
 291 0052 0020     		movs	r0, #0
 292 0054 7047     		bx	lr
 293              	.L39:
 294 0056 00BF     		.align	2
 295              	.L38:
 296 0058 00000000 		.word	reprap
 297              		.size	_ZNK10Kinematics11IsReachableEffb, .-_ZNK10Kinematics11IsReachableEffb
 298              		.section	.text._ZN10Kinematics23GetFullStepsPerMotorRevEj,"ax",%progbits
 299              		.align	1
 300              		.p2align 2,,3
 301              		.global	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 302              		.syntax unified
 303              		.thumb
 304              		.thumb_func
 305              		.fpu fpv4-sp-d16
 306              		.type	_ZN10Kinematics23GetFullStepsPerMotorRevEj, %function
 307              	_ZN10Kinematics23GetFullStepsPerMotorRevEj:
 308              		@ args = 0, pretend = 0, frame = 0
 309              		@ frame_needed = 0, uses_anonymous_args = 0
 310              		@ link register save eliminated.
 311 0000 C820     		movs	r0, #200
 312 0002 7047     		bx	lr
 313              		.size	_ZN10Kinematics23GetFullStepsPerMotorRevEj, .-_ZN10Kinematics23GetFullStepsPerMotorRevEj
 314              		.section	.text._ZNK10Kinematics13LimitPositionEPfjmb,"ax",%progbits
 315              		.align	1
 316              		.p2align 2,,3
 317              		.global	_ZNK10Kinematics13LimitPositionEPfjmb
 318              		.syntax unified
 319              		.thumb
 320              		.thumb_func
 321              		.fpu fpv4-sp-d16
 322              		.type	_ZNK10Kinematics13LimitPositionEPfjmb, %function
 323              	_ZNK10Kinematics13LimitPositionEPfjmb:
 324              		@ args = 4, pretend = 0, frame = 0
 325              		@ frame_needed = 0, uses_anonymous_args = 0
 326              		@ link register save eliminated.
 327 0000 70B4     		push	{r4, r5, r6}
 328 0002 1548     		ldr	r0, .L58
 329 0004 0568     		ldr	r5, [r0]
 330 0006 1AB3     		cbz	r2, .L48
 331 0008 0020     		movs	r0, #0
 332 000a 05F24475 		addw	r5, r5, #1860
 333 000e 0446     		mov	r4, r0
 334              	.L47:
 335 0010 23FA04F6 		lsr	r6, r3, r4
 336 0014 F607     		lsls	r6, r6, #31
 337 0016 12D5     		bpl	.L43
 338 0018 D1ED007A 		vldr.32	s15, [r1]
 339 001c 95ED007A 		vldr.32	s14, [r5]
 340 0020 F4EEC77A 		vcmpe.f32	s15, s14
 341 0024 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 342 0028 06D4     		bmi	.L57
ARM GAS  /tmp/ccQXjmTG.s 			page 7


 343 002a 15ED097A 		vldr.32	s14, [r5, #-36]
 344 002e F4EEC77A 		vcmpe.f32	s15, s14
 345 0032 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 346 0036 02DD     		ble	.L43
 347              	.L57:
 348 0038 81ED007A 		vstr.32	s14, [r1]
 349 003c 0120     		movs	r0, #1
 350              	.L43:
 351 003e 0134     		adds	r4, r4, #1
 352 0040 A242     		cmp	r2, r4
 353 0042 01F10401 		add	r1, r1, #4
 354 0046 05F10405 		add	r5, r5, #4
 355 004a E1D1     		bne	.L47
 356 004c 70BC     		pop	{r4, r5, r6}
 357 004e 7047     		bx	lr
 358              	.L48:
 359 0050 1046     		mov	r0, r2
 360 0052 70BC     		pop	{r4, r5, r6}
 361 0054 7047     		bx	lr
 362              	.L59:
 363 0056 00BF     		.align	2
 364              	.L58:
 365 0058 00000000 		.word	reprap
 366              		.size	_ZNK10Kinematics13LimitPositionEPfjmb, .-_ZNK10Kinematics13LimitPositionEPfjmb
 367              		.section	.text._ZNK10Kinematics25GetAssumedInitialPositionEjPf,"ax",%progbits
 368              		.align	1
 369              		.p2align 2,,3
 370              		.global	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 371              		.syntax unified
 372              		.thumb
 373              		.thumb_func
 374              		.fpu fpv4-sp-d16
 375              		.type	_ZNK10Kinematics25GetAssumedInitialPositionEjPf, %function
 376              	_ZNK10Kinematics25GetAssumedInitialPositionEjPf:
 377              		@ args = 0, pretend = 0, frame = 0
 378              		@ frame_needed = 0, uses_anonymous_args = 0
 379              		@ link register save eliminated.
 380 0000 31B1     		cbz	r1, .L60
 381 0002 0023     		movs	r3, #0
 382 0004 02EB8101 		add	r1, r2, r1, lsl #2
 383              	.L62:
 384 0008 42F8043B 		str	r3, [r2], #4	@ float
 385 000c 8A42     		cmp	r2, r1
 386 000e FBD1     		bne	.L62
 387              	.L60:
 388 0010 7047     		bx	lr
 389              		.size	_ZNK10Kinematics25GetAssumedInitialPositionEjPf, .-_ZNK10Kinematics25GetAssumedInitialPositi
 390 0012 00BF     		.section	.text._ZN10Kinematics22MotorAngToAxisPositionEfmPKfj,"ax",%progbits
 391              		.align	1
 392              		.p2align 2,,3
 393              		.global	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 394              		.syntax unified
 395              		.thumb
 396              		.thumb_func
 397              		.fpu fpv4-sp-d16
 398              		.type	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj, %function
 399              	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj:
ARM GAS  /tmp/ccQXjmTG.s 			page 8


 400              		@ args = 0, pretend = 0, frame = 8
 401              		@ frame_needed = 0, uses_anonymous_args = 0
 402 0000 70B5     		push	{r4, r5, r6, lr}
 403 0002 2DED028B 		vpush.64	{d8}
 404 0006 1348     		ldr	r0, .L69
 405 0008 0068     		ldr	r0, [r0]
 406 000a 1E46     		mov	r6, r3
 407 000c 00EBC303 		add	r3, r0, r3, lsl #3
 408 0010 82B0     		sub	sp, sp, #8
 409 0012 0C46     		mov	r4, r1
 410 0014 1546     		mov	r5, r2
 411 0016 93F8FC12 		ldrb	r1, [r3, #764]	@ zero_extendqisi2
 412 001a 0DF10702 		add	r2, sp, #7
 413 001e B0EE408A 		vmov.f32	s16, s0
 414 0022 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 415 0026 04FB00F0 		mul	r0, r4, r0
 416 002a 07EE900A 		vmov	s15, r0	@ int
 417 002e 05EB8605 		add	r5, r5, r6, lsl #2
 418 0032 F8EE677A 		vcvt.f32.u32	s15, s15
 419 0036 95ED006A 		vldr.32	s12, [r5]
 420 003a DFED076A 		vldr.32	s13, .L69+4
 421 003e 87EE867A 		vdiv.f32	s14, s15, s12
 422 0042 27EE080A 		vmul.f32	s0, s14, s16
 423 0046 80EE260A 		vdiv.f32	s0, s0, s13
 424 004a 02B0     		add	sp, sp, #8
 425              		@ sp needed
 426 004c BDEC028B 		vldm	sp!, {d8}
 427 0050 70BD     		pop	{r4, r5, r6, pc}
 428              	.L70:
 429 0052 00BF     		.align	2
 430              	.L69:
 431 0054 00000000 		.word	reprap
 432 0058 0000B443 		.word	1135869952
 433              		.size	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj, .-_ZN10Kinematics22MotorAngToAxisPositionEfm
 434              		.section	.text._ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 435              		.align	1
 436              		.p2align 2,,3
 437              		.global	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 438              		.syntax unified
 439              		.thumb
 440              		.thumb_func
 441              		.fpu fpv4-sp-d16
 442              		.type	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 443              	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 444              		@ args = 4, pretend = 0, frame = 0
 445              		@ frame_needed = 0, uses_anonymous_args = 0
 446 0000 70B5     		push	{r4, r5, r6, lr}
 447 0002 0C46     		mov	r4, r1
 448 0004 40F29D21 		movw	r1, #669
 449 0008 8C42     		cmp	r4, r1
 450 000a 1E46     		mov	r6, r3
 451 000c 0546     		mov	r5, r0
 452 000e 0ED0     		beq	.L75
 453 0010 0368     		ldr	r3, [r0]
 454 0012 0021     		movs	r1, #0
 455 0014 1B68     		ldr	r3, [r3]
 456 0016 9847     		blx	r3
ARM GAS  /tmp/ccQXjmTG.s 			page 9


 457 0018 2246     		mov	r2, r4
 458 001a 0346     		mov	r3, r0
 459 001c 0D49     		ldr	r1, .L76
 460 001e 3046     		mov	r0, r6
 461 0020 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 462 0024 049A     		ldr	r2, [sp, #16]
 463 0026 0123     		movs	r3, #1
 464 0028 1370     		strb	r3, [r2]
 465              	.L73:
 466 002a 0020     		movs	r0, #0
 467 002c 70BD     		pop	{r4, r5, r6, pc}
 468              	.L75:
 469 002e 1046     		mov	r0, r2
 470 0030 4B21     		movs	r1, #75
 471 0032 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 472 0036 0028     		cmp	r0, #0
 473 0038 F7D1     		bne	.L73
 474 003a 2B68     		ldr	r3, [r5]
 475 003c 0146     		mov	r1, r0
 476 003e 1B68     		ldr	r3, [r3]
 477 0040 2846     		mov	r0, r5
 478 0042 9847     		blx	r3
 479 0044 0449     		ldr	r1, .L76+4
 480 0046 0246     		mov	r2, r0
 481 0048 3046     		mov	r0, r6
 482 004a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 483 004e 0020     		movs	r0, #0
 484 0050 70BD     		pop	{r4, r5, r6, pc}
 485              	.L77:
 486 0052 00BF     		.align	2
 487              	.L76:
 488 0054 14000000 		.word	.LC3
 489 0058 00000000 		.word	.LC2
 490              		.size	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN10Kinematics9ConfigureEjR11GCo
 491              		.section	.text._ZNK10Kinematics17GetHomingFileNameEmmjRm,"ax",%progbits
 492              		.align	1
 493              		.p2align 2,,3
 494              		.global	_ZNK10Kinematics17GetHomingFileNameEmmjRm
 495              		.syntax unified
 496              		.thumb
 497              		.thumb_func
 498              		.fpu fpv4-sp-d16
 499              		.type	_ZNK10Kinematics17GetHomingFileNameEmmjRm, %function
 500              	_ZNK10Kinematics17GetHomingFileNameEmmjRm:
 501              		@ args = 4, pretend = 0, frame = 16
 502              		@ frame_needed = 0, uses_anonymous_args = 0
 503 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 504 0004 0124     		movs	r4, #1
 505 0006 9C40     		lsls	r4, r4, r3
 506 0008 013C     		subs	r4, r4, #1
 507 000a 8C43     		bics	r4, r4, r1
 508 000c 85B0     		sub	sp, sp, #20
 509 000e 45D0     		beq	.L88
 510 0010 9B46     		mov	fp, r3
 511 0012 C1F38003 		ubfx	r3, r1, #2, #1
 512 0016 9146     		mov	r9, r2
 513 0018 0446     		mov	r4, r0
ARM GAS  /tmp/ccQXjmTG.s 			page 10


 514 001a 8846     		mov	r8, r1
 515 001c 244D     		ldr	r5, .L109
 516 001e 002B     		cmp	r3, #0
 517 0020 31D1     		bne	.L105
 518 0022 9A46     		mov	r10, r3
 519              	.L80:
 520 0024 2368     		ldr	r3, [r4]
 521 0026 2046     		mov	r0, r4
 522 0028 DB6A     		ldr	r3, [r3, #44]
 523 002a 9847     		blx	r3
 524 002c 214B     		ldr	r3, .L109+4
 525 002e 2C69     		ldr	r4, [r5, #16]
 526 0030 8446     		mov	ip, r0
 527 0032 93E80700 		ldm	r3, {r0, r1, r2}
 528 0036 01AB     		add	r3, sp, #4
 529 0038 03C3     		stmia	r3!, {r0, r1}
 530 003a 04F25A41 		addw	r1, r4, #1114
 531 003e 1A80     		strh	r2, [r3]	@ movhi
 532 0040 BBF1000F 		cmp	fp, #0
 533 0044 17D0     		beq	.L81
 534 0046 0026     		movs	r6, #0
 535 0048 09EA0C02 		and	r2, r9, ip
 536              	.L87:
 537 004c 28FA06F3 		lsr	r3, r8, r6
 538 0050 DB07     		lsls	r3, r3, #31
 539 0052 0DD5     		bpl	.L82
 540 0054 022E     		cmp	r6, #2
 541 0056 25D0     		beq	.L106
 542              	.L83:
 543 0058 8F5D     		ldrb	r7, [r1, r6]	@ zero_extendqisi2
 544 005a 01AD     		add	r5, sp, #4
 545 005c 5824     		movs	r4, #88
 546 005e 0020     		movs	r0, #0
 547 0060 01E0     		b	.L86
 548              	.L108:
 549 0062 15F8014F 		ldrb	r4, [r5, #1]!	@ zero_extendqisi2
 550              	.L86:
 551 0066 A742     		cmp	r7, r4
 552 0068 12D0     		beq	.L107
 553 006a 0130     		adds	r0, r0, #1
 554 006c 0928     		cmp	r0, #9
 555 006e F8D1     		bne	.L108
 556              	.L82:
 557 0070 0136     		adds	r6, r6, #1
 558 0072 B345     		cmp	fp, r6
 559 0074 EAD1     		bne	.L87
 560              	.L81:
 561 0076 0E9B     		ldr	r3, [sp, #56]
 562 0078 2CEA0902 		bic	r2, ip, r9
 563 007c 0020     		movs	r0, #0
 564 007e 1A60     		str	r2, [r3]
 565 0080 05B0     		add	sp, sp, #20
 566              		@ sp needed
 567 0082 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 568              	.L105:
 569 0086 2868     		ldr	r0, [r5]
 570 0088 FFF7FEFF 		bl	_ZNK8Platform16HomingZWithProbeEv
ARM GAS  /tmp/ccQXjmTG.s 			page 11


 571 008c 8246     		mov	r10, r0
 572 008e C9E7     		b	.L80
 573              	.L107:
 574 0090 094B     		ldr	r3, .L109+8
 575 0092 53F82000 		ldr	r0, [r3, r0, lsl #2]
 576 0096 05B0     		add	sp, sp, #20
 577              		@ sp needed
 578 0098 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 579              	.L88:
 580 009c 0748     		ldr	r0, .L109+12
 581 009e 05B0     		add	sp, sp, #20
 582              		@ sp needed
 583 00a0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 584              	.L106:
 585 00a4 BAF1000F 		cmp	r10, #0
 586 00a8 D6D0     		beq	.L83
 587 00aa 9445     		cmp	ip, r2
 588 00ac E0D1     		bne	.L82
 589 00ae D3E7     		b	.L83
 590              	.L110:
 591              		.align	2
 592              	.L109:
 593 00b0 00000000 		.word	reprap
 594 00b4 00000000 		.word	.LC0
 595 00b8 00000000 		.word	.LANCHOR0
 596 00bc 00000000 		.word	.LC4
 597              		.size	_ZNK10Kinematics17GetHomingFileNameEmmjRm, .-_ZNK10Kinematics17GetHomingFileNameEmmjRm
 598              		.section	.text._ZN10KinematicsC2E14KinematicsTypeffb,"ax",%progbits
 599              		.align	1
 600              		.p2align 2,,3
 601              		.global	_ZN10KinematicsC2E14KinematicsTypeffb
 602              		.syntax unified
 603              		.thumb
 604              		.thumb_func
 605              		.fpu fpv4-sp-d16
 606              		.type	_ZN10KinematicsC2E14KinematicsTypeffb, %function
 607              	_ZN10KinematicsC2E14KinematicsTypeffb:
 608              		@ args = 0, pretend = 0, frame = 0
 609              		@ frame_needed = 0, uses_anonymous_args = 0
 610 0000 38B5     		push	{r3, r4, r5, lr}
 611 0002 B5EEC00A 		vcmpe.f32	s0, #0
 612 0006 0446     		mov	r4, r0
 613 0008 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 614 000c 80ED010A 		vstr.32	s0, [r0, #4]
 615 0010 084B     		ldr	r3, .L113
 616 0012 094D     		ldr	r5, .L113+4
 617 0014 6273     		strb	r2, [r4, #13]
 618 0016 CCBF     		ite	gt
 619 0018 0120     		movgt	r0, #1
 620 001a 0020     		movle	r0, #0
 621 001c A173     		strb	r1, [r4, #14]
 622 001e C4ED020A 		vstr.32	s1, [r4, #8]
 623 0022 2560     		str	r5, [r4]
 624 0024 2073     		strb	r0, [r4, #12]
 625 0026 1869     		ldr	r0, [r3, #16]
 626 0028 0449     		ldr	r1, .L113+8
 627 002a 0322     		movs	r2, #3
ARM GAS  /tmp/ccQXjmTG.s 			page 12


 628 002c FFF7FEFF 		bl	_ZN6GCodes21SetMachineAxisLettersEPKch
 629 0030 2046     		mov	r0, r4
 630 0032 38BD     		pop	{r3, r4, r5, pc}
 631              	.L114:
 632              		.align	2
 633              	.L113:
 634 0034 00000000 		.word	reprap
 635 0038 08000000 		.word	.LANCHOR1+8
 636 003c 00000000 		.word	.LC1
 637              		.size	_ZN10KinematicsC2E14KinematicsTypeffb, .-_ZN10KinematicsC2E14KinematicsTypeffb
 638              		.global	_ZN10KinematicsC1E14KinematicsTypeffb
 639              		.thumb_set _ZN10KinematicsC1E14KinematicsTypeffb,_ZN10KinematicsC2E14KinematicsTypeffb
 640              		.section	.text._ZNK10Kinematics21LimitPositionFromAxisEPfjjm,"ax",%progbits
 641              		.align	1
 642              		.p2align 2,,3
 643              		.global	_ZNK10Kinematics21LimitPositionFromAxisEPfjjm
 644              		.syntax unified
 645              		.thumb
 646              		.thumb_func
 647              		.fpu fpv4-sp-d16
 648              		.type	_ZNK10Kinematics21LimitPositionFromAxisEPfjjm, %function
 649              	_ZNK10Kinematics21LimitPositionFromAxisEPfjjm:
 650              		@ args = 4, pretend = 0, frame = 0
 651              		@ frame_needed = 0, uses_anonymous_args = 0
 652              		@ link register save eliminated.
 653 0000 70B4     		push	{r4, r5, r6}
 654 0002 1748     		ldr	r0, .L132
 655 0004 039E     		ldr	r6, [sp, #12]
 656 0006 0468     		ldr	r4, [r0]
 657 0008 9A42     		cmp	r2, r3
 658 000a 25D2     		bcs	.L122
 659 000c 9000     		lsls	r0, r2, #2
 660 000e 00F24475 		addw	r5, r0, #1860
 661 0012 0144     		add	r1, r1, r0
 662 0014 2C44     		add	r4, r4, r5
 663 0016 0020     		movs	r0, #0
 664              	.L121:
 665 0018 26FA02F5 		lsr	r5, r6, r2
 666 001c ED07     		lsls	r5, r5, #31
 667 001e 12D5     		bpl	.L117
 668 0020 D1ED007A 		vldr.32	s15, [r1]
 669 0024 94ED007A 		vldr.32	s14, [r4]
 670 0028 F4EEC77A 		vcmpe.f32	s15, s14
 671 002c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 672 0030 06D4     		bmi	.L131
 673 0032 14ED097A 		vldr.32	s14, [r4, #-36]
 674 0036 F4EEC77A 		vcmpe.f32	s15, s14
 675 003a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 676 003e 02DD     		ble	.L117
 677              	.L131:
 678 0040 81ED007A 		vstr.32	s14, [r1]
 679 0044 0120     		movs	r0, #1
 680              	.L117:
 681 0046 0132     		adds	r2, r2, #1
 682 0048 9342     		cmp	r3, r2
 683 004a 01F10401 		add	r1, r1, #4
 684 004e 04F10404 		add	r4, r4, #4
ARM GAS  /tmp/ccQXjmTG.s 			page 13


 685 0052 E1D1     		bne	.L121
 686 0054 70BC     		pop	{r4, r5, r6}
 687 0056 7047     		bx	lr
 688              	.L122:
 689 0058 0020     		movs	r0, #0
 690 005a 70BC     		pop	{r4, r5, r6}
 691 005c 7047     		bx	lr
 692              	.L133:
 693 005e 00BF     		.align	2
 694              	.L132:
 695 0060 00000000 		.word	reprap
 696              		.size	_ZNK10Kinematics21LimitPositionFromAxisEPfjjm, .-_ZNK10Kinematics21LimitPositionFromAxisEPfj
 697              		.section	.text._ZN10Kinematics6CreateE14KinematicsType,"ax",%progbits
 698              		.align	1
 699              		.p2align 2,,3
 700              		.global	_ZN10Kinematics6CreateE14KinematicsType
 701              		.syntax unified
 702              		.thumb
 703              		.thumb_func
 704              		.fpu fpv4-sp-d16
 705              		.type	_ZN10Kinematics6CreateE14KinematicsType, %function
 706              	_ZN10Kinematics6CreateE14KinematicsType:
 707              		@ args = 0, pretend = 0, frame = 0
 708              		@ frame_needed = 0, uses_anonymous_args = 0
 709 0000 10B5     		push	{r4, lr}
 710 0002 0828     		cmp	r0, #8
 711 0004 4FD8     		bhi	.L146
 712 0006 DFE800F0 		tbb	[pc, r0]
 713              	.L137:
 714 000a 0D       		.byte	(.L136-.L137)/2
 715 000b 15       		.byte	(.L138-.L137)/2
 716 000c 1D       		.byte	(.L139-.L137)/2
 717 000d 25       		.byte	(.L140-.L137)/2
 718 000e 2D       		.byte	(.L141-.L137)/2
 719 000f 35       		.byte	(.L142-.L137)/2
 720 0010 3D       		.byte	(.L143-.L137)/2
 721 0011 46       		.byte	(.L144-.L137)/2
 722 0012 05       		.byte	(.L145-.L137)/2
 723 0013 00       		.p2align 1
 724              	.L145:
 725 0014 6420     		movs	r0, #100
 726 0016 FFF7FEFF 		bl	_Znwj
 727 001a 0446     		mov	r4, r0
 728 001c FFF7FEFF 		bl	_ZN18CoreXYUVKinematicsC1Ev
 729              	.L134:
 730 0020 2046     		mov	r0, r4
 731 0022 10BD     		pop	{r4, pc}
 732              	.L136:
 733 0024 4020     		movs	r0, #64
 734 0026 FFF7FEFF 		bl	_Znwj
 735 002a 0446     		mov	r4, r0
 736 002c FFF7FEFF 		bl	_ZN19CartesianKinematicsC1Ev
 737 0030 2046     		mov	r0, r4
 738 0032 10BD     		pop	{r4, pc}
 739              	.L138:
 740 0034 6420     		movs	r0, #100
 741 0036 FFF7FEFF 		bl	_Znwj
ARM GAS  /tmp/ccQXjmTG.s 			page 14


 742 003a 0446     		mov	r4, r0
 743 003c FFF7FEFF 		bl	_ZN16CoreXYKinematicsC1Ev
 744 0040 2046     		mov	r0, r4
 745 0042 10BD     		pop	{r4, pc}
 746              	.L139:
 747 0044 6420     		movs	r0, #100
 748 0046 FFF7FEFF 		bl	_Znwj
 749 004a 0446     		mov	r4, r0
 750 004c FFF7FEFF 		bl	_ZN16CoreXZKinematicsC1Ev
 751 0050 2046     		mov	r0, r4
 752 0052 10BD     		pop	{r4, pc}
 753              	.L140:
 754 0054 A420     		movs	r0, #164
 755 0056 FFF7FEFF 		bl	_Znwj
 756 005a 0446     		mov	r4, r0
 757 005c FFF7FEFF 		bl	_ZN21LinearDeltaKinematicsC1Ev
 758 0060 2046     		mov	r0, r4
 759 0062 10BD     		pop	{r4, pc}
 760              	.L141:
 761 0064 A020     		movs	r0, #160
 762 0066 FFF7FEFF 		bl	_Znwj
 763 006a 0446     		mov	r4, r0
 764 006c FFF7FEFF 		bl	_ZN15ScaraKinematicsC1Ev
 765 0070 2046     		mov	r0, r4
 766 0072 10BD     		pop	{r4, pc}
 767              	.L142:
 768 0074 6420     		movs	r0, #100
 769 0076 FFF7FEFF 		bl	_Znwj
 770 007a 0446     		mov	r4, r0
 771 007c FFF7FEFF 		bl	_ZN17CoreXYUKinematicsC1Ev
 772 0080 2046     		mov	r0, r4
 773 0082 10BD     		pop	{r4, pc}
 774              	.L143:
 775 0084 4FF4A870 		mov	r0, #336
 776 0088 FFF7FEFF 		bl	_Znwj
 777 008c 0446     		mov	r4, r0
 778 008e FFF7FEFF 		bl	_ZN21HangprinterKinematicsC1Ev
 779 0092 2046     		mov	r0, r4
 780 0094 10BD     		pop	{r4, pc}
 781              	.L144:
 782 0096 2C20     		movs	r0, #44
 783 0098 FFF7FEFF 		bl	_Znwj
 784 009c 0446     		mov	r4, r0
 785 009e FFF7FEFF 		bl	_ZN15PolarKinematicsC1Ev
 786 00a2 2046     		mov	r0, r4
 787 00a4 10BD     		pop	{r4, pc}
 788              	.L146:
 789 00a6 0024     		movs	r4, #0
 790 00a8 BAE7     		b	.L134
 791              		.size	_ZN10Kinematics6CreateE14KinematicsType, .-_ZN10Kinematics6CreateE14KinematicsType
 792 00aa 00BF     		.section	.text._ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj,"ax",%progbits
 793              		.align	1
 794              		.p2align 2,,3
 795              		.global	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 796              		.syntax unified
 797              		.thumb
 798              		.thumb_func
ARM GAS  /tmp/ccQXjmTG.s 			page 15


 799              		.fpu fpv4-sp-d16
 800              		.type	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj, %function
 801              	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj:
 802              		@ args = 0, pretend = 0, frame = 0
 803              		@ frame_needed = 0, uses_anonymous_args = 0
 804 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 805 0004 0D46     		mov	r5, r1
 806 0006 82B0     		sub	sp, sp, #8
 807 0008 9246     		mov	r10, r2
 808 000a 0146     		mov	r1, r0
 809 000c 1C48     		ldr	r0, .L168
 810 000e 1F46     		mov	r7, r3
 811 0010 FFF7FEFF 		bl	debugPrintf
 812 0014 BAF1000F 		cmp	r10, #0
 813 0018 29D0     		beq	.L166
 814 001a 17B3     		cbz	r7, .L167
 815              	.L150:
 816 001c BAF1000F 		cmp	r10, #0
 817 0020 1CD0     		beq	.L148
 818 0022 DFF86090 		ldr	r9, .L168+4
 819 0026 0026     		movs	r6, #0
 820 0028 07F1FF38 		add	r8, r7, #-1
 821              	.L155:
 822 002c 9FB1     		cbz	r7, .L152
 823 002e 0024     		movs	r4, #0
 824              	.L154:
 825 0030 2B68     		ldr	r3, [r5]
 826 0032 2246     		mov	r2, r4
 827 0034 DB68     		ldr	r3, [r3, #12]
 828 0036 3146     		mov	r1, r6
 829 0038 2846     		mov	r0, r5
 830 003a 9847     		blx	r3
 831 003c A045     		cmp	r8, r4
 832 003e 14BF     		ite	ne
 833 0040 2021     		movne	r1, #32
 834 0042 0A21     		moveq	r1, #10
 835 0044 D0E90023 		ldrd	r2, [r0]
 836 0048 0134     		adds	r4, r4, #1
 837 004a 0091     		str	r1, [sp]
 838 004c 4846     		mov	r0, r9
 839 004e FFF7FEFF 		bl	debugPrintf
 840 0052 A742     		cmp	r7, r4
 841 0054 ECD1     		bne	.L154
 842              	.L152:
 843 0056 0136     		adds	r6, r6, #1
 844 0058 B245     		cmp	r10, r6
 845 005a E7D1     		bne	.L155
 846              	.L148:
 847 005c 02B0     		add	sp, sp, #8
 848              		@ sp needed
 849 005e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 850              	.L167:
 851 0062 2B68     		ldr	r3, [r5]
 852 0064 2846     		mov	r0, r5
 853 0066 5B68     		ldr	r3, [r3, #4]
 854 0068 9847     		blx	r3
 855 006a 0746     		mov	r7, r0
ARM GAS  /tmp/ccQXjmTG.s 			page 16


 856 006c D6E7     		b	.L150
 857              	.L166:
 858 006e 2B68     		ldr	r3, [r5]
 859 0070 2846     		mov	r0, r5
 860 0072 1B68     		ldr	r3, [r3]
 861 0074 9847     		blx	r3
 862 0076 8246     		mov	r10, r0
 863 0078 002F     		cmp	r7, #0
 864 007a CFD1     		bne	.L150
 865 007c F1E7     		b	.L167
 866              	.L169:
 867 007e 00BF     		.align	2
 868              	.L168:
 869 0080 00000000 		.word	.LC5
 870 0084 04000000 		.word	.LC6
 871              		.size	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj, .-_ZN10Kinematics11PrintMatrixEPKcRK10M
 872              		.section	.text._ZN10Kinematics11PrintVectorEPKcPKdj,"ax",%progbits
 873              		.align	1
 874              		.p2align 2,,3
 875              		.global	_ZN10Kinematics11PrintVectorEPKcPKdj
 876              		.syntax unified
 877              		.thumb
 878              		.thumb_func
 879              		.fpu fpv4-sp-d16
 880              		.type	_ZN10Kinematics11PrintVectorEPKcPKdj, %function
 881              	_ZN10Kinematics11PrintVectorEPKcPKdj:
 882              		@ args = 0, pretend = 0, frame = 0
 883              		@ frame_needed = 0, uses_anonymous_args = 0
 884 0000 70B5     		push	{r4, r5, r6, lr}
 885 0002 0C46     		mov	r4, r1
 886 0004 1546     		mov	r5, r2
 887 0006 0146     		mov	r1, r0
 888 0008 0948     		ldr	r0, .L178
 889 000a FFF7FEFF 		bl	debugPrintf
 890 000e 4DB1     		cbz	r5, .L171
 891 0010 084E     		ldr	r6, .L178+4
 892 0012 04EBC505 		add	r5, r4, r5, lsl #3
 893              	.L172:
 894 0016 F4E80223 		ldrd	r2, [r4], #8
 895 001a 3046     		mov	r0, r6
 896 001c FFF7FEFF 		bl	debugPrintf
 897 0020 AC42     		cmp	r4, r5
 898 0022 F8D1     		bne	.L172
 899              	.L171:
 900 0024 0448     		ldr	r0, .L178+8
 901 0026 BDE87040 		pop	{r4, r5, r6, lr}
 902 002a FFF7FEBF 		b	debugPrintf
 903              	.L179:
 904 002e 00BF     		.align	2
 905              	.L178:
 906 0030 00000000 		.word	.LC7
 907 0034 04000000 		.word	.LC8
 908 0038 0C000000 		.word	.LC9
 909              		.size	_ZN10Kinematics11PrintVectorEPKcPKdj, .-_ZN10Kinematics11PrintVectorEPKcPKdj
 910              		.global	_ZTV10Kinematics
 911              		.global	_ZN10Kinematics23StandardHomingFileNamesE
 912              		.global	_ZN10Kinematics15HomeAllFileNameE
ARM GAS  /tmp/ccQXjmTG.s 			page 17


 913              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 914              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 915              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 916              	_ZL28cpu_irq_prev_interrupt_state:
 917 0000 00       		.space	1
 918              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 919              		.align	2
 920              		.type	_ZL32cpu_irq_critical_section_counter, %object
 921              		.size	_ZL32cpu_irq_critical_section_counter, 4
 922              	_ZL32cpu_irq_critical_section_counter:
 923 0000 00000000 		.space	4
 924              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 925              		.align	2
 926              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 927              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 928              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 929 0000 00000000 		.space	4
 930              		.section	.rodata._ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj.str1.4,"aMS",%progbits,1
 931              		.align	2
 932              	.LC5:
 933 0000 25730A00 		.ascii	"%s\012\000"
 934              	.LC6:
 935 0004 25372E34 		.ascii	"%7.4f%c\000"
 935      66256300 
 936              		.section	.rodata._ZN10Kinematics11PrintVectorEPKcPKdj.str1.4,"aMS",%progbits,1
 937              		.align	2
 938              	.LC7:
 939 0000 25733A00 		.ascii	"%s:\000"
 940              	.LC8:
 941 0004 2025372E 		.ascii	" %7.4f\000"
 941      346600
 942 000b 00       		.space	1
 943              	.LC9:
 944 000c 0A00     		.ascii	"\012\000"
 945              		.section	.rodata._ZN10Kinematics15HomeAllFileNameE,"a",%progbits
 946              		.align	2
 947              		.type	_ZN10Kinematics15HomeAllFileNameE, %object
 948              		.size	_ZN10Kinematics15HomeAllFileNameE, 4
 949              	_ZN10Kinematics15HomeAllFileNameE:
 950 0000 00000000 		.word	.LC4
 951              		.section	.rodata._ZN10Kinematics23StandardHomingFileNamesE,"a",%progbits
 952              		.align	2
 953              		.set	.LANCHOR0,. + 0
 954              		.type	_ZN10Kinematics23StandardHomingFileNamesE, %object
 955              		.size	_ZN10Kinematics23StandardHomingFileNamesE, 36
 956              	_ZN10Kinematics23StandardHomingFileNamesE:
 957 0000 00000000 		.word	.LC10
 958 0004 08000000 		.word	.LC11
 959 0008 10000000 		.word	.LC12
 960 000c 18000000 		.word	.LC13
 961 0010 20000000 		.word	.LC14
 962 0014 28000000 		.word	.LC15
 963 0018 30000000 		.word	.LC16
 964 001c 38000000 		.word	.LC17
 965 0020 40000000 		.word	.LC18
 966              		.section	.rodata._ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%progbits,1
 967              		.align	2
ARM GAS  /tmp/ccQXjmTG.s 			page 18


 968              	.LC2:
 969 0000 4B696E65 		.ascii	"Kinematics is %s\000"
 969      6D617469 
 969      63732069 
 969      73202573 
 969      00
 970 0011 000000   		.space	3
 971              	.LC3:
 972 0014 4D257520 		.ascii	"M%u parameters do not apply to %s kinematics\000"
 972      70617261 
 972      6D657465 
 972      72732064 
 972      6F206E6F 
 973              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 974              		.align	2
 975              	.LC1:
 976 0000 58595A00 		.ascii	"XYZ\000"
 977              		.section	.rodata._ZNK10Kinematics17GetHomingFileNameEmmjRm.str1.4,"aMS",%progbits,1
 978              		.align	2
 979              	.LC4:
 980 0000 686F6D65 		.ascii	"homeall.g\000"
 980      616C6C2E 
 980      6700
 981              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 982              		.align	2
 983              	.LC0:
 984 0000 58595A55 		.ascii	"XYZUVWABC\000"
 984      56574142 
 984      4300
 985              		.section	.rodata._ZTV10Kinematics,"a",%progbits
 986              		.align	2
 987              		.set	.LANCHOR1,. + 0
 988              		.type	_ZTV10Kinematics, %object
 989              		.size	_ZTV10Kinematics, 128
 990              	_ZTV10Kinematics:
 991 0000 00000000 		.word	0
 992 0004 00000000 		.word	0
 993 0008 00000000 		.word	__cxa_pure_virtual
 994 000c 00000000 		.word	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 995 0010 00000000 		.word	__cxa_pure_virtual
 996 0014 00000000 		.word	__cxa_pure_virtual
 997 0018 00000000 		.word	_ZNK10Kinematics23SupportsAutoCalibrationEv
 998 001c 00000000 		.word	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 999 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 1000 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 1001 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 1002 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 1003 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 1004 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 1005 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 1006 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 1007 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 1008 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 1009 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 1010 004c 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRm
 1011 0050 00000000 		.word	__cxa_pure_virtual
 1012 0054 00000000 		.word	__cxa_pure_virtual
ARM GAS  /tmp/ccQXjmTG.s 			page 19


 1013 0058 00000000 		.word	__cxa_pure_virtual
 1014 005c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 1015 0060 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 1016 0064 00000000 		.word	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore
 1017 0068 00000000 		.word	__cxa_pure_virtual
 1018 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 1019 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 1020 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 1021 0078 00000000 		.word	0
 1022 007c 00000000 		.word	0
 1023              		.section	.rodata.str1.4,"aMS",%progbits,1
 1024              		.align	2
 1025              	.LC10:
 1026 0000 686F6D65 		.ascii	"homex.g\000"
 1026      782E6700 
 1027              	.LC11:
 1028 0008 686F6D65 		.ascii	"homey.g\000"
 1028      792E6700 
 1029              	.LC12:
 1030 0010 686F6D65 		.ascii	"homez.g\000"
 1030      7A2E6700 
 1031              	.LC13:
 1032 0018 686F6D65 		.ascii	"homeu.g\000"
 1032      752E6700 
 1033              	.LC14:
 1034 0020 686F6D65 		.ascii	"homev.g\000"
 1034      762E6700 
 1035              	.LC15:
 1036 0028 686F6D65 		.ascii	"homew.g\000"
 1036      772E6700 
 1037              	.LC16:
 1038 0030 686F6D65 		.ascii	"homea.g\000"
 1038      612E6700 
 1039              	.LC17:
 1040 0038 686F6D65 		.ascii	"homeb.g\000"
 1040      622E6700 
 1041              	.LC18:
 1042 0040 686F6D65 		.ascii	"homec.g\000"
 1042      632E6700 
 1043              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
