ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 1


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
  14              		.text
  15              		.section	.text._ZNK10Kinematics23SupportsAutoCalibrationEv,"axG",%progbits,_ZNK10Kinematics23Suppo
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZNK10Kinematics23SupportsAutoCalibrationEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZNK10Kinematics23SupportsAutoCalibrationEv, %function
  24              	_ZNK10Kinematics23SupportsAutoCalibrationEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 0020     		movs	r0, #0
  29 0002 7047     		bx	lr
  30              		.size	_ZNK10Kinematics23SupportsAutoCalibrationEv, .-_ZNK10Kinematics23SupportsAutoCalibrationEv
  31              		.section	.text._ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,"axG",%prog
  32              		.align	1
  33              		.p2align 2,,3
  34              		.weak	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
  35              		.syntax unified
  36              		.thumb
  37              		.thumb_func
  38              		.fpu fpv4-sp-d16
  39              		.type	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %function
  40              	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43              		@ link register save eliminated.
  44 0000 0020     		movs	r0, #0
  45 0002 7047     		bx	lr
  46              		.size	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN10Kinematics17
  47              		.section	.text._ZN10Kinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN10Kinematics22SetCalib
  48              		.align	1
  49              		.p2align 2,,3
  50              		.weak	_ZN10Kinematics22SetCalibrationDefaultsEv
  51              		.syntax unified
  52              		.thumb
  53              		.thumb_func
  54              		.fpu fpv4-sp-d16
  55              		.type	_ZN10Kinematics22SetCalibrationDefaultsEv, %function
  56              	_ZN10Kinematics22SetCalibrationDefaultsEv:
  57              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 2


  58              		@ frame_needed = 0, uses_anonymous_args = 0
  59              		@ link register save eliminated.
  60 0000 7047     		bx	lr
  61              		.size	_ZN10Kinematics22SetCalibrationDefaultsEv, .-_ZN10Kinematics22SetCalibrationDefaultsEv
  62 0002 00BF     		.section	.text._ZNK10Kinematics26WriteCalibrationParametersEP9FileStore,"axG",%progbits,_ZNK10Kine
  63              		.align	1
  64              		.p2align 2,,3
  65              		.weak	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
  66              		.syntax unified
  67              		.thumb
  68              		.thumb_func
  69              		.fpu fpv4-sp-d16
  70              		.type	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, %function
  71              	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore:
  72              		@ args = 0, pretend = 0, frame = 0
  73              		@ frame_needed = 0, uses_anonymous_args = 0
  74              		@ link register save eliminated.
  75 0000 0120     		movs	r0, #1
  76 0002 7047     		bx	lr
  77              		.size	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK10Kinematics26WriteCalibrati
  78              		.section	.text._ZNK10Kinematics17GetTiltCorrectionEj,"axG",%progbits,_ZNK10Kinematics17GetTiltCorr
  79              		.align	1
  80              		.p2align 2,,3
  81              		.weak	_ZNK10Kinematics17GetTiltCorrectionEj
  82              		.syntax unified
  83              		.thumb
  84              		.thumb_func
  85              		.fpu fpv4-sp-d16
  86              		.type	_ZNK10Kinematics17GetTiltCorrectionEj, %function
  87              	_ZNK10Kinematics17GetTiltCorrectionEj:
  88              		@ args = 0, pretend = 0, frame = 0
  89              		@ frame_needed = 0, uses_anonymous_args = 0
  90              		@ link register save eliminated.
  91 0000 9FED010A 		vldr.32	s0, .L7
  92 0004 7047     		bx	lr
  93              	.L8:
  94 0006 00BF     		.align	2
  95              	.L7:
  96 0008 00000000 		.word	0
  97              		.size	_ZNK10Kinematics17GetTiltCorrectionEj, .-_ZNK10Kinematics17GetTiltCorrectionEj
  98              		.section	.text._ZNK10Kinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK10Kinematics23AxesT
  99              		.align	1
 100              		.p2align 2,,3
 101              		.weak	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu fpv4-sp-d16
 106              		.type	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, %function
 107              	_ZNK10Kinematics23AxesToHomeBeforeProbingEv:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110              		@ link register save eliminated.
 111 0000 0320     		movs	r0, #3
 112 0002 7047     		bx	lr
 113              		.size	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, .-_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 114              		.section	.text._ZNK10Kinematics13GetMotionTypeEj,"axG",%progbits,_ZNK10Kinematics13GetMotionTypeEj
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 3


 115              		.align	1
 116              		.p2align 2,,3
 117              		.weak	_ZNK10Kinematics13GetMotionTypeEj
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu fpv4-sp-d16
 122              		.type	_ZNK10Kinematics13GetMotionTypeEj, %function
 123              	_ZNK10Kinematics13GetMotionTypeEj:
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126              		@ link register save eliminated.
 127 0000 0020     		movs	r0, #0
 128 0002 7047     		bx	lr
 129              		.size	_ZNK10Kinematics13GetMotionTypeEj, .-_ZNK10Kinematics13GetMotionTypeEj
 130              		.section	.text._ZNK10Kinematics16NumHomingButtonsEj,"axG",%progbits,_ZNK10Kinematics16NumHomingBut
 131              		.align	1
 132              		.p2align 2,,3
 133              		.weak	_ZNK10Kinematics16NumHomingButtonsEj
 134              		.syntax unified
 135              		.thumb
 136              		.thumb_func
 137              		.fpu fpv4-sp-d16
 138              		.type	_ZNK10Kinematics16NumHomingButtonsEj, %function
 139              	_ZNK10Kinematics16NumHomingButtonsEj:
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 0, uses_anonymous_args = 0
 142              		@ link register save eliminated.
 143 0000 0846     		mov	r0, r1
 144 0002 7047     		bx	lr
 145              		.size	_ZNK10Kinematics16NumHomingButtonsEj, .-_ZNK10Kinematics16NumHomingButtonsEj
 146              		.section	.text._ZNK10Kinematics17HomingButtonNamesEv,"axG",%progbits,_ZNK10Kinematics17HomingButto
 147              		.align	1
 148              		.p2align 2,,3
 149              		.weak	_ZNK10Kinematics17HomingButtonNamesEv
 150              		.syntax unified
 151              		.thumb
 152              		.thumb_func
 153              		.fpu fpv4-sp-d16
 154              		.type	_ZNK10Kinematics17HomingButtonNamesEv, %function
 155              	_ZNK10Kinematics17HomingButtonNamesEv:
 156              		@ args = 0, pretend = 0, frame = 0
 157              		@ frame_needed = 0, uses_anonymous_args = 0
 158              		@ link register save eliminated.
 159 0000 0048     		ldr	r0, .L13
 160 0002 7047     		bx	lr
 161              	.L14:
 162              		.align	2
 163              	.L13:
 164 0004 00000000 		.word	.LC0
 165              		.size	_ZNK10Kinematics17HomingButtonNamesEv, .-_ZNK10Kinematics17HomingButtonNamesEv
 166              		.section	.text._ZNK10Kinematics16MachineAxisNamesEv,"axG",%progbits,_ZNK10Kinematics16MachineAxisN
 167              		.align	1
 168              		.p2align 2,,3
 169              		.weak	_ZNK10Kinematics16MachineAxisNamesEv
 170              		.syntax unified
 171              		.thumb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 4


 172              		.thumb_func
 173              		.fpu fpv4-sp-d16
 174              		.type	_ZNK10Kinematics16MachineAxisNamesEv, %function
 175              	_ZNK10Kinematics16MachineAxisNamesEv:
 176              		@ args = 0, pretend = 0, frame = 0
 177              		@ frame_needed = 0, uses_anonymous_args = 0
 178              		@ link register save eliminated.
 179 0000 0048     		ldr	r0, .L16
 180 0002 7047     		bx	lr
 181              	.L17:
 182              		.align	2
 183              	.L16:
 184 0004 00000000 		.word	.LC1
 185              		.size	_ZNK10Kinematics16MachineAxisNamesEv, .-_ZNK10Kinematics16MachineAxisNamesEv
 186              		.section	.text._ZNK10Kinematics16AxesAssumedHomedEm,"axG",%progbits,_ZNK10Kinematics16AxesAssumedH
 187              		.align	1
 188              		.p2align 2,,3
 189              		.weak	_ZNK10Kinematics16AxesAssumedHomedEm
 190              		.syntax unified
 191              		.thumb
 192              		.thumb_func
 193              		.fpu fpv4-sp-d16
 194              		.type	_ZNK10Kinematics16AxesAssumedHomedEm, %function
 195              	_ZNK10Kinematics16AxesAssumedHomedEm:
 196              		@ args = 0, pretend = 0, frame = 0
 197              		@ frame_needed = 0, uses_anonymous_args = 0
 198              		@ link register save eliminated.
 199 0000 0846     		mov	r0, r1
 200 0002 7047     		bx	lr
 201              		.size	_ZNK10Kinematics16AxesAssumedHomedEm, .-_ZNK10Kinematics16AxesAssumedHomedEm
 202              		.section	.text._ZNK10Kinematics15MustBeHomedAxesEmb,"axG",%progbits,_ZNK10Kinematics15MustBeHomedA
 203              		.align	1
 204              		.p2align 2,,3
 205              		.weak	_ZNK10Kinematics15MustBeHomedAxesEmb
 206              		.syntax unified
 207              		.thumb
 208              		.thumb_func
 209              		.fpu fpv4-sp-d16
 210              		.type	_ZNK10Kinematics15MustBeHomedAxesEmb, %function
 211              	_ZNK10Kinematics15MustBeHomedAxesEmb:
 212              		@ args = 0, pretend = 0, frame = 0
 213              		@ frame_needed = 0, uses_anonymous_args = 0
 214              		@ link register save eliminated.
 215 0000 002A     		cmp	r2, #0
 216 0002 14BF     		ite	ne
 217 0004 0846     		movne	r0, r1
 218 0006 0020     		moveq	r0, #0
 219 0008 7047     		bx	lr
 220              		.size	_ZNK10Kinematics15MustBeHomedAxesEmb, .-_ZNK10Kinematics15MustBeHomedAxesEmb
 221 000a 00BF     		.section	.text._ZNK10Kinematics19WriteResumeSettingsEP9FileStore,"axG",%progbits,_ZNK10Kinematics1
 222              		.align	1
 223              		.p2align 2,,3
 224              		.weak	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 5


 229              		.type	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore, %function
 230              	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233              		@ link register save eliminated.
 234 0000 0120     		movs	r0, #1
 235 0002 7047     		bx	lr
 236              		.size	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore, .-_ZNK10Kinematics19WriteResumeSettingsEP
 237              		.section	.text._ZNK10Kinematics24IsContinuousRotationAxisEj,"axG",%progbits,_ZNK10Kinematics24IsCo
 238              		.align	1
 239              		.p2align 2,,3
 240              		.weak	_ZNK10Kinematics24IsContinuousRotationAxisEj
 241              		.syntax unified
 242              		.thumb
 243              		.thumb_func
 244              		.fpu fpv4-sp-d16
 245              		.type	_ZNK10Kinematics24IsContinuousRotationAxisEj, %function
 246              	_ZNK10Kinematics24IsContinuousRotationAxisEj:
 247              		@ args = 0, pretend = 0, frame = 0
 248              		@ frame_needed = 0, uses_anonymous_args = 0
 249              		@ link register save eliminated.
 250 0000 0020     		movs	r0, #0
 251 0002 7047     		bx	lr
 252              		.size	_ZNK10Kinematics24IsContinuousRotationAxisEj, .-_ZNK10Kinematics24IsContinuousRotationAxisEj
 253              		.section	.text._ZNK10Kinematics11IsReachableEffb,"ax",%progbits
 254              		.align	1
 255              		.p2align 2,,3
 256              		.global	_ZNK10Kinematics11IsReachableEffb
 257              		.syntax unified
 258              		.thumb
 259              		.thumb_func
 260              		.fpu fpv4-sp-d16
 261              		.type	_ZNK10Kinematics11IsReachableEffb, %function
 262              	_ZNK10Kinematics11IsReachableEffb:
 263              		@ args = 0, pretend = 0, frame = 0
 264              		@ frame_needed = 0, uses_anonymous_args = 0
 265              		@ link register save eliminated.
 266 0000 154B     		ldr	r3, .L38
 267 0002 5B68     		ldr	r3, [r3, #4]	@ unaligned
 268 0004 03F5F862 		add	r2, r3, #1984
 269 0008 D2ED007A 		vldr.32	s15, [r2]
 270 000c B4EEE70A 		vcmpe.f32	s0, s15
 271 0010 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 272 0014 1DDB     		blt	.L37
 273 0016 03F2C472 		addw	r2, r3, #1988
 274 001a D2ED007A 		vldr.32	s15, [r2]
 275 001e F4EEE07A 		vcmpe.f32	s15, s1
 276 0022 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 277 0026 14D8     		bhi	.L37
 278 0028 03F29C72 		addw	r2, r3, #1948
 279 002c D2ED007A 		vldr.32	s15, [r2]
 280 0030 F4EEC07A 		vcmpe.f32	s15, s0
 281 0034 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 282 0038 0BDB     		blt	.L37
 283 003a 03F5F463 		add	r3, r3, #1952
 284 003e D3ED007A 		vldr.32	s15, [r3]
 285 0042 F4EEE07A 		vcmpe.f32	s15, s1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 6


 286 0046 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 287 004a ACBF     		ite	ge
 288 004c 0120     		movge	r0, #1
 289 004e 0020     		movlt	r0, #0
 290 0050 7047     		bx	lr
 291              	.L37:
 292 0052 0020     		movs	r0, #0
 293 0054 7047     		bx	lr
 294              	.L39:
 295 0056 00BF     		.align	2
 296              	.L38:
 297 0058 00000000 		.word	reprap
 298              		.size	_ZNK10Kinematics11IsReachableEffb, .-_ZNK10Kinematics11IsReachableEffb
 299              		.section	.text._ZN10Kinematics23GetFullStepsPerMotorRevEj,"ax",%progbits
 300              		.align	1
 301              		.p2align 2,,3
 302              		.global	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 303              		.syntax unified
 304              		.thumb
 305              		.thumb_func
 306              		.fpu fpv4-sp-d16
 307              		.type	_ZN10Kinematics23GetFullStepsPerMotorRevEj, %function
 308              	_ZN10Kinematics23GetFullStepsPerMotorRevEj:
 309              		@ args = 0, pretend = 0, frame = 0
 310              		@ frame_needed = 0, uses_anonymous_args = 0
 311              		@ link register save eliminated.
 312 0000 2020     		movs	r0, #32
 313 0002 7047     		bx	lr
 314              		.size	_ZN10Kinematics23GetFullStepsPerMotorRevEj, .-_ZN10Kinematics23GetFullStepsPerMotorRevEj
 315              		.section	.text._ZNK10Kinematics13LimitPositionEPfjmb,"ax",%progbits
 316              		.align	1
 317              		.p2align 2,,3
 318              		.global	_ZNK10Kinematics13LimitPositionEPfjmb
 319              		.syntax unified
 320              		.thumb
 321              		.thumb_func
 322              		.fpu fpv4-sp-d16
 323              		.type	_ZNK10Kinematics13LimitPositionEPfjmb, %function
 324              	_ZNK10Kinematics13LimitPositionEPfjmb:
 325              		@ args = 4, pretend = 0, frame = 0
 326              		@ frame_needed = 0, uses_anonymous_args = 0
 327              		@ link register save eliminated.
 328 0000 70B4     		push	{r4, r5, r6}
 329 0002 1548     		ldr	r0, .L58
 330 0004 4568     		ldr	r5, [r0, #4]
 331 0006 1AB3     		cbz	r2, .L48
 332 0008 0020     		movs	r0, #0
 333 000a 05F5F865 		add	r5, r5, #1984
 334 000e 0446     		mov	r4, r0
 335              	.L47:
 336 0010 23FA04F6 		lsr	r6, r3, r4
 337 0014 F607     		lsls	r6, r6, #31
 338 0016 12D5     		bpl	.L43
 339 0018 D1ED007A 		vldr.32	s15, [r1]
 340 001c 95ED007A 		vldr.32	s14, [r5]
 341 0020 F4EEC77A 		vcmpe.f32	s15, s14
 342 0024 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 7


 343 0028 06D4     		bmi	.L57
 344 002a 15ED097A 		vldr.32	s14, [r5, #-36]
 345 002e F4EEC77A 		vcmpe.f32	s15, s14
 346 0032 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 347 0036 02DD     		ble	.L43
 348              	.L57:
 349 0038 81ED007A 		vstr.32	s14, [r1]
 350 003c 0120     		movs	r0, #1
 351              	.L43:
 352 003e 0134     		adds	r4, r4, #1
 353 0040 A242     		cmp	r2, r4
 354 0042 01F10401 		add	r1, r1, #4
 355 0046 05F10405 		add	r5, r5, #4
 356 004a E1D1     		bne	.L47
 357 004c 70BC     		pop	{r4, r5, r6}
 358 004e 7047     		bx	lr
 359              	.L48:
 360 0050 1046     		mov	r0, r2
 361 0052 70BC     		pop	{r4, r5, r6}
 362 0054 7047     		bx	lr
 363              	.L59:
 364 0056 00BF     		.align	2
 365              	.L58:
 366 0058 00000000 		.word	reprap
 367              		.size	_ZNK10Kinematics13LimitPositionEPfjmb, .-_ZNK10Kinematics13LimitPositionEPfjmb
 368              		.section	.text._ZNK10Kinematics25GetAssumedInitialPositionEjPf,"ax",%progbits
 369              		.align	1
 370              		.p2align 2,,3
 371              		.global	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 372              		.syntax unified
 373              		.thumb
 374              		.thumb_func
 375              		.fpu fpv4-sp-d16
 376              		.type	_ZNK10Kinematics25GetAssumedInitialPositionEjPf, %function
 377              	_ZNK10Kinematics25GetAssumedInitialPositionEjPf:
 378              		@ args = 0, pretend = 0, frame = 0
 379              		@ frame_needed = 0, uses_anonymous_args = 0
 380              		@ link register save eliminated.
 381 0000 31B1     		cbz	r1, .L60
 382 0002 0023     		movs	r3, #0
 383 0004 02EB8101 		add	r1, r2, r1, lsl #2
 384              	.L62:
 385 0008 42F8043B 		str	r3, [r2], #4	@ float
 386 000c 8A42     		cmp	r2, r1
 387 000e FBD1     		bne	.L62
 388              	.L60:
 389 0010 7047     		bx	lr
 390              		.size	_ZNK10Kinematics25GetAssumedInitialPositionEjPf, .-_ZNK10Kinematics25GetAssumedInitialPositi
 391 0012 00BF     		.section	.text._ZN10Kinematics22MotorAngToAxisPositionEfmPKfj,"ax",%progbits
 392              		.align	1
 393              		.p2align 2,,3
 394              		.global	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 395              		.syntax unified
 396              		.thumb
 397              		.thumb_func
 398              		.fpu fpv4-sp-d16
 399              		.type	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 8


 400              	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj:
 401              		@ args = 0, pretend = 0, frame = 8
 402              		@ frame_needed = 0, uses_anonymous_args = 0
 403 0000 70B5     		push	{r4, r5, r6, lr}
 404 0002 2DED028B 		vpush.64	{d8}
 405 0006 1448     		ldr	r0, .L69
 406 0008 4068     		ldr	r0, [r0, #4]
 407 000a 1E46     		mov	r6, r3
 408 000c 03EB4303 		add	r3, r3, r3, lsl #1
 409 0010 00EB8303 		add	r3, r0, r3, lsl #2
 410 0014 82B0     		sub	sp, sp, #8
 411 0016 0C46     		mov	r4, r1
 412 0018 1546     		mov	r5, r2
 413 001a 93F83013 		ldrb	r1, [r3, #816]	@ zero_extendqisi2
 414 001e 0DF10702 		add	r2, sp, #7
 415 0022 B0EE408A 		vmov.f32	s16, s0
 416 0026 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjRb
 417 002a 04FB00F0 		mul	r0, r4, r0
 418 002e 07EE900A 		vmov	s15, r0	@ int
 419 0032 05EB8605 		add	r5, r5, r6, lsl #2
 420 0036 F8EE677A 		vcvt.f32.u32	s15, s15
 421 003a 95ED006A 		vldr.32	s12, [r5]
 422 003e DFED076A 		vldr.32	s13, .L69+4
 423 0042 87EE867A 		vdiv.f32	s14, s15, s12
 424 0046 27EE080A 		vmul.f32	s0, s14, s16
 425 004a 80EE260A 		vdiv.f32	s0, s0, s13
 426 004e 02B0     		add	sp, sp, #8
 427              		@ sp needed
 428 0050 BDEC028B 		vldm	sp!, {d8}
 429 0054 70BD     		pop	{r4, r5, r6, pc}
 430              	.L70:
 431 0056 00BF     		.align	2
 432              	.L69:
 433 0058 00000000 		.word	reprap
 434 005c 0000B443 		.word	1135869952
 435              		.size	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj, .-_ZN10Kinematics22MotorAngToAxisPositionEfm
 436              		.section	.text._ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef,"ax",%progbits
 437              		.align	1
 438              		.p2align 2,,3
 439              		.global	_ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef
 440              		.syntax unified
 441              		.thumb
 442              		.thumb_func
 443              		.fpu fpv4-sp-d16
 444              		.type	_ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef, %function
 445              	_ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef:
 446              		@ args = 4, pretend = 0, frame = 0
 447              		@ frame_needed = 0, uses_anonymous_args = 0
 448 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 449 0004 0124     		movs	r4, #1
 450 0006 9C40     		lsls	r4, r4, r3
 451 0008 013C     		subs	r4, r4, #1
 452 000a 1E46     		mov	r6, r3
 453 000c 34EA0103 		bics	r3, r4, r1
 454 0010 3BD0     		beq	.L91
 455 0012 0746     		mov	r7, r0
 456 0014 C1F38000 		ubfx	r0, r1, #2, #1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 9


 457 0018 0D46     		mov	r5, r1
 458 001a 9046     		mov	r8, r2
 459 001c 78BB     		cbnz	r0, .L92
 460 001e 8146     		mov	r9, r0
 461              	.L74:
 462 0020 3B68     		ldr	r3, [r7]
 463 0022 3846     		mov	r0, r7
 464 0024 DB6A     		ldr	r3, [r3, #44]
 465 0026 9847     		blx	r3
 466 0028 36B3     		cbz	r6, .L75
 467 002a 0024     		movs	r4, #0
 468 002c 00EA0802 		and	r2, r0, r8
 469              	.L78:
 470 0030 25FA04F3 		lsr	r3, r5, r4
 471 0034 DB07     		lsls	r3, r3, #31
 472 0036 1CD5     		bpl	.L76
 473 0038 022C     		cmp	r4, #2
 474 003a 15D0     		beq	.L93
 475              	.L77:
 476 003c 1649     		ldr	r1, .L94
 477 003e 0898     		ldr	r0, [sp, #32]
 478 0040 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 479 0044 154B     		ldr	r3, .L94+4
 480 0046 5B69     		ldr	r3, [r3, #20]
 481 0048 1C44     		add	r4, r4, r3
 482 004a 94F81005 		ldrb	r0, [r4, #1296]	@ zero_extendqisi2
 483 004e FFF7FEFF 		bl	tolower
 484 0052 C1B2     		uxtb	r1, r0
 485 0054 0898     		ldr	r0, [sp, #32]
 486 0056 FFF7FEFF 		bl	_ZNK9StringRef3catEc
 487 005a 1149     		ldr	r1, .L94+8
 488 005c 0898     		ldr	r0, [sp, #32]
 489 005e FFF7FEFF 		bl	_ZNK9StringRef3catEPKc
 490 0062 0020     		movs	r0, #0
 491              	.L71:
 492 0064 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 493              	.L93:
 494 0068 B9F1000F 		cmp	r9, #0
 495 006c E6D0     		beq	.L77
 496 006e 8242     		cmp	r2, r0
 497 0070 E4D0     		beq	.L77
 498              	.L76:
 499 0072 0134     		adds	r4, r4, #1
 500 0074 A642     		cmp	r6, r4
 501 0076 DBD1     		bne	.L78
 502              	.L75:
 503 0078 20EA0800 		bic	r0, r0, r8
 504 007c F2E7     		b	.L71
 505              	.L92:
 506 007e 074B     		ldr	r3, .L94+4
 507 0080 5868     		ldr	r0, [r3, #4]
 508 0082 FFF7FEFF 		bl	_ZNK8Platform16HomingZWithProbeEv
 509 0086 8146     		mov	r9, r0
 510 0088 CAE7     		b	.L74
 511              	.L91:
 512 008a 0649     		ldr	r1, .L94+12
 513 008c 0898     		ldr	r0, [sp, #32]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 10


 514 008e FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 515 0092 0020     		movs	r0, #0
 516 0094 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 517              	.L95:
 518              		.align	2
 519              	.L94:
 520 0098 0C000000 		.word	.LC3
 521 009c 00000000 		.word	reprap
 522 00a0 14000000 		.word	.LC4
 523 00a4 00000000 		.word	.LC2
 524              		.size	_ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef, .-_ZNK10Kinematics17GetHomingFileNameEm
 525              		.section	.text._ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 526              		.align	1
 527              		.p2align 2,,3
 528              		.global	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 529              		.syntax unified
 530              		.thumb
 531              		.thumb_func
 532              		.fpu fpv4-sp-d16
 533              		.type	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 534              	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 535              		@ args = 4, pretend = 0, frame = 0
 536              		@ frame_needed = 0, uses_anonymous_args = 0
 537 0000 70B5     		push	{r4, r5, r6, lr}
 538 0002 0C46     		mov	r4, r1
 539 0004 40F29D21 		movw	r1, #669
 540 0008 8C42     		cmp	r4, r1
 541 000a 1E46     		mov	r6, r3
 542 000c 0546     		mov	r5, r0
 543 000e 12D0     		beq	.L97
 544 0010 40F29A23 		movw	r3, #666
 545 0014 9C42     		cmp	r4, r3
 546 0016 0ED0     		beq	.L97
 547 0018 0368     		ldr	r3, [r0]
 548 001a 0021     		movs	r1, #0
 549 001c 1B68     		ldr	r3, [r3]
 550 001e 9847     		blx	r3
 551 0020 2246     		mov	r2, r4
 552 0022 0346     		mov	r3, r0
 553 0024 0D49     		ldr	r1, .L101
 554 0026 3046     		mov	r0, r6
 555 0028 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 556 002c 049A     		ldr	r2, [sp, #16]
 557 002e 0123     		movs	r3, #1
 558 0030 1370     		strb	r3, [r2]
 559              	.L99:
 560 0032 0020     		movs	r0, #0
 561 0034 70BD     		pop	{r4, r5, r6, pc}
 562              	.L97:
 563 0036 1046     		mov	r0, r2
 564 0038 4B21     		movs	r1, #75
 565 003a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 566 003e 0028     		cmp	r0, #0
 567 0040 F7D1     		bne	.L99
 568 0042 2B68     		ldr	r3, [r5]
 569 0044 0146     		mov	r1, r0
 570 0046 1B68     		ldr	r3, [r3]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 11


 571 0048 2846     		mov	r0, r5
 572 004a 9847     		blx	r3
 573 004c 0449     		ldr	r1, .L101+4
 574 004e 0246     		mov	r2, r0
 575 0050 3046     		mov	r0, r6
 576 0052 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 577 0056 0020     		movs	r0, #0
 578 0058 70BD     		pop	{r4, r5, r6, pc}
 579              	.L102:
 580 005a 00BF     		.align	2
 581              	.L101:
 582 005c 14000000 		.word	.LC6
 583 0060 00000000 		.word	.LC5
 584              		.size	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN10Kinematics9ConfigureEjR11GCo
 585              		.section	.text._ZN10KinematicsC2E14KinematicsTypeffbb,"ax",%progbits
 586              		.align	1
 587              		.p2align 2,,3
 588              		.global	_ZN10KinematicsC2E14KinematicsTypeffbb
 589              		.syntax unified
 590              		.thumb
 591              		.thumb_func
 592              		.fpu fpv4-sp-d16
 593              		.type	_ZN10KinematicsC2E14KinematicsTypeffbb, %function
 594              	_ZN10KinematicsC2E14KinematicsTypeffbb:
 595              		@ args = 0, pretend = 0, frame = 0
 596              		@ frame_needed = 0, uses_anonymous_args = 0
 597 0000 38B5     		push	{r3, r4, r5, lr}
 598 0002 B5EEC00A 		vcmpe.f32	s0, #0
 599 0006 0446     		mov	r4, r0
 600 0008 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 601 000c CCBF     		ite	gt
 602 000e 0120     		movgt	r0, #1
 603 0010 0020     		movle	r0, #0
 604 0012 6273     		strb	r2, [r4, #13]
 605 0014 D8BF     		it	le
 606 0016 0023     		movle	r3, #0
 607 0018 084D     		ldr	r5, .L106
 608 001a 094A     		ldr	r2, .L106+4
 609 001c E173     		strb	r1, [r4, #15]
 610 001e 84ED010A 		vstr.32	s0, [r4, #4]
 611 0022 C4ED020A 		vstr.32	s1, [r4, #8]
 612 0026 2560     		str	r5, [r4]
 613 0028 2073     		strb	r0, [r4, #12]
 614 002a A373     		strb	r3, [r4, #14]
 615 002c 5069     		ldr	r0, [r2, #20]
 616 002e 0549     		ldr	r1, .L106+8
 617 0030 0322     		movs	r2, #3
 618 0032 FFF7FEFF 		bl	_ZN6GCodes21SetMachineAxisLettersEPKch
 619 0036 2046     		mov	r0, r4
 620 0038 38BD     		pop	{r3, r4, r5, pc}
 621              	.L107:
 622 003a 00BF     		.align	2
 623              	.L106:
 624 003c 08000000 		.word	.LANCHOR0+8
 625 0040 00000000 		.word	reprap
 626 0044 00000000 		.word	.LC1
 627              		.size	_ZN10KinematicsC2E14KinematicsTypeffbb, .-_ZN10KinematicsC2E14KinematicsTypeffbb
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 12


 628              		.global	_ZN10KinematicsC1E14KinematicsTypeffbb
 629              		.thumb_set _ZN10KinematicsC1E14KinematicsTypeffbb,_ZN10KinematicsC2E14KinematicsTypeffbb
 630              		.section	.text._ZNK10Kinematics21LimitPositionFromAxisEPfjjm,"ax",%progbits
 631              		.align	1
 632              		.p2align 2,,3
 633              		.global	_ZNK10Kinematics21LimitPositionFromAxisEPfjjm
 634              		.syntax unified
 635              		.thumb
 636              		.thumb_func
 637              		.fpu fpv4-sp-d16
 638              		.type	_ZNK10Kinematics21LimitPositionFromAxisEPfjjm, %function
 639              	_ZNK10Kinematics21LimitPositionFromAxisEPfjjm:
 640              		@ args = 4, pretend = 0, frame = 0
 641              		@ frame_needed = 0, uses_anonymous_args = 0
 642              		@ link register save eliminated.
 643 0000 70B4     		push	{r4, r5, r6}
 644 0002 1748     		ldr	r0, .L125
 645 0004 039E     		ldr	r6, [sp, #12]
 646 0006 4468     		ldr	r4, [r0, #4]
 647 0008 9A42     		cmp	r2, r3
 648 000a 25D2     		bcs	.L115
 649 000c 9000     		lsls	r0, r2, #2
 650 000e 00F5F865 		add	r5, r0, #1984
 651 0012 0144     		add	r1, r1, r0
 652 0014 2C44     		add	r4, r4, r5
 653 0016 0020     		movs	r0, #0
 654              	.L114:
 655 0018 26FA02F5 		lsr	r5, r6, r2
 656 001c ED07     		lsls	r5, r5, #31
 657 001e 12D5     		bpl	.L110
 658 0020 D1ED007A 		vldr.32	s15, [r1]
 659 0024 94ED007A 		vldr.32	s14, [r4]
 660 0028 F4EEC77A 		vcmpe.f32	s15, s14
 661 002c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 662 0030 06D4     		bmi	.L124
 663 0032 14ED097A 		vldr.32	s14, [r4, #-36]
 664 0036 F4EEC77A 		vcmpe.f32	s15, s14
 665 003a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 666 003e 02DD     		ble	.L110
 667              	.L124:
 668 0040 81ED007A 		vstr.32	s14, [r1]
 669 0044 0120     		movs	r0, #1
 670              	.L110:
 671 0046 0132     		adds	r2, r2, #1
 672 0048 9342     		cmp	r3, r2
 673 004a 01F10401 		add	r1, r1, #4
 674 004e 04F10404 		add	r4, r4, #4
 675 0052 E1D1     		bne	.L114
 676 0054 70BC     		pop	{r4, r5, r6}
 677 0056 7047     		bx	lr
 678              	.L115:
 679 0058 0020     		movs	r0, #0
 680 005a 70BC     		pop	{r4, r5, r6}
 681 005c 7047     		bx	lr
 682              	.L126:
 683 005e 00BF     		.align	2
 684              	.L125:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 13


 685 0060 00000000 		.word	reprap
 686              		.size	_ZNK10Kinematics21LimitPositionFromAxisEPfjjm, .-_ZNK10Kinematics21LimitPositionFromAxisEPfj
 687              		.section	.text._ZN10Kinematics6CreateE14KinematicsType,"ax",%progbits
 688              		.align	1
 689              		.p2align 2,,3
 690              		.global	_ZN10Kinematics6CreateE14KinematicsType
 691              		.syntax unified
 692              		.thumb
 693              		.thumb_func
 694              		.fpu fpv4-sp-d16
 695              		.type	_ZN10Kinematics6CreateE14KinematicsType, %function
 696              	_ZN10Kinematics6CreateE14KinematicsType:
 697              		@ args = 0, pretend = 0, frame = 0
 698              		@ frame_needed = 0, uses_anonymous_args = 0
 699 0000 10B5     		push	{r4, lr}
 700 0002 0A28     		cmp	r0, #10
 701 0004 4FD8     		bhi	.L140
 702 0006 DFE800F0 		tbb	[pc, r0]
 703              	.L130:
 704 000a 0E       		.byte	(.L129-.L130)/2
 705 000b 15       		.byte	(.L131-.L130)/2
 706 000c 1C       		.byte	(.L132-.L130)/2
 707 000d 23       		.byte	(.L133-.L130)/2
 708 000e 2A       		.byte	(.L134-.L130)/2
 709 000f 31       		.byte	(.L135-.L130)/2
 710 0010 38       		.byte	(.L136-.L130)/2
 711 0011 40       		.byte	(.L137-.L130)/2
 712 0012 47       		.byte	(.L138-.L130)/2
 713 0013 4E       		.byte	(.L140-.L130)/2
 714 0014 06       		.byte	(.L139-.L130)/2
 715 0015 00       		.p2align 1
 716              	.L139:
 717 0016 A420     		movs	r0, #164
 718 0018 FFF7FEFF 		bl	_Znwj
 719 001c 0446     		mov	r4, r0
 720 001e FFF7FEFF 		bl	_ZN21RotaryDeltaKinematicsC1Ev
 721              	.L127:
 722 0022 2046     		mov	r0, r4
 723 0024 10BD     		pop	{r4, pc}
 724              	.L129:
 725 0026 6020     		movs	r0, #96
 726 0028 FFF7FEFF 		bl	_Znwj
 727 002c 0446     		mov	r4, r0
 728 002e FFF7FEFF 		bl	_ZN19CartesianKinematicsC1Ev
 729 0032 F6E7     		b	.L127
 730              	.L131:
 731 0034 8420     		movs	r0, #132
 732 0036 FFF7FEFF 		bl	_Znwj
 733 003a 0446     		mov	r4, r0
 734 003c FFF7FEFF 		bl	_ZN16CoreXYKinematicsC1Ev
 735 0040 EFE7     		b	.L127
 736              	.L132:
 737 0042 8420     		movs	r0, #132
 738 0044 FFF7FEFF 		bl	_Znwj
 739 0048 0446     		mov	r4, r0
 740 004a FFF7FEFF 		bl	_ZN16CoreXZKinematicsC1Ev
 741 004e E8E7     		b	.L127
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 14


 742              	.L133:
 743 0050 9420     		movs	r0, #148
 744 0052 FFF7FEFF 		bl	_Znwj
 745 0056 0446     		mov	r4, r0
 746 0058 FFF7FEFF 		bl	_ZN21LinearDeltaKinematicsC1Ev
 747 005c E1E7     		b	.L127
 748              	.L134:
 749 005e C020     		movs	r0, #192
 750 0060 FFF7FEFF 		bl	_Znwj
 751 0064 0446     		mov	r4, r0
 752 0066 FFF7FEFF 		bl	_ZN15ScaraKinematicsC1Ev
 753 006a DAE7     		b	.L127
 754              	.L135:
 755 006c 8420     		movs	r0, #132
 756 006e FFF7FEFF 		bl	_Znwj
 757 0072 0446     		mov	r4, r0
 758 0074 FFF7FEFF 		bl	_ZN17CoreXYUKinematicsC1Ev
 759 0078 D3E7     		b	.L127
 760              	.L136:
 761 007a 4FF4AE70 		mov	r0, #348
 762 007e FFF7FEFF 		bl	_Znwj
 763 0082 0446     		mov	r4, r0
 764 0084 FFF7FEFF 		bl	_ZN21HangprinterKinematicsC1Ev
 765 0088 CBE7     		b	.L127
 766              	.L137:
 767 008a 2C20     		movs	r0, #44
 768 008c FFF7FEFF 		bl	_Znwj
 769 0090 0446     		mov	r4, r0
 770 0092 FFF7FEFF 		bl	_ZN15PolarKinematicsC1Ev
 771 0096 C4E7     		b	.L127
 772              	.L138:
 773 0098 8420     		movs	r0, #132
 774 009a FFF7FEFF 		bl	_Znwj
 775 009e 0446     		mov	r4, r0
 776 00a0 FFF7FEFF 		bl	_ZN18CoreXYUVKinematicsC1Ev
 777 00a4 BDE7     		b	.L127
 778              	.L140:
 779 00a6 0024     		movs	r4, #0
 780 00a8 BBE7     		b	.L127
 781              		.size	_ZN10Kinematics6CreateE14KinematicsType, .-_ZN10Kinematics6CreateE14KinematicsType
 782 00aa 00BF     		.section	.text._ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj,"ax",%progbits
 783              		.align	1
 784              		.p2align 2,,3
 785              		.global	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 786              		.syntax unified
 787              		.thumb
 788              		.thumb_func
 789              		.fpu fpv4-sp-d16
 790              		.type	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj, %function
 791              	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj:
 792              		@ args = 0, pretend = 0, frame = 0
 793              		@ frame_needed = 0, uses_anonymous_args = 0
 794 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 795 0004 0D46     		mov	r5, r1
 796 0006 82B0     		sub	sp, sp, #8
 797 0008 9246     		mov	r10, r2
 798 000a 0146     		mov	r1, r0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 15


 799 000c 1C48     		ldr	r0, .L162
 800 000e 1F46     		mov	r7, r3
 801 0010 FFF7FEFF 		bl	debugPrintf
 802 0014 BAF1000F 		cmp	r10, #0
 803 0018 29D0     		beq	.L160
 804 001a 17B3     		cbz	r7, .L161
 805              	.L144:
 806 001c BAF1000F 		cmp	r10, #0
 807 0020 1CD0     		beq	.L142
 808 0022 DFF86090 		ldr	r9, .L162+4
 809 0026 0026     		movs	r6, #0
 810 0028 07F1FF38 		add	r8, r7, #-1
 811              	.L149:
 812 002c 9FB1     		cbz	r7, .L146
 813 002e 0024     		movs	r4, #0
 814              	.L148:
 815 0030 2B68     		ldr	r3, [r5]
 816 0032 2246     		mov	r2, r4
 817 0034 DB68     		ldr	r3, [r3, #12]
 818 0036 3146     		mov	r1, r6
 819 0038 2846     		mov	r0, r5
 820 003a 9847     		blx	r3
 821 003c A045     		cmp	r8, r4
 822 003e 14BF     		ite	ne
 823 0040 2021     		movne	r1, #32
 824 0042 0A21     		moveq	r1, #10
 825 0044 D0E90023 		ldrd	r2, [r0]
 826 0048 0134     		adds	r4, r4, #1
 827 004a 0091     		str	r1, [sp]
 828 004c 4846     		mov	r0, r9
 829 004e FFF7FEFF 		bl	debugPrintf
 830 0052 A742     		cmp	r7, r4
 831 0054 ECD1     		bne	.L148
 832              	.L146:
 833 0056 0136     		adds	r6, r6, #1
 834 0058 B245     		cmp	r10, r6
 835 005a E7D1     		bne	.L149
 836              	.L142:
 837 005c 02B0     		add	sp, sp, #8
 838              		@ sp needed
 839 005e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 840              	.L161:
 841 0062 2B68     		ldr	r3, [r5]
 842 0064 2846     		mov	r0, r5
 843 0066 5B68     		ldr	r3, [r3, #4]
 844 0068 9847     		blx	r3
 845 006a 0746     		mov	r7, r0
 846 006c D6E7     		b	.L144
 847              	.L160:
 848 006e 2B68     		ldr	r3, [r5]
 849 0070 2846     		mov	r0, r5
 850 0072 1B68     		ldr	r3, [r3]
 851 0074 9847     		blx	r3
 852 0076 8246     		mov	r10, r0
 853 0078 002F     		cmp	r7, #0
 854 007a CFD1     		bne	.L144
 855 007c F1E7     		b	.L161
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 16


 856              	.L163:
 857 007e 00BF     		.align	2
 858              	.L162:
 859 0080 00000000 		.word	.LC7
 860 0084 04000000 		.word	.LC8
 861              		.size	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj, .-_ZN10Kinematics11PrintMatrixEPKcRK10M
 862              		.section	.text._ZN10Kinematics11PrintVectorEPKcPKdj,"ax",%progbits
 863              		.align	1
 864              		.p2align 2,,3
 865              		.global	_ZN10Kinematics11PrintVectorEPKcPKdj
 866              		.syntax unified
 867              		.thumb
 868              		.thumb_func
 869              		.fpu fpv4-sp-d16
 870              		.type	_ZN10Kinematics11PrintVectorEPKcPKdj, %function
 871              	_ZN10Kinematics11PrintVectorEPKcPKdj:
 872              		@ args = 0, pretend = 0, frame = 0
 873              		@ frame_needed = 0, uses_anonymous_args = 0
 874 0000 70B5     		push	{r4, r5, r6, lr}
 875 0002 0C46     		mov	r4, r1
 876 0004 1546     		mov	r5, r2
 877 0006 0146     		mov	r1, r0
 878 0008 0948     		ldr	r0, .L172
 879 000a FFF7FEFF 		bl	debugPrintf
 880 000e 4DB1     		cbz	r5, .L165
 881 0010 084E     		ldr	r6, .L172+4
 882 0012 04EBC505 		add	r5, r4, r5, lsl #3
 883              	.L166:
 884 0016 F4E80223 		ldrd	r2, [r4], #8
 885 001a 3046     		mov	r0, r6
 886 001c FFF7FEFF 		bl	debugPrintf
 887 0020 AC42     		cmp	r4, r5
 888 0022 F8D1     		bne	.L166
 889              	.L165:
 890 0024 0448     		ldr	r0, .L172+8
 891 0026 BDE87040 		pop	{r4, r5, r6, lr}
 892 002a FFF7FEBF 		b	debugPrintf
 893              	.L173:
 894 002e 00BF     		.align	2
 895              	.L172:
 896 0030 00000000 		.word	.LC9
 897 0034 04000000 		.word	.LC10
 898 0038 0C000000 		.word	.LC11
 899              		.size	_ZN10Kinematics11PrintVectorEPKcPKdj, .-_ZN10Kinematics11PrintVectorEPKcPKdj
 900              		.global	_ZTV10Kinematics
 901              		.global	_ZN10Kinematics15HomeAllFileNameE
 902              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 903              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 904              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 905              	_ZL28cpu_irq_prev_interrupt_state:
 906 0000 00       		.space	1
 907              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 908              		.align	2
 909              		.type	_ZL32cpu_irq_critical_section_counter, %object
 910              		.size	_ZL32cpu_irq_critical_section_counter, 4
 911              	_ZL32cpu_irq_critical_section_counter:
 912 0000 00000000 		.space	4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 17


 913              		.section	.rodata._ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj.str1.4,"aMS",%progbits,1
 914              		.align	2
 915              	.LC7:
 916 0000 25730A00 		.ascii	"%s\012\000"
 917              	.LC8:
 918 0004 25372E34 		.ascii	"%7.4f%c\000"
 918      66256300 
 919              		.section	.rodata._ZN10Kinematics11PrintVectorEPKcPKdj.str1.4,"aMS",%progbits,1
 920              		.align	2
 921              	.LC9:
 922 0000 25733A00 		.ascii	"%s:\000"
 923              	.LC10:
 924 0004 2025372E 		.ascii	" %7.4f\000"
 924      346600
 925 000b 00       		.space	1
 926              	.LC11:
 927 000c 0A00     		.ascii	"\012\000"
 928              		.section	.rodata._ZN10Kinematics15HomeAllFileNameE,"a",%progbits
 929              		.align	2
 930              		.type	_ZN10Kinematics15HomeAllFileNameE, %object
 931              		.size	_ZN10Kinematics15HomeAllFileNameE, 4
 932              	_ZN10Kinematics15HomeAllFileNameE:
 933 0000 00000000 		.word	.LC2
 934              		.section	.rodata._ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%progbits,1
 935              		.align	2
 936              	.LC5:
 937 0000 4B696E65 		.ascii	"Kinematics is %s\000"
 937      6D617469 
 937      63732069 
 937      73202573 
 937      00
 938 0011 000000   		.space	3
 939              	.LC6:
 940 0014 4D257520 		.ascii	"M%u parameters do not apply to %s kinematics\000"
 940      70617261 
 940      6D657465 
 940      72732064 
 940      6F206E6F 
 941              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 942              		.align	2
 943              	.LC1:
 944 0000 58595A00 		.ascii	"XYZ\000"
 945              		.section	.rodata._ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef.str1.4,"aMS",%progbits,1
 946              		.align	2
 947              	.LC2:
 948 0000 686F6D65 		.ascii	"homeall.g\000"
 948      616C6C2E 
 948      6700
 949 000a 0000     		.space	2
 950              	.LC3:
 951 000c 686F6D65 		.ascii	"home\000"
 951      00
 952 0011 000000   		.space	3
 953              	.LC4:
 954 0014 2E6700   		.ascii	".g\000"
 955              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 956              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccw3wjcu.s 			page 18


 957              	.LC0:
 958 0000 58595A55 		.ascii	"XYZUVWABC\000"
 958      56574142 
 958      4300
 959              		.section	.rodata._ZTV10Kinematics,"a",%progbits
 960              		.align	2
 961              		.set	.LANCHOR0,. + 0
 962              		.type	_ZTV10Kinematics, %object
 963              		.size	_ZTV10Kinematics, 128
 964              	_ZTV10Kinematics:
 965 0000 00000000 		.word	0
 966 0004 00000000 		.word	0
 967 0008 00000000 		.word	__cxa_pure_virtual
 968 000c 00000000 		.word	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 969 0010 00000000 		.word	__cxa_pure_virtual
 970 0014 00000000 		.word	__cxa_pure_virtual
 971 0018 00000000 		.word	_ZNK10Kinematics23SupportsAutoCalibrationEv
 972 001c 00000000 		.word	_ZN10Kinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 973 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 974 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 975 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 976 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 977 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 978 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 979 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 980 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 981 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 982 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 983 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 984 004c 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef
 985 0050 00000000 		.word	__cxa_pure_virtual
 986 0054 00000000 		.word	__cxa_pure_virtual
 987 0058 00000000 		.word	__cxa_pure_virtual
 988 005c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 989 0060 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 990 0064 00000000 		.word	_ZNK10Kinematics19WriteResumeSettingsEP9FileStore
 991 0068 00000000 		.word	__cxa_pure_virtual
 992 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 993 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 994 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 995 0078 00000000 		.word	0
 996 007c 00000000 		.word	0
 997              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
