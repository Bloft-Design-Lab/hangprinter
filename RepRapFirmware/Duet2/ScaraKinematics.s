ARM GAS  /tmp/ccJ58DB9.s 			page 1


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
ARM GAS  /tmp/ccJ58DB9.s 			page 2


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
  97              		.section	.text._ZNK10Kinematics16MachineAxisNamesEv,"axG",%progbits,_ZNK10Kinematics16MachineAxisN
  98              		.align	1
  99              		.p2align 2,,3
 100              		.weak	_ZNK10Kinematics16MachineAxisNamesEv
 101              		.syntax unified
 102              		.thumb
 103              		.thumb_func
 104              		.fpu fpv4-sp-d16
 105              		.type	_ZNK10Kinematics16MachineAxisNamesEv, %function
 106              	_ZNK10Kinematics16MachineAxisNamesEv:
 107              		@ args = 0, pretend = 0, frame = 0
 108              		@ frame_needed = 0, uses_anonymous_args = 0
 109              		@ link register save eliminated.
 110 0000 0048     		ldr	r0, .L10
 111 0002 7047     		bx	lr
 112              	.L11:
 113              		.align	2
 114              	.L10:
ARM GAS  /tmp/ccJ58DB9.s 			page 3


 115 0004 00000000 		.word	.LC0
 116              		.size	_ZNK10Kinematics16MachineAxisNamesEv, .-_ZNK10Kinematics16MachineAxisNamesEv
 117              		.section	.text._ZNK15ScaraKinematics17HomingButtonNamesEv,"axG",%progbits,_ZNK15ScaraKinematics17H
 118              		.align	1
 119              		.p2align 2,,3
 120              		.weak	_ZNK15ScaraKinematics17HomingButtonNamesEv
 121              		.syntax unified
 122              		.thumb
 123              		.thumb_func
 124              		.fpu fpv4-sp-d16
 125              		.type	_ZNK15ScaraKinematics17HomingButtonNamesEv, %function
 126              	_ZNK15ScaraKinematics17HomingButtonNamesEv:
 127              		@ args = 0, pretend = 0, frame = 0
 128              		@ frame_needed = 0, uses_anonymous_args = 0
 129              		@ link register save eliminated.
 130 0000 0048     		ldr	r0, .L13
 131 0002 7047     		bx	lr
 132              	.L14:
 133              		.align	2
 134              	.L13:
 135 0004 00000000 		.word	.LC1
 136              		.size	_ZNK15ScaraKinematics17HomingButtonNamesEv, .-_ZNK15ScaraKinematics17HomingButtonNamesEv
 137              		.section	.text._ZNK15ScaraKinematics13GetHomingModeEv,"axG",%progbits,_ZNK15ScaraKinematics13GetHo
 138              		.align	1
 139              		.p2align 2,,3
 140              		.weak	_ZNK15ScaraKinematics13GetHomingModeEv
 141              		.syntax unified
 142              		.thumb
 143              		.thumb_func
 144              		.fpu fpv4-sp-d16
 145              		.type	_ZNK15ScaraKinematics13GetHomingModeEv, %function
 146              	_ZNK15ScaraKinematics13GetHomingModeEv:
 147              		@ args = 0, pretend = 0, frame = 0
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149              		@ link register save eliminated.
 150 0000 0120     		movs	r0, #1
 151 0002 7047     		bx	lr
 152              		.size	_ZNK15ScaraKinematics13GetHomingModeEv, .-_ZNK15ScaraKinematics13GetHomingModeEv
 153              		.section	.text._ZNK15ScaraKinematics7GetNameEb,"ax",%progbits
 154              		.align	1
 155              		.p2align 2,,3
 156              		.global	_ZNK15ScaraKinematics7GetNameEb
 157              		.syntax unified
 158              		.thumb
 159              		.thumb_func
 160              		.fpu fpv4-sp-d16
 161              		.type	_ZNK15ScaraKinematics7GetNameEb, %function
 162              	_ZNK15ScaraKinematics7GetNameEb:
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 0, uses_anonymous_args = 0
 165              		@ link register save eliminated.
 166 0000 0048     		ldr	r0, .L17
 167 0002 7047     		bx	lr
 168              	.L18:
 169              		.align	2
 170              	.L17:
 171 0004 00000000 		.word	.LC2
ARM GAS  /tmp/ccJ58DB9.s 			page 4


 172              		.size	_ZNK15ScaraKinematics7GetNameEb, .-_ZNK15ScaraKinematics7GetNameEb
 173              		.section	.text._ZNK15ScaraKinematics25GetAssumedInitialPositionEjPf,"ax",%progbits
 174              		.align	1
 175              		.p2align 2,,3
 176              		.global	_ZNK15ScaraKinematics25GetAssumedInitialPositionEjPf
 177              		.syntax unified
 178              		.thumb
 179              		.thumb_func
 180              		.fpu fpv4-sp-d16
 181              		.type	_ZNK15ScaraKinematics25GetAssumedInitialPositionEjPf, %function
 182              	_ZNK15ScaraKinematics25GetAssumedInitialPositionEjPf:
 183              		@ args = 0, pretend = 0, frame = 0
 184              		@ frame_needed = 0, uses_anonymous_args = 0
 185              		@ link register save eliminated.
 186 0000 D0ED1E7A 		vldr.32	s15, [r0, #120]
 187 0004 90ED197A 		vldr.32	s14, [r0, #100]
 188 0008 77EEC77A 		vsub.f32	s15, s15, s14
 189 000c 0229     		cmp	r1, #2
 190 000e C2ED007A 		vstr.32	s15, [r2]
 191 0012 D0ED1A7A 		vldr.32	s15, [r0, #104]
 192 0016 F1EE677A 		vneg.f32	s15, s15
 193 001a C2ED017A 		vstr.32	s15, [r2, #4]
 194 001e 07D9     		bls	.L19
 195 0020 02EB8101 		add	r1, r2, r1, lsl #2
 196 0024 0023     		movs	r3, #0
 197 0026 0832     		adds	r2, r2, #8
 198              	.L21:
 199 0028 42F8043B 		str	r3, [r2], #4	@ float
 200 002c 8A42     		cmp	r2, r1
 201 002e FBD1     		bne	.L21
 202              	.L19:
 203 0030 7047     		bx	lr
 204              		.size	_ZNK15ScaraKinematics25GetAssumedInitialPositionEjPf, .-_ZNK15ScaraKinematics25GetAssumedIni
 205 0032 00BF     		.section	.text._ZNK15ScaraKinematics16AxesAssumedHomedEm,"ax",%progbits
 206              		.align	1
 207              		.p2align 2,,3
 208              		.global	_ZNK15ScaraKinematics16AxesAssumedHomedEm
 209              		.syntax unified
 210              		.thumb
 211              		.thumb_func
 212              		.fpu fpv4-sp-d16
 213              		.type	_ZNK15ScaraKinematics16AxesAssumedHomedEm, %function
 214              	_ZNK15ScaraKinematics16AxesAssumedHomedEm:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217              		@ link register save eliminated.
 218 0000 01F00303 		and	r3, r1, #3
 219 0004 032B     		cmp	r3, #3
 220 0006 14BF     		ite	ne
 221 0008 21F00300 		bicne	r0, r1, #3
 222 000c 0846     		moveq	r0, r1
 223 000e 7047     		bx	lr
 224              		.size	_ZNK15ScaraKinematics16AxesAssumedHomedEm, .-_ZNK15ScaraKinematics16AxesAssumedHomedEm
 225              		.section	.text._ZNK15ScaraKinematics15MustBeHomedAxesEmb,"ax",%progbits
 226              		.align	1
 227              		.p2align 2,,3
 228              		.global	_ZNK15ScaraKinematics15MustBeHomedAxesEmb
ARM GAS  /tmp/ccJ58DB9.s 			page 5


 229              		.syntax unified
 230              		.thumb
 231              		.thumb_func
 232              		.fpu fpv4-sp-d16
 233              		.type	_ZNK15ScaraKinematics15MustBeHomedAxesEmb, %function
 234              	_ZNK15ScaraKinematics15MustBeHomedAxesEmb:
 235              		@ args = 0, pretend = 0, frame = 0
 236              		@ frame_needed = 0, uses_anonymous_args = 0
 237              		@ link register save eliminated.
 238 0000 4B07     		lsls	r3, r1, #29
 239 0002 14BF     		ite	ne
 240 0004 41F00700 		orrne	r0, r1, #7
 241 0008 0846     		moveq	r0, r1
 242 000a 7047     		bx	lr
 243              		.size	_ZNK15ScaraKinematics15MustBeHomedAxesEmb, .-_ZNK15ScaraKinematics15MustBeHomedAxesEmb
 244              		.section	.text._ZNK15ScaraKinematics24IsContinuousRotationAxisEj,"ax",%progbits
 245              		.align	1
 246              		.p2align 2,,3
 247              		.global	_ZNK15ScaraKinematics24IsContinuousRotationAxisEj
 248              		.syntax unified
 249              		.thumb
 250              		.thumb_func
 251              		.fpu fpv4-sp-d16
 252              		.type	_ZNK15ScaraKinematics24IsContinuousRotationAxisEj, %function
 253              	_ZNK15ScaraKinematics24IsContinuousRotationAxisEj:
 254              		@ args = 0, pretend = 0, frame = 0
 255              		@ frame_needed = 0, uses_anonymous_args = 0
 256              		@ link register save eliminated.
 257 0000 0129     		cmp	r1, #1
 258 0002 9ABF     		itte	ls
 259 0004 0918     		addls	r1, r1, r0
 260 0006 91F86C00 		ldrbls	r0, [r1, #108]	@ zero_extendqisi2
 261 000a 0020     		movhi	r0, #0
 262 000c 7047     		bx	lr
 263              		.size	_ZNK15ScaraKinematics24IsContinuousRotationAxisEj, .-_ZNK15ScaraKinematics24IsContinuousRota
 264 000e 00BF     		.section	.text._ZN15ScaraKinematicsD2Ev,"axG",%progbits,_ZN15ScaraKinematicsD5Ev,comdat
 265              		.align	1
 266              		.p2align 2,,3
 267              		.weak	_ZN15ScaraKinematicsD2Ev
 268              		.syntax unified
 269              		.thumb
 270              		.thumb_func
 271              		.fpu fpv4-sp-d16
 272              		.type	_ZN15ScaraKinematicsD2Ev, %function
 273              	_ZN15ScaraKinematicsD2Ev:
 274              		@ args = 0, pretend = 0, frame = 0
 275              		@ frame_needed = 0, uses_anonymous_args = 0
 276              		@ link register save eliminated.
 277 0000 7047     		bx	lr
 278              		.size	_ZN15ScaraKinematicsD2Ev, .-_ZN15ScaraKinematicsD2Ev
 279              		.weak	_ZN15ScaraKinematicsD1Ev
 280              		.thumb_set _ZN15ScaraKinematicsD1Ev,_ZN15ScaraKinematicsD2Ev
 281 0002 00BF     		.section	.text._ZNK15ScaraKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA,"ax",%progbits
 282              		.align	1
 283              		.p2align 2,,3
 284              		.global	_ZNK15ScaraKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
 285              		.syntax unified
ARM GAS  /tmp/ccJ58DB9.s 			page 6


 286              		.thumb
 287              		.thumb_func
 288              		.fpu fpv4-sp-d16
 289              		.type	_ZNK15ScaraKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, %function
 290              	_ZNK15ScaraKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA:
 291              		@ args = 4, pretend = 0, frame = 0
 292              		@ frame_needed = 0, uses_anonymous_args = 0
 293 0000 38B5     		push	{r3, r4, r5, lr}
 294 0002 0129     		cmp	r1, #1
 295 0004 049C     		ldr	r4, [sp, #16]
 296 0006 5CD0     		beq	.L35
 297 0008 4CD3     		bcc	.L36
 298 000a 0229     		cmp	r1, #2
 299 000c 0D46     		mov	r5, r1
 300 000e 2FD1     		bne	.L49
 301 0010 4349     		ldr	r1, .L54
 302 0012 0968     		ldr	r1, [r1]	@ unaligned
 303 0014 002A     		cmp	r2, #0
 304 0016 77D1     		bne	.L50
 305 0018 01F24C71 		addw	r1, r1, #1868
 306 001c D1ED007A 		vldr.32	s15, [r1]
 307              	.L44:
 308 0020 94ED077A 		vldr.32	s14, [r4, #28]	@ int
 309 0024 D0ED174A 		vldr.32	s9, [r0, #92]
 310 0028 93ED005A 		vldr.32	s10, [r3]
 311 002c 90ED186A 		vldr.32	s12, [r0, #96]
 312 0030 D3ED015A 		vldr.32	s11, [r3, #4]
 313 0034 93ED020A 		vldr.32	s0, [r3, #8]
 314 0038 F8EEC76A 		vcvt.f32.s32	s13, s14
 315 003c 94ED087A 		vldr.32	s14, [r4, #32]	@ int
 316 0040 66EEA46A 		vmul.f32	s13, s13, s9
 317 0044 B8EEC77A 		vcvt.f32.s32	s14, s14
 318 0048 27EE067A 		vmul.f32	s14, s14, s12
 319 004c 86EE856A 		vdiv.f32	s12, s13, s10
 320 0050 C7EE256A 		vdiv.f32	s13, s14, s11
 321 0054 77EEC67A 		vsub.f32	s15, s15, s12
 322 0058 77EEE67A 		vsub.f32	s15, s15, s13
 323 005c 27EE800A 		vmul.f32	s0, s15, s0
 324 0060 FFF7FEFF 		bl	lrintf
 325 0064 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 326 0066 6062     		str	r0, [r4, #36]
 327 0068 6FF30003 		bfc	r3, #0, #1
 328 006c A372     		strb	r3, [r4, #10]
 329 006e 38BD     		pop	{r3, r4, r5, pc}
 330              	.L49:
 331 0070 2B49     		ldr	r1, .L54
 332 0072 0968     		ldr	r1, [r1]
 333 0074 002A     		cmp	r2, #0
 334 0076 4CD1     		bne	.L51
 335 0078 05F5E872 		add	r2, r5, #464
 336 007c 01EB8201 		add	r1, r1, r2, lsl #2
 337 0080 91ED010A 		vldr.32	s0, [r1, #4]
 338              	.L46:
 339 0084 03EB8503 		add	r3, r3, r5, lsl #2
 340 0088 D3ED007A 		vldr.32	s15, [r3]
 341 008c 20EE270A 		vmul.f32	s0, s0, s15
 342 0090 FFF7FEFF 		bl	lrintf
ARM GAS  /tmp/ccJ58DB9.s 			page 7


 343 0094 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 344 0096 04EB8505 		add	r5, r4, r5, lsl #2
 345 009a 6FF30003 		bfc	r3, #0, #1
 346 009e E861     		str	r0, [r5, #28]
 347 00a0 A372     		strb	r3, [r4, #10]
 348 00a2 38BD     		pop	{r3, r4, r5, pc}
 349              	.L36:
 350 00a4 6ABB     		cbnz	r2, .L52
 351 00a6 90ED120A 		vldr.32	s0, [r0, #72]
 352              	.L39:
 353 00aa D3ED007A 		vldr.32	s15, [r3]
 354 00ae 20EE270A 		vmul.f32	s0, s0, s15
 355 00b2 FFF7FEFF 		bl	lrintf
 356 00b6 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 357 00b8 E061     		str	r0, [r4, #28]
 358 00ba 6FF30003 		bfc	r3, #0, #1
 359 00be A372     		strb	r3, [r4, #10]
 360 00c0 38BD     		pop	{r3, r4, r5, pc}
 361              	.L35:
 362 00c2 DAB9     		cbnz	r2, .L53
 363 00c4 90ED147A 		vldr.32	s14, [r0, #80]
 364              	.L42:
 365 00c8 D4ED077A 		vldr.32	s15, [r4, #28]	@ int
 366 00cc D0ED166A 		vldr.32	s13, [r0, #88]
 367 00d0 93ED006A 		vldr.32	s12, [r3]
 368 00d4 93ED010A 		vldr.32	s0, [r3, #4]
 369 00d8 F8EEE77A 		vcvt.f32.s32	s15, s15
 370 00dc 67EEA67A 		vmul.f32	s15, s15, s13
 371 00e0 C7EE866A 		vdiv.f32	s13, s15, s12
 372 00e4 37EE667A 		vsub.f32	s14, s14, s13
 373 00e8 27EE000A 		vmul.f32	s0, s14, s0
 374 00ec FFF7FEFF 		bl	lrintf
 375 00f0 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 376 00f2 2062     		str	r0, [r4, #32]
 377 00f4 6FF30003 		bfc	r3, #0, #1
 378 00f8 A372     		strb	r3, [r4, #10]
 379 00fa 38BD     		pop	{r3, r4, r5, pc}
 380              	.L53:
 381 00fc 90ED157A 		vldr.32	s14, [r0, #84]
 382 0100 E2E7     		b	.L42
 383              	.L52:
 384 0102 90ED130A 		vldr.32	s0, [r0, #76]
 385 0106 D0E7     		b	.L39
 386              	.L50:
 387 0108 01F5E561 		add	r1, r1, #1832
 388 010c D1ED007A 		vldr.32	s15, [r1]
 389 0110 86E7     		b	.L44
 390              	.L51:
 391 0112 05F5E472 		add	r2, r5, #456
 392 0116 01EB8201 		add	r1, r1, r2, lsl #2
 393 011a 91ED000A 		vldr.32	s0, [r1]
 394 011e B1E7     		b	.L46
 395              	.L55:
 396              		.align	2
 397              	.L54:
 398 0120 00000000 		.word	reprap
 399              		.size	_ZNK15ScaraKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA, .-_ZNK15ScaraKinematics23OnHoming
ARM GAS  /tmp/ccJ58DB9.s 			page 8


 400              		.section	.text._ZNK15ScaraKinematics21MotorStepsToCartesianEPKlPKfjjPf,"ax",%progbits
 401              		.align	1
 402              		.p2align 2,,3
 403              		.global	_ZNK15ScaraKinematics21MotorStepsToCartesianEPKlPKfjjPf
 404              		.syntax unified
 405              		.thumb
 406              		.thumb_func
 407              		.fpu fpv4-sp-d16
 408              		.type	_ZNK15ScaraKinematics21MotorStepsToCartesianEPKlPKfjjPf, %function
 409              	_ZNK15ScaraKinematics21MotorStepsToCartesianEPKlPKfjjPf:
 410              		@ args = 8, pretend = 0, frame = 0
 411              		@ frame_needed = 0, uses_anonymous_args = 0
 412 0000 D1ED007A 		vldr.32	s15, [r1]	@ int
 413 0004 92ED006A 		vldr.32	s12, [r2]
 414 0008 D2ED016A 		vldr.32	s13, [r2, #4]
 415 000c 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 416 0010 B8EEE77A 		vcvt.f32.s32	s14, s15
 417 0014 D1ED017A 		vldr.32	s15, [r1, #4]	@ int
 418 0018 F8EEE77A 		vcvt.f32.s32	s15, s15
 419 001c 2DED068B 		vpush.64	{d8, d9, d10}
 420 0020 C7EE068A 		vdiv.f32	s17, s14, s12
 421 0024 8046     		mov	r8, r0
 422 0026 0C46     		mov	r4, r1
 423 0028 1646     		mov	r6, r2
 424 002a 1F46     		mov	r7, r3
 425 002c 0D9D     		ldr	r5, [sp, #52]
 426 002e 87EEA68A 		vdiv.f32	s16, s15, s13
 427 0032 D0ED167A 		vldr.32	s15, [r0, #88]
 428 0036 9FED34AA 		vldr.32	s20, .L61
 429 003a A7EEA88A 		vfma.f32	s16, s15, s17
 430 003e 68EE8A9A 		vmul.f32	s19, s17, s20
 431 0042 38EE889A 		vadd.f32	s18, s17, s16
 432 0046 B0EE690A 		vmov.f32	s0, s19
 433 004a FFF7FEFF 		bl	cosf
 434 004e 29EE0A9A 		vmul.f32	s18, s18, s20
 435 0052 F0EE40AA 		vmov.f32	s21, s0
 436 0056 B0EE490A 		vmov.f32	s0, s18
 437 005a FFF7FEFF 		bl	cosf
 438 005e D8ED117A 		vldr.32	s15, [r8, #68]
 439 0062 D8ED106A 		vldr.32	s13, [r8, #64]
 440 0066 98ED197A 		vldr.32	s14, [r8, #100]
 441 006a 60EE277A 		vmul.f32	s15, s0, s15
 442 006e B0EE690A 		vmov.f32	s0, s19
 443 0072 EAEEA67A 		vfma.f32	s15, s21, s13
 444 0076 77EEC77A 		vsub.f32	s15, s15, s14
 445 007a C5ED007A 		vstr.32	s15, [r5]
 446 007e FFF7FEFF 		bl	sinf
 447 0082 F0EE409A 		vmov.f32	s19, s0
 448 0086 B0EE490A 		vmov.f32	s0, s18
 449 008a FFF7FEFF 		bl	sinf
 450 008e D8ED117A 		vldr.32	s15, [r8, #68]
 451 0092 98ED106A 		vldr.32	s12, [r8, #64]
 452 0096 D8ED1A6A 		vldr.32	s13, [r8, #104]
 453 009a 94ED027A 		vldr.32	s14, [r4, #8]	@ int
 454 009e 60EE277A 		vmul.f32	s15, s0, s15
 455 00a2 B8EEC77A 		vcvt.f32.s32	s14, s14
 456 00a6 E9EE867A 		vfma.f32	s15, s19, s12
ARM GAS  /tmp/ccJ58DB9.s 			page 9


 457 00aa 032F     		cmp	r7, #3
 458 00ac 77EEE67A 		vsub.f32	s15, s15, s13
 459 00b0 C5ED017A 		vstr.32	s15, [r5, #4]
 460 00b4 D6ED025A 		vldr.32	s11, [r6, #8]
 461 00b8 98ED176A 		vldr.32	s12, [r8, #92]
 462 00bc D8ED186A 		vldr.32	s13, [r8, #96]
 463 00c0 C7EE257A 		vdiv.f32	s15, s14, s11
 464 00c4 E6EE287A 		vfma.f32	s15, s12, s17
 465 00c8 E6EE887A 		vfma.f32	s15, s13, s16
 466 00cc C5ED027A 		vstr.32	s15, [r5, #8]
 467 00d0 16D9     		bls	.L56
 468 00d2 04EB8700 		add	r0, r4, r7, lsl #2
 469 00d6 0438     		subs	r0, r0, #4
 470 00d8 04F10801 		add	r1, r4, #8
 471 00dc 06F10C02 		add	r2, r6, #12
 472 00e0 05F10C03 		add	r3, r5, #12
 473              	.L58:
 474 00e4 51F8044F 		ldr	r4, [r1, #4]!
 475 00e8 F2EC016A 		vldmia.32	r2!, {s13}
 476 00ec 07EE904A 		vmov	s15, r4	@ int
 477 00f0 F8EEE77A 		vcvt.f32.s32	s15, s15
 478 00f4 8142     		cmp	r1, r0
 479 00f6 87EEA67A 		vdiv.f32	s14, s15, s13
 480 00fa A3EC017A 		vstmia.32	r3!, {s14}
 481 00fe F1D1     		bne	.L58
 482              	.L56:
 483 0100 BDEC068B 		vldm	sp!, {d8-d10}
 484 0104 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 485              	.L62:
 486              		.align	2
 487              	.L61:
 488 0108 35FA8E3C 		.word	1016003125
 489              		.size	_ZNK15ScaraKinematics21MotorStepsToCartesianEPKlPKfjjPf, .-_ZNK15ScaraKinematics21MotorSteps
 490              		.section	.text._ZNK15ScaraKinematics16NumHomingButtonsEj,"ax",%progbits
 491              		.align	1
 492              		.p2align 2,,3
 493              		.global	_ZNK15ScaraKinematics16NumHomingButtonsEj
 494              		.syntax unified
 495              		.thumb
 496              		.thumb_func
 497              		.fpu fpv4-sp-d16
 498              		.type	_ZNK15ScaraKinematics16NumHomingButtonsEj, %function
 499              	_ZNK15ScaraKinematics16NumHomingButtonsEj:
 500              		@ args = 0, pretend = 0, frame = 0
 501              		@ frame_needed = 0, uses_anonymous_args = 0
 502 0000 38B5     		push	{r3, r4, r5, lr}
 503 0002 0F4B     		ldr	r3, .L71
 504 0004 0F4A     		ldr	r2, .L71+4
 505 0006 1B68     		ldr	r3, [r3]
 506 0008 D3F8B449 		ldr	r4, [r3, #2484]
 507 000c 0D46     		mov	r5, r1
 508 000e 2046     		mov	r0, r4
 509 0010 0D49     		ldr	r1, .L71+8
 510 0012 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 511 0016 00B9     		cbnz	r0, .L69
 512 0018 38BD     		pop	{r3, r4, r5, pc}
 513              	.L69:
ARM GAS  /tmp/ccJ58DB9.s 			page 10


 514 001a 0C4A     		ldr	r2, .L71+12
 515 001c 0A49     		ldr	r1, .L71+8
 516 001e 2046     		mov	r0, r4
 517 0020 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 518 0024 08B9     		cbnz	r0, .L70
 519 0026 0120     		movs	r0, #1
 520 0028 38BD     		pop	{r3, r4, r5, pc}
 521              	.L70:
 522 002a 094B     		ldr	r3, .L71+16
 523 002c 0649     		ldr	r1, .L71+8
 524 002e 9A68     		ldr	r2, [r3, #8]
 525 0030 2046     		mov	r0, r4
 526 0032 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 527 0036 0028     		cmp	r0, #0
 528 0038 14BF     		ite	ne
 529 003a 2846     		movne	r0, r5
 530 003c 0220     		moveq	r0, #2
 531 003e 38BD     		pop	{r3, r4, r5, pc}
 532              	.L72:
 533              		.align	2
 534              	.L71:
 535 0040 00000000 		.word	reprap
 536 0044 00000000 		.word	.LC3
 537 0048 10000000 		.word	.LC4
 538 004c 18000000 		.word	.LC5
 539 0050 00000000 		.word	_ZN10Kinematics23StandardHomingFileNamesE
 540              		.size	_ZNK15ScaraKinematics16NumHomingButtonsEj, .-_ZNK15ScaraKinematics16NumHomingButtonsEj
 541              		.section	.text._ZNK15ScaraKinematics17GetHomingFileNameEmmjRm,"ax",%progbits
 542              		.align	1
 543              		.p2align 2,,3
 544              		.global	_ZNK15ScaraKinematics17GetHomingFileNameEmmjRm
 545              		.syntax unified
 546              		.thumb
 547              		.thumb_func
 548              		.fpu fpv4-sp-d16
 549              		.type	_ZNK15ScaraKinematics17GetHomingFileNameEmmjRm, %function
 550              	_ZNK15ScaraKinematics17GetHomingFileNameEmmjRm:
 551              		@ args = 4, pretend = 0, frame = 0
 552              		@ frame_needed = 0, uses_anonymous_args = 0
 553 0000 10B5     		push	{r4, lr}
 554 0002 82B0     		sub	sp, sp, #8
 555 0004 049C     		ldr	r4, [sp, #16]
 556 0006 0094     		str	r4, [sp]
 557 0008 FFF7FEFF 		bl	_ZNK10Kinematics17GetHomingFileNameEmmjRm
 558 000c 0C4B     		ldr	r3, .L78
 559 000e 1A68     		ldr	r2, [r3]
 560 0010 8242     		cmp	r2, r0
 561 0012 13D0     		beq	.L76
 562 0014 5A68     		ldr	r2, [r3, #4]
 563 0016 0B4B     		ldr	r3, .L78+4
 564 0018 0446     		mov	r4, r0
 565 001a 8242     		cmp	r2, r0
 566 001c 08BF     		it	eq
 567 001e 1C46     		moveq	r4, r3
 568              	.L74:
 569 0020 094B     		ldr	r3, .L78+8
 570 0022 0A49     		ldr	r1, .L78+12
ARM GAS  /tmp/ccJ58DB9.s 			page 11


 571 0024 1B68     		ldr	r3, [r3]
 572 0026 2246     		mov	r2, r4
 573 0028 D3F8B409 		ldr	r0, [r3, #2484]
 574 002c FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 575 0030 08B9     		cbnz	r0, .L73
 576 0032 074B     		ldr	r3, .L78+16
 577 0034 1C68     		ldr	r4, [r3]
 578              	.L73:
 579 0036 2046     		mov	r0, r4
 580 0038 02B0     		add	sp, sp, #8
 581              		@ sp needed
 582 003a 10BD     		pop	{r4, pc}
 583              	.L76:
 584 003c 054C     		ldr	r4, .L78+20
 585 003e EFE7     		b	.L74
 586              	.L79:
 587              		.align	2
 588              	.L78:
 589 0040 00000000 		.word	_ZN10Kinematics23StandardHomingFileNamesE
 590 0044 18000000 		.word	.LC5
 591 0048 00000000 		.word	reprap
 592 004c 10000000 		.word	.LC4
 593 0050 00000000 		.word	_ZN10Kinematics15HomeAllFileNameE
 594 0054 00000000 		.word	.LC3
 595              		.size	_ZNK15ScaraKinematics17GetHomingFileNameEmmjRm, .-_ZNK15ScaraKinematics17GetHomingFileNameEm
 596              		.section	.text._ZNK15ScaraKinematics25LimitSpeedAndAccelerationER3DDAPKf,"ax",%progbits
 597              		.align	1
 598              		.p2align 2,,3
 599              		.global	_ZNK15ScaraKinematics25LimitSpeedAndAccelerationER3DDAPKf
 600              		.syntax unified
 601              		.thumb
 602              		.thumb_func
 603              		.fpu fpv4-sp-d16
 604              		.type	_ZNK15ScaraKinematics25LimitSpeedAndAccelerationER3DDAPKf, %function
 605              	_ZNK15ScaraKinematics25LimitSpeedAndAccelerationER3DDAPKf:
 606              		@ args = 0, pretend = 0, frame = 8
 607              		@ frame_needed = 0, uses_anonymous_args = 0
 608 0000 92ED010A 		vldr.32	s0, [r2, #4]
 609 0004 D2ED007A 		vldr.32	s15, [r2]
 610 0008 00B5     		push	{lr}
 611 000a 20EE000A 		vmul.f32	s0, s0, s0
 612 000e 2DED028B 		vpush.64	{d8}
 613 0012 A7EEA70A 		vfma.f32	s0, s15, s15
 614 0016 83B0     		sub	sp, sp, #12
 615 0018 B5EE400A 		vcmp.f32	s0, #0
 616 001c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 617 0020 B1EEC08A 		vsqrt.f32	s16, s0
 618 0024 39D4     		bmi	.L89
 619              	.L81:
 620 0026 DFED1F7A 		vldr.32	s15, .L90
 621 002a B4EEE78A 		vcmpe.f32	s16, s15
 622 002e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 623 0032 2DDD     		ble	.L87
 624 0034 1C4B     		ldr	r3, .L90+4
 625 0036 1B68     		ldr	r3, [r3]
 626 0038 93ED500A 		vldr.32	s0, [r3, #320]
 627 003c D3ED517A 		vldr.32	s15, [r3, #324]
ARM GAS  /tmp/ccJ58DB9.s 			page 12


 628 0040 B4EE400A 		vcmp.f32	s0, s0
 629 0044 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 630 0048 06D6     		bvs	.L84
 631 004a B4EEE70A 		vcmpe.f32	s0, s15
 632 004e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 633 0052 58BF     		it	pl
 634 0054 B0EE670A 		vmovpl.f32	s0, s15
 635              	.L84:
 636 0058 D3ED5C0A 		vldr.32	s1, [r3, #368]
 637 005c D3ED5D7A 		vldr.32	s15, [r3, #372]
 638 0060 F4EE600A 		vcmp.f32	s1, s1
 639 0064 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 640 0068 06D6     		bvs	.L85
 641 006a F4EEE70A 		vcmpe.f32	s1, s15
 642 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 643 0072 58BF     		it	pl
 644 0074 F0EE670A 		vmovpl.f32	s1, s15
 645              	.L85:
 646 0078 C0EE880A 		vdiv.f32	s1, s1, s16
 647 007c 0846     		mov	r0, r1
 648 007e 80EE080A 		vdiv.f32	s0, s0, s16
 649 0082 03B0     		add	sp, sp, #12
 650              		@ sp needed
 651 0084 BDEC028B 		vldm	sp!, {d8}
 652 0088 5DF804EB 		ldr	lr, [sp], #4
 653 008c FFF7FEBF 		b	_ZN3DDA25LimitSpeedAndAccelerationEff
 654              	.L87:
 655 0090 03B0     		add	sp, sp, #12
 656              		@ sp needed
 657 0092 BDEC028B 		vldm	sp!, {d8}
 658 0096 5DF804FB 		ldr	pc, [sp], #4
 659              	.L89:
 660 009a 0191     		str	r1, [sp, #4]
 661 009c FFF7FEFF 		bl	sqrtf
 662 00a0 0199     		ldr	r1, [sp, #4]
 663 00a2 C0E7     		b	.L81
 664              	.L91:
 665              		.align	2
 666              	.L90:
 667 00a4 0AD7233C 		.word	1008981770
 668 00a8 00000000 		.word	reprap
 669              		.size	_ZNK15ScaraKinematics25LimitSpeedAndAccelerationER3DDAPKf, .-_ZNK15ScaraKinematics25LimitSpe
 670              		.section	.text._ZN15ScaraKinematicsD0Ev,"axG",%progbits,_ZN15ScaraKinematicsD5Ev,comdat
 671              		.align	1
 672              		.p2align 2,,3
 673              		.weak	_ZN15ScaraKinematicsD0Ev
 674              		.syntax unified
 675              		.thumb
 676              		.thumb_func
 677              		.fpu fpv4-sp-d16
 678              		.type	_ZN15ScaraKinematicsD0Ev, %function
 679              	_ZN15ScaraKinematicsD0Ev:
 680              		@ args = 0, pretend = 0, frame = 0
 681              		@ frame_needed = 0, uses_anonymous_args = 0
 682 0000 10B5     		push	{r4, lr}
 683 0002 A021     		movs	r1, #160
 684 0004 0446     		mov	r4, r0
ARM GAS  /tmp/ccJ58DB9.s 			page 13


 685 0006 FFF7FEFF 		bl	_ZdlPvj
 686 000a 2046     		mov	r0, r4
 687 000c 10BD     		pop	{r4, pc}
 688              		.size	_ZN15ScaraKinematicsD0Ev, .-_ZN15ScaraKinematicsD0Ev
 689 000e 00BF     		.section	.text._ZNK15ScaraKinematics24QueryTerminateHomingMoveEj,"ax",%progbits
 690              		.align	1
 691              		.p2align 2,,3
 692              		.global	_ZNK15ScaraKinematics24QueryTerminateHomingMoveEj
 693              		.syntax unified
 694              		.thumb
 695              		.thumb_func
 696              		.fpu fpv4-sp-d16
 697              		.type	_ZNK15ScaraKinematics24QueryTerminateHomingMoveEj, %function
 698              	_ZNK15ScaraKinematics24QueryTerminateHomingMoveEj:
 699              		@ args = 0, pretend = 0, frame = 0
 700              		@ frame_needed = 0, uses_anonymous_args = 0
 701              		@ link register save eliminated.
 702 0000 81B9     		cbnz	r1, .L95
 703 0002 D0ED167A 		vldr.32	s15, [r0, #88]
 704 0006 F5EE407A 		vcmp.f32	s15, #0
 705 000a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 706 000e 0DD1     		bne	.L97
 707 0010 D0ED177A 		vldr.32	s15, [r0, #92]
 708 0014 F5EE407A 		vcmp.f32	s15, #0
 709 0018 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 710 001c 14BF     		ite	ne
 711 001e 0120     		movne	r0, #1
 712 0020 0020     		moveq	r0, #0
 713 0022 7047     		bx	lr
 714              	.L95:
 715 0024 0129     		cmp	r1, #1
 716 0026 03D0     		beq	.L99
 717 0028 0020     		movs	r0, #0
 718 002a 7047     		bx	lr
 719              	.L97:
 720 002c 0120     		movs	r0, #1
 721 002e 7047     		bx	lr
 722              	.L99:
 723 0030 D0ED187A 		vldr.32	s15, [r0, #96]
 724 0034 F5EE407A 		vcmp.f32	s15, #0
 725 0038 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 726 003c 14BF     		ite	ne
 727 003e 0120     		movne	r0, #1
 728 0040 0020     		moveq	r0, #0
 729 0042 7047     		bx	lr
 730              		.size	_ZNK15ScaraKinematics24QueryTerminateHomingMoveEj, .-_ZNK15ScaraKinematics24QueryTerminateHo
 731              		.section	.text._ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb,"ax",%progbits
 732              		.align	1
 733              		.p2align 2,,3
 734              		.global	_ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb
 735              		.syntax unified
 736              		.thumb
 737              		.thumb_func
 738              		.fpu fpv4-sp-d16
 739              		.type	_ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb, %function
 740              	_ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb:
 741              		@ args = 8, pretend = 0, frame = 8
ARM GAS  /tmp/ccJ58DB9.s 			page 14


 742              		@ frame_needed = 0, uses_anonymous_args = 0
 743 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 744 0004 90ED1A5A 		vldr.32	s10, [r0, #104]
 745 0008 D0ED197A 		vldr.32	s15, [r0, #100]
 746 000c D0ED205A 		vldr.32	s11, [r0, #128]
 747 0010 90ED216A 		vldr.32	s12, [r0, #132]
 748 0014 D0ED226A 		vldr.32	s13, [r0, #136]
 749 0018 9FED6E7A 		vldr.32	s14, .L131
 750 001c 2DED068B 		vpush.64	{d8, d9, d10}
 751 0020 D1ED019A 		vldr.32	s19, [r1, #4]
 752 0024 91ED008A 		vldr.32	s16, [r1]
 753 0028 79EE859A 		vadd.f32	s19, s19, s10
 754 002c 38EE278A 		vadd.f32	s16, s16, s15
 755 0030 69EEA97A 		vmul.f32	s15, s19, s19
 756 0034 F7EE008A 		vmov.f32	s17, #1.0e+0
 757 0038 E8EE087A 		vfma.f32	s15, s16, s16
 758 003c 82B0     		sub	sp, sp, #8
 759 003e 0E9E     		ldr	r6, [sp, #56]
 760 0040 77EEE57A 		vsub.f32	s15, s15, s11
 761 0044 77EEC67A 		vsub.f32	s15, s15, s12
 762 0048 87EEA69A 		vdiv.f32	s18, s15, s13
 763 004c E9EE498A 		vfms.f32	s17, s18, s18
 764 0050 F4EEC78A 		vcmpe.f32	s17, s14
 765 0054 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 766 0058 08D5     		bpl	.L127
 767 005a 5F4A     		ldr	r2, .L131+4
 768 005c 3260     		str	r2, [r6]	@ float
 769 005e 0020     		movs	r0, #0
 770 0060 1A60     		str	r2, [r3]	@ float
 771              	.L103:
 772 0062 02B0     		add	sp, sp, #8
 773              		@ sp needed
 774 0064 BDEC068B 		vldm	sp!, {d8-d10}
 775 0068 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 776              	.L127:
 777 006c B0EE490A 		vmov.f32	s0, s18
 778 0070 1D46     		mov	r5, r3
 779 0072 1746     		mov	r7, r2
 780 0074 0446     		mov	r4, r0
 781 0076 FFF7FEFF 		bl	acosf
 782 007a DFED587A 		vldr.32	s15, .L131+8
 783 007e F5EE408A 		vcmp.f32	s17, #0
 784 0082 20EE270A 		vmul.f32	s0, s0, s15
 785 0086 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 786 008a B1EEE8AA 		vsqrt.f32	s20, s17
 787 008e 86ED000A 		vstr.32	s0, [r6]
 788 0092 00F19780 		bmi	.L129
 789              	.L104:
 790 0096 D4ED117A 		vldr.32	s15, [r4, #68]
 791 009a 94ED107A 		vldr.32	s14, [r4, #64]
 792 009e DFED4FAA 		vldr.32	s21, .L131+8
 793 00a2 A7EE897A 		vfma.f32	s14, s15, s18
 794 00a6 4FF00208 		mov	r8, #2
 795 00aa 0020     		movs	r0, #0
 796 00ac 27EE8AAA 		vmul.f32	s20, s15, s20
 797 00b0 B0EE479A 		vmov.f32	s18, s14
 798              	.L118:
ARM GAS  /tmp/ccJ58DB9.s 			page 15


 799 00b4 0F9B     		ldr	r3, [sp, #60]
 800 00b6 94F86D20 		ldrb	r2, [r4, #109]	@ zero_extendqisi2
 801 00ba 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 802 00bc 8342     		cmp	r3, r0
 803 00be 3AD0     		beq	.L105
 804 00c0 7AB9     		cbnz	r2, .L106
 805 00c2 D6ED007A 		vldr.32	s15, [r6]
 806 00c6 94ED147A 		vldr.32	s14, [r4, #80]
 807 00ca F4EEC77A 		vcmpe.f32	s15, s14
 808 00ce F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 809 00d2 28DB     		blt	.L107
 810 00d4 94ED157A 		vldr.32	s14, [r4, #84]
 811 00d8 F4EEC77A 		vcmpe.f32	s15, s14
 812 00dc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 813 00e0 21D8     		bhi	.L107
 814              	.L106:
 815 00e2 69EE8A0A 		vmul.f32	s1, s19, s20
 816 00e6 2AEE480A 		vnmul.f32	s0, s20, s16
 817 00ea E8EE090A 		vfma.f32	s1, s16, s18
 818 00ee 0190     		str	r0, [sp, #4]
 819 00f0 A9EE890A 		vfma.f32	s0, s19, s18
 820 00f4 FFF7FEFF 		bl	atan2f
 821 00f8 94F86C30 		ldrb	r3, [r4, #108]	@ zero_extendqisi2
 822 00fc 0198     		ldr	r0, [sp, #4]
 823 00fe 20EE2A0A 		vmul.f32	s0, s0, s21
 824 0102 85ED000A 		vstr.32	s0, [r5]
 825 0106 002B     		cmp	r3, #0
 826 0108 4FD1     		bne	.L110
 827 010a D4ED127A 		vldr.32	s15, [r4, #72]
 828 010e B4EEE70A 		vcmpe.f32	s0, s15
 829 0112 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 830 0116 06DB     		blt	.L107
 831 0118 D4ED137A 		vldr.32	s15, [r4, #76]
 832 011c B4EEE70A 		vcmpe.f32	s0, s15
 833 0120 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 834 0124 41D9     		bls	.L110
 835              	.L107:
 836 0126 002F     		cmp	r7, #0
 837 0128 47D0     		beq	.L130
 838              	.L119:
 839 012a 0020     		movs	r0, #0
 840 012c 02B0     		add	sp, sp, #8
 841              		@ sp needed
 842 012e BDEC068B 		vldm	sp!, {d8-d10}
 843 0132 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 844              	.L105:
 845 0136 8AB9     		cbnz	r2, .L112
 846 0138 D6ED007A 		vldr.32	s15, [r6]
 847 013c 94ED147A 		vldr.32	s14, [r4, #80]
 848 0140 F1EE677A 		vneg.f32	s15, s15
 849 0144 F4EEC77A 		vcmpe.f32	s15, s14
 850 0148 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 851 014c EBDB     		blt	.L107
 852 014e 94ED157A 		vldr.32	s14, [r4, #84]
 853 0152 F4EEC77A 		vcmpe.f32	s15, s14
 854 0156 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 855 015a E4D8     		bhi	.L107
ARM GAS  /tmp/ccJ58DB9.s 			page 16


 856              	.L112:
 857 015c 6AEE690A 		vnmul.f32	s1, s20, s19
 858 0160 28EE0A0A 		vmul.f32	s0, s16, s20
 859 0164 E8EE090A 		vfma.f32	s1, s16, s18
 860 0168 0190     		str	r0, [sp, #4]
 861 016a A9EE890A 		vfma.f32	s0, s19, s18
 862 016e FFF7FEFF 		bl	atan2f
 863 0172 94F86C30 		ldrb	r3, [r4, #108]	@ zero_extendqisi2
 864 0176 0198     		ldr	r0, [sp, #4]
 865 0178 20EE2A0A 		vmul.f32	s0, s0, s21
 866 017c 85ED000A 		vstr.32	s0, [r5]
 867 0180 6BB9     		cbnz	r3, .L115
 868 0182 D4ED127A 		vldr.32	s15, [r4, #72]
 869 0186 B4EEE70A 		vcmpe.f32	s0, s15
 870 018a F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 871 018e CADB     		blt	.L107
 872 0190 D4ED137A 		vldr.32	s15, [r4, #76]
 873 0194 B4EEE70A 		vcmpe.f32	s0, s15
 874 0198 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 875 019c C3D8     		bhi	.L107
 876              	.L115:
 877 019e D6ED007A 		vldr.32	s15, [r6]
 878 01a2 F1EE677A 		vneg.f32	s15, s15
 879 01a6 C6ED007A 		vstr.32	s15, [r6]
 880              	.L110:
 881 01aa 80B1     		cbz	r0, .L121
 882 01ac 0F9B     		ldr	r3, [sp, #60]
 883 01ae 0F9A     		ldr	r2, [sp, #60]
 884 01b0 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 885 01b2 83F00103 		eor	r3, r3, #1
 886 01b6 1370     		strb	r3, [r2]
 887 01b8 53E7     		b	.L103
 888              	.L130:
 889 01ba 0120     		movs	r0, #1
 890 01bc 8045     		cmp	r8, r0
 891 01be B4D0     		beq	.L119
 892 01c0 8046     		mov	r8, r0
 893 01c2 77E7     		b	.L118
 894              	.L129:
 895 01c4 B0EE680A 		vmov.f32	s0, s17
 896 01c8 FFF7FEFF 		bl	sqrtf
 897 01cc 63E7     		b	.L104
 898              	.L121:
 899 01ce 0120     		movs	r0, #1
 900 01d0 47E7     		b	.L103
 901              	.L132:
 902 01d2 00BF     		.align	2
 903              	.L131:
 904 01d4 0AD7233C 		.word	1008981770
 905 01d8 0000C07F 		.word	2143289344
 906 01dc E02E6542 		.word	1113927392
 907              		.size	_ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb, .-_ZNK15ScaraKinematics20CalculateT
 908              		.section	.text._ZNK15ScaraKinematics21CartesianToMotorStepsEPKfS1_jjPlb,"ax",%progbits
 909              		.align	1
 910              		.p2align 2,,3
 911              		.global	_ZNK15ScaraKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 912              		.syntax unified
ARM GAS  /tmp/ccJ58DB9.s 			page 17


 913              		.thumb
 914              		.thumb_func
 915              		.fpu fpv4-sp-d16
 916              		.type	_ZNK15ScaraKinematics21CartesianToMotorStepsEPKfS1_jjPlb, %function
 917              	_ZNK15ScaraKinematics21CartesianToMotorStepsEPKfS1_jjPlb:
 918              		@ args = 12, pretend = 0, frame = 16
 919              		@ frame_needed = 0, uses_anonymous_args = 0
 920 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 921 0004 91ED007A 		vldr.32	s14, [r1]
 922 0008 D0ED237A 		vldr.32	s15, [r0, #140]
 923 000c 86B0     		sub	sp, sp, #24
 924 000e B4EE677A 		vcmp.f32	s14, s15
 925 0012 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 926 0016 0C46     		mov	r4, r1
 927 0018 0746     		mov	r7, r0
 928 001a 0D9D     		ldr	r5, [sp, #52]
 929 001c 9DF83810 		ldrb	r1, [sp, #56]	@ zero_extendqisi2
 930 0020 1646     		mov	r6, r2
 931 0022 9846     		mov	r8, r3
 932 0024 14D1     		bne	.L134
 933 0026 94ED017A 		vldr.32	s14, [r4, #4]
 934 002a D0ED247A 		vldr.32	s15, [r0, #144]
 935 002e B4EE677A 		vcmp.f32	s14, s15
 936 0032 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 937 0036 0BD1     		bne	.L134
 938 0038 D0ED257A 		vldr.32	s15, [r0, #148]
 939 003c D0F89820 		ldr	r2, [r0, #152]	@ float
 940 0040 90F89D30 		ldrb	r3, [r0, #157]	@ zero_extendqisi2
 941 0044 CDED047A 		vstr.32	s15, [sp, #16]
 942 0048 0592     		str	r2, [sp, #20]	@ float
 943 004a 80F89C30 		strb	r3, [r0, #156]
 944 004e 16E0     		b	.L135
 945              	.L134:
 946 0050 0DF10F00 		add	r0, sp, #15
 947 0054 05AB     		add	r3, sp, #20
 948 0056 CDE90030 		strd	r3, r0, [sp]
 949 005a 97F89C30 		ldrb	r3, [r7, #156]	@ zero_extendqisi2
 950 005e 8DF80F30 		strb	r3, [sp, #15]
 951 0062 0A46     		mov	r2, r1
 952 0064 04AB     		add	r3, sp, #16
 953 0066 2146     		mov	r1, r4
 954 0068 3846     		mov	r0, r7
 955 006a FFF7FEFF 		bl	_ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb
 956 006e 0028     		cmp	r0, #0
 957 0070 45D0     		beq	.L137
 958 0072 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 959 0076 DDED047A 		vldr.32	s15, [sp, #16]
 960 007a 87F89C30 		strb	r3, [r7, #156]
 961              	.L135:
 962 007e 96ED000A 		vldr.32	s0, [r6]
 963 0082 27EE800A 		vmul.f32	s0, s15, s0
 964 0086 FFF7FEFF 		bl	lrintf
 965 008a D7ED166A 		vldr.32	s13, [r7, #88]
 966 008e 9DED047A 		vldr.32	s14, [sp, #16]
 967 0092 9DED050A 		vldr.32	s0, [sp, #20]
 968 0096 D6ED017A 		vldr.32	s15, [r6, #4]
 969 009a 2860     		str	r0, [r5]
ARM GAS  /tmp/ccJ58DB9.s 			page 18


 970 009c A6EEC70A 		vfms.f32	s0, s13, s14
 971 00a0 20EE270A 		vmul.f32	s0, s0, s15
 972 00a4 FFF7FEFF 		bl	lrintf
 973 00a8 D7ED175A 		vldr.32	s11, [r7, #92]
 974 00ac 94ED020A 		vldr.32	s0, [r4, #8]
 975 00b0 9DED046A 		vldr.32	s12, [sp, #16]
 976 00b4 D7ED186A 		vldr.32	s13, [r7, #96]
 977 00b8 9DED057A 		vldr.32	s14, [sp, #20]
 978 00bc D6ED027A 		vldr.32	s15, [r6, #8]
 979 00c0 6860     		str	r0, [r5, #4]
 980 00c2 A5EEC60A 		vfms.f32	s0, s11, s12
 981 00c6 A6EEC70A 		vfms.f32	s0, s13, s14
 982 00ca 20EE270A 		vmul.f32	s0, s0, s15
 983 00ce FFF7FEFF 		bl	lrintf
 984 00d2 B8F1030F 		cmp	r8, #3
 985 00d6 A860     		str	r0, [r5, #8]
 986 00d8 10D9     		bls	.L138
 987 00da 04EB8808 		add	r8, r4, r8, lsl #2
 988 00de 0C36     		adds	r6, r6, #12
 989 00e0 0835     		adds	r5, r5, #8
 990 00e2 0C34     		adds	r4, r4, #12
 991              	.L139:
 992 00e4 B4EC010A 		vldmia.32	r4!, {s0}
 993 00e8 F6EC017A 		vldmia.32	r6!, {s15}
 994 00ec 20EE270A 		vmul.f32	s0, s0, s15
 995 00f0 FFF7FEFF 		bl	lrintf
 996 00f4 4445     		cmp	r4, r8
 997 00f6 45F8040F 		str	r0, [r5, #4]!
 998 00fa F3D1     		bne	.L139
 999              	.L138:
 1000 00fc 0120     		movs	r0, #1
 1001              	.L137:
 1002 00fe 06B0     		add	sp, sp, #24
 1003              		@ sp needed
 1004 0100 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1005              		.size	_ZNK15ScaraKinematics21CartesianToMotorStepsEPKfS1_jjPlb, .-_ZNK15ScaraKinematics21Cartesian
 1006              		.section	.text._ZNK15ScaraKinematics11IsReachableEffb,"ax",%progbits
 1007              		.align	1
 1008              		.p2align 2,,3
 1009              		.global	_ZNK15ScaraKinematics11IsReachableEffb
 1010              		.syntax unified
 1011              		.thumb
 1012              		.thumb_func
 1013              		.fpu fpv4-sp-d16
 1014              		.type	_ZNK15ScaraKinematics11IsReachableEffb, %function
 1015              	_ZNK15ScaraKinematics11IsReachableEffb:
 1016              		@ args = 0, pretend = 0, frame = 24
 1017              		@ frame_needed = 0, uses_anonymous_args = 0
 1018 0000 30B5     		push	{r4, r5, lr}
 1019 0002 2DED028B 		vpush.64	{d8}
 1020 0006 89B0     		sub	sp, sp, #36
 1021 0008 0D46     		mov	r5, r1
 1022 000a 0091     		str	r1, [sp]
 1023 000c 0323     		movs	r3, #3
 1024 000e 06A9     		add	r1, sp, #24
 1025 0010 0222     		movs	r2, #2
 1026 0012 F0EE408A 		vmov.f32	s17, s0
ARM GAS  /tmp/ccJ58DB9.s 			page 19


 1027 0016 B0EE608A 		vmov.f32	s16, s1
 1028 001a 8DED060A 		vstr.32	s0, [sp, #24]
 1029 001e CDED070A 		vstr.32	s1, [sp, #28]
 1030 0022 0446     		mov	r4, r0
 1031 0024 FFF7FEFF 		bl	_ZNK10Kinematics13LimitPositionEPfjmb
 1032 0028 20B1     		cbz	r0, .L143
 1033              	.L145:
 1034 002a 0020     		movs	r0, #0
 1035 002c 09B0     		add	sp, sp, #36
 1036              		@ sp needed
 1037 002e BDEC028B 		vldm	sp!, {d8}
 1038 0032 30BD     		pop	{r4, r5, pc}
 1039              	.L143:
 1040 0034 0DF10F00 		add	r0, sp, #15
 1041 0038 05AB     		add	r3, sp, #20
 1042 003a CDE90030 		strd	r3, r0, [sp]
 1043 003e 94F89C30 		ldrb	r3, [r4, #156]	@ zero_extendqisi2
 1044 0042 8DF80F30 		strb	r3, [sp, #15]
 1045 0046 2A46     		mov	r2, r5
 1046 0048 06A9     		add	r1, sp, #24
 1047 004a 04AB     		add	r3, sp, #16
 1048 004c 2046     		mov	r0, r4
 1049 004e FFF7FEFF 		bl	_ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb
 1050 0052 0028     		cmp	r0, #0
 1051 0054 E9D0     		beq	.L145
 1052 0056 0499     		ldr	r1, [sp, #16]	@ float
 1053 0058 059A     		ldr	r2, [sp, #20]	@ float
 1054 005a 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 1055 005e C4ED238A 		vstr.32	s17, [r4, #140]
 1056 0062 0120     		movs	r0, #1
 1057 0064 84ED248A 		vstr.32	s16, [r4, #144]
 1058 0068 C4F89410 		str	r1, [r4, #148]	@ float
 1059 006c C4F89820 		str	r2, [r4, #152]	@ float
 1060 0070 84F89D30 		strb	r3, [r4, #157]
 1061 0074 09B0     		add	sp, sp, #36
 1062              		@ sp needed
 1063 0076 BDEC028B 		vldm	sp!, {d8}
 1064 007a 30BD     		pop	{r4, r5, pc}
 1065              		.size	_ZNK15ScaraKinematics11IsReachableEffb, .-_ZNK15ScaraKinematics11IsReachableEffb
 1066              		.section	.text._ZNK15ScaraKinematics13LimitPositionEPfjmb,"ax",%progbits
 1067              		.align	1
 1068              		.p2align 2,,3
 1069              		.global	_ZNK15ScaraKinematics13LimitPositionEPfjmb
 1070              		.syntax unified
 1071              		.thumb
 1072              		.thumb_func
 1073              		.fpu fpv4-sp-d16
 1074              		.type	_ZNK15ScaraKinematics13LimitPositionEPfjmb, %function
 1075              	_ZNK15ScaraKinematics13LimitPositionEPfjmb:
 1076              		@ args = 4, pretend = 0, frame = 16
 1077              		@ frame_needed = 0, uses_anonymous_args = 0
 1078 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1079 0004 2DED068B 		vpush.64	{d8, d9, d10}
 1080 0008 87B0     		sub	sp, sp, #28
 1081 000a 0446     		mov	r4, r0
 1082 000c 9DF85090 		ldrb	r9, [sp, #80]	@ zero_extendqisi2
 1083 0010 CDF80090 		str	r9, [sp]
ARM GAS  /tmp/ccJ58DB9.s 			page 20


 1084 0014 0D46     		mov	r5, r1
 1085 0016 FFF7FEFF 		bl	_ZNK10Kinematics13LimitPositionEPfjmb
 1086 001a 0DF10F07 		add	r7, sp, #15
 1087 001e 05AE     		add	r6, sp, #20
 1088 0020 94F89CC0 		ldrb	ip, [r4, #156]	@ zero_extendqisi2
 1089 0024 0197     		str	r7, [sp, #4]
 1090 0026 8046     		mov	r8, r0
 1091 0028 4A46     		mov	r2, r9
 1092 002a 2946     		mov	r1, r5
 1093 002c 2046     		mov	r0, r4
 1094 002e 0096     		str	r6, [sp]
 1095 0030 04AB     		add	r3, sp, #16
 1096 0032 8DF80FC0 		strb	ip, [sp, #15]
 1097 0036 FFF7FEFF 		bl	_ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb
 1098 003a 0028     		cmp	r0, #0
 1099 003c 40F09680 		bne	.L176
 1100 0040 DDED047A 		vldr.32	s15, [sp, #16]
 1101 0044 F4EE677A 		vcmp.f32	s15, s15
 1102 0048 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1103 004c 80F1AF80 		bvs	.L177
 1104              	.L153:
 1105 0050 CDE90067 		strd	r6, r7, [sp]
 1106 0054 04AB     		add	r3, sp, #16
 1107 0056 0122     		movs	r2, #1
 1108 0058 2946     		mov	r1, r5
 1109 005a 2046     		mov	r0, r4
 1110 005c FFF7FEFF 		bl	_ZNK15ScaraKinematics20CalculateThetaAndPsiEPKfbRfS2_Rb
 1111 0060 8046     		mov	r8, r0
 1112 0062 0028     		cmp	r0, #0
 1113 0064 7CD1     		bne	.L152
 1114 0066 DDED047A 		vldr.32	s15, [sp, #16]
 1115 006a F4EE677A 		vcmp.f32	s15, s15
 1116 006e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1117 0072 80F1D880 		bvs	.L165
 1118 0076 94ED137A 		vldr.32	s14, [r4, #76]
 1119 007a D4ED128A 		vldr.32	s17, [r4, #72]
 1120 007e F4EEC77A 		vcmpe.f32	s15, s14
 1121 0082 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1122 0086 40F18780 		bpl	.L178
 1123              	.L158:
 1124 008a F4EE678A 		vcmp.f32	s17, s15
 1125 008e F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1126 0092 48BF     		it	mi
 1127 0094 F0EE678A 		vmovmi.f32	s17, s15
 1128              	.L159:
 1129 0098 9DED057A 		vldr.32	s14, [sp, #20]
 1130 009c C4ED258A 		vstr.32	s17, [r4, #148]
 1131 00a0 B4EE477A 		vcmp.f32	s14, s14
 1132 00a4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1133 00a8 94ED148A 		vldr.32	s16, [r4, #80]
 1134 00ac D4ED157A 		vldr.32	s15, [r4, #84]
 1135 00b0 80F1B680 		bvs	.L167
 1136 00b4 B4EEE77A 		vcmpe.f32	s14, s15
 1137 00b8 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1138 00bc 74D4     		bmi	.L168
 1139 00be F4EE677A 		vcmp.f32	s15, s15
 1140 00c2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  /tmp/ccJ58DB9.s 			page 21


 1141 00c6 80F1BC80 		bvs	.L179
 1142              	.L162:
 1143 00ca B4EE678A 		vcmp.f32	s16, s15
 1144 00ce F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1145 00d2 48BF     		it	mi
 1146 00d4 B0EE678A 		vmovmi.f32	s16, s15
 1147              	.L161:
 1148 00d8 DFED5B9A 		vldr.32	s19, .L181
 1149 00dc 84ED268A 		vstr.32	s16, [r4, #152]
 1150 00e0 28EE299A 		vmul.f32	s18, s16, s19
 1151 00e4 38EE288A 		vadd.f32	s16, s16, s17
 1152 00e8 B0EE490A 		vmov.f32	s0, s18
 1153 00ec FFF7FEFF 		bl	cosf
 1154 00f0 28EE298A 		vmul.f32	s16, s16, s19
 1155 00f4 B0EE40AA 		vmov.f32	s20, s0
 1156 00f8 B0EE480A 		vmov.f32	s0, s16
 1157 00fc FFF7FEFF 		bl	cosf
 1158 0100 D4ED117A 		vldr.32	s15, [r4, #68]
 1159 0104 D4ED106A 		vldr.32	s13, [r4, #64]
 1160 0108 94ED197A 		vldr.32	s14, [r4, #100]
 1161 010c 60EE277A 		vmul.f32	s15, s0, s15
 1162 0110 B0EE490A 		vmov.f32	s0, s18
 1163 0114 EAEE267A 		vfma.f32	s15, s20, s13
 1164 0118 4FF00108 		mov	r8, #1
 1165 011c 77EEC77A 		vsub.f32	s15, s15, s14
 1166 0120 C5ED007A 		vstr.32	s15, [r5]
 1167 0124 C4ED237A 		vstr.32	s15, [r4, #140]
 1168 0128 FFF7FEFF 		bl	sinf
 1169 012c F0EE408A 		vmov.f32	s17, s0
 1170 0130 B0EE480A 		vmov.f32	s0, s16
 1171 0134 FFF7FEFF 		bl	sinf
 1172 0138 D4ED117A 		vldr.32	s15, [r4, #68]
 1173 013c D4ED106A 		vldr.32	s13, [r4, #64]
 1174 0140 94ED1A7A 		vldr.32	s14, [r4, #104]
 1175 0144 94F89C30 		ldrb	r3, [r4, #156]	@ zero_extendqisi2
 1176 0148 20EE270A 		vmul.f32	s0, s0, s15
 1177 014c A8EEA60A 		vfma.f32	s0, s17, s13
 1178 0150 30EE470A 		vsub.f32	s0, s0, s14
 1179 0154 85ED010A 		vstr.32	s0, [r5, #4]
 1180 0158 84ED240A 		vstr.32	s0, [r4, #144]
 1181 015c 84F89D30 		strb	r3, [r4, #157]
 1182              	.L152:
 1183 0160 4046     		mov	r0, r8
 1184 0162 07B0     		add	sp, sp, #28
 1185              		@ sp needed
 1186 0164 BDEC068B 		vldm	sp!, {d8-d10}
 1187 0168 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1188              	.L176:
 1189 016c 2B68     		ldr	r3, [r5]	@ float
 1190 016e C4F88C30 		str	r3, [r4, #140]	@ float
 1191 0172 6868     		ldr	r0, [r5, #4]	@ float
 1192 0174 0499     		ldr	r1, [sp, #16]	@ float
 1193 0176 059A     		ldr	r2, [sp, #20]	@ float
 1194 0178 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 1195 017c C4F89000 		str	r0, [r4, #144]	@ float
 1196 0180 4046     		mov	r0, r8
 1197 0182 C4F89410 		str	r1, [r4, #148]	@ float
ARM GAS  /tmp/ccJ58DB9.s 			page 22


 1198 0186 C4F89820 		str	r2, [r4, #152]	@ float
 1199 018a 84F89D30 		strb	r3, [r4, #157]
 1200 018e 07B0     		add	sp, sp, #28
 1201              		@ sp needed
 1202 0190 BDEC068B 		vldm	sp!, {d8-d10}
 1203 0194 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1204              	.L178:
 1205 0198 B4EE477A 		vcmp.f32	s14, s14
 1206 019c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1207 01a0 3BD6     		bvs	.L166
 1208 01a2 F0EE477A 		vmov.f32	s15, s14
 1209 01a6 70E7     		b	.L158
 1210              	.L168:
 1211 01a8 F0EE477A 		vmov.f32	s15, s14
 1212 01ac 8DE7     		b	.L162
 1213              	.L177:
 1214 01ae 95ED018A 		vldr.32	s16, [r5, #4]
 1215 01b2 D4ED1A7A 		vldr.32	s15, [r4, #104]
 1216 01b6 94ED197A 		vldr.32	s14, [r4, #100]
 1217 01ba D5ED008A 		vldr.32	s17, [r5]
 1218 01be 38EE278A 		vadd.f32	s16, s16, s15
 1219 01c2 77EE288A 		vadd.f32	s17, s14, s17
 1220 01c6 28EE080A 		vmul.f32	s0, s16, s16
 1221 01ca A8EEA80A 		vfma.f32	s0, s17, s17
 1222 01ce B5EE400A 		vcmp.f32	s0, #0
 1223 01d2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1224 01d6 B1EEC09A 		vsqrt.f32	s18, s0
 1225 01da 2DD4     		bmi	.L180
 1226              	.L154:
 1227 01dc D4ED1C7A 		vldr.32	s15, [r4, #112]
 1228 01e0 F4EEC97A 		vcmpe.f32	s15, s18
 1229 01e4 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1230 01e8 20DD     		ble	.L173
 1231 01ea F7EE006A 		vmov.f32	s13, #1.0e+0
 1232 01ee B4EEE69A 		vcmpe.f32	s18, s13
 1233 01f2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1234 01f6 1CD4     		bmi	.L164
 1235              	.L175:
 1236 01f8 C7EE896A 		vdiv.f32	s13, s15, s18
 1237 01fc 66EEA87A 		vmul.f32	s15, s13, s17
 1238 0200 26EE888A 		vmul.f32	s16, s13, s16
 1239              	.L157:
 1240 0204 77EEC77A 		vsub.f32	s15, s15, s14
 1241 0208 C5ED007A 		vstr.32	s15, [r5]
 1242 020c D4ED1A7A 		vldr.32	s15, [r4, #104]
 1243 0210 38EE678A 		vsub.f32	s16, s16, s15
 1244 0214 85ED018A 		vstr.32	s16, [r5, #4]
 1245 0218 1AE7     		b	.L153
 1246              	.L166:
 1247 021a F0EE478A 		vmov.f32	s17, s14
 1248 021e 3BE7     		b	.L159
 1249              	.L167:
 1250 0220 B0EE478A 		vmov.f32	s16, s14
 1251 0224 58E7     		b	.L161
 1252              	.L165:
 1253 0226 4FF00108 		mov	r8, #1
 1254 022a 99E7     		b	.L152
ARM GAS  /tmp/ccJ58DB9.s 			page 23


 1255              	.L173:
 1256 022c D4ED1E7A 		vldr.32	s15, [r4, #120]
 1257 0230 E2E7     		b	.L175
 1258              	.L164:
 1259 0232 9FED068A 		vldr.32	s16, .L181+4
 1260 0236 E5E7     		b	.L157
 1261              	.L180:
 1262 0238 FFF7FEFF 		bl	sqrtf
 1263 023c 94ED197A 		vldr.32	s14, [r4, #100]
 1264 0240 CCE7     		b	.L154
 1265              	.L179:
 1266 0242 B0EE678A 		vmov.f32	s16, s15
 1267 0246 47E7     		b	.L161
 1268              	.L182:
 1269              		.align	2
 1270              	.L181:
 1271 0248 35FA8E3C 		.word	1016003125
 1272 024c 00000000 		.word	0
 1273              		.size	_ZNK15ScaraKinematics13LimitPositionEPfjmb, .-_ZNK15ScaraKinematics13LimitPositionEPfjmb
 1274              		.section	.text._ZN15ScaraKinematics6RecalcEv,"ax",%progbits
 1275              		.align	1
 1276              		.p2align 2,,3
 1277              		.global	_ZN15ScaraKinematics6RecalcEv
 1278              		.syntax unified
 1279              		.thumb
 1280              		.thumb_func
 1281              		.fpu fpv4-sp-d16
 1282              		.type	_ZN15ScaraKinematics6RecalcEv, %function
 1283              	_ZN15ScaraKinematics6RecalcEv:
 1284              		@ args = 0, pretend = 0, frame = 8
 1285              		@ frame_needed = 0, uses_anonymous_args = 0
 1286 0000 10B5     		push	{r4, lr}
 1287 0002 90ED100A 		vldr.32	s0, [r0, #64]
 1288 0006 2DED068B 		vpush.64	{d8, d9, d10}
 1289 000a 90ED118A 		vldr.32	s16, [r0, #68]
 1290 000e 90ED14AA 		vldr.32	s20, [r0, #80]
 1291 0012 DFED61AA 		vldr.32	s21, .L203
 1292 0016 60EE088A 		vmul.f32	s17, s0, s16
 1293 001a 60EE007A 		vmul.f32	s15, s0, s0
 1294 001e 28EE088A 		vmul.f32	s16, s16, s16
 1295 0022 78EEA88A 		vadd.f32	s17, s17, s17
 1296 0026 80ED218A 		vstr.32	s16, [r0, #132]
 1297 002a 82B0     		sub	sp, sp, #8
 1298 002c C0ED228A 		vstr.32	s17, [r0, #136]
 1299 0030 C0ED207A 		vstr.32	s15, [r0, #128]
 1300 0034 2AEE2A0A 		vmul.f32	s0, s20, s21
 1301 0038 0446     		mov	r4, r0
 1302 003a 37EE888A 		vadd.f32	s16, s15, s16
 1303 003e FFF7FEFF 		bl	cosf
 1304 0042 D4ED159A 		vldr.32	s19, [r4, #84]
 1305 0046 B0EE409A 		vmov.f32	s18, s0
 1306 004a 29EEAA0A 		vmul.f32	s0, s19, s21
 1307 004e FFF7FEFF 		bl	cosf
 1308 0052 B4EE499A 		vcmp.f32	s18, s18
 1309 0056 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1310 005a 80F18F80 		bvs	.L195
 1311 005e B4EE409A 		vcmp.f32	s18, s0
ARM GAS  /tmp/ccJ58DB9.s 			page 24


 1312 0062 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1313 0066 C8BF     		it	gt
 1314 0068 B0EE490A 		vmovgt.f32	s0, s18
 1315              	.L184:
 1316 006c A8EEC08A 		vfms.f32	s16, s17, s0
 1317 0070 B0EE480A 		vmov.f32	s0, s16
 1318 0074 B5EE400A 		vcmp.f32	s0, #0
 1319 0078 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1320 007c B1EEC08A 		vsqrt.f32	s16, s0
 1321 0080 00F18280 		bmi	.L201
 1322              	.L186:
 1323 0084 D4ED127A 		vldr.32	s15, [r4, #72]
 1324 0088 94ED137A 		vldr.32	s14, [r4, #76]
 1325 008c DFED436A 		vldr.32	s13, .L203+4
 1326 0090 9FED436A 		vldr.32	s12, .L203+8
 1327 0094 37EE677A 		vsub.f32	s14, s14, s15
 1328 0098 79EECA7A 		vsub.f32	s15, s19, s20
 1329 009c B4EEE67A 		vcmpe.f32	s14, s13
 1330 00a0 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1331 00a4 F4EEE67A 		vcmpe.f32	s15, s13
 1332 00a8 CCBF     		ite	gt
 1333 00aa 0122     		movgt	r2, #1
 1334 00ac 0022     		movle	r2, #0
 1335 00ae 28EE068A 		vmul.f32	s16, s16, s12
 1336 00b2 F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1337 00b6 CCBF     		ite	gt
 1338 00b8 0123     		movgt	r3, #1
 1339 00ba 0023     		movle	r3, #0
 1340 00bc 84F86C20 		strb	r2, [r4, #108]
 1341 00c0 84F86D30 		strb	r3, [r4, #109]
 1342 00c4 84ED1C8A 		vstr.32	s16, [r4, #112]
 1343 00c8 3BDC     		bgt	.L187
 1344 00ca B5EEC0AA 		vcmpe.f32	s20, #0
 1345 00ce F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1346 00d2 31D9     		bls	.L202
 1347              	.L188:
 1348 00d4 F0EECA7A 		vabs.f32	s15, s20
 1349 00d8 F4EE677A 		vcmp.f32	s15, s15
 1350 00dc F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1351 00e0 B0EEE97A 		vabs.f32	s14, s19
 1352 00e4 4DD6     		bvs	.L196
 1353 00e6 F4EE477A 		vcmp.f32	s15, s14
 1354 00ea F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1355 00ee 48BF     		it	mi
 1356 00f0 F0EE4A9A 		vmovmi.f32	s19, s20
 1357              	.L192:
 1358 00f4 9FED280A 		vldr.32	s0, .L203
 1359 00f8 29EE800A 		vmul.f32	s0, s19, s0
 1360 00fc FFF7FEFF 		bl	cosf
 1361 0100 D4ED207A 		vldr.32	s15, [r4, #128]
 1362 0104 D4ED216A 		vldr.32	s13, [r4, #132]
 1363 0108 94ED227A 		vldr.32	s14, [r4, #136]
 1364 010c 77EEA67A 		vadd.f32	s15, s15, s13
 1365 0110 E7EE007A 		vfma.f32	s15, s14, s0
 1366 0114 B0EE670A 		vmov.f32	s0, s15
 1367 0118 B5EE400A 		vcmp.f32	s0, #0
 1368 011c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
ARM GAS  /tmp/ccJ58DB9.s 			page 25


 1369 0120 F1EEC07A 		vsqrt.f32	s15, s0
 1370 0124 13D5     		bpl	.L191
 1371 0126 CDED017A 		vstr.32	s15, [sp, #4]	@ int
 1372 012a FFF7FEFF 		bl	sqrtf
 1373 012e 94ED1C8A 		vldr.32	s16, [r4, #112]
 1374 0132 DDED017A 		vldr.32	s15, [sp, #4]	@ int
 1375 0136 0AE0     		b	.L191
 1376              	.L202:
 1377 0138 F5EEC09A 		vcmpe.f32	s19, #0
 1378 013c F1EE10FA 		vmrs	APSR_nzcv, FPSCR
 1379 0140 C8DB     		blt	.L188
 1380              	.L187:
 1381 0142 D4ED107A 		vldr.32	s15, [r4, #64]
 1382 0146 94ED117A 		vldr.32	s14, [r4, #68]
 1383 014a 77EE877A 		vadd.f32	s15, s15, s14
 1384              	.L191:
 1385 014e 9FED157A 		vldr.32	s14, .L203+12
 1386 0152 154B     		ldr	r3, .L203+16
 1387 0154 C4F89030 		str	r3, [r4, #144]	@ float
 1388 0158 67EE877A 		vmul.f32	s15, s15, s14
 1389 015c 28EE088A 		vmul.f32	s16, s16, s16
 1390 0160 27EEA77A 		vmul.f32	s14, s15, s15
 1391 0164 84ED1D8A 		vstr.32	s16, [r4, #116]
 1392 0168 C4ED1E7A 		vstr.32	s15, [r4, #120]
 1393 016c 84ED1F7A 		vstr.32	s14, [r4, #124]
 1394 0170 C4F88C30 		str	r3, [r4, #140]	@ float
 1395 0174 02B0     		add	sp, sp, #8
 1396              		@ sp needed
 1397 0176 BDEC068B 		vldm	sp!, {d8-d10}
 1398 017a 10BD     		pop	{r4, pc}
 1399              	.L195:
 1400 017c B0EE490A 		vmov.f32	s0, s18
 1401 0180 74E7     		b	.L184
 1402              	.L196:
 1403 0182 F0EE4A9A 		vmov.f32	s19, s20
 1404 0186 B5E7     		b	.L192
 1405              	.L201:
 1406 0188 FFF7FEFF 		bl	sqrtf
 1407 018c D4ED159A 		vldr.32	s19, [r4, #84]
 1408 0190 94ED14AA 		vldr.32	s20, [r4, #80]
 1409 0194 76E7     		b	.L186
 1410              	.L204:
 1411 0196 00BF     		.align	2
 1412              	.L203:
 1413 0198 35FA8E3C 		.word	1016003125
 1414 019c 0000B443 		.word	1135869952
 1415 01a0 D7A3803F 		.word	1065395159
 1416 01a4 52B87E3F 		.word	1065269330
 1417 01a8 0000C07F 		.word	2143289344
 1418              		.size	_ZN15ScaraKinematics6RecalcEv, .-_ZN15ScaraKinematics6RecalcEv
 1419              		.section	.text._ZN15ScaraKinematicsC2Ev,"ax",%progbits
 1420              		.align	1
 1421              		.p2align 2,,3
 1422              		.global	_ZN15ScaraKinematicsC2Ev
 1423              		.syntax unified
 1424              		.thumb
 1425              		.thumb_func
ARM GAS  /tmp/ccJ58DB9.s 			page 26


 1426              		.fpu fpv4-sp-d16
 1427              		.type	_ZN15ScaraKinematicsC2Ev, %function
 1428              	_ZN15ScaraKinematicsC2Ev:
 1429              		@ args = 0, pretend = 0, frame = 0
 1430              		@ frame_needed = 0, uses_anonymous_args = 0
 1431 0000 38B5     		push	{r3, r4, r5, lr}
 1432 0002 2DED028B 		vpush.64	{d8}
 1433 0006 9FED138A 		vldr.32	s16, .L207
 1434 000a DFED130A 		vldr.32	s1, .L207+4
 1435 000e 134D     		ldr	r5, .L207+8
 1436 0010 0446     		mov	r4, r0
 1437 0012 B0EE480A 		vmov.f32	s0, s16
 1438 0016 0122     		movs	r2, #1
 1439 0018 0421     		movs	r1, #4
 1440 001a FFF7FEFF 		bl	_ZN20ZLeadscrewKinematicsC2E14KinematicsTypeffb
 1441 001e 104B     		ldr	r3, .L207+12
 1442 0020 1048     		ldr	r0, .L207+16
 1443 0022 1149     		ldr	r1, .L207+20
 1444 0024 114A     		ldr	r2, .L207+24
 1445 0026 2360     		str	r3, [r4]
 1446 0028 0023     		movs	r3, #0
 1447 002a 84ED108A 		vstr.32	s16, [r4, #64]
 1448 002e 84ED118A 		vstr.32	s16, [r4, #68]
 1449 0032 E064     		str	r0, [r4, #76]	@ float
 1450 0034 A564     		str	r5, [r4, #72]	@ float
 1451 0036 2046     		mov	r0, r4
 1452 0038 2165     		str	r1, [r4, #80]	@ float
 1453 003a 6265     		str	r2, [r4, #84]	@ float
 1454 003c 6366     		str	r3, [r4, #100]	@ float
 1455 003e A366     		str	r3, [r4, #104]	@ float
 1456 0040 2366     		str	r3, [r4, #96]	@ float
 1457 0042 E365     		str	r3, [r4, #92]	@ float
 1458 0044 A365     		str	r3, [r4, #88]	@ float
 1459 0046 FFF7FEFF 		bl	_ZN15ScaraKinematics6RecalcEv
 1460 004a BDEC028B 		vldm	sp!, {d8}
 1461 004e 2046     		mov	r0, r4
 1462 0050 38BD     		pop	{r3, r4, r5, pc}
 1463              	.L208:
 1464 0052 00BF     		.align	2
 1465              	.L207:
 1466 0054 0000C842 		.word	1120403456
 1467 0058 CDCC4C3E 		.word	1045220557
 1468 005c 0000B4C2 		.word	-1028390912
 1469 0060 08000000 		.word	.LANCHOR0+8
 1470 0064 0000B442 		.word	1119092736
 1471 0068 000007C3 		.word	-1022951424
 1472 006c 00000743 		.word	1124532224
 1473              		.size	_ZN15ScaraKinematicsC2Ev, .-_ZN15ScaraKinematicsC2Ev
 1474              		.global	_ZN15ScaraKinematicsC1Ev
 1475              		.thumb_set _ZN15ScaraKinematicsC1Ev,_ZN15ScaraKinematicsC2Ev
 1476              		.global	__aeabi_f2d
 1477              		.section	.text._ZN15ScaraKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb,"ax",%progbits
 1478              		.align	1
 1479              		.p2align 2,,3
 1480              		.global	_ZN15ScaraKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1481              		.syntax unified
 1482              		.thumb
ARM GAS  /tmp/ccJ58DB9.s 			page 27


 1483              		.thumb_func
 1484              		.fpu fpv4-sp-d16
 1485              		.type	_ZN15ScaraKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, %function
 1486              	_ZN15ScaraKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb:
 1487              		@ args = 4, pretend = 0, frame = 16
 1488              		@ frame_needed = 0, uses_anonymous_args = 0
 1489 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1490 0004 40F29D27 		movw	r7, #669
 1491 0008 B942     		cmp	r1, r7
 1492 000a A0B0     		sub	sp, sp, #128
 1493 000c 06D0     		beq	.L221
 1494 000e 289C     		ldr	r4, [sp, #160]
 1495 0010 0094     		str	r4, [sp]
 1496 0012 FFF7FEFF 		bl	_ZN20ZLeadscrewKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1497              	.L218:
 1498 0016 20B0     		add	sp, sp, #128
 1499              		@ sp needed
 1500 0018 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1501              	.L221:
 1502 001c 1646     		mov	r6, r2
 1503 001e 0446     		mov	r4, r0
 1504 0020 0027     		movs	r7, #0
 1505 0022 00F14002 		add	r2, r0, #64
 1506 0026 1D46     		mov	r5, r3
 1507 0028 5021     		movs	r1, #80
 1508 002a 0DF17E03 		add	r3, sp, #126
 1509 002e 3046     		mov	r0, r6
 1510 0030 8DF87E70 		strb	r7, [sp, #126]
 1511 0034 8DF87F70 		strb	r7, [sp, #127]
 1512 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1513 003c 0DF17E03 		add	r3, sp, #126
 1514 0040 04F14402 		add	r2, r4, #68
 1515 0044 4421     		movs	r1, #68
 1516 0046 3046     		mov	r0, r6
 1517 0048 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1518 004c 0DF17F03 		add	r3, sp, #127
 1519 0050 221D     		adds	r2, r4, #4
 1520 0052 5321     		movs	r1, #83
 1521 0054 3046     		mov	r0, r6
 1522 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1523 005a 0DF17F03 		add	r3, sp, #127
 1524 005e 04F10802 		add	r2, r4, #8
 1525 0062 5421     		movs	r1, #84
 1526 0064 3046     		mov	r0, r6
 1527 0066 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1528 006a 0DF17E03 		add	r3, sp, #126
 1529 006e 04F16402 		add	r2, r4, #100
 1530 0072 5821     		movs	r1, #88
 1531 0074 3046     		mov	r0, r6
 1532 0076 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1533 007a 0DF17E03 		add	r3, sp, #126
 1534 007e 04F16802 		add	r2, r4, #104
 1535 0082 5921     		movs	r1, #89
 1536 0084 3046     		mov	r0, r6
 1537 0086 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1538 008a 0DF17E03 		add	r3, sp, #126
 1539 008e CDE90053 		strd	r5, r3, [sp]
ARM GAS  /tmp/ccJ58DB9.s 			page 28


 1540 0092 0297     		str	r7, [sp, #8]
 1541 0094 04F14803 		add	r3, r4, #72
 1542 0098 0222     		movs	r2, #2
 1543 009a 4121     		movs	r1, #65
 1544 009c 3046     		mov	r0, r6
 1545 009e FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1546 00a2 28B1     		cbz	r0, .L211
 1547              	.L213:
 1548 00a4 289B     		ldr	r3, [sp, #160]
 1549 00a6 0120     		movs	r0, #1
 1550 00a8 1870     		strb	r0, [r3]
 1551 00aa 20B0     		add	sp, sp, #128
 1552              		@ sp needed
 1553 00ac BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1554              	.L211:
 1555 00b0 0DF17E03 		add	r3, sp, #126
 1556 00b4 0290     		str	r0, [sp, #8]
 1557 00b6 CDE90053 		strd	r5, r3, [sp]
 1558 00ba 0222     		movs	r2, #2
 1559 00bc 04F15003 		add	r3, r4, #80
 1560 00c0 4221     		movs	r1, #66
 1561 00c2 3046     		mov	r0, r6
 1562 00c4 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1563 00c8 0028     		cmp	r0, #0
 1564 00ca EBD1     		bne	.L213
 1565 00cc 0DF17E03 		add	r3, sp, #126
 1566 00d0 0290     		str	r0, [sp, #8]
 1567 00d2 CDE90053 		strd	r5, r3, [sp]
 1568 00d6 0322     		movs	r2, #3
 1569 00d8 04F15803 		add	r3, r4, #88
 1570 00dc 4321     		movs	r1, #67
 1571 00de 3046     		mov	r0, r6
 1572 00e0 FFF7FEFF 		bl	_ZN11GCodeBuffer16TryGetFloatArrayEcjPfRK9StringRefRbb
 1573 00e4 0028     		cmp	r0, #0
 1574 00e6 DDD1     		bne	.L213
 1575 00e8 9DF87E30 		ldrb	r3, [sp, #126]	@ zero_extendqisi2
 1576 00ec 13B9     		cbnz	r3, .L214
 1577 00ee 9DF87F30 		ldrb	r3, [sp, #127]	@ zero_extendqisi2
 1578 00f2 2BB1     		cbz	r3, .L215
 1579              	.L214:
 1580 00f4 2046     		mov	r0, r4
 1581 00f6 FFF7FEFF 		bl	_ZN15ScaraKinematics6RecalcEv
 1582              	.L216:
 1583 00fa 9DF87E00 		ldrb	r0, [sp, #126]	@ zero_extendqisi2
 1584 00fe 8AE7     		b	.L218
 1585              	.L215:
 1586 0100 3046     		mov	r0, r6
 1587 0102 4B21     		movs	r1, #75
 1588 0104 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1589 0108 0028     		cmp	r0, #0
 1590 010a F6D1     		bne	.L216
 1591 010c 206C     		ldr	r0, [r4, #64]	@ float
 1592 010e DFF8BCA0 		ldr	r10, .L222+8
 1593 0112 FFF7FEFF 		bl	__aeabi_f2d
 1594 0116 0246     		mov	r2, r0
 1595 0118 0B46     		mov	r3, r1
 1596 011a A06C     		ldr	r0, [r4, #72]	@ float
ARM GAS  /tmp/ccJ58DB9.s 			page 29


 1597 011c CDE91C23 		strd	r2, [sp, #112]
 1598 0120 FFF7FEFF 		bl	__aeabi_f2d
 1599 0124 8046     		mov	r8, r0
 1600 0126 E06C     		ldr	r0, [r4, #76]	@ float
 1601 0128 8946     		mov	r9, r1
 1602 012a FFF7FEFF 		bl	__aeabi_f2d
 1603 012e 94F86CC0 		ldrb	ip, [r4, #108]	@ zero_extendqisi2
 1604 0132 0F46     		mov	r7, r1
 1605 0134 2349     		ldr	r1, .L222
 1606 0136 0646     		mov	r6, r0
 1607 0138 A068     		ldr	r0, [r4, #8]	@ float
 1608 013a BCF1000F 		cmp	ip, #0
 1609 013e 08BF     		it	eq
 1610 0140 8A46     		moveq	r10, r1
 1611 0142 FFF7FEFF 		bl	__aeabi_f2d
 1612 0146 D4ED017A 		vldr.32	s15, [r4, #4]
 1613 014a CDE91A01 		strd	r0, [sp, #104]
 1614 014e FDEEE77A 		vcvt.s32.f32	s15, s15
 1615 0152 A06E     		ldr	r0, [r4, #104]	@ float
 1616 0154 CDED187A 		vstr.32	s15, [sp, #96]	@ int
 1617 0158 FFF7FEFF 		bl	__aeabi_f2d
 1618 015c CDE91601 		strd	r0, [sp, #88]
 1619 0160 606E     		ldr	r0, [r4, #100]	@ float
 1620 0162 FFF7FEFF 		bl	__aeabi_f2d
 1621 0166 CDE91401 		strd	r0, [sp, #80]
 1622 016a 206E     		ldr	r0, [r4, #96]	@ float
 1623 016c FFF7FEFF 		bl	__aeabi_f2d
 1624 0170 CDE91201 		strd	r0, [sp, #72]
 1625 0174 E06D     		ldr	r0, [r4, #92]	@ float
 1626 0176 FFF7FEFF 		bl	__aeabi_f2d
 1627 017a CDE91001 		strd	r0, [sp, #64]
 1628 017e A06D     		ldr	r0, [r4, #88]	@ float
 1629 0180 FFF7FEFF 		bl	__aeabi_f2d
 1630 0184 CDE90E01 		strd	r0, [sp, #56]
 1631 0188 606D     		ldr	r0, [r4, #84]	@ float
 1632 018a CDF830A0 		str	r10, [sp, #48]
 1633 018e FFF7FEFF 		bl	__aeabi_f2d
 1634 0192 CDE90A01 		strd	r0, [sp, #40]
 1635 0196 206D     		ldr	r0, [r4, #80]	@ float
 1636 0198 FFF7FEFF 		bl	__aeabi_f2d
 1637 019c CDE90801 		strd	r0, [sp, #32]
 1638 01a0 606C     		ldr	r0, [r4, #68]	@ float
 1639 01a2 FFF7FEFF 		bl	__aeabi_f2d
 1640 01a6 CDE90089 		strd	r8, [sp]
 1641 01aa CDE90601 		strd	r0, [sp, #24]
 1642 01ae DDE91C23 		ldrd	r2, [sp, #112]
 1643 01b2 2846     		mov	r0, r5
 1644 01b4 0449     		ldr	r1, .L222+4
 1645 01b6 CDF810A0 		str	r10, [sp, #16]
 1646 01ba CDE90267 		strd	r6, [sp, #8]
 1647 01be FFF7FEFF 		bl	_ZNK9StringRef6printfEPKcz
 1648 01c2 9AE7     		b	.L216
 1649              	.L223:
 1650              		.align	2
 1651              	.L222:
 1652 01c4 10000000 		.word	.LC7
 1653 01c8 14000000 		.word	.LC8
ARM GAS  /tmp/ccJ58DB9.s 			page 30


 1654 01cc 00000000 		.word	.LC6
 1655              		.size	_ZN15ScaraKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb, .-_ZN15ScaraKinematics9Configu
 1656              		.global	_ZTV15ScaraKinematics
 1657              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1658              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1659              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1660              	_ZL28cpu_irq_prev_interrupt_state:
 1661 0000 00       		.space	1
 1662              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1663              		.align	2
 1664              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1665              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1666              	_ZL32cpu_irq_critical_section_counter:
 1667 0000 00000000 		.space	4
 1668              		.section	.bss._ZN9RTOSIfaceL31interruptCriticalSectionNestingE,"aw",%nobits
 1669              		.align	2
 1670              		.type	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, %object
 1671              		.size	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE, 4
 1672              	_ZN9RTOSIfaceL31interruptCriticalSectionNestingE:
 1673 0000 00000000 		.space	4
 1674              		.section	.rodata._ZN15ScaraKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb.str1.4,"aMS",%progbi
 1675              		.align	2
 1676              	.LC6:
 1677 0000 2028636F 		.ascii	" (continuous)\000"
 1677      6E74696E 
 1677      756F7573 
 1677      2900
 1678 000e 0000     		.space	2
 1679              	.LC7:
 1680 0010 00       		.ascii	"\000"
 1681 0011 000000   		.space	3
 1682              	.LC8:
 1683 0014 4B696E65 		.ascii	"Kinematics is Scara with proximal arm %.2fmm range "
 1683      6D617469 
 1683      63732069 
 1683      73205363 
 1683      61726120 
 1684 0047 252E3166 		.ascii	"%.1f to %.1f\302\260%s, distal arm %.2fmm range %.1"
 1684      20746F20 
 1684      252E3166 
 1684      C2B02573 
 1684      2C206469 
 1685 0074 6620746F 		.ascii	"f to %.1f\302\260%s, crosstalk %.1f:%.1f:%.1f, bed "
 1685      20252E31 
 1685      66C2B025 
 1685      732C2063 
 1685      726F7373 
 1686 00a1 6F726967 		.ascii	"origin (%.1f, %.1f), segments/sec %d, min. segment "
 1686      696E2028 
 1686      252E3166 
 1686      2C20252E 
 1686      3166292C 
 1687 00d4 6C656E67 		.ascii	"length %.2f\000"
 1687      74682025 
 1687      2E326600 
 1688              		.section	.rodata._ZNK10Kinematics16MachineAxisNamesEv.str1.4,"aMS",%progbits,1
 1689              		.align	2
ARM GAS  /tmp/ccJ58DB9.s 			page 31


 1690              	.LC0:
 1691 0000 58595A00 		.ascii	"XYZ\000"
 1692              		.section	.rodata._ZNK15ScaraKinematics16NumHomingButtonsEj.str1.4,"aMS",%progbits,1
 1693              		.align	2
 1694              	.LC3:
 1695 0000 686F6D65 		.ascii	"homeproximal.g\000"
 1695      70726F78 
 1695      696D616C 
 1695      2E6700
 1696 000f 00       		.space	1
 1697              	.LC4:
 1698 0010 303A2F73 		.ascii	"0:/sys/\000"
 1698      79732F00 
 1699              	.LC5:
 1700 0018 686F6D65 		.ascii	"homedistal.g\000"
 1700      64697374 
 1700      616C2E67 
 1700      00
 1701              		.section	.rodata._ZNK15ScaraKinematics17HomingButtonNamesEv.str1.4,"aMS",%progbits,1
 1702              		.align	2
 1703              	.LC1:
 1704 0000 50445A55 		.ascii	"PDZUVWABC\000"
 1704      56574142 
 1704      4300
 1705              		.section	.rodata._ZNK15ScaraKinematics7GetNameEb.str1.4,"aMS",%progbits,1
 1706              		.align	2
 1707              	.LC2:
 1708 0000 53636172 		.ascii	"Scara\000"
 1708      6100
 1709              		.section	.rodata._ZTV15ScaraKinematics,"a",%progbits
 1710              		.align	2
 1711              		.set	.LANCHOR0,. + 0
 1712              		.type	_ZTV15ScaraKinematics, %object
 1713              		.size	_ZTV15ScaraKinematics, 128
 1714              	_ZTV15ScaraKinematics:
 1715 0000 00000000 		.word	0
 1716 0004 00000000 		.word	0
 1717 0008 00000000 		.word	_ZNK15ScaraKinematics7GetNameEb
 1718 000c 00000000 		.word	_ZN15ScaraKinematics9ConfigureEjR11GCodeBufferRK9StringRefRb
 1719 0010 00000000 		.word	_ZNK15ScaraKinematics21CartesianToMotorStepsEPKfS1_jjPlb
 1720 0014 00000000 		.word	_ZNK15ScaraKinematics21MotorStepsToCartesianEPKlPKfjjPf
 1721 0018 00000000 		.word	_ZNK20ZLeadscrewKinematics23SupportsAutoCalibrationEv
 1722 001c 00000000 		.word	_ZN20ZLeadscrewKinematics17DoAutoCalibrationEjRK19RandomProbePointSetRK9StringRef
 1723 0020 00000000 		.word	_ZN10Kinematics22SetCalibrationDefaultsEv
 1724 0024 00000000 		.word	_ZNK10Kinematics26WriteCalibrationParametersEP9FileStore
 1725 0028 00000000 		.word	_ZNK10Kinematics17GetTiltCorrectionEj
 1726 002c 00000000 		.word	_ZNK15ScaraKinematics11IsReachableEffb
 1727 0030 00000000 		.word	_ZNK15ScaraKinematics13LimitPositionEPfjmb
 1728 0034 00000000 		.word	_ZNK10Kinematics23AxesToHomeBeforeProbingEv
 1729 0038 00000000 		.word	_ZNK15ScaraKinematics25GetAssumedInitialPositionEjPf
 1730 003c 00000000 		.word	_ZNK10Kinematics13GetMotionTypeEj
 1731 0040 00000000 		.word	_ZNK15ScaraKinematics16NumHomingButtonsEj
 1732 0044 00000000 		.word	_ZNK15ScaraKinematics17HomingButtonNamesEv
 1733 0048 00000000 		.word	_ZNK10Kinematics16MachineAxisNamesEv
 1734 004c 00000000 		.word	_ZNK15ScaraKinematics17GetHomingFileNameEmmjRm
 1735 0050 00000000 		.word	_ZNK15ScaraKinematics24QueryTerminateHomingMoveEj
 1736 0054 00000000 		.word	_ZNK15ScaraKinematics23OnHomingSwitchTriggeredEjbPKfR3DDA
ARM GAS  /tmp/ccJ58DB9.s 			page 32


 1737 0058 00000000 		.word	_ZNK15ScaraKinematics13GetHomingModeEv
 1738 005c 00000000 		.word	_ZNK15ScaraKinematics16AxesAssumedHomedEm
 1739 0060 00000000 		.word	_ZNK15ScaraKinematics15MustBeHomedAxesEmb
 1740 0064 00000000 		.word	_ZNK20ZLeadscrewKinematics19WriteResumeSettingsEP9FileStore
 1741 0068 00000000 		.word	_ZNK15ScaraKinematics25LimitSpeedAndAccelerationER3DDAPKf
 1742 006c 00000000 		.word	_ZN10Kinematics22MotorAngToAxisPositionEfmPKfj
 1743 0070 00000000 		.word	_ZN10Kinematics23GetFullStepsPerMotorRevEj
 1744 0074 00000000 		.word	_ZNK15ScaraKinematics24IsContinuousRotationAxisEj
 1745 0078 00000000 		.word	_ZN15ScaraKinematicsD1Ev
 1746 007c 00000000 		.word	_ZN15ScaraKinematicsD0Ev
 1747              		.ident	"GCC: (GNU MCU Eclipse ARM Embedded GCC, 64-bits) 7.2.1 20170904 (release) [ARM/embedded-7-
