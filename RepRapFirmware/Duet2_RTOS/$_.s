ARM GAS  /tmp/ccxvJMdy.s 			page 1


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
  13              		.file	"ZLeadscrewKinematics.cpp"
  14              		.section	.text._ZN10Kinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN10Kinematics22SetCalib
  15              		.align	1
  16              		.p2align 2,,3
  17              		.weak	_ZN10Kinematics22SetCalibrationDefaultsEv
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  22              		.type	_ZN10Kinematics22SetCalibrationDefaultsEv, %function
  23              	_ZN10Kinematics22SetCalibrationDefaultsEv:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26              		@ link register save eliminated.
  27 0000 7047     		bx	lr
  28              		.size	_ZN10Kinematics22SetCalibrationDefaultsEv, .-_ZN10Kinematics22SetCalibrationDefaultsEv
  29 0002 00BF     		.section	.text._ZNK10Kinematics26WriteCalibrationParametersEP9FileStore,"axG",%progbits,_ZNK10Kine
  30              		.align	1
  31              		.p2align 2,,3
  32              		.weak	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
  33              		.syntax unified
  34              		.thumb
  35              		.thumb_func
  36              		.fpu fpv4-sp-d16
  37              		.type	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, %function
  38              	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41              		@ link register save eliminated.
  42 0000 0120     		movs	r0, #1
  43 0002 7047     		bx	lr
  44              		.size	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK10Kinematics26WriteCalibrati
  45              		.section	.text._ZNK10Kinematics17GetTiltCorrectionEj,"axG",%progbits,_ZNK10Kinematics17GetTiltCorr
  46              		.align	1
  47              		.p2align 2,,3
  48              		.weak	_ZNK10Kinematics17GetTiltCorrectionEj
  49              		.syntax unified
  50              		.thumb
  51              		.thumb_func
  52              		.fpu fpv4-sp-d16
  53              		.type	_ZNK10Kinematics17GetTiltCorrectionEj, %function
  54              	_ZNK10Kinematics17GetTiltCorrectionEj:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57              		@ link register save eliminated.
ARM GAS  /tmp/ccxvJMdy.s 			page 2


  58 0000 9FED010A 		vldr.32	s0, .L5
  59 0004 7047     		bx	lr
  60              	.L6:
  61 0006 00BF     		.align	2
  62              	.L5:
  63 0008 00000000 		.word	0
  64              		.size	_ZNK10Kinematics17GetTiltCorrectionEj, .-_ZNK10Kinematics17GetTiltCorrectionEj
  65              		.section	.text._ZNK10Kinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK10Kinematics23AxesT
  66              		.align	1
  67              		.p2align 2,,3
  68              		.weak	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  69              		.syntax unified
  70              		.thumb
  71              		.thumb_func
  72              		.fpu fpv4-sp-d16
  73              		.type	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, %function
  74              	_ZNK10Kinematics23AxesToHomeBeforeProbingEv:
  75              		@ args = 0, pretend = 0, frame = 0
  76              		@ frame_needed = 0, uses_anonymous_args = 0
  77              		@ link register save eliminated.
  78 0000 0320     		movs	r0, #3
  79 0002 7047     		bx	lr
  80              		.size	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, .-_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  81              		.section	.text._ZNK10Kinematics13GetMotionTypeEj,"axG",%progbits,_ZNK10Kinematics13GetMotionTypeEj
  82              		.align	1
  83              		.p2align 2,,3
  84              		.weak	_ZNK10Kinematics13GetMotionTypeEj
  85              		.syntax unified
  86              		.thumb
  87              		.thumb_func
  88              		.fpu fpv4-sp-d16
  89              		.type	_ZNK10Kinematics13GetMotionTypeEj, %function
  90              	_ZNK10Kinematics13GetMotionTypeEj:
  91              		@ args = 0, pretend = 0, frame = 0
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93              		@ link register save eliminated.
  94 0000 0020     		movs	r0, #0
  95 0002 7047     		bx	lr
  96              		.size	_ZNK10Kinematics13GetMotionTypeEj, .-_ZNK10Kinematics13GetMotionTypeEj
  97              		.section	.text._ZNK10Kinematics16NumHomingButtonsEj,"axG",%progbits,_ZNK10Kinematics16NumHomingBut
  98              		.align	1
  99              		.p2align 2,,3
 100              		.weak	_ZNK10Kinematics16NumHomingButtonsEj
 101              		.syntax unified
 102              		.thumb
 103              		.thumb_func
 104              		.fpu fpv4-sp-d16
 105              		.type	_ZNK10Kinematics16NumHomingButtonsEj, %function
 106              	_ZNK10Kinematics16NumHomingButtonsEj:
 107              		@ args = 0, pretend = 0, frame = 0
 108              		@ frame_needed = 0, uses_anonymous_args = 0
 109              		@ link register save eliminated.
 110 0000 0846     		mov	r0, r1
 111 0002 7047     		bx	lr
 112              		.size	_ZNK10Kinematics16NumHomingButtonsEj, .-_ZNK10Kinematics16NumHomingButtonsEj
 113              		.section	.text._ZNK10Kinematics17HomingButtonNamesEv,"axG",%progbits,_ZNK10Kinematics17HomingButto
 114              		.align	1
ARM GAS  /tmp/ccxvJMdy.s 			page 3


 115              		.p2align 2,,3
 116              		.weak	_ZNK10Kinematics17HomingButtonNamesEv
 117              		.syntax unified
 118              		.thumb
 119              		.thumb_func
 120              		.fpu fpv4-sp-d16
 121              		.type	_ZNK10Kinematics17HomingButtonNamesEv, %function
 122              	_ZNK10Kinematics17HomingButtonNamesEv:
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125              		@ link register save eliminated.
 126 0000 0048     		ldr	r0, .L11
 127 0002 7047     		bx	lr
 128              	.L12:
 129              		.align	2
 130              	.L11:
 131 0004 00000000 		.word	.LC0
 132              		.size	_ZNK10Kinematics17HomingButtonNamesEv, .-_ZNK10Kinematics17HomingButtonNamesEv
 133              		.section	.text._ZNK10Kinematics16AxesAssumedHomedEm,"axG",%progbits,_ZNK10Kinematics16AxesAssumedH
 134              		.align	1
 135              		.p2align 2,,3
 136              		.weak	_ZNK10Kinematics16AxesAssumedHomedEm
 137              		.syntax unified
 138              		.thumb
 139              		.thumb_func
 140              		.fpu fpv4-sp-d16
 141              		.type	_ZNK10Kinematics16AxesAssumedHomedEm, %function
 142              	_ZNK10Kinematics16AxesAssumedHomedEm:
 143              		@ args = 0, pretend = 0, frame = 0
 144              		@ frame_needed = 0, uses_anonymous_args = 0
 145              		@ link register save eliminated.
 146 0000 0846     		mov	r0, r1
 147 0002 7047     		bx	lr
 148              		.size	_ZNK10Kinematics16AxesAssumedHomedEm, .-_ZNK10Kinematics16AxesAssumedHomedEm
 149              		.section	.text._ZNK10Kinematics15MustBeHomedAxesEmb,"axG",%progbits,_ZNK10Kinematics15MustBeHomedA
 150              		.align	1
 151              		.p2align 2,,3
 152              		.weak	_ZNK10Kinematics15MustBeHomedAxesEmb
 153              		.syntax unified
 154              		.thumb
 155              		.thumb_func
 156              		.fpu fpv4-sp-d16
 157              		.type	_ZNK10Kinematics15MustBeHomedAxesEmb, %function
 158              	_ZNK10Kinematics15MustBeHomedAxesEmb:
 159              		@ args = 0, pretend = 0, frame = 0
 160              		@ frame_needed = 0, uses_anonymous_args = 0
 161              		@ link register save eliminated.
 162 0000 002A     		cmp	r2, #0
 163 0002 14BF     		ite	ne
 164 0004 0846     		movne	r0, r1
 165 0006 0020     		moveq	r0, #0
 166 0008 7047     		bx	lr
 167              		.size	_ZNK10Kinematics15MustBeHomedAxesEmb, .-_ZNK10Kinematics15MustBeHomedAxesEmb
 168 000a 00BF     		.section	.text._ZNK10Kinematics24IsContinuousRotationAxisEj,"axG",%progbits,_ZNK10Kinematics24IsCo
 169              		.align	1
 170              		.p2align 2,,3
 171              		.weak	_ZNK10Kinematics24IsContinuousRotationAxisEj
ARM GAS  /tmp/ccxvJMdy.s 			page 4


 172              		.syntax unified
 173              		.thumb
 174              		.thumb_func
 175              		.fpu fpv4-sp-d16
 176              		.type	_ZNK10Kinematics24IsContinuousRotationAxisEj, %function
 177              	_ZNK10Kinematics24IsContinuousRotationAxisEj:
 178              		@ args = 0, pretend = 0, frame = 0
 179              		@ frame_needed = 0, uses_anonymous_args = 0
 180              		@ link register save eliminated.
 181 0000 0020     		movs	r0, #0
 182 0002 7047     		bx	lr
 183              		.size	_ZNK10Kinematics24IsContinuousRotationAxisEj, .-_ZNK10Kinematics24IsContinuousRotationAxisEj
 184              		.section	.text._ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv,"ax",%progbits
 185              		.align	1
 186              		.p2align 2,,3
 187              		.global	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 188              		.syntax unified
 189              		.thumb
 190              		.thumb_func
 191              		.fpu fpv4-sp-d16
 192              		.type	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv, %function
 193              	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv:
 194              		@ args = 0, pretend = 0, frame = 0
 195              		@ frame_needed = 0, uses_anonymous_args = 0
 196              		@ link register save eliminated.
 197 0000 0069     		ldr	r0, [r0, #16]
 198 0002 0128     		cmp	r0, #1
 199 0004 94BF     		ite	ls
 200 0006 0020     		movls	r0, #0
 201 0008 0120     		movhi	r0, #1
 202 000a 7047     		bx	lr
 203              		.size	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv, .-_ZNK20ZLeadscrewKinematics23Support
 204              		.section	.text._ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore,"ax",%progbits
 205              		.align	1
 206              		.p2align 2,,3
 207              		.global	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 208              		.syntax unified
 209              		.thumb
 210              		.thumb_func
 211              		.fpu fpv4-sp-d16
 212              		.type	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore, %function
 213              	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore:
 214              		@ args = 0, pretend = 0, frame = 0
 215              		@ frame_needed = 0, uses_anonymous_args = 0
 216              		@ link register save eliminated.
 217 0000 0120     		movs	r0, #1
 218 0002 7047     		bx	lr
 219              		.size	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore, .-_ZNK20ZLeadscrewKinematics19W
 220              		.section	.text._ZN11FixedMatrixIdLj32ELj4EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj4EEclEjj
 221              		.align	1
 222              		.p2align 2,,3
 223              		.weak	_ZN11FixedMatrixIdLj32ELj4EEclEjj
 224              		.syntax unified
 225              		.thumb
 226              		.thumb_func
 227              		.fpu fpv4-sp-d16
 228              		.type	_ZN11FixedMatrixIdLj32ELj4EEclEjj, %function
ARM GAS  /tmp/ccxvJMdy.s 			page 5


 229              	_ZN11FixedMatrixIdLj32ELj4EEclEjj:
 230              		@ args = 0, pretend = 0, frame = 0
 231              		@ frame_needed = 0, uses_anonymous_args = 0
 232              		@ link register save eliminated.
 233 0000 0132     		adds	r2, r2, #1
 234 0002 02EB8102 		add	r2, r2, r1, lsl #2
 235 0006 00EBC200 		add	r0, r0, r2, lsl #3
 236 000a 7047     		bx	lr
 237              		.size	_ZN11FixedMatrixIdLj32ELj4EEclEjj, .-_ZN11FixedMatrixIdLj32ELj4EEclEjj
 238              		.section	.text._ZN11FixedMatrixIdLj4ELj5EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj4ELj5EEclEjj,c
 239              		.align	1
 240              		.p2align 2,,3
 241              		.weak	_ZN11FixedMatrixIdLj4ELj5EEclEjj
 242              		.syntax unified
 243              		.thumb
 244              		.thumb_func
 245              		.fpu fpv4-sp-d16
 246              		.type	_ZN11FixedMatrixIdLj4ELj5EEclEjj, %function
 247              	_ZN11FixedMatrixIdLj4ELj5EEclEjj:
 248              		@ args = 0, pretend = 0, frame = 0
 249              		@ frame_needed = 0, uses_anonymous_args = 0
 250              		@ link register save eliminated.
 251 0000 0132     		adds	r2, r2, #1
 252 0002 01EB8101 		add	r1, r1, r1, lsl #2
 253 0006 1144     		add	r1, r1, r2
 254 0008 00EBC100 		add	r0, r0, r1, lsl #3
 255 000c 7047     		bx	lr
 256              		.size	_ZN11FixedMatrixIdLj4ELj5EEclEjj, .-_ZN11FixedMatrixIdLj4ELj5EEclEjj
 257 000e 00BF     		.section	.text._ZN11FixedMatrixIdLj4ELj5EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj4ELj5EED5Ev,com
 258              		.align	1
 259              		.p2align 2,,3
 260              		.weak	_ZN11FixedMatrixIdLj4ELj5EED2Ev
 261              		.syntax unified
 262              		.thumb
 263              		.thumb_func
 264              		.fpu fpv4-sp-d16
 265              		.type	_ZN11FixedMatrixIdLj4ELj5EED2Ev, %function
 266              	_ZN11FixedMatrixIdLj4ELj5EED2Ev:
 267              		@ args = 0, pretend = 0, frame = 0
 268              		@ frame_needed = 0, uses_anonymous_args = 0
 269              		@ link register save eliminated.
 270 0000 7047     		bx	lr
 271              		.size	_ZN11FixedMatrixIdLj4ELj5EED2Ev, .-_ZN11FixedMatrixIdLj4ELj5EED2Ev
 272              		.weak	_ZN11FixedMatrixIdLj4ELj5EED1Ev
 273              		.thumb_set _ZN11FixedMatrixIdLj4ELj5EED1Ev,_ZN11FixedMatrixIdLj4ELj5EED2Ev
 274 0002 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj4EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj4EED5Ev,c
 275              		.align	1
 276              		.p2align 2,,3
 277              		.weak	_ZN11FixedMatrixIdLj32ELj4EED2Ev
 278              		.syntax unified
 279              		.thumb
 280              		.thumb_func
 281              		.fpu fpv4-sp-d16
 282              		.type	_ZN11FixedMatrixIdLj32ELj4EED2Ev, %function
 283              	_ZN11FixedMatrixIdLj32ELj4EED2Ev:
 284              		@ args = 0, pretend = 0, frame = 0
 285              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccxvJMdy.s 			page 6


 286              		@ link register save eliminated.
 287 0000 7047     		bx	lr
 288              		.size	_ZN11FixedMatrixIdLj32ELj4EED2Ev, .-_ZN11FixedMatrixIdLj32ELj4EED2Ev
 289              		.weak	_ZN11FixedMatrixIdLj32ELj4EED1Ev
 290              		.thumb_set _ZN11FixedMatrixIdLj32ELj4EED1Ev,_ZN11FixedMatrixIdLj32ELj4EED2Ev
 291 0002 00BF     		.section	.text._ZNK11FixedMatrixIdLj4ELj5EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj4ELj5EE4ro
 292              		.align	1
 293              		.p2align 2,,3
 294              		.weak	_ZNK11FixedMatrixIdLj4ELj5EE4rowsEv
 295              		.syntax unified
 296              		.thumb
 297              		.thumb_func
 298              		.fpu fpv4-sp-d16
 299              		.type	_ZNK11FixedMatrixIdLj4ELj5EE4rowsEv, %function
 300              	_ZNK11FixedMatrixIdLj4ELj5EE4rowsEv:
 301              		@ args = 0, pretend = 0, frame = 0
 302              		@ frame_needed = 0, uses_anonymous_args = 0
 303              		@ link register save eliminated.
 304 0000 0420     		movs	r0, #4
 305 0002 7047     		bx	lr
 306              		.size	_ZNK11FixedMatrixIdLj4ELj5EE4rowsEv, .-_ZNK11FixedMatrixIdLj4ELj5EE4rowsEv
 307              		.section	.text._ZNK11FixedMatrixIdLj4ELj5EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj4ELj5EE4co
 308              		.align	1
 309              		.p2align 2,,3
 310              		.weak	_ZNK11FixedMatrixIdLj4ELj5EE4colsEv
 311              		.syntax unified
 312              		.thumb
 313              		.thumb_func
 314              		.fpu fpv4-sp-d16
 315              		.type	_ZNK11FixedMatrixIdLj4ELj5EE4colsEv, %function
 316              	_ZNK11FixedMatrixIdLj4ELj5EE4colsEv:
 317              		@ args = 0, pretend = 0, frame = 0
 318              		@ frame_needed = 0, uses_anonymous_args = 0
 319              		@ link register save eliminated.
 320 0000 0520     		movs	r0, #5
 321 0002 7047     		bx	lr
 322              		.size	_ZNK11FixedMatrixIdLj4ELj5EE4colsEv, .-_ZNK11FixedMatrixIdLj4ELj5EE4colsEv
 323              		.section	.text._ZNK11FixedMatrixIdLj4ELj5EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj4ELj5EEclEjj
 324              		.align	1
 325              		.p2align 2,,3
 326              		.weak	_ZNK11FixedMatrixIdLj4ELj5EEclEjj
 327              		.syntax unified
 328              		.thumb
 329              		.thumb_func
 330              		.fpu fpv4-sp-d16
 331              		.type	_ZNK11FixedMatrixIdLj4ELj5EEclEjj, %function
 332              	_ZNK11FixedMatrixIdLj4ELj5EEclEjj:
 333              		@ args = 0, pretend = 0, frame = 0
 334              		@ frame_needed = 0, uses_anonymous_args = 0
 335              		@ link register save eliminated.
 336 0000 0132     		adds	r2, r2, #1
 337 0002 01EB8101 		add	r1, r1, r1, lsl #2
 338 0006 1144     		add	r1, r1, r2
 339 0008 00EBC100 		add	r0, r0, r1, lsl #3
 340 000c 7047     		bx	lr
 341              		.size	_ZNK11FixedMatrixIdLj4ELj5EEclEjj, .-_ZNK11FixedMatrixIdLj4ELj5EEclEjj
 342 000e 00BF     		.section	.text._ZNK11FixedMatrixIdLj32ELj4EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj4EE4
ARM GAS  /tmp/ccxvJMdy.s 			page 7


 343              		.align	1
 344              		.p2align 2,,3
 345              		.weak	_ZNK11FixedMatrixIdLj32ELj4EE4rowsEv
 346              		.syntax unified
 347              		.thumb
 348              		.thumb_func
 349              		.fpu fpv4-sp-d16
 350              		.type	_ZNK11FixedMatrixIdLj32ELj4EE4rowsEv, %function
 351              	_ZNK11FixedMatrixIdLj32ELj4EE4rowsEv:
 352              		@ args = 0, pretend = 0, frame = 0
 353              		@ frame_needed = 0, uses_anonymous_args = 0
 354              		@ link register save eliminated.
 355 0000 2020     		movs	r0, #32
 356 0002 7047     		bx	lr
 357              		.size	_ZNK11FixedMatrixIdLj32ELj4EE4rowsEv, .-_ZNK11FixedMatrixIdLj32ELj4EE4rowsEv
 358              		.section	.text._ZNK11FixedMatrixIdLj32ELj4EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj4EE4
 359              		.align	1
 360              		.p2align 2,,3
 361              		.weak	_ZNK11FixedMatrixIdLj32ELj4EE4colsEv
 362              		.syntax unified
 363              		.thumb
 364              		.thumb_func
 365              		.fpu fpv4-sp-d16
 366              		.type	_ZNK11FixedMatrixIdLj32ELj4EE4colsEv, %function
 367              	_ZNK11FixedMatrixIdLj32ELj4EE4colsEv:
 368              		@ args = 0, pretend = 0, frame = 0
 369              		@ frame_needed = 0, uses_anonymous_args = 0
 370              		@ link register save eliminated.
 371 0000 0420     		movs	r0, #4
 372 0002 7047     		bx	lr
 373              		.size	_ZNK11FixedMatrixIdLj32ELj4EE4colsEv, .-_ZNK11FixedMatrixIdLj32ELj4EE4colsEv
 374              		.section	.text._ZNK11FixedMatrixIdLj32ELj4EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj4EEclE
 375              		.align	1
 376              		.p2align 2,,3
 377              		.weak	_ZNK11FixedMatrixIdLj32ELj4EEclEjj
 378              		.syntax unified
 379              		.thumb
 380              		.thumb_func
 381              		.fpu fpv4-sp-d16
 382              		.type	_ZNK11FixedMatrixIdLj32ELj4EEclEjj, %function
 383              	_ZNK11FixedMatrixIdLj32ELj4EEclEjj:
 384              		@ args = 0, pretend = 0, frame = 0
 385              		@ frame_needed = 0, uses_anonymous_args = 0
 386              		@ link register save eliminated.
 387 0000 0132     		adds	r2, r2, #1
 388 0002 02EB8102 		add	r2, r2, r1, lsl #2
 389 0006 00EBC200 		add	r0, r0, r2, lsl #3
 390 000a 7047     		bx	lr
 391              		.size	_ZNK11FixedMatrixIdLj32ELj4EEclEjj, .-_ZNK11FixedMatrixIdLj32ELj4EEclEjj
 392              		.section	.text._ZN11FixedMatrixIdLj32ELj4EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj4EED5Ev,c
 393              		.align	1
 394              		.p2align 2,,3
 395              		.weak	_ZN11FixedMatrixIdLj32ELj4EED0Ev
 396              		.syntax unified
 397              		.thumb
 398              		.thumb_func
 399              		.fpu fpv4-sp-d16
ARM GAS  /tmp/ccxvJMdy.s 			page 8


 400              		.type	_ZN11FixedMatrixIdLj32ELj4EED0Ev, %function
 401              	_ZN11FixedMatrixIdLj32ELj4EED0Ev:
 402              		@ args = 0, pretend = 0, frame = 0
 403              		@ frame_needed = 0, uses_anonymous_args = 0
 404 0000 10B5     		push	{r4, lr}
 405 0002 4FF48161 		mov	r1, #1032
 406 0006 0446     		mov	r4, r0
 407 0008 FFF7FEFF 		bl	_ZdlPvj
 408 000c 2046     		mov	r0, r4
 409 000e 10BD     		pop	{r4, pc}
 410              		.size	_ZN11FixedMatrixIdLj32ELj4EED0Ev, .-_ZN11FixedMatrixIdLj32ELj4EED0Ev
 411              		.section	.text._ZN11FixedMatrixIdLj4ELj5EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj4ELj5EED5Ev,com
 412              		.align	1
 413              		.p2align 2,,3
 414              		.weak	_ZN11FixedMatrixIdLj4ELj5EED0Ev
 415              		.syntax unified
 416              		.thumb
 417              		.thumb_func
 418              		.fpu fpv4-sp-d16
 419              		.type	_ZN11FixedMatrixIdLj4ELj5EED0Ev, %function
 420              	_ZN11FixedMatrixIdLj4ELj5EED0Ev:
 421              		@ args = 0, pretend = 0, frame = 0
 422              		@ frame_needed = 0, uses_anonymous_args = 0
 423 0000 10B5     		push	{r4, lr}
 424 0002 A821     		movs	r1, #168
 425 0004 0446     		mov	r4, r0
 426 0006 FFF7FEFF 		bl	_ZdlPvj
 427 000a 2046     		mov	r0, r4
 428 000c 10BD     		pop	{r4, pc}
 429              		.size	_ZN11FixedMatrixIdLj4ELj5EED0Ev, .-_ZN11FixedMatrixIdLj4ELj5EED0Ev
 430 000e 00BF     		.section	.text._ZN20ZLeadscrewKinematicsC2E14KinematicsType,"ax",%progbits
 431              		.align	1
 432              		.p2align 2,,3
 433              		.global	_ZN20ZLeadscrewKinematicsC2E14KinematicsType
 434              		.syntax unified
 435              		.thumb
 436              		.thumb_func
 437              		.fpu fpv4-sp-d16
 438              		.type	_ZN20ZLeadscrewKinematicsC2E14KinematicsType, %function
 439              	_ZN20ZLeadscrewKinematicsC2E14KinematicsType:
 440              		@ args = 0, pretend = 0, frame = 0
 441              		@ frame_needed = 0, uses_anonymous_args = 0
 442 0000 10B5     		push	{r4, lr}
 443 0002 0122     		movs	r2, #1
 444 0004 0446     		mov	r4, r0
 445 0006 DFED090A 		vldr.32	s1, .L36
 446 000a BFEE000A 		vmov.f32	s0, #-1.0e+0
 447 000e FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffb
 448 0012 074B     		ldr	r3, .L36+4
 449 0014 2360     		str	r3, [r4]
 450 0016 0021     		movs	r1, #0
 451 0018 4FF07E53 		mov	r3, #1065353216
 452 001c 4FF07C52 		mov	r2, #1056964608
 453 0020 2161     		str	r1, [r4, #16]
 454 0022 E263     		str	r2, [r4, #60]	@ float
 455 0024 6363     		str	r3, [r4, #52]	@ float
 456 0026 A363     		str	r3, [r4, #56]	@ float
ARM GAS  /tmp/ccxvJMdy.s 			page 9


 457 0028 2046     		mov	r0, r4
 458 002a 10BD     		pop	{r4, pc}
 459              	.L37:
 460              		.align	2
 461              	.L36:
 462 002c 00000000 		.word	0
 463 0030 08000000 		.word	.LANCHOR0+8
 464              		.size	_ZN20ZLeadscrewKinematicsC2E14KinematicsType, .-_ZN20ZLeadscrewKinematicsC2E14KinematicsType
 465              		.global	_ZN20ZLeadscrewKinematicsC1E14KinematicsType
 466              		.thumb_set _ZN20ZLeadscrewKinematicsC1E14KinematicsType,_ZN20ZLeadscrewKinematicsC2E14KinematicsTy
 467              		.section	.text._ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb,"ax",%progbits
 468              		.align	1
 469              		.p2align 2,,3
 470              		.global	_ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb
 471              		.syntax unified
 472              		.thumb
 473              		.thumb_func
 474              		.fpu fpv4-sp-d16
 475              		.type	_ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb, %function
 476              	_ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb:
 477              		@ args = 0, pretend = 0, frame = 0
 478              		@ frame_needed = 0, uses_anonymous_args = 0
 479 0000 10B5     		push	{r4, lr}
 480 0002 0446     		mov	r4, r0
 481 0004 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffb
 482 0008 064B     		ldr	r3, .L40
 483 000a 2360     		str	r3, [r4]
 484 000c 0021     		movs	r1, #0
 485 000e 4FF07E53 		mov	r3, #1065353216
 486 0012 4FF07C52 		mov	r2, #1056964608
 487 0016 2161     		str	r1, [r4, #16]
 488 0018 E263     		str	r2, [r4, #60]	@ float
 489 001a 6363     		str	r3, [r4, #52]	@ float
 490 001c A363     		str	r3, [r4, #56]	@ float
 491 001e 2046     		mov	r0, r4
 492 0020 10BD     		pop	{r4, pc}
 493              	.L41:
 494 0022 00BF     		.align	2
 495              	.L40:
 496 0024 08000000 		.word	.LANCHOR0+8
 497              		.size	_ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb, .-_ZN20ZLeadscrewKinematicsC2E14KinematicsT
 498              		.global	_ZN20ZLeadscrewKinematicsC1E14KinematicsTypeffb
 499              		.thumb_set _ZN20ZLeadscrewKinematicsC1E14KinematicsTypeffb,_ZN20ZLeadscrewKinematicsC2E14Kinematic
 500              		.section	.text._ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef,"ax",%progbits
 501              		.align	1
 502              		.p2align 2,,3
 503              		.global	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef
 504              		.syntax unified
 505              		.thumb
 506              		.thumb_func
 507              		.fpu fpv4-sp-d16
 508              		.type	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef, %function
 509              	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef:
 510              		@ args = 0, pretend = 0, frame = 0
 511              		@ frame_needed = 0, uses_anonymous_args = 0
 512 0000 0369     		ldr	r3, [r0, #16]
 513 0002 9BB1     		cbz	r3, .L50
ARM GAS  /tmp/ccxvJMdy.s 			page 10


 514 0004 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 515 0008 DFF82480 		ldr	r8, .L53
 516 000c 1746     		mov	r7, r2
 517 000e 0646     		mov	r6, r0
 518 0010 0D46     		mov	r5, r1
 519 0012 0024     		movs	r4, #0
 520              	.L44:
 521 0014 F5E80223 		ldrd	r2, [r5], #8
 522 0018 4146     		mov	r1, r8
 523 001a 3846     		mov	r0, r7
 524 001c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 525 0020 3369     		ldr	r3, [r6, #16]
 526 0022 0134     		adds	r4, r4, #1
 527 0024 A342     		cmp	r3, r4
 528 0026 F5D8     		bhi	.L44
 529 0028 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 530              	.L50:
 531 002c 7047     		bx	lr
 532              	.L54:
 533 002e 00BF     		.align	2
 534              	.L53:
 535 0030 00000000 		.word	.LC1
 536              		.size	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef, .-_ZNK20ZLeadscrewKinematics1
 537              		.global	__aeabi_d2f
 538              		.global	__aeabi_ddiv
 539              		.global	__aeabi_dmul
 540              		.global	__aeabi_dsub
 541              		.section	.text._ZN11FixedMatrixIdLj4ELj5EE11GaussJordanEPdj,"axG",%progbits,_ZN11FixedMatrixIdLj4E
 542              		.align	1
 543              		.p2align 2,,3
 544              		.weak	_ZN11FixedMatrixIdLj4ELj5EE11GaussJordanEPdj
 545              		.syntax unified
 546              		.thumb
 547              		.thumb_func
 548              		.fpu fpv4-sp-d16
 549              		.type	_ZN11FixedMatrixIdLj4ELj5EE11GaussJordanEPdj, %function
 550              	_ZN11FixedMatrixIdLj4ELj5EE11GaussJordanEPdj:
 551              		@ args = 0, pretend = 0, frame = 64
 552              		@ frame_needed = 0, uses_anonymous_args = 0
 553 0000 002A     		cmp	r2, #0
 554 0002 00F01E82 		beq	.L119
 555 0006 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 556 000a 2DED068B 		vpush.64	{d8, d9, d10}
 557 000e 91B0     		sub	sp, sp, #68
 558 0010 AB4E     		ldr	r6, .L136+8
 559 0012 0092     		str	r2, [sp]
 560 0014 0246     		mov	r2, r0
 561 0016 0F91     		str	r1, [sp, #60]
 562 0018 52F8083B 		ldr	r3, [r2], #8
 563 001c 0E92     		str	r2, [sp, #56]
 564 001e 9F68     		ldr	r7, [r3, #8]
 565 0020 0023     		movs	r3, #0
 566 0022 BB46     		mov	fp, r7
 567 0024 CDE90B23 		strd	r2, r3, [sp, #44]
 568 0028 0A93     		str	r3, [sp, #40]
 569 002a 0493     		str	r3, [sp, #16]
 570 002c B345     		cmp	fp, r6
ARM GAS  /tmp/ccxvJMdy.s 			page 11


 571 002e 00F13003 		add	r3, r0, #48
 572 0032 9FEDA1AB 		vldr.64	d10, .L136
 573 0036 0D93     		str	r3, [sp, #52]
 574 0038 8246     		mov	r10, r0
 575 003a 40F08D81 		bne	.L57
 576              	.L133:
 577 003e 0B98     		ldr	r0, [sp, #44]
 578              	.L58:
 579 0040 D0E90001 		ldrd	r0, [r0]
 580 0044 FFF7FEFF 		bl	__aeabi_d2f
 581 0048 049B     		ldr	r3, [sp, #16]
 582 004a 0099     		ldr	r1, [sp]
 583 004c 0133     		adds	r3, r3, #1
 584 004e 07EE900A 		vmov	s15, r0
 585 0052 9942     		cmp	r1, r3
 586 0054 0693     		str	r3, [sp, #24]
 587 0056 B0EEE78A 		vabs.f32	s16, s15
 588 005a 40F29080 		bls	.L59
 589 005e CB1A     		subs	r3, r1, r3
 590 0060 0193     		str	r3, [sp, #4]
 591 0062 DDE90C23 		ldrd	r2, r3, [sp, #48]
 592 0066 1344     		add	r3, r3, r2
 593 0068 0024     		movs	r4, #0
 594 006a 0293     		str	r3, [sp, #8]
 595 006c 5D46     		mov	r5, fp
 596 006e 04E0     		b	.L73
 597              	.L62:
 598 0070 019B     		ldr	r3, [sp, #4]
 599 0072 0134     		adds	r4, r4, #1
 600 0074 A342     		cmp	r3, r4
 601 0076 00F08180 		beq	.L122
 602              	.L73:
 603 007a 069B     		ldr	r3, [sp, #24]
 604 007c B542     		cmp	r5, r6
 605 007e 03EB040B 		add	fp, r3, r4
 606 0082 6BD1     		bne	.L60
 607 0084 029B     		ldr	r3, [sp, #8]
 608 0086 04EB8400 		add	r0, r4, r4, lsl #2
 609 008a 03EBC000 		add	r0, r3, r0, lsl #3
 610              	.L61:
 611 008e D0E90001 		ldrd	r0, [r0]
 612 0092 FFF7FEFF 		bl	__aeabi_d2f
 613 0096 07EE900A 		vmov	s15, r0
 614 009a B0EEE79A 		vabs.f32	s18, s15
 615 009e B4EEC89A 		vcmpe.f32	s18, s16
 616 00a2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 617 00a6 E3DD     		ble	.L62
 618 00a8 049B     		ldr	r3, [sp, #16]
 619 00aa 5B45     		cmp	r3, fp
 620 00ac 00F07D81 		beq	.L108
 621 00b0 0A9A     		ldr	r2, [sp, #40]
 622 00b2 042A     		cmp	r2, #4
 623 00b4 00F27981 		bhi	.L108
 624 00b8 029A     		ldr	r2, [sp, #8]
 625 00ba 0594     		str	r4, [sp, #20]
 626 00bc 04EB8407 		add	r7, r4, r4, lsl #2
 627 00c0 02EBC707 		add	r7, r2, r7, lsl #3
ARM GAS  /tmp/ccxvJMdy.s 			page 12


 628 00c4 DDF82C90 		ldr	r9, [sp, #44]
 629 00c8 9846     		mov	r8, r3
 630 00ca 5C46     		mov	r4, fp
 631 00cc 1AE0     		b	.L72
 632              	.L124:
 633 00ce 4846     		mov	r0, r9
 634 00d0 B542     		cmp	r5, r6
 635 00d2 90ED008B 		vldr.64	d8, [r0]
 636 00d6 22D1     		bne	.L66
 637              	.L125:
 638 00d8 B542     		cmp	r5, r6
 639 00da BB46     		mov	fp, r7
 640 00dc 29D1     		bne	.L68
 641              	.L126:
 642 00de 9BED007B 		vldr.64	d7, [fp]
 643 00e2 4846     		mov	r0, r9
 644 00e4 B542     		cmp	r5, r6
 645 00e6 80ED007B 		vstr.64	d7, [r0]
 646 00ea 2FD1     		bne	.L70
 647              	.L127:
 648 00ec 3846     		mov	r0, r7
 649              	.L71:
 650 00ee 08F10108 		add	r8, r8, #1
 651 00f2 B8F1050F 		cmp	r8, #5
 652 00f6 80ED008B 		vstr.64	d8, [r0]
 653 00fa 07F10807 		add	r7, r7, #8
 654 00fe 09F10809 		add	r9, r9, #8
 655 0102 33D0     		beq	.L123
 656              	.L72:
 657 0104 B542     		cmp	r5, r6
 658 0106 E2D0     		beq	.L124
 659 0108 4246     		mov	r2, r8
 660 010a 0499     		ldr	r1, [sp, #16]
 661 010c 5046     		mov	r0, r10
 662 010e A847     		blx	r5
 663 0110 DAF80020 		ldr	r2, [r10]
 664 0114 9568     		ldr	r5, [r2, #8]
 665 0116 B542     		cmp	r5, r6
 666 0118 90ED008B 		vldr.64	d8, [r0]
 667 011c DCD0     		beq	.L125
 668              	.L66:
 669 011e 4246     		mov	r2, r8
 670 0120 2146     		mov	r1, r4
 671 0122 5046     		mov	r0, r10
 672 0124 A847     		blx	r5
 673 0126 DAF80020 		ldr	r2, [r10]
 674 012a 9568     		ldr	r5, [r2, #8]
 675 012c B542     		cmp	r5, r6
 676 012e 8346     		mov	fp, r0
 677 0130 D5D0     		beq	.L126
 678              	.L68:
 679 0132 4246     		mov	r2, r8
 680 0134 0499     		ldr	r1, [sp, #16]
 681 0136 5046     		mov	r0, r10
 682 0138 A847     		blx	r5
 683 013a DAF80020 		ldr	r2, [r10]
 684 013e 9BED007B 		vldr.64	d7, [fp]
ARM GAS  /tmp/ccxvJMdy.s 			page 13


 685 0142 9568     		ldr	r5, [r2, #8]
 686 0144 B542     		cmp	r5, r6
 687 0146 80ED007B 		vstr.64	d7, [r0]
 688 014a CFD0     		beq	.L127
 689              	.L70:
 690 014c 4246     		mov	r2, r8
 691 014e 2146     		mov	r1, r4
 692 0150 5046     		mov	r0, r10
 693 0152 A847     		blx	r5
 694 0154 DAF80020 		ldr	r2, [r10]
 695 0158 9568     		ldr	r5, [r2, #8]
 696 015a C8E7     		b	.L71
 697              	.L60:
 698 015c 049A     		ldr	r2, [sp, #16]
 699 015e 5946     		mov	r1, fp
 700 0160 5046     		mov	r0, r10
 701 0162 A847     		blx	r5
 702 0164 DAF80030 		ldr	r3, [r10]
 703 0168 9D68     		ldr	r5, [r3, #8]
 704 016a 90E7     		b	.L61
 705              	.L123:
 706 016c 059C     		ldr	r4, [sp, #20]
 707 016e 019B     		ldr	r3, [sp, #4]
 708 0170 0134     		adds	r4, r4, #1
 709 0172 A342     		cmp	r3, r4
 710 0174 B0EE498A 		vmov.f32	s16, s18
 711 0178 7FF47FAF 		bne	.L73
 712              	.L122:
 713 017c AB46     		mov	fp, r5
 714              	.L59:
 715 017e B345     		cmp	fp, r6
 716 0180 40F01681 		bne	.L74
 717 0184 0B98     		ldr	r0, [sp, #44]
 718              	.L75:
 719 0186 0A9B     		ldr	r3, [sp, #40]
 720 0188 90ED007B 		vldr.64	d7, [r0]
 721 018c 8DED087B 		vstr.64	d7, [sp, #32]
 722 0190 002B     		cmp	r3, #0
 723 0192 63D0     		beq	.L89
 724 0194 0A9B     		ldr	r3, [sp, #40]
 725 0196 03EB8303 		add	r3, r3, r3, lsl #2
 726 019a DB00     		lsls	r3, r3, #3
 727 019c 0193     		str	r3, [sp, #4]
 728 019e 069B     		ldr	r3, [sp, #24]
 729 01a0 0AEBC303 		add	r3, r10, r3, lsl #3
 730 01a4 0593     		str	r3, [sp, #20]
 731 01a6 0023     		movs	r3, #0
 732 01a8 0793     		str	r3, [sp, #28]
 733 01aa 5F46     		mov	r7, fp
 734              	.L90:
 735 01ac B742     		cmp	r7, r6
 736 01ae 40F0F480 		bne	.L79
 737 01b2 0598     		ldr	r0, [sp, #20]
 738              	.L80:
 739 01b4 DDE90823 		ldrd	r2, [sp, #32]
 740 01b8 D0E90001 		ldrd	r0, [r0]
 741 01bc FFF7FEFF 		bl	__aeabi_ddiv
ARM GAS  /tmp/ccxvJMdy.s 			page 14


 742 01c0 B742     		cmp	r7, r6
 743 01c2 CDE90201 		strd	r0, [sp, #8]
 744 01c6 40F0E080 		bne	.L81
 745 01ca 0598     		ldr	r0, [sp, #20]
 746              	.L82:
 747 01cc 009B     		ldr	r3, [sp]
 748 01ce 069D     		ldr	r5, [sp, #24]
 749 01d0 1A46     		mov	r2, r3
 750 01d2 AA42     		cmp	r2, r5
 751 01d4 80ED00AB 		vstr.64	d10, [r0]
 752 01d8 33D3     		bcc	.L83
 753 01da 059B     		ldr	r3, [sp, #20]
 754 01dc D146     		mov	r9, r10
 755 01de 03F10804 		add	r4, r3, #8
 756 01e2 1AE0     		b	.L88
 757              	.L129:
 758 01e4 019B     		ldr	r3, [sp, #4]
 759 01e6 1819     		adds	r0, r3, r4
 760              	.L85:
 761 01e8 D0E90023 		ldrd	r2, [r0]
 762 01ec DDE90201 		ldrd	r0, [sp, #8]
 763 01f0 FFF7FEFF 		bl	__aeabi_dmul
 764 01f4 B742     		cmp	r7, r6
 765 01f6 8246     		mov	r10, r0
 766 01f8 8B46     		mov	fp, r1
 767 01fa 18D1     		bne	.L86
 768 01fc A046     		mov	r8, r4
 769              	.L87:
 770 01fe 5B46     		mov	r3, fp
 771 0200 D8E90001 		ldrd	r0, [r8]
 772 0204 5246     		mov	r2, r10
 773 0206 FFF7FEFF 		bl	__aeabi_dsub
 774 020a 009B     		ldr	r3, [sp]
 775 020c 0135     		adds	r5, r5, #1
 776 020e AB42     		cmp	r3, r5
 777 0210 04F10804 		add	r4, r4, #8
 778 0214 C8E90001 		strd	r0, [r8]
 779 0218 12D3     		bcc	.L128
 780              	.L88:
 781 021a B742     		cmp	r7, r6
 782 021c E2D0     		beq	.L129
 783 021e 2A46     		mov	r2, r5
 784 0220 0499     		ldr	r1, [sp, #16]
 785 0222 4846     		mov	r0, r9
 786 0224 B847     		blx	r7
 787 0226 D9F80030 		ldr	r3, [r9]
 788 022a 9F68     		ldr	r7, [r3, #8]
 789 022c DCE7     		b	.L85
 790              	.L86:
 791 022e 2A46     		mov	r2, r5
 792 0230 0799     		ldr	r1, [sp, #28]
 793 0232 4846     		mov	r0, r9
 794 0234 B847     		blx	r7
 795 0236 D9F80030 		ldr	r3, [r9]
 796 023a 8046     		mov	r8, r0
 797 023c 9F68     		ldr	r7, [r3, #8]
 798 023e DEE7     		b	.L87
ARM GAS  /tmp/ccxvJMdy.s 			page 15


 799              	.L128:
 800 0240 CA46     		mov	r10, r9
 801              	.L83:
 802 0242 059A     		ldr	r2, [sp, #20]
 803 0244 079B     		ldr	r3, [sp, #28]
 804 0246 2832     		adds	r2, r2, #40
 805 0248 0592     		str	r2, [sp, #20]
 806 024a 019A     		ldr	r2, [sp, #4]
 807 024c 283A     		subs	r2, r2, #40
 808 024e 0192     		str	r2, [sp, #4]
 809 0250 049A     		ldr	r2, [sp, #16]
 810 0252 0133     		adds	r3, r3, #1
 811 0254 9342     		cmp	r3, r2
 812 0256 0793     		str	r3, [sp, #28]
 813 0258 A8D1     		bne	.L90
 814 025a BB46     		mov	fp, r7
 815              	.L89:
 816 025c 009B     		ldr	r3, [sp]
 817 025e 069A     		ldr	r2, [sp, #24]
 818 0260 9342     		cmp	r3, r2
 819 0262 00F0AE80 		beq	.L130
 820 0266 0699     		ldr	r1, [sp, #24]
 821 0268 0A9B     		ldr	r3, [sp, #40]
 822 026a 0791     		str	r1, [sp, #28]
 823 026c 01EB8102 		add	r2, r1, r1, lsl #2
 824 0270 03EB8303 		add	r3, r3, r3, lsl #2
 825 0274 9B1A     		subs	r3, r3, r2
 826 0276 DB00     		lsls	r3, r3, #3
 827 0278 0193     		str	r3, [sp, #4]
 828 027a DDE90C23 		ldrd	r2, r3, [sp, #48]
 829 027e 1344     		add	r3, r3, r2
 830 0280 0593     		str	r3, [sp, #20]
 831 0282 5F46     		mov	r7, fp
 832              	.L101:
 833 0284 B742     		cmp	r7, r6
 834 0286 70D1     		bne	.L91
 835 0288 0598     		ldr	r0, [sp, #20]
 836              	.L92:
 837 028a DDE90823 		ldrd	r2, [sp, #32]
 838 028e D0E90001 		ldrd	r0, [r0]
 839 0292 FFF7FEFF 		bl	__aeabi_ddiv
 840 0296 B742     		cmp	r7, r6
 841 0298 CDE90201 		strd	r0, [sp, #8]
 842 029c 6DD1     		bne	.L93
 843 029e 0598     		ldr	r0, [sp, #20]
 844              	.L94:
 845 02a0 009B     		ldr	r3, [sp]
 846 02a2 069D     		ldr	r5, [sp, #24]
 847 02a4 1A46     		mov	r2, r3
 848 02a6 AA42     		cmp	r2, r5
 849 02a8 80ED00AB 		vstr.64	d10, [r0]
 850 02ac 39D3     		bcc	.L95
 851 02ae 059B     		ldr	r3, [sp, #20]
 852 02b0 D146     		mov	r9, r10
 853 02b2 03F10804 		add	r4, r3, #8
 854 02b6 20E0     		b	.L100
 855              	.L137:
ARM GAS  /tmp/ccxvJMdy.s 			page 16


 856              		.align	3
 857              	.L136:
 858 02b8 00000000 		.word	0
 859 02bc 00000000 		.word	0
 860 02c0 00000000 		.word	_ZN11FixedMatrixIdLj4ELj5EEclEjj
 861              	.L132:
 862 02c4 019B     		ldr	r3, [sp, #4]
 863 02c6 1819     		adds	r0, r3, r4
 864              	.L97:
 865 02c8 D0E90023 		ldrd	r2, [r0]
 866 02cc DDE90201 		ldrd	r0, [sp, #8]
 867 02d0 FFF7FEFF 		bl	__aeabi_dmul
 868 02d4 B742     		cmp	r7, r6
 869 02d6 8246     		mov	r10, r0
 870 02d8 8B46     		mov	fp, r1
 871 02da 18D1     		bne	.L98
 872 02dc A046     		mov	r8, r4
 873              	.L99:
 874 02de 5B46     		mov	r3, fp
 875 02e0 D8E90001 		ldrd	r0, [r8]
 876 02e4 5246     		mov	r2, r10
 877 02e6 FFF7FEFF 		bl	__aeabi_dsub
 878 02ea 009B     		ldr	r3, [sp]
 879 02ec 0135     		adds	r5, r5, #1
 880 02ee AB42     		cmp	r3, r5
 881 02f0 04F10804 		add	r4, r4, #8
 882 02f4 C8E90001 		strd	r0, [r8]
 883 02f8 12D3     		bcc	.L131
 884              	.L100:
 885 02fa B742     		cmp	r7, r6
 886 02fc E2D0     		beq	.L132
 887 02fe 2A46     		mov	r2, r5
 888 0300 0499     		ldr	r1, [sp, #16]
 889 0302 4846     		mov	r0, r9
 890 0304 B847     		blx	r7
 891 0306 D9F80030 		ldr	r3, [r9]
 892 030a 9F68     		ldr	r7, [r3, #8]
 893 030c DCE7     		b	.L97
 894              	.L98:
 895 030e 2A46     		mov	r2, r5
 896 0310 0799     		ldr	r1, [sp, #28]
 897 0312 4846     		mov	r0, r9
 898 0314 B847     		blx	r7
 899 0316 D9F80030 		ldr	r3, [r9]
 900 031a 8046     		mov	r8, r0
 901 031c 9F68     		ldr	r7, [r3, #8]
 902 031e DEE7     		b	.L99
 903              	.L131:
 904 0320 CA46     		mov	r10, r9
 905              	.L95:
 906 0322 059A     		ldr	r2, [sp, #20]
 907 0324 079B     		ldr	r3, [sp, #28]
 908 0326 2832     		adds	r2, r2, #40
 909 0328 0592     		str	r2, [sp, #20]
 910 032a 019A     		ldr	r2, [sp, #4]
 911 032c 283A     		subs	r2, r2, #40
 912 032e 0192     		str	r2, [sp, #4]
ARM GAS  /tmp/ccxvJMdy.s 			page 17


 913 0330 009A     		ldr	r2, [sp]
 914 0332 0133     		adds	r3, r3, #1
 915 0334 9A42     		cmp	r2, r3
 916 0336 0793     		str	r3, [sp, #28]
 917 0338 A4D1     		bne	.L101
 918 033a 0A9B     		ldr	r3, [sp, #40]
 919 033c 0133     		adds	r3, r3, #1
 920 033e 0A93     		str	r3, [sp, #40]
 921 0340 0B9B     		ldr	r3, [sp, #44]
 922 0342 3033     		adds	r3, r3, #48
 923 0344 0B93     		str	r3, [sp, #44]
 924 0346 0C9B     		ldr	r3, [sp, #48]
 925 0348 BB46     		mov	fp, r7
 926 034a 3033     		adds	r3, r3, #48
 927 034c 0C93     		str	r3, [sp, #48]
 928 034e B345     		cmp	fp, r6
 929 0350 069B     		ldr	r3, [sp, #24]
 930 0352 0493     		str	r3, [sp, #16]
 931 0354 3FF473AE 		beq	.L133
 932              	.L57:
 933 0358 0499     		ldr	r1, [sp, #16]
 934 035a 5046     		mov	r0, r10
 935 035c 0A46     		mov	r2, r1
 936 035e D847     		blx	fp
 937 0360 DAF80030 		ldr	r3, [r10]
 938 0364 D3F808B0 		ldr	fp, [r3, #8]
 939 0368 6AE6     		b	.L58
 940              	.L91:
 941 036a 049A     		ldr	r2, [sp, #16]
 942 036c 0799     		ldr	r1, [sp, #28]
 943 036e 5046     		mov	r0, r10
 944 0370 B847     		blx	r7
 945 0372 DAF80030 		ldr	r3, [r10]
 946 0376 9F68     		ldr	r7, [r3, #8]
 947 0378 87E7     		b	.L92
 948              	.L93:
 949 037a 049A     		ldr	r2, [sp, #16]
 950 037c 0799     		ldr	r1, [sp, #28]
 951 037e 5046     		mov	r0, r10
 952 0380 B847     		blx	r7
 953 0382 DAF80030 		ldr	r3, [r10]
 954 0386 9F68     		ldr	r7, [r3, #8]
 955 0388 8AE7     		b	.L94
 956              	.L81:
 957 038a 049A     		ldr	r2, [sp, #16]
 958 038c 0799     		ldr	r1, [sp, #28]
 959 038e 5046     		mov	r0, r10
 960 0390 B847     		blx	r7
 961 0392 DAF80030 		ldr	r3, [r10]
 962 0396 9F68     		ldr	r7, [r3, #8]
 963 0398 18E7     		b	.L82
 964              	.L79:
 965 039a 049A     		ldr	r2, [sp, #16]
 966 039c 0799     		ldr	r1, [sp, #28]
 967 039e 5046     		mov	r0, r10
 968 03a0 B847     		blx	r7
 969 03a2 DAF80030 		ldr	r3, [r10]
ARM GAS  /tmp/ccxvJMdy.s 			page 18


 970 03a6 9F68     		ldr	r7, [r3, #8]
 971 03a8 04E7     		b	.L80
 972              	.L108:
 973 03aa B0EE498A 		vmov.f32	s16, s18
 974 03ae 5FE6     		b	.L62
 975              	.L74:
 976 03b0 0499     		ldr	r1, [sp, #16]
 977 03b2 5046     		mov	r0, r10
 978 03b4 0A46     		mov	r2, r1
 979 03b6 D847     		blx	fp
 980 03b8 DAF80030 		ldr	r3, [r10]
 981 03bc D3F808B0 		ldr	fp, [r3, #8]
 982 03c0 E1E6     		b	.L75
 983              	.L130:
 984 03c2 049B     		ldr	r3, [sp, #16]
 985 03c4 DDF83C80 		ldr	r8, [sp, #60]
 986 03c8 0E9C     		ldr	r4, [sp, #56]
 987 03ca 5F46     		mov	r7, fp
 988 03cc 0233     		adds	r3, r3, #2
 989 03ce 0AEBC309 		add	r9, r10, r3, lsl #3
 990 03d2 D346     		mov	fp, r10
 991 03d4 4546     		mov	r5, r8
 992 03d6 4FF0000A 		mov	r10, #0
 993 03da 3B46     		mov	r3, r7
 994 03dc 19E0     		b	.L78
 995              	.L134:
 996 03de 4846     		mov	r0, r9
 997 03e0 B342     		cmp	r3, r6
 998 03e2 D0E90078 		ldrd	r7, [r0]
 999 03e6 21D1     		bne	.L105
 1000              	.L135:
 1001 03e8 2346     		mov	r3, r4
 1002              	.L106:
 1003 03ea D3E90023 		ldrd	r2, [r3]
 1004 03ee 3846     		mov	r0, r7
 1005 03f0 4146     		mov	r1, r8
 1006 03f2 FFF7FEFF 		bl	__aeabi_ddiv
 1007 03f6 069B     		ldr	r3, [sp, #24]
 1008 03f8 0AF1010A 		add	r10, r10, #1
 1009 03fc 5345     		cmp	r3, r10
 1010 03fe 04F13004 		add	r4, r4, #48
 1011 0402 09F12809 		add	r9, r9, #40
 1012 0406 E5E80201 		strd	r0, [r5], #8
 1013 040a 15D0     		beq	.L55
 1014 040c DBF80030 		ldr	r3, [fp]
 1015 0410 9B68     		ldr	r3, [r3, #8]
 1016              	.L78:
 1017 0412 B342     		cmp	r3, r6
 1018 0414 E3D0     		beq	.L134
 1019 0416 069A     		ldr	r2, [sp, #24]
 1020 0418 5146     		mov	r1, r10
 1021 041a 5846     		mov	r0, fp
 1022 041c 9847     		blx	r3
 1023 041e DBF80030 		ldr	r3, [fp]
 1024 0422 9B68     		ldr	r3, [r3, #8]
 1025 0424 B342     		cmp	r3, r6
 1026 0426 D0E90078 		ldrd	r7, [r0]
ARM GAS  /tmp/ccxvJMdy.s 			page 19


 1027 042a DDD0     		beq	.L135
 1028              	.L105:
 1029 042c 5246     		mov	r2, r10
 1030 042e 5146     		mov	r1, r10
 1031 0430 5846     		mov	r0, fp
 1032 0432 9847     		blx	r3
 1033 0434 0346     		mov	r3, r0
 1034 0436 D8E7     		b	.L106
 1035              	.L55:
 1036 0438 11B0     		add	sp, sp, #68
 1037              		@ sp needed
 1038 043a BDEC068B 		vldm	sp!, {d8-d10}
 1039 043e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1040              	.L119:
 1041 0442 7047     		bx	lr
 1042              		.size	_ZN11FixedMatrixIdLj4ELj5EE11GaussJordanEPdj, .-_ZN11FixedMatrixIdLj4ELj5EE11GaussJordanEPdj
 1043              		.global	__aeabi_f2d
 1044              		.global	__aeabi_dadd
 1045              		.global	__aeabi_dcmpun
 1046              		.section	.text._ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef.p
 1047              		.align	1
 1048              		.p2align 2,,3
 1049              		.syntax unified
 1050              		.thumb
 1051              		.thumb_func
 1052              		.fpu fpv4-sp-d16
 1053              		.type	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef.part.5, %f
 1054              	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef.part.5:
 1055              		@ args = 0, pretend = 0, frame = 2024
 1056              		@ frame_needed = 0, uses_anonymous_args = 0
 1057 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1058 0004 2DED0E8B 		vpush.64	{d8, d9, d10, d11, d12, d13, d14}
 1059 0008 ADF2FC7D 		subw	sp, sp, #2044
 1060 000c 8046     		mov	r8, r0
 1061 000e 8990     		str	r0, [sp, #548]
 1062 0010 1046     		mov	r0, r2
 1063 0012 8893     		str	r3, [sp, #544]
 1064 0014 3192     		str	r2, [sp, #196]
 1065 0016 8946     		mov	r9, r1
 1066 0018 1191     		str	r1, [sp, #68]
 1067 001a FFF7FEFF 		bl	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 1068 001e 9FED0A7B 		vldr.64	d7, .L226
 1069 0022 0B4B     		ldr	r3, .L226+8
 1070 0024 FC93     		str	r3, [sp, #1008]
 1071 0026 0590     		str	r0, [sp, #20]
 1072 0028 8DED0E7B 		vstr.64	d7, [sp, #56]
 1073 002c 0028     		cmp	r0, #0
 1074 002e 01F07D80 		beq	.L178
 1075 0032 084B     		ldr	r3, .L226+12
 1076 0034 3093     		str	r3, [sp, #192]
 1077 0036 92AB     		add	r3, sp, #584
 1078 0038 4FF0000B 		mov	fp, #0
 1079 003c 0DF57C7A 		add	r10, sp, #1008
 1080 0040 1093     		str	r3, [sp, #64]
 1081 0042 E4E0     		b	.L144
 1082              	.L227:
 1083 0044 AFF30080 		.align	3
ARM GAS  /tmp/ccxvJMdy.s 			page 20


 1084              	.L226:
 1085 0048 00000000 		.word	0
 1086 004c 00000000 		.word	0
 1087 0050 08000000 		.word	_ZTV11FixedMatrixIdLj32ELj4EE+8
 1088 0054 00000000 		.word	reprap
 1089              	.L219:
 1090 0058 B9F1040F 		cmp	r9, #4
 1091 005c 00F0E482 		beq	.L142
 1092 0060 B9F1020F 		cmp	r9, #2
 1093 0064 40F0CB80 		bne	.L140
 1094 0068 98ED069A 		vldr.32	s18, [r8, #24]
 1095 006c 98ED058A 		vldr.32	s16, [r8, #20]
 1096 0070 39EE48AA 		vsub.f32	s20, s18, s16
 1097 0074 1AEE100A 		vmov	r0, s20
 1098 0078 FFF7FEFF 		bl	__aeabi_f2d
 1099 007c D8ED0A9A 		vldr.32	s19, [r8, #40]
 1100 0080 D8ED098A 		vldr.32	s17, [r8, #36]
 1101 0084 79EEE8AA 		vsub.f32	s21, s19, s17
 1102 0088 0446     		mov	r4, r0
 1103 008a 1AEE900A 		vmov	r0, s21
 1104 008e 0D46     		mov	r5, r1
 1105 0090 FFF7FEFF 		bl	__aeabi_f2d
 1106 0094 2246     		mov	r2, r4
 1107 0096 0646     		mov	r6, r0
 1108 0098 0F46     		mov	r7, r1
 1109 009a 2B46     		mov	r3, r5
 1110 009c 2046     		mov	r0, r4
 1111 009e 2946     		mov	r1, r5
 1112 00a0 FFF7FEFF 		bl	__aeabi_dmul
 1113 00a4 3246     		mov	r2, r6
 1114 00a6 0446     		mov	r4, r0
 1115 00a8 0D46     		mov	r5, r1
 1116 00aa 3B46     		mov	r3, r7
 1117 00ac 3046     		mov	r0, r6
 1118 00ae 3946     		mov	r1, r7
 1119 00b0 FFF7FEFF 		bl	__aeabi_dmul
 1120 00b4 0246     		mov	r2, r0
 1121 00b6 0B46     		mov	r3, r1
 1122 00b8 2046     		mov	r0, r4
 1123 00ba 2946     		mov	r1, r5
 1124 00bc FFF7FEFF 		bl	__aeabi_dadd
 1125 00c0 CDE91201 		strd	r0, [sp, #72]
 1126 00c4 19EE900A 		vmov	r0, s19
 1127 00c8 FFF7FEFF 		bl	__aeabi_f2d
 1128 00cc 69EEA87A 		vmul.f32	s15, s19, s17
 1129 00d0 0446     		mov	r4, r0
 1130 00d2 17EE900A 		vmov	r0, s15
 1131 00d6 0D46     		mov	r5, r1
 1132 00d8 FFF7FEFF 		bl	__aeabi_f2d
 1133 00dc DDEDBC7A 		vldr.32	s15, [sp, #752]
 1134 00e0 6AEEA77A 		vmul.f32	s15, s21, s15
 1135 00e4 CDE90601 		strd	r0, [sp, #24]
 1136 00e8 17EE900A 		vmov	r0, s15
 1137 00ec FFF7FEFF 		bl	__aeabi_f2d
 1138 00f0 CDE90801 		strd	r0, [sp, #32]
 1139 00f4 19EE100A 		vmov	r0, s18
 1140 00f8 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/ccxvJMdy.s 			page 21


 1141 00fc 69EE087A 		vmul.f32	s15, s18, s16
 1142 0100 0646     		mov	r6, r0
 1143 0102 17EE900A 		vmov	r0, s15
 1144 0106 0F46     		mov	r7, r1
 1145 0108 FFF7FEFF 		bl	__aeabi_f2d
 1146 010c 109B     		ldr	r3, [sp, #64]
 1147 010e D3ED007A 		vldr.32	s15, [r3]
 1148 0112 6AEE277A 		vmul.f32	s15, s20, s15
 1149 0116 CDE90A01 		strd	r0, [sp, #40]
 1150 011a 17EE900A 		vmov	r0, s15
 1151 011e FFF7FEFF 		bl	__aeabi_f2d
 1152 0122 2246     		mov	r2, r4
 1153 0124 CDE90C01 		strd	r0, [sp, #48]
 1154 0128 2B46     		mov	r3, r5
 1155 012a 2046     		mov	r0, r4
 1156 012c 2946     		mov	r1, r5
 1157 012e FFF7FEFF 		bl	__aeabi_dmul
 1158 0132 DDE90623 		ldrd	r2, [sp, #24]
 1159 0136 FFF7FEFF 		bl	__aeabi_dsub
 1160 013a DDE90823 		ldrd	r2, [sp, #32]
 1161 013e FFF7FEFF 		bl	__aeabi_dsub
 1162 0142 3246     		mov	r2, r6
 1163 0144 0446     		mov	r4, r0
 1164 0146 0D46     		mov	r5, r1
 1165 0148 3B46     		mov	r3, r7
 1166 014a 3046     		mov	r0, r6
 1167 014c 3946     		mov	r1, r7
 1168 014e FFF7FEFF 		bl	__aeabi_dmul
 1169 0152 0246     		mov	r2, r0
 1170 0154 0B46     		mov	r3, r1
 1171 0156 2046     		mov	r0, r4
 1172 0158 2946     		mov	r1, r5
 1173 015a FFF7FEFF 		bl	__aeabi_dadd
 1174 015e DDE90A23 		ldrd	r2, [sp, #40]
 1175 0162 FFF7FEFF 		bl	__aeabi_dsub
 1176 0166 DDE90C23 		ldrd	r2, [sp, #48]
 1177 016a FFF7FEFF 		bl	__aeabi_dsub
 1178 016e 01F10043 		add	r3, r1, #-2147483648
 1179 0172 3490     		str	r0, [sp, #208]
 1180 0174 3593     		str	r3, [sp, #212]
 1181 0176 DDE93401 		ldrd	r0, [sp, #208]
 1182 017a DDE91223 		ldrd	r2, [sp, #72]
 1183 017e FFF7FEFF 		bl	__aeabi_ddiv
 1184 0182 CAE90201 		strd	r0, [r10, #8]
 1185 0186 18EE900A 		vmov	r0, s17
 1186 018a FFF7FEFF 		bl	__aeabi_f2d
 1187 018e 0446     		mov	r4, r0
 1188 0190 18EE100A 		vmov	r0, s16
 1189 0194 0D46     		mov	r5, r1
 1190 0196 FFF7FEFF 		bl	__aeabi_f2d
 1191 019a 2246     		mov	r2, r4
 1192 019c 0646     		mov	r6, r0
 1193 019e 0F46     		mov	r7, r1
 1194 01a0 2B46     		mov	r3, r5
 1195 01a2 2046     		mov	r0, r4
 1196 01a4 2946     		mov	r1, r5
 1197 01a6 FFF7FEFF 		bl	__aeabi_dmul
ARM GAS  /tmp/ccxvJMdy.s 			page 22


 1198 01aa DDE90623 		ldrd	r2, [sp, #24]
 1199 01ae FFF7FEFF 		bl	__aeabi_dsub
 1200 01b2 DDE90823 		ldrd	r2, [sp, #32]
 1201 01b6 FFF7FEFF 		bl	__aeabi_dadd
 1202 01ba 3246     		mov	r2, r6
 1203 01bc 0446     		mov	r4, r0
 1204 01be 0D46     		mov	r5, r1
 1205 01c0 3B46     		mov	r3, r7
 1206 01c2 3046     		mov	r0, r6
 1207 01c4 3946     		mov	r1, r7
 1208 01c6 FFF7FEFF 		bl	__aeabi_dmul
 1209 01ca 0246     		mov	r2, r0
 1210 01cc 0B46     		mov	r3, r1
 1211 01ce 2046     		mov	r0, r4
 1212 01d0 2946     		mov	r1, r5
 1213 01d2 FFF7FEFF 		bl	__aeabi_dadd
 1214 01d6 DDE90A23 		ldrd	r2, [sp, #40]
 1215 01da FFF7FEFF 		bl	__aeabi_dsub
 1216 01de DDE90C23 		ldrd	r2, [sp, #48]
 1217 01e2 FFF7FEFF 		bl	__aeabi_dadd
 1218 01e6 01F10043 		add	r3, r1, #-2147483648
 1219 01ea 3793     		str	r3, [sp, #220]
 1220 01ec 3690     		str	r0, [sp, #216]
 1221 01ee DDE91223 		ldrd	r2, [sp, #72]
 1222 01f2 DDE93601 		ldrd	r0, [sp, #216]
 1223 01f6 FFF7FEFF 		bl	__aeabi_ddiv
 1224 01fa CAE90401 		strd	r0, [r10, #16]
 1225              	.L140:
 1226 01fe 059B     		ldr	r3, [sp, #20]
 1227 0200 0BF1010B 		add	fp, fp, #1
 1228 0204 5B45     		cmp	r3, fp
 1229 0206 0AF1200A 		add	r10, r10, #32
 1230 020a 00F0A080 		beq	.L139
 1231              	.L144:
 1232 020e 309B     		ldr	r3, [sp, #192]
 1233 0210 109A     		ldr	r2, [sp, #64]
 1234 0212 9868     		ldr	r0, [r3, #8]	@ unaligned
 1235 0214 0023     		movs	r3, #0
 1236 0216 0093     		str	r3, [sp]
 1237 0218 5946     		mov	r1, fp
 1238 021a BCAB     		add	r3, sp, #752
 1239 021c FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 1240 0220 10EE100A 		vmov	r0, s0
 1241 0224 FFF7FEFF 		bl	__aeabi_f2d
 1242 0228 0246     		mov	r2, r0
 1243 022a 0B46     		mov	r3, r1
 1244 022c FFF7FEFF 		bl	__aeabi_dmul
 1245 0230 0246     		mov	r2, r0
 1246 0232 0B46     		mov	r3, r1
 1247 0234 DDE90E01 		ldrd	r0, [sp, #56]
 1248 0238 FFF7FEFF 		bl	__aeabi_dadd
 1249 023c B9F1030F 		cmp	r9, #3
 1250 0240 CDE90E01 		strd	r0, [sp, #56]
 1251 0244 7FF408AF 		bne	.L219
 1252 0248 D8ED0BDA 		vldr.32	s27, [r8, #44]
 1253 024c D8ED05CA 		vldr.32	s25, [r8, #20]
 1254 0250 D8ED06BA 		vldr.32	s23, [r8, #24]
ARM GAS  /tmp/ccxvJMdy.s 			page 23


 1255 0254 98ED07DA 		vldr.32	s26, [r8, #28]
 1256 0258 98ED0ABA 		vldr.32	s22, [r8, #40]
 1257 025c D8ED09AA 		vldr.32	s21, [r8, #36]
 1258 0260 6DEEAC8A 		vmul.f32	s17, s27, s25
 1259 0264 F1EE4DEA 		vneg.f32	s29, s26
 1260 0268 F0EE687A 		vmov.f32	s15, s17
 1261 026c DBEEAD7A 		vfnms.f32	s15, s23, s27
 1262 0270 0BF1010B 		add	fp, fp, #1
 1263 0274 0AF1200A 		add	r10, r10, #32
 1264 0278 B1EE6BEA 		vneg.f32	s28, s23
 1265 027c EEEE8B7A 		vfma.f32	s15, s29, s22
 1266 0280 F1EE6C9A 		vneg.f32	s19, s25
 1267 0284 ECEE8B7A 		vfma.f32	s15, s25, s22
 1268 0288 EDEE2A7A 		vfma.f32	s15, s26, s21
 1269 028c EEEE2A7A 		vfma.f32	s15, s28, s21
 1270 0290 17EE900A 		vmov	r0, s15
 1271 0294 FFF7FEFF 		bl	__aeabi_f2d
 1272 0298 109B     		ldr	r3, [sp, #64]
 1273 029a 9DEDBCAA 		vldr.32	s20, [sp, #752]
 1274 029e 93ED00CA 		vldr.32	s24, [r3]
 1275 02a2 2DEE8C8A 		vmul.f32	s16, s27, s24
 1276 02a6 2BEE0C9A 		vmul.f32	s18, s22, s24
 1277 02aa F0EE487A 		vmov.f32	s15, s16
 1278 02ae DBEEAD7A 		vfnms.f32	s15, s23, s27
 1279 02b2 0446     		mov	r4, r0
 1280 02b4 0D46     		mov	r5, r1
 1281 02b6 EEEE8B7A 		vfma.f32	s15, s29, s22
 1282 02ba 77EE897A 		vadd.f32	s15, s15, s18
 1283 02be EDEE0A7A 		vfma.f32	s15, s26, s20
 1284 02c2 EEEE0A7A 		vfma.f32	s15, s28, s20
 1285 02c6 17EE900A 		vmov	r0, s15
 1286 02ca FFF7FEFF 		bl	__aeabi_f2d
 1287 02ce 01F10043 		add	r3, r1, #-2147483648
 1288 02d2 3993     		str	r3, [sp, #228]
 1289 02d4 3890     		str	r0, [sp, #224]
 1290 02d6 2246     		mov	r2, r4
 1291 02d8 2B46     		mov	r3, r5
 1292 02da DDE93801 		ldrd	r0, [sp, #224]
 1293 02de FFF7FEFF 		bl	__aeabi_ddiv
 1294 02e2 78EEC87A 		vsub.f32	s15, s17, s16
 1295 02e6 4AE90601 		strd	r0, [r10, #-24]
 1296 02ea EEEEAA7A 		vfma.f32	s15, s29, s21
 1297 02ee EAEE8C7A 		vfma.f32	s15, s21, s24
 1298 02f2 EDEE0A7A 		vfma.f32	s15, s26, s20
 1299 02f6 E9EE8A7A 		vfma.f32	s15, s19, s20
 1300 02fa 17EE900A 		vmov	r0, s15
 1301 02fe FFF7FEFF 		bl	__aeabi_f2d
 1302 0302 2246     		mov	r2, r4
 1303 0304 2B46     		mov	r3, r5
 1304 0306 FFF7FEFF 		bl	__aeabi_ddiv
 1305 030a F0EE497A 		vmov.f32	s15, s18
 1306 030e DCEE8B7A 		vfnms.f32	s15, s25, s22
 1307 0312 4AE90401 		strd	r0, [r10, #-16]
 1308 0316 EEEE2A7A 		vfma.f32	s15, s28, s21
 1309 031a EAEE8C7A 		vfma.f32	s15, s21, s24
 1310 031e EBEE8A7A 		vfma.f32	s15, s23, s20
 1311 0322 E9EE8A7A 		vfma.f32	s15, s19, s20
ARM GAS  /tmp/ccxvJMdy.s 			page 24


 1312 0326 17EE900A 		vmov	r0, s15
 1313 032a FFF7FEFF 		bl	__aeabi_f2d
 1314 032e 01F10043 		add	r3, r1, #-2147483648
 1315 0332 3B93     		str	r3, [sp, #236]
 1316 0334 3A90     		str	r0, [sp, #232]
 1317 0336 2B46     		mov	r3, r5
 1318 0338 2246     		mov	r2, r4
 1319 033a DDE93A01 		ldrd	r0, [sp, #232]
 1320 033e FFF7FEFF 		bl	__aeabi_ddiv
 1321 0342 059B     		ldr	r3, [sp, #20]
 1322 0344 5B45     		cmp	r3, fp
 1323 0346 4AE90201 		strd	r0, [r10, #-8]
 1324 034a 7FF460AF 		bne	.L144
 1325              	.L139:
 1326 034e 309B     		ldr	r3, [sp, #192]
 1327 0350 D3F80031 		ldr	r3, [r3, #256]
 1328 0354 13F01003 		ands	r3, r3, #16
 1329 0358 1A93     		str	r3, [sp, #104]
 1330 035a 40F07D86 		bne	.L220
 1331 035e 109A     		ldr	r2, [sp, #64]
 1332 0360 AD4B     		ldr	r3, .L228+8
 1333 0362 1360     		str	r3, [r2]
 1334 0364 119B     		ldr	r3, [sp, #68]
 1335 0366 002B     		cmp	r3, #0
 1336 0368 00F09C80 		beq	.L153
 1337              	.L177:
 1338 036c 319D     		ldr	r5, [sp, #196]
 1339 036e 9FEDA87B 		vldr.64	d7, .L228
 1340 0372 D5F80401 		ldr	r0, [r5, #260]	@ float
 1341 0376 8DED127B 		vstr.64	d7, [sp, #72]
 1342 037a FFF7FEFF 		bl	__aeabi_f2d
 1343 037e 119B     		ldr	r3, [sp, #68]
 1344 0380 1290     		str	r0, [sp, #72]
 1345 0382 C3EB4372 		rsb	r2, r3, r3, lsl #29
 1346 0386 D200     		lsls	r2, r2, #3
 1347 0388 DB00     		lsls	r3, r3, #3
 1348 038a 0832     		adds	r2, r2, #8
 1349 038c 0DF57C7B 		add	fp, sp, #1008
 1350 0390 1692     		str	r2, [sp, #88]
 1351 0392 0BEB0302 		add	r2, fp, r3
 1352 0396 1492     		str	r2, [sp, #80]
 1353 0398 109A     		ldr	r2, [sp, #64]
 1354 039a 0F46     		mov	r7, r1
 1355 039c 1A44     		add	r2, r2, r3
 1356 039e 0599     		ldr	r1, [sp, #20]
 1357 03a0 0C92     		str	r2, [sp, #48]
 1358 03a2 FEAA     		add	r2, sp, #1016
 1359 03a4 D318     		adds	r3, r2, r3
 1360 03a6 4C01     		lsls	r4, r1, #5
 1361 03a8 05F58270 		add	r0, r5, #260
 1362 03ac 0893     		str	r3, [sp, #32]
 1363 03ae A4F13003 		sub	r3, r4, #48
 1364 03b2 07F10045 		add	r5, r7, #-2147483648
 1365 03b6 0A93     		str	r3, [sp, #40]
 1366 03b8 00EB8103 		add	r3, r0, r1, lsl #2
 1367 03bc 1395     		str	r5, [sp, #76]
 1368 03be 1893     		str	r3, [sp, #96]
ARM GAS  /tmp/ccxvJMdy.s 			page 25


 1369              	.L152:
 1370 03c0 9BED027B 		vldr.64	d7, [fp, #8]
 1371 03c4 169B     		ldr	r3, [sp, #88]
 1372 03c6 0C9A     		ldr	r2, [sp, #48]
 1373 03c8 8DED067B 		vstr.64	d7, [sp, #24]
 1374 03cc FEAC     		add	r4, sp, #1016
 1375 03ce 03EB020A 		add	r10, r3, r2
 1376              	.L149:
 1377 03d2 D4E90023 		ldrd	r2, [r4]
 1378 03d6 DDE90601 		ldrd	r0, [sp, #24]
 1379 03da FFF7FEFF 		bl	__aeabi_dmul
 1380 03de 059B     		ldr	r3, [sp, #20]
 1381 03e0 012B     		cmp	r3, #1
 1382 03e2 0646     		mov	r6, r0
 1383 03e4 0F46     		mov	r7, r1
 1384 03e6 04F10809 		add	r9, r4, #8
 1385 03ea 17D9     		bls	.L147
 1386 03ec 0A9B     		ldr	r3, [sp, #40]
 1387 03ee 083C     		subs	r4, r4, #8
 1388 03f0 03EB0908 		add	r8, r3, r9
 1389 03f4 5D46     		mov	r5, fp
 1390              	.L148:
 1391 03f6 D4E90A23 		ldrd	r2, [r4, #40]
 1392 03fa D5E90A01 		ldrd	r0, [r5, #40]
 1393 03fe FFF7FEFF 		bl	__aeabi_dmul
 1394 0402 0246     		mov	r2, r0
 1395 0404 0B46     		mov	r3, r1
 1396 0406 3046     		mov	r0, r6
 1397 0408 3946     		mov	r1, r7
 1398 040a FFF7FEFF 		bl	__aeabi_dadd
 1399 040e 2034     		adds	r4, r4, #32
 1400 0410 A045     		cmp	r8, r4
 1401 0412 0646     		mov	r6, r0
 1402 0414 0F46     		mov	r7, r1
 1403 0416 05F12005 		add	r5, r5, #32
 1404 041a ECD1     		bne	.L148
 1405              	.L147:
 1406 041c 089B     		ldr	r3, [sp, #32]
 1407 041e 4B45     		cmp	r3, r9
 1408 0420 EAE80267 		strd	r6, [r10], #8
 1409 0424 4C46     		mov	r4, r9
 1410 0426 D4D1     		bne	.L149
 1411 0428 DDE91223 		ldrd	r2, [sp, #72]
 1412 042c DDE90601 		ldrd	r0, [sp, #24]
 1413 0430 FFF7FEFF 		bl	__aeabi_dmul
 1414 0434 059B     		ldr	r3, [sp, #20]
 1415 0436 012B     		cmp	r3, #1
 1416 0438 0446     		mov	r4, r0
 1417 043a 0D46     		mov	r5, r1
 1418 043c 1FD9     		bls	.L150
 1419 043e 319B     		ldr	r3, [sp, #196]
 1420 0440 DDF860A0 		ldr	r10, [sp, #96]
 1421 0444 03F58477 		add	r7, r3, #264
 1422 0448 5E46     		mov	r6, fp
 1423              	.L151:
 1424 044a 57F8040B 		ldr	r0, [r7], #4	@ float
 1425 044e FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/ccxvJMdy.s 			page 26


 1426 0452 01F10049 		add	r9, r1, #-2147483648
 1427 0456 D6E90A23 		ldrd	r2, [r6, #40]
 1428 045a 4946     		mov	r1, r9
 1429 045c 8046     		mov	r8, r0
 1430 045e FFF7FEFF 		bl	__aeabi_dmul
 1431 0462 0246     		mov	r2, r0
 1432 0464 0B46     		mov	r3, r1
 1433 0466 2046     		mov	r0, r4
 1434 0468 2946     		mov	r1, r5
 1435 046a FFF7FEFF 		bl	__aeabi_dadd
 1436 046e BA45     		cmp	r10, r7
 1437 0470 0446     		mov	r4, r0
 1438 0472 0D46     		mov	r5, r1
 1439 0474 06F12006 		add	r6, r6, #32
 1440 0478 E7D1     		bne	.L151
 1441 047a CDE92E89 		strd	r8, [sp, #184]
 1442              	.L150:
 1443 047e 0C9B     		ldr	r3, [sp, #48]
 1444 0480 C3E90245 		strd	r4, [r3, #8]
 1445 0484 2833     		adds	r3, r3, #40
 1446 0486 0C93     		str	r3, [sp, #48]
 1447 0488 149B     		ldr	r3, [sp, #80]
 1448 048a 0BF1080B 		add	fp, fp, #8
 1449 048e 9B45     		cmp	fp, r3
 1450 0490 96D1     		bne	.L152
 1451              	.L146:
 1452 0492 1A9B     		ldr	r3, [sp, #104]
 1453 0494 33B1     		cbz	r3, .L153
 1454 0496 119A     		ldr	r2, [sp, #68]
 1455 0498 1099     		ldr	r1, [sp, #64]
 1456 049a 6048     		ldr	r0, .L228+12
 1457 049c 1346     		mov	r3, r2
 1458 049e 0133     		adds	r3, r3, #1
 1459 04a0 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 1460              	.L153:
 1461 04a4 8AA9     		add	r1, sp, #552
 1462 04a6 DDE91002 		ldrd	r0, r2, [sp, #64]
 1463 04aa FFF7FEFF 		bl	_ZN11FixedMatrixIdLj4ELj5EE11GaussJordanEPdj
 1464 04ae 309B     		ldr	r3, [sp, #192]
 1465 04b0 D3F80031 		ldr	r3, [r3, #256]
 1466 04b4 13F01003 		ands	r3, r3, #16
 1467 04b8 0893     		str	r3, [sp, #32]
 1468 04ba 40F0B585 		bne	.L221
 1469 04be 059B     		ldr	r3, [sp, #20]
 1470 04c0 002B     		cmp	r3, #0
 1471 04c2 00F03986 		beq	.L222
 1472              	.L176:
 1473 04c6 9FED527B 		vldr.64	d7, .L228
 1474 04ca 319B     		ldr	r3, [sp, #196]
 1475 04cc 8DED067B 		vstr.64	d7, [sp, #24]
 1476 04d0 03F5827B 		add	fp, r3, #260
 1477 04d4 119B     		ldr	r3, [sp, #68]
 1478 04d6 8AAA     		add	r2, sp, #552
 1479 04d8 0DF53C7A 		add	r10, sp, #752
 1480 04dc 02EBC308 		add	r8, r2, r3, lsl #3
 1481 04e0 4FF00009 		mov	r9, #0
 1482              	.L159:
ARM GAS  /tmp/ccxvJMdy.s 			page 27


 1483 04e4 5BF8040B 		ldr	r0, [fp], #4	@ float
 1484 04e8 FFF7FEFF 		bl	__aeabi_f2d
 1485 04ec 119B     		ldr	r3, [sp, #68]
 1486 04ee 0646     		mov	r6, r0
 1487 04f0 0F46     		mov	r7, r1
 1488 04f2 EAE80267 		strd	r6, [r10], #8
 1489 04f6 ABB1     		cbz	r3, .L156
 1490 04f8 FEAB     		add	r3, sp, #1016
 1491 04fa 03EB4915 		add	r5, r3, r9, lsl #5
 1492 04fe 8AAC     		add	r4, sp, #552
 1493              	.L157:
 1494 0500 F5E80223 		ldrd	r2, [r5], #8
 1495 0504 F4E80201 		ldrd	r0, [r4], #8
 1496 0508 FFF7FEFF 		bl	__aeabi_dmul
 1497 050c 0246     		mov	r2, r0
 1498 050e 0B46     		mov	r3, r1
 1499 0510 3046     		mov	r0, r6
 1500 0512 3946     		mov	r1, r7
 1501 0514 FFF7FEFF 		bl	__aeabi_dadd
 1502 0518 A045     		cmp	r8, r4
 1503 051a 0646     		mov	r6, r0
 1504 051c 0F46     		mov	r7, r1
 1505 051e EFD1     		bne	.L157
 1506 0520 4AE90267 		strd	r6, [r10, #-8]
 1507              	.L156:
 1508 0524 3246     		mov	r2, r6
 1509 0526 3B46     		mov	r3, r7
 1510 0528 3046     		mov	r0, r6
 1511 052a 3946     		mov	r1, r7
 1512 052c FFF7FEFF 		bl	__aeabi_dmul
 1513 0530 0B46     		mov	r3, r1
 1514 0532 0246     		mov	r2, r0
 1515 0534 DDE90601 		ldrd	r0, [sp, #24]
 1516 0538 FFF7FEFF 		bl	__aeabi_dadd
 1517 053c 059B     		ldr	r3, [sp, #20]
 1518 053e 09F10109 		add	r9, r9, #1
 1519 0542 4B45     		cmp	r3, r9
 1520 0544 CDE90601 		strd	r0, [sp, #24]
 1521 0548 CCD8     		bhi	.L159
 1522              	.L158:
 1523 054a 089B     		ldr	r3, [sp, #32]
 1524 054c 23B1     		cbz	r3, .L218
 1525 054e 059A     		ldr	r2, [sp, #20]
 1526 0550 3348     		ldr	r0, .L228+16
 1527 0552 BCA9     		add	r1, sp, #752
 1528 0554 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 1529              	.L218:
 1530 0558 119B     		ldr	r3, [sp, #68]
 1531 055a 002B     		cmp	r3, #0
 1532 055c 00F01485 		beq	.L161
 1533 0560 4FF00008 		mov	r8, #0
 1534 0564 DDF824A2 		ldr	r10, [sp, #548]
 1535 0568 DDF844B0 		ldr	fp, [sp, #68]
 1536 056c C146     		mov	r9, r8
 1537 056e 4646     		mov	r6, r8
 1538 0570 8AAF     		add	r7, sp, #552
 1539              	.L164:
ARM GAS  /tmp/ccxvJMdy.s 			page 28


 1540 0572 F7E80245 		ldrd	r4, [r7], #8
 1541 0576 2246     		mov	r2, r4
 1542 0578 2B46     		mov	r3, r5
 1543 057a 2046     		mov	r0, r4
 1544 057c 2946     		mov	r1, r5
 1545 057e FFF7FEFF 		bl	__aeabi_dcmpun
 1546 0582 0028     		cmp	r0, #0
 1547 0584 40F0FC84 		bne	.L179
 1548 0588 DAF83400 		ldr	r0, [r10, #52]	@ float
 1549 058c FFF7FEFF 		bl	__aeabi_f2d
 1550 0590 2246     		mov	r2, r4
 1551 0592 2B46     		mov	r3, r5
 1552 0594 FFF7FEFF 		bl	__aeabi_dmul
 1553 0598 47E90201 		strd	r0, [r7, #-8]
 1554 059c FFF7FEFF 		bl	__aeabi_d2f
 1555 05a0 07EE100A 		vmov	s14, r0
 1556 05a4 DAED0E7A 		vldr.32	s15, [r10, #56]
 1557 05a8 B0EEC77A 		vabs.f32	s14, s14
 1558 05ac B4EE677A 		vcmp.f32	s14, s15
 1559 05b0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1560 05b4 C8BF     		it	gt
 1561 05b6 4FF00108 		movgt	r8, #1
 1562              	.L163:
 1563 05ba 0136     		adds	r6, r6, #1
 1564 05bc B345     		cmp	fp, r6
 1565 05be D8D8     		bhi	.L164
 1566 05c0 B9F1000F 		cmp	r9, #0
 1567 05c4 40F0CB84 		bne	.L223
 1568 05c8 309B     		ldr	r3, [sp, #192]
 1569 05ca 899C     		ldr	r4, [sp, #548]
 1570 05cc 1A68     		ldr	r2, [r3]
 1571 05ce 2369     		ldr	r3, [r4, #16]
 1572 05d0 D2F8BC22 		ldr	r2, [r2, #700]
 1573 05d4 9A42     		cmp	r2, r3
 1574 05d6 40F0DF84 		bne	.L167
 1575 05da B8F1000F 		cmp	r8, #0
 1576 05de 00F05085 		beq	.L168
 1577 05e2 A06B     		ldr	r0, [r4, #56]	@ float
 1578 05e4 FFF7FEFF 		bl	__aeabi_f2d
 1579 05e8 889D     		ldr	r5, [sp, #544]
 1580 05ea 0B46     		mov	r3, r1
 1581 05ec 0246     		mov	r2, r0
 1582 05ee 0D49     		ldr	r1, .L228+20
 1583 05f0 2846     		mov	r0, r5
 1584 05f2 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1585 05f6 2046     		mov	r0, r4
 1586 05f8 2A46     		mov	r2, r5
 1587 05fa 8AA9     		add	r1, sp, #552
 1588 05fc FFF7FEFF 		bl	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef
 1589 0600 C146     		mov	r9, r8
 1590 0602 4846     		mov	r0, r9
 1591 0604 0DF2FC7D 		addw	sp, sp, #2044
 1592              		@ sp needed
 1593 0608 BDEC0E8B 		vldm	sp!, {d8-d14}
 1594 060c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1595              	.L229:
 1596              		.align	3
ARM GAS  /tmp/ccxvJMdy.s 			page 29


 1597              	.L228:
 1598 0610 00000000 		.word	0
 1599 0614 00000000 		.word	0
 1600 0618 08000000 		.word	_ZTV11FixedMatrixIdLj4ELj5EE+8
 1601 061c 20000000 		.word	.LC5
 1602 0620 4C000000 		.word	.LC8
 1603 0624 84000000 		.word	.LC10
 1604              	.L142:
 1605 0628 98ED05CA 		vldr.32	s24, [r8, #20]
 1606 062c D8ED06BA 		vldr.32	s23, [r8, #24]
 1607 0630 6CEE2B7A 		vmul.f32	s15, s24, s23
 1608 0634 17EE900A 		vmov	r0, s15
 1609 0638 FFF7FEFF 		bl	__aeabi_f2d
 1610 063c 98ED07BA 		vldr.32	s22, [r8, #28]
 1611 0640 6CEE0B7A 		vmul.f32	s15, s24, s22
 1612 0644 CDE90601 		strd	r0, [sp, #24]
 1613 0648 17EE900A 		vmov	r0, s15
 1614 064c FFF7FEFF 		bl	__aeabi_f2d
 1615 0650 D8ED08AA 		vldr.32	s21, [r8, #32]
 1616 0654 6CEE2A7A 		vmul.f32	s15, s24, s21
 1617 0658 CDE90801 		strd	r0, [sp, #32]
 1618 065c 17EE900A 		vmov	r0, s15
 1619 0660 FFF7FEFF 		bl	__aeabi_f2d
 1620 0664 6BEE8B7A 		vmul.f32	s15, s23, s22
 1621 0668 CDE90A01 		strd	r0, [sp, #40]
 1622 066c 17EE900A 		vmov	r0, s15
 1623 0670 FFF7FEFF 		bl	__aeabi_f2d
 1624 0674 6BEEAA7A 		vmul.f32	s15, s23, s21
 1625 0678 CDE90C01 		strd	r0, [sp, #48]
 1626 067c 17EE900A 		vmov	r0, s15
 1627 0680 FFF7FEFF 		bl	__aeabi_f2d
 1628 0684 6BEE2A7A 		vmul.f32	s15, s22, s21
 1629 0688 0646     		mov	r6, r0
 1630 068a 17EE900A 		vmov	r0, s15
 1631 068e 0F46     		mov	r7, r1
 1632 0690 FFF7FEFF 		bl	__aeabi_f2d
 1633 0694 98ED09AA 		vldr.32	s20, [r8, #36]
 1634 0698 D8ED0A9A 		vldr.32	s19, [r8, #40]
 1635 069c 6AEE297A 		vmul.f32	s15, s20, s19
 1636 06a0 0446     		mov	r4, r0
 1637 06a2 17EE900A 		vmov	r0, s15
 1638 06a6 0D46     		mov	r5, r1
 1639 06a8 FFF7FEFF 		bl	__aeabi_f2d
 1640 06ac 98ED0B9A 		vldr.32	s18, [r8, #44]
 1641 06b0 6AEE097A 		vmul.f32	s15, s20, s18
 1642 06b4 CDE91201 		strd	r0, [sp, #72]
 1643 06b8 17EE900A 		vmov	r0, s15
 1644 06bc FFF7FEFF 		bl	__aeabi_f2d
 1645 06c0 D8ED0C8A 		vldr.32	s17, [r8, #48]
 1646 06c4 6AEE287A 		vmul.f32	s15, s20, s17
 1647 06c8 CDE91401 		strd	r0, [sp, #80]
 1648 06cc 17EE900A 		vmov	r0, s15
 1649 06d0 FFF7FEFF 		bl	__aeabi_f2d
 1650 06d4 69EE897A 		vmul.f32	s15, s19, s18
 1651 06d8 CDE91601 		strd	r0, [sp, #88]
 1652 06dc 17EE900A 		vmov	r0, s15
 1653 06e0 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/ccxvJMdy.s 			page 30


 1654 06e4 69EEA87A 		vmul.f32	s15, s19, s17
 1655 06e8 CDE91801 		strd	r0, [sp, #96]
 1656 06ec 17EE900A 		vmov	r0, s15
 1657 06f0 FFF7FEFF 		bl	__aeabi_f2d
 1658 06f4 69EE287A 		vmul.f32	s15, s18, s17
 1659 06f8 CDE91A01 		strd	r0, [sp, #104]
 1660 06fc 17EE900A 		vmov	r0, s15
 1661 0700 FFF7FEFF 		bl	__aeabi_f2d
 1662 0704 0246     		mov	r2, r0
 1663 0706 0B46     		mov	r3, r1
 1664 0708 3046     		mov	r0, r6
 1665 070a 3946     		mov	r1, r7
 1666 070c CDE92A23 		strd	r2, [sp, #168]
 1667 0710 FFF7FEFF 		bl	__aeabi_dmul
 1668 0714 DDE92A23 		ldrd	r2, [sp, #168]
 1669 0718 CDE93C01 		strd	r0, [sp, #240]
 1670 071c DDE90A01 		ldrd	r0, [sp, #40]
 1671 0720 FFF7FEFF 		bl	__aeabi_dmul
 1672 0724 DDE92A23 		ldrd	r2, [sp, #168]
 1673 0728 CDE93E01 		strd	r0, [sp, #248]
 1674 072c DDE90C01 		ldrd	r0, [sp, #48]
 1675 0730 FFF7FEFF 		bl	__aeabi_dmul
 1676 0734 DDE92A23 		ldrd	r2, [sp, #168]
 1677 0738 CDE94001 		strd	r0, [sp, #256]
 1678 073c DDE90801 		ldrd	r0, [sp, #32]
 1679 0740 FFF7FEFF 		bl	__aeabi_dmul
 1680 0744 DDE91A23 		ldrd	r2, [sp, #104]
 1681 0748 CDE94201 		strd	r0, [sp, #264]
 1682 074c 2046     		mov	r0, r4
 1683 074e 2946     		mov	r1, r5
 1684 0750 FFF7FEFF 		bl	__aeabi_dmul
 1685 0754 DDE91A23 		ldrd	r2, [sp, #104]
 1686 0758 CDE94401 		strd	r0, [sp, #272]
 1687 075c DDE90A01 		ldrd	r0, [sp, #40]
 1688 0760 FFF7FEFF 		bl	__aeabi_dmul
 1689 0764 DDE91A23 		ldrd	r2, [sp, #104]
 1690 0768 CDE94601 		strd	r0, [sp, #280]
 1691 076c DDE90C01 		ldrd	r0, [sp, #48]
 1692 0770 FFF7FEFF 		bl	__aeabi_dmul
 1693 0774 DDE91A23 		ldrd	r2, [sp, #104]
 1694 0778 CDE94801 		strd	r0, [sp, #288]
 1695 077c DDE90601 		ldrd	r0, [sp, #24]
 1696 0780 FFF7FEFF 		bl	__aeabi_dmul
 1697 0784 DDE91623 		ldrd	r2, [sp, #88]
 1698 0788 CDE94A01 		strd	r0, [sp, #296]
 1699 078c 2046     		mov	r0, r4
 1700 078e 2946     		mov	r1, r5
 1701 0790 FFF7FEFF 		bl	__aeabi_dmul
 1702 0794 DDE91623 		ldrd	r2, [sp, #88]
 1703 0798 CDE94C01 		strd	r0, [sp, #304]
 1704 079c 3046     		mov	r0, r6
 1705 079e 3946     		mov	r1, r7
 1706 07a0 FFF7FEFF 		bl	__aeabi_dmul
 1707 07a4 DDE91623 		ldrd	r2, [sp, #88]
 1708 07a8 CDE94E01 		strd	r0, [sp, #312]
 1709 07ac DDE90801 		ldrd	r0, [sp, #32]
 1710 07b0 FFF7FEFF 		bl	__aeabi_dmul
ARM GAS  /tmp/ccxvJMdy.s 			page 31


 1711 07b4 DDE91623 		ldrd	r2, [sp, #88]
 1712 07b8 CDE95001 		strd	r0, [sp, #320]
 1713 07bc DDE90601 		ldrd	r0, [sp, #24]
 1714 07c0 FFF7FEFF 		bl	__aeabi_dmul
 1715 07c4 DDE91823 		ldrd	r2, [sp, #96]
 1716 07c8 CDE95201 		strd	r0, [sp, #328]
 1717 07cc 2046     		mov	r0, r4
 1718 07ce 2946     		mov	r1, r5
 1719 07d0 FFF7FEFF 		bl	__aeabi_dmul
 1720 07d4 DDE91823 		ldrd	r2, [sp, #96]
 1721 07d8 CDE95401 		strd	r0, [sp, #336]
 1722 07dc 3046     		mov	r0, r6
 1723 07de 3946     		mov	r1, r7
 1724 07e0 FFF7FEFF 		bl	__aeabi_dmul
 1725 07e4 DDE91823 		ldrd	r2, [sp, #96]
 1726 07e8 CDE95601 		strd	r0, [sp, #344]
 1727 07ec DDE90801 		ldrd	r0, [sp, #32]
 1728 07f0 FFF7FEFF 		bl	__aeabi_dmul
 1729 07f4 DDE91823 		ldrd	r2, [sp, #96]
 1730 07f8 CDE95801 		strd	r0, [sp, #352]
 1731 07fc DDE90601 		ldrd	r0, [sp, #24]
 1732 0800 FFF7FEFF 		bl	__aeabi_dmul
 1733 0804 DDE91423 		ldrd	r2, [sp, #80]
 1734 0808 CDE95A01 		strd	r0, [sp, #360]
 1735 080c 2046     		mov	r0, r4
 1736 080e 2946     		mov	r1, r5
 1737 0810 FFF7FEFF 		bl	__aeabi_dmul
 1738 0814 DDE91423 		ldrd	r2, [sp, #80]
 1739 0818 CDE95C01 		strd	r0, [sp, #368]
 1740 081c DDE90A01 		ldrd	r0, [sp, #40]
 1741 0820 FFF7FEFF 		bl	__aeabi_dmul
 1742 0824 DDE91423 		ldrd	r2, [sp, #80]
 1743 0828 CDE95E01 		strd	r0, [sp, #376]
 1744 082c DDE90C01 		ldrd	r0, [sp, #48]
 1745 0830 FFF7FEFF 		bl	__aeabi_dmul
 1746 0834 DDE91423 		ldrd	r2, [sp, #80]
 1747 0838 CDE96001 		strd	r0, [sp, #384]
 1748 083c DDE90601 		ldrd	r0, [sp, #24]
 1749 0840 FFF7FEFF 		bl	__aeabi_dmul
 1750 0844 DDE91223 		ldrd	r2, [sp, #72]
 1751 0848 CDE96201 		strd	r0, [sp, #392]
 1752 084c 3046     		mov	r0, r6
 1753 084e 3946     		mov	r1, r7
 1754 0850 FFF7FEFF 		bl	__aeabi_dmul
 1755 0854 DDE91223 		ldrd	r2, [sp, #72]
 1756 0858 CDE96401 		strd	r0, [sp, #400]
 1757 085c DDE90A01 		ldrd	r0, [sp, #40]
 1758 0860 FFF7FEFF 		bl	__aeabi_dmul
 1759 0864 DDE91223 		ldrd	r2, [sp, #72]
 1760 0868 CDE96601 		strd	r0, [sp, #408]
 1761 086c DDE90C01 		ldrd	r0, [sp, #48]
 1762 0870 FFF7FEFF 		bl	__aeabi_dmul
 1763 0874 DDE91223 		ldrd	r2, [sp, #72]
 1764 0878 CDE96801 		strd	r0, [sp, #416]
 1765 087c DDE90801 		ldrd	r0, [sp, #32]
 1766 0880 FFF7FEFF 		bl	__aeabi_dmul
 1767 0884 DDE93E23 		ldrd	r2, [sp, #248]
ARM GAS  /tmp/ccxvJMdy.s 			page 32


 1768 0888 CDE96A01 		strd	r0, [sp, #424]
 1769 088c DDE93C01 		ldrd	r0, [sp, #240]
 1770 0890 FFF7FEFF 		bl	__aeabi_dsub
 1771 0894 DDE94023 		ldrd	r2, [sp, #256]
 1772 0898 FFF7FEFF 		bl	__aeabi_dsub
 1773 089c DDE94223 		ldrd	r2, [sp, #264]
 1774 08a0 FFF7FEFF 		bl	__aeabi_dadd
 1775 08a4 DDE94423 		ldrd	r2, [sp, #272]
 1776 08a8 FFF7FEFF 		bl	__aeabi_dsub
 1777 08ac DDE94623 		ldrd	r2, [sp, #280]
 1778 08b0 FFF7FEFF 		bl	__aeabi_dadd
 1779 08b4 DDE94823 		ldrd	r2, [sp, #288]
 1780 08b8 FFF7FEFF 		bl	__aeabi_dadd
 1781 08bc DDE94A23 		ldrd	r2, [sp, #296]
 1782 08c0 FFF7FEFF 		bl	__aeabi_dsub
 1783 08c4 DDE94C23 		ldrd	r2, [sp, #304]
 1784 08c8 FFF7FEFF 		bl	__aeabi_dadd
 1785 08cc DDE94E23 		ldrd	r2, [sp, #312]
 1786 08d0 FFF7FEFF 		bl	__aeabi_dsub
 1787 08d4 DDE95023 		ldrd	r2, [sp, #320]
 1788 08d8 FFF7FEFF 		bl	__aeabi_dsub
 1789 08dc DDE95223 		ldrd	r2, [sp, #328]
 1790 08e0 FFF7FEFF 		bl	__aeabi_dadd
 1791 08e4 DDE95423 		ldrd	r2, [sp, #336]
 1792 08e8 FFF7FEFF 		bl	__aeabi_dadd
 1793 08ec DDE95623 		ldrd	r2, [sp, #344]
 1794 08f0 FFF7FEFF 		bl	__aeabi_dsub
 1795 08f4 DDE95823 		ldrd	r2, [sp, #352]
 1796 08f8 FFF7FEFF 		bl	__aeabi_dsub
 1797 08fc DDE95A23 		ldrd	r2, [sp, #360]
 1798 0900 FFF7FEFF 		bl	__aeabi_dadd
 1799 0904 DDE95C23 		ldrd	r2, [sp, #368]
 1800 0908 FFF7FEFF 		bl	__aeabi_dsub
 1801 090c DDE95E23 		ldrd	r2, [sp, #376]
 1802 0910 FFF7FEFF 		bl	__aeabi_dadd
 1803 0914 DDE96023 		ldrd	r2, [sp, #384]
 1804 0918 FFF7FEFF 		bl	__aeabi_dadd
 1805 091c DDE96223 		ldrd	r2, [sp, #392]
 1806 0920 FFF7FEFF 		bl	__aeabi_dsub
 1807 0924 DDE96423 		ldrd	r2, [sp, #400]
 1808 0928 FFF7FEFF 		bl	__aeabi_dadd
 1809 092c DDE96623 		ldrd	r2, [sp, #408]
 1810 0930 FFF7FEFF 		bl	__aeabi_dsub
 1811 0934 DDE96823 		ldrd	r2, [sp, #416]
 1812 0938 FFF7FEFF 		bl	__aeabi_dsub
 1813 093c DDE96A23 		ldrd	r2, [sp, #424]
 1814 0940 FFF7FEFF 		bl	__aeabi_dadd
 1815 0944 109B     		ldr	r3, [sp, #64]
 1816 0946 93ED008A 		vldr.32	s16, [r3]
 1817 094a 6CEE087A 		vmul.f32	s15, s24, s16
 1818 094e CDE93201 		strd	r0, [sp, #200]
 1819 0952 17EE900A 		vmov	r0, s15
 1820 0956 FFF7FEFF 		bl	__aeabi_f2d
 1821 095a 6BEE887A 		vmul.f32	s15, s23, s16
 1822 095e CDE91C01 		strd	r0, [sp, #112]
 1823 0962 17EE900A 		vmov	r0, s15
 1824 0966 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  /tmp/ccxvJMdy.s 			page 33


 1825 096a 6BEE087A 		vmul.f32	s15, s22, s16
 1826 096e CDE91E01 		strd	r0, [sp, #120]
 1827 0972 17EE900A 		vmov	r0, s15
 1828 0976 FFF7FEFF 		bl	__aeabi_f2d
 1829 097a 6AEE887A 		vmul.f32	s15, s21, s16
 1830 097e CDE92001 		strd	r0, [sp, #128]
 1831 0982 17EE900A 		vmov	r0, s15
 1832 0986 FFF7FEFF 		bl	__aeabi_f2d
 1833 098a 9DEDBC8A 		vldr.32	s16, [sp, #752]
 1834 098e 6AEE087A 		vmul.f32	s15, s20, s16
 1835 0992 CDE92201 		strd	r0, [sp, #136]
 1836 0996 17EE900A 		vmov	r0, s15
 1837 099a FFF7FEFF 		bl	__aeabi_f2d
 1838 099e 69EE887A 		vmul.f32	s15, s19, s16
 1839 09a2 CDE92401 		strd	r0, [sp, #144]
 1840 09a6 17EE900A 		vmov	r0, s15
 1841 09aa FFF7FEFF 		bl	__aeabi_f2d
 1842 09ae 69EE087A 		vmul.f32	s15, s18, s16
 1843 09b2 CDE92C01 		strd	r0, [sp, #176]
 1844 09b6 17EE900A 		vmov	r0, s15
 1845 09ba FFF7FEFF 		bl	__aeabi_f2d
 1846 09be 68EE887A 		vmul.f32	s15, s17, s16
 1847 09c2 CDE92601 		strd	r0, [sp, #152]
 1848 09c6 17EE900A 		vmov	r0, s15
 1849 09ca FFF7FEFF 		bl	__aeabi_f2d
 1850 09ce DDE92223 		ldrd	r2, [sp, #136]
 1851 09d2 CDE92801 		strd	r0, [sp, #160]
 1852 09d6 DDE92A01 		ldrd	r0, [sp, #168]
 1853 09da FFF7FEFF 		bl	__aeabi_dmul
 1854 09de DDE92023 		ldrd	r2, [sp, #128]
 1855 09e2 CDE96C01 		strd	r0, [sp, #432]
 1856 09e6 DDE92A01 		ldrd	r0, [sp, #168]
 1857 09ea FFF7FEFF 		bl	__aeabi_dmul
 1858 09ee DDE92223 		ldrd	r2, [sp, #136]
 1859 09f2 CDE92A01 		strd	r0, [sp, #168]
 1860 09f6 DDE91A01 		ldrd	r0, [sp, #104]
 1861 09fa FFF7FEFF 		bl	__aeabi_dmul
 1862 09fe DDE91E23 		ldrd	r2, [sp, #120]
 1863 0a02 CDE96E01 		strd	r0, [sp, #440]
 1864 0a06 DDE91A01 		ldrd	r0, [sp, #104]
 1865 0a0a FFF7FEFF 		bl	__aeabi_dmul
 1866 0a0e DDE92823 		ldrd	r2, [sp, #160]
 1867 0a12 CDE91A01 		strd	r0, [sp, #104]
 1868 0a16 2046     		mov	r0, r4
 1869 0a18 2946     		mov	r1, r5
 1870 0a1a FFF7FEFF 		bl	__aeabi_dmul
 1871 0a1e DDE92823 		ldrd	r2, [sp, #160]
 1872 0a22 CDE97001 		strd	r0, [sp, #448]
 1873 0a26 3046     		mov	r0, r6
 1874 0a28 3946     		mov	r1, r7
 1875 0a2a FFF7FEFF 		bl	__aeabi_dmul
 1876 0a2e CDE97201 		strd	r0, [sp, #456]
 1877 0a32 DDE92823 		ldrd	r2, [sp, #160]
 1878 0a36 DDE92001 		ldrd	r0, [sp, #128]
 1879 0a3a FFF7FEFF 		bl	__aeabi_dmul
 1880 0a3e DDE92823 		ldrd	r2, [sp, #160]
 1881 0a42 CDE97401 		strd	r0, [sp, #464]
ARM GAS  /tmp/ccxvJMdy.s 			page 34


 1882 0a46 DDE91E01 		ldrd	r0, [sp, #120]
 1883 0a4a FFF7FEFF 		bl	__aeabi_dmul
 1884 0a4e DDE92023 		ldrd	r2, [sp, #128]
 1885 0a52 CDE97601 		strd	r0, [sp, #472]
 1886 0a56 DDE91801 		ldrd	r0, [sp, #96]
 1887 0a5a FFF7FEFF 		bl	__aeabi_dmul
 1888 0a5e DDE91E23 		ldrd	r2, [sp, #120]
 1889 0a62 CDE97801 		strd	r0, [sp, #480]
 1890 0a66 DDE91801 		ldrd	r0, [sp, #96]
 1891 0a6a FFF7FEFF 		bl	__aeabi_dmul
 1892 0a6e DDE92623 		ldrd	r2, [sp, #152]
 1893 0a72 CDE91801 		strd	r0, [sp, #96]
 1894 0a76 2046     		mov	r0, r4
 1895 0a78 2946     		mov	r1, r5
 1896 0a7a FFF7FEFF 		bl	__aeabi_dmul
 1897 0a7e DDE92623 		ldrd	r2, [sp, #152]
 1898 0a82 0446     		mov	r4, r0
 1899 0a84 0D46     		mov	r5, r1
 1900 0a86 DDE92201 		ldrd	r0, [sp, #136]
 1901 0a8a FFF7FEFF 		bl	__aeabi_dmul
 1902 0a8e DDE92623 		ldrd	r2, [sp, #152]
 1903 0a92 CDE97A01 		strd	r0, [sp, #488]
 1904 0a96 DDE90C01 		ldrd	r0, [sp, #48]
 1905 0a9a FFF7FEFF 		bl	__aeabi_dmul
 1906 0a9e DDE92623 		ldrd	r2, [sp, #152]
 1907 0aa2 CDE97C01 		strd	r0, [sp, #496]
 1908 0aa6 DDE91E01 		ldrd	r0, [sp, #120]
 1909 0aaa FFF7FEFF 		bl	__aeabi_dmul
 1910 0aae DDE92C23 		ldrd	r2, [sp, #176]
 1911 0ab2 CDE97E01 		strd	r0, [sp, #504]
 1912 0ab6 3046     		mov	r0, r6
 1913 0ab8 3946     		mov	r1, r7
 1914 0aba FFF7FEFF 		bl	__aeabi_dmul
 1915 0abe DDE92C67 		ldrd	r6, [sp, #176]
 1916 0ac2 CDE98001 		strd	r0, [sp, #512]
 1917 0ac6 3246     		mov	r2, r6
 1918 0ac8 3B46     		mov	r3, r7
 1919 0aca DDE92201 		ldrd	r0, [sp, #136]
 1920 0ace FFF7FEFF 		bl	__aeabi_dmul
 1921 0ad2 3246     		mov	r2, r6
 1922 0ad4 3B46     		mov	r3, r7
 1923 0ad6 CDE98201 		strd	r0, [sp, #520]
 1924 0ada DDE90C01 		ldrd	r0, [sp, #48]
 1925 0ade FFF7FEFF 		bl	__aeabi_dmul
 1926 0ae2 CDE92C67 		strd	r6, [sp, #176]
 1927 0ae6 3246     		mov	r2, r6
 1928 0ae8 3B46     		mov	r3, r7
 1929 0aea CDE90C01 		strd	r0, [sp, #48]
 1930 0aee DDE92001 		ldrd	r0, [sp, #128]
 1931 0af2 FFF7FEFF 		bl	__aeabi_dmul
 1932 0af6 DDE96C23 		ldrd	r2, [sp, #432]
 1933 0afa 0646     		mov	r6, r0
 1934 0afc 0F46     		mov	r7, r1
 1935 0afe DDE93C01 		ldrd	r0, [sp, #240]
 1936 0b02 FFF7FEFF 		bl	__aeabi_dsub
 1937 0b06 DDE94023 		ldrd	r2, [sp, #256]
 1938 0b0a FFF7FEFF 		bl	__aeabi_dsub
ARM GAS  /tmp/ccxvJMdy.s 			page 35


 1939 0b0e DDE92A23 		ldrd	r2, [sp, #168]
 1940 0b12 FFF7FEFF 		bl	__aeabi_dadd
 1941 0b16 DDE94423 		ldrd	r2, [sp, #272]
 1942 0b1a FFF7FEFF 		bl	__aeabi_dsub
 1943 0b1e DDE96E23 		ldrd	r2, [sp, #440]
 1944 0b22 FFF7FEFF 		bl	__aeabi_dadd
 1945 0b26 DDE94823 		ldrd	r2, [sp, #288]
 1946 0b2a FFF7FEFF 		bl	__aeabi_dadd
 1947 0b2e DDE91A23 		ldrd	r2, [sp, #104]
 1948 0b32 FFF7FEFF 		bl	__aeabi_dsub
 1949 0b36 DDE97023 		ldrd	r2, [sp, #448]
 1950 0b3a FFF7FEFF 		bl	__aeabi_dadd
 1951 0b3e DDE97223 		ldrd	r2, [sp, #456]
 1952 0b42 FFF7FEFF 		bl	__aeabi_dsub
 1953 0b46 DDE97423 		ldrd	r2, [sp, #464]
 1954 0b4a FFF7FEFF 		bl	__aeabi_dsub
 1955 0b4e DDE97623 		ldrd	r2, [sp, #472]
 1956 0b52 FFF7FEFF 		bl	__aeabi_dadd
 1957 0b56 DDE95423 		ldrd	r2, [sp, #336]
 1958 0b5a FFF7FEFF 		bl	__aeabi_dadd
 1959 0b5e DDE95623 		ldrd	r2, [sp, #344]
 1960 0b62 FFF7FEFF 		bl	__aeabi_dsub
 1961 0b66 DDE97823 		ldrd	r2, [sp, #480]
 1962 0b6a FFF7FEFF 		bl	__aeabi_dsub
 1963 0b6e DDE91823 		ldrd	r2, [sp, #96]
 1964 0b72 FFF7FEFF 		bl	__aeabi_dadd
 1965 0b76 2246     		mov	r2, r4
 1966 0b78 2B46     		mov	r3, r5
 1967 0b7a FFF7FEFF 		bl	__aeabi_dsub
 1968 0b7e DDE97A23 		ldrd	r2, [sp, #488]
 1969 0b82 FFF7FEFF 		bl	__aeabi_dadd
 1970 0b86 DDE97C23 		ldrd	r2, [sp, #496]
 1971 0b8a FFF7FEFF 		bl	__aeabi_dadd
 1972 0b8e DDE97E23 		ldrd	r2, [sp, #504]
 1973 0b92 FFF7FEFF 		bl	__aeabi_dsub
 1974 0b96 DDE98023 		ldrd	r2, [sp, #512]
 1975 0b9a FFF7FEFF 		bl	__aeabi_dadd
 1976 0b9e DDE98223 		ldrd	r2, [sp, #520]
 1977 0ba2 FFF7FEFF 		bl	__aeabi_dsub
 1978 0ba6 DDE90C23 		ldrd	r2, [sp, #48]
 1979 0baa FFF7FEFF 		bl	__aeabi_dsub
 1980 0bae 3246     		mov	r2, r6
 1981 0bb0 3B46     		mov	r3, r7
 1982 0bb2 CDE94867 		strd	r6, [sp, #288]
 1983 0bb6 FFF7FEFF 		bl	__aeabi_dadd
 1984 0bba 01F10043 		add	r3, r1, #-2147483648
 1985 0bbe 8593     		str	r3, [sp, #532]
 1986 0bc0 8490     		str	r0, [sp, #528]
 1987 0bc2 DDE93223 		ldrd	r2, [sp, #200]
 1988 0bc6 DDE98401 		ldrd	r0, [sp, #528]
 1989 0bca FFF7FEFF 		bl	__aeabi_ddiv
 1990 0bce DDE92223 		ldrd	r2, [sp, #136]
 1991 0bd2 CAE90201 		strd	r0, [r10, #8]
 1992 0bd6 DDE91601 		ldrd	r0, [sp, #88]
 1993 0bda FFF7FEFF 		bl	__aeabi_dmul
 1994 0bde DDE91C23 		ldrd	r2, [sp, #112]
 1995 0be2 0646     		mov	r6, r0
ARM GAS  /tmp/ccxvJMdy.s 			page 36


 1996 0be4 0F46     		mov	r7, r1
 1997 0be6 DDE91601 		ldrd	r0, [sp, #88]
 1998 0bea FFF7FEFF 		bl	__aeabi_dmul
 1999 0bee DDE92823 		ldrd	r2, [sp, #160]
 2000 0bf2 CDE91601 		strd	r0, [sp, #88]
 2001 0bf6 DDE90A01 		ldrd	r0, [sp, #40]
 2002 0bfa FFF7FEFF 		bl	__aeabi_dmul
 2003 0bfe DDE92823 		ldrd	r2, [sp, #160]
 2004 0c02 CDE93C01 		strd	r0, [sp, #240]
 2005 0c06 DDE91C01 		ldrd	r0, [sp, #112]
 2006 0c0a FFF7FEFF 		bl	__aeabi_dmul
 2007 0c0e DDE92023 		ldrd	r2, [sp, #128]
 2008 0c12 CDE92801 		strd	r0, [sp, #160]
 2009 0c16 DDE91401 		ldrd	r0, [sp, #80]
 2010 0c1a FFF7FEFF 		bl	__aeabi_dmul
 2011 0c1e DDE91C23 		ldrd	r2, [sp, #112]
 2012 0c22 CDE94001 		strd	r0, [sp, #256]
 2013 0c26 DDE91401 		ldrd	r0, [sp, #80]
 2014 0c2a FFF7FEFF 		bl	__aeabi_dmul
 2015 0c2e DDE92623 		ldrd	r2, [sp, #152]
 2016 0c32 CDE91401 		strd	r0, [sp, #80]
 2017 0c36 DDE90801 		ldrd	r0, [sp, #32]
 2018 0c3a FFF7FEFF 		bl	__aeabi_dmul
 2019 0c3e DDE92623 		ldrd	r2, [sp, #152]
 2020 0c42 CDE94401 		strd	r0, [sp, #272]
 2021 0c46 DDE91C01 		ldrd	r0, [sp, #112]
 2022 0c4a FFF7FEFF 		bl	__aeabi_dmul
 2023 0c4e DDE92423 		ldrd	r2, [sp, #144]
 2024 0c52 CDE92601 		strd	r0, [sp, #152]
 2025 0c56 DDE90A01 		ldrd	r0, [sp, #40]
 2026 0c5a FFF7FEFF 		bl	__aeabi_dmul
 2027 0c5e DDE92423 		ldrd	r2, [sp, #144]
 2028 0c62 CDE90A01 		strd	r0, [sp, #40]
 2029 0c66 DDE92201 		ldrd	r0, [sp, #136]
 2030 0c6a FFF7FEFF 		bl	__aeabi_dmul
 2031 0c6e DDE92423 		ldrd	r2, [sp, #144]
 2032 0c72 CDE92201 		strd	r0, [sp, #136]
 2033 0c76 DDE90801 		ldrd	r0, [sp, #32]
 2034 0c7a FFF7FEFF 		bl	__aeabi_dmul
 2035 0c7e DDE92423 		ldrd	r2, [sp, #144]
 2036 0c82 CDE90801 		strd	r0, [sp, #32]
 2037 0c86 DDE92001 		ldrd	r0, [sp, #128]
 2038 0c8a FFF7FEFF 		bl	__aeabi_dmul
 2039 0c8e DDE96C23 		ldrd	r2, [sp, #432]
 2040 0c92 CDE92001 		strd	r0, [sp, #128]
 2041 0c96 DDE93E01 		ldrd	r0, [sp, #248]
 2042 0c9a FFF7FEFF 		bl	__aeabi_dsub
 2043 0c9e DDE94223 		ldrd	r2, [sp, #264]
 2044 0ca2 FFF7FEFF 		bl	__aeabi_dsub
 2045 0ca6 DDE92A23 		ldrd	r2, [sp, #168]
 2046 0caa FFF7FEFF 		bl	__aeabi_dadd
 2047 0cae DDE94C23 		ldrd	r2, [sp, #304]
 2048 0cb2 FFF7FEFF 		bl	__aeabi_dsub
 2049 0cb6 3246     		mov	r2, r6
 2050 0cb8 3B46     		mov	r3, r7
 2051 0cba FFF7FEFF 		bl	__aeabi_dadd
 2052 0cbe DDE95023 		ldrd	r2, [sp, #320]
ARM GAS  /tmp/ccxvJMdy.s 			page 37


 2053 0cc2 FFF7FEFF 		bl	__aeabi_dadd
 2054 0cc6 DDE91623 		ldrd	r2, [sp, #88]
 2055 0cca FFF7FEFF 		bl	__aeabi_dsub
 2056 0cce DDE97023 		ldrd	r2, [sp, #448]
 2057 0cd2 FFF7FEFF 		bl	__aeabi_dadd
 2058 0cd6 DDE93C23 		ldrd	r2, [sp, #240]
 2059 0cda FFF7FEFF 		bl	__aeabi_dsub
 2060 0cde DDE97423 		ldrd	r2, [sp, #464]
 2061 0ce2 FFF7FEFF 		bl	__aeabi_dsub
 2062 0ce6 DDE92823 		ldrd	r2, [sp, #160]
 2063 0cea FFF7FEFF 		bl	__aeabi_dadd
 2064 0cee DDE95C23 		ldrd	r2, [sp, #368]
 2065 0cf2 FFF7FEFF 		bl	__aeabi_dadd
 2066 0cf6 DDE95E23 		ldrd	r2, [sp, #376]
 2067 0cfa FFF7FEFF 		bl	__aeabi_dsub
 2068 0cfe DDE94023 		ldrd	r2, [sp, #256]
 2069 0d02 FFF7FEFF 		bl	__aeabi_dsub
 2070 0d06 DDE91423 		ldrd	r2, [sp, #80]
 2071 0d0a FFF7FEFF 		bl	__aeabi_dadd
 2072 0d0e 2246     		mov	r2, r4
 2073 0d10 2B46     		mov	r3, r5
 2074 0d12 FFF7FEFF 		bl	__aeabi_dsub
 2075 0d16 DDE97A23 		ldrd	r2, [sp, #488]
 2076 0d1a FFF7FEFF 		bl	__aeabi_dadd
 2077 0d1e DDE94423 		ldrd	r2, [sp, #272]
 2078 0d22 FFF7FEFF 		bl	__aeabi_dadd
 2079 0d26 DDE92623 		ldrd	r2, [sp, #152]
 2080 0d2a FFF7FEFF 		bl	__aeabi_dsub
 2081 0d2e DDE90A23 		ldrd	r2, [sp, #40]
 2082 0d32 FFF7FEFF 		bl	__aeabi_dadd
 2083 0d36 DDE92223 		ldrd	r2, [sp, #136]
 2084 0d3a FFF7FEFF 		bl	__aeabi_dsub
 2085 0d3e DDE90823 		ldrd	r2, [sp, #32]
 2086 0d42 FFF7FEFF 		bl	__aeabi_dsub
 2087 0d46 DDE92023 		ldrd	r2, [sp, #128]
 2088 0d4a FFF7FEFF 		bl	__aeabi_dadd
 2089 0d4e DDE93223 		ldrd	r2, [sp, #200]
 2090 0d52 FFF7FEFF 		bl	__aeabi_ddiv
 2091 0d56 DDE91E23 		ldrd	r2, [sp, #120]
 2092 0d5a CAE90401 		strd	r0, [r10, #16]
 2093 0d5e DDE91201 		ldrd	r0, [sp, #72]
 2094 0d62 FFF7FEFF 		bl	__aeabi_dmul
 2095 0d66 DDE91C23 		ldrd	r2, [sp, #112]
 2096 0d6a 0446     		mov	r4, r0
 2097 0d6c 0D46     		mov	r5, r1
 2098 0d6e DDE91201 		ldrd	r0, [sp, #72]
 2099 0d72 FFF7FEFF 		bl	__aeabi_dmul
 2100 0d76 DDE92C23 		ldrd	r2, [sp, #176]
 2101 0d7a CDE91201 		strd	r0, [sp, #72]
 2102 0d7e DDE90601 		ldrd	r0, [sp, #24]
 2103 0d82 FFF7FEFF 		bl	__aeabi_dmul
 2104 0d86 DDE92C23 		ldrd	r2, [sp, #176]
 2105 0d8a CDE92A01 		strd	r0, [sp, #168]
 2106 0d8e DDE91C01 		ldrd	r0, [sp, #112]
 2107 0d92 FFF7FEFF 		bl	__aeabi_dmul
 2108 0d96 DDE92423 		ldrd	r2, [sp, #144]
 2109 0d9a CDE91C01 		strd	r0, [sp, #112]
ARM GAS  /tmp/ccxvJMdy.s 			page 38


 2110 0d9e DDE90601 		ldrd	r0, [sp, #24]
 2111 0da2 FFF7FEFF 		bl	__aeabi_dmul
 2112 0da6 DDE92423 		ldrd	r2, [sp, #144]
 2113 0daa CDE90601 		strd	r0, [sp, #24]
 2114 0dae DDE91E01 		ldrd	r0, [sp, #120]
 2115 0db2 FFF7FEFF 		bl	__aeabi_dmul
 2116 0db6 DDE96E23 		ldrd	r2, [sp, #440]
 2117 0dba CDE91E01 		strd	r0, [sp, #120]
 2118 0dbe DDE94601 		ldrd	r0, [sp, #280]
 2119 0dc2 FFF7FEFF 		bl	__aeabi_dsub
 2120 0dc6 DDE94A23 		ldrd	r2, [sp, #296]
 2121 0dca FFF7FEFF 		bl	__aeabi_dsub
 2122 0dce DDE91A23 		ldrd	r2, [sp, #104]
 2123 0dd2 FFF7FEFF 		bl	__aeabi_dadd
 2124 0dd6 DDE94E23 		ldrd	r2, [sp, #312]
 2125 0dda FFF7FEFF 		bl	__aeabi_dsub
 2126 0dde 3246     		mov	r2, r6
 2127 0de0 3B46     		mov	r3, r7
 2128 0de2 FFF7FEFF 		bl	__aeabi_dadd
 2129 0de6 DDE95223 		ldrd	r2, [sp, #328]
 2130 0dea FFF7FEFF 		bl	__aeabi_dadd
 2131 0dee DDE91623 		ldrd	r2, [sp, #88]
 2132 0df2 FFF7FEFF 		bl	__aeabi_dsub
 2133 0df6 DDE97223 		ldrd	r2, [sp, #456]
 2134 0dfa FFF7FEFF 		bl	__aeabi_dadd
 2135 0dfe DDE93C23 		ldrd	r2, [sp, #240]
 2136 0e02 FFF7FEFF 		bl	__aeabi_dsub
 2137 0e06 DDE97623 		ldrd	r2, [sp, #472]
 2138 0e0a FFF7FEFF 		bl	__aeabi_dsub
 2139 0e0e DDE92823 		ldrd	r2, [sp, #160]
 2140 0e12 FFF7FEFF 		bl	__aeabi_dadd
 2141 0e16 DDE96423 		ldrd	r2, [sp, #400]
 2142 0e1a FFF7FEFF 		bl	__aeabi_dadd
 2143 0e1e DDE96623 		ldrd	r2, [sp, #408]
 2144 0e22 FFF7FEFF 		bl	__aeabi_dsub
 2145 0e26 2246     		mov	r2, r4
 2146 0e28 2B46     		mov	r3, r5
 2147 0e2a FFF7FEFF 		bl	__aeabi_dsub
 2148 0e2e DDE91223 		ldrd	r2, [sp, #72]
 2149 0e32 FFF7FEFF 		bl	__aeabi_dadd
 2150 0e36 DDE98023 		ldrd	r2, [sp, #512]
 2151 0e3a FFF7FEFF 		bl	__aeabi_dsub
 2152 0e3e DDE98223 		ldrd	r2, [sp, #520]
 2153 0e42 FFF7FEFF 		bl	__aeabi_dadd
 2154 0e46 DDE92A23 		ldrd	r2, [sp, #168]
 2155 0e4a FFF7FEFF 		bl	__aeabi_dadd
 2156 0e4e DDE91C23 		ldrd	r2, [sp, #112]
 2157 0e52 FFF7FEFF 		bl	__aeabi_dsub
 2158 0e56 DDE90A23 		ldrd	r2, [sp, #40]
 2159 0e5a FFF7FEFF 		bl	__aeabi_dadd
 2160 0e5e DDE92223 		ldrd	r2, [sp, #136]
 2161 0e62 FFF7FEFF 		bl	__aeabi_dsub
 2162 0e66 DDE90623 		ldrd	r2, [sp, #24]
 2163 0e6a FFF7FEFF 		bl	__aeabi_dsub
 2164 0e6e DDE91E23 		ldrd	r2, [sp, #120]
 2165 0e72 FFF7FEFF 		bl	__aeabi_dadd
 2166 0e76 DDE93267 		ldrd	r6, [sp, #200]
ARM GAS  /tmp/ccxvJMdy.s 			page 39


 2167 0e7a 01F10043 		add	r3, r1, #-2147483648
 2168 0e7e 8793     		str	r3, [sp, #540]
 2169 0e80 8690     		str	r0, [sp, #536]
 2170 0e82 DDE98601 		ldrd	r0, [sp, #536]
 2171 0e86 3246     		mov	r2, r6
 2172 0e88 3B46     		mov	r3, r7
 2173 0e8a FFF7FEFF 		bl	__aeabi_ddiv
 2174 0e8e DDE97823 		ldrd	r2, [sp, #480]
 2175 0e92 CAE90601 		strd	r0, [r10, #24]
 2176 0e96 DDE95801 		ldrd	r0, [sp, #352]
 2177 0e9a FFF7FEFF 		bl	__aeabi_dsub
 2178 0e9e DDE95A23 		ldrd	r2, [sp, #360]
 2179 0ea2 FFF7FEFF 		bl	__aeabi_dsub
 2180 0ea6 DDE91823 		ldrd	r2, [sp, #96]
 2181 0eaa FFF7FEFF 		bl	__aeabi_dadd
 2182 0eae DDE96023 		ldrd	r2, [sp, #384]
 2183 0eb2 FFF7FEFF 		bl	__aeabi_dsub
 2184 0eb6 DDE94023 		ldrd	r2, [sp, #256]
 2185 0eba FFF7FEFF 		bl	__aeabi_dadd
 2186 0ebe DDE96223 		ldrd	r2, [sp, #392]
 2187 0ec2 FFF7FEFF 		bl	__aeabi_dadd
 2188 0ec6 DDE91423 		ldrd	r2, [sp, #80]
 2189 0eca FFF7FEFF 		bl	__aeabi_dsub
 2190 0ece DDE97C23 		ldrd	r2, [sp, #496]
 2191 0ed2 FFF7FEFF 		bl	__aeabi_dadd
 2192 0ed6 DDE94423 		ldrd	r2, [sp, #272]
 2193 0eda FFF7FEFF 		bl	__aeabi_dsub
 2194 0ede DDE97E23 		ldrd	r2, [sp, #504]
 2195 0ee2 FFF7FEFF 		bl	__aeabi_dsub
 2196 0ee6 DDE92623 		ldrd	r2, [sp, #152]
 2197 0eea FFF7FEFF 		bl	__aeabi_dadd
 2198 0eee DDE96823 		ldrd	r2, [sp, #416]
 2199 0ef2 FFF7FEFF 		bl	__aeabi_dadd
 2200 0ef6 DDE96A23 		ldrd	r2, [sp, #424]
 2201 0efa FFF7FEFF 		bl	__aeabi_dsub
 2202 0efe 2246     		mov	r2, r4
 2203 0f00 2B46     		mov	r3, r5
 2204 0f02 FFF7FEFF 		bl	__aeabi_dsub
 2205 0f06 DDE91223 		ldrd	r2, [sp, #72]
 2206 0f0a FFF7FEFF 		bl	__aeabi_dadd
 2207 0f0e DDE90C23 		ldrd	r2, [sp, #48]
 2208 0f12 FFF7FEFF 		bl	__aeabi_dsub
 2209 0f16 DDE94823 		ldrd	r2, [sp, #288]
 2210 0f1a FFF7FEFF 		bl	__aeabi_dadd
 2211 0f1e DDE92A23 		ldrd	r2, [sp, #168]
 2212 0f22 FFF7FEFF 		bl	__aeabi_dadd
 2213 0f26 DDE91C23 		ldrd	r2, [sp, #112]
 2214 0f2a FFF7FEFF 		bl	__aeabi_dsub
 2215 0f2e DDE90823 		ldrd	r2, [sp, #32]
 2216 0f32 FFF7FEFF 		bl	__aeabi_dadd
 2217 0f36 DDE92023 		ldrd	r2, [sp, #128]
 2218 0f3a FFF7FEFF 		bl	__aeabi_dsub
 2219 0f3e DDE90623 		ldrd	r2, [sp, #24]
 2220 0f42 FFF7FEFF 		bl	__aeabi_dsub
 2221 0f46 DDE91E23 		ldrd	r2, [sp, #120]
 2222 0f4a FFF7FEFF 		bl	__aeabi_dadd
 2223 0f4e 3246     		mov	r2, r6
ARM GAS  /tmp/ccxvJMdy.s 			page 40


 2224 0f50 3B46     		mov	r3, r7
 2225 0f52 FFF7FEFF 		bl	__aeabi_ddiv
 2226 0f56 CAE90801 		strd	r0, [r10, #32]
 2227 0f5a FFF750B9 		b	.L140
 2228              	.L223:
 2229 0f5e 889C     		ldr	r4, [sp, #544]
 2230 0f60 8349     		ldr	r1, .L230+8
 2231 0f62 2046     		mov	r0, r4
 2232 0f64 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2233 0f68 8998     		ldr	r0, [sp, #548]
 2234 0f6a 2246     		mov	r2, r4
 2235 0f6c 8AA9     		add	r1, sp, #552
 2236 0f6e FFF7FEFF 		bl	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef
 2237 0f72 4846     		mov	r0, r9
 2238 0f74 0DF2FC7D 		addw	sp, sp, #2044
 2239              		@ sp needed
 2240 0f78 BDEC0E8B 		vldm	sp!, {d8-d14}
 2241 0f7c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2242              	.L179:
 2243 0f80 4FF00109 		mov	r9, #1
 2244 0f84 FFF719BB 		b	.L163
 2245              	.L161:
 2246 0f88 309B     		ldr	r3, [sp, #192]
 2247 0f8a 1A68     		ldr	r2, [r3]
 2248 0f8c 899B     		ldr	r3, [sp, #548]
 2249 0f8e D2F8BC22 		ldr	r2, [r2, #700]
 2250 0f92 1B69     		ldr	r3, [r3, #16]
 2251 0f94 9A42     		cmp	r2, r3
 2252 0f96 74D0     		beq	.L168
 2253              	.L167:
 2254 0f98 7649     		ldr	r1, .L230+12
 2255 0f9a 8898     		ldr	r0, [sp, #544]
 2256 0f9c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2257 0fa0 899A     		ldr	r2, [sp, #548]
 2258 0fa2 1369     		ldr	r3, [r2, #16]
 2259 0fa4 002B     		cmp	r3, #0
 2260 0fa6 36D0     		beq	.L171
 2261 0fa8 DFF8F091 		ldr	r9, .L230+52
 2262 0fac DFF8F081 		ldr	r8, .L230+56
 2263 0fb0 8AAD     		add	r5, sp, #552
 2264 0fb2 0024     		movs	r4, #0
 2265 0fb4 9246     		mov	r10, r2
 2266              	.L174:
 2267 0fb6 DDE98A23 		ldrd	r2, [sp, #552]
 2268 0fba F5E80201 		ldrd	r0, [r5], #8
 2269 0fbe FFF7FEFF 		bl	__aeabi_dsub
 2270 0fc2 FFF7FEFF 		bl	__aeabi_d2f
 2271 0fc6 08EE100A 		vmov	s16, r0
 2272 0fca DAED0F7A 		vldr.32	s15, [r10, #60]
 2273 0fce B0EEC87A 		vabs.f32	s14, s16
 2274 0fd2 C7EE277A 		vdiv.f32	s15, s14, s15
 2275 0fd6 0134     		adds	r4, r4, #1
 2276 0fd8 17EE900A 		vmov	r0, s15
 2277 0fdc FFF7FEFF 		bl	__aeabi_f2d
 2278 0fe0 B5EEC08A 		vcmpe.f32	s16, #0
 2279 0fe4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2280 0fe8 0646     		mov	r6, r0
ARM GAS  /tmp/ccxvJMdy.s 			page 41


 2281 0fea 18EE100A 		vmov	r0, s16
 2282 0fee CCBF     		ite	gt
 2283 0ff0 CB46     		movgt	fp, r9
 2284 0ff2 C346     		movle	fp, r8
 2285 0ff4 0F46     		mov	r7, r1
 2286 0ff6 FFF7FEFF 		bl	__aeabi_f2d
 2287 0ffa 3B46     		mov	r3, r7
 2288 0ffc CDE90201 		strd	r0, [sp, #8]
 2289 1000 CDF800B0 		str	fp, [sp]
 2290 1004 3246     		mov	r2, r6
 2291 1006 5C49     		ldr	r1, .L230+16
 2292 1008 8898     		ldr	r0, [sp, #544]
 2293 100a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2294 100e DAF81030 		ldr	r3, [r10, #16]
 2295 1012 A342     		cmp	r3, r4
 2296 1014 CFD8     		bhi	.L174
 2297              	.L171:
 2298 1016 4FF00009 		mov	r9, #0
 2299 101a 4846     		mov	r0, r9
 2300 101c 0DF2FC7D 		addw	sp, sp, #2044
 2301              		@ sp needed
 2302 1020 BDEC0E8B 		vldm	sp!, {d8-d14}
 2303 1024 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2304              	.L221:
 2305 1028 DDE91014 		ldrd	r1, r4, [sp, #64]
 2306 102c 2346     		mov	r3, r4
 2307 102e 0133     		adds	r3, r3, #1
 2308 1030 2246     		mov	r2, r4
 2309 1032 5248     		ldr	r0, .L230+20
 2310 1034 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 2311 1038 2246     		mov	r2, r4
 2312 103a 8AA9     		add	r1, sp, #552
 2313 103c 5048     		ldr	r0, .L230+24
 2314 103e FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 2315 1042 059B     		ldr	r3, [sp, #20]
 2316 1044 002B     		cmp	r3, #0
 2317 1046 7DD0     		beq	.L155
 2318 1048 309B     		ldr	r3, [sp, #192]
 2319 104a D3F80031 		ldr	r3, [r3, #256]
 2320 104e 03F01003 		and	r3, r3, #16
 2321 1052 0893     		str	r3, [sp, #32]
 2322 1054 FFF737BA 		b	.L176
 2323              	.L220:
 2324 1058 119C     		ldr	r4, [sp, #68]
 2325 105a 059A     		ldr	r2, [sp, #20]
 2326 105c 4948     		ldr	r0, .L230+28
 2327 105e 2346     		mov	r3, r4
 2328 1060 FCA9     		add	r1, sp, #1008
 2329 1062 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 2330 1066 309B     		ldr	r3, [sp, #192]
 2331 1068 1099     		ldr	r1, [sp, #64]
 2332 106a D3F80031 		ldr	r3, [r3, #256]
 2333 106e 464A     		ldr	r2, .L230+32
 2334 1070 0A60     		str	r2, [r1]
 2335 1072 03F01003 		and	r3, r3, #16
 2336 1076 1A93     		str	r3, [sp, #104]
 2337 1078 002C     		cmp	r4, #0
ARM GAS  /tmp/ccxvJMdy.s 			page 42


 2338 107a 7FF477A9 		bne	.L177
 2339 107e FFF708BA 		b	.L146
 2340              	.L168:
 2341 1082 309B     		ldr	r3, [sp, #192]
 2342 1084 8AA9     		add	r1, sp, #552
 2343 1086 9868     		ldr	r0, [r3, #8]
 2344 1088 FFF7FEFF 		bl	_ZN4Move16AdjustLeadscrewsEPKd
 2345 108c 889C     		ldr	r4, [sp, #544]
 2346 108e 3F49     		ldr	r1, .L230+36
 2347 1090 2046     		mov	r0, r4
 2348 1092 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2349 1096 2246     		mov	r2, r4
 2350 1098 8AA9     		add	r1, sp, #552
 2351 109a 8998     		ldr	r0, [sp, #548]
 2352 109c FFF7FEFF 		bl	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef
 2353 10a0 DDE90E01 		ldrd	r0, [sp, #56]
 2354 10a4 FFF7FEFF 		bl	__aeabi_d2f
 2355 10a8 DDED057A 		vldr.32	s15, [sp, #20]	@ int
 2356 10ac B8EEE78A 		vcvt.f32.s32	s16, s15
 2357 10b0 07EE900A 		vmov	s15, r0
 2358 10b4 87EE880A 		vdiv.f32	s0, s15, s16
 2359 10b8 B5EE400A 		vcmp.f32	s0, #0
 2360 10bc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2361 10c0 F1EEC08A 		vsqrt.f32	s17, s0
 2362 10c4 4DD4     		bmi	.L224
 2363              	.L169:
 2364 10c6 18EE900A 		vmov	r0, s17
 2365 10ca FFF7FEFF 		bl	__aeabi_f2d
 2366 10ce 0446     		mov	r4, r0
 2367 10d0 0D46     		mov	r5, r1
 2368 10d2 DDE90601 		ldrd	r0, [sp, #24]
 2369 10d6 FFF7FEFF 		bl	__aeabi_d2f
 2370 10da 07EE900A 		vmov	s15, r0
 2371 10de 87EE880A 		vdiv.f32	s0, s15, s16
 2372 10e2 B5EE400A 		vcmp.f32	s0, #0
 2373 10e6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2374 10ea B1EEC08A 		vsqrt.f32	s16, s0
 2375 10ee 35D4     		bmi	.L225
 2376              	.L170:
 2377 10f0 4FF00009 		mov	r9, #0
 2378 10f4 18EE100A 		vmov	r0, s16
 2379 10f8 FFF7FEFF 		bl	__aeabi_f2d
 2380 10fc CDE90045 		strd	r4, [sp]
 2381 1100 889C     		ldr	r4, [sp, #544]
 2382 1102 059A     		ldr	r2, [sp, #20]
 2383 1104 CDE90201 		strd	r0, [sp, #8]
 2384 1108 2149     		ldr	r1, .L230+40
 2385 110a 2046     		mov	r0, r4
 2386 110c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2387 1110 309A     		ldr	r2, [sp, #192]
 2388 1112 2368     		ldr	r3, [r4]
 2389 1114 1068     		ldr	r0, [r2]
 2390 1116 1F4A     		ldr	r2, .L230+44
 2391 1118 8021     		movs	r1, #128
 2392 111a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2393 111e 4846     		mov	r0, r9
 2394 1120 0DF2FC7D 		addw	sp, sp, #2044
ARM GAS  /tmp/ccxvJMdy.s 			page 43


 2395              		@ sp needed
 2396 1124 BDEC0E8B 		vldm	sp!, {d8-d14}
 2397 1128 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2398              	.L178:
 2399 112c 1A4B     		ldr	r3, .L230+48
 2400 112e 3093     		str	r3, [sp, #192]
 2401 1130 92AB     		add	r3, sp, #584
 2402 1132 1093     		str	r3, [sp, #64]
 2403 1134 FFF70BB9 		b	.L139
 2404              	.L222:
 2405 1138 9FED0B7B 		vldr.64	d7, .L230
 2406 113c 8DED067B 		vstr.64	d7, [sp, #24]
 2407 1140 FFF70ABA 		b	.L218
 2408              	.L155:
 2409 1144 309B     		ldr	r3, [sp, #192]
 2410 1146 9FED087B 		vldr.64	d7, .L230
 2411 114a D3F80031 		ldr	r3, [r3, #256]
 2412 114e 03F01003 		and	r3, r3, #16
 2413 1152 8DED067B 		vstr.64	d7, [sp, #24]
 2414 1156 0893     		str	r3, [sp, #32]
 2415 1158 FFF7F7B9 		b	.L158
 2416              	.L225:
 2417 115c FFF7FEFF 		bl	sqrtf
 2418 1160 C6E7     		b	.L170
 2419              	.L224:
 2420 1162 FFF7FEFF 		bl	sqrtf
 2421 1166 AEE7     		b	.L169
 2422              	.L231:
 2423              		.align	3
 2424              	.L230:
 2425 1168 00000000 		.word	0
 2426 116c 00000000 		.word	0
 2427 1170 58000000 		.word	.LC9
 2428 1174 18010000 		.word	.LC14
 2429 1178 38010000 		.word	.LC15
 2430 117c 30000000 		.word	.LC6
 2431 1180 40000000 		.word	.LC7
 2432 1184 0C000000 		.word	.LC4
 2433 1188 08000000 		.word	_ZTV11FixedMatrixIdLj4ELj5EE+8
 2434 118c C4000000 		.word	.LC11
 2435 1190 E0000000 		.word	.LC12
 2436 1194 14010000 		.word	.LC13
 2437 1198 00000000 		.word	reprap
 2438 119c 00000000 		.word	.LC2
 2439 11a0 08000000 		.word	.LC3
 2440              		.size	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef.part.5, .-
 2441              		.section	.text._ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,"
 2442              		.align	1
 2443              		.p2align 2,,3
 2444              		.global	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 2445              		.syntax unified
 2446              		.thumb
 2447              		.thumb_func
 2448              		.fpu fpv4-sp-d16
 2449              		.type	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %function
 2450              	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
 2451              		@ args = 0, pretend = 0, frame = 8
ARM GAS  /tmp/ccxvJMdy.s 			page 44


 2452              		@ frame_needed = 0, uses_anonymous_args = 0
 2453 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2454 0002 0468     		ldr	r4, [r0]
 2455 0004 124E     		ldr	r6, .L241
 2456 0006 2469     		ldr	r4, [r4, #16]
 2457 0008 B442     		cmp	r4, r6
 2458 000a 83B0     		sub	sp, sp, #12
 2459 000c 0546     		mov	r5, r0
 2460 000e 1F46     		mov	r7, r3
 2461 0010 17D1     		bne	.L233
 2462 0012 0469     		ldr	r4, [r0, #16]
 2463 0014 012C     		cmp	r4, #1
 2464 0016 94BF     		ite	ls
 2465 0018 0024     		movls	r4, #0
 2466 001a 0124     		movhi	r4, #1
 2467              	.L234:
 2468 001c 3CB1     		cbz	r4, .L235
 2469 001e 2B69     		ldr	r3, [r5, #16]
 2470 0020 8B42     		cmp	r3, r1
 2471 0022 07D0     		beq	.L236
 2472 0024 0A46     		mov	r2, r1
 2473 0026 3846     		mov	r0, r7
 2474 0028 0A49     		ldr	r1, .L241+4
 2475 002a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2476              	.L235:
 2477 002e 2046     		mov	r0, r4
 2478 0030 03B0     		add	sp, sp, #12
 2479              		@ sp needed
 2480 0032 F0BD     		pop	{r4, r5, r6, r7, pc}
 2481              	.L236:
 2482 0034 3B46     		mov	r3, r7
 2483 0036 2846     		mov	r0, r5
 2484 0038 03B0     		add	sp, sp, #12
 2485              		@ sp needed
 2486 003a BDE8F040 		pop	{r4, r5, r6, r7, lr}
 2487 003e FFF7FEBF 		b	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef.part.5
 2488              	.L233:
 2489 0042 CDE90012 		strd	r1, r2, [sp]
 2490 0046 A047     		blx	r4
 2491 0048 DDE90012 		ldrd	r1, r2, [sp]
 2492 004c 0446     		mov	r4, r0
 2493 004e E5E7     		b	.L234
 2494              	.L242:
 2495              		.align	2
 2496              	.L241:
 2497 0050 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 2498 0054 00000000 		.word	.LC16
 2499              		.size	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN20ZL
 2500              		.section	.text._ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 2501              		.align	1
 2502              		.p2align 2,,3
 2503              		.global	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 2504              		.syntax unified
 2505              		.thumb
 2506              		.thumb_func
 2507              		.fpu fpv4-sp-d16
 2508              		.type	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
ARM GAS  /tmp/ccxvJMdy.s 			page 45


 2509              	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 2510              		@ args = 4, pretend = 0, frame = 16
 2511              		@ frame_needed = 0, uses_anonymous_args = 0
 2512 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2513 0004 40F29F27 		movw	r7, #671
 2514 0008 B942     		cmp	r1, r7
 2515 000a 89B0     		sub	sp, sp, #36
 2516 000c 0446     		mov	r4, r0
 2517 000e 1546     		mov	r5, r2
 2518 0010 1E46     		mov	r6, r3
 2519 0012 6CD1     		bne	.L244
 2520 0014 837B     		ldrb	r3, [r0, #14]	@ zero_extendqisi2
 2521 0016 022B     		cmp	r3, #2
 2522 0018 69D0     		beq	.L244
 2523 001a 0423     		movs	r3, #4
 2524 001c 5821     		movs	r1, #88
 2525 001e 1046     		mov	r0, r2
 2526 0020 CDE90633 		strd	r3, r3, [sp, #24]
 2527 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2528 0028 04F13C09 		add	r9, r4, #60
 2529 002c 0746     		mov	r7, r0
 2530 002e 04F1380A 		add	r10, r4, #56
 2531 0032 04F13408 		add	r8, r4, #52
 2532 0036 0028     		cmp	r0, #0
 2533 0038 65D1     		bne	.L270
 2534 003a 5921     		movs	r1, #89
 2535 003c 2846     		mov	r0, r5
 2536 003e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2537 0042 0028     		cmp	r0, #0
 2538 0044 40F0B380 		bne	.L256
 2539 0048 08AF     		add	r7, sp, #32
 2540 004a 5246     		mov	r2, r10
 2541 004c 07F8090D 		strb	r0, [r7, #-9]!
 2542 0050 5321     		movs	r1, #83
 2543 0052 2846     		mov	r0, r5
 2544 0054 3B46     		mov	r3, r7
 2545 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2546 005a 2846     		mov	r0, r5
 2547 005c 3B46     		mov	r3, r7
 2548 005e 4A46     		mov	r2, r9
 2549 0060 5021     		movs	r1, #80
 2550 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2551 0066 2846     		mov	r0, r5
 2552 0068 3B46     		mov	r3, r7
 2553 006a 4246     		mov	r2, r8
 2554 006c 4621     		movs	r1, #70
 2555 006e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2556 0072 9DF81750 		ldrb	r5, [sp, #23]	@ zero_extendqisi2
 2557 0076 002D     		cmp	r5, #0
 2558 0078 41D1     		bne	.L258
 2559 007a 2369     		ldr	r3, [r4, #16]
 2560 007c 012B     		cmp	r3, #1
 2561 007e 7BD9     		bls	.L271
 2562 0080 5149     		ldr	r1, .L274
 2563 0082 3046     		mov	r0, r6
 2564 0084 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2565 0088 2369     		ldr	r3, [r4, #16]
ARM GAS  /tmp/ccxvJMdy.s 			page 46


 2566 008a D3B1     		cbz	r3, .L250
 2567 008c DFF848B1 		ldr	fp, .L274+16
 2568 0090 04F1140A 		add	r10, r4, #20
 2569 0094 2F46     		mov	r7, r5
 2570              	.L251:
 2571 0096 5AF8040B 		ldr	r0, [r10], #4	@ float
 2572 009a FFF7FEFF 		bl	__aeabi_f2d
 2573 009e 8046     		mov	r8, r0
 2574 00a0 DAF80C00 		ldr	r0, [r10, #12]	@ float
 2575 00a4 8946     		mov	r9, r1
 2576 00a6 FFF7FEFF 		bl	__aeabi_f2d
 2577 00aa 4B46     		mov	r3, r9
 2578 00ac CDE90001 		strd	r0, [sp]
 2579 00b0 4246     		mov	r2, r8
 2580 00b2 5946     		mov	r1, fp
 2581 00b4 3046     		mov	r0, r6
 2582 00b6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2583 00ba 2369     		ldr	r3, [r4, #16]
 2584 00bc 0137     		adds	r7, r7, #1
 2585 00be BB42     		cmp	r3, r7
 2586 00c0 E9D8     		bhi	.L251
 2587              	.L250:
 2588 00c2 606B     		ldr	r0, [r4, #52]	@ float
 2589 00c4 FFF7FEFF 		bl	__aeabi_f2d
 2590 00c8 8046     		mov	r8, r0
 2591 00ca E06B     		ldr	r0, [r4, #60]	@ float
 2592 00cc 8946     		mov	r9, r1
 2593 00ce FFF7FEFF 		bl	__aeabi_f2d
 2594 00d2 CDE90201 		strd	r0, [sp, #8]
 2595 00d6 A06B     		ldr	r0, [r4, #56]	@ float
 2596 00d8 FFF7FEFF 		bl	__aeabi_f2d
 2597 00dc 4246     		mov	r2, r8
 2598 00de CDE90001 		strd	r0, [sp]
 2599 00e2 4B46     		mov	r3, r9
 2600 00e4 3046     		mov	r0, r6
 2601 00e6 3949     		ldr	r1, .L274+4
 2602 00e8 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2603 00ec 07E0     		b	.L258
 2604              	.L244:
 2605 00ee 129B     		ldr	r3, [sp, #72]
 2606 00f0 0093     		str	r3, [sp]
 2607 00f2 2A46     		mov	r2, r5
 2608 00f4 3346     		mov	r3, r6
 2609 00f6 2046     		mov	r0, r4
 2610 00f8 FFF7FEFF 		bl	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 2611 00fc 0546     		mov	r5, r0
 2612              	.L258:
 2613 00fe 2846     		mov	r0, r5
 2614 0100 09B0     		add	sp, sp, #36
 2615              		@ sp needed
 2616 0102 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2617              	.L270:
 2618 0106 04F11401 		add	r1, r4, #20
 2619 010a 2846     		mov	r0, r5
 2620 010c 0023     		movs	r3, #0
 2621 010e 06AA     		add	r2, sp, #24
 2622 0110 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
ARM GAS  /tmp/ccxvJMdy.s 			page 47


 2623 0114 5921     		movs	r1, #89
 2624 0116 2846     		mov	r0, r5
 2625 0118 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2626 011c 88B3     		cbz	r0, .L272
 2627 011e 08AF     		add	r7, sp, #32
 2628 0120 0023     		movs	r3, #0
 2629 0122 9B46     		mov	fp, r3
 2630 0124 07AA     		add	r2, sp, #28
 2631 0126 04F12401 		add	r1, r4, #36
 2632 012a 2846     		mov	r0, r5
 2633 012c FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 2634 0130 07F809BD 		strb	fp, [r7, #-9]!
 2635 0134 5246     		mov	r2, r10
 2636 0136 3B46     		mov	r3, r7
 2637 0138 5321     		movs	r1, #83
 2638 013a 2846     		mov	r0, r5
 2639 013c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2640 0140 3B46     		mov	r3, r7
 2641 0142 4A46     		mov	r2, r9
 2642 0144 5021     		movs	r1, #80
 2643 0146 2846     		mov	r0, r5
 2644 0148 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2645 014c 3B46     		mov	r3, r7
 2646 014e 4246     		mov	r2, r8
 2647 0150 2846     		mov	r0, r5
 2648 0152 4621     		movs	r1, #70
 2649 0154 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2650 0158 DDE90632 		ldrd	r3, r2, [sp, #24]
 2651 015c 9342     		cmp	r3, r2
 2652 015e 08D0     		beq	.L273
 2653              	.L255:
 2654 0160 3046     		mov	r0, r6
 2655 0162 1B49     		ldr	r1, .L274+8
 2656 0164 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2657 0168 0125     		movs	r5, #1
 2658 016a 2846     		mov	r0, r5
 2659 016c 09B0     		add	sp, sp, #36
 2660              		@ sp needed
 2661 016e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2662              	.L273:
 2663 0172 2361     		str	r3, [r4, #16]
 2664 0174 5D46     		mov	r5, fp
 2665 0176 C2E7     		b	.L258
 2666              	.L271:
 2667 0178 3046     		mov	r0, r6
 2668 017a 1649     		ldr	r1, .L274+12
 2669 017c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2670 0180 BDE7     		b	.L258
 2671              	.L272:
 2672 0182 08AC     		add	r4, sp, #32
 2673 0184 5246     		mov	r2, r10
 2674 0186 04F8090D 		strb	r0, [r4, #-9]!
 2675              	.L269:
 2676 018a 2346     		mov	r3, r4
 2677 018c 2846     		mov	r0, r5
 2678 018e 5321     		movs	r1, #83
 2679 0190 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
ARM GAS  /tmp/ccxvJMdy.s 			page 48


 2680 0194 2346     		mov	r3, r4
 2681 0196 4A46     		mov	r2, r9
 2682 0198 2846     		mov	r0, r5
 2683 019a 5021     		movs	r1, #80
 2684 019c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2685 01a0 2346     		mov	r3, r4
 2686 01a2 4246     		mov	r2, r8
 2687 01a4 2846     		mov	r0, r5
 2688 01a6 4621     		movs	r1, #70
 2689 01a8 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2690 01ac D8E7     		b	.L255
 2691              	.L256:
 2692 01ae 04F12401 		add	r1, r4, #36
 2693 01b2 08AC     		add	r4, sp, #32
 2694 01b4 07AA     		add	r2, sp, #28
 2695 01b6 3B46     		mov	r3, r7
 2696 01b8 2846     		mov	r0, r5
 2697 01ba FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 2698 01be 5246     		mov	r2, r10
 2699 01c0 04F8097D 		strb	r7, [r4, #-9]!
 2700 01c4 E1E7     		b	.L269
 2701              	.L275:
 2702 01c6 00BF     		.align	2
 2703              	.L274:
 2704 01c8 60000000 		.word	.LC19
 2705 01cc 88000000 		.word	.LC21
 2706 01d0 00000000 		.word	.LC17
 2707 01d4 34000000 		.word	.LC18
 2708 01d8 78000000 		.word	.LC20
 2709              		.size	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN20ZLeadscrewKinemati
 2710              		.global	_ZTV20ZLeadscrewKinematics
 2711              		.weak	_ZTV11FixedMatrixIdLj32ELj4EE
 2712              		.section	.rodata._ZTV11FixedMatrixIdLj32ELj4EE,"aG",%progbits,_ZTV11FixedMatrixIdLj32ELj4EE,comdat
 2713              		.align	2
 2714              		.type	_ZTV11FixedMatrixIdLj32ELj4EE, %object
 2715              		.size	_ZTV11FixedMatrixIdLj32ELj4EE, 32
 2716              	_ZTV11FixedMatrixIdLj32ELj4EE:
 2717 0000 00000000 		.word	0
 2718 0004 00000000 		.word	0
 2719 0008 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj4EE4rowsEv
 2720 000c 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj4EE4colsEv
 2721 0010 00000000 		.word	_ZN11FixedMatrixIdLj32ELj4EEclEjj
 2722 0014 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj4EEclEjj
 2723 0018 00000000 		.word	_ZN11FixedMatrixIdLj32ELj4EED1Ev
 2724 001c 00000000 		.word	_ZN11FixedMatrixIdLj32ELj4EED0Ev
 2725              		.weak	_ZTV11FixedMatrixIdLj4ELj5EE
 2726              		.section	.rodata._ZTV11FixedMatrixIdLj4ELj5EE,"aG",%progbits,_ZTV11FixedMatrixIdLj4ELj5EE,comdat
 2727              		.align	2
 2728              		.type	_ZTV11FixedMatrixIdLj4ELj5EE, %object
 2729              		.size	_ZTV11FixedMatrixIdLj4ELj5EE, 32
 2730              	_ZTV11FixedMatrixIdLj4ELj5EE:
 2731 0000 00000000 		.word	0
 2732 0004 00000000 		.word	0
 2733 0008 00000000 		.word	_ZNK11FixedMatrixIdLj4ELj5EE4rowsEv
 2734 000c 00000000 		.word	_ZNK11FixedMatrixIdLj4ELj5EE4colsEv
 2735 0010 00000000 		.word	_ZN11FixedMatrixIdLj4ELj5EEclEjj
 2736 0014 00000000 		.word	_ZNK11FixedMatrixIdLj4ELj5EEclEjj
ARM GAS  /tmp/ccxvJMdy.s 			page 49


 2737 0018 00000000 		.word	_ZN11FixedMatrixIdLj4ELj5EED1Ev
 2738 001c 00000000 		.word	_ZN11FixedMatrixIdLj4ELj5EED0Ev
 2739              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2740              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2741              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2742              	_ZL28cpu_irq_prev_interrupt_state:
 2743 0000 00       		.space	1
 2744              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2745              		.align	2
 2746              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2747              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2748              	_ZL32cpu_irq_critical_section_counter:
 2749 0000 00000000 		.space	4
 2750              		.section	.rodata._ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 2751              		.align	2
 2752              	.LC2:
 2753 0000 646F776E 		.ascii	"down\000"
 2753      00
 2754 0005 000000   		.space	3
 2755              	.LC3:
 2756 0008 757000   		.ascii	"up\000"
 2757 000b 00       		.space	1
 2758              	.LC4:
 2759 000c 44657269 		.ascii	"Derivative matrix\000"
 2759      76617469 
 2759      7665206D 
 2759      61747269 
 2759      7800
 2760 001e 0000     		.space	2
 2761              	.LC5:
 2762 0020 4E6F726D 		.ascii	"Normal matrix\000"
 2762      616C206D 
 2762      61747269 
 2762      7800
 2763 002e 0000     		.space	2
 2764              	.LC6:
 2765 0030 536F6C76 		.ascii	"Solved matrix\000"
 2765      6564206D 
 2765      61747269 
 2765      7800
 2766 003e 0000     		.space	2
 2767              	.LC7:
 2768 0040 536F6C75 		.ascii	"Solution\000"
 2768      74696F6E 
 2768      00
 2769 0049 000000   		.space	3
 2770              	.LC8:
 2771 004c 52657369 		.ascii	"Residuals\000"
 2771      6475616C 
 2771      7300
 2772 0056 0000     		.space	2
 2773              	.LC9:
 2774 0058 43616C69 		.ascii	"Calibration failed, computed corrections:\000"
 2774      62726174 
 2774      696F6E20 
 2774      6661696C 
 2774      65642C20 
ARM GAS  /tmp/ccxvJMdy.s 			page 50


 2775 0082 0000     		.space	2
 2776              	.LC10:
 2777 0084 536F6D65 		.ascii	"Some computed corrections exceed configured limit o"
 2777      20636F6D 
 2777      70757465 
 2777      6420636F 
 2777      72726563 
 2778 00b7 6620252E 		.ascii	"f %.02fmm:\000"
 2778      3032666D 
 2778      6D3A00
 2779 00c2 0000     		.space	2
 2780              	.LC11:
 2781 00c4 4C656164 		.ascii	"Leadscrew adjustments made:\000"
 2781      73637265 
 2781      77206164 
 2781      6A757374 
 2781      6D656E74 
 2782              	.LC12:
 2783 00e0 2C20706F 		.ascii	", points used %d, deviation before %.3f after %.3f\000"
 2783      696E7473 
 2783      20757365 
 2783      64202564 
 2783      2C206465 
 2784 0113 00       		.space	1
 2785              	.LC13:
 2786 0114 25730A00 		.ascii	"%s\012\000"
 2787              	.LC14:
 2788 0118 4D616E75 		.ascii	"Manual corrections required:\000"
 2788      616C2063 
 2788      6F727265 
 2788      6374696F 
 2788      6E732072 
 2789 0135 000000   		.space	3
 2790              	.LC15:
 2791 0138 20252E32 		.ascii	" %.2f turn %s (%.2fmm)\000"
 2791      66207475 
 2791      726E2025 
 2791      73202825 
 2791      2E32666D 
 2792              		.section	.rodata._ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 2793              		.align	2
 2794              	.LC16:
 2795 0000 4E756D62 		.ascii	"Number of calibration factors (%u) not equal to num"
 2795      6572206F 
 2795      66206361 
 2795      6C696272 
 2795      6174696F 
 2796 0033 62657220 		.ascii	"ber of leadscrews (%u)\000"
 2796      6F66206C 
 2796      65616473 
 2796      63726577 
 2796      73202825 
 2797              		.section	.rodata._ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%p
 2798              		.align	2
 2799              	.LC17:
 2800 0000 53706563 		.ascii	"Specify 1, 2, 3 or 4 X and Y coordinates in M671\000"
 2800      69667920 
ARM GAS  /tmp/ccxvJMdy.s 			page 51


 2800      312C2032 
 2800      2C203320 
 2800      6F722034 
 2801 0031 000000   		.space	3
 2802              	.LC18:
 2803 0034 5A206C65 		.ascii	"Z leadscrew coordinates are not configured\000"
 2803      61647363 
 2803      72657720 
 2803      636F6F72 
 2803      64696E61 
 2804 005f 00       		.space	1
 2805              	.LC19:
 2806 0060 5A206C65 		.ascii	"Z leadscrew coordinates\000"
 2806      61647363 
 2806      72657720 
 2806      636F6F72 
 2806      64696E61 
 2807              	.LC20:
 2808 0078 2028252E 		.ascii	" (%.1f,%.1f)\000"
 2808      31662C25 
 2808      2E316629 
 2808      00
 2809 0085 000000   		.space	3
 2810              	.LC21:
 2811 0088 2C206661 		.ascii	", factor %.02f, maximum correction %.02fmm, manual "
 2811      63746F72 
 2811      20252E30 
 2811      32662C20 
 2811      6D617869 
 2812 00bb 61646A75 		.ascii	"adjusting screw pitch %.02fmm\000"
 2812      7374696E 
 2812      67207363 
 2812      72657720 
 2812      70697463 
 2813              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 2814              		.align	2
 2815              	.LC0:
 2816 0000 58595A55 		.ascii	"XYZUVWABC\000"
 2816      56574142 
 2816      4300
 2817              		.section	.rodata._ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef.str1.4,"aMS",%progb
 2818              		.align	2
 2819              	.LC1:
 2820 0000 20252E33 		.ascii	" %.3f\000"
 2820      6600
 2821              		.section	.rodata._ZTV20ZLeadscrewKinematics,"a",%progbits
 2822              		.align	2
 2823              		.set	.LANCHOR0,. + 0
 2824              		.type	_ZTV20ZLeadscrewKinematics, %object
 2825              		.size	_ZTV20ZLeadscrewKinematics, 116
 2826              	_ZTV20ZLeadscrewKinematics:
 2827 0000 00000000 		.word	0
 2828 0004 00000000 		.word	0
 2829 0008 00000000 		.word	__cxa_pure_virtual
 2830 000c 00000000 		.word	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 2831 0010 00000000 		.word	__cxa_pure_virtual
 2832 0014 00000000 		.word	__cxa_pure_virtual
ARM GAS  /tmp/ccxvJMdy.s 			page 52


 2833 0018 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 2834 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 2835 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 2836 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 2837 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 2838 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 2839 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 2840 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 2841 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 2842 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 2843 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 2844 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 2845 0048 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRm
 2846 004c 00000000 		.word	__cxa_pure_virtual
 2847 0050 00000000 		.word	__cxa_pure_virtual
 2848 0054 00000000 		.word	__cxa_pure_virtual
 2849 0058 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 2850 005c 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 2851 0060 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 2852 0064 00000000 		.word	__cxa_pure_virtual
 2853 0068 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 2854 006c 00000000 		.word	0
 2855 0070 00000000 		.word	0
 2856              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
