ARM GAS  /tmp/cckO1lQe.s 			page 1


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
ARM GAS  /tmp/cckO1lQe.s 			page 2


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
ARM GAS  /tmp/cckO1lQe.s 			page 3


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
 133              		.section	.text._ZNK10Kinematics16MachineAxisNamesEv,"axG",%progbits,_ZNK10Kinematics16MachineAxisN
 134              		.align	1
 135              		.p2align 2,,3
 136              		.weak	_ZNK10Kinematics16MachineAxisNamesEv
 137              		.syntax unified
 138              		.thumb
 139              		.thumb_func
 140              		.fpu fpv4-sp-d16
 141              		.type	_ZNK10Kinematics16MachineAxisNamesEv, %function
 142              	_ZNK10Kinematics16MachineAxisNamesEv:
 143              		@ args = 0, pretend = 0, frame = 0
 144              		@ frame_needed = 0, uses_anonymous_args = 0
 145              		@ link register save eliminated.
 146 0000 0048     		ldr	r0, .L14
 147 0002 7047     		bx	lr
 148              	.L15:
 149              		.align	2
 150              	.L14:
 151 0004 00000000 		.word	.LC1
 152              		.size	_ZNK10Kinematics16MachineAxisNamesEv, .-_ZNK10Kinematics16MachineAxisNamesEv
 153              		.section	.text._ZNK10Kinematics16AxesAssumedHomedEm,"axG",%progbits,_ZNK10Kinematics16AxesAssumedH
 154              		.align	1
 155              		.p2align 2,,3
 156              		.weak	_ZNK10Kinematics16AxesAssumedHomedEm
 157              		.syntax unified
 158              		.thumb
 159              		.thumb_func
 160              		.fpu fpv4-sp-d16
 161              		.type	_ZNK10Kinematics16AxesAssumedHomedEm, %function
 162              	_ZNK10Kinematics16AxesAssumedHomedEm:
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 0, uses_anonymous_args = 0
 165              		@ link register save eliminated.
 166 0000 0846     		mov	r0, r1
 167 0002 7047     		bx	lr
 168              		.size	_ZNK10Kinematics16AxesAssumedHomedEm, .-_ZNK10Kinematics16AxesAssumedHomedEm
 169              		.section	.text._ZNK10Kinematics15MustBeHomedAxesEmb,"axG",%progbits,_ZNK10Kinematics15MustBeHomedA
 170              		.align	1
 171              		.p2align 2,,3
ARM GAS  /tmp/cckO1lQe.s 			page 4


 172              		.weak	_ZNK10Kinematics15MustBeHomedAxesEmb
 173              		.syntax unified
 174              		.thumb
 175              		.thumb_func
 176              		.fpu fpv4-sp-d16
 177              		.type	_ZNK10Kinematics15MustBeHomedAxesEmb, %function
 178              	_ZNK10Kinematics15MustBeHomedAxesEmb:
 179              		@ args = 0, pretend = 0, frame = 0
 180              		@ frame_needed = 0, uses_anonymous_args = 0
 181              		@ link register save eliminated.
 182 0000 002A     		cmp	r2, #0
 183 0002 14BF     		ite	ne
 184 0004 0846     		movne	r0, r1
 185 0006 0020     		moveq	r0, #0
 186 0008 7047     		bx	lr
 187              		.size	_ZNK10Kinematics15MustBeHomedAxesEmb, .-_ZNK10Kinematics15MustBeHomedAxesEmb
 188 000a 00BF     		.section	.text._ZNK10Kinematics24IsContinuousRotationAxisEj,"axG",%progbits,_ZNK10Kinematics24IsCo
 189              		.align	1
 190              		.p2align 2,,3
 191              		.weak	_ZNK10Kinematics24IsContinuousRotationAxisEj
 192              		.syntax unified
 193              		.thumb
 194              		.thumb_func
 195              		.fpu fpv4-sp-d16
 196              		.type	_ZNK10Kinematics24IsContinuousRotationAxisEj, %function
 197              	_ZNK10Kinematics24IsContinuousRotationAxisEj:
 198              		@ args = 0, pretend = 0, frame = 0
 199              		@ frame_needed = 0, uses_anonymous_args = 0
 200              		@ link register save eliminated.
 201 0000 0020     		movs	r0, #0
 202 0002 7047     		bx	lr
 203              		.size	_ZNK10Kinematics24IsContinuousRotationAxisEj, .-_ZNK10Kinematics24IsContinuousRotationAxisEj
 204              		.section	.text._ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv,"ax",%progbits
 205              		.align	1
 206              		.p2align 2,,3
 207              		.global	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 208              		.syntax unified
 209              		.thumb
 210              		.thumb_func
 211              		.fpu fpv4-sp-d16
 212              		.type	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv, %function
 213              	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv:
 214              		@ args = 0, pretend = 0, frame = 0
 215              		@ frame_needed = 0, uses_anonymous_args = 0
 216              		@ link register save eliminated.
 217 0000 0069     		ldr	r0, [r0, #16]
 218 0002 0128     		cmp	r0, #1
 219 0004 94BF     		ite	ls
 220 0006 0020     		movls	r0, #0
 221 0008 0120     		movhi	r0, #1
 222 000a 7047     		bx	lr
 223              		.size	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv, .-_ZNK20ZLeadscrewKinematics23Support
 224              		.section	.text._ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore,"ax",%progbits
 225              		.align	1
 226              		.p2align 2,,3
 227              		.global	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 228              		.syntax unified
ARM GAS  /tmp/cckO1lQe.s 			page 5


 229              		.thumb
 230              		.thumb_func
 231              		.fpu fpv4-sp-d16
 232              		.type	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore, %function
 233              	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore:
 234              		@ args = 0, pretend = 0, frame = 0
 235              		@ frame_needed = 0, uses_anonymous_args = 0
 236              		@ link register save eliminated.
 237 0000 0120     		movs	r0, #1
 238 0002 7047     		bx	lr
 239              		.size	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore, .-_ZNK20ZLeadscrewKinematics19W
 240              		.section	.text._ZN11FixedMatrixIdLj32ELj4EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj4EEclEjj
 241              		.align	1
 242              		.p2align 2,,3
 243              		.weak	_ZN11FixedMatrixIdLj32ELj4EEclEjj
 244              		.syntax unified
 245              		.thumb
 246              		.thumb_func
 247              		.fpu fpv4-sp-d16
 248              		.type	_ZN11FixedMatrixIdLj32ELj4EEclEjj, %function
 249              	_ZN11FixedMatrixIdLj32ELj4EEclEjj:
 250              		@ args = 0, pretend = 0, frame = 0
 251              		@ frame_needed = 0, uses_anonymous_args = 0
 252              		@ link register save eliminated.
 253 0000 0132     		adds	r2, r2, #1
 254 0002 02EB8102 		add	r2, r2, r1, lsl #2
 255 0006 00EBC200 		add	r0, r0, r2, lsl #3
 256 000a 7047     		bx	lr
 257              		.size	_ZN11FixedMatrixIdLj32ELj4EEclEjj, .-_ZN11FixedMatrixIdLj32ELj4EEclEjj
 258              		.section	.text._ZN11FixedMatrixIdLj4ELj5EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj4ELj5EEclEjj,c
 259              		.align	1
 260              		.p2align 2,,3
 261              		.weak	_ZN11FixedMatrixIdLj4ELj5EEclEjj
 262              		.syntax unified
 263              		.thumb
 264              		.thumb_func
 265              		.fpu fpv4-sp-d16
 266              		.type	_ZN11FixedMatrixIdLj4ELj5EEclEjj, %function
 267              	_ZN11FixedMatrixIdLj4ELj5EEclEjj:
 268              		@ args = 0, pretend = 0, frame = 0
 269              		@ frame_needed = 0, uses_anonymous_args = 0
 270              		@ link register save eliminated.
 271 0000 0132     		adds	r2, r2, #1
 272 0002 01EB8101 		add	r1, r1, r1, lsl #2
 273 0006 1144     		add	r1, r1, r2
 274 0008 00EBC100 		add	r0, r0, r1, lsl #3
 275 000c 7047     		bx	lr
 276              		.size	_ZN11FixedMatrixIdLj4ELj5EEclEjj, .-_ZN11FixedMatrixIdLj4ELj5EEclEjj
 277 000e 00BF     		.section	.text._ZN11FixedMatrixIdLj4ELj5EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj4ELj5EED5Ev,com
 278              		.align	1
 279              		.p2align 2,,3
 280              		.weak	_ZN11FixedMatrixIdLj4ELj5EED2Ev
 281              		.syntax unified
 282              		.thumb
 283              		.thumb_func
 284              		.fpu fpv4-sp-d16
 285              		.type	_ZN11FixedMatrixIdLj4ELj5EED2Ev, %function
ARM GAS  /tmp/cckO1lQe.s 			page 6


 286              	_ZN11FixedMatrixIdLj4ELj5EED2Ev:
 287              		@ args = 0, pretend = 0, frame = 0
 288              		@ frame_needed = 0, uses_anonymous_args = 0
 289              		@ link register save eliminated.
 290 0000 7047     		bx	lr
 291              		.size	_ZN11FixedMatrixIdLj4ELj5EED2Ev, .-_ZN11FixedMatrixIdLj4ELj5EED2Ev
 292              		.weak	_ZN11FixedMatrixIdLj4ELj5EED1Ev
 293              		.thumb_set _ZN11FixedMatrixIdLj4ELj5EED1Ev,_ZN11FixedMatrixIdLj4ELj5EED2Ev
 294 0002 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj4EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj4EED5Ev,c
 295              		.align	1
 296              		.p2align 2,,3
 297              		.weak	_ZN11FixedMatrixIdLj32ELj4EED2Ev
 298              		.syntax unified
 299              		.thumb
 300              		.thumb_func
 301              		.fpu fpv4-sp-d16
 302              		.type	_ZN11FixedMatrixIdLj32ELj4EED2Ev, %function
 303              	_ZN11FixedMatrixIdLj32ELj4EED2Ev:
 304              		@ args = 0, pretend = 0, frame = 0
 305              		@ frame_needed = 0, uses_anonymous_args = 0
 306              		@ link register save eliminated.
 307 0000 7047     		bx	lr
 308              		.size	_ZN11FixedMatrixIdLj32ELj4EED2Ev, .-_ZN11FixedMatrixIdLj32ELj4EED2Ev
 309              		.weak	_ZN11FixedMatrixIdLj32ELj4EED1Ev
 310              		.thumb_set _ZN11FixedMatrixIdLj32ELj4EED1Ev,_ZN11FixedMatrixIdLj32ELj4EED2Ev
 311 0002 00BF     		.section	.text._ZNK11FixedMatrixIdLj4ELj5EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj4ELj5EE4ro
 312              		.align	1
 313              		.p2align 2,,3
 314              		.weak	_ZNK11FixedMatrixIdLj4ELj5EE4rowsEv
 315              		.syntax unified
 316              		.thumb
 317              		.thumb_func
 318              		.fpu fpv4-sp-d16
 319              		.type	_ZNK11FixedMatrixIdLj4ELj5EE4rowsEv, %function
 320              	_ZNK11FixedMatrixIdLj4ELj5EE4rowsEv:
 321              		@ args = 0, pretend = 0, frame = 0
 322              		@ frame_needed = 0, uses_anonymous_args = 0
 323              		@ link register save eliminated.
 324 0000 0420     		movs	r0, #4
 325 0002 7047     		bx	lr
 326              		.size	_ZNK11FixedMatrixIdLj4ELj5EE4rowsEv, .-_ZNK11FixedMatrixIdLj4ELj5EE4rowsEv
 327              		.section	.text._ZNK11FixedMatrixIdLj4ELj5EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj4ELj5EE4co
 328              		.align	1
 329              		.p2align 2,,3
 330              		.weak	_ZNK11FixedMatrixIdLj4ELj5EE4colsEv
 331              		.syntax unified
 332              		.thumb
 333              		.thumb_func
 334              		.fpu fpv4-sp-d16
 335              		.type	_ZNK11FixedMatrixIdLj4ELj5EE4colsEv, %function
 336              	_ZNK11FixedMatrixIdLj4ELj5EE4colsEv:
 337              		@ args = 0, pretend = 0, frame = 0
 338              		@ frame_needed = 0, uses_anonymous_args = 0
 339              		@ link register save eliminated.
 340 0000 0520     		movs	r0, #5
 341 0002 7047     		bx	lr
 342              		.size	_ZNK11FixedMatrixIdLj4ELj5EE4colsEv, .-_ZNK11FixedMatrixIdLj4ELj5EE4colsEv
ARM GAS  /tmp/cckO1lQe.s 			page 7


 343              		.section	.text._ZNK11FixedMatrixIdLj4ELj5EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj4ELj5EEclEjj
 344              		.align	1
 345              		.p2align 2,,3
 346              		.weak	_ZNK11FixedMatrixIdLj4ELj5EEclEjj
 347              		.syntax unified
 348              		.thumb
 349              		.thumb_func
 350              		.fpu fpv4-sp-d16
 351              		.type	_ZNK11FixedMatrixIdLj4ELj5EEclEjj, %function
 352              	_ZNK11FixedMatrixIdLj4ELj5EEclEjj:
 353              		@ args = 0, pretend = 0, frame = 0
 354              		@ frame_needed = 0, uses_anonymous_args = 0
 355              		@ link register save eliminated.
 356 0000 0132     		adds	r2, r2, #1
 357 0002 01EB8101 		add	r1, r1, r1, lsl #2
 358 0006 1144     		add	r1, r1, r2
 359 0008 00EBC100 		add	r0, r0, r1, lsl #3
 360 000c 7047     		bx	lr
 361              		.size	_ZNK11FixedMatrixIdLj4ELj5EEclEjj, .-_ZNK11FixedMatrixIdLj4ELj5EEclEjj
 362 000e 00BF     		.section	.text._ZNK11FixedMatrixIdLj32ELj4EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj4EE4
 363              		.align	1
 364              		.p2align 2,,3
 365              		.weak	_ZNK11FixedMatrixIdLj32ELj4EE4rowsEv
 366              		.syntax unified
 367              		.thumb
 368              		.thumb_func
 369              		.fpu fpv4-sp-d16
 370              		.type	_ZNK11FixedMatrixIdLj32ELj4EE4rowsEv, %function
 371              	_ZNK11FixedMatrixIdLj32ELj4EE4rowsEv:
 372              		@ args = 0, pretend = 0, frame = 0
 373              		@ frame_needed = 0, uses_anonymous_args = 0
 374              		@ link register save eliminated.
 375 0000 2020     		movs	r0, #32
 376 0002 7047     		bx	lr
 377              		.size	_ZNK11FixedMatrixIdLj32ELj4EE4rowsEv, .-_ZNK11FixedMatrixIdLj32ELj4EE4rowsEv
 378              		.section	.text._ZNK11FixedMatrixIdLj32ELj4EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj4EE4
 379              		.align	1
 380              		.p2align 2,,3
 381              		.weak	_ZNK11FixedMatrixIdLj32ELj4EE4colsEv
 382              		.syntax unified
 383              		.thumb
 384              		.thumb_func
 385              		.fpu fpv4-sp-d16
 386              		.type	_ZNK11FixedMatrixIdLj32ELj4EE4colsEv, %function
 387              	_ZNK11FixedMatrixIdLj32ELj4EE4colsEv:
 388              		@ args = 0, pretend = 0, frame = 0
 389              		@ frame_needed = 0, uses_anonymous_args = 0
 390              		@ link register save eliminated.
 391 0000 0420     		movs	r0, #4
 392 0002 7047     		bx	lr
 393              		.size	_ZNK11FixedMatrixIdLj32ELj4EE4colsEv, .-_ZNK11FixedMatrixIdLj32ELj4EE4colsEv
 394              		.section	.text._ZNK11FixedMatrixIdLj32ELj4EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj4EEclE
 395              		.align	1
 396              		.p2align 2,,3
 397              		.weak	_ZNK11FixedMatrixIdLj32ELj4EEclEjj
 398              		.syntax unified
 399              		.thumb
ARM GAS  /tmp/cckO1lQe.s 			page 8


 400              		.thumb_func
 401              		.fpu fpv4-sp-d16
 402              		.type	_ZNK11FixedMatrixIdLj32ELj4EEclEjj, %function
 403              	_ZNK11FixedMatrixIdLj32ELj4EEclEjj:
 404              		@ args = 0, pretend = 0, frame = 0
 405              		@ frame_needed = 0, uses_anonymous_args = 0
 406              		@ link register save eliminated.
 407 0000 0132     		adds	r2, r2, #1
 408 0002 02EB8102 		add	r2, r2, r1, lsl #2
 409 0006 00EBC200 		add	r0, r0, r2, lsl #3
 410 000a 7047     		bx	lr
 411              		.size	_ZNK11FixedMatrixIdLj32ELj4EEclEjj, .-_ZNK11FixedMatrixIdLj32ELj4EEclEjj
 412              		.section	.text._ZN11FixedMatrixIdLj32ELj4EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj4EED5Ev,c
 413              		.align	1
 414              		.p2align 2,,3
 415              		.weak	_ZN11FixedMatrixIdLj32ELj4EED0Ev
 416              		.syntax unified
 417              		.thumb
 418              		.thumb_func
 419              		.fpu fpv4-sp-d16
 420              		.type	_ZN11FixedMatrixIdLj32ELj4EED0Ev, %function
 421              	_ZN11FixedMatrixIdLj32ELj4EED0Ev:
 422              		@ args = 0, pretend = 0, frame = 0
 423              		@ frame_needed = 0, uses_anonymous_args = 0
 424 0000 10B5     		push	{r4, lr}
 425 0002 4FF48161 		mov	r1, #1032
 426 0006 0446     		mov	r4, r0
 427 0008 FFF7FEFF 		bl	_ZdlPvj
 428 000c 2046     		mov	r0, r4
 429 000e 10BD     		pop	{r4, pc}
 430              		.size	_ZN11FixedMatrixIdLj32ELj4EED0Ev, .-_ZN11FixedMatrixIdLj32ELj4EED0Ev
 431              		.section	.text._ZN11FixedMatrixIdLj4ELj5EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj4ELj5EED5Ev,com
 432              		.align	1
 433              		.p2align 2,,3
 434              		.weak	_ZN11FixedMatrixIdLj4ELj5EED0Ev
 435              		.syntax unified
 436              		.thumb
 437              		.thumb_func
 438              		.fpu fpv4-sp-d16
 439              		.type	_ZN11FixedMatrixIdLj4ELj5EED0Ev, %function
 440              	_ZN11FixedMatrixIdLj4ELj5EED0Ev:
 441              		@ args = 0, pretend = 0, frame = 0
 442              		@ frame_needed = 0, uses_anonymous_args = 0
 443 0000 10B5     		push	{r4, lr}
 444 0002 A821     		movs	r1, #168
 445 0004 0446     		mov	r4, r0
 446 0006 FFF7FEFF 		bl	_ZdlPvj
 447 000a 2046     		mov	r0, r4
 448 000c 10BD     		pop	{r4, pc}
 449              		.size	_ZN11FixedMatrixIdLj4ELj5EED0Ev, .-_ZN11FixedMatrixIdLj4ELj5EED0Ev
 450 000e 00BF     		.section	.text._ZN20ZLeadscrewKinematicsC2E14KinematicsType,"ax",%progbits
 451              		.align	1
 452              		.p2align 2,,3
 453              		.global	_ZN20ZLeadscrewKinematicsC2E14KinematicsType
 454              		.syntax unified
 455              		.thumb
 456              		.thumb_func
ARM GAS  /tmp/cckO1lQe.s 			page 9


 457              		.fpu fpv4-sp-d16
 458              		.type	_ZN20ZLeadscrewKinematicsC2E14KinematicsType, %function
 459              	_ZN20ZLeadscrewKinematicsC2E14KinematicsType:
 460              		@ args = 0, pretend = 0, frame = 0
 461              		@ frame_needed = 0, uses_anonymous_args = 0
 462 0000 10B5     		push	{r4, lr}
 463 0002 0122     		movs	r2, #1
 464 0004 0446     		mov	r4, r0
 465 0006 DFED090A 		vldr.32	s1, .L39
 466 000a BFEE000A 		vmov.f32	s0, #-1.0e+0
 467 000e FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffb
 468 0012 074B     		ldr	r3, .L39+4
 469 0014 2360     		str	r3, [r4]
 470 0016 0021     		movs	r1, #0
 471 0018 4FF07E53 		mov	r3, #1065353216
 472 001c 4FF07C52 		mov	r2, #1056964608
 473 0020 2161     		str	r1, [r4, #16]
 474 0022 E263     		str	r2, [r4, #60]	@ float
 475 0024 6363     		str	r3, [r4, #52]	@ float
 476 0026 A363     		str	r3, [r4, #56]	@ float
 477 0028 2046     		mov	r0, r4
 478 002a 10BD     		pop	{r4, pc}
 479              	.L40:
 480              		.align	2
 481              	.L39:
 482 002c 00000000 		.word	0
 483 0030 08000000 		.word	.LANCHOR0+8
 484              		.size	_ZN20ZLeadscrewKinematicsC2E14KinematicsType, .-_ZN20ZLeadscrewKinematicsC2E14KinematicsType
 485              		.global	_ZN20ZLeadscrewKinematicsC1E14KinematicsType
 486              		.thumb_set _ZN20ZLeadscrewKinematicsC1E14KinematicsType,_ZN20ZLeadscrewKinematicsC2E14KinematicsTy
 487              		.section	.text._ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb,"ax",%progbits
 488              		.align	1
 489              		.p2align 2,,3
 490              		.global	_ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb
 491              		.syntax unified
 492              		.thumb
 493              		.thumb_func
 494              		.fpu fpv4-sp-d16
 495              		.type	_ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb, %function
 496              	_ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb:
 497              		@ args = 0, pretend = 0, frame = 0
 498              		@ frame_needed = 0, uses_anonymous_args = 0
 499 0000 10B5     		push	{r4, lr}
 500 0002 0446     		mov	r4, r0
 501 0004 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffb
 502 0008 064B     		ldr	r3, .L43
 503 000a 2360     		str	r3, [r4]
 504 000c 0021     		movs	r1, #0
 505 000e 4FF07E53 		mov	r3, #1065353216
 506 0012 4FF07C52 		mov	r2, #1056964608
 507 0016 2161     		str	r1, [r4, #16]
 508 0018 E263     		str	r2, [r4, #60]	@ float
 509 001a 6363     		str	r3, [r4, #52]	@ float
 510 001c A363     		str	r3, [r4, #56]	@ float
 511 001e 2046     		mov	r0, r4
 512 0020 10BD     		pop	{r4, pc}
 513              	.L44:
ARM GAS  /tmp/cckO1lQe.s 			page 10


 514 0022 00BF     		.align	2
 515              	.L43:
 516 0024 08000000 		.word	.LANCHOR0+8
 517              		.size	_ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb, .-_ZN20ZLeadscrewKinematicsC2E14KinematicsT
 518              		.global	_ZN20ZLeadscrewKinematicsC1E14KinematicsTypeffb
 519              		.thumb_set _ZN20ZLeadscrewKinematicsC1E14KinematicsTypeffb,_ZN20ZLeadscrewKinematicsC2E14Kinematic
 520              		.section	.text._ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef,"ax",%progbits
 521              		.align	1
 522              		.p2align 2,,3
 523              		.global	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef
 524              		.syntax unified
 525              		.thumb
 526              		.thumb_func
 527              		.fpu fpv4-sp-d16
 528              		.type	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef, %function
 529              	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef:
 530              		@ args = 0, pretend = 0, frame = 0
 531              		@ frame_needed = 0, uses_anonymous_args = 0
 532 0000 0369     		ldr	r3, [r0, #16]
 533 0002 9BB1     		cbz	r3, .L53
 534 0004 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 535 0008 DFF82480 		ldr	r8, .L56
 536 000c 1746     		mov	r7, r2
 537 000e 0646     		mov	r6, r0
 538 0010 0D46     		mov	r5, r1
 539 0012 0024     		movs	r4, #0
 540              	.L47:
 541 0014 F5E80223 		ldrd	r2, [r5], #8
 542 0018 4146     		mov	r1, r8
 543 001a 3846     		mov	r0, r7
 544 001c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 545 0020 3369     		ldr	r3, [r6, #16]
 546 0022 0134     		adds	r4, r4, #1
 547 0024 A342     		cmp	r3, r4
 548 0026 F5D8     		bhi	.L47
 549 0028 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 550              	.L53:
 551 002c 7047     		bx	lr
 552              	.L57:
 553 002e 00BF     		.align	2
 554              	.L56:
 555 0030 00000000 		.word	.LC2
 556              		.size	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef, .-_ZNK20ZLeadscrewKinematics1
 557              		.global	__aeabi_d2f
 558              		.global	__aeabi_ddiv
 559              		.global	__aeabi_dmul
 560              		.global	__aeabi_dsub
 561              		.section	.text._ZN11FixedMatrixIdLj4ELj5EE11GaussJordanEPdj,"axG",%progbits,_ZN11FixedMatrixIdLj4E
 562              		.align	1
 563              		.p2align 2,,3
 564              		.weak	_ZN11FixedMatrixIdLj4ELj5EE11GaussJordanEPdj
 565              		.syntax unified
 566              		.thumb
 567              		.thumb_func
 568              		.fpu fpv4-sp-d16
 569              		.type	_ZN11FixedMatrixIdLj4ELj5EE11GaussJordanEPdj, %function
 570              	_ZN11FixedMatrixIdLj4ELj5EE11GaussJordanEPdj:
ARM GAS  /tmp/cckO1lQe.s 			page 11


 571              		@ args = 0, pretend = 0, frame = 64
 572              		@ frame_needed = 0, uses_anonymous_args = 0
 573 0000 002A     		cmp	r2, #0
 574 0002 00F01E82 		beq	.L122
 575 0006 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 576 000a 2DED068B 		vpush.64	{d8, d9, d10}
 577 000e 91B0     		sub	sp, sp, #68
 578 0010 AB4E     		ldr	r6, .L139+8
 579 0012 0092     		str	r2, [sp]
 580 0014 0246     		mov	r2, r0
 581 0016 0F91     		str	r1, [sp, #60]
 582 0018 52F8083B 		ldr	r3, [r2], #8
 583 001c 0E92     		str	r2, [sp, #56]
 584 001e 9F68     		ldr	r7, [r3, #8]
 585 0020 0023     		movs	r3, #0
 586 0022 BB46     		mov	fp, r7
 587 0024 CDE90B23 		strd	r2, r3, [sp, #44]
 588 0028 0A93     		str	r3, [sp, #40]
 589 002a 0493     		str	r3, [sp, #16]
 590 002c B345     		cmp	fp, r6
 591 002e 00F13003 		add	r3, r0, #48
 592 0032 9FEDA1AB 		vldr.64	d10, .L139
 593 0036 0D93     		str	r3, [sp, #52]
 594 0038 8246     		mov	r10, r0
 595 003a 40F08D81 		bne	.L60
 596              	.L136:
 597 003e 0B98     		ldr	r0, [sp, #44]
 598              	.L61:
 599 0040 D0E90001 		ldrd	r0, [r0]
 600 0044 FFF7FEFF 		bl	__aeabi_d2f
 601 0048 049B     		ldr	r3, [sp, #16]
 602 004a 0099     		ldr	r1, [sp]
 603 004c 0133     		adds	r3, r3, #1
 604 004e 07EE900A 		vmov	s15, r0
 605 0052 9942     		cmp	r1, r3
 606 0054 0693     		str	r3, [sp, #24]
 607 0056 B0EEE78A 		vabs.f32	s16, s15
 608 005a 40F29080 		bls	.L62
 609 005e CB1A     		subs	r3, r1, r3
 610 0060 0193     		str	r3, [sp, #4]
 611 0062 DDE90C23 		ldrd	r2, r3, [sp, #48]
 612 0066 1344     		add	r3, r3, r2
 613 0068 0024     		movs	r4, #0
 614 006a 0293     		str	r3, [sp, #8]
 615 006c 5D46     		mov	r5, fp
 616 006e 04E0     		b	.L76
 617              	.L65:
 618 0070 019B     		ldr	r3, [sp, #4]
 619 0072 0134     		adds	r4, r4, #1
 620 0074 A342     		cmp	r3, r4
 621 0076 00F08180 		beq	.L125
 622              	.L76:
 623 007a 069B     		ldr	r3, [sp, #24]
 624 007c B542     		cmp	r5, r6
 625 007e 03EB040B 		add	fp, r3, r4
 626 0082 6BD1     		bne	.L63
 627 0084 029B     		ldr	r3, [sp, #8]
ARM GAS  /tmp/cckO1lQe.s 			page 12


 628 0086 04EB8400 		add	r0, r4, r4, lsl #2
 629 008a 03EBC000 		add	r0, r3, r0, lsl #3
 630              	.L64:
 631 008e D0E90001 		ldrd	r0, [r0]
 632 0092 FFF7FEFF 		bl	__aeabi_d2f
 633 0096 07EE900A 		vmov	s15, r0
 634 009a B0EEE79A 		vabs.f32	s18, s15
 635 009e B4EEC89A 		vcmpe.f32	s18, s16
 636 00a2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 637 00a6 E3DD     		ble	.L65
 638 00a8 049B     		ldr	r3, [sp, #16]
 639 00aa 5B45     		cmp	r3, fp
 640 00ac 00F07D81 		beq	.L111
 641 00b0 0A9A     		ldr	r2, [sp, #40]
 642 00b2 042A     		cmp	r2, #4
 643 00b4 00F27981 		bhi	.L111
 644 00b8 029A     		ldr	r2, [sp, #8]
 645 00ba 0594     		str	r4, [sp, #20]
 646 00bc 04EB8407 		add	r7, r4, r4, lsl #2
 647 00c0 02EBC707 		add	r7, r2, r7, lsl #3
 648 00c4 DDF82C90 		ldr	r9, [sp, #44]
 649 00c8 9846     		mov	r8, r3
 650 00ca 5C46     		mov	r4, fp
 651 00cc 1AE0     		b	.L75
 652              	.L127:
 653 00ce 4846     		mov	r0, r9
 654 00d0 B542     		cmp	r5, r6
 655 00d2 90ED008B 		vldr.64	d8, [r0]
 656 00d6 22D1     		bne	.L69
 657              	.L128:
 658 00d8 B542     		cmp	r5, r6
 659 00da BB46     		mov	fp, r7
 660 00dc 29D1     		bne	.L71
 661              	.L129:
 662 00de 9BED007B 		vldr.64	d7, [fp]
 663 00e2 4846     		mov	r0, r9
 664 00e4 B542     		cmp	r5, r6
 665 00e6 80ED007B 		vstr.64	d7, [r0]
 666 00ea 2FD1     		bne	.L73
 667              	.L130:
 668 00ec 3846     		mov	r0, r7
 669              	.L74:
 670 00ee 08F10108 		add	r8, r8, #1
 671 00f2 B8F1050F 		cmp	r8, #5
 672 00f6 80ED008B 		vstr.64	d8, [r0]
 673 00fa 07F10807 		add	r7, r7, #8
 674 00fe 09F10809 		add	r9, r9, #8
 675 0102 33D0     		beq	.L126
 676              	.L75:
 677 0104 B542     		cmp	r5, r6
 678 0106 E2D0     		beq	.L127
 679 0108 4246     		mov	r2, r8
 680 010a 0499     		ldr	r1, [sp, #16]
 681 010c 5046     		mov	r0, r10
 682 010e A847     		blx	r5
 683 0110 DAF80020 		ldr	r2, [r10]
 684 0114 9568     		ldr	r5, [r2, #8]
ARM GAS  /tmp/cckO1lQe.s 			page 13


 685 0116 B542     		cmp	r5, r6
 686 0118 90ED008B 		vldr.64	d8, [r0]
 687 011c DCD0     		beq	.L128
 688              	.L69:
 689 011e 4246     		mov	r2, r8
 690 0120 2146     		mov	r1, r4
 691 0122 5046     		mov	r0, r10
 692 0124 A847     		blx	r5
 693 0126 DAF80020 		ldr	r2, [r10]
 694 012a 9568     		ldr	r5, [r2, #8]
 695 012c B542     		cmp	r5, r6
 696 012e 8346     		mov	fp, r0
 697 0130 D5D0     		beq	.L129
 698              	.L71:
 699 0132 4246     		mov	r2, r8
 700 0134 0499     		ldr	r1, [sp, #16]
 701 0136 5046     		mov	r0, r10
 702 0138 A847     		blx	r5
 703 013a DAF80020 		ldr	r2, [r10]
 704 013e 9BED007B 		vldr.64	d7, [fp]
 705 0142 9568     		ldr	r5, [r2, #8]
 706 0144 B542     		cmp	r5, r6
 707 0146 80ED007B 		vstr.64	d7, [r0]
 708 014a CFD0     		beq	.L130
 709              	.L73:
 710 014c 4246     		mov	r2, r8
 711 014e 2146     		mov	r1, r4
 712 0150 5046     		mov	r0, r10
 713 0152 A847     		blx	r5
 714 0154 DAF80020 		ldr	r2, [r10]
 715 0158 9568     		ldr	r5, [r2, #8]
 716 015a C8E7     		b	.L74
 717              	.L63:
 718 015c 049A     		ldr	r2, [sp, #16]
 719 015e 5946     		mov	r1, fp
 720 0160 5046     		mov	r0, r10
 721 0162 A847     		blx	r5
 722 0164 DAF80030 		ldr	r3, [r10]
 723 0168 9D68     		ldr	r5, [r3, #8]
 724 016a 90E7     		b	.L64
 725              	.L126:
 726 016c 059C     		ldr	r4, [sp, #20]
 727 016e 019B     		ldr	r3, [sp, #4]
 728 0170 0134     		adds	r4, r4, #1
 729 0172 A342     		cmp	r3, r4
 730 0174 B0EE498A 		vmov.f32	s16, s18
 731 0178 7FF47FAF 		bne	.L76
 732              	.L125:
 733 017c AB46     		mov	fp, r5
 734              	.L62:
 735 017e B345     		cmp	fp, r6
 736 0180 40F01681 		bne	.L77
 737 0184 0B98     		ldr	r0, [sp, #44]
 738              	.L78:
 739 0186 0A9B     		ldr	r3, [sp, #40]
 740 0188 90ED007B 		vldr.64	d7, [r0]
 741 018c 8DED087B 		vstr.64	d7, [sp, #32]
ARM GAS  /tmp/cckO1lQe.s 			page 14


 742 0190 002B     		cmp	r3, #0
 743 0192 63D0     		beq	.L92
 744 0194 0A9B     		ldr	r3, [sp, #40]
 745 0196 03EB8303 		add	r3, r3, r3, lsl #2
 746 019a DB00     		lsls	r3, r3, #3
 747 019c 0193     		str	r3, [sp, #4]
 748 019e 069B     		ldr	r3, [sp, #24]
 749 01a0 0AEBC303 		add	r3, r10, r3, lsl #3
 750 01a4 0593     		str	r3, [sp, #20]
 751 01a6 0023     		movs	r3, #0
 752 01a8 0793     		str	r3, [sp, #28]
 753 01aa 5F46     		mov	r7, fp
 754              	.L93:
 755 01ac B742     		cmp	r7, r6
 756 01ae 40F0F480 		bne	.L82
 757 01b2 0598     		ldr	r0, [sp, #20]
 758              	.L83:
 759 01b4 DDE90823 		ldrd	r2, [sp, #32]
 760 01b8 D0E90001 		ldrd	r0, [r0]
 761 01bc FFF7FEFF 		bl	__aeabi_ddiv
 762 01c0 B742     		cmp	r7, r6
 763 01c2 CDE90201 		strd	r0, [sp, #8]
 764 01c6 40F0E080 		bne	.L84
 765 01ca 0598     		ldr	r0, [sp, #20]
 766              	.L85:
 767 01cc 009B     		ldr	r3, [sp]
 768 01ce 069D     		ldr	r5, [sp, #24]
 769 01d0 1A46     		mov	r2, r3
 770 01d2 AA42     		cmp	r2, r5
 771 01d4 80ED00AB 		vstr.64	d10, [r0]
 772 01d8 33D3     		bcc	.L86
 773 01da 059B     		ldr	r3, [sp, #20]
 774 01dc D146     		mov	r9, r10
 775 01de 03F10804 		add	r4, r3, #8
 776 01e2 1AE0     		b	.L91
 777              	.L132:
 778 01e4 019B     		ldr	r3, [sp, #4]
 779 01e6 1819     		adds	r0, r3, r4
 780              	.L88:
 781 01e8 D0E90023 		ldrd	r2, [r0]
 782 01ec DDE90201 		ldrd	r0, [sp, #8]
 783 01f0 FFF7FEFF 		bl	__aeabi_dmul
 784 01f4 B742     		cmp	r7, r6
 785 01f6 8246     		mov	r10, r0
 786 01f8 8B46     		mov	fp, r1
 787 01fa 18D1     		bne	.L89
 788 01fc A046     		mov	r8, r4
 789              	.L90:
 790 01fe 5B46     		mov	r3, fp
 791 0200 D8E90001 		ldrd	r0, [r8]
 792 0204 5246     		mov	r2, r10
 793 0206 FFF7FEFF 		bl	__aeabi_dsub
 794 020a 009B     		ldr	r3, [sp]
 795 020c 0135     		adds	r5, r5, #1
 796 020e AB42     		cmp	r3, r5
 797 0210 04F10804 		add	r4, r4, #8
 798 0214 C8E90001 		strd	r0, [r8]
ARM GAS  /tmp/cckO1lQe.s 			page 15


 799 0218 12D3     		bcc	.L131
 800              	.L91:
 801 021a B742     		cmp	r7, r6
 802 021c E2D0     		beq	.L132
 803 021e 2A46     		mov	r2, r5
 804 0220 0499     		ldr	r1, [sp, #16]
 805 0222 4846     		mov	r0, r9
 806 0224 B847     		blx	r7
 807 0226 D9F80030 		ldr	r3, [r9]
 808 022a 9F68     		ldr	r7, [r3, #8]
 809 022c DCE7     		b	.L88
 810              	.L89:
 811 022e 2A46     		mov	r2, r5
 812 0230 0799     		ldr	r1, [sp, #28]
 813 0232 4846     		mov	r0, r9
 814 0234 B847     		blx	r7
 815 0236 D9F80030 		ldr	r3, [r9]
 816 023a 8046     		mov	r8, r0
 817 023c 9F68     		ldr	r7, [r3, #8]
 818 023e DEE7     		b	.L90
 819              	.L131:
 820 0240 CA46     		mov	r10, r9
 821              	.L86:
 822 0242 059A     		ldr	r2, [sp, #20]
 823 0244 079B     		ldr	r3, [sp, #28]
 824 0246 2832     		adds	r2, r2, #40
 825 0248 0592     		str	r2, [sp, #20]
 826 024a 019A     		ldr	r2, [sp, #4]
 827 024c 283A     		subs	r2, r2, #40
 828 024e 0192     		str	r2, [sp, #4]
 829 0250 049A     		ldr	r2, [sp, #16]
 830 0252 0133     		adds	r3, r3, #1
 831 0254 9342     		cmp	r3, r2
 832 0256 0793     		str	r3, [sp, #28]
 833 0258 A8D1     		bne	.L93
 834 025a BB46     		mov	fp, r7
 835              	.L92:
 836 025c 009B     		ldr	r3, [sp]
 837 025e 069A     		ldr	r2, [sp, #24]
 838 0260 9342     		cmp	r3, r2
 839 0262 00F0AE80 		beq	.L133
 840 0266 0699     		ldr	r1, [sp, #24]
 841 0268 0A9B     		ldr	r3, [sp, #40]
 842 026a 0791     		str	r1, [sp, #28]
 843 026c 01EB8102 		add	r2, r1, r1, lsl #2
 844 0270 03EB8303 		add	r3, r3, r3, lsl #2
 845 0274 9B1A     		subs	r3, r3, r2
 846 0276 DB00     		lsls	r3, r3, #3
 847 0278 0193     		str	r3, [sp, #4]
 848 027a DDE90C23 		ldrd	r2, r3, [sp, #48]
 849 027e 1344     		add	r3, r3, r2
 850 0280 0593     		str	r3, [sp, #20]
 851 0282 5F46     		mov	r7, fp
 852              	.L104:
 853 0284 B742     		cmp	r7, r6
 854 0286 70D1     		bne	.L94
 855 0288 0598     		ldr	r0, [sp, #20]
ARM GAS  /tmp/cckO1lQe.s 			page 16


 856              	.L95:
 857 028a DDE90823 		ldrd	r2, [sp, #32]
 858 028e D0E90001 		ldrd	r0, [r0]
 859 0292 FFF7FEFF 		bl	__aeabi_ddiv
 860 0296 B742     		cmp	r7, r6
 861 0298 CDE90201 		strd	r0, [sp, #8]
 862 029c 6DD1     		bne	.L96
 863 029e 0598     		ldr	r0, [sp, #20]
 864              	.L97:
 865 02a0 009B     		ldr	r3, [sp]
 866 02a2 069D     		ldr	r5, [sp, #24]
 867 02a4 1A46     		mov	r2, r3
 868 02a6 AA42     		cmp	r2, r5
 869 02a8 80ED00AB 		vstr.64	d10, [r0]
 870 02ac 39D3     		bcc	.L98
 871 02ae 059B     		ldr	r3, [sp, #20]
 872 02b0 D146     		mov	r9, r10
 873 02b2 03F10804 		add	r4, r3, #8
 874 02b6 20E0     		b	.L103
 875              	.L140:
 876              		.align	3
 877              	.L139:
 878 02b8 00000000 		.word	0
 879 02bc 00000000 		.word	0
 880 02c0 00000000 		.word	_ZN11FixedMatrixIdLj4ELj5EEclEjj
 881              	.L135:
 882 02c4 019B     		ldr	r3, [sp, #4]
 883 02c6 1819     		adds	r0, r3, r4
 884              	.L100:
 885 02c8 D0E90023 		ldrd	r2, [r0]
 886 02cc DDE90201 		ldrd	r0, [sp, #8]
 887 02d0 FFF7FEFF 		bl	__aeabi_dmul
 888 02d4 B742     		cmp	r7, r6
 889 02d6 8246     		mov	r10, r0
 890 02d8 8B46     		mov	fp, r1
 891 02da 18D1     		bne	.L101
 892 02dc A046     		mov	r8, r4
 893              	.L102:
 894 02de 5B46     		mov	r3, fp
 895 02e0 D8E90001 		ldrd	r0, [r8]
 896 02e4 5246     		mov	r2, r10
 897 02e6 FFF7FEFF 		bl	__aeabi_dsub
 898 02ea 009B     		ldr	r3, [sp]
 899 02ec 0135     		adds	r5, r5, #1
 900 02ee AB42     		cmp	r3, r5
 901 02f0 04F10804 		add	r4, r4, #8
 902 02f4 C8E90001 		strd	r0, [r8]
 903 02f8 12D3     		bcc	.L134
 904              	.L103:
 905 02fa B742     		cmp	r7, r6
 906 02fc E2D0     		beq	.L135
 907 02fe 2A46     		mov	r2, r5
 908 0300 0499     		ldr	r1, [sp, #16]
 909 0302 4846     		mov	r0, r9
 910 0304 B847     		blx	r7
 911 0306 D9F80030 		ldr	r3, [r9]
 912 030a 9F68     		ldr	r7, [r3, #8]
ARM GAS  /tmp/cckO1lQe.s 			page 17


 913 030c DCE7     		b	.L100
 914              	.L101:
 915 030e 2A46     		mov	r2, r5
 916 0310 0799     		ldr	r1, [sp, #28]
 917 0312 4846     		mov	r0, r9
 918 0314 B847     		blx	r7
 919 0316 D9F80030 		ldr	r3, [r9]
 920 031a 8046     		mov	r8, r0
 921 031c 9F68     		ldr	r7, [r3, #8]
 922 031e DEE7     		b	.L102
 923              	.L134:
 924 0320 CA46     		mov	r10, r9
 925              	.L98:
 926 0322 059A     		ldr	r2, [sp, #20]
 927 0324 079B     		ldr	r3, [sp, #28]
 928 0326 2832     		adds	r2, r2, #40
 929 0328 0592     		str	r2, [sp, #20]
 930 032a 019A     		ldr	r2, [sp, #4]
 931 032c 283A     		subs	r2, r2, #40
 932 032e 0192     		str	r2, [sp, #4]
 933 0330 009A     		ldr	r2, [sp]
 934 0332 0133     		adds	r3, r3, #1
 935 0334 9A42     		cmp	r2, r3
 936 0336 0793     		str	r3, [sp, #28]
 937 0338 A4D1     		bne	.L104
 938 033a 0A9B     		ldr	r3, [sp, #40]
 939 033c 0133     		adds	r3, r3, #1
 940 033e 0A93     		str	r3, [sp, #40]
 941 0340 0B9B     		ldr	r3, [sp, #44]
 942 0342 3033     		adds	r3, r3, #48
 943 0344 0B93     		str	r3, [sp, #44]
 944 0346 0C9B     		ldr	r3, [sp, #48]
 945 0348 BB46     		mov	fp, r7
 946 034a 3033     		adds	r3, r3, #48
 947 034c 0C93     		str	r3, [sp, #48]
 948 034e B345     		cmp	fp, r6
 949 0350 069B     		ldr	r3, [sp, #24]
 950 0352 0493     		str	r3, [sp, #16]
 951 0354 3FF473AE 		beq	.L136
 952              	.L60:
 953 0358 0499     		ldr	r1, [sp, #16]
 954 035a 5046     		mov	r0, r10
 955 035c 0A46     		mov	r2, r1
 956 035e D847     		blx	fp
 957 0360 DAF80030 		ldr	r3, [r10]
 958 0364 D3F808B0 		ldr	fp, [r3, #8]
 959 0368 6AE6     		b	.L61
 960              	.L94:
 961 036a 049A     		ldr	r2, [sp, #16]
 962 036c 0799     		ldr	r1, [sp, #28]
 963 036e 5046     		mov	r0, r10
 964 0370 B847     		blx	r7
 965 0372 DAF80030 		ldr	r3, [r10]
 966 0376 9F68     		ldr	r7, [r3, #8]
 967 0378 87E7     		b	.L95
 968              	.L96:
 969 037a 049A     		ldr	r2, [sp, #16]
ARM GAS  /tmp/cckO1lQe.s 			page 18


 970 037c 0799     		ldr	r1, [sp, #28]
 971 037e 5046     		mov	r0, r10
 972 0380 B847     		blx	r7
 973 0382 DAF80030 		ldr	r3, [r10]
 974 0386 9F68     		ldr	r7, [r3, #8]
 975 0388 8AE7     		b	.L97
 976              	.L84:
 977 038a 049A     		ldr	r2, [sp, #16]
 978 038c 0799     		ldr	r1, [sp, #28]
 979 038e 5046     		mov	r0, r10
 980 0390 B847     		blx	r7
 981 0392 DAF80030 		ldr	r3, [r10]
 982 0396 9F68     		ldr	r7, [r3, #8]
 983 0398 18E7     		b	.L85
 984              	.L82:
 985 039a 049A     		ldr	r2, [sp, #16]
 986 039c 0799     		ldr	r1, [sp, #28]
 987 039e 5046     		mov	r0, r10
 988 03a0 B847     		blx	r7
 989 03a2 DAF80030 		ldr	r3, [r10]
 990 03a6 9F68     		ldr	r7, [r3, #8]
 991 03a8 04E7     		b	.L83
 992              	.L111:
 993 03aa B0EE498A 		vmov.f32	s16, s18
 994 03ae 5FE6     		b	.L65
 995              	.L77:
 996 03b0 0499     		ldr	r1, [sp, #16]
 997 03b2 5046     		mov	r0, r10
 998 03b4 0A46     		mov	r2, r1
 999 03b6 D847     		blx	fp
 1000 03b8 DAF80030 		ldr	r3, [r10]
 1001 03bc D3F808B0 		ldr	fp, [r3, #8]
 1002 03c0 E1E6     		b	.L78
 1003              	.L133:
 1004 03c2 049B     		ldr	r3, [sp, #16]
 1005 03c4 DDF83C80 		ldr	r8, [sp, #60]
 1006 03c8 0E9C     		ldr	r4, [sp, #56]
 1007 03ca 5F46     		mov	r7, fp
 1008 03cc 0233     		adds	r3, r3, #2
 1009 03ce 0AEBC309 		add	r9, r10, r3, lsl #3
 1010 03d2 D346     		mov	fp, r10
 1011 03d4 4546     		mov	r5, r8
 1012 03d6 4FF0000A 		mov	r10, #0
 1013 03da 3B46     		mov	r3, r7
 1014 03dc 19E0     		b	.L81
 1015              	.L137:
 1016 03de 4846     		mov	r0, r9
 1017 03e0 B342     		cmp	r3, r6
 1018 03e2 D0E90078 		ldrd	r7, [r0]
 1019 03e6 21D1     		bne	.L108
 1020              	.L138:
 1021 03e8 2346     		mov	r3, r4
 1022              	.L109:
 1023 03ea D3E90023 		ldrd	r2, [r3]
 1024 03ee 3846     		mov	r0, r7
 1025 03f0 4146     		mov	r1, r8
 1026 03f2 FFF7FEFF 		bl	__aeabi_ddiv
ARM GAS  /tmp/cckO1lQe.s 			page 19


 1027 03f6 069B     		ldr	r3, [sp, #24]
 1028 03f8 0AF1010A 		add	r10, r10, #1
 1029 03fc 5345     		cmp	r3, r10
 1030 03fe 04F13004 		add	r4, r4, #48
 1031 0402 09F12809 		add	r9, r9, #40
 1032 0406 E5E80201 		strd	r0, [r5], #8
 1033 040a 15D0     		beq	.L58
 1034 040c DBF80030 		ldr	r3, [fp]
 1035 0410 9B68     		ldr	r3, [r3, #8]
 1036              	.L81:
 1037 0412 B342     		cmp	r3, r6
 1038 0414 E3D0     		beq	.L137
 1039 0416 069A     		ldr	r2, [sp, #24]
 1040 0418 5146     		mov	r1, r10
 1041 041a 5846     		mov	r0, fp
 1042 041c 9847     		blx	r3
 1043 041e DBF80030 		ldr	r3, [fp]
 1044 0422 9B68     		ldr	r3, [r3, #8]
 1045 0424 B342     		cmp	r3, r6
 1046 0426 D0E90078 		ldrd	r7, [r0]
 1047 042a DDD0     		beq	.L138
 1048              	.L108:
 1049 042c 5246     		mov	r2, r10
 1050 042e 5146     		mov	r1, r10
 1051 0430 5846     		mov	r0, fp
 1052 0432 9847     		blx	r3
 1053 0434 0346     		mov	r3, r0
 1054 0436 D8E7     		b	.L109
 1055              	.L58:
 1056 0438 11B0     		add	sp, sp, #68
 1057              		@ sp needed
 1058 043a BDEC068B 		vldm	sp!, {d8-d10}
 1059 043e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1060              	.L122:
 1061 0442 7047     		bx	lr
 1062              		.size	_ZN11FixedMatrixIdLj4ELj5EE11GaussJordanEPdj, .-_ZN11FixedMatrixIdLj4ELj5EE11GaussJordanEPdj
 1063              		.global	__aeabi_f2d
 1064              		.global	__aeabi_dadd
 1065              		.global	__aeabi_dcmpun
 1066              		.section	.text._ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef.p
 1067              		.align	1
 1068              		.p2align 2,,3
 1069              		.syntax unified
 1070              		.thumb
 1071              		.thumb_func
 1072              		.fpu fpv4-sp-d16
 1073              		.type	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef.part.5, %f
 1074              	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef.part.5:
 1075              		@ args = 0, pretend = 0, frame = 2024
 1076              		@ frame_needed = 0, uses_anonymous_args = 0
 1077 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1078 0004 2DED0E8B 		vpush.64	{d8, d9, d10, d11, d12, d13, d14}
 1079 0008 ADF2FC7D 		subw	sp, sp, #2044
 1080 000c 8046     		mov	r8, r0
 1081 000e 8990     		str	r0, [sp, #548]
 1082 0010 1046     		mov	r0, r2
 1083 0012 8893     		str	r3, [sp, #544]
ARM GAS  /tmp/cckO1lQe.s 			page 20


 1084 0014 3192     		str	r2, [sp, #196]
 1085 0016 8946     		mov	r9, r1
 1086 0018 1191     		str	r1, [sp, #68]
 1087 001a FFF7FEFF 		bl	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 1088 001e 9FED0A7B 		vldr.64	d7, .L229
 1089 0022 0B4B     		ldr	r3, .L229+8
 1090 0024 FC93     		str	r3, [sp, #1008]
 1091 0026 0590     		str	r0, [sp, #20]
 1092 0028 8DED0E7B 		vstr.64	d7, [sp, #56]
 1093 002c 0028     		cmp	r0, #0
 1094 002e 01F07B80 		beq	.L181
 1095 0032 084B     		ldr	r3, .L229+12
 1096 0034 3093     		str	r3, [sp, #192]
 1097 0036 92AB     		add	r3, sp, #584
 1098 0038 4FF0000B 		mov	fp, #0
 1099 003c 0DF57C7A 		add	r10, sp, #1008
 1100 0040 1093     		str	r3, [sp, #64]
 1101 0042 E4E0     		b	.L147
 1102              	.L230:
 1103 0044 AFF30080 		.align	3
 1104              	.L229:
 1105 0048 00000000 		.word	0
 1106 004c 00000000 		.word	0
 1107 0050 08000000 		.word	_ZTV11FixedMatrixIdLj32ELj4EE+8
 1108 0054 00000000 		.word	reprap
 1109              	.L222:
 1110 0058 B9F1040F 		cmp	r9, #4
 1111 005c 00F0E482 		beq	.L145
 1112 0060 B9F1020F 		cmp	r9, #2
 1113 0064 40F0CB80 		bne	.L143
 1114 0068 98ED069A 		vldr.32	s18, [r8, #24]
 1115 006c 98ED058A 		vldr.32	s16, [r8, #20]
 1116 0070 39EE48AA 		vsub.f32	s20, s18, s16
 1117 0074 1AEE100A 		vmov	r0, s20
 1118 0078 FFF7FEFF 		bl	__aeabi_f2d
 1119 007c D8ED0A9A 		vldr.32	s19, [r8, #40]
 1120 0080 D8ED098A 		vldr.32	s17, [r8, #36]
 1121 0084 79EEE8AA 		vsub.f32	s21, s19, s17
 1122 0088 0446     		mov	r4, r0
 1123 008a 1AEE900A 		vmov	r0, s21
 1124 008e 0D46     		mov	r5, r1
 1125 0090 FFF7FEFF 		bl	__aeabi_f2d
 1126 0094 2246     		mov	r2, r4
 1127 0096 0646     		mov	r6, r0
 1128 0098 0F46     		mov	r7, r1
 1129 009a 2B46     		mov	r3, r5
 1130 009c 2046     		mov	r0, r4
 1131 009e 2946     		mov	r1, r5
 1132 00a0 FFF7FEFF 		bl	__aeabi_dmul
 1133 00a4 3246     		mov	r2, r6
 1134 00a6 0446     		mov	r4, r0
 1135 00a8 0D46     		mov	r5, r1
 1136 00aa 3B46     		mov	r3, r7
 1137 00ac 3046     		mov	r0, r6
 1138 00ae 3946     		mov	r1, r7
 1139 00b0 FFF7FEFF 		bl	__aeabi_dmul
 1140 00b4 0246     		mov	r2, r0
ARM GAS  /tmp/cckO1lQe.s 			page 21


 1141 00b6 0B46     		mov	r3, r1
 1142 00b8 2046     		mov	r0, r4
 1143 00ba 2946     		mov	r1, r5
 1144 00bc FFF7FEFF 		bl	__aeabi_dadd
 1145 00c0 CDE91201 		strd	r0, [sp, #72]
 1146 00c4 19EE900A 		vmov	r0, s19
 1147 00c8 FFF7FEFF 		bl	__aeabi_f2d
 1148 00cc 69EEA87A 		vmul.f32	s15, s19, s17
 1149 00d0 0446     		mov	r4, r0
 1150 00d2 17EE900A 		vmov	r0, s15
 1151 00d6 0D46     		mov	r5, r1
 1152 00d8 FFF7FEFF 		bl	__aeabi_f2d
 1153 00dc DDEDBC7A 		vldr.32	s15, [sp, #752]
 1154 00e0 6AEEA77A 		vmul.f32	s15, s21, s15
 1155 00e4 CDE90601 		strd	r0, [sp, #24]
 1156 00e8 17EE900A 		vmov	r0, s15
 1157 00ec FFF7FEFF 		bl	__aeabi_f2d
 1158 00f0 CDE90801 		strd	r0, [sp, #32]
 1159 00f4 19EE100A 		vmov	r0, s18
 1160 00f8 FFF7FEFF 		bl	__aeabi_f2d
 1161 00fc 69EE087A 		vmul.f32	s15, s18, s16
 1162 0100 0646     		mov	r6, r0
 1163 0102 17EE900A 		vmov	r0, s15
 1164 0106 0F46     		mov	r7, r1
 1165 0108 FFF7FEFF 		bl	__aeabi_f2d
 1166 010c 109B     		ldr	r3, [sp, #64]
 1167 010e D3ED007A 		vldr.32	s15, [r3]
 1168 0112 6AEE277A 		vmul.f32	s15, s20, s15
 1169 0116 CDE90A01 		strd	r0, [sp, #40]
 1170 011a 17EE900A 		vmov	r0, s15
 1171 011e FFF7FEFF 		bl	__aeabi_f2d
 1172 0122 2246     		mov	r2, r4
 1173 0124 CDE90C01 		strd	r0, [sp, #48]
 1174 0128 2B46     		mov	r3, r5
 1175 012a 2046     		mov	r0, r4
 1176 012c 2946     		mov	r1, r5
 1177 012e FFF7FEFF 		bl	__aeabi_dmul
 1178 0132 DDE90623 		ldrd	r2, [sp, #24]
 1179 0136 FFF7FEFF 		bl	__aeabi_dsub
 1180 013a DDE90823 		ldrd	r2, [sp, #32]
 1181 013e FFF7FEFF 		bl	__aeabi_dsub
 1182 0142 3246     		mov	r2, r6
 1183 0144 0446     		mov	r4, r0
 1184 0146 0D46     		mov	r5, r1
 1185 0148 3B46     		mov	r3, r7
 1186 014a 3046     		mov	r0, r6
 1187 014c 3946     		mov	r1, r7
 1188 014e FFF7FEFF 		bl	__aeabi_dmul
 1189 0152 0246     		mov	r2, r0
 1190 0154 0B46     		mov	r3, r1
 1191 0156 2046     		mov	r0, r4
 1192 0158 2946     		mov	r1, r5
 1193 015a FFF7FEFF 		bl	__aeabi_dadd
 1194 015e DDE90A23 		ldrd	r2, [sp, #40]
 1195 0162 FFF7FEFF 		bl	__aeabi_dsub
 1196 0166 DDE90C23 		ldrd	r2, [sp, #48]
 1197 016a FFF7FEFF 		bl	__aeabi_dsub
ARM GAS  /tmp/cckO1lQe.s 			page 22


 1198 016e 01F10043 		add	r3, r1, #-2147483648
 1199 0172 3490     		str	r0, [sp, #208]
 1200 0174 3593     		str	r3, [sp, #212]
 1201 0176 DDE93401 		ldrd	r0, [sp, #208]
 1202 017a DDE91223 		ldrd	r2, [sp, #72]
 1203 017e FFF7FEFF 		bl	__aeabi_ddiv
 1204 0182 CAE90201 		strd	r0, [r10, #8]
 1205 0186 18EE900A 		vmov	r0, s17
 1206 018a FFF7FEFF 		bl	__aeabi_f2d
 1207 018e 0446     		mov	r4, r0
 1208 0190 18EE100A 		vmov	r0, s16
 1209 0194 0D46     		mov	r5, r1
 1210 0196 FFF7FEFF 		bl	__aeabi_f2d
 1211 019a 2246     		mov	r2, r4
 1212 019c 0646     		mov	r6, r0
 1213 019e 0F46     		mov	r7, r1
 1214 01a0 2B46     		mov	r3, r5
 1215 01a2 2046     		mov	r0, r4
 1216 01a4 2946     		mov	r1, r5
 1217 01a6 FFF7FEFF 		bl	__aeabi_dmul
 1218 01aa DDE90623 		ldrd	r2, [sp, #24]
 1219 01ae FFF7FEFF 		bl	__aeabi_dsub
 1220 01b2 DDE90823 		ldrd	r2, [sp, #32]
 1221 01b6 FFF7FEFF 		bl	__aeabi_dadd
 1222 01ba 3246     		mov	r2, r6
 1223 01bc 0446     		mov	r4, r0
 1224 01be 0D46     		mov	r5, r1
 1225 01c0 3B46     		mov	r3, r7
 1226 01c2 3046     		mov	r0, r6
 1227 01c4 3946     		mov	r1, r7
 1228 01c6 FFF7FEFF 		bl	__aeabi_dmul
 1229 01ca 0246     		mov	r2, r0
 1230 01cc 0B46     		mov	r3, r1
 1231 01ce 2046     		mov	r0, r4
 1232 01d0 2946     		mov	r1, r5
 1233 01d2 FFF7FEFF 		bl	__aeabi_dadd
 1234 01d6 DDE90A23 		ldrd	r2, [sp, #40]
 1235 01da FFF7FEFF 		bl	__aeabi_dsub
 1236 01de DDE90C23 		ldrd	r2, [sp, #48]
 1237 01e2 FFF7FEFF 		bl	__aeabi_dadd
 1238 01e6 01F10043 		add	r3, r1, #-2147483648
 1239 01ea 3793     		str	r3, [sp, #220]
 1240 01ec 3690     		str	r0, [sp, #216]
 1241 01ee DDE91223 		ldrd	r2, [sp, #72]
 1242 01f2 DDE93601 		ldrd	r0, [sp, #216]
 1243 01f6 FFF7FEFF 		bl	__aeabi_ddiv
 1244 01fa CAE90401 		strd	r0, [r10, #16]
 1245              	.L143:
 1246 01fe 059B     		ldr	r3, [sp, #20]
 1247 0200 0BF1010B 		add	fp, fp, #1
 1248 0204 5B45     		cmp	r3, fp
 1249 0206 0AF1200A 		add	r10, r10, #32
 1250 020a 00F0A080 		beq	.L142
 1251              	.L147:
 1252 020e 309B     		ldr	r3, [sp, #192]
 1253 0210 109A     		ldr	r2, [sp, #64]
 1254 0212 9868     		ldr	r0, [r3, #8]	@ unaligned
ARM GAS  /tmp/cckO1lQe.s 			page 23


 1255 0214 0023     		movs	r3, #0
 1256 0216 0093     		str	r3, [sp]
 1257 0218 5946     		mov	r1, fp
 1258 021a BCAB     		add	r3, sp, #752
 1259 021c FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 1260 0220 10EE100A 		vmov	r0, s0
 1261 0224 FFF7FEFF 		bl	__aeabi_f2d
 1262 0228 0246     		mov	r2, r0
 1263 022a 0B46     		mov	r3, r1
 1264 022c FFF7FEFF 		bl	__aeabi_dmul
 1265 0230 0246     		mov	r2, r0
 1266 0232 0B46     		mov	r3, r1
 1267 0234 DDE90E01 		ldrd	r0, [sp, #56]
 1268 0238 FFF7FEFF 		bl	__aeabi_dadd
 1269 023c B9F1030F 		cmp	r9, #3
 1270 0240 CDE90E01 		strd	r0, [sp, #56]
 1271 0244 7FF408AF 		bne	.L222
 1272 0248 D8ED0BDA 		vldr.32	s27, [r8, #44]
 1273 024c D8ED05CA 		vldr.32	s25, [r8, #20]
 1274 0250 D8ED06BA 		vldr.32	s23, [r8, #24]
 1275 0254 98ED07DA 		vldr.32	s26, [r8, #28]
 1276 0258 98ED0ABA 		vldr.32	s22, [r8, #40]
 1277 025c D8ED09AA 		vldr.32	s21, [r8, #36]
 1278 0260 6DEEAC8A 		vmul.f32	s17, s27, s25
 1279 0264 F1EE4DEA 		vneg.f32	s29, s26
 1280 0268 F0EE687A 		vmov.f32	s15, s17
 1281 026c DBEEAD7A 		vfnms.f32	s15, s23, s27
 1282 0270 0BF1010B 		add	fp, fp, #1
 1283 0274 0AF1200A 		add	r10, r10, #32
 1284 0278 B1EE6BEA 		vneg.f32	s28, s23
 1285 027c EEEE8B7A 		vfma.f32	s15, s29, s22
 1286 0280 F1EE6C9A 		vneg.f32	s19, s25
 1287 0284 ECEE8B7A 		vfma.f32	s15, s25, s22
 1288 0288 EDEE2A7A 		vfma.f32	s15, s26, s21
 1289 028c EEEE2A7A 		vfma.f32	s15, s28, s21
 1290 0290 17EE900A 		vmov	r0, s15
 1291 0294 FFF7FEFF 		bl	__aeabi_f2d
 1292 0298 109B     		ldr	r3, [sp, #64]
 1293 029a 9DEDBCAA 		vldr.32	s20, [sp, #752]
 1294 029e 93ED00CA 		vldr.32	s24, [r3]
 1295 02a2 2DEE8C8A 		vmul.f32	s16, s27, s24
 1296 02a6 2BEE0C9A 		vmul.f32	s18, s22, s24
 1297 02aa F0EE487A 		vmov.f32	s15, s16
 1298 02ae DBEEAD7A 		vfnms.f32	s15, s23, s27
 1299 02b2 0446     		mov	r4, r0
 1300 02b4 0D46     		mov	r5, r1
 1301 02b6 EEEE8B7A 		vfma.f32	s15, s29, s22
 1302 02ba 77EE897A 		vadd.f32	s15, s15, s18
 1303 02be EDEE0A7A 		vfma.f32	s15, s26, s20
 1304 02c2 EEEE0A7A 		vfma.f32	s15, s28, s20
 1305 02c6 17EE900A 		vmov	r0, s15
 1306 02ca FFF7FEFF 		bl	__aeabi_f2d
 1307 02ce 01F10043 		add	r3, r1, #-2147483648
 1308 02d2 3993     		str	r3, [sp, #228]
 1309 02d4 3890     		str	r0, [sp, #224]
 1310 02d6 2246     		mov	r2, r4
 1311 02d8 2B46     		mov	r3, r5
ARM GAS  /tmp/cckO1lQe.s 			page 24


 1312 02da DDE93801 		ldrd	r0, [sp, #224]
 1313 02de FFF7FEFF 		bl	__aeabi_ddiv
 1314 02e2 78EEC87A 		vsub.f32	s15, s17, s16
 1315 02e6 4AE90601 		strd	r0, [r10, #-24]
 1316 02ea EEEEAA7A 		vfma.f32	s15, s29, s21
 1317 02ee EAEE8C7A 		vfma.f32	s15, s21, s24
 1318 02f2 EDEE0A7A 		vfma.f32	s15, s26, s20
 1319 02f6 E9EE8A7A 		vfma.f32	s15, s19, s20
 1320 02fa 17EE900A 		vmov	r0, s15
 1321 02fe FFF7FEFF 		bl	__aeabi_f2d
 1322 0302 2246     		mov	r2, r4
 1323 0304 2B46     		mov	r3, r5
 1324 0306 FFF7FEFF 		bl	__aeabi_ddiv
 1325 030a F0EE497A 		vmov.f32	s15, s18
 1326 030e DCEE8B7A 		vfnms.f32	s15, s25, s22
 1327 0312 4AE90401 		strd	r0, [r10, #-16]
 1328 0316 EEEE2A7A 		vfma.f32	s15, s28, s21
 1329 031a EAEE8C7A 		vfma.f32	s15, s21, s24
 1330 031e EBEE8A7A 		vfma.f32	s15, s23, s20
 1331 0322 E9EE8A7A 		vfma.f32	s15, s19, s20
 1332 0326 17EE900A 		vmov	r0, s15
 1333 032a FFF7FEFF 		bl	__aeabi_f2d
 1334 032e 01F10043 		add	r3, r1, #-2147483648
 1335 0332 3B93     		str	r3, [sp, #236]
 1336 0334 3A90     		str	r0, [sp, #232]
 1337 0336 2B46     		mov	r3, r5
 1338 0338 2246     		mov	r2, r4
 1339 033a DDE93A01 		ldrd	r0, [sp, #232]
 1340 033e FFF7FEFF 		bl	__aeabi_ddiv
 1341 0342 059B     		ldr	r3, [sp, #20]
 1342 0344 5B45     		cmp	r3, fp
 1343 0346 4AE90201 		strd	r0, [r10, #-8]
 1344 034a 7FF460AF 		bne	.L147
 1345              	.L142:
 1346 034e 309B     		ldr	r3, [sp, #192]
 1347 0350 9B6C     		ldr	r3, [r3, #72]
 1348 0352 13F01003 		ands	r3, r3, #16
 1349 0356 1A93     		str	r3, [sp, #104]
 1350 0358 40F07D86 		bne	.L223
 1351 035c 109A     		ldr	r2, [sp, #64]
 1352 035e AE4B     		ldr	r3, .L231+8
 1353 0360 1360     		str	r3, [r2]
 1354 0362 119B     		ldr	r3, [sp, #68]
 1355 0364 002B     		cmp	r3, #0
 1356 0366 00F09C80 		beq	.L156
 1357              	.L180:
 1358 036a 319D     		ldr	r5, [sp, #196]
 1359 036c 9FEDA87B 		vldr.64	d7, .L231
 1360 0370 D5F80401 		ldr	r0, [r5, #260]	@ float
 1361 0374 8DED127B 		vstr.64	d7, [sp, #72]
 1362 0378 FFF7FEFF 		bl	__aeabi_f2d
 1363 037c 119B     		ldr	r3, [sp, #68]
 1364 037e 1290     		str	r0, [sp, #72]
 1365 0380 C3EB4372 		rsb	r2, r3, r3, lsl #29
 1366 0384 D200     		lsls	r2, r2, #3
 1367 0386 DB00     		lsls	r3, r3, #3
 1368 0388 0832     		adds	r2, r2, #8
ARM GAS  /tmp/cckO1lQe.s 			page 25


 1369 038a 0DF57C7B 		add	fp, sp, #1008
 1370 038e 1692     		str	r2, [sp, #88]
 1371 0390 0BEB0302 		add	r2, fp, r3
 1372 0394 1492     		str	r2, [sp, #80]
 1373 0396 109A     		ldr	r2, [sp, #64]
 1374 0398 0F46     		mov	r7, r1
 1375 039a 1A44     		add	r2, r2, r3
 1376 039c 0599     		ldr	r1, [sp, #20]
 1377 039e 0C92     		str	r2, [sp, #48]
 1378 03a0 FEAA     		add	r2, sp, #1016
 1379 03a2 D318     		adds	r3, r2, r3
 1380 03a4 4C01     		lsls	r4, r1, #5
 1381 03a6 05F58270 		add	r0, r5, #260
 1382 03aa 0893     		str	r3, [sp, #32]
 1383 03ac A4F13003 		sub	r3, r4, #48
 1384 03b0 07F10045 		add	r5, r7, #-2147483648
 1385 03b4 0A93     		str	r3, [sp, #40]
 1386 03b6 00EB8103 		add	r3, r0, r1, lsl #2
 1387 03ba 1395     		str	r5, [sp, #76]
 1388 03bc 1893     		str	r3, [sp, #96]
 1389              	.L155:
 1390 03be 9BED027B 		vldr.64	d7, [fp, #8]
 1391 03c2 169B     		ldr	r3, [sp, #88]
 1392 03c4 0C9A     		ldr	r2, [sp, #48]
 1393 03c6 8DED067B 		vstr.64	d7, [sp, #24]
 1394 03ca FEAC     		add	r4, sp, #1016
 1395 03cc 03EB020A 		add	r10, r3, r2
 1396              	.L152:
 1397 03d0 D4E90023 		ldrd	r2, [r4]
 1398 03d4 DDE90601 		ldrd	r0, [sp, #24]
 1399 03d8 FFF7FEFF 		bl	__aeabi_dmul
 1400 03dc 059B     		ldr	r3, [sp, #20]
 1401 03de 012B     		cmp	r3, #1
 1402 03e0 0646     		mov	r6, r0
 1403 03e2 0F46     		mov	r7, r1
 1404 03e4 04F10809 		add	r9, r4, #8
 1405 03e8 17D9     		bls	.L150
 1406 03ea 0A9B     		ldr	r3, [sp, #40]
 1407 03ec 083C     		subs	r4, r4, #8
 1408 03ee 03EB0908 		add	r8, r3, r9
 1409 03f2 5D46     		mov	r5, fp
 1410              	.L151:
 1411 03f4 D4E90A23 		ldrd	r2, [r4, #40]
 1412 03f8 D5E90A01 		ldrd	r0, [r5, #40]
 1413 03fc FFF7FEFF 		bl	__aeabi_dmul
 1414 0400 0246     		mov	r2, r0
 1415 0402 0B46     		mov	r3, r1
 1416 0404 3046     		mov	r0, r6
 1417 0406 3946     		mov	r1, r7
 1418 0408 FFF7FEFF 		bl	__aeabi_dadd
 1419 040c 2034     		adds	r4, r4, #32
 1420 040e A045     		cmp	r8, r4
 1421 0410 0646     		mov	r6, r0
 1422 0412 0F46     		mov	r7, r1
 1423 0414 05F12005 		add	r5, r5, #32
 1424 0418 ECD1     		bne	.L151
 1425              	.L150:
ARM GAS  /tmp/cckO1lQe.s 			page 26


 1426 041a 089B     		ldr	r3, [sp, #32]
 1427 041c 4B45     		cmp	r3, r9
 1428 041e EAE80267 		strd	r6, [r10], #8
 1429 0422 4C46     		mov	r4, r9
 1430 0424 D4D1     		bne	.L152
 1431 0426 DDE91223 		ldrd	r2, [sp, #72]
 1432 042a DDE90601 		ldrd	r0, [sp, #24]
 1433 042e FFF7FEFF 		bl	__aeabi_dmul
 1434 0432 059B     		ldr	r3, [sp, #20]
 1435 0434 012B     		cmp	r3, #1
 1436 0436 0446     		mov	r4, r0
 1437 0438 0D46     		mov	r5, r1
 1438 043a 1FD9     		bls	.L153
 1439 043c 319B     		ldr	r3, [sp, #196]
 1440 043e DDF860A0 		ldr	r10, [sp, #96]
 1441 0442 03F58477 		add	r7, r3, #264
 1442 0446 5E46     		mov	r6, fp
 1443              	.L154:
 1444 0448 57F8040B 		ldr	r0, [r7], #4	@ float
 1445 044c FFF7FEFF 		bl	__aeabi_f2d
 1446 0450 01F10049 		add	r9, r1, #-2147483648
 1447 0454 D6E90A23 		ldrd	r2, [r6, #40]
 1448 0458 4946     		mov	r1, r9
 1449 045a 8046     		mov	r8, r0
 1450 045c FFF7FEFF 		bl	__aeabi_dmul
 1451 0460 0246     		mov	r2, r0
 1452 0462 0B46     		mov	r3, r1
 1453 0464 2046     		mov	r0, r4
 1454 0466 2946     		mov	r1, r5
 1455 0468 FFF7FEFF 		bl	__aeabi_dadd
 1456 046c BA45     		cmp	r10, r7
 1457 046e 0446     		mov	r4, r0
 1458 0470 0D46     		mov	r5, r1
 1459 0472 06F12006 		add	r6, r6, #32
 1460 0476 E7D1     		bne	.L154
 1461 0478 CDE92E89 		strd	r8, [sp, #184]
 1462              	.L153:
 1463 047c 0C9B     		ldr	r3, [sp, #48]
 1464 047e C3E90245 		strd	r4, [r3, #8]
 1465 0482 2833     		adds	r3, r3, #40
 1466 0484 0C93     		str	r3, [sp, #48]
 1467 0486 149B     		ldr	r3, [sp, #80]
 1468 0488 0BF1080B 		add	fp, fp, #8
 1469 048c 9B45     		cmp	fp, r3
 1470 048e 96D1     		bne	.L155
 1471              	.L149:
 1472 0490 1A9B     		ldr	r3, [sp, #104]
 1473 0492 33B1     		cbz	r3, .L156
 1474 0494 119A     		ldr	r2, [sp, #68]
 1475 0496 1099     		ldr	r1, [sp, #64]
 1476 0498 6048     		ldr	r0, .L231+12
 1477 049a 1346     		mov	r3, r2
 1478 049c 0133     		adds	r3, r3, #1
 1479 049e FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 1480              	.L156:
 1481 04a2 8AA9     		add	r1, sp, #552
 1482 04a4 DDE91002 		ldrd	r0, r2, [sp, #64]
ARM GAS  /tmp/cckO1lQe.s 			page 27


 1483 04a8 FFF7FEFF 		bl	_ZN11FixedMatrixIdLj4ELj5EE11GaussJordanEPdj
 1484 04ac 309B     		ldr	r3, [sp, #192]
 1485 04ae 9B6C     		ldr	r3, [r3, #72]
 1486 04b0 13F01003 		ands	r3, r3, #16
 1487 04b4 0893     		str	r3, [sp, #32]
 1488 04b6 40F0B785 		bne	.L224
 1489 04ba 059B     		ldr	r3, [sp, #20]
 1490 04bc 002B     		cmp	r3, #0
 1491 04be 00F03986 		beq	.L225
 1492              	.L179:
 1493 04c2 9FED537B 		vldr.64	d7, .L231
 1494 04c6 319B     		ldr	r3, [sp, #196]
 1495 04c8 8DED067B 		vstr.64	d7, [sp, #24]
 1496 04cc 03F5827B 		add	fp, r3, #260
 1497 04d0 119B     		ldr	r3, [sp, #68]
 1498 04d2 8AAA     		add	r2, sp, #552
 1499 04d4 0DF53C7A 		add	r10, sp, #752
 1500 04d8 02EBC308 		add	r8, r2, r3, lsl #3
 1501 04dc 4FF00009 		mov	r9, #0
 1502              	.L162:
 1503 04e0 5BF8040B 		ldr	r0, [fp], #4	@ float
 1504 04e4 FFF7FEFF 		bl	__aeabi_f2d
 1505 04e8 119B     		ldr	r3, [sp, #68]
 1506 04ea 0646     		mov	r6, r0
 1507 04ec 0F46     		mov	r7, r1
 1508 04ee EAE80267 		strd	r6, [r10], #8
 1509 04f2 ABB1     		cbz	r3, .L159
 1510 04f4 FEAB     		add	r3, sp, #1016
 1511 04f6 03EB4915 		add	r5, r3, r9, lsl #5
 1512 04fa 8AAC     		add	r4, sp, #552
 1513              	.L160:
 1514 04fc F5E80223 		ldrd	r2, [r5], #8
 1515 0500 F4E80201 		ldrd	r0, [r4], #8
 1516 0504 FFF7FEFF 		bl	__aeabi_dmul
 1517 0508 0246     		mov	r2, r0
 1518 050a 0B46     		mov	r3, r1
 1519 050c 3046     		mov	r0, r6
 1520 050e 3946     		mov	r1, r7
 1521 0510 FFF7FEFF 		bl	__aeabi_dadd
 1522 0514 A045     		cmp	r8, r4
 1523 0516 0646     		mov	r6, r0
 1524 0518 0F46     		mov	r7, r1
 1525 051a EFD1     		bne	.L160
 1526 051c 4AE90267 		strd	r6, [r10, #-8]
 1527              	.L159:
 1528 0520 3246     		mov	r2, r6
 1529 0522 3B46     		mov	r3, r7
 1530 0524 3046     		mov	r0, r6
 1531 0526 3946     		mov	r1, r7
 1532 0528 FFF7FEFF 		bl	__aeabi_dmul
 1533 052c 0B46     		mov	r3, r1
 1534 052e 0246     		mov	r2, r0
 1535 0530 DDE90601 		ldrd	r0, [sp, #24]
 1536 0534 FFF7FEFF 		bl	__aeabi_dadd
 1537 0538 059B     		ldr	r3, [sp, #20]
 1538 053a 09F10109 		add	r9, r9, #1
 1539 053e 4B45     		cmp	r3, r9
ARM GAS  /tmp/cckO1lQe.s 			page 28


 1540 0540 CDE90601 		strd	r0, [sp, #24]
 1541 0544 CCD8     		bhi	.L162
 1542              	.L161:
 1543 0546 089B     		ldr	r3, [sp, #32]
 1544 0548 23B1     		cbz	r3, .L221
 1545 054a 059A     		ldr	r2, [sp, #20]
 1546 054c 3448     		ldr	r0, .L231+16
 1547 054e BCA9     		add	r1, sp, #752
 1548 0550 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 1549              	.L221:
 1550 0554 119B     		ldr	r3, [sp, #68]
 1551 0556 002B     		cmp	r3, #0
 1552 0558 00F01685 		beq	.L164
 1553 055c 4FF00008 		mov	r8, #0
 1554 0560 DDF824A2 		ldr	r10, [sp, #548]
 1555 0564 DDF844B0 		ldr	fp, [sp, #68]
 1556 0568 C146     		mov	r9, r8
 1557 056a 4646     		mov	r6, r8
 1558 056c 8AAF     		add	r7, sp, #552
 1559              	.L167:
 1560 056e F7E80245 		ldrd	r4, [r7], #8
 1561 0572 2246     		mov	r2, r4
 1562 0574 2B46     		mov	r3, r5
 1563 0576 2046     		mov	r0, r4
 1564 0578 2946     		mov	r1, r5
 1565 057a FFF7FEFF 		bl	__aeabi_dcmpun
 1566 057e 0028     		cmp	r0, #0
 1567 0580 40F0FE84 		bne	.L182
 1568 0584 DAF83400 		ldr	r0, [r10, #52]	@ float
 1569 0588 FFF7FEFF 		bl	__aeabi_f2d
 1570 058c 2246     		mov	r2, r4
 1571 058e 2B46     		mov	r3, r5
 1572 0590 FFF7FEFF 		bl	__aeabi_dmul
 1573 0594 47E90201 		strd	r0, [r7, #-8]
 1574 0598 FFF7FEFF 		bl	__aeabi_d2f
 1575 059c 07EE100A 		vmov	s14, r0
 1576 05a0 DAED0E7A 		vldr.32	s15, [r10, #56]
 1577 05a4 B0EEC77A 		vabs.f32	s14, s14
 1578 05a8 B4EE677A 		vcmp.f32	s14, s15
 1579 05ac F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1580 05b0 C8BF     		it	gt
 1581 05b2 4FF00108 		movgt	r8, #1
 1582              	.L166:
 1583 05b6 0136     		adds	r6, r6, #1
 1584 05b8 B345     		cmp	fp, r6
 1585 05ba D8D8     		bhi	.L167
 1586 05bc B9F1000F 		cmp	r9, #0
 1587 05c0 40F0CD84 		bne	.L226
 1588 05c4 309B     		ldr	r3, [sp, #192]
 1589 05c6 899C     		ldr	r4, [sp, #548]
 1590 05c8 1A68     		ldr	r2, [r3]
 1591 05ca 2369     		ldr	r3, [r4, #16]
 1592 05cc D2F80823 		ldr	r2, [r2, #776]
 1593 05d0 9A42     		cmp	r2, r3
 1594 05d2 40F0E184 		bne	.L170
 1595 05d6 B8F1000F 		cmp	r8, #0
 1596 05da 00F05085 		beq	.L171
ARM GAS  /tmp/cckO1lQe.s 			page 29


 1597 05de A06B     		ldr	r0, [r4, #56]	@ float
 1598 05e0 FFF7FEFF 		bl	__aeabi_f2d
 1599 05e4 889D     		ldr	r5, [sp, #544]
 1600 05e6 0B46     		mov	r3, r1
 1601 05e8 0246     		mov	r2, r0
 1602 05ea 0E49     		ldr	r1, .L231+20
 1603 05ec 2846     		mov	r0, r5
 1604 05ee FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1605 05f2 2046     		mov	r0, r4
 1606 05f4 2A46     		mov	r2, r5
 1607 05f6 8AA9     		add	r1, sp, #552
 1608 05f8 FFF7FEFF 		bl	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef
 1609 05fc C146     		mov	r9, r8
 1610 05fe 4846     		mov	r0, r9
 1611 0600 0DF2FC7D 		addw	sp, sp, #2044
 1612              		@ sp needed
 1613 0604 BDEC0E8B 		vldm	sp!, {d8-d14}
 1614 0608 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1615              	.L232:
 1616 060c AFF30080 		.align	3
 1617              	.L231:
 1618 0610 00000000 		.word	0
 1619 0614 00000000 		.word	0
 1620 0618 08000000 		.word	_ZTV11FixedMatrixIdLj4ELj5EE+8
 1621 061c 20000000 		.word	.LC6
 1622 0620 4C000000 		.word	.LC9
 1623 0624 84000000 		.word	.LC11
 1624              	.L145:
 1625 0628 98ED05CA 		vldr.32	s24, [r8, #20]
 1626 062c D8ED06BA 		vldr.32	s23, [r8, #24]
 1627 0630 6CEE2B7A 		vmul.f32	s15, s24, s23
 1628 0634 17EE900A 		vmov	r0, s15
 1629 0638 FFF7FEFF 		bl	__aeabi_f2d
 1630 063c 98ED07BA 		vldr.32	s22, [r8, #28]
 1631 0640 6CEE0B7A 		vmul.f32	s15, s24, s22
 1632 0644 CDE90601 		strd	r0, [sp, #24]
 1633 0648 17EE900A 		vmov	r0, s15
 1634 064c FFF7FEFF 		bl	__aeabi_f2d
 1635 0650 D8ED08AA 		vldr.32	s21, [r8, #32]
 1636 0654 6CEE2A7A 		vmul.f32	s15, s24, s21
 1637 0658 CDE90801 		strd	r0, [sp, #32]
 1638 065c 17EE900A 		vmov	r0, s15
 1639 0660 FFF7FEFF 		bl	__aeabi_f2d
 1640 0664 6BEE8B7A 		vmul.f32	s15, s23, s22
 1641 0668 CDE90A01 		strd	r0, [sp, #40]
 1642 066c 17EE900A 		vmov	r0, s15
 1643 0670 FFF7FEFF 		bl	__aeabi_f2d
 1644 0674 6BEEAA7A 		vmul.f32	s15, s23, s21
 1645 0678 CDE90C01 		strd	r0, [sp, #48]
 1646 067c 17EE900A 		vmov	r0, s15
 1647 0680 FFF7FEFF 		bl	__aeabi_f2d
 1648 0684 6BEE2A7A 		vmul.f32	s15, s22, s21
 1649 0688 0646     		mov	r6, r0
 1650 068a 17EE900A 		vmov	r0, s15
 1651 068e 0F46     		mov	r7, r1
 1652 0690 FFF7FEFF 		bl	__aeabi_f2d
 1653 0694 98ED09AA 		vldr.32	s20, [r8, #36]
ARM GAS  /tmp/cckO1lQe.s 			page 30


 1654 0698 D8ED0A9A 		vldr.32	s19, [r8, #40]
 1655 069c 6AEE297A 		vmul.f32	s15, s20, s19
 1656 06a0 0446     		mov	r4, r0
 1657 06a2 17EE900A 		vmov	r0, s15
 1658 06a6 0D46     		mov	r5, r1
 1659 06a8 FFF7FEFF 		bl	__aeabi_f2d
 1660 06ac 98ED0B9A 		vldr.32	s18, [r8, #44]
 1661 06b0 6AEE097A 		vmul.f32	s15, s20, s18
 1662 06b4 CDE91201 		strd	r0, [sp, #72]
 1663 06b8 17EE900A 		vmov	r0, s15
 1664 06bc FFF7FEFF 		bl	__aeabi_f2d
 1665 06c0 D8ED0C8A 		vldr.32	s17, [r8, #48]
 1666 06c4 6AEE287A 		vmul.f32	s15, s20, s17
 1667 06c8 CDE91401 		strd	r0, [sp, #80]
 1668 06cc 17EE900A 		vmov	r0, s15
 1669 06d0 FFF7FEFF 		bl	__aeabi_f2d
 1670 06d4 69EE897A 		vmul.f32	s15, s19, s18
 1671 06d8 CDE91601 		strd	r0, [sp, #88]
 1672 06dc 17EE900A 		vmov	r0, s15
 1673 06e0 FFF7FEFF 		bl	__aeabi_f2d
 1674 06e4 69EEA87A 		vmul.f32	s15, s19, s17
 1675 06e8 CDE91801 		strd	r0, [sp, #96]
 1676 06ec 17EE900A 		vmov	r0, s15
 1677 06f0 FFF7FEFF 		bl	__aeabi_f2d
 1678 06f4 69EE287A 		vmul.f32	s15, s18, s17
 1679 06f8 CDE91A01 		strd	r0, [sp, #104]
 1680 06fc 17EE900A 		vmov	r0, s15
 1681 0700 FFF7FEFF 		bl	__aeabi_f2d
 1682 0704 0246     		mov	r2, r0
 1683 0706 0B46     		mov	r3, r1
 1684 0708 3046     		mov	r0, r6
 1685 070a 3946     		mov	r1, r7
 1686 070c CDE92A23 		strd	r2, [sp, #168]
 1687 0710 FFF7FEFF 		bl	__aeabi_dmul
 1688 0714 DDE92A23 		ldrd	r2, [sp, #168]
 1689 0718 CDE93C01 		strd	r0, [sp, #240]
 1690 071c DDE90A01 		ldrd	r0, [sp, #40]
 1691 0720 FFF7FEFF 		bl	__aeabi_dmul
 1692 0724 DDE92A23 		ldrd	r2, [sp, #168]
 1693 0728 CDE93E01 		strd	r0, [sp, #248]
 1694 072c DDE90C01 		ldrd	r0, [sp, #48]
 1695 0730 FFF7FEFF 		bl	__aeabi_dmul
 1696 0734 DDE92A23 		ldrd	r2, [sp, #168]
 1697 0738 CDE94001 		strd	r0, [sp, #256]
 1698 073c DDE90801 		ldrd	r0, [sp, #32]
 1699 0740 FFF7FEFF 		bl	__aeabi_dmul
 1700 0744 DDE91A23 		ldrd	r2, [sp, #104]
 1701 0748 CDE94201 		strd	r0, [sp, #264]
 1702 074c 2046     		mov	r0, r4
 1703 074e 2946     		mov	r1, r5
 1704 0750 FFF7FEFF 		bl	__aeabi_dmul
 1705 0754 DDE91A23 		ldrd	r2, [sp, #104]
 1706 0758 CDE94401 		strd	r0, [sp, #272]
 1707 075c DDE90A01 		ldrd	r0, [sp, #40]
 1708 0760 FFF7FEFF 		bl	__aeabi_dmul
 1709 0764 DDE91A23 		ldrd	r2, [sp, #104]
 1710 0768 CDE94601 		strd	r0, [sp, #280]
ARM GAS  /tmp/cckO1lQe.s 			page 31


 1711 076c DDE90C01 		ldrd	r0, [sp, #48]
 1712 0770 FFF7FEFF 		bl	__aeabi_dmul
 1713 0774 DDE91A23 		ldrd	r2, [sp, #104]
 1714 0778 CDE94801 		strd	r0, [sp, #288]
 1715 077c DDE90601 		ldrd	r0, [sp, #24]
 1716 0780 FFF7FEFF 		bl	__aeabi_dmul
 1717 0784 DDE91623 		ldrd	r2, [sp, #88]
 1718 0788 CDE94A01 		strd	r0, [sp, #296]
 1719 078c 2046     		mov	r0, r4
 1720 078e 2946     		mov	r1, r5
 1721 0790 FFF7FEFF 		bl	__aeabi_dmul
 1722 0794 DDE91623 		ldrd	r2, [sp, #88]
 1723 0798 CDE94C01 		strd	r0, [sp, #304]
 1724 079c 3046     		mov	r0, r6
 1725 079e 3946     		mov	r1, r7
 1726 07a0 FFF7FEFF 		bl	__aeabi_dmul
 1727 07a4 DDE91623 		ldrd	r2, [sp, #88]
 1728 07a8 CDE94E01 		strd	r0, [sp, #312]
 1729 07ac DDE90801 		ldrd	r0, [sp, #32]
 1730 07b0 FFF7FEFF 		bl	__aeabi_dmul
 1731 07b4 DDE91623 		ldrd	r2, [sp, #88]
 1732 07b8 CDE95001 		strd	r0, [sp, #320]
 1733 07bc DDE90601 		ldrd	r0, [sp, #24]
 1734 07c0 FFF7FEFF 		bl	__aeabi_dmul
 1735 07c4 DDE91823 		ldrd	r2, [sp, #96]
 1736 07c8 CDE95201 		strd	r0, [sp, #328]
 1737 07cc 2046     		mov	r0, r4
 1738 07ce 2946     		mov	r1, r5
 1739 07d0 FFF7FEFF 		bl	__aeabi_dmul
 1740 07d4 DDE91823 		ldrd	r2, [sp, #96]
 1741 07d8 CDE95401 		strd	r0, [sp, #336]
 1742 07dc 3046     		mov	r0, r6
 1743 07de 3946     		mov	r1, r7
 1744 07e0 FFF7FEFF 		bl	__aeabi_dmul
 1745 07e4 DDE91823 		ldrd	r2, [sp, #96]
 1746 07e8 CDE95601 		strd	r0, [sp, #344]
 1747 07ec DDE90801 		ldrd	r0, [sp, #32]
 1748 07f0 FFF7FEFF 		bl	__aeabi_dmul
 1749 07f4 DDE91823 		ldrd	r2, [sp, #96]
 1750 07f8 CDE95801 		strd	r0, [sp, #352]
 1751 07fc DDE90601 		ldrd	r0, [sp, #24]
 1752 0800 FFF7FEFF 		bl	__aeabi_dmul
 1753 0804 DDE91423 		ldrd	r2, [sp, #80]
 1754 0808 CDE95A01 		strd	r0, [sp, #360]
 1755 080c 2046     		mov	r0, r4
 1756 080e 2946     		mov	r1, r5
 1757 0810 FFF7FEFF 		bl	__aeabi_dmul
 1758 0814 DDE91423 		ldrd	r2, [sp, #80]
 1759 0818 CDE95C01 		strd	r0, [sp, #368]
 1760 081c DDE90A01 		ldrd	r0, [sp, #40]
 1761 0820 FFF7FEFF 		bl	__aeabi_dmul
 1762 0824 DDE91423 		ldrd	r2, [sp, #80]
 1763 0828 CDE95E01 		strd	r0, [sp, #376]
 1764 082c DDE90C01 		ldrd	r0, [sp, #48]
 1765 0830 FFF7FEFF 		bl	__aeabi_dmul
 1766 0834 DDE91423 		ldrd	r2, [sp, #80]
 1767 0838 CDE96001 		strd	r0, [sp, #384]
ARM GAS  /tmp/cckO1lQe.s 			page 32


 1768 083c DDE90601 		ldrd	r0, [sp, #24]
 1769 0840 FFF7FEFF 		bl	__aeabi_dmul
 1770 0844 DDE91223 		ldrd	r2, [sp, #72]
 1771 0848 CDE96201 		strd	r0, [sp, #392]
 1772 084c 3046     		mov	r0, r6
 1773 084e 3946     		mov	r1, r7
 1774 0850 FFF7FEFF 		bl	__aeabi_dmul
 1775 0854 DDE91223 		ldrd	r2, [sp, #72]
 1776 0858 CDE96401 		strd	r0, [sp, #400]
 1777 085c DDE90A01 		ldrd	r0, [sp, #40]
 1778 0860 FFF7FEFF 		bl	__aeabi_dmul
 1779 0864 DDE91223 		ldrd	r2, [sp, #72]
 1780 0868 CDE96601 		strd	r0, [sp, #408]
 1781 086c DDE90C01 		ldrd	r0, [sp, #48]
 1782 0870 FFF7FEFF 		bl	__aeabi_dmul
 1783 0874 DDE91223 		ldrd	r2, [sp, #72]
 1784 0878 CDE96801 		strd	r0, [sp, #416]
 1785 087c DDE90801 		ldrd	r0, [sp, #32]
 1786 0880 FFF7FEFF 		bl	__aeabi_dmul
 1787 0884 DDE93E23 		ldrd	r2, [sp, #248]
 1788 0888 CDE96A01 		strd	r0, [sp, #424]
 1789 088c DDE93C01 		ldrd	r0, [sp, #240]
 1790 0890 FFF7FEFF 		bl	__aeabi_dsub
 1791 0894 DDE94023 		ldrd	r2, [sp, #256]
 1792 0898 FFF7FEFF 		bl	__aeabi_dsub
 1793 089c DDE94223 		ldrd	r2, [sp, #264]
 1794 08a0 FFF7FEFF 		bl	__aeabi_dadd
 1795 08a4 DDE94423 		ldrd	r2, [sp, #272]
 1796 08a8 FFF7FEFF 		bl	__aeabi_dsub
 1797 08ac DDE94623 		ldrd	r2, [sp, #280]
 1798 08b0 FFF7FEFF 		bl	__aeabi_dadd
 1799 08b4 DDE94823 		ldrd	r2, [sp, #288]
 1800 08b8 FFF7FEFF 		bl	__aeabi_dadd
 1801 08bc DDE94A23 		ldrd	r2, [sp, #296]
 1802 08c0 FFF7FEFF 		bl	__aeabi_dsub
 1803 08c4 DDE94C23 		ldrd	r2, [sp, #304]
 1804 08c8 FFF7FEFF 		bl	__aeabi_dadd
 1805 08cc DDE94E23 		ldrd	r2, [sp, #312]
 1806 08d0 FFF7FEFF 		bl	__aeabi_dsub
 1807 08d4 DDE95023 		ldrd	r2, [sp, #320]
 1808 08d8 FFF7FEFF 		bl	__aeabi_dsub
 1809 08dc DDE95223 		ldrd	r2, [sp, #328]
 1810 08e0 FFF7FEFF 		bl	__aeabi_dadd
 1811 08e4 DDE95423 		ldrd	r2, [sp, #336]
 1812 08e8 FFF7FEFF 		bl	__aeabi_dadd
 1813 08ec DDE95623 		ldrd	r2, [sp, #344]
 1814 08f0 FFF7FEFF 		bl	__aeabi_dsub
 1815 08f4 DDE95823 		ldrd	r2, [sp, #352]
 1816 08f8 FFF7FEFF 		bl	__aeabi_dsub
 1817 08fc DDE95A23 		ldrd	r2, [sp, #360]
 1818 0900 FFF7FEFF 		bl	__aeabi_dadd
 1819 0904 DDE95C23 		ldrd	r2, [sp, #368]
 1820 0908 FFF7FEFF 		bl	__aeabi_dsub
 1821 090c DDE95E23 		ldrd	r2, [sp, #376]
 1822 0910 FFF7FEFF 		bl	__aeabi_dadd
 1823 0914 DDE96023 		ldrd	r2, [sp, #384]
 1824 0918 FFF7FEFF 		bl	__aeabi_dadd
ARM GAS  /tmp/cckO1lQe.s 			page 33


 1825 091c DDE96223 		ldrd	r2, [sp, #392]
 1826 0920 FFF7FEFF 		bl	__aeabi_dsub
 1827 0924 DDE96423 		ldrd	r2, [sp, #400]
 1828 0928 FFF7FEFF 		bl	__aeabi_dadd
 1829 092c DDE96623 		ldrd	r2, [sp, #408]
 1830 0930 FFF7FEFF 		bl	__aeabi_dsub
 1831 0934 DDE96823 		ldrd	r2, [sp, #416]
 1832 0938 FFF7FEFF 		bl	__aeabi_dsub
 1833 093c DDE96A23 		ldrd	r2, [sp, #424]
 1834 0940 FFF7FEFF 		bl	__aeabi_dadd
 1835 0944 109B     		ldr	r3, [sp, #64]
 1836 0946 93ED008A 		vldr.32	s16, [r3]
 1837 094a 6CEE087A 		vmul.f32	s15, s24, s16
 1838 094e CDE93201 		strd	r0, [sp, #200]
 1839 0952 17EE900A 		vmov	r0, s15
 1840 0956 FFF7FEFF 		bl	__aeabi_f2d
 1841 095a 6BEE887A 		vmul.f32	s15, s23, s16
 1842 095e CDE91C01 		strd	r0, [sp, #112]
 1843 0962 17EE900A 		vmov	r0, s15
 1844 0966 FFF7FEFF 		bl	__aeabi_f2d
 1845 096a 6BEE087A 		vmul.f32	s15, s22, s16
 1846 096e CDE91E01 		strd	r0, [sp, #120]
 1847 0972 17EE900A 		vmov	r0, s15
 1848 0976 FFF7FEFF 		bl	__aeabi_f2d
 1849 097a 6AEE887A 		vmul.f32	s15, s21, s16
 1850 097e CDE92001 		strd	r0, [sp, #128]
 1851 0982 17EE900A 		vmov	r0, s15
 1852 0986 FFF7FEFF 		bl	__aeabi_f2d
 1853 098a 9DEDBC8A 		vldr.32	s16, [sp, #752]
 1854 098e 6AEE087A 		vmul.f32	s15, s20, s16
 1855 0992 CDE92201 		strd	r0, [sp, #136]
 1856 0996 17EE900A 		vmov	r0, s15
 1857 099a FFF7FEFF 		bl	__aeabi_f2d
 1858 099e 69EE887A 		vmul.f32	s15, s19, s16
 1859 09a2 CDE92401 		strd	r0, [sp, #144]
 1860 09a6 17EE900A 		vmov	r0, s15
 1861 09aa FFF7FEFF 		bl	__aeabi_f2d
 1862 09ae 69EE087A 		vmul.f32	s15, s18, s16
 1863 09b2 CDE92C01 		strd	r0, [sp, #176]
 1864 09b6 17EE900A 		vmov	r0, s15
 1865 09ba FFF7FEFF 		bl	__aeabi_f2d
 1866 09be 68EE887A 		vmul.f32	s15, s17, s16
 1867 09c2 CDE92601 		strd	r0, [sp, #152]
 1868 09c6 17EE900A 		vmov	r0, s15
 1869 09ca FFF7FEFF 		bl	__aeabi_f2d
 1870 09ce DDE92223 		ldrd	r2, [sp, #136]
 1871 09d2 CDE92801 		strd	r0, [sp, #160]
 1872 09d6 DDE92A01 		ldrd	r0, [sp, #168]
 1873 09da FFF7FEFF 		bl	__aeabi_dmul
 1874 09de DDE92023 		ldrd	r2, [sp, #128]
 1875 09e2 CDE96C01 		strd	r0, [sp, #432]
 1876 09e6 DDE92A01 		ldrd	r0, [sp, #168]
 1877 09ea FFF7FEFF 		bl	__aeabi_dmul
 1878 09ee DDE92223 		ldrd	r2, [sp, #136]
 1879 09f2 CDE92A01 		strd	r0, [sp, #168]
 1880 09f6 DDE91A01 		ldrd	r0, [sp, #104]
 1881 09fa FFF7FEFF 		bl	__aeabi_dmul
ARM GAS  /tmp/cckO1lQe.s 			page 34


 1882 09fe DDE91E23 		ldrd	r2, [sp, #120]
 1883 0a02 CDE96E01 		strd	r0, [sp, #440]
 1884 0a06 DDE91A01 		ldrd	r0, [sp, #104]
 1885 0a0a FFF7FEFF 		bl	__aeabi_dmul
 1886 0a0e DDE92823 		ldrd	r2, [sp, #160]
 1887 0a12 CDE91A01 		strd	r0, [sp, #104]
 1888 0a16 2046     		mov	r0, r4
 1889 0a18 2946     		mov	r1, r5
 1890 0a1a FFF7FEFF 		bl	__aeabi_dmul
 1891 0a1e DDE92823 		ldrd	r2, [sp, #160]
 1892 0a22 CDE97001 		strd	r0, [sp, #448]
 1893 0a26 3046     		mov	r0, r6
 1894 0a28 3946     		mov	r1, r7
 1895 0a2a FFF7FEFF 		bl	__aeabi_dmul
 1896 0a2e CDE97201 		strd	r0, [sp, #456]
 1897 0a32 DDE92823 		ldrd	r2, [sp, #160]
 1898 0a36 DDE92001 		ldrd	r0, [sp, #128]
 1899 0a3a FFF7FEFF 		bl	__aeabi_dmul
 1900 0a3e DDE92823 		ldrd	r2, [sp, #160]
 1901 0a42 CDE97401 		strd	r0, [sp, #464]
 1902 0a46 DDE91E01 		ldrd	r0, [sp, #120]
 1903 0a4a FFF7FEFF 		bl	__aeabi_dmul
 1904 0a4e DDE92023 		ldrd	r2, [sp, #128]
 1905 0a52 CDE97601 		strd	r0, [sp, #472]
 1906 0a56 DDE91801 		ldrd	r0, [sp, #96]
 1907 0a5a FFF7FEFF 		bl	__aeabi_dmul
 1908 0a5e DDE91E23 		ldrd	r2, [sp, #120]
 1909 0a62 CDE97801 		strd	r0, [sp, #480]
 1910 0a66 DDE91801 		ldrd	r0, [sp, #96]
 1911 0a6a FFF7FEFF 		bl	__aeabi_dmul
 1912 0a6e DDE92623 		ldrd	r2, [sp, #152]
 1913 0a72 CDE91801 		strd	r0, [sp, #96]
 1914 0a76 2046     		mov	r0, r4
 1915 0a78 2946     		mov	r1, r5
 1916 0a7a FFF7FEFF 		bl	__aeabi_dmul
 1917 0a7e DDE92623 		ldrd	r2, [sp, #152]
 1918 0a82 0446     		mov	r4, r0
 1919 0a84 0D46     		mov	r5, r1
 1920 0a86 DDE92201 		ldrd	r0, [sp, #136]
 1921 0a8a FFF7FEFF 		bl	__aeabi_dmul
 1922 0a8e DDE92623 		ldrd	r2, [sp, #152]
 1923 0a92 CDE97A01 		strd	r0, [sp, #488]
 1924 0a96 DDE90C01 		ldrd	r0, [sp, #48]
 1925 0a9a FFF7FEFF 		bl	__aeabi_dmul
 1926 0a9e DDE92623 		ldrd	r2, [sp, #152]
 1927 0aa2 CDE97C01 		strd	r0, [sp, #496]
 1928 0aa6 DDE91E01 		ldrd	r0, [sp, #120]
 1929 0aaa FFF7FEFF 		bl	__aeabi_dmul
 1930 0aae DDE92C23 		ldrd	r2, [sp, #176]
 1931 0ab2 CDE97E01 		strd	r0, [sp, #504]
 1932 0ab6 3046     		mov	r0, r6
 1933 0ab8 3946     		mov	r1, r7
 1934 0aba FFF7FEFF 		bl	__aeabi_dmul
 1935 0abe DDE92C67 		ldrd	r6, [sp, #176]
 1936 0ac2 CDE98001 		strd	r0, [sp, #512]
 1937 0ac6 3246     		mov	r2, r6
 1938 0ac8 3B46     		mov	r3, r7
ARM GAS  /tmp/cckO1lQe.s 			page 35


 1939 0aca DDE92201 		ldrd	r0, [sp, #136]
 1940 0ace FFF7FEFF 		bl	__aeabi_dmul
 1941 0ad2 3246     		mov	r2, r6
 1942 0ad4 3B46     		mov	r3, r7
 1943 0ad6 CDE98201 		strd	r0, [sp, #520]
 1944 0ada DDE90C01 		ldrd	r0, [sp, #48]
 1945 0ade FFF7FEFF 		bl	__aeabi_dmul
 1946 0ae2 CDE92C67 		strd	r6, [sp, #176]
 1947 0ae6 3246     		mov	r2, r6
 1948 0ae8 3B46     		mov	r3, r7
 1949 0aea CDE90C01 		strd	r0, [sp, #48]
 1950 0aee DDE92001 		ldrd	r0, [sp, #128]
 1951 0af2 FFF7FEFF 		bl	__aeabi_dmul
 1952 0af6 DDE96C23 		ldrd	r2, [sp, #432]
 1953 0afa 0646     		mov	r6, r0
 1954 0afc 0F46     		mov	r7, r1
 1955 0afe DDE93C01 		ldrd	r0, [sp, #240]
 1956 0b02 FFF7FEFF 		bl	__aeabi_dsub
 1957 0b06 DDE94023 		ldrd	r2, [sp, #256]
 1958 0b0a FFF7FEFF 		bl	__aeabi_dsub
 1959 0b0e DDE92A23 		ldrd	r2, [sp, #168]
 1960 0b12 FFF7FEFF 		bl	__aeabi_dadd
 1961 0b16 DDE94423 		ldrd	r2, [sp, #272]
 1962 0b1a FFF7FEFF 		bl	__aeabi_dsub
 1963 0b1e DDE96E23 		ldrd	r2, [sp, #440]
 1964 0b22 FFF7FEFF 		bl	__aeabi_dadd
 1965 0b26 DDE94823 		ldrd	r2, [sp, #288]
 1966 0b2a FFF7FEFF 		bl	__aeabi_dadd
 1967 0b2e DDE91A23 		ldrd	r2, [sp, #104]
 1968 0b32 FFF7FEFF 		bl	__aeabi_dsub
 1969 0b36 DDE97023 		ldrd	r2, [sp, #448]
 1970 0b3a FFF7FEFF 		bl	__aeabi_dadd
 1971 0b3e DDE97223 		ldrd	r2, [sp, #456]
 1972 0b42 FFF7FEFF 		bl	__aeabi_dsub
 1973 0b46 DDE97423 		ldrd	r2, [sp, #464]
 1974 0b4a FFF7FEFF 		bl	__aeabi_dsub
 1975 0b4e DDE97623 		ldrd	r2, [sp, #472]
 1976 0b52 FFF7FEFF 		bl	__aeabi_dadd
 1977 0b56 DDE95423 		ldrd	r2, [sp, #336]
 1978 0b5a FFF7FEFF 		bl	__aeabi_dadd
 1979 0b5e DDE95623 		ldrd	r2, [sp, #344]
 1980 0b62 FFF7FEFF 		bl	__aeabi_dsub
 1981 0b66 DDE97823 		ldrd	r2, [sp, #480]
 1982 0b6a FFF7FEFF 		bl	__aeabi_dsub
 1983 0b6e DDE91823 		ldrd	r2, [sp, #96]
 1984 0b72 FFF7FEFF 		bl	__aeabi_dadd
 1985 0b76 2246     		mov	r2, r4
 1986 0b78 2B46     		mov	r3, r5
 1987 0b7a FFF7FEFF 		bl	__aeabi_dsub
 1988 0b7e DDE97A23 		ldrd	r2, [sp, #488]
 1989 0b82 FFF7FEFF 		bl	__aeabi_dadd
 1990 0b86 DDE97C23 		ldrd	r2, [sp, #496]
 1991 0b8a FFF7FEFF 		bl	__aeabi_dadd
 1992 0b8e DDE97E23 		ldrd	r2, [sp, #504]
 1993 0b92 FFF7FEFF 		bl	__aeabi_dsub
 1994 0b96 DDE98023 		ldrd	r2, [sp, #512]
 1995 0b9a FFF7FEFF 		bl	__aeabi_dadd
ARM GAS  /tmp/cckO1lQe.s 			page 36


 1996 0b9e DDE98223 		ldrd	r2, [sp, #520]
 1997 0ba2 FFF7FEFF 		bl	__aeabi_dsub
 1998 0ba6 DDE90C23 		ldrd	r2, [sp, #48]
 1999 0baa FFF7FEFF 		bl	__aeabi_dsub
 2000 0bae 3246     		mov	r2, r6
 2001 0bb0 3B46     		mov	r3, r7
 2002 0bb2 CDE94867 		strd	r6, [sp, #288]
 2003 0bb6 FFF7FEFF 		bl	__aeabi_dadd
 2004 0bba 01F10043 		add	r3, r1, #-2147483648
 2005 0bbe 8593     		str	r3, [sp, #532]
 2006 0bc0 8490     		str	r0, [sp, #528]
 2007 0bc2 DDE93223 		ldrd	r2, [sp, #200]
 2008 0bc6 DDE98401 		ldrd	r0, [sp, #528]
 2009 0bca FFF7FEFF 		bl	__aeabi_ddiv
 2010 0bce DDE92223 		ldrd	r2, [sp, #136]
 2011 0bd2 CAE90201 		strd	r0, [r10, #8]
 2012 0bd6 DDE91601 		ldrd	r0, [sp, #88]
 2013 0bda FFF7FEFF 		bl	__aeabi_dmul
 2014 0bde DDE91C23 		ldrd	r2, [sp, #112]
 2015 0be2 0646     		mov	r6, r0
 2016 0be4 0F46     		mov	r7, r1
 2017 0be6 DDE91601 		ldrd	r0, [sp, #88]
 2018 0bea FFF7FEFF 		bl	__aeabi_dmul
 2019 0bee DDE92823 		ldrd	r2, [sp, #160]
 2020 0bf2 CDE91601 		strd	r0, [sp, #88]
 2021 0bf6 DDE90A01 		ldrd	r0, [sp, #40]
 2022 0bfa FFF7FEFF 		bl	__aeabi_dmul
 2023 0bfe DDE92823 		ldrd	r2, [sp, #160]
 2024 0c02 CDE93C01 		strd	r0, [sp, #240]
 2025 0c06 DDE91C01 		ldrd	r0, [sp, #112]
 2026 0c0a FFF7FEFF 		bl	__aeabi_dmul
 2027 0c0e DDE92023 		ldrd	r2, [sp, #128]
 2028 0c12 CDE92801 		strd	r0, [sp, #160]
 2029 0c16 DDE91401 		ldrd	r0, [sp, #80]
 2030 0c1a FFF7FEFF 		bl	__aeabi_dmul
 2031 0c1e DDE91C23 		ldrd	r2, [sp, #112]
 2032 0c22 CDE94001 		strd	r0, [sp, #256]
 2033 0c26 DDE91401 		ldrd	r0, [sp, #80]
 2034 0c2a FFF7FEFF 		bl	__aeabi_dmul
 2035 0c2e DDE92623 		ldrd	r2, [sp, #152]
 2036 0c32 CDE91401 		strd	r0, [sp, #80]
 2037 0c36 DDE90801 		ldrd	r0, [sp, #32]
 2038 0c3a FFF7FEFF 		bl	__aeabi_dmul
 2039 0c3e DDE92623 		ldrd	r2, [sp, #152]
 2040 0c42 CDE94401 		strd	r0, [sp, #272]
 2041 0c46 DDE91C01 		ldrd	r0, [sp, #112]
 2042 0c4a FFF7FEFF 		bl	__aeabi_dmul
 2043 0c4e DDE92423 		ldrd	r2, [sp, #144]
 2044 0c52 CDE92601 		strd	r0, [sp, #152]
 2045 0c56 DDE90A01 		ldrd	r0, [sp, #40]
 2046 0c5a FFF7FEFF 		bl	__aeabi_dmul
 2047 0c5e DDE92423 		ldrd	r2, [sp, #144]
 2048 0c62 CDE90A01 		strd	r0, [sp, #40]
 2049 0c66 DDE92201 		ldrd	r0, [sp, #136]
 2050 0c6a FFF7FEFF 		bl	__aeabi_dmul
 2051 0c6e DDE92423 		ldrd	r2, [sp, #144]
 2052 0c72 CDE92201 		strd	r0, [sp, #136]
ARM GAS  /tmp/cckO1lQe.s 			page 37


 2053 0c76 DDE90801 		ldrd	r0, [sp, #32]
 2054 0c7a FFF7FEFF 		bl	__aeabi_dmul
 2055 0c7e DDE92423 		ldrd	r2, [sp, #144]
 2056 0c82 CDE90801 		strd	r0, [sp, #32]
 2057 0c86 DDE92001 		ldrd	r0, [sp, #128]
 2058 0c8a FFF7FEFF 		bl	__aeabi_dmul
 2059 0c8e DDE96C23 		ldrd	r2, [sp, #432]
 2060 0c92 CDE92001 		strd	r0, [sp, #128]
 2061 0c96 DDE93E01 		ldrd	r0, [sp, #248]
 2062 0c9a FFF7FEFF 		bl	__aeabi_dsub
 2063 0c9e DDE94223 		ldrd	r2, [sp, #264]
 2064 0ca2 FFF7FEFF 		bl	__aeabi_dsub
 2065 0ca6 DDE92A23 		ldrd	r2, [sp, #168]
 2066 0caa FFF7FEFF 		bl	__aeabi_dadd
 2067 0cae DDE94C23 		ldrd	r2, [sp, #304]
 2068 0cb2 FFF7FEFF 		bl	__aeabi_dsub
 2069 0cb6 3246     		mov	r2, r6
 2070 0cb8 3B46     		mov	r3, r7
 2071 0cba FFF7FEFF 		bl	__aeabi_dadd
 2072 0cbe DDE95023 		ldrd	r2, [sp, #320]
 2073 0cc2 FFF7FEFF 		bl	__aeabi_dadd
 2074 0cc6 DDE91623 		ldrd	r2, [sp, #88]
 2075 0cca FFF7FEFF 		bl	__aeabi_dsub
 2076 0cce DDE97023 		ldrd	r2, [sp, #448]
 2077 0cd2 FFF7FEFF 		bl	__aeabi_dadd
 2078 0cd6 DDE93C23 		ldrd	r2, [sp, #240]
 2079 0cda FFF7FEFF 		bl	__aeabi_dsub
 2080 0cde DDE97423 		ldrd	r2, [sp, #464]
 2081 0ce2 FFF7FEFF 		bl	__aeabi_dsub
 2082 0ce6 DDE92823 		ldrd	r2, [sp, #160]
 2083 0cea FFF7FEFF 		bl	__aeabi_dadd
 2084 0cee DDE95C23 		ldrd	r2, [sp, #368]
 2085 0cf2 FFF7FEFF 		bl	__aeabi_dadd
 2086 0cf6 DDE95E23 		ldrd	r2, [sp, #376]
 2087 0cfa FFF7FEFF 		bl	__aeabi_dsub
 2088 0cfe DDE94023 		ldrd	r2, [sp, #256]
 2089 0d02 FFF7FEFF 		bl	__aeabi_dsub
 2090 0d06 DDE91423 		ldrd	r2, [sp, #80]
 2091 0d0a FFF7FEFF 		bl	__aeabi_dadd
 2092 0d0e 2246     		mov	r2, r4
 2093 0d10 2B46     		mov	r3, r5
 2094 0d12 FFF7FEFF 		bl	__aeabi_dsub
 2095 0d16 DDE97A23 		ldrd	r2, [sp, #488]
 2096 0d1a FFF7FEFF 		bl	__aeabi_dadd
 2097 0d1e DDE94423 		ldrd	r2, [sp, #272]
 2098 0d22 FFF7FEFF 		bl	__aeabi_dadd
 2099 0d26 DDE92623 		ldrd	r2, [sp, #152]
 2100 0d2a FFF7FEFF 		bl	__aeabi_dsub
 2101 0d2e DDE90A23 		ldrd	r2, [sp, #40]
 2102 0d32 FFF7FEFF 		bl	__aeabi_dadd
 2103 0d36 DDE92223 		ldrd	r2, [sp, #136]
 2104 0d3a FFF7FEFF 		bl	__aeabi_dsub
 2105 0d3e DDE90823 		ldrd	r2, [sp, #32]
 2106 0d42 FFF7FEFF 		bl	__aeabi_dsub
 2107 0d46 DDE92023 		ldrd	r2, [sp, #128]
 2108 0d4a FFF7FEFF 		bl	__aeabi_dadd
 2109 0d4e DDE93223 		ldrd	r2, [sp, #200]
ARM GAS  /tmp/cckO1lQe.s 			page 38


 2110 0d52 FFF7FEFF 		bl	__aeabi_ddiv
 2111 0d56 DDE91E23 		ldrd	r2, [sp, #120]
 2112 0d5a CAE90401 		strd	r0, [r10, #16]
 2113 0d5e DDE91201 		ldrd	r0, [sp, #72]
 2114 0d62 FFF7FEFF 		bl	__aeabi_dmul
 2115 0d66 DDE91C23 		ldrd	r2, [sp, #112]
 2116 0d6a 0446     		mov	r4, r0
 2117 0d6c 0D46     		mov	r5, r1
 2118 0d6e DDE91201 		ldrd	r0, [sp, #72]
 2119 0d72 FFF7FEFF 		bl	__aeabi_dmul
 2120 0d76 DDE92C23 		ldrd	r2, [sp, #176]
 2121 0d7a CDE91201 		strd	r0, [sp, #72]
 2122 0d7e DDE90601 		ldrd	r0, [sp, #24]
 2123 0d82 FFF7FEFF 		bl	__aeabi_dmul
 2124 0d86 DDE92C23 		ldrd	r2, [sp, #176]
 2125 0d8a CDE92A01 		strd	r0, [sp, #168]
 2126 0d8e DDE91C01 		ldrd	r0, [sp, #112]
 2127 0d92 FFF7FEFF 		bl	__aeabi_dmul
 2128 0d96 DDE92423 		ldrd	r2, [sp, #144]
 2129 0d9a CDE91C01 		strd	r0, [sp, #112]
 2130 0d9e DDE90601 		ldrd	r0, [sp, #24]
 2131 0da2 FFF7FEFF 		bl	__aeabi_dmul
 2132 0da6 DDE92423 		ldrd	r2, [sp, #144]
 2133 0daa CDE90601 		strd	r0, [sp, #24]
 2134 0dae DDE91E01 		ldrd	r0, [sp, #120]
 2135 0db2 FFF7FEFF 		bl	__aeabi_dmul
 2136 0db6 DDE96E23 		ldrd	r2, [sp, #440]
 2137 0dba CDE91E01 		strd	r0, [sp, #120]
 2138 0dbe DDE94601 		ldrd	r0, [sp, #280]
 2139 0dc2 FFF7FEFF 		bl	__aeabi_dsub
 2140 0dc6 DDE94A23 		ldrd	r2, [sp, #296]
 2141 0dca FFF7FEFF 		bl	__aeabi_dsub
 2142 0dce DDE91A23 		ldrd	r2, [sp, #104]
 2143 0dd2 FFF7FEFF 		bl	__aeabi_dadd
 2144 0dd6 DDE94E23 		ldrd	r2, [sp, #312]
 2145 0dda FFF7FEFF 		bl	__aeabi_dsub
 2146 0dde 3246     		mov	r2, r6
 2147 0de0 3B46     		mov	r3, r7
 2148 0de2 FFF7FEFF 		bl	__aeabi_dadd
 2149 0de6 DDE95223 		ldrd	r2, [sp, #328]
 2150 0dea FFF7FEFF 		bl	__aeabi_dadd
 2151 0dee DDE91623 		ldrd	r2, [sp, #88]
 2152 0df2 FFF7FEFF 		bl	__aeabi_dsub
 2153 0df6 DDE97223 		ldrd	r2, [sp, #456]
 2154 0dfa FFF7FEFF 		bl	__aeabi_dadd
 2155 0dfe DDE93C23 		ldrd	r2, [sp, #240]
 2156 0e02 FFF7FEFF 		bl	__aeabi_dsub
 2157 0e06 DDE97623 		ldrd	r2, [sp, #472]
 2158 0e0a FFF7FEFF 		bl	__aeabi_dsub
 2159 0e0e DDE92823 		ldrd	r2, [sp, #160]
 2160 0e12 FFF7FEFF 		bl	__aeabi_dadd
 2161 0e16 DDE96423 		ldrd	r2, [sp, #400]
 2162 0e1a FFF7FEFF 		bl	__aeabi_dadd
 2163 0e1e DDE96623 		ldrd	r2, [sp, #408]
 2164 0e22 FFF7FEFF 		bl	__aeabi_dsub
 2165 0e26 2246     		mov	r2, r4
 2166 0e28 2B46     		mov	r3, r5
ARM GAS  /tmp/cckO1lQe.s 			page 39


 2167 0e2a FFF7FEFF 		bl	__aeabi_dsub
 2168 0e2e DDE91223 		ldrd	r2, [sp, #72]
 2169 0e32 FFF7FEFF 		bl	__aeabi_dadd
 2170 0e36 DDE98023 		ldrd	r2, [sp, #512]
 2171 0e3a FFF7FEFF 		bl	__aeabi_dsub
 2172 0e3e DDE98223 		ldrd	r2, [sp, #520]
 2173 0e42 FFF7FEFF 		bl	__aeabi_dadd
 2174 0e46 DDE92A23 		ldrd	r2, [sp, #168]
 2175 0e4a FFF7FEFF 		bl	__aeabi_dadd
 2176 0e4e DDE91C23 		ldrd	r2, [sp, #112]
 2177 0e52 FFF7FEFF 		bl	__aeabi_dsub
 2178 0e56 DDE90A23 		ldrd	r2, [sp, #40]
 2179 0e5a FFF7FEFF 		bl	__aeabi_dadd
 2180 0e5e DDE92223 		ldrd	r2, [sp, #136]
 2181 0e62 FFF7FEFF 		bl	__aeabi_dsub
 2182 0e66 DDE90623 		ldrd	r2, [sp, #24]
 2183 0e6a FFF7FEFF 		bl	__aeabi_dsub
 2184 0e6e DDE91E23 		ldrd	r2, [sp, #120]
 2185 0e72 FFF7FEFF 		bl	__aeabi_dadd
 2186 0e76 DDE93267 		ldrd	r6, [sp, #200]
 2187 0e7a 01F10043 		add	r3, r1, #-2147483648
 2188 0e7e 8793     		str	r3, [sp, #540]
 2189 0e80 8690     		str	r0, [sp, #536]
 2190 0e82 DDE98601 		ldrd	r0, [sp, #536]
 2191 0e86 3246     		mov	r2, r6
 2192 0e88 3B46     		mov	r3, r7
 2193 0e8a FFF7FEFF 		bl	__aeabi_ddiv
 2194 0e8e DDE97823 		ldrd	r2, [sp, #480]
 2195 0e92 CAE90601 		strd	r0, [r10, #24]
 2196 0e96 DDE95801 		ldrd	r0, [sp, #352]
 2197 0e9a FFF7FEFF 		bl	__aeabi_dsub
 2198 0e9e DDE95A23 		ldrd	r2, [sp, #360]
 2199 0ea2 FFF7FEFF 		bl	__aeabi_dsub
 2200 0ea6 DDE91823 		ldrd	r2, [sp, #96]
 2201 0eaa FFF7FEFF 		bl	__aeabi_dadd
 2202 0eae DDE96023 		ldrd	r2, [sp, #384]
 2203 0eb2 FFF7FEFF 		bl	__aeabi_dsub
 2204 0eb6 DDE94023 		ldrd	r2, [sp, #256]
 2205 0eba FFF7FEFF 		bl	__aeabi_dadd
 2206 0ebe DDE96223 		ldrd	r2, [sp, #392]
 2207 0ec2 FFF7FEFF 		bl	__aeabi_dadd
 2208 0ec6 DDE91423 		ldrd	r2, [sp, #80]
 2209 0eca FFF7FEFF 		bl	__aeabi_dsub
 2210 0ece DDE97C23 		ldrd	r2, [sp, #496]
 2211 0ed2 FFF7FEFF 		bl	__aeabi_dadd
 2212 0ed6 DDE94423 		ldrd	r2, [sp, #272]
 2213 0eda FFF7FEFF 		bl	__aeabi_dsub
 2214 0ede DDE97E23 		ldrd	r2, [sp, #504]
 2215 0ee2 FFF7FEFF 		bl	__aeabi_dsub
 2216 0ee6 DDE92623 		ldrd	r2, [sp, #152]
 2217 0eea FFF7FEFF 		bl	__aeabi_dadd
 2218 0eee DDE96823 		ldrd	r2, [sp, #416]
 2219 0ef2 FFF7FEFF 		bl	__aeabi_dadd
 2220 0ef6 DDE96A23 		ldrd	r2, [sp, #424]
 2221 0efa FFF7FEFF 		bl	__aeabi_dsub
 2222 0efe 2246     		mov	r2, r4
 2223 0f00 2B46     		mov	r3, r5
ARM GAS  /tmp/cckO1lQe.s 			page 40


 2224 0f02 FFF7FEFF 		bl	__aeabi_dsub
 2225 0f06 DDE91223 		ldrd	r2, [sp, #72]
 2226 0f0a FFF7FEFF 		bl	__aeabi_dadd
 2227 0f0e DDE90C23 		ldrd	r2, [sp, #48]
 2228 0f12 FFF7FEFF 		bl	__aeabi_dsub
 2229 0f16 DDE94823 		ldrd	r2, [sp, #288]
 2230 0f1a FFF7FEFF 		bl	__aeabi_dadd
 2231 0f1e DDE92A23 		ldrd	r2, [sp, #168]
 2232 0f22 FFF7FEFF 		bl	__aeabi_dadd
 2233 0f26 DDE91C23 		ldrd	r2, [sp, #112]
 2234 0f2a FFF7FEFF 		bl	__aeabi_dsub
 2235 0f2e DDE90823 		ldrd	r2, [sp, #32]
 2236 0f32 FFF7FEFF 		bl	__aeabi_dadd
 2237 0f36 DDE92023 		ldrd	r2, [sp, #128]
 2238 0f3a FFF7FEFF 		bl	__aeabi_dsub
 2239 0f3e DDE90623 		ldrd	r2, [sp, #24]
 2240 0f42 FFF7FEFF 		bl	__aeabi_dsub
 2241 0f46 DDE91E23 		ldrd	r2, [sp, #120]
 2242 0f4a FFF7FEFF 		bl	__aeabi_dadd
 2243 0f4e 3246     		mov	r2, r6
 2244 0f50 3B46     		mov	r3, r7
 2245 0f52 FFF7FEFF 		bl	__aeabi_ddiv
 2246 0f56 CAE90801 		strd	r0, [r10, #32]
 2247 0f5a FFF750B9 		b	.L143
 2248              	.L226:
 2249 0f5e 889C     		ldr	r4, [sp, #544]
 2250 0f60 8349     		ldr	r1, .L233+8
 2251 0f62 2046     		mov	r0, r4
 2252 0f64 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2253 0f68 8998     		ldr	r0, [sp, #548]
 2254 0f6a 2246     		mov	r2, r4
 2255 0f6c 8AA9     		add	r1, sp, #552
 2256 0f6e FFF7FEFF 		bl	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef
 2257 0f72 4846     		mov	r0, r9
 2258 0f74 0DF2FC7D 		addw	sp, sp, #2044
 2259              		@ sp needed
 2260 0f78 BDEC0E8B 		vldm	sp!, {d8-d14}
 2261 0f7c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2262              	.L182:
 2263 0f80 4FF00109 		mov	r9, #1
 2264 0f84 FFF717BB 		b	.L166
 2265              	.L164:
 2266 0f88 309B     		ldr	r3, [sp, #192]
 2267 0f8a 1A68     		ldr	r2, [r3]
 2268 0f8c 899B     		ldr	r3, [sp, #548]
 2269 0f8e D2F80823 		ldr	r2, [r2, #776]
 2270 0f92 1B69     		ldr	r3, [r3, #16]
 2271 0f94 9A42     		cmp	r2, r3
 2272 0f96 72D0     		beq	.L171
 2273              	.L170:
 2274 0f98 7649     		ldr	r1, .L233+12
 2275 0f9a 8898     		ldr	r0, [sp, #544]
 2276 0f9c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2277 0fa0 899A     		ldr	r2, [sp, #548]
 2278 0fa2 1369     		ldr	r3, [r2, #16]
 2279 0fa4 002B     		cmp	r3, #0
 2280 0fa6 36D0     		beq	.L174
ARM GAS  /tmp/cckO1lQe.s 			page 41


 2281 0fa8 DFF8F091 		ldr	r9, .L233+52
 2282 0fac DFF8F081 		ldr	r8, .L233+56
 2283 0fb0 8AAD     		add	r5, sp, #552
 2284 0fb2 0024     		movs	r4, #0
 2285 0fb4 9246     		mov	r10, r2
 2286              	.L177:
 2287 0fb6 DDE98A23 		ldrd	r2, [sp, #552]
 2288 0fba F5E80201 		ldrd	r0, [r5], #8
 2289 0fbe FFF7FEFF 		bl	__aeabi_dsub
 2290 0fc2 FFF7FEFF 		bl	__aeabi_d2f
 2291 0fc6 08EE100A 		vmov	s16, r0
 2292 0fca DAED0F7A 		vldr.32	s15, [r10, #60]
 2293 0fce B0EEC87A 		vabs.f32	s14, s16
 2294 0fd2 C7EE277A 		vdiv.f32	s15, s14, s15
 2295 0fd6 0134     		adds	r4, r4, #1
 2296 0fd8 17EE900A 		vmov	r0, s15
 2297 0fdc FFF7FEFF 		bl	__aeabi_f2d
 2298 0fe0 B5EEC08A 		vcmpe.f32	s16, #0
 2299 0fe4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2300 0fe8 0646     		mov	r6, r0
 2301 0fea 18EE100A 		vmov	r0, s16
 2302 0fee CCBF     		ite	gt
 2303 0ff0 CB46     		movgt	fp, r9
 2304 0ff2 C346     		movle	fp, r8
 2305 0ff4 0F46     		mov	r7, r1
 2306 0ff6 FFF7FEFF 		bl	__aeabi_f2d
 2307 0ffa 3B46     		mov	r3, r7
 2308 0ffc CDE90201 		strd	r0, [sp, #8]
 2309 1000 CDF800B0 		str	fp, [sp]
 2310 1004 3246     		mov	r2, r6
 2311 1006 5C49     		ldr	r1, .L233+16
 2312 1008 8898     		ldr	r0, [sp, #544]
 2313 100a FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2314 100e DAF81030 		ldr	r3, [r10, #16]
 2315 1012 A342     		cmp	r3, r4
 2316 1014 CFD8     		bhi	.L177
 2317              	.L174:
 2318 1016 4FF00009 		mov	r9, #0
 2319 101a 4846     		mov	r0, r9
 2320 101c 0DF2FC7D 		addw	sp, sp, #2044
 2321              		@ sp needed
 2322 1020 BDEC0E8B 		vldm	sp!, {d8-d14}
 2323 1024 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2324              	.L224:
 2325 1028 DDE91014 		ldrd	r1, r4, [sp, #64]
 2326 102c 2346     		mov	r3, r4
 2327 102e 0133     		adds	r3, r3, #1
 2328 1030 2246     		mov	r2, r4
 2329 1032 5248     		ldr	r0, .L233+20
 2330 1034 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 2331 1038 2246     		mov	r2, r4
 2332 103a 8AA9     		add	r1, sp, #552
 2333 103c 5048     		ldr	r0, .L233+24
 2334 103e FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 2335 1042 059B     		ldr	r3, [sp, #20]
 2336 1044 002B     		cmp	r3, #0
 2337 1046 7BD0     		beq	.L158
ARM GAS  /tmp/cckO1lQe.s 			page 42


 2338 1048 309B     		ldr	r3, [sp, #192]
 2339 104a 9B6C     		ldr	r3, [r3, #72]
 2340 104c 03F01003 		and	r3, r3, #16
 2341 1050 0893     		str	r3, [sp, #32]
 2342 1052 FFF736BA 		b	.L179
 2343              	.L223:
 2344 1056 119C     		ldr	r4, [sp, #68]
 2345 1058 059A     		ldr	r2, [sp, #20]
 2346 105a 4A48     		ldr	r0, .L233+28
 2347 105c 2346     		mov	r3, r4
 2348 105e FCA9     		add	r1, sp, #1008
 2349 1060 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 2350 1064 309B     		ldr	r3, [sp, #192]
 2351 1066 1099     		ldr	r1, [sp, #64]
 2352 1068 9B6C     		ldr	r3, [r3, #72]
 2353 106a 474A     		ldr	r2, .L233+32
 2354 106c 0A60     		str	r2, [r1]
 2355 106e 03F01003 		and	r3, r3, #16
 2356 1072 1A93     		str	r3, [sp, #104]
 2357 1074 002C     		cmp	r4, #0
 2358 1076 7FF478A9 		bne	.L180
 2359 107a FFF709BA 		b	.L149
 2360              	.L171:
 2361 107e 309B     		ldr	r3, [sp, #192]
 2362 1080 8AA9     		add	r1, sp, #552
 2363 1082 9868     		ldr	r0, [r3, #8]
 2364 1084 FFF7FEFF 		bl	_ZN4Move16AdjustLeadscrewsEPKd
 2365 1088 889C     		ldr	r4, [sp, #544]
 2366 108a 4049     		ldr	r1, .L233+36
 2367 108c 2046     		mov	r0, r4
 2368 108e FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2369 1092 2246     		mov	r2, r4
 2370 1094 8AA9     		add	r1, sp, #552
 2371 1096 8998     		ldr	r0, [sp, #548]
 2372 1098 FFF7FEFF 		bl	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef
 2373 109c DDE90E01 		ldrd	r0, [sp, #56]
 2374 10a0 FFF7FEFF 		bl	__aeabi_d2f
 2375 10a4 DDED057A 		vldr.32	s15, [sp, #20]	@ int
 2376 10a8 B8EEE78A 		vcvt.f32.s32	s16, s15
 2377 10ac 07EE900A 		vmov	s15, r0
 2378 10b0 87EE880A 		vdiv.f32	s0, s15, s16
 2379 10b4 B5EE400A 		vcmp.f32	s0, #0
 2380 10b8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2381 10bc F1EEC08A 		vsqrt.f32	s17, s0
 2382 10c0 4CD4     		bmi	.L227
 2383              	.L172:
 2384 10c2 18EE900A 		vmov	r0, s17
 2385 10c6 FFF7FEFF 		bl	__aeabi_f2d
 2386 10ca 0446     		mov	r4, r0
 2387 10cc 0D46     		mov	r5, r1
 2388 10ce DDE90601 		ldrd	r0, [sp, #24]
 2389 10d2 FFF7FEFF 		bl	__aeabi_d2f
 2390 10d6 07EE900A 		vmov	s15, r0
 2391 10da 87EE880A 		vdiv.f32	s0, s15, s16
 2392 10de B5EE400A 		vcmp.f32	s0, #0
 2393 10e2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2394 10e6 B1EEC08A 		vsqrt.f32	s16, s0
ARM GAS  /tmp/cckO1lQe.s 			page 43


 2395 10ea 34D4     		bmi	.L228
 2396              	.L173:
 2397 10ec 4FF00009 		mov	r9, #0
 2398 10f0 18EE100A 		vmov	r0, s16
 2399 10f4 FFF7FEFF 		bl	__aeabi_f2d
 2400 10f8 CDE90045 		strd	r4, [sp]
 2401 10fc 889C     		ldr	r4, [sp, #544]
 2402 10fe 059A     		ldr	r2, [sp, #20]
 2403 1100 CDE90201 		strd	r0, [sp, #8]
 2404 1104 2249     		ldr	r1, .L233+40
 2405 1106 2046     		mov	r0, r4
 2406 1108 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2407 110c 309A     		ldr	r2, [sp, #192]
 2408 110e 2368     		ldr	r3, [r4]
 2409 1110 1068     		ldr	r0, [r2]
 2410 1112 204A     		ldr	r2, .L233+44
 2411 1114 8021     		movs	r1, #128
 2412 1116 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2413 111a 4846     		mov	r0, r9
 2414 111c 0DF2FC7D 		addw	sp, sp, #2044
 2415              		@ sp needed
 2416 1120 BDEC0E8B 		vldm	sp!, {d8-d14}
 2417 1124 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2418              	.L181:
 2419 1128 1B4B     		ldr	r3, .L233+48
 2420 112a 3093     		str	r3, [sp, #192]
 2421 112c 92AB     		add	r3, sp, #584
 2422 112e 1093     		str	r3, [sp, #64]
 2423 1130 FFF70DB9 		b	.L142
 2424              	.L225:
 2425 1134 9FED0C7B 		vldr.64	d7, .L233
 2426 1138 8DED067B 		vstr.64	d7, [sp, #24]
 2427 113c FFF70ABA 		b	.L221
 2428              	.L158:
 2429 1140 309B     		ldr	r3, [sp, #192]
 2430 1142 9FED097B 		vldr.64	d7, .L233
 2431 1146 9B6C     		ldr	r3, [r3, #72]
 2432 1148 03F01003 		and	r3, r3, #16
 2433 114c 8DED067B 		vstr.64	d7, [sp, #24]
 2434 1150 0893     		str	r3, [sp, #32]
 2435 1152 FFF7F8B9 		b	.L161
 2436              	.L228:
 2437 1156 FFF7FEFF 		bl	sqrtf
 2438 115a C7E7     		b	.L173
 2439              	.L227:
 2440 115c FFF7FEFF 		bl	sqrtf
 2441 1160 AFE7     		b	.L172
 2442              	.L234:
 2443 1162 00BFAFF3 		.align	3
 2443      0080
 2444              	.L233:
 2445 1168 00000000 		.word	0
 2446 116c 00000000 		.word	0
 2447 1170 58000000 		.word	.LC10
 2448 1174 18010000 		.word	.LC15
 2449 1178 38010000 		.word	.LC16
 2450 117c 30000000 		.word	.LC7
ARM GAS  /tmp/cckO1lQe.s 			page 44


 2451 1180 40000000 		.word	.LC8
 2452 1184 0C000000 		.word	.LC5
 2453 1188 08000000 		.word	_ZTV11FixedMatrixIdLj4ELj5EE+8
 2454 118c C4000000 		.word	.LC12
 2455 1190 E0000000 		.word	.LC13
 2456 1194 14010000 		.word	.LC14
 2457 1198 00000000 		.word	reprap
 2458 119c 00000000 		.word	.LC3
 2459 11a0 08000000 		.word	.LC4
 2460              		.size	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef.part.5, .-
 2461              		.section	.text._ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,"
 2462              		.align	1
 2463              		.p2align 2,,3
 2464              		.global	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 2465              		.syntax unified
 2466              		.thumb
 2467              		.thumb_func
 2468              		.fpu fpv4-sp-d16
 2469              		.type	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %function
 2470              	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
 2471              		@ args = 0, pretend = 0, frame = 8
 2472              		@ frame_needed = 0, uses_anonymous_args = 0
 2473 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2474 0002 0468     		ldr	r4, [r0]
 2475 0004 124E     		ldr	r6, .L244
 2476 0006 2469     		ldr	r4, [r4, #16]
 2477 0008 B442     		cmp	r4, r6
 2478 000a 83B0     		sub	sp, sp, #12
 2479 000c 0546     		mov	r5, r0
 2480 000e 1F46     		mov	r7, r3
 2481 0010 17D1     		bne	.L236
 2482 0012 0469     		ldr	r4, [r0, #16]
 2483 0014 012C     		cmp	r4, #1
 2484 0016 94BF     		ite	ls
 2485 0018 0024     		movls	r4, #0
 2486 001a 0124     		movhi	r4, #1
 2487              	.L237:
 2488 001c 3CB1     		cbz	r4, .L238
 2489 001e 2B69     		ldr	r3, [r5, #16]
 2490 0020 8B42     		cmp	r3, r1
 2491 0022 07D0     		beq	.L239
 2492 0024 0A46     		mov	r2, r1
 2493 0026 3846     		mov	r0, r7
 2494 0028 0A49     		ldr	r1, .L244+4
 2495 002a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2496              	.L238:
 2497 002e 2046     		mov	r0, r4
 2498 0030 03B0     		add	sp, sp, #12
 2499              		@ sp needed
 2500 0032 F0BD     		pop	{r4, r5, r6, r7, pc}
 2501              	.L239:
 2502 0034 3B46     		mov	r3, r7
 2503 0036 2846     		mov	r0, r5
 2504 0038 03B0     		add	sp, sp, #12
 2505              		@ sp needed
 2506 003a BDE8F040 		pop	{r4, r5, r6, r7, lr}
 2507 003e FFF7FEBF 		b	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef.part.5
ARM GAS  /tmp/cckO1lQe.s 			page 45


 2508              	.L236:
 2509 0042 CDE90012 		strd	r1, r2, [sp]
 2510 0046 A047     		blx	r4
 2511 0048 DDE90012 		ldrd	r1, r2, [sp]
 2512 004c 0446     		mov	r4, r0
 2513 004e E5E7     		b	.L237
 2514              	.L245:
 2515              		.align	2
 2516              	.L244:
 2517 0050 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 2518 0054 00000000 		.word	.LC17
 2519              		.size	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN20ZL
 2520              		.section	.text._ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 2521              		.align	1
 2522              		.p2align 2,,3
 2523              		.global	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 2524              		.syntax unified
 2525              		.thumb
 2526              		.thumb_func
 2527              		.fpu fpv4-sp-d16
 2528              		.type	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 2529              	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 2530              		@ args = 4, pretend = 0, frame = 16
 2531              		@ frame_needed = 0, uses_anonymous_args = 0
 2532 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2533 0004 40F29F27 		movw	r7, #671
 2534 0008 B942     		cmp	r1, r7
 2535 000a 89B0     		sub	sp, sp, #36
 2536 000c 0446     		mov	r4, r0
 2537 000e 1546     		mov	r5, r2
 2538 0010 1E46     		mov	r6, r3
 2539 0012 6CD1     		bne	.L247
 2540 0014 837B     		ldrb	r3, [r0, #14]	@ zero_extendqisi2
 2541 0016 022B     		cmp	r3, #2
 2542 0018 69D0     		beq	.L247
 2543 001a 0423     		movs	r3, #4
 2544 001c 5821     		movs	r1, #88
 2545 001e 1046     		mov	r0, r2
 2546 0020 CDE90633 		strd	r3, r3, [sp, #24]
 2547 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2548 0028 04F13C09 		add	r9, r4, #60
 2549 002c 0746     		mov	r7, r0
 2550 002e 04F1380A 		add	r10, r4, #56
 2551 0032 04F13408 		add	r8, r4, #52
 2552 0036 0028     		cmp	r0, #0
 2553 0038 65D1     		bne	.L273
 2554 003a 5921     		movs	r1, #89
 2555 003c 2846     		mov	r0, r5
 2556 003e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2557 0042 0028     		cmp	r0, #0
 2558 0044 40F0B380 		bne	.L259
 2559 0048 08AF     		add	r7, sp, #32
 2560 004a 5246     		mov	r2, r10
 2561 004c 07F8090D 		strb	r0, [r7, #-9]!
 2562 0050 5321     		movs	r1, #83
 2563 0052 2846     		mov	r0, r5
 2564 0054 3B46     		mov	r3, r7
ARM GAS  /tmp/cckO1lQe.s 			page 46


 2565 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2566 005a 2846     		mov	r0, r5
 2567 005c 3B46     		mov	r3, r7
 2568 005e 4A46     		mov	r2, r9
 2569 0060 5021     		movs	r1, #80
 2570 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2571 0066 2846     		mov	r0, r5
 2572 0068 3B46     		mov	r3, r7
 2573 006a 4246     		mov	r2, r8
 2574 006c 4621     		movs	r1, #70
 2575 006e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2576 0072 9DF81750 		ldrb	r5, [sp, #23]	@ zero_extendqisi2
 2577 0076 002D     		cmp	r5, #0
 2578 0078 41D1     		bne	.L261
 2579 007a 2369     		ldr	r3, [r4, #16]
 2580 007c 012B     		cmp	r3, #1
 2581 007e 7BD9     		bls	.L274
 2582 0080 5149     		ldr	r1, .L277
 2583 0082 3046     		mov	r0, r6
 2584 0084 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2585 0088 2369     		ldr	r3, [r4, #16]
 2586 008a D3B1     		cbz	r3, .L253
 2587 008c DFF848B1 		ldr	fp, .L277+16
 2588 0090 04F1140A 		add	r10, r4, #20
 2589 0094 2F46     		mov	r7, r5
 2590              	.L254:
 2591 0096 5AF8040B 		ldr	r0, [r10], #4	@ float
 2592 009a FFF7FEFF 		bl	__aeabi_f2d
 2593 009e 8046     		mov	r8, r0
 2594 00a0 DAF80C00 		ldr	r0, [r10, #12]	@ float
 2595 00a4 8946     		mov	r9, r1
 2596 00a6 FFF7FEFF 		bl	__aeabi_f2d
 2597 00aa 4B46     		mov	r3, r9
 2598 00ac CDE90001 		strd	r0, [sp]
 2599 00b0 4246     		mov	r2, r8
 2600 00b2 5946     		mov	r1, fp
 2601 00b4 3046     		mov	r0, r6
 2602 00b6 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2603 00ba 2369     		ldr	r3, [r4, #16]
 2604 00bc 0137     		adds	r7, r7, #1
 2605 00be BB42     		cmp	r3, r7
 2606 00c0 E9D8     		bhi	.L254
 2607              	.L253:
 2608 00c2 606B     		ldr	r0, [r4, #52]	@ float
 2609 00c4 FFF7FEFF 		bl	__aeabi_f2d
 2610 00c8 8046     		mov	r8, r0
 2611 00ca E06B     		ldr	r0, [r4, #60]	@ float
 2612 00cc 8946     		mov	r9, r1
 2613 00ce FFF7FEFF 		bl	__aeabi_f2d
 2614 00d2 CDE90201 		strd	r0, [sp, #8]
 2615 00d6 A06B     		ldr	r0, [r4, #56]	@ float
 2616 00d8 FFF7FEFF 		bl	__aeabi_f2d
 2617 00dc 4246     		mov	r2, r8
 2618 00de CDE90001 		strd	r0, [sp]
 2619 00e2 4B46     		mov	r3, r9
 2620 00e4 3046     		mov	r0, r6
 2621 00e6 3949     		ldr	r1, .L277+4
ARM GAS  /tmp/cckO1lQe.s 			page 47


 2622 00e8 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2623 00ec 07E0     		b	.L261
 2624              	.L247:
 2625 00ee 129B     		ldr	r3, [sp, #72]
 2626 00f0 0093     		str	r3, [sp]
 2627 00f2 2A46     		mov	r2, r5
 2628 00f4 3346     		mov	r3, r6
 2629 00f6 2046     		mov	r0, r4
 2630 00f8 FFF7FEFF 		bl	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 2631 00fc 0546     		mov	r5, r0
 2632              	.L261:
 2633 00fe 2846     		mov	r0, r5
 2634 0100 09B0     		add	sp, sp, #36
 2635              		@ sp needed
 2636 0102 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2637              	.L273:
 2638 0106 04F11401 		add	r1, r4, #20
 2639 010a 2846     		mov	r0, r5
 2640 010c 0023     		movs	r3, #0
 2641 010e 06AA     		add	r2, sp, #24
 2642 0110 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 2643 0114 5921     		movs	r1, #89
 2644 0116 2846     		mov	r0, r5
 2645 0118 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2646 011c 88B3     		cbz	r0, .L275
 2647 011e 08AF     		add	r7, sp, #32
 2648 0120 0023     		movs	r3, #0
 2649 0122 9B46     		mov	fp, r3
 2650 0124 07AA     		add	r2, sp, #28
 2651 0126 04F12401 		add	r1, r4, #36
 2652 012a 2846     		mov	r0, r5
 2653 012c FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 2654 0130 07F809BD 		strb	fp, [r7, #-9]!
 2655 0134 5246     		mov	r2, r10
 2656 0136 3B46     		mov	r3, r7
 2657 0138 5321     		movs	r1, #83
 2658 013a 2846     		mov	r0, r5
 2659 013c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2660 0140 3B46     		mov	r3, r7
 2661 0142 4A46     		mov	r2, r9
 2662 0144 5021     		movs	r1, #80
 2663 0146 2846     		mov	r0, r5
 2664 0148 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2665 014c 3B46     		mov	r3, r7
 2666 014e 4246     		mov	r2, r8
 2667 0150 2846     		mov	r0, r5
 2668 0152 4621     		movs	r1, #70
 2669 0154 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2670 0158 DDE90632 		ldrd	r3, r2, [sp, #24]
 2671 015c 9342     		cmp	r3, r2
 2672 015e 08D0     		beq	.L276
 2673              	.L258:
 2674 0160 3046     		mov	r0, r6
 2675 0162 1B49     		ldr	r1, .L277+8
 2676 0164 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2677 0168 0125     		movs	r5, #1
 2678 016a 2846     		mov	r0, r5
ARM GAS  /tmp/cckO1lQe.s 			page 48


 2679 016c 09B0     		add	sp, sp, #36
 2680              		@ sp needed
 2681 016e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2682              	.L276:
 2683 0172 2361     		str	r3, [r4, #16]
 2684 0174 5D46     		mov	r5, fp
 2685 0176 C2E7     		b	.L261
 2686              	.L274:
 2687 0178 3046     		mov	r0, r6
 2688 017a 1649     		ldr	r1, .L277+12
 2689 017c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2690 0180 BDE7     		b	.L261
 2691              	.L275:
 2692 0182 08AC     		add	r4, sp, #32
 2693 0184 5246     		mov	r2, r10
 2694 0186 04F8090D 		strb	r0, [r4, #-9]!
 2695              	.L272:
 2696 018a 2346     		mov	r3, r4
 2697 018c 2846     		mov	r0, r5
 2698 018e 5321     		movs	r1, #83
 2699 0190 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2700 0194 2346     		mov	r3, r4
 2701 0196 4A46     		mov	r2, r9
 2702 0198 2846     		mov	r0, r5
 2703 019a 5021     		movs	r1, #80
 2704 019c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2705 01a0 2346     		mov	r3, r4
 2706 01a2 4246     		mov	r2, r8
 2707 01a4 2846     		mov	r0, r5
 2708 01a6 4621     		movs	r1, #70
 2709 01a8 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2710 01ac D8E7     		b	.L258
 2711              	.L259:
 2712 01ae 04F12401 		add	r1, r4, #36
 2713 01b2 08AC     		add	r4, sp, #32
 2714 01b4 07AA     		add	r2, sp, #28
 2715 01b6 3B46     		mov	r3, r7
 2716 01b8 2846     		mov	r0, r5
 2717 01ba FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 2718 01be 5246     		mov	r2, r10
 2719 01c0 04F8097D 		strb	r7, [r4, #-9]!
 2720 01c4 E1E7     		b	.L272
 2721              	.L278:
 2722 01c6 00BF     		.align	2
 2723              	.L277:
 2724 01c8 60000000 		.word	.LC20
 2725 01cc 88000000 		.word	.LC22
 2726 01d0 00000000 		.word	.LC18
 2727 01d4 34000000 		.word	.LC19
 2728 01d8 78000000 		.word	.LC21
 2729              		.size	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN20ZLeadscrewKinemati
 2730              		.global	_ZTV20ZLeadscrewKinematics
 2731              		.weak	_ZTV11FixedMatrixIdLj32ELj4EE
 2732              		.section	.rodata._ZTV11FixedMatrixIdLj32ELj4EE,"aG",%progbits,_ZTV11FixedMatrixIdLj32ELj4EE,comdat
 2733              		.align	2
 2734              		.type	_ZTV11FixedMatrixIdLj32ELj4EE, %object
 2735              		.size	_ZTV11FixedMatrixIdLj32ELj4EE, 32
ARM GAS  /tmp/cckO1lQe.s 			page 49


 2736              	_ZTV11FixedMatrixIdLj32ELj4EE:
 2737 0000 00000000 		.word	0
 2738 0004 00000000 		.word	0
 2739 0008 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj4EE4rowsEv
 2740 000c 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj4EE4colsEv
 2741 0010 00000000 		.word	_ZN11FixedMatrixIdLj32ELj4EEclEjj
 2742 0014 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj4EEclEjj
 2743 0018 00000000 		.word	_ZN11FixedMatrixIdLj32ELj4EED1Ev
 2744 001c 00000000 		.word	_ZN11FixedMatrixIdLj32ELj4EED0Ev
 2745              		.weak	_ZTV11FixedMatrixIdLj4ELj5EE
 2746              		.section	.rodata._ZTV11FixedMatrixIdLj4ELj5EE,"aG",%progbits,_ZTV11FixedMatrixIdLj4ELj5EE,comdat
 2747              		.align	2
 2748              		.type	_ZTV11FixedMatrixIdLj4ELj5EE, %object
 2749              		.size	_ZTV11FixedMatrixIdLj4ELj5EE, 32
 2750              	_ZTV11FixedMatrixIdLj4ELj5EE:
 2751 0000 00000000 		.word	0
 2752 0004 00000000 		.word	0
 2753 0008 00000000 		.word	_ZNK11FixedMatrixIdLj4ELj5EE4rowsEv
 2754 000c 00000000 		.word	_ZNK11FixedMatrixIdLj4ELj5EE4colsEv
 2755 0010 00000000 		.word	_ZN11FixedMatrixIdLj4ELj5EEclEjj
 2756 0014 00000000 		.word	_ZNK11FixedMatrixIdLj4ELj5EEclEjj
 2757 0018 00000000 		.word	_ZN11FixedMatrixIdLj4ELj5EED1Ev
 2758 001c 00000000 		.word	_ZN11FixedMatrixIdLj4ELj5EED0Ev
 2759              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2760              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2761              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2762              	_ZL28cpu_irq_prev_interrupt_state:
 2763 0000 00       		.space	1
 2764              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2765              		.align	2
 2766              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2767              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2768              	_ZL32cpu_irq_critical_section_counter:
 2769 0000 00000000 		.space	4
 2770              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 2771              		.align	2
 2772              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 2773              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 2774              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 2775 0000 00000000 		.space	4
 2776              		.section	.rodata._ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 2777              		.align	2
 2778              	.LC3:
 2779 0000 646F776E 		.ascii	"down\000"
 2779      00
 2780 0005 000000   		.space	3
 2781              	.LC4:
 2782 0008 757000   		.ascii	"up\000"
 2783 000b 00       		.space	1
 2784              	.LC5:
 2785 000c 44657269 		.ascii	"Derivative matrix\000"
 2785      76617469 
 2785      7665206D 
 2785      61747269 
 2785      7800
 2786 001e 0000     		.space	2
 2787              	.LC6:
ARM GAS  /tmp/cckO1lQe.s 			page 50


 2788 0020 4E6F726D 		.ascii	"Normal matrix\000"
 2788      616C206D 
 2788      61747269 
 2788      7800
 2789 002e 0000     		.space	2
 2790              	.LC7:
 2791 0030 536F6C76 		.ascii	"Solved matrix\000"
 2791      6564206D 
 2791      61747269 
 2791      7800
 2792 003e 0000     		.space	2
 2793              	.LC8:
 2794 0040 536F6C75 		.ascii	"Solution\000"
 2794      74696F6E 
 2794      00
 2795 0049 000000   		.space	3
 2796              	.LC9:
 2797 004c 52657369 		.ascii	"Residuals\000"
 2797      6475616C 
 2797      7300
 2798 0056 0000     		.space	2
 2799              	.LC10:
 2800 0058 43616C69 		.ascii	"Calibration failed, computed corrections:\000"
 2800      62726174 
 2800      696F6E20 
 2800      6661696C 
 2800      65642C20 
 2801 0082 0000     		.space	2
 2802              	.LC11:
 2803 0084 536F6D65 		.ascii	"Some computed corrections exceed configured limit o"
 2803      20636F6D 
 2803      70757465 
 2803      6420636F 
 2803      72726563 
 2804 00b7 6620252E 		.ascii	"f %.02fmm:\000"
 2804      3032666D 
 2804      6D3A00
 2805 00c2 0000     		.space	2
 2806              	.LC12:
 2807 00c4 4C656164 		.ascii	"Leadscrew adjustments made:\000"
 2807      73637265 
 2807      77206164 
 2807      6A757374 
 2807      6D656E74 
 2808              	.LC13:
 2809 00e0 2C20706F 		.ascii	", points used %d, deviation before %.3f after %.3f\000"
 2809      696E7473 
 2809      20757365 
 2809      64202564 
 2809      2C206465 
 2810 0113 00       		.space	1
 2811              	.LC14:
 2812 0114 25730A00 		.ascii	"%s\012\000"
 2813              	.LC15:
 2814 0118 4D616E75 		.ascii	"Manual corrections required:\000"
 2814      616C2063 
 2814      6F727265 
ARM GAS  /tmp/cckO1lQe.s 			page 51


 2814      6374696F 
 2814      6E732072 
 2815 0135 000000   		.space	3
 2816              	.LC16:
 2817 0138 20252E32 		.ascii	" %.2f turn %s (%.2fmm)\000"
 2817      66207475 
 2817      726E2025 
 2817      73202825 
 2817      2E32666D 
 2818              		.section	.rodata._ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 2819              		.align	2
 2820              	.LC17:
 2821 0000 4E756D62 		.ascii	"Number of calibration factors (%u) not equal to num"
 2821      6572206F 
 2821      66206361 
 2821      6C696272 
 2821      6174696F 
 2822 0033 62657220 		.ascii	"ber of leadscrews (%u)\000"
 2822      6F66206C 
 2822      65616473 
 2822      63726577 
 2822      73202825 
 2823              		.section	.rodata._ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%p
 2824              		.align	2
 2825              	.LC18:
 2826 0000 53706563 		.ascii	"Specify 1, 2, 3 or 4 X and Y coordinates in M671\000"
 2826      69667920 
 2826      312C2032 
 2826      2C203320 
 2826      6F722034 
 2827 0031 000000   		.space	3
 2828              	.LC19:
 2829 0034 5A206C65 		.ascii	"Z leadscrew coordinates are not configured\000"
 2829      61647363 
 2829      72657720 
 2829      636F6F72 
 2829      64696E61 
 2830 005f 00       		.space	1
 2831              	.LC20:
 2832 0060 5A206C65 		.ascii	"Z leadscrew coordinates\000"
 2832      61647363 
 2832      72657720 
 2832      636F6F72 
 2832      64696E61 
 2833              	.LC21:
 2834 0078 2028252E 		.ascii	" (%.1f,%.1f)\000"
 2834      31662C25 
 2834      2E316629 
 2834      00
 2835 0085 000000   		.space	3
 2836              	.LC22:
 2837 0088 2C206661 		.ascii	", factor %.02f, maximum correction %.02fmm, manual "
 2837      63746F72 
 2837      20252E30 
 2837      32662C20 
 2837      6D617869 
 2838 00bb 61646A75 		.ascii	"adjusting screw pitch %.02fmm\000"
ARM GAS  /tmp/cckO1lQe.s 			page 52


 2838      7374696E 
 2838      67207363 
 2838      72657720 
 2838      70697463 
 2839              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 2840              		.align	2
 2841              	.LC1:
 2842 0000 58595A00 		.ascii	"XYZ\000"
 2843              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 2844              		.align	2
 2845              	.LC0:
 2846 0000 58595A55 		.ascii	"XYZUVWABC\000"
 2846      56574142 
 2846      4300
 2847              		.section	.rodata._ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef.str1.4,"aMS",%progb
 2848              		.align	2
 2849              	.LC2:
 2850 0000 20252E33 		.ascii	" %.3f\000"
 2850      6600
 2851              		.section	.rodata._ZTV20ZLeadscrewKinematics,"a",%progbits
 2852              		.align	2
 2853              		.set	.LANCHOR0,. + 0
 2854              		.type	_ZTV20ZLeadscrewKinematics, %object
 2855              		.size	_ZTV20ZLeadscrewKinematics, 128
 2856              	_ZTV20ZLeadscrewKinematics:
 2857 0000 00000000 		.word	0
 2858 0004 00000000 		.word	0
 2859 0008 00000000 		.word	__cxa_pure_virtual
 2860 000c 00000000 		.word	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 2861 0010 00000000 		.word	__cxa_pure_virtual
 2862 0014 00000000 		.word	__cxa_pure_virtual
 2863 0018 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 2864 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 2865 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 2866 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 2867 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 2868 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 2869 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 2870 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 2871 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 2872 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 2873 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 2874 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 2875 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 2876 004c 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRm
 2877 0050 00000000 		.word	__cxa_pure_virtual
 2878 0054 00000000 		.word	__cxa_pure_virtual
 2879 0058 00000000 		.word	__cxa_pure_virtual
 2880 005c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 2881 0060 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 2882 0064 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 2883 0068 00000000 		.word	__cxa_pure_virtual
 2884 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 2885 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 2886 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 2887 0078 00000000 		.word	0
 2888 007c 00000000 		.word	0
ARM GAS  /tmp/cckO1lQe.s 			page 53


 2889              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
