ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 1


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
  14              		.text
  15              		.section	.text._ZN10Kinematics22SetCalibrationDefaultsEv,"axG",%progbits,_ZN10Kinematics22SetCalib
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	_ZN10Kinematics22SetCalibrationDefaultsEv
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  23              		.type	_ZN10Kinematics22SetCalibrationDefaultsEv, %function
  24              	_ZN10Kinematics22SetCalibrationDefaultsEv:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27              		@ link register save eliminated.
  28 0000 7047     		bx	lr
  29              		.size	_ZN10Kinematics22SetCalibrationDefaultsEv, .-_ZN10Kinematics22SetCalibrationDefaultsEv
  30 0002 00BF     		.section	.text._ZNK10Kinematics26WriteCalibrationParametersEP9FileStore,"axG",%progbits,_ZNK10Kine
  31              		.align	1
  32              		.p2align 2,,3
  33              		.weak	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
  34              		.syntax unified
  35              		.thumb
  36              		.thumb_func
  37              		.fpu fpv4-sp-d16
  38              		.type	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, %function
  39              	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 0120     		movs	r0, #1
  44 0002 7047     		bx	lr
  45              		.size	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore, .-_ZNK10Kinematics26WriteCalibrati
  46              		.section	.text._ZNK10Kinematics17GetTiltCorrectionEj,"axG",%progbits,_ZNK10Kinematics17GetTiltCorr
  47              		.align	1
  48              		.p2align 2,,3
  49              		.weak	_ZNK10Kinematics17GetTiltCorrectionEj
  50              		.syntax unified
  51              		.thumb
  52              		.thumb_func
  53              		.fpu fpv4-sp-d16
  54              		.type	_ZNK10Kinematics17GetTiltCorrectionEj, %function
  55              	_ZNK10Kinematics17GetTiltCorrectionEj:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 2


  58              		@ link register save eliminated.
  59 0000 9FED010A 		vldr.32	s0, .L5
  60 0004 7047     		bx	lr
  61              	.L6:
  62 0006 00BF     		.align	2
  63              	.L5:
  64 0008 00000000 		.word	0
  65              		.size	_ZNK10Kinematics17GetTiltCorrectionEj, .-_ZNK10Kinematics17GetTiltCorrectionEj
  66              		.section	.text._ZNK10Kinematics23AxesToHomeBeforeProbingEv,"axG",%progbits,_ZNK10Kinematics23AxesT
  67              		.align	1
  68              		.p2align 2,,3
  69              		.weak	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu fpv4-sp-d16
  74              		.type	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, %function
  75              	_ZNK10Kinematics23AxesToHomeBeforeProbingEv:
  76              		@ args = 0, pretend = 0, frame = 0
  77              		@ frame_needed = 0, uses_anonymous_args = 0
  78              		@ link register save eliminated.
  79 0000 0320     		movs	r0, #3
  80 0002 7047     		bx	lr
  81              		.size	_ZNK10Kinematics23AxesToHomeBeforeProbingEv, .-_ZNK10Kinematics23AxesToHomeBeforeProbingEv
  82              		.section	.text._ZNK10Kinematics13GetMotionTypeEj,"axG",%progbits,_ZNK10Kinematics13GetMotionTypeEj
  83              		.align	1
  84              		.p2align 2,,3
  85              		.weak	_ZNK10Kinematics13GetMotionTypeEj
  86              		.syntax unified
  87              		.thumb
  88              		.thumb_func
  89              		.fpu fpv4-sp-d16
  90              		.type	_ZNK10Kinematics13GetMotionTypeEj, %function
  91              	_ZNK10Kinematics13GetMotionTypeEj:
  92              		@ args = 0, pretend = 0, frame = 0
  93              		@ frame_needed = 0, uses_anonymous_args = 0
  94              		@ link register save eliminated.
  95 0000 0020     		movs	r0, #0
  96 0002 7047     		bx	lr
  97              		.size	_ZNK10Kinematics13GetMotionTypeEj, .-_ZNK10Kinematics13GetMotionTypeEj
  98              		.section	.text._ZNK10Kinematics16NumHomingButtonsEj,"axG",%progbits,_ZNK10Kinematics16NumHomingBut
  99              		.align	1
 100              		.p2align 2,,3
 101              		.weak	_ZNK10Kinematics16NumHomingButtonsEj
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu fpv4-sp-d16
 106              		.type	_ZNK10Kinematics16NumHomingButtonsEj, %function
 107              	_ZNK10Kinematics16NumHomingButtonsEj:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110              		@ link register save eliminated.
 111 0000 0846     		mov	r0, r1
 112 0002 7047     		bx	lr
 113              		.size	_ZNK10Kinematics16NumHomingButtonsEj, .-_ZNK10Kinematics16NumHomingButtonsEj
 114              		.section	.text._ZNK10Kinematics17HomingButtonNamesEv,"axG",%progbits,_ZNK10Kinematics17HomingButto
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 3


 115              		.align	1
 116              		.p2align 2,,3
 117              		.weak	_ZNK10Kinematics17HomingButtonNamesEv
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu fpv4-sp-d16
 122              		.type	_ZNK10Kinematics17HomingButtonNamesEv, %function
 123              	_ZNK10Kinematics17HomingButtonNamesEv:
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126              		@ link register save eliminated.
 127 0000 0048     		ldr	r0, .L11
 128 0002 7047     		bx	lr
 129              	.L12:
 130              		.align	2
 131              	.L11:
 132 0004 00000000 		.word	.LC0
 133              		.size	_ZNK10Kinematics17HomingButtonNamesEv, .-_ZNK10Kinematics17HomingButtonNamesEv
 134              		.section	.text._ZNK10Kinematics16MachineAxisNamesEv,"axG",%progbits,_ZNK10Kinematics16MachineAxisN
 135              		.align	1
 136              		.p2align 2,,3
 137              		.weak	_ZNK10Kinematics16MachineAxisNamesEv
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu fpv4-sp-d16
 142              		.type	_ZNK10Kinematics16MachineAxisNamesEv, %function
 143              	_ZNK10Kinematics16MachineAxisNamesEv:
 144              		@ args = 0, pretend = 0, frame = 0
 145              		@ frame_needed = 0, uses_anonymous_args = 0
 146              		@ link register save eliminated.
 147 0000 0048     		ldr	r0, .L14
 148 0002 7047     		bx	lr
 149              	.L15:
 150              		.align	2
 151              	.L14:
 152 0004 00000000 		.word	.LC1
 153              		.size	_ZNK10Kinematics16MachineAxisNamesEv, .-_ZNK10Kinematics16MachineAxisNamesEv
 154              		.section	.text._ZNK10Kinematics16AxesAssumedHomedEm,"axG",%progbits,_ZNK10Kinematics16AxesAssumedH
 155              		.align	1
 156              		.p2align 2,,3
 157              		.weak	_ZNK10Kinematics16AxesAssumedHomedEm
 158              		.syntax unified
 159              		.thumb
 160              		.thumb_func
 161              		.fpu fpv4-sp-d16
 162              		.type	_ZNK10Kinematics16AxesAssumedHomedEm, %function
 163              	_ZNK10Kinematics16AxesAssumedHomedEm:
 164              		@ args = 0, pretend = 0, frame = 0
 165              		@ frame_needed = 0, uses_anonymous_args = 0
 166              		@ link register save eliminated.
 167 0000 0846     		mov	r0, r1
 168 0002 7047     		bx	lr
 169              		.size	_ZNK10Kinematics16AxesAssumedHomedEm, .-_ZNK10Kinematics16AxesAssumedHomedEm
 170              		.section	.text._ZNK10Kinematics15MustBeHomedAxesEmb,"axG",%progbits,_ZNK10Kinematics15MustBeHomedA
 171              		.align	1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 4


 172              		.p2align 2,,3
 173              		.weak	_ZNK10Kinematics15MustBeHomedAxesEmb
 174              		.syntax unified
 175              		.thumb
 176              		.thumb_func
 177              		.fpu fpv4-sp-d16
 178              		.type	_ZNK10Kinematics15MustBeHomedAxesEmb, %function
 179              	_ZNK10Kinematics15MustBeHomedAxesEmb:
 180              		@ args = 0, pretend = 0, frame = 0
 181              		@ frame_needed = 0, uses_anonymous_args = 0
 182              		@ link register save eliminated.
 183 0000 002A     		cmp	r2, #0
 184 0002 14BF     		ite	ne
 185 0004 0846     		movne	r0, r1
 186 0006 0020     		moveq	r0, #0
 187 0008 7047     		bx	lr
 188              		.size	_ZNK10Kinematics15MustBeHomedAxesEmb, .-_ZNK10Kinematics15MustBeHomedAxesEmb
 189 000a 00BF     		.section	.text._ZNK10Kinematics24IsContinuousRotationAxisEj,"axG",%progbits,_ZNK10Kinematics24IsCo
 190              		.align	1
 191              		.p2align 2,,3
 192              		.weak	_ZNK10Kinematics24IsContinuousRotationAxisEj
 193              		.syntax unified
 194              		.thumb
 195              		.thumb_func
 196              		.fpu fpv4-sp-d16
 197              		.type	_ZNK10Kinematics24IsContinuousRotationAxisEj, %function
 198              	_ZNK10Kinematics24IsContinuousRotationAxisEj:
 199              		@ args = 0, pretend = 0, frame = 0
 200              		@ frame_needed = 0, uses_anonymous_args = 0
 201              		@ link register save eliminated.
 202 0000 0020     		movs	r0, #0
 203 0002 7047     		bx	lr
 204              		.size	_ZNK10Kinematics24IsContinuousRotationAxisEj, .-_ZNK10Kinematics24IsContinuousRotationAxisEj
 205              		.section	.text._ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv,"ax",%progbits
 206              		.align	1
 207              		.p2align 2,,3
 208              		.global	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 209              		.syntax unified
 210              		.thumb
 211              		.thumb_func
 212              		.fpu fpv4-sp-d16
 213              		.type	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv, %function
 214              	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217              		@ link register save eliminated.
 218 0000 0069     		ldr	r0, [r0, #16]
 219 0002 0128     		cmp	r0, #1
 220 0004 94BF     		ite	ls
 221 0006 0020     		movls	r0, #0
 222 0008 0120     		movhi	r0, #1
 223 000a 7047     		bx	lr
 224              		.size	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv, .-_ZNK20ZLeadscrewKinematics23Support
 225              		.section	.text._ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore,"ax",%progbits
 226              		.align	1
 227              		.p2align 2,,3
 228              		.global	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 5


 229              		.syntax unified
 230              		.thumb
 231              		.thumb_func
 232              		.fpu fpv4-sp-d16
 233              		.type	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore, %function
 234              	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore:
 235              		@ args = 0, pretend = 0, frame = 0
 236              		@ frame_needed = 0, uses_anonymous_args = 0
 237              		@ link register save eliminated.
 238 0000 0120     		movs	r0, #1
 239 0002 7047     		bx	lr
 240              		.size	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore, .-_ZNK20ZLeadscrewKinematics19W
 241              		.section	.text._ZN11FixedMatrixIdLj32ELj8EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj8EEclEjj
 242              		.align	1
 243              		.p2align 2,,3
 244              		.weak	_ZN11FixedMatrixIdLj32ELj8EEclEjj
 245              		.syntax unified
 246              		.thumb
 247              		.thumb_func
 248              		.fpu fpv4-sp-d16
 249              		.type	_ZN11FixedMatrixIdLj32ELj8EEclEjj, %function
 250              	_ZN11FixedMatrixIdLj32ELj8EEclEjj:
 251              		@ args = 0, pretend = 0, frame = 0
 252              		@ frame_needed = 0, uses_anonymous_args = 0
 253              		@ link register save eliminated.
 254 0000 0132     		adds	r2, r2, #1
 255 0002 02EBC102 		add	r2, r2, r1, lsl #3
 256 0006 00EBC200 		add	r0, r0, r2, lsl #3
 257 000a 7047     		bx	lr
 258              		.size	_ZN11FixedMatrixIdLj32ELj8EEclEjj, .-_ZN11FixedMatrixIdLj32ELj8EEclEjj
 259              		.section	.text._ZN11FixedMatrixIdLj8ELj9EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj8ELj9EEclEjj,c
 260              		.align	1
 261              		.p2align 2,,3
 262              		.weak	_ZN11FixedMatrixIdLj8ELj9EEclEjj
 263              		.syntax unified
 264              		.thumb
 265              		.thumb_func
 266              		.fpu fpv4-sp-d16
 267              		.type	_ZN11FixedMatrixIdLj8ELj9EEclEjj, %function
 268              	_ZN11FixedMatrixIdLj8ELj9EEclEjj:
 269              		@ args = 0, pretend = 0, frame = 0
 270              		@ frame_needed = 0, uses_anonymous_args = 0
 271              		@ link register save eliminated.
 272 0000 0132     		adds	r2, r2, #1
 273 0002 01EBC101 		add	r1, r1, r1, lsl #3
 274 0006 1144     		add	r1, r1, r2
 275 0008 00EBC100 		add	r0, r0, r1, lsl #3
 276 000c 7047     		bx	lr
 277              		.size	_ZN11FixedMatrixIdLj8ELj9EEclEjj, .-_ZN11FixedMatrixIdLj8ELj9EEclEjj
 278 000e 00BF     		.section	.text._ZN11FixedMatrixIdLj8ELj9EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj8ELj9EED5Ev,com
 279              		.align	1
 280              		.p2align 2,,3
 281              		.weak	_ZN11FixedMatrixIdLj8ELj9EED2Ev
 282              		.syntax unified
 283              		.thumb
 284              		.thumb_func
 285              		.fpu fpv4-sp-d16
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 6


 286              		.type	_ZN11FixedMatrixIdLj8ELj9EED2Ev, %function
 287              	_ZN11FixedMatrixIdLj8ELj9EED2Ev:
 288              		@ args = 0, pretend = 0, frame = 0
 289              		@ frame_needed = 0, uses_anonymous_args = 0
 290              		@ link register save eliminated.
 291 0000 7047     		bx	lr
 292              		.size	_ZN11FixedMatrixIdLj8ELj9EED2Ev, .-_ZN11FixedMatrixIdLj8ELj9EED2Ev
 293              		.weak	_ZN11FixedMatrixIdLj8ELj9EED1Ev
 294              		.thumb_set _ZN11FixedMatrixIdLj8ELj9EED1Ev,_ZN11FixedMatrixIdLj8ELj9EED2Ev
 295 0002 00BF     		.section	.text._ZN11FixedMatrixIdLj32ELj8EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj8EED5Ev,c
 296              		.align	1
 297              		.p2align 2,,3
 298              		.weak	_ZN11FixedMatrixIdLj32ELj8EED2Ev
 299              		.syntax unified
 300              		.thumb
 301              		.thumb_func
 302              		.fpu fpv4-sp-d16
 303              		.type	_ZN11FixedMatrixIdLj32ELj8EED2Ev, %function
 304              	_ZN11FixedMatrixIdLj32ELj8EED2Ev:
 305              		@ args = 0, pretend = 0, frame = 0
 306              		@ frame_needed = 0, uses_anonymous_args = 0
 307              		@ link register save eliminated.
 308 0000 7047     		bx	lr
 309              		.size	_ZN11FixedMatrixIdLj32ELj8EED2Ev, .-_ZN11FixedMatrixIdLj32ELj8EED2Ev
 310              		.weak	_ZN11FixedMatrixIdLj32ELj8EED1Ev
 311              		.thumb_set _ZN11FixedMatrixIdLj32ELj8EED1Ev,_ZN11FixedMatrixIdLj32ELj8EED2Ev
 312 0002 00BF     		.section	.text._ZNK11FixedMatrixIdLj8ELj9EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj8ELj9EE4ro
 313              		.align	1
 314              		.p2align 2,,3
 315              		.weak	_ZNK11FixedMatrixIdLj8ELj9EE4rowsEv
 316              		.syntax unified
 317              		.thumb
 318              		.thumb_func
 319              		.fpu fpv4-sp-d16
 320              		.type	_ZNK11FixedMatrixIdLj8ELj9EE4rowsEv, %function
 321              	_ZNK11FixedMatrixIdLj8ELj9EE4rowsEv:
 322              		@ args = 0, pretend = 0, frame = 0
 323              		@ frame_needed = 0, uses_anonymous_args = 0
 324              		@ link register save eliminated.
 325 0000 0820     		movs	r0, #8
 326 0002 7047     		bx	lr
 327              		.size	_ZNK11FixedMatrixIdLj8ELj9EE4rowsEv, .-_ZNK11FixedMatrixIdLj8ELj9EE4rowsEv
 328              		.section	.text._ZNK11FixedMatrixIdLj8ELj9EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj8ELj9EE4co
 329              		.align	1
 330              		.p2align 2,,3
 331              		.weak	_ZNK11FixedMatrixIdLj8ELj9EE4colsEv
 332              		.syntax unified
 333              		.thumb
 334              		.thumb_func
 335              		.fpu fpv4-sp-d16
 336              		.type	_ZNK11FixedMatrixIdLj8ELj9EE4colsEv, %function
 337              	_ZNK11FixedMatrixIdLj8ELj9EE4colsEv:
 338              		@ args = 0, pretend = 0, frame = 0
 339              		@ frame_needed = 0, uses_anonymous_args = 0
 340              		@ link register save eliminated.
 341 0000 0920     		movs	r0, #9
 342 0002 7047     		bx	lr
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 7


 343              		.size	_ZNK11FixedMatrixIdLj8ELj9EE4colsEv, .-_ZNK11FixedMatrixIdLj8ELj9EE4colsEv
 344              		.section	.text._ZNK11FixedMatrixIdLj8ELj9EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj8ELj9EEclEjj
 345              		.align	1
 346              		.p2align 2,,3
 347              		.weak	_ZNK11FixedMatrixIdLj8ELj9EEclEjj
 348              		.syntax unified
 349              		.thumb
 350              		.thumb_func
 351              		.fpu fpv4-sp-d16
 352              		.type	_ZNK11FixedMatrixIdLj8ELj9EEclEjj, %function
 353              	_ZNK11FixedMatrixIdLj8ELj9EEclEjj:
 354              		@ args = 0, pretend = 0, frame = 0
 355              		@ frame_needed = 0, uses_anonymous_args = 0
 356              		@ link register save eliminated.
 357 0000 0132     		adds	r2, r2, #1
 358 0002 01EBC101 		add	r1, r1, r1, lsl #3
 359 0006 1144     		add	r1, r1, r2
 360 0008 00EBC100 		add	r0, r0, r1, lsl #3
 361 000c 7047     		bx	lr
 362              		.size	_ZNK11FixedMatrixIdLj8ELj9EEclEjj, .-_ZNK11FixedMatrixIdLj8ELj9EEclEjj
 363 000e 00BF     		.section	.text._ZNK11FixedMatrixIdLj32ELj8EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj8EE4
 364              		.align	1
 365              		.p2align 2,,3
 366              		.weak	_ZNK11FixedMatrixIdLj32ELj8EE4rowsEv
 367              		.syntax unified
 368              		.thumb
 369              		.thumb_func
 370              		.fpu fpv4-sp-d16
 371              		.type	_ZNK11FixedMatrixIdLj32ELj8EE4rowsEv, %function
 372              	_ZNK11FixedMatrixIdLj32ELj8EE4rowsEv:
 373              		@ args = 0, pretend = 0, frame = 0
 374              		@ frame_needed = 0, uses_anonymous_args = 0
 375              		@ link register save eliminated.
 376 0000 2020     		movs	r0, #32
 377 0002 7047     		bx	lr
 378              		.size	_ZNK11FixedMatrixIdLj32ELj8EE4rowsEv, .-_ZNK11FixedMatrixIdLj32ELj8EE4rowsEv
 379              		.section	.text._ZNK11FixedMatrixIdLj32ELj8EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj8EE4
 380              		.align	1
 381              		.p2align 2,,3
 382              		.weak	_ZNK11FixedMatrixIdLj32ELj8EE4colsEv
 383              		.syntax unified
 384              		.thumb
 385              		.thumb_func
 386              		.fpu fpv4-sp-d16
 387              		.type	_ZNK11FixedMatrixIdLj32ELj8EE4colsEv, %function
 388              	_ZNK11FixedMatrixIdLj32ELj8EE4colsEv:
 389              		@ args = 0, pretend = 0, frame = 0
 390              		@ frame_needed = 0, uses_anonymous_args = 0
 391              		@ link register save eliminated.
 392 0000 0820     		movs	r0, #8
 393 0002 7047     		bx	lr
 394              		.size	_ZNK11FixedMatrixIdLj32ELj8EE4colsEv, .-_ZNK11FixedMatrixIdLj32ELj8EE4colsEv
 395              		.section	.text._ZNK11FixedMatrixIdLj32ELj8EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj32ELj8EEclE
 396              		.align	1
 397              		.p2align 2,,3
 398              		.weak	_ZNK11FixedMatrixIdLj32ELj8EEclEjj
 399              		.syntax unified
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 8


 400              		.thumb
 401              		.thumb_func
 402              		.fpu fpv4-sp-d16
 403              		.type	_ZNK11FixedMatrixIdLj32ELj8EEclEjj, %function
 404              	_ZNK11FixedMatrixIdLj32ELj8EEclEjj:
 405              		@ args = 0, pretend = 0, frame = 0
 406              		@ frame_needed = 0, uses_anonymous_args = 0
 407              		@ link register save eliminated.
 408 0000 0132     		adds	r2, r2, #1
 409 0002 02EBC102 		add	r2, r2, r1, lsl #3
 410 0006 00EBC200 		add	r0, r0, r2, lsl #3
 411 000a 7047     		bx	lr
 412              		.size	_ZNK11FixedMatrixIdLj32ELj8EEclEjj, .-_ZNK11FixedMatrixIdLj32ELj8EEclEjj
 413              		.section	.text._ZN11FixedMatrixIdLj32ELj8EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj32ELj8EED5Ev,c
 414              		.align	1
 415              		.p2align 2,,3
 416              		.weak	_ZN11FixedMatrixIdLj32ELj8EED0Ev
 417              		.syntax unified
 418              		.thumb
 419              		.thumb_func
 420              		.fpu fpv4-sp-d16
 421              		.type	_ZN11FixedMatrixIdLj32ELj8EED0Ev, %function
 422              	_ZN11FixedMatrixIdLj32ELj8EED0Ev:
 423              		@ args = 0, pretend = 0, frame = 0
 424              		@ frame_needed = 0, uses_anonymous_args = 0
 425 0000 10B5     		push	{r4, lr}
 426 0002 40F60801 		movw	r1, #2056
 427 0006 0446     		mov	r4, r0
 428 0008 FFF7FEFF 		bl	_ZdlPvj
 429 000c 2046     		mov	r0, r4
 430 000e 10BD     		pop	{r4, pc}
 431              		.size	_ZN11FixedMatrixIdLj32ELj8EED0Ev, .-_ZN11FixedMatrixIdLj32ELj8EED0Ev
 432              		.section	.text._ZN11FixedMatrixIdLj8ELj9EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj8ELj9EED5Ev,com
 433              		.align	1
 434              		.p2align 2,,3
 435              		.weak	_ZN11FixedMatrixIdLj8ELj9EED0Ev
 436              		.syntax unified
 437              		.thumb
 438              		.thumb_func
 439              		.fpu fpv4-sp-d16
 440              		.type	_ZN11FixedMatrixIdLj8ELj9EED0Ev, %function
 441              	_ZN11FixedMatrixIdLj8ELj9EED0Ev:
 442              		@ args = 0, pretend = 0, frame = 0
 443              		@ frame_needed = 0, uses_anonymous_args = 0
 444 0000 10B5     		push	{r4, lr}
 445 0002 4FF41271 		mov	r1, #584
 446 0006 0446     		mov	r4, r0
 447 0008 FFF7FEFF 		bl	_ZdlPvj
 448 000c 2046     		mov	r0, r4
 449 000e 10BD     		pop	{r4, pc}
 450              		.size	_ZN11FixedMatrixIdLj8ELj9EED0Ev, .-_ZN11FixedMatrixIdLj8ELj9EED0Ev
 451              		.section	.text._ZN20ZLeadscrewKinematicsC2E14KinematicsType,"ax",%progbits
 452              		.align	1
 453              		.p2align 2,,3
 454              		.global	_ZN20ZLeadscrewKinematicsC2E14KinematicsType
 455              		.syntax unified
 456              		.thumb
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 9


 457              		.thumb_func
 458              		.fpu fpv4-sp-d16
 459              		.type	_ZN20ZLeadscrewKinematicsC2E14KinematicsType, %function
 460              	_ZN20ZLeadscrewKinematicsC2E14KinematicsType:
 461              		@ args = 0, pretend = 0, frame = 0
 462              		@ frame_needed = 0, uses_anonymous_args = 0
 463 0000 10B5     		push	{r4, lr}
 464 0002 0023     		movs	r3, #0
 465 0004 0446     		mov	r4, r0
 466 0006 0122     		movs	r2, #1
 467 0008 DFED090A 		vldr.32	s1, .L39
 468 000c BFEE000A 		vmov.f32	s0, #-1.0e+0
 469 0010 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffbb
 470 0014 074B     		ldr	r3, .L39+4
 471 0016 2360     		str	r3, [r4]
 472 0018 0021     		movs	r1, #0
 473 001a 4FF07E53 		mov	r3, #1065353216
 474 001e 4FF07C52 		mov	r2, #1056964608
 475 0022 2161     		str	r1, [r4, #16]
 476 0024 E265     		str	r2, [r4, #92]	@ float
 477 0026 6365     		str	r3, [r4, #84]	@ float
 478 0028 A365     		str	r3, [r4, #88]	@ float
 479 002a 2046     		mov	r0, r4
 480 002c 10BD     		pop	{r4, pc}
 481              	.L40:
 482 002e 00BF     		.align	2
 483              	.L39:
 484 0030 00000000 		.word	0
 485 0034 08000000 		.word	.LANCHOR0+8
 486              		.size	_ZN20ZLeadscrewKinematicsC2E14KinematicsType, .-_ZN20ZLeadscrewKinematicsC2E14KinematicsType
 487              		.global	_ZN20ZLeadscrewKinematicsC1E14KinematicsType
 488              		.thumb_set _ZN20ZLeadscrewKinematicsC1E14KinematicsType,_ZN20ZLeadscrewKinematicsC2E14KinematicsTy
 489              		.section	.text._ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb,"ax",%progbits
 490              		.align	1
 491              		.p2align 2,,3
 492              		.global	_ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb
 493              		.syntax unified
 494              		.thumb
 495              		.thumb_func
 496              		.fpu fpv4-sp-d16
 497              		.type	_ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb, %function
 498              	_ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb:
 499              		@ args = 0, pretend = 0, frame = 0
 500              		@ frame_needed = 0, uses_anonymous_args = 0
 501 0000 10B5     		push	{r4, lr}
 502 0002 0023     		movs	r3, #0
 503 0004 0446     		mov	r4, r0
 504 0006 FFF7FEFF 		bl	_ZN10KinematicsC2E14KinematicsTypeffbb
 505 000a 064B     		ldr	r3, .L43
 506 000c 2360     		str	r3, [r4]
 507 000e 0021     		movs	r1, #0
 508 0010 4FF07E53 		mov	r3, #1065353216
 509 0014 4FF07C52 		mov	r2, #1056964608
 510 0018 2161     		str	r1, [r4, #16]
 511 001a E265     		str	r2, [r4, #92]	@ float
 512 001c 6365     		str	r3, [r4, #84]	@ float
 513 001e A365     		str	r3, [r4, #88]	@ float
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 10


 514 0020 2046     		mov	r0, r4
 515 0022 10BD     		pop	{r4, pc}
 516              	.L44:
 517              		.align	2
 518              	.L43:
 519 0024 08000000 		.word	.LANCHOR0+8
 520              		.size	_ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb, .-_ZN20ZLeadscrewKinematicsC2E14KinematicsT
 521              		.global	_ZN20ZLeadscrewKinematicsC1E14KinematicsTypeffb
 522              		.thumb_set _ZN20ZLeadscrewKinematicsC1E14KinematicsTypeffb,_ZN20ZLeadscrewKinematicsC2E14Kinematic
 523              		.section	.text._ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef,"ax",%progbits
 524              		.align	1
 525              		.p2align 2,,3
 526              		.global	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef
 527              		.syntax unified
 528              		.thumb
 529              		.thumb_func
 530              		.fpu fpv4-sp-d16
 531              		.type	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef, %function
 532              	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef:
 533              		@ args = 0, pretend = 0, frame = 0
 534              		@ frame_needed = 0, uses_anonymous_args = 0
 535 0000 0369     		ldr	r3, [r0, #16]
 536 0002 9BB1     		cbz	r3, .L53
 537 0004 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 538 0008 DFF82480 		ldr	r8, .L56
 539 000c 1746     		mov	r7, r2
 540 000e 0646     		mov	r6, r0
 541 0010 0D46     		mov	r5, r1
 542 0012 0024     		movs	r4, #0
 543              	.L47:
 544 0014 F5E80223 		ldrd	r2, [r5], #8
 545 0018 4146     		mov	r1, r8
 546 001a 3846     		mov	r0, r7
 547 001c FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 548 0020 3369     		ldr	r3, [r6, #16]
 549 0022 0134     		adds	r4, r4, #1
 550 0024 A342     		cmp	r3, r4
 551 0026 F5D8     		bhi	.L47
 552 0028 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 553              	.L53:
 554 002c 7047     		bx	lr
 555              	.L57:
 556 002e 00BF     		.align	2
 557              	.L56:
 558 0030 00000000 		.word	.LC2
 559              		.size	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef, .-_ZNK20ZLeadscrewKinematics1
 560              		.global	__aeabi_d2f
 561              		.global	__aeabi_ddiv
 562              		.global	__aeabi_dmul
 563              		.global	__aeabi_dsub
 564              		.section	.text._ZN11FixedMatrixIdLj8ELj9EE11GaussJordanEPdj,"axG",%progbits,_ZN11FixedMatrixIdLj8E
 565              		.align	1
 566              		.p2align 2,,3
 567              		.weak	_ZN11FixedMatrixIdLj8ELj9EE11GaussJordanEPdj
 568              		.syntax unified
 569              		.thumb
 570              		.thumb_func
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 11


 571              		.fpu fpv4-sp-d16
 572              		.type	_ZN11FixedMatrixIdLj8ELj9EE11GaussJordanEPdj, %function
 573              	_ZN11FixedMatrixIdLj8ELj9EE11GaussJordanEPdj:
 574              		@ args = 0, pretend = 0, frame = 64
 575              		@ frame_needed = 0, uses_anonymous_args = 0
 576 0000 002A     		cmp	r2, #0
 577 0002 00F01882 		beq	.L122
 578 0006 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 579 000a 2DED088B 		vpush.64	{d8, d9, d10, d11}
 580 000e 91B0     		sub	sp, sp, #68
 581 0010 AB4E     		ldr	r6, .L138+8
 582 0012 0192     		str	r2, [sp, #4]
 583 0014 0246     		mov	r2, r0
 584 0016 0F91     		str	r1, [sp, #60]
 585 0018 52F8083B 		ldr	r3, [r2], #8
 586 001c 0E92     		str	r2, [sp, #56]
 587 001e 9F68     		ldr	r7, [r3, #8]
 588 0020 BA46     		mov	r10, r7
 589 0022 0023     		movs	r3, #0
 590 0024 B245     		cmp	r10, r6
 591 0026 8346     		mov	fp, r0
 592 0028 9FEDA3BB 		vldr.64	d11, .L138
 593 002c 0B93     		str	r3, [sp, #44]
 594 002e CDE90C33 		strd	r3, r3, [sp, #48]
 595 0032 0593     		str	r3, [sp, #20]
 596 0034 40F09281 		bne	.L60
 597              	.L135:
 598 0038 0E9B     		ldr	r3, [sp, #56]
 599 003a 0B9A     		ldr	r2, [sp, #44]
 600 003c 9818     		adds	r0, r3, r2
 601              	.L61:
 602 003e D0E90001 		ldrd	r0, [r0]
 603 0042 FFF7FEFF 		bl	__aeabi_d2f
 604 0046 059B     		ldr	r3, [sp, #20]
 605 0048 0199     		ldr	r1, [sp, #4]
 606 004a 5A1C     		adds	r2, r3, #1
 607 004c 07EE900A 		vmov	s15, r0
 608 0050 9142     		cmp	r1, r2
 609 0052 0792     		str	r2, [sp, #28]
 610 0054 B0EEE78A 		vabs.f32	s16, s15
 611 0058 40F28780 		bls	.L62
 612 005c 0B98     		ldr	r0, [sp, #44]
 613 005e 0BF15003 		add	r3, fp, #80
 614 0062 0344     		add	r3, r3, r0
 615 0064 0293     		str	r3, [sp, #8]
 616 0066 8B1A     		subs	r3, r1, r2
 617 0068 0493     		str	r3, [sp, #16]
 618 006a 0025     		movs	r5, #0
 619 006c 5446     		mov	r4, r10
 620 006e 03E0     		b	.L76
 621              	.L65:
 622 0070 049B     		ldr	r3, [sp, #16]
 623 0072 0135     		adds	r5, r5, #1
 624 0074 AB42     		cmp	r3, r5
 625 0076 77D0     		beq	.L125
 626              	.L76:
 627 0078 079B     		ldr	r3, [sp, #28]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 12


 628 007a B442     		cmp	r4, r6
 629 007c 03EB0509 		add	r9, r3, r5
 630 0080 40F0CB80 		bne	.L63
 631 0084 029B     		ldr	r3, [sp, #8]
 632 0086 05EBC500 		add	r0, r5, r5, lsl #3
 633 008a 03EBC000 		add	r0, r3, r0, lsl #3
 634              	.L64:
 635 008e D0E90001 		ldrd	r0, [r0]
 636 0092 FFF7FEFF 		bl	__aeabi_d2f
 637 0096 07EE900A 		vmov	s15, r0
 638 009a B0EEE7AA 		vabs.f32	s20, s15
 639 009e B4EEC8AA 		vcmpe.f32	s20, s16
 640 00a2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 641 00a6 E3DD     		ble	.L65
 642 00a8 059A     		ldr	r2, [sp, #20]
 643 00aa 4A45     		cmp	r2, r9
 644 00ac 56D0     		beq	.L111
 645 00ae 0C9B     		ldr	r3, [sp, #48]
 646 00b0 082B     		cmp	r3, #8
 647 00b2 53D8     		bhi	.L111
 648 00b4 834B     		ldr	r3, .L138+12
 649 00b6 05EBC507 		add	r7, r5, r5, lsl #3
 650 00ba DB1B     		subs	r3, r3, r7
 651 00bc 4FEAC30A 		lsl	r10, r3, #3
 652 00c0 029B     		ldr	r3, [sp, #8]
 653 00c2 03EBC707 		add	r7, r3, r7, lsl #3
 654 00c6 5346     		mov	r3, r10
 655 00c8 9046     		mov	r8, r2
 656 00ca CA46     		mov	r10, r9
 657 00cc 9946     		mov	r9, r3
 658 00ce 1AE0     		b	.L75
 659              	.L126:
 660 00d0 07EB0900 		add	r0, r7, r9
 661 00d4 B442     		cmp	r4, r6
 662 00d6 90ED008B 		vldr.64	d8, [r0]
 663 00da 21D1     		bne	.L69
 664              	.L127:
 665 00dc 3846     		mov	r0, r7
 666 00de B442     		cmp	r4, r6
 667 00e0 90ED009B 		vldr.64	d9, [r0]
 668 00e4 27D1     		bne	.L71
 669              	.L128:
 670 00e6 07EB0900 		add	r0, r7, r9
 671 00ea B442     		cmp	r4, r6
 672 00ec 80ED009B 		vstr.64	d9, [r0]
 673 00f0 2CD1     		bne	.L73
 674              	.L129:
 675 00f2 3846     		mov	r0, r7
 676              	.L74:
 677 00f4 08F10108 		add	r8, r8, #1
 678 00f8 B8F1090F 		cmp	r8, #9
 679 00fc 80ED008B 		vstr.64	d8, [r0]
 680 0100 07F10807 		add	r7, r7, #8
 681 0104 2AD0     		beq	.L111
 682              	.L75:
 683 0106 B442     		cmp	r4, r6
 684 0108 E2D0     		beq	.L126
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 13


 685 010a 4246     		mov	r2, r8
 686 010c 0599     		ldr	r1, [sp, #20]
 687 010e 5846     		mov	r0, fp
 688 0110 A047     		blx	r4
 689 0112 DBF80020 		ldr	r2, [fp]
 690 0116 9468     		ldr	r4, [r2, #8]
 691 0118 B442     		cmp	r4, r6
 692 011a 90ED008B 		vldr.64	d8, [r0]
 693 011e DDD0     		beq	.L127
 694              	.L69:
 695 0120 4246     		mov	r2, r8
 696 0122 5146     		mov	r1, r10
 697 0124 5846     		mov	r0, fp
 698 0126 A047     		blx	r4
 699 0128 DBF80020 		ldr	r2, [fp]
 700 012c 9468     		ldr	r4, [r2, #8]
 701 012e B442     		cmp	r4, r6
 702 0130 90ED009B 		vldr.64	d9, [r0]
 703 0134 D7D0     		beq	.L128
 704              	.L71:
 705 0136 4246     		mov	r2, r8
 706 0138 0599     		ldr	r1, [sp, #20]
 707 013a 5846     		mov	r0, fp
 708 013c A047     		blx	r4
 709 013e DBF80020 		ldr	r2, [fp]
 710 0142 9468     		ldr	r4, [r2, #8]
 711 0144 B442     		cmp	r4, r6
 712 0146 80ED009B 		vstr.64	d9, [r0]
 713 014a D2D0     		beq	.L129
 714              	.L73:
 715 014c 4246     		mov	r2, r8
 716 014e 5146     		mov	r1, r10
 717 0150 5846     		mov	r0, fp
 718 0152 A047     		blx	r4
 719 0154 DBF80020 		ldr	r2, [fp]
 720 0158 9468     		ldr	r4, [r2, #8]
 721 015a CBE7     		b	.L74
 722              	.L111:
 723 015c 049B     		ldr	r3, [sp, #16]
 724 015e 0135     		adds	r5, r5, #1
 725 0160 AB42     		cmp	r3, r5
 726 0162 B0EE4A8A 		vmov.f32	s16, s20
 727 0166 87D1     		bne	.L76
 728              	.L125:
 729 0168 A246     		mov	r10, r4
 730              	.L62:
 731 016a B245     		cmp	r10, r6
 732 016c 40F01F81 		bne	.L77
 733 0170 0E9B     		ldr	r3, [sp, #56]
 734 0172 0B9A     		ldr	r2, [sp, #44]
 735 0174 9818     		adds	r0, r3, r2
 736              	.L78:
 737 0176 90ED007B 		vldr.64	d7, [r0]
 738 017a 0C9B     		ldr	r3, [sp, #48]
 739 017c 8DED087B 		vstr.64	d7, [sp, #32]
 740 0180 002B     		cmp	r3, #0
 741 0182 69D0     		beq	.L92
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 14


 742 0184 079B     		ldr	r3, [sp, #28]
 743 0186 0BEBC303 		add	r3, fp, r3, lsl #3
 744 018a 0693     		str	r3, [sp, #24]
 745 018c 0D9B     		ldr	r3, [sp, #52]
 746 018e DB00     		lsls	r3, r3, #3
 747 0190 0493     		str	r3, [sp, #16]
 748 0192 0023     		movs	r3, #0
 749 0194 0A93     		str	r3, [sp, #40]
 750 0196 5746     		mov	r7, r10
 751              	.L93:
 752 0198 B742     		cmp	r7, r6
 753 019a 40F0F880 		bne	.L82
 754 019e 0698     		ldr	r0, [sp, #24]
 755              	.L83:
 756 01a0 DDE90823 		ldrd	r2, [sp, #32]
 757 01a4 D0E90001 		ldrd	r0, [r0]
 758 01a8 FFF7FEFF 		bl	__aeabi_ddiv
 759 01ac B742     		cmp	r7, r6
 760 01ae CDE90201 		strd	r0, [sp, #8]
 761 01b2 40F0E480 		bne	.L84
 762 01b6 0698     		ldr	r0, [sp, #24]
 763              	.L85:
 764 01b8 019B     		ldr	r3, [sp, #4]
 765 01ba 079D     		ldr	r5, [sp, #28]
 766 01bc 1A46     		mov	r2, r3
 767 01be AA42     		cmp	r2, r5
 768 01c0 80ED00BB 		vstr.64	d11, [r0]
 769 01c4 3BD3     		bcc	.L86
 770 01c6 069B     		ldr	r3, [sp, #24]
 771 01c8 D946     		mov	r9, fp
 772 01ca 03F10804 		add	r4, r3, #8
 773 01ce 1AE0     		b	.L91
 774              	.L131:
 775 01d0 049B     		ldr	r3, [sp, #16]
 776 01d2 1819     		adds	r0, r3, r4
 777              	.L88:
 778 01d4 D0E90023 		ldrd	r2, [r0]
 779 01d8 DDE90201 		ldrd	r0, [sp, #8]
 780 01dc FFF7FEFF 		bl	__aeabi_dmul
 781 01e0 B742     		cmp	r7, r6
 782 01e2 8246     		mov	r10, r0
 783 01e4 8B46     		mov	fp, r1
 784 01e6 20D1     		bne	.L89
 785 01e8 A046     		mov	r8, r4
 786              	.L90:
 787 01ea 5B46     		mov	r3, fp
 788 01ec D8E90001 		ldrd	r0, [r8]
 789 01f0 5246     		mov	r2, r10
 790 01f2 FFF7FEFF 		bl	__aeabi_dsub
 791 01f6 019B     		ldr	r3, [sp, #4]
 792 01f8 0135     		adds	r5, r5, #1
 793 01fa AB42     		cmp	r3, r5
 794 01fc 04F10804 		add	r4, r4, #8
 795 0200 C8E90001 		strd	r0, [r8]
 796 0204 1AD3     		bcc	.L130
 797              	.L91:
 798 0206 B742     		cmp	r7, r6
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 15


 799 0208 E2D0     		beq	.L131
 800 020a 2A46     		mov	r2, r5
 801 020c 0599     		ldr	r1, [sp, #20]
 802 020e 4846     		mov	r0, r9
 803 0210 B847     		blx	r7
 804 0212 D9F80030 		ldr	r3, [r9]
 805 0216 9F68     		ldr	r7, [r3, #8]
 806 0218 DCE7     		b	.L88
 807              	.L63:
 808 021a 059A     		ldr	r2, [sp, #20]
 809 021c 4946     		mov	r1, r9
 810 021e 5846     		mov	r0, fp
 811 0220 A047     		blx	r4
 812 0222 DBF80030 		ldr	r3, [fp]
 813 0226 9C68     		ldr	r4, [r3, #8]
 814 0228 31E7     		b	.L64
 815              	.L89:
 816 022a 2A46     		mov	r2, r5
 817 022c 0A99     		ldr	r1, [sp, #40]
 818 022e 4846     		mov	r0, r9
 819 0230 B847     		blx	r7
 820 0232 D9F80030 		ldr	r3, [r9]
 821 0236 8046     		mov	r8, r0
 822 0238 9F68     		ldr	r7, [r3, #8]
 823 023a D6E7     		b	.L90
 824              	.L130:
 825 023c CB46     		mov	fp, r9
 826              	.L86:
 827 023e 069A     		ldr	r2, [sp, #24]
 828 0240 0A9B     		ldr	r3, [sp, #40]
 829 0242 4832     		adds	r2, r2, #72
 830 0244 0692     		str	r2, [sp, #24]
 831 0246 049A     		ldr	r2, [sp, #16]
 832 0248 483A     		subs	r2, r2, #72
 833 024a 0492     		str	r2, [sp, #16]
 834 024c 059A     		ldr	r2, [sp, #20]
 835 024e 0133     		adds	r3, r3, #1
 836 0250 9342     		cmp	r3, r2
 837 0252 0A93     		str	r3, [sp, #40]
 838 0254 A0D1     		bne	.L93
 839 0256 BA46     		mov	r10, r7
 840              	.L92:
 841 0258 019B     		ldr	r3, [sp, #4]
 842 025a 079A     		ldr	r2, [sp, #28]
 843 025c 9342     		cmp	r3, r2
 844 025e 00F0AF80 		beq	.L132
 845 0262 0799     		ldr	r1, [sp, #28]
 846 0264 0D9B     		ldr	r3, [sp, #52]
 847 0266 0A91     		str	r1, [sp, #40]
 848 0268 01EBC102 		add	r2, r1, r1, lsl #3
 849 026c 9A1A     		subs	r2, r3, r2
 850 026e D200     		lsls	r2, r2, #3
 851 0270 0492     		str	r2, [sp, #16]
 852 0272 0B9A     		ldr	r2, [sp, #44]
 853 0274 0BF15003 		add	r3, fp, #80
 854 0278 1344     		add	r3, r3, r2
 855 027a 0693     		str	r3, [sp, #24]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 16


 856 027c 5746     		mov	r7, r10
 857              	.L104:
 858 027e B742     		cmp	r7, r6
 859 0280 40F08D80 		bne	.L94
 860 0284 0698     		ldr	r0, [sp, #24]
 861              	.L95:
 862 0286 DDE90823 		ldrd	r2, [sp, #32]
 863 028a D0E90001 		ldrd	r0, [r0]
 864 028e FFF7FEFF 		bl	__aeabi_ddiv
 865 0292 B742     		cmp	r7, r6
 866 0294 CDE90201 		strd	r0, [sp, #8]
 867 0298 69D1     		bne	.L96
 868 029a 0698     		ldr	r0, [sp, #24]
 869              	.L97:
 870 029c 019B     		ldr	r3, [sp, #4]
 871 029e 079D     		ldr	r5, [sp, #28]
 872 02a0 1A46     		mov	r2, r3
 873 02a2 AA42     		cmp	r2, r5
 874 02a4 80ED00BB 		vstr.64	d11, [r0]
 875 02a8 3DD3     		bcc	.L98
 876 02aa 069B     		ldr	r3, [sp, #24]
 877 02ac D946     		mov	r9, fp
 878 02ae 03F10804 		add	r4, r3, #8
 879 02b2 24E0     		b	.L103
 880              	.L139:
 881 02b4 AFF30080 		.align	3
 882              	.L138:
 883 02b8 00000000 		.word	0
 884 02bc 00000000 		.word	0
 885 02c0 00000000 		.word	_ZN11FixedMatrixIdLj8ELj9EEclEjj
 886 02c4 F7FFFF1F 		.word	536870903
 887              	.L134:
 888 02c8 049B     		ldr	r3, [sp, #16]
 889 02ca 1819     		adds	r0, r3, r4
 890              	.L100:
 891 02cc D0E90023 		ldrd	r2, [r0]
 892 02d0 DDE90201 		ldrd	r0, [sp, #8]
 893 02d4 FFF7FEFF 		bl	__aeabi_dmul
 894 02d8 B742     		cmp	r7, r6
 895 02da 8246     		mov	r10, r0
 896 02dc 8B46     		mov	fp, r1
 897 02de 18D1     		bne	.L101
 898 02e0 A046     		mov	r8, r4
 899              	.L102:
 900 02e2 5B46     		mov	r3, fp
 901 02e4 D8E90001 		ldrd	r0, [r8]
 902 02e8 5246     		mov	r2, r10
 903 02ea FFF7FEFF 		bl	__aeabi_dsub
 904 02ee 019B     		ldr	r3, [sp, #4]
 905 02f0 0135     		adds	r5, r5, #1
 906 02f2 AB42     		cmp	r3, r5
 907 02f4 04F10804 		add	r4, r4, #8
 908 02f8 C8E90001 		strd	r0, [r8]
 909 02fc 12D3     		bcc	.L133
 910              	.L103:
 911 02fe B742     		cmp	r7, r6
 912 0300 E2D0     		beq	.L134
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 17


 913 0302 2A46     		mov	r2, r5
 914 0304 0599     		ldr	r1, [sp, #20]
 915 0306 4846     		mov	r0, r9
 916 0308 B847     		blx	r7
 917 030a D9F80030 		ldr	r3, [r9]
 918 030e 9F68     		ldr	r7, [r3, #8]
 919 0310 DCE7     		b	.L100
 920              	.L101:
 921 0312 2A46     		mov	r2, r5
 922 0314 0A99     		ldr	r1, [sp, #40]
 923 0316 4846     		mov	r0, r9
 924 0318 B847     		blx	r7
 925 031a D9F80030 		ldr	r3, [r9]
 926 031e 8046     		mov	r8, r0
 927 0320 9F68     		ldr	r7, [r3, #8]
 928 0322 DEE7     		b	.L102
 929              	.L133:
 930 0324 CB46     		mov	fp, r9
 931              	.L98:
 932 0326 069A     		ldr	r2, [sp, #24]
 933 0328 0A9B     		ldr	r3, [sp, #40]
 934 032a 4832     		adds	r2, r2, #72
 935 032c 0692     		str	r2, [sp, #24]
 936 032e 049A     		ldr	r2, [sp, #16]
 937 0330 483A     		subs	r2, r2, #72
 938 0332 0492     		str	r2, [sp, #16]
 939 0334 019A     		ldr	r2, [sp, #4]
 940 0336 0133     		adds	r3, r3, #1
 941 0338 9A42     		cmp	r2, r3
 942 033a 0A93     		str	r3, [sp, #40]
 943 033c 9FD1     		bne	.L104
 944 033e 0C9B     		ldr	r3, [sp, #48]
 945 0340 0133     		adds	r3, r3, #1
 946 0342 0C93     		str	r3, [sp, #48]
 947 0344 0D9B     		ldr	r3, [sp, #52]
 948 0346 0933     		adds	r3, r3, #9
 949 0348 0D93     		str	r3, [sp, #52]
 950 034a 0B9B     		ldr	r3, [sp, #44]
 951 034c BA46     		mov	r10, r7
 952 034e 5033     		adds	r3, r3, #80
 953 0350 0B93     		str	r3, [sp, #44]
 954 0352 B245     		cmp	r10, r6
 955 0354 079B     		ldr	r3, [sp, #28]
 956 0356 0593     		str	r3, [sp, #20]
 957 0358 3FF46EAE 		beq	.L135
 958              	.L60:
 959 035c 0599     		ldr	r1, [sp, #20]
 960 035e 5846     		mov	r0, fp
 961 0360 0A46     		mov	r2, r1
 962 0362 D047     		blx	r10
 963 0364 DBF80030 		ldr	r3, [fp]
 964 0368 D3F808A0 		ldr	r10, [r3, #8]
 965 036c 67E6     		b	.L61
 966              	.L96:
 967 036e 059A     		ldr	r2, [sp, #20]
 968 0370 0A99     		ldr	r1, [sp, #40]
 969 0372 5846     		mov	r0, fp
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 18


 970 0374 B847     		blx	r7
 971 0376 DBF80030 		ldr	r3, [fp]
 972 037a 9F68     		ldr	r7, [r3, #8]
 973 037c 8EE7     		b	.L97
 974              	.L84:
 975 037e 059A     		ldr	r2, [sp, #20]
 976 0380 0A99     		ldr	r1, [sp, #40]
 977 0382 5846     		mov	r0, fp
 978 0384 B847     		blx	r7
 979 0386 DBF80030 		ldr	r3, [fp]
 980 038a 9F68     		ldr	r7, [r3, #8]
 981 038c 14E7     		b	.L85
 982              	.L82:
 983 038e 059A     		ldr	r2, [sp, #20]
 984 0390 0A99     		ldr	r1, [sp, #40]
 985 0392 5846     		mov	r0, fp
 986 0394 B847     		blx	r7
 987 0396 DBF80030 		ldr	r3, [fp]
 988 039a 9F68     		ldr	r7, [r3, #8]
 989 039c 00E7     		b	.L83
 990              	.L94:
 991 039e 059A     		ldr	r2, [sp, #20]
 992 03a0 0A99     		ldr	r1, [sp, #40]
 993 03a2 5846     		mov	r0, fp
 994 03a4 B847     		blx	r7
 995 03a6 DBF80030 		ldr	r3, [fp]
 996 03aa 9F68     		ldr	r7, [r3, #8]
 997 03ac 6BE7     		b	.L95
 998              	.L77:
 999 03ae 0599     		ldr	r1, [sp, #20]
 1000 03b0 5846     		mov	r0, fp
 1001 03b2 0A46     		mov	r2, r1
 1002 03b4 D047     		blx	r10
 1003 03b6 DBF80030 		ldr	r3, [fp]
 1004 03ba D3F808A0 		ldr	r10, [r3, #8]
 1005 03be DAE6     		b	.L78
 1006              	.L132:
 1007 03c0 059C     		ldr	r4, [sp, #20]
 1008 03c2 0234     		adds	r4, r4, #2
 1009 03c4 0BEBC404 		add	r4, fp, r4, lsl #3
 1010 03c8 DDE90E59 		ldrd	r5, r9, [sp, #56]
 1011 03cc 4FF00008 		mov	r8, #0
 1012 03d0 5346     		mov	r3, r10
 1013 03d2 5F46     		mov	r7, fp
 1014 03d4 18E0     		b	.L81
 1015              	.L136:
 1016 03d6 2046     		mov	r0, r4
 1017 03d8 B342     		cmp	r3, r6
 1018 03da D0E900AB 		ldrd	r10, [r0]
 1019 03de 1FD1     		bne	.L108
 1020              	.L137:
 1021 03e0 2B46     		mov	r3, r5
 1022              	.L109:
 1023 03e2 D3E90023 		ldrd	r2, [r3]
 1024 03e6 5046     		mov	r0, r10
 1025 03e8 5946     		mov	r1, fp
 1026 03ea FFF7FEFF 		bl	__aeabi_ddiv
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 19


 1027 03ee 079B     		ldr	r3, [sp, #28]
 1028 03f0 08F10108 		add	r8, r8, #1
 1029 03f4 4345     		cmp	r3, r8
 1030 03f6 05F15005 		add	r5, r5, #80
 1031 03fa 04F14804 		add	r4, r4, #72
 1032 03fe E9E80201 		strd	r0, [r9], #8
 1033 0402 13D0     		beq	.L58
 1034 0404 3B68     		ldr	r3, [r7]
 1035 0406 9B68     		ldr	r3, [r3, #8]
 1036              	.L81:
 1037 0408 B342     		cmp	r3, r6
 1038 040a E4D0     		beq	.L136
 1039 040c 079A     		ldr	r2, [sp, #28]
 1040 040e 4146     		mov	r1, r8
 1041 0410 3846     		mov	r0, r7
 1042 0412 9847     		blx	r3
 1043 0414 3B68     		ldr	r3, [r7]
 1044 0416 9B68     		ldr	r3, [r3, #8]
 1045 0418 B342     		cmp	r3, r6
 1046 041a D0E900AB 		ldrd	r10, [r0]
 1047 041e DFD0     		beq	.L137
 1048              	.L108:
 1049 0420 4246     		mov	r2, r8
 1050 0422 4146     		mov	r1, r8
 1051 0424 3846     		mov	r0, r7
 1052 0426 9847     		blx	r3
 1053 0428 0346     		mov	r3, r0
 1054 042a DAE7     		b	.L109
 1055              	.L58:
 1056 042c 11B0     		add	sp, sp, #68
 1057              		@ sp needed
 1058 042e BDEC088B 		vldm	sp!, {d8-d11}
 1059 0432 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1060              	.L122:
 1061 0436 7047     		bx	lr
 1062              		.size	_ZN11FixedMatrixIdLj8ELj9EE11GaussJordanEPdj, .-_ZN11FixedMatrixIdLj8ELj9EE11GaussJordanEPdj
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
 1075              		@ args = 0, pretend = 0, frame = 3496
 1076              		@ frame_needed = 0, uses_anonymous_args = 0
 1077 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1078 0004 2DED0E8B 		vpush.64	{d8, d9, d10, d11, d12, d13, d14}
 1079 0008 ADF6BC5D 		subw	sp, sp, #3516
 1080 000c 8046     		mov	r8, r0
 1081 000e 8990     		str	r0, [sp, #548]
 1082 0010 1046     		mov	r0, r2
 1083 0012 8893     		str	r3, [sp, #544]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 20


 1084 0014 3192     		str	r2, [sp, #196]
 1085 0016 8946     		mov	r9, r1
 1086 0018 1191     		str	r1, [sp, #68]
 1087 001a FFF7FEFF 		bl	_ZNK19RandomProbePointSet19NumberOfProbePointsEv
 1088 001e 9FED0A7B 		vldr.64	d7, .L228
 1089 0022 0B4B     		ldr	r3, .L228+8
 1090 0024 CDF8B035 		str	r3, [sp, #1456]
 1091 0028 0590     		str	r0, [sp, #20]
 1092 002a 8DED0E7B 		vstr.64	d7, [sp, #56]
 1093 002e 0028     		cmp	r0, #0
 1094 0030 01F07280 		beq	.L180
 1095 0034 074B     		ldr	r3, .L228+12
 1096 0036 3093     		str	r3, [sp, #192]
 1097 0038 DAAB     		add	r3, sp, #872
 1098 003a 4FF0000B 		mov	fp, #0
 1099 003e 0DF5B66A 		add	r10, sp, #1456
 1100 0042 1093     		str	r3, [sp, #64]
 1101 0044 E3E0     		b	.L146
 1102              	.L229:
 1103 0046 00BF     		.align	3
 1104              	.L228:
 1105 0048 00000000 		.word	0
 1106 004c 00000000 		.word	0
 1107 0050 08000000 		.word	_ZTV11FixedMatrixIdLj32ELj8EE+8
 1108 0054 00000000 		.word	reprap
 1109              	.L221:
 1110 0058 B9F1040F 		cmp	r9, #4
 1111 005c 00F0E482 		beq	.L144
 1112 0060 B9F1020F 		cmp	r9, #2
 1113 0064 40F0CB80 		bne	.L142
 1114 0068 98ED069A 		vldr.32	s18, [r8, #24]
 1115 006c 98ED058A 		vldr.32	s16, [r8, #20]
 1116 0070 39EE48AA 		vsub.f32	s20, s18, s16
 1117 0074 1AEE100A 		vmov	r0, s20
 1118 0078 FFF7FEFF 		bl	__aeabi_f2d
 1119 007c D8ED0E9A 		vldr.32	s19, [r8, #56]
 1120 0080 D8ED0D8A 		vldr.32	s17, [r8, #52]
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
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 21


 1141 00b6 0B46     		mov	r3, r1
 1142 00b8 2046     		mov	r0, r4
 1143 00ba 2946     		mov	r1, r5
 1144 00bc FFF7FEFF 		bl	__aeabi_dadd
 1145 00c0 CDE91401 		strd	r0, [sp, #80]
 1146 00c4 19EE900A 		vmov	r0, s19
 1147 00c8 FFF7FEFF 		bl	__aeabi_f2d
 1148 00cc 69EEA87A 		vmul.f32	s15, s19, s17
 1149 00d0 0446     		mov	r4, r0
 1150 00d2 17EE900A 		vmov	r0, s15
 1151 00d6 0D46     		mov	r5, r1
 1152 00d8 FFF7FEFF 		bl	__aeabi_f2d
 1153 00dc 109B     		ldr	r3, [sp, #64]
 1154 00de D3ED007A 		vldr.32	s15, [r3]
 1155 00e2 6AEEA77A 		vmul.f32	s15, s21, s15
 1156 00e6 CDE90601 		strd	r0, [sp, #24]
 1157 00ea 17EE900A 		vmov	r0, s15
 1158 00ee FFF7FEFF 		bl	__aeabi_f2d
 1159 00f2 CDE90801 		strd	r0, [sp, #32]
 1160 00f6 19EE100A 		vmov	r0, s18
 1161 00fa FFF7FEFF 		bl	__aeabi_f2d
 1162 00fe 69EE087A 		vmul.f32	s15, s18, s16
 1163 0102 0646     		mov	r6, r0
 1164 0104 17EE900A 		vmov	r0, s15
 1165 0108 0F46     		mov	r7, r1
 1166 010a FFF7FEFF 		bl	__aeabi_f2d
 1167 010e DDED9A7A 		vldr.32	s15, [sp, #616]
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
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 22


 1198 016e 01F10043 		add	r3, r1, #-2147483648
 1199 0172 3490     		str	r0, [sp, #208]
 1200 0174 3593     		str	r3, [sp, #212]
 1201 0176 DDE93401 		ldrd	r0, [sp, #208]
 1202 017a DDE91423 		ldrd	r2, [sp, #80]
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
 1241 01ee DDE91423 		ldrd	r2, [sp, #80]
 1242 01f2 DDE93601 		ldrd	r0, [sp, #216]
 1243 01f6 FFF7FEFF 		bl	__aeabi_ddiv
 1244 01fa CAE90401 		strd	r0, [r10, #16]
 1245              	.L142:
 1246 01fe 059B     		ldr	r3, [sp, #20]
 1247 0200 0BF1010B 		add	fp, fp, #1
 1248 0204 5B45     		cmp	r3, fp
 1249 0206 0AF1400A 		add	r10, r10, #64
 1250 020a 00F0A080 		beq	.L141
 1251              	.L146:
 1252 020e 309B     		ldr	r3, [sp, #192]
 1253 0210 D868     		ldr	r0, [r3, #12]	@ unaligned
 1254 0212 0023     		movs	r3, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 23


 1255 0214 9AAA     		add	r2, sp, #616
 1256 0216 0093     		str	r3, [sp]
 1257 0218 5946     		mov	r1, fp
 1258 021a 109B     		ldr	r3, [sp, #64]
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
 1271 0244 7FF408AF 		bne	.L221
 1272 0248 D8ED0FDA 		vldr.32	s27, [r8, #60]
 1273 024c D8ED05CA 		vldr.32	s25, [r8, #20]
 1274 0250 D8ED06BA 		vldr.32	s23, [r8, #24]
 1275 0254 98ED07DA 		vldr.32	s26, [r8, #28]
 1276 0258 98ED0EBA 		vldr.32	s22, [r8, #56]
 1277 025c D8ED0DAA 		vldr.32	s21, [r8, #52]
 1278 0260 6DEEAC8A 		vmul.f32	s17, s27, s25
 1279 0264 F1EE4DEA 		vneg.f32	s29, s26
 1280 0268 F0EE687A 		vmov.f32	s15, s17
 1281 026c DBEEAD7A 		vfnms.f32	s15, s23, s27
 1282 0270 0BF1010B 		add	fp, fp, #1
 1283 0274 0AF1400A 		add	r10, r10, #64
 1284 0278 B1EE6BEA 		vneg.f32	s28, s23
 1285 027c EEEE8B7A 		vfma.f32	s15, s29, s22
 1286 0280 F1EE6C9A 		vneg.f32	s19, s25
 1287 0284 ECEE8B7A 		vfma.f32	s15, s25, s22
 1288 0288 EDEE2A7A 		vfma.f32	s15, s26, s21
 1289 028c EEEE2A7A 		vfma.f32	s15, s28, s21
 1290 0290 17EE900A 		vmov	r0, s15
 1291 0294 FFF7FEFF 		bl	__aeabi_f2d
 1292 0298 9DED9ACA 		vldr.32	s24, [sp, #616]
 1293 029c 109B     		ldr	r3, [sp, #64]
 1294 029e 2DEE8C8A 		vmul.f32	s16, s27, s24
 1295 02a2 2BEE0C9A 		vmul.f32	s18, s22, s24
 1296 02a6 F0EE487A 		vmov.f32	s15, s16
 1297 02aa DBEEAD7A 		vfnms.f32	s15, s23, s27
 1298 02ae 0446     		mov	r4, r0
 1299 02b0 0D46     		mov	r5, r1
 1300 02b2 93ED00AA 		vldr.32	s20, [r3]
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
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 24


 1312 02da DDE93801 		ldrd	r0, [sp, #224]
 1313 02de FFF7FEFF 		bl	__aeabi_ddiv
 1314 02e2 78EEC87A 		vsub.f32	s15, s17, s16
 1315 02e6 4AE90E01 		strd	r0, [r10, #-56]
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
 1327 0312 4AE90C01 		strd	r0, [r10, #-48]
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
 1343 0346 4AE90A01 		strd	r0, [r10, #-40]
 1344 034a 7FF460AF 		bne	.L146
 1345              	.L141:
 1346 034e 309B     		ldr	r3, [sp, #192]
 1347 0350 D3F80831 		ldr	r3, [r3, #264]
 1348 0354 13F01003 		ands	r3, r3, #16
 1349 0358 1C93     		str	r3, [sp, #112]
 1350 035a 40F05D86 		bne	.L222
 1351 035e 109A     		ldr	r2, [sp, #64]
 1352 0360 AD4B     		ldr	r3, .L230+8
 1353 0362 1360     		str	r3, [r2]
 1354 0364 119B     		ldr	r3, [sp, #68]
 1355 0366 002B     		cmp	r3, #0
 1356 0368 00F09E80 		beq	.L155
 1357              	.L179:
 1358 036c 319D     		ldr	r5, [sp, #196]
 1359 036e 9FEDA87B 		vldr.64	d7, .L230
 1360 0372 D5F80801 		ldr	r0, [r5, #264]	@ float
 1361 0376 8DED147B 		vstr.64	d7, [sp, #80]
 1362 037a FFF7FEFF 		bl	__aeabi_f2d
 1363 037e 119B     		ldr	r3, [sp, #68]
 1364 0380 1490     		str	r0, [sp, #80]
 1365 0382 C3EB4372 		rsb	r2, r3, r3, lsl #29
 1366 0386 D200     		lsls	r2, r2, #3
 1367 0388 DB00     		lsls	r3, r3, #3
 1368 038a 0832     		adds	r2, r2, #8
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 25


 1369 038c 0DF5B66B 		add	fp, sp, #1456
 1370 0390 1892     		str	r2, [sp, #96]
 1371 0392 0BEB0302 		add	r2, fp, r3
 1372 0396 1692     		str	r2, [sp, #88]
 1373 0398 109A     		ldr	r2, [sp, #64]
 1374 039a 0F46     		mov	r7, r1
 1375 039c 1A44     		add	r2, r2, r3
 1376 039e 0599     		ldr	r1, [sp, #20]
 1377 03a0 0C92     		str	r2, [sp, #48]
 1378 03a2 0DF5B762 		add	r2, sp, #1464
 1379 03a6 D318     		adds	r3, r2, r3
 1380 03a8 8C01     		lsls	r4, r1, #6
 1381 03aa 05F58470 		add	r0, r5, #264
 1382 03ae 0893     		str	r3, [sp, #32]
 1383 03b0 A4F15003 		sub	r3, r4, #80
 1384 03b4 07F10045 		add	r5, r7, #-2147483648
 1385 03b8 0A93     		str	r3, [sp, #40]
 1386 03ba 00EB8103 		add	r3, r0, r1, lsl #2
 1387 03be 1595     		str	r5, [sp, #84]
 1388 03c0 1A93     		str	r3, [sp, #104]
 1389              	.L154:
 1390 03c2 9BED027B 		vldr.64	d7, [fp, #8]
 1391 03c6 189B     		ldr	r3, [sp, #96]
 1392 03c8 0C9A     		ldr	r2, [sp, #48]
 1393 03ca 8DED067B 		vstr.64	d7, [sp, #24]
 1394 03ce 0DF5B764 		add	r4, sp, #1464
 1395 03d2 03EB020A 		add	r10, r3, r2
 1396              	.L151:
 1397 03d6 D4E90023 		ldrd	r2, [r4]
 1398 03da DDE90601 		ldrd	r0, [sp, #24]
 1399 03de FFF7FEFF 		bl	__aeabi_dmul
 1400 03e2 059B     		ldr	r3, [sp, #20]
 1401 03e4 012B     		cmp	r3, #1
 1402 03e6 0646     		mov	r6, r0
 1403 03e8 0F46     		mov	r7, r1
 1404 03ea 04F10809 		add	r9, r4, #8
 1405 03ee 17D9     		bls	.L149
 1406 03f0 0A9B     		ldr	r3, [sp, #40]
 1407 03f2 083C     		subs	r4, r4, #8
 1408 03f4 03EB0908 		add	r8, r3, r9
 1409 03f8 5D46     		mov	r5, fp
 1410              	.L150:
 1411 03fa D4E91223 		ldrd	r2, [r4, #72]
 1412 03fe D5E91201 		ldrd	r0, [r5, #72]
 1413 0402 FFF7FEFF 		bl	__aeabi_dmul
 1414 0406 0246     		mov	r2, r0
 1415 0408 0B46     		mov	r3, r1
 1416 040a 3046     		mov	r0, r6
 1417 040c 3946     		mov	r1, r7
 1418 040e FFF7FEFF 		bl	__aeabi_dadd
 1419 0412 4034     		adds	r4, r4, #64
 1420 0414 A045     		cmp	r8, r4
 1421 0416 0646     		mov	r6, r0
 1422 0418 0F46     		mov	r7, r1
 1423 041a 05F14005 		add	r5, r5, #64
 1424 041e ECD1     		bne	.L150
 1425              	.L149:
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 26


 1426 0420 089B     		ldr	r3, [sp, #32]
 1427 0422 4B45     		cmp	r3, r9
 1428 0424 EAE80267 		strd	r6, [r10], #8
 1429 0428 4C46     		mov	r4, r9
 1430 042a D4D1     		bne	.L151
 1431 042c DDE91423 		ldrd	r2, [sp, #80]
 1432 0430 DDE90601 		ldrd	r0, [sp, #24]
 1433 0434 FFF7FEFF 		bl	__aeabi_dmul
 1434 0438 059B     		ldr	r3, [sp, #20]
 1435 043a 012B     		cmp	r3, #1
 1436 043c 0446     		mov	r4, r0
 1437 043e 0D46     		mov	r5, r1
 1438 0440 1FD9     		bls	.L152
 1439 0442 319B     		ldr	r3, [sp, #196]
 1440 0444 DDF868A0 		ldr	r10, [sp, #104]
 1441 0448 03F58677 		add	r7, r3, #268
 1442 044c 5E46     		mov	r6, fp
 1443              	.L153:
 1444 044e 57F8040B 		ldr	r0, [r7], #4	@ float
 1445 0452 FFF7FEFF 		bl	__aeabi_f2d
 1446 0456 01F10049 		add	r9, r1, #-2147483648
 1447 045a D6E91223 		ldrd	r2, [r6, #72]
 1448 045e 4946     		mov	r1, r9
 1449 0460 8046     		mov	r8, r0
 1450 0462 FFF7FEFF 		bl	__aeabi_dmul
 1451 0466 0246     		mov	r2, r0
 1452 0468 0B46     		mov	r3, r1
 1453 046a 2046     		mov	r0, r4
 1454 046c 2946     		mov	r1, r5
 1455 046e FFF7FEFF 		bl	__aeabi_dadd
 1456 0472 BA45     		cmp	r10, r7
 1457 0474 0446     		mov	r4, r0
 1458 0476 0D46     		mov	r5, r1
 1459 0478 06F14006 		add	r6, r6, #64
 1460 047c E7D1     		bne	.L153
 1461 047e CDE91289 		strd	r8, [sp, #72]
 1462              	.L152:
 1463 0482 0C9B     		ldr	r3, [sp, #48]
 1464 0484 C3E90245 		strd	r4, [r3, #8]
 1465 0488 4833     		adds	r3, r3, #72
 1466 048a 0C93     		str	r3, [sp, #48]
 1467 048c 169B     		ldr	r3, [sp, #88]
 1468 048e 0BF1080B 		add	fp, fp, #8
 1469 0492 9B45     		cmp	fp, r3
 1470 0494 95D1     		bne	.L154
 1471              	.L148:
 1472 0496 1C9B     		ldr	r3, [sp, #112]
 1473 0498 33B1     		cbz	r3, .L155
 1474 049a 119A     		ldr	r2, [sp, #68]
 1475 049c 1099     		ldr	r1, [sp, #64]
 1476 049e 5F48     		ldr	r0, .L230+12
 1477 04a0 1346     		mov	r3, r2
 1478 04a2 0133     		adds	r3, r3, #1
 1479 04a4 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 1480              	.L155:
 1481 04a8 8AA9     		add	r1, sp, #552
 1482 04aa DDE91002 		ldrd	r0, r2, [sp, #64]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 27


 1483 04ae FFF7FEFF 		bl	_ZN11FixedMatrixIdLj8ELj9EE11GaussJordanEPdj
 1484 04b2 309B     		ldr	r3, [sp, #192]
 1485 04b4 D3F80831 		ldr	r3, [r3, #264]
 1486 04b8 13F01003 		ands	r3, r3, #16
 1487 04bc 0893     		str	r3, [sp, #32]
 1488 04be 40F0CC85 		bne	.L223
 1489 04c2 059B     		ldr	r3, [sp, #20]
 1490 04c4 002B     		cmp	r3, #0
 1491 04c6 00F02D86 		beq	.L224
 1492              	.L178:
 1493 04ca 9FED517B 		vldr.64	d7, .L230
 1494 04ce 319B     		ldr	r3, [sp, #196]
 1495 04d0 8DED067B 		vstr.64	d7, [sp, #24]
 1496 04d4 03F5847B 		add	fp, r3, #264
 1497 04d8 119B     		ldr	r3, [sp, #68]
 1498 04da 8AAA     		add	r2, sp, #552
 1499 04dc 0DF51A7A 		add	r10, sp, #616
 1500 04e0 02EBC308 		add	r8, r2, r3, lsl #3
 1501 04e4 4FF00009 		mov	r9, #0
 1502              	.L161:
 1503 04e8 5BF8040B 		ldr	r0, [fp], #4	@ float
 1504 04ec FFF7FEFF 		bl	__aeabi_f2d
 1505 04f0 119B     		ldr	r3, [sp, #68]
 1506 04f2 0646     		mov	r6, r0
 1507 04f4 0F46     		mov	r7, r1
 1508 04f6 EAE80267 		strd	r6, [r10], #8
 1509 04fa B3B1     		cbz	r3, .L158
 1510 04fc 0DF5B763 		add	r3, sp, #1464
 1511 0500 03EB8915 		add	r5, r3, r9, lsl #6
 1512 0504 8AAC     		add	r4, sp, #552
 1513              	.L159:
 1514 0506 F5E80223 		ldrd	r2, [r5], #8
 1515 050a F4E80201 		ldrd	r0, [r4], #8
 1516 050e FFF7FEFF 		bl	__aeabi_dmul
 1517 0512 0246     		mov	r2, r0
 1518 0514 0B46     		mov	r3, r1
 1519 0516 3046     		mov	r0, r6
 1520 0518 3946     		mov	r1, r7
 1521 051a FFF7FEFF 		bl	__aeabi_dadd
 1522 051e A045     		cmp	r8, r4
 1523 0520 0646     		mov	r6, r0
 1524 0522 0F46     		mov	r7, r1
 1525 0524 EFD1     		bne	.L159
 1526 0526 4AE90267 		strd	r6, [r10, #-8]
 1527              	.L158:
 1528 052a 3246     		mov	r2, r6
 1529 052c 3B46     		mov	r3, r7
 1530 052e 3046     		mov	r0, r6
 1531 0530 3946     		mov	r1, r7
 1532 0532 FFF7FEFF 		bl	__aeabi_dmul
 1533 0536 0B46     		mov	r3, r1
 1534 0538 0246     		mov	r2, r0
 1535 053a DDE90601 		ldrd	r0, [sp, #24]
 1536 053e FFF7FEFF 		bl	__aeabi_dadd
 1537 0542 059B     		ldr	r3, [sp, #20]
 1538 0544 09F10109 		add	r9, r9, #1
 1539 0548 4B45     		cmp	r3, r9
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 28


 1540 054a CDE90601 		strd	r0, [sp, #24]
 1541 054e CBD8     		bhi	.L161
 1542              	.L160:
 1543 0550 089B     		ldr	r3, [sp, #32]
 1544 0552 23B1     		cbz	r3, .L220
 1545 0554 059A     		ldr	r2, [sp, #20]
 1546 0556 3248     		ldr	r0, .L230+16
 1547 0558 9AA9     		add	r1, sp, #616
 1548 055a FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 1549              	.L220:
 1550 055e 119B     		ldr	r3, [sp, #68]
 1551 0560 002B     		cmp	r3, #0
 1552 0562 00F00085 		beq	.L163
 1553 0566 4FF00008 		mov	r8, #0
 1554 056a DDF824A2 		ldr	r10, [sp, #548]
 1555 056e DDF844B0 		ldr	fp, [sp, #68]
 1556 0572 C146     		mov	r9, r8
 1557 0574 4646     		mov	r6, r8
 1558 0576 8AAF     		add	r7, sp, #552
 1559              	.L166:
 1560 0578 F7E80245 		ldrd	r4, [r7], #8
 1561 057c 2246     		mov	r2, r4
 1562 057e 2B46     		mov	r3, r5
 1563 0580 2046     		mov	r0, r4
 1564 0582 2946     		mov	r1, r5
 1565 0584 FFF7FEFF 		bl	__aeabi_dcmpun
 1566 0588 0028     		cmp	r0, #0
 1567 058a 40F0E884 		bne	.L181
 1568 058e DAF85400 		ldr	r0, [r10, #84]	@ float
 1569 0592 FFF7FEFF 		bl	__aeabi_f2d
 1570 0596 2246     		mov	r2, r4
 1571 0598 2B46     		mov	r3, r5
 1572 059a FFF7FEFF 		bl	__aeabi_dmul
 1573 059e 47E90201 		strd	r0, [r7, #-8]
 1574 05a2 FFF7FEFF 		bl	__aeabi_d2f
 1575 05a6 07EE100A 		vmov	s14, r0
 1576 05aa DAED167A 		vldr.32	s15, [r10, #88]
 1577 05ae B0EEC77A 		vabs.f32	s14, s14
 1578 05b2 B4EE677A 		vcmp.f32	s14, s15
 1579 05b6 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1580 05ba C8BF     		it	gt
 1581 05bc 4FF00108 		movgt	r8, #1
 1582              	.L165:
 1583 05c0 0136     		adds	r6, r6, #1
 1584 05c2 B345     		cmp	fp, r6
 1585 05c4 D8D8     		bhi	.L166
 1586 05c6 B9F1000F 		cmp	r9, #0
 1587 05ca 40F03B85 		bne	.L225
 1588 05ce 309B     		ldr	r3, [sp, #192]
 1589 05d0 899C     		ldr	r4, [sp, #548]
 1590 05d2 5A68     		ldr	r2, [r3, #4]
 1591 05d4 2369     		ldr	r3, [r4, #16]
 1592 05d6 D2F84423 		ldr	r2, [r2, #836]
 1593 05da 9A42     		cmp	r2, r3
 1594 05dc 40F0CC84 		bne	.L169
 1595 05e0 B8F1000F 		cmp	r8, #0
 1596 05e4 00F05185 		beq	.L170
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 29


 1597 05e8 A06D     		ldr	r0, [r4, #88]	@ float
 1598 05ea FFF7FEFF 		bl	__aeabi_f2d
 1599 05ee 889D     		ldr	r5, [sp, #544]
 1600 05f0 0246     		mov	r2, r0
 1601 05f2 0B46     		mov	r3, r1
 1602 05f4 2846     		mov	r0, r5
 1603 05f6 0B49     		ldr	r1, .L230+20
 1604 05f8 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1605 05fc 2A46     		mov	r2, r5
 1606 05fe 8AA9     		add	r1, sp, #552
 1607 0600 2046     		mov	r0, r4
 1608 0602 C146     		mov	r9, r8
 1609 0604 FFF7FEFF 		bl	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef
 1610 0608 00F0F7BC 		b	.L168
 1611              	.L231:
 1612 060c AFF30080 		.align	3
 1613              	.L230:
 1614 0610 00000000 		.word	0
 1615 0614 00000000 		.word	0
 1616 0618 08000000 		.word	_ZTV11FixedMatrixIdLj8ELj9EE+8
 1617 061c 20000000 		.word	.LC6
 1618 0620 4C000000 		.word	.LC9
 1619 0624 84000000 		.word	.LC11
 1620              	.L144:
 1621 0628 98ED05CA 		vldr.32	s24, [r8, #20]
 1622 062c D8ED06BA 		vldr.32	s23, [r8, #24]
 1623 0630 6CEE2B7A 		vmul.f32	s15, s24, s23
 1624 0634 17EE900A 		vmov	r0, s15
 1625 0638 FFF7FEFF 		bl	__aeabi_f2d
 1626 063c 98ED07BA 		vldr.32	s22, [r8, #28]
 1627 0640 6CEE0B7A 		vmul.f32	s15, s24, s22
 1628 0644 CDE90601 		strd	r0, [sp, #24]
 1629 0648 17EE900A 		vmov	r0, s15
 1630 064c FFF7FEFF 		bl	__aeabi_f2d
 1631 0650 D8ED08AA 		vldr.32	s21, [r8, #32]
 1632 0654 6CEE2A7A 		vmul.f32	s15, s24, s21
 1633 0658 CDE90801 		strd	r0, [sp, #32]
 1634 065c 17EE900A 		vmov	r0, s15
 1635 0660 FFF7FEFF 		bl	__aeabi_f2d
 1636 0664 6BEE8B7A 		vmul.f32	s15, s23, s22
 1637 0668 CDE90A01 		strd	r0, [sp, #40]
 1638 066c 17EE900A 		vmov	r0, s15
 1639 0670 FFF7FEFF 		bl	__aeabi_f2d
 1640 0674 6BEEAA7A 		vmul.f32	s15, s23, s21
 1641 0678 CDE90C01 		strd	r0, [sp, #48]
 1642 067c 17EE900A 		vmov	r0, s15
 1643 0680 FFF7FEFF 		bl	__aeabi_f2d
 1644 0684 6BEE2A7A 		vmul.f32	s15, s22, s21
 1645 0688 0646     		mov	r6, r0
 1646 068a 17EE900A 		vmov	r0, s15
 1647 068e 0F46     		mov	r7, r1
 1648 0690 FFF7FEFF 		bl	__aeabi_f2d
 1649 0694 98ED0DAA 		vldr.32	s20, [r8, #52]
 1650 0698 D8ED0E9A 		vldr.32	s19, [r8, #56]
 1651 069c 6AEE297A 		vmul.f32	s15, s20, s19
 1652 06a0 0446     		mov	r4, r0
 1653 06a2 17EE900A 		vmov	r0, s15
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 30


 1654 06a6 0D46     		mov	r5, r1
 1655 06a8 FFF7FEFF 		bl	__aeabi_f2d
 1656 06ac 98ED0F9A 		vldr.32	s18, [r8, #60]
 1657 06b0 6AEE097A 		vmul.f32	s15, s20, s18
 1658 06b4 CDE91401 		strd	r0, [sp, #80]
 1659 06b8 17EE900A 		vmov	r0, s15
 1660 06bc FFF7FEFF 		bl	__aeabi_f2d
 1661 06c0 D8ED108A 		vldr.32	s17, [r8, #64]
 1662 06c4 6AEE287A 		vmul.f32	s15, s20, s17
 1663 06c8 CDE91601 		strd	r0, [sp, #88]
 1664 06cc 17EE900A 		vmov	r0, s15
 1665 06d0 FFF7FEFF 		bl	__aeabi_f2d
 1666 06d4 69EE897A 		vmul.f32	s15, s19, s18
 1667 06d8 CDE91801 		strd	r0, [sp, #96]
 1668 06dc 17EE900A 		vmov	r0, s15
 1669 06e0 FFF7FEFF 		bl	__aeabi_f2d
 1670 06e4 69EEA87A 		vmul.f32	s15, s19, s17
 1671 06e8 CDE91A01 		strd	r0, [sp, #104]
 1672 06ec 17EE900A 		vmov	r0, s15
 1673 06f0 FFF7FEFF 		bl	__aeabi_f2d
 1674 06f4 69EE287A 		vmul.f32	s15, s18, s17
 1675 06f8 CDE91C01 		strd	r0, [sp, #112]
 1676 06fc 17EE900A 		vmov	r0, s15
 1677 0700 FFF7FEFF 		bl	__aeabi_f2d
 1678 0704 0246     		mov	r2, r0
 1679 0706 0B46     		mov	r3, r1
 1680 0708 3046     		mov	r0, r6
 1681 070a 3946     		mov	r1, r7
 1682 070c CDE92C23 		strd	r2, [sp, #176]
 1683 0710 FFF7FEFF 		bl	__aeabi_dmul
 1684 0714 DDE92C23 		ldrd	r2, [sp, #176]
 1685 0718 CDE93C01 		strd	r0, [sp, #240]
 1686 071c DDE90A01 		ldrd	r0, [sp, #40]
 1687 0720 FFF7FEFF 		bl	__aeabi_dmul
 1688 0724 DDE92C23 		ldrd	r2, [sp, #176]
 1689 0728 CDE93E01 		strd	r0, [sp, #248]
 1690 072c DDE90C01 		ldrd	r0, [sp, #48]
 1691 0730 FFF7FEFF 		bl	__aeabi_dmul
 1692 0734 DDE92C23 		ldrd	r2, [sp, #176]
 1693 0738 CDE94001 		strd	r0, [sp, #256]
 1694 073c DDE90801 		ldrd	r0, [sp, #32]
 1695 0740 FFF7FEFF 		bl	__aeabi_dmul
 1696 0744 DDE91C23 		ldrd	r2, [sp, #112]
 1697 0748 CDE94201 		strd	r0, [sp, #264]
 1698 074c 2046     		mov	r0, r4
 1699 074e 2946     		mov	r1, r5
 1700 0750 FFF7FEFF 		bl	__aeabi_dmul
 1701 0754 DDE91C23 		ldrd	r2, [sp, #112]
 1702 0758 CDE94401 		strd	r0, [sp, #272]
 1703 075c DDE90A01 		ldrd	r0, [sp, #40]
 1704 0760 FFF7FEFF 		bl	__aeabi_dmul
 1705 0764 DDE91C23 		ldrd	r2, [sp, #112]
 1706 0768 CDE94601 		strd	r0, [sp, #280]
 1707 076c DDE90C01 		ldrd	r0, [sp, #48]
 1708 0770 FFF7FEFF 		bl	__aeabi_dmul
 1709 0774 DDE91C23 		ldrd	r2, [sp, #112]
 1710 0778 CDE94801 		strd	r0, [sp, #288]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 31


 1711 077c DDE90601 		ldrd	r0, [sp, #24]
 1712 0780 FFF7FEFF 		bl	__aeabi_dmul
 1713 0784 DDE91823 		ldrd	r2, [sp, #96]
 1714 0788 CDE94A01 		strd	r0, [sp, #296]
 1715 078c 2046     		mov	r0, r4
 1716 078e 2946     		mov	r1, r5
 1717 0790 FFF7FEFF 		bl	__aeabi_dmul
 1718 0794 DDE91823 		ldrd	r2, [sp, #96]
 1719 0798 CDE94C01 		strd	r0, [sp, #304]
 1720 079c 3046     		mov	r0, r6
 1721 079e 3946     		mov	r1, r7
 1722 07a0 FFF7FEFF 		bl	__aeabi_dmul
 1723 07a4 DDE91823 		ldrd	r2, [sp, #96]
 1724 07a8 CDE94E01 		strd	r0, [sp, #312]
 1725 07ac DDE90801 		ldrd	r0, [sp, #32]
 1726 07b0 FFF7FEFF 		bl	__aeabi_dmul
 1727 07b4 DDE91823 		ldrd	r2, [sp, #96]
 1728 07b8 CDE95001 		strd	r0, [sp, #320]
 1729 07bc DDE90601 		ldrd	r0, [sp, #24]
 1730 07c0 FFF7FEFF 		bl	__aeabi_dmul
 1731 07c4 DDE91A23 		ldrd	r2, [sp, #104]
 1732 07c8 CDE95201 		strd	r0, [sp, #328]
 1733 07cc 2046     		mov	r0, r4
 1734 07ce 2946     		mov	r1, r5
 1735 07d0 FFF7FEFF 		bl	__aeabi_dmul
 1736 07d4 DDE91A23 		ldrd	r2, [sp, #104]
 1737 07d8 CDE95401 		strd	r0, [sp, #336]
 1738 07dc 3046     		mov	r0, r6
 1739 07de 3946     		mov	r1, r7
 1740 07e0 FFF7FEFF 		bl	__aeabi_dmul
 1741 07e4 DDE91A23 		ldrd	r2, [sp, #104]
 1742 07e8 CDE95601 		strd	r0, [sp, #344]
 1743 07ec DDE90801 		ldrd	r0, [sp, #32]
 1744 07f0 FFF7FEFF 		bl	__aeabi_dmul
 1745 07f4 DDE91A23 		ldrd	r2, [sp, #104]
 1746 07f8 CDE95801 		strd	r0, [sp, #352]
 1747 07fc DDE90601 		ldrd	r0, [sp, #24]
 1748 0800 FFF7FEFF 		bl	__aeabi_dmul
 1749 0804 DDE91623 		ldrd	r2, [sp, #88]
 1750 0808 CDE95A01 		strd	r0, [sp, #360]
 1751 080c 2046     		mov	r0, r4
 1752 080e 2946     		mov	r1, r5
 1753 0810 FFF7FEFF 		bl	__aeabi_dmul
 1754 0814 DDE91623 		ldrd	r2, [sp, #88]
 1755 0818 CDE95C01 		strd	r0, [sp, #368]
 1756 081c DDE90A01 		ldrd	r0, [sp, #40]
 1757 0820 FFF7FEFF 		bl	__aeabi_dmul
 1758 0824 DDE91623 		ldrd	r2, [sp, #88]
 1759 0828 CDE95E01 		strd	r0, [sp, #376]
 1760 082c DDE90C01 		ldrd	r0, [sp, #48]
 1761 0830 FFF7FEFF 		bl	__aeabi_dmul
 1762 0834 DDE91623 		ldrd	r2, [sp, #88]
 1763 0838 CDE96001 		strd	r0, [sp, #384]
 1764 083c DDE90601 		ldrd	r0, [sp, #24]
 1765 0840 FFF7FEFF 		bl	__aeabi_dmul
 1766 0844 DDE91423 		ldrd	r2, [sp, #80]
 1767 0848 CDE96201 		strd	r0, [sp, #392]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 32


 1768 084c 3046     		mov	r0, r6
 1769 084e 3946     		mov	r1, r7
 1770 0850 FFF7FEFF 		bl	__aeabi_dmul
 1771 0854 DDE91423 		ldrd	r2, [sp, #80]
 1772 0858 CDE96401 		strd	r0, [sp, #400]
 1773 085c DDE90A01 		ldrd	r0, [sp, #40]
 1774 0860 FFF7FEFF 		bl	__aeabi_dmul
 1775 0864 DDE91423 		ldrd	r2, [sp, #80]
 1776 0868 CDE96601 		strd	r0, [sp, #408]
 1777 086c DDE90C01 		ldrd	r0, [sp, #48]
 1778 0870 FFF7FEFF 		bl	__aeabi_dmul
 1779 0874 DDE91423 		ldrd	r2, [sp, #80]
 1780 0878 CDE96801 		strd	r0, [sp, #416]
 1781 087c DDE90801 		ldrd	r0, [sp, #32]
 1782 0880 FFF7FEFF 		bl	__aeabi_dmul
 1783 0884 DDE93E23 		ldrd	r2, [sp, #248]
 1784 0888 CDE96A01 		strd	r0, [sp, #424]
 1785 088c DDE93C01 		ldrd	r0, [sp, #240]
 1786 0890 FFF7FEFF 		bl	__aeabi_dsub
 1787 0894 DDE94023 		ldrd	r2, [sp, #256]
 1788 0898 FFF7FEFF 		bl	__aeabi_dsub
 1789 089c DDE94223 		ldrd	r2, [sp, #264]
 1790 08a0 FFF7FEFF 		bl	__aeabi_dadd
 1791 08a4 DDE94423 		ldrd	r2, [sp, #272]
 1792 08a8 FFF7FEFF 		bl	__aeabi_dsub
 1793 08ac DDE94623 		ldrd	r2, [sp, #280]
 1794 08b0 FFF7FEFF 		bl	__aeabi_dadd
 1795 08b4 DDE94823 		ldrd	r2, [sp, #288]
 1796 08b8 FFF7FEFF 		bl	__aeabi_dadd
 1797 08bc DDE94A23 		ldrd	r2, [sp, #296]
 1798 08c0 FFF7FEFF 		bl	__aeabi_dsub
 1799 08c4 DDE94C23 		ldrd	r2, [sp, #304]
 1800 08c8 FFF7FEFF 		bl	__aeabi_dadd
 1801 08cc DDE94E23 		ldrd	r2, [sp, #312]
 1802 08d0 FFF7FEFF 		bl	__aeabi_dsub
 1803 08d4 DDE95023 		ldrd	r2, [sp, #320]
 1804 08d8 FFF7FEFF 		bl	__aeabi_dsub
 1805 08dc DDE95223 		ldrd	r2, [sp, #328]
 1806 08e0 FFF7FEFF 		bl	__aeabi_dadd
 1807 08e4 DDE95423 		ldrd	r2, [sp, #336]
 1808 08e8 FFF7FEFF 		bl	__aeabi_dadd
 1809 08ec DDE95623 		ldrd	r2, [sp, #344]
 1810 08f0 FFF7FEFF 		bl	__aeabi_dsub
 1811 08f4 DDE95823 		ldrd	r2, [sp, #352]
 1812 08f8 FFF7FEFF 		bl	__aeabi_dsub
 1813 08fc DDE95A23 		ldrd	r2, [sp, #360]
 1814 0900 FFF7FEFF 		bl	__aeabi_dadd
 1815 0904 DDE95C23 		ldrd	r2, [sp, #368]
 1816 0908 FFF7FEFF 		bl	__aeabi_dsub
 1817 090c DDE95E23 		ldrd	r2, [sp, #376]
 1818 0910 FFF7FEFF 		bl	__aeabi_dadd
 1819 0914 DDE96023 		ldrd	r2, [sp, #384]
 1820 0918 FFF7FEFF 		bl	__aeabi_dadd
 1821 091c DDE96223 		ldrd	r2, [sp, #392]
 1822 0920 FFF7FEFF 		bl	__aeabi_dsub
 1823 0924 DDE96423 		ldrd	r2, [sp, #400]
 1824 0928 FFF7FEFF 		bl	__aeabi_dadd
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 33


 1825 092c DDE96623 		ldrd	r2, [sp, #408]
 1826 0930 FFF7FEFF 		bl	__aeabi_dsub
 1827 0934 DDE96823 		ldrd	r2, [sp, #416]
 1828 0938 FFF7FEFF 		bl	__aeabi_dsub
 1829 093c DDE96A23 		ldrd	r2, [sp, #424]
 1830 0940 FFF7FEFF 		bl	__aeabi_dadd
 1831 0944 9DED9A8A 		vldr.32	s16, [sp, #616]
 1832 0948 6CEE087A 		vmul.f32	s15, s24, s16
 1833 094c CDE93201 		strd	r0, [sp, #200]
 1834 0950 17EE900A 		vmov	r0, s15
 1835 0954 FFF7FEFF 		bl	__aeabi_f2d
 1836 0958 6BEE887A 		vmul.f32	s15, s23, s16
 1837 095c CDE91E01 		strd	r0, [sp, #120]
 1838 0960 17EE900A 		vmov	r0, s15
 1839 0964 FFF7FEFF 		bl	__aeabi_f2d
 1840 0968 6BEE087A 		vmul.f32	s15, s22, s16
 1841 096c CDE92001 		strd	r0, [sp, #128]
 1842 0970 17EE900A 		vmov	r0, s15
 1843 0974 FFF7FEFF 		bl	__aeabi_f2d
 1844 0978 6AEE887A 		vmul.f32	s15, s21, s16
 1845 097c CDE92201 		strd	r0, [sp, #136]
 1846 0980 17EE900A 		vmov	r0, s15
 1847 0984 FFF7FEFF 		bl	__aeabi_f2d
 1848 0988 109B     		ldr	r3, [sp, #64]
 1849 098a 93ED008A 		vldr.32	s16, [r3]
 1850 098e 6AEE087A 		vmul.f32	s15, s20, s16
 1851 0992 CDE92401 		strd	r0, [sp, #144]
 1852 0996 17EE900A 		vmov	r0, s15
 1853 099a FFF7FEFF 		bl	__aeabi_f2d
 1854 099e 69EE887A 		vmul.f32	s15, s19, s16
 1855 09a2 CDE92601 		strd	r0, [sp, #152]
 1856 09a6 17EE900A 		vmov	r0, s15
 1857 09aa FFF7FEFF 		bl	__aeabi_f2d
 1858 09ae 69EE087A 		vmul.f32	s15, s18, s16
 1859 09b2 CDE92E01 		strd	r0, [sp, #184]
 1860 09b6 17EE900A 		vmov	r0, s15
 1861 09ba FFF7FEFF 		bl	__aeabi_f2d
 1862 09be 68EE887A 		vmul.f32	s15, s17, s16
 1863 09c2 CDE92801 		strd	r0, [sp, #160]
 1864 09c6 17EE900A 		vmov	r0, s15
 1865 09ca FFF7FEFF 		bl	__aeabi_f2d
 1866 09ce DDE92423 		ldrd	r2, [sp, #144]
 1867 09d2 CDE92A01 		strd	r0, [sp, #168]
 1868 09d6 DDE92C01 		ldrd	r0, [sp, #176]
 1869 09da FFF7FEFF 		bl	__aeabi_dmul
 1870 09de DDE92223 		ldrd	r2, [sp, #136]
 1871 09e2 CDE96C01 		strd	r0, [sp, #432]
 1872 09e6 DDE92C01 		ldrd	r0, [sp, #176]
 1873 09ea FFF7FEFF 		bl	__aeabi_dmul
 1874 09ee DDE92423 		ldrd	r2, [sp, #144]
 1875 09f2 CDE92C01 		strd	r0, [sp, #176]
 1876 09f6 DDE91C01 		ldrd	r0, [sp, #112]
 1877 09fa FFF7FEFF 		bl	__aeabi_dmul
 1878 09fe DDE92023 		ldrd	r2, [sp, #128]
 1879 0a02 CDE96E01 		strd	r0, [sp, #440]
 1880 0a06 DDE91C01 		ldrd	r0, [sp, #112]
 1881 0a0a FFF7FEFF 		bl	__aeabi_dmul
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 34


 1882 0a0e DDE92A23 		ldrd	r2, [sp, #168]
 1883 0a12 CDE91C01 		strd	r0, [sp, #112]
 1884 0a16 2046     		mov	r0, r4
 1885 0a18 2946     		mov	r1, r5
 1886 0a1a FFF7FEFF 		bl	__aeabi_dmul
 1887 0a1e DDE92A23 		ldrd	r2, [sp, #168]
 1888 0a22 CDE97001 		strd	r0, [sp, #448]
 1889 0a26 3046     		mov	r0, r6
 1890 0a28 3946     		mov	r1, r7
 1891 0a2a FFF7FEFF 		bl	__aeabi_dmul
 1892 0a2e CDE97201 		strd	r0, [sp, #456]
 1893 0a32 DDE92A23 		ldrd	r2, [sp, #168]
 1894 0a36 DDE92201 		ldrd	r0, [sp, #136]
 1895 0a3a FFF7FEFF 		bl	__aeabi_dmul
 1896 0a3e DDE92A23 		ldrd	r2, [sp, #168]
 1897 0a42 CDE97401 		strd	r0, [sp, #464]
 1898 0a46 DDE92001 		ldrd	r0, [sp, #128]
 1899 0a4a FFF7FEFF 		bl	__aeabi_dmul
 1900 0a4e DDE92223 		ldrd	r2, [sp, #136]
 1901 0a52 CDE97601 		strd	r0, [sp, #472]
 1902 0a56 DDE91A01 		ldrd	r0, [sp, #104]
 1903 0a5a FFF7FEFF 		bl	__aeabi_dmul
 1904 0a5e DDE92023 		ldrd	r2, [sp, #128]
 1905 0a62 CDE97801 		strd	r0, [sp, #480]
 1906 0a66 DDE91A01 		ldrd	r0, [sp, #104]
 1907 0a6a FFF7FEFF 		bl	__aeabi_dmul
 1908 0a6e DDE92823 		ldrd	r2, [sp, #160]
 1909 0a72 CDE91A01 		strd	r0, [sp, #104]
 1910 0a76 2046     		mov	r0, r4
 1911 0a78 2946     		mov	r1, r5
 1912 0a7a FFF7FEFF 		bl	__aeabi_dmul
 1913 0a7e DDE92823 		ldrd	r2, [sp, #160]
 1914 0a82 0446     		mov	r4, r0
 1915 0a84 0D46     		mov	r5, r1
 1916 0a86 DDE92401 		ldrd	r0, [sp, #144]
 1917 0a8a FFF7FEFF 		bl	__aeabi_dmul
 1918 0a8e DDE92823 		ldrd	r2, [sp, #160]
 1919 0a92 CDE97A01 		strd	r0, [sp, #488]
 1920 0a96 DDE90C01 		ldrd	r0, [sp, #48]
 1921 0a9a FFF7FEFF 		bl	__aeabi_dmul
 1922 0a9e DDE92823 		ldrd	r2, [sp, #160]
 1923 0aa2 CDE97C01 		strd	r0, [sp, #496]
 1924 0aa6 DDE92001 		ldrd	r0, [sp, #128]
 1925 0aaa FFF7FEFF 		bl	__aeabi_dmul
 1926 0aae DDE92E23 		ldrd	r2, [sp, #184]
 1927 0ab2 CDE97E01 		strd	r0, [sp, #504]
 1928 0ab6 3046     		mov	r0, r6
 1929 0ab8 3946     		mov	r1, r7
 1930 0aba FFF7FEFF 		bl	__aeabi_dmul
 1931 0abe DDE92E67 		ldrd	r6, [sp, #184]
 1932 0ac2 CDE98001 		strd	r0, [sp, #512]
 1933 0ac6 3246     		mov	r2, r6
 1934 0ac8 3B46     		mov	r3, r7
 1935 0aca DDE92401 		ldrd	r0, [sp, #144]
 1936 0ace FFF7FEFF 		bl	__aeabi_dmul
 1937 0ad2 3246     		mov	r2, r6
 1938 0ad4 3B46     		mov	r3, r7
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 35


 1939 0ad6 CDE98201 		strd	r0, [sp, #520]
 1940 0ada DDE90C01 		ldrd	r0, [sp, #48]
 1941 0ade FFF7FEFF 		bl	__aeabi_dmul
 1942 0ae2 CDE92E67 		strd	r6, [sp, #184]
 1943 0ae6 3246     		mov	r2, r6
 1944 0ae8 3B46     		mov	r3, r7
 1945 0aea CDE90C01 		strd	r0, [sp, #48]
 1946 0aee DDE92201 		ldrd	r0, [sp, #136]
 1947 0af2 FFF7FEFF 		bl	__aeabi_dmul
 1948 0af6 DDE96C23 		ldrd	r2, [sp, #432]
 1949 0afa 0646     		mov	r6, r0
 1950 0afc 0F46     		mov	r7, r1
 1951 0afe DDE93C01 		ldrd	r0, [sp, #240]
 1952 0b02 FFF7FEFF 		bl	__aeabi_dsub
 1953 0b06 DDE94023 		ldrd	r2, [sp, #256]
 1954 0b0a FFF7FEFF 		bl	__aeabi_dsub
 1955 0b0e DDE92C23 		ldrd	r2, [sp, #176]
 1956 0b12 FFF7FEFF 		bl	__aeabi_dadd
 1957 0b16 DDE94423 		ldrd	r2, [sp, #272]
 1958 0b1a FFF7FEFF 		bl	__aeabi_dsub
 1959 0b1e DDE96E23 		ldrd	r2, [sp, #440]
 1960 0b22 FFF7FEFF 		bl	__aeabi_dadd
 1961 0b26 DDE94823 		ldrd	r2, [sp, #288]
 1962 0b2a FFF7FEFF 		bl	__aeabi_dadd
 1963 0b2e DDE91C23 		ldrd	r2, [sp, #112]
 1964 0b32 FFF7FEFF 		bl	__aeabi_dsub
 1965 0b36 DDE97023 		ldrd	r2, [sp, #448]
 1966 0b3a FFF7FEFF 		bl	__aeabi_dadd
 1967 0b3e DDE97223 		ldrd	r2, [sp, #456]
 1968 0b42 FFF7FEFF 		bl	__aeabi_dsub
 1969 0b46 DDE97423 		ldrd	r2, [sp, #464]
 1970 0b4a FFF7FEFF 		bl	__aeabi_dsub
 1971 0b4e DDE97623 		ldrd	r2, [sp, #472]
 1972 0b52 FFF7FEFF 		bl	__aeabi_dadd
 1973 0b56 DDE95423 		ldrd	r2, [sp, #336]
 1974 0b5a FFF7FEFF 		bl	__aeabi_dadd
 1975 0b5e DDE95623 		ldrd	r2, [sp, #344]
 1976 0b62 FFF7FEFF 		bl	__aeabi_dsub
 1977 0b66 DDE97823 		ldrd	r2, [sp, #480]
 1978 0b6a FFF7FEFF 		bl	__aeabi_dsub
 1979 0b6e DDE91A23 		ldrd	r2, [sp, #104]
 1980 0b72 FFF7FEFF 		bl	__aeabi_dadd
 1981 0b76 2246     		mov	r2, r4
 1982 0b78 2B46     		mov	r3, r5
 1983 0b7a FFF7FEFF 		bl	__aeabi_dsub
 1984 0b7e DDE97A23 		ldrd	r2, [sp, #488]
 1985 0b82 FFF7FEFF 		bl	__aeabi_dadd
 1986 0b86 DDE97C23 		ldrd	r2, [sp, #496]
 1987 0b8a FFF7FEFF 		bl	__aeabi_dadd
 1988 0b8e DDE97E23 		ldrd	r2, [sp, #504]
 1989 0b92 FFF7FEFF 		bl	__aeabi_dsub
 1990 0b96 DDE98023 		ldrd	r2, [sp, #512]
 1991 0b9a FFF7FEFF 		bl	__aeabi_dadd
 1992 0b9e DDE98223 		ldrd	r2, [sp, #520]
 1993 0ba2 FFF7FEFF 		bl	__aeabi_dsub
 1994 0ba6 DDE90C23 		ldrd	r2, [sp, #48]
 1995 0baa FFF7FEFF 		bl	__aeabi_dsub
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 36


 1996 0bae 3246     		mov	r2, r6
 1997 0bb0 3B46     		mov	r3, r7
 1998 0bb2 CDE94867 		strd	r6, [sp, #288]
 1999 0bb6 FFF7FEFF 		bl	__aeabi_dadd
 2000 0bba 01F10043 		add	r3, r1, #-2147483648
 2001 0bbe 8593     		str	r3, [sp, #532]
 2002 0bc0 8490     		str	r0, [sp, #528]
 2003 0bc2 DDE93223 		ldrd	r2, [sp, #200]
 2004 0bc6 DDE98401 		ldrd	r0, [sp, #528]
 2005 0bca FFF7FEFF 		bl	__aeabi_ddiv
 2006 0bce DDE92423 		ldrd	r2, [sp, #144]
 2007 0bd2 CAE90201 		strd	r0, [r10, #8]
 2008 0bd6 DDE91801 		ldrd	r0, [sp, #96]
 2009 0bda FFF7FEFF 		bl	__aeabi_dmul
 2010 0bde DDE91E23 		ldrd	r2, [sp, #120]
 2011 0be2 0646     		mov	r6, r0
 2012 0be4 0F46     		mov	r7, r1
 2013 0be6 DDE91801 		ldrd	r0, [sp, #96]
 2014 0bea FFF7FEFF 		bl	__aeabi_dmul
 2015 0bee DDE92A23 		ldrd	r2, [sp, #168]
 2016 0bf2 CDE91801 		strd	r0, [sp, #96]
 2017 0bf6 DDE90A01 		ldrd	r0, [sp, #40]
 2018 0bfa FFF7FEFF 		bl	__aeabi_dmul
 2019 0bfe DDE92A23 		ldrd	r2, [sp, #168]
 2020 0c02 CDE93C01 		strd	r0, [sp, #240]
 2021 0c06 DDE91E01 		ldrd	r0, [sp, #120]
 2022 0c0a FFF7FEFF 		bl	__aeabi_dmul
 2023 0c0e DDE92223 		ldrd	r2, [sp, #136]
 2024 0c12 CDE92A01 		strd	r0, [sp, #168]
 2025 0c16 DDE91601 		ldrd	r0, [sp, #88]
 2026 0c1a FFF7FEFF 		bl	__aeabi_dmul
 2027 0c1e DDE91E23 		ldrd	r2, [sp, #120]
 2028 0c22 CDE94001 		strd	r0, [sp, #256]
 2029 0c26 DDE91601 		ldrd	r0, [sp, #88]
 2030 0c2a FFF7FEFF 		bl	__aeabi_dmul
 2031 0c2e DDE92823 		ldrd	r2, [sp, #160]
 2032 0c32 CDE91601 		strd	r0, [sp, #88]
 2033 0c36 DDE90801 		ldrd	r0, [sp, #32]
 2034 0c3a FFF7FEFF 		bl	__aeabi_dmul
 2035 0c3e DDE92823 		ldrd	r2, [sp, #160]
 2036 0c42 CDE94401 		strd	r0, [sp, #272]
 2037 0c46 DDE91E01 		ldrd	r0, [sp, #120]
 2038 0c4a FFF7FEFF 		bl	__aeabi_dmul
 2039 0c4e DDE92623 		ldrd	r2, [sp, #152]
 2040 0c52 CDE92801 		strd	r0, [sp, #160]
 2041 0c56 DDE90A01 		ldrd	r0, [sp, #40]
 2042 0c5a FFF7FEFF 		bl	__aeabi_dmul
 2043 0c5e DDE92623 		ldrd	r2, [sp, #152]
 2044 0c62 CDE90A01 		strd	r0, [sp, #40]
 2045 0c66 DDE92401 		ldrd	r0, [sp, #144]
 2046 0c6a FFF7FEFF 		bl	__aeabi_dmul
 2047 0c6e DDE92623 		ldrd	r2, [sp, #152]
 2048 0c72 CDE92401 		strd	r0, [sp, #144]
 2049 0c76 DDE90801 		ldrd	r0, [sp, #32]
 2050 0c7a FFF7FEFF 		bl	__aeabi_dmul
 2051 0c7e DDE92623 		ldrd	r2, [sp, #152]
 2052 0c82 CDE90801 		strd	r0, [sp, #32]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 37


 2053 0c86 DDE92201 		ldrd	r0, [sp, #136]
 2054 0c8a FFF7FEFF 		bl	__aeabi_dmul
 2055 0c8e DDE96C23 		ldrd	r2, [sp, #432]
 2056 0c92 CDE92201 		strd	r0, [sp, #136]
 2057 0c96 DDE93E01 		ldrd	r0, [sp, #248]
 2058 0c9a FFF7FEFF 		bl	__aeabi_dsub
 2059 0c9e DDE94223 		ldrd	r2, [sp, #264]
 2060 0ca2 FFF7FEFF 		bl	__aeabi_dsub
 2061 0ca6 DDE92C23 		ldrd	r2, [sp, #176]
 2062 0caa FFF7FEFF 		bl	__aeabi_dadd
 2063 0cae DDE94C23 		ldrd	r2, [sp, #304]
 2064 0cb2 FFF7FEFF 		bl	__aeabi_dsub
 2065 0cb6 3246     		mov	r2, r6
 2066 0cb8 3B46     		mov	r3, r7
 2067 0cba FFF7FEFF 		bl	__aeabi_dadd
 2068 0cbe DDE95023 		ldrd	r2, [sp, #320]
 2069 0cc2 FFF7FEFF 		bl	__aeabi_dadd
 2070 0cc6 DDE91823 		ldrd	r2, [sp, #96]
 2071 0cca FFF7FEFF 		bl	__aeabi_dsub
 2072 0cce DDE97023 		ldrd	r2, [sp, #448]
 2073 0cd2 FFF7FEFF 		bl	__aeabi_dadd
 2074 0cd6 DDE93C23 		ldrd	r2, [sp, #240]
 2075 0cda FFF7FEFF 		bl	__aeabi_dsub
 2076 0cde DDE97423 		ldrd	r2, [sp, #464]
 2077 0ce2 FFF7FEFF 		bl	__aeabi_dsub
 2078 0ce6 DDE92A23 		ldrd	r2, [sp, #168]
 2079 0cea FFF7FEFF 		bl	__aeabi_dadd
 2080 0cee DDE95C23 		ldrd	r2, [sp, #368]
 2081 0cf2 FFF7FEFF 		bl	__aeabi_dadd
 2082 0cf6 DDE95E23 		ldrd	r2, [sp, #376]
 2083 0cfa FFF7FEFF 		bl	__aeabi_dsub
 2084 0cfe DDE94023 		ldrd	r2, [sp, #256]
 2085 0d02 FFF7FEFF 		bl	__aeabi_dsub
 2086 0d06 DDE91623 		ldrd	r2, [sp, #88]
 2087 0d0a FFF7FEFF 		bl	__aeabi_dadd
 2088 0d0e 2246     		mov	r2, r4
 2089 0d10 2B46     		mov	r3, r5
 2090 0d12 FFF7FEFF 		bl	__aeabi_dsub
 2091 0d16 DDE97A23 		ldrd	r2, [sp, #488]
 2092 0d1a FFF7FEFF 		bl	__aeabi_dadd
 2093 0d1e DDE94423 		ldrd	r2, [sp, #272]
 2094 0d22 FFF7FEFF 		bl	__aeabi_dadd
 2095 0d26 DDE92823 		ldrd	r2, [sp, #160]
 2096 0d2a FFF7FEFF 		bl	__aeabi_dsub
 2097 0d2e DDE90A23 		ldrd	r2, [sp, #40]
 2098 0d32 FFF7FEFF 		bl	__aeabi_dadd
 2099 0d36 DDE92423 		ldrd	r2, [sp, #144]
 2100 0d3a FFF7FEFF 		bl	__aeabi_dsub
 2101 0d3e DDE90823 		ldrd	r2, [sp, #32]
 2102 0d42 FFF7FEFF 		bl	__aeabi_dsub
 2103 0d46 DDE92223 		ldrd	r2, [sp, #136]
 2104 0d4a FFF7FEFF 		bl	__aeabi_dadd
 2105 0d4e DDE93223 		ldrd	r2, [sp, #200]
 2106 0d52 FFF7FEFF 		bl	__aeabi_ddiv
 2107 0d56 DDE92023 		ldrd	r2, [sp, #128]
 2108 0d5a CAE90401 		strd	r0, [r10, #16]
 2109 0d5e DDE91401 		ldrd	r0, [sp, #80]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 38


 2110 0d62 FFF7FEFF 		bl	__aeabi_dmul
 2111 0d66 DDE91E23 		ldrd	r2, [sp, #120]
 2112 0d6a 0446     		mov	r4, r0
 2113 0d6c 0D46     		mov	r5, r1
 2114 0d6e DDE91401 		ldrd	r0, [sp, #80]
 2115 0d72 FFF7FEFF 		bl	__aeabi_dmul
 2116 0d76 DDE92E23 		ldrd	r2, [sp, #184]
 2117 0d7a CDE91401 		strd	r0, [sp, #80]
 2118 0d7e DDE90601 		ldrd	r0, [sp, #24]
 2119 0d82 FFF7FEFF 		bl	__aeabi_dmul
 2120 0d86 DDE92E23 		ldrd	r2, [sp, #184]
 2121 0d8a CDE92C01 		strd	r0, [sp, #176]
 2122 0d8e DDE91E01 		ldrd	r0, [sp, #120]
 2123 0d92 FFF7FEFF 		bl	__aeabi_dmul
 2124 0d96 DDE92623 		ldrd	r2, [sp, #152]
 2125 0d9a CDE91E01 		strd	r0, [sp, #120]
 2126 0d9e DDE90601 		ldrd	r0, [sp, #24]
 2127 0da2 FFF7FEFF 		bl	__aeabi_dmul
 2128 0da6 DDE92623 		ldrd	r2, [sp, #152]
 2129 0daa CDE90601 		strd	r0, [sp, #24]
 2130 0dae DDE92001 		ldrd	r0, [sp, #128]
 2131 0db2 FFF7FEFF 		bl	__aeabi_dmul
 2132 0db6 DDE96E23 		ldrd	r2, [sp, #440]
 2133 0dba CDE92001 		strd	r0, [sp, #128]
 2134 0dbe DDE94601 		ldrd	r0, [sp, #280]
 2135 0dc2 FFF7FEFF 		bl	__aeabi_dsub
 2136 0dc6 DDE94A23 		ldrd	r2, [sp, #296]
 2137 0dca FFF7FEFF 		bl	__aeabi_dsub
 2138 0dce DDE91C23 		ldrd	r2, [sp, #112]
 2139 0dd2 FFF7FEFF 		bl	__aeabi_dadd
 2140 0dd6 DDE94E23 		ldrd	r2, [sp, #312]
 2141 0dda FFF7FEFF 		bl	__aeabi_dsub
 2142 0dde 3246     		mov	r2, r6
 2143 0de0 3B46     		mov	r3, r7
 2144 0de2 FFF7FEFF 		bl	__aeabi_dadd
 2145 0de6 DDE95223 		ldrd	r2, [sp, #328]
 2146 0dea FFF7FEFF 		bl	__aeabi_dadd
 2147 0dee DDE91823 		ldrd	r2, [sp, #96]
 2148 0df2 FFF7FEFF 		bl	__aeabi_dsub
 2149 0df6 DDE97223 		ldrd	r2, [sp, #456]
 2150 0dfa FFF7FEFF 		bl	__aeabi_dadd
 2151 0dfe DDE93C23 		ldrd	r2, [sp, #240]
 2152 0e02 FFF7FEFF 		bl	__aeabi_dsub
 2153 0e06 DDE97623 		ldrd	r2, [sp, #472]
 2154 0e0a FFF7FEFF 		bl	__aeabi_dsub
 2155 0e0e DDE92A23 		ldrd	r2, [sp, #168]
 2156 0e12 FFF7FEFF 		bl	__aeabi_dadd
 2157 0e16 DDE96423 		ldrd	r2, [sp, #400]
 2158 0e1a FFF7FEFF 		bl	__aeabi_dadd
 2159 0e1e DDE96623 		ldrd	r2, [sp, #408]
 2160 0e22 FFF7FEFF 		bl	__aeabi_dsub
 2161 0e26 2246     		mov	r2, r4
 2162 0e28 2B46     		mov	r3, r5
 2163 0e2a FFF7FEFF 		bl	__aeabi_dsub
 2164 0e2e DDE91423 		ldrd	r2, [sp, #80]
 2165 0e32 FFF7FEFF 		bl	__aeabi_dadd
 2166 0e36 DDE98023 		ldrd	r2, [sp, #512]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 39


 2167 0e3a FFF7FEFF 		bl	__aeabi_dsub
 2168 0e3e DDE98223 		ldrd	r2, [sp, #520]
 2169 0e42 FFF7FEFF 		bl	__aeabi_dadd
 2170 0e46 DDE92C23 		ldrd	r2, [sp, #176]
 2171 0e4a FFF7FEFF 		bl	__aeabi_dadd
 2172 0e4e DDE91E23 		ldrd	r2, [sp, #120]
 2173 0e52 FFF7FEFF 		bl	__aeabi_dsub
 2174 0e56 DDE90A23 		ldrd	r2, [sp, #40]
 2175 0e5a FFF7FEFF 		bl	__aeabi_dadd
 2176 0e5e DDE92423 		ldrd	r2, [sp, #144]
 2177 0e62 FFF7FEFF 		bl	__aeabi_dsub
 2178 0e66 DDE90623 		ldrd	r2, [sp, #24]
 2179 0e6a FFF7FEFF 		bl	__aeabi_dsub
 2180 0e6e DDE92023 		ldrd	r2, [sp, #128]
 2181 0e72 FFF7FEFF 		bl	__aeabi_dadd
 2182 0e76 DDE93267 		ldrd	r6, [sp, #200]
 2183 0e7a 01F10043 		add	r3, r1, #-2147483648
 2184 0e7e 8793     		str	r3, [sp, #540]
 2185 0e80 8690     		str	r0, [sp, #536]
 2186 0e82 DDE98601 		ldrd	r0, [sp, #536]
 2187 0e86 3246     		mov	r2, r6
 2188 0e88 3B46     		mov	r3, r7
 2189 0e8a FFF7FEFF 		bl	__aeabi_ddiv
 2190 0e8e DDE97823 		ldrd	r2, [sp, #480]
 2191 0e92 CAE90601 		strd	r0, [r10, #24]
 2192 0e96 DDE95801 		ldrd	r0, [sp, #352]
 2193 0e9a FFF7FEFF 		bl	__aeabi_dsub
 2194 0e9e DDE95A23 		ldrd	r2, [sp, #360]
 2195 0ea2 FFF7FEFF 		bl	__aeabi_dsub
 2196 0ea6 DDE91A23 		ldrd	r2, [sp, #104]
 2197 0eaa FFF7FEFF 		bl	__aeabi_dadd
 2198 0eae DDE96023 		ldrd	r2, [sp, #384]
 2199 0eb2 FFF7FEFF 		bl	__aeabi_dsub
 2200 0eb6 DDE94023 		ldrd	r2, [sp, #256]
 2201 0eba FFF7FEFF 		bl	__aeabi_dadd
 2202 0ebe DDE96223 		ldrd	r2, [sp, #392]
 2203 0ec2 FFF7FEFF 		bl	__aeabi_dadd
 2204 0ec6 DDE91623 		ldrd	r2, [sp, #88]
 2205 0eca FFF7FEFF 		bl	__aeabi_dsub
 2206 0ece DDE97C23 		ldrd	r2, [sp, #496]
 2207 0ed2 FFF7FEFF 		bl	__aeabi_dadd
 2208 0ed6 DDE94423 		ldrd	r2, [sp, #272]
 2209 0eda FFF7FEFF 		bl	__aeabi_dsub
 2210 0ede DDE97E23 		ldrd	r2, [sp, #504]
 2211 0ee2 FFF7FEFF 		bl	__aeabi_dsub
 2212 0ee6 DDE92823 		ldrd	r2, [sp, #160]
 2213 0eea FFF7FEFF 		bl	__aeabi_dadd
 2214 0eee DDE96823 		ldrd	r2, [sp, #416]
 2215 0ef2 FFF7FEFF 		bl	__aeabi_dadd
 2216 0ef6 DDE96A23 		ldrd	r2, [sp, #424]
 2217 0efa FFF7FEFF 		bl	__aeabi_dsub
 2218 0efe 2246     		mov	r2, r4
 2219 0f00 2B46     		mov	r3, r5
 2220 0f02 FFF7FEFF 		bl	__aeabi_dsub
 2221 0f06 DDE91423 		ldrd	r2, [sp, #80]
 2222 0f0a FFF7FEFF 		bl	__aeabi_dadd
 2223 0f0e DDE90C23 		ldrd	r2, [sp, #48]
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 40


 2224 0f12 FFF7FEFF 		bl	__aeabi_dsub
 2225 0f16 DDE94823 		ldrd	r2, [sp, #288]
 2226 0f1a FFF7FEFF 		bl	__aeabi_dadd
 2227 0f1e DDE92C23 		ldrd	r2, [sp, #176]
 2228 0f22 FFF7FEFF 		bl	__aeabi_dadd
 2229 0f26 DDE91E23 		ldrd	r2, [sp, #120]
 2230 0f2a FFF7FEFF 		bl	__aeabi_dsub
 2231 0f2e DDE90823 		ldrd	r2, [sp, #32]
 2232 0f32 FFF7FEFF 		bl	__aeabi_dadd
 2233 0f36 DDE92223 		ldrd	r2, [sp, #136]
 2234 0f3a FFF7FEFF 		bl	__aeabi_dsub
 2235 0f3e DDE90623 		ldrd	r2, [sp, #24]
 2236 0f42 FFF7FEFF 		bl	__aeabi_dsub
 2237 0f46 DDE92023 		ldrd	r2, [sp, #128]
 2238 0f4a FFF7FEFF 		bl	__aeabi_dadd
 2239 0f4e 3246     		mov	r2, r6
 2240 0f50 3B46     		mov	r3, r7
 2241 0f52 FFF7FEFF 		bl	__aeabi_ddiv
 2242 0f56 CAE90801 		strd	r0, [r10, #32]
 2243 0f5a FFF750B9 		b	.L142
 2244              	.L181:
 2245 0f5e 4FF00109 		mov	r9, #1
 2246 0f62 FFF72DBB 		b	.L165
 2247              	.L163:
 2248 0f66 309B     		ldr	r3, [sp, #192]
 2249 0f68 5A68     		ldr	r2, [r3, #4]
 2250 0f6a 899B     		ldr	r3, [sp, #548]
 2251 0f6c D2F84423 		ldr	r2, [r2, #836]
 2252 0f70 1B69     		ldr	r3, [r3, #16]
 2253 0f72 9A42     		cmp	r2, r3
 2254 0f74 00F08980 		beq	.L170
 2255              	.L169:
 2256 0f78 7949     		ldr	r1, .L232+8
 2257 0f7a 8898     		ldr	r0, [sp, #544]
 2258 0f7c FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2259 0f80 899A     		ldr	r2, [sp, #548]
 2260 0f82 1369     		ldr	r3, [r2, #16]
 2261 0f84 002B     		cmp	r3, #0
 2262 0f86 36D0     		beq	.L173
 2263 0f88 DFF80092 		ldr	r9, .L232+52
 2264 0f8c DFF80082 		ldr	r8, .L232+56
 2265 0f90 8AAD     		add	r5, sp, #552
 2266 0f92 0024     		movs	r4, #0
 2267 0f94 9246     		mov	r10, r2
 2268              	.L176:
 2269 0f96 DDE98A23 		ldrd	r2, [sp, #552]
 2270 0f9a F5E80201 		ldrd	r0, [r5], #8
 2271 0f9e FFF7FEFF 		bl	__aeabi_dsub
 2272 0fa2 FFF7FEFF 		bl	__aeabi_d2f
 2273 0fa6 08EE100A 		vmov	s16, r0
 2274 0faa DAED177A 		vldr.32	s15, [r10, #92]
 2275 0fae B0EEC87A 		vabs.f32	s14, s16
 2276 0fb2 C7EE277A 		vdiv.f32	s15, s14, s15
 2277 0fb6 0134     		adds	r4, r4, #1
 2278 0fb8 17EE900A 		vmov	r0, s15
 2279 0fbc FFF7FEFF 		bl	__aeabi_f2d
 2280 0fc0 B5EEC08A 		vcmpe.f32	s16, #0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 41


 2281 0fc4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2282 0fc8 0646     		mov	r6, r0
 2283 0fca 18EE100A 		vmov	r0, s16
 2284 0fce CCBF     		ite	gt
 2285 0fd0 CB46     		movgt	fp, r9
 2286 0fd2 C346     		movle	fp, r8
 2287 0fd4 0F46     		mov	r7, r1
 2288 0fd6 FFF7FEFF 		bl	__aeabi_f2d
 2289 0fda 3B46     		mov	r3, r7
 2290 0fdc CDE90201 		strd	r0, [sp, #8]
 2291 0fe0 CDF800B0 		str	fp, [sp]
 2292 0fe4 3246     		mov	r2, r6
 2293 0fe6 5F49     		ldr	r1, .L232+12
 2294 0fe8 8898     		ldr	r0, [sp, #544]
 2295 0fea FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2296 0fee DAF81030 		ldr	r3, [r10, #16]
 2297 0ff2 A342     		cmp	r3, r4
 2298 0ff4 CFD8     		bhi	.L176
 2299              	.L173:
 2300 0ff6 4FF00009 		mov	r9, #0
 2301              	.L168:
 2302 0ffa 309A     		ldr	r2, [sp, #192]
 2303 0ffc 889B     		ldr	r3, [sp, #544]
 2304 0ffe 5068     		ldr	r0, [r2, #4]
 2305 1000 1B68     		ldr	r3, [r3]
 2306 1002 594A     		ldr	r2, .L232+16
 2307 1004 8021     		movs	r1, #128
 2308 1006 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2309 100a 4846     		mov	r0, r9
 2310 100c 0DF6BC5D 		addw	sp, sp, #3516
 2311              		@ sp needed
 2312 1010 BDEC0E8B 		vldm	sp!, {d8-d14}
 2313 1014 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2314              	.L222:
 2315 1018 119C     		ldr	r4, [sp, #68]
 2316 101a 059A     		ldr	r2, [sp, #20]
 2317 101c 5348     		ldr	r0, .L232+20
 2318 101e 2346     		mov	r3, r4
 2319 1020 0DF5B661 		add	r1, sp, #1456
 2320 1024 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 2321 1028 309B     		ldr	r3, [sp, #192]
 2322 102a 1099     		ldr	r1, [sp, #64]
 2323 102c D3F80831 		ldr	r3, [r3, #264]
 2324 1030 4F4A     		ldr	r2, .L232+24
 2325 1032 0A60     		str	r2, [r1]
 2326 1034 03F01003 		and	r3, r3, #16
 2327 1038 1C93     		str	r3, [sp, #112]
 2328 103a 002C     		cmp	r4, #0
 2329 103c 7FF496A9 		bne	.L179
 2330 1040 FFF729BA 		b	.L148
 2331              	.L225:
 2332 1044 889C     		ldr	r4, [sp, #544]
 2333 1046 4B49     		ldr	r1, .L232+28
 2334 1048 2046     		mov	r0, r4
 2335 104a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2336 104e 2246     		mov	r2, r4
 2337 1050 8AA9     		add	r1, sp, #552
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 42


 2338 1052 8998     		ldr	r0, [sp, #548]
 2339 1054 FFF7FEFF 		bl	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef
 2340 1058 CFE7     		b	.L168
 2341              	.L223:
 2342 105a DDE91014 		ldrd	r1, r4, [sp, #64]
 2343 105e 2346     		mov	r3, r4
 2344 1060 0133     		adds	r3, r3, #1
 2345 1062 2246     		mov	r2, r4
 2346 1064 4448     		ldr	r0, .L232+32
 2347 1066 FFF7FEFF 		bl	_ZN10Kinematics11PrintMatrixEPKcRK10MathMatrixIdEjj
 2348 106a 2246     		mov	r2, r4
 2349 106c 8AA9     		add	r1, sp, #552
 2350 106e 4348     		ldr	r0, .L232+36
 2351 1070 FFF7FEFF 		bl	_ZN10Kinematics11PrintVectorEPKcPKdj
 2352 1074 059B     		ldr	r3, [sp, #20]
 2353 1076 002B     		cmp	r3, #0
 2354 1078 5AD0     		beq	.L157
 2355 107a 309B     		ldr	r3, [sp, #192]
 2356 107c D3F80831 		ldr	r3, [r3, #264]
 2357 1080 03F01003 		and	r3, r3, #16
 2358 1084 0893     		str	r3, [sp, #32]
 2359 1086 FFF720BA 		b	.L178
 2360              	.L170:
 2361 108a 309B     		ldr	r3, [sp, #192]
 2362 108c 8AA9     		add	r1, sp, #552
 2363 108e D868     		ldr	r0, [r3, #12]
 2364 1090 FFF7FEFF 		bl	_ZN4Move16AdjustLeadscrewsEPKd
 2365 1094 889C     		ldr	r4, [sp, #544]
 2366 1096 3A49     		ldr	r1, .L232+40
 2367 1098 2046     		mov	r0, r4
 2368 109a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2369 109e 2246     		mov	r2, r4
 2370 10a0 8AA9     		add	r1, sp, #552
 2371 10a2 8998     		ldr	r0, [sp, #548]
 2372 10a4 FFF7FEFF 		bl	_ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef
 2373 10a8 DDE90E01 		ldrd	r0, [sp, #56]
 2374 10ac FFF7FEFF 		bl	__aeabi_d2f
 2375 10b0 DDED057A 		vldr.32	s15, [sp, #20]	@ int
 2376 10b4 B8EEE78A 		vcvt.f32.s32	s16, s15
 2377 10b8 07EE900A 		vmov	s15, r0
 2378 10bc 87EE880A 		vdiv.f32	s0, s15, s16
 2379 10c0 B5EE400A 		vcmp.f32	s0, #0
 2380 10c4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2381 10c8 F1EEC08A 		vsqrt.f32	s17, s0
 2382 10cc 3FD4     		bmi	.L226
 2383              	.L171:
 2384 10ce 18EE900A 		vmov	r0, s17
 2385 10d2 FFF7FEFF 		bl	__aeabi_f2d
 2386 10d6 0446     		mov	r4, r0
 2387 10d8 0D46     		mov	r5, r1
 2388 10da DDE90601 		ldrd	r0, [sp, #24]
 2389 10de FFF7FEFF 		bl	__aeabi_d2f
 2390 10e2 07EE900A 		vmov	s15, r0
 2391 10e6 87EE880A 		vdiv.f32	s0, s15, s16
 2392 10ea B5EE400A 		vcmp.f32	s0, #0
 2393 10ee F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 2394 10f2 B1EEC08A 		vsqrt.f32	s16, s0
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 43


 2395 10f6 27D4     		bmi	.L227
 2396              	.L172:
 2397 10f8 4FF00009 		mov	r9, #0
 2398 10fc 18EE100A 		vmov	r0, s16
 2399 1100 FFF7FEFF 		bl	__aeabi_f2d
 2400 1104 CDE90045 		strd	r4, [sp]
 2401 1108 CDE90201 		strd	r0, [sp, #8]
 2402 110c 059A     		ldr	r2, [sp, #20]
 2403 110e 1D49     		ldr	r1, .L232+44
 2404 1110 8898     		ldr	r0, [sp, #544]
 2405 1112 FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2406 1116 70E7     		b	.L168
 2407              	.L180:
 2408 1118 1B4B     		ldr	r3, .L232+48
 2409 111a 3093     		str	r3, [sp, #192]
 2410 111c DAAB     		add	r3, sp, #872
 2411 111e 1093     		str	r3, [sp, #64]
 2412 1120 FFF715B9 		b	.L141
 2413              	.L224:
 2414 1124 9FED0C7B 		vldr.64	d7, .L232
 2415 1128 8DED067B 		vstr.64	d7, [sp, #24]
 2416 112c FFF717BA 		b	.L220
 2417              	.L157:
 2418 1130 309B     		ldr	r3, [sp, #192]
 2419 1132 9FED097B 		vldr.64	d7, .L232
 2420 1136 D3F80831 		ldr	r3, [r3, #264]
 2421 113a 03F01003 		and	r3, r3, #16
 2422 113e 8DED067B 		vstr.64	d7, [sp, #24]
 2423 1142 0893     		str	r3, [sp, #32]
 2424 1144 FFF704BA 		b	.L160
 2425              	.L227:
 2426 1148 FFF7FEFF 		bl	sqrtf
 2427 114c D4E7     		b	.L172
 2428              	.L226:
 2429 114e FFF7FEFF 		bl	sqrtf
 2430 1152 BCE7     		b	.L171
 2431              	.L233:
 2432 1154 AFF30080 		.align	3
 2433              	.L232:
 2434 1158 00000000 		.word	0
 2435 115c 00000000 		.word	0
 2436 1160 14010000 		.word	.LC14
 2437 1164 34010000 		.word	.LC15
 2438 1168 4C010000 		.word	.LC16
 2439 116c 0C000000 		.word	.LC5
 2440 1170 08000000 		.word	_ZTV11FixedMatrixIdLj8ELj9EE+8
 2441 1174 58000000 		.word	.LC10
 2442 1178 30000000 		.word	.LC7
 2443 117c 40000000 		.word	.LC8
 2444 1180 C4000000 		.word	.LC12
 2445 1184 E0000000 		.word	.LC13
 2446 1188 00000000 		.word	reprap
 2447 118c 00000000 		.word	.LC3
 2448 1190 08000000 		.word	.LC4
 2449              		.size	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef.part.5, .-
 2450              		.section	.text._ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef,"
 2451              		.align	1
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 44


 2452              		.p2align 2,,3
 2453              		.global	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 2454              		.syntax unified
 2455              		.thumb
 2456              		.thumb_func
 2457              		.fpu fpv4-sp-d16
 2458              		.type	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, %function
 2459              	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef:
 2460              		@ args = 0, pretend = 0, frame = 8
 2461              		@ frame_needed = 0, uses_anonymous_args = 0
 2462 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2463 0002 0468     		ldr	r4, [r0]
 2464 0004 124E     		ldr	r6, .L243
 2465 0006 2469     		ldr	r4, [r4, #16]
 2466 0008 B442     		cmp	r4, r6
 2467 000a 83B0     		sub	sp, sp, #12
 2468 000c 0546     		mov	r5, r0
 2469 000e 1F46     		mov	r7, r3
 2470 0010 17D1     		bne	.L235
 2471 0012 0469     		ldr	r4, [r0, #16]
 2472 0014 012C     		cmp	r4, #1
 2473 0016 94BF     		ite	ls
 2474 0018 0024     		movls	r4, #0
 2475 001a 0124     		movhi	r4, #1
 2476              	.L236:
 2477 001c 3CB1     		cbz	r4, .L237
 2478 001e 2B69     		ldr	r3, [r5, #16]
 2479 0020 8B42     		cmp	r3, r1
 2480 0022 07D0     		beq	.L238
 2481 0024 0A46     		mov	r2, r1
 2482 0026 3846     		mov	r0, r7
 2483 0028 0A49     		ldr	r1, .L243+4
 2484 002a FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 2485              	.L237:
 2486 002e 2046     		mov	r0, r4
 2487 0030 03B0     		add	sp, sp, #12
 2488              		@ sp needed
 2489 0032 F0BD     		pop	{r4, r5, r6, r7, pc}
 2490              	.L238:
 2491 0034 3B46     		mov	r3, r7
 2492 0036 2846     		mov	r0, r5
 2493 0038 03B0     		add	sp, sp, #12
 2494              		@ sp needed
 2495 003a BDE8F040 		pop	{r4, r5, r6, r7, lr}
 2496 003e FFF7FEBF 		b	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef.part.5
 2497              	.L235:
 2498 0042 CDE90012 		strd	r1, r2, [sp]
 2499 0046 A047     		blx	r4
 2500 0048 DDE90012 		ldrd	r1, r2, [sp]
 2501 004c 0446     		mov	r4, r0
 2502 004e E5E7     		b	.L236
 2503              	.L244:
 2504              		.align	2
 2505              	.L243:
 2506 0050 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 2507 0054 00000000 		.word	.LC17
 2508              		.size	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef, .-_ZN20ZL
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 45


 2509              		.section	.text._ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 2510              		.align	1
 2511              		.p2align 2,,3
 2512              		.global	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 2513              		.syntax unified
 2514              		.thumb
 2515              		.thumb_func
 2516              		.fpu fpv4-sp-d16
 2517              		.type	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 2518              	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 2519              		@ args = 4, pretend = 0, frame = 24
 2520              		@ frame_needed = 0, uses_anonymous_args = 0
 2521 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2522 0004 40F29F25 		movw	r5, #671
 2523 0008 A942     		cmp	r1, r5
 2524 000a 8BB0     		sub	sp, sp, #44
 2525 000c 0446     		mov	r4, r0
 2526 000e 1746     		mov	r7, r2
 2527 0010 1E46     		mov	r6, r3
 2528 0012 6FD1     		bne	.L246
 2529 0014 C37B     		ldrb	r3, [r0, #15]	@ zero_extendqisi2
 2530 0016 022B     		cmp	r3, #2
 2531 0018 6CD0     		beq	.L246
 2532 001a 0823     		movs	r3, #8
 2533 001c 5821     		movs	r1, #88
 2534 001e 1046     		mov	r0, r2
 2535 0020 CDE90833 		strd	r3, r3, [sp, #32]
 2536 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2537 0028 04F15C09 		add	r9, r4, #92
 2538 002c 0546     		mov	r5, r0
 2539 002e 04F1580A 		add	r10, r4, #88
 2540 0032 04F15408 		add	r8, r4, #84
 2541 0036 0028     		cmp	r0, #0
 2542 0038 68D1     		bne	.L272
 2543 003a 5921     		movs	r1, #89
 2544 003c 3846     		mov	r0, r7
 2545 003e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2546 0042 0028     		cmp	r0, #0
 2547 0044 40F0B680 		bne	.L258
 2548 0048 0AAD     		add	r5, sp, #40
 2549 004a 5246     		mov	r2, r10
 2550 004c 05F8090D 		strb	r0, [r5, #-9]!
 2551 0050 5321     		movs	r1, #83
 2552 0052 2B46     		mov	r3, r5
 2553 0054 3846     		mov	r0, r7
 2554 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2555 005a 2B46     		mov	r3, r5
 2556 005c 4A46     		mov	r2, r9
 2557 005e 5021     		movs	r1, #80
 2558 0060 3846     		mov	r0, r7
 2559 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2560 0066 2B46     		mov	r3, r5
 2561 0068 4246     		mov	r2, r8
 2562 006a 3846     		mov	r0, r7
 2563 006c 4621     		movs	r1, #70
 2564 006e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2565 0072 9DF81F50 		ldrb	r5, [sp, #31]	@ zero_extendqisi2
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 46


 2566 0076 002D     		cmp	r5, #0
 2567 0078 44D1     		bne	.L260
 2568 007a 2369     		ldr	r3, [r4, #16]
 2569 007c 012B     		cmp	r3, #1
 2570 007e 7ED9     		bls	.L273
 2571 0080 5249     		ldr	r1, .L276
 2572 0082 3046     		mov	r0, r6
 2573 0084 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2574 0088 2369     		ldr	r3, [r4, #16]
 2575 008a EBB1     		cbz	r3, .L252
 2576 008c 04F1140B 		add	fp, r4, #20
 2577 0090 04F1340A 		add	r10, r4, #52
 2578 0094 2F46     		mov	r7, r5
 2579              	.L253:
 2580 0096 5AF8043B 		ldr	r3, [r10], #4	@ float
 2581 009a 5BF8040B 		ldr	r0, [fp], #4	@ float
 2582 009e 0593     		str	r3, [sp, #20]
 2583 00a0 FFF7FEFF 		bl	__aeabi_f2d
 2584 00a4 059B     		ldr	r3, [sp, #20]
 2585 00a6 8046     		mov	r8, r0
 2586 00a8 1846     		mov	r0, r3	@ float
 2587 00aa 8946     		mov	r9, r1
 2588 00ac FFF7FEFF 		bl	__aeabi_f2d
 2589 00b0 4B46     		mov	r3, r9
 2590 00b2 CDE90001 		strd	r0, [sp]
 2591 00b6 4246     		mov	r2, r8
 2592 00b8 4549     		ldr	r1, .L276+4
 2593 00ba 3046     		mov	r0, r6
 2594 00bc FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2595 00c0 2369     		ldr	r3, [r4, #16]
 2596 00c2 0137     		adds	r7, r7, #1
 2597 00c4 BB42     		cmp	r3, r7
 2598 00c6 E6D8     		bhi	.L253
 2599              	.L252:
 2600 00c8 606D     		ldr	r0, [r4, #84]	@ float
 2601 00ca FFF7FEFF 		bl	__aeabi_f2d
 2602 00ce 8046     		mov	r8, r0
 2603 00d0 E06D     		ldr	r0, [r4, #92]	@ float
 2604 00d2 8946     		mov	r9, r1
 2605 00d4 FFF7FEFF 		bl	__aeabi_f2d
 2606 00d8 CDE90201 		strd	r0, [sp, #8]
 2607 00dc A06D     		ldr	r0, [r4, #88]	@ float
 2608 00de FFF7FEFF 		bl	__aeabi_f2d
 2609 00e2 4246     		mov	r2, r8
 2610 00e4 CDE90001 		strd	r0, [sp]
 2611 00e8 4B46     		mov	r3, r9
 2612 00ea 3046     		mov	r0, r6
 2613 00ec 3949     		ldr	r1, .L276+8
 2614 00ee FFF7FEFF 		bl	_ZNK9StringRef4catfEPKcz
 2615 00f2 07E0     		b	.L260
 2616              	.L246:
 2617 00f4 149B     		ldr	r3, [sp, #80]
 2618 00f6 0093     		str	r3, [sp]
 2619 00f8 3A46     		mov	r2, r7
 2620 00fa 3346     		mov	r3, r6
 2621 00fc 2046     		mov	r0, r4
 2622 00fe FFF7FEFF 		bl	_ZN10Kinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 47


 2623 0102 0546     		mov	r5, r0
 2624              	.L260:
 2625 0104 2846     		mov	r0, r5
 2626 0106 0BB0     		add	sp, sp, #44
 2627              		@ sp needed
 2628 0108 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2629              	.L272:
 2630 010c 04F11401 		add	r1, r4, #20
 2631 0110 3846     		mov	r0, r7
 2632 0112 0023     		movs	r3, #0
 2633 0114 08AA     		add	r2, sp, #32
 2634 0116 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 2635 011a 5921     		movs	r1, #89
 2636 011c 3846     		mov	r0, r7
 2637 011e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2638 0122 88B3     		cbz	r0, .L274
 2639 0124 0DF1280B 		add	fp, sp, #40
 2640 0128 0023     		movs	r3, #0
 2641 012a 1D46     		mov	r5, r3
 2642 012c 09AA     		add	r2, sp, #36
 2643 012e 04F13401 		add	r1, r4, #52
 2644 0132 3846     		mov	r0, r7
 2645 0134 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 2646 0138 0BF8095D 		strb	r5, [fp, #-9]!
 2647 013c 5246     		mov	r2, r10
 2648 013e 5B46     		mov	r3, fp
 2649 0140 5321     		movs	r1, #83
 2650 0142 3846     		mov	r0, r7
 2651 0144 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2652 0148 5B46     		mov	r3, fp
 2653 014a 4A46     		mov	r2, r9
 2654 014c 5021     		movs	r1, #80
 2655 014e 3846     		mov	r0, r7
 2656 0150 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2657 0154 5B46     		mov	r3, fp
 2658 0156 4246     		mov	r2, r8
 2659 0158 3846     		mov	r0, r7
 2660 015a 4621     		movs	r1, #70
 2661 015c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2662 0160 DDE90832 		ldrd	r3, r2, [sp, #32]
 2663 0164 9342     		cmp	r3, r2
 2664 0166 08D0     		beq	.L275
 2665              	.L257:
 2666 0168 3046     		mov	r0, r6
 2667 016a 1B49     		ldr	r1, .L276+12
 2668 016c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2669 0170 0125     		movs	r5, #1
 2670 0172 2846     		mov	r0, r5
 2671 0174 0BB0     		add	sp, sp, #44
 2672              		@ sp needed
 2673 0176 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2674              	.L275:
 2675 017a 2361     		str	r3, [r4, #16]
 2676 017c C2E7     		b	.L260
 2677              	.L273:
 2678 017e 3046     		mov	r0, r6
 2679 0180 1649     		ldr	r1, .L276+16
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 48


 2680 0182 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 2681 0186 BDE7     		b	.L260
 2682              	.L274:
 2683 0188 0AAC     		add	r4, sp, #40
 2684 018a 5246     		mov	r2, r10
 2685 018c 04F8090D 		strb	r0, [r4, #-9]!
 2686              	.L271:
 2687 0190 2346     		mov	r3, r4
 2688 0192 5321     		movs	r1, #83
 2689 0194 3846     		mov	r0, r7
 2690 0196 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2691 019a 2346     		mov	r3, r4
 2692 019c 4A46     		mov	r2, r9
 2693 019e 5021     		movs	r1, #80
 2694 01a0 3846     		mov	r0, r7
 2695 01a2 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2696 01a6 2346     		mov	r3, r4
 2697 01a8 4246     		mov	r2, r8
 2698 01aa 3846     		mov	r0, r7
 2699 01ac 4621     		movs	r1, #70
 2700 01ae FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2701 01b2 D9E7     		b	.L257
 2702              	.L258:
 2703 01b4 04F13401 		add	r1, r4, #52
 2704 01b8 0AAC     		add	r4, sp, #40
 2705 01ba 09AA     		add	r2, sp, #36
 2706 01bc 2B46     		mov	r3, r5
 2707 01be 3846     		mov	r0, r7
 2708 01c0 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 2709 01c4 5246     		mov	r2, r10
 2710 01c6 04F8095D 		strb	r5, [r4, #-9]!
 2711 01ca E1E7     		b	.L271
 2712              	.L277:
 2713              		.align	2
 2714              	.L276:
 2715 01cc 60000000 		.word	.LC20
 2716 01d0 78000000 		.word	.LC21
 2717 01d4 88000000 		.word	.LC22
 2718 01d8 00000000 		.word	.LC18
 2719 01dc 34000000 		.word	.LC19
 2720              		.size	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN20ZLeadscrewKinemati
 2721              		.global	_ZTV20ZLeadscrewKinematics
 2722              		.weak	_ZTV11FixedMatrixIdLj32ELj8EE
 2723              		.section	.rodata._ZTV11FixedMatrixIdLj32ELj8EE,"aG",%progbits,_ZTV11FixedMatrixIdLj32ELj8EE,comdat
 2724              		.align	2
 2725              		.type	_ZTV11FixedMatrixIdLj32ELj8EE, %object
 2726              		.size	_ZTV11FixedMatrixIdLj32ELj8EE, 32
 2727              	_ZTV11FixedMatrixIdLj32ELj8EE:
 2728 0000 00000000 		.word	0
 2729 0004 00000000 		.word	0
 2730 0008 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj8EE4rowsEv
 2731 000c 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj8EE4colsEv
 2732 0010 00000000 		.word	_ZN11FixedMatrixIdLj32ELj8EEclEjj
 2733 0014 00000000 		.word	_ZNK11FixedMatrixIdLj32ELj8EEclEjj
 2734 0018 00000000 		.word	_ZN11FixedMatrixIdLj32ELj8EED1Ev
 2735 001c 00000000 		.word	_ZN11FixedMatrixIdLj32ELj8EED0Ev
 2736              		.weak	_ZTV11FixedMatrixIdLj8ELj9EE
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 49


 2737              		.section	.rodata._ZTV11FixedMatrixIdLj8ELj9EE,"aG",%progbits,_ZTV11FixedMatrixIdLj8ELj9EE,comdat
 2738              		.align	2
 2739              		.type	_ZTV11FixedMatrixIdLj8ELj9EE, %object
 2740              		.size	_ZTV11FixedMatrixIdLj8ELj9EE, 32
 2741              	_ZTV11FixedMatrixIdLj8ELj9EE:
 2742 0000 00000000 		.word	0
 2743 0004 00000000 		.word	0
 2744 0008 00000000 		.word	_ZNK11FixedMatrixIdLj8ELj9EE4rowsEv
 2745 000c 00000000 		.word	_ZNK11FixedMatrixIdLj8ELj9EE4colsEv
 2746 0010 00000000 		.word	_ZN11FixedMatrixIdLj8ELj9EEclEjj
 2747 0014 00000000 		.word	_ZNK11FixedMatrixIdLj8ELj9EEclEjj
 2748 0018 00000000 		.word	_ZN11FixedMatrixIdLj8ELj9EED1Ev
 2749 001c 00000000 		.word	_ZN11FixedMatrixIdLj8ELj9EED0Ev
 2750              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2751              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2752              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2753              	_ZL28cpu_irq_prev_interrupt_state:
 2754 0000 00       		.space	1
 2755              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2756              		.align	2
 2757              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2758              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2759              	_ZL32cpu_irq_critical_section_counter:
 2760 0000 00000000 		.space	4
 2761              		.section	.rodata._ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 2762              		.align	2
 2763              	.LC3:
 2764 0000 646F776E 		.ascii	"down\000"
 2764      00
 2765 0005 000000   		.space	3
 2766              	.LC4:
 2767 0008 757000   		.ascii	"up\000"
 2768 000b 00       		.space	1
 2769              	.LC5:
 2770 000c 44657269 		.ascii	"Derivative matrix\000"
 2770      76617469 
 2770      7665206D 
 2770      61747269 
 2770      7800
 2771 001e 0000     		.space	2
 2772              	.LC6:
 2773 0020 4E6F726D 		.ascii	"Normal matrix\000"
 2773      616C206D 
 2773      61747269 
 2773      7800
 2774 002e 0000     		.space	2
 2775              	.LC7:
 2776 0030 536F6C76 		.ascii	"Solved matrix\000"
 2776      6564206D 
 2776      61747269 
 2776      7800
 2777 003e 0000     		.space	2
 2778              	.LC8:
 2779 0040 536F6C75 		.ascii	"Solution\000"
 2779      74696F6E 
 2779      00
 2780 0049 000000   		.space	3
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 50


 2781              	.LC9:
 2782 004c 52657369 		.ascii	"Residuals\000"
 2782      6475616C 
 2782      7300
 2783 0056 0000     		.space	2
 2784              	.LC10:
 2785 0058 43616C69 		.ascii	"Calibration failed, computed corrections:\000"
 2785      62726174 
 2785      696F6E20 
 2785      6661696C 
 2785      65642C20 
 2786 0082 0000     		.space	2
 2787              	.LC11:
 2788 0084 536F6D65 		.ascii	"Some computed corrections exceed configured limit o"
 2788      20636F6D 
 2788      70757465 
 2788      6420636F 
 2788      72726563 
 2789 00b7 6620252E 		.ascii	"f %.02fmm:\000"
 2789      3032666D 
 2789      6D3A00
 2790 00c2 0000     		.space	2
 2791              	.LC12:
 2792 00c4 4C656164 		.ascii	"Leadscrew adjustments made:\000"
 2792      73637265 
 2792      77206164 
 2792      6A757374 
 2792      6D656E74 
 2793              	.LC13:
 2794 00e0 2C20706F 		.ascii	", points used %d, deviation before %.3f after %.3f\000"
 2794      696E7473 
 2794      20757365 
 2794      64202564 
 2794      2C206465 
 2795 0113 00       		.space	1
 2796              	.LC14:
 2797 0114 4D616E75 		.ascii	"Manual corrections required:\000"
 2797      616C2063 
 2797      6F727265 
 2797      6374696F 
 2797      6E732072 
 2798 0131 000000   		.space	3
 2799              	.LC15:
 2800 0134 20252E32 		.ascii	" %.2f turn %s (%.2fmm)\000"
 2800      66207475 
 2800      726E2025 
 2800      73202825 
 2800      2E32666D 
 2801 014b 00       		.space	1
 2802              	.LC16:
 2803 014c 25730A00 		.ascii	"%s\012\000"
 2804              		.section	.rodata._ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 2805              		.align	2
 2806              	.LC17:
 2807 0000 4E756D62 		.ascii	"Number of calibration factors (%u) not equal to num"
 2807      6572206F 
 2807      66206361 
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 51


 2807      6C696272 
 2807      6174696F 
 2808 0033 62657220 		.ascii	"ber of leadscrews (%u)\000"
 2808      6F66206C 
 2808      65616473 
 2808      63726577 
 2808      73202825 
 2809              		.section	.rodata._ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%p
 2810              		.align	2
 2811              	.LC18:
 2812 0000 53706563 		.ascii	"Specify 1, 2, 3 or 4 X and Y coordinates in M671\000"
 2812      69667920 
 2812      312C2032 
 2812      2C203320 
 2812      6F722034 
 2813 0031 000000   		.space	3
 2814              	.LC19:
 2815 0034 5A206C65 		.ascii	"Z leadscrew coordinates are not configured\000"
 2815      61647363 
 2815      72657720 
 2815      636F6F72 
 2815      64696E61 
 2816 005f 00       		.space	1
 2817              	.LC20:
 2818 0060 5A206C65 		.ascii	"Z leadscrew coordinates\000"
 2818      61647363 
 2818      72657720 
 2818      636F6F72 
 2818      64696E61 
 2819              	.LC21:
 2820 0078 2028252E 		.ascii	" (%.1f,%.1f)\000"
 2820      31662C25 
 2820      2E316629 
 2820      00
 2821 0085 000000   		.space	3
 2822              	.LC22:
 2823 0088 2C206661 		.ascii	", factor %.02f, maximum correction %.02fmm, manual "
 2823      63746F72 
 2823      20252E30 
 2823      32662C20 
 2823      6D617869 
 2824 00bb 61646A75 		.ascii	"adjusting screw pitch %.02fmm\000"
 2824      7374696E 
 2824      67207363 
 2824      72657720 
 2824      70697463 
 2825              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 2826              		.align	2
 2827              	.LC1:
 2828 0000 58595A00 		.ascii	"XYZ\000"
 2829              		.section	.rodata._ZNK10Kinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 2830              		.align	2
 2831              	.LC0:
 2832 0000 58595A55 		.ascii	"XYZUVWABC\000"
 2832      56574142 
 2832      4300
 2833              		.section	.rodata._ZNK20ZLeadscrewKinematics17AppendCorrectionsEPKdRK9StringRef.str1.4,"aMS",%progb
ARM GAS  C:\Users\paja\AppData\Local\Temp\cc4prHmi.s 			page 52


 2834              		.align	2
 2835              	.LC2:
 2836 0000 20252E33 		.ascii	" %.3f\000"
 2836      6600
 2837              		.section	.rodata._ZTV20ZLeadscrewKinematics,"a",%progbits
 2838              		.align	2
 2839              		.set	.LANCHOR0,. + 0
 2840              		.type	_ZTV20ZLeadscrewKinematics, %object
 2841              		.size	_ZTV20ZLeadscrewKinematics, 128
 2842              	_ZTV20ZLeadscrewKinematics:
 2843 0000 00000000 		.word	0
 2844 0004 00000000 		.word	0
 2845 0008 00000000 		.word	__cxa_pure_virtual
 2846 000c 00000000 		.word	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 2847 0010 00000000 		.word	__cxa_pure_virtual
 2848 0014 00000000 		.word	__cxa_pure_virtual
 2849 0018 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 2850 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 2851 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 2852 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 2853 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 2854 002c 00000000 		.word	_ZNK10Kinematics11IsReachableEffb
 2855 0030 00000000 		.word	_ZNK10Kinematics13LimitPositionEPfjmb
 2856 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 2857 0038 00000000 		.word	_ZNK10Kinematics25GetAssumedInitialPositionEjPf
 2858 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 2859 0040 00000000 		.word	_ZNK10Kinematics16NumHomingButtonsEj
 2860 0044 00000000 		.word	_ZNK10Kinematics17HomingButtonNamesEv
 2861 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 2862 004c 00000000 		.word	_ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef
 2863 0050 00000000 		.word	__cxa_pure_virtual
 2864 0054 00000000 		.word	__cxa_pure_virtual
 2865 0058 00000000 		.word	__cxa_pure_virtual
 2866 005c 00000000 		.word	_ZNK10Kinematics16AxesAssumedHomedEm
 2867 0060 00000000 		.word	_ZNK10Kinematics15MustBeHomedAxesEmb
 2868 0064 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 2869 0068 00000000 		.word	__cxa_pure_virtual
 2870 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 2871 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 2872 0074 00000000 		.word	_ZNK10Kinematics24IsContinuousRotationAxisEj
 2873 0078 00000000 		.word	0
 2874 007c 00000000 		.word	0
 2875              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
