ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 1


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
  13              		.file	"ScaraKinematics.cpp"
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
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 2


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
  98              		.section	.text._ZNK10Kinematics16MachineAxisNamesEv,"axG",%progbits,_ZNK10Kinematics16MachineAxisN
  99              		.align	1
 100              		.p2align 2,,3
 101              		.weak	_ZNK10Kinematics16MachineAxisNamesEv
 102              		.syntax unified
 103              		.thumb
 104              		.thumb_func
 105              		.fpu fpv4-sp-d16
 106              		.type	_ZNK10Kinematics16MachineAxisNamesEv, %function
 107              	_ZNK10Kinematics16MachineAxisNamesEv:
 108              		@ args = 0, pretend = 0, frame = 0
 109              		@ frame_needed = 0, uses_anonymous_args = 0
 110              		@ link register save eliminated.
 111 0000 0048     		ldr	r0, .L10
 112 0002 7047     		bx	lr
 113              	.L11:
 114              		.align	2
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 3


 115              	.L10:
 116 0004 00000000 		.word	.LC0
 117              		.size	_ZNK10Kinematics16MachineAxisNamesEv, .-_ZNK10Kinematics16MachineAxisNamesEv
 118              		.section	.text._ZNK15ScaraKinematics17HomingButtonNamesEv,"axG",%progbits,_ZNK15ScaraKinematics17H
 119              		.align	1
 120              		.p2align 2,,3
 121              		.weak	_ZNK15ScaraKinematics17HomingButtonNamesEv
 122              		.syntax unified
 123              		.thumb
 124              		.thumb_func
 125              		.fpu fpv4-sp-d16
 126              		.type	_ZNK15ScaraKinematics17HomingButtonNamesEv, %function
 127              	_ZNK15ScaraKinematics17HomingButtonNamesEv:
 128              		@ args = 0, pretend = 0, frame = 0
 129              		@ frame_needed = 0, uses_anonymous_args = 0
 130              		@ link register save eliminated.
 131 0000 0048     		ldr	r0, .L13
 132 0002 7047     		bx	lr
 133              	.L14:
 134              		.align	2
 135              	.L13:
 136 0004 00000000 		.word	.LC1
 137              		.size	_ZNK15ScaraKinematics17HomingButtonNamesEv, .-_ZNK15ScaraKinematics17HomingButtonNamesEv
 138              		.section	.text._ZNK15ScaraKinematics13GetHomingModeEv,"axG",%progbits,_ZNK15ScaraKinematics13GetHo
 139              		.align	1
 140              		.p2align 2,,3
 141              		.weak	_ZNK15ScaraKinematics13GetHomingModeEv
 142              		.syntax unified
 143              		.thumb
 144              		.thumb_func
 145              		.fpu fpv4-sp-d16
 146              		.type	_ZNK15ScaraKinematics13GetHomingModeEv, %function
 147              	_ZNK15ScaraKinematics13GetHomingModeEv:
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 0, uses_anonymous_args = 0
 150              		@ link register save eliminated.
 151 0000 0120     		movs	r0, #1
 152 0002 7047     		bx	lr
 153              		.size	_ZNK15ScaraKinematics13GetHomingModeEv, .-_ZNK15ScaraKinematics13GetHomingModeEv
 154              		.section	.text._ZNK15ScaraKinematics7GetNameEb,"ax",%progbits
 155              		.align	1
 156              		.p2align 2,,3
 157              		.global	_ZNK15ScaraKinematics7GetNameEb
 158              		.syntax unified
 159              		.thumb
 160              		.thumb_func
 161              		.fpu fpv4-sp-d16
 162              		.type	_ZNK15ScaraKinematics7GetNameEb, %function
 163              	_ZNK15ScaraKinematics7GetNameEb:
 164              		@ args = 0, pretend = 0, frame = 0
 165              		@ frame_needed = 0, uses_anonymous_args = 0
 166              		@ link register save eliminated.
 167 0000 0048     		ldr	r0, .L17
 168 0002 7047     		bx	lr
 169              	.L18:
 170              		.align	2
 171              	.L17:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 4


 172 0004 00000000 		.word	.LC2
 173              		.size	_ZNK15ScaraKinematics7GetNameEb, .-_ZNK15ScaraKinematics7GetNameEb
 174              		.section	.text._ZNK15ScaraKinematics25GetAssumedInitialPositionEjPf,"ax",%progbits
 175              		.align	1
 176              		.p2align 2,,3
 177              		.global	_ZNK15ScaraKinematics25GetAssumedInitialPositionEjPf
 178              		.syntax unified
 179              		.thumb
 180              		.thumb_func
 181              		.fpu fpv4-sp-d16
 182              		.type	_ZNK15ScaraKinematics25GetAssumedInitialPositionEjPf, %function
 183              	_ZNK15ScaraKinematics25GetAssumedInitialPositionEjPf:
 184              		@ args = 0, pretend = 0, frame = 0
 185              		@ frame_needed = 0, uses_anonymous_args = 0
 186              		@ link register save eliminated.
 187 0000 D0ED267A 		vldr.32	s15, [r0, #152]
 188 0004 90ED217A 		vldr.32	s14, [r0, #132]
 189 0008 77EEC77A 		vsub.f32	s15, s15, s14
 190 000c 0229     		cmp	r1, #2
 191 000e C2ED007A 		vstr.32	s15, [r2]
 192 0012 D0ED227A 		vldr.32	s15, [r0, #136]
 193 0016 F1EE677A 		vneg.f32	s15, s15
 194 001a C2ED017A 		vstr.32	s15, [r2, #4]
 195 001e 07D9     		bls	.L19
 196 0020 02EB8101 		add	r1, r2, r1, lsl #2
 197 0024 0023     		movs	r3, #0
 198 0026 0832     		adds	r2, r2, #8
 199              	.L21:
 200 0028 42F8043B 		str	r3, [r2], #4	@ float
 201 002c 8A42     		cmp	r2, r1
 202 002e FBD1     		bne	.L21
 203              	.L19:
 204 0030 7047     		bx	lr
 205              		.size	_ZNK15ScaraKinematics25GetAssumedInitialPositionEjPf, .-_ZNK15ScaraKinematics25GetAssumedIni
 206 0032 00BF     		.section	.text._ZNK15ScaraKinematics16AxesAssumedHomedEm,"ax",%progbits
 207              		.align	1
 208              		.p2align 2,,3
 209              		.global	_ZNK15ScaraKinematics16AxesAssumedHomedEm
 210              		.syntax unified
 211              		.thumb
 212              		.thumb_func
 213              		.fpu fpv4-sp-d16
 214              		.type	_ZNK15ScaraKinematics16AxesAssumedHomedEm, %function
 215              	_ZNK15ScaraKinematics16AxesAssumedHomedEm:
 216              		@ args = 0, pretend = 0, frame = 0
 217              		@ frame_needed = 0, uses_anonymous_args = 0
 218              		@ link register save eliminated.
 219 0000 01F00303 		and	r3, r1, #3
 220 0004 032B     		cmp	r3, #3
 221 0006 14BF     		ite	ne
 222 0008 21F00300 		bicne	r0, r1, #3
 223 000c 0846     		moveq	r0, r1
 224 000e 7047     		bx	lr
 225              		.size	_ZNK15ScaraKinematics16AxesAssumedHomedEm, .-_ZNK15ScaraKinematics16AxesAssumedHomedEm
 226              		.section	.text._ZNK15ScaraKinematics15MustBeHomedAxesEmb,"ax",%progbits
 227              		.align	1
 228              		.p2align 2,,3
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 5


 229              		.global	_ZNK15ScaraKinematics15MustBeHomedAxesEmb
 230              		.syntax unified
 231              		.thumb
 232              		.thumb_func
 233              		.fpu fpv4-sp-d16
 234              		.type	_ZNK15ScaraKinematics15MustBeHomedAxesEmb, %function
 235              	_ZNK15ScaraKinematics15MustBeHomedAxesEmb:
 236              		@ args = 0, pretend = 0, frame = 0
 237              		@ frame_needed = 0, uses_anonymous_args = 0
 238              		@ link register save eliminated.
 239 0000 4B07     		lsls	r3, r1, #29
 240 0002 14BF     		ite	ne
 241 0004 41F00700 		orrne	r0, r1, #7
 242 0008 0846     		moveq	r0, r1
 243 000a 7047     		bx	lr
 244              		.size	_ZNK15ScaraKinematics15MustBeHomedAxesEmb, .-_ZNK15ScaraKinematics15MustBeHomedAxesEmb
 245              		.section	.text._ZNK15ScaraKinematics24IsContinuousRotationAxisEj,"ax",%progbits
 246              		.align	1
 247              		.p2align 2,,3
 248              		.global	_ZNK15ScaraKinematics24IsContinuousRotationAxisEj
 249              		.syntax unified
 250              		.thumb
 251              		.thumb_func
 252              		.fpu fpv4-sp-d16
 253              		.type	_ZNK15ScaraKinematics24IsContinuousRotationAxisEj, %function
 254              	_ZNK15ScaraKinematics24IsContinuousRotationAxisEj:
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257              		@ link register save eliminated.
 258 0000 0129     		cmp	r1, #1
 259 0002 9ABF     		itte	ls
 260 0004 0918     		addls	r1, r1, r0
 261 0006 91F88C00 		ldrbls	r0, [r1, #140]	@ zero_extendqisi2
 262 000a 0020     		movhi	r0, #0
 263 000c 7047     		bx	lr
 264              		.size	_ZNK15ScaraKinematics24IsContinuousRotationAxisEj, .-_ZNK15ScaraKinematics24IsContinuousRota
 265 000e 00BF     		.section	.text._ZN15ScaraKinematicsD2Ev,"axG",%progbits,_ZN15ScaraKinematicsD5Ev,comdat
 266              		.align	1
 267              		.p2align 2,,3
 268              		.weak	_ZN15ScaraKinematicsD2Ev
 269              		.syntax unified
 270              		.thumb
 271              		.thumb_func
 272              		.fpu fpv4-sp-d16
 273              		.type	_ZN15ScaraKinematicsD2Ev, %function
 274              	_ZN15ScaraKinematicsD2Ev:
 275              		@ args = 0, pretend = 0, frame = 0
 276              		@ frame_needed = 0, uses_anonymous_args = 0
 277              		@ link register save eliminated.
 278 0000 7047     		bx	lr
 279              		.size	_ZN15ScaraKinematicsD2Ev, .-_ZN15ScaraKinematicsD2Ev
 280              		.weak	_ZN15ScaraKinematicsD1Ev
 281              		.thumb_set _ZN15ScaraKinematicsD1Ev,_ZN15ScaraKinematicsD2Ev
 282 0002 00BF     		.section	.text._ZNK15ScaraKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA,"ax",%progbits
 283              		.align	1
 284              		.p2align 2,,3
 285              		.global	_ZNK15ScaraKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 6


 286              		.syntax unified
 287              		.thumb
 288              		.thumb_func
 289              		.fpu fpv4-sp-d16
 290              		.type	_ZNK15ScaraKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, %function
 291              	_ZNK15ScaraKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA:
 292              		@ args = 4, pretend = 0, frame = 0
 293              		@ frame_needed = 0, uses_anonymous_args = 0
 294 0000 38B5     		push	{r3, r4, r5, lr}
 295 0002 0129     		cmp	r1, #1
 296 0004 049C     		ldr	r4, [sp, #16]
 297 0006 5CD0     		beq	.L35
 298 0008 4CD3     		bcc	.L36
 299 000a 0229     		cmp	r1, #2
 300 000c 0D46     		mov	r5, r1
 301 000e 2FD1     		bne	.L49
 302 0010 4349     		ldr	r1, .L54
 303 0012 4968     		ldr	r1, [r1, #4]	@ unaligned
 304 0014 002A     		cmp	r2, #0
 305 0016 77D1     		bne	.L50
 306 0018 01F5F961 		add	r1, r1, #1992
 307 001c D1ED007A 		vldr.32	s15, [r1]
 308              	.L44:
 309 0020 94ED087A 		vldr.32	s14, [r4, #32]	@ int
 310 0024 D0ED1F4A 		vldr.32	s9, [r0, #124]
 311 0028 93ED005A 		vldr.32	s10, [r3]
 312 002c 90ED206A 		vldr.32	s12, [r0, #128]
 313 0030 D3ED015A 		vldr.32	s11, [r3, #4]
 314 0034 93ED020A 		vldr.32	s0, [r3, #8]
 315 0038 F8EEC76A 		vcvt.f32.s32	s13, s14
 316 003c 94ED097A 		vldr.32	s14, [r4, #36]	@ int
 317 0040 66EEA46A 		vmul.f32	s13, s13, s9
 318 0044 B8EEC77A 		vcvt.f32.s32	s14, s14
 319 0048 27EE067A 		vmul.f32	s14, s14, s12
 320 004c 86EE856A 		vdiv.f32	s12, s13, s10
 321 0050 C7EE256A 		vdiv.f32	s13, s14, s11
 322 0054 77EEC67A 		vsub.f32	s15, s15, s12
 323 0058 77EEE67A 		vsub.f32	s15, s15, s13
 324 005c 27EE800A 		vmul.f32	s0, s15, s0
 325 0060 FFF7FEFF 		bl	lrintf
 326 0064 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 327 0066 A062     		str	r0, [r4, #40]
 328 0068 6FF30003 		bfc	r3, #0, #1
 329 006c A372     		strb	r3, [r4, #10]
 330 006e 38BD     		pop	{r3, r4, r5, pc}
 331              	.L49:
 332 0070 2B49     		ldr	r1, .L54
 333 0072 4968     		ldr	r1, [r1, #4]
 334 0074 002A     		cmp	r2, #0
 335 0076 4CD1     		bne	.L51
 336 0078 05F5F872 		add	r2, r5, #496
 337 007c 01EB8201 		add	r1, r1, r2, lsl #2
 338 0080 91ED000A 		vldr.32	s0, [r1]
 339              	.L46:
 340 0084 03EB8503 		add	r3, r3, r5, lsl #2
 341 0088 D3ED007A 		vldr.32	s15, [r3]
 342 008c 20EE270A 		vmul.f32	s0, s0, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 7


 343 0090 FFF7FEFF 		bl	lrintf
 344 0094 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 345 0096 0835     		adds	r5, r5, #8
 346 0098 6FF30003 		bfc	r3, #0, #1
 347 009c 44F82500 		str	r0, [r4, r5, lsl #2]
 348 00a0 A372     		strb	r3, [r4, #10]
 349 00a2 38BD     		pop	{r3, r4, r5, pc}
 350              	.L36:
 351 00a4 6ABB     		cbnz	r2, .L52
 352 00a6 90ED1A0A 		vldr.32	s0, [r0, #104]
 353              	.L39:
 354 00aa D3ED007A 		vldr.32	s15, [r3]
 355 00ae 20EE270A 		vmul.f32	s0, s0, s15
 356 00b2 FFF7FEFF 		bl	lrintf
 357 00b6 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 358 00b8 2062     		str	r0, [r4, #32]
 359 00ba 6FF30003 		bfc	r3, #0, #1
 360 00be A372     		strb	r3, [r4, #10]
 361 00c0 38BD     		pop	{r3, r4, r5, pc}
 362              	.L35:
 363 00c2 DAB9     		cbnz	r2, .L53
 364 00c4 90ED1C7A 		vldr.32	s14, [r0, #112]
 365              	.L42:
 366 00c8 D4ED087A 		vldr.32	s15, [r4, #32]	@ int
 367 00cc D0ED1E6A 		vldr.32	s13, [r0, #120]
 368 00d0 93ED006A 		vldr.32	s12, [r3]
 369 00d4 93ED010A 		vldr.32	s0, [r3, #4]
 370 00d8 F8EEE77A 		vcvt.f32.s32	s15, s15
 371 00dc 67EEA67A 		vmul.f32	s15, s15, s13
 372 00e0 C7EE866A 		vdiv.f32	s13, s15, s12
 373 00e4 37EE667A 		vsub.f32	s14, s14, s13
 374 00e8 27EE000A 		vmul.f32	s0, s14, s0
 375 00ec FFF7FEFF 		bl	lrintf
 376 00f0 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 377 00f2 6062     		str	r0, [r4, #36]
 378 00f4 6FF30003 		bfc	r3, #0, #1
 379 00f8 A372     		strb	r3, [r4, #10]
 380 00fa 38BD     		pop	{r3, r4, r5, pc}
 381              	.L53:
 382 00fc 90ED1D7A 		vldr.32	s14, [r0, #116]
 383 0100 E2E7     		b	.L42
 384              	.L52:
 385 0102 90ED1B0A 		vldr.32	s0, [r0, #108]
 386 0106 D0E7     		b	.L39
 387              	.L50:
 388 0108 01F2A471 		addw	r1, r1, #1956
 389 010c D1ED007A 		vldr.32	s15, [r1]
 390 0110 86E7     		b	.L44
 391              	.L51:
 392 0112 05F5F372 		add	r2, r5, #486
 393 0116 01EB8201 		add	r1, r1, r2, lsl #2
 394 011a 91ED010A 		vldr.32	s0, [r1, #4]
 395 011e B1E7     		b	.L46
 396              	.L55:
 397              		.align	2
 398              	.L54:
 399 0120 00000000 		.word	reprap
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 8


 400              		.size	_ZNK15ScaraKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, .-_ZNK15ScaraKinematics23OnHoming
 401              		.section	.text._ZNK15ScaraKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 402              		.align	1
 403              		.p2align 2,,3
 404              		.global	_ZNK15ScaraKinematics21MotorStepsToCartesianEPKlPKfjjPf
 405              		.syntax unified
 406              		.thumb
 407              		.thumb_func
 408              		.fpu fpv4-sp-d16
 409              		.type	_ZNK15ScaraKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 410              	_ZNK15ScaraKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 411              		@ args = 8, pretend = 0, frame = 0
 412              		@ frame_needed = 0, uses_anonymous_args = 0
 413 0000 D1ED007A 		vldr.32	s15, [r1]	@ int
 414 0004 92ED006A 		vldr.32	s12, [r2]
 415 0008 D2ED016A 		vldr.32	s13, [r2, #4]
 416 000c 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 417 0010 B8EEE77A 		vcvt.f32.s32	s14, s15
 418 0014 D1ED017A 		vldr.32	s15, [r1, #4]	@ int
 419 0018 F8EEE77A 		vcvt.f32.s32	s15, s15
 420 001c 2DED068B 		vpush.64	{d8, d9, d10}
 421 0020 C7EE068A 		vdiv.f32	s17, s14, s12
 422 0024 8046     		mov	r8, r0
 423 0026 0C46     		mov	r4, r1
 424 0028 1646     		mov	r6, r2
 425 002a 1F46     		mov	r7, r3
 426 002c 0D9D     		ldr	r5, [sp, #52]
 427 002e 87EEA68A 		vdiv.f32	s16, s15, s13
 428 0032 D0ED1E7A 		vldr.32	s15, [r0, #120]
 429 0036 9FED34AA 		vldr.32	s20, .L61
 430 003a A7EEA88A 		vfma.f32	s16, s15, s17
 431 003e 68EE8A9A 		vmul.f32	s19, s17, s20
 432 0042 38EE889A 		vadd.f32	s18, s17, s16
 433 0046 B0EE690A 		vmov.f32	s0, s19
 434 004a FFF7FEFF 		bl	cosf
 435 004e 29EE0A9A 		vmul.f32	s18, s18, s20
 436 0052 F0EE40AA 		vmov.f32	s21, s0
 437 0056 B0EE490A 		vmov.f32	s0, s18
 438 005a FFF7FEFF 		bl	cosf
 439 005e D8ED197A 		vldr.32	s15, [r8, #100]
 440 0062 D8ED186A 		vldr.32	s13, [r8, #96]
 441 0066 98ED217A 		vldr.32	s14, [r8, #132]
 442 006a 60EE277A 		vmul.f32	s15, s0, s15
 443 006e B0EE690A 		vmov.f32	s0, s19
 444 0072 EAEEA67A 		vfma.f32	s15, s21, s13
 445 0076 77EEC77A 		vsub.f32	s15, s15, s14
 446 007a C5ED007A 		vstr.32	s15, [r5]
 447 007e FFF7FEFF 		bl	sinf
 448 0082 F0EE409A 		vmov.f32	s19, s0
 449 0086 B0EE490A 		vmov.f32	s0, s18
 450 008a FFF7FEFF 		bl	sinf
 451 008e D8ED197A 		vldr.32	s15, [r8, #100]
 452 0092 98ED186A 		vldr.32	s12, [r8, #96]
 453 0096 D8ED226A 		vldr.32	s13, [r8, #136]
 454 009a 94ED027A 		vldr.32	s14, [r4, #8]	@ int
 455 009e 60EE277A 		vmul.f32	s15, s0, s15
 456 00a2 B8EEC77A 		vcvt.f32.s32	s14, s14
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 9


 457 00a6 E9EE867A 		vfma.f32	s15, s19, s12
 458 00aa 032F     		cmp	r7, #3
 459 00ac 77EEE67A 		vsub.f32	s15, s15, s13
 460 00b0 C5ED017A 		vstr.32	s15, [r5, #4]
 461 00b4 D6ED025A 		vldr.32	s11, [r6, #8]
 462 00b8 98ED1F6A 		vldr.32	s12, [r8, #124]
 463 00bc D8ED206A 		vldr.32	s13, [r8, #128]
 464 00c0 C7EE257A 		vdiv.f32	s15, s14, s11
 465 00c4 E6EE287A 		vfma.f32	s15, s12, s17
 466 00c8 E6EE887A 		vfma.f32	s15, s13, s16
 467 00cc C5ED027A 		vstr.32	s15, [r5, #8]
 468 00d0 16D9     		bls	.L56
 469 00d2 04EB8700 		add	r0, r4, r7, lsl #2
 470 00d6 0438     		subs	r0, r0, #4
 471 00d8 04F10801 		add	r1, r4, #8
 472 00dc 06F10C02 		add	r2, r6, #12
 473 00e0 05F10C03 		add	r3, r5, #12
 474              	.L58:
 475 00e4 51F8044F 		ldr	r4, [r1, #4]!
 476 00e8 F2EC016A 		vldmia.32	r2!, {s13}
 477 00ec 07EE904A 		vmov	s15, r4	@ int
 478 00f0 F8EEE77A 		vcvt.f32.s32	s15, s15
 479 00f4 8142     		cmp	r1, r0
 480 00f6 87EEA67A 		vdiv.f32	s14, s15, s13
 481 00fa A3EC017A 		vstmia.32	r3!, {s14}
 482 00fe F1D1     		bne	.L58
 483              	.L56:
 484 0100 BDEC068B 		vldm	sp!, {d8-d10}
 485 0104 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 486              	.L62:
 487              		.align	2
 488              	.L61:
 489 0108 35FA8E3C 		.word	1016003125
 490              		.size	_ZNK15ScaraKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK15ScaraKinematics21MotorSteps
 491              		.section	.text._ZNK15ScaraKinematics16NumHomingButtonsEj,"ax",%progbits
 492              		.align	1
 493              		.p2align 2,,3
 494              		.global	_ZNK15ScaraKinematics16NumHomingButtonsEj
 495              		.syntax unified
 496              		.thumb
 497              		.thumb_func
 498              		.fpu fpv4-sp-d16
 499              		.type	_ZNK15ScaraKinematics16NumHomingButtonsEj, %function
 500              	_ZNK15ScaraKinematics16NumHomingButtonsEj:
 501              		@ args = 0, pretend = 0, frame = 0
 502              		@ frame_needed = 0, uses_anonymous_args = 0
 503 0000 38B5     		push	{r3, r4, r5, lr}
 504 0002 0F4B     		ldr	r3, .L71
 505 0004 0F4A     		ldr	r2, .L71+4
 506 0006 5B68     		ldr	r3, [r3, #4]
 507 0008 D3F8DC4B 		ldr	r4, [r3, #3036]
 508 000c 0D46     		mov	r5, r1
 509 000e 2046     		mov	r0, r4
 510 0010 0D49     		ldr	r1, .L71+8
 511 0012 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 512 0016 00B9     		cbnz	r0, .L69
 513 0018 38BD     		pop	{r3, r4, r5, pc}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 10


 514              	.L69:
 515 001a 0C4A     		ldr	r2, .L71+12
 516 001c 0A49     		ldr	r1, .L71+8
 517 001e 2046     		mov	r0, r4
 518 0020 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 519 0024 08B9     		cbnz	r0, .L70
 520 0026 0120     		movs	r0, #1
 521 0028 38BD     		pop	{r3, r4, r5, pc}
 522              	.L70:
 523 002a 2046     		mov	r0, r4
 524 002c 084A     		ldr	r2, .L71+16
 525 002e 0649     		ldr	r1, .L71+8
 526 0030 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 527 0034 0028     		cmp	r0, #0
 528 0036 14BF     		ite	ne
 529 0038 2846     		movne	r0, r5
 530 003a 0220     		moveq	r0, #2
 531 003c 38BD     		pop	{r3, r4, r5, pc}
 532              	.L72:
 533 003e 00BF     		.align	2
 534              	.L71:
 535 0040 00000000 		.word	reprap
 536 0044 00000000 		.word	.LC3
 537 0048 10000000 		.word	.LC4
 538 004c 18000000 		.word	.LC5
 539 0050 28000000 		.word	.LC6
 540              		.size	_ZNK15ScaraKinematics16NumHomingButtonsEj, .-_ZNK15ScaraKinematics16NumHomingButtonsEj
 541              		.section	.text._ZNK15ScaraKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 542              		.align	1
 543              		.p2align 2,,3
 544              		.global	_ZNK15ScaraKinematics25LimitSpeedAndAccelerationER3DDAPKf
 545              		.syntax unified
 546              		.thumb
 547              		.thumb_func
 548              		.fpu fpv4-sp-d16
 549              		.type	_ZNK15ScaraKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 550              	_ZNK15ScaraKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 551              		@ args = 0, pretend = 0, frame = 8
 552              		@ frame_needed = 0, uses_anonymous_args = 0
 553 0000 92ED010A 		vldr.32	s0, [r2, #4]
 554 0004 D2ED007A 		vldr.32	s15, [r2]
 555 0008 00B5     		push	{lr}
 556 000a 20EE000A 		vmul.f32	s0, s0, s0
 557 000e 2DED028B 		vpush.64	{d8}
 558 0012 A7EEA70A 		vfma.f32	s0, s15, s15
 559 0016 83B0     		sub	sp, sp, #12
 560 0018 B5EE400A 		vcmp.f32	s0, #0
 561 001c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 562 0020 B1EEC08A 		vsqrt.f32	s16, s0
 563 0024 39D4     		bmi	.L82
 564              	.L74:
 565 0026 DFED1F7A 		vldr.32	s15, .L83
 566 002a B4EEE78A 		vcmpe.f32	s16, s15
 567 002e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 568 0032 2DDD     		ble	.L80
 569 0034 1C4B     		ldr	r3, .L83+4
 570 0036 5B68     		ldr	r3, [r3, #4]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 11


 571 0038 93ED5F0A 		vldr.32	s0, [r3, #380]
 572 003c D3ED607A 		vldr.32	s15, [r3, #384]
 573 0040 B4EE400A 		vcmp.f32	s0, s0
 574 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 575 0048 06D6     		bvs	.L77
 576 004a B4EEE70A 		vcmpe.f32	s0, s15
 577 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 578 0052 58BF     		it	pl
 579 0054 B0EE670A 		vmovpl.f32	s0, s15
 580              	.L77:
 581 0058 D3ED6B0A 		vldr.32	s1, [r3, #428]
 582 005c D3ED6C7A 		vldr.32	s15, [r3, #432]
 583 0060 F4EE600A 		vcmp.f32	s1, s1
 584 0064 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 585 0068 06D6     		bvs	.L78
 586 006a F4EEE70A 		vcmpe.f32	s1, s15
 587 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 588 0072 58BF     		it	pl
 589 0074 F0EE670A 		vmovpl.f32	s1, s15
 590              	.L78:
 591 0078 C0EE880A 		vdiv.f32	s1, s1, s16
 592 007c 0846     		mov	r0, r1
 593 007e 80EE080A 		vdiv.f32	s0, s0, s16
 594 0082 03B0     		add	sp, sp, #12
 595              		@ sp needed
 596 0084 BDEC028B 		vldm	sp!, {d8}
 597 0088 5DF804EB 		ldr	lr, [sp], #4
 598 008c FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 599              	.L80:
 600 0090 03B0     		add	sp, sp, #12
 601              		@ sp needed
 602 0092 BDEC028B 		vldm	sp!, {d8}
 603 0096 5DF804FB 		ldr	pc, [sp], #4
 604              	.L82:
 605 009a 0191     		str	r1, [sp, #4]
 606 009c FFF7FEFF 		bl	sqrtf
 607 00a0 0199     		ldr	r1, [sp, #4]
 608 00a2 C0E7     		b	.L74
 609              	.L84:
 610              		.align	2
 611              	.L83:
 612 00a4 0AD7233C 		.word	1008981770
 613 00a8 00000000 		.word	reprap
 614              		.size	_ZNK15ScaraKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK15ScaraKinematics25LimitSpe
 615              		.section	.text._ZN15ScaraKinematicsD0Ev,"axG",%progbits,_ZN15ScaraKinematicsD5Ev,comdat
 616              		.align	1
 617              		.p2align 2,,3
 618              		.weak	_ZN15ScaraKinematicsD0Ev
 619              		.syntax unified
 620              		.thumb
 621              		.thumb_func
 622              		.fpu fpv4-sp-d16
 623              		.type	_ZN15ScaraKinematicsD0Ev, %function
 624              	_ZN15ScaraKinematicsD0Ev:
 625              		@ args = 0, pretend = 0, frame = 0
 626              		@ frame_needed = 0, uses_anonymous_args = 0
 627 0000 10B5     		push	{r4, lr}
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 12


 628 0002 C021     		movs	r1, #192
 629 0004 0446     		mov	r4, r0
 630 0006 FFF7FEFF 		bl	_ZdlPvj
 631 000a 2046     		mov	r0, r4
 632 000c 10BD     		pop	{r4, pc}
 633              		.size	_ZN15ScaraKinematicsD0Ev, .-_ZN15ScaraKinematicsD0Ev
 634 000e 00BF     		.section	.text._ZNK15ScaraKinematics24QueryTerminateHomingMoveEj,"ax",%progbits
 635              		.align	1
 636              		.p2align 2,,3
 637              		.global	_ZNK15ScaraKinematics24QueryTerminateHomingMoveEj
 638              		.syntax unified
 639              		.thumb
 640              		.thumb_func
 641              		.fpu fpv4-sp-d16
 642              		.type	_ZNK15ScaraKinematics24QueryTerminateHomingMoveEj, %function
 643              	_ZNK15ScaraKinematics24QueryTerminateHomingMoveEj:
 644              		@ args = 0, pretend = 0, frame = 0
 645              		@ frame_needed = 0, uses_anonymous_args = 0
 646              		@ link register save eliminated.
 647 0000 81B9     		cbnz	r1, .L88
 648 0002 D0ED1E7A 		vldr.32	s15, [r0, #120]
 649 0006 F5EE407A 		vcmp.f32	s15, #0
 650 000a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 651 000e 0DD1     		bne	.L90
 652 0010 D0ED1F7A 		vldr.32	s15, [r0, #124]
 653 0014 F5EE407A 		vcmp.f32	s15, #0
 654 0018 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 655 001c 14BF     		ite	ne
 656 001e 0120     		movne	r0, #1
 657 0020 0020     		moveq	r0, #0
 658 0022 7047     		bx	lr
 659              	.L88:
 660 0024 0129     		cmp	r1, #1
 661 0026 03D0     		beq	.L92
 662 0028 0020     		movs	r0, #0
 663 002a 7047     		bx	lr
 664              	.L90:
 665 002c 0120     		movs	r0, #1
 666 002e 7047     		bx	lr
 667              	.L92:
 668 0030 D0ED207A 		vldr.32	s15, [r0, #128]
 669 0034 F5EE407A 		vcmp.f32	s15, #0
 670 0038 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 671 003c 14BF     		ite	ne
 672 003e 0120     		movne	r0, #1
 673 0040 0020     		moveq	r0, #0
 674 0042 7047     		bx	lr
 675              		.size	_ZNK15ScaraKinematics24QueryTerminateHomingMoveEj, .-_ZNK15ScaraKinematics24QueryTerminateHo
 676              		.section	.text._ZNK15ScaraKinematics17GetHomingFileNameEmmjRK9StringRef,"ax",%progbits
 677              		.align	1
 678              		.p2align 2,,3
 679              		.global	_ZNK15ScaraKinematics17GetHomingFileNameEmmjRK9StringRef
 680              		.syntax unified
 681              		.thumb
 682              		.thumb_func
 683              		.fpu fpv4-sp-d16
 684              		.type	_ZNK15ScaraKinematics17GetHomingFileNameEmmjRK9StringRef, %function
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 13


 685              	_ZNK15ScaraKinematics17GetHomingFileNameEmmjRK9StringRef:
 686              		@ args = 4, pretend = 0, frame = 0
 687              		@ frame_needed = 0, uses_anonymous_args = 0
 688 0000 30B5     		push	{r4, r5, lr}
 689 0002 83B0     		sub	sp, sp, #12
 690 0004 069C     		ldr	r4, [sp, #24]
 691 0006 0094     		str	r4, [sp]
 692 0008 FFF7FEFF 		bl	_ZNK10Kinematics17GetHomingFileNameEmmjRK9StringRef
 693 000c 0546     		mov	r5, r0
 694 000e 10B1     		cbz	r0, .L103
 695              	.L93:
 696 0010 2846     		mov	r0, r5
 697 0012 03B0     		add	sp, sp, #12
 698              		@ sp needed
 699 0014 30BD     		pop	{r4, r5, pc}
 700              	.L103:
 701 0016 1349     		ldr	r1, .L106
 702 0018 2068     		ldr	r0, [r4]
 703 001a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 704 001e B0B9     		cbnz	r0, .L104
 705 0020 1149     		ldr	r1, .L106+4
 706 0022 2068     		ldr	r0, [r4]
 707 0024 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 708 0028 B0B9     		cbnz	r0, .L105
 709              	.L97:
 710 002a 104B     		ldr	r3, .L106+8
 711 002c 2268     		ldr	r2, [r4]
 712 002e 5B68     		ldr	r3, [r3, #4]
 713 0030 0F49     		ldr	r1, .L106+12
 714 0032 D3F8DC0B 		ldr	r0, [r3, #3036]
 715 0036 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 716 003a 0028     		cmp	r0, #0
 717 003c E8D1     		bne	.L93
 718 003e 0D4B     		ldr	r3, .L106+16
 719 0040 2046     		mov	r0, r4
 720 0042 1968     		ldr	r1, [r3]
 721 0044 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 722 0048 2846     		mov	r0, r5
 723 004a 03B0     		add	sp, sp, #12
 724              		@ sp needed
 725 004c 30BD     		pop	{r4, r5, pc}
 726              	.L104:
 727 004e 0A49     		ldr	r1, .L106+20
 728 0050 2046     		mov	r0, r4
 729 0052 FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 730 0056 E8E7     		b	.L97
 731              	.L105:
 732 0058 0849     		ldr	r1, .L106+24
 733 005a 2046     		mov	r0, r4
 734 005c FFF7FEFF 		bl	_ZNK9StringRef4copyEPKc
 735 0060 E3E7     		b	.L97
 736              	.L107:
 737 0062 00BF     		.align	2
 738              	.L106:
 739 0064 00000000 		.word	.LC7
 740 0068 08000000 		.word	.LC8
 741 006c 00000000 		.word	reprap
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 14


 742 0070 10000000 		.word	.LC4
 743 0074 00000000 		.word	_ZN10Kinematics15HomeAllFileNameE
 744 0078 00000000 		.word	.LC3
 745 007c 18000000 		.word	.LC5
 746              		.size	_ZNK15ScaraKinematics17GetHomingFileNameEmmjRK9StringRef, .-_ZNK15ScaraKinematics17GetHoming
 747              		.section	.text._ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb,"ax",%progbits
 748              		.align	1
 749              		.p2align 2,,3
 750              		.global	_ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb
 751              		.syntax unified
 752              		.thumb
 753              		.thumb_func
 754              		.fpu fpv4-sp-d16
 755              		.type	_ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb, %function
 756              	_ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb:
 757              		@ args = 8, pretend = 0, frame = 8
 758              		@ frame_needed = 0, uses_anonymous_args = 0
 759 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 760 0004 90ED225A 		vldr.32	s10, [r0, #136]
 761 0008 D0ED217A 		vldr.32	s15, [r0, #132]
 762 000c D0ED285A 		vldr.32	s11, [r0, #160]
 763 0010 90ED296A 		vldr.32	s12, [r0, #164]
 764 0014 D0ED2A6A 		vldr.32	s13, [r0, #168]
 765 0018 9FED6E7A 		vldr.32	s14, .L139
 766 001c 2DED068B 		vpush.64	{d8, d9, d10}
 767 0020 D1ED019A 		vldr.32	s19, [r1, #4]
 768 0024 91ED008A 		vldr.32	s16, [r1]
 769 0028 79EE859A 		vadd.f32	s19, s19, s10
 770 002c 38EE278A 		vadd.f32	s16, s16, s15
 771 0030 69EEA97A 		vmul.f32	s15, s19, s19
 772 0034 F7EE008A 		vmov.f32	s17, #1.0e+0
 773 0038 E8EE087A 		vfma.f32	s15, s16, s16
 774 003c 82B0     		sub	sp, sp, #8
 775 003e 0E9E     		ldr	r6, [sp, #56]
 776 0040 77EEE57A 		vsub.f32	s15, s15, s11
 777 0044 77EEC67A 		vsub.f32	s15, s15, s12
 778 0048 87EEA69A 		vdiv.f32	s18, s15, s13
 779 004c E9EE498A 		vfms.f32	s17, s18, s18
 780 0050 F4EEC78A 		vcmpe.f32	s17, s14
 781 0054 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 782 0058 08D5     		bpl	.L135
 783 005a 5F4A     		ldr	r2, .L139+4
 784 005c 3260     		str	r2, [r6]	@ float
 785 005e 0020     		movs	r0, #0
 786 0060 1A60     		str	r2, [r3]	@ float
 787              	.L111:
 788 0062 02B0     		add	sp, sp, #8
 789              		@ sp needed
 790 0064 BDEC068B 		vldm	sp!, {d8-d10}
 791 0068 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 792              	.L135:
 793 006c B0EE490A 		vmov.f32	s0, s18
 794 0070 1D46     		mov	r5, r3
 795 0072 1746     		mov	r7, r2
 796 0074 0446     		mov	r4, r0
 797 0076 FFF7FEFF 		bl	acosf
 798 007a DFED587A 		vldr.32	s15, .L139+8
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 15


 799 007e F5EE408A 		vcmp.f32	s17, #0
 800 0082 20EE270A 		vmul.f32	s0, s0, s15
 801 0086 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 802 008a B1EEE8AA 		vsqrt.f32	s20, s17
 803 008e 86ED000A 		vstr.32	s0, [r6]
 804 0092 00F19780 		bmi	.L137
 805              	.L112:
 806 0096 D4ED197A 		vldr.32	s15, [r4, #100]
 807 009a 94ED187A 		vldr.32	s14, [r4, #96]
 808 009e DFED4FAA 		vldr.32	s21, .L139+8
 809 00a2 A7EE897A 		vfma.f32	s14, s15, s18
 810 00a6 4FF00208 		mov	r8, #2
 811 00aa 0020     		movs	r0, #0
 812 00ac 27EE8AAA 		vmul.f32	s20, s15, s20
 813 00b0 B0EE479A 		vmov.f32	s18, s14
 814              	.L126:
 815 00b4 0F9B     		ldr	r3, [sp, #60]
 816 00b6 94F88D20 		ldrb	r2, [r4, #141]	@ zero_extendqisi2
 817 00ba 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 818 00bc 8342     		cmp	r3, r0
 819 00be 3AD0     		beq	.L113
 820 00c0 7AB9     		cbnz	r2, .L114
 821 00c2 D6ED007A 		vldr.32	s15, [r6]
 822 00c6 94ED1C7A 		vldr.32	s14, [r4, #112]
 823 00ca F4EEC77A 		vcmpe.f32	s15, s14
 824 00ce F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 825 00d2 28DB     		blt	.L115
 826 00d4 94ED1D7A 		vldr.32	s14, [r4, #116]
 827 00d8 F4EEC77A 		vcmpe.f32	s15, s14
 828 00dc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 829 00e0 21D8     		bhi	.L115
 830              	.L114:
 831 00e2 69EE8A0A 		vmul.f32	s1, s19, s20
 832 00e6 2AEE480A 		vnmul.f32	s0, s20, s16
 833 00ea E8EE090A 		vfma.f32	s1, s16, s18
 834 00ee 0190     		str	r0, [sp, #4]
 835 00f0 A9EE890A 		vfma.f32	s0, s19, s18
 836 00f4 FFF7FEFF 		bl	atan2f
 837 00f8 94F88C30 		ldrb	r3, [r4, #140]	@ zero_extendqisi2
 838 00fc 0198     		ldr	r0, [sp, #4]
 839 00fe 20EE2A0A 		vmul.f32	s0, s0, s21
 840 0102 85ED000A 		vstr.32	s0, [r5]
 841 0106 002B     		cmp	r3, #0
 842 0108 4FD1     		bne	.L118
 843 010a D4ED1A7A 		vldr.32	s15, [r4, #104]
 844 010e B4EEE70A 		vcmpe.f32	s0, s15
 845 0112 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 846 0116 06DB     		blt	.L115
 847 0118 D4ED1B7A 		vldr.32	s15, [r4, #108]
 848 011c B4EEE70A 		vcmpe.f32	s0, s15
 849 0120 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 850 0124 41D9     		bls	.L118
 851              	.L115:
 852 0126 002F     		cmp	r7, #0
 853 0128 47D0     		beq	.L138
 854              	.L127:
 855 012a 0020     		movs	r0, #0
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 16


 856 012c 02B0     		add	sp, sp, #8
 857              		@ sp needed
 858 012e BDEC068B 		vldm	sp!, {d8-d10}
 859 0132 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 860              	.L113:
 861 0136 8AB9     		cbnz	r2, .L120
 862 0138 D6ED007A 		vldr.32	s15, [r6]
 863 013c 94ED1C7A 		vldr.32	s14, [r4, #112]
 864 0140 F1EE677A 		vneg.f32	s15, s15
 865 0144 F4EEC77A 		vcmpe.f32	s15, s14
 866 0148 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 867 014c EBDB     		blt	.L115
 868 014e 94ED1D7A 		vldr.32	s14, [r4, #116]
 869 0152 F4EEC77A 		vcmpe.f32	s15, s14
 870 0156 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 871 015a E4D8     		bhi	.L115
 872              	.L120:
 873 015c 6AEE690A 		vnmul.f32	s1, s20, s19
 874 0160 28EE0A0A 		vmul.f32	s0, s16, s20
 875 0164 E8EE090A 		vfma.f32	s1, s16, s18
 876 0168 0190     		str	r0, [sp, #4]
 877 016a A9EE890A 		vfma.f32	s0, s19, s18
 878 016e FFF7FEFF 		bl	atan2f
 879 0172 94F88C30 		ldrb	r3, [r4, #140]	@ zero_extendqisi2
 880 0176 0198     		ldr	r0, [sp, #4]
 881 0178 20EE2A0A 		vmul.f32	s0, s0, s21
 882 017c 85ED000A 		vstr.32	s0, [r5]
 883 0180 6BB9     		cbnz	r3, .L123
 884 0182 D4ED1A7A 		vldr.32	s15, [r4, #104]
 885 0186 B4EEE70A 		vcmpe.f32	s0, s15
 886 018a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 887 018e CADB     		blt	.L115
 888 0190 D4ED1B7A 		vldr.32	s15, [r4, #108]
 889 0194 B4EEE70A 		vcmpe.f32	s0, s15
 890 0198 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 891 019c C3D8     		bhi	.L115
 892              	.L123:
 893 019e D6ED007A 		vldr.32	s15, [r6]
 894 01a2 F1EE677A 		vneg.f32	s15, s15
 895 01a6 C6ED007A 		vstr.32	s15, [r6]
 896              	.L118:
 897 01aa 80B1     		cbz	r0, .L129
 898 01ac 0F9B     		ldr	r3, [sp, #60]
 899 01ae 0F9A     		ldr	r2, [sp, #60]
 900 01b0 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 901 01b2 83F00103 		eor	r3, r3, #1
 902 01b6 1370     		strb	r3, [r2]
 903 01b8 53E7     		b	.L111
 904              	.L138:
 905 01ba 0120     		movs	r0, #1
 906 01bc 8045     		cmp	r8, r0
 907 01be B4D0     		beq	.L127
 908 01c0 8046     		mov	r8, r0
 909 01c2 77E7     		b	.L126
 910              	.L137:
 911 01c4 B0EE680A 		vmov.f32	s0, s17
 912 01c8 FFF7FEFF 		bl	sqrtf
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 17


 913 01cc 63E7     		b	.L112
 914              	.L129:
 915 01ce 0120     		movs	r0, #1
 916 01d0 47E7     		b	.L111
 917              	.L140:
 918 01d2 00BF     		.align	2
 919              	.L139:
 920 01d4 0AD7233C 		.word	1008981770
 921 01d8 0000C07F 		.word	2143289344
 922 01dc E02E6542 		.word	1113927392
 923              		.size	_ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb, .-_ZNK15ScaraKinematics20CalculateT
 924              		.section	.text._ZNK15ScaraKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 925              		.align	1
 926              		.p2align 2,,3
 927              		.global	_ZNK15ScaraKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 928              		.syntax unified
 929              		.thumb
 930              		.thumb_func
 931              		.fpu fpv4-sp-d16
 932              		.type	_ZNK15ScaraKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 933              	_ZNK15ScaraKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 934              		@ args = 12, pretend = 0, frame = 16
 935              		@ frame_needed = 0, uses_anonymous_args = 0
 936 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 937 0004 91ED007A 		vldr.32	s14, [r1]
 938 0008 D0ED2B7A 		vldr.32	s15, [r0, #172]
 939 000c 86B0     		sub	sp, sp, #24
 940 000e B4EE677A 		vcmp.f32	s14, s15
 941 0012 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 942 0016 0C46     		mov	r4, r1
 943 0018 0746     		mov	r7, r0
 944 001a 0D9D     		ldr	r5, [sp, #52]
 945 001c 9DF83810 		ldrb	r1, [sp, #56]	@ zero_extendqisi2
 946 0020 1646     		mov	r6, r2
 947 0022 9846     		mov	r8, r3
 948 0024 14D1     		bne	.L142
 949 0026 94ED017A 		vldr.32	s14, [r4, #4]
 950 002a D0ED2C7A 		vldr.32	s15, [r0, #176]
 951 002e B4EE677A 		vcmp.f32	s14, s15
 952 0032 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 953 0036 0BD1     		bne	.L142
 954 0038 D0ED2D7A 		vldr.32	s15, [r0, #180]
 955 003c D0F8B820 		ldr	r2, [r0, #184]	@ float
 956 0040 90F8BD30 		ldrb	r3, [r0, #189]	@ zero_extendqisi2
 957 0044 CDED047A 		vstr.32	s15, [sp, #16]
 958 0048 0592     		str	r2, [sp, #20]	@ float
 959 004a 80F8BC30 		strb	r3, [r0, #188]
 960 004e 16E0     		b	.L143
 961              	.L142:
 962 0050 0DF10F00 		add	r0, sp, #15
 963 0054 05AB     		add	r3, sp, #20
 964 0056 CDE90030 		strd	r3, r0, [sp]
 965 005a 97F8BC30 		ldrb	r3, [r7, #188]	@ zero_extendqisi2
 966 005e 8DF80F30 		strb	r3, [sp, #15]
 967 0062 0A46     		mov	r2, r1
 968 0064 04AB     		add	r3, sp, #16
 969 0066 2146     		mov	r1, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 18


 970 0068 3846     		mov	r0, r7
 971 006a FFF7FEFF 		bl	_ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb
 972 006e 0028     		cmp	r0, #0
 973 0070 45D0     		beq	.L145
 974 0072 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 975 0076 DDED047A 		vldr.32	s15, [sp, #16]
 976 007a 87F8BC30 		strb	r3, [r7, #188]
 977              	.L143:
 978 007e 96ED000A 		vldr.32	s0, [r6]
 979 0082 27EE800A 		vmul.f32	s0, s15, s0
 980 0086 FFF7FEFF 		bl	lrintf
 981 008a D7ED1E6A 		vldr.32	s13, [r7, #120]
 982 008e 9DED047A 		vldr.32	s14, [sp, #16]
 983 0092 9DED050A 		vldr.32	s0, [sp, #20]
 984 0096 D6ED017A 		vldr.32	s15, [r6, #4]
 985 009a 2860     		str	r0, [r5]
 986 009c A6EEC70A 		vfms.f32	s0, s13, s14
 987 00a0 20EE270A 		vmul.f32	s0, s0, s15
 988 00a4 FFF7FEFF 		bl	lrintf
 989 00a8 D7ED1F5A 		vldr.32	s11, [r7, #124]
 990 00ac 94ED020A 		vldr.32	s0, [r4, #8]
 991 00b0 9DED046A 		vldr.32	s12, [sp, #16]
 992 00b4 D7ED206A 		vldr.32	s13, [r7, #128]
 993 00b8 9DED057A 		vldr.32	s14, [sp, #20]
 994 00bc D6ED027A 		vldr.32	s15, [r6, #8]
 995 00c0 6860     		str	r0, [r5, #4]
 996 00c2 A5EEC60A 		vfms.f32	s0, s11, s12
 997 00c6 A6EEC70A 		vfms.f32	s0, s13, s14
 998 00ca 20EE270A 		vmul.f32	s0, s0, s15
 999 00ce FFF7FEFF 		bl	lrintf
 1000 00d2 B8F1030F 		cmp	r8, #3
 1001 00d6 A860     		str	r0, [r5, #8]
 1002 00d8 10D9     		bls	.L146
 1003 00da 04EB8808 		add	r8, r4, r8, lsl #2
 1004 00de 0C36     		adds	r6, r6, #12
 1005 00e0 0835     		adds	r5, r5, #8
 1006 00e2 0C34     		adds	r4, r4, #12
 1007              	.L147:
 1008 00e4 B4EC010A 		vldmia.32	r4!, {s0}
 1009 00e8 F6EC017A 		vldmia.32	r6!, {s15}
 1010 00ec 20EE270A 		vmul.f32	s0, s0, s15
 1011 00f0 FFF7FEFF 		bl	lrintf
 1012 00f4 4445     		cmp	r4, r8
 1013 00f6 45F8040F 		str	r0, [r5, #4]!
 1014 00fa F3D1     		bne	.L147
 1015              	.L146:
 1016 00fc 0120     		movs	r0, #1
 1017              	.L145:
 1018 00fe 06B0     		add	sp, sp, #24
 1019              		@ sp needed
 1020 0100 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1021              		.size	_ZNK15ScaraKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK15ScaraKinematics21Cartesian
 1022              		.section	.text._ZNK15ScaraKinematics11IsReachableEffb,"ax",%progbits
 1023              		.align	1
 1024              		.p2align 2,,3
 1025              		.global	_ZNK15ScaraKinematics11IsReachableEffb
 1026              		.syntax unified
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 19


 1027              		.thumb
 1028              		.thumb_func
 1029              		.fpu fpv4-sp-d16
 1030              		.type	_ZNK15ScaraKinematics11IsReachableEffb, %function
 1031              	_ZNK15ScaraKinematics11IsReachableEffb:
 1032              		@ args = 0, pretend = 0, frame = 24
 1033              		@ frame_needed = 0, uses_anonymous_args = 0
 1034 0000 30B5     		push	{r4, r5, lr}
 1035 0002 2DED028B 		vpush.64	{d8}
 1036 0006 89B0     		sub	sp, sp, #36
 1037 0008 0D46     		mov	r5, r1
 1038 000a 0091     		str	r1, [sp]
 1039 000c 0323     		movs	r3, #3
 1040 000e 06A9     		add	r1, sp, #24
 1041 0010 0222     		movs	r2, #2
 1042 0012 F0EE408A 		vmov.f32	s17, s0
 1043 0016 B0EE608A 		vmov.f32	s16, s1
 1044 001a 8DED060A 		vstr.32	s0, [sp, #24]
 1045 001e CDED070A 		vstr.32	s1, [sp, #28]
 1046 0022 0446     		mov	r4, r0
 1047 0024 FFF7FEFF 		bl	_ZNK10Kinematics13LimitPositionEPfjmb
 1048 0028 20B1     		cbz	r0, .L151
 1049              	.L153:
 1050 002a 0020     		movs	r0, #0
 1051 002c 09B0     		add	sp, sp, #36
 1052              		@ sp needed
 1053 002e BDEC028B 		vldm	sp!, {d8}
 1054 0032 30BD     		pop	{r4, r5, pc}
 1055              	.L151:
 1056 0034 0DF10F00 		add	r0, sp, #15
 1057 0038 05AB     		add	r3, sp, #20
 1058 003a CDE90030 		strd	r3, r0, [sp]
 1059 003e 94F8BC30 		ldrb	r3, [r4, #188]	@ zero_extendqisi2
 1060 0042 8DF80F30 		strb	r3, [sp, #15]
 1061 0046 2A46     		mov	r2, r5
 1062 0048 06A9     		add	r1, sp, #24
 1063 004a 04AB     		add	r3, sp, #16
 1064 004c 2046     		mov	r0, r4
 1065 004e FFF7FEFF 		bl	_ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb
 1066 0052 0028     		cmp	r0, #0
 1067 0054 E9D0     		beq	.L153
 1068 0056 0499     		ldr	r1, [sp, #16]	@ float
 1069 0058 059A     		ldr	r2, [sp, #20]	@ float
 1070 005a 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 1071 005e C4ED2B8A 		vstr.32	s17, [r4, #172]
 1072 0062 0120     		movs	r0, #1
 1073 0064 84ED2C8A 		vstr.32	s16, [r4, #176]
 1074 0068 C4F8B410 		str	r1, [r4, #180]	@ float
 1075 006c C4F8B820 		str	r2, [r4, #184]	@ float
 1076 0070 84F8BD30 		strb	r3, [r4, #189]
 1077 0074 09B0     		add	sp, sp, #36
 1078              		@ sp needed
 1079 0076 BDEC028B 		vldm	sp!, {d8}
 1080 007a 30BD     		pop	{r4, r5, pc}
 1081              		.size	_ZNK15ScaraKinematics11IsReachableEffb, .-_ZNK15ScaraKinematics11IsReachableEffb
 1082              		.section	.text._ZNK15ScaraKinematics13LimitPositionEPfjmb,"ax",%progbits
 1083              		.align	1
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 20


 1084              		.p2align 2,,3
 1085              		.global	_ZNK15ScaraKinematics13LimitPositionEPfjmb
 1086              		.syntax unified
 1087              		.thumb
 1088              		.thumb_func
 1089              		.fpu fpv4-sp-d16
 1090              		.type	_ZNK15ScaraKinematics13LimitPositionEPfjmb, %function
 1091              	_ZNK15ScaraKinematics13LimitPositionEPfjmb:
 1092              		@ args = 4, pretend = 0, frame = 16
 1093              		@ frame_needed = 0, uses_anonymous_args = 0
 1094 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1095 0004 2DED068B 		vpush.64	{d8, d9, d10}
 1096 0008 87B0     		sub	sp, sp, #28
 1097 000a 0446     		mov	r4, r0
 1098 000c 9DF85090 		ldrb	r9, [sp, #80]	@ zero_extendqisi2
 1099 0010 CDF80090 		str	r9, [sp]
 1100 0014 0D46     		mov	r5, r1
 1101 0016 FFF7FEFF 		bl	_ZNK10Kinematics13LimitPositionEPfjmb
 1102 001a 0DF10F07 		add	r7, sp, #15
 1103 001e 05AE     		add	r6, sp, #20
 1104 0020 94F8BCC0 		ldrb	ip, [r4, #188]	@ zero_extendqisi2
 1105 0024 0197     		str	r7, [sp, #4]
 1106 0026 8046     		mov	r8, r0
 1107 0028 4A46     		mov	r2, r9
 1108 002a 2946     		mov	r1, r5
 1109 002c 2046     		mov	r0, r4
 1110 002e 0096     		str	r6, [sp]
 1111 0030 04AB     		add	r3, sp, #16
 1112 0032 8DF80FC0 		strb	ip, [sp, #15]
 1113 0036 FFF7FEFF 		bl	_ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb
 1114 003a 0028     		cmp	r0, #0
 1115 003c 40F09680 		bne	.L184
 1116 0040 DDED047A 		vldr.32	s15, [sp, #16]
 1117 0044 F4EE677A 		vcmp.f32	s15, s15
 1118 0048 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1119 004c 80F1AF80 		bvs	.L185
 1120              	.L161:
 1121 0050 CDE90067 		strd	r6, r7, [sp]
 1122 0054 04AB     		add	r3, sp, #16
 1123 0056 0122     		movs	r2, #1
 1124 0058 2946     		mov	r1, r5
 1125 005a 2046     		mov	r0, r4
 1126 005c FFF7FEFF 		bl	_ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb
 1127 0060 8046     		mov	r8, r0
 1128 0062 0028     		cmp	r0, #0
 1129 0064 7CD1     		bne	.L160
 1130 0066 DDED047A 		vldr.32	s15, [sp, #16]
 1131 006a F4EE677A 		vcmp.f32	s15, s15
 1132 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1133 0072 80F1D880 		bvs	.L173
 1134 0076 94ED1B7A 		vldr.32	s14, [r4, #108]
 1135 007a D4ED1A8A 		vldr.32	s17, [r4, #104]
 1136 007e F4EEC77A 		vcmpe.f32	s15, s14
 1137 0082 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1138 0086 40F18780 		bpl	.L186
 1139              	.L166:
 1140 008a F4EE678A 		vcmp.f32	s17, s15
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 21


 1141 008e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1142 0092 48BF     		it	mi
 1143 0094 F0EE678A 		vmovmi.f32	s17, s15
 1144              	.L167:
 1145 0098 9DED057A 		vldr.32	s14, [sp, #20]
 1146 009c C4ED2D8A 		vstr.32	s17, [r4, #180]
 1147 00a0 B4EE477A 		vcmp.f32	s14, s14
 1148 00a4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1149 00a8 94ED1C8A 		vldr.32	s16, [r4, #112]
 1150 00ac D4ED1D7A 		vldr.32	s15, [r4, #116]
 1151 00b0 80F1B680 		bvs	.L175
 1152 00b4 B4EEE77A 		vcmpe.f32	s14, s15
 1153 00b8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1154 00bc 74D4     		bmi	.L176
 1155 00be F4EE677A 		vcmp.f32	s15, s15
 1156 00c2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1157 00c6 80F1BC80 		bvs	.L187
 1158              	.L170:
 1159 00ca B4EE678A 		vcmp.f32	s16, s15
 1160 00ce F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1161 00d2 48BF     		it	mi
 1162 00d4 B0EE678A 		vmovmi.f32	s16, s15
 1163              	.L169:
 1164 00d8 DFED5B9A 		vldr.32	s19, .L189
 1165 00dc 84ED2E8A 		vstr.32	s16, [r4, #184]
 1166 00e0 28EE299A 		vmul.f32	s18, s16, s19
 1167 00e4 38EE288A 		vadd.f32	s16, s16, s17
 1168 00e8 B0EE490A 		vmov.f32	s0, s18
 1169 00ec FFF7FEFF 		bl	cosf
 1170 00f0 28EE298A 		vmul.f32	s16, s16, s19
 1171 00f4 B0EE40AA 		vmov.f32	s20, s0
 1172 00f8 B0EE480A 		vmov.f32	s0, s16
 1173 00fc FFF7FEFF 		bl	cosf
 1174 0100 D4ED197A 		vldr.32	s15, [r4, #100]
 1175 0104 D4ED186A 		vldr.32	s13, [r4, #96]
 1176 0108 94ED217A 		vldr.32	s14, [r4, #132]
 1177 010c 60EE277A 		vmul.f32	s15, s0, s15
 1178 0110 B0EE490A 		vmov.f32	s0, s18
 1179 0114 EAEE267A 		vfma.f32	s15, s20, s13
 1180 0118 4FF00108 		mov	r8, #1
 1181 011c 77EEC77A 		vsub.f32	s15, s15, s14
 1182 0120 C5ED007A 		vstr.32	s15, [r5]
 1183 0124 C4ED2B7A 		vstr.32	s15, [r4, #172]
 1184 0128 FFF7FEFF 		bl	sinf
 1185 012c F0EE408A 		vmov.f32	s17, s0
 1186 0130 B0EE480A 		vmov.f32	s0, s16
 1187 0134 FFF7FEFF 		bl	sinf
 1188 0138 D4ED197A 		vldr.32	s15, [r4, #100]
 1189 013c D4ED186A 		vldr.32	s13, [r4, #96]
 1190 0140 94ED227A 		vldr.32	s14, [r4, #136]
 1191 0144 94F8BC30 		ldrb	r3, [r4, #188]	@ zero_extendqisi2
 1192 0148 20EE270A 		vmul.f32	s0, s0, s15
 1193 014c A8EEA60A 		vfma.f32	s0, s17, s13
 1194 0150 30EE470A 		vsub.f32	s0, s0, s14
 1195 0154 85ED010A 		vstr.32	s0, [r5, #4]
 1196 0158 84ED2C0A 		vstr.32	s0, [r4, #176]
 1197 015c 84F8BD30 		strb	r3, [r4, #189]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 22


 1198              	.L160:
 1199 0160 4046     		mov	r0, r8
 1200 0162 07B0     		add	sp, sp, #28
 1201              		@ sp needed
 1202 0164 BDEC068B 		vldm	sp!, {d8-d10}
 1203 0168 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1204              	.L184:
 1205 016c 2B68     		ldr	r3, [r5]	@ float
 1206 016e C4F8AC30 		str	r3, [r4, #172]	@ float
 1207 0172 6868     		ldr	r0, [r5, #4]	@ float
 1208 0174 0499     		ldr	r1, [sp, #16]	@ float
 1209 0176 059A     		ldr	r2, [sp, #20]	@ float
 1210 0178 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 1211 017c C4F8B000 		str	r0, [r4, #176]	@ float
 1212 0180 4046     		mov	r0, r8
 1213 0182 C4F8B410 		str	r1, [r4, #180]	@ float
 1214 0186 C4F8B820 		str	r2, [r4, #184]	@ float
 1215 018a 84F8BD30 		strb	r3, [r4, #189]
 1216 018e 07B0     		add	sp, sp, #28
 1217              		@ sp needed
 1218 0190 BDEC068B 		vldm	sp!, {d8-d10}
 1219 0194 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1220              	.L186:
 1221 0198 B4EE477A 		vcmp.f32	s14, s14
 1222 019c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1223 01a0 3BD6     		bvs	.L174
 1224 01a2 F0EE477A 		vmov.f32	s15, s14
 1225 01a6 70E7     		b	.L166
 1226              	.L176:
 1227 01a8 F0EE477A 		vmov.f32	s15, s14
 1228 01ac 8DE7     		b	.L170
 1229              	.L185:
 1230 01ae 95ED018A 		vldr.32	s16, [r5, #4]
 1231 01b2 D4ED227A 		vldr.32	s15, [r4, #136]
 1232 01b6 94ED217A 		vldr.32	s14, [r4, #132]
 1233 01ba D5ED008A 		vldr.32	s17, [r5]
 1234 01be 38EE278A 		vadd.f32	s16, s16, s15
 1235 01c2 77EE288A 		vadd.f32	s17, s14, s17
 1236 01c6 28EE080A 		vmul.f32	s0, s16, s16
 1237 01ca A8EEA80A 		vfma.f32	s0, s17, s17
 1238 01ce B5EE400A 		vcmp.f32	s0, #0
 1239 01d2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1240 01d6 B1EEC09A 		vsqrt.f32	s18, s0
 1241 01da 2DD4     		bmi	.L188
 1242              	.L162:
 1243 01dc D4ED247A 		vldr.32	s15, [r4, #144]
 1244 01e0 F4EEC97A 		vcmpe.f32	s15, s18
 1245 01e4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1246 01e8 20DD     		ble	.L181
 1247 01ea F7EE006A 		vmov.f32	s13, #1.0e+0
 1248 01ee B4EEE69A 		vcmpe.f32	s18, s13
 1249 01f2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1250 01f6 1CD4     		bmi	.L172
 1251              	.L183:
 1252 01f8 C7EE896A 		vdiv.f32	s13, s15, s18
 1253 01fc 66EEA87A 		vmul.f32	s15, s13, s17
 1254 0200 26EE888A 		vmul.f32	s16, s13, s16
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 23


 1255              	.L165:
 1256 0204 77EEC77A 		vsub.f32	s15, s15, s14
 1257 0208 C5ED007A 		vstr.32	s15, [r5]
 1258 020c D4ED227A 		vldr.32	s15, [r4, #136]
 1259 0210 38EE678A 		vsub.f32	s16, s16, s15
 1260 0214 85ED018A 		vstr.32	s16, [r5, #4]
 1261 0218 1AE7     		b	.L161
 1262              	.L174:
 1263 021a F0EE478A 		vmov.f32	s17, s14
 1264 021e 3BE7     		b	.L167
 1265              	.L175:
 1266 0220 B0EE478A 		vmov.f32	s16, s14
 1267 0224 58E7     		b	.L169
 1268              	.L173:
 1269 0226 4FF00108 		mov	r8, #1
 1270 022a 99E7     		b	.L160
 1271              	.L181:
 1272 022c D4ED267A 		vldr.32	s15, [r4, #152]
 1273 0230 E2E7     		b	.L183
 1274              	.L172:
 1275 0232 9FED068A 		vldr.32	s16, .L189+4
 1276 0236 E5E7     		b	.L165
 1277              	.L188:
 1278 0238 FFF7FEFF 		bl	sqrtf
 1279 023c 94ED217A 		vldr.32	s14, [r4, #132]
 1280 0240 CCE7     		b	.L162
 1281              	.L187:
 1282 0242 B0EE678A 		vmov.f32	s16, s15
 1283 0246 47E7     		b	.L169
 1284              	.L190:
 1285              		.align	2
 1286              	.L189:
 1287 0248 35FA8E3C 		.word	1016003125
 1288 024c 00000000 		.word	0
 1289              		.size	_ZNK15ScaraKinematics13LimitPositionEPfjmb, .-_ZNK15ScaraKinematics13LimitPositionEPfjmb
 1290              		.section	.text._ZN15ScaraKinematics6RecalcEv,"ax",%progbits
 1291              		.align	1
 1292              		.p2align 2,,3
 1293              		.global	_ZN15ScaraKinematics6RecalcEv
 1294              		.syntax unified
 1295              		.thumb
 1296              		.thumb_func
 1297              		.fpu fpv4-sp-d16
 1298              		.type	_ZN15ScaraKinematics6RecalcEv, %function
 1299              	_ZN15ScaraKinematics6RecalcEv:
 1300              		@ args = 0, pretend = 0, frame = 8
 1301              		@ frame_needed = 0, uses_anonymous_args = 0
 1302 0000 10B5     		push	{r4, lr}
 1303 0002 90ED180A 		vldr.32	s0, [r0, #96]
 1304 0006 2DED068B 		vpush.64	{d8, d9, d10}
 1305 000a 90ED198A 		vldr.32	s16, [r0, #100]
 1306 000e 90ED1CAA 		vldr.32	s20, [r0, #112]
 1307 0012 DFED61AA 		vldr.32	s21, .L211
 1308 0016 60EE088A 		vmul.f32	s17, s0, s16
 1309 001a 60EE007A 		vmul.f32	s15, s0, s0
 1310 001e 28EE088A 		vmul.f32	s16, s16, s16
 1311 0022 78EEA88A 		vadd.f32	s17, s17, s17
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 24


 1312 0026 80ED298A 		vstr.32	s16, [r0, #164]
 1313 002a 82B0     		sub	sp, sp, #8
 1314 002c C0ED2A8A 		vstr.32	s17, [r0, #168]
 1315 0030 C0ED287A 		vstr.32	s15, [r0, #160]
 1316 0034 2AEE2A0A 		vmul.f32	s0, s20, s21
 1317 0038 0446     		mov	r4, r0
 1318 003a 37EE888A 		vadd.f32	s16, s15, s16
 1319 003e FFF7FEFF 		bl	cosf
 1320 0042 D4ED1D9A 		vldr.32	s19, [r4, #116]
 1321 0046 B0EE409A 		vmov.f32	s18, s0
 1322 004a 29EEAA0A 		vmul.f32	s0, s19, s21
 1323 004e FFF7FEFF 		bl	cosf
 1324 0052 B4EE499A 		vcmp.f32	s18, s18
 1325 0056 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1326 005a 80F18F80 		bvs	.L203
 1327 005e B4EE409A 		vcmp.f32	s18, s0
 1328 0062 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1329 0066 C8BF     		it	gt
 1330 0068 B0EE490A 		vmovgt.f32	s0, s18
 1331              	.L192:
 1332 006c A8EEC08A 		vfms.f32	s16, s17, s0
 1333 0070 B0EE480A 		vmov.f32	s0, s16
 1334 0074 B5EE400A 		vcmp.f32	s0, #0
 1335 0078 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1336 007c B1EEC08A 		vsqrt.f32	s16, s0
 1337 0080 00F18280 		bmi	.L209
 1338              	.L194:
 1339 0084 D4ED1A7A 		vldr.32	s15, [r4, #104]
 1340 0088 94ED1B7A 		vldr.32	s14, [r4, #108]
 1341 008c DFED436A 		vldr.32	s13, .L211+4
 1342 0090 9FED436A 		vldr.32	s12, .L211+8
 1343 0094 37EE677A 		vsub.f32	s14, s14, s15
 1344 0098 79EECA7A 		vsub.f32	s15, s19, s20
 1345 009c B4EEE67A 		vcmpe.f32	s14, s13
 1346 00a0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1347 00a4 F4EEE67A 		vcmpe.f32	s15, s13
 1348 00a8 CCBF     		ite	gt
 1349 00aa 0122     		movgt	r2, #1
 1350 00ac 0022     		movle	r2, #0
 1351 00ae 28EE068A 		vmul.f32	s16, s16, s12
 1352 00b2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1353 00b6 CCBF     		ite	gt
 1354 00b8 0123     		movgt	r3, #1
 1355 00ba 0023     		movle	r3, #0
 1356 00bc 84F88C20 		strb	r2, [r4, #140]
 1357 00c0 84F88D30 		strb	r3, [r4, #141]
 1358 00c4 84ED248A 		vstr.32	s16, [r4, #144]
 1359 00c8 3BDC     		bgt	.L195
 1360 00ca B5EEC0AA 		vcmpe.f32	s20, #0
 1361 00ce F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1362 00d2 31D9     		bls	.L210
 1363              	.L196:
 1364 00d4 F0EECA7A 		vabs.f32	s15, s20
 1365 00d8 F4EE677A 		vcmp.f32	s15, s15
 1366 00dc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1367 00e0 B0EEE97A 		vabs.f32	s14, s19
 1368 00e4 4DD6     		bvs	.L204
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 25


 1369 00e6 F4EE477A 		vcmp.f32	s15, s14
 1370 00ea F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1371 00ee 48BF     		it	mi
 1372 00f0 F0EE4A9A 		vmovmi.f32	s19, s20
 1373              	.L200:
 1374 00f4 9FED280A 		vldr.32	s0, .L211
 1375 00f8 29EE800A 		vmul.f32	s0, s19, s0
 1376 00fc FFF7FEFF 		bl	cosf
 1377 0100 D4ED287A 		vldr.32	s15, [r4, #160]
 1378 0104 D4ED296A 		vldr.32	s13, [r4, #164]
 1379 0108 94ED2A7A 		vldr.32	s14, [r4, #168]
 1380 010c 77EEA67A 		vadd.f32	s15, s15, s13
 1381 0110 E7EE007A 		vfma.f32	s15, s14, s0
 1382 0114 B0EE670A 		vmov.f32	s0, s15
 1383 0118 B5EE400A 		vcmp.f32	s0, #0
 1384 011c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1385 0120 F1EEC07A 		vsqrt.f32	s15, s0
 1386 0124 13D5     		bpl	.L199
 1387 0126 CDED017A 		vstr.32	s15, [sp, #4]	@ int
 1388 012a FFF7FEFF 		bl	sqrtf
 1389 012e 94ED248A 		vldr.32	s16, [r4, #144]
 1390 0132 DDED017A 		vldr.32	s15, [sp, #4]	@ int
 1391 0136 0AE0     		b	.L199
 1392              	.L210:
 1393 0138 F5EEC09A 		vcmpe.f32	s19, #0
 1394 013c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1395 0140 C8DB     		blt	.L196
 1396              	.L195:
 1397 0142 D4ED187A 		vldr.32	s15, [r4, #96]
 1398 0146 94ED197A 		vldr.32	s14, [r4, #100]
 1399 014a 77EE877A 		vadd.f32	s15, s15, s14
 1400              	.L199:
 1401 014e 9FED157A 		vldr.32	s14, .L211+12
 1402 0152 154B     		ldr	r3, .L211+16
 1403 0154 C4F8B030 		str	r3, [r4, #176]	@ float
 1404 0158 67EE877A 		vmul.f32	s15, s15, s14
 1405 015c 28EE088A 		vmul.f32	s16, s16, s16
 1406 0160 27EEA77A 		vmul.f32	s14, s15, s15
 1407 0164 84ED258A 		vstr.32	s16, [r4, #148]
 1408 0168 C4ED267A 		vstr.32	s15, [r4, #152]
 1409 016c 84ED277A 		vstr.32	s14, [r4, #156]
 1410 0170 C4F8AC30 		str	r3, [r4, #172]	@ float
 1411 0174 02B0     		add	sp, sp, #8
 1412              		@ sp needed
 1413 0176 BDEC068B 		vldm	sp!, {d8-d10}
 1414 017a 10BD     		pop	{r4, pc}
 1415              	.L203:
 1416 017c B0EE490A 		vmov.f32	s0, s18
 1417 0180 74E7     		b	.L192
 1418              	.L204:
 1419 0182 F0EE4A9A 		vmov.f32	s19, s20
 1420 0186 B5E7     		b	.L200
 1421              	.L209:
 1422 0188 FFF7FEFF 		bl	sqrtf
 1423 018c D4ED1D9A 		vldr.32	s19, [r4, #116]
 1424 0190 94ED1CAA 		vldr.32	s20, [r4, #112]
 1425 0194 76E7     		b	.L194
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 26


 1426              	.L212:
 1427 0196 00BF     		.align	2
 1428              	.L211:
 1429 0198 35FA8E3C 		.word	1016003125
 1430 019c 0000B443 		.word	1135869952
 1431 01a0 D7A3803F 		.word	1065395159
 1432 01a4 52B87E3F 		.word	1065269330
 1433 01a8 0000C07F 		.word	2143289344
 1434              		.size	_ZN15ScaraKinematics6RecalcEv, .-_ZN15ScaraKinematics6RecalcEv
 1435              		.section	.text._ZN15ScaraKinematicsC2Ev,"ax",%progbits
 1436              		.align	1
 1437              		.p2align 2,,3
 1438              		.global	_ZN15ScaraKinematicsC2Ev
 1439              		.syntax unified
 1440              		.thumb
 1441              		.thumb_func
 1442              		.fpu fpv4-sp-d16
 1443              		.type	_ZN15ScaraKinematicsC2Ev, %function
 1444              	_ZN15ScaraKinematicsC2Ev:
 1445              		@ args = 0, pretend = 0, frame = 0
 1446              		@ frame_needed = 0, uses_anonymous_args = 0
 1447 0000 38B5     		push	{r3, r4, r5, lr}
 1448 0002 2DED028B 		vpush.64	{d8}
 1449 0006 9FED148A 		vldr.32	s16, .L215
 1450 000a DFED140A 		vldr.32	s1, .L215+4
 1451 000e 144D     		ldr	r5, .L215+8
 1452 0010 0446     		mov	r4, r0
 1453 0012 B0EE480A 		vmov.f32	s0, s16
 1454 0016 0122     		movs	r2, #1
 1455 0018 0421     		movs	r1, #4
 1456 001a FFF7FEFF 		bl	_ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb
 1457 001e 114B     		ldr	r3, .L215+12
 1458 0020 1148     		ldr	r0, .L215+16
 1459 0022 1249     		ldr	r1, .L215+20
 1460 0024 124A     		ldr	r2, .L215+24
 1461 0026 2360     		str	r3, [r4]
 1462 0028 0023     		movs	r3, #0
 1463 002a 84ED188A 		vstr.32	s16, [r4, #96]
 1464 002e 84ED198A 		vstr.32	s16, [r4, #100]
 1465 0032 E066     		str	r0, [r4, #108]	@ float
 1466 0034 A566     		str	r5, [r4, #104]	@ float
 1467 0036 2046     		mov	r0, r4
 1468 0038 2167     		str	r1, [r4, #112]	@ float
 1469 003a 6267     		str	r2, [r4, #116]	@ float
 1470 003c C4F88430 		str	r3, [r4, #132]	@ float
 1471 0040 C4F88830 		str	r3, [r4, #136]	@ float
 1472 0044 C4F88030 		str	r3, [r4, #128]	@ float
 1473 0048 E367     		str	r3, [r4, #124]	@ float
 1474 004a A367     		str	r3, [r4, #120]	@ float
 1475 004c FFF7FEFF 		bl	_ZN15ScaraKinematics6RecalcEv
 1476 0050 BDEC028B 		vldm	sp!, {d8}
 1477 0054 2046     		mov	r0, r4
 1478 0056 38BD     		pop	{r3, r4, r5, pc}
 1479              	.L216:
 1480              		.align	2
 1481              	.L215:
 1482 0058 0000C842 		.word	1120403456
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 27


 1483 005c CDCC4C3E 		.word	1045220557
 1484 0060 0000B4C2 		.word	-1028390912
 1485 0064 08000000 		.word	.LANCHOR0+8
 1486 0068 0000B442 		.word	1119092736
 1487 006c 000007C3 		.word	-1022951424
 1488 0070 00000743 		.word	1124532224
 1489              		.size	_ZN15ScaraKinematicsC2Ev, .-_ZN15ScaraKinematicsC2Ev
 1490              		.global	_ZN15ScaraKinematicsC1Ev
 1491              		.thumb_set _ZN15ScaraKinematicsC1Ev,_ZN15ScaraKinematicsC2Ev
 1492              		.global	__aeabi_f2d
 1493              		.section	.text._ZN15ScaraKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 1494              		.align	1
 1495              		.p2align 2,,3
 1496              		.global	_ZN15ScaraKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1497              		.syntax unified
 1498              		.thumb
 1499              		.thumb_func
 1500              		.fpu fpv4-sp-d16
 1501              		.type	_ZN15ScaraKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 1502              	_ZN15ScaraKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 1503              		@ args = 4, pretend = 0, frame = 16
 1504              		@ frame_needed = 0, uses_anonymous_args = 0
 1505 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1506 0004 40F29D27 		movw	r7, #669
 1507 0008 B942     		cmp	r1, r7
 1508 000a A0B0     		sub	sp, sp, #128
 1509 000c 06D0     		beq	.L229
 1510 000e 289C     		ldr	r4, [sp, #160]
 1511 0010 0094     		str	r4, [sp]
 1512 0012 FFF7FEFF 		bl	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1513              	.L226:
 1514 0016 20B0     		add	sp, sp, #128
 1515              		@ sp needed
 1516 0018 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1517              	.L229:
 1518 001c 1646     		mov	r6, r2
 1519 001e 0446     		mov	r4, r0
 1520 0020 0027     		movs	r7, #0
 1521 0022 00F16002 		add	r2, r0, #96
 1522 0026 1D46     		mov	r5, r3
 1523 0028 5021     		movs	r1, #80
 1524 002a 0DF17E03 		add	r3, sp, #126
 1525 002e 3046     		mov	r0, r6
 1526 0030 8DF87E70 		strb	r7, [sp, #126]
 1527 0034 8DF87F70 		strb	r7, [sp, #127]
 1528 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1529 003c 0DF17E03 		add	r3, sp, #126
 1530 0040 04F16402 		add	r2, r4, #100
 1531 0044 4421     		movs	r1, #68
 1532 0046 3046     		mov	r0, r6
 1533 0048 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1534 004c 0DF17F03 		add	r3, sp, #127
 1535 0050 221D     		adds	r2, r4, #4
 1536 0052 5321     		movs	r1, #83
 1537 0054 3046     		mov	r0, r6
 1538 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1539 005a 0DF17F03 		add	r3, sp, #127
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 28


 1540 005e 04F10802 		add	r2, r4, #8
 1541 0062 5421     		movs	r1, #84
 1542 0064 3046     		mov	r0, r6
 1543 0066 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1544 006a 0DF17E03 		add	r3, sp, #126
 1545 006e 04F18402 		add	r2, r4, #132
 1546 0072 5821     		movs	r1, #88
 1547 0074 3046     		mov	r0, r6
 1548 0076 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1549 007a 0DF17E03 		add	r3, sp, #126
 1550 007e 04F18802 		add	r2, r4, #136
 1551 0082 5921     		movs	r1, #89
 1552 0084 3046     		mov	r0, r6
 1553 0086 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1554 008a 0DF17E03 		add	r3, sp, #126
 1555 008e CDE90053 		strd	r5, r3, [sp]
 1556 0092 0297     		str	r7, [sp, #8]
 1557 0094 04F16803 		add	r3, r4, #104
 1558 0098 0222     		movs	r2, #2
 1559 009a 4121     		movs	r1, #65
 1560 009c 3046     		mov	r0, r6
 1561 009e FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1562 00a2 28B1     		cbz	r0, .L219
 1563              	.L221:
 1564 00a4 289B     		ldr	r3, [sp, #160]
 1565 00a6 0120     		movs	r0, #1
 1566 00a8 1870     		strb	r0, [r3]
 1567 00aa 20B0     		add	sp, sp, #128
 1568              		@ sp needed
 1569 00ac BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1570              	.L219:
 1571 00b0 0DF17E03 		add	r3, sp, #126
 1572 00b4 0290     		str	r0, [sp, #8]
 1573 00b6 CDE90053 		strd	r5, r3, [sp]
 1574 00ba 0222     		movs	r2, #2
 1575 00bc 04F17003 		add	r3, r4, #112
 1576 00c0 4221     		movs	r1, #66
 1577 00c2 3046     		mov	r0, r6
 1578 00c4 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1579 00c8 0028     		cmp	r0, #0
 1580 00ca EBD1     		bne	.L221
 1581 00cc 0DF17E03 		add	r3, sp, #126
 1582 00d0 0290     		str	r0, [sp, #8]
 1583 00d2 CDE90053 		strd	r5, r3, [sp]
 1584 00d6 0322     		movs	r2, #3
 1585 00d8 04F17803 		add	r3, r4, #120
 1586 00dc 4321     		movs	r1, #67
 1587 00de 3046     		mov	r0, r6
 1588 00e0 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1589 00e4 0028     		cmp	r0, #0
 1590 00e6 DDD1     		bne	.L221
 1591 00e8 9DF87E30 		ldrb	r3, [sp, #126]	@ zero_extendqisi2
 1592 00ec 13B9     		cbnz	r3, .L222
 1593 00ee 9DF87F30 		ldrb	r3, [sp, #127]	@ zero_extendqisi2
 1594 00f2 2BB1     		cbz	r3, .L223
 1595              	.L222:
 1596 00f4 2046     		mov	r0, r4
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 29


 1597 00f6 FFF7FEFF 		bl	_ZN15ScaraKinematics6RecalcEv
 1598              	.L224:
 1599 00fa 9DF87E00 		ldrb	r0, [sp, #126]	@ zero_extendqisi2
 1600 00fe 8AE7     		b	.L226
 1601              	.L223:
 1602 0100 3046     		mov	r0, r6
 1603 0102 4B21     		movs	r1, #75
 1604 0104 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1605 0108 0028     		cmp	r0, #0
 1606 010a F6D1     		bne	.L224
 1607 010c 206E     		ldr	r0, [r4, #96]	@ float
 1608 010e DFF8C4A0 		ldr	r10, .L230+8
 1609 0112 FFF7FEFF 		bl	__aeabi_f2d
 1610 0116 0246     		mov	r2, r0
 1611 0118 0B46     		mov	r3, r1
 1612 011a A06E     		ldr	r0, [r4, #104]	@ float
 1613 011c CDE91C23 		strd	r2, [sp, #112]
 1614 0120 FFF7FEFF 		bl	__aeabi_f2d
 1615 0124 8046     		mov	r8, r0
 1616 0126 E06E     		ldr	r0, [r4, #108]	@ float
 1617 0128 8946     		mov	r9, r1
 1618 012a FFF7FEFF 		bl	__aeabi_f2d
 1619 012e 94F88CC0 		ldrb	ip, [r4, #140]	@ zero_extendqisi2
 1620 0132 0F46     		mov	r7, r1
 1621 0134 2549     		ldr	r1, .L230
 1622 0136 0646     		mov	r6, r0
 1623 0138 A068     		ldr	r0, [r4, #8]	@ float
 1624 013a BCF1000F 		cmp	ip, #0
 1625 013e 08BF     		it	eq
 1626 0140 8A46     		moveq	r10, r1
 1627 0142 FFF7FEFF 		bl	__aeabi_f2d
 1628 0146 D4ED017A 		vldr.32	s15, [r4, #4]
 1629 014a CDE91A01 		strd	r0, [sp, #104]
 1630 014e FDEEE77A 		vcvt.s32.f32	s15, s15
 1631 0152 D4F88800 		ldr	r0, [r4, #136]	@ float
 1632 0156 CDED187A 		vstr.32	s15, [sp, #96]	@ int
 1633 015a FFF7FEFF 		bl	__aeabi_f2d
 1634 015e CDE91601 		strd	r0, [sp, #88]
 1635 0162 D4F88400 		ldr	r0, [r4, #132]	@ float
 1636 0166 FFF7FEFF 		bl	__aeabi_f2d
 1637 016a CDE91401 		strd	r0, [sp, #80]
 1638 016e D4F88000 		ldr	r0, [r4, #128]	@ float
 1639 0172 FFF7FEFF 		bl	__aeabi_f2d
 1640 0176 CDE91201 		strd	r0, [sp, #72]
 1641 017a E06F     		ldr	r0, [r4, #124]	@ float
 1642 017c FFF7FEFF 		bl	__aeabi_f2d
 1643 0180 CDE91001 		strd	r0, [sp, #64]
 1644 0184 A06F     		ldr	r0, [r4, #120]	@ float
 1645 0186 FFF7FEFF 		bl	__aeabi_f2d
 1646 018a CDE90E01 		strd	r0, [sp, #56]
 1647 018e 606F     		ldr	r0, [r4, #116]	@ float
 1648 0190 CDF830A0 		str	r10, [sp, #48]
 1649 0194 FFF7FEFF 		bl	__aeabi_f2d
 1650 0198 CDE90A01 		strd	r0, [sp, #40]
 1651 019c 206F     		ldr	r0, [r4, #112]	@ float
 1652 019e FFF7FEFF 		bl	__aeabi_f2d
 1653 01a2 CDE90801 		strd	r0, [sp, #32]
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 30


 1654 01a6 606E     		ldr	r0, [r4, #100]	@ float
 1655 01a8 FFF7FEFF 		bl	__aeabi_f2d
 1656 01ac CDE90089 		strd	r8, [sp]
 1657 01b0 CDE90601 		strd	r0, [sp, #24]
 1658 01b4 DDE91C23 		ldrd	r2, [sp, #112]
 1659 01b8 2846     		mov	r0, r5
 1660 01ba 0549     		ldr	r1, .L230+4
 1661 01bc CDF810A0 		str	r10, [sp, #16]
 1662 01c0 CDE90267 		strd	r6, [sp, #8]
 1663 01c4 FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1664 01c8 97E7     		b	.L224
 1665              	.L231:
 1666 01ca 00BF     		.align	2
 1667              	.L230:
 1668 01cc 10000000 		.word	.LC10
 1669 01d0 14000000 		.word	.LC11
 1670 01d4 00000000 		.word	.LC9
 1671              		.size	_ZN15ScaraKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN15ScaraKinematics9Configu
 1672              		.global	_ZTV15ScaraKinematics
 1673              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1674              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1675              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1676              	_ZL28cpu_irq_prev_interrupt_state:
 1677 0000 00       		.space	1
 1678              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1679              		.align	2
 1680              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1681              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1682              	_ZL32cpu_irq_critical_section_counter:
 1683 0000 00000000 		.space	4
 1684              		.section	.rodata._ZN15ScaraKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%progbi
 1685              		.align	2
 1686              	.LC9:
 1687 0000 2028636F 		.ascii	" (continuous)\000"
 1687      6E74696E 
 1687      756F7573 
 1687      2900
 1688 000e 0000     		.space	2
 1689              	.LC10:
 1690 0010 00       		.ascii	"\000"
 1691 0011 000000   		.space	3
 1692              	.LC11:
 1693 0014 4B696E65 		.ascii	"Kinematics is Scara with proximal arm %.2fmm range "
 1693      6D617469 
 1693      63732069 
 1693      73205363 
 1693      61726120 
 1694 0047 252E3166 		.ascii	"%.1f to %.1f\302\260%s, distal arm %.2fmm range %.1"
 1694      20746F20 
 1694      252E3166 
 1694      C2B02573 
 1694      2C206469 
 1695 0074 6620746F 		.ascii	"f to %.1f\302\260%s, crosstalk %.1f:%.1f:%.1f, bed "
 1695      20252E31 
 1695      66C2B025 
 1695      732C2063 
 1695      726F7373 
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 31


 1696 00a1 6F726967 		.ascii	"origin (%.1f, %.1f), segments/sec %d, min. segment "
 1696      696E2028 
 1696      252E3166 
 1696      2C20252E 
 1696      3166292C 
 1697 00d4 6C656E67 		.ascii	"length %.2f\000"
 1697      74682025 
 1697      2E326600 
 1698              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 1699              		.align	2
 1700              	.LC0:
 1701 0000 58595A00 		.ascii	"XYZ\000"
 1702              		.section	.rodata._ZNK15ScaraKinematics16NumHomingButtonsEj.str1.4,"aMS",%progbits,1
 1703              		.align	2
 1704              	.LC3:
 1705 0000 686F6D65 		.ascii	"homeproximal.g\000"
 1705      70726F78 
 1705      696D616C 
 1705      2E6700
 1706 000f 00       		.space	1
 1707              	.LC4:
 1708 0010 303A2F73 		.ascii	"0:/sys/\000"
 1708      79732F00 
 1709              	.LC5:
 1710 0018 686F6D65 		.ascii	"homedistal.g\000"
 1710      64697374 
 1710      616C2E67 
 1710      00
 1711 0025 000000   		.space	3
 1712              	.LC6:
 1713 0028 686F6D65 		.ascii	"homez.g\000"
 1713      7A2E6700 
 1714              		.section	.rodata._ZNK15ScaraKinematics17GetHomingFileNameEmmjRK9StringRef.str1.4,"aMS",%progbits,1
 1715              		.align	2
 1716              	.LC7:
 1717 0000 686F6D65 		.ascii	"homex.g\000"
 1717      782E6700 
 1718              	.LC8:
 1719 0008 686F6D65 		.ascii	"homey.g\000"
 1719      792E6700 
 1720              		.section	.rodata._ZNK15ScaraKinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 1721              		.align	2
 1722              	.LC1:
 1723 0000 50445A55 		.ascii	"PDZUVWABC\000"
 1723      56574142 
 1723      4300
 1724              		.section	.rodata._ZNK15ScaraKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 1725              		.align	2
 1726              	.LC2:
 1727 0000 53636172 		.ascii	"Scara\000"
 1727      6100
 1728              		.section	.rodata._ZTV15ScaraKinematics,"a",%progbits
 1729              		.align	2
 1730              		.set	.LANCHOR0,. + 0
 1731              		.type	_ZTV15ScaraKinematics, %object
 1732              		.size	_ZTV15ScaraKinematics, 128
 1733              	_ZTV15ScaraKinematics:
ARM GAS  C:\Users\pieta\AppData\Local\Temp\ccsdTzd9.s 			page 32


 1734 0000 00000000 		.word	0
 1735 0004 00000000 		.word	0
 1736 0008 00000000 		.word	_ZNK15ScaraKinematics7GetNameEb
 1737 000c 00000000 		.word	_ZN15ScaraKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1738 0010 00000000 		.word	_ZNK15ScaraKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 1739 0014 00000000 		.word	_ZNK15ScaraKinematics21MotorStepsToCartesianEPKlPKfjjPf
 1740 0018 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 1741 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 1742 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 1743 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 1744 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 1745 002c 00000000 		.word	_ZNK15ScaraKinematics11IsReachableEffb
 1746 0030 00000000 		.word	_ZNK15ScaraKinematics13LimitPositionEPfjmb
 1747 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 1748 0038 00000000 		.word	_ZNK15ScaraKinematics25GetAssumedInitialPositionEjPf
 1749 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 1750 0040 00000000 		.word	_ZNK15ScaraKinematics16NumHomingButtonsEj
 1751 0044 00000000 		.word	_ZNK15ScaraKinematics17HomingButtonNamesEv
 1752 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 1753 004c 00000000 		.word	_ZNK15ScaraKinematics17GetHomingFileNameEmmjRK9StringRef
 1754 0050 00000000 		.word	_ZNK15ScaraKinematics24QueryTerminateHomingMoveEj
 1755 0054 00000000 		.word	_ZNK15ScaraKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 1756 0058 00000000 		.word	_ZNK15ScaraKinematics13GetHomingModeEv
 1757 005c 00000000 		.word	_ZNK15ScaraKinematics16AxesAssumedHomedEm
 1758 0060 00000000 		.word	_ZNK15ScaraKinematics15MustBeHomedAxesEmb
 1759 0064 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 1760 0068 00000000 		.word	_ZNK15ScaraKinematics25LimitSpeedAndAccelerationER3DDAPKf
 1761 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 1762 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 1763 0074 00000000 		.word	_ZNK15ScaraKinematics24IsContinuousRotationAxisEj
 1764 0078 00000000 		.word	_ZN15ScaraKinematicsD1Ev
 1765 007c 00000000 		.word	_ZN15ScaraKinematicsD0Ev
 1766              		.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [AR
